VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsparagene"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Move(iValor) '9E72C8
  'Data Table: 431B20
  loc_9E72A8: LitVar_Missing var_98
  loc_9E72AB: PopAdLdVar
  loc_9E72AC: ILdI2 iValor
  loc_9E72AF: CI4UI1
  loc_9E72B0: FLdRfVar var_88
  loc_9E72B3: FLdPr Me
  loc_9E72B6: from_stack_1v = clsparagene.global_4397736Get()
  loc_9E72BB: FLdPr var_88
  loc_9E72BE: Me.Move from_stack_1, from_stack_2
  loc_9E72C3: FFree1Ad var_88
  loc_9E72C6: ExitProcHresult
End Sub

Public Sub MoveFirst() 'A0D1D4
  'Data Table: 431B20
  loc_A0D198: FLdRfVar var_8C
  loc_A0D19B: FLdRfVar var_88
  loc_A0D19E: FLdPr Me
  loc_A0D1A1: from_stack_1v = clsparagene.global_4397736Get()
  loc_A0D1A6: FLdPr var_88
  loc_A0D1A9:  = Me.RecordCount
  loc_A0D1AE: ILdRf var_8C
  loc_A0D1B1: LitI4 0
  loc_A0D1B6: GtI4
  loc_A0D1B7: FFree1Ad var_88
  loc_A0D1BA: BranchF loc_A0D1D3
  loc_A0D1BD: FLdRfVar var_88
  loc_A0D1C0: FLdPr Me
  loc_A0D1C3: from_stack_1v = clsparagene.global_4397736Get()
  loc_A0D1C8: FLdPr var_88
  loc_A0D1CB: Me.MoveFirst
  loc_A0D1D0: FFree1Ad var_88
  loc_A0D1D3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0D244
  'Data Table: 431B20
  loc_A0D208: FLdRfVar var_8C
  loc_A0D20B: FLdRfVar var_88
  loc_A0D20E: FLdPr Me
  loc_A0D211: from_stack_1v = clsparagene.global_4397736Get()
  loc_A0D216: FLdPr var_88
  loc_A0D219:  = Me.RecordCount
  loc_A0D21E: ILdRf var_8C
  loc_A0D221: LitI4 0
  loc_A0D226: GtI4
  loc_A0D227: FFree1Ad var_88
  loc_A0D22A: BranchF loc_A0D243
  loc_A0D22D: FLdRfVar var_88
  loc_A0D230: FLdPr Me
  loc_A0D233: from_stack_1v = clsparagene.global_4397736Get()
  loc_A0D238: FLdPr var_88
  loc_A0D23B: Me.MoveLast
  loc_A0D240: FFree1Ad var_88
  loc_A0D243: ExitProcHresult
End Sub

Public Sub MoveNext() 'AA0890
  'Data Table: 431B20
  loc_AA07D4: FLdRfVar var_8A
  loc_AA07D7: FLdRfVar var_88
  loc_AA07DA: FLdPr Me
  loc_AA07DD: from_stack_1v = clsparagene.global_4397736Get()
  loc_AA07E2: FLdPr var_88
  loc_AA07E5:  = Me.EOF
  loc_AA07EA: FLdI2 var_8A
  loc_AA07ED: NotI4
  loc_AA07EE: FLdRfVar var_94
  loc_AA07F1: FLdRfVar var_90
  loc_AA07F4: FLdPr Me
  loc_AA07F7: from_stack_1v = clsparagene.global_4397736Get()
  loc_AA07FC: FLdPr var_90
  loc_AA07FF:  = Me.RecordCount
  loc_AA0804: ILdRf var_94
  loc_AA0807: LitI4 0
  loc_AA080C: GtI4
  loc_AA080D: AndI4
  loc_AA080E: FFreeAd var_88 = ""
  loc_AA0815: BranchF loc_AA082E
  loc_AA0818: FLdRfVar var_88
  loc_AA081B: FLdPr Me
  loc_AA081E: from_stack_1v = clsparagene.global_4397736Get()
  loc_AA0823: FLdPr var_88
  loc_AA0826: Me.MoveNext
  loc_AA082B: FFree1Ad var_88
  loc_AA082E: FLdRfVar var_8A
  loc_AA0831: FLdRfVar var_88
  loc_AA0834: FLdPr Me
  loc_AA0837: from_stack_1v = clsparagene.global_4397736Get()
  loc_AA083C: FLdPr var_88
  loc_AA083F:  = Me.EOF
  loc_AA0844: FLdI2 var_8A
  loc_AA0847: FLdRfVar var_94
  loc_AA084A: FLdRfVar var_90
  loc_AA084D: FLdPr Me
  loc_AA0850: from_stack_1v = clsparagene.global_4397736Get()
  loc_AA0855: FLdPr var_90
  loc_AA0858:  = Me.RecordCount
  loc_AA085D: ILdRf var_94
  loc_AA0860: LitI4 0
  loc_AA0865: GtI4
  loc_AA0866: AndI4
  loc_AA0867: FFreeAd var_88 = ""
  loc_AA086E: BranchF loc_AA088C
  loc_AA0871: ImpAdCallFPR4 Beep()
  loc_AA0876: FLdRfVar var_88
  loc_AA0879: FLdPr Me
  loc_AA087C: from_stack_1v = clsparagene.global_4397736Get()
  loc_AA0881: FLdPr var_88
  loc_AA0884: Me.MoveLast
  loc_AA0889: FFree1Ad var_88
  loc_AA088C: ExitProcHresult
  loc_AA088D: ImpAdLdRf MemVar_14BAC033
End Sub

Public Sub MoveSiguiente() '9D34C0
  'Data Table: 431B20
  loc_9D34A8: FLdRfVar var_88
  loc_9D34AB: FLdPr Me
  loc_9D34AE: from_stack_1v = clsparagene.global_4397736Get()
  loc_9D34B3: FLdPr var_88
  loc_9D34B6: Me.MoveNext
  loc_9D34BB: FFree1Ad var_88
  loc_9D34BE: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9FF08
  'Data Table: 431B20
  loc_A9FE4C: FLdRfVar var_8A
  loc_A9FE4F: FLdRfVar var_88
  loc_A9FE52: FLdPr Me
  loc_A9FE55: from_stack_1v = clsparagene.global_4397736Get()
  loc_A9FE5A: FLdPr var_88
  loc_A9FE5D:  = Me.BOF
  loc_A9FE62: FLdI2 var_8A
  loc_A9FE65: NotI4
  loc_A9FE66: FLdRfVar var_94
  loc_A9FE69: FLdRfVar var_90
  loc_A9FE6C: FLdPr Me
  loc_A9FE6F: from_stack_1v = clsparagene.global_4397736Get()
  loc_A9FE74: FLdPr var_90
  loc_A9FE77:  = Me.RecordCount
  loc_A9FE7C: ILdRf var_94
  loc_A9FE7F: LitI4 0
  loc_A9FE84: GtI4
  loc_A9FE85: AndI4
  loc_A9FE86: FFreeAd var_88 = ""
  loc_A9FE8D: BranchF loc_A9FEA6
  loc_A9FE90: FLdRfVar var_88
  loc_A9FE93: FLdPr Me
  loc_A9FE96: from_stack_1v = clsparagene.global_4397736Get()
  loc_A9FE9B: FLdPr var_88
  loc_A9FE9E: Me.MovePrevious
  loc_A9FEA3: FFree1Ad var_88
  loc_A9FEA6: FLdRfVar var_8A
  loc_A9FEA9: FLdRfVar var_88
  loc_A9FEAC: FLdPr Me
  loc_A9FEAF: from_stack_1v = clsparagene.global_4397736Get()
  loc_A9FEB4: FLdPr var_88
  loc_A9FEB7:  = Me.BOF
  loc_A9FEBC: FLdI2 var_8A
  loc_A9FEBF: FLdRfVar var_94
  loc_A9FEC2: FLdRfVar var_90
  loc_A9FEC5: FLdPr Me
  loc_A9FEC8: from_stack_1v = clsparagene.global_4397736Get()
  loc_A9FECD: FLdPr var_90
  loc_A9FED0:  = Me.RecordCount
  loc_A9FED5: ILdRf var_94
  loc_A9FED8: LitI4 0
  loc_A9FEDD: GtI4
  loc_A9FEDE: AndI4
  loc_A9FEDF: FFreeAd var_88 = ""
  loc_A9FEE6: BranchF loc_A9FF04
  loc_A9FEE9: ImpAdCallFPR4 Beep()
  loc_A9FEEE: FLdRfVar var_88
  loc_A9FEF1: FLdPr Me
  loc_A9FEF4: from_stack_1v = clsparagene.global_4397736Get()
  loc_A9FEF9: FLdPr var_88
  loc_A9FEFC: Me.MoveFirst
  loc_A9FF01: FFree1Ad var_88
  loc_A9FF04: ExitProcHresult
End Sub

Public Property Get EOF() '9F7ACC
  'Data Table: 431B20
  loc_9F7AA4: FLdRfVar var_8E
  loc_9F7AA7: FLdRfVar var_8C
  loc_9F7AAA: FLdPr Me
  loc_9F7AAD: from_stack_1v = clsparagene.global_4397736Get()
  loc_9F7AB2: FLdPr var_8C
  loc_9F7AB5:  = Me.EOF
  loc_9F7ABA: FLdI2 var_8E
  loc_9F7ABD: FStI2 var_86
  loc_9F7AC0: FFree1Ad var_8C
  loc_9F7AC3: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F7D50
  'Data Table: 431B20
  loc_9F7D28: FLdRfVar var_8E
  loc_9F7D2B: FLdRfVar var_8C
  loc_9F7D2E: FLdPr Me
  loc_9F7D31: from_stack_1v = clsparagene.global_4397736Get()
  loc_9F7D36: FLdPr var_8C
  loc_9F7D39:  = Me.BOF
  loc_9F7D3E: FLdI2 var_8E
  loc_9F7D41: FStI2 var_86
  loc_9F7D44: FFree1Ad var_8C
  loc_9F7D47: ExitProcCbHresult
  loc_9F7D4F: FnLBound
End Sub

Public Sub Sort(sOrden) '9E37FC
  'Data Table: 431B20
  loc_9E37E0: ILdI4 sOrden
  loc_9E37E3: FLdRfVar var_88
  loc_9E37E6: FLdPr Me
  loc_9E37E9: from_stack_1v = clsparagene.global_4397736Get()
  loc_9E37EE: FLdPr var_88
  loc_9E37F1: Me.Sort = from_stack_1
  loc_9E37F6: FFree1Ad var_88
  loc_9E37F9: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F7E08
  'Data Table: 431B20
  loc_9F7DE0: LitVar_Missing var_98
  loc_9F7DE3: PopAdLdVar
  loc_9F7DE4: LitI4 1
  loc_9F7DE9: LitI4 0
  loc_9F7DEE: ILdI4 sFind
  loc_9F7DF1: FLdRfVar var_88
  loc_9F7DF4: FLdPr Me
  loc_9F7DF7: from_stack_1v = clsparagene.global_4397736Get()
  loc_9F7DFC: FLdPr var_88
  loc_9F7DFF: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F7E04: FFree1Ad var_88
  loc_9F7E07: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F7F78
  'Data Table: 431B20
  loc_9F7F50: FLdRfVar var_90
  loc_9F7F53: FLdRfVar var_8C
  loc_9F7F56: FLdPr Me
  loc_9F7F59: from_stack_1v = clsparagene.global_4397736Get()
  loc_9F7F5E: FLdPr var_8C
  loc_9F7F61:  = Me.AbsolutePosition
  loc_9F7F66: ILdRf var_90
  loc_9F7F69: FStR4 var_88
  loc_9F7F6C: FFree1Ad var_8C
  loc_9F7F6F: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F81A0
  'Data Table: 431B20
  loc_9F8178: FLdRfVar var_90
  loc_9F817B: FLdRfVar var_8C
  loc_9F817E: FLdPr Me
  loc_9F8181: from_stack_1v = clsparagene.global_4397736Get()
  loc_9F8186: FLdPr var_8C
  loc_9F8189:  = Me.RecordCount
  loc_9F818E: ILdRf var_90
  loc_9F8191: FStR4 var_88
  loc_9F8194: FFree1Ad var_8C
  loc_9F8197: ExitProcCbHresult
