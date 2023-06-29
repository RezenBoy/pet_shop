import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({super.key});

  Widget cardBox({required String titleName, required valueName}) {
    return Expanded(
        child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              titleName,
              style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              valueName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff6F4F44)),
            )
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // title: Text("hlo"),
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: InkWell(

                borderRadius: BorderRadius.circular(50),
                radius: 40,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(


                  decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                  child: Icon(Icons.arrow_back,color: Color(0xff7F5A4C),),
                )/*SvgPicture.asset(
                  'assets/images/backIcon.svg',
                )*/),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/buy_background.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: size.height * .6,
                margin:
                    EdgeInsets.only(top: size.height * .4, left: 3, right: 3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 13),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        r'Price:30$',
                        style: TextStyle(
                            color: const Color(0xffFFC368),
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp),
                      ),
                    ),
                    // Text('Cute Cat',style: TextStyle(fontSize: 29.sp,color: Color(0xff6F4F44)),)
                    const SizedBox(
                      height: 15,
                    ),
                    SvgPicture.asset(
                      'assets/images/cutecat.svg',
                      height: 12.w,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [

                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 22.sp,
                                ),
                                // SvgPicture.asset('assets/images/location_icon.svg'),
                                Text(
                                  ' Egypt / Cairo',
                                  style: TextStyle(fontSize: 18.sp),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Diam nunc\net tincidunt ut. Vestibulum felisunc et\ntincidunt ut. Vestibulum felis ',
                                  style:
                                      TextStyle(fontSize: 19.sp, height: 1.5),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                cardBox(titleName: 'Age', valueName: "1 Year"),
                                const SizedBox(
                                  width: 5,
                                ),
                                cardBox(titleName: "Gender", valueName: "Male"),
                                const SizedBox(
                                  width: 5,
                                ),
                                cardBox(titleName: "Weight", valueName: "3 Kg"),
                              ],
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width * .9,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        decoration: BoxDecoration(
                          color: const Color(0xffFFC368),
                          borderRadius: BorderRadius.circular(15),
                          // boxShadow: const [BoxShadow(blurRadius: 25)],
                        ),
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset('assets/images/buy_shape.png')),
              Positioned(
                top: size.height * .1,
                left: size.width * .1,
                child: Image.asset(
                  'assets/images/buy_cat.png',
                  height: 35.h,
                  width: 75.w,
                ),
              ),
              /*Positioned(
                bottom: 30,
                // left: ,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: size.width * .9,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFC368),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [BoxShadow(blurRadius: 25)]),
                    child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23.sp,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              )*/
            ],
          ),
        ));
  }
}
