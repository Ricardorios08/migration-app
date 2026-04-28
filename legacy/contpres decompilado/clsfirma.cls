VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsfirma"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40CD20
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40CD2F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40CD3E
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9709BC
  'Data Table: 40CB28
  loc_970994: FLdRfVar var_88
  loc_970997: FLdPr Me
  loc_97099A: MemLdPr RsFrm
  loc_97099D:  = Me.RecordCount
  loc_9709A2: ILdRf var_88
  loc_9709A5: LitI4 0
  loc_9709AA: GtI4
  loc_9709AB: BranchF loc_9709B9
  loc_9709AE: FLdPr Me
  loc_9709B1: MemLdPr RsFrm
  loc_9709B4: Me.MoveFirst
  loc_9709B9: ExitProcHresult
  loc_9709BA: ImpAdStI2 MemVar_905A4D
End Sub

Public Sub MoveLast() '9707AC
  'Data Table: 40CB28
  loc_970784: FLdRfVar var_88
  loc_970787: FLdPr Me
  loc_97078A: MemLdPr RsFrm
  loc_97078D:  = Me.RecordCount
  loc_970792: ILdRf var_88
  loc_970795: LitI4 0
  loc_97079A: GtI4
  loc_97079B: BranchF loc_9707A9
  loc_97079E: FLdPr Me
  loc_9707A1: MemLdPr RsFrm
  loc_9707A4: Me.MoveLast
  loc_9707A9: ExitProcHresult
End Sub

Public Sub MoveNext() '99C4E8
  'Data Table: 40CB28
  loc_99C470: FLdRfVar var_86
  loc_99C473: FLdPr Me
  loc_99C476: MemLdPr RsFrm
  loc_99C479:  = Me.EOF
  loc_99C47E: FLdI2 var_86
  loc_99C481: NotI4
  loc_99C482: FLdRfVar var_8C
  loc_99C485: FLdPr Me
  loc_99C488: MemLdPr RsFrm
  loc_99C48B:  = Me.RecordCount
  loc_99C490: ILdRf var_8C
  loc_99C493: LitI4 0
  loc_99C498: GtI4
  loc_99C499: AndI4
  loc_99C49A: BranchF loc_99C4A8
  loc_99C49D: FLdPr Me
  loc_99C4A0: MemLdPr RsFrm
  loc_99C4A3: Me.MoveNext
  loc_99C4A8: FLdRfVar var_86
  loc_99C4AB: FLdPr Me
  loc_99C4AE: MemLdPr RsFrm
  loc_99C4B1:  = Me.EOF
  loc_99C4B6: FLdI2 var_86
  loc_99C4B9: FLdRfVar var_8C
  loc_99C4BC: FLdPr Me
  loc_99C4BF: MemLdPr RsFrm
  loc_99C4C2:  = Me.RecordCount
  loc_99C4C7: ILdRf var_8C
  loc_99C4CA: LitI4 0
  loc_99C4CF: GtI4
  loc_99C4D0: AndI4
  loc_99C4D1: BranchF loc_99C4E4
  loc_99C4D4: ImpAdCallFPR4 Beep()
  loc_99C4D9: FLdPr Me
  loc_99C4DC: MemLdPr RsFrm
  loc_99C4DF: Me.MoveLast
  loc_99C4E4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941120
  'Data Table: 40CB28
  loc_941114: FLdPr Me
  loc_941117: MemLdPr RsFrm
  loc_94111A: Me.MoveNext
  loc_94111F: ExitProcHresult
End Sub

Public Sub Move(iValor) '947F94
  'Data Table: 40CB28
  loc_947F80: LitVar_Missing var_94
  loc_947F83: PopAdLdVar
  loc_947F84: ILdI2 iValor
  loc_947F87: CI4UI1
  loc_947F88: FLdPr Me
  loc_947F8B: MemLdPr RsFrm
  loc_947F8E: Me.Move from_stack_1, from_stack_2
  loc_947F93: ExitProcHresult
End Sub

Public Sub MovePrevious() '99D0B8
  'Data Table: 40CB28
  loc_99D040: FLdRfVar var_86
  loc_99D043: FLdPr Me
  loc_99D046: MemLdPr RsFrm
  loc_99D049:  = Me.BOF
  loc_99D04E: FLdI2 var_86
  loc_99D051: NotI4
  loc_99D052: FLdRfVar var_8C
  loc_99D055: FLdPr Me
  loc_99D058: MemLdPr RsFrm
  loc_99D05B:  = Me.RecordCount
  loc_99D060: ILdRf var_8C
  loc_99D063: LitI4 0
  loc_99D068: GtI4
  loc_99D069: AndI4
  loc_99D06A: BranchF loc_99D078
  loc_99D06D: FLdPr Me
  loc_99D070: MemLdPr RsFrm
  loc_99D073: Me.MovePrevious
  loc_99D078: FLdRfVar var_86
  loc_99D07B: FLdPr Me
  loc_99D07E: MemLdPr RsFrm
  loc_99D081:  = Me.BOF
  loc_99D086: FLdI2 var_86
  loc_99D089: FLdRfVar var_8C
  loc_99D08C: FLdPr Me
  loc_99D08F: MemLdPr RsFrm
  loc_99D092:  = Me.RecordCount
  loc_99D097: ILdRf var_8C
  loc_99D09A: LitI4 0
  loc_99D09F: GtI4
  loc_99D0A0: AndI4
  loc_99D0A1: BranchF loc_99D0B4
  loc_99D0A4: ImpAdCallFPR4 Beep()
  loc_99D0A9: FLdPr Me
  loc_99D0AC: MemLdPr RsFrm
  loc_99D0AF: Me.MoveFirst
  loc_99D0B4: ExitProcHresult
  loc_99D0B5: IStI2 arg_5C9
