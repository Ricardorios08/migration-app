VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clspersonas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '410674
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '410683
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '410692
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96E96C
  'Data Table: 410440
  loc_96E944: FLdRfVar var_88
  loc_96E947: FLdPr Me
  loc_96E94A: MemLdPr RsFrm
  loc_96E94D:  = Me.RecordCount
  loc_96E952: ILdRf var_88
  loc_96E955: LitI4 0
  loc_96E95A: GtI4
  loc_96E95B: BranchF loc_96E969
  loc_96E95E: FLdPr Me
  loc_96E961: MemLdPr RsFrm
  loc_96E964: Me.MoveFirst
  loc_96E969: ExitProcHresult
End Sub

Public Sub MoveLast() '96E914
  'Data Table: 410440
  loc_96E8EC: FLdRfVar var_88
  loc_96E8EF: FLdPr Me
  loc_96E8F2: MemLdPr RsFrm
  loc_96E8F5:  = Me.RecordCount
  loc_96E8FA: ILdRf var_88
  loc_96E8FD: LitI4 0
  loc_96E902: GtI4
  loc_96E903: BranchF loc_96E911
  loc_96E906: FLdPr Me
  loc_96E909: MemLdPr RsFrm
  loc_96E90C: Me.MoveLast
  loc_96E911: ExitProcHresult
  loc_96E912: ExitProcHresult
End Sub

Public Sub MoveNext() '993E60
  'Data Table: 410440
  loc_993E00: FLdRfVar var_86
  loc_993E03: FLdPr Me
  loc_993E06: MemLdPr RsFrm
  loc_993E09:  = Me.EOF
  loc_993E0E: FLdI2 var_86
  loc_993E11: NotI4
  loc_993E12: BranchF loc_993E20
  loc_993E15: FLdPr Me
  loc_993E18: MemLdPr RsFrm
  loc_993E1B: Me.MoveNext
  loc_993E20: FLdRfVar var_86
  loc_993E23: FLdPr Me
  loc_993E26: MemLdPr RsFrm
  loc_993E29:  = Me.EOF
  loc_993E2E: FLdI2 var_86
  loc_993E31: FLdRfVar var_8C
  loc_993E34: FLdPr Me
  loc_993E37: MemLdPr RsFrm
  loc_993E3A:  = Me.RecordCount
  loc_993E3F: ILdRf var_8C
  loc_993E42: LitI4 0
  loc_993E47: GtI4
  loc_993E48: AndI4
  loc_993E49: BranchF loc_993E5C
  loc_993E4C: ImpAdCallFPR4 Beep()
  loc_993E51: FLdPr Me
  loc_993E54: MemLdPr RsFrm
  loc_993E57: Me.MoveLast
  loc_993E5C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941B34
  'Data Table: 410440
  loc_941B28: FLdPr Me
  loc_941B2B: MemLdPr RsFrm
  loc_941B2E: Me.MoveNext
  loc_941B33: ExitProcHresult
End Sub

Public Sub MovePrevious() '993CB0
  'Data Table: 410440
  loc_993C50: FLdRfVar var_86
  loc_993C53: FLdPr Me
  loc_993C56: MemLdPr RsFrm
  loc_993C59:  = Me.BOF
  loc_993C5E: FLdI2 var_86
  loc_993C61: NotI4
  loc_993C62: BranchF loc_993C70
  loc_993C65: FLdPr Me
  loc_993C68: MemLdPr RsFrm
  loc_993C6B: Me.MovePrevious
  loc_993C70: FLdRfVar var_86
  loc_993C73: FLdPr Me
  loc_993C76: MemLdPr RsFrm
  loc_993C79:  = Me.BOF
  loc_993C7E: FLdI2 var_86
  loc_993C81: FLdRfVar var_8C
  loc_993C84: FLdPr Me
  loc_993C87: MemLdPr RsFrm
  loc_993C8A:  = Me.RecordCount
  loc_993C8F: ILdRf var_8C
  loc_993C92: LitI4 0
  loc_993C97: GtI4
  loc_993C98: AndI4
  loc_993C99: BranchF loc_993CAC
  loc_993C9C: ImpAdCallFPR4 Beep()
  loc_993CA1: FLdPr Me
  loc_993CA4: MemLdPr RsFrm
  loc_993CA7: Me.MoveFirst
  loc_993CAC: ExitProcHresult
End Sub

Public Property Get EOF() '9593D4
  'Data Table: 410440
  loc_9593B8: FLdRfVar var_88
  loc_9593BB: FLdPr Me
  loc_9593BE: MemLdPr RsFrm
  loc_9593C1:  = Me.EOF
  loc_9593C6: FLdI2 var_88
  loc_9593C9: FStI2 var_86
  loc_9593CC: ExitProcCbHresult
End Sub

Public Property Get BOF() '96539C
  'Data Table: 410440
  loc_965380: FLdRfVar var_88
  loc_965383: FLdPr Me
  loc_965386: MemLdPr RsFrm
  loc_965389:  = Me.BOF
  loc_96538E: FLdI2 var_88
  loc_965391: FStI2 var_86
  loc_965394: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '947844
  'Data Table: 410440
  loc_947834: ILdI4 sOrden
  loc_947837: FLdPr Me
  loc_94783A: MemLdPr RsFrm
  loc_94783D: Me.Sort = from_stack_1
  loc_947842: ExitProcHresult
  loc_947843: CStrVarTmp
End Sub

