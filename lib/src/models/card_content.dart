class CardContent {
  final String title;
  final String description;

  CardContent({
    required this.title,
    required this.description,
  });

  static final cardOptions = <CardContent>[
    CardContent(
      title: 'Batman',
      description: 'This is the hero detail page',
    ),
    CardContent(
      title: 'Superman',
      description: 'This is the hero detail page',
    ),
    CardContent(
      title: 'Hulk',
      description: 'This is the hero detail page',
    ),
    CardContent(
      title: 'Flash',
      description: 'This is the hero detail page',
    ),
    CardContent(
      title: 'Iron Man',
      description: 'This is the hero detail page',
    ),
  ];
}

class CardContentImage extends CardContent {
  final String cardImage;

  CardContentImage({
    required String title,
    required String description,
    required this.cardImage,
  }) : super(
          title: title,
          description: description,
        );

  static final cardOptionsImage = <CardContentImage>[
    CardContentImage(
      title: 'Flutter + Graphql',
      description: 'This is the hero detail page',
      cardImage:
          "https://voidsec.com/wp-content/uploads/2018/05/graphql-logo.png",
    ),
    CardContentImage(
      title: 'Flutter',
      description: 'This is the hero detail page',
      cardImage:
          "https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbQbU7b%2Fbtq2cnMNcDR%2Fu9mqiiQk9vJItyFnDHMac1%2Fimg.png",
    ),
    CardContentImage(
      title: 'Dart',
      description: 'This is the hero detail page',
      cardImage:
          "https://edteam-media.s3.amazonaws.com/blogs/original/c9d0e7b2-a7f8-45fc-bac8-856977585384.png",
    ),
    CardContentImage(
      title: 'Flutter Dash',
      description: 'This is the hero detail page',
      cardImage: "https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png",
    ),
  ];
}
