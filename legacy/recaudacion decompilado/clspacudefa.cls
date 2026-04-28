VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clspacudefa"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Move(iValor) '9E97DC
  'Data Table: 43F3D4
  loc_9E97BC: LitVar_Missing var_98
  loc_9E97BF: PopAdLdVar
  loc_9E97C0: ILdI2 iValor
  loc_9E97C3: CI4UI1
  loc_9E97C4: FLdRfVar var_88
  loc_9E97C7: FLdPr Me
  loc_9E97CA: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9E97CF: FLdPr var_88
  loc_9E97D2: Me.Move from_stack_1, from_stack_2
  loc_9E97D7: FFree1Ad var_88
  loc_9E97DA: ExitProcHresult
  loc_9E97DB: CStrVarTmp
End Sub

Public Sub MoveFirst() 'A0E894
  'Data Table: 43F3D4
  loc_A0E858: FLdRfVar var_8C
  loc_A0E85B: FLdRfVar var_88
  loc_A0E85E: FLdPr Me
  loc_A0E861: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A0E866: FLdPr var_88
  loc_A0E869:  = Me.RecordCount
  loc_A0E86E: ILdRf var_8C
  loc_A0E871: LitI4 0
  loc_A0E876: GtI4
  loc_A0E877: FFree1Ad var_88
  loc_A0E87A: BranchF loc_A0E893
  loc_A0E87D: FLdRfVar var_88
  loc_A0E880: FLdPr Me
  loc_A0E883: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A0E888: FLdPr var_88
  loc_A0E88B: Me.MoveFirst
  loc_A0E890: FFree1Ad var_88
  loc_A0E893: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0E824
  'Data Table: 43F3D4
  loc_A0E7E8: FLdRfVar var_8C
  loc_A0E7EB: FLdRfVar var_88
  loc_A0E7EE: FLdPr Me
  loc_A0E7F1: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A0E7F6: FLdPr var_88
  loc_A0E7F9:  = Me.RecordCount
  loc_A0E7FE: ILdRf var_8C
  loc_A0E801: LitI4 0
  loc_A0E806: GtI4
  loc_A0E807: FFree1Ad var_88
  loc_A0E80A: BranchF loc_A0E823
  loc_A0E80D: FLdRfVar var_88
  loc_A0E810: FLdPr Me
  loc_A0E813: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A0E818: FLdPr var_88
  loc_A0E81B: Me.MoveLast
  loc_A0E820: FFree1Ad var_88
  loc_A0E823: ExitProcHresult
End Sub

Public Sub MoveNext() 'A99724
  'Data Table: 43F3D4
  loc_A99668: FLdRfVar var_8A
  loc_A9966B: FLdRfVar var_88
  loc_A9966E: FLdPr Me
  loc_A99671: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A99676: FLdPr var_88
  loc_A99679:  = Me.EOF
  loc_A9967E: FLdI2 var_8A
  loc_A99681: NotI4
  loc_A99682: FLdRfVar var_94
  loc_A99685: FLdRfVar var_90
  loc_A99688: FLdPr Me
  loc_A9968B: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A99690: FLdPr var_90
  loc_A99693:  = Me.RecordCount
  loc_A99698: ILdRf var_94
  loc_A9969B: LitI4 0
  loc_A996A0: GtI4
  loc_A996A1: AndI4
  loc_A996A2: FFreeAd var_88 = ""
  loc_A996A9: BranchF loc_A996C2
  loc_A996AC: FLdRfVar var_88
  loc_A996AF: FLdPr Me
  loc_A996B2: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A996B7: FLdPr var_88
  loc_A996BA: Me.MoveNext
  loc_A996BF: FFree1Ad var_88
  loc_A996C2: FLdRfVar var_8A
  loc_A996C5: FLdRfVar var_88
  loc_A996C8: FLdPr Me
  loc_A996CB: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A996D0: FLdPr var_88
  loc_A996D3:  = Me.EOF
  loc_A996D8: FLdI2 var_8A
  loc_A996DB: FLdRfVar var_94
  loc_A996DE: FLdRfVar var_90
  loc_A996E1: FLdPr Me
  loc_A996E4: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A996E9: FLdPr var_90
  loc_A996EC:  = Me.RecordCount
  loc_A996F1: ILdRf var_94
  loc_A996F4: LitI4 0
  loc_A996F9: GtI4
  loc_A996FA: AndI4
  loc_A996FB: FFreeAd var_88 = ""
  loc_A99702: BranchF loc_A99720
  loc_A99705: ImpAdCallFPR4 Beep()
  loc_A9970A: FLdRfVar var_88
  loc_A9970D: FLdPr Me
  loc_A99710: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A99715: FLdPr var_88
  loc_A99718: Me.MoveLast
  loc_A9971D: FFree1Ad var_88
  loc_A99720: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D7EF8
  'Data Table: 43F3D4
  loc_9D7EE0: FLdRfVar var_88
  loc_9D7EE3: FLdPr Me
  loc_9D7EE6: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9D7EEB: FLdPr var_88
  loc_9D7EEE: Me.MoveNext
  loc_9D7EF3: FFree1Ad var_88
  loc_9D7EF6: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9A1A0
  'Data Table: 43F3D4
  loc_A9A0E4: FLdRfVar var_8A
  loc_A9A0E7: FLdRfVar var_88
  loc_A9A0EA: FLdPr Me
  loc_A9A0ED: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A9A0F2: FLdPr var_88
  loc_A9A0F5:  = Me.BOF
  loc_A9A0FA: FLdI2 var_8A
  loc_A9A0FD: NotI4
  loc_A9A0FE: FLdRfVar var_94
  loc_A9A101: FLdRfVar var_90
  loc_A9A104: FLdPr Me
  loc_A9A107: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A9A10C: FLdPr var_90
  loc_A9A10F:  = Me.RecordCount
  loc_A9A114: ILdRf var_94
  loc_A9A117: LitI4 0
  loc_A9A11C: GtI4
  loc_A9A11D: AndI4
  loc_A9A11E: FFreeAd var_88 = ""
  loc_A9A125: BranchF loc_A9A13E
  loc_A9A128: FLdRfVar var_88
  loc_A9A12B: FLdPr Me
  loc_A9A12E: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A9A133: FLdPr var_88
  loc_A9A136: Me.MovePrevious
  loc_A9A13B: FFree1Ad var_88
  loc_A9A13E: FLdRfVar var_8A
  loc_A9A141: FLdRfVar var_88
  loc_A9A144: FLdPr Me
  loc_A9A147: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A9A14C: FLdPr var_88
  loc_A9A14F:  = Me.BOF
  loc_A9A154: FLdI2 var_8A
  loc_A9A157: FLdRfVar var_94
  loc_A9A15A: FLdRfVar var_90
  loc_A9A15D: FLdPr Me
  loc_A9A160: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A9A165: FLdPr var_90
  loc_A9A168:  = Me.RecordCount
  loc_A9A16D: ILdRf var_94
  loc_A9A170: LitI4 0
  loc_A9A175: GtI4
  loc_A9A176: AndI4
  loc_A9A177: FFreeAd var_88 = ""
  loc_A9A17E: BranchF loc_A9A19C
  loc_A9A181: ImpAdCallFPR4 Beep()
  loc_A9A186: FLdRfVar var_88
  loc_A9A189: FLdPr Me
  loc_A9A18C: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A9A191: FLdPr var_88
  loc_A9A194: Me.MoveFirst
  loc_A9A199: FFree1Ad var_88
  loc_A9A19C: ExitProcHresult
  loc_A9A19D: CStrVarTmp
End Sub

Public Property Get EOF() '9FAF44
  'Data Table: 43F3D4
  loc_9FAF1C: FLdRfVar var_8E
  loc_9FAF1F: FLdRfVar var_8C
  loc_9FAF22: FLdPr Me
  loc_9FAF25: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FAF2A: FLdPr var_8C
  loc_9FAF2D:  = Me.EOF
  loc_9FAF32: FLdI2 var_8E
  loc_9FAF35: FStI2 var_86
  loc_9FAF38: FFree1Ad var_8C
  loc_9FAF3B: ExitProcCbHresult
