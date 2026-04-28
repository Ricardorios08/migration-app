VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarConceptoDsVcSinCreacion
  Caption = "Buscar Concepto de Deudores Varios Sin Creacion de Ceuntas por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarConceptoDsVcSinCreacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10008
  ClientHeight = 5484
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 720
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
    Width = 1095
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 8
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
    Top = 4800
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
    Top = 1200
    Width = 9255
    Height = 3495
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarConceptoDsVcSinCreacion.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 1560
    Top = 720
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

Attribute VB_Name = "dlgBuscarConceptoDsVcSinCreacion"

Public ConceptoCLS As New Class


Private Sub dgdABMS_DblClick() '9DA4AC
  'Data Table: 4139D8
  loc_9DA494: ILdRf Me
  loc_9DA497: FStAdNoPop
  loc_9DA49B: ImpAdLdRf MemVar_D9C5D8
  loc_9DA49E: NewIfNullPr Global
  loc_9DA4A1: Global.Unload from_stack_1
  loc_9DA4A6: FFree1Ad var_88
  loc_9DA4A9: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9ED098
  'Data Table: 4139D8
  loc_9ED074: ILdI2 KeyCode
  loc_9ED077: CI4UI1
  loc_9ED078: LitI4 &HD
  loc_9ED07D: EqI4
  loc_9ED07E: BranchF loc_9ED096
  loc_9ED081: ILdRf Me
  loc_9ED084: FStAdNoPop
  loc_9ED088: ImpAdLdRf MemVar_D9C5D8
  loc_9ED08B: NewIfNullPr Global
  loc_9ED08E: Global.Unload from_stack_1
  loc_9ED093: FFree1Ad var_88
  loc_9ED096: ExitProcHresult
  loc_9ED097: CCyI2
End Sub

Private Sub Campo1Txt_Change() 'AA61C8
  'Data Table: 4139D8
  loc_AA6124: LitStr vbNullString
  loc_AA6127: FLdPr Me
  loc_AA612A: VCallAd Control_ID_Campo2Txt
  loc_AA612D: FStAdFunc var_88
  loc_AA6130: FLdPr var_88
  loc_AA6133: Me.Text = from_stack_1
  loc_AA6138: FFree1Ad var_88
  loc_AA613B: LitStr "SELECT CodiConc, DetaConc FROM concepto "
  loc_AA613E: LitStr " WHERE PeriInfo = "
  loc_AA6141: ConcatStr
  loc_AA6142: CVarStr var_C8
  loc_AA6145: LitI2_Byte 0
  loc_AA6147: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA614C: CVarDate var_A8
  loc_AA6150: FLdRfVar var_B8
  loc_AA6153: ImpAdCallFPR4  = Year()
  loc_AA6158: FLdRfVar var_B8
  loc_AA615B: ConcatVar var_D8
  loc_AA615F: LitVarStr var_E8, " AND VigeConc = '1' AND DevsConc = 'Si' "
  loc_AA6164: ConcatVar var_F8
  loc_AA6168: LitVarStr var_108, " AND CodiConc like '"
  loc_AA616D: ConcatVar var_118
  loc_AA6171: FLdRfVar var_11C
  loc_AA6174: FLdPr Me
  loc_AA6177: VCallAd Control_ID_Campo1Txt
  loc_AA617A: FStAdFunc var_88
  loc_AA617D: FLdPr var_88
  loc_AA6180:  = Me.Text
  loc_AA6185: FLdZeroAd var_11C
  loc_AA6188: CVarStr var_12C
  loc_AA618B: ConcatVar var_13C
  loc_AA618F: LitVarStr var_14C, Chr(37) & "' ORDER BY PeriInfo, CodiConc"
  loc_AA6194: ConcatVar var_15C
  loc_AA6198: CStrVarVal var_160
  loc_AA619C: FLdPr Me
  loc_AA619F: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AA61A2: NewIfNullPr clsconcepto
  loc_AA61A5: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_AA61AA: FFree1Str var_160
  loc_AA61AD: FFree1Ad var_88
  loc_AA61B0: FFreeVar var_A8 = "": var_C8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_12C = "": var_13C = ""
  loc_AA61C5: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DA544
  'Data Table: 4139D8
  loc_9DA52C: LitStr "0123456789"
  loc_9DA52F: FStStrCopy var_88
  loc_9DA532: FLdRfVar var_88
  loc_9DA535: ILdRf KeyAscii
  loc_9DA538: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA53D: IStI2 KeyAscii
  loc_9DA540: FFree1Str var_88
  loc_9DA543: ExitProcHresult
