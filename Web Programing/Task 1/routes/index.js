const express = require("express");
const cryptoRouter = express.Router();

const Crypto = require("../models/crypto"); 

cryptoRouter.post("/add", async (req, res) => {
  const crypto_to_save = new Crypto({  
    curreny_name: req.body.curreny_name,
    price: req.body.price,
    market_cap: req.body.market_cap
  })
  try {
    const newCrypto = await crypto_to_save.save(); 
    res.status(201).json(newCrypto);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});


cryptoRouter.get("/view", async (req, res) => {
  try {
    const foundCrypto = await Crypto.find();
    res.json(foundCrypto);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});


cryptoRouter.get("/view/:id", async (req, res) => {
  let cryptoID = req.params.id; 
  try {
    const foundCrypto = await Crypto.findById(cryptoID);
    res.json(foundCrypto);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

cryptoRouter.put("/update/:id", async (req, res) => {
    let cryptoID = req.params.id;
    let cryptoprice = req.params.price
    try {
        const foundCrypto = await Crypto.updateOne(cryptoID);
        res.json(foundCrypto);
    } catch (error){
        res.status(500).json({ message: error.message})
    }

})

cryptoRouter.delete("/delete/:id", async (req, res)=>{
    let cryptoID = req.params.id;
    try {
        const foundCrypto = await Crypto.deleteOne(cryptoID);
        res.json(foundCrypto);
    } catch (error) {
        res.status(500).json({ message: error.message})        
    }

})

module.exports = usersRouter;