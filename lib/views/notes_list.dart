import 'package:flutter/material.dart';
import 'package:flutter_app/views/edit_note.dart';

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesListState();
}

class Note {
  final String title;
  final String date;

  Note(this.title, this.date);
}

class _NotesListState extends State<NotesList> {
  List<Note> notes = [
    Note("I like trains", "09/10"),
    Note("Chicken Jockey", "25/09"),
  ];

  // Build card for notes
  Widget _buildLists() {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditNote()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Card(
              color: const Color.fromARGB(255, 39, 39, 39),
              child: Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: ListTile(
                  title: Text(
                    notes[index].title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    notes[index].date,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildLists();
  }
}
