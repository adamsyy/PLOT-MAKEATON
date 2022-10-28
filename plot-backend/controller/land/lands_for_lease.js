const Lease = require("..//../model/land/lease");

module.exports.lands_for_lease = async (req, res) => {
    try {
        const lands = await Lease.find({ isleased: false });
        return res.status(200).json({
            success: true,
            message: "Lands for lease",
            lands,
        });
    } catch (error) {
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: null,
        });
    }
}
