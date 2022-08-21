import 'package:lego_list/lego_list.dart';

class LegoListConfiguratorImpl implements LegoListConfigurator {
  @override
  bool get gridRepresentation =>
      const String.fromEnvironment('GRID_UI', defaultValue: 'false') == 'true';
}
