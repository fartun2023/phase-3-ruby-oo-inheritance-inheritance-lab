class Teacher < User
  KNOWLEDGE = [
    "Physics",
    "Math",
    "Chemistry",
    "Biology",
    "History"
  ]

  def teach
    KNOWLEDGE.sample
  end
end