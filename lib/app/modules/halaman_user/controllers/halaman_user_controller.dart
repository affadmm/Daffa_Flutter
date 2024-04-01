import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HalamanUserController extends GetxController {
  // RxBool untuk menyimpan status online/offline
  RxBool isOnline = true.obs;

  // Instance dari FirebaseAuth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Cek status otentikasi pengguna saat ini
  Future<void> checkAuthenticationStatus() async {
    _auth.authStateChanges().listen((User? user) {
      if (user == null) {
        // Pengguna tidak terotentikasi, set status online ke false
        isOnline.value = false;
      } else {
        // Pengguna terotentikasi, set status online ke true
        isOnline.value = true;
      }
    });
  }

  // Fungsi untuk logout pengguna
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
