import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../core/app_route.dart';
import '../utils/constants.dart';

class VideoPlay extends StatefulWidget {
  const VideoPlay({super.key, required this.videoId, required this.name});
  final String videoId;
  final String name;

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  YoutubePlayerController? _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        isLive: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller!,
          showVideoProgressIndicator: true,
          progressColors: ProgressBarColors(
              playedColor: Colors.red, handleColor: Colors.redAccent),
        ),
        builder: (context, player) {
          return Scaffold(

            appBar: AppBar(
              title: Text(widget.name),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.white,),
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoute.coursPage);
            },
          ),
          elevation: 0,
          backgroundColor: Constants.color3,
          /*actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoute.settings);
              },
              icon: const Icon(Icons.settings),
              color: Colors.white,
            )
          ]),*/),
            body: player,
          );
        });
  }
}
