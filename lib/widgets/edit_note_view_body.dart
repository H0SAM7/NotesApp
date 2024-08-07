import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   // var size = MediaQuery.of(context).size;
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: " Note Edit",icon: Icons.check,
            ),
  SizedBox(
              height: 35,
            ),
            CustomTextField(label: 'Title', hint: ''),
            CustomTextField(label: 'content', hint: '',maxline: 7,),

          ],
        ),
      ),
    );
  }
}
