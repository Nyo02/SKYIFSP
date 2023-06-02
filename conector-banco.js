let conector = function(){
  //importacoes de modulos
  const express = require('express');
  const mysql = require('mysql');
  const app = express();
  const port = 3000;

  //dados para a conexao  
  const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'skyifsp'
  });

  // Conecta ao banco de dados verificando se há erro
  connection.connect((error) => {
    if (error) {
      console.error('Erro ao conectar ao banco de dados: ', error);
    } 
    else {
      console.log('Conexão bem-sucedida ao banco de dados!');
    }
    });

}

module.exports = conector;