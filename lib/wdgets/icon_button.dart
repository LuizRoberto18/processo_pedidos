import 'package:flutter/material.dart';

class IconButtonPerson extends StatelessWidget {
  IconData? icone;
  Function()? onPress;

  IconButtonPerson({
    this.icone,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress!,
      icon: Icon(icone!),
      color: Colors.purple[500],
    );
  }
}
