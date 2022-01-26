import '../../../model/lower_body.dart';
import '../../../model/upper_body.dart';
import 'package:flutter/material.dart';

class CombineWidget extends StatefulWidget {
  const CombineWidget({Key? key}) : super(key: key);

  @override
  State<CombineWidget> createState() => _CombineWidgetState();
}

class _CombineWidgetState extends State<CombineWidget> {
  String? upUrl, lowUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Üst Kısım',
        ),
        DragTarget<UpperBody>(
          builder: (context, items, _) {
            return _clothesWidget(
              url: upUrl,
            );
          },
          onAccept: (item) {
            item.wear();
            upUrl = item.imageUrl;
            setState(() {});
          },
        ),
        DragTarget<LowerBody>(
          builder: (context, items, _) {
            return _clothesWidget(
              url: lowUrl,
            );
          },
          onAccept: (item) {
            item.wear();
            lowUrl = item.imageUrl;
            setState(() {});
          },
          /*Kabul edilebilir durum spesifikleşmesi adına kontroller koyulabilir!
          onWillAccept: (data) {
               if (data is Trousers) {
              print('acceptable');
              return true;
            } else {
              print('unAcceptable');
              return false;
            }    
          }, */
          /*alan içindeki tüm hareketlerde tetiklenir!
          onMove: (details) => print(details.data.name),*/
          /*Alananın üzerinden ayrıldığında tetiklenir!
          onLeave: (data) => print(data?.name ?? ''),*/
        ),
        const Text(
          'Alt Kısım',
        )
      ],
    );
  }

  Widget _clothesWidget({String? url}) => Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black),
        ),
        alignment: Alignment.center,
        child: url != null ? _clothesImage(url) : const SizedBox(),
      );

  Widget _clothesImage(String url) => Image.network(
        url,
        width: 100,
        height: 100,
      );
}
