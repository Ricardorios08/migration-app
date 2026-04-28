VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarPersonaPorCucuPersNuevo
  Caption = "Buscar Persona Por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarPersonaPorCucuPersNuevo.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 14328
  ClientHeight = 7200
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo3Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1200
    Width = 7095
    Height = 360
    TabIndex = 2
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
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 720
    Width = 7095
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
    Left = 2640
    Top = 240
    Width = 1695
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 11
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
    Top = 6480
    Width = 1335
    Height = 495
    TabIndex = 4
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
    Left = 240
    Top = 1800
    Width = 13935
    Height = 4335
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "dlgBuscarPersonaPorCucuPersNuevo.frx":08CA
  End
  Begin VB.Label Label4
    Caption = "Domicilio Postal:"
    Left = 720
    Top = 1200
    Width = 1725
    Height = 300
    TabIndex = 7
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
  Begin VB.Label Label1
    Caption = "C.U.I.L. - C.U.I.T.:"
    Left = 600
    Top = 240
    Width = 1845
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
  Begin VB.Label Label3
    Caption = "Apellido y Nombre:"
    Left = 480
    Top = 720
    Width = 1965
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

Attribute VB_Name = "dlgBuscarPersonaPorCucuPersNuevo"

Public sWhere As String
Public PersonaCLS As New Class


Private Sub Campo2Txt_Change() 'A97BD8
  'Data Table: 42E0DC
  loc_A97B28: LitStr vbNullString
  loc_A97B2B: FLdPr Me
  loc_A97B2E: VCallAd Control_ID_Campo1Txt
  loc_A97B31: FStAdFunc var_88
  loc_A97B34: FLdPr var_88
  loc_A97B37: Me.Text = from_stack_1
  loc_A97B3C: FFree1Ad var_88
  loc_A97B3F: LitStr vbNullString
  loc_A97B42: FLdPr Me
  loc_A97B45: VCallAd Control_ID_Campo3Txt
  loc_A97B48: FStAdFunc var_88
  loc_A97B4B: FLdPr var_88
  loc_A97B4E: Me.Text = from_stack_1
  loc_A97B53: FFree1Ad var_88
  loc_A97B56: FLdRfVar var_8C
  loc_A97B59: FLdPr Me
  loc_A97B5C: VCallAd Control_ID_Campo2Txt
  loc_A97B5F: FStAdFunc var_88
  loc_A97B62: FLdPr var_88
  loc_A97B65:  = Me.Text
  loc_A97B6A: ILdRf var_8C
  loc_A97B6D: LitStr vbNullString
  loc_A97B70: NeStr
  loc_A97B72: FFree1Str var_8C
  loc_A97B75: FFree1Ad var_88
  loc_A97B78: BranchF loc_A97BD5
  loc_A97B7B: LitStr "DetaPers like '" & Chr(37)
  loc_A97B7E: FLdRfVar var_8C
  loc_A97B81: FLdPr Me
  loc_A97B84: VCallAd Control_ID_Campo2Txt
  loc_A97B87: FStAdFunc var_88
  loc_A97B8A: FLdPr var_88
  loc_A97B8D:  = Me.Text
  loc_A97B92: ILdRf var_8C
  loc_A97B95: ConcatStr
  loc_A97B96: FStStrNoPop var_90
  loc_A97B99: LitStr Chr(37) & "'"
  loc_A97B9C: ConcatStr
  loc_A97B9D: PopTmpLdAdStr
  loc_A97BA1: FLdPr Me
  loc_A97BA4: MemLdRfVar from_stack_1.PersonaCLS
  loc_A97BA7: NewIfNullPr clspersonas
  loc_A97BAA: Call clspersonas.Filter(from_stack_1v)
  loc_A97BAF: FFreeStr var_8C = "": var_90 = ""
  loc_A97BB8: FFree1Ad var_88
  loc_A97BBB: LitStr "DetaPers"
  loc_A97BBE: FStStrCopy var_8C
  loc_A97BC1: FLdRfVar var_8C
  loc_A97BC4: FLdPr Me
  loc_A97BC7: MemLdRfVar from_stack_1.PersonaCLS
  loc_A97BCA: NewIfNullPr clspersonas
  loc_A97BCD: Call clspersonas.Sort(from_stack_1v)
  loc_A97BD2: FFree1Str var_8C
  loc_A97BD5: ExitProcHresult
End Sub

