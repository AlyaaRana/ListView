import 'package:flutter/material.dart';

class TypeMovie extends StatelessWidget {
  final String child;

  TypeMovie({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            child,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white, // Mengatur warna teks menjadi putih
            ),
          ),
        ),
      ),
    );
  }
}



