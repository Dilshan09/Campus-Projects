<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>General Event Form</title>
</head>
<body>
<script>  
			function validateemail()  
			{  
				var x=document.myform.email.value;  
				var atposition=x.indexOf("@");  
				var dotposition=x.lastIndexOf(".");  
				if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
				alert("Please enter a valid e-mail address \n");  
				return false;  
				}  
			}   
		</script>
      <form action="insert" method = "post" onsubmit="validateemail()">
      
       <script src="https://cdn01.jotfor.ms/static/prototype.forms.js?3.3.36511" type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/static/jotform.forms.js?3.3.36511" type="text/javascript"></script>
<script defer src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.js"></script>
<script src="https://cdn03.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.36511" type="text/javascript"></script>
<script defer src="https://cdn01.jotfor.ms/js/vendor/maskedinput.min.js?v=3.3.36511" type="text/javascript"></script>
<script defer src="https://cdn02.jotfor.ms/js/vendor/jquery.maskedinput.min.js?v=3.3.36511" type="text/javascript"></script>
<script src="https://cdn03.jotfor.ms/common/lib.js" type="text/javascript"></script>
<script type="text/javascript">	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.singleProduct = false;
	JotForm.newPaymentUIForNewCreatedForms = true;
	JotForm.newPaymentUI = true;
	JotForm.clearFieldOnHide="disable";
	JotForm.submitError="jumpToFirstError";

	JotForm.init(function(){
	/*INIT-START*/
      JotForm.setPhoneMaskingValidator( 'input_6_full', '(###) ###-####' );
if (window.JotForm && JotForm.accessible) $('input_9').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_12').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_20').setAttribute('tabindex',0);
      JotForm.setCustomHint( 'input_20', 'Type here...' );
      setTimeout(function() {
          $('input_16').hint('ex: 23');
       }, 20);
if (window.JotForm && JotForm.accessible) $('input_22').setAttribute('tabindex',0);

 JotForm.calendarMonths = ["January","February","March","April","May","June","July","August","September","October","November","December"];
 JotForm.calendarDays = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
 JotForm.calendarOther = {"today":"Today"};
 var languageOptions = document.querySelectorAll('#langList li'); 
 for(var langIndex = 0; langIndex < languageOptions.length; langIndex++) { 
   languageOptions[langIndex].on('click', function(e) { setTimeout(function(){ JotForm.setCalendar("13", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""}); }, 0); });
 } 
 JotForm.onTranslationsFetch(function() { JotForm.setCalendar("13", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""}); });

 JotForm.setCalendar("17-date-2");
 JotForm.setCalendar("17-date-1");


    if (window.commonLib && window.commonLib.BGColorLightness('#F0FCFF')) {
      document.getElementById('FITB_17').setAttribute('data-darkmode', 'true');
    }
      JotForm.alterTexts(undefined);
	/*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"eventPlanning1","qid":"1","text":"Event Planning Questionnaire  ","type":"control_head"},{"name":"submit2","qid":"2","text":"Submit","type":"control_button"},{"name":"fullName3","qid":"3","text":"Full name of the event owner","type":"control_fullname"},{"name":"emailAddress","qid":"4","subLabel":"example@example.com","text":"Email address of the event owner","type":"control_email"},null,{"name":"phoneNumber","qid":"6","text":"Phone number of the event owner","type":"control_phone"},{"name":"whatType","qid":"7","text":"What type of event are you planning?","type":"control_checkbox"},{"name":"whatAre8","qid":"8","text":"What are the main goals of the event?","type":"control_checkbox"},{"name":"whatIs9","qid":"9","text":"What is the name of the event? ","type":"control_textbox"},{"name":"whoPays","qid":"10","text":"Who pays for the event?","type":"control_radio"},null,{"name":"whatIs","qid":"12","text":"What is the approximate budget for the event? ","type":"control_textbox"},{"name":"whatIs13","qid":"13","text":"What is the date of the event? ","type":"control_datetime"},null,{"name":"isThe","qid":"15","text":"Is the date of the event flexible?","type":"control_radio"},{"name":"howMany","qid":"16","subLabel":"Number","text":"How many people will attend the event?","type":"control_number"},{"name":"input17","qid":"17","template":"If yes, from   {date-1}   to   {date-2}.  ","type":"control_inline"},null,{"name":"addressOf","qid":"19","text":"Address of the event owner","type":"control_address"},{"name":"whatAre20","qid":"20","text":"What are the most important things that the event must have?","type":"control_textarea"},{"name":"areYou21","qid":"21","text":"Are you open to suggestions or ideas coming up?","type":"control_radio"},{"name":"howLong","qid":"22","subLabel":"Hours","text":"How long would you like the event to run?","type":"control_textbox"},{"name":"howOften","qid":"23","text":"How often will the event occur?","type":"control_dropdown"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"eventPlanning1","qid":"1","text":"Event Planning Questionnaire  ","type":"control_head"},{"name":"submit2","qid":"2","text":"Submit","type":"control_button"},{"name":"fullName3","qid":"3","text":"Full name of the event owner","type":"control_fullname"},{"name":"emailAddress","qid":"4","subLabel":"example@example.com","text":"Email address of the event owner","type":"control_email"},null,{"name":"phoneNumber","qid":"6","text":"Phone number of the event owner","type":"control_phone"},{"name":"whatType","qid":"7","text":"What type of event are you planning?","type":"control_checkbox"},{"name":"whatAre8","qid":"8","text":"What are the main goals of the event?","type":"control_checkbox"},{"name":"whatIs9","qid":"9","text":"What is the name of the event? ","type":"control_textbox"},{"name":"whoPays","qid":"10","text":"Who pays for the event?","type":"control_radio"},null,{"name":"whatIs","qid":"12","text":"What is the approximate budget for the event? ","type":"control_textbox"},{"name":"whatIs13","qid":"13","text":"What is the date of the event? ","type":"control_datetime"},null,{"name":"isThe","qid":"15","text":"Is the date of the event flexible?","type":"control_radio"},{"name":"howMany","qid":"16","subLabel":"Number","text":"How many people will attend the event?","type":"control_number"},{"name":"input17","qid":"17","template":"If yes, from   {date-1}   to   {date-2}.  ","type":"control_inline"},null,{"name":"addressOf","qid":"19","text":"Address of the event owner","type":"control_address"},{"name":"whatAre20","qid":"20","text":"What are the most important things that the event must have?","type":"control_textarea"},{"name":"areYou21","qid":"21","text":"Are you open to suggestions or ideas coming up?","type":"control_radio"},{"name":"howLong","qid":"22","subLabel":"Hours","text":"How long would you like the event to run?","type":"control_textbox"},{"name":"howOften","qid":"23","text":"How often will the event occur?","type":"control_dropdown"}]);}, 20); 
</script>
<style type="text/css">@media print{.form-section{display:inline!important}.form-pagebreak{display:none!important}.form-section-closed{height:auto!important}.page-section{position:initial!important}}</style>
<link id="custom-font" type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/opt/google-fonts/Cuprum/fontface.css" />
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?themeRevisionID=5f7ed99c2c2c7240ba580251"/>
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/payment/payment_styles.css?3.3.36511" />
<link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/css/styles/payment/payment_feature.css?3.3.36511" />
<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
@import "https://fonts.googleapis.com/css?family=Cuprum:light,lightitalic,normal,italic,bold,bolditalic";

@import "//www.jotform.com/themes/css/buttons/form-submit-button-simple_green_apple.css";
*,
*:after,
*:before {
  box-sizing: border-box;
}
.form-all {
  font-family: "Cuprum", sans-serif;
}
.main .jotform-form {
  width: 100%;
  padding: 0 3%;
}
.form-all {
  display: flex;
  flex-direction: column;
  width: 100%;
  max-width: 754px;
}
.form-line-active {
  background-color: #ffffe0;
}
.form-all {
  font-size: 18px;
}
.form-label {
  font-weight: 500;
  font-size: 0.95em;
}
li.form-line {
  margin-top: 12px;
  margin-bottom: 12px;
}
.form-line {
  padding: 12px 10px;
}
.form-all .form-textbox,
.form-all .form-radio-other-input,
.form-all .form-checkbox-other-input,
.form-all .form-captcha input,
.form-all .form-spinner input,
.form-all .form-pagebreak-back,
.form-all .form-pagebreak-next,
.form-all .qq-upload-button,
.form-all .signature-wrapper,
.form-all .form-error-message {
  border-radius: 6px;
}
.form-all .form-sub-label {
  margin-left: 3px;
}
.form-all .form-textarea {
  border-radius: 6px;
  padding: 10px;
}
.supernova .form-all,
.form-all {
  border-radius: 20px;
}
.form-section:first-child {
  border-radius: 20px 20px 0 0;
}
.form-section:last-child {
  border-radius: 0 0 20px 20px;
}
.form-section {
  padding: 0px 17px;
}
.form-textbox,
.form-textarea,
.form-radio-other-input,
.form-checkbox-other-input,
.form-captcha input,
.form-spinner input {
  background-color: #d5d9ce;
}
li[data-type="control_textbox"] div[data-layout="half"],
li[data-type="control_dropdown"] div[data-layout="half"],
li[data-type="control_email"] div[data-layout="half"],
li[data-type="control_number"] div[data-layout="half"],
li[data-type="control_phone"] div[data-layout="half"],
li[data-type="control_datetime"] div[data-layout="half"],
li[data-type="control_signature"] div[data-layout="half"] {
  width: 100% !important;
  max-width: 316px;
}
.form-label {
  font-family: "Cuprum", sans-serif;
}
.form-line-column {
  width: calc(50% - 8px);
}
[data-type="control_dropdown"] .form-input,
[data-type="control_birthdate"] .form-input,
[data-type="control_time"] .form-input,
[data-type="control_dropdown"] .form-input-wide,
[data-type="control_birthdate"] .form-input-wide,
[data-type="control_time"] .form-input-wide {
  width: 100% !important;
  max-width: 316px;
}
[data-type="control_dropdown"] .form-dropdown {
  width: 100% !important;
  max-width: 316px;
}
.form-checkbox-item label,
.form-checkbox-item span,
.form-radio-item label,
.form-radio-item span {
  color: #6f6f6f;
}
.form-label-top,
.form-label-left,
.form-label-right,
.form-html {
  color: #555555;
}
.form-checkbox-item label,
.form-radio-item label {
  color: #555555;
}
.form-radio-item,
.form-checkbox-item {
  padding-bottom: 1px !important;
}
.form-radio-item:last-child,
.form-checkbox-item:last-child {
  padding-bottom: 0;
}
.form-single-column .form-checkbox-item,
.form-single-column .form-radio-item {
  width: 100%;
}
.form-checkbox-item .editor-container div,
.form-radio-item .editor-container div {
  position: relative;
}
.form-checkbox-item .editor-container div:before,
.form-radio-item .editor-container div:before {
  display: inline-block;
  vertical-align: middle;
  left: 0;
  width: 20px;
  height: 20px;
}
.form-radio-item:not(#foo),
.form-checkbox-item:not(#foo) {
  position: relative;
}
.form-radio-item:not(#foo) .form-radio + span:before,
.form-checkbox-item:not(#foo) .form-radio + span:before,
.form-radio-item:not(#foo) .form-radio + span:after,
.form-checkbox-item:not(#foo) .form-radio + span:after,
.form-radio-item:not(#foo) .form-radio:checked + span div:after,
.form-checkbox-item:not(#foo) .form-radio:checked + span div:after,
.form-radio-item:not(#foo) .form-checkbox + span:before,
.form-checkbox-item:not(#foo) .form-checkbox + span:before,
.form-radio-item:not(#foo) .form-checkbox + span:after,
.form-checkbox-item:not(#foo) .form-checkbox + span:after {
  display: none;
}
.form-radio-item:not(#foo) label:before,
.form-checkbox-item:not(#foo) label:before {
  background-color: transparent;
  border: 2px solid #555555;
}
.form-radio-item:not(#foo) label:focus:before,
.form-checkbox-item:not(#foo) label:focus:before {
  border-color: #588ee6;
}
.form-radio-item:not(#foo) .form-radio:checked + label:after,
.form-checkbox-item:not(#foo) .form-radio:checked + label:after,
.form-radio-item:not(#foo) .form-checkbox:checked + label:after,
.form-checkbox-item:not(#foo) .form-checkbox:checked + label:after {
  background: none;
  border-bottom: 3px solid #555555;
  border-left: 3px solid #555555;
  display: inline-block;
  transform: rotate(-45deg) !important;
  height: 9px;
  width: 18px;
  top: 0;
  border-radius: 2px;
}
.form-radio-item:not(#foo) .form-radio-other,
.form-radio-item:not(#foo) .form-checkbox-other {
  display: inline-block;
  margin-right: 8px;
  margin-top: 1px;
}
.form-radio-item:not(#foo) .form-radio-item label,
.form-radio-item:not(#foo) .form-radio-item label {
  float: left;
  margin-left: 0;
  outline: none;
}
.form-radio-item:not(#foo) label:before {
  content: '';
  position: absolute;
  display: inline-block;
  vertical-align: baseline;
  margin-right: 4px;
  border-radius: 50%;
  left: 4px;
  width: 20px;
  height: 20px;
  cursor: pointer;
}
.form-radio-item:not(#foo) label:after {
  content: '';
  position: absolute;
  z-index: 10;
  display: inline-block;
  top: 4px;
  left: 8px;
  width: 10px;
  height: 10px;
}
.form-radio-item:not(#foo) input:checked + label:after {
  opacity: 1;
}
.form-checkbox-item:not(#foo) .form-radio-other,
.form-checkbox-item:not(#foo) .form-checkbox-other {
  display: inline-block;
  margin-right: 8px;
  margin-top: 1px;
}
.form-checkbox-item:not(#foo) .form-radio-item label,
.form-checkbox-item:not(#foo) .form-radio-item label {
  float: left;
  margin-left: 0;
  outline: none;
}
.form-checkbox-item:not(#foo) label:before {
  content: '';
  position: absolute;
  display: inline-block;
  vertical-align: baseline;
  margin-right: 4px;
  border-radius: 2px;
  left: 4px;
  width: 20px;
  height: 20px;
  cursor: pointer;
}
.form-checkbox-item:not(#foo) label:after {
  content: '';
  position: absolute;
  z-index: 10;
  display: inline-block;
  top: 6px;
  left: 10px;
  width: 4px;
  height: 4px;
}
.form-checkbox-item:not(#foo) input:checked + label:after {
  opacity: 1;
}
.form-all .form-submit-button,
.form-all .form-submit-print {
  font-size: 18px;
  font-weight: normal;
  font-family: "Cuprum", sans-serif;
}
.form-all .form-submit-button {
  min-width: 180px;
}
.form-all .form-submit-button.js-new-sacl-button,
.form-all .form-submit-print {
  min-width: 98px;
}
.form-all .form-submit-button {
  color: #2c3345;
  background: rgba(80, 186, 123, 0.79);
  box-shadow: none;
  text-shadow: none;
}
.form-all .form-pagebreak-back,
.form-all .form-pagebreak-next {
  font-family: "Cuprum", sans-serif;
  font-size: 18px;
  font-weight: normal;
}
.form-all .form-pagebreak-back,
.form-all .form-pagebreak-next {
  min-width: 128px;
}
li[data-type="control_image"] div {
  text-align: left;
}
li[data-type="control_image"] img {
  border: none;
  border-width: 0px !important;
  border-style: solid !important;
  border-color: false !important;
}
.supernova {
  height: 100%;
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center top;
  background-repeat: repeat;
}
.supernova {
  background-image: none;
}
#stage {
  background-image: none;
}
/* | */
.form-all {
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center top;
  background-repeat: repeat;
}
.form-header-group {
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center top;
}
.header-large h1.form-header {
  font-size: 2em;
}
.header-large h2.form-header {
  font-size: 1.5em;
}
.header-large h3.form-header {
  font-size: 1.17em;
}
.header-large h1 + .form-subHeader {
  font-size: 1em;
}
.header-large h2 + .form-subHeader {
  font-size: .875em;
}
.header-large h3 + .form-subHeader {
  font-size: .75em;
}
.header-default h1.form-header {
  font-size: 2em;
}
.header-default h2.form-header {
  font-size: 1.5em;
}
.header-default h3.form-header {
  font-size: 1.17em;
}
.header-default h1 + .form-subHeader {
  font-size: 1em;
}
.header-default h2 + .form-subHeader {
  font-size: .875em;
}
.header-default h3 + .form-subHeader {
  font-size: .75em;
}
.header-small h1.form-header {
  font-size: 2em;
}
.header-small h2.form-header {
  font-size: 1.5em;
}
.header-small h3.form-header {
  font-size: 1.17em;
}
.header-small h1 + .form-subHeader {
  font-size: 1em;
}
.header-small h2 + .form-subHeader {
  font-size: .875em;
}
.header-small h3 + .form-subHeader {
  font-size: .75em;
}
.form-header-group {
  text-align: left;
}
.form-header-group {
  font-family: "Cuprum", sans-serif;
}
div.form-header-group.header-large {
  margin: 0px -38px;
}
div.form-header-group.header-large {
  padding: 27px 46px;
}
.form-header-group .form-header,
.form-header-group .form-subHeader {
  color: #2c3345;
}
.form-header-group {
  background-color: #d2dbb3;
}
.form-line-error {
  overflow: hidden;
  -webkit-transition-property: none;
  -moz-transition-property: none;
  -ms-transition-property: none;
  -o-transition-property: none;
  transition-property: none;
  -webkit-transition-duration: 0.3s;
  -moz-transition-duration: 0.3s;
  -ms-transition-duration: 0.3s;
  -o-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease;
  -moz-transition-timing-function: ease;
  -ms-transition-timing-function: ease;
  -o-transition-timing-function: ease;
  transition-timing-function: ease;
  background-color: #fff4f4;
}
.form-line-error .form-error-message {
  background-color: #f23a3c;
  clear: both;
  float: none;
}
.form-line-error .form-error-message .form-error-arrow {
  border-bottom-color: #f23a3c;
}
.form-line-error input:not(#coupon-input),
.form-line-error textarea,
.form-line-error .form-validation-error {
  border: 1px solid #f23a3c;
  box-shadow: 0 0 3px #f23a3c;
}
.supernova {
  background-color: #f1f4e6;
  background-color: #ffffff;
}
.supernova body {
  background-color: transparent;
}
.supernova .form-all,
.form-all {
  background-color: #f1f4e6;
}
.form-textbox,
.form-textarea,
.form-radio-other-input,
.form-checkbox-other-input,
.form-captcha input,
.form-spinner input {
  background-color: #d5d9ce;
}
.form-matrix-table tr {
  border-color: #dde4c3;
}
.form-matrix-table tr:nth-child(2n) {
  background-color: #e7ecd4;
}
.form-all {
  color: #2c3345;
}
.form-label-top,
.form-label-left,
.form-label-right,
.form-html {
  color: #555555;
}
.form-line-error {
  overflow: hidden;
  -webkit-transition-property: none;
  -moz-transition-property: none;
  -ms-transition-property: none;
  -o-transition-property: none;
  transition-property: none;
  -webkit-transition-duration: 0.3s;
  -moz-transition-duration: 0.3s;
  -ms-transition-duration: 0.3s;
  -o-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease;
  -moz-transition-timing-function: ease;
  -ms-transition-timing-function: ease;
  -o-transition-timing-function: ease;
  transition-timing-function: ease;
  background-color: #fff4f4;
}


  
  
  
  
  
  
  /*PREFERENCES STYLE*/
  /* NEW THEME STYLE */

  /* colors */

  .form-textbox, .form-textarea {
    color: undefined;
  }
  .FITB-inptCont .form-textbox, .FITB-inptCont .form-dropdown,
  span.FITB-inptCont[data-type=selectbox] select,
  span.FITB-inptCont[data-type=timebox] select {
    color: #264B67;
  }
  .rating-item input:hover+label {
    color: rgba(0, 112, 141, 0.75);
  }
  li[data-type=control_fileupload] .qq-upload-button,
  .until-text,
  .form-submit-reset {
    color: rgba(0, 112, 141, 0.75);
  }

  .stageEmpty,
  .btn-barebone,
  .formPage-stuff,
  .scrollToTop .scrollToTop-text {
    color: #264B67;
  }
  .scrollToTop svg {
    fill: #264B67;
  }
  .rating-item label {
    color: rgba(0, 112, 141, 0.75);
  }
  .currentDate,
  .pickerItem select,
  .appointmentCalendar .calendarDay,
  .calendar.popup th,
  .calendar.popup table tbody td,
  .calendar-new-header>*,
  .form-collapse-table {
    color: #264B67;
  }
  .appointmentCalendar .dayOfWeek {
    color: #264B67;
  }
  .appointmentSlotsContainer > * {
    color: rgba(0, 112, 141, 0.75);
  }
  li[data-type=control_fileupload] .jfUpload-heading,
  ::placeholder,
  .form-dropdown.is-active,
  .form-dropdown:first-child,
  .form-spinner-input {
    color: #83D0E4;
  }
  .appointmentCalendar .calendarWeek .calendarDay.isUnavailable,
  .calendar tr.days td.otherDay,
  .calendar tr.days td:hover:not(.unselectable) {
    color: #83D0E4;
  }
  span.form-sub-label, label.form-sub-label, div.form-header-group .form-subHeader,
  .rating-item-title.for-to > label:first-child,
  .rating-item-title.for-from > label:first-child,
  .rating-item-title .editor-container * {
    color: #264B67;
  }
  .form-pagebreak-back{
    color: #FFFFFF;
  }
  .rating-item input:checked+label,
  .rating-item input:focus+label {
    color: #FFFFFF;
  }
  .clear-pad-btn {
    color: #FFFFFF;
  }
  .form-textbox::placeholder,
  .form-dropdown:not(.time-dropdown):not(:required),
  .form-dropdown:not(:required),
  .form-dropdown:required:invalid {
    color: #83D0E4;
  }
  /* border-colors */
  .form-dropdown,
  .form-textarea,
  .form-textbox,
  li[data-type=control_fileupload] .qq-upload-button,
  .rating-item label,
  .rating-item input:focus+label,
  .rating-item input:checked+label,
  .jf-form-buttons,
  .form-checkbox+label:before, .form-checkbox+span:before, .form-radio+label:before, .form-radio+span:before,
  .signature-pad-passive,
  .signature-wrapper,
  .appointmentCalendarContainer,
  .appointmentField .timezonePickerName,
  .appointmentDayPickerButton,
  .appointmentCalendarContainer .monthYearPicker .pickerItem+.pickerItem,
  .appointmentCalendarContainer .monthYearPicker,
  .appointmentCalendar .calendarDay.isActive .calendarDayEach, .appointmentCalendar .calendarDay.isToday .calendarDayEach, .appointmentCalendar .calendarDay:not(.empty):hover .calendarDayEach,
  .calendar.popup:before,
  .calendar-new-month,
  .form-matrix-column-headers, .form-matrix-table td, .form-matrix-table td:last-child,
  .form-matrix-table th, .form-matrix-table th:last-child, .form-matrix-table tr:last-child td, .form-matrix-table tr:last-child th, .form-matrix-table tr:not([role=group])+tr[role=group] th,
  .form-matrix-headers.form-matrix-column-headers,
  .isSelected .form-matrix-column-headers:nth-last-of-type(2),
  li[data-type=control_inline] input[type=email], li[data-type=control_inline] input[type=number],
  li[data-type=control_inline] input[type=tel], li[data-type=control_inline] input[type=text] {
    border-color: rgba(0, 112, 141, 0.75);
  }
  .stageEmpty,
  .form-page-break:before,
  .welcome-page-break:before,
  .thankyou-page-break:before,
  .form-cover-break:before,
  .form-page-break:after,
  .welcome-page-break:after,
  .thankyou-page-break:after,
  .form-cover-break:after {
    border-color: rgba(0, 112, 141, 0.75);
  }

  .rating-item input:hover+label {
    border-color: rgba(0, 112, 141, 0.75);
  }
  .appointmentSlot,
  .form-checkbox:checked+label:before, .form-checkbox:checked+span:before, .form-checkbox:checked+span label:before,
  .form-radio:checked+label:before, .form-radio:checked+span:before,
  .form-dropdown:focus, .form-textarea:focus, .form-textbox:focus, .signature-wrapper:focus,
  .form-line[data-payment="true"] .form-product-item .p_checkbox .checked,
  .form-dropdown:hover, .form-textarea:hover, .form-textbox:hover, .signature-wrapper:hover {
    border-color: rgba(0, 112, 141, 0.75);
  }

  .calendar tr.days td:hover:not(.unselectable):after {
    border-color: #83D0E4;
  }
  .form-header-group,
  .form-buttons-wrapper, .form-pagebreak, .form-submit-clear-wrapper,
  .form-pagebreak-next,
  .form-pagebreak-back,
  .form-checkbox:hover+label:before, .form-checkbox:hover+span:before, .form-radio:hover+label:before, .form-radio:hover+span:before,
  .divider {
    border-color: #83D0E4;
  }
  .form-pagebreak-back:focus, .form-pagebreak-next:focus, .form-submit-button:focus {
    border-color: rgba(0, 112, 141, 1);
  }
  /* background-colors */
  .form-line-active {
    background-color: #DAF3FA;
  }
  .stageEmpty {
    background-color:  #83D0E4;
  }
  .form-line-error {
    background-color: #FFEDED;
  }
  .form-matrix-column-headers, .form-matrix-row-headers,
  .form-spinner-button-container>*,
  .form-collapse-table,
  .form-collapse-table:hover,
  .appointmentDayPickerButton {
    background-color: #83D0E4;
  }
  .calendar.popup, .calendar.popup table,
  .calendar.popup table tbody td:after{
    background-color: #F0FCFF;
  }

  .appointmentCalendar .calendarDay.isActive .calendarDayEach,
  .appointmentFieldRow.forSelectedDate,
  .calendar.popup tr.days td.selected:after,
  .calendar.popup:after,
  .submit-button,
  .form-checkbox:checked+label:before, .form-checkbox:checked+span:before, .form-checkbox:checked+span label:before,
  .form-radio+label:after, .form-radio+span:after,
  .rating-item input:checked+label,
  .appointmentCalendar .calendarDay:after,
  .form-line[data-payment="true"] .form-product-item .p_checkbox .checked,
  .rating-item input:focus+label,
  .formPage-removePage:hover,
  .btn-barebone:hover, .btn-barebone:active {
    background-color: #01485A;
  }
  .appointmentSlot.active {
    background-color: #01485A !important;
  }
  .clear-pad-btn,
  .appointmentCalendar .dayOfWeek,
  .calendar.popup th {
    background-color: #83D0E4 !important;
  }
  .appointmentField .timezonePicker:hover+.timezonePickerName,
  .form-spinner-button-container>*:hover {
    background-color: #86C8D9;
  }
  .form-matrix-values,
  .form-matrix-values,
  .signature-wrapper,
  .signature-pad-passive,
  .rating-item label,
  .form-checkbox+label:before, .form-checkbox+span:before,
  .form-radio+label:before, .form-radio+span:before {
    background-color: #FFFFFF;
  }
  li[data-type=control_fileupload] .qq-upload-button {
    background-color: #FFFFFF;
  }
  .JotFormBuilder .appContainer #app li.form-line[data-type=control_matrix].isSelected
  .questionLine-editButton.forRemove:after,
  .JotFormBuilder .appContainer #app li.form-line[data-type=control_matrix].isSelected .questionLine-editButton.forRemove:before {
    background-color: #FFFFFF;
  }
  .appointmentCalendarContainer, .appointmentSlot,
  .rating-item-title.for-to > label:first-child,
  .rating-item-title.for-from > label:first-child,
  .rating-item-title .editor-container *,
  .calendar-opened {
    background-color: transparent;
  }
  .page-section li.form-line-active[data-type="control_button"] {
    background-color: #DAF3FA;
  }
  .appointmentCalendar .calendarDay.isSelected:after {
    color: #FFFFFF;
  }
  /* shadow */
  .form-dropdown:hover, .form-textarea:hover, .form-textbox:hover, .signature-wrapper:hover,
  .calendar.popup:before,
  .jSignature:hover,
  li[data-type=control_fileupload] .qq-upload-button-hover,
  .form-line[data-payment="true"] .form-product-item .p_checkbox .checked,
  .form-line[data-payment="true"] .form-product-item .p_checkbox:hover .select_border,
  .form-checkbox:hover+label:before, .form-checkbox:hover+span:before, .form-radio:hover+label:before, .form-radio:hover+span:before,
  .calendar.popup:before {
    border-color: rgba(0, 112, 141, 0.5);
    box-shadow: 0 0 0 2px rgba(0, 112, 141, 0.25);
  }
  .form-dropdown:focus, .form-textarea:focus, .form-textbox:focus, .signature-wrapper:focus,
  li[data-type=control_fileupload] .qq-upload-button-focus,
  .form-checkbox:focus+label:before, .form-checkbox:focus+span:before, .form-radio:focus+label:before, .form-radio:focus+span:before,
  .calendar.popup:before {
    border-color: rgba(0, 112, 141, 1);
    box-shadow: 0 0 0 3px rgba(0, 112, 141, 0.25);
  }
  .calendar.popup table tbody td{
    box-shadow: none;
  }

  /* button colors */
  .submit-button {
    background-color: #264B67;
    border-color: #264B67;
  }
  .submit-button:hover {
    background-color: #09314F;
    border-color: #09314F;
  }
  .form-pagebreak-next {
    background-color: #83D0E4;
  }
  .form-pagebreak-back {
    background-color: #83D0E4;
  }
  .form-pagebreak-back:hover {
    background-color: #4F7D89;
    border-color: #4F7D89;
  }
  .form-pagebreak-next:hover {
    background-color: #4F7D89;
    border-color: #4F7D89;
  }
  .form-sacl-button, .form-submit-print {
    background-color: transparent;
    color: rgba(0, 112, 141, 0.75);
    border-color: rgba(0, 112, 141, 0.75);
  }
  .form-sacl-button:hover, .form-submit-print:hover,
  .appointmentSlot:not(.disabled):not(.active):hover,
  .appointmentDayPickerButton:hover,
  .rating-item input:hover+label {
    background-color: #86C8D9;
  }

  /* payment styles */

  .form-line[data-payment=true] .form-textbox,
  .form-line[data-payment=true] .select-area,
  .form-line[data-payment=true] #coupon-input,
  .form-line[data-payment=true] #coupon-container input,
  .form-line[data-payment=true] input#productSearch-input,
  .form-line[data-payment=true] .form-product-category-item:after,
  .form-line[data-payment=true] .filter-container .dropdown-container .select-content,
  .form-line[data-payment=true] .form-textbox.form-product-custom_quantity,
  .form-line[data-payment="true"] .form-product-item .p_checkbox .select_border,
  .form-line[data-payment="true"] .form-product-item .form-product-container .form-sub-label-container span.select_cont,
  .form-line[data-payment=true] select.form-dropdown,
  .form-line[data-payment=true] #payment-category-dropdown .select-area,
  .form-line[data-payment=true] #payment-sorting-products-dropdown .select-area,
  .form-line[data-payment=true] .dropdown-container .select-content {
    border-color: rgba(0, 112, 141, 0.75);
    border-color: rgba(0,112,141,.4);
  }
  .form-line[data-payment="true"] hr,
  .form-line[data-payment=true] .p_item_separator,
  .form-line[data-payment="true"] .payment_footer.new_ui,
  .form-line.card-3col .form-product-item.new_ui,
  .form-line.card-2col .form-product-item.new_ui {
    border-color: rgba(0, 112, 141, 0.75);
    border-color: rgba(0,112,141,.2);
  }
  .form-line[data-payment=true] .form-product-category-item {
    border-color: rgba(0, 112, 141, 0.75);
    border-color: rgba(0,112,141,.3);
  }
  .form-line[data-payment=true] #coupon-input,
  .form-line[data-payment=true] .form-textbox.form-product-custom_quantity,
  .form-line[data-payment=true] input#productSearch-input,
  .form-line[data-payment=true] .select-area,
  .form-line[data-payment=true] .custom_quantity,
  .form-line[data-payment=true] .filter-container .select-content,
  .form-line[data-payment=true] .p_checkbox .select_border,
  .form-line[data-payment=true] #payment-category-dropdown .select-area,
  .form-line[data-payment=true] #payment-sorting-products-dropdown .select-area,
  .form-line[data-payment=true] .dropdown-container .select-content {
    background-color: #FFFFFF;
  }
  .form-line[data-payment=true] .form-product-category-item.title_collapsed.has_selected_product .selected-items-icon {
   background-color: rgba(0,112,141,.7);
   border-color: rgba(0,112,141,.7);
  }
  .form-line[data-payment=true].form-line.card-3col .form-product-item,
  .form-line[data-payment=true].form-line.card-2col .form-product-item {
   background-color: rgba(0,0,0,.05);
  }
  .form-line[data-payment=true] .payment-form-table input.form-textbox,
  .form-line[data-payment=true] .payment-form-table input.form-dropdown,
  .form-line[data-payment=true] .payment-form-table .form-sub-label-container > div,
  .form-line[data-payment=true] .payment-form-table span.form-sub-label-container iframe,
  .form-line[data-type=control_square] .payment-form-table span.form-sub-label-container iframe {
    border-color: rgba(0, 112, 141, 0.75);
  }

  /* icons */
  .appointmentField .timezonePickerName:before {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0wIDcuOTYwMkMwIDMuNTY2MTcgMy41NTgyMSAwIDcuOTUyMjQgMEMxMi4zNTQyIDAgMTUuOTIwNCAzLjU2NjE3IDE1LjkyMDQgNy45NjAyQzE1LjkyMDQgMTIuMzU0MiAxMi4zNTQyIDE1LjkyMDQgNy45NTIyNCAxNS45MjA0QzMuNTU4MjEgMTUuOTIwNCAwIDEyLjM1NDIgMCA3Ljk2MDJaTTEuNTkzNzUgNy45NjAyQzEuNTkzNzUgMTEuNDc4NiA0LjQ0MzUgMTQuMzI4NCA3Ljk2MTkxIDE0LjMyODRDMTEuNDgwMyAxNC4zMjg0IDE0LjMzMDEgMTEuNDc4NiAxNC4zMzAxIDcuOTYwMkMxNC4zMzAxIDQuNDQxNzkgMTEuNDgwMyAxLjU5MjA0IDcuOTYxOTEgMS41OTIwNEM0LjQ0MzUgMS41OTIwNCAxLjU5Mzc1IDQuNDQxNzkgMS41OTM3NSA3Ljk2MDJaIiBmaWxsPSIjMjA4MTlCIi8+CjxwYXRoIGQ9Ik04LjM1ODA5IDMuOTc5OThINy4xNjQwNlY4Ljc1NjFMMTEuMzQzMiAxMS4yNjM2TDExLjk0MDIgMTAuMjg0NUw4LjM1ODA5IDguMTU5MDhWMy45Nzk5OFoiIGZpbGw9IiMyMDgxOUIiLz4KPC9zdmc+Cg==);
  }
  .appointmentCalendarContainer .monthYearPicker .pickerArrow.prev:after {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAiIGhlaWdodD0iNiIgdmlld0JveD0iMCAwIDEwIDYiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxwYXRoIGQ9Ik04LjU5NzgyIDUuMzM2NjRDOC45MzMxMiA1LjY0MDE4IDkuNDM5MzkgNS42MzM2IDkuNzU2MTMgNS4zMTY2OUMxMC4wODEzIDQuOTkxMzYgMTAuMDgxMyA0LjQ2MzU0IDkuNzU2MTMgNC4xMzgyMUM5LjYwOTA0IDQuMDAwMjYgOS42MDkwMyA0LjAwMDI2IDkuMDg5NDkgMy41MTUwOUM4LjQzNzQyIDIuOTA2MDkgOC40Mzc0MyAyLjkwNjA5IDcuNjU1MTEgMi4xNzU0N0M2LjA4OTU2IDAuNzEzMzUzIDYuMDg5NTYgMC43MTMzNTIgNS41Njc3MyAwLjIyNjAwN0M1LjI0MTA0IC0wLjA3MDYwMDUgNC43NTA4NSAtMC4wNjk1OTY3IDQuNDMyMzUgMC4yMjU4MzVMMC4yNjI1NCA0LjExODE1Qy0wLjA4MDU0NTkgNC40NTkzNiAtMC4wODcxNzExIDQuOTg3ODggMC4yNDE0NjggNS4zMTY2OUMwLjU1OTU1OCA1LjYzNDk2IDEuMDY5NzUgNS42NDA1OSAxLjM5NzAzIDUuMzM2NTNMNC45OTg5MSAxLjk3NTIyTDguNTk3ODIgNS4zMzY2NFoiIGZpbGw9IiMwMDcwOEQiLz4KPC9zdmc+Cg==);
  }
  .appointmentCalendarContainer .monthYearPicker .pickerArrow.next:after {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAiIGhlaWdodD0iNiIgdmlld0JveD0iMCAwIDEwIDYiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxwYXRoIGQ9Ik0xLjQwMjE4IDAuMjI2OTE1QzEuMDY2ODcgLTAuMDc2Njg0OSAwLjU2MDYwMiAtMC4wNzAwODQ5IDAuMjQzODY5IDAuMjQ2ODE1Qy0wLjA4MTI4OTggMC41NzIxMTUgLTAuMDgxMjg5OCAxLjEwMDAyIDAuMjQzODY5IDEuNDI1MzJDMC4zOTA5NTYgMS41NjMyMiAwLjM5MDk2NiAxLjU2MzIyIDAuOTEwNTEgMi4wNDg0MkMxLjU2MjU3IDIuNjU3NDIgMS41NjI1NiAyLjY1NzQxIDIuMzQ0ODggMy4zODgwMkMzLjkxMDQ0IDQuODUwMTEgMy45MTA0MyA0Ljg1MDEyIDQuNDMyMjcgNS4zMzc1MkM0Ljc1ODk1IDUuNjM0MTIgNS4yNDkxNSA1LjYzMzEyIDUuNTY3NjQgNS4zMzc3Mkw5LjczNzQ2IDEuNDQ1NDJDMTAuMDgwNSAxLjEwNDEyIDEwLjA4NzEgMC41NzU2MTUgOS43NTg1MyAwLjI0NjgxNUM5LjQ0MDQ0IC0wLjA3MTQ4NDkgOC45MzAyNCAtMC4wNzcwODQ5IDguNjAyOTcgMC4yMjcwMTVMNS4wMDEwOCAzLjU4ODMyTDEuNDAyMTggMC4yMjY5MTVaIiBmaWxsPSIjMDA3MDhEIi8+Cjwvc3ZnPgo=);
  }
  .appointmentField .timezonePickerName:after {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAiIGhlaWdodD0iNiIgdmlld0JveD0iMCAwIDEwIDYiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxwYXRoIGQ9Ik0xIDFMNSA1TDkgMSIgc3Ryb2tlPSIjMDA3MDhEIiBzdHJva2Utd2lkdGg9IjIiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K);
    width: 11px;
  }
  li[data-type=control_datetime] [data-wrapper-react=true].extended>div+.form-sub-label-container .form-textbox:placeholder-shown,
  li[data-type=control_datetime] [data-wrapper-react=true]:not(.extended) .form-textbox:not(.time-dropdown):placeholder-shown,
  .appointmentCalendarContainer .currentDate {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTciIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNyAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1Ljk0ODkgNVYxNS4wMjZDMTUuOTQ4OSAxNS41NjM5IDE1LjUwMjYgMTYgMTQuOTUyMSAxNkgwLjk5NjgwNUMwLjQ0NjI4NSAxNiAwIDE1LjU2MzkgMCAxNS4wMjZWNUgxNS45NDg5Wk00LjE5MjQ1IDExLjQxNjdIMi4zNzQ3NEwyLjI4NTE1IDExLjQyNDdDMi4xMTA3OCAxMS40NTY1IDEuOTY4MDEgMTEuNTc5MiAxLjkwNzUyIDExLjc0MjJMMS44ODQzNyAxMS44MjY4TDEuODc2MzQgMTEuOTE2N1YxMy42NjY3TDEuODg0MzcgMTMuNzU2NUMxLjkxNjAyIDEzLjkzMTUgMi4wMzg0IDE0LjA3NDcgMi4yMDA4MyAxNC4xMzU0TDIuMjg1MTUgMTQuMTU4NkwyLjM3NDc0IDE0LjE2NjdINC4xOTI0NUw0LjI4MjAzIDE0LjE1ODZDNC40NTY0MSAxNC4xMjY5IDQuNTk5MTggMTQuMDA0MSA0LjY1OTY3IDEzLjg0MTFMNC42ODI4MiAxMy43NTY1TDQuNjkwODUgMTMuNjY2N1YxMS45MTY3TDQuNjgyODIgMTEuODI2OEM0LjY1MTE3IDExLjY1MTkgNC41Mjg3OSAxMS41MDg2IDQuMzY2MzUgMTEuNDQ3OUw0LjI4MjAzIDExLjQyNDdMNC4xOTI0NSAxMS40MTY3Wk04Ljg4MzI5IDExLjQxNjdINy4wNjU1OUw2Ljk3NiAxMS40MjQ3QzYuODAxNjIgMTEuNDU2NSA2LjY1ODg1IDExLjU3OTIgNi41OTgzNyAxMS43NDIyTDYuNTc1MjIgMTEuODI2OEw2LjU2NzE5IDExLjkxNjdWMTMuNjY2N0w2LjU3NTIyIDEzLjc1NjVDNi42MDY4NyAxMy45MzE1IDYuNzI5MjUgMTQuMDc0NyA2Ljg5MTY4IDE0LjEzNTRMNi45NzYgMTQuMTU4Nkw3LjA2NTU5IDE0LjE2NjdIOC44ODMyOUw4Ljk3Mjg4IDE0LjE1ODZDOS4xNDcyNiAxNC4xMjY5IDkuMjkwMDMgMTQuMDA0MSA5LjM1MDUxIDEzLjg0MTFMOS4zNzM2NyAxMy43NTY1TDkuMzgxNyAxMy42NjY3VjExLjkxNjdMOS4zNzM2NyAxMS44MjY4QzkuMzQyMDIgMTEuNjUxOSA5LjIxOTY0IDExLjUwODYgOS4wNTcyIDExLjQ0NzlMOC45NzI4OCAxMS40MjQ3TDguODgzMjkgMTEuNDE2N1pNNC4xOTI0NSA2LjgzMzMzSDIuMzc0NzRMMi4yODUxNSA2Ljg0MTM5QzIuMTEwNzggNi44NzMxNCAxLjk2ODAxIDYuOTk1OTEgMS45MDc1MiA3LjE1ODg3TDEuODg0MzcgNy4yNDM0NkwxLjg3NjM0IDcuMzMzMzNWOS4wODMzM0wxLjg4NDM3IDkuMTczMjFDMS45MTYwMiA5LjM0ODE1IDIuMDM4NCA5LjQ5MTM3IDIuMjAwODMgOS41NTIwNUwyLjI4NTE1IDkuNTc1MjhMMi4zNzQ3NCA5LjU4MzMzSDQuMTkyNDVMNC4yODIwMyA5LjU3NTI4QzQuNDU2NDEgOS41NDM1MyA0LjU5OTE4IDkuNDIwNzUgNC42NTk2NyA5LjI1NzhMNC42ODI4MiA5LjE3MzIxTDQuNjkwODUgOS4wODMzM1Y3LjMzMzMzTDQuNjgyODIgNy4yNDM0NkM0LjY1MTE3IDcuMDY4NTIgNC41Mjg3OSA2LjkyNTI5IDQuMzY2MzUgNi44NjQ2MUw0LjI4MjAzIDYuODQxMzlMNC4xOTI0NSA2LjgzMzMzWk04Ljg4MzI5IDYuODMzMzNINy4wNjU1OUw2Ljk3NiA2Ljg0MTM5QzYuODAxNjIgNi44NzMxNCA2LjY1ODg1IDYuOTk1OTEgNi41OTgzNyA3LjE1ODg3TDYuNTc1MjIgNy4yNDM0Nkw2LjU2NzE5IDcuMzMzMzNWOS4wODMzM0w2LjU3NTIyIDkuMTczMjFDNi42MDY4NyA5LjM0ODE1IDYuNzI5MjUgOS40OTEzNyA2Ljg5MTY4IDkuNTUyMDVMNi45NzYgOS41NzUyOEw3LjA2NTU5IDkuNTgzMzNIOC44ODMyOUw4Ljk3Mjg4IDkuNTc1MjhDOS4xNDcyNiA5LjU0MzUzIDkuMjkwMDMgOS40MjA3NSA5LjM1MDUxIDkuMjU3OEw5LjM3MzY3IDkuMTczMjFMOS4zODE3IDkuMDgzMzNWNy4zMzMzM0w5LjM3MzY3IDcuMjQzNDZDOS4zNDIwMiA3LjA2ODUyIDkuMjE5NjQgNi45MjUyOSA5LjA1NzIgNi44NjQ2MUw4Ljk3Mjg4IDYuODQxMzlMOC44ODMyOSA2LjgzMzMzWk0xMy41NzQxIDYuODMzMzNIMTEuNzU2NEwxMS42NjY4IDYuODQxMzlDMTEuNDkyNSA2Ljg3MzE0IDExLjM0OTcgNi45OTU5MSAxMS4yODkyIDcuMTU4ODdMMTEuMjY2MSA3LjI0MzQ2TDExLjI1OCA3LjMzMzMzVjkuMDgzMzNMMTEuMjY2MSA5LjE3MzIxQzExLjI5NzcgOS4zNDgxNSAxMS40MjAxIDkuNDkxMzcgMTEuNTgyNSA5LjU1MjA1TDExLjY2NjggOS41NzUyOEwxMS43NTY0IDkuNTgzMzNIMTMuNTc0MUwxMy42NjM3IDkuNTc1MjhDMTMuODM4MSA5LjU0MzUzIDEzLjk4MDkgOS40MjA3NSAxNC4wNDE0IDkuMjU3OEwxNC4wNjQ1IDkuMTczMjFMMTQuMDcyNSA5LjA4MzMzVjcuMzMzMzNMMTQuMDY0NSA3LjI0MzQ2QzE0LjAzMjkgNy4wNjg1MiAxMy45MTA1IDYuOTI1MjkgMTMuNzQ4IDYuODY0NjFMMTMuNjYzNyA2Ljg0MTM5TDEzLjU3NDEgNi44MzMzM1oiIGZpbGw9IiM4M0QwRTQiLz4KPHBhdGggZD0iTTEzLjA1NDIgMS4xMjVIMTUuMDQ3OEMxNS41OTgzIDEuMTI1IDE2LjA0NDYgMS42MDA3IDE2LjA0NDYgMi4xODc1VjRIMC4wOTU3MDMxVjIuMTg3NUMwLjA5NTcwMzEgMS42MDA3IDAuNTQxOTg4IDEuMTI1IDEuMDkyNTEgMS4xMjVIMy4wODYxMlYxLjA2MjVDMy4wODYxMiAwLjQ3NTY5NyAzLjUzMjQgMCA0LjA4MjkyIDBDNC42MzM0NCAwIDUuMDc5NzMgMC40NzU2OTcgNS4wNzk3MyAxLjA2MjVWMS4xMjVIMTEuMDYwNlYxLjA2MjVDMTEuMDYwNiAwLjQ3NTY5NyAxMS41MDY4IDAgMTIuMDU3NCAwQzEyLjYwNzkgMCAxMy4wNTQyIDAuNDc1Njk3IDEzLjA1NDIgMS4wNjI1VjEuMTI1WiIgZmlsbD0iIzgzRDBFNCIvPgo8L3N2Zz4K);
  }
  .form-star-rating-star.Stars {
    background-image: url(data:image/png;base64,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) !important;
  }
  .signature-pad-passive, .signature-placeholder:after {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTk4IiBoZWlnaHQ9IjQwIiB2aWV3Qm94PSIwIDAgMTk4IDQwIiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8cGF0aCBkPSJNNzQuMTA0NCA2LjM0NTA4SDc1LjU4NTlDNzUuNTQxMiA0LjcxNDQgNzQuMDk5NCAzLjUzMTE2IDcyLjAzMTIgMy41MzExNkM2OS45ODc5IDMuNTMxMTYgNjguNDIxOSA0LjY5OTQ4IDY4LjQyMTkgNi40NTQ0NkM2OC40MjE5IDcuODcxMzYgNjkuNDM2MSA4LjcwMTYyIDcxLjA3MTcgOS4xNDQwOUw3Mi4yNzQ5IDkuNDcyMjFDNzMuMzYzNiA5Ljc2MDU2IDc0LjIwMzggMTAuMTE4NSA3NC4yMDM4IDExLjAyMzNDNzQuMjAzOCAxMi4wMTc3IDczLjI1NDMgMTIuNjczOSA3MS45NDY3IDEyLjY3MzlDNzAuNzYzNSAxMi42NzM5IDY5Ljc3OTEgMTIuMTQ2OSA2OS42ODk2IDExLjAzODNINjguMTQ4NEM2OC4yNDc5IDEyLjg4MjcgNjkuNjc0NyAxNC4wMjEyIDcxLjk1NjcgMTQuMDIxMkM3NC4zNDggMTQuMDIxMiA3NS43MjUxIDEyLjc2MzQgNzUuNzI1MSAxMS4wMzgzQzc1LjcyNTEgOS4yMDM3NSA3NC4wODk1IDguNDkyODEgNzIuNzk2OSA4LjE3NDYzTDcxLjgwMjYgNy45MTYxQzcxLjAwNzEgNy43MTIyNyA2OS45NDgyIDcuMzM5NCA2OS45NTMxIDYuMzY0OTdDNjkuOTUzMSA1LjQ5OTkxIDcwLjc0MzYgNC44NTg1OCA3MS45OTY0IDQuODU4NThDNzMuMTY0OCA0Ljg1ODU4IDczLjk5NSA1LjQwNTQ1IDc0LjEwNDQgNi4zNDUwOFoiIGZpbGw9IiM4M0QwRTQiLz4KPHBhdGggZD0iTTc3LjQ0MTYgMTMuODUyMkg3OC45MjgxVjYuMjE1ODJINzcuNDQxNlYxMy44NTIyWk03OC4xOTIzIDUuMDM3NTVDNzguNzA0NCA1LjAzNzU1IDc5LjEzMTkgNC42Mzk4MyA3OS4xMzE5IDQuMTUyNjFDNzkuMTMxOSAzLjY2NTM5IDc4LjcwNDQgMy4yNjI3IDc4LjE5MjMgMy4yNjI3Qzc3LjY3NTIgMy4yNjI3IDc3LjI1MjcgMy42NjUzOSA3Ny4yNTI3IDQuMTUyNjFDNzcuMjUyNyA0LjYzOTgzIDc3LjY3NTIgNS4wMzc1NSA3OC4xOTIzIDUuMDM3NTVaIiBmaWxsPSIjODNEMEU0Ii8+CjxwYXRoIGQ9Ik04NC4xMjk2IDE2Ljg2Qzg2LjA3MzUgMTYuODYgODcuNTc0OSAxNS45NzAxIDg3LjU3NDkgMTQuMDIxMlY2LjIxNTgySDg2LjExODNWNy40NTM3NUg4Ni4wMDg5Qzg1Ljc0NTQgNi45ODE0NSA4NS4yMTg0IDYuMTE2MzkgODMuNzk2NSA2LjExNjM5QzgxLjk1MjEgNi4xMTYzOSA4MC41OTQ4IDcuNTczMDYgODAuNTk0OCAxMC4wMDQyQzgwLjU5NDggMTIuNDQwMyA4MS45ODE5IDEzLjczNzggODMuNzg2NiAxMy43Mzc4Qzg1LjE4ODYgMTMuNzM3OCA4NS43MzA1IDEyLjk0NzQgODUuOTk4OSAxMi40NjAxSDg2LjA5MzRWMTMuOTYxNkM4Ni4wOTM0IDE1LjEzOTggODUuMjczMSAxNS42NjE4IDg0LjE0NDUgMTUuNjYxOEM4Mi45MDY2IDE1LjY2MTggODIuNDI0NCAxNS4wNDA0IDgyLjE2MDkgMTQuNjE3OEw4MC44ODMyIDE1LjE0NDhDODEuMjg1OSAxNi4wNjQ1IDgyLjMwNSAxNi44NiA4NC4xMjk2IDE2Ljg2Wk04NC4xMTQ3IDEyLjUwNDlDODIuNzg3MyAxMi41MDQ5IDgyLjA5NjIgMTEuNDg1NyA4Mi4wOTYyIDkuOTg0MjlDODIuMDk2MiA4LjUxNzY3IDgyLjc3MjQgNy4zNzkxNyA4NC4xMTQ3IDcuMzc5MTdDODUuNDEyMyA3LjM3OTE3IDg2LjEwODMgOC40MzgxMiA4Ni4xMDgzIDkuOTg0MjlDODYuMTA4MyAxMS41NjAzIDg1LjM5NzQgMTIuNTA0OSA4NC4xMTQ3IDEyLjUwNDlaIiBmaWxsPSIjODNEMEU0Ii8+CjxwYXRoIGQ9Ik05MS4wNTUgOS4zMTgwOUM5MS4wNTUgOC4xMDAwNSA5MS44MDA4IDcuNDA0MDMgOTIuODM0OSA3LjQwNDAzQzkzLjg0NDEgNy40MDQwMyA5NC40NTU2IDguMDY1MjUgOTQuNDU1NiA5LjE3MzkyVjEzLjg1MjJIOTUuOTQyMVY4Ljk5NDk0Qzk1Ljk0MjEgNy4xMDU3NCA5NC45MDMxIDYuMTE2MzkgOTMuMzQyIDYuMTE2MzlDOTIuMTkzNSA2LjExNjM5IDkxLjQ0MjggNi42NDgzNSA5MS4wODk4IDcuNDU4NzJIOTAuOTk1NFY2LjIxNTgySDg5LjU2ODVWMTMuODUyMkg5MS4wNTVWOS4zMTgwOVoiIGZpbGw9IiM4M0QwRTQiLz4KPHBhdGggZD0iTTEwMS43NiAxMy44NTIySDEwMy4yOTZWOS40MTI1NUgxMDguMzcyVjEzLjg1MjJIMTA5LjkxNFYzLjY3MDM3SDEwOC4zNzJWOC4wOTUwOEgxMDMuMjk2VjMuNjcwMzdIMTAxLjc2VjEzLjg1MjJaIiBmaWxsPSIjODNEMEU0Ii8+CjxwYXRoIGQ9Ik0xMTUuMzIzIDE0LjAwNjNDMTE2Ljk4OCAxNC4wMDYzIDExOC4xNjYgMTMuMTg2IDExOC41MDQgMTEuOTQzMUwxMTcuMDk3IDExLjY4OTVDMTE2LjgyOSAxMi40MTA0IDExNi4xODMgMTIuNzc4MyAxMTUuMzM4IDEyLjc3ODNDMTE0LjA2NSAxMi43NzgzIDExMy4yMSAxMS45NTMgMTEzLjE3IDEwLjQ4MTRIMTE4LjU5OVY5Ljk1NDQ2QzExOC41OTkgNy4xOTUyMiAxMTYuOTQ4IDYuMTE2MzkgMTE1LjIxOCA2LjExNjM5QzExMy4wOSA2LjExNjM5IDExMS42ODggNy43MzcxMyAxMTEuNjg4IDEwLjA4MzdDMTExLjY4OCAxMi40NTUyIDExMy4wNyAxNC4wMDYzIDExNS4zMjMgMTQuMDA2M1pNMTEzLjE3NSA5LjM2NzgxQzExMy4yMzUgOC4yODQgMTE0LjAyIDcuMzQ0MzcgMTE1LjIyOCA3LjM0NDM3QzExNi4zODIgNy4zNDQzNyAxMTcuMTM3IDguMTk5NDkgMTE3LjE0MiA5LjM2NzgxSDExMy4xNzVaIiBmaWxsPSIjODNEMEU0Ii8+CjxwYXRoIGQ9Ik0xMjAuMjQ4IDEzLjg1MjJIMTIxLjczNVY5LjE4ODgzQzEyMS43MzUgOC4xODk1NCAxMjIuNTA1IDcuNDY4NjYgMTIzLjU1OSA3LjQ2ODY2QzEyMy44NjggNy40Njg2NiAxMjQuMjE2IDcuNTIzMzUgMTI0LjMzNSA3LjU1ODE1VjYuMTM2MjdDMTI0LjE4NiA2LjExNjM5IDEyMy44OTIgNi4xMDE0NyAxMjMuNzAzIDYuMTAxNDdDMTIyLjgwOSA2LjEwMTQ3IDEyMi4wNDMgNi42MDg1OCAxMjEuNzY1IDcuNDI4ODlIMTIxLjY4NVY2LjIxNTgySDEyMC4yNDhWMTMuODUyMloiIGZpbGw9IiM4M0QwRTQiLz4KPHBhdGggZD0iTTEyOC42MzkgMTQuMDA2M0MxMzAuMzA1IDE0LjAwNjMgMTMxLjQ4MyAxMy4xODYgMTMxLjgyMSAxMS45NDMxTDEzMC40MTQgMTEuNjg5NUMxMzAuMTQ1IDEyLjQxMDQgMTI5LjQ5OSAxMi43NzgzIDEyOC42NTQgMTIuNzc4M0MxMjcuMzgxIDEyLjc3ODMgMTI2LjUyNiAxMS45NTMgMTI2LjQ4NiAxMC40ODE0SDEzMS45MTVWOS45NTQ0NkMxMzEuOTE1IDcuMTk1MjIgMTMwLjI2NSA2LjExNjM5IDEyOC41MzUgNi4xMTYzOUMxMjYuNDA3IDYuMTE2MzkgMTI1LjAwNSA3LjczNzEzIDEyNS4wMDUgMTAuMDgzN0MxMjUuMDA1IDEyLjQ1NTIgMTI2LjM4NyAxNC4wMDYzIDEyOC42MzkgMTQuMDA2M1pNMTI2LjQ5MSA5LjM2NzgxQzEyNi41NTEgOC4yODQgMTI3LjMzNiA3LjM0NDM3IDEyOC41NDUgNy4zNDQzN0MxMjkuNjk4IDcuMzQ0MzcgMTMwLjQ1NCA4LjE5OTQ5IDEzMC40NTkgOS4zNjc4MUgxMjYuNDkxWiIgZmlsbD0iIzgzRDBFNCIvPgo8cGF0aCBkPSJNMSAzNi4wMjI5QzEyLjI0NjEgMzkuMjIwNSAyMy4xODIgMzUuMDMyOCAzMi41MDg0IDI4Ljg1MTFDMzcuNDQwNCAyNS41ODIyIDQyLjMzNDEgMjEuNjY4NyA0NS4zMzI5IDE2LjUxMDFDNDYuNTI4MyAxNC40NTM5IDQ3Ljk4OTMgMTAuODg0NCA0NC4yMjcxIDEwLjg1MjhDNDAuMTMzNyAxMC44MTgzIDM3LjA4NjQgMTQuNTE0MiAzNS41NTg4IDE3Ljg3NDRDMzMuMzY4MSAyMi42OTMzIDMzLjI5MSAyOC40MDA0IDM1Ljk2NTYgMzMuMDQ0MUMzOC40OTcxIDM3LjQzOTYgNDIuNzQ0NSAzOS41MTg0IDQ3LjgxMTQgMzguNjYzOUM1My4xMDM3IDM3Ljc3MTMgNTcuNzMwNCAzNC4xNTYyIDYxLjU3NjUgMzAuNjc4NUM2Mi45OTMgMjkuMzk3NiA2NC4zMjA5IDI4LjA0NzUgNjUuNTQyIDI2LjU4NTdDNjUuNjg0MiAyNi40MTU1IDY2LjE4NDIgMjUuNTc5OCA2Ni41MDggMjUuNTIxOEM2Ni42Mjg0IDI1LjUwMDIgNjYuODA2NCAyOS4xNjQ1IDY2LjgzODUgMjkuMzY0M0M2Ny4xMjU1IDMxLjE1NDMgNjguMDI5NCAzMy4xNzA2IDcwLjE0MzEgMzMuMjMxOEM3Mi44MzMyIDMzLjMwOTcgNzUuMDgyNiAzMS4wNTkxIDc2Ljg5MjIgMjkuNDAxOEM3Ny41MDI2IDI4Ljg0MjggNzkuNDQyNSAyNi4xNjAxIDgwLjQ3NjQgMjYuMTYwMUM4MC45MDE0IDI2LjE2MDEgODEuNzI0OSAyOC4zMDM4IDgxLjkxMjcgMjguNTg4M0M4NC4zOTcyIDMyLjM1MjMgODguMDQ0NiAzMC45ODk0IDkwLjg3MzMgMjguMzUwNUM5MS4zOTM0IDI3Ljg2NTMgOTQuMTc4MSAyMy45ODM5IDk1LjMwOTEgMjQuNjgzMkM5Ni4yMjAzIDI1LjI0NjYgOTYuNjIxNyAyNi41NzY1IDk3LjA4ODYgMjcuNDYxOEM5Ny44NDg0IDI4LjkwMjkgOTguODEwNyAyOS45Mjk0IDEwMC40MTkgMzAuNDY1N0MxMDMuOTEyIDMxLjYzMSAxMDcuNjggMjguMzYzIDExMS4yMjIgMjguMzYzQzExMi4yNTUgMjguMzYzIDExMi43ODMgMjguOTMxNiAxMTMuMzMyIDI5LjcxNDhDMTE0LjA4MSAzMC43ODIzIDExNC44NTMgMzEuNTI3NiAxMTYuMjA1IDMxLjgxNzVDMTIwLjM5MyAzMi43MTU1IDEyMy44MjIgMjguNzM5OSAxMjcuODcyIDI5LjA4ODlDMTI5LjA1MyAyOS4xOTA3IDEyOS45MzUgMzAuMzgxNiAxMzAuODIxIDMxLjAxNjRDMTMyLjYwOSAzMi4yOTY5IDEzNC43NTkgMzMuMTgzNiAxMzYuOTQ4IDMzLjQ5NDdDMTQwLjQ1NyAzMy45OTM0IDE0My45NzUgMzMuMzMyNiAxNDcuMzk1IDMyLjU5MzVDMTUzLjMgMzEuMzE3NCAxNTkuMTQ3IDI5Ljc5NTggMTY1LjA2MiAyOC41NjMzIiBzdHJva2U9IiM4M0QwRTQiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE5Ni41MTUgMTUuMDc3OEwxODQuNDkyIDAuNTUxNzk1QzE4NC4yNTcgMC4yNjc4MSAxODMuODM4IDAuMjI4MjYgMTgzLjU1NCAwLjQ2MzMwN0wxODAuNjQ5IDIuODY3ODhDMTgwLjM2NSAzLjEwMjkzIDE4MC4zMjUgMy41MjI0IDE4MC41NiAzLjgwNjM4TDE5Mi41ODMgMTguMzMyNEMxOTIuNyAxOC40NzQxIDE5Mi44NjQgMTguNTU1MSAxOTMuMDM0IDE4LjU3MTJDMTkzLjIwNCAxOC41ODcyIDE5My4zOCAxOC41MzgyIDE5My41MjIgMTguNDIwOUwxOTYuNDI3IDE2LjAxNjRDMTk2LjcxMSAxNS43ODEzIDE5Ni43NSAxNS4zNjE4IDE5Ni41MTUgMTUuMDc3OFoiIGZpbGw9IiM4M0QwRTQiLz4KPHBhdGggZD0iTTE4MS40MzYgNi45NTcyTDE3MC44NTUgOS44MjU5M0MxNzAuNjIyIDkuODg5MDEgMTcwLjQ0MSAxMC4wNzI5IDE3MC4zODMgMTAuMzA3MUwxNjYuMTU1IDI3LjEwMTdMMTczLjk3NSAyMC42MjkxQzE3My4yNDUgMTkuMjYxMiAxNzMuNTUgMTcuNTE4OSAxNzQuNzkgMTYuNDkyMUMxNzYuMjA2IDE1LjMxOTggMTc4LjMxMiAxNS41MTkxIDE3OS40ODMgMTYuOTM0NkMxODAuNjU1IDE4LjM1MDggMTgwLjQ1NiAyMC40NTYxIDE3OS4wNDEgMjEuNjI3OEMxNzguMzMzIDIyLjIxMzkgMTc3LjQ1MiAyMi40NTc3IDE3Ni42MDMgMjIuMzc3NkMxNzUuOTY0IDIyLjMxNzQgMTc1LjM0MyAyMi4wNzQgMTc0LjgyNSAyMS42NTY4TDE2Ny4wMDUgMjguMTI4NkwxODQuMjk0IDI3LjExMzdDMTg0LjUzNCAyNy4wOTk2IDE4NC43NDkgMjYuOTU3MSAxODQuODU0IDI2Ljc0MDFMMTg5LjY1IDE2Ljg4MTRMMTgxLjQzNiA2Ljk1NzJaIiBmaWxsPSIjODNEMEU0Ii8+Cjwvc3ZnPgo=);
  }
  .form-spinner-button.form-spinner-up:before {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjUgMTIuNDAwNEw3LjUgNy40MDAzOUwxMi41IDcuNDAwMzlDMTIuNzc2IDcuNDAwMzkgMTMgNy4xNzYzOSAxMyA2LjkwMDM5QzEzIDYuNjI0MzkgMTIuNzc2IDYuNDAwMzkgMTIuNSA2LjQwMDM5TDcuNSA2LjQwMDM5TDcuNSAxLjQwMDM5QzcuNSAxLjEyNDM5IDcuMjc2IDAuOTAwMzkgNyAwLjkwMDM5QzYuNzI0IDAuOTAwMzkgNi41IDEuMTI0MzkgNi41IDEuNDAwMzlMNi41IDYuNDAwMzlMMS41IDYuNDAwMzlDMS4yMjQgNi40MDAzOSAxIDYuNjI0MzkgMSA2LjkwMDM5QzEgNy4xNzYzOSAxLjIyNCA3LjQwMDM5IDEuNSA3LjQwMDM5TDYuNSA3LjQwMDM5TDYuNSAxMi40MDA0QzYuNSAxMi42NzY0IDYuNzI0IDEyLjkwMDQgNyAxMi45MDA0QzcuMjc2IDEyLjkwMDQgNy41IDEyLjY3NjQgNy41IDEyLjQwMDRaIiBmaWxsPSIjMDA3MDhEIiBzdHJva2U9IiMwMDcwOEQiIHN0cm9rZS13aWR0aD0iMC41Ii8+Cjwvc3ZnPgo=);
  }
  .form-spinner-button.form-spinner-down:before {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMiIgdmlld0JveD0iMCAwIDE0IDIiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxwYXRoIGQ9Ik0xMi41IDEuNDAwMzlMNy41IDEuNDAwMzlMMS41IDEuNDAwMzlDMS4yMjQgMS40MDAzOSAxIDEuMTc2MzkgMSAwLjkwMDM5QzEgMC42MjQzOSAxLjIyNCAwLjQwMDM5IDEuNSAwLjQwMDM5TDYuNSAwLjQwMDM5TDEyLjUgMC40MDAzOTFDMTIuNzc2IDAuNDAwMzkxIDEzIDAuNjI0MzkxIDEzIDAuOTAwMzkxQzEzIDEuMTc2MzkgMTIuNzc2IDEuNDAwMzkgMTIuNSAxLjQwMDM5WiIgZmlsbD0iIzAwNzA4RCIgc3Ryb2tlPSIjMDA3MDhEIiBzdHJva2Utd2lkdGg9IjAuNSIvPgo8L3N2Zz4K);
  }
  .form-collapse-table:after{
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHZpZXdCb3g9IjAgMCAyOCAyOCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yOCAxNEMyOCA2LjI2ODAxIDIxLjczMiAtOS40OTkzNWUtMDcgMTQgLTYuMTE5NTllLTA3QzYuMjY4MDEgLTIuNzM5ODRlLTA3IC05LjQ5OTM1ZS0wNyA2LjI2ODAxIC02LjExOTU5ZS0wNyAxNEMtMi43Mzk4NGUtMDcgMjEuNzMyIDYuMjY4MDEgMjggMTQgMjhDMjEuNzMyIDI4IDI4IDIxLjczMiAyOCAxNFpNOC4wMDI0IDExLjcwMDNDNy45OTI0NCAxMS41ODEzIDguMDEzNjMgMTEuNDYxNyA4LjA2MzU5IDExLjM1NDlDOC4xMTM0NyAxMS4yNDgyIDguMTkwMDUgMTEuMTU4NSA4LjI4NDc5IDExLjA5NTlDOC4zNzk1MiAxMS4wMzMyIDguNDg4NjUgMTEgOC41OTk5OSAxMUwxOS40IDExQzE5LjUxMTMgMTEgMTkuNjIwNSAxMS4wMzMyIDE5LjcxNTIgMTEuMDk1OUMxOS44MDk5IDExLjE1ODUgMTkuODg2NSAxMS4yNDgyIDE5LjkzNjQgMTEuMzU0OUMxOS45Nzc5IDExLjQ0NDQgMTkuOTk5NiAxMS41NDI5IDIwIDExLjY0MjlDMjAgMTEuNzgyIDE5Ljk1NzkgMTEuOTE3MyAxOS44OCAxMi4wMjg2TDE0LjQ4IDE5Ljc0MjlDMTQuNDI0MSAxOS44MjI3IDE0LjM1MTYgMTkuODg3NSAxNC4yNjgzIDE5LjkzMjFDMTQuMTg1IDE5Ljk3NjggMTQuMDkzMSAyMCAxNCAyMEMxMy45MDY4IDIwIDEzLjgxNSAxOS45NzY4IDEzLjczMTcgMTkuOTMyMUMxMy42NDg0IDE5Ljg4NzUgMTMuNTc1OSAxOS44MjI3IDEzLjUyIDE5Ljc0MjlMOC4xMTk5OSAxMi4wMjg2QzguMDUzMDggMTEuOTMzIDguMDEyMzYgMTEuODE5MyA4LjAwMjQgMTEuNzAwM1oiIGZpbGw9IiMwMDcwOEQiLz4KPC9zdmc+Cg==);
  }
  li[data-type=control_fileupload] .qq-upload-button:before {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzkiIGhlaWdodD0iMjgiIHZpZXdCb3g9IjAgMCAzOSAyOCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMyLjM3NSAxMi4xODc1QzMxLjUgNS42ODc1IDI2IDAuODc1IDE5LjM3NSAwLjg3NUMxMy42ODc1IDAuODc1IDguNzUgNC40Mzc1IDYuOTM3NSA5LjgxMjVDMi44NzUgMTAuNjg3NSAwIDE0LjE4NzUgMCAxOC4zNzVDMCAyMi45Mzc1IDMuNTYyNSAyNi43NSA4LjEyNSAyNy4xMjVIMzEuODc1SDMxLjkzNzVDMzUuNzUgMjYuNzUgMzguNzUgMjMuNSAzOC43NSAxOS42MjVDMzguNzUgMTUuOTM3NSAzNiAxMi43NSAzMi4zNzUgMTIuMTg3NVpNMjYuMDYyNSAxNS42ODc1QzI1LjkzNzUgMTUuODEyNSAyNS44MTI1IDE1Ljg3NSAyNS42MjUgMTUuODc1QzI1LjQzNzUgMTUuODc1IDI1LjMxMjUgMTUuODEyNSAyNS4xODc1IDE1LjY4NzVMMjAgMTAuNVYyMi43NUMyMCAyMy4xMjUgMTkuNzUgMjMuMzc1IDE5LjM3NSAyMy4zNzVDMTkgMjMuMzc1IDE4Ljc1IDIzLjEyNSAxOC43NSAyMi43NVYxMC41TDEzLjU2MjUgMTUuNjg3NUMxMy4zMTI1IDE1LjkzNzUgMTIuOTM3NSAxNS45Mzc1IDEyLjY4NzUgMTUuNjg3NUMxMi40Mzc1IDE1LjQzNzUgMTIuNDM3NSAxNS4wNjI1IDEyLjY4NzUgMTQuODEyNUwxOC45Mzc1IDguNTYyNUMxOSA4LjUgMTkuMDYyNSA4LjQzNzUgMTkuMTI1IDguNDM3NUMxOS4yNSA4LjM3NSAxOS40Mzc1IDguMzc1IDE5LjYyNSA4LjQzNzVDMTkuNjg3NSA4LjUgMTkuNzUgOC41IDE5LjgxMjUgOC41NjI1TDI2LjA2MjUgMTQuODEyNUMyNi4zMTI1IDE1LjA2MjUgMjYuMzEyNSAxNS40Mzc1IDI2LjA2MjUgMTUuNjg3NVoiIGZpbGw9IiM4M0QwRTQiLz4KPC9zdmc+Cg==);
  }
  .appointmentDayPickerButton {
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNiIgaGVpZ2h0PSIxMCIgdmlld0JveD0iMCAwIDYgMTAiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxwYXRoIGQ9Ik0xIDlMNSA1TDEgMSIgc3Ryb2tlPSIjMDA3MDhEIiBzdHJva2Utd2lkdGg9IjIiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K);
  }
  .FITB:not(.formRender) .qb-datebox input:not([data-labelid]), .FITB:not(.formRender) .qb-selectbox input:not([data-labelid]),
  .FITB:not(.formRender) .qb-signaturebox input:not([data-labelid]), .FITB:not(.formRender) .qb-textbox input:not([data-labelid]),
  .FITB:not(.formRender) .qb-timebox input:not([data-labelid]), span.FITB-inptCont[data-type=datebox] label,
  span.FITB-inptCont[data-type=signaturebox] label, span.FITB-inptCont[data-type=textbox] label, span.FITB-inptCont[data-type=timebox] label,
  span.FITB-inptCont[data-type=datebox] input:focus~label, span.FITB-inptCont[data-type=datebox] input:valid~label,
  span.FITB-inptCont[data-type=signaturebox] input:focus~label, span.FITB-inptCont[data-type=signaturebox] input:valid~label,
  span.FITB-inptCont[data-type=textbox] input:focus~label, span.FITB-inptCont[data-type=textbox] input:valid~label,
  span.FITB-inptCont[data-type=timebox] input:focus~label, span.FITB-inptCont[data-type=timebox] input:valid~label {
    color: #83D0E4;
  }

  /* NEW THEME STYLE */
  /*PREFERENCES STYLE*/
  /*PREFERENCES STYLE*/
    .form-all {
      font-family: Cuprum, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: Cuprum, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: Cuprum, sans-serif;
    }
    .form-header-group {
      font-family: Cuprum, sans-serif;
    }
    .form-label {
      font-family: Cuprum, sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: block;
    float: none;
    text-align: left;
    width: 100%;
  
    }
  
    .form-line {
      margin-top: 12px;
      margin-bottom: 12px;
    }
  
    .form-all {
      max-width: 754px;
      width: 100%;
    }
  
    .form-label.form-label-left,
    .form-label.form-label-right,
    .form-label.form-label-left.form-label-auto,
    .form-label.form-label-right.form-label-auto {
      width: 230px;
    }
  
    .form-all {
      font-size: 18px
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 18px
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 18px
    }
  
    .supernova {
      background-color: #83D0E4;
    }
    .supernova body {
      background: transparent;
    }
  
    .supernova .form-all, .form-all {
      background-color: #F0FCFF;
    }
  
    .form-all {
      color: #264B67;
    }
    .form-header-group .form-header {
      color: #264B67;
    }
    .form-header-group .form-subHeader {
      color: #264B67;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label,
    span.FITB .qb-checkbox-label,
    span.FITB .qb-radiobox-label,
    span.FITB .form-radio label,
    span.FITB .form-checkbox label,
    [data-blotid][data-type=checkbox] [data-labelid],
    [data-blotid][data-type=radiobox] [data-labelid],
    span.FITB-inptCont[data-type=checkbox] label,
    span.FITB-inptCont[data-type=radiobox] label {
      color: #264B67;
    }
    .form-sub-label {
      color: #406581;
    }
  
    .form-textbox,
    .form-textarea,
    .form-dropdown,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: #FFFFFF;
    }
  
    .form-line-error {
      overflow: hidden;
      transition: none;
      background-color: #FFEDED;
    }

    .form-line-error .form-error-message {
      background-color: #FF3200;
      clear: both;
      float: none;
    }

    .form-line-error .form-error-arrow {
      border-bottom-color: #FF3200;
    }

    .form-line-error input:not(#coupon-input),
    .form-line-error textarea,
    .form-line-error .form-validation-error {
      border: 1px solid #FF3200;
      .box-shadow(0 0 3px #FF3200);
    }
   
    .supernova {
      background-image: none;
    }
    #stage {
      background-image: none;
    }
  
    .form-all {
      background-image: none;
    }
  
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/


.form-label.form-label-auto {
        
      display: block;
      float: none;
      text-align: left;
      width: 100%;
    
      }
    /* Injected CSS Code */
</style>

<form class="jotform-form" action="https://submit.jotform.com/submit/222919171911456/" method="post" name="form_222919171911456" id="222919171911456" accept-charset="utf-8" onsubmit="validateemail()" autocomplete="on">
  <input type="hidden" name="formID" value="222919171911456" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />=
  <div role="main" class="form-all">
    <style>
      .form-all:before { background: none;}
    </style>
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
            <h1 id="header_1" class="form-header" data-component="header">
              Event Planning Questionnaire
            </h1>
            <div id="subHeader_1" class="form-subHeader">
              We are very honored to help you while planning your event. Please complete and submit the general questionnaire.
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_fullname" id="id_3">
        <label class="form-label form-label-top form-label-auto" id="label_3" for="first_3"> Full name of the event owner </label>
        <div id="cid_3" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
              <input type="text" id="first_3" name="q3_fullName3[first]" class="form-textbox" data-defaultvalue="" autoComplete="section-input_3 given-name" size="10" value="" data-component="first" aria-labelledby="label_3 sublabel_3_first" />
              <label class="form-sub-label" for="first_3" id="sublabel_3_first" style="min-height:13px" aria-hidden="false"> First Name </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="last">
              <input type="text" id="last_3" name="q3_fullName3[last]" class="form-textbox" data-defaultvalue="" autoComplete="section-input_3 family-name" size="15" value="" data-component="last" aria-labelledby="label_3 sublabel_3_last" />
              <label class="form-sub-label" for="last_3" id="sublabel_3_last" style="min-height:13px" aria-hidden="false"> Last Name </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line fixed-width form-line-column form-col-1" data-type="control_email" id="id_4">
        <label input type="email" class="form-label form-label-top" id="label_4" for="input_4" required> Email address of the event owner </label>
        <div id="cid_4" class="form-input-wide" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="email" id="input_4" name="q4_emailAddress" class="form-textbox validate[Email]" data-defaultvalue="" style="width:310px" size="310" value="" data-component="email" aria-labelledby="label_4 sublabel_input_4" />
            <label class="form-sub-label" for="input_4" id="sublabel_input_4" style="min-height:13px" aria-hidden="false"> example@example.com </label>
          </span>
        </div>
      </li>
      <li class="form-line form-line-column form-col-2" data-type="control_phone" id="id_6">
        <label  type="tel" class="form-label form-label-top" id="label_6" for="input_6_full"  required> Phone number of the event owner </label>
        <div id="cid_6" class="form-input-wide" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="tel" id="input_6_full" name="q6_phoneNumber[full]" data-type="mask-number" class="mask-phone-number form-textbox validate[Fill Mask]" data-defaultvalue="" autoComplete="section-input_6 tel-national" style="width:310px" data-masked="true" value="" placeholder="(000) 000-0000" data-component="phone" aria-labelledby="label_6 sublabel_6_masked" />
            <label class="form-sub-label" for="input_6_full" id="sublabel_6_masked" style="min-height:13px" aria-hidden="false"> Please enter a valid phone number. </label>
          </span>
        </div>
      </li>
      <li class="form-line" data-type="control_address" id="id_19">
        <label class="form-label form-label-top form-label-auto" id="label_19" for="input_19_addr_line1"> Address of the event owner </label>
        <div id="cid_19" class="form-input-wide" data-layout="full">
          <div summary="" class="form-address-table jsTest-addressField">
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-street-line jsTest-address-lineField">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_19_addr_line1" name="q19_addressOf[addr_line1]" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_19 address-line1" value="" data-component="address_line_1" aria-labelledby="label_19 sublabel_19_addr_line1" required="" />
                  <label class="form-sub-label" for="input_19_addr_line1" id="sublabel_19_addr_line1" style="min-height:13px" aria-hidden="false"> Street Address </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-street-line jsTest-address-lineField">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_19_addr_line2" name="q19_addressOf[addr_line2]" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_19 address-line2" value="" data-component="address_line_2" aria-labelledby="label_19 sublabel_19_addr_line2" />
                  <label class="form-sub-label" for="input_19_addr_line2" id="sublabel_19_addr_line2" style="min-height:13px" aria-hidden="false"> Street Address Line 2 </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-city-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_19_city" name="q19_addressOf[city]" class="form-textbox form-address-city" data-defaultvalue="" autoComplete="section-input_19 address-level2" value="" data-component="city" aria-labelledby="label_19 sublabel_19_city" required="" />
                  <label class="form-sub-label" for="input_19_city" id="sublabel_19_city" style="min-height:13px" aria-hidden="false"> City </label>
                </span>
              </span>
              <span class="form-address-line form-address-state-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_19_state" name="q19_addressOf[state]" class="form-textbox form-address-state" data-defaultvalue="" autoComplete="section-input_19 address-level1" value="" data-component="state" aria-labelledby="label_19 sublabel_19_state" required="" />
                  <label class="form-sub-label" for="input_19_state" id="sublabel_19_state" style="min-height:13px" aria-hidden="false"> State / Province </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-zip-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_19_postal" name="q19_addressOf[postal]" class="form-textbox form-address-postal" data-defaultvalue="" autoComplete="section-input_19 postal-code" value="" data-component="zip" aria-labelledby="label_19 sublabel_19_postal" required="" />
                  <label class="form-sub-label" for="input_19_postal" id="sublabel_19_postal" style="min-height:13px" aria-hidden="false"> Postal / Zip Code </label>
                </span>
              </span>
              
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_checkbox" id="id_7">
        <label class="form-label form-label-top form-label-auto" id="label_7" for="input_7"> What type of event are you planning? </label>
        <div id="cid_7" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="3" role="group" aria-labelledby="label_7" data-component="checkbox">
            
            <span class="form-checkbox-item">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_7" class="form-checkbox" id="input_7_1" name="q7_whatType[]" value="Wedding" />
              <label id="label_input_7_1" for="input_7_1"> Wedding </label>
            </span>
            
            <span class="form-checkbox-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_7" class="form-checkbox" id="input_7_3" name="q7_whatType[]" value="Birthday Party" />
              <label id="label_input_7_3" for="input_7_3"> Birthday Party </label>
            </span>
            
            <span class="form-checkbox-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_7" class="form-checkbox" id="input_7_3" name="q7_whatType[]" value="Birthday Party" />
              <label id="label_input_7_3" for="input_7_3"> Conferences </label>
            </span>
            
            <span class="form-checkbox-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_7" class="form-checkbox" id="input_7_9" name="q7_whatType[]" value="Sponsorships" />
              <label id="label_input_7_9" for="input_7_9"> Product Launching </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_checkbox" id="id_8">
        <label class="form-label form-label-top form-label-auto" id="label_8" for="input_8"> What are the main goals of the event? </label>
        <div id="cid_8" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="2" role="group" aria-labelledby="label_8" data-component="checkbox">
            <span class="form-checkbox-item">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_8" class="form-checkbox" id="input_8_0" name="q8_whatAre8[]" value="New Customer Acquisition" />
              <label id="label_input_8_0" for="input_8_0"> New Customer Acquisition </label>
            </span>
            <span class="form-checkbox-item">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_8" class="form-checkbox" id="input_8_1" name="q8_whatAre8[]" value="Team or Business Building" />
              <label id="label_input_8_1" for="input_8_1"> Team or Business Building </label>
            </span>
            <span class="form-checkbox-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_8" class="form-checkbox" id="input_8_2" name="q8_whatAre8[]" value="Education" />
              <label id="label_input_8_2" for="input_8_2"> Education </label>
            </span>
            <span class="form-checkbox-item">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_8" class="form-checkbox" id="input_8_3" name="q8_whatAre8[]" value="Family and Friends" />
              <label id="label_input_8_3" for="input_8_3"> Family and Friends </label>
            </span>
            <span class="form-checkbox-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_8" class="form-checkbox" id="input_8_4" name="q8_whatAre8[]" value="Entertainment" />
              <label id="label_input_8_4" for="input_8_4"> Entertainment </label>
            </span>
            <span class="form-checkbox-item">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_8" class="form-checkbox" id="input_8_5" name="q8_whatAre8[]" value="Launch Party" />
              <label id="label_input_8_5" for="input_8_5"> Launch Party </label>
            </span>
            <span class="form-checkbox-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_8" class="form-checkbox" id="input_8_6" name="q8_whatAre8[]" value="VIP" />
              <label id="label_input_8_6" for="input_8_6"> VIP </label>
            </span>
            <span class="form-checkbox-item">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_8" class="form-checkbox" id="input_8_7" name="q8_whatAre8[]" value="Existing Customer Relations" />
              <label id="label_input_8_7" for="input_8_7"> Existing Customer Relations </label>
            </span>
            <span class="form-checkbox-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="checkbox" aria-describedby="label_8" class="form-checkbox" id="input_8_8" name="q8_whatAre8[]" value="Non-profit Event" />
              <label id="label_input_8_8" for="input_8_8"> Non-profit Event </label>
            </span>
            <span class="form-checkbox-item formCheckboxOther">
              <input type="checkbox" class="form-checkbox-other form-checkbox" name="q8_whatAre8[other]" id="other_8" value="other" tabindex="0" aria-label="Other" />
              <label id="label_other_8" style="text-indent:0" for="other_8"> Other </label>
              <span id="other_8_input" class="other-input-container" style="display:none">
                <input type="text" class="form-checkbox-other-input form-textbox" name="q8_whatAre8[other]" data-otherhint="Other" size="15" id="input_8" data-placeholder="Please type another option here" placeholder="Please type another option here" />
              </span>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line form-line-column form-col-1" data-type="control_textbox" id="id_9">
        <label class="form-label form-label-top" id="label_9" for="input_9"> What is the name of the event? </label>
        <div id="cid_9" class="form-input-wide" data-layout="half">
          <input type="text" id="input_9" name="q9_whatIs9" data-type="input-textbox" class="form-textbox" data-defaultvalue="" style="width:310px" size="310" value="" data-component="textbox" aria-labelledby="label_9" />
        </div>
      </li>
      <li class="form-line form-line-column form-col-2" data-type="control_textbox" id="id_12">
        <label class="form-label form-label-top" id="label_12" for="input_12"> What is the approximate budget for the event? </label>
        <div id="cid_12" class="form-input-wide" data-layout="half">
          <input type="text" id="input_12" name="q12_whatIs" data-type="input-textbox" class="form-textbox" data-defaultvalue="" style="width:310px" size="310" value="" data-component="textbox" aria-labelledby="label_12" />
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_10">
        <label class="form-label form-label-top form-label-auto" id="label_10" for="input_10"> Who pays for the event? </label>
        <div id="cid_10" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="2" role="group" aria-labelledby="label_10" data-component="radio">
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_10" class="form-radio" id="input_10_0" name="q10_whoPays" value="Sponsor" />
              <label id="label_input_10_0" for="input_10_0"> Sponsor </label>
            </span>
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_10" class="form-radio" id="input_10_1" name="q10_whoPays" value="Attendants" />
              <label id="label_input_10_1" for="input_10_1"> Attendants </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_10" class="form-radio" id="input_10_2" name="q10_whoPays" value="Company" />
              <label id="label_input_10_2" for="input_10_2"> Company </label>
            </span>
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_10" class="form-radio" id="input_10_3" name="q10_whoPays" value="Organization" />
              <label id="label_input_10_3" for="input_10_3"> Organization </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_10" class="form-radio" id="input_10_4" name="q10_whoPays" value="Owner/Person" />
              <label id="label_input_10_4" for="input_10_4"> Owner/Person </label>
            </span>
            <span class="form-radio-item formRadioOther">
              <input type="radio" class="form-radio-other form-radio" name="q10_whoPays" id="other_10" value="other" tabindex="0" aria-label="Other" />
              <label id="label_other_10" style="text-indent:0" for="other_10"> Other </label>
              <span id="other_10_input" class="other-input-container" style="display:none">
                <input type="text" class="form-radio-other-input form-textbox" name="q10_whoPays[other]" data-otherhint="Other" size="15" id="input_10" data-placeholder="Please type another option here" placeholder="Please type another option here" />
              </span>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_textarea" id="id_20">
        <label class="form-label form-label-top form-label-auto" id="label_20" for="input_20"> What are the most important things that the event must have? </label>
        <div id="cid_20" class="form-input-wide" data-layout="full">
          <textarea id="input_20" class="form-textarea" name="q20_whatAre20" style="width:648px;height:163px" data-component="textarea" aria-labelledby="label_20"></textarea>
        </div>
      </li>
      <li class="form-line form-line-column form-col-1" data-type="control_number" id="id_16">
        <label class="form-label form-label-top" id="label_16" for="input_16"> How many people will attend the event? </label>
        <div id="cid_16" class="form-input-wide" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="number" id="input_16" name="q16_howMany" data-type="input-number" class=" form-number-input form-textbox" data-defaultvalue="" style="width:310px" size="310" value="" placeholder="ex: 23" data-component="number" aria-labelledby="label_16 sublabel_input_16" step="any" />
            <label class="form-sub-label" for="input_16" id="sublabel_input_16" style="min-height:13px" aria-hidden="false"> Number </label>
          </span>
        </div>
      </li>
      <li class="form-line form-line-column form-col-2" data-type="control_textbox" id="id_22">
        <label class="form-label form-label-top" id="label_22" for="input_22"> How long would you like the event to run? </label>
        <div id="cid_22" class="form-input-wide" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="input_22" name="q22_howLong" data-type="input-textbox" class="form-textbox" data-defaultvalue="" style="width:310px" size="310" value="" data-component="textbox" aria-labelledby="label_22 sublabel_input_22" />
            <label class="form-sub-label" for="input_22" id="sublabel_input_22" style="min-height:13px" aria-hidden="false"> Hours </label>
          </span>
        </div>
      </li>
      <li class="form-line form-line-column form-col-3" data-type="control_dropdown" id="id_23">
        <label class="form-label form-label-top" id="label_23" for="input_23"> How often will the event occur? </label>
        <div id="cid_23" class="form-input-wide" data-layout="half">
          <select class="form-dropdown" id="input_23" name="q23_howOften" style="width:310px" data-component="dropdown">
            <option value=""> Please Select </option>
            <option value="Weekly"> Weekly </option>
            <option value="Monthly"> Monthly </option>
            <option value="Quarterly"> Quarterly </option>
            <option value="Yearly"> Yearly </option>
            <option value="N/A"> N/A </option>
          </select>
        </div>
      </li>
      <li class="form-line form-line-column form-col-4" data-type="control_datetime" id="id_13">
        <label class="form-label form-label-top" id="label_13" for="lite_mode_13"> What is the date of the event? </label>
        <div id="cid_13" class="form-input-wide" data-layout="half">
          <div data-wrapper-react="true">
            <div style="display:none">
              <span class="form-sub-label-container" style="vertical-align:top">
                <input type="tel" class="form-textbox validate[limitDate]" id="month_13" name="q13_whatIs13[month]" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="section-input_13 off" aria-labelledby="label_13 sublabel_13_month" />
                <span class="date-separate" aria-hidden="true">
                   -
                </span>
                <label class="form-sub-label" for="month_13" id="sublabel_13_month" style="min-height:13px" aria-hidden="false"> Month </label>
              </span>
              <span class="form-sub-label-container" style="vertical-align:top">
                <input type="tel" class="form-textbox validate[limitDate]" id="day_13" name="q13_whatIs13[day]" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="section-input_13 off" aria-labelledby="label_13 sublabel_13_day" />
                <span class="date-separate" aria-hidden="true">
                   -
                </span>
                <label class="form-sub-label" for="day_13" id="sublabel_13_day" style="min-height:13px" aria-hidden="false"> Day </label>
              </span>
              <span class="form-sub-label-container" style="vertical-align:top">
                <input type="tel" class="form-textbox validate[limitDate]" id="year_13" name="q13_whatIs13[year]" size="4" data-maxlength="4" data-age="" maxLength="4" value="" autoComplete="section-input_13 off" aria-labelledby="label_13 sublabel_13_year" />
                <label class="form-sub-label" for="year_13" id="sublabel_13_year" style="min-height:13px" aria-hidden="false"> Year </label>
              </span>
            </div>
            <span class="form-sub-label-container" style="vertical-align:top">
              <input type="text" class="form-textbox validate[limitDate, validateLiteDate]" id="lite_mode_13" size="12" data-maxlength="12" maxLength="12" data-age="" value="" data-format="mmddyyyy" data-seperator="-" placeholder="MM-DD-YYYY" autoComplete="section-input_13 off" aria-labelledby="label_13 sublabel_13_litemode" />
              <img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_13_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="No" data-version="v2" />
              <label class="form-sub-label" for="lite_mode_13" id="sublabel_13_litemode" style="min-height:13px" aria-hidden="false"> Date </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_15">
        <label class="form-label form-label-top" id="label_15" for="input_15"> Is the date of the event flexible? </label>
        <div id="cid_15" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="2" role="group" aria-labelledby="label_15" data-component="radio">
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_15" class="form-radio" id="input_15_0" name="q15_isThe" value="Yes" />
              <label id="label_input_15_0" for="input_15_0"> Yes </label>
            </span>
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_15" class="form-radio" id="input_15_1" name="q15_isThe" value="No" />
              <label id="label_input_15_1" for="input_15_1"> No </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_inline" id="id_17">
        <div id="cid_17" class="form-input-wide" data-layout="full">
          <div id="FITB_17" class="FITB formRender">
            If yes, from   
            <span id="id_17-date-1" data-type="datebox" class="FITB-inptCont">
              <input type="text" class="form-textbox validate[validateLiteDate]" id="lite_mode_17-date-1" data-format="mmddyyyy" size="12" data-seperator="-" placeholder="mm-dd-yyyy" value required />
              <img class="newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" data-qtype="control_inline" id="input_17-date-1_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="No" data-version="v2" />
              <label for="lite_mode_17-date-1"> Date </label>
              <span style="display:none">
                <input type="tel" class="form-textbox" id="month_17-date-1" name="q17_input17[date-1][month]" size="2" data-maxlength="2" maxlength="2" value autocomplete="off" />
                <input type="tel" class="form-textbox" id="day_17-date-1" name="q17_input17[date-1][day]" size="2" data-maxlength="2" maxlength="2" value autocomplete="off" />
                <input type="tel" class="form-textbox" id="year_17-date-1" name="q17_input17[date-1][year]" size="4" data-maxlength="4" maxlength="4" value autocomplete="off" />
              </span>
            </span>
               to   
            <span id="id_17-date-2" data-type="datebox" class="FITB-inptCont">
              <input type="text" class="form-textbox validate[validateLiteDate]" id="lite_mode_17-date-2" data-format="mmddyyyy" size="12" data-seperator="-" placeholder="mm-dd-yyyy" value required />
              <img class="newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" data-qtype="control_inline" id="input_17-date-2_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="No" data-version="v2" />
              <label for="lite_mode_17-date-2"> Date </label>
              <span style="display:none">
                <input type="tel" class="form-textbox" id="month_17-date-2" name="q17_input17[date-2][month]" size="2" data-maxlength="2" maxlength="2" value autocomplete="off" />
                <input type="tel" class="form-textbox" id="day_17-date-2" name="q17_input17[date-2][day]" size="2" data-maxlength="2" maxlength="2" value autocomplete="off" />
                <input type="tel" class="form-textbox" id="year_17-date-2" name="q17_input17[date-2][year]" size="4" data-maxlength="4" maxlength="4" value autocomplete="off" />
              </span>
            </span>
            .  
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_21">
        <label class="form-label form-label-top" id="label_21" for="input_21"> Are you open to suggestions or ideas coming up? </label>
        <div id="cid_21" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="2" role="group" aria-labelledby="label_21" data-component="radio">
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_21" class="form-radio" id="input_21_0" name="q21_areYou21" value="Yes" />
              <label id="label_input_21_0" for="input_21_0"> Yes </label>
            </span>
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" aria-describedby="label_21" class="form-radio" id="input_21_1" name="q21_areYou21" value="No" />
              <label id="label_input_21_1" for="input_21_1"> No </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide" data-layout="full">
          <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
            <button id="input_2" type="submit" class="form-submit-button form-submit-button-flat_round_teal submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
              Continue!
            </button>
          </div>
        </div>
      </li>
     
 
</form>
 
      </form>
</body>
</html>