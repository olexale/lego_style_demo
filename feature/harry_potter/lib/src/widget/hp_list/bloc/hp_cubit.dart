import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/src/domain/repository/hp_repository.dart';
import 'package:harry_potter/src/widget/hp_list/bloc/hp_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class HPCubit extends Cubit<HPState> {
  HPCubit(HPRepository repository)
    : super(HPState(characters: repository.getCharacters()));
}
