import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var passwordVisible = false.obs;

  void togglePasswordVisibility() {
    passwordVisible.toggle();
  }

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential =
          await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Get.snackbar('Error', 'The Email Address Is Already In Use');
      } else {  
        Get.snackbar('Error', 'An Error Occurred: ${e.code}');
      }
    }
    return null;
  }
}
