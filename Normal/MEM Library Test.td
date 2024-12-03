import(mem, embedded);

var arr = [1, 2, 3, 4, 5];
var arr2 = arr;
var arr3 = mem.deepcopy(arr);

print("Memory constants:");
print("POINTER_SIZE: " + str(mem.POINTER_SIZE));
print("WORD_SIZE: " + str(mem.WORD_SIZE));
print("CACHE_LINE: " + str(mem.CACHE_LINE));
print("PAGE_SIZE: " + str(mem.PAGE_SIZE));
print("");

print("Memory sizes:");
print("sizeof(arr): " + str(mem.sizeof(arr)));
print("getsizeof(arr): " + str(mem.getsizeof(arr)));
print("alignment: " + str(mem.getalign(arr)));
print("");

print("Reference counting:");
print("refcount(arr): " + str(mem.getrefcount(arr)));
print("is_shared(arr): " + str(mem.isshared(arr)));
print("is_same(arr, arr2): " + str(mem.is(arr, arr2)));
print("is_same(arr, arr3): " + str(mem.is(arr, arr3)));
print("share_memory(arr, arr2): " + str(mem.sharemem(arr, arr2)));
print("");

print("Memory addresses:");
print("id(arr): " + str(mem.id(arr)));
print("id(arr3): " + str(mem.id(arr3)));
print("memdiff(arr, arr3): " + str(mem.memdiff(arr, arr3)));
print("memrange(arr): ");
print(mem.memrange(arr));
print("");

print("Array memory info:");
print("meminfo(arr): ");
print(mem.meminfo(arr));
print("fraginfo(arr): ");
print(mem.fraginfo(arr));
print("");

print("Memory management:");
mem.reserve(arr, 5); 
print("After reserve(5): ");
print(mem.meminfo(arr));

mem.shrink(arr);      
print("After shrink: ");
print(mem.meminfo(arr));

var string = "Hello, World!";
print("");
print("Testing other types:");
print("sizeof(string): " + str(mem.sizeof(string)));
print("getsizeof(string): " + str(mem.getsizeof(string)));
print("id(string): " + str(mem.id(string)));