Private Sub Campo2Txt_GotFocus() '9BBA00
  'Data Table: 42E0DC
  loc_9BB9EC: FLdPr Me
  loc_9BB9EF: VCallAd Control_ID_Campo2Txt
  loc_9BB9F2: CVarAd
  loc_9BB9F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB9FB: FFree1Var var_94 = ""
  loc_9BB9FE: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'AC9BDC
  'Data Table: 42E0DC
  loc_AC9ADC: LitStr vbNullString
  loc_AC9ADF: FLdPr Me
  loc_AC9AE2: VCallAd Control_ID_Campo2Txt
  loc_AC9AE5: FStAdFunc var_88
  loc_AC9AE8: FLdPr var_88
  loc_AC9AEB: Me.Text = from_stack_1
  loc_AC9AF0: FFree1Ad var_88
  loc_AC9AF3: LitStr vbNullString
  loc_AC9AF6: FLdPr Me
  loc_AC9AF9: VCallAd Control_ID_Campo3Txt
  loc_AC9AFC: FStAdFunc var_88
  loc_AC9AFF: FLdPr var_88
  loc_AC9B02: Me.Text = from_stack_1
  loc_AC9B07: FFree1Ad var_88
  loc_AC9B0A: FLdRfVar var_8C
  loc_AC9B0D: FLdPr Me
  loc_AC9B10: VCallAd Control_ID_Campo1Txt
  loc_AC9B13: FStAdFunc var_88
  loc_AC9B16: FLdPr var_88
  loc_AC9B19:  = Me.Text
  loc_AC9B1E: ILdRf var_8C
  loc_AC9B21: LitStr vbNullString
  loc_AC9B24: NeStr
  loc_AC9B26: FFree1Str var_8C
  loc_AC9B29: FFree1Ad var_88
  loc_AC9B2C: BranchF loc_AC9BD8
  loc_AC9B2F: FLdRfVar var_94
  loc_AC9B32: FLdPr Me
  loc_AC9B35: VCallAd Control_ID_Campo1Txt
  loc_AC9B38: FStAdFunc var_90
  loc_AC9B3B: FLdPr var_90
  loc_AC9B3E:  = Me.Text
  loc_AC9B43: LitStr "CucuPers >= '"
  loc_AC9B46: FLdRfVar var_8C
  loc_AC9B49: FLdPr Me
  loc_AC9B4C: VCallAd Control_ID_Campo1Txt
  loc_AC9B4F: FStAdFunc var_88
  loc_AC9B52: FLdPr var_88
  loc_AC9B55:  = Me.Text
  loc_AC9B5A: ILdRf var_8C
  loc_AC9B5D: ConcatStr
  loc_AC9B5E: CVarStr var_D4
  loc_AC9B61: LitVarStr var_A4, "0"
  loc_AC9B66: FStVarCopyObj var_B4
  loc_AC9B69: FLdRfVar var_B4
  loc_AC9B6C: LitI4 &HB
  loc_AC9B71: ILdRf var_94
  loc_AC9B74: FnLenStr
  loc_AC9B75: SubI4
  loc_AC9B76: FLdRfVar var_C4
  loc_AC9B79: ImpAdCallFPR4  = String(, )
  loc_AC9B7E: FLdRfVar var_C4
  loc_AC9B81: ConcatVar var_E4
  loc_AC9B85: LitVarStr var_F4, "'"
  loc_AC9B8A: ConcatVar var_104
  loc_AC9B8E: CStrVarTmp
  loc_AC9B8F: PopTmpLdAdStr
  loc_AC9B93: FLdPr Me
  loc_AC9B96: MemLdRfVar from_stack_1.PersonaCLS
  loc_AC9B99: NewIfNullPr clspersonas
  loc_AC9B9C: Call clspersonas.Filter(from_stack_1v)
  loc_AC9BA1: FFreeStr var_8C = "": var_94 = ""
  loc_AC9BAA: FFreeAd var_88 = ""
  loc_AC9BB1: FFreeVar var_B4 = "": var_D4 = "": var_C4 = "": var_E4 = ""
  loc_AC9BBE: LitStr "CucuPers"
  loc_AC9BC1: FStStrCopy var_8C
  loc_AC9BC4: FLdRfVar var_8C
  loc_AC9BC7: FLdPr Me
  loc_AC9BCA: MemLdRfVar from_stack_1.PersonaCLS
  loc_AC9BCD: NewIfNullPr clspersonas
  loc_AC9BD0: Call clspersonas.Sort(from_stack_1v)
  loc_AC9BD5: FFree1Str var_8C
  loc_AC9BD8: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CBCD0
  'Data Table: 42E0DC
  loc_9CBCB8: LitStr "0123456789"
  loc_9CBCBB: FStStrCopy var_88
  loc_9CBCBE: FLdRfVar var_88
  loc_9CBCC1: ILdRf KeyAscii
  loc_9CBCC4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CBCC9: IStI2 KeyAscii
  loc_9CBCCC: FFree1Str var_88
  loc_9CBCCF: ExitProcHresult
