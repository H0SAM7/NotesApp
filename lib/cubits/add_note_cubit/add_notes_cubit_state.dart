part of 'add_notes_cubit_cubit.dart';

@immutable
sealed class AddNotesCubitState {}

final class AddNotesCubitInitial extends AddNotesCubitState {}

final class AddNoteLoading extends AddNotesCubitState {}

final class AddNoteSucsess extends AddNotesCubitState {}

final class AddNoteFauiler extends AddNotesCubitState {
  final String eerMessage;

  AddNoteFauiler(this.eerMessage);


}
