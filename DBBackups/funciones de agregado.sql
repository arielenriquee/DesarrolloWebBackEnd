/* Las funciones de agregado , tambien llamadas operaciones de agregado , agrupan registros para obtener resultados */

-- ¿que es una variable?
/* es un identificado , un nombre que se le asigna a una ubicacion en la memoria Ram del equipo y que
 , en principio solamenete puede almacenar un tipo de valor de datos concretos,
 por ejemplo un entero (INT) , una cade de caracteres (Varchar)*/
/*¿ que es una funcion ?
Tambien llamada en los inicios de la programacion rutina o subrutina , es un conjunto de , 
sentencias o intrucciones de un lenguaje de programacion (Basic,Ensamblador,Fortran , Pascal , FoxPro , Java , Phyton . PHP , JavaScript 
TypeScript , C , C++ , Rust) , que se declara una sola vez , ya sea en el propio programa o en una biblioteca (library) aparte ,
 y se le de un nombre , y posteriormente puede ser invocado o llamada todas las veces que hagan falta desde cualquier parte 
 del programa que estemos desarrollando


*/

use world;

-- Contar el total de paises que hay en la tabla country
-- Select count(Name) as total_paises  from country;

-- Contar cuantos paises hay por region
select Region, count(*)  from country group by Region order by Region;