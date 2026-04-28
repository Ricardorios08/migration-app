VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeContribuyentessinDeuda
  Caption = "Listado de Contribuyentes sin Deuda"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeContribuyentessinDeuda.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10680
  ClientHeight = 4560
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
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 2880
    Width = 10455
    Height = 150
    Visible = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptListadodeContribuyentessinDeuda.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4305
    Width = 10680
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptListadodeContribuyentessinDeuda.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9360
    Top = 3240
    Width = 855
    Height = 735
    TabIndex = 11
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
    Picture = "rptListadodeContribuyentessinDeuda.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeContribuyentessinDeuda.frx":0C04
    Left = 9960
    Top = 3000
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 3000
    Width = 4092
    Height = 1215
    TabIndex = 14
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 9
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3000
    Width = 4095
    Height = 1215
    TabIndex = 13
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10455
    Height = 2895
    TabIndex = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CheckBox SoloActivasChk
      Caption = "Sólo cuentas activas"
      Left = 7680
      Top = 1680
      Width = 2535
      Height = 300
      TabIndex = 6
    End
    Begin VB.CommandButton ActiConcCmd
      Left = 3840
      Top = 1080
      Width = 450
      Height = 360
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 7,8
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "rptListadodeContribuyentessinDeuda.frx":0C68
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.Frame Frame4
      Left = 2160
      Top = 1560
      Width = 3255
      Height = 1095
      TabIndex = 18
      Begin VB.OptionButton LibreDeudaAlDiaOpt
        Caption = "Libre Deuda al Día"
        Left = 600
        Top = 600
        Width = 2295
        Height = 375
        TabIndex = 5
      End
      Begin VB.OptionButton LibreDeudaOpt
        Caption = "Libre Deuda"
        Left = 600
        Top = 240
        Width = 2295
        Height = 375
        TabIndex = 4
      End
    End
    Begin VB.CommandButton HastaFechaCmd
      Left = 3600
      Top = 405
      Width = 375
      Height = 375
      TabIndex = 1
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 7,8
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "rptListadodeContribuyentessinDeuda.frx":0D62
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8640
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 10
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 405
      Width = 1335
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptListadodeContribuyentessinDeuda.frx":12A4
    End
    Begin MSMask.MaskEdBox ActiConcMsk
      Left = 2160
      Top = 1080
      Width = 1575
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptListadodeContribuyentessinDeuda.frx":1354
    End
    Begin VB.Label DetaActiLbl
      ForeColor = &HFF0000&
      Left = 4440
      Top = 1080
      Width = 5775
      Height = 360
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label8
      Caption = "Cuenta Contable:"
      Left = 240
      Top = 1080
      Width = 1860
      Height = 300
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1380
      Top = 405
      Width = 705
      Height = 300
      TabIndex = 17
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9360
    Top = 3600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptListadodeContribuyentessinDeuda.frx":1404
  End
End

Attribute VB_Name = "rptListadodeContribuyentessinDeuda"

Public bGenerado As Boolean

Private Type UDT_1_00560FDC
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_005657CC
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub Form_Load() '9DF7EC
  'Data Table: 4B1380
  loc_9DF7D0: ILdRf Me
  loc_9DF7D3: CastAd
  loc_9DF7D6: FStAdFunc var_88
  loc_9DF7D9: FLdRfVar var_88
  loc_9DF7DC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9DF7E1: FFree1Ad var_88
  loc_9DF7E4: Call cmdNueva_Click()
  loc_9DF7E9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CBB08
  'Data Table: 4B1380
  loc_9CBAF0: FLdPr Me
  loc_9CBAF3: VCallAd Control_ID_wbbReporte
  loc_9CBAF6: FStAdFunc var_88
  loc_9CBAF9: FLdRfVar var_88
  loc_9CBAFC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CBB01: FFree1Ad var_88
  loc_9CBB04: ExitProcHresult
  loc_9CBB05: CBoolVarNull
End Sub

Private Sub HastaFechaCmd_Click() 'A0FE04
  'Data Table: 4B1380
  loc_A0FDC8: LitVar_Missing var_A4
  loc_A0FDCB: PopAdLdVar
  loc_A0FDCC: LitVarI4
  loc_A0FDD4: PopAdLdVar
  loc_A0FDD5: ImpAdLdRf MemVar_D930A4
  loc_A0FDD8: NewIfNullPr frmCalendario
  loc_A0FDDB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0FDE0: ImpAdLdRf MemVar_D93028
  loc_A0FDE3: CDargRef
  loc_A0FDE7: FLdPr Me
  loc_A0FDEA: VCallAd Control_ID_HastaMsk
  loc_A0FDED: FStAdFunc var_A8
  loc_A0FDF0: FLdPr var_A8
  loc_A0FDF3: LateIdSt
  loc_A0FDF8: FFree1Ad var_A8
  loc_A0FDFB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0FE00: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13D20
  'Data Table: 4B1380
  loc_A13CE8: FLdPr Me
  loc_A13CEB: VCallAd Control_ID_statusBar
  loc_A13CEE: FStAdFunc var_88
  loc_A13CF1: FLdPr var_88
  loc_A13CF4: LateIdLdVar var_98 DispID_1 0
  loc_A13CFB: CStrVarTmp
  loc_A13CFC: CVarStr var_A8
  loc_A13CFF: PopAdLdVar
  loc_A13D00: FLdPr Me
  loc_A13D03: VCallAd Control_ID_statusBar
  loc_A13D06: FStAdFunc var_BC
  loc_A13D09: FLdPr var_BC
  loc_A13D0C: LateIdSt
  loc_A13D11: FFreeAd var_88 = ""
  loc_A13D18: FFreeVar var_98 = ""
  loc_A13D1F: ExitProcHresult
End Sub

Private Sub ActiConcMsk_UnknownEvent_0 '9C7940
  'Data Table: 4B1380
  loc_9C792C: FLdPr Me
  loc_9C792F: VCallAd Control_ID_ActiConcMsk
  loc_9C7932: CVarAd
  loc_9C7936: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C793B: FFree1Var var_94 = ""
  loc_9C793E: ExitProcHresult
End Sub

Private Sub ActiConcMsk_UnknownEvent_8 'AE6B70
  'Data Table: 4B1380
  loc_AE6A1C: FLdPr Me
  loc_AE6A1F: VCallAd Control_ID_HastaMsk
  loc_AE6A22: FStAdFunc var_88
  loc_AE6A25: FLdPr var_88
  loc_AE6A28: LateIdLdVar var_98 DispID_15 0
  loc_AE6A2F: CStrVarTmp
  loc_AE6A30: CVarStr var_A8
  loc_AE6A33: FLdRfVar var_B8
  loc_AE6A36: ImpAdCallFPR4  = Year()
  loc_AE6A3B: FLdPr Me
  loc_AE6A3E: VCallAd Control_ID_ActiConcMsk
  loc_AE6A41: FStAdFunc var_BC
  loc_AE6A44: FLdPr var_BC
  loc_AE6A47: LateIdLdVar var_CC DispID_22 0
  loc_AE6A4E: PopAd
  loc_AE6A50: LitI4 0
  loc_AE6A55: LitI4 0
  loc_AE6A5A: FLdRfVar var_D8
  loc_AE6A5D: Redim
  loc_AE6A67: LitVarStr var_E8, "1"
  loc_AE6A6C: LitI4 0
  loc_AE6A71: ILdRf var_D8
  loc_AE6A74: Ary1StVarCopy
  loc_AE6A76: FLdRfVar var_D8
  loc_AE6A79: FLdRfVar var_CC
  loc_AE6A7C: CStrVarTmp
  loc_AE6A7D: FStStrNoPop var_D4
  loc_AE6A80: FLdRfVar var_B8
  loc_AE6A83: CStrVarVal var_D0
  loc_AE6A87: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AE6A8C: FStStr var_EC
  loc_AE6A8F: FLdRfVar var_D8
  loc_AE6A92: Erase
  loc_AE6A93: ILdRf var_EC
  loc_AE6A96: FLdPr Me
  loc_AE6A99: MemStStrCopy
  loc_AE6A9D: FFreeStr var_D0 = "": var_D4 = ""
  loc_AE6AA6: FFreeAd var_88 = ""
  loc_AE6AAD: FFreeVar var_98 = "": var_A8 = "": var_CC = ""
  loc_AE6AB8: FLdPr Me
  loc_AE6ABB: VCallAd Control_ID_ActiConcMsk
  loc_AE6ABE: FStAdFuncNoPop
  loc_AE6AC1: CastAd
  loc_AE6AC4: FStAdFunc var_BC
  loc_AE6AC7: FLdRfVar var_BC
  loc_AE6ACA: FLdPr Me
  loc_AE6ACD: MemLdStr global_108
  loc_AE6AD0: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AE6AD5: IStI2 Button
  loc_AE6AD8: FFreeAd var_88 = ""
  loc_AE6ADF: ILdI2 Button
  loc_AE6AE2: NotI4
  loc_AE6AE3: BranchF loc_AE6B57
  loc_AE6AE6: FLdPr Me
  loc_AE6AE9: VCallAd Control_ID_HastaMsk
  loc_AE6AEC: FStAdFunc var_88
  loc_AE6AEF: FLdPr var_88
  loc_AE6AF2: LateIdLdVar var_98 DispID_15 0
  loc_AE6AF9: CStrVarTmp
  loc_AE6AFA: CVarStr var_A8
  loc_AE6AFD: FLdRfVar var_B8
  loc_AE6B00: ImpAdCallFPR4  = Year()
  loc_AE6B05: FLdPr Me
  loc_AE6B08: VCallAd Control_ID_ActiConcMsk
  loc_AE6B0B: FStAdFunc var_BC
  loc_AE6B0E: FLdPr var_BC
  loc_AE6B11: LateIdLdVar var_CC DispID_22 0
  loc_AE6B18: CStrVarTmp
  loc_AE6B19: FStStrNoPop var_D0
  loc_AE6B1C: FLdRfVar var_B8
  loc_AE6B1F: CI2Var
  loc_AE6B20: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AE6B25: FStStrNoPop var_D4
  loc_AE6B28: FLdPr Me
  loc_AE6B2B: VCallAd Control_ID_DetaActiLbl
  loc_AE6B2E: FStAdFunc var_F0
  loc_AE6B31: FLdPr var_F0
  loc_AE6B34: Me.Caption = from_stack_1
  loc_AE6B39: FFreeStr var_D0 = ""
  loc_AE6B40: FFreeAd var_88 = "": var_BC = ""
  loc_AE6B49: FFreeVar var_98 = "": var_A8 = "": var_CC = ""
  loc_AE6B54: Branch loc_AE6B6E
  loc_AE6B57: LitStr vbNullString
  loc_AE6B5A: FLdPr Me
  loc_AE6B5D: VCallAd Control_ID_DetaActiLbl
  loc_AE6B60: FStAdFunc var_88
  loc_AE6B63: FLdPr var_88
  loc_AE6B66: Me.Caption = from_stack_1
  loc_AE6B6B: FFree1Ad var_88
  loc_AE6B6E: ExitProcHresult
End Sub

