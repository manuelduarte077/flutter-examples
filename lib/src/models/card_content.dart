class CardContent {
  final String title;
  final String description;
  final String imageUrl;

  CardContent({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  static final cardOptions = <CardContent>[
    CardContent(
      title: 'Batman',
      description: 'This is the hero detail page',
      imageUrl: 'assets/images/hero_detail.png',
    ),
    CardContent(
      title: 'Superman',
      description: 'This is the hero detail page',
      imageUrl: 'assets/images/hero_detail.png',
    ),
    CardContent(
      title: 'Hulk',
      description: 'This is the hero detail page',
      imageUrl: 'assets/images/hero_detail.png',
    ),
    CardContent(
      title: 'Flash',
      description: 'This is the hero detail page',
      imageUrl: 'assets/images/hero_detail.png',
    ),
    CardContent(
      title: 'Iron Man',
      description: 'This is the hero detail page',
      imageUrl: 'assets/images/hero_detail.png',
    ),
  ];
}
