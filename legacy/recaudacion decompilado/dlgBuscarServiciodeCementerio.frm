VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarServiciodeCementerio
  Caption = "Buscar Servicio de Cementerio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarServiciodeCementerio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10008
  ClientHeight = 5832
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 840
    Width = 6855
    Height = 360
    TabIndex = 1
    Tag = "0"
    MaxLength = 40
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 240
    Width = 735
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 120
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 3
    Tag = "2"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1440
    Width = 9735
    Height = 3495
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarServiciodeCementerio.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 1560
    Top = 840
    Width = 810
    Height = 300
    TabIndex = 5
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Codigo:"
    Left = 1560
    Top = 240
    Width = 810
    Height = 300
    TabIndex = 4
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "dlgBuscarServiciodeCementerio"

Public byCodiCeme As Byte
Public iCodiTise As Integer
Public sSeccDifu As String
Public byPlanDifu As Byte
Public byFilaDifu As Byte
Public byParvDifu As Byte
Public sEmisSece As String
Public ServcemeCLS As New Class


Private Sub dgdABMS_DblClick() '9D03C4
  'Data Table: 42A814
  loc_9D03AC: ILdRf Me
  loc_9D03AF: FStAdNoPop
  loc_9D03B3: ImpAdLdRf MemVar_D9C5D8
  loc_9D03B6: NewIfNullPr Global
  loc_9D03B9: Global.Unload from_stack_1
  loc_9D03BE: FFree1Ad var_88
  loc_9D03C1: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9ED358
  'Data Table: 42A814
  loc_9ED334: ILdI2 KeyCode
  loc_9ED337: CI4UI1
  loc_9ED338: LitI4 &HD
  loc_9ED33D: EqI4
  loc_9ED33E: BranchF loc_9ED356
  loc_9ED341: ILdRf Me
  loc_9ED344: FStAdNoPop
  loc_9ED348: ImpAdLdRf MemVar_D9C5D8
  loc_9ED34B: NewIfNullPr Global
  loc_9ED34E: Global.Unload from_stack_1
  loc_9ED353: FFree1Ad var_88
  loc_9ED356: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'AD7C98
  'Data Table: 42A814
  loc_AD7B90: LitStr vbNullString
  loc_AD7B93: FLdPr Me
  loc_AD7B96: VCallAd Control_ID_Campo2Txt
  loc_AD7B99: FStAdFunc var_88
  loc_AD7B9C: FLdPr var_88
  loc_AD7B9F: Me.Text = from_stack_1
  loc_AD7BA4: FFree1Ad var_88
  loc_AD7BA7: FLdRfVar var_8C
  loc_AD7BAA: FLdPr Me
  loc_AD7BAD: VCallAd Control_ID_Campo1Txt
  loc_AD7BB0: FStAdFunc var_88
  loc_AD7BB3: FLdPr var_88
  loc_AD7BB6:  = Me.Text
  loc_AD7BBB: ILdRf var_8C
  loc_AD7BBE: LitStr vbNullString
  loc_AD7BC1: NeStr
  loc_AD7BC3: FFree1Str var_8C
  loc_AD7BC6: FFree1Ad var_88
  loc_AD7BC9: BranchF loc_AD7C96
  loc_AD7BCC: LitStr "SELECT servceme.PeriOrde,CodiSece,DetaSece,CodiCeme,CodiTise,SeccDifu,PlanDifu,FilaDifu,servceme.PeriInfo,servceme.CodiConc,EmisSece,FrecSece,PeriSece,AcumSece,servceme.ImpoSece * UntrPage as ImpoSece,concepto.TiafConc,servceme.AnioSece FROM servceme "
  loc_AD7BCF: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servceme.PeriInfo"
  loc_AD7BD2: ConcatStr
  loc_AD7BD3: FStStrNoPop var_8C
  loc_AD7BD6: LitStr " AND concepto.CodiConc = servceme.CodiConc"
  loc_AD7BD9: ConcatStr
  loc_AD7BDA: FStStrNoPop var_90
  loc_AD7BDD: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_AD7BE0: ConcatStr
  loc_AD7BE1: FStStrNoPop var_94
  loc_AD7BE4: LitStr " WHERE servceme.PeriOrde = "
  loc_AD7BE7: ConcatStr
  loc_AD7BE8: FStStrNoPop var_98
  loc_AD7BEB: ImpAdLdI2 MemVar_D93036
  loc_AD7BEE: CStrUI1
  loc_AD7BF0: FStStrNoPop var_9C
  loc_AD7BF3: ConcatStr
  loc_AD7BF4: FStStrNoPop var_A0
  loc_AD7BF7: FLdPr Me
  loc_AD7BFA: MemLdStr global_72
  loc_AD7BFD: ConcatStr
  loc_AD7BFE: FStStrNoPop var_A4
  loc_AD7C01: FLdPr Me
  loc_AD7C04: MemLdStr global_76
  loc_AD7C07: ConcatStr
  loc_AD7C08: FStStrNoPop var_A8
  loc_AD7C0B: FLdPr Me
  loc_AD7C0E: MemLdStr global_84
  loc_AD7C11: ConcatStr
  loc_AD7C12: FStStrNoPop var_AC
  loc_AD7C15: FLdPr Me
  loc_AD7C18: MemLdStr global_80
  loc_AD7C1B: ConcatStr
  loc_AD7C1C: FStStrNoPop var_B0
  loc_AD7C1F: LitStr " AND EmisSece = '"
  loc_AD7C22: ConcatStr
  loc_AD7C23: FStStrNoPop var_B4
  loc_AD7C26: FLdPr Me
  loc_AD7C29: MemLdStr sEmisSece
  loc_AD7C2C: ConcatStr
  loc_AD7C2D: FStStrNoPop var_B8
  loc_AD7C30: LitStr "'"
  loc_AD7C33: ConcatStr
  loc_AD7C34: FStStrNoPop var_BC
  loc_AD7C37: LitStr " AND CodiSece >= "
  loc_AD7C3A: ConcatStr
  loc_AD7C3B: FStStrNoPop var_C4
  loc_AD7C3E: FLdRfVar var_C0
  loc_AD7C41: FLdPr Me
  loc_AD7C44: VCallAd Control_ID_Campo1Txt
  loc_AD7C47: FStAdFunc var_88
  loc_AD7C4A: FLdPr var_88
  loc_AD7C4D:  = Me.Text
  loc_AD7C52: ILdRf var_C0
  loc_AD7C55: ConcatStr
  loc_AD7C56: FStStrNoPop var_C8
  loc_AD7C59: LitStr " ORDER BY CodiSece"
  loc_AD7C5C: ConcatStr
  loc_AD7C5D: FStStrNoPop var_CC
  loc_AD7C60: FLdPr Me
  loc_AD7C63: MemLdRfVar from_stack_1.ServcemeCLS
  loc_AD7C66: NewIfNullPr clsservceme
  loc_AD7C69: Call clsservceme.RedefineRS(from_stack_1v)
  loc_AD7C6E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = ""
  loc_AD7C93: FFree1Ad var_88
  loc_AD7C96: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D045C
  'Data Table: 42A814
  loc_9D0444: LitStr "0123456789"
  loc_9D0447: FStStrCopy var_88
  loc_9D044A: FLdRfVar var_88
  loc_9D044D: ILdRf KeyAscii
  loc_9D0450: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D0455: IStI2 KeyAscii
  loc_9D0458: FFree1Str var_88
  loc_9D045B: ExitProcHresult
