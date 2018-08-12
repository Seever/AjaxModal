<div id="ajaxmodal">
	<!-- modal -->
	<div class="ajaxmodal-overlay">
		<div class="ajaxmodal">

			<a class="close-ajaxmodal">
				<svg viewBox="0 0 20 20">
				<path fill="#000000" d="M15.898,4.045c-0.271-0.272-0.713-0.272-0.986,0l-4.71,4.711L5.493,4.045c-0.272-0.272-0.714-0.272-0.986,0s-0.272,0.714,0,0.986l4.709,4.711l-4.71,4.711c-0.272,0.271-0.272,0.713,0,0.986c0.136,0.136,0.314,0.203,0.492,0.203c0.179,0,0.357-0.067,0.493-0.203l4.711-4.711l4.71,4.711c0.137,0.136,0.314,0.203,0.494,0.203c0.178,0,0.355-0.067,0.492-0.203c0.273-0.273,0.273-0.715,0-0.986l-4.711-4.711l4.711-4.711C16.172,4.759,16.172,4.317,15.898,4.045z"></path>
				</svg>
			</a><!-- close modal -->

			<div class="ajaxmodal-content">
				<!-- product_page -->
				<div class="product_page">

					<!-- wrap_product -->
					<div class="wrap_product">
						
						<div class="main_img zoom"><img src="[[+image:default=`[[++assets_url]]components/minishop2/img/web/ms2_small.png`]]"  alt=""/></div>
						<ul class="thumbs">
							[[!pdoResources?
								&class=`msProductFile`
								&sortby=`id`
								&sortdir=`asc`
								&where=`{"product_id":"[[+id]]","type:=":"image","path:=":"[[+id]]/1500x1005/"}`
								&tpl=`@INLINE <li><img src="[[+url]]"></li>`
							]]
						</ul>
					</div>
					<!-- /wrap_product -->

					<!-- options -->
					<div class="options">
						<h2 class="title_tovar">[[+pagetitle]]</h2>
						<div class="price">[[+price]] бел.руб <a href="[[~[[+id]]]]">Подробнее о товаре</a></div>
						<form method="post" class="ms2_form">						
							<div class="count">
								<span>Количество</span>
								<select name="count">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
								</select>
							</div>
					
							<button class="add_to_cart btn" type="submit" name="ms2_action" value="cart/add">ДОБАВИТЬ В КОРЗИНУ</button>

							<input type="hidden" name="id" value="[[+id]]">
							<input type="hidden" name="options" value="[]">

						</form>

					</div>
					<!-- /options -->

				</div><!-- /product_page -->
			</div><!-- content -->

		</div><!-- modal -->
	</div><!-- overlay -->
</div>