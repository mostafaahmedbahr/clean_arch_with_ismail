import 'package:clean_arch_with_ismail/core/service_locator/service_locator.dart';
import 'package:clean_arch_with_ismail/core/utiles/app_sources/app_colors.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/presentation/widgets/quote_content_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

import '../controller/quotes_cubit.dart';
import 'floating_action_button_widget.dart';

class QuotesViewBodyWidget extends StatefulWidget {
  const QuotesViewBodyWidget({Key? key}) : super(key: key);

  @override
  State<QuotesViewBodyWidget> createState() => _QuotesViewBodyWidgetState();
}

class _QuotesViewBodyWidgetState extends State<QuotesViewBodyWidget> {
  @override
  void initState() {
    BlocProvider.of<QuotesCubit>(context).getQuotesData();
    //QuotesCubit.get(context).getQuotesData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuotesCubit, QuotesState>(
      builder: (context, state) {
        if (state is GetQuotesLoadingStats) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          );
        }
        else if (state is GetQuotesSuccessStats) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                QuoteContentWidget(
                  autherName: state.quoteEntity.autherName,
                  content: state.quoteEntity.content,
                ),
                const SizedBox(height: 40,),
                const FloatingActionButtonWidget(),
              ],
            ),
          );
        }
        else {
          return const Text("error");
        }
      },
    );
  }
}
