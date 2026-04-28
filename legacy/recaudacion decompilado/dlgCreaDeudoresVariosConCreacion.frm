VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgCreaDeudoresVariosConCreacion
  Caption = "Crea Deudores Varios Con Creacion en la Cuenta Corriente"
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
      Picture = "dlgCreaDeudoresVariosConCreacion.frx":0000
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
      Picture = "dlgCreaDeudoresVariosConCreacion.frx":0252
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
    Picture = "dlgCreaDeudoresVariosConCreacion.frx":0580
    Style = 1
  End
  Begin MSDataGridLib.DataGrid dgdPersona
    Left = 120
    Top = 1680
    Width = 15135
    Height = 3255
    TabIndex = 6
    OleObjectBlob = "dlgCreaDeudoresVariosConCreacion.frx":0AB2
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

Attribute VB_Name = "dlgCreaDeudoresVariosConCreacion"


Private Sub DetaPersTxt_KeyPress(KeyAscii As Integer) 'A82BE4
  'Data Table: 4AC8C8
  loc_A82B5C: ILdI2 KeyAscii
  loc_A82B5F: CI4UI1
  loc_A82B60: LitI4 &HD
  loc_A82B65: EqI4
  loc_A82B66: BranchF loc_A82BE1
  loc_A82B69: LitI2_Byte &HB
  loc_A82B6B: FLdPr Me
  loc_A82B6E: Me.MousePointer = from_stack_1
  loc_A82B73: FLdRfVar var_8C
  loc_A82B76: FLdPr Me
  loc_A82B79: VCallAd Control_ID_DetaPersTxt
  loc_A82B7C: FStAdFunc var_88
  loc_A82B7F: FLdPr var_88
  loc_A82B82:  = Me.Text
  loc_A82B87: ILdRf var_8C
  loc_A82B8A: LitStr vbNullString
  loc_A82B8D: NeStr
  loc_A82B8F: FFree1Str var_8C
  loc_A82B92: FFree1Ad var_88
  loc_A82B95: BranchF loc_A82BD7
  loc_A82B98: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE DetaPers like '" & Chr(37)
  loc_A82B9B: FLdRfVar var_8C
  loc_A82B9E: FLdPr Me
  loc_A82BA1: VCallAd Control_ID_DetaPersTxt
  loc_A82BA4: FStAdFunc var_88
  loc_A82BA7: FLdPr var_88
  loc_A82BAA:  = Me.Text
  loc_A82BAF: ILdRf var_8C
  loc_A82BB2: ConcatStr
  loc_A82BB3: FStStrNoPop var_90
  loc_A82BB6: LitStr Chr(37) & "' ORDER BY DetaPers"
  loc_A82BB9: ConcatStr
  loc_A82BBA: FStStrNoPop var_94
  loc_A82BBD: FLdPr Me
  loc_A82BC0: MemLdRfVar from_stack_1.global_52
  loc_A82BC3: NewIfNullPr clspersonas
  loc_A82BC6: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A82BCB: FFreeStr var_8C = "": var_90 = ""
  loc_A82BD4: FFree1Ad var_88
  loc_A82BD7: LitI2_Byte 0
  loc_A82BD9: FLdPr Me
  loc_A82BDC: Me.MousePointer = from_stack_1
  loc_A82BE1: ExitProcHresult
End Sub

