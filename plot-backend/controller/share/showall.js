const share=require('../../model/share/share')

module.exports.showall=async(req,res)=>{
    try{
        const lands=await share.find({});
        return res.status(200).json({
            success:true,
            message:"all shares",
            lands
        })

    }
    catch(err){
        console.log(err);
        res.status(500).json({err})
    }
}