End Sub

Public Property Get BOF() '9FAFFC
  'Data Table: 43F3D4
  loc_9FAFD4: FLdRfVar var_8E
  loc_9FAFD7: FLdRfVar var_8C
  loc_9FAFDA: FLdPr Me
  loc_9FAFDD: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FAFE2: FLdPr var_8C
  loc_9FAFE5:  = Me.BOF
  loc_9FAFEA: FLdI2 var_8E
  loc_9FAFED: FStI2 var_86
  loc_9FAFF0: FFree1Ad var_8C
  loc_9FAFF3: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E3F2C
  'Data Table: 43F3D4
  loc_9E3F10: ILdI4 sOrden
  loc_9E3F13: FLdRfVar var_88
  loc_9E3F16: FLdPr Me
  loc_9E3F19: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9E3F1E: FLdPr var_88
  loc_9E3F21: Me.Sort = from_stack_1
  loc_9E3F26: FFree1Ad var_88
  loc_9E3F29: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F90B8
  'Data Table: 43F3D4
  loc_9F9090: LitVar_Missing var_98
  loc_9F9093: PopAdLdVar
  loc_9F9094: LitI4 1
  loc_9F9099: LitI4 0
  loc_9F909E: ILdI4 sFind
  loc_9F90A1: FLdRfVar var_88
  loc_9F90A4: FLdPr Me
  loc_9F90A7: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9F90AC: FLdPr var_88
  loc_9F90AF: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F90B4: FFree1Ad var_88
  loc_9F90B7: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9FB0B4
  'Data Table: 43F3D4
  loc_9FB08C: FLdRfVar var_90
  loc_9FB08F: FLdRfVar var_8C
  loc_9FB092: FLdPr Me
  loc_9FB095: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FB09A: FLdPr var_8C
  loc_9FB09D:  = Me.AbsolutePosition
  loc_9FB0A2: ILdRf var_90
  loc_9FB0A5: FStR4 var_88
  loc_9FB0A8: FFree1Ad var_8C
  loc_9FB0AB: ExitProcCbHresult
  loc_9FB0B1: CExtInstUnk
End Sub

Public Property Get RecordCount() '9FB110
  'Data Table: 43F3D4
  loc_9FB0E8: FLdRfVar var_90
  loc_9FB0EB: FLdRfVar var_8C
  loc_9FB0EE: FLdPr Me
  loc_9FB0F1: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FB0F6: FLdPr var_8C
  loc_9FB0F9:  = Me.RecordCount
  loc_9FB0FE: ILdRf var_90
  loc_9FB101: FStR4 var_88
  loc_9FB104: FFree1Ad var_8C
  loc_9FB107: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriBole, NumeBole, CodiFapa, CuotDefa, EstaPcdf, CapiPcdf, DecaPcdf, RecaPcdf, DerePcdf, RemoPcdf, AprePcdf, IntePcdf, TotaPcdf) 'B30870
  'Data Table: 43F3D4
  loc_B30628: ILdRf EstaPcdf
  loc_B3062B: FStStrCopy var_88
  loc_B3062E: LitStr "INSERT INTO pacudefa (PeriBole, NumeBole, CodiFapa, CuotDefa, EstaPcdf, CapiPcdf, DecaPcdf, RecaPcdf, DerePcdf, RemoPcdf, AprePcdf, IntePcdf, TotaPcdf) VALUES ("
  loc_B30631: FLdI2 PeriBole
  loc_B30634: CStrUI1
  loc_B30636: FStStrNoPop var_8C
  loc_B30639: ConcatStr
  loc_B3063A: FStStrNoPop var_90
  loc_B3063D: LitStr ","
  loc_B30640: ConcatStr
  loc_B30641: FStStrNoPop var_94
  loc_B30644: ILdRf NumeBole
  loc_B30647: CStrI4
  loc_B30649: FStStrNoPop var_98
  loc_B3064C: ConcatStr
  loc_B3064D: FStStrNoPop var_9C
  loc_B30650: LitStr ","
  loc_B30653: ConcatStr
  loc_B30654: FStStrNoPop var_A0
  loc_B30657: ILdRf CodiFapa
  loc_B3065A: CStrI4
  loc_B3065C: FStStrNoPop var_A4
  loc_B3065F: ConcatStr
  loc_B30660: FStStrNoPop var_A8
  loc_B30663: LitStr ","
  loc_B30666: ConcatStr
  loc_B30667: FStStrNoPop var_AC
  loc_B3066A: FLdI2 CuotDefa
  loc_B3066D: CStrUI1
  loc_B3066F: FStStrNoPop var_B0
  loc_B30672: ConcatStr
  loc_B30673: FStStrNoPop var_B4
  loc_B30676: LitStr ",'"
  loc_B30679: ConcatStr
  loc_B3067A: FStStrNoPop var_B8
  loc_B3067D: ILdRf var_88
  loc_B30680: ConcatStr
  loc_B30681: FStStrNoPop var_BC
  loc_B30684: LitStr "',"
  loc_B30687: ConcatStr
  loc_B30688: FStStrNoPop var_C4
  loc_B3068B: LitI4 0
  loc_B30690: LitI4 -1
  loc_B30695: LitI4 1
  loc_B3069A: LitStr "."
  loc_B3069D: LitStr ","
  loc_B306A0: FLdFPR8 CapiPcdf
  loc_B306A3: CStrR8
  loc_B306A5: FStStrNoPop var_C0
  loc_B306A8: ImpAdCallI2 Replace(, , , , , )
  loc_B306AD: FStStrNoPop var_C8
  loc_B306B0: ConcatStr
  loc_B306B1: FStStrNoPop var_CC
  loc_B306B4: LitStr ","
  loc_B306B7: ConcatStr
  loc_B306B8: FStStrNoPop var_D4
  loc_B306BB: LitI4 0
  loc_B306C0: LitI4 -1
  loc_B306C5: LitI4 1
  loc_B306CA: LitStr "."
  loc_B306CD: LitStr ","
  loc_B306D0: FLdFPR8 RecaPcdf
  loc_B306D3: CStrR8
  loc_B306D5: FStStrNoPop var_D0
  loc_B306D8: ImpAdCallI2 Replace(, , , , , )
  loc_B306DD: FStStrNoPop var_D8
  loc_B306E0: ConcatStr
  loc_B306E1: FStStrNoPop var_DC
  loc_B306E4: LitStr ","
  loc_B306E7: ConcatStr
  loc_B306E8: FStStrNoPop var_E4
  loc_B306EB: LitI4 0
  loc_B306F0: LitI4 -1
  loc_B306F5: LitI4 1
  loc_B306FA: LitStr "."
  loc_B306FD: LitStr ","
  loc_B30700: FLdFPR8 RemoPcdf
  loc_B30703: CStrR8
  loc_B30705: FStStrNoPop var_E0
  loc_B30708: ImpAdCallI2 Replace(, , , , , )
  loc_B3070D: FStStrNoPop var_E8
  loc_B30710: ConcatStr
  loc_B30711: FStStrNoPop var_EC
  loc_B30714: LitStr ","
  loc_B30717: ConcatStr
  loc_B30718: FStStrNoPop var_F4
  loc_B3071B: LitI4 0
  loc_B30720: LitI4 -1
  loc_B30725: LitI4 1
  loc_B3072A: LitStr "."
  loc_B3072D: LitStr ","
  loc_B30730: FLdFPR8 IntePcdf
  loc_B30733: CStrR8
  loc_B30735: FStStrNoPop var_F0
  loc_B30738: ImpAdCallI2 Replace(, , , , , )
  loc_B3073D: FStStrNoPop var_F8
  loc_B30740: ConcatStr
  loc_B30741: FStStrNoPop var_FC
  loc_B30744: LitStr ","
  loc_B30747: ConcatStr
  loc_B30748: FStStrNoPop var_104
  loc_B3074B: LitI4 0
  loc_B30750: LitI4 -1
  loc_B30755: LitI4 1
  loc_B3075A: LitStr "."
  loc_B3075D: LitStr ","
  loc_B30760: FLdFPR8 AddNew0
  loc_B30763: CStrR8
  loc_B30765: FStStrNoPop var_100
  loc_B30768: ImpAdCallI2 Replace(, , , , , )
  loc_B3076D: FStStrNoPop var_108
  loc_B30770: ConcatStr
  loc_B30771: FStStrNoPop var_10C
  loc_B30774: LitStr ","
  loc_B30777: ConcatStr
  loc_B30778: FStStrNoPop var_114
  loc_B3077B: LitI4 0
  loc_B30780: LitI4 -1
  loc_B30785: LitI4 1
  loc_B3078A: LitStr "."
  loc_B3078D: LitStr ","
  loc_B30790: FLdFPR8 AddNew8
  loc_B30793: CStrR8
  loc_B30795: FStStrNoPop var_110
  loc_B30798: ImpAdCallI2 Replace(, , , , , )
  loc_B3079D: FStStrNoPop var_118
  loc_B307A0: ConcatStr
  loc_B307A1: FStStrNoPop var_11C
  loc_B307A4: LitStr ","
  loc_B307A7: ConcatStr
  loc_B307A8: FStStrNoPop var_124
  loc_B307AB: LitI4 0
  loc_B307B0: LitI4 -1
  loc_B307B5: LitI4 1
  loc_B307BA: LitStr "."
  loc_B307BD: LitStr ","
  loc_B307C0: FLdFPR8 arg_50
  loc_B307C3: CStrR8
  loc_B307C5: FStStrNoPop var_120
  loc_B307C8: ImpAdCallI2 Replace(, , , , , )
  loc_B307CD: FStStrNoPop var_128
  loc_B307D0: ConcatStr
  loc_B307D1: FStStrNoPop var_12C
  loc_B307D4: LitStr ","
  loc_B307D7: ConcatStr
  loc_B307D8: FStStrNoPop var_134
  loc_B307DB: LitI4 0
  loc_B307E0: LitI4 -1
  loc_B307E5: LitI4 1
  loc_B307EA: LitStr "."
  loc_B307ED: LitStr ","
  loc_B307F0: FLdFPR8 arg_58
  loc_B307F3: CStrR8
  loc_B307F5: FStStrNoPop var_130
  loc_B307F8: ImpAdCallI2 Replace(, , , , , )
  loc_B307FD: FStStrNoPop var_138
  loc_B30800: ConcatStr
  loc_B30801: FStStrNoPop var_13C
  loc_B30804: LitStr ");"
  loc_B30807: ConcatStr
  loc_B30808: FStStrNoPop var_140
  loc_B3080B: Call EjecutarRs2(from_stack_1v)
  loc_B30810: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B3086F: ExitProcHresult
