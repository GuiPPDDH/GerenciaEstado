import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_event.dart';
part 'contact_list_state.dart';
part 'contact_list_bloc.freezed.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final ContactsRepository _contactsRepository;

  ContactListBloc({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(ContactListState.initial()) {
    on<_ContactListEventFindAll>(_findAll);
    on<_ContactListEventDelete>(_delete);
  }

  Future<void> _findAll(
    _ContactListEventFindAll event,
    Emitter<ContactListState> emitter,
  ) async {
    try {
      emitter(ContactListState.loading());
      final contacts = await _contactsRepository.findAll();
      //await Future.delayed(const Duration(seconds: 2));
      //throw Exception();
      emitter(ContactListState.data(contacts: contacts));
    } catch (e, s) {
      log('Erro ao buscar contatos', error: e, stackTrace: s);
      emitter(ContactListState.error(error: 'Erro ao buscar contatos'));
    }
  }

  FutureOr<void> _delete(_ContactListEventDelete event, Emitter<ContactListState> emitter) async {
    try {
      emitter(ContactListState.loading());

      await _contactsRepository.delete(event.contactModel);
      add(const ContactListEvent.findAll());

      await Future.delayed(const Duration(seconds: 1));
    } catch (e, s) {
      log('Erro ao excluir o contato selecionado', error: e, stackTrace: s);
      emitter(ContactListState.error(error: 'Erro ao excluir o contato selecionado'));
    }
  }
}
