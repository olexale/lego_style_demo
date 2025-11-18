import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lego_list/src/widget/bloc/lego_list_cubit.dart';
import 'package:lego_list/src/widget/bloc/lego_list_state.dart';
import 'package:lego_list/src/widget/localization/app_localizations.dart';

class LegoListPage extends StatelessWidget {
  const LegoListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(AppLocalizations.of(context)!.legoWorlds)),
    body: BlocBuilder<LegoListCubit, LegoListState>(
      builder: (context, state) => state.grid ? const _Grid() : const _List(),
    ),
  );
}

class _List extends StatelessWidget {
  const _List();

  @override
  Widget build(BuildContext context) {
    final legoSets = context.watch<LegoListCubit>().state.legoSets;
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(legoSets[index].name),
          onTap: () =>
              context.read<LegoListCubit>().onLegoSetSelected(legoSets[index]),
        );
      },
      itemCount: legoSets.length,
    );
  }
}

class _Grid extends StatelessWidget {
  const _Grid();

  @override
  Widget build(BuildContext context) {
    final legoSets = context.watch<LegoListCubit>().state.legoSets;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: legoSets.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () =>
              context.read<LegoListCubit>().onLegoSetSelected(legoSets[index]),
          child: Card(
            color: Theme.of(context).colorScheme.secondary,
            child: Center(child: Text(legoSets[index].name)),
          ),
        );
      },
    );
  }
}
