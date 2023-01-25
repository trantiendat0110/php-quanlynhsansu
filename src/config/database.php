<?php
class Database {
    public $conn;
    public $hostname = 'localhost';
    public $username = 'root';
    public $pw = '';
    public $dbname = 'du_an1';
    public function __construct()
    {
        $this->conn = mysqli_connect($this->hostname, $this->username, $this->pw, $this->dbname);
    }
}
?>