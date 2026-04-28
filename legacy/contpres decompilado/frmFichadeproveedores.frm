VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\Windows\SysWow64\TABCTL32.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmFichadeproveedores
  Caption = "Ficha de Proveedores"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmFichadeproveedores.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 13815
  ClientHeight = 9345
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TabDlg.SSTab SSTab
    Left = 120
    Top = 3960
    Width = 12975
    Height = 6255
    TabIndex = 1
    OleObjectBlob = "frmFichadeproveedores.frx":08CA
    Begin VB.CommandButton cmdSugerirPainProv
      Caption = "Sugerir Interbanking"
      Left = -72480
      Top = 2700
      Width = 1815
      Height = 375
      TabIndex = 32
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
    Begin VB.TextBox PainProvTxt
      Left = -67140
      Top = 2700
      Width = 3135
      Height = 420
      TabIndex = 34
      MaxLength = 20
      DataField = "PainProv"
    End
    Begin VB.CheckBox CccaProvChk
      Caption = "¿Cta Cte:?"
      Left = -66480
      Top = 1860
      Width = 1455
      Height = 375
      TabIndex = 31
      Alignment = 1 'Right Justify
      DataField = "CccaProv"
    End
    Begin VB.TextBox CubaProvTxt
      Left = 3480
      Top = 3420
      Width = 3975
      Height = 420
      TabIndex = 15
      MaxLength = 22
      DataField = "CubaProv"
    End
    Begin VB.Frame FrameAnulacion
      Caption = " Anulación del Proveedor "
      Left = -74880
      Top = 3540
      Width = 12735
      Height = 1215
      TabIndex = 35
      Begin VB.TextBox MoanProvTxt
        Left = 2385
        Top = 480
        Width = 10095
        Height = 420
        TabIndex = 37
        MaxLength = 70
        DataField = "BajaMoti"
      End
      Begin VB.Label Label32
        Caption = "Motivo de Anulación:"
        Left = 120
        Top = 480
        Width = 2190
        Height = 300
        TabIndex = 36
        AutoSize = -1  'True
      End
    End
    Begin VB.ComboBox DetaDivteCbo
      Left = 3480
      Top = 2220
      Width = 6495
      Height = 360
      TabIndex = 10
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataField = "DetaDivte"
    End
    Begin VB.TextBox DofiProvTxt
      Left = 3480
      Top = 1620
      Width = 9135
      Height = 420
      TabIndex = 8
      MaxLength = 70
      DataField = "DofiProv"
    End
    Begin VB.Frame FrameContrato
      Caption = " Contrato "
      Left = -74760
      Top = 1140
      Width = 7815
      Height = 855
      TabIndex = 23
      Begin VB.TextBox TotcProvTxt
        Left = 5760
        Top = 360
        Width = 1815
        Height = 360
        TabIndex = 30
        MaxLength = 14
        DataField = "TotcProv"
        DataFormat = 80
        DataFormat = 38
      End
      Begin MSMask.MaskEdBox FedcProvMsk
        Left = 1110
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 26
        OleObjectBlob = "frmFichadeproveedores.frx":0F18
        DataField = "FedcProv"
      End
      Begin MSMask.MaskEdBox FehcProvMsk
        Left = 3480
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 28
        OleObjectBlob = "frmFichadeproveedores.frx":0FC8
        DataField = "FehcProv"
      End
      Begin VB.Label Label4
        Caption = "Desde:"
        Left = 240
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 25
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
        Caption = "Total:"
        Left = 5040
        Top = 360
        Width = 585
        Height = 300
        TabIndex = 29
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 2640
        Top = 360
        Width = 705
        Height = 300
        TabIndex = 27
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
    Begin VB.CheckBox CedeProvChk
      Caption = "¿Cede el cheque a otra persona?:"
      Left = 6000
      Top = 2820
      Width = 3915
      Height = 300
      TabIndex = 13
      Alignment = 1 'Right Justify
      DataField = "CedeProv"
    End
    Begin VB.CheckBox LocaProvChk
      Caption = "¿Es locador de servicios?"
      Left = -74880
      Top = 540
      Width = 3015
      Height = 300
      TabIndex = 22
      Alignment = 1 'Right Justify
      DataField = "LocaProv"
    End
    Begin VB.Frame FrameConstancia
      Caption = " Constancia de Inscripción "
      Left = 120
      Top = 4380
      Width = 12735
      Height = 975
      TabIndex = 16
      Begin VB.TextBox ExpeProvTxt
        Left = 9600
        Top = 360
        Width = 2175
        Height = 360
        TabIndex = 21
        MaxLength = 15
        DataField = "ExpeProv"
      End
      Begin MSMask.MaskEdBox FeviProvMsk
        Left = 4665
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 18
        OleObjectBlob = "frmFichadeproveedores.frx":1078
        DataField = "FeviProv"
      End
      Begin VB.Label Label10
        Caption = "(AFIP, CAI, etc.)"
        Left = 6120
        Top = 480
        Width = 1140
        Height = 195
        TabIndex = 19
        AutoSize = -1  'True
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
      Begin VB.Label Label21
        Caption = "Vigencia de la Constancia de Inscripción:"
        Left = 240
        Top = 390
        Width = 4335
        Height = 300
        TabIndex = 17
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
      Begin VB.Label LabelExpediente
        Caption = "Expediente:"
        Left = 8280
        Top = 390
        Width = 1260
        Height = 300
        TabIndex = 20
        AutoSize = -1  'True
      End
    End
    Begin VB.TextBox DetaProvTxt
      Left = 3480
      Top = 420
      Width = 9135
      Height = 420
      TabIndex = 4
      MaxLength = 70
      DataField = "DetaProv"
    End
    Begin VB.TextBox FantProvTxt
      Left = 3480
      Top = 1020
      Width = 9135
      Height = 420
      TabIndex = 6
      MaxLength = 70
      DataField = "FantProv"
    End
    Begin VB.TextBox CucuPersTxt
      Left = 1440
      Top = 420
      Width = 1815
      Height = 420
      TabIndex = 3
      MaxLength = 11
      DataField = "CucuPers"
    End
    Begin VB.ComboBox FactProvCbo
      Left = 3480
      Top = 2790
      Width = 1215
      Height = 360
      TabIndex = 12
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataField = "FactProv"
    End
    Begin VB.Label Label15
      Caption = "Referencia pago Interbanking:"
      Left = -70440
      Top = 2700
      Width = 3225
      Height = 300
      TabIndex = 33
      AutoSize = -1  'True
    End
    Begin VB.Label Label14
      Caption = "CBU:"
      Left = 2760
      Top = 3420
      Width = 570
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Ciudad (o Provincia):"
      Left = 1080
      Top = 2250
      Width = 2160
      Height = 300
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Domicilio Fiscal:"
      Left = 1680
      Top = 1680
      Width = 1680
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Nombre de Fantasía:"
      Left = 1080
      Top = 1080
      Width = 2220
      Height = 300
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "CUIT/CUIL:"
      Left = 135
      Top = 420
      Width = 1230
      Height = 300
      TabIndex = 2
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
    Begin VB.Label Label17
      Caption = "Tipo de Factura:"
      Left = 1560
      Top = 2820
      Width = 1725
      Height = 300
      TabIndex = 11
      AutoSize = -1  'True
    End
  End
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 38
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 40
      OleObjectBlob = "frmFichadeproveedores.frx":1128
    End
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 39
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 12975
    Height = 2175
    TabIndex = 41
    OleObjectBlob = "frmFichadeproveedores.frx":1188
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmFichadeproveedores.frx":1804
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13815
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmFichadeproveedores.frx":9382
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 24
      TabStop = 0   'False
      Picture = "frmFichadeproveedores.frx":98DE
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmFichadeproveedores"


Private Sub MoanProvTxt_Validate(Cancel As Boolean) '9C06EC
  'Data Table: 4E45FC
  loc_9C0630: FLdRfVar var_8A
  loc_9C0633: FLdPr Me
  loc_9C0636: VCallAd Control_ID_cmdCancelar
  loc_9C0639: FStAdFunc var_88
  loc_9C063C: FLdPr var_88
  loc_9C063F:  = Me.Value
  loc_9C0644: FLdI2 var_8A
  loc_9C0647: NotI4
  loc_9C0648: FLdRfVar var_92
  loc_9C064B: FLdPr Me
  loc_9C064E: VCallAd Control_ID_MoanProvTxt
  loc_9C0651: FStAdFunc var_90
  loc_9C0654: FLdPr var_90
  loc_9C0657:  = Me.Enabled
  loc_9C065C: FLdI2 var_92
  loc_9C065F: AndI4
  loc_9C0660: FFreeAd var_88 = ""
  loc_9C0667: BranchF loc_9C06E8
  loc_9C066A: FLdRfVar var_98
  loc_9C066D: FLdPr Me
  loc_9C0670: VCallAd Control_ID_MoanProvTxt
  loc_9C0673: FStAdFunc var_88
  loc_9C0676: FLdPr var_88
  loc_9C0679:  = Me.Text
  loc_9C067E: LitI2_Byte 0
  loc_9C0680: PopTmpLdAd2 var_9A
  loc_9C0683: LitI2_Byte 0
  loc_9C0685: PopTmpLdAd2 var_92
  loc_9C0688: LitI2_Byte 0
  loc_9C068A: PopTmpLdAd2 var_8A
  loc_9C068D: ILdRf var_98
  loc_9C0690: LitStr "Motivo de anulación"
  loc_9C0693: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C0698: FStStrNoPop var_A0
  loc_9C069B: FLdPr Me
  loc_9C069E: MemStStrCopy
  loc_9C06A2: FFreeStr var_98 = ""
  loc_9C06A9: FFree1Ad var_88
  loc_9C06AC: FLdPr Me
  loc_9C06AF: VCallAd Control_ID_MoanProvTxt
  loc_9C06B2: FStAdFunc var_A8
  loc_9C06B5: LitNothing
  loc_9C06B7: CastAd
  loc_9C06BA: FStAdFunc var_A4
  loc_9C06BD: FLdRfVar var_A4
  loc_9C06C0: FLdZeroAd var_A8
  loc_9C06C3: FStAdFuncNoPop
  loc_9C06C6: CastAd
  loc_9C06C9: FStAdFunc var_90
  loc_9C06CC: FLdRfVar var_90
  loc_9C06CF: FLdPr Me
  loc_9C06D2: MemLdRfVar from_stack_1.global_60
  loc_9C06D5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C06DA: IStI2 Cancel
  loc_9C06DD: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C06E8: ExitProcHresult
End Sub

Private Sub DetaDivteCbo_Click() '9BDA88
  'Data Table: 4E45FC
  loc_9BD9C0: FLdRfVar var_8A
  loc_9BD9C3: FLdPr Me
  loc_9BD9C6: VCallAd Control_ID_DetaDivteCbo
  loc_9BD9C9: FStAdFunc var_88
  loc_9BD9CC: FLdPr var_88
  loc_9BD9CF:  = Me.ListIndex
  loc_9BD9D4: FLdI2 var_8A
  loc_9BD9D7: LitI2_Byte 0
  loc_9BD9D9: LtI2
  loc_9BD9DA: FFree1Ad var_88
  loc_9BD9DD: BranchF loc_9BD9EB
  loc_9BD9E0: LitI2_Byte 1
  loc_9BD9E2: FLdPr Me
  loc_9BD9E5: MemStI2 global_80
  loc_9BD9E8: Branch loc_9BDA86
  loc_9BD9EB: FLdRfVar var_8A
  loc_9BD9EE: FLdPr Me
  loc_9BD9F1: VCallAd Control_ID_DetaDivteCbo
  loc_9BD9F4: FStAdFunc var_88
  loc_9BD9F7: FLdPr var_88
  loc_9BD9FA:  = Me.ListIndex
  loc_9BD9FF: FLdI2 var_8A
  loc_9BDA02: LitI2_Byte 0
  loc_9BDA04: EqI2
  loc_9BDA05: FFree1Ad var_88
  loc_9BDA08: BranchF loc_9BDA4A
  loc_9BDA0B: FLdRfVar var_94
  loc_9BDA0E: FLdRfVar var_8A
  loc_9BDA11: FLdPr Me
  loc_9BDA14: VCallAd Control_ID_DetaDivteCbo
  loc_9BDA17: FStAdFunc var_88
  loc_9BDA1A: FLdPr var_88
  loc_9BDA1D:  = Me.ListIndex
  loc_9BDA22: FLdI2 var_8A
  loc_9BDA25: FLdPr Me
  loc_9BDA28: VCallAd Control_ID_DetaDivteCbo
  loc_9BDA2B: FStAdFunc var_90
  loc_9BDA2E: FLdPr var_90
  loc_9BDA31:  = Me.ItemData
  loc_9BDA36: ILdRf var_94
  loc_9BDA39: CI2I4
  loc_9BDA3A: FLdPr Me
  loc_9BDA3D: MemStI2 global_80
  loc_9BDA40: FFreeAd var_88 = ""
  loc_9BDA47: Branch loc_9BDA86
  loc_9BDA4A: FLdRfVar var_94
  loc_9BDA4D: FLdRfVar var_8A
  loc_9BDA50: FLdPr Me
  loc_9BDA53: VCallAd Control_ID_DetaDivteCbo
  loc_9BDA56: FStAdFunc var_88
  loc_9BDA59: FLdPr var_88
  loc_9BDA5C:  = Me.ListIndex
  loc_9BDA61: FLdI2 var_8A
  loc_9BDA64: FLdPr Me
  loc_9BDA67: VCallAd Control_ID_DetaDivteCbo
  loc_9BDA6A: FStAdFunc var_90
  loc_9BDA6D: FLdPr var_90
  loc_9BDA70:  = Me.ItemData
  loc_9BDA75: ILdRf var_94
  loc_9BDA78: CI2I4
  loc_9BDA79: FLdPr Me
  loc_9BDA7C: MemStI2 global_80
  loc_9BDA7F: FFreeAd var_88 = ""
  loc_9BDA86: ExitProcHresult
End Sub

Private Sub DetaDivteCbo_Validate(Cancel As Boolean) 'A199F4
  'Data Table: 4E45FC
  loc_A19868: FLdRfVar var_8A
  loc_A1986B: FLdPr Me
  loc_A1986E: VCallAd Control_ID_cmdCancelar
  loc_A19871: FStAdFunc var_88
  loc_A19874: FLdPr var_88
  loc_A19877:  = Me.Value
  loc_A1987C: FLdI2 var_8A
  loc_A1987F: NotI4
  loc_A19880: FLdRfVar var_92
  loc_A19883: FLdPr Me
  loc_A19886: VCallAd Control_ID_DetaDivteCbo
  loc_A19889: FStAdFunc var_90
  loc_A1988C: FLdPr var_90
  loc_A1988F:  = Me.Enabled
  loc_A19894: FLdI2 var_92
  loc_A19897: AndI4
  loc_A19898: FFreeAd var_88 = ""
  loc_A1989F: BranchF loc_A199F2
  loc_A198A2: FLdRfVar var_B8
  loc_A198A5: FLdRfVar var_A8
  loc_A198A8: LitVarStr var_A4, "IdDivte"
  loc_A198AD: PopAdLdVar
  loc_A198AE: FLdRfVar var_90
  loc_A198B1: FLdRfVar var_88
  loc_A198B4: FLdPr Me
  loc_A198B7: MemLdRfVar from_stack_1.global_52
  loc_A198BA: NewIfNullPr clsproveedor
  loc_A198BD: from_stack_1v = clsproveedor.RsFrmGet()
  loc_A198C2: FLdPr var_88
  loc_A198C5:  = Me.Fields
  loc_A198CA: FLdPr var_90
  loc_A198CD: from_stack_2 = Me.Item(from_stack_1)
  loc_A198D2: FLdPr var_A8
  loc_A198D5:  = Me.Value
  loc_A198DA: FLdRfVar var_B8
  loc_A198DD: FnCIntVar
  loc_A198DF: LitI2_Byte 1
  loc_A198E1: LtI2
  loc_A198E2: FFreeAd var_88 = "": var_90 = ""
  loc_A198EB: FFree1Var var_B8 = ""
  loc_A198EE: BranchF loc_A19907
  loc_A198F1: LitI2_Byte 0
  loc_A198F3: FLdPr Me
  loc_A198F6: VCallAd Control_ID_DetaDivteCbo
  loc_A198F9: FStAdFunc var_88
  loc_A198FC: FLdPr var_88
  loc_A198FF: Me.ListIndex = from_stack_1
  loc_A19904: FFree1Ad var_88
  loc_A19907: FLdRfVar var_8A
  loc_A1990A: FLdPr Me
  loc_A1990D: VCallAd Control_ID_DetaDivteCbo
  loc_A19910: FStAdFunc var_88
  loc_A19913: FLdPr var_88
  loc_A19916:  = Me.ListIndex
  loc_A1991B: FLdI2 var_8A
  loc_A1991E: LitI2_Byte 0
  loc_A19920: LtI2
  loc_A19921: FFree1Ad var_88
  loc_A19924: BranchF loc_A1996D
  loc_A19927: LitStr "Seleccione una opción del combo Ciudad (o Provincia). Verifique..."
  loc_A1992A: FLdPr Me
  loc_A1992D: MemStStrCopy
  loc_A19931: FLdPr Me
  loc_A19934: VCallAd Control_ID_DetaDivteCbo
  loc_A19937: FStAdFunc var_BC
  loc_A1993A: LitNothing
  loc_A1993C: CastAd
  loc_A1993F: FStAdFunc var_A8
  loc_A19942: FLdRfVar var_A8
  loc_A19945: FLdZeroAd var_BC
  loc_A19948: FStAdFuncNoPop
  loc_A1994B: CastAd
  loc_A1994E: FStAdFunc var_90
  loc_A19951: FLdRfVar var_90
  loc_A19954: FLdPr Me
  loc_A19957: MemLdRfVar from_stack_1.global_60
  loc_A1995A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A1995F: IStI2 Cancel
  loc_A19962: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_A1996D: ILdI2 Cancel
  loc_A19970: NotI4
  loc_A19971: BranchF loc_A199F2
  loc_A19974: FLdRfVar var_C0
  loc_A19977: FLdPr Me
  loc_A1997A: VCallAd Control_ID_DetaDivteCbo
  loc_A1997D: FStAdFunc var_88
  loc_A19980: FLdPr var_88
  loc_A19983:  = Me.Text
  loc_A19988: LitI2_Byte 0
  loc_A1998A: PopTmpLdAd2 var_C2
  loc_A1998D: LitI2_Byte 0
  loc_A1998F: PopTmpLdAd2 var_92
  loc_A19992: LitI2_Byte 0
  loc_A19994: PopTmpLdAd2 var_8A
  loc_A19997: ILdRf var_C0
  loc_A1999A: LitStr "DetaDivte"
  loc_A1999D: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A199A2: FStStrNoPop var_C8
  loc_A199A5: FLdPr Me
  loc_A199A8: MemStStrCopy
  loc_A199AC: FFreeStr var_C0 = ""
  loc_A199B3: FFree1Ad var_88
  loc_A199B6: FLdPr Me
  loc_A199B9: VCallAd Control_ID_DetaDivteCbo
  loc_A199BC: FStAdFunc var_BC
  loc_A199BF: LitNothing
  loc_A199C1: CastAd
  loc_A199C4: FStAdFunc var_A8
  loc_A199C7: FLdRfVar var_A8
  loc_A199CA: FLdZeroAd var_BC
  loc_A199CD: FStAdFuncNoPop
  loc_A199D0: CastAd
  loc_A199D3: FStAdFunc var_90
  loc_A199D6: FLdRfVar var_90
  loc_A199D9: FLdPr Me
  loc_A199DC: MemLdRfVar from_stack_1.global_60
  loc_A199DF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A199E4: IStI2 Cancel
  loc_A199E7: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_A199F2: ExitProcHresult
  loc_A199F3: FLdPrThis
End Sub

Private Sub DofiProvTxt_Validate(Cancel As Boolean) '9C0F0C
  'Data Table: 4E45FC
  loc_9C0E50: FLdRfVar var_8A
  loc_9C0E53: FLdPr Me
  loc_9C0E56: VCallAd Control_ID_cmdCancelar
  loc_9C0E59: FStAdFunc var_88
  loc_9C0E5C: FLdPr var_88
  loc_9C0E5F:  = Me.Value
  loc_9C0E64: FLdI2 var_8A
  loc_9C0E67: NotI4
  loc_9C0E68: FLdRfVar var_92
  loc_9C0E6B: FLdPr Me
  loc_9C0E6E: VCallAd Control_ID_DofiProvTxt
  loc_9C0E71: FStAdFunc var_90
  loc_9C0E74: FLdPr var_90
  loc_9C0E77:  = Me.Enabled
  loc_9C0E7C: FLdI2 var_92
  loc_9C0E7F: AndI4
  loc_9C0E80: FFreeAd var_88 = ""
  loc_9C0E87: BranchF loc_9C0F08
  loc_9C0E8A: FLdRfVar var_98
  loc_9C0E8D: FLdPr Me
  loc_9C0E90: VCallAd Control_ID_DofiProvTxt
  loc_9C0E93: FStAdFunc var_88
  loc_9C0E96: FLdPr var_88
  loc_9C0E99:  = Me.Text
  loc_9C0E9E: LitI2_Byte 0
  loc_9C0EA0: PopTmpLdAd2 var_9A
  loc_9C0EA3: LitI2_Byte 0
  loc_9C0EA5: PopTmpLdAd2 var_92
  loc_9C0EA8: LitI2_Byte 0
  loc_9C0EAA: PopTmpLdAd2 var_8A
  loc_9C0EAD: ILdRf var_98
  loc_9C0EB0: LitStr "Domicilio Fiscal"
  loc_9C0EB3: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C0EB8: FStStrNoPop var_A0
  loc_9C0EBB: FLdPr Me
  loc_9C0EBE: MemStStrCopy
  loc_9C0EC2: FFreeStr var_98 = ""
  loc_9C0EC9: FFree1Ad var_88
  loc_9C0ECC: FLdPr Me
  loc_9C0ECF: VCallAd Control_ID_DofiProvTxt
  loc_9C0ED2: FStAdFunc var_A8
  loc_9C0ED5: LitNothing
  loc_9C0ED7: CastAd
  loc_9C0EDA: FStAdFunc var_A4
  loc_9C0EDD: FLdRfVar var_A4
  loc_9C0EE0: FLdZeroAd var_A8
  loc_9C0EE3: FStAdFuncNoPop
  loc_9C0EE6: CastAd
  loc_9C0EE9: FStAdFunc var_90
  loc_9C0EEC: FLdRfVar var_90
  loc_9C0EEF: FLdPr Me
  loc_9C0EF2: MemLdRfVar from_stack_1.global_60
  loc_9C0EF5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C0EFA: IStI2 Cancel
  loc_9C0EFD: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C0F08: ExitProcHresult
End Sub

Private Sub LocaProvChk_Click() '9BD58C
  'Data Table: 4E45FC
  loc_9BD4C4: FLdPr Me
  loc_9BD4C7: MemLdUI1 global_56
  loc_9BD4CB: CI2UI1
  loc_9BD4CD: LitI2_Byte 0
  loc_9BD4CF: GtI2
  loc_9BD4D0: BranchF loc_9BD588
  loc_9BD4D3: FLdRfVar var_8A
  loc_9BD4D6: FLdPr Me
  loc_9BD4D9: VCallAd Control_ID_LocaProvChk
  loc_9BD4DC: FStAdFunc var_88
  loc_9BD4DF: FLdPr var_88
  loc_9BD4E2:  = Me.Value
  loc_9BD4E7: FLdI2 var_8A
  loc_9BD4EA: CI4UI1
  loc_9BD4EB: LitI4 1
  loc_9BD4F0: EqI4
  loc_9BD4F1: FFree1Ad var_88
  loc_9BD4F4: BranchF loc_9BD540
  loc_9BD4F7: LitVar_TRUE var_9C
  loc_9BD4FA: PopAdLdVar
  loc_9BD4FB: FLdPr Me
  loc_9BD4FE: VCallAd Control_ID_FedcProvMsk
  loc_9BD501: FStAdFunc var_88
  loc_9BD504: FLdPr var_88
  loc_9BD507: LateIdSt
  loc_9BD50C: FFree1Ad var_88
  loc_9BD50F: LitVar_TRUE var_9C
  loc_9BD512: PopAdLdVar
  loc_9BD513: FLdPr Me
  loc_9BD516: VCallAd Control_ID_FehcProvMsk
  loc_9BD519: FStAdFunc var_88
  loc_9BD51C: FLdPr var_88
  loc_9BD51F: LateIdSt
  loc_9BD524: FFree1Ad var_88
  loc_9BD527: LitI2_Byte &HFF
  loc_9BD529: FLdPr Me
  loc_9BD52C: VCallAd Control_ID_TotcProvTxt
  loc_9BD52F: FStAdFunc var_88
  loc_9BD532: FLdPr var_88
  loc_9BD535: Me.Enabled = from_stack_1b
  loc_9BD53A: FFree1Ad var_88
  loc_9BD53D: Branch loc_9BD588
  loc_9BD540: LitVar_FALSE
  loc_9BD544: PopAdLdVar
  loc_9BD545: FLdPr Me
  loc_9BD548: VCallAd Control_ID_FedcProvMsk
  loc_9BD54B: FStAdFunc var_88
  loc_9BD54E: FLdPr var_88
  loc_9BD551: LateIdSt
  loc_9BD556: FFree1Ad var_88
  loc_9BD559: LitVar_FALSE
  loc_9BD55D: PopAdLdVar
  loc_9BD55E: FLdPr Me
  loc_9BD561: VCallAd Control_ID_FehcProvMsk
  loc_9BD564: FStAdFunc var_88
  loc_9BD567: FLdPr var_88
  loc_9BD56A: LateIdSt
  loc_9BD56F: FFree1Ad var_88
  loc_9BD572: LitI2_Byte 0
  loc_9BD574: FLdPr Me
  loc_9BD577: VCallAd Control_ID_TotcProvTxt
  loc_9BD57A: FStAdFunc var_88
  loc_9BD57D: FLdPr var_88
  loc_9BD580: Me.Enabled = from_stack_1b
  loc_9BD585: FFree1Ad var_88
  loc_9BD588: ExitProcHresult
  loc_9BD589: CExtInstUnk
End Sub

Private Sub FedcProvMsk_UnknownEvent_0 '9784E0
  'Data Table: 4E45FC
  loc_9784B4: LitI4 -2147483634
  loc_9784B9: FLdPr Me
  loc_9784BC: VCallAd Control_ID_FrameContrato
  loc_9784BF: FStAdFunc var_88
  loc_9784C2: FLdPr var_88
  loc_9784C5: Me.BackColor = from_stack_1
  loc_9784CA: FFree1Ad var_88
  loc_9784CD: FLdPr Me
  loc_9784D0: VCallAd Control_ID_FedcProvMsk
  loc_9784D3: CVarAd
  loc_9784D7: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9784DC: FFree1Var var_98 = ""
  loc_9784DF: ExitProcHresult
