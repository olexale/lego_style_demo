// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'harry_potter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

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
    HarryPotterState value,
    $Res Function(HarryPotterState) then,
  ) = _$HarryPotterStateCopyWithImpl<$Res, HarryPotterState>;
  @useResult
  $Res call({Character? selectedCharacter});

  $CharacterCopyWith<$Res>? get selectedCharacter;
}

/// @nodoc
class _$HarryPotterStateCopyWithImpl<$Res, $Val extends HarryPotterState>
    implements $HarryPotterStateCopyWith<$Res> {
  _$HarryPotterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedCharacter = freezed}) {
    return _then(
      _value.copyWith(
            selectedCharacter: freezed == selectedCharacter
                ? _value.selectedCharacter
                : selectedCharacter // ignore: cast_nullable_to_non_nullable
                      as Character?,
          )
          as $Val,
    );
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get selectedCharacter {
    if (_value.selectedCharacter == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.selectedCharacter!, (value) {
      return _then(_value.copyWith(selectedCharacter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HarryPotterStateImplCopyWith<$Res>
    implements $HarryPotterStateCopyWith<$Res> {
  factory _$$HarryPotterStateImplCopyWith(
    _$HarryPotterStateImpl value,
    $Res Function(_$HarryPotterStateImpl) then,
  ) = __$$HarryPotterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Character? selectedCharacter});

  @override
  $CharacterCopyWith<$Res>? get selectedCharacter;
}

/// @nodoc
class __$$HarryPotterStateImplCopyWithImpl<$Res>
    extends _$HarryPotterStateCopyWithImpl<$Res, _$HarryPotterStateImpl>
    implements _$$HarryPotterStateImplCopyWith<$Res> {
  __$$HarryPotterStateImplCopyWithImpl(
    _$HarryPotterStateImpl _value,
    $Res Function(_$HarryPotterStateImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedCharacter = freezed}) {
    return _then(
      _$HarryPotterStateImpl(
        selectedCharacter: freezed == selectedCharacter
            ? _value.selectedCharacter
            : selectedCharacter // ignore: cast_nullable_to_non_nullable
                  as Character?,
      ),
    );
  }
}

/// @nodoc

class _$HarryPotterStateImpl implements _HarryPotterState {
  const _$HarryPotterStateImpl({this.selectedCharacter});

  @override
  final Character? selectedCharacter;

  @override
  String toString() {
    return 'HarryPotterState(selectedCharacter: $selectedCharacter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HarryPotterStateImpl &&
            (identical(other.selectedCharacter, selectedCharacter) ||
                other.selectedCharacter == selectedCharacter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCharacter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HarryPotterStateImplCopyWith<_$HarryPotterStateImpl> get copyWith =>
      __$$HarryPotterStateImplCopyWithImpl<_$HarryPotterStateImpl>(
        this,
        _$identity,
      );
}

abstract class _HarryPotterState implements HarryPotterState {
  const factory _HarryPotterState({final Character? selectedCharacter}) =
      _$HarryPotterStateImpl;

  @override
  Character? get selectedCharacter;
  @override
  @JsonKey(ignore: true)
  _$$HarryPotterStateImplCopyWith<_$HarryPotterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
