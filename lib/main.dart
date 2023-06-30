import 'package:flutter/material.dart';
import 'package:pet_shop/pet_shop/buynow.dart';
import 'package:pet_shop/pet_shop/home.dart';
import 'package:pet_shop/pet_shop/splash.dart';
import 'package:pet_shop/pet_shop/categories.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(ResponsiveSizer(
    builder: (context,orientation, screenType) {
      return MaterialApp(
        theme:ThemeData(
          textTheme: GoogleFonts.cairoTextTheme()
        ),
        home: ThirdPage(),
      );
    }
  ));
}
ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    // textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
