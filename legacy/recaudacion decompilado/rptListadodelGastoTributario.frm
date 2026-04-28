VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodelGastoTributario
  Caption = "Listado del Gasto Tributario"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodelGastoTributario.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10692
  ClientHeight = 3276
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3024
    Width = 10692
    Height = 252
    TabIndex = 11
    OleObjectBlob = "rptListadodelGastoTributario.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9240
    Top = 1680
    Width = 855
    Height = 735
    TabIndex = 6
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptListadodelGastoTributario.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodelGastoTributario.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1560
    Width = 1815
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1560
    Width = 4095
    Height = 1215
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 3
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10455
    Height = 1335
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8760
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 5
    End
    Begin MSMask.MaskEdBox ActiConcMsk
      Left = 2040
      Top = 840
      Width = 1575
      Height = 360
      TabIndex = 1
      OleObjectBlob = "rptListadodelGastoTributario.frx":0C00
    End
    Begin MSMask.MaskEdBox PeriInfoMsk
      Left = 2040
      Top = 360
      Width = 735
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptListadodelGastoTributario.frx":0C9C
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1080
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 14
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Cuenta Contable:"
      Left = 120
      Top = 840
      Width = 1860
      Height = 300
      TabIndex = 13
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
    Begin VB.Label DetaActiLbl
      ForeColor = &HFF0000&
      Left = 3720
      Top = 840
      Width = 6615
      Height = 360
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9480
    Top = 1920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptListadodelGastoTributario.frx":0D04
  End
End

Attribute VB_Name = "rptListadodelGastoTributario"

Public bGenerado As Boolean

Private Type UDT_1_00560654
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_2_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdNueva_Click() 'AA3CB8
  'Data Table: 46943C
  loc_AA3BFC: LitI2_Byte 0
  loc_AA3BFE: FLdPr Me
  loc_AA3C01: MemStI2 bGenerado
  loc_AA3C04: LitI2_Byte 0
  loc_AA3C06: ILdRf Me
  loc_AA3C09: CastAd
  loc_AA3C0C: FStAdFunc var_88
  loc_AA3C0F: FLdRfVar var_88
  loc_AA3C12: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AA3C17: FFree1Ad var_88
  loc_AA3C1A: LitI2_Byte 0
  loc_AA3C1C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA3C21: CVarDate var_A8
  loc_AA3C25: FLdRfVar var_B8
  loc_AA3C28: ImpAdCallFPR4  = Year()
  loc_AA3C2D: FLdRfVar var_B8
  loc_AA3C30: CStrVarTmp
  loc_AA3C31: CVarStr var_C8
  loc_AA3C34: PopAdLdVar
  loc_AA3C35: FLdPr Me
  loc_AA3C38: VCallAd Control_ID_PeriInfoMsk
  loc_AA3C3B: FStAdFunc var_88
  loc_AA3C3E: FLdPr var_88
  loc_AA3C41: LateIdSt
  loc_AA3C46: FFree1Ad var_88
  loc_AA3C49: FFreeVar var_A8 = "": var_B8 = ""
  loc_AA3C52: LitVar_TRUE var_98
  loc_AA3C55: PopAdLdVar
  loc_AA3C56: FLdPr Me
  loc_AA3C59: VCallAd Control_ID_ActiConcMsk
  loc_AA3C5C: FStAdFunc var_88
  loc_AA3C5F: FLdPr var_88
  loc_AA3C62: LateIdSt
  loc_AA3C67: FFree1Ad var_88
  loc_AA3C6A: LitVarStr var_98, vbNullString
  loc_AA3C6F: PopAdLdVar
  loc_AA3C70: FLdPr Me
  loc_AA3C73: VCallAd Control_ID_ActiConcMsk
  loc_AA3C76: FStAdFunc var_88
  loc_AA3C79: FLdPr var_88
  loc_AA3C7C: LateIdSt
  loc_AA3C81: FFree1Ad var_88
  loc_AA3C84: LitStr vbNullString
  loc_AA3C87: FLdPr Me
  loc_AA3C8A: VCallAd Control_ID_DetaActiLbl
  loc_AA3C8D: FStAdFunc var_88
  loc_AA3C90: FLdPr var_88
  loc_AA3C93: Me.Caption = from_stack_1
  loc_AA3C98: FFree1Ad var_88
  loc_AA3C9B: Call HabilitarCriterio()
  loc_AA3CA0: ILdRf Me
  loc_AA3CA3: CastAd
  loc_AA3CA6: FStAdFunc var_88
  loc_AA3CA9: FLdRfVar var_88
  loc_AA3CAC: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AA3CB1: FFree1Ad var_88
  loc_AA3CB4: ExitProcHresult
  loc_AA3CB5: ImpAdLdI4 MemVar_66000000
End Sub

Private Sub cmdPrevia_Click() '9C8D04
  'Data Table: 46943C
  loc_9C8CEC: ILdRf Me
  loc_9C8CEF: CastAd
  loc_9C8CF2: FStAdFunc var_88
  loc_9C8CF5: FLdRfVar var_88
  loc_9C8CF8: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9C8CFD: FFree1Ad var_88
  loc_9C8D00: ExitProcHresult
  loc_9C8D01: NeI4
  loc_9C8D02: NewIfNullPr Me
End Sub

Private Sub cmdSalir_Click() 'A03A80
  'Data Table: 46943C
  loc_A03A50: LitVarStr var_94, "Cerrando..."
  loc_A03A55: PopAdLdVar
  loc_A03A56: FLdPr Me
  loc_A03A59: VCallAd Control_ID_statusBar
  loc_A03A5C: FStAdFunc var_A8
  loc_A03A5F: FLdPr var_A8
  loc_A03A62: LateIdSt
  loc_A03A67: FFree1Ad var_A8
  loc_A03A6A: ILdRf Me
  loc_A03A6D: FStAdNoPop
  loc_A03A71: ImpAdLdRf MemVar_D9C5D8
  loc_A03A74: NewIfNullPr Global
  loc_A03A77: Global.Unload from_stack_1
  loc_A03A7C: FFree1Ad var_A8
  loc_A03A7F: ExitProcHresult
End Sub

Private Sub Form_Load() '9E055C
  'Data Table: 46943C
  loc_9E0540: ILdRf Me
  loc_9E0543: CastAd
  loc_9E0546: FStAdFunc var_88
  loc_9E0549: FLdRfVar var_88
  loc_9E054C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E0551: FFree1Ad var_88
  loc_9E0554: Call cmdNueva_Click()
  loc_9E0559: ExitProcHresult
  loc_9E055A: OrI4
End Sub

Private Sub Form_Unload(Cancel As Integer) '9C854C
  'Data Table: 46943C
  loc_9C8534: FLdPr Me
  loc_9C8537: VCallAd Control_ID_wbbReporte
  loc_9C853A: FStAdFunc var_88
  loc_9C853D: FLdRfVar var_88
  loc_9C8540: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9C8545: FFree1Ad var_88
  loc_9C8548: ExitProcHresult
  loc_9C8549: LeI2
End Sub

Private Sub PeriInfoMsk_UnknownEvent_0 '9BCD20
  'Data Table: 46943C
  loc_9BCD0C: FLdPr Me
  loc_9BCD0F: VCallAd Control_ID_PeriInfoMsk
  loc_9BCD12: CVarAd
  loc_9BCD16: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCD1B: FFree1Var var_94 = ""
  loc_9BCD1E: ExitProcHresult
End Sub

Private Sub PeriInfoMsk_UnknownEvent_8 'A6E668
  'Data Table: 46943C
  loc_A6E600: FLdPr Me
  loc_A6E603: VCallAd Control_ID_PeriInfoMsk
  loc_A6E606: FStAdFunc var_88
  loc_A6E609: FLdPr var_88
  loc_A6E60C: LateIdLdVar var_98 DispID_22 0
  loc_A6E613: PopAd
  loc_A6E615: LitI2_Byte 0
  loc_A6E617: FLdRfVar var_98
  loc_A6E61A: CStrVarTmp
  loc_A6E61B: FStStrNoPop var_9C
  loc_A6E61E: LitStr "Periodo"
  loc_A6E621: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6E626: FStStrNoPop var_A0
  loc_A6E629: FLdPr Me
  loc_A6E62C: MemStStrCopy
  loc_A6E630: FFreeStr var_9C = ""
  loc_A6E637: FFree1Ad var_88
  loc_A6E63A: FFree1Var var_98 = ""
  loc_A6E63D: FLdPr Me
  loc_A6E640: VCallAd Control_ID_PeriInfoMsk
  loc_A6E643: FStAdFuncNoPop
  loc_A6E646: CastAd
  loc_A6E649: FStAdFunc var_A4
  loc_A6E64C: FLdRfVar var_A4
  loc_A6E64F: FLdPr Me
  loc_A6E652: MemLdStr global_116
  loc_A6E655: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6E65A: IStI2 Cancel
  loc_A6E65D: FFreeAd var_88 = ""
  loc_A6E664: ExitProcHresult
  loc_A6E665: GtCyR8
  loc_A6E666: FFreeVar  = ""
End Sub

Private Sub cmdPdf_Click() '9E05FC
  'Data Table: 46943C
  loc_9E05E0: LitI2_Byte 0
  loc_9E05E2: PopTmpLdAd2 var_8A
  loc_9E05E5: ILdRf Me
  loc_9E05E8: CastAd
  loc_9E05EB: FStAdFunc var_88
  loc_9E05EE: FLdRfVar var_88
  loc_9E05F1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E05F6: FFree1Ad var_88
  loc_9E05F9: ExitProcHresult
End Sub

Private Sub ActiConcMsk_UnknownEvent_0 '9BCC00
  'Data Table: 46943C
  loc_9BCBEC: FLdPr Me
  loc_9BCBEF: VCallAd Control_ID_ActiConcMsk
  loc_9BCBF2: CVarAd
  loc_9BCBF6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCBFB: FFree1Var var_94 = ""
  loc_9BCBFE: ExitProcHresult
End Sub

