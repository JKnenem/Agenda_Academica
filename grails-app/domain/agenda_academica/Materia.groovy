package agenda_academica

class Materia {

    String nome
    String professor
  
    static hasMany = [provas: Prova, trabalhos: Trabalho]
    static belongsTo = Aluno
    
    Set provas = new HashSet()
    Set trabalhos = new HashSet()
    
    static constraints = {
        nome (nullable:false, blank:false, maxSize:100)
        professor (nullable:false, blank:false, maxSize:100)
    }
       String toString(){
           "${this.class.name} : $nome"
    }
}
