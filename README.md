# Robot-Arm-Control-Panel
A Web Page that makes you to control servos for a robotic arm(joints)

Robot Arm Control Panel - README
📌 Project Overview

A web-based interface for controlling a 6-axis robotic arm. This application allows users to:

    Set individual motor angles

    Save motor configurations as named "poses"

    Execute saved poses

    Monitor arm movements

🛠️ Technologies Used

    Frontend: HTML5, CSS3, JavaScript

    Backend: PHP 8.2+

    Database: MySQL

    Server: Apache 2.4

🚀 Installation Guide
Prerequisites

    XAMPP/WAMP/MAMP installed

    PHP 8.2+

    MySQL 5.7+

    Modern web browser

Setup Steps

    Clone the repository:
    bash

git clone https://github.com/yourusername/robot-arm-control.git

Database Setup:

    Import the SQL file:
    bash

mysql -u root -p robot_arm_control < database/schema.sql

Or run the setup script:
bash

    php database/setup_database.php

Configure Application:
Edit config.php with your database credentials:
php

define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'robot_arm_control');

Launch Application:

    Start Apache and MySQL in XAMPP

    Access via browser:
    text

        http://localhost/robot-arm-control/

🔧 API Endpoints
Endpoint	Method	Description
/api/save_position.php	POST	Save current motor positions
/api/get_poses.php	GET	Retrieve all saved poses
/api/update_status.php	PUT	Update motor status
🤖 Hardware Integration

To connect with actual robot hardware:

    Install required drivers

    Configure serial communication in hardware/robot_interface.php

    Set correct COM port in config:
    php

    define('ROBOT_COM_PORT', 'COM3');
    define('BAUD_RATE', 9600);

🧪 Testing

Run the test suite:
bash

php tests/functional_test.php

📜 License

MIT License - See LICENSE for details
✉️ Contact

For support: hashimhasanth@gmail.com
