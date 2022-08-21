import 'package:equatable/equatable.dart';

class LegoSet extends Equatable {
  const LegoSet(this.id, this.name);

  final String id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
