media(leonardo, iac, 10.0).
media(raphael, iac, 9.5).
media(leonardo, tecii, 8.0).
media(raphael, tecii, 8.5).
media(leonardo, paa, 7.0).
media(luis, iac, 7.0).
media(ana, iac, 5.0).
media(luis, tecii, 3.0).
media(luis, paa, 2.5).
media(raphael, paa, 3.0).
media(ana, tecii, 3.0).
media(ana, paa, 2.5).

situacao(X, Y) :- media(X, Y, Z), 
	(
		(Z >= 6.0, Z =< 10.0, write(X), write(' aprovado em '), write(Y));
		(Z >= 3.0, Z < 6.0, write(X), write(' em recuperacao em '), write(Y));
		(Z >= 0.0, Z < 3.0, write(X), write(' reprovado em '), write(Y));
		((Z > 10.0; Z < 0.0), write('Nota inválida!'))
	).
