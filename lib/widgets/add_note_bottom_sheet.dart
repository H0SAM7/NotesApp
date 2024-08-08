
import 'package:flutter/material.dart';

import 'package:notes_app/widgets/add_note_text_form.dart';



class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AddNoteTextForm(),
    );
  }
}



