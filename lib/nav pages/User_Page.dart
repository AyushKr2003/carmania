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
      body: Image.network('https://images.unsplash.com/photo-1630312830491-b9b09e74bafe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
    );
  }
}
