import 'dart:io';

void main(){
    String usuario = 'admin';
    int senha = 1234;

    if(usuario == 'admin' && senha == 1234){
        print('Acesso concedido');
    } else{
        print('Acesso negado');
    }
}