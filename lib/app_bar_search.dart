import 'package:flutter/material.dart';

class AppBarSearch extends StatefulWidget {
  const AppBarSearch(
      {Key? key,
      required this.title,
      required this.searchTitle,
      this.hintColor,
      this.textColor,
      this.iconColor,
      this.borderColor})
      : super(key: key);
  final String title;
  final String searchTitle;
  final Color? textColor;
  final Color? hintColor;
  final Color? iconColor;
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
                        fontSize: 20, color: widget.textColor ?? Colors.white),
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
                    hintText: widget.searchTitle,
                    hintStyle:
                        TextStyle(color: widget.hintColor ?? Colors.white),
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
            color: widget.iconColor ?? Colors.white,
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
