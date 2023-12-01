import 'package:args/args.dart';

// import the Araba class in araba.dart
import 'araba.dart';
import 'cicek.dart';
import 'rectangle.dart';

const String version = '0.0.1';

ArgParser buildParser() {
  return ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Print this usage information.',
    )
    ..addFlag(
      '_verbose',
      abbr: 'v',
      negatable: false,
      help: 'Show additional command output.',
    )
    ..addFlag(
      'version',
      negatable: false,
      help: 'Print the tool version.',
    );
}

void printUsage(ArgParser argParser) {
  print('Usage: dart ntp_1.dart <flags> [arguments]');
  print(argParser.usage);
}

void main(List<String> arguments) {
  final ArgParser argParser = buildParser();
  try {
    final ArgResults results = argParser.parse(arguments);
    bool _verbose = false;

    // Process the parsed arguments.
    if (results.wasParsed('help')) {
      printUsage(argParser);
      return;
    }
    if (results.wasParsed('version')) {
      print('ntp_1 version: $version');
      return;
    }
    if (results.wasParsed('_verbose')) {
      _verbose = true;
    }

    print(Circle(20).area);
    print(Circle(20).circumference);
    print(Square(10).circumference);
    print(Square(10).area);

    print(Rectangle(10, 20).circumference);
    print(Rectangle(10, 20).area);
  } on FormatException catch (e) {
    // Print usage information if an invalid argument was provided.
    print(e.message);
    print('');
    printUsage(argParser);
  }
}
