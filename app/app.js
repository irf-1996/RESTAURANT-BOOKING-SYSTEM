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
app.use(express.urlencoded({extended: true}))


app.post("/table-status", function(req, res) {
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
    console.log(booked_date);
    sql = "select * from booking_details where booked_date=?";
    db.query(sql, [booked_date]).then(results => {
        console.log(results)
        var data = ["0","0","0","0","0","0"];
        console.log(results.length)
        if (results) {
            let i =0;
            for (rows in results) {
                
                data[i] = results[i].table_id;
                i++;
            }
        }
        res.render('table', {data:data, booked_date})
    });
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

app.post ('/update-booking', function (req, res) {
    console.log(req.body)
    var selected_date = req.body.booked_date;
    sql = "INSERT INTO booking_details VALUES (?, ?, ?, ?, ?);"
    db.query(sql, [req.body.id, req.body.booked_date, req.body.name, req.body.email_id, req.body.status]).then(results => {
    });
    res.render('homepage');
});


// Start server on port 3000
app.listen(3000,function(){
    console.log(`Server running at http://127.0.0.1:3000/`);
});