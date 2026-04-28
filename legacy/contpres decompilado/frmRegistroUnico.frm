VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmRegistroUnico
  Caption = "Personas Físicas y Jurídicas"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmRegistroUnico.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 14835
  ClientHeight = 9135
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
    TabIndex = 1
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 3
      OleObjectBlob = "frmRegistroUnico.frx":08CA
    End
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame1
    Caption = " Personas Físicas y Jurídicas "
    Left = 120
    Top = 3960
    Width = 12735
    Height = 7335
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CheckBox EsProveedorChk
      Caption = "¿La persona ingresada es un proveedor?"
      Left = 600
      Top = 3240
      Width = 4695
      Height = 360
      TabIndex = 21
      Alignment = 1 'Right Justify
      DataField = "EsProveedor"
    End
    Begin VB.Frame frmFichaProveedor
      Caption = " Ficha de Proveedores "
      Left = 120
      Top = 3960
      Width = 12495
      Height = 3135
      TabIndex = 22
      Begin VB.ComboBox DetaDivteCbo
        Left = 2520
        Top = 2520
        Width = 6495
        Height = 360
        TabIndex = 30
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
        Left = 2520
        Top = 1800
        Width = 9735
        Height = 420
        TabIndex = 28
        MaxLength = 70
        DataField = "DofiProv"
      End
      Begin VB.TextBox FantProvTxt
        Left = 2520
        Top = 1200
        Width = 9735
        Height = 420
        TabIndex = 26
        MaxLength = 70
        DataField = "FantProv"
      End
      Begin VB.ComboBox FactProvCbo
        Left = 2520
        Top = 600
        Width = 1215
        Height = 360
        TabIndex = 24
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
      Begin VB.Label Label5
        Caption = "Ciudad (o Provincia):"
        Left = 240
        Top = 2520
        Width = 2160
        Height = 300
        TabIndex = 29
        AutoSize = -1  'True
      End
      Begin VB.Label Label6
        Caption = "Domicilio Fiscal:"
        Left = 720
        Top = 1860
        Width = 1680
        Height = 300
        TabIndex = 27
        AutoSize = -1  'True
      End
      Begin VB.Label Label2
        Caption = "Nombre de Fantasía:"
        Left = 180
        Top = 1200
        Width = 2220
        Height = 300
        TabIndex = 25
        AutoSize = -1  'True
      End
      Begin VB.Label Label17
        Caption = "Tipo de Factura:"
        Left = 600
        Top = 600
        Width = 1725
        Height = 300
        TabIndex = 23
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton GenerarCMD
      Caption = "Sugerir CUIT/CUIL"
      Left = 6360
      Top = 480
      Width = 2775
      Height = 375
      TabIndex = 9
      MaskColor = &H8000000F&
      CausesValidation = 0   'False
    End
    Begin VB.CheckBox JuriPersChk
      Caption = "¿Es persona jurídica?"
      Left = 9480
      Top = 480
      Width = 2655
      Height = 360
      TabIndex = 10
      Alignment = 1 'Right Justify
      DataField = "JuriPers"
    End
    Begin VB.TextBox CucuPersTxt
      Left = 1680
      Top = 480
      Width = 1815
      Height = 360
      TabIndex = 7
      MaxLength = 11
      DataField = "CucuPers"
    End
    Begin VB.TextBox CeluPersTxt
      Left = 6240
      Top = 2040
      Width = 2415
      Height = 420
      TabIndex = 18
      MaxLength = 20
      DataField = "CeluPers"
    End
    Begin VB.TextBox TelePersTxt
      Left = 2400
      Top = 2040
      Width = 2415
      Height = 420
      TabIndex = 16
      MaxLength = 20
      DataField = "TelePers"
    End
    Begin VB.TextBox MailPersTxt
      Left = 2400
      Top = 2640
      Width = 9975
      Height = 360
      TabIndex = 20
      MaxLength = 200
      DataField = "MailPers"
    End
    Begin VB.TextBox DecrPersTxt
      Left = 2400
      Top = 1560
      Width = 9975
      Height = 360
      TabIndex = 14
      MaxLength = 70
      DataField = "DecrPers"
    End
    Begin VB.TextBox DetaPersTxt
      Left = 2400
      Top = 1080
      Width = 9975
      Height = 360
      TabIndex = 12
      MaxLength = 70
      DataField = "DetaPers"
    End
    Begin VB.Label Label1
      Caption = "(sin espacios ni guiones)"
      Left = 3600
      Top = 480
      Width = 2595
      Height = 300
      TabIndex = 8
      AutoSize = -1  'True
    End
    Begin VB.Label Label12
      Caption = "Celular:"
      Left = 5400
      Top = 2040
      Width = 795
      Height = 300
      TabIndex = 17
      AutoSize = -1  'True
    End
    Begin VB.Label Label11
      Caption = "Teléfono:"
      Left = 1335
      Top = 2040
      Width = 990
      Height = 300
      TabIndex = 15
      AutoSize = -1  'True
    End
    Begin VB.Label Label9
      Caption = "CUIT/CUIL:"
      Left = 375
      Top = 480
      Width = 1230
      Height = 300
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Correo eléctronico:"
      Left = 330
      Top = 2640
      Width = 1995
      Height = 300
      TabIndex = 19
      AutoSize = -1  'True
    End
    Begin VB.Label Label7
      Caption = "Domicilio Real:"
      Left = 765
      Top = 1560
      Width = 1560
      Height = 300
      TabIndex = 13
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Apellido y Nombre:"
      Left = 360
      Top = 1080
      Width = 1965
      Height = 300
      TabIndex = 11
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 12735
    Height = 2175
    TabIndex = 4
    OleObjectBlob = "frmRegistroUnico.frx":092A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmRegistroUnico.frx":0DEE
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14835
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmRegistroUnico.frx":896C
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 31
      TabStop = 0   'False
      Picture = "frmRegistroUnico.frx":8EC8
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmRegistroUnico"


Private Sub FactProvCbo_Validate(Cancel As Boolean) '9B7C54
  'Data Table: 4C1694
  loc_9B7BAC: FLdRfVar var_8A
  loc_9B7BAF: FLdPr Me
  loc_9B7BB2: VCallAd Control_ID_cmdCancelar
  loc_9B7BB5: FStAdFunc var_88
  loc_9B7BB8: FLdPr var_88
  loc_9B7BBB:  = Me.Value
  loc_9B7BC0: FLdI2 var_8A
  loc_9B7BC3: NotI4
  loc_9B7BC4: FLdRfVar var_92
  loc_9B7BC7: FLdPr Me
  loc_9B7BCA: VCallAd Control_ID_FactProvCbo
  loc_9B7BCD: FStAdFunc var_90
  loc_9B7BD0: FLdPr var_90
  loc_9B7BD3:  = Me.Enabled
  loc_9B7BD8: FLdI2 var_92
  loc_9B7BDB: AndI4
  loc_9B7BDC: FFreeAd var_88 = ""
  loc_9B7BE3: BranchF loc_9B7C52
  loc_9B7BE6: FLdRfVar var_98
  loc_9B7BE9: FLdPr Me
  loc_9B7BEC: VCallAd Control_ID_FactProvCbo
  loc_9B7BEF: FStAdFunc var_88
  loc_9B7BF2: FLdPr var_88
  loc_9B7BF5:  = Me.Text
  loc_9B7BFA: ILdRf var_98
  loc_9B7BFD: ImpAdCallI2 Proc_266_21_9A2210()
  loc_9B7C02: FStStrNoPop var_9C
  loc_9B7C05: FLdPr Me
  loc_9B7C08: MemStStrCopy
  loc_9B7C0C: FFreeStr var_98 = ""
  loc_9B7C13: FFree1Ad var_88
  loc_9B7C16: FLdPr Me
  loc_9B7C19: VCallAd Control_ID_FactProvCbo
  loc_9B7C1C: FStAdFunc var_A4
  loc_9B7C1F: LitNothing
  loc_9B7C21: CastAd
  loc_9B7C24: FStAdFunc var_A0
  loc_9B7C27: FLdRfVar var_A0
  loc_9B7C2A: FLdZeroAd var_A4
  loc_9B7C2D: FStAdFuncNoPop
  loc_9B7C30: CastAd
  loc_9B7C33: FStAdFunc var_90
  loc_9B7C36: FLdRfVar var_90
  loc_9B7C39: FLdPr Me
  loc_9B7C3C: MemLdRfVar from_stack_1.global_64
  loc_9B7C3F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B7C44: IStI2 Cancel
  loc_9B7C47: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9B7C52: ExitProcHresult
End Sub

Private Sub FantProvTxt_GotFocus() '9A0154
  'Data Table: 4C1694
  loc_9A00E8: FLdRfVar var_8C
  loc_9A00EB: FLdPr Me
  loc_9A00EE: VCallAd Control_ID_FantProvTxt
  loc_9A00F1: FStAdFunc var_88
  loc_9A00F4: FLdPr var_88
  loc_9A00F7:  = Me.Text
  loc_9A00FC: ILdRf var_8C
  loc_9A00FF: LitStr vbNullString
  loc_9A0102: EqStr
  loc_9A0104: FFree1Str var_8C
  loc_9A0107: FFree1Ad var_88
  loc_9A010A: BranchF loc_9A013F
  loc_9A010D: FLdRfVar var_8C
  loc_9A0110: FLdPr Me
  loc_9A0113: VCallAd Control_ID_DetaPersTxt
  loc_9A0116: FStAdFunc var_88
  loc_9A0119: FLdPr var_88
  loc_9A011C:  = Me.Text
  loc_9A0121: ILdRf var_8C
  loc_9A0124: FLdPr Me
  loc_9A0127: VCallAd Control_ID_FantProvTxt
  loc_9A012A: FStAdFunc var_90
  loc_9A012D: FLdPr var_90
  loc_9A0130: Me.Text = from_stack_1
  loc_9A0135: FFree1Str var_8C
  loc_9A0138: FFreeAd var_88 = ""
  loc_9A013F: FLdPr Me
  loc_9A0142: VCallAd Control_ID_FantProvTxt
  loc_9A0145: CVarAd
  loc_9A0149: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A014E: FFree1Var var_A0 = ""
  loc_9A0151: ExitProcHresult
  loc_9A0152: LargeBos
End Sub

Private Sub FantProvTxt_Validate(Cancel As Boolean) '9BFABC
  'Data Table: 4C1694
  loc_9BFA00: FLdRfVar var_8A
  loc_9BFA03: FLdPr Me
  loc_9BFA06: VCallAd Control_ID_cmdCancelar
  loc_9BFA09: FStAdFunc var_88
  loc_9BFA0C: FLdPr var_88
  loc_9BFA0F:  = Me.Value
  loc_9BFA14: FLdI2 var_8A
  loc_9BFA17: NotI4
  loc_9BFA18: FLdRfVar var_92
  loc_9BFA1B: FLdPr Me
  loc_9BFA1E: VCallAd Control_ID_FantProvTxt
  loc_9BFA21: FStAdFunc var_90
  loc_9BFA24: FLdPr var_90
  loc_9BFA27:  = Me.Enabled
  loc_9BFA2C: FLdI2 var_92
  loc_9BFA2F: AndI4
  loc_9BFA30: FFreeAd var_88 = ""
  loc_9BFA37: BranchF loc_9BFAB8
  loc_9BFA3A: FLdRfVar var_98
  loc_9BFA3D: FLdPr Me
  loc_9BFA40: VCallAd Control_ID_FantProvTxt
  loc_9BFA43: FStAdFunc var_88
  loc_9BFA46: FLdPr var_88
  loc_9BFA49:  = Me.Text
  loc_9BFA4E: LitI2_Byte 0
  loc_9BFA50: PopTmpLdAd2 var_9A
  loc_9BFA53: LitI2_Byte 0
  loc_9BFA55: PopTmpLdAd2 var_92
  loc_9BFA58: LitI2_Byte 0
  loc_9BFA5A: PopTmpLdAd2 var_8A
  loc_9BFA5D: ILdRf var_98
  loc_9BFA60: LitStr "Nombre de fantasía"
  loc_9BFA63: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BFA68: FStStrNoPop var_A0
  loc_9BFA6B: FLdPr Me
  loc_9BFA6E: MemStStrCopy
  loc_9BFA72: FFreeStr var_98 = ""
  loc_9BFA79: FFree1Ad var_88
  loc_9BFA7C: FLdPr Me
  loc_9BFA7F: VCallAd Control_ID_FantProvTxt
  loc_9BFA82: FStAdFunc var_A8
  loc_9BFA85: LitNothing
  loc_9BFA87: CastAd
  loc_9BFA8A: FStAdFunc var_A4
  loc_9BFA8D: FLdRfVar var_A4
  loc_9BFA90: FLdZeroAd var_A8
  loc_9BFA93: FStAdFuncNoPop
  loc_9BFA96: CastAd
  loc_9BFA99: FStAdFunc var_90
  loc_9BFA9C: FLdRfVar var_90
  loc_9BFA9F: FLdPr Me
  loc_9BFAA2: MemLdRfVar from_stack_1.global_64
  loc_9BFAA5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BFAAA: IStI2 Cancel
  loc_9BFAAD: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BFAB8: ExitProcHresult
  loc_9BFABB: Ary1LdRf
End Sub

Private Sub dgdABMS_UnknownEvent_0 '955908
  'Data Table: 4C1694
  loc_9558F0: FLdPr Me
  loc_9558F3: VCallAd Control_ID_dgdABMS
  loc_9558F6: FStAdFunc var_88
  loc_9558F9: FLdRfVar var_88
  loc_9558FC: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_955901: FFree1Ad var_88
  loc_955904: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9558BC
  'Data Table: 4C1694
  loc_9558A4: FLdPr Me
  loc_9558A7: VCallAd Control_ID_dgdABMS
  loc_9558AA: FStAdFunc var_88
  loc_9558AD: FLdRfVar var_88
  loc_9558B0: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9558B5: FFree1Ad var_88
  loc_9558B8: ExitProcHresult
  loc_9558BB: SetLastSystemError
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99B898
  'Data Table: 4C1694
  loc_99B83C: FLdRfVar var_B4
  loc_99B83F: FLdRfVar var_B0
  loc_99B842: FLdI2 ColIndex
  loc_99B845: CVarI2 var_A8
  loc_99B848: PopAdLdVar
  loc_99B849: FLdPr Me
  loc_99B84C: VCallAd Control_ID_dgdABMS
  loc_99B84F: FStAdFunc var_88
  loc_99B852: FLdPr var_88
  loc_99B855: LateIdLdVar var_98 DispID_105 0
  loc_99B85C: CastAdVar Me
  loc_99B860: FStAdFunc var_AC
  loc_99B863: FLdPr var_AC
  loc_99B866: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B86B: FLdPr var_B0
  loc_99B86E:  = Me.DataField
  loc_99B873: FLdZeroAd var_B4
  loc_99B876: PopTmpLdAdStr
  loc_99B87A: FLdPr Me
  loc_99B87D: MemLdRfVar from_stack_1.global_52
  loc_99B880: NewIfNullPr clspersonas
  loc_99B883: Call clspersonas.Sort(from_stack_1v)
  loc_99B888: FFree1Str var_B8
  loc_99B88B: FFreeAd var_88 = "": var_AC = ""
  loc_99B894: FFree1Var var_98 = ""
  loc_99B897: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) '93F5D4
  'Data Table: 4C1694
  loc_93F5D0: ExitProcHresult
  loc_93F5D1: AryDescTemp 2303
End Sub

