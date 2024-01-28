import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_register_cubit_state.dart';
part 'contact_register_cubit.freezed.dart';

class ContactRegisterCubit extends Cubit<ContactRegisterCubitState> {
  final ContactsRepository _contactsRepository;

  ContactRegisterCubit({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(
          const ContactRegisterCubitState.initial(),
        );

  Future<void> saveContact({
    required String name,
    required String email,
  }) async {
    try {
      emit(const ContactRegisterCubitState.loading());
      Future.delayed(const Duration(seconds: 1));

      final contact = ContactModel(name: name, email: email);
      await _contactsRepository.create(contact);

      emit(const ContactRegisterCubitState.success());
    } catch (e, s) {
      log('Erro ao criar contato', error: e, stackTrace: s);
      emit(const ContactRegisterCubitState.error(errorMessage: 'Erro ao criar contato'));
    }
  }
}
