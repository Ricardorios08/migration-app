VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgCreaCuentadeTransito
  Caption = "Crea Cuenta en Transito"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 15528
  ClientHeight = 8940
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox CucuPersTxt
    ForeColor = &HFF0000&
    Left = 3000
    Top = 720
    Width = 1935
    Height = 345
    TabIndex = 3
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
  Begin VB.TextBox DocuPersTxt
    ForeColor = &HFF0000&
    Left = 3000
    Top = 1200
    Width = 1335
    Height = 345
    TabIndex = 5
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
  Begin VB.TextBox DetaPersTxt
    ForeColor = &HFF0000&
    Left = 3000
    Top = 240
    Width = 5655
    Height = 345
    TabIndex = 1
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 5040
    Width = 15015
    Height = 2655
    TabIndex = 7
    Begin VB.CommandButton SalirCmd
      Left = 5640
      Top = 1800
      Width = 1335
      Height = 645
      TabIndex = 26
      Picture = "dlgCreaCuentadeTransito.frx":0000
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton ConfirmarCmd
      Left = 3840
      Top = 1800
      Width = 1335
      Height = 645
      TabIndex = 25
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "dlgCreaCuentadeTransito.frx":0252
      Style = 1
    End
    Begin VB.Label Label1
      Caption = "Apellido y Nombre:"
      Left = 3480
      Top = 240
      Width = 2055
      Height = 255
      TabIndex = 10
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
      Caption = "C.U.I.L:"
      Left = 525
      Top = 240
      Width = 795
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
    Begin VB.Label Label3
      Caption = "Calle:"
      Left = 735
      Top = 720
      Width = 585
      Height = 300
      TabIndex = 12
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
    Begin VB.Label DetaConcLbl
      Left = 6600
      Top = 1680
      Width = 6735
      Height = 345
      TabIndex = 24
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
    Begin VB.Label Label8
      Caption = "Localidad:"
      Left = 8640
      Top = 1200
      Width = 1080
      Height = 300
      TabIndex = 21
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
    Begin VB.Label Label13
      Caption = "Barrio:"
      Left = 7080
      Top = 720
      Width = 690
      Height = 300
      TabIndex = 15
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
    Begin VB.Label Label11
      Caption = "Ubicacion:"
      Left = 210
      Top = 1200
      Width = 1110
      Height = 300
      TabIndex = 19
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
    Begin VB.Label DetaPersLbl
      Left = 5520
      Top = 240
      Width = 9135
      Height = 345
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label DecrPersLbl
      Left = 1440
      Top = 720
      Width = 4455
      Height = 345
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label NurePersLbl
      Left = 6000
      Top = 720
      Width = 975
      Height = 345
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label DebrPersLbl
      Left = 7800
      Top = 720
      Width = 4575
      Height = 345
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label MarePersLbl
      Left = 12450
      Top = 720
      Width = 975
      Height = 345
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label CarePersLbl
      Left = 13680
      Top = 720
      Width = 975
      Height = 345
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label UbrePersLbl
      Left = 1440
      Top = 1200
      Width = 7095
      Height = 345
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label DelrPersLbl
      Left = 9840
      Top = 1200
      Width = 3975
      Height = 345
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label CoprPersLbl
      Left = 13920
      Top = 1200
      Width = 975
      Height = 345
      TabIndex = 23
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label CucuPersLbl
      Left = 1440
      Top = 240
      Width = 1575
      Height = 345
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
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
  Begin VB.CommandButton CreaPersonaCmd
    Caption = "Crea Persona"
    Left = 9240
    Top = 600
    Width = 1695
    Height = 735
    TabIndex = 27
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "dlgCreaCuentadeTransito.frx":0580
    Style = 1
  End
  Begin MSDataGridLib.DataGrid dgdPersona
    Left = 120
    Top = 1680
    Width = 15135
    Height = 3255
    TabIndex = 6
    OleObjectBlob = "dlgCreaCuentadeTransito.frx":0AB2
  End
  Begin VB.Label Label7
    Caption = "Numero de Documento:"
    Left = 360
    Top = 1200
    Width = 2535
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
  Begin VB.Label Label6
    Caption = "C.U.I.L:"
    Left = 2100
    Top = 720
    Width = 795
    Height = 300
    TabIndex = 2
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
  Begin VB.Label Label5
    Caption = "Apellido y Nombre:"
    Left = 840
    Top = 240
    Width = 2055
    Height = 255
    TabIndex = 0
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

Attribute VB_Name = "dlgCreaCuentadeTransito"


