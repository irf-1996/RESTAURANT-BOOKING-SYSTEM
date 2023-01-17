// Get the functions in the db.js file to use
const db = require("../services/db");
const bcrypt = require("bcryptjs");
class User {
  // Id of the user
  id;

  // Email of the user
  email;
  user_name;

  user_booking;

  constructor(email, user_name) {
    this.email = email;
    this.user_name = user_name;
  }

  // Get an existing user id from an email address, or return false if not found
  async getIdFromEmail() {
    var sql = "SELECT id, user_name FROM Users WHERE Users.email = ?";
    const result = await db.query(sql, [this.email]);
    // TODO LOTS OF ERROR CHECKS HERE..
    if (JSON.stringify(result) != "[]") {
      this.id = result[0].id;
      this.user_name = result[0].user_name;
      return this.id;
    } else {
      return false;
    }
  }

  // Add a new record to the users table
  async addUser(password) {
    const pw = await bcrypt.hash(password, 10);
    var sql = "INSERT INTO Users (email, password, user_name) VALUES (? , ?, ?)";
    const result = await db.query(sql, [this.email, pw, this.user_name]);
    console.log(result.insertId);
    this.id = result.insertId;
    return true;
  }

  // Test a submitted password against a stored password
  async authenticate(submitted) {
    // Get the stored, hashed password for the user
    var sql = "SELECT password FROM Users WHERE id = ?";
    const result = await db.query(sql, [this.id]);
    const match = await bcrypt.compare(submitted, result[0].password);
    if (match == true) {
      return true;
    } else {
      return false;
    }
  }

  async retretiveBooking() {
    // var sql = "select * from booking_details where email=?";
    var sql = "SELECT table_id, DATE_FORMAT(booked_date, '%e %M %Y %W') AS booked_date, name, email, booking_status, booking_id FROM booking_details WHERE email= ? ORDER BY booked_date ASC";
    const results = await db.query (sql, [this.email]);
    if (results) {
          this.user_booking = results;
        }
    }
  }

module.exports = {
  User,
};
