void main(){
  Future(() {
    throw Exception('Algo salió mal');
  }).then((_){
    print('Exito!');
  }).catchError((error){
    print('Error: $error');
  });
}