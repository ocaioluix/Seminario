#include <stdio.h>
#include <string.h>
#include "cliente.h"
#include "validacao.h"
#include "livro.h"

// Definindo a multa diária por atraso
#define MULTA_DIARIA 1.00

// Declaração de um array para armazenar os clientes e a variável que mantém o total de clientes cadastrados
Cliente clientes[MAX_CLIENTES];
int totalClientes = 0;


/**
 * @brief Função para cadastrar um novo cliente no sistema.
 *
 * Esta função verifica se há espaço para novos clientes. Se houver, solicita os dados do cliente, como nome, CPF,
 * endereço, telefone, e valida cada um desses campos. Se os dados estiverem corretos, o cliente é cadastrado e
 * adicionado ao sistema.
 */
void cadastrarCliente() {
    // Verifica se a quantidade máxima de clientes foi atingida
    if (totalClientes >= MAX_CLIENTES) {
        printf("Não ha espaco para mais clientes.\n");
        return;
    }

    Cliente novo_cliente;
    // Solicita o nome do cliente
    printf("Digite o nome completo do cliente: ");
    while(getchar() != '\n'); // Limpa o buffer do teclado
    fgets(novo_cliente.nome, 100, stdin);
    novo_cliente.nome[strcspn(novo_cliente.nome, "\n")] = '\0'; // Remove a nova linha do final do nome

    // Verifica se o nome é válido
    if (strlen(novo_cliente.nome) == 0) {
        printf("Erro: O nome e obrigatorio!\n");
        return;
    }

    // Solicita o CPF do cliente e valida
    printf("Digite o CPF do cliente (somente numeros): ");
    fgets(novo_cliente.cpf, 15, stdin);
    novo_cliente.cpf[strcspn(novo_cliente.cpf, "\n")] = '\0';

    // Validação do CPF
    if (strlen(novo_cliente.cpf) == 0 || !validarCpf(novo_cliente.cpf)) {
        printf("Erro: CPF invalido! O CPF deve conter 11 digitos numericos.\n");
        return;
    }

    // Solicita o endereço do cliente e valida
    printf("Digite o endereco do cliente: ");
    fgets(novo_cliente.endereco, 200, stdin);
    novo_cliente.endereco[strcspn(novo_cliente.endereco, "\n")] = '\0';
    if (strlen(novo_cliente.endereco) == 0) {
        printf("Erro: O endereco e obrigatorio!\n");
        return;
    }

    // Solicita o telefone do cliente e valida
    printf("Digite o telefone do cliente (somente numeros, incluindo o DDD): ");
    fgets(novo_cliente.telefone, 15, stdin);
    novo_cliente.telefone[strcspn(novo_cliente.telefone, "\n")] = '\0';
    if (strlen(novo_cliente.telefone) == 0 || !validarTelefone(novo_cliente.telefone)) {
        printf("Erro: Numero de telefone invalido! O telefone deve ter 11 digitos (incluindo o DDD).\n");
        return;
    }

    // Atribui um ID único ao cliente e inicializa os dados de empréstimo e multa
    novo_cliente.id = totalClientes + 1;
    novo_cliente.livroEmprestadoId = -1;
    novo_cliente.multa = 0.0;

    // Adiciona o cliente no array de clientes e incrementa o contador
    clientes[totalClientes] = novo_cliente;
    totalClientes++;

    // Confirma que o cliente foi cadastrado com sucesso
    printf("Cliente '%s' cadastrado com sucesso!\n", novo_cliente.nome);
}


/**
 * @brief Função para excluir um cliente cadastrado no sistema.
 *
 * Solicita o ID do cliente a ser excluído, verifica se ele existe no sistema e o remove, atualizando a lista de clientes.
 */
void excluirCliente() {
    int idCliente;

    // Solicita o ID do cliente a ser excluído
    printf("Digite o ID do cliente a ser excluido: ");
    scanf("%d", &idCliente);

    // Verifica se o cliente existe
    if (idCliente < 1 || idCliente > totalClientes) {
        printf("Cliente nao encontrado.\n");
        return;
    }

    // Remove o cliente e atualiza o array de clientes
    for (int i = idCliente - 1; i < totalClientes - 1; i++) {
        clientes[i] = clientes[i + 1];
    }

    totalClientes--; // Decrementa o contador de clientes
    printf("Cliente excluido com sucesso.\n");
}


/**
 * @brief Função para listar todos os clientes cadastrados no sistema.
 *
 * Exibe os dados de todos os clientes, incluindo o nome, CPF, endereço, telefone e informações sobre empréstimos de livros.
 */
