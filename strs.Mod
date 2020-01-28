MODULE strs;
IMPORT Out;

TYPE String* = ARRAY 256 OF CHAR;

PROCEDURE Length*(VAR s: String): INTEGER;
  VAR i : INTEGER;
BEGIN
  i := 0;
  WHILE(s[i] # 0X) DO
      INC(i);
      END;
  RETURN i;
END Length;


PROCEDURE Append*(str1, str2 : String; VAR newStr: String);
VAR 
    len, i : INTEGER;
BEGIN
    i := 0;
    newStr := str1;
    len := Length(str1);

    WHILE (str2[i] # 0X) DO
      newStr[len] := str2[i];
      INC(len);
      INC(i);
      END;
END Append;

PROCEDURE Assign*(VAR src, dst: String);
VAR len, i : INTEGER;
BEGIN
i:= 0;
len := Length(src);
WHILE i < len DO
    dst[i] := src[i];
    INC(i);
    END;
dst[i] := 0X;

END Assign;


PROCEDURE Insert*(VAR src: String; pos: INTEGER; ins: String);
VAR temp, tmp1 : String;
    i ,j, lenAppnd: INTEGER;

BEGIN
temp := ''; i := 0; j:=0;

WHILE (i < pos) DO
   temp[i] := src[j];
   INC(j);
   INC(i);
END;

Append(temp,ins,tmp1);
lenAppnd := Length(tmp1);

WHILE (src[pos] # 0X) DO
    tmp1[lenAppnd] := src[pos];
    INC(pos);
    INC(lenAppnd);
END; 
  src := tmp1;
END Insert;

PROCEDURE Delete*(src: String; pos: INTEGER; n: INTEGER; VAR dest: String);
VAR i, j, len: INTEGER;
    tmp : String;
BEGIN
 len := Length(src) - n;
 i := 0; j:= 0;

 WHILE (i <= len+1) DO
   IF ((i < pos) OR (i >= (pos + n))) THEN 
   tmp[j] := src[i];
   INC(j);
   END;
  INC(i);
 END;

dest := tmp;
END Delete;

PROCEDURE Pos*( src: String; ch: CHAR): INTEGER;
VAR i,len, pos : INTEGER;
    found : BOOLEAN;
BEGIN
pos := -1;
found := FALSE;
WHILE i <= Length(src) DO 
   IF ((src[i] = ch) & (~found))  THEN
       pos := i + 1;
       found := TRUE;
    END;
       INC(i);
END;

RETURN pos;

END Pos;

END strs.
