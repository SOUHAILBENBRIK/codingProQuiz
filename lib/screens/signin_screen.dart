import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/providers/auth.dart';
import 'package:quiz/widgets/custom_divider.dart';
import 'package:quiz/widgets/custom_icon_button.dart';
import 'package:quiz/widgets/signin_form.dart';

import '../core/app_route.dart';
import '../utils/constants.dart';
import '../widgets/wave.dart';

class SigninScreen extends ConsumerWidget {
  const SigninScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.color4,
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/space-ship.svg',
                  height: 200,
                ),
                const Wave(),
              ],
            ),
            Container(
              width: double.infinity,
              color: Constants.color1,
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(height: 10),
                  const SigninForm(),
                  const CustomDivider(),
                  CustomIconButton(
                    color: Colors.greenAccent,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const Dialog(
                          backgroundColor: Colors.transparent,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      );
                      auth.login(SigninMethod.google).then((_) {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoute.twoChoice);
                      });
                    },
                    text: 'Sign in with google',
                    icon: const Icon(Icons.person),
                  ),
                  SizedBox(
                      height:
                          MediaQuery.of(context).size.height > 700 ? 150 : 70),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
