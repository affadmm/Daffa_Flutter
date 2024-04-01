import 'package:flutter/material.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/app/modules/home/controllers/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import carousel_slider package
import 'package:flutter_application_2/app/modules/register/controllers/register_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Home extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Code to execute on button press
        },
        child: Icon(Icons.fingerprint_sharp),
        shape: CircleBorder(), // Make the button circular
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

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
                          'Hello ,',
                          style: TextStyle(
                            color: Color.fromRGBO(45, 109, 154, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'This is your day 30 internship here',
                          style: TextStyle(fontSize: 16),
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
              Container(
                height: 142.0,
                width: 398.0,
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(67, 142, 185, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 54,
                      child: Container(
                        width: 159.0,
                        height: 68.0,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16,
                      top: 54,
                      child: Container(
                        width: 159.0,
                        height: 68.0,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
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
              Container(
                height: 30.0,
                margin: EdgeInsets.only(top: 33.33, left: 0.0, right: 375.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.message_rounded,
                  size: 30,
                  color: Color.fromRGBO(45, 109, 154, 1),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30), // Add margin to the top
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: [
                    Container(
                      margin: EdgeInsets.all(10), // Add margin to the container
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(67, 142, 185, 1),
                        borderRadius:
                            BorderRadius.circular(20), // Add border radius
                      ),
                      child: Center(child: Text('Page 1')),
                    ),
                    Container(
                      margin: EdgeInsets.all(10), // Add margin to the container
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(67, 142, 185, 1),
                        borderRadius:
                            BorderRadius.circular(20), // Add border radius
                      ),
                      child: Center(child: Text('Page 2')),
                    ),
                    Container(
                      margin: EdgeInsets.all(10), // Add margin to the container
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(67, 142, 185, 1),
                        borderRadius:
                            BorderRadius.circular(20), // Add border radius
                      ),
                      child: Center(child: Text('Page 3')),
                    ),
                    Container(
                      margin: EdgeInsets.all(10), // Add margin to the container
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(67, 142, 185, 1),
                        borderRadius:
                            BorderRadius.circular(20), // Add border radius
                      ),
                      child: Center(child: Text('Page 4')),
                    ),
                    Container(
                      margin: EdgeInsets.all(10), // Add margin to the container
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(67, 142, 185, 1),
                        borderRadius:
                            BorderRadius.circular(20), // Add border radius
                      ),
                      child: Center(child: Text('Page 5')),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30.0,
                margin: EdgeInsets.only(top: 33.33, left: 0.0, right: 375.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.timer_rounded,
                  size: 30,
                  color: Color.fromRGBO(45, 109, 154, 1),
                ),
              ),
              Container(
                height: 142.0,
                width: 398.0,
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(67, 142, 185, 1),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // Shape of the notch
        notchMargin: 12, // Margin of the notch
        color: const Color.fromRGBO(
            45, 109, 154, 1), // Background color of the BottomAppBar
        child: Container(
          height: 90, // Height of the BottomAppBar[]
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconTheme(
                      data: IconThemeData(
                          size: 20), // Change the icon size as needed
                      child: IconButton(
                        icon: Icon(Icons.dashboard_rounded),
                        onPressed: () {
                          Get.toNamed(Routes.DASHBOARD);
                          // Handle tap for the Profile icon
                        },
                        color: Colors.white, // Icon color
                      )),
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 11, // Change the font size as needed
                      fontWeight:
                          FontWeight.bold, // Change the font weight as needed
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconTheme(
                    data: IconThemeData(
                        size: 20), // Change the icon size as needed
                    child: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        Get.toNamed(Routes.DATA_USER);
                        // Handle tap for the Profile icon
                      },
                      color: Colors.white, // Icon color
                    ),
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 11, // Change the font size as needed
                      fontWeight:
                          FontWeight.bold, // Change the font weight as needed
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
