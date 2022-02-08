const express = require("express");
const cors = require("cors");
const pool = require("./database");
const app = express();

app.use(express.json());
app.use(cors());

app.listen(process.env.PORT || 5000, () => {
  console.log("yeeeehaw");
});

//cars
app.get("/cars", async (req, res) => {
  try {
    const cars = await pool.query("SELECT * FROM cars");
    console.log(cars.rows);
    res.json(cars.rows);
  } catch (e) {
    console.log(e.message);
  }
});

//get cars by user name
///cars/Ryan Nguyen
app.get("/cars/:name", async (req, res) => {
  const name = req.params.name;
  try {
    const cars = await pool.query(
      "SELECT * FROM cars where user_id = (SELECT id from users where name = $1)",
      [name]
    );
    console.log(cars.rows);
    res.json(cars.rows);
  } catch (e) {
    console.log(e.message);
  }
});
