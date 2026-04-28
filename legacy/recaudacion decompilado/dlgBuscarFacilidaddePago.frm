VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarFacilidaddePago
  Caption = "Buscar Facilidad de Pago Por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarFacilidaddePago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 13656
  ClientHeight = 7200
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 120
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
  Begin VB.TextBox Campo4Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1560
    Width = 7095
    Height = 360
    TabIndex = 3
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
  Begin VB.TextBox Campo3Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1080
    Width = 1695
    Height = 360
    TabIndex = 2
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
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 600
    Width = 1695
    Height = 360
    TabIndex = 1
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1680
    Top = 6600
    Width = 1335
    Height = 495
    TabIndex = 6
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
    Top = 6600
    Width = 1335
    Height = 495
    TabIndex = 5
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
    Top = 2160
    Width = 11895
    Height = 4335
    Tag = "1"
    TabIndex = 4
    OleObjectBlob = "dlgBuscarFacilidaddePago.frx":08CA
  End
  Begin VB.Label Label4
    Caption = "Numero de Facilidad:"
    Left = 360
    Top = 120
    Width = 2235
    Height = 300
    TabIndex = 10
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
    Left = 750
    Top = 600
    Width = 1845
    Height = 300
    TabIndex = 9
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
    Left = 630
    Top = 1560
    Width = 1965
    Height = 300
    TabIndex = 8
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
    Caption = "Cuenta:"
    Left = 1755
    Top = 1080
    Width = 840
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
End

Attribute VB_Name = "dlgBuscarFacilidaddePago"

Public BuscarCLS As New Class


Private Sub OKButton_Click() '9DC930
  'Data Table: 43E0C0
  loc_9DC918: ILdRf Me
  loc_9DC91B: FStAdNoPop
  loc_9DC91F: ImpAdLdRf MemVar_D9C5D8
  loc_9DC922: NewIfNullPr Global
  loc_9DC925: Global.Unload from_stack_1
  loc_9DC92A: FFree1Ad var_88
  loc_9DC92D: ExitProcHresult
  loc_9DC92E: Ary1LdCy
End Sub

Private Sub CancelButton_Click() '9DCD0C
  'Data Table: 43E0C0
  loc_9DCCF4: ILdRf Me
  loc_9DCCF7: FStAdNoPop
  loc_9DCCFB: ImpAdLdRf MemVar_D9C5D8
  loc_9DCCFE: NewIfNullPr Global
  loc_9DCD01: Global.Unload from_stack_1
  loc_9DCD06: FFree1Ad var_88
  loc_9DCD09: ExitProcHresult
End Sub

Private Sub Campo3Txt_Change() 'A81794
  'Data Table: 43E0C0
  loc_A8170C: LitStr vbNullString
  loc_A8170F: FLdPr Me
  loc_A81712: VCallAd Control_ID_Campo1Txt
  loc_A81715: FStAdFunc var_88
  loc_A81718: FLdPr var_88
  loc_A8171B: Me.Text = from_stack_1
  loc_A81720: FFree1Ad var_88
  loc_A81723: LitStr vbNullString
  loc_A81726: FLdPr Me
  loc_A81729: VCallAd Control_ID_Campo2Txt
  loc_A8172C: FStAdFunc var_88
  loc_A8172F: FLdPr var_88
  loc_A81732: Me.Text = from_stack_1
  loc_A81737: FFree1Ad var_88
  loc_A8173A: LitStr vbNullString
  loc_A8173D: FLdPr Me
  loc_A81740: VCallAd Control_ID_Campo4Txt
  loc_A81743: FStAdFunc var_88
  loc_A81746: FLdPr var_88
  loc_A81749: Me.Text = from_stack_1
  loc_A8174E: FFree1Ad var_88
  loc_A81751: LitStr "SELECT facipago.CodiFapa, facipago.CucuPers, facipago.CodiOfic, facipago.CuenCtct, infogov.persona.DetaPers, EstaFapa FROM facipago LEFT JOIN infogov.persona ON facipago.CucuPers = infogov.persona.CucuPers WHERE facipago.CuenCtct like '"
  loc_A81754: FLdRfVar var_8C
  loc_A81757: FLdPr Me
  loc_A8175A: VCallAd Control_ID_Campo3Txt
  loc_A8175D: FStAdFunc var_88
  loc_A81760: FLdPr var_88
  loc_A81763:  = Me.Text
  loc_A81768: ILdRf var_8C
  loc_A8176B: ConcatStr
  loc_A8176C: FStStrNoPop var_90
  loc_A8176F: LitStr Chr(37) & "' ORDER BY  facipago.CuenCtct"
  loc_A81772: ConcatStr
  loc_A81773: FStStrNoPop var_94
  loc_A81776: FLdPr Me
  loc_A81779: MemLdRfVar from_stack_1.BuscarCLS
  loc_A8177C: NewIfNullPr clsbase
  loc_A8177F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A81784: FFreeStr var_8C = "": var_90 = ""
  loc_A8178D: FFree1Ad var_88
  loc_A81790: ExitProcHresult