End Sub

Public Property Get EOF() '95FEB4
  'Data Table: 40CB28
  loc_95FE98: FLdRfVar var_88
  loc_95FE9B: FLdPr Me
  loc_95FE9E: MemLdPr RsFrm
  loc_95FEA1:  = Me.EOF
  loc_95FEA6: FLdI2 var_88
  loc_95FEA9: FStI2 var_86
  loc_95FEAC: ExitProcCbHresult
End Sub

Public Property Get BOF() '95FE1C
  'Data Table: 40CB28
  loc_95FE00: FLdRfVar var_88
  loc_95FE03: FLdPr Me
  loc_95FE06: MemLdPr RsFrm
  loc_95FE09:  = Me.BOF
  loc_95FE0E: FLdI2 var_88
  loc_95FE11: FStI2 var_86
  loc_95FE14: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '946004
  'Data Table: 40CB28
  loc_945FF4: ILdI4 sOrden
  loc_945FF7: FLdPr Me
  loc_945FFA: MemLdPr RsFrm
  loc_945FFD: Me.Sort = from_stack_1
  loc_946002: ExitProcHresult
  loc_946003: CStrVarTmp
End Sub

Public Sub Find(sFind) '968480
  'Data Table: 40CB28
  loc_968460: LitVar_Missing var_94
  loc_968463: PopAdLdVar
  loc_968464: LitI4 1
  loc_968469: LitI4 0
  loc_96846E: ILdI4 sFind
  loc_968471: FLdPr Me
  loc_968474: MemLdPr RsFrm
  loc_968477: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96847C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '948EFC
  'Data Table: 40CB28
  loc_948EE8: ILdI4 sCriterio
  loc_948EEB: CVarStr var_94
  loc_948EEE: PopAdLdVar
  loc_948EEF: FLdPr Me
  loc_948EF2: MemLdPr RsFrm
  loc_948EF5: Me.Filter = from_stack_1
  loc_948EFA: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95FC54
  'Data Table: 40CB28
  loc_95FC38: FLdRfVar var_8C
  loc_95FC3B: FLdPr Me
  loc_95FC3E: MemLdPr RsFrm
  loc_95FC41:  = Me.AbsolutePosition
  loc_95FC46: ILdRf var_8C
  loc_95FC49: FStR4 var_88
  loc_95FC4C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '95FBBC
  'Data Table: 40CB28
  loc_95FBA0: FLdRfVar var_8C
  loc_95FBA3: FLdPr Me
  loc_95FBA6: MemLdPr RsFrm
  loc_95FBA9:  = Me.RecordCount
  loc_95FBAE: ILdRf var_8C
  loc_95FBB1: FStR4 var_88
  loc_95FBB4: ExitProcCbHresult
End Sub

