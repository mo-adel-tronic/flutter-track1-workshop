import 'package:flutter/material.dart';

class StarterAppItem extends StatelessWidget {
  // final String imagePath;
  final String title;
  final String routesName;

  const StarterAppItem(
      {super.key,
      // required this.imagePath,
      required this.routesName,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.white),
      padding: const EdgeInsets.all(20),
      height: 100,
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 30, color: Colors.lightBlue),
          ),
          const Spacer(),
          InkWell(
            onTap: () => Navigator.pushNamed(context, routesName),
            child: const Icon(
              Icons.play_circle,
              size: 30,
              color: Colors.lightBlue,
            ),
          )
        ],
      ),
    );
  }
}
