class StoryModel {
  String image;
  String name;

  StoryModel(this.name, this.image);
}

List<StoryModel> stories =
    storiesData.map((item) => StoryModel(item['name'], item['image'])).toList();

var storiesData = [
  {'name': 'mystory', "image": "https://i.pravatar.cc/320"},
  {'name': 'jono', "image": "https://i.pravatar.cc/301"},
  {'name': 'siapaaja', "image": "https://i.pravatar.cc/302"},
  {'name': 'yukkbisayuk', "image": "https://i.pravatar.cc/303"},
  {'name': 'hahaha', "image": "https://i.pravatar.cc/304"},
  {'name': 'mantap', "image": "https://i.pravatar.cc/305"},
  {'name': 'lucukamu', "image": "https://i.pravatar.cc/306"},
];
