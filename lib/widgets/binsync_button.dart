import 'package:flutter/material.dart';

class BinsyncButton extends StatefulWidget {
  final void Function() onTap;
  final Widget? child;
  const BinsyncButton({super.key, required this.onTap, required this.child,});

  @override
  State<BinsyncButton> createState() => _BinsyncButtonState();
}

class _BinsyncButtonState extends State<BinsyncButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        textStyle: TextStyle( fontFamily: "Poppins")
      ),
      child: widget.child,
    );
  }
}