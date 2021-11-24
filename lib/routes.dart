import 'package:get/get.dart';
import 'package:hachi/pages/Home/index.dart';
import 'package:hachi/pages/Homepage/index.dart';
import 'package:hachi/pages/Notification/index.dart';
import 'package:hachi/pages/Overview/index.dart';
import 'package:hachi/pages/Profile/index.dart';
import 'package:hachi/pages/ProgressHistory/index.dart';
import 'package:hachi/pages/SignUp/index.dart';
import 'package:hachi/pages/TrackingState/index.dart';
import 'package:hachi/pages/Welcome/index.dart';

final routes = [
  GetPage(name: Routes.home, page: () => Home()),
  GetPage(name: Routes.homepage, page: () => Homepage()),
  GetPage(name: Routes.signUp, page: () => const SignUp()),
  GetPage(name: Routes.welcome, page: () => const Welcome()),
  GetPage(name: Routes.overview, page: () => Overview()),
  GetPage(name: Routes.tracking_state, page: () => TrackingState()),
  GetPage(name: Routes.progress_history, page: () => const ProgressHistory()),
  GetPage(name: Routes.notification, page: () => const Notification()),
  GetPage(name: Routes.profile, page: () => const Profile()),
];

class Routes {
  static const String home = '/home';
  static const String signUp = '/sign_up';
  static const String welcome = '/welcome';
  static const String homepage = '/homepage';
  static const String overview = '/overview';
  static const String tracking_state = '/trackingState';
  static const String progress_history = '/progress_history';
  static const String notification = '/notification';
  static const String profile = '/profile';
}
