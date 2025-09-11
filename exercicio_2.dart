import 'dart:io';

void main(){
    int valor = 90;

    if(valor >= 100){
        double desconto = (10.0 / 100) * valor;
        double valorFinal = valor - desconto; 
        print('O valor final com desconto de 10% é de RS ${valorFinal}');
    } else{
        print('Valor final RS ${valor}');
    }
}