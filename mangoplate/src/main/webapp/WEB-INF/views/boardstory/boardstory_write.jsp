<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>

	<!---------------------------------------------->
	<!--------------- Content ---------------------->
	<!---------------------------------------------->
<main class="Story">
  	<h1>게시글 작성하기</h1>
	<form name="boardStoryWriteForm" action="boardstory_write_check.do" 
							enctype="multipart/form-data" method="post">
							
  <div class="Story__BaseInfoContainer">
    <header class="StoryHeader" style="background-image: url('https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/jcedyaw8flkxst.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80')">
	  <input type="msmainfile" name="msmainfile1"> 
		<label>메인사진 등록하기</label>
      <div class="StoryContent__Source StoryContent__Source--Header">
          <span class="StoryContent__SourceText"></span>
      </div>
    </header>

    <section class="Story__BaseInfo">

      <i class="Story__Icon only-mobile"></i>
      <div class="StoryEditor">
        <i class="StoryEditor__EditorMark"></i>
        <span class="StoryEditor__EditorName">에디터</span>
        <input type="text" name="mseditor" id="mseditor">
      </div>

      <h1 class="Story__Title">제목</h1>
      <input type="text" name="mstitle" id="mstitle">
      <p class="Story__Description">부제목</p>
	  <input type="text" name="mssubtitle" id="mssubtitle">

      </div>

      
    </section>
  </div>

  <hr class="Story__Divider Story__ContainerDivider"/>

  <div class="Story__ContentContainer">
    <div class="Story__ContentList">


        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://media.giphy.com/media/1PMVNNKVIL8Ig/giphy.gif"
                 alt=" 사진"
                 class="StoryContent__Picture"/>
			
			<!-- 움짤 모음 -->
            <div class="StoryContent__Source">
                <a href="GIPHY.COM"  
                   onclick="trackEvent('CLICK_AFFILIATE_LINK', {&quot;url&quot;:&quot;GIPHY.COM&quot;})"
                   class="StoryContent__SourceLink">
                  <span class="StoryContent__SourceText">GIPHY.COM</span>
                </a>
            </div>
          </div>

          <p class="StoryContent__Caption">시작말</p>
          <textarea name="msintro"></textarea>
        </div>


            <hr class="Story__Divider"/>

          <section class="Story__Content Story__RestaurantContent StoryRestaurantContent" data-key="V3GNiu3Z-0Ni">
            <a class="StoryRestaurantContent__Link" href="/restaurants/V3GNiu3Z-0Ni">
              <span class="StoryRestaurantContent__Metro">이태원/한남동</span>
              <h2 class="StoryRestaurantContent__RestaurantNameWrap">
                <span class="StoryRestaurantContent__RestaurantName ">인소울</span>
                <button class="StoryRestaurantContent__RestaurantInfoButton">
                    <i class="StoryRestaurantContent__RestaurantInfoButtonIcon"></i>
                </button>
              </h2>
            </a>
          </section>

        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/bqyxgd5bhtjoih.jpg?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">작년&nbsp;11월&nbsp;월간망고에&nbsp;소개된&nbsp;잠실의&nbsp;이탈리안&nbsp;다이닝,&nbsp;'더&nbsp;이탈리안&nbsp;클럽'의&nbsp;김호윤&nbsp;셰프와&nbsp;한우&nbsp;맡김차림으로&nbsp;잘&nbsp;알려진&nbsp;이속우화가&nbsp;만나&nbsp;한우&nbsp;다이닝&nbsp;'인소울'&nbsp;이&nbsp;탄생했답니다.
