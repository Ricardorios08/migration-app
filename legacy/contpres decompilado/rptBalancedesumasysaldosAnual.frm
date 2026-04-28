VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptBalancedesumasysaldosAnual
  Caption = "Balance de Sumas y Saldos Acumulado"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptBalancedesumasysaldosAnual.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6360
  ClientHeight = 5310
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3840
    Width = 3015
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5055
    Width = 6360
    Height = 255
    TabIndex = 18
    OleObjectBlob = "rptBalancedesumasysaldosAnual.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 1080
    Width = 735
    Height = 615
    TabIndex = 10
    Cancel = -1  'True
    Picture = "rptBalancedesumasysaldosAnual.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptBalancedesumasysaldosAnual.frx":0B9C
    Left = 2760
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3840
    Width = 3015
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 17
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5055
    Height = 3735
    TabIndex = 0
    Begin VB.CheckBox chkExcluirPresupuestarias
      Caption = "Excluir Cuentas Presupuestarias"
      Left = 720
      Top = 2640
      Width = 2655
      Height = 255
      TabIndex = 9
    End
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1080
      Top = 840
      Width = 1575
      Height = 315
      TabIndex = 5
    End
    Begin VB.CheckBox chkExcluirCierrePresupuestario
      Caption = "Excluir Cierre Presupuestario"
      Left = 720
      Top = 1800
      Width = 2535
      Height = 255
      TabIndex = 7
    End
    Begin VB.CheckBox chkExcluirCierrePatrimonial
      Caption = "Excluir Cierre Patrimonial"
      Left = 720
      Top = 2160
      Width = 2295
      Height = 375
      TabIndex = 8
    End
    Begin VB.CheckBox chkSoloCajayBancos
      Caption = "Solo Caja y Bancos"
      Left = 720
      Top = 1320
      Width = 1815
      Height = 375
      TabIndex = 6
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1080
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 600
      Top = 840
      Width = 345
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 360
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5640
    Top = 1320
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptBalancedesumasysaldosAnual.frx":0C00
  End
End

Attribute VB_Name = "rptBalancedesumasysaldosAnual"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0058997C
  bStruc(56) As Byte ' String fields: 14
End Type

Private Type UDT_2_0062252C
  bStruc(68) As Byte ' String fields: 4
End Type

Private Type UDT_3_00622580
  bStruc(68) As Byte ' String fields: 4
End Type

Private Type UDT_4_006225D0
  bStruc(68) As Byte ' String fields: 4
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98ACAC
  'Data Table: 46F7A4
  loc_98AC74: FLdPr Me
  loc_98AC77: VCallAd Control_ID_statusBar
  loc_98AC7A: FStAdFunc var_88
  loc_98AC7D: FLdPr var_88
  loc_98AC80: LateIdLdVar var_98 DispID_1 0
  loc_98AC87: CStrVarTmp
  loc_98AC88: CVarStr var_A8
  loc_98AC8B: PopAdLdVar
  loc_98AC8C: FLdPr Me
  loc_98AC8F: VCallAd Control_ID_statusBar
  loc_98AC92: FStAdFunc var_BC
  loc_98AC95: FLdPr var_BC
  loc_98AC98: LateIdSt
  loc_98AC9D: FFreeAd var_88 = ""
  loc_98ACA4: FFreeVar var_98 = ""
  loc_98ACAB: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95F31C
  'Data Table: 46F7A4
  loc_95F304: LitI2_Byte 0
  loc_95F306: ILdRf Me
  loc_95F309: CastAd
  loc_95F30C: FStAdFunc var_88
  loc_95F30F: FLdRfVar var_88
  loc_95F312: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95F317: FFree1Ad var_88
  loc_95F31A: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95F284
  'Data Table: 46F7A4
  loc_95F26C: ILdRf Me
  loc_95F26F: CastAd
  loc_95F272: FStAdFunc var_88
  loc_95F275: FLdRfVar var_88
  loc_95F278: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95F27D: FFree1Ad var_88
  loc_95F280: ExitProcHresult
End Sub

Private Sub cboMes_Validate(Cancel As Boolean) '9B6C64
  'Data Table: 46F7A4
  loc_9B6BBC: FLdRfVar var_8C
  loc_9B6BBF: FLdPr Me
  loc_9B6BC2: VCallAd Control_ID_cboPeriodo
  loc_9B6BC5: FStAdFunc var_88
  loc_9B6BC8: FLdPr var_88
  loc_9B6BCB:  = Me.Text
  loc_9B6BD0: FLdRfVar var_92
  loc_9B6BD3: FLdPr Me
  loc_9B6BD6: VCallAd Control_ID_cboMes
  loc_9B6BD9: FStAdFunc var_90
  loc_9B6BDC: FLdPr var_90
  loc_9B6BDF:  = Me.ListIndex
  loc_9B6BE4: FLdRfVar var_9C
  loc_9B6BE7: FLdI2 var_92
  loc_9B6BEA: FLdPr Me
  loc_9B6BED: VCallAd Control_ID_cboMes
  loc_9B6BF0: FStAdFunc var_98
  loc_9B6BF3: FLdPr var_98
  loc_9B6BF6:  = Me.ItemData
  loc_9B6BFB: ILdRf var_9C
  loc_9B6BFE: CUI1I4
  loc_9B6C00: ILdRf var_8C
  loc_9B6C03: CI2Str
  loc_9B6C05: ImpAdCallI2  = Proc_266_31_9BB10C()
  loc_9B6C0A: FStStrNoPop var_A0
  loc_9B6C0D: FLdPr Me
  loc_9B6C10: MemStStrCopy
  loc_9B6C14: FFreeStr var_8C = ""
  loc_9B6C1B: FFreeAd var_88 = "": var_90 = ""
  loc_9B6C24: FLdPr Me
  loc_9B6C27: VCallAd Control_ID_cboMes
  loc_9B6C2A: FStAdFunc var_A4
  loc_9B6C2D: LitNothing
  loc_9B6C2F: CastAd
  loc_9B6C32: FStAdFunc var_98
  loc_9B6C35: FLdRfVar var_98
  loc_9B6C38: FLdZeroAd var_A4
  loc_9B6C3B: FStAdFuncNoPop
  loc_9B6C3E: CastAd
  loc_9B6C41: FStAdFunc var_90
  loc_9B6C44: FLdRfVar var_90
  loc_9B6C47: FLdPr Me
  loc_9B6C4A: MemLdRfVar from_stack_1.global_116
  loc_9B6C4D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B6C52: IStI2 Cancel
  loc_9B6C55: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9B6C60: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95F1EC
  'Data Table: 46F7A4
  loc_95F1D4: ILdRf Me
  loc_95F1D7: CastAd
  loc_95F1DA: FStAdFunc var_88
  loc_95F1DD: FLdRfVar var_88
  loc_95F1E0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95F1E5: FFree1Ad var_88
  loc_95F1E8: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96969C
  'Data Table: 46F7A4
  loc_969680: LitI2_Byte &HFF
  loc_969682: LitI2_Byte 0
  loc_969684: ILdRf Me
  loc_969687: CastAd
  loc_96968A: FStAdFunc var_88
  loc_96968D: FLdRfVar var_88
  loc_969690: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_969695: FFree1Ad var_88
  loc_969698: ExitProcHresult
End Sub

Private Sub Form_Load() 'A12EA0
  'Data Table: 46F7A4
  loc_A12D30: LitStr "Municipalidad de Guaymallén"
  loc_A12D33: LitStr "Municipalidad de Malargüe"
  loc_A12D36: EqStr
  loc_A12D38: BranchF loc_A12D4D
  loc_A12D3B: LitI2_Byte 0
  loc_A12D3D: ImpAdStI2 MemVar_C3D840
  loc_A12D40: LitI2_Byte 0
  loc_A12D42: ImpAdStI2 MemVar_C3D844
  loc_A12D45: LitI2_Byte 0
  loc_A12D47: ImpAdStI2 MemVar_C3D842
  loc_A12D4A: Branch loc_A12D5C
  loc_A12D4D: LitI2_Byte &HFF
  loc_A12D4F: ImpAdStI2 MemVar_C3D840
  loc_A12D52: LitI2_Byte 0
  loc_A12D54: ImpAdStI2 MemVar_C3D844
  loc_A12D57: LitI2_Byte &HFF
  loc_A12D59: ImpAdStI2 MemVar_C3D842
  loc_A12D5C: ILdRf Me
  loc_A12D5F: CastAd
  loc_A12D62: FStAdFunc var_94
  loc_A12D65: FLdRfVar var_94
  loc_A12D68: ImpAdCallFPR4  = Proc_261_42_9991A0()
  loc_A12D6D: FFree1Ad var_94
  loc_A12D70: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A12D73: FLdRfVar var_88
  loc_A12D76: NewIfNullPr clsperiodo
  loc_A12D79: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A12D7E: FLdRfVar var_98
  loc_A12D81: FLdRfVar var_88
  loc_A12D84: NewIfNullPr clsperiodo
  loc_A12D87: from_stack_1 = clsperiodo.RecordCount
  loc_A12D8C: ILdRf var_98
  loc_A12D8F: LitI4 0
  loc_A12D94: GtI4
  loc_A12D95: BranchF loc_A12E28
  loc_A12D98: FLdRfVar var_88
  loc_A12D9B: NewIfNullPr clsperiodo
  loc_A12D9E: Call clsperiodo.MoveFirst()
  loc_A12DA3: FLdRfVar var_9A
  loc_A12DA6: FLdRfVar var_88
  loc_A12DA9: NewIfNullPr clsperiodo
  loc_A12DAC: from_stack_1 = clsperiodo.EOF
  loc_A12DB1: FLdI2 var_9A
  loc_A12DB4: NotI4
  loc_A12DB5: BranchF loc_A12E28
  loc_A12DB8: LitVar_Missing var_D8
  loc_A12DBB: PopAdLdVar
  loc_A12DBC: FLdRfVar var_C4
  loc_A12DBF: FLdRfVar var_B4
  loc_A12DC2: LitVarStr var_B0, "PeriInfo"
  loc_A12DC7: PopAdLdVar
  loc_A12DC8: FLdRfVar var_A0
  loc_A12DCB: FLdRfVar var_94
  loc_A12DCE: FLdRfVar var_88
  loc_A12DD1: NewIfNullPr clsperiodo
  loc_A12DD4: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A12DD9: FLdPr var_94
  loc_A12DDC:  = Me.Fields
  loc_A12DE1: FLdPr var_A0
  loc_A12DE4: from_stack_2 = Me.Item(from_stack_1)
  loc_A12DE9: FLdPr var_B4
  loc_A12DEC:  = Me.Value
  loc_A12DF1: FLdRfVar var_C4
  loc_A12DF4: CStrVarTmp
  loc_A12DF5: FStStrNoPop var_C8
  loc_A12DF8: FLdPr Me
  loc_A12DFB: VCallAd Control_ID_cboPeriodo
  loc_A12DFE: FStAdFunc var_DC
  loc_A12E01: FLdPr var_DC
  loc_A12E04: Me.AddItem from_stack_1, from_stack_2
  loc_A12E09: FFree1Str var_C8
  loc_A12E0C: FFreeAd var_94 = "": var_A0 = "": var_B4 = ""
  loc_A12E17: FFree1Var var_C4 = ""
  loc_A12E1A: FLdRfVar var_88
  loc_A12E1D: NewIfNullPr clsperiodo
  loc_A12E20: Call clsperiodo.MoveSiguiente()
  loc_A12E25: Branch loc_A12DA3
  loc_A12E28: LitI2_Byte 1
  loc_A12E2A: FLdRfVar var_8E
  loc_A12E2D: LitI2_Byte &HC
  loc_A12E2F: ForI2 var_E0
  loc_A12E35: LitVar_Missing var_B0
  loc_A12E38: PopAdLdVar
  loc_A12E39: LitI2_Byte 0
  loc_A12E3B: FLdI2 var_8E
  loc_A12E3E: CI4UI1
  loc_A12E3F: ImpAdCallI2 MonthName(, )
  loc_A12E44: FStStrNoPop var_C8
  loc_A12E47: FLdPr Me
  loc_A12E4A: VCallAd Control_ID_cboMes
  loc_A12E4D: FStAdFunc var_94
  loc_A12E50: FLdPr var_94
  loc_A12E53: Me.AddItem from_stack_1, from_stack_2
  loc_A12E58: FFree1Str var_C8
  loc_A12E5B: FFree1Ad var_94
  loc_A12E5E: FLdI2 var_8E
  loc_A12E61: CI4UI1
  loc_A12E62: FLdRfVar var_9A
  loc_A12E65: FLdPr Me
  loc_A12E68: VCallAd Control_ID_cboMes
  loc_A12E6B: FStAdFunc var_94
  loc_A12E6E: FLdPr var_94
  loc_A12E71:  = Me.NewIndex
  loc_A12E76: FLdI2 var_9A
  loc_A12E79: FLdPr Me
  loc_A12E7C: VCallAd Control_ID_cboMes
  loc_A12E7F: FStAdFunc var_A0
  loc_A12E82: FLdPr var_A0
  loc_A12E85: Me.ItemData = from_stack_1
  loc_A12E8A: FFreeAd var_94 = ""
  loc_A12E91: FLdRfVar var_8E
  loc_A12E94: NextI2 var_E0, loc_A12E35
  loc_A12E99: Call cmdNueva_Click()
  loc_A12E9E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96E758
  'Data Table: 46F7A4
  loc_96E734: LitI2_Byte &HFF
  loc_96E736: ImpAdStI2 MemVar_C3D840
  loc_96E739: LitI2_Byte 0
  loc_96E73B: ImpAdStI2 MemVar_C3D844
  loc_96E73E: LitI2_Byte &HFF
  loc_96E740: ImpAdStI2 MemVar_C3D842
  loc_96E743: FLdPr Me
  loc_96E746: VCallAd Control_ID_wbbReporte
  loc_96E749: FStAdFunc var_88
  loc_96E74C: FLdRfVar var_88
  loc_96E74F: ImpAdCallFPR4  = Proc_263_22_98CC50()
  loc_96E754: FFree1Ad var_88
  loc_96E757: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9D63F4
  'Data Table: 46F7A4
  loc_9D6300: LitI2_Byte 0
  loc_9D6302: FLdPr Me
  loc_9D6305: MemStI2 bGenerado
  loc_9D6308: LitI2_Byte &HFF
  loc_9D630A: FLdPr Me
  loc_9D630D: MemStI2 bLogos
  loc_9D6310: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D6315: ImpAdLdI2 MemVar_C3D064
  loc_9D6318: CStrUI1
  loc_9D631A: FStStrNoPop var_88
  loc_9D631D: FLdPr Me
  loc_9D6320: VCallAd Control_ID_cboPeriodo
  loc_9D6323: FStAdFunc var_8C
  loc_9D6326: FLdPr var_8C
  loc_9D6329: Me.Text = from_stack_1
  loc_9D632E: FFree1Str var_88
  loc_9D6331: FFree1Ad var_8C
  loc_9D6334: LitI2_Byte 0
  loc_9D6336: PopTmpLdAd2 var_8E
  loc_9D6339: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9D633E: CVarDate var_B0
  loc_9D6342: FLdRfVar var_C0
  loc_9D6345: ImpAdCallFPR4  = Month()
  loc_9D634A: FLdRfVar var_C0
  loc_9D634D: LitVarI2 var_D0, 1
  loc_9D6352: SubVar var_E0
  loc_9D6356: CI2Var
  loc_9D6357: FLdPr Me
  loc_9D635A: VCallAd Control_ID_cboMes
  loc_9D635D: FStAdFunc var_8C
  loc_9D6360: FLdPr var_8C
  loc_9D6363: Me.ListIndex = from_stack_1
  loc_9D6368: FFree1Ad var_8C
  loc_9D636B: FFreeVar var_B0 = ""
  loc_9D6372: LitI4 0
  loc_9D6377: CI2I4
  loc_9D6378: FLdPr Me
  loc_9D637B: VCallAd Control_ID_chkSoloCajayBancos
  loc_9D637E: FStAdFunc var_8C
  loc_9D6381: FLdPr var_8C
  loc_9D6384: Me.Value = from_stack_1
  loc_9D6389: FFree1Ad var_8C
  loc_9D638C: LitI4 1
  loc_9D6391: CI2I4
  loc_9D6392: FLdPr Me
  loc_9D6395: VCallAd Control_ID_chkExcluirCierrePresupuestario
  loc_9D6398: FStAdFunc var_8C
  loc_9D639B: FLdPr var_8C
  loc_9D639E: Me.Value = from_stack_1
  loc_9D63A3: FFree1Ad var_8C
  loc_9D63A6: LitI4 1
  loc_9D63AB: CI2I4
  loc_9D63AC: FLdPr Me
  loc_9D63AF: VCallAd Control_ID_chkExcluirCierrePatrimonial
  loc_9D63B2: FStAdFunc var_8C
  loc_9D63B5: FLdPr var_8C
  loc_9D63B8: Me.Value = from_stack_1
  loc_9D63BD: FFree1Ad var_8C
  loc_9D63C0: LitI4 0
  loc_9D63C5: CI2I4
  loc_9D63C6: FLdPr Me
  loc_9D63C9: VCallAd Control_ID_chkExcluirPresupuestarias
  loc_9D63CC: FStAdFunc var_8C
  loc_9D63CF: FLdPr var_8C
  loc_9D63D2: Me.Value = from_stack_1
  loc_9D63D7: FFree1Ad var_8C
  loc_9D63DA: Call HabilitarCriterio()
  loc_9D63DF: ILdRf Me
  loc_9D63E2: CastAd
  loc_9D63E5: FStAdFunc var_8C
  loc_9D63E8: FLdRfVar var_8C
  loc_9D63EB: ImpAdCallFPR4  = Proc_263_12_9C9114()
  loc_9D63F0: FFree1Ad var_8C
  loc_9D63F3: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97BD88
  'Data Table: 46F7A4
  loc_97BD58: LitVarStr var_94, "Cerrando..."
  loc_97BD5D: PopAdLdVar
  loc_97BD5E: FLdPr Me
  loc_97BD61: VCallAd Control_ID_statusBar
  loc_97BD64: FStAdFunc var_A8
  loc_97BD67: FLdPr var_A8
  loc_97BD6A: LateIdSt
  loc_97BD6F: FFree1Ad var_A8
  loc_97BD72: ILdRf Me
  loc_97BD75: FStAdNoPop
  loc_97BD79: ImpAdLdRf MemVar_C44F9C
  loc_97BD7C: NewIfNullPr Me
  loc_97BD7F: Me.Global.Unload from_stack_1
  loc_97BD84: FFree1Ad var_A8
  loc_97BD87: ExitProcHresult
End Sub

Public Function htmFileGet() '4705F4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '470603
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '470612
  htmFile = Value
End Sub

Public Function bLogosGet() '470621
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '470630
  bLogos = Value
End Sub

