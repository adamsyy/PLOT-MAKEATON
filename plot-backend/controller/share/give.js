const share=require('../../model/share/share')
const user=require("..//../model/user");

module.exports.give=async(req,res)=>{
    const {share_id}=req.body;
    try{

     const share1=await share.findById(share_id);
var users=[]
users=await user.find(
    {share_names:share1.land}
);        
//give moeny to all users in users array
for(var i=0;i<users.length;i++){
    users[i].money+=users[i].money+share1.cost;
    users[i].save();
}

        }
    
    
    catch(err){
        res.status(500).json({err})
    }
}