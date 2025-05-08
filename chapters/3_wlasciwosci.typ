= 3. Właściwości
\
== 3.1 Właściwości wartości
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

W dokładnie połowie par obydwie wartości mają te same znaki, a w pozostałej połowie - przeciwne.
\
Kolejną właściwością dotyczącą ilości elementów w tej macierzy jest fakt, że ilość wartości -1 w $H_n$ jest równa $n(n-1)/2$, a wartości 1 - $n(n+1)/2$; w przypadku $H_4$ jest to odpowiednio 6 oraz 10.

== 3.2 Właściwości macierzy

Przydatną charakterystyką macierzy Hadamarda jest możliwość generowania macierzy większego rzędu przy pomocy macierzy mniejszego rzędu. Macierz $H_(m times n), m,n in NN$ można uzyskać z wyniku iloczynu tensorowego macierzy $H_m times.circle H_n$:

#let h2 = $mat(1, 1; -1, 1)$
$
H_2  = #h2 \
H_4 =
  H_(2 times 2) =
    mat(
      #h2, #h2 ;
      -#h2, #h2
    ) =
    mat(
      1, 1, 1, 1;
      -1, 1, -1, 1;
      -1, -1, 1, 1;
      1, -1, -1, 1
    )
$


Metoda ta nie działa dla wszystkich macierzy Hadamarda; macierzy rzędu 12, 20, 28, 36, 44, 52, 60, 68, 76, 84, 92 oraz 100 nie można skonstruować przy pomocy macierzy niższego rzędu.

Wygenerować macierz Hadamarda można jeszcze w inny sposób - w przypadku $H_n$, gdzie liczba $n$ jest podzielna przez 4 i można ją zapisać w postaci $2^e (p^m + 1), m in NN, e in ZZ, p - "nieparzysta liczba pierwsza"$ możliwe jest wygenerowanie jej przy pomocy *konstrukcji Paleya*, tj. przy pomocy ciał skończonych.

*Przykład*: Znajdź macierz Hadamarda rzędu 4.

rząd $n = 4$ możemy przedstawić w postaci:

#align(center)[$4 = p^k + 1$]

przy $p = 3, k = 1$.

Po wyznaczeniu $p$, następnym krokiem jest znalezienie kwadratowych reszt $mod n$ w przedziale ${1, ... (n+1)/2}$; dla $n = 4, p = 3$ jest to zbiór liczb ${1, 2}$. Sprawdzimy wszystkie elementy zbioru:

dla $1$:

#align(center)[$1^2 mod 4 = 1 eq.not 0$; 1 jest resztą kwadratową]

dla $2$:

#align(center)[$2^2 mod 4 = 0$; 2 nie jest resztą kwadratową]

Zbiór interesujących nas reszt kwadratowych to ${1}$.

Tworzymy pustą macierz rozmiarów $n times n$; pierwszy rząd oraz kolumnę wypełniamy jedynkami:

$
mat(
  1, 1, 1, 1;
  1, , , , ;
  1, , , , ;
  1, , , , ;
)
$

Następnie, przekątną tej macierzy wypełniamy wartościami -1, a pozostałym komórkom przypisujemy wartość $(i - j) mod p$, gdzie $i, j$ to odpowiednio indeks wiersza oraz indeks kolumny:

$
mat(
  1, 1, 1, 1;
  1, -1, 2, 1;
  1, 1, -1, 2;
  1, 2, 1,-1;
)
$

W powyższej macierzy zamieniamy wszystkie wartości nienależące do zbioru reszt kwadratowych na -1:

$
mat(
  1, 1, 1, 1;
  1, -1, -1, 1;
  1, 1, -1, -1;
  1, -1, 1,-1;
) = A
$

Sprawdźmy zgodność powstałej macierzy z definicją macierzy Hadamarda:

#align(center)[$
A * A^T = 
mat(
  1, 1, 1, 1;
  1, -1, -1, 1;
  1, 1, -1, -1;
  1, -1, 1,-1;
) * mat(
  1, 1, 1, 1;
  1, -1, 1, -1;
  1, -1, -1, 1;
  1, 1, -1, -1;
) = mat(
  4, 0, 0, 0;
  0, 4, 0, 0;
  0, 0, 4, 0;
  0, 0, 0, 4;
) = n * J
$]

Gdzie $J$ to macierz jednostkowa, zatem znaleziona macierz jest macierzą Hadamarda rzędu 4.

Macierz Hadamarda jest *rozwiązaniem problemu największego wyznacznika*; dotyczy on znalezienia największego wyznacznika macierzy rozmiaru $n times n$ zawierających jedynie wartości znajdujące się w określonym zbiorze; uściślając, macierz Hadamarda rzędu $n$ jest rozwiązaniem tego problemu dla zbioru macierzy $n times n$, których wartości spełniają warunek $|a_("ij")| lt.eq 1$.

Macierz Hadamarda $n$-tego rzędu jest też macierzą incydencji grafu Hadamarda o $4n$ wierzchołkach; ich główną właściwością jest *tranzytywność względem odległości*, co w uproszczeniu oznacza, że dowolne dwa wierzchołki można zamienić miejscami z innymi dwoma wierzchołkami o tej samej odległości między nimi.

#figure(
  image("images/chapter_2/1_hadamard_graphs.svg"),
  caption: "Przykład grafów Hadamarda."
)
