PhoneScript_Random2:
	random 2
	end

PhoneScript_Random3:
	random 3
	end

PhoneScript_Random4:
	random 4
	end

PhoneScript_Random5:
	random 5
	end

PhoneScript_Random11:
	random 11
	end

PhoneScript_AnswerPhone_Male:
	checktime DAY
	iftrue PhoneScript_AnswerPhone_Male_Day
	checktime NITE
	iftrue PhoneScript_AnswerPhone_Male_Nite
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackAnswerPhoneText
	promptbutton
	end

PhoneScript_AnswerPhone_Male_Day:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackAnswerPhoneDayText
	promptbutton
	end


PhoneScript_AnswerPhone_Male_Nite:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackAnswerPhoneNiteText
	promptbutton
	end

PhoneScript_AnswerPhone_Female:
	checktime DAY
	iftrue PhoneScript_AnswerPhone_Female_Day
	checktime NITE
	iftrue PhoneScript_AnswerPhone_Female_Nite
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyAnswerPhoneText
;	promptbutton
;	end

PhoneScript_AnswerPhone_Female_Day:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyAnswerPhoneDayText
;	promptbutton
;	end

PhoneScript_AnswerPhone_Female_Nite:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyAnswerPhoneNiteText
;	promptbutton
;	end

PhoneScript_GreetPhone_Male:
	checktime DAY
	iftrue PhoneScript_GreetPhone_Male_Day
	checktime NITE
	iftrue PhoneScript_GreetPhone_Male_Nite
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackGreetText
	promptbutton
	end

PhoneScript_GreetPhone_Male_Day:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackGreetDayText
	promptbutton
	end

PhoneScript_GreetPhone_Male_Nite:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackGreetNiteText
	promptbutton
	end

PhoneScript_GreetPhone_Female:
	checktime DAY
	iftrue PhoneScript_GreetPhone_Female_Day
	checktime NITE
	iftrue PhoneScript_GreetPhone_Female_Nite
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyGreetText
;	promptbutton
;	end

PhoneScript_GreetPhone_Female_Day:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyGreetDayText
;	promptbutton
;	end


PhoneScript_GreetPhone_Female_Nite:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyGreetNiteText
;	promptbutton
;	end

PhoneScript_Generic_Male:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackGenericText
	promptbutton
	end

PhoneScript_Generic_Female:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyGenericText
;	promptbutton
;	end

PhoneScript_MonFlavorText:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	ifequal $0, .TooEnergetic
	farwritetext UnknownGenericText
	promptbutton
	farsjump PhoneScript_HangUpText_Male

.TooEnergetic:
	farsjump .unnecessary

.unnecessary
	farwritetext UnknownTougherThanEverText
	promptbutton
	farsjump PhoneScript_HangUpText_Male

GrandmaString: db "Grandma@"
GrandpaString: db "Grandpa@"
MomString: db "Mom@"
DadString: db "Dad@"
SisterString: db "Sister@"
BrotherString: db "Brother@"
