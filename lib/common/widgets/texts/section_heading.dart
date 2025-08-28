import 'package:flutter/material.dart';

class MySectionHeading extends StatelessWidget {
  const MySectionHeading({
    super.key,
    this.textColor,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
    this.showActionButton = true,
  });

  final Color? textColor;
  final String title, buttonTitle;
  final void Function()? onPressed;
  final bool showActionButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.apply(color: Colors.black),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
       ],
    );
  }
}
