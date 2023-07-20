const express = require('express');
const router = express.Router();
const tripModel=require('../models/trip')
// GET route for handling authentication
router.get('/trip/:phoneNumber', async (req, res) => {
    const { phoneNumber } = req.params;
    try {
      // Query the database to check if the user exists based on the phone number
      const [rows] = await tripModel.getTripByPhoneNumber(phoneNumber);
      if (rows.length === 0) {
        // User not found
        return res.status(404).json({ message: 'Data not found' });
      }
  
      // User found, you can perform additional authentication checks here if needed
  
      // For simplicity, we'll just return a success message with the user data
      res.json( rows[0] );
    } catch (err) {
      console.error('Error while querying the database:', err);
      res.status(500).json({ message: 'Internal server error' });
    }
  });

  
  module.exports=router;