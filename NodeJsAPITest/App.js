const express = require('express')
const app = express()
const morgan = require('morgan')
const mysql = require('mysql')

app.use(morgan('combined'))

app.get("/", (req, res) =>
{
  console.log("Responding to root route")
  res.send("Hello! I am Tanvi")
})

app.get("/topics", (req, res) =>
{
  //var topic1 = {topicid:100, topicSummary:"Topic 1"}
  //var topic2 = {topicid:101, topicSummary:"Topic 2"}
  //res.json([topic1, topic2])
  console.log("Fetching topics..")
  const connection = mysql.createConnection({
    host: 'localhost',
    user: 'test_user',
    database: 'FORUM',
    password: "testuser21",
    insecureAuth : true
  })

  const queryString = "SELECT * FROM topic";
  connection.query(queryString, (err, rows, fields) => {
    if(err){
      console.log("Failed to execute query: " + err)
      res.end()
      return
    }
      console.log("I guess connection is successful")
      res.json(rows)
  })
})

app.listen(3003, () =>
{
  console.log("Server is up and listening on 3003..")
})
