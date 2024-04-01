// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'dart:io';
// import 'package:flutter_application_2/app/routes/app_pages.dart';

// class User {
//   final String photoUrl;
//   final String userName;
//   final bool isOnline;

//   User({
//     required this.photoUrl,
//     required this.userName,
//     required this.isOnline,
//   });
// }

// class DataUserController extends GetxController {
//   final CollectionReference _userCollection =
//       FirebaseFirestore.instance.collection('users');
//   final User? _user = FirebaseAuth.instance.currentUser;

//   Future<void> saveUserData({
//     required String Alamat,
//     required String Asal,
//     required String Email,
//     required String Foto,
//     required String Gender,
//     required String Nama,
//     required String Role,
//     required String Lahir,
//     required String Masuk,
//     required String Uid,
//     required String imagePath,
//   }) async {
//     try {
//       if (_user != null) {
//         // Check if the file exists
//         File imageFile = File(imagePath);
//         if (!imageFile.existsSync()) {
//           print('Error: File does not exist');
//           throw Exception('File does not exist');
//         }

//         // Generate a unique file name
//         String fileName = DateTime.now().millisecondsSinceEpoch.toString();

//         // Create a reference to the Firebase Storage location
//         firebase_storage.Reference storageReference = firebase_storage
//             .FirebaseStorage.instance
//             .ref()
//             .child('user_photos/${_user}/$fileName');

//         // Upload the file to Firebase Storage
//         await storageReference.putFile(imageFile);

//         // Get the download URL
//         String downloadURL = await storageReference.getDownloadURL();

//         // Simpan data pengguna ke Firestore
//         await _userCollection.doc().set({
//           'uid': _user,
//           'address': Alamat,
//           'school': Asal,
//           'email': Email,
//           'photo': downloadURL,
//           'gender': Gender,
//           'fullName': Nama,
//           'role': Role,
//           'birthDate': Lahir,
//           'entryDate': Masuk,
//           'uid': Uid,
//         });

//         // Informasi berhasil disimpan
//         Get.snackbar(
//           'Success',
//           'User data has been saved to Firestore.',
//           backgroundColor: Colors.green,
//           colorText: Colors.white,
//         );
//       } else {
//         Get.snackbar(
//           'Error',
//           'No user is authenticated. Please log in again.',
//           backgroundColor: Colors.red,
//           colorText: Colors.white,
//         );
//       }
//     } catch (e, stackTrace) {
//       // Print the full error and stack trace for debugging
//       print('Error saving user data: $e');
//       print('Stack Trace: $stackTrace');

//       // Menampilkan snackbar error
//       Get.snackbar(
//         'Error',
//         'Failed to update profile. Please try again. Error: $e',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//   }

//   Future<void> fetchUsers() async {
//     try {
//       CollectionReference users =
//           FirebaseFirestore.instance.collection('users');

//       QuerySnapshot snapshot = await users.get();

//       snapshot.docs.forEach((doc) {
//         print('${doc.id} => ${doc.data()}');
//       });
//     } catch (error) {
//       print("Failed to fetch users: $error");
//     }
//   }

//   Future<void> updateUserEmail(String userId, String newEmail) async {
//     try {
//       CollectionReference users =
//           FirebaseFirestore.instance.collection('users');

//       await users.doc(userId).update({'email': newEmail});

//       print("User email updated successfully!");
//     } catch (error) {
//       print("Failed to update user email: $error");
//     }
//   }

//   Future<void> deleteUser(String userId) async {
//     try {
//       CollectionReference users =
//           FirebaseFirestore.instance.collection('users');

//       await users.doc(userId).delete();

//       print("User deleted successfully!");
//     } catch (error) {
//       print("Failed to delete user: $error");
//     }
//   }

//   Future<void> incrementAge(String userId) async {
//     try {
//       CollectionReference users =
//           FirebaseFirestore.instance.collection('users');

//       await FirebaseFirestore.instance.runTransaction((transaction) async {
//         DocumentSnapshot snapshot = await transaction.get(users.doc(userId));
//         if (!snapshot.exists) {
//           throw Exception("User not found!");
//         }

