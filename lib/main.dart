import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        debugShowCheckedModeBanner: false, home: WelcomeScreen());
  }
}

class WelcomeScreen extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF053149);
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
        finishButtonText: 'Start',
        onFinish: () {
          // Navigator.push(
          //   context,
          //   CupertinoPageRoute(
          //     builder: (context) => const TabScaffold(),
          //   ),
          // );
        },
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: kDarkBlueColor,
        ),
        skipTextButton: Text(
          'Skip',
          style: TextStyle(
            fontSize: 16,
            color: kDarkBlueColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Text(
          'Start',
          style: TextStyle(
            fontSize: 16,
            color: kDarkBlueColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailingFunction: () {
          // Navigator.push(
          //   context,
          //   CupertinoPageRoute(
          //     builder: (context) => const TabScaffold(),
          //   ),
          // );
        },
        controllerColor: kDarkBlueColor,
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        pageBackgroundColor: Colors.white,
        background: [
          Image.asset(
            'assets/slide_1.png',
            height: 380,
          ),
          Image.asset(
            'assets/slide_2.png',
            height: 380,
          ),
          Image.asset(
            'assets/slide_3.png',
            height: 380,
          ),
        ],
        speed: 1.8,
        pageBodies: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 380,
                ),
                Text(
                  'Take Control of Your Finances',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Track your income, expenses, and savings effortlessly with [App Name]. Gain a clear picture of your financial health.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 380,
                ),
                Text(
                  'Smart Tools for Better Budgeting',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Set budgets, categorize transactions, and stay on top of your goals with intuitive features designed for your financial success.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 380,
                ),
                Text(
                  'Start Your Financial Journey!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Join a community of savvy savers and achieve financial freedom. Sign up now and take the first step toward smarter money management!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}
