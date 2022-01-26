abstract class LowerBody {
  final String name;
  final String imageUrl;

  LowerBody(this.name, this.imageUrl);

  void wear() {
    print(name + 'weared(lower)!!');
  }
}
