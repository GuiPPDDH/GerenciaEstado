import 'dart:async';
import 'dart:developer';
import 'package:contact_bloc/models/contact_model.dart.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_register_event.dart';
part 'contact_register_state.dart';
part 'contact_register_bloc.freezed.dart';

class ContactRegisterBloc extends Bloc<ContactRegisterEvent, ContactRegisterState> {
  final ContactsRepository _contactsRepository;

  ContactRegisterBloc({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const ContactRegisterState.initial()) {
    on<_ContactSave>(_save);
  }

  FutureOr<void> _save(_ContactSave event, Emitter<ContactRegisterState> emitter) async {
    try {
      emitter(const ContactRegisterState.loading());
      await Future.delayed(const Duration(seconds: 2));

      final contactModel = ContactModel(
        name: event.name,
        email: event.email,
      );
      await _contactsRepository.create(contactModel);

      emitter(const ContactRegisterState.success());
    } catch (e, s) {
      log('Erro ao salvar um novo contato', error: e, stackTrace: s);
      emitter(const ContactRegisterState.error(errorMessage: 'Erro ao salvar um novo contato'));
    }
  }
}
