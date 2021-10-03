import 'package:flutter/material.dart';

import 'package:flutter_qrcode_maps/screens/home_screen.dart';
import 'package:flutter_qrcode_maps/screens/map_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {

      Color primaryColor = Colors.purple;

      return MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'QR reader',
         initialRoute: 'home',
         routes: {
            'home': ( _ ) => const HomeScreen(),
            'map': ( _ )  => const MapScreen(),
         },
         theme: ThemeData.dark().copyWith(
            primaryColor: primaryColor,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
               backgroundColor: primaryColor
            )
         ),
      );
   }
}