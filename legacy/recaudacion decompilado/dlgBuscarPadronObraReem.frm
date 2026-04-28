VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarPadronObraReem
  Caption = "Buscar Padrón por obra reembolsable..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarPadronObraReem.frx":0000
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
    Left = 2520
    Top = 720
    Width = 5895
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
    Left = 2520
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
    Width = 8415
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarPadronObraReem.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Padrón:"
    Left = 1605
    Top = 240
    Width = 825
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
    Caption = "Apellido y Nombre:"
    Left = 465
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

Attribute VB_Name = "dlgBuscarPadronObraReem"

Public sOrdeObre As String
Public ObreInmuCLS As New Class


Private Sub Campo1Txt_Change() 'A8D4EC
  'Data Table: 41DAA8
  loc_A8D464: LitStr vbNullString
  loc_A8D467: FLdPr Me
  loc_A8D46A: VCallAd Control_ID_Campo2Txt
  loc_A8D46D: FStAdFunc var_88
  loc_A8D470: FLdPr var_88
  loc_A8D473: Me.Text = from_stack_1
  loc_A8D478: FFree1Ad var_88
  loc_A8D47B: LitStr "SELECT obreinmu.CodiInmu, DetaPers FROM obreinmu "
  loc_A8D47E: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu "
  loc_A8D481: ConcatStr
  loc_A8D482: FStStrNoPop var_8C
  loc_A8D485: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_A8D488: ConcatStr
  loc_A8D489: FStStrNoPop var_90
  loc_A8D48C: LitStr " WHERE OrdeObre = '"
  loc_A8D48F: ConcatStr
  loc_A8D490: FStStrNoPop var_94
  loc_A8D493: FLdPr Me
  loc_A8D496: MemLdStr sOrdeObre
  loc_A8D499: ConcatStr
  loc_A8D49A: FStStrNoPop var_98
  loc_A8D49D: LitStr "' AND obreinmu.CodiInmu like '"
  loc_A8D4A0: ConcatStr
  loc_A8D4A1: FStStrNoPop var_A0
  loc_A8D4A4: FLdRfVar var_9C
  loc_A8D4A7: FLdPr Me
  loc_A8D4AA: VCallAd Control_ID_Campo1Txt
  loc_A8D4AD: FStAdFunc var_88
  loc_A8D4B0: FLdPr var_88
  loc_A8D4B3:  = Me.Text
  loc_A8D4B8: ILdRf var_9C
  loc_A8D4BB: ConcatStr
  loc_A8D4BC: FStStrNoPop var_A4
  loc_A8D4BF: LitStr Chr(37) & "' ORDER BY obreinmu.CodiInmu"
  loc_A8D4C2: ConcatStr
  loc_A8D4C3: FStStrNoPop var_A8
  loc_A8D4C6: FLdPr Me
  loc_A8D4C9: MemLdRfVar from_stack_1.ObreInmuCLS
  loc_A8D4CC: NewIfNullPr clsobreinmu
  loc_A8D4CF: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_A8D4D4: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_A0 = "": var_9C = "": var_A4 = ""
  loc_A8D4E7: FFree1Ad var_88
  loc_A8D4EA: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DA758
  'Data Table: 41DAA8
  loc_9DA740: LitStr "0123456789"
  loc_9DA743: FStStrCopy var_88
  loc_9DA746: FLdRfVar var_88
  loc_9DA749: ILdRf KeyAscii
  loc_9DA74C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA751: IStI2 KeyAscii
  loc_9DA754: FFree1Str var_88
  loc_9DA757: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9DA298
  'Data Table: 41DAA8
  loc_9DA280: ILdRf Me
  loc_9DA283: FStAdNoPop
  loc_9DA287: ImpAdLdRf MemVar_D9C5D8
  loc_9DA28A: NewIfNullPr Global
  loc_9DA28D: Global.Unload from_stack_1
  loc_9DA292: FFree1Ad var_88
  loc_9DA295: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9ECDD8
  'Data Table: 41DAA8
  loc_9ECDB4: ILdI2 KeyCode
  loc_9ECDB7: CI4UI1
  loc_9ECDB8: LitI4 &HD
  loc_9ECDBD: EqI4
  loc_9ECDBE: BranchF loc_9ECDD6
  loc_9ECDC1: ILdRf Me
  loc_9ECDC4: FStAdNoPop
  loc_9ECDC8: ImpAdLdRf MemVar_D9C5D8
  loc_9ECDCB: NewIfNullPr Global
  loc_9ECDCE: Global.Unload from_stack_1
  loc_9ECDD3: FFree1Ad var_88
  loc_9ECDD6: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB0D14
  'Data Table: 41DAA8
  loc_AB0C54: FLdRfVar var_94
  loc_AB0C57: LitVarStr var_A4, vbNullString
  loc_AB0C5C: HardType
  loc_AB0C5D: EqVarBool
  loc_AB0C5F: BranchF loc_AB0C9A
  loc_AB0C62: LitStr "SELECT obreinmu.CodiInmu, DetaPers FROM obreinmu "
  loc_AB0C65: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu "
  loc_AB0C68: ConcatStr
  loc_AB0C69: FStStrNoPop var_B8
  loc_AB0C6C: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_AB0C6F: ConcatStr
  loc_AB0C70: FStStrNoPop var_BC
  loc_AB0C73: LitStr " WHERE OrdeObre = '"
  loc_AB0C76: ConcatStr
  loc_AB0C77: FStStrNoPop var_C0
  loc_AB0C7A: FLdPr Me
  loc_AB0C7D: MemLdStr sOrdeObre
  loc_AB0C80: ConcatStr
  loc_AB0C81: FStStrNoPop var_C4
  loc_AB0C84: LitStr "' ORDER BY DetaPers"
  loc_AB0C87: ConcatStr
  loc_AB0C88: CVarStr var_B4
  loc_AB0C8B: FStVar var_94
  loc_AB0C8F: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_AB0C9A: FLdRfVar var_94
  loc_AB0C9D: CStrVarVal var_B8
  loc_AB0CA1: FLdPr Me
  loc_AB0CA4: MemLdRfVar from_stack_1.ObreInmuCLS
  loc_AB0CA7: NewIfNullPr clsobreinmu
  loc_AB0CAA: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_AB0CAF: FFree1Str var_B8
  loc_AB0CB2: LitI4 0
  loc_AB0CB7: LitI4 1
  loc_AB0CBC: FLdRfVar var_C8
  loc_AB0CBF: Redim
  loc_AB0CC9: FLdPr Me
  loc_AB0CCC: MemLdRfVar from_stack_1.ObreInmuCLS
  loc_AB0CCF: NewIfNullAd
  loc_AB0CD2: FStAd var_CC 
  loc_AB0CD6: FLdRfVar var_CC
  loc_AB0CD9: CVarRef
  loc_AB0CDE: ParmAry1St
  loc_AB0CE4: FLdPr Me
  loc_AB0CE7: VCallAd Control_ID_dgdABMS
  loc_AB0CEA: CVarAd
  loc_AB0CEE: ParmAry1St
  loc_AB0CF4: FLdRfVar var_C8
  loc_AB0CF7: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB0CFC: ILdRf var_CC
  loc_AB0CFF: CastAd
  loc_AB0D02: FLdPr Me
  loc_AB0D05: MemStAdFunc
  loc_AB0D09: FLdRfVar var_C8
  loc_AB0D0C: Erase
  loc_AB0D0D: FFree1Ad var_CC
  loc_AB0D10: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B2934
  'Data Table: 41DAA8
  loc_9B2928: LitVarStr var_A4, vbNullString
  loc_9B292D: FStVarCopy
  loc_9B2931: ExitProcHresult