End Sub

Private Sub Form_Load() 'AAAD14
  'Data Table: 4139D8
  loc_AAAC60: LitVarStr var_C4, "SELECT CodiConc, DetaConc FROM concepto WHERE PeriInfo = "
  loc_AAAC65: LitI2_Byte 0
  loc_AAAC67: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AAAC6C: CVarDate var_A4
  loc_AAAC70: FLdRfVar var_B4
  loc_AAAC73: ImpAdCallFPR4  = Year()
  loc_AAAC78: FLdRfVar var_B4
  loc_AAAC7B: ConcatVar var_D4
  loc_AAAC7F: LitVarStr var_E4, " AND VigeConc = '1' AND DevsConc = 'Si' "
  loc_AAAC84: ConcatVar var_F4
  loc_AAAC88: LitVarStr var_104, " ORDER BY DetaConc"
  loc_AAAC8D: ConcatVar var_114
  loc_AAAC91: CStrVarVal var_118
  loc_AAAC95: FLdPr Me
  loc_AAAC98: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AAAC9B: NewIfNullPr clsconcepto
  loc_AAAC9E: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_AAACA3: FFree1Str var_118
  loc_AAACA6: FFreeVar var_A4 = "": var_B4 = "": var_D4 = "": var_F4 = ""
  loc_AAACB3: LitI4 0
  loc_AAACB8: LitI4 1
  loc_AAACBD: FLdRfVar var_11C
  loc_AAACC0: Redim
  loc_AAACCA: FLdPr Me
  loc_AAACCD: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AAACD0: NewIfNullAd
  loc_AAACD3: FStAd var_120 
  loc_AAACD7: FLdRfVar var_120
  loc_AAACDA: CVarRef
  loc_AAACDF: ParmAry1St
  loc_AAACE5: FLdPr Me
  loc_AAACE8: VCallAd Control_ID_dgdABMS
  loc_AAACEB: CVarAd
  loc_AAACEF: ParmAry1St
  loc_AAACF5: FLdRfVar var_11C
  loc_AAACF8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AAACFD: ILdRf var_120
  loc_AAAD00: CastAd
  loc_AAAD03: FLdPr Me
  loc_AAAD06: MemStAdFunc
  loc_AAAD0A: FLdRfVar var_11C
  loc_AAAD0D: Erase
  loc_AAAD0E: FFree1Ad var_120
  loc_AAAD11: ExitProcHresult
End Sub

