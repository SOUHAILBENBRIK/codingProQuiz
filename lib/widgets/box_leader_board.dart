import 'package:flutter/material.dart';

import '../utils/constants.dart';

class BoxLeaderBoard extends StatelessWidget {
  const BoxLeaderBoard({
    required this.rank,
    required this.image,
    required this.name,
    required this.points,
    required this.padding,
  });
  final int rank;
  final String image;
  final String name;
  final int points;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, padding),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 10, 0),
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Constants.color1,
                child: Text(
                  rank.toString(),
                  style: const TextStyle(color: Color(0xff37EBBC)),
                ),
              ),
            ),
            CircleAvatar(
              radius: 30,
              child: ClipOval(child: Image.network(image)),
            ),
            Flexible(
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Constants.color1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$points points',
              style: const TextStyle(color: Color(0XFF5D5D5D)),
            )
          ]),
        ),
      ),
    );
  }
}