End Sub

Private Sub Form_Load() 'B1FF00
  'Data Table: 42A814
  loc_B1FCA4: LitVarStr var_EC, " AND (CodiCeme = 0 OR "
  loc_B1FCA9: LitStr " CodiCeme = "
  loc_B1FCAC: FLdPr Me
  loc_B1FCAF: MemLdUI1 byCodiCeme
  loc_B1FCB3: CStrI2
  loc_B1FCB5: FStStrNoPop var_88
  loc_B1FCB8: ConcatStr
  loc_B1FCB9: FStStrNoPop var_8C
  loc_B1FCBC: LitStr ")"
  loc_B1FCBF: ConcatStr
  loc_B1FCC0: CVarStr var_CC
  loc_B1FCC3: LitVarStr var_AC, " CodiCeme >= 0)"
  loc_B1FCC8: FStVarCopyObj var_BC
  loc_B1FCCB: FLdRfVar var_BC
  loc_B1FCCE: FLdPr Me
  loc_B1FCD1: MemLdUI1 byCodiCeme
  loc_B1FCD5: CI2UI1
  loc_B1FCD7: LitI2_Byte 0
  loc_B1FCD9: EqI2
  loc_B1FCDA: CVarBoolI2 var_9C
  loc_B1FCDE: FLdRfVar var_DC
  loc_B1FCE1: ImpAdCallFPR4  = IIf(, , )
  loc_B1FCE6: FLdRfVar var_DC
  loc_B1FCE9: ConcatVar var_FC
  loc_B1FCED: CStrVarTmp
  loc_B1FCEE: FStStrNoPop var_100
  loc_B1FCF1: FLdPr Me
  loc_B1FCF4: MemStStrCopy
  loc_B1FCF8: FFreeStr var_88 = "": var_8C = ""
  loc_B1FD01: FFreeVar var_9C = "": var_BC = "": var_CC = "": var_DC = ""
  loc_B1FD0E: LitVarStr var_EC, " AND (CodiTise = 0 OR "
  loc_B1FD13: LitStr " CodiTise = "
  loc_B1FD16: FLdPr Me
  loc_B1FD19: MemLdI2 iCodiTise
  loc_B1FD1C: CStrUI1
  loc_B1FD1E: FStStrNoPop var_88
  loc_B1FD21: ConcatStr
  loc_B1FD22: FStStrNoPop var_8C
  loc_B1FD25: LitStr ")"
  loc_B1FD28: ConcatStr
  loc_B1FD29: CVarStr var_CC
  loc_B1FD2C: LitVarStr var_AC, " CodiTise >= 0)"
  loc_B1FD31: FStVarCopyObj var_BC
  loc_B1FD34: FLdRfVar var_BC
  loc_B1FD37: FLdPr Me
  loc_B1FD3A: MemLdI2 iCodiTise
  loc_B1FD3D: LitI2_Byte 0
  loc_B1FD3F: EqI2
  loc_B1FD40: CVarBoolI2 var_9C
  loc_B1FD44: FLdRfVar var_DC
  loc_B1FD47: ImpAdCallFPR4  = IIf(, , )
  loc_B1FD4C: FLdRfVar var_DC
  loc_B1FD4F: ConcatVar var_FC
  loc_B1FD53: CStrVarTmp
  loc_B1FD54: FStStrNoPop var_100
  loc_B1FD57: FLdPr Me
  loc_B1FD5A: MemStStrCopy
  loc_B1FD5E: FFreeStr var_88 = "": var_8C = ""
  loc_B1FD67: FFreeVar var_9C = "": var_BC = "": var_CC = "": var_DC = ""
  loc_B1FD74: LitVarStr var_EC, " AND (FilaDifu = 0 OR "
  loc_B1FD79: LitStr " FilaDifu = "
  loc_B1FD7C: FLdPr Me
  loc_B1FD7F: MemLdUI1 byFilaDifu
  loc_B1FD83: CStrI2
  loc_B1FD85: FStStrNoPop var_88
  loc_B1FD88: ConcatStr
  loc_B1FD89: FStStrNoPop var_8C
  loc_B1FD8C: LitStr ")"
  loc_B1FD8F: ConcatStr
  loc_B1FD90: CVarStr var_CC
  loc_B1FD93: LitVarStr var_AC, " FilaDifu >= 0)"
  loc_B1FD98: FStVarCopyObj var_BC
  loc_B1FD9B: FLdRfVar var_BC
  loc_B1FD9E: FLdPr Me
  loc_B1FDA1: MemLdUI1 byFilaDifu
  loc_B1FDA5: CI2UI1
  loc_B1FDA7: LitI2_Byte 0
  loc_B1FDA9: EqI2
  loc_B1FDAA: CVarBoolI2 var_9C
  loc_B1FDAE: FLdRfVar var_DC
  loc_B1FDB1: ImpAdCallFPR4  = IIf(, , )
  loc_B1FDB6: FLdRfVar var_DC
  loc_B1FDB9: ConcatVar var_FC
  loc_B1FDBD: CStrVarTmp
  loc_B1FDBE: FStStrNoPop var_100
  loc_B1FDC1: FLdPr Me
  loc_B1FDC4: MemStStrCopy
  loc_B1FDC8: FFreeStr var_88 = "": var_8C = ""
  loc_B1FDD1: FFreeVar var_9C = "": var_BC = "": var_CC = "": var_DC = ""
  loc_B1FDDE: LitStr " AND ParvSece = "
  loc_B1FDE1: FLdPr Me
  loc_B1FDE4: MemLdUI1 byParvDifu
  loc_B1FDE8: CStrI2
  loc_B1FDEA: FStStrNoPop var_88
  loc_B1FDED: ConcatStr
  loc_B1FDEE: FStStrNoPop var_8C
  loc_B1FDF1: FLdPr Me
  loc_B1FDF4: MemStStrCopy
  loc_B1FDF8: FFreeStr var_88 = ""
  loc_B1FDFF: LitStr "SELECT servceme.PeriOrde,CodiSece,DetaSece,CodiCeme,CodiTise,SeccDifu,PlanDifu,FilaDifu,servceme.PeriInfo,servceme.CodiConc,EmisSece,FrecSece,PeriSece,AcumSece, servceme.ImpoSece * UntrPage as ImpoSece , concepto.TiafConc, servceme.AnioSece FROM servceme "
  loc_B1FE02: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servceme.PeriInfo"
  loc_B1FE05: ConcatStr
  loc_B1FE06: FStStrNoPop var_88
  loc_B1FE09: LitStr " AND concepto.CodiConc = servceme.CodiConc"
  loc_B1FE0C: ConcatStr
  loc_B1FE0D: FStStrNoPop var_8C
  loc_B1FE10: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_B1FE13: ConcatStr
  loc_B1FE14: FStStrNoPop var_100
  loc_B1FE17: LitStr " WHERE servceme.PeriOrde = "
  loc_B1FE1A: ConcatStr
  loc_B1FE1B: FStStrNoPop var_104
  loc_B1FE1E: ImpAdLdI2 MemVar_D93036
  loc_B1FE21: CStrUI1
  loc_B1FE23: FStStrNoPop var_108
  loc_B1FE26: ConcatStr
  loc_B1FE27: FStStrNoPop var_10C
  loc_B1FE2A: FLdPr Me
  loc_B1FE2D: MemLdStr global_72
  loc_B1FE30: ConcatStr
  loc_B1FE31: FStStrNoPop var_110
  loc_B1FE34: FLdPr Me
  loc_B1FE37: MemLdStr global_76
  loc_B1FE3A: ConcatStr
  loc_B1FE3B: FStStrNoPop var_114
  loc_B1FE3E: FLdPr Me
  loc_B1FE41: MemLdStr global_84
  loc_B1FE44: ConcatStr
  loc_B1FE45: FStStrNoPop var_118
  loc_B1FE48: FLdPr Me
  loc_B1FE4B: MemLdStr global_80
  loc_B1FE4E: ConcatStr
  loc_B1FE4F: FStStrNoPop var_11C
  loc_B1FE52: LitStr " AND EmisSece = '"
  loc_B1FE55: ConcatStr
  loc_B1FE56: FStStrNoPop var_120
  loc_B1FE59: FLdPr Me
  loc_B1FE5C: MemLdStr sEmisSece
  loc_B1FE5F: ConcatStr
  loc_B1FE60: FStStrNoPop var_124
  loc_B1FE63: LitStr "'"
  loc_B1FE66: ConcatStr
  loc_B1FE67: FStStrNoPop var_128
  loc_B1FE6A: LitStr " ORDER BY DetaSece"
  loc_B1FE6D: ConcatStr
  loc_B1FE6E: FStStrNoPop var_12C
  loc_B1FE71: FLdPr Me
  loc_B1FE74: MemLdRfVar from_stack_1.ServcemeCLS
  loc_B1FE77: NewIfNullPr clsservceme
  loc_B1FE7A: Call clsservceme.RedefineRS(from_stack_1v)
  loc_B1FE7F: FFreeStr var_88 = "": var_8C = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_B1FE9E: LitI4 0
  loc_B1FEA3: LitI4 1
  loc_B1FEA8: FLdRfVar var_130
  loc_B1FEAB: Redim
  loc_B1FEB5: FLdPr Me
  loc_B1FEB8: MemLdRfVar from_stack_1.ServcemeCLS
  loc_B1FEBB: NewIfNullAd
  loc_B1FEBE: FStAd var_134 
  loc_B1FEC2: FLdRfVar var_134
  loc_B1FEC5: CVarRef
  loc_B1FECA: ParmAry1St
  loc_B1FED0: FLdPr Me
  loc_B1FED3: VCallAd Control_ID_dgdABMS
  loc_B1FED6: CVarAd
  loc_B1FEDA: ParmAry1St
  loc_B1FEE0: FLdRfVar var_130
  loc_B1FEE3: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B1FEE8: ILdRf var_134
  loc_B1FEEB: CastAd
  loc_B1FEEE: FLdPr Me
  loc_B1FEF1: MemStAdFunc
  loc_B1FEF5: FLdRfVar var_130
  loc_B1FEF8: Erase
  loc_B1FEF9: FFree1Ad var_134
  loc_B1FEFC: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B52B4
  'Data Table: 42A814
  loc_9B52A8: LitVarStr var_A4, vbNullString
  loc_9B52AD: FStVarCopy
  loc_9B52B1: ExitProcHresult