Private Sub DetaPersTxt_KeyPress(KeyAscii As Integer) 'A8315C
  'Data Table: 4AEDFC
  loc_A830D4: ILdI2 KeyAscii
  loc_A830D7: CI4UI1
  loc_A830D8: LitI4 &HD
  loc_A830DD: EqI4
  loc_A830DE: BranchF loc_A83159
  loc_A830E1: LitI2_Byte &HB
  loc_A830E3: FLdPr Me
  loc_A830E6: Me.MousePointer = from_stack_1
  loc_A830EB: FLdRfVar var_8C
  loc_A830EE: FLdPr Me
  loc_A830F1: VCallAd Control_ID_DetaPersTxt
  loc_A830F4: FStAdFunc var_88
  loc_A830F7: FLdPr var_88
  loc_A830FA:  = Me.Text
  loc_A830FF: ILdRf var_8C
  loc_A83102: LitStr vbNullString
  loc_A83105: NeStr
  loc_A83107: FFree1Str var_8C
  loc_A8310A: FFree1Ad var_88
  loc_A8310D: BranchF loc_A8314F
  loc_A83110: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE DetaPers like '" & Chr(37)
  loc_A83113: FLdRfVar var_8C
  loc_A83116: FLdPr Me
  loc_A83119: VCallAd Control_ID_DetaPersTxt
  loc_A8311C: FStAdFunc var_88
  loc_A8311F: FLdPr var_88
  loc_A83122:  = Me.Text
  loc_A83127: ILdRf var_8C
  loc_A8312A: ConcatStr
  loc_A8312B: FStStrNoPop var_90
  loc_A8312E: LitStr Chr(37) & "' ORDER BY DetaPers"
  loc_A83131: ConcatStr
  loc_A83132: FStStrNoPop var_94
  loc_A83135: FLdPr Me
  loc_A83138: MemLdRfVar from_stack_1.global_52
  loc_A8313B: NewIfNullPr clspersonas
  loc_A8313E: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A83143: FFreeStr var_8C = "": var_90 = ""
  loc_A8314C: FFree1Ad var_88
  loc_A8314F: LitI2_Byte 0
  loc_A83151: FLdPr Me
  loc_A83154: Me.MousePointer = from_stack_1
  loc_A83159: ExitProcHresult
End Sub

Private Sub CreaPersonaCmd_Click() 'A849B8
  'Data Table: 4AEDFC
  loc_A8492C: LitI2_Byte &HFF
  loc_A8492E: ImpAdLdRf MemVar_D94A10
  loc_A84931: NewIfNullPr dlgCreaPersona
  loc_A84934: Call dlgCreaPersona.doValidaCuilPut(from_stack_1v)
  loc_A84939: LitVar_Missing var_A4
  loc_A8493C: PopAdLdVar
  loc_A8493D: LitVarI4
  loc_A84945: PopAdLdVar
  loc_A84946: ImpAdLdRf MemVar_D94A10
  loc_A84949: NewIfNullPr dlgCreaPersona
  loc_A8494C: dlgCreaPersona.Show from_stack_1, from_stack_2
  loc_A84951: FLdRfVar var_A6
  loc_A84954: ImpAdLdRf MemVar_D94A10
  loc_A84957: NewIfNullPr dlgCreaPersona
  loc_A8495A: from_stack_1v = dlgCreaPersona.boAceptarGet()
  loc_A8495F: FLdI2 var_A6
  loc_A84962: LitI2_Byte &HFF
  loc_A84964: EqI2
  loc_A84965: BranchF loc_A849B5
  loc_A84968: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE CucuPers  = '"
  loc_A8496B: FLdRfVar var_AC
  loc_A8496E: ImpAdLdRf MemVar_D94A10
  loc_A84971: NewIfNullPr dlgCreaPersona
  loc_A84974: from_stack_1v = dlgCreaPersona.sCucuPersGet()
  loc_A84979: ILdRf var_AC
  loc_A8497C: ConcatStr
  loc_A8497D: FStStrNoPop var_B0
  loc_A84980: LitStr "' ORDER BY CucuPers"
  loc_A84983: ConcatStr
  loc_A84984: FStStrNoPop var_B4
  loc_A84987: FLdPr Me
  loc_A8498A: MemLdRfVar from_stack_1.global_52
  loc_A8498D: NewIfNullPr clspersonas
  loc_A84990: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A84995: FFreeStr var_AC = "": var_B0 = ""
  loc_A8499E: FLdPr Me
  loc_A849A1: VCallAd Control_ID_dgdPersona
  loc_A849A4: FStAdFunc var_B8
  loc_A849A7: FLdPr var_B8
  loc_A849AA: LateIdCall
  loc_A849B2: FFree1Ad var_B8
  loc_A849B5: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) 'A83544
  'Data Table: 4AEDFC
  loc_A834BC: ILdI2 KeyAscii
  loc_A834BF: CI4UI1
  loc_A834C0: LitI4 &HD
  loc_A834C5: EqI4
  loc_A834C6: BranchF loc_A83541
  loc_A834C9: LitI2_Byte &HB
  loc_A834CB: FLdPr Me
  loc_A834CE: Me.MousePointer = from_stack_1
  loc_A834D3: FLdRfVar var_8C
  loc_A834D6: FLdPr Me
  loc_A834D9: VCallAd Control_ID_CucuPersTxt
  loc_A834DC: FStAdFunc var_88
  loc_A834DF: FLdPr var_88
  loc_A834E2:  = Me.Text
  loc_A834E7: ILdRf var_8C
  loc_A834EA: LitStr vbNullString
  loc_A834ED: NeStr
  loc_A834EF: FFree1Str var_8C
  loc_A834F2: FFree1Ad var_88
  loc_A834F5: BranchF loc_A83537
  loc_A834F8: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE CucuPers like '" & Chr(37)
  loc_A834FB: FLdRfVar var_8C
  loc_A834FE: FLdPr Me
  loc_A83501: VCallAd Control_ID_CucuPersTxt
  loc_A83504: FStAdFunc var_88
  loc_A83507: FLdPr var_88
  loc_A8350A:  = Me.Text
  loc_A8350F: ILdRf var_8C
  loc_A83512: ConcatStr
  loc_A83513: FStStrNoPop var_90
  loc_A83516: LitStr Chr(37) & "' ORDER BY CucuPers"
  loc_A83519: ConcatStr
  loc_A8351A: FStStrNoPop var_94
  loc_A8351D: FLdPr Me
  loc_A83520: MemLdRfVar from_stack_1.global_52
  loc_A83523: NewIfNullPr clspersonas
  loc_A83526: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A8352B: FFreeStr var_8C = "": var_90 = ""
  loc_A83534: FFree1Ad var_88
  loc_A83537: LitI2_Byte 0
  loc_A83539: FLdPr Me
  loc_A8353C: Me.MousePointer = from_stack_1
  loc_A83541: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9CD27C
  'Data Table: 4AEDFC
  loc_9CD264: ILdRf Me
  loc_9CD267: FStAdNoPop
  loc_9CD26B: ImpAdLdRf MemVar_D9C5D8
  loc_9CD26E: NewIfNullPr Global
  loc_9CD271: Global.Unload from_stack_1
  loc_9CD276: FFree1Ad var_88
  loc_9CD279: ExitProcHresult
