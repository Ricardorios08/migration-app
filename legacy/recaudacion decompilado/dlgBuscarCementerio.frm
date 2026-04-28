VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarCementerio
  Caption = "Buscar Cementerio ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarCementerio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9180
  ClientHeight = 5424
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 720
    Width = 7215
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
    Left = 1680
    Top = 240
    Width = 1575
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 6
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
    Left = 1680
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 4
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
    Top = 4680
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
    Top = 1320
    Width = 7935
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarCementerio.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
    Top = 720
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
    Left = 840
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

Attribute VB_Name = "dlgBuscarCementerio"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A5F940
  'Data Table: 421698
  loc_A5F8E8: LitStr vbNullString
  loc_A5F8EB: FLdPr Me
  loc_A5F8EE: VCallAd Control_ID_Campo2Txt
  loc_A5F8F1: FStAdFunc var_88
  loc_A5F8F4: FLdPr var_88
  loc_A5F8F7: Me.Text = from_stack_1
  loc_A5F8FC: FFree1Ad var_88
  loc_A5F8FF: LitStr "SELECT * FROM cementerio WHERE CodiCeme like '"
  loc_A5F902: FLdRfVar var_8C
  loc_A5F905: FLdPr Me
  loc_A5F908: VCallAd Control_ID_Campo1Txt
  loc_A5F90B: FStAdFunc var_88
  loc_A5F90E: FLdPr var_88
  loc_A5F911:  = Me.Text
  loc_A5F916: ILdRf var_8C
  loc_A5F919: ConcatStr
  loc_A5F91A: FStStrNoPop var_90
  loc_A5F91D: LitStr Chr(37) & "' ORDER BY CodiCeme"
  loc_A5F920: ConcatStr
  loc_A5F921: CVarStr var_B0
  loc_A5F924: PopAdLdVar
  loc_A5F925: FLdRfVar var_A0
  loc_A5F928: LdPrVar
  loc_A5F92A: LateMemCall
  loc_A5F930: FFreeStr var_8C = ""
  loc_A5F937: FFree1Ad var_88
  loc_A5F93A: FFree1Var var_B0 = ""
  loc_A5F93D: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CF87C
  'Data Table: 421698
  loc_9CF864: LitStr "0123456789"
  loc_9CF867: FStStrCopy var_88
  loc_9CF86A: FLdRfVar var_88
  loc_9CF86D: ILdRf KeyAscii
  loc_9CF870: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CF875: IStI2 KeyAscii
  loc_9CF878: FFree1Str var_88
  loc_9CF87B: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9AFBDC
  'Data Table: 421698
  loc_9AFBD4: Call asignarCementerio()
  loc_9AFBD9: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9BAE54
  'Data Table: 421698
  loc_9BAE40: ILdI2 KeyCode
  loc_9BAE43: CI4UI1
  loc_9BAE44: LitI4 &HD
  loc_9BAE49: EqI4
  loc_9BAE4A: BranchF loc_9BAE52
  loc_9BAE4D: Call asignarCementerio()
  loc_9BAE52: ExitProcHresult
End Sub

Private Sub Form_Load() 'A860E4
  'Data Table: 421698
  loc_A86058: FLdPr Me
  loc_A8605B: MemLdStr sPasaSelect
  loc_A8605E: LitStr vbNullString
  loc_A86061: EqStr
  loc_A86063: BranchF loc_A86070
  loc_A86066: LitStr "SELECT * FROM cementerio ORDER BY CodiCeme"
  loc_A86069: FLdPr Me
  loc_A8606C: MemStStrCopy
  loc_A86070: FLdPr Me
  loc_A86073: MemLdStr sPasaSelect
  loc_A86076: FLdPr Me
  loc_A86079: MemLdRfVar from_stack_1.global_64
  loc_A8607C: NewIfNullPr clscementerio
  loc_A8607F: Call clscementerio.RedefineRS(from_stack_1v)
  loc_A86084: LitI4 0
  loc_A86089: LitI4 1
  loc_A8608E: FLdRfVar var_88
  loc_A86091: Redim
  loc_A8609B: FLdPr Me
  loc_A8609E: MemLdRfVar from_stack_1.global_64
  loc_A860A1: NewIfNullAd
  loc_A860A4: FStAd var_8C 
  loc_A860A8: FLdRfVar var_8C
  loc_A860AB: CVarRef
  loc_A860B0: ParmAry1St
  loc_A860B6: FLdPr Me
  loc_A860B9: VCallAd Control_ID_dgdABMS
  loc_A860BC: CVarAd
  loc_A860C0: ParmAry1St
  loc_A860C6: FLdRfVar var_88
  loc_A860C9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A860CE: ILdRf var_8C
  loc_A860D1: CastAd
  loc_A860D4: FLdPr Me
  loc_A860D7: MemStAdFunc
  loc_A860DB: FLdRfVar var_88
  loc_A860DE: Erase
  loc_A860DF: FFree1Ad var_8C
  loc_A860E2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B1524
  'Data Table: 421698
  loc_9B1518: LitStr vbNullString
  loc_9B151B: FLdPr Me
  loc_9B151E: MemStStrCopy
  loc_9B1522: ExitProcHresult
End Sub

