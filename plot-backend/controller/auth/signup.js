
const  dotenv=require('dotenv');
const path = require("path");
const bcrypt = require("bcryptjs");

const UserSchema = require("..//../model/user")

module.exports.signup = async (req, res) => {
    var { email, password} = req.body;
    try {
      const user = await UserSchema.findOne({ email });
      if (user) {
        return res.status(400).json({
          message: "User already exists",
          data: null,
        });
      }
      // api_secret=await bcrypt.hash(api_secret,8)
      // api_key=await bcrypt.hash(api_key,8)
      // api_secret=await bcrypt.hash(api_secret,8)
      // api_key=await bcrypt.hash(api_key,8)
    
      const newUser = new UserSchema({
        email,
  
        password,

      });
     
      await newUser.save();
   
      return res.status(201).json({
        success: true,
        message: "User created successfully",
       newUser
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({
        success: false,
        message: "Internal server error",
        data: null,
      });
    }
  };