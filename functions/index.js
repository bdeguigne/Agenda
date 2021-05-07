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
        console.log("OOKKAY", userId);
        return admin.firestore().collection("users").doc(userId).update({
            "permissions.rights": rights
        }).catch((error) => {
            console.log("Error update document", error);
            return Promise.reject(error);
        });
    }
    return null;
}


exports.grabAndAssignRightsToUserOnUpdate = functions.firestore.document('/users/{userId}').onUpdate((change, context) => {
    const userId = context.params.userId;
    const beforeDocument = change.before.data();
    const lastRole = beforeDocument.permissions.role;
    const updatedDocument = change.after.data();

    const role = updatedDocument.permissions.role;

    if (lastRole == role) {
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