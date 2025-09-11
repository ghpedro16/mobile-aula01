import 'dart:io';

void main(){
    double peso = 70;
    double altura = 1.72;

    double imc = peso / (altura * altura);

    if(imc < 18.5){
        print('Abaixo do peso');
    } else if (imc >= 18.5 && imc < 25.0) {
        print('Peso normal');
    } else if (imc >= 25.0 && imc < 30.0){
        print('Sobrepeso');
    } else if (imc >= 30.0 && imc < 35.0){
        print('Obesidade grau 1');
    } else if (imc >= 35.0 && imc < 40.0){
        print('Obesidade grau 2');
    } else if(imc >= 40.0){
        print('Obesidade grau 3');
    };
}