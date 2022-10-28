const parking = require("..//../model/land/parking");

module.exports.parking_upload = async (req, res) => {
    const { name, area, price, location, description, owner } = req.body;
    try {
        const newparking = new parking({
            name,
            area,
            price,
            location,
            description,
            owner,
        });
        newparking.arealeft = area;
        await newparking.save();
        return res.status(201).json({
            success: true,
            message: "parking created successfully",
            newparking,
        });
    } catch (error) {
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: null,
        });
    }
};

module.exports.parking = async (req, res) => {
    const { email, _id } = req.body;
    try {
        const park = await parking.findById(_id);
        if (park.arealeft >= 100) {
            park.carsnow = park.carsnow + 1;
            park.users.push(email);
            park.arealeft = park.arealeft - 100;
            await park.save();

            const user = require("..//../model/user");
            const user1 = await user.findOne({email:email});
            user1.parking.push(_id);
            await user1.save();

            return res.status(200).json({
                success: true,
                message: "parking booked successfully",
                park,
            });
        }

    }
    catch (error) {
        console.log(error);
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: null,
        });
    }
};


