VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsnpxpartorga"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '411B9C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '411BAB
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '411BBA
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96FFC4
  'Data Table: 4118D8
  loc_96FF9C: FLdRfVar var_88
  loc_96FF9F: FLdPr Me
  loc_96FFA2: MemLdPr RsFrm
  loc_96FFA5:  = Me.RecordCount
  loc_96FFAA: ILdRf var_88
  loc_96FFAD: LitI4 0
  loc_96FFB2: GtI4
  loc_96FFB3: BranchF loc_96FFC1
  loc_96FFB6: FLdPr Me
  loc_96FFB9: MemLdPr RsFrm
  loc_96FFBC: Me.MoveFirst
  loc_96FFC1: ExitProcHresult
  loc_96FFC2: FStAdFunc arg_6000
End Sub

Public Sub MoveLast() '96DAFC
  'Data Table: 4118D8
  loc_96DAD4: FLdRfVar var_88
  loc_96DAD7: FLdPr Me
  loc_96DADA: MemLdPr RsFrm
  loc_96DADD:  = Me.RecordCount
  loc_96DAE2: ILdRf var_88
  loc_96DAE5: LitI4 0
  loc_96DAEA: GtI4
  loc_96DAEB: BranchF loc_96DAF9
  loc_96DAEE: FLdPr Me
  loc_96DAF1: MemLdPr RsFrm
  loc_96DAF4: Me.MoveLast
  loc_96DAF9: ExitProcHresult
  loc_96DAFA: CCyR4
End Sub

Public Sub MoveNext() '99D5F8
  'Data Table: 4118D8
  loc_99D580: FLdRfVar var_86
  loc_99D583: FLdPr Me
  loc_99D586: MemLdPr RsFrm
  loc_99D589:  = Me.EOF
  loc_99D58E: FLdI2 var_86
  loc_99D591: NotI4
  loc_99D592: FLdRfVar var_8C
  loc_99D595: FLdPr Me
  loc_99D598: MemLdPr RsFrm
  loc_99D59B:  = Me.RecordCount
  loc_99D5A0: ILdRf var_8C
  loc_99D5A3: LitI4 0
  loc_99D5A8: GtI4
  loc_99D5A9: AndI4
  loc_99D5AA: BranchF loc_99D5B8
  loc_99D5AD: FLdPr Me
  loc_99D5B0: MemLdPr RsFrm
  loc_99D5B3: Me.MoveNext
  loc_99D5B8: FLdRfVar var_86
  loc_99D5BB: FLdPr Me
  loc_99D5BE: MemLdPr RsFrm
  loc_99D5C1:  = Me.EOF
  loc_99D5C6: FLdI2 var_86
  loc_99D5C9: FLdRfVar var_8C
  loc_99D5CC: FLdPr Me
  loc_99D5CF: MemLdPr RsFrm
  loc_99D5D2:  = Me.RecordCount
  loc_99D5D7: ILdRf var_8C
  loc_99D5DA: LitI4 0
  loc_99D5DF: GtI4
  loc_99D5E0: AndI4
  loc_99D5E1: BranchF loc_99D5F4
  loc_99D5E4: ImpAdCallFPR4 Beep()
  loc_99D5E9: FLdPr Me
  loc_99D5EC: MemLdPr RsFrm
  loc_99D5EF: Me.MoveLast
  loc_99D5F4: ExitProcHresult
  loc_99D5F5: StFixedStr
End Sub

Public Sub MoveSiguiente() '941A80
  'Data Table: 4118D8
  loc_941A74: FLdPr Me
  loc_941A77: MemLdPr RsFrm
  loc_941A7A: Me.MoveNext
  loc_941A7F: ExitProcHresult
End Sub

Public Sub MovePrevious() '99D550
  'Data Table: 4118D8
  loc_99D4D8: FLdRfVar var_86
  loc_99D4DB: FLdPr Me
  loc_99D4DE: MemLdPr RsFrm
  loc_99D4E1:  = Me.BOF
  loc_99D4E6: FLdI2 var_86
  loc_99D4E9: NotI4
  loc_99D4EA: FLdRfVar var_8C
  loc_99D4ED: FLdPr Me
  loc_99D4F0: MemLdPr RsFrm
  loc_99D4F3:  = Me.RecordCount
  loc_99D4F8: ILdRf var_8C
  loc_99D4FB: LitI4 0
  loc_99D500: GtI4
  loc_99D501: AndI4
  loc_99D502: BranchF loc_99D510
  loc_99D505: FLdPr Me
  loc_99D508: MemLdPr RsFrm
  loc_99D50B: Me.MovePrevious
  loc_99D510: FLdRfVar var_86
  loc_99D513: FLdPr Me
  loc_99D516: MemLdPr RsFrm
  loc_99D519:  = Me.BOF
  loc_99D51E: FLdI2 var_86
  loc_99D521: FLdRfVar var_8C
  loc_99D524: FLdPr Me
  loc_99D527: MemLdPr RsFrm
  loc_99D52A:  = Me.RecordCount
  loc_99D52F: ILdRf var_8C
  loc_99D532: LitI4 0
  loc_99D537: GtI4
  loc_99D538: AndI4
  loc_99D539: BranchF loc_99D54C
  loc_99D53C: ImpAdCallFPR4 Beep()
  loc_99D541: FLdPr Me
  loc_99D544: MemLdPr RsFrm
  loc_99D547: Me.MoveFirst
  loc_99D54C: ExitProcHresult
  loc_99D54D: GtCyR8
  loc_99D54E: ImpAdLdRf MemVar_640C2C
End Sub

Public Property Get EOF() '96500C
  'Data Table: 4118D8
  loc_964FF0: FLdRfVar var_88
  loc_964FF3: FLdPr Me
  loc_964FF6: MemLdPr RsFrm
  loc_964FF9:  = Me.EOF
  loc_964FFE: FLdI2 var_88
  loc_965001: FStI2 var_86
  loc_965004: ExitProcCbHresult
  loc_96500A: ExitProcR8
End Sub

Public Property Get BOF() '964AB4
  'Data Table: 4118D8
  loc_964A98: FLdRfVar var_88
  loc_964A9B: FLdPr Me
  loc_964A9E: MemLdPr RsFrm
  loc_964AA1:  = Me.BOF
  loc_964AA6: FLdI2 var_88
  loc_964AA9: FStI2 var_86
  loc_964AAC: ExitProcCbHresult
  loc_964AB2: FLdZeroAd arg_6004
End Sub

Public Sub Sort(sOrden) '944A04
  'Data Table: 4118D8
  loc_9449F4: ILdI4 sOrden
  loc_9449F7: FLdPr Me
  loc_9449FA: MemLdPr RsFrm
  loc_9449FD: Me.Sort = from_stack_1
  loc_944A02: ExitProcHresult
End Sub

Public Sub Find(sFind) '9688E0
  'Data Table: 4118D8
  loc_9688C0: LitVar_Missing var_94
  loc_9688C3: PopAdLdVar
  loc_9688C4: LitI4 1
  loc_9688C9: LitI4 0
  loc_9688CE: ILdI4 sFind
  loc_9688D1: FLdPr Me
  loc_9688D4: MemLdPr RsFrm
  loc_9688D7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9688DC: ExitProcHresult
  loc_9688DD: CBoolCy
  loc_9688DE: CopyBytes
End Sub

Public Sub Filter(sCriterio) '9489AC
  'Data Table: 4118D8
  loc_948998: ILdI4 sCriterio
  loc_94899B: CVarStr var_94
  loc_94899E: PopAdLdVar
  loc_94899F: FLdPr Me
  loc_9489A2: MemLdPr RsFrm
  loc_9489A5: Me.Filter = from_stack_1
  loc_9489AA: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '964984
  'Data Table: 4118D8
  loc_964968: FLdRfVar var_8C
  loc_96496B: FLdPr Me
  loc_96496E: MemLdPr RsFrm
  loc_964971:  = Me.AbsolutePosition
  loc_964976: ILdRf var_8C
  loc_964979: FStR4 var_88
  loc_96497C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '964724
  'Data Table: 4118D8
  loc_964708: FLdRfVar var_8C
  loc_96470B: FLdPr Me
  loc_96470E: MemLdPr RsFrm
  loc_964711:  = Me.RecordCount
  loc_964716: ILdRf var_8C
  loc_964719: FStR4 var_88
  loc_96471C: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiPart, CodiOrga, Impo01, Impo02, Impo03, Impo04, Impo05, Impo06, Impo07, Impo08, Impo09, Impo10, Impo11, Impo12) 'A5782C
  'Data Table: 4118D8
  loc_A57624: ILdRf CodiPart
  loc_A57627: FStStrCopy var_88
  loc_A5762A: ILdRf CodiOrga
  loc_A5762D: FStStrCopy var_8C
  loc_A57630: ILdRf Impo01
  loc_A57633: FStStrCopy var_90
  loc_A57636: ILdRf Impo02
  loc_A57639: FStStrCopy var_94
  loc_A5763C: ILdRf Impo03
  loc_A5763F: FStStrCopy var_98
  loc_A57642: ILdRf Impo04
  loc_A57645: FStStrCopy var_9C
  loc_A57648: ILdRf Impo05
  loc_A5764B: FStStrCopy var_A0
  loc_A5764E: ILdRf Impo06
  loc_A57651: FStStrCopy var_A4
  loc_A57654: ILdRf Impo07
  loc_A57657: FStStrCopy var_A8
  loc_A5765A: ILdRf Impo08
  loc_A5765D: FStStrCopy var_AC
  loc_A57660: ILdRf Impo09
  loc_A57663: FStStrCopy var_B0
  loc_A57666: ILdRf Impo10
  loc_A57669: FStStrCopy var_B4
  loc_A5766C: ILdRf AddNew0
  loc_A5766F: FStStrCopy var_B8
  loc_A57672: ILdRf AddNew4
  loc_A57675: FStStrCopy var_BC
  loc_A57678: LitStr "REPLACE INTO npxpartorga (PeriInfo,CodiPart,CodiOrga,Impo01,Impo02,Impo03,Impo04,Impo05,Impo06,Impo07,Impo08,Impo09,Impo10,Impo11,Impo12,AltaUsua)"
  loc_A5767B: LitStr " VALUES ("
  loc_A5767E: ConcatStr
  loc_A5767F: FStStrNoPop var_C4
  loc_A57682: FLdI2 PeriInfo
  loc_A57685: CStrUI1
  loc_A57687: FStStrNoPop var_C8
  loc_A5768A: ConcatStr
  loc_A5768B: FStStrNoPop var_CC
  loc_A5768E: LitStr ",'"
  loc_A57691: ConcatStr
  loc_A57692: FStStrNoPop var_D0
  loc_A57695: ILdRf var_88
  loc_A57698: ConcatStr
  loc_A57699: FStStrNoPop var_D4
  loc_A5769C: LitStr "','"
  loc_A5769F: ConcatStr
  loc_A576A0: FStStrNoPop var_D8
  loc_A576A3: ILdRf var_8C
  loc_A576A6: ConcatStr
  loc_A576A7: FStStrNoPop var_DC
  loc_A576AA: LitStr "',"
  loc_A576AD: ConcatStr
  loc_A576AE: FStStrNoPop var_E0
  loc_A576B1: ILdRf var_90
  loc_A576B4: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A576B9: FStStrNoPop var_E4
  loc_A576BC: ConcatStr
  loc_A576BD: FStStrNoPop var_E8
  loc_A576C0: LitStr ","
  loc_A576C3: ConcatStr
  loc_A576C4: FStStrNoPop var_EC
  loc_A576C7: ILdRf var_94
  loc_A576CA: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A576CF: FStStrNoPop var_F0
  loc_A576D2: ConcatStr
  loc_A576D3: FStStrNoPop var_F4
  loc_A576D6: LitStr ","
  loc_A576D9: ConcatStr
  loc_A576DA: FStStrNoPop var_F8
  loc_A576DD: ILdRf var_98
  loc_A576E0: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A576E5: FStStrNoPop var_FC
  loc_A576E8: ConcatStr
  loc_A576E9: FStStrNoPop var_100
  loc_A576EC: LitStr ","
  loc_A576EF: ConcatStr
  loc_A576F0: FStStrNoPop var_104
  loc_A576F3: ILdRf var_9C
  loc_A576F6: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A576FB: FStStrNoPop var_108
  loc_A576FE: ConcatStr
  loc_A576FF: FStStrNoPop var_10C
  loc_A57702: LitStr ","
  loc_A57705: ConcatStr
  loc_A57706: FStStrNoPop var_110
  loc_A57709: ILdRf var_A0
  loc_A5770C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A57711: FStStrNoPop var_114
  loc_A57714: ConcatStr
  loc_A57715: FStStrNoPop var_118
  loc_A57718: LitStr ","
  loc_A5771B: ConcatStr
  loc_A5771C: FStStrNoPop var_11C
  loc_A5771F: ILdRf var_A4
  loc_A57722: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A57727: FStStrNoPop var_120
  loc_A5772A: ConcatStr
  loc_A5772B: FStStrNoPop var_124
  loc_A5772E: LitStr ","
  loc_A57731: ConcatStr
  loc_A57732: FStStrNoPop var_128
  loc_A57735: ILdRf var_A8
  loc_A57738: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A5773D: FStStrNoPop var_12C
  loc_A57740: ConcatStr
  loc_A57741: FStStrNoPop var_130
  loc_A57744: LitStr ","
  loc_A57747: ConcatStr
  loc_A57748: FStStrNoPop var_134
  loc_A5774B: ILdRf var_AC
  loc_A5774E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A57753: FStStrNoPop var_138
  loc_A57756: ConcatStr
  loc_A57757: FStStrNoPop var_13C
  loc_A5775A: LitStr ","
  loc_A5775D: ConcatStr
  loc_A5775E: FStStrNoPop var_140
  loc_A57761: ILdRf var_B0
  loc_A57764: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A57769: FStStrNoPop var_144
  loc_A5776C: ConcatStr
  loc_A5776D: FStStrNoPop var_148
  loc_A57770: LitStr ","
  loc_A57773: ConcatStr
  loc_A57774: FStStrNoPop var_14C
  loc_A57777: ILdRf var_B4
  loc_A5777A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A5777F: FStStrNoPop var_150
  loc_A57782: ConcatStr
  loc_A57783: FStStrNoPop var_154
  loc_A57786: LitStr ","
  loc_A57789: ConcatStr
  loc_A5778A: FStStrNoPop var_158
  loc_A5778D: ILdRf var_B8
  loc_A57790: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A57795: FStStrNoPop var_15C
  loc_A57798: ConcatStr
  loc_A57799: FStStrNoPop var_160
  loc_A5779C: LitStr ","
  loc_A5779F: ConcatStr
  loc_A577A0: FStStrNoPop var_164
  loc_A577A3: ILdRf var_BC
  loc_A577A6: ImpAdCallI2 Proc_261_58_9952BC()
  loc_A577AB: FStStrNoPop var_168
  loc_A577AE: ConcatStr
  loc_A577AF: FStStrNoPop var_16C
  loc_A577B2: LitStr ",'"
  loc_A577B5: ConcatStr
  loc_A577B6: FStStrNoPop var_170
  loc_A577B9: ImpAdLdI4 MemVar_C3D03C
  loc_A577BC: ConcatStr
  loc_A577BD: FStStrNoPop var_174
  loc_A577C0: LitStr "');"
  loc_A577C3: ConcatStr
  loc_A577C4: FStStrNoPop var_178
  loc_A577C7: Call EjecutarRsCls(from_stack_1v)
  loc_A577CC: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_A5782B: ExitProcHresult
End Sub