Private Sub EsProveedorChk_Click() '9FF3CC
  'Data Table: 4C1694
  loc_9FF290: FLdRfVar var_8A
  loc_9FF293: FLdPr Me
  loc_9FF296: VCallAd Control_ID_EsProveedorChk
  loc_9FF299: FStAdFunc var_88
  loc_9FF29C: FLdPr var_88
  loc_9FF29F:  = Me.Value
  loc_9FF2A4: FLdI2 var_8A
  loc_9FF2A7: CI4UI1
  loc_9FF2A8: LitI4 1
  loc_9FF2AD: EqI4
  loc_9FF2AE: FLdPr Me
  loc_9FF2B1: MemLdUI1 global_60
  loc_9FF2B5: CI2UI1
  loc_9FF2B7: LitI2_Byte 0
  loc_9FF2B9: NeI2
  loc_9FF2BA: AndI4
  loc_9FF2BB: FFree1Ad var_88
  loc_9FF2BE: BranchF loc_9FF3C8
  loc_9FF2C1: FLdPr Me
  loc_9FF2C4: MemLdUI1 global_60
  loc_9FF2C8: CI2UI1
  loc_9FF2CA: LitI2_Byte 2
  loc_9FF2CC: EqI2
  loc_9FF2CD: BranchF loc_9FF3C8
  loc_9FF2D0: FLdRfVar var_B4
  loc_9FF2D3: FLdRfVar var_A4
  loc_9FF2D6: LitVarStr var_A0, "CucuPers"
  loc_9FF2DB: PopAdLdVar
  loc_9FF2DC: FLdRfVar var_90
  loc_9FF2DF: FLdRfVar var_88
  loc_9FF2E2: FLdPr Me
  loc_9FF2E5: MemLdRfVar from_stack_1.global_52
  loc_9FF2E8: NewIfNullPr clspersonas
  loc_9FF2EB: from_stack_1v = clspersonas.RsFrmGet()
  loc_9FF2F0: FLdPr var_88
  loc_9FF2F3:  = Me.Fields
  loc_9FF2F8: FLdPr var_90
  loc_9FF2FB: from_stack_2 = Me.Item(from_stack_1)
  loc_9FF300: FLdPr var_A4
  loc_9FF303:  = Me.Value
  loc_9FF308: FLdRfVar var_B4
  loc_9FF30B: FnLenVar var_C4
  loc_9FF30F: LitVarI2 var_D4, 11
  loc_9FF314: HardType
  loc_9FF315: EqVarBool
  loc_9FF317: FFreeAd var_88 = "": var_90 = ""
  loc_9FF320: FFree1Var var_B4 = ""
  loc_9FF323: BranchF loc_9FF3A1
  loc_9FF326: LitI4 0
  loc_9FF32B: LitI4 4
  loc_9FF330: FLdRfVar var_E8
  loc_9FF333: Redim
  loc_9FF33D: FLdPr Me
  loc_9FF340: VCallAd Control_ID_FactProvCbo
  loc_9FF343: CVarAd
  loc_9FF347: ParmAry1St
  loc_9FF34D: FLdPr Me
  loc_9FF350: VCallAd Control_ID_FantProvTxt
  loc_9FF353: CVarAd
  loc_9FF357: ParmAry1St
  loc_9FF35D: FLdPr Me
  loc_9FF360: VCallAd Control_ID_DetaDivteCbo
  loc_9FF363: CVarAd
  loc_9FF367: ParmAry1St
  loc_9FF36D: FLdPr Me
  loc_9FF370: VCallAd Control_ID_DofiProvTxt
  loc_9FF373: CVarAd
  loc_9FF377: ParmAry1St
  loc_9FF37D: FLdPr Me
  loc_9FF380: VCallAd Control_ID_frmFichaProveedor
  loc_9FF383: CVarAd
  loc_9FF387: ParmAry1St
  loc_9FF38D: FLdRfVar var_E8
  loc_9FF390: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FF395: FLdRfVar var_E8
  loc_9FF398: Erase
  loc_9FF399: Call Proc_141_35_A5CA20()
  loc_9FF39E: Branch loc_9FF3C8
  loc_9FF3A1: LitI4 0
  loc_9FF3A6: LitStr "El CUIT es incorrecto. Verifique..."
  loc_9FF3A9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9FF3AE: LitI4 0
  loc_9FF3B3: CI2I4
  loc_9FF3B4: FLdPr Me
  loc_9FF3B7: VCallAd Control_ID_EsProveedorChk
  loc_9FF3BA: FStAdFunc var_88
  loc_9FF3BD: FLdPr var_88
  loc_9FF3C0: Me.Value = from_stack_1
  loc_9FF3C5: FFree1Ad var_88
  loc_9FF3C8: ExitProcHresult
  loc_9FF3C9: PopAdLd4
End Sub

Private Sub EsProveedorChk_Validate(Cancel As Boolean) '9B506C
  'Data Table: 4C1694
  loc_9B4FD0: FLdRfVar var_8A
  loc_9B4FD3: FLdPr Me
  loc_9B4FD6: VCallAd Control_ID_EsProveedorChk
  loc_9B4FD9: FStAdFunc var_88
  loc_9B4FDC: FLdPr var_88
  loc_9B4FDF:  = Me.Value
  loc_9B4FE4: FLdI2 var_8A
  loc_9B4FE7: CI4UI1
  loc_9B4FE8: LitI4 1
  loc_9B4FED: EqI4
  loc_9B4FEE: FLdPr Me
  loc_9B4FF1: MemLdUI1 global_60
  loc_9B4FF5: CI2UI1
  loc_9B4FF7: LitI2_Byte 0
  loc_9B4FF9: NeI2
  loc_9B4FFA: AndI4
  loc_9B4FFB: FFree1Ad var_88
  loc_9B4FFE: BranchF loc_9B5069
  loc_9B5001: LitI4 0
  loc_9B5006: LitI4 3
  loc_9B500B: FLdRfVar var_90
  loc_9B500E: Redim
  loc_9B5018: FLdPr Me
  loc_9B501B: VCallAd Control_ID_FactProvCbo
  loc_9B501E: CVarAd
  loc_9B5022: ParmAry1St
  loc_9B5028: FLdPr Me
  loc_9B502B: VCallAd Control_ID_FantProvTxt
  loc_9B502E: CVarAd
  loc_9B5032: ParmAry1St
  loc_9B5038: FLdPr Me
  loc_9B503B: VCallAd Control_ID_DetaDivteCbo
  loc_9B503E: CVarAd
  loc_9B5042: ParmAry1St
  loc_9B5048: FLdPr Me
  loc_9B504B: VCallAd Control_ID_DofiProvTxt
  loc_9B504E: CVarAd
  loc_9B5052: ParmAry1St
  loc_9B5058: FLdRfVar var_90
  loc_9B505B: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B5060: FLdRfVar var_90
  loc_9B5063: Erase
  loc_9B5064: Call Proc_141_35_A5CA20()
  loc_9B5069: ExitProcHresult
End Sub

Private Sub CeluPersTxt_GotFocus() '952980
  'Data Table: 4C1694
  loc_95296C: FLdPr Me
  loc_95296F: VCallAd Control_ID_CeluPersTxt
  loc_952972: CVarAd
  loc_952976: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95297B: FFree1Var var_94 = ""
  loc_95297E: ExitProcHresult
End Sub

Private Sub CeluPersTxt_KeyPress(KeyAscii As Integer) '9555C4
  'Data Table: 4C1694
  loc_9555AC: LitStr "1234567890 -()"
  loc_9555AF: FStStrCopy var_88
  loc_9555B2: FLdRfVar var_88
  loc_9555B5: ILdRf KeyAscii
  loc_9555B8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9555BD: IStI2 KeyAscii
  loc_9555C0: FFree1Str var_88
  loc_9555C3: ExitProcHresult
End Sub

Private Sub DecrPersTxt_GotFocus() '952818
  'Data Table: 4C1694
  loc_952804: FLdPr Me
  loc_952807: VCallAd Control_ID_DecrPersTxt
  loc_95280A: CVarAd
  loc_95280E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952813: FFree1Var var_94 = ""
  loc_952816: ExitProcHresult
End Sub

Private Sub DecrPersTxt_Validate(Cancel As Boolean) '9C0D04
  'Data Table: 4C1694
  loc_9C0C48: FLdRfVar var_8A
  loc_9C0C4B: FLdPr Me
  loc_9C0C4E: VCallAd Control_ID_cmdCancelar
  loc_9C0C51: FStAdFunc var_88
  loc_9C0C54: FLdPr var_88
  loc_9C0C57:  = Me.Value
  loc_9C0C5C: FLdI2 var_8A
  loc_9C0C5F: NotI4
  loc_9C0C60: FLdRfVar var_92
  loc_9C0C63: FLdPr Me
  loc_9C0C66: VCallAd Control_ID_DecrPersTxt
  loc_9C0C69: FStAdFunc var_90
  loc_9C0C6C: FLdPr var_90
  loc_9C0C6F:  = Me.Enabled
  loc_9C0C74: FLdI2 var_92
  loc_9C0C77: AndI4
  loc_9C0C78: FFreeAd var_88 = ""
  loc_9C0C7F: BranchF loc_9C0D00
  loc_9C0C82: FLdRfVar var_98
  loc_9C0C85: FLdPr Me
  loc_9C0C88: VCallAd Control_ID_DecrPersTxt
  loc_9C0C8B: FStAdFunc var_88
  loc_9C0C8E: FLdPr var_88
  loc_9C0C91:  = Me.Text
  loc_9C0C96: LitI2_Byte 0
  loc_9C0C98: PopTmpLdAd2 var_9A
  loc_9C0C9B: LitI2_Byte 0
  loc_9C0C9D: PopTmpLdAd2 var_92
  loc_9C0CA0: LitI2_Byte 0
  loc_9C0CA2: PopTmpLdAd2 var_8A
  loc_9C0CA5: ILdRf var_98
  loc_9C0CA8: LitStr "Domicilio real"
  loc_9C0CAB: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C0CB0: FStStrNoPop var_A0
  loc_9C0CB3: FLdPr Me
  loc_9C0CB6: MemStStrCopy
  loc_9C0CBA: FFreeStr var_98 = ""
  loc_9C0CC1: FFree1Ad var_88
  loc_9C0CC4: FLdPr Me
  loc_9C0CC7: VCallAd Control_ID_DecrPersTxt
  loc_9C0CCA: FStAdFunc var_A8
  loc_9C0CCD: LitNothing
  loc_9C0CCF: CastAd
  loc_9C0CD2: FStAdFunc var_A4
  loc_9C0CD5: FLdRfVar var_A4
  loc_9C0CD8: FLdZeroAd var_A8
  loc_9C0CDB: FStAdFuncNoPop
  loc_9C0CDE: CastAd
  loc_9C0CE1: FStAdFunc var_90
  loc_9C0CE4: FLdRfVar var_90
  loc_9C0CE7: FLdPr Me
  loc_9C0CEA: MemLdRfVar from_stack_1.global_64
  loc_9C0CED: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C0CF2: IStI2 Cancel
  loc_9C0CF5: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C0D00: ExitProcHresult
  loc_9C0D01: NewIfNullPr clspersonas
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '952668
  'Data Table: 4C1694
  loc_952654: FLdPr Me
  loc_952657: VCallAd Control_ID_FiltroMsk
  loc_95265A: CVarAd
  loc_95265E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952663: FFree1Var var_94 = ""
  loc_952666: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A66974
  'Data Table: 4C1694
  loc_A6662C: ILdRf Me
  loc_A6662F: CastAd
  loc_A66632: FStAdFunc var_88
  loc_A66635: FLdRfVar var_88
  loc_A66638: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A6663D: FFree1Ad var_88
  loc_A66640: FLdPr Me
  loc_A66643: VCallAd Control_ID_FiltroMsk
  loc_A66646: FStAdFunc var_88
  loc_A66649: FLdPr var_88
  loc_A6664C: LateIdLdVar var_98 DispID_22 0
  loc_A66653: CStrVarTmp
  loc_A66654: FStStrNoPop var_9C
  loc_A66657: ImpAdCallI2 Trim$()
  loc_A6665C: FStStrNoPop var_A0
  loc_A6665F: LitStr vbNullString
  loc_A66662: NeStr
  loc_A66664: FFreeStr var_9C = ""
  loc_A6666B: FFree1Ad var_88
  loc_A6666E: FFree1Var var_98 = ""
  loc_A66671: BranchF loc_A66847
  loc_A66674: FLdRfVar var_A2
  loc_A66677: FLdPr Me
  loc_A6667A: VCallAd Control_ID_FiltroCbo
  loc_A6667D: FStAdFunc var_88
  loc_A66680: FLdPr var_88
  loc_A66683:  = Me.ListIndex
  loc_A66688: FLdI2 var_A2
  loc_A6668B: LitI2_Byte 0
  loc_A6668D: EqI2
  loc_A6668E: FFree1Ad var_88
  loc_A66691: BranchF loc_A6670C
  loc_A66694: LitStr "DetaPers LIKE '" & Chr(37)
  loc_A66697: FLdPr Me
  loc_A6669A: VCallAd Control_ID_FiltroMsk
  loc_A6669D: FStAdFunc var_88
  loc_A666A0: FLdPr var_88
  loc_A666A3: LateIdLdVar var_98 DispID_22 0
  loc_A666AA: CStrVarTmp
  loc_A666AB: FStStrNoPop var_9C
  loc_A666AE: ConcatStr
  loc_A666AF: FStStrNoPop var_A0
  loc_A666B2: LitStr Chr(37) & "'"
  loc_A666B5: ConcatStr
  loc_A666B6: PopTmpLdAdStr
  loc_A666BA: FLdPr Me
  loc_A666BD: MemLdRfVar from_stack_1.global_52
  loc_A666C0: NewIfNullPr clspersonas
  loc_A666C3: Call clspersonas.Filter(from_stack_1v)
  loc_A666C8: FFreeStr var_9C = "": var_A0 = ""
  loc_A666D1: FFree1Ad var_88
  loc_A666D4: FFree1Var var_98 = ""
  loc_A666D7: LitStr "Nombre que contiene "
  loc_A666DA: FLdPr Me
  loc_A666DD: VCallAd Control_ID_FiltroMsk
  loc_A666E0: FStAdFunc var_88
  loc_A666E3: FLdPr var_88
  loc_A666E6: LateIdLdVar var_98 DispID_22 0
  loc_A666ED: CStrVarTmp
  loc_A666EE: FStStrNoPop var_9C
  loc_A666F1: ConcatStr
  loc_A666F2: FStStrNoPop var_A0
  loc_A666F5: FLdPr Me
  loc_A666F8: MemStStrCopy
  loc_A666FC: FFreeStr var_9C = ""
  loc_A66703: FFree1Ad var_88
  loc_A66706: FFree1Var var_98 = ""
  loc_A66709: Branch loc_A66844
  loc_A6670C: FLdRfVar var_A2
  loc_A6670F: FLdPr Me
  loc_A66712: VCallAd Control_ID_FiltroCbo
  loc_A66715: FStAdFunc var_88
  loc_A66718: FLdPr var_88
  loc_A6671B:  = Me.ListIndex
  loc_A66720: FLdI2 var_A2
  loc_A66723: LitI2_Byte 1
  loc_A66725: EqI2
  loc_A66726: FFree1Ad var_88
  loc_A66729: BranchF loc_A667AF
  loc_A6672C: FLdPr Me
  loc_A6672F: MemLdStr global_72
  loc_A66732: LitStr " AND infogov.persona.CucuPers LIKE '" & Chr(37)
  loc_A66735: ConcatStr
  loc_A66736: FStStrNoPop var_9C
  loc_A66739: FLdPr Me
  loc_A6673C: VCallAd Control_ID_FiltroMsk
  loc_A6673F: FStAdFunc var_88
  loc_A66742: FLdPr var_88
  loc_A66745: LateIdLdVar var_98 DispID_22 0
  loc_A6674C: CStrVarTmp
  loc_A6674D: FStStrNoPop var_A0
  loc_A66750: ConcatStr
  loc_A66751: FStStrNoPop var_A8
  loc_A66754: LitStr Chr(37) & "' ORDER BY infogov.persona.CucuPers;"
  loc_A66757: ConcatStr
  loc_A66758: FStStrNoPop var_AC
  loc_A6675B: FLdPr Me
  loc_A6675E: MemLdRfVar from_stack_1.global_52
  loc_A66761: NewIfNullPr clspersonas
  loc_A66764: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A66769: FFreeStr var_9C = "": var_A0 = "": var_A8 = ""
  loc_A66774: FFree1Ad var_88
  loc_A66777: FFree1Var var_98 = ""
  loc_A6677A: LitStr "CUIT que contiene "
  loc_A6677D: FLdPr Me
  loc_A66780: VCallAd Control_ID_FiltroMsk
  loc_A66783: FStAdFunc var_88
  loc_A66786: FLdPr var_88
  loc_A66789: LateIdLdVar var_98 DispID_22 0
  loc_A66790: CStrVarTmp
  loc_A66791: FStStrNoPop var_9C
  loc_A66794: ConcatStr
  loc_A66795: FStStrNoPop var_A0
  loc_A66798: FLdPr Me
  loc_A6679B: MemStStrCopy
  loc_A6679F: FFreeStr var_9C = ""
  loc_A667A6: FFree1Ad var_88
  loc_A667A9: FFree1Var var_98 = ""
  loc_A667AC: Branch loc_A66844
  loc_A667AF: FLdRfVar var_A2
  loc_A667B2: FLdPr Me
  loc_A667B5: VCallAd Control_ID_FiltroCbo
  loc_A667B8: FStAdFunc var_88
  loc_A667BB: FLdPr var_88
  loc_A667BE:  = Me.ListIndex
  loc_A667C3: FLdI2 var_A2
  loc_A667C6: LitI2_Byte 2
  loc_A667C8: EqI2
  loc_A667C9: FFree1Ad var_88
  loc_A667CC: BranchF loc_A66844
  loc_A667CF: LitStr "MailPers LIKE '" & Chr(37)
  loc_A667D2: FLdPr Me
  loc_A667D5: VCallAd Control_ID_FiltroMsk
  loc_A667D8: FStAdFunc var_88
  loc_A667DB: FLdPr var_88
  loc_A667DE: LateIdLdVar var_98 DispID_22 0
  loc_A667E5: CStrVarTmp
  loc_A667E6: FStStrNoPop var_9C
  loc_A667E9: ConcatStr
  loc_A667EA: FStStrNoPop var_A0
  loc_A667ED: LitStr Chr(37) & "'"
  loc_A667F0: ConcatStr
  loc_A667F1: PopTmpLdAdStr
  loc_A667F5: FLdPr Me
  loc_A667F8: MemLdRfVar from_stack_1.global_52
  loc_A667FB: NewIfNullPr clspersonas
  loc_A667FE: Call clspersonas.Filter(from_stack_1v)
  loc_A66803: FFreeStr var_9C = "": var_A0 = ""
  loc_A6680C: FFree1Ad var_88
  loc_A6680F: FFree1Var var_98 = ""
  loc_A66812: LitStr "correo electrónico que contiene "
  loc_A66815: FLdPr Me
  loc_A66818: VCallAd Control_ID_FiltroMsk
  loc_A6681B: FStAdFunc var_88
  loc_A6681E: FLdPr var_88
  loc_A66821: LateIdLdVar var_98 DispID_22 0
  loc_A66828: CStrVarTmp
  loc_A66829: FStStrNoPop var_9C
  loc_A6682C: ConcatStr
  loc_A6682D: FStStrNoPop var_A0
  loc_A66830: FLdPr Me
  loc_A66833: MemStStrCopy
  loc_A66837: FFreeStr var_9C = ""
  loc_A6683E: FFree1Ad var_88
  loc_A66841: FFree1Var var_98 = ""
  loc_A66844: Branch loc_A66872
  loc_A66847: FLdPr Me
  loc_A6684A: MemLdStr global_72
  loc_A6684D: FLdPr Me
  loc_A66850: MemLdStr global_76
  loc_A66853: ConcatStr
  loc_A66854: FStStrNoPop var_9C
  loc_A66857: FLdPr Me
  loc_A6685A: MemLdRfVar from_stack_1.global_52
  loc_A6685D: NewIfNullPr clspersonas
  loc_A66860: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A66865: FFree1Str var_9C
  loc_A66868: LitStr vbNullString
  loc_A6686B: FLdPr Me
  loc_A6686E: MemStStrCopy
  loc_A66872: FLdRfVar var_B0
  loc_A66875: FLdPr Me
  loc_A66878: MemLdRfVar from_stack_1.global_52
  loc_A6687B: NewIfNullPr clspersonas
  loc_A6687E: from_stack_1 = clspersonas.RecordCount
  loc_A66883: ILdRf var_B0
  loc_A66886: LitI4 0
  loc_A6688B: GtI4
  loc_A6688C: BranchF loc_A6692A
  loc_A6688F: FLdPr Me
  loc_A66892: MemLdRfVar from_stack_1.global_52
  loc_A66895: NewIfNullAd
  loc_A66898: FStAd var_B4 
  loc_A6689C: FLdRfVar var_B4
  loc_A6689F: CVarRef
  loc_A668A4: ILdRf Me
  loc_A668A7: CastAd
  loc_A668AA: FStAdFunc var_88
  loc_A668AD: FLdRfVar var_88
  loc_A668B0: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A668B5: ILdRf var_B4
  loc_A668B8: CastAd
  loc_A668BB: FLdPr Me
  loc_A668BE: MemStAdFunc
  loc_A668C2: FFreeAd var_88 = ""
  loc_A668C9: LitI4 0
  loc_A668CE: LitI4 1
  loc_A668D3: FLdRfVar var_C8
  loc_A668D6: Redim
  loc_A668E0: FLdPr Me
  loc_A668E3: MemLdRfVar from_stack_1.global_52
  loc_A668E6: NewIfNullAd
  loc_A668E9: FStAd var_88 
  loc_A668ED: FLdRfVar var_88
  loc_A668F0: CVarRef
  loc_A668F5: ParmAry1St
  loc_A668FB: FLdPr Me
  loc_A668FE: VCallAd Control_ID_dgdABMS
  loc_A66901: CVarAd
  loc_A66905: ParmAry1St
  loc_A6690B: FLdRfVar var_C8
  loc_A6690E: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A66913: ILdRf var_88
  loc_A66916: CastAd
  loc_A66919: FLdPr Me
  loc_A6691C: MemStAdFunc
  loc_A66920: FLdRfVar var_C8
  loc_A66923: Erase
  loc_A66924: FFree1Ad var_88
  loc_A66927: Branch loc_A6693E
  loc_A6692A: ILdRf Me
  loc_A6692D: CastAd
  loc_A66930: FStAdFunc var_88
  loc_A66933: FLdRfVar var_88
  loc_A66936: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A6693B: FFree1Ad var_88
  loc_A6693E: FLdPr Me
  loc_A66941: VCallAd Control_ID_dgdABMS
  loc_A66944: FStAdFunc var_B4
  loc_A66947: LitI4 0
  loc_A6694C: FStStrCopy var_9C
  loc_A6694F: FLdRfVar var_9C
  loc_A66952: FLdPr Me
  loc_A66955: MemLdStr global_68
  loc_A66958: FLdZeroAd var_B4
  loc_A6695B: FStAdFunc var_88
  loc_A6695E: FLdRfVar var_88
  loc_A66961: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A66966: FFree1Str var_9C
  loc_A66969: FFreeAd var_88 = ""
  loc_A66970: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '998024
  'Data Table: 4C1694
  loc_997FC0: ILdI2 KeyAscii
  loc_997FC3: LitI2_Byte &H27
  loc_997FC5: EqI2
  loc_997FC6: BranchF loc_997FCE
  loc_997FC9: LitI2_Byte 0
  loc_997FCB: IStI2 KeyAscii
  loc_997FCE: FLdRfVar var_88
  loc_997FD1: FLdPr Me
  loc_997FD4: MemLdRfVar from_stack_1.global_52
  loc_997FD7: NewIfNullPr clspersonas
  loc_997FDA: from_stack_1 = clspersonas.RecordCount
  loc_997FDF: ILdRf var_88
  loc_997FE2: LitI4 0
  loc_997FE7: EqI4
  loc_997FE8: ILdI2 KeyAscii
  loc_997FEB: CI4UI1
  loc_997FEC: LitI4 8
  loc_997FF1: NeI4
  loc_997FF2: AndI4
  loc_997FF3: FLdPr Me
  loc_997FF6: VCallAd Control_ID_FiltroMsk
  loc_997FF9: FStAdFunc var_8C
  loc_997FFC: FLdPr var_8C
  loc_997FFF: LateIdLdVar var_9C DispID_16 0
  loc_998006: CStrVarTmp
  loc_998007: FStStrNoPop var_A0
  loc_99800A: LitStr vbNullString
  loc_99800D: EqStr
  loc_99800F: AndI4
  loc_998010: FFree1Str var_A0
  loc_998013: FFree1Ad var_8C
  loc_998016: FFree1Var var_9C = ""
  loc_998019: BranchF loc_998021
  loc_99801C: LitI2_Byte 0
  loc_99801E: IStI2 KeyAscii
  loc_998021: ExitProcHresult
