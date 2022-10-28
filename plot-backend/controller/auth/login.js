const UserSchema = require("..//../model/user");

module.exports.login = async (req, res) => {
  const { email, password } = req.body;
  try {
    const user = await UserSchema.findOne({ email });
    if (!user) {                  // if user not found 
      return res.status(400).json({
        success: false,
        message: "User does not exist",
        data: null,
      });
    }
    const isMatch= user.password==password
    if (!isMatch) {              // if password is wrong
      return res.status(400).json({
        success: false,
        message: "Password incorrect",
        data: null,
      });
    }
 
    return res.status(200).json({
      success: true,
      message: "Login successful",
   user
    });
  } catch (error) {
    res.status(500).json({
      success: false,
      message: "Internal server error",
      data: error.message,
    });
  }
};