import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class SummaryTile extends StatelessWidget {
  final String tittle;
  final IconData icon;
  final int value;
  const SummaryTile(
      {Key? key, required this.tittle, required this.icon, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.17,
      child: Column(
        children: [
          Badge(
            badgeColor: Colors.deepPurple,
            badgeContent: Text(
              "$value",
              style: const TextStyle(color: Colors.white),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white10),
              child: Icon(
                icon,
                color: Colors.white,
                size: 35.0,
              ),
            ),
          ),
          Text(
            tittle,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
