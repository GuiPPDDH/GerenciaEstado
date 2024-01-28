import 'package:contact_bloc/models/contact_model.dart.dart';
import 'package:dio/dio.dart';

class ContactsRepository {
  Future<List<ContactModel>> findAll() async {
    final response = await Dio().get('http://10.0.2.2:3031/contacts');
    return response.data?.map<ContactModel>((contact) => ContactModel.fromMap(contact)).toList();
  }

  Future<void> create(ContactModel contactModel) async {
    Dio().post('http://10.0.2.2:3031/contacts', data: contactModel.toMap());
  }

  Future<void> update(ContactModel contactModel) async {
    Dio().put('http://10.0.2.2:3031/contacts/${contactModel.id}', data: contactModel.toMap());
  }

  Future<void> delete(ContactModel contactModel) async {
    Dio().delete('http://10.0.2.2:3031/contacts/${contactModel.id}');
  }
}
