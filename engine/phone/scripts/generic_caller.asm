Phone_GenericCall_Male:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	ifequal 0, .Bragging
	farscall PhoneScript_Generic_Male
	farsjump Phone_FoundAMon_Male

.Bragging:
	farsjump Phone_BraggingCall_Male

Phone_GenericCall_Female:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	ifequal 0, .Bragging
	farscall PhoneScript_Generic_Female
	farsjump Phone_FoundAMon_Female

.Bragging:
	farsjump Phone_BraggingCall_Female

Phone_BraggingCall_Male:
	farscall Phone_WhosBragging_Male
	farsjump Phone_FoundAMon_Male

Phone_BraggingCall_Female:
	farscall Phone_WhosBragging_Female
	farsjump Phone_FoundAMon_Female

Phone_FoundAMon_Male:
	special RandomPhoneWildMon
	farscall PhoneScript_Random2
	ifequal 0, .GotAway
	farscall Phone_WhoDefeatedMon_Male
	farsjump PhoneScript_HangUpText_Male

.GotAway:
	farsjump Phone_GotAwayCall_Male

Phone_FoundAMon_Female:
	special RandomPhoneWildMon
	farscall PhoneScript_Random2
	ifequal 0, .GotAway
	farscall Phone_WhoDefeatedMon_Female
	farsjump PhoneScript_HangUpText_Female

.GotAway:
	farsjump Phone_GotAwayCall_Female

Phone_GotAwayCall_Male:
	farscall Phone_WhoLostAMon_Male
	farsjump PhoneScript_HangUpText_Male

Phone_GotAwayCall_Female:
	farscall Phone_WhoLostAMon_Female
	farsjump PhoneScript_HangUpText_Female

Phone_WhosBragging_Male:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackIntelligenceKeepsRisingText
	promptbutton
	end

Phone_WhosBragging_Female:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyMadeMonEvenCuterText
;	promptbutton
;	end

Phone_WhoDefeatedMon_Male:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackDefeatedMonText
	promptbutton
	end

Phone_WhoDefeatedMon_Female:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyDefeatedMonText
;	promptbutton
;	end

Phone_WhoLostAMon_Male:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackLostAMonText
	promptbutton
	end

Phone_WhoLostAMon_Female:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyLostAMonText
;	promptbutton
;	end

PhoneScript_WantsToBattle_Male:
	farscall PhoneScript_RematchText_Male
	farsjump PhoneScript_HangUpText_Male

PhoneScript_WantsToBattle_Female:
	farscall PhoneScript_RematchText_Female
	farsjump PhoneScript_HangUpText_Female

PhoneScript_RematchText_Male:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackBattleRematchText
	promptbutton
	end

PhoneScript_RematchText_Female:
	readvar VAR_CALLERID
;	ifequal PHONE_COOLTRAINERF_BETH, .Beth

;.Beth:
;	farwritetext BethBattleRematchText
;	promptbutton
;	end

PhoneScript_HangUpText_Male:
	readvar VAR_CALLERID
	ifequal PHONE_SCHOOLBOY_JACK, .Jack

.Jack:
	farwritetext JackHangUpText
	end

PhoneScript_HangUpText_Female:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyHangUpText
;	end

Phone_CheckIfUnseenRare_Male:
	scall PhoneScriptRareWildMon
	iffalse .HangUp
	farsjump Phone_GenericCall_Male

.HangUp:
	farsjump PhoneScript_HangUpText_Male

Phone_CheckIfUnseenRare_Female:
	scall PhoneScriptRareWildMon
	iffalse .HangUp
	farsjump Phone_GenericCall_Female

.HangUp:
	farsjump PhoneScript_HangUpText_Female

PhoneScriptRareWildMon:
	special RandomUnseenWildMon
	end

PhoneScript_BugCatchingContest:
	readvar VAR_CALLERID
;	ifequal PHONE_BUG_CATCHER_WADE, .Wade

;.Wade:
;	farwritetext WadeBugCatchingContestText
;	promptbutton
;	sjump PhoneScript_HangUpText_Male

PhoneScript_FoundItem_Male:
	readvar VAR_CALLERID
;	ifequal PHONE_BIRDKEEPER_JOSE, .Jose

.Jose:
	farwritetext JoseFoundItemText
	end

PhoneScript_FoundItem_Female:
	readvar VAR_CALLERID
;	ifequal PHONE_POKEFAN_BEVERLY, .Beverly

;.Beverly:
;	farwritetext BeverlyFoundItemText
;	end


ToddItemScript:
	farwritetext ToddDepartmentStoreBargainSaleText
	promptbutton
	sjump PhoneScript_HangUpText_Male

KenjiCallingPhoneScript:
	farwritetext KenjiRemainDedicatedText
	promptbutton
	sjump PhoneScript_HangUpText_Male
