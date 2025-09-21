import 'package:flutter/material.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar and back navigation
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
        ),
      ),

      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Titlle",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Content",
            ),
          )
        ],
      ),
    );
  }
}
