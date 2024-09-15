import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubit() : super(AddNotesCubitInitial());
  Color color = const Color.fromRGBO(110, 172, 218, 1);
  addNote(NoteModel note) async {
     note.color=color.value;
    emit(AddNoteLoading());
   
    try {
      
      var noteBox = Hive.box<NoteModel>(KnotesBox);
      await noteBox.add(note);
      emit(AddNoteSucsess());
    } catch (e) {
      emit(AddNoteFauiler(e.toString()));
    }
  }
}
