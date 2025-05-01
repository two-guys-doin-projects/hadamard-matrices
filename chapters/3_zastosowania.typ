= 3. Zastosowania

Macierze Hadamarda mają zastosowanie w wielu dziedzinach matematyki oraz informatyki.

== 3.1 Funkcje Walsha

Funkcje Walsha są dyskretną alternatywą szeregu Fouriera; zbiór funkcji Walsha może zostać użyty do przybliżenia funkcji dyskretnych. Przyjmują wartości -1 lub 1 oraz są cykliczne.

#figure(
	image("images/chapter_3/1_walsh_functions_example.jpg"),
	caption: [
		Przykład funkcji Walsha. Źródło: #link("https://www.researchgate.net/figure/First-eight-continuous-sequency-ordered-Walsh-functions_fig1_224096583")[#text(fill: blue)[researchgate.net]]
	]
)

=== Formalna definicja szeregu funkcji Walsha $W_k: [0,1] -> {-1, 1}, k in NN$

Niech $k in NN, x in [0, 1]$, $k_j$ - $k$-ty bit binarnej postaci liczby $k$, $x_j$ - $j$-ty bit binarnej postaci liczby $x$. Wtedy:
#text(size: 1.2em)[
  #align(center)[
    $W_k(x) = (-1)^(sum_(j=0)^(infinity)k_j x_(j+1))$
  ]
]

Całkowity zbiór $2^n$ funkcji Walsha stopnia $n$ tworzy macierz $H_(2^n)$.

*Przykład*: Wartości funkcji Walsha z rysunku 1 (oznaczone $"WAL"(n, t)$) odpowiadają wartościom $n$-tego wiersza (lub kolumny) macierzy $H_8$:

$ H_8 =
mat(
     1,     1,     1,     1,     1,     1,     1,     1;
     1,     1,     1,     1,    -1,    -1,    -1,    -1;
     1,     1,    -1,    -1,    -1,    -1,     1,     1;
     1,     1,    -1,    -1,     1,     1,    -1,    -1;
     1,    -1,    -1,     1,     1,    -1,    -1,     1;
     1,    -1,    -1,     1,    -1,     1,     1,    -1;
     1,    -1,     1,    -1,    -1,     1,    -1,     1;
     1,    -1,     1,    -1,     1,    -1,     1,    -1;
)
$

Dzięki temu możliwe jest wykorzystanie macierzy Hadamarda do przeprowadzenia dyskretnej transformaty Hadamarda-Walsha, która (analogicznie do transformaty Fouriera) zamienia funkcję w wartości wag przypisanych odpowiednim funkcjom Walsha w szeregu przybliżającym transformowaną funkcję.


#figure(
	image("images/chapter_3/2_fwht.png", height: 67%),
	caption: [
		Zastosowanie szybkiej transformaty Walsha-Hadamarda do zdekodowania sygnału elektrokardiogramu. Źródło: #link("https://www.mathworks.com/help/signal/ug/discrete-walsh-hadamard-transform.html")[#text(fill: blue)[Dokumentacja MATLAB]]
	]
)
