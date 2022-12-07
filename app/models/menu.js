const db = require('../services/db');

class Menu {
    item_id;
    item_category;
    item_name;
    item_price;
    item_description;
    all_items = [];
    details_to_edit = [];

    constructor (item_id) {
        this.item_id = item_id;
    }
    // function to get menu

    async getMenuList () {
        if (typeof this.item_name !== 'string') {
            var sql = "select * from menu";
            const results = await db.query (sql);
            this.all_items = results;
        }
    }

    async getMenuItem (item_id) {
        if (typeof this.item_name !== 'string') {
            var sql = "SELECT * from menu WHERE item_id = ?";
            const results = await db.query (sql, [item_id]);
            console.log(results)
            this.item_category = results[0].item_category;
            this.item_name = results[0].item_name;
            this.item_price = results[0].item_price;
            this.item_description = results[0].item_description;
        }
    }

     // function to get booking status of the tables based on the date selected 
     async editItem (details_to_edit) {
        var sql = "UPDATE menu SET item_category = ?, item_name = ?,  item_price = ?, item_description =? WHERE item_id = ?;"
        const results = await db.query(sql, [details_to_edit.item_category, details_to_edit.item_name, details_to_edit.item_price, details_to_edit.item_description, details_to_edit.item_id]);
    }

}

module.exports = {Menu}