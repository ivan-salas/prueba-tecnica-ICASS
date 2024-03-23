/* Primeras consultas: Estado de la comida
Se incluye más de una porque son todas del mismo estilo
El objetivo de estas consultas es obtener la cantidad total de comida del hormiguero
No se hace una unica consulta porque se asume que los tipos de comida no se pueden sumar todos juntos
Es una asuncion que se hace, ya que no es seguro que los tipos de comida puedan ser sumados todos juntos
*/

SELECT SUM(obrera_food_reserve) AS total_obrera_food_reserve
FROM nodriza;

SELECT SUM(soldado_food_reserve) AS total_soldado_food_reserve
FROM nodriza;

SELECT SUM(nodriza_food_reserve) AS total_nodriza_food_reserve
FROM nodriza;

SELECT SUM(principe_food_reserve) AS total_principe_food_reserve
FROM nodriza;

SELECT SUM(sepulturera_food_reserve) AS total_sepulturera_food_reserve
FROM nodriza;

/*Segunda consulta: Estado de los soldados agrupado por status
El objetivo es obtener los status de vida de los soldados del hormiguero
Esto permitiria obtener información sobre la cantidad de soldados que se encuntran a punto de morir, o que estan en perfecto estado
Asumimos que los soldados tiene un valor de vida que va descendiendo a medida que se enfrentan a enemigos (podría ser un valor de 0 a 100 por ejemplo)
Tambien asumimos que los rangos del status podrían ser los sigueinte
- 0-25: critical_healt
- 26-49: low_health
- 50-84: medium_health
- 85-100: full_health
*/
SELECT status,COUNT(*) AS cantidad_soldados
FROM soldado
GROUP BY status;


/* Tercera consulta: Censo de todas las hormigas
El objetivo es obtener la cantidad de hormigas que hay en el hormiguero
*/

SELECT COUNT(*) AS cantidad_reina
FROM reina;

SELECT COUNT(*) AS cantidad_princesa
FROM princesa;

SELECT COUNT(*) AS cantidad_principe
FROM principe;

SELECT COUNT(*) AS cantidad_nodriza
FROM nodriza;

SELECT COUNT(*) AS cantidad_obrera
FROM obrera;

SELECT COUNT(*) AS cantidad_soldado
FROM soldado;

SELECT COUNT(*) AS cantidad_sepulturera
FROM sepulturera;