End Sub

Private Sub Campo3Txt_Change() 'A97DB8
  'Data Table: 42E0DC
  loc_A97D08: LitStr vbNullString
  loc_A97D0B: FLdPr Me
  loc_A97D0E: VCallAd Control_ID_Campo1Txt
  loc_A97D11: FStAdFunc var_88
  loc_A97D14: FLdPr var_88
  loc_A97D17: Me.Text = from_stack_1
  loc_A97D1C: FFree1Ad var_88
  loc_A97D1F: LitStr vbNullString
  loc_A97D22: FLdPr Me
  loc_A97D25: VCallAd Control_ID_Campo2Txt
  loc_A97D28: FStAdFunc var_88
  loc_A97D2B: FLdPr var_88
  loc_A97D2E: Me.Text = from_stack_1
  loc_A97D33: FFree1Ad var_88
  loc_A97D36: FLdRfVar var_8C
  loc_A97D39: FLdPr Me
  loc_A97D3C: VCallAd Control_ID_Campo3Txt
  loc_A97D3F: FStAdFunc var_88
  loc_A97D42: FLdPr var_88
  loc_A97D45:  = Me.Text
  loc_A97D4A: ILdRf var_8C
  loc_A97D4D: LitStr vbNullString
  loc_A97D50: NeStr
  loc_A97D52: FFree1Str var_8C
  loc_A97D55: FFree1Ad var_88
  loc_A97D58: BranchF loc_A97DB5
  loc_A97D5B: LitStr "DecrPers like '" & Chr(37)
  loc_A97D5E: FLdRfVar var_8C
  loc_A97D61: FLdPr Me
  loc_A97D64: VCallAd Control_ID_Campo3Txt
  loc_A97D67: FStAdFunc var_88
  loc_A97D6A: FLdPr var_88
  loc_A97D6D:  = Me.Text
  loc_A97D72: ILdRf var_8C
  loc_A97D75: ConcatStr
  loc_A97D76: FStStrNoPop var_90
  loc_A97D79: LitStr Chr(37) & "'"
  loc_A97D7C: ConcatStr
  loc_A97D7D: PopTmpLdAdStr
  loc_A97D81: FLdPr Me
  loc_A97D84: MemLdRfVar from_stack_1.PersonaCLS
  loc_A97D87: NewIfNullPr clspersonas
  loc_A97D8A: Call clspersonas.Filter(from_stack_1v)
  loc_A97D8F: FFreeStr var_8C = "": var_90 = ""
  loc_A97D98: FFree1Ad var_88
  loc_A97D9B: LitStr "DecrPers, NurePers"
  loc_A97D9E: FStStrCopy var_8C
  loc_A97DA1: FLdRfVar var_8C
  loc_A97DA4: FLdPr Me
  loc_A97DA7: MemLdRfVar from_stack_1.PersonaCLS
  loc_A97DAA: NewIfNullPr clspersonas
  loc_A97DAD: Call clspersonas.Sort(from_stack_1v)
  loc_A97DB2: FFree1Str var_8C
  loc_A97DB5: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9CC6E8
  'Data Table: 42E0DC
  loc_9CC6D0: ILdRf Me
  loc_9CC6D3: FStAdNoPop
  loc_9CC6D7: ImpAdLdRf MemVar_D9C5D8
  loc_9CC6DA: NewIfNullPr Global
  loc_9CC6DD: Global.Unload from_stack_1
  loc_9CC6E2: FFree1Ad var_88
  loc_9CC6E5: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9CBF30
  'Data Table: 42E0DC
  loc_9CBF18: ILdRf Me
  loc_9CBF1B: FStAdNoPop
  loc_9CBF1F: ImpAdLdRf MemVar_D9C5D8
  loc_9CBF22: NewIfNullPr Global
  loc_9CBF25: Global.Unload from_stack_1
  loc_9CBF2A: FFree1Ad var_88
  loc_9CBF2D: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EB6D0
  'Data Table: 42E0DC
  loc_9EB6AC: ILdI2 KeyCode
  loc_9EB6AF: CI4UI1
  loc_9EB6B0: LitI4 &HD
  loc_9EB6B5: EqI4
  loc_9EB6B6: BranchF loc_9EB6CE
  loc_9EB6B9: ILdRf Me
  loc_9EB6BC: FStAdNoPop
  loc_9EB6C0: ImpAdLdRf MemVar_D9C5D8
  loc_9EB6C3: NewIfNullPr Global
  loc_9EB6C6: Global.Unload from_stack_1
  loc_9EB6CB: FFree1Ad var_88
  loc_9EB6CE: ExitProcHresult
