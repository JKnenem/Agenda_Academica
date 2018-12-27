package agenda_academica

class Anotacao {

    String titulo
    String texto
    Date data
    
    static belongsTo = [
      aluno: Aluno,
      grupo: Grupo
    ]

    static constraints = {
        titulo (nullable:false, unique: true, blank:false, maxSize:100)
        texto (nullable:false, blank:false, maxSize:1000)
        data (nullable:false, blank:false, maxSize:16)
    }
    
    String toString(){
        "${this.class.name} : $titulo"
    }
}
