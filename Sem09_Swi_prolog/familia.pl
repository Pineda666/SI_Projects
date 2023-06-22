% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

% BASE DE HECHOS
progenitor(alejandro,fernando).
progenitor(alejandro,raul).
progenitor(sabina,fernando).
progenitor(sabina,raul).
progenitor(fernando,leonardo).
progenitor(fernando,camila).
progenitor(karina,leonardo).
progenitor(karina,camila).
progenitor(raul,andre).
progenitor(raul,eduardo).
progenitor(vanessa,andre).
progenitor(vanessa,eduardo).
% BASE DE REGLAS
abuelo(A,N):-progenitor(P,N),progenitor(A,P).
hermano(H1,H2):-progenitor(P,H2),progenitor(P,H1),H1\=H2.
tio(T,S):-progenitor(P,S),hermano(T,P).
