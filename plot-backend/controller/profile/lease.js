const user=require("..//../model/user");
const lease = require("../../model/land/lease");

module.exports.lease_profile = async (req, res) => {
    const { email,} = req.body;
    try {
        const user1=await user.findOne({email:email});
        const leasedlands=user1.leasedlands;
        console.log(leasedlands);
        var lands=[];

        for(let i=0;i<leasedlands.length;i++){
            const land=await lease.findById(leasedlands[i]);
            lands.push(land);
        }
        return res.status(200).json({
            success: true,
            message: "leased lands",
            lands,
        
        });

    }
    catch (error) {
        console.log(error);
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: null,
        });
    }
}
