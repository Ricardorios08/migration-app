VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmDescuentoPorBono
  Caption = "Descuento por Bono"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmDescuentoPorBono.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 14784
  ClientHeight = 9504
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 0
    Top = 840
    Width = 4575
    Height = 420
    TabIndex = 6
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
    Top = 4440
    Width = 10800
    Height = 2280
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox ImpoBonoTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 1800
      Width = 1575
      Height = 345
      TabIndex = 15
      MaxLength = 12
      DataField = "ImpoBono"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox NoMostrarTxt
      ForeColor = &HFF0000&
      Left = 10800
      Top = 1440
      Width = 225
      Height = 360
      TabIndex = 12
      MaxLength = 11
      DataField = "Cuenta"
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
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2520
      Top = 360
      Width = 2295
      Height = 420
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
    End
    Begin VB.TextBox CuentaTxt
      ForeColor = &HFF0000&
      Left = 2520
      Top = 840
      Width = 1935
      Height = 360
      TabIndex = 9
      MaxLength = 11
      DataField = "Cuenta"
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
    Begin MSMask.MaskEdBox NudoPersMsk
      Left = 2520
      Top = 1320
      Width = 1695
      Height = 375
      TabIndex = 11
      OleObjectBlob = "frmDescuentoPorBono.frx":324A
      DataField = "NudoPers"
    End
    Begin VB.Label Label1
      Caption = "Importe:"
      Left = 1560
      Top = 1800
      Width = 885
      Height = 300
      TabIndex = 14
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
      Left = 4320
      Top = 1320
      Width = 5175
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label4
      Caption = "Oficina:"
      Left = 1680
      Top = 360
      Width = 795
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
    Begin VB.Label Label3
      Caption = "Nro Documento:"
      Left = 720
      Top = 1320
      Width = 1740
      Height = 300
      TabIndex = 3
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
      Left = 1680
      Top = 840
      Width = 840
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1440
    Width = 11400
    Height = 2955
    TabIndex = 0
    OleObjectBlob = "frmDescuentoPorBono.frx":32E2
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmDescuentoPorBono.frx":3686
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 14784
    Height = 552
    TabIndex = 4
    OleObjectBlob = "frmDescuentoPorBono.frx":B204
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 5
      TabStop = 0   'False
      Picture = "frmDescuentoPorBono.frx":B760
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4680
    Top = 840
    Width = 5775
    Height = 375
    TabIndex = 7
    OleObjectBlob = "frmDescuentoPorBono.frx":C02A
  End
End

Attribute VB_Name = "frmDescuentoPorBono"


Private Sub ImpoBonoTxt_GotFocus() '9BE1F0
  'Data Table: 46B018
  loc_9BE1DC: FLdPr Me
  loc_9BE1DF: VCallAd Control_ID_ImpoBonoTxt
  loc_9BE1E2: CVarAd
  loc_9BE1E6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE1EB: FFree1Var var_94 = ""
  loc_9BE1EE: ExitProcHresult
End Sub

Private Sub ImpoBonoTxt_KeyPress(KeyAscii As Integer) 'A07A58
  'Data Table: 46B018
  loc_A07A24: LitStr "1234567890,."
  loc_A07A27: FStStrCopy var_88
  loc_A07A2A: FLdRfVar var_88
  loc_A07A2D: ILdRf KeyAscii
  loc_A07A30: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07A35: IStI2 KeyAscii
  loc_A07A38: FFree1Str var_88
  loc_A07A3B: ILdI2 KeyAscii
  loc_A07A3E: LitStr "."
  loc_A07A41: ImpAdCallI2 Asc()
  loc_A07A46: EqI2
  loc_A07A47: BranchF loc_A07A55
  loc_A07A4A: LitStr ","
  loc_A07A4D: ImpAdCallI2 Asc()
  loc_A07A52: IStI2 KeyAscii
  loc_A07A55: ExitProcHresult
End Sub

