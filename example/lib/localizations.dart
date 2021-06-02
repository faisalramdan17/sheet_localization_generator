import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sheet_localization/flutter_sheet_localization.dart';

part 'localizations.g.dart';

extension PluralExtension on int {
  Plural plural() {
    if (this == 0) return Plural.zero;
    if (this == 1) return Plural.one;
    return Plural.multiple;
  }
}

extension AppLocalizationsExtensions on BuildContext {
  AppLocalizationsData get localizations {
    return Localizations.of<AppLocalizationsData>(this, AppLocalizationsData)!;
  }
}

@SheetLocalization('11ostd6A0pFe8VnScOSutj33GJGNgUhemm6fp_RN2leo', '0', 1)
class AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizationsData> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => localizedLabels.containsKey(locale);

  @override
  Future<AppLocalizationsData> load(Locale locale) =>
      SynchronousFuture<AppLocalizationsData>(localizedLabels[locale]!);
  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
