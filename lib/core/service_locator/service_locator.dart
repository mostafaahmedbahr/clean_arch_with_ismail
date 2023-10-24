import 'package:clean_arch_with_ismail/features/random_qoutes/data/data_repos/quote_data_repo.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/data/data_source/get_all_quotes_local_data_source.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/data/data_source/get_all_quotes_remote_data_source.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/domain/repos/quotes_repos.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/presentation/controller/quotes_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;


class ServiceLocator{


  void setup() {


    getIt.registerFactory(() => QuotesCubit(fetchAllQuotesUseCase: getIt()));

    getIt.registerLazySingleton<BaseQuotesRepos>(
            () => QuoteDataRepoImpl(baseAllQuotesRemoteDataSource: getIt(), baseAllQuotesLocalDataSource: getIt(),));

    getIt.registerLazySingleton<BaseAllQuotesRemoteDataSource>(() => AllQuotesRemoteDataSourceImplementation());


  }
}