End Sub

Public Sub Delete() 'A2302C
  'Data Table: 43F3D4
  loc_A22FE4: FLdRfVar var_8C
  loc_A22FE7: FLdRfVar var_88
  loc_A22FEA: FLdPr Me
  loc_A22FED: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A22FF2: FLdPr var_88
  loc_A22FF5:  = Me.RecordCount
  loc_A22FFA: ILdRf var_8C
  loc_A22FFD: LitI4 0
  loc_A23002: GtI4
  loc_A23003: FFree1Ad var_88
  loc_A23006: BranchF loc_A23029
  loc_A23009: LitI4 1
  loc_A2300E: FLdRfVar var_88
  loc_A23011: FLdPr Me
  loc_A23014: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A23019: FLdPr var_88
  loc_A2301C: Me.Delete
  loc_A23021: FFree1Ad var_88
  loc_A23024: Call MoveNext()
  loc_A23029: ExitProcHresult
End Sub

Public Sub Requery() 'A04CDC
  'Data Table: 43F3D4
  loc_A04CAC: LitI4 -1
  loc_A04CB1: FLdRfVar var_88
  loc_A04CB4: FLdPr Me
  loc_A04CB7: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A04CBC: FLdPr var_88
  loc_A04CBF: Me.Requery from_stack_1
  loc_A04CC4: FFree1Ad var_88
  loc_A04CC7: LitVarStr var_98, "Primary"
  loc_A04CCC: PopAdLdVar
  loc_A04CCD: FLdPr Me
  loc_A04CD0: LateIdCall
  loc_A04CD8: ExitProcHresult
End Sub

Public Sub Update() 'A23120
  'Data Table: 43F3D4
  loc_A230DC: FLdRfVar var_88
  loc_A230DF: FLdPr Me
  loc_A230E2: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A230E7: FLdZeroAd var_88
  loc_A230EA: FStAdFunc var_8C
  loc_A230ED: LitI4 3
  loc_A230F2: FLdPr var_8C
  loc_A230F5: Me.UpdateBatch
  loc_A230FA: FLdRfVar var_90
  loc_A230FD: FLdPr var_8C
  loc_A23100:  = Me.EditMode
  loc_A23105: ILdRf var_90
  loc_A23108: LitI4 2
  loc_A2310D: EqI4
  loc_A2310E: BranchF loc_A23116
  loc_A23111: Call MoveLast()
  loc_A23116: LitNothing
  loc_A23118: FStAd var_8C 
  loc_A2311C: ExitProcHresult
  loc_A2311D: FLdFPR8 var_BC
End Sub

Public Sub Cancel() 'A449DC
  'Data Table: 43F3D4
  loc_A44988: FLdRfVar var_88
  loc_A4498B: FLdPr Me
  loc_A4498E: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A44993: FLdZeroAd var_88
  loc_A44996: FStAdFunc var_8C
  loc_A44999: FLdRfVar var_90
  loc_A4499C: FLdPr var_8C
  loc_A4499F:  = Me.RecordCount
  loc_A449A4: ILdRf var_90
  loc_A449A7: LitI4 0
  loc_A449AC: GtI4
  loc_A449AD: BranchF loc_A449D4
  loc_A449B0: FLdPr var_8C
  loc_A449B3: Me.CancelUpdate
  loc_A449B8: FLdRfVar var_90
  loc_A449BB: FLdPr var_8C
  loc_A449BE:  = Me.EditMode
  loc_A449C3: ILdRf var_90
  loc_A449C6: LitI4 2
  loc_A449CB: EqI4
  loc_A449CC: BranchF loc_A449D4
  loc_A449CF: Call MoveFirst()
  loc_A449D4: LitNothing
  loc_A449D6: FStAd var_8C 
  loc_A449DA: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FCFF4
  'Data Table: 43F3D4
  loc_9FCFC8: FLdRfVar var_90
  loc_9FCFCB: FLdRfVar var_8C
  loc_9FCFCE: FLdPr Me
  loc_9FCFD1: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FCFD6: FLdPr var_8C
  loc_9FCFD9:  = Me.EditMode
  loc_9FCFDE: ILdRf var_90
  loc_9FCFE1: LitI4 0
  loc_9FCFE6: NeI4
  loc_9FCFE7: FStI2 var_86
  loc_9FCFEA: FFree1Ad var_8C
  loc_9FCFED: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6E878
  'Data Table: 43F3D4
  loc_A6E804: ILdRf sSelect
  loc_A6E807: FStStrCopy var_88
  loc_A6E80A: LitNothing
  loc_A6E80C: CastAd
  loc_A6E80F: FStAdFuncNoPop
  loc_A6E812: FLdPr Me
  loc_A6E815: Call clspacudefa.global_4453212Set(from_stack_1v)
  loc_A6E81A: FFree1Ad var_8C
  loc_A6E81D: New Recordset
  loc_A6E821: FStAdFuncNoPop
  loc_A6E824: FLdPr Me
  loc_A6E827: Call clspacudefa.global_4453212Set(from_stack_1v)
  loc_A6E82C: FFree1Ad var_8C
  loc_A6E82F: LitI4 -1
  loc_A6E834: LitI4 3
  loc_A6E839: LitI4 3
  loc_A6E83E: ImpAdLdI4 MemVar_D9301C
  loc_A6E841: CVarAd
  loc_A6E845: PopAdLdVar
  loc_A6E846: ILdRf var_88
  loc_A6E849: CVarStr var_9C
  loc_A6E84C: PopAdLdVar
  loc_A6E84D: FLdRfVar var_8C
  loc_A6E850: FLdPr Me
  loc_A6E853: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A6E858: FLdPr var_8C
  loc_A6E85B: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6E860: FFree1Ad var_8C
  loc_A6E863: LitVarStr var_9C, "Primary"
  loc_A6E868: PopAdLdVar
  loc_A6E869: FLdPr Me
  loc_A6E86C: LateIdCall
  loc_A6E874: ExitProcHresult
  loc_A6E875: FLdFPR8 var_BC