End Sub

Private Sub DetaPersTxt_GotFocus() '9527D0
  'Data Table: 4C1694
  loc_9527BC: FLdPr Me
  loc_9527BF: VCallAd Control_ID_DetaPersTxt
  loc_9527C2: CVarAd
  loc_9527C6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9527CB: FFree1Var var_94 = ""
  loc_9527CE: ExitProcHresult
End Sub

Private Sub DetaPersTxt_Validate(Cancel As Boolean) '9C05E8
  'Data Table: 4C1694
  loc_9C052C: FLdRfVar var_8A
  loc_9C052F: FLdPr Me
  loc_9C0532: VCallAd Control_ID_cmdCancelar
  loc_9C0535: FStAdFunc var_88
  loc_9C0538: FLdPr var_88
  loc_9C053B:  = Me.Value
  loc_9C0540: FLdI2 var_8A
  loc_9C0543: NotI4
  loc_9C0544: FLdRfVar var_92
  loc_9C0547: FLdPr Me
  loc_9C054A: VCallAd Control_ID_DetaPersTxt
  loc_9C054D: FStAdFunc var_90
  loc_9C0550: FLdPr var_90
  loc_9C0553:  = Me.Enabled
  loc_9C0558: FLdI2 var_92
  loc_9C055B: AndI4
  loc_9C055C: FFreeAd var_88 = ""
  loc_9C0563: BranchF loc_9C05E4
  loc_9C0566: FLdRfVar var_98
  loc_9C0569: FLdPr Me
  loc_9C056C: VCallAd Control_ID_DetaPersTxt
  loc_9C056F: FStAdFunc var_88
  loc_9C0572: FLdPr var_88
  loc_9C0575:  = Me.Text
  loc_9C057A: LitI2_Byte 0
  loc_9C057C: PopTmpLdAd2 var_9A
  loc_9C057F: LitI2_Byte 0
  loc_9C0581: PopTmpLdAd2 var_92
  loc_9C0584: LitI2_Byte 0
  loc_9C0586: PopTmpLdAd2 var_8A
  loc_9C0589: ILdRf var_98
  loc_9C058C: LitStr "Nombre y Apellido"
  loc_9C058F: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C0594: FStStrNoPop var_A0
  loc_9C0597: FLdPr Me
  loc_9C059A: MemStStrCopy
  loc_9C059E: FFreeStr var_98 = ""
  loc_9C05A5: FFree1Ad var_88
  loc_9C05A8: FLdPr Me
  loc_9C05AB: VCallAd Control_ID_DetaPersTxt
  loc_9C05AE: FStAdFunc var_A8
  loc_9C05B1: LitNothing
  loc_9C05B3: CastAd
  loc_9C05B6: FStAdFunc var_A4
  loc_9C05B9: FLdRfVar var_A4
  loc_9C05BC: FLdZeroAd var_A8
  loc_9C05BF: FStAdFuncNoPop
  loc_9C05C2: CastAd
  loc_9C05C5: FStAdFunc var_90
  loc_9C05C8: FLdRfVar var_90
  loc_9C05CB: FLdPr Me
  loc_9C05CE: MemLdRfVar from_stack_1.global_64
  loc_9C05D1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C05D6: IStI2 Cancel
  loc_9C05D9: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C05E4: ExitProcHresult
End Sub

Private Sub DetaDivteCbo_Click() '9BDF88
  'Data Table: 4C1694
  loc_9BDEC0: FLdRfVar var_8A
  loc_9BDEC3: FLdPr Me
  loc_9BDEC6: VCallAd Control_ID_DetaDivteCbo
  loc_9BDEC9: FStAdFunc var_88
  loc_9BDECC: FLdPr var_88
  loc_9BDECF:  = Me.ListIndex
  loc_9BDED4: FLdI2 var_8A
  loc_9BDED7: LitI2_Byte 0
  loc_9BDED9: LtI2
  loc_9BDEDA: FFree1Ad var_88
  loc_9BDEDD: BranchF loc_9BDEEB
  loc_9BDEE0: LitI2_Byte 1
  loc_9BDEE2: FLdPr Me
  loc_9BDEE5: MemStI2 global_80
  loc_9BDEE8: Branch loc_9BDF86
  loc_9BDEEB: FLdRfVar var_8A
  loc_9BDEEE: FLdPr Me
  loc_9BDEF1: VCallAd Control_ID_DetaDivteCbo
  loc_9BDEF4: FStAdFunc var_88
  loc_9BDEF7: FLdPr var_88
  loc_9BDEFA:  = Me.ListIndex
  loc_9BDEFF: FLdI2 var_8A
  loc_9BDF02: LitI2_Byte 0
  loc_9BDF04: EqI2
  loc_9BDF05: FFree1Ad var_88
  loc_9BDF08: BranchF loc_9BDF4A
  loc_9BDF0B: FLdRfVar var_94
  loc_9BDF0E: FLdRfVar var_8A
  loc_9BDF11: FLdPr Me
  loc_9BDF14: VCallAd Control_ID_DetaDivteCbo
  loc_9BDF17: FStAdFunc var_88
  loc_9BDF1A: FLdPr var_88
  loc_9BDF1D:  = Me.ListIndex
  loc_9BDF22: FLdI2 var_8A
  loc_9BDF25: FLdPr Me
  loc_9BDF28: VCallAd Control_ID_DetaDivteCbo
  loc_9BDF2B: FStAdFunc var_90
  loc_9BDF2E: FLdPr var_90
  loc_9BDF31:  = Me.ItemData
  loc_9BDF36: ILdRf var_94
  loc_9BDF39: CI2I4
  loc_9BDF3A: FLdPr Me
  loc_9BDF3D: MemStI2 global_80
  loc_9BDF40: FFreeAd var_88 = ""
  loc_9BDF47: Branch loc_9BDF86
  loc_9BDF4A: FLdRfVar var_94
  loc_9BDF4D: FLdRfVar var_8A
  loc_9BDF50: FLdPr Me
  loc_9BDF53: VCallAd Control_ID_DetaDivteCbo
  loc_9BDF56: FStAdFunc var_88
  loc_9BDF59: FLdPr var_88
  loc_9BDF5C:  = Me.ListIndex
  loc_9BDF61: FLdI2 var_8A
  loc_9BDF64: FLdPr Me
  loc_9BDF67: VCallAd Control_ID_DetaDivteCbo
  loc_9BDF6A: FStAdFunc var_90
  loc_9BDF6D: FLdPr var_90
  loc_9BDF70:  = Me.ItemData
  loc_9BDF75: ILdRf var_94
  loc_9BDF78: CI2I4
  loc_9BDF79: FLdPr Me
  loc_9BDF7C: MemStI2 global_80
  loc_9BDF7F: FFreeAd var_88 = ""
  loc_9BDF86: ExitProcHresult
End Sub