End Sub

Private Sub Form_Load() 'AEE4EC
  'Data Table: 4AEDFC
  loc_AEE35C: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona ORDER BY DetaPers  LIMIT 0, 100"
  loc_AEE35F: FLdPr Me
  loc_AEE362: MemLdRfVar from_stack_1.global_52
  loc_AEE365: NewIfNullPr clspersonas
  loc_AEE368: Call clspersonas.RedefineRS(from_stack_1v)
  loc_AEE36D: LitStr "CucuPers"
  loc_AEE370: FLdPr Me
  loc_AEE373: VCallAd Control_ID_CucuPersLbl
  loc_AEE376: FStAdFunc var_88
  loc_AEE379: FLdPr var_88
  loc_AEE37C: Me.DataField = from_stack_1
  loc_AEE381: FFree1Ad var_88
  loc_AEE384: LitStr "DetaPers"
  loc_AEE387: FLdPr Me
  loc_AEE38A: VCallAd Control_ID_DetaPersLbl
  loc_AEE38D: FStAdFunc var_88
  loc_AEE390: FLdPr var_88
  loc_AEE393: Me.DataField = from_stack_1
  loc_AEE398: FFree1Ad var_88
  loc_AEE39B: LitStr "DecPers"
  loc_AEE39E: FLdPr Me
  loc_AEE3A1: VCallAd Control_ID_DecrPersLbl
  loc_AEE3A4: FStAdFunc var_88
  loc_AEE3A7: FLdPr var_88
  loc_AEE3AA: Me.DataField = from_stack_1
  loc_AEE3AF: FFree1Ad var_88
  loc_AEE3B2: LitStr "NurePers"
  loc_AEE3B5: FLdPr Me
  loc_AEE3B8: VCallAd Control_ID_NurePersLbl
  loc_AEE3BB: FStAdFunc var_88
  loc_AEE3BE: FLdPr var_88
  loc_AEE3C1: Me.DataField = from_stack_1
  loc_AEE3C6: FFree1Ad var_88
  loc_AEE3C9: LitStr "DebrPers"
  loc_AEE3CC: FLdPr Me
  loc_AEE3CF: VCallAd Control_ID_DebrPersLbl
  loc_AEE3D2: FStAdFunc var_88
  loc_AEE3D5: FLdPr var_88
  loc_AEE3D8: Me.DataField = from_stack_1
  loc_AEE3DD: FFree1Ad var_88
  loc_AEE3E0: LitStr "MarePers"
  loc_AEE3E3: FLdPr Me
  loc_AEE3E6: VCallAd Control_ID_MarePersLbl
  loc_AEE3E9: FStAdFunc var_88
  loc_AEE3EC: FLdPr var_88
  loc_AEE3EF: Me.DataField = from_stack_1
  loc_AEE3F4: FFree1Ad var_88
  loc_AEE3F7: LitStr "CarePers"
  loc_AEE3FA: FLdPr Me
  loc_AEE3FD: VCallAd Control_ID_CarePersLbl
  loc_AEE400: FStAdFunc var_88
  loc_AEE403: FLdPr var_88
  loc_AEE406: Me.DataField = from_stack_1
  loc_AEE40B: FFree1Ad var_88
  loc_AEE40E: LitStr "UbrePers"
  loc_AEE411: FLdPr Me
  loc_AEE414: VCallAd Control_ID_UbrePersLbl
  loc_AEE417: FStAdFunc var_88
  loc_AEE41A: FLdPr var_88
  loc_AEE41D: Me.DataField = from_stack_1
  loc_AEE422: FFree1Ad var_88
  loc_AEE425: LitStr "DelrPers"
  loc_AEE428: FLdPr Me
  loc_AEE42B: VCallAd Control_ID_DelrPersLbl
  loc_AEE42E: FStAdFunc var_88
  loc_AEE431: FLdPr var_88
  loc_AEE434: Me.DataField = from_stack_1
  loc_AEE439: FFree1Ad var_88
  loc_AEE43C: LitStr "CoprPers"
  loc_AEE43F: FLdPr Me
  loc_AEE442: VCallAd Control_ID_CoprPersLbl
  loc_AEE445: FStAdFunc var_88
  loc_AEE448: FLdPr var_88
  loc_AEE44B: Me.DataField = from_stack_1
  loc_AEE450: FFree1Ad var_88
  loc_AEE453: LitI4 0
  loc_AEE458: LitI4 1
  loc_AEE45D: FLdRfVar var_8C
  loc_AEE460: Redim
  loc_AEE46A: FLdPr Me
  loc_AEE46D: MemLdRfVar from_stack_1.global_52
  loc_AEE470: NewIfNullAd
  loc_AEE473: FStAd var_88 
  loc_AEE477: FLdRfVar var_88
  loc_AEE47A: CVarRef
  loc_AEE47F: ParmAry1St
  loc_AEE485: FLdPr Me
  loc_AEE488: VCallAd Control_ID_dgdPersona
  loc_AEE48B: CVarAd
  loc_AEE48F: ParmAry1St
  loc_AEE495: FLdRfVar var_8C
  loc_AEE498: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AEE49D: ILdRf var_88
  loc_AEE4A0: CastAd
  loc_AEE4A3: FLdPr Me
  loc_AEE4A6: MemStAdFunc
  loc_AEE4AA: FLdRfVar var_8C
  loc_AEE4AD: Erase
  loc_AEE4AE: FFree1Ad var_88
  loc_AEE4B1: FLdPr Me
  loc_AEE4B4: MemLdRfVar from_stack_1.global_52
  loc_AEE4B7: NewIfNullAd
  loc_AEE4BA: FStAd var_B0 
  loc_AEE4BE: FLdRfVar var_B0
  loc_AEE4C1: CVarRef
  loc_AEE4C6: ILdRf Me
  loc_AEE4C9: CastAd
  loc_AEE4CC: FStAdFunc var_88
  loc_AEE4CF: FLdRfVar var_88
  loc_AEE4D2: ImpAdCallFPR4  = Proc_272_14_A8F45C()
  loc_AEE4D7: ILdRf var_B0
  loc_AEE4DA: CastAd
  loc_AEE4DD: FLdPr Me
  loc_AEE4E0: MemStAdFunc
  loc_AEE4E4: FFreeAd var_88 = ""
  loc_AEE4EB: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9CD314
  'Data Table: 4AEDFC
  loc_9CD2FC: ILdI2 KeyAscii
  loc_9CD2FF: LitI2_Byte &HD
  loc_9CD301: EqI2
  loc_9CD302: BranchF loc_9CD313
  loc_9CD305: LitVar_TRUE var_A4
  loc_9CD308: LitStr "{Tab}"
  loc_9CD30B: ImpAdCallFPR4 SendKeys , 
  loc_9CD310: FFree1Var var_A4 = ""
  loc_9CD313: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B9EA8
  'Data Table: 4AEDFC
  loc_9B9E94: ILdI2 KeyCode
  loc_9B9E97: CI4UI1
  loc_9B9E98: LitI4 &H78
  loc_9B9E9D: EqI4
  loc_9B9E9E: BranchF loc_9B9EA6
  loc_9B9EA1: Call SalirCmd_Click()
  loc_9B9EA6: ExitProcHresult
