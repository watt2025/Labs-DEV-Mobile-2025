void main(List<String>args){
  terrainDeJeuChaineDeCaractere();

}

void terrainDeJeuChaineDeCaractere() {
  //basicStringDeclaration();
  //multiLineStrings();
  conacatenationTradionnelle();
  moderneInterpolation();
}

void moderneInterpolation() {
  final annee=2011;
  final interpolated='Dart est cree en $annee';
  print(interpolated);
  final age=20;

  final howorld='Je suis ${age>18? 'majeur':'mineur'}';
  print(howorld);
}

void conacatenationTradionnelle() {
  final hello='Hello';
  final world="world";
  // l´operateur + permet de concatener des chaines

  final chainesCombinees=hello+' '+world;
  print(chainesCombinees);
}

void multiLineStrings() {
  final femmenNoire='''
  femme nue , femme noire
  vetue de ta couleure qui est vie, de ta forme qui est beaute
  j\´ai grandi a ton ombre ; la douceur de tes mains bandait mes yeux 

  et voila q\´au coeur de l\´ete et de midi,
  je te decouvre , terre promise, du haut d\´un haut col calcine
  et ta beaute me foudroie en plein coeur comme l\´eclair d\´un aigle
''';

print(femmenNoire);
}

void basicStringDeclaration() {
  print('cotes simples');

  final unePhrase='une chaine avec l\´echappement de caractere';
  print(unePhrase);

  // cotes doubles
  print("Bonjour pour les cotes  doubles");
  final uneAutrePhrase="Des 'cotes simples' dans cotes doubles";
  print(uneAutrePhrase);

  // combining single and double cotes
  final uneTroisiemePhrase='des "cotes doubles" dans des cotes simples';
  print(uneTroisiemePhrase);
}