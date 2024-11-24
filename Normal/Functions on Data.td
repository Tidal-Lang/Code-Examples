var list = [1, 2, 3];
insert(list, 4);
insert(list, 0, 0);
print(list);
del(list);

var s = "  Hello  ";
var clean = strip(s);
var upper = upper(s);
var lower = lower(s);
print(clean);
print(upper);
print(lower);
del(clean);
del(upper);
del(lower);


var arr1 = [1, 2, 3];
var arr2 = copy(arr1);
var arr3 = extend(arr1, arr2);
print(arr1);
print(arr2);
print(arr3);
del(arr1);
del(arr2);
del(arr3);


var string = "hello hello";
print(count(string, "hello"));
del(string); 

var arr = [1, 2, 2, 3];
print(count(arr, 2)); 
del(arr);


novar fixed = [1, 2, 3];
var mutable = copy(fixed);
insert(mutable, 4);
/* insert(fixed, 4); */ /* <= This will Generate an Error. */

del(fixed);
del(mutable);
