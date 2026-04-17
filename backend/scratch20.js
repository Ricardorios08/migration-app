const http = require('http');
http.get('http://localhost:3001/api/ctacte/search-person?q=a', (res) => {
  let data = '';
  res.on('data', (chunk) => { data += chunk; });
  res.on('end', () => {
    let persons;
    try { persons = JSON.parse(data); } catch(e) {}
    if (persons && persons.length > 0) {
        let p = persons[0];
        console.log("Found person:", p.percod, p.pernom);
        
        // NOW fetch new/search
        let url = `http://localhost:3001/api/ctacte/new/search?officeId=1&searchType=person&percod=${p.percod}`;
        http.get(url, (r2) => {
            let d2 = '';
            r2.on('data', (chunk) => { d2 += chunk; });
            r2.on('end', () => {
                let j; try { j = JSON.parse(d2); } catch(e){}
                console.log("new/search returns count:", j ? j.length : "invalid JSON");
            });
        });
    } else {
        console.log("No person found for 'a'");
    }
  });
});
