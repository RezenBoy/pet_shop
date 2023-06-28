import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // title: Text("hlo"),
          elevation: 0,
          leading: InkWell(
              borderRadius: BorderRadius.circular(40),
              onTap: () {},
              child: SvgPicture.asset('assets/images/backIcon.svg')
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(image: (DecorationImage(image: AssetImage('assets/images/buy_background.png')))),
            ),
          ],
        )
    );
  }
}
