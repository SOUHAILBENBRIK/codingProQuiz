import 'package:flutter/material.dart';
import 'package:quiz/screens/dif_page.dart';
import 'package:quiz/screens/finish_level_screen.dart';
import 'package:quiz/screens/game_screen.dart';
import 'package:quiz/screens/home/home.dart';
import 'package:quiz/screens/levels_screen.dart';
import 'package:quiz/screens/multiplayer_search_screen.dart';
import 'package:quiz/screens/offline_game_screen.dart';
import 'package:quiz/screens/offline_multiplayer_result_screen.dart';
import 'package:quiz/screens/offline_multiplayer_screen.dart';
import 'package:quiz/screens/online_finish_screen.dart';
import 'package:quiz/screens/settings/settings_screen.dart';
import 'package:quiz/screens/signin_screen.dart';
import 'package:quiz/screens/signup_screen.dart';

import '../screens/cours_page.dart';
import '../screens/two_choice_page.dart';
import '../screens/welcome_screen.dart';

class AppRoute {
  const AppRoute._();

  static const home = '/home';
  static const difPage = '/difPage';
  static const signin = '/signin';
  static const signup = '/signup';
  static const welcome = '/welcome';
  static const leaderboard = '/leaderboard';
  static const multiplayerSearch = '/multiplayer-search';
  static const game = '/game';
  static const levels = '/levels';
  static const offlineGame = '/offline-game';
  static const finishLevel = '/finish-Level';
  static const onlineFinish = '/online-finish';
  static const settings = '/settings';
  static const offlineMultiplayer = '/offline_multiplayer';
  static const offlineMultiplayerResult = '/offline-multiplayer-resutl';
  static const twoChoice = "/twoChoice";
  static const coursPage = "/courspage";

  static final Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const Home(),
    difPage: (context) => const DifPage(),
    multiplayerSearch: (context) => const MultiplayerSearchScreen(),
    game: (context) => const GameScreen(),
    offlineGame: (context) => const OfflineGameScreen(),
    levels: (context) => const LevelsScreen(),
    finishLevel: (context) => const FinishLevelScreen(),
    welcome: (context) => const WelcomeScreen(),
    signin: (context) => const SigninScreen(),
    signup: (context) => const SignupScreen(),
    onlineFinish: (context) => const OnlineFinishScreen(),
    settings: (context) => const SettingsScreen(),
    offlineMultiplayer: (context) => const OfflineMultiplayerScreen(),
    twoChoice: (context) => const TwoChoicePage(),
    coursPage: (context) => const CoursPage(),
    offlineMultiplayerResult: (context) =>
        const OfflineMultiplayerResultScreen(),
  };
}