End Sub

Public Sub Modificar(PeriOrde, CodiPage, DecaPage, DerePage, FosePage, DicaPage, DiprPage, UntrPage, LepaPage, doUvaPage) 'C4CFC4
  'Data Table: 431B20
  loc_C4C248: ILdRf DiprPage
  loc_C4C24B: FStStrCopy var_88
  loc_C4C24E: ILdRf UntrPage
  loc_C4C251: FStStrCopy var_8C
  loc_C4C254: ILdRf LepaPage
  loc_C4C257: FStStrCopy var_90
  loc_C4C25A: ILdRf doUvaPage
  loc_C4C25D: FStStrCopy var_94
  loc_C4C260: ILdRf arg_34
  loc_C4C263: FStStrCopy var_98
  loc_C4C266: FLdRfVar var_9C
  loc_C4C269: FLdUI1
  loc_C4C26D: from_stack_2v = ValidaClave(from_stack_1v)
  loc_C4C272: ILdRf var_9C
  loc_C4C275: LitStr vbNullString
  loc_C4C278: EqStr
  loc_C4C27A: FFree1Str var_9C
  loc_C4C27D: BranchF loc_C4C28B
  loc_C4C280: LitStr "El Codigo del PARAMETRO GENERAL NO EXISTE. Reintente..."
  loc_C4C283: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4C288: Branch loc_C4CFC3
  loc_C4C28B: LitStr "Municipalidad de Guaymallén"
  loc_C4C28E: LitStr "Municipalidad de Malargüe"
  loc_C4C291: EqStr
  loc_C4C293: BranchF loc_C4C3BE
  loc_C4C296: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4C299: FLdI2 PeriOrde
  loc_C4C29C: CStrUI1
  loc_C4C29E: FStStrNoPop var_9C
  loc_C4C2A1: ConcatStr
  loc_C4C2A2: FStStrNoPop var_A0
  loc_C4C2A5: LitStr ", UvaPage = "
  loc_C4C2A8: ConcatStr
  loc_C4C2A9: FStStrNoPop var_A8
  loc_C4C2AC: LitI4 0
  loc_C4C2B1: LitI4 -1
  loc_C4C2B6: LitI4 1
  loc_C4C2BB: LitStr "."
  loc_C4C2BE: LitStr ","
  loc_C4C2C1: FLdFPR8 arg_38
  loc_C4C2C4: CStrR8
  loc_C4C2C6: FStStrNoPop var_A4
  loc_C4C2C9: ImpAdCallI2 Replace(, , , , , )
  loc_C4C2CE: FStStrNoPop var_AC
  loc_C4C2D1: ConcatStr
  loc_C4C2D2: FStStrNoPop var_B0
  loc_C4C2D5: LitStr ", DecaPage = "
  loc_C4C2D8: ConcatStr
  loc_C4C2D9: FStStrNoPop var_B4
  loc_C4C2DC: FLdFPR8 DecaPage
  loc_C4C2DF: CStrR8
  loc_C4C2E1: FStStrNoPop var_B8
  loc_C4C2E4: ConcatStr
  loc_C4C2E5: FStStrNoPop var_BC
  loc_C4C2E8: LitStr ", DerePage = "
  loc_C4C2EB: ConcatStr
  loc_C4C2EC: FStStrNoPop var_C0
  loc_C4C2EF: FLdFPR8 FosePage
  loc_C4C2F2: CStrR8
  loc_C4C2F4: FStStrNoPop var_C4
  loc_C4C2F7: ConcatStr
  loc_C4C2F8: FStStrNoPop var_C8
  loc_C4C2FB: LitStr ", FosePage = '"
  loc_C4C2FE: ConcatStr
  loc_C4C2FF: FStStrNoPop var_CC
  loc_C4C302: ILdRf var_88
  loc_C4C305: ConcatStr
  loc_C4C306: FStStrNoPop var_D0
  loc_C4C309: LitStr "', DicaPage = '"
  loc_C4C30C: ConcatStr
  loc_C4C30D: FStStrNoPop var_D4
  loc_C4C310: LitI4 0
  loc_C4C315: LitI4 -1
  loc_C4C31A: LitI4 1
  loc_C4C31F: LitStr "\\"
  loc_C4C322: LitStr "\"
  loc_C4C325: ILdRf var_8C
  loc_C4C328: ImpAdCallI2 Replace(, , , , , )
  loc_C4C32D: FStStrNoPop var_D8
  loc_C4C330: ConcatStr
  loc_C4C331: FStStrNoPop var_DC
  loc_C4C334: LitStr "', DiprPage = '"
  loc_C4C337: ConcatStr
  loc_C4C338: FStStrNoPop var_E0
  loc_C4C33B: LitI4 0
  loc_C4C340: LitI4 -1
  loc_C4C345: LitI4 1
  loc_C4C34A: LitStr "\\"
  loc_C4C34D: LitStr "\"
  loc_C4C350: ILdRf var_90
  loc_C4C353: ImpAdCallI2 Replace(, , , , , )
  loc_C4C358: FStStrNoPop var_E4
  loc_C4C35B: ConcatStr
  loc_C4C35C: FStStrNoPop var_E8
  loc_C4C35F: LitStr "', LepaPage = '"
  loc_C4C362: ConcatStr
  loc_C4C363: FStStrNoPop var_EC
  loc_C4C366: ILdRf var_98
  loc_C4C369: ConcatStr
  loc_C4C36A: FStStrNoPop var_F0
  loc_C4C36D: LitStr "'  WHERE CodiPage = "
  loc_C4C370: ConcatStr
  loc_C4C371: FStStrNoPop var_F4
  loc_C4C374: FLdUI1
  loc_C4C378: CStrI2
  loc_C4C37A: FStStrNoPop var_F8
  loc_C4C37D: ConcatStr
  loc_C4C37E: FStStrNoPop var_FC
  loc_C4C381: Call EjecutarRs2(from_stack_1v)
  loc_C4C386: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C4C3BB: Branch loc_C4CFC3
  loc_C4C3BE: LitStr "Municipalidad de Guaymallén"
  loc_C4C3C1: LitStr "Municipalidad de Lavalle"
  loc_C4C3C4: EqStr
  loc_C4C3C6: BranchF loc_C4C4EA
  loc_C4C3C9: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4C3CC: FLdI2 PeriOrde
  loc_C4C3CF: CStrUI1
  loc_C4C3D1: FStStrNoPop var_9C
  loc_C4C3D4: ConcatStr
  loc_C4C3D5: FStStrNoPop var_A0
  loc_C4C3D8: LitStr ", DecaPage = "
  loc_C4C3DB: ConcatStr
  loc_C4C3DC: FStStrNoPop var_A4
  loc_C4C3DF: FLdFPR8 DecaPage
  loc_C4C3E2: CStrR8
  loc_C4C3E4: FStStrNoPop var_A8
  loc_C4C3E7: ConcatStr
  loc_C4C3E8: FStStrNoPop var_AC
  loc_C4C3EB: LitStr ", DerePage = "
  loc_C4C3EE: ConcatStr
  loc_C4C3EF: FStStrNoPop var_B0
  loc_C4C3F2: FLdFPR8 FosePage
  loc_C4C3F5: CStrR8
  loc_C4C3F7: FStStrNoPop var_B4
  loc_C4C3FA: ConcatStr
  loc_C4C3FB: FStStrNoPop var_B8
  loc_C4C3FE: LitStr ", FosePage = '"
  loc_C4C401: ConcatStr
  loc_C4C402: FStStrNoPop var_BC
  loc_C4C405: ILdRf var_88
  loc_C4C408: ConcatStr
  loc_C4C409: FStStrNoPop var_C0
  loc_C4C40C: LitStr "', DicaPage = '"
  loc_C4C40F: ConcatStr
  loc_C4C410: FStStrNoPop var_C4
  loc_C4C413: LitI4 0
  loc_C4C418: LitI4 -1
  loc_C4C41D: LitI4 1
  loc_C4C422: LitStr "\\"
  loc_C4C425: LitStr "\"
  loc_C4C428: ILdRf var_8C
  loc_C4C42B: ImpAdCallI2 Replace(, , , , , )
  loc_C4C430: FStStrNoPop var_C8
  loc_C4C433: ConcatStr
  loc_C4C434: FStStrNoPop var_CC
  loc_C4C437: LitStr "', DiprPage = '"
  loc_C4C43A: ConcatStr
  loc_C4C43B: FStStrNoPop var_D0
  loc_C4C43E: LitI4 0
  loc_C4C443: LitI4 -1
  loc_C4C448: LitI4 1
  loc_C4C44D: LitStr "\\"
  loc_C4C450: LitStr "\"
  loc_C4C453: ILdRf var_90
  loc_C4C456: ImpAdCallI2 Replace(, , , , , )
  loc_C4C45B: FStStrNoPop var_D4
  loc_C4C45E: ConcatStr
  loc_C4C45F: FStStrNoPop var_D8
  loc_C4C462: LitStr "', UntrPage = "
  loc_C4C465: ConcatStr
  loc_C4C466: FStStrNoPop var_DC
  loc_C4C469: LitI4 0
  loc_C4C46E: LitI4 -1
  loc_C4C473: LitI4 1
  loc_C4C478: LitStr "."
  loc_C4C47B: LitStr ","
  loc_C4C47E: ILdRf var_94
  loc_C4C481: ImpAdCallI2 Replace(, , , , , )
  loc_C4C486: FStStrNoPop var_E0
  loc_C4C489: ConcatStr
  loc_C4C48A: FStStrNoPop var_E4
  loc_C4C48D: LitStr ", LepaPage = '"
  loc_C4C490: ConcatStr
  loc_C4C491: FStStrNoPop var_E8
  loc_C4C494: ILdRf var_98
  loc_C4C497: ConcatStr
  loc_C4C498: FStStrNoPop var_EC
  loc_C4C49B: LitStr "' WHERE CodiPage = "
  loc_C4C49E: ConcatStr
  loc_C4C49F: FStStrNoPop var_F0
  loc_C4C4A2: FLdUI1
  loc_C4C4A6: CStrI2
  loc_C4C4A8: FStStrNoPop var_F4
  loc_C4C4AB: ConcatStr
  loc_C4C4AC: FStStrNoPop var_F8
  loc_C4C4AF: Call EjecutarRs2(from_stack_1v)
  loc_C4C4B4: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C4C4E7: Branch loc_C4CFC3
  loc_C4C4EA: LitStr "Municipalidad de Guaymallén"
  loc_C4C4ED: LitStr "Municipalidad de San Carlos"
  loc_C4C4F0: EqStr
  loc_C4C4F2: BranchF loc_C4C616
  loc_C4C4F5: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4C4F8: FLdI2 PeriOrde
  loc_C4C4FB: CStrUI1
  loc_C4C4FD: FStStrNoPop var_9C
  loc_C4C500: ConcatStr
  loc_C4C501: FStStrNoPop var_A0
  loc_C4C504: LitStr ", DecaPage = "
  loc_C4C507: ConcatStr
  loc_C4C508: FStStrNoPop var_A4
  loc_C4C50B: FLdFPR8 DecaPage
  loc_C4C50E: CStrR8
  loc_C4C510: FStStrNoPop var_A8
  loc_C4C513: ConcatStr
  loc_C4C514: FStStrNoPop var_AC
  loc_C4C517: LitStr ", DerePage = "
  loc_C4C51A: ConcatStr
  loc_C4C51B: FStStrNoPop var_B0
  loc_C4C51E: FLdFPR8 FosePage
  loc_C4C521: CStrR8
  loc_C4C523: FStStrNoPop var_B4
  loc_C4C526: ConcatStr
  loc_C4C527: FStStrNoPop var_B8
  loc_C4C52A: LitStr ", FosePage = '"
  loc_C4C52D: ConcatStr
  loc_C4C52E: FStStrNoPop var_BC
  loc_C4C531: ILdRf var_88
  loc_C4C534: ConcatStr
  loc_C4C535: FStStrNoPop var_C0
  loc_C4C538: LitStr "', DicaPage = '"
  loc_C4C53B: ConcatStr
  loc_C4C53C: FStStrNoPop var_C4
  loc_C4C53F: LitI4 0
  loc_C4C544: LitI4 -1
  loc_C4C549: LitI4 1
  loc_C4C54E: LitStr "\\"
  loc_C4C551: LitStr "\"
  loc_C4C554: ILdRf var_8C
  loc_C4C557: ImpAdCallI2 Replace(, , , , , )
  loc_C4C55C: FStStrNoPop var_C8
  loc_C4C55F: ConcatStr
  loc_C4C560: FStStrNoPop var_CC
  loc_C4C563: LitStr "', DiprPage = '"
  loc_C4C566: ConcatStr
  loc_C4C567: FStStrNoPop var_D0
  loc_C4C56A: LitI4 0
  loc_C4C56F: LitI4 -1
  loc_C4C574: LitI4 1
  loc_C4C579: LitStr "\\"
  loc_C4C57C: LitStr "\"
  loc_C4C57F: ILdRf var_90
  loc_C4C582: ImpAdCallI2 Replace(, , , , , )
  loc_C4C587: FStStrNoPop var_D4
  loc_C4C58A: ConcatStr
  loc_C4C58B: FStStrNoPop var_D8
  loc_C4C58E: LitStr "', UntrPage = "
  loc_C4C591: ConcatStr
  loc_C4C592: FStStrNoPop var_DC
  loc_C4C595: LitI4 0
  loc_C4C59A: LitI4 -1
  loc_C4C59F: LitI4 1
  loc_C4C5A4: LitStr "."
  loc_C4C5A7: LitStr ","
  loc_C4C5AA: ILdRf var_94
  loc_C4C5AD: ImpAdCallI2 Replace(, , , , , )
  loc_C4C5B2: FStStrNoPop var_E0
  loc_C4C5B5: ConcatStr
  loc_C4C5B6: FStStrNoPop var_E4
  loc_C4C5B9: LitStr ", LepaPage = '"
  loc_C4C5BC: ConcatStr
  loc_C4C5BD: FStStrNoPop var_E8
  loc_C4C5C0: ILdRf var_98
  loc_C4C5C3: ConcatStr
  loc_C4C5C4: FStStrNoPop var_EC
  loc_C4C5C7: LitStr "' WHERE CodiPage = "
  loc_C4C5CA: ConcatStr
  loc_C4C5CB: FStStrNoPop var_F0
  loc_C4C5CE: FLdUI1
  loc_C4C5D2: CStrI2
  loc_C4C5D4: FStStrNoPop var_F4
  loc_C4C5D7: ConcatStr
  loc_C4C5D8: FStStrNoPop var_F8
  loc_C4C5DB: Call EjecutarRs2(from_stack_1v)
  loc_C4C5E0: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C4C613: Branch loc_C4CFC3
  loc_C4C616: LitStr "Municipalidad de Guaymallén"
  loc_C4C619: LitStr "Municipalidad de Rivadavia"
  loc_C4C61C: EqStr
  loc_C4C61E: BranchF loc_C4C742
  loc_C4C621: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4C624: FLdI2 PeriOrde
  loc_C4C627: CStrUI1
  loc_C4C629: FStStrNoPop var_9C
  loc_C4C62C: ConcatStr
  loc_C4C62D: FStStrNoPop var_A0
  loc_C4C630: LitStr ", DecaPage = "
  loc_C4C633: ConcatStr
  loc_C4C634: FStStrNoPop var_A4
  loc_C4C637: FLdFPR8 DecaPage
  loc_C4C63A: CStrR8
  loc_C4C63C: FStStrNoPop var_A8
  loc_C4C63F: ConcatStr
  loc_C4C640: FStStrNoPop var_AC
  loc_C4C643: LitStr ", DerePage = "
  loc_C4C646: ConcatStr
  loc_C4C647: FStStrNoPop var_B0
  loc_C4C64A: FLdFPR8 FosePage
  loc_C4C64D: CStrR8
  loc_C4C64F: FStStrNoPop var_B4
  loc_C4C652: ConcatStr
  loc_C4C653: FStStrNoPop var_B8
  loc_C4C656: LitStr ", FosePage = '"
  loc_C4C659: ConcatStr
  loc_C4C65A: FStStrNoPop var_BC
  loc_C4C65D: ILdRf var_88
  loc_C4C660: ConcatStr
  loc_C4C661: FStStrNoPop var_C0
  loc_C4C664: LitStr "', DicaPage = '"
  loc_C4C667: ConcatStr
  loc_C4C668: FStStrNoPop var_C4
  loc_C4C66B: LitI4 0
  loc_C4C670: LitI4 -1
  loc_C4C675: LitI4 1
  loc_C4C67A: LitStr "\\"
  loc_C4C67D: LitStr "\"
  loc_C4C680: ILdRf var_8C
  loc_C4C683: ImpAdCallI2 Replace(, , , , , )
  loc_C4C688: FStStrNoPop var_C8
  loc_C4C68B: ConcatStr
  loc_C4C68C: FStStrNoPop var_CC
  loc_C4C68F: LitStr "', DiprPage = '"
  loc_C4C692: ConcatStr
  loc_C4C693: FStStrNoPop var_D0
  loc_C4C696: LitI4 0
  loc_C4C69B: LitI4 -1
  loc_C4C6A0: LitI4 1
  loc_C4C6A5: LitStr "\\"
  loc_C4C6A8: LitStr "\"
  loc_C4C6AB: ILdRf var_90
  loc_C4C6AE: ImpAdCallI2 Replace(, , , , , )
  loc_C4C6B3: FStStrNoPop var_D4
  loc_C4C6B6: ConcatStr
  loc_C4C6B7: FStStrNoPop var_D8
  loc_C4C6BA: LitStr "', UntrPage = "
  loc_C4C6BD: ConcatStr
  loc_C4C6BE: FStStrNoPop var_DC
  loc_C4C6C1: LitI4 0
  loc_C4C6C6: LitI4 -1
  loc_C4C6CB: LitI4 1
  loc_C4C6D0: LitStr "."
  loc_C4C6D3: LitStr ","
  loc_C4C6D6: ILdRf var_94
  loc_C4C6D9: ImpAdCallI2 Replace(, , , , , )
  loc_C4C6DE: FStStrNoPop var_E0
  loc_C4C6E1: ConcatStr
  loc_C4C6E2: FStStrNoPop var_E4
  loc_C4C6E5: LitStr ", LepaPage = '"
  loc_C4C6E8: ConcatStr
  loc_C4C6E9: FStStrNoPop var_E8
  loc_C4C6EC: ILdRf var_98
  loc_C4C6EF: ConcatStr
  loc_C4C6F0: FStStrNoPop var_EC
  loc_C4C6F3: LitStr "' WHERE CodiPage = "
  loc_C4C6F6: ConcatStr
  loc_C4C6F7: FStStrNoPop var_F0
  loc_C4C6FA: FLdUI1
  loc_C4C6FE: CStrI2
  loc_C4C700: FStStrNoPop var_F4
  loc_C4C703: ConcatStr
  loc_C4C704: FStStrNoPop var_F8
  loc_C4C707: Call EjecutarRs2(from_stack_1v)
  loc_C4C70C: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C4C73F: Branch loc_C4CFC3
  loc_C4C742: LitStr "Municipalidad de Guaymallén"
  loc_C4C745: LitStr "Municipalidad de Tunuyán"
  loc_C4C748: EqStr
  loc_C4C74A: BranchF loc_C4C86E
  loc_C4C74D: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4C750: FLdI2 PeriOrde
  loc_C4C753: CStrUI1
  loc_C4C755: FStStrNoPop var_9C
  loc_C4C758: ConcatStr
  loc_C4C759: FStStrNoPop var_A0
  loc_C4C75C: LitStr ", DecaPage = "
  loc_C4C75F: ConcatStr
  loc_C4C760: FStStrNoPop var_A4
  loc_C4C763: FLdFPR8 DecaPage
  loc_C4C766: CStrR8
  loc_C4C768: FStStrNoPop var_A8
  loc_C4C76B: ConcatStr
  loc_C4C76C: FStStrNoPop var_AC
  loc_C4C76F: LitStr ", DerePage = "
  loc_C4C772: ConcatStr
  loc_C4C773: FStStrNoPop var_B0
  loc_C4C776: FLdFPR8 FosePage
  loc_C4C779: CStrR8
  loc_C4C77B: FStStrNoPop var_B4
  loc_C4C77E: ConcatStr
  loc_C4C77F: FStStrNoPop var_B8
  loc_C4C782: LitStr ", FosePage = '"
  loc_C4C785: ConcatStr
  loc_C4C786: FStStrNoPop var_BC
  loc_C4C789: ILdRf var_88
  loc_C4C78C: ConcatStr
  loc_C4C78D: FStStrNoPop var_C0
  loc_C4C790: LitStr "', DicaPage = '"
  loc_C4C793: ConcatStr
  loc_C4C794: FStStrNoPop var_C4
  loc_C4C797: LitI4 0
  loc_C4C79C: LitI4 -1
  loc_C4C7A1: LitI4 1
  loc_C4C7A6: LitStr "\\"
  loc_C4C7A9: LitStr "\"
  loc_C4C7AC: ILdRf var_8C
  loc_C4C7AF: ImpAdCallI2 Replace(, , , , , )
  loc_C4C7B4: FStStrNoPop var_C8
  loc_C4C7B7: ConcatStr
  loc_C4C7B8: FStStrNoPop var_CC
  loc_C4C7BB: LitStr "', DiprPage = '"
  loc_C4C7BE: ConcatStr
  loc_C4C7BF: FStStrNoPop var_D0
  loc_C4C7C2: LitI4 0
  loc_C4C7C7: LitI4 -1
  loc_C4C7CC: LitI4 1
  loc_C4C7D1: LitStr "\\"
  loc_C4C7D4: LitStr "\"
  loc_C4C7D7: ILdRf var_90
  loc_C4C7DA: ImpAdCallI2 Replace(, , , , , )
  loc_C4C7DF: FStStrNoPop var_D4
  loc_C4C7E2: ConcatStr
  loc_C4C7E3: FStStrNoPop var_D8
  loc_C4C7E6: LitStr "', UntrPage = "
  loc_C4C7E9: ConcatStr
  loc_C4C7EA: FStStrNoPop var_DC
  loc_C4C7ED: LitI4 0
  loc_C4C7F2: LitI4 -1
  loc_C4C7F7: LitI4 1
  loc_C4C7FC: LitStr "."
  loc_C4C7FF: LitStr ","
  loc_C4C802: ILdRf var_94
  loc_C4C805: ImpAdCallI2 Replace(, , , , , )
  loc_C4C80A: FStStrNoPop var_E0
  loc_C4C80D: ConcatStr
  loc_C4C80E: FStStrNoPop var_E4
  loc_C4C811: LitStr ", LepaPage = '"
  loc_C4C814: ConcatStr
  loc_C4C815: FStStrNoPop var_E8
  loc_C4C818: ILdRf var_98
  loc_C4C81B: ConcatStr
  loc_C4C81C: FStStrNoPop var_EC
  loc_C4C81F: LitStr "' WHERE CodiPage = "
  loc_C4C822: ConcatStr
  loc_C4C823: FStStrNoPop var_F0
  loc_C4C826: FLdUI1
  loc_C4C82A: CStrI2
  loc_C4C82C: FStStrNoPop var_F4
  loc_C4C82F: ConcatStr
  loc_C4C830: FStStrNoPop var_F8
  loc_C4C833: Call EjecutarRs2(from_stack_1v)
  loc_C4C838: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C4C86B: Branch loc_C4CFC3
  loc_C4C86E: LitStr "Municipalidad de Guaymallén"
  loc_C4C871: LitStr "Municipalidad de General Alvear"
  loc_C4C874: EqStr
  loc_C4C876: BranchF loc_C4C99A
  loc_C4C879: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4C87C: FLdI2 PeriOrde
  loc_C4C87F: CStrUI1
  loc_C4C881: FStStrNoPop var_9C
  loc_C4C884: ConcatStr
  loc_C4C885: FStStrNoPop var_A0
  loc_C4C888: LitStr ", DecaPage = "
  loc_C4C88B: ConcatStr
  loc_C4C88C: FStStrNoPop var_A4
  loc_C4C88F: FLdFPR8 DecaPage
  loc_C4C892: CStrR8
  loc_C4C894: FStStrNoPop var_A8
  loc_C4C897: ConcatStr
  loc_C4C898: FStStrNoPop var_AC
  loc_C4C89B: LitStr ", DerePage = "
  loc_C4C89E: ConcatStr
  loc_C4C89F: FStStrNoPop var_B0
  loc_C4C8A2: FLdFPR8 FosePage
  loc_C4C8A5: CStrR8
  loc_C4C8A7: FStStrNoPop var_B4
  loc_C4C8AA: ConcatStr
  loc_C4C8AB: FStStrNoPop var_B8
  loc_C4C8AE: LitStr ", FosePage = '"
  loc_C4C8B1: ConcatStr
  loc_C4C8B2: FStStrNoPop var_BC
  loc_C4C8B5: ILdRf var_88
  loc_C4C8B8: ConcatStr
  loc_C4C8B9: FStStrNoPop var_C0
  loc_C4C8BC: LitStr "', DicaPage = '"
  loc_C4C8BF: ConcatStr
  loc_C4C8C0: FStStrNoPop var_C4
  loc_C4C8C3: LitI4 0
  loc_C4C8C8: LitI4 -1
  loc_C4C8CD: LitI4 1
  loc_C4C8D2: LitStr "\\"
  loc_C4C8D5: LitStr "\"
  loc_C4C8D8: ILdRf var_8C
  loc_C4C8DB: ImpAdCallI2 Replace(, , , , , )
  loc_C4C8E0: FStStrNoPop var_C8
  loc_C4C8E3: ConcatStr
  loc_C4C8E4: FStStrNoPop var_CC
  loc_C4C8E7: LitStr "', DiprPage = '"
  loc_C4C8EA: ConcatStr
  loc_C4C8EB: FStStrNoPop var_D0
  loc_C4C8EE: LitI4 0
  loc_C4C8F3: LitI4 -1
  loc_C4C8F8: LitI4 1
  loc_C4C8FD: LitStr "\\"
  loc_C4C900: LitStr "\"
  loc_C4C903: ILdRf var_90
  loc_C4C906: ImpAdCallI2 Replace(, , , , , )
  loc_C4C90B: FStStrNoPop var_D4
  loc_C4C90E: ConcatStr
  loc_C4C90F: FStStrNoPop var_D8
  loc_C4C912: LitStr "', UntrPage = "
  loc_C4C915: ConcatStr
  loc_C4C916: FStStrNoPop var_DC
  loc_C4C919: LitI4 0
  loc_C4C91E: LitI4 -1
  loc_C4C923: LitI4 1
  loc_C4C928: LitStr "."
  loc_C4C92B: LitStr ","
  loc_C4C92E: ILdRf var_94
  loc_C4C931: ImpAdCallI2 Replace(, , , , , )
  loc_C4C936: FStStrNoPop var_E0
  loc_C4C939: ConcatStr
  loc_C4C93A: FStStrNoPop var_E4
  loc_C4C93D: LitStr ", LepaPage = '"
  loc_C4C940: ConcatStr
  loc_C4C941: FStStrNoPop var_E8
  loc_C4C944: ILdRf var_98
  loc_C4C947: ConcatStr
  loc_C4C948: FStStrNoPop var_EC
  loc_C4C94B: LitStr "' WHERE CodiPage = "
  loc_C4C94E: ConcatStr
  loc_C4C94F: FStStrNoPop var_F0
  loc_C4C952: FLdUI1
  loc_C4C956: CStrI2
  loc_C4C958: FStStrNoPop var_F4
  loc_C4C95B: ConcatStr
  loc_C4C95C: FStStrNoPop var_F8
  loc_C4C95F: Call EjecutarRs2(from_stack_1v)
  loc_C4C964: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C4C997: Branch loc_C4CFC3
  loc_C4C99A: LitStr "Municipalidad de Guaymallén"
  loc_C4C99D: LitStr "Municipalidad de Guaymallén"
  loc_C4C9A0: EqStr
  loc_C4C9A2: BranchF loc_C4CAC6
  loc_C4C9A5: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4C9A8: FLdI2 PeriOrde
  loc_C4C9AB: CStrUI1
  loc_C4C9AD: FStStrNoPop var_9C
  loc_C4C9B0: ConcatStr
  loc_C4C9B1: FStStrNoPop var_A0
  loc_C4C9B4: LitStr ", DecaPage = "
  loc_C4C9B7: ConcatStr
  loc_C4C9B8: FStStrNoPop var_A4
  loc_C4C9BB: FLdFPR8 DecaPage
  loc_C4C9BE: CStrR8
  loc_C4C9C0: FStStrNoPop var_A8
  loc_C4C9C3: ConcatStr
  loc_C4C9C4: FStStrNoPop var_AC
  loc_C4C9C7: LitStr ", DerePage = "
  loc_C4C9CA: ConcatStr
  loc_C4C9CB: FStStrNoPop var_B0
  loc_C4C9CE: FLdFPR8 FosePage
  loc_C4C9D1: CStrR8
  loc_C4C9D3: FStStrNoPop var_B4
  loc_C4C9D6: ConcatStr
  loc_C4C9D7: FStStrNoPop var_B8
  loc_C4C9DA: LitStr ", FosePage = '"
  loc_C4C9DD: ConcatStr
  loc_C4C9DE: FStStrNoPop var_BC
  loc_C4C9E1: ILdRf var_88
  loc_C4C9E4: ConcatStr
  loc_C4C9E5: FStStrNoPop var_C0
  loc_C4C9E8: LitStr "', DicaPage = '"
  loc_C4C9EB: ConcatStr
  loc_C4C9EC: FStStrNoPop var_C4
  loc_C4C9EF: LitI4 0
  loc_C4C9F4: LitI4 -1
  loc_C4C9F9: LitI4 1
  loc_C4C9FE: LitStr "\\"
  loc_C4CA01: LitStr "\"
  loc_C4CA04: ILdRf var_8C
  loc_C4CA07: ImpAdCallI2 Replace(, , , , , )
  loc_C4CA0C: FStStrNoPop var_C8
  loc_C4CA0F: ConcatStr
  loc_C4CA10: FStStrNoPop var_CC
  loc_C4CA13: LitStr "', DiprPage = '"
  loc_C4CA16: ConcatStr
  loc_C4CA17: FStStrNoPop var_D0
  loc_C4CA1A: LitI4 0
  loc_C4CA1F: LitI4 -1
  loc_C4CA24: LitI4 1
  loc_C4CA29: LitStr "\\"
  loc_C4CA2C: LitStr "\"
  loc_C4CA2F: ILdRf var_90
  loc_C4CA32: ImpAdCallI2 Replace(, , , , , )
  loc_C4CA37: FStStrNoPop var_D4
  loc_C4CA3A: ConcatStr
  loc_C4CA3B: FStStrNoPop var_D8
  loc_C4CA3E: LitStr "', UntrPage = "
  loc_C4CA41: ConcatStr
  loc_C4CA42: FStStrNoPop var_DC
  loc_C4CA45: LitI4 0
  loc_C4CA4A: LitI4 -1
  loc_C4CA4F: LitI4 1
  loc_C4CA54: LitStr "."
  loc_C4CA57: LitStr ","
  loc_C4CA5A: ILdRf var_94
  loc_C4CA5D: ImpAdCallI2 Replace(, , , , , )
  loc_C4CA62: FStStrNoPop var_E0
  loc_C4CA65: ConcatStr
  loc_C4CA66: FStStrNoPop var_E4
  loc_C4CA69: LitStr ", LepaPage = '"
  loc_C4CA6C: ConcatStr
  loc_C4CA6D: FStStrNoPop var_E8
  loc_C4CA70: ILdRf var_98
  loc_C4CA73: ConcatStr
  loc_C4CA74: FStStrNoPop var_EC
  loc_C4CA77: LitStr "' WHERE CodiPage = "
  loc_C4CA7A: ConcatStr
  loc_C4CA7B: FStStrNoPop var_F0
  loc_C4CA7E: FLdUI1
  loc_C4CA82: CStrI2
  loc_C4CA84: FStStrNoPop var_F4
  loc_C4CA87: ConcatStr
  loc_C4CA88: FStStrNoPop var_F8
  loc_C4CA8B: Call EjecutarRs2(from_stack_1v)
  loc_C4CA90: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C4CAC3: Branch loc_C4CFC3
  loc_C4CAC6: LitStr "Municipalidad de Guaymallén"
  loc_C4CAC9: LitStr "Municipalidad de La Paz"
  loc_C4CACC: EqStr
  loc_C4CACE: BranchF loc_C4CBF2
  loc_C4CAD1: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4CAD4: FLdI2 PeriOrde
  loc_C4CAD7: CStrUI1
  loc_C4CAD9: FStStrNoPop var_9C
  loc_C4CADC: ConcatStr
  loc_C4CADD: FStStrNoPop var_A0
  loc_C4CAE0: LitStr ", DecaPage = "
  loc_C4CAE3: ConcatStr
  loc_C4CAE4: FStStrNoPop var_A4
  loc_C4CAE7: FLdFPR8 DecaPage
  loc_C4CAEA: CStrR8
  loc_C4CAEC: FStStrNoPop var_A8
  loc_C4CAEF: ConcatStr
  loc_C4CAF0: FStStrNoPop var_AC
  loc_C4CAF3: LitStr ", DerePage = "
  loc_C4CAF6: ConcatStr
  loc_C4CAF7: FStStrNoPop var_B0
  loc_C4CAFA: FLdFPR8 FosePage
  loc_C4CAFD: CStrR8
  loc_C4CAFF: FStStrNoPop var_B4
  loc_C4CB02: ConcatStr
  loc_C4CB03: FStStrNoPop var_B8
  loc_C4CB06: LitStr ", FosePage = '"
  loc_C4CB09: ConcatStr
  loc_C4CB0A: FStStrNoPop var_BC
  loc_C4CB0D: ILdRf var_88
  loc_C4CB10: ConcatStr
  loc_C4CB11: FStStrNoPop var_C0
  loc_C4CB14: LitStr "', DicaPage = '"
  loc_C4CB17: ConcatStr
  loc_C4CB18: FStStrNoPop var_C4
  loc_C4CB1B: LitI4 0
  loc_C4CB20: LitI4 -1
  loc_C4CB25: LitI4 1
  loc_C4CB2A: LitStr "\\"
  loc_C4CB2D: LitStr "\"
  loc_C4CB30: ILdRf var_8C
  loc_C4CB33: ImpAdCallI2 Replace(, , , , , )
  loc_C4CB38: FStStrNoPop var_C8
  loc_C4CB3B: ConcatStr
  loc_C4CB3C: FStStrNoPop var_CC
  loc_C4CB3F: LitStr "', DiprPage = '"
  loc_C4CB42: ConcatStr
  loc_C4CB43: FStStrNoPop var_D0
  loc_C4CB46: LitI4 0
  loc_C4CB4B: LitI4 -1
  loc_C4CB50: LitI4 1
  loc_C4CB55: LitStr "\\"
  loc_C4CB58: LitStr "\"
  loc_C4CB5B: ILdRf var_90
  loc_C4CB5E: ImpAdCallI2 Replace(, , , , , )
  loc_C4CB63: FStStrNoPop var_D4
  loc_C4CB66: ConcatStr
  loc_C4CB67: FStStrNoPop var_D8
  loc_C4CB6A: LitStr "', UntrPage = "
  loc_C4CB6D: ConcatStr
  loc_C4CB6E: FStStrNoPop var_DC
  loc_C4CB71: LitI4 0
  loc_C4CB76: LitI4 -1
  loc_C4CB7B: LitI4 1
  loc_C4CB80: LitStr "."
  loc_C4CB83: LitStr ","
  loc_C4CB86: ILdRf var_94
  loc_C4CB89: ImpAdCallI2 Replace(, , , , , )
  loc_C4CB8E: FStStrNoPop var_E0
  loc_C4CB91: ConcatStr
  loc_C4CB92: FStStrNoPop var_E4
  loc_C4CB95: LitStr ", LepaPage = '"
  loc_C4CB98: ConcatStr
  loc_C4CB99: FStStrNoPop var_E8
  loc_C4CB9C: ILdRf var_98
  loc_C4CB9F: ConcatStr
  loc_C4CBA0: FStStrNoPop var_EC
  loc_C4CBA3: LitStr "' WHERE CodiPage = "
  loc_C4CBA6: ConcatStr
  loc_C4CBA7: FStStrNoPop var_F0
  loc_C4CBAA: FLdUI1
  loc_C4CBAE: CStrI2
  loc_C4CBB0: FStStrNoPop var_F4
  loc_C4CBB3: ConcatStr
  loc_C4CBB4: FStStrNoPop var_F8
  loc_C4CBB7: Call EjecutarRs2(from_stack_1v)
  loc_C4CBBC: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C4CBEF: Branch loc_C4CFC3
  loc_C4CBF2: LitStr "Municipalidad de Guaymallén"
  loc_C4CBF5: LitStr "Municipalidad de Santa Rosa"
  loc_C4CBF8: EqStr
  loc_C4CBFA: BranchF loc_C4CD1E
  loc_C4CBFD: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4CC00: FLdI2 PeriOrde
  loc_C4CC03: CStrUI1
  loc_C4CC05: FStStrNoPop var_9C
  loc_C4CC08: ConcatStr
  loc_C4CC09: FStStrNoPop var_A0
  loc_C4CC0C: LitStr ", DecaPage = "
  loc_C4CC0F: ConcatStr
  loc_C4CC10: FStStrNoPop var_A4
  loc_C4CC13: FLdFPR8 DecaPage
  loc_C4CC16: CStrR8
  loc_C4CC18: FStStrNoPop var_A8
  loc_C4CC1B: ConcatStr
  loc_C4CC1C: FStStrNoPop var_AC
  loc_C4CC1F: LitStr ", DerePage = "
  loc_C4CC22: ConcatStr
  loc_C4CC23: FStStrNoPop var_B0
  loc_C4CC26: FLdFPR8 FosePage
  loc_C4CC29: CStrR8
  loc_C4CC2B: FStStrNoPop var_B4
  loc_C4CC2E: ConcatStr
  loc_C4CC2F: FStStrNoPop var_B8
  loc_C4CC32: LitStr ", FosePage = '"
  loc_C4CC35: ConcatStr
  loc_C4CC36: FStStrNoPop var_BC
  loc_C4CC39: ILdRf var_88
  loc_C4CC3C: ConcatStr
  loc_C4CC3D: FStStrNoPop var_C0
  loc_C4CC40: LitStr "', DicaPage = '"
  loc_C4CC43: ConcatStr
  loc_C4CC44: FStStrNoPop var_C4
  loc_C4CC47: LitI4 0
  loc_C4CC4C: LitI4 -1
  loc_C4CC51: LitI4 1
  loc_C4CC56: LitStr "\\"
  loc_C4CC59: LitStr "\"
  loc_C4CC5C: ILdRf var_8C
  loc_C4CC5F: ImpAdCallI2 Replace(, , , , , )
  loc_C4CC64: FStStrNoPop var_C8
  loc_C4CC67: ConcatStr
  loc_C4CC68: FStStrNoPop var_CC
  loc_C4CC6B: LitStr "', DiprPage = '"
  loc_C4CC6E: ConcatStr
  loc_C4CC6F: FStStrNoPop var_D0
  loc_C4CC72: LitI4 0
  loc_C4CC77: LitI4 -1
  loc_C4CC7C: LitI4 1
  loc_C4CC81: LitStr "\\"
  loc_C4CC84: LitStr "\"
  loc_C4CC87: ILdRf var_90
  loc_C4CC8A: ImpAdCallI2 Replace(, , , , , )
  loc_C4CC8F: FStStrNoPop var_D4
  loc_C4CC92: ConcatStr
  loc_C4CC93: FStStrNoPop var_D8
  loc_C4CC96: LitStr "', UntrPage = "
  loc_C4CC99: ConcatStr
  loc_C4CC9A: FStStrNoPop var_DC
  loc_C4CC9D: LitI4 0
  loc_C4CCA2: LitI4 -1
  loc_C4CCA7: LitI4 1
  loc_C4CCAC: LitStr "."
  loc_C4CCAF: LitStr ","
  loc_C4CCB2: ILdRf var_94
  loc_C4CCB5: ImpAdCallI2 Replace(, , , , , )
  loc_C4CCBA: FStStrNoPop var_E0
  loc_C4CCBD: ConcatStr
  loc_C4CCBE: FStStrNoPop var_E4
  loc_C4CCC1: LitStr ", LepaPage = '"
  loc_C4CCC4: ConcatStr
  loc_C4CCC5: FStStrNoPop var_E8
  loc_C4CCC8: ILdRf var_98
  loc_C4CCCB: ConcatStr
  loc_C4CCCC: FStStrNoPop var_EC
  loc_C4CCCF: LitStr "' WHERE CodiPage = "
  loc_C4CCD2: ConcatStr
  loc_C4CCD3: FStStrNoPop var_F0
  loc_C4CCD6: FLdUI1
  loc_C4CCDA: CStrI2
  loc_C4CCDC: FStStrNoPop var_F4
  loc_C4CCDF: ConcatStr
  loc_C4CCE0: FStStrNoPop var_F8
  loc_C4CCE3: Call EjecutarRs2(from_stack_1v)
  loc_C4CCE8: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C4CD1B: Branch loc_C4CFC3
  loc_C4CD1E: LitStr "Municipalidad de Guaymallén"
  loc_C4CD21: LitStr "Municipalidad de Tupungato"
  loc_C4CD24: EqStr
  loc_C4CD26: BranchF loc_C4CE4A
  loc_C4CD29: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4CD2C: FLdI2 PeriOrde
  loc_C4CD2F: CStrUI1
  loc_C4CD31: FStStrNoPop var_9C
  loc_C4CD34: ConcatStr
  loc_C4CD35: FStStrNoPop var_A0
  loc_C4CD38: LitStr ", DecaPage = "
  loc_C4CD3B: ConcatStr
  loc_C4CD3C: FStStrNoPop var_A4
  loc_C4CD3F: FLdFPR8 DecaPage
  loc_C4CD42: CStrR8
  loc_C4CD44: FStStrNoPop var_A8
  loc_C4CD47: ConcatStr
  loc_C4CD48: FStStrNoPop var_AC
  loc_C4CD4B: LitStr ", DerePage = "
  loc_C4CD4E: ConcatStr
  loc_C4CD4F: FStStrNoPop var_B0
  loc_C4CD52: FLdFPR8 FosePage
  loc_C4CD55: CStrR8
  loc_C4CD57: FStStrNoPop var_B4
  loc_C4CD5A: ConcatStr
  loc_C4CD5B: FStStrNoPop var_B8
  loc_C4CD5E: LitStr ", FosePage = '"
  loc_C4CD61: ConcatStr
  loc_C4CD62: FStStrNoPop var_BC
  loc_C4CD65: ILdRf var_88
  loc_C4CD68: ConcatStr
  loc_C4CD69: FStStrNoPop var_C0
  loc_C4CD6C: LitStr "', DicaPage = '"
  loc_C4CD6F: ConcatStr
  loc_C4CD70: FStStrNoPop var_C4
  loc_C4CD73: LitI4 0
  loc_C4CD78: LitI4 -1
  loc_C4CD7D: LitI4 1
  loc_C4CD82: LitStr "\\"
  loc_C4CD85: LitStr "\"
  loc_C4CD88: ILdRf var_8C
  loc_C4CD8B: ImpAdCallI2 Replace(, , , , , )
  loc_C4CD90: FStStrNoPop var_C8
  loc_C4CD93: ConcatStr
  loc_C4CD94: FStStrNoPop var_CC
  loc_C4CD97: LitStr "', DiprPage = '"
  loc_C4CD9A: ConcatStr
  loc_C4CD9B: FStStrNoPop var_D0
  loc_C4CD9E: LitI4 0
  loc_C4CDA3: LitI4 -1
  loc_C4CDA8: LitI4 1
  loc_C4CDAD: LitStr "\\"
  loc_C4CDB0: LitStr "\"
  loc_C4CDB3: ILdRf var_90
  loc_C4CDB6: ImpAdCallI2 Replace(, , , , , )
  loc_C4CDBB: FStStrNoPop var_D4
  loc_C4CDBE: ConcatStr
  loc_C4CDBF: FStStrNoPop var_D8
  loc_C4CDC2: LitStr "', UntrPage = "
  loc_C4CDC5: ConcatStr
  loc_C4CDC6: FStStrNoPop var_DC
  loc_C4CDC9: LitI4 0
  loc_C4CDCE: LitI4 -1
  loc_C4CDD3: LitI4 1
  loc_C4CDD8: LitStr "."
  loc_C4CDDB: LitStr ","
  loc_C4CDDE: ILdRf var_94
  loc_C4CDE1: ImpAdCallI2 Replace(, , , , , )
  loc_C4CDE6: FStStrNoPop var_E0
  loc_C4CDE9: ConcatStr
  loc_C4CDEA: FStStrNoPop var_E4
  loc_C4CDED: LitStr ", LepaPage = '"
  loc_C4CDF0: ConcatStr
  loc_C4CDF1: FStStrNoPop var_E8
  loc_C4CDF4: ILdRf var_98
  loc_C4CDF7: ConcatStr
  loc_C4CDF8: FStStrNoPop var_EC
  loc_C4CDFB: LitStr "' WHERE CodiPage = "
  loc_C4CDFE: ConcatStr
  loc_C4CDFF: FStStrNoPop var_F0
  loc_C4CE02: FLdUI1
  loc_C4CE06: CStrI2
  loc_C4CE08: FStStrNoPop var_F4
  loc_C4CE0B: ConcatStr
  loc_C4CE0C: FStStrNoPop var_F8
  loc_C4CE0F: Call EjecutarRs2(from_stack_1v)
  loc_C4CE14: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C4CE47: Branch loc_C4CFC3
  loc_C4CE4A: LitStr "Municipalidad de Guaymallén"
  loc_C4CE4D: LitStr "Municipalidad de San Martin"
  loc_C4CE50: EqStr
  loc_C4CE52: BranchF loc_C4CFC3
  loc_C4CE55: LitStr " UPDATE paragene SET PeriOrde = "
  loc_C4CE58: FLdI2 PeriOrde
  loc_C4CE5B: CStrUI1
  loc_C4CE5D: FStStrNoPop var_9C
  loc_C4CE60: ConcatStr
  loc_C4CE61: FStStrNoPop var_A0
  loc_C4CE64: LitStr ", DecaPage = "
  loc_C4CE67: ConcatStr
  loc_C4CE68: FStStrNoPop var_A8
  loc_C4CE6B: LitI4 0
  loc_C4CE70: LitI4 -1
  loc_C4CE75: LitI4 1
  loc_C4CE7A: LitStr "."
  loc_C4CE7D: LitStr ","
  loc_C4CE80: FLdFPR8 DecaPage
  loc_C4CE83: CStrR8
  loc_C4CE85: FStStrNoPop var_A4
  loc_C4CE88: ImpAdCallI2 Replace(, , , , , )
  loc_C4CE8D: FStStrNoPop var_AC
  loc_C4CE90: ConcatStr
  loc_C4CE91: FStStrNoPop var_B0
  loc_C4CE94: LitStr ", DerePage = "
  loc_C4CE97: ConcatStr
  loc_C4CE98: FStStrNoPop var_B8
  loc_C4CE9B: LitI4 0
  loc_C4CEA0: LitI4 -1
  loc_C4CEA5: LitI4 1
  loc_C4CEAA: LitStr "."
  loc_C4CEAD: LitStr ","
  loc_C4CEB0: FLdFPR8 FosePage
  loc_C4CEB3: CStrR8
  loc_C4CEB5: FStStrNoPop var_B4
  loc_C4CEB8: ImpAdCallI2 Replace(, , , , , )
  loc_C4CEBD: FStStrNoPop var_BC
  loc_C4CEC0: ConcatStr
  loc_C4CEC1: FStStrNoPop var_C0
  loc_C4CEC4: LitStr ", FosePage = '"
  loc_C4CEC7: ConcatStr
  loc_C4CEC8: FStStrNoPop var_C4
  loc_C4CECB: ILdRf var_88
  loc_C4CECE: ConcatStr
  loc_C4CECF: FStStrNoPop var_C8
  loc_C4CED2: LitStr "', DicaPage = '"
  loc_C4CED5: ConcatStr
  loc_C4CED6: FStStrNoPop var_CC
  loc_C4CED9: LitI4 0
  loc_C4CEDE: LitI4 -1
  loc_C4CEE3: LitI4 1
  loc_C4CEE8: LitStr "\\"
  loc_C4CEEB: LitStr "\"
  loc_C4CEEE: ILdRf var_8C
  loc_C4CEF1: ImpAdCallI2 Replace(, , , , , )
  loc_C4CEF6: FStStrNoPop var_D0
  loc_C4CEF9: ConcatStr
  loc_C4CEFA: FStStrNoPop var_D4
  loc_C4CEFD: LitStr "', DiprPage = '"
  loc_C4CF00: ConcatStr
  loc_C4CF01: FStStrNoPop var_D8
  loc_C4CF04: LitI4 0
  loc_C4CF09: LitI4 -1
  loc_C4CF0E: LitI4 1
  loc_C4CF13: LitStr "\\"
  loc_C4CF16: LitStr "\"
  loc_C4CF19: ILdRf var_90
  loc_C4CF1C: ImpAdCallI2 Replace(, , , , , )
  loc_C4CF21: FStStrNoPop var_DC
  loc_C4CF24: ConcatStr
  loc_C4CF25: FStStrNoPop var_E0
  loc_C4CF28: LitStr "', UntrPage = "
  loc_C4CF2B: ConcatStr
  loc_C4CF2C: FStStrNoPop var_E4
  loc_C4CF2F: LitI4 0
  loc_C4CF34: LitI4 -1
  loc_C4CF39: LitI4 1
  loc_C4CF3E: LitStr "."
  loc_C4CF41: LitStr ","
  loc_C4CF44: ILdRf var_94
  loc_C4CF47: ImpAdCallI2 Replace(, , , , , )
  loc_C4CF4C: FStStrNoPop var_E8
  loc_C4CF4F: ConcatStr
  loc_C4CF50: FStStrNoPop var_EC
  loc_C4CF53: LitStr ", LepaPage = '"
  loc_C4CF56: ConcatStr
  loc_C4CF57: FStStrNoPop var_F0
  loc_C4CF5A: ILdRf var_98
  loc_C4CF5D: ConcatStr
  loc_C4CF5E: FStStrNoPop var_F4
  loc_C4CF61: LitStr "', ModiUsua = '"
  loc_C4CF64: ConcatStr
  loc_C4CF65: FStStrNoPop var_F8
  loc_C4CF68: ImpAdLdI4 MemVar_D9302C
  loc_C4CF6B: ConcatStr
  loc_C4CF6C: FStStrNoPop var_FC
  loc_C4CF6F: LitStr "', ModiFeho = NOW() WHERE CodiPage = "
  loc_C4CF72: ConcatStr
  loc_C4CF73: FStStrNoPop var_100
  loc_C4CF76: FLdUI1
  loc_C4CF7A: CStrI2
  loc_C4CF7C: FStStrNoPop var_104
  loc_C4CF7F: ConcatStr
  loc_C4CF80: FStStrNoPop var_108
  loc_C4CF83: Call EjecutarRs2(from_stack_1v)
  loc_C4CF88: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_C4CFC3: ExitProcHresult
