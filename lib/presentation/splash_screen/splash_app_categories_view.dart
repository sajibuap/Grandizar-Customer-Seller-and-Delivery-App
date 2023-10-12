import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:grandizar_customer_v2/presentation/constants/png_constants.dart';
import 'package:grandizar_customer_v2/presentation/dashboard/view/dashboard.dart';
import 'package:grandizar_customer_v2/presentation/features/reset_password/screens/login_screen.dart';
import 'package:grandizar_customer_v2/presentation/splash_screen/widgets/splash_Four.dart';
import 'package:grandizar_customer_v2/presentation/splash_screen/widgets/splash_categories.dart';
import 'package:grandizar_customer_v2/presentation/splash_screen/widgets/splash_five.dart';
import 'package:grandizar_customer_v2/presentation/splash_screen/widgets/splash_secondScreen.dart';
import 'package:grandizar_customer_v2/presentation/splash_screen/widgets/splash_six.dart';
import 'package:grandizar_customer_v2/presentation/splash_screen/widgets/splash_third.dart';
import 'widgets/red_elevated_button_large.dart';
import 'package:grandizar_customer_v2/application/language/language_provider.dart';

class SplashAppCategoriesView extends StatefulWidget {
  const SplashAppCategoriesView({super.key});

  @override
  State<SplashAppCategoriesView> createState() =>
      _SplashAppCategoriesViewState();
}

class _SplashAppCategoriesViewState extends State<SplashAppCategoriesView> {
  @override
  void initState() {
    super.initState();
  }

  final CarouselController _carouselController = CarouselController();

  int currentImageIndex = 0;

  void onImageChanged(index) {
    setState(() {
      currentImageIndex = index;
    });
  }

  void onImageChangedWithButton() {
    _carouselController.nextPage();
  }

  List<Widget> categoryImages = [
    SplashCategories(),
    SplashSecond(),
    SplashThird(),
    SplashFour(),
    SplashFive(),
    SplashSix(),
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final words = Words.of(context)!;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Dashboard()));
              },
              child: Text(
                words.skip,
                style: TextStyle(fontSize: 18, color: Color(0xFF646982)),
              )),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                PngConstants.grandizarLogo,
              ),
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.topCenter,
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                onPageChanged: (index, _) => onImageChanged(index),
                height: 530.0,
                viewportFraction: 1,
              ),
              items: categoryImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return i;
                  },
                );
              }).toList(),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: DotsIndicator(
              mainAxisSize: MainAxisSize.min,
              dotsCount: categoryImages.length,
              position: currentImageIndex,
              decorator: const DotsDecorator(
                activeColor: Color(0xFFEB1933),
                color: Color(0xFFFFCECE),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: RedElevatedButtonLarge(
              text: words.next_btn,
              // onTap: onImageChangedWithButton,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
