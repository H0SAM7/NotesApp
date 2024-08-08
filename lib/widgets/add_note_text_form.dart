import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            label: 'Title',
            hint: 'hint',
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            label: 'Subtitle',
            hint: 'hint',
            onSaved: (value) {
              subtitle = value;
            },
            maxline: 5,
          ),
          CustomButton(
            buttonName: 'Add',
            border: true,
            color: mainColor,
            txtcolor: Colors.black,
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
               
                NoteModel note = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.amber.value);
                BlocProvider.of<AddNotesCubit>(context).addNote(note);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
