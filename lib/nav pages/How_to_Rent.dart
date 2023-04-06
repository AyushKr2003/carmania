import 'package:flutter/material.dart';

class HowToRent extends StatefulWidget {
  const HowToRent({Key? key}) : super(key: key);

  @override
  State<HowToRent> createState() => _HowToRentState();
}

class _HowToRentState extends State<HowToRent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How To Rent"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromRGBO(32, 191, 182, 1),
                Color.fromRGBO(0, 249, 235, 1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
