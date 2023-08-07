import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String title;
  final IconData icon;
  const Categories({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Icon(
              icon,
              color: Colors.blue,
              size: 40,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
