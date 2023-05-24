const express = require('express');
const app = express();
const PORT = process.env.PORT;

app.set('view engine', 'ejs');
//array list
const crypto = [
    {
        name:'bit',
        price: 500
    },
    {   name:'tri',
        price:400
    }
]; 
app.get('/', (req, res)=>{
       
    res.render('crypto',{crypto:crypto});
})
app.get('/add', )
app.post('/add', (req, res)=>{

})

app.listen(port, () => {
    console.log('app listen', PORT)
});