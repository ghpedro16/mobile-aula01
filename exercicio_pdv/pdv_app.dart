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

        ItemCompra lerDadosProduto(){
            print('\n-- Adicionar Produto --');
            print('\nNome do produto: ');
            String nome = stdin.readLineSync() ?? '';

            double valor = 0;
            bool valorValido = false;

            while(valorValido){
                print('\nValor unitário: ');
                String input = stdin.readLineSync() ?? '0';
                valorUnitario = double.parse(input.replaceAll(',','.'));
                if(valorUnitario <= 0){
                    print('\nValor deve ser maior que zero.');
                }else{
                    valorValido = true;
                }
            }

            int quantidade = 0;
            bool quantidadeValida = true;
            
            while(quantidadeValida){
                print('\nQuantidade: ');
                String input = stdin.readLineSync() ?? '0';
                quantidade = int.parse(input);
                if(quantidade <= 0){
                    print('\nErro: A quantidade deve ser maior que zero.');
                }else{
                    quantidadeValida = true;
                }
            }

            Produto produto = Produto(nome, valorUnitario);
            return ItemCompra(produto, quantidade);
        }
    }

    void exibirResultado(){
        double total = carrinho.calcularTotal();
        double desconto = carrinho.calcularDesconto();
        double valorFinal = carrinho.calcularValorFinal();

        print('\n-- RESUMO DA COMPRA --');
        print('\nItens do carrinho');

        for(int i = 0; i < carrinho.itens.length; i++){
            print('$(i + 1), ${carrinho.itens[i]}');
        }

        print('\nTotal de itens: ${carrinho.quantidadeItens()}');
        print('\nValor Total: R\$ ${total.toStringAsFixed(2)}');

        if(desconto > 0){
            print('\nDesconto (10%): R\$ ${desconto.toStringAsFixed(2)}');
        }else{
            print('\nDesconto R\$ 0.00');
        }

        print('\nValor Final: R\$ ${valorFinal.toStringAsFixed(2)}');
        print('\nObrigado por utilizar o sistema PDV');
    }
}