Public Function bGeneradoGet() '47063F
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47064E
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9ABC8C
  'Data Table: 46F7A4
  loc_9ABC08: LitI4 0
  loc_9ABC0D: LitI4 5
  loc_9ABC12: FLdRfVar var_88
  loc_9ABC15: Redim
  loc_9ABC1F: FLdPr Me
  loc_9ABC22: VCallAd Control_ID_cboPeriodo
  loc_9ABC25: CVarAd
  loc_9ABC29: ParmAry1St
  loc_9ABC2F: FLdPr Me
  loc_9ABC32: VCallAd Control_ID_cboMes
  loc_9ABC35: CVarAd
  loc_9ABC39: ParmAry1St
  loc_9ABC3F: FLdPr Me
  loc_9ABC42: VCallAd Control_ID_chkSoloCajayBancos
  loc_9ABC45: CVarAd
  loc_9ABC49: ParmAry1St
  loc_9ABC4F: FLdPr Me
  loc_9ABC52: VCallAd Control_ID_chkExcluirCierrePresupuestario
  loc_9ABC55: CVarAd
  loc_9ABC59: ParmAry1St
  loc_9ABC5F: FLdPr Me
  loc_9ABC62: VCallAd Control_ID_chkExcluirCierrePatrimonial
  loc_9ABC65: CVarAd
  loc_9ABC69: ParmAry1St
  loc_9ABC6F: FLdPr Me
  loc_9ABC72: VCallAd Control_ID_chkExcluirPresupuestarias
  loc_9ABC75: CVarAd
  loc_9ABC79: ParmAry1St
  loc_9ABC7F: FLdRfVar var_88
  loc_9ABC82: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9ABC87: FLdRfVar var_88
  loc_9ABC8A: Erase
  loc_9ABC8B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B8AE84
  'Data Table: 46F7A4
  loc_B8A0CC: OnErrorGoto loc_B8AE14
  loc_B8A0D1: LitStr vbNullString
  loc_B8A0D4: FLdPr Me
  loc_B8A0D7: MemStStrCopy
  loc_B8A0DD: LitI2_Byte 0
  loc_B8A0DF: PopTmpLdAd2 var_96
  loc_B8A0E2: Call cboMes_Validate(from_stack_1v)
  loc_B8A0E9: FLdPr Me
  loc_B8A0EC: MemLdStr global_116
  loc_B8A0EF: LitStr vbNullString
  loc_B8A0F2: NeStr
  loc_B8A0F4: BranchF loc_B8A0FC
  loc_B8A0F9: Branch loc_B8ADE5
  loc_B8A0FE: FLdPr Me
  loc_B8A101: MemLdI2 bGenerado
  loc_B8A104: BranchF loc_B8A10A
  loc_B8A109: ExitProcHresult
  loc_B8A10C: LitVarStr var_A8, "Generando reporte..."
  loc_B8A111: PopAdLdVar
  loc_B8A112: FLdPr Me
  loc_B8A115: VCallAd Control_ID_statusBar
  loc_B8A118: FStAdFunc var_BC
  loc_B8A11B: FLdPr var_BC
  loc_B8A11E: LateIdSt
  loc_B8A123: FFree1Ad var_BC
  loc_B8A128: LitI4 &HB
  loc_B8A12D: CI2I4
  loc_B8A12E: FLdPr Me
  loc_B8A131: Me.MousePointer = from_stack_1
  loc_B8A138: FLdRfVar var_C4
  loc_B8A13B: FLdRfVar var_96
  loc_B8A13E: FLdPr Me
  loc_B8A141: VCallAd Control_ID_cboMes
  loc_B8A144: FStAdFunc var_BC
  loc_B8A147: FLdPr var_BC
  loc_B8A14A:  = Me.ListIndex
  loc_B8A14F: FLdI2 var_96
  loc_B8A152: FLdPr Me
  loc_B8A155: VCallAd Control_ID_cboMes
  loc_B8A158: FStAdFunc var_C0
  loc_B8A15B: FLdPr var_C0
  loc_B8A15E:  = Me.ItemData
  loc_B8A163: ILdRf var_C4
  loc_B8A166: CI2I4
  loc_B8A167: FLdPr Me
  loc_B8A16A: MemStI2 global_100
  loc_B8A16D: FFreeAd var_BC = ""
  loc_B8A176: FLdRfVar var_C8
  loc_B8A179: FLdPr Me
  loc_B8A17C: VCallAd Control_ID_cboPeriodo
  loc_B8A17F: FStAdFunc var_BC
  loc_B8A182: FLdPr var_BC
  loc_B8A185:  = Me.Text
  loc_B8A18A: ILdRf var_C8
  loc_B8A18D: CI2Str
  loc_B8A18F: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B8A194: CVarStr var_D8
  loc_B8A197: FLdRfVar var_E8
  loc_B8A19A: ImpAdCallFPR4  = Month()
  loc_B8A19F: LitVarStr var_128, "Definitivo"
  loc_B8A1A4: FStVarCopyObj var_138
  loc_B8A1A7: FLdRfVar var_138
  loc_B8A1AA: LitVarStr var_B8, "Provisorio"
  loc_B8A1AF: FStVarCopyObj var_118
  loc_B8A1B2: FLdRfVar var_118
  loc_B8A1B5: FLdPr Me
  loc_B8A1B8: MemLdI2 global_100
  loc_B8A1BB: CVarI2 var_A8
  loc_B8A1BE: HardType
  loc_B8A1BF: FLdRfVar var_E8
  loc_B8A1C2: GtVar var_F8
  loc_B8A1C6: FStVar var_108
  loc_B8A1CA: FLdRfVar var_108
  loc_B8A1CD: FLdRfVar var_148
  loc_B8A1D0: ImpAdCallFPR4  = IIf(, , )
  loc_B8A1D5: FLdRfVar var_148
  loc_B8A1D8: CStrVarTmp
  loc_B8A1D9: FStStrNoPop var_14C
  loc_B8A1DC: FLdPr Me
  loc_B8A1DF: MemStStrCopy
  loc_B8A1E3: FFreeStr var_C8 = ""
  loc_B8A1EA: FFree1Ad var_BC
  loc_B8A1ED: FFreeVar var_D8 = "": var_E8 = "": var_108 = "": var_118 = "": var_138 = ""
  loc_B8A1FE: FLdRfVar var_96
  loc_B8A201: FLdPr Me
  loc_B8A204: VCallAd Control_ID_chkSoloCajayBancos
  loc_B8A207: FStAdFunc var_BC
  loc_B8A20A: FLdPr var_BC
  loc_B8A20D:  = Me.Value
  loc_B8A212: LitVarStr var_128, " AND (tc.CodiTicu LIKE '111" & Chr(37) & "' OR tc.CodiTicu LIKE '112" & Chr(37) & "' OR tc.CodiTicu LIKE '113" & Chr(37) & "')"
  loc_B8A217: FStVarCopyObj var_E8
  loc_B8A21A: FLdRfVar var_E8
  loc_B8A21D: LitVarStr var_B8, vbNullString
  loc_B8A222: FStVarCopyObj var_D8
  loc_B8A225: FLdRfVar var_D8
  loc_B8A228: FLdI2 var_96
  loc_B8A22B: CI4UI1
  loc_B8A22C: LitI4 0
  loc_B8A231: EqI4
  loc_B8A232: CVarBoolI2 var_A8
  loc_B8A236: FLdRfVar var_F8
  loc_B8A239: ImpAdCallFPR4  = IIf(, , )
  loc_B8A23E: FLdRfVar var_F8
  loc_B8A241: CStrVarTmp
  loc_B8A242: FStStr var_88
  loc_B8A245: FFree1Ad var_BC
  loc_B8A248: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_B8A255: FLdRfVar var_96
  loc_B8A258: FLdPr Me
  loc_B8A25B: VCallAd Control_ID_chkExcluirCierrePresupuestario
  loc_B8A25E: FStAdFunc var_BC
  loc_B8A261: FLdPr var_BC
  loc_B8A264:  = Me.Value
  loc_B8A269: LitVarStr var_128, vbNullString
  loc_B8A26E: FStVarCopyObj var_E8
  loc_B8A271: FLdRfVar var_E8
  loc_B8A274: LitVarStr var_B8, " AND a.CodiTias NOT IN (16)"
  loc_B8A279: FStVarCopyObj var_D8
  loc_B8A27C: FLdRfVar var_D8
  loc_B8A27F: FLdI2 var_96
  loc_B8A282: CI4UI1
  loc_B8A283: LitI4 1
  loc_B8A288: EqI4
  loc_B8A289: CVarBoolI2 var_A8
  loc_B8A28D: FLdRfVar var_F8
  loc_B8A290: ImpAdCallFPR4  = IIf(, , )
  loc_B8A295: FLdRfVar var_F8
  loc_B8A298: CStrVarTmp
  loc_B8A299: FStStr var_8C
  loc_B8A29C: FFree1Ad var_BC
  loc_B8A29F: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_B8A2AC: FLdRfVar var_96
  loc_B8A2AF: FLdPr Me
  loc_B8A2B2: VCallAd Control_ID_chkExcluirCierrePatrimonial
  loc_B8A2B5: FStAdFunc var_BC
  loc_B8A2B8: FLdPr var_BC
  loc_B8A2BB:  = Me.Value
  loc_B8A2C0: LitVarStr var_128, vbNullString
  loc_B8A2C5: FStVarCopyObj var_E8
  loc_B8A2C8: FLdRfVar var_E8
  loc_B8A2CB: LitVarStr var_B8, " AND a.CodiTias NOT IN (25,27)"
  loc_B8A2D0: FStVarCopyObj var_D8
  loc_B8A2D3: FLdRfVar var_D8
  loc_B8A2D6: FLdI2 var_96
  loc_B8A2D9: CI4UI1
  loc_B8A2DA: LitI4 1
  loc_B8A2DF: EqI4
  loc_B8A2E0: CVarBoolI2 var_A8
  loc_B8A2E4: FLdRfVar var_F8
  loc_B8A2E7: ImpAdCallFPR4  = IIf(, , )
  loc_B8A2EC: FLdRfVar var_F8
  loc_B8A2EF: CStrVarTmp
  loc_B8A2F0: FStStr var_90
  loc_B8A2F3: FFree1Ad var_BC
  loc_B8A2F6: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_B8A303: FLdRfVar var_96
  loc_B8A306: FLdPr Me
  loc_B8A309: VCallAd Control_ID_chkExcluirPresupuestarias
  loc_B8A30C: FStAdFunc var_BC
  loc_B8A30F: FLdPr var_BC
  loc_B8A312:  = Me.Value
  loc_B8A317: LitVarStr var_128, " AND cc.CodiTicu NOT LIKE '5" & Chr(37) & "' AND cc.CodiTicu NOT LIKE '6" & Chr(37) & "' AND cc.CodiTicu NOT LIKE '7" & Chr(37) & "' AND cc.CodiTicu NOT LIKE '8" & Chr(37) & "'"
  loc_B8A31C: FStVarCopyObj var_E8
  loc_B8A31F: FLdRfVar var_E8
  loc_B8A322: LitVarStr var_B8, vbNullString
  loc_B8A327: FStVarCopyObj var_D8
  loc_B8A32A: FLdRfVar var_D8
  loc_B8A32D: FLdI2 var_96
  loc_B8A330: CI4UI1
  loc_B8A331: LitI4 0
  loc_B8A336: EqI4
  loc_B8A337: CVarBoolI2 var_A8
  loc_B8A33B: FLdRfVar var_F8
  loc_B8A33E: ImpAdCallFPR4  = IIf(, , )
  loc_B8A343: FLdRfVar var_F8
  loc_B8A346: CStrVarTmp
  loc_B8A347: FStStr var_94
  loc_B8A34A: FFree1Ad var_BC
  loc_B8A34D: FFreeVar var_A8 = "": var_D8 = "": var_E8 = ""
  loc_B8A35A: LitStr "Municipalidad de Guaymallén"
  loc_B8A35D: LitStr "Municipalidad de Maipú"
  loc_B8A360: EqStr
  loc_B8A362: BranchF loc_B8A41F
  loc_B8A367: LitStr "SELECT CodiTias, cc.CodiCuco, DetaCuco, Month(FechAsie) MessAsie, FechAsie, Sum(DebeMoas) DebeMoas, Sum(HabeMoas) HabeMoas, (Sum(DebeMoas) - Sum(HabeMoas)) Saldo, cc.CodiTicu, DetaTicu"
  loc_B8A36A: LitStr " FROM asiento a"
  loc_B8A36D: ConcatStr
  loc_B8A36E: FStStrNoPop var_C8
  loc_B8A371: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = a.PeriInfo AND mv.CodiAsie = a.CodiAsie"
  loc_B8A374: ConcatStr
  loc_B8A375: FStStrNoPop var_14C
  loc_B8A378: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = a.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B8A37B: ConcatStr
  loc_B8A37C: FStStrNoPop var_150
  loc_B8A37F: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_B8A382: ConcatStr
  loc_B8A383: FStStrNoPop var_154
  loc_B8A386: LitStr " WHERE a.PeriInfo = "
  loc_B8A389: ConcatStr
  loc_B8A38A: FStStrNoPop var_15C
  loc_B8A38D: FLdRfVar var_158
  loc_B8A390: FLdPr Me
  loc_B8A393: VCallAd Control_ID_cboPeriodo
  loc_B8A396: FStAdFunc var_BC
  loc_B8A399: FLdPr var_BC
  loc_B8A39C:  = Me.Text
  loc_B8A3A1: ILdRf var_158
  loc_B8A3A4: ConcatStr
  loc_B8A3A5: FStStrNoPop var_160
  loc_B8A3A8: LitStr " AND Month(FechAsie) <= "
  loc_B8A3AB: ConcatStr
  loc_B8A3AC: FStStrNoPop var_164
  loc_B8A3AF: FLdPr Me
  loc_B8A3B2: MemLdI2 global_100
  loc_B8A3B5: CStrUI1
  loc_B8A3B7: FStStrNoPop var_168
  loc_B8A3BA: ConcatStr
  loc_B8A3BB: FStStrNoPop var_16C
  loc_B8A3BE: ILdRf var_88
  loc_B8A3C1: ConcatStr
  loc_B8A3C2: FStStrNoPop var_170
  loc_B8A3C5: ILdRf var_8C
  loc_B8A3C8: ConcatStr
  loc_B8A3C9: FStStrNoPop var_174
  loc_B8A3CC: ILdRf var_90
  loc_B8A3CF: ConcatStr
  loc_B8A3D0: FStStrNoPop var_178
  loc_B8A3D3: ILdRf var_94
  loc_B8A3D6: ConcatStr
  loc_B8A3D7: FStStrNoPop var_17C
  loc_B8A3DA: LitStr " GROUP BY cc.CodiCuco, Month(FechAsie), FechAsie, CodiTias"
  loc_B8A3DD: ConcatStr
  loc_B8A3DE: FStStrNoPop var_180
  loc_B8A3E1: LitStr " ORDER BY CodiTicu, CodiCuco, CodiTias;"
  loc_B8A3E4: ConcatStr
  loc_B8A3E5: FStStrNoPop var_184
  loc_B8A3E8: FLdPr Me
  loc_B8A3EB: MemLdRfVar from_stack_1.global_72
  loc_B8A3EE: NewIfNullPr clsasiento
  loc_B8A3F1: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B8A3F6: FFreeStr var_C8 = "": var_14C = "": var_150 = "": var_154 = "": var_15C = "": var_158 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B8A419: FFree1Ad var_BC
  loc_B8A41C: Branch loc_B8A5A3
  loc_B8A423: LitStr "Municipalidad de Guaymallén"
  loc_B8A426: LitStr "Municipalidad de Guaymallén"
  loc_B8A429: EqStr
  loc_B8A42B: BranchF loc_B8A4E8
  loc_B8A430: LitStr "SELECT CodiTias, cc.CodiCuco, DetaCuco, Month(FechAsie) MessAsie, FechAsie, Sum(DebeMoas) DebeMoas, Sum(HabeMoas) HabeMoas, (Sum(DebeMoas) - Sum(HabeMoas)) Saldo, cc.CodiTicu, DetaTicu"
  loc_B8A433: LitStr " FROM asiento a"
  loc_B8A436: ConcatStr
  loc_B8A437: FStStrNoPop var_C8
  loc_B8A43A: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = a.PeriInfo AND mv.CodiAsie = a.CodiAsie"
  loc_B8A43D: ConcatStr
  loc_B8A43E: FStStrNoPop var_14C
  loc_B8A441: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = a.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B8A444: ConcatStr
  loc_B8A445: FStStrNoPop var_150
  loc_B8A448: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_B8A44B: ConcatStr
  loc_B8A44C: FStStrNoPop var_154
  loc_B8A44F: LitStr " WHERE /* a.FechAsie <= '2019-12-30' and */ a.PeriInfo = "
  loc_B8A452: ConcatStr
  loc_B8A453: FStStrNoPop var_15C
  loc_B8A456: FLdRfVar var_158
  loc_B8A459: FLdPr Me
  loc_B8A45C: VCallAd Control_ID_cboPeriodo
  loc_B8A45F: FStAdFunc var_BC
  loc_B8A462: FLdPr var_BC
  loc_B8A465:  = Me.Text
  loc_B8A46A: ILdRf var_158
  loc_B8A46D: ConcatStr
  loc_B8A46E: FStStrNoPop var_160
  loc_B8A471: LitStr " AND Month(FechAsie) <= "
  loc_B8A474: ConcatStr
  loc_B8A475: FStStrNoPop var_164
  loc_B8A478: FLdPr Me
  loc_B8A47B: MemLdI2 global_100
  loc_B8A47E: CStrUI1
  loc_B8A480: FStStrNoPop var_168
  loc_B8A483: ConcatStr
  loc_B8A484: FStStrNoPop var_16C
  loc_B8A487: ILdRf var_88
  loc_B8A48A: ConcatStr
  loc_B8A48B: FStStrNoPop var_170
  loc_B8A48E: ILdRf var_8C
  loc_B8A491: ConcatStr
  loc_B8A492: FStStrNoPop var_174
  loc_B8A495: ILdRf var_90
  loc_B8A498: ConcatStr
  loc_B8A499: FStStrNoPop var_178
  loc_B8A49C: ILdRf var_94
  loc_B8A49F: ConcatStr
  loc_B8A4A0: FStStrNoPop var_17C
  loc_B8A4A3: LitStr " GROUP BY cc.CodiCuco, Month(FechAsie), FechAsie, CodiTias"
  loc_B8A4A6: ConcatStr
  loc_B8A4A7: FStStrNoPop var_180
  loc_B8A4AA: LitStr " ORDER BY CodiCuco, CodiTicu, CodiTias;"
  loc_B8A4AD: ConcatStr
  loc_B8A4AE: FStStrNoPop var_184
  loc_B8A4B1: FLdPr Me
  loc_B8A4B4: MemLdRfVar from_stack_1.global_72
  loc_B8A4B7: NewIfNullPr clsasiento
  loc_B8A4BA: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B8A4BF: FFreeStr var_C8 = "": var_14C = "": var_150 = "": var_154 = "": var_15C = "": var_158 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B8A4E2: FFree1Ad var_BC
  loc_B8A4E5: Branch loc_B8A5A1
  loc_B8A4EC: LitStr "SELECT CodiTias, cc.CodiCuco, DetaCuco, Month(FechAsie) MessAsie, FechAsie, Sum(DebeMoas) DebeMoas, Sum(HabeMoas) HabeMoas, (Sum(DebeMoas) - Sum(HabeMoas)) Saldo, cc.CodiTicu, DetaTicu"
  loc_B8A4EF: LitStr " FROM asiento a"
  loc_B8A4F2: ConcatStr
  loc_B8A4F3: FStStrNoPop var_C8
  loc_B8A4F6: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = a.PeriInfo AND mv.CodiAsie = a.CodiAsie"
  loc_B8A4F9: ConcatStr
  loc_B8A4FA: FStStrNoPop var_14C
  loc_B8A4FD: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = a.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B8A500: ConcatStr
  loc_B8A501: FStStrNoPop var_150
  loc_B8A504: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_B8A507: ConcatStr
  loc_B8A508: FStStrNoPop var_154
  loc_B8A50B: LitStr " WHERE a.PeriInfo = "
  loc_B8A50E: ConcatStr
  loc_B8A50F: FStStrNoPop var_15C
  loc_B8A512: FLdRfVar var_158
  loc_B8A515: FLdPr Me
  loc_B8A518: VCallAd Control_ID_cboPeriodo
  loc_B8A51B: FStAdFunc var_BC
  loc_B8A51E: FLdPr var_BC
  loc_B8A521:  = Me.Text
  loc_B8A526: ILdRf var_158
  loc_B8A529: ConcatStr
  loc_B8A52A: FStStrNoPop var_160
  loc_B8A52D: LitStr " AND Month(FechAsie) <= "
  loc_B8A530: ConcatStr
  loc_B8A531: FStStrNoPop var_164
  loc_B8A534: FLdPr Me
  loc_B8A537: MemLdI2 global_100
  loc_B8A53A: CStrUI1
  loc_B8A53C: FStStrNoPop var_168
  loc_B8A53F: ConcatStr
  loc_B8A540: FStStrNoPop var_16C
  loc_B8A543: ILdRf var_88
  loc_B8A546: ConcatStr
  loc_B8A547: FStStrNoPop var_170
  loc_B8A54A: ILdRf var_8C
  loc_B8A54D: ConcatStr
  loc_B8A54E: FStStrNoPop var_174
  loc_B8A551: ILdRf var_90
  loc_B8A554: ConcatStr
  loc_B8A555: FStStrNoPop var_178
  loc_B8A558: ILdRf var_94
  loc_B8A55B: ConcatStr
  loc_B8A55C: FStStrNoPop var_17C
  loc_B8A55F: LitStr " GROUP BY cc.CodiCuco, Month(FechAsie), FechAsie, CodiTias"
  loc_B8A562: ConcatStr
  loc_B8A563: FStStrNoPop var_180
  loc_B8A566: LitStr " ORDER BY CodiTicu, CodiCuco, CodiTias;"
  loc_B8A569: ConcatStr
  loc_B8A56A: FStStrNoPop var_184
  loc_B8A56D: FLdPr Me
  loc_B8A570: MemLdRfVar from_stack_1.global_72
  loc_B8A573: NewIfNullPr clsasiento
  loc_B8A576: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B8A57B: FFreeStr var_C8 = "": var_14C = "": var_150 = "": var_154 = "": var_15C = "": var_158 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B8A59E: FFree1Ad var_BC
  loc_B8A5A7: FLdRfVar var_C4
  loc_B8A5AA: FLdPr Me
  loc_B8A5AD: MemLdRfVar from_stack_1.global_72
  loc_B8A5B0: NewIfNullPr clsasiento
  loc_B8A5B3: from_stack_1 = clsasiento.RecordCount
  loc_B8A5B8: ILdRf var_C4
  loc_B8A5BB: LitI4 0
  loc_B8A5C0: EqI4
  loc_B8A5C1: BranchF loc_B8A5D8
  loc_B8A5C6: LitI4 0
  loc_B8A5CB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B8A5CE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B8A5D5: Branch loc_B8ADE5
  loc_B8A5DC: LitI4 0
  loc_B8A5E1: LitI4 1
  loc_B8A5E6: FLdPr Me
  loc_B8A5E9: MemLdRfVar from_stack_1.global_84
  loc_B8A5EC: Redim
  loc_B8A5F8: LitI4 0
  loc_B8A5FD: LitI4 1
  loc_B8A602: FLdPr Me
  loc_B8A605: MemLdRfVar from_stack_1.global_88
  loc_B8A608: Redim
  loc_B8A614: LitI2_Byte 0
  loc_B8A616: FLdPr Me
  loc_B8A619: MemStI2 global_94
  loc_B8A61E: FLdPr Me
  loc_B8A621: MemLdRfVar from_stack_1.global_72
  loc_B8A624: NewIfNullAd
  loc_B8A627: FStAd var_188 
  loc_B8A62D: FLdPr var_188
  loc_B8A630: Call clsasiento.MoveFirst(from_stack_1v)
  loc_B8A637: Call Proc_292_22_9F0924()
  loc_B8A63E: FLdRfVar var_C4
  loc_B8A641: FLdPr var_188
  loc_B8A644: from_stack_1 = clsasiento.RecordCount
  loc_B8A649: ILdRf var_C4
  loc_B8A64C: LitI4 1
  loc_B8A651: GtI4
  loc_B8A652: BranchF loc_B8A8C8
  loc_B8A657: LitI2_Byte 2
  loc_B8A659: FLdPr Me
  loc_B8A65C: MemLdRfVar from_stack_1.global_108
  loc_B8A65F: FLdRfVar var_C4
  loc_B8A662: FLdPr var_188
  loc_B8A665: from_stack_1 = clsasiento.RecordCount
  loc_B8A66A: ILdRf var_C4
  loc_B8A66D: CI2I4
  loc_B8A66E: ForI2 var_18C
  loc_B8A676: FLdPr var_188
  loc_B8A679: Call clsasiento.MoveSiguiente()
  loc_B8A680: FLdRfVar var_D8
  loc_B8A683: FLdRfVar var_190
  loc_B8A686: LitVarStr var_A8, "CodiTicu"
  loc_B8A68B: PopAdLdVar
  loc_B8A68C: FLdRfVar var_C0
  loc_B8A68F: FLdRfVar var_BC
  loc_B8A692: FLdPr var_188
  loc_B8A695: from_stack_1v = clsasiento.RsFrmGet()
  loc_B8A69A: FLdPr var_BC
  loc_B8A69D:  = Me.Fields
  loc_B8A6A2: FLdPr var_C0
  loc_B8A6A5: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A6AA: FLdPr var_190
  loc_B8A6AD:  = Me.Value
  loc_B8A6B2: LitI4 1
  loc_B8A6B7: FLdRfVar var_D8
  loc_B8A6BA: CStrVarTmp
  loc_B8A6BB: FStStrNoPop var_C8
  loc_B8A6BE: ImpAdCallI2 Left$(, )
  loc_B8A6C3: FStStrNoPop var_14C
  loc_B8A6C6: LitI4 1
  loc_B8A6CB: FLdPr Me
  loc_B8A6CE: MemLdI2 global_94
  loc_B8A6D1: CI4UI1
  loc_B8A6D2: FLdPr Me
  loc_B8A6D5: MemLdStr global_84
  loc_B8A6D8: Ary1LdPr
  loc_B8A6D9: MemLdStr global_0
  loc_B8A6DC: ImpAdCallI2 Left$(, )
  loc_B8A6E1: FStStrNoPop var_150
  loc_B8A6E4: NeStr
  loc_B8A6E6: FFreeStr var_C8 = "": var_14C = ""
  loc_B8A6EF: FFreeAd var_BC = "": var_C0 = ""
  loc_B8A6F8: FFree1Var var_D8 = ""
  loc_B8A6FB: BranchF loc_B8A708
  loc_B8A700: Call Proc_292_22_9F0924()
  loc_B8A705: Branch loc_B8A8B9
  loc_B8A70C: FLdRfVar var_D8
  loc_B8A70F: FLdRfVar var_190
  loc_B8A712: LitVarStr var_A8, "CodiTicu"
  loc_B8A717: PopAdLdVar
  loc_B8A718: FLdRfVar var_C0
  loc_B8A71B: FLdRfVar var_BC
  loc_B8A71E: FLdPr var_188
  loc_B8A721: from_stack_1v = clsasiento.RsFrmGet()
  loc_B8A726: FLdPr var_BC
  loc_B8A729:  = Me.Fields
  loc_B8A72E: FLdPr var_C0
  loc_B8A731: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A736: FLdPr var_190
  loc_B8A739:  = Me.Value
  loc_B8A73E: LitI4 2
  loc_B8A743: FLdRfVar var_D8
  loc_B8A746: CStrVarTmp
  loc_B8A747: FStStrNoPop var_C8
  loc_B8A74A: ImpAdCallI2 Left$(, )
  loc_B8A74F: FStStrNoPop var_14C
  loc_B8A752: LitI4 2
  loc_B8A757: FLdPr Me
  loc_B8A75A: MemLdI2 global_96
  loc_B8A75D: CI4UI1
  loc_B8A75E: FLdPr Me
  loc_B8A761: MemLdI2 global_94
  loc_B8A764: CI4UI1
  loc_B8A765: FLdPr Me
  loc_B8A768: MemLdStr global_84
  loc_B8A76B: Ary1LdPr
  loc_B8A76C: MemLdStr global_8
  loc_B8A76F: Ary1LdPr
  loc_B8A770: MemLdStr global_0
  loc_B8A773: ImpAdCallI2 Left$(, )
  loc_B8A778: FStStrNoPop var_150
  loc_B8A77B: NeStr
  loc_B8A77D: FFreeStr var_C8 = "": var_14C = ""
  loc_B8A786: FFreeAd var_BC = "": var_C0 = ""
  loc_B8A78F: FFree1Var var_D8 = ""
  loc_B8A792: BranchF loc_B8A79F
  loc_B8A797: Call Proc_292_23_A0F40C()
  loc_B8A79C: Branch loc_B8A8B7
  loc_B8A7A3: FLdRfVar var_D8
  loc_B8A7A6: FLdRfVar var_190
  loc_B8A7A9: LitVarStr var_A8, "CodiTicu"
  loc_B8A7AE: PopAdLdVar
  loc_B8A7AF: FLdRfVar var_C0
  loc_B8A7B2: FLdRfVar var_BC
  loc_B8A7B5: FLdPr var_188
  loc_B8A7B8: from_stack_1v = clsasiento.RsFrmGet()
  loc_B8A7BD: FLdPr var_BC
  loc_B8A7C0:  = Me.Fields
  loc_B8A7C5: FLdPr var_C0
  loc_B8A7C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A7CD: FLdPr var_190
  loc_B8A7D0:  = Me.Value
  loc_B8A7D5: FLdRfVar var_D8
  loc_B8A7D8: FLdPr Me
  loc_B8A7DB: MemLdI2 global_98
  loc_B8A7DE: CI4UI1
  loc_B8A7DF: FLdPr Me
  loc_B8A7E2: MemLdI2 global_96
  loc_B8A7E5: CI4UI1
  loc_B8A7E6: FLdPr Me
  loc_B8A7E9: MemLdI2 global_94
  loc_B8A7EC: CI4UI1
  loc_B8A7ED: FLdPr Me
  loc_B8A7F0: MemLdStr global_84
  loc_B8A7F3: Ary1LdPr
  loc_B8A7F4: MemLdStr global_8
  loc_B8A7F7: Ary1LdPr
  loc_B8A7F8: MemLdStr global_8
  loc_B8A7FB: Ary1LdPr
  loc_B8A7FC: MemLdStr global_0
  loc_B8A7FF: CI2Str
  loc_B8A801: CVarI2 var_B8
  loc_B8A804: HardType
  loc_B8A805: NeVarBool
  loc_B8A807: FFreeAd var_BC = "": var_C0 = ""
  loc_B8A810: FFree1Var var_D8 = ""
  loc_B8A813: BranchF loc_B8A820
  loc_B8A818: Call Proc_292_24_A0BA7C()
  loc_B8A81D: Branch loc_B8A8B5
  loc_B8A824: FLdRfVar var_D8
  loc_B8A827: FLdRfVar var_190
  loc_B8A82A: LitVarStr var_A8, "CodiCuco"
  loc_B8A82F: PopAdLdVar
  loc_B8A830: FLdRfVar var_C0
  loc_B8A833: FLdRfVar var_BC
  loc_B8A836: FLdPr var_188
  loc_B8A839: from_stack_1v = clsasiento.RsFrmGet()
  loc_B8A83E: FLdPr var_BC
  loc_B8A841:  = Me.Fields
  loc_B8A846: FLdPr var_C0
  loc_B8A849: from_stack_2 = Me.Item(from_stack_1)
  loc_B8A84E: FLdPr var_190
  loc_B8A851:  = Me.Value
  loc_B8A856: FLdRfVar var_D8
  loc_B8A859: FLdPr Me
  loc_B8A85C: MemLdI2 global_92
  loc_B8A85F: CI4UI1
  loc_B8A860: FLdPr Me
  loc_B8A863: MemLdI2 global_98
  loc_B8A866: CI4UI1
  loc_B8A867: FLdPr Me
  loc_B8A86A: MemLdI2 global_96
  loc_B8A86D: CI4UI1
  loc_B8A86E: FLdPr Me
  loc_B8A871: MemLdI2 global_94
  loc_B8A874: CI4UI1
  loc_B8A875: FLdPr Me
  loc_B8A878: MemLdStr global_84
  loc_B8A87B: Ary1LdPr
  loc_B8A87C: MemLdStr global_8
  loc_B8A87F: Ary1LdPr
  loc_B8A880: MemLdStr global_8
  loc_B8A883: Ary1LdPr
  loc_B8A884: MemLdStr global_8
  loc_B8A887: Ary1LdPr
  loc_B8A888: MemLdStr global_0
  loc_B8A88B: CVarStr var_B8
  loc_B8A88E: HardType
  loc_B8A88F: NeVarBool
  loc_B8A891: FFreeAd var_BC = "": var_C0 = ""
  loc_B8A89A: FFree1Var var_D8 = ""
  loc_B8A89D: BranchF loc_B8A8AA
  loc_B8A8A2: Call Proc_292_25_A1A14C()
  loc_B8A8A7: Branch loc_B8A8B3
  loc_B8A8AE: Call Proc_292_26_B353AC()
  loc_B8A8BD: FLdPr Me
  loc_B8A8C0: MemLdRfVar from_stack_1.global_108
  loc_B8A8C3: NextI2 var_18C, loc_B8A674
  loc_B8A8CC: LitNothing
  loc_B8A8CE: FStAd var_188 
  loc_B8A8D4: LitI2_Byte 1
  loc_B8A8D6: FLdPr Me
  loc_B8A8D9: MemLdRfVar from_stack_1.global_94
  loc_B8A8DC: FLdPr Me
  loc_B8A8DF: MemLdStr global_84
  loc_B8A8E2: LitI2_Byte 1
  loc_B8A8E4: FnUBound
  loc_B8A8E6: CI2I4
  loc_B8A8E7: ForI2 var_194
  loc_B8A8EF: LitI2_Byte 1
  loc_B8A8F1: FLdPr Me
  loc_B8A8F4: MemLdRfVar from_stack_1.global_96
  loc_B8A8F7: FLdPr Me
  loc_B8A8FA: MemLdI2 global_94
  loc_B8A8FD: CI4UI1
  loc_B8A8FE: FLdPr Me
  loc_B8A901: MemLdStr global_84
  loc_B8A904: Ary1LdPr
  loc_B8A905: MemLdStr global_8
  loc_B8A908: LitI2_Byte 1
  loc_B8A90A: FnUBound
  loc_B8A90C: CI2I4
  loc_B8A90D: ForI2 var_198
  loc_B8A915: LitI2_Byte 1
  loc_B8A917: FLdPr Me
  loc_B8A91A: MemLdRfVar from_stack_1.global_98
  loc_B8A91D: FLdPr Me
  loc_B8A920: MemLdI2 global_96
  loc_B8A923: CI4UI1
  loc_B8A924: FLdPr Me
  loc_B8A927: MemLdI2 global_94
  loc_B8A92A: CI4UI1
  loc_B8A92B: FLdPr Me
  loc_B8A92E: MemLdStr global_84
  loc_B8A931: Ary1LdPr
  loc_B8A932: MemLdStr global_8
  loc_B8A935: Ary1LdPr
  loc_B8A936: MemLdStr global_8
  loc_B8A939: LitI2_Byte 1
  loc_B8A93B: FnUBound
  loc_B8A93D: CI2I4
  loc_B8A93E: ForI2 var_19C
  loc_B8A946: FLdPr Me
  loc_B8A949: MemLdI2 global_96
  loc_B8A94C: CI4UI1
  loc_B8A94D: FLdPr Me
  loc_B8A950: MemLdI2 global_94
  loc_B8A953: CI4UI1
  loc_B8A954: FLdPr Me
  loc_B8A957: MemLdStr global_84
  loc_B8A95A: AryLock
  loc_B8A95D: Ary1LdPr
  loc_B8A95E: MemLdStr global_8
  loc_B8A961: AryLock
  loc_B8A964: Ary1LdPr
  loc_B8A965: MemLdRfVar from_stack_1.global_12
  loc_B8A968: FLdPr Me
  loc_B8A96B: MemLdI2 global_98
  loc_B8A96E: CI4UI1
  loc_B8A96F: FLdPr Me
  loc_B8A972: MemLdI2 global_96
  loc_B8A975: CI4UI1
  loc_B8A976: FLdPr Me
  loc_B8A979: MemLdI2 global_94
  loc_B8A97C: CI4UI1
  loc_B8A97D: FLdPr Me
  loc_B8A980: MemLdStr global_84
  loc_B8A983: AryLock
  loc_B8A986: Ary1LdPr
  loc_B8A987: MemLdStr global_8
  loc_B8A98A: AryLock
  loc_B8A98D: Ary1LdPr
  loc_B8A98E: MemLdStr global_8
  loc_B8A991: AryLock
  loc_B8A994: Ary1LdPr
  loc_B8A995: MemLdRfVar from_stack_1.global_12
  loc_B8A998: Call Proc_292_21_A27110()
  loc_B8A99D: AryUnlock
  loc_B8A9A0: AryUnlock
  loc_B8A9A3: AryUnlock
  loc_B8A9A6: AryUnlock
  loc_B8A9A9: AryUnlock
  loc_B8A9AE: LitI2_Byte 1
  loc_B8A9B0: FLdPr Me
  loc_B8A9B3: MemLdRfVar from_stack_1.global_92
  loc_B8A9B6: FLdPr Me
  loc_B8A9B9: MemLdI2 global_98
  loc_B8A9BC: CI4UI1
  loc_B8A9BD: FLdPr Me
  loc_B8A9C0: MemLdI2 global_96
  loc_B8A9C3: CI4UI1
  loc_B8A9C4: FLdPr Me
  loc_B8A9C7: MemLdI2 global_94
  loc_B8A9CA: CI4UI1
  loc_B8A9CB: FLdPr Me
  loc_B8A9CE: MemLdStr global_84
  loc_B8A9D1: Ary1LdPr
  loc_B8A9D2: MemLdStr global_8
  loc_B8A9D5: Ary1LdPr
  loc_B8A9D6: MemLdStr global_8
  loc_B8A9D9: Ary1LdPr
  loc_B8A9DA: MemLdStr global_8
  loc_B8A9DD: LitI2_Byte 1
  loc_B8A9DF: FnUBound
  loc_B8A9E1: CI2I4
  loc_B8A9E2: ForI2 var_1B4
  loc_B8A9EA: FLdPr Me
  loc_B8A9ED: MemLdI2 global_92
  loc_B8A9F0: CI4UI1
  loc_B8A9F1: FLdPr Me
  loc_B8A9F4: MemLdI2 global_98
  loc_B8A9F7: CI4UI1
  loc_B8A9F8: FLdPr Me
  loc_B8A9FB: MemLdI2 global_96
  loc_B8A9FE: CI4UI1
  loc_B8A9FF: FLdPr Me
  loc_B8AA02: MemLdI2 global_94
  loc_B8AA05: CI4UI1
  loc_B8AA06: FLdPr Me
  loc_B8AA09: MemLdStr global_84
  loc_B8AA0C: AryLock
  loc_B8AA0F: Ary1LdPr
  loc_B8AA10: MemLdStr global_8
  loc_B8AA13: AryLock
  loc_B8AA16: Ary1LdPr
  loc_B8AA17: MemLdStr global_8
  loc_B8AA1A: AryLock
  loc_B8AA1D: Ary1LdPr
  loc_B8AA1E: MemLdStr global_8
  loc_B8AA21: AryLock
  loc_B8AA24: Ary1LdRf
  loc_B8AA25: FStR4 var_1C8
  loc_B8AA2A: FMemLdR4 var_1C8(16)
  loc_B8AA2F: LitStr vbNullString
  loc_B8AA32: NeStr
  loc_B8AA34: BranchF loc_B8AA6B
  loc_B8AA39: LitI2_Byte 0
  loc_B8AA3B: LitI4 1
  loc_B8AA40: FLdPr Me
  loc_B8AA43: MemLdStr global_88
  loc_B8AA46: AryLock
  loc_B8AA49: Ary1LdPr
  loc_B8AA4A: MemLdRfVar from_stack_1.global_16
  loc_B8AA4D: CVarRef
  loc_B8AA52: LitI2_Byte &HFF
  loc_B8AA54: FMemLdR4 var_1C8(16)
  loc_B8AA59: CVarStr var_A8
  loc_B8AA5C: PopAdLdVar
  loc_B8AA5D: FLdPr Me
  loc_B8AA60: MemLdRfVar from_stack_1.global_112
  loc_B8AA63: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B8AA68: AryUnlock
  loc_B8AA6D: FMemLdR4 var_1C8(20)
  loc_B8AA72: LitStr vbNullString
  loc_B8AA75: NeStr
  loc_B8AA77: BranchF loc_B8AAAE
  loc_B8AA7C: LitI2_Byte 0
  loc_B8AA7E: LitI4 1
  loc_B8AA83: FLdPr Me
  loc_B8AA86: MemLdStr global_88
  loc_B8AA89: AryLock
  loc_B8AA8C: Ary1LdPr
  loc_B8AA8D: MemLdRfVar from_stack_1.global_20
  loc_B8AA90: CVarRef
  loc_B8AA95: LitI2_Byte &HFF
  loc_B8AA97: FMemLdR4 var_1C8(20)
  loc_B8AA9C: CVarStr var_A8
  loc_B8AA9F: PopAdLdVar
  loc_B8AAA0: FLdPr Me
  loc_B8AAA3: MemLdRfVar from_stack_1.global_112
  loc_B8AAA6: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B8AAAB: AryUnlock
  loc_B8AAB0: FMemLdR4 var_1C8(24)
  loc_B8AAB5: LitStr vbNullString
  loc_B8AAB8: NeStr
  loc_B8AABA: BranchF loc_B8AAF1
  loc_B8AABF: LitI2_Byte 0
  loc_B8AAC1: LitI4 1
  loc_B8AAC6: FLdPr Me
  loc_B8AAC9: MemLdStr global_88
  loc_B8AACC: AryLock
  loc_B8AACF: Ary1LdPr
  loc_B8AAD0: MemLdRfVar from_stack_1.global_24
  loc_B8AAD3: CVarRef
  loc_B8AAD8: LitI2_Byte &HFF
  loc_B8AADA: FMemLdR4 var_1C8(24)
  loc_B8AADF: CVarStr var_A8
  loc_B8AAE2: PopAdLdVar
  loc_B8AAE3: FLdPr Me
  loc_B8AAE6: MemLdRfVar from_stack_1.global_112
  loc_B8AAE9: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B8AAEE: AryUnlock
  loc_B8AAF3: FMemLdR4 var_1C8(28)
  loc_B8AAF8: LitStr vbNullString
  loc_B8AAFB: NeStr
  loc_B8AAFD: BranchF loc_B8AB34
  loc_B8AB02: LitI2_Byte 0
  loc_B8AB04: LitI4 1
  loc_B8AB09: FLdPr Me
  loc_B8AB0C: MemLdStr global_88
  loc_B8AB0F: AryLock
  loc_B8AB12: Ary1LdPr
  loc_B8AB13: MemLdRfVar from_stack_1.global_28
  loc_B8AB16: CVarRef
  loc_B8AB1B: LitI2_Byte &HFF
  loc_B8AB1D: FMemLdR4 var_1C8(28)
  loc_B8AB22: CVarStr var_A8
  loc_B8AB25: PopAdLdVar
  loc_B8AB26: FLdPr Me
  loc_B8AB29: MemLdRfVar from_stack_1.global_112
  loc_B8AB2C: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B8AB31: AryUnlock
  loc_B8AB36: FMemLdR4 var_1C8(48)
  loc_B8AB3B: LitStr vbNullString
  loc_B8AB3E: NeStr
  loc_B8AB40: BranchF loc_B8AB77
  loc_B8AB45: LitI2_Byte 0
  loc_B8AB47: LitI4 1
  loc_B8AB4C: FLdPr Me
  loc_B8AB4F: MemLdStr global_88
  loc_B8AB52: AryLock
  loc_B8AB55: Ary1LdPr
  loc_B8AB56: MemLdRfVar from_stack_1.global_48
  loc_B8AB59: CVarRef
  loc_B8AB5E: LitI2_Byte &HFF
  loc_B8AB60: FMemLdR4 var_1C8(48)
  loc_B8AB65: CVarStr var_A8
  loc_B8AB68: PopAdLdVar
  loc_B8AB69: FLdPr Me
  loc_B8AB6C: MemLdRfVar from_stack_1.global_112
  loc_B8AB6F: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B8AB74: AryUnlock
  loc_B8AB79: FMemLdR4 var_1C8(52)
  loc_B8AB7E: LitStr vbNullString
  loc_B8AB81: NeStr
  loc_B8AB83: BranchF loc_B8ABBA
  loc_B8AB88: LitI2_Byte 0
  loc_B8AB8A: LitI4 1
  loc_B8AB8F: FLdPr Me
  loc_B8AB92: MemLdStr global_88
  loc_B8AB95: AryLock
  loc_B8AB98: Ary1LdPr
  loc_B8AB99: MemLdRfVar from_stack_1.htmFile
  loc_B8AB9C: CVarRef
  loc_B8ABA1: LitI2_Byte &HFF
  loc_B8ABA3: FMemLdR4 var_1C8(52)
  loc_B8ABA8: CVarStr var_A8
  loc_B8ABAB: PopAdLdVar
  loc_B8ABAC: FLdPr Me
  loc_B8ABAF: MemLdRfVar from_stack_1.global_112
  loc_B8ABB2: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B8ABB7: AryUnlock
  loc_B8ABBC: LitI4 0
  loc_B8ABC1: FStR4 var_1C8
  loc_B8ABC4: AryUnlock
  loc_B8ABC7: AryUnlock
  loc_B8ABCA: AryUnlock
  loc_B8ABCD: AryUnlock
  loc_B8ABD2: FLdPr Me
  loc_B8ABD5: MemLdRfVar from_stack_1.global_92
  loc_B8ABD8: NextI2 var_1B4, loc_B8A9E8
  loc_B8ABDF: FLdPr Me
  loc_B8ABE2: MemLdRfVar from_stack_1.global_98
  loc_B8ABE5: NextI2 var_19C, loc_B8A944
  loc_B8ABEC: FLdPr Me
  loc_B8ABEF: MemLdI2 global_94
  loc_B8ABF2: CI4UI1
  loc_B8ABF3: FLdPr Me
  loc_B8ABF6: MemLdStr global_84
  loc_B8ABF9: AryLock
  loc_B8ABFC: Ary1LdPr
  loc_B8ABFD: MemLdRfVar from_stack_1.global_12
  loc_B8AC00: FLdPr Me
  loc_B8AC03: MemLdI2 global_96
  loc_B8AC06: CI4UI1
  loc_B8AC07: FLdPr Me
  loc_B8AC0A: MemLdI2 global_94
  loc_B8AC0D: CI4UI1
  loc_B8AC0E: FLdPr Me
  loc_B8AC11: MemLdStr global_84
  loc_B8AC14: AryLock
  loc_B8AC17: Ary1LdPr
  loc_B8AC18: MemLdStr global_8
  loc_B8AC1B: AryLock
  loc_B8AC1E: Ary1LdPr
  loc_B8AC1F: MemLdRfVar from_stack_1.global_12
  loc_B8AC22: Call Proc_292_21_A27110()
  loc_B8AC27: AryUnlock
  loc_B8AC2A: AryUnlock
  loc_B8AC2D: AryUnlock
  loc_B8AC32: FLdPr Me
  loc_B8AC35: MemLdI2 global_96
  loc_B8AC38: CI4UI1
  loc_B8AC39: FLdPr Me
  loc_B8AC3C: MemLdI2 global_94
  loc_B8AC3F: CI4UI1
  loc_B8AC40: FLdPr Me
  loc_B8AC43: MemLdStr global_84
  loc_B8AC46: AryLock
  loc_B8AC49: Ary1LdPr
  loc_B8AC4A: MemLdStr global_8
  loc_B8AC4D: AryLock
  loc_B8AC50: Ary1LdPr
  loc_B8AC51: MemLdRfVar from_stack_1.global_12
  loc_B8AC54: FStR4 var_1D4
  loc_B8AC59: FMemLdRf unk_46F5D1
  loc_B8AC5E: FMemLdRf unk_46F5D1
  loc_B8AC63: FMemLdR4 var_1D4(12)
  loc_B8AC68: FMemLdR4 var_1D4(8)
  loc_B8AC6D: Call Proc_292_28_9E440C()
  loc_B8AC74: FMemLdRf unk_46F5D1
  loc_B8AC79: FMemLdRf unk_46F5D1
  loc_B8AC7E: FMemLdR4 var_1D4(36)
  loc_B8AC83: FMemLdR4 var_1D4(32)
  loc_B8AC88: Call Proc_292_28_9E440C()
  loc_B8AC8F: FLdRfVar var_1DC
  loc_B8AC92: FMemLdR4 var_1D4(32)
  loc_B8AC97: FMemLdR4 var_1D4(8)
  loc_B8AC9C: Call Proc_292_27_9A5BE0()
  loc_B8ACA1: FLdRfVar var_1E4
  loc_B8ACA4: FMemLdR4 var_1D4(36)
  loc_B8ACA9: FMemLdR4 var_1D4(12)
  loc_B8ACAE: Call Proc_292_27_9A5BE0()
  loc_B8ACB3: FMemLdRf unk_46F5D1
  loc_B8ACB8: FMemLdRf unk_46F5D1
  loc_B8ACBD: FLdFPR8 var_1E4
  loc_B8ACC0: CStrR8
  loc_B8ACC2: FStStrNoPop var_14C
  loc_B8ACC5: FLdFPR8 var_1DC
  loc_B8ACC8: CStrR8
  loc_B8ACCA: FStStrNoPop var_C8
  loc_B8ACCD: Call Proc_292_28_9E440C()
  loc_B8ACD2: FFreeStr var_C8 = ""
  loc_B8ACDB: LitI4 0
  loc_B8ACE0: FStR4 var_1D4
  loc_B8ACE3: AryUnlock
  loc_B8ACE6: AryUnlock
  loc_B8ACEB: FLdPr Me
  loc_B8ACEE: MemLdRfVar from_stack_1.global_96
  loc_B8ACF1: NextI2 var_198, loc_B8A913
  loc_B8ACF8: LitI4 1
  loc_B8ACFD: FLdPr Me
  loc_B8AD00: MemLdStr global_88
  loc_B8AD03: AryLock
  loc_B8AD06: Ary1LdRf
  loc_B8AD07: FLdPr Me
  loc_B8AD0A: MemLdI2 global_94
  loc_B8AD0D: CI4UI1
  loc_B8AD0E: FLdPr Me
  loc_B8AD11: MemLdStr global_84
  loc_B8AD14: AryLock
  loc_B8AD17: Ary1LdPr
  loc_B8AD18: MemLdRfVar from_stack_1.global_12
  loc_B8AD1B: Call Proc_292_21_A27110()
  loc_B8AD20: AryUnlock
  loc_B8AD23: AryUnlock
  loc_B8AD28: FLdPr Me
  loc_B8AD2B: MemLdI2 global_94
  loc_B8AD2E: CI4UI1
  loc_B8AD2F: FLdPr Me
  loc_B8AD32: MemLdStr global_84
  loc_B8AD35: AryLock
  loc_B8AD38: Ary1LdPr
  loc_B8AD39: MemLdRfVar from_stack_1.global_12
  loc_B8AD3C: FStR4 var_1EC
  loc_B8AD41: FMemLdRf unk_46F5B9
  loc_B8AD46: FMemLdRf unk_46F5B9
  loc_B8AD4B: FMemLdR4 var_1EC(12)
  loc_B8AD50: FMemLdR4 var_1EC(8)
  loc_B8AD55: Call Proc_292_28_9E440C()
  loc_B8AD5C: FMemLdRf unk_46F5B9
  loc_B8AD61: FMemLdRf unk_46F5B9
  loc_B8AD66: FMemLdR4 var_1EC(36)
  loc_B8AD6B: FMemLdR4 var_1EC(32)
  loc_B8AD70: Call Proc_292_28_9E440C()
  loc_B8AD77: FLdRfVar var_1DC
  loc_B8AD7A: FMemLdR4 var_1EC(32)
  loc_B8AD7F: FMemLdR4 var_1EC(8)
  loc_B8AD84: Call Proc_292_27_9A5BE0()
  loc_B8AD89: FLdRfVar var_1E4
  loc_B8AD8C: FMemLdR4 var_1EC(36)
  loc_B8AD91: FMemLdR4 var_1EC(12)
  loc_B8AD96: Call Proc_292_27_9A5BE0()
  loc_B8AD9B: FMemLdRf unk_46F5B9
  loc_B8ADA0: FMemLdRf unk_46F5B9
  loc_B8ADA5: FLdFPR8 var_1E4
  loc_B8ADA8: CStrR8
  loc_B8ADAA: FStStrNoPop var_14C
  loc_B8ADAD: FLdFPR8 var_1DC
  loc_B8ADB0: CStrR8
  loc_B8ADB2: FStStrNoPop var_C8
  loc_B8ADB5: Call Proc_292_28_9E440C()
  loc_B8ADBA: FFreeStr var_C8 = ""
  loc_B8ADC3: LitI4 0
  loc_B8ADC8: FStR4 var_1EC
  loc_B8ADCB: AryUnlock
  loc_B8ADD0: FLdPr Me
  loc_B8ADD3: MemLdRfVar from_stack_1.global_94
  loc_B8ADD6: NextI2 var_194, loc_B8A8ED
  loc_B8ADDD: LitI2_Byte &HFF
  loc_B8ADDF: FLdPr Me
  loc_B8ADE2: MemStI2 bGenerado
  loc_B8ADE7: LitI4 0
  loc_B8ADEC: CI2I4
  loc_B8ADED: FLdPr Me
  loc_B8ADF0: Me.MousePointer = from_stack_1
  loc_B8ADF7: LitVarStr var_A8, vbNullString
  loc_B8ADFC: PopAdLdVar
  loc_B8ADFD: FLdPr Me
  loc_B8AE00: VCallAd Control_ID_statusBar
  loc_B8AE03: FStAdFunc var_BC
  loc_B8AE06: FLdPr var_BC
  loc_B8AE09: LateIdSt
  loc_B8AE0E: FFree1Ad var_BC
  loc_B8AE13: ExitProcHresult
  loc_B8AE16: LitI4 0
  loc_B8AE1B: LitStr "Error "
  loc_B8AE1E: FLdRfVar var_C4
  loc_B8AE21: ImpAdCallI2 Err 'rtcErrObj
  loc_B8AE26: FStAdFunc var_BC
  loc_B8AE29: FLdPr var_BC
  loc_B8AE2C:  = Err.Number
  loc_B8AE31: ILdRf var_C4
  loc_B8AE34: CStrI4
  loc_B8AE36: FStStrNoPop var_C8
  loc_B8AE39: ConcatStr
  loc_B8AE3A: FStStrNoPop var_14C
  loc_B8AE3D: LitStr ": "
  loc_B8AE40: ConcatStr
  loc_B8AE41: FStStrNoPop var_154
  loc_B8AE44: FLdRfVar var_150
  loc_B8AE47: ImpAdCallI2 Err 'rtcErrObj
  loc_B8AE4C: FStAdFunc var_C0
  loc_B8AE4F: FLdPr var_C0
  loc_B8AE52:  = Err.Description
  loc_B8AE57: ILdRf var_150
  loc_B8AE5A: ConcatStr
  loc_B8AE5B: FStStrNoPop var_158
  loc_B8AE5E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B8AE63: FFreeStr var_C8 = "": var_14C = "": var_154 = "": var_150 = ""
  loc_B8AE70: FFreeAd var_BC = ""
  loc_B8AE79: Resume
  loc_B8AE7F: ExitProcHresult
  loc_B8AE82: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B79AC8
  'Data Table: 46F7A4
  loc_B78E04: FLdRfVar var_88
  loc_B78E07: LitI2_Byte 0
  loc_B78E09: LitI2_Byte &HFF
  loc_B78E0B: ImpAdLdI4 MemVar_C3D83C
  loc_B78E0E: FLdPr Me
  loc_B78E11: MemLdRfVar from_stack_1.global_80
  loc_B78E14: NewIfNullPr IFileSystem3
  loc_B78E17: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B78E1C: ILdRf var_88
  loc_B78E1F: FLdPr Me
  loc_B78E22: MemStVarAd
  loc_B78E26: FFree1Ad var_88
  loc_B78E29: Call Proc_292_29_AB9924()
  loc_B78E2E: LitI2_Byte 1
  loc_B78E30: FLdPr Me
  loc_B78E33: MemLdRfVar from_stack_1.global_94
  loc_B78E36: FLdPr Me
  loc_B78E39: MemLdStr global_84
  loc_B78E3C: LitI2_Byte 1
  loc_B78E3E: FnUBound
  loc_B78E40: CI2I4
  loc_B78E41: ForI2 var_8C
  loc_B78E47: LitVarStr var_9C, "  <tr align=""left"" class=""Totales"">"
  loc_B78E4C: PopAdLdVar
  loc_B78E4D: FLdPr Me
  loc_B78E50: MemLdRfVar from_stack_1.htmFile
  loc_B78E53: LdPrVar
  loc_B78E55: LateMemCall
  loc_B78E5B: FLdPr Me
  loc_B78E5E: MemLdI2 global_94
  loc_B78E61: CI4UI1
  loc_B78E62: FLdPr Me
  loc_B78E65: MemLdStr global_84
  loc_B78E68: AryLock
  loc_B78E6B: Ary1LdRf
  loc_B78E6C: FStR4 var_B4
  loc_B78E6F: LitStr "<td class=""Encabezado"" align=""left"">"
  loc_B78E72: FMemLdR4 var_B4(4)
  loc_B78E77: ConcatStr
  loc_B78E78: FStStrNoPop var_B8
  loc_B78E7B: LitStr "</td>"
  loc_B78E7E: ConcatStr
  loc_B78E7F: CVarStr var_C8
  loc_B78E82: PopAdLdVar
  loc_B78E83: FLdPr Me
  loc_B78E86: MemLdRfVar from_stack_1.htmFile
  loc_B78E89: LdPrVar
  loc_B78E8B: LateMemCall
  loc_B78E91: FFree1Str var_B8
  loc_B78E94: FFree1Var var_C8 = ""
  loc_B78E97: LitI4 0
  loc_B78E9C: LitI4 0
  loc_B78EA1: LitI2_Byte 0
  loc_B78EA3: LitStr "right"
  loc_B78EA6: FMemLdR4 var_B4(20)
  loc_B78EAB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B78EB0: CVarStr var_C8
  loc_B78EB3: PopAdLdVar
  loc_B78EB4: FLdPr Me
  loc_B78EB7: MemLdRfVar from_stack_1.htmFile
  loc_B78EBA: LdPrVar
  loc_B78EBC: LateMemCall
  loc_B78EC2: FFree1Var var_C8 = ""
  loc_B78EC5: LitI4 0
  loc_B78ECA: LitI4 0
  loc_B78ECF: LitI2_Byte 0
  loc_B78ED1: LitStr "right"
  loc_B78ED4: FMemLdR4 var_B4(24)
  loc_B78ED9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B78EDE: CVarStr var_C8
  loc_B78EE1: PopAdLdVar
  loc_B78EE2: FLdPr Me
  loc_B78EE5: MemLdRfVar from_stack_1.htmFile
  loc_B78EE8: LdPrVar
  loc_B78EEA: LateMemCall
  loc_B78EF0: FFree1Var var_C8 = ""
  loc_B78EF3: LitI4 0
  loc_B78EF8: LitI4 0
  loc_B78EFD: LitI2_Byte 0
  loc_B78EFF: LitStr "right"
  loc_B78F02: FMemLdR4 var_B4(28)
  loc_B78F07: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B78F0C: CVarStr var_C8
  loc_B78F0F: PopAdLdVar
  loc_B78F10: FLdPr Me
  loc_B78F13: MemLdRfVar from_stack_1.htmFile
  loc_B78F16: LdPrVar
  loc_B78F18: LateMemCall
  loc_B78F1E: FFree1Var var_C8 = ""
  loc_B78F21: LitI4 0
  loc_B78F26: LitI4 0
  loc_B78F2B: LitI2_Byte 0
  loc_B78F2D: LitStr "right"
  loc_B78F30: FMemLdR4 var_B4(32)
  loc_B78F35: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B78F3A: CVarStr var_C8
  loc_B78F3D: PopAdLdVar
  loc_B78F3E: FLdPr Me
  loc_B78F41: MemLdRfVar from_stack_1.htmFile
  loc_B78F44: LdPrVar
  loc_B78F46: LateMemCall
  loc_B78F4C: FFree1Var var_C8 = ""
  loc_B78F4F: LitI4 0
  loc_B78F54: LitI4 0
  loc_B78F59: LitI2_Byte 0
  loc_B78F5B: LitStr "right"
  loc_B78F5E: FMemLdR4 var_B4(44)
  loc_B78F63: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B78F68: CVarStr var_C8
  loc_B78F6B: PopAdLdVar
  loc_B78F6C: FLdPr Me
  loc_B78F6F: MemLdRfVar from_stack_1.htmFile
  loc_B78F72: LdPrVar
  loc_B78F74: LateMemCall
  loc_B78F7A: FFree1Var var_C8 = ""
  loc_B78F7D: LitI4 0
  loc_B78F82: LitI4 0
  loc_B78F87: LitI2_Byte 0
  loc_B78F89: LitStr "right"
  loc_B78F8C: FMemLdR4 var_B4(48)
  loc_B78F91: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B78F96: CVarStr var_C8
  loc_B78F99: PopAdLdVar
  loc_B78F9A: FLdPr Me
  loc_B78F9D: MemLdRfVar from_stack_1.htmFile
  loc_B78FA0: LdPrVar
  loc_B78FA2: LateMemCall
  loc_B78FA8: FFree1Var var_C8 = ""
  loc_B78FAB: LitI4 0
  loc_B78FB0: LitI4 0
  loc_B78FB5: LitI2_Byte 0
  loc_B78FB7: LitStr "right"
  loc_B78FBA: FMemLdR4 var_B4(36)
  loc_B78FBF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B78FC4: CVarStr var_C8
  loc_B78FC7: PopAdLdVar
  loc_B78FC8: FLdPr Me
  loc_B78FCB: MemLdRfVar from_stack_1.htmFile
  loc_B78FCE: LdPrVar
  loc_B78FD0: LateMemCall
  loc_B78FD6: FFree1Var var_C8 = ""
  loc_B78FD9: LitI4 0
  loc_B78FDE: LitI4 0
  loc_B78FE3: LitI2_Byte 0
  loc_B78FE5: LitStr "right"
  loc_B78FE8: FMemLdR4 var_B4(40)
  loc_B78FED: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B78FF2: CVarStr var_C8
  loc_B78FF5: PopAdLdVar
  loc_B78FF6: FLdPr Me
  loc_B78FF9: MemLdRfVar from_stack_1.htmFile
  loc_B78FFC: LdPrVar
  loc_B78FFE: LateMemCall
  loc_B79004: FFree1Var var_C8 = ""
  loc_B79007: LitI4 0
  loc_B7900C: LitI4 0
  loc_B79011: LitI2_Byte 0
  loc_B79013: LitStr "right"
  loc_B79016: FMemLdR4 var_B4(60)
  loc_B7901B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79020: CVarStr var_C8
  loc_B79023: PopAdLdVar
  loc_B79024: FLdPr Me
  loc_B79027: MemLdRfVar from_stack_1.htmFile
  loc_B7902A: LdPrVar
  loc_B7902C: LateMemCall
  loc_B79032: FFree1Var var_C8 = ""
  loc_B79035: LitI4 0
  loc_B7903A: LitI4 0
  loc_B7903F: LitI2_Byte 0
  loc_B79041: LitStr "right"
  loc_B79044: FMemLdR4 var_B4(64)
  loc_B79049: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7904E: CVarStr var_C8
  loc_B79051: PopAdLdVar
  loc_B79052: FLdPr Me
  loc_B79055: MemLdRfVar from_stack_1.htmFile
  loc_B79058: LdPrVar
  loc_B7905A: LateMemCall
  loc_B79060: FFree1Var var_C8 = ""
  loc_B79063: LitI4 0
  loc_B79068: FStR4 var_B4
  loc_B7906B: AryUnlock
  loc_B7906E: LitVarStr var_9C, "  </tr>"
  loc_B79073: PopAdLdVar
  loc_B79074: FLdPr Me
  loc_B79077: MemLdRfVar from_stack_1.htmFile
  loc_B7907A: LdPrVar
  loc_B7907C: LateMemCall
  loc_B79082: LitI2_Byte 1
  loc_B79084: FLdPr Me
  loc_B79087: MemLdRfVar from_stack_1.global_96
  loc_B7908A: FLdPr Me
  loc_B7908D: MemLdI2 global_94
  loc_B79090: CI4UI1
  loc_B79091: FLdPr Me
  loc_B79094: MemLdStr global_84
  loc_B79097: Ary1LdPr
  loc_B79098: MemLdStr global_8
  loc_B7909B: LitI2_Byte 1
  loc_B7909D: FnUBound
  loc_B7909F: CI2I4
  loc_B790A0: ForI2 var_CC
  loc_B790A6: LitVarStr var_9C, "  <tr align=""left"" class=""Totales"">"
  loc_B790AB: PopAdLdVar
  loc_B790AC: FLdPr Me
  loc_B790AF: MemLdRfVar from_stack_1.htmFile
  loc_B790B2: LdPrVar
  loc_B790B4: LateMemCall
  loc_B790BA: FLdPr Me
  loc_B790BD: MemLdI2 global_96
  loc_B790C0: CI4UI1
  loc_B790C1: FLdPr Me
  loc_B790C4: MemLdI2 global_94
  loc_B790C7: CI4UI1
  loc_B790C8: FLdPr Me
  loc_B790CB: MemLdStr global_84
  loc_B790CE: AryLock
  loc_B790D1: Ary1LdPr
  loc_B790D2: MemLdStr global_8
  loc_B790D5: AryLock
  loc_B790D8: Ary1LdRf
  loc_B790D9: FStR4 var_D8
  loc_B790DC: LitStr "     <td class=""Encabezado"" align=""center"">"
  loc_B790DF: FMemLdR4 var_D8(4)
  loc_B790E4: ConcatStr
  loc_B790E5: FStStrNoPop var_B8
  loc_B790E8: LitStr "</td>"
  loc_B790EB: ConcatStr
  loc_B790EC: CVarStr var_C8
  loc_B790EF: PopAdLdVar
  loc_B790F0: FLdPr Me
  loc_B790F3: MemLdRfVar from_stack_1.htmFile
  loc_B790F6: LdPrVar
  loc_B790F8: LateMemCall
  loc_B790FE: FFree1Str var_B8
  loc_B79101: FFree1Var var_C8 = ""
  loc_B79104: LitI4 0
  loc_B79109: LitI4 0
  loc_B7910E: LitI2_Byte 0
  loc_B79110: LitStr "right"
  loc_B79113: FMemLdR4 var_D8(20)
  loc_B79118: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7911D: CVarStr var_C8
  loc_B79120: PopAdLdVar
  loc_B79121: FLdPr Me
  loc_B79124: MemLdRfVar from_stack_1.htmFile
  loc_B79127: LdPrVar
  loc_B79129: LateMemCall
  loc_B7912F: FFree1Var var_C8 = ""
  loc_B79132: LitI4 0
  loc_B79137: LitI4 0
  loc_B7913C: LitI2_Byte 0
  loc_B7913E: LitStr "right"
  loc_B79141: FMemLdR4 var_D8(24)
  loc_B79146: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7914B: CVarStr var_C8
  loc_B7914E: PopAdLdVar
  loc_B7914F: FLdPr Me
  loc_B79152: MemLdRfVar from_stack_1.htmFile
  loc_B79155: LdPrVar
  loc_B79157: LateMemCall
  loc_B7915D: FFree1Var var_C8 = ""
  loc_B79160: LitI4 0
  loc_B79165: LitI4 0
  loc_B7916A: LitI2_Byte 0
  loc_B7916C: LitStr "right"
  loc_B7916F: FMemLdR4 var_D8(28)
  loc_B79174: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79179: CVarStr var_C8
  loc_B7917C: PopAdLdVar
  loc_B7917D: FLdPr Me
  loc_B79180: MemLdRfVar from_stack_1.htmFile
  loc_B79183: LdPrVar
  loc_B79185: LateMemCall
  loc_B7918B: FFree1Var var_C8 = ""
  loc_B7918E: LitI4 0
  loc_B79193: LitI4 0
  loc_B79198: LitI2_Byte 0
  loc_B7919A: LitStr "right"
  loc_B7919D: FMemLdR4 var_D8(32)
  loc_B791A2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B791A7: CVarStr var_C8
  loc_B791AA: PopAdLdVar
  loc_B791AB: FLdPr Me
  loc_B791AE: MemLdRfVar from_stack_1.htmFile
  loc_B791B1: LdPrVar
  loc_B791B3: LateMemCall
  loc_B791B9: FFree1Var var_C8 = ""
  loc_B791BC: LitI4 0
  loc_B791C1: LitI4 0
  loc_B791C6: LitI2_Byte 0
  loc_B791C8: LitStr "right"
  loc_B791CB: FMemLdR4 var_D8(44)
  loc_B791D0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B791D5: CVarStr var_C8
  loc_B791D8: PopAdLdVar
  loc_B791D9: FLdPr Me
  loc_B791DC: MemLdRfVar from_stack_1.htmFile
  loc_B791DF: LdPrVar
  loc_B791E1: LateMemCall
  loc_B791E7: FFree1Var var_C8 = ""
  loc_B791EA: LitI4 0
  loc_B791EF: LitI4 0
  loc_B791F4: LitI2_Byte 0
  loc_B791F6: LitStr "right"
  loc_B791F9: FMemLdR4 var_D8(48)
  loc_B791FE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79203: CVarStr var_C8
  loc_B79206: PopAdLdVar
  loc_B79207: FLdPr Me
  loc_B7920A: MemLdRfVar from_stack_1.htmFile
  loc_B7920D: LdPrVar
  loc_B7920F: LateMemCall
  loc_B79215: FFree1Var var_C8 = ""
  loc_B79218: LitI4 0
  loc_B7921D: LitI4 0
  loc_B79222: LitI2_Byte 0
  loc_B79224: LitStr "right"
  loc_B79227: FMemLdR4 var_D8(36)
  loc_B7922C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79231: CVarStr var_C8
  loc_B79234: PopAdLdVar
  loc_B79235: FLdPr Me
  loc_B79238: MemLdRfVar from_stack_1.htmFile
  loc_B7923B: LdPrVar
  loc_B7923D: LateMemCall
  loc_B79243: FFree1Var var_C8 = ""
  loc_B79246: LitI4 0
  loc_B7924B: LitI4 0
  loc_B79250: LitI2_Byte 0
  loc_B79252: LitStr "right"
  loc_B79255: FMemLdR4 var_D8(40)
  loc_B7925A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7925F: CVarStr var_C8
  loc_B79262: PopAdLdVar
  loc_B79263: FLdPr Me
  loc_B79266: MemLdRfVar from_stack_1.htmFile
  loc_B79269: LdPrVar
  loc_B7926B: LateMemCall
  loc_B79271: FFree1Var var_C8 = ""
  loc_B79274: LitI4 0
  loc_B79279: LitI4 0
  loc_B7927E: LitI2_Byte 0
  loc_B79280: LitStr "right"
  loc_B79283: FMemLdR4 var_D8(60)
  loc_B79288: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7928D: CVarStr var_C8
  loc_B79290: PopAdLdVar
  loc_B79291: FLdPr Me
  loc_B79294: MemLdRfVar from_stack_1.htmFile
  loc_B79297: LdPrVar
  loc_B79299: LateMemCall
  loc_B7929F: FFree1Var var_C8 = ""
  loc_B792A2: LitI4 0
  loc_B792A7: LitI4 0
  loc_B792AC: LitI2_Byte 0
  loc_B792AE: LitStr "right"
  loc_B792B1: FMemLdR4 var_D8(64)
  loc_B792B6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B792BB: CVarStr var_C8
  loc_B792BE: PopAdLdVar
  loc_B792BF: FLdPr Me
  loc_B792C2: MemLdRfVar from_stack_1.htmFile
  loc_B792C5: LdPrVar
  loc_B792C7: LateMemCall
  loc_B792CD: FFree1Var var_C8 = ""
  loc_B792D0: LitI4 0
  loc_B792D5: FStR4 var_D8
  loc_B792D8: AryUnlock
  loc_B792DB: AryUnlock
  loc_B792DE: LitVarStr var_9C, "  </tr>"
  loc_B792E3: PopAdLdVar
  loc_B792E4: FLdPr Me
  loc_B792E7: MemLdRfVar from_stack_1.htmFile
  loc_B792EA: LdPrVar
  loc_B792EC: LateMemCall
  loc_B792F2: LitI2_Byte 1
  loc_B792F4: FLdPr Me
  loc_B792F7: MemLdRfVar from_stack_1.global_98
  loc_B792FA: FLdPr Me
  loc_B792FD: MemLdI2 global_96
  loc_B79300: CI4UI1
  loc_B79301: FLdPr Me
  loc_B79304: MemLdI2 global_94
  loc_B79307: CI4UI1
  loc_B79308: FLdPr Me
  loc_B7930B: MemLdStr global_84
  loc_B7930E: Ary1LdPr
  loc_B7930F: MemLdStr global_8
  loc_B79312: Ary1LdPr
  loc_B79313: MemLdStr global_8
  loc_B79316: LitI2_Byte 1
  loc_B79318: FnUBound
  loc_B7931A: CI2I4
  loc_B7931B: ForI2 var_DC
  loc_B79321: LitVarStr var_9C, "  <tr align=""left"" class=""Totales"">"
  loc_B79326: PopAdLdVar
  loc_B79327: FLdPr Me
  loc_B7932A: MemLdRfVar from_stack_1.htmFile
  loc_B7932D: LdPrVar
  loc_B7932F: LateMemCall
  loc_B79335: FLdPr Me
  loc_B79338: MemLdI2 global_98
  loc_B7933B: CI4UI1
  loc_B7933C: FLdPr Me
  loc_B7933F: MemLdI2 global_96
  loc_B79342: CI4UI1
  loc_B79343: FLdPr Me
  loc_B79346: MemLdI2 global_94
  loc_B79349: CI4UI1
  loc_B7934A: FLdPr Me
  loc_B7934D: MemLdStr global_84
  loc_B79350: AryLock
  loc_B79353: Ary1LdPr
  loc_B79354: MemLdStr global_8
  loc_B79357: AryLock
  loc_B7935A: Ary1LdPr
  loc_B7935B: MemLdStr global_8
  loc_B7935E: AryLock
  loc_B79361: Ary1LdRf
  loc_B79362: FStR4 var_EC
  loc_B79365: LitStr "     <td class=""Encabezado"" align=""right"">"
  loc_B79368: FMemLdR4 var_EC(4)
  loc_B7936D: ConcatStr
  loc_B7936E: FStStrNoPop var_B8
  loc_B79371: LitStr "</td>"
  loc_B79374: ConcatStr
  loc_B79375: CVarStr var_C8
  loc_B79378: PopAdLdVar
  loc_B79379: FLdPr Me
  loc_B7937C: MemLdRfVar from_stack_1.htmFile
  loc_B7937F: LdPrVar
  loc_B79381: LateMemCall
  loc_B79387: FFree1Str var_B8
  loc_B7938A: FFree1Var var_C8 = ""
  loc_B7938D: LitI4 0
  loc_B79392: LitI4 0
  loc_B79397: LitI2_Byte 0
  loc_B79399: LitStr "right"
  loc_B7939C: FMemLdR4 var_EC(20)
  loc_B793A1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B793A6: CVarStr var_C8
  loc_B793A9: PopAdLdVar
  loc_B793AA: FLdPr Me
  loc_B793AD: MemLdRfVar from_stack_1.htmFile
  loc_B793B0: LdPrVar
  loc_B793B2: LateMemCall
  loc_B793B8: FFree1Var var_C8 = ""
  loc_B793BB: LitI4 0
  loc_B793C0: LitI4 0
  loc_B793C5: LitI2_Byte 0
  loc_B793C7: LitStr "right"
  loc_B793CA: FMemLdR4 var_EC(24)
  loc_B793CF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B793D4: CVarStr var_C8
  loc_B793D7: PopAdLdVar
  loc_B793D8: FLdPr Me
  loc_B793DB: MemLdRfVar from_stack_1.htmFile
  loc_B793DE: LdPrVar
  loc_B793E0: LateMemCall
  loc_B793E6: FFree1Var var_C8 = ""
  loc_B793E9: LitI4 0
  loc_B793EE: LitI4 0
  loc_B793F3: LitI2_Byte 0
  loc_B793F5: LitStr "right"
  loc_B793F8: FMemLdR4 var_EC(28)
  loc_B793FD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79402: CVarStr var_C8
  loc_B79405: PopAdLdVar
  loc_B79406: FLdPr Me
  loc_B79409: MemLdRfVar from_stack_1.htmFile
  loc_B7940C: LdPrVar
  loc_B7940E: LateMemCall
  loc_B79414: FFree1Var var_C8 = ""
  loc_B79417: LitI4 0
  loc_B7941C: LitI4 0
  loc_B79421: LitI2_Byte 0
  loc_B79423: LitStr "right"
  loc_B79426: FMemLdR4 var_EC(32)
  loc_B7942B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79430: CVarStr var_C8
  loc_B79433: PopAdLdVar
  loc_B79434: FLdPr Me
  loc_B79437: MemLdRfVar from_stack_1.htmFile
  loc_B7943A: LdPrVar
  loc_B7943C: LateMemCall
  loc_B79442: FFree1Var var_C8 = ""
  loc_B79445: LitI4 0
  loc_B7944A: LitI4 0
  loc_B7944F: LitI2_Byte 0
  loc_B79451: LitStr "right"
  loc_B79454: FMemLdR4 var_EC(44)
  loc_B79459: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7945E: CVarStr var_C8
  loc_B79461: PopAdLdVar
  loc_B79462: FLdPr Me
  loc_B79465: MemLdRfVar from_stack_1.htmFile
  loc_B79468: LdPrVar
  loc_B7946A: LateMemCall
  loc_B79470: FFree1Var var_C8 = ""
  loc_B79473: LitI4 0
  loc_B79478: LitI4 0
  loc_B7947D: LitI2_Byte 0
  loc_B7947F: LitStr "right"
  loc_B79482: FMemLdR4 var_EC(48)
  loc_B79487: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7948C: CVarStr var_C8
  loc_B7948F: PopAdLdVar
  loc_B79490: FLdPr Me
  loc_B79493: MemLdRfVar from_stack_1.htmFile
  loc_B79496: LdPrVar
  loc_B79498: LateMemCall
  loc_B7949E: FFree1Var var_C8 = ""
  loc_B794A1: LitI4 0
  loc_B794A6: LitI4 0
  loc_B794AB: LitI2_Byte 0
  loc_B794AD: LitStr "right"
  loc_B794B0: FMemLdR4 var_EC(36)
  loc_B794B5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B794BA: CVarStr var_C8
  loc_B794BD: PopAdLdVar
  loc_B794BE: FLdPr Me
  loc_B794C1: MemLdRfVar from_stack_1.htmFile
  loc_B794C4: LdPrVar
  loc_B794C6: LateMemCall
  loc_B794CC: FFree1Var var_C8 = ""
  loc_B794CF: LitI4 0
  loc_B794D4: LitI4 0
  loc_B794D9: LitI2_Byte 0
  loc_B794DB: LitStr "right"
  loc_B794DE: FMemLdR4 var_EC(40)
  loc_B794E3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B794E8: CVarStr var_C8
  loc_B794EB: PopAdLdVar
  loc_B794EC: FLdPr Me
  loc_B794EF: MemLdRfVar from_stack_1.htmFile
  loc_B794F2: LdPrVar
  loc_B794F4: LateMemCall
  loc_B794FA: FFree1Var var_C8 = ""
  loc_B794FD: LitI4 0
  loc_B79502: LitI4 0
  loc_B79507: LitI2_Byte 0
  loc_B79509: LitStr "right"
  loc_B7950C: FMemLdR4 var_EC(60)
  loc_B79511: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79516: CVarStr var_C8
  loc_B79519: PopAdLdVar
  loc_B7951A: FLdPr Me
  loc_B7951D: MemLdRfVar from_stack_1.htmFile
  loc_B79520: LdPrVar
  loc_B79522: LateMemCall
  loc_B79528: FFree1Var var_C8 = ""
  loc_B7952B: LitI4 0
  loc_B79530: LitI4 0
  loc_B79535: LitI2_Byte 0
  loc_B79537: LitStr "right"
  loc_B7953A: FMemLdR4 var_EC(64)
  loc_B7953F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79544: CVarStr var_C8
  loc_B79547: PopAdLdVar
  loc_B79548: FLdPr Me
  loc_B7954B: MemLdRfVar from_stack_1.htmFile
  loc_B7954E: LdPrVar
  loc_B79550: LateMemCall
  loc_B79556: FFree1Var var_C8 = ""
  loc_B79559: LitI4 0
  loc_B7955E: FStR4 var_EC
  loc_B79561: AryUnlock
  loc_B79564: AryUnlock
  loc_B79567: AryUnlock
  loc_B7956A: LitVarStr var_9C, "  </tr>"
  loc_B7956F: PopAdLdVar
  loc_B79570: FLdPr Me
  loc_B79573: MemLdRfVar from_stack_1.htmFile
  loc_B79576: LdPrVar
  loc_B79578: LateMemCall
  loc_B7957E: LitI2_Byte 1
  loc_B79580: FLdPr Me
  loc_B79583: MemLdRfVar from_stack_1.global_92
  loc_B79586: FLdPr Me
  loc_B79589: MemLdI2 global_98
  loc_B7958C: CI4UI1
  loc_B7958D: FLdPr Me
  loc_B79590: MemLdI2 global_96
  loc_B79593: CI4UI1
  loc_B79594: FLdPr Me
  loc_B79597: MemLdI2 global_94
  loc_B7959A: CI4UI1
  loc_B7959B: FLdPr Me
  loc_B7959E: MemLdStr global_84
  loc_B795A1: Ary1LdPr
  loc_B795A2: MemLdStr global_8
  loc_B795A5: Ary1LdPr
  loc_B795A6: MemLdStr global_8
  loc_B795A9: Ary1LdPr
  loc_B795AA: MemLdStr global_8
  loc_B795AD: LitI2_Byte 1
  loc_B795AF: FnUBound
  loc_B795B1: CI2I4
  loc_B795B2: ForI2 var_F0
  loc_B795B8: FLdPr Me
  loc_B795BB: MemLdI2 global_92
  loc_B795BE: CI4UI1
  loc_B795BF: FLdPr Me
  loc_B795C2: MemLdI2 global_98
  loc_B795C5: CI4UI1
  loc_B795C6: FLdPr Me
  loc_B795C9: MemLdI2 global_96
  loc_B795CC: CI4UI1
  loc_B795CD: FLdPr Me
  loc_B795D0: MemLdI2 global_94
  loc_B795D3: CI4UI1
  loc_B795D4: FLdPr Me
  loc_B795D7: MemLdStr global_84
  loc_B795DA: AryLock
  loc_B795DD: Ary1LdPr
  loc_B795DE: MemLdStr global_8
  loc_B795E1: AryLock
  loc_B795E4: Ary1LdPr
  loc_B795E5: MemLdStr global_8
  loc_B795E8: AryLock
  loc_B795EB: Ary1LdPr
  loc_B795EC: MemLdStr global_8
  loc_B795EF: AryLock
  loc_B795F2: Ary1LdRf
  loc_B795F3: FStR4 var_104
  loc_B795F6: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B795FB: PopAdLdVar
  loc_B795FC: FLdPr Me
  loc_B795FF: MemLdRfVar from_stack_1.htmFile
  loc_B79602: LdPrVar
  loc_B79604: LateMemCall
  loc_B7960A: LitI4 0
  loc_B7960F: LitI4 0
  loc_B79614: LitI2_Byte 0
  loc_B79616: LitStr "left"
  loc_B79619: FMemLdR4 var_104(0)
  loc_B7961E: LitStr " - "
  loc_B79621: ConcatStr
  loc_B79622: FStStrNoPop var_B8
  loc_B79625: FMemLdR4 var_104(4)
  loc_B7962A: ConcatStr
  loc_B7962B: FStStrNoPop var_108
  loc_B7962E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79633: CVarStr var_C8
  loc_B79636: PopAdLdVar
  loc_B79637: FLdPr Me
  loc_B7963A: MemLdRfVar from_stack_1.htmFile
  loc_B7963D: LdPrVar
  loc_B7963F: LateMemCall
  loc_B79645: FFreeStr var_B8 = ""
  loc_B7964C: FFree1Var var_C8 = ""
  loc_B7964F: LitI4 0
  loc_B79654: LitI4 0
  loc_B79659: LitI2_Byte 0
  loc_B7965B: LitStr "right"
  loc_B7965E: FMemLdR4 var_104(8)
  loc_B79663: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79668: CVarStr var_C8
  loc_B7966B: PopAdLdVar
  loc_B7966C: FLdPr Me
  loc_B7966F: MemLdRfVar from_stack_1.htmFile
  loc_B79672: LdPrVar
  loc_B79674: LateMemCall
  loc_B7967A: FFree1Var var_C8 = ""
  loc_B7967D: LitI4 0
  loc_B79682: LitI4 0
  loc_B79687: LitI2_Byte 0
  loc_B79689: LitStr "right"
  loc_B7968C: FMemLdR4 var_104(12)
  loc_B79691: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79696: CVarStr var_C8
  loc_B79699: PopAdLdVar
  loc_B7969A: FLdPr Me
  loc_B7969D: MemLdRfVar from_stack_1.htmFile
  loc_B796A0: LdPrVar
  loc_B796A2: LateMemCall
  loc_B796A8: FFree1Var var_C8 = ""
  loc_B796AB: LitI4 0
  loc_B796B0: LitI4 0
  loc_B796B5: LitI2_Byte 0
  loc_B796B7: LitStr "right"
  loc_B796BA: FMemLdR4 var_104(16)
  loc_B796BF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B796C4: CVarStr var_C8
  loc_B796C7: PopAdLdVar
  loc_B796C8: FLdPr Me
  loc_B796CB: MemLdRfVar from_stack_1.htmFile
  loc_B796CE: LdPrVar
  loc_B796D0: LateMemCall
  loc_B796D6: FFree1Var var_C8 = ""
  loc_B796D9: LitI4 0
  loc_B796DE: LitI4 0
  loc_B796E3: LitI2_Byte 0
  loc_B796E5: LitStr "right"
  loc_B796E8: FMemLdR4 var_104(20)
  loc_B796ED: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B796F2: CVarStr var_C8
  loc_B796F5: PopAdLdVar
  loc_B796F6: FLdPr Me
  loc_B796F9: MemLdRfVar from_stack_1.htmFile
  loc_B796FC: LdPrVar
  loc_B796FE: LateMemCall
  loc_B79704: FFree1Var var_C8 = ""
  loc_B79707: LitI4 0
  loc_B7970C: LitI4 0
  loc_B79711: LitI2_Byte 0
  loc_B79713: LitStr "right"
  loc_B79716: FMemLdR4 var_104(32)
  loc_B7971B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79720: CVarStr var_C8
  loc_B79723: PopAdLdVar
  loc_B79724: FLdPr Me
  loc_B79727: MemLdRfVar from_stack_1.htmFile
  loc_B7972A: LdPrVar
  loc_B7972C: LateMemCall
  loc_B79732: FFree1Var var_C8 = ""
  loc_B79735: LitI4 0
  loc_B7973A: LitI4 0
  loc_B7973F: LitI2_Byte 0
  loc_B79741: LitStr "right"
  loc_B79744: FMemLdR4 var_104(36)
  loc_B79749: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7974E: CVarStr var_C8
  loc_B79751: PopAdLdVar
  loc_B79752: FLdPr Me
  loc_B79755: MemLdRfVar from_stack_1.htmFile
  loc_B79758: LdPrVar
  loc_B7975A: LateMemCall
  loc_B79760: FFree1Var var_C8 = ""
  loc_B79763: LitI4 0
  loc_B79768: LitI4 0
  loc_B7976D: LitI2_Byte 0
  loc_B7976F: LitStr "right"
  loc_B79772: FMemLdR4 var_104(24)
  loc_B79777: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B7977C: CVarStr var_C8
  loc_B7977F: PopAdLdVar
  loc_B79780: FLdPr Me
  loc_B79783: MemLdRfVar from_stack_1.htmFile
  loc_B79786: LdPrVar
  loc_B79788: LateMemCall
  loc_B7978E: FFree1Var var_C8 = ""
  loc_B79791: LitI4 0
  loc_B79796: LitI4 0
  loc_B7979B: LitI2_Byte 0
  loc_B7979D: LitStr "right"
  loc_B797A0: FMemLdR4 var_104(28)
  loc_B797A5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B797AA: CVarStr var_C8
  loc_B797AD: PopAdLdVar
  loc_B797AE: FLdPr Me
  loc_B797B1: MemLdRfVar from_stack_1.htmFile
  loc_B797B4: LdPrVar
  loc_B797B6: LateMemCall
  loc_B797BC: FFree1Var var_C8 = ""
  loc_B797BF: LitI4 0
  loc_B797C4: LitI4 0
  loc_B797C9: LitI2_Byte 0
  loc_B797CB: LitStr "right"
  loc_B797CE: FMemLdR4 var_104(48)
  loc_B797D3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B797D8: CVarStr var_C8
  loc_B797DB: PopAdLdVar
  loc_B797DC: FLdPr Me
  loc_B797DF: MemLdRfVar from_stack_1.htmFile
  loc_B797E2: LdPrVar
  loc_B797E4: LateMemCall
  loc_B797EA: FFree1Var var_C8 = ""
  loc_B797ED: LitI4 0
  loc_B797F2: LitI4 0
  loc_B797F7: LitI2_Byte 0
  loc_B797F9: LitStr "right"
  loc_B797FC: FMemLdR4 var_104(52)
  loc_B79801: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79806: CVarStr var_C8
  loc_B79809: PopAdLdVar
  loc_B7980A: FLdPr Me
  loc_B7980D: MemLdRfVar from_stack_1.htmFile
  loc_B79810: LdPrVar
  loc_B79812: LateMemCall
  loc_B79818: FFree1Var var_C8 = ""
  loc_B7981B: LitVarStr var_9C, "  </tr>"
  loc_B79820: PopAdLdVar
  loc_B79821: FLdPr Me
  loc_B79824: MemLdRfVar from_stack_1.htmFile
  loc_B79827: LdPrVar
  loc_B79829: LateMemCall
  loc_B7982F: LitI4 0
  loc_B79834: FStR4 var_104
  loc_B79837: AryUnlock
  loc_B7983A: AryUnlock
  loc_B7983D: AryUnlock
  loc_B79840: AryUnlock
  loc_B79843: FLdPr Me
  loc_B79846: MemLdRfVar from_stack_1.global_92
  loc_B79849: NextI2 var_F0, loc_B795B8
  loc_B7984E: FLdPr Me
  loc_B79851: MemLdRfVar from_stack_1.global_98
  loc_B79854: NextI2 var_DC, loc_B79321
  loc_B79859: FLdPr Me
  loc_B7985C: MemLdRfVar from_stack_1.global_96
  loc_B7985F: NextI2 var_CC, loc_B790A6
  loc_B79864: FLdPr Me
  loc_B79867: MemLdRfVar from_stack_1.global_94
  loc_B7986A: NextI2 var_8C, loc_B78E47
  loc_B7986F: LitI4 1
  loc_B79874: FLdPr Me
  loc_B79877: MemLdStr global_88
  loc_B7987A: AryLock
  loc_B7987D: Ary1LdRf
  loc_B7987E: FStR4 var_110
  loc_B79881: LitVarStr var_9C, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_B79886: PopAdLdVar
  loc_B79887: FLdPr Me
  loc_B7988A: MemLdRfVar from_stack_1.htmFile
  loc_B7988D: LdPrVar
  loc_B7988F: LateMemCall
  loc_B79895: LitI4 0
  loc_B7989A: LitI4 0
  loc_B7989F: LitI2_Byte 0
  loc_B798A1: LitStr "right"
  loc_B798A4: LitStr "TOTALES"
  loc_B798A7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B798AC: CVarStr var_C8
  loc_B798AF: PopAdLdVar
  loc_B798B0: FLdPr Me
  loc_B798B3: MemLdRfVar from_stack_1.htmFile
  loc_B798B6: LdPrVar
  loc_B798B8: LateMemCall
  loc_B798BE: FFree1Var var_C8 = ""
  loc_B798C1: LitI4 0
  loc_B798C6: LitI4 0
  loc_B798CB: LitI2_Byte 0
  loc_B798CD: LitStr "right"
  loc_B798D0: FMemLdR4 var_110(8)
  loc_B798D5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B798DA: CVarStr var_C8
  loc_B798DD: PopAdLdVar
  loc_B798DE: FLdPr Me
  loc_B798E1: MemLdRfVar from_stack_1.htmFile
  loc_B798E4: LdPrVar
  loc_B798E6: LateMemCall
  loc_B798EC: FFree1Var var_C8 = ""
  loc_B798EF: LitI4 0
  loc_B798F4: LitI4 0
  loc_B798F9: LitI2_Byte 0
  loc_B798FB: LitStr "right"
  loc_B798FE: FMemLdR4 var_110(12)
  loc_B79903: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79908: CVarStr var_C8
  loc_B7990B: PopAdLdVar
  loc_B7990C: FLdPr Me
  loc_B7990F: MemLdRfVar from_stack_1.htmFile
  loc_B79912: LdPrVar
  loc_B79914: LateMemCall
  loc_B7991A: FFree1Var var_C8 = ""
  loc_B7991D: LitI4 0
  loc_B79922: LitI4 0
  loc_B79927: LitI2_Byte 0
  loc_B79929: LitStr "right"
  loc_B7992C: FMemLdR4 var_110(16)
  loc_B79931: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79936: CVarStr var_C8
  loc_B79939: PopAdLdVar
  loc_B7993A: FLdPr Me
  loc_B7993D: MemLdRfVar from_stack_1.htmFile
  loc_B79940: LdPrVar
  loc_B79942: LateMemCall
  loc_B79948: FFree1Var var_C8 = ""
  loc_B7994B: LitI4 0
  loc_B79950: LitI4 0
  loc_B79955: LitI2_Byte 0
  loc_B79957: LitStr "right"
  loc_B7995A: FMemLdR4 var_110(20)
  loc_B7995F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79964: CVarStr var_C8
  loc_B79967: PopAdLdVar
  loc_B79968: FLdPr Me
  loc_B7996B: MemLdRfVar from_stack_1.htmFile
  loc_B7996E: LdPrVar
  loc_B79970: LateMemCall
  loc_B79976: FFree1Var var_C8 = ""
  loc_B79979: LitI4 0
  loc_B7997E: LitI4 0
  loc_B79983: LitI2_Byte 0
  loc_B79985: LitStr "right"
  loc_B79988: FMemLdR4 var_110(32)
  loc_B7998D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79992: CVarStr var_C8
  loc_B79995: PopAdLdVar
  loc_B79996: FLdPr Me
  loc_B79999: MemLdRfVar from_stack_1.htmFile
  loc_B7999C: LdPrVar
  loc_B7999E: LateMemCall
  loc_B799A4: FFree1Var var_C8 = ""
  loc_B799A7: LitI4 0
  loc_B799AC: LitI4 0
  loc_B799B1: LitI2_Byte 0
  loc_B799B3: LitStr "right"
  loc_B799B6: FMemLdR4 var_110(36)
  loc_B799BB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B799C0: CVarStr var_C8
  loc_B799C3: PopAdLdVar
  loc_B799C4: FLdPr Me
  loc_B799C7: MemLdRfVar from_stack_1.htmFile
  loc_B799CA: LdPrVar
  loc_B799CC: LateMemCall
  loc_B799D2: FFree1Var var_C8 = ""
  loc_B799D5: LitI4 0
  loc_B799DA: LitI4 0
  loc_B799DF: LitI2_Byte 0
  loc_B799E1: LitStr "right"
  loc_B799E4: FMemLdR4 var_110(24)
  loc_B799E9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B799EE: CVarStr var_C8
  loc_B799F1: PopAdLdVar
  loc_B799F2: FLdPr Me
  loc_B799F5: MemLdRfVar from_stack_1.htmFile
  loc_B799F8: LdPrVar
  loc_B799FA: LateMemCall
  loc_B79A00: FFree1Var var_C8 = ""
  loc_B79A03: LitI4 0
  loc_B79A08: LitI4 0
  loc_B79A0D: LitI2_Byte 0
  loc_B79A0F: LitStr "right"
  loc_B79A12: FMemLdR4 var_110(28)
  loc_B79A17: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79A1C: CVarStr var_C8
  loc_B79A1F: PopAdLdVar
  loc_B79A20: FLdPr Me
  loc_B79A23: MemLdRfVar from_stack_1.htmFile
  loc_B79A26: LdPrVar
  loc_B79A28: LateMemCall
  loc_B79A2E: FFree1Var var_C8 = ""
  loc_B79A31: LitI4 0
  loc_B79A36: LitI4 0
  loc_B79A3B: LitI2_Byte 0
  loc_B79A3D: LitStr "right"
  loc_B79A40: FMemLdR4 var_110(48)
  loc_B79A45: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79A4A: CVarStr var_C8
  loc_B79A4D: PopAdLdVar
  loc_B79A4E: FLdPr Me
  loc_B79A51: MemLdRfVar from_stack_1.htmFile
  loc_B79A54: LdPrVar
  loc_B79A56: LateMemCall
  loc_B79A5C: FFree1Var var_C8 = ""
  loc_B79A5F: LitI4 0
  loc_B79A64: LitI4 0
  loc_B79A69: LitI2_Byte 0
  loc_B79A6B: LitStr "right"
  loc_B79A6E: FMemLdR4 var_110(52)
  loc_B79A73: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B79A78: CVarStr var_C8
  loc_B79A7B: PopAdLdVar
  loc_B79A7C: FLdPr Me
  loc_B79A7F: MemLdRfVar from_stack_1.htmFile
  loc_B79A82: LdPrVar
  loc_B79A84: LateMemCall
  loc_B79A8A: FFree1Var var_C8 = ""
  loc_B79A8D: LitVarStr var_9C, "     </tr>"
  loc_B79A92: PopAdLdVar
  loc_B79A93: FLdPr Me
  loc_B79A96: MemLdRfVar from_stack_1.htmFile
  loc_B79A99: LdPrVar
  loc_B79A9B: LateMemCall
  loc_B79AA1: LitI4 0
  loc_B79AA6: FStR4 var_110
  loc_B79AA9: AryUnlock
  loc_B79AAC: Call Proc_292_30_A04EAC()
  loc_B79AB1: FLdPr Me
  loc_B79AB4: MemLdRfVar from_stack_1.htmFile
  loc_B79AB7: LdPrVar
  loc_B79AB9: LateMemCall
  loc_B79ABF: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B79AC4: ExitProcHresult
  loc_B79AC5: CCyI4
  loc_B79AC6: Error
