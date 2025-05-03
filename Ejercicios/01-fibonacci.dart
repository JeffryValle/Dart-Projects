// Cree un programa el cual imprima una lista con los primeros 15 números de
// la sucesión de Fibonacci.

// 𝐹(𝑛−1)+𝐹(𝑛−2)=𝐹(𝑛)

void main(){
  fibonacci( 15 );
}

void fibonacci(int number){
  final numbers = <int>[];

  int x = 0;
  int x1 = 0;
  int x2 = 1;

  for(int i = 0; i < number; i++) {
    x = x1 + x2;
    x1 = x2;
    x2 = x;
    numbers.add( x );
  }

  print("""
    Tipo: ${ numbers.runtimeType }
    Elementos: ${ numbers.length } números
    Lista: $numbers
  """);
}
// 0 1 1 2 3 5 8 13 21 34 55...
// 1°  2°
// 0 + 1 = 1
// 1 + 1 = 2
// 1 + 2 = 3
// 2 + 3 = 5
// 3 + 5 = 8
// 5 + 8 = 13
// 8 + 13 = 21