Public Sub Find(sCriterio) '9694C0
  'Data Table: 410440
  loc_9694A0: LitVar_Missing var_94
  loc_9694A3: PopAdLdVar
  loc_9694A4: LitI4 1
  loc_9694A9: LitI4 0
  loc_9694AE: ILdI4 sCriterio
  loc_9694B1: FLdPr Me
  loc_9694B4: MemLdPr RsFrm
  loc_9694B7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9694BC: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9484A0
  'Data Table: 410440
  loc_94848C: ILdI4 sCriterio
  loc_94848F: CVarStr var_94
  loc_948492: PopAdLdVar
  loc_948493: FLdPr Me
  loc_948496: MemLdPr RsFrm
  loc_948499: Me.Filter = from_stack_1
  loc_94849E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '965350
  'Data Table: 410440
  loc_965334: FLdRfVar var_8C
  loc_965337: FLdPr Me
  loc_96533A: MemLdPr RsFrm
  loc_96533D:  = Me.AbsolutePosition
  loc_965342: ILdRf var_8C
  loc_965345: FStR4 var_88
  loc_965348: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9652B8
  'Data Table: 410440
  loc_96529C: FLdRfVar var_8C
  loc_96529F: FLdPr Me
  loc_9652A2: MemLdPr RsFrm
  loc_9652A5:  = Me.RecordCount
  loc_9652AA: ILdRf var_8C
  loc_9652AD: FStR4 var_88
  loc_9652B0: ExitProcCbHresult
  loc_9652B6: FStFPR8 var_3800
End Sub

Public Sub AddNew(CucuPers, DetaPers, DecrPers, TelePers, CeluPers, MailPers, JuriPers) 'A26A9C
  'Data Table: 410440
  loc_A26920: ILdRf CucuPers
  loc_A26923: FStStrCopy var_88
  loc_A26926: ILdRf DetaPers
  loc_A26929: FStStrCopy var_8C
  loc_A2692C: ILdRf DecrPers
  loc_A2692F: FStStrCopy var_90
  loc_A26932: ILdRf TelePers
  loc_A26935: FStStrCopy var_94
  loc_A26938: ILdRf CeluPers
  loc_A2693B: FStStrCopy var_98
  loc_A2693E: ILdRf MailPers
  loc_A26941: FStStrCopy var_9C
  loc_A26944: LitI2_Byte &HFF
  loc_A26946: BranchF loc_A269E6
  loc_A26949: LitStr "INSERT INTO infogov.persona (CucuPers,CcokPers,DetaPers,DecrPers,TelePers,CeluPers,JuriPers,AltaUsua)"
  loc_A2694C: LitStr " VALUES ('"
  loc_A2694F: ConcatStr
  loc_A26950: FStStrNoPop var_A0
  loc_A26953: ILdRf var_88
  loc_A26956: ConcatStr
  loc_A26957: FStStrNoPop var_A4
  loc_A2695A: LitStr "',1,'"
  loc_A2695D: ConcatStr
  loc_A2695E: FStStrNoPop var_A8
  loc_A26961: ILdRf var_8C
  loc_A26964: ConcatStr
  loc_A26965: FStStrNoPop var_AC
  loc_A26968: LitStr "','"
  loc_A2696B: ConcatStr
  loc_A2696C: FStStrNoPop var_B0
  loc_A2696F: ILdRf var_90
  loc_A26972: ConcatStr
  loc_A26973: FStStrNoPop var_B4
  loc_A26976: LitStr "','"
  loc_A26979: ConcatStr
  loc_A2697A: FStStrNoPop var_B8
  loc_A2697D: ILdRf var_94
  loc_A26980: ConcatStr
  loc_A26981: FStStrNoPop var_BC
  loc_A26984: LitStr "','"
  loc_A26987: ConcatStr
  loc_A26988: FStStrNoPop var_C0
  loc_A2698B: ILdRf var_98
  loc_A2698E: ConcatStr
  loc_A2698F: FStStrNoPop var_C4
  loc_A26992: LitStr "',"
  loc_A26995: ConcatStr
  loc_A26996: FStStrNoPop var_C8
  loc_A26999: FLdUI1
  loc_A2699D: CStrI2
  loc_A2699F: FStStrNoPop var_CC
  loc_A269A2: ConcatStr
  loc_A269A3: FStStrNoPop var_D0
  loc_A269A6: LitStr ",'"
  loc_A269A9: ConcatStr
  loc_A269AA: FStStrNoPop var_D4
  loc_A269AD: ImpAdLdI4 MemVar_C3D03C
  loc_A269B0: ConcatStr
  loc_A269B1: FStStrNoPop var_D8
  loc_A269B4: LitStr "') ;"
  loc_A269B7: ConcatStr
  loc_A269B8: FStStrNoPop var_DC
  loc_A269BB: Call EjecutarRsCls(from_stack_1v)
  loc_A269C0: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_A269E3: Branch loc_A26A92
  loc_A269E6: LitStr "INSERT INTO infogov.persona (CucuPers,CcokPers,DetaPers,DecrPers,TelePers,CeluPers,MailPers,JuriPers,AltaUsua)"
  loc_A269E9: LitStr " VALUES ('"
  loc_A269EC: ConcatStr
  loc_A269ED: FStStrNoPop var_A0
  loc_A269F0: ILdRf var_88
  loc_A269F3: ConcatStr
  loc_A269F4: FStStrNoPop var_A4
  loc_A269F7: LitStr "',1,'"
  loc_A269FA: ConcatStr
  loc_A269FB: FStStrNoPop var_A8
  loc_A269FE: ILdRf var_8C
  loc_A26A01: ConcatStr
  loc_A26A02: FStStrNoPop var_AC
  loc_A26A05: LitStr "','"
  loc_A26A08: ConcatStr
  loc_A26A09: FStStrNoPop var_B0
  loc_A26A0C: ILdRf var_90
  loc_A26A0F: ConcatStr
  loc_A26A10: FStStrNoPop var_B4
  loc_A26A13: LitStr "','"
  loc_A26A16: ConcatStr
  loc_A26A17: FStStrNoPop var_B8
  loc_A26A1A: ILdRf var_94
  loc_A26A1D: ConcatStr
  loc_A26A1E: FStStrNoPop var_BC
  loc_A26A21: LitStr "','"
  loc_A26A24: ConcatStr
  loc_A26A25: FStStrNoPop var_C0
  loc_A26A28: ILdRf var_98
  loc_A26A2B: ConcatStr
  loc_A26A2C: FStStrNoPop var_C4
  loc_A26A2F: LitStr "','"
  loc_A26A32: ConcatStr
  loc_A26A33: FStStrNoPop var_C8
  loc_A26A36: ILdRf var_9C
  loc_A26A39: ConcatStr
  loc_A26A3A: FStStrNoPop var_CC
  loc_A26A3D: LitStr "',"
  loc_A26A40: ConcatStr
  loc_A26A41: FStStrNoPop var_D0
  loc_A26A44: FLdUI1
  loc_A26A48: CStrI2
  loc_A26A4A: FStStrNoPop var_D4
  loc_A26A4D: ConcatStr
  loc_A26A4E: FStStrNoPop var_D8
  loc_A26A51: LitStr ",'"
  loc_A26A54: ConcatStr
  loc_A26A55: FStStrNoPop var_DC
  loc_A26A58: ImpAdLdI4 MemVar_C3D03C
  loc_A26A5B: ConcatStr
  loc_A26A5C: FStStrNoPop var_E0
  loc_A26A5F: LitStr "') ;"
  loc_A26A62: ConcatStr
  loc_A26A63: FStStrNoPop var_E4
  loc_A26A66: Call EjecutarRsCls(from_stack_1v)
  loc_A26A6B: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A26A92: ILdRf var_88
  loc_A26A95: Call Encontrar(from_stack_1v)
  loc_A26A9A: ExitProcHresult
