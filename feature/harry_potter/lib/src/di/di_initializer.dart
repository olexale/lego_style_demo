import 'package:get_it/get_it.dart';
import 'package:harry_potter/src/di/di_initializer.config.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
void initialize() {
  GetIt.I.pushNewScope();
  GetItInjectableX(GetIt.I).init();
}

void deinitialize() {
  GetIt.I.popScope();
}
