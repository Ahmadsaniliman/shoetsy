class Brand {
  final String image, name, items;

  Brand({
    required this.image,
    required this.name,
    required this.items,
  });
}

final List<Brand> brands = [
  Brand(
      image: 'assets/images/Vector (44).png',
      name: 'Adidas',
      items: '100 Items '),
  Brand(image: 'assets/images/Nike (1).png', name: 'Nike', items: '120 Items '),
  Brand(
      image: 'assets/images/Vector (45).png',
      name: 'Puma',
      items: '130 Items '),
  Brand(
      image: 'assets/images/Vector (46).png',
      name: 'ReeBok',
      items: '140 Items '),
];
