import Foundation

func exibirTarefas(){
    print(listadeTarefas)
}

func adicionarTarefas(tarefa: String, listadeP: [String]) -> [String]{
    var listaInterna = listadeP
    listaInterna.append(tarefa)
    return listaInterna
}

func removerTarefa(tarefa: Int, listadeP: [String]) -> [String]{
    var listaInterna = listadeP
    listaInterna.remove(at: tarefa)
    return listaInterna
}

func editarTarefa(tarefa: Int, tarefa2: String, listadeP: [String]) -> [String]{
    var listaInterna = listadeP
    listaInterna.remove(at: tarefa)
    listaInterna.insert(tarefa2, at: tarefa)
    return listaInterna
}

func mudarPrioridade(tarefa: Int, tarefa2: Int, listadeP: [String]) -> [String]{
    var listaInterna = listadeP
    listaInterna.swapAt(tarefa, tarefa2)
    return listaInterna
}

func encerrarPrograma(){
    exit(0)
    
}

var listadeTarefas: [String] = [] 

while true {
    
    print("""
    === LISTA DE TAREFAS ===

    OPÇÕES:
    
    1.Listar Tarefas
    2.Adicionar Tarefa
    3.Remover Tarefa
    4.Edite uma Tarefa
    5.Mudar prioridade da Tarefa
    6.Sair
    
    """)
    
    guard let entrada = readLine(), let entrada = Int(entrada) else {
        print("O tipo de valor Inserido esta Incorreto!")
        continue
    }

    switch entrada{
        case 1:
            exibirTarefas()
        
            
        case 2:
            print("Insira sua Tarefa:")
            guard let valor = readLine() else{
                exit(1)
            }
            
            listadeTarefas = adicionarTarefas(tarefa: valor, listadeP: listadeTarefas) 

        case 3:
            print("Selecione a tarefa que você quer remover (índice):")
            guard let valor = readLine(), let valor = Int(valor) else{
                exit(1)
            }
            
            listadeTarefas = removerTarefa(tarefa: valor, listadeP: listadeTarefas)
            
        case 4:
            print("Me diga o índice da tarefa a ser editada:")
            guard let valor = readLine(), let valor = Int(valor) else{
                exit(1)
            }
            
            print("Insira a nova tarefa:")
            guard let valor2 = readLine() else{
                exit(1)
            }
            
            listadeTarefas = editarTarefa(tarefa: valor, tarefa2:valor2, listadeP: listadeTarefas)
        
        case 5:
            print("Selecione o índice da a opção que você quer mover:")
            guard let valor = readLine(), let valor = Int(valor) else{
                exit(1)
            }
            
            print("Selecione o índice para onde ela vai:")
            guard let valor2 = readLine(), let valor2 = Int(valor2) else{
                exit(1)
            }
            
            listadeTarefas = mudarPrioridade(tarefa: valor, tarefa2: valor2, listadeP: listadeTarefas)
       
       
        case 6:
            print("""
            Programa Encerrado!
            
            """)    
            encerrarPrograma()
            
        
        default:
            continue
    }
}


