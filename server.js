const express = require('express');
const mysql = require('mysql');
const app = express();
const port = 3000;

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'skyifsp'
})

// Conecta-se ao banco de dados
connection.connect((error) => {
    if (error) {
      console.error('Erro ao conectar ao banco de dados: ', error);
    } else {
      console.log('Conexão bem-sucedida ao banco de dados!');
    }
  });

// Definir rota de exemplo para obter todos os registros da tabela
app.get('/registros', (req, res) => {
    const sql = 'SELECT * FROM voo'; // Substitua "sua_tabela" pelo nome da sua tabela
  
    // Executa a consulta SQL
    connection.query(sql, (error, results) => {
      if (error) {
        console.error('Erro ao executar consulta: ', error);
        res.status(500).send('Erro ao executar consulta');
      } else {
        res.json(results);
      }
    });
  });
  
  // Iniciar o servidor
  app.listen(port, () => {
    console.log(`Servidor iniciado na porta ${port}`);
  });