VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarEnteRecaudador
  Caption = "Buscar Ente Recaudador por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarEnteRecaudador.frx":0000
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
    OleObjectBlob = "dlgBuscarEnteRecaudador.frx":08CA
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

Attribute VB_Name = "dlgBuscarEnteRecaudador"

Public EnteRecaCLS As New Class


Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EA808
  'Data Table: 40FEF8
  loc_9EA7E4: ILdI2 KeyCode
  loc_9EA7E7: CI4UI1
  loc_9EA7E8: LitI4 &HD
  loc_9EA7ED: EqI4
  loc_9EA7EE: BranchF loc_9EA806
  loc_9EA7F1: ILdRf Me
  loc_9EA7F4: FStAdNoPop
  loc_9EA7F8: ImpAdLdRf MemVar_D9C5D8
  loc_9EA7FB: NewIfNullPr Global
  loc_9EA7FE: Global.Unload from_stack_1
  loc_9EA803: FFree1Ad var_88
  loc_9EA806: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A599A0
  'Data Table: 40FEF8
  loc_A59948: LitStr vbNullString
  loc_A5994B: FLdPr Me
  loc_A5994E: VCallAd Control_ID_Campo2Txt
  loc_A59951: FStAdFunc var_88
  loc_A59954: FLdPr var_88
  loc_A59957: Me.Text = from_stack_1
  loc_A5995C: FFree1Ad var_88
  loc_A5995F: LitStr "SELECT * FROM infogov.entereca WHERE CodiEnre like '"
  loc_A59962: FLdRfVar var_8C
  loc_A59965: FLdPr Me
  loc_A59968: VCallAd Control_ID_Campo1Txt
  loc_A5996B: FStAdFunc var_88
  loc_A5996E: FLdPr var_88
  loc_A59971:  = Me.Text
  loc_A59976: ILdRf var_8C
  loc_A59979: ConcatStr
  loc_A5997A: FStStrNoPop var_90
  loc_A5997D: LitStr Chr(37) & "' ORDER BY CodiEnre"
  loc_A59980: ConcatStr
  loc_A59981: FStStrNoPop var_94
  loc_A59984: FLdPr Me
  loc_A59987: MemLdRfVar from_stack_1.EnteRecaCLS
  loc_A5998A: NewIfNullPr clsentereca
  loc_A5998D: Call clsentereca.RedefineRS(from_stack_1v)
  loc_A59992: FFreeStr var_8C = "": var_90 = ""
  loc_A5999B: FFree1Ad var_88
  loc_A5999E: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D4644
  'Data Table: 40FEF8
  loc_9D462C: LitStr "0123456789"
  loc_9D462F: FStStrCopy var_88
  loc_9D4632: FLdRfVar var_88
  loc_9D4635: ILdRf KeyAscii
  loc_9D4638: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D463D: IStI2 KeyAscii
  loc_9D4640: FFree1Str var_88
  loc_9D4643: ExitProcHresult
End Sub

