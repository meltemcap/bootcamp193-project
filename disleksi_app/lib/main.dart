import 'package:disleksi_app/bindings/home.dart';
import 'package:disleksi_app/bindings/login.dart';
import 'package:disleksi_app/pages/home.dart';
import 'package:disleksi_app/pages/login.dart';
import 'package:disleksi_app/providers/paragraph.dart';
import 'package:disleksi_app/providers/reading.dart';
import 'package:disleksi_app/providers/user.dart';
import 'package:disleksi_app/services/auth.dart';
import 'package:disleksi_app/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  // Ensure initialization of widgets bindings
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize services
  Get.lazyPut(() => ThemeService()); // Depends on [StorageService]
  Get.lazyPut(() => AuthService());

  // Initialize providers
  Get.lazyPut(() => ParagraphProvider(), fenix: true);
  Get.lazyPut(() => UserProvider(), fenix: true);
  Get.lazyPut(() => ReadingProvider(), fenix: true);

  // Set the initial route
  final String initialRoute = LoginPage.routeName;

  // Run the application
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp(initialRoute: initialRoute));
  });
  // runApp(MyApp(initialRoute: initialRoute));
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({super.key, required this.initialRoute});

  ThemeService get _themeService => Get.find<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      // Theme settings
      theme: _themeService.theme,

      // Route settings
      initialRoute: initialRoute,
      getPages: [
        GetPage(name: HomePage.routeName, page: () => const HomePage(), binding: HomeBindings()),
        GetPage(name: LoginPage.routeName, page: () => const LoginPage(), binding: LoginBindings()),
      ],
    );
  }
}
