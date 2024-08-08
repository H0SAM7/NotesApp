import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,

    this.controller,
    this.maxline = 1,
    this.onTap,
    this.onSaved,
  });

  final TextEditingController? controller;
  final String label;
  final String hint;
  final int maxline;

  final VoidCallback? onTap;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: TextFormField(
        onSaved: onSaved,
        maxLines: maxline,
        showCursor: true,
        controller: controller,
        validator: (data) {
          if (data?.isEmpty??true) {
            return 'Field is required';
          }
          return null;
        },

        style: TextStyle(
          color: !isDarkMode ? Colors.black : Colors.white,

        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          label: Text(
            label,
            style: TextStyle(
              color: !isDarkMode ? Colors.white : Colors.white,

            ),
          ),
          hintText: hint,
          fillColor: Colors.white,
          hoverColor: Colors.white,
          hintStyle: const TextStyle(
            color: Colors.grey,
   
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(mainColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: const BorderRadius.all(Radius.circular(16)),
    );
  }
}
