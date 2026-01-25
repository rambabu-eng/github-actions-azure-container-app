const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from Node.js running in Azure Web App for Containers!");
});

const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`App running on port ${port}`));
