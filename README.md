Este programa permite gerenciar um sistema de empréstimos de livros, incluindo o cadastro de clientes, livros, empréstimos e devoluções, além da verificação de multas. Aqui está o guia passo a passo para usar o sistema:

1. Cadastrar Cliente
- Objetivo:
  Cadastrar um novo cliente no sistema.
- Passos:
  1. Escolha a opção 1 no menu.
  2. Informe o nome completo do cliente.
  3. Informe o CPF do cliente (apenas números).
  4. Informe o endereço completo do cliente.
  5. Informe o número de telefone do cliente (com 11 dígitos, incluindo o DDD).
  6. O sistema irá validar as informações fornecidas. Se algo estiver errado (como CPF ou telefone inválido), você será informado.
  7. Caso tudo esteja correto, o cliente será cadastrado com sucesso.

2. Cadastrar Livro
- Objetivo: Cadastrar um novo livro no sistema.
- Passos:
  1. Escolha a opção 2 no menu.
  2. Informe o título do livro.
  3. Informe o nome do autor.
  4. Informe o ISBN do livro (13 dígitos numéricos).
  5. O sistema irá validar o ISBN informado. Caso haja algum erro, você será informado.
  6. O livro será cadastrado e estará disponível para empréstimo.

3. Emprestar Livro
- Objetivo: Registrar o empréstimo de um livro a um cliente.
- Passos:
  1. Escolha a opção 3 no menu.
  2. Informe o ID do cliente que deseja pegar o livro emprestado.
  3. Informe o ID do livro que será emprestado.
  4. O sistema verificará se o cliente já tem um livro emprestado e se o livro está disponível.
  5. Se tudo estiver correto, o livro será emprestado e o cliente receberá uma data de devolução (14 dias após o empréstimo).
 
4. Listar Clientes
- Objetivo: Exibir a lista de clientes cadastrados.
- Passos:
  1. Escolha a opção 4 no menu.
  2. O sistema irá listar todos os clientes cadastrados, exibindo informações como ID, nome, CPF, endereço, telefone e informações sobre empréstimos e multas.

5. Listar Livros
- Objetivo: Exibir a lista de livros cadastrados.
- Passos:
  1. Escolha a opção 5 no menu.
  2. O sistema irá listar todos os livros cadastrados, mostrando o título, autor, ISBN, status (disponível ou emprestado) e, caso esteja emprestado, o ID do cliente que pegou o livro.

6. Renovar Empréstimo
- Objetivo: Renovar o prazo de devolução de um livro emprestado.
- Passos:
  1. Escolha a opção 6 no menu.
  2. Informe o ID do cliente que deseja renovar o empréstimo.
  3. O sistema irá verificar se o cliente possui um livro emprestado. Caso não tenha, será informado.
  4. Caso o livro esteja emprestado, o prazo de devolução será renovado por mais 14 dias.

7. Devolver Livro
- Objetivo: Registrar a devolução de um livro emprestado.
- Passos:
  1. Escolha a opção 7 no menu.
  2. Informe o ID do cliente que está devolvendo o livro.
  3. O sistema irá verificar se o cliente tem um livro emprestado. Se não tiver, será informado.
  4. Se o livro estiver atrasado, será calculada uma multa diária (R$ 1,00 por dia de atraso).
  5. O livro será devolvido, e o status será atualizado como disponível.

8. Excluir Cliente
- Objetivo: Excluir um cliente do sistema.
- Passos:
  1. Escolha a opção 8 no menu.
  2. Informe o ID do cliente a ser excluído.
  3. O sistema irá verificar se o cliente existe. Caso contrário, será informado.
  4. O cliente será excluído, e os dados serão removidos da lista de clientes.

 9. Excluir Livro
- Objetivo: Excluir um livro do sistema.
- Passos:
  1. Escolha a opção 9 no menu.
  2. Informe o ID do livro a ser excluído.
  3. O sistema irá verificar se o livro está emprestado. Se estiver, você não poderá excluí-lo.
  4. Se o livro não estiver emprestado, ele será excluído.

10. Sair
 
Função: Sair do Sistema
 
- Objetivo: Finalizar o uso do sistema.
- Passos:
  1. Escolha a opção 10 no menu.
  2. O sistema exibirá a mensagem "Saindo..." e finalizará.
