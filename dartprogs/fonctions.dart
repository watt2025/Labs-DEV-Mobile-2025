void main(List<String>args){
 // classicalFunctions();
//  optinalParameters();

}



/*
void optinalParameters() {
  fparametreOptionnel("Mamadou",20); // appel avec parametres optinnels
  fparametreOptionnel("Seynabou"); // appel avec seulement $name
  // impossible d´appeler avec seulement age car losrqu´un seul agument est fourni, il sera affecte au parametre age
  fparametreOptionnel(); // appel sans aprametes optionnels
  
}

void fparametreOptionnel([String? nom, int? age]) {
  final vraiNom=nom?? 'Inconnu'; // affecte 'Iconnu' si nom n´est pas fourni
  final vraiAge=age?? 0; // affecte  0 si age n´est pas fourni
  print('$vraiNom a $vraiAge annee(s)');
}
*/
/*
void optinalParameters() {
  //parametresNommes(salutation: 'salutations respectueuses'); 
  //parametresNommes(nom: 'Babacar'); 
  //parametresNommes(nom: 'Adama' , salutation: 'Bienvenue');

//print(suiteArithmetique(10,u0:10,pas:3)); 
//print(suiteArithmetique(10));
//print(suiteArithmetique(10,u0:10));
//print(suiteArithmetique(10,pas:3));
  //print(somme3(2,y:4,z:4));
  //print(somme3(10,y:3));
  //print(5);
  //print(somme3(1,z:2));

}
  
int suiteArithmetique(int n, { int u0=1, int pas=1}) {
  if(n==0){
    return u0;
  }else
  return n+suiteArithmetique(u0:u0,n-1,pas:pas);
}

void parametresNommes({String? salutation, String? nom}) {
  final vraiSalutation=salutation?? 'Bonjour'; // affecte 'Iconnu' si nom n´est pas fourni
  final vraiNom=nom?? 'Personne mystere'; // affecte  0 si age n´est pas fourni
  print('$vraiSalutation, $vraiNom !');
}


void classicalFunctions() {
  afficheMonNom('Mamadou');
  afficheMonNom('Ndeye Fatou');
  final sum=add(5,3);
  print("5 + 3 =$sum");
  print("factoriel 10 est ${factoriel(10)}");
}

factoriel(int i) {
  if(i<=0){
    return 1;
  }
  return i*factoriel(i-1);
}

add(int i, int j) {
  return i+j;
}

void afficheMonNom(String name) {
  print('Bonjour $name');
}

int somme3(int x,{int y=0,int z=0}){
  return x+y+z;
}
*/