import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:harry_potter/src/di/di_initializer.dart';
import 'package:harry_potter/src/flow/harry_potter_state.dart';
import 'package:harry_potter/src/widget/hp_details/hp_details_page.dart';
import 'package:harry_potter/src/widget/hp_list/hp_list_page.dart';
import 'package:harry_potter/src/widget/hp_list/localization/hp_localizations.dart';

class HarryPotterFlow extends StatefulWidget {
  const HarryPotterFlow({super.key});

  @override
  State<HarryPotterFlow> createState() => _HarryPotterFlowState();
}

class _HarryPotterFlowState extends State<HarryPotterFlow> {
  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  void dispose() {
    deinitialize();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Localizations.override(
    context: context,
    delegates: const [HpLocalizations.delegate],
    child: FlowBuilder<HarryPotterState>(
      state: const HarryPotterState(),
      onGeneratePages: (state, pages) {
        return [
          const MaterialPage(child: HpListPage()),
          if (state.selectedCharacter != null)
            MaterialPage(
              child: HpDetailsPage(character: state.selectedCharacter!),
            ),
        ];
      },
    ),
  );
}