<br/>
<br/>스타&nbsp;셰프와&nbsp;유명&nbsp;다이닝&nbsp;브랜드의&nbsp;콜라보로&nbsp;오픈과&nbsp;동시에&nbsp;많은&nbsp;사람들의&nbsp;관심을&nbsp;받기도&nbsp;한&nbsp;이곳.&nbsp;'인소울'&nbsp;이라는&nbsp;이름은&nbsp;한우에&nbsp;'혼(soul)'을&nbsp;담아&nbsp;준비하였다는&nbsp;뜻을&nbsp;담아&nbsp;짓게&nbsp;되었다고&nbsp;해요.
<br/>
<br/>1++&nbsp;한우로&nbsp;만든&nbsp;다채로운&nbsp;요리를&nbsp;선보인다길래&nbsp;망고걸은&nbsp;기대를&nbsp;잔뜩&nbsp;품으며&nbsp;바로&nbsp;예약!
<br/>워크인&nbsp;방문은&nbsp;예약&nbsp;고객&nbsp;퇴장&nbsp;후&nbsp;입장이&nbsp;가능하다고&nbsp;하니,&nbsp;가급적이면&nbsp;예약을&nbsp;하고&nbsp;방문하시기를&nbsp;추천해요.</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/izzune3otkyon4.jpg?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">아니,&nbsp;이곳&nbsp;한남동&nbsp;맞나요?&nbsp;제가&nbsp;잘&nbsp;못&nbsp;온&nbsp;거&nbsp;아니죠?&nbsp;
<br/>
<br/>문을&nbsp;열고&nbsp;들어가자마자&nbsp;시원한&nbsp;파도가&nbsp;솨아아~&nbsp;하는&nbsp;사운드와&nbsp;함께&nbsp;밀려와요.&nbsp;사방에는&nbsp;거울이&nbsp;있어서&nbsp;미디어아트&nbsp;전시회를&nbsp;보러&nbsp;온&nbsp;것&nbsp;같은&nbsp;착각이&nbsp;들&nbsp;정도!&nbsp;예상치&nbsp;못한&nbsp;시원한&nbsp;파도의&nbsp;등장에&nbsp;벌써&nbsp;마음이&nbsp;두근두근~</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/43dadusgcta_7w.jpg?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">입구에서의&nbsp;재미있는&nbsp;경험을&nbsp;뒤로하고&nbsp;들어선&nbsp;식당&nbsp;내부는&nbsp;또&nbsp;다른&nbsp;분위기였어요.&nbsp;깔끔하고&nbsp;모던한&nbsp;분위기에&nbsp;곳곳에&nbsp;실버&nbsp;톤을&nbsp;배치해&nbsp;세련된&nbsp;느낌을&nbsp;더했죠.
<br/>
<br/>식당&nbsp;한가운데&nbsp;바(bar)&nbsp;를&nbsp;중심으로&nbsp;양&nbsp;사이드에&nbsp;테이블이&nbsp;있는데요.&nbsp;매장&nbsp;안쪽에는&nbsp;단체&nbsp;손님을&nbsp;위한&nbsp;별도의&nbsp;공간이&nbsp;따로&nbsp;마련되어&nbsp;있어서&nbsp;단체로도&nbsp;방문하기&nbsp;좋을&nbsp;것&nbsp;같았답니다.</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/ithbfsxhrhsfux.jpg?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">✅&nbsp;소금&nbsp;타르타르&nbsp;23,000원
<br/>
<br/>유럽식&nbsp;육회&nbsp;'타르타르'와&nbsp;'소금빵'의&nbsp;조합이라니!&nbsp;
<br/>
<br/>비프&nbsp;타르타르는&nbsp;한우의&nbsp;'설도살'&nbsp;부위를&nbsp;사용했다고&nbsp;해요.&nbsp;살코기가&nbsp;많은&nbsp;대신&nbsp;기름기가&nbsp;적어&nbsp;육회로도&nbsp;활용된다고.
<br/>
<br/>함께&nbsp;나오는&nbsp;소금빵은&nbsp;비프&nbsp;타르타르를&nbsp;곁들여&nbsp;먹기&nbsp;좋게&nbsp;칼집이&nbsp;나&nbsp;있답니다.&nbsp;타르타르를&nbsp;듬뿍&nbsp;떠서&nbsp;소금빵&nbsp;틈&nbsp;사이에&nbsp;끼워&nbsp;먹으면&nbsp;되는데요.&nbsp;소금빵의&nbsp;버터리함과&nbsp;짭짤함,&nbsp;그리고&nbsp;타르타르의&nbsp;경쾌한&nbsp;맛이&nbsp;의외의&nbsp;조합이더라고요.&nbsp;</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/vdnosuk4vlczkq.jpg?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">✅&nbsp;콘슬러&nbsp;7,000원
<br/>
<br/>콘샐러드+코울슬러를&nbsp;합친&nbsp;메뉴,&nbsp;'콘슬러'를&nbsp;얹는&nbsp;것도&nbsp;소금&nbsp;타르타르를&nbsp;색다르게&nbsp;즐기는&nbsp;꿀팁!
<br/>
<br/>톡톡&nbsp;터지는&nbsp;옥수수&nbsp;알갱이,&nbsp;그리고&nbsp;아삭한&nbsp;야채가&nbsp;씹혀&nbsp;색다른&nbsp;조합을&nbsp;느낄&nbsp;수&nbsp;있을&nbsp;거예요.</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/plw-0jzpq1e-ab.jpg?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">✅&nbsp;로코모코&nbsp;no.9&nbsp;23,000원
<br/>
<br/>탐스러운&nbsp;달걀&nbsp;프라이가&nbsp;올라간&nbsp;로코모코입니다.&nbsp;로코모코는&nbsp;쌀밥&nbsp;위에&nbsp;햄버그스테이크와&nbsp;달걀프라이,&nbsp;그레이비&nbsp;소스를&nbsp;올려내는&nbsp;하와이의&nbsp;대표적인&nbsp;음식&nbsp;중&nbsp;하나예요.
<br/>
<br/>함께&nbsp;곁들여먹는&nbsp;소스는&nbsp;너무&nbsp;달거나&nbsp;짜지&nbsp;않아서&nbsp;좋았는데요.&nbsp;미각을&nbsp;편안하게&nbsp;해주어&nbsp;자꾸&nbsp;손이&nbsp;가는&nbsp;맛!&nbsp;고기&nbsp;패티는&nbsp;약간&nbsp;오버쿡으로&nbsp;조리되었는데,&nbsp;촉촉한&nbsp;소스와&nbsp;함께&nbsp;즐겨서&nbsp;괜찮았어요.
<br/>
<br/>곁들여져&nbsp;나오는&nbsp;매콤한&nbsp;파인애플도&nbsp;참&nbsp;별미에요.&nbsp;깍두기인&nbsp;줄&nbsp;알고&nbsp;먹었는데&nbsp;알고&nbsp;보니&nbsp;그&nbsp;정체가&nbsp;매콤달콤한&nbsp;파인애플이어서&nbsp;깜짝&nbsp;놀랐다는&nbsp;후문이..!</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/tirjicjlfnbxlp.jpg?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">✅&nbsp;&nbsp;호버거&nbsp;20,000원
<br/>
<br/>비주얼부터&nbsp;풍성함이&nbsp;느껴지는&nbsp;호버거&nbsp;입니다.&nbsp;샛노란&nbsp;체다치즈가&nbsp;녹아&nbsp;더욱&nbsp;침샘을&nbsp;자극하는데요.&nbsp;김호윤&nbsp;셰프가&nbsp;개발한&nbsp;특제&nbsp;고추장&nbsp;소스로&nbsp;맛을&nbsp;내었다고&nbsp;해서&nbsp;그&nbsp;맛이&nbsp;너무&nbsp;궁금했어요.&nbsp;
<br/>
<br/>치즈와&nbsp;고기&nbsp;패티,&nbsp;카라멜라이징한&nbsp;양파&nbsp;사이에서&nbsp;고추장&nbsp;소스가&nbsp;존재감을&nbsp;드러내는데요.&nbsp;한편으로는&nbsp;매콤한&nbsp;맛이&nbsp;강렬한&nbsp;편이어서&nbsp;매운&nbsp;음식을&nbsp;잘&nbsp;못&nbsp;드시는&nbsp;분들은&nbsp;자극적이게&nbsp;느낄&nbsp;수도&nbsp;있을&nbsp;것&nbsp;같다는&nbsp;생각이&nbsp;들었답니다.
<br/>
<br/>망고걸의&nbsp;입맛엔&nbsp;과하게&nbsp;짜지도,&nbsp;느끼하지도&nbsp;않아&nbsp;한국인의&nbsp;입맛에&nbsp;맞게&nbsp;변주를&nbsp;준&nbsp;것처럼&nbsp;느껴졌어요.&nbsp;호버거를&nbsp;맛보고&nbsp;나니&nbsp;다른&nbsp;버거의&nbsp;맛은&nbsp;어떨지도&nbsp;너무&nbsp;궁금해지더라고요.</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/jbqqbduk5qahuq.jpg?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">✅&nbsp;통&nbsp;한우안심&nbsp;버거&nbsp;69,000원
<br/>
<br/>사실&nbsp;가격대가&nbsp;있는&nbsp;만큼&nbsp;제일&nbsp;기대할&nbsp;수밖에&nbsp;없는&nbsp;메뉴였어요.&nbsp;게다가&nbsp;이&nbsp;메뉴는&nbsp;김호윤&nbsp;셰프가&nbsp;&nbsp;모퉁이우&nbsp;라이프&nbsp;시절&nbsp;만든&nbsp;역작,&nbsp;'규카츠'와&nbsp;많이&nbsp;닮아있어&nbsp;더욱&nbsp;기대되었는데요.
<br/>
<br/>도톰한&nbsp;번&nbsp;사이에&nbsp;또&nbsp;선홍빛의&nbsp;도톰한&nbsp;한우안심이&nbsp;통으로&nbsp;끼워져&nbsp;있는&nbsp;이&nbsp;비주얼이란!&nbsp;그야말로&nbsp;침샘을&nbsp;자극하는&nbsp;모습&nbsp;그&nbsp;자체였어요.</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/voo3xyuzxqhld7.jpg?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">비주얼에&nbsp;반해&nbsp;바로&nbsp;한&nbsp;입&nbsp;베어&nbsp;물었을&nbsp;때에는&nbsp;기대를&nbsp;충족한&nbsp;맛을&nbsp;경험할&nbsp;수&nbsp;있었어요.&nbsp;번이&nbsp;살~짝&nbsp;건조하게&nbsp;느껴지긴&nbsp;했지만,&nbsp;규카츠가&nbsp;하드캐리&nbsp;했기&nbsp;때문이죠.&nbsp;버거&nbsp;사이에는&nbsp;은은한&nbsp;트러플&nbsp;소스가&nbsp;덧발라져&nbsp;있는데요.&nbsp;소고기의&nbsp;고소한&nbsp;향과&nbsp;트러플&nbsp;향의&nbsp;밸런스가&nbsp;잘&nbsp;잡혀있다는&nbsp;생각이&nbsp;들었답니다.&nbsp;
<br/>
<br/>또,&nbsp;규카츠는&nbsp;겉을&nbsp;튀겨서&nbsp;바삭하고&nbsp;속은&nbsp;촉촉하니&nbsp;씹으면&nbsp;씹을수록&nbsp;육즙이&nbsp;팡팡&nbsp;터져&nbsp;만족스럽게&nbsp;즐겼어요.
<br/>
<br/>가격대가&nbsp;있는&nbsp;편이지만,&nbsp;인소울의&nbsp;혼이&nbsp;담긴&nbsp;한우버거를&nbsp;제대로&nbsp;경험하고&nbsp;싶다면&nbsp;이&nbsp;메뉴를&nbsp;추천할게요.</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/full/lnc_ca8h79klar.JPG?fit=around|600:*&amp;crop=600:*;*,*&amp;output-format=jpg&amp;output-quality=80"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <span class="StoryContent__SourceText"></span>
            </div>
          </div>

          <p class="StoryContent__Caption">지금까지&nbsp;인소울의&nbsp;다양한&nbsp;메뉴를&nbsp;소개해&nbsp;드렸어요.&nbsp;깔끔한&nbsp;분위기에서&nbsp;각각의&nbsp;색다른&nbsp;매력이&nbsp;있는&nbsp;한우&nbsp;요리를&nbsp;즐길&nbsp;수&nbsp;있어서&nbsp;입도,&nbsp;눈도&nbsp;즐거운&nbsp;시간이었답니다.