End Sub

Public Sub GeneraXLS() '94ABCC
  'Data Table: 46F7A4
  loc_94ABB4: LitI2_Byte 0
  loc_94ABB6: FLdPr Me
  loc_94ABB9: MemStI2 bLogos
  loc_94ABBC: Call GeneraHTML()
  loc_94ABC1: LitI2_Byte &HFF
  loc_94ABC3: FLdPr Me
  loc_94ABC6: MemStI2 bLogos
  loc_94ABC9: ExitProcHresult
  loc_94ABCA: UMiCy
End Sub

Private Function Proc_292_21_A27110(arg_C) 'A27110
  'Data Table: 46F7A4
  loc_A26F44: FMemLdR4 arg_C(8)
  loc_A26F49: LitStr vbNullString
  loc_A26F4C: NeStr
  loc_A26F4E: BranchF loc_A26F73
  loc_A26F51: LitI2_Byte 0
  loc_A26F53: FMemLdRf unk_46F7B5
  loc_A26F58: CVarRef
  loc_A26F5D: LitI2_Byte &HFF
  loc_A26F5F: FMemLdR4 arg_C(8)
  loc_A26F64: CVarStr var_94
  loc_A26F67: PopAdLdVar
  loc_A26F68: FLdPr Me
  loc_A26F6B: MemLdRfVar from_stack_1.global_112
  loc_A26F6E: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A26F73: FMemLdR4 arg_C(12)
  loc_A26F78: LitStr vbNullString
  loc_A26F7B: NeStr
  loc_A26F7D: BranchF loc_A26FA2
  loc_A26F80: LitI2_Byte 0
  loc_A26F82: FMemLdRf unk_46F7B5
  loc_A26F87: CVarRef
  loc_A26F8C: LitI2_Byte &HFF
  loc_A26F8E: FMemLdR4 arg_C(12)
  loc_A26F93: CVarStr var_94
  loc_A26F96: PopAdLdVar
  loc_A26F97: FLdPr Me
  loc_A26F9A: MemLdRfVar from_stack_1.global_112
  loc_A26F9D: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A26FA2: FMemLdR4 arg_C(32)
  loc_A26FA7: LitStr vbNullString
  loc_A26FAA: NeStr
  loc_A26FAC: BranchF loc_A26FD1
  loc_A26FAF: LitI2_Byte 0
  loc_A26FB1: FMemLdRf unk_46F7B5
  loc_A26FB6: CVarRef
  loc_A26FBB: LitI2_Byte &HFF
  loc_A26FBD: FMemLdR4 arg_C(32)
  loc_A26FC2: CVarStr var_94
  loc_A26FC5: PopAdLdVar
  loc_A26FC6: FLdPr Me
  loc_A26FC9: MemLdRfVar from_stack_1.global_112
  loc_A26FCC: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A26FD1: FMemLdR4 arg_C(36)
  loc_A26FD6: LitStr vbNullString
  loc_A26FD9: NeStr
  loc_A26FDB: BranchF loc_A27000
  loc_A26FDE: LitI2_Byte 0
  loc_A26FE0: FMemLdRf unk_46F7B5
  loc_A26FE5: CVarRef
  loc_A26FEA: LitI2_Byte &HFF
  loc_A26FEC: FMemLdR4 arg_C(36)
  loc_A26FF1: CVarStr var_94
  loc_A26FF4: PopAdLdVar
  loc_A26FF5: FLdPr Me
  loc_A26FF8: MemLdRfVar from_stack_1.global_112
  loc_A26FFB: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A27000: LitVarI2 var_C4, 0
  loc_A27005: FMemLdRf unk_46F7B1
  loc_A2700A: CVarRef
  loc_A2700F: FMemLdR4 arg_C(8)
  loc_A27014: LitStr vbNullString
  loc_A27017: NeStr
  loc_A27019: CVarBoolI2 var_94
  loc_A2701D: FLdRfVar var_D4
  loc_A27020: ImpAdCallFPR4  = IIf(, , )
  loc_A27025: LitVarI2 var_114, 0
  loc_A2702A: FMemLdRf unk_46F7B1
  loc_A2702F: CVarRef
  loc_A27034: FMemLdR4 arg_C(32)
  loc_A27039: LitStr vbNullString
  loc_A2703C: NeStr
  loc_A2703E: CVarBoolI2 var_E4
  loc_A27042: FLdRfVar var_124
  loc_A27045: ImpAdCallFPR4  = IIf(, , )
  loc_A2704A: LitI2_Byte 0
  loc_A2704C: FMemLdRf unk_46F7B5
  loc_A27051: CVarRef
  loc_A27056: LitI2_Byte &HFF
  loc_A27058: FLdRfVar var_D4
  loc_A2705B: FnCDblVar
  loc_A2705D: FLdRfVar var_124
  loc_A27060: FnCDblVar
  loc_A27062: AddR8
  loc_A27063: CVarR8
  loc_A27067: PopAdLdVar
  loc_A27068: FLdPr Me
  loc_A2706B: MemLdRfVar from_stack_1.global_112
  loc_A2706E: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A27073: FFreeVar var_94 = "": var_C4 = "": var_D4 = "": var_D4 = "": var_E4 = "": var_114 = "": var_124 = ""
  loc_A27086: LitVarI2 var_C4, 0
  loc_A2708B: FMemLdRf unk_46F7B1
  loc_A27090: CVarRef
  loc_A27095: FMemLdR4 arg_C(12)
  loc_A2709A: LitStr vbNullString
  loc_A2709D: NeStr
  loc_A2709F: CVarBoolI2 var_94
  loc_A270A3: FLdRfVar var_D4
  loc_A270A6: ImpAdCallFPR4  = IIf(, , )
  loc_A270AB: LitVarI2 var_114, 0
  loc_A270B0: FMemLdRf unk_46F7B1
  loc_A270B5: CVarRef
  loc_A270BA: FMemLdR4 arg_C(36)
  loc_A270BF: LitStr vbNullString
  loc_A270C2: NeStr
  loc_A270C4: CVarBoolI2 var_E4
  loc_A270C8: FLdRfVar var_124
  loc_A270CB: ImpAdCallFPR4  = IIf(, , )
  loc_A270D0: LitI2_Byte 0
  loc_A270D2: FMemLdRf unk_46F7B5
  loc_A270D7: CVarRef
  loc_A270DC: LitI2_Byte &HFF
  loc_A270DE: FLdRfVar var_D4
  loc_A270E1: FnCDblVar
  loc_A270E3: FLdRfVar var_124
  loc_A270E6: FnCDblVar
  loc_A270E8: AddR8
  loc_A270E9: CVarR8
  loc_A270ED: PopAdLdVar
  loc_A270EE: FLdPr Me
  loc_A270F1: MemLdRfVar from_stack_1.global_112
  loc_A270F4: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A270F9: FFreeVar var_94 = "": var_C4 = "": var_D4 = "": var_D4 = "": var_E4 = "": var_114 = "": var_124 = ""
  loc_A2710C: ExitProcHresult