End Sub

Private Sub Form_Activate() '9CFEB8
  'Data Table: 42A814
  loc_9CFEA0: FLdPr Me
  loc_9CFEA3: VCallAd Control_ID_Campo2Txt
  loc_9CFEA6: FStAdFunc var_88
  loc_9CFEA9: FLdPr var_88
  loc_9CFEAC: Me.SetFocus
  loc_9CFEB1: FFree1Ad var_88
  loc_9CFEB4: ExitProcHresult
  loc_9CFEB5: DOC
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11DA0
  'Data Table: 42A814
  loc_A11D64: ILdI2 KeyAscii
  loc_A11D67: LitI2_Byte &HD
  loc_A11D69: EqI2
  loc_A11D6A: BranchF loc_A11D7B
  loc_A11D6D: LitVar_TRUE var_A4
  loc_A11D70: LitStr "{Tab}"
  loc_A11D73: ImpAdCallFPR4 SendKeys , 
  loc_A11D78: FFree1Var var_A4 = ""
  loc_A11D7B: ILdI2 KeyAscii
  loc_A11D7E: LitI2_Byte &H1B
  loc_A11D80: EqI2
  loc_A11D81: BranchF loc_A11D9E
  loc_A11D84: ILdRf Me
  loc_A11D87: FStAdNoPop
  loc_A11D8B: ImpAdLdRf MemVar_D9C5D8
  loc_A11D8E: NewIfNullPr Global
  loc_A11D91: Global.Unload from_stack_1
  loc_A11D96: FFree1Ad var_A8
  loc_A11D99: LitI2_Byte 0
  loc_A11D9B: IStI2 KeyAscii
  loc_A11D9E: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9CFA90
  'Data Table: 42A814
  loc_9CFA78: ILdRf Me
  loc_9CFA7B: FStAdNoPop
  loc_9CFA7F: ImpAdLdRf MemVar_D9C5D8
  loc_9CFA82: NewIfNullPr Global
  loc_9CFA85: Global.Unload from_stack_1
  loc_9CFA8A: FFree1Ad var_88
  loc_9CFA8D: ExitProcHresult
  loc_9CFA8E: LtI2
