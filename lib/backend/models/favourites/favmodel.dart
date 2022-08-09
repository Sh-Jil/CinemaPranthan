class Favourites {
  final String? backposter;
  final String? poster;
  final String? title;
  final String? rating;
  final String? runtime;
  final int id;
  final bool ismovie;

  Favourites(
      {this.backposter,
      this.poster,
      this.title,
      this.rating,
      this.runtime,
      required this.id,
      required this.ismovie});

  Map<String, dynamic> toJson() => {
        'id': id,
        'ismovie': ismovie,
        'backposter': backposter,
        'poster': poster,
        'title': title,
        'rating': rating,
        'runtime': runtime
      };

  factory Favourites.fromJson(Map<String, dynamic> json) => Favourites(
      id: json['id'],
      ismovie: json['ismovie'],
      backposter: json['backposter'],
      poster: json['poster'],
      title: json['title'],
      rating: json['rating'],
      runtime: json['runtime']);
}
