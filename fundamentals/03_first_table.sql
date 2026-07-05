
DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students(
   -- create an auto incrementing integer
   -- primary key simple means this column uniquely identifies each  row
    id SERIAL PRIMARY KEY,

    name TEXT NOT NULL ,

    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age>=18),

    created_at TIMESTAMP DEFAULT NOW()

);

-- insert data
INSERT INTO basics.students(name,email,age)
VALUES
('shivam','shivam@gmail.com',22),
('devansh','devansh@gmail.com',24);


-- fetch all info about students
SELECT * FROM basics.students;