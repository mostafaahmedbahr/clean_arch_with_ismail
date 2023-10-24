import 'package:clean_arch_with_ismail/features/random_qoutes/presentation/widgets/quote_content_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'floating_action_button_widget.dart';

class QuotesViewBodyWidget extends StatelessWidget {
  const QuotesViewBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(20.0),
      child:   Column(
        children: [
          QuoteContentWidget(),
          SizedBox(height: 40,),
          FloatingActionButtonWidget(),
        ],
      ),
    );
  }
}