Public Sub AddNew(FormFirm, FechFirm, CaunFirm, CcunFirm, CadoFirm, CcdoFirm, CatrFirm, CctrFirm, CacuFirm, CccuFirm) 'A51278
  'Data Table: 40CB28
  loc_A51054: ILdRf FormFirm
  loc_A51057: FStStrCopy var_88
  loc_A5105A: ILdRf FechFirm
  loc_A5105D: FStStrCopy var_8C
  loc_A51060: ILdRf CaunFirm
  loc_A51063: FStStrCopy var_90
  loc_A51066: ILdRf CadoFirm
  loc_A51069: FStStrCopy var_94
  loc_A5106C: ILdRf CatrFirm
  loc_A5106F: FStStrCopy var_98
  loc_A51072: ILdRf CacuFirm
  loc_A51075: FStStrCopy var_9C
  loc_A51078: FLdRfVar var_A4
  loc_A5107B: ILdRf var_8C
  loc_A5107E: ILdRf var_88
  loc_A51081: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_A51086: FLdZeroAd var_A4
  loc_A51089: FStStr var_A0
  loc_A5108C: ILdRf var_A0
  loc_A5108F: LitStr vbNullString
  loc_A51092: NeStr
  loc_A51094: BranchF loc_A510A8
  loc_A51097: LitI4 0
  loc_A5109C: ILdRf var_A0
  loc_A5109F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A510A4: ExitProcHresult
  loc_A510A5: Branch loc_A51274
  loc_A510A8: LitStr "INSERT INTO firma (FormFirm,FechFirm,CaunFirm,CcunFirm,CadoFirm,CcdoFirm,CatrFirm,CctrFirm,CacuFirm,CccuFirm,AltaUsua)"
  loc_A510AB: LitStr " VALUES ('"
  loc_A510AE: ConcatStr
  loc_A510AF: FStStrNoPop var_A4
  loc_A510B2: ILdRf var_88
  loc_A510B5: ConcatStr
  loc_A510B6: FStStrNoPop var_A8
  loc_A510B9: LitStr "',"
  loc_A510BC: ConcatStr
  loc_A510BD: FStStrNoPop var_DC
  loc_A510C0: LitI4 1
  loc_A510C5: LitI4 1
  loc_A510CA: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_A510CF: FStVarCopyObj var_D8
  loc_A510D2: FLdRfVar var_D8
  loc_A510D5: FLdRfVar var_8C
  loc_A510D8: CVarRef
  loc_A510DD: ImpAdCallI2 Format$(, )
  loc_A510E2: FStStrNoPop var_E0
  loc_A510E5: ConcatStr
  loc_A510E6: FStStrNoPop var_E4
  loc_A510E9: LitStr ",'"
  loc_A510EC: ConcatStr
  loc_A510ED: FStStrNoPop var_E8
  loc_A510F0: ILdRf var_90
  loc_A510F3: ConcatStr
  loc_A510F4: FStStrNoPop var_EC
  loc_A510F7: LitStr "',"
  loc_A510FA: ConcatStr
  loc_A510FB: CVarStr var_14C
  loc_A510FE: LitVarI2 var_12C, 0
  loc_A51103: ILdRf CcunFirm
  loc_A51106: CVarRef
  loc_A5110B: ILdI4 CcunFirm
  loc_A5110E: LitStr vbNullString
  loc_A51111: NeStr
  loc_A51113: CVarBoolI2 var_FC
  loc_A51117: FLdRfVar var_13C
  loc_A5111A: ImpAdCallFPR4  = IIf(, , )
  loc_A5111F: FLdRfVar var_13C
  loc_A51122: ConcatVar var_15C
  loc_A51126: LitVarStr var_16C, ",'"
  loc_A5112B: ConcatVar var_17C
  loc_A5112F: ILdRf var_94
  loc_A51132: CVarStr var_18C
  loc_A51135: ConcatVar var_19C
  loc_A51139: LitVarStr var_1AC, "',"
  loc_A5113E: ConcatVar var_1BC
  loc_A51142: LitVarI2 var_1FC, 0
  loc_A51147: ILdRf CcdoFirm
  loc_A5114A: CVarRef
  loc_A5114F: ILdI4 CcdoFirm
  loc_A51152: LitStr vbNullString
  loc_A51155: NeStr
  loc_A51157: CVarBoolI2 var_1CC
  loc_A5115B: FLdRfVar var_20C
  loc_A5115E: ImpAdCallFPR4  = IIf(, , )
  loc_A51163: FLdRfVar var_20C
  loc_A51166: ConcatVar var_21C
  loc_A5116A: LitVarStr var_22C, ",'"
  loc_A5116F: ConcatVar var_23C
  loc_A51173: ILdRf var_98
  loc_A51176: CVarStr var_24C
  loc_A51179: ConcatVar var_25C
  loc_A5117D: LitVarStr var_26C, "',"
  loc_A51182: ConcatVar var_27C
  loc_A51186: LitVarI2 var_2BC, 0
  loc_A5118B: ILdRf CctrFirm
  loc_A5118E: CVarRef
  loc_A51193: ILdI4 CctrFirm
  loc_A51196: LitStr vbNullString
  loc_A51199: NeStr
  loc_A5119B: CVarBoolI2 var_28C
  loc_A5119F: FLdRfVar var_2CC
  loc_A511A2: ImpAdCallFPR4  = IIf(, , )
  loc_A511A7: FLdRfVar var_2CC
  loc_A511AA: ConcatVar var_2DC
  loc_A511AE: LitVarStr var_2EC, ",'"
  loc_A511B3: ConcatVar var_2FC
  loc_A511B7: ILdRf var_9C
  loc_A511BA: CVarStr var_30C
  loc_A511BD: ConcatVar var_31C
  loc_A511C1: LitVarStr var_32C, "',"
  loc_A511C6: ConcatVar var_33C
  loc_A511CA: LitVarI2 var_37C, 0
  loc_A511CF: ILdRf CccuFirm
  loc_A511D2: CVarRef
  loc_A511D7: ILdI4 CccuFirm
  loc_A511DA: LitStr vbNullString
  loc_A511DD: NeStr
  loc_A511DF: CVarBoolI2 var_34C
  loc_A511E3: FLdRfVar var_38C
  loc_A511E6: ImpAdCallFPR4  = IIf(, , )
  loc_A511EB: FLdRfVar var_38C
  loc_A511EE: ConcatVar var_39C
  loc_A511F2: LitVarStr var_3AC, ",'"
  loc_A511F7: ConcatVar var_3BC
  loc_A511FB: ImpAdLdI4 MemVar_C3D03C
  loc_A511FE: CVarStr var_3CC
  loc_A51201: ConcatVar var_3DC
  loc_A51205: LitVarStr var_3EC, "')"
  loc_A5120A: ConcatVar var_3FC
  loc_A5120E: CStrVarVal var_400
  loc_A51212: Call EjecutarRsCls(from_stack_1v)
  loc_A51217: FFreeStr var_A4 = "": var_A8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A5122A: FFreeVar var_D8 = "": var_FC = "": var_12C = "": var_14C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1CC = "": var_1FC = "": var_1BC = "": var_20C = "": var_21C = "": var_23C = "": var_25C = "": var_28C = "": var_2BC = "": var_27C = "": var_2CC = "": var_2DC = "": var_2FC = "": var_31C = "": var_34C = "": var_37C = "": var_33C = "": var_38C = "": var_39C = "": var_3BC = "": var_3DC = ""
  loc_A51269: ILdRf var_8C
  loc_A5126C: ILdRf var_88
  loc_A5126F: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A51274: ExitProcHresult
