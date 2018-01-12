public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
  //not used
}
public int findFirstVowel(String sWord)
  //precondition: sWord is a valid String of length greater than 0.
  //postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for (int i =0; i < sWord.length(); i++)
    if ( sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
      return i;
  return -1;
}


public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if (findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  } else if (sWord.substring(0, 2).equals("qu"))
  {
    return sWord.substring(2) + "quay";
  }
  else if (sWord.charAt(0) != 'a' && sWord.charAt(0) != 'e' && sWord.charAt(0) != 'i' && sWord.charAt(0) != 'o' && sWord.charAt(0) != 'u' && sWord.charAt(1) != 'a' && sWord.charAt(1) != 'e' && sWord.charAt(0) != 'i' && sWord.charAt(1) != 'o' && sWord.charAt(1) != 'u' && sWord.charAt(2) != 'a' && sWord.charAt(2) != 'e' && sWord.charAt(2) != 'i' && sWord.charAt(2) != 'o' && sWord.charAt(2) != 'u')
  {
    return sWord.substring(3) + sWord.substring(0,3) + "ay";
  }
  else if (sWord.charAt(0) != 'a' && sWord.charAt(0) != 'e' && sWord.charAt(0) != 'i' && sWord.charAt(0) != 'o' && sWord.charAt(0) != 'u' && sWord.charAt(1) != 'a' && sWord.charAt(1) != 'e' && sWord.charAt(0) != 'i' && sWord.charAt(1) != 'o' && sWord.charAt(1) != 'u')
  {
    return sWord.substring(2) + sWord.substring(0,2) + "ay";
  }
  else
{
  return sWord.substring(1) + sWord.substring(0, 1) + "ay";
}
}