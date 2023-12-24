class Car {
  final String name;
  final Brand brand;

  const Car({
    required this.name,
    required this.brand,
  });
}

abstract class Brand {
  final String label;
  final String color;

  const Brand({
    required this.label,
    required this.color,
  });
  Map<String, dynamic> toMap();
}

class CarModel extends Car {
  CarModel({
    required String name,
    required BrandModel brand,
  }) : super(
          name: name,
          brand: brand,
        );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'brand': brand.toMap(),
    };
  }
}

class BrandModel extends Brand {
  BrandModel({
    required String label,
    required String color,
  }) : super(
          label: label,
          color: color,
        );

  @override
  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'color': color,
    };
  }
}

void main() {
  BrandModel brand = BrandModel(label: 'Test', color: 'white');

  CarModel car = CarModel(name: 'T', brand: brand);

  print(car.toMap());
}