Private Sub Form_Activate() '9CF700
  'Data Table: 421698
  loc_9CF6E8: FLdPr Me
  loc_9CF6EB: VCallAd Control_ID_Campo2Txt
  loc_9CF6EE: FStAdFunc var_88
  loc_9CF6F1: FLdPr var_88
  loc_9CF6F4: Me.SetFocus
  loc_9CF6F9: FFree1Ad var_88
  loc_9CF6FC: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11B5C
  'Data Table: 421698
  loc_A11B20: ILdI2 KeyAscii
  loc_A11B23: LitI2_Byte &HD
  loc_A11B25: EqI2
  loc_A11B26: BranchF loc_A11B37
  loc_A11B29: LitVar_TRUE var_A4
  loc_A11B2C: LitStr "{Tab}"
  loc_A11B2F: ImpAdCallFPR4 SendKeys , 
  loc_A11B34: FFree1Var var_A4 = ""
  loc_A11B37: ILdI2 KeyAscii
  loc_A11B3A: LitI2_Byte &H1B
  loc_A11B3C: EqI2
  loc_A11B3D: BranchF loc_A11B5A
  loc_A11B40: ILdRf Me
  loc_A11B43: FStAdNoPop
  loc_A11B47: ImpAdLdRf MemVar_D9C5D8
  loc_A11B4A: NewIfNullPr Global
  loc_A11B4D: Global.Unload from_stack_1
  loc_A11B52: FFree1Ad var_A8
  loc_A11B55: LitI2_Byte 0
  loc_A11B57: IStI2 KeyAscii
  loc_A11B5A: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9AFC14
  'Data Table: 421698
  loc_9AFC0C: Call asignarCementerio()
  loc_9AFC11: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9CECE8
  'Data Table: 421698
  loc_9CECD0: ILdRf Me
  loc_9CECD3: FStAdNoPop
  loc_9CECD7: ImpAdLdRf MemVar_D9C5D8
  loc_9CECDA: NewIfNullPr Global
  loc_9CECDD: Global.Unload from_stack_1
  loc_9CECE2: FFree1Ad var_88
  loc_9CECE5: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A5F8A4
  'Data Table: 421698
  loc_A5F84C: LitStr vbNullString
  loc_A5F84F: FLdPr Me
  loc_A5F852: VCallAd Control_ID_Campo1Txt
  loc_A5F855: FStAdFunc var_88
  loc_A5F858: FLdPr var_88
  loc_A5F85B: Me.Text = from_stack_1
  loc_A5F860: FFree1Ad var_88
  loc_A5F863: LitStr "SELECT * FROM cementerio WHERE DetaCeme like '" & Chr(37)
  loc_A5F866: FLdRfVar var_8C
  loc_A5F869: FLdPr Me
  loc_A5F86C: VCallAd Control_ID_Campo2Txt
  loc_A5F86F: FStAdFunc var_88
  loc_A5F872: FLdPr var_88
  loc_A5F875:  = Me.Text
  loc_A5F87A: ILdRf var_8C
  loc_A5F87D: ConcatStr
  loc_A5F87E: FStStrNoPop var_90
  loc_A5F881: LitStr Chr(37) & "' ORDER BY DetaCeme"
  loc_A5F884: ConcatStr
  loc_A5F885: CVarStr var_B0
  loc_A5F888: PopAdLdVar
  loc_A5F889: FLdRfVar var_A0
  loc_A5F88C: LdPrVar
  loc_A5F88E: LateMemCall
  loc_A5F894: FFreeStr var_8C = ""
  loc_A5F89B: FFree1Ad var_88
  loc_A5F89E: FFree1Var var_B0 = ""
  loc_A5F8A1: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '421C58
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '421C67
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '421C76
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '421C85
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '421C94
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '421CA3
  sPasaSelect = Value
End Sub

Public Sub asignarCementerio() 'A8038C
  'Data Table: 421698
  loc_A80300: FLdRfVar var_88
  loc_A80303: FLdPr Me
  loc_A80306: MemLdRfVar from_stack_1.global_64
  loc_A80309: NewIfNullPr clscementerio
  loc_A8030C: from_stack_1 = clscementerio.RecordCount
  loc_A80311: ILdRf var_88
  loc_A80314: LitI4 0
  loc_A80319: GtI4
  loc_A8031A: BranchF loc_A80362
  loc_A8031D: FLdRfVar var_8A
  loc_A80320: FLdPr Me
  loc_A80323: MemLdRfVar from_stack_1.global_64
  loc_A80326: NewIfNullPr clscementerio
  loc_A80329: from_stack_1 = clscementerio.CodiCeme
  loc_A8032E: FLdUI1
  loc_A80332: CStrI2
  loc_A80334: FStStrNoPop var_90
  loc_A80337: FLdPr Me
  loc_A8033A: MemStStrCopy
  loc_A8033E: FFree1Str var_90
  loc_A80341: FLdRfVar var_90
  loc_A80344: FLdPr Me
  loc_A80347: MemLdRfVar from_stack_1.global_64
  loc_A8034A: NewIfNullPr clscementerio
  loc_A8034D: from_stack_1 = clscementerio.DetaCeme
  loc_A80352: ILdRf var_90
  loc_A80355: FLdPr Me
  loc_A80358: MemStStrCopy
  loc_A8035C: FFree1Str var_90
  loc_A8035F: Branch loc_A80376
  loc_A80362: LitStr "0"
  loc_A80365: FLdPr Me
  loc_A80368: MemStStrCopy
  loc_A8036C: LitStr vbNullString
  loc_A8036F: FLdPr Me
  loc_A80372: MemStStrCopy
  loc_A80376: ILdRf Me
  loc_A80379: FStAdNoPop
  loc_A8037D: ImpAdLdRf MemVar_D9C5D8
  loc_A80380: NewIfNullPr Global
  loc_A80383: Global.Unload from_stack_1
  loc_A80388: FFree1Ad var_94
  loc_A8038B: ExitProcHresult
End Sub
