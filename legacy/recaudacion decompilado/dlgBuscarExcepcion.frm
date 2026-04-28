VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarExcepcion
  Caption = "Buscar Excepcion"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarExcepcion.frx":0000
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
    TabIndex = 0
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
    TabIndex = 4
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1560
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 3
    Tag = "3"
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
    TabIndex = 2
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
    Width = 9615
    Height = 3495
    Tag = "1"
    TabIndex = 1
    OleObjectBlob = "dlgBuscarExcepcion.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 1560
    Top = 840
    Width = 810
    Height = 300
    TabIndex = 6
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
End

Attribute VB_Name = "dlgBuscarExcepcion"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A662DC
  'Data Table: 426220
  loc_A6627C: LitStr vbNullString
  loc_A6627F: FLdPr Me
  loc_A66282: VCallAd Control_ID_Campo2Txt
  loc_A66285: FStAdFunc var_88
  loc_A66288: FLdPr var_88
  loc_A6628B: Me.Text = from_stack_1
  loc_A66290: FFree1Ad var_88
  loc_A66293: LitStr "SELECT CodiExce, DetaExce FROM excepcion "
  loc_A66296: LitStr " WHERE CodiExce like '"
  loc_A66299: ConcatStr
  loc_A6629A: FStStrNoPop var_90
  loc_A6629D: FLdRfVar var_8C
  loc_A662A0: FLdPr Me
  loc_A662A3: VCallAd Control_ID_Campo1Txt
  loc_A662A6: FStAdFunc var_88
  loc_A662A9: FLdPr var_88
  loc_A662AC:  = Me.Text
  loc_A662B1: ILdRf var_8C
  loc_A662B4: ConcatStr
  loc_A662B5: FStStrNoPop var_94
  loc_A662B8: LitStr Chr(37) & "' ORDER BY  CodiExce"
  loc_A662BB: ConcatStr
  loc_A662BC: FStStrNoPop var_98
  loc_A662BF: FLdPr Me
  loc_A662C2: MemLdRfVar from_stack_1.global_64
  loc_A662C5: NewIfNullPr clsexcepcion
  loc_A662C8: Call clsexcepcion.RedefineRS(from_stack_1v)
  loc_A662CD: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_A662D8: FFree1Ad var_88
  loc_A662DB: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D376C
  'Data Table: 426220
  loc_9D3754: LitStr "0123456789"
  loc_9D3757: FStStrCopy var_88
  loc_9D375A: FLdRfVar var_88
  loc_9D375D: ILdRf KeyAscii
  loc_9D3760: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D3765: IStI2 KeyAscii
  loc_9D3768: FFree1Str var_88
  loc_9D376B: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D35F0
  'Data Table: 426220
  loc_9D35D8: FLdPr Me
  loc_9D35DB: VCallAd Control_ID_dgdABMS
  loc_9D35DE: FStAdFunc var_88
  loc_9D35E1: FLdRfVar var_88
  loc_9D35E4: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D35E9: FFree1Ad var_88
  loc_9D35EC: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D35A4
  'Data Table: 426220
  loc_9D358C: FLdPr Me
  loc_9D358F: VCallAd Control_ID_dgdABMS
  loc_9D3592: FStAdFunc var_88
  loc_9D3595: FLdRfVar var_88
  loc_9D3598: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D359D: FFree1Ad var_88
  loc_9D35A0: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9B018C
  'Data Table: 426220
  loc_9B0184: Call asignarExcepcion()
  loc_9B0189: ExitProcHresult
  loc_9B018A: FStFPR8 var_5800
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9B9160
  'Data Table: 426220
  loc_9B914C: ILdI2 KeyCode
  loc_9B914F: CI4UI1
  loc_9B9150: LitI4 &HD
  loc_9B9155: EqI4
  loc_9B9156: BranchF loc_9B915E
  loc_9B9159: Call asignarExcepcion()
  loc_9B915E: ExitProcHresult
End Sub

