VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmTranComeABM
  Caption = "Transferencias de Comercio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 348
  ClientWidth = 11400
  ClientHeight = 9084
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 20
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 22
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
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 375
      TabIndex = 21
      OleObjectBlob = "frmTranComeABM.frx":0000
    End
  End
  Begin VB.Frame Frame4
    Caption = "DATOS TRANSFERENCIA"
    Left = 105
    Top = 6840
    Width = 14100
    Height = 2220
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
    Begin VB.TextBox ObseTrcoTxt
      ForeColor = &HFF0000&
      Left = 3315
      Top = 1410
      Width = 8835
      Height = 660
      TabIndex = 3
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 200
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
    Begin VB.TextBox ExpeTrcoTxt
      ForeColor = &HFF0000&
      Left = 3315
      Top = 915
      Width = 3420
      Height = 420
      TabIndex = 2
      MaxLength = 15
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Número de Expediente del Inmueble"
    End
    Begin MSMask.MaskEdBox FeesTrcoMsk
      Left = 3330
      Top = 480
      Width = 1455
      Height = 345
      TabIndex = 1
      OleObjectBlob = "frmTranComeABM.frx":0088
    End
    Begin VB.Label Label8
      Caption = "Observación:"
      Left = 1845
      Top = 1500
      Width = 1380
      Height = 300
      TabIndex = 13
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
      Caption = "Expediente:"
      Left = 1965
      Top = 975
      Width = 1260
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
    Begin VB.Label Label3
      Caption = "Fecha:"
      Left = 2490
      Top = 495
      Width = 735
      Height = 300
      TabIndex = 11
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
  Begin VB.Frame Frame2
    Caption = "VENDEDOR"
    Left = 105
    Top = 4440
    Width = 14100
    Height = 1065
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Label Label4
      Caption = "Cuenta:"
      Left = 120
      Top = 480
      Width = 840
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
    Begin VB.Label CodiComeLbl
      Caption = "CodiDifuLbl"
      ForeColor = &HFF0000&
      Left = 1080
      Top = 480
      Width = 1230
      Height = 300
      TabIndex = 18
      AutoSize = -1  'True
      DataField = "CodiCome"
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
      Left = 6240
      Top = 480
      Width = 1965
      Height = 300
      TabIndex = 17
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
      Caption = "CUIT/CUIL:"
      Left = 2640
      Top = 480
      Width = 1230
      Height = 300
      TabIndex = 16
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
    Begin VB.Label CUITVendedorLbl
      Caption = "CUITVendedorLbl"
      ForeColor = &HFF0000&
      Left = 3960
      Top = 480
      Width = 2100
      Height = 345
      TabIndex = 14
      AutoSize = -1  'True
      WordWrap = -1  'True
      DataField = "CucuPers"
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
    Begin VB.Label DetaVendedorLbl
      Caption = "DetaVendedorLbl"
      ForeColor = &HFF0000&
      Left = 8280
      Top = 480
      Width = 5715
      Height = 345
      TabIndex = 9
      WordWrap = -1  'True
      DataField = "DetaPers"
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
  Begin VB.Frame Frame1
    Caption = "COMPRADOR"
    Left = 120
    Top = 5640
    Width = 14100
    Height = 945
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton CreaPersonaCmd
      Caption = "Crea Persona"
      Left = 12840
      Top = 330
      Width = 1095
      Height = 540
      TabIndex = 4
      Picture = "frmTranComeABM.frx":0138
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CucuPersTxt
      ForeColor = &HFF0000&
      Left = 3360
      Top = 345
      Width = 2025
      Height = 420
      TabIndex = 0
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
    Begin VB.Label Label9
      Caption = "CUIT/CUIL:"
      Left = 2040
      Top = 405
      Width = 1230
      Height = 300
      TabIndex = 7
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
    Begin VB.Label DetaApeNomLbl
      ForeColor = &HFF0000&
      Left = 6000
      Top = 360
      Width = 6495
      Height = 345
      TabIndex = 6
      WordWrap = -1  'True
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1800
    Width = 14100
    Height = 2505
    TabIndex = 15
    OleObjectBlob = "frmTranComeABM.frx":066A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmTranComeABM.frx":0936
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 11400
    Height = 636
    TabIndex = 23
    OleObjectBlob = "frmTranComeABM.frx":84B4
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 24
      TabStop = 0   'False
      Picture = "frmTranComeABM.frx":8A10
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmTranComeABM"


