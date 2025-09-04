import 'dart:io';

void main(){

    int renda = 150000;
    int saldo = 500000;

    if(renda > 1400 && renda < 5000){
        print("varejo");
    }else if(renda >= 5000 && renda < 30000){
        print("vangogh");
    }else if(renda >= 30000 && renda < 60000 ){
        print("select");
    }else if(renda >= 60000 && saldo >= 100000){
        print("exclusive");
    }
    
}