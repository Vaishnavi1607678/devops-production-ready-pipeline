const http = require("http");

const server = http.createServer((req, res) => {
  if (req.url === "/health") {
    res.writeHead(200);
    return res.end("OK");
  }

  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("🚀 DevOps Production Pipeline Running Successfully");
});

server.listen(3000, () => {
  console.log("Server running on port 3000");
});