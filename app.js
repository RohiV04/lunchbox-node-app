const express = require("express");
const cors = require("cors");
const app = express();
// const authRouter=require('./routers/auth');
const phnRouter = require("./routers/phn");
const tripRouter = require("./routers/trip");
app.use(express.json());
app.use(cors());

app.get("/", (req, res) => {
  res.send("Welcome");
});

const port = process.env.PORT || 9000;

// app.use('/auth',authRouter);

app.use("/auth", phnRouter);
app.use("/data", tripRouter);
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
