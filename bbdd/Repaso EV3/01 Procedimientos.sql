-- -----------------------------------------------------------------------------
--  PLANTILLA PROCEDIMIENTO
-- -----------------------------------------------------------------------------

GO

CREATE OR ALTER PROCEDURE nombreProcedimiento (@nombre VARCHAR(100),
                                               @apellidos VARCHAR(100),
                                               @codigo INT OUTPUT)
AS
BEGIN
    -- Inicializaciones...
    SET @codigo = NULL

    -- Validación de nulos...
    DECLARE @error VARCHAR(MAX) = ''

    IF @nombre IS NULL
        SET @errores += 'var1,'

    IF @apellidos IS NULL
        SET @errores += 'var1,'

    IF LEN(@errores) > 0
    BEGIN
        SET @errores = LEFT(@errores, LEN(@errores) - 1)
        PRINT CONCAT('Campos no informados: ', @errores)
        RETURN -1
    END

    BEGIN TRY
        BEGIN TRAN

            INSERT INTO TABLA1
            VALUES (@nombre)

            INSERT INTO TABLA2
            VALUES (@apellidos)

            SET @codigo = SCOPE_IDENTITY()

        COMMIT
    END TRY

    BEGIN CATCH
        ROLLBACK
        PRINT CONCAT('ERROR:', ERROR_NUMBER(),
                     'DESC:', ERROR_MESSAGE(),
                     'LINEA:', ERROR_LINE(),
                     'PROC:', ERROR_PROCEDURE())
    END CATCH

END

GO

-- -----------------------------------------------------------------------------

DECLARE @nombre VARCHAR(100)
DECLARE @apellido VARCHAR(100)
DECLARE @codigo INT
DECLARE @ret INT

EXEC @ret = nombreProcedimiento @nombre,
                                @apellido,
                                @codigo OUTPUT

IF @ret <> 0
    RETURN

PRINT CONCAT('El nuevo código es: ', @codigo)

-- -----------------------------------------------------------------------------
