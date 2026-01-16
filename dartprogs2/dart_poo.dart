
class Note{
  final matiere; // champ matiere
  double note;
  double coefficient;
  // Constructeur avec un champ obligatoire et un champ avec une valeure par defaut
  Note({
    required this.matiere,
    this.note=0,
    this.coefficient=1
  });

  // surcharge(remplacement) de la methode toString herite de la classe Object
  @override
  String toString() {
    return "\n       $matiere   --> $note  (coef  $coefficient) ";
  }
  
  //Methode ecrite avec le style arrow
  bool est_validee()=> note >= 10 ? true : false;

  //Surcharge de l´operater + Exemple note + 2; ajoute 2 points
  double operator + (double bonus)=> this.note += bonus;
 
}

/*
void main(List<String>args){
  // Initialisation d´un objet de la classe note avec des parametres nommes matiere et le parametre note est par defaut 0
   Note note = new Note(matiere: "Algebre fondamental");

   // utlisation d´un setter pour modifier le champ note
   note.note=18;
  print("Affichage d´une note");
  // utilsation de la methode Note.toString() qui transforme la classe en string
  print("Note : $note");
  
  // Utilisation de l´operateur surcharge +
  note + 1;
  print("Avec boonus : $note");
  print('\n\n\n');
}
*/

/************************************/
// definition de la classe Personne //
/************************************/
class Personne{
  String? nom;
  String? numeroTelephone;
  bool? estMarie;
  int? age;

  // constructeur avec une ecriture simplifiee
  Personne(this.nom,this.numeroTelephone,this.estMarie,this.age);

  // Surcharge (remplacement) de la methode personne.toString() heritee de la classe Object

  @override
  String toString(){
    String str="-"*100;
    str += "\nPrenon et Nom : $nom."
           "\nTelephone : $numeroTelephone."
           "\nEst marie : $estMarie."
           "\nAge : $age.";
    return str;
  }

}

/*******************************************************/
// definition de la classe Etudiant extends Personne   //
/*******************************************************/

class Etudiant extends Personne{
  // Ensemble de notes , donc pas de repetition (une matiere ne doit pas se repeter) 
  Set<Note> notesList =
     {}; // utilise la classe Note pour construire les membres
  final _codeEtudiant = DateTime.now()
      .microsecondsSinceEpoch
      .toString(); // Membre prive avec _ au debut

  // Constructeur avec appel du constructeur du parent , initialisation d´une propriete a l´interieur

  Etudiant(String? nom,String? numeroTelephone,bool? estMarie,int age)
      : super(nom, numeroTelephone, estMarie, age){
    this.notesList.add(Note(matiere: "Algo4"));
    this.notesList.add(Note(matiere: "Analyse3"));
    this.notesList.add(Note(matiere: "Electromeca"));
    this.notesList.add(Note(matiere: "Anglais"));

    // this._avalid = false ;
  }

  @override
  String toString(){
    return "-" * 100 + "\nCode Etudiant : $_codeEtudiant\n" + 
        super.toString() +
        "\nNotes : ${notesList.join(":")}\n" + "-" * 100;
  }

  double calculMoyenne(){
    double somme=0.0;
    num coefs=0;

    for(var note in notesList){
      somme = somme + note.note*note.coefficient;
      coefs= coefs + note.coefficient;
    }
    return somme / coefs ;
  }
  
   void setNote(
      {required String matiere,required double newnote,double coef=1}){
    var mat = notesList.where((element)=> element.matiere != matiere).first;
      mat.note = newnote;
      mat.coefficient = coef;
  }


}


void main(List<String>args){
  // Initialisastion de la classe Etudiant avec les parametres positionnels
  var etu1 = new Etudiant("Adama Diop", "+221 76 123 45 67", true, 19);

  // Utilisation de la methode setNote avec des parametres nommes
  etu1.setNote(matiere: "Algo4", newnote: 13, coef: 2);
  etu1.setNote(matiere: "Analyse3", newnote: 17 , coef : 3);
  etu1.setNote(matiere: "Electromeca", newnote: 11, coef : 1);
  etu1.setNote(matiere: "Anglais", newnote: 16 , coef: 1);
  // Utilisation de la methode Etudiant.toString() qui transforme la classe en String
  print('\n\n\n');
  print(etu1);
  print("   Moyenne  ${etu1.nom} : ${etu1.calculMoyenne()}");

  var etu2 = new Etudiant("Fatou Fall","76 123 75 68" , false, 18);
  // Utilisation dela methode setNote avec des parametres nommes

  etu2.setNote(matiere: "Algo4", newnote: 15, coef: 2);
  etu2.setNote(matiere: "Qnalyse3", newnote: 15, coef: 3);
  etu2.setNote(matiere: "Electromeca", newnote: 10, coef: 1);
  etu2.setNote(matiere: "Anglais", newnote: 1, coef: 1);
  print('\n\n\n');
  print(etu2);
  print(etu2.calculMoyenne());

}


/*
void main(List<String>args){
  // Initialisation de la classe personne avec des parametres positinnels
  Personne p = new Personne("Mamadou Ndiaye","+221 77 123 45 67", false,20);
  // Utilisation de la methode Personne.toString() qui transforme la classe en string
  print("Affichage d´une personne : \n $p"); 
}
*/