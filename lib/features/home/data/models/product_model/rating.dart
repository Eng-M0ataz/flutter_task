class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  factory Rating.fromJsonData(Map<String, dynamic> jsonData) => Rating(
    rate: (jsonData['rate'] as num?)?.toDouble(),
    count: jsonData['count'] as int?,
  );
}
