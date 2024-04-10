import 'dart:io';

// Interface
abstract class Vehicle {
  void start();
}

// Base class
class Car implements Vehicle {
  @override
  void start() {
    print('Car starting...');
  }
}

// Derived class
class ElectricCar extends Car {
  @override
  void start() {
    print('Electric car starting...');
  }
}

// Class initialized with data from a file
class CarModel {
  String model;

  CarModel(this.model);

  void displayModel() {
    print('Car model: $model');
  }
}

void main() {
  ElectricCar myCar = ElectricCar();
  myCar.start();

  CarModel carFromFile = CarModel(File('car_data.txt').readAsStringSync());
  carFromFile.displayModel();

  for (int i = 0; i < 5; i++) {
    print('Loop iteration: $i');
  }
}
