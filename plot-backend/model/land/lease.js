const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const lease = new Schema({
    name: String,
    area:Number,
    price:Number,
    location:String,
    description:String, 
    owner:String,
    soldto:String,
    isleased:{
        type:Boolean,
        default:false
    }
}
);

const LeaseSchema = mongoose.model("Lease", lease);
module.exports = LeaseSchema;