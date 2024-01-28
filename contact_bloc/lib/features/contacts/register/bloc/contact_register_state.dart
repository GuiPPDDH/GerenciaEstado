part of 'contact_register_bloc.dart';

@freezed
class ContactRegisterState with _$ContactRegisterState {
  const factory ContactRegisterState.initial() = _ContactRegisterStateInitial;
  //const factory ContactRegisterState.data() = _ContactRegisterStateData;
  const factory ContactRegisterState.loading() = _ContactRegisterStateLoading;
  const factory ContactRegisterState.success() = _ContactRegisterStateSuccess;
  const factory ContactRegisterState.error({required String errorMessage}) = _ContactRegisterStateError;

}
