CREATE TABLE IF NOT EXISTS countries (
    id SERIAL PRIMARY KEY,
    code TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS variables (
    id SERIAL PRIMARY KEY,
    code TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS observations (
    country_id INT REFERENCES countries(id),
    variable_id INT REFERENCES variables(id),
    date DATE,
    value DOUBLE PRECISION,
    PRIMARY KEY(country_id, variable_id, date)
);