Private Sub Form_Load() 'A87874
  'Data Table: 426220
  loc_A877E8: FLdPr Me
  loc_A877EB: MemLdStr sPasaSelect
  loc_A877EE: LitStr vbNullString
  loc_A877F1: EqStr
  loc_A877F3: BranchF loc_A87800
  loc_A877F6: LitStr "SELECT CodiExce, DetaExce FROM excepcion ORDER BY DetaExce"
  loc_A877F9: FLdPr Me
  loc_A877FC: MemStStrCopy
  loc_A87800: FLdPr Me
  loc_A87803: MemLdStr sPasaSelect
  loc_A87806: FLdPr Me
  loc_A87809: MemLdRfVar from_stack_1.global_64
  loc_A8780C: NewIfNullPr clsexcepcion
  loc_A8780F: Call clsexcepcion.RedefineRS(from_stack_1v)
  loc_A87814: LitI4 0
  loc_A87819: LitI4 1
  loc_A8781E: FLdRfVar var_88
  loc_A87821: Redim
  loc_A8782B: FLdPr Me
  loc_A8782E: MemLdRfVar from_stack_1.global_64
  loc_A87831: NewIfNullAd
  loc_A87834: FStAd var_8C 
  loc_A87838: FLdRfVar var_8C
  loc_A8783B: CVarRef
  loc_A87840: ParmAry1St
  loc_A87846: FLdPr Me
  loc_A87849: VCallAd Control_ID_dgdABMS
  loc_A8784C: CVarAd
  loc_A87850: ParmAry1St
  loc_A87856: FLdRfVar var_88
  loc_A87859: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8785E: ILdRf var_8C
  loc_A87861: CastAd
  loc_A87864: FLdPr Me
  loc_A87867: MemStAdFunc
  loc_A8786B: FLdRfVar var_88
  loc_A8786E: Erase
  loc_A8786F: FFree1Ad var_8C
  loc_A87872: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B1218
  'Data Table: 426220
  loc_9B120C: LitStr vbNullString
  loc_9B120F: FLdPr Me
  loc_9B1212: MemStStrCopy
  loc_9B1216: ExitProcHresult
  loc_9B1217: CI4Str
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10BF4
  'Data Table: 426220
  loc_A10BB8: ILdI2 KeyAscii
  loc_A10BBB: LitI2_Byte &HD
  loc_A10BBD: EqI2
  loc_A10BBE: BranchF loc_A10BCF
  loc_A10BC1: LitVar_TRUE var_A4
  loc_A10BC4: LitStr "{Tab}"
  loc_A10BC7: ImpAdCallFPR4 SendKeys , 
  loc_A10BCC: FFree1Var var_A4 = ""
  loc_A10BCF: ILdI2 KeyAscii
  loc_A10BD2: LitI2_Byte &H1B
  loc_A10BD4: EqI2
  loc_A10BD5: BranchF loc_A10BF2
  loc_A10BD8: ILdRf Me
  loc_A10BDB: FStAdNoPop
  loc_A10BDF: ImpAdLdRf MemVar_D9C5D8
  loc_A10BE2: NewIfNullPr Global
  loc_A10BE5: Global.Unload from_stack_1
  loc_A10BEA: FFree1Ad var_A8
  loc_A10BED: LitI2_Byte 0
  loc_A10BEF: IStI2 KeyAscii
  loc_A10BF2: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9B026C
  'Data Table: 426220
  loc_9B0264: Call asignarExcepcion()
  loc_9B0269: ExitProcHresult
  loc_9B026A: LdPrVar
End Sub

Private Sub CancelButton_Click() '9D36D4
  'Data Table: 426220
  loc_9D36BC: ILdRf Me
  loc_9D36BF: FStAdNoPop
  loc_9D36C3: ImpAdLdRf MemVar_D9C5D8
  loc_9D36C6: NewIfNullPr Global
  loc_9D36C9: Global.Unload from_stack_1
  loc_9D36CE: FFree1Ad var_88
  loc_9D36D1: ExitProcHresult
  loc_9D36D2: FStFPR4 var_5800
