VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarInstanciasdelApremio
  Caption = "Buscar Instancias del Apremio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarInstanciasdelApremio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10140
  ClientHeight = 5424
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2160
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
    Left = 2160
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
    Width = 9855
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarInstanciasdelApremio.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Apellido y Nombre:"
    Left = 120
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
  Begin VB.Label Label2
    Caption = "Nº de Boleta:"
    Left = 720
    Top = 240
    Width = 1395
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

Attribute VB_Name = "dlgBuscarInstanciasdelApremio"

Public ApremioCLS As New Class


Private Sub dgdABMS_DblClick() '9D9CA8
  'Data Table: 410BDC
  loc_9D9C90: ILdRf Me
  loc_9D9C93: FStAdNoPop
  loc_9D9C97: ImpAdLdRf MemVar_D9C5D8
  loc_9D9C9A: NewIfNullPr Global
  loc_9D9C9D: Global.Unload from_stack_1
  loc_9D9CA2: FFree1Ad var_88
  loc_9D9CA5: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EC540
  'Data Table: 410BDC
  loc_9EC51C: ILdI2 KeyCode
  loc_9EC51F: CI4UI1
  loc_9EC520: LitI4 &HD
  loc_9EC525: EqI4
  loc_9EC526: BranchF loc_9EC53E
  loc_9EC529: ILdRf Me
  loc_9EC52C: FStAdNoPop
  loc_9EC530: ImpAdLdRf MemVar_D9C5D8
  loc_9EC533: NewIfNullPr Global
  loc_9EC536: Global.Unload from_stack_1
  loc_9EC53B: FFree1Ad var_88
  loc_9EC53E: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A5C628
  'Data Table: 410BDC
  loc_A5C5D0: LitStr vbNullString
  loc_A5C5D3: FLdPr Me
  loc_A5C5D6: VCallAd Control_ID_Campo2Txt
  loc_A5C5D9: FStAdFunc var_88
  loc_A5C5DC: FLdPr var_88
  loc_A5C5DF: Me.Text = from_stack_1
  loc_A5C5E4: FFree1Ad var_88
  loc_A5C5E7: LitStr "SELECT NumeApre, DetaPers FROM apremio LEFT JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers WHERE NumeApre like '"
  loc_A5C5EA: FLdRfVar var_8C
  loc_A5C5ED: FLdPr Me
  loc_A5C5F0: VCallAd Control_ID_Campo1Txt
  loc_A5C5F3: FStAdFunc var_88
  loc_A5C5F6: FLdPr var_88
  loc_A5C5F9:  = Me.Text
  loc_A5C5FE: ILdRf var_8C
  loc_A5C601: ConcatStr
  loc_A5C602: FStStrNoPop var_90
  loc_A5C605: LitStr Chr(37) & "' ORDER BY NumeApre"
  loc_A5C608: ConcatStr
  loc_A5C609: FStStrNoPop var_94
  loc_A5C60C: FLdPr Me
  loc_A5C60F: MemLdRfVar from_stack_1.ApremioCLS
  loc_A5C612: NewIfNullPr clsapremio
  loc_A5C615: Call clsapremio.RedefineRS(from_stack_1v)
  loc_A5C61A: FFreeStr var_8C = "": var_90 = ""
  loc_A5C623: FFree1Ad var_88
  loc_A5C626: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DA038
  'Data Table: 410BDC
  loc_9DA020: LitStr "0123456789"
  loc_9DA023: FStStrCopy var_88
  loc_9DA026: FLdRfVar var_88
  loc_9DA029: ILdRf KeyAscii
  loc_9DA02C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA031: IStI2 KeyAscii
  loc_9DA034: FFree1Str var_88
  loc_9DA037: ExitProcHresult
End Sub

