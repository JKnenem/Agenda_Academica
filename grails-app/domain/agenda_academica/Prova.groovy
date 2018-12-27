package agenda_academica

class Prova {

    String descricao
    Date data
    float nota
    
    static belongsTo = Materia  
    
    static constraints = {
        descricao (nullable:false, unique: true, blank:false, maxSize:1000)
        data (nullable:false, blank:false)
        nota (nullable:false, blank:false, maxSize:16)
    }
       String toString(){
            "${this.class.name} : $descricao"
    }
}
