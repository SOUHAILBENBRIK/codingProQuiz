import 'package:flutter/material.dart';

class TwoChoiceButton extends StatelessWidget {
  const TwoChoiceButton({
    Key? key,
    this.color = const Color(0xFF6949FD),
    this.textColor = Colors.white,
    required this.icon,
    required this.onPressed,
    required this.text,
    this.padding = 20,
  }) : super(key: key);

  final double padding;
  final Color color;
  final Color textColor;
  final IconData icon;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding, vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          minimumSize: const Size(double.infinity, 50),
          textStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width*0.2,),
            Icon(icon,color: Colors.white,size: 26,),
            SizedBox(width: 20,),
            Text(text),
          ],
        ),
      ),
    );
  }
}
