package body Biblioteka is
    function Silnia_Petla(N: Integer) return Integer is
        Result: Integer := 1;
    begin
        for I in 1 .. N loop
            Result := Result * I;
        end loop;
        return Result;
    end Silnia_Petla;

    function Silnia_Rekurencja(N: Integer) return Integer is
    begin
        if N < 2 then
            return 1;
        else
            return N * Silnia_Rekurencja(N - 1);
        end if;
    end Silnia_Rekurencja;

    function NWD_Petla(A, B: Integer) return Integer is
    Temp : Integer;
    A_Copy : Integer := A;
    B_Copy : Integer := B;
    begin
        while B_Copy /= 0 loop
            Temp := B_Copy;
            B_Copy := A_Copy mod B_Copy;
            A_Copy := Temp;
        end loop;
        return A_Copy;
    end NWD_Petla;

    function NWD_Rekurencja(A, B: Integer) return Integer is
    begin
        if B = 0 then
            return A;
        else
            return NWD_Rekurencja(B, A mod B);
        end if;
    end NWD_Rekurencja;

    function Rozwiaz_Rekurencja(A, B, C: Integer) return RownanieDiofantyczne is
        Wynik, Rozwiazanie: RownanieDiofantyczne;
    begin
        Wynik.Nwd := NWD_Petla(A, B);
        Wynik.A := A;
        Wynik.B := B;
        Wynik.C := C;
        
        if B = 0 then
            Wynik.X := C / A;
            Wynik.Y := 0;
        else
            Rozwiazanie := Rozwiaz_Rekurencja(B, A mod B, C);
            Wynik.X := Rozwiazanie.Y;
            Wynik.Y := Rozwiazanie.X - (A / B) * rozwiazanie.Y;
        end if;     
        return wynik;
    end Rozwiaz_Rekurencja;

    function Rozwiaz_Petla(A, B, C: Integer) return RownanieDiofantyczne is
        Wynik: RownanieDiofantyczne;
        A_Copy : Integer := A;
        B_Copy : Integer := B;
        C_Copy : Integer := C;
        x0, y0, x1, y1, q, temp: Integer;
    begin
        Wynik.Nwd := NWD_Petla(A, B);
        Wynik.A := A;
        Wynik.B := B;
        Wynik.C := C;
        
        x0 := 1;
        y0 := 0;
        x1 := 0;
        y1 := 1;
        
        while B_Copy /= 0 loop
            q := A_Copy / B_Copy;
            temp := B_Copy;
            B_Copy := A_Copy mod B_Copy;
            A_Copy := temp;
            temp := x1;
            x1 := x0 - q * x1;
            x0 := temp;
            temp := y1;
            y1 := y0 - q * y1;
            y0 := temp;
        end loop;
        Wynik.X := x0 * (C_Copy / A_Copy);
        Wynik.Y := y0 * (C_Copy / A_Copy);
        return wynik;
    end Rozwiaz_Petla;

end Biblioteka;