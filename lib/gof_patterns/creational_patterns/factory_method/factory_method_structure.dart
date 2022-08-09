/*
Factory Method Design Pattern

Intent: Provides an interface for creating objects in a superclass, but allows
subclasses to alter the type of objects that will be created.
*/

/*
The Product interface declares the operations that all concrete products must implement.
*/
abstract class Product {
  String operation();
}

/*
Concrete Products provide various implementations of the Product interface.
*/
class ConcreteProduct1 implements Product {
  @override
  String operation() {
    return 'ConcreteProduct1 operation';
  }
}

class ConcreteProduct2 implements Product {
  @override
  String operation() {
    return 'ConcreteProduct2 operation';
  }
}

/// The Creator class declares the factory method that is supposed to return an
/// object of a Product class. The Creator's subclasses usually provide the
/// implementation of this method.
abstract class Creator {
  /// Note that the Creator may also provide some default implementation of
  /// the factory method. For example, return default concrete product.
  Product factoryMethod() {
    return ConcreteProduct1();
  }

  /// Also note that, despite its name, the Creator's primary responsibility
  /// is NOT creating products. Usually, it contains some core business logic
  /// that relies on Product objects, returned by the factory method.
  /// Subclasses can indirectly change that business logic by overriding the
  /// factory method and returning a different type of product from it.
  String someOperation() {
    // Call the factory method to create a Product object.
    final product = factoryMethod();

    // Now, use the product.
    final result =
        'Creator: The same creator\'s code has just worked with ${product.operation()}';

    return result;
  }
}

/*
Concrete Creators override the factory method in order to change the resulting
product's type.
*/

class ConcreteCreator1 extends Creator {
  @override
  Product factoryMethod() {
    return ConcreteProduct1();
  }
}

class ConcreteCreator2 extends Creator {
  @override
  Product factoryMethod() {
    return ConcreteProduct2();
  }

  @override
  String someOperation() {
    final result = super.someOperation();

    return '$result override';
  }
}

/// The client code works with an instance of a concrete creator, albeit through
/// its base interface. As long as the client keeps working with the creator via
/// the base interface, you can pass it any creator's subclass.
void clientCode(Creator creator) {
  print(
    "Client: I'm not aware of the creator's class, but it still works.\n${creator.someOperation()}.",
  );
}

void main() {
  print('App: Launched with the ConcreteCreator1.');
  clientCode(ConcreteCreator1());
  print('\n');

  print('App: Launched with the ConcreteCreator2.');
  clientCode(ConcreteCreator2());
  print('\n');
}
