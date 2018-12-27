package agenda_academica

class Grupo {

    String nome
    String descricao

    static belongsTo = Aluno
    
    static constraints = {
        nome (nullable:false, unique:true, blank:false, maxSize:100)
        descricao (nullable:false, blank:false, maxSize:1000)
    }
    
    String toString(){
        "${this.class.name} : $nome"
    }
}
