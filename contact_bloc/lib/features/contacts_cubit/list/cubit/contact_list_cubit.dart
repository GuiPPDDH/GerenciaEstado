import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_cubit_state.dart';
part 'contact_list_cubit.freezed.dart';

class ContactListCubit extends Cubit<ContactListCubitState> {
  final ContactsRepository _contactsRepository;

  ContactListCubit({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(
          const ContactListCubitState.initial(),
        );

  Future<void> findAll() async {
    try {
      emit(const ContactListCubitState.loading());
      final contacts = await _contactsRepository.findAll();
      Future.delayed(const Duration(seconds: 2));
      emit(ContactListCubitState.data(contacts: contacts));
    } catch (e, s) {
      log('Erro ao buscar contatos', error: e, stackTrace: s);
      emit(const ContactListCubitState.error(errorMessage: 'Erro ao buscar contatos'));
    }
  }

  Future<void> deleteByModel(ContactModel contactModel) async {
    emit(const ContactListCubitState.loading());
    await _contactsRepository.delete(contactModel);
    findAll();
  }
}