End Sub

Public Sub Delete() 'A21414
  'Data Table: 431B20
  loc_A213CC: FLdRfVar var_8C
  loc_A213CF: FLdRfVar var_88
  loc_A213D2: FLdPr Me
  loc_A213D5: from_stack_1v = clsparagene.global_4397736Get()
  loc_A213DA: FLdPr var_88
  loc_A213DD:  = Me.RecordCount
  loc_A213E2: ILdRf var_8C
  loc_A213E5: LitI4 0
  loc_A213EA: GtI4
  loc_A213EB: FFree1Ad var_88
  loc_A213EE: BranchF loc_A21411
  loc_A213F1: LitI4 1
  loc_A213F6: FLdRfVar var_88
  loc_A213F9: FLdPr Me
  loc_A213FC: from_stack_1v = clsparagene.global_4397736Get()
  loc_A21401: FLdPr var_88
  loc_A21404: Me.Delete
  loc_A21409: FFree1Ad var_88
  loc_A2140C: Call MoveNext()
  loc_A21411: ExitProcHresult
  loc_A21412: LitStr "StrFormMemory_BAC0333D"
End Sub

Public Sub Requery() 'A04188
  'Data Table: 431B20
  loc_A04158: LitI4 -1
  loc_A0415D: FLdRfVar var_88
  loc_A04160: FLdPr Me
  loc_A04163: from_stack_1v = clsparagene.global_4397736Get()
  loc_A04168: FLdPr var_88
  loc_A0416B: Me.Requery from_stack_1
  loc_A04170: FFree1Ad var_88
  loc_A04173: LitVarStr var_98, "Primary"
  loc_A04178: PopAdLdVar
  loc_A04179: FLdPr Me
  loc_A0417C: LateIdCall
  loc_A04184: ExitProcHresult
  loc_A04185: LitStr vbNullString
