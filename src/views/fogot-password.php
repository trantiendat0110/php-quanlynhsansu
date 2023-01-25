<?php
require './src/views/component/head.php';

function newPassword($email, $newPw)
{
    require "PHPMailer/src/PHPMailer.php";
    require "PHPMailer/src/SMTP.php";
    require 'PHPMailer/src/Exception.php';
    $mail = new PHPMailer\PHPMailer\PHPMailer(true); //true:enables exceptions
    try {
        $mail->SMTPDebug = 0; //0,1,2: chế độ debug
        $mail->isSMTP();
        $mail->CharSet  = "utf-8";
        $mail->Host = 'smtp.gmail.com';  //SMTP servers
        $mail->SMTPAuth = true; // Enable authentication
        $mail->Username = 'trandatyl1@gmail.com'; // SMTP username
        $mail->Password = 'ptocwcubwszikwsj';   // SMTP password
        $mail->SMTPSecure = 'ssl';  // encryption TLS/SSL 
        $mail->Port = 465;  // port to connect to                
        $mail->setFrom('trandatyl1@gmail.com', 'Tiến Đạt');
        $mail->addAddress("$email");
        $mail->isHTML(true);  // Set email format to HTML
        $mail->Subject = 'Thư gửi mật khẩu mới';
        $noidungthu = "Mật khẩu mới của bạn là: <br> <p style='background: rgb(63,94,251);
        background: radial-gradient(circle, rgba(63,94,251,1) 0%, rgba(244,70,252,1) 100%);text-align: center;max-width: 200px;margin: auto;color: #fff;border-radius: 10px;padding: 10px;font-size: 25px;margin-top: 50px'>$newPw</p>";
        $mail->Body = $noidungthu;
        $mail->smtpConnect(array(
            "ssl" => array(
                "verify_peer" => false,
                "verify_peer_name" => false,
                "allow_self_signed" => true
            )
        ));
        $mail->send();
    } catch (Exception $e) {
        echo 'Error: ', $mail->ErrorInfo;
    }
}
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $email = $_POST['email'];
    $newPw = rand(100000, 999999);
    $userController = new userController();
    echo $userController->update_password_email($email, $newPw);
    newPassword($email, $newPw);
}
?>

<body>
    <div class="flex min-h-full items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
        <div class="w-full max-w-md space-y-8 relative">
            
            <div>
                <img class="mx-auto h-12 w-auto" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt="Your Company">
                <h2 class="mt-6 text-center text-3xl font-medium tracking-tight text-gray-900">Quên mật khẩu</h2>
            </div>
            <form class="my-10 pt-10 space-y-6" action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
                <input type="hidden" name="remember" value="true">
                <div class="-space-y-px rounded-md shadow-sm">
                    <div>
                        <label for="email-address" class="text-slate-600">Nhập email của bạn</label>
                        <input id="email-address" name="email" type="email" autocomplete="email" required class="mt-10 relative block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 text-gray-900 placeholder-gray-500 focus:z-10 focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                    </div>
                </div>
                <div class="flex justify-between">
                    <a class="w-1/3 text-center p-2 bg-slate-600 text-white rounded " href="./dangnhap.php">Quay lại</a>
                    <button type="submit" class="w-1/2  group relative flex w-full justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                        <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                            <!-- Heroicon name: mini/lock-closed -->
                            <svg class="h-5 w-5 text-indigo-500 group-hover:text-indigo-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                <path fill-rule="evenodd" d="M10 1a4.5 4.5 0 00-4.5 4.5V9H5a2 2 0 00-2 2v6a2 2 0 002 2h10a2 2 0 002-2v-6a2 2 0 00-2-2h-.5V5.5A4.5 4.5 0 0010 1zm3 8V5.5a3 3 0 10-6 0V9h6z" clip-rule="evenodd" />
                            </svg>
                        </span>
                        Gửi
                    </button>
                </div>
            </form>
        </div>
    </div>
</body>
<?php
require './src/views/component/link.php';
?>

</html>