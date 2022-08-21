import 'package:lego_list/lego_list.dart';
import 'package:lego_navigation/src/router.dart';

class LegoListNavigationImpl implements LegoListNavigation {
  @override
  void openUniverse(String id) {
    router.push('/universe/$id');
  }
}