Private Function ActiConcMsk_UnknownEvent_8(arg_C) 'AEEFF8
  'Data Table: 46943C
  loc_AEEE78: FLdPr Me
  loc_AEEE7B: VCallAd Control_ID_ActiConcMsk
  loc_AEEE7E: FStAdFunc var_88
  loc_AEEE81: FLdPr var_88
  loc_AEEE84: LateIdLdVar var_98 DispID_22 0
  loc_AEEE8B: CStrVarTmp
  loc_AEEE8C: FStStrNoPop var_9C
  loc_AEEE8F: LitStr vbNullString
  loc_AEEE92: NeStr
  loc_AEEE94: FFree1Str var_9C
  loc_AEEE97: FFree1Ad var_88
  loc_AEEE9A: FFree1Var var_98 = ""
  loc_AEEE9D: BranchF loc_AEEFE0
  loc_AEEEA0: FLdPr Me
  loc_AEEEA3: VCallAd Control_ID_PeriInfoMsk
  loc_AEEEA6: FStAdFunc var_88
  loc_AEEEA9: FLdPr var_88
  loc_AEEEAC: LateIdLdVar var_98 DispID_22 0
  loc_AEEEB3: PopAd
  loc_AEEEB5: FLdPr Me
  loc_AEEEB8: VCallAd Control_ID_ActiConcMsk
  loc_AEEEBB: FStAdFunc var_A0
  loc_AEEEBE: FLdPr var_A0
  loc_AEEEC1: LateIdLdVar var_B0 DispID_22 0
  loc_AEEEC8: PopAd
  loc_AEEECA: LitI4 0
  loc_AEEECF: LitI4 0
  loc_AEEED4: FLdRfVar var_B8
  loc_AEEED7: Redim
  loc_AEEEE1: LitVarStr var_C8, "1"
  loc_AEEEE6: LitI4 0
  loc_AEEEEB: ILdRf var_B8
  loc_AEEEEE: Ary1StVarCopy
  loc_AEEEF0: FLdRfVar var_B8
  loc_AEEEF3: FLdRfVar var_B0
  loc_AEEEF6: CStrVarTmp
  loc_AEEEF7: FStStrNoPop var_B4
  loc_AEEEFA: FLdRfVar var_98
  loc_AEEEFD: CStrVarTmp
  loc_AEEEFE: FStStrNoPop var_9C
  loc_AEEF01: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AEEF06: FStStr var_CC
  loc_AEEF09: FLdRfVar var_B8
  loc_AEEF0C: Erase
  loc_AEEF0D: ILdRf var_CC
  loc_AEEF10: FLdPr Me
  loc_AEEF13: MemStStrCopy
  loc_AEEF17: FFreeStr var_9C = "": var_B4 = ""
  loc_AEEF20: FFreeAd var_88 = ""
  loc_AEEF27: FFreeVar var_98 = ""
  loc_AEEF2E: FLdPr Me
  loc_AEEF31: VCallAd Control_ID_ActiConcMsk
  loc_AEEF34: FStAdFuncNoPop
  loc_AEEF37: CastAd
  loc_AEEF3A: FStAdFunc var_A0
  loc_AEEF3D: FLdRfVar var_A0
  loc_AEEF40: FLdPr Me
  loc_AEEF43: MemLdStr global_116
  loc_AEEF46: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AEEF4B: IStI2 arg_C
  loc_AEEF4E: FFreeAd var_88 = ""
  loc_AEEF55: ILdI2 arg_C
  loc_AEEF58: NotI4
  loc_AEEF59: BranchF loc_AEEFC6
  loc_AEEF5C: FLdPr Me
  loc_AEEF5F: VCallAd Control_ID_PeriInfoMsk
  loc_AEEF62: FStAdFunc var_88
  loc_AEEF65: FLdPr var_88
  loc_AEEF68: LateIdLdVar var_98 DispID_22 0
  loc_AEEF6F: PopAd
  loc_AEEF71: FLdPr Me
  loc_AEEF74: VCallAd Control_ID_ActiConcMsk
  loc_AEEF77: FStAdFunc var_A0
  loc_AEEF7A: FLdPr var_A0
  loc_AEEF7D: LateIdLdVar var_B0 DispID_22 0
  loc_AEEF84: CStrVarTmp
  loc_AEEF85: FStStrNoPop var_B4
  loc_AEEF88: FLdRfVar var_98
  loc_AEEF8B: CStrVarTmp
  loc_AEEF8C: FStStrNoPop var_9C
  loc_AEEF8F: CI2Str
  loc_AEEF91: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AEEF96: FStStrNoPop var_CC
  loc_AEEF99: FLdPr Me
  loc_AEEF9C: VCallAd Control_ID_DetaActiLbl
  loc_AEEF9F: FStAdFunc var_D0
  loc_AEEFA2: FLdPr var_D0
  loc_AEEFA5: Me.Caption = from_stack_1
  loc_AEEFAA: FFreeStr var_9C = "": var_B4 = ""
  loc_AEEFB3: FFreeAd var_88 = "": var_A0 = ""
  loc_AEEFBC: FFreeVar var_98 = ""
  loc_AEEFC3: Branch loc_AEEFDD
  loc_AEEFC6: LitStr vbNullString
  loc_AEEFC9: FLdPr Me
  loc_AEEFCC: VCallAd Control_ID_DetaActiLbl
  loc_AEEFCF: FStAdFunc var_88
  loc_AEEFD2: FLdPr var_88
  loc_AEEFD5: Me.Caption = from_stack_1
  loc_AEEFDA: FFree1Ad var_88
  loc_AEEFDD: Branch loc_AEEFF7
  loc_AEEFE0: LitStr "TODAS LAS CUENTAS"
  loc_AEEFE3: FLdPr Me
  loc_AEEFE6: VCallAd Control_ID_DetaActiLbl
  loc_AEEFE9: FStAdFunc var_88
  loc_AEEFEC: FLdPr var_88
  loc_AEEFEF: Me.Caption = from_stack_1
  loc_AEEFF4: FFree1Ad var_88
  loc_AEEFF7: ExitProcHresult
End Function

Private Sub ActiConcMsk_KeyPress(KeyAscii As Integer) 'AB77E4
  'Data Table: 46943C
  loc_AB7708: ILdI2 KeyAscii
  loc_AB770B: LitI2_Byte &H20
  loc_AB770D: EqI2
  loc_AB770E: BranchF loc_AB77E2
  loc_AB7711: LitI2_Byte 0
  loc_AB7713: IStI2 KeyAscii
  loc_AB7716: ImpAdLdRf MemVar_D9468C
  loc_AB7719: NewIfNullAd
  loc_AB771C: FStAd var_88 
  loc_AB7720: LitStr "SELECT DISTINCT(CodiCuco), cu.* FROM infogov.cuentacontable as cu"
  loc_AB7723: LitStr " LEFT JOIN concepto as co ON co.PeriInfo = cu.PeriInfo AND co.ActiConc = cu.CodiCuco AND ActiConc <> ''"
  loc_AB7726: ConcatStr
  loc_AB7727: FStStrNoPop var_8C
  loc_AB772A: LitStr " WHERE co.PeriInfo = "
  loc_AB772D: ConcatStr
  loc_AB772E: FStStrNoPop var_A4
  loc_AB7731: FLdPr Me
  loc_AB7734: VCallAd Control_ID_PeriInfoMsk
  loc_AB7737: FStAdFunc var_90
  loc_AB773A: FLdPr var_90
  loc_AB773D: LateIdLdVar var_A0 DispID_22 0
  loc_AB7744: CStrVarTmp
  loc_AB7745: FStStrNoPop var_A8
  loc_AB7748: ConcatStr
  loc_AB7749: FStStrNoPop var_AC
  loc_AB774C: LitStr " ORDER BY co.ActiConc"
  loc_AB774F: ConcatStr
  loc_AB7750: FStStrNoPop var_B0
  loc_AB7753: FLdPr var_88
  loc_AB7756: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AB775B: FFreeStr var_8C = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AB7768: FFree1Ad var_90
  loc_AB776B: FFree1Var var_A0 = ""
  loc_AB776E: LitVar_Missing var_D0
  loc_AB7771: PopAdLdVar
  loc_AB7772: LitVarI4
  loc_AB777A: PopAdLdVar
  loc_AB777B: FLdPr var_88
  loc_AB777E: Me.Show from_stack_1, from_stack_2
  loc_AB7783: FLdRfVar var_8C
  loc_AB7786: FLdPr var_88
  loc_AB7789: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AB778E: FLdZeroAd var_8C
  loc_AB7791: CVarStr var_A0
  loc_AB7794: PopAdLdVar
  loc_AB7795: FLdPr Me
  loc_AB7798: VCallAd Control_ID_ActiConcMsk
  loc_AB779B: FStAdFunc var_90
  loc_AB779E: FLdPr var_90
  loc_AB77A1: LateIdSt
  loc_AB77A6: FFree1Ad var_90
  loc_AB77A9: FFree1Var var_A0 = ""
  loc_AB77AC: LitStr vbNullString
  loc_AB77AF: FLdPr var_88
  loc_AB77B2: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AB77B7: FLdRfVar var_8C
  loc_AB77BA: FLdPr var_88
  loc_AB77BD: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AB77C2: ILdRf var_8C
  loc_AB77C5: FLdPr Me
  loc_AB77C8: VCallAd Control_ID_DetaActiLbl
  loc_AB77CB: FStAdFunc var_90
  loc_AB77CE: FLdPr var_90
  loc_AB77D1: Me.Caption = from_stack_1
  loc_AB77D6: FFree1Str var_8C
  loc_AB77D9: FFree1Ad var_90
  loc_AB77DC: LitNothing
  loc_AB77DE: FStAd var_88 
  loc_AB77E2: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A16930
  'Data Table: 46943C
  loc_A168F8: FLdPr Me
  loc_A168FB: VCallAd Control_ID_statusBar
  loc_A168FE: FStAdFunc var_88
  loc_A16901: FLdPr var_88
  loc_A16904: LateIdLdVar var_98 DispID_1 0
  loc_A1690B: CStrVarTmp
  loc_A1690C: CVarStr var_A8
  loc_A1690F: PopAdLdVar
  loc_A16910: FLdPr Me
  loc_A16913: VCallAd Control_ID_statusBar
  loc_A16916: FStAdFunc var_BC
  loc_A16919: FLdPr var_BC
  loc_A1691C: LateIdSt
  loc_A16921: FFreeAd var_88 = ""
  loc_A16928: FFreeVar var_98 = ""
  loc_A1692F: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9C8B88
  'Data Table: 46943C
  loc_9C8B70: LitI2_Byte 0
  loc_9C8B72: ILdRf Me
  loc_9C8B75: CastAd
  loc_9C8B78: FStAdFunc var_88
  loc_9C8B7B: FLdRfVar var_88
  loc_9C8B7E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C8B83: FFree1Ad var_88
  loc_9C8B86: ExitProcHresult
End Sub

