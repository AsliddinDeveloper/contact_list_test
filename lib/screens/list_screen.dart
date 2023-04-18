import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({
    super.key,
    // required this.title,
    // required this.id,
    // required this.subtitle,
    // required this.imageUrl,
  });

  // final String title;
  // final String id;
  // final String subtitle;
  // final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          // title
          "Sahifa",


        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: double.infinity,
                height: 250,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      // imageUrl,
                      "https://images.unsplash.com/photo-1680984580142-37e1ad42ea83?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "Asliddin",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.aboreto().fontFamily,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 26,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "998 93 060 03 02",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.aboreto().fontFamily,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
