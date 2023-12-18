import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart' as provider;
import 'package:quiz/core/index.dart';
import 'package:quiz/providers/auth.dart';
import 'package:quiz/providers/shared_preferences.dart';
import 'package:quiz/providers/user.dart';
import 'package:quiz/screens/spalsh_screen.dart';
import 'package:quiz/screens/two_choice_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(provider.MultiProvider(
    providers: [
      provider.ChangeNotifierProvider(create: (_) => UserAuth()),
    ],
    child: ProviderScope(
        overrides: [spProvider.overrideWithValue(sharedPreferences)],
        child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final auth = ref.watch(authProvider);
        final futureAuth = ref.watch(futureAuthProvider);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Code Quest',
          theme: AppTheme.myThemeData,
          // home: const WelcomeScreen(),
          home: futureAuth.when(data: (data) {
            return auth.isAuth ? TwoChoicePage() : SplashScreen();
          }, error: (e, st) {
            return Scaffold(
              body: Center(child: Text(e.toString())),
            );
          }, loading: () {
            return Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }),
          routes: AppRoute.routes,
        );
      },
    );
  }
}
