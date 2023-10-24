
import 'package:flutter/cupertino.dart';

extension MediaQueryValues on BuildContext{


  // context.top
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get top => MediaQuery.of(this).viewPadding.top;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;

}