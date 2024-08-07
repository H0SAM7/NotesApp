import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      required this.label,
      required this.hint,
      this.onchage,
      this.controller,
      this.onTap});
  final TextEditingController? controller;
  final String label;
  final String hint;

  Function(String)? onchage;
  VoidCallback? onTap;
  Function(String?)? onSaved;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: TextFormField(
          onSaved: widget.onSaved,
          showCursor: true,
          controller: widget.controller,
          validator: (data) {
            if (data!.isEmpty) {
              return 'Field is required';
            }
          },
          onChanged: widget.onchage,
          style: TextStyle(
            color: !isDarkMode ? Colors.black : Colors.white,
            fontFamily: 'Inter',
          ),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            label: Text(
              widget.label,
              style: TextStyle(
                color: !isDarkMode ? Colors.white : Colors.white,
                fontFamily: 'Inter',
              ),
            ),
            hintText: widget.hint,
            fillColor: Colors.white,
            hoverColor: Colors.white,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontFamily: 'Inter',
            ),
            border:  buildBorder(),
            enabledBorder:  buildBorder(),
            focusedBorder: buildBorder(mainColor),
          )),
    );
  }


  OutlineInputBorder buildBorder([color]){
  return  OutlineInputBorder(
              borderSide: BorderSide(color:color ?? Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            );
  }
}

