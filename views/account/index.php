<?php include ROOT . '/views/layouts/header.php';?>

<section>
    <div class="container">
        <div class="row">
            <h1>Accaunt</h1>

            <h3>HELLO, <?php echo $user['name']; ?>!</h3>

            <ul>
                <li><a href="/account/edit">EDIT </a></li>
                <li><a href="/user/history">History</a></li>
            </ul>

        </div>

    </div>
</section>

<?php include ROOT . '/views/layouts/footer.php';?>