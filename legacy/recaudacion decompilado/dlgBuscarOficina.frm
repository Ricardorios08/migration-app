VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarOficina
  Caption = "Buscar Oficina ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarOficina.frx":0000
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
    OleObjectBlob = "dlgBuscarOficina.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
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
    Left = 840
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

Attribute VB_Name = "dlgBuscarOficina"

Public BuscarCLS As New Class


Private Sub Campo1Txt_Change() 'A5ADD0
  'Data Table: 40EBD4
  loc_A5AD78: LitStr vbNullString
  loc_A5AD7B: FLdPr Me
  loc_A5AD7E: VCallAd Control_ID_Campo2Txt
  loc_A5AD81: FStAdFunc var_88
  loc_A5AD84: FLdPr var_88
  loc_A5AD87: Me.Text = from_stack_1
  loc_A5AD8C: FFree1Ad var_88
  loc_A5AD8F: LitStr "SELECT * FROM oficina WHERE CodiOfic like '"
  loc_A5AD92: FLdRfVar var_8C
  loc_A5AD95: FLdPr Me
  loc_A5AD98: VCallAd Control_ID_Campo1Txt
  loc_A5AD9B: FStAdFunc var_88
  loc_A5AD9E: FLdPr var_88
  loc_A5ADA1:  = Me.Text
  loc_A5ADA6: ILdRf var_8C
  loc_A5ADA9: ConcatStr
  loc_A5ADAA: FStStrNoPop var_90
  loc_A5ADAD: LitStr Chr(37) & "' ORDER BY CodiOfic"
  loc_A5ADB0: ConcatStr
  loc_A5ADB1: FStStrNoPop var_94
  loc_A5ADB4: FLdPr Me
  loc_A5ADB7: MemLdRfVar from_stack_1.BuscarCLS
  loc_A5ADBA: NewIfNullPr clsbase
  loc_A5ADBD: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5ADC2: FFreeStr var_8C = "": var_90 = ""
  loc_A5ADCB: FFree1Ad var_88
  loc_A5ADCE: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D8C08
  'Data Table: 40EBD4
  loc_9D8BF0: LitStr "0123456789"
  loc_9D8BF3: FStStrCopy var_88
  loc_9D8BF6: FLdRfVar var_88
  loc_9D8BF9: ILdRf KeyAscii
  loc_9D8BFC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D8C01: IStI2 KeyAscii
  loc_9D8C04: FFree1Str var_88
  loc_9D8C07: ExitProcHresult
End Sub

