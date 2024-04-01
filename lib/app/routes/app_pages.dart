import 'package:get/get.dart';

import '../modules/admin/bindings/admin_binding.dart';
import '../modules/admin/views/admin_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/data_user/bindings/data_user_binding.dart';
import '../modules/data_user/views/data_user_view.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/halaman_user/bindings/halaman_user_binding.dart';
import '../modules/halaman_user/views/halaman_user_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/verifikasi/bindings/verifikasi_binding.dart';
import '../modules/verifikasi/views/verifikasi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => Home(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    // GetPage(
    //   name: _Paths.DATA_USER,
    //   page: () =>  DataUserView(),
    //   binding: DataUserBinding(),
    // ),
    // GetPage(
    //   name: _Paths.HALAMAN_USER,
    //   page: () => HalamanUserView(),
    //   binding: HalamanUserBinding(),
    // ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.VERIFIKASI,
      page: () => VerifikasiView(),
      binding: VerifikasiBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN,
      page: () =>  AdminView(),
      binding: AdminBinding(),
    ),
  ];
}
