import(sys, embedded);
import(math, embedded);

print("=== Platform Constants ===");
print("Platform: " + sys.PLATFORM);
print("OS Name: " + sys.OS_NAME);
print("Architecture: " + sys.ARCH);
print("Version: " + sys.VERSION);
print("Path Separator: " + sys.PATH_SEP);
print("Max Size: " + str(sys.MAXSIZE)); 
print("");

print("=== Environment Tests ===");
sys.setenv("TEST_VAR", "hello world");
print("Set TEST_VAR: " + sys.getenv("TEST_VAR"));
sys.unsetenv("TEST_VAR");
print("After unset: " + str(sys.getenv("TEST_VAR")));  
print("");

print("=== PATH Environment ===");
print("System PATH:");
print(sys.PATH);
print("");

print("=== Process Info ===");
print("Process ID: " + str(sys.getpid())); 
print("Executable: " + sys.EXECUTABLE);
print("Arguments: ");
print(sys.ARGV);
print("");

print("=== Path Functions ===");
print("Current Directory: " + sys.getcwd());
print("Absolute Path of '.': " + sys.abspath("."));
print("");

print("=== System Load (Unix) ===");
print("Load Averages:");
print(sys.getloadavg());
print("");

print("=== Size Tests ===");
print("Size of string 'test': " + str(sys.getsizeof("test"))); 
print("Size of array [1,2,3]: " + str(sys.getsizeof([1,2,3])));
print("Size of number 42: " + str(sys.getsizeof(42)));
print("");


sys.exit(0);