Public Sub Modificar(PeriInfo, CodiPart, CodiOrga, Impo01, Impo02, Impo03, Impo04, Impo05, Impo06, Impo07, Impo08, Impo09, Impo10, Impo11, Impo12) 'AC2A2C
  'Data Table: 4118D8
  loc_AC2518: ILdRf CodiPart
  loc_AC251B: FStStrCopy var_88
  loc_AC251E: ILdRf CodiOrga
  loc_AC2521: FStStrCopy var_8C
  loc_AC2524: ILdRf Impo01
  loc_AC2527: FStStrCopy var_90
  loc_AC252A: ILdRf Impo02
  loc_AC252D: FStStrCopy var_94
  loc_AC2530: ILdRf Impo03
  loc_AC2533: FStStrCopy var_98
  loc_AC2536: ILdRf Impo04
  loc_AC2539: FStStrCopy var_9C
  loc_AC253C: ILdRf Impo05
  loc_AC253F: FStStrCopy var_A0
  loc_AC2542: ILdRf Impo06
  loc_AC2545: FStStrCopy var_A4
  loc_AC2548: ILdRf Impo07
  loc_AC254B: FStStrCopy var_A8
  loc_AC254E: ILdRf Impo08
  loc_AC2551: FStStrCopy var_AC
  loc_AC2554: ILdRf Impo09
  loc_AC2557: FStStrCopy var_B0
  loc_AC255A: ILdRf Impo10
  loc_AC255D: FStStrCopy var_B4
  loc_AC2560: ILdRf Modificar0
  loc_AC2563: FStStrCopy var_B8
  loc_AC2566: ILdRf Modificar4
  loc_AC2569: FStStrCopy var_BC
  loc_AC256C: LitI4 0
  loc_AC2571: LitI4 -1
  loc_AC2576: LitI4 1
  loc_AC257B: LitStr vbNullString
  loc_AC257E: LitStr "$"
  loc_AC2581: ILdRf var_90
  loc_AC2584: ImpAdCallI2 Replace(, , , , , )
  loc_AC2589: FStStr var_90
  loc_AC258C: LitI4 0
  loc_AC2591: LitI4 -1
  loc_AC2596: LitI4 1
  loc_AC259B: LitStr vbNullString
  loc_AC259E: LitStr "."
  loc_AC25A1: ILdRf var_90
  loc_AC25A4: ImpAdCallI2 Replace(, , , , , )
  loc_AC25A9: FStStr var_90
  loc_AC25AC: LitI4 0
  loc_AC25B1: LitI4 -1
  loc_AC25B6: LitI4 1
  loc_AC25BB: LitStr vbNullString
  loc_AC25BE: LitStr "$"
  loc_AC25C1: ILdRf var_94
  loc_AC25C4: ImpAdCallI2 Replace(, , , , , )
  loc_AC25C9: FStStr var_94
  loc_AC25CC: LitI4 0
  loc_AC25D1: LitI4 -1
  loc_AC25D6: LitI4 1
  loc_AC25DB: LitStr vbNullString
  loc_AC25DE: LitStr "."
  loc_AC25E1: ILdRf var_94
  loc_AC25E4: ImpAdCallI2 Replace(, , , , , )
  loc_AC25E9: FStStr var_94
  loc_AC25EC: LitI4 0
  loc_AC25F1: LitI4 -1
  loc_AC25F6: LitI4 1
  loc_AC25FB: LitStr vbNullString
  loc_AC25FE: LitStr "$"
  loc_AC2601: ILdRf var_98
  loc_AC2604: ImpAdCallI2 Replace(, , , , , )
  loc_AC2609: FStStr var_98
  loc_AC260C: LitI4 0
  loc_AC2611: LitI4 -1
  loc_AC2616: LitI4 1
  loc_AC261B: LitStr vbNullString
  loc_AC261E: LitStr "."
  loc_AC2621: ILdRf var_98
  loc_AC2624: ImpAdCallI2 Replace(, , , , , )
  loc_AC2629: FStStr var_98
  loc_AC262C: LitI4 0
  loc_AC2631: LitI4 -1
  loc_AC2636: LitI4 1
  loc_AC263B: LitStr vbNullString
  loc_AC263E: LitStr "$"
  loc_AC2641: ILdRf var_9C
  loc_AC2644: ImpAdCallI2 Replace(, , , , , )
  loc_AC2649: FStStr var_9C
  loc_AC264C: LitI4 0
  loc_AC2651: LitI4 -1
  loc_AC2656: LitI4 1
  loc_AC265B: LitStr vbNullString
  loc_AC265E: LitStr "."
  loc_AC2661: ILdRf var_9C
  loc_AC2664: ImpAdCallI2 Replace(, , , , , )
  loc_AC2669: FStStr var_9C
  loc_AC266C: LitI4 0
  loc_AC2671: LitI4 -1
  loc_AC2676: LitI4 1
  loc_AC267B: LitStr vbNullString
  loc_AC267E: LitStr "$"
  loc_AC2681: ILdRf var_A0
  loc_AC2684: ImpAdCallI2 Replace(, , , , , )
  loc_AC2689: FStStr var_A0
  loc_AC268C: LitI4 0
  loc_AC2691: LitI4 -1
  loc_AC2696: LitI4 1
  loc_AC269B: LitStr vbNullString
  loc_AC269E: LitStr "."
  loc_AC26A1: ILdRf var_A0
  loc_AC26A4: ImpAdCallI2 Replace(, , , , , )
  loc_AC26A9: FStStr var_A0
  loc_AC26AC: LitI4 0
  loc_AC26B1: LitI4 -1
  loc_AC26B6: LitI4 1
  loc_AC26BB: LitStr vbNullString
  loc_AC26BE: LitStr "$"
  loc_AC26C1: ILdRf var_A4
  loc_AC26C4: ImpAdCallI2 Replace(, , , , , )
  loc_AC26C9: FStStr var_A4
  loc_AC26CC: LitI4 0
  loc_AC26D1: LitI4 -1
  loc_AC26D6: LitI4 1
  loc_AC26DB: LitStr vbNullString
  loc_AC26DE: LitStr "."
  loc_AC26E1: ILdRf var_A4
  loc_AC26E4: ImpAdCallI2 Replace(, , , , , )
  loc_AC26E9: FStStr var_A4
  loc_AC26EC: LitI4 0
  loc_AC26F1: LitI4 -1
  loc_AC26F6: LitI4 1
  loc_AC26FB: LitStr vbNullString
  loc_AC26FE: LitStr "$"
  loc_AC2701: ILdRf var_A8
  loc_AC2704: ImpAdCallI2 Replace(, , , , , )
  loc_AC2709: FStStr var_A8
  loc_AC270C: LitI4 0
  loc_AC2711: LitI4 -1
  loc_AC2716: LitI4 1
  loc_AC271B: LitStr vbNullString
  loc_AC271E: LitStr "."
  loc_AC2721: ILdRf var_A8
  loc_AC2724: ImpAdCallI2 Replace(, , , , , )
  loc_AC2729: FStStr var_A8
  loc_AC272C: LitI4 0
  loc_AC2731: LitI4 -1
  loc_AC2736: LitI4 1
  loc_AC273B: LitStr vbNullString
  loc_AC273E: LitStr "$"
  loc_AC2741: ILdRf var_AC
  loc_AC2744: ImpAdCallI2 Replace(, , , , , )
  loc_AC2749: FStStr var_AC
  loc_AC274C: LitI4 0
  loc_AC2751: LitI4 -1
  loc_AC2756: LitI4 1
  loc_AC275B: LitStr vbNullString
  loc_AC275E: LitStr "."
  loc_AC2761: ILdRf var_AC
  loc_AC2764: ImpAdCallI2 Replace(, , , , , )
  loc_AC2769: FStStr var_AC
  loc_AC276C: LitI4 0
  loc_AC2771: LitI4 -1
  loc_AC2776: LitI4 1
  loc_AC277B: LitStr vbNullString
  loc_AC277E: LitStr "$"
  loc_AC2781: ILdRf var_B0
  loc_AC2784: ImpAdCallI2 Replace(, , , , , )
  loc_AC2789: FStStr var_B0
  loc_AC278C: LitI4 0
  loc_AC2791: LitI4 -1
  loc_AC2796: LitI4 1
  loc_AC279B: LitStr vbNullString
  loc_AC279E: LitStr "."
  loc_AC27A1: ILdRf var_B0
  loc_AC27A4: ImpAdCallI2 Replace(, , , , , )
  loc_AC27A9: FStStr var_B0
  loc_AC27AC: LitI4 0
  loc_AC27B1: LitI4 -1
  loc_AC27B6: LitI4 1
  loc_AC27BB: LitStr vbNullString
  loc_AC27BE: LitStr "$"
  loc_AC27C1: ILdRf var_B4
  loc_AC27C4: ImpAdCallI2 Replace(, , , , , )
  loc_AC27C9: FStStr var_B4
  loc_AC27CC: LitI4 0
  loc_AC27D1: LitI4 -1
  loc_AC27D6: LitI4 1
  loc_AC27DB: LitStr vbNullString
  loc_AC27DE: LitStr "."
  loc_AC27E1: ILdRf var_B4
  loc_AC27E4: ImpAdCallI2 Replace(, , , , , )
  loc_AC27E9: FStStr var_B4
  loc_AC27EC: LitI4 0
  loc_AC27F1: LitI4 -1
  loc_AC27F6: LitI4 1
  loc_AC27FB: LitStr vbNullString
  loc_AC27FE: LitStr "$"
  loc_AC2801: ILdRf var_B8
  loc_AC2804: ImpAdCallI2 Replace(, , , , , )
  loc_AC2809: FStStr var_B8
  loc_AC280C: LitI4 0
  loc_AC2811: LitI4 -1
  loc_AC2816: LitI4 1
  loc_AC281B: LitStr vbNullString
  loc_AC281E: LitStr "."
  loc_AC2821: ILdRf var_B8
  loc_AC2824: ImpAdCallI2 Replace(, , , , , )
  loc_AC2829: FStStr var_B8
  loc_AC282C: LitI4 0
  loc_AC2831: LitI4 -1
  loc_AC2836: LitI4 1
  loc_AC283B: LitStr vbNullString
  loc_AC283E: LitStr "$"
  loc_AC2841: ILdRf var_BC
  loc_AC2844: ImpAdCallI2 Replace(, , , , , )
  loc_AC2849: FStStr var_BC
  loc_AC284C: LitI4 0
  loc_AC2851: LitI4 -1
  loc_AC2856: LitI4 1
  loc_AC285B: LitStr vbNullString
  loc_AC285E: LitStr "."
  loc_AC2861: ILdRf var_BC
  loc_AC2864: ImpAdCallI2 Replace(, , , , , )
  loc_AC2869: FStStr var_BC
  loc_AC286C: LitStr "UPDATE npxpartorga"
  loc_AC286F: LitStr " SET Impo01="
  loc_AC2872: ConcatStr
  loc_AC2873: FStStrNoPop var_C0
  loc_AC2876: ILdRf var_90
  loc_AC2879: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC287E: FStStrNoPop var_C4
  loc_AC2881: ConcatStr
  loc_AC2882: FStStrNoPop var_C8
  loc_AC2885: LitStr ",Impo02="
  loc_AC2888: ConcatStr
  loc_AC2889: FStStrNoPop var_CC
  loc_AC288C: ILdRf var_94
  loc_AC288F: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC2894: FStStrNoPop var_D0
  loc_AC2897: ConcatStr
  loc_AC2898: FStStrNoPop var_D4
  loc_AC289B: LitStr ",Impo03="
  loc_AC289E: ConcatStr
  loc_AC289F: FStStrNoPop var_D8
  loc_AC28A2: ILdRf var_98
  loc_AC28A5: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC28AA: FStStrNoPop var_DC
  loc_AC28AD: ConcatStr
  loc_AC28AE: FStStrNoPop var_E0
  loc_AC28B1: LitStr ",Impo04="
  loc_AC28B4: ConcatStr
  loc_AC28B5: FStStrNoPop var_E4
  loc_AC28B8: ILdRf var_9C
  loc_AC28BB: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC28C0: FStStrNoPop var_E8
  loc_AC28C3: ConcatStr
  loc_AC28C4: FStStrNoPop var_EC
  loc_AC28C7: LitStr ",Impo05="
  loc_AC28CA: ConcatStr
  loc_AC28CB: FStStrNoPop var_F0
  loc_AC28CE: ILdRf var_A0
  loc_AC28D1: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC28D6: FStStrNoPop var_F4
  loc_AC28D9: ConcatStr
  loc_AC28DA: FStStrNoPop var_F8
  loc_AC28DD: LitStr ",Impo06="
  loc_AC28E0: ConcatStr
  loc_AC28E1: FStStrNoPop var_FC
  loc_AC28E4: ILdRf var_A4
  loc_AC28E7: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC28EC: FStStrNoPop var_100
  loc_AC28EF: ConcatStr
  loc_AC28F0: FStStrNoPop var_104
  loc_AC28F3: LitStr ",Impo07="
  loc_AC28F6: ConcatStr
  loc_AC28F7: FStStrNoPop var_108
  loc_AC28FA: ILdRf var_A8
  loc_AC28FD: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC2902: FStStrNoPop var_10C
  loc_AC2905: ConcatStr
  loc_AC2906: FStStrNoPop var_110
  loc_AC2909: LitStr ",Impo08="
  loc_AC290C: ConcatStr
  loc_AC290D: FStStrNoPop var_114
  loc_AC2910: ILdRf var_AC
  loc_AC2913: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC2918: FStStrNoPop var_118
  loc_AC291B: ConcatStr
  loc_AC291C: FStStrNoPop var_11C
  loc_AC291F: LitStr ",Impo09="
  loc_AC2922: ConcatStr
  loc_AC2923: FStStrNoPop var_120
  loc_AC2926: ILdRf var_B0
  loc_AC2929: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC292E: FStStrNoPop var_124
  loc_AC2931: ConcatStr
  loc_AC2932: FStStrNoPop var_128
  loc_AC2935: LitStr ",Impo10="
  loc_AC2938: ConcatStr
  loc_AC2939: FStStrNoPop var_12C
  loc_AC293C: ILdRf var_B4
  loc_AC293F: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC2944: FStStrNoPop var_130
  loc_AC2947: ConcatStr
  loc_AC2948: FStStrNoPop var_134
  loc_AC294B: LitStr ",Impo11="
  loc_AC294E: ConcatStr
  loc_AC294F: FStStrNoPop var_138
  loc_AC2952: ILdRf var_B8
  loc_AC2955: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC295A: FStStrNoPop var_13C
  loc_AC295D: ConcatStr
  loc_AC295E: FStStrNoPop var_140
  loc_AC2961: LitStr ",Impo12="
  loc_AC2964: ConcatStr
  loc_AC2965: FStStrNoPop var_144
  loc_AC2968: ILdRf var_BC
  loc_AC296B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_AC2970: FStStrNoPop var_148
  loc_AC2973: ConcatStr
  loc_AC2974: FStStrNoPop var_14C
  loc_AC2977: LitStr ",ModiUsua='"
  loc_AC297A: ConcatStr
  loc_AC297B: FStStrNoPop var_150
  loc_AC297E: ImpAdLdI4 MemVar_C3D03C
  loc_AC2981: ConcatStr
  loc_AC2982: FStStrNoPop var_154
  loc_AC2985: LitStr "',ModiFeho=Now()"
  loc_AC2988: ConcatStr
  loc_AC2989: FStStrNoPop var_158
  loc_AC298C: LitStr " WHERE PeriInfo="
  loc_AC298F: ConcatStr
  loc_AC2990: FStStrNoPop var_15C
  loc_AC2993: FLdI2 PeriInfo
  loc_AC2996: CStrUI1
  loc_AC2998: FStStrNoPop var_160
  loc_AC299B: ConcatStr
  loc_AC299C: FStStrNoPop var_164
  loc_AC299F: LitStr " AND CodiPart='"
  loc_AC29A2: ConcatStr
  loc_AC29A3: FStStrNoPop var_168
  loc_AC29A6: ILdRf var_88
  loc_AC29A9: ConcatStr
  loc_AC29AA: FStStrNoPop var_16C
  loc_AC29AD: LitStr "' AND CodiOrga='"
  loc_AC29B0: ConcatStr
  loc_AC29B1: FStStrNoPop var_170
  loc_AC29B4: ILdRf var_8C
  loc_AC29B7: ConcatStr
  loc_AC29B8: FStStrNoPop var_174
  loc_AC29BB: LitStr "';"
  loc_AC29BE: ConcatStr
  loc_AC29BF: FStStrNoPop var_178
  loc_AC29C2: Call EjecutarRsCls(from_stack_1v)
  loc_AC29C7: FFreeStr var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_AC2A28: ExitProcHresult
End Sub

Public Function ValidaEliminar(PeriInfo, CodiPart, CodiOrga) '97D0B8
  'Data Table: 4118D8
  loc_97D08C: ILdRf CodiPart
  loc_97D08F: FStStrCopy var_8C
  loc_97D092: ILdRf CodiOrga
  loc_97D095: FStStrCopy var_90
  loc_97D098: ZeroRetVal
  loc_97D09A: LitStr vbNullString
  loc_97D09D: FStStrCopy var_88
  loc_97D0A0: ILdRf var_88
  loc_97D0A3: LitStr vbNullString
  loc_97D0A6: NeStr
  loc_97D0A8: BranchF loc_97D0B1
  loc_97D0AB: ExitProcCbHresult
  loc_97D0B1: ExitProcCbHresult
End Function

Public Sub Eliminar(PeriInfo, CodiPart, CodiOrga) '9C585C
  'Data Table: 4118D8
  loc_9C57A4: ILdRf CodiPart
  loc_9C57A7: FStStrCopy var_88
  loc_9C57AA: ILdRf CodiOrga
  loc_9C57AD: FStStrCopy var_8C
  loc_9C57B0: LitStr "DELETE FROM npxpartorga"
  loc_9C57B3: LitStr " WHERE PeriInfo="
  loc_9C57B6: ConcatStr
  loc_9C57B7: FStStrNoPop var_90
  loc_9C57BA: FLdI2 PeriInfo
  loc_9C57BD: CStrUI1
  loc_9C57BF: FStStrNoPop var_94
  loc_9C57C2: ConcatStr
  loc_9C57C3: FStStrNoPop var_98
  loc_9C57C6: LitStr " AND CodiPart='"
  loc_9C57C9: ConcatStr
  loc_9C57CA: FStStrNoPop var_9C
  loc_9C57CD: ILdRf var_88
  loc_9C57D0: ConcatStr
  loc_9C57D1: FStStrNoPop var_A0
  loc_9C57D4: LitStr "' AND CodiOrga='"
  loc_9C57D7: ConcatStr
  loc_9C57D8: FStStrNoPop var_A4
  loc_9C57DB: ILdRf var_8C
  loc_9C57DE: ConcatStr
  loc_9C57DF: FStStrNoPop var_A8
  loc_9C57E2: LitStr "'"
  loc_9C57E5: ConcatStr
  loc_9C57E6: FStStrNoPop var_AC
  loc_9C57E9: Call EjecutarRsCls(from_stack_1v)
  loc_9C57EE: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9C5801: FLdRfVar var_B4
  loc_9C5804: FLdPr Me
  loc_9C5807: MemLdPr RsFrm
  loc_9C580A:  = Me.AbsolutePosition
  loc_9C580F: ILdRf var_B4
  loc_9C5812: FStR4 var_B0
  loc_9C5815: FLdRfVar var_B4
  loc_9C5818: FLdPr Me
  loc_9C581B: MemLdPr RsFrm
  loc_9C581E:  = Me.RecordCount
  loc_9C5823: ILdRf var_B4
  loc_9C5826: LitI4 0
  loc_9C582B: GtI4
  loc_9C582C: BranchF loc_9C5858
  loc_9C582F: Call MoveFirst()
  loc_9C5834: ILdRf var_B0
  loc_9C5837: LitI4 1
  loc_9C583C: GtI4
  loc_9C583D: BranchF loc_9C5858
  loc_9C5840: LitVar_Missing var_C4
  loc_9C5843: PopAdLdVar
  loc_9C5844: ILdRf var_B0
  loc_9C5847: LitI4 2
  loc_9C584C: SubI4
  loc_9C584D: FLdPr Me
  loc_9C5850: MemLdPr RsFrm
  loc_9C5853: Me.Move from_stack_1, from_stack_2
  loc_9C5858: ExitProcHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiPart, CodiOrga) '9B62EC
  'Data Table: 4118D8
  loc_9B625C: ILdRf CodiPart
  loc_9B625F: FStStrCopy var_8C
  loc_9B6262: ILdRf CodiOrga
  loc_9B6265: FStStrCopy var_90
  loc_9B6268: ZeroRetVal
  loc_9B626A: LitStr "SELECT PeriInfo, CodiPart, CodiOrga"
  loc_9B626D: LitStr " FROM npxpartorga"
  loc_9B6270: ConcatStr
  loc_9B6271: FStStrNoPop ValidaClave
  loc_9B6274: LitStr " WHERE PeriInfo = "
  loc_9B6277: ConcatStr
  loc_9B6278: FStStrNoPop var_98
  loc_9B627B: FLdI2 PeriInfo
  loc_9B627E: CStrUI1
  loc_9B6280: FStStrNoPop var_9C
  loc_9B6283: ConcatStr
  loc_9B6284: FStStrNoPop var_A0
  loc_9B6287: LitStr " AND CodiPart = '"
  loc_9B628A: ConcatStr
  loc_9B628B: FStStrNoPop var_A4
  loc_9B628E: ILdRf var_8C
  loc_9B6291: ConcatStr
  loc_9B6292: FStStrNoPop var_A8
  loc_9B6295: LitStr "' AND CodiOrga = '"
  loc_9B6298: ConcatStr
  loc_9B6299: FStStrNoPop var_AC
  loc_9B629C: ILdRf var_90
  loc_9B629F: ConcatStr
  loc_9B62A0: FStStrNoPop var_B0
  loc_9B62A3: LitStr "';"
  loc_9B62A6: ConcatStr
  loc_9B62A7: FStStrNoPop var_B4
  loc_9B62AA: Call EjecutarRsCls(from_stack_1v)
  loc_9B62AF: FFreeStr ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9B62C4: FLdRfVar var_B8
  loc_9B62C7: FLdPr Me
  loc_9B62CA: MemLdPr global_56
  loc_9B62CD:  = Me.RecordCount
  loc_9B62D2: ILdRf var_B8
  loc_9B62D5: LitI4 0
  loc_9B62DA: GtI4
  loc_9B62DB: BranchF loc_9B62E4
  loc_9B62DE: LitStr "La Autorizacion para la Nota de Pedido YA EXISTE. Verifique..."
  loc_9B62E1: FStStrCopy var_88
  loc_9B62E4: ExitProcCbHresult
End Function

