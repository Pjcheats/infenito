class BeverageInfo {
  final String name;
  final String imageUrl;
  final String? description;
  final String content;
  final double rating;
  final int numberOfRatings;

  const BeverageInfo({
    required this.name,
    required this.imageUrl,
    this.description = "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
    required this.content,
    required this.rating,
    required this.numberOfRatings,
  });
}
