use world;
-- recuperar los paises y el idioma hablado de cada pais 
-- siempre que sea una lengua oficial -- recuperar los paises y el idioma hablado de cada pais 
-- Selecciono el continente, la region y sumo la poblacion total de cada grupo

-- Selecciono el nombre del pais y el idioma usando alias en las tablas para que sea mas corto
SELECT 
    c.Name AS Pais, 
    cl.Language AS Idioma
FROM 
    country c
-- Uno la tabla country con countrylanguage relacionando el codigo de 3 letras del pais
INNER JOIN 
    countrylanguage cl ON c.Code = cl.CountryCode

WHERE 
    cl.IsOfficial = 'T'
-- Ordeno alfabeticamente por pais y luego por idioma (por si un pais tiene mas de una lengua oficial)
ORDER BY 
    c.Name ASC, 
    cl.Language ASC;
-- ejercicio 3 recuperar la ciudad mas poblada y el nombre del pais donde se encuentra dicha ciudad 
-- Selecciono el nombre de la ciudad, su poblacion y el nombre del pais donde esta
SELECT 
    ci.Name AS Ciudad, 
    ci.Population AS Poblacion, 
    co.Name AS Pais
FROM 
    city ci
-- Uno la tabla city con country relacionando el codigo del pais (CountryCode = Code)
INNER JOIN 
    country co ON ci.CountryCode = co.Code
-- Ordeno las ciudades de mayor a menor poblacion para que la mas poblada quede arriba del todo
ORDER BY 
    ci.Population DESC
-- Me quedo unicamente con el primer registro, que es la ciudad con mas habitantes
LIMIT 1;
-- ejercicio 4 modificar la consulta del ejercicio 2 para que solamente se muestren resultados
-- para España y todos los idiomas , no solo ofiiales
-- Selecciono el nombre del pais y los idiomas hablados en el
SELECT 
    c.Name AS Pais, 
    cl.Language AS Idioma
FROM 
    country c
-- Uno la tabla country con countrylanguage usando el codigo del pais
INNER JOIN 
    countrylanguage cl ON c.Code = cl.CountryCode
-- Quito el filtro de idioma oficial (IsOfficial) para que salgan todos los idiomas,
-- y filtro unicamente por España (en esta base de datos los nombres estan en ingles: 'Spain')
WHERE 
    c.Name = 'Spain'
-- Ordeno los idiomas alfabeticamente
ORDER BY 
    cl.Language ASC;