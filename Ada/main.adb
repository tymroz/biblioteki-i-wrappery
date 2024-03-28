with Biblioteka; use Biblioteka;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
begin
    Put("petla: 7! = ");
    Put_Line(Silnia_Petla(7)'Image);
    Put("rekurencja: 7! = ");
    Put_Line(Silnia_Rekrencja(7)'Image);
    
    Put("petla: NWD(170, 136) = ");
    Put_Line(NWD_Petla(170, 136)'Image);
    Put("rekurencja: NWD(170, 136) = ");
    Put_Line(NWD_Rekurencja(170, 136)'Image);
end Main;