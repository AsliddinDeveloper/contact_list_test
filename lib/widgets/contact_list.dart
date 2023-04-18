import 'package:flutter/material.dart';
import '../screens/list_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.id});

  final String title;
  final String id;
  final String subtitle;
  final String imageUrl;

  // void kattaSahifagaKirsh(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (ctx) => const ListScreen(),
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 6,
        left: 20,
        right: 20,
      ),
      child: Card(
        elevation: 0,
        child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => ListScreen(
                        // id:  ["id"],
                        // title: " tile",
                        // subtitle: "subtitle",
                        // imageUrl: "imageUrl",
                        ),
                  ),
                ),
                child: Image.network(
                  imageUrl,
                  // "https://images.unsplash.com/photo-1680984580142-37e1ad42ea83?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60"
                ),
              ),
            ),
            title: Text(
                // "Asliddin",
                title),
            subtitle: Text(
              subtitle,
              // "998 93 060 04 02",
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
            )

            //
            ),
      ),
    );
  }
}