End Sub

Private Sub FedcProvMsk_UnknownEvent_1 '96AAEC
  'Data Table: 4E45FC
  loc_96AAD0: LitI4 -2147483633
  loc_96AAD5: FLdPr Me
  loc_96AAD8: VCallAd Control_ID_FrameContrato
  loc_96AADB: FStAdFunc var_88
  loc_96AADE: FLdPr var_88
  loc_96AAE1: Me.BackColor = from_stack_1
  loc_96AAE6: FFree1Ad var_88
  loc_96AAE9: ExitProcHresult
End Sub

Private Function FedcProvMsk_UnknownEvent_8(arg_C) '9DC508
  'Data Table: 4E45FC
  loc_9DC40C: FLdRfVar var_8A
  loc_9DC40F: FLdPr Me
  loc_9DC412: VCallAd Control_ID_cmdCancelar
  loc_9DC415: FStAdFunc var_88
  loc_9DC418: FLdPr var_88
  loc_9DC41B:  = Me.Value
  loc_9DC420: FLdI2 var_8A
  loc_9DC423: NotI4
  loc_9DC424: FLdPr Me
  loc_9DC427: VCallAd Control_ID_FedcProvMsk
  loc_9DC42A: FStAdFunc var_90
  loc_9DC42D: FLdPr var_90
  loc_9DC430: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DC437: CBoolVar
  loc_9DC439: AndI4
  loc_9DC43A: FFreeAd var_88 = ""
  loc_9DC441: FFree1Var var_A0 = ""
  loc_9DC444: BranchF loc_9DC507
  loc_9DC447: FLdPr Me
  loc_9DC44A: VCallAd Control_ID_FedcProvMsk
  loc_9DC44D: FStAdFunc var_88
  loc_9DC450: FLdPr var_88
  loc_9DC453: LateIdLdVar var_A0 DispID_22 0
  loc_9DC45A: CStrVarTmp
  loc_9DC45B: FStStrNoPop var_A4
  loc_9DC45E: LitStr vbNullString
  loc_9DC461: NeStr
  loc_9DC463: FFree1Str var_A4
  loc_9DC466: FFree1Ad var_88
  loc_9DC469: FFree1Var var_A0 = ""
  loc_9DC46C: BranchF loc_9DC507
  loc_9DC46F: FLdPr Me
  loc_9DC472: VCallAd Control_ID_FedcProvMsk
  loc_9DC475: FStAdFunc var_88
  loc_9DC478: FLdPr var_88
  loc_9DC47B: LateIdLdVar var_A0 DispID_15 0
  loc_9DC482: PopAd
  loc_9DC484: FLdPr Me
  loc_9DC487: VCallAd Control_ID_FedcProvMsk
  loc_9DC48A: FStAdFunc var_AC
  loc_9DC48D: LitI2_Byte 0
  loc_9DC48F: PopTmpLdAd2 var_8A
  loc_9DC492: FLdZeroAd var_AC
  loc_9DC495: FStAdFunc var_90
  loc_9DC498: FLdRfVar var_90
  loc_9DC49B: LitStr vbNullString
  loc_9DC49E: LitI2_Byte 0
  loc_9DC4A0: LitI2_Byte 0
  loc_9DC4A2: FLdRfVar var_A0
  loc_9DC4A5: CStrVarTmp
  loc_9DC4A6: FStStrNoPop var_A4
  loc_9DC4A9: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DC4AE: FStStrNoPop var_A8
  loc_9DC4B1: FLdPr Me
  loc_9DC4B4: MemStStrCopy
  loc_9DC4B8: FFreeStr var_A4 = ""
  loc_9DC4BF: FFreeAd var_88 = "": var_90 = ""
  loc_9DC4C8: FFree1Var var_A0 = ""
  loc_9DC4CB: FLdPr Me
  loc_9DC4CE: VCallAd Control_ID_FedcProvMsk
  loc_9DC4D1: FStAdFunc var_B0
  loc_9DC4D4: LitNothing
  loc_9DC4D6: CastAd
  loc_9DC4D9: FStAdFunc var_AC
  loc_9DC4DC: FLdRfVar var_AC
  loc_9DC4DF: FLdZeroAd var_B0
  loc_9DC4E2: FStAdFuncNoPop
  loc_9DC4E5: CastAd
  loc_9DC4E8: FStAdFunc var_90
  loc_9DC4EB: FLdRfVar var_90
  loc_9DC4EE: FLdPr Me
  loc_9DC4F1: MemLdRfVar from_stack_1.global_60
  loc_9DC4F4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DC4F9: IStI2 arg_C
  loc_9DC4FC: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9DC507: ExitProcHresult
End Function

Private Sub FedcProvMsk_KeyPress(KeyAscii As Integer) '988300
  'Data Table: 4E45FC
  loc_9882BC: ILdI2 KeyAscii
  loc_9882BF: CI4UI1
  loc_9882C0: LitI4 &H20
  loc_9882C5: EqI4
  loc_9882C6: BranchF loc_9882FC
  loc_9882C9: LitVar_Missing var_A4
  loc_9882CC: PopAdLdVar
  loc_9882CD: LitVarI4
  loc_9882D5: PopAdLdVar
  loc_9882D6: ImpAdLdRf MemVar_C3D9A8
  loc_9882D9: NewIfNullPr frmCalendario
  loc_9882DC: frmCalendario.Show from_stack_1, from_stack_2
  loc_9882E1: ImpAdLdRf MemVar_C3D038
  loc_9882E4: CDargRef
  loc_9882E8: FLdPr Me
  loc_9882EB: VCallAd Control_ID_FedcProvMsk
  loc_9882EE: FStAdFunc var_A8
  loc_9882F1: FLdPr var_A8
  loc_9882F4: LateIdSt
  loc_9882F9: FFree1Ad var_A8
  loc_9882FC: ExitProcHresult
  loc_9882FD: MemLdRfVar from_stack_1.global_1058
End Sub

Private Sub FehcProvMsk_UnknownEvent_0 '97AD80
  'Data Table: 4E45FC
  loc_97AD54: LitI4 -2147483634
  loc_97AD59: FLdPr Me
  loc_97AD5C: VCallAd Control_ID_FrameContrato
  loc_97AD5F: FStAdFunc var_88
  loc_97AD62: FLdPr var_88
  loc_97AD65: Me.BackColor = from_stack_1
  loc_97AD6A: FFree1Ad var_88
  loc_97AD6D: FLdPr Me
  loc_97AD70: VCallAd Control_ID_FehcProvMsk
  loc_97AD73: CVarAd
  loc_97AD77: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_97AD7C: FFree1Var var_98 = ""
  loc_97AD7F: ExitProcHresult
End Sub

Private Sub FehcProvMsk_UnknownEvent_1 '96AB3C
  'Data Table: 4E45FC
  loc_96AB20: LitI4 -2147483633
  loc_96AB25: FLdPr Me
  loc_96AB28: VCallAd Control_ID_FrameContrato
  loc_96AB2B: FStAdFunc var_88
  loc_96AB2E: FLdPr var_88
  loc_96AB31: Me.BackColor = from_stack_1
  loc_96AB36: FFree1Ad var_88
  loc_96AB39: ExitProcHresult
End Sub

Private Sub FehcProvMsk_UnknownEvent_8 '9DC130
  'Data Table: 4E45FC
  loc_9DC034: FLdRfVar var_8A
  loc_9DC037: FLdPr Me
  loc_9DC03A: VCallAd Control_ID_cmdCancelar
  loc_9DC03D: FStAdFunc var_88
  loc_9DC040: FLdPr var_88
  loc_9DC043:  = Me.Value
  loc_9DC048: FLdI2 var_8A
  loc_9DC04B: NotI4
  loc_9DC04C: FLdPr Me
  loc_9DC04F: VCallAd Control_ID_FehcProvMsk
  loc_9DC052: FStAdFunc var_90
  loc_9DC055: FLdPr var_90
  loc_9DC058: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DC05F: CBoolVar
  loc_9DC061: AndI4
  loc_9DC062: FFreeAd var_88 = ""
  loc_9DC069: FFree1Var var_A0 = ""
  loc_9DC06C: BranchF loc_9DC12F
  loc_9DC06F: FLdPr Me
  loc_9DC072: VCallAd Control_ID_FehcProvMsk
  loc_9DC075: FStAdFunc var_88
  loc_9DC078: FLdPr var_88
  loc_9DC07B: LateIdLdVar var_A0 DispID_22 0
  loc_9DC082: CStrVarTmp
  loc_9DC083: FStStrNoPop var_A4
  loc_9DC086: LitStr vbNullString
  loc_9DC089: NeStr
  loc_9DC08B: FFree1Str var_A4
  loc_9DC08E: FFree1Ad var_88
  loc_9DC091: FFree1Var var_A0 = ""
  loc_9DC094: BranchF loc_9DC12F
  loc_9DC097: FLdPr Me
  loc_9DC09A: VCallAd Control_ID_FehcProvMsk
  loc_9DC09D: FStAdFunc var_88
  loc_9DC0A0: FLdPr var_88
  loc_9DC0A3: LateIdLdVar var_A0 DispID_15 0
  loc_9DC0AA: PopAd
  loc_9DC0AC: FLdPr Me
  loc_9DC0AF: VCallAd Control_ID_FehcProvMsk
  loc_9DC0B2: FStAdFunc var_AC
  loc_9DC0B5: LitI2_Byte 0
  loc_9DC0B7: PopTmpLdAd2 var_8A
  loc_9DC0BA: FLdZeroAd var_AC
  loc_9DC0BD: FStAdFunc var_90
  loc_9DC0C0: FLdRfVar var_90
  loc_9DC0C3: LitStr vbNullString
  loc_9DC0C6: LitI2_Byte 0
  loc_9DC0C8: LitI2_Byte 0
  loc_9DC0CA: FLdRfVar var_A0
  loc_9DC0CD: CStrVarTmp
  loc_9DC0CE: FStStrNoPop var_A4
  loc_9DC0D1: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DC0D6: FStStrNoPop var_A8
  loc_9DC0D9: FLdPr Me
  loc_9DC0DC: MemStStrCopy
  loc_9DC0E0: FFreeStr var_A4 = ""
  loc_9DC0E7: FFreeAd var_88 = "": var_90 = ""
  loc_9DC0F0: FFree1Var var_A0 = ""
  loc_9DC0F3: FLdPr Me
  loc_9DC0F6: VCallAd Control_ID_FehcProvMsk
  loc_9DC0F9: FStAdFunc var_B0
  loc_9DC0FC: LitNothing
  loc_9DC0FE: CastAd
  loc_9DC101: FStAdFunc var_AC
  loc_9DC104: FLdRfVar var_AC
  loc_9DC107: FLdZeroAd var_B0
  loc_9DC10A: FStAdFuncNoPop
  loc_9DC10D: CastAd
  loc_9DC110: FStAdFunc var_90
  loc_9DC113: FLdRfVar var_90
  loc_9DC116: FLdPr Me
  loc_9DC119: MemLdRfVar from_stack_1.global_60
  loc_9DC11C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DC121: IStI2 KeyAscii
  loc_9DC124: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9DC12F: ExitProcHresult
End Sub

Private Sub FehcProvMsk_KeyPress(KeyAscii As Integer) '988378
  'Data Table: 4E45FC
  loc_988334: ILdI2 KeyAscii
  loc_988337: CI4UI1
  loc_988338: LitI4 &H20
  loc_98833D: EqI4
  loc_98833E: BranchF loc_988374
  loc_988341: LitVar_Missing var_A4
  loc_988344: PopAdLdVar
  loc_988345: LitVarI4
  loc_98834D: PopAdLdVar
  loc_98834E: ImpAdLdRf MemVar_C3D9A8
  loc_988351: NewIfNullPr frmCalendario
  loc_988354: frmCalendario.Show from_stack_1, from_stack_2
  loc_988359: ImpAdLdRf MemVar_C3D038
  loc_98835C: CDargRef
  loc_988360: FLdPr Me
  loc_988363: VCallAd Control_ID_FedcProvMsk
  loc_988366: FStAdFunc var_A8
  loc_988369: FLdPr var_A8
  loc_98836C: LateIdSt
  loc_988371: FFree1Ad var_A8
  loc_988374: ExitProcHresult
  loc_988375: FLdPr var_124
End Sub

Private Sub TotcProvTxt_GotFocus() '94E528
  'Data Table: 4E45FC
  loc_94E514: FLdPr Me
  loc_94E517: VCallAd Control_ID_TotcProvTxt
  loc_94E51A: CVarAd
  loc_94E51E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E523: FFree1Var var_94 = ""
  loc_94E526: ExitProcHresult
End Sub

Private Sub TotcProvTxt_KeyPress(KeyAscii As Integer) '97E098
  'Data Table: 4E45FC
  loc_97E064: LitStr "1234567890,."
  loc_97E067: FStStrCopy var_88
  loc_97E06A: FLdRfVar var_88
  loc_97E06D: ILdRf KeyAscii
  loc_97E070: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97E075: IStI2 KeyAscii
  loc_97E078: FFree1Str var_88
  loc_97E07B: ILdI2 KeyAscii
  loc_97E07E: LitStr "."
  loc_97E081: ImpAdCallI2 Asc()
  loc_97E086: EqI2
  loc_97E087: BranchF loc_97E095
  loc_97E08A: LitStr ","
  loc_97E08D: ImpAdCallI2 Asc()
  loc_97E092: IStI2 KeyAscii
  loc_97E095: ExitProcHresult
  loc_97E096: PopTmpLdAd8 var_7B01
End Sub

Private Sub TotcProvTxt_LostFocus() '9695FC
  'Data Table: 4E45FC
  loc_9695E0: LitI4 -2147483633
  loc_9695E5: FLdPr Me
  loc_9695E8: VCallAd Control_ID_FrameContrato
  loc_9695EB: FStAdFunc var_88
  loc_9695EE: FLdPr var_88
  loc_9695F1: Me.BackColor = from_stack_1
  loc_9695F6: FFree1Ad var_88
  loc_9695F9: ExitProcHresult
  loc_9695FA: FFree1Str var_7B8C
End Sub

