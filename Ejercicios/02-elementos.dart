// Crea un programa que devuelva una lista con todos los elementos únicos
//de otra lista.


void main(){

  final lista1 = <int>[1,2,2,3,4,5,6,1,2,3,4];
  final List<String> colores1 = [
    'rojo','verde','azul', 'amarillo','rojo'
  ]; 

  final lista2 = lista1.toSet().toList();
  final colores2 = colores1.toSet().toList();


  print(lista1);
  print(colores1);
  print("-------------------");
  print(lista2);
  print(colores2);


}