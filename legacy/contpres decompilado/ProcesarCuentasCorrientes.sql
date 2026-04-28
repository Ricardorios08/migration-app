CREATE DEFINER=`root`@`%` PROCEDURE `inspeccion`.`ProcesarCuentasCorrientes`(
	IN `p_desde` DATE,
	IN `p_hasta` DATE
)
BEGIN
    DECLARE table_exists INT;
    
    set p_desde = '2023-01-01';

    -- Verificar si la tabla inspeccion.resumen_ctacte_final5 existe
    SELECT COUNT(*)
    INTO table_exists
    FROM information_schema.tables
    WHERE table_schema = 'inspeccion' AND table_name = 'resumen_ctacte_final';


 TRUNCATE TABLE inspeccion.resumen_ctacte_final;
 
 
    IF table_exists = 0 THEN
        -- Si la tabla NO existe, la creamos
        CREATE TABLE inspeccion.resumen_ctacte_final
        AS
        SELECT
            ci.CodiUnfi codigo_organismo,
            ci.CodiServ servicio ,
            ci.CuenCtct1 cuenta1,
            ci.CuenCtct2 cuenta2,
            ci.titular titular,
            ci.PeriCtct periodo_cta_cte,
            ci.BimeCtct cuota_cta_cte,
            ci.NumeCtct numero_cta_cte,
            ci.MoviCtct movimiento_cta_cte,
            ci.NumeBole as numero_boleto,
            ci.PeriBole periodo_boleto,
            ci.OrigArch origen_archivo,
            fecha_proceso fecha_proceso,
            ci.CodiTimoi as tipo_movimiento,
            ci.DebiCtactei as debito,
            ci.CredCtactei as credito,
            ci.NumeExpe as expediente,
            ci.CodiEnre as ente_recaudador,
            ci.LetrXnet as letra_xnet,
            IFNULL(ci.ObseCtactei, '') as observaciones,
            tm.DetaTimoi as detalle,
            er.DetaEnre as detalle_ente_recaudador,
            fecha_proceso_completa,
            ci.fecha_alta_cuenta_corriente as fecha_cuenta_corriente,
            ci.CodiTimo as codigo_tipo_movimiento
        FROM (
            SELECT
                cd.codiunfi  AS CodiUnfi,
                cc.CodiServ,
                cc.CuenCtct1,
                cc.CuenCtct2,
                '' AS titular,
                cc.PeriCtct,
                cc.BimeCtct,
                cc.NumeCtct,
                cc.MoviCtct,
                cc.NumeBole,
                cc.PeriBole,
                a.OrigArch,
                date(cc.AltaFeho) AS fecha_proceso,
              -- IF(cc.CodiTimo = 37, 3, -- Modificación aquí para CodiTimoi: si es 37, asigna 3
                --   IF(cc.CodiTimo = 36, 1,
                  --    IF(cc.CodiTimo = 109, 3,
                    --     IF(cc.PeriCtct >= YEAR(NOW()), 5, 4)
                      -- )
                   -- )
                -- ) AS CodiTimoi,
     			 CASE 
  			     WHEN cc.CodiTimo = 37 THEN 3
  				 WHEN cc.CodiTimo = 36 THEN 1
   				 WHEN cc.CodiTimo = 109 THEN 3
   				 WHEN cc.PeriCtct >= YEAR(cc.AltaFeho) THEN 5
   				 ELSE 4
				 END AS CodiTimoi,
                cd.DebeCtde AS DebiCtactei,
                cd.CredCtde AS CredCtactei,
                cd.ExpliqCtde AS NumeExpe,
                       IF(cc.CodiTimo = 36 OR cc.CodiTimo = 37, 1, -- Esta condición se mantiene como en la respuesta anterior para CodiEnre
			       IF(cc.CodiTimo = 109, 1, ac.CodiEnre) 
			    ) AS CodiEnre,
                u.Xn36Unfi AS LetrXnet,
                IF(ac.CodiEnre = 3, CONCAT('Lote: ', a.LoteArch), '') AS ObseCtactei,
                cc.AltaFeho AS fecha_proceso_completa,
                cc.FealCtct AS fecha_alta_cuenta_corriente,
                cc.CodiTimo
            FROM recaudacion.ctacte cc
            JOIN recaudacion.ctactedeta cd
                ON cc.CodiServ = cd.CodiServ
                AND cc.CuenCtct1 = cd.CuenCtct1
                AND cc.CuenCtct2 = cd.CuenCtct2
                AND cc.PeriCtct = cd.PeriCtct
                AND cc.BimeCtct = cd.BimeCtct
                AND cc.NumeCtct = cd.NumeCtct
                AND cc.MoviCtct = cd.MoviCtct
            JOIN infogov.unidadfinanc u
                ON cd.CodiUnfi = u.CodiUnfi
            LEFT JOIN recaudacion.acrepago ac
                ON cc.FeenAcpa = ac.FeenAcpa
                AND cc.NumeAcpa = ac.NumeAcpa
            LEFT JOIN recaudacion.archivo a
                ON a.IdArch = ac.IdArch
            WHERE
                cc.CodiServ IN ('A', 'B', 'C', 'I')
                AND DATE(cc.AltaFeho) BETWEEN p_desde AND p_hasta
                AND u.TipoUnfi IN (0, 1)
                AND cc.CodiUsua <> 'migra'
        ) AS ci
        LEFT JOIN infogov.tipomovii tm ON tm.CodiTimoi = ci.CodiTimoi
        LEFT JOIN infogov.entereca er ON er.CodiEnre = ci.CodiEnre
        ORDER BY ci.fecha_proceso, tm.OrdeTimoi;
    ELSE
        -- Si la tabla YA existe, primero eliminamos los datos existentes para el rango de fechas
        -- para evitar duplicados y luego insertamos los nuevos datos.
       
		 
		 # DELETE FROM inspeccion.resumen_ctacte_final
        #WHERE fecha_proceso BETWEEN p_desde AND p_hasta;
        
        
        TRUNCATE TABLE inspeccion.resumen_ctacte_final;
        
        

        INSERT INTO inspeccion.resumen_ctacte_final (
            codigo_organismo, servicio, cuenta1, cuenta2, titular, periodo_cta_cte,
            cuota_cta_cte, numero_cta_cte, movimiento_cta_cte, numero_boleto,
            periodo_boleto, origen_archivo, fecha_proceso, tipo_movimiento,
            debito, credito, expediente, ente_recaudador, letra_xnet,
            observaciones, detalle, detalle_ente_recaudador, fecha_proceso_completa,
            fecha_cuenta_corriente, codigo_tipo_movimiento
        )
        SELECT
            ci.CodiUnfi,
            ci.CodiServ,
            ci.CuenCtct1,
            ci.CuenCtct2,
            ci.titular,
            ci.PeriCtct,
            ci.BimeCtct,
            ci.NumeCtct,
            ci.MoviCtct,
            ci.NumeBole,
            ci.PeriBole,
            ci.OrigArch,
            fecha_proceso,
            ci.CodiTimoi,
            ci.DebiCtactei,
            ci.CredCtactei,
            ci.NumeExpe,
            ci.CodiEnre,
            ci.LetrXnet,
            IFNULL(ci.ObseCtactei, ''),
            tm.DetaTimoi,
            er.DetaEnre,
            fecha_proceso_completa,
            ci.fecha_alta_cuenta_corriente,
            ci.CodiTimo
        FROM (
            SELECT
                cd.codiunfi  AS CodiUnfi,
                cc.CodiServ,
                cc.CuenCtct1,
                cc.CuenCtct2,
                '' AS titular,
                cc.PeriCtct,
                cc.BimeCtct,
                cc.NumeCtct,
                cc.MoviCtct,
                cc.NumeBole,
                cc.PeriBole,
                a.OrigArch,            
                -- date(cc.AltaFeho) AS fecha_proceso,
               -- IF(cc.CodiTimo = 37, 3, -- Modificación aquí para CodiTimoi: si es 37, asigna 3
                  --  IF(cc.CodiTimo = 36, 1,
                     -- IF(cc.CodiTimo = 109, 3,
                       --  IF(cc.PeriCtct >= YEAR(NOW()), 5, 4)
                      -- )
                   -- )
                -- ) AS CodiTimoi,                
            date(cc.AltaFeho) AS fecha_proceso,
			CASE 
    		WHEN cc.CodiTimo = 37 THEN 3
    		WHEN cc.CodiTimo = 36 THEN 1
    		WHEN cc.CodiTimo = 109 THEN 3
    		WHEN cc.PeriCtct >= YEAR(cc.AltaFeho) THEN 5
    		ELSE 4
			END AS CodiTimoi,
                cd.DebeCtde AS DebiCtactei,
                cd.CredCtde AS CredCtactei,
                cd.ExpliqCtde AS NumeExpe,
                 IF(cc.CodiTimo = 36 OR cc.CodiTimo = 37, 1, -- Esta condición se mantiene como en la respuesta anterior para CodiEnre
			       IF(cc.CodiTimo = 109, 1, ac.CodiEnre) 
			    ) AS CodiEnre,
                u.Xn36Unfi AS LetrXnet,
                IF(ac.CodiEnre = 3, CONCAT('Lote: ', a.LoteArch), '') AS ObseCtactei,
                cc.AltaFeho AS fecha_proceso_completa,
                cc.FealCtct AS fecha_alta_cuenta_corriente,
                cc.CodiTimo
            FROM recaudacion.ctacte cc
            JOIN recaudacion.ctactedeta cd
                ON cc.CodiServ = cd.CodiServ
                AND cc.CuenCtct1 = cd.CuenCtct1
                AND cc.CuenCtct2 = cd.CuenCtct2
                AND cc.PeriCtct = cd.PeriCtct
                AND cc.BimeCtct = cd.BimeCtct
                AND cc.NumeCtct = cd.NumeCtct
                AND cc.MoviCtct = cd.MoviCtct
            JOIN infogov.unidadfinanc u
                ON cd.CodiUnfi = u.CodiUnfi
            LEFT JOIN recaudacion.acrepago ac
                ON cc.FeenAcpa = ac.FeenAcpa
                AND cc.NumeAcpa = ac.NumeAcpa
            LEFT JOIN recaudacion.archivo a
                ON a.IdArch = ac.IdArch
            WHERE
                cc.CodiServ IN ('A', 'B', 'C', 'I')
                AND DATE(cc.AltaFeho) BETWEEN p_desde AND p_hasta
                AND u.TipoUnfi IN (0, 1)
                AND cc.CodiUsua <> 'migra'
        ) AS ci
        LEFT JOIN infogov.tipomovii tm ON tm.CodiTimoi = ci.CodiTimoi
        LEFT JOIN infogov.entereca er ON er.CodiEnre = ci.CodiEnre
        ORDER BY ci.fecha_proceso, tm.OrdeTimoi;
    END IF;
END