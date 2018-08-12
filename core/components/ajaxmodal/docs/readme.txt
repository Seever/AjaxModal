--------------------
AjaxModal
--------------------
Author: Alexandr Tuniekov <touols@yandex.ru>
--------------------

AjaxModal - простой компанент загружающий по ajax и показывающий указанный чанк с модальным окном, с указанными параметрами.
Создавался для кнопки быстрого просмотра товаров Minishop2.

Пример использования:
На странице подключить jQuery, стиль и скрипт компонента:

	<script src="/assets/templates/js/jquery-1.8.3.min.js"></script>
	[[MinifyX?
    	&minifyCss=`1`
    	&minifyJs=`1`
    	&registerJs=`default`
    	&registerCss=`default`
    	&jsSources=`
    		/assets/components/ajaxmodal/js/web/default.js,
    	`
    	&cssSources=`
    		/assets/components/ajaxmodal/css/web/default.css,
    	`
    ]]

Вызов в чанке tpl.msProducts.row 

<div style="width:300px;display: inline-block;">
	<div class="block_img">
	    <a href="[[~[[+id]]]]">
	        <img src="[[+thumb:default=`[[++assets_url]]components/minishop2/img/web/ms2_small.png`]]" width="298" height="200" />
	    </a>
    	[[!AjaxModal?
        	&button=`ajaxmodal.button.tpl`
        	&modal=`ajaxmodal.modal.tpl`
        	&id=`[[+id]]`
        	&image=`[[+image]]`
        	&pagetitle=`[[+pagetitle]]`
        	&price=`[[+price]]`
        ]]
	</div>
	<h3><a href="[[~[[+id]]]]">[[+pagetitle]]</a></h3>
	<div class="price">[[+price]] бел.руб. </div>
</div>

Выводит кнопку 
<a href="#" class="ajaxmodal" onclick='ajaxmodal([[+params]]);return false;'>БЫСТРЫЙ ПРОСМОТР</a>

В [[+params]] передает объект с параметрами сниппета. При нажатии на кнопку, по ajax, подгружается чанк modal с параметрами [[+params]] и показывается модальное окно, которое прописано в чанке.

Вызывать сниппет внутри чанка вредно для скорости ответа сайта. Сниппет AjaxModal просто выводит кнопку с вызовом ява функции. Если скорость важна, то лучше приписать эту кнопку вручную. Чанк tpl.msProducts.row:

<div style="width:300px;display: inline-block;">
	<div class="block_img">
	    <a href="[[~[[+id]]]]">
	        <img src="[[+thumb:default=`[[++assets_url]]components/minishop2/img/web/ms2_small.png`]]" width="298" height="200" />
	    </a>
    	<a href="#" class="ajaxmodalbutton" onclick='ajaxmodal({ "modal":"ajaxmodal.modal.tpl","id":"[[+id]]","image":"[[+image]]","pagetitle":"[[+pagetitle]]","price":"[[+price]]" });return false;'>БЫСТРЫЙ ПРОСМОТР</a>
	</div>
	<h3><a href="[[~[[+id]]]]">[[+pagetitle]]</a></h3>
	<div class="price">[[+price]] бел.руб. </div>
</div>