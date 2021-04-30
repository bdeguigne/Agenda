import 'package:agenda/domain/auth/i_auth_facade.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/core/errors.dart';
import 'package:agenda/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final User user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}
