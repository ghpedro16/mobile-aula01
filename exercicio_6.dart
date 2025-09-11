import 'dart:io';

void main(){
    print('Escolha uma opção de prato (1-4):');
    print('1 - Frango a parmegiana. RS 37.90');
    print('2 - Strogonoff de Carne de porco. RS 39.90');
    print('3 - Chuchu a molho branco. RS 15.50');
    print('4 - Macarronada a bolonhesa. RS 32.90');
    String? opcao = stdin.readLineSync();

    switch(opcao){
        case '1':
        print('Frango a parmegiana');
        print('Valor total: RS 37.90');
        break;
        case '2':
        print('Strogonoff de Carne de porco.');
        print('Valor total: RS 39.90');
        break;
        case '3':
        print('Chuchu a molho branco.');
        print('Valor total: RS 15.50');
        break;
        case '4':
        print('Macarronada a bolonhesa.');
        print('Valor total: RS 32.90');
        break;
        default:
        print('Opção inválida!');
        break;
    }
}