End Function

Private Function Proc_292_22_9F0924() '9F0924
  'Data Table: 46F7A4
  loc_9F0804: FLdPr Me
  loc_9F0807: MemLdI2 global_94
  loc_9F080A: LitI2_Byte 1
  loc_9F080C: AddI2
  loc_9F080D: FLdPr Me
  loc_9F0810: MemStI2 global_94
  loc_9F0813: LitI2_Byte 0
  loc_9F0815: FLdPr Me
  loc_9F0818: MemStI2 global_96
  loc_9F081B: LitI4 0
  loc_9F0820: FLdPr Me
  loc_9F0823: MemLdI2 global_94
  loc_9F0826: CI4UI1
  loc_9F0827: FLdPr Me
  loc_9F082A: MemLdRfVar from_stack_1.global_84
  loc_9F082D: RedimPreserve
  loc_9F0837: FLdRfVar var_B0
  loc_9F083A: FLdRfVar var_A0
  loc_9F083D: LitVarStr var_9C, "CodiTicu"
  loc_9F0842: PopAdLdVar
  loc_9F0843: FLdRfVar var_8C
  loc_9F0846: FLdRfVar var_88
  loc_9F0849: FLdPr Me
  loc_9F084C: MemLdRfVar from_stack_1.global_72
  loc_9F084F: NewIfNullPr clsasiento
  loc_9F0852: from_stack_1v = clsasiento.RsFrmGet()
  loc_9F0857: FLdPr var_88
  loc_9F085A:  = Me.Fields
  loc_9F085F: FLdPr var_8C
  loc_9F0862: from_stack_2 = Me.Item(from_stack_1)
  loc_9F0867: FLdPr var_A0
  loc_9F086A:  = Me.Value
  loc_9F086F: LitI4 1
  loc_9F0874: FLdRfVar var_B0
  loc_9F0877: CStrVarTmp
  loc_9F0878: FStStrNoPop var_B4
  loc_9F087B: ImpAdCallI2 Left$(, )
  loc_9F0880: FStStr var_F0
  loc_9F0883: LitI2_Byte 0
  loc_9F0885: LitVar_Missing var_EC
  loc_9F0888: LitI2_Byte 0
  loc_9F088A: FLdZeroAd var_F0
  loc_9F088D: FStStrNoPop var_B8
  loc_9F0890: LitStr "000"
  loc_9F0893: ConcatStr
  loc_9F0894: CVarStr var_CC
  loc_9F0897: PopAdLdVar
  loc_9F0898: FLdPr Me
  loc_9F089B: MemLdI2 global_94
  loc_9F089E: CI4UI1
  loc_9F089F: FLdPr Me
  loc_9F08A2: MemLdStr global_84
  loc_9F08A5: AryLock
  loc_9F08A8: Ary1LdPr
  loc_9F08A9: MemLdRfVar from_stack_1.global_0
  loc_9F08AC: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_9F08B1: AryUnlock
  loc_9F08B4: FFreeStr var_B4 = "": var_B8 = ""
  loc_9F08BD: FFreeAd var_88 = "": var_8C = ""
  loc_9F08C6: FFreeVar var_B0 = "": var_CC = ""
  loc_9F08CF: FLdPr Me
  loc_9F08D2: MemLdI2 global_94
  loc_9F08D5: CI4UI1
  loc_9F08D6: FLdPr Me
  loc_9F08D9: MemLdStr global_84
  loc_9F08DC: Ary1LdPr
  loc_9F08DD: MemLdStr global_0
  loc_9F08E0: ImpAdCallI2 Proc_259_34_9A668C()
  loc_9F08E5: FStStr var_B4
  loc_9F08E8: LitI2_Byte 0
  loc_9F08EA: LitVar_Missing var_CC
  loc_9F08ED: LitI2_Byte 0
  loc_9F08EF: FLdZeroAd var_B4
  loc_9F08F2: CVarStr var_B0
  loc_9F08F5: PopAdLdVar
  loc_9F08F6: FLdPr Me
  loc_9F08F9: MemLdI2 global_94
  loc_9F08FC: CI4UI1
  loc_9F08FD: FLdPr Me
  loc_9F0900: MemLdStr global_84
  loc_9F0903: AryLock
  loc_9F0906: Ary1LdPr
  loc_9F0907: MemLdRfVar from_stack_1.global_4
  loc_9F090A: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_9F090F: AryUnlock
  loc_9F0912: FFree1Str var_B4
  loc_9F0915: FFreeVar var_B0 = ""
  loc_9F091C: Call Proc_292_23_A0F40C()
  loc_9F0921: ExitProcHresult
