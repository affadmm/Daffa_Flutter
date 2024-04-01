import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart'; // Corrected import
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          switch (dashboardController.currentIndex.value) {
            case 1:
              return Text('Presensi');
            case 2:
              return Text('Perizinan');
            case 3:
              return Text('Rekap Absensi');
            case 4:
              return Text('Jurnal');
            case 5:
              return Text('Jadwal Piket');
            case 6:
              return Text('Insentif');
            case 7:
              return Text('Broadcast Messages');
            default:
              return Text('Dashboard');
          }
        }),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Daffa'),
              accountEmail: Text('daffa@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/Daffa.png'),
                radius: 30,
              ),
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Presensi'),
              onTap: () {
                Get.back(); // Tutup drawer
                dashboardController.changePage(1); // Tutup drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_turned_in),
              title: Text('Perizinan'),
              onTap: () {
                Get.back(); // Tutup drawer
                dashboardController.changePage(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Rekap Absensi'),
              onTap: () {
                Get.back();
                dashboardController.changePage(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Jurnal'),
              onTap: () {
                Get.back();
                dashboardController.changePage(4);
              },
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Jadwal Piket'),
              onTap: () {
                Get.back();
                dashboardController.changePage(5);
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Insentif'),
              onTap: () {
                Get.back();
                dashboardController.changePage(6);
              },
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Broadcast Messages'),
              onTap: () {
                Get.back();
                dashboardController.changePage(7);
              },
            ),
            ListTile(
              leading: Icon(Icons.admin_panel_settings_rounded),
              title: Text('Admin'),
              onTap: () {
                Get.toNamed(Routes.ADMIN);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_rounded),
              title: Text('Back To Home'),
              onTap: () {
                Get.toNamed(Routes.HOME);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    title: Text("Logout"),
                    content: Text("Are you sure you want to logout?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Text("Yes"),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.back(); // Close the AlertDialog
                        },
                        child: Text("No"),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Obx(
          () {
            switch (dashboardController.currentIndex.value) {
              case 1:
                return Text('ini Presensi');
              case 2:
                return Text('ini Perizinan');
              case 3:
                return Text('ini Rekap Absensi');
              case 4:
                return Text('ini Jurnal');
              case 5:
                return Text('ini Jadwal Piket');
              case 6:
                return Text('ini Insentif');
              case 7:
                return Text('ini Broadcast Messages');
              default:
                return Text('ini Dashboard');
            }
          },
        ),
      ),
    );
  }
}
