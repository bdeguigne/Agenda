import 'package:flutter/material.dart';

class LoadingElevatedButton extends StatelessWidget {
  final Function() onPressed;
  final bool isLoading;
  final Widget child;

  const LoadingElevatedButton({
    Key key,
    this.isLoading = false,
    @required this.child,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: !isLoading
          ? child
          : const Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
    );
  }
}
