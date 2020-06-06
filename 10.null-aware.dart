class Num {
  int num = 10;
}

void main() {
  var n = Num();
  int number;

// we can check null by this
  if (n != null) {
    number = n.num;
  }
  print(number);

  if (n is Num) {
    print('n is num');
  }
}