Private Sub CreaPersonaCmd_Click() 'AAE0EC
  'Data Table: 4A5A04
  loc_AAE018: FLdRfVar var_8C
  loc_AAE01B: FLdPr Me
  loc_AAE01E: VCallAd Control_ID_CucuPersTxt
  loc_AAE021: FStAdFunc var_88
  loc_AAE024: FLdPr var_88
  loc_AAE027:  = Me.Text
  loc_AAE02C: ILdRf var_8C
  loc_AAE02F: LitStr vbNullString
  loc_AAE032: NeStr
  loc_AAE034: FFree1Str var_8C
  loc_AAE037: FFree1Ad var_88
  loc_AAE03A: BranchF loc_AAE072
  loc_AAE03D: FLdRfVar var_8C
  loc_AAE040: FLdPr Me
  loc_AAE043: VCallAd Control_ID_CucuPersTxt
  loc_AAE046: FStAdFunc var_88
  loc_AAE049: FLdPr var_88
  loc_AAE04C:  = Me.Text
  loc_AAE051: ILdRf var_8C
  loc_AAE054: ImpAdLdRf MemVar_D94A10
  loc_AAE057: NewIfNullPr dlgCreaPersona
  loc_AAE05A: VCallAd Control_ID_CucuPersTxt
  loc_AAE05D: FStAdFunc var_90
  loc_AAE060: FLdPr var_90
  loc_AAE063: dlgCreaPersona.TextBox.Text = from_stack_1
  loc_AAE068: FFree1Str var_8C
  loc_AAE06B: FFreeAd var_88 = ""
  loc_AAE072: LitI2_Byte &HFF
  loc_AAE074: ImpAdLdRf MemVar_D94A10
  loc_AAE077: NewIfNullPr dlgCreaPersona
  loc_AAE07A: Call dlgCreaPersona.doValidaCuilPut(from_stack_1v)
  loc_AAE07F: LitVar_Missing var_B0
  loc_AAE082: PopAdLdVar
  loc_AAE083: LitVarI4
  loc_AAE08B: PopAdLdVar
  loc_AAE08C: ImpAdLdRf MemVar_D94A10
  loc_AAE08F: NewIfNullPr dlgCreaPersona
  loc_AAE092: dlgCreaPersona.Show from_stack_1, from_stack_2
  loc_AAE097: FLdRfVar var_B2
  loc_AAE09A: ImpAdLdRf MemVar_D94A10
  loc_AAE09D: NewIfNullPr dlgCreaPersona
  loc_AAE0A0: from_stack_1v = dlgCreaPersona.boAceptarGet()
  loc_AAE0A5: FLdI2 var_B2
  loc_AAE0A8: LitI2_Byte &HFF
  loc_AAE0AA: EqI2
  loc_AAE0AB: BranchF loc_AAE0EA
  loc_AAE0AE: FLdRfVar var_8C
  loc_AAE0B1: ImpAdLdRf MemVar_D94A10
  loc_AAE0B4: NewIfNullPr dlgCreaPersona
  loc_AAE0B7: from_stack_1v = dlgCreaPersona.sCucuPersGet()
  loc_AAE0BC: ILdRf var_8C
  loc_AAE0BF: FLdPr Me
  loc_AAE0C2: VCallAd Control_ID_DelrPersTxt
  loc_AAE0C5: FStAdFunc var_88
  loc_AAE0C8: FLdPr var_88
  loc_AAE0CB: dlgCreaPersona.TextBox.Text = from_stack_1
  loc_AAE0D0: FFree1Str var_8C
  loc_AAE0D3: FFree1Ad var_88
  loc_AAE0D6: FLdPr Me
  loc_AAE0D9: VCallAd Control_ID_CucuPersTxt
  loc_AAE0DC: FStAdFunc var_88
  loc_AAE0DF: FLdPr var_88
  loc_AAE0E2: Me.SetFocus
  loc_AAE0E7: FFree1Ad var_88
  loc_AAE0EA: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C45C8
  'Data Table: 4A5A04
  loc_9C45B4: FLdPr Me
  loc_9C45B7: VCallAd Control_ID_FiltroMsk
  loc_9C45BA: CVarAd
  loc_9C45BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C45C3: FFree1Var var_94 = ""
  loc_9C45C6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B00564
  'Data Table: 4A5A04
  loc_B00384: FLdPr Me
  loc_B00387: VCallAd Control_ID_FiltroMsk
  loc_B0038A: FStAdFunc var_88
  loc_B0038D: FLdPr var_88
  loc_B00390: LateIdLdVar var_98 DispID_20 0
  loc_B00397: CStrVarTmp
  loc_B00398: CVarStr var_A8
  loc_B0039B: FLdRfVar var_B8
  loc_B0039E: ImpAdCallFPR4  = Trim()
  loc_B003A3: FLdRfVar var_B8
  loc_B003A6: LitVarStr var_C8, vbNullString
  loc_B003AB: HardType
  loc_B003AC: NeVarBool
  loc_B003AE: FFree1Ad var_88
  loc_B003B1: FFreeVar var_98 = "": var_A8 = ""
  loc_B003BA: BranchF loc_B00518
  loc_B003BD: FLdRfVar var_DA
  loc_B003C0: FLdPr Me
  loc_B003C3: VCallAd Control_ID_FiltroCbo
  loc_B003C6: FStAdFunc var_88
  loc_B003C9: FLdPr var_88
  loc_B003CC:  = Me.ListIndex
  loc_B003D1: FLdI2 var_DA
  loc_B003D4: LitI2_Byte 0
  loc_B003D6: EqI2
  loc_B003D7: FFree1Ad var_88
  loc_B003DA: BranchF loc_B00466
  loc_B003DD: LitStr "CodiCome >= "
  loc_B003E0: FLdPr Me
  loc_B003E3: VCallAd Control_ID_FiltroMsk
  loc_B003E6: FStAdFunc var_88
  loc_B003E9: FLdPr var_88
  loc_B003EC: LateIdLdVar var_98 DispID_22 0
  loc_B003F3: CStrVarTmp
  loc_B003F4: FStStrNoPop var_E0
  loc_B003F7: ConcatStr
  loc_B003F8: PopTmpLdAdStr
  loc_B003FC: FLdPr Me
  loc_B003FF: MemLdRfVar from_stack_1.global_52
  loc_B00402: NewIfNullPr clstrancome
  loc_B00405: Call clstrancome.Filter(from_stack_1v)
  loc_B0040A: FFreeStr var_E0 = ""
  loc_B00411: FFree1Ad var_88
  loc_B00414: FFree1Var var_98 = ""
  loc_B00417: LitStr "CodiCome"
  loc_B0041A: FStStrCopy var_E0
  loc_B0041D: FLdRfVar var_E0
  loc_B00420: FLdPr Me
  loc_B00423: MemLdRfVar from_stack_1.global_52
  loc_B00426: NewIfNullPr clstrancome
  loc_B00429: Call clstrancome.Sort(from_stack_1v)
  loc_B0042E: FFree1Str var_E0
  loc_B00431: LitStr "Código de comercio que es mayor o igual a: "
  loc_B00434: FLdPr Me
  loc_B00437: VCallAd Control_ID_FiltroMsk
  loc_B0043A: FStAdFunc var_88
  loc_B0043D: FLdPr var_88
  loc_B00440: LateIdLdVar var_98 DispID_22 0
  loc_B00447: CStrVarTmp
  loc_B00448: FStStrNoPop var_E0
  loc_B0044B: ConcatStr
  loc_B0044C: FStStrNoPop var_E4
  loc_B0044F: FLdPr Me
  loc_B00452: MemStStrCopy
  loc_B00456: FFreeStr var_E0 = ""
  loc_B0045D: FFree1Ad var_88
  loc_B00460: FFree1Var var_98 = ""
  loc_B00463: Branch loc_B00515
  loc_B00466: FLdRfVar var_DA
  loc_B00469: FLdPr Me
  loc_B0046C: VCallAd Control_ID_FiltroCbo
  loc_B0046F: FStAdFunc var_88
  loc_B00472: FLdPr var_88
  loc_B00475:  = Me.ListIndex
  loc_B0047A: FLdI2 var_DA
  loc_B0047D: LitI2_Byte 1
  loc_B0047F: EqI2
  loc_B00480: FFree1Ad var_88
  loc_B00483: BranchF loc_B00515
  loc_B00486: LitStr "DetaPers LIKE '" & Chr(37)
  loc_B00489: FLdPr Me
  loc_B0048C: VCallAd Control_ID_FiltroMsk
  loc_B0048F: FStAdFunc var_88
  loc_B00492: FLdPr var_88
  loc_B00495: LateIdLdVar var_98 DispID_22 0
  loc_B0049C: CStrVarTmp
  loc_B0049D: FStStrNoPop var_E0
  loc_B004A0: ConcatStr
  loc_B004A1: FStStrNoPop var_E4
  loc_B004A4: LitStr Chr(37) & "'"
  loc_B004A7: ConcatStr
  loc_B004A8: PopTmpLdAdStr
  loc_B004AC: FLdPr Me
  loc_B004AF: MemLdRfVar from_stack_1.global_52
  loc_B004B2: NewIfNullPr clstrancome
  loc_B004B5: Call clstrancome.Filter(from_stack_1v)
  loc_B004BA: FFreeStr var_E0 = "": var_E4 = ""
  loc_B004C3: FFree1Ad var_88
  loc_B004C6: FFree1Var var_98 = ""
  loc_B004C9: LitStr "DetaPers"
  loc_B004CC: FStStrCopy var_E0
  loc_B004CF: FLdRfVar var_E0
  loc_B004D2: FLdPr Me
  loc_B004D5: MemLdRfVar from_stack_1.global_52
  loc_B004D8: NewIfNullPr clstrancome
  loc_B004DB: Call clstrancome.Sort(from_stack_1v)
  loc_B004E0: FFree1Str var_E0
  loc_B004E3: LitStr "Apellido y Nombre que contiene. "
  loc_B004E6: FLdPr Me
  loc_B004E9: VCallAd Control_ID_FiltroMsk
  loc_B004EC: FStAdFunc var_88
  loc_B004EF: FLdPr var_88
  loc_B004F2: LateIdLdVar var_98 DispID_22 0
  loc_B004F9: CStrVarTmp
  loc_B004FA: FStStrNoPop var_E0
  loc_B004FD: ConcatStr
  loc_B004FE: FStStrNoPop var_E4
  loc_B00501: FLdPr Me
  loc_B00504: MemStStrCopy
  loc_B00508: FFreeStr var_E0 = ""
  loc_B0050F: FFree1Ad var_88
  loc_B00512: FFree1Var var_98 = ""
  loc_B00515: Branch loc_B0053C
  loc_B00518: LitStr vbNullString
  loc_B0051B: FStStrCopy var_E0
  loc_B0051E: FLdRfVar var_E0
  loc_B00521: FLdPr Me
  loc_B00524: MemLdRfVar from_stack_1.global_52
  loc_B00527: NewIfNullPr clstrancome
  loc_B0052A: Call clstrancome.Filter(from_stack_1v)
  loc_B0052F: FFree1Str var_E0
  loc_B00532: LitStr vbNullString
  loc_B00535: FLdPr Me
  loc_B00538: MemStStrCopy
  loc_B0053C: FLdPr Me
  loc_B0053F: VCallAd Control_ID_dgdABMS
  loc_B00542: FStAdFunc var_EC
  loc_B00545: FLdPr Me
  loc_B00548: MemLdStr global_76
  loc_B0054B: FLdZeroAd var_EC
  loc_B0054E: FStAdFunc var_88
  loc_B00551: FLdRfVar var_88
  loc_B00554: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_B00559: FFreeAd var_88 = ""
  loc_B00560: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) 'A527B4
  'Data Table: 4A5A04
  loc_A52760: FLdRfVar var_88
  loc_A52763: FLdPr Me
  loc_A52766: MemLdRfVar from_stack_1.global_52
  loc_A52769: NewIfNullPr clstrancome
  loc_A5276C: from_stack_1 = clstrancome.RecordCount
  loc_A52771: ILdRf var_88
  loc_A52774: LitI4 0
  loc_A52779: EqI4
  loc_A5277A: ILdI2 KeyAscii
  loc_A5277D: CI4UI1
  loc_A5277E: LitI4 8
  loc_A52783: NeI4
  loc_A52784: AndI4
  loc_A52785: FLdPr Me
  loc_A52788: VCallAd Control_ID_FiltroMsk
  loc_A5278B: FStAdFunc var_8C
  loc_A5278E: FLdPr var_8C
  loc_A52791: LateIdLdVar var_9C DispID_16 0
  loc_A52798: CStrVarTmp
  loc_A52799: FStStrNoPop var_A0
  loc_A5279C: LitStr vbNullString
  loc_A5279F: EqStr
  loc_A527A1: AndI4
  loc_A527A2: FFree1Str var_A0
  loc_A527A5: FFree1Ad var_8C
  loc_A527A8: FFree1Var var_9C = ""
  loc_A527AB: BranchF loc_A527B3
  loc_A527AE: LitI2_Byte 0
  loc_A527B0: IStI2 KeyAscii
  loc_A527B3: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A7AF74
  'Data Table: 4A5A04
  loc_A7AEF0: LitVarStr var_94, vbNullString
  loc_A7AEF5: PopAdLdVar
  loc_A7AEF6: FLdPr Me
  loc_A7AEF9: VCallAd Control_ID_FiltroMsk
  loc_A7AEFC: FStAdFunc var_A8
  loc_A7AEFF: FLdPr var_A8
  loc_A7AF02: LateIdSt
  loc_A7AF07: FFree1Ad var_A8
  loc_A7AF0A: FLdRfVar var_AA
  loc_A7AF0D: FLdPr Me
  loc_A7AF10: VCallAd Control_ID_FiltroCbo
  loc_A7AF13: FStAdFunc var_A8
  loc_A7AF16: FLdPr var_A8
  loc_A7AF19:  = Me.ListIndex
  loc_A7AF1E: FLdI2 var_AA
  loc_A7AF21: FStI2 var_AC
  loc_A7AF24: FFree1Ad var_A8
  loc_A7AF27: FLdI2 var_AC
  loc_A7AF2A: LitI2_Byte 0
  loc_A7AF2C: EqI2
  loc_A7AF2D: BranchF loc_A7AF4D
  loc_A7AF30: LitVarStr var_94, "99999999"
  loc_A7AF35: PopAdLdVar
  loc_A7AF36: FLdPr Me
  loc_A7AF39: VCallAd Control_ID_FiltroMsk
  loc_A7AF3C: FStAdFunc var_A8
  loc_A7AF3F: FLdPr var_A8
  loc_A7AF42: LateIdSt
  loc_A7AF47: FFree1Ad var_A8
  loc_A7AF4A: Branch loc_A7AF70
  loc_A7AF4D: FLdI2 var_AC
  loc_A7AF50: LitI2_Byte 1
  loc_A7AF52: EqI2
  loc_A7AF53: BranchF loc_A7AF70
  loc_A7AF56: LitVarStr var_94, vbNullString
  loc_A7AF5B: PopAdLdVar
  loc_A7AF5C: FLdPr Me
  loc_A7AF5F: VCallAd Control_ID_FiltroMsk
  loc_A7AF62: FStAdFunc var_A8
  loc_A7AF65: FLdPr var_A8
  loc_A7AF68: LateIdSt
  loc_A7AF6D: FFree1Ad var_A8
  loc_A7AF70: ExitProcHresult
