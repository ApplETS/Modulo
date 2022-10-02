import 'package:flutter/widgets.dart';

class TextButton extends StatefulWidget {
  const TextButton({super.key});

  @override
  State<TextButton> createState() => _TextButtonState();
}

class _TextButtonState extends State<TextButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
