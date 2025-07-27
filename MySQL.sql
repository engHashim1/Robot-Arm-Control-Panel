CREATE DATABASE IF NOT EXISTS robot_arm_control;
USE robot_arm_control;

CREATE TABLE IF NOT EXISTS motor_positions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    motor1 INT NOT NULL,
    motor2 INT NOT NULL,
    motor3 INT NOT NULL,
    motor4 INT NOT NULL,
    motor5 INT NOT NULL,
    motor6 INT NOT NULL,
    status TINYINT DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS saved_poses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    motor1 INT NOT NULL,
    motor2 INT NOT NULL,
    motor3 INT NOT NULL,
    motor4 INT NOT NULL,
    motor5 INT NOT NULL,
    motor6 INT NOT NULL,
    action VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some initial poses if needed
INSERT INTO saved_poses (name, motor1, motor2, motor3, motor4, motor5, motor6, action) VALUES
('Pose 1', 90, 90, 90, 59, 115, 34, 'Load Remove'),
('Pose 2', 137, 55, 90, 26, 90, 90, 'Load Remove'),
('Pose 3', 90, 115, 90, 59, 90, 33, 'Load Remove');