End Sub

Private Sub Campo4Txt_Change() 'A81154
  'Data Table: 43E0C0
  loc_A810CC: LitStr vbNullString
  loc_A810CF: FLdPr Me
  loc_A810D2: VCallAd Control_ID_Campo1Txt
  loc_A810D5: FStAdFunc var_88
  loc_A810D8: FLdPr var_88
  loc_A810DB: Me.Text = from_stack_1
  loc_A810E0: FFree1Ad var_88
  loc_A810E3: LitStr vbNullString
  loc_A810E6: FLdPr Me
  loc_A810E9: VCallAd Control_ID_Campo2Txt
  loc_A810EC: FStAdFunc var_88
  loc_A810EF: FLdPr var_88
  loc_A810F2: Me.Text = from_stack_1
  loc_A810F7: FFree1Ad var_88
  loc_A810FA: LitStr vbNullString
  loc_A810FD: FLdPr Me
  loc_A81100: VCallAd Control_ID_Campo3Txt
  loc_A81103: FStAdFunc var_88
  loc_A81106: FLdPr var_88
  loc_A81109: Me.Text = from_stack_1
  loc_A8110E: FFree1Ad var_88
  loc_A81111: LitStr "SELECT facipago.CodiFapa, facipago.CucuPers, facipago.CodiOfic, facipago.CuenCtct, infogov.persona.DetaPers, EstaFapa FROM facipago LEFT JOIN infogov.persona ON facipago.CucuPers = infogov.persona.CucuPers WHERE infogov.persona.DetaPers like '" & Chr(37)
  loc_A81114: FLdRfVar var_8C
  loc_A81117: FLdPr Me
  loc_A8111A: VCallAd Control_ID_Campo4Txt
  loc_A8111D: FStAdFunc var_88
  loc_A81120: FLdPr var_88
  loc_A81123:  = Me.Text
  loc_A81128: ILdRf var_8C
  loc_A8112B: ConcatStr
  loc_A8112C: FStStrNoPop var_90
  loc_A8112F: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_A81132: ConcatStr
  loc_A81133: FStStrNoPop var_94
  loc_A81136: FLdPr Me
  loc_A81139: MemLdRfVar from_stack_1.BuscarCLS
  loc_A8113C: NewIfNullPr clsbase
  loc_A8113F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A81144: FFreeStr var_8C = "": var_90 = ""
  loc_A8114D: FFree1Ad var_88
  loc_A81150: ExitProcHresult
  loc_A81151: FLdRfVar arg_0
End Sub

