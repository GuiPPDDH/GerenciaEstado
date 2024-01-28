import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'mock_contacts_repository_cubit.dart';

void main() {
  //*Passos de Testes

  //*Declaração
  late ContactsRepository contactsRepository;
  late ContactListCubit contactListCubit;
  late List<ContactModel> contacts;

  //*Preparação
  setUp(() {
    contactsRepository = MockContactsRepositoryCubit();
    contactListCubit = ContactListCubit(contactsRepository: contactsRepository);
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
  blocTest<ContactListCubit, ContactListCubitState>(
    'Deve buscar os contatos',
    build: () => contactListCubit,
    act: (cubit) => cubit.findAll(),
    setUp: () {
      when(
        () => contactsRepository.findAll(),
      ).thenAnswer(
        (_) async => contacts,
      );
    },
    expect: () => [
      const ContactListCubitState.loading(),
      ContactListCubitState.data(contacts: contacts),
    ],
  );
}