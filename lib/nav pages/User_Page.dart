import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {

  const UserPage({Key? key,}) : super(key: key);


  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Mania'),
      ),
      body: Image.asset('assets/carimg.png')
    );
  }
}
