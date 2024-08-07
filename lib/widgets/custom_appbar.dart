
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const  CustomAppBar({super.key,required this.title, this.icon,this.onTap});
 final String title;
 final IconData? icon;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(title,style: const TextStyle(fontSize: 24),),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white.withOpacity(.05),
            ),
            child:  Icon(icon, color: Colors.white, size: 24),
            
          ),
        )
      ],
    );
  }
}