Private Sub CreaPersonaCmd_Click() 'A848EC
  'Data Table: 4AC8C8
  loc_A84860: LitI2_Byte &HFF
  loc_A84862: ImpAdLdRf MemVar_D94A10
  loc_A84865: NewIfNullPr dlgCreaPersona
  loc_A84868: Call dlgCreaPersona.doValidaCuilPut(from_stack_1v)
  loc_A8486D: LitVar_Missing var_A4
  loc_A84870: PopAdLdVar
  loc_A84871: LitVarI4
  loc_A84879: PopAdLdVar
  loc_A8487A: ImpAdLdRf MemVar_D94A10
  loc_A8487D: NewIfNullPr dlgCreaPersona
  loc_A84880: dlgCreaPersona.Show from_stack_1, from_stack_2
  loc_A84885: FLdRfVar var_A6
  loc_A84888: ImpAdLdRf MemVar_D94A10
  loc_A8488B: NewIfNullPr dlgCreaPersona
  loc_A8488E: from_stack_1v = dlgCreaPersona.boAceptarGet()
  loc_A84893: FLdI2 var_A6
  loc_A84896: LitI2_Byte &HFF
  loc_A84898: EqI2
  loc_A84899: BranchF loc_A848E9
  loc_A8489C: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE CucuPers  = '"
  loc_A8489F: FLdRfVar var_AC
  loc_A848A2: ImpAdLdRf MemVar_D94A10
  loc_A848A5: NewIfNullPr dlgCreaPersona
  loc_A848A8: from_stack_1v = dlgCreaPersona.sCucuPersGet()
  loc_A848AD: ILdRf var_AC
  loc_A848B0: ConcatStr
  loc_A848B1: FStStrNoPop var_B0
  loc_A848B4: LitStr "' ORDER BY CucuPers"
  loc_A848B7: ConcatStr
  loc_A848B8: FStStrNoPop var_B4
  loc_A848BB: FLdPr Me
  loc_A848BE: MemLdRfVar from_stack_1.global_52
  loc_A848C1: NewIfNullPr clspersonas
  loc_A848C4: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A848C9: FFreeStr var_AC = "": var_B0 = ""
  loc_A848D2: FLdPr Me
  loc_A848D5: VCallAd Control_ID_dgdPersona
  loc_A848D8: FStAdFunc var_B8
  loc_A848DB: FLdPr var_B8
  loc_A848DE: LateIdCall
  loc_A848E6: FFree1Ad var_B8
  loc_A848E9: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) 'A840FC
  'Data Table: 4AC8C8
  loc_A84074: ILdI2 KeyAscii
  loc_A84077: CI4UI1
  loc_A84078: LitI4 &HD
  loc_A8407D: EqI4
  loc_A8407E: BranchF loc_A840F9
  loc_A84081: LitI2_Byte &HB
  loc_A84083: FLdPr Me
  loc_A84086: Me.MousePointer = from_stack_1
  loc_A8408B: FLdRfVar var_8C
  loc_A8408E: FLdPr Me
  loc_A84091: VCallAd Control_ID_CucuPersTxt
  loc_A84094: FStAdFunc var_88
  loc_A84097: FLdPr var_88
  loc_A8409A:  = Me.Text
  loc_A8409F: ILdRf var_8C
  loc_A840A2: LitStr vbNullString
  loc_A840A5: NeStr
  loc_A840A7: FFree1Str var_8C
  loc_A840AA: FFree1Ad var_88
  loc_A840AD: BranchF loc_A840EF
  loc_A840B0: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE CucuPers like '" & Chr(37)
  loc_A840B3: FLdRfVar var_8C
  loc_A840B6: FLdPr Me
  loc_A840B9: VCallAd Control_ID_CucuPersTxt
  loc_A840BC: FStAdFunc var_88
  loc_A840BF: FLdPr var_88
  loc_A840C2:  = Me.Text
  loc_A840C7: ILdRf var_8C
  loc_A840CA: ConcatStr
  loc_A840CB: FStStrNoPop var_90
  loc_A840CE: LitStr Chr(37) & "' ORDER BY CucuPers"
  loc_A840D1: ConcatStr
  loc_A840D2: FStStrNoPop var_94
  loc_A840D5: FLdPr Me
  loc_A840D8: MemLdRfVar from_stack_1.global_52
  loc_A840DB: NewIfNullPr clspersonas
  loc_A840DE: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A840E3: FFreeStr var_8C = "": var_90 = ""
  loc_A840EC: FFree1Ad var_88
  loc_A840EF: LitI2_Byte 0
  loc_A840F1: FLdPr Me
  loc_A840F4: Me.MousePointer = from_stack_1
  loc_A840F9: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9D28E0
  'Data Table: 4AC8C8
  loc_9D28C8: ILdRf Me
  loc_9D28CB: FStAdNoPop
  loc_9D28CF: ImpAdLdRf MemVar_D9C5D8
  loc_9D28D2: NewIfNullPr Global
  loc_9D28D5: Global.Unload from_stack_1
  loc_9D28DA: FFree1Ad var_88
  loc_9D28DD: ExitProcHresult