End Sub

Public Sub Modificar(CaunFirm, CcunFirm, CadoFirm, CcdoFirm, CatrFirm, CctrFirm, CacuFirm, CccuFirm) 'A62894
  'Data Table: 40CB28
  loc_A625E0: ILdRf CaunFirm
  loc_A625E3: FStStrCopy var_88
  loc_A625E6: ILdRf CadoFirm
  loc_A625E9: FStStrCopy var_8C
  loc_A625EC: ILdRf CatrFirm
  loc_A625EF: FStStrCopy var_90
  loc_A625F2: ILdRf CacuFirm
  loc_A625F5: FStStrCopy var_94
  loc_A625F8: FLdRfVar var_D8
  loc_A625FB: FLdRfVar var_B0
  loc_A625FE: LitVarStr var_AC, "FormFirm"
  loc_A62603: PopAdLdVar
  loc_A62604: FLdRfVar var_9C
  loc_A62607: FLdPr Me
  loc_A6260A: MemLdPr RsFrm
  loc_A6260D:  = Me.Fields
  loc_A62612: FLdPr var_9C
  loc_A62615: from_stack_2 = Me.Item(from_stack_1)
  loc_A6261A: FLdPr var_B0
  loc_A6261D:  = Me.Value
  loc_A62622: FLdRfVar var_EC
  loc_A62625: FLdRfVar var_C8
  loc_A62628: LitVarStr var_C4, "FechFirm"
  loc_A6262D: PopAdLdVar
  loc_A6262E: FLdRfVar var_B4
  loc_A62631: FLdPr Me
  loc_A62634: MemLdPr RsFrm
  loc_A62637:  = Me.Fields
  loc_A6263C: FLdPr var_B4
  loc_A6263F: from_stack_2 = Me.Item(from_stack_1)
  loc_A62644: FLdPr var_C8
  loc_A62647:  = Me.Value
  loc_A6264C: FLdRfVar var_F4
  loc_A6264F: FLdRfVar var_EC
  loc_A62652: CStrVarTmp
  loc_A62653: FStStrNoPop var_F0
  loc_A62656: FLdRfVar var_D8
  loc_A62659: CStrVarTmp
  loc_A6265A: FStStrNoPop var_DC
  loc_A6265D: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_A62662: FLdZeroAd var_F4
  loc_A62665: FStStr var_98
  loc_A62668: FFreeStr var_DC = ""
  loc_A6266F: FFreeAd var_9C = "": var_B4 = "": var_B0 = ""
  loc_A6267A: FFreeVar var_D8 = ""
  loc_A62681: ILdRf var_98
  loc_A62684: LitStr vbNullString
  loc_A62687: EqStr
  loc_A62689: BranchF loc_A6269D
  loc_A6268C: LitI4 0
  loc_A62691: LitStr "No existe ningun registro para modificar"
  loc_A62694: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A62699: ExitProcHresult
  loc_A6269A: Branch loc_A62891
  loc_A6269D: FLdRfVar var_C8
  loc_A626A0: LitVarStr var_168, "FechFirm"
  loc_A626A5: PopAdLdVar
  loc_A626A6: FLdRfVar var_B4
  loc_A626A9: FLdPr Me
  loc_A626AC: MemLdPr RsFrm
  loc_A626AF:  = Me.Fields
  loc_A626B4: FLdPr var_B4
  loc_A626B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A626BC: LitStr "UPDATE firma"
  loc_A626BF: LitStr " SET CaunFirm='"
  loc_A626C2: ConcatStr
  loc_A626C3: FStStrNoPop var_DC
  loc_A626C6: ILdRf var_88
  loc_A626C9: ConcatStr
  loc_A626CA: FStStrNoPop var_F0
  loc_A626CD: LitStr "', CcunFirm='"
  loc_A626D0: ConcatStr
  loc_A626D1: FStStrNoPop var_F4
  loc_A626D4: ILdI4 CcunFirm
  loc_A626D7: ConcatStr
  loc_A626D8: FStStrNoPop var_F8
  loc_A626DB: LitStr "', CadoFirm='"
  loc_A626DE: ConcatStr
  loc_A626DF: FStStrNoPop var_FC
  loc_A626E2: ILdRf var_8C
  loc_A626E5: ConcatStr
  loc_A626E6: FStStrNoPop var_100
  loc_A626E9: LitStr "', CcdoFirm='"
  loc_A626EC: ConcatStr
  loc_A626ED: FStStrNoPop var_104
  loc_A626F0: ILdI4 CcdoFirm
  loc_A626F3: ConcatStr
  loc_A626F4: FStStrNoPop var_108
  loc_A626F7: LitStr "', CatrFirm='"
  loc_A626FA: ConcatStr
  loc_A626FB: FStStrNoPop var_10C
  loc_A626FE: ILdRf var_90
  loc_A62701: ConcatStr
  loc_A62702: FStStrNoPop var_110
  loc_A62705: LitStr "', CctrFirm='"
  loc_A62708: ConcatStr
  loc_A62709: FStStrNoPop var_114
  loc_A6270C: ILdI4 CctrFirm
  loc_A6270F: ConcatStr
  loc_A62710: FStStrNoPop var_118
  loc_A62713: LitStr "', CacuFirm='"
  loc_A62716: ConcatStr
  loc_A62717: FStStrNoPop var_11C
  loc_A6271A: ILdRf var_94
  loc_A6271D: ConcatStr
  loc_A6271E: FStStrNoPop var_120
  loc_A62721: LitStr "', CccuFirm='"
  loc_A62724: ConcatStr
  loc_A62725: FStStrNoPop var_124
  loc_A62728: ILdI4 CccuFirm
  loc_A6272B: ConcatStr
  loc_A6272C: FStStrNoPop var_128
  loc_A6272F: LitStr "'"
  loc_A62732: ConcatStr
  loc_A62733: FStStrNoPop var_12C
  loc_A62736: LitStr ", ModiUsua='"
  loc_A62739: ConcatStr
  loc_A6273A: FStStrNoPop var_130
  loc_A6273D: ImpAdLdI4 MemVar_C3D03C
  loc_A62740: ConcatStr
  loc_A62741: FStStrNoPop var_134
  loc_A62744: LitStr "', ModiFeho=Now()"
  loc_A62747: ConcatStr
  loc_A62748: FStStrNoPop var_138
  loc_A6274B: LitStr " WHERE FormFirm ='"
  loc_A6274E: ConcatStr
  loc_A6274F: CVarStr var_EC
  loc_A62752: FLdRfVar var_D8
  loc_A62755: FLdRfVar var_B0
  loc_A62758: LitVarStr var_AC, "FormFirm"
  loc_A6275D: PopAdLdVar
  loc_A6275E: FLdRfVar var_9C
  loc_A62761: FLdPr Me
  loc_A62764: MemLdPr RsFrm
  loc_A62767:  = Me.Fields
  loc_A6276C: FLdPr var_9C
  loc_A6276F: from_stack_2 = Me.Item(from_stack_1)
  loc_A62774: FLdPr var_B0
  loc_A62777:  = Me.Value
  loc_A6277C: FLdRfVar var_D8
  loc_A6277F: ConcatVar var_148
  loc_A62783: LitVarStr var_C4, "' AND FechFirm = '"
  loc_A62788: ConcatVar var_158
  loc_A6278C: LitI4 1
  loc_A62791: LitI4 1
  loc_A62796: LitVarStr var_188, "yyyy-mm-dd"
  loc_A6279B: FStVarCopyObj var_198
  loc_A6279E: FLdRfVar var_198
  loc_A627A1: FLdZeroAd var_C8
  loc_A627A4: CVarAd
  loc_A627A8: ImpAdCallI2 Format$(, )
  loc_A627AD: CVarStr var_1A8
  loc_A627B0: ConcatVar var_1B8
  loc_A627B4: LitVarStr var_1C8, "'"
  loc_A627B9: ConcatVar var_1D8
  loc_A627BD: CStrVarVal var_1DC
  loc_A627C1: Call EjecutarRsCls(from_stack_1v)
  loc_A627C6: FFreeStr var_DC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_A627F3: FFreeAd var_9C = "": var_B0 = ""
  loc_A627FC: FFreeVar var_EC = "": var_D8 = "": var_148 = "": var_178 = "": var_198 = "": var_158 = "": var_1A8 = "": var_1B8 = ""
  loc_A62811: FLdRfVar var_D8
  loc_A62814: FLdRfVar var_B0
  loc_A62817: LitVarStr var_AC, "FormFirm"
  loc_A6281C: PopAdLdVar
  loc_A6281D: FLdRfVar var_9C
  loc_A62820: FLdPr Me
  loc_A62823: MemLdPr RsFrm
  loc_A62826:  = Me.Fields
  loc_A6282B: FLdPr var_9C
  loc_A6282E: from_stack_2 = Me.Item(from_stack_1)
  loc_A62833: FLdPr var_B0
  loc_A62836:  = Me.Value
  loc_A6283B: FLdRfVar var_EC
  loc_A6283E: FLdRfVar var_C8
  loc_A62841: LitVarStr var_C4, "FechFirm"
  loc_A62846: PopAdLdVar
  loc_A62847: FLdRfVar var_B4
  loc_A6284A: FLdPr Me
  loc_A6284D: MemLdPr RsFrm
  loc_A62850:  = Me.Fields
  loc_A62855: FLdPr var_B4
  loc_A62858: from_stack_2 = Me.Item(from_stack_1)
  loc_A6285D: FLdPr var_C8
  loc_A62860:  = Me.Value
  loc_A62865: FLdRfVar var_EC
  loc_A62868: CStrVarTmp
  loc_A62869: FStStrNoPop var_F0
  loc_A6286C: FLdRfVar var_D8
  loc_A6286F: CStrVarTmp
  loc_A62870: FStStrNoPop var_DC
  loc_A62873: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A62878: FFreeStr var_DC = ""
  loc_A6287F: FFreeAd var_9C = "": var_B4 = "": var_B0 = ""
  loc_A6288A: FFreeVar var_D8 = ""
  loc_A62891: ExitProcHresult
