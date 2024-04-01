import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

class DataUserView extends StatelessWidget {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController asalController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController lahirController = TextEditingController();
  final TextEditingController masukController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController photoController = TextEditingController();

  File? _image;

  Future<void> pickImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
      photoController.text = pickedFile.path;
    }
  }

  Future<void> saveProfileToFirestore() async {
    try {
      // Gather data from controllers into a map
      Map<String, dynamic> profileData = {
        'nama': namaController.text,
        'alamat': alamatController.text,
        'email': emailController.text,
        'asal': asalController.text,
        'gender': genderController.text,
        'photo': photoController.text,
        'lahir': lahirController.text,
        'masuk': masukController.text,
        'role': roleController.text,
      };

      // Save data to Firestore
      await FirebaseFirestore.instance.collection('profiles').add(profileData);

      // Display success snackbar
      Get.snackbar(
        'Profile Updated',
        'Your profile has been successfully updated!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      // Navigate back to the previous page (User Page)
      Get.back();
    } catch (error) {
      // Display error snackbar
      Get.snackbar(
        'Error',
        'Failed to update profile. Please try again.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      print('Error saving profile data to Firestore: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: InkWell(
                onTap: pickImageFromGallery,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _image != null ? FileImage(_image!) : null,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            TextField(
              controller: namaController,
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5.0),
            TextField(
              controller: alamatController,
              decoration: InputDecoration(
                labelText: 'Alamat',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5.0),
            TextField(
              controller: asalController,
              decoration: InputDecoration(
                labelText: 'Asal',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5.0),
            TextField(
              controller: genderController,
              decoration: InputDecoration(
                labelText: 'Gender',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5.0),
            TextField(
              controller: lahirController,
              decoration: InputDecoration(
                labelText: 'Lahir',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5.0),
            TextField(
              controller: masukController,
              decoration: InputDecoration(
                labelText: 'Masuk',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5.0),
            TextField(
              controller: roleController,
              decoration: InputDecoration(
                labelText: 'Role',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: saveProfileToFirestore,
              child: Text('Save Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: DataUserView()));
}
