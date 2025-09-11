import 'dart:io';

void main(){
    int nota1 = 8;
    int nota2 = 3;
    double media = (nota1 + nota2) / 2;

    if(media >= 7){
        print('Aluno está APROVADO');
    } else if(media < 7 && media >= 4){
        print('Aluno está de RECUPERAÇÃO');
    } else if(media < 4){
        print('Aluno está REPROVADO');
    }
}