/*
Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion. Crea una clase 
Biblioteca que contenga una lista de libros y funciones para:
  a. Agregar libros.
  b. Eliminar libros.
  c. Buscar libros por autor.
  d. Listar todos los libros ordenados por año de publicación.
*/
void main() {

  Libro libro1 = Libro(
    "Don Quijote", 
    "Miguel de Cervantes", 
    1988
  );
  Libro libro2 = Libro(
    "Habitos Atomicos", 
    "Joe Dispenza", 
    2001
  );
  Libro libro3 = Libro(
    "Secretos de la Mente Millonaria", 
    "Harv Eker", 
    2005
  );

  Libro libro4 = Libro(
    "El poder del ahora", 
    "Eckhart Tolle", 
    1997
  );
  Libro libro5 = Libro(
    "Los siete hábitos de la gente altamente efectiva", 
    "Stephen R. Covey", 
    1989
  );
  Libro libro6 = Libro(
    "Padre rico, padre pobre", 
    "Robert T. Kiyosaki", 
    1997
  );
  Libro libro7 = Libro(
    "Cómo ganar amigos e influir sobre las personas", 
    "Dale Carnegie", 
    1936
  );



  Biblioteca biblioteca1 = Biblioteca();

  biblioteca1.agregarLibro(libro1);
  biblioteca1.agregarLibro(libro2);
  biblioteca1.agregarLibro(libro3);
  biblioteca1.imprimir();

  biblioteca1.eliminarLibro(libro2);
  biblioteca1.imprimir();

  print("------------------------------");
  // Buscar libro por autor
  biblioteca1.buscarLibro("Harv Eker");

  print("------------------------------");

  biblioteca1.agregarLibro(libro4);
  biblioteca1.agregarLibro(libro5);
  biblioteca1.agregarLibro(libro6);
  biblioteca1.agregarLibro(libro7);

  // Organizar libros por anio de publicacion
  biblioteca1.organizarLibros();

}

class Libro {
  String titulo;
  String autor;
  int anioPublicacion;

  Libro(
   this.titulo,
   this.autor,
   this.anioPublicacion
  );

}


class Biblioteca {

  List< Libro > libros = [];

  dynamic agregarLibro( Libro libro ) => libros.add( libro );

  dynamic eliminarLibro( Libro libro ) => libros.remove( libro );

  dynamic buscarLibro(String autor){
    // Me devuelve una Lista y la declaro como tipo Libro --- 
    List<Libro> lib = libros.where((element) => element.autor == autor).toList();
    
      print("""
      - Libro "${ lib[0].titulo }" -
      Titulo            : ${ lib[0].titulo }
      Autor             : ${ lib[0].autor }
      Anio Publicacion  : ${ lib[0].anioPublicacion }
      """);
  }

  dynamic organizarLibros(){
    
    libros.sort(( a, b ) => a.anioPublicacion.compareTo( b.anioPublicacion ));

    for (int i = 0; i < libros.length; i++) {
      print("""
      --------- Libro ${ i+1 } ---------
      Titulo            : ${ libros[i].titulo }
      Autor             : ${ libros[i].autor }
      Anio Publicacion  : ${ libros[i].anioPublicacion }
      """);
    }    
  }

  void imprimir(){

    for (int i = 0; i < libros.length; i++) {
      print("""
      ---------Libro ${ i+1 }----------
      Titulo            : ${ libros[i].titulo }
      Autor             : ${ libros[i].autor }
      Anio Publicacion  : ${ libros[i].anioPublicacion }
      """);
    }
  }

}


