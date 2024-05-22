-- -----------------------------------------------------------------------------
--  PLANTILLA FUNCIÓN
-- -----------------------------------------------------------------------------


-- -----------------------------------------------------------------------------
--  Función que devuelve un dato:
-- -----------------------------------------------------------------------------

GO

CREATE OR ALTER FUNCTION suma(@numero1 INT, @numero2 INT) 
RETURNS INT
AS

BEGIN 
	RETURN @numero1+@numero2 
END

GO

--------------------------------------------------------------------------------

SELECT dbo.suma(2, 3)



-- -----------------------------------------------------------------------------
--  Función que devuelve una tabla:
-- -----------------------------------------------------------------------------

GO

CREATE OR ALTER FUNCTION obtenerContenidoConId(@IdContenido INT) 
RETURNS TABLE
AS

RETURN SELECT *
         FROM CONTENIDOS
        WHERE IdContenido = @IdContenido

GO

--------------------------------------------------------------------------------

SELECT * FROM obtenerContenidoConId(1)

