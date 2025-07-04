 const fruits = ["apple", "banana", "mango", "orange"];

    console.log("Original array:", fruits);

    // 1. push()
    fruits.push("grape");
    console.log("After push:", fruits);

    // 2. pop()
    fruits.pop();
    console.log("After pop:", fruits);

    // 3. shift()
    fruits.shift();
    console.log("After shift:", fruits);

    // 4. unshift()
    fruits.unshift("kiwi");
    console.log("After unshift:", fruits);

    // 5. indexOf()
    console.log("Index of 'mango':", fruits.indexOf("mango"));

    // 6. includes()
    console.log("Includes 'banana'?", fruits.includes("banana"));

    // 7. join()
    console.log("Joined with commas:", fruits.join(", "));

    // 8. slice()
    console.log("Sliced (1,3):", fruits.slice(1, 3));

    // 9. splice()
    fruits.splice(2, 1); // removes 1 item at index 2
    console.log("After splice:", fruits);

    // 10. forEach()
    console.log("Loop with forEach:");
    fruits.forEach((fruit, index) => {
      console.log(index + ": " + fruit);
    });