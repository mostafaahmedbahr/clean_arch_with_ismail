import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'quotes_state.dart';

class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit() : super(QuotesInitial());

  static QuotesCubit get(context)=> BlocProvider.of(context);


}
