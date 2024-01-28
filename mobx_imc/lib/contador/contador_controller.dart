// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/full_name.dart';

class ContadorController {
  final _counter = Observable<int>(0, name: 'Counter Observable');
  final _fullName = Observable<FullName>(FullName(first: 'first', last: 'last'));

  late Action increment;
  late Computed _saudacaoComputed;

  ContadorController() {
    increment = Action(_incrementCounter);
    _saudacaoComputed = Computed(() => 'Olá ${_fullName.value.first} ${_fullName.value.last}');
  }

  int get counter => _counter.value;
  FullName get fullName => _fullName.value;
  String get saudacao => _saudacaoComputed.value;

  _incrementCounter() {
    _counter.value++;

    print('Antes');
    print(_fullName.value.hashCode);

    //! Não pode fazer isso aqui,
    //! pois o Mobx não interpreta como uma mudança de estado
    //! porque o Hashcode ainda é o mesmo.
    //_fullName.value.first = 'Guilherme';
    //_fullName.value.last = 'Potter Petry';

    //! Opção 1, alterar por meio de prototype (Copywith)
    //! troca isso
    //_fullName.value = FullName(first: 'Guilherme', last: 'Potter Petry');

    //! Por
    _fullName.value = _fullName.value.copyWith(first: 'Guilherme', last: 'Potter Petry');

    print('Depois');
    print(_fullName.value.hashCode);
  }
}