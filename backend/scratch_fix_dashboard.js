const fs = require('fs');

let data = fs.readFileSync('routes/dashboard.js', 'utf8');

// 1. Fix mdCountsLocal and mdCountsRemote
data = data.replace(
    /const \[pgCounts, mdCountsLocal, mdCountsRemote\] = await Promise\.all\(\[\s+postgres\.query\([\s\S]*?\),\s+maria\.query\([\s\S]*?\)\.catch\(e => { console\.error\('MD Local Counts Error:', e\); return \[\]; }\),\s+maria\.queryRemote\([\s\S]*?\)\.catch\(e => { console\.error\('MD Remote Counts Error:', e\); return \[\]; }\)\s+\]\);/,
    `const [pgCounts, mdCounts] = await Promise.all([
            postgres.query(\`
                SELECT tpotribcod as id, COUNT(*) as count 
                FROM tributo 
                GROUP BY tpotribcod
            \`),
            maria.query(\`
                SELECT CodiOfic as id, COUNT(DISTINCT CuenCtct) as count 
                FROM ctacte 
                GROUP BY CodiOfic
            \`).catch(e => { console.error('MD Counts Error:', e); return []; })
        ]);`
);

data = data.replace(
    /console\.log\('\[DASHBOARD\] MD Counts:', {\s+local: mdCountsLocal\.map\(c => `\${c\.id}:\${c\.count}`\)\.join\(', '\),\s+remote: mdCountsRemote\.map\(c => `\${c\.id}:\${c\.count}`\)\.join\(', '\)\s+}\);/,
    `console.log('[DASHBOARD] MD Counts:', mdCounts.length);`
);

data = data.replace(
    /const mCL = mdCountsLocal\.find\(c => c\.id === off\.id\) \|\| { count: 0 };\s+const mCR = mdCountsRemote\.find\(c => c\.id === off\.id\) \|\| { count: 0 };\s+return { \s+id: off\.id, \s+name: off\.name, \s+accountsMigrated: parseInt\(pgC\.count\),\s+accountsMaria: parseInt\(mCL\.count\) \+ parseInt\(mCR\.count\)\s+};/,
    `const mdC = mdCounts.find(c => c.id === off.id) || { count: 0 };

            return { 
                id: off.id, 
                name: off.name, 
                accountsMigrated: parseInt(pgC.count),
                accountsMaria: parseInt(mdC.count)
            };`
);

// 2. Fix Recaudadores
data = data.replace(
    /const \[recaLocal, recaRemote\] = await Promise\.all\(\[\s+fetchReca\(maria\.query\)\.catch\(\(\) => \[\]\),\s+fetchReca\(maria\.queryRemote\)\.catch\(\(\) => \[\]\)\s+\]\);\s+\/\/ Merge Recaudadores\s+const recaMap = {};\s+\[\.\.\.recaLocal, \.\.\.recaRemote\]\.forEach\(r => {\s+if \(!recaMap\[r\.CodiReca\]\) {\s+recaMap\[r\.CodiReca\] = { \.\.\.r, CantApremios: Number\(r\.CantApremios\), TotalApre: parseFloat\(r\.TotalApre \|\| 0\) };\s+} else {\s+recaMap\[r\.CodiReca\]\.CantApremios \+= Number\(r\.CantApremios\);\s+recaMap\[r\.CodiReca\]\.TotalApre \+= parseFloat\(r\.TotalApre \|\| 0\);\s+}\s+}\);\s+auditState\.recaudadores = Object\.values\(recaMap\)\.sort\(\(a, b\) => b\.TotalApre - a\.TotalApre\);/,
    `const recaLocal = await fetchReca(maria.query).catch(() => []);
        auditState.recaudadores = recaLocal.map(r => ({ ...r, CantApremios: Number(r.CantApremios), TotalApre: parseFloat(r.TotalApre || 0) })).sort((a, b) => b.TotalApre - a.TotalApre);`
);

