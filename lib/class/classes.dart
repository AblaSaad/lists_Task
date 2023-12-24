class Car {
  String brand;
  String color;
  int year;

  Car(this.brand, this.color, this.year);

  void start() {
    print('The $brand car is starting.');
  }

  void stop() {
    print('The $brand car has stopped.');
  }
}

class Sedan extends Car {
  int numberOfSeats;

  Sedan(String brand, String color, int year, this.numberOfSeats)
      : super(brand, color, year);

  @override
  void start() {
    super.start();
    print('The sedan is ready to go.');
  }
}

class SUV extends Car {
  bool isFourWheelDrive;

  SUV(String brand, String color, int year, this.isFourWheelDrive)
      : super(brand, color, year);

  @override
  void start() {
    super.start();
    print('The SUV is ready to conquer any terrain.');
  }
}

class SportsCar extends Car {
  bool isConvertible;

  SportsCar(String brand, String color, int year, this.isConvertible)
      : super(brand, color, year);

  @override
  void start() {
    super.start();
    print('The sports car is revving up.');
  }
}

void main() {
  Sedan mySedan = Sedan('Toyota', 'Red', 2022, 5);
  mySedan.start();
  mySedan.stop();
  print('Number of seats: ${mySedan.numberOfSeats}');

  print('------------------------');

  SUV mySUV = SUV('Ford', 'Black', 2021, true);
  mySUV.start();
  mySUV.stop();
  print('Four-wheel drive: ${mySUV.isFourWheelDrive}');

  print('------------------------');

  SportsCar mySportsCar = SportsCar('Ferrari', 'Yellow', 2023, true);
  mySportsCar.start();
  mySportsCar.stop();
  print('Convertible: ${mySportsCar.isConvertible}');
}
