- [x] Flutter-Student-Note



## LIST ##


**Growable Lists (Default)**

List<String> colors = ['Red', 'Blue'];
colors.add('Green'); // OK


**Fixed-Length List**


List<int> fixedList = List.filled(4, 1);
fixedList[2] = 50; // OK (Modifying content)
// fixedList.add(10); // ERROR: Cannot add to a fixed-length list


**apply to growable lists.**

void main() {
 var numbers = [40, 10, 25];
 numbers.add(60); // [40, 10, 25, 60]  // Adding
 numbers.insert(2, 15); // [40, 10, 15, 25, 60]  // Inserting : Adds an element at a specific position.
 numbers.remove(10); // [40, 15, 25, 60]  // Removing : Removes the first occurrence of a specific value.
 numbers.removeAt(1); // [40, 25, 60]   // removes the element at the specified index.
 numbers.sort(); // [25, 40, 60]  // Sorting : default is ascending
}



**Nested Lists**

void main() {
 List<List<int>> matrix = [
  [11, 12, 13], // Index 0
  [21, 22, 23], // Index 1
  [31, 32, 33]  // Index 2
 ];

 print(matrix[2][1]); // Accessing the number '32' // Go to list at index 2, then item at index 1
}

## Maps ##

**Basic Maps Types ::**

void main() {
 Map<String, String> user = {  // Map<KeyType, ValueType>
 'name': 'Shaharear',
 'position': 'Admin',
 'country': 'Bangladesh'
 };

print(user['name']); // Output: Shaharear   // Accessing value by Key

 user['age'] = '25'; // New Key -> Adds item   // Adding/Updating
 user['position'] = 'User'; // Existing Key -> Updates item
 
 print(user); //Output : {name: Shaharear, position: User, country: Bangladesh, age: 25} :here we have curly bracket 
}

**Map  Iteration or call Loop**

print(user.keys); //Output : (name, role, country, age)
print(user.values); //Output : (Shaharear, User, Bangladesh, 25)

print(user.entries); //Output : (MapEntry(name: Shaharear), MapEntry(position: User), MapEntry(country: Bangladesh), MapEntry(age: 25))

**Best for looking .forEach()**

  user.forEach((key,value){
    print("$key: $value");
  });

//output :

name: Shaharear
position: Admin
country: Bangladesh



