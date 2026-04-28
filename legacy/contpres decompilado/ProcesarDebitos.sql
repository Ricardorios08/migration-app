CREATE DEFINER=`root`@`%` PROCEDURE `inspeccion`.`ProcesarDebitos`(
	IN `p_desde` DATE,
	IN `p_hasta` DATE
)
BEGIN

set p_desde = '2023-01-01';
 
    drop TABLE inspeccion.resumen_debitos_final;
    
    -- Crear la tabla si no existe
    CREATE TABLE IF NOT EXISTS inspeccion.resumen_debitos_final (
        codigo_organismo INT,
        servicio VARCHAR(50),
        cuenta1 VARCHAR(50),
        cuenta2 VARCHAR(50),
        titular VARCHAR(255),
        numero_boleto VARCHAR(50),
        periodo_boleto VARCHAR(50),
        fecha DATE,
        tipo_movimiento INT,
        debito DECIMAL(18, 2),
        credito DECIMAL(18, 2),
        expediente VARCHAR(255),
        ente_recaudador INT,
        letra_xnet VARCHAR(10),
        observaciones VARCHAR(500),
        detalle VARCHAR(255),
        detalle_ente_recaudador VARCHAR(255),
        fecha_proceso DATE,
        fecha_alta_cuenta_corriente DATE,
        codigo_tipo_movimiento INT,
        numero_liquidacion INT
        
    );

    -- Eliminar registros existentes en el rango de fechas
    
 #   DELETE FROM inspeccion.resumen_debitos_final WHERE fecha BETWEEN p_desde AND p_hasta;
 
