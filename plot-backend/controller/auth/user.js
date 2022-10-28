const user=require("..//../model/user");

module.exports.user=async(req,res)=>{
    const {email}=req.body;
    try{
        const user1=await user.findOne({email:email});

        var share_n=[];
        var share_c=[];
        var share_l=[];
   for(var i=0;i<user1.share_names.length;i++){
       share_n.push(user1.share_names[i]);
       share_c.push(user1.share_count[i]);
         share_l.push(user1.location[i]);
   }
        return res.status(201).json({
            success:true,
            message:"user found successfully",
            "user1":user1,
            share_n,
            share_c,
            share_l
        })
    }
    catch(err){
        res.status(500).json({err})
    }
}

