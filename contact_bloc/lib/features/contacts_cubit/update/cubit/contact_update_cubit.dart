import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_update_cubit_state.dart';
part 'contact_update_cubit.freezed.dart';

class ContactUpdateCubit extends Cubit<ContactUpdateCubitState> {
  final ContactsRepository _contactsRepository;

  ContactUpdateCubit({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(
          const ContactUpdateCubitState.initial(),
        );

  Future<void> updateContact({
    required String id,
    required String name,
    required String email,
  }) async {
    try {
      emit(const ContactUpdateCubitState.loading());

      final contact = ContactModel(
        id: id,
        name: name,
        email: email,
      );
      await _contactsRepository.update(contact);

      emit(const ContactUpdateCubitState.success());
    } catch (e, s) {
      log('Erro ao atualizar o contato', error: e, stackTrace: s);
      emit(const ContactUpdateCubitState.error(errorMessage: 'Erro ao atualizar o contato'));
    }
  }
}