End Sub

Private Sub Form_Activate() '9DA460
  'Data Table: 41DAA8
  loc_9DA448: FLdPr Me
  loc_9DA44B: VCallAd Control_ID_Campo2Txt
  loc_9DA44E: FStAdFunc var_88
  loc_9DA451: FLdPr var_88
  loc_9DA454: Me.SetFocus
  loc_9DA459: FFree1Ad var_88
  loc_9DA45C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A107E0
  'Data Table: 41DAA8
  loc_A107A4: ILdI2 KeyAscii
  loc_A107A7: LitI2_Byte &HD
  loc_A107A9: EqI2
  loc_A107AA: BranchF loc_A107BB
  loc_A107AD: LitVar_TRUE var_A4
  loc_A107B0: LitStr "{Tab}"
  loc_A107B3: ImpAdCallFPR4 SendKeys , 
  loc_A107B8: FFree1Var var_A4 = ""
  loc_A107BB: ILdI2 KeyAscii
  loc_A107BE: LitI2_Byte &H1B
  loc_A107C0: EqI2
  loc_A107C1: BranchF loc_A107DE
  loc_A107C4: ILdRf Me
  loc_A107C7: FStAdNoPop
  loc_A107CB: ImpAdLdRf MemVar_D9C5D8
  loc_A107CE: NewIfNullPr Global
  loc_A107D1: Global.Unload from_stack_1
  loc_A107D6: FFree1Ad var_A8
  loc_A107D9: LitI2_Byte 0
  loc_A107DB: IStI2 KeyAscii
  loc_A107DE: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9DA084
  'Data Table: 41DAA8
  loc_9DA06C: ILdRf Me
  loc_9DA06F: FStAdNoPop
  loc_9DA073: ImpAdLdRf MemVar_D9C5D8
  loc_9DA076: NewIfNullPr Global
  loc_9DA079: Global.Unload from_stack_1
  loc_9DA07E: FFree1Ad var_88
  loc_9DA081: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9DA200
  'Data Table: 41DAA8
  loc_9DA1E8: ILdRf Me
  loc_9DA1EB: FStAdNoPop
  loc_9DA1EF: ImpAdLdRf MemVar_D9C5D8
  loc_9DA1F2: NewIfNullPr Global
  loc_9DA1F5: Global.Unload from_stack_1
  loc_9DA1FA: FFree1Ad var_88
  loc_9DA1FD: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A8D6A4
  'Data Table: 41DAA8
  loc_A8D61C: LitStr vbNullString
  loc_A8D61F: FLdPr Me
  loc_A8D622: VCallAd Control_ID_Campo1Txt
  loc_A8D625: FStAdFunc var_88
  loc_A8D628: FLdPr var_88
  loc_A8D62B: Me.Text = from_stack_1
  loc_A8D630: FFree1Ad var_88
  loc_A8D633: LitStr "SELECT obreinmu.CodiInmu, DetaPers FROM obreinmu "
  loc_A8D636: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu "
  loc_A8D639: ConcatStr
  loc_A8D63A: FStStrNoPop var_8C
  loc_A8D63D: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_A8D640: ConcatStr
  loc_A8D641: FStStrNoPop var_90
  loc_A8D644: LitStr " WHERE OrdeObre = '"
  loc_A8D647: ConcatStr
  loc_A8D648: FStStrNoPop var_94
  loc_A8D64B: FLdPr Me
  loc_A8D64E: MemLdStr sOrdeObre
  loc_A8D651: ConcatStr
  loc_A8D652: FStStrNoPop var_98
  loc_A8D655: LitStr "' AND DetaPers like '" & Chr(37)
  loc_A8D658: ConcatStr
  loc_A8D659: FStStrNoPop var_A0
  loc_A8D65C: FLdRfVar var_9C
  loc_A8D65F: FLdPr Me
  loc_A8D662: VCallAd Control_ID_Campo2Txt
  loc_A8D665: FStAdFunc var_88
  loc_A8D668: FLdPr var_88
  loc_A8D66B:  = Me.Text
  loc_A8D670: ILdRf var_9C
  loc_A8D673: ConcatStr
  loc_A8D674: FStStrNoPop var_A4
  loc_A8D677: LitStr Chr(37) & "' ORDER BY DetaPers"
  loc_A8D67A: ConcatStr
  loc_A8D67B: FStStrNoPop var_A8
  loc_A8D67E: FLdPr Me
  loc_A8D681: MemLdRfVar from_stack_1.ObreInmuCLS
  loc_A8D684: NewIfNullPr clsobreinmu
  loc_A8D687: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_A8D68C: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_A0 = "": var_9C = "": var_A4 = ""
  loc_A8D69F: FFree1Ad var_88
  loc_A8D6A2: ExitProcHresult
End Sub

Public Function sOrdeObreGet() '41E060
  sOrdeObreGet = sOrdeObre
End Function

Public Sub sOrdeObrePut(Value) '41E06F
  sOrdeObre = Value
End Sub

Public Function global_4315816Get() '41E07E
  global_4315816Get = global_4315816
End Function

Public Sub global_4315816Put(Value) '41E098
  global_4315816 = Value
End Sub

Public Sub global_4315816Set(Value) '41E0B2
  global_4315816 = Value
End Sub