Private Sub DetaDivteCbo_Validate(Cancel As Boolean) 'A287C0
  'Data Table: 4C1694
  loc_A285FC: FLdRfVar var_8A
  loc_A285FF: FLdPr Me
  loc_A28602: VCallAd Control_ID_cmdCancelar
  loc_A28605: FStAdFunc var_88
  loc_A28608: FLdPr var_88
  loc_A2860B:  = Me.Value
  loc_A28610: FLdI2 var_8A
  loc_A28613: NotI4
  loc_A28614: FLdRfVar var_92
  loc_A28617: FLdPr Me
  loc_A2861A: VCallAd Control_ID_DetaDivteCbo
  loc_A2861D: FStAdFunc var_90
  loc_A28620: FLdPr var_90
  loc_A28623:  = Me.Enabled
  loc_A28628: FLdI2 var_92
  loc_A2862B: AndI4
  loc_A2862C: FFreeAd var_88 = ""
  loc_A28633: BranchF loc_A287BF
  loc_A28636: FLdRfVar var_98
  loc_A28639: FLdPr Me
  loc_A2863C: MemLdRfVar from_stack_1.global_52
  loc_A2863F: NewIfNullPr clspersonas
  loc_A28642: from_stack_1 = clspersonas.RecordCount
  loc_A28647: ILdRf var_98
  loc_A2864A: LitI4 0
  loc_A2864F: LeI4
  loc_A28650: BranchF loc_A2866C
  loc_A28653: LitI2_Byte 0
  loc_A28655: FLdPr Me
  loc_A28658: VCallAd Control_ID_DetaDivteCbo
  loc_A2865B: FStAdFunc var_88
  loc_A2865E: FLdPr var_88
  loc_A28661: Me.ListIndex = from_stack_1
  loc_A28666: FFree1Ad var_88
  loc_A28669: Branch loc_A286D4
  loc_A2866C: FLdRfVar var_BC
  loc_A2866F: FLdRfVar var_AC
  loc_A28672: LitVarStr var_A8, "IdDivte"
  loc_A28677: PopAdLdVar
  loc_A28678: FLdRfVar var_90
  loc_A2867B: FLdRfVar var_88
  loc_A2867E: FLdPr Me
  loc_A28681: MemLdRfVar from_stack_1.global_52
  loc_A28684: NewIfNullPr clspersonas
  loc_A28687: from_stack_1v = clspersonas.RsFrmGet()
  loc_A2868C: FLdPr var_88
  loc_A2868F:  = Me.Fields
  loc_A28694: FLdPr var_90
  loc_A28697: from_stack_2 = Me.Item(from_stack_1)
  loc_A2869C: FLdPr var_AC
  loc_A2869F:  = Me.Value
  loc_A286A4: FLdRfVar var_BC
  loc_A286A7: LitVarI2 var_CC, 1
  loc_A286AC: HardType
  loc_A286AD: LtVarBool
  loc_A286AF: FFreeAd var_88 = "": var_90 = ""
  loc_A286B8: FFree1Var var_BC = ""
  loc_A286BB: BranchF loc_A286D4
  loc_A286BE: LitI2_Byte 0
  loc_A286C0: FLdPr Me
  loc_A286C3: VCallAd Control_ID_DetaDivteCbo
  loc_A286C6: FStAdFunc var_88
  loc_A286C9: FLdPr var_88
  loc_A286CC: Me.ListIndex = from_stack_1
  loc_A286D1: FFree1Ad var_88
  loc_A286D4: FLdRfVar var_8A
  loc_A286D7: FLdPr Me
  loc_A286DA: VCallAd Control_ID_DetaDivteCbo
  loc_A286DD: FStAdFunc var_88
  loc_A286E0: FLdPr var_88
  loc_A286E3:  = Me.ListIndex
  loc_A286E8: FLdI2 var_8A
  loc_A286EB: LitI2_Byte 0
  loc_A286ED: LtI2
  loc_A286EE: FFree1Ad var_88
  loc_A286F1: BranchF loc_A2873A
  loc_A286F4: LitStr "Seleccione una opción del combo Ciudad (o Provincia). Verifique..."
  loc_A286F7: FLdPr Me
  loc_A286FA: MemStStrCopy
  loc_A286FE: FLdPr Me
  loc_A28701: VCallAd Control_ID_DetaDivteCbo
  loc_A28704: FStAdFunc var_E0
  loc_A28707: LitNothing
  loc_A28709: CastAd
  loc_A2870C: FStAdFunc var_AC
  loc_A2870F: FLdRfVar var_AC
  loc_A28712: FLdZeroAd var_E0
  loc_A28715: FStAdFuncNoPop
  loc_A28718: CastAd
  loc_A2871B: FStAdFunc var_90
  loc_A2871E: FLdRfVar var_90
  loc_A28721: FLdPr Me
  loc_A28724: MemLdRfVar from_stack_1.global_64
  loc_A28727: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A2872C: IStI2 Cancel
  loc_A2872F: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A2873A: ILdI2 Cancel
  loc_A2873D: NotI4
  loc_A2873E: BranchF loc_A287BF
  loc_A28741: FLdRfVar var_E4
  loc_A28744: FLdPr Me
  loc_A28747: VCallAd Control_ID_DetaDivteCbo
  loc_A2874A: FStAdFunc var_88
  loc_A2874D: FLdPr var_88
  loc_A28750:  = Me.Text
  loc_A28755: LitI2_Byte 0
  loc_A28757: PopTmpLdAd2 var_E6
  loc_A2875A: LitI2_Byte 0
  loc_A2875C: PopTmpLdAd2 var_92
  loc_A2875F: LitI2_Byte 0
  loc_A28761: PopTmpLdAd2 var_8A
  loc_A28764: ILdRf var_E4
  loc_A28767: LitStr "DetaDivte"
  loc_A2876A: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A2876F: FStStrNoPop var_EC
  loc_A28772: FLdPr Me
  loc_A28775: MemStStrCopy
  loc_A28779: FFreeStr var_E4 = ""
  loc_A28780: FFree1Ad var_88
  loc_A28783: FLdPr Me
  loc_A28786: VCallAd Control_ID_DetaDivteCbo
  loc_A28789: FStAdFunc var_E0
  loc_A2878C: LitNothing
  loc_A2878E: CastAd
  loc_A28791: FStAdFunc var_AC
  loc_A28794: FLdRfVar var_AC
  loc_A28797: FLdZeroAd var_E0
  loc_A2879A: FStAdFuncNoPop
  loc_A2879D: CastAd
  loc_A287A0: FStAdFunc var_90
  loc_A287A3: FLdRfVar var_90
  loc_A287A6: FLdPr Me
  loc_A287A9: MemLdRfVar from_stack_1.global_64
  loc_A287AC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A287B1: IStI2 Cancel
  loc_A287B4: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_A287BF: ExitProcHresult
End Sub

Private Sub MailPersTxt_GotFocus() '952590
  'Data Table: 4C1694
  loc_95257C: FLdPr Me
  loc_95257F: VCallAd Control_ID_MailPersTxt
  loc_952582: CVarAd
  loc_952586: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95258B: FFree1Var var_94 = ""
  loc_95258E: ExitProcHresult
End Sub

Private Sub DofiProvTxt_Validate(Cancel As Boolean) '9BF8B4
  'Data Table: 4C1694
  loc_9BF7F8: FLdRfVar var_8A
  loc_9BF7FB: FLdPr Me
  loc_9BF7FE: VCallAd Control_ID_cmdCancelar
  loc_9BF801: FStAdFunc var_88
  loc_9BF804: FLdPr var_88
  loc_9BF807:  = Me.Value
  loc_9BF80C: FLdI2 var_8A
  loc_9BF80F: NotI4
  loc_9BF810: FLdRfVar var_92
  loc_9BF813: FLdPr Me
  loc_9BF816: VCallAd Control_ID_DofiProvTxt
  loc_9BF819: FStAdFunc var_90
  loc_9BF81C: FLdPr var_90
  loc_9BF81F:  = Me.Enabled
  loc_9BF824: FLdI2 var_92
  loc_9BF827: AndI4
  loc_9BF828: FFreeAd var_88 = ""
  loc_9BF82F: BranchF loc_9BF8B0
  loc_9BF832: FLdRfVar var_98
  loc_9BF835: FLdPr Me
  loc_9BF838: VCallAd Control_ID_DofiProvTxt
  loc_9BF83B: FStAdFunc var_88
  loc_9BF83E: FLdPr var_88
  loc_9BF841:  = Me.Text
  loc_9BF846: LitI2_Byte 0
  loc_9BF848: PopTmpLdAd2 var_9A
  loc_9BF84B: LitI2_Byte 0
  loc_9BF84D: PopTmpLdAd2 var_92
  loc_9BF850: LitI2_Byte 0
  loc_9BF852: PopTmpLdAd2 var_8A
  loc_9BF855: ILdRf var_98
  loc_9BF858: LitStr "Domicilio fiscal"
  loc_9BF85B: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BF860: FStStrNoPop var_A0
  loc_9BF863: FLdPr Me
  loc_9BF866: MemStStrCopy
  loc_9BF86A: FFreeStr var_98 = ""
  loc_9BF871: FFree1Ad var_88
  loc_9BF874: FLdPr Me
  loc_9BF877: VCallAd Control_ID_DofiProvTxt
  loc_9BF87A: FStAdFunc var_A8
  loc_9BF87D: LitNothing
  loc_9BF87F: CastAd
  loc_9BF882: FStAdFunc var_A4
  loc_9BF885: FLdRfVar var_A4
  loc_9BF888: FLdZeroAd var_A8
  loc_9BF88B: FStAdFuncNoPop
  loc_9BF88E: CastAd
  loc_9BF891: FStAdFunc var_90
  loc_9BF894: FLdRfVar var_90
  loc_9BF897: FLdPr Me
  loc_9BF89A: MemLdRfVar from_stack_1.global_64
  loc_9BF89D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BF8A2: IStI2 Cancel
  loc_9BF8A5: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BF8B0: ExitProcHresult
  loc_9BF8B1: CExtInstUnk
End Sub

Private Sub CucuPersTxt_GotFocus() '9528A8
  'Data Table: 4C1694
  loc_952894: FLdPr Me
  loc_952897: VCallAd Control_ID_CucuPersTxt
  loc_95289A: CVarAd
  loc_95289E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9528A3: FFree1Var var_94 = ""
  loc_9528A6: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) '9556A8
  'Data Table: 4C1694
  loc_955690: LitStr "1234567890"
  loc_955693: FStStrCopy var_88
  loc_955696: FLdRfVar var_88
  loc_955699: ILdRf KeyAscii
  loc_95569C: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9556A1: IStI2 KeyAscii
  loc_9556A4: FFree1Str var_88
  loc_9556A7: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) '9F2DFC
  'Data Table: 4C1694
  loc_9F2CC8: FLdRfVar var_8A
  loc_9F2CCB: FLdPr Me
  loc_9F2CCE: VCallAd Control_ID_cmdCancelar
  loc_9F2CD1: FStAdFunc var_88
  loc_9F2CD4: FLdPr var_88
  loc_9F2CD7:  = Me.Value
  loc_9F2CDC: FLdI2 var_8A
  loc_9F2CDF: NotI4
  loc_9F2CE0: FLdRfVar var_92
  loc_9F2CE3: FLdPr Me
  loc_9F2CE6: VCallAd Control_ID_CucuPersTxt
  loc_9F2CE9: FStAdFunc var_90
  loc_9F2CEC: FLdPr var_90
  loc_9F2CEF:  = Me.Enabled
  loc_9F2CF4: FLdI2 var_92
  loc_9F2CF7: AndI4
  loc_9F2CF8: FFreeAd var_88 = ""
  loc_9F2CFF: BranchF loc_9F2DF9
  loc_9F2D02: FLdRfVar var_9C
  loc_9F2D05: FLdRfVar var_98
  loc_9F2D08: FLdPr Me
  loc_9F2D0B: VCallAd Control_ID_CucuPersTxt
  loc_9F2D0E: FStAdFunc var_88
  loc_9F2D11: FLdPr var_88
  loc_9F2D14:  = Me.Text
  loc_9F2D19: ILdRf var_98
  loc_9F2D1C: FLdPr Me
  loc_9F2D1F: MemLdRfVar from_stack_1.global_52
  loc_9F2D22: NewIfNullPr clspersonas
  loc_9F2D25: from_stack_2v = clspersonas.CucuPersValidate(from_stack_1v)
  loc_9F2D2A: ILdRf var_9C
  loc_9F2D2D: FLdPr Me
  loc_9F2D30: MemStStrCopy
  loc_9F2D34: FFreeStr var_98 = ""
  loc_9F2D3B: FFree1Ad var_88
  loc_9F2D3E: FLdPr Me
  loc_9F2D41: VCallAd Control_ID_CucuPersTxt
  loc_9F2D44: FStAdFunc var_A4
  loc_9F2D47: LitNothing
  loc_9F2D49: CastAd
  loc_9F2D4C: FStAdFunc var_A0
  loc_9F2D4F: FLdRfVar var_A0
  loc_9F2D52: FLdZeroAd var_A4
  loc_9F2D55: FStAdFuncNoPop
  loc_9F2D58: CastAd
  loc_9F2D5B: FStAdFunc var_90
  loc_9F2D5E: FLdRfVar var_90
  loc_9F2D61: FLdPr Me
  loc_9F2D64: MemLdRfVar from_stack_1.global_64
  loc_9F2D67: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F2D6C: IStI2 Cancel
  loc_9F2D6F: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9F2D7A: ILdI2 Cancel
  loc_9F2D7D: NotI4
  loc_9F2D7E: BranchF loc_9F2DF9
  loc_9F2D81: FLdRfVar var_9C
  loc_9F2D84: FLdRfVar var_98
  loc_9F2D87: FLdPr Me
  loc_9F2D8A: VCallAd Control_ID_CucuPersTxt
  loc_9F2D8D: FStAdFunc var_88
  loc_9F2D90: FLdPr var_88
  loc_9F2D93:  = Me.Text
  loc_9F2D98: ILdRf var_98
  loc_9F2D9B: FLdPr Me
  loc_9F2D9E: MemLdRfVar from_stack_1.global_52
  loc_9F2DA1: NewIfNullPr clspersonas
  loc_9F2DA4: from_stack_2v = clspersonas.ValidaClave(from_stack_1v)
  loc_9F2DA9: ILdRf var_9C
  loc_9F2DAC: FLdPr Me
  loc_9F2DAF: MemStStrCopy
  loc_9F2DB3: FFreeStr var_98 = ""
  loc_9F2DBA: FFree1Ad var_88
  loc_9F2DBD: FLdPr Me
  loc_9F2DC0: VCallAd Control_ID_CucuPersTxt
  loc_9F2DC3: FStAdFunc var_A4
  loc_9F2DC6: LitNothing
  loc_9F2DC8: CastAd
  loc_9F2DCB: FStAdFunc var_A0
  loc_9F2DCE: FLdRfVar var_A0
  loc_9F2DD1: FLdZeroAd var_A4
  loc_9F2DD4: FStAdFuncNoPop
  loc_9F2DD7: CastAd
  loc_9F2DDA: FStAdFunc var_90
  loc_9F2DDD: FLdRfVar var_90
  loc_9F2DE0: FLdPr Me
  loc_9F2DE3: MemLdRfVar from_stack_1.global_64
  loc_9F2DE6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F2DEB: IStI2 Cancel
  loc_9F2DEE: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9F2DF9: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9D50BC
  'Data Table: 4C1694
  loc_9D4FC4: LitVarStr var_94, vbNullString
  loc_9D4FC9: PopAdLdVar
  loc_9D4FCA: FLdPr Me
  loc_9D4FCD: VCallAd Control_ID_FiltroMsk
  loc_9D4FD0: FStAdFunc var_A8
  loc_9D4FD3: FLdPr var_A8
  loc_9D4FD6: LateIdSt
  loc_9D4FDB: FFree1Ad var_A8
  loc_9D4FDE: FLdRfVar var_AA
  loc_9D4FE1: FLdPr Me
  loc_9D4FE4: VCallAd Control_ID_FiltroCbo
  loc_9D4FE7: FStAdFunc var_A8
  loc_9D4FEA: FLdPr var_A8
  loc_9D4FED:  = Me.ListIndex
  loc_9D4FF2: FLdI2 var_AA
  loc_9D4FF5: FStI2 var_AC
  loc_9D4FF8: FFree1Ad var_A8
  loc_9D4FFB: FLdI2 var_AC
  loc_9D4FFE: LitI2_Byte 0
  loc_9D5000: EqI2
  loc_9D5001: BranchF loc_9D503B
  loc_9D5004: LitVarStr var_94, vbNullString
  loc_9D5009: PopAdLdVar
  loc_9D500A: FLdPr Me
  loc_9D500D: VCallAd Control_ID_FiltroMsk
  loc_9D5010: FStAdFunc var_A8
  loc_9D5013: FLdPr var_A8
  loc_9D5016: LateIdSt
  loc_9D501B: FFree1Ad var_A8
  loc_9D501E: LitStr "DetaPers"
  loc_9D5021: FStStrCopy var_B0
  loc_9D5024: FLdRfVar var_B0
  loc_9D5027: FLdPr Me
  loc_9D502A: MemLdRfVar from_stack_1.global_52
  loc_9D502D: NewIfNullPr clspersonas
  loc_9D5030: Call clspersonas.Sort(from_stack_1v)
  loc_9D5035: FFree1Str var_B0
  loc_9D5038: Branch loc_9D50B8
  loc_9D503B: FLdI2 var_AC
  loc_9D503E: LitI2_Byte 1
  loc_9D5040: EqI2
  loc_9D5041: BranchF loc_9D507B
  loc_9D5044: LitVarStr var_94, vbNullString
  loc_9D5049: PopAdLdVar
  loc_9D504A: FLdPr Me
  loc_9D504D: VCallAd Control_ID_FiltroMsk
  loc_9D5050: FStAdFunc var_A8
  loc_9D5053: FLdPr var_A8
  loc_9D5056: LateIdSt
  loc_9D505B: FFree1Ad var_A8
  loc_9D505E: LitStr "CucuPers"
  loc_9D5061: FStStrCopy var_B0
  loc_9D5064: FLdRfVar var_B0
  loc_9D5067: FLdPr Me
  loc_9D506A: MemLdRfVar from_stack_1.global_52
  loc_9D506D: NewIfNullPr clspersonas
  loc_9D5070: Call clspersonas.Sort(from_stack_1v)
  loc_9D5075: FFree1Str var_B0
  loc_9D5078: Branch loc_9D50B8
  loc_9D507B: FLdI2 var_AC
  loc_9D507E: LitI2_Byte 2
  loc_9D5080: EqI2
  loc_9D5081: BranchF loc_9D50B8
  loc_9D5084: LitVarStr var_94, vbNullString
  loc_9D5089: PopAdLdVar
  loc_9D508A: FLdPr Me
  loc_9D508D: VCallAd Control_ID_FiltroMsk
  loc_9D5090: FStAdFunc var_A8
  loc_9D5093: FLdPr var_A8
  loc_9D5096: LateIdSt
  loc_9D509B: FFree1Ad var_A8
  loc_9D509E: LitStr "MailPers"
  loc_9D50A1: FStStrCopy var_B0
  loc_9D50A4: FLdRfVar var_B0
  loc_9D50A7: FLdPr Me
  loc_9D50AA: MemLdRfVar from_stack_1.global_52
  loc_9D50AD: NewIfNullPr clspersonas
  loc_9D50B0: Call clspersonas.Sort(from_stack_1v)
  loc_9D50B5: FFree1Str var_B0
  loc_9D50B8: ExitProcHresult
  loc_9D50B9: FFreeAd var_FFFFFFE4 = ""
