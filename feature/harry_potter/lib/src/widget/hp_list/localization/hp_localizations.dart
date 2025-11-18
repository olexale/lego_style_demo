import 'package:flutter/material.dart';
import 'package:harry_potter/src/widget/hp_list/localization/translations/hp.i69n.dart';

final _translations = <String, Hp Function()>{'en': () => const Hp()};

class HpLocalizations {
  const HpLocalizations(this.translations);

  final Hp translations;

  static const LocalizationsDelegate<HpLocalizations> delegate =
      _HpLocalizationsDelegate();

  static final List<Locale> supportedLocales = _translations.keys
      .map((x) => Locale(x))
      .toList();

  static Future<HpLocalizations> load(Locale locale) =>
      Future.value(HpLocalizations(_translations[locale.languageCode]!()));

  static Hp of(BuildContext context) =>
      Localizations.of<HpLocalizations>(context, HpLocalizations)!.translations;
}

class _HpLocalizationsDelegate extends LocalizationsDelegate<HpLocalizations> {
  const _HpLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _translations.keys.contains(locale.languageCode);

  @override
  Future<HpLocalizations> load(Locale locale) => HpLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<HpLocalizations> old) => false;
}
