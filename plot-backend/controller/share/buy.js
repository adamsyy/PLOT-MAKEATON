const share=require('../../model/share/share')
const user=require("..//../model/user");

module.exports.buy=async(req,res)=>{
    const {email,share_id,number}=req.body;
    try{
     const user1=await user.findOne({email:email});
     const share1=await share.findById(share_id);
        const cost=share1.cost;
        console.log(share1.location);
        share1.remaining=share1.remaining-number;
        share1.save();
        //add share_name to share_names of user1 if not already present
        if(!user1.share_names.includes(share1.land)){
            user1.share_names.push(share1.land);
            user1.share_count.push(number);
            user1.location.push(share1.location);
        }
        else{
            user1.share_count[user1.share_names.indexOf(share1.land)]+=number;
        }

        user1.portfolio+=number*cost;
        user1.money-=number*cost;
        user1.save();
        return res.status(201).json({
            success:true,
            message:"share bought successfully",
            share1
        })
        

        }
    
    
    catch(err){
        console.log(err);
        res.status(500).json({err})
    }
}