End Sub

Public Sub Update() 'A22B50
  'Data Table: 431B20
  loc_A22B0C: FLdRfVar var_88
  loc_A22B0F: FLdPr Me
  loc_A22B12: from_stack_1v = clsparagene.global_4397736Get()
  loc_A22B17: FLdZeroAd var_88
  loc_A22B1A: FStAdFunc var_8C
  loc_A22B1D: LitI4 3
  loc_A22B22: FLdPr var_8C
  loc_A22B25: Me.UpdateBatch
  loc_A22B2A: FLdRfVar var_90
  loc_A22B2D: FLdPr var_8C
  loc_A22B30:  = Me.EditMode
  loc_A22B35: ILdRf var_90
  loc_A22B38: LitI4 2
  loc_A22B3D: EqI4
  loc_A22B3E: BranchF loc_A22B46
  loc_A22B41: Call MoveLast()
  loc_A22B46: LitNothing
  loc_A22B48: FStAd var_8C 
  loc_A22B4C: ExitProcHresult
End Sub

Public Sub Cancel() 'A46F98
  'Data Table: 431B20
  loc_A46F44: FLdRfVar var_88
  loc_A46F47: FLdPr Me
  loc_A46F4A: from_stack_1v = clsparagene.global_4397736Get()
  loc_A46F4F: FLdZeroAd var_88
  loc_A46F52: FStAdFunc var_8C
  loc_A46F55: FLdRfVar var_90
  loc_A46F58: FLdPr var_8C
  loc_A46F5B:  = Me.RecordCount
  loc_A46F60: ILdRf var_90
  loc_A46F63: LitI4 0
  loc_A46F68: GtI4
  loc_A46F69: BranchF loc_A46F90
  loc_A46F6C: FLdPr var_8C
  loc_A46F6F: Me.CancelUpdate
  loc_A46F74: FLdRfVar var_90
  loc_A46F77: FLdPr var_8C
  loc_A46F7A:  = Me.EditMode
  loc_A46F7F: ILdRf var_90
  loc_A46F82: LitI4 2
  loc_A46F87: EqI4
  loc_A46F88: BranchF loc_A46F90
  loc_A46F8B: Call MoveFirst()
  loc_A46F90: LitNothing
  loc_A46F92: FStAd var_8C 
  loc_A46F96: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC874
  'Data Table: 431B20
  loc_9FC848: FLdRfVar var_90
  loc_9FC84B: FLdRfVar var_8C
  loc_9FC84E: FLdPr Me
  loc_9FC851: from_stack_1v = clsparagene.global_4397736Get()
  loc_9FC856: FLdPr var_8C
  loc_9FC859:  = Me.EditMode
  loc_9FC85E: ILdRf var_90
  loc_9FC861: LitI4 0
  loc_9FC866: NeI4
  loc_9FC867: FStI2 var_86
  loc_9FC86A: FFree1Ad var_8C
  loc_9FC86D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A72648
  'Data Table: 431B20
  loc_A725D4: ILdRf sSelect
  loc_A725D7: FStStrCopy var_88
  loc_A725DA: LitNothing
  loc_A725DC: CastAd
  loc_A725DF: FStAdFuncNoPop
  loc_A725E2: FLdPr Me
  loc_A725E5: Call clsparagene.global_4397736Set(from_stack_1v)
  loc_A725EA: FFree1Ad var_8C
  loc_A725ED: New Recordset
  loc_A725F1: FStAdFuncNoPop
  loc_A725F4: FLdPr Me
  loc_A725F7: Call clsparagene.global_4397736Set(from_stack_1v)
  loc_A725FC: FFree1Ad var_8C
  loc_A725FF: LitI4 -1
  loc_A72604: LitI4 3
  loc_A72609: LitI4 3
  loc_A7260E: ImpAdLdI4 MemVar_D9301C
  loc_A72611: CVarAd
  loc_A72615: PopAdLdVar
  loc_A72616: ILdRf var_88
  loc_A72619: CVarStr var_9C
  loc_A7261C: PopAdLdVar
  loc_A7261D: FLdRfVar var_8C
  loc_A72620: FLdPr Me
  loc_A72623: from_stack_1v = clsparagene.global_4397736Get()
  loc_A72628: FLdPr var_8C
  loc_A7262B: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A72630: FFree1Ad var_8C
  loc_A72633: LitVarStr var_9C, "Primary"
  loc_A72638: PopAdLdVar
  loc_A72639: FLdPr Me
  loc_A7263C: LateIdCall
  loc_A72644: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A597E0
  'Data Table: 431B20
  loc_A59780: ILdRf sSelect
  loc_A59783: FStStrCopy var_88
  loc_A59786: LitNothing
  loc_A59788: CastAd
  loc_A5978B: FStAdFuncNoPop
  loc_A5978E: FLdPr Me
  loc_A59791: Call clsparagene.global_4397736Set(from_stack_1v)
  loc_A59796: FFree1Ad var_8C
  loc_A59799: New Recordset
  loc_A5979D: FStAdFuncNoPop
  loc_A597A0: FLdPr Me
  loc_A597A3: Call clsparagene.global_4397736Set(from_stack_1v)
  loc_A597A8: FFree1Ad var_8C
  loc_A597AB: LitI4 -1
  loc_A597B0: LitI4 3
  loc_A597B5: LitI4 3
  loc_A597BA: ImpAdLdI4 MemVar_D9301C
  loc_A597BD: CVarAd
  loc_A597C1: PopAdLdVar
  loc_A597C2: ILdRf var_88
  loc_A597C5: CVarStr var_9C
  loc_A597C8: PopAdLdVar
  loc_A597C9: FLdRfVar var_8C
  loc_A597CC: FLdPr Me
  loc_A597CF: from_stack_1v = clsparagene.global_4397736Get()
  loc_A597D4: FLdPr var_8C
  loc_A597D7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A597DC: FFree1Ad var_8C
  loc_A597DF: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09DAC
  'Data Table: 431B20
  loc_A09D7C: ZeroRetVal
  loc_A09D7E: FLdRfVar var_90
  loc_A09D81: FLdRfVar var_8C
  loc_A09D84: FLdPr Me
  loc_A09D87: from_stack_1v = clsparagene.global_4397736Get()
  loc_A09D8C: FLdPr var_8C
  loc_A09D8F:  = Me.DataSource
  loc_A09D94: ILdRf var_90
  loc_A09D97: CastAd
  loc_A09D9A: FStAdFunc var_88
  loc_A09D9D: FFreeAd var_8C = ""
  loc_A09DA4: ExitProcCbHresult
  loc_A09DAA: ILdRf var_5794
