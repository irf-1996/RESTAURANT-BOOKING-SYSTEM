// Get the functions in the db.js file to use
const db = require("../services/db");
const bcrypt = require("bcryptjs");
class User {
  // Id of the user
  id;

  // Email of the user
  email;

  user_booking;

  constructor(email) {
    this.email = email;
  }

  // Get an existing user id from an email address, or return false if not found
  async getIdFromEmail() {
    var sql = "SELECT id FROM Users WHERE Users.email = ?";
    const result = await db.query(sql, [this.email]);
    // TODO LOTS OF ERROR CHECKS HERE..
    if (JSON.stringify(result) != "[]") {
      this.id = result[0].id;
      return this.id;
    } else {
      return false;
    }
  }

  // Add a new record to the users table
  async addUser(password) {
    const pw = await bcrypt.hash(password, 10);
    var sql = "INSERT INTO Users (email, password) VALUES (? , ?)";
    const result = await db.query(sql, [this.email, pw]);
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
    var sql = "select * from booking_details where email=?";
    const results = await db.query (sql, [this.email]);
    if (results) {
          this.user_booking = results;
          // console.log("booking in class", this.user_booking);
        }
    }
  }

module.exports = {
  User,
};
