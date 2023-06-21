// ignore_for_file: prefer_const_constructors
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 39, 145)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, Key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // get to => null;

  // String url = "https://owlbot.info/api/v4/dictionary/owl -s | json_pp";
  // String _token = "25051ee031bbabd18a4ff8468ed1e86dd40c7cce";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Code4Fun Dictionary"),
        centerTitle: true,
        actions: [
          Icon(Icons.history),
          Icon(Icons.favorite),
          Icon(Icons.home),
          PopupMenuButton(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: ((context) => [
                  PopupMenuItem(
                    value: 0,
                    child: Text("Home"),
                  ),
                  PopupMenuItem(value: 1, child: Text("Favorite")),
                  PopupMenuItem(value: 2, child: Text("Exit")),
                ]),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 12.0, bottom: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: TextFormField(
                      onChanged: (String text) {},
                      decoration: InputDecoration(
                        hintText: "Search...",
                        contentPadding: const EdgeInsets.only(left: 24.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            )),
      ),
      drawer: MyDrawer(),
      body: Container(),
    );
  }
}

onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ()));
      break;
    case 1:
      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ()));
      break;
    case 2:
      Navigator.pop(context);
  }
}

// IT IS CLASS TO MAKE DRAWER

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              Row(
                children: [
                  DrawerHeader(
                    child: CircleAvatar(),
                  ),
                  Text("Code4Fun Dictionary"),
                ],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text(
                  "Favorite",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text(
                  "History",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "Setting",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text(
                  "Exit",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// The splash screen is here

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
