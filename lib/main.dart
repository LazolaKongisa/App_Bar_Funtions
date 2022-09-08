import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage()

      
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  String text = "Home clicked";
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
        key: drawerKey,
        endDrawer: Drawer(),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
              
                icon: Icon(Icons.car_repair),
              ),
              Tab(
                
                icon: Icon(Icons.home_repair_service),
              ),
              Tab(
                
                icon: Icon(Icons.room_service),
              )
            ],
          ),
          actions: [
            IconButton(
              splashRadius: 30,
              onPressed: (){

                setState(() {
                  text = "Item Clicked";
                });
              }, icon: Icon(Icons.cast)),
              IconButton(
              splashRadius: 30,
              onPressed: (){

                setState(() {
                  text = "Notifications Clicked";
                });
              }, icon: Icon(Icons.notifications)),
              IconButton(
              splashRadius: 30,
              onPressed: (){

                setState(() {
                  text = "Search Clicked";
                });
              }, icon: Icon(Icons.search)),
              IconButton(
              splashRadius: 30,
              onPressed: (){

                setState(() {
                  //drawerKey.currentState.openEndDrawer();
                });
              }, icon: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ))
          ],
          backgroundColor: Colors.blueGrey[400],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage("assets/images/logo.png"),),
          ),
          title: Text("Flutter")
          
          ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Car Repair - $text",
              ),
            ),
            Center(
              child: Text("Home Repair - $text",
              ),
            ),
            Center(
              child: Text("Room Service - $text",
              ),
            ),
          ],
        )

        
      ),
    );
  }
}