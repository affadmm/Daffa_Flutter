import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class FirebaseStorageService {
  static final FirebaseStorageService _instance = FirebaseStorageService._();

  factory FirebaseStorageService() => _instance;

  FirebaseStorageService._();

  Future<void> initialize() async {
    // Anda dapat menambahkan konfigurasi tambahan di sini jika diperlukan
    // (misalnya, .setMaxDownloadRetryTimeMillis, .setMaxOperationRetryTimeMillis, dll.)
    // Tapi biasanya, tidak perlu mengonfigurasi ini secara eksplisit.
  }

  firebase_storage.Reference get storageRef =>
      firebase_storage.FirebaseStorage.instance.ref();
}
