SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration)
FROM students
  JOIN assignment_submissions ON student_id = students.id
  join assignments on assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY students.name

having avg(assignment_submissions.duration) <  avg
(assignments.duration)
ORDER BY average_assignment_duration;









-- Select the name of the student, their average completion time, and the average suggested completion time.
-- Order by average completion time from smallest to largest.
-- Only get currently enrolled students.
-- This will require data from students, assignment_submissions, and assignments.