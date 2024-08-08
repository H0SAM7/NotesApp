import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_indecator.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.icon,
      this.onTap,
      required this.buttonName,
      this.color,
      this.txtcolor,
      this.width,
      this.image,
      this.border = false,
      this.isloading=false});
  final String buttonName;
  final bool isloading;
  VoidCallback? onTap;
  Color? color;
  Color? txtcolor;
  double? width;
  String? image;
  bool border;
  Icon? icon;
  @override
  Widget build(BuildContext context) {
 
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        width: width ?? double.infinity,
        //color: Colors.white,
        decoration: BoxDecoration(
          image: image != null
              ? DecorationImage(
                  image: NetworkImage(image!), alignment: Alignment.centerLeft)
              : null,
          border: border ? Border.all(width: .4, ) : null,
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextButton(
          onPressed: onTap,
          child:isloading?const CustomLoadingIndicator(): Text(
            buttonName,
            style: TextStyle(
              color: txtcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
