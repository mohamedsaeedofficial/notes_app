import 'package:flutter/material.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 28,
            backgroundColor: color,
          );
  }
}
