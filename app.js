//importações de módulos
const express = require("express");
const app = express();
const handlebars = require("express-handlebars");
const path = require("path");
const Sequelize = require("sequelize");

//conectando com o banco
const sequelize = new Sequelize("skyifsp", "root", "1234", {
    host: "localhost",
    dialect: "mysql"
})

sequelize.authenticate().then(function(){
    console.log("deu certo!");
}).catch(function(){
    console.log("aAaAaAaAaAaAai")
})

const Voo = sequelize.define("Voo", {
    ID_VOO: {
        type: Sequelize.INTEGER, 
        primaryKey: true,
        autoIncrement: true,
    },
    ORIGEM: {
        type: Sequelize.STRING,
        allowNull: false,
    },
    DESTINO: {
        type: Sequelize.STRING,
        allowNull: false,
    },
    DT_PARTIDA: {
        type: Sequelize.DATE,
        allowNull: false,
    },
    DT_CHEGADA: {
        type: Sequelize.DATE,
        allowNull: false,
    },
    HR_SAIDA: {
        type: Sequelize.TIME,
        allowNull: false,
    },
    HR_CHEGADA: {
        type: Sequelize.TIME,
        allowNull: false,
    },
    VO_AERONAVE: {
        type: Sequelize.INTEGER,
        allowNull: false,
    }

}, {tableName: "voo", 
    timestamps: false,
})

//sincronizando model com banco de dados
Voo.sync().then(() => {
    console.log('Tabela sincronizada com sucesso');
  })
  .catch((error) => {
    console.error('Erro ao sincronizar tabela:', error);
  });

//buscando registros no banco
Voo.findAll().then((voos) => {
    app.post("/passagensAereas", function(req, res){
        res.render("passagensAereas", {voos: voos});
        //res.send("testando" + req.body.Origem + "\n" + req.body.Destino + "\n" + req.body.dataSaida);
    })
}).catch((error) => {
    console.error('Erro ao consultar tabela:', error);
  });



//=========================================================================================


//config
    //template engine
    app.engine('handlebars', handlebars.engine({defaultLayout: 'main'}));
    app.set('view engine', 'handlebars');

app.use(express.urlencoded({extended: false}));
app.use(express.json());
app.use(express.static('public'));

//rotas
app.get("/", function(req, res){
    res.render("passagensAereas");
})





app.listen(8083, function(){
    console.log("aAaAaAaAai está funcionando mesmo")
})