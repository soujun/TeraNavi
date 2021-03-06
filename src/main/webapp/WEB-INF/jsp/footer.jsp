		<link href="/TeraNavi/css/footer.css" rel="stylesheet" type="text/css">

		<nav class="navbar navbar-default footer" role="navigation" id="footer">
				<footer class="container-fluid">
					<div class="row">
						<div class="col-md-3">
							<h3>TeraNaviについて</h3>
								<a href="/TeraNavi/showRule"><p>利用規約</p></a>
								<a data-toggle="modal" href="#contact-modal"><p>お問い合わせ</p></a>
								<a href="#"><p>よくある質問</p></a>
						</div>
						<div class="col-md-4">
							<h3>運営元について</h3>
								<a href="http://www.tera-house.ac.jp/"><p>学校法人 小山学園</p></a>
								<a href="/TeraNavi/showPolicy"><p>プライバシーポリシー</p></a>
						</div>
						<div class="col-md-4">
							<h3>ソーシャル公式アカウント</h3>
							<div id="facebook_icon">
								<a href="#"><img src="/TeraNavi/img/facebook_alt.png"><p>Facebook</p></a>
							</div>
							<div id="twitter_icon">
								<a href="#"><img src="/TeraNavi/img/twitter_alt.png" width="35px" height="32px"><p>Twitter</p></a>
							</div>
						</div>

						<div id="contact-modal" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h1 class="text-center">お問い合わせ</h1>
									</div>
									<div id="contactM" class="modal-body">
										<form action="/TeraNavi/front/sendContact" method="post">
											<div class="form-group">
												<label class="control-label" for="exampleInputName">お名前</label>
												<input class="form-control" id="contactName" name="name" type="text">
											</div>
											<div class="form-group">
												<label class="control-label" for="exampleInputTitle">件名</label>
												<input class="form-control" id="contactTitle" name="title" type="text">
											</div>
											<div class="form-group">
												<label class="control-label">メールアドレス</label>
												<input class="form-control" id="contactAddress" type="email" name="address">
											</div>
											<div class="form-group">
												<label class="control-label">カテゴリ</label>
												<select class="form-control" id="contactCategory" name="category">
												  <option>サイトについて</option>
												  <option>その他</option>
												</select>
											</div>
											<div class="form-group">
												<label class="control-label">本文</label>
												<textarea class="form-control" id="contactBody" name="body"></textarea>
											</div>
											<button type="button" id="contactBtn" class="btn btn-default pull-right">送信する</button>
										</form>

									</div>
									<div class="modal-footer"></div>
								</div><!--end moal-content-->
							</div><!--end modal-dialog-->
						</div><!--end modal-->
					</div>
				</footer>
            </nav>
				<script src='/TeraNavi/js/ContactSend.js'></script>