Public Function bGeneradoGet() '46A010
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46A01F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A11C3C
  'Data Table: 46943C
  loc_A11C08: LitI4 0
  loc_A11C0D: LitI4 0
  loc_A11C12: FLdRfVar var_88
  loc_A11C15: Redim
  loc_A11C1F: FLdPr Me
  loc_A11C22: VCallAd Control_ID_PeriInfoMsk
  loc_A11C25: CVarAd
  loc_A11C29: ParmAry1St
  loc_A11C2F: FLdRfVar var_88
  loc_A11C32: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A11C37: FLdRfVar var_88
  loc_A11C3A: Erase
  loc_A11C3B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BAB33C
  'Data Table: 46943C
  loc_BAAD34: FLdPr Me
  loc_BAAD37: MemLdI2 bGenerado
  loc_BAAD3A: BranchF loc_BAAD3E
  loc_BAAD3D: ExitProcHresult
  loc_BAAD3E: LitVarStr var_94, "Generando reporte..."
  loc_BAAD43: PopAdLdVar
  loc_BAAD44: FLdPr Me
  loc_BAAD47: VCallAd Control_ID_statusBar
  loc_BAAD4A: FStAdFunc var_A8
  loc_BAAD4D: FLdPr var_A8
  loc_BAAD50: LateIdSt
  loc_BAAD55: FFree1Ad var_A8
  loc_BAAD58: LitI4 &HB
  loc_BAAD5D: CI2I4
  loc_BAAD5E: FLdPr Me
  loc_BAAD61: Me.MousePointer = from_stack_1
  loc_BAAD66: LitI2_Byte 0
  loc_BAAD68: PopTmpLdAd2 var_AA
  loc_BAAD6B: Call PeriInfoMsk_UnknownEvent_8()
  loc_BAAD70: FLdPr Me
  loc_BAAD73: MemLdStr global_116
  loc_BAAD76: LitStr vbNullString
  loc_BAAD79: NeStr
  loc_BAAD7B: BranchF loc_BAAD81
  loc_BAAD7E: Branch loc_BAB311
  loc_BAAD81: LitI2_Byte 0
  loc_BAAD83: PopTmpLdAd2 var_AA
  loc_BAAD86: from_stack_2v = ActiConcMsk_UnknownEvent_8(from_stack_1v)
  loc_BAAD8B: FLdPr Me
  loc_BAAD8E: MemLdStr global_116
  loc_BAAD91: LitStr vbNullString
  loc_BAAD94: NeStr
  loc_BAAD96: BranchF loc_BAAD9C
  loc_BAAD99: Branch loc_BAB311
  loc_BAAD9C: LitStr vbNullString
  loc_BAAD9F: FLdPr Me
  loc_BAADA2: MemStStrCopy
  loc_BAADA6: LitStr vbNullString
  loc_BAADA9: FLdPr Me
  loc_BAADAC: MemStStrCopy
  loc_BAADB0: LitStr "0"
  loc_BAADB3: FLdPr Me
  loc_BAADB6: MemStStrCopy
  loc_BAADBA: LitStr "0"
  loc_BAADBD: FLdPr Me
  loc_BAADC0: MemStStrCopy
  loc_BAADC4: LitStr "0"
  loc_BAADC7: FLdPr Me
  loc_BAADCA: MemStStrCopy
  loc_BAADCE: LitStr "0"
  loc_BAADD1: FLdPr Me
  loc_BAADD4: MemStStrCopy
  loc_BAADD8: FLdPr Me
  loc_BAADDB: MemLdRfVar from_stack_1.global_76
  loc_BAADDE: NewIfNullAd
  loc_BAADE1: FStAd var_B0 
  loc_BAADE5: FLdPr Me
  loc_BAADE8: VCallAd Control_ID_ActiConcMsk
  loc_BAADEB: FStAdFunc var_A8
  loc_BAADEE: FLdPr var_A8
  loc_BAADF1: LateIdLdVar var_C0 DispID_22 0
  loc_BAADF8: CStrVarTmp
  loc_BAADF9: FStStrNoPop var_C4
  loc_BAADFC: LitStr vbNullString
  loc_BAADFF: NeStr
  loc_BAAE01: FFree1Str var_C4
  loc_BAAE04: FFree1Ad var_A8
  loc_BAAE07: FFree1Var var_C0 = ""
  loc_BAAE0A: BranchF loc_BAB04B
  loc_BAAE0D: LitI4 0
  loc_BAAE12: LitI4 1
  loc_BAAE17: FLdPr Me
  loc_BAAE1A: MemLdRfVar from_stack_1.global_88
  loc_BAAE1D: Redim
  loc_BAAE27: LitStr " DROP TEMPORARY TABLE IF EXISTS tribu; "
  loc_BAAE2A: LitStr " CREATE TEMPORARY TABLE tribu"
  loc_BAAE2D: ConcatStr
  loc_BAAE2E: FStStrNoPop var_C4
  loc_BAAE31: LitStr " SELECT ActiConc, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct,"
  loc_BAAE34: ConcatStr
  loc_BAAE35: FStStrNoPop var_C8
  loc_BAAE38: LitStr " sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct,"
  loc_BAAE3B: ConcatStr
  loc_BAAE3C: FStStrNoPop var_CC
  loc_BAAE3F: LitStr " sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct  FROM ctacte"
  loc_BAAE42: ConcatStr
  loc_BAAE43: FStStrNoPop var_D0
  loc_BAAE46: LitStr " INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_BAAE49: ConcatStr
  loc_BAAE4A: FStStrNoPop var_D4
  loc_BAAE4D: FLdPr Me
  loc_BAAE50: VCallAd Control_ID_PeriInfoMsk
  loc_BAAE53: FStAdFunc var_A8
  loc_BAAE56: FLdPr var_A8
  loc_BAAE59: LateIdLdVar var_C0 DispID_22 0
  loc_BAAE60: CStrVarTmp
  loc_BAAE61: FStStrNoPop var_D8
  loc_BAAE64: ConcatStr
  loc_BAAE65: FStStrNoPop var_DC
  loc_BAAE68: LitStr " AND concepto.ActiConc <> ''"
  loc_BAAE6B: ConcatStr
  loc_BAAE6C: FStStrNoPop var_E0
  loc_BAAE6F: LitStr " WHERE Year(FealCtct) = "
  loc_BAAE72: ConcatStr
  loc_BAAE73: FStStrNoPop var_F8
  loc_BAAE76: FLdPr Me
  loc_BAAE79: VCallAd Control_ID_PeriInfoMsk
  loc_BAAE7C: FStAdFunc var_E4
  loc_BAAE7F: FLdPr var_E4
  loc_BAAE82: LateIdLdVar var_F4 DispID_22 0
  loc_BAAE89: CStrVarTmp
  loc_BAAE8A: FStStrNoPop var_FC
  loc_BAAE8D: ConcatStr
  loc_BAAE8E: FStStrNoPop var_100
  loc_BAAE91: LitStr " AND concepto.ActiConc = '"
  loc_BAAE94: ConcatStr
  loc_BAAE95: FStStrNoPop var_118
  loc_BAAE98: FLdPr Me
  loc_BAAE9B: VCallAd Control_ID_ActiConcMsk
  loc_BAAE9E: FStAdFunc var_104
  loc_BAAEA1: FLdPr var_104
  loc_BAAEA4: LateIdLdVar var_114 DispID_22 0
  loc_BAAEAB: CStrVarTmp
  loc_BAAEAC: FStStrNoPop var_11C
  loc_BAAEAF: ConcatStr
  loc_BAAEB0: FStStrNoPop var_120
  loc_BAAEB3: LitStr "'"
  loc_BAAEB6: ConcatStr
  loc_BAAEB7: FStStrNoPop var_124
  loc_BAAEBA: LitStr " GROUP BY ActiConc"
  loc_BAAEBD: ConcatStr
  loc_BAAEBE: FStStrNoPop var_128
  loc_BAAEC1: FLdPr var_B0
  loc_BAAEC4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BAAEC9: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F8 = "": var_FC = "": var_100 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_BAAEEC: FFreeAd var_A8 = "": var_E4 = ""
  loc_BAAEF5: FFreeVar var_C0 = "": var_F4 = ""
  loc_BAAEFE: LitStr "SELECT tribu.ActiConc, DetaCuco, CondCtct, ExenCtct, DescCtct,"
  loc_BAAF01: LitStr " CondCtct+ExenCtct+DescCtct as TotaCtct"
  loc_BAAF04: ConcatStr
  loc_BAAF05: FStStrNoPop var_C4
  loc_BAAF08: LitStr " FROM tribu LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = "
  loc_BAAF0B: ConcatStr
  loc_BAAF0C: FStStrNoPop var_C8
  loc_BAAF0F: FLdPr Me
  loc_BAAF12: VCallAd Control_ID_PeriInfoMsk
  loc_BAAF15: FStAdFunc var_A8
  loc_BAAF18: FLdPr var_A8
  loc_BAAF1B: LateIdLdVar var_C0 DispID_22 0
  loc_BAAF22: CStrVarTmp
  loc_BAAF23: FStStrNoPop var_CC
  loc_BAAF26: ConcatStr
  loc_BAAF27: FStStrNoPop var_D0
  loc_BAAF2A: LitStr " AND c.CodiCuco = tribu.ActiConc"
  loc_BAAF2D: ConcatStr
  loc_BAAF2E: FStStrNoPop var_D4
  loc_BAAF31: LitStr " GROUP BY tribu.ActiConc ORDER BY ActiConc"
  loc_BAAF34: ConcatStr
  loc_BAAF35: FStStrNoPop var_D8
  loc_BAAF38: FLdPr var_B0
  loc_BAAF3B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BAAF40: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BAAF4F: FFree1Ad var_A8
  loc_BAAF52: FFree1Var var_C0 = ""
  loc_BAAF55: FLdRfVar var_12C
  loc_BAAF58: FLdPr var_B0
  loc_BAAF5B: from_stack_1 = clsctacte.RecordCount
  loc_BAAF60: ILdRf var_12C
  loc_BAAF63: LitI4 0
  loc_BAAF68: GtI4
  loc_BAAF69: BranchF loc_BAB048
  loc_BAAF6C: FLdRfVar var_C0
  loc_BAAF6F: FLdPr var_B0
  loc_BAAF72: from_stack_1 = clsctacte.CondCtct
  loc_BAAF77: LitI2_Byte 0
  loc_BAAF79: LitVar_Missing var_F4
  loc_BAAF7C: LitI2_Byte &HFF
  loc_BAAF7E: FLdVar var_C0
  loc_BAAF82: LitI4 1
  loc_BAAF87: FLdPr Me
  loc_BAAF8A: MemLdStr global_88
  loc_BAAF8D: AryLock
  loc_BAAF90: Ary1LdPr
  loc_BAAF91: MemLdRfVar from_stack_1.global_0
  loc_BAAF94: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAAF99: AryUnlock
  loc_BAAF9C: FFreeVar var_C0 = ""
  loc_BAAFA3: FLdRfVar var_C0
  loc_BAAFA6: FLdPr var_B0
  loc_BAAFA9: from_stack_1 = clsctacte.ExenCtct
  loc_BAAFAE: LitI2_Byte 0
  loc_BAAFB0: LitVar_Missing var_F4
  loc_BAAFB3: LitI2_Byte &HFF
  loc_BAAFB5: FLdVar var_C0
  loc_BAAFB9: LitI4 1
  loc_BAAFBE: FLdPr Me
  loc_BAAFC1: MemLdStr global_88
  loc_BAAFC4: AryLock
  loc_BAAFC7: Ary1LdPr
  loc_BAAFC8: MemLdRfVar from_stack_1.global_4
  loc_BAAFCB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAAFD0: AryUnlock
  loc_BAAFD3: FFreeVar var_C0 = ""
  loc_BAAFDA: FLdRfVar var_C0
  loc_BAAFDD: FLdPr var_B0
  loc_BAAFE0: from_stack_1 = clsctacte.DescCtct
  loc_BAAFE5: LitI2_Byte 0
  loc_BAAFE7: LitVar_Missing var_F4
  loc_BAAFEA: LitI2_Byte &HFF
  loc_BAAFEC: FLdVar var_C0
  loc_BAAFF0: LitI4 1
  loc_BAAFF5: FLdPr Me
  loc_BAAFF8: MemLdStr global_88
  loc_BAAFFB: AryLock
  loc_BAAFFE: Ary1LdPr
  loc_BAAFFF: MemLdRfVar from_stack_1.global_8
  loc_BAB002: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAB007: AryUnlock
  loc_BAB00A: FFreeVar var_C0 = ""
  loc_BAB011: FLdRfVar var_138
  loc_BAB014: FLdPr var_B0
  loc_BAB017: from_stack_1 = clsctacte.TotaCtct
  loc_BAB01C: LitI2_Byte 0
  loc_BAB01E: LitVar_Missing var_C0
  loc_BAB021: LitI2_Byte &HFF
  loc_BAB023: FLdFPR8 var_138
  loc_BAB026: CVarR8
  loc_BAB02A: PopAdLdVar
  loc_BAB02B: LitI4 1
  loc_BAB030: FLdPr Me
  loc_BAB033: MemLdStr global_88
  loc_BAB036: AryLock
  loc_BAB039: Ary1LdPr
  loc_BAB03A: MemLdRfVar from_stack_1.global_12
  loc_BAB03D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAB042: AryUnlock
  loc_BAB045: FFree1Var var_C0 = ""
  loc_BAB048: Branch loc_BAB144
  loc_BAB04B: LitStr " DROP TEMPORARY TABLE IF EXISTS tribu; "
  loc_BAB04E: LitStr " CREATE TEMPORARY TABLE tribu"
  loc_BAB051: ConcatStr
  loc_BAB052: FStStrNoPop var_C4
  loc_BAB055: LitStr " SELECT ActiConc, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct,"
  loc_BAB058: ConcatStr
  loc_BAB059: FStStrNoPop var_C8
  loc_BAB05C: LitStr " sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct,"
  loc_BAB05F: ConcatStr
  loc_BAB060: FStStrNoPop var_CC
  loc_BAB063: LitStr " sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct  FROM ctacte"
  loc_BAB066: ConcatStr
  loc_BAB067: FStStrNoPop var_D0
  loc_BAB06A: LitStr " INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_BAB06D: ConcatStr
  loc_BAB06E: FStStrNoPop var_D4
  loc_BAB071: FLdPr Me
  loc_BAB074: VCallAd Control_ID_PeriInfoMsk
  loc_BAB077: FStAdFunc var_A8
  loc_BAB07A: FLdPr var_A8
  loc_BAB07D: LateIdLdVar var_C0 DispID_22 0
  loc_BAB084: CStrVarTmp
  loc_BAB085: FStStrNoPop var_D8
  loc_BAB088: ConcatStr
  loc_BAB089: FStStrNoPop var_DC
  loc_BAB08C: LitStr " AND concepto.ActiConc <> ''"
  loc_BAB08F: ConcatStr
  loc_BAB090: FStStrNoPop var_E0
  loc_BAB093: LitStr " WHERE Year(FealCtct) = "
  loc_BAB096: ConcatStr
  loc_BAB097: FStStrNoPop var_F8
  loc_BAB09A: FLdPr Me
  loc_BAB09D: VCallAd Control_ID_PeriInfoMsk
  loc_BAB0A0: FStAdFunc var_E4
  loc_BAB0A3: FLdPr var_E4
  loc_BAB0A6: LateIdLdVar var_F4 DispID_22 0
  loc_BAB0AD: CStrVarTmp
  loc_BAB0AE: FStStrNoPop var_FC
  loc_BAB0B1: ConcatStr
  loc_BAB0B2: FStStrNoPop var_100
  loc_BAB0B5: LitStr " GROUP BY ActiConc"
  loc_BAB0B8: ConcatStr
  loc_BAB0B9: FStStrNoPop var_118
  loc_BAB0BC: FLdPr var_B0
  loc_BAB0BF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BAB0C4: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_BAB0DF: FFreeAd var_A8 = ""
  loc_BAB0E6: FFreeVar var_C0 = ""
  loc_BAB0ED: LitStr "SELECT tribu.ActiConc, DetaCuco, CondCtct, ExenCtct, DescCtct,"
  loc_BAB0F0: LitStr " CondCtct+ExenCtct+DescCtct as TotaCtct"
  loc_BAB0F3: ConcatStr
  loc_BAB0F4: FStStrNoPop var_C4
  loc_BAB0F7: LitStr " FROM tribu LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = "
  loc_BAB0FA: ConcatStr
  loc_BAB0FB: FStStrNoPop var_C8
  loc_BAB0FE: FLdPr Me
  loc_BAB101: VCallAd Control_ID_PeriInfoMsk
  loc_BAB104: FStAdFunc var_A8
  loc_BAB107: FLdPr var_A8
  loc_BAB10A: LateIdLdVar var_C0 DispID_22 0
  loc_BAB111: CStrVarTmp
  loc_BAB112: FStStrNoPop var_CC
  loc_BAB115: ConcatStr
  loc_BAB116: FStStrNoPop var_D0
  loc_BAB119: LitStr " AND c.CodiCuco = tribu.ActiConc"
  loc_BAB11C: ConcatStr
  loc_BAB11D: FStStrNoPop var_D4
  loc_BAB120: LitStr " GROUP BY tribu.ActiConc ORDER BY ActiConc"
  loc_BAB123: ConcatStr
  loc_BAB124: FStStrNoPop var_D8
  loc_BAB127: FLdPr var_B0
  loc_BAB12A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BAB12F: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BAB13E: FFree1Ad var_A8
  loc_BAB141: FFree1Var var_C0 = ""
  loc_BAB144: LitI4 0
  loc_BAB149: FLdRfVar var_12C
  loc_BAB14C: FLdPr var_B0
  loc_BAB14F: from_stack_1 = clsctacte.RecordCount
  loc_BAB154: ILdRf var_12C
  loc_BAB157: FLdPr Me
  loc_BAB15A: MemLdRfVar from_stack_1.global_80
  loc_BAB15D: Redim
  loc_BAB167: FLdPr var_B0
  loc_BAB16A: Call clsctacte.MoveFirst()
  loc_BAB16F: LitI4 1
  loc_BAB174: FLdPr Me
  loc_BAB177: MemLdRfVar from_stack_1.global_84
  loc_BAB17A: FLdPr Me
  loc_BAB17D: MemLdStr global_80
  loc_BAB180: LitI2_Byte 1
  loc_BAB182: FnUBound
  loc_BAB184: ForI4 var_140
  loc_BAB18A: FLdRfVar var_C0
  loc_BAB18D: FLdPr var_B0
  loc_BAB190: from_stack_1 = clsctacte.ActiConc
  loc_BAB195: LitI2_Byte 0
  loc_BAB197: LitVar_Missing var_F4
  loc_BAB19A: LitI2_Byte 0
  loc_BAB19C: FLdVar var_C0
  loc_BAB1A0: FLdPr Me
  loc_BAB1A3: MemLdStr global_84
  loc_BAB1A6: FLdPr Me
  loc_BAB1A9: MemLdStr global_80
  loc_BAB1AC: AryLock
  loc_BAB1AF: Ary1LdPr
  loc_BAB1B0: MemLdRfVar from_stack_1.global_0
  loc_BAB1B3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAB1B8: AryUnlock
  loc_BAB1BB: FFreeVar var_C0 = ""
  loc_BAB1C2: FLdRfVar var_C0
  loc_BAB1C5: FLdPr var_B0
  loc_BAB1C8: from_stack_1 = clsctacte.DetaCuco
  loc_BAB1CD: LitI2_Byte 0
  loc_BAB1CF: LitVar_Missing var_F4
  loc_BAB1D2: LitI2_Byte 0
  loc_BAB1D4: FLdVar var_C0
  loc_BAB1D8: FLdPr Me
  loc_BAB1DB: MemLdStr global_84
  loc_BAB1DE: FLdPr Me
  loc_BAB1E1: MemLdStr global_80
  loc_BAB1E4: AryLock
  loc_BAB1E7: Ary1LdPr
  loc_BAB1E8: MemLdRfVar from_stack_1.global_4
  loc_BAB1EB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAB1F0: AryUnlock
  loc_BAB1F3: FFreeVar var_C0 = ""
  loc_BAB1FA: FLdRfVar var_C0
  loc_BAB1FD: FLdPr var_B0
  loc_BAB200: from_stack_1 = clsctacte.CondCtct
  loc_BAB205: LitI2_Byte 0
  loc_BAB207: FLdPr Me
  loc_BAB20A: MemLdRfVar from_stack_1.global_100
  loc_BAB20D: CVarRef
  loc_BAB212: LitI2_Byte &HFF
  loc_BAB214: FLdVar var_C0
  loc_BAB218: FLdPr Me
  loc_BAB21B: MemLdStr global_84
  loc_BAB21E: FLdPr Me
  loc_BAB221: MemLdStr global_80
  loc_BAB224: AryLock
  loc_BAB227: Ary1LdPr
  loc_BAB228: MemLdRfVar from_stack_1.global_8
  loc_BAB22B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAB230: AryUnlock
  loc_BAB233: FFree1Var var_C0 = ""
  loc_BAB236: FLdRfVar var_C0
  loc_BAB239: FLdPr var_B0
  loc_BAB23C: from_stack_1 = clsctacte.ExenCtct
  loc_BAB241: LitI2_Byte 0
  loc_BAB243: FLdPr Me
  loc_BAB246: MemLdRfVar from_stack_1.global_104
  loc_BAB249: CVarRef
  loc_BAB24E: LitI2_Byte &HFF
  loc_BAB250: FLdVar var_C0
  loc_BAB254: FLdPr Me
  loc_BAB257: MemLdStr global_84
  loc_BAB25A: FLdPr Me
  loc_BAB25D: MemLdStr global_80
  loc_BAB260: AryLock
  loc_BAB263: Ary1LdPr
  loc_BAB264: MemLdRfVar from_stack_1.global_12
  loc_BAB267: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAB26C: AryUnlock
  loc_BAB26F: FFree1Var var_C0 = ""
  loc_BAB272: FLdRfVar var_C0
  loc_BAB275: FLdPr var_B0
  loc_BAB278: from_stack_1 = clsctacte.DescCtct
  loc_BAB27D: LitI2_Byte 0
  loc_BAB27F: FLdPr Me
  loc_BAB282: MemLdRfVar from_stack_1.global_108
  loc_BAB285: CVarRef
  loc_BAB28A: LitI2_Byte &HFF
  loc_BAB28C: FLdVar var_C0
  loc_BAB290: FLdPr Me
  loc_BAB293: MemLdStr global_84
  loc_BAB296: FLdPr Me
  loc_BAB299: MemLdStr global_80
  loc_BAB29C: AryLock
  loc_BAB29F: Ary1LdPr
  loc_BAB2A0: MemLdRfVar from_stack_1.global_16
  loc_BAB2A3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAB2A8: AryUnlock
  loc_BAB2AB: FFree1Var var_C0 = ""
  loc_BAB2AE: FLdRfVar var_138
  loc_BAB2B1: FLdPr var_B0
  loc_BAB2B4: from_stack_1 = clsctacte.TotaCtct
  loc_BAB2B9: LitI2_Byte 0
  loc_BAB2BB: FLdPr Me
  loc_BAB2BE: MemLdRfVar from_stack_1.global_112
  loc_BAB2C1: CVarRef
  loc_BAB2C6: LitI2_Byte &HFF
  loc_BAB2C8: FLdFPR8 var_138
  loc_BAB2CB: CVarR8
  loc_BAB2CF: PopAdLdVar
  loc_BAB2D0: FLdPr Me
  loc_BAB2D3: MemLdStr global_84
  loc_BAB2D6: FLdPr Me
  loc_BAB2D9: MemLdStr global_80
  loc_BAB2DC: AryLock
  loc_BAB2DF: Ary1LdPr
  loc_BAB2E0: MemLdRfVar from_stack_1.global_20
  loc_BAB2E3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAB2E8: AryUnlock
  loc_BAB2EB: LitI2_Byte 1
  loc_BAB2ED: PopTmpLdAd2 var_AA
  loc_BAB2F0: FLdPr var_B0
  loc_BAB2F3: Call clsctacte.Move(from_stack_1v)
  loc_BAB2F8: FLdPr Me
  loc_BAB2FB: MemLdRfVar from_stack_1.global_84
  loc_BAB2FE: NextI4 var_140, loc_BAB18A
  loc_BAB303: LitNothing
  loc_BAB305: FStAd var_B0 
  loc_BAB309: LitI2_Byte &HFF
  loc_BAB30B: FLdPr Me
  loc_BAB30E: MemStI2 bGenerado
  loc_BAB311: LitI4 0
  loc_BAB316: CI2I4
  loc_BAB317: FLdPr Me
  loc_BAB31A: Me.MousePointer = from_stack_1
  loc_BAB31F: LitVarStr var_94, vbNullString
  loc_BAB324: PopAdLdVar
  loc_BAB325: FLdPr Me
  loc_BAB328: VCallAd Control_ID_statusBar
  loc_BAB32B: FStAdFunc var_A8
  loc_BAB32E: FLdPr var_A8
  loc_BAB331: LateIdSt
  loc_BAB336: FFree1Ad var_A8
  loc_BAB339: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B22844
  'Data Table: 46943C
  loc_B22594: FLdRfVar var_8C
  loc_B22597: LitI2_Byte 0
  loc_B22599: LitI2_Byte &HFF
  loc_B2259B: ImpAdLdI4 MemVar_D93C84
  loc_B2259E: FLdPr Me
  loc_B225A1: MemLdRfVar from_stack_1.global_56
  loc_B225A4: NewIfNullPr IFileSystem3
  loc_B225A7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B225AC: ILdRf var_8C
  loc_B225AF: FLdPr Me
  loc_B225B2: MemStVarAd
  loc_B225B6: FFree1Ad var_8C
  loc_B225B9: LitI2_Byte &HFF
  loc_B225BB: ImpAdStI2 MemVar_D93C8A
  loc_B225BE: Call Proc_207_18_BCB6A8()
  loc_B225C3: FLdPr Me
  loc_B225C6: VCallAd Control_ID_ActiConcMsk
  loc_B225C9: FStAdFunc var_8C
  loc_B225CC: FLdPr var_8C
  loc_B225CF: LateIdLdVar var_9C DispID_22 0
  loc_B225D6: CStrVarTmp
  loc_B225D7: FStStrNoPop var_A0
  loc_B225DA: LitStr vbNullString
  loc_B225DD: NeStr
  loc_B225DF: FFree1Str var_A0
  loc_B225E2: FFree1Ad var_8C
  loc_B225E5: FFree1Var var_9C = ""
  loc_B225E8: BranchF loc_B225F3
  loc_B225EB: Call Proc_207_19_B2FC28()
  loc_B225F0: Branch loc_B22825
  loc_B225F3: LitI4 1
  loc_B225F8: FLdPr Me
  loc_B225FB: MemLdRfVar from_stack_1.global_84
  loc_B225FE: FLdPr Me
  loc_B22601: MemLdStr global_80
  loc_B22604: LitI2_Byte 1
  loc_B22606: FnUBound
  loc_B22608: ForI4 var_A8
  loc_B2260E: LitVarStr var_B8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B22613: PopAdLdVar
  loc_B22614: FLdPr Me
  loc_B22617: MemLdRfVar from_stack_1.global_60
  loc_B2261A: LdPrVar
  loc_B2261C: LateMemCall
  loc_B22622: FLdPr Me
  loc_B22625: MemLdStr global_84
  loc_B22628: FLdPr Me
  loc_B2262B: MemLdStr global_80
  loc_B2262E: AryLock
  loc_B22631: Ary1LdRf
  loc_B22632: FStR4 var_D0
  loc_B22635: LitStr vbNullString
  loc_B22638: LitI2_Byte 0
  loc_B2263A: LitI2_Byte 0
  loc_B2263C: LitI2_Byte 0
  loc_B2263E: LitStr "left"
  loc_B22641: FMemLdR4 var_D0(0)
  loc_B22646: LitStr " - "
  loc_B22649: ConcatStr
  loc_B2264A: FStStrNoPop var_A0
  loc_B2264D: FMemLdR4 var_D0(4)
  loc_B22652: ConcatStr
  loc_B22653: FStStrNoPop var_D4
  loc_B22656: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2265B: CVarStr var_9C
  loc_B2265E: PopAdLdVar
  loc_B2265F: FLdPr Me
  loc_B22662: MemLdRfVar from_stack_1.global_60
  loc_B22665: LdPrVar
  loc_B22667: LateMemCall
  loc_B2266D: FFreeStr var_A0 = ""
  loc_B22674: FFree1Var var_9C = ""
  loc_B22677: LitStr vbNullString
  loc_B2267A: LitI2_Byte 0
  loc_B2267C: LitI2_Byte 0
  loc_B2267E: LitI2_Byte 0
  loc_B22680: LitStr "right"
  loc_B22683: FMemLdR4 var_D0(8)
  loc_B22688: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2268D: CVarStr var_9C
  loc_B22690: PopAdLdVar
  loc_B22691: FLdPr Me
  loc_B22694: MemLdRfVar from_stack_1.global_60
  loc_B22697: LdPrVar
  loc_B22699: LateMemCall
  loc_B2269F: FFree1Var var_9C = ""
  loc_B226A2: LitStr vbNullString
  loc_B226A5: LitI2_Byte 0
  loc_B226A7: LitI2_Byte 0
  loc_B226A9: LitI2_Byte 0
  loc_B226AB: LitStr "right"
  loc_B226AE: FMemLdR4 var_D0(12)
  loc_B226B3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B226B8: CVarStr var_9C
  loc_B226BB: PopAdLdVar
  loc_B226BC: FLdPr Me
  loc_B226BF: MemLdRfVar from_stack_1.global_60
  loc_B226C2: LdPrVar
  loc_B226C4: LateMemCall
  loc_B226CA: FFree1Var var_9C = ""
  loc_B226CD: LitStr vbNullString
  loc_B226D0: LitI2_Byte 0
  loc_B226D2: LitI2_Byte 0
  loc_B226D4: LitI2_Byte 0
  loc_B226D6: LitStr "right"
  loc_B226D9: FMemLdR4 var_D0(16)
  loc_B226DE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B226E3: CVarStr var_9C
  loc_B226E6: PopAdLdVar
  loc_B226E7: FLdPr Me
  loc_B226EA: MemLdRfVar from_stack_1.global_60
  loc_B226ED: LdPrVar
  loc_B226EF: LateMemCall
  loc_B226F5: FFree1Var var_9C = ""
  loc_B226F8: LitStr vbNullString
  loc_B226FB: LitI2_Byte 0
  loc_B226FD: LitI2_Byte 0
  loc_B226FF: LitI2_Byte 0
  loc_B22701: LitStr "right"
  loc_B22704: FMemLdR4 var_D0(20)
  loc_B22709: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2270E: CVarStr var_9C
  loc_B22711: PopAdLdVar
  loc_B22712: FLdPr Me
  loc_B22715: MemLdRfVar from_stack_1.global_60
  loc_B22718: LdPrVar
  loc_B2271A: LateMemCall
  loc_B22720: FFree1Var var_9C = ""
  loc_B22723: LitVarStr var_B8, "     </tr>"
  loc_B22728: PopAdLdVar
  loc_B22729: FLdPr Me
  loc_B2272C: MemLdRfVar from_stack_1.global_60
  loc_B2272F: LdPrVar
  loc_B22731: LateMemCall
  loc_B22737: LitI4 0
  loc_B2273C: FStR4 var_D0
  loc_B2273F: AryUnlock
  loc_B22742: FLdPr Me
  loc_B22745: MemLdRfVar from_stack_1.global_84
  loc_B22748: NextI4 var_A8, loc_B2260E
  loc_B2274D: LitVarStr var_B8, "  <tr valign=""top"" class=""Totales"">"
  loc_B22752: PopAdLdVar
  loc_B22753: FLdPr Me
  loc_B22756: MemLdRfVar from_stack_1.global_60
  loc_B22759: LdPrVar
  loc_B2275B: LateMemCall
  loc_B22761: LitVarStr var_B8, "    <td colspan=""1"" align=""right"">Totales</td>"
  loc_B22766: PopAdLdVar
  loc_B22767: FLdPr Me
  loc_B2276A: MemLdRfVar from_stack_1.global_60
  loc_B2276D: LdPrVar
  loc_B2276F: LateMemCall
  loc_B22775: LitStr vbNullString
  loc_B22778: LitI2_Byte 0
  loc_B2277A: LitI2_Byte 0
  loc_B2277C: LitI2_Byte 0
  loc_B2277E: LitStr "right"
  loc_B22781: FLdPr Me
  loc_B22784: MemLdStr global_100
  loc_B22787: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2278C: CVarStr var_9C
  loc_B2278F: PopAdLdVar
  loc_B22790: FLdPr Me
  loc_B22793: MemLdRfVar from_stack_1.global_60
  loc_B22796: LdPrVar
  loc_B22798: LateMemCall
  loc_B2279E: FFree1Var var_9C = ""
  loc_B227A1: LitStr vbNullString
  loc_B227A4: LitI2_Byte 0
  loc_B227A6: LitI2_Byte 0
  loc_B227A8: LitI2_Byte 0
  loc_B227AA: LitStr "right"
  loc_B227AD: FLdPr Me
  loc_B227B0: MemLdStr global_104
  loc_B227B3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B227B8: CVarStr var_9C
  loc_B227BB: PopAdLdVar
  loc_B227BC: FLdPr Me
  loc_B227BF: MemLdRfVar from_stack_1.global_60
  loc_B227C2: LdPrVar
  loc_B227C4: LateMemCall
  loc_B227CA: FFree1Var var_9C = ""
  loc_B227CD: LitStr vbNullString
  loc_B227D0: LitI2_Byte 0
  loc_B227D2: LitI2_Byte 0
  loc_B227D4: LitI2_Byte 0
  loc_B227D6: LitStr "right"
  loc_B227D9: FLdPr Me
  loc_B227DC: MemLdStr global_108
  loc_B227DF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B227E4: CVarStr var_9C
  loc_B227E7: PopAdLdVar
  loc_B227E8: FLdPr Me
  loc_B227EB: MemLdRfVar from_stack_1.global_60
  loc_B227EE: LdPrVar
  loc_B227F0: LateMemCall
  loc_B227F6: FFree1Var var_9C = ""
  loc_B227F9: LitStr vbNullString
  loc_B227FC: LitI2_Byte 0
  loc_B227FE: LitI2_Byte 0
  loc_B22800: LitI2_Byte 0
  loc_B22802: LitStr "right"
  loc_B22805: FLdPr Me
  loc_B22808: MemLdStr global_112
  loc_B2280B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B22810: CVarStr var_9C
  loc_B22813: PopAdLdVar
  loc_B22814: FLdPr Me
  loc_B22817: MemLdRfVar from_stack_1.global_60
  loc_B2281A: LdPrVar
  loc_B2281C: LateMemCall
  loc_B22822: FFree1Var var_9C = ""
  loc_B22825: Call Proc_207_20_9F0604()
  loc_B2282A: FLdPr Me
  loc_B2282D: MemLdRfVar from_stack_1.global_60
  loc_B22830: LdPrVar
  loc_B22832: LateMemCall
  loc_B22838: LitStr vbNullString
  loc_B2283B: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B22840: ExitProcHresult
  loc_B22841: FLdFPR4 arg_3B8
