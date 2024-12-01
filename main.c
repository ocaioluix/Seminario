#include <stdio.h>
#include "cliente.h"
#include "livro.h"

/**
 * @brief Função principal que exibe o menu e gerencia as operações do sistema.
 *
 * A função principal exibe um menu de opções para o usuário, permitindo que ele
 * escolha diferentes ações como cadastrar clientes, livros, emprestar livros,
 * listar clientes e livros, renovar empréstimos, devolver livros, excluir clientes
 * ou livros, ou sair do sistema.
 * A escolha do usuário é lida e a ação correspondente é executada.
 *
 * @return Retorna 0 quando o programa termina.
 */
int main() {
    int opcao; /**< Variável que armazena a opção escolhida pelo usuário. */

    // Laço que mantém o menu em execução até o usuário escolher a opção de sair (opção 10).
    do {
        // Exibe o menu de opções
        printf("\nMenu:\n");
        printf("1. Cadastrar cliente\n");
        printf("2. Cadastrar livro\n");
        printf("3. Emprestar livro\n");
        printf("4. Listar clientes\n");
        printf("5. Listar livros\n");
        printf("6. Renovar emprestimo\n");
        printf("7. Devolver livro\n");
        printf("8. Excluir cliente\n");
        printf("9. Excluir livro\n");
        printf("10. Sair\n");
        printf("Escolha uma opcao: ");
        scanf("%d", &opcao); /**< Lê a opção escolhida pelo usuário. */

        // Verifica a opção escolhida e chama a função correspondente
        switch(opcao) {
            case 1:
                cadastrarCliente(); /**< Chama a função para cadastrar um cliente. */
                break;
            case 2:
                cadastrarLivro();   /**< Chama a função para cadastrar um livro. */
                break;
            case 3:
                emprestarLivro();   /**< Chama a função para emprestar um livro. */
                break;
            case 4:
                listarClientes();   /**< Chama a função para listar todos os clientes cadastrados. */
                break;
            case 5:
                listarLivros();     /**< Chama a função para listar todos os livros cadastrados. */
                break;
            case 6:
                renovarLivro();     /**< Chama a função para renovar o empréstimo de um livro. */
                break;
            case 7:
                devolverLivro();    /**< Chama a função para devolver um livro emprestado. */
                break;
            case 8:
                excluirCliente();   /**< Chama a função para excluir um cliente. */
                break;
            case 9:
                excluirLivro();     /**< Chama a função para excluir um livro. */
                break;
            case 10:
                printf("Saindo...\n"); /**< Mensagem de saída do sistema. */
                break;
            default:
                printf("Opcao invalida!\n");
        }
    } while (opcao != 10); /**< O loop continua até o usuário escolher a opção de sair. */

    return 0;              /**< Retorna 0 indicando que o programa terminou com sucesso. */
}
