import 'package:clean_arch_with_ismail/core/utiles/app_sources/app_strings.dart';
import 'package:clean_arch_with_ismail/features/splash/domain/entites/lang_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/errors.dart';

abstract class BaseLangLocalDataSource {

  Future<Either<Errors , String>> changeLanguage({required String langCode});
  Future<LangEntity> getSavedLanguage();
}

class LangLocalDataSourceImpl extends BaseLangLocalDataSource {

  final SharedPreferences sharedPreferences;
  LangLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<Either<Errors , String>> changeLanguage({required String langCode}) async{
    await sharedPreferences.setString(AppStrings.locale, langCode);
    throw UnimplementedError();
  }

  @override
  Future<LangEntity> getSavedLanguage() async{
   await sharedPreferences.get(AppStrings.locale);
    throw UnimplementedError();
  }
}