Private Sub Form_Load() 'A76E24
  'Data Table: 410BDC
  loc_A76DB4: LitStr "SELECT NumeApre, DetaPers FROM apremio LEFT JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers ORDER BY NumeApre"
  loc_A76DB7: FLdPr Me
  loc_A76DBA: MemLdRfVar from_stack_1.ApremioCLS
  loc_A76DBD: NewIfNullPr clsapremio
  loc_A76DC0: Call clsapremio.RedefineRS(from_stack_1v)
  loc_A76DC5: LitI4 0
  loc_A76DCA: LitI4 1
  loc_A76DCF: FLdRfVar var_88
  loc_A76DD2: Redim
  loc_A76DDC: FLdPr Me
  loc_A76DDF: MemLdRfVar from_stack_1.ApremioCLS
  loc_A76DE2: NewIfNullAd
  loc_A76DE5: FStAd var_8C 
  loc_A76DE9: FLdRfVar var_8C
  loc_A76DEC: CVarRef
  loc_A76DF1: ParmAry1St
  loc_A76DF7: FLdPr Me
  loc_A76DFA: VCallAd Control_ID_dgdABMS
  loc_A76DFD: CVarAd
  loc_A76E01: ParmAry1St
  loc_A76E07: FLdRfVar var_88
  loc_A76E0A: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A76E0F: ILdRf var_8C
  loc_A76E12: CastAd
  loc_A76E15: FLdPr Me
  loc_A76E18: MemStAdFunc
  loc_A76E1C: FLdRfVar var_88
  loc_A76E1F: Erase
  loc_A76E20: FFree1Ad var_8C
  loc_A76E23: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D9A94
  'Data Table: 410BDC
  loc_9D9A7C: FLdPr Me
  loc_9D9A7F: VCallAd Control_ID_Campo2Txt
  loc_9D9A82: FStAdFunc var_88
  loc_9D9A85: FLdPr var_88
  loc_9D9A88: Me.SetFocus
  loc_9D9A8D: FFree1Ad var_88
  loc_9D9A90: ExitProcHresult
  loc_9D9A91: LitStr "?A$"
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D97E8
  'Data Table: 410BDC
  loc_9D97D0: ILdI2 KeyAscii
  loc_9D97D3: LitI2_Byte &HD
  loc_9D97D5: EqI2
  loc_9D97D6: BranchF loc_9D97E7
  loc_9D97D9: LitVar_TRUE var_A4
  loc_9D97DC: LitStr "{Tab}"
  loc_9D97DF: ImpAdCallFPR4 SendKeys , 
  loc_9D97E4: FFree1Var var_A4 = ""
  loc_9D97E7: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D9750
  'Data Table: 410BDC
  loc_9D9738: ILdRf Me
  loc_9D973B: FStAdNoPop
  loc_9D973F: ImpAdLdRf MemVar_D9C5D8
  loc_9D9742: NewIfNullPr Global
  loc_9D9745: Global.Unload from_stack_1
  loc_9D974A: FFree1Ad var_88
  loc_9D974D: ExitProcHresult
  loc_9D974E: NewIfNullPr Me
End Sub

Private Sub Campo2Txt_Change() 'A5C590
  'Data Table: 410BDC
  loc_A5C538: LitStr vbNullString
  loc_A5C53B: FLdPr Me
  loc_A5C53E: VCallAd Control_ID_Campo1Txt
  loc_A5C541: FStAdFunc var_88
  loc_A5C544: FLdPr var_88
  loc_A5C547: Me.Text = from_stack_1
  loc_A5C54C: FFree1Ad var_88
  loc_A5C54F: LitStr "SELECT NumeApre, DetaPers FROM apremio LEFT JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers WHERE DetaPers like '" & Chr(37)
  loc_A5C552: FLdRfVar var_8C
  loc_A5C555: FLdPr Me
  loc_A5C558: VCallAd Control_ID_Campo2Txt
  loc_A5C55B: FStAdFunc var_88
  loc_A5C55E: FLdPr var_88
  loc_A5C561:  = Me.Text
  loc_A5C566: ILdRf var_8C
  loc_A5C569: ConcatStr
  loc_A5C56A: FStStrNoPop var_90
  loc_A5C56D: LitStr Chr(37) & "' ORDER BY DetaPers"
  loc_A5C570: ConcatStr
  loc_A5C571: FStStrNoPop var_94
  loc_A5C574: FLdPr Me
  loc_A5C577: MemLdRfVar from_stack_1.ApremioCLS
  loc_A5C57A: NewIfNullPr clsapremio
  loc_A5C57D: Call clsapremio.RedefineRS(from_stack_1v)
  loc_A5C582: FFreeStr var_8C = "": var_90 = ""
  loc_A5C58B: FFree1Ad var_88
  loc_A5C58E: ExitProcHresult
End Sub

Public Function global_4262876Get() '4110E8
  global_4262876Get = global_4262876
End Function

Public Sub global_4262876Put(Value) '411102
  global_4262876 = Value
End Sub

Public Sub global_4262876Set(Value) '41111C
  global_4262876 = Value
End Sub
