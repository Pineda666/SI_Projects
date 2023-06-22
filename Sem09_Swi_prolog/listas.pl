% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

imprimir([]):-!.
imprimir([H|T]):-write(H),imprimir(T).
sumar([],S):-write("La suma es:"),write(S).
sumar([H|T],S):-S1 is S + H, sumar(T,S1).
fact(0,1):-!.% Caso de parada
fact(N,F):-N1 is N-1,fact(N1,F1),F is N*F1.% caso recursivo
factorial(0,F):-write("El factorial es: "),write(F).
factorial(N,F):-N1 is N-1,F1 is N*F,factorial(N1,F1).


%fecha(2,"abril",1988).
%fecha(3,"mayo",1989).
%fecha(4,"mayo",1990).
%fecha(5,"junio",1990).

cumple("juan",fecha(2,"abril",1988)).
cumple("carlos",fecha(3,"mayo",1989)).
cumple("maria",fecha(4,"mayo",1990)).
cumple("luis",fecha(5,"junio",1990)).
