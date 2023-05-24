const mongoose  = require("mongoose"); 

const Crypto = new mongoose.Schema(
    {   
        curreny_name: {
            type: String,
            required: true,
        },
        price: {
            type: Number,
            required: true
        },
        market_cap: {
            type: Number,
            required: true,
        }

    }
)

module.exports = mongoose.model("crypto", Crypto);