//💪

struct Exercise { 
  var name: String 
  var muscleGroups: [String]
  var reps: Int 
  var sets: Int
  var totalReps: Int

  var situps: Int
  var squats: Int

   init(name: String, muscleGroups: [String], reps: Int, sets: Int, situps: Int, squats: Int) {
   
   self.name = name
   self.muscleGroups = muscleGroups
   self.reps = reps 
   self.sets = sets
   self.totalReps = reps * sets 


   self.situps = situps
   self.squats = squats
  }
}

var pusUp = Exercise(name: "Push ups", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3, situps: 20, squats: 10)

//print(pusUp)

//Second Struct workout Scedule
struct Regimen {
  var dayOfWeek: String 
  var exercises: [Exercise]


  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

func printExercisePlan(dayOfWeek: String, exercises: [Exercise]) {
    print("Today is \(self.dayOfWeek) and the plan is to:")
    
    for exercise in self.exercises { 
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)")

      print("That's a total of \(exercise.reps) \(exercise.name)")
    }
  }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pusUp])

//print(mondayRegimen)


//Review this line
mondayRegimen.printExercisePlan(dayOfWeek: "Monday", exercises: [pusUp])
