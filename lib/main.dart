// ignore_for_file: prefer_const_constructors

// import 'dart:async';
// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:http/http.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  // String url = "https://owlbot.info/api/v4/dictionary/owl -s | json_pp";
  // String _token = "25051ee031bbabd18a4ff8468ed1e86dd40c7cce";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Dictionary"),
        centerTitle: true,
        bottom: PreferredSize(
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
            ),
            preferredSize: Size.fromHeight(48.0)),
      ),
      body: Container(),
    );
  }
}
