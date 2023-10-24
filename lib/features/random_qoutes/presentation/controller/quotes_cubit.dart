import 'package:clean_arch_with_ismail/features/random_qoutes/domain/entities/quote_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../domain/use_cases/fetch_all_quotes_use_case.dart';
part 'quotes_state.dart';

class QuotesCubit extends Cubit<QuotesState> {

  final FetchAllQuotesUseCase fetchAllQuotesUseCase;

  QuotesCubit({ required this.fetchAllQuotesUseCase }) : super(QuotesInitial());

  static QuotesCubit get(context)=> BlocProvider.of(context);


  Future<void>getQuotesData()async
  {
    emit(GetQuotesLoadingStats());
    var result = await fetchAllQuotesUseCase.call();
    result.fold((l){
      print(l.toString());
      print("error");
      emit(GetQuotesErrorStats(error: l.toString() ));
    }, (r){
      print(r);
      print("success");
      emit(GetQuotesSuccessStats(quoteEntity: r));
    });


  }

}
