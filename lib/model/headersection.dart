import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final String? selectedGenre;
  final List<String> genres;
  final void Function(String?) onGenreChanged;

  const HeaderSection({
    required this.selectedGenre,
    required this.genres,
    required this.onGenreChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Favourite",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "My Favourite Movie",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Spacer(),
          DropdownButton<String>(
            value: selectedGenre,
            onChanged: onGenreChanged,
            items: genres.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
