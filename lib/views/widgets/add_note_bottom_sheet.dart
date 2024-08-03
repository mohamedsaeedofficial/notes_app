import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hint: 'Title',
              maxLine: 5,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(text: 'Add')
          ],
        ),
      ),
    );
  }
}
