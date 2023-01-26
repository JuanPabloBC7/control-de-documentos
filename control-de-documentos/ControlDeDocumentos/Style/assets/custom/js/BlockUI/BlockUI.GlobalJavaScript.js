function BlockUI() {
    $.blockUI({
		message: '<div id="spinnerImg0"><div id="floatingBarsG"><div class="blockG" id="rotateG_01"></div><div class="blockG" id="rotateG_02"></div><div class="blockG" id="rotateG_03"></div><div class="blockG" id="rotateG_04"></div><div class="blockG" id="rotateG_05"></div><div class="blockG" id="rotateG_06"></div><div class="blockG" id="rotateG_07"></div><div class="blockG" id="rotateG_08"></div></div></div>',
		css: {
			padding: 0,
			margin: 0,
			width: '',
			top: '40%',
			left: '50%',
			textAlign: 'center',
			color: '#000',
			border: '',
			backgroundColor: '',
			cursor: 'wait'
		}
	});
};

function UnblockUI() {
	$.unblockUI();
}                
