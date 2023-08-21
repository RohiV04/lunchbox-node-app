
const express = require("express");
const router = express.Router();
const tripModel = require("../models/trip");

// GET route for retrieving trips by phone number for the current date
router.get("/trip/:phoneNumber", async (req, res) => {
  const { phoneNumber } = req.params;
  try {
    // Query the database to get trips for the provided phone number and current date
    const trips = await tripModel.getTripsByPhoneNumber(phoneNumber);

    if (trips.length === 0) {
      // No trips found for the given phone number
      return res.status(404).json({ message: "No trips found for the given phone number" });
    }

    // Return the trip data
    res.json(trips);
  } catch (err) {
    console.error("Error while querying the database:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

module.exports = router;
