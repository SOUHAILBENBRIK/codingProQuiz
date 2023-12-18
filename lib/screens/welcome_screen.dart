import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz/core/index.dart';
import 'package:quiz/widgets/wave.dart';

import '../utils/constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_outlined_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.color4,
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 50),
              SvgPicture.asset(
                'assets/images/space-ship.svg',
                height: 200,
              ),
              const Wave(),
            ],
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Constants.color1,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Sign up, or login to begin the fun.',
                      style: TextStyle(fontSize: 27),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    color: Colors.greenAccent,
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoute.signin);
                    },
                    text: 'Sign in',
                  ),
                  CustomOutlinedButton(
                    color: Colors.white70,
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoute.signup);
                    },
                    text: 'Sign up',
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
