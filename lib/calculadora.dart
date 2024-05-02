import 'dart:math';

class Calculadora{
  double soma(double parcela1, double parcela2){
    return parcela1 + parcela2;
  }

  double diferenca(double aditivo, double subtrativo){
    return aditivo - subtrativo;
  }

  double produto(double fator1, double fator2){
    return fator1 * fator2;
  }

  double quociente(double dividendo, double divisor){
    if (divisor == 0) {
      throw Exception('Erro: Divisão por ZERO.');
    }else{
       return dividendo / divisor;
    }
  }

  double raiz (double radicando ){
    return sqrt(radicando);
  }

  double potencia (double base, double expoente){
    return pow(base, expoente) as double;
  } 
  
}