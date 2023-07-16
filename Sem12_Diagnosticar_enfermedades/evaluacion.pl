% Ingreso de hechos
:-dynamic sintoma/1.
test(F):-write("impresion de prueba"),write(F).
listar_sintomas([]):-enfermedad(E),write(E).
listar_sintomas([H|T]):-assert(sintoma(H)),listar_sintomas(T).
% Validando reglas
enfermedad("Diabetes"):-sintoma(s1),sintoma(s2),sintoma(s3),sintoma(s4),sintoma(s5).
enfermedad("Hipertension"):-sintoma(s3),sintoma(s6),sintoma(s7),sintoma(s8),sintoma(s9),sintoma(s10),sintoma(s11),sintoma(s12),sintoma(s13),sintoma(s14),sintoma(s15),sintoma(s16).
enfermedad("Demencia"):- sintoma(s17),sintoma(s18),sintoma(s19),sintoma(s20),sintoma(s21),sintoma(s22),sintoma(s23),sintoma(s24),sintoma(s25).

enfermedad(_):-fail.
% Limpiando la memoria
limpiar:-retrac(sintoma(_)),fail.
limpiar.