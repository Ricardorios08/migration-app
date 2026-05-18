async function testSmartResolverAPI() {
    try {
        console.log("================= INICIANDO SESIÓN EN LA API =================");
        const loginUrl = 'http://localhost:3006/api/auth/login';
        const loginResponse = await fetch(loginUrl, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                nombre_usuario: 'Ricardo',
                password: 'S0p0rt3s'
            })
        });
        
        const loginData = await loginResponse.json();
        console.log("LOGIN HTTP CODE:", loginResponse.status);
        
        if (!loginData.token) {
            console.error("No se pudo obtener el token. Respuesta:", loginData);
            process.exit(1);
        }
        
        const token = loginData.token;
        console.log("Token obtenido con éxito.");

        console.log("\n================= PROBANDO SMART RESOLVER API =================");
        const searchUrl = 'http://localhost:3006/api/ctacte/legacy/search?officeId=3&account=110971';
        console.log("Haciendo petición GET a:", searchUrl);
        
        const searchResponse = await fetch(searchUrl, {
            headers: {
                'Authorization': `Bearer ${token}`
            }
        });
        
        const searchData = await searchResponse.json();
        console.log("BÚSQUEDA HTTP CODE:", searchResponse.status);
        console.log(`Número de registros devueltos: ${searchData.length}`);
        
        if (searchData.length > 0) {
            console.log("\nMuestra de registros legacy resueltos (primeros 5):");
            console.log(JSON.stringify(searchData.slice(0, 5), null, 2));
            
            // Check if CuenCtct is properly returned as 110971
            const allMatch = searchData.every(row => row.CuenCtct === '110971');
            console.log(`\n¿Todos los registros tienen CuenCtct = '110971'? ${allMatch}`);
        } else {
            console.log("No se devolvió ningún registro.");
        }
        
    } catch (err) {
        console.error("ERROR DE CONEXIÓN O EJECUCIÓN:", err);
    } finally {
        process.exit();
    }
}

testSmartResolverAPI();
