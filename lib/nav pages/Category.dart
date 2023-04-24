import 'package:carmania/data/data.dart';
import 'package:flutter/material.dart';

import '../Theme/theme.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cetegory"),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Economy',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  details(
                    icon: cars_eco[0].iconImage,
                    name: cars_eco[0].name,
                    price: cars_eco[0].price,
                  ),
                  details(
                    icon: cars_eco[1].iconImage,
                    name: cars_eco[1].name,
                    price: cars_eco[1].price,
                  ),
                  details(
                    icon: cars_eco[2].iconImage,
                    name: cars_eco[2].name,
                    price: cars_eco[2].price,
                  ),
                  details(
                    icon: cars_eco[3].iconImage,
                    name: cars_eco[3].name,
                    price: cars_eco[3].price,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Premiuim',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  details(
                    icon: cars_pre[0].iconImage,
                    name: cars_pre[0].name,
                    price: cars_pre[0].price,
                  ),
                  details(
                    icon: cars_pre[1].iconImage,
                    name: cars_pre[1].name,
                    price: cars_pre[1].price,
                  ),
                  details(
                    icon: cars_pre[2].iconImage,
                    name: cars_pre[2].name,
                    price: cars_pre[2].price,
                  ),
                  details(
                    icon: cars_pre[3].iconImage,
                    name: cars_pre[3].name,
                    price: cars_pre[3].price,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Luxury',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  details(
                    icon: cars_lux[0].iconImage,
                    name: cars_lux[0].name,
                    price: cars_lux[0].price,
                  ),
                  details(
                    icon: cars_lux[1].iconImage,
                    name: cars_lux[1].name,
                    price: cars_lux[1].price,
                  ),
                  details(
                    icon: cars_lux[2].iconImage,
                    name: cars_lux[2].name,
                    price: cars_lux[2].price,
                  ),
                  details(
                    icon: cars_lux[3].iconImage,
                    name: cars_lux[3].name,
                    price: cars_lux[3].price,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget details({
    required String icon,
    required String name,
    required String price,
  }) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(color: Colors.white60),
        child: Column(
          children: [
            Image.asset(icon, scale: 2),
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: theme_color1),
              onPressed: () {},
              child: Text('Rent Now'),
            )
          ],
        ),
      ),
    );
  }
}
