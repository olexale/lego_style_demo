// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:harry_potter/src/domain/repository/hp_repository.dart' as _i989;
import 'package:harry_potter/src/widget/hp_list/bloc/hp_cubit.dart' as _i549;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i989.HPRepository>(() => _i989.HPRepository());
    gh.factory<_i549.HPCubit>(() => _i549.HPCubit(gh<_i989.HPRepository>()));
    return this;
  }
}
