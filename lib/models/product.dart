import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product(
      {@required this.id,
        @required this.category,
        @required this.name,
        @required this.description,
        @required this.imgUrl,
        @required this.price});
}

class Products with ChangeNotifier{
  List<Product> _items = [
    Product(
      id: '1',
      name: 'Art Of The Deal',
      imgUrl:
      'https://upload.wikimedia.org/wikipedia/en/1/1c/Trump_the_art_of_the_deal.jpg',
      price: 5,
      category: 'Business',
      description:
      'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '2',
      name: 'Rich Dad Poor Dad',
      imgUrl:
      'https://upload.wikimedia.org/wikipedia/en/b/b9/Rich_Dad_Poor_Dad.jpg',
      price: 5,
      category: 'Business',
      description:
      'Rich Dad Poor Dad is a 1997 book written by Robert Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets',
    ),
    Product(
      id: '3',
      name: 'PS4 Dual Shock',
      imgUrl:
      'https://upload.wikimedia.org/wikipedia/commons/5/59/DualShock_4.jpg',
      price: 4,
      category: 'Fiction',
      description:
      'The PlayStation 4 (officially abbreviated as PS4) is an eighth-generation home video game console developed by Sony Interactive Entertainment. Announced as the successor to the PlayStation 3 in February 2013, it was launched on November 15 in North America, November 29 in Europe, South America and Australia, and on February 22, 2014 in Japan.',
    ),
    Product(
      id: '4',
      name: 'GTA V',
      imgUrl:
      'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png',
      price: 4,
      category: 'Romantc',
      description: 'Best selling poular free roaming game',
    ),
    Product(
      id: '5',
      name: 'RDR 2',
      imgUrl:
      'https://upload.wikimedia.org/wikipedia/en/4/44/Red_Dead_Redemption_II.jpg',
      price: 4,
      category: 'Games',
      description: 'Free roam classic by Rockstar',
    ),
    Product(
      id: '6',
      name: 'Acer Aspire',
      imgUrl: 'https://www.hilaptop.com/userdata/public/gfx/6060.jpg',
      price: 4,
      category: 'Laptops',
      description: '8 gb ram, mx 150.',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}