End Sub

Public Property Get EditMode() '9F84DC
  'Data Table: 431B20
  loc_9F84B4: FLdRfVar var_90
  loc_9F84B7: FLdRfVar var_8C
  loc_9F84BA: FLdPr Me
  loc_9F84BD: from_stack_1v = clsparagene.global_4397736Get()
  loc_9F84C2: FLdPr var_8C
  loc_9F84C5:  = Me.EditMode
  loc_9F84CA: ILdRf var_90
  loc_9F84CD: FStR4 var_88
  loc_9F84D0: FFree1Ad var_8C
  loc_9F84D3: ExitProcCbHresult
  loc_9F84D9: LitStr " UPDATE paragene SET PeriOrde = "
End Sub

Public Property Get CodiPage() 'A46F04
  'Data Table: 431B20
  loc_A46EB8: FLdRfVar var_B4
  loc_A46EBB: FLdRfVar var_A4
  loc_A46EBE: LitVarStr var_A0, "CodiPage"
  loc_A46EC3: PopAdLdVar
  loc_A46EC4: FLdRfVar var_90
  loc_A46EC7: FLdRfVar var_8C
  loc_A46ECA: FLdPr Me
  loc_A46ECD: from_stack_1v = clsparagene.global_4397736Get()
  loc_A46ED2: FLdPr var_8C
  loc_A46ED5:  = Me.Fields
  loc_A46EDA: FLdPr var_90
  loc_A46EDD: from_stack_2 = Me.Item(from_stack_1)
  loc_A46EE2: FLdPr var_A4
  loc_A46EE5:  = Me.Value
  loc_A46EEA: FLdRfVar var_B4
  loc_A46EED: CI2Var
  loc_A46EEE: FStI2 var_86
  loc_A46EF1: FFreeAd var_8C = "": var_90 = ""
  loc_A46EFA: FFree1Var var_B4 = ""
  loc_A46EFD: ExitProcCbHresult
