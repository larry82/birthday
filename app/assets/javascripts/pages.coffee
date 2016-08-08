ready = ->
	options = 
		strings: [
			'
			北鼻生日快樂
			<span class="glyphicon glyphicon-gift text-pink" aria-hidden="true"></span>
			<br><br>
			因為我字太醜了所我ㄒㄧㄤˇㄕㄨㄛ'
			'<span class="text-turn">北鼻</span><span class="leave">生日快樂 <span class="glyphicon glyphicon-gift text-pink" aria-hidden="true"></span><br><br></span><span class="leave">因為</span><span class="text-turn">我</span><span class="leave">只會做網頁，所以送這個給你當卡片。<br>幹這個背景音樂</span><span class="text-turn">真的</span><span class="leave">很吵，是我精心挑選的，希望你也覺得很吵<span class="glyphicon glyphicon-heart text-pink" aria-hidden="true"></span>，<br>我大概聽了87遍，每次的感想都是<span class="text-pink">不能只有我聽到</span></span><span class="leave">，<br>現在</span><span class="text-turn">很</span><span class="leave">開心有機會能荼毒你，謝謝大家。<br><br>大部分想跟你說的話，好像都在電話裡說完了，<br>不過好險我還留了一些羞赧的話，像是:<br><br></span><span class="text-blue leave">---------------- 動畫結束後，點擊看更多 ------------ <br><br></span><span class="leave">總之，</span><span class="text-turn">喜歡你</span><span class="leave">真的很快樂</span><span class="text-turn">，生日快樂。</span><span class="leave"><br><br><div class="col-md-12 text-right">2016.8.13 霸氣肥肚北鼻<div></span>
			'
		]
		typeSpeed: 10

	$(".audioButton").click ->
		$(this).hide()
		$('body').animate({backgroundColor: '#91A9FF'}, 'slow')
		$(".audio-play")[0].currentTime = 3
		$(".audio-play")[0].play()
		$('#type-area').typed options

	$(document).on 'click', '.text-blue', ->
		$(".audio-play")[0].pause()
		$(".audio-play2")[0].currentTime = 1
		$(".audio-play2")[0].play()
		$(this).css('color','#1E1E24')
		$('.typed-cursor').hide()
		# $('.haha').show(1000)
		$('.text-pink').removeClass('text-pink')
		$('.text-turn').css('color','#91A9FF')
		$('.leave').fadeOut 3000, ->
			$('.text-turn').css('font-size','36px')
			$('#type-area').css('text-align','center').css('padding-top','100px')
			$('.haha').fadeIn 3000, ->
				$('.present').fadeIn 2000 
	setInterval ->
		$('.present').effect('shake')
	, 500
				




	


$(document).ready(ready)
$(document).on('page:load', ready)