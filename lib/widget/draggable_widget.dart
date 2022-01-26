import 'package:flutter/material.dart';

class DraggableWidget<T> extends StatelessWidget {
  final T model;
  final String title;
  final String url;
  const DraggableWidget({
    Key? key,
    required this.model,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<Object>(
      feedback: _clothesImage(url),
      child: Column(
        children: [
          Text(
            title,
          ),
          _clothesImage(url),
        ],
      ),
      data: model,
    );
  }

  Widget _clothesImage(String url) =>
      Image.network(url, width: 100, height: 100);
}
