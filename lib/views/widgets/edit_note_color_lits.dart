import 'package:flutter/material.dart';
import 'package:note_app/constent.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/colors_view.dart';

class EditNoteColorLits extends StatefulWidget {
  const EditNoteColorLits({
    super.key,
    required this.noteModel,
  });

  final NoteModel noteModel;
  @override
  State<EditNoteColorLits> createState() => _EditNoteColorLitsState();
}

class _EditNoteColorLitsState extends State<EditNoteColorLits> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.noteModel.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorsView(
                  color: kColors[index],
                  isActive: currentIndex == index,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
