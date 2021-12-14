

const express = require('express');
const fs = require('fs');
const mysql = require('mysql');

const credentials = JSON.parse(fs.readFileSync('credentials.json', 'utf8'));
const connection = mysql.createConnection(credentials);

const service = express();
service.use(express.json());


connection.connect(error => {
  if (error) {
    console.error(error);
    process.exit(1);
  }
});

// // define endpoints...



service.use((request, response, next) => {
    response.set('Access-Control-Allow-Origin', '*');
    next();
});

service.options('*', (request, response) => {
    response.set('Access-Control-Allow-Headers', 'Content-Type');
    response.set('Access-Control-Allow-Methods', 'GET,POST,PATCH,DELETE');
    response.sendStatus(200);
});


const port = 5001;
service.listen(port, () => {
  console.log(`We're live in port ${port}!`);
});


function rowToPlayer(row) {
    return {
      id: row.id,
      number: row.number,
      firstName: row.firstName,
      lastName: row.lastName,
      age: row.age,
      team: row.team,
      position: row.position,
      
    };
  }


function rowToRoster(row) {
  return {
    id: row.id,
    teamname: row.teamname,
    pointguard: row.pointguard,
    shootinguard: row.shootinguard,
    smallforward: row.smallforward,
    powerforward: row.powerforward,
    center: row.center,
  };
}

function rowToStanding(row) {
  return {
    id: row.id,
    teamname: row.teamname,
    wins: row.wins,
    losses: row.losses,
  };
}

// SELECT endpoints
service.get('/roster/:teamname', (request, response) => {
  const parameters = request.params.teamname;

  const query = 'SELECT * FROM roster WHERE teamname = ?';
  connection.query(query, parameters, (error, rows) => {
    if (error) {
      response.status(500);
      response.json({
        ok: false,
        results: error.message,
      });
    } else {
      const players = rows.map(rowToRoster);
      response.json({
        ok: true,
        results: rows.map(rowToRoster),
      });
    }
  });
});

// SELECT endpoints
service.get('/roster/', (request, response) => {
  const parameters = request.params.teamname;

  const query = 'SELECT * FROM roster';
  connection.query(query, parameters, (error, rows) => {
    if (error) {
      response.status(500);
      response.json({
        ok: false,
        results: error.message,
      });
    } else {
      const players = rows.map(rowToRoster);
      response.json({
        ok: true,
        results: rows.map(rowToRoster),
      });
    }
  });
});

// SELECT endpoints
service.get('/players/:id', (request, response) => {
  const parameters = request.params.id;

  const query = 'SELECT * FROM players WHERE id = ?';
  connection.query(query, parameters, (error, rows) => {
    if (error) {
      response.status(500);
      response.json({
        ok: false,
        results: error.message,
      });
    } else {
      const players = rows.map(rowToPlayer);
      response.json({
        ok: true,
        results: rows.map(rowToPlayer),
      });
    }
  });
});

  service.get('/all', (request, response) => {
  
    const query = 'SELECT * FROM players';
    connection.query(query, (error, rows) => {
      if (error) {
        response.status(500);
        response.json({
          ok: false,
          results: error.message,
        });
      } else {
        const players = rows.map(rowToPlayer);
        response.json({
          ok: true,
          results: rows.map(rowToPlayer),
        });
      }
    });
  });


 service.get('/standing', (request, response) => {
  
    const query = 'SELECT * FROM standings';
    connection.query(query, (error, rows) => {
      if (error) {
        response.status(500);
        response.json({
          ok: false,
          results: error.message,
        });
      } else {
        const players = rows.map(rowToStanding);
        response.json({
          ok: true,
          results: rows.map(rowToStanding),
        });
      }
    });
  });
  
  

// SELECT endpoints
service.get('/players/:firstname', (request, response) => {
  const parameters = request.params.firstname;

  const query = 'SELECT * FROM players WHERE firstname = ? ORDER BY totalpoints DESC';
  connection.query(query, parameters, (error, rows) => {
    if (error) {
      response.status(500);
      response.json({
        ok: false,
        results: error.message,
      });
    } else {
      const players = rows.map(rowToPlayer);
      response.json({
        ok: true,
        results: rows.map(rowToPlayer),
      });
    }
  });
});

// // // POST Endpoint
service.post('/players', (request, response) => {
  if (request.body.hasOwnProperty('id') &&
      request.body.hasOwnProperty('firstname') &&
      request.body.hasOwnProperty('lastname') &&
      request.body.hasOwnProperty('fullname') &&
      request.body.hasOwnProperty('totalpoints')) {

    const parameters = [
      request.body.id,
      request.body.firstname,
      request.body.lastname,
      request.body.fullname,
      request.body.totalpoints,
    ];
	
	const query = 'INSERT INTO players(id, firstname, lastname, fullname, totalpoints) VALUES (?, ?, ?, ?, ?)';
    connection.query(query, parameters, (error, result) => {
      if (error) {
        response.status(500);
        response.json({
          ok: false,
          results: error.message,
        });
      } else {
        response.json({
          ok: true,
          results: result.insertId,
        });
      }
    });

  } else {
    response.status(400);
    response.json({
      ok: false,
      results: 'FAIL',
    });
  }
});



// update
service.patch('/players/:id', (request, response) => {
  const parameters = [
    request.body.id,
    request.body.firstname,
    request.body.lastname,
    request.body.fullname,
    request.body.totalpoints,
  ];
  const query = 'UPDATE players SET id = ?, firstname = ?, lastname = ?, fullname = ?, totalpoints = ? WHERE id = ?';
  connection.query(query, parameters, (error, result) => {
    if (error) {
	  response.status(404);
      response.json({
        ok: false,
        results: error.message,
      });
    } else {
      response.json({
        ok: true,
      });
    }
  });
});

// REMOVEER
service.delete('/players/:id', (request, response) => {
  const parameters = [parseInt(request.params.id)];

  const query = 'UPDATE players SET is_deleted = 1 WHERE id = ?';
  connection.query(query, parameters, (error, result) => {
    if (error) {
      response.status(404);
      response.json({
        ok: false,
        results: error.message,
      });
    } else {
      response.json({
        ok: true,
      });
    }
  });
});



service.get("/report.html", (req, res) => {
	res.sendFile(__dirname + "/report.html");
});
