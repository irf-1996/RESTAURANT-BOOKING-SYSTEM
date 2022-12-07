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

// import table class

const { Table } = require("./models/table");

const { Menu } = require("./models/menu");

app.use(express.urlencoded({extended: true}))

// Homepage for restaurant

app.get("/homepage", function(req, res) {
    // res.send("Welcome to our restaurant!");
    res.render('homepage');
});

// route to get table status 

app.post("/table_status", async function(req, res) {
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

// Route to go to booking form

app.get("/book_table_form/:table_id", function(req, res) {
    var table_id = req.params.table_id;
    res.render('book_table', {table_id});
});

// Route to book a table

app.post ('/add_booking', async function (req, res) {
    // console.log(req.body)
    var table = new Table();
    table.details_to_book = req.body;
    await table.addBooking(table.details_to_book)
        res.render('booking_success', {table});
});

// display menu

app.get("/menu", async function(req, res) {
    var menu = new Menu()
    await menu.getMenuList()
        res.render('menu', {menu});
});

app.get("/edit_menu", async function(req, res) {
    var menu = new Menu()
    await menu.getMenuList()
        res.render('edit_menu', {menu});
});

app.get("/edit_item_form/:item_id", async function(req, res) {
    console.log(req.body)
    var menu = new Menu();
    menu.item_id = req.params.item_id;
    await menu.getMenuItem(req.params.item_id)
        res.render('edit_menu_form', {menu});
});

app.post ('/edit_item', async function (req, res) {
    console.log("body is",  req.body)
    var menu = new Menu();
    menu.details_to_edit = req.body;
    await menu.editItem(menu.details_to_edit)
        res.render('edit_success', {menu});
});


// Start server on port 3000
app.listen(3000,function(){
    console.log(`Server running at http://127.0.0.1:3000/`);
});