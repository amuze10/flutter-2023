class Source {
  Source({
    this.id,
    this.name,
  });
  final String? id;
  final String? name;

  factory Source.fromJson(
          Map<String, dynamic> json) => // bul #return degendi tyshyndyrot
      Source(id: json['id'], name: json['name']);
}
