import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord){
  for (int i = 0; i < sWord.length(); i++)
  {
    String some = sWord.substring(i, i+1);
    if (some.equals("a") || some.equals("e") || some.equals("i") || some.equals("o") || some.equals("u"))
    {
      return i;
    }
  }
  return -1;
}
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	String something = new String();
	String the = new String();
	String other = sWord.substring(0, 2);
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if (other.equals("qu"))
	{
		something = sWord.substring(2);
		the = sWord.substring(0, 2);
		return something + the + "ay";
	}
	else if (findFirstVowel(sWord) > 0)
	{
		something = sWord.substring(2);
		the = sWord.substring(0, 2);
		return something + the + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
