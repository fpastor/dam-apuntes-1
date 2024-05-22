-- -----------------------------------------------------------------------------
--  PROCEDIMIENTOS EXTRAS
-- -----------------------------------------------------------------------------

-- EXEC sp_columns TABLA
-- EXEC sp_help TABLA
-- SCOPE_IDENTITY()
-- @@ROWCOUNT

-- -----------------------------------------------------------------------------
-- Comprobar si el cliente existe ANTES de comprobar si ha hecho PAGOS o PEDIDOS
-- -----------------------------------------------------------------------------

IF NOT EXISTS (SELECT *
                 FROM CLIENTES
                WHERE codCliente = @codCliente)
BEGIN
    PRINT 'El cliente no existe'
    RETURN -2
END

-- -----------------------------------------------------------------------------

SELECT *
  FROM CONTENIDOS
 WHERE idContenido = 1

--

INSERT INTO CONTENIDOS(IdContenido, Titulo, Cuerpo)
VALUES (Value1, Value2, Value3),
       (Value1, Value2, Value3)

--

UPDATE CONTENIDOS
   SET Titulo = 'nuevo',
       Cuerpo = 'nuevoCuerpo'
 WHERE IdContenido = 1

 --

 DELETE FROM CONTENIDOS
 WHERE IdContenido = 1

-- -----------------------------------------------------------------------------
