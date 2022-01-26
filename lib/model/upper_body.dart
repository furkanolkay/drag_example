abstract class UpperBody {
  final String name;
  final String imageUrl;

  UpperBody(this.name, this.imageUrl);

  void wear() {
    print(name + 'weared(upper)!!');
  }
}