End Sub

Private Sub ExpeTrcoTxt_GotFocus() '9C73E8
  'Data Table: 4A5A04
  loc_9C73D4: FLdPr Me
  loc_9C73D7: VCallAd Control_ID_ExpeTrcoTxt
  loc_9C73DA: CVarAd
  loc_9C73DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C73E3: FFree1Var var_94 = ""
  loc_9C73E6: ExitProcHresult
End Sub

Private Sub FeesTrcoMsk_UnknownEvent_0 '9C46A0
  'Data Table: 4A5A04
  loc_9C468C: FLdPr Me
  loc_9C468F: VCallAd Control_ID_FeesTrcoMsk
  loc_9C4692: CVarAd
  loc_9C4696: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C469B: FFree1Var var_94 = ""
  loc_9C469E: ExitProcHresult
End Sub

Private Function FeesTrcoMsk_UnknownEvent_8(arg_C) 'ABBB70
  'Data Table: 4A5A04
  loc_ABBA80: FLdRfVar var_8A
  loc_ABBA83: FLdPr Me
  loc_ABBA86: VCallAd Control_ID_cmdCancelar
  loc_ABBA89: FStAdFunc var_88
  loc_ABBA8C: FLdPr var_88
  loc_ABBA8F:  = Me.Value
  loc_ABBA94: FLdI2 var_8A
  loc_ABBA97: NotI4
  loc_ABBA98: FLdPr Me
  loc_ABBA9B: VCallAd Control_ID_FeesTrcoMsk
  loc_ABBA9E: FStAdFunc var_90
  loc_ABBAA1: FLdPr var_90
  loc_ABBAA4: LateIdLdVar var_A0 DispID_13 -32767
  loc_ABBAAB: CBoolVar
  loc_ABBAAD: AndI4
  loc_ABBAAE: FFreeAd var_88 = ""
  loc_ABBAB5: FFree1Var var_A0 = ""
  loc_ABBAB8: BranchF loc_ABBB6D
  loc_ABBABB: LitVarStr var_B0, vbNullString
  loc_ABBAC0: PopAdLdVar
  loc_ABBAC1: FLdPr Me
  loc_ABBAC4: VCallAd Control_ID_FeesTrcoMsk
  loc_ABBAC7: FStAdFunc var_88
  loc_ABBACA: FLdPr var_88
  loc_ABBACD: LateIdSt
  loc_ABBAD2: FFree1Ad var_88
  loc_ABBAD5: FLdPr Me
  loc_ABBAD8: VCallAd Control_ID_FeesTrcoMsk
  loc_ABBADB: FStAdFunc var_88
  loc_ABBADE: FLdPr var_88
  loc_ABBAE1: LateIdLdVar var_A0 DispID_22 0
  loc_ABBAE8: CStrVarTmp
  loc_ABBAE9: FStStrNoPop var_C4
  loc_ABBAEC: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_ABBAF1: FStStrNoPop var_C8
  loc_ABBAF4: FLdPr Me
  loc_ABBAF7: MemStStrCopy
  loc_ABBAFB: FFreeStr var_C4 = ""
  loc_ABBB02: FFree1Ad var_88
  loc_ABBB05: FFree1Var var_A0 = ""
  loc_ABBB08: LitVarStr var_B0, "##/##/####"
  loc_ABBB0D: PopAdLdVar
  loc_ABBB0E: FLdPr Me
  loc_ABBB11: VCallAd Control_ID_FeesTrcoMsk
  loc_ABBB14: FStAdFunc var_88
  loc_ABBB17: FLdPr var_88
  loc_ABBB1A: LateIdSt
  loc_ABBB1F: FFree1Ad var_88
  loc_ABBB22: LitVarI2 var_B0, 10
  loc_ABBB27: PopAdLdVar
  loc_ABBB28: FLdPr Me
  loc_ABBB2B: VCallAd Control_ID_FeesTrcoMsk
  loc_ABBB2E: FStAdFunc var_88
  loc_ABBB31: FLdPr var_88
  loc_ABBB34: LateIdSt
  loc_ABBB39: FFree1Ad var_88
  loc_ABBB3C: FLdPr Me
  loc_ABBB3F: MemLdStr global_72
  loc_ABBB42: LitStr vbNullString
  loc_ABBB45: NeStr
  loc_ABBB47: BranchF loc_ABBB6D
  loc_ABBB4A: FLdPr Me
  loc_ABBB4D: MemLdStr global_72
  loc_ABBB50: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABBB55: FLdPr Me
  loc_ABBB58: VCallAd Control_ID_FeesTrcoMsk
  loc_ABBB5B: CVarAd
  loc_ABBB5F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABBB64: FFree1Var var_A0 = ""
  loc_ABBB67: LitI2_Byte &HFF
  loc_ABBB69: IStI2 arg_C
  loc_ABBB6C: ExitProcHresult
  loc_ABBB6D: ExitProcHresult
