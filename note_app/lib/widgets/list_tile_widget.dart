import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
  });
  final String title;
  final String subtitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        maxLines: 2,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w900,
          fontFamily: 'Raleway',
        ),
      ),
      trailing: GestureDetector(
        onTap: onTap,
        child: const Icon(
          Icons.delete_forever_outlined,
          color: Colors.white,
          size: 35,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Raleway',
        ),
      ),
    );
  }
}
