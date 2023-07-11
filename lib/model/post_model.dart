class Post {
  String name;
  String timeago;
  String likes; 
  String profile;
  String postimg;
  Post(
      {required this.name,
      required this.timeago,
      required this.likes,
      required this.profile,
      required this.postimg});
}

List<Post> postlist = [
  Post(
      name: "Kuvaan16",
      profile: "assets/kk.jpg",
      postimg: "assets/post.jpg",
      likes: "116",
      timeago: "30min"),
  Post(
      name: "Sarah",
      profile: "assets/p1.jpg",
      postimg: "assets/post3.jpg",
      likes: "109",
      timeago: "30min"),
  Post(
      name: "David",
      profile: "assets/p9.jpg",
      postimg: "assets/post1.jpg",
      likes: "16",
      timeago: "30min"),
  Post(
      name: "Susan",
      profile: "assets/p11.jpg",
      postimg: "assets/post2.jpg",
      likes: "100",
      timeago: "1h"),
  Post(
      name: "Mary",
      profile: "assets/p6.jpg",
      postimg: "assets/post4.jpg",
      likes: "4",
      timeago: "1min"),
  Post(
      name: "Karen",
      profile: "assets/p12.jpg",
      postimg: "assets/post5.jpg",
      likes: "105",
      timeago: "2h"),
  Post(
      name: "James",
      profile: "assets/p2.jpg",
      postimg: "assets/post6.jpg",
      likes: "160",
      timeago: "35min"),
  Post(
      name: "Elizabeth",
      profile: "assets/p10.jpg",
      postimg: "assets/post7.jpg",
      likes: "67",
      timeago: "6h"),
  Post(
      name: "Robert",
      profile: "assets/p3.jpg",
      postimg: "assets/post8.jpg",
      likes: "40",
      timeago: "15min"),
  Post(
      name: "John",
      profile: "assets/p4.jpg",
      postimg: "assets/post9.jpg",
      likes: "105",
      timeago: "2h"),
  Post(
      name: "Jennifer",
      profile: "assets/p8.jpg",
      postimg: "assets/post10.jpg",
      likes: "67",
      timeago: "6h"),
  Post(
      name: "Patricia",
      profile: "assets/p7.jpg",
      postimg: "assets/post11.jpg",
      likes: "40",
      timeago: "15min"),
  Post(
      name: "Michael",
      profile: "assets/p5.jpg",
      postimg: "assets/post12.jpg",
      likes: "105",
      timeago: "2h"),
];
