= 2. Właściwości
\
Jedną z łatwiej zauważalnych właściwości macierzy Hadamarda jest ilość wartości dodatnich oraz ujemnych w każdym wierszu oraz kolumnie (poza pierwszym wierszem oraz niekiedy pierwszą kolumną) - *jest ona równa $n$, gdzie $n in {1, 2, ...2k}, k in NN$*. Przyjrzyjmy się przykładowi macierzy $H_4$:

#align(center)[
	$H_4 = mat(
		1, 1, 1, 1;
		1, -1, 1, -1;
		1, 1, -1, -1;
		1, -1, -1, 1
	)$
]

Wszystkie (z wyjątkiem pierwszych) wiersze i kolumny mają po dwie wartości $1 " i " -1$. Jest jeszcze jedna właściwość, którą można dostrzec po zestawieniu dowolnych dwóch wierszy lub kolumn macierzy. Wybierzmy drugą i trzecią kolumnę:

#align(center)[
	$
		mat(
		1,1;
		-1, 1;
		1, -1;
		-1, -1
		)
	$
]

dokładnie połowa par ma te same znaki, a pozostała połowa - przeciwne.
\
Kolejną właściwością dotyczącą ilości elementów w tej macierzy jest fakt, że ilość wartości -1 w $H_n$ jest równa $n(n-1)/2$, a wartości 1 - $n(n+1)/2$.
