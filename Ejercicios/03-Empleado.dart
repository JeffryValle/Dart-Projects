/*
Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. 
Luego cree una lista de “empleados” y una función que calcule 
el salario total de todos los empleados y otra que calcule el
salario promedio.
*/

void main(){

  Empleado emp1 = Empleado(nombre: "Jeffry", puesto: "Gerente", salario: 30000.50);
  Empleado emp2 = Empleado(nombre: "Jessica", puesto: "RRHH", salario: 28500);
  Empleado emp3 = Empleado(nombre: "Abraham", puesto: "IT", salario: 45500);
  Empleado emp4 = Empleado(nombre: "Karla", puesto: "Ventas", salario: 50000);


  final List<dynamic> empleados = [
    emp1.salario, 
    emp2.salario, 
    emp3.salario, 
    emp4.salario
  ];

  final total = salarioTotal(empleados);  
  final promedio = total / empleados.length;
  
  print("""
    El salario total es     : $total
    El salario Promedio es  : $promedio
  """);

}

class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado({ 
    required this.nombre, 
    required this.puesto, 
    required this.salario,
  });

}

double salarioTotal(List<dynamic> empleados){
  double x = 0;
  for (double salario in empleados) {
    x += salario;
  }
  return x;
}