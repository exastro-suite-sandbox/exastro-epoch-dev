CREATE USER 'app_user'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19';
GRANT USAGE ON *.* TO 'app_user'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19';
GRANT ALL PRIVILEGES ON `epoch`.* TO 'app_user'@'%';