End Sub

Public Sub EjecutarRs2(sSelect) 'A59910
  'Data Table: 43F3D4
  loc_A598B0: ILdRf sSelect
  loc_A598B3: FStStrCopy var_88
  loc_A598B6: LitNothing
  loc_A598B8: CastAd
  loc_A598BB: FStAdFuncNoPop
  loc_A598BE: FLdPr Me
  loc_A598C1: Call clspacudefa.global_4453212Set(from_stack_1v)
  loc_A598C6: FFree1Ad var_8C
  loc_A598C9: New Recordset
  loc_A598CD: FStAdFuncNoPop
  loc_A598D0: FLdPr Me
  loc_A598D3: Call clspacudefa.global_4453212Set(from_stack_1v)
  loc_A598D8: FFree1Ad var_8C
  loc_A598DB: LitI4 -1
  loc_A598E0: LitI4 3
  loc_A598E5: LitI4 3
  loc_A598EA: ImpAdLdI4 MemVar_D9301C
  loc_A598ED: CVarAd
  loc_A598F1: PopAdLdVar
  loc_A598F2: ILdRf var_88
  loc_A598F5: CVarStr var_9C
  loc_A598F8: PopAdLdVar
  loc_A598F9: FLdRfVar var_8C
  loc_A598FC: FLdPr Me
  loc_A598FF: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A59904: FLdPr var_8C
  loc_A59907: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5990C: FFree1Ad var_8C
  loc_A5990F: ExitProcHresult
End Sub

Public Property Get DataSource() 'A0A46C
  'Data Table: 43F3D4
  loc_A0A43C: ZeroRetVal
  loc_A0A43E: FLdRfVar var_90
  loc_A0A441: FLdRfVar var_8C
  loc_A0A444: FLdPr Me
  loc_A0A447: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A0A44C: FLdPr var_8C
  loc_A0A44F:  = Me.DataSource
  loc_A0A454: ILdRf var_90
  loc_A0A457: CastAd
  loc_A0A45A: FStAdFunc var_88
  loc_A0A45D: FFreeAd var_8C = ""
  loc_A0A464: ExitProcCbHresult
  loc_A0A46A: PopAdLdVar
End Sub

Public Property Get EditMode() '9F9D4C
  'Data Table: 43F3D4
  loc_9F9D24: FLdRfVar var_90
  loc_9F9D27: FLdRfVar var_8C
  loc_9F9D2A: FLdPr Me
  loc_9F9D2D: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9F9D32: FLdPr var_8C
  loc_9F9D35:  = Me.EditMode
  loc_9F9D3A: ILdRf var_90
  loc_9F9D3D: FStR4 var_88
  loc_9F9D40: FFree1Ad var_8C
  loc_9F9D43: ExitProcCbHresult
  loc_9F9D49: StUdtVar
End Sub

Public Property Get PeriBole() 'A44344
  'Data Table: 43F3D4
  loc_A442F8: FLdRfVar var_B4
  loc_A442FB: FLdRfVar var_A4
  loc_A442FE: LitVarStr var_A0, "PeriBole"
  loc_A44303: PopAdLdVar
  loc_A44304: FLdRfVar var_90
  loc_A44307: FLdRfVar var_8C
  loc_A4430A: FLdPr Me
  loc_A4430D: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A44312: FLdPr var_8C
  loc_A44315:  = Me.Fields
  loc_A4431A: FLdPr var_90
  loc_A4431D: from_stack_2 = Me.Item(from_stack_1)
  loc_A44322: FLdPr var_A4
  loc_A44325:  = Me.Value
  loc_A4432A: FLdRfVar var_B4
  loc_A4432D: CI2Var
  loc_A4432E: FStI2 var_86
  loc_A44331: FFreeAd var_8C = "": var_90 = ""
  loc_A4433A: FFree1Var var_B4 = ""
  loc_A4433D: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '9EA078
  'Data Table: 43F3D4
  loc_9EA054: FLdI2 vDato
  loc_9EA057: CVarI2 var_A8
  loc_9EA05A: PopAdLdVar
  loc_9EA05B: LitVarStr var_98, "PeriBole"
  loc_9EA060: PopAdLdVar
  loc_9EA061: FLdRfVar var_88
  loc_9EA064: FLdPr Me
  loc_9EA067: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9EA06C: FLdPr var_88
  loc_9EA06F: Me.Collect = from_stack_1
  loc_9EA074: FFree1Ad var_88
  loc_9EA077: ExitProcHresult
End Sub

Public Property Get NumeBole() 'A44F4C
  'Data Table: 43F3D4
  loc_A44F00: FLdRfVar var_B4
  loc_A44F03: FLdRfVar var_A4
  loc_A44F06: LitVarStr var_A0, "NumeBole"
  loc_A44F0B: PopAdLdVar
  loc_A44F0C: FLdRfVar var_90
  loc_A44F0F: FLdRfVar var_8C
  loc_A44F12: FLdPr Me
  loc_A44F15: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A44F1A: FLdPr var_8C
  loc_A44F1D:  = Me.Fields
  loc_A44F22: FLdPr var_90
  loc_A44F25: from_stack_2 = Me.Item(from_stack_1)
  loc_A44F2A: FLdPr var_A4
  loc_A44F2D:  = Me.Value
  loc_A44F32: FLdRfVar var_B4
  loc_A44F35: CI4Var
  loc_A44F37: FStR4 var_88
  loc_A44F3A: FFreeAd var_8C = "": var_90 = ""
  loc_A44F43: FFree1Var var_B4 = ""
  loc_A44F46: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '9FB788
  'Data Table: 43F3D4
  loc_9FB760: ILdRf vDato
  loc_9FB763: CVarI4
  loc_9FB767: PopAdLdVar
  loc_9FB768: LitVarStr var_98, "NumeBole"
  loc_9FB76D: PopAdLdVar
  loc_9FB76E: FLdRfVar var_88
  loc_9FB771: FLdPr Me
  loc_9FB774: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FB779: FLdPr var_88
  loc_9FB77C: Me.Collect = from_stack_1
  loc_9FB781: FFree1Ad var_88
  loc_9FB784: ExitProcHresult
End Sub

Public Property Get CodiFapa() 'A4445C
  'Data Table: 43F3D4
  loc_A44410: FLdRfVar var_B4
  loc_A44413: FLdRfVar var_A4
  loc_A44416: LitVarStr var_A0, "CodiFapa"
  loc_A4441B: PopAdLdVar
  loc_A4441C: FLdRfVar var_90
  loc_A4441F: FLdRfVar var_8C
  loc_A44422: FLdPr Me
  loc_A44425: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A4442A: FLdPr var_8C
  loc_A4442D:  = Me.Fields
  loc_A44432: FLdPr var_90
  loc_A44435: from_stack_2 = Me.Item(from_stack_1)
  loc_A4443A: FLdPr var_A4
  loc_A4443D:  = Me.Value
  loc_A44442: FLdRfVar var_B4
  loc_A44445: CI4Var
  loc_A44447: FStR4 var_88
  loc_A4444A: FFreeAd var_8C = "": var_90 = ""
  loc_A44453: FFree1Var var_B4 = ""
  loc_A44456: ExitProcCbHresult