End Sub

Public Sub Eliminar() '9C29E0
  'Data Table: 410440
  loc_9C2918: OnErrorGoto loc_9C29C8
  loc_9C291B: LitVarStr var_BC, "DELETE FROM infogov.persona WHERE CucuPers = "
  loc_9C2920: FLdRfVar var_AC
  loc_9C2923: FLdRfVar var_9C
  loc_9C2926: LitVarStr var_98, "CucuPers"
  loc_9C292B: PopAdLdVar
  loc_9C292C: FLdRfVar var_88
  loc_9C292F: FLdPr Me
  loc_9C2932: MemLdPr RsFrm
  loc_9C2935:  = Me.Fields
  loc_9C293A: FLdPr var_88
  loc_9C293D: from_stack_2 = Me.Item(from_stack_1)
  loc_9C2942: FLdPr var_9C
  loc_9C2945:  = Me.Value
  loc_9C294A: FLdRfVar var_AC
  loc_9C294D: ConcatVar var_CC
  loc_9C2951: CStrVarVal var_D0
  loc_9C2955: Call EjecutarRsCls(from_stack_1v)
  loc_9C295A: FFree1Str var_D0
  loc_9C295D: FFreeAd var_88 = ""
  loc_9C2964: FFreeVar var_AC = ""
  loc_9C296B: FLdRfVar var_D8
  loc_9C296E: FLdPr Me
  loc_9C2971: MemLdPr RsFrm
  loc_9C2974:  = Me.AbsolutePosition
  loc_9C2979: ILdRf var_D8
  loc_9C297C: FStR4 var_D4
  loc_9C297F: Call Requery()
  loc_9C2984: FLdRfVar var_D8
  loc_9C2987: FLdPr Me
  loc_9C298A: MemLdPr RsFrm
  loc_9C298D:  = Me.RecordCount
  loc_9C2992: ILdRf var_D8
  loc_9C2995: LitI4 0
  loc_9C299A: GtI4
  loc_9C299B: BranchF loc_9C29C7
  loc_9C299E: Call MoveFirst()
  loc_9C29A3: ILdRf var_D4
  loc_9C29A6: LitI4 1
  loc_9C29AB: GtI4
  loc_9C29AC: BranchF loc_9C29C7
  loc_9C29AF: LitVar_Missing var_98
  loc_9C29B2: PopAdLdVar
  loc_9C29B3: ILdRf var_D4
  loc_9C29B6: LitI4 2
  loc_9C29BB: SubI4
  loc_9C29BC: FLdPr Me
  loc_9C29BF: MemLdPr RsFrm
  loc_9C29C2: Me.Move from_stack_1, from_stack_2
  loc_9C29C7: ExitProcHresult
  loc_9C29C8: LitStr "ROLLBACK;"
  loc_9C29CB: Call EjecutarRsCls(from_stack_1v)
  loc_9C29D0: LitI4 0
  loc_9C29D5: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_9C29D8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9C29DD: ExitProcHresult
  loc_9C29DE: MemLdRfVar from_stack_1.global_-14284
End Sub

