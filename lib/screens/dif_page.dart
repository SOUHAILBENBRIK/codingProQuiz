import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../core/app_route.dart';
import '../utils/constants.dart';
import '../widgets/two_choice_button.dart';

class DifPage extends StatefulWidget {
  const DifPage({super.key});

  @override
  State<DifPage> createState() => _DifPageState();
}

class _DifPageState extends State<DifPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Constants.color3, actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoute.settings);
          },
          icon: const Icon(Icons.settings),
          color: Colors.white,
        )
      ]),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Constants.color3,
              Constants.color1,
            ])),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.asset(
            'assets/t-images/programmer.zip',
            width: width * 0.5,
            height: height * 0.2,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 30,
          ),
          TwoChoiceButton(
            icon: Icons.brightness_1_outlined,
            text: "easy",
            color: Colors.greenAccent,
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(AppRoute.levels),
          ),
          TwoChoiceButton(
            color: Colors.greenAccent,
            icon: Icons.brightness_2_outlined,
            text: "Medium",
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(AppRoute.levels),
          ),
          TwoChoiceButton(
            color: Colors.greenAccent,
            icon: Icons.brightness_3_outlined,
            text: "hard",
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(AppRoute.levels),
          ),
        ]),
      )),
    );
  }
}
