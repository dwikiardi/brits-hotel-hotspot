<?php
$usernamelogin=$_POST['username'];
$passwordlogin=$_POST['password'];
$countrycode=$_POST['countryCode'];
$chapid=$_POST['chap-id'];
$chapchallenge=$_POST['chap-challenge'];
$linkloginonly=$_POST['link-login-only'];
$macesc=$_POST['mac-esc'];
$linkorig = "https://www.britshotellegian.com/";
$name = $_POST['name'];
$nomer = $_POST['nomer-telp'];

include('db-conn.php');
$nomer = ltrim($nomer, '0');
$query = "INSERT INTO data_tamu (nama_user, countryCode, nomer_telp) VALUES ('$name', '$countrycode', '$nomer')";
$conn->query($query);

?>
    <form id='login' name="sendin" action="<?php echo $linkloginonly ;?>" method="post" style="display:none">
        <input type="hidden" name="username" value="<?php echo $usernamelogin ;?>"/>
        <input type="hidden" name="password" value="<?php echo $passwordlogin ;?>"/>
        <input type="hidden" name="dst" value="<?php echo $linkorig ;?>" />
        <input type="hidden" name="popup" value="true" />
    </form>
    <?php if($chapid) : ?> 
        <script type="text/javascript" src="js/md5.js"></script>
        <script type="text/javascript">
        function doLogin() {
            <?php if(strlen($chapid) < 1) echo "return true;n"; ?>
            document.sendin.username.value = document.login.username.value;
            document.sendin.password.value = hexMD5("<?php echo $chapid; ?>" + document.login.password.value + "<?php echo $chapchallenge; ?>");
            document.sendin.submit();
            return false;
        }
        </script>
    <?php endif; ?>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="expires" content="-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Internet hotspot - Log in</title>
    <link rel="stylesheet" href="css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="aset/style/style.css" rel="stylesheet">
</head>
<body>

<div class="ie-fixMinHeight">
        <div class="main">
        <div class="card-body">
            <div class="wrap">
                    <h1>You are logged in</h1>
                    <div class="d-flex justify-content-center">
                    <div class="spinner-border" role="status"></div>
                    </div>
                    <p class="info text-black">Please wait, you are being. authorized on the network.</p>
            </div>
        </div>
</div>

<script type="text/javascript">
    function formAutoSubmit () {
        var frm = document.getElementById("login");
        document.getElementById("login").submit();
        frm.submit();
    }
    window.onload = setTimeout(formAutoSubmit, 2500);

</script>

</body>
</html>


