import 'package:flutter/material.dart';
import 'package:pet_app/DetailScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'config.dart';
import 'DetailScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  double borderRadius = 0;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      curve: Curves.easeOut,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 10),
              blurRadius: 10,
        ),]
      ),
      child: Column(
        children: [
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen ?
                IconButton(icon: Icon(Icons.arrow_back_ios, size: 35, color: black,), onPressed: (){
                  setState(() {
                    xOffset = 0;
                    yOffset = 0;
                    scaleFactor = 1;
                    borderRadius = 0;
                    isDrawerOpen = false;
                  });}) : 
                IconButton(icon: Icon(Icons.menu, size: 35, color: black,), onPressed: (){
                  setState(() {
                    xOffset = 270;
                    yOffset = 120;
                    scaleFactor = 0.7;
                    borderRadius = 30;
                    isDrawerOpen = true;
                  });}),
                Column(
                  children: [
                    Text('Location', style: TextStyle(color: black, fontSize: smallFontSize),),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: primaryColor,),
                        Text('Surabaya, ', style: TextStyle(fontWeight: FontWeight.bold, color: black, fontSize: mediumFontSize),),
                        Text('Indonesia', style: TextStyle(color: black, fontSize: mediumFontSize),)
                      ]
                    )
                  ]
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/profil.jpg'),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 600,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), 
                  topRight: Radius.circular(30), 
                  bottomRight: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(borderRadius),
                  )
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        style: TextStyle(
                          fontSize: mediumFontSize,
                          color: Colors.grey,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: grey),
                          suffixIcon: Icon(FontAwesomeIcons.slidersH, color: grey, size: 18),
                          filled: true,
                          fillColor: white,
                          hintText: 'Search pet to adopt',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          
                        ),
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: animalCategories.length,
                        itemBuilder: (context, index){
                          return Container(
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: white,
                                    boxShadow: listBoxShadow,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  child: Image.asset(animalCategories[index]['imagePath'])
                                ),
                                SizedBox(height: 15),
                                Text(animalCategories[index]['name'], style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          );
                        },
                      )
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
                        },
                        child: Container(
                        height: 250,
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 45),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        boxShadow: listBoxShadow,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Hero(
                                      tag: 1,
                                      child: Image.asset('images/pet-cat2.png', height: 300)),
                                  )
                                ],
                              )
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 60, bottom: 20, right: 20),
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
                                  boxShadow: listBoxShadow,
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Sola',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24,
                                              color: Colors.grey[600]
                                            )
                                          ),
                                          Icon(FontAwesomeIcons.mars, color: Colors.grey[600], size: 30)
                                        ],
                                      ),
                                      Text('Abyssinian cat',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                      )
                                      ),
                                      Text('2 years old', 
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on, size: 24, color: primaryColor),
                                          Text('Distance 2.3 km',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 14
                                          )
                                          )
                                        ],
                                      )
                                    ]
                                  ),
                                ),
                              )
                            )
                          ]
                        ),
                      ),
                    ),
                    Container(
                      height: 250,
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    margin: EdgeInsets.only(top: 45),
                                    decoration: BoxDecoration(
                                      color: Colors.orange[200],
                                      boxShadow: listBoxShadow,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Align(
                                  child: Image.asset('images/pet-cat1.png', height: 300),
                                )
                              ],
                            )
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 60, bottom: 20, right: 20),
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
                                boxShadow: listBoxShadow,
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Orion',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                            color: Colors.grey[600]
                                          )
                                        ),
                                        Icon(FontAwesomeIcons.venus, color: Colors.grey[600], size: 30)
                                      ],
                                    ),
                                    Text('Abyssinian cat',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                      )
                                      ),
                                      Text('2 years old', 
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on, size: 24, color: primaryColor),
                                          Text('Distance 3.8 km',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 14
                                          )
                                          )
                                        ],
                                      )
                                  ]
                                ),
                              ),
                            )
                          )
                        ]
                      ),
                    )
                ],),
              )
            ),
          )
        ]
      ),
    );
  }
}