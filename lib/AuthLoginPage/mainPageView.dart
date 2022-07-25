import 'package:flutter/material.dart';

class mainPageView extends StatefulWidget {
  const mainPageView({Key? key}) : super(key: key);

  @override
  State<mainPageView> createState() => _mainPageViewState();
}

class _mainPageViewState extends State<mainPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hoş"),
    );
  }
}
