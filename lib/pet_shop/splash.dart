import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/home_shape1.svg'),
          Center(
            child: Image.asset(
              'assets/images/home_shape2.png',
              width: size.width * .7,
            ),
          ),
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              'assets/images/home_shape2.svg',
            ),
          ),
        ],
      ),
    );
  }
}