Private Sub TotcProvTxt_Validate(Cancel As Boolean) '9BC5B8
  'Data Table: 4E45FC
  loc_9BC504: FLdRfVar var_8A
  loc_9BC507: FLdPr Me
  loc_9BC50A: VCallAd Control_ID_cmdCancelar
  loc_9BC50D: FStAdFunc var_88
  loc_9BC510: FLdPr var_88
  loc_9BC513:  = Me.Value
  loc_9BC518: FLdI2 var_8A
  loc_9BC51B: NotI4
  loc_9BC51C: FLdRfVar var_92
  loc_9BC51F: FLdPr Me
  loc_9BC522: VCallAd Control_ID_TotcProvTxt
  loc_9BC525: FStAdFunc var_90
  loc_9BC528: FLdPr var_90
  loc_9BC52B:  = Me.Enabled
  loc_9BC530: FLdI2 var_92
  loc_9BC533: AndI4
  loc_9BC534: FFreeAd var_88 = ""
  loc_9BC53B: BranchF loc_9BC5B6
  loc_9BC53E: FLdRfVar var_98
  loc_9BC541: FLdPr Me
  loc_9BC544: VCallAd Control_ID_TotcProvTxt
  loc_9BC547: FStAdFunc var_88
  loc_9BC54A: FLdPr var_88
  loc_9BC54D:  = Me.Text
  loc_9BC552: LitStr "0"
  loc_9BC555: LitI2_Byte &HFF
  loc_9BC557: LitI2_Byte &HFF
  loc_9BC559: LitI2_Byte 0
  loc_9BC55B: ILdRf var_98
  loc_9BC55E: LitStr "Importe"
  loc_9BC561: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9BC566: FStStrNoPop var_9C
  loc_9BC569: FLdPr Me
  loc_9BC56C: MemStStrCopy
  loc_9BC570: FFreeStr var_98 = ""
  loc_9BC577: FFree1Ad var_88
  loc_9BC57A: FLdPr Me
  loc_9BC57D: VCallAd Control_ID_TotcProvTxt
  loc_9BC580: FStAdFunc var_A4
  loc_9BC583: LitNothing
  loc_9BC585: CastAd
  loc_9BC588: FStAdFunc var_A0
  loc_9BC58B: FLdRfVar var_A0
  loc_9BC58E: FLdZeroAd var_A4
  loc_9BC591: FStAdFuncNoPop
  loc_9BC594: CastAd
  loc_9BC597: FStAdFunc var_90
  loc_9BC59A: FLdRfVar var_90
  loc_9BC59D: FLdPr Me
  loc_9BC5A0: MemLdRfVar from_stack_1.global_60
  loc_9BC5A3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BC5A8: IStI2 Cancel
  loc_9BC5AB: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BC5B6: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BA97BC
  'Data Table: 4E45FC
  loc_BA88B0: ILdRf Button
  loc_BA88B3: FStAd var_88 
  loc_BA88B7: FLdRfVar var_8C
  loc_BA88BA: FLdPr var_88
  loc_BA88BD:  = Me.Key
  loc_BA88C2: FLdZeroAd var_8C
  loc_BA88C5: FStStr var_90
  loc_BA88C8: ILdRf var_90
  loc_BA88CB: LitStr "btnCrear"
  loc_BA88CE: EqStr
  loc_BA88D0: BranchF loc_BA8B53
  loc_BA88D3: LitI2_Byte 1
  loc_BA88D5: FLdPr Me
  loc_BA88D8: MemStUI1
  loc_BA88DC: ILdRf Me
  loc_BA88DF: CastAd
  loc_BA88E2: FStAdFunc var_94
  loc_BA88E5: FLdRfVar var_94
  loc_BA88E8: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BA88ED: FFree1Ad var_94
  loc_BA88F0: LitI4 0
  loc_BA88F5: LitI4 0
  loc_BA88FA: FLdRfVar var_98
  loc_BA88FD: Redim
  loc_BA8907: FLdPr Me
  loc_BA890A: VCallAd Control_ID_dgdABMS
  loc_BA890D: CVarAd
  loc_BA8911: ParmAry1St
  loc_BA8917: FLdRfVar var_98
  loc_BA891A: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BA891F: FLdRfVar var_98
  loc_BA8922: Erase
  loc_BA8923: ILdRf Me
  loc_BA8926: CastAd
  loc_BA8929: FStAdFunc var_94
  loc_BA892C: FLdRfVar var_94
  loc_BA892F: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BA8934: FFree1Ad var_94
  loc_BA8937: ILdRf Me
  loc_BA893A: CastAd
  loc_BA893D: FStAdFunc var_94
  loc_BA8940: FLdRfVar var_94
  loc_BA8943: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_BA8948: FFree1Ad var_94
  loc_BA894B: ILdRf Me
  loc_BA894E: CastAd
  loc_BA8951: FStAdFunc var_94
  loc_BA8954: FLdRfVar var_94
  loc_BA8957: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_BA895C: FFree1Ad var_94
  loc_BA895F: LitI4 0
  loc_BA8964: LitI4 2
  loc_BA8969: FLdRfVar var_98
  loc_BA896C: Redim
  loc_BA8976: FLdPr Me
  loc_BA8979: VCallAd Control_ID_MoanProvTxt
  loc_BA897C: CVarAd
  loc_BA8980: ParmAry1St
  loc_BA8986: FLdPr Me
  loc_BA8989: VCallAd Control_ID_CedeProvChk
  loc_BA898C: CVarAd
  loc_BA8990: ParmAry1St
  loc_BA8996: FLdPr Me
  loc_BA8999: VCallAd Control_ID_CubaProvTxt
  loc_BA899C: CVarAd
  loc_BA89A0: ParmAry1St
  loc_BA89A6: FLdRfVar var_98
  loc_BA89A9: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BA89AE: FLdRfVar var_98
  loc_BA89B1: Erase
  loc_BA89B2: LitStr "Municipalidad de Guaymallén"
  loc_BA89B5: FStStrCopy var_CC
  loc_BA89B8: ILdRf var_CC
  loc_BA89BB: LitStr "Municipalidad de Tunuyán"
  loc_BA89BE: EqStr
  loc_BA89C0: BranchF loc_BA8A02
  loc_BA89C3: ImpAdLdI4 MemVar_C3D03C
  loc_BA89C6: LitStr "root"
  loc_BA89C9: EqStr
  loc_BA89CB: ImpAdLdI4 MemVar_C3D03C
  loc_BA89CE: LitStr "pyanina"
  loc_BA89D1: EqStr
  loc_BA89D3: OrI4
  loc_BA89D4: ImpAdLdI4 MemVar_C3D03C
  loc_BA89D7: LitStr "videlaso"
  loc_BA89DA: EqStr
  loc_BA89DC: OrI4
  loc_BA89DD: ImpAdLdI4 MemVar_C3D03C
  loc_BA89E0: LitStr "prioriro"
  loc_BA89E3: EqStr
  loc_BA89E5: OrI4
  loc_BA89E6: BranchF loc_BA89FF
  loc_BA89E9: LitI2_Byte &HFF
  loc_BA89EB: FLdPr Me
  loc_BA89EE: VCallAd Control_ID_CedeProvChk
  loc_BA89F1: FStAdFunc var_94
  loc_BA89F4: FLdPr var_94
  loc_BA89F7: Me.Enabled = from_stack_1b
  loc_BA89FC: FFree1Ad var_94
  loc_BA89FF: Branch loc_BA8B27
  loc_BA8A02: ILdRf var_CC
  loc_BA8A05: LitStr "Municipalidad de Maipú"
  loc_BA8A08: EqStr
  loc_BA8A0A: BranchF loc_BA8A55
  loc_BA8A0D: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A10: LitStr "root"
  loc_BA8A13: EqStr
  loc_BA8A15: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A18: LitStr "gisel"
  loc_BA8A1B: EqStr
  loc_BA8A1D: OrI4
  loc_BA8A1E: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A21: LitStr "Lissy"
  loc_BA8A24: EqStr
  loc_BA8A26: OrI4
  loc_BA8A27: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A2A: LitStr "Nati"
  loc_BA8A2D: EqStr
  loc_BA8A2F: OrI4
  loc_BA8A30: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A33: LitStr "ptieppo"
  loc_BA8A36: EqStr
  loc_BA8A38: OrI4
  loc_BA8A39: BranchF loc_BA8A52
  loc_BA8A3C: LitI2_Byte &HFF
  loc_BA8A3E: FLdPr Me
  loc_BA8A41: VCallAd Control_ID_CedeProvChk
  loc_BA8A44: FStAdFunc var_94
  loc_BA8A47: FLdPr var_94
  loc_BA8A4A: Me.Enabled = from_stack_1b
  loc_BA8A4F: FFree1Ad var_94
  loc_BA8A52: Branch loc_BA8B27
  loc_BA8A55: ILdRf var_CC
  loc_BA8A58: LitStr "Municipalidad de General Alvear"
  loc_BA8A5B: EqStr
  loc_BA8A5D: BranchF loc_BA8AA8
  loc_BA8A60: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A63: LitStr "root"
  loc_BA8A66: EqStr
  loc_BA8A68: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A6B: LitStr "Admin"
  loc_BA8A6E: EqStr
  loc_BA8A70: OrI4
  loc_BA8A71: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A74: LitStr "ivana"
  loc_BA8A77: EqStr
  loc_BA8A79: OrI4
  loc_BA8A7A: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A7D: LitStr "amelia"
  loc_BA8A80: EqStr
  loc_BA8A82: OrI4
  loc_BA8A83: ImpAdLdI4 MemVar_C3D03C
  loc_BA8A86: LitStr "maurip"
  loc_BA8A89: EqStr
  loc_BA8A8B: OrI4
  loc_BA8A8C: BranchF loc_BA8AA5
  loc_BA8A8F: LitI2_Byte &HFF
  loc_BA8A91: FLdPr Me
  loc_BA8A94: VCallAd Control_ID_CedeProvChk
  loc_BA8A97: FStAdFunc var_94
  loc_BA8A9A: FLdPr var_94
  loc_BA8A9D: Me.Enabled = from_stack_1b
  loc_BA8AA2: FFree1Ad var_94
  loc_BA8AA5: Branch loc_BA8B27
  loc_BA8AA8: ILdRf var_CC
  loc_BA8AAB: LitStr "Municipalidad de Rivadavia"
  loc_BA8AAE: EqStr
  loc_BA8AB0: BranchF loc_BA8AE9
  loc_BA8AB3: ImpAdLdI4 MemVar_C3D03C
  loc_BA8AB6: LitStr "root"
  loc_BA8AB9: EqStr
  loc_BA8ABB: ImpAdLdI4 MemVar_C3D03C
  loc_BA8ABE: LitStr "jorgeg"
  loc_BA8AC1: EqStr
  loc_BA8AC3: OrI4
  loc_BA8AC4: ImpAdLdI4 MemVar_C3D03C
  loc_BA8AC7: LitStr "mgonzale"
  loc_BA8ACA: EqStr
  loc_BA8ACC: OrI4
  loc_BA8ACD: BranchF loc_BA8AE6
  loc_BA8AD0: LitI2_Byte &HFF
  loc_BA8AD2: FLdPr Me
  loc_BA8AD5: VCallAd Control_ID_CedeProvChk
  loc_BA8AD8: FStAdFunc var_94
  loc_BA8ADB: FLdPr var_94
  loc_BA8ADE: Me.Enabled = from_stack_1b
  loc_BA8AE3: FFree1Ad var_94
  loc_BA8AE6: Branch loc_BA8B27
  loc_BA8AE9: ILdRf var_CC
  loc_BA8AEC: LitStr "Municipalidad de Guaymallén"
  loc_BA8AEF: EqStr
  loc_BA8AF1: BranchF loc_BA8B27
  loc_BA8AF4: ImpAdLdI4 MemVar_C3D03C
  loc_BA8AF7: LitStr "root"
  loc_BA8AFA: EqStr
  loc_BA8AFC: ImpAdLdI4 MemVar_C3D03C
  loc_BA8AFF: LitStr "HUGO"
  loc_BA8B02: EqStr
  loc_BA8B04: OrI4
  loc_BA8B05: ImpAdLdI4 MemVar_C3D03C
  loc_BA8B08: LitStr "dbilyk"
  loc_BA8B0B: EqStr
  loc_BA8B0D: OrI4
  loc_BA8B0E: BranchF loc_BA8B27
  loc_BA8B11: LitI2_Byte &HFF
  loc_BA8B13: FLdPr Me
  loc_BA8B16: VCallAd Control_ID_CedeProvChk
  loc_BA8B19: FStAdFunc var_94
  loc_BA8B1C: FLdPr var_94
  loc_BA8B1F: Me.Enabled = from_stack_1b
  loc_BA8B24: FFree1Ad var_94
  loc_BA8B27: LitStr "s/f"
  loc_BA8B2A: FLdPr Me
  loc_BA8B2D: VCallAd Control_ID_FactProvCbo
  loc_BA8B30: FStAdFunc var_94
  loc_BA8B33: FLdPr var_94
  loc_BA8B36: Me.Text = from_stack_1
  loc_BA8B3B: FFree1Ad var_94
  loc_BA8B3E: FLdPr Me
  loc_BA8B41: VCallAd Control_ID_CucuPersTxt
  loc_BA8B44: CVarAd
  loc_BA8B48: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BA8B4D: FFree1Var var_A8 = ""
  loc_BA8B50: Branch loc_BA97B8
  loc_BA8B53: ILdRf var_90
  loc_BA8B56: LitStr "btnModificar"
  loc_BA8B59: EqStr
  loc_BA8B5B: BranchF loc_BA8EAD
  loc_BA8B5E: FLdRfVar var_D0
  loc_BA8B61: FLdPr Me
  loc_BA8B64: MemLdRfVar from_stack_1.global_52
  loc_BA8B67: NewIfNullPr clsproveedor
  loc_BA8B6A: from_stack_1 = clsproveedor.RecordCount
  loc_BA8B6F: ILdRf var_D0
  loc_BA8B72: LitI4 0
  loc_BA8B77: GtI4
  loc_BA8B78: BranchF loc_BA8EAA
  loc_BA8B7B: FLdRfVar var_E8
  loc_BA8B7E: LitVarStr var_E4, "BajaFeho"
  loc_BA8B83: PopAdLdVar
  loc_BA8B84: FLdRfVar var_D4
  loc_BA8B87: FLdRfVar var_94
  loc_BA8B8A: FLdPr Me
  loc_BA8B8D: MemLdRfVar from_stack_1.global_52
  loc_BA8B90: NewIfNullPr clsproveedor
  loc_BA8B93: from_stack_1v = clsproveedor.RsFrmGet()
  loc_BA8B98: FLdPr var_94
  loc_BA8B9B:  = Me.Fields
  loc_BA8BA0: FLdPr var_D4
  loc_BA8BA3: from_stack_2 = Me.Item(from_stack_1)
  loc_BA8BA8: FLdZeroAd var_E8
  loc_BA8BAB: CVarAd
  loc_BA8BAF: ImpAdCallI2 IsNull()
  loc_BA8BB4: CVarBoolI2 var_124
  loc_BA8BB8: FLdRfVar var_B8
  loc_BA8BBB: FLdRfVar var_104
  loc_BA8BBE: LitVarStr var_100, "BajaFeho"
  loc_BA8BC3: PopAdLdVar
  loc_BA8BC4: FLdRfVar var_F0
  loc_BA8BC7: FLdRfVar var_EC
  loc_BA8BCA: FLdPr Me
  loc_BA8BCD: MemLdRfVar from_stack_1.global_52
  loc_BA8BD0: NewIfNullPr clsproveedor
  loc_BA8BD3: from_stack_1v = clsproveedor.RsFrmGet()
  loc_BA8BD8: FLdPr var_EC
  loc_BA8BDB:  = Me.Fields
  loc_BA8BE0: FLdPr var_F0
  loc_BA8BE3: from_stack_2 = Me.Item(from_stack_1)
  loc_BA8BE8: FLdPr var_104
  loc_BA8BEB:  = Me.Value
  loc_BA8BF0: FLdRfVar var_B8
  loc_BA8BF3: LitVarStr var_114, vbNullString
  loc_BA8BF8: HardType
  loc_BA8BF9: EqVar var_C8
  loc_BA8BFD: OrVar var_134
  loc_BA8C01: CBoolVarNull
  loc_BA8C03: FFreeAd var_94 = "": var_D4 = "": var_EC = "": var_F0 = ""
  loc_BA8C10: FFreeVar var_A8 = "": var_B8 = ""
  loc_BA8C19: BranchF loc_BA8E9D
  loc_BA8C1C: LitI2_Byte 2
  loc_BA8C1E: FLdPr Me
  loc_BA8C21: MemStUI1
  loc_BA8C25: ILdRf Me
  loc_BA8C28: CastAd
  loc_BA8C2B: FStAdFunc var_94
  loc_BA8C2E: FLdRfVar var_94
  loc_BA8C31: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BA8C36: FFree1Ad var_94
  loc_BA8C39: LitI4 0
  loc_BA8C3E: LitI4 0
  loc_BA8C43: FLdRfVar var_98
  loc_BA8C46: Redim
  loc_BA8C50: FLdPr Me
  loc_BA8C53: VCallAd Control_ID_dgdABMS
  loc_BA8C56: CVarAd
  loc_BA8C5A: ParmAry1St
  loc_BA8C60: FLdRfVar var_98
  loc_BA8C63: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BA8C68: FLdRfVar var_98
  loc_BA8C6B: Erase
  loc_BA8C6C: ILdRf Me
  loc_BA8C6F: CastAd
  loc_BA8C72: FStAdFunc var_94
  loc_BA8C75: FLdRfVar var_94
  loc_BA8C78: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BA8C7D: FFree1Ad var_94
  loc_BA8C80: ILdRf Me
  loc_BA8C83: CastAd
  loc_BA8C86: FStAdFunc var_94
  loc_BA8C89: FLdRfVar var_94
  loc_BA8C8C: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_BA8C91: FFree1Ad var_94
  loc_BA8C94: LitI4 0
  loc_BA8C99: LitI4 5
  loc_BA8C9E: FLdRfVar var_98
  loc_BA8CA1: Redim
  loc_BA8CAB: FLdPr Me
  loc_BA8CAE: VCallAd Control_ID_CucuPersTxt
  loc_BA8CB1: CVarAd
  loc_BA8CB5: ParmAry1St
  loc_BA8CBB: FLdPr Me
  loc_BA8CBE: VCallAd Control_ID_MoanProvTxt
  loc_BA8CC1: CVarAd
  loc_BA8CC5: ParmAry1St
  loc_BA8CCB: FLdPr Me
  loc_BA8CCE: VCallAd Control_ID_CedeProvChk
  loc_BA8CD1: CVarAd
  loc_BA8CD5: ParmAry1St
  loc_BA8CDB: FLdPr Me
  loc_BA8CDE: VCallAd Control_ID_FedcProvMsk
  loc_BA8CE1: CVarAd
  loc_BA8CE5: ParmAry1St
  loc_BA8CEB: FLdPr Me
  loc_BA8CEE: VCallAd Control_ID_FehcProvMsk
  loc_BA8CF1: CVarAd
  loc_BA8CF5: ParmAry1St
  loc_BA8CFB: FLdPr Me
  loc_BA8CFE: VCallAd Control_ID_TotcProvTxt
  loc_BA8D01: CVarAd
  loc_BA8D05: ParmAry1St
  loc_BA8D0B: FLdRfVar var_98
  loc_BA8D0E: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BA8D13: FLdRfVar var_98
  loc_BA8D16: Erase
  loc_BA8D17: Call Proc_115_47_A52B14()
  loc_BA8D1C: LitStr "Municipalidad de Guaymallén"
  loc_BA8D1F: FStStrCopy var_158
  loc_BA8D22: ILdRf var_158
  loc_BA8D25: LitStr "Municipalidad de Tunuyán"
  loc_BA8D28: EqStr
  loc_BA8D2A: BranchF loc_BA8D63
  loc_BA8D2D: ImpAdLdI4 MemVar_C3D03C
  loc_BA8D30: LitStr "root"
  loc_BA8D33: EqStr
  loc_BA8D35: ImpAdLdI4 MemVar_C3D03C
  loc_BA8D38: LitStr "videlaso"
  loc_BA8D3B: EqStr
  loc_BA8D3D: OrI4
  loc_BA8D3E: ImpAdLdI4 MemVar_C3D03C
  loc_BA8D41: LitStr "prioriro"
  loc_BA8D44: EqStr
  loc_BA8D46: OrI4
  loc_BA8D47: BranchF loc_BA8D60
  loc_BA8D4A: LitI2_Byte &HFF
  loc_BA8D4C: FLdPr Me
  loc_BA8D4F: VCallAd Control_ID_CedeProvChk
  loc_BA8D52: FStAdFunc var_94
  loc_BA8D55: FLdPr var_94
  loc_BA8D58: Me.Enabled = from_stack_1b
  loc_BA8D5D: FFree1Ad var_94
  loc_BA8D60: Branch loc_BA8E88
  loc_BA8D63: ILdRf var_158
  loc_BA8D66: LitStr "Municipalidad de Maipú"
  loc_BA8D69: EqStr
  loc_BA8D6B: BranchF loc_BA8DB6
  loc_BA8D6E: ImpAdLdI4 MemVar_C3D03C
  loc_BA8D71: LitStr "root"
  loc_BA8D74: EqStr
  loc_BA8D76: ImpAdLdI4 MemVar_C3D03C
  loc_BA8D79: LitStr "Cris"
  loc_BA8D7C: EqStr
  loc_BA8D7E: OrI4
  loc_BA8D7F: ImpAdLdI4 MemVar_C3D03C
  loc_BA8D82: LitStr "Lissy"
  loc_BA8D85: EqStr
  loc_BA8D87: OrI4
  loc_BA8D88: ImpAdLdI4 MemVar_C3D03C
  loc_BA8D8B: LitStr "Nati"
  loc_BA8D8E: EqStr
  loc_BA8D90: OrI4
  loc_BA8D91: ImpAdLdI4 MemVar_C3D03C
  loc_BA8D94: LitStr "ptieppo"
  loc_BA8D97: EqStr
  loc_BA8D99: OrI4
  loc_BA8D9A: BranchF loc_BA8DB3
  loc_BA8D9D: LitI2_Byte &HFF
  loc_BA8D9F: FLdPr Me
  loc_BA8DA2: VCallAd Control_ID_CedeProvChk
  loc_BA8DA5: FStAdFunc var_94
  loc_BA8DA8: FLdPr var_94
  loc_BA8DAB: Me.Enabled = from_stack_1b
  loc_BA8DB0: FFree1Ad var_94
  loc_BA8DB3: Branch loc_BA8E88
  loc_BA8DB6: ILdRf var_158
  loc_BA8DB9: LitStr "Municipalidad de General Alvear"
  loc_BA8DBC: EqStr
  loc_BA8DBE: BranchF loc_BA8E09
  loc_BA8DC1: ImpAdLdI4 MemVar_C3D03C
  loc_BA8DC4: LitStr "root"
  loc_BA8DC7: EqStr
  loc_BA8DC9: ImpAdLdI4 MemVar_C3D03C
  loc_BA8DCC: LitStr "Admin"
  loc_BA8DCF: EqStr
  loc_BA8DD1: OrI4
  loc_BA8DD2: ImpAdLdI4 MemVar_C3D03C
  loc_BA8DD5: LitStr "ivana"
  loc_BA8DD8: EqStr
  loc_BA8DDA: OrI4
  loc_BA8DDB: ImpAdLdI4 MemVar_C3D03C
  loc_BA8DDE: LitStr "amelia"
  loc_BA8DE1: EqStr
  loc_BA8DE3: OrI4
  loc_BA8DE4: ImpAdLdI4 MemVar_C3D03C
  loc_BA8DE7: LitStr "maurip"
  loc_BA8DEA: EqStr
  loc_BA8DEC: OrI4
  loc_BA8DED: BranchF loc_BA8E06
  loc_BA8DF0: LitI2_Byte &HFF
  loc_BA8DF2: FLdPr Me
  loc_BA8DF5: VCallAd Control_ID_CedeProvChk
  loc_BA8DF8: FStAdFunc var_94
  loc_BA8DFB: FLdPr var_94
  loc_BA8DFE: Me.Enabled = from_stack_1b
  loc_BA8E03: FFree1Ad var_94
  loc_BA8E06: Branch loc_BA8E88
  loc_BA8E09: ILdRf var_158
  loc_BA8E0C: LitStr "Municipalidad de Rivadavia"
  loc_BA8E0F: EqStr
  loc_BA8E11: BranchF loc_BA8E4A
  loc_BA8E14: ImpAdLdI4 MemVar_C3D03C
  loc_BA8E17: LitStr "root"
  loc_BA8E1A: EqStr
  loc_BA8E1C: ImpAdLdI4 MemVar_C3D03C
  loc_BA8E1F: LitStr "jorgeg"
  loc_BA8E22: EqStr
  loc_BA8E24: OrI4
  loc_BA8E25: ImpAdLdI4 MemVar_C3D03C
  loc_BA8E28: LitStr "mgonzale"
  loc_BA8E2B: EqStr
  loc_BA8E2D: OrI4
  loc_BA8E2E: BranchF loc_BA8E47
  loc_BA8E31: LitI2_Byte &HFF
  loc_BA8E33: FLdPr Me
  loc_BA8E36: VCallAd Control_ID_CedeProvChk
  loc_BA8E39: FStAdFunc var_94
  loc_BA8E3C: FLdPr var_94
  loc_BA8E3F: Me.Enabled = from_stack_1b
  loc_BA8E44: FFree1Ad var_94
  loc_BA8E47: Branch loc_BA8E88
  loc_BA8E4A: ILdRf var_158
  loc_BA8E4D: LitStr "Municipalidad de Guaymallén"
  loc_BA8E50: EqStr
  loc_BA8E52: BranchF loc_BA8E88
  loc_BA8E55: ImpAdLdI4 MemVar_C3D03C
  loc_BA8E58: LitStr "root"
  loc_BA8E5B: EqStr
  loc_BA8E5D: ImpAdLdI4 MemVar_C3D03C
  loc_BA8E60: LitStr "HUGO"
  loc_BA8E63: EqStr
  loc_BA8E65: OrI4
  loc_BA8E66: ImpAdLdI4 MemVar_C3D03C
  loc_BA8E69: LitStr "dbilyk"
  loc_BA8E6C: EqStr
  loc_BA8E6E: OrI4
  loc_BA8E6F: BranchF loc_BA8E88
  loc_BA8E72: LitI2_Byte &HFF
  loc_BA8E74: FLdPr Me
  loc_BA8E77: VCallAd Control_ID_CedeProvChk
  loc_BA8E7A: FStAdFunc var_94
  loc_BA8E7D: FLdPr var_94
  loc_BA8E80: Me.Enabled = from_stack_1b
  loc_BA8E85: FFree1Ad var_94
  loc_BA8E88: FLdPr Me
  loc_BA8E8B: VCallAd Control_ID_DetaProvTxt
  loc_BA8E8E: CVarAd
  loc_BA8E92: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BA8E97: FFree1Var var_A8 = ""
  loc_BA8E9A: Branch loc_BA8EAA
  loc_BA8E9D: LitI4 0
  loc_BA8EA2: LitStr "El proveedor ya está anulado, no puede modificarlo."
  loc_BA8EA5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA8EAA: Branch loc_BA97B8
  loc_BA8EAD: ILdRf var_90
  loc_BA8EB0: LitStr "btnEliminar"
  loc_BA8EB3: EqStr
  loc_BA8EB5: BranchF loc_BA9057
  loc_BA8EB8: FLdRfVar var_D0
  loc_BA8EBB: FLdPr Me
  loc_BA8EBE: MemLdRfVar from_stack_1.global_52
  loc_BA8EC1: NewIfNullPr clsproveedor
  loc_BA8EC4: from_stack_1 = clsproveedor.RecordCount
  loc_BA8EC9: ILdRf var_D0
  loc_BA8ECC: LitI4 0
  loc_BA8ED1: GtI4
  loc_BA8ED2: BranchF loc_BA9054
  loc_BA8ED5: FLdRfVar var_15C
  loc_BA8ED8: FLdRfVar var_A8
  loc_BA8EDB: FLdRfVar var_E8
  loc_BA8EDE: LitVarStr var_E4, "CucuPers"
  loc_BA8EE3: PopAdLdVar
  loc_BA8EE4: FLdRfVar var_D4
  loc_BA8EE7: FLdRfVar var_94
  loc_BA8EEA: FLdPr Me
  loc_BA8EED: MemLdRfVar from_stack_1.global_52
  loc_BA8EF0: NewIfNullPr clsproveedor
  loc_BA8EF3: from_stack_1v = clsproveedor.RsFrmGet()
  loc_BA8EF8: FLdPr var_94
  loc_BA8EFB:  = Me.Fields
  loc_BA8F00: FLdPr var_D4
  loc_BA8F03: from_stack_2 = Me.Item(from_stack_1)
  loc_BA8F08: FLdPr var_E8
  loc_BA8F0B:  = Me.Value
  loc_BA8F10: FLdRfVar var_A8
  loc_BA8F13: CStrVarTmp
  loc_BA8F14: FStStrNoPop var_8C
  loc_BA8F17: FLdPr Me
  loc_BA8F1A: MemLdRfVar from_stack_1.global_52
  loc_BA8F1D: NewIfNullPr clsproveedor
  loc_BA8F20: from_stack_2v = clsproveedor.ValidaEliminar(from_stack_1v)
  loc_BA8F25: ILdRf var_15C
  loc_BA8F28: FLdPr Me
  loc_BA8F2B: MemStStrCopy
  loc_BA8F2F: FFreeStr var_8C = ""
  loc_BA8F36: FFreeAd var_94 = "": var_D4 = ""
  loc_BA8F3F: FFree1Var var_A8 = ""
  loc_BA8F42: FLdPr Me
  loc_BA8F45: MemLdStr global_60
  loc_BA8F48: LitStr vbNullString
  loc_BA8F4B: NeStr
  loc_BA8F4D: BranchF loc_BA902A
  loc_BA8F50: LitI4 0
  loc_BA8F55: FLdPr Me
  loc_BA8F58: MemLdStr global_60
  loc_BA8F5B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA8F60: LitI2_Byte 0
  loc_BA8F62: PopTmpLdAd2 var_160
  loc_BA8F65: LitI2_Byte &HFF
  loc_BA8F67: PopTmpLdAd2 var_15E
  loc_BA8F6A: LitStr "¿Desea ANULAR el Proveedor?"
  loc_BA8F6D: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BA8F72: CI4UI1
  loc_BA8F73: LitI4 6
  loc_BA8F78: EqI4
  loc_BA8F79: BranchF loc_BA9027
  loc_BA8F7C: LitI2_Byte 3
  loc_BA8F7E: FLdPr Me
  loc_BA8F81: MemStUI1
  loc_BA8F85: ILdRf Me
  loc_BA8F88: CastAd
  loc_BA8F8B: FStAdFunc var_94
  loc_BA8F8E: FLdRfVar var_94
  loc_BA8F91: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BA8F96: FFree1Ad var_94
  loc_BA8F99: LitI4 0
  loc_BA8F9E: LitI4 0
  loc_BA8FA3: FLdRfVar var_98
  loc_BA8FA6: Redim
  loc_BA8FB0: FLdPr Me
  loc_BA8FB3: VCallAd Control_ID_dgdABMS
  loc_BA8FB6: CVarAd
  loc_BA8FBA: ParmAry1St
  loc_BA8FC0: FLdRfVar var_98
  loc_BA8FC3: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BA8FC8: FLdRfVar var_98
  loc_BA8FCB: Erase
  loc_BA8FCC: ILdRf Me
  loc_BA8FCF: CastAd
  loc_BA8FD2: FStAdFunc var_94
  loc_BA8FD5: FLdRfVar var_94
  loc_BA8FD8: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BA8FDD: FFree1Ad var_94
  loc_BA8FE0: ILdRf Me
  loc_BA8FE3: CastAd
  loc_BA8FE6: FStAdFunc var_94
  loc_BA8FE9: FLdRfVar var_94
  loc_BA8FEC: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_BA8FF1: FFree1Ad var_94
  loc_BA8FF4: LitI4 0
  loc_BA8FF9: LitI4 0
  loc_BA8FFE: FLdRfVar var_98
  loc_BA9001: Redim
  loc_BA900B: FLdPr Me
  loc_BA900E: VCallAd Control_ID_MoanProvTxt
  loc_BA9011: CVarAd
  loc_BA9015: ParmAry1St
  loc_BA901B: FLdRfVar var_98
  loc_BA901E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BA9023: FLdRfVar var_98
  loc_BA9026: Erase
  loc_BA9027: Branch loc_BA9054
  loc_BA902A: LitI2_Byte 0
  loc_BA902C: PopTmpLdAd2 var_160
  loc_BA902F: LitI2_Byte &HFF
  loc_BA9031: PopTmpLdAd2 var_15E
  loc_BA9034: LitStr "¿Desea ELIMINAR el Proveedor?"
  loc_BA9037: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BA903C: CI4UI1
  loc_BA903D: LitI4 6
  loc_BA9042: EqI4
  loc_BA9043: BranchF loc_BA9054
  loc_BA9046: FLdPr Me
  loc_BA9049: MemLdRfVar from_stack_1.global_52
  loc_BA904C: NewIfNullPr clsproveedor
  loc_BA904F: Call clsproveedor.Eliminar()
  loc_BA9054: Branch loc_BA97B8
  loc_BA9057: ILdRf var_90
  loc_BA905A: LitStr "btnGuardar"
  loc_BA905D: EqStr
  loc_BA905F: BranchF loc_BA9688
  loc_BA9062: LitStr vbNullString
  loc_BA9065: FLdPr Me
  loc_BA9068: MemStStrCopy
  loc_BA906C: LitI2_Byte 0
  loc_BA906E: PopTmpLdAd2 var_15E
  loc_BA9071: Call CucuPersTxt_Validate(from_stack_1v)
  loc_BA9076: FLdPr Me
  loc_BA9079: MemLdStr global_60
  loc_BA907C: LitStr vbNullString
  loc_BA907F: EqStr
  loc_BA9081: FLdRfVar var_15E
  loc_BA9084: FLdPr Me
  loc_BA9087: VCallAd Control_ID_CucuPersTxt
  loc_BA908A: FStAdFunc var_94
  loc_BA908D: FLdPr var_94
  loc_BA9090:  = Me.Enabled
  loc_BA9095: FLdI2 var_15E
  loc_BA9098: AndI4
  loc_BA9099: FFree1Ad var_94
  loc_BA909C: BranchF loc_BA90A0
  loc_BA909F: ExitProcHresult
  loc_BA90A0: LitI2_Byte 0
  loc_BA90A2: PopTmpLdAd2 var_15E
  loc_BA90A5: Call DetaProvTxt_Validate(from_stack_1v)
  loc_BA90AA: FLdPr Me
  loc_BA90AD: MemLdStr global_60
  loc_BA90B0: LitStr vbNullString
  loc_BA90B3: NeStr
  loc_BA90B5: BranchF loc_BA90B9
  loc_BA90B8: ExitProcHresult
  loc_BA90B9: LitI2_Byte 0
  loc_BA90BB: PopTmpLdAd2 var_15E
  loc_BA90BE: Call DofiProvTxt_Validate(from_stack_1v)
  loc_BA90C3: FLdPr Me
  loc_BA90C6: MemLdStr global_60
  loc_BA90C9: LitStr vbNullString
  loc_BA90CC: NeStr
  loc_BA90CE: BranchF loc_BA90D2
  loc_BA90D1: ExitProcHresult
  loc_BA90D2: LitI2_Byte 0
  loc_BA90D4: PopTmpLdAd2 var_15E
  loc_BA90D7: Call FantProvTxt_Validate(from_stack_1v)
  loc_BA90DC: FLdPr Me
  loc_BA90DF: MemLdStr global_60
  loc_BA90E2: LitStr vbNullString
  loc_BA90E5: NeStr
  loc_BA90E7: BranchF loc_BA90EB
  loc_BA90EA: ExitProcHresult
  loc_BA90EB: LitI2_Byte 0
  loc_BA90ED: PopTmpLdAd2 var_15E
  loc_BA90F0: Call CubaProvTxt_Validate(from_stack_1v)
  loc_BA90F5: FLdPr Me
  loc_BA90F8: MemLdStr global_60
  loc_BA90FB: LitStr vbNullString
  loc_BA90FE: NeStr
  loc_BA9100: BranchF loc_BA9104
  loc_BA9103: ExitProcHresult
  loc_BA9104: LitI2_Byte 0
  loc_BA9106: PopTmpLdAd2 var_15E
  loc_BA9109: Call PainProvTxt_Validate(from_stack_1v)
  loc_BA910E: FLdPr Me
  loc_BA9111: MemLdStr global_60
  loc_BA9114: LitStr vbNullString
  loc_BA9117: NeStr
  loc_BA9119: BranchF loc_BA911D
  loc_BA911C: ExitProcHresult
  loc_BA911D: LitI2_Byte 0
  loc_BA911F: PopTmpLdAd2 var_15E
  loc_BA9122: Call FactProvCbo_Validate(from_stack_1v)
  loc_BA9127: FLdPr Me
  loc_BA912A: MemLdStr global_60
  loc_BA912D: LitStr vbNullString
  loc_BA9130: NeStr
  loc_BA9132: BranchF loc_BA9136
  loc_BA9135: ExitProcHresult
  loc_BA9136: LitI2_Byte 0
  loc_BA9138: PopTmpLdAd2 var_15E
  loc_BA913B: Call FeviProvMsk_UnknownEvent_8()
  loc_BA9140: FLdPr Me
  loc_BA9143: MemLdStr global_60
  loc_BA9146: LitStr vbNullString
  loc_BA9149: NeStr
  loc_BA914B: BranchF loc_BA914F
  loc_BA914E: ExitProcHresult
  loc_BA914F: LitI2_Byte 0
  loc_BA9151: PopTmpLdAd2 var_15E
  loc_BA9154: Call ExpeProvTxt_Validate(from_stack_1v)
  loc_BA9159: FLdPr Me
  loc_BA915C: MemLdStr global_60
  loc_BA915F: LitStr vbNullString
  loc_BA9162: NeStr
  loc_BA9164: BranchF loc_BA9168
  loc_BA9167: ExitProcHresult
  loc_BA9168: LitI2_Byte 0
  loc_BA916A: PopTmpLdAd2 var_15E
  loc_BA916D: Call DetaDivteCbo_Validate(from_stack_1v)
  loc_BA9172: FLdPr Me
  loc_BA9175: MemLdStr global_60
  loc_BA9178: LitStr vbNullString
  loc_BA917B: NeStr
  loc_BA917D: BranchF loc_BA9181
  loc_BA9180: ExitProcHresult
  loc_BA9181: LitI2_Byte 0
  loc_BA9183: PopTmpLdAd2 var_15E
  loc_BA9186: Call MoanProvTxt_Validate(from_stack_1v)
  loc_BA918B: FLdPr Me
  loc_BA918E: MemLdStr global_60
  loc_BA9191: LitStr vbNullString
  loc_BA9194: NeStr
  loc_BA9196: BranchF loc_BA919A
  loc_BA9199: ExitProcHresult
  loc_BA919A: LitI2_Byte 0
  loc_BA919C: PopTmpLdAd2 var_15E
  loc_BA919F: from_stack_2v = FedcProvMsk_UnknownEvent_8(from_stack_1v)
  loc_BA91A4: FLdPr Me
  loc_BA91A7: MemLdStr global_60
  loc_BA91AA: LitStr vbNullString
  loc_BA91AD: NeStr
  loc_BA91AF: BranchF loc_BA91B3
  loc_BA91B2: ExitProcHresult
  loc_BA91B3: LitI2_Byte 0
  loc_BA91B5: PopTmpLdAd2 var_15E
  loc_BA91B8: Call FehcProvMsk_UnknownEvent_8()
  loc_BA91BD: FLdPr Me
  loc_BA91C0: MemLdStr global_60
  loc_BA91C3: LitStr vbNullString
  loc_BA91C6: NeStr
  loc_BA91C8: BranchF loc_BA91CC
  loc_BA91CB: ExitProcHresult
  loc_BA91CC: LitI2_Byte 0
  loc_BA91CE: PopTmpLdAd2 var_15E
  loc_BA91D1: Call TotcProvTxt_Validate(from_stack_1v)
  loc_BA91D6: FLdPr Me
  loc_BA91D9: MemLdStr global_60
  loc_BA91DC: LitStr vbNullString
  loc_BA91DF: NeStr
  loc_BA91E1: BranchF loc_BA91E5
  loc_BA91E4: ExitProcHresult
  loc_BA91E5: FLdPr Me
  loc_BA91E8: MemLdUI1 global_56
  loc_BA91EC: FStUI1 var_162
  loc_BA91F0: FLdUI1
  loc_BA91F4: LitI2_Byte 1
  loc_BA91F6: EqI2
  loc_BA91F7: BranchF loc_BA943C
  loc_BA91FA: FLdRfVar var_8C
  loc_BA91FD: FLdPr Me
  loc_BA9200: VCallAd Control_ID_CucuPersTxt
  loc_BA9203: FStAdFunc var_94
  loc_BA9206: FLdPr var_94
  loc_BA9209:  = Me.Text
  loc_BA920E: FLdRfVar var_15C
  loc_BA9211: FLdPr Me
  loc_BA9214: VCallAd Control_ID_DetaProvTxt
  loc_BA9217: FStAdFunc var_D4
  loc_BA921A: FLdPr var_D4
  loc_BA921D:  = Me.Text
  loc_BA9222: ILdRf var_15C
  loc_BA9225: ImpAdCallI2 Trim$()
  loc_BA922A: FStStr var_1D0
  loc_BA922D: FLdRfVar var_168
  loc_BA9230: FLdPr Me
  loc_BA9233: VCallAd Control_ID_FantProvTxt
  loc_BA9236: FStAdFunc var_E8
  loc_BA9239: FLdPr var_E8
  loc_BA923C:  = Me.Text
  loc_BA9241: ILdRf var_168
  loc_BA9244: ImpAdCallI2 Trim$()
  loc_BA9249: FStStr var_1D4
  loc_BA924C: FLdRfVar var_16C
  loc_BA924F: FLdPr Me
  loc_BA9252: VCallAd Control_ID_DofiProvTxt
  loc_BA9255: FStAdFunc var_EC
  loc_BA9258: FLdPr var_EC
  loc_BA925B:  = Me.Text
  loc_BA9260: ILdRf var_16C
  loc_BA9263: ImpAdCallI2 Trim$()
  loc_BA9268: FStStr var_1D8
  loc_BA926B: FLdRfVar var_15E
  loc_BA926E: FLdPr Me
  loc_BA9271: VCallAd Control_ID_CccaProvChk
  loc_BA9274: FStAdFunc var_F0
  loc_BA9277: FLdPr var_F0
  loc_BA927A:  = Me.Value
  loc_BA927F: FLdRfVar var_170
  loc_BA9282: FLdPr Me
  loc_BA9285: VCallAd Control_ID_CubaProvTxt
  loc_BA9288: FStAdFunc var_104
  loc_BA928B: FLdPr var_104
  loc_BA928E:  = Me.Text
  loc_BA9293: FLdRfVar var_178
  loc_BA9296: FLdPr Me
  loc_BA9299: VCallAd Control_ID_PainProvTxt
  loc_BA929C: FStAdFunc var_174
  loc_BA929F: FLdPr var_174
  loc_BA92A2:  = Me.Text
  loc_BA92A7: FLdRfVar var_160
  loc_BA92AA: FLdPr Me
  loc_BA92AD: VCallAd Control_ID_LocaProvChk
  loc_BA92B0: FStAdFunc var_17C
  loc_BA92B3: FLdPr var_17C
  loc_BA92B6:  = Me.Value
  loc_BA92BB: FLdPr Me
  loc_BA92BE: VCallAd Control_ID_FedcProvMsk
  loc_BA92C1: FStAdFunc var_180
  loc_BA92C4: FLdPr var_180
  loc_BA92C7: LateIdLdVar var_A8 DispID_15 0
  loc_BA92CE: PopAd
  loc_BA92D0: FLdPr Me
  loc_BA92D3: VCallAd Control_ID_FeviProvMsk
  loc_BA92D6: FStAdFunc var_184
  loc_BA92D9: FLdPr var_184
  loc_BA92DC: LateIdLdVar var_B8 DispID_15 0
  loc_BA92E3: PopAd
  loc_BA92E5: FLdRfVar var_18C
  loc_BA92E8: FLdPr Me
  loc_BA92EB: VCallAd Control_ID_TotcProvTxt
  loc_BA92EE: FStAdFunc var_188
  loc_BA92F1: FLdPr var_188
  loc_BA92F4:  = Me.Text
  loc_BA92F9: FLdRfVar var_194
  loc_BA92FC: FLdPr Me
  loc_BA92FF: VCallAd Control_ID_FactProvCbo
  loc_BA9302: FStAdFunc var_190
  loc_BA9305: FLdPr var_190
  loc_BA9308:  = Me.Text
  loc_BA930D: FLdPr Me
  loc_BA9310: VCallAd Control_ID_FeviProvMsk
  loc_BA9313: FStAdFunc var_198
  loc_BA9316: FLdPr var_198
  loc_BA9319: LateIdLdVar var_C8 DispID_15 0
  loc_BA9320: PopAd
  loc_BA9322: FLdRfVar var_1A0
  loc_BA9325: FLdPr Me
  loc_BA9328: VCallAd Control_ID_ExpeProvTxt
  loc_BA932B: FStAdFunc var_19C
  loc_BA932E: FLdPr var_19C
  loc_BA9331:  = Me.Text
  loc_BA9336: FLdRfVar var_1A6
  loc_BA9339: FLdPr Me
  loc_BA933C: VCallAd Control_ID_CedeProvChk
  loc_BA933F: FStAdFunc var_1A4
  loc_BA9342: FLdPr var_1A4
  loc_BA9345:  = Me.Value
  loc_BA934A: FLdRfVar var_1AE
  loc_BA934D: FLdPr Me
  loc_BA9350: VCallAd Control_ID_DetaDivteCbo
  loc_BA9353: FStAdFunc var_1AC
  loc_BA9356: FLdPr var_1AC
  loc_BA9359:  = Me.ListIndex
  loc_BA935E: FLdRfVar var_1CC
  loc_BA9361: FLdI2 var_1AE
  loc_BA9364: CUI1I2
  loc_BA9366: FLdI2 var_1A6
  loc_BA9369: CUI1I2
  loc_BA936B: ILdRf var_1A0
  loc_BA936E: FLdRfVar var_C8
  loc_BA9371: CStrVarTmp
  loc_BA9372: FStStrNoPop var_1C8
  loc_BA9375: ILdRf var_194
  loc_BA9378: ILdRf var_18C
  loc_BA937B: FLdRfVar var_B8
  loc_BA937E: CStrVarTmp
  loc_BA937F: FStStrNoPop var_1C4
  loc_BA9382: FLdRfVar var_A8
  loc_BA9385: CStrVarTmp
  loc_BA9386: FStStrNoPop var_1C0
  loc_BA9389: FLdI2 var_160
  loc_BA938C: CUI1I2
  loc_BA938E: ILdRf var_178
  loc_BA9391: ILdRf var_170
  loc_BA9394: FLdI2 var_15E
  loc_BA9397: CUI1I2
  loc_BA9399: FLdZeroAd var_1D8
  loc_BA939C: FStStrNoPop var_1BC
  loc_BA939F: FLdZeroAd var_1D4
  loc_BA93A2: FStStrNoPop var_1B8
  loc_BA93A5: FLdZeroAd var_1D0
  loc_BA93A8: FStStrNoPop var_1B4
  loc_BA93AB: ILdRf var_8C
  loc_BA93AE: FLdPr Me
  loc_BA93B1: MemLdRfVar from_stack_1.global_52
  loc_BA93B4: NewIfNullPr clsproveedor
  loc_BA93B7: from_stack_16v = clsproveedor.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BA93BC: ILdRf var_1CC
  loc_BA93BF: FLdPr Me
  loc_BA93C2: MemStStrCopy
  loc_BA93C6: FFreeStr var_15C = "": var_168 = "": var_16C = "": var_8C = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_170 = "": var_178 = "": var_1C0 = "": var_1C4 = "": var_18C = "": var_194 = "": var_1C8 = "": var_1A0 = "": var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_BA93EF: FFreeAd var_94 = "": var_D4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_104 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_190 = "": var_198 = "": var_19C = "": var_1A4 = ""
  loc_BA9412: FFreeVar var_A8 = "": var_B8 = ""
  loc_BA941B: FLdPr Me
  loc_BA941E: MemLdStr global_60
  loc_BA9421: LitStr vbNullString
  loc_BA9424: NeStr
  loc_BA9426: BranchF loc_BA9439
  loc_BA9429: LitI4 0
  loc_BA942E: FLdPr Me
  loc_BA9431: MemLdStr global_60
  loc_BA9434: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA9439: Branch loc_BA9680
  loc_BA943C: FLdUI1
  loc_BA9440: LitI2_Byte 2
  loc_BA9442: EqI2
  loc_BA9443: BranchF loc_BA964B
  loc_BA9446: FLdRfVar var_8C
  loc_BA9449: FLdPr Me
  loc_BA944C: VCallAd Control_ID_CucuPersTxt
  loc_BA944F: FStAdFunc var_94
  loc_BA9452: FLdPr var_94
  loc_BA9455:  = Me.Text
  loc_BA945A: FLdRfVar var_15C
  loc_BA945D: FLdPr Me
  loc_BA9460: VCallAd Control_ID_DetaProvTxt
  loc_BA9463: FStAdFunc var_D4
  loc_BA9466: FLdPr var_D4
  loc_BA9469:  = Me.Text
  loc_BA946E: ILdRf var_15C
  loc_BA9471: ImpAdCallI2 Trim$()
  loc_BA9476: FStStr var_1CC
  loc_BA9479: FLdRfVar var_168
  loc_BA947C: FLdPr Me
  loc_BA947F: VCallAd Control_ID_FantProvTxt
  loc_BA9482: FStAdFunc var_E8
  loc_BA9485: FLdPr var_E8
  loc_BA9488:  = Me.Text
  loc_BA948D: ILdRf var_168
  loc_BA9490: ImpAdCallI2 Trim$()
  loc_BA9495: FStStr var_1D0
  loc_BA9498: FLdRfVar var_16C
  loc_BA949B: FLdPr Me
  loc_BA949E: VCallAd Control_ID_DofiProvTxt
  loc_BA94A1: FStAdFunc var_EC
  loc_BA94A4: FLdPr var_EC
  loc_BA94A7:  = Me.Text
  loc_BA94AC: ILdRf var_16C
  loc_BA94AF: ImpAdCallI2 Trim$()
  loc_BA94B4: FStStr var_1D4
  loc_BA94B7: FLdRfVar var_15E
  loc_BA94BA: FLdPr Me
  loc_BA94BD: VCallAd Control_ID_CccaProvChk
  loc_BA94C0: FStAdFunc var_F0
  loc_BA94C3: FLdPr var_F0
  loc_BA94C6:  = Me.Value
  loc_BA94CB: FLdRfVar var_170
  loc_BA94CE: FLdPr Me
  loc_BA94D1: VCallAd Control_ID_CubaProvTxt
  loc_BA94D4: FStAdFunc var_104
  loc_BA94D7: FLdPr var_104
  loc_BA94DA:  = Me.Text
  loc_BA94DF: FLdRfVar var_178
  loc_BA94E2: FLdPr Me
  loc_BA94E5: VCallAd Control_ID_PainProvTxt
  loc_BA94E8: FStAdFunc var_174
  loc_BA94EB: FLdPr var_174
  loc_BA94EE:  = Me.Text
  loc_BA94F3: FLdRfVar var_160
  loc_BA94F6: FLdPr Me
  loc_BA94F9: VCallAd Control_ID_LocaProvChk
  loc_BA94FC: FStAdFunc var_17C
  loc_BA94FF: FLdPr var_17C
  loc_BA9502:  = Me.Value
  loc_BA9507: FLdPr Me
  loc_BA950A: VCallAd Control_ID_FedcProvMsk
  loc_BA950D: FStAdFunc var_180
  loc_BA9510: FLdPr var_180
  loc_BA9513: LateIdLdVar var_A8 DispID_15 0
  loc_BA951A: PopAd
  loc_BA951C: FLdPr Me
  loc_BA951F: VCallAd Control_ID_FehcProvMsk
  loc_BA9522: FStAdFunc var_184
  loc_BA9525: FLdPr var_184
  loc_BA9528: LateIdLdVar var_B8 DispID_15 0
  loc_BA952F: PopAd
  loc_BA9531: FLdRfVar var_18C
  loc_BA9534: FLdPr Me
  loc_BA9537: VCallAd Control_ID_TotcProvTxt
  loc_BA953A: FStAdFunc var_188
  loc_BA953D: FLdPr var_188
  loc_BA9540:  = Me.Text
  loc_BA9545: FLdRfVar var_194
  loc_BA9548: FLdPr Me
  loc_BA954B: VCallAd Control_ID_FactProvCbo
  loc_BA954E: FStAdFunc var_190
  loc_BA9551: FLdPr var_190
  loc_BA9554:  = Me.Text
  loc_BA9559: FLdPr Me
  loc_BA955C: VCallAd Control_ID_FeviProvMsk
  loc_BA955F: FStAdFunc var_198
  loc_BA9562: FLdPr var_198
  loc_BA9565: LateIdLdVar var_C8 DispID_15 0
  loc_BA956C: PopAd
  loc_BA956E: FLdRfVar var_1A0
  loc_BA9571: FLdPr Me
  loc_BA9574: VCallAd Control_ID_ExpeProvTxt
  loc_BA9577: FStAdFunc var_19C
  loc_BA957A: FLdPr var_19C
  loc_BA957D:  = Me.Text
  loc_BA9582: FLdRfVar var_1A6
  loc_BA9585: FLdPr Me
  loc_BA9588: VCallAd Control_ID_CedeProvChk
  loc_BA958B: FStAdFunc var_1A4
  loc_BA958E: FLdPr var_1A4
  loc_BA9591:  = Me.Value
  loc_BA9596: FLdPr Me
  loc_BA9599: MemLdI2 global_80
  loc_BA959C: CUI1I2
  loc_BA959E: FLdI2 var_1A6
  loc_BA95A1: CUI1I2
  loc_BA95A3: ILdRf var_1A0
  loc_BA95A6: FLdRfVar var_C8
  loc_BA95A9: CStrVarTmp
  loc_BA95AA: FStStrNoPop var_1C8
  loc_BA95AD: ILdRf var_194
  loc_BA95B0: ILdRf var_18C
  loc_BA95B3: CR8Str
  loc_BA95B5: PopFPR8
  loc_BA95B6: FLdRfVar var_B8
  loc_BA95B9: CStrVarTmp
  loc_BA95BA: FStStrNoPop var_1C4
  loc_BA95BD: FLdRfVar var_A8
  loc_BA95C0: CStrVarTmp
  loc_BA95C1: FStStrNoPop var_1C0
  loc_BA95C4: FLdI2 var_160
  loc_BA95C7: CUI1I2
  loc_BA95C9: ILdRf var_178
  loc_BA95CC: ILdRf var_170
  loc_BA95CF: FLdI2 var_15E
  loc_BA95D2: CUI1I2
  loc_BA95D4: FLdZeroAd var_1D4
  loc_BA95D7: FStStrNoPop var_1BC
  loc_BA95DA: FLdZeroAd var_1D0
  loc_BA95DD: FStStrNoPop var_1B8
  loc_BA95E0: FLdZeroAd var_1CC
  loc_BA95E3: FStStrNoPop var_1B4
  loc_BA95E6: ILdRf var_8C
  loc_BA95E9: FLdPr Me
  loc_BA95EC: MemLdRfVar from_stack_1.global_52
  loc_BA95EF: NewIfNullPr clsproveedor
  loc_BA95F2: Call clsproveedor.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BA95F7: FFreeStr var_15C = "": var_168 = "": var_16C = "": var_8C = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_170 = "": var_178 = "": var_1C0 = "": var_1C4 = "": var_18C = "": var_194 = "": var_1C8 = "": var_1A0 = "": var_1CC = "": var_1D0 = ""
  loc_BA961E: FFreeAd var_94 = "": var_D4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_104 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_190 = "": var_198 = "": var_19C = ""
  loc_BA963F: FFreeVar var_A8 = "": var_B8 = ""
  loc_BA9648: Branch loc_BA9680
  loc_BA964B: FLdUI1
  loc_BA964F: LitI2_Byte 3
  loc_BA9651: EqI2
  loc_BA9652: BranchF loc_BA9680
  loc_BA9655: FLdRfVar var_8C
  loc_BA9658: FLdPr Me
  loc_BA965B: VCallAd Control_ID_MoanProvTxt
  loc_BA965E: FStAdFunc var_94
  loc_BA9661: FLdPr var_94
  loc_BA9664:  = Me.Text
  loc_BA9669: ILdRf var_8C
  loc_BA966C: FLdPr Me
  loc_BA966F: MemLdRfVar from_stack_1.global_52
  loc_BA9672: NewIfNullPr clsproveedor
  loc_BA9675: Call clsproveedor.Anular(from_stack_1v)
  loc_BA967A: FFree1Str var_8C
  loc_BA967D: FFree1Ad var_94
  loc_BA9680: Call cmdCancelar_Click()
  loc_BA9685: Branch loc_BA97B8
  loc_BA9688: ILdRf var_90
  loc_BA968B: LitStr "btnCancelar"
  loc_BA968E: EqStr
  loc_BA9690: BranchF loc_BA969B
  loc_BA9693: Call cmdCancelar_Click()
  loc_BA9698: Branch loc_BA97B8
  loc_BA969B: ILdRf var_90
  loc_BA969E: LitStr "btnPrimero"
  loc_BA96A1: EqStr
  loc_BA96A3: BranchF loc_BA96B7
  loc_BA96A6: FLdPr Me
  loc_BA96A9: MemLdRfVar from_stack_1.global_52
  loc_BA96AC: NewIfNullPr clsproveedor
  loc_BA96AF: Call clsproveedor.MoveFirst()
  loc_BA96B4: Branch loc_BA97B8
  loc_BA96B7: ILdRf var_90
  loc_BA96BA: LitStr "btnAnterior"
  loc_BA96BD: EqStr
  loc_BA96BF: BranchF loc_BA96D3
  loc_BA96C2: FLdPr Me
  loc_BA96C5: MemLdRfVar from_stack_1.global_52
  loc_BA96C8: NewIfNullPr clsproveedor
  loc_BA96CB: Call clsproveedor.MovePrevious()
  loc_BA96D0: Branch loc_BA97B8
  loc_BA96D3: ILdRf var_90
  loc_BA96D6: LitStr "btnSiguiente"
  loc_BA96D9: EqStr
  loc_BA96DB: BranchF loc_BA96EF
  loc_BA96DE: FLdPr Me
  loc_BA96E1: MemLdRfVar from_stack_1.global_52
  loc_BA96E4: NewIfNullPr clsproveedor
  loc_BA96E7: Call clsproveedor.MoveNext()
  loc_BA96EC: Branch loc_BA97B8
  loc_BA96EF: ILdRf var_90
  loc_BA96F2: LitStr "btnUltimo"
  loc_BA96F5: EqStr
  loc_BA96F7: BranchF loc_BA970B
  loc_BA96FA: FLdPr Me
  loc_BA96FD: MemLdRfVar from_stack_1.global_52
  loc_BA9700: NewIfNullPr clsproveedor
  loc_BA9703: Call clsproveedor.MoveLast()
  loc_BA9708: Branch loc_BA97B8
  loc_BA970B: ILdRf var_90
  loc_BA970E: LitStr "btnFiltrar"
  loc_BA9711: EqStr
  loc_BA9713: BranchF loc_BA9719
  loc_BA9716: Branch loc_BA97B8
  loc_BA9719: ILdRf var_90
  loc_BA971C: LitStr "btnBuscar"
  loc_BA971F: EqStr
  loc_BA9721: BranchF loc_BA9727
  loc_BA9724: Branch loc_BA97B8
  loc_BA9727: ILdRf var_90
  loc_BA972A: LitStr "btnImprimir"
  loc_BA972D: EqStr
  loc_BA972F: BranchF loc_BA9761
  loc_BA9732: ImpAdLdRf MemVar_C3DB24
  loc_BA9735: NewIfNullAd
  loc_BA9738: CastAd
  loc_BA973B: FStAdFuncNoPop
  loc_BA973E: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BA9743: FFree1Ad var_94
  loc_BA9746: LitVar_Missing var_100
  loc_BA9749: PopAdLdVar
  loc_BA974A: LitVarI4
  loc_BA9752: PopAdLdVar
  loc_BA9753: ImpAdLdRf MemVar_C3DB24
  loc_BA9756: NewIfNullPr rptListadodeProveedores
  loc_BA9759: rptListadodeProveedores.Show from_stack_1, from_stack_2
  loc_BA975E: Branch loc_BA97B8
  loc_BA9761: ILdRf var_90
  loc_BA9764: LitStr "btnAyuda"
  loc_BA9767: EqStr
  loc_BA9769: BranchF loc_BA9798
  loc_BA976C: LitVar_Missing var_134
  loc_BA976F: LitVar_Missing var_C8
  loc_BA9772: LitVar_Missing var_B8
  loc_BA9775: LitI4 0
  loc_BA977A: LitVarStr var_E4, "Opcion no disponible en esta version."
  loc_BA977F: FStVarCopyObj var_A8
  loc_BA9782: FLdRfVar var_A8
  loc_BA9785: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BA978A: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_BA9795: Branch loc_BA97B8
  loc_BA9798: ILdRf var_90
  loc_BA979B: LitStr "btnSalir"
  loc_BA979E: EqStr
  loc_BA97A0: BranchF loc_BA97B8
  loc_BA97A3: ILdRf Me
  loc_BA97A6: FStAdNoPop
  loc_BA97AA: ImpAdLdRf MemVar_C44F9C
  loc_BA97AD: NewIfNullPr Me
  loc_BA97B0: Me.Global.Unload from_stack_1
  loc_BA97B5: FFree1Ad var_94
  loc_BA97B8: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A3CB80
  'Data Table: 4E45FC
  loc_A3C93C: LitVarStr var_94, vbNullString
  loc_A3C941: PopAdLdVar
  loc_A3C942: FLdPr Me
  loc_A3C945: VCallAd Control_ID_FiltroMsk
  loc_A3C948: FStAdFunc var_A8
  loc_A3C94B: FLdPr var_A8
  loc_A3C94E: LateIdSt
  loc_A3C953: FFree1Ad var_A8
  loc_A3C956: FLdRfVar var_AA
  loc_A3C959: FLdPr Me
  loc_A3C95C: VCallAd Control_ID_FiltroCbo
  loc_A3C95F: FStAdFunc var_A8
  loc_A3C962: FLdPr var_A8
  loc_A3C965:  = Me.ListIndex
  loc_A3C96A: FLdI2 var_AA
  loc_A3C96D: FStI2 var_AC
  loc_A3C970: FFree1Ad var_A8
  loc_A3C973: FLdI2 var_AC
  loc_A3C976: LitI2_Byte 0
  loc_A3C978: EqI2
  loc_A3C979: BranchF loc_A3C9B3
  loc_A3C97C: LitVarStr var_94, vbNullString
  loc_A3C981: PopAdLdVar
  loc_A3C982: FLdPr Me
  loc_A3C985: VCallAd Control_ID_FiltroMsk
  loc_A3C988: FStAdFunc var_A8
  loc_A3C98B: FLdPr var_A8
  loc_A3C98E: LateIdSt
  loc_A3C993: FFree1Ad var_A8
  loc_A3C996: LitStr "DetaProv"
  loc_A3C999: FStStrCopy var_B0
  loc_A3C99C: FLdRfVar var_B0
  loc_A3C99F: FLdPr Me
  loc_A3C9A2: MemLdRfVar from_stack_1.global_52
  loc_A3C9A5: NewIfNullPr clsproveedor
  loc_A3C9A8: Call clsproveedor.Sort(from_stack_1v)
  loc_A3C9AD: FFree1Str var_B0
  loc_A3C9B0: Branch loc_A3CB7E
  loc_A3C9B3: FLdI2 var_AC
  loc_A3C9B6: LitI2_Byte 1
  loc_A3C9B8: EqI2
  loc_A3C9B9: BranchF loc_A3C9F3
  loc_A3C9BC: LitVarStr var_94, vbNullString
  loc_A3C9C1: PopAdLdVar
  loc_A3C9C2: FLdPr Me
  loc_A3C9C5: VCallAd Control_ID_FiltroMsk
  loc_A3C9C8: FStAdFunc var_A8
  loc_A3C9CB: FLdPr var_A8
  loc_A3C9CE: LateIdSt
  loc_A3C9D3: FFree1Ad var_A8
  loc_A3C9D6: LitStr "FantProv"
  loc_A3C9D9: FStStrCopy var_B0
  loc_A3C9DC: FLdRfVar var_B0
  loc_A3C9DF: FLdPr Me
  loc_A3C9E2: MemLdRfVar from_stack_1.global_52
  loc_A3C9E5: NewIfNullPr clsproveedor
  loc_A3C9E8: Call clsproveedor.Sort(from_stack_1v)
  loc_A3C9ED: FFree1Str var_B0
  loc_A3C9F0: Branch loc_A3CB7E
  loc_A3C9F3: FLdI2 var_AC
  loc_A3C9F6: LitI2_Byte 2
  loc_A3C9F8: EqI2
  loc_A3C9F9: BranchF loc_A3CA33
  loc_A3C9FC: LitVarStr var_94, "###########"
  loc_A3CA01: PopAdLdVar
  loc_A3CA02: FLdPr Me
  loc_A3CA05: VCallAd Control_ID_FiltroMsk
  loc_A3CA08: FStAdFunc var_A8
  loc_A3CA0B: FLdPr var_A8
  loc_A3CA0E: LateIdSt
  loc_A3CA13: FFree1Ad var_A8
  loc_A3CA16: LitStr "CucuPers"
  loc_A3CA19: FStStrCopy var_B0
  loc_A3CA1C: FLdRfVar var_B0
  loc_A3CA1F: FLdPr Me
  loc_A3CA22: MemLdRfVar from_stack_1.global_52
  loc_A3CA25: NewIfNullPr clsproveedor
  loc_A3CA28: Call clsproveedor.Sort(from_stack_1v)
  loc_A3CA2D: FFree1Str var_B0
  loc_A3CA30: Branch loc_A3CB7E
  loc_A3CA33: FLdI2 var_AC
  loc_A3CA36: LitI2_Byte 3
  loc_A3CA38: EqI2
  loc_A3CA39: BranchF loc_A3CA73
  loc_A3CA3C: LitVarStr var_94, vbNullString
  loc_A3CA41: PopAdLdVar
  loc_A3CA42: FLdPr Me
  loc_A3CA45: VCallAd Control_ID_FiltroMsk
  loc_A3CA48: FStAdFunc var_A8
  loc_A3CA4B: FLdPr var_A8
  loc_A3CA4E: LateIdSt
  loc_A3CA53: FFree1Ad var_A8
  loc_A3CA56: LitStr "MailPers"
  loc_A3CA59: FStStrCopy var_B0
  loc_A3CA5C: FLdRfVar var_B0
  loc_A3CA5F: FLdPr Me
  loc_A3CA62: MemLdRfVar from_stack_1.global_52
  loc_A3CA65: NewIfNullPr clsproveedor
  loc_A3CA68: Call clsproveedor.Sort(from_stack_1v)
  loc_A3CA6D: FFree1Str var_B0
  loc_A3CA70: Branch loc_A3CB7E
  loc_A3CA73: FLdI2 var_AC
  loc_A3CA76: LitI2_Byte 4
  loc_A3CA78: EqI2
  loc_A3CA79: BranchF loc_A3CACD
  loc_A3CA7C: LitVarStr var_94, "&"
  loc_A3CA81: PopAdLdVar
  loc_A3CA82: FLdPr Me
  loc_A3CA85: VCallAd Control_ID_FiltroMsk
  loc_A3CA88: FStAdFunc var_A8
  loc_A3CA8B: FLdPr var_A8
  loc_A3CA8E: LateIdSt
  loc_A3CA93: FFree1Ad var_A8
  loc_A3CA96: LitVarStr var_94, vbNullString
  loc_A3CA9B: PopAdLdVar
  loc_A3CA9C: FLdPr Me
  loc_A3CA9F: VCallAd Control_ID_FiltroMsk
  loc_A3CAA2: FStAdFunc var_A8
  loc_A3CAA5: FLdPr var_A8
  loc_A3CAA8: LateIdSt
  loc_A3CAAD: FFree1Ad var_A8
  loc_A3CAB0: LitStr "EsLoc"
  loc_A3CAB3: FStStrCopy var_B0
  loc_A3CAB6: FLdRfVar var_B0
  loc_A3CAB9: FLdPr Me
  loc_A3CABC: MemLdRfVar from_stack_1.global_52
  loc_A3CABF: NewIfNullPr clsproveedor
  loc_A3CAC2: Call clsproveedor.Sort(from_stack_1v)
  loc_A3CAC7: FFree1Str var_B0
  loc_A3CACA: Branch loc_A3CB7E
  loc_A3CACD: FLdI2 var_AC
  loc_A3CAD0: LitI2_Byte 5
  loc_A3CAD2: EqI2
  loc_A3CAD3: BranchF loc_A3CB27
  loc_A3CAD6: LitVarStr var_94, "&"
  loc_A3CADB: PopAdLdVar
  loc_A3CADC: FLdPr Me
  loc_A3CADF: VCallAd Control_ID_FiltroMsk
  loc_A3CAE2: FStAdFunc var_A8
  loc_A3CAE5: FLdPr var_A8
  loc_A3CAE8: LateIdSt
  loc_A3CAED: FFree1Ad var_A8
  loc_A3CAF0: LitVarStr var_94, vbNullString
  loc_A3CAF5: PopAdLdVar
  loc_A3CAF6: FLdPr Me
  loc_A3CAF9: VCallAd Control_ID_FiltroMsk
  loc_A3CAFC: FStAdFunc var_A8
  loc_A3CAFF: FLdPr var_A8
  loc_A3CB02: LateIdSt
  loc_A3CB07: FFree1Ad var_A8
  loc_A3CB0A: LitStr "ExpeProv"
  loc_A3CB0D: FStStrCopy var_B0
  loc_A3CB10: FLdRfVar var_B0
  loc_A3CB13: FLdPr Me
  loc_A3CB16: MemLdRfVar from_stack_1.global_52
  loc_A3CB19: NewIfNullPr clsproveedor
  loc_A3CB1C: Call clsproveedor.Sort(from_stack_1v)
  loc_A3CB21: FFree1Str var_B0
  loc_A3CB24: Branch loc_A3CB7E
  loc_A3CB27: FLdI2 var_AC
  loc_A3CB2A: LitI2_Byte 6
  loc_A3CB2C: EqI2
  loc_A3CB2D: BranchF loc_A3CB7E
  loc_A3CB30: LitVarStr var_94, "&"
  loc_A3CB35: PopAdLdVar
  loc_A3CB36: FLdPr Me
  loc_A3CB39: VCallAd Control_ID_FiltroMsk
  loc_A3CB3C: FStAdFunc var_A8
  loc_A3CB3F: FLdPr var_A8
  loc_A3CB42: LateIdSt
  loc_A3CB47: FFree1Ad var_A8
  loc_A3CB4A: LitVarStr var_94, vbNullString
  loc_A3CB4F: PopAdLdVar
  loc_A3CB50: FLdPr Me
  loc_A3CB53: VCallAd Control_ID_FiltroMsk
  loc_A3CB56: FStAdFunc var_A8
  loc_A3CB59: FLdPr var_A8
  loc_A3CB5C: LateIdSt
  loc_A3CB61: FFree1Ad var_A8
  loc_A3CB64: LitStr "DetaDivte"
  loc_A3CB67: FStStrCopy var_B0
  loc_A3CB6A: FLdRfVar var_B0
  loc_A3CB6D: FLdPr Me
  loc_A3CB70: MemLdRfVar from_stack_1.global_52
  loc_A3CB73: NewIfNullPr clsproveedor
  loc_A3CB76: Call clsproveedor.Sort(from_stack_1v)
  loc_A3CB7B: FFree1Str var_B0
  loc_A3CB7E: ExitProcHresult
