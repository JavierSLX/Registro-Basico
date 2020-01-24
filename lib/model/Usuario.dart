class Usuario
{
  String nombre;
  String telefono;
  String correo;
  String imagen;

  Usuario(String nombre, String telefono, String correo, String imagen)
  {
    this.nombre = nombre;
    this.telefono = telefono;
    this.correo = correo;
    this.imagen = imagen;
  }

  @override
  String toString() 
  {
    return "Nombre: ${this.nombre}, Teléfono: ${this.telefono}, Correo: ${this.correo}, Imagen: ${this.imagen}";
  }
}