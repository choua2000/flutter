class UnboardingContent {
  String images;
  String title;
  String description;
  UnboardingContent(
      {required this.images, required this.title, required this.description});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      images: 'images/screen1.png',
      title: 'Welcome to',
      description: 'Select from our wide variety of products'),
      UnboardingContent(
      images: 'images/screen2.png',
      title: 'Discover',
      description: 'Find the perfect solution for your home'),
      UnboardingContent(
      images: 'images/screen3.png',
      title: 'Start Shopping',
      description: 'Get your groceries in as little as 5 minutes'),
];
