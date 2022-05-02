import 'dart:io';
import 'dart:core';

var morse = [
  ".-",
  "-...",
  "-.-.",
  "-..",
  ".",
  "..-.",
  "--.",
  "....",
  "..",
  ".---",
  "-.-",
  ".-..",
  "--",
  "-.",
  "---",
  ".--.",
  "--.-",
  ".-.",
  "...",
  "-",
  "..-",
  "...-",
  ".--",
  "-..-",
  "-.--",
  "--.."
];
var atoz = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z"
];

void main() {
  var input = stdin.readLineSync();
  morse_decode(input, "");
}

bool is_valid(var input) {
  for (var i = 0; i < 26; i++) if (input == morse[i]) return true;
  return false;
}

void morse_decode(var toDecode, var decoded) {
  if (toDecode.length == 0)
    print(decoded);
  else {
    for (int i = 0; i < 26; i++) {
      if (toDecode.startsWith(morse[i])) {
        var currentDecoded = decoded + atoz[i];
        var currentToDecode = toDecode.substring(morse[i].length);
        morse_decode(currentToDecode, currentDecoded);
      }
    }
  }
}
