abstract class Animal {
    String _name;
  Animal(this._name);

  void makeSound();

   String getName() {
    return _name;
  }
}

class Lion extends Animal {
  double maneSize;

  Lion(String name, this.maneSize) : super(name);

  @override
  void makeSound() {
    print("Roar!");
  }
}

class Elephant extends Animal {
  double trunkLength;

  Elephant(String name, this.trunkLength) : super(name);

  @override
  void makeSound() {
    print("Trumpet!");
  }
}

class Parrot extends Animal {
  int vocabularySize;

  Parrot(String name, this.vocabularySize) : super(name);

  @override
  void makeSound() {
    print("Squawk! Hello!");
  }
}

void main() {
   List<Animal> zoo = [];

  zoo.add(Lion("Simba", 1.2));
  zoo.add(Elephant("Dumbo", 2.5));
  zoo.add(Parrot("Polly", 100));

    for (var animal in zoo) {
    print("Animal: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize} meters");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength} meters");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize} words");
    }

    animal.makeSound();
    print("---------------");
  }
}