Private Sub Form_Activate() '9DA628
  'Data Table: 4139D8
  loc_9DA610: FLdPr Me
  loc_9DA613: VCallAd Control_ID_Campo2Txt
  loc_9DA616: FStAdFunc var_88
  loc_9DA619: FLdPr var_88
  loc_9DA61C: Me.SetFocus
  loc_9DA621: FFree1Ad var_88
  loc_9DA624: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A12228
  'Data Table: 4139D8
  loc_A121EC: ILdI2 KeyAscii
  loc_A121EF: LitI2_Byte &HD
  loc_A121F1: EqI2
  loc_A121F2: BranchF loc_A12203
  loc_A121F5: LitVar_TRUE var_A4
  loc_A121F8: LitStr "{Tab}"
  loc_A121FB: ImpAdCallFPR4 SendKeys , 
  loc_A12200: FFree1Var var_A4 = ""
  loc_A12203: ILdI2 KeyAscii
  loc_A12206: LitI2_Byte &H1B
  loc_A12208: EqI2
  loc_A12209: BranchF loc_A12226
  loc_A1220C: ILdRf Me
  loc_A1220F: FStAdNoPop
  loc_A12213: ImpAdLdRf MemVar_D9C5D8
  loc_A12216: NewIfNullPr Global
  loc_A12219: Global.Unload from_stack_1
  loc_A1221E: FFree1Ad var_A8
  loc_A12221: LitI2_Byte 0
  loc_A12223: IStI2 KeyAscii
  loc_A12226: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9DCC28
  'Data Table: 4139D8
  loc_9DCC10: ILdRf Me
  loc_9DCC13: FStAdNoPop
  loc_9DCC17: ImpAdLdRf MemVar_D9C5D8
  loc_9DCC1A: NewIfNullPr Global
  loc_9DCC1D: Global.Unload from_stack_1
  loc_9DCC22: FFree1Ad var_88
  loc_9DCC25: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'AA62CC
  'Data Table: 4139D8
  loc_AA6228: LitStr vbNullString
  loc_AA622B: FLdPr Me
  loc_AA622E: VCallAd Control_ID_Campo1Txt
  loc_AA6231: FStAdFunc var_88
  loc_AA6234: FLdPr var_88
  loc_AA6237: Me.Text = from_stack_1
  loc_AA623C: FFree1Ad var_88
  loc_AA623F: LitStr "SELECT CodiConc, DetaConc FROM concepto "
  loc_AA6242: LitStr " WHERE PeriInfo = "
  loc_AA6245: ConcatStr
  loc_AA6246: CVarStr var_C8
  loc_AA6249: LitI2_Byte 0
  loc_AA624B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA6250: CVarDate var_A8
  loc_AA6254: FLdRfVar var_B8
  loc_AA6257: ImpAdCallFPR4  = Year()
  loc_AA625C: FLdRfVar var_B8
  loc_AA625F: ConcatVar var_D8
  loc_AA6263: LitVarStr var_E8, " AND VigeConc = '1' AND DevsConc = 'Si' "
  loc_AA6268: ConcatVar var_F8
  loc_AA626C: LitVarStr var_108, " AND DetaConc like '" & Chr(37)
  loc_AA6271: ConcatVar var_118
  loc_AA6275: FLdRfVar var_11C
  loc_AA6278: FLdPr Me
  loc_AA627B: VCallAd Control_ID_Campo2Txt
  loc_AA627E: FStAdFunc var_88
  loc_AA6281: FLdPr var_88
  loc_AA6284:  = Me.Text
  loc_AA6289: FLdZeroAd var_11C
  loc_AA628C: CVarStr var_12C
  loc_AA628F: ConcatVar var_13C
  loc_AA6293: LitVarStr var_14C, Chr(37) & "' ORDER BY PeriInfo, DetaConc"
  loc_AA6298: ConcatVar var_15C
  loc_AA629C: CStrVarVal var_160
  loc_AA62A0: FLdPr Me
  loc_AA62A3: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AA62A6: NewIfNullPr clsconcepto
  loc_AA62A9: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_AA62AE: FFree1Str var_160
  loc_AA62B1: FFree1Ad var_88
  loc_AA62B4: FFreeVar var_A8 = "": var_C8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_12C = "": var_13C = ""
  loc_AA62C9: ExitProcHresult
End Sub

Public Function global_4274648Get() '413EFC
  global_4274648Get = global_4274648
End Function

Public Sub global_4274648Put(Value) '413F16
  global_4274648 = Value
End Sub

Public Sub global_4274648Set(Value) '413F30
  global_4274648 = Value
End Sub
