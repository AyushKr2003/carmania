import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Theme/theme.dart';

class Contact_Us extends StatefulWidget {
  const Contact_Us({Key? key}) : super(key: key);

  @override
  State<Contact_Us> createState() => _Contact_UsState();
}

class _Contact_UsState extends State<Contact_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
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
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Get In Touch',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.1,
                  ),
                ),
                Image.asset('assets/logo.png', scale: 1.3),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Send a message',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.1,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'John',
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'johnDoe@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mobile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '+91 9852362198',
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Message',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Write your message here...',
                      fillColor: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: theme_color1),
                    onPressed: () {},
                    child: Text('Send'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Divider(color: Colors.black, thickness: 0.5),
            Container(
              padding: EdgeInsets.only(left: 5,top: 5),
              color: Color(0xff0e3959),
              child: Column(
                children: [
                  Text(
                    'Contact Info',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                      color: Colors.white
                    ),
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.locationDot,color: Colors.white70),
                      Text(' Infinity Tower, Gurugram, Haryana, India',style: TextStyle(letterSpacing: 0.1,color: Colors.white70),),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.email_rounded,color: Colors.white70),
                      Text(' carmainia@gmail.com',style: TextStyle(letterSpacing: 0.1,color: Colors.white70),),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.phone,color: Colors.white70),
                      Text(' +91 8976547865',style: TextStyle(letterSpacing: 0.1,color: Colors.white70)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook,color: Colors.white70)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.twitter,color: Colors.white70)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.linkedin,color: Colors.white70)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.instagram,color: Colors.white70)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
