import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: 24,bottom: 24,left: 24),
      decoration: const BoxDecoration(color: Colors.amber),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16.0,top: 16),
              child: Text(
                'ext(String data, {Key? key, TextStyle? style,,',
                style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
              ),
            ),
            trailing: IconButton(onPressed: (){},icon: Icon(Icons.delete,size: 26,color: Colors.black,),)
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
            '1/2/2003',
            style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
                    ),
          ),
        ],
      ),
    );
  }
}