<br/>
<br/>지인들과의&nbsp;모임을&nbsp;가지기에도&nbsp;좋고,&nbsp;데이트&nbsp;장소로도&nbsp;손색없는&nbsp;이곳!&nbsp;캐주얼한&nbsp;분위기에서&nbsp;색다른&nbsp;음식을&nbsp;즐길&nbsp;수&nbsp;있는&nbsp;식당을&nbsp;찾고&nbsp;있다면&nbsp;이곳을&nbsp;추천해요~
<br/>
<br/>-
<br/>망고걸&nbsp;Y의&nbsp;한&nbsp;줄&nbsp;평
<br/>&nbsp;:&nbsp;한우에&nbsp;진심인&nbsp;사람들,&nbsp;이곳으로&nbsp;모여라!
<br/>망고걸&nbsp;A의&nbsp;한&nbsp;줄&nbsp;평
<br/>&nbsp;:&nbsp;버거+한우&nbsp;=❤️,&nbsp;영혼을&nbsp;갈아&nbsp;넣은&nbsp;이유가&nbsp;있었네요!</p>
        </div>



        <div class="Story__Content Story__CardContent StoryContent">
          <div class="StoryContent__PictureWrap">
            <img src="https://media.giphy.com/media/brHaCdJqCXijm/giphy.gif"
                 alt=" 사진"
                 class="StoryContent__Picture"/>

            <div class="StoryContent__Source">
                <a href="GIPHY.COM"
                   onclick="trackEvent('CLICK_AFFILIATE_LINK', {&quot;url&quot;:&quot;GIPHY.COM&quot;})"
                   class="StoryContent__SourceLink">
                  <span class="StoryContent__SourceText">GIPHY.COM</span>
                </a>
            </div>
          </div>

          <p class="StoryContent__Caption">다음&nbsp;월간망고에&nbsp;소개될&nbsp;맛집이&nbsp;궁금하다면?&nbsp;
<br/>☞&nbsp;9월&nbsp;9일&nbsp;~&nbsp;9월&nbsp;13일&nbsp;망고플레이트&nbsp;인스타그램(@mangoplate)에서&nbsp;진행되는&nbsp;신상&nbsp;맛집&nbsp;투표&nbsp;이벤트를&nbsp;꼬옥&nbsp;확인해&nbsp;주세요!
<br/>
<br/>-
<br/>[월간망고]는&nbsp;매월&nbsp;많은&nbsp;분이&nbsp;가장&nbsp;가고&nbsp;싶다고&nbsp;투표하신&nbsp;신상식당을&nbsp;망고걸이&nbsp;직접&nbsp;다녀온&nbsp;후기입니다.
<br/>본&nbsp;컨텐츠는&nbsp;유료광고가&nbsp;아니며,&nbsp;맛에&nbsp;대한&nbsp;평가는&nbsp;주관적인&nbsp;기준임을&nbsp;말씀드립니다.</p>
        </div>

    </div>
   </form>
</main>
</body>
</html>