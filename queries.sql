
CREATE TABLE cars (
    id Serial primary key,
    make VARCHAR(255),
    model VARCHAR(255),
    year VARCHAR(255),
    color VARCHAR(255),
    user_id INT REFERENCES users(id)
);

INSERT INTO cars(make, model, year, color, user_id) VALUES ('BMW', '328i', '2008', 'gray', 2);
INSERT INTO cars(make, model, year, color, user_id) VALUES ('Toyota', 'Rav4', '2018', 'gray', 3);
INSERT INTO cars(make, model, year, color, user_id) VALUES ('Honda', 'Accord', '2012', 'gray', 1);
INSERT INTO cars(make, model, year, color, user_id) VALUES ('Honda', 'Pilot', '2003', 'black', 3);


CREATE TABLE users (
    id Serial primary key,
    name VARCHAR(255),
    age VARCHAR(255),
    gender VARCHAR(255),
    occupation VARCHAR(255)
)
alter table add constraint 

INSERT INTO users(name, age, gender, occupation) VALUES('Alvin Nguyen', '32', 'male', 'software engineer');
INSERT INTO users(name, age, gender, occupation) VALUES('Ryan Nguyen', '34', 'male', 'software engineer');


//WHAT IS THE COLOR OF THE CAR OWNED BY ALVIN NGUYEN

select color from cars where id = (select car_id from users where name = 'Alvin Nguyen');