End Function

Private Sub FeesTrcoMsk_KeyPress(KeyAscii As Integer) 'A25DB4
  'Data Table: 4A5A04
  loc_A25D6C: ILdI2 KeyAscii
  loc_A25D6F: CI4UI1
  loc_A25D70: LitI4 &H20
  loc_A25D75: EqI4
  loc_A25D76: BranchF loc_A25DB3
  loc_A25D79: LitVar_Missing var_A4
  loc_A25D7C: PopAdLdVar
  loc_A25D7D: LitVarI4
  loc_A25D85: PopAdLdVar
  loc_A25D86: ImpAdLdRf MemVar_D930A4
  loc_A25D89: NewIfNullPr frmCalendario
  loc_A25D8C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A25D91: ImpAdLdRf MemVar_D93028
  loc_A25D94: CDargRef
  loc_A25D98: FLdPr Me
  loc_A25D9B: VCallAd Control_ID_FeesTrcoMsk
  loc_A25D9E: FStAdFunc var_A8
  loc_A25DA1: FLdPr var_A8
  loc_A25DA4: LateIdSt
  loc_A25DA9: FFree1Ad var_A8
  loc_A25DAC: LitStr vbNullString
  loc_A25DAF: ImpAdStStrCopy MemVar_D93028
  loc_A25DB3: ExitProcHresult
End Sub