End Sub

Private Sub TelePersTxt_GotFocus() '952548
  'Data Table: 4C1694
  loc_952534: FLdPr Me
  loc_952537: VCallAd Control_ID_TelePersTxt
  loc_95253A: CVarAd
  loc_95253E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952543: FFree1Var var_94 = ""
  loc_952546: ExitProcHresult
End Sub

Private Sub TelePersTxt_KeyPress(KeyAscii As Integer) '95435C
  'Data Table: 4C1694
  loc_954344: LitStr "1234567890 -()"
  loc_954347: FStStrCopy var_88
  loc_95434A: FLdRfVar var_88
  loc_95434D: ILdRf KeyAscii
  loc_954350: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_954355: IStI2 KeyAscii
  loc_954358: FFree1Str var_88
  loc_95435B: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B63E38
  'Data Table: 4C1694
  loc_B6330C: ILdRf Button
  loc_B6330F: FStAd var_88 
  loc_B63313: FLdRfVar var_8C
  loc_B63316: FLdPr var_88
  loc_B63319:  = Me.Key
  loc_B6331E: FLdZeroAd var_8C
  loc_B63321: FStStr var_90
  loc_B63324: ILdRf var_90
  loc_B63327: LitStr "btnCrear"
  loc_B6332A: EqStr
  loc_B6332C: BranchF loc_B63499
  loc_B6332F: LitI2_Byte 1
  loc_B63331: FLdPr Me
  loc_B63334: MemStUI1
  loc_B63338: ILdRf Me
  loc_B6333B: CastAd
  loc_B6333E: FStAdFunc var_94
  loc_B63341: FLdRfVar var_94
  loc_B63344: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B63349: FFree1Ad var_94
  loc_B6334C: LitI4 0
  loc_B63351: LitI4 0
  loc_B63356: FLdRfVar var_98
  loc_B63359: Redim
  loc_B63363: FLdPr Me
  loc_B63366: VCallAd Control_ID_dgdABMS
  loc_B63369: CVarAd
  loc_B6336D: ParmAry1St
  loc_B63373: FLdRfVar var_98
  loc_B63376: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B6337B: FLdRfVar var_98
  loc_B6337E: Erase
  loc_B6337F: ILdRf Me
  loc_B63382: CastAd
  loc_B63385: FStAdFunc var_94
  loc_B63388: FLdRfVar var_94
  loc_B6338B: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B63390: FFree1Ad var_94
  loc_B63393: ILdRf Me
  loc_B63396: CastAd
  loc_B63399: FStAdFunc var_94
  loc_B6339C: FLdRfVar var_94
  loc_B6339F: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_B633A4: FFree1Ad var_94
  loc_B633A7: LitI4 0
  loc_B633AC: CI2I4
  loc_B633AD: FLdPr Me
  loc_B633B0: VCallAd Control_ID_JuriPersChk
  loc_B633B3: FStAdFunc var_94
  loc_B633B6: FLdPr var_94
  loc_B633B9: Me.Value = from_stack_1
  loc_B633BE: FFree1Ad var_94
  loc_B633C1: LitI4 0
  loc_B633C6: CI2I4
  loc_B633C7: FLdPr Me
  loc_B633CA: VCallAd Control_ID_EsProveedorChk
  loc_B633CD: FStAdFunc var_94
  loc_B633D0: FLdPr var_94
  loc_B633D3: Me.Value = from_stack_1
  loc_B633D8: FFree1Ad var_94
  loc_B633DB: ILdRf Me
  loc_B633DE: CastAd
  loc_B633E1: FStAdFunc var_94
  loc_B633E4: FLdRfVar var_94
  loc_B633E7: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_B633EC: FFree1Ad var_94
  loc_B633EF: LitI2_Byte &HFF
  loc_B633F1: BranchF loc_B63421
  loc_B633F4: LitStr " en Infogov 3 actualice el correo del proveedor. COMPRAS Y SUMINISTROS - COMPRAS WEB "
  loc_B633F7: FLdPr Me
  loc_B633FA: VCallAd Control_ID_MailPersTxt
  loc_B633FD: FStAdFunc var_94
  loc_B63400: FLdPr var_94
  loc_B63403: Me.Text = from_stack_1
  loc_B63408: FFree1Ad var_94
  loc_B6340B: LitI2_Byte 0
  loc_B6340D: FLdPr Me
  loc_B63410: VCallAd Control_ID_MailPersTxt
  loc_B63413: FStAdFunc var_94
  loc_B63416: FLdPr var_94
  loc_B63419: Me.Enabled = from_stack_1b
  loc_B6341E: FFree1Ad var_94
  loc_B63421: LitI4 0
  loc_B63426: LitI4 3
  loc_B6342B: FLdRfVar var_98
  loc_B6342E: Redim
  loc_B63438: FLdPr Me
  loc_B6343B: VCallAd Control_ID_FactProvCbo
  loc_B6343E: CVarAd
  loc_B63442: ParmAry1St
  loc_B63448: FLdPr Me
  loc_B6344B: VCallAd Control_ID_FantProvTxt
  loc_B6344E: CVarAd
  loc_B63452: ParmAry1St
  loc_B63458: FLdPr Me
  loc_B6345B: VCallAd Control_ID_DofiProvTxt
  loc_B6345E: CVarAd
  loc_B63462: ParmAry1St
  loc_B63468: FLdPr Me
  loc_B6346B: VCallAd Control_ID_DetaDivteCbo
  loc_B6346E: CVarAd
  loc_B63472: ParmAry1St
  loc_B63478: FLdRfVar var_98
  loc_B6347B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B63480: FLdRfVar var_98
  loc_B63483: Erase
  loc_B63484: FLdPr Me
  loc_B63487: VCallAd Control_ID_CucuPersTxt
  loc_B6348A: CVarAd
  loc_B6348E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_B63493: FFree1Var var_A8 = ""
  loc_B63496: Branch loc_B63E37
  loc_B63499: ILdRf var_90
  loc_B6349C: LitStr "btnModificar"
  loc_B6349F: EqStr
  loc_B634A1: BranchF loc_B6371B
  loc_B634A4: LitI2_Byte 2
  loc_B634A6: FLdPr Me
  loc_B634A9: MemStUI1
  loc_B634AD: ILdRf Me
  loc_B634B0: CastAd
  loc_B634B3: FStAdFunc var_94
  loc_B634B6: FLdRfVar var_94
  loc_B634B9: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B634BE: FFree1Ad var_94
  loc_B634C1: LitI4 0
  loc_B634C6: LitI4 0
  loc_B634CB: FLdRfVar var_98
  loc_B634CE: Redim
  loc_B634D8: FLdPr Me
  loc_B634DB: VCallAd Control_ID_dgdABMS
  loc_B634DE: CVarAd
  loc_B634E2: ParmAry1St
  loc_B634E8: FLdRfVar var_98
  loc_B634EB: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B634F0: FLdRfVar var_98
  loc_B634F3: Erase
  loc_B634F4: ILdRf Me
  loc_B634F7: CastAd
  loc_B634FA: FStAdFunc var_94
  loc_B634FD: FLdRfVar var_94
  loc_B63500: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B63505: FFree1Ad var_94
  loc_B63508: LitI2_Byte 0
  loc_B6350A: FLdPr Me
  loc_B6350D: VCallAd Control_ID_JuriPersChk
  loc_B63510: FStAdFunc var_94
  loc_B63513: FLdPr var_94
  loc_B63516: Me.Value = from_stack_1
  loc_B6351B: FFree1Ad var_94
  loc_B6351E: LitI4 0
  loc_B63523: LitI4 6
  loc_B63528: FLdRfVar var_98
  loc_B6352B: Redim
  loc_B63535: FLdPr Me
  loc_B63538: VCallAd Control_ID_DetaPersTxt
  loc_B6353B: CVarAd
  loc_B6353F: ParmAry1St
  loc_B63545: FLdPr Me
  loc_B63548: VCallAd Control_ID_DecrPersTxt
  loc_B6354B: CVarAd
  loc_B6354F: ParmAry1St
  loc_B63555: FLdPr Me
  loc_B63558: VCallAd Control_ID_TelePersTxt
  loc_B6355B: CVarAd
  loc_B6355F: ParmAry1St
  loc_B63565: FLdPr Me
  loc_B63568: VCallAd Control_ID_CeluPersTxt
  loc_B6356B: CVarAd
  loc_B6356F: ParmAry1St
  loc_B63575: FLdPr Me
  loc_B63578: VCallAd Control_ID_MailPersTxt
  loc_B6357B: CVarAd
  loc_B6357F: ParmAry1St
  loc_B63585: FLdPr Me
  loc_B63588: VCallAd Control_ID_JuriPersChk
  loc_B6358B: CVarAd
  loc_B6358F: ParmAry1St
  loc_B63595: FLdPr Me
  loc_B63598: VCallAd Control_ID_EsProveedorChk
  loc_B6359B: CVarAd
  loc_B6359F: ParmAry1St
  loc_B635A5: FLdRfVar var_98
  loc_B635A8: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B635AD: FLdRfVar var_98
  loc_B635B0: Erase
  loc_B635B1: LitI2_Byte &HFF
  loc_B635B3: BranchF loc_B635E3
  loc_B635B6: LitStr " en Infogov 3 actualice el correo del proveedor. COMPRAS Y SUMINISTROS - COMPRAS WEB "
  loc_B635B9: FLdPr Me
  loc_B635BC: VCallAd Control_ID_MailPersTxt
  loc_B635BF: FStAdFunc var_94
  loc_B635C2: FLdPr var_94
  loc_B635C5: Me.Text = from_stack_1
  loc_B635CA: FFree1Ad var_94
  loc_B635CD: LitI2_Byte 0
  loc_B635CF: FLdPr Me
  loc_B635D2: VCallAd Control_ID_MailPersTxt
  loc_B635D5: FStAdFunc var_94
  loc_B635D8: FLdPr var_94
  loc_B635DB: Me.Enabled = from_stack_1b
  loc_B635E0: FFree1Ad var_94
  loc_B635E3: FLdRfVar var_10A
  loc_B635E6: FLdPr Me
  loc_B635E9: VCallAd Control_ID_EsProveedorChk
  loc_B635EC: FStAdFunc var_94
  loc_B635EF: FLdPr var_94
  loc_B635F2:  = Me.Value
  loc_B635F7: FLdI2 var_10A
  loc_B635FA: CI4UI1
  loc_B635FB: LitI4 1
  loc_B63600: EqI4
  loc_B63601: FFree1Ad var_94
  loc_B63604: BranchF loc_B63702
  loc_B63607: FLdRfVar var_A8
  loc_B6360A: FLdRfVar var_124
  loc_B6360D: LitVarStr var_120, "CucuPers"
  loc_B63612: PopAdLdVar
  loc_B63613: FLdRfVar var_110
  loc_B63616: FLdRfVar var_94
  loc_B63619: FLdPr Me
  loc_B6361C: MemLdRfVar from_stack_1.global_52
  loc_B6361F: NewIfNullPr clspersonas
  loc_B63622: from_stack_1v = clspersonas.RsFrmGet()
  loc_B63627: FLdPr var_94
  loc_B6362A:  = Me.Fields
  loc_B6362F: FLdPr var_110
  loc_B63632: from_stack_2 = Me.Item(from_stack_1)
  loc_B63637: FLdPr var_124
  loc_B6363A:  = Me.Value
  loc_B6363F: FLdRfVar var_A8
  loc_B63642: FnLenVar var_B8
  loc_B63646: LitVarI2 var_134, 11
  loc_B6364B: HardType
  loc_B6364C: EqVarBool
  loc_B6364E: FFreeAd var_94 = "": var_110 = ""
  loc_B63657: FFree1Var var_A8 = ""
  loc_B6365A: BranchF loc_B636D8
  loc_B6365D: LitI4 0
  loc_B63662: LitI4 4
  loc_B63667: FLdRfVar var_98
  loc_B6366A: Redim
  loc_B63674: FLdPr Me
  loc_B63677: VCallAd Control_ID_FactProvCbo
  loc_B6367A: CVarAd
  loc_B6367E: ParmAry1St
  loc_B63684: FLdPr Me
  loc_B63687: VCallAd Control_ID_FantProvTxt
  loc_B6368A: CVarAd
  loc_B6368E: ParmAry1St
  loc_B63694: FLdPr Me
  loc_B63697: VCallAd Control_ID_DetaDivteCbo
  loc_B6369A: CVarAd
  loc_B6369E: ParmAry1St
  loc_B636A4: FLdPr Me
  loc_B636A7: VCallAd Control_ID_DofiProvTxt
  loc_B636AA: CVarAd
  loc_B636AE: ParmAry1St
  loc_B636B4: FLdPr Me
  loc_B636B7: VCallAd Control_ID_frmFichaProveedor
  loc_B636BA: CVarAd
  loc_B636BE: ParmAry1St
  loc_B636C4: FLdRfVar var_98
  loc_B636C7: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B636CC: FLdRfVar var_98
  loc_B636CF: Erase
  loc_B636D0: Call Proc_141_35_A5CA20()
  loc_B636D5: Branch loc_B636FF
  loc_B636D8: LitI4 0
  loc_B636DD: LitStr "El CUIT es incorrecto. Verifique..."
  loc_B636E0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B636E5: LitI4 0
  loc_B636EA: CI2I4
  loc_B636EB: FLdPr Me
  loc_B636EE: VCallAd Control_ID_EsProveedorChk
  loc_B636F1: FStAdFunc var_94
  loc_B636F4: FLdPr var_94
  loc_B636F7: Me.Value = from_stack_1
  loc_B636FC: FFree1Ad var_94
  loc_B636FF: Branch loc_B63718
  loc_B63702: LitI2_Byte 0
  loc_B63704: FLdPr Me
  loc_B63707: VCallAd Control_ID_frmFichaProveedor
  loc_B6370A: FStAdFunc var_94
  loc_B6370D: FLdPr var_94
  loc_B63710: Me.Enabled = from_stack_1b
  loc_B63715: FFree1Ad var_94
  loc_B63718: Branch loc_B63E37
  loc_B6371B: ILdRf var_90
  loc_B6371E: LitStr "btnEliminar"
  loc_B63721: EqStr
  loc_B63723: BranchF loc_B63729
  loc_B63726: Branch loc_B63E37
  loc_B63729: ILdRf var_90
  loc_B6372C: LitStr "btnGuardar"
  loc_B6372F: EqStr
  loc_B63731: BranchF loc_B63D33
  loc_B63734: LitStr vbNullString
  loc_B63737: FLdPr Me
  loc_B6373A: MemStStrCopy
  loc_B6373E: LitI2_Byte 0
  loc_B63740: PopTmpLdAd2 var_10A
  loc_B63743: Call CucuPersTxt_Validate(from_stack_1v)
  loc_B63748: FLdPr Me
  loc_B6374B: MemLdStr global_64
  loc_B6374E: LitStr vbNullString
  loc_B63751: NeStr
  loc_B63753: BranchF loc_B63757
  loc_B63756: ExitProcHresult
  loc_B63757: LitI2_Byte 0
  loc_B63759: PopTmpLdAd2 var_10A
  loc_B6375C: Call DetaPersTxt_Validate(from_stack_1v)
  loc_B63761: FLdPr Me
  loc_B63764: MemLdStr global_64
  loc_B63767: LitStr vbNullString
  loc_B6376A: NeStr
  loc_B6376C: BranchF loc_B63770
  loc_B6376F: ExitProcHresult
  loc_B63770: LitI2_Byte 0
  loc_B63772: PopTmpLdAd2 var_10A
  loc_B63775: Call DofiProvTxt_Validate(from_stack_1v)
  loc_B6377A: FLdPr Me
  loc_B6377D: MemLdStr global_64
  loc_B63780: LitStr vbNullString
  loc_B63783: NeStr
  loc_B63785: BranchF loc_B63789
  loc_B63788: ExitProcHresult
  loc_B63789: LitI2_Byte 0
  loc_B6378B: PopTmpLdAd2 var_10A
  loc_B6378E: Call DecrPersTxt_Validate(from_stack_1v)
  loc_B63793: FLdPr Me
  loc_B63796: MemLdStr global_64
  loc_B63799: LitStr vbNullString
  loc_B6379C: NeStr
  loc_B6379E: BranchF loc_B637A2
  loc_B637A1: ExitProcHresult
  loc_B637A2: LitI2_Byte 0
  loc_B637A4: PopTmpLdAd2 var_10A
  loc_B637A7: Call FactProvCbo_Validate(from_stack_1v)
  loc_B637AC: FLdPr Me
  loc_B637AF: MemLdStr global_64
  loc_B637B2: LitStr vbNullString
  loc_B637B5: NeStr
  loc_B637B7: BranchF loc_B637BB
  loc_B637BA: ExitProcHresult
  loc_B637BB: LitI2_Byte 0
  loc_B637BD: PopTmpLdAd2 var_10A
  loc_B637C0: Call FantProvTxt_Validate(from_stack_1v)
  loc_B637C5: FLdPr Me
  loc_B637C8: MemLdStr global_64
  loc_B637CB: LitStr vbNullString
  loc_B637CE: NeStr
  loc_B637D0: BranchF loc_B637D4
  loc_B637D3: ExitProcHresult
  loc_B637D4: LitI2_Byte 0
  loc_B637D6: PopTmpLdAd2 var_10A
  loc_B637D9: Call DetaDivteCbo_Validate(from_stack_1v)
  loc_B637DE: FLdPr Me
  loc_B637E1: MemLdStr global_64
  loc_B637E4: LitStr vbNullString
  loc_B637E7: NeStr
  loc_B637E9: BranchF loc_B637ED
  loc_B637EC: ExitProcHresult
  loc_B637ED: FLdPr Me
  loc_B637F0: MemLdUI1 global_60
  loc_B637F4: FStUI1 var_136
  loc_B637F8: FLdUI1
  loc_B637FC: LitI2_Byte 1
  loc_B637FE: EqI2
  loc_B637FF: BranchF loc_B63A1A
  loc_B63802: FLdRfVar var_8C
  loc_B63805: FLdPr Me
  loc_B63808: VCallAd Control_ID_CucuPersTxt
  loc_B6380B: FStAdFunc var_110
  loc_B6380E: FLdPr var_110
  loc_B63811:  = Me.Text
  loc_B63816: FLdRfVar var_13C
  loc_B63819: FLdPr Me
  loc_B6381C: VCallAd Control_ID_DetaPersTxt
  loc_B6381F: FStAdFunc var_124
  loc_B63822: FLdPr var_124
  loc_B63825:  = Me.Text
  loc_B6382A: FLdRfVar var_144
  loc_B6382D: FLdPr Me
  loc_B63830: VCallAd Control_ID_DecrPersTxt
  loc_B63833: FStAdFunc var_140
  loc_B63836: FLdPr var_140
  loc_B63839:  = Me.Text
  loc_B6383E: FLdRfVar var_14C
  loc_B63841: FLdPr Me
  loc_B63844: VCallAd Control_ID_TelePersTxt
  loc_B63847: FStAdFunc var_148
  loc_B6384A: FLdPr var_148
  loc_B6384D:  = Me.Text
  loc_B63852: FLdRfVar var_154
  loc_B63855: FLdPr Me
  loc_B63858: VCallAd Control_ID_CeluPersTxt
  loc_B6385B: FStAdFunc var_150
  loc_B6385E: FLdPr var_150
  loc_B63861:  = Me.Text
  loc_B63866: FLdRfVar var_15C
  loc_B63869: FLdPr Me
  loc_B6386C: VCallAd Control_ID_MailPersTxt
  loc_B6386F: FStAdFunc var_158
  loc_B63872: FLdPr var_158
  loc_B63875:  = Me.Text
  loc_B6387A: FLdRfVar var_10A
  loc_B6387D: FLdPr Me
  loc_B63880: VCallAd Control_ID_JuriPersChk
  loc_B63883: FStAdFunc var_94
  loc_B63886: FLdPr var_94
  loc_B63889:  = Me.Value
  loc_B6388E: FLdI2 var_10A
  loc_B63891: CUI1I2
  loc_B63893: ILdRf var_15C
  loc_B63896: ILdRf var_154
  loc_B63899: ILdRf var_14C
  loc_B6389C: ILdRf var_144
  loc_B6389F: ILdRf var_13C
  loc_B638A2: ILdRf var_8C
  loc_B638A5: FLdPr Me
  loc_B638A8: MemLdRfVar from_stack_1.global_52
  loc_B638AB: NewIfNullPr clspersonas
  loc_B638AE: Call clspersonas.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_B638B3: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_14C = "": var_154 = ""
  loc_B638C2: FFreeAd var_94 = "": var_110 = "": var_124 = "": var_140 = "": var_148 = "": var_150 = ""
  loc_B638D3: FLdRfVar var_10A
  loc_B638D6: FLdPr Me
  loc_B638D9: VCallAd Control_ID_EsProveedorChk
  loc_B638DC: FStAdFunc var_94
  loc_B638DF: FLdPr var_94
  loc_B638E2:  = Me.Value
  loc_B638E7: FLdI2 var_10A
  loc_B638EA: CI4UI1
  loc_B638EB: LitI4 1
  loc_B638F0: EqI4
  loc_B638F1: FFree1Ad var_94
  loc_B638F4: BranchF loc_B639EC
  loc_B638F7: FLdRfVar var_8C
  loc_B638FA: FLdPr Me
  loc_B638FD: VCallAd Control_ID_CucuPersTxt
  loc_B63900: FStAdFunc var_94
  loc_B63903: FLdPr var_94
  loc_B63906:  = Me.Text
  loc_B6390B: FLdRfVar var_13C
  loc_B6390E: FLdPr Me
  loc_B63911: VCallAd Control_ID_DetaPersTxt
  loc_B63914: FStAdFunc var_110
  loc_B63917: FLdPr var_110
  loc_B6391A:  = Me.Text
  loc_B6391F: FLdRfVar var_144
  loc_B63922: FLdPr Me
  loc_B63925: VCallAd Control_ID_FantProvTxt
  loc_B63928: FStAdFunc var_124
  loc_B6392B: FLdPr var_124
  loc_B6392E:  = Me.Text
  loc_B63933: FLdRfVar var_14C
  loc_B63936: FLdPr Me
  loc_B63939: VCallAd Control_ID_DofiProvTxt
  loc_B6393C: FStAdFunc var_140
  loc_B6393F: FLdPr var_140
  loc_B63942:  = Me.Text
  loc_B63947: FLdRfVar var_154
  loc_B6394A: FLdPr Me
  loc_B6394D: VCallAd Control_ID_FactProvCbo
  loc_B63950: FStAdFunc var_148
  loc_B63953: FLdPr var_148
  loc_B63956:  = Me.Text
  loc_B6395B: FLdRfVar var_10A
  loc_B6395E: FLdPr Me
  loc_B63961: VCallAd Control_ID_DetaDivteCbo
  loc_B63964: FStAdFunc var_150
  loc_B63967: FLdPr var_150
  loc_B6396A:  = Me.ListIndex
  loc_B6396F: FLdRfVar var_160
  loc_B63972: FLdI2 var_10A
  loc_B63975: FLdPr Me
  loc_B63978: VCallAd Control_ID_DetaDivteCbo
  loc_B6397B: FStAdFunc var_158
  loc_B6397E: FLdPr var_158
  loc_B63981:  = Me.ItemData
  loc_B63986: FLdRfVar var_15C
  loc_B63989: ILdRf var_160
  loc_B6398C: CUI1I4
  loc_B6398E: LitI2_Byte 0
  loc_B63990: CUI1I2
  loc_B63992: LitStr vbNullString
  loc_B63995: LitStr "  /  /    "
  loc_B63998: ILdRf var_154
  loc_B6399B: LitStr "0"
  loc_B6399E: LitStr vbNullString
  loc_B639A1: LitStr vbNullString
  loc_B639A4: LitI2_Byte 0
  loc_B639A6: CUI1I2
  loc_B639A8: LitStr "0"
  loc_B639AB: LitStr vbNullString
  loc_B639AE: LitI2_Byte 0
  loc_B639B0: CUI1I2
  loc_B639B2: ILdRf var_14C
  loc_B639B5: ILdRf var_144
  loc_B639B8: ILdRf var_13C
  loc_B639BB: ILdRf var_8C
  loc_B639BE: FLdPr Me
  loc_B639C1: MemLdRfVar from_stack_1.global_56
  loc_B639C4: NewIfNullPr clsproveedor
  loc_B639C7: from_stack_16v = clsproveedor.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B639CC: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_14C = "": var_154 = ""
  loc_B639DB: FFreeAd var_94 = "": var_110 = "": var_124 = "": var_140 = "": var_148 = "": var_150 = ""
  loc_B639EC: FLdRfVar var_8C
  loc_B639EF: FLdPr Me
  loc_B639F2: VCallAd Control_ID_CucuPersTxt
  loc_B639F5: FStAdFunc var_94
  loc_B639F8: FLdPr var_94
  loc_B639FB:  = Me.Text
  loc_B63A00: ILdRf var_8C
  loc_B63A03: FLdPr Me
  loc_B63A06: MemLdRfVar from_stack_1.global_52
  loc_B63A09: NewIfNullPr clspersonas
  loc_B63A0C: Call clspersonas.Encontrar(from_stack_1v)
  loc_B63A11: FFree1Str var_8C
  loc_B63A14: FFree1Ad var_94
  loc_B63A17: Branch loc_B63D2B
  loc_B63A1A: FLdUI1
  loc_B63A1E: LitI2_Byte 2
  loc_B63A20: EqI2
  loc_B63A21: BranchF loc_B63D2B
  loc_B63A24: FLdRfVar var_160
  loc_B63A27: FLdPr Me
  loc_B63A2A: MemLdRfVar from_stack_1.global_52
  loc_B63A2D: NewIfNullPr clspersonas
  loc_B63A30: from_stack_1 = clspersonas.RecordCount
  loc_B63A35: ILdRf var_160
  loc_B63A38: LitI4 0
  loc_B63A3D: GtI4
  loc_B63A3E: BranchF loc_B63D2B
  loc_B63A41: FLdRfVar var_A8
  loc_B63A44: FLdRfVar var_124
  loc_B63A47: LitVarStr var_120, "EsProveedor"
  loc_B63A4C: PopAdLdVar
  loc_B63A4D: FLdRfVar var_110
  loc_B63A50: FLdRfVar var_94
  loc_B63A53: FLdPr Me
  loc_B63A56: MemLdRfVar from_stack_1.global_52
  loc_B63A59: NewIfNullPr clspersonas
  loc_B63A5C: from_stack_1v = clspersonas.RsFrmGet()
  loc_B63A61: FLdPr var_94
  loc_B63A64:  = Me.Fields
  loc_B63A69: FLdPr var_110
  loc_B63A6C: from_stack_2 = Me.Item(from_stack_1)
  loc_B63A71: FLdPr var_124
  loc_B63A74:  = Me.Value
  loc_B63A79: FLdRfVar var_A8
  loc_B63A7C: LitVarStr var_134, "0"
  loc_B63A81: HardType
  loc_B63A82: EqVarBool
  loc_B63A84: FFreeAd var_94 = "": var_110 = ""
  loc_B63A8D: FFree1Var var_A8 = ""
  loc_B63A90: BranchF loc_B63B83
  loc_B63A93: FLdRfVar var_10A
  loc_B63A96: FLdPr Me
  loc_B63A99: VCallAd Control_ID_EsProveedorChk
  loc_B63A9C: FStAdFunc var_94
  loc_B63A9F: FLdPr var_94
  loc_B63AA2:  = Me.Value
  loc_B63AA7: FLdI2 var_10A
  loc_B63AAA: CI4UI1
  loc_B63AAB: LitI4 1
  loc_B63AB0: EqI4
  loc_B63AB1: FFree1Ad var_94
  loc_B63AB4: BranchF loc_B63B80
  loc_B63AB7: FLdRfVar var_8C
  loc_B63ABA: FLdPr Me
  loc_B63ABD: VCallAd Control_ID_CucuPersTxt
  loc_B63AC0: FStAdFunc var_94
  loc_B63AC3: FLdPr var_94
  loc_B63AC6:  = Me.Text
  loc_B63ACB: FLdRfVar var_13C
  loc_B63ACE: FLdPr Me
  loc_B63AD1: VCallAd Control_ID_DetaPersTxt
  loc_B63AD4: FStAdFunc var_110
  loc_B63AD7: FLdPr var_110
  loc_B63ADA:  = Me.Text
  loc_B63ADF: FLdRfVar var_144
  loc_B63AE2: FLdPr Me
  loc_B63AE5: VCallAd Control_ID_FantProvTxt
  loc_B63AE8: FStAdFunc var_124
  loc_B63AEB: FLdPr var_124
  loc_B63AEE:  = Me.Text
  loc_B63AF3: FLdRfVar var_14C
  loc_B63AF6: FLdPr Me
  loc_B63AF9: VCallAd Control_ID_DofiProvTxt
  loc_B63AFC: FStAdFunc var_140
  loc_B63AFF: FLdPr var_140
  loc_B63B02:  = Me.Text
  loc_B63B07: FLdRfVar var_154
  loc_B63B0A: FLdPr Me
  loc_B63B0D: VCallAd Control_ID_FactProvCbo
  loc_B63B10: FStAdFunc var_148
  loc_B63B13: FLdPr var_148
  loc_B63B16:  = Me.Text
  loc_B63B1B: FLdRfVar var_15C
  loc_B63B1E: FLdPr Me
  loc_B63B21: MemLdI2 global_80
  loc_B63B24: CUI1I2
  loc_B63B26: LitI2_Byte 0
  loc_B63B28: CUI1I2
  loc_B63B2A: LitStr vbNullString
  loc_B63B2D: LitStr "  /  /    "
  loc_B63B30: ILdRf var_154
  loc_B63B33: LitStr "0"
  loc_B63B36: LitStr vbNullString
  loc_B63B39: LitStr vbNullString
  loc_B63B3C: LitI2_Byte 0
  loc_B63B3E: CUI1I2
  loc_B63B40: LitStr "0"
  loc_B63B43: LitStr vbNullString
  loc_B63B46: LitI2_Byte 0
  loc_B63B48: CUI1I2
  loc_B63B4A: ILdRf var_14C
  loc_B63B4D: ILdRf var_144
  loc_B63B50: ILdRf var_13C
  loc_B63B53: ILdRf var_8C
  loc_B63B56: FLdPr Me
  loc_B63B59: MemLdRfVar from_stack_1.global_56
  loc_B63B5C: NewIfNullPr clsproveedor
  loc_B63B5F: from_stack_16v = clsproveedor.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B63B64: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_14C = "": var_154 = ""
  loc_B63B73: FFreeAd var_94 = "": var_110 = "": var_124 = "": var_140 = ""
  loc_B63B80: Branch loc_B63C4A
  loc_B63B83: FLdRfVar var_10A
  loc_B63B86: FLdPr Me
  loc_B63B89: VCallAd Control_ID_EsProveedorChk
  loc_B63B8C: FStAdFunc var_94
  loc_B63B8F: FLdPr var_94
  loc_B63B92:  = Me.Value
  loc_B63B97: FLdI2 var_10A
  loc_B63B9A: CI4UI1
  loc_B63B9B: LitI4 1
  loc_B63BA0: EqI4
  loc_B63BA1: FFree1Ad var_94
  loc_B63BA4: BranchF loc_B63C4A
  loc_B63BA7: FLdRfVar var_8C
  loc_B63BAA: FLdPr Me
  loc_B63BAD: VCallAd Control_ID_CucuPersTxt
  loc_B63BB0: FStAdFunc var_94
  loc_B63BB3: FLdPr var_94
  loc_B63BB6:  = Me.Text
  loc_B63BBB: FLdRfVar var_13C
  loc_B63BBE: FLdPr Me
  loc_B63BC1: VCallAd Control_ID_DetaPersTxt
  loc_B63BC4: FStAdFunc var_110
  loc_B63BC7: FLdPr var_110
  loc_B63BCA:  = Me.Text
  loc_B63BCF: FLdRfVar var_144
  loc_B63BD2: FLdPr Me
  loc_B63BD5: VCallAd Control_ID_FantProvTxt
  loc_B63BD8: FStAdFunc var_124
  loc_B63BDB: FLdPr var_124
  loc_B63BDE:  = Me.Text
  loc_B63BE3: FLdRfVar var_14C
  loc_B63BE6: FLdPr Me
  loc_B63BE9: VCallAd Control_ID_DofiProvTxt
  loc_B63BEC: FStAdFunc var_140
  loc_B63BEF: FLdPr var_140
  loc_B63BF2:  = Me.Text
  loc_B63BF7: FLdRfVar var_154
  loc_B63BFA: FLdPr Me
  loc_B63BFD: VCallAd Control_ID_FactProvCbo
  loc_B63C00: FStAdFunc var_148
  loc_B63C03: FLdPr var_148
  loc_B63C06:  = Me.Text
  loc_B63C0B: FLdPr Me
  loc_B63C0E: MemLdI2 global_80
  loc_B63C11: CUI1I2
  loc_B63C13: ILdRf var_154
  loc_B63C16: ILdRf var_14C
  loc_B63C19: ILdRf var_144
  loc_B63C1C: ILdRf var_13C
  loc_B63C1F: ILdRf var_8C
  loc_B63C22: FLdPr Me
  loc_B63C25: MemLdRfVar from_stack_1.global_56
  loc_B63C28: NewIfNullPr clsproveedor
  loc_B63C2B: Call clsproveedor.Modificar_2(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_B63C30: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_14C = ""
  loc_B63C3D: FFreeAd var_94 = "": var_110 = "": var_124 = "": var_140 = ""
  loc_B63C4A: FLdRfVar var_8C
  loc_B63C4D: FLdPr Me
  loc_B63C50: VCallAd Control_ID_DetaPersTxt
  loc_B63C53: FStAdFunc var_94
  loc_B63C56: FLdPr var_94
  loc_B63C59:  = Me.Text
  loc_B63C5E: FLdRfVar var_13C
  loc_B63C61: FLdPr Me
  loc_B63C64: VCallAd Control_ID_DecrPersTxt
  loc_B63C67: FStAdFunc var_110
  loc_B63C6A: FLdPr var_110
  loc_B63C6D:  = Me.Text
  loc_B63C72: FLdRfVar var_144
  loc_B63C75: FLdPr Me
  loc_B63C78: VCallAd Control_ID_TelePersTxt
  loc_B63C7B: FStAdFunc var_124
  loc_B63C7E: FLdPr var_124
  loc_B63C81:  = Me.Text
  loc_B63C86: FLdRfVar var_14C
  loc_B63C89: FLdPr Me
  loc_B63C8C: VCallAd Control_ID_CeluPersTxt
  loc_B63C8F: FStAdFunc var_140
  loc_B63C92: FLdPr var_140
  loc_B63C95:  = Me.Text
  loc_B63C9A: FLdRfVar var_154
  loc_B63C9D: FLdPr Me
  loc_B63CA0: VCallAd Control_ID_MailPersTxt
  loc_B63CA3: FStAdFunc var_148
  loc_B63CA6: FLdPr var_148
  loc_B63CA9:  = Me.Text
  loc_B63CAE: FLdRfVar var_10A
  loc_B63CB1: FLdPr Me
  loc_B63CB4: VCallAd Control_ID_JuriPersChk
  loc_B63CB7: FStAdFunc var_150
  loc_B63CBA: FLdPr var_150
  loc_B63CBD:  = Me.Value
  loc_B63CC2: FLdI2 var_10A
  loc_B63CC5: CUI1I2
  loc_B63CC7: ILdRf var_154
  loc_B63CCA: ILdRf var_14C
  loc_B63CCD: ILdRf var_144
  loc_B63CD0: ILdRf var_13C
  loc_B63CD3: ILdRf var_8C
  loc_B63CD6: FLdPr Me
  loc_B63CD9: MemLdRfVar from_stack_1.global_52
  loc_B63CDC: NewIfNullPr clspersonas
  loc_B63CDF: Call clspersonas.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_B63CE4: FFreeStr var_8C = "": var_13C = "": var_144 = "": var_14C = ""
  loc_B63CF1: FFreeAd var_94 = "": var_110 = "": var_124 = "": var_140 = "": var_148 = ""
  loc_B63D00: FLdRfVar var_8C
  loc_B63D03: FLdPr Me
  loc_B63D06: VCallAd Control_ID_CucuPersTxt
  loc_B63D09: FStAdFunc var_94
  loc_B63D0C: FLdPr var_94
  loc_B63D0F:  = Me.Text
  loc_B63D14: ILdRf var_8C
  loc_B63D17: FLdPr Me
  loc_B63D1A: MemLdRfVar from_stack_1.global_52
  loc_B63D1D: NewIfNullPr clspersonas
  loc_B63D20: Call clspersonas.Encontrar(from_stack_1v)
  loc_B63D25: FFree1Str var_8C
  loc_B63D28: FFree1Ad var_94
  loc_B63D2B: Call cmdCancelar_Click()
  loc_B63D30: Branch loc_B63E37
  loc_B63D33: ILdRf var_90
  loc_B63D36: LitStr "btnCancelar"
  loc_B63D39: EqStr
  loc_B63D3B: BranchF loc_B63D46
  loc_B63D3E: Call cmdCancelar_Click()
  loc_B63D43: Branch loc_B63E37
  loc_B63D46: ILdRf var_90
  loc_B63D49: LitStr "btnPrimero"
  loc_B63D4C: EqStr
  loc_B63D4E: BranchF loc_B63D62
  loc_B63D51: FLdPr Me
  loc_B63D54: MemLdRfVar from_stack_1.global_52
  loc_B63D57: NewIfNullPr clspersonas
  loc_B63D5A: Call clspersonas.MoveFirst()
  loc_B63D5F: Branch loc_B63E37
  loc_B63D62: ILdRf var_90
  loc_B63D65: LitStr "btnAnterior"
  loc_B63D68: EqStr
  loc_B63D6A: BranchF loc_B63D7E
  loc_B63D6D: FLdPr Me
  loc_B63D70: MemLdRfVar from_stack_1.global_52
  loc_B63D73: NewIfNullPr clspersonas
  loc_B63D76: Call clspersonas.MovePrevious()
  loc_B63D7B: Branch loc_B63E37
  loc_B63D7E: ILdRf var_90
  loc_B63D81: LitStr "btnSiguiente"
  loc_B63D84: EqStr
  loc_B63D86: BranchF loc_B63D9A
  loc_B63D89: FLdPr Me
  loc_B63D8C: MemLdRfVar from_stack_1.global_52
  loc_B63D8F: NewIfNullPr clspersonas
  loc_B63D92: Call clspersonas.MoveNext()
  loc_B63D97: Branch loc_B63E37
  loc_B63D9A: ILdRf var_90
  loc_B63D9D: LitStr "btnUltimo"
  loc_B63DA0: EqStr
  loc_B63DA2: BranchF loc_B63DB6
  loc_B63DA5: FLdPr Me
  loc_B63DA8: MemLdRfVar from_stack_1.global_52
  loc_B63DAB: NewIfNullPr clspersonas
  loc_B63DAE: Call clspersonas.MoveLast()
  loc_B63DB3: Branch loc_B63E37
  loc_B63DB6: ILdRf var_90
  loc_B63DB9: LitStr "btnFiltrar"
  loc_B63DBC: EqStr
  loc_B63DBE: BranchF loc_B63DC4
  loc_B63DC1: Branch loc_B63E37
  loc_B63DC4: ILdRf var_90
  loc_B63DC7: LitStr "btnBuscar"
  loc_B63DCA: EqStr
  loc_B63DCC: BranchF loc_B63DD2
  loc_B63DCF: Branch loc_B63E37
  loc_B63DD2: ILdRf var_90
  loc_B63DD5: LitStr "btnImprimir"
  loc_B63DD8: EqStr
  loc_B63DDA: BranchF loc_B63DE0
  loc_B63DDD: Branch loc_B63E37
  loc_B63DE0: ILdRf var_90
  loc_B63DE3: LitStr "btnAyuda"
  loc_B63DE6: EqStr
  loc_B63DE8: BranchF loc_B63E17
  loc_B63DEB: LitVar_Missing var_D8
  loc_B63DEE: LitVar_Missing var_C8
  loc_B63DF1: LitVar_Missing var_B8
  loc_B63DF4: LitI4 0
  loc_B63DF9: LitVarStr var_120, "Opcion no disponible en esta versión."
  loc_B63DFE: FStVarCopyObj var_A8
  loc_B63E01: FLdRfVar var_A8
  loc_B63E04: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B63E09: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_B63E14: Branch loc_B63E37
  loc_B63E17: ILdRf var_90
  loc_B63E1A: LitStr "btnSalir"
  loc_B63E1D: EqStr
  loc_B63E1F: BranchF loc_B63E37
  loc_B63E22: ILdRf Me
  loc_B63E25: FStAdNoPop
  loc_B63E29: ImpAdLdRf MemVar_C44F9C
  loc_B63E2C: NewIfNullPr Me
  loc_B63E2F: Me.Global.Unload from_stack_1
  loc_B63E34: FFree1Ad var_94
  loc_B63E37: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9CAC08
  'Data Table: 4C1694
  loc_9CAB34: LitI2_Byte 0
  loc_9CAB36: CUI1I2
  loc_9CAB38: FLdPr Me
  loc_9CAB3B: MemStUI1
  loc_9CAB3F: ILdRf Me
  loc_9CAB42: CastAd
  loc_9CAB45: FStAdFunc var_88
  loc_9CAB48: FLdRfVar var_88
  loc_9CAB4B: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9CAB50: FFree1Ad var_88
  loc_9CAB53: LitI4 0
  loc_9CAB58: LitI4 0
  loc_9CAB5D: FLdRfVar var_8C
  loc_9CAB60: Redim
  loc_9CAB6A: FLdPr Me
  loc_9CAB6D: VCallAd Control_ID_dgdABMS
  loc_9CAB70: CVarAd
  loc_9CAB74: ParmAry1St
  loc_9CAB7A: FLdRfVar var_8C
  loc_9CAB7D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9CAB82: FLdRfVar var_8C
  loc_9CAB85: Erase
  loc_9CAB86: FLdPr Me
  loc_9CAB89: MemLdRfVar from_stack_1.global_52
  loc_9CAB8C: NewIfNullAd
  loc_9CAB8F: FStAd var_A0 
  loc_9CAB93: FLdRfVar var_A0
  loc_9CAB96: CVarRef
  loc_9CAB9B: ILdRf Me
  loc_9CAB9E: CastAd
  loc_9CABA1: FStAdFunc var_88
  loc_9CABA4: FLdRfVar var_88
  loc_9CABA7: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9CABAC: ILdRf var_A0
  loc_9CABAF: CastAd
  loc_9CABB2: FLdPr Me
  loc_9CABB5: MemStAdFunc
  loc_9CABB9: FFreeAd var_88 = ""
  loc_9CABC0: ILdRf Me
  loc_9CABC3: CastAd
  loc_9CABC6: FStAdFunc var_88
  loc_9CABC9: FLdRfVar var_88
  loc_9CABCC: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9CABD1: FFree1Ad var_88
  loc_9CABD4: FLdPr Me
  loc_9CABD7: VCallAd Control_ID_dgdABMS
  loc_9CABDA: FStAdFunc var_A0
  loc_9CABDD: LitI4 0
  loc_9CABE2: FStStrCopy var_B4
  loc_9CABE5: FLdRfVar var_B4
  loc_9CABE8: FLdPr Me
  loc_9CABEB: MemLdStr global_68
  loc_9CABEE: FLdZeroAd var_A0
  loc_9CABF1: FStAdFunc var_88
  loc_9CABF4: FLdRfVar var_88
  loc_9CABF7: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9CABFC: FFree1Str var_B4
  loc_9CABFF: FFreeAd var_88 = ""
  loc_9CAC06: ExitProcHresult
End Sub

Private Sub Form_Load() 'A18960
  'Data Table: 4C1694
  loc_A187E8: LitI2_Byte 0
  loc_A187EA: CR8I2
  loc_A187EB: PopFPR4
  loc_A187EC: FLdPr Me
  loc_A187EF: Me.Left = from_stack_1s
  loc_A187F4: LitI2_Byte 0
  loc_A187F6: CR8I2
  loc_A187F7: PopFPR4
  loc_A187F8: FLdPr Me
  loc_A187FB: Me.Top = from_stack_1s
  loc_A18800: LitStr vbNullString
  loc_A18803: FLdPr Me
  loc_A18806: MemStStrCopy
  loc_A1880A: LitI2_Byte &HFF
  loc_A1880C: FLdPr Me
  loc_A1880F: VCallAd Control_ID_FactProvCbo
  loc_A18812: FStAdFunc var_88
  loc_A18815: FLdRfVar var_88
  loc_A18818: ImpAdCallFPR4 Proc_261_56_9A8F4C(, )
  loc_A1881D: FFree1Ad var_88
  loc_A18820: LitStr "SELECT persona.*, IF(persona.ModiUsua!='',persona.ModiUsua,persona.AltaUsua) CodiUsua"
  loc_A18823: LitStr ", IFNULL(FactProv,'') FactProv, IFNULL(FantProv,'') FantProv, IF(proveedor.CucuPers IS NULL,FALSE,TRUE) EsProveedor"
  loc_A18826: ConcatStr
  loc_A18827: FStStrNoPop var_8C
  loc_A1882A: LitStr ", IFNULL(DofiProv,'') DofiProv, IFNULL(proveedor.IdDivte,'0') IdDivte, IFNULL(DetaDivte,'') DetaDivte"
  loc_A1882D: ConcatStr
  loc_A1882E: FStStrNoPop var_90
  loc_A18831: LitStr " FROM infogov.persona"
  loc_A18834: ConcatStr
  loc_A18835: FStStrNoPop var_94
  loc_A18838: LitStr " LEFT JOIN proveedor ON proveedor.CucuPers = persona.CucuPers"
  loc_A1883B: ConcatStr
  loc_A1883C: FStStrNoPop var_98
  loc_A1883F: LitStr " LEFT JOIN divterritorial dt ON dt.IdDivte = proveedor.IdDivte"
  loc_A18842: ConcatStr
  loc_A18843: FStStrNoPop var_9C
  loc_A18846: LitStr " WHERE CcokPers = 1"
  loc_A18849: ConcatStr
  loc_A1884A: FStStrNoPop var_A0
  loc_A1884D: FLdPr Me
  loc_A18850: MemStStrCopy
  loc_A18854: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A18863: LitStr " ORDER BY persona.CucuPers;"
  loc_A18866: FLdPr Me
  loc_A18869: MemStStrCopy
  loc_A1886D: FLdPr Me
  loc_A18870: MemLdStr global_72
  loc_A18873: FLdPr Me
  loc_A18876: MemLdStr global_76
  loc_A18879: ConcatStr
  loc_A1887A: FStStrNoPop var_8C
  loc_A1887D: FLdPr Me
  loc_A18880: MemLdRfVar from_stack_1.global_52
  loc_A18883: NewIfNullPr clspersonas
  loc_A18886: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A1888B: FFree1Str var_8C
  loc_A1888E: LitVarI2 var_B0, 0
  loc_A18893: PopAdLdVar
  loc_A18894: LitStr "Nombre y Apellido"
  loc_A18897: FLdPr Me
  loc_A1889A: VCallAd Control_ID_FiltroCbo
  loc_A1889D: FStAdFunc var_88
  loc_A188A0: FLdPr var_88
  loc_A188A3: Me.AddItem from_stack_1, from_stack_2
  loc_A188A8: FFree1Ad var_88
  loc_A188AB: LitVarI2 var_B0, 1
  loc_A188B0: PopAdLdVar
  loc_A188B1: LitStr "CUIT"
  loc_A188B4: FLdPr Me
  loc_A188B7: VCallAd Control_ID_FiltroCbo
  loc_A188BA: FStAdFunc var_88
  loc_A188BD: FLdPr var_88
  loc_A188C0: Me.AddItem from_stack_1, from_stack_2
  loc_A188C5: FFree1Ad var_88
  loc_A188C8: LitVarI2 var_B0, 2
  loc_A188CD: PopAdLdVar
  loc_A188CE: LitStr "Correo electrónico"
  loc_A188D1: FLdPr Me
  loc_A188D4: VCallAd Control_ID_FiltroCbo
  loc_A188D7: FStAdFunc var_88
  loc_A188DA: FLdPr var_88
  loc_A188DD: Me.AddItem from_stack_1, from_stack_2
  loc_A188E2: FFree1Ad var_88
  loc_A188E5: LitI2_Byte 0
  loc_A188E7: FLdPr Me
  loc_A188EA: VCallAd Control_ID_FiltroCbo
  loc_A188ED: FStAdFunc var_88
  loc_A188F0: FLdPr var_88
  loc_A188F3: Me.ListIndex = from_stack_1
  loc_A188F8: FFree1Ad var_88
  loc_A188FB: Call cmdCancelar_Click()
  loc_A18900: LitI4 0
  loc_A18905: LitI4 1
  loc_A1890A: FLdRfVar var_B4
  loc_A1890D: Redim
  loc_A18917: FLdPr Me
  loc_A1891A: MemLdRfVar from_stack_1.global_52
  loc_A1891D: NewIfNullAd
  loc_A18920: FStAd var_88 
  loc_A18924: FLdRfVar var_88
  loc_A18927: CVarRef
  loc_A1892C: ParmAry1St
  loc_A18932: FLdPr Me
  loc_A18935: VCallAd Control_ID_dgdABMS
  loc_A18938: CVarAd
  loc_A1893C: ParmAry1St
  loc_A18942: FLdRfVar var_B4
  loc_A18945: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A1894A: ILdRf var_88
  loc_A1894D: CastAd
  loc_A18950: FLdPr Me
  loc_A18953: MemStAdFunc
  loc_A18957: FLdRfVar var_B4
  loc_A1895A: Erase
  loc_A1895B: FFree1Ad var_88
  loc_A1895E: ExitProcHresult
End Sub

Private Sub Form_Activate() '9981FC
  'Data Table: 4C1694
  loc_9981A0: FLdRfVar var_C2
  loc_9981A3: FLdRfVar var_C0
  loc_9981A6: LitVarI2 var_B8, 1
  loc_9981AB: FLdPr Me
  loc_9981AE: VCallAd Control_ID_tlbABMS
  loc_9981B1: FStAdFunc var_88
  loc_9981B4: FLdPr var_88
  loc_9981B7: LateIdLdVar var_98 DispID_3 0
  loc_9981BE: CastAdVar Me
  loc_9981C2: FStAdFunc var_BC
  loc_9981C5: FLdPr var_BC
  loc_9981C8:  = Me.Buttons.ControlDefault
  loc_9981CD: FLdPr var_C0
  loc_9981D0:  = Me.Enabled
  loc_9981D5: FLdI2 var_C2
  loc_9981D8: FFreeAd var_88 = "": var_BC = ""
  loc_9981E1: FFreeVar var_98 = ""
  loc_9981E8: BranchF loc_9981F9
  loc_9981EB: FLdPr Me
  loc_9981EE: MemLdRfVar from_stack_1.global_52
  loc_9981F1: NewIfNullPr clspersonas
  loc_9981F4: Call clspersonas.Requery()
  loc_9981F9: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949D98
  'Data Table: 4C1694
  loc_949D84: ILdI2 KeyAscii
  loc_949D87: CI4UI1
  loc_949D88: LitI4 &HD
  loc_949D8D: EqI4
  loc_949D8E: BranchF loc_949D96
  loc_949D91: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949D96: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '956074
  'Data Table: 4C1694
  loc_95605C: ILdI2 KeyCode
  loc_95605F: ILdRf Me
  loc_956062: CastAd
  loc_956065: FStAdFunc var_88
  loc_956068: FLdRfVar var_88
  loc_95606B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_956070: FFree1Ad var_88
  loc_956073: ExitProcHresult
End Sub

Private Sub GenerarCMD_Click() '97CCB0
  'Data Table: 4C1694
  loc_97CC7C: LitStr vbNullString
  loc_97CC7F: ImpAdLdRf MemVar_C3D91C
  loc_97CC82: NewIfNullPr dlgSugerirCuil
  loc_97CC85: VCallAd Control_ID_CuitCuilLbl
  loc_97CC88: FStAdFunc var_88
  loc_97CC8B: FLdPr var_88
  loc_97CC8E: dlgSugerirCuil.Label.Caption = from_stack_1
  loc_97CC93: FFree1Ad var_88
  loc_97CC96: LitVar_Missing var_A8
  loc_97CC99: PopAdLdVar
  loc_97CC9A: LitVarI4
  loc_97CCA2: PopAdLdVar
  loc_97CCA3: ImpAdLdRf MemVar_C3D91C
  loc_97CCA6: NewIfNullPr dlgSugerirCuil
  loc_97CCA9: dlgSugerirCuil.Show from_stack_1, from_stack_2
  loc_97CCAE: ExitProcHresult
End Sub

Private Function Proc_141_35_A5CA20() 'A5CA20
  'Data Table: 4C1694
  loc_A5C730: FLdRfVar var_88
  loc_A5C733: NewIfNullAd
  loc_A5C736: FStAd var_90 
  loc_A5C73A: LitStr "SELECT IdDivte, DetaDivte FROM divterritorial ORDER BY OrdeDivte, DetaDivte;"
  loc_A5C73D: FLdPr var_90
  loc_A5C740: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5C745: FLdRfVar var_94
  loc_A5C748: FLdPr var_90
  loc_A5C74B: from_stack_1 = clsbase.RecordCount
  loc_A5C750: ILdRf var_94
  loc_A5C753: LitI4 0
  loc_A5C758: GtI4
  loc_A5C759: BranchF loc_A5C865
  loc_A5C75C: FLdPr var_90
  loc_A5C75F: Call clsbase.MoveFirst()
  loc_A5C764: FLdPr Me
  loc_A5C767: VCallAd Control_ID_DetaDivteCbo
  loc_A5C76A: FStAdFunc var_98
  loc_A5C76D: FLdPr var_98
  loc_A5C770: Me.Clear
  loc_A5C775: FFree1Ad var_98
  loc_A5C778: LitVar_Missing var_D4
  loc_A5C77B: PopAdLdVar
  loc_A5C77C: FLdRfVar var_C0
  loc_A5C77F: FLdRfVar var_B0
  loc_A5C782: LitVarStr var_AC, "DetaDivte"
  loc_A5C787: PopAdLdVar
  loc_A5C788: FLdRfVar var_9C
  loc_A5C78B: FLdRfVar var_98
  loc_A5C78E: FLdPr var_90
  loc_A5C791: from_stack_1v = clsbase.RsFrmGet()
  loc_A5C796: FLdPr var_98
  loc_A5C799:  = Me.Fields
  loc_A5C79E: FLdPr var_9C
  loc_A5C7A1: from_stack_2 = Me.Item(from_stack_1)
  loc_A5C7A6: FLdPr var_B0
  loc_A5C7A9:  = Me.Value
  loc_A5C7AE: FLdRfVar var_C0
  loc_A5C7B1: CStrVarTmp
  loc_A5C7B2: FStStrNoPop var_C4
  loc_A5C7B5: FLdPr Me
  loc_A5C7B8: VCallAd Control_ID_DetaDivteCbo
  loc_A5C7BB: FStAdFunc var_D8
  loc_A5C7BE: FLdPr var_D8
  loc_A5C7C1: Me.AddItem from_stack_1, from_stack_2
  loc_A5C7C6: FFree1Str var_C4
  loc_A5C7C9: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_A5C7D4: FFree1Var var_C0 = ""
  loc_A5C7D7: FLdRfVar var_C0
  loc_A5C7DA: FLdRfVar var_B0
  loc_A5C7DD: LitVarStr var_AC, "IdDivte"
  loc_A5C7E2: PopAdLdVar
  loc_A5C7E3: FLdRfVar var_9C
  loc_A5C7E6: FLdRfVar var_98
  loc_A5C7E9: FLdPr var_90
  loc_A5C7EC: from_stack_1v = clsbase.RsFrmGet()
  loc_A5C7F1: FLdPr var_98
  loc_A5C7F4:  = Me.Fields
  loc_A5C7F9: FLdPr var_9C
  loc_A5C7FC: from_stack_2 = Me.Item(from_stack_1)
  loc_A5C801: FLdPr var_B0
  loc_A5C804:  = Me.Value
  loc_A5C809: FLdRfVar var_C0
  loc_A5C80C: CI4Var
  loc_A5C80E: FLdRfVar var_DA
  loc_A5C811: FLdPr Me
  loc_A5C814: VCallAd Control_ID_DetaDivteCbo
  loc_A5C817: FStAdFunc var_D8
  loc_A5C81A: FLdPr var_D8
  loc_A5C81D:  = Me.NewIndex
  loc_A5C822: FLdI2 var_DA
  loc_A5C825: FLdPr Me
  loc_A5C828: VCallAd Control_ID_DetaDivteCbo
  loc_A5C82B: FStAdFunc var_E0
  loc_A5C82E: FLdPr var_E0
  loc_A5C831: Me.ItemData = from_stack_1
  loc_A5C836: FFreeAd var_98 = "": var_9C = "": var_D8 = "": var_B0 = ""
  loc_A5C843: FFree1Var var_C0 = ""
  loc_A5C846: LitI2_Byte 1
  loc_A5C848: PopTmpLdAd2 var_DA
  loc_A5C84B: FLdPr var_90
  loc_A5C84E: Call clsbase.Move(from_stack_1v)
  loc_A5C853: FLdRfVar var_DA
  loc_A5C856: FLdPr var_90
  loc_A5C859: from_stack_1 = clsbase.EOF
  loc_A5C85E: FLdI2 var_DA
  loc_A5C861: NotI4
  loc_A5C862: BranchT loc_A5C778
  loc_A5C865: LitNothing
  loc_A5C867: FStAd var_90 
  loc_A5C86B: FLdRfVar var_94
  loc_A5C86E: FLdPr Me
  loc_A5C871: MemLdRfVar from_stack_1.global_52
  loc_A5C874: NewIfNullPr clspersonas
  loc_A5C877: from_stack_1 = clspersonas.AbsolutePosition
  loc_A5C87C: ILdRf var_94
  loc_A5C87F: LitI4 -1
  loc_A5C884: EqI4
  loc_A5C885: BranchF loc_A5C8A9
  loc_A5C888: LitI2_Byte 1
  loc_A5C88A: FLdPr Me
  loc_A5C88D: MemStI2 global_80
  loc_A5C890: LitI2_Byte 0
  loc_A5C892: FLdPr Me
  loc_A5C895: VCallAd Control_ID_DetaDivteCbo
  loc_A5C898: FStAdFunc var_98
  loc_A5C89B: FLdPr var_98
  loc_A5C89E: Me.ListIndex = from_stack_1
  loc_A5C8A3: FFree1Ad var_98
  loc_A5C8A6: Branch loc_A5CA1C
  loc_A5C8A9: FLdRfVar var_C0
  loc_A5C8AC: FLdRfVar var_B0
  loc_A5C8AF: LitVarStr var_AC, "IdDivte"
  loc_A5C8B4: PopAdLdVar
  loc_A5C8B5: FLdRfVar var_9C
  loc_A5C8B8: FLdRfVar var_98
  loc_A5C8BB: FLdPr Me
  loc_A5C8BE: MemLdRfVar from_stack_1.global_52
  loc_A5C8C1: NewIfNullPr clspersonas
  loc_A5C8C4: from_stack_1v = clspersonas.RsFrmGet()
  loc_A5C8C9: FLdPr var_98
  loc_A5C8CC:  = Me.Fields
  loc_A5C8D1: FLdPr var_9C
  loc_A5C8D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A5C8D9: FLdPr var_B0
  loc_A5C8DC:  = Me.Value
  loc_A5C8E1: FLdRfVar var_C0
  loc_A5C8E4: FnCIntVar
  loc_A5C8E6: LitI2_Byte 1
  loc_A5C8E8: LeI2
  loc_A5C8E9: FFreeAd var_98 = "": var_9C = ""
  loc_A5C8F2: FFree1Var var_C0 = ""
  loc_A5C8F5: BranchF loc_A5C919
  loc_A5C8F8: LitI2_Byte 1
  loc_A5C8FA: FLdPr Me
  loc_A5C8FD: MemStI2 global_80
  loc_A5C900: LitI2_Byte 0
  loc_A5C902: FLdPr Me
  loc_A5C905: VCallAd Control_ID_DetaDivteCbo
  loc_A5C908: FStAdFunc var_98
  loc_A5C90B: FLdPr var_98
  loc_A5C90E: Me.ListIndex = from_stack_1
  loc_A5C913: FFree1Ad var_98
  loc_A5C916: Branch loc_A5CA1C
  loc_A5C919: FLdRfVar var_C0
  loc_A5C91C: FLdRfVar var_B0
  loc_A5C91F: LitVarStr var_AC, "IdDivte"
  loc_A5C924: PopAdLdVar
  loc_A5C925: FLdRfVar var_9C
  loc_A5C928: FLdRfVar var_98
  loc_A5C92B: FLdPr Me
  loc_A5C92E: MemLdRfVar from_stack_1.global_52
  loc_A5C931: NewIfNullPr clspersonas
  loc_A5C934: from_stack_1v = clspersonas.RsFrmGet()
  loc_A5C939: FLdPr var_98
  loc_A5C93C:  = Me.Fields
  loc_A5C941: FLdPr var_9C
  loc_A5C944: from_stack_2 = Me.Item(from_stack_1)
  loc_A5C949: FLdPr var_B0
  loc_A5C94C:  = Me.Value
  loc_A5C951: FLdRfVar var_C0
  loc_A5C954: FnCIntVar
  loc_A5C956: FLdPr Me
  loc_A5C959: MemStI2 global_80
  loc_A5C95C: FFreeAd var_98 = "": var_9C = ""
  loc_A5C965: FFree1Var var_C0 = ""
  loc_A5C968: LitI2_Byte 0
  loc_A5C96A: FLdRfVar var_8A
  loc_A5C96D: FLdRfVar var_DA
  loc_A5C970: FLdPr Me
  loc_A5C973: VCallAd Control_ID_DetaDivteCbo
  loc_A5C976: FStAdFunc var_98
  loc_A5C979: FLdPr var_98
  loc_A5C97C:  = Me.ListCount
  loc_A5C981: FLdI2 var_DA
  loc_A5C984: FFree1Ad var_98
  loc_A5C987: ForI2 var_E4
  loc_A5C98D: FLdI2 var_8A
  loc_A5C990: FLdPr Me
  loc_A5C993: VCallAd Control_ID_DetaDivteCbo
  loc_A5C996: FStAdFunc var_98
  loc_A5C999: FLdPr var_98
  loc_A5C99C: Me.ListIndex = from_stack_1
  loc_A5C9A1: FFree1Ad var_98
  loc_A5C9A4: FLdRfVar var_C4
  loc_A5C9A7: FLdPr Me
  loc_A5C9AA: VCallAd Control_ID_DetaDivteCbo
  loc_A5C9AD: FStAdFunc var_98
  loc_A5C9B0: FLdPr var_98
  loc_A5C9B3:  = Me.Text
  loc_A5C9B8: FLdZeroAd var_C4
  loc_A5C9BB: CVarStr var_F4
  loc_A5C9BE: HardType
  loc_A5C9BF: FLdRfVar var_C0
  loc_A5C9C2: FLdRfVar var_D8
  loc_A5C9C5: LitVarStr var_AC, "DetaDivte"
  loc_A5C9CA: PopAdLdVar
  loc_A5C9CB: FLdRfVar var_B0
  loc_A5C9CE: FLdRfVar var_9C
  loc_A5C9D1: FLdPr Me
  loc_A5C9D4: MemLdRfVar from_stack_1.global_52
  loc_A5C9D7: NewIfNullPr clspersonas
  loc_A5C9DA: from_stack_1v = clspersonas.RsFrmGet()
  loc_A5C9DF: FLdPr var_9C
  loc_A5C9E2:  = Me.Fields
  loc_A5C9E7: FLdPr var_B0
  loc_A5C9EA: from_stack_2 = Me.Item(from_stack_1)
  loc_A5C9EF: FLdPr var_D8
  loc_A5C9F2:  = Me.Value
  loc_A5C9F7: FLdRfVar var_C0
  loc_A5C9FA: EqVarBool
  loc_A5C9FC: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_A5CA07: FFreeVar var_F4 = ""
  loc_A5CA0E: BranchF loc_A5CA14
  loc_A5CA11: Branch loc_A5CA1C
  loc_A5CA14: FLdRfVar var_8A
  loc_A5CA17: NextI2 var_E4, loc_A5C98D
  loc_A5CA1C: ExitProcHresult
  loc_A5CA1D: HardType
  loc_A5CA1E: NewIfNullAd
End Function
