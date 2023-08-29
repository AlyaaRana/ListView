import 'package:flutter/material.dart';
import 'package:latihan_satu/data/movie.dart'; // Ganti dengan import sesuai path Anda

class MovieCard extends StatelessWidget {
  final Movie movie;
  final Function() onEdit;
  final Function() onDelete;

  const MovieCard({required this.movie, required this.onEdit, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Color(0xFFFFC0D3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: EdgeInsets.only(right: 8),
                child: Image.asset(
                  movie.imagePath,
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4), // Add a bit of space above the title
                  Text(
                    movie.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8), // Add space between title and other content
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      SizedBox(width: 4),
                      Text(
                        movie.rating.toString(),
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Text(movie.releaseYear),
                  SizedBox(height: 8), // Add space between content and sentence
                  Text(
                    movie.sentence,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("Edit"),
                    value: "edit",
                  ),
                  PopupMenuItem(
                    child: Text("Delete"),
                    value: "delete",
                  ),
                ];
              },
              onSelected: (value) {
                if (value == "edit") {
                  onEdit();
                } else if (value == "delete") {
                  onDelete();
                }
              },
              offset: Offset(0, -40),
            ),
          ],
        ),
      ),
    );
  }
}
