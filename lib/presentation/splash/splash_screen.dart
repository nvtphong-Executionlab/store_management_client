import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.cube_box_fill,
            size: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Inventory',
            style: Theme.of(context).textTheme.displayLarge,
          )
        ],
      ),
    );
  }
}
