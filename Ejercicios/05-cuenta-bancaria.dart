/*
 Cree una clase CuentaBancaria que tenga las propiedades titular 
 y saldo. Implemente métodos para:
  a. Depositar dinero.
  b. Retirar dinero (asegurándote de que el saldo no sea negativo).
  c. Consultar el saldo.
*/


void main(){

  CuentaBancaria cuenta1 = CuentaBancaria("Jeffry Valle", 25000);

  cuenta1.depositar( 15000 );
  cuenta1.depositar( 10000 );
  print("Su saldo actual es: L ${cuenta1.consultarSaldo()}");
  cuenta1.retirar(50000);
  print("Su saldo actual es: L ${cuenta1.consultarSaldo()}");

}

class CuentaBancaria {

  String titular;
  double saldo;

  CuentaBancaria( this.titular, this.saldo );

  void depositar( double monto ){
    if ( monto < 0 ) throw Exception('El monto a depositar no puede ser negativo');
    this.saldo += monto;
    print("Depositado correctamente: L $monto");
  }

  void retirar( double monto ){
    if ( monto < 0 ) throw Exception('El monto a retirar no puede ser negativo');
    if ( monto > this.saldo ) throw Exception('El monto a retirar no puede ser mayor al saldo actual');
    this.saldo -= monto;
    print("Retirado correctamente: L $monto");
  }

  double consultarSaldo() {
    return this.saldo;
  }

}