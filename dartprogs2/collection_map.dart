void main(List<String>args){
  // map vide , Clé de type String, Valeur de int
 /*
  var superficieRegions=Map<String,int>();
  // Initialisaton avec des valeurs

  superficieRegions={
    "Dakar" : 547,
    "Ziguinchor": 7352,
    "Saint-louis": 19241,
  };

  // Ajout de nouveaux elements dans le map

  superficieRegions["Diourbel"]= 4824 ;
  superficieRegions["Tambacouda"]= 42364;
  superficieRegions["Thies"]= 6670;

  print("superficie des regions : $superficieRegions");

  // Utilisation de forEach sur map

  print("Meilleur presentation avec forEach :");

  superficieRegions.forEach((String key,int value){
    print("${key.padRight(15)} --> $value");
  });
 */
  printEmployer();
}

void printEmployer(){
  // les Cles sont des entiers , les valeurs sont des Maps

  Map employers = {
    200:{
      "Nom":"Abdoulaye Ndiaye",
      "Service":"Comptabilite",
      "Salaire":800000,
    },
    201:{
      "Nom":"Mareme Diouf",
      "Service":"Vente",
      "Salaire": 950000,
    },
    600:{
      "Nom":"Fatou Diallo",
      "Service": "Marketing",
      "Salaire":975000,
    }
  };

  print("-"*85);

  String headerLine="|" + "ID".padLeft(20) + "|";

  employers[200].keys.forEach((element){
    headerLine += element.toString().padLeft(20) + "|";
  });

 print(headerLine);
 print("-"*85);

 employers.forEach((keyemployer,dataemployer){
  print("|${keyemployer.toString().padLeft(20)}"
      "|${dataemployer['Nom'].padLeft(20)}"
      "|${dataemployer['Service'].padLeft(20)}"
      "|${dataemployer['Salaire'].toString().padLeft(20)}|");
      print("-"*85);
 });

 Map joueur={
  10:"messi",
  9:"suarez",
  11:"neymar",

 };

 joueur.forEach((numero,nom){
  print("Le numero de $nom est $numero");
 });




}