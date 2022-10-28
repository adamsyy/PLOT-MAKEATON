const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const parking = new Schema({
    name: String,
    area:Number,
    price:Number,
    location:String,
    description:String,
    owner:String,
  arealeft:{
    type:Number,
    default:0
  },
  carsnow:{
    type:Number,
    default:0
  },
  
users:[String],
}
);

const ParkingSchema = mongoose.model("Parking", parking);
module.exports = ParkingSchema;