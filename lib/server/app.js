const http = require('http');

const server=http.createServer((req,res)=>
{
    res.statusCode=200;
    res.setHeader('Content-type','text/plain')
    res.end('hello world');
}
);
// Listen on port 3000.
server.listen(3000, '127.0.0.1', () => {
    console.log('Server running at http://127.0.0.1:3000/');
  });