Public Sub Encontrar(PeriInfo, CodiPart, CodiOrga) 'A143A8
  'Data Table: 4118D8
  loc_A14236: ILdRf CodiPart
  loc_A14239: FStStrCopy var_88
  loc_A1423C: ILdRf CodiOrga
  loc_A1423F: FStStrCopy var_8C
  loc_A14244: On Error Resume Next
  loc_A14249: FLdI2 PeriInfo
  loc_A1424C: LitI2_Byte 0
  loc_A1424E: EqI2
  loc_A1424F: ILdRf var_88
  loc_A14252: LitStr vbNullString
  loc_A14255: EqStr
  loc_A14257: AndI4
  loc_A14258: ILdRf var_8C
  loc_A1425B: LitStr vbNullString
  loc_A1425E: EqStr
  loc_A14260: AndI4
  loc_A14261: FLdRfVar var_90
  loc_A14264: FLdPr Me
  loc_A14267: MemLdPr RsFrm
  loc_A1426A:  = Me.RecordCount
  loc_A1426F: ILdRf var_90
  loc_A14272: LitI4 0
  loc_A14277: GtI4
  loc_A14278: AndI4
  loc_A14279: BranchF loc_A14333
  loc_A1427E: FLdRfVar var_B8
  loc_A14281: FLdRfVar var_A8
  loc_A14284: LitVarStr var_A4, "PeriInfo"
  loc_A14289: PopAdLdVar
  loc_A1428A: FLdRfVar var_94
  loc_A1428D: FLdPr Me
  loc_A14290: MemLdPr RsFrm
  loc_A14293:  = Me.Fields
  loc_A14298: FLdPr var_94
  loc_A1429B: from_stack_2 = Me.Item(from_stack_1)
  loc_A142A0: FLdPr var_A8
  loc_A142A3:  = Me.Value
  loc_A142A8: FLdRfVar var_B8
  loc_A142AB: CI2Var
  loc_A142AC: FStI2 PeriInfo
  loc_A142AF: FFreeAd var_94 = ""
  loc_A142B6: FFree1Var var_B8 = ""
  loc_A142BB: FLdRfVar var_B8
  loc_A142BE: FLdRfVar var_A8
  loc_A142C1: LitVarStr var_A4, "CodiPart"
  loc_A142C6: PopAdLdVar
  loc_A142C7: FLdRfVar var_94
  loc_A142CA: FLdPr Me
  loc_A142CD: MemLdPr RsFrm
  loc_A142D0:  = Me.Fields
  loc_A142D5: FLdPr var_94
  loc_A142D8: from_stack_2 = Me.Item(from_stack_1)
  loc_A142DD: FLdPr var_A8
  loc_A142E0:  = Me.Value
  loc_A142E5: FLdRfVar var_B8
  loc_A142E8: CStrVarTmp
  loc_A142E9: FStStr var_88
  loc_A142EC: FFreeAd var_94 = ""
  loc_A142F3: FFree1Var var_B8 = ""
  loc_A142F8: FLdRfVar var_B8
  loc_A142FB: FLdRfVar var_A8
  loc_A142FE: LitVarStr var_A4, "CodiOrga"
  loc_A14303: PopAdLdVar
  loc_A14304: FLdRfVar var_94
  loc_A14307: FLdPr Me
  loc_A1430A: MemLdPr RsFrm
  loc_A1430D:  = Me.Fields
  loc_A14312: FLdPr var_94
  loc_A14315: from_stack_2 = Me.Item(from_stack_1)
  loc_A1431A: FLdPr var_A8
  loc_A1431D:  = Me.Value
  loc_A14322: FLdRfVar var_B8
  loc_A14325: CStrVarTmp
  loc_A14326: FStStr var_8C
  loc_A14329: FFreeAd var_94 = ""
  loc_A14330: FFree1Var var_B8 = ""
  loc_A14337: Call Requery()
  loc_A1433E: LitStr "PeriInfo = '"
  loc_A14341: FLdI2 PeriInfo
  loc_A14344: CStrUI1
  loc_A14346: FStStrNoPop var_BC
  loc_A14349: ConcatStr
  loc_A1434A: FStStrNoPop var_C0
  loc_A1434D: LitStr "'"
  loc_A14350: ConcatStr
  loc_A14351: PopTmpLdAdStr
  loc_A14355: Call Find(from_stack_1v)
  loc_A1435A: FFreeStr var_BC = "": var_C0 = ""
  loc_A14365: LitStr "CodiPart = '"
  loc_A14368: ILdRf var_88
  loc_A1436B: ConcatStr
  loc_A1436C: FStStrNoPop var_BC
  loc_A1436F: LitStr "'"
  loc_A14372: ConcatStr
  loc_A14373: PopTmpLdAdStr
  loc_A14377: Call Find(from_stack_1v)
  loc_A1437C: FFreeStr var_BC = ""
  loc_A14385: LitStr "CodiOrga = '"
  loc_A14388: ILdRf var_8C
  loc_A1438B: ConcatStr
  loc_A1438C: FStStrNoPop var_BC
  loc_A1438F: LitStr "'"
  loc_A14392: ConcatStr
  loc_A14393: PopTmpLdAdStr
  loc_A14397: Call Find(from_stack_1v)
  loc_A1439C: FFreeStr var_BC = ""
  loc_A143A5: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '97274C
  'Data Table: 4118D8
  loc_972724: ILdRf sSelect
  loc_972727: FStStrCopy var_88
  loc_97272A: FLdPr Me
  loc_97272D: MemLdRfVar from_stack_1.RsFrm
  loc_972730: ILdRf var_88
  loc_972733: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_972738: LitVarStr var_98, "Primary"
  loc_97273D: PopAdLdVar
  loc_97273E: FLdPr Me
  loc_972741: LateIdCall
  loc_972749: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '963BD8
  'Data Table: 4118D8
  loc_963BC0: ILdRf sSelect
  loc_963BC3: FStStrCopy var_88
  loc_963BC6: FLdPr Me
  loc_963BC9: MemLdRfVar from_stack_1.global_56
  loc_963BCC: ILdRf var_88
  loc_963BCF: ImpAdCallFPR4  = Proc_261_46_9AA7A0()
  loc_963BD4: ExitProcHresult
End Sub

Public Sub Requery() '968750
  'Data Table: 4118D8
  loc_968730: FLdPr Me
  loc_968733: MemLdRfVar from_stack_1.RsFrm
  loc_968736: ImpAdCallFPR4  = Proc_261_45_9C79FC()
  loc_96873B: LitVarStr var_94, "Primary"
  loc_968740: PopAdLdVar
  loc_968741: FLdPr Me
  loc_968744: LateIdCall
  loc_96874C: ExitProcHresult
End Sub

Public Property Get DataSource() '972468
  'Data Table: 4118D8
  loc_972444: ZeroRetVal
  loc_972446: FLdRfVar var_8C
  loc_972449: FLdPr Me
  loc_97244C: MemLdPr RsFrm
  loc_97244F:  = Me.DataSource
  loc_972454: ILdRf var_8C
  loc_972457: CastAd
  loc_97245A: FStAdFunc var_88
  loc_97245D: FFree1Ad var_8C
  loc_972460: ExitProcCbHresult
End Sub

