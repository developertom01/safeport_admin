import 'package:get/route_manager.dart';
import 'package:safeport_admin/view/screens/authentication_screens/login_screen.dart';
import 'package:safeport_admin/view/screens/checkin_certificate_success/check_certificate_results_page.dart';
import 'package:safeport_admin/view/screens/home_page/home_screen.dart';
import 'package:safeport_admin/view/screens/intro/splash_screen.dart';
import 'package:safeport_admin/view/screens/profile/profile_screen.dart';

final List<GetPage> getRoutes = [
  GetPage(
    name: "/",
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: "/HomeScreen",
    page: () => HomeScreen(),
  ),
  GetPage(
    name: "/LoginScreen",
    page: () => LoginScreen(),
  ),
  GetPage(
    name: "/ProfileScreen",
    page: () => const ProfileScreen(),
  ),
  GetPage(
    name: "/CheckCertificateResultsPage",
    page: () =>  CheckCertificateResultsPage(),
  ),
];