End Sub

Public Property Let CodiPage(vDato) '9EE0C0
  'Data Table: 431B20
  loc_9EE09C: FLdI2 vDato
  loc_9EE09F: CVarI2 var_A8
  loc_9EE0A2: PopAdLdVar
  loc_9EE0A3: LitVarStr var_98, "CodiPage"
  loc_9EE0A8: PopAdLdVar
  loc_9EE0A9: FLdRfVar var_88
  loc_9EE0AC: FLdPr Me
  loc_9EE0AF: from_stack_1v = clsparagene.global_4397736Get()
  loc_9EE0B4: FLdPr var_88
  loc_9EE0B7: Me.Collect = from_stack_1
  loc_9EE0BC: FFree1Ad var_88
  loc_9EE0BF: ExitProcHresult
End Sub

Public Property Get DerePage() 'A46CD4
  'Data Table: 431B20
  loc_A46C88: FLdRfVar var_B8
  loc_A46C8B: FLdRfVar var_A8
  loc_A46C8E: LitVarStr var_A4, "DerePage"
  loc_A46C93: PopAdLdVar
  loc_A46C94: FLdRfVar DerePage
  loc_A46C97: FLdRfVar var_90
  loc_A46C9A: FLdPr Me
  loc_A46C9D: from_stack_1v = clsparagene.global_4397736Get()
  loc_A46CA2: FLdPr var_90
  loc_A46CA5:  = Me.Fields
  loc_A46CAA: FLdPr DerePage
  loc_A46CAD: from_stack_2 = Me.Item(from_stack_1)
  loc_A46CB2: FLdPr var_A8
  loc_A46CB5:  = Me.Value
  loc_A46CBA: FLdRfVar var_B8
  loc_A46CBD: CR4Var
  loc_A46CBE: FStFPR8 var_8C
  loc_A46CC1: FFreeAd var_90 = "": DerePage = ""
  loc_A46CCA: FFree1Var var_B8 = ""
  loc_A46CCD: ExitProcCbHresult
