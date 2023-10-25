import 'package:clean_arch_with_ismail/core/utiles/app_sources/app_strings.dart';
 import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/errors.dart';

abstract class BaseLangLocalDataSource {

  Future< bool> changeLanguage({required String langCode});
  Future<String> getSavedLanguage();
}

class LangLocalDataSourceImpl extends BaseLangLocalDataSource {

  final SharedPreferences sharedPreferences;
  LangLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<  bool> changeLanguage({required String langCode}) async{
  return  await sharedPreferences.setString(AppStrings.locale, langCode);

  }

  @override
  Future<String> getSavedLanguage() async{
     sharedPreferences.get(AppStrings.locale);
    throw UnimplementedError();
  }
}
