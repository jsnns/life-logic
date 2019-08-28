% parental role
parent(heather, jacob).
parent(heather, colby).
parent(heather, alise).
parent(Father, Child) :-
	spouse(Father, Mother),
	parent(Mother, Child).

% relationships
spouse(heather, david).
spouse(X, Y) :- spouse(Y, X).

% genders
male(jacob).
male(colby).
female(alise).

% pets
pet(david, oreo).
pet(jacob, mango).
pet(colby, fry).
pet(X, Y) :-
	spouse(X, Z),
	pet(Z, Y).

sibling(X, Y) :-
	parent(Z, Y),
	parent(Z, X),
	X \== Y.

% grand pets are pets of your children
gpet(X, Y) :-
	parent(X, Z),
	pet(Z, Y),
	not(pet(X, Y)).