End Sub

Private Sub Campo2Txt_Change() 'A523BC
  'Data Table: 426220
  loc_A52370: LitStr "SELECT CodiExce, DetaExce FROM excepcion "
  loc_A52373: LitStr " WHERE DetaExce like '" & Chr(37)
  loc_A52376: ConcatStr
  loc_A52377: FStStrNoPop var_90
  loc_A5237A: FLdRfVar var_8C
  loc_A5237D: FLdPr Me
  loc_A52380: VCallAd Control_ID_Campo2Txt
  loc_A52383: FStAdFunc var_88
  loc_A52386: FLdPr var_88
  loc_A52389:  = Me.Text
  loc_A5238E: ILdRf var_8C
  loc_A52391: ConcatStr
  loc_A52392: FStStrNoPop var_94
  loc_A52395: LitStr Chr(37) & "' ORDER BY CodiExce"
  loc_A52398: ConcatStr
  loc_A52399: FStStrNoPop var_98
  loc_A5239C: FLdPr Me
  loc_A5239F: MemLdRfVar from_stack_1.global_64
  loc_A523A2: NewIfNullPr clsexcepcion
  loc_A523A5: Call clsexcepcion.RedefineRS(from_stack_1v)
  loc_A523AA: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_A523B5: FFree1Ad var_88
  loc_A523B8: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '4267F0
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '4267FF
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '42680E
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '42681D
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '42682C
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '42683B
  sPasaSelect = Value
End Sub

Public Sub asignarExcepcion() 'A7F1F0
  'Data Table: 426220
  loc_A7F164: FLdRfVar var_88
  loc_A7F167: FLdPr Me
  loc_A7F16A: MemLdRfVar from_stack_1.global_64
  loc_A7F16D: NewIfNullPr clsexcepcion
  loc_A7F170: from_stack_1 = clsexcepcion.RecordCount
  loc_A7F175: ILdRf var_88
  loc_A7F178: LitI4 0
  loc_A7F17D: GtI4
  loc_A7F17E: BranchF loc_A7F1C5
  loc_A7F181: FLdRfVar var_8A
  loc_A7F184: FLdPr Me
  loc_A7F187: MemLdRfVar from_stack_1.global_64
  loc_A7F18A: NewIfNullPr clsexcepcion
  loc_A7F18D: from_stack_1 = clsexcepcion.CodiExce
  loc_A7F192: FLdI2 var_8A
  loc_A7F195: CStrUI1
  loc_A7F197: FStStrNoPop var_90
  loc_A7F19A: FLdPr Me
  loc_A7F19D: MemStStrCopy
  loc_A7F1A1: FFree1Str var_90
  loc_A7F1A4: FLdRfVar var_90
  loc_A7F1A7: FLdPr Me
  loc_A7F1AA: MemLdRfVar from_stack_1.global_64
  loc_A7F1AD: NewIfNullPr clsexcepcion
  loc_A7F1B0: from_stack_1 = clsexcepcion.DetaExce
  loc_A7F1B5: ILdRf var_90
  loc_A7F1B8: FLdPr Me
  loc_A7F1BB: MemStStrCopy
  loc_A7F1BF: FFree1Str var_90
  loc_A7F1C2: Branch loc_A7F1D9
  loc_A7F1C5: LitStr "0"
  loc_A7F1C8: FLdPr Me
  loc_A7F1CB: MemStStrCopy
  loc_A7F1CF: LitStr vbNullString
  loc_A7F1D2: FLdPr Me
  loc_A7F1D5: MemStStrCopy
  loc_A7F1D9: ILdRf Me
  loc_A7F1DC: FStAdNoPop
  loc_A7F1E0: ImpAdLdRf MemVar_D9C5D8
  loc_A7F1E3: NewIfNullPr Global
  loc_A7F1E6: Global.Unload from_stack_1
  loc_A7F1EB: FFree1Ad var_94
  loc_A7F1EE: ExitProcHresult
End Sub
