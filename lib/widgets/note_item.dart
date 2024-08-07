
import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';


class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding:const EdgeInsets.only(top: 24,bottom: 24,left: 24),
        decoration:  BoxDecoration(color: Colors.amber,
        borderRadius: BorderRadius.circular(16)
        ),
        
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
              trailing: IconButton(onPressed: (){},icon: const Icon(Icons.delete,size: 26,color: Colors.black,),)
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
      ),
    );
  }
}
