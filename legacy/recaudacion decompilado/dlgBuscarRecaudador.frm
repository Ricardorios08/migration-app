VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarRecaudador
  Caption = "Buscar Recaudador por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarRecaudador.frx":0000
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
    OleObjectBlob = "dlgBuscarRecaudador.frx":08CA
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

Attribute VB_Name = "dlgBuscarRecaudador"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A5B7E8
  'Data Table: 41F898
  loc_A5B790: LitStr vbNullString
  loc_A5B793: FLdPr Me
  loc_A5B796: VCallAd Control_ID_Campo2Txt
  loc_A5B799: FStAdFunc var_88
  loc_A5B79C: FLdPr var_88
  loc_A5B79F: Me.Text = from_stack_1
  loc_A5B7A4: FFree1Ad var_88
  loc_A5B7A7: LitStr "SELECT * FROM recaudador WHERE CodiReca like '"
  loc_A5B7AA: FLdRfVar var_8C
  loc_A5B7AD: FLdPr Me
  loc_A5B7B0: VCallAd Control_ID_Campo1Txt
  loc_A5B7B3: FStAdFunc var_88
  loc_A5B7B6: FLdPr var_88
  loc_A5B7B9:  = Me.Text
  loc_A5B7BE: ILdRf var_8C
  loc_A5B7C1: ConcatStr
  loc_A5B7C2: FStStrNoPop var_90
  loc_A5B7C5: LitStr Chr(37) & "' ORDER BY CodiReca"
  loc_A5B7C8: ConcatStr
  loc_A5B7C9: FStStrNoPop var_94
  loc_A5B7CC: FLdPr Me
  loc_A5B7CF: MemLdRfVar from_stack_1.global_64
  loc_A5B7D2: NewIfNullPr clsrecaudador
  loc_A5B7D5: Call clsrecaudador.RedefineRS(from_stack_1v)
  loc_A5B7DA: FFreeStr var_8C = "": var_90 = ""
  loc_A5B7E3: FFree1Ad var_88
  loc_A5B7E6: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DB67C
  'Data Table: 41F898
  loc_9DB664: LitStr "0123456789"
  loc_9DB667: FStStrCopy var_88
  loc_9DB66A: FLdRfVar var_88
  loc_9DB66D: ILdRf KeyAscii
  loc_9DB670: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DB675: IStI2 KeyAscii
  loc_9DB678: FFree1Str var_88
  loc_9DB67B: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9B0624
  'Data Table: 41F898
  loc_9B061C: Call asignarRecaudador()
  loc_9B0621: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9B9E64
  'Data Table: 41F898
  loc_9B9E50: ILdI2 KeyCode
  loc_9B9E53: CI4UI1
  loc_9B9E54: LitI4 &HD
  loc_9B9E59: EqI4
  loc_9B9E5A: BranchF loc_9B9E62
  loc_9B9E5D: Call asignarRecaudador()
  loc_9B9E62: ExitProcHresult
End Sub

