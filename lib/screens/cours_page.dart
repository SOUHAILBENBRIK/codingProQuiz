import 'package:flutter/material.dart';

import '../core/app_route.dart';
import '../data/course_data.dart';
import '../utils/constants.dart';
import '../widgets/coursElement.dart';

class CoursPage extends StatefulWidget {
  const CoursPage({super.key});

  @override
  State<CoursPage> createState() => _CoursPageState();
}

class _CoursPageState extends State<CoursPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRoute.twoChoice);
                  },
                ),
                elevation: 0,
                backgroundColor: Constants.color1,
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
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Constants.color1, Constants.color2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(5, 30, 5, 0),
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: course_map.keys.map((element) {
                        return CourseElement(
                          list: course_map[element]!["cours"] as List<Map<String,String>>,
                          text1: element,
                          color: Colors.greenAccent,
                        );
                      }).toList()),
                ))));
  }
}
