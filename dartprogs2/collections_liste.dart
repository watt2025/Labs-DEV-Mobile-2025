void main(){
  /*
  final List<String> jours=[];
  print("la liste est vide:${jours.isEmpty}");

  jours.add("Lundi");
  jours.add("mardi");
  jours.add("Mercredi");

 // print("$jours est de taille ${jours.length}");

  jours.addAll([
    "jeudi",
    "vendredi",
    "samedi",
    "Dimanche"
    ]);

    print("les ${jours.length} jours de la semaine sont: $jours");

    print("${jours.first} --> ${jours.last}");


final List<String> mois=[];

mois.addAll([
  "Janvier",
  "Fevrier",
  "Mars",
  "Avril",
  "Mai",
  "Juin",
  "Juillet",
  "Aout",
  "Septembre",
  "Octobre",
  "Novembre",
  "Decembre"
]);

var ordreAleatoire=mois.toList(); // creation d´une copie
ordreAleatoire.shuffle(); // melange


print("Les ${mois.length} mois de l´annee sont $mois");
print("${mois.first} --> ${mois.last}");

print("Ordre aleatoire: $ordreAleatoire");
print("Liste Vers CSV: ${ordreAleatoire.join(';')}");

print("Jours non tries: $ordreAleatoire");

ordreAleatoire.sort(
  (String str1,String str2) => str1.compareTo(str2)
);

print("Jours tries : $ordreAleatoire");

var nombres= [14,4,15,6];
nombres.sort();

print("nombres tries : $nombres");

var nouveauxjours=jours.map(
  (unJour){
    return unJour.toUpperCase();
  }
).toList();

print("$jours --> $nouveauxjours");


// reduce permet de combiner les elements du tableau
// reduction de la somme
*/
final nombresReels= <double>[10,2,5,0.5];

// calcul de la somme

var somme=nombresReels.reduce((value,element)=>value+element);

// calcul de la moyenne

var moyenne=nombresReels
   .reduce((value,element)=>value+element/nombresReels.length);

// calcul de max
var max=nombresReels
    .reduce((value,element)=>element>value? element:value);

// calcul de min
var min=nombresReels
    .reduce((value,element)=>element<value? element:value);

print("Tableau --> $nombresReels");

print("Max :$max -- MIN: $min -- SOMME:$somme -- Moyenne : $moyenne");

// parcourir avec la methode  forEach

nombresReels.forEach((element){
  print("${element*2}");
});

print("____________________________________________________________________");

// parcourir avec la mmethode for-in qui s´applique sur des iterable
for (var nb in nombresReels) {
  print("${2*nb}");
  
}




}