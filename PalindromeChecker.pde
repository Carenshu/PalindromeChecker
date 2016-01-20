public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String word2= new String();
  
  for(int i=word.length()-1; i>=0;i--)
  {
    
    word2=word2+ word.substring(i,i+1);
    println("word2: "+word2);
    if (word2.equals(word))
    {
      return true; 
    }
  }
  return false;
}

