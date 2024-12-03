import(io);

var file = io.open("test.txt", "w+");
io.write(file, "Hello World!");
var content = io.read(file);
print(type(content));
