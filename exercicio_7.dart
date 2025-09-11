import 'dart:io';

void main(){
    int saldo = 1000;
    print('Selecione a opção desejada (1-3)');
    print('1. Saldo');
    print('2. Saque');
    print('3. Depósito');
    String? opcao = stdin.readLineSync();

    switch(opcao){
        case '1':
        print('O saldo existente é de RS ${saldo}');
        break;
        case '2':
        print('Informe o valor do saque RS: ');
        String? valorSaque = stdin.readLineSync();
        if(valorSaque != null){
            int? saque = int.parse(valorSaque);
            if(saque > saldo){
                print('Saldo insuficiente!');
            } else{
                print('Você efetuou um saque no valor de ${saque}. Saldo atual: ${saldo - saque}');
            }
        } else{
            print('Valor nulo');
        }
        break;
        case '3':
        print('Informe o valor do depósito RS: ');
        String? valorDeposito = stdin.readLineSync();
        if(valorDeposito != null){
            int? deposito = int.parse(valorDeposito);
            print('Você efetuou um depósito no valor de ${deposito}. Saldo atual: ${saldo + deposito}');
        } else{
            print('Valor nulo');
        }
        
        break;
    }
}