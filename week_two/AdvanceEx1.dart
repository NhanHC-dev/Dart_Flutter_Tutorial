import 'dart:io';

void main() {
  print("Enter a character: ");
  String? input = stdin.readLineSync()!;

  CharacterType characterType = checkCharacterType(input);

  switch (characterType) {
    case CharacterType.alphabet:
      print("'$input' is an alphabet.");
      break;
    case CharacterType.digit:
      print("'$input' is a digit.");
      break;
    case CharacterType.specialCharacter:
      print("'$input' is a special character.");
      break;
    default:
      print("'$input' is not recognized.");
  }
}

enum CharacterType { alphabet, digit, specialCharacter }

CharacterType checkCharacterType(String character) {
  if (character.length == 1) {
    if (RegExp(r'[a-zA-Z]').hasMatch(character)) {
      return CharacterType.alphabet;
    } else if (RegExp(r'[0-9]').hasMatch(character)) {
      return CharacterType.digit;
    } else if (RegExp(r'[?.!,]').hasMatch(character)) {
      return CharacterType.specialCharacter;
    }
  }
  return CharacterType.specialCharacter;
}
