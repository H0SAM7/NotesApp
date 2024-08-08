import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit_cubit.dart';

import 'package:notes_app/widgets/add_note_text_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesCubitState>(
          listener: (context, state) {
            if (state is AddNoteFauiler) {
              log("err message ${state.eerMessage}");
            }
            if (state is AddNoteSucsess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return const AddNoteForm();
          },
        ),
      ),
    );
  }
}