Private Sub Form_Load() 'A77D9C
  'Data Table: 40FEF8
  loc_A77D2C: LitStr "SELECT * FROM infogov.entereca ORDER BY DetaEnre"
  loc_A77D2F: FLdPr Me
  loc_A77D32: MemLdRfVar from_stack_1.EnteRecaCLS
  loc_A77D35: NewIfNullPr clsentereca
  loc_A77D38: Call clsentereca.RedefineRS(from_stack_1v)
  loc_A77D3D: LitI4 0
  loc_A77D42: LitI4 1
  loc_A77D47: FLdRfVar var_88
  loc_A77D4A: Redim
  loc_A77D54: FLdPr Me
  loc_A77D57: MemLdRfVar from_stack_1.EnteRecaCLS
  loc_A77D5A: NewIfNullAd
  loc_A77D5D: FStAd var_8C 
  loc_A77D61: FLdRfVar var_8C
  loc_A77D64: CVarRef
  loc_A77D69: ParmAry1St
  loc_A77D6F: FLdPr Me
  loc_A77D72: VCallAd Control_ID_dgdABMS
  loc_A77D75: CVarAd
  loc_A77D79: ParmAry1St
  loc_A77D7F: FLdRfVar var_88
  loc_A77D82: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A77D87: ILdRf var_8C
  loc_A77D8A: CastAd
  loc_A77D8D: FLdPr Me
  loc_A77D90: MemStAdFunc
  loc_A77D94: FLdRfVar var_88
  loc_A77D97: Erase
  loc_A77D98: FFree1Ad var_8C
  loc_A77D9B: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D4A6C
  'Data Table: 40FEF8
  loc_9D4A54: FLdPr Me
  loc_9D4A57: VCallAd Control_ID_Campo2Txt
  loc_9D4A5A: FStAdFunc var_88
  loc_9D4A5D: FLdPr var_88
  loc_9D4A60: Me.SetFocus
  loc_9D4A65: FFree1Ad var_88
  loc_9D4A68: ExitProcHresult
  loc_9D4A69: MemLdStr global_68
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A120CC
  'Data Table: 40FEF8
  loc_A12090: ILdI2 KeyAscii
  loc_A12093: LitI2_Byte &HD
  loc_A12095: EqI2
  loc_A12096: BranchF loc_A120A7
  loc_A12099: LitVar_TRUE var_A4
  loc_A1209C: LitStr "{Tab}"
  loc_A1209F: ImpAdCallFPR4 SendKeys , 
  loc_A120A4: FFree1Var var_A4 = ""
  loc_A120A7: ILdI2 KeyAscii
  loc_A120AA: LitI2_Byte &H1B
  loc_A120AC: EqI2
  loc_A120AD: BranchF loc_A120CA
  loc_A120B0: ILdRf Me
  loc_A120B3: FStAdNoPop
  loc_A120B7: ImpAdLdRf MemVar_D9C5D8
  loc_A120BA: NewIfNullPr Global
  loc_A120BD: Global.Unload from_stack_1
  loc_A120C2: FFree1Ad var_A8
  loc_A120C5: LitI2_Byte 0
  loc_A120C7: IStI2 KeyAscii
  loc_A120CA: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9DB598
  'Data Table: 40FEF8
  loc_9DB580: ILdRf Me
  loc_9DB583: FStAdNoPop
  loc_9DB587: ImpAdLdRf MemVar_D9C5D8
  loc_9DB58A: NewIfNullPr Global
  loc_9DB58D: Global.Unload from_stack_1
  loc_9DB592: FFree1Ad var_88
  loc_9DB595: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A59A38
  'Data Table: 40FEF8
  loc_A599E0: LitStr vbNullString
  loc_A599E3: FLdPr Me
  loc_A599E6: VCallAd Control_ID_Campo1Txt
  loc_A599E9: FStAdFunc var_88
  loc_A599EC: FLdPr var_88
  loc_A599EF: Me.Text = from_stack_1
  loc_A599F4: FFree1Ad var_88
  loc_A599F7: LitStr "SELECT * FROM infogov.entereca WHERE DetaEnre like '" & Chr(37)
  loc_A599FA: FLdRfVar var_8C
  loc_A599FD: FLdPr Me
  loc_A59A00: VCallAd Control_ID_Campo2Txt
  loc_A59A03: FStAdFunc var_88
  loc_A59A06: FLdPr var_88
  loc_A59A09:  = Me.Text
  loc_A59A0E: ILdRf var_8C
  loc_A59A11: ConcatStr
  loc_A59A12: FStStrNoPop var_90
  loc_A59A15: LitStr Chr(37) & "' ORDER BY DetaEnre"
  loc_A59A18: ConcatStr
  loc_A59A19: FStStrNoPop var_94
  loc_A59A1C: FLdPr Me
  loc_A59A1F: MemLdRfVar from_stack_1.EnteRecaCLS
  loc_A59A22: NewIfNullPr clsentereca
  loc_A59A25: Call clsentereca.RedefineRS(from_stack_1v)
  loc_A59A2A: FFreeStr var_8C = "": var_90 = ""
  loc_A59A33: FFree1Ad var_88
  loc_A59A36: ExitProcHresult
End Sub

Public Function global_4259576Get() '4103FC
  global_4259576Get = global_4259576
End Function

Public Sub global_4259576Put(Value) '410416
  global_4259576 = Value
End Sub

Public Sub global_4259576Set(Value) '410430
  global_4259576 = Value
End Sub
