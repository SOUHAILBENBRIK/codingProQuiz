import 'package:flutter/material.dart';

import 'package:quiz/screens/video_page.dart';



class CourseElement extends StatelessWidget {
  const CourseElement({
    required this.text1,
    required this.color, required this.list,
  });
  final String text1;
  final List<Map<String, String>> list;

  final Color color;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (_) {
          return VideoList(
            list: list,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.all(6),
        height: height * 0.6,
        width: width * 0.3,
        child: Card(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
                child: Text(
              text1,
              style: TextStyle(fontSize: 20),
            ))),
      ),
    );
  }
}
