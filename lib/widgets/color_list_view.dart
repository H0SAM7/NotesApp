import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit_cubit.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({super.key, required this.isactive, required this.color});
  final bool isactive ;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isactive
        ?  CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 32,
            backgroundColor: color
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
 
int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2.2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, ind) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
              child: GestureDetector(
                onTap: (){
                  currentIndex=ind;
                  BlocProvider.of<AddNotesCubit>(context).color=colors[ind];
                  setState(() {
                    
                  });
                },
                child: Coloritem(isactive: currentIndex==ind,color: colors[ind],)),
            );
          }),
    );
  }
}
