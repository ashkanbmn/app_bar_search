import 'package:flutter/material.dart';

class AppBarSearch extends StatefulWidget {
  const AppBarSearch(
      {Key? key,
      required this.title,
      required this.searchHint,
      this.searchHintColor,
      this.titleColor,
      this.iconsColor,
      this.borderColor})
      : super(key: key);
  final String title;
  final String searchHint;
  final Color? titleColor;
  final Color? searchHintColor;
  final Color? iconsColor;
  final Color? borderColor;

  @override
  State<AppBarSearch> createState() => _AppBarSearchState();
}

class _AppBarSearchState extends State<AppBarSearch> {
  bool visible = false;
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Visibility(
              visible: !visible,
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20, color: widget.titleColor ?? Colors.white),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: visible,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: TextField(
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    hintText: widget.searchHint,
                    hintStyle:
                        TextStyle(color: widget.searchHintColor ?? Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: widget.borderColor ?? Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            visible == false ? Icons.search : Icons.clear,
            color: widget.iconsColor ?? Colors.white,
          ),
          onPressed: () {
            setState(() {
              visible = !visible;
            });
            focusNode.requestFocus();
          },
        ),
      ],
    );
  }
}
