import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image.asset('images/transparens.jpg', width: double.infinity, fit: BoxFit.cover,),
            PageView.builder(itemBuilder: itemBuilder),
          ],
        ),
      ),
    );
  }
}
