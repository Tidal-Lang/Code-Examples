import(os);
import(std);


var testdir = "os_test_dir";
var subdir = testdir + "/subdir";
var mainfile = "main.txt";
var subfile = "sub.txt";
var content = "Hello from Tidal!";

print("OS Information:");
print("OS Name: " + os.name);
print("Line Separator: " + os.linesep);

print("Directory Operations:");
os.makedirs(subdir);
print("Main directory exists: " + str(os.isdir(testdir)));
print("Subdirectory exists: " + str(os.isdir(subdir)));

print("Main Directory File Operations:");
os.system("echo 'Main dir content' > " + testdir + "/" + mainfile);
print("Main file exists: " + str(os.exists(testdir + "/" + mainfile)));

print("Subdirectory File Operations:");
os.system("echo 'Sub dir content' > " + subdir + "/" + subfile);
print("Sub file exists: " + str(os.exists(subdir + "/" + subfile)));

print("Directory Contents:");
print("Main directory contents:");
print(os.listdir(testdir));
print("Subdirectory contents:");
print(os.listdir(subdir));

print("Cleanup:");
os.remove(testdir + "/" + mainfile);
os.remove(subdir + "/" + subfile);
os.removedirs(subdir); 
os.removedirs(testdir);
print("Cleanup complete");