void listarClientes() {
    // Verifica se não há clientes cadastrados
    if (totalClientes == 0) {
        printf("Nenhum cliente cadastrado.\n");
        return;
    }

    time_t agora = time(NULL);

    // Exibe a lista de clientes
    printf("Lista de clientes:\n");
    for (int i = 0; i < totalClientes; i++) {
        Cliente *cliente = &clientes[i];
        printf("ID: %d\n Nome: %s\n CPF: %s\n Endereco: %s\n Telefone: %s\n",
               cliente->id, cliente->nome, cliente->cpf, cliente->endereco, cliente->telefone);

        // Exibe informações sobre o livro emprestado, se houver
        if (cliente->livroEmprestadoId != -1) {

            struct tm *tm_info = localtime(&cliente->dataDevolucao);
            char dataDevolucao[20];
            strftime(dataDevolucao, sizeof(dataDevolucao), "%d/%m/%Y", tm_info);
            printf(" Data de devolucao prevista: %s\n", dataDevolucao);

            // Calcula a multa se o livro estiver atrasado
            if (agora > cliente->dataDevolucao) {
                cliente->multa = difftime(agora, cliente->dataDevolucao) / (60 * 60 * 24) * MULTA_DIARIA;
                printf(" Multa de atraso: R$ %.2f\n", cliente->multa);
            } else {

                printf(" Multa de atraso: R$ 0.00\n");
            }
        } else {
            printf(" Nenhum livro emprestado\n");
        }

        printf("\n");
    }
}


/**
 * @brief Função para emprestar um livro a um cliente.
 *
 * Solicita os IDs do cliente e do livro, verifica a disponibilidade do livro e, se tudo estiver correto,
 * registra o empréstimo no sistema.
 */
void emprestarLivro() {
    int idCliente, idLivro;

    // Solicita o ID do cliente
    printf("Digite o ID do cliente: ");
    scanf("%d", &idCliente);

    // Verifica se o cliente existe
    if (idCliente < 1 || idCliente > totalClientes) {
        printf("Cliente nao encontrado.\n");
        return;
    }

    Cliente *cliente = &clientes[idCliente - 1];

    // Verifica se o cliente já possui um livro emprestado
    if (cliente->livroEmprestadoId != -1) {
        printf("Este cliente ja possui um livro emprestado.\n");
        return;
    }

    // Solicita o ID do livro
    printf("Digite o ID do livro: ");
    scanf("%d", &idLivro);

    // Verifica se o livro existe e está disponível para empréstimo
    if (idLivro < 1 || idLivro > totalLivros) {
        printf("Livro nao encontrado.\n");
        return;
    }

    Livro *livro = &livros[idLivro - 1];

    if (!livro->disponivel) {
        printf("Este livro nao esta disponivel para emprestimo.\n");
        return;
    }

    // Registra o empréstimo do livro
    cliente->livroEmprestadoId = idLivro;
    cliente->dataEmprestimo = time(NULL);
    cliente->dataDevolucao = time(NULL) + (14 * 24 * 60 * 60); // 14 dias de prazo para devolução

    livro->disponivel = 0; // Marca o livro como emprestado

    // Confirma o empréstimo
    printf("Livro '%s' emprestado com sucesso ao cliente '%s'.\n", livro->titulo, cliente->nome);
}


/**
 * @brief Função para renovar o empréstimo de um livro.
 *
 * Permite ao cliente renovar o empréstimo de um livro, estendendo o prazo de devolução.
 */
void renovarLivro() {
    int idCliente;

    // Solicita o ID do cliente para renovação
    printf("Digite o ID do cliente para renovar o emprestimo: ");
    scanf("%d", &idCliente);

    // Verifica se o cliente existe
    if (idCliente < 1 || idCliente > totalClientes) {
        printf("Cliente nao encontrado.\n");
        return;
    }

    Cliente *cliente = &clientes[idCliente - 1];

    // Verifica se o cliente possui um livro emprestado
    if (cliente->livroEmprestadoId == -1) {
        printf("Este cliente nao tem livro emprestado.\n");
        return;
    }

    Livro *livro = &livros[cliente->livroEmprestadoId - 1];

    // Renova o prazo do empréstimo
    if (!livro->disponivel) {
        printf("Este livro esta emprestado, renovando emprestimo...\n");
        cliente->dataDevolucao = time(NULL) + (14 * 24 * 60 * 60); // Estende o prazo por mais 14 dias
        printf("Emprestimo renovado com sucesso para o livro '%s'.\n", livro->titulo);
    }
}


/**
 * @brief Função para devolver um livro.
 *
 * Processa a devolução do livro emprestado por um cliente, calculando a multa por atraso, se houver.
 */
void devolverLivro() {
    int idCliente;

    // Solicita o ID do cliente para devolução
    printf("Digite o ID do cliente para devolver o livro: ");
    scanf("%d", &idCliente);

    // Verifica se o cliente existe
    if (idCliente < 1 || idCliente > totalClientes) {
        printf("Cliente nao encontrado.\n");
        return;
    }

    Cliente *cliente = &clientes[idCliente - 1];

    // Verifica se o cliente possui um livro emprestado
    if (cliente->livroEmprestadoId == -1) {
        printf("Este cliente nao tem livro emprestado.\n");
        return;
    }

    Livro *livro = &livros[cliente->livroEmprestadoId - 1];


    // Verifica se há multa por atraso
    time_t agora = time(NULL);
    if (agora > cliente->dataDevolucao) {
        cliente->multa = difftime(agora, cliente->dataDevolucao) / (60 * 60 * 24) * MULTA_DIARIA;
        printf("Este livro esta atrasado. Multa gerada: R$ %.2f\n", cliente->multa);
    }


    // Marca o livro como disponível novamente e finaliza o empréstimo
    livro->disponivel = 1;
    cliente->livroEmprestadoId = -1;

    // Confirma a devolução
    printf("Livro '%s' devolvido com sucesso.\n", livro->titulo);
}

