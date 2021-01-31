import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'config.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Hero(
                        tag: 1,
                        child: Image.asset('images/pet-cat2.png', height: 300)
                      )
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(top: 80, bottom: 20),
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage('images/profil.jpg'),
                                        ),
                                        SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('Iqbal Maulana',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                                )
                                                ),
                                                SizedBox(width: 120),
                                                Text('March 24, 2018',
                                                style: TextStyle(
                                                  color: Colors.grey
                                                )
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 5),
                                            Text('Owner',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey
                                            )
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Text('Lorem ipsum dolor sit amet, exercitation quis id est occaecat. Enim anim esse ullamco aute consequat incididunt aliquip officia aliquip laboris id incididunt fugiat. Proident esse commodo amet incididunt.')
                              ],
                            ),
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30, right: 15),
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.teal[900],
                                          offset: Offset(0, 5),
                                          blurRadius: 15,
                                          spreadRadius: -2,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Icon(Icons.favorite_border, color: white),
                                  )
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 30, left: 15),
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.teal[900],
                                          offset: Offset(0, 5),
                                          blurRadius: 15,
                                          spreadRadius: -2,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(child: Text('Adoption', style: TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold)))
                                  )
                                )
                              ],
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.grey[100]),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                      Icon(Icons.share, color: Colors.grey[100])
                    ],
                  ),
                ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 320, horizontal: 20),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: listBoxShadow
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sola',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold
                              )
                              ),
                              Icon(FontAwesomeIcons.mars, color: Colors.grey[500], size: 35)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Abyssian cat',
                              style: TextStyle(
                                fontSize: 16,
                              )
                              ),
                              Text('2 years old', 
                              style: TextStyle(fontSize: 16)
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: primaryColor),
                              Text('Wisata Semanggi, Rungkut, Surabaya', 
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey
                              )
                            )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ),
          ),
        ],
      )
    );
  }
}