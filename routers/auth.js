
const express = require('express');
const router = express.Router();
const db=require('../con');
const bcrypt = require('bcrypt');
const jwt=require('jsonwebtoken')

//register routes
router.post('/api/registration', (req, res) => {});
router.post('/api/login', (req, res) => {});
router.post('/secret-route', (req, res) => {});

module.exports=router;