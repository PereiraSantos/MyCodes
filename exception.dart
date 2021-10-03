
class MyException implements Exception{
  String err() => "erro interno";
}

import 'package:padrao_projeto/excepition/exception.dart';

void main() {
  try{
    testeException("erro");
  }
  on MyException catch(e){
    print(e.err());
  }

}

void testeException(String teste){
  if(teste == "erro"){
    throw new MyException();
  }
}