End Sub

Public Sub Eliminar() '9ED8E0
  'Data Table: 40CB28
  loc_9ED7D0: FLdRfVar var_104
  loc_9ED7D3: LitVarStr var_100, "FechFirm"
  loc_9ED7D8: PopAdLdVar
  loc_9ED7D9: FLdRfVar var_F0
  loc_9ED7DC: FLdPr Me
  loc_9ED7DF: MemLdPr RsFrm
  loc_9ED7E2:  = Me.Fields
  loc_9ED7E7: FLdPr var_F0
  loc_9ED7EA: from_stack_2 = Me.Item(from_stack_1)
  loc_9ED7EF: LitStr "DELETE FROM firma"
  loc_9ED7F2: LitStr " WHERE FormFirm='"
  loc_9ED7F5: ConcatStr
  loc_9ED7F6: CVarStr var_BC
  loc_9ED7F9: FLdRfVar var_AC
  loc_9ED7FC: FLdRfVar var_9C
  loc_9ED7FF: LitVarStr var_98, "FormFirm"
  loc_9ED804: PopAdLdVar
  loc_9ED805: FLdRfVar var_88
  loc_9ED808: FLdPr Me
  loc_9ED80B: MemLdPr RsFrm
  loc_9ED80E:  = Me.Fields
  loc_9ED813: FLdPr var_88
  loc_9ED816: from_stack_2 = Me.Item(from_stack_1)
  loc_9ED81B: FLdPr var_9C
  loc_9ED81E:  = Me.Value
  loc_9ED823: FLdRfVar var_AC
  loc_9ED826: ConcatVar var_CC
  loc_9ED82A: LitVarStr var_DC, "' AND FechFirm = "
  loc_9ED82F: ConcatVar var_EC
  loc_9ED833: LitI4 1
  loc_9ED838: LitI4 1
  loc_9ED83D: LitVarStr var_124, "'yyyy-mm-dd'"
  loc_9ED842: FStVarCopyObj var_134
  loc_9ED845: FLdRfVar var_134
  loc_9ED848: FLdZeroAd var_104
  loc_9ED84B: CVarAd
  loc_9ED84F: ImpAdCallI2 Format$(, )
  loc_9ED854: CVarStr var_144
  loc_9ED857: ConcatVar var_154
  loc_9ED85B: CStrVarVal var_158
  loc_9ED85F: Call EjecutarRsCls(from_stack_1v)
  loc_9ED864: FFree1Str var_158
  loc_9ED867: FFreeAd var_88 = "": var_9C = ""
  loc_9ED870: FFreeVar var_BC = "": var_AC = "": var_CC = "": var_114 = "": var_134 = "": var_EC = "": var_144 = ""
  loc_9ED883: FLdRfVar var_160
  loc_9ED886: FLdPr Me
  loc_9ED889: MemLdPr RsFrm
  loc_9ED88C:  = Me.AbsolutePosition
  loc_9ED891: ILdRf var_160
  loc_9ED894: FStR4 var_15C
  loc_9ED897: Call Requery()
  loc_9ED89C: FLdRfVar var_160
  loc_9ED89F: FLdPr Me
  loc_9ED8A2: MemLdPr RsFrm
  loc_9ED8A5:  = Me.RecordCount
  loc_9ED8AA: ILdRf var_160
  loc_9ED8AD: LitI4 0
  loc_9ED8B2: GtI4
  loc_9ED8B3: BranchF loc_9ED8DF
  loc_9ED8B6: Call MoveFirst()
  loc_9ED8BB: ILdRf var_15C
  loc_9ED8BE: LitI4 1
  loc_9ED8C3: GtI4
  loc_9ED8C4: BranchF loc_9ED8DF
  loc_9ED8C7: LitVar_Missing var_98
  loc_9ED8CA: PopAdLdVar
  loc_9ED8CB: ILdRf var_15C
  loc_9ED8CE: LitI4 2
  loc_9ED8D3: SubI4
  loc_9ED8D4: FLdPr Me
  loc_9ED8D7: MemLdPr RsFrm
  loc_9ED8DA: Me.Move from_stack_1, from_stack_2
  loc_9ED8DF: ExitProcHresult
