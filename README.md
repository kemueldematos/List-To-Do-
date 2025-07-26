![fotoPreview](fotoPreview.png)


# 📝 Lista de Tarefas em Swift (Terminal)

- Este é um projeto simples de **lista de tarefas** (to-do list) feito em **Swift**, que roda diretamente no terminal. O objetivo é praticar estruturas básicas da linguagem como listas, funções, optionals, controle de fluxo e entrada de dados.

## 📌 Funcionalidades

- 📋 Listar tarefas
- ➕ Adicionar novas tarefas
- ❌ Remover tarefas por índice
- ✏️ Editar tarefas existentes
- 🔃 Mudar a prioridade (posição) das tarefas
- 🚪 Encerrar o programa

## 🧠 Lógica

- O programa funciona com um laço "while true" que exibe um menu de opções para o usuário e responde conforme a entrada digitada. As tarefas são armazenadas em um array de strings chamado "ListadeTarefas"

## 📂 Organização do Código

- Funções como adicionarTarefas, removerTarefa, editarTarefa, etc., manipulam uma cópia do array e retornam a versão atualizada
- A lista principal é mantida na variável global listadeTarefas
- As operações são feitas com entrada interativa via readLine()

## 🚀 Possíveis melhorias

- Salvar as tarefas em arquivo (persistência de dados)
- Validar índices inválidos antes de remover ou editar
- Criar interface gráfica (usando SwiftUI, por exemplo)

## 👨‍💻 Autor

- Kemuel Áquila de Matos
