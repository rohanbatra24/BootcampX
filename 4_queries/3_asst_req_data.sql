select teachers.name, students.name, assignments.name, completed_at - started_at as duration
from assistance_requests
  join assignments on assignments.id = assignment_id
  join students on students.id = student_id
  join teachers on teachers.id = teacher_id
order by duration;