End Sub

Private Sub Form_Load() 'AEE89C
  'Data Table: 4AC8C8
  loc_AEE70C: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona ORDER BY DetaPers  LIMIT 0, 100"
  loc_AEE70F: FLdPr Me
  loc_AEE712: MemLdRfVar from_stack_1.global_52
  loc_AEE715: NewIfNullPr clspersonas
  loc_AEE718: Call clspersonas.RedefineRS(from_stack_1v)
  loc_AEE71D: LitStr "CucuPers"
  loc_AEE720: FLdPr Me
  loc_AEE723: VCallAd Control_ID_CucuPersLbl
  loc_AEE726: FStAdFunc var_88
  loc_AEE729: FLdPr var_88
  loc_AEE72C: Me.DataField = from_stack_1
  loc_AEE731: FFree1Ad var_88
  loc_AEE734: LitStr "DetaPers"
  loc_AEE737: FLdPr Me
  loc_AEE73A: VCallAd Control_ID_DetaPersLbl
  loc_AEE73D: FStAdFunc var_88
  loc_AEE740: FLdPr var_88
  loc_AEE743: Me.DataField = from_stack_1
  loc_AEE748: FFree1Ad var_88
  loc_AEE74B: LitStr "DecPers"
  loc_AEE74E: FLdPr Me
  loc_AEE751: VCallAd Control_ID_DecrPersLbl
  loc_AEE754: FStAdFunc var_88
  loc_AEE757: FLdPr var_88
  loc_AEE75A: Me.DataField = from_stack_1
  loc_AEE75F: FFree1Ad var_88
  loc_AEE762: LitStr "NurePers"
  loc_AEE765: FLdPr Me
  loc_AEE768: VCallAd Control_ID_NurePersLbl
  loc_AEE76B: FStAdFunc var_88
  loc_AEE76E: FLdPr var_88
  loc_AEE771: Me.DataField = from_stack_1
  loc_AEE776: FFree1Ad var_88
  loc_AEE779: LitStr "DebrPers"
  loc_AEE77C: FLdPr Me
  loc_AEE77F: VCallAd Control_ID_DebrPersLbl
  loc_AEE782: FStAdFunc var_88
  loc_AEE785: FLdPr var_88
  loc_AEE788: Me.DataField = from_stack_1
  loc_AEE78D: FFree1Ad var_88
  loc_AEE790: LitStr "MarePers"
  loc_AEE793: FLdPr Me
  loc_AEE796: VCallAd Control_ID_MarePersLbl
  loc_AEE799: FStAdFunc var_88
  loc_AEE79C: FLdPr var_88
  loc_AEE79F: Me.DataField = from_stack_1
  loc_AEE7A4: FFree1Ad var_88
  loc_AEE7A7: LitStr "CarePers"
  loc_AEE7AA: FLdPr Me
  loc_AEE7AD: VCallAd Control_ID_CarePersLbl
  loc_AEE7B0: FStAdFunc var_88
  loc_AEE7B3: FLdPr var_88
  loc_AEE7B6: Me.DataField = from_stack_1
  loc_AEE7BB: FFree1Ad var_88
  loc_AEE7BE: LitStr "UbrePers"
  loc_AEE7C1: FLdPr Me
  loc_AEE7C4: VCallAd Control_ID_UbrePersLbl
  loc_AEE7C7: FStAdFunc var_88
  loc_AEE7CA: FLdPr var_88
  loc_AEE7CD: Me.DataField = from_stack_1
  loc_AEE7D2: FFree1Ad var_88
  loc_AEE7D5: LitStr "DelrPers"
  loc_AEE7D8: FLdPr Me
  loc_AEE7DB: VCallAd Control_ID_DelrPersLbl
  loc_AEE7DE: FStAdFunc var_88
  loc_AEE7E1: FLdPr var_88
  loc_AEE7E4: Me.DataField = from_stack_1
  loc_AEE7E9: FFree1Ad var_88
  loc_AEE7EC: LitStr "CoprPers"
  loc_AEE7EF: FLdPr Me
  loc_AEE7F2: VCallAd Control_ID_CoprPersLbl
  loc_AEE7F5: FStAdFunc var_88
  loc_AEE7F8: FLdPr var_88
  loc_AEE7FB: Me.DataField = from_stack_1
  loc_AEE800: FFree1Ad var_88
  loc_AEE803: LitI4 0
  loc_AEE808: LitI4 1
  loc_AEE80D: FLdRfVar var_8C
  loc_AEE810: Redim
  loc_AEE81A: FLdPr Me
  loc_AEE81D: MemLdRfVar from_stack_1.global_52
  loc_AEE820: NewIfNullAd
  loc_AEE823: FStAd var_88 
  loc_AEE827: FLdRfVar var_88
  loc_AEE82A: CVarRef
  loc_AEE82F: ParmAry1St
  loc_AEE835: FLdPr Me
  loc_AEE838: VCallAd Control_ID_dgdPersona
  loc_AEE83B: CVarAd
  loc_AEE83F: ParmAry1St
  loc_AEE845: FLdRfVar var_8C
  loc_AEE848: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AEE84D: ILdRf var_88
  loc_AEE850: CastAd
  loc_AEE853: FLdPr Me
  loc_AEE856: MemStAdFunc
  loc_AEE85A: FLdRfVar var_8C
  loc_AEE85D: Erase
  loc_AEE85E: FFree1Ad var_88
  loc_AEE861: FLdPr Me
  loc_AEE864: MemLdRfVar from_stack_1.global_52
  loc_AEE867: NewIfNullAd
  loc_AEE86A: FStAd var_B0 
  loc_AEE86E: FLdRfVar var_B0
  loc_AEE871: CVarRef
  loc_AEE876: ILdRf Me
  loc_AEE879: CastAd
  loc_AEE87C: FStAdFunc var_88
  loc_AEE87F: FLdRfVar var_88
  loc_AEE882: ImpAdCallFPR4  = Proc_272_14_A8F45C()
  loc_AEE887: ILdRf var_B0
  loc_AEE88A: CastAd
  loc_AEE88D: FLdPr Me
  loc_AEE890: MemStAdFunc
  loc_AEE894: FFreeAd var_88 = ""
  loc_AEE89B: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D2978
  'Data Table: 4AC8C8
  loc_9D2960: ILdI2 KeyAscii
  loc_9D2963: LitI2_Byte &HD
  loc_9D2965: EqI2
  loc_9D2966: BranchF loc_9D2977
  loc_9D2969: LitVar_TRUE var_A4
  loc_9D296C: LitStr "{Tab}"
  loc_9D296F: ImpAdCallFPR4 SendKeys , 
  loc_9D2974: FFree1Var var_A4 = ""
  loc_9D2977: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B9094
  'Data Table: 4AC8C8
  loc_9B9080: ILdI2 KeyCode
  loc_9B9083: CI4UI1
  loc_9B9084: LitI4 &H78
  loc_9B9089: EqI4
  loc_9B908A: BranchF loc_9B9092
  loc_9B908D: Call SalirCmd_Click()
  loc_9B9092: ExitProcHresult