Private Sub ActiConcCmd_Click() 'AC32A0
  'Data Table: 4B1380
  loc_AC31B4: ImpAdLdRf MemVar_D9468C
  loc_AC31B7: NewIfNullAd
  loc_AC31BA: FStAd var_88 
  loc_AC31BE: LitStr "SELECT DISTINCT(CodiCuco), cu.* FROM infogov.cuentacontable as cu"
  loc_AC31C1: LitStr " LEFT JOIN concepto as co ON co.PeriInfo = cu.PeriInfo AND co.ActiConc = cu.CodiCuco AND ActiConc <> ''"
  loc_AC31C4: ConcatStr
  loc_AC31C5: FStStrNoPop var_8C
  loc_AC31C8: LitStr " WHERE co.PeriInfo = "
  loc_AC31CB: ConcatStr
  loc_AC31CC: CVarStr var_D0
  loc_AC31CF: FLdPr Me
  loc_AC31D2: VCallAd Control_ID_HastaMsk
  loc_AC31D5: FStAdFunc var_90
  loc_AC31D8: FLdPr var_90
  loc_AC31DB: LateIdLdVar var_A0 DispID_15 0
  loc_AC31E2: CStrVarTmp
  loc_AC31E3: CVarStr var_B0
  loc_AC31E6: FLdRfVar var_C0
  loc_AC31E9: ImpAdCallFPR4  = Year()
  loc_AC31EE: FLdRfVar var_C0
  loc_AC31F1: ConcatVar var_E0
  loc_AC31F5: LitVarStr var_F0, " ORDER BY co.ActiConc"
  loc_AC31FA: ConcatVar var_100
  loc_AC31FE: CStrVarVal var_104
  loc_AC3202: FLdPr var_88
  loc_AC3205: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AC320A: FFreeStr var_8C = ""
  loc_AC3211: FFree1Ad var_90
  loc_AC3214: FFreeVar var_A0 = "": var_B0 = "": var_D0 = "": var_C0 = "": var_E0 = ""
  loc_AC3223: LitVar_Missing var_114
  loc_AC3226: PopAdLdVar
  loc_AC3227: LitVarI4
  loc_AC322F: PopAdLdVar
  loc_AC3230: FLdPr var_88
  loc_AC3233: Me.Show from_stack_1, from_stack_2
  loc_AC3238: FLdRfVar var_8C
  loc_AC323B: FLdPr var_88
  loc_AC323E: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AC3243: FLdZeroAd var_8C
  loc_AC3246: CVarStr var_A0
  loc_AC3249: PopAdLdVar
  loc_AC324A: FLdPr Me
  loc_AC324D: VCallAd Control_ID_ActiConcMsk
  loc_AC3250: FStAdFunc var_90
  loc_AC3253: FLdPr var_90
  loc_AC3256: LateIdSt
  loc_AC325B: FFree1Ad var_90
  loc_AC325E: FFree1Var var_A0 = ""
  loc_AC3261: LitStr vbNullString
  loc_AC3264: FLdPr var_88
  loc_AC3267: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AC326C: FLdRfVar var_8C
  loc_AC326F: FLdPr var_88
  loc_AC3272: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AC3277: ILdRf var_8C
  loc_AC327A: FLdPr Me
  loc_AC327D: VCallAd Control_ID_DetaActiLbl
  loc_AC3280: FStAdFunc var_90
  loc_AC3283: FLdPr var_90
  loc_AC3286: Me.Caption = from_stack_1
  loc_AC328B: FFree1Str var_8C
  loc_AC328E: FFree1Ad var_90
  loc_AC3291: LitNothing
  loc_AC3293: FStAd var_88 
  loc_AC3297: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AC329C: ExitProcHresult
  loc_AC329D: Ary1StCy
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9C5B28
  'Data Table: 4B1380
  loc_9C5B14: FLdPr Me
  loc_9C5B17: VCallAd Control_ID_HastaMsk
  loc_9C5B1A: CVarAd
  loc_9C5B1E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5B23: FFree1Var var_94 = ""
  loc_9C5B26: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'A63A20
  'Data Table: 4B1380
  loc_A639C4: FLdPr Me
  loc_A639C7: VCallAd Control_ID_HastaMsk
  loc_A639CA: FStAdFunc var_88
  loc_A639CD: FLdPr var_88
  loc_A639D0: LateIdLdVar var_98 DispID_15 0
  loc_A639D7: CStrVarTmp
  loc_A639D8: FStStrNoPop var_9C
  loc_A639DB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A639E0: FStStrNoPop var_A0
  loc_A639E3: FLdPr Me
  loc_A639E6: MemStStrCopy
  loc_A639EA: FFreeStr var_9C = ""
  loc_A639F1: FFree1Ad var_88
  loc_A639F4: FFree1Var var_98 = ""
  loc_A639F7: FLdPr Me
  loc_A639FA: VCallAd Control_ID_HastaMsk
  loc_A639FD: FStAdFuncNoPop
  loc_A63A00: CastAd
  loc_A63A03: FStAdFunc var_A4
  loc_A63A06: FLdRfVar var_A4
  loc_A63A09: FLdPr Me
  loc_A63A0C: MemLdStr global_108
  loc_A63A0F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63A14: IStI2 arg_C
  loc_A63A17: FFreeAd var_88 = ""
  loc_A63A1E: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '9DFE7C
  'Data Table: 4B1380
  loc_9DFE60: LitI2_Byte 0
  loc_9DFE62: PopTmpLdAd2 var_8A
  loc_9DFE65: ILdRf Me
  loc_9DFE68: CastAd
  loc_9DFE6B: FStAdFunc var_88
  loc_9DFE6E: FLdRfVar var_88
  loc_9DFE71: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DFE76: FFree1Ad var_88
  loc_9DFE79: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CB72C
  'Data Table: 4B1380
  loc_9CB714: ILdRf Me
  loc_9CB717: CastAd
  loc_9CB71A: FStAdFunc var_88
  loc_9CB71D: FLdRfVar var_88
  loc_9CB720: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CB725: FFree1Ad var_88
  loc_9CB728: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A04FFC
  'Data Table: 4B1380
  loc_A04FCC: LitVarStr var_94, "Cerrando..."
  loc_A04FD1: PopAdLdVar
  loc_A04FD2: FLdPr Me
  loc_A04FD5: VCallAd Control_ID_statusBar
  loc_A04FD8: FStAdFunc var_A8
  loc_A04FDB: FLdPr var_A8
  loc_A04FDE: LateIdSt
  loc_A04FE3: FFree1Ad var_A8
  loc_A04FE6: ILdRf Me
  loc_A04FE9: FStAdNoPop
  loc_A04FED: ImpAdLdRf MemVar_D9C5D8
  loc_A04FF0: NewIfNullPr Global
  loc_A04FF3: Global.Unload from_stack_1
  loc_A04FF8: FFree1Ad var_A8
  loc_A04FFB: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9C8928
  'Data Table: 4B1380
  loc_9C8910: LitI2_Byte 0
  loc_9C8912: ILdRf Me
  loc_9C8915: CastAd
  loc_9C8918: FStAdFunc var_88
  loc_9C891B: FLdRfVar var_88
  loc_9C891E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C8923: FFree1Ad var_88
  loc_9C8926: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AA2554
  'Data Table: 4B1380
  loc_AA2494: LitI2_Byte 0
  loc_AA2496: FLdPr Me
  loc_AA2499: MemStI2 bGenerado
  loc_AA249C: LitI2_Byte 0
  loc_AA249E: ILdRf Me
  loc_AA24A1: CastAd
  loc_AA24A4: FStAdFunc var_88
  loc_AA24A7: FLdRfVar var_88
  loc_AA24AA: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AA24AF: FFree1Ad var_88
  loc_AA24B2: LitVarStr var_98, vbNullString
  loc_AA24B7: PopAdLdVar
  loc_AA24B8: FLdPr Me
  loc_AA24BB: VCallAd Control_ID_ActiConcMsk
  loc_AA24BE: FStAdFunc var_88
  loc_AA24C1: FLdPr var_88
  loc_AA24C4: LateIdSt
  loc_AA24C9: FFree1Ad var_88
  loc_AA24CC: LitStr vbNullString
  loc_AA24CF: FLdPr Me
  loc_AA24D2: VCallAd Control_ID_DetaActiLbl
  loc_AA24D5: FStAdFunc var_88
  loc_AA24D8: FLdPr var_88
  loc_AA24DB: Me.Caption = from_stack_1
  loc_AA24E0: FFree1Ad var_88
  loc_AA24E3: LitI2_Byte 0
  loc_AA24E5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA24EA: CStrDate
  loc_AA24EC: CVarStr var_B8
  loc_AA24EF: PopAdLdVar
  loc_AA24F0: FLdPr Me
  loc_AA24F3: VCallAd Control_ID_HastaMsk
  loc_AA24F6: FStAdFunc var_88
  loc_AA24F9: FLdPr var_88
  loc_AA24FC: LateIdSt
  loc_AA2501: FFree1Ad var_88
  loc_AA2504: FFree1Var var_B8 = ""
  loc_AA2507: LitI2_Byte &HFF
  loc_AA2509: FLdPr Me
  loc_AA250C: VCallAd Control_ID_LibreDeudaOpt
  loc_AA250F: FStAdFunc var_88
  loc_AA2512: FLdPr var_88
  loc_AA2515: Me.Value = from_stack_1b
  loc_AA251A: FFree1Ad var_88
  loc_AA251D: LitI4 1
  loc_AA2522: CI2I4
  loc_AA2523: FLdPr Me
  loc_AA2526: VCallAd Control_ID_SoloActivasChk
  loc_AA2529: FStAdFunc var_88
  loc_AA252C: FLdPr var_88
  loc_AA252F: Me.Value = from_stack_1
  loc_AA2534: FFree1Ad var_88
  loc_AA2537: Call HabilitarCriterio()
  loc_AA253C: ILdRf Me
  loc_AA253F: CastAd
  loc_AA2542: FStAdFunc var_88
  loc_AA2545: FLdRfVar var_88
  loc_AA2548: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AA254D: FFree1Ad var_88
  loc_AA2550: ExitProcHresult
  loc_AA2551: ExitProc
  loc_AA2552: DOC
End Sub