Public Sub Modificar(DetaPers, DecrPers, TelePers, CeluPers, MailPers, JuriPers) 'A4A938
  'Data Table: 410440
  loc_A4A6F8: ILdRf DetaPers
  loc_A4A6FB: FStStrCopy var_88
  loc_A4A6FE: ILdRf DecrPers
  loc_A4A701: FStStrCopy var_8C
  loc_A4A704: ILdRf TelePers
  loc_A4A707: FStStrCopy var_90
  loc_A4A70A: ILdRf CeluPers
  loc_A4A70D: FStStrCopy var_94
  loc_A4A710: ILdRf MailPers
  loc_A4A713: FStStrCopy var_98
  loc_A4A716: OnErrorGoto loc_A4A921
  loc_A4A719: LitStr "START TRANSACTION;"
  loc_A4A71C: Call EjecutarRsCls(from_stack_1v)
  loc_A4A721: LitI2_Byte &HFF
  loc_A4A723: BranchF loc_A4A7F6
  loc_A4A726: LitStr "UPDATE infogov.persona"
  loc_A4A729: LitStr " SET DetaPers='"
  loc_A4A72C: ConcatStr
  loc_A4A72D: FStStrNoPop var_9C
  loc_A4A730: ILdRf var_88
  loc_A4A733: ConcatStr
  loc_A4A734: FStStrNoPop var_A0
  loc_A4A737: LitStr "',DecrPers='"
  loc_A4A73A: ConcatStr
  loc_A4A73B: FStStrNoPop var_A4
  loc_A4A73E: ILdRf var_8C
  loc_A4A741: ConcatStr
  loc_A4A742: FStStrNoPop var_A8
  loc_A4A745: LitStr "',TelePers='"
  loc_A4A748: ConcatStr
  loc_A4A749: FStStrNoPop var_AC
  loc_A4A74C: ILdRf var_90
  loc_A4A74F: ConcatStr
  loc_A4A750: FStStrNoPop var_B0
  loc_A4A753: LitStr "',CeluPers='"
  loc_A4A756: ConcatStr
  loc_A4A757: FStStrNoPop var_B4
  loc_A4A75A: ILdRf var_94
  loc_A4A75D: ConcatStr
  loc_A4A75E: FStStrNoPop var_B8
  loc_A4A761: LitStr "',JuriPers="
  loc_A4A764: ConcatStr
  loc_A4A765: FStStrNoPop var_BC
  loc_A4A768: FLdUI1
  loc_A4A76C: CStrI2
  loc_A4A76E: FStStrNoPop var_C0
  loc_A4A771: ConcatStr
  loc_A4A772: FStStrNoPop var_C4
  loc_A4A775: LitStr ",ModiUsua='"
  loc_A4A778: ConcatStr
  loc_A4A779: FStStrNoPop var_C8
  loc_A4A77C: ImpAdLdI4 MemVar_C3D03C
  loc_A4A77F: ConcatStr
  loc_A4A780: FStStrNoPop var_CC
  loc_A4A783: LitStr "',ModiFeho=Now() WHERE CucuPers = "
  loc_A4A786: ConcatStr
  loc_A4A787: CVarStr var_104
  loc_A4A78A: FLdRfVar var_F4
  loc_A4A78D: FLdRfVar var_E4
  loc_A4A790: LitVarStr var_E0, "CucuPers"
  loc_A4A795: PopAdLdVar
  loc_A4A796: FLdRfVar var_D0
  loc_A4A799: FLdPr Me
  loc_A4A79C: MemLdPr RsFrm
  loc_A4A79F:  = Me.Fields
  loc_A4A7A4: FLdPr var_D0
  loc_A4A7A7: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A7AC: FLdPr var_E4
  loc_A4A7AF:  = Me.Value
  loc_A4A7B4: FLdRfVar var_F4
  loc_A4A7B7: ConcatVar var_114
  loc_A4A7BB: CStrVarVal var_118
  loc_A4A7BF: Call EjecutarRsCls(from_stack_1v)
  loc_A4A7C4: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A4A7E3: FFreeAd var_D0 = ""
  loc_A4A7EA: FFreeVar var_104 = "": var_F4 = ""
  loc_A4A7F3: Branch loc_A4A8D5
  loc_A4A7F6: LitStr "UPDATE infogov.persona"
  loc_A4A7F9: LitStr " SET DetaPers='"
  loc_A4A7FC: ConcatStr
  loc_A4A7FD: FStStrNoPop var_9C
  loc_A4A800: ILdRf var_88
  loc_A4A803: ConcatStr
  loc_A4A804: FStStrNoPop var_A0
  loc_A4A807: LitStr "',DecrPers='"
  loc_A4A80A: ConcatStr
  loc_A4A80B: FStStrNoPop var_A4
  loc_A4A80E: ILdRf var_8C
  loc_A4A811: ConcatStr
  loc_A4A812: FStStrNoPop var_A8
  loc_A4A815: LitStr "',TelePers='"
  loc_A4A818: ConcatStr
  loc_A4A819: FStStrNoPop var_AC
  loc_A4A81C: ILdRf var_90
  loc_A4A81F: ConcatStr
  loc_A4A820: FStStrNoPop var_B0
  loc_A4A823: LitStr "',CeluPers='"
  loc_A4A826: ConcatStr
  loc_A4A827: FStStrNoPop var_B4
  loc_A4A82A: ILdRf var_94
  loc_A4A82D: ConcatStr
  loc_A4A82E: FStStrNoPop var_B8
  loc_A4A831: LitStr "',MailPers='"
  loc_A4A834: ConcatStr
  loc_A4A835: FStStrNoPop var_BC
  loc_A4A838: ILdRf var_98
  loc_A4A83B: ConcatStr
  loc_A4A83C: FStStrNoPop var_C0
  loc_A4A83F: LitStr "',JuriPers="
  loc_A4A842: ConcatStr
  loc_A4A843: FStStrNoPop var_C4
  loc_A4A846: FLdUI1
  loc_A4A84A: CStrI2
  loc_A4A84C: FStStrNoPop var_C8
  loc_A4A84F: ConcatStr
  loc_A4A850: FStStrNoPop var_CC
  loc_A4A853: LitStr ",ModiUsua='"
  loc_A4A856: ConcatStr
  loc_A4A857: FStStrNoPop var_118
  loc_A4A85A: ImpAdLdI4 MemVar_C3D03C
  loc_A4A85D: ConcatStr
  loc_A4A85E: FStStrNoPop var_11C
  loc_A4A861: LitStr "',ModiFeho=Now() WHERE CucuPers = "
  loc_A4A864: ConcatStr
  loc_A4A865: CVarStr var_104
  loc_A4A868: FLdRfVar var_F4
  loc_A4A86B: FLdRfVar var_E4
  loc_A4A86E: LitVarStr var_E0, "CucuPers"
  loc_A4A873: PopAdLdVar
  loc_A4A874: FLdRfVar var_D0
  loc_A4A877: FLdPr Me
  loc_A4A87A: MemLdPr RsFrm
  loc_A4A87D:  = Me.Fields
  loc_A4A882: FLdPr var_D0
  loc_A4A885: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A88A: FLdPr var_E4
  loc_A4A88D:  = Me.Value
  loc_A4A892: FLdRfVar var_F4
  loc_A4A895: ConcatVar var_114
  loc_A4A899: CStrVarVal var_120
  loc_A4A89D: Call EjecutarRsCls(from_stack_1v)
  loc_A4A8A2: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_118 = "": var_11C = ""
  loc_A4A8C5: FFreeAd var_D0 = ""
  loc_A4A8CC: FFreeVar var_104 = "": var_F4 = ""
  loc_A4A8D5: LitStr "COMMIT;"
  loc_A4A8D8: Call EjecutarRsCls(from_stack_1v)
  loc_A4A8DD: FLdRfVar var_F4
  loc_A4A8E0: FLdRfVar var_E4
  loc_A4A8E3: LitVarStr var_E0, "CucuPers"
  loc_A4A8E8: PopAdLdVar
  loc_A4A8E9: FLdRfVar var_D0
  loc_A4A8EC: FLdPr Me
  loc_A4A8EF: MemLdPr RsFrm
  loc_A4A8F2:  = Me.Fields
  loc_A4A8F7: FLdPr var_D0
  loc_A4A8FA: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A8FF: FLdPr var_E4
  loc_A4A902:  = Me.Value
  loc_A4A907: FLdRfVar var_F4
  loc_A4A90A: CStrVarTmp
  loc_A4A90B: FStStrNoPop var_9C
  loc_A4A90E: Call Encontrar(from_stack_1v)
  loc_A4A913: FFree1Str var_9C
  loc_A4A916: FFreeAd var_D0 = ""
  loc_A4A91D: FFree1Var var_F4 = ""
  loc_A4A920: ExitProcHresult
  loc_A4A921: LitStr "ROLLBACK;"
  loc_A4A924: Call EjecutarRsCls(from_stack_1v)
  loc_A4A929: LitI4 0
  loc_A4A92E: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A4A931: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A4A936: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '974748
  'Data Table: 410440
  loc_974720: ILdRf sSelect
  loc_974723: FStStrCopy var_88
  loc_974726: FLdPr Me
  loc_974729: MemLdRfVar from_stack_1.RsFrm
  loc_97472C: ILdRf var_88
  loc_97472F: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_974734: LitVarStr var_98, "Primary"
  loc_974739: PopAdLdVar
  loc_97473A: FLdPr Me
  loc_97473D: LateIdCall
  loc_974745: ExitProcHresult
  loc_974746: CRec2Uni var_3800
