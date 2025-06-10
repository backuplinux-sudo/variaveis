var express = require ('express'); 

var app = express();app.get('/', function (req, res) {
    res.send('A aplicação JavaScript está funcionando');
});app.listen(80, function() {
    console.log('Aplicação executando e escutando na porta 80');
});