Public Function bGeneradoGet() '4B242C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4B243B
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A95DD8
  'Data Table: 4B1380
  loc_A95D44: LitI4 0
  loc_A95D49: LitI4 6
  loc_A95D4E: FLdRfVar var_88
  loc_A95D51: Redim
  loc_A95D5B: FLdPr Me
  loc_A95D5E: VCallAd Control_ID_HastaMsk
  loc_A95D61: CVarAd
  loc_A95D65: ParmAry1St
  loc_A95D6B: FLdPr Me
  loc_A95D6E: VCallAd Control_ID_HastaFechaCmd
  loc_A95D71: CVarAd
  loc_A95D75: ParmAry1St
  loc_A95D7B: FLdPr Me
  loc_A95D7E: VCallAd Control_ID_ActiConcMsk
  loc_A95D81: CVarAd
  loc_A95D85: ParmAry1St
  loc_A95D8B: FLdPr Me
  loc_A95D8E: VCallAd Control_ID_ActiConcCmd
  loc_A95D91: CVarAd
  loc_A95D95: ParmAry1St
  loc_A95D9B: FLdPr Me
  loc_A95D9E: VCallAd Control_ID_LibreDeudaOpt
  loc_A95DA1: CVarAd
  loc_A95DA5: ParmAry1St
  loc_A95DAB: FLdPr Me
  loc_A95DAE: VCallAd Control_ID_LibreDeudaAlDiaOpt
  loc_A95DB1: CVarAd
  loc_A95DB5: ParmAry1St
  loc_A95DBB: FLdPr Me
  loc_A95DBE: VCallAd Control_ID_SoloActivasChk
  loc_A95DC1: CVarAd
  loc_A95DC5: ParmAry1St
  loc_A95DCB: FLdRfVar var_88
  loc_A95DCE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A95DD3: FLdRfVar var_88
  loc_A95DD6: Erase
  loc_A95DD7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BBED7C
  'Data Table: 4B1380
  loc_BBE768: FLdPr Me
  loc_BBE76B: MemLdI2 bGenerado
  loc_BBE76E: BranchF loc_BBE772
  loc_BBE771: ExitProcHresult
  loc_BBE772: LitVarStr var_9C, "Generando reporte..."
  loc_BBE777: PopAdLdVar
  loc_BBE778: FLdPr Me
  loc_BBE77B: VCallAd Control_ID_statusBar
  loc_BBE77E: FStAdFunc var_B0
  loc_BBE781: FLdPr var_B0
  loc_BBE784: LateIdSt
  loc_BBE789: FFree1Ad var_B0
  loc_BBE78C: LitI4 &HB
  loc_BBE791: CI2I4
  loc_BBE792: FLdPr Me
  loc_BBE795: Me.MousePointer = from_stack_1
  loc_BBE79A: LitI2_Byte 0
  loc_BBE79C: PopTmpLdAd2 var_B2
  loc_BBE79F: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_BBE7A4: FLdPr Me
  loc_BBE7A7: MemLdStr global_108
  loc_BBE7AA: LitStr vbNullString
  loc_BBE7AD: NeStr
  loc_BBE7AF: BranchF loc_BBE7B5
  loc_BBE7B2: Branch loc_BBED53
  loc_BBE7B5: LitI2_Byte 0
  loc_BBE7B7: PopTmpLdAd2 var_B2
  loc_BBE7BA: Call ActiConcMsk_UnknownEvent_8()
  loc_BBE7BF: FLdPr Me
  loc_BBE7C2: MemLdStr global_108
  loc_BBE7C5: LitStr vbNullString
  loc_BBE7C8: NeStr
  loc_BBE7CA: BranchF loc_BBE7D0
  loc_BBE7CD: Branch loc_BBED53
  loc_BBE7D0: FLdRfVar var_B2
  loc_BBE7D3: FLdPr Me
  loc_BBE7D6: VCallAd Control_ID_SoloActivasChk
  loc_BBE7D9: FStAdFunc var_B0
  loc_BBE7DC: FLdPr var_B0
  loc_BBE7DF:  = Me.Value
  loc_BBE7E4: FLdI2 var_B2
  loc_BBE7E7: CI4UI1
  loc_BBE7E8: LitI4 1
  loc_BBE7ED: EqI4
  loc_BBE7EE: FFree1Ad var_B0
  loc_BBE7F1: BranchF loc_BBE80E
  loc_BBE7F4: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = a.CuenCtct AND a.CodiOfic = 1"
  loc_BBE7F7: LitStr " LEFT JOIN comercio ON comercio.CodiCome = a.CuenCtct AND a.CodiOfic = 2"
  loc_BBE7FA: ConcatStr
  loc_BBE7FB: FStStrNoPop var_B8
  loc_BBE7FE: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = a.CuenCtct AND a.CodiOfic = 4"
  loc_BBE801: ConcatStr
  loc_BBE802: FStStr var_88
  loc_BBE805: FFree1Str var_B8
  loc_BBE808: LitStr " AND ((a.CodiOfic = 1 AND inmueble.BajaFeho is null) OR (a.CodiOfic = 2 AND (comercio.LiquCome = 'Si' OR comercio.FebaCome is null)) OR (a.CodiOfic = 4 AND difunto.FebaDifu is null))"
  loc_BBE80B: FStStrCopy var_8C
  loc_BBE80E: FLdPr Me
  loc_BBE811: MemLdRfVar from_stack_1.global_92
  loc_BBE814: NewIfNullAd
  loc_BBE817: FStAd var_BC 
  loc_BBE81B: FLdPr Me
  loc_BBE81E: VCallAd Control_ID_HastaMsk
  loc_BBE821: FStAdFunc var_1CC
  loc_BBE824: FLdPr var_1CC
  loc_BBE827: LateIdLdVar var_1DC DispID_15 0
  loc_BBE82E: PopAd
  loc_BBE830: LitStr "DROP TEMPORARY TABLE IF EXISTS c0;"
  loc_BBE833: LitStr " CREATE TEMPORARY TABLE c0"
  loc_BBE836: ConcatStr
  loc_BBE837: FStStrNoPop var_B8
  loc_BBE83A: LitStr " SELECT CodiOfic, CuenCtct, sum(Aforo)-sum(Pago) as Saldo FROM"
  loc_BBE83D: ConcatStr
  loc_BBE83E: FStStrNoPop var_C0
  loc_BBE841: LitStr " (SELECT a.FealCtct, a.CodiOfic, a.CuenCtct, a.PeriCtct, a.BimeCtct, a.NumeCtct,"
  loc_BBE844: ConcatStr
  loc_BBE845: FStStrNoPop var_C4
  loc_BBE848: LitStr "  a.DebeCtct as Aforo, sum(ifnull(p.CredCtct,0)) as Pago"
  loc_BBE84B: ConcatStr
  loc_BBE84C: FStStrNoPop var_C8
  loc_BBE84F: LitStr " FROM ctacte as a LEFT JOIN ctacte as p"
  loc_BBE852: ConcatStr
  loc_BBE853: FStStrNoPop var_CC
  loc_BBE856: LitStr "   ON p.CodiOfic = a.CodiOfic"
  loc_BBE859: ConcatStr
  loc_BBE85A: FStStrNoPop var_D0
  loc_BBE85D: LitStr "   AND p.CuenCtct = a.CuenCtct"
  loc_BBE860: ConcatStr
  loc_BBE861: FStStrNoPop var_D4
  loc_BBE864: LitStr "   AND p.PeriCtct = a.PeriCtct"
  loc_BBE867: ConcatStr
  loc_BBE868: FStStrNoPop var_D8
  loc_BBE86B: LitStr "   AND p.BimeCtct = a.BimeCtct"
  loc_BBE86E: ConcatStr
  loc_BBE86F: FStStrNoPop var_DC
  loc_BBE872: LitStr "   AND p.NumeCtct = a.NumeCtct"
  loc_BBE875: ConcatStr
  loc_BBE876: FStStrNoPop var_E0
  loc_BBE879: LitStr "   AND p.MoviCtct > 1"
  loc_BBE87C: ConcatStr
  loc_BBE87D: FStStrNoPop var_E4
  loc_BBE880: LitStr " INNER JOIN concepto ON concepto.CodiConc = a.CodiConc AND concepto.PeriInfo = "
  loc_BBE883: ConcatStr
  loc_BBE884: CVarStr var_124
  loc_BBE887: FLdPr Me
  loc_BBE88A: VCallAd Control_ID_HastaMsk
  loc_BBE88D: FStAdFunc var_B0
  loc_BBE890: FLdPr var_B0
  loc_BBE893: LateIdLdVar var_F4 DispID_15 0
  loc_BBE89A: CStrVarTmp
  loc_BBE89B: CVarStr var_104
  loc_BBE89E: FLdRfVar var_114
  loc_BBE8A1: ImpAdCallFPR4  = Year()
  loc_BBE8A6: FLdRfVar var_114
  loc_BBE8A9: ConcatVar var_134
  loc_BBE8AD: LitVarStr var_9C, " AND concepto.ActiConc = '"
  loc_BBE8B2: ConcatVar var_144
  loc_BBE8B6: FLdPr Me
  loc_BBE8B9: VCallAd Control_ID_ActiConcMsk
  loc_BBE8BC: FStAdFunc var_148
  loc_BBE8BF: FLdPr var_148
  loc_BBE8C2: LateIdLdVar var_158 DispID_22 0
  loc_BBE8C9: CStrVarTmp
  loc_BBE8CA: CVarStr var_168
  loc_BBE8CD: ConcatVar var_178
  loc_BBE8D1: LitVarStr var_AC, "'"
  loc_BBE8D6: ConcatVar var_188
  loc_BBE8DA: ILdRf var_88
  loc_BBE8DD: CVarStr var_198
  loc_BBE8E0: ConcatVar var_1A8
  loc_BBE8E4: LitVarStr var_1B8, " WHERE a.MoviCtct = 1 AND a.FealCtct <= "
  loc_BBE8E9: ConcatVar var_1C8
  loc_BBE8ED: LitI4 1
  loc_BBE8F2: LitI4 1
  loc_BBE8F7: LitVarStr var_1FC, "'yyyy-mm-dd'"
  loc_BBE8FC: FStVarCopyObj var_20C
  loc_BBE8FF: FLdRfVar var_20C
  loc_BBE902: FLdRfVar var_1DC
  loc_BBE905: CStrVarTmp
  loc_BBE906: CVarStr var_1EC
  loc_BBE909: FLdRfVar var_21C
  loc_BBE90C: ImpAdCallFPR4  = Format(, )
  loc_BBE911: FLdRfVar var_21C
  loc_BBE914: ConcatVar var_22C
  loc_BBE918: ILdRf var_8C
  loc_BBE91B: CVarStr var_23C
  loc_BBE91E: ConcatVar var_24C
  loc_BBE922: LitVarStr var_25C, " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct) as c"
  loc_BBE927: ConcatVar var_26C
  loc_BBE92B: LitVarStr var_27C, " GROUP BY CodiOfic, CuenCtct HAVING Saldo <= 0;"
  loc_BBE930: ConcatVar var_28C
  loc_BBE934: CStrVarVal var_290
  loc_BBE938: FLdPr var_BC
  loc_BBE93B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BBE940: FFreeStr var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_BBE95B: FFreeAd var_B0 = "": var_148 = ""
  loc_BBE964: FFreeVar var_F4 = "": var_104 = "": var_124 = "": var_114 = "": var_134 = "": var_158 = "": var_144 = "": var_168 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1DC = "": var_1EC = "": var_20C = "": var_1C8 = "": var_21C = "": var_22C = "": var_24C = "": var_26C = ""
  loc_BBE98F: FLdRfVar var_B2
  loc_BBE992: FLdPr Me
  loc_BBE995: VCallAd Control_ID_LibreDeudaAlDiaOpt
  loc_BBE998: FStAdFunc var_B0
  loc_BBE99B: FLdPr var_B0
  loc_BBE99E:  = Me.Value
  loc_BBE9A3: FLdI2 var_B2
  loc_BBE9A6: FFree1Ad var_B0
  loc_BBE9A9: BranchF loc_BBEC0C
  loc_BBE9AC: LitStr "DROP TEMPORARY TABLE IF EXISTS c1;"
  loc_BBE9AF: LitStr " CREATE TEMPORARY TABLE c1"
  loc_BBE9B2: ConcatStr
  loc_BBE9B3: FStStrNoPop var_B8
  loc_BBE9B6: LitStr " SELECT histoctacte.CodiOfic, histoctacte.CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_BBE9B9: ConcatStr
  loc_BBE9BA: FStStrNoPop var_C0
  loc_BBE9BD: LitStr " FROM c0 INNER JOIN histoctacte ON histoctacte.CodiOfic = c0.CodiOfic AND histoctacte.CuenCtct = c0.CuenCtct"
  loc_BBE9C0: ConcatStr
  loc_BBE9C1: FStStrNoPop var_C4
  loc_BBE9C4: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct;"
  loc_BBE9C7: ConcatStr
  loc_BBE9C8: FStStrNoPop var_C8
  loc_BBE9CB: LitStr " INSERT INTO c1"
  loc_BBE9CE: ConcatStr
  loc_BBE9CF: FStStrNoPop var_CC
  loc_BBE9D2: LitStr " SELECT ctacte.CodiOfic, ctacte.CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_BBE9D5: ConcatStr
  loc_BBE9D6: FStStrNoPop var_D0
  loc_BBE9D9: LitStr " FROM c0 INNER JOIN ctacte ON ctacte.CodiOfic = c0.CodiOfic AND ctacte.CuenCtct = c0.CuenCtct"
  loc_BBE9DC: ConcatStr
  loc_BBE9DD: FStStrNoPop var_D4
  loc_BBE9E0: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct;"
  loc_BBE9E3: ConcatStr
  loc_BBE9E4: FStStrNoPop var_D8
  loc_BBE9E7: LitStr " DROP TEMPORARY TABLE IF EXISTS c0;"
  loc_BBE9EA: ConcatStr
  loc_BBE9EB: FStStrNoPop var_DC
  loc_BBE9EE: FLdPr var_BC
  loc_BBE9F1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BBE9F6: FFreeStr var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_BBEA0B: LitStr "DROP TEMPORARY TABLE IF EXISTS c2;"
  loc_BBEA0E: LitStr " CREATE TEMPORARY TABLE c2"
  loc_BBEA11: ConcatStr
  loc_BBEA12: FStStrNoPop var_B8
  loc_BBEA15: LitStr " SELECT c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct, FeveCtct"
  loc_BBEA18: ConcatStr
  loc_BBEA19: FStStrNoPop var_C0
  loc_BBEA1C: LitStr " FROM c1"
  loc_BBEA1F: ConcatStr
  loc_BBEA20: FStStrNoPop var_C4
  loc_BBEA23: LitStr " INNER JOIN histoctacte"
  loc_BBEA26: ConcatStr
  loc_BBEA27: FStStrNoPop var_C8
  loc_BBEA2A: LitStr "   ON histoctacte.CodiOfic = c1.CodiOfic"
  loc_BBEA2D: ConcatStr
  loc_BBEA2E: FStStrNoPop var_CC
  loc_BBEA31: LitStr "   AND histoctacte.CuenCtct = c1.CuenCtct"
  loc_BBEA34: ConcatStr
  loc_BBEA35: FStStrNoPop var_D0
  loc_BBEA38: LitStr "   AND histoctacte.PeriCtct = c1.PeriCtct"
  loc_BBEA3B: ConcatStr
  loc_BBEA3C: FStStrNoPop var_D4
  loc_BBEA3F: LitStr "   AND histoctacte.BimeCtct = c1.BimeCtct"
  loc_BBEA42: ConcatStr
  loc_BBEA43: FStStrNoPop var_D8
  loc_BBEA46: LitStr "   AND histoctacte.NumeCtct = c1.NumeCtct"
  loc_BBEA49: ConcatStr
  loc_BBEA4A: FStStrNoPop var_DC
  loc_BBEA4D: LitStr "   AND histoctacte.MoviCtct = 1;"
  loc_BBEA50: ConcatStr
  loc_BBEA51: FStStrNoPop var_E0
  loc_BBEA54: LitStr " INSERT INTO c2"
  loc_BBEA57: ConcatStr
  loc_BBEA58: FStStrNoPop var_E4
  loc_BBEA5B: LitStr " SELECT c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct, FeveCtct"
  loc_BBEA5E: ConcatStr
  loc_BBEA5F: FStStrNoPop var_290
  loc_BBEA62: LitStr " FROM c1"
  loc_BBEA65: ConcatStr
  loc_BBEA66: FStStrNoPop var_294
  loc_BBEA69: LitStr " INNER JOIN ctacte"
  loc_BBEA6C: ConcatStr
  loc_BBEA6D: FStStrNoPop var_298
  loc_BBEA70: LitStr "   ON ctacte.CodiOfic = c1.CodiOfic"
  loc_BBEA73: ConcatStr
  loc_BBEA74: FStStrNoPop var_29C
  loc_BBEA77: LitStr "   AND ctacte.CuenCtct = c1.CuenCtct"
  loc_BBEA7A: ConcatStr
  loc_BBEA7B: FStStrNoPop var_2A0
  loc_BBEA7E: LitStr "   AND ctacte.PeriCtct = c1.PeriCtct"
  loc_BBEA81: ConcatStr
  loc_BBEA82: FStStrNoPop var_2A4
  loc_BBEA85: LitStr "   AND ctacte.BimeCtct = c1.BimeCtct"
  loc_BBEA88: ConcatStr
  loc_BBEA89: FStStrNoPop var_2A8
  loc_BBEA8C: LitStr "   AND ctacte.NumeCtct = c1.NumeCtct"
  loc_BBEA8F: ConcatStr
  loc_BBEA90: FStStrNoPop var_2AC
  loc_BBEA93: LitStr "   AND ctacte.MoviCtct = 1;"
  loc_BBEA96: ConcatStr
  loc_BBEA97: FStStrNoPop var_2B0
  loc_BBEA9A: LitStr " DROP TEMPORARY TABLE IF EXISTS c1;"
  loc_BBEA9D: ConcatStr
  loc_BBEA9E: FStStrNoPop var_2B4
  loc_BBEAA1: FLdPr var_BC
  loc_BBEAA4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BBEAA9: FFreeStr var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_290 = "": var_294 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = ""
  loc_BBEAD6: LitStr "DROP TEMPORARY TABLE IF EXISTS c3;"
  loc_BBEAD9: LitStr " CREATE TEMPORARY TABLE c3"
  loc_BBEADC: ConcatStr
  loc_BBEADD: FStStrNoPop var_B8
  loc_BBEAE0: LitStr " SELECT c2.CodiOfic, c2.CuenCtct, c2.PeriCtct, c2.BimeCtct, c2.NumeCtct, c2.FeveCtct, histoctacte.FeveCtct as FepaCtct,"
  loc_BBEAE3: ConcatStr
  loc_BBEAE4: FStStrNoPop var_C0
  loc_BBEAE7: LitStr "   not (histoctacte.FeveCtct<=c2.FeveCtct) as Comp"
  loc_BBEAEA: ConcatStr
  loc_BBEAEB: FStStrNoPop var_C4
  loc_BBEAEE: LitStr " FROM c2"
  loc_BBEAF1: ConcatStr
  loc_BBEAF2: FStStrNoPop var_C8
  loc_BBEAF5: LitStr " INNER JOIN histoctacte"
  loc_BBEAF8: ConcatStr
  loc_BBEAF9: FStStrNoPop var_CC
  loc_BBEAFC: LitStr "   ON histoctacte.CodiOfic = c2.CodiOfic"
  loc_BBEAFF: ConcatStr
  loc_BBEB00: FStStrNoPop var_D0
  loc_BBEB03: LitStr "   AND histoctacte.CuenCtct = c2.CuenCtct"
  loc_BBEB06: ConcatStr
  loc_BBEB07: FStStrNoPop var_D4
  loc_BBEB0A: LitStr "   AND histoctacte.PeriCtct = c2.PeriCtct"
  loc_BBEB0D: ConcatStr
  loc_BBEB0E: FStStrNoPop var_D8
  loc_BBEB11: LitStr "   AND histoctacte.BimeCtct = c2.BimeCtct"
  loc_BBEB14: ConcatStr
  loc_BBEB15: FStStrNoPop var_DC
  loc_BBEB18: LitStr "   AND histoctacte.NumeCtct = c2.NumeCtct"
  loc_BBEB1B: ConcatStr
  loc_BBEB1C: FStStrNoPop var_E0
  loc_BBEB1F: LitStr "   AND histoctacte.MoviCtct > 1;"
  loc_BBEB22: ConcatStr
  loc_BBEB23: FStStrNoPop var_E4
  loc_BBEB26: LitStr " INSERT INTO c3"
  loc_BBEB29: ConcatStr
  loc_BBEB2A: FStStrNoPop var_290
  loc_BBEB2D: LitStr " SELECT c2.CodiOfic, c2.CuenCtct, c2.PeriCtct, c2.BimeCtct, c2.NumeCtct, c2.FeveCtct, ctacte.FeveCtct as FepaCtct,"
  loc_BBEB30: ConcatStr
  loc_BBEB31: FStStrNoPop var_294
  loc_BBEB34: LitStr "   not (ctacte.FeveCtct<=c2.FeveCtct) as Comp"
  loc_BBEB37: ConcatStr
  loc_BBEB38: FStStrNoPop var_298
  loc_BBEB3B: LitStr " FROM c2"
  loc_BBEB3E: ConcatStr
  loc_BBEB3F: FStStrNoPop var_29C
  loc_BBEB42: LitStr " INNER JOIN ctacte"
  loc_BBEB45: ConcatStr
  loc_BBEB46: FStStrNoPop var_2A0
  loc_BBEB49: LitStr "   ON ctacte.CodiOfic = c2.CodiOfic"
  loc_BBEB4C: ConcatStr
  loc_BBEB4D: FStStrNoPop var_2A4
  loc_BBEB50: LitStr "   AND ctacte.CuenCtct = c2.CuenCtct"
  loc_BBEB53: ConcatStr
  loc_BBEB54: FStStrNoPop var_2A8
  loc_BBEB57: LitStr "   AND ctacte.PeriCtct = c2.PeriCtct"
  loc_BBEB5A: ConcatStr
  loc_BBEB5B: FStStrNoPop var_2AC
  loc_BBEB5E: LitStr "   AND ctacte.BimeCtct = c2.BimeCtct"
  loc_BBEB61: ConcatStr
  loc_BBEB62: FStStrNoPop var_2B0
  loc_BBEB65: LitStr "   AND ctacte.NumeCtct = c2.NumeCtct"
  loc_BBEB68: ConcatStr
  loc_BBEB69: FStStrNoPop var_2B4
  loc_BBEB6C: LitStr "   AND ctacte.MoviCtct > 1;"
  loc_BBEB6F: ConcatStr
  loc_BBEB70: FStStrNoPop var_2B8
  loc_BBEB73: LitStr " DROP TEMPORARY TABLE IF EXISTS c2;"
  loc_BBEB76: ConcatStr
  loc_BBEB77: FStStrNoPop var_2BC
  loc_BBEB7A: FLdPr var_BC
  loc_BBEB7D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BBEB82: FFreeStr var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_290 = "": var_294 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = "": var_2B4 = "": var_2B8 = ""
  loc_BBEBB3: LitStr "SELECT sum(Comp) as Chau, c3.CodiOfic, DetaOfic, c3.CuenCtct, DetaPers"
  loc_BBEBB6: LitStr " FROM c3"
  loc_BBEBB9: ConcatStr
  loc_BBEBBA: FStStrNoPop var_B8
  loc_BBEBBD: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = c3.CodiOfic AND relacion.CuenCtct = c3.CuenCtct AND relacion.TipoRela = 'Titular'"
  loc_BBEBC0: ConcatStr
  loc_BBEBC1: FStStrNoPop var_C0
  loc_BBEBC4: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BBEBC7: ConcatStr
  loc_BBEBC8: FStStrNoPop var_C4
  loc_BBEBCB: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = c3.CodiOfic"
  loc_BBEBCE: ConcatStr
  loc_BBEBCF: FStStrNoPop var_C8
  loc_BBEBD2: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = c3.CuenCtct AND c3.CodiOfic = 1"
  loc_BBEBD5: ConcatStr
  loc_BBEBD6: FStStrNoPop var_CC
  loc_BBEBD9: LitStr " LEFT JOIN comercio ON comercio.CodiCome = c3.CuenCtct AND c3.CodiOfic = 2"
  loc_BBEBDC: ConcatStr
  loc_BBEBDD: FStStrNoPop var_D0
  loc_BBEBE0: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = c3.CuenCtct AND c3.CodiOfic = 4"
  loc_BBEBE3: ConcatStr
  loc_BBEBE4: FStStrNoPop var_D4
  loc_BBEBE7: LitStr " GROUP BY CodiOfic, CuenCtct HAVING Chau=0 ORDER BY CodiOfic, cast(c3.CuenCtct as unsigned);"
  loc_BBEBEA: ConcatStr
  loc_BBEBEB: FStStrNoPop var_D8
  loc_BBEBEE: FLdPr var_BC
  loc_BBEBF1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BBEBF6: FFreeStr var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BBEC09: Branch loc_BBEC59
  loc_BBEC0C: LitStr "SELECT c0.CodiOfic, DetaOfic, c0.CuenCtct, DetaPers FROM c0"
  loc_BBEC0F: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = c0.CodiOfic AND relacion.CuenCtct = c0.CuenCtct AND relacion.TipoRela = 'Titular'"
  loc_BBEC12: ConcatStr
  loc_BBEC13: FStStrNoPop var_B8
  loc_BBEC16: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BBEC19: ConcatStr
  loc_BBEC1A: FStStrNoPop var_C0
  loc_BBEC1D: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = c0.CodiOfic"
  loc_BBEC20: ConcatStr
  loc_BBEC21: FStStrNoPop var_C4
  loc_BBEC24: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = c0.CuenCtct AND c0.CodiOfic = 1"
  loc_BBEC27: ConcatStr
  loc_BBEC28: FStStrNoPop var_C8
  loc_BBEC2B: LitStr " LEFT JOIN comercio ON comercio.CodiCome = c0.CuenCtct AND c0.CodiOfic = 2"
  loc_BBEC2E: ConcatStr
  loc_BBEC2F: FStStrNoPop var_CC
  loc_BBEC32: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = c0.CuenCtct AND c0.CodiOfic = 4"
  loc_BBEC35: ConcatStr
  loc_BBEC36: FStStrNoPop var_D0
  loc_BBEC39: LitStr " ORDER BY CodiOfic, cast(c0.CuenCtct as unsigned);"
  loc_BBEC3C: ConcatStr
  loc_BBEC3D: FStStrNoPop var_D4
  loc_BBEC40: FLdPr var_BC
  loc_BBEC43: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BBEC48: FFreeStr var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BBEC59: FLdRfVar var_2C0
  loc_BBEC5C: FLdPr var_BC
  loc_BBEC5F: from_stack_1 = clsctacte.RecordCount
  loc_BBEC64: ILdRf var_2C0
  loc_BBEC67: LitI4 0
  loc_BBEC6C: EqI4
  loc_BBEC6D: BranchF loc_BBEC7B
  loc_BBEC70: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BBEC73: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BBEC78: Branch loc_BBED53
  loc_BBEC7B: LitI4 0
  loc_BBEC80: LitI4 0
  loc_BBEC85: FLdPr Me
  loc_BBEC88: MemLdRfVar from_stack_1.global_96
  loc_BBEC8B: Redim
  loc_BBEC95: LitI2_Byte 0
  loc_BBEC97: FLdPr Me
  loc_BBEC9A: MemStI2 global_100
  loc_BBEC9D: FLdPr var_BC
  loc_BBECA0: Call clsctacte.MoveFirst()
  loc_BBECA5: FLdRfVar var_2C0
  loc_BBECA8: FLdPr var_BC
  loc_BBECAB: from_stack_1 = clsctacte.RecordCount
  loc_BBECB0: ILdRf var_2C0
  loc_BBECB3: CR8I4
  loc_BBECB4: CVarR4
  loc_BBECB8: PopAdLdVar
  loc_BBECB9: FLdPrThis
  loc_BBECBA: VCallAd Control_ID_Pbar
  loc_BBECBD: FStAdFunc var_B0
  loc_BBECC0: FLdPr var_B0
  loc_BBECC3: LateIdSt
  loc_BBECC8: FFree1Ad var_B0
  loc_BBECCB: LitVar_TRUE var_9C
  loc_BBECCE: PopAdLdVar
  loc_BBECCF: FLdPrThis
  loc_BBECD0: VCallAd Control_ID_Pbar
  loc_BBECD3: FStAdFunc var_B0
  loc_BBECD6: FLdPr var_B0
  loc_BBECD9: LateIdSt
  loc_BBECDE: FFree1Ad var_B0
  loc_BBECE1: Call AgregarOfic()
  loc_BBECE6: FLdRfVar var_B2
  loc_BBECE9: FLdPr var_BC
  loc_BBECEC: from_stack_1 = clsctacte.EOF
  loc_BBECF1: FLdI2 var_B2
  loc_BBECF4: NotI4
  loc_BBECF5: BranchF loc_BBED2E
  loc_BBECF8: FLdRfVar var_B2
  loc_BBECFB: FLdPr var_BC
  loc_BBECFE: from_stack_1 = clsctacte.CodiOfic
  loc_BBED03: FLdI2 var_B2
  loc_BBED06: CR8I2
  loc_BBED07: FLdPr Me
  loc_BBED0A: MemLdI2 global_100
  loc_BBED0D: CI4UI1
  loc_BBED0E: FLdPr Me
  loc_BBED11: MemLdStr global_96
  loc_BBED14: Ary1LdPr
  loc_BBED15: MemLdStr global_0
  loc_BBED18: CR8Str
  loc_BBED1A: NeR8
  loc_BBED1B: BranchF loc_BBED26
  loc_BBED1E: Call AgregarOfic()
  loc_BBED23: Branch loc_BBED2B
  loc_BBED26: Call AgregarCuen()
  loc_BBED2B: Branch loc_BBECE6
  loc_BBED2E: LitVar_FALSE
  loc_BBED32: PopAdLdVar
  loc_BBED33: FLdPrThis
  loc_BBED34: VCallAd Control_ID_Pbar
  loc_BBED37: FStAdFunc var_B0
  loc_BBED3A: FLdPr var_B0
  loc_BBED3D: LateIdSt
  loc_BBED42: FFree1Ad var_B0
  loc_BBED45: LitNothing
  loc_BBED47: FStAd var_BC 
  loc_BBED4B: LitI2_Byte &HFF
  loc_BBED4D: FLdPr Me
  loc_BBED50: MemStI2 bGenerado
  loc_BBED53: LitI4 0
  loc_BBED58: CI2I4
  loc_BBED59: FLdPr Me
  loc_BBED5C: Me.MousePointer = from_stack_1
  loc_BBED61: LitVarStr var_9C, vbNullString
  loc_BBED66: PopAdLdVar
  loc_BBED67: FLdPr Me
  loc_BBED6A: VCallAd Control_ID_statusBar
  loc_BBED6D: FStAdFunc var_B0
  loc_BBED70: FLdPr var_B0
  loc_BBED73: LateIdSt
  loc_BBED78: FFree1Ad var_B0
  loc_BBED7B: ExitProcHresult
