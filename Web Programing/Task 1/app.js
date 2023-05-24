// npm init -y
// npm install



require('dotenv').config();

const PORT = process.env.PORT || 8081;
const DB_URL = process.env.DB_URL;
const HOST = process.env.HOST;

let express = require('express')
let app = express();

app.use(express.json()) 
let mongoose = require('mongoose')

try {    
    mongoose.connect(DB_URL, {useNewUrlParser: true}); 
} catch (error) {
    console.log(error);    
} 

const selectedDb = mongoose.connection;

selectedDb.on('error', (error)=>{
    console.log('There was an error: ', error);
})
selectedDb.on('open', ()=>{
    console.log('Connected');
})

app.listen(PORT,HOST, ()=>{
    console.log('Listening on: ', PORT);
})

const cryptoRouter = require('./routes/index');
app.use('/crypto', cryptoRouter) 