Public Function ValidaNPxPartOrga(PeriInfo, iCodiNope, Mes, ItemFlex) 'BFE468
  'Data Table: 4118D8
  loc_BFC31C: ZeroRetVal
  loc_BFC31E: FLdRfVar var_8C
  loc_BFC321: NewIfNullPr IDictionary
  loc_BFC324: IDictionary.RemoveAll
  loc_BFC329: LitI2_Byte 1
  loc_BFC32B: FLdRfVar var_8E
  loc_BFC32E: ILdPr
  loc_BFC331: LateIdLdVar var_C4 DispID_4 0
  loc_BFC338: CI4Var
  loc_BFC33A: LitI4 1
  loc_BFC33F: SubI4
  loc_BFC340: CI2I4
  loc_BFC341: FFree1Var var_C4 = ""
  loc_BFC344: ForI2 var_C8
  loc_BFC34A: FLdI2 var_8E
  loc_BFC34D: CI4UI1
  loc_BFC34E: CVarI4
  loc_BFC352: PopAdLdVar
  loc_BFC353: LitVarI4
  loc_BFC35B: PopAdLdVar
  loc_BFC35C: ILdPr
  loc_BFC35F: LateIdCallLdVar
  loc_BFC369: PopAd
  loc_BFC36B: FLdI2 var_8E
  loc_BFC36E: CI4UI1
  loc_BFC36F: CVarI4
  loc_BFC373: PopAdLdVar
  loc_BFC374: LitVarI4
  loc_BFC37C: PopAdLdVar
  loc_BFC37D: ILdPr
  loc_BFC380: LateIdCallLdVar
  loc_BFC38A: PopAd
  loc_BFC38C: FLdRfVar var_176
  loc_BFC38F: FLdRfVar var_C4
  loc_BFC392: CStrVarTmp
  loc_BFC393: FStStrNoPop var_10C
  loc_BFC396: LitStr "-"
  loc_BFC399: ConcatStr
  loc_BFC39A: FStStrNoPop var_160
  loc_BFC39D: FLdRfVar var_15C
  loc_BFC3A0: CStrVarTmp
  loc_BFC3A1: FStStrNoPop var_164
  loc_BFC3A4: ConcatStr
  loc_BFC3A5: CVarStr var_174
  loc_BFC3A8: FLdRfVar var_8C
  loc_BFC3AB: NewIfNullPr IDictionary
  loc_BFC3AE: IDictionary.Exists(from_stack_1v)
  loc_BFC3B3: FLdI2 var_176
  loc_BFC3B6: NotI4
  loc_BFC3B7: FFreeStr var_10C = "": var_160 = ""
  loc_BFC3C0: FFreeVar var_C4 = "": var_15C = ""
  loc_BFC3C9: BranchF loc_BFC451
  loc_BFC3CC: FLdI2 var_8E
  loc_BFC3CF: CI4UI1
  loc_BFC3D0: CVarI4
  loc_BFC3D4: PopAdLdVar
  loc_BFC3D5: LitVarI4
  loc_BFC3DD: PopAdLdVar
  loc_BFC3DE: ILdPr
  loc_BFC3E1: LateIdCallLdVar
  loc_BFC3EB: PopAd
  loc_BFC3ED: FLdI2 var_8E
  loc_BFC3F0: CI4UI1
  loc_BFC3F1: CVarI4
  loc_BFC3F5: PopAdLdVar
  loc_BFC3F6: LitVarI4
  loc_BFC3FE: PopAdLdVar
  loc_BFC3FF: ILdPr
  loc_BFC402: LateIdCallLdVar
  loc_BFC40C: PopAd
  loc_BFC40E: LitVarStr var_188, vbNullString
  loc_BFC413: FStVarCopyObj var_198
  loc_BFC416: FLdRfVar var_198
  loc_BFC419: FLdRfVar var_C4
  loc_BFC41C: CStrVarTmp
  loc_BFC41D: FStStrNoPop var_10C
  loc_BFC420: LitStr "-"
  loc_BFC423: ConcatStr
  loc_BFC424: FStStrNoPop var_160
  loc_BFC427: FLdRfVar var_15C
  loc_BFC42A: CStrVarTmp
  loc_BFC42B: FStStrNoPop var_164
  loc_BFC42E: ConcatStr
  loc_BFC42F: CVarStr var_174
  loc_BFC432: FLdRfVar var_8C
  loc_BFC435: NewIfNullPr IDictionary
  loc_BFC438: IDictionary.Add(from_stack_1v, from_stack_2v)
  loc_BFC43D: FFreeStr var_10C = "": var_160 = ""
  loc_BFC446: FFreeVar var_C4 = "": var_15C = "": var_174 = ""
  loc_BFC451: FLdRfVar var_8E
  loc_BFC454: NextI2 var_C8, loc_BFC34A
  loc_BFC459: FLdRfVar var_19C
  loc_BFC45C: FLdRfVar var_8C
  loc_BFC45F: NewIfNullPr IDictionary
  loc_BFC462:  = IDictionary.Count
  loc_BFC467: ILdRf var_19C
  loc_BFC46A: LitI4 0
  loc_BFC46F: GtI4
  loc_BFC470: BranchF loc_BFE462
  loc_BFC473: LitI2_Byte 0
  loc_BFC475: FLdRfVar var_8E
  loc_BFC478: FLdRfVar var_19C
  loc_BFC47B: FLdRfVar var_8C
  loc_BFC47E: NewIfNullPr IDictionary
  loc_BFC481:  = IDictionary.Count
  loc_BFC486: ILdRf var_19C
  loc_BFC489: LitI4 1
  loc_BFC48E: SubI4
  loc_BFC48F: CI2I4
  loc_BFC490: ForI2 var_1A0
  loc_BFC496: FLdRfVar var_8E
  loc_BFC499: CDargRef
  loc_BFC49D: FLdRfVar var_C4
  loc_BFC4A0: FLdRfVar var_8C
  loc_BFC4A3: NewIfNullPr IDictionary
  loc_BFC4A6: IDictionary.Keys
  loc_BFC4AB: FLdRfVar var_C4
  loc_BFC4AE: VarIndexLdRfVarLock
  loc_BFC4B6: FStR4 var_19C
  loc_BFC4B9: FLdRfVar var_8E
  loc_BFC4BC: CDargRef
  loc_BFC4C0: FLdRfVar var_214
  loc_BFC4C3: FLdRfVar var_8C
  loc_BFC4C6: NewIfNullPr IDictionary
  loc_BFC4C9: IDictionary.Keys
  loc_BFC4CE: FLdRfVar var_214
  loc_BFC4D1: VarIndexLdRfVarLock
  loc_BFC4D9: FStR4 var_25C
  loc_BFC4DC: LitStr "SELECT * FROM npxpartorga WHERE PeriInfo = "
  loc_BFC4DF: FLdI2 PeriInfo
  loc_BFC4E2: CStrUI1
  loc_BFC4E4: FStStrNoPop var_10C
  loc_BFC4E7: ConcatStr
  loc_BFC4E8: FStStrNoPop var_160
  loc_BFC4EB: LitStr " AND CodiPart = '"
  loc_BFC4EE: ConcatStr
  loc_BFC4EF: CVarStr var_1E4
  loc_BFC4F2: LitI4 1
  loc_BFC4F7: FLdRfVar var_8E
  loc_BFC4FA: CDargRef
  loc_BFC4FE: FLdRfVar var_15C
  loc_BFC501: FLdRfVar var_8C
  loc_BFC504: NewIfNullPr IDictionary
  loc_BFC507: IDictionary.Keys
  loc_BFC50C: FLdRfVar var_15C
  loc_BFC50F: VarIndexLdVar
  loc_BFC515: LitVarStr var_F8, "-"
  loc_BFC51A: LitI4 0
  loc_BFC51F: FnInStr4Var
  loc_BFC523: LitVarI2 var_108, 1
  loc_BFC528: SubVar var_1B0
  loc_BFC52C: CI4Var
  loc_BFC52E: ILdRf var_19C
  loc_BFC531: FLdRfVar var_1D4
  loc_BFC534: ImpAdCallFPR4  = Left(, )
  loc_BFC539: AryUnlock
  loc_BFC53C: FLdRfVar var_1D4
  loc_BFC53F: ConcatVar var_1F4
  loc_BFC543: LitVarStr var_11C, "' AND CodiOrga = '"
  loc_BFC548: ConcatVar var_204
  loc_BFC54C: LitI4 6
  loc_BFC551: ILdRf var_25C
  loc_BFC554: FLdRfVar var_238
  loc_BFC557: ImpAdCallFPR4  = Right(, )
  loc_BFC55C: AryUnlock
  loc_BFC55F: FLdRfVar var_238
  loc_BFC562: ConcatVar var_248
  loc_BFC566: LitVarStr var_13C, "'"
  loc_BFC56B: ConcatVar var_258
  loc_BFC56F: CStrVarVal var_164
  loc_BFC573: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BFC578: FFreeStr var_10C = "": var_160 = ""
  loc_BFC581: FFreeVar var_C4 = "": var_15C = "": var_174 = "": var_198 = "": var_1C0 = "": var_1E4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_224 = "": var_204 = "": var_238 = "": var_248 = ""
  loc_BFC5A0: FLdRfVar var_19C
  loc_BFC5A3: ImpAdLdPr unk_41191A
  loc_BFC5A6: MemLdPr global_0
  loc_BFC5A9:  = Me.RecordCount
  loc_BFC5AE: ILdRf var_19C
  loc_BFC5B1: LitI4 0
  loc_BFC5B6: GtI4
  loc_BFC5B7: BranchF loc_BFE371
  loc_BFC5BA: FLdRfVar var_C4
  loc_BFC5BD: FLdRfVar var_264
  loc_BFC5C0: LitVarStr var_D8, "Impo01"
  loc_BFC5C5: PopAdLdVar
  loc_BFC5C6: FLdRfVar var_260
  loc_BFC5C9: ImpAdLdPr unk_41191A
  loc_BFC5CC: MemLdPr global_0
  loc_BFC5CF:  = Me.Fields
  loc_BFC5D4: FLdPr var_260
  loc_BFC5D7: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC5DC: FLdPr var_264
  loc_BFC5DF:  = Me.Value
  loc_BFC5E4: FLdRfVar var_C4
  loc_BFC5E7: CR4Var
  loc_BFC5E8: LitI4 1
  loc_BFC5ED: FLdRfVar var_A8
  loc_BFC5F0: Ary1StFPR8
  loc_BFC5F1: FFreeAd var_260 = ""
  loc_BFC5F8: FFree1Var var_C4 = ""
  loc_BFC5FB: FLdRfVar var_C4
  loc_BFC5FE: FLdRfVar var_264
  loc_BFC601: LitVarStr var_D8, "Impo02"
  loc_BFC606: PopAdLdVar
  loc_BFC607: FLdRfVar var_260
  loc_BFC60A: ImpAdLdPr unk_41191A
  loc_BFC60D: MemLdPr global_0
  loc_BFC610:  = Me.Fields
  loc_BFC615: FLdPr var_260
  loc_BFC618: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC61D: FLdPr var_264
  loc_BFC620:  = Me.Value
  loc_BFC625: FLdRfVar var_C4
  loc_BFC628: CR4Var
  loc_BFC629: LitI4 2
  loc_BFC62E: FLdRfVar var_A8
  loc_BFC631: Ary1StFPR8
  loc_BFC632: FFreeAd var_260 = ""
  loc_BFC639: FFree1Var var_C4 = ""
  loc_BFC63C: FLdRfVar var_C4
  loc_BFC63F: FLdRfVar var_264
  loc_BFC642: LitVarStr var_D8, "Impo03"
  loc_BFC647: PopAdLdVar
  loc_BFC648: FLdRfVar var_260
  loc_BFC64B: ImpAdLdPr unk_41191A
  loc_BFC64E: MemLdPr global_0
  loc_BFC651:  = Me.Fields
  loc_BFC656: FLdPr var_260
  loc_BFC659: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC65E: FLdPr var_264
  loc_BFC661:  = Me.Value
  loc_BFC666: FLdRfVar var_C4
  loc_BFC669: CR4Var
  loc_BFC66A: LitI4 3
  loc_BFC66F: FLdRfVar var_A8
  loc_BFC672: Ary1StFPR8
  loc_BFC673: FFreeAd var_260 = ""
  loc_BFC67A: FFree1Var var_C4 = ""
  loc_BFC67D: FLdRfVar var_C4
  loc_BFC680: FLdRfVar var_264
  loc_BFC683: LitVarStr var_D8, "Impo04"
  loc_BFC688: PopAdLdVar
  loc_BFC689: FLdRfVar var_260
  loc_BFC68C: ImpAdLdPr unk_41191A
  loc_BFC68F: MemLdPr global_0
  loc_BFC692:  = Me.Fields
  loc_BFC697: FLdPr var_260
  loc_BFC69A: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC69F: FLdPr var_264
  loc_BFC6A2:  = Me.Value
  loc_BFC6A7: FLdRfVar var_C4
  loc_BFC6AA: CR4Var
  loc_BFC6AB: LitI4 4
  loc_BFC6B0: FLdRfVar var_A8
  loc_BFC6B3: Ary1StFPR8
  loc_BFC6B4: FFreeAd var_260 = ""
  loc_BFC6BB: FFree1Var var_C4 = ""
  loc_BFC6BE: FLdRfVar var_C4
  loc_BFC6C1: FLdRfVar var_264
  loc_BFC6C4: LitVarStr var_D8, "Impo05"
  loc_BFC6C9: PopAdLdVar
  loc_BFC6CA: FLdRfVar var_260
  loc_BFC6CD: ImpAdLdPr unk_41191A
  loc_BFC6D0: MemLdPr global_0
  loc_BFC6D3:  = Me.Fields
  loc_BFC6D8: FLdPr var_260
  loc_BFC6DB: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC6E0: FLdPr var_264
  loc_BFC6E3:  = Me.Value
  loc_BFC6E8: FLdRfVar var_C4
  loc_BFC6EB: CR4Var
  loc_BFC6EC: LitI4 5
  loc_BFC6F1: FLdRfVar var_A8
  loc_BFC6F4: Ary1StFPR8
  loc_BFC6F5: FFreeAd var_260 = ""
  loc_BFC6FC: FFree1Var var_C4 = ""
  loc_BFC6FF: FLdRfVar var_C4
  loc_BFC702: FLdRfVar var_264
  loc_BFC705: LitVarStr var_D8, "Impo06"
  loc_BFC70A: PopAdLdVar
  loc_BFC70B: FLdRfVar var_260
  loc_BFC70E: ImpAdLdPr unk_41191A
  loc_BFC711: MemLdPr global_0
  loc_BFC714:  = Me.Fields
  loc_BFC719: FLdPr var_260
  loc_BFC71C: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC721: FLdPr var_264
  loc_BFC724:  = Me.Value
  loc_BFC729: FLdRfVar var_C4
  loc_BFC72C: CR4Var
  loc_BFC72D: LitI4 6
  loc_BFC732: FLdRfVar var_A8
  loc_BFC735: Ary1StFPR8
  loc_BFC736: FFreeAd var_260 = ""
  loc_BFC73D: FFree1Var var_C4 = ""
  loc_BFC740: FLdRfVar var_C4
  loc_BFC743: FLdRfVar var_264
  loc_BFC746: LitVarStr var_D8, "Impo07"
  loc_BFC74B: PopAdLdVar
  loc_BFC74C: FLdRfVar var_260
  loc_BFC74F: ImpAdLdPr unk_41191A
  loc_BFC752: MemLdPr global_0
  loc_BFC755:  = Me.Fields
  loc_BFC75A: FLdPr var_260
  loc_BFC75D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC762: FLdPr var_264
  loc_BFC765:  = Me.Value
  loc_BFC76A: FLdRfVar var_C4
  loc_BFC76D: CR4Var
  loc_BFC76E: LitI4 7
  loc_BFC773: FLdRfVar var_A8
  loc_BFC776: Ary1StFPR8
  loc_BFC777: FFreeAd var_260 = ""
  loc_BFC77E: FFree1Var var_C4 = ""
  loc_BFC781: FLdRfVar var_C4
  loc_BFC784: FLdRfVar var_264
  loc_BFC787: LitVarStr var_D8, "Impo08"
  loc_BFC78C: PopAdLdVar
  loc_BFC78D: FLdRfVar var_260
  loc_BFC790: ImpAdLdPr unk_41191A
  loc_BFC793: MemLdPr global_0
  loc_BFC796:  = Me.Fields
  loc_BFC79B: FLdPr var_260
  loc_BFC79E: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC7A3: FLdPr var_264
  loc_BFC7A6:  = Me.Value
  loc_BFC7AB: FLdRfVar var_C4
  loc_BFC7AE: CR4Var
  loc_BFC7AF: LitI4 8
  loc_BFC7B4: FLdRfVar var_A8
  loc_BFC7B7: Ary1StFPR8
  loc_BFC7B8: FFreeAd var_260 = ""
  loc_BFC7BF: FFree1Var var_C4 = ""
  loc_BFC7C2: FLdRfVar var_C4
  loc_BFC7C5: FLdRfVar var_264
  loc_BFC7C8: LitVarStr var_D8, "Impo09"
  loc_BFC7CD: PopAdLdVar
  loc_BFC7CE: FLdRfVar var_260
  loc_BFC7D1: ImpAdLdPr unk_41191A
  loc_BFC7D4: MemLdPr global_0
  loc_BFC7D7:  = Me.Fields
  loc_BFC7DC: FLdPr var_260
  loc_BFC7DF: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC7E4: FLdPr var_264
  loc_BFC7E7:  = Me.Value
  loc_BFC7EC: FLdRfVar var_C4
  loc_BFC7EF: CR4Var
  loc_BFC7F0: LitI4 9
  loc_BFC7F5: FLdRfVar var_A8
  loc_BFC7F8: Ary1StFPR8
  loc_BFC7F9: FFreeAd var_260 = ""
  loc_BFC800: FFree1Var var_C4 = ""
  loc_BFC803: FLdRfVar var_C4
  loc_BFC806: FLdRfVar var_264
  loc_BFC809: LitVarStr var_D8, "Impo10"
  loc_BFC80E: PopAdLdVar
  loc_BFC80F: FLdRfVar var_260
  loc_BFC812: ImpAdLdPr unk_41191A
  loc_BFC815: MemLdPr global_0
  loc_BFC818:  = Me.Fields
  loc_BFC81D: FLdPr var_260
  loc_BFC820: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC825: FLdPr var_264
  loc_BFC828:  = Me.Value
  loc_BFC82D: FLdRfVar var_C4
  loc_BFC830: CR4Var
  loc_BFC831: LitI4 &HA
  loc_BFC836: FLdRfVar var_A8
  loc_BFC839: Ary1StFPR8
  loc_BFC83A: FFreeAd var_260 = ""
  loc_BFC841: FFree1Var var_C4 = ""
  loc_BFC844: FLdRfVar var_C4
  loc_BFC847: FLdRfVar var_264
  loc_BFC84A: LitVarStr var_D8, "Impo11"
  loc_BFC84F: PopAdLdVar
  loc_BFC850: FLdRfVar var_260
  loc_BFC853: ImpAdLdPr unk_41191A
  loc_BFC856: MemLdPr global_0
  loc_BFC859:  = Me.Fields
  loc_BFC85E: FLdPr var_260
  loc_BFC861: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC866: FLdPr var_264
  loc_BFC869:  = Me.Value
  loc_BFC86E: FLdRfVar var_C4
  loc_BFC871: CR4Var
  loc_BFC872: LitI4 &HB
  loc_BFC877: FLdRfVar var_A8
  loc_BFC87A: Ary1StFPR8
  loc_BFC87B: FFreeAd var_260 = ""
  loc_BFC882: FFree1Var var_C4 = ""
  loc_BFC885: FLdRfVar var_C4
  loc_BFC888: FLdRfVar var_264
  loc_BFC88B: LitVarStr var_D8, "Impo12"
  loc_BFC890: PopAdLdVar
  loc_BFC891: FLdRfVar var_260
  loc_BFC894: ImpAdLdPr unk_41191A
  loc_BFC897: MemLdPr global_0
  loc_BFC89A:  = Me.Fields
  loc_BFC89F: FLdPr var_260
  loc_BFC8A2: from_stack_2 = Me.Item(from_stack_1)
  loc_BFC8A7: FLdPr var_264
  loc_BFC8AA:  = Me.Value
  loc_BFC8AF: FLdRfVar var_C4
  loc_BFC8B2: CR4Var
  loc_BFC8B3: LitI4 &HC
  loc_BFC8B8: FLdRfVar var_A8
  loc_BFC8BB: Ary1StFPR8
  loc_BFC8BC: FFreeAd var_260 = ""
  loc_BFC8C3: FFree1Var var_C4 = ""
  loc_BFC8C6: LitI2_Byte 0
  loc_BFC8C8: CR8I2
  loc_BFC8C9: FStFPR8 var_B4
  loc_BFC8CC: LitI2_Byte 1
  loc_BFC8CE: FLdRfVar var_90
  loc_BFC8D1: ILdPr
  loc_BFC8D4: LateIdLdVar var_C4 DispID_4 0
  loc_BFC8DB: CI4Var
  loc_BFC8DD: LitI4 1
  loc_BFC8E2: SubI4
  loc_BFC8E3: CI2I4
  loc_BFC8E4: FFree1Var var_C4 = ""
  loc_BFC8E7: ForI2 var_268
  loc_BFC8ED: FLdI2 var_90
  loc_BFC8F0: CI4UI1
  loc_BFC8F1: CVarI4
  loc_BFC8F5: PopAdLdVar
  loc_BFC8F6: LitVarI4
  loc_BFC8FE: PopAdLdVar
  loc_BFC8FF: ILdPr
  loc_BFC902: LateIdCallLdVar
  loc_BFC90C: CStrVarTmp
  loc_BFC90D: CVarStr var_15C
  loc_BFC910: ImpAdCallI2 IsNumeric()
  loc_BFC915: FFreeVar var_C4 = ""
  loc_BFC91C: BranchF loc_BFCA90
  loc_BFC91F: FLdRfVar var_8E
  loc_BFC922: CDargRef
  loc_BFC926: FLdRfVar var_15C
  loc_BFC929: FLdRfVar var_8C
  loc_BFC92C: NewIfNullPr IDictionary
  loc_BFC92F: IDictionary.Keys
  loc_BFC934: FLdRfVar var_15C
  loc_BFC937: VarIndexLdRfVarLock
  loc_BFC93F: FStR4 var_19C
  loc_BFC942: FLdRfVar var_8E
  loc_BFC945: CDargRef
  loc_BFC949: FLdRfVar var_224
  loc_BFC94C: FLdRfVar var_8C
  loc_BFC94F: NewIfNullPr IDictionary
  loc_BFC952: IDictionary.Keys
  loc_BFC957: FLdRfVar var_224
  loc_BFC95A: VarIndexLdRfVarLock
  loc_BFC962: FStR4 var_25C
  loc_BFC965: FLdI2 var_90
  loc_BFC968: CI4UI1
  loc_BFC969: CVarI4
  loc_BFC96D: PopAdLdVar
  loc_BFC96E: LitVarI4
  loc_BFC976: PopAdLdVar
  loc_BFC977: ILdPr
  loc_BFC97A: LateIdCallLdVar
  loc_BFC984: CStrVarTmp
  loc_BFC985: CVarStr var_1F4
  loc_BFC988: HardType
  loc_BFC989: LitI4 1
  loc_BFC98E: FLdRfVar var_8E
  loc_BFC991: CDargRef
  loc_BFC995: FLdRfVar var_174
  loc_BFC998: FLdRfVar var_8C
  loc_BFC99B: NewIfNullPr IDictionary
  loc_BFC99E: IDictionary.Keys
  loc_BFC9A3: FLdRfVar var_174
  loc_BFC9A6: VarIndexLdVar
  loc_BFC9AC: LitVarStr var_13C, "-"
  loc_BFC9B1: LitI4 0
  loc_BFC9B6: FnInStr4Var
  loc_BFC9BA: LitVarI2 var_14C, 1
  loc_BFC9BF: SubVar var_1C0
  loc_BFC9C3: CI4Var
  loc_BFC9C5: ILdRf var_19C
  loc_BFC9C8: FLdRfVar var_1E4
  loc_BFC9CB: ImpAdCallFPR4  = Left(, )
  loc_BFC9D0: AryUnlock
  loc_BFC9D3: FLdRfVar var_1E4
  loc_BFC9D6: EqVar var_204
  loc_BFC9DA: FLdI2 var_90
  loc_BFC9DD: CI4UI1
  loc_BFC9DE: CVarI4
  loc_BFC9E2: PopAdLdVar
  loc_BFC9E3: LitVarI4
  loc_BFC9EB: PopAdLdVar
  loc_BFC9EC: ILdPr
  loc_BFC9EF: LateIdCallLdVar
  loc_BFC9F9: CStrVarTmp
  loc_BFC9FA: CVarStr var_258
  loc_BFC9FD: HardType
  loc_BFC9FE: LitI4 6
  loc_BFCA03: ILdRf var_25C
  loc_BFCA06: FLdRfVar var_248
  loc_BFCA09: ImpAdCallFPR4  = Right(, )
  loc_BFCA0E: AryUnlock
  loc_BFCA11: FLdRfVar var_248
  loc_BFCA14: EqVar var_2B8
  loc_BFCA18: AndVar var_2C8
  loc_BFCA1C: CBoolVarNull
  loc_BFCA1E: FFreeVar var_C4 = "": var_15C = "": var_174 = "": var_198 = "": var_1B0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_214 = "": var_224 = "": var_238 = "": var_258 = ""
  loc_BFCA3B: BranchF loc_BFCA90
  loc_BFCA3E: FLdI2 var_90
  loc_BFCA41: CI4UI1
  loc_BFCA42: CVarI4
  loc_BFCA46: PopAdLdVar
  loc_BFCA47: LitVarI4
  loc_BFCA4F: PopAdLdVar
  loc_BFCA50: ILdPr
  loc_BFCA53: LateIdCallLdVar
  loc_BFCA5D: PopAd
  loc_BFCA5F: LitI4 3
  loc_BFCA64: FLdFPR8 var_B4
  loc_BFCA67: FLdRfVar var_C4
  loc_BFCA6A: CStrVarTmp
  loc_BFCA6B: FStStrNoPop var_10C
  loc_BFCA6E: CR8Str
  loc_BFCA70: AddR8
  loc_BFCA71: CVarR8
  loc_BFCA75: FLdRfVar var_174
  loc_BFCA78: ImpAdCallFPR4  = Round(, )
  loc_BFCA7D: FLdRfVar var_174
  loc_BFCA80: CR4Var
  loc_BFCA81: FStFPR8 var_B4
  loc_BFCA84: FFree1Str var_10C
  loc_BFCA87: FFreeVar var_C4 = "": var_15C = ""
  loc_BFCA90: FLdRfVar var_90
  loc_BFCA93: NextI2 var_268, loc_BFC8ED
  loc_BFCA98: FLdRfVar var_8E
  loc_BFCA9B: CDargRef
  loc_BFCA9F: FLdRfVar var_C4
  loc_BFCAA2: FLdRfVar var_8C
  loc_BFCAA5: NewIfNullPr IDictionary
  loc_BFCAA8: IDictionary.Keys
  loc_BFCAAD: FLdRfVar var_C4
  loc_BFCAB0: VarIndexLdRfVarLock
  loc_BFCAB8: FStR4 var_19C
  loc_BFCABB: FLdRfVar var_8E
  loc_BFCABE: CDargRef
  loc_BFCAC2: FLdRfVar var_214
  loc_BFCAC5: FLdRfVar var_8C
  loc_BFCAC8: NewIfNullPr IDictionary
  loc_BFCACB: IDictionary.Keys
  loc_BFCAD0: FLdRfVar var_214
  loc_BFCAD3: VarIndexLdRfVarLock
  loc_BFCADB: FStR4 var_25C
  loc_BFCADE: LitStr "SELECT Group_concat(distinct np.CodiNope) notas, IFNULL(SUM(CantItno*ImunItno),0) acum"
  loc_BFCAE1: LitStr " FROM notapedido np"
  loc_BFCAE4: ConcatStr
  loc_BFCAE5: FStStrNoPop var_10C
  loc_BFCAE8: LitStr " INNER JOIN itemnota it ON it.PeriInfo = np.PeriInfo AND it.CodiNope = np.CodiNope AND it.CodiPart = '"
  loc_BFCAEB: ConcatStr
  loc_BFCAEC: CVarStr var_1E4
  loc_BFCAEF: LitI4 1
  loc_BFCAF4: FLdRfVar var_8E
  loc_BFCAF7: CDargRef
  loc_BFCAFB: FLdRfVar var_15C
  loc_BFCAFE: FLdRfVar var_8C
  loc_BFCB01: NewIfNullPr IDictionary
  loc_BFCB04: IDictionary.Keys
  loc_BFCB09: FLdRfVar var_15C
  loc_BFCB0C: VarIndexLdVar
  loc_BFCB12: LitVarStr var_F8, "-"
  loc_BFCB17: LitI4 0
  loc_BFCB1C: FnInStr4Var
  loc_BFCB20: LitVarI2 var_108, 1
  loc_BFCB25: SubVar var_1B0
  loc_BFCB29: CI4Var
  loc_BFCB2B: ILdRf var_19C
  loc_BFCB2E: FLdRfVar var_1D4
  loc_BFCB31: ImpAdCallFPR4  = Left(, )
  loc_BFCB36: AryUnlock
  loc_BFCB39: FLdRfVar var_1D4
  loc_BFCB3C: ConcatVar var_1F4
  loc_BFCB40: LitVarStr var_11C, "' AND it.CodiOrga = '"
  loc_BFCB45: ConcatVar var_204
  loc_BFCB49: LitI4 6
  loc_BFCB4E: ILdRf var_25C
  loc_BFCB51: FLdRfVar var_238
  loc_BFCB54: ImpAdCallFPR4  = Right(, )
  loc_BFCB59: AryUnlock
  loc_BFCB5C: FLdRfVar var_238
  loc_BFCB5F: ConcatVar var_248
  loc_BFCB63: LitVarStr var_13C, "'"
  loc_BFCB68: ConcatVar var_258
  loc_BFCB6C: LitVarStr var_14C, " WHERE np.PeriInfo = "
  loc_BFCB71: ConcatVar var_2B8
  loc_BFCB75: FLdI2 PeriInfo
  loc_BFCB78: CVarI2 var_188
  loc_BFCB7B: ConcatVar var_2C8
  loc_BFCB7F: LitVarStr var_278, " AND np.CodiNope != "
  loc_BFCB84: ConcatVar var_2D8
  loc_BFCB88: FLdI2 iCodiNope
  loc_BFCB8B: CVarI2 var_288
  loc_BFCB8E: ConcatVar var_2E8
  loc_BFCB92: LitVarStr var_298, " AND CodiTico = 1 AND Month(FechNope) = "
  loc_BFCB97: ConcatVar var_2F8
  loc_BFCB9B: FLdUI1
  loc_BFCB9F: CVarUI1
  loc_BFCBA3: ConcatVar var_308
  loc_BFCBA7: LitVarStr var_318, " AND FeanNope IS NULL"
  loc_BFCBAC: ConcatVar var_328
  loc_BFCBB0: CStrVarVal var_160
  loc_BFCBB4: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BFCBB9: FFreeStr var_10C = ""
  loc_BFCBC0: FFreeVar var_C4 = "": var_15C = "": var_174 = "": var_198 = "": var_1C0 = "": var_1E4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_224 = "": var_204 = "": var_238 = "": var_248 = "": var_258 = "": var_2B8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFCBED: FLdUI1
  loc_BFCBF1: FStUI1 var_32A
  loc_BFCBF5: FLdUI1
  loc_BFCBF9: LitI2_Byte 1
  loc_BFCBFB: CUI1I2
  loc_BFCBFD: EqI2
  loc_BFCBFE: BranchF loc_BFCDEA
  loc_BFCC01: FLdRfVar var_C4
  loc_BFCC04: FLdRfVar var_264
  loc_BFCC07: LitVarStr var_D8, "acum"
  loc_BFCC0C: PopAdLdVar
  loc_BFCC0D: FLdRfVar var_260
  loc_BFCC10: ImpAdLdPr unk_41191A
  loc_BFCC13: MemLdPr global_0
  loc_BFCC16:  = Me.Fields
  loc_BFCC1B: FLdPr var_260
  loc_BFCC1E: from_stack_2 = Me.Item(from_stack_1)
  loc_BFCC23: FLdPr var_264
  loc_BFCC26:  = Me.Value
  loc_BFCC2B: FLdRfVar var_C4
  loc_BFCC2E: FLdFPR8 var_B4
  loc_BFCC31: CVarR8
  loc_BFCC35: AddVar var_15C
  loc_BFCC39: LitI4 1
  loc_BFCC3E: FLdRfVar var_A8
  loc_BFCC41: Ary1LdFPR8
  loc_BFCC42: CVarR8
  loc_BFCC46: HardType
  loc_BFCC47: GtVarBool
  loc_BFCC49: FFreeAd var_260 = ""
  loc_BFCC50: FFreeVar var_C4 = ""
  loc_BFCC57: BranchF loc_BFCDE1
  loc_BFCC5A: FLdRfVar var_264
  loc_BFCC5D: LitVarStr var_D8, "acum"
  loc_BFCC62: PopAdLdVar
  loc_BFCC63: FLdRfVar var_260
  loc_BFCC66: ImpAdLdPr unk_41191A
  loc_BFCC69: MemLdPr global_0
  loc_BFCC6C:  = Me.Fields
  loc_BFCC71: FLdPr var_260
  loc_BFCC74: from_stack_2 = Me.Item(from_stack_1)
  loc_BFCC79: LitStr "El Importe acumulado "
  loc_BFCC7C: LitI4 1
  loc_BFCC81: LitI4 1
  loc_BFCC86: LitVarStr var_E8, "currency"
  loc_BFCC8B: FStVarCopyObj var_15C
  loc_BFCC8E: FLdRfVar var_15C
  loc_BFCC91: FLdZeroAd var_264
  loc_BFCC94: CVarAd
  loc_BFCC98: ImpAdCallI2 Format$(, )
  loc_BFCC9D: FStStrNoPop var_10C
  loc_BFCCA0: ConcatStr
  loc_BFCCA1: FStStrNoPop var_160
  loc_BFCCA4: LitStr " de la/s NP ("
  loc_BFCCA7: ConcatStr
  loc_BFCCA8: CVarStr var_198
  loc_BFCCAB: FLdRfVar var_174
  loc_BFCCAE: FLdRfVar var_334
  loc_BFCCB1: LitVarStr var_F8, "notas"
  loc_BFCCB6: PopAdLdVar
  loc_BFCCB7: FLdRfVar var_330
  loc_BFCCBA: ImpAdLdPr unk_41191A
  loc_BFCCBD: MemLdPr global_0
  loc_BFCCC0:  = Me.Fields
  loc_BFCCC5: FLdPr var_330
  loc_BFCCC8: from_stack_2 = Me.Item(from_stack_1)
  loc_BFCCCD: FLdPr var_334
  loc_BFCCD0:  = Me.Value
  loc_BFCCD5: FLdRfVar var_174
  loc_BFCCD8: ConcatVar var_1B0
  loc_BFCCDC: LitVarStr var_108, ")"
  loc_BFCCE1: ConcatVar var_1C0
  loc_BFCCE5: LitVarStr var_11C, vbCrLf
  loc_BFCCEA: ConcatVar var_1D4
  loc_BFCCEE: LitVarStr var_12C, " más el total de la NP "
  loc_BFCCF3: ConcatVar var_1E4
  loc_BFCCF7: LitI4 1
  loc_BFCCFC: LitI4 1
  loc_BFCD01: LitVarStr var_14C, "currency"
  loc_BFCD06: FStVarCopyObj var_1F4
  loc_BFCD09: FLdRfVar var_1F4
  loc_BFCD0C: FLdRfVar var_B4
  loc_BFCD0F: CVarRef
  loc_BFCD14: ImpAdCallI2 Format$(, )
  loc_BFCD19: CVarStr var_204
  loc_BFCD1C: ConcatVar var_214
  loc_BFCD20: LitVarStr var_188, vbCrLf
  loc_BFCD25: ConcatVar var_224
  loc_BFCD29: LitVarStr var_278, " para "
  loc_BFCD2E: ConcatVar var_238
  loc_BFCD32: FLdRfVar var_8E
  loc_BFCD35: CDargRef
  loc_BFCD39: FLdRfVar var_248
  loc_BFCD3C: FLdRfVar var_8C
  loc_BFCD3F: NewIfNullPr IDictionary
  loc_BFCD42: IDictionary.Keys
  loc_BFCD47: FLdRfVar var_248
  loc_BFCD4A: VarIndexLdVar
  loc_BFCD50: ConcatVar var_2B8
  loc_BFCD54: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFCD59: ConcatVar var_2C8
  loc_BFCD5D: LitI4 1
  loc_BFCD62: LitI4 1
  loc_BFCD67: LitVarStr var_318, "currency"
  loc_BFCD6C: FStVarCopyObj var_2D8
  loc_BFCD6F: FLdRfVar var_2D8
  loc_BFCD72: LitI4 1
  loc_BFCD77: FLdRfVar var_A8
  loc_BFCD7A: Ary1LdRf
  loc_BFCD7B: CVarRef
  loc_BFCD80: ImpAdCallI2 Format$(, )
  loc_BFCD85: CVarStr var_2E8
  loc_BFCD88: ConcatVar var_2F8
  loc_BFCD8C: LitVarStr var_344, vbCrLf
  loc_BFCD91: ConcatVar var_308
  loc_BFCD95: LitVarStr var_354, " Verifique..."
  loc_BFCD9A: ConcatVar var_328
  loc_BFCD9E: CStrVarTmp
  loc_BFCD9F: FStStr var_88
  loc_BFCDA2: FFreeStr var_10C = ""
  loc_BFCDA9: FFreeAd var_260 = "": var_330 = ""
  loc_BFCDB2: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFCDE1: ExitProcCbHresult
  loc_BFCDE7: Branch loc_BFE36E
  loc_BFCDEA: FLdUI1
  loc_BFCDEE: LitI2_Byte 2
  loc_BFCDF0: CUI1I2
  loc_BFCDF2: EqI2
  loc_BFCDF3: BranchF loc_BFCFDF
  loc_BFCDF6: FLdRfVar var_C4
  loc_BFCDF9: FLdRfVar var_264
  loc_BFCDFC: LitVarStr var_D8, "acum"
  loc_BFCE01: PopAdLdVar
  loc_BFCE02: FLdRfVar var_260
  loc_BFCE05: ImpAdLdPr unk_41191A
  loc_BFCE08: MemLdPr global_0
  loc_BFCE0B:  = Me.Fields
  loc_BFCE10: FLdPr var_260
  loc_BFCE13: from_stack_2 = Me.Item(from_stack_1)
  loc_BFCE18: FLdPr var_264
  loc_BFCE1B:  = Me.Value
  loc_BFCE20: FLdRfVar var_C4
  loc_BFCE23: FLdFPR8 var_B4
  loc_BFCE26: CVarR8
  loc_BFCE2A: AddVar var_15C
  loc_BFCE2E: LitI4 2
  loc_BFCE33: FLdRfVar var_A8
  loc_BFCE36: Ary1LdFPR8
  loc_BFCE37: CVarR8
  loc_BFCE3B: HardType
  loc_BFCE3C: GtVarBool
  loc_BFCE3E: FFreeAd var_260 = ""
  loc_BFCE45: FFreeVar var_C4 = ""
  loc_BFCE4C: BranchF loc_BFCFD6
  loc_BFCE4F: FLdRfVar var_264
  loc_BFCE52: LitVarStr var_D8, "acum"
  loc_BFCE57: PopAdLdVar
  loc_BFCE58: FLdRfVar var_260
  loc_BFCE5B: ImpAdLdPr unk_41191A
  loc_BFCE5E: MemLdPr global_0
  loc_BFCE61:  = Me.Fields
  loc_BFCE66: FLdPr var_260
  loc_BFCE69: from_stack_2 = Me.Item(from_stack_1)
  loc_BFCE6E: LitStr "El Importe acumulado "
  loc_BFCE71: LitI4 1
  loc_BFCE76: LitI4 1
  loc_BFCE7B: LitVarStr var_E8, "currency"
  loc_BFCE80: FStVarCopyObj var_15C
  loc_BFCE83: FLdRfVar var_15C
  loc_BFCE86: FLdZeroAd var_264
  loc_BFCE89: CVarAd
  loc_BFCE8D: ImpAdCallI2 Format$(, )
  loc_BFCE92: FStStrNoPop var_10C
  loc_BFCE95: ConcatStr
  loc_BFCE96: FStStrNoPop var_160
  loc_BFCE99: LitStr " de la/s NP ("
  loc_BFCE9C: ConcatStr
  loc_BFCE9D: CVarStr var_198
  loc_BFCEA0: FLdRfVar var_174
  loc_BFCEA3: FLdRfVar var_334
  loc_BFCEA6: LitVarStr var_F8, "notas"
  loc_BFCEAB: PopAdLdVar
  loc_BFCEAC: FLdRfVar var_330
  loc_BFCEAF: ImpAdLdPr unk_41191A
  loc_BFCEB2: MemLdPr global_0
  loc_BFCEB5:  = Me.Fields
  loc_BFCEBA: FLdPr var_330
  loc_BFCEBD: from_stack_2 = Me.Item(from_stack_1)
  loc_BFCEC2: FLdPr var_334
  loc_BFCEC5:  = Me.Value
  loc_BFCECA: FLdRfVar var_174
  loc_BFCECD: ConcatVar var_1B0
  loc_BFCED1: LitVarStr var_108, ")"
  loc_BFCED6: ConcatVar var_1C0
  loc_BFCEDA: LitVarStr var_11C, vbCrLf
  loc_BFCEDF: ConcatVar var_1D4
  loc_BFCEE3: LitVarStr var_12C, " más el total de la NP "
  loc_BFCEE8: ConcatVar var_1E4
  loc_BFCEEC: LitI4 1
  loc_BFCEF1: LitI4 1
  loc_BFCEF6: LitVarStr var_14C, "currency"
  loc_BFCEFB: FStVarCopyObj var_1F4
  loc_BFCEFE: FLdRfVar var_1F4
  loc_BFCF01: FLdRfVar var_B4
  loc_BFCF04: CVarRef
  loc_BFCF09: ImpAdCallI2 Format$(, )
  loc_BFCF0E: CVarStr var_204
  loc_BFCF11: ConcatVar var_214
  loc_BFCF15: LitVarStr var_188, vbCrLf
  loc_BFCF1A: ConcatVar var_224
  loc_BFCF1E: LitVarStr var_278, " para "
  loc_BFCF23: ConcatVar var_238
  loc_BFCF27: FLdRfVar var_8E
  loc_BFCF2A: CDargRef
  loc_BFCF2E: FLdRfVar var_248
  loc_BFCF31: FLdRfVar var_8C
  loc_BFCF34: NewIfNullPr IDictionary
  loc_BFCF37: IDictionary.Keys
  loc_BFCF3C: FLdRfVar var_248
  loc_BFCF3F: VarIndexLdVar
  loc_BFCF45: ConcatVar var_2B8
  loc_BFCF49: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFCF4E: ConcatVar var_2C8
  loc_BFCF52: LitI4 1
  loc_BFCF57: LitI4 1
  loc_BFCF5C: LitVarStr var_318, "currency"
  loc_BFCF61: FStVarCopyObj var_2D8
  loc_BFCF64: FLdRfVar var_2D8
  loc_BFCF67: LitI4 2
  loc_BFCF6C: FLdRfVar var_A8
  loc_BFCF6F: Ary1LdRf
  loc_BFCF70: CVarRef
  loc_BFCF75: ImpAdCallI2 Format$(, )
  loc_BFCF7A: CVarStr var_2E8
  loc_BFCF7D: ConcatVar var_2F8
  loc_BFCF81: LitVarStr var_344, vbCrLf
  loc_BFCF86: ConcatVar var_308
  loc_BFCF8A: LitVarStr var_354, " Verifique..."
  loc_BFCF8F: ConcatVar var_328
  loc_BFCF93: CStrVarTmp
  loc_BFCF94: FStStr var_88
  loc_BFCF97: FFreeStr var_10C = ""
  loc_BFCF9E: FFreeAd var_260 = "": var_330 = ""
  loc_BFCFA7: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFCFD6: ExitProcCbHresult
  loc_BFCFDC: Branch loc_BFE36E
  loc_BFCFDF: FLdUI1
  loc_BFCFE3: LitI2_Byte 3
  loc_BFCFE5: CUI1I2
  loc_BFCFE7: EqI2
  loc_BFCFE8: BranchF loc_BFD1D4
  loc_BFCFEB: FLdRfVar var_C4
  loc_BFCFEE: FLdRfVar var_264
  loc_BFCFF1: LitVarStr var_D8, "acum"
  loc_BFCFF6: PopAdLdVar
  loc_BFCFF7: FLdRfVar var_260
  loc_BFCFFA: ImpAdLdPr unk_41191A
  loc_BFCFFD: MemLdPr global_0
  loc_BFD000:  = Me.Fields
  loc_BFD005: FLdPr var_260
  loc_BFD008: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD00D: FLdPr var_264
  loc_BFD010:  = Me.Value
  loc_BFD015: FLdRfVar var_C4
  loc_BFD018: FLdFPR8 var_B4
  loc_BFD01B: CVarR8
  loc_BFD01F: AddVar var_15C
  loc_BFD023: LitI4 3
  loc_BFD028: FLdRfVar var_A8
  loc_BFD02B: Ary1LdFPR8
  loc_BFD02C: CVarR8
  loc_BFD030: HardType
  loc_BFD031: GtVarBool
  loc_BFD033: FFreeAd var_260 = ""
  loc_BFD03A: FFreeVar var_C4 = ""
  loc_BFD041: BranchF loc_BFD1CB
  loc_BFD044: FLdRfVar var_264
  loc_BFD047: LitVarStr var_D8, "acum"
  loc_BFD04C: PopAdLdVar
  loc_BFD04D: FLdRfVar var_260
  loc_BFD050: ImpAdLdPr unk_41191A
  loc_BFD053: MemLdPr global_0
  loc_BFD056:  = Me.Fields
  loc_BFD05B: FLdPr var_260
  loc_BFD05E: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD063: LitStr "El Importe acumulado "
  loc_BFD066: LitI4 1
  loc_BFD06B: LitI4 1
  loc_BFD070: LitVarStr var_E8, "currency"
  loc_BFD075: FStVarCopyObj var_15C
  loc_BFD078: FLdRfVar var_15C
  loc_BFD07B: FLdZeroAd var_264
  loc_BFD07E: CVarAd
  loc_BFD082: ImpAdCallI2 Format$(, )
  loc_BFD087: FStStrNoPop var_10C
  loc_BFD08A: ConcatStr
  loc_BFD08B: FStStrNoPop var_160
  loc_BFD08E: LitStr " de la/s NP ("
  loc_BFD091: ConcatStr
  loc_BFD092: CVarStr var_198
  loc_BFD095: FLdRfVar var_174
  loc_BFD098: FLdRfVar var_334
  loc_BFD09B: LitVarStr var_F8, "notas"
  loc_BFD0A0: PopAdLdVar
  loc_BFD0A1: FLdRfVar var_330
  loc_BFD0A4: ImpAdLdPr unk_41191A
  loc_BFD0A7: MemLdPr global_0
  loc_BFD0AA:  = Me.Fields
  loc_BFD0AF: FLdPr var_330
  loc_BFD0B2: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD0B7: FLdPr var_334
  loc_BFD0BA:  = Me.Value
  loc_BFD0BF: FLdRfVar var_174
  loc_BFD0C2: ConcatVar var_1B0
  loc_BFD0C6: LitVarStr var_108, ")"
  loc_BFD0CB: ConcatVar var_1C0
  loc_BFD0CF: LitVarStr var_11C, vbCrLf
  loc_BFD0D4: ConcatVar var_1D4
  loc_BFD0D8: LitVarStr var_12C, " más el total de la NP "
  loc_BFD0DD: ConcatVar var_1E4
  loc_BFD0E1: LitI4 1
  loc_BFD0E6: LitI4 1
  loc_BFD0EB: LitVarStr var_14C, "currency"
  loc_BFD0F0: FStVarCopyObj var_1F4
  loc_BFD0F3: FLdRfVar var_1F4
  loc_BFD0F6: FLdRfVar var_B4
  loc_BFD0F9: CVarRef
  loc_BFD0FE: ImpAdCallI2 Format$(, )
  loc_BFD103: CVarStr var_204
  loc_BFD106: ConcatVar var_214
  loc_BFD10A: LitVarStr var_188, vbCrLf
  loc_BFD10F: ConcatVar var_224
  loc_BFD113: LitVarStr var_278, " para "
  loc_BFD118: ConcatVar var_238
  loc_BFD11C: FLdRfVar var_8E
  loc_BFD11F: CDargRef
  loc_BFD123: FLdRfVar var_248
  loc_BFD126: FLdRfVar var_8C
  loc_BFD129: NewIfNullPr IDictionary
  loc_BFD12C: IDictionary.Keys
  loc_BFD131: FLdRfVar var_248
  loc_BFD134: VarIndexLdVar
  loc_BFD13A: ConcatVar var_2B8
  loc_BFD13E: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFD143: ConcatVar var_2C8
  loc_BFD147: LitI4 1
  loc_BFD14C: LitI4 1
  loc_BFD151: LitVarStr var_318, "currency"
  loc_BFD156: FStVarCopyObj var_2D8
  loc_BFD159: FLdRfVar var_2D8
  loc_BFD15C: LitI4 3
  loc_BFD161: FLdRfVar var_A8
  loc_BFD164: Ary1LdRf
  loc_BFD165: CVarRef
  loc_BFD16A: ImpAdCallI2 Format$(, )
  loc_BFD16F: CVarStr var_2E8
  loc_BFD172: ConcatVar var_2F8
  loc_BFD176: LitVarStr var_344, vbCrLf
  loc_BFD17B: ConcatVar var_308
  loc_BFD17F: LitVarStr var_354, " Verifique..."
  loc_BFD184: ConcatVar var_328
  loc_BFD188: CStrVarTmp
  loc_BFD189: FStStr var_88
  loc_BFD18C: FFreeStr var_10C = ""
  loc_BFD193: FFreeAd var_260 = "": var_330 = ""
  loc_BFD19C: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFD1CB: ExitProcCbHresult
  loc_BFD1D1: Branch loc_BFE36E
  loc_BFD1D4: FLdUI1
  loc_BFD1D8: LitI2_Byte 4
  loc_BFD1DA: CUI1I2
  loc_BFD1DC: EqI2
  loc_BFD1DD: BranchF loc_BFD3C9
  loc_BFD1E0: FLdRfVar var_C4
  loc_BFD1E3: FLdRfVar var_264
  loc_BFD1E6: LitVarStr var_D8, "acum"
  loc_BFD1EB: PopAdLdVar
  loc_BFD1EC: FLdRfVar var_260
  loc_BFD1EF: ImpAdLdPr unk_41191A
  loc_BFD1F2: MemLdPr global_0
  loc_BFD1F5:  = Me.Fields
  loc_BFD1FA: FLdPr var_260
  loc_BFD1FD: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD202: FLdPr var_264
  loc_BFD205:  = Me.Value
  loc_BFD20A: FLdRfVar var_C4
  loc_BFD20D: FLdFPR8 var_B4
  loc_BFD210: CVarR8
  loc_BFD214: AddVar var_15C
  loc_BFD218: LitI4 4
  loc_BFD21D: FLdRfVar var_A8
  loc_BFD220: Ary1LdFPR8
  loc_BFD221: CVarR8
  loc_BFD225: HardType
  loc_BFD226: GtVarBool
  loc_BFD228: FFreeAd var_260 = ""
  loc_BFD22F: FFreeVar var_C4 = ""
  loc_BFD236: BranchF loc_BFD3C0
  loc_BFD239: FLdRfVar var_264
  loc_BFD23C: LitVarStr var_D8, "acum"
  loc_BFD241: PopAdLdVar
  loc_BFD242: FLdRfVar var_260
  loc_BFD245: ImpAdLdPr unk_41191A
  loc_BFD248: MemLdPr global_0
  loc_BFD24B:  = Me.Fields
  loc_BFD250: FLdPr var_260
  loc_BFD253: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD258: LitStr "El Importe acumulado "
  loc_BFD25B: LitI4 1
  loc_BFD260: LitI4 1
  loc_BFD265: LitVarStr var_E8, "currency"
  loc_BFD26A: FStVarCopyObj var_15C
  loc_BFD26D: FLdRfVar var_15C
  loc_BFD270: FLdZeroAd var_264
  loc_BFD273: CVarAd
  loc_BFD277: ImpAdCallI2 Format$(, )
  loc_BFD27C: FStStrNoPop var_10C
  loc_BFD27F: ConcatStr
  loc_BFD280: FStStrNoPop var_160
  loc_BFD283: LitStr " de la/s NP ("
  loc_BFD286: ConcatStr
  loc_BFD287: CVarStr var_198
  loc_BFD28A: FLdRfVar var_174
  loc_BFD28D: FLdRfVar var_334
  loc_BFD290: LitVarStr var_F8, "notas"
  loc_BFD295: PopAdLdVar
  loc_BFD296: FLdRfVar var_330
  loc_BFD299: ImpAdLdPr unk_41191A
  loc_BFD29C: MemLdPr global_0
  loc_BFD29F:  = Me.Fields
  loc_BFD2A4: FLdPr var_330
  loc_BFD2A7: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD2AC: FLdPr var_334
  loc_BFD2AF:  = Me.Value
  loc_BFD2B4: FLdRfVar var_174
  loc_BFD2B7: ConcatVar var_1B0
  loc_BFD2BB: LitVarStr var_108, ")"
  loc_BFD2C0: ConcatVar var_1C0
  loc_BFD2C4: LitVarStr var_11C, vbCrLf
  loc_BFD2C9: ConcatVar var_1D4
  loc_BFD2CD: LitVarStr var_12C, " más el total de la NP "
  loc_BFD2D2: ConcatVar var_1E4
  loc_BFD2D6: LitI4 1
  loc_BFD2DB: LitI4 1
  loc_BFD2E0: LitVarStr var_14C, "currency"
  loc_BFD2E5: FStVarCopyObj var_1F4
  loc_BFD2E8: FLdRfVar var_1F4
  loc_BFD2EB: FLdRfVar var_B4
  loc_BFD2EE: CVarRef
  loc_BFD2F3: ImpAdCallI2 Format$(, )
  loc_BFD2F8: CVarStr var_204
  loc_BFD2FB: ConcatVar var_214
  loc_BFD2FF: LitVarStr var_188, vbCrLf
  loc_BFD304: ConcatVar var_224
  loc_BFD308: LitVarStr var_278, " para "
  loc_BFD30D: ConcatVar var_238
  loc_BFD311: FLdRfVar var_8E
  loc_BFD314: CDargRef
  loc_BFD318: FLdRfVar var_248
  loc_BFD31B: FLdRfVar var_8C
  loc_BFD31E: NewIfNullPr IDictionary
  loc_BFD321: IDictionary.Keys
  loc_BFD326: FLdRfVar var_248
  loc_BFD329: VarIndexLdVar
  loc_BFD32F: ConcatVar var_2B8
  loc_BFD333: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFD338: ConcatVar var_2C8
  loc_BFD33C: LitI4 1
  loc_BFD341: LitI4 1
  loc_BFD346: LitVarStr var_318, "currency"
  loc_BFD34B: FStVarCopyObj var_2D8
  loc_BFD34E: FLdRfVar var_2D8
  loc_BFD351: LitI4 4
  loc_BFD356: FLdRfVar var_A8
  loc_BFD359: Ary1LdRf
  loc_BFD35A: CVarRef
  loc_BFD35F: ImpAdCallI2 Format$(, )
  loc_BFD364: CVarStr var_2E8
  loc_BFD367: ConcatVar var_2F8
  loc_BFD36B: LitVarStr var_344, vbCrLf
  loc_BFD370: ConcatVar var_308
  loc_BFD374: LitVarStr var_354, " Verifique..."
  loc_BFD379: ConcatVar var_328
  loc_BFD37D: CStrVarTmp
  loc_BFD37E: FStStr var_88
  loc_BFD381: FFreeStr var_10C = ""
  loc_BFD388: FFreeAd var_260 = "": var_330 = ""
  loc_BFD391: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFD3C0: ExitProcCbHresult
  loc_BFD3C6: Branch loc_BFE36E
  loc_BFD3C9: FLdUI1
  loc_BFD3CD: LitI2_Byte 5
  loc_BFD3CF: CUI1I2
  loc_BFD3D1: EqI2
  loc_BFD3D2: BranchF loc_BFD5BE
  loc_BFD3D5: FLdRfVar var_C4
  loc_BFD3D8: FLdRfVar var_264
  loc_BFD3DB: LitVarStr var_D8, "acum"
  loc_BFD3E0: PopAdLdVar
  loc_BFD3E1: FLdRfVar var_260
  loc_BFD3E4: ImpAdLdPr unk_41191A
  loc_BFD3E7: MemLdPr global_0
  loc_BFD3EA:  = Me.Fields
  loc_BFD3EF: FLdPr var_260
  loc_BFD3F2: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD3F7: FLdPr var_264
  loc_BFD3FA:  = Me.Value
  loc_BFD3FF: FLdRfVar var_C4
  loc_BFD402: FLdFPR8 var_B4
  loc_BFD405: CVarR8
  loc_BFD409: AddVar var_15C
  loc_BFD40D: LitI4 5
  loc_BFD412: FLdRfVar var_A8
  loc_BFD415: Ary1LdFPR8
  loc_BFD416: CVarR8
  loc_BFD41A: HardType
  loc_BFD41B: GtVarBool
  loc_BFD41D: FFreeAd var_260 = ""
  loc_BFD424: FFreeVar var_C4 = ""
  loc_BFD42B: BranchF loc_BFD5B5
  loc_BFD42E: FLdRfVar var_264
  loc_BFD431: LitVarStr var_D8, "acum"
  loc_BFD436: PopAdLdVar
  loc_BFD437: FLdRfVar var_260
  loc_BFD43A: ImpAdLdPr unk_41191A
  loc_BFD43D: MemLdPr global_0
  loc_BFD440:  = Me.Fields
  loc_BFD445: FLdPr var_260
  loc_BFD448: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD44D: LitStr "El Importe acumulado "
  loc_BFD450: LitI4 1
  loc_BFD455: LitI4 1
  loc_BFD45A: LitVarStr var_E8, "currency"
  loc_BFD45F: FStVarCopyObj var_15C
  loc_BFD462: FLdRfVar var_15C
  loc_BFD465: FLdZeroAd var_264
  loc_BFD468: CVarAd
  loc_BFD46C: ImpAdCallI2 Format$(, )
  loc_BFD471: FStStrNoPop var_10C
  loc_BFD474: ConcatStr
  loc_BFD475: FStStrNoPop var_160
  loc_BFD478: LitStr " de la/s NP ("
  loc_BFD47B: ConcatStr
  loc_BFD47C: CVarStr var_198
  loc_BFD47F: FLdRfVar var_174
  loc_BFD482: FLdRfVar var_334
  loc_BFD485: LitVarStr var_F8, "notas"
  loc_BFD48A: PopAdLdVar
  loc_BFD48B: FLdRfVar var_330
  loc_BFD48E: ImpAdLdPr unk_41191A
  loc_BFD491: MemLdPr global_0
  loc_BFD494:  = Me.Fields
  loc_BFD499: FLdPr var_330
  loc_BFD49C: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD4A1: FLdPr var_334
  loc_BFD4A4:  = Me.Value
  loc_BFD4A9: FLdRfVar var_174
  loc_BFD4AC: ConcatVar var_1B0
  loc_BFD4B0: LitVarStr var_108, ")"
  loc_BFD4B5: ConcatVar var_1C0
  loc_BFD4B9: LitVarStr var_11C, vbCrLf
  loc_BFD4BE: ConcatVar var_1D4
  loc_BFD4C2: LitVarStr var_12C, " más el total de la NP "
  loc_BFD4C7: ConcatVar var_1E4
  loc_BFD4CB: LitI4 1
  loc_BFD4D0: LitI4 1
  loc_BFD4D5: LitVarStr var_14C, "currency"
  loc_BFD4DA: FStVarCopyObj var_1F4
  loc_BFD4DD: FLdRfVar var_1F4
  loc_BFD4E0: FLdRfVar var_B4
  loc_BFD4E3: CVarRef
  loc_BFD4E8: ImpAdCallI2 Format$(, )
  loc_BFD4ED: CVarStr var_204
  loc_BFD4F0: ConcatVar var_214
  loc_BFD4F4: LitVarStr var_188, vbCrLf
  loc_BFD4F9: ConcatVar var_224
  loc_BFD4FD: LitVarStr var_278, " para "
  loc_BFD502: ConcatVar var_238
  loc_BFD506: FLdRfVar var_8E
  loc_BFD509: CDargRef
  loc_BFD50D: FLdRfVar var_248
  loc_BFD510: FLdRfVar var_8C
  loc_BFD513: NewIfNullPr IDictionary
  loc_BFD516: IDictionary.Keys
  loc_BFD51B: FLdRfVar var_248
  loc_BFD51E: VarIndexLdVar
  loc_BFD524: ConcatVar var_2B8
  loc_BFD528: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFD52D: ConcatVar var_2C8
  loc_BFD531: LitI4 1
  loc_BFD536: LitI4 1
  loc_BFD53B: LitVarStr var_318, "currency"
  loc_BFD540: FStVarCopyObj var_2D8
  loc_BFD543: FLdRfVar var_2D8
  loc_BFD546: LitI4 5
  loc_BFD54B: FLdRfVar var_A8
  loc_BFD54E: Ary1LdRf
  loc_BFD54F: CVarRef
  loc_BFD554: ImpAdCallI2 Format$(, )
  loc_BFD559: CVarStr var_2E8
  loc_BFD55C: ConcatVar var_2F8
  loc_BFD560: LitVarStr var_344, vbCrLf
  loc_BFD565: ConcatVar var_308
  loc_BFD569: LitVarStr var_354, " Verifique..."
  loc_BFD56E: ConcatVar var_328
  loc_BFD572: CStrVarTmp
  loc_BFD573: FStStr var_88
  loc_BFD576: FFreeStr var_10C = ""
  loc_BFD57D: FFreeAd var_260 = "": var_330 = ""
  loc_BFD586: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFD5B5: ExitProcCbHresult
  loc_BFD5BB: Branch loc_BFE36E
  loc_BFD5BE: FLdUI1
  loc_BFD5C2: LitI2_Byte 6
  loc_BFD5C4: CUI1I2
  loc_BFD5C6: EqI2
  loc_BFD5C7: BranchF loc_BFD7B3
  loc_BFD5CA: FLdRfVar var_C4
  loc_BFD5CD: FLdRfVar var_264
  loc_BFD5D0: LitVarStr var_D8, "acum"
  loc_BFD5D5: PopAdLdVar
  loc_BFD5D6: FLdRfVar var_260
  loc_BFD5D9: ImpAdLdPr unk_41191A
  loc_BFD5DC: MemLdPr global_0
  loc_BFD5DF:  = Me.Fields
  loc_BFD5E4: FLdPr var_260
  loc_BFD5E7: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD5EC: FLdPr var_264
  loc_BFD5EF:  = Me.Value
  loc_BFD5F4: FLdRfVar var_C4
  loc_BFD5F7: FLdFPR8 var_B4
  loc_BFD5FA: CVarR8
  loc_BFD5FE: AddVar var_15C
  loc_BFD602: LitI4 6
  loc_BFD607: FLdRfVar var_A8
  loc_BFD60A: Ary1LdFPR8
  loc_BFD60B: CVarR8
  loc_BFD60F: HardType
  loc_BFD610: GtVarBool
  loc_BFD612: FFreeAd var_260 = ""
  loc_BFD619: FFreeVar var_C4 = ""
  loc_BFD620: BranchF loc_BFD7AA
  loc_BFD623: FLdRfVar var_264
  loc_BFD626: LitVarStr var_D8, "acum"
  loc_BFD62B: PopAdLdVar
  loc_BFD62C: FLdRfVar var_260
  loc_BFD62F: ImpAdLdPr unk_41191A
  loc_BFD632: MemLdPr global_0
  loc_BFD635:  = Me.Fields
  loc_BFD63A: FLdPr var_260
  loc_BFD63D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD642: LitStr "El Importe acumulado "
  loc_BFD645: LitI4 1
  loc_BFD64A: LitI4 1
  loc_BFD64F: LitVarStr var_E8, "currency"
  loc_BFD654: FStVarCopyObj var_15C
  loc_BFD657: FLdRfVar var_15C
  loc_BFD65A: FLdZeroAd var_264
  loc_BFD65D: CVarAd
  loc_BFD661: ImpAdCallI2 Format$(, )
  loc_BFD666: FStStrNoPop var_10C
  loc_BFD669: ConcatStr
  loc_BFD66A: FStStrNoPop var_160
  loc_BFD66D: LitStr " de la/s NP ("
  loc_BFD670: ConcatStr
  loc_BFD671: CVarStr var_198
  loc_BFD674: FLdRfVar var_174
  loc_BFD677: FLdRfVar var_334
  loc_BFD67A: LitVarStr var_F8, "notas"
  loc_BFD67F: PopAdLdVar
  loc_BFD680: FLdRfVar var_330
  loc_BFD683: ImpAdLdPr unk_41191A
  loc_BFD686: MemLdPr global_0
  loc_BFD689:  = Me.Fields
  loc_BFD68E: FLdPr var_330
  loc_BFD691: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD696: FLdPr var_334
  loc_BFD699:  = Me.Value
  loc_BFD69E: FLdRfVar var_174
  loc_BFD6A1: ConcatVar var_1B0
  loc_BFD6A5: LitVarStr var_108, ")"
  loc_BFD6AA: ConcatVar var_1C0
  loc_BFD6AE: LitVarStr var_11C, vbCrLf
  loc_BFD6B3: ConcatVar var_1D4
  loc_BFD6B7: LitVarStr var_12C, " más el total de la NP "
  loc_BFD6BC: ConcatVar var_1E4
  loc_BFD6C0: LitI4 1
  loc_BFD6C5: LitI4 1
  loc_BFD6CA: LitVarStr var_14C, "currency"
  loc_BFD6CF: FStVarCopyObj var_1F4
  loc_BFD6D2: FLdRfVar var_1F4
  loc_BFD6D5: FLdRfVar var_B4
  loc_BFD6D8: CVarRef
  loc_BFD6DD: ImpAdCallI2 Format$(, )
  loc_BFD6E2: CVarStr var_204
  loc_BFD6E5: ConcatVar var_214
  loc_BFD6E9: LitVarStr var_188, vbCrLf
  loc_BFD6EE: ConcatVar var_224
  loc_BFD6F2: LitVarStr var_278, " para "
  loc_BFD6F7: ConcatVar var_238
  loc_BFD6FB: FLdRfVar var_8E
  loc_BFD6FE: CDargRef
  loc_BFD702: FLdRfVar var_248
  loc_BFD705: FLdRfVar var_8C
  loc_BFD708: NewIfNullPr IDictionary
  loc_BFD70B: IDictionary.Keys
  loc_BFD710: FLdRfVar var_248
  loc_BFD713: VarIndexLdVar
  loc_BFD719: ConcatVar var_2B8
  loc_BFD71D: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFD722: ConcatVar var_2C8
  loc_BFD726: LitI4 1
  loc_BFD72B: LitI4 1
  loc_BFD730: LitVarStr var_318, "currency"
  loc_BFD735: FStVarCopyObj var_2D8
  loc_BFD738: FLdRfVar var_2D8
  loc_BFD73B: LitI4 6
  loc_BFD740: FLdRfVar var_A8
  loc_BFD743: Ary1LdRf
  loc_BFD744: CVarRef
  loc_BFD749: ImpAdCallI2 Format$(, )
  loc_BFD74E: CVarStr var_2E8
  loc_BFD751: ConcatVar var_2F8
  loc_BFD755: LitVarStr var_344, vbCrLf
  loc_BFD75A: ConcatVar var_308
  loc_BFD75E: LitVarStr var_354, " Verifique..."
  loc_BFD763: ConcatVar var_328
  loc_BFD767: CStrVarTmp
  loc_BFD768: FStStr var_88
  loc_BFD76B: FFreeStr var_10C = ""
  loc_BFD772: FFreeAd var_260 = "": var_330 = ""
  loc_BFD77B: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFD7AA: ExitProcCbHresult
  loc_BFD7B0: Branch loc_BFE36E
  loc_BFD7B3: FLdUI1
  loc_BFD7B7: LitI2_Byte 7
  loc_BFD7B9: CUI1I2
  loc_BFD7BB: EqI2
  loc_BFD7BC: BranchF loc_BFD9A8
  loc_BFD7BF: FLdRfVar var_C4
  loc_BFD7C2: FLdRfVar var_264
  loc_BFD7C5: LitVarStr var_D8, "acum"
  loc_BFD7CA: PopAdLdVar
  loc_BFD7CB: FLdRfVar var_260
  loc_BFD7CE: ImpAdLdPr unk_41191A
  loc_BFD7D1: MemLdPr global_0
  loc_BFD7D4:  = Me.Fields
  loc_BFD7D9: FLdPr var_260
  loc_BFD7DC: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD7E1: FLdPr var_264
  loc_BFD7E4:  = Me.Value
  loc_BFD7E9: FLdRfVar var_C4
  loc_BFD7EC: FLdFPR8 var_B4
  loc_BFD7EF: CVarR8
  loc_BFD7F3: AddVar var_15C
  loc_BFD7F7: LitI4 7
  loc_BFD7FC: FLdRfVar var_A8
  loc_BFD7FF: Ary1LdFPR8
  loc_BFD800: CVarR8
  loc_BFD804: HardType
  loc_BFD805: GtVarBool
  loc_BFD807: FFreeAd var_260 = ""
  loc_BFD80E: FFreeVar var_C4 = ""
  loc_BFD815: BranchF loc_BFD99F
  loc_BFD818: FLdRfVar var_264
  loc_BFD81B: LitVarStr var_D8, "acum"
  loc_BFD820: PopAdLdVar
  loc_BFD821: FLdRfVar var_260
  loc_BFD824: ImpAdLdPr unk_41191A
  loc_BFD827: MemLdPr global_0
  loc_BFD82A:  = Me.Fields
  loc_BFD82F: FLdPr var_260
  loc_BFD832: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD837: LitStr "El Importe acumulado "
  loc_BFD83A: LitI4 1
  loc_BFD83F: LitI4 1
  loc_BFD844: LitVarStr var_E8, "currency"
  loc_BFD849: FStVarCopyObj var_15C
  loc_BFD84C: FLdRfVar var_15C
  loc_BFD84F: FLdZeroAd var_264
  loc_BFD852: CVarAd
  loc_BFD856: ImpAdCallI2 Format$(, )
  loc_BFD85B: FStStrNoPop var_10C
  loc_BFD85E: ConcatStr
  loc_BFD85F: FStStrNoPop var_160
  loc_BFD862: LitStr " de la/s NP ("
  loc_BFD865: ConcatStr
  loc_BFD866: CVarStr var_198
  loc_BFD869: FLdRfVar var_174
  loc_BFD86C: FLdRfVar var_334
  loc_BFD86F: LitVarStr var_F8, "notas"
  loc_BFD874: PopAdLdVar
  loc_BFD875: FLdRfVar var_330
  loc_BFD878: ImpAdLdPr unk_41191A
  loc_BFD87B: MemLdPr global_0
  loc_BFD87E:  = Me.Fields
  loc_BFD883: FLdPr var_330
  loc_BFD886: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD88B: FLdPr var_334
  loc_BFD88E:  = Me.Value
  loc_BFD893: FLdRfVar var_174
  loc_BFD896: ConcatVar var_1B0
  loc_BFD89A: LitVarStr var_108, ")"
  loc_BFD89F: ConcatVar var_1C0
  loc_BFD8A3: LitVarStr var_11C, vbCrLf
  loc_BFD8A8: ConcatVar var_1D4
  loc_BFD8AC: LitVarStr var_12C, " más el total de la NP "
  loc_BFD8B1: ConcatVar var_1E4
  loc_BFD8B5: LitI4 1
  loc_BFD8BA: LitI4 1
  loc_BFD8BF: LitVarStr var_14C, "currency"
  loc_BFD8C4: FStVarCopyObj var_1F4
  loc_BFD8C7: FLdRfVar var_1F4
  loc_BFD8CA: FLdRfVar var_B4
  loc_BFD8CD: CVarRef
  loc_BFD8D2: ImpAdCallI2 Format$(, )
  loc_BFD8D7: CVarStr var_204
  loc_BFD8DA: ConcatVar var_214
  loc_BFD8DE: LitVarStr var_188, vbCrLf
  loc_BFD8E3: ConcatVar var_224
  loc_BFD8E7: LitVarStr var_278, " para "
  loc_BFD8EC: ConcatVar var_238
  loc_BFD8F0: FLdRfVar var_8E
  loc_BFD8F3: CDargRef
  loc_BFD8F7: FLdRfVar var_248
  loc_BFD8FA: FLdRfVar var_8C
  loc_BFD8FD: NewIfNullPr IDictionary
  loc_BFD900: IDictionary.Keys
  loc_BFD905: FLdRfVar var_248
  loc_BFD908: VarIndexLdVar
  loc_BFD90E: ConcatVar var_2B8
  loc_BFD912: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFD917: ConcatVar var_2C8
  loc_BFD91B: LitI4 1
  loc_BFD920: LitI4 1
  loc_BFD925: LitVarStr var_318, "currency"
  loc_BFD92A: FStVarCopyObj var_2D8
  loc_BFD92D: FLdRfVar var_2D8
  loc_BFD930: LitI4 7
  loc_BFD935: FLdRfVar var_A8
  loc_BFD938: Ary1LdRf
  loc_BFD939: CVarRef
  loc_BFD93E: ImpAdCallI2 Format$(, )
  loc_BFD943: CVarStr var_2E8
  loc_BFD946: ConcatVar var_2F8
  loc_BFD94A: LitVarStr var_344, vbCrLf
  loc_BFD94F: ConcatVar var_308
  loc_BFD953: LitVarStr var_354, " Verifique..."
  loc_BFD958: ConcatVar var_328
  loc_BFD95C: CStrVarTmp
  loc_BFD95D: FStStr var_88
  loc_BFD960: FFreeStr var_10C = ""
  loc_BFD967: FFreeAd var_260 = "": var_330 = ""
  loc_BFD970: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFD99F: ExitProcCbHresult
  loc_BFD9A5: Branch loc_BFE36E
  loc_BFD9A8: FLdUI1
  loc_BFD9AC: LitI2_Byte 8
  loc_BFD9AE: CUI1I2
  loc_BFD9B0: EqI2
  loc_BFD9B1: BranchF loc_BFDB9D
  loc_BFD9B4: FLdRfVar var_C4
  loc_BFD9B7: FLdRfVar var_264
  loc_BFD9BA: LitVarStr var_D8, "acum"
  loc_BFD9BF: PopAdLdVar
  loc_BFD9C0: FLdRfVar var_260
  loc_BFD9C3: ImpAdLdPr unk_41191A
  loc_BFD9C6: MemLdPr global_0
  loc_BFD9C9:  = Me.Fields
  loc_BFD9CE: FLdPr var_260
  loc_BFD9D1: from_stack_2 = Me.Item(from_stack_1)
  loc_BFD9D6: FLdPr var_264
  loc_BFD9D9:  = Me.Value
  loc_BFD9DE: FLdRfVar var_C4
  loc_BFD9E1: FLdFPR8 var_B4
  loc_BFD9E4: CVarR8
  loc_BFD9E8: AddVar var_15C
  loc_BFD9EC: LitI4 8
  loc_BFD9F1: FLdRfVar var_A8
  loc_BFD9F4: Ary1LdFPR8
  loc_BFD9F5: CVarR8
  loc_BFD9F9: HardType
  loc_BFD9FA: GtVarBool
  loc_BFD9FC: FFreeAd var_260 = ""
  loc_BFDA03: FFreeVar var_C4 = ""
  loc_BFDA0A: BranchF loc_BFDB94
  loc_BFDA0D: FLdRfVar var_264
  loc_BFDA10: LitVarStr var_D8, "acum"
  loc_BFDA15: PopAdLdVar
  loc_BFDA16: FLdRfVar var_260
  loc_BFDA19: ImpAdLdPr unk_41191A
  loc_BFDA1C: MemLdPr global_0
  loc_BFDA1F:  = Me.Fields
  loc_BFDA24: FLdPr var_260
  loc_BFDA27: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDA2C: LitStr "El Importe acumulado "
  loc_BFDA2F: LitI4 1
  loc_BFDA34: LitI4 1
  loc_BFDA39: LitVarStr var_E8, "currency"
  loc_BFDA3E: FStVarCopyObj var_15C
  loc_BFDA41: FLdRfVar var_15C
  loc_BFDA44: FLdZeroAd var_264
  loc_BFDA47: CVarAd
  loc_BFDA4B: ImpAdCallI2 Format$(, )
  loc_BFDA50: FStStrNoPop var_10C
  loc_BFDA53: ConcatStr
  loc_BFDA54: FStStrNoPop var_160
  loc_BFDA57: LitStr " de la/s NP ("
  loc_BFDA5A: ConcatStr
  loc_BFDA5B: CVarStr var_198
  loc_BFDA5E: FLdRfVar var_174
  loc_BFDA61: FLdRfVar var_334
  loc_BFDA64: LitVarStr var_F8, "notas"
  loc_BFDA69: PopAdLdVar
  loc_BFDA6A: FLdRfVar var_330
  loc_BFDA6D: ImpAdLdPr unk_41191A
  loc_BFDA70: MemLdPr global_0
  loc_BFDA73:  = Me.Fields
  loc_BFDA78: FLdPr var_330
  loc_BFDA7B: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDA80: FLdPr var_334
  loc_BFDA83:  = Me.Value
  loc_BFDA88: FLdRfVar var_174
  loc_BFDA8B: ConcatVar var_1B0
  loc_BFDA8F: LitVarStr var_108, ")"
  loc_BFDA94: ConcatVar var_1C0
  loc_BFDA98: LitVarStr var_11C, vbCrLf
  loc_BFDA9D: ConcatVar var_1D4
  loc_BFDAA1: LitVarStr var_12C, " más el total de la NP "
  loc_BFDAA6: ConcatVar var_1E4
  loc_BFDAAA: LitI4 1
  loc_BFDAAF: LitI4 1
  loc_BFDAB4: LitVarStr var_14C, "currency"
  loc_BFDAB9: FStVarCopyObj var_1F4
  loc_BFDABC: FLdRfVar var_1F4
  loc_BFDABF: FLdRfVar var_B4
  loc_BFDAC2: CVarRef
  loc_BFDAC7: ImpAdCallI2 Format$(, )
  loc_BFDACC: CVarStr var_204
  loc_BFDACF: ConcatVar var_214
  loc_BFDAD3: LitVarStr var_188, vbCrLf
  loc_BFDAD8: ConcatVar var_224
  loc_BFDADC: LitVarStr var_278, " para "
  loc_BFDAE1: ConcatVar var_238
  loc_BFDAE5: FLdRfVar var_8E
  loc_BFDAE8: CDargRef
  loc_BFDAEC: FLdRfVar var_248
  loc_BFDAEF: FLdRfVar var_8C
  loc_BFDAF2: NewIfNullPr IDictionary
  loc_BFDAF5: IDictionary.Keys
  loc_BFDAFA: FLdRfVar var_248
  loc_BFDAFD: VarIndexLdVar
  loc_BFDB03: ConcatVar var_2B8
  loc_BFDB07: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFDB0C: ConcatVar var_2C8
  loc_BFDB10: LitI4 1
  loc_BFDB15: LitI4 1
  loc_BFDB1A: LitVarStr var_318, "currency"
  loc_BFDB1F: FStVarCopyObj var_2D8
  loc_BFDB22: FLdRfVar var_2D8
  loc_BFDB25: LitI4 8
  loc_BFDB2A: FLdRfVar var_A8
  loc_BFDB2D: Ary1LdRf
  loc_BFDB2E: CVarRef
  loc_BFDB33: ImpAdCallI2 Format$(, )
  loc_BFDB38: CVarStr var_2E8
  loc_BFDB3B: ConcatVar var_2F8
  loc_BFDB3F: LitVarStr var_344, vbCrLf
  loc_BFDB44: ConcatVar var_308
  loc_BFDB48: LitVarStr var_354, " Verifique..."
  loc_BFDB4D: ConcatVar var_328
  loc_BFDB51: CStrVarTmp
  loc_BFDB52: FStStr var_88
  loc_BFDB55: FFreeStr var_10C = ""
  loc_BFDB5C: FFreeAd var_260 = "": var_330 = ""
  loc_BFDB65: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFDB94: ExitProcCbHresult
  loc_BFDB9A: Branch loc_BFE36E
  loc_BFDB9D: FLdUI1
  loc_BFDBA1: LitI2_Byte 9
  loc_BFDBA3: CUI1I2
  loc_BFDBA5: EqI2
  loc_BFDBA6: BranchF loc_BFDD92
  loc_BFDBA9: FLdRfVar var_C4
  loc_BFDBAC: FLdRfVar var_264
  loc_BFDBAF: LitVarStr var_D8, "acum"
  loc_BFDBB4: PopAdLdVar
  loc_BFDBB5: FLdRfVar var_260
  loc_BFDBB8: ImpAdLdPr unk_41191A
  loc_BFDBBB: MemLdPr global_0
  loc_BFDBBE:  = Me.Fields
  loc_BFDBC3: FLdPr var_260
  loc_BFDBC6: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDBCB: FLdPr var_264
  loc_BFDBCE:  = Me.Value
  loc_BFDBD3: FLdRfVar var_C4
  loc_BFDBD6: FLdFPR8 var_B4
  loc_BFDBD9: CVarR8
  loc_BFDBDD: AddVar var_15C
  loc_BFDBE1: LitI4 9
  loc_BFDBE6: FLdRfVar var_A8
  loc_BFDBE9: Ary1LdFPR8
  loc_BFDBEA: CVarR8
  loc_BFDBEE: HardType
  loc_BFDBEF: GtVarBool
  loc_BFDBF1: FFreeAd var_260 = ""
  loc_BFDBF8: FFreeVar var_C4 = ""
  loc_BFDBFF: BranchF loc_BFDD89
  loc_BFDC02: FLdRfVar var_264
  loc_BFDC05: LitVarStr var_D8, "acum"
  loc_BFDC0A: PopAdLdVar
  loc_BFDC0B: FLdRfVar var_260
  loc_BFDC0E: ImpAdLdPr unk_41191A
  loc_BFDC11: MemLdPr global_0
  loc_BFDC14:  = Me.Fields
  loc_BFDC19: FLdPr var_260
  loc_BFDC1C: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDC21: LitStr "El Importe acumulado "
  loc_BFDC24: LitI4 1
  loc_BFDC29: LitI4 1
  loc_BFDC2E: LitVarStr var_E8, "currency"
  loc_BFDC33: FStVarCopyObj var_15C
  loc_BFDC36: FLdRfVar var_15C
  loc_BFDC39: FLdZeroAd var_264
  loc_BFDC3C: CVarAd
  loc_BFDC40: ImpAdCallI2 Format$(, )
  loc_BFDC45: FStStrNoPop var_10C
  loc_BFDC48: ConcatStr
  loc_BFDC49: FStStrNoPop var_160
  loc_BFDC4C: LitStr " de la/s NP ("
  loc_BFDC4F: ConcatStr
  loc_BFDC50: CVarStr var_198
  loc_BFDC53: FLdRfVar var_174
  loc_BFDC56: FLdRfVar var_334
  loc_BFDC59: LitVarStr var_F8, "notas"
  loc_BFDC5E: PopAdLdVar
  loc_BFDC5F: FLdRfVar var_330
  loc_BFDC62: ImpAdLdPr unk_41191A
  loc_BFDC65: MemLdPr global_0
  loc_BFDC68:  = Me.Fields
  loc_BFDC6D: FLdPr var_330
  loc_BFDC70: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDC75: FLdPr var_334
  loc_BFDC78:  = Me.Value
  loc_BFDC7D: FLdRfVar var_174
  loc_BFDC80: ConcatVar var_1B0
  loc_BFDC84: LitVarStr var_108, ")"
  loc_BFDC89: ConcatVar var_1C0
  loc_BFDC8D: LitVarStr var_11C, vbCrLf
  loc_BFDC92: ConcatVar var_1D4
  loc_BFDC96: LitVarStr var_12C, " más el total de la NP "
  loc_BFDC9B: ConcatVar var_1E4
  loc_BFDC9F: LitI4 1
  loc_BFDCA4: LitI4 1
  loc_BFDCA9: LitVarStr var_14C, "currency"
  loc_BFDCAE: FStVarCopyObj var_1F4
  loc_BFDCB1: FLdRfVar var_1F4
  loc_BFDCB4: FLdRfVar var_B4
  loc_BFDCB7: CVarRef
  loc_BFDCBC: ImpAdCallI2 Format$(, )
  loc_BFDCC1: CVarStr var_204
  loc_BFDCC4: ConcatVar var_214
  loc_BFDCC8: LitVarStr var_188, vbCrLf
  loc_BFDCCD: ConcatVar var_224
  loc_BFDCD1: LitVarStr var_278, " para "
  loc_BFDCD6: ConcatVar var_238
  loc_BFDCDA: FLdRfVar var_8E
  loc_BFDCDD: CDargRef
  loc_BFDCE1: FLdRfVar var_248
  loc_BFDCE4: FLdRfVar var_8C
  loc_BFDCE7: NewIfNullPr IDictionary
  loc_BFDCEA: IDictionary.Keys
  loc_BFDCEF: FLdRfVar var_248
  loc_BFDCF2: VarIndexLdVar
  loc_BFDCF8: ConcatVar var_2B8
  loc_BFDCFC: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFDD01: ConcatVar var_2C8
  loc_BFDD05: LitI4 1
  loc_BFDD0A: LitI4 1
  loc_BFDD0F: LitVarStr var_318, "currency"
  loc_BFDD14: FStVarCopyObj var_2D8
  loc_BFDD17: FLdRfVar var_2D8
  loc_BFDD1A: LitI4 9
  loc_BFDD1F: FLdRfVar var_A8
  loc_BFDD22: Ary1LdRf
  loc_BFDD23: CVarRef
  loc_BFDD28: ImpAdCallI2 Format$(, )
  loc_BFDD2D: CVarStr var_2E8
  loc_BFDD30: ConcatVar var_2F8
  loc_BFDD34: LitVarStr var_344, vbCrLf
  loc_BFDD39: ConcatVar var_308
  loc_BFDD3D: LitVarStr var_354, " Verifique..."
  loc_BFDD42: ConcatVar var_328
  loc_BFDD46: CStrVarTmp
  loc_BFDD47: FStStr var_88
  loc_BFDD4A: FFreeStr var_10C = ""
  loc_BFDD51: FFreeAd var_260 = "": var_330 = ""
  loc_BFDD5A: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFDD89: ExitProcCbHresult
  loc_BFDD8F: Branch loc_BFE36E
  loc_BFDD92: FLdUI1
  loc_BFDD96: LitI2_Byte &HA
  loc_BFDD98: CUI1I2
  loc_BFDD9A: EqI2
  loc_BFDD9B: BranchF loc_BFDF87
  loc_BFDD9E: FLdRfVar var_C4
  loc_BFDDA1: FLdRfVar var_264
  loc_BFDDA4: LitVarStr var_D8, "acum"
  loc_BFDDA9: PopAdLdVar
  loc_BFDDAA: FLdRfVar var_260
  loc_BFDDAD: ImpAdLdPr unk_41191A
  loc_BFDDB0: MemLdPr global_0
  loc_BFDDB3:  = Me.Fields
  loc_BFDDB8: FLdPr var_260
  loc_BFDDBB: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDDC0: FLdPr var_264
  loc_BFDDC3:  = Me.Value
  loc_BFDDC8: FLdRfVar var_C4
  loc_BFDDCB: FLdFPR8 var_B4
  loc_BFDDCE: CVarR8
  loc_BFDDD2: AddVar var_15C
  loc_BFDDD6: LitI4 &HA
  loc_BFDDDB: FLdRfVar var_A8
  loc_BFDDDE: Ary1LdFPR8
  loc_BFDDDF: CVarR8
  loc_BFDDE3: HardType
  loc_BFDDE4: GtVarBool
  loc_BFDDE6: FFreeAd var_260 = ""
  loc_BFDDED: FFreeVar var_C4 = ""
  loc_BFDDF4: BranchF loc_BFDF7E
  loc_BFDDF7: FLdRfVar var_264
  loc_BFDDFA: LitVarStr var_D8, "acum"
  loc_BFDDFF: PopAdLdVar
  loc_BFDE00: FLdRfVar var_260
  loc_BFDE03: ImpAdLdPr unk_41191A
  loc_BFDE06: MemLdPr global_0
  loc_BFDE09:  = Me.Fields
  loc_BFDE0E: FLdPr var_260
  loc_BFDE11: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDE16: LitStr "El Importe acumulado "
  loc_BFDE19: LitI4 1
  loc_BFDE1E: LitI4 1
  loc_BFDE23: LitVarStr var_E8, "currency"
  loc_BFDE28: FStVarCopyObj var_15C
  loc_BFDE2B: FLdRfVar var_15C
  loc_BFDE2E: FLdZeroAd var_264
  loc_BFDE31: CVarAd
  loc_BFDE35: ImpAdCallI2 Format$(, )
  loc_BFDE3A: FStStrNoPop var_10C
  loc_BFDE3D: ConcatStr
  loc_BFDE3E: FStStrNoPop var_160
  loc_BFDE41: LitStr " de la/s NP ("
  loc_BFDE44: ConcatStr
  loc_BFDE45: CVarStr var_198
  loc_BFDE48: FLdRfVar var_174
  loc_BFDE4B: FLdRfVar var_334
  loc_BFDE4E: LitVarStr var_F8, "notas"
  loc_BFDE53: PopAdLdVar
  loc_BFDE54: FLdRfVar var_330
  loc_BFDE57: ImpAdLdPr unk_41191A
  loc_BFDE5A: MemLdPr global_0
  loc_BFDE5D:  = Me.Fields
  loc_BFDE62: FLdPr var_330
  loc_BFDE65: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDE6A: FLdPr var_334
  loc_BFDE6D:  = Me.Value
  loc_BFDE72: FLdRfVar var_174
  loc_BFDE75: ConcatVar var_1B0
  loc_BFDE79: LitVarStr var_108, ")"
  loc_BFDE7E: ConcatVar var_1C0
  loc_BFDE82: LitVarStr var_11C, vbCrLf
  loc_BFDE87: ConcatVar var_1D4
  loc_BFDE8B: LitVarStr var_12C, " más el total de la NP "
  loc_BFDE90: ConcatVar var_1E4
  loc_BFDE94: LitI4 1
  loc_BFDE99: LitI4 1
  loc_BFDE9E: LitVarStr var_14C, "currency"
  loc_BFDEA3: FStVarCopyObj var_1F4
  loc_BFDEA6: FLdRfVar var_1F4
  loc_BFDEA9: FLdRfVar var_B4
  loc_BFDEAC: CVarRef
  loc_BFDEB1: ImpAdCallI2 Format$(, )
  loc_BFDEB6: CVarStr var_204
  loc_BFDEB9: ConcatVar var_214
  loc_BFDEBD: LitVarStr var_188, vbCrLf
  loc_BFDEC2: ConcatVar var_224
  loc_BFDEC6: LitVarStr var_278, " para "
  loc_BFDECB: ConcatVar var_238
  loc_BFDECF: FLdRfVar var_8E
  loc_BFDED2: CDargRef
  loc_BFDED6: FLdRfVar var_248
  loc_BFDED9: FLdRfVar var_8C
  loc_BFDEDC: NewIfNullPr IDictionary
  loc_BFDEDF: IDictionary.Keys
  loc_BFDEE4: FLdRfVar var_248
  loc_BFDEE7: VarIndexLdVar
  loc_BFDEED: ConcatVar var_2B8
  loc_BFDEF1: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFDEF6: ConcatVar var_2C8
  loc_BFDEFA: LitI4 1
  loc_BFDEFF: LitI4 1
  loc_BFDF04: LitVarStr var_318, "currency"
  loc_BFDF09: FStVarCopyObj var_2D8
  loc_BFDF0C: FLdRfVar var_2D8
  loc_BFDF0F: LitI4 &HA
  loc_BFDF14: FLdRfVar var_A8
  loc_BFDF17: Ary1LdRf
  loc_BFDF18: CVarRef
  loc_BFDF1D: ImpAdCallI2 Format$(, )
  loc_BFDF22: CVarStr var_2E8
  loc_BFDF25: ConcatVar var_2F8
  loc_BFDF29: LitVarStr var_344, vbCrLf
  loc_BFDF2E: ConcatVar var_308
  loc_BFDF32: LitVarStr var_354, " Verifique..."
  loc_BFDF37: ConcatVar var_328
  loc_BFDF3B: CStrVarTmp
  loc_BFDF3C: FStStr var_88
  loc_BFDF3F: FFreeStr var_10C = ""
  loc_BFDF46: FFreeAd var_260 = "": var_330 = ""
  loc_BFDF4F: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFDF7E: ExitProcCbHresult
  loc_BFDF84: Branch loc_BFE36E
  loc_BFDF87: FLdUI1
  loc_BFDF8B: LitI2_Byte &HB
  loc_BFDF8D: CUI1I2
  loc_BFDF8F: EqI2
  loc_BFDF90: BranchF loc_BFE17C
  loc_BFDF93: FLdRfVar var_C4
  loc_BFDF96: FLdRfVar var_264
  loc_BFDF99: LitVarStr var_D8, "acum"
  loc_BFDF9E: PopAdLdVar
  loc_BFDF9F: FLdRfVar var_260
  loc_BFDFA2: ImpAdLdPr unk_41191A
  loc_BFDFA5: MemLdPr global_0
  loc_BFDFA8:  = Me.Fields
  loc_BFDFAD: FLdPr var_260
  loc_BFDFB0: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDFB5: FLdPr var_264
  loc_BFDFB8:  = Me.Value
  loc_BFDFBD: FLdRfVar var_C4
  loc_BFDFC0: FLdFPR8 var_B4
  loc_BFDFC3: CVarR8
  loc_BFDFC7: AddVar var_15C
  loc_BFDFCB: LitI4 &HB
  loc_BFDFD0: FLdRfVar var_A8
  loc_BFDFD3: Ary1LdFPR8
  loc_BFDFD4: CVarR8
  loc_BFDFD8: HardType
  loc_BFDFD9: GtVarBool
  loc_BFDFDB: FFreeAd var_260 = ""
  loc_BFDFE2: FFreeVar var_C4 = ""
  loc_BFDFE9: BranchF loc_BFE173
  loc_BFDFEC: FLdRfVar var_264
  loc_BFDFEF: LitVarStr var_D8, "acum"
  loc_BFDFF4: PopAdLdVar
  loc_BFDFF5: FLdRfVar var_260
  loc_BFDFF8: ImpAdLdPr unk_41191A
  loc_BFDFFB: MemLdPr global_0
  loc_BFDFFE:  = Me.Fields
  loc_BFE003: FLdPr var_260
  loc_BFE006: from_stack_2 = Me.Item(from_stack_1)
  loc_BFE00B: LitStr "El Importe acumulado "
  loc_BFE00E: LitI4 1
  loc_BFE013: LitI4 1
  loc_BFE018: LitVarStr var_E8, "currency"
  loc_BFE01D: FStVarCopyObj var_15C
  loc_BFE020: FLdRfVar var_15C
  loc_BFE023: FLdZeroAd var_264
  loc_BFE026: CVarAd
  loc_BFE02A: ImpAdCallI2 Format$(, )
  loc_BFE02F: FStStrNoPop var_10C
  loc_BFE032: ConcatStr
  loc_BFE033: FStStrNoPop var_160
  loc_BFE036: LitStr " de la/s NP ("
  loc_BFE039: ConcatStr
  loc_BFE03A: CVarStr var_198
  loc_BFE03D: FLdRfVar var_174
  loc_BFE040: FLdRfVar var_334
  loc_BFE043: LitVarStr var_F8, "notas"
  loc_BFE048: PopAdLdVar
  loc_BFE049: FLdRfVar var_330
  loc_BFE04C: ImpAdLdPr unk_41191A
  loc_BFE04F: MemLdPr global_0
  loc_BFE052:  = Me.Fields
  loc_BFE057: FLdPr var_330
  loc_BFE05A: from_stack_2 = Me.Item(from_stack_1)
  loc_BFE05F: FLdPr var_334
  loc_BFE062:  = Me.Value
  loc_BFE067: FLdRfVar var_174
  loc_BFE06A: ConcatVar var_1B0
  loc_BFE06E: LitVarStr var_108, ")"
  loc_BFE073: ConcatVar var_1C0
  loc_BFE077: LitVarStr var_11C, vbCrLf
  loc_BFE07C: ConcatVar var_1D4
  loc_BFE080: LitVarStr var_12C, " más el total de la NP "
  loc_BFE085: ConcatVar var_1E4
  loc_BFE089: LitI4 1
  loc_BFE08E: LitI4 1
  loc_BFE093: LitVarStr var_14C, "currency"
  loc_BFE098: FStVarCopyObj var_1F4
  loc_BFE09B: FLdRfVar var_1F4
  loc_BFE09E: FLdRfVar var_B4
  loc_BFE0A1: CVarRef
  loc_BFE0A6: ImpAdCallI2 Format$(, )
  loc_BFE0AB: CVarStr var_204
  loc_BFE0AE: ConcatVar var_214
  loc_BFE0B2: LitVarStr var_188, vbCrLf
  loc_BFE0B7: ConcatVar var_224
  loc_BFE0BB: LitVarStr var_278, " para "
  loc_BFE0C0: ConcatVar var_238
  loc_BFE0C4: FLdRfVar var_8E
  loc_BFE0C7: CDargRef
  loc_BFE0CB: FLdRfVar var_248
  loc_BFE0CE: FLdRfVar var_8C
  loc_BFE0D1: NewIfNullPr IDictionary
  loc_BFE0D4: IDictionary.Keys
  loc_BFE0D9: FLdRfVar var_248
  loc_BFE0DC: VarIndexLdVar
  loc_BFE0E2: ConcatVar var_2B8
  loc_BFE0E6: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFE0EB: ConcatVar var_2C8
  loc_BFE0EF: LitI4 1
  loc_BFE0F4: LitI4 1
  loc_BFE0F9: LitVarStr var_318, "currency"
  loc_BFE0FE: FStVarCopyObj var_2D8
  loc_BFE101: FLdRfVar var_2D8
  loc_BFE104: LitI4 &HB
  loc_BFE109: FLdRfVar var_A8
  loc_BFE10C: Ary1LdRf
  loc_BFE10D: CVarRef
  loc_BFE112: ImpAdCallI2 Format$(, )
  loc_BFE117: CVarStr var_2E8
  loc_BFE11A: ConcatVar var_2F8
  loc_BFE11E: LitVarStr var_344, vbCrLf
  loc_BFE123: ConcatVar var_308
  loc_BFE127: LitVarStr var_354, " Verifique..."
  loc_BFE12C: ConcatVar var_328
  loc_BFE130: CStrVarTmp
  loc_BFE131: FStStr var_88
  loc_BFE134: FFreeStr var_10C = ""
  loc_BFE13B: FFreeAd var_260 = "": var_330 = ""
  loc_BFE144: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFE173: ExitProcCbHresult
  loc_BFE179: Branch loc_BFE36E
  loc_BFE17C: FLdUI1
  loc_BFE180: LitI2_Byte &HC
  loc_BFE182: CUI1I2
  loc_BFE184: EqI2
  loc_BFE185: BranchF loc_BFE36E
  loc_BFE188: FLdRfVar var_C4
  loc_BFE18B: FLdRfVar var_264
  loc_BFE18E: LitVarStr var_D8, "acum"
  loc_BFE193: PopAdLdVar
  loc_BFE194: FLdRfVar var_260
  loc_BFE197: ImpAdLdPr unk_41191A
  loc_BFE19A: MemLdPr global_0
  loc_BFE19D:  = Me.Fields
  loc_BFE1A2: FLdPr var_260
  loc_BFE1A5: from_stack_2 = Me.Item(from_stack_1)
  loc_BFE1AA: FLdPr var_264
  loc_BFE1AD:  = Me.Value
  loc_BFE1B2: FLdRfVar var_C4
  loc_BFE1B5: FLdFPR8 var_B4
  loc_BFE1B8: CVarR8
  loc_BFE1BC: AddVar var_15C
  loc_BFE1C0: LitI4 &HC
  loc_BFE1C5: FLdRfVar var_A8
  loc_BFE1C8: Ary1LdFPR8
  loc_BFE1C9: CVarR8
  loc_BFE1CD: HardType
  loc_BFE1CE: GtVarBool
  loc_BFE1D0: FFreeAd var_260 = ""
  loc_BFE1D7: FFreeVar var_C4 = ""
  loc_BFE1DE: BranchF loc_BFE368
  loc_BFE1E1: FLdRfVar var_264
  loc_BFE1E4: LitVarStr var_D8, "acum"
  loc_BFE1E9: PopAdLdVar
  loc_BFE1EA: FLdRfVar var_260
  loc_BFE1ED: ImpAdLdPr unk_41191A
  loc_BFE1F0: MemLdPr global_0
  loc_BFE1F3:  = Me.Fields
  loc_BFE1F8: FLdPr var_260
  loc_BFE1FB: from_stack_2 = Me.Item(from_stack_1)
  loc_BFE200: LitStr "El Importe acumulado "
  loc_BFE203: LitI4 1
  loc_BFE208: LitI4 1
  loc_BFE20D: LitVarStr var_E8, "currency"
  loc_BFE212: FStVarCopyObj var_15C
  loc_BFE215: FLdRfVar var_15C
  loc_BFE218: FLdZeroAd var_264
  loc_BFE21B: CVarAd
  loc_BFE21F: ImpAdCallI2 Format$(, )
  loc_BFE224: FStStrNoPop var_10C
  loc_BFE227: ConcatStr
  loc_BFE228: FStStrNoPop var_160
  loc_BFE22B: LitStr " de la/s NP ("
  loc_BFE22E: ConcatStr
  loc_BFE22F: CVarStr var_198
  loc_BFE232: FLdRfVar var_174
  loc_BFE235: FLdRfVar var_334
  loc_BFE238: LitVarStr var_F8, "notas"
  loc_BFE23D: PopAdLdVar
  loc_BFE23E: FLdRfVar var_330
  loc_BFE241: ImpAdLdPr unk_41191A
  loc_BFE244: MemLdPr global_0
  loc_BFE247:  = Me.Fields
  loc_BFE24C: FLdPr var_330
  loc_BFE24F: from_stack_2 = Me.Item(from_stack_1)
  loc_BFE254: FLdPr var_334
  loc_BFE257:  = Me.Value
  loc_BFE25C: FLdRfVar var_174
  loc_BFE25F: ConcatVar var_1B0
  loc_BFE263: LitVarStr var_108, ")"
  loc_BFE268: ConcatVar var_1C0
  loc_BFE26C: LitVarStr var_11C, vbCrLf
  loc_BFE271: ConcatVar var_1D4
  loc_BFE275: LitVarStr var_12C, " más el total de la NP "
  loc_BFE27A: ConcatVar var_1E4
  loc_BFE27E: LitI4 1
  loc_BFE283: LitI4 1
  loc_BFE288: LitVarStr var_14C, "currency"
  loc_BFE28D: FStVarCopyObj var_1F4
  loc_BFE290: FLdRfVar var_1F4
  loc_BFE293: FLdRfVar var_B4
  loc_BFE296: CVarRef
  loc_BFE29B: ImpAdCallI2 Format$(, )
  loc_BFE2A0: CVarStr var_204
  loc_BFE2A3: ConcatVar var_214
  loc_BFE2A7: LitVarStr var_188, vbCrLf
  loc_BFE2AC: ConcatVar var_224
  loc_BFE2B0: LitVarStr var_278, " para "
  loc_BFE2B5: ConcatVar var_238
  loc_BFE2B9: FLdRfVar var_8E
  loc_BFE2BC: CDargRef
  loc_BFE2C0: FLdRfVar var_248
  loc_BFE2C3: FLdRfVar var_8C
  loc_BFE2C6: NewIfNullPr IDictionary
  loc_BFE2C9: IDictionary.Keys
  loc_BFE2CE: FLdRfVar var_248
  loc_BFE2D1: VarIndexLdVar
  loc_BFE2D7: ConcatVar var_2B8
  loc_BFE2DB: LitVarStr var_298, " supera el autorizado mensual "
  loc_BFE2E0: ConcatVar var_2C8
  loc_BFE2E4: LitI4 1
  loc_BFE2E9: LitI4 1
  loc_BFE2EE: LitVarStr var_318, "currency"
  loc_BFE2F3: FStVarCopyObj var_2D8
  loc_BFE2F6: FLdRfVar var_2D8
  loc_BFE2F9: LitI4 &HC
  loc_BFE2FE: FLdRfVar var_A8
  loc_BFE301: Ary1LdRf
  loc_BFE302: CVarRef
  loc_BFE307: ImpAdCallI2 Format$(, )
  loc_BFE30C: CVarStr var_2E8
  loc_BFE30F: ConcatVar var_2F8
  loc_BFE313: LitVarStr var_344, vbCrLf
  loc_BFE318: ConcatVar var_308
  loc_BFE31C: LitVarStr var_354, " Verifique..."
  loc_BFE321: ConcatVar var_328
  loc_BFE325: CStrVarTmp
  loc_BFE326: FStStr var_88
  loc_BFE329: FFreeStr var_10C = ""
  loc_BFE330: FFreeAd var_260 = "": var_330 = ""
  loc_BFE339: FFreeVar var_C4 = "": var_15C = "": var_198 = "": var_174 = "": var_1B0 = "": var_1C0 = "": var_1D4 = "": var_1F4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_248 = "": var_238 = "": var_258 = "": var_2B8 = "": var_2D8 = "": var_2C8 = "": var_2E8 = "": var_2F8 = "": var_308 = ""
  loc_BFE368: ExitProcCbHresult
  loc_BFE36E: Branch loc_BFE45A
  loc_BFE371: FLdRfVar var_8E
  loc_BFE374: CDargRef
  loc_BFE378: FLdRfVar var_C4
  loc_BFE37B: FLdRfVar var_8C
  loc_BFE37E: NewIfNullPr IDictionary
  loc_BFE381: IDictionary.Keys
  loc_BFE386: FLdRfVar var_C4
  loc_BFE389: VarIndexLdRfVarLock
  loc_BFE391: FStR4 var_19C
  loc_BFE394: FLdRfVar var_8E
  loc_BFE397: CDargRef
  loc_BFE39B: FLdRfVar var_1C0
  loc_BFE39E: FLdRfVar var_8C
  loc_BFE3A1: NewIfNullPr IDictionary
  loc_BFE3A4: IDictionary.Keys
  loc_BFE3A9: FLdRfVar var_1C0
  loc_BFE3AC: VarIndexLdRfVarLock
  loc_BFE3B4: FStR4 var_25C
  loc_BFE3B7: LitVarStr var_E8, "El autorizado para Organigrama ("
  loc_BFE3BC: LitI4 6
  loc_BFE3C1: ILdRf var_19C
  loc_BFE3C4: FLdRfVar var_174
  loc_BFE3C7: ImpAdCallFPR4  = Right(, )
  loc_BFE3CC: AryUnlock
  loc_BFE3CF: FLdRfVar var_174
  loc_BFE3D2: ConcatVar var_198
  loc_BFE3D6: LitVarStr var_F8, ") - Partida ("
  loc_BFE3DB: ConcatVar var_1B0
  loc_BFE3DF: LitI4 1
  loc_BFE3E4: FLdRfVar var_8E
  loc_BFE3E7: CDargRef
  loc_BFE3EB: FLdRfVar var_1D4
  loc_BFE3EE: FLdRfVar var_8C
  loc_BFE3F1: NewIfNullPr IDictionary
  loc_BFE3F4: IDictionary.Keys
  loc_BFE3F9: FLdRfVar var_1D4
  loc_BFE3FC: VarIndexLdVar
  loc_BFE402: LitVarStr var_12C, "-"
  loc_BFE407: LitI4 0
  loc_BFE40C: FnInStr4Var
  loc_BFE410: LitVarI2 var_13C, 1
  loc_BFE415: SubVar var_204
  loc_BFE419: CI4Var
  loc_BFE41B: ILdRf var_25C
  loc_BFE41E: FLdRfVar var_224
  loc_BFE421: ImpAdCallFPR4  = Left(, )
  loc_BFE426: AryUnlock
  loc_BFE429: FLdRfVar var_224
  loc_BFE42C: ConcatVar var_238
  loc_BFE430: LitVarStr var_14C, ") NO EXISTE. Verifique..."
  loc_BFE435: ConcatVar var_248
  loc_BFE439: CStrVarTmp
  loc_BFE43A: FStStr var_88
  loc_BFE43D: FFreeVar var_C4 = "": var_15C = "": var_174 = "": var_198 = "": var_1C0 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_214 = "": var_1B0 = "": var_224 = "": var_238 = ""
  loc_BFE45A: FLdRfVar var_8E
  loc_BFE45D: NextI2 var_1A0, loc_BFC496
  loc_BFE462: ExitProcCbHresult
End Function

Private Function Proc_276_26_97285C() '97285C
  'Data Table: 4118D8
  loc_972838: LitStr "Primary"
  loc_97283B: FLdPr Me
  loc_97283E: LateIdLdVar var_94 DispID_4 0
  loc_972845: CastAdVar Me
  loc_972849: FStAdFunc var_98
  loc_97284C: FLdPr var_98
  loc_972854: FFree1Ad var_98
  loc_972857: FFree1Var var_94 = ""
  loc_97285A: ExitProcHresult
End Function

Private Function Proc_276_27_94CEAC(arg_C) '94CEAC
  'Data Table: 4118D8
  loc_94CE94: ILdI4 arg_C
  loc_94CE97: LitStr "Primary"
  loc_94CE9A: EqStr
  loc_94CE9C: BranchF loc_94CEA9
  loc_94CE9F: FLdPr Me
  loc_94CEA2: MemLdStr RsFrm
  loc_94CEA5: IStAd
  loc_94CEA9: ExitProcHresult
End Function
