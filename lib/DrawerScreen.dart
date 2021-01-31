import 'package:flutter/material.dart';

import 'config.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/profil.jpg'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Iqbal Maulana',
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    )
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text('Online',
                    style: TextStyle(
                      color: Colors.white70,
                      letterSpacing: 1.5,
                      fontSize: 12,
                    )
                    )
                  ],
                )
              ]
            ),
          ),
          Column(
            children: drawerItems.map((content) => Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                  children: [
                    Icon(content['icon'], size: 25, color: white),
                    SizedBox(width: 15),
                    Text(content['text'],
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      
                    )
                    )
                  ],
                ),
            )).toList()
          ),
          Row(
            children: [
              Icon(Icons.settings, color: white, size: 25),
              SizedBox(width: 15),
              Text('Settings', 
              style: TextStyle(
                color: white,
                fontSize: 16
              )
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: white,
                width: 1,
                height: 20,
              ),
              Text('Log Out',
              style: TextStyle(
                color: white,
                fontSize: 16
              )
            )
            ],
          ),
        ],
      ),
    );
  }
}