End Sub

Private Function Proc_207_18_BCB6A8() 'BCB6A8
  'Data Table: 46943C
  loc_BCAFA8: LitVarStr var_94, "<html>"
  loc_BCAFAD: PopAdLdVar
  loc_BCAFAE: FLdPr Me
  loc_BCAFB1: MemLdRfVar from_stack_1.global_60
  loc_BCAFB4: LdPrVar
  loc_BCAFB6: LateMemCall
  loc_BCAFBC: LitVarStr var_94, "<head>"
  loc_BCAFC1: PopAdLdVar
  loc_BCAFC2: FLdPr Me
  loc_BCAFC5: MemLdRfVar from_stack_1.global_60
  loc_BCAFC8: LdPrVar
  loc_BCAFCA: LateMemCall
  loc_BCAFD0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BCAFD5: PopAdLdVar
  loc_BCAFD6: FLdPr Me
  loc_BCAFD9: MemLdRfVar from_stack_1.global_60
  loc_BCAFDC: LdPrVar
  loc_BCAFDE: LateMemCall
  loc_BCAFE4: LitStr "<title>"
  loc_BCAFE7: FLdRfVar var_A8
  loc_BCAFEA: FLdPr Me
  loc_BCAFED:  = Me.Caption
  loc_BCAFF2: ILdRf var_A8
  loc_BCAFF5: ConcatStr
  loc_BCAFF6: FStStrNoPop var_AC
  loc_BCAFF9: LitStr "</title>"
  loc_BCAFFC: ConcatStr
  loc_BCAFFD: CVarStr var_BC
  loc_BCB000: PopAdLdVar
  loc_BCB001: FLdPr Me
  loc_BCB004: MemLdRfVar from_stack_1.global_60
  loc_BCB007: LdPrVar
  loc_BCB009: LateMemCall
  loc_BCB00F: FFreeStr var_A8 = ""
  loc_BCB016: FFree1Var var_BC = ""
  loc_BCB019: LitVarStr var_94, "<style type=""text/css"">"
  loc_BCB01E: PopAdLdVar
  loc_BCB01F: FLdPr Me
  loc_BCB022: MemLdRfVar from_stack_1.global_60
  loc_BCB025: LdPrVar
  loc_BCB027: LateMemCall
  loc_BCB02D: LitVarStr var_94, ".Titulo1 {"
  loc_BCB032: PopAdLdVar
  loc_BCB033: FLdPr Me
  loc_BCB036: MemLdRfVar from_stack_1.global_60
  loc_BCB039: LdPrVar
  loc_BCB03B: LateMemCall
  loc_BCB041: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCB046: PopAdLdVar
  loc_BCB047: FLdPr Me
  loc_BCB04A: MemLdRfVar from_stack_1.global_60
  loc_BCB04D: LdPrVar
  loc_BCB04F: LateMemCall
  loc_BCB055: LitVarStr var_94, " font-size: 14px;"
  loc_BCB05A: PopAdLdVar
  loc_BCB05B: FLdPr Me
  loc_BCB05E: MemLdRfVar from_stack_1.global_60
  loc_BCB061: LdPrVar
  loc_BCB063: LateMemCall
  loc_BCB069: LitVarStr var_94, " font-weight: bold;"
  loc_BCB06E: PopAdLdVar
  loc_BCB06F: FLdPr Me
  loc_BCB072: MemLdRfVar from_stack_1.global_60
  loc_BCB075: LdPrVar
  loc_BCB077: LateMemCall
  loc_BCB07D: LitVarStr var_94, "}"
  loc_BCB082: PopAdLdVar
  loc_BCB083: FLdPr Me
  loc_BCB086: MemLdRfVar from_stack_1.global_60
  loc_BCB089: LdPrVar
  loc_BCB08B: LateMemCall
  loc_BCB091: LitVarStr var_94, ".Titulo2 {"
  loc_BCB096: PopAdLdVar
  loc_BCB097: FLdPr Me
  loc_BCB09A: MemLdRfVar from_stack_1.global_60
  loc_BCB09D: LdPrVar
  loc_BCB09F: LateMemCall
  loc_BCB0A5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCB0AA: PopAdLdVar
  loc_BCB0AB: FLdPr Me
  loc_BCB0AE: MemLdRfVar from_stack_1.global_60
  loc_BCB0B1: LdPrVar
  loc_BCB0B3: LateMemCall
  loc_BCB0B9: LitVarStr var_94, " font-size: 12px;"
  loc_BCB0BE: PopAdLdVar
  loc_BCB0BF: FLdPr Me
  loc_BCB0C2: MemLdRfVar from_stack_1.global_60
  loc_BCB0C5: LdPrVar
  loc_BCB0C7: LateMemCall
  loc_BCB0CD: LitVarStr var_94, " font-weight: bold;"
  loc_BCB0D2: PopAdLdVar
  loc_BCB0D3: FLdPr Me
  loc_BCB0D6: MemLdRfVar from_stack_1.global_60
  loc_BCB0D9: LdPrVar
  loc_BCB0DB: LateMemCall
  loc_BCB0E1: LitVarStr var_94, "}"
  loc_BCB0E6: PopAdLdVar
  loc_BCB0E7: FLdPr Me
  loc_BCB0EA: MemLdRfVar from_stack_1.global_60
  loc_BCB0ED: LdPrVar
  loc_BCB0EF: LateMemCall
  loc_BCB0F5: LitVarStr var_94, ".Encabezado {"
  loc_BCB0FA: PopAdLdVar
  loc_BCB0FB: FLdPr Me
  loc_BCB0FE: MemLdRfVar from_stack_1.global_60
  loc_BCB101: LdPrVar
  loc_BCB103: LateMemCall
  loc_BCB109: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BCB10E: PopAdLdVar
  loc_BCB10F: FLdPr Me
  loc_BCB112: MemLdRfVar from_stack_1.global_60
  loc_BCB115: LdPrVar
  loc_BCB117: LateMemCall
  loc_BCB11D: LitVarStr var_94, " font-size: 10px;"
  loc_BCB122: PopAdLdVar
  loc_BCB123: FLdPr Me
  loc_BCB126: MemLdRfVar from_stack_1.global_60
  loc_BCB129: LdPrVar
  loc_BCB12B: LateMemCall
  loc_BCB131: LitVarStr var_94, " font-weight: bold;"
  loc_BCB136: PopAdLdVar
  loc_BCB137: FLdPr Me
  loc_BCB13A: MemLdRfVar from_stack_1.global_60
  loc_BCB13D: LdPrVar
  loc_BCB13F: LateMemCall
  loc_BCB145: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BCB14A: PopAdLdVar
  loc_BCB14B: FLdPr Me
  loc_BCB14E: MemLdRfVar from_stack_1.global_60
  loc_BCB151: LdPrVar
  loc_BCB153: LateMemCall
  loc_BCB159: LitVarStr var_94, "}"
  loc_BCB15E: PopAdLdVar
  loc_BCB15F: FLdPr Me
  loc_BCB162: MemLdRfVar from_stack_1.global_60
  loc_BCB165: LdPrVar
  loc_BCB167: LateMemCall
  loc_BCB16D: LitVarStr var_94, ".LineaDato {"
  loc_BCB172: PopAdLdVar
  loc_BCB173: FLdPr Me
  loc_BCB176: MemLdRfVar from_stack_1.global_60
  loc_BCB179: LdPrVar
  loc_BCB17B: LateMemCall
  loc_BCB181: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCB186: PopAdLdVar
  loc_BCB187: FLdPr Me
  loc_BCB18A: MemLdRfVar from_stack_1.global_60
  loc_BCB18D: LdPrVar
  loc_BCB18F: LateMemCall
  loc_BCB195: LitVarStr var_94, " font-size: 11px;"
  loc_BCB19A: PopAdLdVar
  loc_BCB19B: FLdPr Me
  loc_BCB19E: MemLdRfVar from_stack_1.global_60
  loc_BCB1A1: LdPrVar
  loc_BCB1A3: LateMemCall
  loc_BCB1A9: LitVarStr var_94, "}"
  loc_BCB1AE: PopAdLdVar
  loc_BCB1AF: FLdPr Me
  loc_BCB1B2: MemLdRfVar from_stack_1.global_60
  loc_BCB1B5: LdPrVar
  loc_BCB1B7: LateMemCall
  loc_BCB1BD: LitVarStr var_94, ".Totales {"
  loc_BCB1C2: PopAdLdVar
  loc_BCB1C3: FLdPr Me
  loc_BCB1C6: MemLdRfVar from_stack_1.global_60
  loc_BCB1C9: LdPrVar
  loc_BCB1CB: LateMemCall
  loc_BCB1D1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCB1D6: PopAdLdVar
  loc_BCB1D7: FLdPr Me
  loc_BCB1DA: MemLdRfVar from_stack_1.global_60
  loc_BCB1DD: LdPrVar
  loc_BCB1DF: LateMemCall
  loc_BCB1E5: LitVarStr var_94, " font-size: 13px;"
  loc_BCB1EA: PopAdLdVar
  loc_BCB1EB: FLdPr Me
  loc_BCB1EE: MemLdRfVar from_stack_1.global_60
  loc_BCB1F1: LdPrVar
  loc_BCB1F3: LateMemCall
  loc_BCB1F9: LitVarStr var_94, " font-weight: bold;"
  loc_BCB1FE: PopAdLdVar
  loc_BCB1FF: FLdPr Me
  loc_BCB202: MemLdRfVar from_stack_1.global_60
  loc_BCB205: LdPrVar
  loc_BCB207: LateMemCall
  loc_BCB20D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCB212: PopAdLdVar
  loc_BCB213: FLdPr Me
  loc_BCB216: MemLdRfVar from_stack_1.global_60
  loc_BCB219: LdPrVar
  loc_BCB21B: LateMemCall
  loc_BCB221: LitVarStr var_94, "}"
  loc_BCB226: PopAdLdVar
  loc_BCB227: FLdPr Me
  loc_BCB22A: MemLdRfVar from_stack_1.global_60
  loc_BCB22D: LdPrVar
  loc_BCB22F: LateMemCall
  loc_BCB235: LitVarStr var_94, ".DatosEncabezado {"
  loc_BCB23A: PopAdLdVar
  loc_BCB23B: FLdPr Me
  loc_BCB23E: MemLdRfVar from_stack_1.global_60
  loc_BCB241: LdPrVar
  loc_BCB243: LateMemCall
  loc_BCB249: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCB24E: PopAdLdVar
  loc_BCB24F: FLdPr Me
  loc_BCB252: MemLdRfVar from_stack_1.global_60
  loc_BCB255: LdPrVar
  loc_BCB257: LateMemCall
  loc_BCB25D: LitVarStr var_94, " font-size: 12px;"
  loc_BCB262: PopAdLdVar
  loc_BCB263: FLdPr Me
  loc_BCB266: MemLdRfVar from_stack_1.global_60
  loc_BCB269: LdPrVar
  loc_BCB26B: LateMemCall
  loc_BCB271: LitVarStr var_94, "}"
  loc_BCB276: PopAdLdVar
  loc_BCB277: FLdPr Me
  loc_BCB27A: MemLdRfVar from_stack_1.global_60
  loc_BCB27D: LdPrVar
  loc_BCB27F: LateMemCall
  loc_BCB285: LitVarStr var_94, ".EncabezadoTotales {"
  loc_BCB28A: PopAdLdVar
  loc_BCB28B: FLdPr Me
  loc_BCB28E: MemLdRfVar from_stack_1.global_60
  loc_BCB291: LdPrVar
  loc_BCB293: LateMemCall
  loc_BCB299: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BCB29E: PopAdLdVar
  loc_BCB29F: FLdPr Me
  loc_BCB2A2: MemLdRfVar from_stack_1.global_60
  loc_BCB2A5: LdPrVar
  loc_BCB2A7: LateMemCall
  loc_BCB2AD: LitVarStr var_94, " font-size: 14px;"
  loc_BCB2B2: PopAdLdVar
  loc_BCB2B3: FLdPr Me
  loc_BCB2B6: MemLdRfVar from_stack_1.global_60
  loc_BCB2B9: LdPrVar
  loc_BCB2BB: LateMemCall
  loc_BCB2C1: LitVarStr var_94, " font-weight: bold;"
  loc_BCB2C6: PopAdLdVar
  loc_BCB2C7: FLdPr Me
  loc_BCB2CA: MemLdRfVar from_stack_1.global_60
  loc_BCB2CD: LdPrVar
  loc_BCB2CF: LateMemCall
  loc_BCB2D5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BCB2DA: PopAdLdVar
  loc_BCB2DB: FLdPr Me
  loc_BCB2DE: MemLdRfVar from_stack_1.global_60
  loc_BCB2E1: LdPrVar
  loc_BCB2E3: LateMemCall
  loc_BCB2E9: LitVarStr var_94, "}"
  loc_BCB2EE: PopAdLdVar
  loc_BCB2EF: FLdPr Me
  loc_BCB2F2: MemLdRfVar from_stack_1.global_60
  loc_BCB2F5: LdPrVar
  loc_BCB2F7: LateMemCall
  loc_BCB2FD: LitVarStr var_94, ".Total{"
  loc_BCB302: PopAdLdVar
  loc_BCB303: FLdPr Me
  loc_BCB306: MemLdRfVar from_stack_1.global_60
  loc_BCB309: LdPrVar
  loc_BCB30B: LateMemCall
  loc_BCB311: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCB316: PopAdLdVar
  loc_BCB317: FLdPr Me
  loc_BCB31A: MemLdRfVar from_stack_1.global_60
  loc_BCB31D: LdPrVar
  loc_BCB31F: LateMemCall
  loc_BCB325: LitVarStr var_94, " font-size: 13px;"
  loc_BCB32A: PopAdLdVar
  loc_BCB32B: FLdPr Me
  loc_BCB32E: MemLdRfVar from_stack_1.global_60
  loc_BCB331: LdPrVar
  loc_BCB333: LateMemCall
  loc_BCB339: LitVarStr var_94, " font-weight: bold;"
  loc_BCB33E: PopAdLdVar
  loc_BCB33F: FLdPr Me
  loc_BCB342: MemLdRfVar from_stack_1.global_60
  loc_BCB345: LdPrVar
  loc_BCB347: LateMemCall
  loc_BCB34D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCB352: PopAdLdVar
  loc_BCB353: FLdPr Me
  loc_BCB356: MemLdRfVar from_stack_1.global_60
  loc_BCB359: LdPrVar
  loc_BCB35B: LateMemCall
  loc_BCB361: LitVarStr var_94, " border: thin solid #000000;"
  loc_BCB366: PopAdLdVar
  loc_BCB367: FLdPr Me
  loc_BCB36A: MemLdRfVar from_stack_1.global_60
  loc_BCB36D: LdPrVar
  loc_BCB36F: LateMemCall
  loc_BCB375: LitVarStr var_94, "}"
  loc_BCB37A: PopAdLdVar
  loc_BCB37B: FLdPr Me
  loc_BCB37E: MemLdRfVar from_stack_1.global_60
  loc_BCB381: LdPrVar
  loc_BCB383: LateMemCall
  loc_BCB389: LitVarStr var_94, ".SubTotal {"
  loc_BCB38E: PopAdLdVar
  loc_BCB38F: FLdPr Me
  loc_BCB392: MemLdRfVar from_stack_1.global_60
  loc_BCB395: LdPrVar
  loc_BCB397: LateMemCall
  loc_BCB39D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCB3A2: PopAdLdVar
  loc_BCB3A3: FLdPr Me
  loc_BCB3A6: MemLdRfVar from_stack_1.global_60
  loc_BCB3A9: LdPrVar
  loc_BCB3AB: LateMemCall
  loc_BCB3B1: LitVarStr var_94, " font-size: 13px;"
  loc_BCB3B6: PopAdLdVar
  loc_BCB3B7: FLdPr Me
  loc_BCB3BA: MemLdRfVar from_stack_1.global_60
  loc_BCB3BD: LdPrVar
  loc_BCB3BF: LateMemCall
  loc_BCB3C5: LitVarStr var_94, " font-weight: bold;"
  loc_BCB3CA: PopAdLdVar
  loc_BCB3CB: FLdPr Me
  loc_BCB3CE: MemLdRfVar from_stack_1.global_60
  loc_BCB3D1: LdPrVar
  loc_BCB3D3: LateMemCall
  loc_BCB3D9: LitVarStr var_94, " background-color: #DDEFF9;"
  loc_BCB3DE: PopAdLdVar
  loc_BCB3DF: FLdPr Me
  loc_BCB3E2: MemLdRfVar from_stack_1.global_60
  loc_BCB3E5: LdPrVar
  loc_BCB3E7: LateMemCall
  loc_BCB3ED: LitVarStr var_94, "}"
  loc_BCB3F2: PopAdLdVar
  loc_BCB3F3: FLdPr Me
  loc_BCB3F6: MemLdRfVar from_stack_1.global_60
  loc_BCB3F9: LdPrVar
  loc_BCB3FB: LateMemCall
  loc_BCB401: LitVarStr var_94, "</style>"
  loc_BCB406: PopAdLdVar
  loc_BCB407: FLdPr Me
  loc_BCB40A: MemLdRfVar from_stack_1.global_60
  loc_BCB40D: LdPrVar
  loc_BCB40F: LateMemCall
  loc_BCB415: LitI4 0
  loc_BCB41A: FStStrCopy var_AC
  loc_BCB41D: FLdRfVar var_AC
  loc_BCB420: LitI4 0
  loc_BCB425: FStStrCopy var_A8
  loc_BCB428: FLdRfVar var_A8
  loc_BCB42B: LitI2_Byte 0
  loc_BCB42D: PopTmpLdAd2 var_BE
  loc_BCB430: FLdPr Me
  loc_BCB433: MemLdRfVar from_stack_1.global_60
  loc_BCB436: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BCB43B: FFreeStr var_A8 = ""
  loc_BCB442: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BCB447: PopAdLdVar
  loc_BCB448: FLdPr Me
  loc_BCB44B: MemLdRfVar from_stack_1.global_60
  loc_BCB44E: LdPrVar
  loc_BCB450: LateMemCall
  loc_BCB456: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BCB45B: PopAdLdVar
  loc_BCB45C: FLdPr Me
  loc_BCB45F: MemLdRfVar from_stack_1.global_60
  loc_BCB462: LdPrVar
  loc_BCB464: LateMemCall
  loc_BCB46A: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BCB46D: LitI2_Byte &H5F
  loc_BCB46F: CStrUI1
  loc_BCB471: FStStrNoPop var_A8
  loc_BCB474: ConcatStr
  loc_BCB475: FStStrNoPop var_AC
  loc_BCB478: LitStr """ height="""
  loc_BCB47B: ConcatStr
  loc_BCB47C: FStStrNoPop var_C4
  loc_BCB47F: LitI2_Byte &H3C
  loc_BCB481: CStrUI1
  loc_BCB483: FStStrNoPop var_C8
  loc_BCB486: ConcatStr
  loc_BCB487: FStStrNoPop var_CC
  loc_BCB48A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BCB48D: ConcatStr
  loc_BCB48E: FStStrNoPop var_D0
  loc_BCB491: LitStr "Municipalidad de Guaymallén"
  loc_BCB494: ConcatStr
  loc_BCB495: FStStrNoPop var_D4
  loc_BCB498: LitStr "</p>"
  loc_BCB49B: ConcatStr
  loc_BCB49C: CVarStr var_BC
  loc_BCB49F: PopAdLdVar
  loc_BCB4A0: FLdPr Me
  loc_BCB4A3: MemLdRfVar from_stack_1.global_60
  loc_BCB4A6: LdPrVar
  loc_BCB4A8: LateMemCall
  loc_BCB4AE: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BCB4BF: FFree1Var var_BC = ""
  loc_BCB4C2: LitStr "    <p>"
  loc_BCB4C5: FLdRfVar var_A8
  loc_BCB4C8: FLdPr Me
  loc_BCB4CB:  = Me.Caption
  loc_BCB4D0: ILdRf var_A8
  loc_BCB4D3: ConcatStr
  loc_BCB4D4: FStStrNoPop var_AC
  loc_BCB4D7: LitStr "</p></th>"
  loc_BCB4DA: ConcatStr
  loc_BCB4DB: CVarStr var_BC
  loc_BCB4DE: PopAdLdVar
  loc_BCB4DF: FLdPr Me
  loc_BCB4E2: MemLdRfVar from_stack_1.global_60
  loc_BCB4E5: LdPrVar
  loc_BCB4E7: LateMemCall
  loc_BCB4ED: FFreeStr var_A8 = ""
  loc_BCB4F4: FFree1Var var_BC = ""
  loc_BCB4F7: LitVarStr var_94, "  </tr>"
  loc_BCB4FC: PopAdLdVar
  loc_BCB4FD: FLdPr Me
  loc_BCB500: MemLdRfVar from_stack_1.global_60
  loc_BCB503: LdPrVar
  loc_BCB505: LateMemCall
  loc_BCB50B: LitVarStr var_94, "  <tr>"
  loc_BCB510: PopAdLdVar
  loc_BCB511: FLdPr Me
  loc_BCB514: MemLdRfVar from_stack_1.global_60
  loc_BCB517: LdPrVar
  loc_BCB519: LateMemCall
  loc_BCB51F: LitVarStr var_94, "    <th><hr></th>"
  loc_BCB524: PopAdLdVar
  loc_BCB525: FLdPr Me
  loc_BCB528: MemLdRfVar from_stack_1.global_60
  loc_BCB52B: LdPrVar
  loc_BCB52D: LateMemCall
  loc_BCB533: LitVarStr var_94, "  </tr>"
  loc_BCB538: PopAdLdVar
  loc_BCB539: FLdPr Me
  loc_BCB53C: MemLdRfVar from_stack_1.global_60
  loc_BCB53F: LdPrVar
  loc_BCB541: LateMemCall
  loc_BCB547: FLdPr Me
  loc_BCB54A: VCallAd Control_ID_ActiConcMsk
  loc_BCB54D: FStAdFunc var_D8
  loc_BCB550: FLdPr var_D8
  loc_BCB553: LateIdLdVar var_BC DispID_22 0
  loc_BCB55A: CStrVarTmp
  loc_BCB55B: FStStrNoPop var_A8
  loc_BCB55E: LitStr vbNullString
  loc_BCB561: EqStr
  loc_BCB563: FFree1Str var_A8
  loc_BCB566: FFree1Ad var_D8
  loc_BCB569: FFree1Var var_BC = ""
  loc_BCB56C: BranchF loc_BCB6A4
  loc_BCB56F: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BCB574: PopAdLdVar
  loc_BCB575: FLdPr Me
  loc_BCB578: MemLdRfVar from_stack_1.global_60
  loc_BCB57B: LdPrVar
  loc_BCB57D: LateMemCall
  loc_BCB583: LitStr "    <td align=""left"" valign=""top""><strong>Periodo: </strong>"
  loc_BCB586: FLdPr Me
  loc_BCB589: VCallAd Control_ID_PeriInfoMsk
  loc_BCB58C: FStAdFunc var_D8
  loc_BCB58F: FLdPr var_D8
  loc_BCB592: LateIdLdVar var_BC DispID_22 0
  loc_BCB599: CStrVarTmp
  loc_BCB59A: FStStrNoPop var_A8
  loc_BCB59D: ConcatStr
  loc_BCB59E: FStStrNoPop var_AC
  loc_BCB5A1: LitStr " TODAS LAS CUENTAS"
  loc_BCB5A4: ConcatStr
  loc_BCB5A5: CVarStr var_E8
  loc_BCB5A8: PopAdLdVar
  loc_BCB5A9: FLdPr Me
  loc_BCB5AC: MemLdRfVar from_stack_1.global_60
  loc_BCB5AF: LdPrVar
  loc_BCB5B1: LateMemCall
  loc_BCB5B7: FFreeStr var_A8 = ""
  loc_BCB5BE: FFree1Ad var_D8
  loc_BCB5C1: FFreeVar var_BC = ""
  loc_BCB5C8: LitVarStr var_94, "  </tr>"
  loc_BCB5CD: PopAdLdVar
  loc_BCB5CE: FLdPr Me
  loc_BCB5D1: MemLdRfVar from_stack_1.global_60
  loc_BCB5D4: LdPrVar
  loc_BCB5D6: LateMemCall
  loc_BCB5DC: LitVarStr var_94, "<br><table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BCB5E1: PopAdLdVar
  loc_BCB5E2: FLdPr Me
  loc_BCB5E5: MemLdRfVar from_stack_1.global_60
  loc_BCB5E8: LdPrVar
  loc_BCB5EA: LateMemCall
  loc_BCB5F0: LitVarStr var_94, "  <thead>"
  loc_BCB5F5: PopAdLdVar
  loc_BCB5F6: FLdPr Me
  loc_BCB5F9: MemLdRfVar from_stack_1.global_60
  loc_BCB5FC: LdPrVar
  loc_BCB5FE: LateMemCall
  loc_BCB604: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BCB609: PopAdLdVar
  loc_BCB60A: FLdPr Me
  loc_BCB60D: MemLdRfVar from_stack_1.global_60
  loc_BCB610: LdPrVar
  loc_BCB612: LateMemCall
  loc_BCB618: LitVarStr var_94, "    <th>Cuenta Patrimonial</th>"
  loc_BCB61D: PopAdLdVar
  loc_BCB61E: FLdPr Me
  loc_BCB621: MemLdRfVar from_stack_1.global_60
  loc_BCB624: LdPrVar
  loc_BCB626: LateMemCall
  loc_BCB62C: LitVarStr var_94, "    <th>Condonaciones</th>"
  loc_BCB631: PopAdLdVar
  loc_BCB632: FLdPr Me
  loc_BCB635: MemLdRfVar from_stack_1.global_60
  loc_BCB638: LdPrVar
  loc_BCB63A: LateMemCall
  loc_BCB640: LitVarStr var_94, "    <th>Exenciones</th>"
  loc_BCB645: PopAdLdVar
  loc_BCB646: FLdPr Me
  loc_BCB649: MemLdRfVar from_stack_1.global_60
  loc_BCB64C: LdPrVar
  loc_BCB64E: LateMemCall
  loc_BCB654: LitVarStr var_94, "    <th>Descuento</th>"
  loc_BCB659: PopAdLdVar
  loc_BCB65A: FLdPr Me
  loc_BCB65D: MemLdRfVar from_stack_1.global_60
  loc_BCB660: LdPrVar
  loc_BCB662: LateMemCall
  loc_BCB668: LitVarStr var_94, "    <th>Total</th>"
  loc_BCB66D: PopAdLdVar
  loc_BCB66E: FLdPr Me
  loc_BCB671: MemLdRfVar from_stack_1.global_60
  loc_BCB674: LdPrVar
  loc_BCB676: LateMemCall
  loc_BCB67C: LitVarStr var_94, "  </tr>"
  loc_BCB681: PopAdLdVar
  loc_BCB682: FLdPr Me
  loc_BCB685: MemLdRfVar from_stack_1.global_60
  loc_BCB688: LdPrVar
  loc_BCB68A: LateMemCall
  loc_BCB690: LitVarStr var_94, "  </thead>"
  loc_BCB695: PopAdLdVar
  loc_BCB696: FLdPr Me
  loc_BCB699: MemLdRfVar from_stack_1.global_60
  loc_BCB69C: LdPrVar
  loc_BCB69E: LateMemCall
  loc_BCB6A4: ExitProcHresult
  loc_BCB6A5: CR8Cy
  loc_BCB6A6: AddR8
