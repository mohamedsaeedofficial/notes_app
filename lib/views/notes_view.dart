import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 17, 212, 238),
        shape: const CircleBorder(
          side: BorderSide(
            color: Color.fromARGB(255, 17, 212, 238)
          )
        ),
        child: const Icon(FontAwesomeIcons.plus ,color: Colors.black,),
      ),
    );
  }
}
