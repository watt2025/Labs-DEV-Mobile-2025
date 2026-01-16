
void main(List<String>args){
  terrainDeJeuVariables();
}

void terrainDeJeuVariables() {
  variableImmutable();
  interpolationDeType();
  variablesNonTypees();
  typesDeBase();
}

void typesDeBase() {
  int quatre=4;  // declaration d´un entier
  double pi=3.14;  // declaration d´un nombre reel
  num unNombre=1.42e5; // num: peut etre int ou double
  bool oui = true; // booleen avec la constante true
  bool non = false; // booleen avec la constante false
  int?  nothing; // variable non initialisee , valeur par defaut null

  print(quatre);
  print(pi);
  print(unNombre);
  print(oui);
  print(non);
  print(nothing);
}  


void variablesNonTypees(){
  dynamic cameleon="yahoo !!!";// declaraton comme dynamic type chaine
  print(cameleon.runtimeType);
  cameleon=3.14; //type change a double
  print(cameleon.runtimeType);
  cameleon=[1,2,3]; // type change a tableau
  print(cameleon.runtimeType); 
}


void interpolationDeType(){
  var aInteger=15; // Dart va deduire le type int
  var aDouble=27.2; // Dart va deuire le type double
  var aBoolean=false; // Dart va deduire le type booleen
  print(aInteger.runtimeType);
  print(aInteger);

  print(aDouble.runtimeType);
  print(aDouble);

  print(aBoolean.runtimeType);
  print(aBoolean);

}

void variableImmutable(){
  final int immuableInt=1000;
  final double immuableDouble=10.015e15;

  print(immuableInt);
  print(immuableDouble);

  final entier;
  final reelle;

  entier=23;
  reelle=2.5e2;

  print(entier.runtimeType);
  print(entier);

  print(reelle.runtimeType);
  print(reelle);

  const aFullySealedVariable=true;
  print(aFullySealedVariable);



}
