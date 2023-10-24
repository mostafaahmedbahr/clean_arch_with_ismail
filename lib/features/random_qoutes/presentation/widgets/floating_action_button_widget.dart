import 'package:flutter/material.dart';

//ignore: must_be_immutable
class FloatingActionButtonWidget extends StatelessWidget {
    FloatingActionButtonWidget({Key? key , this.onPressed}) : super(key: key);
    void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onPressed,
      child: const Icon(Icons.refresh),
    );
  }
}
