// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'harry_potter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HarryPotterState {
  Character? get selectedCharacter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HarryPotterStateCopyWith<HarryPotterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HarryPotterStateCopyWith<$Res> {
  factory $HarryPotterStateCopyWith(
          HarryPotterState value, $Res Function(HarryPotterState) then) =
      _$HarryPotterStateCopyWithImpl<$Res>;
  $Res call({Character? selectedCharacter});

  $CharacterCopyWith<$Res>? get selectedCharacter;
}

/// @nodoc
class _$HarryPotterStateCopyWithImpl<$Res>
    implements $HarryPotterStateCopyWith<$Res> {
  _$HarryPotterStateCopyWithImpl(this._value, this._then);

  final HarryPotterState _value;
  // ignore: unused_field
  final $Res Function(HarryPotterState) _then;

  @override
  $Res call({
    Object? selectedCharacter = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCharacter: selectedCharacter == freezed
          ? _value.selectedCharacter
          : selectedCharacter // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }

  @override
  $CharacterCopyWith<$Res>? get selectedCharacter {
    if (_value.selectedCharacter == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.selectedCharacter!, (value) {
      return _then(_value.copyWith(selectedCharacter: value));
    });
  }
}

/// @nodoc
abstract class _$$_HarryPotterStateCopyWith<$Res>
    implements $HarryPotterStateCopyWith<$Res> {
  factory _$$_HarryPotterStateCopyWith(
          _$_HarryPotterState value, $Res Function(_$_HarryPotterState) then) =
      __$$_HarryPotterStateCopyWithImpl<$Res>;
  @override
  $Res call({Character? selectedCharacter});

  @override
  $CharacterCopyWith<$Res>? get selectedCharacter;
}

/// @nodoc
class __$$_HarryPotterStateCopyWithImpl<$Res>
    extends _$HarryPotterStateCopyWithImpl<$Res>
    implements _$$_HarryPotterStateCopyWith<$Res> {
  __$$_HarryPotterStateCopyWithImpl(
      _$_HarryPotterState _value, $Res Function(_$_HarryPotterState) _then)
      : super(_value, (v) => _then(v as _$_HarryPotterState));

  @override
  _$_HarryPotterState get _value => super._value as _$_HarryPotterState;

  @override
  $Res call({
    Object? selectedCharacter = freezed,
  }) {
    return _then(_$_HarryPotterState(
      selectedCharacter: selectedCharacter == freezed
          ? _value.selectedCharacter
          : selectedCharacter // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }
}

/// @nodoc

class _$_HarryPotterState implements _HarryPotterState {
  const _$_HarryPotterState({this.selectedCharacter});

  @override
  final Character? selectedCharacter;

  @override
  String toString() {
    return 'HarryPotterState(selectedCharacter: $selectedCharacter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HarryPotterState &&
            const DeepCollectionEquality()
                .equals(other.selectedCharacter, selectedCharacter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedCharacter));

  @JsonKey(ignore: true)
  @override
  _$$_HarryPotterStateCopyWith<_$_HarryPotterState> get copyWith =>
      __$$_HarryPotterStateCopyWithImpl<_$_HarryPotterState>(this, _$identity);
}

abstract class _HarryPotterState implements HarryPotterState {
  const factory _HarryPotterState({final Character? selectedCharacter}) =
      _$_HarryPotterState;

  @override
  Character? get selectedCharacter;
  @override
  @JsonKey(ignore: true)
  _$$_HarryPotterStateCopyWith<_$_HarryPotterState> get copyWith =>
      throw _privateConstructorUsedError;
}
