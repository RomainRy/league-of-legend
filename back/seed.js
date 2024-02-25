import fs from 'fs';
import mysql from 'mysql';

//Configuration de la connexion à la base de données MySQL
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'league-of-legend'
  });
  
  // Lecture du fichier JSON contenant les champions
  fs.readFile('champions.json', 'utf8', (err, data) => {
    if (err) {
      console.error('Erreur de lecture du fichier JSON :', err);
      return;
    }
  
    const champions = JSON.parse(data);
  
    // Connexion à la base de données MySQL
    connection.connect((err) => {
      if (err) {
        console.error('Erreur de connexion à la base de données :', err);
        return;
      }
  
      console.log('Connecté à la base de données MySQL');
  
      // Insertion des champions dans la base de données
      const sql = 'INSERT INTO champion (name, type) VALUES ?';
      const values = champions.map(champion => [champion.name, champion.type]);
  
      connection.query(sql, [values], (err, result) => {
        if (err) {
          console.error('Erreur lors de l\'insertion des champions :', err);
          return;
        }
  
        console.log('Champions insérés avec succès dans la base de données');
        connection.end(); // Fermeture de la connexion à la base de données
      });
    });
  });