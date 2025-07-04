function processResults(students) {
  for (let student of students) {
    let category = 
      student.mark >= 90 ? "Excellent" :
      student.mark >= 75 ? "Good" :
      student.mark >= 50 ? "Average" :
      "Fail";
    
    console.log(`${category} - ${student.name}: ${student.mark}`);
  }
}

let students = [
  { name: "Luffy", mark: 53 },
  { name: "joker", mark: 69 },
  { name: "suriya", mark: 87 },
  { name: "keerthi", mark: 96 },
  { name: "Eren", mark: 76 },
  { name: "Light", mark: 100 },
  { name: "Gutts", mark: 43 }
];

processResults(students);