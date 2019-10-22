<?php include ROOT . '/views/layouts/header.php';?>

<section id="form"><!--form-->
		<div class="container">
			<div class="row">
                <div class="col-sm-4 col-sm-offset-4 padding-right">

<!--                    <div class="login-form">
                    <h2>Login to your account</h2>-->
<!--                        <form action="#">-->
<!--                            <input type="text" placeholder="Name" />-->
<!--                            <input type="email" placeholder="Email Address" />-->
<!--                            <span>-->
<!--								<input type="checkbox" class="checkbox">-->
<!--								Keep me signed in-->
<!--							</span>-->
<!--                            <button type="submit" class="btn btn-default">Login</button>-->
<!--                        </form>-->
<!--                    </div>
            </div>
               <div class="col-sm-1">-->
<!--                    <h2 class="or">OR</h2>-->
<!--                </div>-->

                    <?php if ($result):?>
                    <h2>BARI GALUST</h2>
                    <?php else:?>
                    <?php if (isset($errors) && is_array($errors)):?>
                    <ul>
                        <?php foreach ($errors as $error):?>
                        <li>- <?php echo $error; ?></li>
                            <?php endforeach?>
                    </ul>
                    <?php endif;?>

					<div class="signup-form"><!--sign up form-->
						<h2>New User Signup!</h2>
						<form action="#" method="post">
							<input type="text" name="name" placeholder="Name" value="<?php echo $name; ?>"/>
							<input type="email" name="email" placeholder="Email Address" value="<?php echo $email; ?>"/>
							<input type="password" name="password" placeholder="Password" value="<?php echo $password; ?>"/>
                            <input type="submit" name="submit" class="btn btn-default" value="Signup">
						</form>
					</div><!--/sign up form-->

                    <?php endif;?>
				</div>
			</div>
		</div>
	</section><!--/form-->

<?php include ROOT . '/views/layouts/footer.php';?>