End Sub

Public Property Let CodiFapa(vDato) '9FA814
  'Data Table: 43F3D4
  loc_9FA7EC: ILdRf vDato
  loc_9FA7EF: CVarI4
  loc_9FA7F3: PopAdLdVar
  loc_9FA7F4: LitVarStr var_98, "CodiFapa"
  loc_9FA7F9: PopAdLdVar
  loc_9FA7FA: FLdRfVar var_88
  loc_9FA7FD: FLdPr Me
  loc_9FA800: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FA805: FLdPr var_88
  loc_9FA808: Me.Collect = from_stack_1
  loc_9FA80D: FFree1Ad var_88
  loc_9FA810: ExitProcHresult
  loc_9FA811: FLdRfVar var_88
End Sub

Public Property Get CuotDefa() 'A456F4
  'Data Table: 43F3D4
  loc_A456A8: FLdRfVar var_B4
  loc_A456AB: FLdRfVar var_A4
  loc_A456AE: LitVarStr var_A0, "CuotDefa"
  loc_A456B3: PopAdLdVar
  loc_A456B4: FLdRfVar var_90
  loc_A456B7: FLdRfVar var_8C
  loc_A456BA: FLdPr Me
  loc_A456BD: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A456C2: FLdPr var_8C
  loc_A456C5:  = Me.Fields
  loc_A456CA: FLdPr var_90
  loc_A456CD: from_stack_2 = Me.Item(from_stack_1)
  loc_A456D2: FLdPr var_A4
  loc_A456D5:  = Me.Value
  loc_A456DA: FLdRfVar var_B4
  loc_A456DD: CI2Var
  loc_A456DE: FStI2 var_86
  loc_A456E1: FFreeAd var_8C = "": var_90 = ""
  loc_A456EA: FFree1Var var_B4 = ""
  loc_A456ED: ExitProcCbHresult
End Sub

Public Property Let CuotDefa(vDato) '9EA498
  'Data Table: 43F3D4
  loc_9EA474: FLdI2 vDato
  loc_9EA477: CVarI2 var_A8
  loc_9EA47A: PopAdLdVar
  loc_9EA47B: LitVarStr var_98, "CuotDefa"
  loc_9EA480: PopAdLdVar
  loc_9EA481: FLdRfVar var_88
  loc_9EA484: FLdPr Me
  loc_9EA487: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9EA48C: FLdPr var_88
  loc_9EA48F: Me.Collect = from_stack_1
  loc_9EA494: FFree1Ad var_88
  loc_9EA497: ExitProcHresult
End Sub

Public Property Get EstaPcdf() 'A55394
  'Data Table: 43F3D4
  loc_A55344: ZeroRetVal
  loc_A55346: FLdRfVar var_B4
  loc_A55349: FLdRfVar var_A4
  loc_A5534C: LitVarStr var_A0, "EstaPcdf"
  loc_A55351: PopAdLdVar
  loc_A55352: FLdRfVar var_90
  loc_A55355: FLdRfVar var_8C
  loc_A55358: FLdPr Me
  loc_A5535B: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A55360: FLdPr var_8C
  loc_A55363:  = Me.Fields
  loc_A55368: FLdPr var_90
  loc_A5536B: from_stack_2 = Me.Item(from_stack_1)
  loc_A55370: FLdPr var_A4
  loc_A55373:  = Me.Value
  loc_A55378: FLdRfVar var_B4
  loc_A5537B: CStrVarTmp
  loc_A5537C: FStStr var_88
  loc_A5537F: FFreeAd var_8C = "": var_90 = ""
  loc_A55388: FFree1Var var_B4 = ""
  loc_A5538B: ExitProcCbHresult
End Sub

Public Property Let EstaPcdf(vDato) 'A05E6C
  'Data Table: 43F3D4
  loc_A05E40: ILdRf vDato
  loc_A05E43: FStStrCopy var_88
  loc_A05E46: ILdRf var_88
  loc_A05E49: CVarStr var_AC
  loc_A05E4C: PopAdLdVar
  loc_A05E4D: LitVarStr var_9C, "EstaPcdf"
  loc_A05E52: PopAdLdVar
  loc_A05E53: FLdRfVar var_8C
  loc_A05E56: FLdPr Me
  loc_A05E59: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A05E5E: FLdPr var_8C
  loc_A05E61: Me.Collect = from_stack_1
  loc_A05E66: FFree1Ad var_8C
  loc_A05E69: ExitProcHresult
  loc_A05E6A: ExitProc
End Sub

Public Property Get FepaPcfp() 'A42EF0
  'Data Table: 43F3D4
  loc_A42EAC: ZeroRetValVar
  loc_A42EAE: FLdRfVar var_B0
  loc_A42EB1: LitVarStr var_AC, "FepaPcfp"
  loc_A42EB6: PopAdLdVar
  loc_A42EB7: FLdRfVar var_9C
  loc_A42EBA: FLdRfVar var_98
  loc_A42EBD: FLdPr Me
  loc_A42EC0: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A42EC5: FLdPr var_98
  loc_A42EC8:  = Me.Fields
  loc_A42ECD: FLdPr var_9C
  loc_A42ED0: from_stack_2 = Me.Item(from_stack_1)
  loc_A42ED5: FLdZeroAd var_B0
  loc_A42ED8: CVarAd
  loc_A42EDC: FStVar FepaPcfp
  loc_A42EE0: FFreeAd var_98 = ""
  loc_A42EE7: ExitProcCbHresult
  loc_A42EED: CCyI4
  loc_A42EEE: GtI2
End Sub

Public Property Let FepaPcfp(vDato) '9FC330
  'Data Table: 43F3D4
  loc_9FC308: FDupVar
  loc_9FC30E: FLdVar var_94
  loc_9FC312: LitVarStr var_A8, "FepaPcfp"
  loc_9FC317: PopAdLdVar
  loc_9FC318: FLdRfVar var_98
  loc_9FC31B: FLdPr Me
  loc_9FC31E: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FC323: FLdPr var_98
  loc_9FC326: Me.Collect = from_stack_1
  loc_9FC32B: FFree1Ad var_98
  loc_9FC32E: ExitProcHresult
End Sub

Public Property Get CapiPcdf() 'A459B0
  'Data Table: 43F3D4
  loc_A45964: FLdRfVar var_B8
  loc_A45967: FLdRfVar var_A8
  loc_A4596A: LitVarStr var_A4, "CapiPcdf"
  loc_A4596F: PopAdLdVar
  loc_A45970: FLdRfVar CapiPcdf
  loc_A45973: FLdRfVar var_90
  loc_A45976: FLdPr Me
  loc_A45979: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A4597E: FLdPr var_90
  loc_A45981:  = Me.Fields
  loc_A45986: FLdPr CapiPcdf
  loc_A45989: from_stack_2 = Me.Item(from_stack_1)
  loc_A4598E: FLdPr var_A8
  loc_A45991:  = Me.Value
  loc_A45996: FLdRfVar var_B8
  loc_A45999: CR4Var
  loc_A4599A: FStFPR8 var_8C
  loc_A4599D: FFreeAd var_90 = "": CapiPcdf = ""
  loc_A459A6: FFree1Var var_B8 = ""
  loc_A459A9: ExitProcCbHresult
End Sub

Public Property Get DecaPcdf() 'A4468C
  'Data Table: 43F3D4
  loc_A44640: FLdRfVar var_B8
  loc_A44643: FLdRfVar var_A8
  loc_A44646: LitVarStr var_A4, "DecaPcdf"
  loc_A4464B: PopAdLdVar
  loc_A4464C: FLdRfVar DecaPcdf
  loc_A4464F: FLdRfVar var_90
  loc_A44652: FLdPr Me
  loc_A44655: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A4465A: FLdPr var_90
  loc_A4465D:  = Me.Fields
  loc_A44662: FLdPr DecaPcdf
  loc_A44665: from_stack_2 = Me.Item(from_stack_1)
  loc_A4466A: FLdPr var_A8
  loc_A4466D:  = Me.Value
  loc_A44672: FLdRfVar var_B8
  loc_A44675: CR4Var
  loc_A44676: FStFPR8 var_8C
  loc_A44679: FFreeAd var_90 = "": DecaPcdf = ""
  loc_A44682: FFree1Var var_B8 = ""
  loc_A44685: ExitProcCbHresult
