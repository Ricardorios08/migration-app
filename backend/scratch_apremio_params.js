const maria = require('./db/maria');

(async () => {
    try {
        await maria.query('USE recaudacion');

        // 1. Tablas relacionadas con movilidad
        const moviTables = await maria.query("SHOW TABLES LIKE '%movi%'");
        console.log('=== TABLAS CON "movi" ===');
        console.log(JSON.stringify(moviTables, null, 2));

        // 2. Tabla pararenta (mapeo de conceptos contables)
        const pararenta = await maria.query("SELECT * FROM pararenta LIMIT 5");
        console.log('\n=== PARARENTA (primeros 5) ===');
        console.log(JSON.stringify(pararenta, null, 2));

        // 3. Estructura de boleapre
        const boleapreDesc = await maria.query("DESCRIBE boleapre");
        console.log('\n=== ESTRUCTURA BOLEAPRE ===');
        console.log(JSON.stringify(boleapreDesc, null, 2));

        // 4. Ejemplo de boleapre con gastos
        const ejemplo = await maria.query(`
            SELECT * FROM boleapre 
            WHERE CoadBoap > 0 
            LIMIT 3
        `);
        console.log('\n=== EJEMPLO BOLEAPRE CON GASTOS ===');
        console.log(JSON.stringify(ejemplo, null, 2));

        // 5. Tabla instjudi (instancias judiciales) - estructura
        const instjudiDesc = await maria.query("DESCRIBE instjudi");
        console.log('\n=== ESTRUCTURA INSTJUDI ===');
        console.log(JSON.stringify(instjudiDesc, null, 2));

        // 6. Ejemplo de instjudi
        const instjudiEj = await maria.query("SELECT * FROM instjudi LIMIT 3");
        console.log('\n=== EJEMPLO INSTJUDI ===');
        console.log(JSON.stringify(instjudiEj, null, 2));

    } catch (e) {
        console.error('ERROR:', e.message);
    } finally {
        process.exit();
    }
})();