Private Sub Form_Load() 'A85E74
  'Data Table: 41F898
  loc_A85DE8: FLdPr Me
  loc_A85DEB: MemLdStr sPasaSelect
  loc_A85DEE: LitStr vbNullString
  loc_A85DF1: EqStr
  loc_A85DF3: BranchF loc_A85E00
  loc_A85DF6: LitStr "SELECT * FROM recaudador ORDER BY DetaReca"
  loc_A85DF9: FLdPr Me
  loc_A85DFC: MemStStrCopy
  loc_A85E00: FLdPr Me
  loc_A85E03: MemLdStr sPasaSelect
  loc_A85E06: FLdPr Me
  loc_A85E09: MemLdRfVar from_stack_1.global_64
  loc_A85E0C: NewIfNullPr clsrecaudador
  loc_A85E0F: Call clsrecaudador.RedefineRS(from_stack_1v)
  loc_A85E14: LitI4 0
  loc_A85E19: LitI4 1
  loc_A85E1E: FLdRfVar var_88
  loc_A85E21: Redim
  loc_A85E2B: FLdPr Me
  loc_A85E2E: MemLdRfVar from_stack_1.global_64
  loc_A85E31: NewIfNullAd
  loc_A85E34: FStAd var_8C 
  loc_A85E38: FLdRfVar var_8C
  loc_A85E3B: CVarRef
  loc_A85E40: ParmAry1St
  loc_A85E46: FLdPr Me
  loc_A85E49: VCallAd Control_ID_dgdABMS
  loc_A85E4C: CVarAd
  loc_A85E50: ParmAry1St
  loc_A85E56: FLdRfVar var_88
  loc_A85E59: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A85E5E: ILdRf var_8C
  loc_A85E61: CastAd
  loc_A85E64: FLdPr Me
  loc_A85E67: MemStAdFunc
  loc_A85E6B: FLdRfVar var_88
  loc_A85E6E: Erase
  loc_A85E6F: FFree1Ad var_8C
  loc_A85E72: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B177C
  'Data Table: 41F898
  loc_9B1770: LitStr vbNullString
  loc_9B1773: FLdPr Me
  loc_9B1776: MemStStrCopy
  loc_9B177A: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D45AC
  'Data Table: 41F898
  loc_9D4594: FLdPr Me
  loc_9D4597: VCallAd Control_ID_Campo2Txt
  loc_9D459A: FStAdFunc var_88
  loc_9D459D: FLdPr var_88
  loc_9D45A0: Me.SetFocus
  loc_9D45A5: FFree1Ad var_88
  loc_9D45A8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10684
  'Data Table: 41F898
  loc_A10648: ILdI2 KeyAscii
  loc_A1064B: LitI2_Byte &HD
  loc_A1064D: EqI2
  loc_A1064E: BranchF loc_A1065F
  loc_A10651: LitVar_TRUE var_A4
  loc_A10654: LitStr "{Tab}"
  loc_A10657: ImpAdCallFPR4 SendKeys , 
  loc_A1065C: FFree1Var var_A4 = ""
  loc_A1065F: ILdI2 KeyAscii
  loc_A10662: LitI2_Byte &H1B
  loc_A10664: EqI2
  loc_A10665: BranchF loc_A10682
  loc_A10668: ILdRf Me
  loc_A1066B: FStAdNoPop
  loc_A1066F: ImpAdLdRf MemVar_D9C5D8
  loc_A10672: NewIfNullPr Global
  loc_A10675: Global.Unload from_stack_1
  loc_A1067A: FFree1Ad var_A8
  loc_A1067D: LitI2_Byte 0
  loc_A1067F: IStI2 KeyAscii
  loc_A10682: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9B073C
  'Data Table: 41F898
  loc_9B0734: Call asignarRecaudador()
  loc_9B0739: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9D4E48
  'Data Table: 41F898
  loc_9D4E30: ILdRf Me
  loc_9D4E33: FStAdNoPop
  loc_9D4E37: ImpAdLdRf MemVar_D9C5D8
  loc_9D4E3A: NewIfNullPr Global
  loc_9D4E3D: Global.Unload from_stack_1
  loc_9D4E42: FFree1Ad var_88
  loc_9D4E45: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A5B620
  'Data Table: 41F898
  loc_A5B5C8: LitStr vbNullString
  loc_A5B5CB: FLdPr Me
  loc_A5B5CE: VCallAd Control_ID_Campo1Txt
  loc_A5B5D1: FStAdFunc var_88
  loc_A5B5D4: FLdPr var_88
  loc_A5B5D7: Me.Text = from_stack_1
  loc_A5B5DC: FFree1Ad var_88
  loc_A5B5DF: LitStr "SELECT * FROM recaudador WHERE DetaReca like '" & Chr(37)
  loc_A5B5E2: FLdRfVar var_8C
  loc_A5B5E5: FLdPr Me
  loc_A5B5E8: VCallAd Control_ID_Campo2Txt
  loc_A5B5EB: FStAdFunc var_88
  loc_A5B5EE: FLdPr var_88
  loc_A5B5F1:  = Me.Text
  loc_A5B5F6: ILdRf var_8C
  loc_A5B5F9: ConcatStr
  loc_A5B5FA: FStStrNoPop var_90
  loc_A5B5FD: LitStr Chr(37) & "' ORDER BY DetaReca"
  loc_A5B600: ConcatStr
  loc_A5B601: FStStrNoPop var_94
  loc_A5B604: FLdPr Me
  loc_A5B607: MemLdRfVar from_stack_1.global_64
  loc_A5B60A: NewIfNullPr clsrecaudador
  loc_A5B60D: Call clsrecaudador.RedefineRS(from_stack_1v)
  loc_A5B612: FFreeStr var_8C = "": var_90 = ""
  loc_A5B61B: FFree1Ad var_88
  loc_A5B61E: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '41FE54
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '41FE63
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '41FE72
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '41FE81
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '41FE90
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '41FE9F
  sPasaSelect = Value
End Sub

Public Sub asignarRecaudador() 'A7F688
  'Data Table: 41F898
  loc_A7F5FC: FLdRfVar var_88
  loc_A7F5FF: FLdPr Me
  loc_A7F602: MemLdRfVar from_stack_1.global_64
  loc_A7F605: NewIfNullPr clsrecaudador
  loc_A7F608: from_stack_1 = clsrecaudador.RecordCount
  loc_A7F60D: ILdRf var_88
  loc_A7F610: LitI4 0
  loc_A7F615: GtI4
  loc_A7F616: BranchF loc_A7F65D
  loc_A7F619: FLdRfVar var_8A
  loc_A7F61C: FLdPr Me
  loc_A7F61F: MemLdRfVar from_stack_1.global_64
  loc_A7F622: NewIfNullPr clsrecaudador
  loc_A7F625: from_stack_1 = clsrecaudador.CodiReca
  loc_A7F62A: FLdI2 var_8A
  loc_A7F62D: CStrUI1
  loc_A7F62F: FStStrNoPop var_90
  loc_A7F632: FLdPr Me
  loc_A7F635: MemStStrCopy
  loc_A7F639: FFree1Str var_90
  loc_A7F63C: FLdRfVar var_90
  loc_A7F63F: FLdPr Me
  loc_A7F642: MemLdRfVar from_stack_1.global_64
  loc_A7F645: NewIfNullPr clsrecaudador
  loc_A7F648: from_stack_1 = clsrecaudador.DetaReca
  loc_A7F64D: ILdRf var_90
  loc_A7F650: FLdPr Me
  loc_A7F653: MemStStrCopy
  loc_A7F657: FFree1Str var_90
  loc_A7F65A: Branch loc_A7F671
  loc_A7F65D: LitStr "0"
  loc_A7F660: FLdPr Me
  loc_A7F663: MemStStrCopy
  loc_A7F667: LitStr vbNullString
  loc_A7F66A: FLdPr Me
  loc_A7F66D: MemStStrCopy
  loc_A7F671: ILdRf Me
  loc_A7F674: FStAdNoPop
  loc_A7F678: ImpAdLdRf MemVar_D9C5D8
  loc_A7F67B: NewIfNullPr Global
  loc_A7F67E: Global.Unload from_stack_1
  loc_A7F683: FFree1Ad var_94
  loc_A7F686: ExitProcHresult
End Sub