End Function

Private Function Proc_292_23_A0F40C() 'A0F40C
  'Data Table: 46F7A4
  loc_A0F2B4: FLdPr Me
  loc_A0F2B7: MemLdI2 global_96
  loc_A0F2BA: LitI2_Byte 1
  loc_A0F2BC: AddI2
  loc_A0F2BD: FLdPr Me
  loc_A0F2C0: MemStI2 global_96
  loc_A0F2C3: LitI2_Byte 0
  loc_A0F2C5: FLdPr Me
  loc_A0F2C8: MemStI2 global_98
  loc_A0F2CB: LitI4 0
  loc_A0F2D0: FLdPr Me
  loc_A0F2D3: MemLdI2 global_96
  loc_A0F2D6: CI4UI1
  loc_A0F2D7: FLdPr Me
  loc_A0F2DA: MemLdI2 global_94
  loc_A0F2DD: CI4UI1
  loc_A0F2DE: FLdPr Me
  loc_A0F2E1: MemLdStr global_84
  loc_A0F2E4: Ary1LdPr
  loc_A0F2E5: MemLdRfVar from_stack_1.global_8
  loc_A0F2E8: RedimPreserve
  loc_A0F2F2: FLdRfVar var_B0
  loc_A0F2F5: FLdRfVar var_A0
  loc_A0F2F8: LitVarStr var_9C, "CodiTicu"
  loc_A0F2FD: PopAdLdVar
  loc_A0F2FE: FLdRfVar var_8C
  loc_A0F301: FLdRfVar var_88
  loc_A0F304: FLdPr Me
  loc_A0F307: MemLdRfVar from_stack_1.global_72
  loc_A0F30A: NewIfNullPr clsasiento
  loc_A0F30D: from_stack_1v = clsasiento.RsFrmGet()
  loc_A0F312: FLdPr var_88
  loc_A0F315:  = Me.Fields
  loc_A0F31A: FLdPr var_8C
  loc_A0F31D: from_stack_2 = Me.Item(from_stack_1)
  loc_A0F322: FLdPr var_A0
  loc_A0F325:  = Me.Value
  loc_A0F32A: LitI4 2
  loc_A0F32F: FLdRfVar var_B0
  loc_A0F332: CStrVarTmp
  loc_A0F333: FStStrNoPop var_B4
  loc_A0F336: ImpAdCallI2 Left$(, )
  loc_A0F33B: FStStr var_F4
  loc_A0F33E: LitI2_Byte 0
  loc_A0F340: LitVar_Missing var_F0
  loc_A0F343: LitI2_Byte 0
  loc_A0F345: FLdZeroAd var_F4
  loc_A0F348: FStStrNoPop var_B8
  loc_A0F34B: LitStr "00"
  loc_A0F34E: ConcatStr
  loc_A0F34F: CVarStr var_D0
  loc_A0F352: PopAdLdVar
  loc_A0F353: FLdPr Me
  loc_A0F356: MemLdI2 global_96
  loc_A0F359: CI4UI1
  loc_A0F35A: FLdPr Me
  loc_A0F35D: MemLdI2 global_94
  loc_A0F360: CI4UI1
  loc_A0F361: FLdPr Me
  loc_A0F364: MemLdStr global_84
  loc_A0F367: AryLock
  loc_A0F36A: Ary1LdPr
  loc_A0F36B: MemLdStr global_8
  loc_A0F36E: AryLock
  loc_A0F371: Ary1LdPr
  loc_A0F372: MemLdRfVar from_stack_1.global_0
  loc_A0F375: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A0F37A: AryUnlock
  loc_A0F37D: AryUnlock
  loc_A0F380: FFreeStr var_B4 = "": var_B8 = ""
  loc_A0F389: FFreeAd var_88 = "": var_8C = ""
  loc_A0F392: FFreeVar var_B0 = "": var_D0 = ""
  loc_A0F39B: FLdPr Me
  loc_A0F39E: MemLdI2 global_96
  loc_A0F3A1: CI4UI1
  loc_A0F3A2: FLdPr Me
  loc_A0F3A5: MemLdI2 global_94
  loc_A0F3A8: CI4UI1
  loc_A0F3A9: FLdPr Me
  loc_A0F3AC: MemLdStr global_84
  loc_A0F3AF: Ary1LdPr
  loc_A0F3B0: MemLdStr global_8
  loc_A0F3B3: Ary1LdPr
  loc_A0F3B4: MemLdStr global_0
  loc_A0F3B7: ImpAdCallI2 Proc_259_34_9A668C()
  loc_A0F3BC: FStStr var_B4
  loc_A0F3BF: LitI2_Byte 0
  loc_A0F3C1: LitVar_Missing var_D0
  loc_A0F3C4: LitI2_Byte 0
  loc_A0F3C6: FLdZeroAd var_B4
  loc_A0F3C9: CVarStr var_B0
  loc_A0F3CC: PopAdLdVar
  loc_A0F3CD: FLdPr Me
  loc_A0F3D0: MemLdI2 global_96
  loc_A0F3D3: CI4UI1
  loc_A0F3D4: FLdPr Me
  loc_A0F3D7: MemLdI2 global_94
  loc_A0F3DA: CI4UI1
  loc_A0F3DB: FLdPr Me
  loc_A0F3DE: MemLdStr global_84
  loc_A0F3E1: AryLock
  loc_A0F3E4: Ary1LdPr
  loc_A0F3E5: MemLdStr global_8
  loc_A0F3E8: AryLock
  loc_A0F3EB: Ary1LdPr
  loc_A0F3EC: MemLdRfVar from_stack_1.global_4
  loc_A0F3EF: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A0F3F4: AryUnlock
  loc_A0F3F7: AryUnlock
  loc_A0F3FA: FFree1Str var_B4
  loc_A0F3FD: FFreeVar var_B0 = ""
  loc_A0F404: Call Proc_292_24_A0BA7C()
  loc_A0F409: ExitProcHresult
  loc_A0F40A: Ary1StFPR4
End Function

