/**
 * learning classes in dart using a simple spacecraft class
 */

class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read only non-final property
  int? get launchyear => launchDate?.year;

  // Constructor with syntatic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code here
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesnt work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchyear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}