End Sub

Public Sub Encontrar(FormFirm, FechFirm) '9947E0
  'Data Table: 40CB28
  loc_994790: ILdRf FormFirm
  loc_994793: FStStrCopy var_88
  loc_994796: ILdRf FechFirm
  loc_994799: FStStrCopy var_8C
  loc_99479C: Call Requery()
  loc_9947A1: LitStr "FormFirm = '"
  loc_9947A4: ILdRf var_88
  loc_9947A7: ConcatStr
  loc_9947A8: FStStrNoPop var_90
  loc_9947AB: LitStr "'"
  loc_9947AE: ConcatStr
  loc_9947AF: PopTmpLdAdStr
  loc_9947B3: Call Find(from_stack_1v)
  loc_9947B8: FFreeStr var_90 = ""
  loc_9947BF: LitStr "FechFirm = '"
  loc_9947C2: ILdRf var_8C
  loc_9947C5: ConcatStr
  loc_9947C6: FStStrNoPop var_90
  loc_9947C9: LitStr "'"
  loc_9947CC: ConcatStr
  loc_9947CD: PopTmpLdAdStr
  loc_9947D1: Call Find(from_stack_1v)
  loc_9947D6: FFreeStr var_90 = ""
  loc_9947DD: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '971834
  'Data Table: 40CB28
  loc_97180C: ILdRf sSelect
  loc_97180F: FStStrCopy var_88
  loc_971812: FLdPr Me
  loc_971815: MemLdRfVar from_stack_1.RsFrm
  loc_971818: ILdRf var_88
  loc_97181B: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_971820: LitVarStr var_98, "Primary"
  loc_971825: PopAdLdVar
  loc_971826: FLdPr Me
  loc_971829: LateIdCall
  loc_971831: ExitProcHresult
  loc_971832: FStStrNoPop var_4FF0
