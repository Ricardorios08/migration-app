VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmDebito
  Caption = "Débitos"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmDebito.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15855
  ClientHeight = 10110
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 3
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 4
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 5
      OleObjectBlob = "frmDebito.frx":08CA
    End
  End
  Begin VB.Frame fraABMS
    Caption = " Débitos "
    Left = 120
    Top = 3960
    Width = 15015
    Height = 5895
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox TifaDeveCbo
      Left = 2400
      Top = 2520
      Width = 975
      Height = 360
      Text = "TifaDeveCbo"
      TabIndex = 23
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataField = "TifaDeve"
    End
    Begin VB.TextBox SufaDeveTxt
      Left = 3480
      Top = 2520
      Width = 855
      Height = 360
      TabIndex = 24
      MaxLength = 4
      DataField = "SufaDeve"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox NufaDeveTxt
      Left = 4440
      Top = 2520
      Width = 1575
      Height = 360
      TabIndex = 25
      MaxLength = 8
      DataField = "NufaDeve"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox CucuPersTxt
      Left = 2400
      Top = 2040
      Width = 1815
      Height = 420
      TabIndex = 20
      MaxLength = 70
      DataField = "CucuPers"
    End
    Begin VB.TextBox BajaMotiTxt
      ForeColor = &HFF0000&
      Left = 2400
      Top = 4680
      Width = 12135
      Height = 420
      TabIndex = 36
      MaxLength = 100
      DataField = "BajaMoti"
    End
    Begin VB.TextBox DetaDebiTxt
      ForeColor = &HFF0000&
      Left = 2400
      Top = 3480
      Width = 12135
      Height = 420
      TabIndex = 32
      MaxLength = 250
      DataField = "DetaDebi"
    End
    Begin VB.TextBox ExpeImpuTxt
      ForeColor = &HFF0000&
      Left = 10800
      Top = 360
      Width = 2535
      Height = 360
      TabIndex = 15
      MaxLength = 15
      DataField = "ExpeImpu"
    End
    Begin VB.TextBox ImpoDebiTxt
      ForeColor = &HFF0000&
      Left = 2400
      Top = 3000
      Width = 1935
      Height = 420
      TabIndex = 27
      MaxLength = 15
      DataField = "ImpoDebi"
      DataFormat = 80
      DataFormat = 38
    End
    Begin MSMask.MaskEdBox FechDebiMsk
      Left = 3480
      Top = 360
      Width = 1440
      Height = 360
      TabIndex = 11
      OleObjectBlob = "frmDebito.frx":0952
      DataField = "FechDebi"
    End
    Begin MSMask.MaskEdBox FeanDebiMsk
      Left = 2400
      Top = 4200
      Width = 1440
      Height = 360
      TabIndex = 34
      OleObjectBlob = "frmDebito.frx":0A02
      DataField = "FeanDebi"
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 2400
      Top = 960
      Width = 1935
      Height = 360
      TabIndex = 17
      OleObjectBlob = "frmDebito.frx":0AB2
      DataField = "CodiCuco"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 6480
      Top = 3000
      Width = 1335
      Height = 360
      TabIndex = 29
      OleObjectBlob = "frmDebito.frx":0B3A
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 6720
      Top = 360
      Width = 2175
      Height = 360
      TabIndex = 13
      OleObjectBlob = "frmDebito.frx":0BC2
      DataField = "ExorImpu"
    End
    Begin MSMask.MaskEdBox NumeOrpaMsk
      Left = 2400
      Top = 1440
      Width = 1695
      Height = 360
      TabIndex = 38
      OleObjectBlob = "frmDebito.frx":0C22
    End
    Begin VB.Label Label14
      Caption = "Orden de pago:"
      Left = 720
      Top = 1440
      Width = 1650
      Height = 300
      TabIndex = 37
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Exp. Original:"
      Left = 5280
      Top = 390
      Width = 1380
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label12
      Caption = "Organigrama:"
      Left = 4920
      Top = 3000
      Width = 1440
      Height = 300
      TabIndex = 28
      AutoSize = -1  'True
    End
    Begin VB.Label DetaOrgaLbl
      Left = 7920
      Top = 3000
      Width = 6615
      Height = 360
      TabIndex = 30
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrga"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label NumeDebiLbl
      Left = 1200
      Top = 360
      Width = 1080
      Height = 360
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      DataField = "NumeDebi"
    End
    Begin VB.Label Label1
      Caption = "Número:"
      Left = 240
      Top = 360
      Width = 900
      Height = 300
      TabIndex = 8
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Factura:"
      Left = 1455
      Top = 2520
      Width = 885
      Height = 300
      TabIndex = 22
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "Motivo de Anulación:"
      Left = 150
      Top = 4680
      Width = 2190
      Height = 300
      TabIndex = 35
      AutoSize = -1  'True
    End
    Begin VB.Label Label9
      Caption = "Detalle:"
      Left = 1530
      Top = 3480
      Width = 810
      Height = 300
      TabIndex = 31
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Fecha de Anulación:"
      Left = 165
      Top = 4200
      Width = 2175
      Height = 300
      TabIndex = 33
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Exp. de Pago:"
      Left = 9240
      Top = 360
      Width = 1470
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label DetaProvLbl
      Left = 4320
      Top = 2040
      Width = 10215
      Height = 360
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      DataField = "DetaProv"
    End
    Begin VB.Label DetaCucoLbl
      Left = 4440
      Top = 960
      Width = 10095
      Height = 360
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      DataField = "DetaCuco"
    End
    Begin VB.Label Label7
      Caption = "Importe:"
      Left = 1455
      Top = 3000
      Width = 885
      Height = 300
      TabIndex = 26
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Fecha:"
      Left = 2595
      Top = 360
      Width = 735
      Height = 300
      TabIndex = 10
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 480
      Top = 960
      Width = 1860
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label6
      Caption = "Proveedor:"
      Left = 1200
      Top = 2040
      Width = 1140
      Height = 300
      TabIndex = 19
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 15015
    Height = 2175
    TabIndex = 6
    OleObjectBlob = "frmDebito.frx":0C82
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmDebito.frx":124E
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15855
    Height = 660
    TabIndex = 1
    OleObjectBlob = "frmDebito.frx":8DCC
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 2
      TabStop = 0   'False
      Picture = "frmDebito.frx":9328
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label Label2
    Caption = "Importe:"
    Left = 0
    Top = 0
    Width = 885
    Height = 300
    TabIndex = 0
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "frmDebito"

Public iCodiRete As Integer


Private Sub FiltroCbo_Click() 'A2DF7C
  'Data Table: 4E878C
  loc_A2DD84: LitVarStr var_94, vbNullString
  loc_A2DD89: PopAdLdVar
  loc_A2DD8A: FLdPr Me
  loc_A2DD8D: VCallAd Control_ID_FiltroMsk
  loc_A2DD90: FStAdFunc var_A8
  loc_A2DD93: FLdPr var_A8
  loc_A2DD96: LateIdSt
  loc_A2DD9B: FFree1Ad var_A8
  loc_A2DD9E: FLdRfVar var_AA
  loc_A2DDA1: FLdPr Me
  loc_A2DDA4: VCallAd Control_ID_FiltroCbo
  loc_A2DDA7: FStAdFunc var_A8
  loc_A2DDAA: FLdPr var_A8
  loc_A2DDAD:  = Me.ListIndex
  loc_A2DDB2: FLdI2 var_AA
  loc_A2DDB5: FStI2 var_AC
  loc_A2DDB8: FFree1Ad var_A8
  loc_A2DDBB: FLdI2 var_AC
  loc_A2DDBE: LitI2_Byte 0
  loc_A2DDC0: EqI2
  loc_A2DDC1: BranchF loc_A2DDFB
  loc_A2DDC4: LitVarStr var_94, "####"
  loc_A2DDC9: PopAdLdVar
  loc_A2DDCA: FLdPr Me
  loc_A2DDCD: VCallAd Control_ID_FiltroMsk
  loc_A2DDD0: FStAdFunc var_A8
  loc_A2DDD3: FLdPr var_A8
  loc_A2DDD6: LateIdSt
  loc_A2DDDB: FFree1Ad var_A8
  loc_A2DDDE: LitStr "NumeDebi"
  loc_A2DDE1: FStStrCopy var_B0
  loc_A2DDE4: FLdRfVar var_B0
  loc_A2DDE7: FLdPr Me
  loc_A2DDEA: MemLdRfVar from_stack_1.global_56
  loc_A2DDED: NewIfNullPr clsdebito
  loc_A2DDF0: Call clsdebito.Sort(from_stack_1v)
  loc_A2DDF5: FFree1Str var_B0
  loc_A2DDF8: Branch loc_A2DF78
  loc_A2DDFB: FLdI2 var_AC
  loc_A2DDFE: LitI2_Byte 1
  loc_A2DE00: EqI2
  loc_A2DE01: BranchF loc_A2DE3B
  loc_A2DE04: LitVarStr var_94, vbNullString
  loc_A2DE09: PopAdLdVar
  loc_A2DE0A: FLdPr Me
  loc_A2DE0D: VCallAd Control_ID_FiltroMsk
  loc_A2DE10: FStAdFunc var_A8
  loc_A2DE13: FLdPr var_A8
  loc_A2DE16: LateIdSt
  loc_A2DE1B: FFree1Ad var_A8
  loc_A2DE1E: LitStr "Exorimpu"
  loc_A2DE21: FStStrCopy var_B0
  loc_A2DE24: FLdRfVar var_B0
  loc_A2DE27: FLdPr Me
  loc_A2DE2A: MemLdRfVar from_stack_1.global_56
  loc_A2DE2D: NewIfNullPr clsdebito
  loc_A2DE30: Call clsdebito.Sort(from_stack_1v)
  loc_A2DE35: FFree1Str var_B0
  loc_A2DE38: Branch loc_A2DF78
  loc_A2DE3B: FLdI2 var_AC
  loc_A2DE3E: LitI2_Byte 2
  loc_A2DE40: EqI2
  loc_A2DE41: BranchF loc_A2DE7B
  loc_A2DE44: LitVarStr var_94, vbNullString
  loc_A2DE49: PopAdLdVar
  loc_A2DE4A: FLdPr Me
  loc_A2DE4D: VCallAd Control_ID_FiltroMsk
  loc_A2DE50: FStAdFunc var_A8
  loc_A2DE53: FLdPr var_A8
  loc_A2DE56: LateIdSt
  loc_A2DE5B: FFree1Ad var_A8
  loc_A2DE5E: LitStr "Expeimpu"
  loc_A2DE61: FStStrCopy var_B0
  loc_A2DE64: FLdRfVar var_B0
  loc_A2DE67: FLdPr Me
  loc_A2DE6A: MemLdRfVar from_stack_1.global_56
  loc_A2DE6D: NewIfNullPr clsdebito
  loc_A2DE70: Call clsdebito.Sort(from_stack_1v)
  loc_A2DE75: FFree1Str var_B0
  loc_A2DE78: Branch loc_A2DF78
  loc_A2DE7B: FLdI2 var_AC
  loc_A2DE7E: LitI2_Byte 3
  loc_A2DE80: EqI2
  loc_A2DE81: BranchF loc_A2DEBB
  loc_A2DE84: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A2DE89: PopAdLdVar
  loc_A2DE8A: FLdPr Me
  loc_A2DE8D: VCallAd Control_ID_FiltroMsk
  loc_A2DE90: FStAdFunc var_A8
  loc_A2DE93: FLdPr var_A8
  loc_A2DE96: LateIdSt
  loc_A2DE9B: FFree1Ad var_A8
  loc_A2DE9E: LitStr "CodiCuco"
  loc_A2DEA1: FStStrCopy var_B0
  loc_A2DEA4: FLdRfVar var_B0
  loc_A2DEA7: FLdPr Me
  loc_A2DEAA: MemLdRfVar from_stack_1.global_56
  loc_A2DEAD: NewIfNullPr clsdebito
  loc_A2DEB0: Call clsdebito.Sort(from_stack_1v)
  loc_A2DEB5: FFree1Str var_B0
  loc_A2DEB8: Branch loc_A2DF78
  loc_A2DEBB: FLdI2 var_AC
  loc_A2DEBE: LitI2_Byte 4
  loc_A2DEC0: EqI2
  loc_A2DEC1: BranchF loc_A2DEFB
  loc_A2DEC4: LitVarStr var_94, vbNullString
  loc_A2DEC9: PopAdLdVar
  loc_A2DECA: FLdPr Me
  loc_A2DECD: VCallAd Control_ID_FiltroMsk
  loc_A2DED0: FStAdFunc var_A8
  loc_A2DED3: FLdPr var_A8
  loc_A2DED6: LateIdSt
  loc_A2DEDB: FFree1Ad var_A8
  loc_A2DEDE: LitStr "DetaCuco"
  loc_A2DEE1: FStStrCopy var_B0
  loc_A2DEE4: FLdRfVar var_B0
  loc_A2DEE7: FLdPr Me
  loc_A2DEEA: MemLdRfVar from_stack_1.global_56
  loc_A2DEED: NewIfNullPr clsdebito
  loc_A2DEF0: Call clsdebito.Sort(from_stack_1v)
  loc_A2DEF5: FFree1Str var_B0
  loc_A2DEF8: Branch loc_A2DF78
  loc_A2DEFB: FLdI2 var_AC
  loc_A2DEFE: LitI2_Byte 5
  loc_A2DF00: EqI2
  loc_A2DF01: BranchF loc_A2DF3B
  loc_A2DF04: LitVarStr var_94, vbNullString
  loc_A2DF09: PopAdLdVar
  loc_A2DF0A: FLdPr Me
  loc_A2DF0D: VCallAd Control_ID_FiltroMsk
  loc_A2DF10: FStAdFunc var_A8
  loc_A2DF13: FLdPr var_A8
  loc_A2DF16: LateIdSt
  loc_A2DF1B: FFree1Ad var_A8
  loc_A2DF1E: LitStr "DetaProv"
  loc_A2DF21: FStStrCopy var_B0
  loc_A2DF24: FLdRfVar var_B0
  loc_A2DF27: FLdPr Me
  loc_A2DF2A: MemLdRfVar from_stack_1.global_56
  loc_A2DF2D: NewIfNullPr clsdebito
  loc_A2DF30: Call clsdebito.Sort(from_stack_1v)
  loc_A2DF35: FFree1Str var_B0
  loc_A2DF38: Branch loc_A2DF78
  loc_A2DF3B: FLdI2 var_AC
  loc_A2DF3E: LitI2_Byte 6
  loc_A2DF40: EqI2
  loc_A2DF41: BranchF loc_A2DF78
  loc_A2DF44: LitVarStr var_94, vbNullString
  loc_A2DF49: PopAdLdVar
  loc_A2DF4A: FLdPr Me
  loc_A2DF4D: VCallAd Control_ID_FiltroMsk
  loc_A2DF50: FStAdFunc var_A8
  loc_A2DF53: FLdPr var_A8
  loc_A2DF56: LateIdSt
  loc_A2DF5B: FFree1Ad var_A8
  loc_A2DF5E: LitStr "DetaDebi"
  loc_A2DF61: FStStrCopy var_B0
  loc_A2DF64: FLdRfVar var_B0
  loc_A2DF67: FLdPr Me
  loc_A2DF6A: MemLdRfVar from_stack_1.global_56
  loc_A2DF6D: NewIfNullPr clsdebito
  loc_A2DF70: Call clsdebito.Sort(from_stack_1v)
  loc_A2DF75: FFree1Str var_B0
  loc_A2DF78: ExitProcHresult
End Sub

Private Sub NufaDeveTxt_GotFocus() '9AA52C
  'Data Table: 4E878C
  loc_9AA494: FLdRfVar var_8C
  loc_9AA497: FLdPr Me
  loc_9AA49A: VCallAd Control_ID_NufaDeveTxt
  loc_9AA49D: FStAdFunc var_88
  loc_9AA4A0: FLdPr var_88
  loc_9AA4A3:  = Me.Text
  loc_9AA4A8: ILdRf var_8C
  loc_9AA4AB: LitStr vbNullString
  loc_9AA4AE: EqStr
  loc_9AA4B0: FFree1Str var_8C
  loc_9AA4B3: FFree1Ad var_88
  loc_9AA4B6: BranchF loc_9AA4D0
  loc_9AA4B9: LitStr "00000000"
  loc_9AA4BC: FLdPr Me
  loc_9AA4BF: VCallAd Control_ID_NufaDeveTxt
  loc_9AA4C2: FStAdFunc var_88
  loc_9AA4C5: FLdPr var_88
  loc_9AA4C8: Me.Text = from_stack_1
  loc_9AA4CD: FFree1Ad var_88
  loc_9AA4D0: LitStr "Municipalidad de Guaymallén"
  loc_9AA4D3: LitStr "Municipalidad de Malargüe"
  loc_9AA4D6: NeStr
  loc_9AA4D8: BranchF loc_9AA517
  loc_9AA4DB: FLdRfVar var_8C
  loc_9AA4DE: FLdPr Me
  loc_9AA4E1: VCallAd Control_ID_TifaDeveCbo
  loc_9AA4E4: FStAdFunc var_88
  loc_9AA4E7: FLdPr var_88
  loc_9AA4EA:  = Me.Text
  loc_9AA4EF: ILdRf var_8C
  loc_9AA4F2: LitStr "s/f"
  loc_9AA4F5: EqStr
  loc_9AA4F7: FFree1Str var_8C
  loc_9AA4FA: FFree1Ad var_88
  loc_9AA4FD: BranchF loc_9AA517
  loc_9AA500: LitStr "0"
  loc_9AA503: FLdPr Me
  loc_9AA506: VCallAd Control_ID_NufaDeveTxt
  loc_9AA509: FStAdFunc var_88
  loc_9AA50C: FLdPr var_88
  loc_9AA50F: Me.Text = from_stack_1
  loc_9AA514: FFree1Ad var_88
  loc_9AA517: FLdPr Me
  loc_9AA51A: VCallAd Control_ID_NufaDeveTxt
  loc_9AA51D: CVarAd
  loc_9AA521: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9AA526: FFree1Var var_9C = ""
  loc_9AA529: ExitProcHresult
End Sub

Private Sub NufaDeveTxt_KeyPress(KeyAscii As Integer) '9595E4
  'Data Table: 4E878C
  loc_9595CC: LitStr "0123456789"
  loc_9595CF: FStStrCopy var_88
  loc_9595D2: FLdRfVar var_88
  loc_9595D5: ILdRf KeyAscii
  loc_9595D8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9595DD: IStI2 KeyAscii
  loc_9595E0: FFree1Str var_88
  loc_9595E3: ExitProcHresult
End Sub

Private Sub NufaDeveTxt_Validate(Cancel As Boolean) 'A3DCD4
  'Data Table: 4E878C
  loc_A3DABC: FLdRfVar var_8A
  loc_A3DABF: FLdPr Me
  loc_A3DAC2: VCallAd Control_ID_cmdCancelar
  loc_A3DAC5: FStAdFunc var_88
  loc_A3DAC8: FLdPr var_88
  loc_A3DACB:  = Me.Value
  loc_A3DAD0: FLdI2 var_8A
  loc_A3DAD3: NotI4
  loc_A3DAD4: FLdRfVar var_92
  loc_A3DAD7: FLdPr Me
  loc_A3DADA: VCallAd Control_ID_NufaDeveTxt
  loc_A3DADD: FStAdFunc var_90
  loc_A3DAE0: FLdPr var_90
  loc_A3DAE3:  = Me.Enabled
  loc_A3DAE8: FLdI2 var_92
  loc_A3DAEB: AndI4
  loc_A3DAEC: FFreeAd var_88 = ""
  loc_A3DAF3: BranchF loc_A3DCD1
  loc_A3DAF6: FLdRfVar var_98
  loc_A3DAF9: FLdPr Me
  loc_A3DAFC: VCallAd Control_ID_NufaDeveTxt
  loc_A3DAFF: FStAdFunc var_88
  loc_A3DB02: FLdPr var_88
  loc_A3DB05:  = Me.Text
  loc_A3DB0A: FLdRfVar var_9C
  loc_A3DB0D: FLdPr Me
  loc_A3DB10: VCallAd Control_ID_TifaDeveCbo
  loc_A3DB13: FStAdFunc var_90
  loc_A3DB16: FLdPr var_90
  loc_A3DB19:  = Me.Text
  loc_A3DB1E: ILdRf var_9C
  loc_A3DB21: ILdRf var_98
  loc_A3DB24: ImpAdCallI2 Proc_266_20_996550(, )
  loc_A3DB29: FStStrNoPop var_A0
  loc_A3DB2C: FLdPr Me
  loc_A3DB2F: MemStStrCopy
  loc_A3DB33: FFreeStr var_98 = "": var_9C = ""
  loc_A3DB3C: FFreeAd var_88 = ""
  loc_A3DB43: FLdPr Me
  loc_A3DB46: VCallAd Control_ID_NufaDeveTxt
  loc_A3DB49: FStAdFunc var_A8
  loc_A3DB4C: LitNothing
  loc_A3DB4E: CastAd
  loc_A3DB51: FStAdFunc var_A4
  loc_A3DB54: FLdRfVar var_A4
  loc_A3DB57: FLdZeroAd var_A8
  loc_A3DB5A: FStAdFuncNoPop
  loc_A3DB5D: CastAd
  loc_A3DB60: FStAdFunc var_90
  loc_A3DB63: FLdRfVar var_90
  loc_A3DB66: FLdPr Me
  loc_A3DB69: MemLdRfVar from_stack_1.global_68
  loc_A3DB6C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A3DB71: IStI2 Cancel
  loc_A3DB74: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A3DB7F: ILdI2 Cancel
  loc_A3DB82: NotI4
  loc_A3DB83: BranchF loc_A3DCD1
  loc_A3DB86: FLdRfVar var_98
  loc_A3DB89: FLdPr Me
  loc_A3DB8C: VCallAd Control_ID_NufaDeveTxt
  loc_A3DB8F: FStAdFunc var_88
  loc_A3DB92: FLdPr var_88
  loc_A3DB95:  = Me.Text
  loc_A3DB9A: LitI4 1
  loc_A3DB9F: LitI4 1
  loc_A3DBA4: LitVarStr var_C8, "00000000"
  loc_A3DBA9: FStVarCopyObj var_D8
  loc_A3DBAC: FLdRfVar var_D8
  loc_A3DBAF: FLdZeroAd var_98
  loc_A3DBB2: CVarStr var_B8
  loc_A3DBB5: ImpAdCallI2 Format$(, )
  loc_A3DBBA: FStStrNoPop var_9C
  loc_A3DBBD: FLdPr Me
  loc_A3DBC0: VCallAd Control_ID_NufaDeveTxt
  loc_A3DBC3: FStAdFunc var_90
  loc_A3DBC6: FLdPr var_90
  loc_A3DBC9: Me.Text = from_stack_1
  loc_A3DBCE: FFree1Str var_9C
  loc_A3DBD1: FFreeAd var_88 = ""
  loc_A3DBD8: FFreeVar var_B8 = ""
  loc_A3DBDF: FLdRfVar var_98
  loc_A3DBE2: FLdPr Me
  loc_A3DBE5: VCallAd Control_ID_ExpeImpuTxt
  loc_A3DBE8: FStAdFunc var_88
  loc_A3DBEB: FLdPr var_88
  loc_A3DBEE:  = Me.Text
  loc_A3DBF3: FLdRfVar var_9C
  loc_A3DBF6: FLdPr Me
  loc_A3DBF9: VCallAd Control_ID_CucuPersTxt
  loc_A3DBFC: FStAdFunc var_90
  loc_A3DBFF: FLdPr var_90
  loc_A3DC02:  = Me.Text
  loc_A3DC07: FLdRfVar var_A0
  loc_A3DC0A: FLdPr Me
  loc_A3DC0D: VCallAd Control_ID_TifaDeveCbo
  loc_A3DC10: FStAdFunc var_A4
  loc_A3DC13: FLdPr var_A4
  loc_A3DC16:  = Me.Text
  loc_A3DC1B: FLdRfVar var_DC
  loc_A3DC1E: FLdPr Me
  loc_A3DC21: VCallAd Control_ID_SufaDeveTxt
  loc_A3DC24: FStAdFunc var_A8
  loc_A3DC27: FLdPr var_A8
  loc_A3DC2A:  = Me.Text
  loc_A3DC2F: FLdRfVar var_E4
  loc_A3DC32: FLdPr Me
  loc_A3DC35: VCallAd Control_ID_NufaDeveTxt
  loc_A3DC38: FStAdFunc var_E0
  loc_A3DC3B: FLdPr var_E0
  loc_A3DC3E:  = Me.Text
  loc_A3DC43: LitI2_Byte 0
  loc_A3DC45: LitI2_Byte 0
  loc_A3DC47: ILdRf var_A0
  loc_A3DC4A: ILdRf var_DC
  loc_A3DC4D: ConcatStr
  loc_A3DC4E: FStStrNoPop var_E8
  loc_A3DC51: ILdRf var_E4
  loc_A3DC54: ConcatStr
  loc_A3DC55: FStStrNoPop var_EC
  loc_A3DC58: ILdRf var_9C
  loc_A3DC5B: ILdRf var_98
  loc_A3DC5E: LitI4 0
  loc_A3DC63: ImpAdLdI2 MemVar_C3D064
  loc_A3DC66: ImpAdCallI2 Proc_266_24_AF5868(, , , , , , )
  loc_A3DC6B: FStStrNoPop var_F0
  loc_A3DC6E: FLdPr Me
  loc_A3DC71: MemStStrCopy
  loc_A3DC75: FFreeStr var_A0 = "": var_DC = "": var_E8 = "": var_E4 = "": var_98 = "": var_9C = "": var_EC = ""
  loc_A3DC88: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_A8 = ""
  loc_A3DC95: FLdPr Me
  loc_A3DC98: VCallAd Control_ID_NufaDeveTxt
  loc_A3DC9B: FStAdFunc var_A8
  loc_A3DC9E: LitNothing
  loc_A3DCA0: CastAd
  loc_A3DCA3: FStAdFunc var_A4
  loc_A3DCA6: FLdRfVar var_A4
  loc_A3DCA9: FLdZeroAd var_A8
  loc_A3DCAC: FStAdFuncNoPop
  loc_A3DCAF: CastAd
  loc_A3DCB2: FStAdFunc var_90
  loc_A3DCB5: FLdRfVar var_90
  loc_A3DCB8: FLdPr Me
  loc_A3DCBB: MemLdRfVar from_stack_1.global_68
  loc_A3DCBE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A3DCC3: IStI2 Cancel
  loc_A3DCC6: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A3DCD1: ExitProcHresult
End Sub

Private Sub TifaDeveCbo_GotFocus() '994A28
  'Data Table: 4E878C
  loc_9949D0: FLdRfVar var_8C
  loc_9949D3: FLdPr Me
  loc_9949D6: VCallAd Control_ID_CucuPersTxt
  loc_9949D9: FStAdFunc var_88
  loc_9949DC: FLdPr var_88
  loc_9949DF:  = Me.Text
  loc_9949E4: FLdPr Me
  loc_9949E7: MemLdRfVar from_stack_1.global_84
  loc_9949EA: NewIfNullRf
  loc_9949EE: ILdRf var_8C
  loc_9949F1: ImpAdCallFPR4 Proc_259_26_B6A94C(, )
  loc_9949F6: FFree1Str var_8C
  loc_9949F9: FFree1Ad var_88
  loc_9949FC: FLdRfVar var_8C
  loc_9949FF: FLdPr Me
  loc_994A02: MemLdRfVar from_stack_1.global_84
  loc_994A05: NewIfNullPr tblproveedor
  loc_994A08: from_stack_1v = tblproveedor.FactProvGet()
  loc_994A0D: ILdRf var_8C
  loc_994A10: FLdPr Me
  loc_994A13: VCallAd Control_ID_TifaDeveCbo
  loc_994A16: FStAdFunc var_88
  loc_994A19: FLdPr var_88
  loc_994A1C: Me.Text = from_stack_1
  loc_994A21: FFree1Str var_8C
  loc_994A24: FFree1Ad var_88
  loc_994A27: ExitProcHresult
End Sub

Private Sub TifaDeveCbo_KeyPress(KeyAscii As Integer) '959844
  'Data Table: 4E878C
  loc_95982C: LitStr "fs"
  loc_95982F: FStStrCopy var_88
  loc_959832: FLdRfVar var_88
  loc_959835: ILdRf KeyAscii
  loc_959838: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_95983D: IStI2 KeyAscii
  loc_959840: FFree1Str var_88
  loc_959843: ExitProcHresult
End Sub

Private Sub TifaDeveCbo_Validate(Cancel As Boolean) '9DDC10
  'Data Table: 4E878C
  loc_9DDB1C: FLdRfVar var_8A
  loc_9DDB1F: FLdPr Me
  loc_9DDB22: VCallAd Control_ID_cmdCancelar
  loc_9DDB25: FStAdFunc var_88
  loc_9DDB28: FLdPr var_88
  loc_9DDB2B:  = Me.Value
  loc_9DDB30: FLdI2 var_8A
  loc_9DDB33: NotI4
  loc_9DDB34: FLdRfVar var_92
  loc_9DDB37: FLdPr Me
  loc_9DDB3A: VCallAd Control_ID_TifaDeveCbo
  loc_9DDB3D: FStAdFunc var_90
  loc_9DDB40: FLdPr var_90
  loc_9DDB43:  = Me.Enabled
  loc_9DDB48: FLdI2 var_92
  loc_9DDB4B: AndI4
  loc_9DDB4C: FFreeAd var_88 = ""
  loc_9DDB53: BranchF loc_9DDC0C
  loc_9DDB56: FLdRfVar var_98
  loc_9DDB59: FLdPr Me
  loc_9DDB5C: VCallAd Control_ID_TifaDeveCbo
  loc_9DDB5F: FStAdFunc var_88
  loc_9DDB62: FLdPr var_88
  loc_9DDB65:  = Me.Text
  loc_9DDB6A: FLdRfVar var_9C
  loc_9DDB6D: FLdPr Me
  loc_9DDB70: VCallAd Control_ID_CucuPersTxt
  loc_9DDB73: FStAdFunc var_90
  loc_9DDB76: FLdPr var_90
  loc_9DDB79:  = Me.Text
  loc_9DDB7E: FLdPr Me
  loc_9DDB81: VCallAd Control_ID_FechDebiMsk
  loc_9DDB84: FStAdFunc var_A0
  loc_9DDB87: FLdPr var_A0
  loc_9DDB8A: LateIdLdVar var_B0 DispID_15 0
  loc_9DDB91: PopAd
  loc_9DDB93: FLdPr Me
  loc_9DDB96: MemLdRfVar from_stack_1.global_84
  loc_9DDB99: NewIfNullRf
  loc_9DDB9D: FLdRfVar var_B0
  loc_9DDBA0: CStrVarTmp
  loc_9DDBA1: FStStrNoPop var_B4
  loc_9DDBA4: ILdRf var_9C
  loc_9DDBA7: ILdRf var_98
  loc_9DDBAA: ImpAdCallI2 Proc_266_23_A2F578(, , , )
  loc_9DDBAF: FStStrNoPop var_B8
  loc_9DDBB2: FLdPr Me
  loc_9DDBB5: MemStStrCopy
  loc_9DDBB9: FFreeStr var_98 = "": var_9C = "": var_B4 = ""
  loc_9DDBC4: FFreeAd var_88 = "": var_90 = ""
  loc_9DDBCD: FFree1Var var_B0 = ""
  loc_9DDBD0: FLdPr Me
  loc_9DDBD3: VCallAd Control_ID_TifaDeveCbo
  loc_9DDBD6: FStAdFunc var_BC
  loc_9DDBD9: LitNothing
  loc_9DDBDB: CastAd
  loc_9DDBDE: FStAdFunc var_A0
  loc_9DDBE1: FLdRfVar var_A0
  loc_9DDBE4: FLdZeroAd var_BC
  loc_9DDBE7: FStAdFuncNoPop
  loc_9DDBEA: CastAd
  loc_9DDBED: FStAdFunc var_90
  loc_9DDBF0: FLdRfVar var_90
  loc_9DDBF3: FLdPr Me
  loc_9DDBF6: MemLdRfVar from_stack_1.global_68
  loc_9DDBF9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DDBFE: IStI2 Cancel
  loc_9DDC01: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9DDC0C: ExitProcHresult
  loc_9DDC0D: CastAd
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '9A0204
  'Data Table: 4E878C
  loc_9A0194: LitVarStr var_94, vbNullString
  loc_9A0199: PopAdLdVar
  loc_9A019A: FLdPr Me
  loc_9A019D: VCallAd Control_ID_CodiOrgaMsk
  loc_9A01A0: FStAdFunc var_A8
  loc_9A01A3: FLdPr var_A8
  loc_9A01A6: LateIdSt
  loc_9A01AB: FFree1Ad var_A8
  loc_9A01AE: FLdPr Me
  loc_9A01B1: VCallAd Control_ID_CodiOrgaMsk
  loc_9A01B4: FStAdFunc var_A8
  loc_9A01B7: FLdPr var_A8
  loc_9A01BA: LateIdLdVar var_B8 DispID_22 0
  loc_9A01C1: CStrVarTmp
  loc_9A01C2: FStStrNoPop var_BC
  loc_9A01C5: LitStr vbNullString
  loc_9A01C8: EqStr
  loc_9A01CA: FFree1Str var_BC
  loc_9A01CD: FFree1Ad var_A8
  loc_9A01D0: FFree1Var var_B8 = ""
  loc_9A01D3: BranchF loc_9A01F0
  loc_9A01D6: LitVarStr var_94, vbNullString
  loc_9A01DB: PopAdLdVar
  loc_9A01DC: FLdPr Me
  loc_9A01DF: VCallAd Control_ID_CodiOrgaMsk
  loc_9A01E2: FStAdFunc var_A8
  loc_9A01E5: FLdPr var_A8
  loc_9A01E8: LateIdSt
  loc_9A01ED: FFree1Ad var_A8
  loc_9A01F0: FLdPr Me
  loc_9A01F3: VCallAd Control_ID_CodiOrgaMsk
  loc_9A01F6: CVarAd
  loc_9A01FA: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A01FF: FFree1Var var_B8 = ""
  loc_9A0202: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 '96A7CC
  'Data Table: 4E878C
  loc_96A7B0: LitVarStr var_94, "######"
  loc_96A7B5: PopAdLdVar
  loc_96A7B6: FLdPr Me
  loc_96A7B9: VCallAd Control_ID_CodiOrgaMsk
  loc_96A7BC: FStAdFunc var_A8
  loc_96A7BF: FLdPr var_A8
  loc_96A7C2: LateIdSt
  loc_96A7C7: FFree1Ad var_A8
  loc_96A7CA: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'B57B34
  'Data Table: 4E878C
  loc_B5704C: FLdRfVar var_8A
  loc_B5704F: FLdPr Me
  loc_B57052: VCallAd Control_ID_cmdCancelar
  loc_B57055: FStAdFunc var_88
  loc_B57058: FLdPr var_88
  loc_B5705B:  = Me.Value
  loc_B57060: FLdI2 var_8A
  loc_B57063: NotI4
  loc_B57064: FLdPr Me
  loc_B57067: VCallAd Control_ID_CodiOrgaMsk
  loc_B5706A: FStAdFunc var_90
  loc_B5706D: FLdPr var_90
  loc_B57070: LateIdLdVar var_A0 DispID_13 -32767
  loc_B57077: CBoolVar
  loc_B57079: AndI4
  loc_B5707A: FFreeAd var_88 = ""
  loc_B57081: FFree1Var var_A0 = ""
  loc_B57084: BranchF loc_B57B33
  loc_B57087: FLdPr Me
  loc_B5708A: VCallAd Control_ID_CodiOrgaMsk
  loc_B5708D: FStAdFunc var_88
  loc_B57090: FLdPr var_88
  loc_B57093: LateIdLdVar var_A0 DispID_22 0
  loc_B5709A: CStrVarTmp
  loc_B5709B: FStStrNoPop var_A4
  loc_B5709E: ImpAdCallI2 Trim$()
  loc_B570A3: FStStrNoPop var_A8
  loc_B570A6: LitStr vbNullString
  loc_B570A9: NeStr
  loc_B570AB: FFreeStr var_A4 = ""
  loc_B570B2: FFree1Ad var_88
  loc_B570B5: FFree1Var var_A0 = ""
  loc_B570B8: BranchF loc_B57918
  loc_B570BB: FLdPr Me
  loc_B570BE: VCallAd Control_ID_CodiOrgaMsk
  loc_B570C1: FStAdFunc var_88
  loc_B570C4: FLdRfVar var_88
  loc_B570C7: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B570CC: FFree1Ad var_88
  loc_B570CF: BranchF loc_B574F5
  loc_B570D2: FLdPr Me
  loc_B570D5: VCallAd Control_ID_CodiOrgaMsk
  loc_B570D8: FStAdFunc var_88
  loc_B570DB: FLdPr var_88
  loc_B570DE: LateIdLdVar var_A0 DispID_22 0
  loc_B570E5: PopAd
  loc_B570E7: LitStr " AND o.CodiOrga = '"
  loc_B570EA: LitI4 0
  loc_B570EF: LitI4 -1
  loc_B570F4: LitI4 1
  loc_B570F9: LitStr vbNullString
  loc_B570FC: LitStr "."
  loc_B570FF: FLdRfVar var_A0
  loc_B57102: CStrVarTmp
  loc_B57103: FStStrNoPop var_A4
  loc_B57106: ImpAdCallI2 Replace(, , , , , )
  loc_B5710B: FStStrNoPop var_A8
  loc_B5710E: ConcatStr
  loc_B5710F: FStStrNoPop var_AC
  loc_B57112: LitStr "'"
  loc_B57115: ConcatStr
  loc_B57116: FStStrNoPop var_B0
  loc_B57119: ImpAdLdI2 MemVar_C3D064
  loc_B5711C: ImpAdLdRf MemVar_C3D710
  loc_B5711F: NewIfNullPr bscOrganigrama
  loc_B57122: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B57127: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B57132: FFree1Ad var_88
  loc_B57135: FFree1Var var_A0 = ""
  loc_B57138: FLdRfVar var_B4
  loc_B5713B: FLdRfVar var_90
  loc_B5713E: FLdRfVar var_88
  loc_B57141: ImpAdLdRf MemVar_C3D710
  loc_B57144: NewIfNullPr bscOrganigrama
  loc_B57147: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5714C: FLdPr var_88
  loc_B5714F: from_stack_1v = clsbase.RsFrmGet()
  loc_B57154: FLdPr var_90
  loc_B57157:  = Me.RecordCount
  loc_B5715C: ILdRf var_B4
  loc_B5715F: LitI4 1
  loc_B57164: EqI4
  loc_B57165: FFreeAd var_88 = ""
  loc_B5716C: BranchF loc_B57291
  loc_B5716F: FLdRfVar var_A0
  loc_B57172: FLdRfVar var_CC
  loc_B57175: LitVarStr var_C8, "CodiOrga"
  loc_B5717A: PopAdLdVar
  loc_B5717B: FLdRfVar var_B8
  loc_B5717E: FLdRfVar var_90
  loc_B57181: FLdRfVar var_88
  loc_B57184: ImpAdLdRf MemVar_C3D710
  loc_B57187: NewIfNullPr bscOrganigrama
  loc_B5718A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5718F: FLdPr var_88
  loc_B57192: from_stack_1v = clsbase.RsFrmGet()
  loc_B57197: FLdPr var_90
  loc_B5719A:  = Me.Fields
  loc_B5719F: FLdPr var_B8
  loc_B571A2: from_stack_2 = Me.Item(from_stack_1)
  loc_B571A7: FLdPr var_CC
  loc_B571AA:  = Me.Value
  loc_B571AF: FLdRfVar var_A4
  loc_B571B2: FLdPr Me
  loc_B571B5:  = Me.Name
  loc_B571BA: FLdPr Me
  loc_B571BD: MemLdRfVar from_stack_1.global_88
  loc_B571C0: NewIfNullRf
  loc_B571C4: ILdRf var_A4
  loc_B571C7: FLdRfVar var_A0
  loc_B571CA: CStrVarTmp
  loc_B571CB: FStStrNoPop var_A8
  loc_B571CE: ImpAdLdI2 MemVar_C3D064
  loc_B571D1: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B571D6: FStStrNoPop var_AC
  loc_B571D9: FLdPr Me
  loc_B571DC: MemStStrCopy
  loc_B571E0: FFreeStr var_A8 = "": var_A4 = ""
  loc_B571E9: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B571F4: FFree1Var var_A0 = ""
  loc_B571F7: FLdRfVar var_A4
  loc_B571FA: FLdPr Me
  loc_B571FD: MemLdRfVar from_stack_1.global_88
  loc_B57200: NewIfNullPr tblorganigrama
  loc_B57203: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B57208: FLdZeroAd var_A4
  loc_B5720B: CVarStr var_A0
  loc_B5720E: PopAdLdVar
  loc_B5720F: FLdPr Me
  loc_B57212: VCallAd Control_ID_CodiOrgaMsk
  loc_B57215: FStAdFunc var_88
  loc_B57218: FLdPr var_88
  loc_B5721B: LateIdSt
  loc_B57220: FFree1Ad var_88
  loc_B57223: FFree1Var var_A0 = ""
  loc_B57226: FLdRfVar var_A4
  loc_B57229: FLdPr Me
  loc_B5722C: MemLdRfVar from_stack_1.global_88
  loc_B5722F: NewIfNullPr tblorganigrama
  loc_B57232: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B57237: ILdRf var_A4
  loc_B5723A: FLdPr Me
  loc_B5723D: VCallAd Control_ID_DetaOrgaLbl
  loc_B57240: FStAdFunc var_88
  loc_B57243: FLdPr var_88
  loc_B57246: Me.Caption = from_stack_1
  loc_B5724B: FFree1Str var_A4
  loc_B5724E: FFree1Ad var_88
  loc_B57251: FLdPr Me
  loc_B57254: VCallAd Control_ID_CodiOrgaMsk
  loc_B57257: FStAdFunc var_CC
  loc_B5725A: FLdPr Me
  loc_B5725D: VCallAd Control_ID_DetaOrgaLbl
  loc_B57260: FStAdFunc var_B8
  loc_B57263: FLdRfVar var_B8
  loc_B57266: FLdZeroAd var_CC
  loc_B57269: FStAdFuncNoPop
  loc_B5726C: CastAd
  loc_B5726F: FStAdFunc var_90
  loc_B57272: FLdRfVar var_90
  loc_B57275: FLdPr Me
  loc_B57278: MemLdRfVar from_stack_1.global_68
  loc_B5727B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57280: IStI2 Cancel
  loc_B57283: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5728E: Branch loc_B574F2
  loc_B57291: FLdRfVar var_B4
  loc_B57294: FLdRfVar var_90
  loc_B57297: FLdRfVar var_88
  loc_B5729A: ImpAdLdRf MemVar_C3D710
  loc_B5729D: NewIfNullPr bscOrganigrama
  loc_B572A0: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B572A5: FLdPr var_88
  loc_B572A8: from_stack_1v = clsbase.RsFrmGet()
  loc_B572AD: FLdPr var_90
  loc_B572B0:  = Me.RecordCount
  loc_B572B5: ILdRf var_B4
  loc_B572B8: LitI4 1
  loc_B572BD: GtI4
  loc_B572BE: FFreeAd var_88 = ""
  loc_B572C5: BranchF loc_B57474
  loc_B572C8: LitVar_Missing var_DC
  loc_B572CB: PopAdLdVar
  loc_B572CC: LitVarI4
  loc_B572D4: PopAdLdVar
  loc_B572D5: ImpAdLdRf MemVar_C3D710
  loc_B572D8: NewIfNullPr bscOrganigrama
  loc_B572DB: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B572E0: FLdRfVar var_B4
  loc_B572E3: FLdRfVar var_88
  loc_B572E6: ImpAdLdRf MemVar_C3D710
  loc_B572E9: NewIfNullPr bscOrganigrama
  loc_B572EC: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B572F1: FLdPr var_88
  loc_B572F4: from_stack_1 = clsbase.RecordCount
  loc_B572F9: ILdRf var_B4
  loc_B572FC: LitI4 0
  loc_B57301: GtI4
  loc_B57302: FFree1Ad var_88
  loc_B57305: BranchF loc_B5742A
  loc_B57308: FLdRfVar var_A0
  loc_B5730B: FLdRfVar var_CC
  loc_B5730E: LitVarStr var_C8, "CodiOrga"
  loc_B57313: PopAdLdVar
  loc_B57314: FLdRfVar var_B8
  loc_B57317: FLdRfVar var_90
  loc_B5731A: FLdRfVar var_88
  loc_B5731D: ImpAdLdRf MemVar_C3D710
  loc_B57320: NewIfNullPr bscOrganigrama
  loc_B57323: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57328: FLdPr var_88
  loc_B5732B: from_stack_1v = clsbase.RsFrmGet()
  loc_B57330: FLdPr var_90
  loc_B57333:  = Me.Fields
  loc_B57338: FLdPr var_B8
  loc_B5733B: from_stack_2 = Me.Item(from_stack_1)
  loc_B57340: FLdPr var_CC
  loc_B57343:  = Me.Value
  loc_B57348: FLdRfVar var_A4
  loc_B5734B: FLdPr Me
  loc_B5734E:  = Me.Name
  loc_B57353: FLdPr Me
  loc_B57356: MemLdRfVar from_stack_1.global_88
  loc_B57359: NewIfNullRf
  loc_B5735D: ILdRf var_A4
  loc_B57360: FLdRfVar var_A0
  loc_B57363: CStrVarTmp
  loc_B57364: FStStrNoPop var_A8
  loc_B57367: ImpAdLdI2 MemVar_C3D064
  loc_B5736A: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B5736F: FStStrNoPop var_AC
  loc_B57372: FLdPr Me
  loc_B57375: MemStStrCopy
  loc_B57379: FFreeStr var_A8 = "": var_A4 = ""
  loc_B57382: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5738D: FFree1Var var_A0 = ""
  loc_B57390: FLdRfVar var_A4
  loc_B57393: FLdPr Me
  loc_B57396: MemLdRfVar from_stack_1.global_88
  loc_B57399: NewIfNullPr tblorganigrama
  loc_B5739C: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B573A1: FLdZeroAd var_A4
  loc_B573A4: CVarStr var_A0
  loc_B573A7: PopAdLdVar
  loc_B573A8: FLdPr Me
  loc_B573AB: VCallAd Control_ID_CodiOrgaMsk
  loc_B573AE: FStAdFunc var_88
  loc_B573B1: FLdPr var_88
  loc_B573B4: LateIdSt
  loc_B573B9: FFree1Ad var_88
  loc_B573BC: FFree1Var var_A0 = ""
  loc_B573BF: FLdRfVar var_A4
  loc_B573C2: FLdPr Me
  loc_B573C5: MemLdRfVar from_stack_1.global_88
  loc_B573C8: NewIfNullPr tblorganigrama
  loc_B573CB: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B573D0: ILdRf var_A4
  loc_B573D3: FLdPr Me
  loc_B573D6: VCallAd Control_ID_DetaOrgaLbl
  loc_B573D9: FStAdFunc var_88
  loc_B573DC: FLdPr var_88
  loc_B573DF: Me.Caption = from_stack_1
  loc_B573E4: FFree1Str var_A4
  loc_B573E7: FFree1Ad var_88
  loc_B573EA: FLdPr Me
  loc_B573ED: VCallAd Control_ID_CodiOrgaMsk
  loc_B573F0: FStAdFunc var_CC
  loc_B573F3: FLdPr Me
  loc_B573F6: VCallAd Control_ID_DetaOrgaLbl
  loc_B573F9: FStAdFunc var_B8
  loc_B573FC: FLdRfVar var_B8
  loc_B573FF: FLdZeroAd var_CC
  loc_B57402: FStAdFuncNoPop
  loc_B57405: CastAd
  loc_B57408: FStAdFunc var_90
  loc_B5740B: FLdRfVar var_90
  loc_B5740E: FLdPr Me
  loc_B57411: MemLdRfVar from_stack_1.global_68
  loc_B57414: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57419: IStI2 Cancel
  loc_B5741C: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57427: Branch loc_B57471
  loc_B5742A: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B5742D: FLdPr Me
  loc_B57430: MemStStrCopy
  loc_B57434: FLdPr Me
  loc_B57437: VCallAd Control_ID_CodiOrgaMsk
  loc_B5743A: FStAdFunc var_CC
  loc_B5743D: FLdPr Me
  loc_B57440: VCallAd Control_ID_DetaOrgaLbl
  loc_B57443: FStAdFunc var_B8
  loc_B57446: FLdRfVar var_B8
  loc_B57449: FLdZeroAd var_CC
  loc_B5744C: FStAdFuncNoPop
  loc_B5744F: CastAd
  loc_B57452: FStAdFunc var_90
  loc_B57455: FLdRfVar var_90
  loc_B57458: FLdPr Me
  loc_B5745B: MemLdRfVar from_stack_1.global_68
  loc_B5745E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57463: IStI2 Cancel
  loc_B57466: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57471: Branch loc_B574F2
  loc_B57474: FLdRfVar var_B4
  loc_B57477: FLdRfVar var_90
  loc_B5747A: FLdRfVar var_88
  loc_B5747D: ImpAdLdRf MemVar_C3D710
  loc_B57480: NewIfNullPr bscOrganigrama
  loc_B57483: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57488: FLdPr var_88
  loc_B5748B: from_stack_1v = clsbase.RsFrmGet()
  loc_B57490: FLdPr var_90
  loc_B57493:  = Me.RecordCount
  loc_B57498: ILdRf var_B4
  loc_B5749B: LitI4 1
  loc_B574A0: LtI4
  loc_B574A1: FFreeAd var_88 = ""
  loc_B574A8: BranchF loc_B574F2
  loc_B574AB: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B574AE: FLdPr Me
  loc_B574B1: MemStStrCopy
  loc_B574B5: FLdPr Me
  loc_B574B8: VCallAd Control_ID_CodiOrgaMsk
  loc_B574BB: FStAdFunc var_CC
  loc_B574BE: FLdPr Me
  loc_B574C1: VCallAd Control_ID_DetaOrgaLbl
  loc_B574C4: FStAdFunc var_B8
  loc_B574C7: FLdRfVar var_B8
  loc_B574CA: FLdZeroAd var_CC
  loc_B574CD: FStAdFuncNoPop
  loc_B574D0: CastAd
  loc_B574D3: FStAdFunc var_90
  loc_B574D6: FLdRfVar var_90
  loc_B574D9: FLdPr Me
  loc_B574DC: MemLdRfVar from_stack_1.global_68
  loc_B574DF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B574E4: IStI2 Cancel
  loc_B574E7: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B574F2: Branch loc_B57915
  loc_B574F5: FLdPr Me
  loc_B574F8: VCallAd Control_ID_CodiOrgaMsk
  loc_B574FB: FStAdFunc var_88
  loc_B574FE: FLdPr var_88
  loc_B57501: LateIdLdVar var_A0 DispID_22 0
  loc_B57508: PopAd
  loc_B5750A: LitStr " AND o.DetaOrga LIKE '" & Chr(37)
  loc_B5750D: LitI4 0
  loc_B57512: LitI4 -1
  loc_B57517: LitI4 1
  loc_B5751C: LitStr Chr(37)
  loc_B5751F: LitStr " "
  loc_B57522: FLdRfVar var_A0
  loc_B57525: CStrVarTmp
  loc_B57526: FStStrNoPop var_A4
  loc_B57529: ImpAdCallI2 Replace(, , , , , )
  loc_B5752E: FStStrNoPop var_A8
  loc_B57531: ConcatStr
  loc_B57532: FStStrNoPop var_AC
  loc_B57535: LitStr Chr(37) & "' "
  loc_B57538: ConcatStr
  loc_B57539: FStStrNoPop var_B0
  loc_B5753C: ImpAdLdI2 MemVar_C3D064
  loc_B5753F: ImpAdLdRf MemVar_C3D710
  loc_B57542: NewIfNullPr bscOrganigrama
  loc_B57545: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B5754A: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B57555: FFree1Ad var_88
  loc_B57558: FFree1Var var_A0 = ""
  loc_B5755B: FLdRfVar var_B4
  loc_B5755E: FLdRfVar var_90
  loc_B57561: FLdRfVar var_88
  loc_B57564: ImpAdLdRf MemVar_C3D710
  loc_B57567: NewIfNullPr bscOrganigrama
  loc_B5756A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5756F: FLdPr var_88
  loc_B57572: from_stack_1v = clsbase.RsFrmGet()
  loc_B57577: FLdPr var_90
  loc_B5757A:  = Me.RecordCount
  loc_B5757F: ILdRf var_B4
  loc_B57582: LitI4 1
  loc_B57587: EqI4
  loc_B57588: FFreeAd var_88 = ""
  loc_B5758F: BranchF loc_B576B4
  loc_B57592: FLdRfVar var_A0
  loc_B57595: FLdRfVar var_CC
  loc_B57598: LitVarStr var_C8, "CodiOrga"
  loc_B5759D: PopAdLdVar
  loc_B5759E: FLdRfVar var_B8
  loc_B575A1: FLdRfVar var_90
  loc_B575A4: FLdRfVar var_88
  loc_B575A7: ImpAdLdRf MemVar_C3D710
  loc_B575AA: NewIfNullPr bscOrganigrama
  loc_B575AD: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B575B2: FLdPr var_88
  loc_B575B5: from_stack_1v = clsbase.RsFrmGet()
  loc_B575BA: FLdPr var_90
  loc_B575BD:  = Me.Fields
  loc_B575C2: FLdPr var_B8
  loc_B575C5: from_stack_2 = Me.Item(from_stack_1)
  loc_B575CA: FLdPr var_CC
  loc_B575CD:  = Me.Value
  loc_B575D2: FLdRfVar var_A4
  loc_B575D5: FLdPr Me
  loc_B575D8:  = Me.Name
  loc_B575DD: FLdPr Me
  loc_B575E0: MemLdRfVar from_stack_1.global_88
  loc_B575E3: NewIfNullRf
  loc_B575E7: ILdRf var_A4
  loc_B575EA: FLdRfVar var_A0
  loc_B575ED: CStrVarTmp
  loc_B575EE: FStStrNoPop var_A8
  loc_B575F1: ImpAdLdI2 MemVar_C3D064
  loc_B575F4: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B575F9: FStStrNoPop var_AC
  loc_B575FC: FLdPr Me
  loc_B575FF: MemStStrCopy
  loc_B57603: FFreeStr var_A8 = "": var_A4 = ""
  loc_B5760C: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57617: FFree1Var var_A0 = ""
  loc_B5761A: FLdRfVar var_A4
  loc_B5761D: FLdPr Me
  loc_B57620: MemLdRfVar from_stack_1.global_88
  loc_B57623: NewIfNullPr tblorganigrama
  loc_B57626: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B5762B: FLdZeroAd var_A4
  loc_B5762E: CVarStr var_A0
  loc_B57631: PopAdLdVar
  loc_B57632: FLdPr Me
  loc_B57635: VCallAd Control_ID_CodiOrgaMsk
  loc_B57638: FStAdFunc var_88
  loc_B5763B: FLdPr var_88
  loc_B5763E: LateIdSt
  loc_B57643: FFree1Ad var_88
  loc_B57646: FFree1Var var_A0 = ""
  loc_B57649: FLdRfVar var_A4
  loc_B5764C: FLdPr Me
  loc_B5764F: MemLdRfVar from_stack_1.global_88
  loc_B57652: NewIfNullPr tblorganigrama
  loc_B57655: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B5765A: ILdRf var_A4
  loc_B5765D: FLdPr Me
  loc_B57660: VCallAd Control_ID_DetaOrgaLbl
  loc_B57663: FStAdFunc var_88
  loc_B57666: FLdPr var_88
  loc_B57669: Me.Caption = from_stack_1
  loc_B5766E: FFree1Str var_A4
  loc_B57671: FFree1Ad var_88
  loc_B57674: FLdPr Me
  loc_B57677: VCallAd Control_ID_CodiOrgaMsk
  loc_B5767A: FStAdFunc var_CC
  loc_B5767D: FLdPr Me
  loc_B57680: VCallAd Control_ID_DetaOrgaLbl
  loc_B57683: FStAdFunc var_B8
  loc_B57686: FLdRfVar var_B8
  loc_B57689: FLdZeroAd var_CC
  loc_B5768C: FStAdFuncNoPop
  loc_B5768F: CastAd
  loc_B57692: FStAdFunc var_90
  loc_B57695: FLdRfVar var_90
  loc_B57698: FLdPr Me
  loc_B5769B: MemLdRfVar from_stack_1.global_68
  loc_B5769E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B576A3: IStI2 Cancel
  loc_B576A6: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B576B1: Branch loc_B57915
  loc_B576B4: FLdRfVar var_B4
  loc_B576B7: FLdRfVar var_90
  loc_B576BA: FLdRfVar var_88
  loc_B576BD: ImpAdLdRf MemVar_C3D710
  loc_B576C0: NewIfNullPr bscOrganigrama
  loc_B576C3: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B576C8: FLdPr var_88
  loc_B576CB: from_stack_1v = clsbase.RsFrmGet()
  loc_B576D0: FLdPr var_90
  loc_B576D3:  = Me.RecordCount
  loc_B576D8: ILdRf var_B4
  loc_B576DB: LitI4 1
  loc_B576E0: GtI4
  loc_B576E1: FFreeAd var_88 = ""
  loc_B576E8: BranchF loc_B57897
  loc_B576EB: LitVar_Missing var_DC
  loc_B576EE: PopAdLdVar
  loc_B576EF: LitVarI4
  loc_B576F7: PopAdLdVar
  loc_B576F8: ImpAdLdRf MemVar_C3D710
  loc_B576FB: NewIfNullPr bscOrganigrama
  loc_B576FE: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B57703: FLdRfVar var_B4
  loc_B57706: FLdRfVar var_88
  loc_B57709: ImpAdLdRf MemVar_C3D710
  loc_B5770C: NewIfNullPr bscOrganigrama
  loc_B5770F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57714: FLdPr var_88
  loc_B57717: from_stack_1 = clsbase.RecordCount
  loc_B5771C: ILdRf var_B4
  loc_B5771F: LitI4 0
  loc_B57724: GtI4
  loc_B57725: FFree1Ad var_88
  loc_B57728: BranchF loc_B5784D
  loc_B5772B: FLdRfVar var_A0
  loc_B5772E: FLdRfVar var_CC
  loc_B57731: LitVarStr var_C8, "CodiOrga"
  loc_B57736: PopAdLdVar
  loc_B57737: FLdRfVar var_B8
  loc_B5773A: FLdRfVar var_90
  loc_B5773D: FLdRfVar var_88
  loc_B57740: ImpAdLdRf MemVar_C3D710
  loc_B57743: NewIfNullPr bscOrganigrama
  loc_B57746: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5774B: FLdPr var_88
  loc_B5774E: from_stack_1v = clsbase.RsFrmGet()
  loc_B57753: FLdPr var_90
  loc_B57756:  = Me.Fields
  loc_B5775B: FLdPr var_B8
  loc_B5775E: from_stack_2 = Me.Item(from_stack_1)
  loc_B57763: FLdPr var_CC
  loc_B57766:  = Me.Value
  loc_B5776B: FLdRfVar var_A4
  loc_B5776E: FLdPr Me
  loc_B57771:  = Me.Name
  loc_B57776: FLdPr Me
  loc_B57779: MemLdRfVar from_stack_1.global_88
  loc_B5777C: NewIfNullRf
  loc_B57780: ILdRf var_A4
  loc_B57783: FLdRfVar var_A0
  loc_B57786: CStrVarTmp
  loc_B57787: FStStrNoPop var_A8
  loc_B5778A: ImpAdLdI2 MemVar_C3D064
  loc_B5778D: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B57792: FStStrNoPop var_AC
  loc_B57795: FLdPr Me
  loc_B57798: MemStStrCopy
  loc_B5779C: FFreeStr var_A8 = "": var_A4 = ""
  loc_B577A5: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B577B0: FFree1Var var_A0 = ""
  loc_B577B3: FLdRfVar var_A4
  loc_B577B6: FLdPr Me
  loc_B577B9: MemLdRfVar from_stack_1.global_88
  loc_B577BC: NewIfNullPr tblorganigrama
  loc_B577BF: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B577C4: FLdZeroAd var_A4
  loc_B577C7: CVarStr var_A0
  loc_B577CA: PopAdLdVar
  loc_B577CB: FLdPr Me
  loc_B577CE: VCallAd Control_ID_CodiOrgaMsk
  loc_B577D1: FStAdFunc var_88
  loc_B577D4: FLdPr var_88
  loc_B577D7: LateIdSt
  loc_B577DC: FFree1Ad var_88
  loc_B577DF: FFree1Var var_A0 = ""
  loc_B577E2: FLdRfVar var_A4
  loc_B577E5: FLdPr Me
  loc_B577E8: MemLdRfVar from_stack_1.global_88
  loc_B577EB: NewIfNullPr tblorganigrama
  loc_B577EE: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B577F3: ILdRf var_A4
  loc_B577F6: FLdPr Me
  loc_B577F9: VCallAd Control_ID_DetaOrgaLbl
  loc_B577FC: FStAdFunc var_88
  loc_B577FF: FLdPr var_88
  loc_B57802: Me.Caption = from_stack_1
  loc_B57807: FFree1Str var_A4
  loc_B5780A: FFree1Ad var_88
  loc_B5780D: FLdPr Me
  loc_B57810: VCallAd Control_ID_CodiOrgaMsk
  loc_B57813: FStAdFunc var_CC
  loc_B57816: FLdPr Me
  loc_B57819: VCallAd Control_ID_DetaOrgaLbl
  loc_B5781C: FStAdFunc var_B8
  loc_B5781F: FLdRfVar var_B8
  loc_B57822: FLdZeroAd var_CC
  loc_B57825: FStAdFuncNoPop
  loc_B57828: CastAd
  loc_B5782B: FStAdFunc var_90
  loc_B5782E: FLdRfVar var_90
  loc_B57831: FLdPr Me
  loc_B57834: MemLdRfVar from_stack_1.global_68
  loc_B57837: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5783C: IStI2 Cancel
  loc_B5783F: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5784A: Branch loc_B57894
  loc_B5784D: LitStr "El Organigrama NO EXISTE. Verique..."
  loc_B57850: FLdPr Me
  loc_B57853: MemStStrCopy
  loc_B57857: FLdPr Me
  loc_B5785A: VCallAd Control_ID_CodiOrgaMsk
  loc_B5785D: FStAdFunc var_CC
  loc_B57860: FLdPr Me
  loc_B57863: VCallAd Control_ID_DetaOrgaLbl
  loc_B57866: FStAdFunc var_B8
  loc_B57869: FLdRfVar var_B8
  loc_B5786C: FLdZeroAd var_CC
  loc_B5786F: FStAdFuncNoPop
  loc_B57872: CastAd
  loc_B57875: FStAdFunc var_90
  loc_B57878: FLdRfVar var_90
  loc_B5787B: FLdPr Me
  loc_B5787E: MemLdRfVar from_stack_1.global_68
  loc_B57881: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57886: IStI2 Cancel
  loc_B57889: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57894: Branch loc_B57915
  loc_B57897: FLdRfVar var_B4
  loc_B5789A: FLdRfVar var_90
  loc_B5789D: FLdRfVar var_88
  loc_B578A0: ImpAdLdRf MemVar_C3D710
  loc_B578A3: NewIfNullPr bscOrganigrama
  loc_B578A6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B578AB: FLdPr var_88
  loc_B578AE: from_stack_1v = clsbase.RsFrmGet()
  loc_B578B3: FLdPr var_90
  loc_B578B6:  = Me.RecordCount
  loc_B578BB: ILdRf var_B4
  loc_B578BE: LitI4 1
  loc_B578C3: LtI4
  loc_B578C4: FFreeAd var_88 = ""
  loc_B578CB: BranchF loc_B57915
  loc_B578CE: LitStr "El organigrama NO EXISTE. Verique..."
  loc_B578D1: FLdPr Me
  loc_B578D4: MemStStrCopy
  loc_B578D8: FLdPr Me
  loc_B578DB: VCallAd Control_ID_CodiOrgaMsk
  loc_B578DE: FStAdFunc var_CC
  loc_B578E1: FLdPr Me
  loc_B578E4: VCallAd Control_ID_DetaOrgaLbl
  loc_B578E7: FStAdFunc var_B8
  loc_B578EA: FLdRfVar var_B8
  loc_B578ED: FLdZeroAd var_CC
  loc_B578F0: FStAdFuncNoPop
  loc_B578F3: CastAd
  loc_B578F6: FStAdFunc var_90
  loc_B578F9: FLdRfVar var_90
  loc_B578FC: FLdPr Me
  loc_B578FF: MemLdRfVar from_stack_1.global_68
  loc_B57902: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57907: IStI2 Cancel
  loc_B5790A: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57915: Branch loc_B57AE4
  loc_B57918: LitI2_Byte 0
  loc_B5791A: ImpAdLdRf MemVar_C3D710
  loc_B5791D: NewIfNullPr bscOrganigrama
  loc_B57920: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_B57925: LitNothing
  loc_B57927: CastAd
  loc_B5792A: FStAdFuncNoPop
  loc_B5792D: ImpAdLdRf MemVar_C3D710
  loc_B57930: NewIfNullPr bscOrganigrama
  loc_B57933: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_B57938: FFree1Ad var_88
  loc_B5793B: LitVar_Missing var_DC
  loc_B5793E: PopAdLdVar
  loc_B5793F: LitVarI4
  loc_B57947: PopAdLdVar
  loc_B57948: ImpAdLdRf MemVar_C3D710
  loc_B5794B: NewIfNullPr bscOrganigrama
  loc_B5794E: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B57953: FLdRfVar var_B4
  loc_B57956: FLdRfVar var_88
  loc_B57959: ImpAdLdRf MemVar_C3D710
  loc_B5795C: NewIfNullPr bscOrganigrama
  loc_B5795F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B57964: FLdPr var_88
  loc_B57967: from_stack_1 = clsbase.RecordCount
  loc_B5796C: ILdRf var_B4
  loc_B5796F: LitI4 0
  loc_B57974: GtI4
  loc_B57975: FFree1Ad var_88
  loc_B57978: BranchF loc_B57A9D
  loc_B5797B: FLdRfVar var_A0
  loc_B5797E: FLdRfVar var_CC
  loc_B57981: LitVarStr var_C8, "CodiOrga"
  loc_B57986: PopAdLdVar
  loc_B57987: FLdRfVar var_B8
  loc_B5798A: FLdRfVar var_90
  loc_B5798D: FLdRfVar var_88
  loc_B57990: ImpAdLdRf MemVar_C3D710
  loc_B57993: NewIfNullPr bscOrganigrama
  loc_B57996: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5799B: FLdPr var_88
  loc_B5799E: from_stack_1v = clsbase.RsFrmGet()
  loc_B579A3: FLdPr var_90
  loc_B579A6:  = Me.Fields
  loc_B579AB: FLdPr var_B8
  loc_B579AE: from_stack_2 = Me.Item(from_stack_1)
  loc_B579B3: FLdPr var_CC
  loc_B579B6:  = Me.Value
  loc_B579BB: FLdRfVar var_A4
  loc_B579BE: FLdPr Me
  loc_B579C1:  = Me.Name
  loc_B579C6: FLdPr Me
  loc_B579C9: MemLdRfVar from_stack_1.global_88
  loc_B579CC: NewIfNullRf
  loc_B579D0: ILdRf var_A4
  loc_B579D3: FLdRfVar var_A0
  loc_B579D6: CStrVarTmp
  loc_B579D7: FStStrNoPop var_A8
  loc_B579DA: ImpAdLdI2 MemVar_C3D064
  loc_B579DD: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B579E2: FStStrNoPop var_AC
  loc_B579E5: FLdPr Me
  loc_B579E8: MemStStrCopy
  loc_B579EC: FFreeStr var_A8 = "": var_A4 = ""
  loc_B579F5: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57A00: FFree1Var var_A0 = ""
  loc_B57A03: FLdRfVar var_A4
  loc_B57A06: FLdPr Me
  loc_B57A09: MemLdRfVar from_stack_1.global_88
  loc_B57A0C: NewIfNullPr tblorganigrama
  loc_B57A0F: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B57A14: FLdZeroAd var_A4
  loc_B57A17: CVarStr var_A0
  loc_B57A1A: PopAdLdVar
  loc_B57A1B: FLdPr Me
  loc_B57A1E: VCallAd Control_ID_CodiOrgaMsk
  loc_B57A21: FStAdFunc var_88
  loc_B57A24: FLdPr var_88
  loc_B57A27: LateIdSt
  loc_B57A2C: FFree1Ad var_88
  loc_B57A2F: FFree1Var var_A0 = ""
  loc_B57A32: FLdRfVar var_A4
  loc_B57A35: FLdPr Me
  loc_B57A38: MemLdRfVar from_stack_1.global_88
  loc_B57A3B: NewIfNullPr tblorganigrama
  loc_B57A3E: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B57A43: ILdRf var_A4
  loc_B57A46: FLdPr Me
  loc_B57A49: VCallAd Control_ID_DetaOrgaLbl
  loc_B57A4C: FStAdFunc var_88
  loc_B57A4F: FLdPr var_88
  loc_B57A52: Me.Caption = from_stack_1
  loc_B57A57: FFree1Str var_A4
  loc_B57A5A: FFree1Ad var_88
  loc_B57A5D: FLdPr Me
  loc_B57A60: VCallAd Control_ID_CodiOrgaMsk
  loc_B57A63: FStAdFunc var_CC
  loc_B57A66: FLdPr Me
  loc_B57A69: VCallAd Control_ID_DetaOrgaLbl
  loc_B57A6C: FStAdFunc var_B8
  loc_B57A6F: FLdRfVar var_B8
  loc_B57A72: FLdZeroAd var_CC
  loc_B57A75: FStAdFuncNoPop
  loc_B57A78: CastAd
  loc_B57A7B: FStAdFunc var_90
  loc_B57A7E: FLdRfVar var_90
  loc_B57A81: FLdPr Me
  loc_B57A84: MemLdRfVar from_stack_1.global_68
  loc_B57A87: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57A8C: IStI2 Cancel
  loc_B57A8F: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57A9A: Branch loc_B57AE4
  loc_B57A9D: LitStr "El organigrama NO EXISTE. Verifique..."
  loc_B57AA0: FLdPr Me
  loc_B57AA3: MemStStrCopy
  loc_B57AA7: FLdPr Me
  loc_B57AAA: VCallAd Control_ID_CodiOrgaMsk
  loc_B57AAD: FStAdFunc var_CC
  loc_B57AB0: FLdPr Me
  loc_B57AB3: VCallAd Control_ID_DetaOrgaLbl
  loc_B57AB6: FStAdFunc var_B8
  loc_B57AB9: FLdRfVar var_B8
  loc_B57ABC: FLdZeroAd var_CC
  loc_B57ABF: FStAdFuncNoPop
  loc_B57AC2: CastAd
  loc_B57AC5: FStAdFunc var_90
  loc_B57AC8: FLdRfVar var_90
  loc_B57ACB: FLdPr Me
  loc_B57ACE: MemLdRfVar from_stack_1.global_68
  loc_B57AD1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B57AD6: IStI2 Cancel
  loc_B57AD9: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B57AE4: ILdI2 Cancel
  loc_B57AE7: NotI4
  loc_B57AE8: BranchF loc_B57B19
  loc_B57AEB: FLdRfVar var_A4
  loc_B57AEE: FLdPr Me
  loc_B57AF1: MemLdRfVar from_stack_1.global_88
  loc_B57AF4: NewIfNullPr tblorganigrama
  loc_B57AF7: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B57AFC: ILdRf var_A4
  loc_B57AFF: FLdPr Me
  loc_B57B02: VCallAd Control_ID_DetaOrgaLbl
  loc_B57B05: FStAdFunc var_88
  loc_B57B08: FLdPr var_88
  loc_B57B0B: Me.Caption = from_stack_1
  loc_B57B10: FFree1Str var_A4
  loc_B57B13: FFree1Ad var_88
  loc_B57B16: Branch loc_B57B33
  loc_B57B19: LitVarStr var_C8, vbNullString
  loc_B57B1E: PopAdLdVar
  loc_B57B1F: FLdPr Me
  loc_B57B22: VCallAd Control_ID_CodiOrgaMsk
  loc_B57B25: FStAdFunc var_88
  loc_B57B28: FLdPr var_88
  loc_B57B2B: LateIdSt
  loc_B57B30: FFree1Ad var_88
  loc_B57B33: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyPress(KeyAscii As Integer) '9ACB30
  'Data Table: 4E878C
  loc_9ACA94: FLdPr Me
  loc_9ACA97: VCallAd Control_ID_CodiOrgaMsk
  loc_9ACA9A: FStAdFunc var_88
  loc_9ACA9D: FLdPr var_88
  loc_9ACAA0: LateIdLdVar var_98 DispID_22 0
  loc_9ACAA7: PopAd
  loc_9ACAA9: LitI4 0
  loc_9ACAAE: LitI4 -1
  loc_9ACAB3: LitI4 1
  loc_9ACAB8: LitStr vbNullString
  loc_9ACABB: LitStr "."
  loc_9ACABE: FLdRfVar var_98
  loc_9ACAC1: CStrVarTmp
  loc_9ACAC2: FStStrNoPop var_9C
  loc_9ACAC5: ImpAdCallI2 Replace(, , , , , )
  loc_9ACACA: FStStrNoPop var_A0
  loc_9ACACD: FnLenStr
  loc_9ACACE: LitI4 5
  loc_9ACAD3: GtI4
  loc_9ACAD4: FFreeStr var_9C = ""
  loc_9ACADB: FFree1Ad var_88
  loc_9ACADE: FFree1Var var_98 = ""
  loc_9ACAE1: BranchF loc_9ACB2F
  loc_9ACAE4: FLdPr Me
  loc_9ACAE7: VCallAd Control_ID_CodiOrgaMsk
  loc_9ACAEA: FStAdFunc var_88
  loc_9ACAED: FLdRfVar var_88
  loc_9ACAF0: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9ACAF5: FFree1Ad var_88
  loc_9ACAF8: BranchF loc_9ACB2F
  loc_9ACAFB: ILdI2 KeyAscii
  loc_9ACAFE: CI4UI1
  loc_9ACAFF: LitI4 8
  loc_9ACB04: NeI4
  loc_9ACB05: FLdPr Me
  loc_9ACB08: VCallAd Control_ID_CodiOrgaMsk
  loc_9ACB0B: FStAdFunc var_88
  loc_9ACB0E: FLdPr var_88
  loc_9ACB11: LateIdLdVar var_98 DispID_17 0
  loc_9ACB18: CI4Var
  loc_9ACB1A: LitI4 0
  loc_9ACB1F: EqI4
  loc_9ACB20: AndI4
  loc_9ACB21: FFree1Ad var_88
  loc_9ACB24: FFree1Var var_98 = ""
  loc_9ACB27: BranchF loc_9ACB2F
  loc_9ACB2A: LitI2_Byte 0
  loc_9ACB2C: IStI2 KeyAscii
  loc_9ACB2F: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A03C80
  'Data Table: 4E878C
  loc_A03B2C: ILdI2 Shift
  loc_A03B2F: CI4UI1
  loc_A03B30: LitI4 2
  loc_A03B35: EqI4
  loc_A03B36: ILdI2 KeyCode
  loc_A03B39: CI4UI1
  loc_A03B3A: LitI4 &H42
  loc_A03B3F: EqI4
  loc_A03B40: AndI4
  loc_A03B41: BranchF loc_A03C7F
  loc_A03B44: LitI2_Byte 0
  loc_A03B46: ImpAdLdRf MemVar_C3D710
  loc_A03B49: NewIfNullPr bscOrganigrama
  loc_A03B4C: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A03B51: LitNothing
  loc_A03B53: CastAd
  loc_A03B56: FStAdFuncNoPop
  loc_A03B59: ImpAdLdRf MemVar_C3D710
  loc_A03B5C: NewIfNullPr bscOrganigrama
  loc_A03B5F: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A03B64: FFree1Ad var_88
  loc_A03B67: LitVar_Missing var_A8
  loc_A03B6A: PopAdLdVar
  loc_A03B6B: LitVarI4
  loc_A03B73: PopAdLdVar
  loc_A03B74: ImpAdLdRf MemVar_C3D710
  loc_A03B77: NewIfNullPr bscOrganigrama
  loc_A03B7A: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A03B7F: FLdRfVar var_AC
  loc_A03B82: FLdRfVar var_88
  loc_A03B85: ImpAdLdRf MemVar_C3D710
  loc_A03B88: NewIfNullPr bscOrganigrama
  loc_A03B8B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A03B90: FLdPr var_88
  loc_A03B93: from_stack_1 = clsbase.RecordCount
  loc_A03B98: ILdRf var_AC
  loc_A03B9B: LitI4 0
  loc_A03BA0: GtI4
  loc_A03BA1: FFree1Ad var_88
  loc_A03BA4: BranchF loc_A03C7F
  loc_A03BA7: FLdRfVar var_C8
  loc_A03BAA: FLdRfVar var_B8
  loc_A03BAD: LitVarStr var_98, "CodiOrga"
  loc_A03BB2: PopAdLdVar
  loc_A03BB3: FLdRfVar var_B4
  loc_A03BB6: FLdRfVar var_B0
  loc_A03BB9: FLdRfVar var_88
  loc_A03BBC: ImpAdLdRf MemVar_C3D710
  loc_A03BBF: NewIfNullPr bscOrganigrama
  loc_A03BC2: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A03BC7: FLdPr var_88
  loc_A03BCA: from_stack_1v = clsbase.RsFrmGet()
  loc_A03BCF: FLdPr var_B0
  loc_A03BD2:  = Me.Fields
  loc_A03BD7: FLdPr var_B4
  loc_A03BDA: from_stack_2 = Me.Item(from_stack_1)
  loc_A03BDF: FLdPr var_B8
  loc_A03BE2:  = Me.Value
  loc_A03BE7: FLdRfVar var_C8
  loc_A03BEA: CStrVarTmp
  loc_A03BEB: CVarStr var_D8
  loc_A03BEE: PopAdLdVar
  loc_A03BEF: FLdPr Me
  loc_A03BF2: VCallAd Control_ID_CodiOrgaMsk
  loc_A03BF5: FStAdFunc var_DC
  loc_A03BF8: FLdPr var_DC
  loc_A03BFB: LateIdSt
  loc_A03C00: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A03C0D: FFreeVar var_C8 = ""
  loc_A03C14: FLdRfVar var_C8
  loc_A03C17: FLdRfVar var_B8
  loc_A03C1A: LitVarStr var_98, "DetaOrga"
  loc_A03C1F: PopAdLdVar
  loc_A03C20: FLdRfVar var_B4
  loc_A03C23: FLdRfVar var_B0
  loc_A03C26: FLdRfVar var_88
  loc_A03C29: ImpAdLdRf MemVar_C3D710
  loc_A03C2C: NewIfNullPr bscOrganigrama
  loc_A03C2F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A03C34: FLdPr var_88
  loc_A03C37: from_stack_1v = clsbase.RsFrmGet()
  loc_A03C3C: FLdPr var_B0
  loc_A03C3F:  = Me.Fields
  loc_A03C44: FLdPr var_B4
  loc_A03C47: from_stack_2 = Me.Item(from_stack_1)
  loc_A03C4C: FLdPr var_B8
  loc_A03C4F:  = Me.Value
  loc_A03C54: FLdRfVar var_C8
  loc_A03C57: CStrVarTmp
  loc_A03C58: FStStrNoPop var_E0
  loc_A03C5B: FLdPr Me
  loc_A03C5E: VCallAd Control_ID_DetaOrgaLbl
  loc_A03C61: FStAdFunc var_DC
  loc_A03C64: FLdPr var_DC
  loc_A03C67: Me.Caption = from_stack_1
  loc_A03C6C: FFree1Str var_E0
  loc_A03C6F: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A03C7C: FFree1Var var_C8 = ""
  loc_A03C7F: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_GotFocus() 'A18794
  'Data Table: 4E878C
  loc_A18618: FLdRfVar var_8C
  loc_A1861B: FLdPr Me
  loc_A1861E: VCallAd Control_ID_CucuPersTxt
  loc_A18621: FStAdFunc var_88
  loc_A18624: FLdPr var_88
  loc_A18627:  = Me.Text
  loc_A1862C: FLdPr Me
  loc_A1862F: VCallAd Control_ID_ExorImpuMsk
  loc_A18632: FStAdFunc var_90
  loc_A18635: FLdPr var_90
  loc_A18638: LateIdLdVar var_A0 DispID_15 0
  loc_A1863F: PopAd
  loc_A18641: FLdRfVar var_A8
  loc_A18644: FLdPr Me
  loc_A18647: VCallAd Control_ID_ExpeImpuTxt
  loc_A1864A: FStAdFunc var_A4
  loc_A1864D: FLdPr var_A4
  loc_A18650:  = Me.Text
  loc_A18655: ILdRf var_A8
  loc_A18658: FLdRfVar var_A0
  loc_A1865B: CStrVarTmp
  loc_A1865C: FStStrNoPop var_AC
  loc_A1865F: ILdRf var_8C
  loc_A18662: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_A18667: FStStrNoPop var_B0
  loc_A1866A: FLdPr Me
  loc_A1866D: VCallAd Control_ID_ExpeImpuTxt
  loc_A18670: FStAdFunc var_B4
  loc_A18673: FLdPr var_B4
  loc_A18676: Me.Text = from_stack_1
  loc_A1867B: FFreeStr var_8C = "": var_AC = "": var_A8 = ""
  loc_A18686: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A18691: FFree1Var var_A0 = ""
  loc_A18694: FLdRfVar var_8C
  loc_A18697: FLdPr Me
  loc_A1869A: VCallAd Control_ID_CucuPersTxt
  loc_A1869D: FStAdFunc var_88
  loc_A186A0: FLdPr var_88
  loc_A186A3:  = Me.Text
  loc_A186A8: FLdPr Me
  loc_A186AB: VCallAd Control_ID_ExorImpuMsk
  loc_A186AE: FStAdFunc var_90
  loc_A186B1: FLdPr var_90
  loc_A186B4: LateIdLdVar var_A0 DispID_15 0
  loc_A186BB: PopAd
  loc_A186BD: FLdRfVar var_A8
  loc_A186C0: FLdPr Me
  loc_A186C3: VCallAd Control_ID_ExpeImpuTxt
  loc_A186C6: FStAdFunc var_A4
  loc_A186C9: FLdPr var_A4
  loc_A186CC:  = Me.Text
  loc_A186D1: ILdRf var_A8
  loc_A186D4: FLdRfVar var_A0
  loc_A186D7: CStrVarTmp
  loc_A186D8: FStStrNoPop var_AC
  loc_A186DB: ILdRf var_8C
  loc_A186DE: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_A186E3: FStStrNoPop var_B0
  loc_A186E6: LitStr vbNullString
  loc_A186E9: NeStr
  loc_A186EB: FFreeStr var_8C = "": var_AC = "": var_A8 = ""
  loc_A186F6: FFreeAd var_88 = "": var_90 = ""
  loc_A186FF: FFree1Var var_A0 = ""
  loc_A18702: BranchF loc_A18781
  loc_A18705: FLdRfVar var_8C
  loc_A18708: FLdPr Me
  loc_A1870B: VCallAd Control_ID_CucuPersTxt
  loc_A1870E: FStAdFunc var_88
  loc_A18711: FLdPr var_88
  loc_A18714:  = Me.Text
  loc_A18719: FLdPr Me
  loc_A1871C: VCallAd Control_ID_ExorImpuMsk
  loc_A1871F: FStAdFunc var_90
  loc_A18722: FLdPr var_90
  loc_A18725: LateIdLdVar var_A0 DispID_15 0
  loc_A1872C: PopAd
  loc_A1872E: FLdRfVar var_A8
  loc_A18731: FLdPr Me
  loc_A18734: VCallAd Control_ID_ExpeImpuTxt
  loc_A18737: FStAdFunc var_A4
  loc_A1873A: FLdPr var_A4
  loc_A1873D:  = Me.Text
  loc_A18742: ILdRf var_A8
  loc_A18745: FLdRfVar var_A0
  loc_A18748: CStrVarTmp
  loc_A18749: FStStrNoPop var_AC
  loc_A1874C: ILdRf var_8C
  loc_A1874F: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_A18754: FStStrNoPop var_B0
  loc_A18757: FLdPr Me
  loc_A1875A: VCallAd Control_ID_ExpeImpuTxt
  loc_A1875D: FStAdFunc var_B4
  loc_A18760: FLdPr var_B4
  loc_A18763: Me.Text = from_stack_1
  loc_A18768: FFreeStr var_8C = "": var_AC = "": var_A8 = ""
  loc_A18773: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A1877E: FFree1Var var_A0 = ""
  loc_A18781: FLdPr Me
  loc_A18784: VCallAd Control_ID_ExpeImpuTxt
  loc_A18787: CVarAd
  loc_A1878B: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A18790: FFree1Var var_A0 = ""
  loc_A18793: ExitProcHresult
End Sub

Private Sub ExpeImpuTxt_KeyPress(KeyAscii As Integer) '984134
  'Data Table: 4E878C
  loc_984100: ILdI2 KeyAscii
  loc_984103: CI4UI1
  loc_984104: FLdRfVar var_94
  loc_984107: ImpAdCallFPR4  = Chr()
  loc_98410C: FLdRfVar var_94
  loc_98410F: FLdRfVar var_A4
  loc_984112: ImpAdCallFPR4  = Ucase()
  loc_984117: FLdRfVar var_A4
  loc_98411A: CStrVarVal var_A8
  loc_98411E: ImpAdCallI2 Asc()
  loc_984123: IStI2 KeyAscii
  loc_984126: FFree1Str var_A8
  loc_984129: FFreeVar var_94 = ""
  loc_984130: ExitProcHresult
  loc_984131: ImpAdLdFPR4 MemVar_0
End Sub

Private Sub ExpeImpuTxt_Validate(Cancel As Boolean) '9D28A8
  'Data Table: 4E878C
  loc_9D27C4: Call ExpeImpuTxt_GotFocus()
  loc_9D27C9: FLdRfVar var_8A
  loc_9D27CC: FLdPr Me
  loc_9D27CF: VCallAd Control_ID_cmdCancelar
  loc_9D27D2: FStAdFunc var_88
  loc_9D27D5: FLdPr var_88
  loc_9D27D8:  = Me.Value
  loc_9D27DD: FLdI2 var_8A
  loc_9D27E0: NotI4
  loc_9D27E1: FLdRfVar var_92
  loc_9D27E4: FLdPr Me
  loc_9D27E7: VCallAd Control_ID_ExpeImpuTxt
  loc_9D27EA: FStAdFunc var_90
  loc_9D27ED: FLdPr var_90
  loc_9D27F0:  = Me.Enabled
  loc_9D27F5: FLdI2 var_92
  loc_9D27F8: AndI4
  loc_9D27F9: FFreeAd var_88 = ""
  loc_9D2800: BranchF loc_9D28A4
  loc_9D2803: FLdRfVar var_98
  loc_9D2806: FLdPr Me
  loc_9D2809: VCallAd Control_ID_ExpeImpuTxt
  loc_9D280C: FStAdFunc var_88
  loc_9D280F: FLdPr var_88
  loc_9D2812:  = Me.Text
  loc_9D2817: LitI2_Byte 0
  loc_9D2819: PopTmpLdAd2 var_9A
  loc_9D281C: LitI2_Byte 0
  loc_9D281E: PopTmpLdAd2 var_92
  loc_9D2821: LitI2_Byte 0
  loc_9D2823: PopTmpLdAd2 var_8A
  loc_9D2826: ILdRf var_98
  loc_9D2829: LitStr "Expediente de Pago"
  loc_9D282C: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9D2831: FStStrNoPop var_A0
  loc_9D2834: FLdPr Me
  loc_9D2837: MemStStrCopy
  loc_9D283B: FFreeStr var_98 = ""
  loc_9D2842: FFree1Ad var_88
  loc_9D2845: LitStr "Municipalidad de Guaymallén"
  loc_9D2848: LitStr "Municipalidad de General Alvear"
  loc_9D284B: EqStr
  loc_9D284D: BranchF loc_9D2868
  loc_9D2850: FLdPr Me
  loc_9D2853: MemLdStr global_68
  loc_9D2856: LitStr "Ingrese un valor Válido para Expediente de Pago . Verifique..."
  loc_9D2859: EqStr
  loc_9D285B: BranchF loc_9D2868
  loc_9D285E: LitStr vbNullString
  loc_9D2861: FLdPr Me
  loc_9D2864: MemStStrCopy
  loc_9D2868: FLdPr Me
  loc_9D286B: VCallAd Control_ID_ExpeImpuTxt
  loc_9D286E: FStAdFunc var_A8
  loc_9D2871: LitNothing
  loc_9D2873: CastAd
  loc_9D2876: FStAdFunc var_A4
  loc_9D2879: FLdRfVar var_A4
  loc_9D287C: FLdZeroAd var_A8
  loc_9D287F: FStAdFuncNoPop
  loc_9D2882: CastAd
  loc_9D2885: FStAdFunc var_90
  loc_9D2888: FLdRfVar var_90
  loc_9D288B: FLdPr Me
  loc_9D288E: MemLdRfVar from_stack_1.global_68
  loc_9D2891: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D2896: IStI2 Cancel
  loc_9D2899: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9D28A4: ExitProcHresult
End Sub

Private Sub SufaDeveTxt_GotFocus() '9AA950
  'Data Table: 4E878C
  loc_9AA8B8: FLdRfVar var_8C
  loc_9AA8BB: FLdPr Me
  loc_9AA8BE: VCallAd Control_ID_SufaDeveTxt
  loc_9AA8C1: FStAdFunc var_88
  loc_9AA8C4: FLdPr var_88
  loc_9AA8C7:  = Me.Text
  loc_9AA8CC: ILdRf var_8C
  loc_9AA8CF: LitStr vbNullString
  loc_9AA8D2: EqStr
  loc_9AA8D4: FFree1Str var_8C
  loc_9AA8D7: FFree1Ad var_88
  loc_9AA8DA: BranchF loc_9AA8F4
  loc_9AA8DD: LitStr "0000"
  loc_9AA8E0: FLdPr Me
  loc_9AA8E3: VCallAd Control_ID_SufaDeveTxt
  loc_9AA8E6: FStAdFunc var_88
  loc_9AA8E9: FLdPr var_88
  loc_9AA8EC: Me.Text = from_stack_1
  loc_9AA8F1: FFree1Ad var_88
  loc_9AA8F4: LitStr "Municipalidad de Guaymallén"
  loc_9AA8F7: LitStr "Municipalidad de Malargüe"
  loc_9AA8FA: NeStr
  loc_9AA8FC: BranchF loc_9AA93B
  loc_9AA8FF: FLdRfVar var_8C
  loc_9AA902: FLdPr Me
  loc_9AA905: VCallAd Control_ID_TifaDeveCbo
  loc_9AA908: FStAdFunc var_88
  loc_9AA90B: FLdPr var_88
  loc_9AA90E:  = Me.Text
  loc_9AA913: ILdRf var_8C
  loc_9AA916: LitStr "s/f"
  loc_9AA919: EqStr
  loc_9AA91B: FFree1Str var_8C
  loc_9AA91E: FFree1Ad var_88
  loc_9AA921: BranchF loc_9AA93B
  loc_9AA924: LitStr "0"
  loc_9AA927: FLdPr Me
  loc_9AA92A: VCallAd Control_ID_SufaDeveTxt
  loc_9AA92D: FStAdFunc var_88
  loc_9AA930: FLdPr var_88
  loc_9AA933: Me.Text = from_stack_1
  loc_9AA938: FFree1Ad var_88
  loc_9AA93B: FLdPr Me
  loc_9AA93E: VCallAd Control_ID_SufaDeveTxt
  loc_9AA941: CVarAd
  loc_9AA945: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9AA94A: FFree1Var var_9C = ""
  loc_9AA94D: ExitProcHresult
End Sub

Private Sub SufaDeveTxt_KeyPress(KeyAscii As Integer) '959630
  'Data Table: 4E878C
  loc_959618: LitStr "0123456789"
  loc_95961B: FStStrCopy var_88
  loc_95961E: FLdRfVar var_88
  loc_959621: ILdRf KeyAscii
  loc_959624: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_959629: IStI2 KeyAscii
  loc_95962C: FFree1Str var_88
  loc_95962F: ExitProcHresult
End Sub

Private Sub SufaDeveTxt_Validate(Cancel As Boolean) '9F17D8
  'Data Table: 4E878C
  loc_9F16B4: FLdRfVar var_8A
  loc_9F16B7: FLdPr Me
  loc_9F16BA: VCallAd Control_ID_cmdCancelar
  loc_9F16BD: FStAdFunc var_88
  loc_9F16C0: FLdPr var_88
  loc_9F16C3:  = Me.Value
  loc_9F16C8: FLdI2 var_8A
  loc_9F16CB: NotI4
  loc_9F16CC: FLdRfVar var_92
  loc_9F16CF: FLdPr Me
  loc_9F16D2: VCallAd Control_ID_SufaDeveTxt
  loc_9F16D5: FStAdFunc var_90
  loc_9F16D8: FLdPr var_90
  loc_9F16DB:  = Me.Enabled
  loc_9F16E0: FLdI2 var_92
  loc_9F16E3: AndI4
  loc_9F16E4: FFreeAd var_88 = ""
  loc_9F16EB: BranchF loc_9F17D7
  loc_9F16EE: FLdRfVar var_98
  loc_9F16F1: FLdPr Me
  loc_9F16F4: VCallAd Control_ID_SufaDeveTxt
  loc_9F16F7: FStAdFunc var_88
  loc_9F16FA: FLdPr var_88
  loc_9F16FD:  = Me.Text
  loc_9F1702: FLdRfVar var_9C
  loc_9F1705: FLdPr Me
  loc_9F1708: VCallAd Control_ID_TifaDeveCbo
  loc_9F170B: FStAdFunc var_90
  loc_9F170E: FLdPr var_90
  loc_9F1711:  = Me.Text
  loc_9F1716: ILdRf var_9C
  loc_9F1719: ILdRf var_98
  loc_9F171C: ImpAdCallI2 Proc_266_22_990D68(, )
  loc_9F1721: FStStrNoPop var_A0
  loc_9F1724: FLdPr Me
  loc_9F1727: MemStStrCopy
  loc_9F172B: FFreeStr var_98 = "": var_9C = ""
  loc_9F1734: FFreeAd var_88 = ""
  loc_9F173B: FLdPr Me
  loc_9F173E: VCallAd Control_ID_SufaDeveTxt
  loc_9F1741: FStAdFunc var_A8
  loc_9F1744: LitNothing
  loc_9F1746: CastAd
  loc_9F1749: FStAdFunc var_A4
  loc_9F174C: FLdRfVar var_A4
  loc_9F174F: FLdZeroAd var_A8
  loc_9F1752: FStAdFuncNoPop
  loc_9F1755: CastAd
  loc_9F1758: FStAdFunc var_90
  loc_9F175B: FLdRfVar var_90
  loc_9F175E: FLdPr Me
  loc_9F1761: MemLdRfVar from_stack_1.global_68
  loc_9F1764: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F1769: IStI2 Cancel
  loc_9F176C: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9F1777: ILdI2 Cancel
  loc_9F177A: NotI4
  loc_9F177B: BranchF loc_9F17D7
  loc_9F177E: FLdRfVar var_98
  loc_9F1781: FLdPr Me
  loc_9F1784: VCallAd Control_ID_SufaDeveTxt
  loc_9F1787: FStAdFunc var_88
  loc_9F178A: FLdPr var_88
  loc_9F178D:  = Me.Text
  loc_9F1792: LitI4 1
  loc_9F1797: LitI4 1
  loc_9F179C: LitVarStr var_C8, "0000"
  loc_9F17A1: FStVarCopyObj var_D8
  loc_9F17A4: FLdRfVar var_D8
  loc_9F17A7: FLdZeroAd var_98
  loc_9F17AA: CVarStr var_B8
  loc_9F17AD: ImpAdCallI2 Format$(, )
  loc_9F17B2: FStStrNoPop var_9C
  loc_9F17B5: FLdPr Me
  loc_9F17B8: VCallAd Control_ID_SufaDeveTxt
  loc_9F17BB: FStAdFunc var_90
  loc_9F17BE: FLdPr var_90
  loc_9F17C1: Me.Text = from_stack_1
  loc_9F17C6: FFree1Str var_9C
  loc_9F17C9: FFreeAd var_88 = ""
  loc_9F17D0: FFreeVar var_B8 = ""
  loc_9F17D7: ExitProcHresult
End Sub

Private Sub ImpoDebiTxt_GotFocus() '9501D8
  'Data Table: 4E878C
  loc_9501C4: FLdPr Me
  loc_9501C7: VCallAd Control_ID_ImpoDebiTxt
  loc_9501CA: CVarAd
  loc_9501CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9501D3: FFree1Var var_94 = ""
  loc_9501D6: ExitProcHresult
End Sub

Private Sub ImpoDebiTxt_KeyPress(KeyAscii As Integer) '9B4A00
  'Data Table: 4E878C
  loc_9B495C: LitStr "1234567890.,"
  loc_9B495F: FStStrCopy var_88
  loc_9B4962: FLdRfVar var_88
  loc_9B4965: ILdRf KeyAscii
  loc_9B4968: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9B496D: IStI2 KeyAscii
  loc_9B4970: FFree1Str var_88
  loc_9B4973: ILdI2 KeyAscii
  loc_9B4976: LitStr "."
  loc_9B4979: ImpAdCallI2 Asc()
  loc_9B497E: EqI2
  loc_9B497F: BranchF loc_9B498D
  loc_9B4982: LitStr ","
  loc_9B4985: ImpAdCallI2 Asc()
  loc_9B498A: IStI2 KeyAscii
  loc_9B498D: FLdPr Me
  loc_9B4990: VCallAd Control_ID_NumeOrpaMsk
  loc_9B4993: FStAdFunc var_8C
  loc_9B4996: FLdPr var_8C
  loc_9B4999: LateIdLdVar var_9C DispID_22 0
  loc_9B49A0: CStrVarTmp
  loc_9B49A1: FStStrNoPop var_88
  loc_9B49A4: LitStr vbNullString
  loc_9B49A7: EqStr
  loc_9B49A9: FLdPr Me
  loc_9B49AC: VCallAd Control_ID_NumeOrpaMsk
  loc_9B49AF: FStAdFunc var_A0
  loc_9B49B2: FLdPr var_A0
  loc_9B49B5: LateIdLdVar var_B0 DispID_22 0
  loc_9B49BC: CStrVarTmp
  loc_9B49BD: FStStrNoPop var_B4
  loc_9B49C0: LitStr "0"
  loc_9B49C3: EqStr
  loc_9B49C5: OrI4
  loc_9B49C6: FFreeStr var_88 = ""
  loc_9B49CD: FFreeAd var_8C = ""
  loc_9B49D4: FFreeVar var_9C = ""
  loc_9B49DB: BranchF loc_9B49E1
  loc_9B49DE: Branch loc_9B49FC
  loc_9B49E1: LitI2_Byte 0
  loc_9B49E3: IStI2 KeyAscii
  loc_9B49E6: LitI2_Byte 0
  loc_9B49E8: FLdPr Me
  loc_9B49EB: VCallAd Control_ID_ImpoDebiTxt
  loc_9B49EE: FStAdFunc var_8C
  loc_9B49F1: FLdPr var_8C
  loc_9B49F4: Me.Enabled = from_stack_1b
  loc_9B49F9: FFree1Ad var_8C
  loc_9B49FC: ExitProcHresult
End Sub

Private Sub ImpoDebiTxt_Validate(Cancel As Boolean) '9BB6F4
  'Data Table: 4E878C
  loc_9BB640: FLdRfVar var_8A
  loc_9BB643: FLdPr Me
  loc_9BB646: VCallAd Control_ID_cmdCancelar
  loc_9BB649: FStAdFunc var_88
  loc_9BB64C: FLdPr var_88
  loc_9BB64F:  = Me.Value
  loc_9BB654: FLdI2 var_8A
  loc_9BB657: NotI4
  loc_9BB658: FLdRfVar var_92
  loc_9BB65B: FLdPr Me
  loc_9BB65E: VCallAd Control_ID_ImpoDebiTxt
  loc_9BB661: FStAdFunc var_90
  loc_9BB664: FLdPr var_90
  loc_9BB667:  = Me.Enabled
  loc_9BB66C: FLdI2 var_92
  loc_9BB66F: AndI4
  loc_9BB670: FFreeAd var_88 = ""
  loc_9BB677: BranchF loc_9BB6F2
  loc_9BB67A: FLdRfVar var_98
  loc_9BB67D: FLdPr Me
  loc_9BB680: VCallAd Control_ID_ImpoDebiTxt
  loc_9BB683: FStAdFunc var_88
  loc_9BB686: FLdPr var_88
  loc_9BB689:  = Me.Text
  loc_9BB68E: LitStr "9999999999"
  loc_9BB691: LitI2_Byte &HFF
  loc_9BB693: LitI2_Byte 0
  loc_9BB695: LitI2_Byte 0
  loc_9BB697: ILdRf var_98
  loc_9BB69A: LitStr "Importe"
  loc_9BB69D: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9BB6A2: FStStrNoPop var_9C
  loc_9BB6A5: FLdPr Me
  loc_9BB6A8: MemStStrCopy
  loc_9BB6AC: FFreeStr var_98 = ""
  loc_9BB6B3: FFree1Ad var_88
  loc_9BB6B6: FLdPr Me
  loc_9BB6B9: VCallAd Control_ID_ImpoDebiTxt
  loc_9BB6BC: FStAdFunc var_A4
  loc_9BB6BF: LitNothing
  loc_9BB6C1: CastAd
  loc_9BB6C4: FStAdFunc var_A0
  loc_9BB6C7: FLdRfVar var_A0
  loc_9BB6CA: FLdZeroAd var_A4
  loc_9BB6CD: FStAdFuncNoPop
  loc_9BB6D0: CastAd
  loc_9BB6D3: FStAdFunc var_90
  loc_9BB6D6: FLdRfVar var_90
  loc_9BB6D9: FLdPr Me
  loc_9BB6DC: MemLdRfVar from_stack_1.global_68
  loc_9BB6DF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BB6E4: IStI2 Cancel
  loc_9BB6E7: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BB6F2: ExitProcHresult
End Sub

Private Sub FechDebiMsk_UnknownEvent_0 '950418
  'Data Table: 4E878C
  loc_950404: FLdPr Me
  loc_950407: VCallAd Control_ID_FechDebiMsk
  loc_95040A: CVarAd
  loc_95040E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950413: FFree1Var var_94 = ""
  loc_950416: ExitProcHresult
End Sub

Private Sub FechDebiMsk_UnknownEvent_8 '9CA9C8
  'Data Table: 4E878C
  loc_9CA8F4: FLdRfVar var_8A
  loc_9CA8F7: FLdPr Me
  loc_9CA8FA: VCallAd Control_ID_cmdCancelar
  loc_9CA8FD: FStAdFunc var_88
  loc_9CA900: FLdPr var_88
  loc_9CA903:  = Me.Value
  loc_9CA908: FLdI2 var_8A
  loc_9CA90B: NotI4
  loc_9CA90C: FLdPr Me
  loc_9CA90F: VCallAd Control_ID_FechDebiMsk
  loc_9CA912: FStAdFunc var_90
  loc_9CA915: FLdPr var_90
  loc_9CA918: LateIdLdVar var_A0 DispID_13 -32767
  loc_9CA91F: CBoolVar
  loc_9CA921: AndI4
  loc_9CA922: FFreeAd var_88 = ""
  loc_9CA929: FFree1Var var_A0 = ""
  loc_9CA92C: BranchF loc_9CA9C7
  loc_9CA92F: FLdPr Me
  loc_9CA932: VCallAd Control_ID_FechDebiMsk
  loc_9CA935: FStAdFunc var_88
  loc_9CA938: FLdPr var_88
  loc_9CA93B: LateIdLdVar var_A0 DispID_15 0
  loc_9CA942: PopAd
  loc_9CA944: FLdPr Me
  loc_9CA947: VCallAd Control_ID_FechDebiMsk
  loc_9CA94A: FStAdFunc var_AC
  loc_9CA94D: LitI2_Byte &HFF
  loc_9CA94F: PopTmpLdAd2 var_8A
  loc_9CA952: FLdZeroAd var_AC
  loc_9CA955: FStAdFunc var_90
  loc_9CA958: FLdRfVar var_90
  loc_9CA95B: LitStr "01/01/2018"
  loc_9CA95E: LitI2_Byte &HFF
  loc_9CA960: LitI2_Byte &HFF
  loc_9CA962: FLdRfVar var_A0
  loc_9CA965: CStrVarTmp
  loc_9CA966: FStStrNoPop var_A4
  loc_9CA969: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CA96E: FStStrNoPop var_A8
  loc_9CA971: FLdPr Me
  loc_9CA974: MemStStrCopy
  loc_9CA978: FFreeStr var_A4 = ""
  loc_9CA97F: FFreeAd var_88 = "": var_90 = ""
  loc_9CA988: FFree1Var var_A0 = ""
  loc_9CA98B: FLdPr Me
  loc_9CA98E: VCallAd Control_ID_FechDebiMsk
  loc_9CA991: FStAdFunc var_B0
  loc_9CA994: LitNothing
  loc_9CA996: CastAd
  loc_9CA999: FStAdFunc var_AC
  loc_9CA99C: FLdRfVar var_AC
  loc_9CA99F: FLdZeroAd var_B0
  loc_9CA9A2: FStAdFuncNoPop
  loc_9CA9A5: CastAd
  loc_9CA9A8: FStAdFunc var_90
  loc_9CA9AB: FLdRfVar var_90
  loc_9CA9AE: FLdPr Me
  loc_9CA9B1: MemLdRfVar from_stack_1.global_68
  loc_9CA9B4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CA9B9: IStI2 Cancel
  loc_9CA9BC: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9CA9C7: ExitProcHresult
End Sub

Private Sub FechDebiMsk_KeyPress(KeyAscii As Integer) '986320
  'Data Table: 4E878C
  loc_9862DC: ILdI2 KeyAscii
  loc_9862DF: CI4UI1
  loc_9862E0: LitI4 &H20
  loc_9862E5: EqI4
  loc_9862E6: BranchF loc_98631C
  loc_9862E9: LitVar_Missing var_A4
  loc_9862EC: PopAdLdVar
  loc_9862ED: LitVarI4
  loc_9862F5: PopAdLdVar
  loc_9862F6: ImpAdLdRf MemVar_C3D9A8
  loc_9862F9: NewIfNullPr frmCalendario
  loc_9862FC: frmCalendario.Show from_stack_1, from_stack_2
  loc_986301: ImpAdLdRf MemVar_C3D038
  loc_986304: CDargRef
  loc_986308: FLdPr Me
  loc_98630B: VCallAd Control_ID_FechDebiMsk
  loc_98630E: FStAdFunc var_A8
  loc_986311: FLdPr var_A8
  loc_986314: LateIdSt
  loc_986319: FFree1Ad var_A8
  loc_98631C: ExitProcHresult
  loc_98631D: ILdRf var_88
End Sub

Private Sub CodiCucoMsk_UnknownEvent_0 '97D604
  'Data Table: 4E878C
  loc_97D5D4: LitVarStr var_94, vbNullString
  loc_97D5D9: PopAdLdVar
  loc_97D5DA: FLdPr Me
  loc_97D5DD: VCallAd Control_ID_CodiCucoMsk
  loc_97D5E0: FStAdFunc var_A8
  loc_97D5E3: FLdPr var_A8
  loc_97D5E6: LateIdSt
  loc_97D5EB: FFree1Ad var_A8
  loc_97D5EE: FLdPr Me
  loc_97D5F1: VCallAd Control_ID_CodiCucoMsk
  loc_97D5F4: CVarAd
  loc_97D5F8: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_97D5FD: FFree1Var var_B8 = ""
  loc_97D600: ExitProcHresult
  loc_97D601: ImpAdLdI4 MemVar_35BFDD0
End Sub

Private Sub CodiCucoMsk_UnknownEvent_1 '96A86C
  'Data Table: 4E878C
  loc_96A850: LitVarStr var_94, "#.#.##.##.##.##"
  loc_96A855: PopAdLdVar
  loc_96A856: FLdPr Me
  loc_96A859: VCallAd Control_ID_CodiCucoMsk
  loc_96A85C: FStAdFunc var_A8
  loc_96A85F: FLdPr var_A8
  loc_96A862: LateIdSt
  loc_96A867: FFree1Ad var_A8
  loc_96A86A: ExitProcHresult
End Sub

Private Sub CodiCucoMsk_UnknownEvent_8 'BB4C1C
  'Data Table: 4E878C
  loc_BB3BFC: FLdRfVar var_8A
  loc_BB3BFF: FLdPr Me
  loc_BB3C02: VCallAd Control_ID_cmdCancelar
  loc_BB3C05: FStAdFunc var_88
  loc_BB3C08: FLdPr var_88
  loc_BB3C0B:  = Me.Value
  loc_BB3C10: FLdI2 var_8A
  loc_BB3C13: NotI4
  loc_BB3C14: FLdPr Me
  loc_BB3C17: VCallAd Control_ID_CodiCucoMsk
  loc_BB3C1A: FStAdFunc var_90
  loc_BB3C1D: FLdPr var_90
  loc_BB3C20: LateIdLdVar var_A0 DispID_13 -32767
  loc_BB3C27: CBoolVar
  loc_BB3C29: AndI4
  loc_BB3C2A: FFreeAd var_88 = ""
  loc_BB3C31: FFree1Var var_A0 = ""
  loc_BB3C34: BranchF loc_BB4C1A
  loc_BB3C37: FLdPr Me
  loc_BB3C3A: VCallAd Control_ID_CodiCucoMsk
  loc_BB3C3D: FStAdFunc var_88
  loc_BB3C40: FLdPr var_88
  loc_BB3C43: LateIdLdVar var_A0 DispID_22 0
  loc_BB3C4A: CStrVarTmp
  loc_BB3C4B: FStStrNoPop var_A4
  loc_BB3C4E: ImpAdCallI2 Trim$()
  loc_BB3C53: FStStrNoPop var_A8
  loc_BB3C56: LitStr vbNullString
  loc_BB3C59: NeStr
  loc_BB3C5B: FFreeStr var_A4 = ""
  loc_BB3C62: FFree1Ad var_88
  loc_BB3C65: FFree1Var var_A0 = ""
  loc_BB3C68: BranchF loc_BB470C
  loc_BB3C6B: FLdPr Me
  loc_BB3C6E: VCallAd Control_ID_CodiCucoMsk
  loc_BB3C71: FStAdFunc var_88
  loc_BB3C74: FLdRfVar var_88
  loc_BB3C77: ImpAdCallI2 Proc_266_40_A1E128()
  loc_BB3C7C: FFree1Ad var_88
  loc_BB3C7F: BranchF loc_BB41C7
  loc_BB3C82: FLdPr Me
  loc_BB3C85: VCallAd Control_ID_CodiCucoMsk
  loc_BB3C88: FStAdFunc var_88
  loc_BB3C8B: FLdPr var_88
  loc_BB3C8E: LateIdLdVar var_A0 DispID_22 0
  loc_BB3C95: PopAd
  loc_BB3C97: LitStr "SELECT * FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_BB3C9A: ImpAdLdI2 MemVar_C3D064
  loc_BB3C9D: CStrUI1
  loc_BB3C9F: FStStrNoPop var_A4
  loc_BB3CA2: ConcatStr
  loc_BB3CA3: FStStrNoPop var_A8
  loc_BB3CA6: LitStr " AND CodiCuco LIKE '"
  loc_BB3CA9: ConcatStr
  loc_BB3CAA: FStStrNoPop var_B0
  loc_BB3CAD: LitI4 0
  loc_BB3CB2: LitI4 -1
  loc_BB3CB7: LitI4 1
  loc_BB3CBC: LitStr vbNullString
  loc_BB3CBF: LitStr "."
  loc_BB3CC2: FLdRfVar var_A0
  loc_BB3CC5: CStrVarTmp
  loc_BB3CC6: FStStrNoPop var_AC
  loc_BB3CC9: ImpAdCallI2 Replace(, , , , , )
  loc_BB3CCE: FStStrNoPop var_B4
  loc_BB3CD1: ConcatStr
  loc_BB3CD2: FStStrNoPop var_B8
  loc_BB3CD5: LitStr Chr(37) & "'"
  loc_BB3CD8: ConcatStr
  loc_BB3CD9: FStStrNoPop var_BC
  loc_BB3CDC: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BB3CE1: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_BB3CF2: FFree1Ad var_88
  loc_BB3CF5: FFree1Var var_A0 = ""
  loc_BB3CF8: FLdRfVar var_C0
  loc_BB3CFB: ImpAdLdPr unk_4E87D4
  loc_BB3CFE: MemLdPr global_0
  loc_BB3D01:  = Me.RecordCount
  loc_BB3D06: ILdRf var_C0
  loc_BB3D09: LitI4 1
  loc_BB3D0E: EqI4
  loc_BB3D0F: BranchF loc_BB3E9B
  loc_BB3D12: FLdRfVar var_A0
  loc_BB3D15: FLdRfVar var_90
  loc_BB3D18: LitVarStr var_D0, "CodiCuco"
  loc_BB3D1D: PopAdLdVar
  loc_BB3D1E: FLdRfVar var_88
  loc_BB3D21: ImpAdLdPr unk_4E87D4
  loc_BB3D24: MemLdPr global_0
  loc_BB3D27:  = Me.Fields
  loc_BB3D2C: FLdPr var_88
  loc_BB3D2F: from_stack_2 = Me.Item(from_stack_1)
  loc_BB3D34: FLdPr var_90
  loc_BB3D37:  = Me.Value
  loc_BB3D3C: LitI4 0
  loc_BB3D41: LitI4 6
  loc_BB3D46: FLdRfVar var_D4
  loc_BB3D49: Redim
  loc_BB3D53: LitVarStr var_E4, "1120"
  loc_BB3D58: LitI4 0
  loc_BB3D5D: ILdRf var_D4
  loc_BB3D60: Ary1StVarCopy
  loc_BB3D62: LitVarStr var_F4, "1140"
  loc_BB3D67: LitI4 1
  loc_BB3D6C: ILdRf var_D4
  loc_BB3D6F: Ary1StVarCopy
  loc_BB3D71: LitVarStr var_104, "1150"
  loc_BB3D76: LitI4 2
  loc_BB3D7B: ILdRf var_D4
  loc_BB3D7E: Ary1StVarCopy
  loc_BB3D80: LitVarStr var_114, "1155"
  loc_BB3D85: LitI4 3
  loc_BB3D8A: ILdRf var_D4
  loc_BB3D8D: Ary1StVarCopy
  loc_BB3D8F: LitVarStr var_124, "1160"
  loc_BB3D94: LitI4 4
  loc_BB3D99: ILdRf var_D4
  loc_BB3D9C: Ary1StVarCopy
  loc_BB3D9E: LitVarStr var_134, "1170"
  loc_BB3DA3: LitI4 5
  loc_BB3DA8: ILdRf var_D4
  loc_BB3DAB: Ary1StVarCopy
  loc_BB3DAD: LitVarStr var_144, "2"
  loc_BB3DB2: LitI4 6
  loc_BB3DB7: ILdRf var_D4
  loc_BB3DBA: Ary1StVarCopy
  loc_BB3DBC: FLdRfVar var_D4
  loc_BB3DBF: FLdPr Me
  loc_BB3DC2: MemLdRfVar from_stack_1.global_76
  loc_BB3DC5: NewIfNullRf
  loc_BB3DC9: ImpAdLdI2 MemVar_C3D064
  loc_BB3DCC: LitI2_Byte 0
  loc_BB3DCE: FLdRfVar var_A0
  loc_BB3DD1: CStrVarTmp
  loc_BB3DD2: FStStrNoPop var_A4
  loc_BB3DD5: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BB3DDA: FStStr var_A8
  loc_BB3DDD: FLdRfVar var_D4
  loc_BB3DE0: Erase
  loc_BB3DE1: ILdRf var_A8
  loc_BB3DE4: FLdPr Me
  loc_BB3DE7: MemStStrCopy
  loc_BB3DEB: FFreeStr var_A4 = ""
  loc_BB3DF2: FFreeAd var_88 = ""
  loc_BB3DF9: FFree1Var var_A0 = ""
  loc_BB3DFC: FLdRfVar var_A4
  loc_BB3DFF: FLdPr Me
  loc_BB3E02: MemLdRfVar from_stack_1.global_76
  loc_BB3E05: NewIfNullPr tblcuentacontable
  loc_BB3E08: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BB3E0D: FLdZeroAd var_A4
  loc_BB3E10: CVarStr var_A0
  loc_BB3E13: PopAdLdVar
  loc_BB3E14: FLdPr Me
  loc_BB3E17: VCallAd Control_ID_CodiCucoMsk
  loc_BB3E1A: FStAdFunc var_88
  loc_BB3E1D: FLdPr var_88
  loc_BB3E20: LateIdSt
  loc_BB3E25: FFree1Ad var_88
  loc_BB3E28: FFree1Var var_A0 = ""
  loc_BB3E2B: FLdRfVar var_A4
  loc_BB3E2E: FLdPr Me
  loc_BB3E31: MemLdRfVar from_stack_1.global_76
  loc_BB3E34: NewIfNullPr tblcuentacontable
  loc_BB3E37: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BB3E3C: ILdRf var_A4
  loc_BB3E3F: FLdPr Me
  loc_BB3E42: VCallAd Control_ID_DetaCucoLbl
  loc_BB3E45: FStAdFunc var_88
  loc_BB3E48: FLdPr var_88
  loc_BB3E4B: Me.Caption = from_stack_1
  loc_BB3E50: FFree1Str var_A4
  loc_BB3E53: FFree1Ad var_88
  loc_BB3E56: Call Proc_109_56_A6E988()
  loc_BB3E5B: FLdPr Me
  loc_BB3E5E: VCallAd Control_ID_CodiCucoMsk
  loc_BB3E61: FStAdFunc var_14C
  loc_BB3E64: FLdPr Me
  loc_BB3E67: VCallAd Control_ID_DetaCucoLbl
  loc_BB3E6A: FStAdFunc var_148
  loc_BB3E6D: FLdRfVar var_148
  loc_BB3E70: FLdZeroAd var_14C
  loc_BB3E73: FStAdFuncNoPop
  loc_BB3E76: CastAd
  loc_BB3E79: FStAdFunc var_90
  loc_BB3E7C: FLdRfVar var_90
  loc_BB3E7F: FLdPr Me
  loc_BB3E82: MemLdRfVar from_stack_1.global_68
  loc_BB3E85: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB3E8A: IStI2 KeyAscii
  loc_BB3E8D: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB3E98: Branch loc_BB41C4
  loc_BB3E9B: FLdRfVar var_C0
  loc_BB3E9E: ImpAdLdPr unk_4E87D4
  loc_BB3EA1: MemLdPr global_0
  loc_BB3EA4:  = Me.RecordCount
  loc_BB3EA9: ILdRf var_C0
  loc_BB3EAC: LitI4 1
  loc_BB3EB1: GtI4
  loc_BB3EB2: BranchF loc_BB414C
  loc_BB3EB5: FLdPr Me
  loc_BB3EB8: VCallAd Control_ID_CodiCucoMsk
  loc_BB3EBB: FStAdFunc var_88
  loc_BB3EBE: FLdPr var_88
  loc_BB3EC1: LateIdLdVar var_A0 DispID_22 0
  loc_BB3EC8: CStrVarTmp
  loc_BB3EC9: FStStrNoPop var_A4
  loc_BB3ECC: ImpAdLdRf MemVar_C3D6C0
  loc_BB3ECF: NewIfNullPr bscCuentaContable
  loc_BB3ED2: Call bscCuentaContable.BuscoxCodiCucoPut(from_stack_1v)
  loc_BB3ED7: FFree1Str var_A4
  loc_BB3EDA: FFree1Ad var_88
  loc_BB3EDD: FFree1Var var_A0 = ""
  loc_BB3EE0: LitStr vbNullString
  loc_BB3EE3: ImpAdLdRf MemVar_C3D6C0
  loc_BB3EE6: NewIfNullPr bscCuentaContable
  loc_BB3EE9: Call bscCuentaContable.BuscoxDetaCucoPut(from_stack_1v)
  loc_BB3EEE: LitVar_Missing var_E4
  loc_BB3EF1: PopAdLdVar
  loc_BB3EF2: LitVarI4
  loc_BB3EFA: PopAdLdVar
  loc_BB3EFB: ImpAdLdRf MemVar_C3D6C0
  loc_BB3EFE: NewIfNullPr bscCuentaContable
  loc_BB3F01: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_BB3F06: FLdRfVar var_C0
  loc_BB3F09: FLdRfVar var_88
  loc_BB3F0C: ImpAdLdRf MemVar_C3D6C0
  loc_BB3F0F: NewIfNullPr bscCuentaContable
  loc_BB3F12: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BB3F17: FLdPr var_88
  loc_BB3F1A: from_stack_1 = clsbase.RecordCount
  loc_BB3F1F: ILdRf var_C0
  loc_BB3F22: LitI4 0
  loc_BB3F27: GtI4
  loc_BB3F28: FFree1Ad var_88
  loc_BB3F2B: BranchF loc_BB40D1
  loc_BB3F2E: FLdRfVar var_A0
  loc_BB3F31: FLdRfVar var_14C
  loc_BB3F34: LitVarStr var_D0, "CodiCuco"
  loc_BB3F39: PopAdLdVar
  loc_BB3F3A: FLdRfVar var_148
  loc_BB3F3D: FLdRfVar var_90
  loc_BB3F40: FLdRfVar var_88
  loc_BB3F43: ImpAdLdRf MemVar_C3D6C0
  loc_BB3F46: NewIfNullPr bscCuentaContable
  loc_BB3F49: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BB3F4E: FLdPr var_88
  loc_BB3F51: from_stack_1v = clsbase.RsFrmGet()
  loc_BB3F56: FLdPr var_90
  loc_BB3F59:  = Me.Fields
  loc_BB3F5E: FLdPr var_148
  loc_BB3F61: from_stack_2 = Me.Item(from_stack_1)
  loc_BB3F66: FLdPr var_14C
  loc_BB3F69:  = Me.Value
  loc_BB3F6E: LitI4 0
  loc_BB3F73: LitI4 6
  loc_BB3F78: FLdRfVar var_D4
  loc_BB3F7B: Redim
  loc_BB3F85: LitVarStr var_E4, "1120"
  loc_BB3F8A: LitI4 0
  loc_BB3F8F: ILdRf var_D4
  loc_BB3F92: Ary1StVarCopy
  loc_BB3F94: LitVarStr var_F4, "1140"
  loc_BB3F99: LitI4 1
  loc_BB3F9E: ILdRf var_D4
  loc_BB3FA1: Ary1StVarCopy
  loc_BB3FA3: LitVarStr var_104, "1150"
  loc_BB3FA8: LitI4 2
  loc_BB3FAD: ILdRf var_D4
  loc_BB3FB0: Ary1StVarCopy
  loc_BB3FB2: LitVarStr var_114, "1155"
  loc_BB3FB7: LitI4 3
  loc_BB3FBC: ILdRf var_D4
  loc_BB3FBF: Ary1StVarCopy
  loc_BB3FC1: LitVarStr var_124, "1160"
  loc_BB3FC6: LitI4 4
  loc_BB3FCB: ILdRf var_D4
  loc_BB3FCE: Ary1StVarCopy
  loc_BB3FD0: LitVarStr var_134, "1170"
  loc_BB3FD5: LitI4 5
  loc_BB3FDA: ILdRf var_D4
  loc_BB3FDD: Ary1StVarCopy
  loc_BB3FDF: LitVarStr var_144, "2"
  loc_BB3FE4: LitI4 6
  loc_BB3FE9: ILdRf var_D4
  loc_BB3FEC: Ary1StVarCopy
  loc_BB3FEE: FLdRfVar var_D4
  loc_BB3FF1: FLdPr Me
  loc_BB3FF4: MemLdRfVar from_stack_1.global_76
  loc_BB3FF7: NewIfNullRf
  loc_BB3FFB: ImpAdLdI2 MemVar_C3D064
  loc_BB3FFE: LitI2_Byte 0
  loc_BB4000: FLdRfVar var_A0
  loc_BB4003: CStrVarTmp
  loc_BB4004: FStStrNoPop var_A4
  loc_BB4007: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BB400C: FStStr var_A8
  loc_BB400F: FLdRfVar var_D4
  loc_BB4012: Erase
  loc_BB4013: ILdRf var_A8
  loc_BB4016: FLdPr Me
  loc_BB4019: MemStStrCopy
  loc_BB401D: FFreeStr var_A4 = ""
  loc_BB4024: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB402F: FFree1Var var_A0 = ""
  loc_BB4032: FLdRfVar var_A4
  loc_BB4035: FLdPr Me
  loc_BB4038: MemLdRfVar from_stack_1.global_76
  loc_BB403B: NewIfNullPr tblcuentacontable
  loc_BB403E: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BB4043: FLdZeroAd var_A4
  loc_BB4046: CVarStr var_A0
  loc_BB4049: PopAdLdVar
  loc_BB404A: FLdPr Me
  loc_BB404D: VCallAd Control_ID_CodiCucoMsk
  loc_BB4050: FStAdFunc var_88
  loc_BB4053: FLdPr var_88
  loc_BB4056: LateIdSt
  loc_BB405B: FFree1Ad var_88
  loc_BB405E: FFree1Var var_A0 = ""
  loc_BB4061: FLdRfVar var_A4
  loc_BB4064: FLdPr Me
  loc_BB4067: MemLdRfVar from_stack_1.global_76
  loc_BB406A: NewIfNullPr tblcuentacontable
  loc_BB406D: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BB4072: ILdRf var_A4
  loc_BB4075: FLdPr Me
  loc_BB4078: VCallAd Control_ID_DetaCucoLbl
  loc_BB407B: FStAdFunc var_88
  loc_BB407E: FLdPr var_88
  loc_BB4081: Me.Caption = from_stack_1
  loc_BB4086: FFree1Str var_A4
  loc_BB4089: FFree1Ad var_88
  loc_BB408C: Call Proc_109_56_A6E988()
  loc_BB4091: FLdPr Me
  loc_BB4094: VCallAd Control_ID_CodiCucoMsk
  loc_BB4097: FStAdFunc var_14C
  loc_BB409A: FLdPr Me
  loc_BB409D: VCallAd Control_ID_DetaCucoLbl
  loc_BB40A0: FStAdFunc var_148
  loc_BB40A3: FLdRfVar var_148
  loc_BB40A6: FLdZeroAd var_14C
  loc_BB40A9: FStAdFuncNoPop
  loc_BB40AC: CastAd
  loc_BB40AF: FStAdFunc var_90
  loc_BB40B2: FLdRfVar var_90
  loc_BB40B5: FLdPr Me
  loc_BB40B8: MemLdRfVar from_stack_1.global_68
  loc_BB40BB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB40C0: IStI2 KeyAscii
  loc_BB40C3: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB40CE: Branch loc_BB4149
  loc_BB40D1: LitVarStr var_D0, vbNullString
  loc_BB40D6: PopAdLdVar
  loc_BB40D7: FLdPr Me
  loc_BB40DA: VCallAd Control_ID_CodiCucoMsk
  loc_BB40DD: FStAdFunc var_88
  loc_BB40E0: FLdPr var_88
  loc_BB40E3: LateIdSt
  loc_BB40E8: FFree1Ad var_88
  loc_BB40EB: LitStr vbNullString
  loc_BB40EE: FLdPr Me
  loc_BB40F1: VCallAd Control_ID_DetaCucoLbl
  loc_BB40F4: FStAdFunc var_88
  loc_BB40F7: FLdPr var_88
  loc_BB40FA: Me.Caption = from_stack_1
  loc_BB40FF: FFree1Ad var_88
  loc_BB4102: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BB4105: FLdPr Me
  loc_BB4108: MemStStrCopy
  loc_BB410C: FLdPr Me
  loc_BB410F: VCallAd Control_ID_CodiCucoMsk
  loc_BB4112: FStAdFunc var_14C
  loc_BB4115: FLdPr Me
  loc_BB4118: VCallAd Control_ID_DetaCucoLbl
  loc_BB411B: FStAdFunc var_148
  loc_BB411E: FLdRfVar var_148
  loc_BB4121: FLdZeroAd var_14C
  loc_BB4124: FStAdFuncNoPop
  loc_BB4127: CastAd
  loc_BB412A: FStAdFunc var_90
  loc_BB412D: FLdRfVar var_90
  loc_BB4130: FLdPr Me
  loc_BB4133: MemLdRfVar from_stack_1.global_68
  loc_BB4136: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB413B: IStI2 KeyAscii
  loc_BB413E: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB4149: Branch loc_BB41C4
  loc_BB414C: FLdRfVar var_C0
  loc_BB414F: ImpAdLdPr unk_4E87D4
  loc_BB4152: MemLdPr global_0
  loc_BB4155:  = Me.RecordCount
  loc_BB415A: ILdRf var_C0
  loc_BB415D: LitI4 1
  loc_BB4162: LtI4
  loc_BB4163: BranchF loc_BB41C4
  loc_BB4166: LitStr vbNullString
  loc_BB4169: FLdPr Me
  loc_BB416C: VCallAd Control_ID_DetaCucoLbl
  loc_BB416F: FStAdFunc var_88
  loc_BB4172: FLdPr var_88
  loc_BB4175: Me.Caption = from_stack_1
  loc_BB417A: FFree1Ad var_88
  loc_BB417D: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BB4180: FLdPr Me
  loc_BB4183: MemStStrCopy
  loc_BB4187: FLdPr Me
  loc_BB418A: VCallAd Control_ID_CodiCucoMsk
  loc_BB418D: FStAdFunc var_14C
  loc_BB4190: FLdPr Me
  loc_BB4193: VCallAd Control_ID_DetaCucoLbl
  loc_BB4196: FStAdFunc var_148
  loc_BB4199: FLdRfVar var_148
  loc_BB419C: FLdZeroAd var_14C
  loc_BB419F: FStAdFuncNoPop
  loc_BB41A2: CastAd
  loc_BB41A5: FStAdFunc var_90
  loc_BB41A8: FLdRfVar var_90
  loc_BB41AB: FLdPr Me
  loc_BB41AE: MemLdRfVar from_stack_1.global_68
  loc_BB41B1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB41B6: IStI2 KeyAscii
  loc_BB41B9: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB41C4: Branch loc_BB4709
  loc_BB41C7: FLdPr Me
  loc_BB41CA: VCallAd Control_ID_CodiCucoMsk
  loc_BB41CD: FStAdFunc var_88
  loc_BB41D0: FLdPr var_88
  loc_BB41D3: LateIdLdVar var_A0 DispID_22 0
  loc_BB41DA: PopAd
  loc_BB41DC: LitStr "SELECT * FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_BB41DF: ImpAdLdI2 MemVar_C3D064
  loc_BB41E2: CStrUI1
  loc_BB41E4: FStStrNoPop var_A4
  loc_BB41E7: ConcatStr
  loc_BB41E8: FStStrNoPop var_A8
  loc_BB41EB: LitStr " AND DetaCuco LIKE '" & Chr(37)
  loc_BB41EE: ConcatStr
  loc_BB41EF: FStStrNoPop var_B0
  loc_BB41F2: LitI4 0
  loc_BB41F7: LitI4 -1
  loc_BB41FC: LitI4 1
  loc_BB4201: LitStr Chr(37)
  loc_BB4204: LitStr " "
  loc_BB4207: FLdRfVar var_A0
  loc_BB420A: CStrVarTmp
  loc_BB420B: FStStrNoPop var_AC
  loc_BB420E: ImpAdCallI2 Replace(, , , , , )
  loc_BB4213: FStStrNoPop var_B4
  loc_BB4216: ConcatStr
  loc_BB4217: FStStrNoPop var_B8
  loc_BB421A: LitStr Chr(37) & "'"
  loc_BB421D: ConcatStr
  loc_BB421E: FStStrNoPop var_BC
  loc_BB4221: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BB4226: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_BB4237: FFree1Ad var_88
  loc_BB423A: FFree1Var var_A0 = ""
  loc_BB423D: FLdRfVar var_C0
  loc_BB4240: ImpAdLdPr unk_4E87D4
  loc_BB4243: MemLdPr global_0
  loc_BB4246:  = Me.RecordCount
  loc_BB424B: ILdRf var_C0
  loc_BB424E: LitI4 1
  loc_BB4253: EqI4
  loc_BB4254: BranchF loc_BB43E0
  loc_BB4257: FLdRfVar var_A0
  loc_BB425A: FLdRfVar var_90
  loc_BB425D: LitVarStr var_D0, "CodiCuco"
  loc_BB4262: PopAdLdVar
  loc_BB4263: FLdRfVar var_88
  loc_BB4266: ImpAdLdPr unk_4E87D4
  loc_BB4269: MemLdPr global_0
  loc_BB426C:  = Me.Fields
  loc_BB4271: FLdPr var_88
  loc_BB4274: from_stack_2 = Me.Item(from_stack_1)
  loc_BB4279: FLdPr var_90
  loc_BB427C:  = Me.Value
  loc_BB4281: LitI4 0
  loc_BB4286: LitI4 6
  loc_BB428B: FLdRfVar var_D4
  loc_BB428E: Redim
  loc_BB4298: LitVarStr var_E4, "1120"
  loc_BB429D: LitI4 0
  loc_BB42A2: ILdRf var_D4
  loc_BB42A5: Ary1StVarCopy
  loc_BB42A7: LitVarStr var_F4, "1140"
  loc_BB42AC: LitI4 1
  loc_BB42B1: ILdRf var_D4
  loc_BB42B4: Ary1StVarCopy
  loc_BB42B6: LitVarStr var_104, "1150"
  loc_BB42BB: LitI4 2
  loc_BB42C0: ILdRf var_D4
  loc_BB42C3: Ary1StVarCopy
  loc_BB42C5: LitVarStr var_114, "1155"
  loc_BB42CA: LitI4 3
  loc_BB42CF: ILdRf var_D4
  loc_BB42D2: Ary1StVarCopy
  loc_BB42D4: LitVarStr var_124, "1160"
  loc_BB42D9: LitI4 4
  loc_BB42DE: ILdRf var_D4
  loc_BB42E1: Ary1StVarCopy
  loc_BB42E3: LitVarStr var_134, "1170"
  loc_BB42E8: LitI4 5
  loc_BB42ED: ILdRf var_D4
  loc_BB42F0: Ary1StVarCopy
  loc_BB42F2: LitVarStr var_144, "2"
  loc_BB42F7: LitI4 6
  loc_BB42FC: ILdRf var_D4
  loc_BB42FF: Ary1StVarCopy
  loc_BB4301: FLdRfVar var_D4
  loc_BB4304: FLdPr Me
  loc_BB4307: MemLdRfVar from_stack_1.global_76
  loc_BB430A: NewIfNullRf
  loc_BB430E: ImpAdLdI2 MemVar_C3D064
  loc_BB4311: LitI2_Byte 0
  loc_BB4313: FLdRfVar var_A0
  loc_BB4316: CStrVarTmp
  loc_BB4317: FStStrNoPop var_A4
  loc_BB431A: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BB431F: FStStr var_A8
  loc_BB4322: FLdRfVar var_D4
  loc_BB4325: Erase
  loc_BB4326: ILdRf var_A8
  loc_BB4329: FLdPr Me
  loc_BB432C: MemStStrCopy
  loc_BB4330: FFreeStr var_A4 = ""
  loc_BB4337: FFreeAd var_88 = ""
  loc_BB433E: FFree1Var var_A0 = ""
  loc_BB4341: FLdRfVar var_A4
  loc_BB4344: FLdPr Me
  loc_BB4347: MemLdRfVar from_stack_1.global_76
  loc_BB434A: NewIfNullPr tblcuentacontable
  loc_BB434D: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BB4352: FLdZeroAd var_A4
  loc_BB4355: CVarStr var_A0
  loc_BB4358: PopAdLdVar
  loc_BB4359: FLdPr Me
  loc_BB435C: VCallAd Control_ID_CodiCucoMsk
  loc_BB435F: FStAdFunc var_88
  loc_BB4362: FLdPr var_88
  loc_BB4365: LateIdSt
  loc_BB436A: FFree1Ad var_88
  loc_BB436D: FFree1Var var_A0 = ""
  loc_BB4370: FLdRfVar var_A4
  loc_BB4373: FLdPr Me
  loc_BB4376: MemLdRfVar from_stack_1.global_76
  loc_BB4379: NewIfNullPr tblcuentacontable
  loc_BB437C: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BB4381: ILdRf var_A4
  loc_BB4384: FLdPr Me
  loc_BB4387: VCallAd Control_ID_DetaCucoLbl
  loc_BB438A: FStAdFunc var_88
  loc_BB438D: FLdPr var_88
  loc_BB4390: Me.Caption = from_stack_1
  loc_BB4395: FFree1Str var_A4
  loc_BB4398: FFree1Ad var_88
  loc_BB439B: Call Proc_109_56_A6E988()
  loc_BB43A0: FLdPr Me
  loc_BB43A3: VCallAd Control_ID_CodiCucoMsk
  loc_BB43A6: FStAdFunc var_14C
  loc_BB43A9: FLdPr Me
  loc_BB43AC: VCallAd Control_ID_DetaCucoLbl
  loc_BB43AF: FStAdFunc var_148
  loc_BB43B2: FLdRfVar var_148
  loc_BB43B5: FLdZeroAd var_14C
  loc_BB43B8: FStAdFuncNoPop
  loc_BB43BB: CastAd
  loc_BB43BE: FStAdFunc var_90
  loc_BB43C1: FLdRfVar var_90
  loc_BB43C4: FLdPr Me
  loc_BB43C7: MemLdRfVar from_stack_1.global_68
  loc_BB43CA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB43CF: IStI2 KeyAscii
  loc_BB43D2: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB43DD: Branch loc_BB4709
  loc_BB43E0: FLdRfVar var_C0
  loc_BB43E3: ImpAdLdPr unk_4E87D4
  loc_BB43E6: MemLdPr global_0
  loc_BB43E9:  = Me.RecordCount
  loc_BB43EE: ILdRf var_C0
  loc_BB43F1: LitI4 1
  loc_BB43F6: GtI4
  loc_BB43F7: BranchF loc_BB4691
  loc_BB43FA: FLdPr Me
  loc_BB43FD: VCallAd Control_ID_CodiCucoMsk
  loc_BB4400: FStAdFunc var_88
  loc_BB4403: FLdPr var_88
  loc_BB4406: LateIdLdVar var_A0 DispID_22 0
  loc_BB440D: CStrVarTmp
  loc_BB440E: FStStrNoPop var_A4
  loc_BB4411: ImpAdLdRf MemVar_C3D6C0
  loc_BB4414: NewIfNullPr bscCuentaContable
  loc_BB4417: Call bscCuentaContable.BuscoxDetaCucoPut(from_stack_1v)
  loc_BB441C: FFree1Str var_A4
  loc_BB441F: FFree1Ad var_88
  loc_BB4422: FFree1Var var_A0 = ""
  loc_BB4425: LitStr vbNullString
  loc_BB4428: ImpAdLdRf MemVar_C3D6C0
  loc_BB442B: NewIfNullPr bscCuentaContable
  loc_BB442E: Call bscCuentaContable.BuscoxCodiCucoPut(from_stack_1v)
  loc_BB4433: LitVar_Missing var_E4
  loc_BB4436: PopAdLdVar
  loc_BB4437: LitVarI4
  loc_BB443F: PopAdLdVar
  loc_BB4440: ImpAdLdRf MemVar_C3D6C0
  loc_BB4443: NewIfNullPr bscCuentaContable
  loc_BB4446: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_BB444B: FLdRfVar var_C0
  loc_BB444E: FLdRfVar var_88
  loc_BB4451: ImpAdLdRf MemVar_C3D6C0
  loc_BB4454: NewIfNullPr bscCuentaContable
  loc_BB4457: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BB445C: FLdPr var_88
  loc_BB445F: from_stack_1 = clsbase.RecordCount
  loc_BB4464: ILdRf var_C0
  loc_BB4467: LitI4 0
  loc_BB446C: GtI4
  loc_BB446D: FFree1Ad var_88
  loc_BB4470: BranchF loc_BB4616
  loc_BB4473: FLdRfVar var_A0
  loc_BB4476: FLdRfVar var_14C
  loc_BB4479: LitVarStr var_D0, "CodiCuco"
  loc_BB447E: PopAdLdVar
  loc_BB447F: FLdRfVar var_148
  loc_BB4482: FLdRfVar var_90
  loc_BB4485: FLdRfVar var_88
  loc_BB4488: ImpAdLdRf MemVar_C3D6C0
  loc_BB448B: NewIfNullPr bscCuentaContable
  loc_BB448E: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BB4493: FLdPr var_88
  loc_BB4496: from_stack_1v = clsbase.RsFrmGet()
  loc_BB449B: FLdPr var_90
  loc_BB449E:  = Me.Fields
  loc_BB44A3: FLdPr var_148
  loc_BB44A6: from_stack_2 = Me.Item(from_stack_1)
  loc_BB44AB: FLdPr var_14C
  loc_BB44AE:  = Me.Value
  loc_BB44B3: LitI4 0
  loc_BB44B8: LitI4 6
  loc_BB44BD: FLdRfVar var_D4
  loc_BB44C0: Redim
  loc_BB44CA: LitVarStr var_E4, "1120"
  loc_BB44CF: LitI4 0
  loc_BB44D4: ILdRf var_D4
  loc_BB44D7: Ary1StVarCopy
  loc_BB44D9: LitVarStr var_F4, "1140"
  loc_BB44DE: LitI4 1
  loc_BB44E3: ILdRf var_D4
  loc_BB44E6: Ary1StVarCopy
  loc_BB44E8: LitVarStr var_104, "1150"
  loc_BB44ED: LitI4 2
  loc_BB44F2: ILdRf var_D4
  loc_BB44F5: Ary1StVarCopy
  loc_BB44F7: LitVarStr var_114, "1155"
  loc_BB44FC: LitI4 3
  loc_BB4501: ILdRf var_D4
  loc_BB4504: Ary1StVarCopy
  loc_BB4506: LitVarStr var_124, "1160"
  loc_BB450B: LitI4 4
  loc_BB4510: ILdRf var_D4
  loc_BB4513: Ary1StVarCopy
  loc_BB4515: LitVarStr var_134, "1170"
  loc_BB451A: LitI4 5
  loc_BB451F: ILdRf var_D4
  loc_BB4522: Ary1StVarCopy
  loc_BB4524: LitVarStr var_144, "2"
  loc_BB4529: LitI4 6
  loc_BB452E: ILdRf var_D4
  loc_BB4531: Ary1StVarCopy
  loc_BB4533: FLdRfVar var_D4
  loc_BB4536: FLdPr Me
  loc_BB4539: MemLdRfVar from_stack_1.global_76
  loc_BB453C: NewIfNullRf
  loc_BB4540: ImpAdLdI2 MemVar_C3D064
  loc_BB4543: LitI2_Byte 0
  loc_BB4545: FLdRfVar var_A0
  loc_BB4548: CStrVarTmp
  loc_BB4549: FStStrNoPop var_A4
  loc_BB454C: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BB4551: FStStr var_A8
  loc_BB4554: FLdRfVar var_D4
  loc_BB4557: Erase
  loc_BB4558: ILdRf var_A8
  loc_BB455B: FLdPr Me
  loc_BB455E: MemStStrCopy
  loc_BB4562: FFreeStr var_A4 = ""
  loc_BB4569: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB4574: FFree1Var var_A0 = ""
  loc_BB4577: FLdRfVar var_A4
  loc_BB457A: FLdPr Me
  loc_BB457D: MemLdRfVar from_stack_1.global_76
  loc_BB4580: NewIfNullPr tblcuentacontable
  loc_BB4583: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BB4588: FLdZeroAd var_A4
  loc_BB458B: CVarStr var_A0
  loc_BB458E: PopAdLdVar
  loc_BB458F: FLdPr Me
  loc_BB4592: VCallAd Control_ID_CodiCucoMsk
  loc_BB4595: FStAdFunc var_88
  loc_BB4598: FLdPr var_88
  loc_BB459B: LateIdSt
  loc_BB45A0: FFree1Ad var_88
  loc_BB45A3: FFree1Var var_A0 = ""
  loc_BB45A6: FLdRfVar var_A4
  loc_BB45A9: FLdPr Me
  loc_BB45AC: MemLdRfVar from_stack_1.global_76
  loc_BB45AF: NewIfNullPr tblcuentacontable
  loc_BB45B2: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BB45B7: ILdRf var_A4
  loc_BB45BA: FLdPr Me
  loc_BB45BD: VCallAd Control_ID_DetaCucoLbl
  loc_BB45C0: FStAdFunc var_88
  loc_BB45C3: FLdPr var_88
  loc_BB45C6: Me.Caption = from_stack_1
  loc_BB45CB: FFree1Str var_A4
  loc_BB45CE: FFree1Ad var_88
  loc_BB45D1: Call Proc_109_56_A6E988()
  loc_BB45D6: FLdPr Me
  loc_BB45D9: VCallAd Control_ID_CodiCucoMsk
  loc_BB45DC: FStAdFunc var_14C
  loc_BB45DF: FLdPr Me
  loc_BB45E2: VCallAd Control_ID_DetaCucoLbl
  loc_BB45E5: FStAdFunc var_148
  loc_BB45E8: FLdRfVar var_148
  loc_BB45EB: FLdZeroAd var_14C
  loc_BB45EE: FStAdFuncNoPop
  loc_BB45F1: CastAd
  loc_BB45F4: FStAdFunc var_90
  loc_BB45F7: FLdRfVar var_90
  loc_BB45FA: FLdPr Me
  loc_BB45FD: MemLdRfVar from_stack_1.global_68
  loc_BB4600: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB4605: IStI2 KeyAscii
  loc_BB4608: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB4613: Branch loc_BB468E
  loc_BB4616: LitVarStr var_D0, vbNullString
  loc_BB461B: PopAdLdVar
  loc_BB461C: FLdPr Me
  loc_BB461F: VCallAd Control_ID_CodiCucoMsk
  loc_BB4622: FStAdFunc var_88
  loc_BB4625: FLdPr var_88
  loc_BB4628: LateIdSt
  loc_BB462D: FFree1Ad var_88
  loc_BB4630: LitStr vbNullString
  loc_BB4633: FLdPr Me
  loc_BB4636: VCallAd Control_ID_DetaCucoLbl
  loc_BB4639: FStAdFunc var_88
  loc_BB463C: FLdPr var_88
  loc_BB463F: Me.Caption = from_stack_1
  loc_BB4644: FFree1Ad var_88
  loc_BB4647: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BB464A: FLdPr Me
  loc_BB464D: MemStStrCopy
  loc_BB4651: FLdPr Me
  loc_BB4654: VCallAd Control_ID_CodiCucoMsk
  loc_BB4657: FStAdFunc var_14C
  loc_BB465A: FLdPr Me
  loc_BB465D: VCallAd Control_ID_DetaCucoLbl
  loc_BB4660: FStAdFunc var_148
  loc_BB4663: FLdRfVar var_148
  loc_BB4666: FLdZeroAd var_14C
  loc_BB4669: FStAdFuncNoPop
  loc_BB466C: CastAd
  loc_BB466F: FStAdFunc var_90
  loc_BB4672: FLdRfVar var_90
  loc_BB4675: FLdPr Me
  loc_BB4678: MemLdRfVar from_stack_1.global_68
  loc_BB467B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB4680: IStI2 KeyAscii
  loc_BB4683: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB468E: Branch loc_BB4709
  loc_BB4691: FLdRfVar var_C0
  loc_BB4694: ImpAdLdPr unk_4E87D4
  loc_BB4697: MemLdPr global_0
  loc_BB469A:  = Me.RecordCount
  loc_BB469F: ILdRf var_C0
  loc_BB46A2: LitI4 1
  loc_BB46A7: LtI4
  loc_BB46A8: BranchF loc_BB4709
  loc_BB46AB: LitStr vbNullString
  loc_BB46AE: FLdPr Me
  loc_BB46B1: VCallAd Control_ID_DetaCucoLbl
  loc_BB46B4: FStAdFunc var_88
  loc_BB46B7: FLdPr var_88
  loc_BB46BA: Me.Caption = from_stack_1
  loc_BB46BF: FFree1Ad var_88
  loc_BB46C2: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BB46C5: FLdPr Me
  loc_BB46C8: MemStStrCopy
  loc_BB46CC: FLdPr Me
  loc_BB46CF: VCallAd Control_ID_CodiCucoMsk
  loc_BB46D2: FStAdFunc var_14C
  loc_BB46D5: FLdPr Me
  loc_BB46D8: VCallAd Control_ID_DetaCucoLbl
  loc_BB46DB: FStAdFunc var_148
  loc_BB46DE: FLdRfVar var_148
  loc_BB46E1: FLdZeroAd var_14C
  loc_BB46E4: FStAdFuncNoPop
  loc_BB46E7: CastAd
  loc_BB46EA: FStAdFunc var_90
  loc_BB46ED: FLdRfVar var_90
  loc_BB46F0: FLdPr Me
  loc_BB46F3: MemLdRfVar from_stack_1.global_68
  loc_BB46F6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB46FB: IStI2 KeyAscii
  loc_BB46FE: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB4709: Branch loc_BB4983
  loc_BB470C: LitStr vbNullString
  loc_BB470F: ImpAdLdRf MemVar_C3D6C0
  loc_BB4712: NewIfNullPr bscCuentaContable
  loc_BB4715: Call bscCuentaContable.BuscoxCodiCucoPut(from_stack_1v)
  loc_BB471A: LitStr vbNullString
  loc_BB471D: ImpAdLdRf MemVar_C3D6C0
  loc_BB4720: NewIfNullPr bscCuentaContable
  loc_BB4723: Call bscCuentaContable.BuscoxDetaCucoPut(from_stack_1v)
  loc_BB4728: LitVar_Missing var_E4
  loc_BB472B: PopAdLdVar
  loc_BB472C: LitVarI4
  loc_BB4734: PopAdLdVar
  loc_BB4735: ImpAdLdRf MemVar_C3D6C0
  loc_BB4738: NewIfNullPr bscCuentaContable
  loc_BB473B: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_BB4740: FLdRfVar var_C0
  loc_BB4743: FLdRfVar var_88
  loc_BB4746: ImpAdLdRf MemVar_C3D6C0
  loc_BB4749: NewIfNullPr bscCuentaContable
  loc_BB474C: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BB4751: FLdPr var_88
  loc_BB4754: from_stack_1 = clsbase.RecordCount
  loc_BB4759: ILdRf var_C0
  loc_BB475C: LitI4 0
  loc_BB4761: GtI4
  loc_BB4762: FFree1Ad var_88
  loc_BB4765: BranchF loc_BB490B
  loc_BB4768: FLdRfVar var_A0
  loc_BB476B: FLdRfVar var_14C
  loc_BB476E: LitVarStr var_D0, "CodiCuco"
  loc_BB4773: PopAdLdVar
  loc_BB4774: FLdRfVar var_148
  loc_BB4777: FLdRfVar var_90
  loc_BB477A: FLdRfVar var_88
  loc_BB477D: ImpAdLdRf MemVar_C3D6C0
  loc_BB4780: NewIfNullPr bscCuentaContable
  loc_BB4783: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_BB4788: FLdPr var_88
  loc_BB478B: from_stack_1v = clsbase.RsFrmGet()
  loc_BB4790: FLdPr var_90
  loc_BB4793:  = Me.Fields
  loc_BB4798: FLdPr var_148
  loc_BB479B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB47A0: FLdPr var_14C
  loc_BB47A3:  = Me.Value
  loc_BB47A8: LitI4 0
  loc_BB47AD: LitI4 6
  loc_BB47B2: FLdRfVar var_D4
  loc_BB47B5: Redim
  loc_BB47BF: LitVarStr var_E4, "1120"
  loc_BB47C4: LitI4 0
  loc_BB47C9: ILdRf var_D4
  loc_BB47CC: Ary1StVarCopy
  loc_BB47CE: LitVarStr var_F4, "1140"
  loc_BB47D3: LitI4 1
  loc_BB47D8: ILdRf var_D4
  loc_BB47DB: Ary1StVarCopy
  loc_BB47DD: LitVarStr var_104, "1150"
  loc_BB47E2: LitI4 2
  loc_BB47E7: ILdRf var_D4
  loc_BB47EA: Ary1StVarCopy
  loc_BB47EC: LitVarStr var_114, "1155"
  loc_BB47F1: LitI4 3
  loc_BB47F6: ILdRf var_D4
  loc_BB47F9: Ary1StVarCopy
  loc_BB47FB: LitVarStr var_124, "1160"
  loc_BB4800: LitI4 4
  loc_BB4805: ILdRf var_D4
  loc_BB4808: Ary1StVarCopy
  loc_BB480A: LitVarStr var_134, "1170"
  loc_BB480F: LitI4 5
  loc_BB4814: ILdRf var_D4
  loc_BB4817: Ary1StVarCopy
  loc_BB4819: LitVarStr var_144, "2"
  loc_BB481E: LitI4 6
  loc_BB4823: ILdRf var_D4
  loc_BB4826: Ary1StVarCopy
  loc_BB4828: FLdRfVar var_D4
  loc_BB482B: FLdPr Me
  loc_BB482E: MemLdRfVar from_stack_1.global_76
  loc_BB4831: NewIfNullRf
  loc_BB4835: ImpAdLdI2 MemVar_C3D064
  loc_BB4838: LitI2_Byte 0
  loc_BB483A: FLdRfVar var_A0
  loc_BB483D: CStrVarTmp
  loc_BB483E: FStStrNoPop var_A4
  loc_BB4841: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_BB4846: FStStr var_A8
  loc_BB4849: FLdRfVar var_D4
  loc_BB484C: Erase
  loc_BB484D: ILdRf var_A8
  loc_BB4850: FLdPr Me
  loc_BB4853: MemStStrCopy
  loc_BB4857: FFreeStr var_A4 = ""
  loc_BB485E: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB4869: FFree1Var var_A0 = ""
  loc_BB486C: FLdRfVar var_A4
  loc_BB486F: FLdPr Me
  loc_BB4872: MemLdRfVar from_stack_1.global_76
  loc_BB4875: NewIfNullPr tblcuentacontable
  loc_BB4878: from_stack_1v = tblcuentacontable.CodiCucoGet()
  loc_BB487D: FLdZeroAd var_A4
  loc_BB4880: CVarStr var_A0
  loc_BB4883: PopAdLdVar
  loc_BB4884: FLdPr Me
  loc_BB4887: VCallAd Control_ID_CodiCucoMsk
  loc_BB488A: FStAdFunc var_88
  loc_BB488D: FLdPr var_88
  loc_BB4890: LateIdSt
  loc_BB4895: FFree1Ad var_88
  loc_BB4898: FFree1Var var_A0 = ""
  loc_BB489B: FLdRfVar var_A4
  loc_BB489E: FLdPr Me
  loc_BB48A1: MemLdRfVar from_stack_1.global_76
  loc_BB48A4: NewIfNullPr tblcuentacontable
  loc_BB48A7: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_BB48AC: ILdRf var_A4
  loc_BB48AF: FLdPr Me
  loc_BB48B2: VCallAd Control_ID_DetaCucoLbl
  loc_BB48B5: FStAdFunc var_88
  loc_BB48B8: FLdPr var_88
  loc_BB48BB: Me.Caption = from_stack_1
  loc_BB48C0: FFree1Str var_A4
  loc_BB48C3: FFree1Ad var_88
  loc_BB48C6: Call Proc_109_56_A6E988()
  loc_BB48CB: FLdPr Me
  loc_BB48CE: VCallAd Control_ID_CodiCucoMsk
  loc_BB48D1: FStAdFunc var_14C
  loc_BB48D4: FLdPr Me
  loc_BB48D7: VCallAd Control_ID_DetaCucoLbl
  loc_BB48DA: FStAdFunc var_148
  loc_BB48DD: FLdRfVar var_148
  loc_BB48E0: FLdZeroAd var_14C
  loc_BB48E3: FStAdFuncNoPop
  loc_BB48E6: CastAd
  loc_BB48E9: FStAdFunc var_90
  loc_BB48EC: FLdRfVar var_90
  loc_BB48EF: FLdPr Me
  loc_BB48F2: MemLdRfVar from_stack_1.global_68
  loc_BB48F5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB48FA: IStI2 KeyAscii
  loc_BB48FD: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB4908: Branch loc_BB4983
  loc_BB490B: LitVarStr var_D0, vbNullString
  loc_BB4910: PopAdLdVar
  loc_BB4911: FLdPr Me
  loc_BB4914: VCallAd Control_ID_CodiCucoMsk
  loc_BB4917: FStAdFunc var_88
  loc_BB491A: FLdPr var_88
  loc_BB491D: LateIdSt
  loc_BB4922: FFree1Ad var_88
  loc_BB4925: LitStr vbNullString
  loc_BB4928: FLdPr Me
  loc_BB492B: VCallAd Control_ID_DetaCucoLbl
  loc_BB492E: FStAdFunc var_88
  loc_BB4931: FLdPr var_88
  loc_BB4934: Me.Caption = from_stack_1
  loc_BB4939: FFree1Ad var_88
  loc_BB493C: LitStr "La Cuenta Contable NO EXISTE. Verifique..."
  loc_BB493F: FLdPr Me
  loc_BB4942: MemStStrCopy
  loc_BB4946: FLdPr Me
  loc_BB4949: VCallAd Control_ID_CodiCucoMsk
  loc_BB494C: FStAdFunc var_14C
  loc_BB494F: FLdPr Me
  loc_BB4952: VCallAd Control_ID_DetaCucoLbl
  loc_BB4955: FStAdFunc var_148
  loc_BB4958: FLdRfVar var_148
  loc_BB495B: FLdZeroAd var_14C
  loc_BB495E: FStAdFuncNoPop
  loc_BB4961: CastAd
  loc_BB4964: FStAdFunc var_90
  loc_BB4967: FLdRfVar var_90
  loc_BB496A: FLdPr Me
  loc_BB496D: MemLdRfVar from_stack_1.global_68
  loc_BB4970: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BB4975: IStI2 KeyAscii
  loc_BB4978: FFreeAd var_88 = "": var_90 = "": var_148 = ""
  loc_BB4983: ILdI2 KeyAscii
  loc_BB4986: NotI4
  loc_BB4987: BranchF loc_BB4BE6
  loc_BB498A: FLdPr Me
  loc_BB498D: MemLdRfVar from_stack_1.global_80
  loc_BB4990: NewIfNullRf
  loc_BB4994: ImpAdLdI2 MemVar_C3D064
  loc_BB4997: ImpAdCallFPR4 Proc_259_23_AE2098(, )
  loc_BB499C: LitI4 1
  loc_BB49A1: FLdRfVar var_A4
  loc_BB49A4: FLdPr Me
  loc_BB49A7: MemLdRfVar from_stack_1.global_80
  loc_BB49AA: NewIfNullPr tblparaconta
  loc_BB49AD: from_stack_1v = tblparaconta.DefaPacoGet()
  loc_BB49B2: ILdRf var_A4
  loc_BB49B5: FLdPr Me
  loc_BB49B8: VCallAd Control_ID_CodiCucoMsk
  loc_BB49BB: FStAdFunc var_88
  loc_BB49BE: FLdPr var_88
  loc_BB49C1: LateIdLdVar var_A0 DispID_22 0
  loc_BB49C8: CStrVarTmp
  loc_BB49C9: FStStrNoPop var_A8
  loc_BB49CC: LitI4 0
  loc_BB49D1: FnInStr4
  loc_BB49D3: LitI4 0
  loc_BB49D8: GtI4
  loc_BB49D9: FFreeStr var_A8 = ""
  loc_BB49E0: FFree1Ad var_88
  loc_BB49E3: FFree1Var var_A0 = ""
  loc_BB49E6: BranchF loc_BB4A43
  loc_BB49E9: LitI2_Byte &HFF
  loc_BB49EB: FLdPr Me
  loc_BB49EE: VCallAd Control_ID_TifaDeveCbo
  loc_BB49F1: FStAdFunc var_88
  loc_BB49F4: FLdPr var_88
  loc_BB49F7: Me.Enabled = from_stack_1b
  loc_BB49FC: FFree1Ad var_88
  loc_BB49FF: LitI2_Byte &HFF
  loc_BB4A01: FLdPr Me
  loc_BB4A04: VCallAd Control_ID_SufaDeveTxt
  loc_BB4A07: FStAdFunc var_88
  loc_BB4A0A: FLdPr var_88
  loc_BB4A0D: Me.Enabled = from_stack_1b
  loc_BB4A12: FFree1Ad var_88
  loc_BB4A15: LitI2_Byte &HFF
  loc_BB4A17: FLdPr Me
  loc_BB4A1A: VCallAd Control_ID_NufaDeveTxt
  loc_BB4A1D: FStAdFunc var_88
  loc_BB4A20: FLdPr var_88
  loc_BB4A23: Me.Enabled = from_stack_1b
  loc_BB4A28: FFree1Ad var_88
  loc_BB4A2B: LitVar_TRUE var_D0
  loc_BB4A2E: PopAdLdVar
  loc_BB4A2F: FLdPr Me
  loc_BB4A32: VCallAd Control_ID_CodiOrgaMsk
  loc_BB4A35: FStAdFunc var_88
  loc_BB4A38: FLdPr var_88
  loc_BB4A3B: LateIdSt
  loc_BB4A40: FFree1Ad var_88
  loc_BB4A43: FLdPr Me
  loc_BB4A46: MemLdStr global_96
  loc_BB4A49: LitStr "btnGuardar"
  loc_BB4A4C: NeStr
  loc_BB4A4E: BranchF loc_BB4BE3
  loc_BB4A51: ImpAdLdI2 MemVar_C3D064
  loc_BB4A54: ImpAdCallI2 Proc_259_2_9BA468()
  loc_BB4A59: FStStrNoPop var_A4
  loc_BB4A5C: CDateStr
  loc_BB4A5E: LitI2_Byte 1
  loc_BB4A60: CR8I2
  loc_BB4A61: AddR8
  loc_BB4A62: CDateR8
  loc_BB4A63: CStrDate
  loc_BB4A65: FStStr var_150
  loc_BB4A68: FFree1Str var_A4
  loc_BB4A6B: LitStr "SELECT op.NumeOrpa, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CodiRete, lqn.CucuPers, p.DetaProv, lqn.ImpoLine, lqn.CertLine"
  loc_BB4A6E: LitStr " FROM liquidaneto lqn"
  loc_BB4A71: ConcatStr
  loc_BB4A72: FStStrNoPop var_A4
  loc_BB4A75: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_BB4A78: ConcatStr
  loc_BB4A79: FStStrNoPop var_A8
  loc_BB4A7C: LitStr " INNER JOIN ordenpago op ON op.PeriInfo = lqn.PeriInfo AND op.ExpeImpu = lqn.ExpeImpu AND op.NumeLiqu = lqn.NumeLiqu AND op.FeanOrpa IS NULL"
  loc_BB4A7F: ConcatStr
  loc_BB4A80: FStStrNoPop var_AC
  loc_BB4A83: LitStr " WHERE lqn.PeriInfo = "
  loc_BB4A86: ConcatStr
  loc_BB4A87: FStStrNoPop var_B0
  loc_BB4A8A: ImpAdLdI2 MemVar_C3D064
  loc_BB4A8D: CStrUI1
  loc_BB4A8F: FStStrNoPop var_B4
  loc_BB4A92: ConcatStr
  loc_BB4A93: FStStrNoPop var_B8
  loc_BB4A96: LitStr " AND lqn.CodiRete > 0"
  loc_BB4A99: ConcatStr
  loc_BB4A9A: FStStrNoPop var_BC
  loc_BB4A9D: LitStr " AND lqn.CodiCuco = '"
  loc_BB4AA0: ConcatStr
  loc_BB4AA1: FStStrNoPop var_154
  loc_BB4AA4: FLdPr Me
  loc_BB4AA7: VCallAd Control_ID_CodiCucoMsk
  loc_BB4AAA: FStAdFunc var_88
  loc_BB4AAD: FLdPr var_88
  loc_BB4AB0: LateIdLdVar var_A0 DispID_22 0
  loc_BB4AB7: CStrVarTmp
  loc_BB4AB8: FStStrNoPop var_158
  loc_BB4ABB: ConcatStr
  loc_BB4ABC: FStStrNoPop var_15C
  loc_BB4ABF: LitStr "'"
  loc_BB4AC2: ConcatStr
  loc_BB4AC3: FStStrNoPop var_160
  loc_BB4AC6: LitStr " AND lqn.FechCaja >= "
  loc_BB4AC9: ConcatStr
  loc_BB4ACA: FStStrNoPop var_174
  loc_BB4ACD: LitI4 1
  loc_BB4AD2: LitI4 1
  loc_BB4AD7: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_BB4ADC: FStVarCopyObj var_170
  loc_BB4ADF: FLdRfVar var_170
  loc_BB4AE2: FLdRfVar var_150
  loc_BB4AE5: CVarRef
  loc_BB4AEA: ImpAdCallI2 Format$(, )
  loc_BB4AEF: FStStrNoPop var_178
  loc_BB4AF2: ConcatStr
  loc_BB4AF3: FStStrNoPop var_17C
  loc_BB4AF6: LitStr " AND lqn.NumeDebi = 0;"
  loc_BB4AF9: ConcatStr
  loc_BB4AFA: FStStrNoPop var_180
  loc_BB4AFD: FLdRfVar var_90
  loc_BB4B00: ImpAdLdRf MemVar_C3DA48
  loc_BB4B03: NewIfNullPr bscLiquidaneto
  loc_BB4B06: from_stack_1v = bscLiquidaneto.global_4348752Get()
  loc_BB4B0B: FLdPr var_90
  loc_BB4B0E: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB4B13: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_BB4B34: FFreeAd var_88 = ""
  loc_BB4B3B: FFreeVar var_A0 = ""
  loc_BB4B42: FLdRfVar var_C0
  loc_BB4B45: FLdRfVar var_88
  loc_BB4B48: ImpAdLdRf MemVar_C3DA48
  loc_BB4B4B: NewIfNullPr bscLiquidaneto
  loc_BB4B4E: from_stack_1v = bscLiquidaneto.global_4348752Get()
  loc_BB4B53: FLdPr var_88
  loc_BB4B56: from_stack_1 = clsbase.RecordCount
  loc_BB4B5B: ILdRf var_C0
  loc_BB4B5E: LitI4 0
  loc_BB4B63: GtI4
  loc_BB4B64: FFree1Ad var_88
  loc_BB4B67: BranchF loc_BB4BE3
  loc_BB4B6A: FLdPr Me
  loc_BB4B6D: VCallAd Control_ID_CodiCucoMsk
  loc_BB4B70: FStAdFunc var_88
  loc_BB4B73: FLdPr var_88
  loc_BB4B76: LateIdLdVar var_A0 DispID_22 0
  loc_BB4B7D: CStrVarTmp
  loc_BB4B7E: FStStrNoPop var_A4
  loc_BB4B81: ImpAdLdRf MemVar_C3DA48
  loc_BB4B84: NewIfNullPr bscLiquidaneto
  loc_BB4B87: Call bscLiquidaneto.sCodiCucoPut(from_stack_1v)
  loc_BB4B8C: FFree1Str var_A4
  loc_BB4B8F: FFree1Ad var_88
  loc_BB4B92: FFree1Var var_A0 = ""
  loc_BB4B95: LitI4 1
  loc_BB4B9A: LitI4 1
  loc_BB4B9F: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_BB4BA4: FStVarCopyObj var_A0
  loc_BB4BA7: FLdRfVar var_A0
  loc_BB4BAA: FLdRfVar var_150
  loc_BB4BAD: CVarRef
  loc_BB4BB2: ImpAdCallI2 Format$(, )
  loc_BB4BB7: FStStrNoPop var_A4
  loc_BB4BBA: ImpAdLdRf MemVar_C3DA48
  loc_BB4BBD: NewIfNullPr bscLiquidaneto
  loc_BB4BC0: Call bscLiquidaneto.sFechaPut(from_stack_1v)
  loc_BB4BC5: FFree1Str var_A4
  loc_BB4BC8: FFree1Var var_A0 = ""
  loc_BB4BCB: LitVar_Missing var_E4
  loc_BB4BCE: PopAdLdVar
  loc_BB4BCF: LitVarI4
  loc_BB4BD7: PopAdLdVar
  loc_BB4BD8: ImpAdLdRf MemVar_C3DA48
  loc_BB4BDB: NewIfNullPr bscLiquidaneto
  loc_BB4BDE: bscLiquidaneto.Show from_stack_1, from_stack_2
  loc_BB4BE3: Branch loc_BB4C1A
  loc_BB4BE6: LitVarStr var_D0, vbNullString
  loc_BB4BEB: PopAdLdVar
  loc_BB4BEC: FLdPr Me
  loc_BB4BEF: VCallAd Control_ID_CodiCucoMsk
  loc_BB4BF2: FStAdFunc var_88
  loc_BB4BF5: FLdPr var_88
  loc_BB4BF8: LateIdSt
  loc_BB4BFD: FFree1Ad var_88
  loc_BB4C00: LitVarStr var_D0, vbNullString
  loc_BB4C05: PopAdLdVar
  loc_BB4C06: FLdPr Me
  loc_BB4C09: VCallAd Control_ID_CodiCucoMsk
  loc_BB4C0C: FStAdFunc var_88
  loc_BB4C0F: FLdPr var_88
  loc_BB4C12: LateIdSt
  loc_BB4C17: FFree1Ad var_88
  loc_BB4C1A: ExitProcHresult
  loc_BB4C1B: LtCyR8
End Sub

Private Sub CodiCucoMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A03794
  'Data Table: 4E878C
  loc_A03644: ILdI2 Shift
  loc_A03647: CI4UI1
  loc_A03648: LitI4 2
  loc_A0364D: EqI4
  loc_A0364E: ILdI2 KeyCode
  loc_A03651: CI4UI1
  loc_A03652: LitI4 &H42
  loc_A03657: EqI4
  loc_A03658: AndI4
  loc_A03659: BranchF loc_A03790
  loc_A0365C: LitStr vbNullString
  loc_A0365F: ImpAdLdRf MemVar_C3D6C0
  loc_A03662: NewIfNullPr bscCuentaContable
  loc_A03665: Call bscCuentaContable.BuscoxCodiCucoPut(from_stack_1v)
  loc_A0366A: LitStr vbNullString
  loc_A0366D: ImpAdLdRf MemVar_C3D6C0
  loc_A03670: NewIfNullPr bscCuentaContable
  loc_A03673: Call bscCuentaContable.BuscoxDetaCucoPut(from_stack_1v)
  loc_A03678: LitVar_Missing var_A4
  loc_A0367B: PopAdLdVar
  loc_A0367C: LitVarI4
  loc_A03684: PopAdLdVar
  loc_A03685: ImpAdLdRf MemVar_C3D6C0
  loc_A03688: NewIfNullPr bscCuentaContable
  loc_A0368B: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_A03690: FLdRfVar var_AC
  loc_A03693: FLdRfVar var_A8
  loc_A03696: ImpAdLdRf MemVar_C3D6C0
  loc_A03699: NewIfNullPr bscCuentaContable
  loc_A0369C: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A036A1: FLdPr var_A8
  loc_A036A4: from_stack_1 = clsbase.RecordCount
  loc_A036A9: ILdRf var_AC
  loc_A036AC: LitI4 0
  loc_A036B1: GtI4
  loc_A036B2: FFree1Ad var_A8
  loc_A036B5: BranchF loc_A03790
  loc_A036B8: FLdRfVar var_C8
  loc_A036BB: FLdRfVar var_B8
  loc_A036BE: LitVarStr var_94, "CodiCuco"
  loc_A036C3: PopAdLdVar
  loc_A036C4: FLdRfVar var_B4
  loc_A036C7: FLdRfVar var_B0
  loc_A036CA: FLdRfVar var_A8
  loc_A036CD: ImpAdLdRf MemVar_C3D6C0
  loc_A036D0: NewIfNullPr bscCuentaContable
  loc_A036D3: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A036D8: FLdPr var_A8
  loc_A036DB: from_stack_1v = clsbase.RsFrmGet()
  loc_A036E0: FLdPr var_B0
  loc_A036E3:  = Me.Fields
  loc_A036E8: FLdPr var_B4
  loc_A036EB: from_stack_2 = Me.Item(from_stack_1)
  loc_A036F0: FLdPr var_B8
  loc_A036F3:  = Me.Value
  loc_A036F8: FLdRfVar var_C8
  loc_A036FB: CStrVarTmp
  loc_A036FC: CVarStr var_D8
  loc_A036FF: PopAdLdVar
  loc_A03700: FLdPr Me
  loc_A03703: VCallAd Control_ID_CodiCucoMsk
  loc_A03706: FStAdFunc var_DC
  loc_A03709: FLdPr var_DC
  loc_A0370C: LateIdSt
  loc_A03711: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A0371E: FFreeVar var_C8 = ""
  loc_A03725: FLdRfVar var_C8
  loc_A03728: FLdRfVar var_B8
  loc_A0372B: LitVarStr var_94, "DetaCuco"
  loc_A03730: PopAdLdVar
  loc_A03731: FLdRfVar var_B4
  loc_A03734: FLdRfVar var_B0
  loc_A03737: FLdRfVar var_A8
  loc_A0373A: ImpAdLdRf MemVar_C3D6C0
  loc_A0373D: NewIfNullPr bscCuentaContable
  loc_A03740: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A03745: FLdPr var_A8
  loc_A03748: from_stack_1v = clsbase.RsFrmGet()
  loc_A0374D: FLdPr var_B0
  loc_A03750:  = Me.Fields
  loc_A03755: FLdPr var_B4
  loc_A03758: from_stack_2 = Me.Item(from_stack_1)
  loc_A0375D: FLdPr var_B8
  loc_A03760:  = Me.Value
  loc_A03765: FLdRfVar var_C8
  loc_A03768: CStrVarTmp
  loc_A03769: FStStrNoPop var_E0
  loc_A0376C: FLdPr Me
  loc_A0376F: VCallAd Control_ID_DetaCucoLbl
  loc_A03772: FStAdFunc var_DC
  loc_A03775: FLdPr var_DC
  loc_A03778: Me.Caption = from_stack_1
  loc_A0377D: FFree1Str var_E0
  loc_A03780: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A0378D: FFree1Var var_C8 = ""
  loc_A03790: ExitProcHresult
  loc_A03791: ImpAdLdRf MemVar_4203DC
End Sub

Private Sub DetaDebiTxt_GotFocus() '950610
  'Data Table: 4E878C
  loc_9505FC: FLdPr Me
  loc_9505FF: VCallAd Control_ID_DetaDebiTxt
  loc_950602: CVarAd
  loc_950606: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95060B: FFree1Var var_94 = ""
  loc_95060E: ExitProcHresult
End Sub

Private Sub DetaDebiTxt_Validate(Cancel As Boolean) '9BA948
  'Data Table: 4E878C
  loc_9BA894: FLdRfVar var_8A
  loc_9BA897: FLdPr Me
  loc_9BA89A: VCallAd Control_ID_cmdCancelar
  loc_9BA89D: FStAdFunc var_88
  loc_9BA8A0: FLdPr var_88
  loc_9BA8A3:  = Me.Value
  loc_9BA8A8: FLdI2 var_8A
  loc_9BA8AB: NotI4
  loc_9BA8AC: FLdRfVar var_92
  loc_9BA8AF: FLdPr Me
  loc_9BA8B2: VCallAd Control_ID_DetaDebiTxt
  loc_9BA8B5: FStAdFunc var_90
  loc_9BA8B8: FLdPr var_90
  loc_9BA8BB:  = Me.Enabled
  loc_9BA8C0: FLdI2 var_92
  loc_9BA8C3: AndI4
  loc_9BA8C4: FFreeAd var_88 = ""
  loc_9BA8CB: BranchF loc_9BA945
  loc_9BA8CE: FLdRfVar var_98
  loc_9BA8D1: FLdPr Me
  loc_9BA8D4: VCallAd Control_ID_DetaDebiTxt
  loc_9BA8D7: FStAdFunc var_88
  loc_9BA8DA: FLdPr var_88
  loc_9BA8DD:  = Me.Text
  loc_9BA8E2: LitI2_Byte 0
  loc_9BA8E4: PopTmpLdAd2 var_9A
  loc_9BA8E7: LitI2_Byte 0
  loc_9BA8E9: PopTmpLdAd2 var_92
  loc_9BA8EC: LitI2_Byte 0
  loc_9BA8EE: PopTmpLdAd2 var_8A
  loc_9BA8F1: ILdRf var_98
  loc_9BA8F4: LitStr "Detalle"
  loc_9BA8F7: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BA8FC: FStStrNoPop var_A0
  loc_9BA8FF: FLdPr Me
  loc_9BA902: MemStStrCopy
  loc_9BA906: FFreeStr var_98 = ""
  loc_9BA90D: FFree1Ad var_88
  loc_9BA910: FLdPr Me
  loc_9BA913: MemLdStr global_68
  loc_9BA916: LitStr vbNullString
  loc_9BA919: NeStr
  loc_9BA91B: BranchF loc_9BA945
  loc_9BA91E: LitI4 0
  loc_9BA923: FLdPr Me
  loc_9BA926: MemLdStr global_68
  loc_9BA929: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9BA92E: FLdPr Me
  loc_9BA931: VCallAd Control_ID_DetaDebiTxt
  loc_9BA934: CVarAd
  loc_9BA938: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9BA93D: FFree1Var var_B0 = ""
  loc_9BA940: LitI2_Byte &HFF
  loc_9BA942: IStI2 Cancel
  loc_9BA945: ExitProcHresult
  loc_9BA946: FStFPR8 arg_14FF
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95506C
  'Data Table: 4E878C
  loc_955054: FLdPr Me
  loc_955057: VCallAd Control_ID_dgdABMS
  loc_95505A: FStAdFunc var_88
  loc_95505D: FLdRfVar var_88
  loc_955060: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_955065: FFree1Ad var_88
  loc_955068: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '959BD4
  'Data Table: 4E878C
  loc_959BBC: FLdPr Me
  loc_959BBF: VCallAd Control_ID_dgdABMS
  loc_959BC2: FStAdFunc var_88
  loc_959BC5: FLdRfVar var_88
  loc_959BC8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_959BCD: FFree1Ad var_88
  loc_959BD0: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A188
  'Data Table: 4E878C
  loc_99A12C: FLdRfVar var_B4
  loc_99A12F: FLdRfVar var_B0
  loc_99A132: FLdI2 ColIndex
  loc_99A135: CVarI2 var_A8
  loc_99A138: PopAdLdVar
  loc_99A139: FLdPr Me
  loc_99A13C: VCallAd Control_ID_dgdABMS
  loc_99A13F: FStAdFunc var_88
  loc_99A142: FLdPr var_88
  loc_99A145: LateIdLdVar var_98 DispID_105 0
  loc_99A14C: CastAdVar Me
  loc_99A150: FStAdFunc var_AC
  loc_99A153: FLdPr var_AC
  loc_99A156: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A15B: FLdPr var_B0
  loc_99A15E:  = Me.DataField
  loc_99A163: FLdZeroAd var_B4
  loc_99A166: PopTmpLdAdStr
  loc_99A16A: FLdPr Me
  loc_99A16D: MemLdRfVar from_stack_1.global_56
  loc_99A170: NewIfNullPr clsdebito
  loc_99A173: Call clsdebito.Sort(from_stack_1v)
  loc_99A178: FFree1Str var_B8
  loc_99A17B: FFreeAd var_88 = "": var_AC = ""
  loc_99A184: FFree1Var var_98 = ""
  loc_99A187: ExitProcHresult
End Sub

Private Sub FeanDebiMsk_UnknownEvent_0 '9504A8
  'Data Table: 4E878C
  loc_950494: FLdPr Me
  loc_950497: VCallAd Control_ID_FeanDebiMsk
  loc_95049A: CVarAd
  loc_95049E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9504A3: FFree1Var var_94 = ""
  loc_9504A6: ExitProcHresult
End Sub

Private Sub FeanDebiMsk_UnknownEvent_8 '9DF218
  'Data Table: 4E878C
  loc_9DF120: FLdRfVar var_8A
  loc_9DF123: FLdPr Me
  loc_9DF126: VCallAd Control_ID_cmdCancelar
  loc_9DF129: FStAdFunc var_88
  loc_9DF12C: FLdPr var_88
  loc_9DF12F:  = Me.Value
  loc_9DF134: FLdI2 var_8A
  loc_9DF137: NotI4
  loc_9DF138: FLdPr Me
  loc_9DF13B: VCallAd Control_ID_FeanDebiMsk
  loc_9DF13E: FStAdFunc var_90
  loc_9DF141: FLdPr var_90
  loc_9DF144: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DF14B: CBoolVar
  loc_9DF14D: AndI4
  loc_9DF14E: FFreeAd var_88 = ""
  loc_9DF155: FFree1Var var_A0 = ""
  loc_9DF158: BranchF loc_9DF214
  loc_9DF15B: FLdPr Me
  loc_9DF15E: VCallAd Control_ID_FeanDebiMsk
  loc_9DF161: FStAdFunc var_88
  loc_9DF164: FLdPr var_88
  loc_9DF167: LateIdLdVar var_A0 DispID_15 0
  loc_9DF16E: PopAd
  loc_9DF170: FLdPr Me
  loc_9DF173: VCallAd Control_ID_FechDebiMsk
  loc_9DF176: FStAdFunc var_90
  loc_9DF179: FLdPr var_90
  loc_9DF17C: LateIdLdVar var_B0 DispID_15 0
  loc_9DF183: PopAd
  loc_9DF185: FLdPr Me
  loc_9DF188: VCallAd Control_ID_FeanDebiMsk
  loc_9DF18B: FStAdFunc var_C4
  loc_9DF18E: LitI2_Byte &HFF
  loc_9DF190: PopTmpLdAd2 var_8A
  loc_9DF193: FLdZeroAd var_C4
  loc_9DF196: FStAdFunc var_BC
  loc_9DF199: FLdRfVar var_BC
  loc_9DF19C: FLdRfVar var_B0
  loc_9DF19F: CStrVarTmp
  loc_9DF1A0: FStStrNoPop var_B8
  loc_9DF1A3: LitI2_Byte &HFF
  loc_9DF1A5: LitI2_Byte &HFF
  loc_9DF1A7: FLdRfVar var_A0
  loc_9DF1AA: CStrVarTmp
  loc_9DF1AB: FStStrNoPop var_B4
  loc_9DF1AE: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DF1B3: FStStrNoPop var_C0
  loc_9DF1B6: FLdPr Me
  loc_9DF1B9: MemStStrCopy
  loc_9DF1BD: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DF1C6: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DF1D1: FFreeVar var_A0 = ""
  loc_9DF1D8: FLdPr Me
  loc_9DF1DB: VCallAd Control_ID_FeanDebiMsk
  loc_9DF1DE: FStAdFunc var_C4
  loc_9DF1E1: LitNothing
  loc_9DF1E3: CastAd
  loc_9DF1E6: FStAdFunc var_BC
  loc_9DF1E9: FLdRfVar var_BC
  loc_9DF1EC: FLdZeroAd var_C4
  loc_9DF1EF: FStAdFuncNoPop
  loc_9DF1F2: CastAd
  loc_9DF1F5: FStAdFunc var_90
  loc_9DF1F8: FLdRfVar var_90
  loc_9DF1FB: FLdPr Me
  loc_9DF1FE: MemLdRfVar from_stack_1.global_68
  loc_9DF201: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DF206: IStI2 ColIndex
  loc_9DF209: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DF214: ExitProcHresult
End Sub

Private Sub FeanDebiMsk_KeyPress(KeyAscii As Integer) '9862A8
  'Data Table: 4E878C
  loc_986264: ILdI2 KeyAscii
  loc_986267: CI4UI1
  loc_986268: LitI4 &H20
  loc_98626D: EqI4
  loc_98626E: BranchF loc_9862A4
  loc_986271: LitVar_Missing var_A4
  loc_986274: PopAdLdVar
  loc_986275: LitVarI4
  loc_98627D: PopAdLdVar
  loc_98627E: ImpAdLdRf MemVar_C3D9A8
  loc_986281: NewIfNullPr frmCalendario
  loc_986284: frmCalendario.Show from_stack_1, from_stack_2
  loc_986289: ImpAdLdRf MemVar_C3D038
  loc_98628C: CDargRef
  loc_986290: FLdPr Me
  loc_986293: VCallAd Control_ID_FeanDebiMsk
  loc_986296: FStAdFunc var_A8
  loc_986299: FLdPr var_A8
  loc_98629C: LateIdSt
  loc_9862A1: FFree1Ad var_A8
  loc_9862A4: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '950658
  'Data Table: 4E878C
  loc_950644: FLdPr Me
  loc_950647: VCallAd Control_ID_CucuPersTxt
  loc_95064A: CVarAd
  loc_95064E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950653: FFree1Var var_94 = ""
  loc_950656: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) '9A42D0
  'Data Table: 4E878C
  loc_9A4260: FLdPr Me
  loc_9A4263: VCallAd Control_ID_NumeOrpaMsk
  loc_9A4266: FStAdFunc var_88
  loc_9A4269: FLdPr var_88
  loc_9A426C: LateIdLdVar var_98 DispID_22 0
  loc_9A4273: CStrVarTmp
  loc_9A4274: FStStrNoPop var_9C
  loc_9A4277: LitStr vbNullString
  loc_9A427A: EqStr
  loc_9A427C: FLdPr Me
  loc_9A427F: VCallAd Control_ID_NumeOrpaMsk
  loc_9A4282: FStAdFunc var_A0
  loc_9A4285: FLdPr var_A0
  loc_9A4288: LateIdLdVar var_B0 DispID_22 0
  loc_9A428F: CStrVarTmp
  loc_9A4290: FStStrNoPop var_B4
  loc_9A4293: LitStr "0"
  loc_9A4296: EqStr
  loc_9A4298: OrI4
  loc_9A4299: FFreeStr var_9C = ""
  loc_9A42A0: FFreeAd var_88 = ""
  loc_9A42A7: FFreeVar var_98 = ""
  loc_9A42AE: BranchF loc_9A42B4
  loc_9A42B1: Branch loc_9A42CF
  loc_9A42B4: LitI2_Byte 0
  loc_9A42B6: IStI2 KeyAscii
  loc_9A42B9: LitI2_Byte 0
  loc_9A42BB: FLdPr Me
  loc_9A42BE: VCallAd Control_ID_CucuPersTxt
  loc_9A42C1: FStAdFunc var_88
  loc_9A42C4: FLdPr var_88
  loc_9A42C7: Me.Enabled = from_stack_1b
  loc_9A42CC: FFree1Ad var_88
  loc_9A42CF: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A2D6A0
  'Data Table: 4E878C
  loc_A2D4C4: FLdPr Me
  loc_A2D4C7: VCallAd Control_ID_NumeOrpaMsk
  loc_A2D4CA: FStAdFunc var_88
  loc_A2D4CD: FLdPr var_88
  loc_A2D4D0: LateIdLdVar var_98 DispID_22 0
  loc_A2D4D7: CStrVarTmp
  loc_A2D4D8: FStStrNoPop var_9C
  loc_A2D4DB: LitStr vbNullString
  loc_A2D4DE: EqStr
  loc_A2D4E0: FLdPr Me
  loc_A2D4E3: VCallAd Control_ID_NumeOrpaMsk
  loc_A2D4E6: FStAdFunc var_A0
  loc_A2D4E9: FLdPr var_A0
  loc_A2D4EC: LateIdLdVar var_B0 DispID_22 0
  loc_A2D4F3: CStrVarTmp
  loc_A2D4F4: FStStrNoPop var_B4
  loc_A2D4F7: LitStr "0"
  loc_A2D4FA: EqStr
  loc_A2D4FC: OrI4
  loc_A2D4FD: FFreeStr var_9C = ""
  loc_A2D504: FFreeAd var_88 = ""
  loc_A2D50B: FFreeVar var_98 = ""
  loc_A2D512: BranchF loc_A2D678
  loc_A2D515: ILdI2 Shift
  loc_A2D518: CI4UI1
  loc_A2D519: LitI4 2
  loc_A2D51E: EqI4
  loc_A2D51F: ILdI2 KeyCode
  loc_A2D522: CI4UI1
  loc_A2D523: LitI4 &H42
  loc_A2D528: EqI4
  loc_A2D529: AndI4
  loc_A2D52A: BranchF loc_A2D675
  loc_A2D52D: LitI2_Byte 0
  loc_A2D52F: ImpAdLdRf MemVar_C3D74C
  loc_A2D532: NewIfNullPr bscProveedor
  loc_A2D535: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A2D53A: LitNothing
  loc_A2D53C: CastAd
  loc_A2D53F: FStAdFuncNoPop
  loc_A2D542: FLdRfVar var_88
  loc_A2D545: ImpAdLdRf MemVar_C3D74C
  loc_A2D548: NewIfNullPr bscProveedor
  loc_A2D54B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A2D550: FLdPr var_88
  loc_A2D553: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A2D558: FFreeAd var_A0 = ""
  loc_A2D55F: LitVar_Missing var_D4
  loc_A2D562: PopAdLdVar
  loc_A2D563: LitVarI4
  loc_A2D56B: PopAdLdVar
  loc_A2D56C: ImpAdLdRf MemVar_C3D74C
  loc_A2D56F: NewIfNullPr bscProveedor
  loc_A2D572: bscProveedor.Show from_stack_1, from_stack_2
  loc_A2D577: FLdRfVar var_D8
  loc_A2D57A: FLdRfVar var_88
  loc_A2D57D: ImpAdLdRf MemVar_C3D74C
  loc_A2D580: NewIfNullPr bscProveedor
  loc_A2D583: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A2D588: FLdPr var_88
  loc_A2D58B: from_stack_1 = clsbase.RecordCount
  loc_A2D590: ILdRf var_D8
  loc_A2D593: LitI4 0
  loc_A2D598: GtI4
  loc_A2D599: FFree1Ad var_88
  loc_A2D59C: BranchF loc_A2D675
  loc_A2D59F: FLdRfVar var_98
  loc_A2D5A2: FLdRfVar var_E0
  loc_A2D5A5: LitVarStr var_C4, "CucuPers"
  loc_A2D5AA: PopAdLdVar
  loc_A2D5AB: FLdRfVar var_DC
  loc_A2D5AE: FLdRfVar var_A0
  loc_A2D5B1: FLdRfVar var_88
  loc_A2D5B4: ImpAdLdRf MemVar_C3D74C
  loc_A2D5B7: NewIfNullPr bscProveedor
  loc_A2D5BA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A2D5BF: FLdPr var_88
  loc_A2D5C2: from_stack_1v = clsbase.RsFrmGet()
  loc_A2D5C7: FLdPr var_A0
  loc_A2D5CA:  = Me.Fields
  loc_A2D5CF: FLdPr var_DC
  loc_A2D5D2: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D5D7: FLdPr var_E0
  loc_A2D5DA:  = Me.Value
  loc_A2D5DF: FLdRfVar var_98
  loc_A2D5E2: CStrVarTmp
  loc_A2D5E3: FStStrNoPop var_9C
  loc_A2D5E6: FLdPr Me
  loc_A2D5E9: VCallAd Control_ID_CucuPersTxt
  loc_A2D5EC: FStAdFunc var_E4
  loc_A2D5EF: FLdPr var_E4
  loc_A2D5F2: Me.Text = from_stack_1
  loc_A2D5F7: FFree1Str var_9C
  loc_A2D5FA: FFreeAd var_88 = "": var_A0 = "": var_DC = "": var_E0 = ""
  loc_A2D607: FFree1Var var_98 = ""
  loc_A2D60A: FLdRfVar var_98
  loc_A2D60D: FLdRfVar var_E0
  loc_A2D610: LitVarStr var_C4, "DetaProv"
  loc_A2D615: PopAdLdVar
  loc_A2D616: FLdRfVar var_DC
  loc_A2D619: FLdRfVar var_A0
  loc_A2D61C: FLdRfVar var_88
  loc_A2D61F: ImpAdLdRf MemVar_C3D74C
  loc_A2D622: NewIfNullPr bscProveedor
  loc_A2D625: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A2D62A: FLdPr var_88
  loc_A2D62D: from_stack_1v = clsbase.RsFrmGet()
  loc_A2D632: FLdPr var_A0
  loc_A2D635:  = Me.Fields
  loc_A2D63A: FLdPr var_DC
  loc_A2D63D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D642: FLdPr var_E0
  loc_A2D645:  = Me.Value
  loc_A2D64A: FLdRfVar var_98
  loc_A2D64D: CStrVarTmp
  loc_A2D64E: FStStrNoPop var_9C
  loc_A2D651: FLdPr Me
  loc_A2D654: VCallAd Control_ID_DetaProvLbl
  loc_A2D657: FStAdFunc var_E4
  loc_A2D65A: FLdPr var_E4
  loc_A2D65D: Me.Caption = from_stack_1
  loc_A2D662: FFree1Str var_9C
  loc_A2D665: FFreeAd var_88 = "": var_A0 = "": var_DC = "": var_E0 = ""
  loc_A2D672: FFree1Var var_98 = ""
  loc_A2D675: Branch loc_A2D69C
  loc_A2D678: ILdI2 KeyCode
  loc_A2D67B: LitI2_Byte 0
  loc_A2D67D: NeI2
  loc_A2D67E: BranchF loc_A2D686
  loc_A2D681: LitI2_Byte 0
  loc_A2D683: IStI2 KeyCode
  loc_A2D686: LitI2_Byte 0
  loc_A2D688: FLdPr Me
  loc_A2D68B: VCallAd Control_ID_CucuPersTxt
  loc_A2D68E: FStAdFunc var_88
  loc_A2D691: FLdPr var_88
  loc_A2D694: Me.Enabled = from_stack_1b
  loc_A2D699: FFree1Ad var_88
  loc_A2D69C: ExitProcHresult
  loc_A2D69D: CExtInstUnk
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B5CAB0
  'Data Table: 4E878C
  loc_B5BF8C: FLdRfVar var_8A
  loc_B5BF8F: FLdPr Me
  loc_B5BF92: VCallAd Control_ID_cmdCancelar
  loc_B5BF95: FStAdFunc var_88
  loc_B5BF98: FLdPr var_88
  loc_B5BF9B:  = Me.Value
  loc_B5BFA0: FLdI2 var_8A
  loc_B5BFA3: NotI4
  loc_B5BFA4: FLdRfVar var_92
  loc_B5BFA7: FLdPr Me
  loc_B5BFAA: VCallAd Control_ID_CucuPersTxt
  loc_B5BFAD: FStAdFunc var_90
  loc_B5BFB0: FLdPr var_90
  loc_B5BFB3:  = Me.Enabled
  loc_B5BFB8: FLdI2 var_92
  loc_B5BFBB: AndI4
  loc_B5BFBC: FFreeAd var_88 = ""
  loc_B5BFC3: BranchF loc_B5CAAF
  loc_B5BFC6: FLdRfVar var_98
  loc_B5BFC9: FLdPr Me
  loc_B5BFCC: VCallAd Control_ID_CucuPersTxt
  loc_B5BFCF: FStAdFunc var_88
  loc_B5BFD2: FLdPr var_88
  loc_B5BFD5:  = Me.Text
  loc_B5BFDA: ILdRf var_98
  loc_B5BFDD: ImpAdCallI2 Trim$()
  loc_B5BFE2: FStStrNoPop var_9C
  loc_B5BFE5: LitStr vbNullString
  loc_B5BFE8: NeStr
  loc_B5BFEA: FFreeStr var_98 = ""
  loc_B5BFF1: FFree1Ad var_88
  loc_B5BFF4: BranchF loc_B5C882
  loc_B5BFF7: FLdPr Me
  loc_B5BFFA: VCallAd Control_ID_CucuPersTxt
  loc_B5BFFD: FStAdFunc var_88
  loc_B5C000: FLdRfVar var_88
  loc_B5C003: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B5C008: FFree1Ad var_88
  loc_B5C00B: BranchF loc_B5C448
  loc_B5C00E: LitStr " AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B5C011: FLdRfVar var_98
  loc_B5C014: FLdPr Me
  loc_B5C017: VCallAd Control_ID_CucuPersTxt
  loc_B5C01A: FStAdFunc var_88
  loc_B5C01D: FLdPr var_88
  loc_B5C020:  = Me.Text
  loc_B5C025: ILdRf var_98
  loc_B5C028: ConcatStr
  loc_B5C029: FStStrNoPop var_9C
  loc_B5C02C: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B5C02F: ConcatStr
  loc_B5C030: FStStrNoPop var_A0
  loc_B5C033: ImpAdLdRf MemVar_C3D74C
  loc_B5C036: NewIfNullPr bscProveedor
  loc_B5C039: Call bscProveedor.Constructor(from_stack_1v)
  loc_B5C03E: FFreeStr var_98 = "": var_9C = ""
  loc_B5C047: FFree1Ad var_88
  loc_B5C04A: FLdRfVar var_A4
  loc_B5C04D: FLdRfVar var_90
  loc_B5C050: FLdRfVar var_88
  loc_B5C053: ImpAdLdRf MemVar_C3D74C
  loc_B5C056: NewIfNullPr bscProveedor
  loc_B5C059: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C05E: FLdPr var_88
  loc_B5C061: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C066: FLdPr var_90
  loc_B5C069:  = Me.RecordCount
  loc_B5C06E: ILdRf var_A4
  loc_B5C071: LitI4 1
  loc_B5C076: EqI4
  loc_B5C077: FFreeAd var_88 = ""
  loc_B5C07E: BranchF loc_B5C1A1
  loc_B5C081: FLdRfVar var_CC
  loc_B5C084: FLdRfVar var_BC
  loc_B5C087: LitVarStr var_B8, "CucuPers"
  loc_B5C08C: PopAdLdVar
  loc_B5C08D: FLdRfVar var_A8
  loc_B5C090: FLdRfVar var_90
  loc_B5C093: FLdRfVar var_88
  loc_B5C096: ImpAdLdRf MemVar_C3D74C
  loc_B5C099: NewIfNullPr bscProveedor
  loc_B5C09C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C0A1: FLdPr var_88
  loc_B5C0A4: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C0A9: FLdPr var_90
  loc_B5C0AC:  = Me.Fields
  loc_B5C0B1: FLdPr var_A8
  loc_B5C0B4: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C0B9: FLdPr var_BC
  loc_B5C0BC:  = Me.Value
  loc_B5C0C1: FLdRfVar var_CC
  loc_B5C0C4: CStrVarTmp
  loc_B5C0C5: FStStrNoPop var_98
  loc_B5C0C8: FLdPr Me
  loc_B5C0CB: VCallAd Control_ID_CucuPersTxt
  loc_B5C0CE: FStAdFunc var_D0
  loc_B5C0D1: FLdPr var_D0
  loc_B5C0D4: Me.Text = from_stack_1
  loc_B5C0D9: FFree1Str var_98
  loc_B5C0DC: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C0E9: FFree1Var var_CC = ""
  loc_B5C0EC: FLdRfVar var_CC
  loc_B5C0EF: FLdRfVar var_BC
  loc_B5C0F2: LitVarStr var_B8, "DetaProv"
  loc_B5C0F7: PopAdLdVar
  loc_B5C0F8: FLdRfVar var_A8
  loc_B5C0FB: FLdRfVar var_90
  loc_B5C0FE: FLdRfVar var_88
  loc_B5C101: ImpAdLdRf MemVar_C3D74C
  loc_B5C104: NewIfNullPr bscProveedor
  loc_B5C107: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C10C: FLdPr var_88
  loc_B5C10F: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C114: FLdPr var_90
  loc_B5C117:  = Me.Fields
  loc_B5C11C: FLdPr var_A8
  loc_B5C11F: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C124: FLdPr var_BC
  loc_B5C127:  = Me.Value
  loc_B5C12C: FLdRfVar var_CC
  loc_B5C12F: CStrVarTmp
  loc_B5C130: FStStrNoPop var_98
  loc_B5C133: FLdPr Me
  loc_B5C136: VCallAd Control_ID_DetaProvLbl
  loc_B5C139: FStAdFunc var_D0
  loc_B5C13C: FLdPr var_D0
  loc_B5C13F: Me.Caption = from_stack_1
  loc_B5C144: FFree1Str var_98
  loc_B5C147: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C154: FFree1Var var_CC = ""
  loc_B5C157: LitStr vbNullString
  loc_B5C15A: FLdPr Me
  loc_B5C15D: MemStStrCopy
  loc_B5C161: FLdPr Me
  loc_B5C164: VCallAd Control_ID_CucuPersTxt
  loc_B5C167: FStAdFunc var_BC
  loc_B5C16A: FLdPr Me
  loc_B5C16D: VCallAd Control_ID_DetaProvLbl
  loc_B5C170: FStAdFunc var_A8
  loc_B5C173: FLdRfVar var_A8
  loc_B5C176: FLdZeroAd var_BC
  loc_B5C179: FStAdFuncNoPop
  loc_B5C17C: CastAd
  loc_B5C17F: FStAdFunc var_90
  loc_B5C182: FLdRfVar var_90
  loc_B5C185: FLdPr Me
  loc_B5C188: MemLdRfVar from_stack_1.global_68
  loc_B5C18B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5C190: IStI2 Cancel
  loc_B5C193: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5C19E: Branch loc_B5C445
  loc_B5C1A1: FLdRfVar var_A4
  loc_B5C1A4: FLdRfVar var_90
  loc_B5C1A7: FLdRfVar var_88
  loc_B5C1AA: ImpAdLdRf MemVar_C3D74C
  loc_B5C1AD: NewIfNullPr bscProveedor
  loc_B5C1B0: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C1B5: FLdPr var_88
  loc_B5C1B8: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C1BD: FLdPr var_90
  loc_B5C1C0:  = Me.RecordCount
  loc_B5C1C5: ILdRf var_A4
  loc_B5C1C8: LitI4 1
  loc_B5C1CD: GtI4
  loc_B5C1CE: FFreeAd var_88 = ""
  loc_B5C1D5: BranchF loc_B5C3B0
  loc_B5C1D8: LitVar_Missing var_E0
  loc_B5C1DB: PopAdLdVar
  loc_B5C1DC: LitVarI4
  loc_B5C1E4: PopAdLdVar
  loc_B5C1E5: ImpAdLdRf MemVar_C3D74C
  loc_B5C1E8: NewIfNullPr bscProveedor
  loc_B5C1EB: bscProveedor.Show from_stack_1, from_stack_2
  loc_B5C1F0: FLdRfVar var_A4
  loc_B5C1F3: FLdRfVar var_88
  loc_B5C1F6: ImpAdLdRf MemVar_C3D74C
  loc_B5C1F9: NewIfNullPr bscProveedor
  loc_B5C1FC: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C201: FLdPr var_88
  loc_B5C204: from_stack_1 = clsbase.RecordCount
  loc_B5C209: ILdRf var_A4
  loc_B5C20C: LitI4 0
  loc_B5C211: GtI4
  loc_B5C212: FFree1Ad var_88
  loc_B5C215: BranchF loc_B5C338
  loc_B5C218: FLdRfVar var_CC
  loc_B5C21B: FLdRfVar var_BC
  loc_B5C21E: LitVarStr var_B8, "CucuPers"
  loc_B5C223: PopAdLdVar
  loc_B5C224: FLdRfVar var_A8
  loc_B5C227: FLdRfVar var_90
  loc_B5C22A: FLdRfVar var_88
  loc_B5C22D: ImpAdLdRf MemVar_C3D74C
  loc_B5C230: NewIfNullPr bscProveedor
  loc_B5C233: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C238: FLdPr var_88
  loc_B5C23B: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C240: FLdPr var_90
  loc_B5C243:  = Me.Fields
  loc_B5C248: FLdPr var_A8
  loc_B5C24B: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C250: FLdPr var_BC
  loc_B5C253:  = Me.Value
  loc_B5C258: FLdRfVar var_CC
  loc_B5C25B: CStrVarTmp
  loc_B5C25C: FStStrNoPop var_98
  loc_B5C25F: FLdPr Me
  loc_B5C262: VCallAd Control_ID_CucuPersTxt
  loc_B5C265: FStAdFunc var_D0
  loc_B5C268: FLdPr var_D0
  loc_B5C26B: Me.Text = from_stack_1
  loc_B5C270: FFree1Str var_98
  loc_B5C273: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C280: FFree1Var var_CC = ""
  loc_B5C283: FLdRfVar var_CC
  loc_B5C286: FLdRfVar var_BC
  loc_B5C289: LitVarStr var_B8, "DetaProv"
  loc_B5C28E: PopAdLdVar
  loc_B5C28F: FLdRfVar var_A8
  loc_B5C292: FLdRfVar var_90
  loc_B5C295: FLdRfVar var_88
  loc_B5C298: ImpAdLdRf MemVar_C3D74C
  loc_B5C29B: NewIfNullPr bscProveedor
  loc_B5C29E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C2A3: FLdPr var_88
  loc_B5C2A6: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C2AB: FLdPr var_90
  loc_B5C2AE:  = Me.Fields
  loc_B5C2B3: FLdPr var_A8
  loc_B5C2B6: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C2BB: FLdPr var_BC
  loc_B5C2BE:  = Me.Value
  loc_B5C2C3: FLdRfVar var_CC
  loc_B5C2C6: CStrVarTmp
  loc_B5C2C7: FStStrNoPop var_98
  loc_B5C2CA: FLdPr Me
  loc_B5C2CD: VCallAd Control_ID_DetaProvLbl
  loc_B5C2D0: FStAdFunc var_D0
  loc_B5C2D3: FLdPr var_D0
  loc_B5C2D6: Me.Caption = from_stack_1
  loc_B5C2DB: FFree1Str var_98
  loc_B5C2DE: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C2EB: FFree1Var var_CC = ""
  loc_B5C2EE: LitStr vbNullString
  loc_B5C2F1: FLdPr Me
  loc_B5C2F4: MemStStrCopy
  loc_B5C2F8: FLdPr Me
  loc_B5C2FB: VCallAd Control_ID_CucuPersTxt
  loc_B5C2FE: FStAdFunc var_BC
  loc_B5C301: FLdPr Me
  loc_B5C304: VCallAd Control_ID_DetaProvLbl
  loc_B5C307: FStAdFunc var_A8
  loc_B5C30A: FLdRfVar var_A8
  loc_B5C30D: FLdZeroAd var_BC
  loc_B5C310: FStAdFuncNoPop
  loc_B5C313: CastAd
  loc_B5C316: FStAdFunc var_90
  loc_B5C319: FLdRfVar var_90
  loc_B5C31C: FLdPr Me
  loc_B5C31F: MemLdRfVar from_stack_1.global_68
  loc_B5C322: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5C327: IStI2 Cancel
  loc_B5C32A: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5C335: Branch loc_B5C3AD
  loc_B5C338: LitStr vbNullString
  loc_B5C33B: FLdPr Me
  loc_B5C33E: VCallAd Control_ID_CucuPersTxt
  loc_B5C341: FStAdFunc var_88
  loc_B5C344: FLdPr var_88
  loc_B5C347: Me.Text = from_stack_1
  loc_B5C34C: FFree1Ad var_88
  loc_B5C34F: LitStr vbNullString
  loc_B5C352: FLdPr Me
  loc_B5C355: VCallAd Control_ID_DetaProvLbl
  loc_B5C358: FStAdFunc var_88
  loc_B5C35B: FLdPr var_88
  loc_B5C35E: Me.Caption = from_stack_1
  loc_B5C363: FFree1Ad var_88
  loc_B5C366: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B5C369: FLdPr Me
  loc_B5C36C: MemStStrCopy
  loc_B5C370: FLdPr Me
  loc_B5C373: VCallAd Control_ID_CucuPersTxt
  loc_B5C376: FStAdFunc var_BC
  loc_B5C379: FLdPr Me
  loc_B5C37C: VCallAd Control_ID_DetaProvLbl
  loc_B5C37F: FStAdFunc var_A8
  loc_B5C382: FLdRfVar var_A8
  loc_B5C385: FLdZeroAd var_BC
  loc_B5C388: FStAdFuncNoPop
  loc_B5C38B: CastAd
  loc_B5C38E: FStAdFunc var_90
  loc_B5C391: FLdRfVar var_90
  loc_B5C394: FLdPr Me
  loc_B5C397: MemLdRfVar from_stack_1.global_68
  loc_B5C39A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5C39F: IStI2 Cancel
  loc_B5C3A2: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5C3AD: Branch loc_B5C445
  loc_B5C3B0: FLdRfVar var_A4
  loc_B5C3B3: FLdRfVar var_90
  loc_B5C3B6: FLdRfVar var_88
  loc_B5C3B9: ImpAdLdRf MemVar_C3D74C
  loc_B5C3BC: NewIfNullPr bscProveedor
  loc_B5C3BF: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C3C4: FLdPr var_88
  loc_B5C3C7: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C3CC: FLdPr var_90
  loc_B5C3CF:  = Me.RecordCount
  loc_B5C3D4: ILdRf var_A4
  loc_B5C3D7: LitI4 1
  loc_B5C3DC: LtI4
  loc_B5C3DD: FFreeAd var_88 = ""
  loc_B5C3E4: BranchF loc_B5C445
  loc_B5C3E7: LitStr vbNullString
  loc_B5C3EA: FLdPr Me
  loc_B5C3ED: VCallAd Control_ID_DetaProvLbl
  loc_B5C3F0: FStAdFunc var_88
  loc_B5C3F3: FLdPr var_88
  loc_B5C3F6: Me.Caption = from_stack_1
  loc_B5C3FB: FFree1Ad var_88
  loc_B5C3FE: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B5C401: FLdPr Me
  loc_B5C404: MemStStrCopy
  loc_B5C408: FLdPr Me
  loc_B5C40B: VCallAd Control_ID_CucuPersTxt
  loc_B5C40E: FStAdFunc var_BC
  loc_B5C411: FLdPr Me
  loc_B5C414: VCallAd Control_ID_DetaProvLbl
  loc_B5C417: FStAdFunc var_A8
  loc_B5C41A: FLdRfVar var_A8
  loc_B5C41D: FLdZeroAd var_BC
  loc_B5C420: FStAdFuncNoPop
  loc_B5C423: CastAd
  loc_B5C426: FStAdFunc var_90
  loc_B5C429: FLdRfVar var_90
  loc_B5C42C: FLdPr Me
  loc_B5C42F: MemLdRfVar from_stack_1.global_68
  loc_B5C432: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5C437: IStI2 Cancel
  loc_B5C43A: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5C445: Branch loc_B5C87F
  loc_B5C448: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B5C44B: FLdRfVar var_98
  loc_B5C44E: FLdPr Me
  loc_B5C451: VCallAd Control_ID_CucuPersTxt
  loc_B5C454: FStAdFunc var_88
  loc_B5C457: FLdPr var_88
  loc_B5C45A:  = Me.Text
  loc_B5C45F: ILdRf var_98
  loc_B5C462: ConcatStr
  loc_B5C463: FStStrNoPop var_9C
  loc_B5C466: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B5C469: ConcatStr
  loc_B5C46A: FStStrNoPop var_A0
  loc_B5C46D: ImpAdLdRf MemVar_C3D74C
  loc_B5C470: NewIfNullPr bscProveedor
  loc_B5C473: Call bscProveedor.Constructor(from_stack_1v)
  loc_B5C478: FFreeStr var_98 = "": var_9C = ""
  loc_B5C481: FFree1Ad var_88
  loc_B5C484: FLdRfVar var_A4
  loc_B5C487: FLdRfVar var_90
  loc_B5C48A: FLdRfVar var_88
  loc_B5C48D: ImpAdLdRf MemVar_C3D74C
  loc_B5C490: NewIfNullPr bscProveedor
  loc_B5C493: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C498: FLdPr var_88
  loc_B5C49B: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C4A0: FLdPr var_90
  loc_B5C4A3:  = Me.RecordCount
  loc_B5C4A8: ILdRf var_A4
  loc_B5C4AB: LitI4 1
  loc_B5C4B0: EqI4
  loc_B5C4B1: FFreeAd var_88 = ""
  loc_B5C4B8: BranchF loc_B5C5DB
  loc_B5C4BB: FLdRfVar var_CC
  loc_B5C4BE: FLdRfVar var_BC
  loc_B5C4C1: LitVarStr var_B8, "CucuPers"
  loc_B5C4C6: PopAdLdVar
  loc_B5C4C7: FLdRfVar var_A8
  loc_B5C4CA: FLdRfVar var_90
  loc_B5C4CD: FLdRfVar var_88
  loc_B5C4D0: ImpAdLdRf MemVar_C3D74C
  loc_B5C4D3: NewIfNullPr bscProveedor
  loc_B5C4D6: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C4DB: FLdPr var_88
  loc_B5C4DE: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C4E3: FLdPr var_90
  loc_B5C4E6:  = Me.Fields
  loc_B5C4EB: FLdPr var_A8
  loc_B5C4EE: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C4F3: FLdPr var_BC
  loc_B5C4F6:  = Me.Value
  loc_B5C4FB: FLdRfVar var_CC
  loc_B5C4FE: CStrVarTmp
  loc_B5C4FF: FStStrNoPop var_98
  loc_B5C502: FLdPr Me
  loc_B5C505: VCallAd Control_ID_CucuPersTxt
  loc_B5C508: FStAdFunc var_D0
  loc_B5C50B: FLdPr var_D0
  loc_B5C50E: Me.Text = from_stack_1
  loc_B5C513: FFree1Str var_98
  loc_B5C516: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C523: FFree1Var var_CC = ""
  loc_B5C526: FLdRfVar var_CC
  loc_B5C529: FLdRfVar var_BC
  loc_B5C52C: LitVarStr var_B8, "DetaProv"
  loc_B5C531: PopAdLdVar
  loc_B5C532: FLdRfVar var_A8
  loc_B5C535: FLdRfVar var_90
  loc_B5C538: FLdRfVar var_88
  loc_B5C53B: ImpAdLdRf MemVar_C3D74C
  loc_B5C53E: NewIfNullPr bscProveedor
  loc_B5C541: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C546: FLdPr var_88
  loc_B5C549: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C54E: FLdPr var_90
  loc_B5C551:  = Me.Fields
  loc_B5C556: FLdPr var_A8
  loc_B5C559: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C55E: FLdPr var_BC
  loc_B5C561:  = Me.Value
  loc_B5C566: FLdRfVar var_CC
  loc_B5C569: CStrVarTmp
  loc_B5C56A: FStStrNoPop var_98
  loc_B5C56D: FLdPr Me
  loc_B5C570: VCallAd Control_ID_DetaProvLbl
  loc_B5C573: FStAdFunc var_D0
  loc_B5C576: FLdPr var_D0
  loc_B5C579: Me.Caption = from_stack_1
  loc_B5C57E: FFree1Str var_98
  loc_B5C581: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C58E: FFree1Var var_CC = ""
  loc_B5C591: LitStr vbNullString
  loc_B5C594: FLdPr Me
  loc_B5C597: MemStStrCopy
  loc_B5C59B: FLdPr Me
  loc_B5C59E: VCallAd Control_ID_CucuPersTxt
  loc_B5C5A1: FStAdFunc var_BC
  loc_B5C5A4: FLdPr Me
  loc_B5C5A7: VCallAd Control_ID_DetaProvLbl
  loc_B5C5AA: FStAdFunc var_A8
  loc_B5C5AD: FLdRfVar var_A8
  loc_B5C5B0: FLdZeroAd var_BC
  loc_B5C5B3: FStAdFuncNoPop
  loc_B5C5B6: CastAd
  loc_B5C5B9: FStAdFunc var_90
  loc_B5C5BC: FLdRfVar var_90
  loc_B5C5BF: FLdPr Me
  loc_B5C5C2: MemLdRfVar from_stack_1.global_68
  loc_B5C5C5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5C5CA: IStI2 Cancel
  loc_B5C5CD: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5C5D8: Branch loc_B5C87F
  loc_B5C5DB: FLdRfVar var_A4
  loc_B5C5DE: FLdRfVar var_90
  loc_B5C5E1: FLdRfVar var_88
  loc_B5C5E4: ImpAdLdRf MemVar_C3D74C
  loc_B5C5E7: NewIfNullPr bscProveedor
  loc_B5C5EA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C5EF: FLdPr var_88
  loc_B5C5F2: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C5F7: FLdPr var_90
  loc_B5C5FA:  = Me.RecordCount
  loc_B5C5FF: ILdRf var_A4
  loc_B5C602: LitI4 1
  loc_B5C607: GtI4
  loc_B5C608: FFreeAd var_88 = ""
  loc_B5C60F: BranchF loc_B5C7EA
  loc_B5C612: LitVar_Missing var_E0
  loc_B5C615: PopAdLdVar
  loc_B5C616: LitVarI4
  loc_B5C61E: PopAdLdVar
  loc_B5C61F: ImpAdLdRf MemVar_C3D74C
  loc_B5C622: NewIfNullPr bscProveedor
  loc_B5C625: bscProveedor.Show from_stack_1, from_stack_2
  loc_B5C62A: FLdRfVar var_A4
  loc_B5C62D: FLdRfVar var_88
  loc_B5C630: ImpAdLdRf MemVar_C3D74C
  loc_B5C633: NewIfNullPr bscProveedor
  loc_B5C636: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C63B: FLdPr var_88
  loc_B5C63E: from_stack_1 = clsbase.RecordCount
  loc_B5C643: ILdRf var_A4
  loc_B5C646: LitI4 0
  loc_B5C64B: GtI4
  loc_B5C64C: FFree1Ad var_88
  loc_B5C64F: BranchF loc_B5C772
  loc_B5C652: FLdRfVar var_CC
  loc_B5C655: FLdRfVar var_BC
  loc_B5C658: LitVarStr var_B8, "CucuPers"
  loc_B5C65D: PopAdLdVar
  loc_B5C65E: FLdRfVar var_A8
  loc_B5C661: FLdRfVar var_90
  loc_B5C664: FLdRfVar var_88
  loc_B5C667: ImpAdLdRf MemVar_C3D74C
  loc_B5C66A: NewIfNullPr bscProveedor
  loc_B5C66D: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C672: FLdPr var_88
  loc_B5C675: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C67A: FLdPr var_90
  loc_B5C67D:  = Me.Fields
  loc_B5C682: FLdPr var_A8
  loc_B5C685: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C68A: FLdPr var_BC
  loc_B5C68D:  = Me.Value
  loc_B5C692: FLdRfVar var_CC
  loc_B5C695: CStrVarTmp
  loc_B5C696: FStStrNoPop var_98
  loc_B5C699: FLdPr Me
  loc_B5C69C: VCallAd Control_ID_CucuPersTxt
  loc_B5C69F: FStAdFunc var_D0
  loc_B5C6A2: FLdPr var_D0
  loc_B5C6A5: Me.Text = from_stack_1
  loc_B5C6AA: FFree1Str var_98
  loc_B5C6AD: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C6BA: FFree1Var var_CC = ""
  loc_B5C6BD: FLdRfVar var_CC
  loc_B5C6C0: FLdRfVar var_BC
  loc_B5C6C3: LitVarStr var_B8, "DetaProv"
  loc_B5C6C8: PopAdLdVar
  loc_B5C6C9: FLdRfVar var_A8
  loc_B5C6CC: FLdRfVar var_90
  loc_B5C6CF: FLdRfVar var_88
  loc_B5C6D2: ImpAdLdRf MemVar_C3D74C
  loc_B5C6D5: NewIfNullPr bscProveedor
  loc_B5C6D8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C6DD: FLdPr var_88
  loc_B5C6E0: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C6E5: FLdPr var_90
  loc_B5C6E8:  = Me.Fields
  loc_B5C6ED: FLdPr var_A8
  loc_B5C6F0: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C6F5: FLdPr var_BC
  loc_B5C6F8:  = Me.Value
  loc_B5C6FD: FLdRfVar var_CC
  loc_B5C700: CStrVarTmp
  loc_B5C701: FStStrNoPop var_98
  loc_B5C704: FLdPr Me
  loc_B5C707: VCallAd Control_ID_DetaProvLbl
  loc_B5C70A: FStAdFunc var_D0
  loc_B5C70D: FLdPr var_D0
  loc_B5C710: Me.Caption = from_stack_1
  loc_B5C715: FFree1Str var_98
  loc_B5C718: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C725: FFree1Var var_CC = ""
  loc_B5C728: LitStr vbNullString
  loc_B5C72B: FLdPr Me
  loc_B5C72E: MemStStrCopy
  loc_B5C732: FLdPr Me
  loc_B5C735: VCallAd Control_ID_CucuPersTxt
  loc_B5C738: FStAdFunc var_BC
  loc_B5C73B: FLdPr Me
  loc_B5C73E: VCallAd Control_ID_DetaProvLbl
  loc_B5C741: FStAdFunc var_A8
  loc_B5C744: FLdRfVar var_A8
  loc_B5C747: FLdZeroAd var_BC
  loc_B5C74A: FStAdFuncNoPop
  loc_B5C74D: CastAd
  loc_B5C750: FStAdFunc var_90
  loc_B5C753: FLdRfVar var_90
  loc_B5C756: FLdPr Me
  loc_B5C759: MemLdRfVar from_stack_1.global_68
  loc_B5C75C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5C761: IStI2 Cancel
  loc_B5C764: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5C76F: Branch loc_B5C7E7
  loc_B5C772: LitStr vbNullString
  loc_B5C775: FLdPr Me
  loc_B5C778: VCallAd Control_ID_CucuPersTxt
  loc_B5C77B: FStAdFunc var_88
  loc_B5C77E: FLdPr var_88
  loc_B5C781: Me.Text = from_stack_1
  loc_B5C786: FFree1Ad var_88
  loc_B5C789: LitStr vbNullString
  loc_B5C78C: FLdPr Me
  loc_B5C78F: VCallAd Control_ID_DetaProvLbl
  loc_B5C792: FStAdFunc var_88
  loc_B5C795: FLdPr var_88
  loc_B5C798: Me.Caption = from_stack_1
  loc_B5C79D: FFree1Ad var_88
  loc_B5C7A0: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B5C7A3: FLdPr Me
  loc_B5C7A6: MemStStrCopy
  loc_B5C7AA: FLdPr Me
  loc_B5C7AD: VCallAd Control_ID_CucuPersTxt
  loc_B5C7B0: FStAdFunc var_BC
  loc_B5C7B3: FLdPr Me
  loc_B5C7B6: VCallAd Control_ID_DetaProvLbl
  loc_B5C7B9: FStAdFunc var_A8
  loc_B5C7BC: FLdRfVar var_A8
  loc_B5C7BF: FLdZeroAd var_BC
  loc_B5C7C2: FStAdFuncNoPop
  loc_B5C7C5: CastAd
  loc_B5C7C8: FStAdFunc var_90
  loc_B5C7CB: FLdRfVar var_90
  loc_B5C7CE: FLdPr Me
  loc_B5C7D1: MemLdRfVar from_stack_1.global_68
  loc_B5C7D4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5C7D9: IStI2 Cancel
  loc_B5C7DC: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5C7E7: Branch loc_B5C87F
  loc_B5C7EA: FLdRfVar var_A4
  loc_B5C7ED: FLdRfVar var_90
  loc_B5C7F0: FLdRfVar var_88
  loc_B5C7F3: ImpAdLdRf MemVar_C3D74C
  loc_B5C7F6: NewIfNullPr bscProveedor
  loc_B5C7F9: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C7FE: FLdPr var_88
  loc_B5C801: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C806: FLdPr var_90
  loc_B5C809:  = Me.RecordCount
  loc_B5C80E: ILdRf var_A4
  loc_B5C811: LitI4 1
  loc_B5C816: LtI4
  loc_B5C817: FFreeAd var_88 = ""
  loc_B5C81E: BranchF loc_B5C87F
  loc_B5C821: LitStr vbNullString
  loc_B5C824: FLdPr Me
  loc_B5C827: VCallAd Control_ID_DetaProvLbl
  loc_B5C82A: FStAdFunc var_88
  loc_B5C82D: FLdPr var_88
  loc_B5C830: Me.Caption = from_stack_1
  loc_B5C835: FFree1Ad var_88
  loc_B5C838: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B5C83B: FLdPr Me
  loc_B5C83E: MemStStrCopy
  loc_B5C842: FLdPr Me
  loc_B5C845: VCallAd Control_ID_CucuPersTxt
  loc_B5C848: FStAdFunc var_BC
  loc_B5C84B: FLdPr Me
  loc_B5C84E: VCallAd Control_ID_DetaProvLbl
  loc_B5C851: FStAdFunc var_A8
  loc_B5C854: FLdRfVar var_A8
  loc_B5C857: FLdZeroAd var_BC
  loc_B5C85A: FStAdFuncNoPop
  loc_B5C85D: CastAd
  loc_B5C860: FStAdFunc var_90
  loc_B5C863: FLdRfVar var_90
  loc_B5C866: FLdPr Me
  loc_B5C869: MemLdRfVar from_stack_1.global_68
  loc_B5C86C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5C871: IStI2 Cancel
  loc_B5C874: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5C87F: Branch loc_B5CA33
  loc_B5C882: LitI2_Byte 0
  loc_B5C884: ImpAdLdRf MemVar_C3D74C
  loc_B5C887: NewIfNullPr bscProveedor
  loc_B5C88A: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B5C88F: LitNothing
  loc_B5C891: CastAd
  loc_B5C894: FStAdFuncNoPop
  loc_B5C897: ImpAdLdRf MemVar_C3D74C
  loc_B5C89A: NewIfNullPr bscProveedor
  loc_B5C89D: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_B5C8A2: FFree1Ad var_88
  loc_B5C8A5: LitVar_Missing var_E0
  loc_B5C8A8: PopAdLdVar
  loc_B5C8A9: LitVarI4
  loc_B5C8B1: PopAdLdVar
  loc_B5C8B2: ImpAdLdRf MemVar_C3D74C
  loc_B5C8B5: NewIfNullPr bscProveedor
  loc_B5C8B8: bscProveedor.Show from_stack_1, from_stack_2
  loc_B5C8BD: FLdRfVar var_A4
  loc_B5C8C0: FLdRfVar var_88
  loc_B5C8C3: ImpAdLdRf MemVar_C3D74C
  loc_B5C8C6: NewIfNullPr bscProveedor
  loc_B5C8C9: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C8CE: FLdPr var_88
  loc_B5C8D1: from_stack_1 = clsbase.RecordCount
  loc_B5C8D6: ILdRf var_A4
  loc_B5C8D9: LitI4 0
  loc_B5C8DE: GtI4
  loc_B5C8DF: FFree1Ad var_88
  loc_B5C8E2: BranchF loc_B5C9BE
  loc_B5C8E5: FLdRfVar var_CC
  loc_B5C8E8: FLdRfVar var_BC
  loc_B5C8EB: LitVarStr var_B8, "CucuPers"
  loc_B5C8F0: PopAdLdVar
  loc_B5C8F1: FLdRfVar var_A8
  loc_B5C8F4: FLdRfVar var_90
  loc_B5C8F7: FLdRfVar var_88
  loc_B5C8FA: ImpAdLdRf MemVar_C3D74C
  loc_B5C8FD: NewIfNullPr bscProveedor
  loc_B5C900: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C905: FLdPr var_88
  loc_B5C908: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C90D: FLdPr var_90
  loc_B5C910:  = Me.Fields
  loc_B5C915: FLdPr var_A8
  loc_B5C918: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C91D: FLdPr var_BC
  loc_B5C920:  = Me.Value
  loc_B5C925: FLdRfVar var_CC
  loc_B5C928: CStrVarTmp
  loc_B5C929: FStStrNoPop var_98
  loc_B5C92C: FLdPr Me
  loc_B5C92F: VCallAd Control_ID_CucuPersTxt
  loc_B5C932: FStAdFunc var_D0
  loc_B5C935: FLdPr var_D0
  loc_B5C938: Me.Text = from_stack_1
  loc_B5C93D: FFree1Str var_98
  loc_B5C940: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C94D: FFree1Var var_CC = ""
  loc_B5C950: FLdRfVar var_CC
  loc_B5C953: FLdRfVar var_BC
  loc_B5C956: LitVarStr var_B8, "DetaProv"
  loc_B5C95B: PopAdLdVar
  loc_B5C95C: FLdRfVar var_A8
  loc_B5C95F: FLdRfVar var_90
  loc_B5C962: FLdRfVar var_88
  loc_B5C965: ImpAdLdRf MemVar_C3D74C
  loc_B5C968: NewIfNullPr bscProveedor
  loc_B5C96B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B5C970: FLdPr var_88
  loc_B5C973: from_stack_1v = clsbase.RsFrmGet()
  loc_B5C978: FLdPr var_90
  loc_B5C97B:  = Me.Fields
  loc_B5C980: FLdPr var_A8
  loc_B5C983: from_stack_2 = Me.Item(from_stack_1)
  loc_B5C988: FLdPr var_BC
  loc_B5C98B:  = Me.Value
  loc_B5C990: FLdRfVar var_CC
  loc_B5C993: CStrVarTmp
  loc_B5C994: FStStrNoPop var_98
  loc_B5C997: FLdPr Me
  loc_B5C99A: VCallAd Control_ID_DetaProvLbl
  loc_B5C99D: FStAdFunc var_D0
  loc_B5C9A0: FLdPr var_D0
  loc_B5C9A3: Me.Caption = from_stack_1
  loc_B5C9A8: FFree1Str var_98
  loc_B5C9AB: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B5C9B8: FFree1Var var_CC = ""
  loc_B5C9BB: Branch loc_B5CA33
  loc_B5C9BE: LitStr vbNullString
  loc_B5C9C1: FLdPr Me
  loc_B5C9C4: VCallAd Control_ID_CucuPersTxt
  loc_B5C9C7: FStAdFunc var_88
  loc_B5C9CA: FLdPr var_88
  loc_B5C9CD: Me.Text = from_stack_1
  loc_B5C9D2: FFree1Ad var_88
  loc_B5C9D5: LitStr vbNullString
  loc_B5C9D8: FLdPr Me
  loc_B5C9DB: VCallAd Control_ID_DetaProvLbl
  loc_B5C9DE: FStAdFunc var_88
  loc_B5C9E1: FLdPr var_88
  loc_B5C9E4: Me.Caption = from_stack_1
  loc_B5C9E9: FFree1Ad var_88
  loc_B5C9EC: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B5C9EF: FLdPr Me
  loc_B5C9F2: MemStStrCopy
  loc_B5C9F6: FLdPr Me
  loc_B5C9F9: VCallAd Control_ID_CucuPersTxt
  loc_B5C9FC: FStAdFunc var_BC
  loc_B5C9FF: FLdPr Me
  loc_B5CA02: VCallAd Control_ID_DetaProvLbl
  loc_B5CA05: FStAdFunc var_A8
  loc_B5CA08: FLdRfVar var_A8
  loc_B5CA0B: FLdZeroAd var_BC
  loc_B5CA0E: FStAdFuncNoPop
  loc_B5CA11: CastAd
  loc_B5CA14: FStAdFunc var_90
  loc_B5CA17: FLdRfVar var_90
  loc_B5CA1A: FLdPr Me
  loc_B5CA1D: MemLdRfVar from_stack_1.global_68
  loc_B5CA20: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5CA25: IStI2 Cancel
  loc_B5CA28: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5CA33: FLdRfVar var_98
  loc_B5CA36: FLdPr Me
  loc_B5CA39: VCallAd Control_ID_CucuPersTxt
  loc_B5CA3C: FStAdFunc var_88
  loc_B5CA3F: FLdPr var_88
  loc_B5CA42:  = Me.Text
  loc_B5CA47: FLdPr Me
  loc_B5CA4A: VCallAd Control_ID_ExorImpuMsk
  loc_B5CA4D: FStAdFunc var_90
  loc_B5CA50: FLdPr var_90
  loc_B5CA53: LateIdLdVar var_CC DispID_15 0
  loc_B5CA5A: PopAd
  loc_B5CA5C: FLdRfVar var_9C
  loc_B5CA5F: FLdPr Me
  loc_B5CA62: VCallAd Control_ID_ExpeImpuTxt
  loc_B5CA65: FStAdFunc var_A8
  loc_B5CA68: FLdPr var_A8
  loc_B5CA6B:  = Me.Text
  loc_B5CA70: ILdRf var_9C
  loc_B5CA73: FLdRfVar var_CC
  loc_B5CA76: CStrVarTmp
  loc_B5CA77: FStStrNoPop var_A0
  loc_B5CA7A: ILdRf var_98
  loc_B5CA7D: ImpAdCallI2 Proc_283_1_9C9B04(, , )
  loc_B5CA82: FStStrNoPop var_E4
  loc_B5CA85: FLdPr Me
  loc_B5CA88: VCallAd Control_ID_ExpeImpuTxt
  loc_B5CA8B: FStAdFunc var_BC
  loc_B5CA8E: FLdPr var_BC
  loc_B5CA91: Me.Text = from_stack_1
  loc_B5CA96: FFreeStr var_98 = "": var_A0 = "": var_9C = ""
  loc_B5CAA1: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B5CAAC: FFree1Var var_CC = ""
  loc_B5CAAF: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '950340
  'Data Table: 4E878C
  loc_95032C: FLdPr Me
  loc_95032F: VCallAd Control_ID_FiltroMsk
  loc_950332: CVarAd
  loc_950336: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95033B: FFree1Var var_94 = ""
  loc_95033E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change(arg_14) 'AB75BC
  'Data Table: 4E878C
  loc_AB7030: ILdRf Me
  loc_AB7033: CastAd
  loc_AB7036: FStAdFunc var_88
  loc_AB7039: FLdRfVar var_88
  loc_AB703C: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_AB7041: FFree1Ad var_88
  loc_AB7044: FLdPr Me
  loc_AB7047: VCallAd Control_ID_FiltroMsk
  loc_AB704A: FStAdFunc var_88
  loc_AB704D: FLdPr var_88
  loc_AB7050: LateIdLdVar var_98 DispID_22 0
  loc_AB7057: CStrVarTmp
  loc_AB7058: FStStrNoPop var_9C
  loc_AB705B: ImpAdCallI2 Trim$()
  loc_AB7060: FStStrNoPop var_A0
  loc_AB7063: LitStr vbNullString
  loc_AB7066: NeStr
  loc_AB7068: FFreeStr var_9C = ""
  loc_AB706F: FFree1Ad var_88
  loc_AB7072: FFree1Var var_98 = ""
  loc_AB7075: BranchF loc_AB7497
  loc_AB7078: FLdRfVar var_A2
  loc_AB707B: FLdPr Me
  loc_AB707E: VCallAd Control_ID_FiltroCbo
  loc_AB7081: FStAdFunc var_88
  loc_AB7084: FLdPr var_88
  loc_AB7087:  = Me.ListIndex
  loc_AB708C: FLdI2 var_A2
  loc_AB708F: LitI2_Byte 0
  loc_AB7091: EqI2
  loc_AB7092: FFree1Ad var_88
  loc_AB7095: BranchF loc_AB7107
  loc_AB7098: LitStr "NumeDebi = "
  loc_AB709B: FLdPr Me
  loc_AB709E: VCallAd Control_ID_FiltroMsk
  loc_AB70A1: FStAdFunc var_88
  loc_AB70A4: FLdPr var_88
  loc_AB70A7: LateIdLdVar var_98 DispID_22 0
  loc_AB70AE: CStrVarTmp
  loc_AB70AF: FStStrNoPop var_9C
  loc_AB70B2: ConcatStr
  loc_AB70B3: PopTmpLdAdStr
  loc_AB70B7: FLdPr Me
  loc_AB70BA: MemLdRfVar from_stack_1.global_56
  loc_AB70BD: NewIfNullPr clsdebito
  loc_AB70C0: Call clsdebito.Filter(from_stack_1v)
  loc_AB70C5: FFreeStr var_9C = ""
  loc_AB70CC: FFree1Ad var_88
  loc_AB70CF: FFree1Var var_98 = ""
  loc_AB70D2: LitStr "Débito sea igual a: "
  loc_AB70D5: FLdPr Me
  loc_AB70D8: VCallAd Control_ID_FiltroMsk
  loc_AB70DB: FStAdFunc var_88
  loc_AB70DE: FLdPr var_88
  loc_AB70E1: LateIdLdVar var_98 DispID_22 0
  loc_AB70E8: CStrVarTmp
  loc_AB70E9: FStStrNoPop var_9C
  loc_AB70EC: ConcatStr
  loc_AB70ED: FStStrNoPop var_A0
  loc_AB70F0: FLdPr Me
  loc_AB70F3: MemStStrCopy
  loc_AB70F7: FFreeStr var_9C = ""
  loc_AB70FE: FFree1Ad var_88
  loc_AB7101: FFree1Var var_98 = ""
  loc_AB7104: Branch loc_AB7494
  loc_AB7107: FLdRfVar var_A2
  loc_AB710A: FLdPr Me
  loc_AB710D: VCallAd Control_ID_FiltroCbo
  loc_AB7110: FStAdFunc var_88
  loc_AB7113: FLdPr var_88
  loc_AB7116:  = Me.ListIndex
  loc_AB711B: FLdI2 var_A2
  loc_AB711E: LitI2_Byte 1
  loc_AB7120: EqI2
  loc_AB7121: FFree1Ad var_88
  loc_AB7124: BranchF loc_AB719F
  loc_AB7127: LitStr "ExorImpu LIKE '"
  loc_AB712A: FLdPr Me
  loc_AB712D: VCallAd Control_ID_FiltroMsk
  loc_AB7130: FStAdFunc var_88
  loc_AB7133: FLdPr var_88
  loc_AB7136: LateIdLdVar var_98 DispID_22 0
  loc_AB713D: CStrVarTmp
  loc_AB713E: FStStrNoPop var_9C
  loc_AB7141: ConcatStr
  loc_AB7142: FStStrNoPop var_A0
  loc_AB7145: LitStr Chr(37) & "'"
  loc_AB7148: ConcatStr
  loc_AB7149: PopTmpLdAdStr
  loc_AB714D: FLdPr Me
  loc_AB7150: MemLdRfVar from_stack_1.global_56
  loc_AB7153: NewIfNullPr clsdebito
  loc_AB7156: Call clsdebito.Filter(from_stack_1v)
  loc_AB715B: FFreeStr var_9C = "": var_A0 = ""
  loc_AB7164: FFree1Ad var_88
  loc_AB7167: FFree1Var var_98 = ""
  loc_AB716A: LitStr "exp. original comience con: "
  loc_AB716D: FLdPr Me
  loc_AB7170: VCallAd Control_ID_FiltroMsk
  loc_AB7173: FStAdFunc var_88
  loc_AB7176: FLdPr var_88
  loc_AB7179: LateIdLdVar var_98 DispID_22 0
  loc_AB7180: CStrVarTmp
  loc_AB7181: FStStrNoPop var_9C
  loc_AB7184: ConcatStr
  loc_AB7185: FStStrNoPop var_A0
  loc_AB7188: FLdPr Me
  loc_AB718B: MemStStrCopy
  loc_AB718F: FFreeStr var_9C = ""
  loc_AB7196: FFree1Ad var_88
  loc_AB7199: FFree1Var var_98 = ""
  loc_AB719C: Branch loc_AB7494
  loc_AB719F: FLdRfVar var_A2
  loc_AB71A2: FLdPr Me
  loc_AB71A5: VCallAd Control_ID_FiltroCbo
  loc_AB71A8: FStAdFunc var_88
  loc_AB71AB: FLdPr var_88
  loc_AB71AE:  = Me.ListIndex
  loc_AB71B3: FLdI2 var_A2
  loc_AB71B6: LitI2_Byte 2
  loc_AB71B8: EqI2
  loc_AB71B9: FFree1Ad var_88
  loc_AB71BC: BranchF loc_AB7237
  loc_AB71BF: LitStr "ExpeImpu LIKE '"
  loc_AB71C2: FLdPr Me
  loc_AB71C5: VCallAd Control_ID_FiltroMsk
  loc_AB71C8: FStAdFunc var_88
  loc_AB71CB: FLdPr var_88
  loc_AB71CE: LateIdLdVar var_98 DispID_22 0
  loc_AB71D5: CStrVarTmp
  loc_AB71D6: FStStrNoPop var_9C
  loc_AB71D9: ConcatStr
  loc_AB71DA: FStStrNoPop var_A0
  loc_AB71DD: LitStr Chr(37) & "'"
  loc_AB71E0: ConcatStr
  loc_AB71E1: PopTmpLdAdStr
  loc_AB71E5: FLdPr Me
  loc_AB71E8: MemLdRfVar from_stack_1.global_56
  loc_AB71EB: NewIfNullPr clsdebito
  loc_AB71EE: Call clsdebito.Filter(from_stack_1v)
  loc_AB71F3: FFreeStr var_9C = "": var_A0 = ""
  loc_AB71FC: FFree1Ad var_88
  loc_AB71FF: FFree1Var var_98 = ""
  loc_AB7202: LitStr "exp. de pago comience con: "
  loc_AB7205: FLdPr Me
  loc_AB7208: VCallAd Control_ID_FiltroMsk
  loc_AB720B: FStAdFunc var_88
  loc_AB720E: FLdPr var_88
  loc_AB7211: LateIdLdVar var_98 DispID_22 0
  loc_AB7218: CStrVarTmp
  loc_AB7219: FStStrNoPop var_9C
  loc_AB721C: ConcatStr
  loc_AB721D: FStStrNoPop var_A0
  loc_AB7220: FLdPr Me
  loc_AB7223: MemStStrCopy
  loc_AB7227: FFreeStr var_9C = ""
  loc_AB722E: FFree1Ad var_88
  loc_AB7231: FFree1Var var_98 = ""
  loc_AB7234: Branch loc_AB7494
  loc_AB7237: FLdRfVar var_A2
  loc_AB723A: FLdPr Me
  loc_AB723D: VCallAd Control_ID_FiltroCbo
  loc_AB7240: FStAdFunc var_88
  loc_AB7243: FLdPr var_88
  loc_AB7246:  = Me.ListIndex
  loc_AB724B: FLdI2 var_A2
  loc_AB724E: LitI2_Byte 3
  loc_AB7250: EqI2
  loc_AB7251: FFree1Ad var_88
  loc_AB7254: BranchF loc_AB72CF
  loc_AB7257: LitStr "CodiCuco LIKE '"
  loc_AB725A: FLdPr Me
  loc_AB725D: VCallAd Control_ID_FiltroMsk
  loc_AB7260: FStAdFunc var_88
  loc_AB7263: FLdPr var_88
  loc_AB7266: LateIdLdVar var_98 DispID_22 0
  loc_AB726D: CStrVarTmp
  loc_AB726E: FStStrNoPop var_9C
  loc_AB7271: ConcatStr
  loc_AB7272: FStStrNoPop var_A0
  loc_AB7275: LitStr Chr(37) & "'"
  loc_AB7278: ConcatStr
  loc_AB7279: PopTmpLdAdStr
  loc_AB727D: FLdPr Me
  loc_AB7280: MemLdRfVar from_stack_1.global_56
  loc_AB7283: NewIfNullPr clsdebito
  loc_AB7286: Call clsdebito.Filter(from_stack_1v)
  loc_AB728B: FFreeStr var_9C = "": var_A0 = ""
  loc_AB7294: FFree1Ad var_88
  loc_AB7297: FFree1Var var_98 = ""
  loc_AB729A: LitStr "código de la Cuenta Contable comience con: "
  loc_AB729D: FLdPr Me
  loc_AB72A0: VCallAd Control_ID_FiltroMsk
  loc_AB72A3: FStAdFunc var_88
  loc_AB72A6: FLdPr var_88
  loc_AB72A9: LateIdLdVar var_98 DispID_22 0
  loc_AB72B0: CStrVarTmp
  loc_AB72B1: FStStrNoPop var_9C
  loc_AB72B4: ConcatStr
  loc_AB72B5: FStStrNoPop var_A0
  loc_AB72B8: FLdPr Me
  loc_AB72BB: MemStStrCopy
  loc_AB72BF: FFreeStr var_9C = ""
  loc_AB72C6: FFree1Ad var_88
  loc_AB72C9: FFree1Var var_98 = ""
  loc_AB72CC: Branch loc_AB7494
  loc_AB72CF: FLdRfVar var_A2
  loc_AB72D2: FLdPr Me
  loc_AB72D5: VCallAd Control_ID_FiltroCbo
  loc_AB72D8: FStAdFunc var_88
  loc_AB72DB: FLdPr var_88
  loc_AB72DE:  = Me.ListIndex
  loc_AB72E3: FLdI2 var_A2
  loc_AB72E6: LitI2_Byte 4
  loc_AB72E8: EqI2
  loc_AB72E9: FFree1Ad var_88
  loc_AB72EC: BranchF loc_AB7367
  loc_AB72EF: LitStr "DetaCuco LIKE '" & Chr(37)
  loc_AB72F2: FLdPr Me
  loc_AB72F5: VCallAd Control_ID_FiltroMsk
  loc_AB72F8: FStAdFunc var_88
  loc_AB72FB: FLdPr var_88
  loc_AB72FE: LateIdLdVar var_98 DispID_22 0
  loc_AB7305: CStrVarTmp
  loc_AB7306: FStStrNoPop var_9C
  loc_AB7309: ConcatStr
  loc_AB730A: FStStrNoPop var_A0
  loc_AB730D: LitStr Chr(37) & "'"
  loc_AB7310: ConcatStr
  loc_AB7311: PopTmpLdAdStr
  loc_AB7315: FLdPr Me
  loc_AB7318: MemLdRfVar from_stack_1.global_56
  loc_AB731B: NewIfNullPr clsdebito
  loc_AB731E: Call clsdebito.Filter(from_stack_1v)
  loc_AB7323: FFreeStr var_9C = "": var_A0 = ""
  loc_AB732C: FFree1Ad var_88
  loc_AB732F: FFree1Var var_98 = ""
  loc_AB7332: LitStr "detalle de la Cuenta Contable contiene: "
  loc_AB7335: FLdPr Me
  loc_AB7338: VCallAd Control_ID_FiltroMsk
  loc_AB733B: FStAdFunc var_88
  loc_AB733E: FLdPr var_88
  loc_AB7341: LateIdLdVar var_98 DispID_22 0
  loc_AB7348: CStrVarTmp
  loc_AB7349: FStStrNoPop var_9C
  loc_AB734C: ConcatStr
  loc_AB734D: FStStrNoPop var_A0
  loc_AB7350: FLdPr Me
  loc_AB7353: MemStStrCopy
  loc_AB7357: FFreeStr var_9C = ""
  loc_AB735E: FFree1Ad var_88
  loc_AB7361: FFree1Var var_98 = ""
  loc_AB7364: Branch loc_AB7494
  loc_AB7367: FLdRfVar var_A2
  loc_AB736A: FLdPr Me
  loc_AB736D: VCallAd Control_ID_FiltroCbo
  loc_AB7370: FStAdFunc var_88
  loc_AB7373: FLdPr var_88
  loc_AB7376:  = Me.ListIndex
  loc_AB737B: FLdI2 var_A2
  loc_AB737E: LitI2_Byte 5
  loc_AB7380: EqI2
  loc_AB7381: FFree1Ad var_88
  loc_AB7384: BranchF loc_AB73FF
  loc_AB7387: LitStr "DetaProv LIKE '" & Chr(37)
  loc_AB738A: FLdPr Me
  loc_AB738D: VCallAd Control_ID_FiltroMsk
  loc_AB7390: FStAdFunc var_88
  loc_AB7393: FLdPr var_88
  loc_AB7396: LateIdLdVar var_98 DispID_22 0
  loc_AB739D: CStrVarTmp
  loc_AB739E: FStStrNoPop var_9C
  loc_AB73A1: ConcatStr
  loc_AB73A2: FStStrNoPop var_A0
  loc_AB73A5: LitStr Chr(37) & "'"
  loc_AB73A8: ConcatStr
  loc_AB73A9: PopTmpLdAdStr
  loc_AB73AD: FLdPr Me
  loc_AB73B0: MemLdRfVar from_stack_1.global_56
  loc_AB73B3: NewIfNullPr clsdebito
  loc_AB73B6: Call clsdebito.Filter(from_stack_1v)
  loc_AB73BB: FFreeStr var_9C = "": var_A0 = ""
  loc_AB73C4: FFree1Ad var_88
  loc_AB73C7: FFree1Var var_98 = ""
  loc_AB73CA: LitStr "proveedor contiene: "
  loc_AB73CD: FLdPr Me
  loc_AB73D0: VCallAd Control_ID_FiltroMsk
  loc_AB73D3: FStAdFunc var_88
  loc_AB73D6: FLdPr var_88
  loc_AB73D9: LateIdLdVar var_98 DispID_22 0
  loc_AB73E0: CStrVarTmp
  loc_AB73E1: FStStrNoPop var_9C
  loc_AB73E4: ConcatStr
  loc_AB73E5: FStStrNoPop var_A0
  loc_AB73E8: FLdPr Me
  loc_AB73EB: MemStStrCopy
  loc_AB73EF: FFreeStr var_9C = ""
  loc_AB73F6: FFree1Ad var_88
  loc_AB73F9: FFree1Var var_98 = ""
  loc_AB73FC: Branch loc_AB7494
  loc_AB73FF: FLdRfVar var_A2
  loc_AB7402: FLdPr Me
  loc_AB7405: VCallAd Control_ID_FiltroCbo
  loc_AB7408: FStAdFunc var_88
  loc_AB740B: FLdPr var_88
  loc_AB740E:  = Me.ListIndex
  loc_AB7413: FLdI2 var_A2
  loc_AB7416: LitI2_Byte 6
  loc_AB7418: EqI2
  loc_AB7419: FFree1Ad var_88
  loc_AB741C: BranchF loc_AB7494
  loc_AB741F: LitStr "DetaDebi LIKE '" & Chr(37)
  loc_AB7422: FLdPr Me
  loc_AB7425: VCallAd Control_ID_FiltroMsk
  loc_AB7428: FStAdFunc var_88
  loc_AB742B: FLdPr var_88
  loc_AB742E: LateIdLdVar var_98 DispID_22 0
  loc_AB7435: CStrVarTmp
  loc_AB7436: FStStrNoPop var_9C
  loc_AB7439: ConcatStr
  loc_AB743A: FStStrNoPop var_A0
  loc_AB743D: LitStr Chr(37) & "'"
  loc_AB7440: ConcatStr
  loc_AB7441: PopTmpLdAdStr
  loc_AB7445: FLdPr Me
  loc_AB7448: MemLdRfVar from_stack_1.global_56
  loc_AB744B: NewIfNullPr clsdebito
  loc_AB744E: Call clsdebito.Filter(from_stack_1v)
  loc_AB7453: FFreeStr var_9C = "": var_A0 = ""
  loc_AB745C: FFree1Ad var_88
  loc_AB745F: FFree1Var var_98 = ""
  loc_AB7462: LitStr "detalle del Débito contiene: "
  loc_AB7465: FLdPr Me
  loc_AB7468: VCallAd Control_ID_FiltroMsk
  loc_AB746B: FStAdFunc var_88
  loc_AB746E: FLdPr var_88
  loc_AB7471: LateIdLdVar var_98 DispID_22 0
  loc_AB7478: CStrVarTmp
  loc_AB7479: FStStrNoPop var_9C
  loc_AB747C: ConcatStr
  loc_AB747D: FStStrNoPop var_A0
  loc_AB7480: FLdPr Me
  loc_AB7483: MemStStrCopy
  loc_AB7487: FFreeStr var_9C = ""
  loc_AB748E: FFree1Ad var_88
  loc_AB7491: FFree1Var var_98 = ""
  loc_AB7494: Branch loc_AB74BB
  loc_AB7497: LitStr vbNullString
  loc_AB749A: FStStrCopy var_9C
  loc_AB749D: FLdRfVar var_9C
  loc_AB74A0: FLdPr Me
  loc_AB74A3: MemLdRfVar from_stack_1.global_56
  loc_AB74A6: NewIfNullPr clsdebito
  loc_AB74A9: Call clsdebito.Filter(from_stack_1v)
  loc_AB74AE: FFree1Str var_9C
  loc_AB74B1: LitStr vbNullString
  loc_AB74B4: FLdPr Me
  loc_AB74B7: MemStStrCopy
  loc_AB74BB: FLdRfVar var_AC
  loc_AB74BE: FLdPr Me
  loc_AB74C1: MemLdRfVar from_stack_1.global_56
  loc_AB74C4: NewIfNullPr clsdebito
  loc_AB74C7: from_stack_1 = clsdebito.RecordCount
  loc_AB74CC: ILdRf var_AC
  loc_AB74CF: LitI4 0
  loc_AB74D4: GtI4
  loc_AB74D5: BranchF loc_AB7573
  loc_AB74D8: FLdPr Me
  loc_AB74DB: MemLdRfVar from_stack_1.global_56
  loc_AB74DE: NewIfNullAd
  loc_AB74E1: FStAd var_B0 
  loc_AB74E5: FLdRfVar var_B0
  loc_AB74E8: CVarRef
  loc_AB74ED: ILdRf Me
  loc_AB74F0: CastAd
  loc_AB74F3: FStAdFunc var_88
  loc_AB74F6: FLdRfVar var_88
  loc_AB74F9: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_AB74FE: ILdRf var_B0
  loc_AB7501: CastAd
  loc_AB7504: FLdPr Me
  loc_AB7507: MemStAdFunc
  loc_AB750B: FFreeAd var_88 = ""
  loc_AB7512: LitI4 0
  loc_AB7517: LitI4 1
  loc_AB751C: FLdRfVar var_C4
  loc_AB751F: Redim
  loc_AB7529: FLdPr Me
  loc_AB752C: MemLdRfVar from_stack_1.global_56
  loc_AB752F: NewIfNullAd
  loc_AB7532: FStAd var_88 
  loc_AB7536: FLdRfVar var_88
  loc_AB7539: CVarRef
  loc_AB753E: ParmAry1St
  loc_AB7544: FLdPr Me
  loc_AB7547: VCallAd Control_ID_dgdABMS
  loc_AB754A: CVarAd
  loc_AB754E: ParmAry1St
  loc_AB7554: FLdRfVar var_C4
  loc_AB7557: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_AB755C: ILdRf var_88
  loc_AB755F: CastAd
  loc_AB7562: FLdPr Me
  loc_AB7565: MemStAdFunc
  loc_AB7569: FLdRfVar var_C4
  loc_AB756C: Erase
  loc_AB756D: FFree1Ad var_88
  loc_AB7570: Branch loc_AB7587
  loc_AB7573: ILdRf Me
  loc_AB7576: CastAd
  loc_AB7579: FStAdFunc var_88
  loc_AB757C: FLdRfVar var_88
  loc_AB757F: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_AB7584: FFree1Ad var_88
  loc_AB7587: FLdPr Me
  loc_AB758A: VCallAd Control_ID_dgdABMS
  loc_AB758D: FStAdFunc var_B0
  loc_AB7590: LitI4 0
  loc_AB7595: FStStrCopy var_9C
  loc_AB7598: FLdRfVar var_9C
  loc_AB759B: FLdPr Me
  loc_AB759E: MemLdStr global_72
  loc_AB75A1: FLdZeroAd var_B0
  loc_AB75A4: FStAdFunc var_88
  loc_AB75A7: FLdRfVar var_88
  loc_AB75AA: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_AB75AF: FFree1Str var_9C
  loc_AB75B2: FFreeAd var_88 = ""
  loc_AB75B9: ExitProcHresult
  loc_AB75BA: FLdPr arg_1400
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '999064
  'Data Table: 4E878C
  loc_999000: ILdI2 KeyAscii
  loc_999003: LitI2_Byte &H27
  loc_999005: EqI2
  loc_999006: BranchF loc_99900E
  loc_999009: LitI2_Byte 0
  loc_99900B: IStI2 KeyAscii
  loc_99900E: FLdRfVar var_88
  loc_999011: FLdPr Me
  loc_999014: MemLdRfVar from_stack_1.global_56
  loc_999017: NewIfNullPr clsdebito
  loc_99901A: from_stack_1 = clsdebito.RecordCount
  loc_99901F: ILdRf var_88
  loc_999022: LitI4 0
  loc_999027: EqI4
  loc_999028: ILdI2 KeyAscii
  loc_99902B: CI4UI1
  loc_99902C: LitI4 8
  loc_999031: NeI4
  loc_999032: AndI4
  loc_999033: FLdPr Me
  loc_999036: VCallAd Control_ID_FiltroMsk
  loc_999039: FStAdFunc var_8C
  loc_99903C: FLdPr var_8C
  loc_99903F: LateIdLdVar var_9C DispID_16 0
  loc_999046: CStrVarTmp
  loc_999047: FStStrNoPop var_A0
  loc_99904A: LitStr vbNullString
  loc_99904D: EqStr
  loc_99904F: AndI4
  loc_999050: FFree1Str var_A0
  loc_999053: FFree1Ad var_8C
  loc_999056: FFree1Var var_9C = ""
  loc_999059: BranchF loc_999061
  loc_99905C: LitI2_Byte 0
  loc_99905E: IStI2 KeyAscii
  loc_999061: ExitProcHresult
  loc_999062: FStAdFunc arg_1470
End Sub

Private Sub Form_Load() 'A509E0
  'Data Table: 4E878C
  loc_A5076C: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A50771: PopAdLdVar
  loc_A50772: FLdPr Me
  loc_A50775: VCallAd Control_ID_CodiCucoMsk
  loc_A50778: FStAdFunc var_A8
  loc_A5077B: FLdPr var_A8
  loc_A5077E: LateIdSt
  loc_A50783: FFree1Ad var_A8
  loc_A50786: ImpAdLdI2 MemVar_C3D064
  loc_A50789: LitI2 2025
  loc_A5078C: LeI2
  loc_A5078D: BranchF loc_A507AD
  loc_A50790: LitVarI4
  loc_A50798: PopAdLdVar
  loc_A50799: FLdPr Me
  loc_A5079C: VCallAd Control_ID_dgdABMS
  loc_A5079F: FStAdFunc var_A8
  loc_A507A2: FLdPr var_A8
  loc_A507A5: LateIdSt
  loc_A507AA: FFree1Ad var_A8
  loc_A507AD: ILdRf Me
  loc_A507B0: CastAd
  loc_A507B3: FStAdFunc var_A8
  loc_A507B6: FLdRfVar var_A8
  loc_A507B9: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A507BE: FFree1Ad var_A8
  loc_A507C1: LitI2_Byte 0
  loc_A507C3: CR8I2
  loc_A507C4: PopFPR4
  loc_A507C5: FLdPr Me
  loc_A507C8: Me.Left = from_stack_1s
  loc_A507CD: LitI2_Byte 0
  loc_A507CF: CR8I2
  loc_A507D0: PopFPR4
  loc_A507D1: FLdPr Me
  loc_A507D4: Me.Top = from_stack_1s
  loc_A507D9: LitStr vbNullString
  loc_A507DC: FLdPr Me
  loc_A507DF: MemStStrCopy
  loc_A507E3: LitStr "SELECT d.*"
  loc_A507E6: LitStr ", Left(d.NumeFact,3) TifaDeve, Mid(d.NumeFact,4,4) SufaDeve, Right(d.NumeFact,8) NufaDeve"
  loc_A507E9: ConcatStr
  loc_A507EA: FStStrNoPop var_AC
  loc_A507ED: LitStr ", DetaCuco, DetaProv, IFNULL(DetaOrga,'') DetaOrga"
  loc_A507F0: ConcatStr
  loc_A507F1: FStStrNoPop var_B0
  loc_A507F4: LitStr ", Sum(if(ImpoImpu IS NULL OR FeanLiqu IS NOT NULL,0,ImpoImpu)) > 0 TieneLiq"
  loc_A507F7: ConcatStr
  loc_A507F8: FStStrNoPop var_B4
  loc_A507FB: LitStr " FROM debito d"
  loc_A507FE: ConcatStr
  loc_A507FF: FStStrNoPop var_B8
  loc_A50802: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = d.PeriInfo AND cc.CodiCuco = d.CodiCuco"
  loc_A50805: ConcatStr
  loc_A50806: FStStrNoPop var_BC
  loc_A50809: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_A5080C: ConcatStr
  loc_A5080D: FStStrNoPop var_C0
  loc_A50810: LitStr " LEFT JOIN infogov.organigrama orga ON orga.PeriInfo = d.PeriInfo AND orga.CodiOrga = d.CodiOrga"
  loc_A50813: ConcatStr
  loc_A50814: FStStrNoPop var_C4
  loc_A50817: LitStr " LEFT JOIN liquidadeta ld ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi AND ld.FeanLide IS NULL"
  loc_A5081A: ConcatStr
  loc_A5081B: FStStrNoPop var_C8
  loc_A5081E: LitStr " LEFT JOIN liquidacion l ON l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu"
  loc_A50821: ConcatStr
  loc_A50822: FStStrNoPop var_CC
  loc_A50825: LitStr " WHERE d.PeriInfo = "
  loc_A50828: ConcatStr
  loc_A50829: FStStrNoPop var_D0
  loc_A5082C: ImpAdLdI2 MemVar_C3D064
  loc_A5082F: CStrUI1
  loc_A50831: FStStrNoPop var_D4
  loc_A50834: ConcatStr
  loc_A50835: FStStrNoPop var_D8
  loc_A50838: LitStr " AND FeanDebi IS NULL"
  loc_A5083B: ConcatStr
  loc_A5083C: FStStrNoPop var_DC
  loc_A5083F: LitStr " GROUP BY d.NumeDebi"
  loc_A50842: ConcatStr
  loc_A50843: FStStrNoPop var_E0
  loc_A50846: LitStr " HAVING NOT TieneLiq"
  loc_A50849: ConcatStr
  loc_A5084A: FStStrNoPop var_E4
  loc_A5084D: LitStr " ORDER BY d.PeriInfo, d.NumeDebi"
  loc_A50850: ConcatStr
  loc_A50851: FStStrNoPop var_E8
  loc_A50854: FLdPr Me
  loc_A50857: MemLdRfVar from_stack_1.global_56
  loc_A5085A: NewIfNullPr clsdebito
  loc_A5085D: Call clsdebito.RedefineRS(from_stack_1v)
  loc_A50862: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_A50885: LitI2_Byte &HFF
  loc_A50887: FLdPr Me
  loc_A5088A: VCallAd Control_ID_TifaDeveCbo
  loc_A5088D: FStAdFunc var_A8
  loc_A50890: FLdRfVar var_A8
  loc_A50893: ImpAdCallFPR4 Proc_261_56_9A8F4C(, )
  loc_A50898: FFree1Ad var_A8
  loc_A5089B: LitVarI2 var_94, 0
  loc_A508A0: PopAdLdVar
  loc_A508A1: LitStr "Débito"
  loc_A508A4: FLdPr Me
  loc_A508A7: VCallAd Control_ID_FiltroCbo
  loc_A508AA: FStAdFunc var_A8
  loc_A508AD: FLdPr var_A8
  loc_A508B0: Me.AddItem from_stack_1, from_stack_2
  loc_A508B5: FFree1Ad var_A8
  loc_A508B8: LitVarI2 var_94, 1
  loc_A508BD: PopAdLdVar
  loc_A508BE: LitStr "Exp. original"
  loc_A508C1: FLdPr Me
  loc_A508C4: VCallAd Control_ID_FiltroCbo
  loc_A508C7: FStAdFunc var_A8
  loc_A508CA: FLdPr var_A8
  loc_A508CD: Me.AddItem from_stack_1, from_stack_2
  loc_A508D2: FFree1Ad var_A8
  loc_A508D5: LitVarI2 var_94, 2
  loc_A508DA: PopAdLdVar
  loc_A508DB: LitStr "Exp. de pago"
  loc_A508DE: FLdPr Me
  loc_A508E1: VCallAd Control_ID_FiltroCbo
  loc_A508E4: FStAdFunc var_A8
  loc_A508E7: FLdPr var_A8
  loc_A508EA: Me.AddItem from_stack_1, from_stack_2
  loc_A508EF: FFree1Ad var_A8
  loc_A508F2: LitVarI2 var_94, 3
  loc_A508F7: PopAdLdVar
  loc_A508F8: LitStr "Cuenta Contable (Código)"
  loc_A508FB: FLdPr Me
  loc_A508FE: VCallAd Control_ID_FiltroCbo
  loc_A50901: FStAdFunc var_A8
  loc_A50904: FLdPr var_A8
  loc_A50907: Me.AddItem from_stack_1, from_stack_2
  loc_A5090C: FFree1Ad var_A8
  loc_A5090F: LitVarI2 var_94, 4
  loc_A50914: PopAdLdVar
  loc_A50915: LitStr "Cuenta Contable (Detalle)"
  loc_A50918: FLdPr Me
  loc_A5091B: VCallAd Control_ID_FiltroCbo
  loc_A5091E: FStAdFunc var_A8
  loc_A50921: FLdPr var_A8
  loc_A50924: Me.AddItem from_stack_1, from_stack_2
  loc_A50929: FFree1Ad var_A8
  loc_A5092C: LitVarI2 var_94, 5
  loc_A50931: PopAdLdVar
  loc_A50932: LitStr "Proveedor (Nombre)"
  loc_A50935: FLdPr Me
  loc_A50938: VCallAd Control_ID_FiltroCbo
  loc_A5093B: FStAdFunc var_A8
  loc_A5093E: FLdPr var_A8
  loc_A50941: Me.AddItem from_stack_1, from_stack_2
  loc_A50946: FFree1Ad var_A8
  loc_A50949: LitVarI2 var_94, 6
  loc_A5094E: PopAdLdVar
  loc_A5094F: LitStr "Detalle"
  loc_A50952: FLdPr Me
  loc_A50955: VCallAd Control_ID_FiltroCbo
  loc_A50958: FStAdFunc var_A8
  loc_A5095B: FLdPr var_A8
  loc_A5095E: Me.AddItem from_stack_1, from_stack_2
  loc_A50963: FFree1Ad var_A8
  loc_A50966: LitI2_Byte 0
  loc_A50968: FLdPr Me
  loc_A5096B: VCallAd Control_ID_FiltroCbo
  loc_A5096E: FStAdFunc var_A8
  loc_A50971: FLdPr var_A8
  loc_A50974: Me.ListIndex = from_stack_1
  loc_A50979: FFree1Ad var_A8
  loc_A5097C: Call cmdCancelar_Click()
  loc_A50981: LitI4 0
  loc_A50986: LitI4 1
  loc_A5098B: FLdRfVar var_EC
  loc_A5098E: Redim
  loc_A50998: FLdPr Me
  loc_A5099B: MemLdRfVar from_stack_1.global_56
  loc_A5099E: NewIfNullAd
  loc_A509A1: FStAd var_A8 
  loc_A509A5: FLdRfVar var_A8
  loc_A509A8: CVarRef
  loc_A509AD: ParmAry1St
  loc_A509B3: FLdPr Me
  loc_A509B6: VCallAd Control_ID_dgdABMS
  loc_A509B9: CVarAd
  loc_A509BD: ParmAry1St
  loc_A509C3: FLdRfVar var_EC
  loc_A509C6: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A509CB: ILdRf var_A8
  loc_A509CE: CastAd
  loc_A509D1: FLdPr Me
  loc_A509D4: MemStAdFunc
  loc_A509D8: FLdRfVar var_EC
  loc_A509DB: Erase
  loc_A509DC: FFree1Ad var_A8
  loc_A509DF: ExitProcHresult
End Sub

Private Sub Form_Activate() '99EED4
  'Data Table: 4E878C
  loc_99EE70: FLdRfVar var_C2
  loc_99EE73: FLdRfVar var_C0
  loc_99EE76: LitVarI2 var_B8, 1
  loc_99EE7B: FLdPr Me
  loc_99EE7E: VCallAd Control_ID_tlbABMS
  loc_99EE81: FStAdFunc var_88
  loc_99EE84: FLdPr var_88
  loc_99EE87: LateIdLdVar var_98 DispID_3 0
  loc_99EE8E: CastAdVar Me
  loc_99EE92: FStAdFunc var_BC
  loc_99EE95: FLdPr var_BC
  loc_99EE98:  = Me.Buttons.ControlDefault
  loc_99EE9D: FLdPr var_C0
  loc_99EEA0:  = Me.Enabled
  loc_99EEA5: FLdI2 var_C2
  loc_99EEA8: FFreeAd var_88 = "": var_BC = ""
  loc_99EEB1: FFreeVar var_98 = ""
  loc_99EEB8: BranchF loc_99EED0
  loc_99EEBB: LitI4 0
  loc_99EEC0: LitI2_Byte 0
  loc_99EEC2: FLdPr Me
  loc_99EEC5: MemLdRfVar from_stack_1.global_56
  loc_99EEC8: NewIfNullPr clsdebito
  loc_99EECB: Call clsdebito.Encontrar(from_stack_1v, from_stack_2v)
  loc_99EED0: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949628
  'Data Table: 4E878C
  loc_949614: ILdI2 KeyAscii
  loc_949617: CI4UI1
  loc_949618: LitI4 &HD
  loc_94961D: EqI4
  loc_94961E: BranchF loc_949626
  loc_949621: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949626: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '955448
  'Data Table: 4E878C
  loc_955430: ILdI2 KeyCode
  loc_955433: ILdRf Me
  loc_955436: CastAd
  loc_955439: FStAdFunc var_88
  loc_95543C: FLdRfVar var_88
  loc_95543F: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_955444: FFree1Ad var_88
  loc_955447: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BCE0D8
  'Data Table: 4E878C
  loc_BCCD30: ILdRf Button
  loc_BCCD33: FStAd var_88 
  loc_BCCD37: FLdRfVar var_90
  loc_BCCD3A: FLdPr var_88
  loc_BCCD3D:  = Me.Key
  loc_BCCD42: FLdZeroAd var_90
  loc_BCCD45: FStStr var_94
  loc_BCCD48: ILdRf var_94
  loc_BCCD4B: LitStr "btnCrear"
  loc_BCCD4E: EqStr
  loc_BCCD50: BranchF loc_BCD156
  loc_BCCD53: LitStr "btnCrear"
  loc_BCCD56: FLdPr Me
  loc_BCCD59: MemStStrCopy
  loc_BCCD5D: LitI2_Byte 1
  loc_BCCD5F: FLdPr Me
  loc_BCCD62: MemStUI1
  loc_BCCD66: ILdRf Me
  loc_BCCD69: CastAd
  loc_BCCD6C: FStAdFunc var_98
  loc_BCCD6F: FLdRfVar var_98
  loc_BCCD72: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BCCD77: FFree1Ad var_98
  loc_BCCD7A: LitI4 0
  loc_BCCD7F: LitI4 0
  loc_BCCD84: FLdRfVar var_9C
  loc_BCCD87: Redim
  loc_BCCD91: FLdPr Me
  loc_BCCD94: VCallAd Control_ID_dgdABMS
  loc_BCCD97: CVarAd
  loc_BCCD9B: ParmAry1St
  loc_BCCDA1: FLdRfVar var_9C
  loc_BCCDA4: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BCCDA9: FLdRfVar var_9C
  loc_BCCDAC: Erase
  loc_BCCDAD: ILdRf Me
  loc_BCCDB0: CastAd
  loc_BCCDB3: FStAdFunc var_98
  loc_BCCDB6: FLdRfVar var_98
  loc_BCCDB9: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BCCDBE: FFree1Ad var_98
  loc_BCCDC1: ILdRf Me
  loc_BCCDC4: CastAd
  loc_BCCDC7: FStAdFunc var_98
  loc_BCCDCA: FLdRfVar var_98
  loc_BCCDCD: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_BCCDD2: FFree1Ad var_98
  loc_BCCDD5: FLdPr Me
  loc_BCCDD8: MemLdStr global_72
  loc_BCCDDB: LitStr vbNullString
  loc_BCCDDE: NeStr
  loc_BCCDE0: FLdRfVar var_B0
  loc_BCCDE3: FLdPr Me
  loc_BCCDE6: MemLdRfVar from_stack_1.global_56
  loc_BCCDE9: NewIfNullPr clsdebito
  loc_BCCDEC: from_stack_1 = clsdebito.RecordCount
  loc_BCCDF1: ILdRf var_B0
  loc_BCCDF4: LitI4 0
  loc_BCCDF9: GtI4
  loc_BCCDFA: AndI4
  loc_BCCDFB: BranchF loc_BCCFE7
  loc_BCCDFE: FLdRfVar var_AC
  loc_BCCE01: FLdRfVar var_C8
  loc_BCCE04: LitVarStr var_C4, "ExorImpu"
  loc_BCCE09: PopAdLdVar
  loc_BCCE0A: FLdRfVar var_B4
  loc_BCCE0D: FLdRfVar var_98
  loc_BCCE10: FLdPr Me
  loc_BCCE13: MemLdRfVar from_stack_1.global_56
  loc_BCCE16: NewIfNullPr clsdebito
  loc_BCCE19: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCCE1E: FLdPr var_98
  loc_BCCE21:  = Me.Fields
  loc_BCCE26: FLdPr var_B4
  loc_BCCE29: from_stack_2 = Me.Item(from_stack_1)
  loc_BCCE2E: FLdPr var_C8
  loc_BCCE31:  = Me.Value
  loc_BCCE36: FLdRfVar var_AC
  loc_BCCE39: CStrVarTmp
  loc_BCCE3A: CVarStr var_D8
  loc_BCCE3D: PopAdLdVar
  loc_BCCE3E: FLdPr Me
  loc_BCCE41: VCallAd Control_ID_ExorImpuMsk
  loc_BCCE44: FStAdFunc var_EC
  loc_BCCE47: FLdPr var_EC
  loc_BCCE4A: LateIdSt
  loc_BCCE4F: FFreeAd var_98 = "": var_B4 = "": var_C8 = ""
  loc_BCCE5A: FFreeVar var_AC = ""
  loc_BCCE61: FLdRfVar var_AC
  loc_BCCE64: FLdRfVar var_C8
  loc_BCCE67: LitVarStr var_C4, "ExpeImpu"
  loc_BCCE6C: PopAdLdVar
  loc_BCCE6D: FLdRfVar var_B4
  loc_BCCE70: FLdRfVar var_98
  loc_BCCE73: FLdPr Me
  loc_BCCE76: MemLdRfVar from_stack_1.global_56
  loc_BCCE79: NewIfNullPr clsdebito
  loc_BCCE7C: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCCE81: FLdPr var_98
  loc_BCCE84:  = Me.Fields
  loc_BCCE89: FLdPr var_B4
  loc_BCCE8C: from_stack_2 = Me.Item(from_stack_1)
  loc_BCCE91: FLdPr var_C8
  loc_BCCE94:  = Me.Value
  loc_BCCE99: FLdRfVar var_AC
  loc_BCCE9C: CStrVarTmp
  loc_BCCE9D: FStStrNoPop var_90
  loc_BCCEA0: FLdPr Me
  loc_BCCEA3: VCallAd Control_ID_ExpeImpuTxt
  loc_BCCEA6: FStAdFunc var_EC
  loc_BCCEA9: FLdPr var_EC
  loc_BCCEAC: Me.Text = from_stack_1
  loc_BCCEB1: FFree1Str var_90
  loc_BCCEB4: FFreeAd var_98 = "": var_B4 = "": var_C8 = ""
  loc_BCCEBF: FFree1Var var_AC = ""
  loc_BCCEC2: FLdRfVar var_AC
  loc_BCCEC5: FLdRfVar var_C8
  loc_BCCEC8: LitVarStr var_C4, "CodiCuco"
  loc_BCCECD: PopAdLdVar
  loc_BCCECE: FLdRfVar var_B4
  loc_BCCED1: FLdRfVar var_98
  loc_BCCED4: FLdPr Me
  loc_BCCED7: MemLdRfVar from_stack_1.global_56
  loc_BCCEDA: NewIfNullPr clsdebito
  loc_BCCEDD: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCCEE2: FLdPr var_98
  loc_BCCEE5:  = Me.Fields
  loc_BCCEEA: FLdPr var_B4
  loc_BCCEED: from_stack_2 = Me.Item(from_stack_1)
  loc_BCCEF2: FLdPr var_C8
  loc_BCCEF5:  = Me.Value
  loc_BCCEFA: FLdRfVar var_AC
  loc_BCCEFD: CStrVarTmp
  loc_BCCEFE: CVarStr var_D8
  loc_BCCF01: PopAdLdVar
  loc_BCCF02: FLdPr Me
  loc_BCCF05: VCallAd Control_ID_CodiCucoMsk
  loc_BCCF08: FStAdFunc var_EC
  loc_BCCF0B: FLdPr var_EC
  loc_BCCF0E: LateIdSt
  loc_BCCF13: FFreeAd var_98 = "": var_B4 = "": var_C8 = ""
  loc_BCCF1E: FFreeVar var_AC = ""
  loc_BCCF25: FLdRfVar var_AC
  loc_BCCF28: FLdRfVar var_C8
  loc_BCCF2B: LitVarStr var_C4, "CucuPers"
  loc_BCCF30: PopAdLdVar
  loc_BCCF31: FLdRfVar var_B4
  loc_BCCF34: FLdRfVar var_98
  loc_BCCF37: FLdPr Me
  loc_BCCF3A: MemLdRfVar from_stack_1.global_56
  loc_BCCF3D: NewIfNullPr clsdebito
  loc_BCCF40: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCCF45: FLdPr var_98
  loc_BCCF48:  = Me.Fields
  loc_BCCF4D: FLdPr var_B4
  loc_BCCF50: from_stack_2 = Me.Item(from_stack_1)
  loc_BCCF55: FLdPr var_C8
  loc_BCCF58:  = Me.Value
  loc_BCCF5D: FLdRfVar var_AC
  loc_BCCF60: CStrVarTmp
  loc_BCCF61: FStStrNoPop var_90
  loc_BCCF64: FLdPr Me
  loc_BCCF67: VCallAd Control_ID_CucuPersTxt
  loc_BCCF6A: FStAdFunc var_EC
  loc_BCCF6D: FLdPr var_EC
  loc_BCCF70: Me.Text = from_stack_1
  loc_BCCF75: FFree1Str var_90
  loc_BCCF78: FFreeAd var_98 = "": var_B4 = "": var_C8 = ""
  loc_BCCF83: FFree1Var var_AC = ""
  loc_BCCF86: FLdRfVar var_AC
  loc_BCCF89: FLdRfVar var_C8
  loc_BCCF8C: LitVarStr var_C4, "DetaDebi"
  loc_BCCF91: PopAdLdVar
  loc_BCCF92: FLdRfVar var_B4
  loc_BCCF95: FLdRfVar var_98
  loc_BCCF98: FLdPr Me
  loc_BCCF9B: MemLdRfVar from_stack_1.global_56
  loc_BCCF9E: NewIfNullPr clsdebito
  loc_BCCFA1: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCCFA6: FLdPr var_98
  loc_BCCFA9:  = Me.Fields
  loc_BCCFAE: FLdPr var_B4
  loc_BCCFB1: from_stack_2 = Me.Item(from_stack_1)
  loc_BCCFB6: FLdPr var_C8
  loc_BCCFB9:  = Me.Value
  loc_BCCFBE: FLdRfVar var_AC
  loc_BCCFC1: CStrVarTmp
  loc_BCCFC2: FStStrNoPop var_90
  loc_BCCFC5: FLdPr Me
  loc_BCCFC8: VCallAd Control_ID_DetaDebiTxt
  loc_BCCFCB: FStAdFunc var_EC
  loc_BCCFCE: FLdPr var_EC
  loc_BCCFD1: Me.Text = from_stack_1
  loc_BCCFD6: FFree1Str var_90
  loc_BCCFD9: FFreeAd var_98 = "": var_B4 = "": var_C8 = ""
  loc_BCCFE4: FFree1Var var_AC = ""
  loc_BCCFE7: LitStr vbNullString
  loc_BCCFEA: FLdPr Me
  loc_BCCFED: VCallAd Control_ID_NumeDebiLbl
  loc_BCCFF0: FStAdFunc var_98
  loc_BCCFF3: FLdPr var_98
  loc_BCCFF6: Me.Caption = from_stack_1
  loc_BCCFFB: FFree1Ad var_98
  loc_BCCFFE: FLdRfVar var_90
  loc_BCD001: ImpAdLdI2 MemVar_C3D064
  loc_BCD004: FLdPr Me
  loc_BCD007: MemLdRfVar from_stack_1.global_56
  loc_BCD00A: NewIfNullPr clsdebito
  loc_BCD00D: from_stack_2v = clsdebito.UltimaFechDebi(from_stack_1v)
  loc_BCD012: FLdZeroAd var_90
  loc_BCD015: CVarStr var_AC
  loc_BCD018: PopAdLdVar
  loc_BCD019: FLdPr Me
  loc_BCD01C: VCallAd Control_ID_FechDebiMsk
  loc_BCD01F: FStAdFunc var_98
  loc_BCD022: FLdPr var_98
  loc_BCD025: LateIdSt
  loc_BCD02A: FFree1Ad var_98
  loc_BCD02D: FFree1Var var_AC = ""
  loc_BCD030: FLdPr Me
  loc_BCD033: VCallAd Control_ID_FechDebiMsk
  loc_BCD036: FStAdFunc var_98
  loc_BCD039: FLdPr var_98
  loc_BCD03C: LateIdLdVar var_AC DispID_11 -32767
  loc_BCD043: CStrVarTmp
  loc_BCD044: CVarStr var_D8
  loc_BCD047: PopAdLdVar
  loc_BCD048: FLdPr Me
  loc_BCD04B: VCallAd Control_ID_FechDebiMsk
  loc_BCD04E: FStAdFunc var_B4
  loc_BCD051: FLdPr var_B4
  loc_BCD054: LateIdSt
  loc_BCD059: FFreeAd var_98 = ""
  loc_BCD060: FFreeVar var_AC = ""
  loc_BCD067: ImpAdLdFPR8 MemVar_C3D04C
  loc_BCD06A: CStrDate
  loc_BCD06C: CVarStr var_AC
  loc_BCD06F: PopAdLdVar
  loc_BCD070: FLdPr Me
  loc_BCD073: VCallAd Control_ID_FechDebiMsk
  loc_BCD076: FStAdFunc var_98
  loc_BCD079: FLdPr var_98
  loc_BCD07C: LateIdSt
  loc_BCD081: FFree1Ad var_98
  loc_BCD084: FFree1Var var_AC = ""
  loc_BCD087: ILdRf Me
  loc_BCD08A: CastAd
  loc_BCD08D: FStAdFunc var_98
  loc_BCD090: FLdRfVar var_98
  loc_BCD093: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_BCD098: FFree1Ad var_98
  loc_BCD09B: LitI4 0
  loc_BCD0A0: LitI4 3
  loc_BCD0A5: FLdRfVar var_9C
  loc_BCD0A8: Redim
  loc_BCD0B2: FLdPr Me
  loc_BCD0B5: VCallAd Control_ID_TifaDeveCbo
  loc_BCD0B8: CVarAd
  loc_BCD0BC: ParmAry1St
  loc_BCD0C2: FLdPr Me
  loc_BCD0C5: VCallAd Control_ID_SufaDeveTxt
  loc_BCD0C8: CVarAd
  loc_BCD0CC: ParmAry1St
  loc_BCD0D2: FLdPr Me
  loc_BCD0D5: VCallAd Control_ID_NufaDeveTxt
  loc_BCD0D8: CVarAd
  loc_BCD0DC: ParmAry1St
  loc_BCD0E2: FLdPr Me
  loc_BCD0E5: VCallAd Control_ID_CodiOrgaMsk
  loc_BCD0E8: CVarAd
  loc_BCD0EC: ParmAry1St
  loc_BCD0F2: FLdRfVar var_9C
  loc_BCD0F5: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BCD0FA: FLdRfVar var_9C
  loc_BCD0FD: Erase
  loc_BCD0FE: LitI4 0
  loc_BCD103: LitI4 1
  loc_BCD108: FLdRfVar var_9C
  loc_BCD10B: Redim
  loc_BCD115: FLdPr Me
  loc_BCD118: VCallAd Control_ID_FeanDebiMsk
  loc_BCD11B: CVarAd
  loc_BCD11F: ParmAry1St
  loc_BCD125: FLdPr Me
  loc_BCD128: VCallAd Control_ID_BajaMotiTxt
  loc_BCD12B: CVarAd
  loc_BCD12F: ParmAry1St
  loc_BCD135: FLdRfVar var_9C
  loc_BCD138: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BCD13D: FLdRfVar var_9C
  loc_BCD140: Erase
  loc_BCD141: FLdPr Me
  loc_BCD144: VCallAd Control_ID_FechDebiMsk
  loc_BCD147: CVarAd
  loc_BCD14B: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BCD150: FFree1Var var_AC = ""
  loc_BCD153: Branch loc_BCE0D4
  loc_BCD156: ILdRf var_94
  loc_BCD159: LitStr "btnModificar"
  loc_BCD15C: EqStr
  loc_BCD15E: BranchF loc_BCD439
  loc_BCD161: LitStr "btnModificar"
  loc_BCD164: FLdPr Me
  loc_BCD167: MemStStrCopy
  loc_BCD16B: FLdRfVar var_B0
  loc_BCD16E: FLdPr Me
  loc_BCD171: MemLdRfVar from_stack_1.global_56
  loc_BCD174: NewIfNullPr clsdebito
  loc_BCD177: from_stack_1 = clsdebito.RecordCount
  loc_BCD17C: ILdRf var_B0
  loc_BCD17F: LitI4 0
  loc_BCD184: GtI4
  loc_BCD185: BranchF loc_BCD40D
  loc_BCD188: FLdRfVar var_B0
  loc_BCD18B: FLdPr Me
  loc_BCD18E: MemLdRfVar from_stack_1.global_56
  loc_BCD191: NewIfNullPr clsdebito
  loc_BCD194: from_stack_1 = clsdebito.AbsolutePosition
  loc_BCD199: ILdRf var_B0
  loc_BCD19C: LitI4 -3
  loc_BCD1A1: EqI4
  loc_BCD1A2: BranchF loc_BCD1B3
  loc_BCD1A5: FLdPr Me
  loc_BCD1A8: MemLdRfVar from_stack_1.global_56
  loc_BCD1AB: NewIfNullPr clsdebito
  loc_BCD1AE: Call clsdebito.MovePrevious()
  loc_BCD1B3: FLdRfVar var_AC
  loc_BCD1B6: FLdRfVar var_C8
  loc_BCD1B9: LitVarStr var_C4, "NumeDebi"
  loc_BCD1BE: PopAdLdVar
  loc_BCD1BF: FLdRfVar var_B4
  loc_BCD1C2: FLdRfVar var_98
  loc_BCD1C5: FLdPr Me
  loc_BCD1C8: MemLdRfVar from_stack_1.global_56
  loc_BCD1CB: NewIfNullPr clsdebito
  loc_BCD1CE: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCD1D3: FLdPr var_98
  loc_BCD1D6:  = Me.Fields
  loc_BCD1DB: FLdPr var_B4
  loc_BCD1DE: from_stack_2 = Me.Item(from_stack_1)
  loc_BCD1E3: FLdPr var_C8
  loc_BCD1E6:  = Me.Value
  loc_BCD1EB: FLdRfVar var_90
  loc_BCD1EE: FLdPr Me
  loc_BCD1F1: MemLdRfVar from_stack_1.global_80
  loc_BCD1F4: NewIfNullRf
  loc_BCD1F8: FLdPr Me
  loc_BCD1FB: MemLdRfVar from_stack_1.global_92
  loc_BCD1FE: NewIfNullRf
  loc_BCD202: FLdRfVar var_AC
  loc_BCD205: CI2Var
  loc_BCD206: ImpAdLdI2 MemVar_C3D064
  loc_BCD209: FLdPr Me
  loc_BCD20C: MemLdRfVar from_stack_1.global_56
  loc_BCD20F: NewIfNullPr clsdebito
  loc_BCD212: from_stack_5v = clsdebito.ValidaModificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BCD217: ILdRf var_90
  loc_BCD21A: FLdPr Me
  loc_BCD21D: MemStStrCopy
  loc_BCD221: FFree1Str var_90
  loc_BCD224: FFreeAd var_98 = "": var_B4 = ""
  loc_BCD22D: FFree1Var var_AC = ""
  loc_BCD230: FLdPr Me
  loc_BCD233: VCallAd Control_ID_CodiCucoMsk
  loc_BCD236: FStAdFunc var_EC
  loc_BCD239: FLdPr Me
  loc_BCD23C: VCallAd Control_ID_DetaCucoLbl
  loc_BCD23F: FStAdFunc var_C8
  loc_BCD242: FLdRfVar var_C8
  loc_BCD245: FLdZeroAd var_EC
  loc_BCD248: FStAdFuncNoPop
  loc_BCD24B: CastAd
  loc_BCD24E: FStAdFunc var_B4
  loc_BCD251: FLdRfVar var_B4
  loc_BCD254: FLdPr Me
  loc_BCD257: MemLdRfVar from_stack_1.global_68
  loc_BCD25A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BCD25F: FStI2 var_8A
  loc_BCD262: FFreeAd var_98 = "": var_B4 = "": var_C8 = ""
  loc_BCD26D: FLdI2 var_8A
  loc_BCD270: NotI4
  loc_BCD271: BranchF loc_BCD40A
  loc_BCD274: LitI2_Byte 2
  loc_BCD276: FLdPr Me
  loc_BCD279: MemStUI1
  loc_BCD27D: ILdRf Me
  loc_BCD280: CastAd
  loc_BCD283: FStAdFunc var_98
  loc_BCD286: FLdRfVar var_98
  loc_BCD289: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BCD28E: FFree1Ad var_98
  loc_BCD291: LitI4 0
  loc_BCD296: LitI4 0
  loc_BCD29B: FLdRfVar var_9C
  loc_BCD29E: Redim
  loc_BCD2A8: FLdPr Me
  loc_BCD2AB: VCallAd Control_ID_dgdABMS
  loc_BCD2AE: CVarAd
  loc_BCD2B2: ParmAry1St
  loc_BCD2B8: FLdRfVar var_9C
  loc_BCD2BB: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BCD2C0: FLdRfVar var_9C
  loc_BCD2C3: Erase
  loc_BCD2C4: ILdRf Me
  loc_BCD2C7: CastAd
  loc_BCD2CA: FStAdFunc var_98
  loc_BCD2CD: FLdRfVar var_98
  loc_BCD2D0: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BCD2D5: FFree1Ad var_98
  loc_BCD2D8: LitI4 0
  loc_BCD2DD: LitI4 6
  loc_BCD2E2: FLdRfVar var_9C
  loc_BCD2E5: Redim
  loc_BCD2EF: FLdPr Me
  loc_BCD2F2: VCallAd Control_ID_ExorImpuMsk
  loc_BCD2F5: CVarAd
  loc_BCD2F9: ParmAry1St
  loc_BCD2FF: FLdPr Me
  loc_BCD302: VCallAd Control_ID_ExpeImpuTxt
  loc_BCD305: CVarAd
  loc_BCD309: ParmAry1St
  loc_BCD30F: FLdPr Me
  loc_BCD312: VCallAd Control_ID_CodiCucoMsk
  loc_BCD315: CVarAd
  loc_BCD319: ParmAry1St
  loc_BCD31F: FLdPr Me
  loc_BCD322: VCallAd Control_ID_CucuPersTxt
  loc_BCD325: CVarAd
  loc_BCD329: ParmAry1St
  loc_BCD32F: FLdPr Me
  loc_BCD332: VCallAd Control_ID_ImpoDebiTxt
  loc_BCD335: CVarAd
  loc_BCD339: ParmAry1St
  loc_BCD33F: FLdPr Me
  loc_BCD342: VCallAd Control_ID_DetaDebiTxt
  loc_BCD345: CVarAd
  loc_BCD349: ParmAry1St
  loc_BCD34F: FLdPr Me
  loc_BCD352: VCallAd Control_ID_CodiOrgaMsk
  loc_BCD355: CVarAd
  loc_BCD359: ParmAry1St
  loc_BCD35F: FLdRfVar var_9C
  loc_BCD362: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BCD367: FLdRfVar var_9C
  loc_BCD36A: Erase
  loc_BCD36B: LitStr "Municipalidad de Guaymallén"
  loc_BCD36E: LitStr "Municipalidad de General Alvear"
  loc_BCD371: EqStr
  loc_BCD373: BranchF loc_BCD40A
  loc_BCD376: FLdPr Me
  loc_BCD379: VCallAd Control_ID_CodiCucoMsk
  loc_BCD37C: FStAdFunc var_98
  loc_BCD37F: FLdPr var_98
  loc_BCD382: LateIdLdVar var_AC DispID_22 0
  loc_BCD389: CStrVarTmp
  loc_BCD38A: FStStrNoPop var_90
  loc_BCD38D: LitStr "211010100"
  loc_BCD390: EqStr
  loc_BCD392: FFree1Str var_90
  loc_BCD395: FFree1Ad var_98
  loc_BCD398: FFree1Var var_AC = ""
  loc_BCD39B: BranchF loc_BCD3B7
  loc_BCD39E: LitVar_FALSE
  loc_BCD3A2: PopAdLdVar
  loc_BCD3A3: FLdPr Me
  loc_BCD3A6: VCallAd Control_ID_CodiCucoMsk
  loc_BCD3A9: FStAdFunc var_98
  loc_BCD3AC: FLdPr var_98
  loc_BCD3AF: LateIdSt
  loc_BCD3B4: FFree1Ad var_98
  loc_BCD3B7: LitI4 0
  loc_BCD3BC: LitI4 2
  loc_BCD3C1: FLdRfVar var_9C
  loc_BCD3C4: Redim
  loc_BCD3CE: FLdPr Me
  loc_BCD3D1: VCallAd Control_ID_TifaDeveCbo
  loc_BCD3D4: CVarAd
  loc_BCD3D8: ParmAry1St
  loc_BCD3DE: FLdPr Me
  loc_BCD3E1: VCallAd Control_ID_SufaDeveTxt
  loc_BCD3E4: CVarAd
  loc_BCD3E8: ParmAry1St
  loc_BCD3EE: FLdPr Me
  loc_BCD3F1: VCallAd Control_ID_NufaDeveTxt
  loc_BCD3F4: CVarAd
  loc_BCD3F8: ParmAry1St
  loc_BCD3FE: FLdRfVar var_9C
  loc_BCD401: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BCD406: FLdRfVar var_9C
  loc_BCD409: Erase
  loc_BCD40A: Branch loc_BCD436
  loc_BCD40D: LitVar_Missing var_10C
  loc_BCD410: LitVar_Missing var_FC
  loc_BCD413: LitVar_Missing var_D8
  loc_BCD416: LitI4 0
  loc_BCD41B: LitVarStr var_C4, "No existen registros."
  loc_BCD420: FStVarCopyObj var_AC
  loc_BCD423: FLdRfVar var_AC
  loc_BCD426: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BCD42B: FFreeVar var_AC = "": var_D8 = "": var_FC = ""
  loc_BCD436: Branch loc_BCE0D4
  loc_BCD439: ILdRf var_94
  loc_BCD43C: LitStr "btnEliminar"
  loc_BCD43F: EqStr
  loc_BCD441: BranchF loc_BCD9B6
  loc_BCD444: LitStr "btnEliminar"
  loc_BCD447: FLdPr Me
  loc_BCD44A: MemStStrCopy
  loc_BCD44E: FLdRfVar var_B0
  loc_BCD451: FLdPr Me
  loc_BCD454: MemLdRfVar from_stack_1.global_56
  loc_BCD457: NewIfNullPr clsdebito
  loc_BCD45A: from_stack_1 = clsdebito.RecordCount
  loc_BCD45F: ILdRf var_B0
  loc_BCD462: LitI4 0
  loc_BCD467: GtI4
  loc_BCD468: BranchF loc_BCD9B3
  loc_BCD46B: FLdRfVar var_AC
  loc_BCD46E: FLdRfVar var_C8
  loc_BCD471: LitVarStr var_C4, "NumeDebi"
  loc_BCD476: PopAdLdVar
  loc_BCD477: FLdRfVar var_B4
  loc_BCD47A: FLdRfVar var_98
  loc_BCD47D: FLdPr Me
  loc_BCD480: MemLdRfVar from_stack_1.global_56
  loc_BCD483: NewIfNullPr clsdebito
  loc_BCD486: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCD48B: FLdPr var_98
  loc_BCD48E:  = Me.Fields
  loc_BCD493: FLdPr var_B4
  loc_BCD496: from_stack_2 = Me.Item(from_stack_1)
  loc_BCD49B: FLdPr var_C8
  loc_BCD49E:  = Me.Value
  loc_BCD4A3: FLdRfVar var_90
  loc_BCD4A6: FLdPr Me
  loc_BCD4A9: MemLdRfVar from_stack_1.global_80
  loc_BCD4AC: NewIfNullRf
  loc_BCD4B0: FLdPr Me
  loc_BCD4B3: MemLdRfVar from_stack_1.global_92
  loc_BCD4B6: NewIfNullRf
  loc_BCD4BA: FLdRfVar var_AC
  loc_BCD4BD: CI2Var
  loc_BCD4BE: ImpAdLdI2 MemVar_C3D064
  loc_BCD4C1: FLdPr Me
  loc_BCD4C4: MemLdRfVar from_stack_1.global_56
  loc_BCD4C7: NewIfNullPr clsdebito
  loc_BCD4CA: from_stack_5v = clsdebito.ValidaEliminar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BCD4CF: ILdRf var_90
  loc_BCD4D2: FLdPr Me
  loc_BCD4D5: MemStStrCopy
  loc_BCD4D9: FFree1Str var_90
  loc_BCD4DC: FFreeAd var_98 = "": var_B4 = ""
  loc_BCD4E5: FFree1Var var_AC = ""
  loc_BCD4E8: FLdPr Me
  loc_BCD4EB: MemLdStr global_68
  loc_BCD4EE: LitStr vbNullString
  loc_BCD4F1: NeStr
  loc_BCD4F3: BranchF loc_BCD716
  loc_BCD4F6: LitI4 0
  loc_BCD4FB: FLdPr Me
  loc_BCD4FE: MemLdStr global_68
  loc_BCD501: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BCD506: FLdRfVar var_AC
  loc_BCD509: FLdRfVar var_C8
  loc_BCD50C: LitVarStr var_C4, "NumeDebi"
  loc_BCD511: PopAdLdVar
  loc_BCD512: FLdRfVar var_B4
  loc_BCD515: FLdRfVar var_98
  loc_BCD518: FLdPr Me
  loc_BCD51B: MemLdRfVar from_stack_1.global_56
  loc_BCD51E: NewIfNullPr clsdebito
  loc_BCD521: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCD526: FLdPr var_98
  loc_BCD529:  = Me.Fields
  loc_BCD52E: FLdPr var_B4
  loc_BCD531: from_stack_2 = Me.Item(from_stack_1)
  loc_BCD536: FLdPr var_C8
  loc_BCD539:  = Me.Value
  loc_BCD53E: FLdRfVar var_90
  loc_BCD541: FLdPr Me
  loc_BCD544: MemLdRfVar from_stack_1.global_80
  loc_BCD547: NewIfNullRf
  loc_BCD54B: FLdPr Me
  loc_BCD54E: MemLdRfVar from_stack_1.global_92
  loc_BCD551: NewIfNullRf
  loc_BCD555: FLdRfVar var_AC
  loc_BCD558: CI2Var
  loc_BCD559: ImpAdLdI2 MemVar_C3D064
  loc_BCD55C: FLdPr Me
  loc_BCD55F: MemLdRfVar from_stack_1.global_56
  loc_BCD562: NewIfNullPr clsdebito
  loc_BCD565: from_stack_5v = clsdebito.ValidaAnular(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BCD56A: ILdRf var_90
  loc_BCD56D: FLdPr Me
  loc_BCD570: MemStStrCopy
  loc_BCD574: FFree1Str var_90
  loc_BCD577: FFreeAd var_98 = "": var_B4 = ""
  loc_BCD580: FFree1Var var_AC = ""
  loc_BCD583: FLdPr Me
  loc_BCD586: VCallAd Control_ID_tlbABMS
  loc_BCD589: FStAdFunc var_EC
  loc_BCD58C: LitNothing
  loc_BCD58E: CastAd
  loc_BCD591: FStAdFunc var_C8
  loc_BCD594: FLdRfVar var_C8
  loc_BCD597: FLdZeroAd var_EC
  loc_BCD59A: FStAdFuncNoPop
  loc_BCD59D: CastAd
  loc_BCD5A0: FStAdFunc var_B4
  loc_BCD5A3: FLdRfVar var_B4
  loc_BCD5A6: FLdPr Me
  loc_BCD5A9: MemLdRfVar from_stack_1.global_68
  loc_BCD5AC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BCD5B1: FStI2 var_8A
  loc_BCD5B4: FFreeAd var_98 = "": var_B4 = "": var_C8 = ""
  loc_BCD5BF: FLdI2 var_8A
  loc_BCD5C2: NotI4
  loc_BCD5C3: BranchF loc_BCD713
  loc_BCD5C6: FLdRfVar var_AC
  loc_BCD5C9: FLdRfVar var_C8
  loc_BCD5CC: LitVarStr var_C4, "NumeDebi"
  loc_BCD5D1: PopAdLdVar
  loc_BCD5D2: FLdRfVar var_B4
  loc_BCD5D5: FLdRfVar var_98
  loc_BCD5D8: FLdPr Me
  loc_BCD5DB: MemLdRfVar from_stack_1.global_56
  loc_BCD5DE: NewIfNullPr clsdebito
  loc_BCD5E1: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCD5E6: FLdPr var_98
  loc_BCD5E9:  = Me.Fields
  loc_BCD5EE: FLdPr var_B4
  loc_BCD5F1: from_stack_2 = Me.Item(from_stack_1)
  loc_BCD5F6: FLdPr var_C8
  loc_BCD5F9:  = Me.Value
  loc_BCD5FE: LitI2_Byte 0
  loc_BCD600: PopTmpLdAd2 var_160
  loc_BCD603: LitI2_Byte &HFF
  loc_BCD605: PopTmpLdAd2 var_15E
  loc_BCD608: LitVarStr var_E8, "¿Desea ANULAR el Débito número: "
  loc_BCD60D: FLdRfVar var_AC
  loc_BCD610: ConcatVar var_D8
  loc_BCD614: LitVarStr var_14C, "?"
  loc_BCD619: ConcatVar var_FC
  loc_BCD61D: CStrVarVal var_90
  loc_BCD621: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BCD626: CI4UI1
  loc_BCD627: LitI4 6
  loc_BCD62C: EqI4
  loc_BCD62D: FFree1Str var_90
  loc_BCD630: FFreeAd var_98 = "": var_B4 = ""
  loc_BCD639: FFreeVar var_AC = "": var_D8 = ""
  loc_BCD642: BranchF loc_BCD713
  loc_BCD645: LitI2_Byte 3
  loc_BCD647: FLdPr Me
  loc_BCD64A: MemStUI1
  loc_BCD64E: ILdRf Me
  loc_BCD651: CastAd
  loc_BCD654: FStAdFunc var_98
  loc_BCD657: FLdRfVar var_98
  loc_BCD65A: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BCD65F: FFree1Ad var_98
  loc_BCD662: LitI4 0
  loc_BCD667: LitI4 0
  loc_BCD66C: FLdRfVar var_9C
  loc_BCD66F: Redim
  loc_BCD679: FLdPr Me
  loc_BCD67C: VCallAd Control_ID_dgdABMS
  loc_BCD67F: CVarAd
  loc_BCD683: ParmAry1St
  loc_BCD689: FLdRfVar var_9C
  loc_BCD68C: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BCD691: FLdRfVar var_9C
  loc_BCD694: Erase
  loc_BCD695: ILdRf Me
  loc_BCD698: CastAd
  loc_BCD69B: FStAdFunc var_98
  loc_BCD69E: FLdRfVar var_98
  loc_BCD6A1: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BCD6A6: FFree1Ad var_98
  loc_BCD6A9: LitI2_Byte 0
  loc_BCD6AB: PopTmpLdAd2 var_15E
  loc_BCD6AE: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_BCD6B3: CStrDate
  loc_BCD6B5: CVarStr var_AC
  loc_BCD6B8: PopAdLdVar
  loc_BCD6B9: FLdPr Me
  loc_BCD6BC: VCallAd Control_ID_FeanDebiMsk
  loc_BCD6BF: FStAdFunc var_98
  loc_BCD6C2: FLdPr var_98
  loc_BCD6C5: LateIdSt
  loc_BCD6CA: FFree1Ad var_98
  loc_BCD6CD: FFree1Var var_AC = ""
  loc_BCD6D0: LitI4 0
  loc_BCD6D5: LitI4 1
  loc_BCD6DA: FLdRfVar var_9C
  loc_BCD6DD: Redim
  loc_BCD6E7: FLdPr Me
  loc_BCD6EA: VCallAd Control_ID_FeanDebiMsk
  loc_BCD6ED: CVarAd
  loc_BCD6F1: ParmAry1St
  loc_BCD6F7: FLdPr Me
  loc_BCD6FA: VCallAd Control_ID_BajaMotiTxt
  loc_BCD6FD: CVarAd
  loc_BCD701: ParmAry1St
  loc_BCD707: FLdRfVar var_9C
  loc_BCD70A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BCD70F: FLdRfVar var_9C
  loc_BCD712: Erase
  loc_BCD713: Branch loc_BCD9B3
  loc_BCD716: FLdRfVar var_AC
  loc_BCD719: FLdRfVar var_C8
  loc_BCD71C: LitVarStr var_C4, "NumeDebi"
  loc_BCD721: PopAdLdVar
  loc_BCD722: FLdRfVar var_B4
  loc_BCD725: FLdRfVar var_98
  loc_BCD728: FLdPr Me
  loc_BCD72B: MemLdRfVar from_stack_1.global_56
  loc_BCD72E: NewIfNullPr clsdebito
  loc_BCD731: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCD736: FLdPr var_98
  loc_BCD739:  = Me.Fields
  loc_BCD73E: FLdPr var_B4
  loc_BCD741: from_stack_2 = Me.Item(from_stack_1)
  loc_BCD746: FLdPr var_C8
  loc_BCD749:  = Me.Value
  loc_BCD74E: LitI2_Byte 0
  loc_BCD750: PopTmpLdAd2 var_160
  loc_BCD753: LitI2_Byte &HFF
  loc_BCD755: PopTmpLdAd2 var_15E
  loc_BCD758: LitVarStr var_E8, "¿Desea ELIMINAR el Débito número: "
  loc_BCD75D: FLdRfVar var_AC
  loc_BCD760: ConcatVar var_D8
  loc_BCD764: LitVarStr var_14C, "?"
  loc_BCD769: ConcatVar var_FC
  loc_BCD76D: CStrVarVal var_90
  loc_BCD771: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BCD776: CI4UI1
  loc_BCD777: LitI4 6
  loc_BCD77C: EqI4
  loc_BCD77D: FFree1Str var_90
  loc_BCD780: FFreeAd var_98 = "": var_B4 = ""
  loc_BCD789: FFreeVar var_AC = "": var_D8 = ""
  loc_BCD792: BranchF loc_BCD7A6
  loc_BCD795: FLdPr Me
  loc_BCD798: MemLdRfVar from_stack_1.global_56
  loc_BCD79B: NewIfNullPr clsdebito
  loc_BCD79E: Call clsdebito.Eliminar()
  loc_BCD7A3: Branch loc_BCD9B3
  loc_BCD7A6: FLdRfVar var_AC
  loc_BCD7A9: FLdRfVar var_C8
  loc_BCD7AC: LitVarStr var_C4, "NumeDebi"
  loc_BCD7B1: PopAdLdVar
  loc_BCD7B2: FLdRfVar var_B4
  loc_BCD7B5: FLdRfVar var_98
  loc_BCD7B8: FLdPr Me
  loc_BCD7BB: MemLdRfVar from_stack_1.global_56
  loc_BCD7BE: NewIfNullPr clsdebito
  loc_BCD7C1: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCD7C6: FLdPr var_98
  loc_BCD7C9:  = Me.Fields
  loc_BCD7CE: FLdPr var_B4
  loc_BCD7D1: from_stack_2 = Me.Item(from_stack_1)
  loc_BCD7D6: FLdPr var_C8
  loc_BCD7D9:  = Me.Value
  loc_BCD7DE: FLdRfVar var_90
  loc_BCD7E1: FLdPr Me
  loc_BCD7E4: MemLdRfVar from_stack_1.global_80
  loc_BCD7E7: NewIfNullRf
  loc_BCD7EB: FLdPr Me
  loc_BCD7EE: MemLdRfVar from_stack_1.global_92
  loc_BCD7F1: NewIfNullRf
  loc_BCD7F5: FLdRfVar var_AC
  loc_BCD7F8: CI2Var
  loc_BCD7F9: ImpAdLdI2 MemVar_C3D064
  loc_BCD7FC: FLdPr Me
  loc_BCD7FF: MemLdRfVar from_stack_1.global_56
  loc_BCD802: NewIfNullPr clsdebito
  loc_BCD805: from_stack_5v = clsdebito.ValidaAnular(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BCD80A: ILdRf var_90
  loc_BCD80D: FLdPr Me
  loc_BCD810: MemStStrCopy
  loc_BCD814: FFree1Str var_90
  loc_BCD817: FFreeAd var_98 = "": var_B4 = ""
  loc_BCD820: FFree1Var var_AC = ""
  loc_BCD823: FLdPr Me
  loc_BCD826: VCallAd Control_ID_tlbABMS
  loc_BCD829: FStAdFunc var_EC
  loc_BCD82C: LitNothing
  loc_BCD82E: CastAd
  loc_BCD831: FStAdFunc var_C8
  loc_BCD834: FLdRfVar var_C8
  loc_BCD837: FLdZeroAd var_EC
  loc_BCD83A: FStAdFuncNoPop
  loc_BCD83D: CastAd
  loc_BCD840: FStAdFunc var_B4
  loc_BCD843: FLdRfVar var_B4
  loc_BCD846: FLdPr Me
  loc_BCD849: MemLdRfVar from_stack_1.global_68
  loc_BCD84C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BCD851: FStI2 var_8A
  loc_BCD854: FFreeAd var_98 = "": var_B4 = "": var_C8 = ""
  loc_BCD85F: FLdI2 var_8A
  loc_BCD862: NotI4
  loc_BCD863: BranchF loc_BCD9B3
  loc_BCD866: FLdRfVar var_AC
  loc_BCD869: FLdRfVar var_C8
  loc_BCD86C: LitVarStr var_C4, "NumeDebi"
  loc_BCD871: PopAdLdVar
  loc_BCD872: FLdRfVar var_B4
  loc_BCD875: FLdRfVar var_98
  loc_BCD878: FLdPr Me
  loc_BCD87B: MemLdRfVar from_stack_1.global_56
  loc_BCD87E: NewIfNullPr clsdebito
  loc_BCD881: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCD886: FLdPr var_98
  loc_BCD889:  = Me.Fields
  loc_BCD88E: FLdPr var_B4
  loc_BCD891: from_stack_2 = Me.Item(from_stack_1)
  loc_BCD896: FLdPr var_C8
  loc_BCD899:  = Me.Value
  loc_BCD89E: LitI2_Byte 0
  loc_BCD8A0: PopTmpLdAd2 var_160
  loc_BCD8A3: LitI2_Byte &HFF
  loc_BCD8A5: PopTmpLdAd2 var_15E
  loc_BCD8A8: LitVarStr var_E8, "¿Desea ANULAR el Débito número: "
  loc_BCD8AD: FLdRfVar var_AC
  loc_BCD8B0: ConcatVar var_D8
  loc_BCD8B4: LitVarStr var_14C, "?"
  loc_BCD8B9: ConcatVar var_FC
  loc_BCD8BD: CStrVarVal var_90
  loc_BCD8C1: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BCD8C6: CI4UI1
  loc_BCD8C7: LitI4 6
  loc_BCD8CC: EqI4
  loc_BCD8CD: FFree1Str var_90
  loc_BCD8D0: FFreeAd var_98 = "": var_B4 = ""
  loc_BCD8D9: FFreeVar var_AC = "": var_D8 = ""
  loc_BCD8E2: BranchF loc_BCD9B3
  loc_BCD8E5: LitI2_Byte 3
  loc_BCD8E7: FLdPr Me
  loc_BCD8EA: MemStUI1
  loc_BCD8EE: ILdRf Me
  loc_BCD8F1: CastAd
  loc_BCD8F4: FStAdFunc var_98
  loc_BCD8F7: FLdRfVar var_98
  loc_BCD8FA: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BCD8FF: FFree1Ad var_98
  loc_BCD902: LitI4 0
  loc_BCD907: LitI4 0
  loc_BCD90C: FLdRfVar var_9C
  loc_BCD90F: Redim
  loc_BCD919: FLdPr Me
  loc_BCD91C: VCallAd Control_ID_dgdABMS
  loc_BCD91F: CVarAd
  loc_BCD923: ParmAry1St
  loc_BCD929: FLdRfVar var_9C
  loc_BCD92C: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BCD931: FLdRfVar var_9C
  loc_BCD934: Erase
  loc_BCD935: ILdRf Me
  loc_BCD938: CastAd
  loc_BCD93B: FStAdFunc var_98
  loc_BCD93E: FLdRfVar var_98
  loc_BCD941: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BCD946: FFree1Ad var_98
  loc_BCD949: LitI2_Byte 0
  loc_BCD94B: PopTmpLdAd2 var_15E
  loc_BCD94E: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_BCD953: CStrDate
  loc_BCD955: CVarStr var_AC
  loc_BCD958: PopAdLdVar
  loc_BCD959: FLdPr Me
  loc_BCD95C: VCallAd Control_ID_FeanDebiMsk
  loc_BCD95F: FStAdFunc var_98
  loc_BCD962: FLdPr var_98
  loc_BCD965: LateIdSt
  loc_BCD96A: FFree1Ad var_98
  loc_BCD96D: FFree1Var var_AC = ""
  loc_BCD970: LitI4 0
  loc_BCD975: LitI4 1
  loc_BCD97A: FLdRfVar var_9C
  loc_BCD97D: Redim
  loc_BCD987: FLdPr Me
  loc_BCD98A: VCallAd Control_ID_FeanDebiMsk
  loc_BCD98D: CVarAd
  loc_BCD991: ParmAry1St
  loc_BCD997: FLdPr Me
  loc_BCD99A: VCallAd Control_ID_BajaMotiTxt
  loc_BCD99D: CVarAd
  loc_BCD9A1: ParmAry1St
  loc_BCD9A7: FLdRfVar var_9C
  loc_BCD9AA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BCD9AF: FLdRfVar var_9C
  loc_BCD9B2: Erase
  loc_BCD9B3: Branch loc_BCE0D4
  loc_BCD9B6: ILdRf var_94
  loc_BCD9B9: LitStr "btnGuardar"
  loc_BCD9BC: EqStr
  loc_BCD9BE: BranchF loc_BCDF90
  loc_BCD9C1: LitStr "btnGuardar"
  loc_BCD9C4: FLdPr Me
  loc_BCD9C7: MemStStrCopy
  loc_BCD9CB: LitStr vbNullString
  loc_BCD9CE: FLdPr Me
  loc_BCD9D1: MemStStrCopy
  loc_BCD9D5: LitI2_Byte 0
  loc_BCD9D7: PopTmpLdAd2 var_15E
  loc_BCD9DA: Call FechDebiMsk_UnknownEvent_8()
  loc_BCD9DF: FLdPr Me
  loc_BCD9E2: MemLdStr global_68
  loc_BCD9E5: LitStr vbNullString
  loc_BCD9E8: NeStr
  loc_BCD9EA: BranchF loc_BCD9EE
  loc_BCD9ED: ExitProcHresult
  loc_BCD9EE: LitI2_Byte 0
  loc_BCD9F0: PopTmpLdAd2 var_15E
  loc_BCD9F3: Call ExorImpuMsk_UnknownEvent_8()
  loc_BCD9F8: FLdPr Me
  loc_BCD9FB: MemLdStr global_68
  loc_BCD9FE: LitStr vbNullString
  loc_BCDA01: NeStr
  loc_BCDA03: BranchF loc_BCDA07
  loc_BCDA06: ExitProcHresult
  loc_BCDA07: LitI2_Byte 0
  loc_BCDA09: PopTmpLdAd2 var_15E
  loc_BCDA0C: Call ExpeImpuTxt_Validate(from_stack_1v)
  loc_BCDA11: FLdPr Me
  loc_BCDA14: MemLdStr global_68
  loc_BCDA17: LitStr vbNullString
  loc_BCDA1A: NeStr
  loc_BCDA1C: BranchF loc_BCDA20
  loc_BCDA1F: ExitProcHresult
  loc_BCDA20: LitI2_Byte 0
  loc_BCDA22: PopTmpLdAd2 var_15E
  loc_BCDA25: Call CodiCucoMsk_UnknownEvent_8()
  loc_BCDA2A: FLdPr Me
  loc_BCDA2D: MemLdStr global_68
  loc_BCDA30: LitStr vbNullString
  loc_BCDA33: NeStr
  loc_BCDA35: BranchF loc_BCDA39
  loc_BCDA38: ExitProcHresult
  loc_BCDA39: LitI2_Byte 0
  loc_BCDA3B: PopTmpLdAd2 var_15E
  loc_BCDA3E: Call CucuPersTxt_Validate(from_stack_1v)
  loc_BCDA43: FLdPr Me
  loc_BCDA46: MemLdStr global_68
  loc_BCDA49: LitStr vbNullString
  loc_BCDA4C: NeStr
  loc_BCDA4E: BranchF loc_BCDA52
  loc_BCDA51: ExitProcHresult
  loc_BCDA52: LitI2_Byte 0
  loc_BCDA54: PopTmpLdAd2 var_15E
  loc_BCDA57: Call TifaDeveCbo_Validate(from_stack_1v)
  loc_BCDA5C: FLdPr Me
  loc_BCDA5F: MemLdStr global_68
  loc_BCDA62: LitStr vbNullString
  loc_BCDA65: NeStr
  loc_BCDA67: BranchF loc_BCDA6B
  loc_BCDA6A: ExitProcHresult
  loc_BCDA6B: LitI2_Byte 0
  loc_BCDA6D: PopTmpLdAd2 var_15E
  loc_BCDA70: Call SufaDeveTxt_Validate(from_stack_1v)
  loc_BCDA75: FLdPr Me
  loc_BCDA78: MemLdStr global_68
  loc_BCDA7B: LitStr vbNullString
  loc_BCDA7E: NeStr
  loc_BCDA80: BranchF loc_BCDA84
  loc_BCDA83: ExitProcHresult
  loc_BCDA84: LitI2_Byte 0
  loc_BCDA86: PopTmpLdAd2 var_15E
  loc_BCDA89: Call NufaDeveTxt_Validate(from_stack_1v)
  loc_BCDA8E: FLdPr Me
  loc_BCDA91: MemLdStr global_68
  loc_BCDA94: LitStr vbNullString
  loc_BCDA97: NeStr
  loc_BCDA99: BranchF loc_BCDA9D
  loc_BCDA9C: ExitProcHresult
  loc_BCDA9D: LitI2_Byte 0
  loc_BCDA9F: PopTmpLdAd2 var_15E
  loc_BCDAA2: Call ImpoDebiTxt_Validate(from_stack_1v)
  loc_BCDAA7: FLdPr Me
  loc_BCDAAA: MemLdStr global_68
  loc_BCDAAD: LitStr vbNullString
  loc_BCDAB0: NeStr
  loc_BCDAB2: BranchF loc_BCDAB6
  loc_BCDAB5: ExitProcHresult
  loc_BCDAB6: LitI2_Byte 0
  loc_BCDAB8: PopTmpLdAd2 var_15E
  loc_BCDABB: Call CodiOrgaMsk_UnknownEvent_8()
  loc_BCDAC0: FLdPr Me
  loc_BCDAC3: MemLdStr global_68
  loc_BCDAC6: LitStr vbNullString
  loc_BCDAC9: NeStr
  loc_BCDACB: BranchF loc_BCDACF
  loc_BCDACE: ExitProcHresult
  loc_BCDACF: LitI2_Byte 0
  loc_BCDAD1: PopTmpLdAd2 var_15E
  loc_BCDAD4: Call DetaDebiTxt_Validate(from_stack_1v)
  loc_BCDAD9: FLdPr Me
  loc_BCDADC: MemLdStr global_68
  loc_BCDADF: LitStr vbNullString
  loc_BCDAE2: NeStr
  loc_BCDAE4: BranchF loc_BCDAE8
  loc_BCDAE7: ExitProcHresult
  loc_BCDAE8: LitI2_Byte 0
  loc_BCDAEA: PopTmpLdAd2 var_15E
  loc_BCDAED: Call FeanDebiMsk_UnknownEvent_8()
  loc_BCDAF2: FLdPr Me
  loc_BCDAF5: MemLdStr global_68
  loc_BCDAF8: LitStr vbNullString
  loc_BCDAFB: NeStr
  loc_BCDAFD: BranchF loc_BCDB01
  loc_BCDB00: ExitProcHresult
  loc_BCDB01: LitI2_Byte 0
  loc_BCDB03: PopTmpLdAd2 var_15E
  loc_BCDB06: Call BajaMotiTxt_Validate(from_stack_1v)
  loc_BCDB0B: FLdPr Me
  loc_BCDB0E: MemLdStr global_68
  loc_BCDB11: LitStr vbNullString
  loc_BCDB14: NeStr
  loc_BCDB16: BranchF loc_BCDB1A
  loc_BCDB19: ExitProcHresult
  loc_BCDB1A: FLdPr Me
  loc_BCDB1D: MemLdUI1 global_64
  loc_BCDB21: FStUI1 var_162
  loc_BCDB25: FLdUI1
  loc_BCDB29: LitI2_Byte 1
  loc_BCDB2B: EqI2
  loc_BCDB2C: BranchF loc_BCDD3E
  loc_BCDB2F: FLdPr Me
  loc_BCDB32: VCallAd Control_ID_FechDebiMsk
  loc_BCDB35: FStAdFunc var_98
  loc_BCDB38: FLdPr var_98
  loc_BCDB3B: LateIdLdVar var_AC DispID_15 0
  loc_BCDB42: PopAd
  loc_BCDB44: FLdPr Me
  loc_BCDB47: VCallAd Control_ID_ExorImpuMsk
  loc_BCDB4A: FStAdFunc var_B4
  loc_BCDB4D: FLdPr var_B4
  loc_BCDB50: LateIdLdVar var_D8 DispID_15 0
  loc_BCDB57: CStrVarTmp
  loc_BCDB58: FStStrNoPop var_90
  loc_BCDB5B: ImpAdCallI2 Trim$()
  loc_BCDB60: FStStr var_1BC
  loc_BCDB63: FLdRfVar var_168
  loc_BCDB66: FLdPr Me
  loc_BCDB69: VCallAd Control_ID_ExpeImpuTxt
  loc_BCDB6C: FStAdFunc var_C8
  loc_BCDB6F: FLdPr var_C8
  loc_BCDB72:  = Me.Text
  loc_BCDB77: ILdRf var_168
  loc_BCDB7A: ImpAdCallI2 Trim$()
  loc_BCDB7F: FStStr var_1C0
  loc_BCDB82: FLdPr Me
  loc_BCDB85: VCallAd Control_ID_CodiCucoMsk
  loc_BCDB88: FStAdFunc var_EC
  loc_BCDB8B: FLdPr var_EC
  loc_BCDB8E: LateIdLdVar var_FC DispID_22 0
  loc_BCDB95: PopAd
  loc_BCDB97: FLdRfVar var_170
  loc_BCDB9A: FLdPr Me
  loc_BCDB9D: VCallAd Control_ID_CucuPersTxt
  loc_BCDBA0: FStAdFunc var_16C
  loc_BCDBA3: FLdPr var_16C
  loc_BCDBA6:  = Me.Text
  loc_BCDBAB: FLdRfVar var_178
  loc_BCDBAE: FLdPr Me
  loc_BCDBB1: VCallAd Control_ID_ImpoDebiTxt
  loc_BCDBB4: FStAdFunc var_174
  loc_BCDBB7: FLdPr var_174
  loc_BCDBBA:  = Me.Text
  loc_BCDBBF: FLdRfVar var_180
  loc_BCDBC2: FLdPr Me
  loc_BCDBC5: VCallAd Control_ID_TifaDeveCbo
  loc_BCDBC8: FStAdFunc var_17C
  loc_BCDBCB: FLdPr var_17C
  loc_BCDBCE:  = Me.Text
  loc_BCDBD3: FLdRfVar var_188
  loc_BCDBD6: FLdPr Me
  loc_BCDBD9: VCallAd Control_ID_SufaDeveTxt
  loc_BCDBDC: FStAdFunc var_184
  loc_BCDBDF: FLdPr var_184
  loc_BCDBE2:  = Me.Text
  loc_BCDBE7: FLdRfVar var_190
  loc_BCDBEA: FLdPr Me
  loc_BCDBED: VCallAd Control_ID_NufaDeveTxt
  loc_BCDBF0: FStAdFunc var_18C
  loc_BCDBF3: FLdPr var_18C
  loc_BCDBF6:  = Me.Text
  loc_BCDBFB: FLdPr Me
  loc_BCDBFE: VCallAd Control_ID_CodiOrgaMsk
  loc_BCDC01: FStAdFunc var_194
  loc_BCDC04: FLdPr var_194
  loc_BCDC07: LateIdLdVar var_10C DispID_22 0
  loc_BCDC0E: PopAd
  loc_BCDC10: FLdRfVar var_19C
  loc_BCDC13: FLdPr Me
  loc_BCDC16: VCallAd Control_ID_DetaDebiTxt
  loc_BCDC19: FStAdFunc var_198
  loc_BCDC1C: FLdPr var_198
  loc_BCDC1F:  = Me.Text
  loc_BCDC24: FLdPr Me
  loc_BCDC27: VCallAd Control_ID_NumeOrpaMsk
  loc_BCDC2A: FStAdFunc var_1A0
  loc_BCDC2D: FLdPr var_1A0
  loc_BCDC30: LateIdLdVar var_11C DispID_22 0
  loc_BCDC37: PopAd
  loc_BCDC39: FLdRfVar var_15E
  loc_BCDC3C: LitI2_Byte &HFF
  loc_BCDC3E: FLdRfVar var_11C
  loc_BCDC41: CStrVarTmp
  loc_BCDC42: FStStrNoPop var_1B8
  loc_BCDC45: ILdRf var_19C
  loc_BCDC48: FLdRfVar var_10C
  loc_BCDC4B: CStrVarTmp
  loc_BCDC4C: FStStrNoPop var_1B4
  loc_BCDC4F: ILdRf var_190
  loc_BCDC52: ILdRf var_188
  loc_BCDC55: ILdRf var_180
  loc_BCDC58: ILdRf var_178
  loc_BCDC5B: CR8Str
  loc_BCDC5D: PopFPR8
  loc_BCDC5E: ILdRf var_170
  loc_BCDC61: FLdPr Me
  loc_BCDC64: MemLdI2 iCodiRete
  loc_BCDC67: FLdRfVar var_FC
  loc_BCDC6A: CStrVarTmp
  loc_BCDC6B: FStStrNoPop var_1B0
  loc_BCDC6E: FLdZeroAd var_1C0
  loc_BCDC71: FStStrNoPop var_1AC
  loc_BCDC74: FLdZeroAd var_1BC
  loc_BCDC77: FStStrNoPop var_1A8
  loc_BCDC7A: FLdRfVar var_AC
  loc_BCDC7D: CStrVarTmp
  loc_BCDC7E: FStStrNoPop var_1A4
  loc_BCDC81: ImpAdLdI2 MemVar_C3D064
  loc_BCDC84: FLdPr Me
  loc_BCDC87: MemLdRfVar from_stack_1.global_56
  loc_BCDC8A: NewIfNullPr clsdebito
  loc_BCDC8D: from_stack_16v = clsdebito.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BCDC92: FLdI2 var_15E
  loc_BCDC95: FStI2 var_164
  loc_BCDC98: FFreeStr var_90 = "": var_168 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_170 = "": var_178 = "": var_180 = "": var_188 = "": var_190 = "": var_1B4 = "": var_19C = "": var_1B8 = "": var_1BC = ""
  loc_BCDCBB: FFreeAd var_98 = "": var_B4 = "": var_C8 = "": var_EC = "": var_16C = "": var_174 = "": var_17C = "": var_184 = "": var_18C = "": var_194 = "": var_198 = ""
  loc_BCDCD6: FFreeVar var_AC = "": var_D8 = "": var_FC = "": var_10C = ""
  loc_BCDCE3: FLdI2 var_164
  loc_BCDCE6: LitI2_Byte 0
  loc_BCDCE8: GtI2
  loc_BCDCE9: BranchF loc_BCDD3B
  loc_BCDCEC: ImpAdLdRf MemVar_C3DA5C
  loc_BCDCEF: NewIfNullAd
  loc_BCDCF2: CastAd
  loc_BCDCF5: FStAdFuncNoPop
  loc_BCDCF8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BCDCFD: FFree1Ad var_98
  loc_BCDD00: FLdI2 var_164
  loc_BCDD03: CStrUI1
  loc_BCDD05: CVarStr var_AC
  loc_BCDD08: PopAdLdVar
  loc_BCDD09: ImpAdLdRf MemVar_C3DA5C
  loc_BCDD0C: NewIfNullPr rptVolantedeDebito
  loc_BCDD0F: VCallAd Control_ID_NumeDebiMsk
  loc_BCDD12: FStAdFunc var_98
  loc_BCDD15: FLdPr var_98
  loc_BCDD18: LateIdSt
  loc_BCDD1D: FFree1Ad var_98
  loc_BCDD20: FFree1Var var_AC = ""
  loc_BCDD23: LitVar_Missing var_E8
  loc_BCDD26: PopAdLdVar
  loc_BCDD27: LitVarI4
  loc_BCDD2F: PopAdLdVar
  loc_BCDD30: ImpAdLdRf MemVar_C3DA5C
  loc_BCDD33: NewIfNullPr rptVolantedeDebito
  loc_BCDD36: rptVolantedeDebito.Show from_stack_1, from_stack_2
  loc_BCDD3B: Branch loc_BCDF88
  loc_BCDD3E: FLdUI1
  loc_BCDD42: LitI2_Byte 2
  loc_BCDD44: EqI2
  loc_BCDD45: BranchF loc_BCDEE6
  loc_BCDD48: FLdPr Me
  loc_BCDD4B: VCallAd Control_ID_FechDebiMsk
  loc_BCDD4E: FStAdFunc var_98
  loc_BCDD51: FLdPr var_98
  loc_BCDD54: LateIdLdVar var_AC DispID_15 0
  loc_BCDD5B: PopAd
  loc_BCDD5D: FLdPr Me
  loc_BCDD60: VCallAd Control_ID_ExorImpuMsk
  loc_BCDD63: FStAdFunc var_B4
  loc_BCDD66: FLdPr var_B4
  loc_BCDD69: LateIdLdVar var_D8 DispID_15 0
  loc_BCDD70: CStrVarTmp
  loc_BCDD71: FStStrNoPop var_90
  loc_BCDD74: ImpAdCallI2 Trim$()
  loc_BCDD79: FStStr var_1BC
  loc_BCDD7C: FLdRfVar var_168
  loc_BCDD7F: FLdPr Me
  loc_BCDD82: VCallAd Control_ID_ExpeImpuTxt
  loc_BCDD85: FStAdFunc var_C8
  loc_BCDD88: FLdPr var_C8
  loc_BCDD8B:  = Me.Text
  loc_BCDD90: ILdRf var_168
  loc_BCDD93: ImpAdCallI2 Trim$()
  loc_BCDD98: FStStr var_1C0
  loc_BCDD9B: FLdPr Me
  loc_BCDD9E: VCallAd Control_ID_CodiCucoMsk
  loc_BCDDA1: FStAdFunc var_EC
  loc_BCDDA4: FLdPr var_EC
  loc_BCDDA7: LateIdLdVar var_FC DispID_22 0
  loc_BCDDAE: PopAd
  loc_BCDDB0: FLdRfVar var_170
  loc_BCDDB3: FLdPr Me
  loc_BCDDB6: VCallAd Control_ID_CucuPersTxt
  loc_BCDDB9: FStAdFunc var_16C
  loc_BCDDBC: FLdPr var_16C
  loc_BCDDBF:  = Me.Text
  loc_BCDDC4: FLdRfVar var_178
  loc_BCDDC7: FLdPr Me
  loc_BCDDCA: VCallAd Control_ID_TifaDeveCbo
  loc_BCDDCD: FStAdFunc var_174
  loc_BCDDD0: FLdPr var_174
  loc_BCDDD3:  = Me.Text
  loc_BCDDD8: FLdRfVar var_180
  loc_BCDDDB: FLdPr Me
  loc_BCDDDE: VCallAd Control_ID_SufaDeveTxt
  loc_BCDDE1: FStAdFunc var_17C
  loc_BCDDE4: FLdPr var_17C
  loc_BCDDE7:  = Me.Text
  loc_BCDDEC: FLdRfVar var_188
  loc_BCDDEF: FLdPr Me
  loc_BCDDF2: VCallAd Control_ID_NufaDeveTxt
  loc_BCDDF5: FStAdFunc var_184
  loc_BCDDF8: FLdPr var_184
  loc_BCDDFB:  = Me.Text
  loc_BCDE00: FLdRfVar var_190
  loc_BCDE03: FLdPr Me
  loc_BCDE06: VCallAd Control_ID_ImpoDebiTxt
  loc_BCDE09: FStAdFunc var_18C
  loc_BCDE0C: FLdPr var_18C
  loc_BCDE0F:  = Me.Text
  loc_BCDE14: FLdPr Me
  loc_BCDE17: VCallAd Control_ID_CodiOrgaMsk
  loc_BCDE1A: FStAdFunc var_194
  loc_BCDE1D: FLdPr var_194
  loc_BCDE20: LateIdLdVar var_10C DispID_22 0
  loc_BCDE27: PopAd
  loc_BCDE29: FLdRfVar var_19C
  loc_BCDE2C: FLdPr Me
  loc_BCDE2F: VCallAd Control_ID_DetaDebiTxt
  loc_BCDE32: FStAdFunc var_198
  loc_BCDE35: FLdPr var_198
  loc_BCDE38:  = Me.Text
  loc_BCDE3D: FLdPr Me
  loc_BCDE40: VCallAd Control_ID_NumeOrpaMsk
  loc_BCDE43: FStAdFunc var_1A0
  loc_BCDE46: FLdPr var_1A0
  loc_BCDE49: LateIdLdVar var_11C DispID_22 0
  loc_BCDE50: CStrVarTmp
  loc_BCDE51: FStStrNoPop var_1B8
  loc_BCDE54: ILdRf var_19C
  loc_BCDE57: FLdRfVar var_10C
  loc_BCDE5A: CStrVarTmp
  loc_BCDE5B: FStStrNoPop var_1B4
  loc_BCDE5E: ILdRf var_190
  loc_BCDE61: CR8Str
  loc_BCDE63: PopFPR8
  loc_BCDE64: ILdRf var_188
  loc_BCDE67: ILdRf var_180
  loc_BCDE6A: ILdRf var_178
  loc_BCDE6D: ILdRf var_170
  loc_BCDE70: FLdRfVar var_FC
  loc_BCDE73: CStrVarTmp
  loc_BCDE74: FStStrNoPop var_1B0
  loc_BCDE77: FLdZeroAd var_1C0
  loc_BCDE7A: FStStrNoPop var_1AC
  loc_BCDE7D: FLdZeroAd var_1BC
  loc_BCDE80: FStStrNoPop var_1A8
  loc_BCDE83: FLdRfVar var_AC
  loc_BCDE86: CStrVarTmp
  loc_BCDE87: FStStrNoPop var_1A4
  loc_BCDE8A: FLdPr Me
  loc_BCDE8D: MemLdRfVar from_stack_1.global_56
  loc_BCDE90: NewIfNullPr clsdebito
  loc_BCDE93: Call clsdebito.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v)
  loc_BCDE98: FFreeStr var_90 = "": var_168 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_170 = "": var_178 = "": var_180 = "": var_188 = "": var_190 = "": var_1B4 = "": var_19C = "": var_1B8 = "": var_1BC = ""
  loc_BCDEBB: FFreeAd var_98 = "": var_B4 = "": var_C8 = "": var_EC = "": var_16C = "": var_174 = "": var_17C = "": var_184 = "": var_18C = "": var_194 = "": var_198 = ""
  loc_BCDED6: FFreeVar var_AC = "": var_D8 = "": var_FC = "": var_10C = ""
  loc_BCDEE3: Branch loc_BCDF88
  loc_BCDEE6: FLdUI1
  loc_BCDEEA: LitI2_Byte 3
  loc_BCDEEC: EqI2
  loc_BCDEED: BranchF loc_BCDF88
  loc_BCDEF0: FLdRfVar var_D8
  loc_BCDEF3: FLdRfVar var_C8
  loc_BCDEF6: LitVarStr var_C4, "NumeDebi"
  loc_BCDEFB: PopAdLdVar
  loc_BCDEFC: FLdRfVar var_B4
  loc_BCDEFF: FLdRfVar var_98
  loc_BCDF02: FLdPr Me
  loc_BCDF05: MemLdRfVar from_stack_1.global_56
  loc_BCDF08: NewIfNullPr clsdebito
  loc_BCDF0B: from_stack_1v = clsdebito.RsFrmGet()
  loc_BCDF10: FLdPr var_98
  loc_BCDF13:  = Me.Fields
  loc_BCDF18: FLdPr var_B4
  loc_BCDF1B: from_stack_2 = Me.Item(from_stack_1)
  loc_BCDF20: FLdPr var_C8
  loc_BCDF23:  = Me.Value
  loc_BCDF28: FLdPr Me
  loc_BCDF2B: VCallAd Control_ID_FeanDebiMsk
  loc_BCDF2E: FStAdFunc var_EC
  loc_BCDF31: FLdPr var_EC
  loc_BCDF34: LateIdLdVar var_AC DispID_15 0
  loc_BCDF3B: PopAd
  loc_BCDF3D: FLdRfVar var_90
  loc_BCDF40: FLdPr Me
  loc_BCDF43: VCallAd Control_ID_BajaMotiTxt
  loc_BCDF46: FStAdFunc var_16C
  loc_BCDF49: FLdPr var_16C
  loc_BCDF4C:  = Me.Text
  loc_BCDF51: ILdRf var_90
  loc_BCDF54: FLdRfVar var_AC
  loc_BCDF57: CStrVarTmp
  loc_BCDF58: FStStrNoPop var_168
  loc_BCDF5B: FLdRfVar var_D8
  loc_BCDF5E: CI2Var
  loc_BCDF5F: FLdPr Me
  loc_BCDF62: MemLdRfVar from_stack_1.global_56
  loc_BCDF65: NewIfNullPr clsdebito
  loc_BCDF68: Call clsdebito.Anular(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BCDF6D: FFreeStr var_168 = ""
  loc_BCDF74: FFreeAd var_98 = "": var_B4 = "": var_EC = "": var_16C = ""
  loc_BCDF81: FFreeVar var_AC = ""
  loc_BCDF88: Call cmdCancelar_Click()
  loc_BCDF8D: Branch loc_BCE0D4
  loc_BCDF90: ILdRf var_94
  loc_BCDF93: LitStr "btnCancelar"
  loc_BCDF96: EqStr
  loc_BCDF98: BranchF loc_BCDFAD
  loc_BCDF9B: LitStr "btnCancelar"
  loc_BCDF9E: FLdPr Me
  loc_BCDFA1: MemStStrCopy
  loc_BCDFA5: Call cmdCancelar_Click()
  loc_BCDFAA: Branch loc_BCE0D4
  loc_BCDFAD: ILdRf var_94
  loc_BCDFB0: LitStr "btnPrimero"
  loc_BCDFB3: EqStr
  loc_BCDFB5: BranchF loc_BCDFC9
  loc_BCDFB8: FLdPr Me
  loc_BCDFBB: MemLdRfVar from_stack_1.global_56
  loc_BCDFBE: NewIfNullPr clsdebito
  loc_BCDFC1: Call clsdebito.MoveFirst()
  loc_BCDFC6: Branch loc_BCE0D4
  loc_BCDFC9: ILdRf var_94
  loc_BCDFCC: LitStr "btnAnterior"
  loc_BCDFCF: EqStr
  loc_BCDFD1: BranchF loc_BCDFE5
  loc_BCDFD4: FLdPr Me
  loc_BCDFD7: MemLdRfVar from_stack_1.global_56
  loc_BCDFDA: NewIfNullPr clsdebito
  loc_BCDFDD: Call clsdebito.MovePrevious()
  loc_BCDFE2: Branch loc_BCE0D4
  loc_BCDFE5: ILdRf var_94
  loc_BCDFE8: LitStr "btnSiguiente"
  loc_BCDFEB: EqStr
  loc_BCDFED: BranchF loc_BCE001
  loc_BCDFF0: FLdPr Me
  loc_BCDFF3: MemLdRfVar from_stack_1.global_56
  loc_BCDFF6: NewIfNullPr clsdebito
  loc_BCDFF9: Call clsdebito.MoveNext()
  loc_BCDFFE: Branch loc_BCE0D4
  loc_BCE001: ILdRf var_94
  loc_BCE004: LitStr "btnUltimo"
  loc_BCE007: EqStr
  loc_BCE009: BranchF loc_BCE01D
  loc_BCE00C: FLdPr Me
  loc_BCE00F: MemLdRfVar from_stack_1.global_56
  loc_BCE012: NewIfNullPr clsdebito
  loc_BCE015: Call clsdebito.MoveLast()
  loc_BCE01A: Branch loc_BCE0D4
  loc_BCE01D: ILdRf var_94
  loc_BCE020: LitStr "btnFiltrar"
  loc_BCE023: EqStr
  loc_BCE025: BranchF loc_BCE02B
  loc_BCE028: Branch loc_BCE0D4
  loc_BCE02B: ILdRf var_94
  loc_BCE02E: LitStr "btnBuscar"
  loc_BCE031: EqStr
  loc_BCE033: BranchF loc_BCE039
  loc_BCE036: Branch loc_BCE0D4
  loc_BCE039: ILdRf var_94
  loc_BCE03C: LitStr "btnImprimir"
  loc_BCE03F: EqStr
  loc_BCE041: BranchF loc_BCE07D
  loc_BCE044: LitStr "btnImprimir"
  loc_BCE047: FLdPr Me
  loc_BCE04A: MemStStrCopy
  loc_BCE04E: ImpAdLdRf MemVar_C3DA5C
  loc_BCE051: NewIfNullAd
  loc_BCE054: CastAd
  loc_BCE057: FStAdFuncNoPop
  loc_BCE05A: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BCE05F: FFree1Ad var_98
  loc_BCE062: LitVar_Missing var_E8
  loc_BCE065: PopAdLdVar
  loc_BCE066: LitVarI4
  loc_BCE06E: PopAdLdVar
  loc_BCE06F: ImpAdLdRf MemVar_C3DA5C
  loc_BCE072: NewIfNullPr rptVolantedeDebito
  loc_BCE075: rptVolantedeDebito.Show from_stack_1, from_stack_2
  loc_BCE07A: Branch loc_BCE0D4
  loc_BCE07D: ILdRf var_94
  loc_BCE080: LitStr "btnAyuda"
  loc_BCE083: EqStr
  loc_BCE085: BranchF loc_BCE0B4
  loc_BCE088: LitVar_Missing var_10C
  loc_BCE08B: LitVar_Missing var_FC
  loc_BCE08E: LitVar_Missing var_D8
  loc_BCE091: LitI4 0
  loc_BCE096: LitVarStr var_C4, "Opcion no disponible en esta version."
  loc_BCE09B: FStVarCopyObj var_AC
  loc_BCE09E: FLdRfVar var_AC
  loc_BCE0A1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BCE0A6: FFreeVar var_AC = "": var_D8 = "": var_FC = ""
  loc_BCE0B1: Branch loc_BCE0D4
  loc_BCE0B4: ILdRf var_94
  loc_BCE0B7: LitStr "btnSalir"
  loc_BCE0BA: EqStr
  loc_BCE0BC: BranchF loc_BCE0D4
  loc_BCE0BF: ILdRf Me
  loc_BCE0C2: FStAdNoPop
  loc_BCE0C6: ImpAdLdRf MemVar_C44F9C
  loc_BCE0C9: NewIfNullPr Me
  loc_BCE0CC: Me.Global.Unload from_stack_1
  loc_BCE0D1: FFree1Ad var_98
  loc_BCE0D4: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9E1180
  'Data Table: 4E878C
  loc_9E107C: LitI2_Byte 0
  loc_9E107E: CUI1I2
  loc_9E1080: FLdPr Me
  loc_9E1083: MemStUI1
  loc_9E1087: ILdRf Me
  loc_9E108A: CastAd
  loc_9E108D: FStAdFunc var_88
  loc_9E1090: FLdRfVar var_88
  loc_9E1093: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9E1098: FFree1Ad var_88
  loc_9E109B: LitI4 0
  loc_9E10A0: LitI4 0
  loc_9E10A5: FLdRfVar var_8C
  loc_9E10A8: Redim
  loc_9E10B2: FLdPr Me
  loc_9E10B5: VCallAd Control_ID_dgdABMS
  loc_9E10B8: CVarAd
  loc_9E10BC: ParmAry1St
  loc_9E10C2: FLdRfVar var_8C
  loc_9E10C5: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E10CA: FLdRfVar var_8C
  loc_9E10CD: Erase
  loc_9E10CE: FLdPr Me
  loc_9E10D1: MemLdRfVar from_stack_1.global_56
  loc_9E10D4: NewIfNullAd
  loc_9E10D7: FStAd var_A0 
  loc_9E10DB: FLdRfVar var_A0
  loc_9E10DE: CVarRef
  loc_9E10E3: ILdRf Me
  loc_9E10E6: CastAd
  loc_9E10E9: FStAdFunc var_88
  loc_9E10EC: FLdRfVar var_88
  loc_9E10EF: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9E10F4: ILdRf var_A0
  loc_9E10F7: CastAd
  loc_9E10FA: FLdPr Me
  loc_9E10FD: MemStAdFunc
  loc_9E1101: FFreeAd var_88 = ""
  loc_9E1108: FLdRfVar var_B4
  loc_9E110B: FLdPr Me
  loc_9E110E: MemLdRfVar from_stack_1.global_56
  loc_9E1111: NewIfNullPr clsdebito
  loc_9E1114: from_stack_1 = clsdebito.RecordCount
  loc_9E1119: ILdRf var_B4
  loc_9E111C: LitI4 0
  loc_9E1121: EqI4
  loc_9E1122: BranchF loc_9E1139
  loc_9E1125: ILdRf Me
  loc_9E1128: CastAd
  loc_9E112B: FStAdFunc var_88
  loc_9E112E: FLdRfVar var_88
  loc_9E1131: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_9E1136: FFree1Ad var_88
  loc_9E1139: ILdRf Me
  loc_9E113C: CastAd
  loc_9E113F: FStAdFunc var_88
  loc_9E1142: FLdRfVar var_88
  loc_9E1145: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9E114A: FFree1Ad var_88
  loc_9E114D: FLdPr Me
  loc_9E1150: VCallAd Control_ID_dgdABMS
  loc_9E1153: FStAdFunc var_A0
  loc_9E1156: LitI4 0
  loc_9E115B: FStStrCopy var_B8
  loc_9E115E: FLdRfVar var_B8
  loc_9E1161: FLdPr Me
  loc_9E1164: MemLdStr global_72
  loc_9E1167: FLdZeroAd var_A0
  loc_9E116A: FStAdFunc var_88
  loc_9E116D: FLdRfVar var_88
  loc_9E1170: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9E1175: FFree1Str var_B8
  loc_9E1178: FFreeAd var_88 = ""
  loc_9E117F: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_GotFocus() '950148
  'Data Table: 4E878C
  loc_950134: FLdPr Me
  loc_950137: VCallAd Control_ID_BajaMotiTxt
  loc_95013A: CVarAd
  loc_95013E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950143: FFree1Var var_94 = ""
  loc_950146: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_Validate(Cancel As Boolean) '9BA378
  'Data Table: 4E878C
  loc_9BA2C4: FLdRfVar var_8A
  loc_9BA2C7: FLdPr Me
  loc_9BA2CA: VCallAd Control_ID_cmdCancelar
  loc_9BA2CD: FStAdFunc var_88
  loc_9BA2D0: FLdPr var_88
  loc_9BA2D3:  = Me.Value
  loc_9BA2D8: FLdI2 var_8A
  loc_9BA2DB: NotI4
  loc_9BA2DC: FLdRfVar var_92
  loc_9BA2DF: FLdPr Me
  loc_9BA2E2: VCallAd Control_ID_BajaMotiTxt
  loc_9BA2E5: FStAdFunc var_90
  loc_9BA2E8: FLdPr var_90
  loc_9BA2EB:  = Me.Enabled
  loc_9BA2F0: FLdI2 var_92
  loc_9BA2F3: AndI4
  loc_9BA2F4: FFreeAd var_88 = ""
  loc_9BA2FB: BranchF loc_9BA375
  loc_9BA2FE: FLdRfVar var_98
  loc_9BA301: FLdPr Me
  loc_9BA304: VCallAd Control_ID_BajaMotiTxt
  loc_9BA307: FStAdFunc var_88
  loc_9BA30A: FLdPr var_88
  loc_9BA30D:  = Me.Text
  loc_9BA312: LitI2_Byte 0
  loc_9BA314: PopTmpLdAd2 var_9A
  loc_9BA317: LitI2_Byte 0
  loc_9BA319: PopTmpLdAd2 var_92
  loc_9BA31C: LitI2_Byte 0
  loc_9BA31E: PopTmpLdAd2 var_8A
  loc_9BA321: ILdRf var_98
  loc_9BA324: LitStr "Motivo de Anulación"
  loc_9BA327: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BA32C: FStStrNoPop var_A0
  loc_9BA32F: FLdPr Me
  loc_9BA332: MemStStrCopy
  loc_9BA336: FFreeStr var_98 = ""
  loc_9BA33D: FFree1Ad var_88
  loc_9BA340: FLdPr Me
  loc_9BA343: MemLdStr global_68
  loc_9BA346: LitStr vbNullString
  loc_9BA349: NeStr
  loc_9BA34B: BranchF loc_9BA375
  loc_9BA34E: LitI4 0
  loc_9BA353: FLdPr Me
  loc_9BA356: MemLdStr global_68
  loc_9BA359: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9BA35E: FLdPr Me
  loc_9BA361: VCallAd Control_ID_BajaMotiTxt
  loc_9BA364: CVarAd
  loc_9BA368: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9BA36D: FFree1Var var_B0 = ""
  loc_9BA370: LitI2_Byte &HFF
  loc_9BA372: IStI2 Cancel
  loc_9BA375: ExitProcHresult
  loc_9BA376: FnAbsI4
End Sub

Private Sub ExorImpuMsk_UnknownEvent_0 '950850
  'Data Table: 4E878C
  loc_95083C: FLdPr Me
  loc_95083F: VCallAd Control_ID_ExorImpuMsk
  loc_950842: CVarAd
  loc_950846: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95084B: FFree1Var var_94 = ""
  loc_95084E: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_UnknownEvent_8 '9C5538
  'Data Table: 4E878C
  loc_9C5474: FLdRfVar var_8A
  loc_9C5477: FLdPr Me
  loc_9C547A: VCallAd Control_ID_cmdCancelar
  loc_9C547D: FStAdFunc var_88
  loc_9C5480: FLdPr var_88
  loc_9C5483:  = Me.Value
  loc_9C5488: FLdI2 var_8A
  loc_9C548B: NotI4
  loc_9C548C: FLdPr Me
  loc_9C548F: VCallAd Control_ID_ExorImpuMsk
  loc_9C5492: FStAdFunc var_90
  loc_9C5495: FLdPr var_90
  loc_9C5498: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C549F: CBoolVar
  loc_9C54A1: AndI4
  loc_9C54A2: FFreeAd var_88 = ""
  loc_9C54A9: FFree1Var var_A0 = ""
  loc_9C54AC: BranchF loc_9C5535
  loc_9C54AF: FLdPr Me
  loc_9C54B2: VCallAd Control_ID_ExorImpuMsk
  loc_9C54B5: FStAdFunc var_88
  loc_9C54B8: FLdPr var_88
  loc_9C54BB: LateIdLdVar var_A0 DispID_22 0
  loc_9C54C2: PopAd
  loc_9C54C4: LitI2_Byte 0
  loc_9C54C6: PopTmpLdAd2 var_A8
  loc_9C54C9: LitI2_Byte 0
  loc_9C54CB: PopTmpLdAd2 var_A6
  loc_9C54CE: LitI2_Byte 0
  loc_9C54D0: PopTmpLdAd2 var_8A
  loc_9C54D3: FLdRfVar var_A0
  loc_9C54D6: CStrVarTmp
  loc_9C54D7: FStStrNoPop var_A4
  loc_9C54DA: LitStr "Expediente Original"
  loc_9C54DD: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C54E2: FStStrNoPop var_AC
  loc_9C54E5: FLdPr Me
  loc_9C54E8: MemStStrCopy
  loc_9C54EC: FFreeStr var_A4 = ""
  loc_9C54F3: FFree1Ad var_88
  loc_9C54F6: FFree1Var var_A0 = ""
  loc_9C54F9: FLdPr Me
  loc_9C54FC: VCallAd Control_ID_ExorImpuMsk
  loc_9C54FF: FStAdFunc var_B4
  loc_9C5502: LitNothing
  loc_9C5504: CastAd
  loc_9C5507: FStAdFunc var_B0
  loc_9C550A: FLdRfVar var_B0
  loc_9C550D: FLdZeroAd var_B4
  loc_9C5510: FStAdFuncNoPop
  loc_9C5513: CastAd
  loc_9C5516: FStAdFunc var_90
  loc_9C5519: FLdRfVar var_90
  loc_9C551C: FLdPr Me
  loc_9C551F: MemLdRfVar from_stack_1.global_68
  loc_9C5522: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C5527: IStI2 Cancel
  loc_9C552A: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9C5535: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_KeyPress(KeyAscii As Integer) '9841A4
  'Data Table: 4E878C
  loc_984170: ILdI2 KeyAscii
  loc_984173: CI4UI1
  loc_984174: FLdRfVar var_94
  loc_984177: ImpAdCallFPR4  = Chr()
  loc_98417C: FLdRfVar var_94
  loc_98417F: FLdRfVar var_A4
  loc_984182: ImpAdCallFPR4  = Ucase()
  loc_984187: FLdRfVar var_A4
  loc_98418A: CStrVarVal var_A8
  loc_98418E: ImpAdCallI2 Asc()
  loc_984193: IStI2 KeyAscii
  loc_984196: FFree1Str var_A8
  loc_984199: FFreeVar var_94 = ""
  loc_9841A0: ExitProcHresult
End Sub

Public Function iCodiReteGet() '4EA3D0
  iCodiReteGet = iCodiRete
End Function

Public Sub iCodiRetePut(Value) '4EA3DF
  iCodiRete = Value
End Sub

Private Function Proc_109_56_A6E988() 'A6E988
  'Data Table: 4E878C
  loc_A6E5F8: FLdPr Me
  loc_A6E5FB: MemLdRfVar from_stack_1.global_80
  loc_A6E5FE: NewIfNullRf
  loc_A6E602: ImpAdLdI2 MemVar_C3D064
  loc_A6E605: ImpAdCallFPR4 Proc_259_23_AE2098(, )
  loc_A6E60A: LitStr "Municipalidad de Guaymallén"
  loc_A6E60D: FStStrCopy var_88
  loc_A6E610: ILdRf var_88
  loc_A6E613: LitStr "Municipalidad de Maipú"
  loc_A6E616: EqStr
  loc_A6E618: BranchF loc_A6E68C
  loc_A6E61B: FLdPr Me
  loc_A6E61E: VCallAd Control_ID_CodiCucoMsk
  loc_A6E621: FStAdFunc var_8C
  loc_A6E624: FLdPr var_8C
  loc_A6E627: LateIdLdVar var_9C DispID_22 0
  loc_A6E62E: CStrVarTmp
  loc_A6E62F: FStStrNoPop var_A0
  loc_A6E632: LitStr "1111060000"
  loc_A6E635: EqStr
  loc_A6E637: FLdPr Me
  loc_A6E63A: VCallAd Control_ID_CodiCucoMsk
  loc_A6E63D: FStAdFunc var_A4
  loc_A6E640: FLdPr var_A4
  loc_A6E643: LateIdLdVar var_B4 DispID_22 0
  loc_A6E64A: CStrVarTmp
  loc_A6E64B: FStStrNoPop var_BC
  loc_A6E64E: FLdRfVar var_B8
  loc_A6E651: FLdPr Me
  loc_A6E654: MemLdRfVar from_stack_1.global_80
  loc_A6E657: NewIfNullPr tblparaconta
  loc_A6E65A: from_stack_1v = tblparaconta.CcrpPacoGet()
  loc_A6E65F: ILdRf var_B8
  loc_A6E662: EqStr
  loc_A6E664: OrI4
  loc_A6E665: FFreeStr var_A0 = "": var_BC = ""
  loc_A6E66E: FFreeAd var_8C = ""
  loc_A6E675: FFreeVar var_9C = ""
  loc_A6E67C: BranchF loc_A6E689
  loc_A6E67F: LitStr vbNullString
  loc_A6E682: FLdPr Me
  loc_A6E685: MemStStrCopy
  loc_A6E689: Branch loc_A6E93F
  loc_A6E68C: ILdRf var_88
  loc_A6E68F: LitStr "Municipalidad de Rivadavia"
  loc_A6E692: EqStr
  loc_A6E694: BranchF loc_A6E718
  loc_A6E697: FLdPr Me
  loc_A6E69A: VCallAd Control_ID_CodiCucoMsk
  loc_A6E69D: FStAdFunc var_8C
  loc_A6E6A0: FLdPr var_8C
  loc_A6E6A3: LateIdLdVar var_9C DispID_22 0
  loc_A6E6AA: CStrVarTmp
  loc_A6E6AB: FStStrNoPop var_A0
  loc_A6E6AE: LitStr "2115020000"
  loc_A6E6B1: EqStr
  loc_A6E6B3: FLdPr Me
  loc_A6E6B6: VCallAd Control_ID_CodiCucoMsk
  loc_A6E6B9: FStAdFunc var_A4
  loc_A6E6BC: FLdPr var_A4
  loc_A6E6BF: LateIdLdVar var_B4 DispID_22 0
  loc_A6E6C6: CStrVarTmp
  loc_A6E6C7: FStStrNoPop var_B8
  loc_A6E6CA: LitStr "2114030000"
  loc_A6E6CD: EqStr
  loc_A6E6CF: OrI4
  loc_A6E6D0: FLdPr Me
  loc_A6E6D3: VCallAd Control_ID_CodiCucoMsk
  loc_A6E6D6: FStAdFunc var_C0
  loc_A6E6D9: FLdPr var_C0
  loc_A6E6DC: LateIdLdVar var_D0 DispID_22 0
  loc_A6E6E3: CStrVarTmp
  loc_A6E6E4: FStStrNoPop var_BC
  loc_A6E6E7: LitStr "2116010000"
  loc_A6E6EA: EqStr
  loc_A6E6EC: OrI4
  loc_A6E6ED: FFreeStr var_A0 = "": var_B8 = ""
  loc_A6E6F6: FFreeAd var_8C = "": var_A4 = ""
  loc_A6E6FF: FFreeVar var_9C = "": var_B4 = ""
  loc_A6E708: BranchF loc_A6E715
  loc_A6E70B: LitStr "La Cuenta Contable esta bloqueada. Consulte..."
  loc_A6E70E: FLdPr Me
  loc_A6E711: MemStStrCopy
  loc_A6E715: Branch loc_A6E93F
  loc_A6E718: ILdRf var_88
  loc_A6E71B: LitStr "Municipalidad de San Carlos"
  loc_A6E71E: EqStr
  loc_A6E720: BranchF loc_A6E758
  loc_A6E723: FLdPr Me
  loc_A6E726: VCallAd Control_ID_CodiCucoMsk
  loc_A6E729: FStAdFunc var_8C
  loc_A6E72C: FLdPr var_8C
  loc_A6E72F: LateIdLdVar var_9C DispID_22 0
  loc_A6E736: CStrVarTmp
  loc_A6E737: FStStrNoPop var_A0
  loc_A6E73A: LitStr "1115000000"
  loc_A6E73D: EqStr
  loc_A6E73F: FFree1Str var_A0
  loc_A6E742: FFree1Ad var_8C
  loc_A6E745: FFree1Var var_9C = ""
  loc_A6E748: BranchF loc_A6E755
  loc_A6E74B: LitStr vbNullString
  loc_A6E74E: FLdPr Me
  loc_A6E751: MemStStrCopy
  loc_A6E755: Branch loc_A6E93F
  loc_A6E758: ILdRf var_88
  loc_A6E75B: LitStr "Municipalidad de Tunuyán"
  loc_A6E75E: EqStr
  loc_A6E760: BranchF loc_A6E7C1
  loc_A6E763: FLdPr Me
  loc_A6E766: VCallAd Control_ID_CodiCucoMsk
  loc_A6E769: FStAdFunc var_8C
  loc_A6E76C: FLdPr var_8C
  loc_A6E76F: LateIdLdVar var_9C DispID_22 0
  loc_A6E776: CStrVarTmp
  loc_A6E777: FStStrNoPop var_A0
  loc_A6E77A: LitStr "11101020100"
  loc_A6E77D: EqStr
  loc_A6E77F: FLdPr Me
  loc_A6E782: VCallAd Control_ID_CodiCucoMsk
  loc_A6E785: FStAdFunc var_A4
  loc_A6E788: FLdPr var_A4
  loc_A6E78B: LateIdLdVar var_B4 DispID_22 0
  loc_A6E792: CStrVarTmp
  loc_A6E793: FStStrNoPop var_B8
  loc_A6E796: LitStr "11102000000"
  loc_A6E799: EqStr
  loc_A6E79B: OrI4
  loc_A6E79C: FFreeStr var_A0 = ""
  loc_A6E7A3: FFreeAd var_8C = ""
  loc_A6E7AA: FFreeVar var_9C = ""
  loc_A6E7B1: BranchF loc_A6E7BE
  loc_A6E7B4: LitStr vbNullString
  loc_A6E7B7: FLdPr Me
  loc_A6E7BA: MemStStrCopy
  loc_A6E7BE: Branch loc_A6E93F
  loc_A6E7C1: ILdRf var_88
  loc_A6E7C4: LitStr "Municipalidad de General Alvear"
  loc_A6E7C7: EqStr
  loc_A6E7C9: BranchF loc_A6E816
  loc_A6E7CC: FLdPr Me
  loc_A6E7CF: VCallAd Control_ID_CodiCucoMsk
  loc_A6E7D2: FStAdFunc var_8C
  loc_A6E7D5: FLdPr var_8C
  loc_A6E7D8: LateIdLdVar var_9C DispID_22 0
  loc_A6E7DF: CStrVarTmp
  loc_A6E7E0: FStStrNoPop var_B8
  loc_A6E7E3: FLdRfVar var_A0
  loc_A6E7E6: FLdPr Me
  loc_A6E7E9: MemLdRfVar from_stack_1.global_80
  loc_A6E7EC: NewIfNullPr tblparaconta
  loc_A6E7EF: from_stack_1v = tblparaconta.TranPacoGet()
  loc_A6E7F4: ILdRf var_A0
  loc_A6E7F7: EqStr
  loc_A6E7F9: FFreeStr var_B8 = ""
  loc_A6E800: FFree1Ad var_8C
  loc_A6E803: FFree1Var var_9C = ""
  loc_A6E806: BranchF loc_A6E813
  loc_A6E809: LitStr vbNullString
  loc_A6E80C: FLdPr Me
  loc_A6E80F: MemStStrCopy
  loc_A6E813: Branch loc_A6E93F
  loc_A6E816: ILdRf var_88
  loc_A6E819: LitStr "Municipalidad de Santa Rosa"
  loc_A6E81C: EqStr
  loc_A6E81E: BranchF loc_A6E8AD
  loc_A6E821: FLdPr Me
  loc_A6E824: VCallAd Control_ID_CodiCucoMsk
  loc_A6E827: FStAdFunc var_8C
  loc_A6E82A: FLdPr var_8C
  loc_A6E82D: LateIdLdVar var_9C DispID_22 0
  loc_A6E834: CStrVarTmp
  loc_A6E835: FStStrNoPop var_B8
  loc_A6E838: FLdRfVar var_A0
  loc_A6E83B: FLdPr Me
  loc_A6E83E: MemLdRfVar from_stack_1.global_80
  loc_A6E841: NewIfNullPr tblparaconta
  loc_A6E844: from_stack_1v = tblparaconta.TranPacoGet()
  loc_A6E849: ILdRf var_A0
  loc_A6E84C: EqStr
  loc_A6E84E: FLdPr Me
  loc_A6E851: VCallAd Control_ID_CodiCucoMsk
  loc_A6E854: FStAdFunc var_A4
  loc_A6E857: FLdPr var_A4
  loc_A6E85A: LateIdLdVar var_B4 DispID_22 0
  loc_A6E861: CStrVarTmp
  loc_A6E862: FStStrNoPop var_D4
  loc_A6E865: FLdRfVar var_BC
  loc_A6E868: FLdPr Me
  loc_A6E86B: MemLdRfVar from_stack_1.global_80
  loc_A6E86E: NewIfNullPr tblparaconta
  loc_A6E871: from_stack_1v = tblparaconta.CcrpPacoGet()
  loc_A6E876: ILdRf var_BC
  loc_A6E879: EqStr
  loc_A6E87B: ImpAdLdI2 MemVar_C3D064
  loc_A6E87E: LitI2 2019
  loc_A6E881: LeI2
  loc_A6E882: AndI4
  loc_A6E883: OrI4
  loc_A6E884: FFreeStr var_B8 = "": var_A0 = "": var_D4 = ""
  loc_A6E88F: FFreeAd var_8C = ""
  loc_A6E896: FFreeVar var_9C = ""
  loc_A6E89D: BranchF loc_A6E8AA
  loc_A6E8A0: LitStr vbNullString
  loc_A6E8A3: FLdPr Me
  loc_A6E8A6: MemStStrCopy
  loc_A6E8AA: Branch loc_A6E93F
  loc_A6E8AD: ILdRf var_88
  loc_A6E8B0: LitStr "Municipalidad de Guaymallén"
  loc_A6E8B3: EqStr
  loc_A6E8B5: BranchF loc_A6E8ED
  loc_A6E8B8: FLdPr Me
  loc_A6E8BB: VCallAd Control_ID_CodiCucoMsk
  loc_A6E8BE: FStAdFunc var_8C
  loc_A6E8C1: FLdPr var_8C
  loc_A6E8C4: LateIdLdVar var_9C DispID_22 0
  loc_A6E8CB: CStrVarTmp
  loc_A6E8CC: FStStrNoPop var_A0
  loc_A6E8CF: LitStr "8102080000"
  loc_A6E8D2: EqStr
  loc_A6E8D4: FFree1Str var_A0
  loc_A6E8D7: FFree1Ad var_8C
  loc_A6E8DA: FFree1Var var_9C = ""
  loc_A6E8DD: BranchF loc_A6E8EA
  loc_A6E8E0: LitStr vbNullString
  loc_A6E8E3: FLdPr Me
  loc_A6E8E6: MemStStrCopy
  loc_A6E8EA: Branch loc_A6E93F
  loc_A6E8ED: ILdRf var_88
  loc_A6E8F0: LitStr "Municipalidad de La Paz"
  loc_A6E8F3: EqStr
  loc_A6E8F5: BranchF loc_A6E93F
  loc_A6E8F8: FLdPr Me
  loc_A6E8FB: VCallAd Control_ID_CodiCucoMsk
  loc_A6E8FE: FStAdFunc var_8C
  loc_A6E901: FLdPr var_8C
  loc_A6E904: LateIdLdVar var_9C DispID_22 0
  loc_A6E90B: CStrVarTmp
  loc_A6E90C: FStStrNoPop var_B8
  loc_A6E90F: FLdRfVar var_A0
  loc_A6E912: FLdPr Me
  loc_A6E915: MemLdRfVar from_stack_1.global_80
  loc_A6E918: NewIfNullPr tblparaconta
  loc_A6E91B: from_stack_1v = tblparaconta.TranPacoGet()
  loc_A6E920: ILdRf var_A0
  loc_A6E923: EqStr
  loc_A6E925: FFreeStr var_B8 = ""
  loc_A6E92C: FFree1Ad var_8C
  loc_A6E92F: FFree1Var var_9C = ""
  loc_A6E932: BranchF loc_A6E93F
  loc_A6E935: LitStr vbNullString
  loc_A6E938: FLdPr Me
  loc_A6E93B: MemStStrCopy
  loc_A6E93F: FLdPr Me
  loc_A6E942: VCallAd Control_ID_CodiCucoMsk
  loc_A6E945: FStAdFunc var_8C
  loc_A6E948: FLdPr var_8C
  loc_A6E94B: LateIdLdVar var_9C DispID_22 0
  loc_A6E952: CStrVarTmp
  loc_A6E953: FStStrNoPop var_B8
  loc_A6E956: FLdRfVar var_A0
  loc_A6E959: FLdPr Me
  loc_A6E95C: MemLdRfVar from_stack_1.global_80
  loc_A6E95F: NewIfNullPr tblparaconta
  loc_A6E962: from_stack_1v = tblparaconta.TranPacoGet()
  loc_A6E967: ILdRf var_A0
  loc_A6E96A: EqStr
  loc_A6E96C: FFreeStr var_B8 = ""
  loc_A6E973: FFree1Ad var_8C
  loc_A6E976: FFree1Var var_9C = ""
  loc_A6E979: BranchF loc_A6E986
  loc_A6E97C: LitStr vbNullString
  loc_A6E97F: FLdPr Me
  loc_A6E982: MemStStrCopy
  loc_A6E986: ExitProcHresult
End Function
