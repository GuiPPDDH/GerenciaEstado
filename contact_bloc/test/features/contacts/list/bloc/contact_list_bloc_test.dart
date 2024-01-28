import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'mock_contacts_repository.dart';

void main() {
  //*Passos de Testes

  //*Declaração
  late ContactsRepository contactsRepository;
  late ContactListBloc contactListBloc;
  late List<ContactModel> contacts;

  //*Preparação
  setUp(() {
    contactsRepository = MockContactsRepository();
    contactListBloc = ContactListBloc(contactsRepository: contactsRepository);
    contacts = [
      ContactModel(
        name: 'Guilherme Potter',
        email: 'guilhermepotter@academiadoflutter.br',
      ),
      ContactModel(
        name: 'Guilherme Petry',
        email: 'guilhermepetry@academiadoflutter.br',
      ),
    ];
  });

  //*Execução
  blocTest<ContactListBloc, ContactListState>(
    'Deve buscar os contatos',
    build: () => contactListBloc,
    act: (bloc) => contactListBloc.add(const ContactListEvent.findAll()),
    setUp: () {
      when(
        () => contactsRepository.findAll(),
      ).thenAnswer(
        (_) async => contacts,
      );
    },
    expect: () => [
      ContactListState.loading(),
      ContactListState.data(contacts: contacts),
    ],
  );

  blocTest<ContactListBloc, ContactListState>(
    'Deve retornar erro  ao buscar os contatos',
    build: () => contactListBloc,
    act: (bloc) => contactListBloc.add(const ContactListEvent.findAll()),
    expect: () => [
      ContactListState.loading(),
      ContactListState.error(error: 'Erro ao buscar contatos'),
    ],
  );
}