End Sub

Public Property Let DerePage(vDato) '9F8538
  'Data Table: 431B20
  loc_9F8510: FLdFPR8 vDato
  loc_9F8513: CVarR8
  loc_9F8517: PopAdLdVar
  loc_9F8518: LitVarStr var_98, "DerePage"
  loc_9F851D: PopAdLdVar
  loc_9F851E: FLdRfVar var_88
  loc_9F8521: FLdPr Me
  loc_9F8524: from_stack_1v = clsparagene.global_4397736Get()
  loc_9F8529: FLdPr var_88
  loc_9F852C: Me.Collect = from_stack_1
  loc_9F8531: FFree1Ad var_88
  loc_9F8534: ExitProcHresult
  loc_9F8535: MemLdRfVar from_stack_1.global_0
End Sub

Public Property Get DecaPage() 'A46C48
  'Data Table: 431B20
  loc_A46BFC: FLdRfVar var_B4
  loc_A46BFF: FLdRfVar var_A4
  loc_A46C02: LitVarStr var_A0, "DecaPage"
  loc_A46C07: PopAdLdVar
  loc_A46C08: FLdRfVar var_90
  loc_A46C0B: FLdRfVar var_8C
  loc_A46C0E: FLdPr Me
  loc_A46C11: from_stack_1v = clsparagene.global_4397736Get()
  loc_A46C16: FLdPr var_8C
  loc_A46C19:  = Me.Fields
  loc_A46C1E: FLdPr var_90
  loc_A46C21: from_stack_2 = Me.Item(from_stack_1)
  loc_A46C26: FLdPr var_A4
  loc_A46C29:  = Me.Value
  loc_A46C2E: FLdRfVar var_B4
  loc_A46C31: CI2Var
  loc_A46C32: FStI2 var_86
  loc_A46C35: FFreeAd var_8C = "": var_90 = ""
  loc_A46C3E: FFree1Var var_B4 = ""
  loc_A46C41: ExitProcCbHresult
End Sub

Public Property Let DecaPage(vDato) '9EDFB8
  'Data Table: 431B20
  loc_9EDF94: FLdI2 vDato
  loc_9EDF97: CVarI2 var_A8
  loc_9EDF9A: PopAdLdVar
  loc_9EDF9B: LitVarStr var_98, "DecaPage"
  loc_9EDFA0: PopAdLdVar
  loc_9EDFA1: FLdRfVar var_88
  loc_9EDFA4: FLdPr Me
  loc_9EDFA7: from_stack_1v = clsparagene.global_4397736Get()
  loc_9EDFAC: FLdPr var_88
  loc_9EDFAF: Me.Collect = from_stack_1
  loc_9EDFB4: FFree1Ad var_88
  loc_9EDFB7: ExitProcHresult
End Sub

Public Property Get FosePage() 'A58390
  'Data Table: 431B20
  loc_A58340: ZeroRetVal
  loc_A58342: FLdRfVar var_B4
  loc_A58345: FLdRfVar var_A4
  loc_A58348: LitVarStr var_A0, "FosePage"
  loc_A5834D: PopAdLdVar
  loc_A5834E: FLdRfVar var_90
  loc_A58351: FLdRfVar var_8C
  loc_A58354: FLdPr Me
  loc_A58357: from_stack_1v = clsparagene.global_4397736Get()
  loc_A5835C: FLdPr var_8C
  loc_A5835F:  = Me.Fields
  loc_A58364: FLdPr var_90
  loc_A58367: from_stack_2 = Me.Item(from_stack_1)
  loc_A5836C: FLdPr var_A4
  loc_A5836F:  = Me.Value
  loc_A58374: FLdRfVar var_B4
  loc_A58377: CStrVarTmp
  loc_A58378: FStStr var_88
  loc_A5837B: FFreeAd var_8C = "": var_90 = ""
  loc_A58384: FFree1Var var_B4 = ""
  loc_A58387: ExitProcCbHresult
End Sub

Public Property Let FosePage(vDato) 'A004F8
  'Data Table: 431B20
  loc_A004CC: ILdRf vDato
  loc_A004CF: FStStrCopy var_88
  loc_A004D2: ILdRf var_88
  loc_A004D5: CVarStr var_AC
  loc_A004D8: PopAdLdVar
  loc_A004D9: LitVarStr var_9C, "FosePage"
  loc_A004DE: PopAdLdVar
  loc_A004DF: FLdRfVar var_8C
  loc_A004E2: FLdPr Me
  loc_A004E5: from_stack_1v = clsparagene.global_4397736Get()
  loc_A004EA: FLdPr var_8C
  loc_A004ED: Me.Collect = from_stack_1
  loc_A004F2: FFree1Ad var_8C
  loc_A004F5: ExitProcHresult