//         int currentAge = (snapshot.data() as Map<String, dynamic>)['age'];
//         transaction.update(users.doc(userId), {'age': currentAge + 1});
//       });

//       print("Age incremented successfully!");
//     } catch (error) {
//       print("Failed to increment age: $error");
//     }
//   }
// }

// class DataUserView extends StatelessWidget {
//   final TextEditingController addressController =
//       TextEditingController(text: "Alamat Default");
//   final TextEditingController schoolController =
//       TextEditingController(text: "Sekolah Default");
//   final TextEditingController emailController =
//       TextEditingController(text: "email@example.com");
//   final TextEditingController photoController =
//       TextEditingController(text: ""); // Empty initially
//   final TextEditingController genderController =
//       TextEditingController(text: "Laki-laki");
//   final TextEditingController fullNameController =
//       TextEditingController(text: "Nama Lengkap Default");
//   final TextEditingController roleController =
//       TextEditingController(text: "Role Default");
//   final TextEditingController birthDateController =
//       TextEditingController(text: "01/01/2000");
//   final TextEditingController entryDateController =
//       TextEditingController(text: "01/01/2022");
//   final TextEditingController uidController =
//       TextEditingController(text: "User ID Default");

//   Future<void> pickImageFromGallery() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? pickedFile =
//         await _picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       photoController.text = pickedFile.path;
//     }
//   }

//   Future<void> saveUserDataToFirestore() async {
//     try {
//       Map<String, dynamic> userData = {
//         'address': addressController.text,
//         'school': schoolController.text,
//         'email': emailController.text,
//         'photo': photoController.text,
//         'gender': genderController.text,
//         'fullName': fullNameController.text,
//         'role': roleController.text,
//         'birthDate': birthDateController.text,
//         'uid': uidController.text,
//         'entryDate': entryDateController.text,
//       };

//       await FirebaseFirestore.instance.collection('users').add(userData);

//       Get.snackbar(
//         'Profile Updated',
//         'Your profile has been successfully updated!',
//         backgroundColor: Colors.green,
//         colorText: Colors.white,
//       );

//       Get.offNamed(Routes.HALAMAN_USER);
//     } catch (error, stackTrace) {
//       print('Error saving user data to Firestore: $error');
//       print('Stack Trace: $stackTrace');

//       Get.snackbar(
//         'Error',
//         'Failed to update profile. Please try again. Error: $error',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Profile'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Get.offNamed(Routes.HALAMAN_USER);
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Center(
//                 child: InkWell(
//                   onTap: pickImageFromGallery,
//                   child: CircleAvatar(
//                     radius: 50,
//                     backgroundImage: NetworkImage(photoController.text),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               _buildTextField('Address', addressController),
//               _buildTextField('School', schoolController),
//               _buildTextField('Email', emailController),
//               _buildTextField('Photo URL', photoController),
//               _buildTextField('Gender', genderController),
//               _buildTextField('Full Name', fullNameController),
//               _buildTextField('Role', roleController),
//               _buildTextField('Birth Date', birthDateController),
//               _buildTextField('User ID', uidController),
//               _buildTextField('Entry Date', entryDateController),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: saveUserDataToFirestore,
//                 child: Text('Save User Data'),
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () async {
//                   // Fetch users
//                   await DataUserController().fetchUsers();
//                 },
//                 child: Text('Fetch Users'),
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () async {
//                   // Update user email
//                   await DataUserController()
//                       .updateUserEmail('userId', 'newEmail@example.com');
//                 },
//                 child: Text('Update User Email'),
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () async {
//                   // Delete user
//                   await DataUserController().deleteUser('userId');
//                 },
//                 child: Text('Delete User'),
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () async {
//                   // Increment age
//                   await DataUserController().incrementAge('userId');
//                 },
//                 child: Text('Increment Age'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String label, TextEditingController controller) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 10.0),
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         TextField(
//           controller: controller,
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             hintText: 'Enter $label',
//           ),
//           style: TextStyle(fontSize: 16),
//         ),
//         SizedBox(height: 20.0),
//       ],
//     );
//   }
// }
