class FeedModel {
  String name;
  String avatar;
  String image;
  String location;
  String description;
  List<String> likedBy;
  bool isFavorite;

  FeedModel({
    this.name,
    this.avatar,
    this.image,
    this.location,
    this.description,
    this.likedBy,
    this.isFavorite = false,
  });
}

List<FeedModel> feeds = feedsData
    .map(
      (item) => FeedModel(
        name: item['name'],
        avatar: item['avatar'],
        location: item['location'],
        image: item['image'],
        description: item['description'],
        likedBy: item['likedBy'],
      ),
    )
    .toList();

var feedsData = [
  {
    'name': 'mystory',
    'avatar': 'https://i.pravatar.cc/150',
    "image":
        "https://images.unsplash.com/photo-1528329140527-75853b1e1650?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
    'location': 'Jakarta, Indonesia',
    'description': 'Santuy banget...',
    'likedBy': [
      'junnaediakbar',
      'luismilla',
    ],
  },
  {
    'name': 'apalah',
    'avatar': 'https://i.pravatar.cc/200',
    "image":
        "https://images.unsplash.com/photo-1621704096485-b5835452a955?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    'location': 'Jakarta, Indonesia',
    'description': 'Santuy banget...',
    'likedBy': [
      'shintaeyoung',
      'attahalilintar',
    ],
  },
  {
    'name': 'taulah',
    'avatar': 'https://i.pravatar.cc/220',
    "image":
        "https://images.unsplash.com/photo-1528329140527-75853b1e1650?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
    'location': 'Jakarta, Indonesia',
    'description': 'Santuy banget...',
    'likedBy': [
      'raffiahmad',
      'jokowi',
    ],
  },
];
