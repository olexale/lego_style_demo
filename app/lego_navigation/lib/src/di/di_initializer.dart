import 'package:get_it/get_it.dart';
import 'package:lego_list/lego_list.dart';
import 'package:lego_navigation/src/feature/lego_list.dart';

void initialize() {
  GetIt.I.registerFactory<LegoListNavigation>(() => LegoListNavigationImpl());
}
