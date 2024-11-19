-- Table for Workers
CREATE TABLE Workers (
    worker_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    hourly_rate DECIMAL(10, 2) NOT NULL
);

-- Table for Clock In/Out Events
CREATE TABLE ClockInClockOut (
    clock_id INT PRIMARY KEY AUTO_INCREMENT,
    worker_id INT NOT NULL,
    clock_in_time DATETIME NOT NULL,
    clock_out_time DATETIME,
    FOREIGN KEY (worker_id) REFERENCES Workers(worker_id)
);

-- Table for Payments
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    worker_id INT NOT NULL,
    payment_date DATE NOT NULL,
    hours_worked DECIMAL(8, 2) NOT NULL,
    amount_paid DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (worker_id) REFERENCES Workers(worker_id)
);
