import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harry_potter/src/domain/model/character.dart';

part 'hp_state.freezed.dart';

@freezed
class HPState with _$HPState {
  const factory HPState({@Default(<Character>[]) List<Character> characters}) =
      _HPState;
}
