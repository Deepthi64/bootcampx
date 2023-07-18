const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.connect()
  .then(() => {
    console.log('Connected to the bootcampx database');

    pool.query(`
    SELECT students.id as student_id, students.name as name, cohorts.name as cohort
    FROM students
    JOIN cohorts ON cohorts.id = cohort_id
    WHERE cohorts.name LIKE '%${process.argv[2]}%'
    LIMIT ${process.argv[3] || 5};
    `)
    .then(res => {
      console.log(res.rows);
    })
    .catch(err => console.error('query error', err.stack));
  })
  .catch((err) => {
    console.error('Error connecting to the database:', err);
  });
