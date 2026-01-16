
int add(int x,int y){
  return x+y;
}  

typedef NouveauTypeFonction = int Function(int a,int b); 

bool estImpair(int x){
  return (x%2)!=0;
}

bool estPair(int x){
  return (x%2)==0;
}


void afficher(bool varFonctionTest(int value)){
  for(int i=0;i<10;i++){
    if(varFonctionTest(i)){
      print(i);
    }
  }

}



void main(){
/*
 var maVariablefn=add;
 print("resultat de maVariablefn ${maVariablefn(10,20)}");

 NouveauTypeFonction maVariablefn2=add;
  print("resultat de maVariablefn2 ${maVariablefn2(10,20)}");
*/

print("Nombres Pairs:");
afficher(estPair);
print("Nombres impairs:");
afficher(estImpair);
}

