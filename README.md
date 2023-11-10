Alan Alexis Sherar Rodriguez (alansheerrardo@gmail.com).
Kevin Ariel Sherar Rodriguez (kevsherarwork@gmail.com).

Temática del TPE:
E-commerce de videojuegos.

Listar todos los juegos:
 -- GET : juegos

Al listar todos, se puede especificar que la lista este ordenada segun un campo:
 -- GET : juegos?order_by={String}

Se puede especificar ademas si el orden es ASCendente o DESCendente.
Si se pasan tanto ASC(tambien valido asc) como DESC(tambien valido desc), toma prioridad ASC:
 -- GET : juegos?order_by={String}&ASC
 -- GET : juegos?order_by={String}&DESC

Se puede filtrar por el precio.
Se buscará todos los juegos que su precio sea menor que el recibido por $_GET:
 -- GET : juegos?filtro={float}

Listar un juego por su ID:
 -- GET : juegos/:id

Agregar un juego:
 -- POST : juegos

Campos requeridos para efectuar POST:
{
    "nombre" : varchar,
    "precio" : float,
    "genero" : int,
    "desarrolladora" : varchar,
    "micro_transacciones" : boolean(1|0),
    "lanzamiento" : date(Y-M-D),
}

Modificar un juego:
 -- PUT : juegos/:id

Campos requeridos para efectuar PUT:
{
    "nombre" : varchar,
    "precio" : float,
    "genero" : int,
    "desarrolladora" : varchar,
    "micro_transacciones" : boolean(1|0),
    "lanzamiento" : date(Y-M-D),
}
