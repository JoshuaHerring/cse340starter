const {Pool} = require("pg");
require("dotenv").config();

// comment out lines 8-10 for deployment (the ssl block)

const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false,
    },
})

module.exports = pool;