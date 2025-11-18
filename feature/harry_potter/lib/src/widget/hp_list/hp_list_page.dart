import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:harry_potter/src/flow/harry_potter_state.dart';
import 'package:harry_potter/src/widget/hp_list/bloc/hp_cubit.dart';
import 'package:harry_potter/src/widget/hp_list/bloc/hp_state.dart';
import 'package:harry_potter/src/widget/hp_list/localization/hp_localizations.dart';

class HpListPage extends StatelessWidget {
  const HpListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: BackButton(
        onPressed: () => context.flow<HarryPotterState>().complete(),
      ),
      title: Text(HpLocalizations.of(context).chooseCharacter),
    ),
    body: BlocProvider<HPCubit>(
      create: (_) => GetIt.I.get<HPCubit>(),
      child: BlocBuilder<HPCubit, HPState>(
        builder: (context, state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.characters[index].name),
                onTap: () => context.flow<HarryPotterState>().update(
                  (s) => s.copyWith(selectedCharacter: state.characters[index]),
                ),
              );
            },
            itemCount: state.characters.length,
          );
        },
      ),
    ),
  );
}
