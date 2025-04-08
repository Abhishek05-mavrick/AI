% Facts 

parent(john, mary). 

parent(john, david). 

parent(susan, mary). 

parent(susan, david). 

parent(mary, linda). 

parent(mary, steve). 

 

% Rules 

father(X, Y) :- parent(X, Y), male(X). 

mother(X, Y) :- parent(X, Y), female(X). 

grandparent(X, Y) :- parent(X, Z), parent(Z, Y). 

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y. 

 

% Defining Gender 

male(john). 

male(david). 

male(steve). 

female(susan). 

female(mary). 

female(linda)  