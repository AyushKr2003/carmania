import 'package:carmania/Auth%20Page/auth_page.dart';
import 'package:carmania/Auth%20Page/logout.dart';
import 'package:carmania/Theme/theme.dart';
import 'package:carmania/nav pages/About_Us.dart';
import 'package:carmania/nav pages/Category.dart';
import 'package:carmania/nav pages/Contact_Us.dart';
import 'package:carmania/nav pages/How_to_Rent.dart';
import 'package:carmania/nav pages/User_Page.dart';
import 'package:carmania/payments/creadit_card_payment.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Car Mania';
    final email = 'CarManiaEmail.com';
    final urlImage =
        'https://images.unsplash.com/photo-1630312830491-b9b09e74bafe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80';

    return Drawer(
      child: Material(
        color: theme_color1,
        child: ListView(
          children: [
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder:(context) =>UserPage(
                  // name: name,
                  // urlImage: urlImage,
                ),
              )),
            ),
            const SizedBox(height: 48),
            Container(
              padding: padding,
              child: Column(
                children: [
                  SizedBox(height: 12),
                  buildSearchField(),
                  SizedBox(height: 24),
                  buildMenuItem(
                    text: 'How To Rent',
                    icon: Icons.question_mark_outlined,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Category',
                    icon: Icons.category_outlined,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Contact Us',
                    icon: Icons.contact_mail_outlined,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'About Us',
                    icon: Icons.info_outline_rounded,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  SizedBox(height: 24),
                  Divider(color: Colors.white, thickness: 1),
                  const SizedBox(height: 16),
                  Auth(),
                  const SizedBox(height: 16),
                  Divider(color: Colors.white, thickness: 1),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Payment Page',
                    icon: Icons.payment_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    VoidCallback? onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30, //backgroundImage: NetworkImage(urlImage)
                child: Image.asset('assets/carimg.png'),
                backgroundColor: theme_color2,
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                  SizedBox(width: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14,color: Colors.white,letterSpacing: 0.5),
                  ),
                ],
              )
            ],
          ),
        ),
      );

  Widget buildSearchField(){
    final color =Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20,),
        hintText: 'Search Car',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7))
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7))
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hovercolor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hovercolor,
      onTap: onClicked,
    );
  }

  Widget Auth(){
    return (FirebaseAuth.instance.currentUser != null) ? buildMenuItem(
      text: 'Logout',
      icon: Icons.logout_outlined,
      onClicked: () => selectedItem(context, 6),
    ) :
    buildMenuItem(
      text: 'Login/SignUp',
      icon: Icons.login_outlined,
      onClicked: () => selectedItem(context, 4),
    )
    ;
  }

  void selectedItem(BuildContext contex, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (contex) => HowToRent(),
        ));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (contex) => Category(),
        ));
        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (contex) => Contact_Us(),
        ));
        break;

      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (contex) => About_Us(),
        ));
        break;

      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (contex) => AuthPage(),
        ));
        break;

      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (contex) => CardPayment(),
        ));
        break;

      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (contex) => Logout(),
        ));
        break;
    }
  }
}