End Sub

Private Sub PainProvTxt_GotFocus() '94E210
  'Data Table: 4E45FC
  loc_94E1FC: FLdPr Me
  loc_94E1FF: VCallAd Control_ID_PainProvTxt
  loc_94E202: CVarAd
  loc_94E206: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E20B: FFree1Var var_94 = ""
  loc_94E20E: ExitProcHresult
End Sub

Private Sub PainProvTxt_Validate(Cancel As Boolean) '9D7020
  'Data Table: 4E45FC
  loc_9D6F30: FLdRfVar var_8A
  loc_9D6F33: FLdPr Me
  loc_9D6F36: VCallAd Control_ID_cmdCancelar
  loc_9D6F39: FStAdFunc var_88
  loc_9D6F3C: FLdPr var_88
  loc_9D6F3F:  = Me.Value
  loc_9D6F44: FLdI2 var_8A
  loc_9D6F47: NotI4
  loc_9D6F48: FLdRfVar var_92
  loc_9D6F4B: FLdPr Me
  loc_9D6F4E: VCallAd Control_ID_PainProvTxt
  loc_9D6F51: FStAdFunc var_90
  loc_9D6F54: FLdPr var_90
  loc_9D6F57:  = Me.Enabled
  loc_9D6F5C: FLdI2 var_92
  loc_9D6F5F: AndI4
  loc_9D6F60: FFreeAd var_88 = ""
  loc_9D6F67: BranchF loc_9D701E
  loc_9D6F6A: FLdRfVar var_98
  loc_9D6F6D: FLdPr Me
  loc_9D6F70: VCallAd Control_ID_PainProvTxt
  loc_9D6F73: FStAdFunc var_88
  loc_9D6F76: FLdPr var_88
  loc_9D6F79:  = Me.Text
  loc_9D6F7E: ILdRf var_98
  loc_9D6F81: LitStr vbNullString
  loc_9D6F84: EqStr
  loc_9D6F86: FFree1Str var_98
  loc_9D6F89: FFree1Ad var_88
  loc_9D6F8C: BranchF loc_9D6FA6
  loc_9D6F8F: LitStr "0"
  loc_9D6F92: FLdPr Me
  loc_9D6F95: VCallAd Control_ID_PainProvTxt
  loc_9D6F98: FStAdFunc var_88
  loc_9D6F9B: FLdPr var_88
  loc_9D6F9E: Me.Text = from_stack_1
  loc_9D6FA3: FFree1Ad var_88
  loc_9D6FA6: FLdRfVar var_9C
  loc_9D6FA9: FLdRfVar var_98
  loc_9D6FAC: FLdPr Me
  loc_9D6FAF: VCallAd Control_ID_PainProvTxt
  loc_9D6FB2: FStAdFunc var_88
  loc_9D6FB5: FLdPr var_88
  loc_9D6FB8:  = Me.Text
  loc_9D6FBD: ILdRf var_98
  loc_9D6FC0: FLdPr Me
  loc_9D6FC3: MemLdRfVar from_stack_1.global_52
  loc_9D6FC6: NewIfNullPr clsproveedor
  loc_9D6FC9: from_stack_2v = clsproveedor.PainProvValidate(from_stack_1v)
  loc_9D6FCE: ILdRf var_9C
  loc_9D6FD1: FLdPr Me
  loc_9D6FD4: MemStStrCopy
  loc_9D6FD8: FFreeStr var_98 = ""
  loc_9D6FDF: FFree1Ad var_88
  loc_9D6FE2: FLdPr Me
  loc_9D6FE5: VCallAd Control_ID_PainProvTxt
  loc_9D6FE8: FStAdFunc var_A4
  loc_9D6FEB: LitNothing
  loc_9D6FED: CastAd
  loc_9D6FF0: FStAdFunc var_A0
  loc_9D6FF3: FLdRfVar var_A0
  loc_9D6FF6: FLdZeroAd var_A4
  loc_9D6FF9: FStAdFuncNoPop
  loc_9D6FFC: CastAd
  loc_9D6FFF: FStAdFunc var_90
  loc_9D7002: FLdRfVar var_90
  loc_9D7005: FLdPr Me
  loc_9D7008: MemLdRfVar from_stack_1.global_60
  loc_9D700B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D7010: IStI2 Cancel
  loc_9D7013: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9D701E: ExitProcHresult
