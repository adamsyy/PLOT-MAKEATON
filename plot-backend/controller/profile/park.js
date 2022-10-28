const user=require("..//../model/user");
const parkSchema = require("../../model/land/parking");

module.exports.park_profile = async (req, res) => {

    

    const { email} = req.body;
    try {
        const user1=await user.findOne({email:email});
        const parkingdets=user1.parking;
        var parks=[];

        for(let i=0;i<parkingdets.length;i++){
            const park=await parkSchema.findById(parkingdets[i]);
            parks.push(park);
        }
        return res.status(200).json({
            success: true,
            message: "PARKED lands",
            parks,
        
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
