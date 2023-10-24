part of 'quotes_cubit.dart';

@immutable
abstract class QuotesState {}

class QuotesInitial extends QuotesState {}

class GetQuotesLoadingStats extends QuotesState {}
class GetQuotesSuccessStats extends QuotesState {
  final QuoteEntity quoteEntity;
  GetQuotesSuccessStats({required this.quoteEntity});
}
class GetQuotesErrorStats extends QuotesState {
  final String error;
  GetQuotesErrorStats({required this.error});
}
