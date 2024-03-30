package Biblioteka is
    type RownanieDiofantyczne is record
        A, B, C, X, Y, Nwd: Integer;
    end record;

    function Silnia_Rekrencja(N: Integer) return Integer;
    function Silnia_Petla(N: Integer) return Integer;
    function NWD_Rekurencja(A, B: Integer) return Integer;
    function NWD_Petla(A, B: Integer) return Integer;
    function Rozwiaz_Rekurencja(A, B, C: Integer) return RownanieDiofantyczne;
    function Rozwiaz_Petla(A, B, C: Integer) return RownanieDiofantyczne;
end Biblioteka;