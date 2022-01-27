import 'package:flutter/material.dart';

import '../../../clothes_repository.dart';
import '../../../model/hoodie.dart';
import '../../../model/jean.dart';
import '../../../model/trousers.dart';
import '../../../model/tshirt.dart';
import '../../../widget/draggable_widget.dart';

class WardropWidget extends StatefulWidget {
  const WardropWidget({Key? key}) : super(key: key);

  @override
  State<WardropWidget> createState() => _WardropWidgetState();
}

class _WardropWidgetState extends State<WardropWidget> {
  late final ClothesRepository _clothesRepository;

  @override
  void initState() {
    super.initState();
    _clothesRepository = ClothesRepository();
  }

  @override
  Widget build(BuildContext context) {
    final Tshirt tshirt = _clothesRepository.getTshirtById(0);

    final Hoodie hoodie = _clothesRepository.getHoodieById(0);

    final Jean jean = _clothesRepository.getJeanById(0);

    final Trousers trousers = _clothesRepository.getTrousers(0);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Body Up',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            DraggableWidget<Tshirt>(
              model: tshirt,
              title: tshirt.name,
              url: tshirt.imageUrl,
            ),
            DraggableWidget<Hoodie>(
              model: hoodie,
              title: hoodie.name,
              url: hoodie.imageUrl,
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Body Low',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            DraggableWidget<Jean>(
              model: jean,
              title: jean.name,
              url: jean.imageUrl,
            ),
            DraggableWidget<Trousers>(
              model: trousers,
              title: trousers.name,
              url: trousers.imageUrl,
            ),
          ],
        ),
      ],
    );
  }
}
