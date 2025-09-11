import 'dart:io';

void main(){
    print('Informe os valores dos três lados do triângulo: ');
    print('Lado A: ');
    String? lado1 = stdin.readLineSync();
    print('Lado B: ');
    String? lado2 = stdin.readLineSync();
    print('Lado C: ');
    String? lado3 = stdin.readLineSync();

    if(lado1 != null && lado2 != null && lado3 != null){
        int ladoA = int.parse(lado1);
        int ladoB = int.parse(lado2);
        int ladoC = int.parse(lado3);

        if (ladoA < ladoB + ladoC && ladoB < ladoA + ladoC && ladoC < ladoA + ladoB){
            print('As medidas informadas formam um triângulo.');
            if (ladoA == ladoB && ladoB == ladoC){
                print('É um triângulo EQUILÁTERO!');
            } else if (ladoA != ladoB && ladoB != ladoC) {
                print('É um triângulo ESCALENO!');
            } else
                print('É um triângulo ISÓSCELES!');
        } else {
            print('As medidas informadas NÃO formam um triângulo.');
        }
    } else{
        print('Valores nulos');
    }

}