End Sub

Public Sub AgregarOfic() 'AA40A8
  'Data Table: 4B1380
  loc_AA3FEC: FLdPr Me
  loc_AA3FEF: MemLdI2 global_100
  loc_AA3FF2: LitI2_Byte 1
  loc_AA3FF4: AddI2
  loc_AA3FF5: FLdPr Me
  loc_AA3FF8: MemStI2 global_100
  loc_AA3FFB: LitI4 0
  loc_AA4000: FLdPr Me
  loc_AA4003: MemStI4 global_104
  loc_AA4006: LitI4 0
  loc_AA400B: FLdPr Me
  loc_AA400E: MemLdI2 global_100
  loc_AA4011: CI4UI1
  loc_AA4012: FLdPr Me
  loc_AA4015: MemLdRfVar from_stack_1.global_96
  loc_AA4018: RedimPreserve
  loc_AA4022: FLdRfVar var_86
  loc_AA4025: FLdPr Me
  loc_AA4028: MemLdRfVar from_stack_1.global_92
  loc_AA402B: NewIfNullPr clsctacte
  loc_AA402E: from_stack_1 = clsctacte.CodiOfic
  loc_AA4033: LitI2_Byte 0
  loc_AA4035: LitVar_Missing var_BC
  loc_AA4038: LitI2_Byte 0
  loc_AA403A: FLdI2 var_86
  loc_AA403D: CVarI2 var_9C
  loc_AA4040: PopAdLdVar
  loc_AA4041: FLdPr Me
  loc_AA4044: MemLdI2 global_100
  loc_AA4047: CI4UI1
  loc_AA4048: FLdPr Me
  loc_AA404B: MemLdStr global_96
  loc_AA404E: AryLock
  loc_AA4051: Ary1LdPr
  loc_AA4052: MemLdRfVar from_stack_1.global_0
  loc_AA4055: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AA405A: AryUnlock
  loc_AA405D: FFree1Var var_BC = ""
  loc_AA4060: FLdRfVar var_C0
  loc_AA4063: FLdPr Me
  loc_AA4066: MemLdRfVar from_stack_1.global_92
  loc_AA4069: NewIfNullPr clsctacte
  loc_AA406C: from_stack_1 = clsctacte.DetaOfic
  loc_AA4071: LitI2_Byte 0
  loc_AA4073: LitVar_Missing var_D0
  loc_AA4076: LitI2_Byte 0
  loc_AA4078: FLdZeroAd var_C0
  loc_AA407B: CVarStr var_BC
  loc_AA407E: PopAdLdVar
  loc_AA407F: FLdPr Me
  loc_AA4082: MemLdI2 global_100
  loc_AA4085: CI4UI1
  loc_AA4086: FLdPr Me
  loc_AA4089: MemLdStr global_96
  loc_AA408C: AryLock
  loc_AA408F: Ary1LdPr
  loc_AA4090: MemLdRfVar from_stack_1.global_4
  loc_AA4093: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AA4098: AryUnlock
  loc_AA409B: FFreeVar var_BC = ""
  loc_AA40A2: Call AgregarCuen()
  loc_AA40A7: ExitProcHresult
