import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: " Note Edit",
              icon: Icons.check,
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
                setState(() {
                  
                });
              },
            ),
            const SizedBox(
              height: 35,
            ),
            CustomTextField(
              label: 'Title',
              hint:widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            CustomTextField(
              label: 'content',
              hint: widget.note.subtitle,
              maxline: 7,
              onChanged: (value) {
                content = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
