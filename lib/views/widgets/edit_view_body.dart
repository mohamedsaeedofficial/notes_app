import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/note_cubit/notes_cubit.dart';
import 'package:note_app/main.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, supTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppBar(
            onTap: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = supTitle ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              showToast('Edit Success');
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onChanged: (p0) {
              title = p0;
            },
            onSaved: (p0) {},
            hint: widget.noteModel.title,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onChanged: (p0) {
              supTitle = p0;
            },
            onSaved: (p0) {},
            hint: widget.noteModel.subTitle ,
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