End Sub

Private Sub CubaProvTxt_KeyPress(KeyAscii As Integer) '9584F8
  'Data Table: 4E45FC
  loc_9584E0: LitStr "1234567890"
  loc_9584E3: FStStrCopy var_88
  loc_9584E6: FLdRfVar var_88
  loc_9584E9: ILdRf KeyAscii
  loc_9584EC: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9584F1: IStI2 KeyAscii
  loc_9584F4: FFree1Str var_88
  loc_9584F7: ExitProcHresult
End Sub

Private Sub CubaProvTxt_Validate(Cancel As Boolean) 'A289DC
  'Data Table: 4E45FC
  loc_A28810: FLdRfVar var_8A
  loc_A28813: FLdPr Me
  loc_A28816: VCallAd Control_ID_cmdCancelar
  loc_A28819: FStAdFunc var_88
  loc_A2881C: FLdPr var_88
  loc_A2881F:  = Me.Value
  loc_A28824: FLdI2 var_8A
  loc_A28827: NotI4
  loc_A28828: FLdRfVar var_92
  loc_A2882B: FLdPr Me
  loc_A2882E: VCallAd Control_ID_CubaProvTxt
  loc_A28831: FStAdFunc var_90
  loc_A28834: FLdPr var_90
  loc_A28837:  = Me.Enabled
  loc_A2883C: FLdI2 var_92
  loc_A2883F: AndI4
  loc_A28840: FLdRfVar var_9C
  loc_A28843: FLdPr Me
  loc_A28846: VCallAd Control_ID_CubaProvTxt
  loc_A28849: FStAdFunc var_98
  loc_A2884C: FLdPr var_98
  loc_A2884F:  = Me.Text
  loc_A28854: ILdRf var_9C
  loc_A28857: LitStr vbNullString
  loc_A2885A: NeStr
  loc_A2885C: AndI4
  loc_A2885D: FFree1Str var_9C
  loc_A28860: FFreeAd var_88 = "": var_90 = ""
  loc_A28869: BranchF loc_A289DA
  loc_A2886C: LitStr "Municipalidad de Guaymallén"
  loc_A2886F: LitStr "Municipalidad de Lavalle"
  loc_A28872: EqStr
  loc_A28874: BranchF loc_A2895C
  loc_A28877: FLdRfVar var_9C
  loc_A2887A: FLdPr Me
  loc_A2887D: VCallAd Control_ID_CubaProvTxt
  loc_A28880: FStAdFunc var_88
  loc_A28883: FLdPr var_88
  loc_A28886:  = Me.Text
  loc_A2888B: LitI2_Byte 0
  loc_A2888D: PopTmpLdAd2 var_9E
  loc_A28890: LitI2_Byte &HFF
  loc_A28892: PopTmpLdAd2 var_92
  loc_A28895: LitI2_Byte 5
  loc_A28897: PopTmpLdAd2 var_8A
  loc_A2889A: ILdRf var_9C
  loc_A2889D: LitStr "CBU"
  loc_A288A0: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A288A5: FStStrNoPop var_A4
  loc_A288A8: FLdPr Me
  loc_A288AB: MemStStrCopy
  loc_A288AF: FFreeStr var_9C = ""
  loc_A288B6: FFree1Ad var_88
  loc_A288B9: FLdPr Me
  loc_A288BC: MemLdStr global_60
  loc_A288BF: LitStr vbNullString
  loc_A288C2: NeStr
  loc_A288C4: BranchF loc_A28909
  loc_A288C7: FLdRfVar var_9C
  loc_A288CA: FLdPr Me
  loc_A288CD: VCallAd Control_ID_CubaProvTxt
  loc_A288D0: FStAdFunc var_88
  loc_A288D3: FLdPr var_88
  loc_A288D6:  = Me.Text
  loc_A288DB: LitI2_Byte 0
  loc_A288DD: PopTmpLdAd2 var_9E
  loc_A288E0: LitI2_Byte &HFF
  loc_A288E2: PopTmpLdAd2 var_92
  loc_A288E5: LitI2_Byte 6
  loc_A288E7: PopTmpLdAd2 var_8A
  loc_A288EA: ILdRf var_9C
  loc_A288ED: LitStr "CBU"
  loc_A288F0: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A288F5: FStStrNoPop var_A4
  loc_A288F8: FLdPr Me
  loc_A288FB: MemStStrCopy
  loc_A288FF: FFreeStr var_9C = ""
  loc_A28906: FFree1Ad var_88
  loc_A28909: FLdPr Me
  loc_A2890C: MemLdStr global_60
  loc_A2890F: LitStr vbNullString
  loc_A28912: NeStr
  loc_A28914: BranchF loc_A28959
  loc_A28917: FLdRfVar var_9C
  loc_A2891A: FLdPr Me
  loc_A2891D: VCallAd Control_ID_CubaProvTxt
  loc_A28920: FStAdFunc var_88
  loc_A28923: FLdPr var_88
  loc_A28926:  = Me.Text
  loc_A2892B: LitI2_Byte 0
  loc_A2892D: PopTmpLdAd2 var_9E
  loc_A28930: LitI2_Byte &HFF
  loc_A28932: PopTmpLdAd2 var_92
  loc_A28935: LitI2_Byte 7
  loc_A28937: PopTmpLdAd2 var_8A
  loc_A2893A: ILdRf var_9C
  loc_A2893D: LitStr "CBU"
  loc_A28940: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A28945: FStStrNoPop var_A4
  loc_A28948: FLdPr Me
  loc_A2894B: MemStStrCopy
  loc_A2894F: FFreeStr var_9C = ""
  loc_A28956: FFree1Ad var_88
  loc_A28959: Branch loc_A2899E
  loc_A2895C: FLdRfVar var_9C
  loc_A2895F: FLdPr Me
  loc_A28962: VCallAd Control_ID_CubaProvTxt
  loc_A28965: FStAdFunc var_88
  loc_A28968: FLdPr var_88
  loc_A2896B:  = Me.Text
  loc_A28970: LitI2_Byte 0
  loc_A28972: PopTmpLdAd2 var_9E
  loc_A28975: LitI2_Byte &HFF
  loc_A28977: PopTmpLdAd2 var_92
  loc_A2897A: LitI2_Byte &H16
  loc_A2897C: PopTmpLdAd2 var_8A
  loc_A2897F: ILdRf var_9C
  loc_A28982: LitStr "CBU"
  loc_A28985: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A2898A: FStStrNoPop var_A4
  loc_A2898D: FLdPr Me
  loc_A28990: MemStStrCopy
  loc_A28994: FFreeStr var_9C = ""
  loc_A2899B: FFree1Ad var_88
  loc_A2899E: FLdPr Me
  loc_A289A1: VCallAd Control_ID_CubaProvTxt
  loc_A289A4: FStAdFunc var_A8
  loc_A289A7: LitNothing
  loc_A289A9: CastAd
  loc_A289AC: FStAdFunc var_98
  loc_A289AF: FLdRfVar var_98
  loc_A289B2: FLdZeroAd var_A8
  loc_A289B5: FStAdFuncNoPop
  loc_A289B8: CastAd
  loc_A289BB: FStAdFunc var_90
  loc_A289BE: FLdRfVar var_90
  loc_A289C1: FLdPr Me
  loc_A289C4: MemLdRfVar from_stack_1.global_60
  loc_A289C7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A289CC: IStI2 Cancel
  loc_A289CF: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_A289DA: ExitProcHresult
End Sub

Private Sub DetaProvTxt_Validate(Cancel As Boolean) '9C1218
  'Data Table: 4E45FC
  loc_9C115C: FLdRfVar var_8A
  loc_9C115F: FLdPr Me
  loc_9C1162: VCallAd Control_ID_cmdCancelar
  loc_9C1165: FStAdFunc var_88
  loc_9C1168: FLdPr var_88
  loc_9C116B:  = Me.Value
  loc_9C1170: FLdI2 var_8A
  loc_9C1173: NotI4
  loc_9C1174: FLdRfVar var_92
  loc_9C1177: FLdPr Me
  loc_9C117A: VCallAd Control_ID_DetaProvTxt
  loc_9C117D: FStAdFunc var_90
  loc_9C1180: FLdPr var_90
  loc_9C1183:  = Me.Enabled
  loc_9C1188: FLdI2 var_92
  loc_9C118B: AndI4
  loc_9C118C: FFreeAd var_88 = ""
  loc_9C1193: BranchF loc_9C1214
  loc_9C1196: FLdRfVar var_98
  loc_9C1199: FLdPr Me
  loc_9C119C: VCallAd Control_ID_DetaProvTxt
  loc_9C119F: FStAdFunc var_88
  loc_9C11A2: FLdPr var_88
  loc_9C11A5:  = Me.Text
  loc_9C11AA: LitI2_Byte 0
  loc_9C11AC: PopTmpLdAd2 var_9A
  loc_9C11AF: LitI2_Byte 0
  loc_9C11B1: PopTmpLdAd2 var_92
  loc_9C11B4: LitI2_Byte 0
  loc_9C11B6: PopTmpLdAd2 var_8A
  loc_9C11B9: ILdRf var_98
  loc_9C11BC: LitStr "Detalle"
  loc_9C11BF: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C11C4: FStStrNoPop var_A0
  loc_9C11C7: FLdPr Me
  loc_9C11CA: MemStStrCopy
  loc_9C11CE: FFreeStr var_98 = ""
  loc_9C11D5: FFree1Ad var_88
  loc_9C11D8: FLdPr Me
  loc_9C11DB: VCallAd Control_ID_DetaProvTxt
  loc_9C11DE: FStAdFunc var_A8
  loc_9C11E1: LitNothing
  loc_9C11E3: CastAd
  loc_9C11E6: FStAdFunc var_A4
  loc_9C11E9: FLdRfVar var_A4
  loc_9C11EC: FLdZeroAd var_A8
  loc_9C11EF: FStAdFuncNoPop
  loc_9C11F2: CastAd
  loc_9C11F5: FStAdFunc var_90
  loc_9C11F8: FLdRfVar var_90
  loc_9C11FB: FLdPr Me
  loc_9C11FE: MemLdRfVar from_stack_1.global_60
  loc_9C1201: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C1206: IStI2 Cancel
  loc_9C1209: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C1214: ExitProcHresult
  loc_9C1215: LitI2_Byte 1
End Sub

Private Sub ExpeProvTxt_GotFocus() '94E378
  'Data Table: 4E45FC
  loc_94E364: FLdPr Me
  loc_94E367: VCallAd Control_ID_ExpeProvTxt
  loc_94E36A: CVarAd
  loc_94E36E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E373: FFree1Var var_94 = ""
  loc_94E376: ExitProcHresult
End Sub

Private Sub ExpeProvTxt_KeyPress(KeyAscii As Integer) '983484
  'Data Table: 4E45FC
  loc_983450: ILdI2 KeyAscii
  loc_983453: CI4UI1
  loc_983454: FLdRfVar var_94
  loc_983457: ImpAdCallFPR4  = Chr()
  loc_98345C: FLdRfVar var_94
  loc_98345F: FLdRfVar var_A4
  loc_983462: ImpAdCallFPR4  = Ucase()
  loc_983467: FLdRfVar var_A4
  loc_98346A: CStrVarVal var_A8
  loc_98346E: ImpAdCallI2 Asc()
  loc_983473: IStI2 KeyAscii
  loc_983476: FFree1Str var_A8
  loc_983479: FFreeVar var_94 = ""
  loc_983480: ExitProcHresult
End Sub

Private Sub ExpeProvTxt_Validate(Cancel As Boolean) 'A14ABC
  'Data Table: 4E45FC
  loc_A14944: FLdRfVar var_8A
  loc_A14947: FLdPr Me
  loc_A1494A: VCallAd Control_ID_cmdCancelar
  loc_A1494D: FStAdFunc var_88
  loc_A14950: FLdPr var_88
  loc_A14953:  = Me.Value
  loc_A14958: FLdI2 var_8A
  loc_A1495B: NotI4
  loc_A1495C: FLdRfVar var_92
  loc_A1495F: FLdPr Me
  loc_A14962: VCallAd Control_ID_ExpeProvTxt
  loc_A14965: FStAdFunc var_90
  loc_A14968: FLdPr var_90
  loc_A1496B:  = Me.Enabled
  loc_A14970: FLdI2 var_92
  loc_A14973: AndI4
  loc_A14974: FLdRfVar var_9C
  loc_A14977: FLdPr Me
  loc_A1497A: VCallAd Control_ID_ExpeProvTxt
  loc_A1497D: FStAdFunc var_98
  loc_A14980: FLdPr var_98
  loc_A14983:  = Me.Text
  loc_A14988: ILdRf var_9C
  loc_A1498B: LitStr vbNullString
  loc_A1498E: NeStr
  loc_A14990: AndI4
  loc_A14991: FFree1Str var_9C
  loc_A14994: FFreeAd var_88 = "": var_90 = ""
  loc_A1499D: BranchF loc_A14ABA
  loc_A149A0: FLdRfVar var_9C
  loc_A149A3: FLdPr Me
  loc_A149A6: VCallAd Control_ID_ExpeProvTxt
  loc_A149A9: FStAdFunc var_88
  loc_A149AC: FLdPr var_88
  loc_A149AF:  = Me.Text
  loc_A149B4: LitI2_Byte 0
  loc_A149B6: PopTmpLdAd2 var_9E
  loc_A149B9: LitI2_Byte 0
  loc_A149BB: PopTmpLdAd2 var_92
  loc_A149BE: LitI2_Byte 0
  loc_A149C0: PopTmpLdAd2 var_8A
  loc_A149C3: ILdRf var_9C
  loc_A149C6: LitStr "Expediente"
  loc_A149C9: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A149CE: FStStrNoPop var_A4
  loc_A149D1: FLdPr Me
  loc_A149D4: MemStStrCopy
  loc_A149D8: FFreeStr var_9C = ""
  loc_A149DF: FFree1Ad var_88
  loc_A149E2: FLdPr Me
  loc_A149E5: VCallAd Control_ID_ExpeProvTxt
  loc_A149E8: FStAdFunc var_A8
  loc_A149EB: LitNothing
  loc_A149ED: CastAd
  loc_A149F0: FStAdFunc var_98
  loc_A149F3: FLdRfVar var_98
  loc_A149F6: FLdZeroAd var_A8
  loc_A149F9: FStAdFuncNoPop
  loc_A149FC: CastAd
  loc_A149FF: FStAdFunc var_90
  loc_A14A02: FLdRfVar var_90
  loc_A14A05: FLdPr Me
  loc_A14A08: MemLdRfVar from_stack_1.global_60
  loc_A14A0B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A14A10: IStI2 Cancel
  loc_A14A13: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_A14A1E: ILdI2 Cancel
  loc_A14A21: NotI4
  loc_A14A22: BranchF loc_A14ABA
  loc_A14A25: FLdRfVar var_9C
  loc_A14A28: FLdPr Me
  loc_A14A2B: VCallAd Control_ID_CucuPersTxt
  loc_A14A2E: FStAdFunc var_88
  loc_A14A31: FLdPr var_88
  loc_A14A34:  = Me.Text
  loc_A14A39: FLdRfVar var_A4
  loc_A14A3C: FLdPr Me
  loc_A14A3F: VCallAd Control_ID_ExpeProvTxt
  loc_A14A42: FStAdFunc var_90
  loc_A14A45: FLdPr var_90
  loc_A14A48:  = Me.Text
  loc_A14A4D: FLdRfVar var_AC
  loc_A14A50: ILdRf var_A4
  loc_A14A53: ILdRf var_9C
  loc_A14A56: FLdPr Me
  loc_A14A59: MemLdRfVar from_stack_1.global_52
  loc_A14A5C: NewIfNullPr clsproveedor
  loc_A14A5F: from_stack_3v = clsproveedor.ValidaExpeProv(from_stack_1v, from_stack_2v)
  loc_A14A64: ILdRf var_AC
  loc_A14A67: FLdPr Me
  loc_A14A6A: MemStStrCopy
  loc_A14A6E: FFreeStr var_9C = "": var_A4 = ""
  loc_A14A77: FFreeAd var_88 = ""
  loc_A14A7E: FLdPr Me
  loc_A14A81: VCallAd Control_ID_ExpeProvTxt
  loc_A14A84: FStAdFunc var_A8
  loc_A14A87: LitNothing
  loc_A14A89: CastAd
  loc_A14A8C: FStAdFunc var_98
  loc_A14A8F: FLdRfVar var_98
  loc_A14A92: FLdZeroAd var_A8
  loc_A14A95: FStAdFuncNoPop
  loc_A14A98: CastAd
  loc_A14A9B: FStAdFunc var_90
  loc_A14A9E: FLdRfVar var_90
  loc_A14AA1: FLdPr Me
  loc_A14AA4: MemLdRfVar from_stack_1.global_60
  loc_A14AA7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A14AAC: IStI2 Cancel
  loc_A14AAF: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_A14ABA: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '962548
  'Data Table: 4E45FC
  loc_962530: FLdPr Me
  loc_962533: VCallAd Control_ID_dgdABMS
  loc_962536: FStAdFunc var_88
  loc_962539: FLdRfVar var_88
  loc_96253C: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_962541: FFree1Ad var_88
  loc_962544: ExitProcHresult
  loc_962545: LitI2FP 1278