End Sub

Public Sub AgregarCuen() 'ABC174
  'Data Table: 4B1380
  loc_ABC084: FLdPr Me
  loc_ABC087: MemLdStr global_104
  loc_ABC08A: LitI4 1
  loc_ABC08F: AddI4
  loc_ABC090: FLdPr Me
  loc_ABC093: MemStI4 global_104
  loc_ABC096: LitI4 0
  loc_ABC09B: FLdPr Me
  loc_ABC09E: MemLdStr global_104
  loc_ABC0A1: FLdPr Me
  loc_ABC0A4: MemLdI2 global_100
  loc_ABC0A7: CI4UI1
  loc_ABC0A8: FLdPr Me
  loc_ABC0AB: MemLdStr global_96
  loc_ABC0AE: Ary1LdPr
  loc_ABC0AF: MemLdRfVar from_stack_1.global_8
  loc_ABC0B2: RedimPreserve
  loc_ABC0BC: FLdRfVar var_88
  loc_ABC0BF: FLdPr Me
  loc_ABC0C2: MemLdRfVar from_stack_1.global_92
  loc_ABC0C5: NewIfNullPr clsctacte
  loc_ABC0C8: from_stack_1 = clsctacte.CuenCtct
  loc_ABC0CD: LitI2_Byte 0
  loc_ABC0CF: LitVar_Missing var_C0
  loc_ABC0D2: LitI2_Byte 0
  loc_ABC0D4: FLdZeroAd var_88
  loc_ABC0D7: CVarStr var_A0
  loc_ABC0DA: PopAdLdVar
  loc_ABC0DB: FLdPr Me
  loc_ABC0DE: MemLdStr global_104
  loc_ABC0E1: FLdPr Me
  loc_ABC0E4: MemLdI2 global_100
  loc_ABC0E7: CI4UI1
  loc_ABC0E8: FLdPr Me
  loc_ABC0EB: MemLdStr global_96
  loc_ABC0EE: AryLock
  loc_ABC0F1: Ary1LdPr
  loc_ABC0F2: MemLdStr global_8
  loc_ABC0F5: AryLock
  loc_ABC0F8: Ary1LdPr
  loc_ABC0F9: MemLdRfVar from_stack_1.global_0
  loc_ABC0FC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ABC101: AryUnlock
  loc_ABC104: AryUnlock
  loc_ABC107: FFreeVar var_A0 = ""
  loc_ABC10E: FLdRfVar var_A0
  loc_ABC111: FLdPr Me
  loc_ABC114: MemLdRfVar from_stack_1.global_92
  loc_ABC117: NewIfNullPr clsctacte
  loc_ABC11A: from_stack_1 = clsctacte.DetaPers
  loc_ABC11F: LitI2_Byte 0
  loc_ABC121: LitVar_Missing var_C0
  loc_ABC124: LitI2_Byte 0
  loc_ABC126: FLdVar var_A0
  loc_ABC12A: FLdPr Me
  loc_ABC12D: MemLdStr global_104
  loc_ABC130: FLdPr Me
  loc_ABC133: MemLdI2 global_100
  loc_ABC136: CI4UI1
  loc_ABC137: FLdPr Me
  loc_ABC13A: MemLdStr global_96
  loc_ABC13D: AryLock
  loc_ABC140: Ary1LdPr
  loc_ABC141: MemLdStr global_8
  loc_ABC144: AryLock
  loc_ABC147: Ary1LdPr
  loc_ABC148: MemLdRfVar from_stack_1.global_4
  loc_ABC14B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ABC150: AryUnlock
  loc_ABC153: AryUnlock
  loc_ABC156: FFreeVar var_A0 = ""
  loc_ABC15D: LitI2_Byte 1
  loc_ABC15F: PopTmpLdAd2 var_C2
  loc_ABC162: FLdPr Me
  loc_ABC165: MemLdRfVar from_stack_1.global_92
  loc_ABC168: NewIfNullPr clsctacte
  loc_ABC16B: Call clsctacte.Move(from_stack_1v)
  loc_ABC170: ExitProcHresult
  loc_ABC171: ILdPr
End Sub

