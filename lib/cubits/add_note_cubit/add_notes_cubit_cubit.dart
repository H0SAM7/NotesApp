import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubitCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubitCubit() : super(AddNotesCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
  var noteBox = Hive.box(KnotesBox);
  await noteBox.add(note);
  emit(AddNoteSucsess());
}  catch (e) {
 emit(AddNoteFauiler(e.toString()));
}
  }
}
