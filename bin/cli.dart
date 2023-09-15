import 'package:cli/cli.dart' as cli;
import 'package:cli/space_craft.dart' as space_craft;

void main(List<String> arguments) {
  print('Hello world: ${cli.calculate()}!');

  var voyager = space_craft.Spacecraft('Voyager I', DateTime(1997,9,5));
  voyager.describe();

  var voyager3 = space_craft.Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}
