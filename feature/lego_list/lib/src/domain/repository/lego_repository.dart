import 'package:lego_list/src/domain/model/lego_set.dart';

class LegoRepository {
  List<LegoSet> getLegoSets() {
    return const [
      LegoSet('star_wars', 'Lego Star Wars'),
      LegoSet('marvel', 'Lego Marvel'),
      LegoSet('hp', 'Lego Harry Potter'),
      LegoSet('dc', 'Lego DC'),
    ];
  }
}
