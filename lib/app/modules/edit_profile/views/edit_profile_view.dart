import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';

class EditProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menerima data dari halaman sebelumnya
    final Map<String, dynamic> userData =
        Get.arguments != null ? Get.arguments : {};

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.offNamed(Routes.HALAMAN_USER);
          },
        ),
        actions: [
          // Tambahkan tombol "Edit Profile"
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Navigasi ke halaman DataUserView untuk menyunting profil
              Get.toNamed(Routes.DATA_USER, arguments: userData);
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(userData['photo'] ?? ''),
                ),
                SizedBox(height: 20.0),
                _buildInfoRow('User ID', userData['uid']),
                _buildInfoRow('Full Name', userData['fullName']),
                _buildInfoRow('Address', userData['address']),
                _buildInfoRow('School', userData['school']),
                _buildInfoRow('Email', userData['email']),
                _buildInfoRow('Gender', userData['gender']),
                _buildInfoRow('Birth Date', userData['birthDate']),
                _buildInfoRow('Entry Date', userData['entryDate']),
                _buildInfoRow('Role', userData['role']),
                SizedBox(height: 20.0),
                // Tidak ada tombol untuk menyimpan perubahan
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value ?? '',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
