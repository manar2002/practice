import 'dart:io';
import 'package:random_string/random_string.dart';
main(){
  print("""Welcome to hangman :
        -----------------------------------------""");
  List<String> wordDictionary = ["sunflower", "house", "diamond", "memes", "yeet", "hello", "howdy", "like", "subscribe" ];
  int index = int.parse(randomString(wordDictionary.length)) ;
  List randomWord = wordDictionary[index] as List ;

  for(String x in randomWord)
  {
  print("_ ");
  }

  int lengthOfWordToGuess = randomWord.length;
  int amountOfTimesWrong = 0;
  List<String> currentLettersGuessed = <String>[];
  int currentLettersRight = 0;

  while (amountOfTimesWrong != 6 && currentLettersRight != lengthOfWordToGuess)
  {
  print("Letters guessed so far: ");
  for (String letter in currentLettersGuessed)
  {
  print(letter + " ");
  }
  // Prompt user for input
  print("Guess a letter: ");
  String? letterGuessed = stdin.readLineSync();
  // Check if that letter has already been guessed
  if (currentLettersGuessed.contains(letterGuessed))
  {
  print(" You have already guessed this letter");
  printHangman(amountOfTimesWrong);
  currentLettersRight = printWord(currentLettersGuessed, randomWord[index]);
  printLines(randomWord[index]);
  }
  else
  {
  // Check if letter is in randomWord
  bool right = false;
  for (int i = 0; i < randomWord.length; i++)
  { if (letterGuessed == randomWord[i]) { right = true; } }

  // User is right
  if (right)
  {
  printHangman(amountOfTimesWrong);
  // Print word
  currentLettersGuessed.add(letterGuessed!);
  currentLettersRight = printWord(currentLettersGuessed, randomWord[index]);
  printLines(randomWord[index]);
  }
  // User was wrong af
  else
  {
  amountOfTimesWrong += 1;
  currentLettersGuessed.add(letterGuessed!);
  // Update the drawing
  printHangman(amountOfTimesWrong);
  // Print word
  currentLettersRight = printWord(currentLettersGuessed, randomWord[index]);
  printLines(randomWord[index]);
  }
  }
  }
  print("Game is over! Thank you for playing :)");
  }

void printLines(String randomWord) {
  for(int c in randomWord.codeUnits){
    print('\u0305 ');
  }
}
void printHangman(int wrong)
{
  if (wrong == 0)
  {
    print("""+---+
              |
              |
              |
             ===""");
  }
  else if (wrong == 1)
  {
    print("""+---+
           O   |
               |
               |
              ===""");
  }
  else if (wrong == 2)
  {
    print("""+---+
          O   |
          |   |
              |
             ===""");
  }
  else if (wrong == 3)
  {
    print("""+---+"
          O  |
         /|  |
             |
            ===""");
  }
  else if (wrong == 4)
  {
    print("""+---+
            O  |
           /|\\ |
               | 
              ===""");
  }
  else if (wrong == 5)
  {
    print("""+---+ 
            O  | 
           /|\\ | 
           /   | 
              ===""");
  }
  else if (wrong == 6)
  {
    print(""""+---+
            O   | 
           /|\\  | 
           / \\  | 
               ===""");
  }
}
int printWord(List<String> guessedLetters, List randomWord)
{
  int counter = 0;
  int rightLetters = 0;
  int index;
  for (String c in randomWord[index=0])
  {
    if (guessedLetters.contains(c))
    {
      print(c + " ");
      rightLetters += 1;
    }
    else
    {
      print("  ");
    }
    counter += 1;
  }
  //Console.Write("\r\n");
  return rightLetters;
}



