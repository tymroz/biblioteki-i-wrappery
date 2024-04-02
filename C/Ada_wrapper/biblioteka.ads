package Biblioteka is

    function Silnia_Rekurencja(N: Integer) return Integer;
    pragma Export (C, Silnia_Rekurencja, "Silnia_Rekurencja");

    function Silnia_Petla(N: Integer) return Integer;
    pragma Export (C, Silnia_Petla, "Silnia_Petla");

    function NWD_Rekurencja(A, B: Integer) return Integer;
    pragma Export (C, NWD_Rekurencja, "NWD_Rekurencja");

    function NWD_Petla(A, B: Integer) return Integer;
    pragma Export (C, NWD_Petla, "NWD_Petla");

end Biblioteka;