import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/app/modules/home/controllers/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import carousel_slider package

class AdminView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 500,
                margin: EdgeInsets.only(top: 60),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Daffa!',
                          style: TextStyle(
                            color: Color.fromRGBO(45, 109, 154, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Admin",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 14.0,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 18.0,
                            ),
                            backgroundColor: Color.fromRGBO(111, 174, 217, 1),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 53.33,
                      height: 53.33,
                      margin: EdgeInsets.only(top: 5.33, left: 5.33),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.account_circle,
                        size: 53,
                        color: Color.fromRGBO(45, 109, 154, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 34.0,
                        horizontal: 39.0,
                      ),
                      backgroundColor: Color.fromRGBO(67, 142, 185, 1),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 34.0,
                        horizontal: 39.0,
                      ),
                      backgroundColor: Color.fromRGBO(67, 142, 185, 1),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 34.0,
                        horizontal: 39.0,
                      ),
                      backgroundColor: Color.fromRGBO(67, 142, 185, 1),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 34.0,
                        horizontal: 39.0,
                      ),
                      backgroundColor: Color.fromRGBO(67, 142, 185, 1),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.0,
                    height: 35.0,
                  ),
                  Text(
                    "Presensi",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 58.0,
                  ),
                  Text(
                    "Izin",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Text(
                    "Piket",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 56.0,
                  ),
                  Text(
                    "Insentif",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 34.0,
                        horizontal: 39.0,
                      ),
                      backgroundColor: Color.fromRGBO(67, 142, 185, 1),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 34.0,
                        horizontal: 39.0,
                      ),
                      backgroundColor: Color.fromRGBO(67, 142, 185, 1),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 34.0,
                        horizontal: 39.0,
                      ),
                      backgroundColor: Color.fromRGBO(67, 142, 185, 1),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 34.0,
                        horizontal: 39.0,
                      ),
                      backgroundColor: Color.fromRGBO(67, 142, 185, 1),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.0,
                    height: 35.0,
                  ),
                  Text(
                    "Pegawai",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 31.0,
                  ),
                  Text(
                    "Pengaturan",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 32.0,
                  ),
                  Text(
                    "Jadwal",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 52.0,
                  ),
                  Text(
                    "Pesan",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_quilt_rounded),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_2_rounded),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: controller.currentIndex.value,
        selectedItemColor: Color.fromARGB(255, 218, 216, 216),
        unselectedItemColor: Color.fromRGBO(255, 255, 255, 1),
        onTap: controller.changeSelectedNavBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(45, 109, 154, 1),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(), // Shape of the notch
      //   notchMargin: 12, // Margin of the notch
      //   color: const Color.fromRGBO(
      //       45, 109, 154, 1), // Background color of the BottomAppBar
      //   child: Container(
      //     height: 90, // Height of the BottomAppBar[]
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             IconTheme(
      //                 data: IconThemeData(
      //                     size: 20), // Change the icon size as needed
      //                 child: IconButton(
      //                   icon: Icon(Icons.view_quilt_rounded),
      //                   onPressed: () {
      //                     Get.toNamed(Routes.DASHBOARD);
      //                     // Handle tap for the Profile icon
      //                   },
      //                   color: Colors.white, // Icon color
      //                 )),
      //             Text(
      //               'Dashboard',
      //               style: TextStyle(
      //                 color: Colors.white, // Text color
      //                 fontSize: 11, // Change the font size as needed
      //                 fontWeight:
      //                     FontWeight.bold, // Change the font weight as needed
      //               ),
      //             ),
      //           ],
      //         ),
      //         Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             IconTheme(
      //               data: IconThemeData(
      //                   size: 20), // Change the icon size as needed
      //               child: IconButton(
      //                 icon: Icon(Icons.person),
      //                 onPressed: () {
      //                   Get.toNamed(Routes.DATA_USER);
      //                   // Handle tap for the Profile icon
      //                 },
      //                 color: Colors.white, // Icon color
      //               ),
      //             ),
      //             Text(
      //               'Profile',
      //               style: TextStyle(
      //                 color: Colors.white, // Text color
      //                 fontSize: 11, // Change the font size as needed
      //                 fontWeight:
      //                     FontWeight.bold, // Change the font weight as needed
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.view_quilt_rounded),
      //       label: 'Dashboard',
      //     ),
      //     // BottomNavigationBarItem(
      //     //   icon: Icon(Icons.login_rounded),
      //     //   label: '',
      //     // ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: controller.currentIndex.value,
      //   selectedItemColor: Color.fromARGB(255, 218, 216, 216),
      //   unselectedItemColor: Color.fromRGBO(255, 255, 255, 1),
      //   onTap: controller.changeSelectedNavBar,
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: const Color.fromRGBO(45, 109, 154, 1),
      // ),
    );
  }
}