Private Sub ImpoBonoTxt_Validate(Cancel As Boolean) 'A92460
  'Data Table: 46B018
  loc_A923C0: FLdRfVar var_8A
  loc_A923C3: FLdPr Me
  loc_A923C6: VCallAd Control_ID_cmdCancelar
  loc_A923C9: FStAdFunc var_88
  loc_A923CC: FLdPr var_88
  loc_A923CF:  = Me.Value
  loc_A923D4: FLdI2 var_8A
  loc_A923D7: NotI4
  loc_A923D8: FLdRfVar var_92
  loc_A923DB: FLdPr Me
  loc_A923DE: VCallAd Control_ID_ImpoBonoTxt
  loc_A923E1: FStAdFunc var_90
  loc_A923E4: FLdPr var_90
  loc_A923E7:  = Me.Enabled
  loc_A923EC: FLdI2 var_92
  loc_A923EF: AndI4
  loc_A923F0: FFreeAd var_88 = ""
  loc_A923F7: BranchF loc_A9245D
  loc_A923FA: FLdRfVar var_98
  loc_A923FD: FLdPr Me
  loc_A92400: VCallAd Control_ID_ImpoBonoTxt
  loc_A92403: FStAdFunc var_88
  loc_A92406: FLdPr var_88
  loc_A92409:  = Me.Text
  loc_A9240E: LitI2_Byte &HFF
  loc_A92410: LitI2_Byte 0
  loc_A92412: ILdRf var_98
  loc_A92415: LitStr " el importe"
  loc_A92418: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A9241D: FStStrNoPop var_9C
  loc_A92420: FLdPr Me
  loc_A92423: MemStStrCopy
  loc_A92427: FFreeStr var_98 = ""
  loc_A9242E: FFree1Ad var_88
  loc_A92431: FLdPr Me
  loc_A92434: MemLdStr global_60
  loc_A92437: LitStr vbNullString
  loc_A9243A: NeStr
  loc_A9243C: BranchF loc_A9245D
  loc_A9243F: FLdPr Me
  loc_A92442: MemLdStr global_60
  loc_A92445: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9244A: FLdPr Me
  loc_A9244D: VCallAd Control_ID_ImpoBonoTxt
  loc_A92450: CVarAd
  loc_A92454: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A92459: FFree1Var var_AC = ""
  loc_A9245C: ExitProcHresult
  loc_A9245D: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9CDE10
  'Data Table: 46B018
  loc_9CDDF8: FLdPr Me
  loc_9CDDFB: VCallAd Control_ID_dgdABMS
  loc_9CDDFE: FStAdFunc var_88
  loc_9CDE01: FLdRfVar var_88
  loc_9CDE04: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9CDE09: FFree1Ad var_88
  loc_9CDE0C: ExitProcHresult
  loc_9CDE0D: ILdPr
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9CDD78
  'Data Table: 46B018
  loc_9CDD60: FLdPr Me
  loc_9CDD63: VCallAd Control_ID_dgdABMS
  loc_9CDD66: FStAdFunc var_88
  loc_9CDD69: FLdRfVar var_88
  loc_9CDD6C: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9CDD71: FFree1Ad var_88
  loc_9CDD74: ExitProcHresult
  loc_9CDD75: LeR8
  loc_9CDD76: AryLock
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A664C4
  'Data Table: 46B018
  loc_A66468: FLdRfVar var_B4
  loc_A6646B: FLdRfVar var_B0
  loc_A6646E: FLdI2 ColIndex
  loc_A66471: CVarI2 var_A8
  loc_A66474: PopAdLdVar
  loc_A66475: FLdPr Me
  loc_A66478: VCallAd Control_ID_dgdABMS
  loc_A6647B: FStAdFunc var_88
  loc_A6647E: FLdPr var_88
  loc_A66481: LateIdLdVar var_98 DispID_105 0
  loc_A66488: CastAdVar Me
  loc_A6648C: FStAdFunc var_AC
  loc_A6648F: FLdPr var_AC
  loc_A66492: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A66497: FLdPr var_B0
  loc_A6649A:  = Me.DataField
  loc_A6649F: FLdZeroAd var_B4
  loc_A664A2: PopTmpLdAdStr
  loc_A664A6: FLdPr Me
  loc_A664A9: MemLdRfVar from_stack_1.global_52
  loc_A664AC: NewIfNullPr clsInmueble
  loc_A664AF: Call clsInmueble.Sort(from_stack_1v)
  loc_A664B4: FFree1Str var_B8
  loc_A664B7: FFreeAd var_88 = "": var_AC = ""
  loc_A664C0: FFree1Var var_98 = ""
  loc_A664C3: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'ACF444
  'Data Table: 46B018
  loc_ACF31C: FLdRfVar var_88
  loc_ACF31F: FLdPr Me
  loc_ACF322: MemLdRfVar from_stack_1.global_52
  loc_ACF325: NewIfNullPr clsInmueble
  loc_ACF328: from_stack_1 = clsInmueble.RecordCount
  loc_ACF32D: ILdRf var_88
  loc_ACF330: LitI4 0
  loc_ACF335: GtI4
  loc_ACF336: BranchF loc_ACF440
  loc_ACF339: FLdRfVar var_8A
  loc_ACF33C: FLdPr Me
  loc_ACF33F: MemLdRfVar from_stack_1.global_52
  loc_ACF342: NewIfNullPr clsInmueble
  loc_ACF345: from_stack_1 = clsInmueble.BOF
  loc_ACF34A: FLdI2 var_8A
  loc_ACF34D: BranchF loc_ACF35E
  loc_ACF350: FLdPr Me
  loc_ACF353: MemLdRfVar from_stack_1.global_52
  loc_ACF356: NewIfNullPr clsInmueble
  loc_ACF359: Call clsInmueble.MoveFirst()
  loc_ACF35E: FLdRfVar var_8A
  loc_ACF361: FLdPr Me
  loc_ACF364: MemLdRfVar from_stack_1.global_52
  loc_ACF367: NewIfNullPr clsInmueble
  loc_ACF36A: from_stack_1 = clsInmueble.EOF
  loc_ACF36F: FLdI2 var_8A
  loc_ACF372: BranchF loc_ACF383
  loc_ACF375: FLdPr Me
  loc_ACF378: MemLdRfVar from_stack_1.global_52
  loc_ACF37B: NewIfNullPr clsInmueble
  loc_ACF37E: Call clsInmueble.MoveLast()
  loc_ACF383: FLdRfVar var_B8
  loc_ACF386: FLdRfVar var_A8
  loc_ACF389: LitVarStr var_A4, "Sector"
  loc_ACF38E: PopAdLdVar
  loc_ACF38F: FLdRfVar var_94
  loc_ACF392: FLdRfVar var_90
  loc_ACF395: FLdPr Me
  loc_ACF398: MemLdRfVar from_stack_1.global_52
  loc_ACF39B: NewIfNullPr clsInmueble
  loc_ACF39E: from_stack_1v = clsInmueble.RsFrmGet()
  loc_ACF3A3: FLdPr var_90
  loc_ACF3A6:  = Me.Fields
  loc_ACF3AB: FLdPr var_94
  loc_ACF3AE: from_stack_2 = Me.Item(from_stack_1)
  loc_ACF3B3: FLdPr var_A8
  loc_ACF3B6:  = Me.Value
  loc_ACF3BB: FLdRfVar var_B8
  loc_ACF3BE: FStVar var_C8
  loc_ACF3C2: FFreeAd var_90 = "": var_94 = ""
  loc_ACF3CB: FLdRfVar var_C8
  loc_ACF3CE: LitVarStr var_A4, "Inmueble"
  loc_ACF3D3: HardType
  loc_ACF3D4: EqVarBool
  loc_ACF3D6: BranchF loc_ACF3F3
  loc_ACF3D9: LitStr "Inmueble"
  loc_ACF3DC: FLdPr Me
  loc_ACF3DF: VCallAd Control_ID_OficinaCbo
  loc_ACF3E2: FStAdFunc var_90
  loc_ACF3E5: FLdPr var_90
  loc_ACF3E8: Me.Text = from_stack_1
  loc_ACF3ED: FFree1Ad var_90
  loc_ACF3F0: Branch loc_ACF440
  loc_ACF3F3: FLdRfVar var_C8
  loc_ACF3F6: LitVarStr var_A4, "Comercio"
  loc_ACF3FB: HardType
  loc_ACF3FC: EqVarBool
  loc_ACF3FE: BranchF loc_ACF41B
  loc_ACF401: LitStr "Comercio"
  loc_ACF404: FLdPr Me
  loc_ACF407: VCallAd Control_ID_OficinaCbo
  loc_ACF40A: FStAdFunc var_90
  loc_ACF40D: FLdPr var_90
  loc_ACF410: Me.Text = from_stack_1
  loc_ACF415: FFree1Ad var_90
  loc_ACF418: Branch loc_ACF440
  loc_ACF41B: FLdRfVar var_C8
  loc_ACF41E: LitVarStr var_A4, "Facilidad"
  loc_ACF423: HardType
  loc_ACF424: EqVarBool
  loc_ACF426: BranchF loc_ACF440
  loc_ACF429: LitStr "Facilidad"
  loc_ACF42C: FLdPr Me
  loc_ACF42F: VCallAd Control_ID_OficinaCbo
  loc_ACF432: FStAdFunc var_90
  loc_ACF435: FLdPr var_90
  loc_ACF438: Me.Text = from_stack_1
  loc_ACF43D: FFree1Ad var_90
  loc_ACF440: ExitProcHresult
  loc_ACF441: GtCyR8
  loc_ACF442: FStStr var_5FFD
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9BE2C8
  'Data Table: 46B018
  loc_9BE2B4: FLdPr Me
  loc_9BE2B7: VCallAd Control_ID_FiltroMsk
  loc_9BE2BA: CVarAd
  loc_9BE2BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE2C3: FFree1Var var_94 = ""
  loc_9BE2C6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AC24E8
  'Data Table: 46B018
  loc_AC23EC: FLdRfVar var_8A
  loc_AC23EF: FLdPr Me
  loc_AC23F2: VCallAd Control_ID_FiltroCbo
  loc_AC23F5: FStAdFunc var_88
  loc_AC23F8: FLdPr var_88
  loc_AC23FB:  = Me.ListIndex
  loc_AC2400: FLdI2 var_8A
  loc_AC2403: FStI2 var_8C
  loc_AC2406: FFree1Ad var_88
  loc_AC2409: FLdI2 var_8C
  loc_AC240C: LitI2_Byte 0
  loc_AC240E: EqI2
  loc_AC240F: BranchF loc_AC2447
  loc_AC2412: LitStr "Sector que contiene "
  loc_AC2415: FLdPr Me
  loc_AC2418: VCallAd Control_ID_FiltroMsk
  loc_AC241B: FStAdFunc var_88
  loc_AC241E: FLdPr var_88
  loc_AC2421: LateIdLdVar var_9C DispID_22 0
  loc_AC2428: CStrVarTmp
  loc_AC2429: FStStrNoPop var_A0
  loc_AC242C: ConcatStr
  loc_AC242D: FStStrNoPop var_A4
  loc_AC2430: FLdPr Me
  loc_AC2433: MemStStrCopy
  loc_AC2437: FFreeStr var_A0 = ""
  loc_AC243E: FFree1Ad var_88
  loc_AC2441: FFree1Var var_9C = ""
  loc_AC2444: Branch loc_AC24C0
  loc_AC2447: FLdI2 var_8C
  loc_AC244A: LitI2_Byte 1
  loc_AC244C: EqI2
  loc_AC244D: BranchF loc_AC2485
  loc_AC2450: LitStr "Cuenta que es igual a "
  loc_AC2453: FLdPr Me
  loc_AC2456: VCallAd Control_ID_FiltroMsk
  loc_AC2459: FStAdFunc var_88
  loc_AC245C: FLdPr var_88
  loc_AC245F: LateIdLdVar var_9C DispID_22 0
  loc_AC2466: CStrVarTmp
  loc_AC2467: FStStrNoPop var_A0
  loc_AC246A: ConcatStr
  loc_AC246B: FStStrNoPop var_A4
  loc_AC246E: FLdPr Me
  loc_AC2471: MemStStrCopy
  loc_AC2475: FFreeStr var_A0 = ""
  loc_AC247C: FFree1Ad var_88
  loc_AC247F: FFree1Var var_9C = ""
  loc_AC2482: Branch loc_AC24C0
  loc_AC2485: FLdI2 var_8C
  loc_AC2488: LitI2_Byte 2
  loc_AC248A: EqI2
  loc_AC248B: BranchF loc_AC24C0
  loc_AC248E: LitStr "Apellido y Nombre que contiene. "
  loc_AC2491: FLdPr Me
  loc_AC2494: VCallAd Control_ID_FiltroMsk
  loc_AC2497: FStAdFunc var_88
  loc_AC249A: FLdPr var_88
  loc_AC249D: LateIdLdVar var_9C DispID_22 0
  loc_AC24A4: CStrVarTmp
  loc_AC24A5: FStStrNoPop var_A0
  loc_AC24A8: ConcatStr
  loc_AC24A9: FStStrNoPop var_A4
  loc_AC24AC: FLdPr Me
  loc_AC24AF: MemStStrCopy
  loc_AC24B3: FFreeStr var_A0 = ""
  loc_AC24BA: FFree1Ad var_88
  loc_AC24BD: FFree1Var var_9C = ""
  loc_AC24C0: FLdPr Me
  loc_AC24C3: VCallAd Control_ID_dgdABMS
  loc_AC24C6: FStAdFunc var_A8
  loc_AC24C9: FLdPr Me
  loc_AC24CC: MemLdStr global_64
  loc_AC24CF: FLdZeroAd var_A8
  loc_AC24D2: FStAdFunc var_88
  loc_AC24D5: FLdRfVar var_88
  loc_AC24D8: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_AC24DD: FFreeAd var_88 = ""
  loc_AC24E4: ExitProcHresult
  loc_AC24E5: GtR4
  loc_AC24E6: FStR4 var_5FFD
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9BE314
  'Data Table: 46B018
  loc_9BE2FC: ILdI2 KeyAscii
  loc_9BE2FF: CI4UI1
  loc_9BE300: LitI4 &HD
  loc_9BE305: EqI4
  loc_9BE306: BranchF loc_9BE313
  loc_9BE309: Call Proc_252_20_AA89CC()
  loc_9BE30E: Call cmdCancelar_Click()
  loc_9BE313: ExitProcHresult
End Sub

Private Sub CuentaTxt_GotFocus() '9BE238
  'Data Table: 46B018
  loc_9BE224: FLdPr Me
  loc_9BE227: VCallAd Control_ID_CuentaTxt
  loc_9BE22A: CVarAd
  loc_9BE22E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE233: FFree1Var var_94 = ""
  loc_9BE236: ExitProcHresult
End Sub

