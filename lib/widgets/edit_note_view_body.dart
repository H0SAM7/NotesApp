
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
       var size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
    
        children: [
          SizedBox(
            height: size.height*.2,
          ),
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
