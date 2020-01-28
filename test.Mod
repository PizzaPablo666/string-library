MODULE test;
IMPORT strs, In, Out;

VAR myStr1, myStr2, newStr : strs.String;

BEGIN
  myStr1 := 'hello world!';
  myStr2 := 'lol kek :P';
  newStr := '';
  (*In.String(myStr);*)
  Out.String("My String = "); Out.String(myStr1); Out.Ln;

(* LENGTH *)
  Out.String("Length = ");
  Out.Int(strs.Length(myStr1),0); Out.Ln; 

(* APPEND *)
 Out.String("Appended text = ");
 strs.Append(myStr1,myStr2,newStr); 
 Out.String(newStr); Out.Ln; 

(* ASSIGN *)
 Out.String("Assigned text = ");
 strs.Assign(myStr1, newStr);
 Out.String(newStr); Out.Ln;

(* INSERT *)
 Out.String("Inserted text = ");
 strs.Insert(newStr, 3, "yeppy");
 Out.String(newStr); Out.Ln;

(* DELETE *)
 Out.String("Text after deleting = "); 
 strs.Delete(myStr2, 4,2, newStr);
 Out.String(newStr); Out.Ln;

(* POS *)
 Out.String("Position of the char = ");  
 Out.Int(strs.Pos(myStr1, '!'),0); Out.Ln;


Out.Ln;
In.Open;
In.Line(newStr); Out.Ln;

Out.String("My new string = "); Out.String(newStr); Out.Ln;

END test.
  


