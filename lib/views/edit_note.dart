import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  // Store Notes

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
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        actions: [
          // Share Button
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share, color: Colors.white),
          ),

          // More Option Button
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined, color: Colors.white, size: 30),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextSelectionTheme(
          data: TextSelectionThemeData(
            // Beautify
            selectionColor: Colors.teal,
            selectionHandleColor: Colors.tealAccent
          ),
          child: Column(
            children: [
              // Title Field
              TextFormField(
                maxLines: 1,

                // Cursor Settings
                cursorColor: Colors.tealAccent,
                cursorHeight: 30,
                cursorWidth: 3,
                cursorRadius: Radius.circular(10),
                showCursor: true,

                // Decoration
                style: TextStyle(color: Colors.white, fontSize: 40),
                decoration: InputDecoration(hintText: "Title", border: InputBorder.none),
              ),
          
              // Content Field
              TextFormField(
                maxLines: null,
                // Cursor settings
                cursorColor: Colors.tealAccent,
                cursorHeight: 25,
                cursorWidth: 3,
                cursorRadius: Radius.circular(10),
                showCursor: true,
          
                // Decoration
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(hintText: "Content", border: InputBorder.none, fillColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
