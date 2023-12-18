import 'package:flutter/material.dart';

import '../core/app_route.dart';
import '../utils/constants.dart';
import 'video_play.dart';

class VideoList extends StatefulWidget {
  const VideoList({super.key, required this.list});
  final List<Map<String, String>> list;

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.white,),
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoute.coursPage);
            },
          ),
          elevation: 0,
          backgroundColor: Constants.color3,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoute.settings);
              },
              icon: const Icon(Icons.settings),
              color: Colors.white,
            )
          ]),
      body: Container(
      padding: EdgeInsets.only(top: 50),
        color: Constants.color3,
        height: MediaQuery.of(context).size.height * 0.9,
        child: ListView.builder(
            itemCount: widget.list.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListTile(
                  leading: Icon(Icons.smart_display_outlined),
                  title: Text(widget.list[index]["video name"]!),
                  
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (_) {
                      return VideoPlay(
                        videoId: widget.list[index]["link"]!,
                        name: widget.list[index]["video name"]!,
                      );
                    }));
                  },
                ),
              );
            }),
      ),
    );
  }
}
