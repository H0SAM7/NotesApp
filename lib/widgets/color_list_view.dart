import 'package:flutter/material.dart';

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
  ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  List<Color> colors = const [
    Color.fromRGBO(110, 172, 218, 1), // rgb(110, 172, 218)
    Color.fromRGBO(3, 52, 110, 1), // rgb(3, 52, 110)
    Color.fromRGBO(2, 21, 38, 1), // rgb(2, 21, 38)
    Color.fromRGBO(226, 226, 182, 1), // rgb(226, 226, 182)
    Color.fromRGBO(251, 246, 226, 1), // rgb(251, 246, 226)
    Color.fromRGBO(236, 206, 174, 1), // rgb(236, 206, 174)
    Color.fromRGBO(230, 131, 105, 1), // rgb(230, 131, 105)
    Color.fromRGBO(19, 24, 66, 1), // rgb(19, 24, 66)
  ];
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
                  setState(() {
                    
                  });
                },
                child: Coloritem(isactive: currentIndex==ind,color: colors[ind],)),
            );
          }),
    );
  }
}
