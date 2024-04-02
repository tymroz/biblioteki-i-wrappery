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
end Biblioteka;