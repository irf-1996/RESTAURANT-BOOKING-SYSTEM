// Import express.js
const express = require("express");
// Create express app
var app = express();
// Set the sessions
var session = require("express-session");
app.use(
  session({
    secret: "secretkeysdfjsflyoifasd",
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false },
  })
);

// Add static files location
app.use(express.static("static"));

// use pug templating engine
app.set("view engine", "pug");
app.set("views", "./app/views");

// Get the functions in the db.js file to use
const db = require("./services/db");
app.use(express.urlencoded({ extended: true }));

// import table class

const { Table } = require("./models/table");

const { Menu } = require("./models/menu");
//signin part
const { User } = require("./models/user");

// Homepage for restaurant

app.get("/homepage", function (req, res) {
  // res.send("Welcome to our restaurant!");
  res.render("homepage");
});


//for register
app.get("/register", function (req, res) {
  res.render("register");
});

app.get("/login", function (req, res) {
  res.render("login");
});

// Logout
app.get("/logout", function (req, res) {
  req.session.destroy();
  res.redirect("/login");
});

// route to get table status

app.post("/table_status", async function (req, res) {
  var booked_date = 2022 - 11 - 30;
  if (req.body) {
    params = req.body;
    var booked_date = params.selected_date;
  } else {
    var booked_date = 2022 - 11 - 30;
  }
  var table = new Table();
  table.booked_date = booked_date;
  await table.getBookingStatus();
  res.render("table", { data: table.booking_status, booked_date });
});

app.post("/table_status_user", async function (req, res) {
  var booked_date = 2022 - 11 - 30;
  if (req.body) {
    params = req.body;
    var booked_date = params.selected_date;
  } else {
    var booked_date = 2022 - 11 - 30;
  }
  var table = new Table();
  table.booked_date = booked_date;
  await table.getBookingStatus();
  res.render("table_user", { data: table.booking_status, booked_date });
});

// Route to go to booking form

app.get("/book_table_form/:table_id", function (req, res) {
  var table_id = req.params.table_id;
  res.render("book_table", { table_id });
});

// Route to book a table

app.post("/add_booking", async function (req, res) {
  // console.log(req.body)
  var table = new Table();
  table.details_to_book = req.body;
  await table.addBooking(table.details_to_book);
  res.render("booking_success", { table });
});

// display menu

app.get("/menu", async function (req, res) {
  var menu = new Menu();
  await menu.getMenuList();
  res.render("menu", { menu });
});

app.get("/edit_menu", async function (req, res) {
  var menu = new Menu();
  await menu.getMenuList();
  res.render("edit_menu", { menu });
});
// Register

app.get("/edit_item_form/:item_id", async function (req, res) {
  console.log(req.body);
  var menu = new Menu();
  menu.item_id = req.params.item_id;
  await menu.getMenuItem(req.params.item_id);
  res.render("edit_menu_form", { menu });
});

app.post("/edit_item", async function (req, res) {
  console.log("body is", req.body);
  var menu = new Menu();
  menu.details_to_edit = req.body;
  await menu.editItem(menu.details_to_edit);
  res.render("edit_success", { menu });
});

app.get("/homepage_user", function (req, res) {
  console.log(req.session);
  if (req.session.loggedIn) {
    // res.send("Welcome back, " + req.session.email + "!");
    res.render("homepage_user", {data: req.session.email});
  } else {
    res.render("please_login");
  }
  res.end();
});

app.post("/set-password", async function (req, res) {
  params = req.body;
  var user = new User(params.email);
  try {
    newId = await user.addUser(params.password);
    res.redirect("/login");
  } catch (err) {
    console.error(`Error while adding password `, err.message);
  }
});
// Check submitted email and password pair
app.post("/authenticate", async function (req, res) {
  params = req.body;
  var user = new User(params.email);
  try {
    uId = await user.getIdFromEmail();
    if (uId) {
      match = await user.authenticate(params.password);
      if (match) {
        req.session.uid = uId;
        req.session.loggedIn = true;
        req.session.email = user.email;
        console.log(req.session);
        console.log("User is ", user)
        var user_email = user.email;
        res.render("homepage_user", {data : user_email});
      } else {
        // TODO improve the user journey here
        res.send("invalid password");
      }
    } else {
      res.send("invalid email");
    }
  } catch (err) {
    console.error(`Error while comparing `, err.message);
  }
});

// Start server on port 3000
app.listen(3000, function () {
  console.log(`Server running at http://127.0.0.1:3000/`);
});
