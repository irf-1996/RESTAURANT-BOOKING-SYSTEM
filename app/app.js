// Import express.js
const express = require("express");

// Create express app
var app = express();


// Add static files location
app.use(express.static("static"));

// use pug templating engine
app.set('view engine', 'pug');
app.set('views', './app/views');

// Get the functions in the db.js file to use
const db = require('./services/db');
const { Table } = require("./models/table");
app.use(express.urlencoded({extended: true}))


app.post("/table-status", async function(req, res) {
    // console.log(req.body)
    // params = req.body;
    // var booked_date = params.selected_date;
    var booked_date = 2022-11-30;
    if (req.body) {
        params = req.body;
        var booked_date = params.selected_date;
    } else {
        var booked_date = 2022-11-30;
    }
    var table = new Table ();
    table.booked_date = booked_date;
    await table.getBookingStatus()
        console.log(table);
        res.render('table', {data:table.booking_status, booked_date})
});


// Homepage for restaurant

app.get("/homepage", function(req, res) {
    // res.send("Welcome to our restaurant!");
    res.render('homepage');
});

app.get("/book-table/:table_id", function(req, res) {
    var table_id = req.params.table_id;
    res.render('book-table', {table_id});
});

app.post ('/add-booking', async function (req, res) {
    // console.log(req.body)
    var table = new Table();
    table.details_to_book = req.body;
    await table.addBooking(table.details_to_book)
        res.render('booking-success', {table});
});


// Start server on port 3000
app.listen(3000,function(){
    console.log(`Server running at http://127.0.0.1:3000/`);
});