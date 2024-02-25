import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import router from "./router.js";


const app = express();
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(router);

// console.log('Hello there!');

// app.get("/champions", (req, res) => {
//     res.send([
//         'Arhi',
//         'Nami',
//         'Xerath',
//         'Zed',
//     ]);
// }), 


app.listen(3000, () => {
    console.log("Server is running on port 3000");
  });