Private Sub ObseTrcoTxt_GotFocus() '9C4850
  'Data Table: 4A5A04
  loc_9C483C: FLdPr Me
  loc_9C483F: VCallAd Control_ID_ObseTrcoTxt
  loc_9C4842: CVarAd
  loc_9C4846: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C484B: FFree1Var var_94 = ""
  loc_9C484E: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A6756C
  'Data Table: 4A5A04
  loc_A67510: FLdRfVar var_B4
  loc_A67513: FLdRfVar var_B0
  loc_A67516: FLdI2 ColIndex
  loc_A67519: CVarI2 var_A8
  loc_A6751C: PopAdLdVar
  loc_A6751D: FLdPr Me
  loc_A67520: VCallAd Control_ID_dgdABMS
  loc_A67523: FStAdFunc var_88
  loc_A67526: FLdPr var_88
  loc_A67529: LateIdLdVar var_98 DispID_105 0
  loc_A67530: CastAdVar Me
  loc_A67534: FStAdFunc var_AC
  loc_A67537: FLdPr var_AC
  loc_A6753A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A6753F: FLdPr var_B0
  loc_A67542:  = Me.DataField
  loc_A67547: FLdZeroAd var_B4
  loc_A6754A: PopTmpLdAdStr
  loc_A6754E: FLdPr Me
  loc_A67551: MemLdRfVar from_stack_1.global_52
  loc_A67554: NewIfNullPr clstrancome
  loc_A67557: Call clstrancome.Sort(from_stack_1v)
  loc_A6755C: FFree1Str var_B8
  loc_A6755F: FFreeAd var_88 = "": var_AC = ""
  loc_A67568: FFree1Var var_98 = ""
  loc_A6756B: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '9C4610
  'Data Table: 4A5A04
  loc_9C45FC: FLdPr Me
  loc_9C45FF: VCallAd Control_ID_CucuPersTxt
  loc_9C4602: CVarAd
  loc_9C4606: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C460B: FFree1Var var_94 = ""
  loc_9C460E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) 'A98DB0
  'Data Table: 4A5A04
  loc_A98CF8: LitStr "1234567890 "
  loc_A98CFB: FStStrCopy var_88
  loc_A98CFE: FLdRfVar var_88
  loc_A98D01: ILdRf KeyAscii
  loc_A98D04: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A98D09: IStI2 KeyAscii
  loc_A98D0C: FFree1Str var_88
  loc_A98D0F: ILdI2 KeyAscii
  loc_A98D12: LitI2_Byte &H20
  loc_A98D14: EqI2
  loc_A98D15: BranchF loc_A98DAF
  loc_A98D18: LitI2_Byte 0
  loc_A98D1A: IStI2 KeyAscii
  loc_A98D1D: LitVar_Missing var_A8
  loc_A98D20: PopAdLdVar
  loc_A98D21: LitVarI4
  loc_A98D29: PopAdLdVar
  loc_A98D2A: ImpAdLdRf MemVar_D940AC
  loc_A98D2D: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98D30: dlgBuscarPersonaPorCucuPers.Show from_stack_1, from_stack_2
  loc_A98D35: FLdRfVar var_88
  loc_A98D38: ImpAdLdRf MemVar_D940AC
  loc_A98D3B: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98D3E: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A98D43: ILdRf var_88
  loc_A98D46: LitStr vbNullString
  loc_A98D49: NeStr
  loc_A98D4B: FFree1Str var_88
  loc_A98D4E: BranchF loc_A98DAF
  loc_A98D51: FLdRfVar var_88
  loc_A98D54: ImpAdLdRf MemVar_D940AC
  loc_A98D57: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98D5A: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A98D5F: ILdRf var_88
  loc_A98D62: FLdPr Me
  loc_A98D65: VCallAd Control_ID_
  loc_A98D68: FStAdFunc var_AC
  loc_A98D6B: FLdPr var_AC
  loc_A98D6E: dlgBuscarPersonaPorCucuPers.TextBox.Text = from_stack_1
  loc_A98D73: FFree1Str var_88
  loc_A98D76: FFree1Ad var_AC
  loc_A98D79: LitStr vbNullString
  loc_A98D7C: ImpAdLdRf MemVar_D940AC
  loc_A98D7F: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98D82: Call dlgBuscarPersonaPorCucuPers.sPasaCodigoPut(from_stack_1v)
  loc_A98D87: FLdRfVar var_88
  loc_A98D8A: ImpAdLdRf MemVar_D940AC
  loc_A98D8D: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98D90: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaDetalleGet()
  loc_A98D95: ILdRf var_88
  loc_A98D98: FLdPr Me
  loc_A98D9B: VCallAd Control_ID_
  loc_A98D9E: FStAdFunc var_AC
  loc_A98DA1: FLdPr var_AC
  loc_A98DA4: dlgBuscarPersonaPorCucuPers.Label.Caption = from_stack_1
  loc_A98DA9: FFree1Str var_88
  loc_A98DAC: FFree1Ad var_AC
  loc_A98DAF: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'ABF848
  'Data Table: 4A5A04
  loc_ABF754: FLdRfVar var_8A
  loc_ABF757: FLdPr Me
  loc_ABF75A: VCallAd Control_ID_cmdCancelar
  loc_ABF75D: FStAdFunc var_88
  loc_ABF760: FLdPr var_88
  loc_ABF763:  = Me.Value
  loc_ABF768: FLdI2 var_8A
  loc_ABF76B: NotI4
  loc_ABF76C: FLdRfVar var_92
  loc_ABF76F: FLdPr Me
  loc_ABF772: VCallAd Control_ID_CucuPersTxt
  loc_ABF775: FStAdFunc var_90
  loc_ABF778: FLdPr var_90
  loc_ABF77B:  = Me.Enabled
  loc_ABF780: FLdI2 var_92
  loc_ABF783: AndI4
  loc_ABF784: FFreeAd var_88 = ""
  loc_ABF78B: BranchF loc_ABF847
  loc_ABF78E: FLdRfVar var_98
  loc_ABF791: FLdPr Me
  loc_ABF794: VCallAd Control_ID_CucuPersTxt
  loc_ABF797: FStAdFunc var_88
  loc_ABF79A: FLdPr var_88
  loc_ABF79D:  = Me.Text
  loc_ABF7A2: ILdRf var_98
  loc_ABF7A5: ImpAdCallI2 Proc_18_66_A532F4()
  loc_ABF7AA: FStStrNoPop var_9C
  loc_ABF7AD: FLdPr Me
  loc_ABF7B0: MemStStrCopy
  loc_ABF7B4: FFreeStr var_98 = ""
  loc_ABF7BB: FFree1Ad var_88
  loc_ABF7BE: FLdPr Me
  loc_ABF7C1: MemLdStr global_72
  loc_ABF7C4: LitStr vbNullString
  loc_ABF7C7: NeStr
  loc_ABF7C9: BranchF loc_ABF809
  loc_ABF7CC: FLdPr Me
  loc_ABF7CF: MemLdStr global_72
  loc_ABF7D2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABF7D7: LitStr vbNullString
  loc_ABF7DA: FLdPr Me
  loc_ABF7DD: VCallAd Control_ID_DetaApeNomLbl
  loc_ABF7E0: FStAdFunc var_88
  loc_ABF7E3: FLdPr var_88
  loc_ABF7E6: Me.Caption = from_stack_1
  loc_ABF7EB: FFree1Ad var_88
  loc_ABF7EE: FLdPr Me
  loc_ABF7F1: VCallAd Control_ID_CucuPersTxt
  loc_ABF7F4: CVarAd
  loc_ABF7F8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABF7FD: FFree1Var var_AC = ""
  loc_ABF800: LitI2_Byte &HFF
  loc_ABF802: IStI2 Cancel
  loc_ABF805: ExitProcHresult
  loc_ABF806: Branch loc_ABF847
  loc_ABF809: FLdRfVar var_98
  loc_ABF80C: FLdPr Me
  loc_ABF80F: VCallAd Control_ID_CucuPersTxt
  loc_ABF812: FStAdFunc var_88
  loc_ABF815: FLdPr var_88
  loc_ABF818:  = Me.Text
  loc_ABF81D: ILdRf var_98
  loc_ABF820: ImpAdCallI2 Proc_270_75_A80810()
  loc_ABF825: FStStrNoPop var_9C
  loc_ABF828: FLdPr Me
  loc_ABF82B: VCallAd Control_ID_DetaApeNomLbl
  loc_ABF82E: FStAdFunc var_90
  loc_ABF831: FLdPr var_90
  loc_ABF834: Me.Caption = from_stack_1
  loc_ABF839: FFreeStr var_98 = ""
  loc_ABF840: FFreeAd var_88 = ""
  loc_ABF847: ExitProcHresult
End Sub

