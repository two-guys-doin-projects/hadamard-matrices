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

== 3.2 Zastosowania w uczeniu maszynowym
Współczesne badania eksplorują wykorzystanie zagadnień związanych z macierzą Hadamarda w kompresji i przyspieszaniu sieci neuronowych oraz w transformacjach losowych dla redukcji wymiarowości.

Macierz Hadamarda jest używana do osadzania obliczeń niskiej precyzji w sieciach neuronowych. W binary neural networks (BNN) transformacja Hadamarda może zastąpić kosztowne mnożenia. Park i Lee proponują wykorzystanie transformacji Hadamarda na wejściu sieci, dzięki czemu zaawansowane konwolucje w BNN-ach można realizować wyłącznie przez operacje dodawania i odejmowania.

#figure(
	image("images/chapter_3/3_input_layer.png"),
	caption: [
		Zastosowanie macierzy Hadamarda jako warstwy wejściowej
	]
)

W praktyce warstwa wejściowa oparta na macierzy Hadamarda dzieli obraz na bloki i dla każdego bloku przeprowadza szybką 2D-transformatę Hadamarda, uzyskując zbiór współczynników przypominający odpowiedzi filtrów konwolucyjnych.

*Rozważmy przykładowy blok $4 times 4$ w kanale R obrazu RGB (wartości od 1 do 16):*
#align(center)[
    $G = H_4 times R_4 times H_4$
  ]
  #h(1em)
#align(center)[
  $ H_4 = mat(
    1, 1,  1,  1;
    1, 1,  1,  1;
    1, 1, -1, -1;
    1, 1, -1, -1;
  )$
  #h(1em)
	$R_4 = mat(
		1,  2,  3,  4;
    5,  6,  7,  8;
    9, 10, 11, 12;
    13, 14, 15, 16;
	)$
  #h(1em)
  $G = mat(
		136,  -8, -16,   0;
		-32,   0,   0,   0;
		-64,   0,   0,   0;
		0,   0,   0,   0
	)$
]
Otrzymujemy w ten sposób 16 współczynników dla tego bloku w kanale R. Analogicznie wykonujemy tę procedurę dla bloków w kanale G i B. Każdy blok $4 times 4$ w każdym kanale daje 16 wartości, a więc łącznie $3 times 16 = 48$ współczynników. Te współczynniki traktujemy jako 48 kanałów wyjściowych (map cech) wygenerowanych przez warstwę Hadamarda
= Źródło 
- https://openaccess.thecvf.com/content/ACCV2022/papers/Park_Energy-Efficient_Image_Processing_Using_Binary_Neural_Networks_with_Hadamard_Transforms_ACCV_2022_paper.pdf#:~:text=Discrete%20Cosine%20Transform%20,neural%20networks%20with%20and%20without