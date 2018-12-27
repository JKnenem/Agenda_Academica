package agenda_academica

class Aluno {

        String nome
        int cpf
        String sexo
        String senha 
        String email

        static hasMany = [anotacoes: Anotacao, materias: Materia]
        
        Set anotacoes = new HashSet()
        Set materias = new HashSet()

        static constraints = {
             nome (nullable:false, blank:false, unique: true, maxSize:100)
             cpf (nullable:false, blank:false, maxSize:312)
             sexo (inList:["F", "M"])
             senha (nullable:false, blank:false)
             email (nullable:false, unique: true, blank:false)
        }
        String toString(){
              "[" + this.getClass().getSimpleName() + "]" + nome + ", " + senha + ", " + email
        }
    }