Private Function Proc_292_24_A0BA7C() 'A0BA7C
  'Data Table: 46F7A4
  loc_A0B91C: FLdPr Me
  loc_A0B91F: MemLdI2 global_98
  loc_A0B922: LitI2_Byte 1
  loc_A0B924: AddI2
  loc_A0B925: FLdPr Me
  loc_A0B928: MemStI2 global_98
  loc_A0B92B: LitI2_Byte 0
  loc_A0B92D: FLdPr Me
  loc_A0B930: MemStI2 global_92
  loc_A0B933: LitI4 0
  loc_A0B938: FLdPr Me
  loc_A0B93B: MemLdI2 global_98
  loc_A0B93E: CI4UI1
  loc_A0B93F: FLdPr Me
  loc_A0B942: MemLdI2 global_96
  loc_A0B945: CI4UI1
  loc_A0B946: FLdPr Me
  loc_A0B949: MemLdI2 global_94
  loc_A0B94C: CI4UI1
  loc_A0B94D: FLdPr Me
  loc_A0B950: MemLdStr global_84
  loc_A0B953: Ary1LdPr
  loc_A0B954: MemLdStr global_8
  loc_A0B957: Ary1LdPr
  loc_A0B958: MemLdRfVar from_stack_1.global_8
  loc_A0B95B: RedimPreserve
  loc_A0B965: FLdRfVar var_A0
  loc_A0B968: LitVarStr var_9C, "CodiTicu"
  loc_A0B96D: PopAdLdVar
  loc_A0B96E: FLdRfVar var_8C
  loc_A0B971: FLdRfVar var_88
  loc_A0B974: FLdPr Me
  loc_A0B977: MemLdRfVar from_stack_1.global_72
  loc_A0B97A: NewIfNullPr clsasiento
  loc_A0B97D: from_stack_1v = clsasiento.RsFrmGet()
  loc_A0B982: FLdPr var_88
  loc_A0B985:  = Me.Fields
  loc_A0B98A: FLdPr var_8C
  loc_A0B98D: from_stack_2 = Me.Item(from_stack_1)
  loc_A0B992: LitI2_Byte 0
  loc_A0B994: LitVar_Missing var_DC
  loc_A0B997: LitI2_Byte 0
  loc_A0B999: FLdZeroAd var_A0
  loc_A0B99C: CVarAd
  loc_A0B9A0: PopAdLdVar
  loc_A0B9A1: FLdPr Me
  loc_A0B9A4: MemLdI2 global_98
  loc_A0B9A7: CI4UI1
  loc_A0B9A8: FLdPr Me
  loc_A0B9AB: MemLdI2 global_96
  loc_A0B9AE: CI4UI1
  loc_A0B9AF: FLdPr Me
  loc_A0B9B2: MemLdI2 global_94
  loc_A0B9B5: CI4UI1
  loc_A0B9B6: FLdPr Me
  loc_A0B9B9: MemLdStr global_84
  loc_A0B9BC: AryLock
  loc_A0B9BF: Ary1LdPr
  loc_A0B9C0: MemLdStr global_8
  loc_A0B9C3: AryLock
  loc_A0B9C6: Ary1LdPr
  loc_A0B9C7: MemLdStr global_8
  loc_A0B9CA: AryLock
  loc_A0B9CD: Ary1LdPr
  loc_A0B9CE: MemLdRfVar from_stack_1.global_0
  loc_A0B9D1: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A0B9D6: AryUnlock
  loc_A0B9D9: AryUnlock
  loc_A0B9DC: AryUnlock
  loc_A0B9DF: FFreeAd var_88 = ""
  loc_A0B9E6: FFreeVar var_BC = ""
  loc_A0B9ED: FLdRfVar var_A0
  loc_A0B9F0: LitVarStr var_9C, "DetaTicu"
  loc_A0B9F5: PopAdLdVar
  loc_A0B9F6: FLdRfVar var_8C
  loc_A0B9F9: FLdRfVar var_88
  loc_A0B9FC: FLdPr Me
  loc_A0B9FF: MemLdRfVar from_stack_1.global_72
  loc_A0BA02: NewIfNullPr clsasiento
  loc_A0BA05: from_stack_1v = clsasiento.RsFrmGet()
  loc_A0BA0A: FLdPr var_88
  loc_A0BA0D:  = Me.Fields
  loc_A0BA12: FLdPr var_8C
  loc_A0BA15: from_stack_2 = Me.Item(from_stack_1)
  loc_A0BA1A: LitI2_Byte 0
  loc_A0BA1C: LitVar_Missing var_DC
  loc_A0BA1F: LitI2_Byte 0
  loc_A0BA21: FLdZeroAd var_A0
  loc_A0BA24: CVarAd
  loc_A0BA28: PopAdLdVar
  loc_A0BA29: FLdPr Me
  loc_A0BA2C: MemLdI2 global_98
  loc_A0BA2F: CI4UI1
  loc_A0BA30: FLdPr Me
  loc_A0BA33: MemLdI2 global_96
  loc_A0BA36: CI4UI1
  loc_A0BA37: FLdPr Me
  loc_A0BA3A: MemLdI2 global_94
  loc_A0BA3D: CI4UI1
  loc_A0BA3E: FLdPr Me
  loc_A0BA41: MemLdStr global_84
  loc_A0BA44: AryLock
  loc_A0BA47: Ary1LdPr
  loc_A0BA48: MemLdStr global_8
  loc_A0BA4B: AryLock
  loc_A0BA4E: Ary1LdPr
  loc_A0BA4F: MemLdStr global_8
  loc_A0BA52: AryLock
  loc_A0BA55: Ary1LdPr
  loc_A0BA56: MemLdRfVar from_stack_1.global_4
  loc_A0BA59: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A0BA5E: AryUnlock
  loc_A0BA61: AryUnlock
  loc_A0BA64: AryUnlock
  loc_A0BA67: FFreeAd var_88 = ""
  loc_A0BA6E: FFreeVar var_BC = ""
  loc_A0BA75: Call Proc_292_25_A1A14C()
  loc_A0BA7A: ExitProcHresult
End Function

Private Function Proc_292_25_A1A14C() 'A1A14C
  'Data Table: 46F7A4
  loc_A19FC8: FLdPr Me
  loc_A19FCB: MemLdI2 global_92
  loc_A19FCE: LitI2_Byte 1
  loc_A19FD0: AddI2
  loc_A19FD1: FLdPr Me
  loc_A19FD4: MemStI2 global_92
  loc_A19FD7: LitI4 0
  loc_A19FDC: FLdPr Me
  loc_A19FDF: MemLdI2 global_92
  loc_A19FE2: CI4UI1
  loc_A19FE3: FLdPr Me
  loc_A19FE6: MemLdI2 global_98
  loc_A19FE9: CI4UI1
  loc_A19FEA: FLdPr Me
  loc_A19FED: MemLdI2 global_96
  loc_A19FF0: CI4UI1
  loc_A19FF1: FLdPr Me
  loc_A19FF4: MemLdI2 global_94
  loc_A19FF7: CI4UI1
  loc_A19FF8: FLdPr Me
  loc_A19FFB: MemLdStr global_84
  loc_A19FFE: Ary1LdPr
  loc_A19FFF: MemLdStr global_8
  loc_A1A002: Ary1LdPr
  loc_A1A003: MemLdStr global_8
  loc_A1A006: Ary1LdPr
  loc_A1A007: MemLdRfVar from_stack_1.global_8
  loc_A1A00A: RedimPreserve
  loc_A1A014: FLdRfVar var_A0
  loc_A1A017: LitVarStr var_9C, "CodiCuco"
  loc_A1A01C: PopAdLdVar
  loc_A1A01D: FLdRfVar var_8C
  loc_A1A020: FLdRfVar var_88
  loc_A1A023: FLdPr Me
  loc_A1A026: MemLdRfVar from_stack_1.global_72
  loc_A1A029: NewIfNullPr clsasiento
  loc_A1A02C: from_stack_1v = clsasiento.RsFrmGet()
  loc_A1A031: FLdPr var_88
  loc_A1A034:  = Me.Fields
  loc_A1A039: FLdPr var_8C
  loc_A1A03C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A041: LitI2_Byte 0
  loc_A1A043: LitVar_Missing var_E0
  loc_A1A046: LitI2_Byte 0
  loc_A1A048: FLdZeroAd var_A0
  loc_A1A04B: CVarAd
  loc_A1A04F: PopAdLdVar
  loc_A1A050: FLdPr Me
  loc_A1A053: MemLdI2 global_92
  loc_A1A056: CI4UI1
  loc_A1A057: FLdPr Me
  loc_A1A05A: MemLdI2 global_98
  loc_A1A05D: CI4UI1
  loc_A1A05E: FLdPr Me
  loc_A1A061: MemLdI2 global_96
  loc_A1A064: CI4UI1
  loc_A1A065: FLdPr Me
  loc_A1A068: MemLdI2 global_94
  loc_A1A06B: CI4UI1
  loc_A1A06C: FLdPr Me
  loc_A1A06F: MemLdStr global_84
  loc_A1A072: AryLock
  loc_A1A075: Ary1LdPr
  loc_A1A076: MemLdStr global_8
  loc_A1A079: AryLock
  loc_A1A07C: Ary1LdPr
  loc_A1A07D: MemLdStr global_8
  loc_A1A080: AryLock
  loc_A1A083: Ary1LdPr
  loc_A1A084: MemLdStr global_8
  loc_A1A087: AryLock
  loc_A1A08A: Ary1LdPr
  loc_A1A08B: MemLdRfVar from_stack_1.global_0
  loc_A1A08E: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A1A093: AryUnlock
  loc_A1A096: AryUnlock
  loc_A1A099: AryUnlock
  loc_A1A09C: AryUnlock
  loc_A1A09F: FFreeAd var_88 = ""
  loc_A1A0A6: FFreeVar var_C0 = ""
  loc_A1A0AD: FLdRfVar var_A0
  loc_A1A0B0: LitVarStr var_9C, "DetaCuco"
  loc_A1A0B5: PopAdLdVar
  loc_A1A0B6: FLdRfVar var_8C
  loc_A1A0B9: FLdRfVar var_88
  loc_A1A0BC: FLdPr Me
  loc_A1A0BF: MemLdRfVar from_stack_1.global_72
  loc_A1A0C2: NewIfNullPr clsasiento
  loc_A1A0C5: from_stack_1v = clsasiento.RsFrmGet()
  loc_A1A0CA: FLdPr var_88
  loc_A1A0CD:  = Me.Fields
  loc_A1A0D2: FLdPr var_8C
  loc_A1A0D5: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A0DA: LitI2_Byte 0
  loc_A1A0DC: LitVar_Missing var_E0
  loc_A1A0DF: LitI2_Byte 0
  loc_A1A0E1: FLdZeroAd var_A0
  loc_A1A0E4: CVarAd
  loc_A1A0E8: PopAdLdVar
  loc_A1A0E9: FLdPr Me
  loc_A1A0EC: MemLdI2 global_92
  loc_A1A0EF: CI4UI1
  loc_A1A0F0: FLdPr Me
  loc_A1A0F3: MemLdI2 global_98
  loc_A1A0F6: CI4UI1
  loc_A1A0F7: FLdPr Me
  loc_A1A0FA: MemLdI2 global_96
  loc_A1A0FD: CI4UI1
  loc_A1A0FE: FLdPr Me
  loc_A1A101: MemLdI2 global_94
  loc_A1A104: CI4UI1
  loc_A1A105: FLdPr Me
  loc_A1A108: MemLdStr global_84
  loc_A1A10B: AryLock
  loc_A1A10E: Ary1LdPr
  loc_A1A10F: MemLdStr global_8
  loc_A1A112: AryLock
  loc_A1A115: Ary1LdPr
  loc_A1A116: MemLdStr global_8
  loc_A1A119: AryLock
  loc_A1A11C: Ary1LdPr
  loc_A1A11D: MemLdStr global_8
  loc_A1A120: AryLock
  loc_A1A123: Ary1LdPr
  loc_A1A124: MemLdRfVar from_stack_1.global_4
  loc_A1A127: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_A1A12C: AryUnlock
  loc_A1A12F: AryUnlock
  loc_A1A132: AryUnlock
  loc_A1A135: AryUnlock
  loc_A1A138: FFreeAd var_88 = ""
  loc_A1A13F: FFreeVar var_C0 = ""
  loc_A1A146: Call Proc_292_26_B353AC()
  loc_A1A14B: ExitProcHresult
End Function