End Sub

Public Sub EjecutarRsCls(sSelect) '965268
  'Data Table: 410440
  loc_965250: ILdRf sSelect
  loc_965253: FStStrCopy var_88
  loc_965256: FLdPr Me
  loc_965259: MemLdRfVar from_stack_1.global_56
  loc_96525C: ILdRf var_88
  loc_96525F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_965264: ExitProcHresult
End Sub

Public Sub Requery() '969510
  'Data Table: 410440
  loc_9694F0: FLdPr Me
  loc_9694F3: MemLdRfVar from_stack_1.RsFrm
  loc_9694F6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9694FB: LitVarStr var_94, "Primary"
  loc_969500: PopAdLdVar
  loc_969501: FLdPr Me
  loc_969504: LateIdCall
  loc_96950C: ExitProcHresult
  loc_96950F: ExitProcHresult
End Sub

Public Property Get DataSource() '9747A0
  'Data Table: 410440
  loc_97477C: ZeroRetVal
  loc_97477E: FLdRfVar var_8C
  loc_974781: FLdPr Me
  loc_974784: MemLdPr RsFrm
  loc_974787:  = Me.DataSource
  loc_97478C: ILdRf var_8C
  loc_97478F: CastAd
  loc_974792: FStAdFunc var_88
  loc_974795: FFree1Ad var_8C
  loc_974798: ExitProcCbHresult
  loc_97479E: LitI2_Byte
End Sub

