import 'package:flutter/material.dart';

class IconWithSnackbar extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String snackBarMsg;
  Color color = Colors.black;

  IconWithSnackbar(
      {required this.iconData, required this.title, required this.snackBarMsg});

  @override
  _IconWithSnackbarState createState() => _IconWithSnackbarState();
}

class _IconWithSnackbarState extends State<IconWithSnackbar> {
  void snackBarMessage() {
    setState(() {
      String snackBarMessage = widget.snackBarMsg;
      final snackBar = SnackBar(
        content: Text(snackBarMessage),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      _changeColor();
    });
  }

  void _changeColor() {
    widget.color = widget.color == Colors.black ? Colors.indigo : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
        color: widget.color,
        icon: Icon(widget.iconData),
        onPressed: snackBarMessage,
      ),
      Text(widget.title),
    ]);
  }
}

class LikeButton extends StatefulWidget {
  final IconData iconData;

  LikeButton({required this.iconData});

  @override
  LikeButtonState createState() => LikeButtonState();
}

class LikeButtonState extends State<LikeButton> {
  int _count = 999;
  Color _color = Colors.black;
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: _onPressed,
          icon: Icon(widget.iconData),
          color: _color,
        ),
        Expanded(child: Text("$_count")),
      ],
    );
  }

  void _onPressed() {
    setState(() {
      _setColor();
      _setCount();
      _pressed = !_pressed;
    });
  }

  void _setCount() {
    _pressed ? _count-- : _count++;
  }

  void _setColor() {
    _color = _color == Colors.black ? Colors.indigo : Colors.black;
  }
}