Public Sub GeneraHTML() 'AF93A0
  'Data Table: 4B1380
  loc_AF91D4: FLdRfVar var_88
  loc_AF91D7: LitI2_Byte 0
  loc_AF91D9: LitI2_Byte &HFF
  loc_AF91DB: ImpAdLdI4 MemVar_D93C84
  loc_AF91DE: FLdPr Me
  loc_AF91E1: MemLdRfVar from_stack_1.global_56
  loc_AF91E4: NewIfNullPr IFileSystem3
  loc_AF91E7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AF91EC: ILdRf var_88
  loc_AF91EF: FLdPr Me
  loc_AF91F2: MemStVarAd
  loc_AF91F6: FFree1Ad var_88
  loc_AF91F9: LitI2_Byte &HFF
  loc_AF91FB: ImpAdStI2 MemVar_D93C8A
  loc_AF91FE: Call Proc_174_21_BE2EF4()
  loc_AF9203: LitI2_Byte 1
  loc_AF9205: FLdPr Me
  loc_AF9208: MemLdRfVar from_stack_1.global_100
  loc_AF920B: FLdPr Me
  loc_AF920E: MemLdStr global_96
  loc_AF9211: LitI2_Byte 1
  loc_AF9213: FnUBound
  loc_AF9215: CI2I4
  loc_AF9216: ForI2 var_8C
  loc_AF921C: LitVarStr var_9C, "  <tr valign=""top"" class=""Encabezado"">"
  loc_AF9221: PopAdLdVar
  loc_AF9222: FLdPr Me
  loc_AF9225: MemLdRfVar from_stack_1.global_60
  loc_AF9228: LdPrVar
  loc_AF922A: LateMemCall
  loc_AF9230: LitStr "    <td colspan=""2"" align=""left"">Oficina: "
  loc_AF9233: FLdPr Me
  loc_AF9236: MemLdI2 global_100
  loc_AF9239: CI4UI1
  loc_AF923A: FLdPr Me
  loc_AF923D: MemLdStr global_96
  loc_AF9240: Ary1LdPr
  loc_AF9241: MemLdStr global_0
  loc_AF9244: ConcatStr
  loc_AF9245: FStStrNoPop var_B0
  loc_AF9248: LitStr " - "
  loc_AF924B: ConcatStr
  loc_AF924C: FStStrNoPop var_B4
  loc_AF924F: FLdPr Me
  loc_AF9252: MemLdI2 global_100
  loc_AF9255: CI4UI1
  loc_AF9256: FLdPr Me
  loc_AF9259: MemLdStr global_96
  loc_AF925C: Ary1LdPr
  loc_AF925D: MemLdStr global_4
  loc_AF9260: ConcatStr
  loc_AF9261: FStStrNoPop var_B8
  loc_AF9264: LitStr "</td>"
  loc_AF9267: ConcatStr
  loc_AF9268: CVarStr var_C8
  loc_AF926B: PopAdLdVar
  loc_AF926C: FLdPr Me
  loc_AF926F: MemLdRfVar from_stack_1.global_60
  loc_AF9272: LdPrVar
  loc_AF9274: LateMemCall
  loc_AF927A: FFreeStr var_B0 = "": var_B4 = ""
  loc_AF9283: FFree1Var var_C8 = ""
  loc_AF9286: LitVarStr var_9C, "  </tr>"
  loc_AF928B: PopAdLdVar
  loc_AF928C: FLdPr Me
  loc_AF928F: MemLdRfVar from_stack_1.global_60
  loc_AF9292: LdPrVar
  loc_AF9294: LateMemCall
  loc_AF929A: LitI4 1
  loc_AF929F: FLdPr Me
  loc_AF92A2: MemLdRfVar from_stack_1.global_104
  loc_AF92A5: FLdPr Me
  loc_AF92A8: MemLdI2 global_100
  loc_AF92AB: CI4UI1
  loc_AF92AC: FLdPr Me
  loc_AF92AF: MemLdStr global_96
  loc_AF92B2: Ary1LdPr
  loc_AF92B3: MemLdStr global_8
  loc_AF92B6: LitI2_Byte 1
  loc_AF92B8: FnUBound
  loc_AF92BA: ForI4 var_D0
  loc_AF92C0: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AF92C5: PopAdLdVar
  loc_AF92C6: FLdPr Me
  loc_AF92C9: MemLdRfVar from_stack_1.global_60
  loc_AF92CC: LdPrVar
  loc_AF92CE: LateMemCall
  loc_AF92D4: FLdPr Me
  loc_AF92D7: MemLdStr global_104
  loc_AF92DA: FLdPr Me
  loc_AF92DD: MemLdI2 global_100
  loc_AF92E0: CI4UI1
  loc_AF92E1: FLdPr Me
  loc_AF92E4: MemLdStr global_96
  loc_AF92E7: AryLock
  loc_AF92EA: Ary1LdPr
  loc_AF92EB: MemLdStr global_8
  loc_AF92EE: AryLock
  loc_AF92F1: Ary1LdRf
  loc_AF92F2: FStR4 var_DC
  loc_AF92F5: LitStr vbNullString
  loc_AF92F8: LitI2_Byte 0
  loc_AF92FA: LitI2_Byte 0
  loc_AF92FC: LitI2_Byte 0
  loc_AF92FE: LitStr "right"
  loc_AF9301: FMemLdR4 var_DC(0)
  loc_AF9306: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AF930B: CVarStr var_C8
  loc_AF930E: PopAdLdVar
  loc_AF930F: FLdPr Me
  loc_AF9312: MemLdRfVar from_stack_1.global_60
  loc_AF9315: LdPrVar
  loc_AF9317: LateMemCall
  loc_AF931D: FFree1Var var_C8 = ""
  loc_AF9320: LitStr vbNullString
  loc_AF9323: LitI2_Byte 0
  loc_AF9325: LitI2_Byte 0
  loc_AF9327: LitI2_Byte 0
  loc_AF9329: LitStr "left"
  loc_AF932C: FMemLdR4 var_DC(4)
  loc_AF9331: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AF9336: CVarStr var_C8
  loc_AF9339: PopAdLdVar
  loc_AF933A: FLdPr Me
  loc_AF933D: MemLdRfVar from_stack_1.global_60
  loc_AF9340: LdPrVar
  loc_AF9342: LateMemCall
  loc_AF9348: FFree1Var var_C8 = ""
  loc_AF934B: LitI4 0
  loc_AF9350: FStR4 var_DC
  loc_AF9353: AryUnlock
  loc_AF9356: AryUnlock
  loc_AF9359: LitVarStr var_9C, "     </tr>"
  loc_AF935E: PopAdLdVar
  loc_AF935F: FLdPr Me
  loc_AF9362: MemLdRfVar from_stack_1.global_60
  loc_AF9365: LdPrVar
  loc_AF9367: LateMemCall
  loc_AF936D: FLdPr Me
  loc_AF9370: MemLdRfVar from_stack_1.global_104
  loc_AF9373: NextI4 var_D0, loc_AF92C0
  loc_AF9378: FLdPr Me
  loc_AF937B: MemLdRfVar from_stack_1.global_100
  loc_AF937E: NextI2 var_8C, loc_AF921C
  loc_AF9383: Call Proc_174_22_A0FD28()
  loc_AF9388: FLdPr Me
  loc_AF938B: MemLdRfVar from_stack_1.global_60
  loc_AF938E: LdPrVar
  loc_AF9390: LateMemCall
  loc_AF9396: LitStr vbNullString
  loc_AF9399: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_AF939E: ExitProcHresult
  loc_AF939F: GeI4
End Sub

