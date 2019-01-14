public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
  
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int i = 0; i <= sWord.length() - 1; i++){
    if(sWord.substring(i,i+1).equals("a")){
      return i;
    }else if(sWord.substring(i,i+1).equals("e")){
      return i;
    }else if(sWord.substring(i,i+1).equals("i")){
      return i;
    }else if(sWord.substring(i,i+1).equals("o")){
      return i;
    }else if(sWord.substring(i,i+1).equals("u")){
      return i;
    }
  }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
  return sWord + "ay";
	}
	else if(sWord.substring(0,2).equals("qu"))
	{
    String a = sWord.substring(2,sWord.length());
    String b = a + "quay";
    return b;
	}else {
    if(!sWord.substring(0,1).equals("e")){
      if(!sWord.substring(0,1).equals("a")){
        if(!sWord.substring(0,1).equals("i")){
          if(!sWord.substring(0,1).equals("o")){
            if(!sWord.substring(0,1).equals("u")){
              String c = sWord.substring(0,1);
              String d = sWord.substring(1,sWord.length());
              return d + c + "ay";
            }
          }
        }
      }
    
  }else if(findFirstVowel(sWord) > -1){
    return sWord + "way";
    }
    return "lol";
    
  }
}
