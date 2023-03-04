import 'package:desktop_app/constants/images.dart';

class Recommendation {
  var name, image, source, text;

  Recommendation({this.image, this.text, this.name, this.source});
}

List<Recommendation> demoRecommendationList = [
  Recommendation(
    name: "Simeon Cox",
    image: profile,
    source: "Skyscrapers",
    text:
        "Lorem ipsum dolor sit amet, facilis admodum officiis est te, enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, sanctus corpora sea at.",
  ),
  Recommendation(
    name: "Jake Hooper",
    image: profile,
    source: "Offices",
    text:
        "Enim antiopam similique ut vis. Veri repudiare per cu. ad doming malorum facilis mel, sanctus corpora sea at. Ut ponderum delicata necessitatibus pro, ea vim denique complectitur. Eligendi molestiae in quo, id equidem expetenda mel, audire aeterno ne vel. Affert explicari per ut. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
  Recommendation(
    name: "Eden Welch",
    image: profile,
    source: "Green House",
    text:
        "Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, sanctus corpora sea at. Ut ponderum delicata necessitatibus pro, affert explicari per ut. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
  Recommendation(
    name: "Alexandra Rush",
    image: profile,
    source: "Modern House",
    text:
        "Vix ad erant choro. Eligendi molestiae in quo, id equidem expetenda mel, audire aeterno ne vel. Affert explicari per ut. In omnium aliquam complectitur sea, eam illud legendos voluptaria.",
  ),
];
