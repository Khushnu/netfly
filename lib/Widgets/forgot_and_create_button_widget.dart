import 'package:flutter/material.dart';

class ForgotAndCreateWidget extends StatefulWidget {
  const ForgotAndCreateWidget(
      {super.key,
      required this.forgottext,
      required this.createText,
      this.registerscreen});
  final String forgottext;
  final String createText;
  final Function()? registerscreen;

  @override
  State<ForgotAndCreateWidget> createState() => _ForgotAndCreateWidgetState();
}

class _ForgotAndCreateWidgetState extends State<ForgotAndCreateWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              widget.forgottext,
              style: const TextStyle(
                color: Colors.grey,
              ),
            )),
        const Spacer(),
        TextButton(
            onPressed: widget.registerscreen,
            child: Text(
              widget.createText,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ))
      ],
    );
  }
}
