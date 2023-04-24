import 'package:carmania/Theme/theme.dart';
import 'package:carmania/nav%20pages/Contact_Us.dart';
import 'package:flutter/material.dart';

class About_Us extends StatefulWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Why choosing Us?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                ),
              ),
              Image.asset('assets/logo.png'),
              Text(
                "Our company was founded with a mission to provide affordable and reliable car rental services to people all over the world. We have a diverse fleet of cars to choose from, including compact cars, SUVs, luxury vehicles, and more at extremely affordable prices. Our website offers a user-friendly interface that makes it easy to search for and book the perfect rental car for your needs. Our team is made up of experienced professionals who are dedicated to providing exceptional customer service and making sure that every rental experience is a positive one.\n\nWe offer flexible rental options, including daily, weekly, and monthly rentals, to meet the unique needs of each and every customer. Our company is committed to sustainable practices and reducing our carbon footprint. We offer hybrid and electric vehicles as part of our fleet and are always looking for ways to make our operations more environmentally friendly.\n\nWe have a convenient online booking system that allows you to reserve your rental car in just a few clicks, making the rental process quick and hassle-free. Our rates are competitive, and we offer special discounts and promotions to make car rental even more affordable. We value our customers/' feedback and are always looking for ways to improve our services. If you have any questions or concerns, please don't hesitate to reach out to our friendly customer support team.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  letterSpacing: 0.1,
                ),
              ),
              Divider(color: Colors.black, thickness: 1),
              Text(
                'Our Team',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    teamDetails(
                        post: 'Front-End Developer',
                        image: 'assets/ourTeam/nikhil.jpg',
                        name: 'Nikhil Niraj Singh',
                        des:
                            '“If you think math is hard, try web design.”\n– Trish Parr'),
                    teamDetails(
                        post: 'UI/UX Developer',
                        image: 'assets/ourTeam/sujal.jpg',
                        name: 'Sujal Kumar',
                        des:
                            '“People ignore design that ignores people.”\n— Frank Chimero'),
                    teamDetails(
                        post: 'Front-End Developer',
                        image: 'assets/ourTeam/rishit.jpeg',
                        name: 'Rishit Chauhan',
                        des:
                            '“If debugging is the process of removing software bugs, then programming must be the process of putting them in”\n– Edsger Dijkstra'),
                    teamDetails(
                        post: 'Full Stack Developer',
                        image: 'assets/ourTeam/mrinmoy.jpeg',
                        name: 'Mrinmoy Saikia',
                        des:
                            '“A website without visitors is like a ship lost in the horizon.”\n– Dr. Christopher Dayagdag'),
                    teamDetails(
                        post: 'Mobile App Developer',
                        image: 'assets/ourTeam/ayush.jpeg',
                        name: 'Ayush Kumar Singh',
                        des:
                            '“It’s not a bug. It’s an undocumented feature!”\n-John Doe'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Wanting to contact us?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                ),
              ),
              Text(
                "We value our customers' feedback and are always looking for ways to improve our services. If you have any questions or concerns, please don't hesitate to reach out to our friendly customer support team.\n\nFor further more details you can contact us by click on the given link:",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  letterSpacing: 0.1,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Contact_Us()));
                },
                child: Text('Contact Us'),
                style: ElevatedButton.styleFrom(backgroundColor: theme_color1),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget teamDetails({
    required String image,
    required String name,
    required String post,
    required String des,
  }) {
    return Card(
      child: Container(
        height: 350,
        width: 250,
        padding: EdgeInsets.all(3),
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Image.asset(
              image,
              scale: 1,
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 3),
            Text(
              post,
              style: TextStyle(
                letterSpacing: 0.1,
                fontWeight: FontWeight.w700,
                color: theme_color1.withOpacity(0.7),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2,
                fontSize: 17,
                color: Colors.black87.withOpacity(0.9),
              ),
            ),
            Text(
              des,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