Private Sub Form_Load() 'A77310
  'Data Table: 40EBD4
  loc_A772A0: LitStr "SELECT CodiOfic, DetaOfic FROM oficina ORDER BY DetaOfic"
  loc_A772A3: FLdPr Me
  loc_A772A6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A772A9: NewIfNullPr clsbase
  loc_A772AC: Call clsbase.RedefineRS(from_stack_1v)
  loc_A772B1: LitI4 0
  loc_A772B6: LitI4 1
  loc_A772BB: FLdRfVar var_88
  loc_A772BE: Redim
  loc_A772C8: FLdPr Me
  loc_A772CB: MemLdRfVar from_stack_1.BuscarCLS
  loc_A772CE: NewIfNullAd
  loc_A772D1: FStAd var_8C 
  loc_A772D5: FLdRfVar var_8C
  loc_A772D8: CVarRef
  loc_A772DD: ParmAry1St
  loc_A772E3: FLdPr Me
  loc_A772E6: VCallAd Control_ID_dgdABMS
  loc_A772E9: CVarAd
  loc_A772ED: ParmAry1St
  loc_A772F3: FLdRfVar var_88
  loc_A772F6: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A772FB: ILdRf var_8C
  loc_A772FE: CastAd
  loc_A77301: FLdPr Me
  loc_A77304: MemStAdFunc
  loc_A77308: FLdRfVar var_88
  loc_A7730B: Erase
  loc_A7730C: FFree1Ad var_8C
  loc_A7730F: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D8B70
  'Data Table: 40EBD4
  loc_9D8B58: FLdPr Me
  loc_9D8B5B: VCallAd Control_ID_Campo2Txt
  loc_9D8B5E: FStAdFunc var_88
  loc_9D8B61: FLdPr var_88
  loc_9D8B64: Me.SetFocus
  loc_9D8B69: FFree1Ad var_88
  loc_9D8B6C: ExitProcHresult
  loc_9D8B6D: ExitProc
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11E14
  'Data Table: 40EBD4
  loc_A11DD8: ILdI2 KeyAscii
  loc_A11DDB: LitI2_Byte &HD
  loc_A11DDD: EqI2
  loc_A11DDE: BranchF loc_A11DEF
  loc_A11DE1: LitVar_TRUE var_A4
  loc_A11DE4: LitStr "{Tab}"
  loc_A11DE7: ImpAdCallFPR4 SendKeys , 
  loc_A11DEC: FFree1Var var_A4 = ""
  loc_A11DEF: ILdI2 KeyAscii
  loc_A11DF2: LitI2_Byte &H1B
  loc_A11DF4: EqI2
  loc_A11DF5: BranchF loc_A11E12
  loc_A11DF8: ILdRf Me
  loc_A11DFB: FStAdNoPop
  loc_A11DFF: ImpAdLdRf MemVar_D9C5D8
  loc_A11E02: NewIfNullPr Global
  loc_A11E05: Global.Unload from_stack_1
  loc_A11E0A: FFree1Ad var_A8
  loc_A11E0D: LitI2_Byte 0
  loc_A11E0F: IStI2 KeyAscii
  loc_A11E12: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D8A8C
  'Data Table: 40EBD4
  loc_9D8A74: ILdRf Me
  loc_9D8A77: FStAdNoPop
  loc_9D8A7B: ImpAdLdRf MemVar_D9C5D8
  loc_9D8A7E: NewIfNullPr Global
  loc_9D8A81: Global.Unload from_stack_1
  loc_9D8A86: FFree1Ad var_88
  loc_9D8A89: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A5B0C8
  'Data Table: 40EBD4
  loc_A5B070: LitStr vbNullString
  loc_A5B073: FLdPr Me
  loc_A5B076: VCallAd Control_ID_Campo1Txt
  loc_A5B079: FStAdFunc var_88
  loc_A5B07C: FLdPr var_88
  loc_A5B07F: Me.Text = from_stack_1
  loc_A5B084: FFree1Ad var_88
  loc_A5B087: LitStr "SELECT * FROM oficina WHERE DetaOfic like '" & Chr(37)
  loc_A5B08A: FLdRfVar var_8C
  loc_A5B08D: FLdPr Me
  loc_A5B090: VCallAd Control_ID_Campo2Txt
  loc_A5B093: FStAdFunc var_88
  loc_A5B096: FLdPr var_88
  loc_A5B099:  = Me.Text
  loc_A5B09E: ILdRf var_8C
  loc_A5B0A1: ConcatStr
  loc_A5B0A2: FStStrNoPop var_90
  loc_A5B0A5: LitStr Chr(37) & "' ORDER BY DetaOfic"
  loc_A5B0A8: ConcatStr
  loc_A5B0A9: FStStrNoPop var_94
  loc_A5B0AC: FLdPr Me
  loc_A5B0AF: MemLdRfVar from_stack_1.BuscarCLS
  loc_A5B0B2: NewIfNullPr clsbase
  loc_A5B0B5: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5B0BA: FFreeStr var_8C = "": var_90 = ""
  loc_A5B0C3: FFree1Ad var_88
  loc_A5B0C6: ExitProcHresult
End Sub

Public Function global_4254676Get() '40F0D0
  global_4254676Get = global_4254676
End Function

Public Sub global_4254676Put(Value) '40F0EA
  global_4254676 = Value
End Sub

Public Sub global_4254676Set(Value) '40F104
  global_4254676 = Value
End Sub
