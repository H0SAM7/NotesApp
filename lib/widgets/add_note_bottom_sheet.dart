import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(label: 'label', hint: 'hint'),
          CustomTextField(
            label: 'label',
            hint: 'hint',
            maxline: 5,
          ),
          CustomButton(
            buttonName: 'Add',
            border: true,
            color: mainColor,
            txtcolor: Colors.black,
          ),
        ],
      ),
    );
  }
}