End Sub

Private Sub DocuPersTxt_KeyPress(KeyAscii As Integer) 'A7D188
  'Data Table: 4AC8C8
  loc_A7D10C: ILdI2 KeyAscii
  loc_A7D10F: CI4UI1
  loc_A7D110: LitI4 &HD
  loc_A7D115: EqI4
  loc_A7D116: BranchF loc_A7D187
  loc_A7D119: LitI2_Byte &HB
  loc_A7D11B: FLdPr Me
  loc_A7D11E: Me.MousePointer = from_stack_1
  loc_A7D123: FLdRfVar var_8C
  loc_A7D126: FLdPr Me
  loc_A7D129: VCallAd Control_ID_DocuPersTxt
  loc_A7D12C: FStAdFunc var_88
  loc_A7D12F: FLdPr var_88
  loc_A7D132:  = Me.Text
  loc_A7D137: ILdRf var_8C
  loc_A7D13A: LitStr vbNullString
  loc_A7D13D: NeStr
  loc_A7D13F: FFree1Str var_8C
  loc_A7D142: FFree1Ad var_88
  loc_A7D145: BranchF loc_A7D187
  loc_A7D148: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE NudoPers like '"
  loc_A7D14B: FLdRfVar var_8C
  loc_A7D14E: FLdPr Me
  loc_A7D151: VCallAd Control_ID_DocuPersTxt
  loc_A7D154: FStAdFunc var_88
  loc_A7D157: FLdPr var_88
  loc_A7D15A:  = Me.Text
  loc_A7D15F: ILdRf var_8C
  loc_A7D162: ConcatStr
  loc_A7D163: FStStrNoPop var_90
  loc_A7D166: LitStr Chr(37) & "' ORDER BY NudoPers"
  loc_A7D169: ConcatStr
  loc_A7D16A: FStStrNoPop var_94
  loc_A7D16D: FLdPr Me
  loc_A7D170: MemLdRfVar from_stack_1.global_52
  loc_A7D173: NewIfNullPr clspersonas
  loc_A7D176: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A7D17B: FFreeStr var_8C = "": var_90 = ""
  loc_A7D184: FFree1Ad var_88
  loc_A7D187: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'B1C044
  'Data Table: 4AC8C8
  loc_B1BDE0: FLdRfVar var_8C
  loc_B1BDE3: FLdPr Me
  loc_B1BDE6: MemLdRfVar from_stack_1.global_52
  loc_B1BDE9: NewIfNullPr clspersonas
  loc_B1BDEC: from_stack_1 = clspersonas.RecordCount
  loc_B1BDF1: ILdRf var_8C
  loc_B1BDF4: LitI4 0
  loc_B1BDF9: EqI4
  loc_B1BDFA: BranchF loc_B1BE06
  loc_B1BDFD: LitStr "No existe ningún contribuyente para emitir el boleto. Verifique..."
  loc_B1BE00: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1BE05: ExitProcHresult
  loc_B1BE06: LitVar_Missing var_10C
  loc_B1BE09: LitVar_Missing var_EC
  loc_B1BE0C: LitVarStr var_BC, "InfoGov"
  loc_B1BE11: FStVarCopyObj var_CC
  loc_B1BE14: FLdRfVar var_CC
  loc_B1BE17: LitI4 4
  loc_B1BE1C: LitVarStr var_9C, "¿Desea crear la cuenta de Deudores Varios?"
  loc_B1BE21: FStVarCopyObj var_AC
  loc_B1BE24: FLdRfVar var_AC
  loc_B1BE27: ImpAdCallI2 MsgBox(, , , , )
  loc_B1BE2C: LitI4 6
  loc_B1BE31: EqI4
  loc_B1BE32: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_B1BE3D: BranchF loc_B1C040
  loc_B1BE40: LitStr "START TRANSACTION;"
  loc_B1BE43: FStStrCopy var_88
  loc_B1BE46: FLdRfVar var_110
  loc_B1BE49: FLdPr Me
  loc_B1BE4C: MemLdRfVar from_stack_1.global_52
  loc_B1BE4F: NewIfNullPr clspersonas
  loc_B1BE52: from_stack_1 = clspersonas.CucuPers
  loc_B1BE57: FLdRfVar var_114
  loc_B1BE5A: FLdPr Me
  loc_B1BE5D: MemLdRfVar from_stack_1.global_52
  loc_B1BE60: NewIfNullPr clspersonas
  loc_B1BE63: from_stack_1 = clspersonas.CucuPers
  loc_B1BE68: FLdRfVar var_118
  loc_B1BE6B: LitI2_Byte 1
  loc_B1BE6D: CUI1I2
  loc_B1BE6F: ILdRf var_114
  loc_B1BE72: LitI2_Byte 3
  loc_B1BE74: CUI1I2
  loc_B1BE76: ILdRf var_110
  loc_B1BE79: FLdPr Me
  loc_B1BE7C: MemLdRfVar from_stack_1.global_56
  loc_B1BE7F: NewIfNullPr clsrelacion
  loc_B1BE82: from_stack_5v = clsrelacion.ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B1BE87: ILdRf var_118
  loc_B1BE8A: LitStr vbNullString
  loc_B1BE8D: EqStr
  loc_B1BE8F: FFreeStr var_110 = "": var_114 = ""
  loc_B1BE98: BranchF loc_B1BF41
  loc_B1BE9B: LitI2_Byte 0
  loc_B1BE9D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B1BEA2: FStFPR8 var_13C
  loc_B1BEA5: LitStr " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) VALUES ('"
  loc_B1BEA8: FLdRfVar var_110
  loc_B1BEAB: FLdPr Me
  loc_B1BEAE: MemLdRfVar from_stack_1.global_52
  loc_B1BEB1: NewIfNullPr clspersonas
  loc_B1BEB4: from_stack_1 = clspersonas.CucuPers
  loc_B1BEB9: ILdRf var_110
  loc_B1BEBC: ConcatStr
  loc_B1BEBD: FStStrNoPop var_114
  loc_B1BEC0: LitStr "',3,'"
  loc_B1BEC3: ConcatStr
  loc_B1BEC4: FStStrNoPop var_11C
  loc_B1BEC7: FLdRfVar var_118
  loc_B1BECA: FLdPr Me
  loc_B1BECD: MemLdRfVar from_stack_1.global_52
  loc_B1BED0: NewIfNullPr clspersonas
  loc_B1BED3: from_stack_1 = clspersonas.CucuPers
  loc_B1BED8: ILdRf var_118
  loc_B1BEDB: ConcatStr
  loc_B1BEDC: FStStrNoPop var_120
  loc_B1BEDF: LitStr "',1,'Titular','"
  loc_B1BEE2: ConcatStr
  loc_B1BEE3: FStStrNoPop var_124
  loc_B1BEE6: LitI4 1
  loc_B1BEEB: LitI4 1
  loc_B1BEF0: LitVarStr var_BC, "yyyy-mm-dd"
  loc_B1BEF5: FStVarCopyObj var_CC
  loc_B1BEF8: FLdRfVar var_CC
  loc_B1BEFB: FLdFPR8 var_13C
  loc_B1BEFE: CVarDate var_AC
  loc_B1BF02: ImpAdCallI2 Format$(, )
  loc_B1BF07: FStStrNoPop var_128
  loc_B1BF0A: ConcatStr
  loc_B1BF0B: FStStrNoPop var_12C
  loc_B1BF0E: LitStr "',100,'"
  loc_B1BF11: ConcatStr
  loc_B1BF12: FStStrNoPop var_130
  loc_B1BF15: ImpAdLdI4 MemVar_D9302C
  loc_B1BF18: ConcatStr
  loc_B1BF19: FStStrNoPop var_134
  loc_B1BF1C: LitStr "');"
  loc_B1BF1F: ConcatStr
  loc_B1BF20: FStStr var_88
  loc_B1BF23: FFreeStr var_110 = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_B1BF3A: FFreeVar var_AC = ""
  loc_B1BF41: FLdRfVar var_114
  loc_B1BF44: FLdRfVar var_110
  loc_B1BF47: FLdPr Me
  loc_B1BF4A: MemLdRfVar from_stack_1.global_52
  loc_B1BF4D: NewIfNullPr clspersonas
  loc_B1BF50: from_stack_1 = clspersonas.CucuPers
  loc_B1BF55: ILdRf var_110
  loc_B1BF58: FLdPr Me
  loc_B1BF5B: MemLdRfVar from_stack_1.global_60
  loc_B1BF5E: NewIfNullPr clsdeudvari
  loc_B1BF61: from_stack_2v = clsdeudvari.ValidaClave(from_stack_1v)
  loc_B1BF66: ILdRf var_114
  loc_B1BF69: LitStr vbNullString
  loc_B1BF6C: EqStr
  loc_B1BF6E: FFreeStr var_110 = ""
  loc_B1BF75: BranchF loc_B1BFE4
  loc_B1BF78: ILdRf var_88
  loc_B1BF7B: LitStr " INSERT INTO deudvari (CodiDeva, CucuPers, AltaUsua, AltaFeho) VALUES ('"
  loc_B1BF7E: ConcatStr
  loc_B1BF7F: FStStrNoPop var_114
  loc_B1BF82: FLdRfVar var_110
  loc_B1BF85: FLdPr Me
  loc_B1BF88: MemLdRfVar from_stack_1.global_52
  loc_B1BF8B: NewIfNullPr clspersonas
  loc_B1BF8E: from_stack_1 = clspersonas.CucuPers
  loc_B1BF93: ILdRf var_110
  loc_B1BF96: ConcatStr
  loc_B1BF97: FStStrNoPop var_118
  loc_B1BF9A: LitStr "',"
  loc_B1BF9D: ConcatStr
  loc_B1BF9E: FStStrNoPop var_120
  loc_B1BFA1: FLdRfVar var_11C
  loc_B1BFA4: FLdPr Me
  loc_B1BFA7: MemLdRfVar from_stack_1.global_52
  loc_B1BFAA: NewIfNullPr clspersonas
  loc_B1BFAD: from_stack_1 = clspersonas.CucuPers
  loc_B1BFB2: ILdRf var_11C
  loc_B1BFB5: ConcatStr
  loc_B1BFB6: FStStrNoPop var_124
  loc_B1BFB9: LitStr ",'"
  loc_B1BFBC: ConcatStr
  loc_B1BFBD: FStStrNoPop var_128
  loc_B1BFC0: ImpAdLdI4 MemVar_D9302C
  loc_B1BFC3: ConcatStr
  loc_B1BFC4: FStStrNoPop var_12C
  loc_B1BFC7: LitStr "', now());"
  loc_B1BFCA: ConcatStr
  loc_B1BFCB: FStStr var_88
  loc_B1BFCE: FFreeStr var_114 = "": var_110 = "": var_118 = "": var_120 = "": var_11C = "": var_124 = "": var_128 = ""
  loc_B1BFE1: Branch loc_B1BFEC
  loc_B1BFE4: LitStr "La cuenta de Deudores Varios ya existe. NO SE CREO LA CUENTA."
  loc_B1BFE7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1BFEC: ILdRf var_88
  loc_B1BFEF: FLdPr Me
  loc_B1BFF2: MemLdRfVar from_stack_1.global_60
  loc_B1BFF5: NewIfNullPr clsdeudvari
  loc_B1BFF8: Call clsdeudvari.AddnewTransaction(from_stack_1v)
  loc_B1BFFD: FLdRfVar var_110
  loc_B1C000: FLdPr Me
  loc_B1C003: MemLdRfVar from_stack_1.global_52
  loc_B1C006: NewIfNullPr clspersonas
  loc_B1C009: from_stack_1 = clspersonas.CucuPers
  loc_B1C00E: ILdRf var_110
  loc_B1C011: ImpAdLdRf MemVar_D93324
  loc_B1C014: NewIfNullPr frmAforosdeDeudoresVarios
  loc_B1C017: VCallAd Control_ID_NumeCtaTxt
  loc_B1C01A: FStAdFunc var_140
  loc_B1C01D: FLdPr var_140
  loc_B1C020: frmAforosdeDeudoresVarios.TextBox.Text = from_stack_1
  loc_B1C025: FFree1Str var_110
  loc_B1C028: FFree1Ad var_140
  loc_B1C02B: ILdRf Me
  loc_B1C02E: FStAdNoPop
  loc_B1C032: ImpAdLdRf MemVar_D9C5D8
  loc_B1C035: NewIfNullPr Global
  loc_B1C038: Global.Unload from_stack_1
  loc_B1C03D: FFree1Ad var_140
  loc_B1C040: ExitProcHresult
End Sub
