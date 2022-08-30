import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade200,
      child: const Center(
        child: Text(
          'Page 3',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
