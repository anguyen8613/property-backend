const Pool = require("pg").Pool;

const pool = new Pool({
  user: "miugztcqdirlku",
  password: "397cd0053bc1114a219abce0c52417309b6d2ab0040605e55135ec4225c76890",
  host: "ec2-54-159-176-167.compute-1.amazonaws.com",
  port: 5432,
  database: "ddd5fev31lme65",
  ssl: { rejectUnauthorized: false },
});

module.exports = pool;
