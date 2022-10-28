const {signup}=require('../controller/auth/signup')
const {login}=require('../controller/auth/login')
const {user}=require('../controller/auth/user')
const router = require("express").Router();

router.post("/signup", signup);
router.post("/login", login);
router.post("/user", user);


module.exports = router;