Public Function ValidaClave(sCucuPers) '9E2524
  'Data Table: 410440
  loc_9E2438: ILdRf sCucuPers
  loc_9E243B: FStStrCopy var_8C
  loc_9E243E: ZeroRetVal
  loc_9E2440: LitStr "UPDATE infogov.persona SET CcokPers = 1 WHERE CucuPers = '"
  loc_9E2443: ILdRf var_8C
  loc_9E2446: ConcatStr
  loc_9E2447: FStStrNoPop var_90
  loc_9E244A: LitStr "';"
  loc_9E244D: ConcatStr
  loc_9E244E: FStStrNoPop ValidaClave
  loc_9E2451: Call EjecutarRsCls(from_stack_1v)
  loc_9E2456: FFreeStr var_90 = ""
  loc_9E245D: LitStr "SELECT DetaPers FROM infogov.persona WHERE CucuPers = '"
  loc_9E2460: ILdRf var_8C
  loc_9E2463: ConcatStr
  loc_9E2464: FStStrNoPop var_90
  loc_9E2467: LitStr "';"
  loc_9E246A: ConcatStr
  loc_9E246B: FStStrNoPop ValidaClave
  loc_9E246E: Call EjecutarRsCls(from_stack_1v)
  loc_9E2473: FFreeStr var_90 = ""
  loc_9E247A: FLdRfVar var_98
  loc_9E247D: FLdPr Me
  loc_9E2480: MemLdPr global_56
  loc_9E2483:  = Me.RecordCount
  loc_9E2488: ILdRf var_98
  loc_9E248B: LitI4 0
  loc_9E2490: GtI4
  loc_9E2491: BranchF loc_9E251E
  loc_9E2494: LitVarStr var_D0, "La Persona "
  loc_9E2499: FLdRfVar var_C0
  loc_9E249C: FLdRfVar var_B0
  loc_9E249F: LitVarStr var_AC, "DetaPers"
  loc_9E24A4: PopAdLdVar
  loc_9E24A5: FLdRfVar var_9C
  loc_9E24A8: FLdPr Me
  loc_9E24AB: MemLdPr global_56
  loc_9E24AE:  = Me.Fields
  loc_9E24B3: FLdPr var_9C
  loc_9E24B6: from_stack_2 = Me.Item(from_stack_1)
  loc_9E24BB: FLdPr var_B0
  loc_9E24BE:  = Me.Value
  loc_9E24C3: FLdRfVar var_C0
  loc_9E24C6: ConcatVar var_E0
  loc_9E24CA: LitVarStr var_F0, " posee el mismo CUIT/CUIL..."
  loc_9E24CF: ConcatVar var_100
  loc_9E24D3: LitVarStr var_110, vbCrLf
  loc_9E24D8: ConcatVar var_120
  loc_9E24DC: LitVarStr var_130, vbCrLf
  loc_9E24E1: ConcatVar var_140
  loc_9E24E5: LitVarStr var_150, "CIERRE la pantalla y vuelva a abrirla..."
  loc_9E24EA: ConcatVar var_160
  loc_9E24EE: LitVarStr var_170, vbCrLf
  loc_9E24F3: ConcatVar var_180
  loc_9E24F7: LitVarStr var_190, " "
  loc_9E24FC: ConcatVar var_1A0
  loc_9E2500: CStrVarTmp
  loc_9E2501: FStStr var_88
  loc_9E2504: FFreeAd var_9C = ""
  loc_9E250B: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = ""
  loc_9E251E: ExitProcCbHresult
End Function