Private Sub CuentaTxt_Validate(Cancel As Boolean) 'AF95C0
  'Data Table: 46B018
  loc_AF93EC: FLdRfVar var_8A
  loc_AF93EF: FLdPr Me
  loc_AF93F2: VCallAd Control_ID_cmdCancelar
  loc_AF93F5: FStAdFunc var_88
  loc_AF93F8: FLdPr var_88
  loc_AF93FB:  = Me.Value
  loc_AF9400: FLdI2 var_8A
  loc_AF9403: NotI4
  loc_AF9404: FLdRfVar var_92
  loc_AF9407: FLdPr Me
  loc_AF940A: VCallAd Control_ID_CuentaTxt
  loc_AF940D: FStAdFunc var_90
  loc_AF9410: FLdPr var_90
  loc_AF9413:  = Me.Enabled
  loc_AF9418: FLdI2 var_92
  loc_AF941B: AndI4
  loc_AF941C: FFreeAd var_88 = ""
  loc_AF9423: BranchF loc_AF95BC
  loc_AF9426: FLdRfVar var_98
  loc_AF9429: FLdPr Me
  loc_AF942C: VCallAd Control_ID_OficinaCbo
  loc_AF942F: FStAdFunc var_88
  loc_AF9432: FLdPr var_88
  loc_AF9435:  = Me.Text
  loc_AF943A: ILdRf var_98
  loc_AF943D: LitStr "Inmueble"
  loc_AF9440: EqStr
  loc_AF9442: FFree1Str var_98
  loc_AF9445: FFree1Ad var_88
  loc_AF9448: BranchF loc_AF94AE
  loc_AF944B: FLdRfVar var_98
  loc_AF944E: FLdPr Me
  loc_AF9451: VCallAd Control_ID_CuentaTxt
  loc_AF9454: FStAdFunc var_88
  loc_AF9457: FLdPr var_88
  loc_AF945A:  = Me.Text
  loc_AF945F: LitI2_Byte 0
  loc_AF9461: ILdRf var_98
  loc_AF9464: ImpAdCallI2 Proc_18_47_B06848(, )
  loc_AF9469: FStStrNoPop var_9C
  loc_AF946C: FLdPr Me
  loc_AF946F: MemStStrCopy
  loc_AF9473: FFreeStr var_98 = ""
  loc_AF947A: FFree1Ad var_88
  loc_AF947D: FLdPr Me
  loc_AF9480: MemLdStr global_60
  loc_AF9483: LitStr vbNullString
  loc_AF9486: NeStr
  loc_AF9488: BranchF loc_AF94AE
  loc_AF948B: FLdPr Me
  loc_AF948E: MemLdStr global_60
  loc_AF9491: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF9496: FLdPr Me
  loc_AF9499: VCallAd Control_ID_CuentaTxt
  loc_AF949C: CVarAd
  loc_AF94A0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF94A5: FFree1Var var_AC = ""
  loc_AF94A8: LitI2_Byte &HFF
  loc_AF94AA: IStI2 Cancel
  loc_AF94AD: ExitProcHresult
  loc_AF94AE: FLdRfVar var_98
  loc_AF94B1: FLdPr Me
  loc_AF94B4: VCallAd Control_ID_OficinaCbo
  loc_AF94B7: FStAdFunc var_88
  loc_AF94BA: FLdPr var_88
  loc_AF94BD:  = Me.Text
  loc_AF94C2: ILdRf var_98
  loc_AF94C5: LitStr "Comercio"
  loc_AF94C8: EqStr
  loc_AF94CA: FFree1Str var_98
  loc_AF94CD: FFree1Ad var_88
  loc_AF94D0: BranchF loc_AF9536
  loc_AF94D3: FLdRfVar var_98
  loc_AF94D6: FLdPr Me
  loc_AF94D9: VCallAd Control_ID_CuentaTxt
  loc_AF94DC: FStAdFunc var_88
  loc_AF94DF: FLdPr var_88
  loc_AF94E2:  = Me.Text
  loc_AF94E7: LitI2_Byte 0
  loc_AF94E9: ILdRf var_98
  loc_AF94EC: ImpAdCallI2 Proc_18_63_BEBABC(, )
  loc_AF94F1: FStStrNoPop var_9C
  loc_AF94F4: FLdPr Me
  loc_AF94F7: MemStStrCopy
  loc_AF94FB: FFreeStr var_98 = ""
  loc_AF9502: FFree1Ad var_88
  loc_AF9505: FLdPr Me
  loc_AF9508: MemLdStr global_60
  loc_AF950B: LitStr vbNullString
  loc_AF950E: NeStr
  loc_AF9510: BranchF loc_AF9536
  loc_AF9513: FLdPr Me
  loc_AF9516: MemLdStr global_60
  loc_AF9519: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF951E: FLdPr Me
  loc_AF9521: VCallAd Control_ID_CuentaTxt
  loc_AF9524: CVarAd
  loc_AF9528: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF952D: FFree1Var var_AC = ""
  loc_AF9530: LitI2_Byte &HFF
  loc_AF9532: IStI2 Cancel
  loc_AF9535: ExitProcHresult
  loc_AF9536: FLdRfVar var_98
  loc_AF9539: FLdPr Me
  loc_AF953C: VCallAd Control_ID_OficinaCbo
  loc_AF953F: FStAdFunc var_88
  loc_AF9542: FLdPr var_88
  loc_AF9545:  = Me.Text
  loc_AF954A: ILdRf var_98
  loc_AF954D: LitStr "Facilidad"
  loc_AF9550: EqStr
  loc_AF9552: FFree1Str var_98
  loc_AF9555: FFree1Ad var_88
  loc_AF9558: BranchF loc_AF95BC
  loc_AF955B: FLdRfVar var_98
  loc_AF955E: FLdPr Me
  loc_AF9561: VCallAd Control_ID_CuentaTxt
  loc_AF9564: FStAdFunc var_88
  loc_AF9567: FLdPr var_88
  loc_AF956A:  = Me.Text
  loc_AF956F: ILdRf var_98
  loc_AF9572: ImpAdCallI2 Proc_18_92_A58BB0()
  loc_AF9577: FStStrNoPop var_9C
  loc_AF957A: FLdPr Me
  loc_AF957D: MemStStrCopy
  loc_AF9581: FFreeStr var_98 = ""
  loc_AF9588: FFree1Ad var_88
  loc_AF958B: FLdPr Me
  loc_AF958E: MemLdStr global_60
  loc_AF9591: LitStr vbNullString
  loc_AF9594: NeStr
  loc_AF9596: BranchF loc_AF95BC
  loc_AF9599: FLdPr Me
  loc_AF959C: MemLdStr global_60
  loc_AF959F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF95A4: FLdPr Me
  loc_AF95A7: VCallAd Control_ID_CuentaTxt
  loc_AF95AA: CVarAd
  loc_AF95AE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF95B3: FFree1Var var_AC = ""
  loc_AF95B6: LitI2_Byte &HFF
  loc_AF95B8: IStI2 Cancel
  loc_AF95BB: ExitProcHresult
  loc_AF95BC: ExitProcHresult
End Sub

Private Sub NudoPersMsk_UnknownEvent_0 '9BE280
  'Data Table: 46B018
  loc_9BE26C: FLdPr Me
  loc_9BE26F: VCallAd Control_ID_NudoPersMsk
  loc_9BE272: CVarAd
  loc_9BE276: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE27B: FFree1Var var_94 = ""
  loc_9BE27E: ExitProcHresult
End Sub

