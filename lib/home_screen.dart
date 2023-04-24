import 'package:carmania/Theme/theme.dart';
import 'package:carmania/navi_drawer.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Home_Sceen extends StatefulWidget {
  const Home_Sceen({Key? key}) : super(key: key);

  @override
  State<Home_Sceen> createState() => _Home_SceenState();
}

class _Home_SceenState extends State<Home_Sceen> {


  //For datepicker widget
  TextEditingController _pickdate = TextEditingController();

  //For return date widget
  TextEditingController _returndate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          height: 70,
        ),
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
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Rent you favourit car in easy steps...',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                    fontSize: 32),
              ),
              Image.asset(
                'assets/carimg.png',
              ),
              Text(
                'Get a car wherever and whenever you need it with your iOS or Android Devices.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  letterSpacing: 0.2,
                  color: Color.fromRGBO(172, 174, 180, 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5)),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search your location',
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pickup Date',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        controller: _pickdate,
                        decoration: InputDecoration(
                          hintText: 'dd/mm/yyyy',
                        ),
                        onTap: () async{
                          DateTime? pickedate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2023),
                              lastDate: DateTime(2100));

                          if(pickedate !=null){
                            setState(() {
                              _pickdate.text = DateFormat('yyyy-MM-dd').format(pickedate);
                            });
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Return Date',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        controller: _returndate,
                        decoration: InputDecoration(
                          hintText: 'dd/mm/yyyy',
                          fillColor: Colors.white,
                        ),
                        onTap: () async{
                          DateTime? pickedate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2023),
                              lastDate: DateTime(2100));

                          if(pickedate !=null){
                            setState(() {
                              _returndate.text = DateFormat('yyyy-MM-dd').format(pickedate);
                            });
                          }

                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: theme_color1),
                        onPressed: () {},
                        child: Text('Search'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Row(
                    children: [
                      Image.asset('assets/carlogo/BMW.png'),
                      SizedBox(
                        width: 80,
                      ),
                      Image.asset('assets/carlogo/tata-logo.png'),
                      SizedBox(
                        width: 80,
                      ),
                      Image.asset('assets/carlogo/mahindra-logo.png'),
                      SizedBox(
                        width: 80,
                      ),
                      Image.asset('assets/carlogo/Mazda.png'),
                      SizedBox(
                        width: 80,
                      ),
                      Image.asset('assets/carlogo/toyota-logo.png'),
                      SizedBox(
                        width: 80,
                      ),
                      Image.asset('assets/carlogo/Ford.png'),
                      SizedBox(
                        width: 80,
                      ),
                      Image.asset('assets/carlogo/Nissan.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
              Container(
                child: Column(
                  children: [
                    Text(
                      'HOW IT WORK',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        letterSpacing: 0.2,
                        color: Color.fromRGBO(172, 174, 180, 1),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rent your desired car with following 3 working steps',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.3,
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 200,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  size: 75,
                                  color: theme_color1,
                                ),
                                Text(
                                  'Pick Your Loaction',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.3,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Choose your loaction and find your best car',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    letterSpacing: 0.2,
                                    color: Color.fromRGBO(172, 174, 180, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            child: DottedLine(
                              direction: Axis.horizontal,
                              lineLength: 100,
                              dashColor: Color.fromRGBO(112, 112, 112, 1),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.calendar_month_sharp,
                                  size: 75,
                                  color: theme_color1,
                                ),
                                Text(
                                  'Pick-up Date/Time',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.3,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Select your pick up date and time to book your car.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    letterSpacing: 0.2,
                                    color: Color.fromRGBO(172, 174, 180, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            child: DottedLine(
                              direction: Axis.horizontal,
                              lineLength: 100,
                              dashColor: Color.fromRGBO(112, 112, 112, 1),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.car_rental,
                                  size: 75,
                                  color: theme_color1,
                                ),
                                Text(
                                  'Book your Desired Car',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.3,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'We will deliver it directly to you.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    letterSpacing: 0.2,
                                    color: Color.fromRGBO(172, 174, 180, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Column(
                children: [
                  Text(
                    'WHY CHOOSE US',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      letterSpacing: 0.2,
                      color: Color.fromRGBO(172, 174, 180, 1),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Get the best experience of rental cars',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                      fontSize: 22,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(6, 10, 4, 4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.wallet,
                          size: 51,
                          color: theme_color1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cheapest Market Price Guaranteed',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'We refund 100% if you find cheaper alternative',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.2,
                                  color: Color.fromRGBO(172, 174, 180, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(6, 10, 2, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person,
                          size: 51,
                          color: theme_color1,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hire Driver',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Don’t have a driver? We got you covered with that',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.01,
                                  color: Color.fromRGBO(172, 174, 180, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(6, 10, 2, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 51,
                          color:theme_color1,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Same Day Delivery',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Book and we will deliver to you within 24 Hours',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.01,
                                  color: Color.fromRGBO(172, 174, 180, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(6, 10, 2, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 51,
                          color: theme_color1,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '24/7 Support',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Contact us if you have any issues',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.01,
                                  color: Color.fromRGBO(172, 174, 180, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Column(
                children: [
                  Text(
                    'POPULAR RENTAL DEALS',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      letterSpacing: 0.2,
                      color: Color.fromRGBO(172, 174, 180, 1),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Most popular cars rental deals',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.3,
                      fontSize: 22,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/popularCar/i20.png',
                              height: 190,
                            ),
                            Text(
                              'i20 2018 Model',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.5,
                                  fontSize: 14,
                                  fontFamily: 'Geomanist'
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.amber,size: 15,),
                                SizedBox(width: 3),
                                Text('4.8'),
                                SizedBox(width: 3),
                                Text('(100+ Review)')
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/popularCar/tataZest.png',
                              height: 190,
                            ),
                            Text(
                              'Tata Zest - XE Petrol',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.5,
                                  fontSize: 14,
                                  fontFamily: 'Geomanist'
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.amber,size: 15,),
                                SizedBox(width: 3),
                                Text('4.8'),
                                SizedBox(width: 3),
                                Text('(100+ Review)')
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/popularCar/suzukiGrant.png',
                              height: 190,
                            ),
                            Text(
                              'Suzuki Grand Vitara T',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.5,
                                  fontSize: 14,
                                  fontFamily: 'Geomanist'
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.amber,size: 15,),
                                SizedBox(width: 3),
                                Text('4.8'),
                                SizedBox(width: 3),
                                Text('(100+ Review)')
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/popularCar/hyundaiCreta.png',
                              height: 190,
                            ),
                            Text(
                              'Hyundai Creta 2019-20',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.5,
                                  fontSize: 14,
                                  fontFamily: 'Geomanist'
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.amber,size: 15,),
                                SizedBox(width: 3),
                                Text('4.8'),
                                SizedBox(width: 3),
                                Text('(100+ Review)')
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