End Sub

Private Sub dgdABMS_UnknownEvent_1 '962970
  'Data Table: 4E45FC
  loc_962958: FLdPr Me
  loc_96295B: VCallAd Control_ID_dgdABMS
  loc_96295E: FStAdFunc var_88
  loc_962961: FLdRfVar var_88
  loc_962964: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_962969: FFree1Ad var_88
  loc_96296C: ExitProcHresult
  loc_96296D: FLdPr var_7700
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99AEFC
  'Data Table: 4E45FC
  loc_99AEA0: FLdRfVar var_B4
  loc_99AEA3: FLdRfVar var_B0
  loc_99AEA6: FLdI2 ColIndex
  loc_99AEA9: CVarI2 var_A8
  loc_99AEAC: PopAdLdVar
  loc_99AEAD: FLdPr Me
  loc_99AEB0: VCallAd Control_ID_dgdABMS
  loc_99AEB3: FStAdFunc var_88
  loc_99AEB6: FLdPr var_88
  loc_99AEB9: LateIdLdVar var_98 DispID_105 0
  loc_99AEC0: CastAdVar Me
  loc_99AEC4: FStAdFunc var_AC
  loc_99AEC7: FLdPr var_AC
  loc_99AECA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99AECF: FLdPr var_B0
  loc_99AED2:  = Me.DataField
  loc_99AED7: FLdZeroAd var_B4
  loc_99AEDA: PopTmpLdAdStr
  loc_99AEDE: FLdPr Me
  loc_99AEE1: MemLdRfVar from_stack_1.global_52
  loc_99AEE4: NewIfNullPr clsproveedor
  loc_99AEE7: Call clsproveedor.Sort(from_stack_1v)
  loc_99AEEC: FFree1Str var_B8
  loc_99AEEF: FFreeAd var_88 = "": var_AC = ""
  loc_99AEF8: FFree1Var var_98 = ""
  loc_99AEFB: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '94E450
  'Data Table: 4E45FC
  loc_94E43C: FLdPr Me
  loc_94E43F: VCallAd Control_ID_CucuPersTxt
  loc_94E442: CVarAd
  loc_94E446: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E44B: FFree1Var var_94 = ""
  loc_94E44E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) '9F8088
  'Data Table: 4E45FC
  loc_9F7F4C: LitStr "1234567890 "
  loc_9F7F4F: FStStrCopy var_88
  loc_9F7F52: FLdRfVar var_88
  loc_9F7F55: ILdRf KeyAscii
  loc_9F7F58: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9F7F5D: IStI2 KeyAscii
  loc_9F7F60: FFree1Str var_88
  loc_9F7F63: ILdI2 KeyAscii
  loc_9F7F66: CI4UI1
  loc_9F7F67: LitI4 &H20
  loc_9F7F6C: EqI4
  loc_9F7F6D: BranchF loc_9F8086
  loc_9F7F70: LitVar_Missing var_A8
  loc_9F7F73: PopAdLdVar
  loc_9F7F74: LitVarI4
  loc_9F7F7C: PopAdLdVar
  loc_9F7F7D: ImpAdLdRf MemVar_C3D738
  loc_9F7F80: NewIfNullPr bscPersonas
  loc_9F7F83: bscPersonas.Show from_stack_1, from_stack_2
  loc_9F7F88: FLdRfVar var_B0
  loc_9F7F8B: FLdRfVar var_AC
  loc_9F7F8E: ImpAdLdRf MemVar_C3D738
  loc_9F7F91: NewIfNullPr bscPersonas
  loc_9F7F94: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9F7F99: FLdPr var_AC
  loc_9F7F9C: from_stack_1 = clsbase.RecordCount
  loc_9F7FA1: ILdRf var_B0
  loc_9F7FA4: LitI4 0
  loc_9F7FA9: GtI4
  loc_9F7FAA: FFree1Ad var_AC
  loc_9F7FAD: BranchF loc_9F8086
  loc_9F7FB0: FLdRfVar var_CC
  loc_9F7FB3: FLdRfVar var_BC
  loc_9F7FB6: LitVarStr var_98, "CucuPers"
  loc_9F7FBB: PopAdLdVar
  loc_9F7FBC: FLdRfVar var_B8
  loc_9F7FBF: FLdRfVar var_B4
  loc_9F7FC2: FLdRfVar var_AC
  loc_9F7FC5: ImpAdLdRf MemVar_C3D738
  loc_9F7FC8: NewIfNullPr bscPersonas
  loc_9F7FCB: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9F7FD0: FLdPr var_AC
  loc_9F7FD3: from_stack_1v = clsbase.RsFrmGet()
  loc_9F7FD8: FLdPr var_B4
  loc_9F7FDB:  = Me.Fields
  loc_9F7FE0: FLdPr var_B8
  loc_9F7FE3: from_stack_2 = Me.Item(from_stack_1)
  loc_9F7FE8: FLdPr var_BC
  loc_9F7FEB:  = Me.Value
  loc_9F7FF0: FLdRfVar var_CC
  loc_9F7FF3: CStrVarTmp
  loc_9F7FF4: FStStrNoPop var_88
  loc_9F7FF7: FLdPr Me
  loc_9F7FFA: VCallAd Control_ID_CucuPersTxt
  loc_9F7FFD: FStAdFunc var_D0
  loc_9F8000: FLdPr var_D0
  loc_9F8003: Me.Text = from_stack_1
  loc_9F8008: FFree1Str var_88
  loc_9F800B: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9F8018: FFree1Var var_CC = ""
  loc_9F801B: FLdRfVar var_CC
  loc_9F801E: FLdRfVar var_BC
  loc_9F8021: LitVarStr var_98, "DetaPers"
  loc_9F8026: PopAdLdVar
  loc_9F8027: FLdRfVar var_B8
  loc_9F802A: FLdRfVar var_B4
  loc_9F802D: FLdRfVar var_AC
  loc_9F8030: ImpAdLdRf MemVar_C3D738
  loc_9F8033: NewIfNullPr bscPersonas
  loc_9F8036: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9F803B: FLdPr var_AC
  loc_9F803E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8043: FLdPr var_B4
  loc_9F8046:  = Me.Fields
  loc_9F804B: FLdPr var_B8
  loc_9F804E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8053: FLdPr var_BC
  loc_9F8056:  = Me.Value
  loc_9F805B: FLdRfVar var_CC
  loc_9F805E: CStrVarTmp
  loc_9F805F: FStStrNoPop var_88
  loc_9F8062: FLdPr Me
  loc_9F8065: VCallAd Control_ID_DetaProvTxt
  loc_9F8068: FStAdFunc var_D0
  loc_9F806B: FLdPr var_D0
  loc_9F806E: Me.Text = from_stack_1
  loc_9F8073: FFree1Str var_88
  loc_9F8076: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9F8083: FFree1Var var_CC = ""
  loc_9F8086: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) '9BCD98
  'Data Table: 4E45FC
  loc_9BCCE4: FLdRfVar var_8A
  loc_9BCCE7: FLdPr Me
  loc_9BCCEA: VCallAd Control_ID_cmdCancelar
  loc_9BCCED: FStAdFunc var_88
  loc_9BCCF0: FLdPr var_88
  loc_9BCCF3:  = Me.Value
  loc_9BCCF8: FLdI2 var_8A
  loc_9BCCFB: NotI4
  loc_9BCCFC: FLdRfVar var_92
  loc_9BCCFF: FLdPr Me
  loc_9BCD02: VCallAd Control_ID_CucuPersTxt
  loc_9BCD05: FStAdFunc var_90
  loc_9BCD08: FLdPr var_90
  loc_9BCD0B:  = Me.Enabled
  loc_9BCD10: FLdI2 var_92
  loc_9BCD13: AndI4
  loc_9BCD14: FFreeAd var_88 = ""
  loc_9BCD1B: BranchF loc_9BCD94
  loc_9BCD1E: FLdRfVar var_98
  loc_9BCD21: FLdPr Me
  loc_9BCD24: VCallAd Control_ID_CucuPersTxt
  loc_9BCD27: FStAdFunc var_88
  loc_9BCD2A: FLdPr var_88
  loc_9BCD2D:  = Me.Text
  loc_9BCD32: FLdPr Me
  loc_9BCD35: MemLdRfVar from_stack_1.global_76
  loc_9BCD38: NewIfNullRf
  loc_9BCD3C: ILdRf var_98
  loc_9BCD3F: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9BCD44: FStStrNoPop var_9C
  loc_9BCD47: FLdPr Me
  loc_9BCD4A: MemStStrCopy
  loc_9BCD4E: FFreeStr var_98 = ""
  loc_9BCD55: FFree1Ad var_88
  loc_9BCD58: FLdPr Me
  loc_9BCD5B: VCallAd Control_ID_CucuPersTxt
  loc_9BCD5E: FStAdFunc var_A4
  loc_9BCD61: LitNothing
  loc_9BCD63: CastAd
  loc_9BCD66: FStAdFunc var_A0
  loc_9BCD69: FLdRfVar var_A0
  loc_9BCD6C: FLdZeroAd var_A4
  loc_9BCD6F: FStAdFuncNoPop
  loc_9BCD72: CastAd
  loc_9BCD75: FStAdFunc var_90
  loc_9BCD78: FLdRfVar var_90
  loc_9BCD7B: FLdPr Me
  loc_9BCD7E: MemLdRfVar from_stack_1.global_60
  loc_9BCD81: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BCD86: IStI2 Cancel
  loc_9BCD89: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BCD94: ExitProcHresult
  loc_9BCD95: PopAdLdVar
  loc_9BCD96: FLdPr var_7BF8
End Sub

Private Sub cmdSugerirPainProv_Click() '9A4AC0
  'Data Table: 4E45FC
  loc_9A4A48: FLdRfVar var_8C
  loc_9A4A4B: FLdPr Me
  loc_9A4A4E: VCallAd Control_ID_PainProvTxt
  loc_9A4A51: FStAdFunc var_88
  loc_9A4A54: FLdPr var_88
  loc_9A4A57:  = Me.Text
  loc_9A4A5C: ILdRf var_8C
  loc_9A4A5F: LitStr vbNullString
  loc_9A4A62: EqStr
  loc_9A4A64: FLdRfVar var_94
  loc_9A4A67: FLdPr Me
  loc_9A4A6A: VCallAd Control_ID_PainProvTxt
  loc_9A4A6D: FStAdFunc var_90
  loc_9A4A70: FLdPr var_90
  loc_9A4A73:  = Me.Text
  loc_9A4A78: ILdRf var_94
  loc_9A4A7B: LitStr "0"
  loc_9A4A7E: EqStr
  loc_9A4A80: OrI4
  loc_9A4A81: FFreeStr var_8C = ""
  loc_9A4A88: FFreeAd var_88 = ""
  loc_9A4A8F: BranchF loc_9A4ABD
  loc_9A4A92: FLdRfVar var_8C
  loc_9A4A95: FLdPr Me
  loc_9A4A98: MemLdRfVar from_stack_1.global_52
  loc_9A4A9B: NewIfNullPr clsproveedor
  loc_9A4A9E: from_stack_1v = clsproveedor.UltimoPainProv()
  loc_9A4AA3: ILdRf var_8C
  loc_9A4AA6: FLdPr Me
  loc_9A4AA9: VCallAd Control_ID_PainProvTxt
  loc_9A4AAC: FStAdFunc var_88
  loc_9A4AAF: FLdPr var_88
  loc_9A4AB2: Me.Text = from_stack_1
  loc_9A4AB7: FFree1Str var_8C
  loc_9A4ABA: FFree1Ad var_88
  loc_9A4ABD: ExitProcHresult
End Sub

Private Sub FantProvTxt_Validate(Cancel As Boolean) '9C1010
  'Data Table: 4E45FC
  loc_9C0F54: FLdRfVar var_8A
  loc_9C0F57: FLdPr Me
  loc_9C0F5A: VCallAd Control_ID_cmdCancelar
  loc_9C0F5D: FStAdFunc var_88
  loc_9C0F60: FLdPr var_88
  loc_9C0F63:  = Me.Value
  loc_9C0F68: FLdI2 var_8A
  loc_9C0F6B: NotI4
  loc_9C0F6C: FLdRfVar var_92
  loc_9C0F6F: FLdPr Me
  loc_9C0F72: VCallAd Control_ID_FantProvTxt
  loc_9C0F75: FStAdFunc var_90
  loc_9C0F78: FLdPr var_90
  loc_9C0F7B:  = Me.Enabled
  loc_9C0F80: FLdI2 var_92
  loc_9C0F83: AndI4
  loc_9C0F84: FFreeAd var_88 = ""
  loc_9C0F8B: BranchF loc_9C100C
  loc_9C0F8E: FLdRfVar var_98
  loc_9C0F91: FLdPr Me
  loc_9C0F94: VCallAd Control_ID_FantProvTxt
  loc_9C0F97: FStAdFunc var_88
  loc_9C0F9A: FLdPr var_88
  loc_9C0F9D:  = Me.Text
  loc_9C0FA2: LitI2_Byte 0
  loc_9C0FA4: PopTmpLdAd2 var_9A
  loc_9C0FA7: LitI2_Byte 0
  loc_9C0FA9: PopTmpLdAd2 var_92
  loc_9C0FAC: LitI2_Byte 0
  loc_9C0FAE: PopTmpLdAd2 var_8A
  loc_9C0FB1: ILdRf var_98
  loc_9C0FB4: LitStr "Nombre de Fantasía"
  loc_9C0FB7: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C0FBC: FStStrNoPop var_A0
  loc_9C0FBF: FLdPr Me
  loc_9C0FC2: MemStStrCopy
  loc_9C0FC6: FFreeStr var_98 = ""
  loc_9C0FCD: FFree1Ad var_88
  loc_9C0FD0: FLdPr Me
  loc_9C0FD3: VCallAd Control_ID_FantProvTxt
  loc_9C0FD6: FStAdFunc var_A8
  loc_9C0FD9: LitNothing
  loc_9C0FDB: CastAd
  loc_9C0FDE: FStAdFunc var_A4
  loc_9C0FE1: FLdRfVar var_A4
  loc_9C0FE4: FLdZeroAd var_A8
  loc_9C0FE7: FStAdFuncNoPop
  loc_9C0FEA: CastAd
  loc_9C0FED: FStAdFunc var_90
  loc_9C0FF0: FLdRfVar var_90
  loc_9C0FF3: FLdPr Me
  loc_9C0FF6: MemLdRfVar from_stack_1.global_60
  loc_9C0FF9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C0FFE: IStI2 Cancel
  loc_9C1001: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C100C: ExitProcHresult
End Sub

Private Sub FeviProvMsk_UnknownEvent_0 '94E330
  'Data Table: 4E45FC
  loc_94E31C: FLdPr Me
  loc_94E31F: VCallAd Control_ID_FeviProvMsk
  loc_94E322: CVarAd
  loc_94E326: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E32B: FFree1Var var_94 = ""
  loc_94E32E: ExitProcHresult
End Sub

Private Sub FeviProvMsk_UnknownEvent_8 '9DC650
  'Data Table: 4E45FC
  loc_9DC554: FLdRfVar var_8A
  loc_9DC557: FLdPr Me
  loc_9DC55A: VCallAd Control_ID_cmdCancelar
  loc_9DC55D: FStAdFunc var_88
  loc_9DC560: FLdPr var_88
  loc_9DC563:  = Me.Value
  loc_9DC568: FLdI2 var_8A
  loc_9DC56B: NotI4
  loc_9DC56C: FLdPr Me
  loc_9DC56F: VCallAd Control_ID_FeviProvMsk
  loc_9DC572: FStAdFunc var_90
  loc_9DC575: FLdPr var_90
  loc_9DC578: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DC57F: CBoolVar
  loc_9DC581: AndI4
  loc_9DC582: FFreeAd var_88 = ""
  loc_9DC589: FFree1Var var_A0 = ""
  loc_9DC58C: BranchF loc_9DC64F
  loc_9DC58F: FLdPr Me
  loc_9DC592: VCallAd Control_ID_FeviProvMsk
  loc_9DC595: FStAdFunc var_88
  loc_9DC598: FLdPr var_88
  loc_9DC59B: LateIdLdVar var_A0 DispID_22 0
  loc_9DC5A2: CStrVarTmp
  loc_9DC5A3: FStStrNoPop var_A4
  loc_9DC5A6: LitStr vbNullString
  loc_9DC5A9: NeStr
  loc_9DC5AB: FFree1Str var_A4
  loc_9DC5AE: FFree1Ad var_88
  loc_9DC5B1: FFree1Var var_A0 = ""
  loc_9DC5B4: BranchF loc_9DC64F
  loc_9DC5B7: FLdPr Me
  loc_9DC5BA: VCallAd Control_ID_FeviProvMsk
  loc_9DC5BD: FStAdFunc var_88
  loc_9DC5C0: FLdPr var_88
  loc_9DC5C3: LateIdLdVar var_A0 DispID_15 0
  loc_9DC5CA: PopAd
  loc_9DC5CC: FLdPr Me
  loc_9DC5CF: VCallAd Control_ID_FeviProvMsk
  loc_9DC5D2: FStAdFunc var_AC
  loc_9DC5D5: LitI2_Byte 0
  loc_9DC5D7: PopTmpLdAd2 var_8A
  loc_9DC5DA: FLdZeroAd var_AC
  loc_9DC5DD: FStAdFunc var_90
  loc_9DC5E0: FLdRfVar var_90
  loc_9DC5E3: LitStr vbNullString
  loc_9DC5E6: LitI2_Byte 0
  loc_9DC5E8: LitI2_Byte 0
  loc_9DC5EA: FLdRfVar var_A0
  loc_9DC5ED: CStrVarTmp
  loc_9DC5EE: FStStrNoPop var_A4
  loc_9DC5F1: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DC5F6: FStStrNoPop var_A8
  loc_9DC5F9: FLdPr Me
  loc_9DC5FC: MemStStrCopy
  loc_9DC600: FFreeStr var_A4 = ""
  loc_9DC607: FFreeAd var_88 = "": var_90 = ""
  loc_9DC610: FFree1Var var_A0 = ""
  loc_9DC613: FLdPr Me
  loc_9DC616: VCallAd Control_ID_FeviProvMsk
  loc_9DC619: FStAdFunc var_B0
  loc_9DC61C: LitNothing
  loc_9DC61E: CastAd
  loc_9DC621: FStAdFunc var_AC
  loc_9DC624: FLdRfVar var_AC
  loc_9DC627: FLdZeroAd var_B0
  loc_9DC62A: FStAdFuncNoPop
  loc_9DC62D: CastAd
  loc_9DC630: FStAdFunc var_90
  loc_9DC633: FLdRfVar var_90
  loc_9DC636: FLdPr Me
  loc_9DC639: MemLdRfVar from_stack_1.global_60
  loc_9DC63C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DC641: IStI2 Cancel
  loc_9DC644: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9DC64F: ExitProcHresult
End Sub

Private Sub FeviProvMsk_KeyPress(KeyAscii As Integer) '9883F0
  'Data Table: 4E45FC
  loc_9883AC: ILdI2 KeyAscii
  loc_9883AF: CI4UI1
  loc_9883B0: LitI4 &H20
  loc_9883B5: EqI4
  loc_9883B6: BranchF loc_9883EC
  loc_9883B9: LitVar_Missing var_A4
  loc_9883BC: PopAdLdVar
  loc_9883BD: LitVarI4
  loc_9883C5: PopAdLdVar
  loc_9883C6: ImpAdLdRf MemVar_C3D9A8
  loc_9883C9: NewIfNullPr frmCalendario
  loc_9883CC: frmCalendario.Show from_stack_1, from_stack_2
  loc_9883D1: ImpAdLdRf MemVar_C3D038
  loc_9883D4: CDargRef
  loc_9883D8: FLdPr Me
  loc_9883DB: VCallAd Control_ID_FeviProvMsk
  loc_9883DE: FStAdFunc var_A8
  loc_9883E1: FLdPr var_A8
  loc_9883E4: LateIdSt
  loc_9883E9: FFree1Ad var_A8
  loc_9883EC: ExitProcHresult
  loc_9883ED: DOC
End Sub

