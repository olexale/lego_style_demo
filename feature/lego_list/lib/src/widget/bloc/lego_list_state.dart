import 'package:equatable/equatable.dart';
import 'package:lego_list/src/domain/model/lego_set.dart';

class LegoListState extends Equatable {
  const LegoListState({required this.legoSets, required this.grid});

  final List<LegoSet> legoSets;
  final bool grid;

  @override
  List<Object?> get props => [legoSets, grid];
}
