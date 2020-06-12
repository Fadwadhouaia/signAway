var pageList = [
  PageModel(
      image: "assets/images/1.png",
      title: "Exemple\n exemple!",
      text: "Exemple."),

  PageModel(
      image: "assets/images/2.png",
      title: "Economisez!",
      text: "exemple."),
  PageModel(
      image: "assets/images/3.png",
      title: "Restez chez vous",
      text: "exemples."),
];

class PageModel {
  var image;
  var title;
  var text;

  PageModel({this.image, this.title, this.text});
}
