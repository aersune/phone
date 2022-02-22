import 'package:flutter/material.dart';

class Abs extends StatelessWidget {
   Abs({required this.number, required this.subtitle});

  String number;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 70,
        height: 70,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.withOpacity(0.1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(number, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text(subtitle),
          ],
        ),
      );
    }
  }

