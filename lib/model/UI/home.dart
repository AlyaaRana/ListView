import 'package:flutter/material.dart';
import 'package:latihan_satu/data/movie.dart';
import 'package:latihan_satu/model/movieCard.dart';
import 'package:latihan_satu/model/headersection.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _genres = ['All', 'Action', 'Horror', 'Adventure', 'Comedy', 'Romantic'];
  String _selectedGenre = 'All';

  final List<Movie> _favouriteMovies = [
    Movie("Barbie", "2013", 4.5, "assets/image/barbie.jpg", "film yang selalu saya tonton waktu kecil", "Action"),
    Movie("Siccin", "2014", 4.5, "assets/image/siccin.jpg", "adalah film supernatural horror pertama dari serial film horror dari Turki", "Horror"),
    Movie("Sing", "2016", 4.5, "assets/image/sing.jpg", "Sing adalah film komedi musikal komputer-animasi", "Adventure"),
    Movie("Up", "2004", 4.5, "assets/image/up.jpg", "Up adalah film petualangan komedi-drama animasi", "Adventure"),
    Movie("Mickey Mouse", "1928", 4.5, "assets/image/mickey.jpg", "Dibuat sebagai pengganti karakter Disney sebelumnya, Oswald the Lucky Rabbit", "Action"),
    Movie("Inside Out", "2015", 4.5, "assets/image/insideOut.jpg", "Inside Out adalah film animasi Amerika Serikat tahun 2015", "Action"),
  ];

  List<Movie> getFilteredMovies() {
    if (_selectedGenre == 'All') {
      return _favouriteMovies;
    } else {
      List<Movie> filteredMovies = _favouriteMovies.where((movie) => movie.genre == _selectedGenre).toList();
      if (filteredMovies.isEmpty) {
        // Tampilkan peringatan jika data kosong
        filteredMovies.add(Movie(
          "No Movies",
          "",
          0.0,
          "assets/image/no_movie_image.jpg",
          "No movies available for this genre.",
          _selectedGenre,
        ));
      }
      return filteredMovies;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFFDEFF4),
        child: Column(
          children: [
            SizedBox(height: 20),
            HeaderSection(
                selectedGenre: _selectedGenre,
                genres: _genres,
                onGenreChanged: (String? newValue){
                  _selectedGenre = newValue?? 'All';
                }),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: getFilteredMovies().length,
                itemBuilder: (BuildContext context, int index) {
                  return MovieCard(
                    movie: getFilteredMovies()[index], // Menggunakan daftar yang disaring
                    onEdit: () {
                      // Implementasi logika untuk edit data film
                      print("Edit: ${getFilteredMovies()[index].name}");
                    },
                    onDelete: () {
                      setState(() {
                        _favouriteMovies.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
