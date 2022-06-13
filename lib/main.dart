import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:speso/constants/style.dart';
import 'package:speso/view/bottom_nav_bar.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  
  runApp(const SpesoApp());
}

//

// 
class SpesoApp extends StatelessWidget {
  const SpesoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Speso',
        theme: ThemeData(
          //primarySwatch:MaterialColor (,mallBlue),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: blue,
            secondary: blue,
          ),
          fontFamily: 'NetflixSans',
        ),
        initialRoute: "/dashboard",
        getPages: [
          GetPage(name: '/dashboard', page: () => const BottomNavBar()),
        ]);
  }
}
