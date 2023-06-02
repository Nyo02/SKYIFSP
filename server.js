
  // //importacoes de modulos
  // const express = require('express');
  // const mysql = require('mysql');
  // const app = express();
  // const port = 3000;

  // //dados para a conexao  
  // const connection = mysql.createConnection({
  //   host: 'localhost',
  //   user: 'root',
  //   password: '1234',
  //   database: 'skyifsp'
  // });

  // // Conecta ao banco de dados verificando se há erro
  // connection.connect((error) => {
  //   if (error) {
  //     console.error('Erro ao conectar ao banco de dados: ', error);
  //   } 
  //   else {
  //     console.log('Conexão bem-sucedida ao banco de dados!');
  //   }
  //   });


  // connection.query(`SELECT * FROM voo`, (error, results) => {
  //   if (error) {
  //     console.error('Erro ao consultar o banco de dados:', error);
  //     return;
  //   }
  
  //   if (results.length > 0) {
  //     console.log('Registros do banco de dados:');
  //     results.forEach((registro) => {
  //       console.log(registro);
  //     });
  //   } else {
  //     console.log('Nenhum registro encontrado.');
  //   }
  // });


  const conexao = require("./conector-banco");
  conexao();