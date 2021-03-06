import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '2Look/2LookOLL.dart';
import '2Look/2LookPLL.dart';
import 'timer.dart';

void main() => runApp(MaterialApp(home: AppHomePage()));

class AppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Algorithm Trainer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(child: Text("Navigation Menu")),
            ListTile(
              title: Text("OLL"),
            ),
            ListTile(
              title: Text("PLL"),
            ),
            ListTile(
              title: Text("2-Look Algorithms"),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new App2LookAlgorithms()),
                );
              },
            ),
            ListTile(
              title: Text("Timer"),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new AppBasicTimer()),
                  );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/2-Look/OLL/antisune.png")),
                        Text("OLL Algorithms"),
                        SizedBox(height: 7.0,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/2-Look/PLL/Adjacent_Corner_Swap.png")),
                        Text("PLL Algorithms"),
                        SizedBox(height: 7.0,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new App2LookAlgorithms()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/2-Look/OLL/antisune.png")),
                            Image(image: AssetImage("assets/2-Look/PLL/H_Perm.png")),
                          ],
                        ),
                        Text("2-Look Algorithms"),
                        SizedBox(height: 7.0,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new AppBasicTimer()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/MainApp/timer_icon.png")),
                            Image(image: AssetImage("assets/PLL/J_Perm.png")),
                          ],
                        ),
                        Text("Timer"),
                        SizedBox(height: 7.0,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class App2LookAlgorithms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Algorithm Trainer: 2-Look"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new App2LookAlgorithmsOLL()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.5)
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/line.png")),
                      Text("2-Look OLL"),
                      SizedBox(height: 7.0,),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new App2LookAlgorithmsPLL()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.5)
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/2-Look/PLL/Z_Perm.png")),
                      Text("2-Look PLL"),
                      SizedBox(height: 7.0,),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}