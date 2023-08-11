

import 'package:flutter/material.dart';
// import 'package:latihan_satu/siswa.dart';
import 'package:latihan_satu/data/movie.dart';
import 'package:latihan_satu/data/btntype.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _stories = ['Horror', 'Comedy', 'Action', 'Adventure', 'Romantic'];
  // List<Siswa>? siswa11PPLG2 = [];
  List<Movie>? favouriteMovie = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Siswa alyaa = new Siswa("alyaa", "alyaarana@gmail.com");
    // Siswa vicko = new Siswa("vicko", "vicko@gmail.com");
    // Siswa rafa = new Siswa("rafa", "rafa@gmail.com");
    // siswa11PPLG2?.add(vicko);
    // siswa11PPLG2?.add(alyaa);
    // siswa11PPLG2?.add(rafa);
    favouriteMovie?.add(Movie("Barbie", "2013", 4.5, "assets/image/barbie.jpg","film yang selalu saya tonton waktu kecil"));
    favouriteMovie?.add(Movie("Siccin", "2014", 4.5, "assets/image/siccin.jpg","adalah film supernatural horror pertama dari serial film horror dari Turki "));
    favouriteMovie?.add(Movie("Sing", "2016", 4.5, "assets/image/sing.jpg","Sing adalah film komedi musikal komputer-animasi"));
    favouriteMovie?.add(Movie("Up", "2004", 4.5, "assets/image/up.jpg","Up adalah film petualangan komedi-drama animasi"));
    favouriteMovie?.add(Movie("Mickey Mouse", "1928", 4.5, "assets/image/mickey.jpg","Dibuat sebagai pengganti karakter Disney sebelumnya, Oswald the Lucky Rabbit"));
    favouriteMovie?.add(Movie("Inside Out", "2015", 4.5, "assets/image/insideOut.jpg","Inside Out adalah film animasi Amerika Serikat tahun 2015"));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie List",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
          ),),
      ),
      body: Container(
        color: Color(0xFFFDEFF4),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
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
                ],
              ),
            ),
              Container(
                height: 45,
                child: ListView.builder(
                    itemCount: _stories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return TypeMovie(
                        child: _stories[index],
                      );
                    })
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                    // itemCount: siswa11PPLG2?.length,
                    itemCount: favouriteMovie?.length,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 8),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Adjust the value as needed
                          ),
                          color: Color(0xFFFFC0D3),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    favouriteMovie![index].imagePath,
                                    width: 100,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5), // Adjust the bottom padding as needed
                                        child: Text(
                                          favouriteMovie![index].name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Text(favouriteMovie![index].rating.toString()),
                                      Text(favouriteMovie![index].releaseYear),
                                      Text(favouriteMovie![index].sentence,
                                        style:TextStyle(
                                          fontSize: 14
                                        ) ,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              PopupMenuButton(
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(
                                      child: Text("Option 1"),
                                      value: "option1",
                                    ),
                                    PopupMenuItem(
                                      child: Text("Option 2"),
                                      value: "option2",
                                    ),
                                  ];
                                },
                                offset: Offset(0, -40), // Sesuaikan nilai offset untuk mengatur posisi vertikal
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
          ],
        ),
      ),
    );
  }
}
