import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 10,),
          CustomTextField(
            onSaved: (p0) {},
            hint: 'Title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (p0) {},
            hint: 'Content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
