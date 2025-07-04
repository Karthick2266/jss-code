function calculateArea(width, height) {
  return width * height;
}

function displayArea(width, height) {
  const area = calculateArea(width, height);
  console.log(`The area of a rectangle with width ${width} and height ${height} is ${area}.`);
}

displayArea(5, 10);