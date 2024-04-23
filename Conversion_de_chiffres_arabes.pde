void setup() {
  String nombreArabe ="MCMXCIV";
  int nombreArabe = convertRomainToInteger(nombreRomain);
  if (nombreArabe == -1) {
    println(nombreRomain+" n'est pas un chiffre romain valide.");
  } else {
    println(nombreArabe);
  }
}