Private Sub FactProvCbo_Validate(Cancel As Boolean) '9A4A00
  'Data Table: 4E45FC
  loc_9A4990: FLdRfVar var_8C
  loc_9A4993: FLdPr Me
  loc_9A4996: VCallAd Control_ID_FactProvCbo
  loc_9A4999: FStAdFunc var_88
  loc_9A499C: FLdPr var_88
  loc_9A499F:  = Me.Text
  loc_9A49A4: ILdRf var_8C
  loc_9A49A7: ImpAdCallI2 Proc_266_21_9A2210()
  loc_9A49AC: FStStrNoPop var_90
  loc_9A49AF: FLdPr Me
  loc_9A49B2: MemStStrCopy
  loc_9A49B6: FFreeStr var_8C = ""
  loc_9A49BD: FFree1Ad var_88
  loc_9A49C0: FLdPr Me
  loc_9A49C3: VCallAd Control_ID_FactProvCbo
  loc_9A49C6: FStAdFunc var_9C
  loc_9A49C9: LitNothing
  loc_9A49CB: CastAd
  loc_9A49CE: FStAdFunc var_98
  loc_9A49D1: FLdRfVar var_98
  loc_9A49D4: FLdZeroAd var_9C
  loc_9A49D7: FStAdFuncNoPop
  loc_9A49DA: CastAd
  loc_9A49DD: FStAdFunc var_94
  loc_9A49E0: FLdRfVar var_94
  loc_9A49E3: FLdPr Me
  loc_9A49E6: MemLdRfVar from_stack_1.global_60
  loc_9A49E9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A49EE: IStI2 Cancel
  loc_9A49F1: FFreeAd var_88 = "": var_94 = "": var_98 = ""
  loc_9A49FC: ExitProcHresult
  loc_9A49FD: FLdRfVar var_88
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94E2E8
  'Data Table: 4E45FC
  loc_94E2D4: FLdPr Me
  loc_94E2D7: VCallAd Control_ID_FiltroMsk
  loc_94E2DA: CVarAd
  loc_94E2DE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E2E3: FFree1Var var_94 = ""
  loc_94E2E6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AC9D48
  'Data Table: 4E45FC
  loc_AC9734: ILdRf Me
  loc_AC9737: CastAd
  loc_AC973A: FStAdFunc var_88
  loc_AC973D: FLdRfVar var_88
  loc_AC9740: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_AC9745: FFree1Ad var_88
  loc_AC9748: FLdPr Me
  loc_AC974B: VCallAd Control_ID_FiltroMsk
  loc_AC974E: FStAdFunc var_88
  loc_AC9751: FLdPr var_88
  loc_AC9754: LateIdLdVar var_98 DispID_22 0
  loc_AC975B: CStrVarTmp
  loc_AC975C: FStStrNoPop var_9C
  loc_AC975F: ImpAdCallI2 Trim$()
  loc_AC9764: FStStrNoPop var_A0
  loc_AC9767: LitStr vbNullString
  loc_AC976A: NeStr
  loc_AC976C: FFreeStr var_9C = ""
  loc_AC9773: FFree1Ad var_88
  loc_AC9776: FFree1Var var_98 = ""
  loc_AC9779: BranchF loc_AC9C1E
  loc_AC977C: FLdRfVar var_A2
  loc_AC977F: FLdPr Me
  loc_AC9782: VCallAd Control_ID_FiltroCbo
  loc_AC9785: FStAdFunc var_88
  loc_AC9788: FLdPr var_88
  loc_AC978B:  = Me.ListIndex
  loc_AC9790: FLdI2 var_A2
  loc_AC9793: LitI2_Byte 0
  loc_AC9795: EqI2
  loc_AC9796: FFree1Ad var_88
  loc_AC9799: BranchF loc_AC981D
  loc_AC979C: LitStr "DetaProv LIKE '" & Chr(37)
  loc_AC979F: FLdPr Me
  loc_AC97A2: VCallAd Control_ID_FiltroMsk
  loc_AC97A5: FStAdFunc var_88
  loc_AC97A8: FLdPr var_88
  loc_AC97AB: LateIdLdVar var_98 DispID_22 0
  loc_AC97B2: CStrVarTmp
  loc_AC97B3: FStStrNoPop var_9C
  loc_AC97B6: ConcatStr
  loc_AC97B7: FStStrNoPop var_A0
  loc_AC97BA: LitStr Chr(37) & "'"
  loc_AC97BD: ConcatStr
  loc_AC97BE: PopTmpLdAdStr
  loc_AC97C2: FLdPr Me
  loc_AC97C5: MemLdRfVar from_stack_1.global_52
  loc_AC97C8: NewIfNullPr clsproveedor
  loc_AC97CB: Call clsproveedor.Filter(from_stack_1v)
  loc_AC97D0: FFreeStr var_9C = "": var_A0 = ""
  loc_AC97D9: FFree1Ad var_88
  loc_AC97DC: FFree1Var var_98 = ""
  loc_AC97DF: LitStr "detalle que contiene """
  loc_AC97E2: FLdPr Me
  loc_AC97E5: VCallAd Control_ID_FiltroMsk
  loc_AC97E8: FStAdFunc var_88
  loc_AC97EB: FLdPr var_88
  loc_AC97EE: LateIdLdVar var_98 DispID_22 0
  loc_AC97F5: CStrVarTmp
  loc_AC97F6: FStStrNoPop var_9C
  loc_AC97F9: ConcatStr
  loc_AC97FA: FStStrNoPop var_A0
  loc_AC97FD: LitStr """"
  loc_AC9800: ConcatStr
  loc_AC9801: FStStrNoPop var_A8
  loc_AC9804: FLdPr Me
  loc_AC9807: MemStStrCopy
  loc_AC980B: FFreeStr var_9C = "": var_A0 = ""
  loc_AC9814: FFree1Ad var_88
  loc_AC9817: FFree1Var var_98 = ""
  loc_AC981A: Branch loc_AC9C1B
  loc_AC981D: FLdRfVar var_A2
  loc_AC9820: FLdPr Me
  loc_AC9823: VCallAd Control_ID_FiltroCbo
  loc_AC9826: FStAdFunc var_88
  loc_AC9829: FLdPr var_88
  loc_AC982C:  = Me.ListIndex
  loc_AC9831: FLdI2 var_A2
  loc_AC9834: LitI2_Byte 1
  loc_AC9836: EqI2
  loc_AC9837: FFree1Ad var_88
  loc_AC983A: BranchF loc_AC98BE
  loc_AC983D: LitStr "FantProv LIKE '" & Chr(37)
  loc_AC9840: FLdPr Me
  loc_AC9843: VCallAd Control_ID_FiltroMsk
  loc_AC9846: FStAdFunc var_88
  loc_AC9849: FLdPr var_88
  loc_AC984C: LateIdLdVar var_98 DispID_22 0
  loc_AC9853: CStrVarTmp
  loc_AC9854: FStStrNoPop var_9C
  loc_AC9857: ConcatStr
  loc_AC9858: FStStrNoPop var_A0
  loc_AC985B: LitStr Chr(37) & "'"
  loc_AC985E: ConcatStr
  loc_AC985F: PopTmpLdAdStr
  loc_AC9863: FLdPr Me
  loc_AC9866: MemLdRfVar from_stack_1.global_52
  loc_AC9869: NewIfNullPr clsproveedor
  loc_AC986C: Call clsproveedor.Filter(from_stack_1v)
  loc_AC9871: FFreeStr var_9C = "": var_A0 = ""
  loc_AC987A: FFree1Ad var_88
  loc_AC987D: FFree1Var var_98 = ""
  loc_AC9880: LitStr "Fantasía que contiene """
  loc_AC9883: FLdPr Me
  loc_AC9886: VCallAd Control_ID_FiltroMsk
  loc_AC9889: FStAdFunc var_88
  loc_AC988C: FLdPr var_88
  loc_AC988F: LateIdLdVar var_98 DispID_22 0
  loc_AC9896: CStrVarTmp
  loc_AC9897: FStStrNoPop var_9C
  loc_AC989A: ConcatStr
  loc_AC989B: FStStrNoPop var_A0
  loc_AC989E: LitStr """"
  loc_AC98A1: ConcatStr
  loc_AC98A2: FStStrNoPop var_A8
  loc_AC98A5: FLdPr Me
  loc_AC98A8: MemStStrCopy
  loc_AC98AC: FFreeStr var_9C = "": var_A0 = ""
  loc_AC98B5: FFree1Ad var_88
  loc_AC98B8: FFree1Var var_98 = ""
  loc_AC98BB: Branch loc_AC9C1B
  loc_AC98BE: FLdRfVar var_A2
  loc_AC98C1: FLdPr Me
  loc_AC98C4: VCallAd Control_ID_FiltroCbo
  loc_AC98C7: FStAdFunc var_88
  loc_AC98CA: FLdPr var_88
  loc_AC98CD:  = Me.ListIndex
  loc_AC98D2: FLdI2 var_A2
  loc_AC98D5: LitI2_Byte 2
  loc_AC98D7: EqI2
  loc_AC98D8: FFree1Ad var_88
  loc_AC98DB: BranchF loc_AC996A
  loc_AC98DE: FLdPr Me
  loc_AC98E1: MemLdStr global_68
  loc_AC98E4: LitStr " AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_AC98E7: ConcatStr
  loc_AC98E8: FStStrNoPop var_9C
  loc_AC98EB: FLdPr Me
  loc_AC98EE: VCallAd Control_ID_FiltroMsk
  loc_AC98F1: FStAdFunc var_88
  loc_AC98F4: FLdPr var_88
  loc_AC98F7: LateIdLdVar var_98 DispID_22 0
  loc_AC98FE: CStrVarTmp
  loc_AC98FF: FStStrNoPop var_A0
  loc_AC9902: ConcatStr
  loc_AC9903: FStStrNoPop var_A8
  loc_AC9906: LitStr Chr(37) & "' ORDER BY proveedor.CucuPers;"
  loc_AC9909: ConcatStr
  loc_AC990A: FStStrNoPop var_AC
  loc_AC990D: FLdPr Me
  loc_AC9910: MemLdRfVar from_stack_1.global_52
  loc_AC9913: NewIfNullPr clsproveedor
  loc_AC9916: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_AC991B: FFreeStr var_9C = "": var_A0 = "": var_A8 = ""
  loc_AC9926: FFree1Ad var_88
  loc_AC9929: FFree1Var var_98 = ""
  loc_AC992C: LitStr "CUIT que contiene """
  loc_AC992F: FLdPr Me
  loc_AC9932: VCallAd Control_ID_FiltroMsk
  loc_AC9935: FStAdFunc var_88
  loc_AC9938: FLdPr var_88
  loc_AC993B: LateIdLdVar var_98 DispID_22 0
  loc_AC9942: CStrVarTmp
  loc_AC9943: FStStrNoPop var_9C
  loc_AC9946: ConcatStr
  loc_AC9947: FStStrNoPop var_A0
  loc_AC994A: LitStr """"
  loc_AC994D: ConcatStr
  loc_AC994E: FStStrNoPop var_A8
  loc_AC9951: FLdPr Me
  loc_AC9954: MemStStrCopy
  loc_AC9958: FFreeStr var_9C = "": var_A0 = ""
  loc_AC9961: FFree1Ad var_88
  loc_AC9964: FFree1Var var_98 = ""
  loc_AC9967: Branch loc_AC9C1B
  loc_AC996A: FLdRfVar var_A2
  loc_AC996D: FLdPr Me
  loc_AC9970: VCallAd Control_ID_FiltroCbo
  loc_AC9973: FStAdFunc var_88
  loc_AC9976: FLdPr var_88
  loc_AC9979:  = Me.ListIndex
  loc_AC997E: FLdI2 var_A2
  loc_AC9981: LitI2_Byte 3
  loc_AC9983: EqI2
  loc_AC9984: FFree1Ad var_88
  loc_AC9987: BranchF loc_AC9A0B
  loc_AC998A: LitStr "MailPers LIKE '" & Chr(37)
  loc_AC998D: FLdPr Me
  loc_AC9990: VCallAd Control_ID_FiltroMsk
  loc_AC9993: FStAdFunc var_88
  loc_AC9996: FLdPr var_88
  loc_AC9999: LateIdLdVar var_98 DispID_22 0
  loc_AC99A0: CStrVarTmp
  loc_AC99A1: FStStrNoPop var_9C
  loc_AC99A4: ConcatStr
  loc_AC99A5: FStStrNoPop var_A0
  loc_AC99A8: LitStr Chr(37) & "'"
  loc_AC99AB: ConcatStr
  loc_AC99AC: PopTmpLdAdStr
  loc_AC99B0: FLdPr Me
  loc_AC99B3: MemLdRfVar from_stack_1.global_52
  loc_AC99B6: NewIfNullPr clsproveedor
  loc_AC99B9: Call clsproveedor.Filter(from_stack_1v)
  loc_AC99BE: FFreeStr var_9C = "": var_A0 = ""
  loc_AC99C7: FFree1Ad var_88
  loc_AC99CA: FFree1Var var_98 = ""
  loc_AC99CD: LitStr "correo que contiene """
  loc_AC99D0: FLdPr Me
  loc_AC99D3: VCallAd Control_ID_FiltroMsk
  loc_AC99D6: FStAdFunc var_88
  loc_AC99D9: FLdPr var_88
  loc_AC99DC: LateIdLdVar var_98 DispID_22 0
  loc_AC99E3: CStrVarTmp
  loc_AC99E4: FStStrNoPop var_9C
  loc_AC99E7: ConcatStr
  loc_AC99E8: FStStrNoPop var_A0
  loc_AC99EB: LitStr """"
  loc_AC99EE: ConcatStr
  loc_AC99EF: FStStrNoPop var_A8
  loc_AC99F2: FLdPr Me
  loc_AC99F5: MemStStrCopy
  loc_AC99F9: FFreeStr var_9C = "": var_A0 = ""
  loc_AC9A02: FFree1Ad var_88
  loc_AC9A05: FFree1Var var_98 = ""
  loc_AC9A08: Branch loc_AC9C1B
  loc_AC9A0B: FLdRfVar var_A2
  loc_AC9A0E: FLdPr Me
  loc_AC9A11: VCallAd Control_ID_FiltroCbo
  loc_AC9A14: FStAdFunc var_88
  loc_AC9A17: FLdPr var_88
  loc_AC9A1A:  = Me.ListIndex
  loc_AC9A1F: FLdI2 var_A2
  loc_AC9A22: LitI2_Byte 4
  loc_AC9A24: EqI2
  loc_AC9A25: FFree1Ad var_88
  loc_AC9A28: BranchF loc_AC9AA3
  loc_AC9A2B: LitStr "EsLoc LIKE '"
  loc_AC9A2E: FLdPr Me
  loc_AC9A31: VCallAd Control_ID_FiltroMsk
  loc_AC9A34: FStAdFunc var_88
  loc_AC9A37: FLdPr var_88
  loc_AC9A3A: LateIdLdVar var_98 DispID_22 0
  loc_AC9A41: CStrVarTmp
  loc_AC9A42: FStStrNoPop var_9C
  loc_AC9A45: ConcatStr
  loc_AC9A46: FStStrNoPop var_A0
  loc_AC9A49: LitStr Chr(37) & "'"
  loc_AC9A4C: ConcatStr
  loc_AC9A4D: PopTmpLdAdStr
  loc_AC9A51: FLdPr Me
  loc_AC9A54: MemLdRfVar from_stack_1.global_52
  loc_AC9A57: NewIfNullPr clsproveedor
  loc_AC9A5A: Call clsproveedor.Filter(from_stack_1v)
  loc_AC9A5F: FFreeStr var_9C = "": var_A0 = ""
  loc_AC9A68: FFree1Ad var_88
  loc_AC9A6B: FFree1Var var_98 = ""
  loc_AC9A6E: LitStr "¿es locador? "
  loc_AC9A71: FLdPr Me
  loc_AC9A74: VCallAd Control_ID_FiltroMsk
  loc_AC9A77: FStAdFunc var_88
  loc_AC9A7A: FLdPr var_88
  loc_AC9A7D: LateIdLdVar var_98 DispID_22 0
  loc_AC9A84: CStrVarTmp
  loc_AC9A85: FStStrNoPop var_9C
  loc_AC9A88: ConcatStr
  loc_AC9A89: FStStrNoPop var_A0
  loc_AC9A8C: FLdPr Me
  loc_AC9A8F: MemStStrCopy
  loc_AC9A93: FFreeStr var_9C = ""
  loc_AC9A9A: FFree1Ad var_88
  loc_AC9A9D: FFree1Var var_98 = ""
  loc_AC9AA0: Branch loc_AC9C1B
  loc_AC9AA3: FLdRfVar var_A2
  loc_AC9AA6: FLdPr Me
  loc_AC9AA9: VCallAd Control_ID_FiltroCbo
  loc_AC9AAC: FStAdFunc var_88
  loc_AC9AAF: FLdPr var_88
  loc_AC9AB2:  = Me.ListIndex
  loc_AC9AB7: FLdI2 var_A2
  loc_AC9ABA: LitI2_Byte 5
  loc_AC9ABC: EqI2
  loc_AC9ABD: FFree1Ad var_88
  loc_AC9AC0: BranchF loc_AC9B3B
  loc_AC9AC3: LitStr "ExpeProv LIKE '"
  loc_AC9AC6: FLdPr Me
  loc_AC9AC9: VCallAd Control_ID_FiltroMsk
  loc_AC9ACC: FStAdFunc var_88
  loc_AC9ACF: FLdPr var_88
  loc_AC9AD2: LateIdLdVar var_98 DispID_22 0
  loc_AC9AD9: CStrVarTmp
  loc_AC9ADA: FStStrNoPop var_9C
  loc_AC9ADD: ConcatStr
  loc_AC9ADE: FStStrNoPop var_A0
  loc_AC9AE1: LitStr Chr(37) & "'"
  loc_AC9AE4: ConcatStr
  loc_AC9AE5: PopTmpLdAdStr
  loc_AC9AE9: FLdPr Me
  loc_AC9AEC: MemLdRfVar from_stack_1.global_52
  loc_AC9AEF: NewIfNullPr clsproveedor
  loc_AC9AF2: Call clsproveedor.Filter(from_stack_1v)
  loc_AC9AF7: FFreeStr var_9C = "": var_A0 = ""
  loc_AC9B00: FFree1Ad var_88
  loc_AC9B03: FFree1Var var_98 = ""
  loc_AC9B06: LitStr "Expediente "
  loc_AC9B09: FLdPr Me
  loc_AC9B0C: VCallAd Control_ID_FiltroMsk
  loc_AC9B0F: FStAdFunc var_88
  loc_AC9B12: FLdPr var_88
  loc_AC9B15: LateIdLdVar var_98 DispID_22 0
  loc_AC9B1C: CStrVarTmp
  loc_AC9B1D: FStStrNoPop var_9C
  loc_AC9B20: ConcatStr
  loc_AC9B21: FStStrNoPop var_A0
  loc_AC9B24: FLdPr Me
  loc_AC9B27: MemStStrCopy
  loc_AC9B2B: FFreeStr var_9C = ""
  loc_AC9B32: FFree1Ad var_88
  loc_AC9B35: FFree1Var var_98 = ""
  loc_AC9B38: Branch loc_AC9C1B
  loc_AC9B3B: FLdRfVar var_A2
  loc_AC9B3E: FLdPr Me
  loc_AC9B41: VCallAd Control_ID_FiltroCbo
  loc_AC9B44: FStAdFunc var_88
  loc_AC9B47: FLdPr var_88
  loc_AC9B4A:  = Me.ListIndex
  loc_AC9B4F: FLdI2 var_A2
  loc_AC9B52: LitI2_Byte 6
  loc_AC9B54: EqI2
  loc_AC9B55: FFree1Ad var_88
  loc_AC9B58: BranchF loc_AC9C1B
  loc_AC9B5B: FLdPr Me
  loc_AC9B5E: VCallAd Control_ID_FiltroMsk
  loc_AC9B61: FStAdFunc var_88
  loc_AC9B64: FLdPr var_88
  loc_AC9B67: LateIdLdVar var_98 DispID_22 0
  loc_AC9B6E: PopAd
  loc_AC9B70: LitI4 0
  loc_AC9B75: LitI4 -1
  loc_AC9B7A: LitI4 1
  loc_AC9B7F: LitStr Chr(37)
  loc_AC9B82: LitStr " "
  loc_AC9B85: FLdRfVar var_98
  loc_AC9B88: CStrVarTmp
  loc_AC9B89: FStStrNoPop var_9C
  loc_AC9B8C: ImpAdCallI2 Replace(, , , , , )
  loc_AC9B91: FStStr var_B4
  loc_AC9B94: LitI4 0
  loc_AC9B99: LitI4 -1
  loc_AC9B9E: LitI4 1
  loc_AC9BA3: LitStr Chr(37)
  loc_AC9BA6: LitStr Chr(37) & "" & Chr(37)
  loc_AC9BA9: LitStr "DetaDivte LIKE '"
  loc_AC9BAC: FLdZeroAd var_B4
  loc_AC9BAF: FStStrNoPop var_A0
  loc_AC9BB2: ConcatStr
  loc_AC9BB3: FStStrNoPop var_A8
  loc_AC9BB6: LitStr Chr(37) & "'"
  loc_AC9BB9: ConcatStr
  loc_AC9BBA: FStStrNoPop var_AC
  loc_AC9BBD: ImpAdCallI2 Replace(, , , , , )
  loc_AC9BC2: PopTmpLdAdStr
  loc_AC9BC6: FLdPr Me
  loc_AC9BC9: MemLdRfVar from_stack_1.global_52
  loc_AC9BCC: NewIfNullPr clsproveedor
  loc_AC9BCF: Call clsproveedor.Filter(from_stack_1v)
  loc_AC9BD4: FFreeStr var_9C = "": var_A0 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AC9BE3: FFree1Ad var_88
  loc_AC9BE6: FFree1Var var_98 = ""
  loc_AC9BE9: LitStr "Ciudad o Prov "
  loc_AC9BEC: FLdPr Me
  loc_AC9BEF: VCallAd Control_ID_FiltroMsk
  loc_AC9BF2: FStAdFunc var_88
  loc_AC9BF5: FLdPr var_88
  loc_AC9BF8: LateIdLdVar var_98 DispID_22 0
  loc_AC9BFF: CStrVarTmp
  loc_AC9C00: FStStrNoPop var_9C
  loc_AC9C03: ConcatStr
  loc_AC9C04: FStStrNoPop var_A0
  loc_AC9C07: FLdPr Me
  loc_AC9C0A: MemStStrCopy
  loc_AC9C0E: FFreeStr var_9C = ""
  loc_AC9C15: FFree1Ad var_88
  loc_AC9C18: FFree1Var var_98 = ""
  loc_AC9C1B: Branch loc_AC9C49
  loc_AC9C1E: FLdPr Me
  loc_AC9C21: MemLdStr global_68
  loc_AC9C24: FLdPr Me
  loc_AC9C27: MemLdStr global_72
  loc_AC9C2A: ConcatStr
  loc_AC9C2B: FStStrNoPop var_9C
  loc_AC9C2E: FLdPr Me
  loc_AC9C31: MemLdRfVar from_stack_1.global_52
  loc_AC9C34: NewIfNullPr clsproveedor
  loc_AC9C37: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_AC9C3C: FFree1Str var_9C
  loc_AC9C3F: LitStr vbNullString
  loc_AC9C42: FLdPr Me
  loc_AC9C45: MemStStrCopy
  loc_AC9C49: FLdRfVar var_B8
  loc_AC9C4C: FLdPr Me
  loc_AC9C4F: MemLdRfVar from_stack_1.global_52
  loc_AC9C52: NewIfNullPr clsproveedor
  loc_AC9C55: from_stack_1 = clsproveedor.RecordCount
  loc_AC9C5A: ILdRf var_B8
  loc_AC9C5D: LitI4 0
  loc_AC9C62: GtI4
  loc_AC9C63: BranchF loc_AC9D01
  loc_AC9C66: FLdPr Me
  loc_AC9C69: MemLdRfVar from_stack_1.global_52
  loc_AC9C6C: NewIfNullAd
  loc_AC9C6F: FStAd var_BC 
  loc_AC9C73: FLdRfVar var_BC
  loc_AC9C76: CVarRef
  loc_AC9C7B: ILdRf Me
  loc_AC9C7E: CastAd
  loc_AC9C81: FStAdFunc var_88
  loc_AC9C84: FLdRfVar var_88
  loc_AC9C87: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_AC9C8C: ILdRf var_BC
  loc_AC9C8F: CastAd
  loc_AC9C92: FLdPr Me
  loc_AC9C95: MemStAdFunc
  loc_AC9C99: FFreeAd var_88 = ""
  loc_AC9CA0: LitI4 0
  loc_AC9CA5: LitI4 1
  loc_AC9CAA: FLdRfVar var_D0
  loc_AC9CAD: Redim
  loc_AC9CB7: FLdPr Me
  loc_AC9CBA: MemLdRfVar from_stack_1.global_52
  loc_AC9CBD: NewIfNullAd
  loc_AC9CC0: FStAd var_88 
  loc_AC9CC4: FLdRfVar var_88
  loc_AC9CC7: CVarRef
  loc_AC9CCC: ParmAry1St
  loc_AC9CD2: FLdPr Me
  loc_AC9CD5: VCallAd Control_ID_dgdABMS
  loc_AC9CD8: CVarAd
  loc_AC9CDC: ParmAry1St
  loc_AC9CE2: FLdRfVar var_D0
  loc_AC9CE5: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_AC9CEA: ILdRf var_88
  loc_AC9CED: CastAd
  loc_AC9CF0: FLdPr Me
  loc_AC9CF3: MemStAdFunc
  loc_AC9CF7: FLdRfVar var_D0
  loc_AC9CFA: Erase
  loc_AC9CFB: FFree1Ad var_88
  loc_AC9CFE: Branch loc_AC9D15
  loc_AC9D01: ILdRf Me
  loc_AC9D04: CastAd
  loc_AC9D07: FStAdFunc var_88
  loc_AC9D0A: FLdRfVar var_88
  loc_AC9D0D: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_AC9D12: FFree1Ad var_88
  loc_AC9D15: FLdPr Me
  loc_AC9D18: VCallAd Control_ID_dgdABMS
  loc_AC9D1B: FStAdFunc var_BC
  loc_AC9D1E: LitI4 0
  loc_AC9D23: FStStrCopy var_9C
  loc_AC9D26: FLdRfVar var_9C
  loc_AC9D29: FLdPr Me
  loc_AC9D2C: MemLdStr global_64
  loc_AC9D2F: FLdZeroAd var_BC
  loc_AC9D32: FStAdFunc var_88
  loc_AC9D35: FLdRfVar var_88
  loc_AC9D38: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_AC9D3D: FFree1Str var_9C
  loc_AC9D40: FFreeAd var_88 = ""
  loc_AC9D47: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9979E4
  'Data Table: 4E45FC
  loc_997980: ILdI2 KeyAscii
  loc_997983: LitI2_Byte &H27
  loc_997985: EqI2
  loc_997986: BranchF loc_99798E
  loc_997989: LitI2_Byte 0
  loc_99798B: IStI2 KeyAscii
  loc_99798E: FLdRfVar var_88
  loc_997991: FLdPr Me
  loc_997994: MemLdRfVar from_stack_1.global_52
  loc_997997: NewIfNullPr clsproveedor
  loc_99799A: from_stack_1 = clsproveedor.RecordCount
  loc_99799F: ILdRf var_88
  loc_9979A2: LitI4 0
  loc_9979A7: EqI4
  loc_9979A8: ILdI2 KeyAscii
  loc_9979AB: CI4UI1
  loc_9979AC: LitI4 8
  loc_9979B1: NeI4
  loc_9979B2: AndI4
  loc_9979B3: FLdPr Me
  loc_9979B6: VCallAd Control_ID_FiltroMsk
  loc_9979B9: FStAdFunc var_8C
  loc_9979BC: FLdPr var_8C
  loc_9979BF: LateIdLdVar var_9C DispID_16 0
  loc_9979C6: CStrVarTmp
  loc_9979C7: FStStrNoPop var_A0
  loc_9979CA: LitStr vbNullString
  loc_9979CD: EqStr
  loc_9979CF: AndI4
  loc_9979D0: FFree1Str var_A0
  loc_9979D3: FFree1Ad var_8C
  loc_9979D6: FFree1Var var_9C = ""
  loc_9979D9: BranchF loc_9979E1
  loc_9979DC: LitI2_Byte 0
  loc_9979DE: IStI2 KeyAscii
  loc_9979E1: ExitProcHresult
  loc_9979E2: LitStr "StrFormMemory_0"
End Sub

Private Sub cmdCancelar_Click() '9DF4B8
  'Data Table: 4E45FC
  loc_9DF3B8: LitI2_Byte 0
  loc_9DF3BA: CUI1I2
  loc_9DF3BC: FLdPr Me
  loc_9DF3BF: MemStUI1
  loc_9DF3C3: ILdRf Me
  loc_9DF3C6: CastAd
  loc_9DF3C9: FStAdFunc var_88
  loc_9DF3CC: FLdRfVar var_88
  loc_9DF3CF: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9DF3D4: FFree1Ad var_88
  loc_9DF3D7: LitI4 0
  loc_9DF3DC: LitI4 0
  loc_9DF3E1: FLdRfVar var_8C
  loc_9DF3E4: Redim
  loc_9DF3EE: FLdPr Me
  loc_9DF3F1: VCallAd Control_ID_dgdABMS
  loc_9DF3F4: CVarAd
  loc_9DF3F8: ParmAry1St
  loc_9DF3FE: FLdRfVar var_8C
  loc_9DF401: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9DF406: FLdRfVar var_8C
  loc_9DF409: Erase
  loc_9DF40A: FLdRfVar var_A0
  loc_9DF40D: FLdPr Me
  loc_9DF410: MemLdRfVar from_stack_1.global_52
  loc_9DF413: NewIfNullPr clsproveedor
  loc_9DF416: from_stack_1 = clsproveedor.AbsolutePosition
  loc_9DF41B: ILdRf var_A0
  loc_9DF41E: LitI4 -3
  loc_9DF423: EqI4
  loc_9DF424: BranchF loc_9DF435
  loc_9DF427: FLdPr Me
  loc_9DF42A: MemLdRfVar from_stack_1.global_52
  loc_9DF42D: NewIfNullPr clsproveedor
  loc_9DF430: Call clsproveedor.MoveFirst()
  loc_9DF435: FLdPr Me
  loc_9DF438: MemLdRfVar from_stack_1.global_52
  loc_9DF43B: NewIfNullAd
  loc_9DF43E: FStAd var_A4 
  loc_9DF442: FLdRfVar var_A4
  loc_9DF445: CVarRef
  loc_9DF44A: ILdRf Me
  loc_9DF44D: CastAd
  loc_9DF450: FStAdFunc var_88
  loc_9DF453: FLdRfVar var_88
  loc_9DF456: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9DF45B: ILdRf var_A4
  loc_9DF45E: CastAd
  loc_9DF461: FLdPr Me
  loc_9DF464: MemStAdFunc
  loc_9DF468: FFreeAd var_88 = ""
  loc_9DF46F: ILdRf Me
  loc_9DF472: CastAd
  loc_9DF475: FStAdFunc var_88
  loc_9DF478: FLdRfVar var_88
  loc_9DF47B: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9DF480: FFree1Ad var_88
  loc_9DF483: FLdPr Me
  loc_9DF486: VCallAd Control_ID_dgdABMS
  loc_9DF489: FStAdFunc var_A4
  loc_9DF48C: LitI4 0
  loc_9DF491: FStStrCopy var_B8
  loc_9DF494: FLdRfVar var_B8
  loc_9DF497: FLdPr Me
  loc_9DF49A: MemLdStr global_64
  loc_9DF49D: FLdZeroAd var_A4
  loc_9DF4A0: FStAdFunc var_88
  loc_9DF4A3: FLdRfVar var_88
  loc_9DF4A6: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9DF4AB: FFree1Str var_B8
  loc_9DF4AE: FFreeAd var_88 = ""
  loc_9DF4B5: ExitProcHresult
  loc_9DF4B6: LtCyR8
End Sub

Private Sub Form_Load() 'A6BECC
  'Data Table: 4E45FC
  loc_A6BB6C: LitStr "Municipalidad de Guaymallén"
  loc_A6BB6F: LitStr "Municipalidad de Malargüe"
  loc_A6BB72: EqStr
  loc_A6BB74: BranchF loc_A6BB8E
  loc_A6BB77: LitStr "RUP:"
  loc_A6BB7A: FLdPr Me
  loc_A6BB7D: VCallAd Control_ID_LabelExpediente
  loc_A6BB80: FStAdFunc var_88
  loc_A6BB83: FLdPr var_88
  loc_A6BB86: Me.Caption = from_stack_1
  loc_A6BB8B: FFree1Ad var_88
  loc_A6BB8E: LitI2_Byte 0
  loc_A6BB90: CR8I2
  loc_A6BB91: PopFPR4
  loc_A6BB92: FLdPr Me
  loc_A6BB95: Me.Left = from_stack_1s
  loc_A6BB9A: LitI2_Byte 0
  loc_A6BB9C: CR8I2
  loc_A6BB9D: PopFPR4
  loc_A6BB9E: FLdPr Me
  loc_A6BBA1: Me.Top = from_stack_1s
  loc_A6BBA6: LitStr vbNullString
  loc_A6BBA9: FLdPr Me
  loc_A6BBAC: MemStStrCopy
  loc_A6BBB0: LitStr "SELECT proveedor.*, persona.*"
  loc_A6BBB3: LitStr ", IF(LocaProv=0,'No','Si') EsLoc"
  loc_A6BBB6: ConcatStr
  loc_A6BBB7: FStStrNoPop var_8C
  loc_A6BBBA: LitStr ", DetaDivte"
  loc_A6BBBD: ConcatStr
  loc_A6BBBE: FStStrNoPop var_90
  loc_A6BBC1: LitStr " FROM proveedor"
  loc_A6BBC4: ConcatStr
  loc_A6BBC5: FStStrNoPop var_94
  loc_A6BBC8: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = proveedor.CucuPers"
  loc_A6BBCB: ConcatStr
  loc_A6BBCC: FStStrNoPop var_98
  loc_A6BBCF: LitStr " INNER JOIN divterritorial dt ON dt.IdDivte = proveedor.IdDivte"
  loc_A6BBD2: ConcatStr
  loc_A6BBD3: FStStrNoPop var_9C
  loc_A6BBD6: LitStr " WHERE TRUE"
  loc_A6BBD9: ConcatStr
  loc_A6BBDA: FStStrNoPop var_A0
  loc_A6BBDD: FLdPr Me
  loc_A6BBE0: MemStStrCopy
  loc_A6BBE4: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A6BBF3: LitStr " ORDER BY proveedor.DetaProv;"
  loc_A6BBF6: FLdPr Me
  loc_A6BBF9: MemStStrCopy
  loc_A6BBFD: FLdPr Me
  loc_A6BC00: MemLdStr global_68
  loc_A6BC03: FLdPr Me
  loc_A6BC06: MemLdStr global_72
  loc_A6BC09: ConcatStr
  loc_A6BC0A: FStStrNoPop var_8C
  loc_A6BC0D: FLdPr Me
  loc_A6BC10: MemLdRfVar from_stack_1.global_52
  loc_A6BC13: NewIfNullPr clsproveedor
  loc_A6BC16: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_A6BC1B: FFree1Str var_8C
  loc_A6BC1E: FLdRfVar var_A4
  loc_A6BC21: NewIfNullAd
  loc_A6BC24: FStAd var_A8 
  loc_A6BC28: LitStr "SELECT IdDivte, DetaDivte FROM divterritorial ORDER BY OrdeDivte, DetaDivte;"
  loc_A6BC2B: FLdPr var_A8
  loc_A6BC2E: Call clsbase.RedefineRS(from_stack_1v)
  loc_A6BC33: FLdRfVar var_AC
  loc_A6BC36: FLdPr var_A8
  loc_A6BC39: from_stack_1 = clsbase.RecordCount
  loc_A6BC3E: ILdRf var_AC
  loc_A6BC41: LitI4 0
  loc_A6BC46: GtI4
  loc_A6BC47: BranchF loc_A6BD53
  loc_A6BC4A: FLdPr var_A8
  loc_A6BC4D: Call clsbase.MoveFirst()
  loc_A6BC52: FLdPr Me
  loc_A6BC55: VCallAd Control_ID_DetaDivteCbo
  loc_A6BC58: FStAdFunc var_88
  loc_A6BC5B: FLdPr var_88
  loc_A6BC5E: Me.Clear
  loc_A6BC63: FFree1Ad var_88
  loc_A6BC66: LitVar_Missing var_E4
  loc_A6BC69: PopAdLdVar
  loc_A6BC6A: FLdRfVar var_D4
  loc_A6BC6D: FLdRfVar var_C4
  loc_A6BC70: LitVarStr var_C0, "DetaDivte"
  loc_A6BC75: PopAdLdVar
  loc_A6BC76: FLdRfVar var_B0
  loc_A6BC79: FLdRfVar var_88
  loc_A6BC7C: FLdPr var_A8
  loc_A6BC7F: from_stack_1v = clsbase.RsFrmGet()
  loc_A6BC84: FLdPr var_88
  loc_A6BC87:  = Me.Fields
  loc_A6BC8C: FLdPr var_B0
  loc_A6BC8F: from_stack_2 = Me.Item(from_stack_1)
  loc_A6BC94: FLdPr var_C4
  loc_A6BC97:  = Me.Value
  loc_A6BC9C: FLdRfVar var_D4
  loc_A6BC9F: CStrVarTmp
  loc_A6BCA0: FStStrNoPop var_8C
  loc_A6BCA3: FLdPr Me
  loc_A6BCA6: VCallAd Control_ID_DetaDivteCbo
  loc_A6BCA9: FStAdFunc var_E8
  loc_A6BCAC: FLdPr var_E8
  loc_A6BCAF: Me.AddItem from_stack_1, from_stack_2
  loc_A6BCB4: FFree1Str var_8C
  loc_A6BCB7: FFreeAd var_88 = "": var_B0 = "": var_C4 = ""
  loc_A6BCC2: FFree1Var var_D4 = ""
  loc_A6BCC5: FLdRfVar var_D4
  loc_A6BCC8: FLdRfVar var_C4
  loc_A6BCCB: LitVarStr var_C0, "IdDivte"
  loc_A6BCD0: PopAdLdVar
  loc_A6BCD1: FLdRfVar var_B0
  loc_A6BCD4: FLdRfVar var_88
  loc_A6BCD7: FLdPr var_A8
  loc_A6BCDA: from_stack_1v = clsbase.RsFrmGet()
  loc_A6BCDF: FLdPr var_88
  loc_A6BCE2:  = Me.Fields
  loc_A6BCE7: FLdPr var_B0
  loc_A6BCEA: from_stack_2 = Me.Item(from_stack_1)
  loc_A6BCEF: FLdPr var_C4
  loc_A6BCF2:  = Me.Value
  loc_A6BCF7: FLdRfVar var_D4
  loc_A6BCFA: CI4Var
  loc_A6BCFC: FLdRfVar var_EA
  loc_A6BCFF: FLdPr Me
  loc_A6BD02: VCallAd Control_ID_DetaDivteCbo
  loc_A6BD05: FStAdFunc var_E8
  loc_A6BD08: FLdPr var_E8
  loc_A6BD0B:  = Me.NewIndex
  loc_A6BD10: FLdI2 var_EA
  loc_A6BD13: FLdPr Me
  loc_A6BD16: VCallAd Control_ID_DetaDivteCbo
  loc_A6BD19: FStAdFunc var_F0
  loc_A6BD1C: FLdPr var_F0
  loc_A6BD1F: Me.ItemData = from_stack_1
  loc_A6BD24: FFreeAd var_88 = "": var_B0 = "": var_E8 = "": var_C4 = ""
  loc_A6BD31: FFree1Var var_D4 = ""
  loc_A6BD34: LitI2_Byte 1
  loc_A6BD36: PopTmpLdAd2 var_EA
  loc_A6BD39: FLdPr var_A8
  loc_A6BD3C: Call clsbase.Move(from_stack_1v)
  loc_A6BD41: FLdRfVar var_EA
  loc_A6BD44: FLdPr var_A8
  loc_A6BD47: from_stack_1 = clsbase.EOF
  loc_A6BD4C: FLdI2 var_EA
  loc_A6BD4F: NotI4
  loc_A6BD50: BranchT loc_A6BC66
  loc_A6BD53: LitNothing
  loc_A6BD55: FStAd var_A8 
  loc_A6BD59: LitI2_Byte 0
  loc_A6BD5B: FLdPr Me
  loc_A6BD5E: VCallAd Control_ID_DetaDivteCbo
  loc_A6BD61: FStAdFunc var_88
  loc_A6BD64: FLdPr var_88
  loc_A6BD67: Me.ListIndex = from_stack_1
  loc_A6BD6C: FFree1Ad var_88
  loc_A6BD6F: LitI2_Byte &HFF
  loc_A6BD71: FLdPr Me
  loc_A6BD74: VCallAd Control_ID_FactProvCbo
  loc_A6BD77: FStAdFunc var_88
  loc_A6BD7A: FLdRfVar var_88
  loc_A6BD7D: ImpAdCallFPR4 Proc_261_56_9A8F4C(, )
  loc_A6BD82: FFree1Ad var_88
  loc_A6BD85: LitVarI2 var_C0, 0
  loc_A6BD8A: PopAdLdVar
  loc_A6BD8B: LitStr "Nombre del Proveedor"
  loc_A6BD8E: FLdPr Me
  loc_A6BD91: VCallAd Control_ID_FiltroCbo
  loc_A6BD94: FStAdFunc var_88
  loc_A6BD97: FLdPr var_88
  loc_A6BD9A: Me.AddItem from_stack_1, from_stack_2
  loc_A6BD9F: FFree1Ad var_88
  loc_A6BDA2: LitVarI2 var_C0, 1
  loc_A6BDA7: PopAdLdVar
  loc_A6BDA8: LitStr "Fantasía"
  loc_A6BDAB: FLdPr Me
  loc_A6BDAE: VCallAd Control_ID_FiltroCbo
  loc_A6BDB1: FStAdFunc var_88
  loc_A6BDB4: FLdPr var_88
  loc_A6BDB7: Me.AddItem from_stack_1, from_stack_2
  loc_A6BDBC: FFree1Ad var_88
  loc_A6BDBF: LitVarI2 var_C0, 2
  loc_A6BDC4: PopAdLdVar
  loc_A6BDC5: LitStr "CUIT-CUIL"
  loc_A6BDC8: FLdPr Me
  loc_A6BDCB: VCallAd Control_ID_FiltroCbo
  loc_A6BDCE: FStAdFunc var_88
  loc_A6BDD1: FLdPr var_88
  loc_A6BDD4: Me.AddItem from_stack_1, from_stack_2
  loc_A6BDD9: FFree1Ad var_88
  loc_A6BDDC: LitVarI2 var_C0, 3
  loc_A6BDE1: PopAdLdVar
  loc_A6BDE2: LitStr "Correo"
  loc_A6BDE5: FLdPr Me
  loc_A6BDE8: VCallAd Control_ID_FiltroCbo
  loc_A6BDEB: FStAdFunc var_88
  loc_A6BDEE: FLdPr var_88
  loc_A6BDF1: Me.AddItem from_stack_1, from_stack_2
  loc_A6BDF6: FFree1Ad var_88
  loc_A6BDF9: LitVarI2 var_C0, 4
  loc_A6BDFE: PopAdLdVar
  loc_A6BDFF: LitStr "¿Es Locador?"
  loc_A6BE02: FLdPr Me
  loc_A6BE05: VCallAd Control_ID_FiltroCbo
  loc_A6BE08: FStAdFunc var_88
  loc_A6BE0B: FLdPr var_88
  loc_A6BE0E: Me.AddItem from_stack_1, from_stack_2
  loc_A6BE13: FFree1Ad var_88
  loc_A6BE16: LitVarI2 var_C0, 5
  loc_A6BE1B: PopAdLdVar
  loc_A6BE1C: LitStr "Expediente"
  loc_A6BE1F: FLdPr Me
  loc_A6BE22: VCallAd Control_ID_FiltroCbo
  loc_A6BE25: FStAdFunc var_88
  loc_A6BE28: FLdPr var_88
  loc_A6BE2B: Me.AddItem from_stack_1, from_stack_2
  loc_A6BE30: FFree1Ad var_88
  loc_A6BE33: LitVarI2 var_C0, 6
  loc_A6BE38: PopAdLdVar
  loc_A6BE39: LitStr "Ciudad o Prov"
  loc_A6BE3C: FLdPr Me
  loc_A6BE3F: VCallAd Control_ID_FiltroCbo
  loc_A6BE42: FStAdFunc var_88
  loc_A6BE45: FLdPr var_88
  loc_A6BE48: Me.AddItem from_stack_1, from_stack_2
  loc_A6BE4D: FFree1Ad var_88
  loc_A6BE50: LitI2_Byte 0
  loc_A6BE52: FLdPr Me
  loc_A6BE55: VCallAd Control_ID_FiltroCbo
  loc_A6BE58: FStAdFunc var_88
  loc_A6BE5B: FLdPr var_88
  loc_A6BE5E: Me.ListIndex = from_stack_1
  loc_A6BE63: FFree1Ad var_88
  loc_A6BE66: Call cmdCancelar_Click()
  loc_A6BE6B: LitI4 0
  loc_A6BE70: LitI4 1
  loc_A6BE75: FLdRfVar var_F4
  loc_A6BE78: Redim
  loc_A6BE82: FLdPr Me
  loc_A6BE85: MemLdRfVar from_stack_1.global_52
  loc_A6BE88: NewIfNullAd
  loc_A6BE8B: FStAd var_88 
  loc_A6BE8F: FLdRfVar var_88
  loc_A6BE92: CVarRef
  loc_A6BE97: ParmAry1St
  loc_A6BE9D: FLdPr Me
  loc_A6BEA0: VCallAd Control_ID_dgdABMS
  loc_A6BEA3: CVarAd
  loc_A6BEA7: ParmAry1St
  loc_A6BEAD: FLdRfVar var_F4
  loc_A6BEB0: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A6BEB5: ILdRf var_88
  loc_A6BEB8: CastAd
  loc_A6BEBB: FLdPr Me
  loc_A6BEBE: MemStAdFunc
  loc_A6BEC2: FLdRfVar var_F4
  loc_A6BEC5: Erase
  loc_A6BEC6: FFree1Ad var_88
  loc_A6BEC9: ExitProcHresult
End Sub

Private Sub Form_Activate() '99923C
  'Data Table: 4E45FC
  loc_9991E0: FLdRfVar var_C2
  loc_9991E3: FLdRfVar var_C0
  loc_9991E6: LitVarI2 var_B8, 1
  loc_9991EB: FLdPr Me
  loc_9991EE: VCallAd Control_ID_tlbABMS
  loc_9991F1: FStAdFunc var_88
  loc_9991F4: FLdPr var_88
  loc_9991F7: LateIdLdVar var_98 DispID_3 0
  loc_9991FE: CastAdVar Me
  loc_999202: FStAdFunc var_BC
  loc_999205: FLdPr var_BC
  loc_999208:  = Me.Buttons.ControlDefault
  loc_99920D: FLdPr var_C0
  loc_999210:  = Me.Enabled
  loc_999215: FLdI2 var_C2
  loc_999218: FFreeAd var_88 = "": var_BC = ""
  loc_999221: FFreeVar var_98 = ""
  loc_999228: BranchF loc_999239
  loc_99922B: FLdPr Me
  loc_99922E: MemLdRfVar from_stack_1.global_52
  loc_999231: NewIfNullPr clsproveedor
  loc_999234: Call clsproveedor.Requery()
  loc_999239: ExitProcHresult
  loc_99923A: NeI2
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949804
  'Data Table: 4E45FC
  loc_9497F0: ILdI2 KeyAscii
  loc_9497F3: CI4UI1
  loc_9497F4: LitI4 &HD
  loc_9497F9: EqI4
  loc_9497FA: BranchF loc_949802
  loc_9497FD: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949802: ExitProcHresult
  loc_949803: FnAbsI4
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '962A54
  'Data Table: 4E45FC
  loc_962A3C: ILdI2 KeyCode
  loc_962A3F: ILdRf Me
  loc_962A42: CastAd
  loc_962A45: FStAdFunc var_88
  loc_962A48: FLdRfVar var_88
  loc_962A4B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_962A50: FFree1Ad var_88
  loc_962A53: ExitProcHresult
End Sub

Private Function Proc_115_47_A52B14() 'A52B14
  'Data Table: 4E45FC
  loc_A52864: FLdRfVar var_88
  loc_A52867: NewIfNullAd
  loc_A5286A: FStAd var_90 
  loc_A5286E: LitStr "SELECT IdDivte, DetaDivte FROM divterritorial ORDER BY OrdeDivte, DetaDivte;"
  loc_A52871: FLdPr var_90
  loc_A52874: Call clsbase.RedefineRS(from_stack_1v)
  loc_A52879: FLdRfVar var_94
  loc_A5287C: FLdPr var_90
  loc_A5287F: from_stack_1 = clsbase.RecordCount
  loc_A52884: ILdRf var_94
  loc_A52887: LitI4 0
  loc_A5288C: GtI4
  loc_A5288D: BranchF loc_A52999
  loc_A52890: FLdPr var_90
  loc_A52893: Call clsbase.MoveFirst()
  loc_A52898: FLdPr Me
  loc_A5289B: VCallAd Control_ID_DetaDivteCbo
  loc_A5289E: FStAdFunc var_98
  loc_A528A1: FLdPr var_98
  loc_A528A4: Me.Clear
  loc_A528A9: FFree1Ad var_98
  loc_A528AC: LitVar_Missing var_D4
  loc_A528AF: PopAdLdVar
  loc_A528B0: FLdRfVar var_C0
  loc_A528B3: FLdRfVar var_B0
  loc_A528B6: LitVarStr var_AC, "DetaDivte"
  loc_A528BB: PopAdLdVar
  loc_A528BC: FLdRfVar var_9C
  loc_A528BF: FLdRfVar var_98
  loc_A528C2: FLdPr var_90
  loc_A528C5: from_stack_1v = clsbase.RsFrmGet()
  loc_A528CA: FLdPr var_98
  loc_A528CD:  = Me.Fields
  loc_A528D2: FLdPr var_9C
  loc_A528D5: from_stack_2 = Me.Item(from_stack_1)
  loc_A528DA: FLdPr var_B0
  loc_A528DD:  = Me.Value
  loc_A528E2: FLdRfVar var_C0
  loc_A528E5: CStrVarTmp
  loc_A528E6: FStStrNoPop var_C4
  loc_A528E9: FLdPr Me
  loc_A528EC: VCallAd Control_ID_DetaDivteCbo
  loc_A528EF: FStAdFunc var_D8
  loc_A528F2: FLdPr var_D8
  loc_A528F5: Me.AddItem from_stack_1, from_stack_2
  loc_A528FA: FFree1Str var_C4
  loc_A528FD: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_A52908: FFree1Var var_C0 = ""
  loc_A5290B: FLdRfVar var_C0
  loc_A5290E: FLdRfVar var_B0
  loc_A52911: LitVarStr var_AC, "IdDivte"
  loc_A52916: PopAdLdVar
  loc_A52917: FLdRfVar var_9C
  loc_A5291A: FLdRfVar var_98
  loc_A5291D: FLdPr var_90
  loc_A52920: from_stack_1v = clsbase.RsFrmGet()
  loc_A52925: FLdPr var_98
  loc_A52928:  = Me.Fields
  loc_A5292D: FLdPr var_9C
  loc_A52930: from_stack_2 = Me.Item(from_stack_1)
  loc_A52935: FLdPr var_B0
  loc_A52938:  = Me.Value
  loc_A5293D: FLdRfVar var_C0
  loc_A52940: CI4Var
  loc_A52942: FLdRfVar var_DA
  loc_A52945: FLdPr Me
  loc_A52948: VCallAd Control_ID_DetaDivteCbo
  loc_A5294B: FStAdFunc var_D8
  loc_A5294E: FLdPr var_D8
  loc_A52951:  = Me.NewIndex
  loc_A52956: FLdI2 var_DA
  loc_A52959: FLdPr Me
  loc_A5295C: VCallAd Control_ID_DetaDivteCbo
  loc_A5295F: FStAdFunc var_E0
  loc_A52962: FLdPr var_E0
  loc_A52965: Me.ItemData = from_stack_1
  loc_A5296A: FFreeAd var_98 = "": var_9C = "": var_D8 = "": var_B0 = ""
  loc_A52977: FFree1Var var_C0 = ""
  loc_A5297A: LitI2_Byte 1
  loc_A5297C: PopTmpLdAd2 var_DA
  loc_A5297F: FLdPr var_90
  loc_A52982: Call clsbase.Move(from_stack_1v)
  loc_A52987: FLdRfVar var_DA
  loc_A5298A: FLdPr var_90
  loc_A5298D: from_stack_1 = clsbase.EOF
  loc_A52992: FLdI2 var_DA
  loc_A52995: NotI4
  loc_A52996: BranchT loc_A528AC
  loc_A52999: LitNothing
  loc_A5299B: FStAd var_90 
  loc_A5299F: FLdRfVar var_C0
  loc_A529A2: FLdRfVar var_B0
  loc_A529A5: LitVarStr var_AC, "IdDivte"
  loc_A529AA: PopAdLdVar
  loc_A529AB: FLdRfVar var_9C
  loc_A529AE: FLdRfVar var_98
  loc_A529B1: FLdPr Me
  loc_A529B4: MemLdRfVar from_stack_1.global_52
  loc_A529B7: NewIfNullPr clsproveedor
  loc_A529BA: from_stack_1v = clsproveedor.RsFrmGet()
  loc_A529BF: FLdPr var_98
  loc_A529C2:  = Me.Fields
  loc_A529C7: FLdPr var_9C
  loc_A529CA: from_stack_2 = Me.Item(from_stack_1)
  loc_A529CF: FLdPr var_B0
  loc_A529D2:  = Me.Value
  loc_A529D7: FLdRfVar var_C0
  loc_A529DA: FnCIntVar
  loc_A529DC: LitI2_Byte 1
  loc_A529DE: LeI2
  loc_A529DF: FFreeAd var_98 = "": var_9C = ""
  loc_A529E8: FFree1Var var_C0 = ""
  loc_A529EB: BranchF loc_A52A0F
  loc_A529EE: LitI2_Byte 0
  loc_A529F0: FLdPr Me
  loc_A529F3: MemStI2 global_80
  loc_A529F6: LitI2_Byte 0
  loc_A529F8: FLdPr Me
  loc_A529FB: VCallAd Control_ID_DetaDivteCbo
  loc_A529FE: FStAdFunc var_98
  loc_A52A01: FLdPr var_98
  loc_A52A04: Me.ListIndex = from_stack_1
  loc_A52A09: FFree1Ad var_98
  loc_A52A0C: Branch loc_A52B11
  loc_A52A0F: FLdRfVar var_C0
  loc_A52A12: FLdRfVar var_B0
  loc_A52A15: LitVarStr var_AC, "IdDivte"
  loc_A52A1A: PopAdLdVar
  loc_A52A1B: FLdRfVar var_9C
  loc_A52A1E: FLdRfVar var_98
  loc_A52A21: FLdPr Me
  loc_A52A24: MemLdRfVar from_stack_1.global_52
  loc_A52A27: NewIfNullPr clsproveedor
  loc_A52A2A: from_stack_1v = clsproveedor.RsFrmGet()
  loc_A52A2F: FLdPr var_98
  loc_A52A32:  = Me.Fields
  loc_A52A37: FLdPr var_9C
  loc_A52A3A: from_stack_2 = Me.Item(from_stack_1)
  loc_A52A3F: FLdPr var_B0
  loc_A52A42:  = Me.Value
  loc_A52A47: FLdRfVar var_C0
  loc_A52A4A: CI2Var
  loc_A52A4B: FLdPr Me
  loc_A52A4E: MemStI2 global_80
  loc_A52A51: FFreeAd var_98 = "": var_9C = ""
  loc_A52A5A: FFree1Var var_C0 = ""
  loc_A52A5D: LitI2_Byte 0
  loc_A52A5F: FLdRfVar var_8A
  loc_A52A62: FLdRfVar var_DA
  loc_A52A65: FLdPr Me
  loc_A52A68: VCallAd Control_ID_DetaDivteCbo
  loc_A52A6B: FStAdFunc var_98
  loc_A52A6E: FLdPr var_98
  loc_A52A71:  = Me.ListCount
  loc_A52A76: FLdI2 var_DA
  loc_A52A79: FFree1Ad var_98
  loc_A52A7C: ForI2 var_E4
  loc_A52A82: FLdI2 var_8A
  loc_A52A85: FLdPr Me
  loc_A52A88: VCallAd Control_ID_DetaDivteCbo
  loc_A52A8B: FStAdFunc var_98
  loc_A52A8E: FLdPr var_98
  loc_A52A91: Me.ListIndex = from_stack_1
  loc_A52A96: FFree1Ad var_98
  loc_A52A99: FLdRfVar var_C4
  loc_A52A9C: FLdPr Me
  loc_A52A9F: VCallAd Control_ID_DetaDivteCbo
  loc_A52AA2: FStAdFunc var_98
  loc_A52AA5: FLdPr var_98
  loc_A52AA8:  = Me.Text
  loc_A52AAD: FLdZeroAd var_C4
  loc_A52AB0: CVarStr var_F4
  loc_A52AB3: HardType
  loc_A52AB4: FLdRfVar var_C0
  loc_A52AB7: FLdRfVar var_D8
  loc_A52ABA: LitVarStr var_AC, "DetaDivte"
  loc_A52ABF: PopAdLdVar
  loc_A52AC0: FLdRfVar var_B0
  loc_A52AC3: FLdRfVar var_9C
  loc_A52AC6: FLdPr Me
  loc_A52AC9: MemLdRfVar from_stack_1.global_52
  loc_A52ACC: NewIfNullPr clsproveedor
  loc_A52ACF: from_stack_1v = clsproveedor.RsFrmGet()
  loc_A52AD4: FLdPr var_9C
  loc_A52AD7:  = Me.Fields
  loc_A52ADC: FLdPr var_B0
  loc_A52ADF: from_stack_2 = Me.Item(from_stack_1)
  loc_A52AE4: FLdPr var_D8
  loc_A52AE7:  = Me.Value
  loc_A52AEC: FLdRfVar var_C0
  loc_A52AEF: EqVarBool
  loc_A52AF1: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_A52AFC: FFreeVar var_F4 = ""
  loc_A52B03: BranchF loc_A52B09
  loc_A52B06: Branch loc_A52B11
  loc_A52B09: FLdRfVar var_8A
  loc_A52B0C: NextI2 var_E4, loc_A52A82
  loc_A52B11: ExitProcHresult
End Function
