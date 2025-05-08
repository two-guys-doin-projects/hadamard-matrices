#set enum(numbering: "(i)")

= 2. Definicja
Macierze Hadamarda to specjalny typ mecierzy kwadratowych $HH in RR^(n times n)$w których wszystkie elementy przyjmują wartości ${+1, -1}$, a wiersze są wzajemnie ortogonalne. Oznacza to, że iloczyn skalarny dowolnych dwóch różnych wierszy wynosi zero. Formalnie:
#align(center)[$H H^T = n I_n$]
gdzie $I_n$ to macierz jednostkowa stopnia $n$.
Przykłady macierzy Hadamarda:
#align(center)[
  $H_1 = mat(
		1;
	)$
  #h(1em)
	$H_4 = mat(
		1, 1; 
		1, -1;
	)$
  #h(1em)
  $H_4 = mat(
		-1, 1, 1, 1;
		1, -1, 1, 1;
		1, 1, -1, 1;
		1, 1, 1, -1
	)$
]

== Własności macierzy Hadamarda
+ $H H^T = n I_n$ - iloczyn macierzy przez jej transpozycję daje skalowaną macierz jednostkową,
+ $|det A| = n^(n/2)$ - maksymalna możliwa wartość wyznacznika,
+ $H H^T = H^T H$ - macierz normalna
+ Macierze Hadamarda można przekształcać w inne macierze Hadamarda przez:
  - permutację wierszy i/lub kolumn,
  - mnożenie dowolnego wiersza lub kolumny przez -1.
+ Każda macierz Hadamarda jest H-równoważna z macierzą, w której pierwszy wiersz i pierwsza kolumna składają się tylko z +1+1. Takie macierze nazywamy znormalizowanymi.
+ Dla każdej macierzy Hadamarda rzędu $4n$:
  - każda kolumna/wiersz zawiera dokładnie $2n$ wartości {$-1, +1$}
  - każda para wierszy (lub kolumn) pokrywa się w nn miejscach, gdzie występuje $-1$ (czyli mają wspólne minusy w dokładnie $n$ pozycjach).
+ Możliwe są tylko rozmiary macierzy 1,2 lub $4n$, dla dowolnego dodatniego $n$