Public Function CucuPersValidate(sCucuPers) 'A30B98
  'Data Table: 410440
  loc_A309D4: ILdRf sCucuPers
  loc_A309D7: FStStrCopy var_8C
  loc_A309DA: ZeroRetVal
  loc_A309DC: ILdRf var_8C
  loc_A309DF: FnLenStr
  loc_A309E0: LitI4 &HB
  loc_A309E5: NeI4
  loc_A309E6: BranchF loc_A309F2
  loc_A309E9: LitStr "El CUIT/CUIL del Proveedor es Inválido. Reintente..."
  loc_A309EC: FStStrCopy var_88
  loc_A309EF: Branch loc_A30B90
  loc_A309F2: LitStr "5432765432"
  loc_A309F5: FStStrCopy CucuPersValidate
  loc_A309F8: LitI4 1
  loc_A309FD: LitI4 1
  loc_A30A02: LitVarStr var_C0, "##-########-#"
  loc_A30A07: FStVarCopyObj var_D0
  loc_A30A0A: FLdRfVar var_D0
  loc_A30A0D: FLdRfVar var_8C
  loc_A30A10: CVarRef
  loc_A30A15: FLdRfVar var_E0
  loc_A30A18: ImpAdCallFPR4  = Format(, )
  loc_A30A1D: LitI4 1
  loc_A30A22: LitI4 1
  loc_A30A27: LitVarStr var_104, "##-########-#"
  loc_A30A2C: FStVarCopyObj var_114
  loc_A30A2F: FLdRfVar var_114
  loc_A30A32: FLdRfVar var_8C
  loc_A30A35: CVarRef
  loc_A30A3A: FLdRfVar var_124
  loc_A30A3D: ImpAdCallFPR4  = Format(, )
  loc_A30A42: LitI4 1
  loc_A30A47: LitI4 1
  loc_A30A4C: LitVarStr var_170, "##-########-#"
  loc_A30A51: FStVarCopyObj var_180
  loc_A30A54: FLdRfVar var_180
  loc_A30A57: FLdRfVar var_8C
  loc_A30A5A: CVarRef
  loc_A30A5F: FLdRfVar var_190
  loc_A30A62: ImpAdCallFPR4  = Format(, )
  loc_A30A67: LitI4 2
  loc_A30A6C: FLdRfVar var_E0
  loc_A30A6F: CStrVarVal var_E4
  loc_A30A73: ImpAdCallI2 Left$(, )
  loc_A30A78: FStStrNoPop var_14C
  loc_A30A7B: LitVarI2 var_148, 8
  loc_A30A80: LitI4 4
  loc_A30A85: FLdRfVar var_124
  loc_A30A88: CStrVarVal var_128
  loc_A30A8C: ImpAdCallI2 Mid$(, , )
  loc_A30A91: FStStrNoPop var_150
  loc_A30A94: ConcatStr
  loc_A30A95: CVarStr var_1B0
  loc_A30A98: LitI4 1
  loc_A30A9D: FLdRfVar var_190
  loc_A30AA0: FLdRfVar var_1A0
  loc_A30AA3: ImpAdCallFPR4  = Right(, )
  loc_A30AA8: FLdRfVar var_1A0
  loc_A30AAB: AddVar var_1C0
  loc_A30AAF: CStrVarTmp
  loc_A30AB0: FStStr var_9C
  loc_A30AB3: FFreeStr var_E4 = "": var_128 = "": var_14C = ""
  loc_A30ABE: FFreeVar var_D0 = "": var_E0 = "": var_114 = "": var_124 = "": var_148 = "": var_180 = "": var_190 = "": var_1B0 = "": var_1A0 = ""
  loc_A30AD5: LitI2_Byte 0
  loc_A30AD7: FStI2 var_8E
  loc_A30ADA: LitI2_Byte 1
  loc_A30ADC: FLdRfVar var_9E
  loc_A30ADF: LitI2_Byte &HA
  loc_A30AE1: ForI2 var_1C4
  loc_A30AE7: LitVarI2 var_D0, 1
  loc_A30AEC: FLdI2 var_9E
  loc_A30AEF: CI4UI1
  loc_A30AF0: ILdRf var_9C
  loc_A30AF3: ImpAdCallI2 Mid$(, , )
  loc_A30AF8: FStStrNoPop var_E4
  loc_A30AFB: ImpAdCallFPR4 push push Val()
  loc_A30B00: FStFPR8 var_1CC
  loc_A30B03: LitVarI2 var_E0, 1
  loc_A30B08: FLdI2 var_9E
  loc_A30B0B: CI4UI1
  loc_A30B0C: ILdRf CucuPersValidate
  loc_A30B0F: ImpAdCallI2 Mid$(, , )
  loc_A30B14: FStStrNoPop var_128
  loc_A30B17: ImpAdCallFPR4 push push Val()
  loc_A30B1C: FStFPR8 var_1D4
  loc_A30B1F: FLdI2 var_8E
  loc_A30B22: CR8I2
  loc_A30B23: FLdFPR8 var_1CC
  loc_A30B26: FLdFPR8 var_1D4
  loc_A30B29: MulR8
  loc_A30B2A: AddR8
  loc_A30B2B: CI2R8
  loc_A30B2C: FStI2 var_8E
  loc_A30B2F: FFreeStr var_E4 = ""
  loc_A30B36: FFreeVar var_D0 = ""
  loc_A30B3D: FLdRfVar var_9E
  loc_A30B40: NextI2 var_1C4, loc_A30AE7
  loc_A30B45: FLdI2 var_8E
  loc_A30B48: LitI2_Byte &HB
  loc_A30B4A: ModI2
  loc_A30B4B: FStI2 var_96
  loc_A30B4E: FLdI2 var_96
  loc_A30B51: LitI2_Byte 1
  loc_A30B53: GtI2
  loc_A30B54: BranchF loc_A30B60
  loc_A30B57: LitI2_Byte &HB
  loc_A30B59: FLdI2 var_96
  loc_A30B5C: SubI2
  loc_A30B5D: FStI2 var_96
  loc_A30B60: FLdI2 var_96
  loc_A30B63: CVarI2 var_C0
  loc_A30B66: HardType
  loc_A30B67: LitI4 1
  loc_A30B6C: FLdRfVar var_9C
  loc_A30B6F: CVarRef
  loc_A30B74: FLdRfVar var_D0
  loc_A30B77: ImpAdCallFPR4  = Right(, )
  loc_A30B7C: FLdRfVar var_D0
  loc_A30B7F: EqVarBool
  loc_A30B81: FFree1Var var_D0 = ""
  loc_A30B84: BranchF loc_A30B8A
  loc_A30B87: Branch loc_A30B90
  loc_A30B8A: LitStr "El CUIT del Proveedor es Incorrecto. Reintente..."
  loc_A30B8D: FStStrCopy var_88
  loc_A30B90: ExitProcCbHresult
End Function

Public Function ValidaEliminar(sCucuPers) '9A2BA4
  'Data Table: 410440
  loc_9A2B38: ILdRf sCucuPers
  loc_9A2B3B: FStStrCopy var_8C
  loc_9A2B3E: ZeroRetVal
  loc_9A2B40: LitStr "SELECT CucuPers FROM proveedor WHERE CucuPers = '"
  loc_9A2B43: ILdRf var_8C
  loc_9A2B46: ConcatStr
  loc_9A2B47: FStStrNoPop ValidaEliminar
  loc_9A2B4A: LitStr "'"
  loc_9A2B4D: ConcatStr
  loc_9A2B4E: FStStrNoPop var_98
  loc_9A2B51: FLdRfVar var_90
  loc_9A2B54: NewIfNullPr clsproveedor
  loc_9A2B57: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_9A2B5C: FFreeStr ValidaEliminar = ""
  loc_9A2B63: FLdRfVar var_9C
  loc_9A2B66: FLdRfVar var_90
  loc_9A2B69: NewIfNullPr clsproveedor
  loc_9A2B6C: from_stack_1 = clsproveedor.RecordCount
  loc_9A2B71: ILdRf var_9C
  loc_9A2B74: LitI4 0
  loc_9A2B79: GtI4
  loc_9A2B7A: BranchF loc_9A2B94
  loc_9A2B7D: FLdRfVar var_90
  loc_9A2B80: NewIfNullPr clsproveedor
  loc_9A2B83: Call clsproveedor.MoveFirst()
  loc_9A2B88: LitStr "La PERSONA no se puede eliminar"
  loc_9A2B8B: FStStrCopy var_88
  loc_9A2B8E: ExitProcCbHresult
  loc_9A2B94: LitNothing
  loc_9A2B96: CastAd
  loc_9A2B99: FStAdFunc var_90
  loc_9A2B9C: ExitProcCbHresult
  loc_9A2BA2: FStStrNoPop var_3724
End Function

