import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  stdout.writeln("---Scientific Calculator---");
  stdout.writeln();

  stdout.writeln("---Calculator---");
  stdout.writeln("(1)Max, (2)Min");
  stdout.writeln("(3)Sin, (4)Cos, (5)Tan");
  stdout.writeln("(6)Pow, (7)Sqrt, (8)Exp, (9)Log");

  stdout.writeln();
  stdout.write("Choose calculation type: ");
  int type = int.parse(stdin.readLineSync()!);

  String result = calculateByType(type);
  stdout.writeln();
  stdout.writeln("---Result---");
  stdout.writeln("result = $result");
}

/// calculate scientific functions
/// accept int type and return string result
String calculateByType(int type) {
  // check if type valid value
  _checkIsTypeValid(type);

  switch (type) {
    case 1:
      {
        stdout.write("Enter first value: ");
        int value1 = int.parse(stdin.readLineSync()!);
        stdout.write("Enter second value: ");
        int value2 = int.parse(stdin.readLineSync()!);

        return max(value1, value2).toString();
      }
    case 2:
      {
        stdout.write("Enter first value: ");
        int value1 = int.parse(stdin.readLineSync()!);
        stdout.write("Enter second value: ");
        int value2 = int.parse(stdin.readLineSync()!);

        return min(value1, value2).toString();
      }
    case 3:
      {
        stdout.write("Enter angle: ");
        int value = int.parse(stdin.readLineSync()!);

        return sin(value).toString();
      }
    case 4:
      {
        stdout.write("Enter angle: ");
        int value = int.parse(stdin.readLineSync()!);

        return cos(value).toString();
      }
    case 5:
      {
        stdout.write("Enter angle: ");
        int value = int.parse(stdin.readLineSync()!);

        return tan(value).toString();
      }
    case 6:
      {
        stdout.write("Enter value: ");
        int value = int.parse(stdin.readLineSync()!);
        stdout.write("Power by: ");
        int power = int.parse(stdin.readLineSync()!);

        return pow(value, power).toString();
      }
    case 7:
      {
        stdout.write("Enter value: ");
        int value = int.parse(stdin.readLineSync()!);

        return sqrt(value).toString();
      }
    case 8:
      {
        stdout.write("Enter value: ");
        int value = int.parse(stdin.readLineSync()!);

        return exp(value).toString();
      }
    case 9:
      {
        stdout.write("Enter value: ");
        int value = int.parse(stdin.readLineSync()!);

        return log(value).toString();
      }
    default:
      {
        return "";
      }
  }
}

/// check is valid type value
/// accept int type and throw format exception
void _checkIsTypeValid(int type) {
  if (type < 1 || type > 9) {
    throw FormatException("An invalid calculation type value was entered");
  }
}
