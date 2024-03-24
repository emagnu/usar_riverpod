import 'package:flutter/widgets.dart';

//  //   ///
//  Import LIBRARIES
//  Import FILES
//  PARTS
//  PROVIDERS
//  //  ///

class Invitado {
  final String id;
  final String nome;
  final DateTime? status;

  Invitado({required this.id, required this.nome, required this.status});

  bool get invitacione {
    return status != null; // true or false
  }

  Invitado copyWith({
    String? id,
    String? nome,
    ValueGetter<DateTime?>? status,
  }) =>
      Invitado(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        status: status != null ? status() : this.status,
      );
}
