void main(List<String>args){
  //varibleNonNullable();
  //variableNullable();

  //forceWithAssertion();
  makeIncrement();
}

void makeIncrement() {
  int? someNumber;
  increaseValue(someNumber);
}

void increaseValue(int? value) {
  value=value?? 0; // initialisation en cas de valeur nulle
  print(value);

}
/*
void forceWithAssertion() {
  int? nombrePair=12; // varible nullable initialisee
  int nombreImpair; // variable non nullable
  
  //possible car dart utilise
  nombreImpair=nombrePair+1;
  
  //affectation null
nombrePair=null; // possible car nombre pair nullable
//force cette affectation qui va produire une erreur
nombrePair=nombrePair! +1;


}


void variableNullable() {
   String? nom = null;

  int? note;
  note=null; // affectation reussie!!!
  if(note !=null){
    note=note*2;
    print(note);
  }
  // l´operateur note ?? 1 <=> if(note == null ) return 1
  note=(note ?? 1)+13;

  print("Nom : ${nom ?? 'nomInconnu'}   Note: $note");

}


void varibleNonNullable() {
  // les non nullables doivent obligatoirement etre initialisees avec une valeur differente de nulle

  //Erreur !! ne peut avoir null comme valeur
  String nom = null;

  int note;
  note=null; // ne peut avoir null comme valeur
}
*/