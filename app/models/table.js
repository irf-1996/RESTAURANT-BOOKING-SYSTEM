const db = require('../services/db');

class Table {
    table_id;
    booked_date;
    name;
    email;
    booking_status =[];
    details_to_book = [];

    constructor (booked_date, details_to_book) {
        this.booked_date = booked_date;
        this.details_to_book = details_to_book;
    }

    // function to get booking status of the tables based on the date selected 

    async getBookingStatus () {
        if (typeof this.booking_status !== 'string') {
            var sql = "select * from booking_details where booked_date=?";
            const results = await db.query (sql, [this.booked_date]);
            console.log(results)
            if (results) {
                let i = 0;
                for(let row of results) {
                    this.booking_status[i] = results[i].table_id;
                    i++;
                }
            }
        }
    }

    // function to book table 
    
    async addBooking (details_to_book) {
        var sql = "INSERT INTO booking_details VALUES (?, ?, ?, ?, ?);"
        const results = await db.query(sql, [details_to_book.id, details_to_book.booked_date, details_to_book.name, details_to_book.email_id, details_to_book.status]);
    }
}

module.exports = {Table}