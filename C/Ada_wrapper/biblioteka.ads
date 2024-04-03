package Biblioteka is

    function Silnia_Rekurencja(N: Integer) return Integer;
    pragma Export (C, Silnia_Rekurencja, "Silnia_Rekurencja");

    function Silnia_Petla(N: Integer) return Integer;
    pragma Export (C, Silnia_Petla, "Silnia_Petla");

    function NWD_Rekurencja(A, B: Integer) return Integer;
    pragma Export (C, NWD_Rekurencja, "NWD_Rekurencja");

    function NWD_Petla(A, B: Integer) return Integer;
    pragma Export (C, NWD_Petla, "NWD_Petla");

    type RownanieDiofantyczne is record
        A, B, C, X, Y, Nwd: Integer;
    end record;

    function Rozwiaz_Rekurencja(A, B, C: Integer) return RownanieDiofantyczne;
    pragma Export (C, Rozwiaz_Rekurencja, "Rozwiaz_Rekurencja");

    function Rozwiaz_Petla(A, B, C: Integer) return RownanieDiofantyczne;
    pragma Export (C, Rozwiaz_Petla, "Rozwiaz_Petla");
end Biblioteka;