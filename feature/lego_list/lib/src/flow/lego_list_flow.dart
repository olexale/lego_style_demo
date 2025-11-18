import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lego_list/src/di/di_initializer.dart';
import 'package:lego_list/src/widget/bloc/lego_list_cubit.dart';
import 'package:lego_list/src/widget/lego_list_page.dart';
import 'package:lego_list/src/widget/localization/app_localizations.dart';

class LegoListFlow extends StatefulWidget {
  const LegoListFlow({super.key});

  @override
  State<LegoListFlow> createState() => _LegoListFlowState();
}

class _LegoListFlowState extends State<LegoListFlow> {
  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  Widget build(BuildContext context) => Localizations.override(
    context: context,
    delegates: AppLocalizations.localizationsDelegates,
    child: BlocProvider(
      create: (_) => GetIt.I.get<LegoListCubit>(),
      child: const LegoListPage(),
    ),
  );
}
