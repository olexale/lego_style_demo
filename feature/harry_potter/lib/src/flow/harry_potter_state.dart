import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harry_potter/src/domain/model/character.dart';

part 'harry_potter_state.freezed.dart';

@freezed
class HarryPotterState with _$HarryPotterState {
  const factory HarryPotterState({Character? selectedCharacter}) =
      _HarryPotterState;
}
