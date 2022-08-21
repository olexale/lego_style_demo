// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HPState {
  List<Character> get characters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HPStateCopyWith<HPState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HPStateCopyWith<$Res> {
  factory $HPStateCopyWith(HPState value, $Res Function(HPState) then) =
      _$HPStateCopyWithImpl<$Res>;
  $Res call({List<Character> characters});
}

/// @nodoc
class _$HPStateCopyWithImpl<$Res> implements $HPStateCopyWith<$Res> {
  _$HPStateCopyWithImpl(this._value, this._then);

  final HPState _value;
  // ignore: unused_field
  final $Res Function(HPState) _then;

  @override
  $Res call({
    Object? characters = freezed,
  }) {
    return _then(_value.copyWith(
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc
abstract class _$$_HPStateCopyWith<$Res> implements $HPStateCopyWith<$Res> {
  factory _$$_HPStateCopyWith(
          _$_HPState value, $Res Function(_$_HPState) then) =
      __$$_HPStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$_HPStateCopyWithImpl<$Res> extends _$HPStateCopyWithImpl<$Res>
    implements _$$_HPStateCopyWith<$Res> {
  __$$_HPStateCopyWithImpl(_$_HPState _value, $Res Function(_$_HPState) _then)
      : super(_value, (v) => _then(v as _$_HPState));

  @override
  _$_HPState get _value => super._value as _$_HPState;

  @override
  $Res call({
    Object? characters = freezed,
  }) {
    return _then(_$_HPState(
      characters: characters == freezed
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$_HPState implements _HPState {
  const _$_HPState({final List<Character> characters = const <Character>[]})
      : _characters = characters;

  final List<Character> _characters;
  @override
  @JsonKey()
  List<Character> get characters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'HPState(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HPState &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  _$$_HPStateCopyWith<_$_HPState> get copyWith =>
      __$$_HPStateCopyWithImpl<_$_HPState>(this, _$identity);
}

abstract class _HPState implements HPState {
  const factory _HPState({final List<Character> characters}) = _$_HPState;

  @override
  List<Character> get characters;
  @override
  @JsonKey(ignore: true)
  _$$_HPStateCopyWith<_$_HPState> get copyWith =>
      throw _privateConstructorUsedError;
}
