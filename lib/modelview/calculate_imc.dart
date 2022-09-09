
double calculate_imc(double altura, double peso){
  print("Altura: ${altura}, Peso: ${peso}");
  double imc = peso/(altura*altura);
  print("O valor do IMC é: $imc");
  return imc;
}