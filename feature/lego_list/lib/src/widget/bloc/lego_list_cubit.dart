import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lego_list/lego_list.dart';
import 'package:lego_list/src/domain/model/lego_set.dart';
import 'package:lego_list/src/domain/repository/lego_repository.dart';
import 'package:lego_list/src/widget/bloc/lego_list_state.dart';

class LegoListCubit extends Cubit<LegoListState> {
  LegoListCubit(
    LegoRepository repository,
    LegoListConfigurator configurator,
    this._navigation,
  ) : super(
        LegoListState(
          legoSets: repository.getLegoSets(),
          grid: configurator.gridRepresentation,
        ),
      );

  final LegoListNavigation _navigation;

  void onLegoSetSelected(LegoSet legoSet) {
    _navigation.openUniverse(legoSet.id);
  }
}
