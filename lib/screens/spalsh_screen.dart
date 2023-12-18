import 'package:flutter/material.dart';
import 'package:quiz/core/app_route.dart';
import 'package:quiz/widgets/wave.dart';

import '../utils/constants.dart';
import '../widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.color2,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/images/logo450.jpeg',
                    height: 200,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'CodingProQuiz',
                  style: TextStyle(
                    color: Color(0xff37EBBC),
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Wave(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Constants.color1,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'New knowledge, new friends',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'play now and level up',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white60,
                    ),
                  ),
                  const Spacer(),
                  CustomButton(
                    color: Colors.blueGrey,
                    text: 'get Started',
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, AppRoute.welcome);
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
