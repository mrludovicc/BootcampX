const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const args = process.argv.slice(2);
// before sanitizing 
// pool.query(`
// SELECT DISTINCT teachers.name AS teacher,
// cohorts.name cohort
// FROM teachers
// JOIN assistance_requests ON teachers.id = teacher_id
// JOIN students ON student_id = students.id
// JOIN cohorts ON cohort_id = cohorts.id
// WHERE cohorts.name LIKE '%${args[0] || 'JUL02'}%'
// ORDER BY teacher;
// `)
//   .then(res => {
//     res.rows.forEach(row => {
//       console.log(`${row.cohort}: ${row.teacher}`)
//     })
//   })
//   .catch(err => console.error('query error', err.stack));


// after sanitizing 
queryString = `
SELECT DISTINCT teachers.name AS teacher,
cohorts.name cohort
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
ORDER BY teacher;
`
values = [`%${args[0] || 'JUL02'}%`]
pool.query(queryString, values)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`)
    })
  })
  .catch(err => console.error('query error', err.stack));