# TRUNCATE TABLE inspeccion.resumen_debitos_final;
 



    -- Insertar nuevos registros
    INSERT INTO `inspeccion`.`resumen_debitos_final`
    (codigo_organismo, servicio, cuenta1, cuenta2, titular, numero_boleto, periodo_boleto, fecha, tipo_movimiento, debito, credito, expediente, ente_recaudador, letra_xnet, observaciones, detalle, detalle_ente_recaudador, fecha_proceso, fecha_alta_cuenta_corriente, codigo_tipo_movimiento, numero_liquidacion)
    WITH ResumenPaso AS (
        SELECT
            t.CodiUnfi,
            t.FechArch,
            t.FechPago,
            a.LoteArch,
            t.CodiXnet,
            SUM(t.ImpoNeto) AS SumaNeto,
            SUM(t.ImpoComi) AS SumaComi
        FROM recaudacion.listinspasoc t
        JOIN infogov.unidadfinanc uf ON uf.CodiUnfi = t.CodiUnfi 
        JOIN recaudacion.archivo a ON a.IdArch = t.IdArch
        WHERE t.FechArch BETWEEN p_desde AND p_hasta
        GROUP BY t.CodiUnfi, t.FechArch, t.FechPago, a.LoteArch, t.CodiXnet
    )
    SELECT
        ci.CodiUnfi AS codigo_organismo,
        ci.CodiServ AS servicio,
        ci.CuenCtct1 AS cuenta1,
        ci.CuenCtct2 AS cuenta2,
        ci.titular AS titular,
        ci.NumeBole AS numero_boleto,
        ci.PeriBole AS periodo_boleto,
        ci.FechCtactei AS fecha,
        ci.CodiTimoi AS tipo_movimiento,
        ci.DebiCtactei AS debito,
        ci.CredCtactei AS credito,
        ci.NumeExpe AS expediente,
        ci.CodiEnre AS ente_recaudador,
        ci.LetrXnet AS letra_xnet,
        IFNULL(ci.ObseCtactei, '') AS observaciones,
        tm.DetaTimoi AS detalle,
        er.DetaEnre AS detalle_ente_recaudador,
        ci.fecha_alta_cuenta_corriente AS fecha_proceso,
        ci.fecha_alta_cuenta_corriente AS fecha_alta_cuenta_corriente,
        ci.CodiTimo AS codigo_tipo_movimiento,
        ci.numero_liquidacion as numero_liquidacion
    FROM (
        -- =================================================================
        -- INICIO DE LA CONSULTA COMPLEJA UNIFICADA (Todas las partes con UNION ALL)
        -- =================================================================

        -- Parte 2: contpres.liquidaneto - Custodia (CodiTimoi = 2)  - Liquidación DGI
    
     /*SELECT
            uf.CodiUnfi AS CodiUnfi,
            '' AS CodiServ,
            '' AS CuenCtct1,
            '' AS CuenCtct2,
            '' AS titular,
            '' AS NumeBole,
            '' AS PeriBole,
            d.FechDebi AS FechCtactei, -- Mapeado desde l.FechLiqu
            2 AS CodiTimoi,
            d.ImpoDebi AS DebiCtactei, -- Mapeado desde ln.ImpoLine
            0 AS CredCtactei,
            CONCAT(d.ExpeImpu,'-',d.NumeDebi) AS NumeExpe, -- Mapeado desde CONCAT(ln.ExpeImpu,'-',ln.NumeLiqu)
            IF(d.DetaDebi LIKE '%tesoreria%', 1, IF(d.DetaDebi LIKE '%epagos%', 20, IF(d.DetaDebi LIKE '%pago%facil%', 2, 3))) AS CodiEnre, -- Mapeado desde l.DetaLiqu
            uf.Xn36Unfi AS LetrXnet,
            d.DetaDebi AS ObseCtactei, -- Mapeado desde l.DetaLiqu
            NULL AS fecha_alta_cuenta_corriente,
            NULL AS CodiTimo
        FROM infogov.unidadfinanc uf
        INNER JOIN contpres.debito d ON d.CucuPers = uf.CucuUnfi
                                   AND d.PeriInfo >= 2015
                                  AND d.ImpoDebi <> 0
                                   AND d.DetaDebi LIKE '%custodia%' 
                                   AND d.FechDebi BETWEEN p_desde AND p_hasta
                                   AND (ISNULL(d.FeanDebi))
                                  */
                                   
      SELECT
            uf.CodiUnfi AS CodiUnfi,
            '' AS CodiServ,
            '' AS CuenCtct1,
            '' AS CuenCtct2,
            '' AS titular,
            '' AS NumeBole,
            '' AS PeriBole,
            l.FechLiqu AS FechCtactei,
            2 AS CodiTimoi,
            ln.ImpoLine AS DebiCtactei,
            0 AS CredCtactei,
            ln.ExpeImpu AS NumeExpe,
            IF(l.DetaLiqu LIKE '%tesoreria%', 1, IF(l.DetaLiqu LIKE '%epagos%', 20, IF(l.DetaLiqu LIKE '%pago%facil%', 2, 3))) AS CodiEnre,
            uf.Xn36Unfi AS LetrXnet,
            l.DetaLiqu AS ObseCtactei,
            NULL AS fecha_alta_cuenta_corriente,
            NULL AS CodiTimo,
            ln.NumeLiqu as numero_liquidacion            
        FROM infogov.unidadfinanc uf
        JOIN contpres.liquidaneto ln ON (ln.PeriInfo >= 2015 AND ln.CucuPers = uf.CucuUnfi AND ln.CodiRete = 0 AND ln.ImpoLine <> 0)
        JOIN contpres.liquidacion l ON (l.PeriInfo = ln.PeriInfo AND l.ExpeImpu = ln.ExpeImpu 
        AND l.NumeLiqu = ln.NumeLiqu AND l.TipoLiqu = 2 
        AND l.DetaLiqu LIKE '%custodia%' 
		 AND  ISNULL(ln.FeanLine)
        AND l.FechLiqu BETWEEN p_desde AND p_hasta 
         AND  ISNULL(l.FeanLiqu))

        UNION ALL

        -- Parte 3: contpres.liquidaneto - Retenciones (CodiTimoi = 8)  - Descuento préstamo
        SELECT
            uf.CodiUnfi AS CodiUnfi,
            '' AS CodiServ,
            '' AS CuenCtct1,
            '' AS CuenCtct2,
            '' AS titular,
            '' AS NumeBole,
            '' AS PeriBole,
            l.FechLiqu AS FechCtactei,
            8 AS CodiTimoi,
            ln.ImpoLine AS DebiCtactei,
            0 AS CredCtactei,
            ln.ExpeImpu AS NumeExpe,
            IF(l.DetaLiqu LIKE '%tesoreria%', 1, 
            IF(l.DetaLiqu LIKE '%epagos%', 20, IF(l.DetaLiqu LIKE '%pago%facil%', 2, 3))) AS CodiEnre,
            uf.Xn36Unfi AS LetrXnet,
            l.DetaLiqu AS ObseCtactei,
            NULL AS fecha_alta_cuenta_corriente,
            NULL AS CodiTimo,
            l.NumeLiqu as numero_liquidacion
        FROM infogov.unidadfinanc uf
        JOIN contpres.liquidaneto ln ON (ln.PeriInfo >= 2015 AND ln.CucuPers = uf.CucuUnfi 
        AND ln.CodiRete > 0 AND ln.ImpoLine <> 0)
        JOIN contpres.liquidacion l 
        ON (l.PeriInfo = ln.PeriInfo AND l.ExpeImpu = ln.ExpeImpu AND l.NumeLiqu = ln.NumeLiqu 
        AND ISNULL(ln.FeanLine) AND l.FechLiqu BETWEEN p_desde AND p_hasta)


        UNION ALL

        -- Parte 1: recaudacion.pagodeta (CodiTimoi = 11) - Movido para mantener la consistencia en el orden con la parte anterior
        SELECT
            pd.CodiUnfi AS CodiUnfi,
            '' AS CodiServ,
            '' AS CuenCtct1,
            '' AS CuenCtct2,
            '' AS titular,
            '' AS NumeBole,
            '' AS PeriBole,
            pd.FeenAcpa AS FechCtactei,
            11 AS CodiTimoi,
            0 AS DebiCtactei,
            pd.ImpoPade AS CredCtactei,
            '' AS NumeExpe,
            ap.CodiEnre AS CodiEnre,
            u.Xn36Unfi AS LetrXnet,
            '' AS ObseCtactei,
            NULL AS fecha_alta_cuenta_corriente,
            11 AS CodiTimo,
             null as numero_liquidacion
        FROM recaudacion.boletoiv biv
        INNER JOIN recaudacion.pagodeta pd ON pd.PeriBole = biv.PeriBole AND pd.NumeBole = biv.NumeBole
         AND pd.FeenAcpa BETWEEN p_desde AND p_hasta
         AND pd.CodiTari != 51 #distinto a devolucion prestamo
        INNER JOIN infogov.unidadfinanc u ON u.CodiUnfi = pd.CodiUnfi  AND u.TipoUnfi IN (0,1)
        INNER JOIN recaudacion.acrepago ap ON ap.FeenAcpa = pd.FeenAcpa AND ap.NumeAcpa = pd.NumeAcpa -- *** CORREGIDO ***

        UNION ALL

        -- Parte 4: listinspasoc (Neto) - usando la CTE ResumenPaso
        SELECT
            rp.CodiUnfi AS CodiUnfi,
            '' AS CodiServ,
            '' AS CuenCtct1,
            '' AS CuenCtct2,
            '' AS titular,
            '' AS NumeBole,
            '' AS PeriBole,
            rp.FechArch AS FechCtactei,
            6 AS CodiTimoi,
            rp.SumaNeto AS DebiCtactei,
            0 AS CredCtactei,
            rp.FechPago AS NumeExpe,
            3 AS CodiEnre,
            rp.CodiXnet AS LetrXnet,
            CONCAT('Lote: ', rp.LoteArch) AS ObseCtactei,
            NULL AS fecha_alta_cuenta_corriente,
            NULL AS CodiTimo,
	null as numero_liquidacion
        FROM ResumenPaso rp
        WHERE rp.SumaNeto > 0

        UNION ALL

        -- Parte 5: listinspasoc (Comision) - usando la CTE ResumenPaso
        SELECT
            rp.CodiUnfi AS CodiUnfi,
            '' AS CodiServ,
            '' AS CuenCtct1,
            '' AS CuenCtct2,
            '' AS titular,
            '' AS NumeBole,
            '' AS PeriBole,
            rp.FechArch AS FechCtactei,
            7 AS CodiTimoi,
            rp.SumaComi AS DebiCtactei,
            0 AS CredCtactei,
            rp.FechPago AS NumeExpe,
            3 AS CodiEnre,
            rp.CodiXnet AS LetrXnet,
            CONCAT('Lote: ', rp.LoteArch) AS ObseCtactei,
            NULL AS fecha_alta_cuenta_corriente,
            NULL AS CodiTimo,
            NULL as numero_liquidacion
        FROM ResumenPaso rp
        WHERE rp.SumaComi > 0
        -- =================================================================
        -- FIN DE LA CONSULTA COMPLEJA UNIFICADA
        -- =================================================================
    ) AS ci
    INNER JOIN infogov.tipomovii tm ON tm.CodiTimoi = ci.CodiTimoi
    INNER JOIN infogov.entereca er ON er.CodiEnre = ci.CodiEnre
       ORDER BY ci.FechCtactei, tm.OrdeTimoi;

END