End Sub

Private Sub Form_Load() 'A988E4
  'Data Table: 42E0DC
  loc_A98848: LitStr "SELECT * FROM infogov.persona "
  loc_A9884B: LitStr " WHERE DetaPers like '" & Chr(37)
  loc_A9884E: ConcatStr
  loc_A9884F: FStStrNoPop var_88
  loc_A98852: FLdPr Me
  loc_A98855: MemLdStr sWhere
  loc_A98858: ConcatStr
  loc_A98859: FStStrNoPop var_8C
  loc_A9885C: LitStr Chr(37) & "'"
  loc_A9885F: ConcatStr
  loc_A98860: FStStrNoPop var_90
  loc_A98863: LitStr " ORDER BY infogov.persona.DetaPers"
  loc_A98866: ConcatStr
  loc_A98867: FStStrNoPop var_94
  loc_A9886A: FLdPr Me
  loc_A9886D: MemLdRfVar from_stack_1.PersonaCLS
  loc_A98870: NewIfNullPr clspersonas
  loc_A98873: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A98878: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_A98883: LitI4 0
  loc_A98888: LitI4 1
  loc_A9888D: FLdRfVar var_98
  loc_A98890: Redim
  loc_A9889A: FLdPr Me
  loc_A9889D: MemLdRfVar from_stack_1.PersonaCLS
  loc_A988A0: NewIfNullAd
  loc_A988A3: FStAd var_9C 
  loc_A988A7: FLdRfVar var_9C
  loc_A988AA: CVarRef
  loc_A988AF: ParmAry1St
  loc_A988B5: FLdPr Me
  loc_A988B8: VCallAd Control_ID_dgdABMS
  loc_A988BB: CVarAd
  loc_A988BF: ParmAry1St
  loc_A988C5: FLdRfVar var_98
  loc_A988C8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A988CD: ILdRf var_9C
  loc_A988D0: CastAd
  loc_A988D3: FLdPr Me
  loc_A988D6: MemStAdFunc
  loc_A988DA: FLdRfVar var_98
  loc_A988DD: Erase
  loc_A988DE: FFree1Ad var_9C
  loc_A988E1: ExitProcHresult
End Sub

Private Sub Form_Activate() '9C8C20
  'Data Table: 42E0DC
  loc_9C8C08: FLdPr Me
  loc_9C8C0B: VCallAd Control_ID_Campo2Txt
  loc_9C8C0E: FStAdFunc var_88
  loc_9C8C11: FLdPr var_88
  loc_9C8C14: Me.SetFocus
  loc_9C8C19: FFree1Ad var_88
  loc_9C8C1C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A1141C
  'Data Table: 42E0DC
  loc_A113E0: ILdI2 KeyAscii
  loc_A113E3: LitI2_Byte &HD
  loc_A113E5: EqI2
  loc_A113E6: BranchF loc_A113F7
  loc_A113E9: LitVar_TRUE var_A4
  loc_A113EC: LitStr "{Tab}"
  loc_A113EF: ImpAdCallFPR4 SendKeys , 
  loc_A113F4: FFree1Var var_A4 = ""
  loc_A113F7: ILdI2 KeyAscii
  loc_A113FA: LitI2_Byte &H1B
  loc_A113FC: EqI2
  loc_A113FD: BranchF loc_A1141A
  loc_A11400: ILdRf Me
  loc_A11403: FStAdNoPop
  loc_A11407: ImpAdLdRf MemVar_D9C5D8
  loc_A1140A: NewIfNullPr Global
  loc_A1140D: Global.Unload from_stack_1
  loc_A11412: FFree1Ad var_A8
  loc_A11415: LitI2_Byte 0
  loc_A11417: IStI2 KeyAscii
  loc_A1141A: ExitProcHresult
End Sub

Public Function sWhereGet() '42E74C
  sWhereGet = sWhere
End Function

Public Sub sWherePut(Value) '42E75B
  sWhere = Value
End Sub

Public Function global_4382940Get() '42E76A
  global_4382940Get = global_4382940
End Function

Public Sub global_4382940Put(Value) '42E784
  global_4382940 = Value
End Sub

Public Sub global_4382940Set(Value) '42E79E
  global_4382940 = Value
End Sub