Private Sub Campo2Txt_Change() 'A812E4
  'Data Table: 43E0C0
  loc_A8125C: LitStr vbNullString
  loc_A8125F: FLdPr Me
  loc_A81262: VCallAd Control_ID_Campo1Txt
  loc_A81265: FStAdFunc var_88
  loc_A81268: FLdPr var_88
  loc_A8126B: Me.Text = from_stack_1
  loc_A81270: FFree1Ad var_88
  loc_A81273: LitStr vbNullString
  loc_A81276: FLdPr Me
  loc_A81279: VCallAd Control_ID_Campo3Txt
  loc_A8127C: FStAdFunc var_88
  loc_A8127F: FLdPr var_88
  loc_A81282: Me.Text = from_stack_1
  loc_A81287: FFree1Ad var_88
  loc_A8128A: LitStr vbNullString
  loc_A8128D: FLdPr Me
  loc_A81290: VCallAd Control_ID_Campo4Txt
  loc_A81293: FStAdFunc var_88
  loc_A81296: FLdPr var_88
  loc_A81299: Me.Text = from_stack_1
  loc_A8129E: FFree1Ad var_88
  loc_A812A1: LitStr "SELECT facipago.CodiFapa, facipago.CucuPers, facipago.CodiOfic, facipago.CuenCtct, infogov.persona.DetaPers, EstaFapa FROM facipago LEFT JOIN infogov.persona ON facipago.CucuPers = infogov.persona.CucuPers WHERE facipago.CucuPers like '"
  loc_A812A4: FLdRfVar var_8C
  loc_A812A7: FLdPr Me
  loc_A812AA: VCallAd Control_ID_Campo2Txt
  loc_A812AD: FStAdFunc var_88
  loc_A812B0: FLdPr var_88
  loc_A812B3:  = Me.Text
  loc_A812B8: ILdRf var_8C
  loc_A812BB: ConcatStr
  loc_A812BC: FStStrNoPop var_90
  loc_A812BF: LitStr Chr(37) & "' ORDER BY  facipago.CucuPers"
  loc_A812C2: ConcatStr
  loc_A812C3: FStStrNoPop var_94
  loc_A812C6: FLdPr Me
  loc_A812C9: MemLdRfVar from_stack_1.BuscarCLS
  loc_A812CC: NewIfNullPr clsbase
  loc_A812CF: Call clsbase.RedefineRS(from_stack_1v)
  loc_A812D4: FFreeStr var_8C = "": var_90 = ""
  loc_A812DD: FFree1Ad var_88
  loc_A812E0: ExitProcHresult
  loc_A812E1: FLdPr arg_0
End Sub

Private Sub Campo1Txt_Change() 'A8108C
  'Data Table: 43E0C0
  loc_A81004: LitStr vbNullString
  loc_A81007: FLdPr Me
  loc_A8100A: VCallAd Control_ID_Campo2Txt
  loc_A8100D: FStAdFunc var_88
  loc_A81010: FLdPr var_88
  loc_A81013: Me.Text = from_stack_1
  loc_A81018: FFree1Ad var_88
  loc_A8101B: LitStr vbNullString
  loc_A8101E: FLdPr Me
  loc_A81021: VCallAd Control_ID_Campo3Txt
  loc_A81024: FStAdFunc var_88
  loc_A81027: FLdPr var_88
  loc_A8102A: Me.Text = from_stack_1
  loc_A8102F: FFree1Ad var_88
  loc_A81032: LitStr vbNullString
  loc_A81035: FLdPr Me
  loc_A81038: VCallAd Control_ID_Campo4Txt
  loc_A8103B: FStAdFunc var_88
  loc_A8103E: FLdPr var_88
  loc_A81041: Me.Text = from_stack_1
  loc_A81046: FFree1Ad var_88
  loc_A81049: LitStr "SELECT facipago.CodiFapa, facipago.CucuPers, facipago.CodiOfic, facipago.CuenCtct, infogov.persona.DetaPers, EstaFapa FROM facipago LEFT JOIN infogov.persona ON facipago.CucuPers = infogov.persona.CucuPers WHERE facipago.CodiFapa like '"
  loc_A8104C: FLdRfVar var_8C
  loc_A8104F: FLdPr Me
  loc_A81052: VCallAd Control_ID_Campo1Txt
  loc_A81055: FStAdFunc var_88
  loc_A81058: FLdPr var_88
  loc_A8105B:  = Me.Text
  loc_A81060: ILdRf var_8C
  loc_A81063: ConcatStr
  loc_A81064: FStStrNoPop var_90
  loc_A81067: LitStr Chr(37) & "' ORDER BY  facipago.CodiFapa"
  loc_A8106A: ConcatStr
  loc_A8106B: FStStrNoPop var_94
  loc_A8106E: FLdPr Me
  loc_A81071: MemLdRfVar from_stack_1.BuscarCLS
  loc_A81074: NewIfNullPr clsbase
  loc_A81077: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8107C: FFreeStr var_8C = "": var_90 = ""
  loc_A81085: FFree1Ad var_88
  loc_A81088: ExitProcHresult
  loc_A81089: SetLastSystemError
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DC4BC
  'Data Table: 43E0C0
  loc_9DC4A4: LitStr "0123456789"
  loc_9DC4A7: FStStrCopy var_88
  loc_9DC4AA: FLdRfVar var_88
  loc_9DC4AD: ILdRf KeyAscii
  loc_9DC4B0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DC4B5: IStI2 KeyAscii
  loc_9DC4B8: FFree1Str var_88
  loc_9DC4BB: ExitProcHresult