Private Sub Form_Load() 'ACA548
  'Data Table: 4A5A04
  loc_ACA444: LitI2_Byte 0
  loc_ACA446: CR8I2
  loc_ACA447: PopFPR4
  loc_ACA448: FLdPr Me
  loc_ACA44B: Me.Left = from_stack_1s
  loc_ACA450: LitI2_Byte 0
  loc_ACA452: CR8I2
  loc_ACA453: PopFPR4
  loc_ACA454: FLdPr Me
  loc_ACA457: Me.Top = from_stack_1s
  loc_ACA45C: LitStr "SELECT comercio.CodiCome, comercio.CucuPers, comercio.RazoCome, infogov.persona.DetaPers "
  loc_ACA45F: LitStr " FROM comercio "
  loc_ACA462: ConcatStr
  loc_ACA463: FStStrNoPop var_88
  loc_ACA466: LitStr " LEFT JOIN infogov.persona On comercio.CucuPers = infogov.persona.CucuPers"
  loc_ACA469: ConcatStr
  loc_ACA46A: FStStrNoPop var_8C
  loc_ACA46D: LitStr " WHERE comercio.FebaCome IS NULL"
  loc_ACA470: ConcatStr
  loc_ACA471: FStStrNoPop var_90
  loc_ACA474: LitStr " ORDER BY comercio.CodiCome"
  loc_ACA477: ConcatStr
  loc_ACA478: FStStrNoPop var_94
  loc_ACA47B: FLdPr Me
  loc_ACA47E: MemLdRfVar from_stack_1.global_52
  loc_ACA481: NewIfNullPr clstrancome
  loc_ACA484: Call clstrancome.RedefineRS(from_stack_1v)
  loc_ACA489: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_ACA494: LitI4 0
  loc_ACA499: LitI4 1
  loc_ACA49E: FLdRfVar var_98
  loc_ACA4A1: Redim
  loc_ACA4AB: FLdPr Me
  loc_ACA4AE: MemLdRfVar from_stack_1.global_52
  loc_ACA4B1: NewIfNullAd
  loc_ACA4B4: FStAd var_9C 
  loc_ACA4B8: FLdRfVar var_9C
  loc_ACA4BB: CVarRef
  loc_ACA4C0: ParmAry1St
  loc_ACA4C6: FLdPr Me
  loc_ACA4C9: VCallAd Control_ID_dgdABMS
  loc_ACA4CC: CVarAd
  loc_ACA4D0: ParmAry1St
  loc_ACA4D6: FLdRfVar var_98
  loc_ACA4D9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ACA4DE: ILdRf var_9C
  loc_ACA4E1: CastAd
  loc_ACA4E4: FLdPr Me
  loc_ACA4E7: MemStAdFunc
  loc_ACA4EB: FLdRfVar var_98
  loc_ACA4EE: Erase
  loc_ACA4EF: FFree1Ad var_9C
  loc_ACA4F2: Call cmdCancelar_Click()
  loc_ACA4F7: LitVarI2 var_AC, 0
  loc_ACA4FC: PopAdLdVar
  loc_ACA4FD: LitStr "Código"
  loc_ACA500: FLdPr Me
  loc_ACA503: VCallAd Control_ID_FiltroCbo
  loc_ACA506: FStAdFunc var_9C
  loc_ACA509: FLdPr var_9C
  loc_ACA50C: Me.AddItem from_stack_1, from_stack_2
  loc_ACA511: FFree1Ad var_9C
  loc_ACA514: LitVarI2 var_AC, 1
  loc_ACA519: PopAdLdVar
  loc_ACA51A: LitStr "Apellido y Nombre"
  loc_ACA51D: FLdPr Me
  loc_ACA520: VCallAd Control_ID_FiltroCbo
  loc_ACA523: FStAdFunc var_9C
  loc_ACA526: FLdPr var_9C
  loc_ACA529: Me.AddItem from_stack_1, from_stack_2
  loc_ACA52E: FFree1Ad var_9C
  loc_ACA531: LitI2_Byte 0
  loc_ACA533: FLdPr Me
  loc_ACA536: VCallAd Control_ID_FiltroCbo
  loc_ACA539: FStAdFunc var_9C
  loc_ACA53C: FLdPr var_9C
  loc_ACA53F: Me.ListIndex = from_stack_1
  loc_ACA544: FFree1Ad var_9C
  loc_ACA547: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D6018
  'Data Table: 4A5A04
  loc_9D6000: ILdI2 KeyAscii
  loc_9D6003: LitI2_Byte &HD
  loc_9D6005: EqI2
  loc_9D6006: BranchF loc_9D6017
  loc_9D6009: LitVar_TRUE var_A4
  loc_9D600C: LitStr "Tab"
  loc_9D600F: ImpAdCallFPR4 SendKeys , 
  loc_9D6014: FFree1Var var_A4 = ""
  loc_9D6017: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D60FC
  'Data Table: 4A5A04
  loc_9D60E4: ILdI2 KeyCode
  loc_9D60E7: ILdRf Me
  loc_9D60EA: CastAd
  loc_9D60ED: FStAdFunc var_88
  loc_9D60F0: FLdRfVar var_88
  loc_9D60F3: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D60F8: FFree1Ad var_88
  loc_9D60FB: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AE3044
  'Data Table: 4A5A04
  loc_AE2EE8: LitI2_Byte 0
  loc_AE2EEA: FLdPr Me
  loc_AE2EED: MemStI2 global_68
  loc_AE2EF0: LitI2_Byte 0
  loc_AE2EF2: ILdRf Me
  loc_AE2EF5: CastAd
  loc_AE2EF8: FStAdFunc var_88
  loc_AE2EFB: FLdRfVar var_88
  loc_AE2EFE: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AE2F03: FFree1Ad var_88
  loc_AE2F06: LitI4 0
  loc_AE2F0B: LitI4 0
  loc_AE2F10: FLdRfVar var_8C
  loc_AE2F13: Redim
  loc_AE2F1D: FLdPr Me
  loc_AE2F20: VCallAd Control_ID_dgdABMS
  loc_AE2F23: CVarAd
  loc_AE2F27: ParmAry1St
  loc_AE2F2D: FLdRfVar var_8C
  loc_AE2F30: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE2F35: FLdRfVar var_8C
  loc_AE2F38: Erase
  loc_AE2F39: FLdPr Me
  loc_AE2F3C: MemLdRfVar from_stack_1.global_52
  loc_AE2F3F: NewIfNullAd
  loc_AE2F42: FStAd var_A0 
  loc_AE2F46: FLdRfVar var_A0
  loc_AE2F49: CVarRef
  loc_AE2F4E: ILdRf Me
  loc_AE2F51: CastAd
  loc_AE2F54: FStAdFunc var_88
  loc_AE2F57: FLdRfVar var_88
  loc_AE2F5A: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AE2F5F: ILdRf var_A0
  loc_AE2F62: CastAd
  loc_AE2F65: FLdPr Me
  loc_AE2F68: MemStAdFunc
  loc_AE2F6C: FFreeAd var_88 = ""
  loc_AE2F73: ILdRf Me
  loc_AE2F76: CastAd
  loc_AE2F79: FStAdFunc var_88
  loc_AE2F7C: FLdRfVar var_88
  loc_AE2F7F: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AE2F84: FFree1Ad var_88
  loc_AE2F87: LitI4 0
  loc_AE2F8C: LitI4 1
  loc_AE2F91: FLdRfVar var_8C
  loc_AE2F94: Redim
  loc_AE2F9E: FLdPr Me
  loc_AE2FA1: VCallAd Control_ID_FiltroCbo
  loc_AE2FA4: CVarAd
  loc_AE2FA8: ParmAry1St
  loc_AE2FAE: FLdPr Me
  loc_AE2FB1: VCallAd Control_ID_FiltroMsk
  loc_AE2FB4: CVarAd
  loc_AE2FB8: ParmAry1St
  loc_AE2FBE: FLdRfVar var_8C
  loc_AE2FC1: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE2FC6: FLdRfVar var_8C
  loc_AE2FC9: Erase
  loc_AE2FCA: LitStr vbNullString
  loc_AE2FCD: FLdPr Me
  loc_AE2FD0: VCallAd Control_ID_CucuPersTxt
  loc_AE2FD3: FStAdFunc var_88
  loc_AE2FD6: FLdPr var_88
  loc_AE2FD9: Me.Text = from_stack_1
  loc_AE2FDE: FFree1Ad var_88
  loc_AE2FE1: LitStr vbNullString
  loc_AE2FE4: FLdPr Me
  loc_AE2FE7: VCallAd Control_ID_DetaApeNomLbl
  loc_AE2FEA: FStAdFunc var_88
  loc_AE2FED: FLdPr var_88
  loc_AE2FF0: Me.Caption = from_stack_1
  loc_AE2FF5: FFree1Ad var_88
  loc_AE2FF8: LitVarStr var_B0, vbNullString
  loc_AE2FFD: PopAdLdVar
  loc_AE2FFE: FLdPr Me
  loc_AE3001: VCallAd Control_ID_FeesTrcoMsk
  loc_AE3004: FStAdFunc var_88
  loc_AE3007: FLdPr var_88
  loc_AE300A: LateIdSt
  loc_AE300F: FFree1Ad var_88
  loc_AE3012: LitStr vbNullString
  loc_AE3015: FLdPr Me
  loc_AE3018: VCallAd Control_ID_ExpeTrcoTxt
  loc_AE301B: FStAdFunc var_88
  loc_AE301E: FLdPr var_88
  loc_AE3021: Me.Text = from_stack_1
  loc_AE3026: FFree1Ad var_88
  loc_AE3029: LitStr vbNullString
  loc_AE302C: FLdPr Me
  loc_AE302F: VCallAd Control_ID_ObseTrcoTxt
  loc_AE3032: FStAdFunc var_88
  loc_AE3035: FLdPr var_88
  loc_AE3038: Me.Text = from_stack_1
  loc_AE303D: FFree1Ad var_88
  loc_AE3040: ExitProcHresult
  loc_AE3041: FStStrNoPop var_A4
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B42678
  'Data Table: 4A5A04
  loc_B4235C: ILdRf Button
  loc_B4235F: FStAd var_88 
  loc_B42363: FLdRfVar var_8C
  loc_B42366: FLdPr var_88
  loc_B42369:  = Me.Key
  loc_B4236E: FLdZeroAd var_8C
  loc_B42371: FStStr var_90
  loc_B42374: ILdRf var_90
  loc_B42377: LitStr "btnCrear"
  loc_B4237A: EqStr
  loc_B4237C: BranchF loc_B42413
  loc_B4237F: LitI2_Byte 1
  loc_B42381: FLdPr Me
  loc_B42384: MemStI2 global_68
  loc_B42387: ILdRf Me
  loc_B4238A: CastAd
  loc_B4238D: FStAdFunc var_94
  loc_B42390: FLdRfVar var_94
  loc_B42393: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B42398: FFree1Ad var_94
  loc_B4239B: ILdRf Me
  loc_B4239E: CastAd
  loc_B423A1: FStAdFunc var_94
  loc_B423A4: FLdRfVar var_94
  loc_B423A7: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B423AC: FFree1Ad var_94
  loc_B423AF: ILdRf Me
  loc_B423B2: CastAd
  loc_B423B5: FStAdFunc var_94
  loc_B423B8: FLdRfVar var_94
  loc_B423BB: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_B423C0: FFree1Ad var_94
  loc_B423C3: LitStr "0"
  loc_B423C6: FLdPr Me
  loc_B423C9: VCallAd Control_ID_CucuPersTxt
  loc_B423CC: FStAdFunc var_94
  loc_B423CF: FLdPr var_94
  loc_B423D2: Me.Text = from_stack_1
  loc_B423D7: FFree1Ad var_94
  loc_B423DA: LitI2_Byte 0
  loc_B423DC: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B423E1: CStrDate
  loc_B423E3: CVarStr var_A4
  loc_B423E6: PopAdLdVar
  loc_B423E7: FLdPr Me
  loc_B423EA: VCallAd Control_ID_FeesTrcoMsk
  loc_B423ED: FStAdFunc var_94
  loc_B423F0: FLdPr var_94
  loc_B423F3: LateIdSt
  loc_B423F8: FFree1Ad var_94
  loc_B423FB: FFree1Var var_A4 = ""
  loc_B423FE: FLdPr Me
  loc_B42401: VCallAd Control_ID_CucuPersTxt
  loc_B42404: CVarAd
  loc_B42408: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4240D: FFree1Var var_A4 = ""
  loc_B42410: Branch loc_B42677
  loc_B42413: ILdRf var_90
  loc_B42416: LitStr "btnModificar"
  loc_B42419: EqStr
  loc_B4241B: BranchF loc_B42421
  loc_B4241E: Branch loc_B42677
  loc_B42421: ILdRf var_90
  loc_B42424: LitStr "btnEliminar"
  loc_B42427: EqStr
  loc_B42429: BranchF loc_B4242F
  loc_B4242C: Branch loc_B42677
  loc_B4242F: ILdRf var_90
  loc_B42432: LitStr "btnGuardar"
  loc_B42435: EqStr
  loc_B42437: BranchF loc_B42573
  loc_B4243A: LitStr vbNullString
  loc_B4243D: FLdPr Me
  loc_B42440: MemStStrCopy
  loc_B42444: LitI2_Byte &HFF
  loc_B42446: PopTmpLdAd2 var_B6
  loc_B42449: Call CucuPersTxt_Validate(from_stack_1v)
  loc_B4244E: FLdPr Me
  loc_B42451: MemLdStr global_72
  loc_B42454: LitStr vbNullString
  loc_B42457: NeStr
  loc_B42459: BranchF loc_B4245D
  loc_B4245C: ExitProcHresult
  loc_B4245D: LitI2_Byte &HFF
  loc_B4245F: PopTmpLdAd2 var_B6
  loc_B42462: from_stack_2v = FeesTrcoMsk_UnknownEvent_8(from_stack_1v)
  loc_B42467: FLdPr Me
  loc_B4246A: MemLdStr global_72
  loc_B4246D: LitStr vbNullString
  loc_B42470: NeStr
  loc_B42472: BranchF loc_B42476
  loc_B42475: ExitProcHresult
  loc_B42476: FLdPr Me
  loc_B42479: MemLdI2 global_68
  loc_B4247C: FStI2 var_B8
  loc_B4247F: FLdI2 var_B8
  loc_B42482: LitI2_Byte 1
  loc_B42484: EqI2
  loc_B42485: BranchF loc_B4256B
  loc_B42488: FLdRfVar var_8C
  loc_B4248B: FLdPrThis
  loc_B4248C: VCallAd Control_ID_CodiComeLbl
  loc_B4248F: FStAdFunc var_94
  loc_B42492: FLdPr var_94
  loc_B42495:  = Me.Caption
  loc_B4249A: FLdRfVar var_C0
  loc_B4249D: FLdPrThis
  loc_B4249E: VCallAd Control_ID_CUITVendedorLbl
  loc_B424A1: FStAdFunc var_BC
  loc_B424A4: FLdPr var_BC
  loc_B424A7:  = Me.Caption
  loc_B424AC: FLdRfVar var_C8
  loc_B424AF: FLdPrThis
  loc_B424B0: VCallAd Control_ID_CucuPersTxt
  loc_B424B3: FStAdFunc var_C4
  loc_B424B6: FLdPr var_C4
  loc_B424B9:  = Me.Text
  loc_B424BE: FLdPrThis
  loc_B424BF: VCallAd Control_ID_FeesTrcoMsk
  loc_B424C2: FStAdFunc var_CC
  loc_B424C5: FLdPr var_CC
  loc_B424C8: LateIdLdVar var_A4 DispID_15 0
  loc_B424CF: PopAd
  loc_B424D1: LitI4 1
  loc_B424D6: LitI4 1
  loc_B424DB: LitVarStr var_B4, "yyyy-mm-dd"
  loc_B424E0: FStVarCopyObj var_EC
  loc_B424E3: FLdRfVar var_EC
  loc_B424E6: FLdRfVar var_A4
  loc_B424E9: CStrVarTmp
  loc_B424EA: CVarStr var_DC
  loc_B424ED: ImpAdCallI2 Format$(, )
  loc_B424F2: FStStr var_104
  loc_B424F5: FLdRfVar var_F4
  loc_B424F8: FLdPrThis
  loc_B424F9: VCallAd Control_ID_ExpeTrcoTxt
  loc_B424FC: FStAdFunc var_F0
  loc_B424FF: FLdPr var_F0
  loc_B42502:  = Me.Text
  loc_B42507: FLdRfVar var_FC
  loc_B4250A: FLdPrThis
  loc_B4250B: VCallAd Control_ID_ObseTrcoTxt
  loc_B4250E: FStAdFunc var_F8
  loc_B42511: FLdPr var_F8
  loc_B42514:  = Me.Text
  loc_B42519: LitI2_Byte &HFF
  loc_B4251B: ILdRf var_FC
  loc_B4251E: ILdRf var_F4
  loc_B42521: FLdZeroAd var_104
  loc_B42524: FStStrNoPop var_100
  loc_B42527: CDateStr
  loc_B42529: PopFPR8
  loc_B4252A: ILdRf var_C8
  loc_B4252D: ILdRf var_C0
  loc_B42530: ILdRf var_8C
  loc_B42533: CI4Str
  loc_B42534: FLdPr Me
  loc_B42537: MemLdRfVar from_stack_1.global_52
  loc_B4253A: NewIfNullPr clstrancome
  loc_B4253D: Call clstrancome.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_B42542: FFreeStr var_8C = "": var_C0 = "": var_C8 = "": var_100 = "": var_F4 = "": var_FC = ""
  loc_B42553: FFreeAd var_94 = "": var_BC = "": var_C4 = "": var_CC = "": var_F0 = ""
  loc_B42562: FFreeVar var_A4 = "": var_DC = ""
  loc_B4256B: Call cmdCancelar_Click()
  loc_B42570: Branch loc_B42677
  loc_B42573: ILdRf var_90
  loc_B42576: LitStr "btnCancelar"
  loc_B42579: EqStr
  loc_B4257B: BranchF loc_B42586
  loc_B4257E: Call cmdCancelar_Click()
  loc_B42583: Branch loc_B42677
  loc_B42586: ILdRf var_90
  loc_B42589: LitStr "btnPrimero"
  loc_B4258C: EqStr
  loc_B4258E: BranchF loc_B425A2
  loc_B42591: FLdPr Me
  loc_B42594: MemLdRfVar from_stack_1.global_52
  loc_B42597: NewIfNullPr clstrancome
  loc_B4259A: Call clstrancome.MoveFirst()
  loc_B4259F: Branch loc_B42677
  loc_B425A2: ILdRf var_90
  loc_B425A5: LitStr "btnAnterior"
  loc_B425A8: EqStr
  loc_B425AA: BranchF loc_B425BE
  loc_B425AD: FLdPr Me
  loc_B425B0: MemLdRfVar from_stack_1.global_52
  loc_B425B3: NewIfNullPr clstrancome
  loc_B425B6: Call clstrancome.MovePrevious()
  loc_B425BB: Branch loc_B42677
  loc_B425BE: ILdRf var_90
  loc_B425C1: LitStr "btnSiguiente"
  loc_B425C4: EqStr
  loc_B425C6: BranchF loc_B425DA
  loc_B425C9: FLdPr Me
  loc_B425CC: MemLdRfVar from_stack_1.global_52
  loc_B425CF: NewIfNullPr clstrancome
  loc_B425D2: Call clstrancome.MoveNext()
  loc_B425D7: Branch loc_B42677
  loc_B425DA: ILdRf var_90
  loc_B425DD: LitStr "btnUltimo"
  loc_B425E0: EqStr
  loc_B425E2: BranchF loc_B425F6
  loc_B425E5: FLdPr Me
  loc_B425E8: MemLdRfVar from_stack_1.global_52
  loc_B425EB: NewIfNullPr clstrancome
  loc_B425EE: Call clstrancome.MoveLast()
  loc_B425F3: Branch loc_B42677
  loc_B425F6: ILdRf var_90
  loc_B425F9: LitStr "btnFiltrar"
  loc_B425FC: EqStr
  loc_B425FE: BranchF loc_B42604
  loc_B42601: Branch loc_B42677
  loc_B42604: ILdRf var_90
  loc_B42607: LitStr "btnBuscar"
  loc_B4260A: EqStr
  loc_B4260C: BranchF loc_B42612
  loc_B4260F: Branch loc_B42677
  loc_B42612: ILdRf var_90
  loc_B42615: LitStr "btnImprimir"
  loc_B42618: EqStr
  loc_B4261A: BranchF loc_B42620
  loc_B4261D: Branch loc_B42677
  loc_B42620: ILdRf var_90
  loc_B42623: LitStr "btnAyuda"
  loc_B42626: EqStr
  loc_B42628: BranchF loc_B42657
  loc_B4262B: LitVar_Missing var_144
  loc_B4262E: LitVar_Missing var_EC
  loc_B42631: LitVar_Missing var_DC
  loc_B42634: LitI4 0
  loc_B42639: LitVarStr var_B4, "Opción no disponible en esta versión."
  loc_B4263E: FStVarCopyObj var_A4
  loc_B42641: FLdRfVar var_A4
  loc_B42644: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B42649: FFreeVar var_A4 = "": var_DC = "": var_EC = ""
  loc_B42654: Branch loc_B42677
  loc_B42657: ILdRf var_90
  loc_B4265A: LitStr "btnSalir"
  loc_B4265D: EqStr
  loc_B4265F: BranchF loc_B42677
  loc_B42662: ILdRf Me
  loc_B42665: FStAdNoPop
  loc_B42669: ImpAdLdRf MemVar_D9C5D8
  loc_B4266C: NewIfNullPr Global
  loc_B4266F: Global.Unload from_stack_1
  loc_B42674: FFree1Ad var_94
  loc_B42677: ExitProcHresult
End Sub
