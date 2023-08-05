import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //   SizedBox(
        //     height: 40,
        //   ),
        //   Row(
        //     children: [
        //       IconButton(onPressed: () {}, icon: Icon(Icons.draw_rounded))
        //     ],
        //   ),
        //   SizedBox(
        //     height: 40,
        //   ),
        Center(
          child: Text(
            "Browse by Categories",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        //   ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: [
        //       WaterAnimations(),
        //       WaterAnimations(),
        //       WaterAnimations(),
        //       WaterAnimations()
        //     ],
        //   ),
      ],
    ));
  }
}
