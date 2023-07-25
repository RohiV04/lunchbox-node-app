const express = require("express");
const router = express.Router();
const phnModel = require("../models/phn");

// GET route for handling authentication
router.get("/login/:phoneNumber", async (req, res) => {
  const { phoneNumber } = req.params;
  try {
    // Query the database to check if the user exists based on the phone number
    const [rows] = await phnModel.getUserByPhoneNumber(phoneNumber);
    console.log("Rows:", rows); // Log the rows to see if it contains any data


    if (rows.length === 0) {
      // User not found
      return res.status(404).json({ message: "User not found" });
    }

    // For simplicity, we'll just return a success message with the user data
    res.json({ message: "Login successful", user: rows });
  } catch (err) {
    console.error("Error while querying the database:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

module.exports = router;
