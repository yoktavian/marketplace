import 'package:flutter/material.dart';

class SearchInputMV extends StatefulWidget {
  final String placeholder;

  const SearchInputMV({
    this.placeholder = '',
    super.key,
  });

  @override
  State<StatefulWidget> createState() => SearchInputMVState();
}

class SearchInputMVState extends State<SearchInputMV> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.transparent),
        gradient: LinearGradient(
          colors: [
            Color(0xFF74FBDE),
            Color(0xFF3C41BF),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: TextField(
        cursorHeight: 12,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 12),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          hintText: widget.placeholder,
          hintStyle: TextStyle(color: Color(0xFF868686), fontSize: 12),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Icon(Icons.search, color: Color(0xFF3C41BF)),
        ),
      ),
    );
  }
}
