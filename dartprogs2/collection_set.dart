void main(List<String>args){
  // Creation de l´ensemble vide inference de type

  var unEnsemble=<int>{};
  // utilisaton des methodes add et addall
  unEnsemble.add(1);
  unEnsemble.addAll({99,12,5,2});
  print("Un ensemble= $unEnsemble");

  // Creation avec specificsation du type avec le mot clé Set

  Set<int> unAutreEnsemble = {1,2,4,3};

  // Les doublons vont etre supprimes meme si on en ajoute
   print("contenu de l´ensemble sans repetition --> $unAutreEnsemble");
   print("1 inclu dans unEnsemble ${unEnsemble.contains(1)}");
   print("--> 99 inclu dans unAutreEnsemble: ${unAutreEnsemble.contains(99)}");

  // Methode intersection de deux ensembles
    var intersection = unEnsemble.intersection(unAutreEnsemble);

  //Methode union de deux ensmbles
  var unionEnsemble=unEnsemble.union(unAutreEnsemble);

 // methode difference de deux ensembles (operation non commutative)
  var difference1=unEnsemble.difference(unAutreEnsemble);
  var difference2=unAutreEnsemble.difference(unEnsemble);
  print("INTERSECTION --> $unEnsemble inter $unAutreEnsemble = $intersection");
  print("UNION --> $unEnsemble union $unAutreEnsemble = $unionEnsemble");
  print("DIFFERENCE --> $unEnsemble - $unAutreEnsemble = $difference1");
  print("DIFFERENCE --> $unAutreEnsemble - $unEnsemble = $difference2");

  // parcourt avec des iterateur

  print("Utiliation d´iterateur");
  for(var n in unionEnsemble){
    print(n);
  }

}