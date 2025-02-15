import 'package:flutter/material.dart';

class AlerDialog extends StatelessWidget {
  const AlerDialog({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Delete',
        style: TextStyle(
          color: Colors.red,
          fontSize: 20,
        ),
      ),
      content: const Text(
        'Are you sure you want to delete this note?',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: onPressed,
          child: const Text(
            'Yes',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