End Sub

Public Property Get RecaPcdf() 'A45D84
  'Data Table: 43F3D4
  loc_A45D38: FLdRfVar var_B8
  loc_A45D3B: FLdRfVar var_A8
  loc_A45D3E: LitVarStr var_A4, "RecaPcdf"
  loc_A45D43: PopAdLdVar
  loc_A45D44: FLdRfVar RecaPcdf
  loc_A45D47: FLdRfVar var_90
  loc_A45D4A: FLdPr Me
  loc_A45D4D: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A45D52: FLdPr var_90
  loc_A45D55:  = Me.Fields
  loc_A45D5A: FLdPr RecaPcdf
  loc_A45D5D: from_stack_2 = Me.Item(from_stack_1)
  loc_A45D62: FLdPr var_A8
  loc_A45D65:  = Me.Value
  loc_A45D6A: FLdRfVar var_B8
  loc_A45D6D: CR4Var
  loc_A45D6E: FStFPR8 var_8C
  loc_A45D71: FFreeAd var_90 = "": RecaPcdf = ""
  loc_A45D7A: FFree1Var var_B8 = ""
  loc_A45D7D: ExitProcCbHresult
End Sub

Public Property Get DerePcdf() 'A45F28
  'Data Table: 43F3D4
  loc_A45EDC: FLdRfVar var_B8
  loc_A45EDF: FLdRfVar var_A8
  loc_A45EE2: LitVarStr var_A4, "DerePcdf"
  loc_A45EE7: PopAdLdVar
  loc_A45EE8: FLdRfVar DerePcdf
  loc_A45EEB: FLdRfVar var_90
  loc_A45EEE: FLdPr Me
  loc_A45EF1: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A45EF6: FLdPr var_90
  loc_A45EF9:  = Me.Fields
  loc_A45EFE: FLdPr DerePcdf
  loc_A45F01: from_stack_2 = Me.Item(from_stack_1)
  loc_A45F06: FLdPr var_A8
  loc_A45F09:  = Me.Value
  loc_A45F0E: FLdRfVar var_B8
  loc_A45F11: CR4Var
  loc_A45F12: FStFPR8 var_8C
  loc_A45F15: FFreeAd var_90 = "": DerePcdf = ""
  loc_A45F1E: FFree1Var var_B8 = ""
  loc_A45F21: ExitProcCbHresult
End Sub

Public Property Get RemoPcdf() 'A45FB4
  'Data Table: 43F3D4
  loc_A45F68: FLdRfVar var_B8
  loc_A45F6B: FLdRfVar var_A8
  loc_A45F6E: LitVarStr var_A4, "RemoPcdf"
  loc_A45F73: PopAdLdVar
  loc_A45F74: FLdRfVar RemoPcdf
  loc_A45F77: FLdRfVar var_90
  loc_A45F7A: FLdPr Me
  loc_A45F7D: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A45F82: FLdPr var_90
  loc_A45F85:  = Me.Fields
  loc_A45F8A: FLdPr RemoPcdf
  loc_A45F8D: from_stack_2 = Me.Item(from_stack_1)
  loc_A45F92: FLdPr var_A8
  loc_A45F95:  = Me.Value
  loc_A45F9A: FLdRfVar var_B8
  loc_A45F9D: CR4Var
  loc_A45F9E: FStFPR8 var_8C
  loc_A45FA1: FFreeAd var_90 = "": RemoPcdf = ""
  loc_A45FAA: FFree1Var var_B8 = ""
  loc_A45FAD: ExitProcCbHresult
End Sub

Public Property Let RemoPcdf(vDato) '9FACC0
  'Data Table: 43F3D4
  loc_9FAC98: FLdFPR8 vDato
  loc_9FAC9B: CVarR8
  loc_9FAC9F: PopAdLdVar
  loc_9FACA0: LitVarStr var_98, "RemoPcdf"
  loc_9FACA5: PopAdLdVar
  loc_9FACA6: FLdRfVar var_88
  loc_9FACA9: FLdPr Me
  loc_9FACAC: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FACB1: FLdPr var_88
  loc_9FACB4: Me.Collect = from_stack_1
  loc_9FACB9: FFree1Ad var_88
  loc_9FACBC: ExitProcHresult
End Sub

Public Property Get AprePcdf() 'A46158
  'Data Table: 43F3D4
  loc_A4610C: FLdRfVar var_B8
  loc_A4610F: FLdRfVar var_A8
  loc_A46112: LitVarStr var_A4, "AprePcdf"
  loc_A46117: PopAdLdVar
  loc_A46118: FLdRfVar AprePcdf
  loc_A4611B: FLdRfVar var_90
  loc_A4611E: FLdPr Me
  loc_A46121: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A46126: FLdPr var_90
  loc_A46129:  = Me.Fields
  loc_A4612E: FLdPr AprePcdf
  loc_A46131: from_stack_2 = Me.Item(from_stack_1)
  loc_A46136: FLdPr var_A8
  loc_A46139:  = Me.Value
  loc_A4613E: FLdRfVar var_B8
  loc_A46141: CR4Var
  loc_A46142: FStFPR8 var_8C
  loc_A46145: FFreeAd var_90 = "": AprePcdf = ""
  loc_A4614E: FFree1Var var_B8 = ""
  loc_A46151: ExitProcCbHresult
End Sub

Public Property Let AprePcdf(vDato) '9FADD4
  'Data Table: 43F3D4
  loc_9FADAC: FLdFPR8 vDato
  loc_9FADAF: CVarR8
  loc_9FADB3: PopAdLdVar
  loc_9FADB4: LitVarStr var_98, "AprePcdf"
  loc_9FADB9: PopAdLdVar
  loc_9FADBA: FLdRfVar var_88
  loc_9FADBD: FLdPr Me
  loc_9FADC0: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FADC5: FLdPr var_88
  loc_9FADC8: Me.Collect = from_stack_1
  loc_9FADCD: FFree1Ad var_88
  loc_9FADD0: ExitProcHresult
End Sub

Public Property Get IntePcdf() 'A461E4
  'Data Table: 43F3D4
  loc_A46198: FLdRfVar var_B8
  loc_A4619B: FLdRfVar var_A8
  loc_A4619E: LitVarStr var_A4, "IntePcdf"
  loc_A461A3: PopAdLdVar
  loc_A461A4: FLdRfVar IntePcdf
  loc_A461A7: FLdRfVar var_90
  loc_A461AA: FLdPr Me
  loc_A461AD: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A461B2: FLdPr var_90
  loc_A461B5:  = Me.Fields
  loc_A461BA: FLdPr IntePcdf
  loc_A461BD: from_stack_2 = Me.Item(from_stack_1)
  loc_A461C2: FLdPr var_A8
  loc_A461C5:  = Me.Value
  loc_A461CA: FLdRfVar var_B8
  loc_A461CD: CR4Var
  loc_A461CE: FStFPR8 var_8C
  loc_A461D1: FFreeAd var_90 = "": IntePcdf = ""
  loc_A461DA: FFree1Var var_B8 = ""
  loc_A461DD: ExitProcCbHresult
End Sub

Public Property Let IntePcdf(vDato) '9FB058
  'Data Table: 43F3D4
  loc_9FB030: FLdFPR8 vDato
  loc_9FB033: CVarR8
  loc_9FB037: PopAdLdVar
  loc_9FB038: LitVarStr var_98, "IntePcdf"
  loc_9FB03D: PopAdLdVar
  loc_9FB03E: FLdRfVar var_88
  loc_9FB041: FLdPr Me
  loc_9FB044: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FB049: FLdPr var_88
  loc_9FB04C: Me.Collect = from_stack_1
  loc_9FB051: FFree1Ad var_88
  loc_9FB054: ExitProcHresult
  loc_9FB055: PopTmpLdAd8 arg_60FF
