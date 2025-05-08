= 1. Wstęp
== 1.1 Życie Jacques Hadamard'a

#let imageonside(lefttext, rightimage, bottomtext: none, marginleft: 0em, margintop: 0.5em) = {
  set par(justify: true)
  grid(columns: (2fr, 1fr), column-gutter: 1em, lefttext, rightimage)
  set par(justify: false)
  block(inset: (left: marginleft, top: -margintop), bottomtext)
}

#imageonside(
  text[
    Jacques Hadamard (1865–1963) był wybitnym matematykiem, urodzonym w Wersalu. Jego matka była pianistką, a ojciec nauczycielem.
    Po wojnie francusko-pruskiej przeprowadził się do Paryża. Dzięki inspirującemu nauczycielowi w
    szkole średniej Hadamard zainteresował się matematyką. Ukończył École Normale Supérieure jako
    najlepszy kandydat i rozpoczął badania nad funkcjami analitycznymi. W 1892 roku obronił doktorat
    oraz zdobył prestiżową nagrodę Grand Prix des Sciences Mathématiques za pracę dotyczącą liczb
    pierwszych i funkcji zeta. W czasie  I wojny światowej stracił dwóch synów, a podczas II wojny światowej trzeci syn zginął.
    W 1940 roku uciekł przed nazistami do USA, później wrócił do Francji.
  ], 
  image("images/chapter_1/Hadamard.jpg", width: 80%), 
  bottomtext: text[
    Hadamard był znanym i cenionym nauczycielem, którego wykłady łączyły precyzję z intuicją. Napisał również książki popularnonaukowe, m.in. The Psychology of Invention in the Mathematical Field (1945). Jego prace miały ogromny wpływ na rozwój matematyki XX wieku, szczególnie w analizie matematycznej.
    Zmarł w wieku 97 lat, przygnieciony śmiercią wnuka w wypadku górskim. Pozostawił po sobie około 300 publikacji naukowych oraz głęboki ślad w historii matematyki i społeczeństwa.
  ])

== 1.2 Odkrycie i kontekst historyczny
Pojęcie tej klasy macierzy sięga XIX wieku – podobne wzory opisał już James Sylvester w 1867 roku (nazwając je anallagmatic pavements). Jednak to Jacques Hadamard w 1893 r. przeanalizował je systematycznie przy okazji badania nierówności na wyznacznik macierzy. W swoim artykule Hadamard udowodnił, że dla dowolnej macierzy $n times n$ o ograniczonych wartościach wpisów zachodzi $|det A| <= n^(n/2)$, i wykazał, że równość osiąga się tylko wtedy, gdy wiersze są ortogonalne. Macierze spełniające tę nierówność z równością – czyli maksymalizujące moduł wyznacznika – zaczęto nazywać od jego nazwiska. Współczesne opracowania podkreślają, że już w 1893 r. Hadamard’s theorem on determinants (nierówność Hadamarda) po raz pierwszy się pojawiła, a macierze z maksymalnym wyznacznikiem (dziś – hadamardowskie) są ważne w wielu dziedzinach matematyki stosowanej.

== 1.3 Wpływ na rozwój matematyki i dziedzin pokrewnych
Odkrycie i badania Hadamarda miały istotny wpływ na rozwój matematyki kombinatorycznej i stosowanej. Pobudziło to rozwój teorii blokowych układów ortogonalnych, struktur geometrycznych i optymalnego projektowania eksperymentów – wiele prac w statystyce opiera się na koncepcji macierzy ortogonalnych podobnych do hadamardowskich. Macierze Hadamarda są również fundamentem nowoczesnej teorii kodowania (w tym konstrukcji kodów o dużej odległości minimalnej) i teorii grafów (poprzez powiązane rozkłady blokowe). Od czasu pracy Hadamarda badacze postawili sobie za cel zbudowanie macierzy o kolejnych rzędach, co zaowocowało wieloma konstrukcjami (np. metodą Sylvestera, Paleya, Williamsona). Wciąż pozostaje otwartym pytaniem słynna hipoteza Hadamarda – czy dla każdego rzędų $n=4k$ istnieje macierz Hadamarda. Ten nierozwiązany problem stymuluje prace badawcze w dziedzinie teorii kombinatorycznej i zastosowań. Ogółem, koncepcja i badania Hadamarda przyczyniły się do wielu odkryć pośrednich (w tym konstrukcji nowych rodzajów macierzy ortogonalnych) oraz do rozwoju praktycznych narzędzi matematycznych użytecznych w różnych dziedzinach nauki.