End Sub

Private Sub Campo2Txt_Change() 'AC7934
  'Data Table: 42A814
  loc_AC7860: LitStr "SELECT servceme.PeriOrde,CodiSece,DetaSece,CodiCeme,CodiTise,SeccDifu,PlanDifu,FilaDifu,servceme.PeriInfo,servceme.CodiConc,EmisSece,FrecSece,PeriSece,AcumSece, servceme.ImpoSece * UntrPage as ImpoSece, concepto.TiafConc, servceme.AnioSece FROM servceme "
  loc_AC7863: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servceme.PeriInfo"
  loc_AC7866: ConcatStr
  loc_AC7867: FStStrNoPop var_88
  loc_AC786A: LitStr " AND concepto.CodiConc = servceme.CodiConc"
  loc_AC786D: ConcatStr
  loc_AC786E: FStStrNoPop var_8C
  loc_AC7871: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_AC7874: ConcatStr
  loc_AC7875: FStStrNoPop var_90
  loc_AC7878: LitStr " WHERE servceme.PeriOrde = "
  loc_AC787B: ConcatStr
  loc_AC787C: FStStrNoPop var_94
  loc_AC787F: ImpAdLdI2 MemVar_D93036
  loc_AC7882: CStrUI1
  loc_AC7884: FStStrNoPop var_98
  loc_AC7887: ConcatStr
  loc_AC7888: FStStrNoPop var_9C
  loc_AC788B: FLdPr Me
  loc_AC788E: MemLdStr global_72
  loc_AC7891: ConcatStr
  loc_AC7892: FStStrNoPop var_A0
  loc_AC7895: FLdPr Me
  loc_AC7898: MemLdStr global_76
  loc_AC789B: ConcatStr
  loc_AC789C: FStStrNoPop var_A4
  loc_AC789F: FLdPr Me
  loc_AC78A2: MemLdStr global_84
  loc_AC78A5: ConcatStr
  loc_AC78A6: FStStrNoPop var_A8
  loc_AC78A9: FLdPr Me
  loc_AC78AC: MemLdStr global_80
  loc_AC78AF: ConcatStr
  loc_AC78B0: FStStrNoPop var_AC
  loc_AC78B3: LitStr " AND EmisSece = '"
  loc_AC78B6: ConcatStr
  loc_AC78B7: FStStrNoPop var_B0
  loc_AC78BA: FLdPr Me
  loc_AC78BD: MemLdStr sEmisSece
  loc_AC78C0: ConcatStr
  loc_AC78C1: FStStrNoPop var_B4
  loc_AC78C4: LitStr "'"
  loc_AC78C7: ConcatStr
  loc_AC78C8: FStStrNoPop var_B8
  loc_AC78CB: LitStr " AND DetaSece like '"
  loc_AC78CE: ConcatStr
  loc_AC78CF: FStStrNoPop var_C4
  loc_AC78D2: FLdRfVar var_C0
  loc_AC78D5: FLdPr Me
  loc_AC78D8: VCallAd Control_ID_Campo2Txt
  loc_AC78DB: FStAdFunc var_BC
  loc_AC78DE: FLdPr var_BC
  loc_AC78E1:  = Me.Text
  loc_AC78E6: ILdRf var_C0
  loc_AC78E9: ConcatStr
  loc_AC78EA: FStStrNoPop var_C8
  loc_AC78ED: LitStr Chr(37) & "'"
  loc_AC78F0: ConcatStr
  loc_AC78F1: FStStrNoPop var_CC
  loc_AC78F4: LitStr " ORDER BY DetaSece"
  loc_AC78F7: ConcatStr
  loc_AC78F8: FStStrNoPop var_D0
  loc_AC78FB: FLdPr Me
  loc_AC78FE: MemLdRfVar from_stack_1.ServcemeCLS
  loc_AC7901: NewIfNullPr clsservceme
  loc_AC7904: Call clsservceme.RedefineRS(from_stack_1v)
  loc_AC7909: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_C4 = "": var_C0 = "": var_C8 = "": var_CC = ""
  loc_AC7930: FFree1Ad var_BC
  loc_AC7933: ExitProcHresult
