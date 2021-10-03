class SingletonPessoa {

 static SingletonPessoa? _instance;
  
@override
  SingletonPessoa._internal();

  factory SingletonPessoa(){
    _instance ?? SingletonPessoa._internal();
    return _instance!;
  }
}
