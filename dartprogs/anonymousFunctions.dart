void main(List<String>args){
  var somme = (int x, int y){
    return x+y;
  };

  print(somme(10 , 20));

  //Definition d´une fonction anonyme comme parametre d´une fonction

  diBonjour(nom: "Mamadou",(String message){
    print(message);
  });
}

void diBonjour(void f(String message),{String nom="" }) {
  f("Bonjour $nom.Soyez le bienvenu");
}