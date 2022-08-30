import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade200,
      child: const Center(
        child: Text(
          'Page 2',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
