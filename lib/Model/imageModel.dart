class ImageModel {
  String image;
  String title;
  String subtitle;
  String trailing;

  ImageModel(
      {required this.title,
      required this.image,
      required this.subtitle,
      required this.trailing});
}

List<ImageModel> imageList = [
  ImageModel(
      title: 'Toh karo kuch bhi',
      image: 'assets/images/66.jpeg',
      subtitle: 'Save 50% on streaming',
      trailing: 'Read more'),
  ImageModel(
      title: 'Free bill Insurance',
      image: 'assets/images/22.jpeg',
      subtitle: 'Transfer funds & win',
      trailing: 'Read more'),
  ImageModel(
      title: 'AB bill jama karane pe',
      image: 'assets/images/33.jpeg',
      subtitle: 'Save 30% on bills',
      trailing: 'Read more'),
  ImageModel(
      title: 'The mood for food',
      image: 'assets/images/44.jpeg',
      subtitle: 'Save 50% on streaming',
      trailing: 'Read more'),
  ImageModel(
      title: 'Rs. 10,000 ke 30 Inamaat',
      image: 'assets/images/55.jpeg',
      subtitle: 'pay like a pro',
      trailing: 'Read more'),
  ImageModel(
      title: 'Sirf Rs. 1 mein Account Upgrade',
      image: 'assets/images/66.jpeg',
      subtitle: 'Save 50% on streaming',
      trailing: 'Read more'),
];