Private Function Proc_292_26_B353AC() 'B353AC
  'Data Table: 46F7A4
  loc_B34A5C: FLdPr Me
  loc_B34A5F: MemLdRfVar from_stack_1.global_72
  loc_B34A62: NewIfNullAd
  loc_B34A65: FStAd var_88 
  loc_B34A69: FLdRfVar var_BC
  loc_B34A6C: FLdPr Me
  loc_B34A6F: VCallAd Control_ID_cboPeriodo
  loc_B34A72: FStAdFunc var_B8
  loc_B34A75: FLdPr var_B8
  loc_B34A78:  = Me.Text
  loc_B34A7D: FLdRfVar var_B4
  loc_B34A80: FLdRfVar var_A4
  loc_B34A83: LitVarStr var_A0, "FechAsie"
  loc_B34A88: PopAdLdVar
  loc_B34A89: FLdRfVar var_90
  loc_B34A8C: FLdRfVar var_8C
  loc_B34A8F: FLdPr var_88
  loc_B34A92: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34A97: FLdPr var_8C
  loc_B34A9A:  = Me.Fields
  loc_B34A9F: FLdPr var_90
  loc_B34AA2: from_stack_2 = Me.Item(from_stack_1)
  loc_B34AA7: FLdPr var_A4
  loc_B34AAA:  = Me.Value
  loc_B34AAF: FLdRfVar var_B4
  loc_B34AB2: FnCDateVar
  loc_B34AB4: CVarDate var_DC
  loc_B34AB8: HardType
  loc_B34AB9: LitI2_Byte 1
  loc_B34ABB: LitI2_Byte 1
  loc_B34ABD: ILdRf var_BC
  loc_B34AC0: CI2Str
  loc_B34AC2: FLdRfVar var_CC
  loc_B34AC5: ImpAdCallFPR4  = DateSerial(, , )
  loc_B34ACA: FLdRfVar var_CC
  loc_B34ACD: EqVar var_EC
  loc_B34AD1: FLdRfVar var_118
  loc_B34AD4: FLdRfVar var_108
  loc_B34AD7: LitVarStr var_104, "CodiTias"
  loc_B34ADC: PopAdLdVar
  loc_B34ADD: FLdRfVar var_F4
  loc_B34AE0: FLdRfVar var_F0
  loc_B34AE3: FLdPr var_88
  loc_B34AE6: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34AEB: FLdPr var_F0
  loc_B34AEE:  = Me.Fields
  loc_B34AF3: FLdPr var_F4
  loc_B34AF6: from_stack_2 = Me.Item(from_stack_1)
  loc_B34AFB: FLdPr var_108
  loc_B34AFE:  = Me.Value
  loc_B34B03: FLdRfVar var_118
  loc_B34B06: FnCIntVar
  loc_B34B08: LitI2_Byte &H11
  loc_B34B0A: EqI2
  loc_B34B0B: CVarBoolI2 var_128
  loc_B34B0F: OrVar var_138
  loc_B34B13: FLdRfVar var_164
  loc_B34B16: FLdRfVar var_154
  loc_B34B19: LitVarStr var_150, "CodiTias"
  loc_B34B1E: PopAdLdVar
  loc_B34B1F: FLdRfVar var_140
  loc_B34B22: FLdRfVar var_13C
  loc_B34B25: FLdPr var_88
  loc_B34B28: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34B2D: FLdPr var_13C
  loc_B34B30:  = Me.Fields
  loc_B34B35: FLdPr var_140
  loc_B34B38: from_stack_2 = Me.Item(from_stack_1)
  loc_B34B3D: FLdPr var_154
  loc_B34B40:  = Me.Value
  loc_B34B45: FLdRfVar var_164
  loc_B34B48: FnCIntVar
  loc_B34B4A: LitI2_Byte &H12
  loc_B34B4C: EqI2
  loc_B34B4D: CVarBoolI2 var_174
  loc_B34B51: OrVar var_184
  loc_B34B55: CBoolVarNull
  loc_B34B57: FFree1Str var_BC
  loc_B34B5A: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_B8 = "": var_F0 = "": var_F4 = "": var_108 = "": var_13C = "": var_140 = ""
  loc_B34B71: FFreeVar var_B4 = "": var_CC = "": var_118 = "": var_128 = "": var_164 = ""
  loc_B34B80: BranchF loc_B34F03
  loc_B34B83: FLdRfVar var_B4
  loc_B34B86: FLdRfVar var_A4
  loc_B34B89: LitVarStr var_A0, "DebeMoas"
  loc_B34B8E: PopAdLdVar
  loc_B34B8F: FLdRfVar var_90
  loc_B34B92: FLdRfVar var_8C
  loc_B34B95: FLdPr var_88
  loc_B34B98: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34B9D: FLdPr var_8C
  loc_B34BA0:  = Me.Fields
  loc_B34BA5: FLdPr var_90
  loc_B34BA8: from_stack_2 = Me.Item(from_stack_1)
  loc_B34BAD: FLdPr var_A4
  loc_B34BB0:  = Me.Value
  loc_B34BB5: FLdRfVar var_B4
  loc_B34BB8: LitVarStr var_DC, "0"
  loc_B34BBD: HardType
  loc_B34BBE: NeVarBool
  loc_B34BC0: FFreeAd var_8C = "": var_90 = ""
  loc_B34BC9: FFree1Var var_B4 = ""
  loc_B34BCC: BranchF loc_B34CEC
  loc_B34BCF: FLdRfVar var_A4
  loc_B34BD2: LitVarStr var_A0, "DebeMoas"
  loc_B34BD7: PopAdLdVar
  loc_B34BD8: FLdRfVar var_90
  loc_B34BDB: FLdRfVar var_8C
  loc_B34BDE: FLdPr var_88
  loc_B34BE1: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34BE6: FLdPr var_8C
  loc_B34BE9:  = Me.Fields
  loc_B34BEE: FLdPr var_90
  loc_B34BF1: from_stack_2 = Me.Item(from_stack_1)
  loc_B34BF6: LitI2_Byte 0
  loc_B34BF8: FLdPr Me
  loc_B34BFB: MemLdI2 global_92
  loc_B34BFE: CI4UI1
  loc_B34BFF: FLdPr Me
  loc_B34C02: MemLdI2 global_98
  loc_B34C05: CI4UI1
  loc_B34C06: FLdPr Me
  loc_B34C09: MemLdI2 global_96
  loc_B34C0C: CI4UI1
  loc_B34C0D: FLdPr Me
  loc_B34C10: MemLdI2 global_94
  loc_B34C13: CI4UI1
  loc_B34C14: FLdPr Me
  loc_B34C17: MemLdStr global_84
  loc_B34C1A: AryLock
  loc_B34C1D: Ary1LdPr
  loc_B34C1E: MemLdStr global_8
  loc_B34C21: AryLock
  loc_B34C24: Ary1LdPr
  loc_B34C25: MemLdStr global_8
  loc_B34C28: AryLock
  loc_B34C2B: Ary1LdPr
  loc_B34C2C: MemLdStr global_8
  loc_B34C2F: AryLock
  loc_B34C32: Ary1LdPr
  loc_B34C33: MemLdRfVar from_stack_1.global_8
  loc_B34C36: CVarRef
  loc_B34C3B: LitI2_Byte &HFF
  loc_B34C3D: FLdZeroAd var_A4
  loc_B34C40: CVarAd
  loc_B34C44: PopAdLdVar
  loc_B34C45: FLdPr Me
  loc_B34C48: MemLdRfVar from_stack_1.global_112
  loc_B34C4B: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B34C50: AryUnlock
  loc_B34C53: AryUnlock
  loc_B34C56: AryUnlock
  loc_B34C59: AryUnlock
  loc_B34C5C: FFreeAd var_8C = ""
  loc_B34C63: FFree1Var var_B4 = ""
  loc_B34C66: FLdRfVar var_A4
  loc_B34C69: LitVarStr var_A0, "DebeMoas"
  loc_B34C6E: PopAdLdVar
  loc_B34C6F: FLdRfVar var_90
  loc_B34C72: FLdRfVar var_8C
  loc_B34C75: FLdPr var_88
  loc_B34C78: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34C7D: FLdPr var_8C
  loc_B34C80:  = Me.Fields
  loc_B34C85: FLdPr var_90
  loc_B34C88: from_stack_2 = Me.Item(from_stack_1)
  loc_B34C8D: LitI2_Byte 0
  loc_B34C8F: FLdPr Me
  loc_B34C92: MemLdI2 global_98
  loc_B34C95: CI4UI1
  loc_B34C96: FLdPr Me
  loc_B34C99: MemLdI2 global_96
  loc_B34C9C: CI4UI1
  loc_B34C9D: FLdPr Me
  loc_B34CA0: MemLdI2 global_94
  loc_B34CA3: CI4UI1
  loc_B34CA4: FLdPr Me
  loc_B34CA7: MemLdStr global_84
  loc_B34CAA: AryLock
  loc_B34CAD: Ary1LdPr
  loc_B34CAE: MemLdStr global_8
  loc_B34CB1: AryLock
  loc_B34CB4: Ary1LdPr
  loc_B34CB5: MemLdStr global_8
  loc_B34CB8: AryLock
  loc_B34CBB: Ary1LdPr
  loc_B34CBC: MemLdRfVar from_stack_1.global_20
  loc_B34CBF: CVarRef
  loc_B34CC4: LitI2_Byte &HFF
  loc_B34CC6: FLdZeroAd var_A4
  loc_B34CC9: CVarAd
  loc_B34CCD: PopAdLdVar
  loc_B34CCE: FLdPr Me
  loc_B34CD1: MemLdRfVar from_stack_1.global_112
  loc_B34CD4: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B34CD9: AryUnlock
  loc_B34CDC: AryUnlock
  loc_B34CDF: AryUnlock
  loc_B34CE2: FFreeAd var_8C = ""
  loc_B34CE9: FFree1Var var_B4 = ""
  loc_B34CEC: FLdRfVar var_B4
  loc_B34CEF: FLdRfVar var_A4
  loc_B34CF2: LitVarStr var_A0, "HabeMoas"
  loc_B34CF7: PopAdLdVar
  loc_B34CF8: FLdRfVar var_90
  loc_B34CFB: FLdRfVar var_8C
  loc_B34CFE: FLdPr var_88
  loc_B34D01: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34D06: FLdPr var_8C
  loc_B34D09:  = Me.Fields
  loc_B34D0E: FLdPr var_90
  loc_B34D11: from_stack_2 = Me.Item(from_stack_1)
  loc_B34D16: FLdPr var_A4
  loc_B34D19:  = Me.Value
  loc_B34D1E: FLdRfVar var_B4
  loc_B34D21: LitVarStr var_DC, "0"
  loc_B34D26: HardType
  loc_B34D27: NeVarBool
  loc_B34D29: FFreeAd var_8C = "": var_90 = ""
  loc_B34D32: FFree1Var var_B4 = ""
  loc_B34D35: BranchF loc_B34E55
  loc_B34D38: FLdRfVar var_A4
  loc_B34D3B: LitVarStr var_A0, "HabeMoas"
  loc_B34D40: PopAdLdVar
  loc_B34D41: FLdRfVar var_90
  loc_B34D44: FLdRfVar var_8C
  loc_B34D47: FLdPr var_88
  loc_B34D4A: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34D4F: FLdPr var_8C
  loc_B34D52:  = Me.Fields
  loc_B34D57: FLdPr var_90
  loc_B34D5A: from_stack_2 = Me.Item(from_stack_1)
  loc_B34D5F: LitI2_Byte 0
  loc_B34D61: FLdPr Me
  loc_B34D64: MemLdI2 global_92
  loc_B34D67: CI4UI1
  loc_B34D68: FLdPr Me
  loc_B34D6B: MemLdI2 global_98
  loc_B34D6E: CI4UI1
  loc_B34D6F: FLdPr Me
  loc_B34D72: MemLdI2 global_96
  loc_B34D75: CI4UI1
  loc_B34D76: FLdPr Me
  loc_B34D79: MemLdI2 global_94
  loc_B34D7C: CI4UI1
  loc_B34D7D: FLdPr Me
  loc_B34D80: MemLdStr global_84
  loc_B34D83: AryLock
  loc_B34D86: Ary1LdPr
  loc_B34D87: MemLdStr global_8
  loc_B34D8A: AryLock
  loc_B34D8D: Ary1LdPr
  loc_B34D8E: MemLdStr global_8
  loc_B34D91: AryLock
  loc_B34D94: Ary1LdPr
  loc_B34D95: MemLdStr global_8
  loc_B34D98: AryLock
  loc_B34D9B: Ary1LdPr
  loc_B34D9C: MemLdRfVar from_stack_1.global_12
  loc_B34D9F: CVarRef
  loc_B34DA4: LitI2_Byte &HFF
  loc_B34DA6: FLdZeroAd var_A4
  loc_B34DA9: CVarAd
  loc_B34DAD: PopAdLdVar
  loc_B34DAE: FLdPr Me
  loc_B34DB1: MemLdRfVar from_stack_1.global_112
  loc_B34DB4: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B34DB9: AryUnlock
  loc_B34DBC: AryUnlock
  loc_B34DBF: AryUnlock
  loc_B34DC2: AryUnlock
  loc_B34DC5: FFreeAd var_8C = ""
  loc_B34DCC: FFree1Var var_B4 = ""
  loc_B34DCF: FLdRfVar var_A4
  loc_B34DD2: LitVarStr var_A0, "HabeMoas"
  loc_B34DD7: PopAdLdVar
  loc_B34DD8: FLdRfVar var_90
  loc_B34DDB: FLdRfVar var_8C
  loc_B34DDE: FLdPr var_88
  loc_B34DE1: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34DE6: FLdPr var_8C
  loc_B34DE9:  = Me.Fields
  loc_B34DEE: FLdPr var_90
  loc_B34DF1: from_stack_2 = Me.Item(from_stack_1)
  loc_B34DF6: LitI2_Byte 0
  loc_B34DF8: FLdPr Me
  loc_B34DFB: MemLdI2 global_98
  loc_B34DFE: CI4UI1
  loc_B34DFF: FLdPr Me
  loc_B34E02: MemLdI2 global_96
  loc_B34E05: CI4UI1
  loc_B34E06: FLdPr Me
  loc_B34E09: MemLdI2 global_94
  loc_B34E0C: CI4UI1
  loc_B34E0D: FLdPr Me
  loc_B34E10: MemLdStr global_84
  loc_B34E13: AryLock
  loc_B34E16: Ary1LdPr
  loc_B34E17: MemLdStr global_8
  loc_B34E1A: AryLock
  loc_B34E1D: Ary1LdPr
  loc_B34E1E: MemLdStr global_8
  loc_B34E21: AryLock
  loc_B34E24: Ary1LdPr
  loc_B34E25: MemLdRfVar from_stack_1.global_24
  loc_B34E28: CVarRef
  loc_B34E2D: LitI2_Byte &HFF
  loc_B34E2F: FLdZeroAd var_A4
  loc_B34E32: CVarAd
  loc_B34E36: PopAdLdVar
  loc_B34E37: FLdPr Me
  loc_B34E3A: MemLdRfVar from_stack_1.global_112
  loc_B34E3D: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B34E42: AryUnlock
  loc_B34E45: AryUnlock
  loc_B34E48: AryUnlock
  loc_B34E4B: FFreeAd var_8C = ""
  loc_B34E52: FFree1Var var_B4 = ""
  loc_B34E55: FLdPr Me
  loc_B34E58: MemLdI2 global_98
  loc_B34E5B: CI4UI1
  loc_B34E5C: FLdPr Me
  loc_B34E5F: MemLdI2 global_96
  loc_B34E62: CI4UI1
  loc_B34E63: FLdPr Me
  loc_B34E66: MemLdI2 global_94
  loc_B34E69: CI4UI1
  loc_B34E6A: FLdPr Me
  loc_B34E6D: MemLdStr global_84
  loc_B34E70: AryLock
  loc_B34E73: Ary1LdPr
  loc_B34E74: MemLdStr global_8
  loc_B34E77: AryLock
  loc_B34E7A: Ary1LdPr
  loc_B34E7B: MemLdStr global_8
  loc_B34E7E: AryLock
  loc_B34E81: Ary1LdRf
  loc_B34E82: FStR4 var_1A4
  loc_B34E85: FLdPr Me
  loc_B34E88: MemLdI2 global_92
  loc_B34E8B: CI4UI1
  loc_B34E8C: FMemLdR4 var_1A4(8)
  loc_B34E91: AryLock
  loc_B34E94: Ary1LdPr
  loc_B34E95: MemLdRfVar from_stack_1.global_20
  loc_B34E98: FLdPr Me
  loc_B34E9B: MemLdI2 global_92
  loc_B34E9E: CI4UI1
  loc_B34E9F: FMemLdR4 var_1A4(8)
  loc_B34EA4: AryLock
  loc_B34EA7: Ary1LdPr
  loc_B34EA8: MemLdRfVar from_stack_1.global_16
  loc_B34EAB: FLdPr Me
  loc_B34EAE: MemLdI2 global_92
  loc_B34EB1: CI4UI1
  loc_B34EB2: FMemLdR4 var_1A4(8)
  loc_B34EB7: Ary1LdPr
  loc_B34EB8: MemLdStr global_12
  loc_B34EBB: FLdPr Me
  loc_B34EBE: MemLdI2 global_92
  loc_B34EC1: CI4UI1
  loc_B34EC2: FMemLdR4 var_1A4(8)
  loc_B34EC7: Ary1LdPr
  loc_B34EC8: MemLdStr global_8
  loc_B34ECB: Call Proc_292_28_9E440C()
  loc_B34ED0: AryUnlock
  loc_B34ED3: AryUnlock
  loc_B34ED6: FMemLdRf unk_46F601
  loc_B34EDB: FMemLdRf unk_46F601
  loc_B34EE0: FMemLdR4 var_1A4(24)
  loc_B34EE5: FMemLdR4 var_1A4(20)
  loc_B34EEA: Call Proc_292_28_9E440C()
  loc_B34EEF: LitI4 0
  loc_B34EF4: FStR4 var_1A4
  loc_B34EF7: AryUnlock
  loc_B34EFA: AryUnlock
  loc_B34EFD: AryUnlock
  loc_B34F00: Branch loc_B35280
  loc_B34F03: FLdRfVar var_B4
  loc_B34F06: FLdRfVar var_A4
  loc_B34F09: LitVarStr var_A0, "DebeMoas"
  loc_B34F0E: PopAdLdVar
  loc_B34F0F: FLdRfVar var_90
  loc_B34F12: FLdRfVar var_8C
  loc_B34F15: FLdPr var_88
  loc_B34F18: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34F1D: FLdPr var_8C
  loc_B34F20:  = Me.Fields
  loc_B34F25: FLdPr var_90
  loc_B34F28: from_stack_2 = Me.Item(from_stack_1)
  loc_B34F2D: FLdPr var_A4
  loc_B34F30:  = Me.Value
  loc_B34F35: FLdRfVar var_B4
  loc_B34F38: LitVarStr var_DC, "0"
  loc_B34F3D: HardType
  loc_B34F3E: NeVarBool
  loc_B34F40: FFreeAd var_8C = "": var_90 = ""
  loc_B34F49: FFree1Var var_B4 = ""
  loc_B34F4C: BranchF loc_B3506C
  loc_B34F4F: FLdRfVar var_A4
  loc_B34F52: LitVarStr var_A0, "DebeMoas"
  loc_B34F57: PopAdLdVar
  loc_B34F58: FLdRfVar var_90
  loc_B34F5B: FLdRfVar var_8C
  loc_B34F5E: FLdPr var_88
  loc_B34F61: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34F66: FLdPr var_8C
  loc_B34F69:  = Me.Fields
  loc_B34F6E: FLdPr var_90
  loc_B34F71: from_stack_2 = Me.Item(from_stack_1)
  loc_B34F76: LitI2_Byte 0
  loc_B34F78: FLdPr Me
  loc_B34F7B: MemLdI2 global_92
  loc_B34F7E: CI4UI1
  loc_B34F7F: FLdPr Me
  loc_B34F82: MemLdI2 global_98
  loc_B34F85: CI4UI1
  loc_B34F86: FLdPr Me
  loc_B34F89: MemLdI2 global_96
  loc_B34F8C: CI4UI1
  loc_B34F8D: FLdPr Me
  loc_B34F90: MemLdI2 global_94
  loc_B34F93: CI4UI1
  loc_B34F94: FLdPr Me
  loc_B34F97: MemLdStr global_84
  loc_B34F9A: AryLock
  loc_B34F9D: Ary1LdPr
  loc_B34F9E: MemLdStr global_8
  loc_B34FA1: AryLock
  loc_B34FA4: Ary1LdPr
  loc_B34FA5: MemLdStr global_8
  loc_B34FA8: AryLock
  loc_B34FAB: Ary1LdPr
  loc_B34FAC: MemLdStr global_8
  loc_B34FAF: AryLock
  loc_B34FB2: Ary1LdPr
  loc_B34FB3: MemLdRfVar from_stack_1.global_32
  loc_B34FB6: CVarRef
  loc_B34FBB: LitI2_Byte &HFF
  loc_B34FBD: FLdZeroAd var_A4
  loc_B34FC0: CVarAd
  loc_B34FC4: PopAdLdVar
  loc_B34FC5: FLdPr Me
  loc_B34FC8: MemLdRfVar from_stack_1.global_112
  loc_B34FCB: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B34FD0: AryUnlock
  loc_B34FD3: AryUnlock
  loc_B34FD6: AryUnlock
  loc_B34FD9: AryUnlock
  loc_B34FDC: FFreeAd var_8C = ""
  loc_B34FE3: FFree1Var var_B4 = ""
  loc_B34FE6: FLdRfVar var_A4
  loc_B34FE9: LitVarStr var_A0, "DebeMoas"
  loc_B34FEE: PopAdLdVar
  loc_B34FEF: FLdRfVar var_90
  loc_B34FF2: FLdRfVar var_8C
  loc_B34FF5: FLdPr var_88
  loc_B34FF8: from_stack_1v = clsasiento.RsFrmGet()
  loc_B34FFD: FLdPr var_8C
  loc_B35000:  = Me.Fields
  loc_B35005: FLdPr var_90
  loc_B35008: from_stack_2 = Me.Item(from_stack_1)
  loc_B3500D: LitI2_Byte 0
  loc_B3500F: FLdPr Me
  loc_B35012: MemLdI2 global_98
  loc_B35015: CI4UI1
  loc_B35016: FLdPr Me
  loc_B35019: MemLdI2 global_96
  loc_B3501C: CI4UI1
  loc_B3501D: FLdPr Me
  loc_B35020: MemLdI2 global_94
  loc_B35023: CI4UI1
  loc_B35024: FLdPr Me
  loc_B35027: MemLdStr global_84
  loc_B3502A: AryLock
  loc_B3502D: Ary1LdPr
  loc_B3502E: MemLdStr global_8
  loc_B35031: AryLock
  loc_B35034: Ary1LdPr
  loc_B35035: MemLdStr global_8
  loc_B35038: AryLock
  loc_B3503B: Ary1LdPr
  loc_B3503C: MemLdRfVar from_stack_1.global_44
  loc_B3503F: CVarRef
  loc_B35044: LitI2_Byte &HFF
  loc_B35046: FLdZeroAd var_A4
  loc_B35049: CVarAd
  loc_B3504D: PopAdLdVar
  loc_B3504E: FLdPr Me
  loc_B35051: MemLdRfVar from_stack_1.global_112
  loc_B35054: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B35059: AryUnlock
  loc_B3505C: AryUnlock
  loc_B3505F: AryUnlock
  loc_B35062: FFreeAd var_8C = ""
  loc_B35069: FFree1Var var_B4 = ""
  loc_B3506C: FLdRfVar var_B4
  loc_B3506F: FLdRfVar var_A4
  loc_B35072: LitVarStr var_A0, "HabeMoas"
  loc_B35077: PopAdLdVar
  loc_B35078: FLdRfVar var_90
  loc_B3507B: FLdRfVar var_8C
  loc_B3507E: FLdPr var_88
  loc_B35081: from_stack_1v = clsasiento.RsFrmGet()
  loc_B35086: FLdPr var_8C
  loc_B35089:  = Me.Fields
  loc_B3508E: FLdPr var_90
  loc_B35091: from_stack_2 = Me.Item(from_stack_1)
  loc_B35096: FLdPr var_A4
  loc_B35099:  = Me.Value
  loc_B3509E: FLdRfVar var_B4
  loc_B350A1: LitVarStr var_DC, "0"
  loc_B350A6: HardType
  loc_B350A7: NeVarBool
  loc_B350A9: FFreeAd var_8C = "": var_90 = ""
  loc_B350B2: FFree1Var var_B4 = ""
  loc_B350B5: BranchF loc_B351D5
  loc_B350B8: FLdRfVar var_A4
  loc_B350BB: LitVarStr var_A0, "HabeMoas"
  loc_B350C0: PopAdLdVar
  loc_B350C1: FLdRfVar var_90
  loc_B350C4: FLdRfVar var_8C
  loc_B350C7: FLdPr var_88
  loc_B350CA: from_stack_1v = clsasiento.RsFrmGet()
  loc_B350CF: FLdPr var_8C
  loc_B350D2:  = Me.Fields
  loc_B350D7: FLdPr var_90
  loc_B350DA: from_stack_2 = Me.Item(from_stack_1)
  loc_B350DF: LitI2_Byte 0
  loc_B350E1: FLdPr Me
  loc_B350E4: MemLdI2 global_92
  loc_B350E7: CI4UI1
  loc_B350E8: FLdPr Me
  loc_B350EB: MemLdI2 global_98
  loc_B350EE: CI4UI1
  loc_B350EF: FLdPr Me
  loc_B350F2: MemLdI2 global_96
  loc_B350F5: CI4UI1
  loc_B350F6: FLdPr Me
  loc_B350F9: MemLdI2 global_94
  loc_B350FC: CI4UI1
  loc_B350FD: FLdPr Me
  loc_B35100: MemLdStr global_84
  loc_B35103: AryLock
  loc_B35106: Ary1LdPr
  loc_B35107: MemLdStr global_8
  loc_B3510A: AryLock
  loc_B3510D: Ary1LdPr
  loc_B3510E: MemLdStr global_8
  loc_B35111: AryLock
  loc_B35114: Ary1LdPr
  loc_B35115: MemLdStr global_8
  loc_B35118: AryLock
  loc_B3511B: Ary1LdPr
  loc_B3511C: MemLdRfVar from_stack_1.global_36
  loc_B3511F: CVarRef
  loc_B35124: LitI2_Byte &HFF
  loc_B35126: FLdZeroAd var_A4
  loc_B35129: CVarAd
  loc_B3512D: PopAdLdVar
  loc_B3512E: FLdPr Me
  loc_B35131: MemLdRfVar from_stack_1.global_112
  loc_B35134: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B35139: AryUnlock
  loc_B3513C: AryUnlock
  loc_B3513F: AryUnlock
  loc_B35142: AryUnlock
  loc_B35145: FFreeAd var_8C = ""
  loc_B3514C: FFree1Var var_B4 = ""
  loc_B3514F: FLdRfVar var_A4
  loc_B35152: LitVarStr var_A0, "HabeMoas"
  loc_B35157: PopAdLdVar
  loc_B35158: FLdRfVar var_90
  loc_B3515B: FLdRfVar var_8C
  loc_B3515E: FLdPr var_88
  loc_B35161: from_stack_1v = clsasiento.RsFrmGet()
  loc_B35166: FLdPr var_8C
  loc_B35169:  = Me.Fields
  loc_B3516E: FLdPr var_90
  loc_B35171: from_stack_2 = Me.Item(from_stack_1)
  loc_B35176: LitI2_Byte 0
  loc_B35178: FLdPr Me
  loc_B3517B: MemLdI2 global_98
  loc_B3517E: CI4UI1
  loc_B3517F: FLdPr Me
  loc_B35182: MemLdI2 global_96
  loc_B35185: CI4UI1
  loc_B35186: FLdPr Me
  loc_B35189: MemLdI2 global_94
  loc_B3518C: CI4UI1
  loc_B3518D: FLdPr Me
  loc_B35190: MemLdStr global_84
  loc_B35193: AryLock
  loc_B35196: Ary1LdPr
  loc_B35197: MemLdStr global_8
  loc_B3519A: AryLock
  loc_B3519D: Ary1LdPr
  loc_B3519E: MemLdStr global_8
  loc_B351A1: AryLock
  loc_B351A4: Ary1LdPr
  loc_B351A5: MemLdRfVar from_stack_1.global_48
  loc_B351A8: CVarRef
  loc_B351AD: LitI2_Byte &HFF
  loc_B351AF: FLdZeroAd var_A4
  loc_B351B2: CVarAd
  loc_B351B6: PopAdLdVar
  loc_B351B7: FLdPr Me
  loc_B351BA: MemLdRfVar from_stack_1.global_112
  loc_B351BD: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_B351C2: AryUnlock
  loc_B351C5: AryUnlock
  loc_B351C8: AryUnlock
  loc_B351CB: FFreeAd var_8C = ""
  loc_B351D2: FFree1Var var_B4 = ""
  loc_B351D5: FLdPr Me
  loc_B351D8: MemLdI2 global_98
  loc_B351DB: CI4UI1
  loc_B351DC: FLdPr Me
  loc_B351DF: MemLdI2 global_96
  loc_B351E2: CI4UI1
  loc_B351E3: FLdPr Me
  loc_B351E6: MemLdI2 global_94
  loc_B351E9: CI4UI1
  loc_B351EA: FLdPr Me
  loc_B351ED: MemLdStr global_84
  loc_B351F0: AryLock
  loc_B351F3: Ary1LdPr
  loc_B351F4: MemLdStr global_8
  loc_B351F7: AryLock
  loc_B351FA: Ary1LdPr
  loc_B351FB: MemLdStr global_8
  loc_B351FE: AryLock
  loc_B35201: Ary1LdRf
  loc_B35202: FStR4 var_1B4
  loc_B35205: FLdPr Me
  loc_B35208: MemLdI2 global_92
  loc_B3520B: CI4UI1
  loc_B3520C: FMemLdR4 var_1B4(8)
  loc_B35211: AryLock
  loc_B35214: Ary1LdPr
  loc_B35215: MemLdRfVar from_stack_1.global_28
  loc_B35218: FLdPr Me
  loc_B3521B: MemLdI2 global_92
  loc_B3521E: CI4UI1
  loc_B3521F: FMemLdR4 var_1B4(8)
  loc_B35224: AryLock
  loc_B35227: Ary1LdPr
  loc_B35228: MemLdRfVar from_stack_1.global_24
  loc_B3522B: FLdPr Me
  loc_B3522E: MemLdI2 global_92
  loc_B35231: CI4UI1
  loc_B35232: FMemLdR4 var_1B4(8)
  loc_B35237: Ary1LdPr
  loc_B35238: MemLdStr global_36
  loc_B3523B: FLdPr Me
  loc_B3523E: MemLdI2 global_92
  loc_B35241: CI4UI1
  loc_B35242: FMemLdR4 var_1B4(8)
  loc_B35247: Ary1LdPr
  loc_B35248: MemLdStr global_32
  loc_B3524B: Call Proc_292_28_9E440C()
  loc_B35250: AryUnlock
  loc_B35253: AryUnlock
  loc_B35256: FMemLdRf 0
  loc_B3525B: FMemLdRf 0
  loc_B35260: FMemLdR4 var_1B4(48)
  loc_B35265: FMemLdR4 var_1B4(44)
  loc_B3526A: Call Proc_292_28_9E440C()
  loc_B3526F: LitI4 0
  loc_B35274: FStR4 var_1B4
  loc_B35277: AryUnlock
  loc_B3527A: AryUnlock
  loc_B3527D: AryUnlock
  loc_B35280: FLdPr Me
  loc_B35283: MemLdI2 global_98
  loc_B35286: CI4UI1
  loc_B35287: FLdPr Me
  loc_B3528A: MemLdI2 global_96
  loc_B3528D: CI4UI1
  loc_B3528E: FLdPr Me
  loc_B35291: MemLdI2 global_94
  loc_B35294: CI4UI1
  loc_B35295: FLdPr Me
  loc_B35298: MemLdStr global_84
  loc_B3529B: AryLock
  loc_B3529E: Ary1LdPr
  loc_B3529F: MemLdStr global_8
  loc_B352A2: AryLock
  loc_B352A5: Ary1LdPr
  loc_B352A6: MemLdStr global_8
  loc_B352A9: AryLock
  loc_B352AC: Ary1LdRf
  loc_B352AD: FStR4 var_1C4
  loc_B352B0: FLdRfVar var_1CC
  loc_B352B3: FLdPr Me
  loc_B352B6: MemLdI2 global_92
  loc_B352B9: CI4UI1
  loc_B352BA: FMemLdR4 var_1C4(8)
  loc_B352BF: Ary1LdPr
  loc_B352C0: MemLdStr global_32
  loc_B352C3: FLdPr Me
  loc_B352C6: MemLdI2 global_92
  loc_B352C9: CI4UI1
  loc_B352CA: FMemLdR4 var_1C4(8)
  loc_B352CF: Ary1LdPr
  loc_B352D0: MemLdStr global_8
  loc_B352D3: Call Proc_292_27_9A5BE0()
  loc_B352D8: FLdRfVar var_1D4
  loc_B352DB: FLdPr Me
  loc_B352DE: MemLdI2 global_92
  loc_B352E1: CI4UI1
  loc_B352E2: FMemLdR4 var_1C4(8)
  loc_B352E7: Ary1LdPr
  loc_B352E8: MemLdStr global_36
  loc_B352EB: FLdPr Me
  loc_B352EE: MemLdI2 global_92
  loc_B352F1: CI4UI1
  loc_B352F2: FMemLdR4 var_1C4(8)
  loc_B352F7: Ary1LdPr
  loc_B352F8: MemLdStr global_12
  loc_B352FB: Call Proc_292_27_9A5BE0()
  loc_B35300: FLdPr Me
  loc_B35303: MemLdI2 global_92
  loc_B35306: CI4UI1
  loc_B35307: FMemLdR4 var_1C4(8)
  loc_B3530C: AryLock
  loc_B3530F: Ary1LdPr
  loc_B35310: MemLdRfVar from_stack_1.htmFile
  loc_B35313: FLdPr Me
  loc_B35316: MemLdI2 global_92
  loc_B35319: CI4UI1
  loc_B3531A: FMemLdR4 var_1C4(8)
  loc_B3531F: AryLock
  loc_B35322: Ary1LdPr
  loc_B35323: MemLdRfVar from_stack_1.global_48
  loc_B35326: FLdFPR8 var_1D4
  loc_B35329: CStrR8
  loc_B3532B: FStStrNoPop var_1D8
  loc_B3532E: FLdFPR8 var_1CC
  loc_B35331: CStrR8
  loc_B35333: FStStrNoPop var_BC
  loc_B35336: Call Proc_292_28_9E440C()
  loc_B3533B: AryUnlock
  loc_B3533E: AryUnlock
  loc_B35341: FFreeStr var_BC = ""
  loc_B35348: FLdRfVar var_1CC
  loc_B3534B: FMemLdR4 var_1C4(44)
  loc_B35350: FMemLdR4 var_1C4(20)
  loc_B35355: Call Proc_292_27_9A5BE0()
  loc_B3535A: FLdRfVar var_1D4
  loc_B3535D: FMemLdR4 var_1C4(48)
  loc_B35362: FMemLdR4 var_1C4(24)
  loc_B35367: Call Proc_292_27_9A5BE0()
  loc_B3536C: FMemLdRf 0
  loc_B35371: FMemLdRf 0
  loc_B35376: FLdFPR8 var_1D4
  loc_B35379: CStrR8
  loc_B3537B: FStStrNoPop var_1D8
  loc_B3537E: FLdFPR8 var_1CC
  loc_B35381: CStrR8
  loc_B35383: FStStrNoPop var_BC
  loc_B35386: Call Proc_292_28_9E440C()
  loc_B3538B: FFreeStr var_BC = ""
  loc_B35392: LitI4 0
  loc_B35397: FStR4 var_1C4
  loc_B3539A: AryUnlock
  loc_B3539D: AryUnlock
  loc_B353A0: AryUnlock
  loc_B353A3: LitNothing
  loc_B353A5: FStAd var_88 
  loc_B353A9: ExitProcHresult
End Function

Private Function Proc_292_27_9A5BE0(arg_C, arg_10) '9A5BE0
  'Data Table: 46F7A4
  loc_9A5B5C: ILdRf arg_C
  loc_9A5B5F: FStStrCopy var_90
  loc_9A5B62: ILdRf arg_10
  loc_9A5B65: FStStrCopy var_94
  loc_9A5B68: LitVarI2 var_D4, 0
  loc_9A5B6D: FLdRfVar var_90
  loc_9A5B70: CVarRef
  loc_9A5B75: ILdRf var_90
  loc_9A5B78: LitStr vbNullString
  loc_9A5B7B: NeStr
  loc_9A5B7D: CVarBoolI2 var_A4
  loc_9A5B81: FLdRfVar var_E4
  loc_9A5B84: ImpAdCallFPR4  = IIf(, , )
  loc_9A5B89: FLdRfVar var_E4
  loc_9A5B8C: CStrVarTmp
  loc_9A5B8D: FStStr var_90
  loc_9A5B90: FFreeVar var_A4 = "": var_D4 = ""
  loc_9A5B99: LitVarI2 var_D4, 0
  loc_9A5B9E: FLdRfVar var_94
  loc_9A5BA1: CVarRef
  loc_9A5BA6: ILdRf var_94
  loc_9A5BA9: LitStr vbNullString
  loc_9A5BAC: NeStr
  loc_9A5BAE: CVarBoolI2 var_A4
  loc_9A5BB2: FLdRfVar var_E4
  loc_9A5BB5: ImpAdCallFPR4  = IIf(, , )
  loc_9A5BBA: FLdRfVar var_E4
  loc_9A5BBD: CStrVarTmp
  loc_9A5BBE: FStStr var_94
  loc_9A5BC1: FFreeVar var_A4 = "": var_D4 = ""
  loc_9A5BCA: ILdRf var_90
  loc_9A5BCD: CR8Str
  loc_9A5BCF: ILdRf var_94
  loc_9A5BD2: CR8Str
  loc_9A5BD4: AddR8
  loc_9A5BD5: FStFPR8 var_8C
  loc_9A5BD8: ExitProcCbHresult
  loc_9A5BDE: CRec2Ansi arg_2C00
End Function

Private Function Proc_292_28_9E440C(arg_C, arg_10, arg_14, arg_18) '9E440C
  'Data Table: 46F7A4
  loc_9E42F4: ILdRf arg_C
  loc_9E42F7: FStStrCopy var_88
  loc_9E42FA: ILdRf arg_10
  loc_9E42FD: FStStrCopy var_8C
  loc_9E4300: ILdRf var_88
  loc_9E4303: LitStr vbNullString
  loc_9E4306: EqStr
  loc_9E4308: BranchF loc_9E4311
  loc_9E430B: LitStr "0"
  loc_9E430E: FStStrCopy var_88
  loc_9E4311: ILdRf var_8C
  loc_9E4314: LitStr vbNullString
  loc_9E4317: EqStr
  loc_9E4319: BranchF loc_9E4322
  loc_9E431C: LitStr "0"
  loc_9E431F: FStStrCopy var_8C
  loc_9E4322: LitI4 2
  loc_9E4327: ILdRf var_88
  loc_9E432A: CR8Str
  loc_9E432C: ILdRf var_8C
  loc_9E432F: CR8Str
  loc_9E4331: SubR4
  loc_9E4332: CVarR8
  loc_9E4336: FLdRfVar var_C4
  loc_9E4339: ImpAdCallFPR4  = Round(, )
  loc_9E433E: FLdRfVar var_C4
  loc_9E4341: CR4Var
  loc_9E4342: FStFPR8 var_94
  loc_9E4345: FFreeVar var_B4 = ""
  loc_9E434C: FLdFPR8 var_94
  loc_9E434F: FStFPR8 var_CC
  loc_9E4352: FLdFPR8 var_CC
  loc_9E4355: LitI2_Byte 0
  loc_9E4357: CR8I2
  loc_9E4358: GtR4
  loc_9E4359: BranchF loc_9E4391
  loc_9E435C: LitI2_Byte 0
  loc_9E435E: LitVar_Missing var_B4
  loc_9E4361: LitI2_Byte &HFF
  loc_9E4363: FLdFPR8 var_94
  loc_9E4366: CVarR8
  loc_9E436A: PopAdLdVar
  loc_9E436B: ILdRf arg_14
  loc_9E436E: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_9E4373: FFree1Var var_B4 = ""
  loc_9E4376: LitI2_Byte 0
  loc_9E4378: LitVar_Missing var_B4
  loc_9E437B: LitI2_Byte 0
  loc_9E437D: LitVarStr var_A4, vbNullString
  loc_9E4382: PopAdLdVar
  loc_9E4383: ILdRf arg_18
  loc_9E4386: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_9E438B: FFree1Var var_B4 = ""
  loc_9E438E: Branch loc_9E440B
  loc_9E4391: FLdFPR8 var_CC
  loc_9E4394: LitI2_Byte 0
  loc_9E4396: CR8I2
  loc_9E4397: LtR8
  loc_9E4398: BranchF loc_9E43D1
  loc_9E439B: LitI2_Byte 0
  loc_9E439D: LitVar_Missing var_B4
  loc_9E43A0: LitI2_Byte 0
  loc_9E43A2: LitVarStr var_A4, vbNullString
  loc_9E43A7: PopAdLdVar
  loc_9E43A8: ILdRf arg_14
  loc_9E43AB: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_9E43B0: FFree1Var var_B4 = ""
  loc_9E43B3: LitI2_Byte 0
  loc_9E43B5: LitVar_Missing var_B4
  loc_9E43B8: LitI2_Byte &HFF
  loc_9E43BA: FLdFPR8 var_94
  loc_9E43BD: FnAbsR4
  loc_9E43BE: CVarR8
  loc_9E43C2: PopAdLdVar
  loc_9E43C3: ILdRf arg_18
  loc_9E43C6: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_9E43CB: FFree1Var var_B4 = ""
  loc_9E43CE: Branch loc_9E440B
  loc_9E43D1: FLdFPR8 var_CC
  loc_9E43D4: LitI2_Byte 0
  loc_9E43D6: CR8I2
  loc_9E43D7: EqR4
  loc_9E43D8: BranchF loc_9E440B
  loc_9E43DB: LitI2_Byte 0
  loc_9E43DD: LitVar_Missing var_B4
  loc_9E43E0: LitI2_Byte 0
  loc_9E43E2: LitVarStr var_A4, "0"
  loc_9E43E7: PopAdLdVar
  loc_9E43E8: ILdRf arg_14
  loc_9E43EB: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_9E43F0: FFree1Var var_B4 = ""
  loc_9E43F3: LitI2_Byte 0
  loc_9E43F5: LitVar_Missing var_B4
  loc_9E43F8: LitI2_Byte 0
  loc_9E43FA: LitVarStr var_A4, "0"
  loc_9E43FF: PopAdLdVar
  loc_9E4400: ILdRf arg_18
  loc_9E4403: ImpAdCallFPR4  = Proc_261_19_A15E40()
  loc_9E4408: FFree1Var var_B4 = ""
  loc_9E440B: ExitProcHresult
End Function

