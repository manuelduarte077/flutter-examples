class CardContent {
  final String title;
  late final String description;

  CardContent({
    required this.title,
    description,
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
  late final String cardImage;

  static const image =
      'https://www.andreacastell.com/wp-content/uploads/2020/10/not-found.png';

  CardContentImage({
    required String title,
    String? description,
    String? cardImage,
  }) : super(
          title: title,
          description: description,
        ) {
    this.cardImage = cardImage ??
        'https://www.andreacastell.com/wp-content/uploads/2020/10/not-found.png';
    this.description = description ?? 'Description not available';
  }

  static final cardOptionsImage = <CardContentImage>[
    CardContentImage(
      title: 'Flutter + Graphql',
      description:
          "Como consumir una API con Graphql y Flutter + Dart usando GraphqlClient + GraphqlData + GraphqlQuery + GraphqlMutation + GraphqlSubscription",
      cardImage:
          'https://voidsec.com/wp-content/uploads/2018/05/graphql-logo.png',
    ),
    CardContentImage(
      title: 'Flutter',
      description:
          'Flutter es un framework de desarrollo de aplicaciones móviles multiplataforma y de código abierto basado en el lenguaje de programación Dart',
      cardImage:
          "https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbQbU7b%2Fbtq2cnMNcDR%2Fu9mqiiQk9vJItyFnDHMac1%2Fimg.png",
    ),
    CardContentImage(
      title: 'Dart',
      description:
          'Dart es un lenguaje de programación de código abierto y está diseñado para ser usado en aplicaciones de escritorio y móviles de código abierto.',
      cardImage:
          "https://edteam-media.s3.amazonaws.com/blogs/original/c9d0e7b2-a7f8-45fc-bac8-856977585384.png",
    ),
    CardContentImage(
      title: 'Flutter Dash',
      description:
          'Flutter Dash es una aplicación de desarrollo para Flutter que permite crear aplicaciones de Dash con una interfaz de usuario sencilla.',
      cardImage: "https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png",
    ),
  ];
}