End Sub

Public Property Get TotaPcdf() 'A44830
  'Data Table: 43F3D4
  loc_A447E4: FLdRfVar var_B8
  loc_A447E7: FLdRfVar var_A8
  loc_A447EA: LitVarStr var_A4, "TotaPcdf"
  loc_A447EF: PopAdLdVar
  loc_A447F0: FLdRfVar TotaPcdf
  loc_A447F3: FLdRfVar var_90
  loc_A447F6: FLdPr Me
  loc_A447F9: from_stack_1v = clspacudefa.global_4453212Get()
  loc_A447FE: FLdPr var_90
  loc_A44801:  = Me.Fields
  loc_A44806: FLdPr TotaPcdf
  loc_A44809: from_stack_2 = Me.Item(from_stack_1)
  loc_A4480E: FLdPr var_A8
  loc_A44811:  = Me.Value
  loc_A44816: FLdRfVar var_B8
  loc_A44819: CR4Var
  loc_A4481A: FStFPR8 var_8C
  loc_A4481D: FFreeAd var_90 = "": TotaPcdf = ""
  loc_A44826: FFree1Var var_B8 = ""
  loc_A44829: ExitProcCbHresult
End Sub

Public Property Let TotaPcdf(vDato) '9FB280
  'Data Table: 43F3D4
  loc_9FB258: FLdFPR8 vDato
  loc_9FB25B: CVarR8
  loc_9FB25F: PopAdLdVar
  loc_9FB260: LitVarStr var_98, "TotaPcdf"
  loc_9FB265: PopAdLdVar
  loc_9FB266: FLdRfVar var_88
  loc_9FB269: FLdPr Me
  loc_9FB26C: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9FB271: FLdPr var_88
  loc_9FB274: Me.Collect = from_stack_1
  loc_9FB279: FFree1Ad var_88
  loc_9FB27C: ExitProcHresult
End Sub

Public Function BuscaImportePagoCuenta(PeriBole, NumeBole, CodiFapa, CuotDefa) 'B190BC
  'Data Table: 43F3D4
  loc_B18E9C: New Recordset
  loc_B18EA0: FStAdFuncNoPop
  loc_B18EA3: FLdPr Me
  loc_B18EA6: Call clspacudefa.global_4453212Set(from_stack_1v)
  loc_B18EAB: FFree1Ad var_90
  loc_B18EAE: LitI4 -1
  loc_B18EB3: LitI4 3
  loc_B18EB8: LitI4 3
  loc_B18EBD: ImpAdLdI4 MemVar_D9301C
  loc_B18EC0: CVarAd
  loc_B18EC4: PopAdLdVar
  loc_B18EC5: LitStr "SELECT CapiPcdf, RecaPcdf, AprePcdf, IntePcdf FROM pacudefa WHERE PeriBole = "
  loc_B18EC8: FLdI2 PeriBole
  loc_B18ECB: CStrUI1
  loc_B18ECD: FStStrNoPop BuscaImportePagoCuenta
  loc_B18ED0: ConcatStr
  loc_B18ED1: FStStrNoPop var_98
  loc_B18ED4: LitStr " AND NumeBole = "
  loc_B18ED7: ConcatStr
  loc_B18ED8: FStStrNoPop var_9C
  loc_B18EDB: ILdRf NumeBole
  loc_B18EDE: CStrI4
  loc_B18EE0: FStStrNoPop var_A0
  loc_B18EE3: ConcatStr
  loc_B18EE4: FStStrNoPop var_A4
  loc_B18EE7: LitStr " AND CodiFapa = "
  loc_B18EEA: ConcatStr
  loc_B18EEB: FStStrNoPop var_A8
  loc_B18EEE: ILdRf CodiFapa
  loc_B18EF1: CStrI4
  loc_B18EF3: FStStrNoPop var_AC
  loc_B18EF6: ConcatStr
  loc_B18EF7: FStStrNoPop var_B0
  loc_B18EFA: LitStr " AND CuotDefa = "
  loc_B18EFD: ConcatStr
  loc_B18EFE: FStStrNoPop var_B4
  loc_B18F01: FLdI2 CuotDefa
  loc_B18F04: CStrUI1
  loc_B18F06: FStStrNoPop var_B8
  loc_B18F09: ConcatStr
  loc_B18F0A: CVarStr var_C8
  loc_B18F0D: PopAdLdVar
  loc_B18F0E: FLdRfVar var_90
  loc_B18F11: FLdPr Me
  loc_B18F14: from_stack_1v = clspacudefa.global_4453212Get()
  loc_B18F19: FLdPr var_90
  loc_B18F1C: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_B18F21: FFreeStr BuscaImportePagoCuenta = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B18F38: FFree1Ad var_90
  loc_B18F3B: FFree1Var var_C8 = ""
  loc_B18F3E: FLdRfVar var_DC
  loc_B18F41: FLdRfVar var_90
  loc_B18F44: FLdPr Me
  loc_B18F47: from_stack_1v = clspacudefa.global_4453212Get()
  loc_B18F4C: FLdPr var_90
  loc_B18F4F:  = Me.RecordCount
  loc_B18F54: ILdRf var_DC
  loc_B18F57: LitI4 0
  loc_B18F5C: GtI4
  loc_B18F5D: FFree1Ad var_90
  loc_B18F60: BranchF loc_B1909D
  loc_B18F63: FLdRfVar var_90
  loc_B18F66: FLdPr Me
  loc_B18F69: from_stack_1v = clspacudefa.global_4453212Get()
  loc_B18F6E: FLdPr var_90
  loc_B18F71: Me.MoveFirst
  loc_B18F76: FFree1Ad var_90
  loc_B18F79: FLdRfVar var_C8
  loc_B18F7C: FLdRfVar var_E4
  loc_B18F7F: LitVarStr var_D8, "CapiPcdf"
  loc_B18F84: PopAdLdVar
  loc_B18F85: FLdRfVar var_E0
  loc_B18F88: FLdRfVar var_90
  loc_B18F8B: FLdPr Me
  loc_B18F8E: from_stack_1v = clspacudefa.global_4453212Get()
  loc_B18F93: FLdPr var_90
  loc_B18F96:  = Me.Fields
  loc_B18F9B: FLdPr var_E0
  loc_B18F9E: from_stack_2 = Me.Item(from_stack_1)
  loc_B18FA3: FLdPr var_E4
  loc_B18FA6:  = Me.Value
  loc_B18FAB: FLdRfVar var_110
  loc_B18FAE: FLdRfVar var_100
  loc_B18FB1: LitVarStr var_FC, "RecaPcdf"
  loc_B18FB6: PopAdLdVar
  loc_B18FB7: FLdRfVar var_EC
  loc_B18FBA: FLdRfVar var_E8
  loc_B18FBD: FLdPr Me
  loc_B18FC0: from_stack_1v = clspacudefa.global_4453212Get()
  loc_B18FC5: FLdPr var_E8
  loc_B18FC8:  = Me.Fields
  loc_B18FCD: FLdPr var_EC
  loc_B18FD0: from_stack_2 = Me.Item(from_stack_1)
  loc_B18FD5: FLdPr var_100
  loc_B18FD8:  = Me.Value
  loc_B18FDD: FLdRfVar var_13C
  loc_B18FE0: FLdRfVar var_12C
  loc_B18FE3: LitVarStr var_128, "AprePcdf"
  loc_B18FE8: PopAdLdVar
  loc_B18FE9: FLdRfVar var_118
  loc_B18FEC: FLdRfVar var_114
  loc_B18FEF: FLdPr Me
  loc_B18FF2: from_stack_1v = clspacudefa.global_4453212Get()
  loc_B18FF7: FLdPr var_114
  loc_B18FFA:  = Me.Fields
  loc_B18FFF: FLdPr var_118
  loc_B19002: from_stack_2 = Me.Item(from_stack_1)
  loc_B19007: FLdPr var_12C
  loc_B1900A:  = Me.Value
  loc_B1900F: FLdRfVar var_168
  loc_B19012: FLdRfVar var_158
  loc_B19015: LitVarStr var_154, "IntePcdf"
  loc_B1901A: PopAdLdVar
  loc_B1901B: FLdRfVar var_144
  loc_B1901E: FLdRfVar var_140
  loc_B19021: FLdPr Me
  loc_B19024: from_stack_1v = clspacudefa.global_4453212Get()
  loc_B19029: FLdPr var_140
  loc_B1902C:  = Me.Fields
  loc_B19031: FLdPr var_144
  loc_B19034: from_stack_2 = Me.Item(from_stack_1)
  loc_B19039: FLdPr var_158
  loc_B1903C:  = Me.Value
  loc_B19041: LitI4 2
  loc_B19046: FLdRfVar var_C8
  loc_B19049: FnCDblVar
  loc_B1904B: FLdRfVar var_110
  loc_B1904E: FnCDblVar
  loc_B19050: AddR8
  loc_B19051: FLdRfVar var_13C
  loc_B19054: FnCDblVar
  loc_B19056: AddR8
  loc_B19057: FLdRfVar var_168
  loc_B1905A: FnCDblVar
  loc_B1905C: AddR8
  loc_B1905D: CVarR8
  loc_B19061: FLdRfVar var_198
  loc_B19064: ImpAdCallFPR4  = Round(, )
  loc_B19069: FLdRfVar var_198
  loc_B1906C: CR4Var
  loc_B1906D: FStFPR8 var_8C
  loc_B19070: FFreeAd var_90 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = "": var_114 = "": var_118 = "": var_12C = "": var_140 = "": var_144 = ""
  loc_B1908B: FFreeVar var_C8 = "": var_110 = "": var_13C = "": var_168 = "": var_188 = ""
  loc_B1909A: Branch loc_B190A3
  loc_B1909D: LitI2_Byte 0
  loc_B1909F: CR8I2
  loc_B190A0: FStFPR8 var_8C
  loc_B190A3: LitNothing
  loc_B190A5: CastAd
  loc_B190A8: FStAdFuncNoPop
  loc_B190AB: FLdPr Me
  loc_B190AE: Call clspacudefa.global_4453212Set(from_stack_1v)
  loc_B190B3: FFree1Ad var_90
  loc_B190B6: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E98D4
  'Data Table: 43F3D4
  loc_9E98B8: ILdRf pError
  loc_9E98BB: FStAd var_88 
  loc_9E98BF: ILdRf pRecordset
  loc_9E98C2: FStAd var_8C 
  loc_9E98C6: FLdPr Me
  loc_9E98C9: RaiseEvent
  loc_9E98D1: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9A944
  'Data Table: 43F3D4
  loc_A9A884: ILdRf pRecordset
  loc_A9A887: FStAd var_88 
  loc_A9A88B: ILdRf adReason
  loc_A9A88E: FStR4 var_90
  loc_A9A891: ILdRf var_90
  loc_A9A894: LitI4 1
  loc_A9A899: EqI4
  loc_A9A89A: BranchF loc_A9A8A0
  loc_A9A89D: Branch loc_A9A933
  loc_A9A8A0: ILdRf var_90
  loc_A9A8A3: LitI4 9
  loc_A9A8A8: EqI4
  loc_A9A8A9: BranchF loc_A9A8AF
  loc_A9A8AC: Branch loc_A9A933
  loc_A9A8AF: ILdRf var_90
  loc_A9A8B2: LitI4 2
  loc_A9A8B7: EqI4
  loc_A9A8B8: BranchF loc_A9A8BE
  loc_A9A8BB: Branch loc_A9A933
  loc_A9A8BE: ILdRf var_90
  loc_A9A8C1: LitI4 &HB
  loc_A9A8C6: EqI4
  loc_A9A8C7: BranchF loc_A9A8CD
  loc_A9A8CA: Branch loc_A9A933
  loc_A9A8CD: ILdRf var_90
  loc_A9A8D0: LitI4 &HA
  loc_A9A8D5: EqI4
  loc_A9A8D6: BranchF loc_A9A8DC
  loc_A9A8D9: Branch loc_A9A933
  loc_A9A8DC: ILdRf var_90
  loc_A9A8DF: LitI4 7
  loc_A9A8E4: EqI4
  loc_A9A8E5: BranchF loc_A9A8EB
  loc_A9A8E8: Branch loc_A9A933
  loc_A9A8EB: ILdRf var_90
  loc_A9A8EE: LitI4 8
  loc_A9A8F3: EqI4
  loc_A9A8F4: BranchF loc_A9A8FA
  loc_A9A8F7: Branch loc_A9A933
  loc_A9A8FA: ILdRf var_90
  loc_A9A8FD: LitI4 5
  loc_A9A902: EqI4
  loc_A9A903: BranchF loc_A9A909
  loc_A9A906: Branch loc_A9A933
  loc_A9A909: ILdRf var_90
  loc_A9A90C: LitI4 6
  loc_A9A911: EqI4
  loc_A9A912: BranchF loc_A9A918
  loc_A9A915: Branch loc_A9A933
  loc_A9A918: ILdRf var_90
  loc_A9A91B: LitI4 4
  loc_A9A920: EqI4
  loc_A9A921: BranchF loc_A9A927
  loc_A9A924: Branch loc_A9A933
  loc_A9A927: ILdRf var_90
  loc_A9A92A: LitI4 3
  loc_A9A92F: EqI4
  loc_A9A930: BranchF loc_A9A933
  loc_A9A933: FLdI2 var_8A
  loc_A9A936: BranchF loc_A9A941
  loc_A9A939: LitI4 4
  loc_A9A93E: IStI4 adStatus
  loc_A9A941: ExitProcHresult
