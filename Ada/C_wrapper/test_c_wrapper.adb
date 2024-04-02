with biblioteka_h; use biblioteka_h;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Interfaces.C; use Interfaces.C;

procedure Test_C_Wrapper is
    N : int := 7;
    K : int := 170;
    L : int := 136;
    A : int := 170;
    B : int := 134;
    C : int := 48;
    Result_Rek, Result_Petla : RownanieDiofantyczne;
begin
    Put("petla: " & int'Image(N) & "! = ");
    Put_Line(silnia_petla(N)'Image);
    Put("rekurencja: " & int'Image(N) & "! = ");
    Put_Line(silnia_rekurencja(N)'Image);
     
    Put("petla: NWD(" & int'Image(K) & ", " & int'Image(L) & ") = ");
    Put_Line(NWD_petla(K, L)'Image);
    Put("rekurencja: NWD(" & int'Image(K) & ", " & int'Image(L) & ") = ");
    Put_Line(NWD_rekurencja(K, L)'Image);

    Put(int'Image(A));
    Put("x + ");
    Put(int'Image(B));
    Put("y = ");
    Put_Line(int'Image(C));
    
    Result_Rek := rozwiaz_rekurencja(A, B, C);
    Result_Petla := rozwiaz_petla(A, B, C);
    
    if C mod Result_Rek.NWD /= 0 then
        Put_Line("Brak rozwiazan");
    else
        Put_Line("rekurencyjne: x = " & int'Image(Result_Rek.X) & " + " & int'Image(Result_Rek.B/Result_Rek.Nwd) & "k, y = " & int'Image(Result_Rek.Y) & " - " & int'Image(Result_Rek.A/Result_Rek.Nwd) & "k");
        Put_Line("petla: x = " & int'Image(Result_Petla.X) & " + " & int'Image(Result_Petla.B/Result_Petla.Nwd) & "k, y = " & int'Image(Result_Petla.Y) & " - " & int'Image(Result_Petla.A/Result_Petla.Nwd) & "k");
    end if;

end Test_C_Wrapper;