import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/contact_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> foydalanuvchilar = [
    {
      "id": "User1",
      "title": "Asliddin",
      "subtitle": "998 93 060 04 02",
      "imageUrl":
          "https://images.unsplash.com/photo-1680984580142-37e1ad42ea83?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
    },
    {
      "id": "User2",
      "title": "Ibrohim",
      "subtitle": "998 93 060 00 06",
      "imageUrl":
          "https://images.unsplash.com/photo-1680458842171-6dbeced420f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMzfDZzTVZqVExTa2VRfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "id": "User3",
      "title": "Temur",
      "subtitle": "998 92 060 0403",
      "imageUrl":
          "https://images.unsplash.com/photo-1680790485351-879fc71f5c8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI1fDZzTVZqVExTa2VRfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    },
  ];

  void _deleteContact(String id) {
    setState(() {
      if (foydalanuvchilar["id"] == id) {
        // remoWhere
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0,
        centerTitle: true,
        title: const Text(
          "CONTACT LIST",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
          children: foydalanuvchilar.map((contacts) {
        return ContactList(
          id: contacts["id"]!,
          title: contacts["title"]!,
          subtitle: contacts["subtitle"]!,
          imageUrl: contacts["imageUrl"]!,
        );
      }).toList()),
    );
  }
}
