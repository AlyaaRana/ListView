class Movie {
  late String name;
  late String releaseYear;
  late double rating; // Adding the 'rating' property
  late String imagePath;
  late String sentence;// Adding the 'poster' property

  Movie(String name, String releaseYear, double rating, String imagePath, String sentence) {
    this.name = name;
    this.releaseYear = releaseYear;
    this.rating = rating;
    this.imagePath = imagePath;
    this.sentence = sentence;
  }
}