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
   String wordy = new String();
  for(int i=0;i<word.length();i++)
{
  if(word.charAt(i)==' '){}
    else if(Character.isLetter(word.charAt(i))==false){}
    else
  wordy=wordy+word.charAt(i);
}
//System.out.println(help);
  if(wordy.equalsIgnoreCase(reverse(word)))
  return true;
  else
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
for(int i=str.length()-1;i>=0;i--)
{
  if(str.charAt(i)==' '){}
  else if(Character.isLetter(str.charAt(i))==false){}
  else
  sNew=sNew+str.charAt(i);
}
    return sNew;
}
