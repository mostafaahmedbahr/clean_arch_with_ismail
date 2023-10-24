import 'package:clean_arch_with_ismail/features/random_qoutes/data/data_repos/quote_data_repo.dart';
 import 'package:clean_arch_with_ismail/features/random_qoutes/data/data_source/get_all_quotes_remote_data_source.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/domain/repos/quotes_repos.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/presentation/controller/quotes_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/random_qoutes/data/data_source/get_all_quotes_local_data_source.dart';
import '../../features/random_qoutes/domain/use_cases/fetch_all_quotes_use_case.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void setup() {

    // bloc
    getIt.registerFactory(() => QuotesCubit(fetchAllQuotesUseCase: getIt()));




    // use_case
    getIt.registerLazySingleton(() => FetchAllQuotesUseCase(quotesRepos: getIt(),));

    // repos
    getIt.registerLazySingleton<BaseQuotesRepos>(() => QuoteDataRepoImpl(
          baseAllQuotesRemoteDataSource: getIt(),
          baseAllQuotesLocalDataSource: getIt(),
        ));

    // data source
    getIt.registerLazySingleton<BaseAllQuotesRemoteDataSource>(
        () => AllQuotesRemoteDataSourceImplementation());

    getIt.registerLazySingleton<BaseAllQuotesLocalDataSource>(
            () => AllQuotesLocalDataSourceImplementation());
  }
}
