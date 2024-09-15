import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({
    super.key,
  });

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
    @override
      void initState() {
   BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NoteStates>(
      builder: (context, state) {

       List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes??[];
         
      // BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        return Padding(
          padding: EdgeInsets.zero,
          child: ListView.builder(
              itemCount: notes.length,
            
            itemBuilder: (context, ind) {
            
            return  Padding(
            
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              
              child: NoteItem(note:notes[ind],),
            );
          }),
        );
      },
    );
  }
}
