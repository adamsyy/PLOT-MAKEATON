const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const Share= new Schema({
    price:Number,
    remaining:Number,
    total:Number,
    owner:String,
    name:String,
    location:String,
    images:[String]
,
    description:String,
    area:Number

});

const ShareSchema = mongoose.model("Share", Share);
module.exports = ShareSchema;
