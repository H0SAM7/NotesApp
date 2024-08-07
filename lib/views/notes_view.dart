import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id='NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, 
                   isScrollControlled: true,
          builder: (context){
     
            return const AddNoteBottomSheet();
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add,),
      ),
      body: const NotesViewBody(),
    );
  }
}