Private Sub NudoPersMsk_UnknownEvent_8 'AD5BF8
  'Data Table: 46B018
  loc_AD5AC4: FLdPr Me
  loc_AD5AC7: VCallAd Control_ID_NudoPersMsk
  loc_AD5ACA: FStAdFunc var_88
  loc_AD5ACD: FLdPr var_88
  loc_AD5AD0: LateIdLdVar var_98 DispID_22 0
  loc_AD5AD7: CStrVarTmp
  loc_AD5AD8: FStStrNoPop var_9C
  loc_AD5ADB: LitStr vbNullString
  loc_AD5ADE: EqStr
  loc_AD5AE0: FFree1Str var_9C
  loc_AD5AE3: FFree1Ad var_88
  loc_AD5AE6: FFree1Var var_98 = ""
  loc_AD5AE9: BranchF loc_AD5B0B
  loc_AD5AEC: LitI2_Byte 0
  loc_AD5AEE: CStrUI1
  loc_AD5AF0: CVarStr var_98
  loc_AD5AF3: PopAdLdVar
  loc_AD5AF4: FLdPr Me
  loc_AD5AF7: VCallAd Control_ID_NudoPersMsk
  loc_AD5AFA: FStAdFunc var_88
  loc_AD5AFD: FLdPr var_88
  loc_AD5B00: LateIdSt
  loc_AD5B05: FFree1Ad var_88
  loc_AD5B08: FFree1Var var_98 = ""
  loc_AD5B0B: FLdPr Me
  loc_AD5B0E: VCallAd Control_ID_NudoPersMsk
  loc_AD5B11: FStAdFunc var_88
  loc_AD5B14: FLdPr var_88
  loc_AD5B17: LateIdLdVar var_98 DispID_22 0
  loc_AD5B1E: CStrVarTmp
  loc_AD5B1F: FStStrNoPop var_9C
  loc_AD5B22: CR8Str
  loc_AD5B24: LitI2_Byte 0
  loc_AD5B26: CR8I2
  loc_AD5B27: GtR4
  loc_AD5B28: FFree1Str var_9C
  loc_AD5B2B: FFree1Ad var_88
  loc_AD5B2E: FFree1Var var_98 = ""
  loc_AD5B31: BranchF loc_AD5BDF
  loc_AD5B34: FLdPr Me
  loc_AD5B37: VCallAd Control_ID_NudoPersMsk
  loc_AD5B3A: FStAdFunc var_88
  loc_AD5B3D: FLdPr var_88
  loc_AD5B40: LateIdLdVar var_98 DispID_22 0
  loc_AD5B47: CStrVarTmp
  loc_AD5B48: FStStrNoPop var_9C
  loc_AD5B4B: ImpAdCallI2 Proc_18_67_A5789C()
  loc_AD5B50: FStStrNoPop var_B0
  loc_AD5B53: FLdPr Me
  loc_AD5B56: MemStStrCopy
  loc_AD5B5A: FFreeStr var_9C = ""
  loc_AD5B61: FFree1Ad var_88
  loc_AD5B64: FFree1Var var_98 = ""
  loc_AD5B67: FLdPr Me
  loc_AD5B6A: MemLdStr global_60
  loc_AD5B6D: LitStr vbNullString
  loc_AD5B70: NeStr
  loc_AD5B72: BranchF loc_AD5B9B
  loc_AD5B75: FLdPr Me
  loc_AD5B78: MemLdStr global_60
  loc_AD5B7B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD5B80: FLdPr Me
  loc_AD5B83: VCallAd Control_ID_NudoPersMsk
  loc_AD5B86: CVarAd
  loc_AD5B8A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD5B8F: FFree1Var var_98 = ""
  loc_AD5B92: LitI2_Byte &HFF
  loc_AD5B94: IStI2 Cancel
  loc_AD5B97: ExitProcHresult
  loc_AD5B98: Branch loc_AD5BDC
  loc_AD5B9B: FLdPr Me
  loc_AD5B9E: VCallAd Control_ID_NudoPersMsk
  loc_AD5BA1: FStAdFunc var_88
  loc_AD5BA4: FLdPr var_88
  loc_AD5BA7: LateIdLdVar var_98 DispID_22 0
  loc_AD5BAE: CStrVarTmp
  loc_AD5BAF: FStStrNoPop var_9C
  loc_AD5BB2: ImpAdCallI2 Proc_270_76_A77528()
  loc_AD5BB7: FStStrNoPop var_B0
  loc_AD5BBA: FLdPr Me
  loc_AD5BBD: VCallAd Control_ID_DetaPersLbl
  loc_AD5BC0: FStAdFunc var_B4
  loc_AD5BC3: FLdPr var_B4
  loc_AD5BC6: Me.Caption = from_stack_1
  loc_AD5BCB: FFreeStr var_9C = ""
  loc_AD5BD2: FFreeAd var_88 = ""
  loc_AD5BD9: FFree1Var var_98 = ""
  loc_AD5BDC: Branch loc_AD5BF6
  loc_AD5BDF: LitStr vbNullString
  loc_AD5BE2: FLdPr Me
  loc_AD5BE5: VCallAd Control_ID_DetaPersLbl
  loc_AD5BE8: FStAdFunc var_88
  loc_AD5BEB: FLdPr var_88
  loc_AD5BEE: Me.Caption = from_stack_1
  loc_AD5BF3: FFree1Ad var_88
  loc_AD5BF6: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AA3EBC
  'Data Table: 46B018
  loc_AA3DF4: LitVarStr var_94, vbNullString
  loc_AA3DF9: PopAdLdVar
  loc_AA3DFA: FLdPr Me
  loc_AA3DFD: VCallAd Control_ID_FiltroMsk
  loc_AA3E00: FStAdFunc var_A8
  loc_AA3E03: FLdPr var_A8
  loc_AA3E06: LateIdSt
  loc_AA3E0B: FFree1Ad var_A8
  loc_AA3E0E: LitVarStr var_94, vbNullString
  loc_AA3E13: PopAdLdVar
  loc_AA3E14: FLdPr Me
  loc_AA3E17: VCallAd Control_ID_FiltroMsk
  loc_AA3E1A: FStAdFunc var_A8
  loc_AA3E1D: FLdPr var_A8
  loc_AA3E20: LateIdSt
  loc_AA3E25: FFree1Ad var_A8
  loc_AA3E28: FLdRfVar var_AA
  loc_AA3E2B: FLdPr Me
  loc_AA3E2E: VCallAd Control_ID_FiltroCbo
  loc_AA3E31: FStAdFunc var_A8
  loc_AA3E34: FLdPr var_A8
  loc_AA3E37:  = Me.ListIndex
  loc_AA3E3C: FLdI2 var_AA
  loc_AA3E3F: FStI2 var_AC
  loc_AA3E42: FFree1Ad var_A8
  loc_AA3E45: FLdI2 var_AC
  loc_AA3E48: LitI2_Byte 0
  loc_AA3E4A: EqI2
  loc_AA3E4B: BranchF loc_AA3E6B
  loc_AA3E4E: LitVarStr var_94, vbNullString
  loc_AA3E53: PopAdLdVar
  loc_AA3E54: FLdPr Me
  loc_AA3E57: VCallAd Control_ID_FiltroMsk
  loc_AA3E5A: FStAdFunc var_A8
  loc_AA3E5D: FLdPr var_A8
  loc_AA3E60: LateIdSt
  loc_AA3E65: FFree1Ad var_A8
  loc_AA3E68: Branch loc_AA3EB4
  loc_AA3E6B: FLdI2 var_AC
  loc_AA3E6E: LitI2_Byte 1
  loc_AA3E70: EqI2
  loc_AA3E71: BranchF loc_AA3E91
  loc_AA3E74: LitVarStr var_94, "########"
  loc_AA3E79: PopAdLdVar
  loc_AA3E7A: FLdPr Me
  loc_AA3E7D: VCallAd Control_ID_FiltroMsk
  loc_AA3E80: FStAdFunc var_A8
  loc_AA3E83: FLdPr var_A8
  loc_AA3E86: LateIdSt
  loc_AA3E8B: FFree1Ad var_A8
  loc_AA3E8E: Branch loc_AA3EB4
  loc_AA3E91: FLdI2 var_AC
  loc_AA3E94: LitI2_Byte 2
  loc_AA3E96: EqI2
  loc_AA3E97: BranchF loc_AA3EB4
  loc_AA3E9A: LitVarStr var_94, vbNullString
  loc_AA3E9F: PopAdLdVar
  loc_AA3EA0: FLdPr Me
  loc_AA3EA3: VCallAd Control_ID_FiltroMsk
  loc_AA3EA6: FStAdFunc var_A8
  loc_AA3EA9: FLdPr var_A8
  loc_AA3EAC: LateIdSt
  loc_AA3EB1: FFree1Ad var_A8
  loc_AA3EB4: Call Proc_252_20_AA89CC()
  loc_AA3EB9: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BEA9E8
  'Data Table: 46B018
  loc_BEA210: ILdRf Button
  loc_BEA213: FStAd var_88 
  loc_BEA217: FLdRfVar var_8C
  loc_BEA21A: FLdPr var_88
  loc_BEA21D:  = Me.Key
  loc_BEA222: FLdZeroAd var_8C
  loc_BEA225: FStStr var_90
  loc_BEA228: ILdRf var_90
  loc_BEA22B: LitStr "btnCrear"
  loc_BEA22E: EqStr
  loc_BEA230: BranchF loc_BEA3AD
  loc_BEA233: LitI2_Byte 1
  loc_BEA235: FLdPr Me
  loc_BEA238: MemStI2 global_56
  loc_BEA23B: ILdRf Me
  loc_BEA23E: CastAd
  loc_BEA241: FStAdFunc var_94
  loc_BEA244: FLdRfVar var_94
  loc_BEA247: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BEA24C: FFree1Ad var_94
  loc_BEA24F: LitI4 0
  loc_BEA254: LitI4 0
  loc_BEA259: FLdRfVar var_98
  loc_BEA25C: Redim
  loc_BEA266: FLdPr Me
  loc_BEA269: VCallAd Control_ID_dgdABMS
  loc_BEA26C: CVarAd
  loc_BEA270: ParmAry1St
  loc_BEA276: FLdRfVar var_98
  loc_BEA279: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BEA27E: FLdRfVar var_98
  loc_BEA281: Erase
  loc_BEA282: ILdRf Me
  loc_BEA285: CastAd
  loc_BEA288: FStAdFunc var_94
  loc_BEA28B: FLdRfVar var_94
  loc_BEA28E: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BEA293: FFree1Ad var_94
  loc_BEA296: ILdRf Me
  loc_BEA299: CastAd
  loc_BEA29C: FStAdFunc var_94
  loc_BEA29F: FLdRfVar var_94
  loc_BEA2A2: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BEA2A7: FFree1Ad var_94
  loc_BEA2AA: LitStr "Inmueble"
  loc_BEA2AD: FLdPr Me
  loc_BEA2B0: VCallAd Control_ID_OficinaCbo
  loc_BEA2B3: FStAdFunc var_94
  loc_BEA2B6: FLdPr var_94
  loc_BEA2B9: Me.Text = from_stack_1
  loc_BEA2BE: FFree1Ad var_94
  loc_BEA2C1: LitI2_Byte 0
  loc_BEA2C3: CStrUI1
  loc_BEA2C5: FStStrNoPop var_8C
  loc_BEA2C8: FLdPr Me
  loc_BEA2CB: VCallAd Control_ID_CuentaTxt
  loc_BEA2CE: FStAdFunc var_94
  loc_BEA2D1: FLdPr var_94
  loc_BEA2D4: Me.Text = from_stack_1
  loc_BEA2D9: FFree1Str var_8C
  loc_BEA2DC: FFree1Ad var_94
  loc_BEA2DF: LitI2_Byte 0
  loc_BEA2E1: CStrUI1
  loc_BEA2E3: CVarStr var_A8
  loc_BEA2E6: PopAdLdVar
  loc_BEA2E7: FLdPr Me
  loc_BEA2EA: VCallAd Control_ID_NudoPersMsk
  loc_BEA2ED: FStAdFunc var_94
  loc_BEA2F0: FLdPr var_94
  loc_BEA2F3: LateIdSt
  loc_BEA2F8: FFree1Ad var_94
  loc_BEA2FB: FFree1Var var_A8 = ""
  loc_BEA2FE: LitI4 1
  loc_BEA303: LitI4 1
  loc_BEA308: LitVarStr var_C8, "0.00"
  loc_BEA30D: FStVarCopyObj var_D8
  loc_BEA310: FLdRfVar var_D8
  loc_BEA313: LitVarI2 var_A8, 0
  loc_BEA318: FLdRfVar var_E8
  loc_BEA31B: ImpAdCallFPR4  = Format(, )
  loc_BEA320: FLdRfVar var_E8
  loc_BEA323: CStrVarVal var_8C
  loc_BEA327: FLdPr Me
  loc_BEA32A: VCallAd Control_ID_ImpoBonoTxt
  loc_BEA32D: FStAdFunc var_94
  loc_BEA330: FLdPr var_94
  loc_BEA333: Me.Text = from_stack_1
  loc_BEA338: FFree1Str var_8C
  loc_BEA33B: FFree1Ad var_94
  loc_BEA33E: FFreeVar var_A8 = "": var_D8 = ""
  loc_BEA347: LitI4 0
  loc_BEA34C: LitI4 3
  loc_BEA351: FLdRfVar var_98
  loc_BEA354: Redim
  loc_BEA35E: FLdPr Me
  loc_BEA361: VCallAd Control_ID_OficinaCbo
  loc_BEA364: CVarAd
  loc_BEA368: ParmAry1St
  loc_BEA36E: FLdPr Me
  loc_BEA371: VCallAd Control_ID_CuentaTxt
  loc_BEA374: CVarAd
  loc_BEA378: ParmAry1St
  loc_BEA37E: FLdPr Me
  loc_BEA381: VCallAd Control_ID_NudoPersMsk
  loc_BEA384: CVarAd
  loc_BEA388: ParmAry1St
  loc_BEA38E: FLdPr Me
  loc_BEA391: VCallAd Control_ID_ImpoBonoTxt
  loc_BEA394: CVarAd
  loc_BEA398: ParmAry1St
  loc_BEA39E: FLdRfVar var_98
  loc_BEA3A1: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BEA3A6: FLdRfVar var_98
  loc_BEA3A9: Erase
  loc_BEA3AA: Branch loc_BEA9E6
  loc_BEA3AD: ILdRf var_90
  loc_BEA3B0: LitStr "btnModificar"
  loc_BEA3B3: EqStr
  loc_BEA3B5: BranchF loc_BEA499
  loc_BEA3B8: FLdRfVar var_FC
  loc_BEA3BB: FLdPr Me
  loc_BEA3BE: MemLdRfVar from_stack_1.global_52
  loc_BEA3C1: NewIfNullPr clsInmueble
  loc_BEA3C4: from_stack_1 = clsInmueble.RecordCount
  loc_BEA3C9: ILdRf var_FC
  loc_BEA3CC: LitI4 0
  loc_BEA3D1: GtI4
  loc_BEA3D2: BranchF loc_BEA48E
  loc_BEA3D5: LitI2_Byte 2
  loc_BEA3D7: FLdPr Me
  loc_BEA3DA: MemStI2 global_56
  loc_BEA3DD: ILdRf Me
  loc_BEA3E0: CastAd
  loc_BEA3E3: FStAdFunc var_94
  loc_BEA3E6: FLdRfVar var_94
  loc_BEA3E9: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BEA3EE: FFree1Ad var_94
  loc_BEA3F1: LitI4 0
  loc_BEA3F6: LitI4 0
  loc_BEA3FB: FLdRfVar var_98
  loc_BEA3FE: Redim
  loc_BEA408: FLdPr Me
  loc_BEA40B: VCallAd Control_ID_dgdABMS
  loc_BEA40E: CVarAd
  loc_BEA412: ParmAry1St
  loc_BEA418: FLdRfVar var_98
  loc_BEA41B: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BEA420: FLdRfVar var_98
  loc_BEA423: Erase
  loc_BEA424: ILdRf Me
  loc_BEA427: CastAd
  loc_BEA42A: FStAdFunc var_94
  loc_BEA42D: FLdRfVar var_94
  loc_BEA430: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BEA435: FFree1Ad var_94
  loc_BEA438: LitI4 0
  loc_BEA43D: LitI4 2
  loc_BEA442: FLdRfVar var_98
  loc_BEA445: Redim
  loc_BEA44F: FLdPr Me
  loc_BEA452: VCallAd Control_ID_NudoPersMsk
  loc_BEA455: CVarAd
  loc_BEA459: ParmAry1St
  loc_BEA45F: FLdPr Me
  loc_BEA462: VCallAd Control_ID_NoMostrarTxt
  loc_BEA465: CVarAd
  loc_BEA469: ParmAry1St
  loc_BEA46F: FLdPr Me
  loc_BEA472: VCallAd Control_ID_ImpoBonoTxt
  loc_BEA475: CVarAd
  loc_BEA479: ParmAry1St
  loc_BEA47F: FLdRfVar var_98
  loc_BEA482: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BEA487: FLdRfVar var_98
  loc_BEA48A: Erase
  loc_BEA48B: Branch loc_BEA496
  loc_BEA48E: LitStr "No se puede modificar"
  loc_BEA491: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEA496: Branch loc_BEA9E6
  loc_BEA499: ILdRf var_90
  loc_BEA49C: LitStr "btnEliminar"
  loc_BEA49F: EqStr
  loc_BEA4A1: BranchF loc_BEA623
  loc_BEA4A4: FLdRfVar var_FC
  loc_BEA4A7: FLdPr Me
  loc_BEA4AA: MemLdRfVar from_stack_1.global_52
  loc_BEA4AD: NewIfNullPr clsInmueble
  loc_BEA4B0: from_stack_1 = clsInmueble.RecordCount
  loc_BEA4B5: ILdRf var_FC
  loc_BEA4B8: LitI4 0
  loc_BEA4BD: GtI4
  loc_BEA4BE: BranchF loc_BEA618
  loc_BEA4C1: LitVar_Missing var_F8
  loc_BEA4C4: LitVar_Missing var_E8
  loc_BEA4C7: LitVar_Missing var_D8
  loc_BEA4CA: LitI4 4
  loc_BEA4CF: LitVarStr var_B8, "¿Desea sacar el descuednto por BONO?"
  loc_BEA4D4: FStVarCopyObj var_A8
  loc_BEA4D7: FLdRfVar var_A8
  loc_BEA4DA: ImpAdCallI2 MsgBox(, , , , )
  loc_BEA4DF: LitI4 6
  loc_BEA4E4: EqI4
  loc_BEA4E5: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_BEA4F0: BranchF loc_BEA615
  loc_BEA4F3: FLdRfVar var_A8
  loc_BEA4F6: FLdRfVar var_124
  loc_BEA4F9: LitVarStr var_B8, "Sector"
  loc_BEA4FE: PopAdLdVar
  loc_BEA4FF: FLdRfVar var_120
  loc_BEA502: FLdRfVar var_94
  loc_BEA505: FLdPr Me
  loc_BEA508: MemLdRfVar from_stack_1.global_52
  loc_BEA50B: NewIfNullPr clsInmueble
  loc_BEA50E: from_stack_1v = clsInmueble.RsFrmGet()
  loc_BEA513: FLdPr var_94
  loc_BEA516:  = Me.Fields
  loc_BEA51B: FLdPr var_120
  loc_BEA51E: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA523: FLdPr var_124
  loc_BEA526:  = Me.Value
  loc_BEA52B: FLdRfVar var_D8
  loc_BEA52E: FLdRfVar var_130
  loc_BEA531: LitVarStr var_C8, "Cuenta"
  loc_BEA536: PopAdLdVar
  loc_BEA537: FLdRfVar var_12C
  loc_BEA53A: FLdRfVar var_128
  loc_BEA53D: FLdPr Me
  loc_BEA540: MemLdRfVar from_stack_1.global_52
  loc_BEA543: NewIfNullPr clsInmueble
  loc_BEA546: from_stack_1v = clsInmueble.RsFrmGet()
  loc_BEA54B: FLdPr var_128
  loc_BEA54E:  = Me.Fields
  loc_BEA553: FLdPr var_12C
  loc_BEA556: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA55B: FLdPr var_130
  loc_BEA55E:  = Me.Value
  loc_BEA563: FLdRfVar var_138
  loc_BEA566: FLdPr Me
  loc_BEA569: VCallAd Control_ID_ImpoBonoTxt
  loc_BEA56C: FStAdFunc var_134
  loc_BEA56F: FLdPr var_134
  loc_BEA572:  = Me.Text
  loc_BEA577: ILdRf var_138
  loc_BEA57A: CR8Str
  loc_BEA57C: PopFPR8
  loc_BEA57D: LitI2_Byte 0
  loc_BEA57F: CUI1I2
  loc_BEA581: LitI4 0
  loc_BEA586: FLdRfVar var_D8
  loc_BEA589: CI4Var
  loc_BEA58B: FLdRfVar var_A8
  loc_BEA58E: CStrVarTmp
  loc_BEA58F: FStStrNoPop var_8C
  loc_BEA592: FLdPr Me
  loc_BEA595: MemLdRfVar from_stack_1.global_52
  loc_BEA598: NewIfNullPr clsInmueble
  loc_BEA59B: Call clsInmueble.ModificarDescuentoPorBono(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_BEA5A0: FFreeStr var_8C = ""
  loc_BEA5A7: FFreeAd var_94 = "": var_120 = "": var_128 = "": var_12C = "": var_124 = "": var_130 = ""
  loc_BEA5B8: FFreeVar var_A8 = ""
  loc_BEA5BF: Call Proc_252_20_AA89CC()
  loc_BEA5C4: FLdRfVar var_8C
  loc_BEA5C7: FLdPr Me
  loc_BEA5CA: VCallAd Control_ID_OficinaCbo
  loc_BEA5CD: FStAdFunc var_94
  loc_BEA5D0: FLdPr var_94
  loc_BEA5D3:  = Me.Text
  loc_BEA5D8: FLdRfVar var_138
  loc_BEA5DB: FLdPr Me
  loc_BEA5DE: VCallAd Control_ID_CuentaTxt
  loc_BEA5E1: FStAdFunc var_120
  loc_BEA5E4: FLdPr var_120
  loc_BEA5E7:  = Me.Text
  loc_BEA5EC: LitI2_Byte 0
  loc_BEA5EE: ILdRf var_138
  loc_BEA5F1: ILdRf var_8C
  loc_BEA5F4: FLdPr Me
  loc_BEA5F7: MemLdRfVar from_stack_1.global_52
  loc_BEA5FA: NewIfNullPr clsInmueble
  loc_BEA5FD: Call clsInmueble.EncontrarDescuenoPorBono(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BEA602: FFreeStr var_8C = ""
  loc_BEA609: FFreeAd var_94 = ""
  loc_BEA610: Call cmdCancelar_Click()
  loc_BEA615: Branch loc_BEA620
  loc_BEA618: LitStr "No se puede modificar"
  loc_BEA61B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEA620: Branch loc_BEA9E6
  loc_BEA623: ILdRf var_90
  loc_BEA626: LitStr "btnGuardar"
  loc_BEA629: EqStr
  loc_BEA62B: BranchF loc_BEA8E2
  loc_BEA62E: FLdPr Me
  loc_BEA631: MemLdI2 global_56
  loc_BEA634: FStI2 var_13A
  loc_BEA637: FLdI2 var_13A
  loc_BEA63A: LitI2_Byte 1
  loc_BEA63C: EqI2
  loc_BEA63D: BranchF loc_BEA71C
  loc_BEA640: FLdRfVar var_8C
  loc_BEA643: FLdPr Me
  loc_BEA646: VCallAd Control_ID_OficinaCbo
  loc_BEA649: FStAdFunc var_94
  loc_BEA64C: FLdPr var_94
  loc_BEA64F:  = Me.Text
  loc_BEA654: ILdRf var_8C
  loc_BEA657: FLdPr Me
  loc_BEA65A: MemStStrCopy
  loc_BEA65E: FFree1Str var_8C
  loc_BEA661: FFree1Ad var_94
  loc_BEA664: FLdRfVar var_8C
  loc_BEA667: FLdPr Me
  loc_BEA66A: VCallAd Control_ID_CuentaTxt
  loc_BEA66D: FStAdFunc var_94
  loc_BEA670: FLdPr var_94
  loc_BEA673:  = Me.Text
  loc_BEA678: ILdRf var_8C
  loc_BEA67B: FLdPr Me
  loc_BEA67E: MemStStrCopy
  loc_BEA682: FFree1Str var_8C
  loc_BEA685: FFree1Ad var_94
  loc_BEA688: FLdRfVar var_8C
  loc_BEA68B: FLdPr Me
  loc_BEA68E: VCallAd Control_ID_OficinaCbo
  loc_BEA691: FStAdFunc var_94
  loc_BEA694: FLdPr var_94
  loc_BEA697:  = Me.Text
  loc_BEA69C: FLdRfVar var_138
  loc_BEA69F: FLdPr Me
  loc_BEA6A2: VCallAd Control_ID_CuentaTxt
  loc_BEA6A5: FStAdFunc var_120
  loc_BEA6A8: FLdPr var_120
  loc_BEA6AB:  = Me.Text
  loc_BEA6B0: FLdPr Me
  loc_BEA6B3: VCallAd Control_ID_NudoPersMsk
  loc_BEA6B6: FStAdFunc var_124
  loc_BEA6B9: FLdPr var_124
  loc_BEA6BC: LateIdLdVar var_A8 DispID_22 0
  loc_BEA6C3: PopAd
  loc_BEA6C5: FLdRfVar var_140
  loc_BEA6C8: FLdPr Me
  loc_BEA6CB: VCallAd Control_ID_ImpoBonoTxt
  loc_BEA6CE: FStAdFunc var_128
  loc_BEA6D1: FLdPr var_128
  loc_BEA6D4:  = Me.Text
  loc_BEA6D9: ILdRf var_140
  loc_BEA6DC: CR8Str
  loc_BEA6DE: PopFPR8
  loc_BEA6DF: LitI2_Byte 1
  loc_BEA6E1: CUI1I2
  loc_BEA6E3: FLdRfVar var_A8
  loc_BEA6E6: CStrVarTmp
  loc_BEA6E7: FStStrNoPop var_144
  loc_BEA6EA: CI4Str
  loc_BEA6EB: ILdRf var_138
  loc_BEA6EE: CI4Str
  loc_BEA6EF: ILdRf var_8C
  loc_BEA6F2: FLdPr Me
  loc_BEA6F5: MemLdRfVar from_stack_1.global_52
  loc_BEA6F8: NewIfNullPr clsInmueble
  loc_BEA6FB: Call clsInmueble.ModificarDescuentoPorBono(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_BEA700: FFreeStr var_8C = "": var_138 = "": var_144 = ""
  loc_BEA70B: FFreeAd var_94 = "": var_120 = "": var_124 = ""
  loc_BEA716: FFree1Var var_A8 = ""
  loc_BEA719: Branch loc_BEA8B9
  loc_BEA71C: FLdI2 var_13A
  loc_BEA71F: LitI2_Byte 2
  loc_BEA721: EqI2
  loc_BEA722: BranchF loc_BEA8B9
  loc_BEA725: FLdRfVar var_A8
  loc_BEA728: FLdRfVar var_124
  loc_BEA72B: LitVarStr var_B8, "Sector"
  loc_BEA730: PopAdLdVar
  loc_BEA731: FLdRfVar var_120
  loc_BEA734: FLdRfVar var_94
  loc_BEA737: FLdPr Me
  loc_BEA73A: MemLdRfVar from_stack_1.global_52
  loc_BEA73D: NewIfNullPr clsInmueble
  loc_BEA740: from_stack_1v = clsInmueble.RsFrmGet()
  loc_BEA745: FLdPr var_94
  loc_BEA748:  = Me.Fields
  loc_BEA74D: FLdPr var_120
  loc_BEA750: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA755: FLdPr var_124
  loc_BEA758:  = Me.Value
  loc_BEA75D: FLdRfVar var_A8
  loc_BEA760: CStrVarTmp
  loc_BEA761: FStStrNoPop var_8C
  loc_BEA764: FLdPr Me
  loc_BEA767: MemStStrCopy
  loc_BEA76B: FFree1Str var_8C
  loc_BEA76E: FFreeAd var_94 = "": var_120 = ""
  loc_BEA777: FFree1Var var_A8 = ""
  loc_BEA77A: FLdRfVar var_A8
  loc_BEA77D: FLdRfVar var_124
  loc_BEA780: LitVarStr var_B8, "Cuenta"
  loc_BEA785: PopAdLdVar
  loc_BEA786: FLdRfVar var_120
  loc_BEA789: FLdRfVar var_94
  loc_BEA78C: FLdPr Me
  loc_BEA78F: MemLdRfVar from_stack_1.global_52
  loc_BEA792: NewIfNullPr clsInmueble
  loc_BEA795: from_stack_1v = clsInmueble.RsFrmGet()
  loc_BEA79A: FLdPr var_94
  loc_BEA79D:  = Me.Fields
  loc_BEA7A2: FLdPr var_120
  loc_BEA7A5: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA7AA: FLdPr var_124
  loc_BEA7AD:  = Me.Value
  loc_BEA7B2: FLdRfVar var_A8
  loc_BEA7B5: CStrVarTmp
  loc_BEA7B6: FStStrNoPop var_8C
  loc_BEA7B9: FLdPr Me
  loc_BEA7BC: MemStStrCopy
  loc_BEA7C0: FFree1Str var_8C
  loc_BEA7C3: FFreeAd var_94 = "": var_120 = ""
  loc_BEA7CC: FFree1Var var_A8 = ""
  loc_BEA7CF: FLdRfVar var_D8
  loc_BEA7D2: FLdRfVar var_124
  loc_BEA7D5: LitVarStr var_B8, "Sector"
  loc_BEA7DA: PopAdLdVar
  loc_BEA7DB: FLdRfVar var_120
  loc_BEA7DE: FLdRfVar var_94
  loc_BEA7E1: FLdPr Me
  loc_BEA7E4: MemLdRfVar from_stack_1.global_52
  loc_BEA7E7: NewIfNullPr clsInmueble
  loc_BEA7EA: from_stack_1v = clsInmueble.RsFrmGet()
  loc_BEA7EF: FLdPr var_94
  loc_BEA7F2:  = Me.Fields
  loc_BEA7F7: FLdPr var_120
  loc_BEA7FA: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA7FF: FLdPr var_124
  loc_BEA802:  = Me.Value
  loc_BEA807: FLdRfVar var_E8
  loc_BEA80A: FLdRfVar var_130
  loc_BEA80D: LitVarStr var_C8, "Cuenta"
  loc_BEA812: PopAdLdVar
  loc_BEA813: FLdRfVar var_12C
  loc_BEA816: FLdRfVar var_128
  loc_BEA819: FLdPr Me
  loc_BEA81C: MemLdRfVar from_stack_1.global_52
  loc_BEA81F: NewIfNullPr clsInmueble
  loc_BEA822: from_stack_1v = clsInmueble.RsFrmGet()
  loc_BEA827: FLdPr var_128
  loc_BEA82A:  = Me.Fields
  loc_BEA82F: FLdPr var_12C
  loc_BEA832: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA837: FLdPr var_130
  loc_BEA83A:  = Me.Value
  loc_BEA83F: FLdPr Me
  loc_BEA842: VCallAd Control_ID_NudoPersMsk
  loc_BEA845: FStAdFunc var_134
  loc_BEA848: FLdPr var_134
  loc_BEA84B: LateIdLdVar var_A8 DispID_22 0
  loc_BEA852: PopAd
  loc_BEA854: FLdRfVar var_8C
  loc_BEA857: FLdPr Me
  loc_BEA85A: VCallAd Control_ID_ImpoBonoTxt
  loc_BEA85D: FStAdFunc var_148
  loc_BEA860: FLdPr var_148
  loc_BEA863:  = Me.Text
  loc_BEA868: ILdRf var_8C
  loc_BEA86B: CR8Str
  loc_BEA86D: PopFPR8
  loc_BEA86E: LitI2_Byte 1
  loc_BEA870: CUI1I2
  loc_BEA872: FLdRfVar var_A8
  loc_BEA875: CStrVarTmp
  loc_BEA876: FStStrNoPop var_140
  loc_BEA879: CI4Str
  loc_BEA87A: FLdRfVar var_E8
  loc_BEA87D: CI4Var
  loc_BEA87F: FLdRfVar var_D8
  loc_BEA882: CStrVarTmp
  loc_BEA883: FStStrNoPop var_138
  loc_BEA886: FLdPr Me
  loc_BEA889: MemLdRfVar from_stack_1.global_52
  loc_BEA88C: NewIfNullPr clsInmueble
  loc_BEA88F: Call clsInmueble.ModificarDescuentoPorBono(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_BEA894: FFreeStr var_138 = "": var_140 = ""
  loc_BEA89D: FFreeAd var_94 = "": var_120 = "": var_128 = "": var_12C = "": var_134 = "": var_148 = "": var_124 = ""
  loc_BEA8B0: FFreeVar var_A8 = "": var_D8 = ""
  loc_BEA8B9: Call Proc_252_20_AA89CC()
  loc_BEA8BE: LitI2_Byte &HFF
  loc_BEA8C0: FLdPr Me
  loc_BEA8C3: MemLdStr global_72
  loc_BEA8C6: FLdPr Me
  loc_BEA8C9: MemLdStr global_68
  loc_BEA8CC: FLdPr Me
  loc_BEA8CF: MemLdRfVar from_stack_1.global_52
  loc_BEA8D2: NewIfNullPr clsInmueble
  loc_BEA8D5: Call clsInmueble.EncontrarDescuenoPorBono(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BEA8DA: Call cmdCancelar_Click()
  loc_BEA8DF: Branch loc_BEA9E6
  loc_BEA8E2: ILdRf var_90
  loc_BEA8E5: LitStr "btnCancelar"
  loc_BEA8E8: EqStr
  loc_BEA8EA: BranchF loc_BEA8F5
  loc_BEA8ED: Call cmdCancelar_Click()
  loc_BEA8F2: Branch loc_BEA9E6
  loc_BEA8F5: ILdRf var_90
  loc_BEA8F8: LitStr "btnPrimero"
  loc_BEA8FB: EqStr
  loc_BEA8FD: BranchF loc_BEA911
  loc_BEA900: FLdPr Me
  loc_BEA903: MemLdRfVar from_stack_1.global_52
  loc_BEA906: NewIfNullPr clsInmueble
  loc_BEA909: Call clsInmueble.MoveFirst()
  loc_BEA90E: Branch loc_BEA9E6
  loc_BEA911: ILdRf var_90
  loc_BEA914: LitStr "btnAnterior"
  loc_BEA917: EqStr
  loc_BEA919: BranchF loc_BEA92D
  loc_BEA91C: FLdPr Me
  loc_BEA91F: MemLdRfVar from_stack_1.global_52
  loc_BEA922: NewIfNullPr clsInmueble
  loc_BEA925: Call clsInmueble.MovePrevious()
  loc_BEA92A: Branch loc_BEA9E6
  loc_BEA92D: ILdRf var_90
  loc_BEA930: LitStr "btnSiguiente"
  loc_BEA933: EqStr
  loc_BEA935: BranchF loc_BEA949
  loc_BEA938: FLdPr Me
  loc_BEA93B: MemLdRfVar from_stack_1.global_52
  loc_BEA93E: NewIfNullPr clsInmueble
  loc_BEA941: Call clsInmueble.MoveNext()
  loc_BEA946: Branch loc_BEA9E6
  loc_BEA949: ILdRf var_90
  loc_BEA94C: LitStr "btnUltimo"
  loc_BEA94F: EqStr
  loc_BEA951: BranchF loc_BEA965
  loc_BEA954: FLdPr Me
  loc_BEA957: MemLdRfVar from_stack_1.global_52
  loc_BEA95A: NewIfNullPr clsInmueble
  loc_BEA95D: Call clsInmueble.MoveLast()
  loc_BEA962: Branch loc_BEA9E6
  loc_BEA965: ILdRf var_90
  loc_BEA968: LitStr "btnFiltrar"
  loc_BEA96B: EqStr
  loc_BEA96D: BranchF loc_BEA973
  loc_BEA970: Branch loc_BEA9E6
  loc_BEA973: ILdRf var_90
  loc_BEA976: LitStr "btnBuscar"
  loc_BEA979: EqStr
  loc_BEA97B: BranchF loc_BEA981
  loc_BEA97E: Branch loc_BEA9E6
  loc_BEA981: ILdRf var_90
  loc_BEA984: LitStr "btnImprimir"
  loc_BEA987: EqStr
  loc_BEA989: BranchF loc_BEA98F
  loc_BEA98C: Branch loc_BEA9E6
  loc_BEA98F: ILdRf var_90
  loc_BEA992: LitStr "btnAyuda"
  loc_BEA995: EqStr
  loc_BEA997: BranchF loc_BEA9C6
  loc_BEA99A: LitVar_Missing var_F8
  loc_BEA99D: LitVar_Missing var_E8
  loc_BEA9A0: LitVar_Missing var_D8
  loc_BEA9A3: LitI4 0
  loc_BEA9A8: LitVarStr var_B8, "Opcion no disponible en esta version."
  loc_BEA9AD: FStVarCopyObj var_A8
  loc_BEA9B0: FLdRfVar var_A8
  loc_BEA9B3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BEA9B8: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_BEA9C3: Branch loc_BEA9E6
  loc_BEA9C6: ILdRf var_90
  loc_BEA9C9: LitStr "btnSalir"
  loc_BEA9CC: EqStr
  loc_BEA9CE: BranchF loc_BEA9E6
  loc_BEA9D1: ILdRf Me
  loc_BEA9D4: FStAdNoPop
  loc_BEA9D8: ImpAdLdRf MemVar_D9C5D8
  loc_BEA9DB: NewIfNullPr Global
  loc_BEA9DE: Global.Unload from_stack_1
  loc_BEA9E3: FFree1Ad var_94
  loc_BEA9E6: ExitProcHresult
End Sub

Private Sub Form_Load() 'AFED40
  'Data Table: 46B018
  loc_AFEB5C: LitI2_Byte 0
  loc_AFEB5E: CR8I2
  loc_AFEB5F: PopFPR4
  loc_AFEB60: FLdPr Me
  loc_AFEB63: Me.Left = from_stack_1s
  loc_AFEB68: LitI2_Byte 0
  loc_AFEB6A: CR8I2
  loc_AFEB6B: PopFPR4
  loc_AFEB6C: FLdPr Me
  loc_AFEB6F: Me.Top = from_stack_1s
  loc_AFEB74: Call Proc_252_20_AA89CC()
  loc_AFEB79: LitI4 0
  loc_AFEB7E: LitI4 1
  loc_AFEB83: FLdRfVar var_88
  loc_AFEB86: Redim
  loc_AFEB90: FLdPr Me
  loc_AFEB93: MemLdRfVar from_stack_1.global_52
  loc_AFEB96: NewIfNullAd
  loc_AFEB99: FStAd var_8C 
  loc_AFEB9D: FLdRfVar var_8C
  loc_AFEBA0: CVarRef
  loc_AFEBA5: ParmAry1St
  loc_AFEBAB: FLdPr Me
  loc_AFEBAE: VCallAd Control_ID_dgdABMS
  loc_AFEBB1: CVarAd
  loc_AFEBB5: ParmAry1St
  loc_AFEBBB: FLdRfVar var_88
  loc_AFEBBE: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AFEBC3: ILdRf var_8C
  loc_AFEBC6: CastAd
  loc_AFEBC9: FLdPr Me
  loc_AFEBCC: MemStAdFunc
  loc_AFEBD0: FLdRfVar var_88
  loc_AFEBD3: Erase
  loc_AFEBD4: FFree1Ad var_8C
  loc_AFEBD7: FLdPr Me
  loc_AFEBDA: MemLdRfVar from_stack_1.global_52
  loc_AFEBDD: NewIfNullAd
  loc_AFEBE0: FStAd var_B0 
  loc_AFEBE4: FLdRfVar var_B0
  loc_AFEBE7: CVarRef
  loc_AFEBEC: ILdRf Me
  loc_AFEBEF: CastAd
  loc_AFEBF2: FStAdFunc var_8C
  loc_AFEBF5: FLdRfVar var_8C
  loc_AFEBF8: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AFEBFD: ILdRf var_B0
  loc_AFEC00: CastAd
  loc_AFEC03: FLdPr Me
  loc_AFEC06: MemStAdFunc
  loc_AFEC0A: FFreeAd var_8C = ""
  loc_AFEC11: ILdRf Me
  loc_AFEC14: CastAd
  loc_AFEC17: FStAdFunc var_8C
  loc_AFEC1A: FLdRfVar var_8C
  loc_AFEC1D: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AFEC22: FFree1Ad var_8C
  loc_AFEC25: LitI2_Byte 0
  loc_AFEC27: ILdRf Me
  loc_AFEC2A: CastAd
  loc_AFEC2D: FStAdFunc var_8C
  loc_AFEC30: FLdRfVar var_8C
  loc_AFEC33: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AFEC38: FFree1Ad var_8C
  loc_AFEC3B: LitVar_Missing var_9C
  loc_AFEC3E: PopAdLdVar
  loc_AFEC3F: LitStr "Inmueble"
  loc_AFEC42: FLdPr Me
  loc_AFEC45: VCallAd Control_ID_OficinaCbo
  loc_AFEC48: FStAdFunc var_8C
  loc_AFEC4B: FLdPr var_8C
  loc_AFEC4E: Me.AddItem from_stack_1, from_stack_2
  loc_AFEC53: FFree1Ad var_8C
  loc_AFEC56: LitVar_Missing var_9C
  loc_AFEC59: PopAdLdVar
  loc_AFEC5A: LitStr "Comercio"
  loc_AFEC5D: FLdPr Me
  loc_AFEC60: VCallAd Control_ID_OficinaCbo
  loc_AFEC63: FStAdFunc var_8C
  loc_AFEC66: FLdPr var_8C
  loc_AFEC69: Me.AddItem from_stack_1, from_stack_2
  loc_AFEC6E: FFree1Ad var_8C
  loc_AFEC71: LitVar_Missing var_9C
  loc_AFEC74: PopAdLdVar
  loc_AFEC75: LitStr "Facilidad"
  loc_AFEC78: FLdPr Me
  loc_AFEC7B: VCallAd Control_ID_OficinaCbo
  loc_AFEC7E: FStAdFunc var_8C
  loc_AFEC81: FLdPr var_8C
  loc_AFEC84: Me.AddItem from_stack_1, from_stack_2
  loc_AFEC89: FFree1Ad var_8C
  loc_AFEC8C: LitVarI2 var_9C, 0
  loc_AFEC91: PopAdLdVar
  loc_AFEC92: LitStr "Sector"
  loc_AFEC95: FLdPr Me
  loc_AFEC98: VCallAd Control_ID_FiltroCbo
  loc_AFEC9B: FStAdFunc var_8C
  loc_AFEC9E: FLdPr var_8C
  loc_AFECA1: Me.AddItem from_stack_1, from_stack_2
  loc_AFECA6: FFree1Ad var_8C
  loc_AFECA9: LitVarI2 var_9C, 1
  loc_AFECAE: PopAdLdVar
  loc_AFECAF: LitStr "Cuenta"
  loc_AFECB2: FLdPr Me
  loc_AFECB5: VCallAd Control_ID_FiltroCbo
  loc_AFECB8: FStAdFunc var_8C
  loc_AFECBB: FLdPr var_8C
  loc_AFECBE: Me.AddItem from_stack_1, from_stack_2
  loc_AFECC3: FFree1Ad var_8C
  loc_AFECC6: LitVarI2 var_9C, 2
  loc_AFECCB: PopAdLdVar
  loc_AFECCC: LitStr "Apellido y Nombre"
  loc_AFECCF: FLdPr Me
  loc_AFECD2: VCallAd Control_ID_FiltroCbo
  loc_AFECD5: FStAdFunc var_8C
  loc_AFECD8: FLdPr var_8C
  loc_AFECDB: Me.AddItem from_stack_1, from_stack_2
  loc_AFECE0: FFree1Ad var_8C
  loc_AFECE3: LitI2_Byte 0
  loc_AFECE5: FLdPr Me
  loc_AFECE8: VCallAd Control_ID_FiltroCbo
  loc_AFECEB: FStAdFunc var_8C
  loc_AFECEE: FLdPr var_8C
  loc_AFECF1: Me.ListIndex = from_stack_1
  loc_AFECF6: FFree1Ad var_8C
  loc_AFECF9: LitI4 0
  loc_AFECFE: LitI4 1
  loc_AFED03: FLdRfVar var_88
  loc_AFED06: Redim
  loc_AFED10: FLdPr Me
  loc_AFED13: VCallAd Control_ID_FiltroCbo
  loc_AFED16: CVarAd
  loc_AFED1A: ParmAry1St
  loc_AFED20: FLdPr Me
  loc_AFED23: VCallAd Control_ID_FiltroMsk
  loc_AFED26: CVarAd
  loc_AFED2A: ParmAry1St
  loc_AFED30: FLdRfVar var_88
  loc_AFED33: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AFED38: FLdRfVar var_88
  loc_AFED3B: Erase
  loc_AFED3C: ExitProcHresult
  loc_AFED3D: Ary1StFPR4
  loc_AFED3E: CRec2Ansi var_6000
End Sub

Private Sub Form_Activate() 'A61E00
  'Data Table: 46B018
  loc_A61DA4: FLdRfVar var_C2
  loc_A61DA7: FLdRfVar var_C0
  loc_A61DAA: LitVarI2 var_B8, 1
  loc_A61DAF: FLdPr Me
  loc_A61DB2: VCallAd Control_ID_tlbABMS
  loc_A61DB5: FStAdFunc var_88
  loc_A61DB8: FLdPr var_88
  loc_A61DBB: LateIdLdVar var_98 DispID_3 0
  loc_A61DC2: CastAdVar Me
  loc_A61DC6: FStAdFunc var_BC
  loc_A61DC9: FLdPr var_BC
  loc_A61DCC:  = Me.Buttons.ControlDefault
  loc_A61DD1: FLdPr var_C0
  loc_A61DD4:  = Me.Enabled
  loc_A61DD9: FLdI2 var_C2
  loc_A61DDC: FFreeAd var_88 = "": var_BC = ""
  loc_A61DE5: FFreeVar var_98 = ""
  loc_A61DEC: BranchF loc_A61DFD
  loc_A61DEF: FLdPr Me
  loc_A61DF2: MemLdRfVar from_stack_1.global_52
  loc_A61DF5: NewIfNullPr clsInmueble
  loc_A61DF8: Call clsInmueble.Requery()
  loc_A61DFD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9CE0BC
  'Data Table: 46B018
  loc_9CE0A4: ILdI2 KeyCode
  loc_9CE0A7: ILdRf Me
  loc_9CE0AA: CastAd
  loc_9CE0AD: FStAdFunc var_88
  loc_9CE0B0: FLdRfVar var_88
  loc_9CE0B3: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9CE0B8: FFree1Ad var_88
  loc_9CE0BB: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'ACCE50
  'Data Table: 46B018
  loc_ACCD38: LitI2_Byte 0
  loc_ACCD3A: FLdPr Me
  loc_ACCD3D: MemStI2 global_56
  loc_ACCD40: LitI2_Byte 0
  loc_ACCD42: ILdRf Me
  loc_ACCD45: CastAd
  loc_ACCD48: FStAdFunc var_88
  loc_ACCD4B: FLdRfVar var_88
  loc_ACCD4E: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_ACCD53: FFree1Ad var_88
  loc_ACCD56: LitI4 0
  loc_ACCD5B: LitI4 0
  loc_ACCD60: FLdRfVar var_8C
  loc_ACCD63: Redim
  loc_ACCD6D: FLdPr Me
  loc_ACCD70: VCallAd Control_ID_dgdABMS
  loc_ACCD73: CVarAd
  loc_ACCD77: ParmAry1St
  loc_ACCD7D: FLdRfVar var_8C
  loc_ACCD80: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ACCD85: FLdRfVar var_8C
  loc_ACCD88: Erase
  loc_ACCD89: FLdPr Me
  loc_ACCD8C: MemLdRfVar from_stack_1.global_52
  loc_ACCD8F: NewIfNullAd
  loc_ACCD92: FStAd var_A0 
  loc_ACCD96: FLdRfVar var_A0
  loc_ACCD99: CVarRef
  loc_ACCD9E: ILdRf Me
  loc_ACCDA1: CastAd
  loc_ACCDA4: FStAdFunc var_88
  loc_ACCDA7: FLdRfVar var_88
  loc_ACCDAA: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_ACCDAF: ILdRf var_A0
  loc_ACCDB2: CastAd
  loc_ACCDB5: FLdPr Me
  loc_ACCDB8: MemStAdFunc
  loc_ACCDBC: FFreeAd var_88 = ""
  loc_ACCDC3: ILdRf Me
  loc_ACCDC6: CastAd
  loc_ACCDC9: FStAdFunc var_88
  loc_ACCDCC: FLdRfVar var_88
  loc_ACCDCF: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_ACCDD4: FFree1Ad var_88
  loc_ACCDD7: LitI4 0
  loc_ACCDDC: LitI4 1
  loc_ACCDE1: FLdRfVar var_8C
  loc_ACCDE4: Redim
  loc_ACCDEE: FLdPr Me
  loc_ACCDF1: VCallAd Control_ID_FiltroCbo
  loc_ACCDF4: CVarAd
  loc_ACCDF8: ParmAry1St
  loc_ACCDFE: FLdPr Me
  loc_ACCE01: VCallAd Control_ID_FiltroMsk
  loc_ACCE04: CVarAd
  loc_ACCE08: ParmAry1St
  loc_ACCE0E: FLdRfVar var_8C
  loc_ACCE11: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ACCE16: FLdRfVar var_8C
  loc_ACCE19: Erase
  loc_ACCE1A: FLdPr Me
  loc_ACCE1D: VCallAd Control_ID_dgdABMS
  loc_ACCE20: FStAdFunc var_A0
  loc_ACCE23: FLdPr Me
  loc_ACCE26: MemLdStr global_64
  loc_ACCE29: FLdZeroAd var_A0
  loc_ACCE2C: FStAdFunc var_88
  loc_ACCE2F: FLdRfVar var_88
  loc_ACCE32: ImpAdCallFPR4 Proc_272_56_ACCA08(, )
  loc_ACCE37: FFreeAd var_88 = ""
  loc_ACCE3E: LitI2_Byte 0
  loc_ACCE40: LitVarI2 var_9C, 0
  loc_ACCE45: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_ACCE4A: FFree1Var var_9C = ""
  loc_ACCE4D: ExitProcHresult
  loc_ACCE4E: PopFPR8
End Sub

Private Function Proc_252_20_AA89CC() 'AA89CC
  'Data Table: 46B018
  loc_AA891C: LitI4 &HB
  loc_AA8921: CI2I4
  loc_AA8922: FLdPr Me
  loc_AA8925: Me.MousePointer = from_stack_1
  loc_AA892A: FLdPr Me
  loc_AA892D: VCallAd Control_ID_FiltroMsk
  loc_AA8930: FStAdFunc var_88
  loc_AA8933: FLdPr var_88
  loc_AA8936: LateIdLdVar var_98 DispID_22 0
  loc_AA893D: PopAd
  loc_AA893F: FLdPr Me
  loc_AA8942: VCallAd Control_ID_FiltroMsk
  loc_AA8945: FStAdFunc var_A0
  loc_AA8948: FLdPr var_A0
  loc_AA894B: LateIdLdVar var_B0 DispID_22 0
  loc_AA8952: PopAd
  loc_AA8954: LitVarStr var_E0, vbNullString
  loc_AA8959: FStVarCopyObj var_F0
  loc_AA895C: FLdRfVar var_F0
  loc_AA895F: FLdRfVar var_B0
  loc_AA8962: CStrVarTmp
  loc_AA8963: CVarStr var_D0
  loc_AA8966: FLdRfVar var_98
  loc_AA8969: CStrVarTmp
  loc_AA896A: FStStrNoPop var_9C
  loc_AA896D: LitStr vbNullString
  loc_AA8970: NeStr
  loc_AA8972: CVarBoolI2 var_C0
  loc_AA8976: FLdRfVar var_100
  loc_AA8979: ImpAdCallFPR4  = IIf(, , )
  loc_AA897E: FLdPr Me
  loc_AA8981: VCallAd Control_ID_FiltroCbo
  loc_AA8984: FStAdFuncNoPop
  loc_AA8987: FLdRfVar var_100
  loc_AA898A: CStrVarVal var_104
  loc_AA898E: FLdPr Me
  loc_AA8991: MemLdRfVar from_stack_1.global_52
  loc_AA8994: NewIfNullPr clsInmueble
  loc_AA8997: Call clsInmueble.sSelectDescuentoporBono(from_stack_1v, from_stack_2v)
  loc_AA899C: FFreeStr var_9C = ""
  loc_AA89A3: FFreeAd var_88 = "": var_A0 = ""
  loc_AA89AC: FFreeVar var_98 = "": var_B0 = "": var_C0 = "": var_D0 = "": var_F0 = ""
  loc_AA89BB: LitI4 0
  loc_AA89C0: CI2I4
  loc_AA89C1: FLdPr Me
  loc_AA89C4: Me.MousePointer = from_stack_1
  loc_AA89C9: ExitProcHresult
End Function
