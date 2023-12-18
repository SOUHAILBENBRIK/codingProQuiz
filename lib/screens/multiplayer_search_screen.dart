import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz/core/app_route.dart';
import 'package:quiz/providers/auth.dart';
import 'package:quiz/providers/online.dart';
import 'package:quiz/widgets/custom_button.dart';

import '../utils/constants.dart';
import '../widgets/ripple_icon.dart';

bool isFullRoom(roomAsJson) {
  return roomAsJson['med ali'] != '' && roomAsJson['eya'] != '';
}

class MultiplayerSearchScreen extends ConsumerStatefulWidget {
  const MultiplayerSearchScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MultiplayerSearchScreenState();
}

class _MultiplayerSearchScreenState
    extends ConsumerState<MultiplayerSearchScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(roomProvider.notifier).joinRoom().then((_) {
      final roomName = ref.watch(roomProvider).roomName;
      final roomRef = FirebaseDatabase.instance.ref('rooms/$roomName');

      roomRef.onValue.listen((DatabaseEvent event) {
        final roomAsMap = event.snapshot.value;

        if (isFullRoom(roomAsMap)) {
          ref.read(roomProvider.notifier).addSecondUser(roomAsMap);
          Navigator.of(context).pushReplacementNamed(AppRoute.game);
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authProvider);
    final room = ref.watch(roomProvider);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Constants.color1, Constants.color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                const RippleIcon(),
                ClipOval(
                  child: Image.network(
                    auth.user.profilePicture,
                    width: 80,
                  ),
                ),
              ],
            ),
            const Text(
              'Looking for online players...',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
                room.endRoom();
              },
              text: 'Quit',
              color: const Color(0xFF23999B),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
