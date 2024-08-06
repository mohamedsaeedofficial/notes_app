import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/colors_view.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const ColorsView();
        },
      ),
    );
  }
}
