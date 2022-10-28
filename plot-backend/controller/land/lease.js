const Lease = require("..//../model/land/lease");

module.exports.lease = async (req, res) => {
    const { name, area, perimeter, price, location, description, owner } = req.body;
    try {
        const newLease = new Lease({
            name,
            area,
            price,
            location,
            description,
            owner,
        });
        await newLease.save();
        return res.status(201).json({
            success: true,
            message: "Lease created successfully",
            newLease,
        });
    } catch (error) {
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: null,
        });
    }
};
