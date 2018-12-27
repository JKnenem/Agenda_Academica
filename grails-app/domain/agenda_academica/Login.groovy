package agenda_academica

class Login {

    String email
    String senha
    
    static constraints = {
        email (nullable:false, unique:true, blank:false, maxSize:100)
        senha (nullable:false, blank:false, maxSize:100)
    }
    
    String toString(){
        "${this.class.name} : $email"
    }
}