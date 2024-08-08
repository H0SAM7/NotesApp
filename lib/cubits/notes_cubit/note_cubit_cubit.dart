import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_cubit_state.dart';

class NotesCubit extends Cubit<NoteStates> {
  NotesCubit() : super(NoteCubitInitial());
  List<NoteModel>? notes;
  fetchAllNotes(){

  
  var noteBox = Hive.box<NoteModel>(KnotesBox);
  notes = noteBox.values.toList();
    emit(NotesSuccess());

  }

}
