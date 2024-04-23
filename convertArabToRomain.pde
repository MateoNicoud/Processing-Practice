int convertRomainToInteger (String wordToConvert) {
  if (!wordToConvert.matches("^(M{0,3})(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$")) {
    return -1;
  } else {
    char[] input = wordToConvert.toCharArray();
    int sum = 0;
    int i= 0;
    while (i<input.length) {
      if (i+2>input.length) {
        if (input[i] == 'I') {
          sum +=1;
        }
        if (input[i] == 'V') {
          sum +=5;
        }
        if (input[i] == 'X') {
          sum +=10;
        }
        if (input[i] == 'L') {
          sum +=50;
        }
        if (input[i] == 'C') {
          sum +=100;
        }
        if (input[i] == 'D') {
          sum +=500;
        }
        if (input[i] == 'M') {
          sum +=1000;
        }
        i++;
      } else {
        if (input[i+1] =='V' && input[i] =='I') {
          sum+=4;
          i+=2;
        } else if (input[i+1] =='X' && input[i] =='I') {
          sum+=9;
          i+=2;
        } else if (input[i+1] =='L' && input[i] =='X') {
          sum+=40;
          i+=2;
        } else if (input[i+1] =='C' && input[i] =='X') {
          sum+=90;
          i+=2;
        } else if (input[i+1] =='D' && input[i] =='C') {
          sum+=400;
          i+=2;
        } else if (input[i+1] =='M' && input[i] =='C') {
          sum+=900;
          i+=2;
        } else {
          if (input[i] == 'I') {
            sum +=1;
          }
          if (input[i] == 'V') {
            sum +=5;
          }
          if (input[i] == 'X') {
            sum +=10;
          }
          if (input[i] == 'L') {
            sum +=50;
          }
          if (input[i] == 'C') {
            sum +=100;
          }
          if (input[i] == 'D') {
            sum +=500;
          }
          if (input[i] == 'M') {
            sum +=1000;
          }
          i++;
        }
      }
    }

    return sum;
  }
}
