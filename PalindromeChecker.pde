public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord){
  boolean status = true;
  sWord = noSpaces(sWord);
  sWord = onlyLetters(sWord);
  sWord = noCapitals(sWord);
  char [] array = new char[sWord.length()];
  for(int i = 0; i<sWord.length(); i++){
    array[i] = sWord.charAt(i);
  }
  char [] reverseArray = reverse(array);
  for(int i = 0; i<sWord.length(); i++){
    if(array[i]!=reverseArray[i]) {
      status = false;
    }
  }
  return status;
}

public String noSpaces(String sWord){
  String newWord = sWord.replaceAll(" ", "");
  return newWord;
}
public String onlyLetters(String sString){
  for(int i = 0; i<sString.length(); i++) {
    if(Character.isLetter(sString.charAt(i))==false) {
      sString=sString.substring(0,i)+sString.substring(i+1,sString.length());
      i--;
    }
  }
  return sString;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}



public String reverse(String str)
{
    String sNew = new String();
    sNew = str.substring(str.length()-1,str.length())+reverse(str.substring(0,str.length()-1));
    return sNew;
}