End Sub

Public Sub EjecutarRsCls(sSelect) '95FA88
  'Data Table: 40CB28
  loc_95FA70: ILdRf sSelect
  loc_95FA73: FStStrCopy var_88
  loc_95FA76: FLdPr Me
  loc_95FA79: MemLdRfVar from_stack_1.global_56
  loc_95FA7C: ILdRf var_88
  loc_95FA7F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95FA84: ExitProcHresult
  loc_95FA85: StAryMove
End Sub

Public Sub Requery() '9684D0
  'Data Table: 40CB28
  loc_9684B0: FLdPr Me
  loc_9684B3: MemLdRfVar from_stack_1.RsFrm
  loc_9684B6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9684BB: LitVarStr var_94, "Primary"
  loc_9684C0: PopAdLdVar
  loc_9684C1: FLdPr Me
  loc_9684C4: LateIdCall
  loc_9684CC: ExitProcHresult
  loc_9684CD: NewIfNullPr Me
End Sub

Public Property Get DataSource() '971A58
  'Data Table: 40CB28
  loc_971A34: ZeroRetVal
  loc_971A36: FLdRfVar var_8C
  loc_971A39: FLdPr Me
  loc_971A3C: MemLdPr RsFrm
  loc_971A3F:  = Me.DataSource
  loc_971A44: ILdRf var_8C
  loc_971A47: CastAd
  loc_971A4A: FStAdFunc var_88
  loc_971A4D: FFree1Ad var_8C
  loc_971A50: ExitProcCbHresult
  loc_971A56: ExitProc
End Sub

Public Function ValidaClave(FormFirm, FechFirm) '9B7884
  'Data Table: 40CB28
  loc_9B77EC: ILdRf FormFirm
  loc_9B77EF: FStStrCopy var_8C
  loc_9B77F2: ILdRf FechFirm
  loc_9B77F5: FStStrCopy var_90
  loc_9B77F8: ZeroRetVal
  loc_9B77FA: LitStr "SELECT FormFirm FROM firma WHERE FormFirm = '"
  loc_9B77FD: ILdRf var_8C
  loc_9B7800: ConcatStr
  loc_9B7801: FStStrNoPop ValidaClave
  loc_9B7804: LitStr "' AND FechFirm = '"
  loc_9B7807: ConcatStr
  loc_9B7808: CVarStr var_E4
  loc_9B780B: LitI4 1
  loc_9B7810: LitI4 1
  loc_9B7815: LitVarStr var_B4, "yyyy-mm-dd"
  loc_9B781A: FStVarCopyObj var_C4
  loc_9B781D: FLdRfVar var_C4
  loc_9B7820: FLdRfVar var_90
  loc_9B7823: CVarRef
  loc_9B7828: FLdRfVar var_D4
  loc_9B782B: ImpAdCallFPR4  = Format(, )
  loc_9B7830: FLdRfVar var_D4
  loc_9B7833: ConcatVar var_F4
  loc_9B7837: LitVarStr var_104, "'"
  loc_9B783C: ConcatVar var_114
  loc_9B7840: CStrVarVal var_118
  loc_9B7844: Call EjecutarRsCls(from_stack_1v)
  loc_9B7849: FFreeStr ValidaClave = ""
  loc_9B7850: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_F4 = ""
  loc_9B785D: FLdRfVar var_11C
  loc_9B7860: FLdPr Me
  loc_9B7863: MemLdPr global_56
  loc_9B7866:  = Me.RecordCount
  loc_9B786B: ILdRf var_11C
  loc_9B786E: LitI4 0
  loc_9B7873: GtI4
  loc_9B7874: BranchF loc_9B787D
  loc_9B7877: LitStr "El Firmante YA EXISTE. Verifique..."
  loc_9B787A: FStStrCopy var_88
  loc_9B787D: ExitProcCbHresult
