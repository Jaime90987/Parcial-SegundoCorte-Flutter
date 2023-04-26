class Fibonacchi {
  int _number = 0;

  Fibonacchi(int number) {
    _number = number;
  }

  int getFibonacchi() {
    return _calcularFibonacci(_number);
  }

  int _calcularFibonacci(int a) {
    if (a == 1) return 0;
    if (a == 2) return 1;

    return _calcularFibonacci(a - 1) + _calcularFibonacci(a - 2);
  }
}
