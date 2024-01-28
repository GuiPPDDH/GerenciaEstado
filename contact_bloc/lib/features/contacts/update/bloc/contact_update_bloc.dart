import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_update_event.dart';
part 'contact_update_state.dart';
part 'contact_update_bloc.freezed.dart';

class ContactUpdateBloc extends Bloc<ContactUpdateEvent, ContactUpdateState> {
  final ContactsRepository _contactsRepository;

  ContactUpdateBloc({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const _Initial()) {
    on<_Save>(_save);
  }

  FutureOr<void> _save(_Save event, Emitter<ContactUpdateState> emitter) async {
    try {
      emitter(const ContactUpdateState.loading());

      final contact = ContactModel(
        id: event.id,
        name: event.name,
        email: event.email,
      );
      await _contactsRepository.update(contact);
      emitter(const ContactUpdateState.success());
    } catch (e, s) {
      log('Erro ao atualizar o contato', error: e, stackTrace: s);
      emitter(const ContactUpdateState.error(errorMessage: 'Erro ao atualizar o contato'));
    }
  }
}
