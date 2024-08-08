import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  final GlobalKey<FormState> fromKey=GlobalKey();
AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: fromKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextField(label: 'Title', hint: 'hint'
            ,onSaved: (value){
              title=value;
            },
            ),
            CustomTextField(
              label: 'label',
              hint: 'hint',
                onSaved: (value){
              subtitle=value;
            },
              maxline: 5,
            ),
            CustomButton(
              buttonName: 'Add',
              border: true,
              color: mainColor,
              txtcolor: Colors.black,
              onTap: (){
                if(fromKey.currentState!.validate()){
                  fromKey.currentState!.save();
                  
                  log('saved');

                }
                else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {
                    
                  });
                }

              },
            ),
          ],
        ),
      ),
    );
  }
}
