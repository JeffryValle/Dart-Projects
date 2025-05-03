


void main(){

  // Heroe hero = Heroe("Batman", "DC", 35);
  
  Heroe hero1 = Heroe("Jeffry", 25, 99.9);

  // print("""
  //   Nombre:      ${hero.nombre}
  //   Editorial:   ${hero.editorial}
  //   Edad:        ${hero.edad}
  // """);

  final test = hero1.mostrarInformacion();
  
  print("""
    Nombre      : ${test["Nombre"]}, 
    Edad        : ${test["Edad"]},
    Calificacion: ${test["Calificacion"]},
  """);

}

class Heroe {

  final String nombre;
  final int edad;
  final double calificacion;

  Heroe(
    this.nombre,
    this.edad,
    this.calificacion,
  );
  // Heroe({
  //   required this.nombre,
  //   required this.editorial,
  //   required this.edad
  // });
  // Heroe( this.nombre, this.editorial, this.edad );

  Map mostrarInformacion(){

    final mapa = {
      "Nombre": "$nombre",
      "Edad": "$edad",
      "Calificacion": "$calificacion",
    };

    return mapa;
  }

}