Private Function Proc_292_29_AB9924() 'AB9924
  'Data Table: 46F7A4
  loc_AB9388: LitVarStr var_94, "<html>"
  loc_AB938D: PopAdLdVar
  loc_AB938E: FLdPr Me
  loc_AB9391: MemLdRfVar from_stack_1.htmFile
  loc_AB9394: LdPrVar
  loc_AB9396: LateMemCall
  loc_AB939C: LitVarStr var_94, "<head>"
  loc_AB93A1: PopAdLdVar
  loc_AB93A2: FLdPr Me
  loc_AB93A5: MemLdRfVar from_stack_1.htmFile
  loc_AB93A8: LdPrVar
  loc_AB93AA: LateMemCall
  loc_AB93B0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AB93B5: PopAdLdVar
  loc_AB93B6: FLdPr Me
  loc_AB93B9: MemLdRfVar from_stack_1.htmFile
  loc_AB93BC: LdPrVar
  loc_AB93BE: LateMemCall
  loc_AB93C4: LitStr "<title>"
  loc_AB93C7: FLdRfVar var_A8
  loc_AB93CA: FLdPr Me
  loc_AB93CD:  = Me.Caption
  loc_AB93D2: ILdRf var_A8
  loc_AB93D5: ConcatStr
  loc_AB93D6: FStStrNoPop var_AC
  loc_AB93D9: LitStr "</title>"
  loc_AB93DC: ConcatStr
  loc_AB93DD: CVarStr var_BC
  loc_AB93E0: PopAdLdVar
  loc_AB93E1: FLdPr Me
  loc_AB93E4: MemLdRfVar from_stack_1.htmFile
  loc_AB93E7: LdPrVar
  loc_AB93E9: LateMemCall
  loc_AB93EF: FFreeStr var_A8 = ""
  loc_AB93F6: FFree1Var var_BC = ""
  loc_AB93F9: LitStr vbNullString
  loc_AB93FC: ILdRf Me
  loc_AB93FF: CastAd
  loc_AB9402: FStAdFunc var_C0
  loc_AB9405: FLdRfVar var_C0
  loc_AB9408: ImpAdCallFPR4  = Proc_263_23_B3DAB8()
  loc_AB940D: FFree1Ad var_C0
  loc_AB9410: LitI4 0
  loc_AB9415: FStStrCopy var_AC
  loc_AB9418: FLdRfVar var_AC
  loc_AB941B: LitI4 0
  loc_AB9420: FStStrCopy var_A8
  loc_AB9423: FLdRfVar var_A8
  loc_AB9426: LitI2_Byte &HFF
  loc_AB9428: PopTmpLdAd2 var_C2
  loc_AB942B: FLdPr Me
  loc_AB942E: MemLdRfVar from_stack_1.htmFile
  loc_AB9431: ImpAdCallFPR4  = Proc_263_6_A92790(, )
  loc_AB9436: FFreeStr var_A8 = ""
  loc_AB943D: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AB9442: PopAdLdVar
  loc_AB9443: FLdPr Me
  loc_AB9446: MemLdRfVar from_stack_1.htmFile
  loc_AB9449: LdPrVar
  loc_AB944B: LateMemCall
  loc_AB9451: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AB9456: PopAdLdVar
  loc_AB9457: FLdPr Me
  loc_AB945A: MemLdRfVar from_stack_1.htmFile
  loc_AB945D: LdPrVar
  loc_AB945F: LateMemCall
  loc_AB9465: LitVarStr var_A4, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_AB946A: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AB946F: FStVarCopyObj var_BC
  loc_AB9472: FLdRfVar var_BC
  loc_AB9475: FLdRfVar var_D4
  loc_AB9478: ImpAdCallFPR4  = Ucase()
  loc_AB947D: FLdRfVar var_D4
  loc_AB9480: ConcatVar var_E4
  loc_AB9484: LitVarStr var_F4, "</p>"
  loc_AB9489: ConcatVar var_104
  loc_AB948D: PopAdLdVar
  loc_AB948E: FLdPr Me
  loc_AB9491: MemLdRfVar from_stack_1.htmFile
  loc_AB9494: LdPrVar
  loc_AB9496: LateMemCall
  loc_AB949C: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AB94A7: LitStr "    <p>"
  loc_AB94AA: FLdRfVar var_A8
  loc_AB94AD: FLdPr Me
  loc_AB94B0:  = Me.Caption
  loc_AB94B5: ILdRf var_A8
  loc_AB94B8: ConcatStr
  loc_AB94B9: FStStrNoPop var_AC
  loc_AB94BC: LitStr "</p></th>"
  loc_AB94BF: ConcatStr
  loc_AB94C0: CVarStr var_BC
  loc_AB94C3: PopAdLdVar
  loc_AB94C4: FLdPr Me
  loc_AB94C7: MemLdRfVar from_stack_1.htmFile
  loc_AB94CA: LdPrVar
  loc_AB94CC: LateMemCall
  loc_AB94D2: FFreeStr var_A8 = ""
  loc_AB94D9: FFree1Var var_BC = ""
  loc_AB94DC: LitVarStr var_94, "  </tr>"
  loc_AB94E1: PopAdLdVar
  loc_AB94E2: FLdPr Me
  loc_AB94E5: MemLdRfVar from_stack_1.htmFile
  loc_AB94E8: LdPrVar
  loc_AB94EA: LateMemCall
  loc_AB94F0: LitVarStr var_94, "  <tr>"
  loc_AB94F5: PopAdLdVar
  loc_AB94F6: FLdPr Me
  loc_AB94F9: MemLdRfVar from_stack_1.htmFile
  loc_AB94FC: LdPrVar
  loc_AB94FE: LateMemCall
  loc_AB9504: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_AB9509: PopAdLdVar
  loc_AB950A: FLdPr Me
  loc_AB950D: MemLdRfVar from_stack_1.htmFile
  loc_AB9510: LdPrVar
  loc_AB9512: LateMemCall
  loc_AB9518: LitVarStr var_94, "  </tr>"
  loc_AB951D: PopAdLdVar
  loc_AB951E: FLdPr Me
  loc_AB9521: MemLdRfVar from_stack_1.htmFile
  loc_AB9524: LdPrVar
  loc_AB9526: LateMemCall
  loc_AB952C: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AB9531: PopAdLdVar
  loc_AB9532: FLdPr Me
  loc_AB9535: MemLdRfVar from_stack_1.htmFile
  loc_AB9538: LdPrVar
  loc_AB953A: LateMemCall
  loc_AB9540: LitStr "    <th align=""left"">Periodo: <span class=""Normal"">"
  loc_AB9543: FLdRfVar var_A8
  loc_AB9546: FLdPr Me
  loc_AB9549: VCallAd Control_ID_cboPeriodo
  loc_AB954C: FStAdFunc var_C0
  loc_AB954F: FLdPr var_C0
  loc_AB9552:  = Me.Text
  loc_AB9557: ILdRf var_A8
  loc_AB955A: ConcatStr
  loc_AB955B: FStStrNoPop var_AC
  loc_AB955E: LitStr "</span></th>"
  loc_AB9561: ConcatStr
  loc_AB9562: CVarStr var_BC
  loc_AB9565: PopAdLdVar
  loc_AB9566: FLdPr Me
  loc_AB9569: MemLdRfVar from_stack_1.htmFile
  loc_AB956C: LdPrVar
  loc_AB956E: LateMemCall
  loc_AB9574: FFreeStr var_A8 = ""
  loc_AB957B: FFree1Ad var_C0
  loc_AB957E: FFree1Var var_BC = ""
  loc_AB9581: LitStr "    <th align=""right"">Mes: <span class=""Normal"">"
  loc_AB9584: FLdRfVar var_A8
  loc_AB9587: FLdPr Me
  loc_AB958A: VCallAd Control_ID_cboMes
  loc_AB958D: FStAdFunc var_C0
  loc_AB9590: FLdPr var_C0
  loc_AB9593:  = Me.Text
  loc_AB9598: ILdRf var_A8
  loc_AB959B: ConcatStr
  loc_AB959C: FStStrNoPop var_AC
  loc_AB959F: LitStr " ("
  loc_AB95A2: ConcatStr
  loc_AB95A3: FStStrNoPop var_118
  loc_AB95A6: FLdPr Me
  loc_AB95A9: MemLdStr global_104
  loc_AB95AC: ConcatStr
  loc_AB95AD: FStStrNoPop var_11C
  loc_AB95B0: LitStr ")</span></th>"
  loc_AB95B3: ConcatStr
  loc_AB95B4: CVarStr var_BC
  loc_AB95B7: PopAdLdVar
  loc_AB95B8: FLdPr Me
  loc_AB95BB: MemLdRfVar from_stack_1.htmFile
  loc_AB95BE: LdPrVar
  loc_AB95C0: LateMemCall
  loc_AB95C6: FFreeStr var_A8 = "": var_AC = "": var_118 = ""
  loc_AB95D1: FFree1Ad var_C0
  loc_AB95D4: FFree1Var var_BC = ""
  loc_AB95D7: FLdRfVar var_C2
  loc_AB95DA: FLdPr Me
  loc_AB95DD: VCallAd Control_ID_chkSoloCajayBancos
  loc_AB95E0: FStAdFunc var_C0
  loc_AB95E3: FLdPr var_C0
  loc_AB95E6:  = Me.Value
  loc_AB95EB: FLdI2 var_C2
  loc_AB95EE: CI4UI1
  loc_AB95EF: LitI4 1
  loc_AB95F4: EqI4
  loc_AB95F5: FFree1Ad var_C0
  loc_AB95F8: BranchF loc_AB963C
  loc_AB95FB: LitStr "    <tr><th align=""left"">"
  loc_AB95FE: FLdRfVar var_A8
  loc_AB9601: FLdPr Me
  loc_AB9604: VCallAd Control_ID_chkSoloCajayBancos
  loc_AB9607: FStAdFunc var_C0
  loc_AB960A: FLdPr var_C0
  loc_AB960D:  = Me.Caption
  loc_AB9612: ILdRf var_A8
  loc_AB9615: ConcatStr
  loc_AB9616: FStStrNoPop var_AC
  loc_AB9619: LitStr "<span class=""Normal""></span></th>"
  loc_AB961C: ConcatStr
  loc_AB961D: CVarStr var_BC
  loc_AB9620: PopAdLdVar
  loc_AB9621: FLdPr Me
  loc_AB9624: MemLdRfVar from_stack_1.htmFile
  loc_AB9627: LdPrVar
  loc_AB9629: LateMemCall
  loc_AB962F: FFreeStr var_A8 = ""
  loc_AB9636: FFree1Ad var_C0
  loc_AB9639: FFree1Var var_BC = ""
  loc_AB963C: FLdRfVar var_C2
  loc_AB963F: FLdPr Me
  loc_AB9642: VCallAd Control_ID_chkExcluirCierrePresupuestario
  loc_AB9645: FStAdFunc var_C0
  loc_AB9648: FLdPr var_C0
  loc_AB964B:  = Me.Value
  loc_AB9650: FLdI2 var_C2
  loc_AB9653: CI4UI1
  loc_AB9654: LitI4 1
  loc_AB9659: EqI4
  loc_AB965A: FFree1Ad var_C0
  loc_AB965D: BranchF loc_AB96A1
  loc_AB9660: LitStr "    <tr><th align=""left"">"
  loc_AB9663: FLdRfVar var_A8
  loc_AB9666: FLdPr Me
  loc_AB9669: VCallAd Control_ID_chkExcluirCierrePresupuestario
  loc_AB966C: FStAdFunc var_C0
  loc_AB966F: FLdPr var_C0
  loc_AB9672:  = Me.Caption
  loc_AB9677: ILdRf var_A8
  loc_AB967A: ConcatStr
  loc_AB967B: FStStrNoPop var_AC
  loc_AB967E: LitStr "<span class=""Normal""></span></th>"
  loc_AB9681: ConcatStr
  loc_AB9682: CVarStr var_BC
  loc_AB9685: PopAdLdVar
  loc_AB9686: FLdPr Me
  loc_AB9689: MemLdRfVar from_stack_1.htmFile
  loc_AB968C: LdPrVar
  loc_AB968E: LateMemCall
  loc_AB9694: FFreeStr var_A8 = ""
  loc_AB969B: FFree1Ad var_C0
  loc_AB969E: FFree1Var var_BC = ""
  loc_AB96A1: FLdRfVar var_C2
  loc_AB96A4: FLdPr Me
  loc_AB96A7: VCallAd Control_ID_chkExcluirCierrePatrimonial
  loc_AB96AA: FStAdFunc var_C0
  loc_AB96AD: FLdPr var_C0
  loc_AB96B0:  = Me.Value
  loc_AB96B5: FLdI2 var_C2
  loc_AB96B8: CI4UI1
  loc_AB96B9: LitI4 1
  loc_AB96BE: EqI4
  loc_AB96BF: FFree1Ad var_C0
  loc_AB96C2: BranchF loc_AB9706
  loc_AB96C5: LitStr "    <tr><th align=""left"">"
  loc_AB96C8: FLdRfVar var_A8
  loc_AB96CB: FLdPr Me
  loc_AB96CE: VCallAd Control_ID_chkExcluirCierrePatrimonial
  loc_AB96D1: FStAdFunc var_C0
  loc_AB96D4: FLdPr var_C0
  loc_AB96D7:  = Me.Caption
  loc_AB96DC: ILdRf var_A8
  loc_AB96DF: ConcatStr
  loc_AB96E0: FStStrNoPop var_AC
  loc_AB96E3: LitStr "<span class=""Normal""></span></th>"
  loc_AB96E6: ConcatStr
  loc_AB96E7: CVarStr var_BC
  loc_AB96EA: PopAdLdVar
  loc_AB96EB: FLdPr Me
  loc_AB96EE: MemLdRfVar from_stack_1.htmFile
  loc_AB96F1: LdPrVar
  loc_AB96F3: LateMemCall
  loc_AB96F9: FFreeStr var_A8 = ""
  loc_AB9700: FFree1Ad var_C0
  loc_AB9703: FFree1Var var_BC = ""
  loc_AB9706: LitVarStr var_94, "  </tr>"
  loc_AB970B: PopAdLdVar
  loc_AB970C: FLdPr Me
  loc_AB970F: MemLdRfVar from_stack_1.htmFile
  loc_AB9712: LdPrVar
  loc_AB9714: LateMemCall
  loc_AB971A: LitVarStr var_94, "</table>"
  loc_AB971F: PopAdLdVar
  loc_AB9720: FLdPr Me
  loc_AB9723: MemLdRfVar from_stack_1.htmFile
  loc_AB9726: LdPrVar
  loc_AB9728: LateMemCall
  loc_AB972E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AB9733: PopAdLdVar
  loc_AB9734: FLdPr Me
  loc_AB9737: MemLdRfVar from_stack_1.htmFile
  loc_AB973A: LdPrVar
  loc_AB973C: LateMemCall
  loc_AB9742: LitVarStr var_94, "  <THEAD>"
  loc_AB9747: PopAdLdVar
  loc_AB9748: FLdPr Me
  loc_AB974B: MemLdRfVar from_stack_1.htmFile
  loc_AB974E: LdPrVar
  loc_AB9750: LateMemCall
  loc_AB9756: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_AB975B: PopAdLdVar
  loc_AB975C: FLdPr Me
  loc_AB975F: MemLdRfVar from_stack_1.htmFile
  loc_AB9762: LdPrVar
  loc_AB9764: LateMemCall
  loc_AB976A: LitVarStr var_94, "    <th rowspan=""3"" align=""center"">Cuenta Contable </th>"
  loc_AB976F: PopAdLdVar
  loc_AB9770: FLdPr Me
  loc_AB9773: MemLdRfVar from_stack_1.htmFile
  loc_AB9776: LdPrVar
  loc_AB9778: LateMemCall
  loc_AB977E: LitVarStr var_94, "    <th colspan=""4"" align=""center"">Movimientos al inicio </th>"
  loc_AB9783: PopAdLdVar
  loc_AB9784: FLdPr Me
  loc_AB9787: MemLdRfVar from_stack_1.htmFile
  loc_AB978A: LdPrVar
  loc_AB978C: LateMemCall
  loc_AB9792: LitVarStr var_94, "    <th colspan=""4"" align=""center"">Movimientos del periodo </th>"
  loc_AB9797: PopAdLdVar
  loc_AB9798: FLdPr Me
  loc_AB979B: MemLdRfVar from_stack_1.htmFile
  loc_AB979E: LdPrVar
  loc_AB97A0: LateMemCall
  loc_AB97A6: LitVarStr var_94, "    <th colspan=""2"" align=""center"">Saldo al final </th>"
  loc_AB97AB: PopAdLdVar
  loc_AB97AC: FLdPr Me
  loc_AB97AF: MemLdRfVar from_stack_1.htmFile
  loc_AB97B2: LdPrVar
  loc_AB97B4: LateMemCall
  loc_AB97BA: LitVarStr var_94, "  </tr>"
  loc_AB97BF: PopAdLdVar
  loc_AB97C0: FLdPr Me
  loc_AB97C3: MemLdRfVar from_stack_1.htmFile
  loc_AB97C6: LdPrVar
  loc_AB97C8: LateMemCall
  loc_AB97CE: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_AB97D3: PopAdLdVar
  loc_AB97D4: FLdPr Me
  loc_AB97D7: MemLdRfVar from_stack_1.htmFile
  loc_AB97DA: LdPrVar
  loc_AB97DC: LateMemCall
  loc_AB97E2: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Debe</th>"
  loc_AB97E7: PopAdLdVar
  loc_AB97E8: FLdPr Me
  loc_AB97EB: MemLdRfVar from_stack_1.htmFile
  loc_AB97EE: LdPrVar
  loc_AB97F0: LateMemCall
  loc_AB97F6: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Haber</th>"
  loc_AB97FB: PopAdLdVar
  loc_AB97FC: FLdPr Me
  loc_AB97FF: MemLdRfVar from_stack_1.htmFile
  loc_AB9802: LdPrVar
  loc_AB9804: LateMemCall
  loc_AB980A: LitVarStr var_94, "    <th colspan=""2"" align=""center"">Saldo</th>"
  loc_AB980F: PopAdLdVar
  loc_AB9810: FLdPr Me
  loc_AB9813: MemLdRfVar from_stack_1.htmFile
  loc_AB9816: LdPrVar
  loc_AB9818: LateMemCall
  loc_AB981E: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Debe</th>"
  loc_AB9823: PopAdLdVar
  loc_AB9824: FLdPr Me
  loc_AB9827: MemLdRfVar from_stack_1.htmFile
  loc_AB982A: LdPrVar
  loc_AB982C: LateMemCall
  loc_AB9832: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Haber</th>"
  loc_AB9837: PopAdLdVar
  loc_AB9838: FLdPr Me
  loc_AB983B: MemLdRfVar from_stack_1.htmFile
  loc_AB983E: LdPrVar
  loc_AB9840: LateMemCall
  loc_AB9846: LitVarStr var_94, "    <th colspan=""2"" align=""center"">Saldo</th>"
  loc_AB984B: PopAdLdVar
  loc_AB984C: FLdPr Me
  loc_AB984F: MemLdRfVar from_stack_1.htmFile
  loc_AB9852: LdPrVar
  loc_AB9854: LateMemCall
  loc_AB985A: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Debe</th>"
  loc_AB985F: PopAdLdVar
  loc_AB9860: FLdPr Me
  loc_AB9863: MemLdRfVar from_stack_1.htmFile
  loc_AB9866: LdPrVar
  loc_AB9868: LateMemCall
  loc_AB986E: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Haber</th>"
  loc_AB9873: PopAdLdVar
  loc_AB9874: FLdPr Me
  loc_AB9877: MemLdRfVar from_stack_1.htmFile
  loc_AB987A: LdPrVar
  loc_AB987C: LateMemCall
  loc_AB9882: LitVarStr var_94, "  </tr>"
  loc_AB9887: PopAdLdVar
  loc_AB9888: FLdPr Me
  loc_AB988B: MemLdRfVar from_stack_1.htmFile
  loc_AB988E: LdPrVar
  loc_AB9890: LateMemCall
  loc_AB9896: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_AB989B: PopAdLdVar
  loc_AB989C: FLdPr Me
  loc_AB989F: MemLdRfVar from_stack_1.htmFile
  loc_AB98A2: LdPrVar
  loc_AB98A4: LateMemCall
  loc_AB98AA: LitVarStr var_94, "    <th align=""center"">Debe</th>"
  loc_AB98AF: PopAdLdVar
  loc_AB98B0: FLdPr Me
  loc_AB98B3: MemLdRfVar from_stack_1.htmFile
  loc_AB98B6: LdPrVar
  loc_AB98B8: LateMemCall
  loc_AB98BE: LitVarStr var_94, "    <th align=""center"">Haber</th>"
  loc_AB98C3: PopAdLdVar
  loc_AB98C4: FLdPr Me
  loc_AB98C7: MemLdRfVar from_stack_1.htmFile
  loc_AB98CA: LdPrVar
  loc_AB98CC: LateMemCall
  loc_AB98D2: LitVarStr var_94, "    <th align=""center"">Debe</th>"
  loc_AB98D7: PopAdLdVar
  loc_AB98D8: FLdPr Me
  loc_AB98DB: MemLdRfVar from_stack_1.htmFile
  loc_AB98DE: LdPrVar
  loc_AB98E0: LateMemCall
  loc_AB98E6: LitVarStr var_94, "    <th align=""center"">Haber</th>"
  loc_AB98EB: PopAdLdVar
  loc_AB98EC: FLdPr Me
  loc_AB98EF: MemLdRfVar from_stack_1.htmFile
  loc_AB98F2: LdPrVar
  loc_AB98F4: LateMemCall
  loc_AB98FA: LitVarStr var_94, "  </tr>"
  loc_AB98FF: PopAdLdVar
  loc_AB9900: FLdPr Me
  loc_AB9903: MemLdRfVar from_stack_1.htmFile
  loc_AB9906: LdPrVar
  loc_AB9908: LateMemCall
  loc_AB990E: LitVarStr var_94, "  </THEAD>"
  loc_AB9913: PopAdLdVar
  loc_AB9914: FLdPr Me
  loc_AB9917: MemLdRfVar from_stack_1.htmFile
  loc_AB991A: LdPrVar
  loc_AB991C: LateMemCall
  loc_AB9922: ExitProcHresult
End Function

Private Function Proc_292_30_A04EAC() 'A04EAC
  'Data Table: 46F7A4
  loc_A04D38: LitVarStr var_94, "</table>"
  loc_A04D3D: PopAdLdVar
  loc_A04D3E: FLdPr Me
  loc_A04D41: MemLdRfVar from_stack_1.htmFile
  loc_A04D44: LdPrVar
  loc_A04D46: LateMemCall
  loc_A04D4C: LitVarStr var_94, "<br>"
  loc_A04D51: PopAdLdVar
  loc_A04D52: FLdPr Me
  loc_A04D55: MemLdRfVar from_stack_1.htmFile
  loc_A04D58: LdPrVar
  loc_A04D5A: LateMemCall
  loc_A04D60: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A04D65: PopAdLdVar
  loc_A04D66: FLdPr Me
  loc_A04D69: MemLdRfVar from_stack_1.htmFile
  loc_A04D6C: LdPrVar
  loc_A04D6E: LateMemCall
  loc_A04D74: LitVarStr var_94, "  <tr>"
  loc_A04D79: PopAdLdVar
  loc_A04D7A: FLdPr Me
  loc_A04D7D: MemLdRfVar from_stack_1.htmFile
  loc_A04D80: LdPrVar
  loc_A04D82: LateMemCall
  loc_A04D88: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A04D8D: PopAdLdVar
  loc_A04D8E: FLdPr Me
  loc_A04D91: MemLdRfVar from_stack_1.htmFile
  loc_A04D94: LdPrVar
  loc_A04D96: LateMemCall
  loc_A04D9C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A04DA1: PopAdLdVar
  loc_A04DA2: FLdPr Me
  loc_A04DA5: MemLdRfVar from_stack_1.htmFile
  loc_A04DA8: LdPrVar
  loc_A04DAA: LateMemCall
  loc_A04DB0: FLdPr Me
  loc_A04DB3: MemLdI2 bLogos
  loc_A04DB6: BranchF loc_A04E1D
  loc_A04DB9: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A04DBE: PopAdLdVar
  loc_A04DBF: FLdPr Me
  loc_A04DC2: MemLdRfVar from_stack_1.htmFile
  loc_A04DC5: LdPrVar
  loc_A04DC7: LateMemCall
  loc_A04DCD: LitVarStr var_94, "          <map name=""Map"">"
  loc_A04DD2: PopAdLdVar
  loc_A04DD3: FLdPr Me
  loc_A04DD6: MemLdRfVar from_stack_1.htmFile
  loc_A04DD9: LdPrVar
  loc_A04DDB: LateMemCall
  loc_A04DE1: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A04DE6: PopAdLdVar
  loc_A04DE7: FLdPr Me
  loc_A04DEA: MemLdRfVar from_stack_1.htmFile
  loc_A04DED: LdPrVar
  loc_A04DEF: LateMemCall
  loc_A04DF5: LitVarStr var_94, "          </map>"
  loc_A04DFA: PopAdLdVar
  loc_A04DFB: FLdPr Me
  loc_A04DFE: MemLdRfVar from_stack_1.htmFile
  loc_A04E01: LdPrVar
  loc_A04E03: LateMemCall
  loc_A04E09: LitVarStr var_94, "    </div></th>"
  loc_A04E0E: PopAdLdVar
  loc_A04E0F: FLdPr Me
  loc_A04E12: MemLdRfVar from_stack_1.htmFile
  loc_A04E15: LdPrVar
  loc_A04E17: LateMemCall
  loc_A04E1D: LitVarStr var_94, "  </tr>"
  loc_A04E22: PopAdLdVar
  loc_A04E23: FLdPr Me
  loc_A04E26: MemLdRfVar from_stack_1.htmFile
  loc_A04E29: LdPrVar
  loc_A04E2B: LateMemCall
  loc_A04E31: LitVarStr var_94, "  <tr>"
  loc_A04E36: PopAdLdVar
  loc_A04E37: FLdPr Me
  loc_A04E3A: MemLdRfVar from_stack_1.htmFile
  loc_A04E3D: LdPrVar
  loc_A04E3F: LateMemCall
  loc_A04E45: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A04E4A: PopAdLdVar
  loc_A04E4B: FLdPr Me
  loc_A04E4E: MemLdRfVar from_stack_1.htmFile
  loc_A04E51: LdPrVar
  loc_A04E53: LateMemCall
  loc_A04E59: LitVarStr var_94, "  </tr>"
  loc_A04E5E: PopAdLdVar
  loc_A04E5F: FLdPr Me
  loc_A04E62: MemLdRfVar from_stack_1.htmFile
  loc_A04E65: LdPrVar
  loc_A04E67: LateMemCall
  loc_A04E6D: LitVarStr var_94, "</table>"
  loc_A04E72: PopAdLdVar
  loc_A04E73: FLdPr Me
  loc_A04E76: MemLdRfVar from_stack_1.htmFile
  loc_A04E79: LdPrVar
  loc_A04E7B: LateMemCall
  loc_A04E81: LitVarStr var_94, "</body>"
  loc_A04E86: PopAdLdVar
  loc_A04E87: FLdPr Me
  loc_A04E8A: MemLdRfVar from_stack_1.htmFile
  loc_A04E8D: LdPrVar
  loc_A04E8F: LateMemCall
  loc_A04E95: LitVarStr var_94, "</html>"
  loc_A04E9A: PopAdLdVar
  loc_A04E9B: FLdPr Me
  loc_A04E9E: MemLdRfVar from_stack_1.htmFile
  loc_A04EA1: LdPrVar
  loc_A04EA3: LateMemCall
  loc_A04EA9: ExitProcHresult
End Function
