const share=require('../../model/share/share')
const user=require("..//../model/user");

module.exports.sell=async(req,res)=>{
    const {email,share_id,number}=req.body;
    try{
     const user1=await user.findOne({email:email});
     const share1=await share.findById(share_id);
     const share_name=share1.land;
//do rest of the code onlly if user1 has shae_name in share_names

if(user1.share_names.includes(share_name)){


        const cost=share1.cost;
        share1.remaining=share1.remaining+number;
        share1.save();
        //remove share_name from share_names of user1
        user1.share_names.splice(user1.share_names.indexOf(share_name),1);
        //remove number from share_count of user1
        user1.share_count.splice(user1.share_count.indexOf(number),1);
        user1.portfolio-=number*cost;
        user1.money+=number*cost;
        user1.save();
        return res.status(201).json({
            success:true,
            message:"share sold successfully",
            share1
        })


    }}
    
    
    catch(err){
        res.status(500).json({err})
    }
}