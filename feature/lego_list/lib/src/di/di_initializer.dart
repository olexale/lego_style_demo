import 'package:get_it/get_it.dart';
import 'package:lego_list/src/domain/repository/lego_repository.dart';
import 'package:lego_list/src/widget/bloc/lego_list_cubit.dart';

const _initializedMark = 'lego_list_initialized';

void initialize() {
  final isInitialized = GetIt.I.isRegistered<bool>(
    instanceName: _initializedMark,
  );
  if (!isInitialized) {
    GetIt.I.registerSingleton<bool>(true, instanceName: _initializedMark);
    GetIt.I.registerFactory(() => LegoRepository());
    GetIt.I.registerFactory(
      () => LegoListCubit(GetIt.I(), GetIt.I(), GetIt.I()),
    );
  }
}
