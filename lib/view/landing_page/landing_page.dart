import 'widget/combine_widget.dart';
import 'widget/wardrop_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            CombineWidget(),
            SizedBox(height: 50),
            WardropWidget(),
          ],
        ),
      ),
    );
  }
}
