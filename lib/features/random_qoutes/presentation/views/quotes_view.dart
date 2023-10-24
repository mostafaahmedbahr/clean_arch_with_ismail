import 'package:clean_arch_with_ismail/core/utiles/app_sources/app_strings.dart';
import 'package:flutter/material.dart';

import '../widgets/quotes_view_body_widget.dart';

class QuotesView extends StatelessWidget {
  const QuotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.appName),
        ),
        body: const QuotesViewBodyWidget(),
      ),
    );
  }
}
