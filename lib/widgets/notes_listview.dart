
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.zero,
      child: ListView.builder(
      
        itemBuilder: (context, ind) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: NoteItem(),
        );
      }),
    );
  }
}
