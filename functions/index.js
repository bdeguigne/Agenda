// The Cloud Functions for Firebase SDK to create Cloud Functions and setup triggers.
const functions = require('firebase-functions');

// The Firebase Admin SDK to access Firestore.
const admin = require('firebase-admin');
admin.initializeApp();

async function updateUserRights(userId, role, snapshot) {
    const rights = [];
    snapshot.forEach((doc) => {
        const data = doc.data();

        if (data.name == role) {
            data.rights.forEach((right) => {
                rights.push(right.slug);
            });
        }
    });

    if (rights.length > 0) {
        console.log("Rights not empty", rights, role);
        return admin.firestore().collection("users").doc(userId).update({
            "permissions.rights": rights
        }).catch((error) => {
            console.log("Error update document", error);
            return Promise.reject(error);
        });
    }
    return null;
}

exports.updateUsersRole = functions.firestore.document("/roles/{documentId}").onUpdate((change, context) => {
    const updatedDocument = change.after.data();
    const role = updatedDocument.name;
    const updatedRole = [];

    function iterateUsers(usersDocument, role) {
        return usersDocument.forEach((doc) => {
            const data = doc.data();
            if (data.permissions.role === role) {
                console.log(`This user is a ${role}, updated...`);
                admin.firestore().collection("users").doc(doc.id).update({
                    "permissions.rights": updatedRole
                })
            } else {
                console.log(`This user (${data.permissions.role}) is not a ${role}`);
            }
        })
    }

    if (updatedDocument.rights.length > 0) {
        updatedDocument.rights.forEach((right) => {
            updatedRole.push(right.slug);
        })

        return admin.firestore().collection("users").get()
            .then(snapshotDoc => iterateUsers(snapshotDoc, role));
    }

    return null;

})


exports.grabAndAssignRightsToUserOnUpdate = functions.firestore.document('/users/{userId}').onUpdate((change, context) => {
    const userId = context.params.userId;
    const beforeDocument = change.before.data();
    const lastRole = beforeDocument.permissions.role;
    const updatedDocument = change.after.data();

    const role = updatedDocument.permissions.role;

    if (lastRole == role) {
        console.log("Role did not changed.");
        return null;
    }

    return admin.firestore().collection("roles").get()
        .then(snapshot => updateUserRights(userId, role, snapshot))
        .catch(error => {
            console.log("Error getting document", error);
            return Promise.reject(error);
        })
});

exports.grabAndAssignRightsToUserOnCreate = functions.firestore.document('/users/{userId}').onCreate((snapshot, context) => {
    const userId = context.params.userId;
    const document = snapshot.data();
    const role = document.permissions.role;

    if (role && document && userId) {
        return admin.firestore().collection("roles").get()
            .then(rolesSnapshot => updateUserRights(userId, role, rolesSnapshot))
            .catch(error => {
                console.log("Error getting document", error);
                return Promise.reject(error);
            })
    }
    return null
});