End Sub

Private Sub Form_Load() 'A78C60
  'Data Table: 43E0C0
  loc_A78BF0: LitStr "SELECT facipago.CodiFapa, facipago.CucuPers, facipago.CodiOfic, facipago.CuenCtct, infogov.persona.DetaPers, EstaFapa FROM facipago LEFT JOIN infogov.persona ON facipago.CucuPers = infogov.persona.CucuPers ORDER BY infogov.persona.DetaPers LIMIT 0,200"
  loc_A78BF3: FLdPr Me
  loc_A78BF6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78BF9: NewIfNullPr clsbase
  loc_A78BFC: Call clsbase.RedefineRS(from_stack_1v)
  loc_A78C01: LitI4 0
  loc_A78C06: LitI4 1
  loc_A78C0B: FLdRfVar var_88
  loc_A78C0E: Redim
  loc_A78C18: FLdPr Me
  loc_A78C1B: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78C1E: NewIfNullAd
  loc_A78C21: FStAd var_8C 
  loc_A78C25: FLdRfVar var_8C
  loc_A78C28: CVarRef
  loc_A78C2D: ParmAry1St
  loc_A78C33: FLdPr Me
  loc_A78C36: VCallAd Control_ID_dgdABMS
  loc_A78C39: CVarAd
  loc_A78C3D: ParmAry1St
  loc_A78C43: FLdRfVar var_88
  loc_A78C46: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A78C4B: ILdRf var_8C
  loc_A78C4E: CastAd
  loc_A78C51: FLdPr Me
  loc_A78C54: MemStAdFunc
  loc_A78C58: FLdRfVar var_88
  loc_A78C5B: Erase
  loc_A78C5C: FFree1Ad var_8C
  loc_A78C5F: ExitProcHresult
End Sub

Private Sub Form_Activate() '9DC8E4
  'Data Table: 43E0C0
  loc_9DC8CC: FLdPr Me
  loc_9DC8CF: VCallAd Control_ID_Campo4Txt
  loc_9DC8D2: FStAdFunc var_88
  loc_9DC8D5: FLdPr var_88
  loc_9DC8D8: Me.SetFocus
  loc_9DC8DD: FFree1Ad var_88
  loc_9DC8E0: ExitProcHresult
  loc_9DC8E3: CStrVarTmp
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A12384
  'Data Table: 43E0C0
  loc_A12348: ILdI2 KeyAscii
  loc_A1234B: LitI2_Byte &HD
  loc_A1234D: EqI2
  loc_A1234E: BranchF loc_A1235F
  loc_A12351: LitVar_TRUE var_A4
  loc_A12354: LitStr "{Tab}"
  loc_A12357: ImpAdCallFPR4 SendKeys , 
  loc_A1235C: FFree1Var var_A4 = ""
  loc_A1235F: ILdI2 KeyAscii
  loc_A12362: LitI2_Byte &H1B
  loc_A12364: EqI2
  loc_A12365: BranchF loc_A12382
  loc_A12368: ILdRf Me
  loc_A1236B: FStAdNoPop
  loc_A1236F: ImpAdLdRf MemVar_D9C5D8
  loc_A12372: NewIfNullPr Global
  loc_A12375: Global.Unload from_stack_1
  loc_A1237A: FFree1Ad var_A8
  loc_A1237D: LitI2_Byte 0
  loc_A1237F: IStI2 KeyAscii
  loc_A12382: ExitProcHresult
End Sub

Public Function global_4448448Get() '43E8B8
  global_4448448Get = global_4448448
End Function

Public Sub global_4448448Put(Value) '43E8D2
  global_4448448 = Value
End Sub

Public Sub global_4448448Set(Value) '43E8EC
  global_4448448 = Value
End Sub
