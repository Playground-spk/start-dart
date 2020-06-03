void main() {
  var firstName = 'Mahmud'; // String type inference
  String lastName = 'Ahsan'; // String type defined
  int number = 100; // integer type
  double cost = 11.40;
  dynamic isOkay = true; // dynamic type can holds any type
  bool isNotOkay = false;

  print(firstName + ' ' + lastName);
  print(number);
  print(cost);
  print(isOkay);
  print(isNotOkay);

  isOkay = 'Test';
  print(isOkay);
}
