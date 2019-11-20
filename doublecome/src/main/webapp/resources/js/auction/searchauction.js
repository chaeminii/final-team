
$("#sort_list a").click(e => {
	$("#sort_list span").removeClass("on")
	$(e.target).find("span").addClass("on");
	selectCheck(e);
})
$("body").on("click",".options", e => {
	let arr = $(".cnkfilter");
	if($(e.target).prop('tagName') == "SPAN"){
		$(e.target).parent().remove()
		for (let filter of arr) {
		if ($(e.target).parent().data("value") == filter.dataset.value) {
			$(filter).removeClass("selected");
			$(filter).prev().removeClass("selected")
			}
		}
		return
	}
	if ($(e.target).attr("class") == "sort_list"){
		$("#sort_list span").removeClass("on")		
	}
	$(e.target).remove()
	for (let filter of arr) {
		if ($(e.target).data("value") == filter.dataset.value) {
			$(filter).removeClass("selected");
			$(filter).prev().removeClass("selected")
		}
	}
})

// 카테고리별 보기 
$("a.category").click(e => {
	selectCheck(e);
})
// 시간별로 검색
$("#date li a").click(e=> {
	selectCheck(e);
})
// 날짜별로 검색
$("#price_filter li a").click(e => {
	selectCheck(e);
})
// 입찰순으로 보기
$("#bidcount li a").click(e => {
	selectCheck(e);
})
$(".price_srh").click(e => {
	selectCheck(e)
})
function selectCheck(e) {
	let $event = $(e.target);
	let clz = $event.attr('class').replace(/cnkfilter/,"")
	if ($event.data("selected") == true) {
		$event.removeClass("selected")
		$event.prev().removeClass("selected")
		$event.data("selected",false) 
		let arr = $(".options");
		for (let filter of arr) {
			if ($event.data("value") == filter.dataset.value) {
				$(filter).remove();
				
			}
		}
		return;
	}
	
	let chkArr = $("."+clz);
	for (let filter of chkArr ) {
		$(filter).removeClass("selected");
		$(filter).prev().removeClass("selected")
	}
	let arr = $(".options");
	for (let filter of arr) {
		for (let val of chkArr) {
			if (filter.dataset.value == val.dataset.value)
				$(filter).remove();
		}
	}
	let title = e.target.title;
	let dataValue = e.target.dataset.value;
	if($event.attr('class') == "price_srh") {
		if ($("#num1").val() >= $("#num2").val() && $("#num2").val() !== "") {
			Swal.fire({
				icon: 'error',
				text: '시작금액보다 종료금액이 더 적거나 같을수 없습니다',
				confirmButtonText : '확인'
			})
			return
		}
		if ($("#num2").val() == "") {
			title = $("#num1").val() + "원 ~ "
		} else {			
			title = $("#num1").val() + "원 ~ " + $("#num2").val() +"원"
		}
		dataValue = "price-choice";
	} else if($event.attr('class') != "order"){
		$event.prev().addClass("selected")
		$event.addClass("selected")		
	}
	$event.data("selected",true)
	$("#selectbar").append(
		`<a href="#" data-value="${dataValue}" class="options selected">
		${title}
			<span class="del"></span>
		</a>
		`
	)
}
$("#num1, #num2").keyup(e=> {
	e.target.value = comma(uncomma(e.target.value));	
})

function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}

