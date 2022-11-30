# Yatzi use case

Der skal være mindst to spillere for at der er en taber

Spillet:
Der er 5 terninger til at kaste med.
1. Man slår med terninger.
2. Vælger dem man ønsker og tager til siden, eller ligger terninger tilbage til omkast
3. De resterende bruges til næste kast.
Der kan kastes maks 3 gange.

Når alle terninger er valgt eller der er kastet 3 gange gåes der videre.

Terningerne bruges til at give points, på de felter der ikke er fyldt.

Kan terningerne ikke bruges, skal et felt overstrejes.

Der gåes viderer til næste spiller.
Når alle spillerer har fået points, sluttes runden og den første spiller begynder den nye runde.

Spillet spilles over 15 runder (indtil pladen er fyldt).

Når alle felte er fyldte, findes en vinder:
Vinderen er den med flest points.

# Kravspecifikation

| Skal        | Test       |
|:-----------:|------------|
| Kaste terninger | Aktiver terninge kast og sikrer at de stopper efter 1 sekund |
| Låse terninger | 1. Vælg terning, start kast og se at den forbliver det samme efter 2. Vælg låst terning, start kast og se at den ændres |
| Opskrive point | 1. Vælg felt og se rigtigt antal point blive skrevet op 2. Vælg felt med points på og sikre de ikke bliver overskrevet 3. Vælg et felt hvor terningerne ikke kan give points og sikre der ikke sker noget |
| Udregne point | 1. Spil et spil hvor alle felter får points og regn efter 2. Spil et spil med nogle felter uden points og regn efter |
| Vurdere en vinder | 1. Spil et spil med to og efter regn vinder 2. Spil med flere og sikre den vælger personen med flest points |
| Skifte spiller (i rigtig rekkefølge) | 1. Kør et spil med to og sikre den skifter mellem de to 2. Kør et spil med flere spillere og sikre den skifter fra 1 til 2 til n'de spiller |
| Fortsætte til alle spilleres plader er fulde | Kør et spil med flere spiller og sikre den først stopper når alle felter er fyldt |
| Timer der skifter spiller | Start rundte og vent 10 sekunder og sikre terningerne kastes igen |


| Kan    | Test    |
|:----:| ---- |
| Pauses | Tryk esc og sikre timeren stopper |
| Leaderboard (med game history) | Spil nogle spil, luk spillet og start igen og sikre skorende stadig står der |

