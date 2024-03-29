// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpViewModelTearOff {
  const _$SignUpViewModelTearOff();

  _SignUpViewModel call(
      {required String email,
      required String password,
      required String confirmPassword}) {
    return _SignUpViewModel(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
  }
}

/// @nodoc
const $SignUpViewModel = _$SignUpViewModelTearOff();

/// @nodoc
mixin _$SignUpViewModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpViewModelCopyWith<SignUpViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpViewModelCopyWith<$Res> {
  factory $SignUpViewModelCopyWith(
          SignUpViewModel value, $Res Function(SignUpViewModel) then) =
      _$SignUpViewModelCopyWithImpl<$Res>;
  $Res call({String email, String password, String confirmPassword});
}

/// @nodoc
class _$SignUpViewModelCopyWithImpl<$Res>
    implements $SignUpViewModelCopyWith<$Res> {
  _$SignUpViewModelCopyWithImpl(this._value, this._then);

  final SignUpViewModel _value;
  // ignore: unused_field
  final $Res Function(SignUpViewModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignUpViewModelCopyWith<$Res>
    implements $SignUpViewModelCopyWith<$Res> {
  factory _$SignUpViewModelCopyWith(
          _SignUpViewModel value, $Res Function(_SignUpViewModel) then) =
      __$SignUpViewModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String confirmPassword});
}

/// @nodoc
class __$SignUpViewModelCopyWithImpl<$Res>
    extends _$SignUpViewModelCopyWithImpl<$Res>
    implements _$SignUpViewModelCopyWith<$Res> {
  __$SignUpViewModelCopyWithImpl(
      _SignUpViewModel _value, $Res Function(_SignUpViewModel) _then)
      : super(_value, (v) => _then(v as _SignUpViewModel));

  @override
  _SignUpViewModel get _value => super._value as _SignUpViewModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_SignUpViewModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpViewModel extends _SignUpViewModel {
  const _$_SignUpViewModel(
      {required this.email,
      required this.password,
      required this.confirmPassword})
      : super._();

  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpViewModel(email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpViewModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword);

  @JsonKey(ignore: true)
  @override
  _$SignUpViewModelCopyWith<_SignUpViewModel> get copyWith =>
      __$SignUpViewModelCopyWithImpl<_SignUpViewModel>(this, _$identity);
}

abstract class _SignUpViewModel extends SignUpViewModel {
  const factory _SignUpViewModel(
      {required String email,
      required String password,
      required String confirmPassword}) = _$_SignUpViewModel;
  const _SignUpViewModel._() : super._();

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get confirmPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpViewModelCopyWith<_SignUpViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
