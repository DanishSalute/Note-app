import 'package:flutter/material.dart';
import 'package:flutter_app/views/notes_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 23, 23),
        leadingWidth: 100.0,
        leading: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Notizen",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
            iconSize: 28.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
            color: Colors.white,
            iconSize: 28.0,
          ),
        ],
      ),
      body: NotesList(),
    );
  }
}