End Function

Private Function Proc_207_19_B2FC28() 'B2FC28
  'Data Table: 46943C
  loc_B2F964: LitI4 1
  loc_B2F969: FLdPr Me
  loc_B2F96C: MemLdStr global_88
  loc_B2F96F: AryLock
  loc_B2F972: Ary1LdRf
  loc_B2F973: FStR4 var_8C
  loc_B2F976: LitVarStr var_9C, "  <tr>"
  loc_B2F97B: PopAdLdVar
  loc_B2F97C: FLdPr Me
  loc_B2F97F: MemLdRfVar from_stack_1.global_60
  loc_B2F982: LdPrVar
  loc_B2F984: LateMemCall
  loc_B2F98A: LitStr "    <th align=""center""><br><br> Periodo: <strong>"
  loc_B2F98D: FLdPr Me
  loc_B2F990: VCallAd Control_ID_PeriInfoMsk
  loc_B2F993: FStAdFunc var_B0
  loc_B2F996: FLdPr var_B0
  loc_B2F999: LateIdLdVar var_C0 DispID_22 0
  loc_B2F9A0: CStrVarTmp
  loc_B2F9A1: FStStrNoPop var_C4
  loc_B2F9A4: ConcatStr
  loc_B2F9A5: FStStrNoPop var_C8
  loc_B2F9A8: LitStr " - Cuenta Contable: <strong>"
  loc_B2F9AB: ConcatStr
  loc_B2F9AC: FStStrNoPop var_E0
  loc_B2F9AF: FLdPr Me
  loc_B2F9B2: VCallAd Control_ID_ActiConcMsk
  loc_B2F9B5: FStAdFunc var_CC
  loc_B2F9B8: FLdPr var_CC
  loc_B2F9BB: LateIdLdVar var_DC DispID_22 0
  loc_B2F9C2: CStrVarTmp
  loc_B2F9C3: FStStrNoPop var_E4
  loc_B2F9C6: ConcatStr
  loc_B2F9C7: FStStrNoPop var_E8
  loc_B2F9CA: LitStr " - "
  loc_B2F9CD: ConcatStr
  loc_B2F9CE: FStStrNoPop var_F4
  loc_B2F9D1: FLdRfVar var_F0
  loc_B2F9D4: FLdPr Me
  loc_B2F9D7: VCallAd Control_ID_DetaActiLbl
  loc_B2F9DA: FStAdFunc var_EC
  loc_B2F9DD: FLdPr var_EC
  loc_B2F9E0:  = Me.Caption
  loc_B2F9E5: ILdRf var_F0
  loc_B2F9E8: ConcatStr
  loc_B2F9E9: FStStrNoPop var_F8
  loc_B2F9EC: LitStr "</strong></th>"
  loc_B2F9EF: ConcatStr
  loc_B2F9F0: CVarStr var_108
  loc_B2F9F3: PopAdLdVar
  loc_B2F9F4: FLdPr Me
  loc_B2F9F7: MemLdRfVar from_stack_1.global_60
  loc_B2F9FA: LdPrVar
  loc_B2F9FC: LateMemCall
  loc_B2FA02: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_F4 = "": var_F0 = ""
  loc_B2FA15: FFreeAd var_B0 = "": var_CC = ""
  loc_B2FA1E: FFreeVar var_C0 = "": var_DC = ""
  loc_B2FA27: LitVarStr var_9C, "  </tr>"
  loc_B2FA2C: PopAdLdVar
  loc_B2FA2D: FLdPr Me
  loc_B2FA30: MemLdRfVar from_stack_1.global_60
  loc_B2FA33: LdPrVar
  loc_B2FA35: LateMemCall
  loc_B2FA3B: LitVarStr var_9C, "</table>"
  loc_B2FA40: PopAdLdVar
  loc_B2FA41: FLdPr Me
  loc_B2FA44: MemLdRfVar from_stack_1.global_60
  loc_B2FA47: LdPrVar
  loc_B2FA49: LateMemCall
  loc_B2FA4F: LitVarStr var_9C, "<p>&nbsp;</p>"
  loc_B2FA54: PopAdLdVar
  loc_B2FA55: FLdPr Me
  loc_B2FA58: MemLdRfVar from_stack_1.global_60
  loc_B2FA5B: LdPrVar
  loc_B2FA5D: LateMemCall
  loc_B2FA63: LitVarStr var_9C, "<table border=""0"" align=""center"">"
  loc_B2FA68: PopAdLdVar
  loc_B2FA69: FLdPr Me
  loc_B2FA6C: MemLdRfVar from_stack_1.global_60
  loc_B2FA6F: LdPrVar
  loc_B2FA71: LateMemCall
  loc_B2FA77: LitVarStr var_9C, "  <tr align=""right"">"
  loc_B2FA7C: PopAdLdVar
  loc_B2FA7D: FLdPr Me
  loc_B2FA80: MemLdRfVar from_stack_1.global_60
  loc_B2FA83: LdPrVar
  loc_B2FA85: LateMemCall
  loc_B2FA8B: LitVarStr var_9C, "    <td width=""58"" class=""EncabezadoTotales"">Condonaciones:</td>"
  loc_B2FA90: PopAdLdVar
  loc_B2FA91: FLdPr Me
  loc_B2FA94: MemLdRfVar from_stack_1.global_60
  loc_B2FA97: LdPrVar
  loc_B2FA99: LateMemCall
  loc_B2FA9F: LitStr "    <td width=""111"" class=""SubTotal"">"
  loc_B2FAA2: FMemLdR4 var_8C(0)
  loc_B2FAA7: ConcatStr
  loc_B2FAA8: FStStrNoPop var_C4
  loc_B2FAAB: LitStr "</td>"
  loc_B2FAAE: ConcatStr
  loc_B2FAAF: CVarStr var_C0
  loc_B2FAB2: PopAdLdVar
  loc_B2FAB3: FLdPr Me
  loc_B2FAB6: MemLdRfVar from_stack_1.global_60
  loc_B2FAB9: LdPrVar
  loc_B2FABB: LateMemCall
  loc_B2FAC1: FFree1Str var_C4
  loc_B2FAC4: FFree1Var var_C0 = ""
  loc_B2FAC7: LitVarStr var_9C, "  </tr>"
  loc_B2FACC: PopAdLdVar
  loc_B2FACD: FLdPr Me
  loc_B2FAD0: MemLdRfVar from_stack_1.global_60
  loc_B2FAD3: LdPrVar
  loc_B2FAD5: LateMemCall
  loc_B2FADB: LitVarStr var_9C, "  <tr align=""right"">"
  loc_B2FAE0: PopAdLdVar
  loc_B2FAE1: FLdPr Me
  loc_B2FAE4: MemLdRfVar from_stack_1.global_60
  loc_B2FAE7: LdPrVar
  loc_B2FAE9: LateMemCall
  loc_B2FAEF: LitVarStr var_9C, "    <td class=""EncabezadoTotales"">Exenciones:</td>"
  loc_B2FAF4: PopAdLdVar
  loc_B2FAF5: FLdPr Me
  loc_B2FAF8: MemLdRfVar from_stack_1.global_60
  loc_B2FAFB: LdPrVar
  loc_B2FAFD: LateMemCall
  loc_B2FB03: LitStr "    <td class=""SubTotal"">"
  loc_B2FB06: FMemLdR4 var_8C(4)
  loc_B2FB0B: ConcatStr
  loc_B2FB0C: FStStrNoPop var_C4
  loc_B2FB0F: LitStr "</td>"
  loc_B2FB12: ConcatStr
  loc_B2FB13: CVarStr var_C0
  loc_B2FB16: PopAdLdVar
  loc_B2FB17: FLdPr Me
  loc_B2FB1A: MemLdRfVar from_stack_1.global_60
  loc_B2FB1D: LdPrVar
  loc_B2FB1F: LateMemCall
  loc_B2FB25: FFree1Str var_C4
  loc_B2FB28: FFree1Var var_C0 = ""
  loc_B2FB2B: LitVarStr var_9C, "  </tr>"
  loc_B2FB30: PopAdLdVar
  loc_B2FB31: FLdPr Me
  loc_B2FB34: MemLdRfVar from_stack_1.global_60
  loc_B2FB37: LdPrVar
  loc_B2FB39: LateMemCall
  loc_B2FB3F: LitVarStr var_9C, "  <tr align=""right"">"
  loc_B2FB44: PopAdLdVar
  loc_B2FB45: FLdPr Me
  loc_B2FB48: MemLdRfVar from_stack_1.global_60
  loc_B2FB4B: LdPrVar
  loc_B2FB4D: LateMemCall
  loc_B2FB53: LitVarStr var_9C, "    <td class=""EncabezadoTotales"">Descuentos:</td>"
  loc_B2FB58: PopAdLdVar
  loc_B2FB59: FLdPr Me
  loc_B2FB5C: MemLdRfVar from_stack_1.global_60
  loc_B2FB5F: LdPrVar
  loc_B2FB61: LateMemCall
  loc_B2FB67: LitStr "    <td class=""SubTotal"">"
  loc_B2FB6A: FMemLdR4 var_8C(8)
  loc_B2FB6F: ConcatStr
  loc_B2FB70: FStStrNoPop var_C4
  loc_B2FB73: LitStr "</td>"
  loc_B2FB76: ConcatStr
  loc_B2FB77: CVarStr var_C0
  loc_B2FB7A: PopAdLdVar
  loc_B2FB7B: FLdPr Me
  loc_B2FB7E: MemLdRfVar from_stack_1.global_60
  loc_B2FB81: LdPrVar
  loc_B2FB83: LateMemCall
  loc_B2FB89: FFree1Str var_C4
  loc_B2FB8C: FFree1Var var_C0 = ""
  loc_B2FB8F: LitVarStr var_9C, "  </tr>"
  loc_B2FB94: PopAdLdVar
  loc_B2FB95: FLdPr Me
  loc_B2FB98: MemLdRfVar from_stack_1.global_60
  loc_B2FB9B: LdPrVar
  loc_B2FB9D: LateMemCall
  loc_B2FBA3: LitVarStr var_9C, "  <tr align=""right"">"
  loc_B2FBA8: PopAdLdVar
  loc_B2FBA9: FLdPr Me
  loc_B2FBAC: MemLdRfVar from_stack_1.global_60
  loc_B2FBAF: LdPrVar
  loc_B2FBB1: LateMemCall
  loc_B2FBB7: LitVarStr var_9C, "    <td class=""EncabezadoTotales"">TOTAL:</td>"
  loc_B2FBBC: PopAdLdVar
  loc_B2FBBD: FLdPr Me
  loc_B2FBC0: MemLdRfVar from_stack_1.global_60
  loc_B2FBC3: LdPrVar
  loc_B2FBC5: LateMemCall
  loc_B2FBCB: LitStr "    <td class=""Total"">"
  loc_B2FBCE: FMemLdR4 var_8C(12)
  loc_B2FBD3: ConcatStr
  loc_B2FBD4: FStStrNoPop var_C4
  loc_B2FBD7: LitStr "</td>"
  loc_B2FBDA: ConcatStr
  loc_B2FBDB: CVarStr var_C0
  loc_B2FBDE: PopAdLdVar
  loc_B2FBDF: FLdPr Me
  loc_B2FBE2: MemLdRfVar from_stack_1.global_60
  loc_B2FBE5: LdPrVar
  loc_B2FBE7: LateMemCall
  loc_B2FBED: FFree1Str var_C4
  loc_B2FBF0: FFree1Var var_C0 = ""
  loc_B2FBF3: LitVarStr var_9C, "  </tr>"
  loc_B2FBF8: PopAdLdVar
  loc_B2FBF9: FLdPr Me
  loc_B2FBFC: MemLdRfVar from_stack_1.global_60
  loc_B2FBFF: LdPrVar
  loc_B2FC01: LateMemCall
  loc_B2FC07: LitVarStr var_9C, "</table>"
  loc_B2FC0C: PopAdLdVar
  loc_B2FC0D: FLdPr Me
  loc_B2FC10: MemLdRfVar from_stack_1.global_60
  loc_B2FC13: LdPrVar
  loc_B2FC15: LateMemCall
  loc_B2FC1B: LitI4 0
  loc_B2FC20: FStR4 var_8C
  loc_B2FC23: AryUnlock
  loc_B2FC26: ExitProcHresult
End Function

Private Function Proc_207_20_9F0604() '9F0604
  'Data Table: 46943C
  loc_9F05D8: LitVarStr var_94, "</body>"
  loc_9F05DD: PopAdLdVar
  loc_9F05DE: FLdPr Me
  loc_9F05E1: MemLdRfVar from_stack_1.global_60
  loc_9F05E4: LdPrVar
  loc_9F05E6: LateMemCall
  loc_9F05EC: LitVarStr var_94, "</html>"
  loc_9F05F1: PopAdLdVar
  loc_9F05F2: FLdPr Me
  loc_9F05F5: MemLdRfVar from_stack_1.global_60
  loc_9F05F8: LdPrVar
  loc_9F05FA: LateMemCall
  loc_9F0600: ExitProcHresult
  loc_9F0601: CI4R8
  loc_9F0602: FStStrNoPop var_3C00
End Function
