import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteTextForm extends StatefulWidget {
  const AddNoteTextForm({super.key});

  @override
  State<AddNoteTextForm> createState() => _AddNoteTextFormState();
}

class _AddNoteTextFormState extends State<AddNoteTextForm> {
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
                log('saved');
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
