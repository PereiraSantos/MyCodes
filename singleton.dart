class SingletonPessoa {

  static SingletonPessoa? _instance;
@override
  SingletonPessoa._internal();

/*
  static get instance{
    _instance ?? SingletonPessoa._internal();
    return _instance;
  }
*/

  factory SingletonPessoa(){
    _instance ?? SingletonPessoa._internal();
    return _instance!;
  }
}