// 3. Fix Grandes Contribuyentes
data = data.replace(
    /const \[mdPLocal, mdPRemote\] = await Promise\.all\(\[\s+maria\.query\(`SELECT nro_padron FROM vpadrones_persona WHERE CUIT = \?`, \[cuit\]\)\.catch\(\(\) => \[\]\),\s+maria\.queryRemote\(`SELECT nro_padron FROM vpadrones_persona WHERE CUIT = \?`, \[cuit\]\)\.catch\(\(\) => \[\]\)\s+\]\);\s+let totalMdDebt = 0;\s+\/\/ Fetch debt for all pads found in Local\s+if \(mdPLocal\.length > 0\) {\s+const pads = mdPLocal\.map\(p => p\.nro_padron\);\s+const res = await maria\.query\(`\s+SELECT SUM\(DebeCtct - CredCtct\) as total \s+FROM ctacte \s+WHERE TRIM\(CuenCtct\) IN \(\${pads\.map\(p => `'\${p}'`\)\.join\(','\)}\) AND DebeCtct > CredCtct\s+`\);\s+totalMdDebt \+= parseFloat\(res\[0\]\?\.total \|\| 0\);\s+}\s+\/\/ Fetch debt for all pads found in Remote\s+if \(mdPRemote\.length > 0\) {\s+const pads = mdPRemote\.map\(p => p\.nro_padron\);\s+const res = await maria\.queryRemote\(`\s+SELECT SUM\(DebeCtct - CredCtct\) as total \s+FROM ctacte \s+WHERE TRIM\(CuenCtct\) IN \(\${pads\.map\(p => `'\${p}'`\)\.join\(','\)}\) AND DebeCtct > CredCtct\s+`\);\s+totalMdDebt \+= parseFloat\(res\[0\]\?\.total \|\| 0\);\s+}/,
    `const mdPLocal = await maria.query(\`SELECT nro_padron FROM vpadrones_persona WHERE CUIT = ?\`, [cuit]).catch(() => []);

                let totalMdDebt = 0;
                
                // Fetch debt for all pads found in Local
                if (mdPLocal.length > 0) {
                    const pads = mdPLocal.map(p => p.nro_padron);
                    const res = await maria.query(\`
                        SELECT SUM(DebeCtct - CredCtct) as total 
                        FROM ctacte 
                        WHERE TRIM(CuenCtct) IN (\${pads.map(p => \`'\${p}'\`).join(',')}) AND DebeCtct > CredCtct
                    \`);
                    totalMdDebt += parseFloat(res[0]?.total || 0);
                }`
);

// 4. Fix Debt Comparison
data = data.replace(
    /const \[mdDebtLocal, mdDebtRemote, pgDebt\] = await Promise\.all\(\[\s+fetchDebt\(maria\.query\)\.catch\(e => { console\.error\('MD Local Debt Error:', e\); return \[\]; }\),\s+fetchDebt\(maria\.queryRemote\)\.catch\(e => { console\.error\('MD Remote Debt Error:', e\); return \[\]; }\),\s+postgres\.query\([\s\S]*?\)\.catch\(e => { console\.error\('PG Debt Error:', e\); return { rows: \[\] }; }\)\s+\]\);\s+console\.log\('\[DASHBOARD\] mdDebtLocal:', mdDebtLocal\.length\);\s+console\.log\('\[DASHBOARD\] mdDebtRemote:', mdDebtRemote\.length\);\s+auditState\.debt = auditState\.summary\.map\(item => {\s+const l = \(mdDebtLocal \|\| \[\]\)\.find\(d => d\.id === item\.id\) \|\| { capital: 0, interest: 0 };\s+const r = \(mdDebtRemote \|\| \[\]\)\.find\(d => d\.id === item\.id\) \|\| { capital: 0, interest: 0 };\s+const pD = pgDebt\.rows\.find\(d => parseInt\(d\.id\) === item\.id\) \|\| { capital: 0, interest: 0 };\s+const mCap = parseFloat\(l\.capital \|\| 0\) \+ parseFloat\(r\.capital \|\| 0\);\s+const mInt = parseFloat\(l\.interest \|\| 0\) \+ parseFloat\(r\.interest \|\| 0\);\s+const pCap = parseFloat\(pD\.capital \|\| 0\);\s+const pInt = parseFloat\(pD\.interest \|\| 0\);/,
    `const [mdDebtLocal, pgDebt] = await Promise.all([
            fetchDebt(maria.query).catch(e => { console.error('MD Debt Error:', e); return []; }),
            postgres.query(\`
                SELECT t.tpotribcod as id, 
                       SUM(genctaimpcta) as capital, 
                       SUM(genctaintpcta) as interest
                FROM generacioncuota g
                JOIN tributo t ON g.genctatribcod = t.tribcod
                WHERE NOT EXISTS (
                    SELECT 1 FROM cuentacorriente cc 
                    WHERE cc.genctacod = g.genctacod 
                    AND cc.cabpgoctactecod != 0
                )
                GROUP BY t.tpotribcod
            \`).catch(e => { console.error('PG Debt Error:', e); return { rows: [] }; })
        ]);

        console.log('[DASHBOARD] mdDebtLocal:', mdDebtLocal.length);

        auditState.debt = auditState.summary.map(item => {
            const l = (mdDebtLocal || []).find(d => d.id === item.id) || { capital: 0, interest: 0 };
            const pD = pgDebt.rows.find(d => parseInt(d.id) === item.id) || { capital: 0, interest: 0 };
            
            const mCap = parseFloat(l.capital || 0);
            const mInt = parseFloat(l.interest || 0);
            const pCap = parseFloat(pD.capital || 0);
            const pInt = parseFloat(pD.interest || 0);`
);

fs.writeFileSync('routes/dashboard.js', data);
