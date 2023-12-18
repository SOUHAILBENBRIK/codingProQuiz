import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart' as provider;
import 'package:quiz/providers/auth.dart';
import 'package:quiz/providers/user.dart';

import '../providers/questions.dart';
import '../utils/constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/score_card.dart';

class FinishLevelScreen extends ConsumerWidget {
  const FinishLevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = ref.watch(questionsProvider);
    final auth = ref.watch(authProvider);
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Constants.color1, Constants.color2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Result',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff37EBBB),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Text(
                'Total correct answers: ',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '${questions.rightAnswers} out of 4 questions',
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xff37EBBB),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [Color(0xff7A5CFB), Color(0xff44348C)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: -5,
                      left: -5,
                      right: -5,
                      child: SvgPicture.asset(
                        'assets/images/score-circles.svg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Text(
                            'Your final score is',
                            style: TextStyle(fontSize: 25),
                          ),
                          ScoreCard(
                              score: questions.currentScore ?? 0,
                              stars: questions.currentRating),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                padding: 0,
                text: 'Next Level',
                onPressed: () {
                  provider.Provider.of<UserAuth>(context, listen: false)
                      .addScore(questions.currentScore ?? 0);

                  Navigator.pop(context);
                  if (auth.user.offlineLevel == questions.currentLevel) {
                    auth.nextOfflineLevel(questions.currentRating);
                  }

                  questions.reset();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
