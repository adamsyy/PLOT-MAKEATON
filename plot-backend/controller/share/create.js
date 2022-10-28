const share=require('../../model/share/share')

module.exports.create=async(req,res)=>{
    const {price,total,owner,name,remaining,location,description,area}=req.body;
    try{
        const share1=new share({
            price,
            total,
            owner,
            name,
            description,
            remaining,
            location,
            area

        })
      
        await share1.save();
        return res.status(201).json({
            success:true,
            message:"share created successfully",
            share1
        })

    }
    catch(err){
        res.status(500).json({err})
    }
}
