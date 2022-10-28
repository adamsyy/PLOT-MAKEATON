const user=require("..//../model/user");

module.exports.myshares=async(req,res)=>{
    const {email}=req.body;
    try{
        const user1=await user.findOne({email:email});
        
        var share_n=[];
        var share_c=[];
   for(var i=0;i<user1.share_names.length;i++){
       share_n.push(user1.share_names[i]);
       share_c.push(user1.share_count[i]);


   }
   
   return res.status(201).json({
    success:true,
    message:"dets",
    share_n,
    share_c
})
    
    }
    catch(err){
        res.status(500).json({err})
    }
}