Public Function ValidaPersonas(sCucuPers) '992AF4
  'Data Table: 410440
  loc_992AA8: ILdRf sCucuPers
  loc_992AAB: FStStrCopy var_8C
  loc_992AAE: ZeroRetVal
  loc_992AB0: LitStr "SELECT DetaPers FROM infogov.persona WHERE CucuPers = '"
  loc_992AB3: ILdRf var_8C
  loc_992AB6: ConcatStr
  loc_992AB7: FStStrNoPop var_90
  loc_992ABA: LitStr "'"
  loc_992ABD: ConcatStr
  loc_992ABE: FStStrNoPop ValidaPersonas
  loc_992AC1: Call EjecutarRsCls(from_stack_1v)
  loc_992AC6: FFreeStr var_90 = ""
  loc_992ACD: FLdRfVar var_98
  loc_992AD0: FLdPr Me
  loc_992AD3: MemLdPr global_56
  loc_992AD6:  = Me.RecordCount
  loc_992ADB: ILdRf var_98
  loc_992ADE: LitI4 0
  loc_992AE3: EqI4
  loc_992AE4: BranchF loc_992AED
  loc_992AE7: LitStr "La Persona NO EXISTE. Reintente... "
  loc_992AEA: FStStrCopy var_88
  loc_992AED: ExitProcCbHresult
End Function

Public Sub Encontrar(CucuPers) '97D598
  'Data Table: 410440
  loc_97D56C: ILdRf CucuPers
  loc_97D56F: FStStrCopy var_88
  loc_97D572: Call Requery()
  loc_97D577: LitStr "CucuPers = '"
  loc_97D57A: ILdRf var_88
  loc_97D57D: ConcatStr
  loc_97D57E: FStStrNoPop var_8C
  loc_97D581: LitStr "'"
  loc_97D584: ConcatStr
  loc_97D585: PopTmpLdAdStr
  loc_97D589: Call Find(from_stack_1v)
  loc_97D58E: FFreeStr var_8C = ""
  loc_97D595: ExitProcHresult
End Sub

Public Function ExisteProveedor() '9BB5F8
  'Data Table: 410440
  loc_9BB544: FLdRfVar var_8C
  loc_9BB547: FLdPr Me
  loc_9BB54A: MemLdPr RsFrm
  loc_9BB54D:  = Me.RecordCount
  loc_9BB552: ILdRf var_8C
  loc_9BB555: LitI4 0
  loc_9BB55A: GtI4
  loc_9BB55B: BranchF loc_9BB5F2
  loc_9BB55E: FLdRfVar var_8E
  loc_9BB561: FLdPr Me
  loc_9BB564: MemLdPr RsFrm
  loc_9BB567:  = Me.EOF
  loc_9BB56C: FLdI2 var_8E
  loc_9BB56F: BranchF loc_9BB57D
  loc_9BB572: FLdPr Me
  loc_9BB575: MemLdPr RsFrm
  loc_9BB578: Me.MoveFirst
  loc_9BB57D: LitVarStr var_C8, "SELECT * FROM proveedor WHERE CucuPers = '"
  loc_9BB582: FLdRfVar var_B8
  loc_9BB585: FLdRfVar var_A8
  loc_9BB588: LitVarStr var_A4, "CucuPers"
  loc_9BB58D: PopAdLdVar
  loc_9BB58E: FLdRfVar ExisteProveedor
  loc_9BB591: FLdPr Me
  loc_9BB594: MemLdPr RsFrm
  loc_9BB597:  = Me.Fields
  loc_9BB59C: FLdPr ExisteProveedor
  loc_9BB59F: from_stack_2 = Me.Item(from_stack_1)
  loc_9BB5A4: FLdPr var_A8
  loc_9BB5A7:  = Me.Value
  loc_9BB5AC: FLdRfVar var_B8
  loc_9BB5AF: ConcatVar var_D8
  loc_9BB5B3: LitVarStr var_E8, "'"
  loc_9BB5B8: ConcatVar var_F8
  loc_9BB5BC: CStrVarVal var_FC
  loc_9BB5C0: Call EjecutarRsCls(from_stack_1v)
  loc_9BB5C5: FFree1Str var_FC
  loc_9BB5C8: FFreeAd ExisteProveedor = ""
  loc_9BB5CF: FFreeVar var_B8 = "": var_D8 = ""
  loc_9BB5D8: FLdRfVar var_8C
  loc_9BB5DB: FLdPr Me
  loc_9BB5DE: MemLdPr global_56
  loc_9BB5E1:  = Me.RecordCount
  loc_9BB5E6: ILdRf var_8C
  loc_9BB5E9: LitI4 0
  loc_9BB5EE: GtI4
  loc_9BB5EF: FStI2 var_86
  loc_9BB5F2: ExitProcCbHresult
End Function

Private Function Proc_27_28_9748B4() '9748B4
  'Data Table: 410440
  loc_974890: LitStr "Primary"
  loc_974893: FLdPr Me
  loc_974896: LateIdLdVar var_94 DispID_4 0
  loc_97489D: CastAdVar Me
  loc_9748A1: FStAdFunc var_98
  loc_9748A4: FLdPr var_98
  loc_9748AC: FFree1Ad var_98
  loc_9748AF: FFree1Var var_94 = ""
  loc_9748B2: ExitProcHresult
End Function

Private Function Proc_27_29_96955C(arg_C) '96955C
  'Data Table: 410440
  loc_969540: ILdI4 arg_C
  loc_969543: FStStrCopy var_88
  loc_969546: ILdRf var_88
  loc_969549: LitStr "Primary"
  loc_96954C: EqStr
  loc_96954E: BranchF loc_96955B
  loc_969551: FLdPr Me
  loc_969554: MemLdStr RsFrm
  loc_969557: IStAd
  loc_96955B: ExitProcHresult
End Function
