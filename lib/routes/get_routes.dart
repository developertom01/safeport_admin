import 'package:get/route_manager.dart';
import 'package:safeport_admin/view/screens/home_page/home_screen.dart';
import 'package:safeport_admin/view/screens/intro/splash_screen.dart';

final List<GetPage> getRoutes = [
  GetPage(
    name: "/",
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: "/HomeScreen",
    page: () => HomeScreen(),
  ),
];
