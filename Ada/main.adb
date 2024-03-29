with Biblioteka; use Biblioteka;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
    N : Integer := 7;
    K : Integer := 170;
    L : Integer := 136;
    A : Integer := 170;
    B : Integer := 134;
    C : Integer := 48;
    Result_Rek, Result_Petla : RownanieDiofantyczne;
begin
    Put("petla: " & Integer'Image(N) & "! = ");
    Put_Line(Silnia_Petla(N)'Image);
    Put("rekurencja: " & Integer'Image(N) & "! = ");
    Put_Line(Silnia_Rekrencja(N)'Image);
     
    Put("petla: NWD(" & Integer'Image(K) & ", " & Integer'Image(L) & ") = ");
    Put_Line(NWD_Petla(K, L)'Image);
    Put("rekurencja: NWD(" & Integer'Image(K) & ", " & Integer'Image(L) & ") = ");
    Put_Line(NWD_Rekurencja(K, L)'Image);

    Put(Integer'Image(A));
    Put("x + ");
    Put(Integer'Image(B));
    Put("y = ");
    Put_Line(Integer'Image(C));
    
    Result_Rek := Rozwiaz_Rekurencja(A, B, C);
    Result_Petla := Rozwiaz_Petla(A, B, C);
    
    if C mod Result_Rek.NWD /= 0 then
        Put_Line("Brak rozwiazan");
    else
        Put_Line("rekurencyjne: x = " & Integer'Image(Result_Rek.X) & " + " & Integer'Image(Result_Rek.B/Result_Rek.Nwd) & "k, y = " & Integer'Image(Result_Rek.Y) & " - " & Integer'Image(Result_Rek.A/Result_Rek.Nwd) & "k");
        Put_Line("petla: x = " & Integer'Image(Result_Petla.X) & " + " & Integer'Image(Result_Petla.B/Result_Petla.Nwd) & "k, y = " & Integer'Image(Result_Petla.Y) & " - " & Integer'Image(Result_Petla.A/Result_Petla.Nwd) & "k");
    end if;

end Main;