import 'package:calculadora/calculadora.dart';
import 'package:test/test.dart';

void main() {
  Calculadora calculadora = Calculadora();
  test('Deve retornar o valor da soma', () {
    //Preparação
    double resultado;

    //Execução
    resultado = calculadora.soma(10, 5);

    //Avaliação - Verificação
    expect(resultado, 15);
  });

  test('Deve retornar o valor da subtração', () {
    //Preparação
    double resultado = 0.0;

    //Execução
    resultado = calculadora.diferenca(10, 5);

    //Avaliação
    expect(resultado, 5);
  });

  test('Deve retornar o valor da multiplicação', () {
    //Preparação
    double resultado;

    //Execução
    resultado = calculadora.produto(10, 5);

    //Avaliação 
    expect(resultado, 50);
  });

  test('Deve retornar o valor da divisão', () {
    //Preparação
    double resultado;

    //Execução
    resultado = calculadora.quociente(10, 5);

    //Avaliação
    expect(resultado, 2);
  });

  test('Deve avaliar divisão por zero', () {
    //Preparação
    String mensagemException = 'Exception: ';
    String mensagemErro = '';

    //Execução
    try {
      calculadora.quociente(10, 0);
    } catch (e) {
      mensagemErro = e.toString();
      print(mensagemErro);
    }
    
    //Avaliação
    expect(mensagemErro, '${mensagemException}Erro: Divisão por ZERO.');
  });

  test('Deve retornar o valor da raiz.', () {
    //Preparação
    double resultado;

    //Execução
    resultado = calculadora.raiz(9);

    //Verificação
    expect(resultado, 3);
  });

  test('Deve retornar o valor da potencia: base 2 elevado ao expoente 3.', () {
    //Preparação
    double resultado;

    //Execução
    resultado = calculadora.potencia(2, 3);

    //Avaliação
    expect(resultado, 8);
    
  });
  
}
