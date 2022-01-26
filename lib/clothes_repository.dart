import 'model/lower_body.dart';
import 'model/upper_body.dart';

import 'model/hoodie.dart';
import 'model/jean.dart';
import 'model/trousers.dart';
import 'model/tshirt.dart';

class ClothesRepository {
  List<UpperBody> getUpperClothes() => [
        Tshirt('Tshirt',
            'https://png.clipart.me/previews/b98/t-shirt-vector-template-illustrator-26174.png'),
        Hoodie('Hoodie',
            'https://cdn.pixabay.com/photo/2013/07/12/15/54/sweater-150533_1280.png'),
      ];

  List<LowerBody> getLowerClothes() => [
        Jean('Jean',
            'https://images.vexels.com/media/users/3/142631/isolated/preview/c32fc2bd1003f31fff074fa2d30a21c8-simple-jean-clothing.png'),
        Trousers('Trousers',
            'https://pixsector.com/cache/5b3790fa/av1ada5e8276b9ab6e4f5.png'),
      ];
}
