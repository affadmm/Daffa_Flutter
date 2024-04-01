// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/app/routes/app_pages.dart';
// import 'package:flutter_application_2/app/modules/data_user/controllers/data_user_controller.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: HalamanUserView(),
//     ),
//   );
// }

// class HalamanUserView extends StatelessWidget {
//   const HalamanUserView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Halaman User'),
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Get.toNamed(Routes.HOME);
//           },
//         ),
//       ),
//       body: Center(
//         child: FutureBuilder<List<User>>(
//           future: DataUserController().fetchUsers(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text("Error: ${snapshot.error}");
//             } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//               return Text("No users available.");
//             } else {
//               return Expanded(
//                 child: ListView.builder(
//                   itemCount: snapshot.data!.length,
//                   itemBuilder: (context, index) {
//                     User user = snapshot.data![index];

//                     return UserProfileWidget(
//                       photoUrl: user.photoUrl,
//                       userName: user.userName,
//                       isOnline: user.isOnline,
//                     );
//                   },
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Navigate to DataUserView when the add button is pressed
//           Get.toNamed(Routes.DATA_USER);
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.blue, // Change the color as needed
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//     );
//   }
// }

// class UserProfileWidget extends StatelessWidget {
//   final String photoUrl;
//   final String userName;
//   final bool isOnline;

//   const UserProfileWidget({
//     Key? key,
//     required this.photoUrl,
//     required this.userName,
//     required this.isOnline,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: InkWell(
//         onTap: () {
//           Get.toNamed(Routes.DATA_USER);
//         },
//         child: Row(
//           children: [
//             Stack(
//               alignment: Alignment.bottomRight,
//               children: [
//                 CircleAvatar(
//                   radius: 30,
//                   backgroundImage: NetworkImage(photoUrl),
//                 ),
//                 CircleAvatar(
//                   radius: 10,
//                   backgroundColor: isOnline ? Colors.green : Colors.red,
//                 ),
//               ],
//             ),
//             const SizedBox(width: 16),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   userName,
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