End Sub

Public Property Get DicaPage() 'A58140
  'Data Table: 431B20
  loc_A580F0: ZeroRetVal
  loc_A580F2: FLdRfVar var_B4
  loc_A580F5: FLdRfVar var_A4
  loc_A580F8: LitVarStr var_A0, "DicaPage"
  loc_A580FD: PopAdLdVar
  loc_A580FE: FLdRfVar var_90
  loc_A58101: FLdRfVar var_8C
  loc_A58104: FLdPr Me
  loc_A58107: from_stack_1v = clsparagene.global_4397736Get()
  loc_A5810C: FLdPr var_8C
  loc_A5810F:  = Me.Fields
  loc_A58114: FLdPr var_90
  loc_A58117: from_stack_2 = Me.Item(from_stack_1)
  loc_A5811C: FLdPr var_A4
  loc_A5811F:  = Me.Value
  loc_A58124: FLdRfVar var_B4
  loc_A58127: CStrVarTmp
  loc_A58128: FStStr var_88
  loc_A5812B: FFreeAd var_8C = "": var_90 = ""
  loc_A58134: FFree1Var var_B4 = ""
  loc_A58137: ExitProcCbHresult
  loc_A5813D: FnStrComp3Var
End Sub

Public Property Get DiprPage() 'A58018
  'Data Table: 431B20
  loc_A57FC8: ZeroRetVal
  loc_A57FCA: FLdRfVar var_B4
  loc_A57FCD: FLdRfVar var_A4
  loc_A57FD0: LitVarStr var_A0, "DiprPage"
  loc_A57FD5: PopAdLdVar
  loc_A57FD6: FLdRfVar var_90
  loc_A57FD9: FLdRfVar var_8C
  loc_A57FDC: FLdPr Me
  loc_A57FDF: from_stack_1v = clsparagene.global_4397736Get()
  loc_A57FE4: FLdPr var_8C
  loc_A57FE7:  = Me.Fields
  loc_A57FEC: FLdPr var_90
  loc_A57FEF: from_stack_2 = Me.Item(from_stack_1)
  loc_A57FF4: FLdPr var_A4
  loc_A57FF7:  = Me.Value
  loc_A57FFC: FLdRfVar var_B4
  loc_A57FFF: CStrVarTmp
  loc_A58000: FStStr var_88
  loc_A58003: FFreeAd var_8C = "": var_90 = ""
  loc_A5800C: FFree1Var var_B4 = ""
  loc_A5800F: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiPage) 'A52570
  'Data Table: 431B20
  loc_A52520: ZeroRetVal
  loc_A52522: LitStr "SELECT CodiPage FROM paragene WHERE CodiPage = "
  loc_A52525: FLdUI1
  loc_A52529: CStrI2
  loc_A5252B: FStStrNoPop var_8C
  loc_A5252E: ConcatStr
  loc_A5252F: FStStrNoPop var_90
  loc_A52532: Call EjecutarRs2(from_stack_1v)
  loc_A52537: FFreeStr var_8C = ""
  loc_A5253E: FLdRfVar var_98
  loc_A52541: FLdRfVar ValidaClave
  loc_A52544: FLdPr Me
  loc_A52547: from_stack_1v = clsparagene.global_4397736Get()
  loc_A5254C: FLdPr ValidaClave
  loc_A5254F:  = Me.RecordCount
  loc_A52554: ILdRf var_98
  loc_A52557: LitI4 0
  loc_A5255C: GtI4
  loc_A5255D: FFree1Ad ValidaClave
  loc_A52560: BranchF loc_A52569
  loc_A52563: LitStr "EL CODIGO del PARAMETRO GENERAL YA EXISTE, verifique..."
  loc_A52566: FStStrCopy var_88
  loc_A52569: ExitProcCbHresult
End Function

Public Function ObtenerLeyendaBoletos() 'A81218
  'Data Table: 431B20
  loc_A81194: ZeroRetVal
  loc_A81196: LitStr "SELECT LepaPage FROM paragene WHERE CodiPage = (SELECT max(CodiPage) AS CodiPage FROM paragene)"
  loc_A81199: Call EjecutarRs2(from_stack_1v)
  loc_A8119E: FLdRfVar var_90
  loc_A811A1: FLdRfVar var_8C
  loc_A811A4: FLdPr Me
  loc_A811A7: from_stack_1v = clsparagene.global_4397736Get()
  loc_A811AC: FLdPr var_8C
  loc_A811AF:  = Me.RecordCount
  loc_A811B4: ILdRf var_90
  loc_A811B7: LitI4 0
  loc_A811BC: EqI4
  loc_A811BD: FFree1Ad var_8C
  loc_A811C0: BranchF loc_A811CC
  loc_A811C3: LitStr vbNullString
  loc_A811C6: FStStrCopy var_88
  loc_A811C9: Branch loc_A81211
  loc_A811CC: FLdRfVar var_B8
  loc_A811CF: FLdRfVar var_A8
  loc_A811D2: LitVarStr var_A4, "LepaPage"
  loc_A811D7: PopAdLdVar
  loc_A811D8: FLdRfVar ObtenerLeyendaBoletos
  loc_A811DB: FLdRfVar var_8C
  loc_A811DE: FLdPr Me
  loc_A811E1: from_stack_1v = clsparagene.global_4397736Get()
  loc_A811E6: FLdPr var_8C
  loc_A811E9:  = Me.Fields
  loc_A811EE: FLdPr ObtenerLeyendaBoletos
  loc_A811F1: from_stack_2 = Me.Item(from_stack_1)
  loc_A811F6: FLdPr var_A8
  loc_A811F9:  = Me.Value
  loc_A811FE: FLdRfVar var_B8
  loc_A81201: CStrVarTmp
  loc_A81202: FStStr var_88
  loc_A81205: FFreeAd var_8C = "": ObtenerLeyendaBoletos = ""
  loc_A8120E: FFree1Var var_B8 = ""
  loc_A81211: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E7564
  'Data Table: 431B20
  loc_9E7548: ILdRf pError
  loc_9E754B: FStAd var_88 
  loc_9E754F: ILdRf pRecordset
  loc_9E7552: FStAd var_8C 
  loc_9E7556: FLdPr Me
  loc_9E7559: RaiseEvent
  loc_9E7561: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9C300
  'Data Table: 431B20
  loc_A9C240: ILdRf pRecordset
  loc_A9C243: FStAd var_88 
  loc_A9C247: ILdRf adReason
  loc_A9C24A: FStR4 var_90
  loc_A9C24D: ILdRf var_90
  loc_A9C250: LitI4 1
  loc_A9C255: EqI4
  loc_A9C256: BranchF loc_A9C25C
  loc_A9C259: Branch loc_A9C2EF
  loc_A9C25C: ILdRf var_90
  loc_A9C25F: LitI4 9
  loc_A9C264: EqI4
  loc_A9C265: BranchF loc_A9C26B
  loc_A9C268: Branch loc_A9C2EF
  loc_A9C26B: ILdRf var_90
  loc_A9C26E: LitI4 2
  loc_A9C273: EqI4
  loc_A9C274: BranchF loc_A9C27A
  loc_A9C277: Branch loc_A9C2EF
  loc_A9C27A: ILdRf var_90
  loc_A9C27D: LitI4 &HB
  loc_A9C282: EqI4
  loc_A9C283: BranchF loc_A9C289
  loc_A9C286: Branch loc_A9C2EF
  loc_A9C289: ILdRf var_90
  loc_A9C28C: LitI4 &HA
  loc_A9C291: EqI4
  loc_A9C292: BranchF loc_A9C298
  loc_A9C295: Branch loc_A9C2EF
  loc_A9C298: ILdRf var_90
  loc_A9C29B: LitI4 7
  loc_A9C2A0: EqI4
  loc_A9C2A1: BranchF loc_A9C2A7
  loc_A9C2A4: Branch loc_A9C2EF
  loc_A9C2A7: ILdRf var_90
  loc_A9C2AA: LitI4 8
  loc_A9C2AF: EqI4
  loc_A9C2B0: BranchF loc_A9C2B6
  loc_A9C2B3: Branch loc_A9C2EF
  loc_A9C2B6: ILdRf var_90
  loc_A9C2B9: LitI4 5
  loc_A9C2BE: EqI4
  loc_A9C2BF: BranchF loc_A9C2C5
  loc_A9C2C2: Branch loc_A9C2EF
  loc_A9C2C5: ILdRf var_90
  loc_A9C2C8: LitI4 6
  loc_A9C2CD: EqI4
  loc_A9C2CE: BranchF loc_A9C2D4
  loc_A9C2D1: Branch loc_A9C2EF
  loc_A9C2D4: ILdRf var_90
  loc_A9C2D7: LitI4 4
  loc_A9C2DC: EqI4
  loc_A9C2DD: BranchF loc_A9C2E3
  loc_A9C2E0: Branch loc_A9C2EF
  loc_A9C2E3: ILdRf var_90
  loc_A9C2E6: LitI4 3
  loc_A9C2EB: EqI4
  loc_A9C2EC: BranchF loc_A9C2EF
  loc_A9C2EF: FLdI2 var_8A
  loc_A9C2F2: BranchF loc_A9C2FD
  loc_A9C2F5: LitI4 4
  loc_A9C2FA: IStI4 adStatus
  loc_A9C2FD: ExitProcHresult
End Sub

Private Function Proc_27_36_9F83C4() '9F83C4
  'Data Table: 431B20
  loc_9F83A0: LitStr "Primary"
  loc_9F83A3: FLdPr Me
  loc_9F83A6: LateIdLdVar var_94 DispID_4 0
  loc_9F83AD: CastAdVar Me
  loc_9F83B1: FStAdFunc var_98
  loc_9F83B4: FLdPr var_98
  loc_9F83BC: FFree1Ad var_98
  loc_9F83BF: FFree1Var var_94 = ""
  loc_9F83C2: ExitProcHresult
End Function

Private Function Proc_27_37_9F8420(arg_C) '9F8420
  'Data Table: 431B20
  loc_9F83FC: ILdI4 arg_C
  loc_9F83FF: FStStrCopy var_88
  loc_9F8402: ILdRf var_88
  loc_9F8405: LitStr "Primary"
  loc_9F8408: EqStr
  loc_9F840A: BranchF loc_9F841F
  loc_9F840D: FLdRfVar var_8C
  loc_9F8410: FLdPr Me
  loc_9F8413: from_stack_1v = clsparagene.global_4397736Get()
  loc_9F8418: FLdZeroAd var_8C
  loc_9F841B: IStAdFunc
  loc_9F841F: ExitProcHresult
End Function

Public Function global_4397736Get() '431F30
  global_4397736Get = global_4397736
End Function

Public Sub global_4397736Put(Value) '431F4A
  global_4397736 = Value
End Sub

Public Sub global_4397736Set(Value) '431F64
  global_4397736 = Value
End Sub

Public Function global_4397736Get() '431F7E
  global_4397736Get = global_4397736
End Function

Public Sub global_4397736Put(Value) '431F98
  global_4397736 = Value
End Sub

Public Sub global_4397736Set(Value) '431FB2
  global_4397736 = Value
End Sub

Public Function global_4397736Get() '431FCC
  global_4397736Get = global_4397736
End Function

Public Sub global_4397736Put(Value) '431FE6
  global_4397736 = Value
End Sub

Public Sub global_4397736Set(Value) '432000
  global_4397736 = Value
End Sub
