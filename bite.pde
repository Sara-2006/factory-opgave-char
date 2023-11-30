
void setup() {
  size(200, 200);
  textSize(50);
}

void draw() {
  background(205);
  if (bitMine()) {
    text(1, 50, 50);
  } else {
    text(0, 50, 100);
  }
}

boolean bitMine() {
  if (random(0, 2)>1) {
    return true;
  }
  return false;
}

byte makeByte() {
  byte b=0;
  for (int i=0; i<8; i++) {
    // du kan ikke løse opgaven hvis ikke du ved hvad en byte er og hvorfor du har en funktion bitMine()
    // din løkke kører 8 gange. En gang for hver bit der er i en byte.
    // Hvis svaret fra bitMine() er sand - beregn så bit'ens værdi. 
    //b=(byte) (b+pow(2, i)); Læs opgaven! Du skal læse om pow() i processings dokumentation  
  }
  return b;
}




char makechar() {
  char c ='c';
  byte b;
  for (int i = 0; true; i++) {
    b = makeByte();
    if ((b > 64 && b < 91) || (b > 96 && b < 123)) {
      c = char(b);
      return 'c';
    }
  }
}