End Sub

Private Sub DocuPersTxt_KeyPress(KeyAscii As Integer) 'A7C7FC
  'Data Table: 4AEDFC
  loc_A7C780: ILdI2 KeyAscii
  loc_A7C783: CI4UI1
  loc_A7C784: LitI4 &HD
  loc_A7C789: EqI4
  loc_A7C78A: BranchF loc_A7C7FB
  loc_A7C78D: LitI2_Byte &HB
  loc_A7C78F: FLdPr Me
  loc_A7C792: Me.MousePointer = from_stack_1
  loc_A7C797: FLdRfVar var_8C
  loc_A7C79A: FLdPr Me
  loc_A7C79D: VCallAd Control_ID_DocuPersTxt
  loc_A7C7A0: FStAdFunc var_88
  loc_A7C7A3: FLdPr var_88
  loc_A7C7A6:  = Me.Text
  loc_A7C7AB: ILdRf var_8C
  loc_A7C7AE: LitStr vbNullString
  loc_A7C7B1: NeStr
  loc_A7C7B3: FFree1Str var_8C
  loc_A7C7B6: FFree1Ad var_88
  loc_A7C7B9: BranchF loc_A7C7FB
  loc_A7C7BC: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE NudoPers like '"
  loc_A7C7BF: FLdRfVar var_8C
  loc_A7C7C2: FLdPr Me
  loc_A7C7C5: VCallAd Control_ID_DocuPersTxt
  loc_A7C7C8: FStAdFunc var_88
  loc_A7C7CB: FLdPr var_88
  loc_A7C7CE:  = Me.Text
  loc_A7C7D3: ILdRf var_8C
  loc_A7C7D6: ConcatStr
  loc_A7C7D7: FStStrNoPop var_90
  loc_A7C7DA: LitStr Chr(37) & "' ORDER BY NudoPers"
  loc_A7C7DD: ConcatStr
  loc_A7C7DE: FStStrNoPop var_94
  loc_A7C7E1: FLdPr Me
  loc_A7C7E4: MemLdRfVar from_stack_1.global_52
  loc_A7C7E7: NewIfNullPr clspersonas
  loc_A7C7EA: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A7C7EF: FFreeStr var_8C = "": var_90 = ""
  loc_A7C7F8: FFree1Ad var_88
  loc_A7C7FB: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'B7FC10
  'Data Table: 4AEDFC
  loc_B7F748: FLdRfVar var_8C
  loc_B7F74B: FLdPr Me
  loc_B7F74E: MemLdRfVar from_stack_1.global_52
  loc_B7F751: NewIfNullPr clspersonas
  loc_B7F754: from_stack_1 = clspersonas.RecordCount
  loc_B7F759: ILdRf var_8C
  loc_B7F75C: LitI4 0
  loc_B7F761: EqI4
  loc_B7F762: BranchF loc_B7F76E
  loc_B7F765: LitStr "No existe ningún contribuyente para emitir el boleto. Verifique..."
  loc_B7F768: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7F76D: ExitProcHresult
  loc_B7F76E: LitVar_Missing var_10C
  loc_B7F771: LitVar_Missing var_EC
  loc_B7F774: LitVarStr var_BC, "InfoGov"
  loc_B7F779: FStVarCopyObj var_CC
  loc_B7F77C: FLdRfVar var_CC
  loc_B7F77F: LitI4 4
  loc_B7F784: LitVarStr var_9C, "¿Desea crear la cuenta de transito?"
  loc_B7F789: FStVarCopyObj var_AC
  loc_B7F78C: FLdRfVar var_AC
  loc_B7F78F: ImpAdCallI2 MsgBox(, , , , )
  loc_B7F794: LitI4 6
  loc_B7F799: EqI4
  loc_B7F79A: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_B7F7A5: BranchF loc_B7FC0D
  loc_B7F7A8: LitStr "START TRANSACTION;"
  loc_B7F7AB: FStStrCopy var_88
  loc_B7F7AE: FLdRfVar var_110
  loc_B7F7B1: FLdPr Me
  loc_B7F7B4: MemLdRfVar from_stack_1.global_52
  loc_B7F7B7: NewIfNullPr clspersonas
  loc_B7F7BA: from_stack_1 = clspersonas.CucuPers
  loc_B7F7BF: FLdRfVar var_114
  loc_B7F7C2: FLdPr Me
  loc_B7F7C5: MemLdRfVar from_stack_1.global_52
  loc_B7F7C8: NewIfNullPr clspersonas
  loc_B7F7CB: from_stack_1 = clspersonas.CucuPers
  loc_B7F7D0: FLdRfVar var_118
  loc_B7F7D3: LitI2_Byte 1
  loc_B7F7D5: CUI1I2
  loc_B7F7D7: ILdRf var_114
  loc_B7F7DA: LitI2_Byte 5
  loc_B7F7DC: CUI1I2
  loc_B7F7DE: ILdRf var_110
  loc_B7F7E1: FLdPr Me
  loc_B7F7E4: MemLdRfVar from_stack_1.global_56
  loc_B7F7E7: NewIfNullPr clsrelacion
  loc_B7F7EA: from_stack_5v = clsrelacion.ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B7F7EF: ILdRf var_118
  loc_B7F7F2: LitStr vbNullString
  loc_B7F7F5: EqStr
  loc_B7F7F7: FFreeStr var_110 = "": var_114 = ""
  loc_B7F800: BranchF loc_B7F8A9
  loc_B7F803: LitI2_Byte 0
  loc_B7F805: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B7F80A: FStFPR8 var_13C
  loc_B7F80D: LitStr " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) VALUES ('"
  loc_B7F810: FLdRfVar var_110
  loc_B7F813: FLdPr Me
  loc_B7F816: MemLdRfVar from_stack_1.global_52
  loc_B7F819: NewIfNullPr clspersonas
  loc_B7F81C: from_stack_1 = clspersonas.CucuPers
  loc_B7F821: ILdRf var_110
  loc_B7F824: ConcatStr
  loc_B7F825: FStStrNoPop var_114
  loc_B7F828: LitStr "',5,'"
  loc_B7F82B: ConcatStr
  loc_B7F82C: FStStrNoPop var_11C
  loc_B7F82F: FLdRfVar var_118
  loc_B7F832: FLdPr Me
  loc_B7F835: MemLdRfVar from_stack_1.global_52
  loc_B7F838: NewIfNullPr clspersonas
  loc_B7F83B: from_stack_1 = clspersonas.CucuPers
  loc_B7F840: ILdRf var_118
  loc_B7F843: ConcatStr
  loc_B7F844: FStStrNoPop var_120
  loc_B7F847: LitStr "',1,'Titular','"
  loc_B7F84A: ConcatStr
  loc_B7F84B: FStStrNoPop var_124
  loc_B7F84E: LitI4 1
  loc_B7F853: LitI4 1
  loc_B7F858: LitVarStr var_BC, "yyyy-mm-dd"
  loc_B7F85D: FStVarCopyObj var_CC
  loc_B7F860: FLdRfVar var_CC
  loc_B7F863: FLdFPR8 var_13C
  loc_B7F866: CVarDate var_AC
  loc_B7F86A: ImpAdCallI2 Format$(, )
  loc_B7F86F: FStStrNoPop var_128
  loc_B7F872: ConcatStr
  loc_B7F873: FStStrNoPop var_12C
  loc_B7F876: LitStr "',100,'"
  loc_B7F879: ConcatStr
  loc_B7F87A: FStStrNoPop var_130
  loc_B7F87D: ImpAdLdI4 MemVar_D9302C
  loc_B7F880: ConcatStr
  loc_B7F881: FStStrNoPop var_134
  loc_B7F884: LitStr "');"
  loc_B7F887: ConcatStr
  loc_B7F888: FStStr var_88
  loc_B7F88B: FFreeStr var_110 = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_B7F8A2: FFreeVar var_AC = ""
  loc_B7F8A9: FLdRfVar var_114
  loc_B7F8AC: FLdRfVar var_110
  loc_B7F8AF: FLdPr Me
  loc_B7F8B2: MemLdRfVar from_stack_1.global_52
  loc_B7F8B5: NewIfNullPr clspersonas
  loc_B7F8B8: from_stack_1 = clspersonas.CucuPers
  loc_B7F8BD: ILdRf var_110
  loc_B7F8C0: FLdPr Me
  loc_B7F8C3: MemLdRfVar from_stack_1.global_60
  loc_B7F8C6: NewIfNullPr clstransito
  loc_B7F8C9: from_stack_2v = clstransito.ValidaClave(from_stack_1v)
  loc_B7F8CE: ILdRf var_114
  loc_B7F8D1: LitStr vbNullString
  loc_B7F8D4: EqStr
  loc_B7F8D6: FFreeStr var_110 = ""
  loc_B7F8DD: BranchF loc_B7F94C
  loc_B7F8E0: ILdRf var_88
  loc_B7F8E3: LitStr " INSERT INTO transito (CodiTran, CucuPers, AltaUsua, AltaFeho) VALUES ('"
  loc_B7F8E6: ConcatStr
  loc_B7F8E7: FStStrNoPop var_114
  loc_B7F8EA: FLdRfVar var_110
  loc_B7F8ED: FLdPr Me
  loc_B7F8F0: MemLdRfVar from_stack_1.global_52
  loc_B7F8F3: NewIfNullPr clspersonas
  loc_B7F8F6: from_stack_1 = clspersonas.CucuPers
  loc_B7F8FB: ILdRf var_110
  loc_B7F8FE: ConcatStr
  loc_B7F8FF: FStStrNoPop var_118
  loc_B7F902: LitStr "',"
  loc_B7F905: ConcatStr
  loc_B7F906: FStStrNoPop var_120
  loc_B7F909: FLdRfVar var_11C
  loc_B7F90C: FLdPr Me
  loc_B7F90F: MemLdRfVar from_stack_1.global_52
  loc_B7F912: NewIfNullPr clspersonas
  loc_B7F915: from_stack_1 = clspersonas.CucuPers
  loc_B7F91A: ILdRf var_11C
  loc_B7F91D: ConcatStr
  loc_B7F91E: FStStrNoPop var_124
  loc_B7F921: LitStr ",'"
  loc_B7F924: ConcatStr
  loc_B7F925: FStStrNoPop var_128
  loc_B7F928: ImpAdLdI4 MemVar_D9302C
  loc_B7F92B: ConcatStr
  loc_B7F92C: FStStrNoPop var_12C
  loc_B7F92F: LitStr "', now());"
  loc_B7F932: ConcatStr
  loc_B7F933: FStStr var_88
  loc_B7F936: FFreeStr var_114 = "": var_110 = "": var_118 = "": var_120 = "": var_11C = "": var_124 = "": var_128 = ""
  loc_B7F949: Branch loc_B7F954
  loc_B7F94C: LitStr "La cuenta de transito ya existe. NO SE CREO LA CUENTA."
  loc_B7F94F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7F954: ILdRf var_88
  loc_B7F957: FLdPr Me
  loc_B7F95A: MemLdRfVar from_stack_1.global_60
  loc_B7F95D: NewIfNullPr clstransito
  loc_B7F960: Call clstransito.AddnewTransaction(from_stack_1v)
  loc_B7F965: FLdRfVar var_110
  loc_B7F968: FLdPr Me
  loc_B7F96B: MemLdRfVar from_stack_1.global_52
  loc_B7F96E: NewIfNullPr clspersonas
  loc_B7F971: from_stack_1 = clspersonas.CucuPers
  loc_B7F976: ILdRf var_110
  loc_B7F979: ImpAdLdRf MemVar_D939C8
  loc_B7F97C: NewIfNullPr frmMultasdeTransito
  loc_B7F97F: VCallAd Control_ID_NumeCtaTxt
  loc_B7F982: FStAdFunc var_140
  loc_B7F985: FLdPr var_140
  loc_B7F988: frmMultasdeTransito.TextBox.Text = from_stack_1
  loc_B7F98D: FFree1Str var_110
  loc_B7F990: FFree1Ad var_140
  loc_B7F993: FLdRfVar var_110
  loc_B7F996: FLdPr Me
  loc_B7F999: MemLdRfVar from_stack_1.global_52
  loc_B7F99C: NewIfNullPr clspersonas
  loc_B7F99F: from_stack_1 = clspersonas.CucuPers
  loc_B7F9A4: ILdRf var_110
  loc_B7F9A7: ImpAdLdRf MemVar_D939C8
  loc_B7F9AA: NewIfNullPr frmMultasdeTransito
  loc_B7F9AD: VCallAd Control_ID_CucuPersLbl
  loc_B7F9B0: FStAdFunc var_140
  loc_B7F9B3: FLdPr var_140
  loc_B7F9B6: frmMultasdeTransito.Label.Caption = from_stack_1
  loc_B7F9BB: FFree1Str var_110
  loc_B7F9BE: FFree1Ad var_140
  loc_B7F9C1: FLdRfVar var_110
  loc_B7F9C4: FLdPr Me
  loc_B7F9C7: MemLdRfVar from_stack_1.global_52
  loc_B7F9CA: NewIfNullPr clspersonas
  loc_B7F9CD: from_stack_1 = clspersonas.DetaPers
  loc_B7F9D2: ILdRf var_110
  loc_B7F9D5: ImpAdLdRf MemVar_D939C8
  loc_B7F9D8: NewIfNullPr frmMultasdeTransito
  loc_B7F9DB: VCallAd Control_ID_DetaPersLbl
  loc_B7F9DE: FStAdFunc var_140
  loc_B7F9E1: FLdPr var_140
  loc_B7F9E4: frmMultasdeTransito.Label.Caption = from_stack_1
  loc_B7F9E9: FFree1Str var_110
  loc_B7F9EC: FFree1Ad var_140
  loc_B7F9EF: FLdRfVar var_8C
  loc_B7F9F2: FLdPr Me
  loc_B7F9F5: MemLdRfVar from_stack_1.global_52
  loc_B7F9F8: NewIfNullPr clspersonas
  loc_B7F9FB: from_stack_1 = clspersonas.NurePers
  loc_B7FA00: FLdRfVar var_144
  loc_B7FA03: FLdPr Me
  loc_B7FA06: MemLdRfVar from_stack_1.global_52
  loc_B7FA09: NewIfNullPr clspersonas
  loc_B7FA0C: from_stack_1 = clspersonas.NurePers
  loc_B7FA11: FLdRfVar var_110
  loc_B7FA14: FLdPr Me
  loc_B7FA17: MemLdRfVar from_stack_1.global_52
  loc_B7FA1A: NewIfNullPr clspersonas
  loc_B7FA1D: from_stack_1 = clspersonas.DecrPers
  loc_B7FA22: ILdRf var_110
  loc_B7FA25: LitStr " "
  loc_B7FA28: ConcatStr
  loc_B7FA29: CVarStr var_10C
  loc_B7FA2C: LitVarStr var_BC, vbNullString
  loc_B7FA31: FStVarCopyObj var_CC
  loc_B7FA34: FLdRfVar var_CC
  loc_B7FA37: LitStr "Nro: "
  loc_B7FA3A: ILdRf var_144
  loc_B7FA3D: CStrI4
  loc_B7FA3F: FStStrNoPop var_114
  loc_B7FA42: ConcatStr
  loc_B7FA43: CVarStr var_AC
  loc_B7FA46: ILdRf var_8C
  loc_B7FA49: CR8I4
  loc_B7FA4A: LitStr "0"
  loc_B7FA4D: CR8Str
  loc_B7FA4F: NeR8
  loc_B7FA50: CVarBoolI2 var_9C
  loc_B7FA54: FLdRfVar var_EC
  loc_B7FA57: ImpAdCallFPR4  = IIf(, , )
  loc_B7FA5C: FLdRfVar var_EC
  loc_B7FA5F: ConcatVar var_154
  loc_B7FA63: CStrVarVal var_118
  loc_B7FA67: ImpAdLdRf MemVar_D939C8
  loc_B7FA6A: NewIfNullPr frmMultasdeTransito
  loc_B7FA6D: VCallAd Control_ID_DomiPersLbl
  loc_B7FA70: FStAdFunc var_140
  loc_B7FA73: FLdPr var_140
  loc_B7FA76: frmMultasdeTransito.Label.Caption = from_stack_1
  loc_B7FA7B: FFreeStr var_110 = "": var_114 = ""
  loc_B7FA84: FFree1Ad var_140
  loc_B7FA87: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_10C = "": var_EC = ""
  loc_B7FA96: FLdRfVar var_114
  loc_B7FA99: FLdPr Me
  loc_B7FA9C: MemLdRfVar from_stack_1.global_52
  loc_B7FA9F: NewIfNullPr clspersonas
  loc_B7FAA2: from_stack_1 = clspersonas.MarePers
  loc_B7FAA7: FLdRfVar var_118
  loc_B7FAAA: FLdPr Me
  loc_B7FAAD: MemLdRfVar from_stack_1.global_52
  loc_B7FAB0: NewIfNullPr clspersonas
  loc_B7FAB3: from_stack_1 = clspersonas.MarePers
  loc_B7FAB8: FLdRfVar var_11C
  loc_B7FABB: FLdPr Me
  loc_B7FABE: MemLdRfVar from_stack_1.global_52
  loc_B7FAC1: NewIfNullPr clspersonas
  loc_B7FAC4: from_stack_1 = clspersonas.CarePers
  loc_B7FAC9: FLdRfVar var_120
  loc_B7FACC: FLdPr Me
  loc_B7FACF: MemLdRfVar from_stack_1.global_52
  loc_B7FAD2: NewIfNullPr clspersonas
  loc_B7FAD5: from_stack_1 = clspersonas.CarePers
  loc_B7FADA: FLdRfVar var_110
  loc_B7FADD: FLdPr Me
  loc_B7FAE0: MemLdRfVar from_stack_1.global_52
  loc_B7FAE3: NewIfNullPr clspersonas
  loc_B7FAE6: from_stack_1 = clspersonas.DebrPers
  loc_B7FAEB: ILdRf var_110
  loc_B7FAEE: LitStr " "
  loc_B7FAF1: ConcatStr
  loc_B7FAF2: CVarStr var_10C
  loc_B7FAF5: LitVarStr var_BC, vbNullString
  loc_B7FAFA: FStVarCopyObj var_CC
  loc_B7FAFD: FLdRfVar var_CC
  loc_B7FB00: LitStr "Manz: "
  loc_B7FB03: ILdRf var_118
  loc_B7FB06: ConcatStr
  loc_B7FB07: CVarStr var_AC
  loc_B7FB0A: ILdRf var_114
  loc_B7FB0D: LitStr vbNullString
  loc_B7FB10: NeStr
  loc_B7FB12: CVarBoolI2 var_9C
  loc_B7FB16: FLdRfVar var_EC
  loc_B7FB19: ImpAdCallFPR4  = IIf(, , )
  loc_B7FB1E: FLdRfVar var_EC
  loc_B7FB21: ConcatVar var_154
  loc_B7FB25: LitVarStr var_DC, " "
  loc_B7FB2A: ConcatVar var_164
  loc_B7FB2E: LitVarStr var_184, vbNullString
  loc_B7FB33: FStVarCopyObj var_194
  loc_B7FB36: FLdRfVar var_194
  loc_B7FB39: LitStr "Casa: "
  loc_B7FB3C: ILdRf var_120
  loc_B7FB3F: ConcatStr
  loc_B7FB40: CVarStr var_174
  loc_B7FB43: ILdRf var_11C
  loc_B7FB46: LitStr vbNullString
  loc_B7FB49: NeStr
  loc_B7FB4B: CVarBoolI2 var_FC
  loc_B7FB4F: FLdRfVar var_1A4
  loc_B7FB52: ImpAdCallFPR4  = IIf(, , )
  loc_B7FB57: FLdRfVar var_1A4
  loc_B7FB5A: ConcatVar var_1B4
  loc_B7FB5E: CStrVarVal var_124
  loc_B7FB62: ImpAdLdRf MemVar_D939C8
  loc_B7FB65: NewIfNullPr frmMultasdeTransito
  loc_B7FB68: VCallAd Control_ID_BarrPersLbl
  loc_B7FB6B: FStAdFunc var_140
  loc_B7FB6E: FLdPr var_140
  loc_B7FB71: frmMultasdeTransito.Label.Caption = from_stack_1
  loc_B7FB76: FFreeStr var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_B7FB85: FFree1Ad var_140
  loc_B7FB88: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_10C = "": var_EC = "": var_154 = "": var_FC = "": var_174 = "": var_194 = "": var_164 = "": var_1A4 = ""
  loc_B7FBA3: FLdRfVar var_110
  loc_B7FBA6: FLdPr Me
  loc_B7FBA9: MemLdRfVar from_stack_1.global_52
  loc_B7FBAC: NewIfNullPr clspersonas
  loc_B7FBAF: from_stack_1 = clspersonas.UbrePers
  loc_B7FBB4: ILdRf var_110
  loc_B7FBB7: LitStr " "
  loc_B7FBBA: ConcatStr
  loc_B7FBBB: FStStrNoPop var_118
  loc_B7FBBE: FLdRfVar var_114
  loc_B7FBC1: FLdPr Me
  loc_B7FBC4: MemLdRfVar from_stack_1.global_52
  loc_B7FBC7: NewIfNullPr clspersonas
  loc_B7FBCA: from_stack_1 = clspersonas.DelrPers
  loc_B7FBCF: ILdRf var_114
  loc_B7FBD2: ConcatStr
  loc_B7FBD3: FStStrNoPop var_11C
  loc_B7FBD6: ImpAdLdRf MemVar_D939C8
  loc_B7FBD9: NewIfNullPr frmMultasdeTransito
  loc_B7FBDC: VCallAd Control_ID_LocaPersLbl
  loc_B7FBDF: FStAdFunc var_140
  loc_B7FBE2: FLdPr var_140
  loc_B7FBE5: frmMultasdeTransito.Label.Caption = from_stack_1
  loc_B7FBEA: FFreeStr var_110 = "": var_118 = "": var_114 = ""
  loc_B7FBF5: FFree1Ad var_140
  loc_B7FBF8: ILdRf Me
  loc_B7FBFB: FStAdNoPop
  loc_B7FBFF: ImpAdLdRf MemVar_D9C5D8
  loc_B7FC02: NewIfNullPr Global
  loc_B7FC05: Global.Unload from_stack_1
  loc_B7FC0A: FFree1Ad var_140
  loc_B7FC0D: ExitProcHresult
  loc_B7FC0E: FLdRfVar var_7B98
End Sub