End Function

Public Function UltimaFechFirm(FormFirm) '9C08EC
  'Data Table: 40CB28
  loc_9C0838: ILdRf FormFirm
  loc_9C083B: FStStrCopy var_8C
  loc_9C083E: ZeroRetVal
  loc_9C0840: LitStr "SELECT FechFirm FROM firma WHERE FormFirm = '"
  loc_9C0843: ILdRf var_8C
  loc_9C0846: ConcatStr
  loc_9C0847: FStStrNoPop var_90
  loc_9C084A: LitStr "' ORDER BY FechFirm DESC LIMIT 1"
  loc_9C084D: ConcatStr
  loc_9C084E: FStStrNoPop UltimaFechFirm
  loc_9C0851: Call EjecutarRsCls(from_stack_1v)
  loc_9C0856: FFreeStr var_90 = ""
  loc_9C085D: FLdRfVar var_98
  loc_9C0860: FLdPr Me
  loc_9C0863: MemLdPr global_56
  loc_9C0866:  = Me.RecordCount
  loc_9C086B: ILdRf var_98
  loc_9C086E: LitI4 0
  loc_9C0873: GtI4
  loc_9C0874: BranchF loc_9C08B5
  loc_9C0877: FLdRfVar var_C0
  loc_9C087A: FLdRfVar var_B0
  loc_9C087D: LitVarStr var_AC, "FechFirm"
  loc_9C0882: PopAdLdVar
  loc_9C0883: FLdRfVar var_9C
  loc_9C0886: FLdPr Me
  loc_9C0889: MemLdPr global_56
  loc_9C088C:  = Me.Fields
  loc_9C0891: FLdPr var_9C
  loc_9C0894: from_stack_2 = Me.Item(from_stack_1)
  loc_9C0899: FLdPr var_B0
  loc_9C089C:  = Me.Value
  loc_9C08A1: FLdRfVar var_C0
  loc_9C08A4: CStrVarTmp
  loc_9C08A5: FStStr var_88
  loc_9C08A8: FFreeAd var_9C = ""
  loc_9C08AF: FFree1Var var_C0 = ""
  loc_9C08B2: Branch loc_9C08E4
  loc_9C08B5: LitI4 1
  loc_9C08BA: LitI4 1
  loc_9C08BF: LitVarStr var_D0, "yyyy-mm-dd"
  loc_9C08C4: FStVarCopyObj var_E0
  loc_9C08C7: FLdRfVar var_E0
  loc_9C08CA: LitVarStr var_AC, "01/01/2018"
  loc_9C08CF: FStVarCopyObj var_C0
  loc_9C08D2: FLdRfVar var_C0
  loc_9C08D5: ImpAdCallI2 Format$(, )
  loc_9C08DA: FStStr var_88
  loc_9C08DD: FFreeVar var_C0 = ""
  loc_9C08E4: ExitProcCbHresult
End Function

Private Function Proc_12_26_9717D4() '9717D4
  'Data Table: 40CB28
  loc_9717B0: LitStr "Primary"
  loc_9717B3: FLdPr Me
  loc_9717B6: LateIdLdVar var_94 DispID_4 0
  loc_9717BD: CastAdVar Me
  loc_9717C1: FStAdFunc var_98
  loc_9717C4: FLdPr var_98
  loc_9717CC: FFree1Ad var_98
  loc_9717CF: FFree1Var var_94 = ""
  loc_9717D2: ExitProcHresult
End Function

Private Function Proc_12_27_96851C(arg_C) '96851C
  'Data Table: 40CB28
  loc_968500: ILdI4 arg_C
  loc_968503: FStStrCopy var_88
  loc_968506: ILdRf var_88
  loc_968509: LitStr "Primary"
  loc_96850C: EqStr
  loc_96850E: BranchF loc_96851B
  loc_968511: FLdPr Me
  loc_968514: MemLdStr RsFrm
  loc_968517: IStAd
  loc_96851B: ExitProcHresult
End Function
