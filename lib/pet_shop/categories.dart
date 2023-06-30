import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_shop/pet_shop/buynow.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/shape_first.svg'),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            filled: true,
                            isDense: true,
                            fillColor: const Color(0xffFCF8F2),
                            // contentPadding: EdgeInsets.all(10),
                            prefixIcon: Padding(
                              padding:  EdgeInsets.only(left: 20.sp),
                              child: Icon(
                                Icons.search_sharp,
                                color: const Color(0xff9F9F9F),
                                size: 22.sp,
                              ),
                            ),
                            // suffixIcon: Icon(Icons.cancel),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffFFC368)),
                              borderRadius: BorderRadius.circular(23),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffFFC368)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "categories",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21.sp),
                            ),
                            seeAll()
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Image.asset('assets/images/all.png')),
                            Expanded(
                                child: Image.asset('assets/images/cats.png')),
                            Expanded(
                                child: Image.asset('assets/images/dogs.png')),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'The Best Price',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21.sp,
                              ),
                            ),
                            seeAll()
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(
                    //   height: 3,
                    // ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const BuyNow()));
                      },
                      child: catalog(
                        backgroudImage: const DecorationImage(
                            image: AssetImage('assets/images/cat_background.png'),
                            fit: BoxFit.scaleDown),
                        petImage: SizedBox(
                          height: 187,
                          width: 198,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Image.asset(
                              'assets/images/catagory_cat.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        tittleText: 'Cute Cat',
                        downPadding:
                            const EdgeInsets.all(1),
                        maxFlex: 1,
                        minFlex: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                catalog(
                    backgroudImage: const DecorationImage(
                        image: AssetImage('assets/images/dog_background.png'),
                        fit: BoxFit.scaleDown),
                    petImage: Padding(
                      padding:EdgeInsets.only(bottom: 10),
                      child: SizedBox(
                        width: 157,
                        height: 207,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10,right: 10),
                          child: Image.asset(
                            'assets/images/catagory_dog.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    tittleText: 'Cute Dog',
                    downPadding:
                        const EdgeInsets.all(0),
                    selectedColor: const Color(0xff6F4F44))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget seeAll() {
    return Text("SeeAll",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: const Color(0xffFFC368),
            fontSize: 16.sp,
            fontFamily: 'Cario',
            decoration: TextDecoration.underline));
  }

  Widget catalog({
    required DecorationImage backgroudImage,
    required Widget petImage,
    required String tittleText,
    required EdgeInsetsGeometry downPadding,
    int maxFlex=6,
    int minFlex=4,
    Color selectedColor = Colors.white,
  }) {
    return Container(
      padding: downPadding,
      decoration: BoxDecoration(
        image: backgroudImage,
      ),
      child: Row(
        children: [
          Expanded(
            flex: maxFlex,
            child: Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(
                          text: tittleText,
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w500,
                              color: selectedColor),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Age | 1Y',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: selectedColor,
                              ),
                            )
                          ])),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit\namet, consectetur',
                    style: TextStyle(color: selectedColor,height: .2.h),
                  ),
                  Text(
                    r'Price:30$',
                    style: TextStyle(
                        color: selectedColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: minFlex,
              child: petImage)
        ],
      ),
    );
  }
}
