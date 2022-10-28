const Lease = require("..//../model/land/lease");

module.exports. set_lease_true = async (req, res) => {
    const { _id, soldto } = req.body;
    console.log(_id);
    try {
        const lease = await Lease.findById(_id);
        console.log(lease);
        lease.isleased = true;
        lease.soldto = soldto;
        await lease.save();

        const user = require("..//../model/user");
        const user1 = await user.findOne({ email: soldto });
        user1.leasedlands.push(_id);
        await user1.save();

        return res.status(201).json({
            success: true,
            message: "Lease updated successfully",
            lease,
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: null,
        });
    }
}