End Sub

Private Function Proc_32_49_9FB2D8() '9FB2D8
  'Data Table: 43F3D4
  loc_9FB2B4: LitStr "Primary"
  loc_9FB2B7: FLdPr Me
  loc_9FB2BA: LateIdLdVar var_94 DispID_4 0
  loc_9FB2C1: CastAdVar Me
  loc_9FB2C5: FStAdFunc var_98
  loc_9FB2C8: FLdPr var_98
  loc_9FB2D0: FFree1Ad var_98
  loc_9FB2D3: FFree1Var var_94 = ""
  loc_9FB2D6: ExitProcHresult
End Function

Private Function Proc_32_50_9F9AC4(arg_C) '9F9AC4
  'Data Table: 43F3D4
  loc_9F9AA0: ILdI4 arg_C
  loc_9F9AA3: FStStrCopy var_88
  loc_9F9AA6: ILdRf var_88
  loc_9F9AA9: LitStr "Primary"
  loc_9F9AAC: EqStr
  loc_9F9AAE: BranchF loc_9F9AC3
  loc_9F9AB1: FLdRfVar var_8C
  loc_9F9AB4: FLdPr Me
  loc_9F9AB7: from_stack_1v = clspacudefa.global_4453212Get()
  loc_9F9ABC: FLdZeroAd var_8C
  loc_9F9ABF: IStAdFunc
  loc_9F9AC3: ExitProcHresult
End Function

Public Function global_4453212Get() '43F804
  global_4453212Get = global_4453212
End Function

Public Sub global_4453212Put(Value) '43F81E
  global_4453212 = Value
End Sub

Public Sub global_4453212Set(Value) '43F838
  global_4453212 = Value
End Sub

Public Function global_4453212Get() '43F852
  global_4453212Get = global_4453212
End Function

Public Sub global_4453212Put(Value) '43F86C
  global_4453212 = Value
End Sub

Public Sub global_4453212Set(Value) '43F886
  global_4453212 = Value
End Sub

Public Function global_4453212Get() '43F8A0
  global_4453212Get = global_4453212
End Function

Public Sub global_4453212Put(Value) '43F8BA
  global_4453212 = Value
End Sub

Public Sub global_4453212Set(Value) '43F8D4
  global_4453212 = Value
End Sub
