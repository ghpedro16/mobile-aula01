import 'dart:io';
import 'item_compra.dart';
import 'produto.dart';
import 'carrinho_compra.dart';

class PDVApp{
    CarrinhoCompra carrinho = CarrinhoCompra();

    void iniciar(){
        print('\n== SISTEMA DE PDV\n');
        print('Bem-vindo ao Sistema');

        bool continuar = true;
        while(continuar){
            print('Deseja adicionar um produto ao carrinho? (S/N)');
            String resposta = stdin.readLineSync()?.toUpperCase() ?? 'N';

            if(resposta == 'S'){
                ItemCompra item = lerDadosCompra();
                carrinho.adicionarItem(item);
                print('\nProduto adicionado com sucesso!');
            } else{
                continuar = false;
            }
        }

        if(carrinho.estaVazio()){
            print('\nNenhum produto foi adicionado ao carrinho.');
            print('\nObrigado por utilizar o sistema PDV');
        }else{
            exibirResultado();
        }
    }
}