main() {
  // variáveis
  // String name = "Lucas";
  // const int age = 24;
  // double altura = 1.7; //ponto flutuante
  // bool souEstudante = true;
  // // variáveis de tipos primitivos
  // print(name);
  // //perceba que não estamos tipando as variáveis

  // //operaçãoes

  // var a = 10;
  // var b = 10;
  // var soma = a + b;
  // var subtracao = a - b;
  // var multiplicacao = a * b;
  // var divisao = a / b;

  // print("resultado da operação soma: " + soma.toString());
  // //perceba que precisamos colocar o toString()
  // print("resultado da operação subtração: ${subtracao + soma}");

  // //condicionais
  // // && = and
  // // || = or
  // if (age > 18) {
  //   print("maior de idade");
  // } else if (age == 18) {
  //   print("parabens, agora você é maior de idade");
  // } else {
  //   print("menor de idade");
  // }
  // //igual ao do java

  // // i = i + 1 = i++
  // for (var i = 0; i < 3; i = i + 1) {
  //   print("valor de i: $i");
  // }
  // var i = 0;
  // while (i < 3) {
  //   print("valor de i: $i");
  //   i++;
  // }

  // void digaOla() {
  //   //não retorna nada
  //   print('Olá, mundo!');
  // }

  // somaFuncao(int valor1, int valor2) {
  //   var soma = valor1 + valor2;
  //   return soma; // retorna um valor
  // }

  var cachorro = Animal('Rex', 'Marrom', true);
  cachorro.emitirSom();
  cachorro.comer();

  var cachorro2 = Dog('Rex', 'Marrom', true);
  cachorro2.emitirSom();
  cachorro2.comer();

  var passaro = Bird('Clopsita', 'amarelo', true);
  passaro.voar();
  
}

class Animal {
  String name;
  String cor;
  bool vacinado;

  // está fora do escopo da main

  Animal(this.name, this.cor, this.vacinado);

  emitirSom() {
    print('Animal emitir som...');
  }

  comer() {
    print('estou comendo...');
  }
}

// Herança

class Dog extends Animal {
  Dog(super.name, super.cor, super.vacinado);
  // tudo da classe animal tem aqui

  //sbrescrita
  @override
  void emitirSom() {
    print('au au');
  }
}

class Bird extends Animal implements Voaodr {
  Bird(super.name, super.cor, super.vacinado);

  @override
  void voar() {
    // TODO: implement voar
    print("estou voando");
  }
}

// Abstração

abstract class Voaodr {
  void voar();
}

// polimorfismo
// exemplo: Animal passaro = Bird('Clopsita', 'amarelo', true);
//Animal cachorro = Dog('Rex', 'Marrom', true);