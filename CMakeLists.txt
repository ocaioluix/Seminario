# Define a versão mínima do CMake necessária para o projeto
cmake_minimum_required(VERSION 3.27)

# Define o nome do projeto e a linguagem utilizada (C)
project(projeto04 C)

# Define o padrão da linguagem C a ser utilizada no projeto
set(CMAKE_C_STANDARD 11)

# Adiciona os arquivos fonte e cabeçalhos ao executável
add_executable(projeto04
        main.c        # Arquivo principal do programa
        cliente.c     # Implementação das funções de cliente
        cliente.h     # Cabeçalho com declarações das funções de cliente
        livro.c       # Implementação das funções de livro
        livro.h       # Cabeçalho com declarações das funções de livro
        validacao.c   # Implementação das funções de validação (CPF, ISBN, telefone)
        validacao.h   # Cabeçalho com declarações das funções de validação
)