Private Function Proc_174_21_BE2EF4() 'BE2EF4
  'Data Table: 4B1380
  loc_BE2754: LitVarStr var_94, "<html>"
  loc_BE2759: PopAdLdVar
  loc_BE275A: FLdPr Me
  loc_BE275D: MemLdRfVar from_stack_1.global_60
  loc_BE2760: LdPrVar
  loc_BE2762: LateMemCall
  loc_BE2768: LitVarStr var_94, "<head>"
  loc_BE276D: PopAdLdVar
  loc_BE276E: FLdPr Me
  loc_BE2771: MemLdRfVar from_stack_1.global_60
  loc_BE2774: LdPrVar
  loc_BE2776: LateMemCall
  loc_BE277C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BE2781: PopAdLdVar
  loc_BE2782: FLdPr Me
  loc_BE2785: MemLdRfVar from_stack_1.global_60
  loc_BE2788: LdPrVar
  loc_BE278A: LateMemCall
  loc_BE2790: LitStr "<title>"
  loc_BE2793: FLdRfVar var_A8
  loc_BE2796: FLdPr Me
  loc_BE2799:  = Me.Caption
  loc_BE279E: ILdRf var_A8
  loc_BE27A1: ConcatStr
  loc_BE27A2: FStStrNoPop var_AC
  loc_BE27A5: LitStr "</title>"
  loc_BE27A8: ConcatStr
  loc_BE27A9: CVarStr var_BC
  loc_BE27AC: PopAdLdVar
  loc_BE27AD: FLdPr Me
  loc_BE27B0: MemLdRfVar from_stack_1.global_60
  loc_BE27B3: LdPrVar
  loc_BE27B5: LateMemCall
  loc_BE27BB: FFreeStr var_A8 = ""
  loc_BE27C2: FFree1Var var_BC = ""
  loc_BE27C5: LitVarStr var_94, "<style type=""text/css"">"
  loc_BE27CA: PopAdLdVar
  loc_BE27CB: FLdPr Me
  loc_BE27CE: MemLdRfVar from_stack_1.global_60
  loc_BE27D1: LdPrVar
  loc_BE27D3: LateMemCall
  loc_BE27D9: LitVarStr var_94, ".Titulo1 {"
  loc_BE27DE: PopAdLdVar
  loc_BE27DF: FLdPr Me
  loc_BE27E2: MemLdRfVar from_stack_1.global_60
  loc_BE27E5: LdPrVar
  loc_BE27E7: LateMemCall
  loc_BE27ED: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE27F2: PopAdLdVar
  loc_BE27F3: FLdPr Me
  loc_BE27F6: MemLdRfVar from_stack_1.global_60
  loc_BE27F9: LdPrVar
  loc_BE27FB: LateMemCall
  loc_BE2801: LitVarStr var_94, " font-size: 18px;"
  loc_BE2806: PopAdLdVar
  loc_BE2807: FLdPr Me
  loc_BE280A: MemLdRfVar from_stack_1.global_60
  loc_BE280D: LdPrVar
  loc_BE280F: LateMemCall
  loc_BE2815: LitVarStr var_94, " font-weight: bold;"
  loc_BE281A: PopAdLdVar
  loc_BE281B: FLdPr Me
  loc_BE281E: MemLdRfVar from_stack_1.global_60
  loc_BE2821: LdPrVar
  loc_BE2823: LateMemCall
  loc_BE2829: LitVarStr var_94, "}"
  loc_BE282E: PopAdLdVar
  loc_BE282F: FLdPr Me
  loc_BE2832: MemLdRfVar from_stack_1.global_60
  loc_BE2835: LdPrVar
  loc_BE2837: LateMemCall
  loc_BE283D: LitVarStr var_94, ".Titulo2 {"
  loc_BE2842: PopAdLdVar
  loc_BE2843: FLdPr Me
  loc_BE2846: MemLdRfVar from_stack_1.global_60
  loc_BE2849: LdPrVar
  loc_BE284B: LateMemCall
  loc_BE2851: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE2856: PopAdLdVar
  loc_BE2857: FLdPr Me
  loc_BE285A: MemLdRfVar from_stack_1.global_60
  loc_BE285D: LdPrVar
  loc_BE285F: LateMemCall
  loc_BE2865: LitVarStr var_94, " font-size: 14px;"
  loc_BE286A: PopAdLdVar
  loc_BE286B: FLdPr Me
  loc_BE286E: MemLdRfVar from_stack_1.global_60
  loc_BE2871: LdPrVar
  loc_BE2873: LateMemCall
  loc_BE2879: LitVarStr var_94, " font-weight: bold;"
  loc_BE287E: PopAdLdVar
  loc_BE287F: FLdPr Me
  loc_BE2882: MemLdRfVar from_stack_1.global_60
  loc_BE2885: LdPrVar
  loc_BE2887: LateMemCall
  loc_BE288D: LitVarStr var_94, "}"
  loc_BE2892: PopAdLdVar
  loc_BE2893: FLdPr Me
  loc_BE2896: MemLdRfVar from_stack_1.global_60
  loc_BE2899: LdPrVar
  loc_BE289B: LateMemCall
  loc_BE28A1: LitVarStr var_94, ".Normal {"
  loc_BE28A6: PopAdLdVar
  loc_BE28A7: FLdPr Me
  loc_BE28AA: MemLdRfVar from_stack_1.global_60
  loc_BE28AD: LdPrVar
  loc_BE28AF: LateMemCall
  loc_BE28B5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE28BA: PopAdLdVar
  loc_BE28BB: FLdPr Me
  loc_BE28BE: MemLdRfVar from_stack_1.global_60
  loc_BE28C1: LdPrVar
  loc_BE28C3: LateMemCall
  loc_BE28C9: LitVarStr var_94, " font-size: 12px;"
  loc_BE28CE: PopAdLdVar
  loc_BE28CF: FLdPr Me
  loc_BE28D2: MemLdRfVar from_stack_1.global_60
  loc_BE28D5: LdPrVar
  loc_BE28D7: LateMemCall
  loc_BE28DD: LitVarStr var_94, " font-style: normal;"
  loc_BE28E2: PopAdLdVar
  loc_BE28E3: FLdPr Me
  loc_BE28E6: MemLdRfVar from_stack_1.global_60
  loc_BE28E9: LdPrVar
  loc_BE28EB: LateMemCall
  loc_BE28F1: LitVarStr var_94, " font-weight: normal;"
  loc_BE28F6: PopAdLdVar
  loc_BE28F7: FLdPr Me
  loc_BE28FA: MemLdRfVar from_stack_1.global_60
  loc_BE28FD: LdPrVar
  loc_BE28FF: LateMemCall
  loc_BE2905: LitVarStr var_94, " font-variant: normal;"
  loc_BE290A: PopAdLdVar
  loc_BE290B: FLdPr Me
  loc_BE290E: MemLdRfVar from_stack_1.global_60
  loc_BE2911: LdPrVar
  loc_BE2913: LateMemCall
  loc_BE2919: LitVarStr var_94, "}"
  loc_BE291E: PopAdLdVar
  loc_BE291F: FLdPr Me
  loc_BE2922: MemLdRfVar from_stack_1.global_60
  loc_BE2925: LdPrVar
  loc_BE2927: LateMemCall
  loc_BE292D: LitVarStr var_94, ".Encabezado {"
  loc_BE2932: PopAdLdVar
  loc_BE2933: FLdPr Me
  loc_BE2936: MemLdRfVar from_stack_1.global_60
  loc_BE2939: LdPrVar
  loc_BE293B: LateMemCall
  loc_BE2941: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BE2946: PopAdLdVar
  loc_BE2947: FLdPr Me
  loc_BE294A: MemLdRfVar from_stack_1.global_60
  loc_BE294D: LdPrVar
  loc_BE294F: LateMemCall
  loc_BE2955: LitVarStr var_94, " font-size: 11px;"
  loc_BE295A: PopAdLdVar
  loc_BE295B: FLdPr Me
  loc_BE295E: MemLdRfVar from_stack_1.global_60
  loc_BE2961: LdPrVar
  loc_BE2963: LateMemCall
  loc_BE2969: LitVarStr var_94, " font-weight: bold;"
  loc_BE296E: PopAdLdVar
  loc_BE296F: FLdPr Me
  loc_BE2972: MemLdRfVar from_stack_1.global_60
  loc_BE2975: LdPrVar
  loc_BE2977: LateMemCall
  loc_BE297D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BE2982: PopAdLdVar
  loc_BE2983: FLdPr Me
  loc_BE2986: MemLdRfVar from_stack_1.global_60
  loc_BE2989: LdPrVar
  loc_BE298B: LateMemCall
  loc_BE2991: LitVarStr var_94, "}"
  loc_BE2996: PopAdLdVar
  loc_BE2997: FLdPr Me
  loc_BE299A: MemLdRfVar from_stack_1.global_60
  loc_BE299D: LdPrVar
  loc_BE299F: LateMemCall
  loc_BE29A5: LitVarStr var_94, ".LineaDato {"
  loc_BE29AA: PopAdLdVar
  loc_BE29AB: FLdPr Me
  loc_BE29AE: MemLdRfVar from_stack_1.global_60
  loc_BE29B1: LdPrVar
  loc_BE29B3: LateMemCall
  loc_BE29B9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE29BE: PopAdLdVar
  loc_BE29BF: FLdPr Me
  loc_BE29C2: MemLdRfVar from_stack_1.global_60
  loc_BE29C5: LdPrVar
  loc_BE29C7: LateMemCall
  loc_BE29CD: LitVarStr var_94, " font-size: 10px;"
  loc_BE29D2: PopAdLdVar
  loc_BE29D3: FLdPr Me
  loc_BE29D6: MemLdRfVar from_stack_1.global_60
  loc_BE29D9: LdPrVar
  loc_BE29DB: LateMemCall
  loc_BE29E1: LitVarStr var_94, "}"
  loc_BE29E6: PopAdLdVar
  loc_BE29E7: FLdPr Me
  loc_BE29EA: MemLdRfVar from_stack_1.global_60
  loc_BE29ED: LdPrVar
  loc_BE29EF: LateMemCall
  loc_BE29F5: LitVarStr var_94, ".Totales {"
  loc_BE29FA: PopAdLdVar
  loc_BE29FB: FLdPr Me
  loc_BE29FE: MemLdRfVar from_stack_1.global_60
  loc_BE2A01: LdPrVar
  loc_BE2A03: LateMemCall
  loc_BE2A09: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE2A0E: PopAdLdVar
  loc_BE2A0F: FLdPr Me
  loc_BE2A12: MemLdRfVar from_stack_1.global_60
  loc_BE2A15: LdPrVar
  loc_BE2A17: LateMemCall
  loc_BE2A1D: LitVarStr var_94, " font-size: 12px;"
  loc_BE2A22: PopAdLdVar
  loc_BE2A23: FLdPr Me
  loc_BE2A26: MemLdRfVar from_stack_1.global_60
  loc_BE2A29: LdPrVar
  loc_BE2A2B: LateMemCall
  loc_BE2A31: LitVarStr var_94, " font-weight: bold;"
  loc_BE2A36: PopAdLdVar
  loc_BE2A37: FLdPr Me
  loc_BE2A3A: MemLdRfVar from_stack_1.global_60
  loc_BE2A3D: LdPrVar
  loc_BE2A3F: LateMemCall
  loc_BE2A45: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE2A4A: PopAdLdVar
  loc_BE2A4B: FLdPr Me
  loc_BE2A4E: MemLdRfVar from_stack_1.global_60
  loc_BE2A51: LdPrVar
  loc_BE2A53: LateMemCall
  loc_BE2A59: LitVarStr var_94, "}"
  loc_BE2A5E: PopAdLdVar
  loc_BE2A5F: FLdPr Me
  loc_BE2A62: MemLdRfVar from_stack_1.global_60
  loc_BE2A65: LdPrVar
  loc_BE2A67: LateMemCall
  loc_BE2A6D: LitVarStr var_94, ".SubTotales {"
  loc_BE2A72: PopAdLdVar
  loc_BE2A73: FLdPr Me
  loc_BE2A76: MemLdRfVar from_stack_1.global_60
  loc_BE2A79: LdPrVar
  loc_BE2A7B: LateMemCall
  loc_BE2A81: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE2A86: PopAdLdVar
  loc_BE2A87: FLdPr Me
  loc_BE2A8A: MemLdRfVar from_stack_1.global_60
  loc_BE2A8D: LdPrVar
  loc_BE2A8F: LateMemCall
  loc_BE2A95: LitVarStr var_94, " font-size: 10px;"
  loc_BE2A9A: PopAdLdVar
  loc_BE2A9B: FLdPr Me
  loc_BE2A9E: MemLdRfVar from_stack_1.global_60
  loc_BE2AA1: LdPrVar
  loc_BE2AA3: LateMemCall
  loc_BE2AA9: LitVarStr var_94, " font-weight: bold;"
  loc_BE2AAE: PopAdLdVar
  loc_BE2AAF: FLdPr Me
  loc_BE2AB2: MemLdRfVar from_stack_1.global_60
  loc_BE2AB5: LdPrVar
  loc_BE2AB7: LateMemCall
  loc_BE2ABD: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE2AC2: PopAdLdVar
  loc_BE2AC3: FLdPr Me
  loc_BE2AC6: MemLdRfVar from_stack_1.global_60
  loc_BE2AC9: LdPrVar
  loc_BE2ACB: LateMemCall
  loc_BE2AD1: LitVarStr var_94, "}"
  loc_BE2AD6: PopAdLdVar
  loc_BE2AD7: FLdPr Me
  loc_BE2ADA: MemLdRfVar from_stack_1.global_60
  loc_BE2ADD: LdPrVar
  loc_BE2ADF: LateMemCall
  loc_BE2AE5: LitVarStr var_94, ".Tilde {"
  loc_BE2AEA: PopAdLdVar
  loc_BE2AEB: FLdPr Me
  loc_BE2AEE: MemLdRfVar from_stack_1.global_60
  loc_BE2AF1: LdPrVar
  loc_BE2AF3: LateMemCall
  loc_BE2AF9: LitVarStr var_94, " font-family: Wingdings;"
  loc_BE2AFE: PopAdLdVar
  loc_BE2AFF: FLdPr Me
  loc_BE2B02: MemLdRfVar from_stack_1.global_60
  loc_BE2B05: LdPrVar
  loc_BE2B07: LateMemCall
  loc_BE2B0D: LitVarStr var_94, " font-size: 12px;"
  loc_BE2B12: PopAdLdVar
  loc_BE2B13: FLdPr Me
  loc_BE2B16: MemLdRfVar from_stack_1.global_60
  loc_BE2B19: LdPrVar
  loc_BE2B1B: LateMemCall
  loc_BE2B21: LitVarStr var_94, "}"
  loc_BE2B26: PopAdLdVar
  loc_BE2B27: FLdPr Me
  loc_BE2B2A: MemLdRfVar from_stack_1.global_60
  loc_BE2B2D: LdPrVar
  loc_BE2B2F: LateMemCall
  loc_BE2B35: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BE2B3A: PopAdLdVar
  loc_BE2B3B: FLdPr Me
  loc_BE2B3E: MemLdRfVar from_stack_1.global_60
  loc_BE2B41: LdPrVar
  loc_BE2B43: LateMemCall
  loc_BE2B49: LitVarStr var_94, "</style>"
  loc_BE2B4E: PopAdLdVar
  loc_BE2B4F: FLdPr Me
  loc_BE2B52: MemLdRfVar from_stack_1.global_60
  loc_BE2B55: LdPrVar
  loc_BE2B57: LateMemCall
  loc_BE2B5D: LitI4 0
  loc_BE2B62: FStStrCopy var_AC
  loc_BE2B65: FLdRfVar var_AC
  loc_BE2B68: LitI4 0
  loc_BE2B6D: FStStrCopy var_A8
  loc_BE2B70: FLdRfVar var_A8
  loc_BE2B73: LitI2_Byte 0
  loc_BE2B75: PopTmpLdAd2 var_BE
  loc_BE2B78: FLdPr Me
  loc_BE2B7B: MemLdRfVar from_stack_1.global_60
  loc_BE2B7E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BE2B83: FFreeStr var_A8 = ""
  loc_BE2B8A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BE2B8F: PopAdLdVar
  loc_BE2B90: FLdPr Me
  loc_BE2B93: MemLdRfVar from_stack_1.global_60
  loc_BE2B96: LdPrVar
  loc_BE2B98: LateMemCall
  loc_BE2B9E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BE2BA3: PopAdLdVar
  loc_BE2BA4: FLdPr Me
  loc_BE2BA7: MemLdRfVar from_stack_1.global_60
  loc_BE2BAA: LdPrVar
  loc_BE2BAC: LateMemCall
  loc_BE2BB2: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE2BB5: LitI2_Byte &H5F
  loc_BE2BB7: CStrUI1
  loc_BE2BB9: FStStrNoPop var_A8
  loc_BE2BBC: ConcatStr
  loc_BE2BBD: FStStrNoPop var_AC
  loc_BE2BC0: LitStr """ height="""
  loc_BE2BC3: ConcatStr
  loc_BE2BC4: FStStrNoPop var_C4
  loc_BE2BC7: LitI2_Byte &H3C
  loc_BE2BC9: CStrUI1
  loc_BE2BCB: FStStrNoPop var_C8
  loc_BE2BCE: ConcatStr
  loc_BE2BCF: FStStrNoPop var_CC
  loc_BE2BD2: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BE2BD5: ConcatStr
  loc_BE2BD6: FStStrNoPop var_D0
  loc_BE2BD9: LitStr "Municipalidad de Guaymallén"
  loc_BE2BDC: ConcatStr
  loc_BE2BDD: FStStrNoPop var_D4
  loc_BE2BE0: LitStr "</p>"
  loc_BE2BE3: ConcatStr
  loc_BE2BE4: CVarStr var_BC
  loc_BE2BE7: PopAdLdVar
  loc_BE2BE8: FLdPr Me
  loc_BE2BEB: MemLdRfVar from_stack_1.global_60
  loc_BE2BEE: LdPrVar
  loc_BE2BF0: LateMemCall
  loc_BE2BF6: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BE2C07: FFree1Var var_BC = ""
  loc_BE2C0A: LitStr "    <p>"
  loc_BE2C0D: FLdRfVar var_A8
  loc_BE2C10: FLdPr Me
  loc_BE2C13:  = Me.Caption
  loc_BE2C18: ILdRf var_A8
  loc_BE2C1B: ConcatStr
  loc_BE2C1C: FStStrNoPop var_AC
  loc_BE2C1F: LitStr "</p></th>"
  loc_BE2C22: ConcatStr
  loc_BE2C23: CVarStr var_BC
  loc_BE2C26: PopAdLdVar
  loc_BE2C27: FLdPr Me
  loc_BE2C2A: MemLdRfVar from_stack_1.global_60
  loc_BE2C2D: LdPrVar
  loc_BE2C2F: LateMemCall
  loc_BE2C35: FFreeStr var_A8 = ""
  loc_BE2C3C: FFree1Var var_BC = ""
  loc_BE2C3F: LitVarStr var_94, "  </tr>"
  loc_BE2C44: PopAdLdVar
  loc_BE2C45: FLdPr Me
  loc_BE2C48: MemLdRfVar from_stack_1.global_60
  loc_BE2C4B: LdPrVar
  loc_BE2C4D: LateMemCall
  loc_BE2C53: LitVarStr var_94, "  <tr>"
  loc_BE2C58: PopAdLdVar
  loc_BE2C59: FLdPr Me
  loc_BE2C5C: MemLdRfVar from_stack_1.global_60
  loc_BE2C5F: LdPrVar
  loc_BE2C61: LateMemCall
  loc_BE2C67: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BE2C6C: PopAdLdVar
  loc_BE2C6D: FLdPr Me
  loc_BE2C70: MemLdRfVar from_stack_1.global_60
  loc_BE2C73: LdPrVar
  loc_BE2C75: LateMemCall
  loc_BE2C7B: LitVarStr var_94, "  </tr>"
  loc_BE2C80: PopAdLdVar
  loc_BE2C81: FLdPr Me
  loc_BE2C84: MemLdRfVar from_stack_1.global_60
  loc_BE2C87: LdPrVar
  loc_BE2C89: LateMemCall
  loc_BE2C8F: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BE2C94: PopAdLdVar
  loc_BE2C95: FLdPr Me
  loc_BE2C98: MemLdRfVar from_stack_1.global_60
  loc_BE2C9B: LdPrVar
  loc_BE2C9D: LateMemCall
  loc_BE2CA3: LitStr "    <td align=""left""><strong>Hasta: </strong>"
  loc_BE2CA6: FLdPr Me
  loc_BE2CA9: VCallAd Control_ID_HastaMsk
  loc_BE2CAC: FStAdFunc var_D8
  loc_BE2CAF: FLdPr var_D8
  loc_BE2CB2: LateIdLdVar var_BC DispID_15 0
  loc_BE2CB9: CStrVarTmp
  loc_BE2CBA: FStStrNoPop var_A8
  loc_BE2CBD: ConcatStr
  loc_BE2CBE: FStStrNoPop var_AC
  loc_BE2CC1: LitStr "</td>"
  loc_BE2CC4: ConcatStr
  loc_BE2CC5: CVarStr var_E8
  loc_BE2CC8: PopAdLdVar
  loc_BE2CC9: FLdPr Me
  loc_BE2CCC: MemLdRfVar from_stack_1.global_60
  loc_BE2CCF: LdPrVar
  loc_BE2CD1: LateMemCall
  loc_BE2CD7: FFreeStr var_A8 = ""
  loc_BE2CDE: FFree1Ad var_D8
  loc_BE2CE1: FFreeVar var_BC = ""
  loc_BE2CE8: LitStr "    <td align=""center""><strong>Cuenta Contable: </strong>"
  loc_BE2CEB: FLdPr Me
  loc_BE2CEE: VCallAd Control_ID_ActiConcMsk
  loc_BE2CF1: FStAdFunc var_D8
  loc_BE2CF4: FLdPr var_D8
  loc_BE2CF7: LateIdLdVar var_BC DispID_22 0
  loc_BE2CFE: CStrVarTmp
  loc_BE2CFF: FStStrNoPop var_A8
  loc_BE2D02: ConcatStr
  loc_BE2D03: FStStrNoPop var_AC
  loc_BE2D06: LitStr " - "
  loc_BE2D09: ConcatStr
  loc_BE2D0A: FStStrNoPop var_C8
  loc_BE2D0D: FLdRfVar var_C4
  loc_BE2D10: FLdPr Me
  loc_BE2D13: VCallAd Control_ID_DetaActiLbl
  loc_BE2D16: FStAdFunc var_EC
  loc_BE2D19: FLdPr var_EC
  loc_BE2D1C:  = Me.Caption
  loc_BE2D21: ILdRf var_C4
  loc_BE2D24: ConcatStr
  loc_BE2D25: FStStrNoPop var_CC
  loc_BE2D28: LitStr "</td>"
  loc_BE2D2B: ConcatStr
  loc_BE2D2C: CVarStr var_E8
  loc_BE2D2F: PopAdLdVar
  loc_BE2D30: FLdPr Me
  loc_BE2D33: MemLdRfVar from_stack_1.global_60
  loc_BE2D36: LdPrVar
  loc_BE2D38: LateMemCall
  loc_BE2D3E: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_BE2D4B: FFreeAd var_D8 = ""
  loc_BE2D52: FFreeVar var_BC = ""
  loc_BE2D59: FLdRfVar var_BE
  loc_BE2D5C: FLdPr Me
  loc_BE2D5F: VCallAd Control_ID_LibreDeudaAlDiaOpt
  loc_BE2D62: FStAdFunc var_D8
  loc_BE2D65: FLdPr var_D8
  loc_BE2D68:  = Me.Value
  loc_BE2D6D: LitVarStr var_11C, "    <td align=""right""><strong>LIBRE DEUDA"
  loc_BE2D72: LitVarStr var_FC, vbNullString
  loc_BE2D77: FStVarCopyObj var_E8
  loc_BE2D7A: FLdRfVar var_E8
  loc_BE2D7D: LitVarStr var_A4, " AL DÍA"
  loc_BE2D82: FStVarCopyObj var_BC
  loc_BE2D85: FLdRfVar var_BC
  loc_BE2D88: FLdI2 var_BE
  loc_BE2D8B: CVarBoolI2 var_94
  loc_BE2D8F: FLdRfVar var_10C
  loc_BE2D92: ImpAdCallFPR4  = IIf(, , )
  loc_BE2D97: FLdRfVar var_10C
  loc_BE2D9A: ConcatVar var_12C
  loc_BE2D9E: LitVarStr var_13C, vbNullString
  loc_BE2DA3: ConcatVar var_14C
  loc_BE2DA7: PopAdLdVar
  loc_BE2DA8: FLdPr Me
  loc_BE2DAB: MemLdRfVar from_stack_1.global_60
  loc_BE2DAE: LdPrVar
  loc_BE2DB0: LateMemCall
  loc_BE2DB6: FFree1Ad var_D8
  loc_BE2DB9: FFreeVar var_94 = "": var_BC = "": var_E8 = "": var_10C = "": var_12C = ""
  loc_BE2DC8: FLdRfVar var_BE
  loc_BE2DCB: FLdPr Me
  loc_BE2DCE: VCallAd Control_ID_SoloActivasChk
  loc_BE2DD1: FStAdFunc var_D8
  loc_BE2DD4: FLdPr var_D8
  loc_BE2DD7:  = Me.Value
  loc_BE2DDC: LitVarStr var_11C, "       "
  loc_BE2DE1: LitVarStr var_FC, vbNullString
  loc_BE2DE6: FStVarCopyObj var_E8
  loc_BE2DE9: FLdRfVar var_E8
  loc_BE2DEC: LitVarStr var_A4, " (sólo activas)"
  loc_BE2DF1: FStVarCopyObj var_BC
  loc_BE2DF4: FLdRfVar var_BC
  loc_BE2DF7: FLdI2 var_BE
  loc_BE2DFA: CI4UI1
  loc_BE2DFB: LitI4 1
  loc_BE2E00: EqI4
  loc_BE2E01: CVarBoolI2 var_94
  loc_BE2E05: FLdRfVar var_10C
  loc_BE2E08: ImpAdCallFPR4  = IIf(, , )
  loc_BE2E0D: FLdRfVar var_10C
  loc_BE2E10: ConcatVar var_12C
  loc_BE2E14: LitVarStr var_13C, "</strong></td>"
  loc_BE2E19: ConcatVar var_14C
  loc_BE2E1D: PopAdLdVar
  loc_BE2E1E: FLdPr Me
  loc_BE2E21: MemLdRfVar from_stack_1.global_60
  loc_BE2E24: LdPrVar
  loc_BE2E26: LateMemCall
  loc_BE2E2C: FFree1Ad var_D8
  loc_BE2E2F: FFreeVar var_94 = "": var_BC = "": var_E8 = "": var_10C = "": var_12C = ""
  loc_BE2E3E: LitVarStr var_94, "  </tr>"
  loc_BE2E43: PopAdLdVar
  loc_BE2E44: FLdPr Me
  loc_BE2E47: MemLdRfVar from_stack_1.global_60
  loc_BE2E4A: LdPrVar
  loc_BE2E4C: LateMemCall
  loc_BE2E52: LitVarStr var_94, "</table>"
  loc_BE2E57: PopAdLdVar
  loc_BE2E58: FLdPr Me
  loc_BE2E5B: MemLdRfVar from_stack_1.global_60
  loc_BE2E5E: LdPrVar
  loc_BE2E60: LateMemCall
  loc_BE2E66: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BE2E6B: PopAdLdVar
  loc_BE2E6C: FLdPr Me
  loc_BE2E6F: MemLdRfVar from_stack_1.global_60
  loc_BE2E72: LdPrVar
  loc_BE2E74: LateMemCall
  loc_BE2E7A: LitVarStr var_94, "  <thead>"
  loc_BE2E7F: PopAdLdVar
  loc_BE2E80: FLdPr Me
  loc_BE2E83: MemLdRfVar from_stack_1.global_60
  loc_BE2E86: LdPrVar
  loc_BE2E88: LateMemCall
  loc_BE2E8E: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE2E93: PopAdLdVar
  loc_BE2E94: FLdPr Me
  loc_BE2E97: MemLdRfVar from_stack_1.global_60
  loc_BE2E9A: LdPrVar
  loc_BE2E9C: LateMemCall
  loc_BE2EA2: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BE2EA7: PopAdLdVar
  loc_BE2EA8: FLdPr Me
  loc_BE2EAB: MemLdRfVar from_stack_1.global_60
  loc_BE2EAE: LdPrVar
  loc_BE2EB0: LateMemCall
  loc_BE2EB6: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_BE2EBB: PopAdLdVar
  loc_BE2EBC: FLdPr Me
  loc_BE2EBF: MemLdRfVar from_stack_1.global_60
  loc_BE2EC2: LdPrVar
  loc_BE2EC4: LateMemCall
  loc_BE2ECA: LitVarStr var_94, "  </tr>"
  loc_BE2ECF: PopAdLdVar
  loc_BE2ED0: FLdPr Me
  loc_BE2ED3: MemLdRfVar from_stack_1.global_60
  loc_BE2ED6: LdPrVar
  loc_BE2ED8: LateMemCall
  loc_BE2EDE: LitVarStr var_94, "  </thead>"
  loc_BE2EE3: PopAdLdVar
  loc_BE2EE4: FLdPr Me
  loc_BE2EE7: MemLdRfVar from_stack_1.global_60
  loc_BE2EEA: LdPrVar
  loc_BE2EEC: LateMemCall
  loc_BE2EF2: ExitProcHresult
  loc_BE2EF3: Ary1LdRf
End Function

Private Function Proc_174_22_A0FD28() 'A0FD28
  'Data Table: 4B1380
  loc_A0FCE8: LitVarStr var_94, "</table>"
  loc_A0FCED: PopAdLdVar
  loc_A0FCEE: FLdPr Me
  loc_A0FCF1: MemLdRfVar from_stack_1.global_60
  loc_A0FCF4: LdPrVar
  loc_A0FCF6: LateMemCall
  loc_A0FCFC: LitVarStr var_94, "</body>"
  loc_A0FD01: PopAdLdVar
  loc_A0FD02: FLdPr Me
  loc_A0FD05: MemLdRfVar from_stack_1.global_60
  loc_A0FD08: LdPrVar
  loc_A0FD0A: LateMemCall
  loc_A0FD10: LitVarStr var_94, "</html>"
  loc_A0FD15: PopAdLdVar
  loc_A0FD16: FLdPr Me
  loc_A0FD19: MemLdRfVar from_stack_1.global_60
  loc_A0FD1C: LdPrVar
  loc_A0FD1E: LateMemCall
  loc_A0FD24: ExitProcHresult
  loc_A0FD25: EqI2
End Function