End Sub

Public Function byCodiCemeGet() '42ADB8
  byCodiCemeGet = byCodiCeme
End Function

Public Sub byCodiCemePut(Value) '42ADC7
  byCodiCeme = Value
End Sub

Public Function iCodiTiseGet() '42ADD6
  iCodiTiseGet = iCodiTise
End Function

Public Sub iCodiTisePut(Value) '42ADE5
  iCodiTise = Value
End Sub

Public Function sSeccDifuGet() '42ADF4
  sSeccDifuGet = sSeccDifu
End Function

Public Sub sSeccDifuPut(Value) '42AE03
  sSeccDifu = Value
End Sub

Public Function byPlanDifuGet() '42AE12
  byPlanDifuGet = byPlanDifu
End Function

Public Sub byPlanDifuPut(Value) '42AE21
  byPlanDifu = Value
End Sub

Public Function byFilaDifuGet() '42AE30
  byFilaDifuGet = byFilaDifu
End Function

Public Sub byFilaDifuPut(Value) '42AE3F
  byFilaDifu = Value
End Sub

Public Function byParvDifuGet() '42AE4E
  byParvDifuGet = byParvDifu
End Function

Public Sub byParvDifuPut(Value) '42AE5D
  byParvDifu = Value
End Sub

Public Function sEmisSeceGet() '42AE6C
  sEmisSeceGet = sEmisSece
End Function

Public Sub sEmisSecePut(Value) '42AE7B
  sEmisSece = Value
End Sub

Public Function global_4368404Get() '42AE8A
  global_4368404Get = global_4368404
End Function

Public Sub global_4368404Put(Value) '42AEA4
  global_4368404 = Value
End Sub

Public Sub global_4368404Set(Value) '42AEBE
  global_4368404 = Value
End Sub
