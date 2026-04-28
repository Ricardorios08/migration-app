VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoXIII
  Caption = "Acuerdo 2988 - Anexo XIII"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoXIII.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9975
  ClientHeight = 3495
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3240
    Width = 9975
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptA2988AnexoXIII.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 840
    Width = 735
    Height = 615
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptA2988AnexoXIII.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoXIII.frx":0B9C
    Left = 6960
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2040
    Width = 5895
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT HTC"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 15
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 3015
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 1935
    TabIndex = 0
    Begin VB.CommandButton cmdHasta
      Left = 2640
      Top = 1080
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptA2988AnexoXIII.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 720
      Width = 2055
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1455
      Top = 480
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1440
      Top = 1080
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptA2988AnexoXIII.frx":1142
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 840
      Top = 1080
      Width = 465
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 735
      Top = 480
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8160
    Top = 960
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 8
    OleObjectBlob = "rptA2988AnexoXIII.frx":11CA
  End
End

Attribute VB_Name = "rptA2988AnexoXIII"

Public htmFile As Variant
Public txtFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00589EAC
  bStruc(36) As Byte ' String fields: 9
End Type

Private Type UDT_2_005B6E04
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub cmdHasta_Click() '9804C0
  'Data Table: 475F58
  loc_98048C: LitVar_Missing var_A4
  loc_98048F: PopAdLdVar
  loc_980490: LitVarI4
  loc_980498: PopAdLdVar
  loc_980499: ImpAdLdRf MemVar_C3D9A8
  loc_98049C: NewIfNullPr frmCalendario
  loc_98049F: frmCalendario.Show from_stack_1, from_stack_2
  loc_9804A4: ImpAdLdRf MemVar_C3D038
  loc_9804A7: CDargRef
  loc_9804AB: FLdPr Me
  loc_9804AE: VCallAd Control_ID_mskHasta
  loc_9804B1: FStAdFunc var_A8
  loc_9804B4: FLdPr var_A8
  loc_9804B7: LateIdSt
  loc_9804BC: FFree1Ad var_A8
  loc_9804BF: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9B8008
  'Data Table: 475F58
  loc_9B7F6C: FLdPr Me
  loc_9B7F6F: VCallAd Control_ID_mskHasta
  loc_9B7F72: FStAdFunc var_94
  loc_9B7F75: FLdPr var_94
  loc_9B7F78: LateIdLdVar var_A4 DispID_15 0
  loc_9B7F7F: PopAd
  loc_9B7F81: LitStr "Acuerdo 2988 Anexo XIII "
  loc_9B7F84: FLdRfVar var_8C
  loc_9B7F87: FLdPr Me
  loc_9B7F8A: VCallAd Control_ID_cboPeriodo
  loc_9B7F8D: FStAdFunc var_88
  loc_9B7F90: FLdPr var_88
  loc_9B7F93:  = Me.Text
  loc_9B7F98: ILdRf var_8C
  loc_9B7F9B: ConcatStr
  loc_9B7F9C: FStStrNoPop var_90
  loc_9B7F9F: LitStr " Hasta "
  loc_9B7FA2: ConcatStr
  loc_9B7FA3: FStStrNoPop var_AC
  loc_9B7FA6: LitI4 0
  loc_9B7FAB: LitI4 -1
  loc_9B7FB0: LitI4 1
  loc_9B7FB5: LitStr "-"
  loc_9B7FB8: LitStr "/"
  loc_9B7FBB: FLdRfVar var_A4
  loc_9B7FBE: CStrVarTmp
  loc_9B7FBF: FStStrNoPop var_A8
  loc_9B7FC2: ImpAdCallI2 Replace(, , , , , )
  loc_9B7FC7: FStStrNoPop var_B0
  loc_9B7FCA: ConcatStr
  loc_9B7FCB: FStStrNoPop var_B4
  loc_9B7FCE: FLdPr Me
  loc_9B7FD1: Me.Tag = from_stack_1
  loc_9B7FD6: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9B7FE5: FFreeAd var_88 = ""
  loc_9B7FEC: FFree1Var var_A4 = ""
  loc_9B7FEF: LitI2_Byte 0
  loc_9B7FF1: ILdRf Me
  loc_9B7FF4: CastAd
  loc_9B7FF7: FStAdFunc var_88
  loc_9B7FFA: FLdRfVar var_88
  loc_9B7FFD: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9B8002: FFree1Ad var_88
  loc_9B8005: ExitProcHresult
  loc_9B8006: CRec2Ansi var_2000
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98656C
  'Data Table: 475F58
  loc_986534: FLdPr Me
  loc_986537: VCallAd Control_ID_statusBar
  loc_98653A: FStAdFunc var_88
  loc_98653D: FLdPr var_88
  loc_986540: LateIdLdVar var_98 DispID_1 0
  loc_986547: CStrVarTmp
  loc_986548: CVarStr var_A8
  loc_98654B: PopAdLdVar
  loc_98654C: FLdPr Me
  loc_98654F: VCallAd Control_ID_statusBar
  loc_986552: FStAdFunc var_BC
  loc_986555: FLdPr var_BC
  loc_986558: LateIdSt
  loc_98655D: FFreeAd var_88 = ""
  loc_986564: FFreeVar var_98 = ""
  loc_98656B: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A0B6C
  'Data Table: 475F58
  loc_9A0AFC: LitI2_Byte 0
  loc_9A0AFE: FLdPr Me
  loc_9A0B01: MemStI2 bGenerado
  loc_9A0B04: LitI2_Byte &HFF
  loc_9A0B06: FLdPr Me
  loc_9A0B09: MemStI2 bLogos
  loc_9A0B0C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A0B11: ImpAdLdI2 MemVar_C3D064
  loc_9A0B14: CStrUI1
  loc_9A0B16: FStStrNoPop var_88
  loc_9A0B19: FLdPr Me
  loc_9A0B1C: VCallAd Control_ID_cboPeriodo
  loc_9A0B1F: FStAdFunc var_8C
  loc_9A0B22: FLdPr var_8C
  loc_9A0B25: Me.Text = from_stack_1
  loc_9A0B2A: FFree1Str var_88
  loc_9A0B2D: FFree1Ad var_8C
  loc_9A0B30: ImpAdLdFPR8 MemVar_C3D04C
  loc_9A0B33: CStrDate
  loc_9A0B35: CVarStr var_9C
  loc_9A0B38: PopAdLdVar
  loc_9A0B39: FLdPr Me
  loc_9A0B3C: VCallAd Control_ID_mskHasta
  loc_9A0B3F: FStAdFunc var_8C
  loc_9A0B42: FLdPr var_8C
  loc_9A0B45: LateIdSt
  loc_9A0B4A: FFree1Ad var_8C
  loc_9A0B4D: FFree1Var var_9C = ""
  loc_9A0B50: Call HabilitarCriterio()
  loc_9A0B55: ILdRf Me
  loc_9A0B58: CastAd
  loc_9A0B5B: FStAdFunc var_8C
  loc_9A0B5E: FLdRfVar var_8C
  loc_9A0B61: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A0B66: FFree1Ad var_8C
  loc_9A0B69: ExitProcHresult
  loc_9A0B6A: FLdPrThis
End Sub

Private Sub cmdSalir_Click() '9772EC
  'Data Table: 475F58
  loc_9772BC: LitVarStr var_94, "Cerrando..."
  loc_9772C1: PopAdLdVar
  loc_9772C2: FLdPr Me
  loc_9772C5: VCallAd Control_ID_statusBar
  loc_9772C8: FStAdFunc var_A8
  loc_9772CB: FLdPr var_A8
  loc_9772CE: LateIdSt
  loc_9772D3: FFree1Ad var_A8
  loc_9772D6: ILdRf Me
  loc_9772D9: FStAdNoPop
  loc_9772DD: ImpAdLdRf MemVar_C44F9C
  loc_9772E0: NewIfNullPr Me
  loc_9772E3: Me.Global.Unload from_stack_1
  loc_9772E8: FFree1Ad var_A8
  loc_9772EB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '96489C
  'Data Table: 475F58
  loc_964884: ILdRf Me
  loc_964887: CastAd
  loc_96488A: FStAdFunc var_88
  loc_96488D: FLdRfVar var_88
  loc_964890: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_964895: FFree1Ad var_88
  loc_964898: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '961FF0
  'Data Table: 475F58
  loc_961FD8: ILdRf Me
  loc_961FDB: CastAd
  loc_961FDE: FStAdFunc var_88
  loc_961FE1: FLdRfVar var_88
  loc_961FE4: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_961FE9: FFree1Ad var_88
  loc_961FEC: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B80C
  'Data Table: 475F58
  loc_96B7F0: LitI2_Byte &HFF
  loc_96B7F2: LitI2_Byte 0
  loc_96B7F4: ILdRf Me
  loc_96B7F7: CastAd
  loc_96B7FA: FStAdFunc var_88
  loc_96B7FD: FLdRfVar var_88
  loc_96B800: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B805: FFree1Ad var_88
  loc_96B808: ExitProcHresult
  loc_96B809: UMiR8
End Sub

Private Sub cmdHtml_Click() '961968
  'Data Table: 475F58
  loc_961950: ILdRf Me
  loc_961953: CastAd
  loc_961956: FStAdFunc var_88
  loc_961959: FLdRfVar var_88
  loc_96195C: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_961961: FFree1Ad var_88
  loc_961964: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '970800
  'Data Table: 475F58
  loc_9707DC: LitStr "SitBsEstado.txt"
  loc_9707DF: FLdPr Me
  loc_9707E2: Me.Tag = from_stack_1
  loc_9707E7: LitI2_Byte 0
  loc_9707E9: ILdRf Me
  loc_9707EC: CastAd
  loc_9707EF: FStAdFunc var_88
  loc_9707F2: FLdRfVar var_88
  loc_9707F5: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_9707FA: FFree1Ad var_88
  loc_9707FD: ExitProcHresult
  loc_9707FE: Branch loc_97E7DC
End Sub

Private Sub cboPeriodo_Click() '9AE350
  'Data Table: 475F58
  loc_9AE2B4: FLdRfVar var_8C
  loc_9AE2B7: FLdPr Me
  loc_9AE2BA: VCallAd Control_ID_cboPeriodo
  loc_9AE2BD: FStAdFunc var_88
  loc_9AE2C0: FLdPr var_88
  loc_9AE2C3:  = Me.Text
  loc_9AE2C8: ILdRf var_8C
  loc_9AE2CB: CI2Str
  loc_9AE2CD: ImpAdLdI2 MemVar_C3D064
  loc_9AE2D0: LtI2
  loc_9AE2D1: FFree1Str var_8C
  loc_9AE2D4: FFree1Ad var_88
  loc_9AE2D7: BranchF loc_9AE32C
  loc_9AE2DA: FLdRfVar var_8C
  loc_9AE2DD: FLdPr Me
  loc_9AE2E0: VCallAd Control_ID_cboPeriodo
  loc_9AE2E3: FStAdFunc var_88
  loc_9AE2E6: FLdPr var_88
  loc_9AE2E9:  = Me.Text
  loc_9AE2EE: LitI2_Byte &H1F
  loc_9AE2F0: LitI2_Byte &HC
  loc_9AE2F2: ILdRf var_8C
  loc_9AE2F5: CI2Str
  loc_9AE2F7: FLdRfVar var_9C
  loc_9AE2FA: ImpAdCallFPR4  = DateSerial(, , )
  loc_9AE2FF: FLdRfVar var_9C
  loc_9AE302: CStrVarTmp
  loc_9AE303: CVarStr var_AC
  loc_9AE306: PopAdLdVar
  loc_9AE307: FLdPr Me
  loc_9AE30A: VCallAd Control_ID_mskHasta
  loc_9AE30D: FStAdFunc var_C0
  loc_9AE310: FLdPr var_C0
  loc_9AE313: LateIdSt
  loc_9AE318: FFree1Str var_8C
  loc_9AE31B: FFreeAd var_88 = ""
  loc_9AE322: FFreeVar var_9C = ""
  loc_9AE329: Branch loc_9AE34C
  loc_9AE32C: ImpAdLdFPR8 MemVar_C3D04C
  loc_9AE32F: CStrDate
  loc_9AE331: CVarStr var_9C
  loc_9AE334: PopAdLdVar
  loc_9AE335: FLdPr Me
  loc_9AE338: VCallAd Control_ID_mskHasta
  loc_9AE33B: FStAdFunc var_88
  loc_9AE33E: FLdPr var_88
  loc_9AE341: LateIdSt
  loc_9AE346: FFree1Ad var_88
  loc_9AE349: FFree1Var var_9C = ""
  loc_9AE34C: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '94D7A8
  'Data Table: 475F58
  loc_94D794: FLdPr Me
  loc_94D797: VCallAd Control_ID_mskHasta
  loc_94D79A: CVarAd
  loc_94D79E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D7A3: FFree1Var var_94 = ""
  loc_94D7A6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B042C
  'Data Table: 475F58
  loc_9B0390: FLdPr Me
  loc_9B0393: VCallAd Control_ID_mskHasta
  loc_9B0396: FStAdFunc var_88
  loc_9B0399: FLdPr var_88
  loc_9B039C: LateIdLdVar var_98 DispID_15 0
  loc_9B03A3: PopAd
  loc_9B03A5: FLdPr Me
  loc_9B03A8: VCallAd Control_ID_mskHasta
  loc_9B03AB: FStAdFunc var_AC
  loc_9B03AE: LitI2_Byte 0
  loc_9B03B0: PopTmpLdAd2 var_A2
  loc_9B03B3: FLdZeroAd var_AC
  loc_9B03B6: FStAdFunc var_A0
  loc_9B03B9: FLdRfVar var_A0
  loc_9B03BC: LitStr vbNullString
  loc_9B03BF: LitI2_Byte 0
  loc_9B03C1: LitI2_Byte 0
  loc_9B03C3: FLdRfVar var_98
  loc_9B03C6: CStrVarTmp
  loc_9B03C7: FStStrNoPop var_9C
  loc_9B03CA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B03CF: FStStrNoPop var_A8
  loc_9B03D2: FLdPr Me
  loc_9B03D5: MemStStrCopy
  loc_9B03D9: FFreeStr var_9C = ""
  loc_9B03E0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B03E9: FFree1Var var_98 = ""
  loc_9B03EC: FLdPr Me
  loc_9B03EF: VCallAd Control_ID_mskHasta
  loc_9B03F2: FStAdFunc var_B0
  loc_9B03F5: LitNothing
  loc_9B03F7: CastAd
  loc_9B03FA: FStAdFunc var_AC
  loc_9B03FD: FLdRfVar var_AC
  loc_9B0400: FLdZeroAd var_B0
  loc_9B0403: FStAdFuncNoPop
  loc_9B0406: CastAd
  loc_9B0409: FStAdFunc var_A0
  loc_9B040C: FLdRfVar var_A0
  loc_9B040F: FLdPr Me
  loc_9B0412: MemLdRfVar from_stack_1.global_116
  loc_9B0415: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B041A: IStI2 arg_C
  loc_9B041D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0428: ExitProcHresult
End Function

Private Sub Form_Load() '9D1E1C
  'Data Table: 475F58
  loc_9D1D44: LitI2_Byte &HFF
  loc_9D1D46: ImpAdStI2 MemVar_C3D840
  loc_9D1D49: ILdRf Me
  loc_9D1D4C: CastAd
  loc_9D1D4F: FStAdFunc var_8C
  loc_9D1D52: FLdRfVar var_8C
  loc_9D1D55: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D1D5A: FFree1Ad var_8C
  loc_9D1D5D: FLdRfVar var_88
  loc_9D1D60: NewIfNullAd
  loc_9D1D63: FStAd var_90 
  loc_9D1D67: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D1D6A: FLdPr var_90
  loc_9D1D6D: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D1D72: FLdRfVar var_94
  loc_9D1D75: FLdPr var_90
  loc_9D1D78: from_stack_1 = clsperiodo.RecordCount
  loc_9D1D7D: ILdRf var_94
  loc_9D1D80: LitI4 0
  loc_9D1D85: GtI4
  loc_9D1D86: BranchF loc_9D1E0D
  loc_9D1D89: FLdPr var_90
  loc_9D1D8C: Call clsperiodo.MoveFirst()
  loc_9D1D91: FLdRfVar var_96
  loc_9D1D94: FLdPr var_90
  loc_9D1D97: from_stack_1 = clsperiodo.EOF
  loc_9D1D9C: FLdI2 var_96
  loc_9D1D9F: NotI4
  loc_9D1DA0: BranchF loc_9D1E0D
  loc_9D1DA3: LitVar_Missing var_D4
  loc_9D1DA6: PopAdLdVar
  loc_9D1DA7: FLdRfVar var_C0
  loc_9D1DAA: FLdRfVar var_B0
  loc_9D1DAD: LitVarStr var_AC, "PeriInfo"
  loc_9D1DB2: PopAdLdVar
  loc_9D1DB3: FLdRfVar var_9C
  loc_9D1DB6: FLdRfVar var_8C
  loc_9D1DB9: FLdPr var_90
  loc_9D1DBC: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D1DC1: FLdPr var_8C
  loc_9D1DC4:  = Me.Fields
  loc_9D1DC9: FLdPr var_9C
  loc_9D1DCC: from_stack_2 = Me.Item(from_stack_1)
  loc_9D1DD1: FLdPr var_B0
  loc_9D1DD4:  = Me.Value
  loc_9D1DD9: FLdRfVar var_C0
  loc_9D1DDC: CStrVarTmp
  loc_9D1DDD: FStStrNoPop var_C4
  loc_9D1DE0: FLdPr Me
  loc_9D1DE3: VCallAd Control_ID_cboPeriodo
  loc_9D1DE6: FStAdFunc var_D8
  loc_9D1DE9: FLdPr var_D8
  loc_9D1DEC: Me.AddItem from_stack_1, from_stack_2
  loc_9D1DF1: FFree1Str var_C4
  loc_9D1DF4: FFreeAd var_8C = "": var_9C = "": var_B0 = ""
  loc_9D1DFF: FFree1Var var_C0 = ""
  loc_9D1E02: FLdPr var_90
  loc_9D1E05: Call clsperiodo.MoveSiguiente()
  loc_9D1E0A: Branch loc_9D1D91
  loc_9D1E0D: LitNothing
  loc_9D1E0F: FStAd var_90 
  loc_9D1E13: Call cmdNueva_Click()
  loc_9D1E18: ExitProcHresult
  loc_9D1E19: Ary1LdFPR8
  loc_9D1E1A: CDateR8
End Sub

Private Sub Form_Unload(Cancel As Integer) '95F9A4
  'Data Table: 475F58
  loc_95F98C: FLdPr Me
  loc_95F98F: VCallAd Control_ID_wbbReporte
  loc_95F992: FStAdFunc var_88
  loc_95F995: FLdRfVar var_88
  loc_95F998: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95F99D: FFree1Ad var_88
  loc_95F9A0: ExitProcHresult
  loc_95F9A1: CI4Str
End Sub

Public Function htmFileGet() '476E04
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '476E13
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '476E22
  htmFile = Value
End Sub

Public Function txtFileGet() '476E31
  txtFileGet = txtFile
End Function

Public Sub txtFilePut(Value) '476E40
  txtFile = Value
End Sub

Public Sub txtFileSet(Value) '476E4F
  txtFile = Value
End Sub

Public Function bLogosGet() '476E5E
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '476E6D
  bLogos = Value
End Sub

Public Function bGeneradoGet() '476E7C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '476E8B
  bGenerado = Value
End Sub

Public Sub GeneraTXT() 'A9BC18
  'Data Table: 475F58
  loc_A9B79C: FLdRfVar var_94
  loc_A9B79F: FLdPr Me
  loc_A9B7A2: VCallAd Control_ID_cboPeriodo
  loc_A9B7A5: FStAdFunc var_90
  loc_A9B7A8: FLdPr var_90
  loc_A9B7AB:  = Me.Text
  loc_A9B7B0: FLdZeroAd var_94
  loc_A9B7B3: FStStr var_88
  loc_A9B7B6: FFree1Ad var_90
  loc_A9B7B9: FLdRfVar var_90
  loc_A9B7BC: LitI2_Byte 0
  loc_A9B7BE: LitI2_Byte &HFF
  loc_A9B7C0: ImpAdLdI4 MemVar_C3D05C
  loc_A9B7C3: FLdPr Me
  loc_A9B7C6: MemLdRfVar from_stack_1.global_92
  loc_A9B7C9: NewIfNullPr IFileSystem3
  loc_A9B7CC: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A9B7D1: ILdRf var_90
  loc_A9B7D4: FLdPr Me
  loc_A9B7D7: MemStVarAd
  loc_A9B7DB: FFree1Ad var_90
  loc_A9B7DE: LitVarStr var_B4, "PeriodoPresenta|ExpID|CodigoCuenta|NombreCuenta|SaldoInicial|AEPartidaCod|AEPartidaDet|AEImporte|AONormaLegal|AOMotivo|AOImporte|BEPartidaCod|BEPartidaDet|BEImporte|BONormaLegal|BOMotivo|BOImporte|SaldoFinal"
  loc_A9B7E3: LitI4 &HD
  loc_A9B7E8: FLdRfVar var_A4
  loc_A9B7EB: ImpAdCallFPR4  = Chr()
  loc_A9B7F0: FLdRfVar var_A4
  loc_A9B7F3: ConcatVar var_C4
  loc_A9B7F7: LitI4 &HA
  loc_A9B7FC: FLdRfVar var_D4
  loc_A9B7FF: ImpAdCallFPR4  = Chr()
  loc_A9B804: FLdRfVar var_D4
  loc_A9B807: ConcatVar var_E4
  loc_A9B80B: PopAdLdVar
  loc_A9B80C: FLdPr Me
  loc_A9B80F: MemLdRfVar from_stack_1.txtFile
  loc_A9B812: LdPrVar
  loc_A9B814: LateMemCall
  loc_A9B81A: FFreeVar var_A4 = "": var_C4 = "": var_D4 = ""
  loc_A9B825: LitI2_Byte 1
  loc_A9B827: FLdPr Me
  loc_A9B82A: MemLdRfVar from_stack_1.global_100
  loc_A9B82D: FLdPr Me
  loc_A9B830: MemLdStr global_96
  loc_A9B833: LitI2_Byte 1
  loc_A9B835: FnUBound
  loc_A9B837: CI2I4
  loc_A9B838: ForI2 var_F8
  loc_A9B83E: FLdPr Me
  loc_A9B841: MemLdI2 global_100
  loc_A9B844: CI4UI1
  loc_A9B845: FLdPr Me
  loc_A9B848: MemLdStr global_96
  loc_A9B84B: AryLock
  loc_A9B84E: Ary1LdRf
  loc_A9B84F: FStR4 var_100
  loc_A9B852: FMemLdR4 var_100(16)
  loc_A9B857: LitI2_Byte 1
  loc_A9B859: FnUBound
  loc_A9B85B: LitI4 0
  loc_A9B860: GtI4
  loc_A9B861: BranchF loc_A9BB38
  loc_A9B864: LitI2_Byte 1
  loc_A9B866: FLdPr Me
  loc_A9B869: MemLdRfVar from_stack_1.global_102
  loc_A9B86C: FMemLdR4 var_100(16)
  loc_A9B871: LitI2_Byte 1
  loc_A9B873: FnUBound
  loc_A9B875: CI2I4
  loc_A9B876: ForI2 var_104
  loc_A9B87C: FLdPr Me
  loc_A9B87F: MemLdI2 global_102
  loc_A9B882: CI4UI1
  loc_A9B883: FMemLdR4 var_100(16)
  loc_A9B888: Ary1LdPr
  loc_A9B889: MemLdStr global_0
  loc_A9B88C: LitStr "00000000"
  loc_A9B88F: EqStr
  loc_A9B891: BranchF loc_A9B923
  loc_A9B894: ILdRf var_88
  loc_A9B897: LitStr "|"
  loc_A9B89A: ConcatStr
  loc_A9B89B: FStStrNoPop var_94
  loc_A9B89E: LitStr "eee-2022-060204"
  loc_A9B8A1: ConcatStr
  loc_A9B8A2: FStStrNoPop var_108
  loc_A9B8A5: LitStr "|"
  loc_A9B8A8: ConcatStr
  loc_A9B8A9: FStStrNoPop var_10C
  loc_A9B8AC: FMemLdR4 var_100(0)
  loc_A9B8B1: ConcatStr
  loc_A9B8B2: FStStrNoPop var_110
  loc_A9B8B5: LitStr "|"
  loc_A9B8B8: ConcatStr
  loc_A9B8B9: FStStrNoPop var_114
  loc_A9B8BC: FMemLdR4 var_100(4)
  loc_A9B8C1: ConcatStr
  loc_A9B8C2: FStStrNoPop var_118
  loc_A9B8C5: LitStr "|"
  loc_A9B8C8: ConcatStr
  loc_A9B8C9: FStStrNoPop var_11C
  loc_A9B8CC: FMemLdR4 var_100(8)
  loc_A9B8D1: ConcatStr
  loc_A9B8D2: FStStrNoPop var_120
  loc_A9B8D5: LitStr "|"
  loc_A9B8D8: ConcatStr
  loc_A9B8D9: FStStrNoPop var_124
  loc_A9B8DC: LitStr vbNullString
  loc_A9B8DF: ConcatStr
  loc_A9B8E0: FStStrNoPop var_128
  loc_A9B8E3: LitStr "|"
  loc_A9B8E6: ConcatStr
  loc_A9B8E7: FStStrNoPop var_12C
  loc_A9B8EA: FLdPr Me
  loc_A9B8ED: MemLdI2 global_102
  loc_A9B8F0: CI4UI1
  loc_A9B8F1: FMemLdR4 var_100(16)
  loc_A9B8F6: Ary1LdPr
  loc_A9B8F7: MemLdStr global_4
  loc_A9B8FA: ConcatStr
  loc_A9B8FB: FStStrNoPop var_130
  loc_A9B8FE: LitStr "|"
  loc_A9B901: ConcatStr
  loc_A9B902: FStStr var_8C
  loc_A9B905: FFreeStr var_94 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_A9B920: Branch loc_A9B9BC
  loc_A9B923: ILdRf var_88
  loc_A9B926: LitStr "|"
  loc_A9B929: ConcatStr
  loc_A9B92A: FStStrNoPop var_94
  loc_A9B92D: LitStr "eee-2022-060204"
  loc_A9B930: ConcatStr
  loc_A9B931: FStStrNoPop var_108
  loc_A9B934: LitStr "|"
  loc_A9B937: ConcatStr
  loc_A9B938: FStStrNoPop var_10C
  loc_A9B93B: FMemLdR4 var_100(0)
  loc_A9B940: ConcatStr
  loc_A9B941: FStStrNoPop var_110
  loc_A9B944: LitStr "|"
  loc_A9B947: ConcatStr
  loc_A9B948: FStStrNoPop var_114
  loc_A9B94B: FMemLdR4 var_100(4)
  loc_A9B950: ConcatStr
  loc_A9B951: FStStrNoPop var_118
  loc_A9B954: LitStr "|"
  loc_A9B957: ConcatStr
  loc_A9B958: FStStrNoPop var_11C
  loc_A9B95B: FMemLdR4 var_100(8)
  loc_A9B960: ConcatStr
  loc_A9B961: FStStrNoPop var_120
  loc_A9B964: LitStr "|"
  loc_A9B967: ConcatStr
  loc_A9B968: FStStrNoPop var_124
  loc_A9B96B: FLdPr Me
  loc_A9B96E: MemLdI2 global_102
  loc_A9B971: CI4UI1
  loc_A9B972: FMemLdR4 var_100(16)
  loc_A9B977: Ary1LdPr
  loc_A9B978: MemLdStr global_0
  loc_A9B97B: ConcatStr
  loc_A9B97C: FStStrNoPop var_128
  loc_A9B97F: LitStr "|"
  loc_A9B982: ConcatStr
  loc_A9B983: FStStrNoPop var_12C
  loc_A9B986: FLdPr Me
  loc_A9B989: MemLdI2 global_102
  loc_A9B98C: CI4UI1
  loc_A9B98D: FMemLdR4 var_100(16)
  loc_A9B992: Ary1LdPr
  loc_A9B993: MemLdStr global_4
  loc_A9B996: ConcatStr
  loc_A9B997: FStStrNoPop var_130
  loc_A9B99A: LitStr "|"
  loc_A9B99D: ConcatStr
  loc_A9B99E: FStStr var_8C
  loc_A9B9A1: FFreeStr var_94 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_A9B9BC: ILdRf var_8C
  loc_A9B9BF: FLdPr Me
  loc_A9B9C2: MemLdI2 global_102
  loc_A9B9C5: CI4UI1
  loc_A9B9C6: FMemLdR4 var_100(16)
  loc_A9B9CB: Ary1LdPr
  loc_A9B9CC: MemLdStr global_8
  loc_A9B9CF: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A9B9D4: FStStrNoPop var_94
  loc_A9B9D7: ConcatStr
  loc_A9B9D8: FStStrNoPop var_108
  loc_A9B9DB: LitStr "|"
  loc_A9B9DE: ConcatStr
  loc_A9B9DF: FStStrNoPop var_10C
  loc_A9B9E2: FLdPr Me
  loc_A9B9E5: MemLdI2 global_102
  loc_A9B9E8: CI4UI1
  loc_A9B9E9: FMemLdR4 var_100(16)
  loc_A9B9EE: Ary1LdPr
  loc_A9B9EF: MemLdStr global_12
  loc_A9B9F2: ConcatStr
  loc_A9B9F3: FStStrNoPop var_110
  loc_A9B9F6: LitStr "|"
  loc_A9B9F9: ConcatStr
  loc_A9B9FA: FStStrNoPop var_114
  loc_A9B9FD: FLdPr Me
  loc_A9BA00: MemLdI2 global_102
  loc_A9BA03: CI4UI1
  loc_A9BA04: FMemLdR4 var_100(16)
  loc_A9BA09: Ary1LdPr
  loc_A9BA0A: MemLdStr global_16
  loc_A9BA0D: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A9BA12: FStStrNoPop var_118
  loc_A9BA15: ConcatStr
  loc_A9BA16: FStStrNoPop var_11C
  loc_A9BA19: LitStr "|"
  loc_A9BA1C: ConcatStr
  loc_A9BA1D: FStStrNoPop var_120
  loc_A9BA20: FLdPr Me
  loc_A9BA23: MemLdI2 global_102
  loc_A9BA26: CI4UI1
  loc_A9BA27: FMemLdR4 var_100(16)
  loc_A9BA2C: Ary1LdPr
  loc_A9BA2D: MemLdStr global_20
  loc_A9BA30: ConcatStr
  loc_A9BA31: FStStrNoPop var_124
  loc_A9BA34: LitStr "|"
  loc_A9BA37: ConcatStr
  loc_A9BA38: FStStrNoPop var_128
  loc_A9BA3B: FLdPr Me
  loc_A9BA3E: MemLdI2 global_102
  loc_A9BA41: CI4UI1
  loc_A9BA42: FMemLdR4 var_100(16)
  loc_A9BA47: Ary1LdPr
  loc_A9BA48: MemLdStr global_24
  loc_A9BA4B: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A9BA50: FStStrNoPop var_12C
  loc_A9BA53: ConcatStr
  loc_A9BA54: FStStrNoPop var_130
  loc_A9BA57: LitStr "|"
  loc_A9BA5A: ConcatStr
  loc_A9BA5B: FStStrNoPop var_134
  loc_A9BA5E: FLdPr Me
  loc_A9BA61: MemLdI2 global_102
  loc_A9BA64: CI4UI1
  loc_A9BA65: FMemLdR4 var_100(16)
  loc_A9BA6A: Ary1LdPr
  loc_A9BA6B: MemLdStr global_28
  loc_A9BA6E: ConcatStr
  loc_A9BA6F: FStStrNoPop var_138
  loc_A9BA72: LitStr "|"
  loc_A9BA75: ConcatStr
  loc_A9BA76: FStStrNoPop var_13C
  loc_A9BA79: FLdPr Me
  loc_A9BA7C: MemLdI2 global_102
  loc_A9BA7F: CI4UI1
  loc_A9BA80: FMemLdR4 var_100(16)
  loc_A9BA85: Ary1LdPr
  loc_A9BA86: MemLdStr global_32
  loc_A9BA89: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A9BA8E: FStStrNoPop var_140
  loc_A9BA91: ConcatStr
  loc_A9BA92: FStStrNoPop var_144
  loc_A9BA95: LitStr "|"
  loc_A9BA98: ConcatStr
  loc_A9BA99: FStStr var_8C
  loc_A9BA9C: FFreeStr var_94 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_A9BAC1: ILdRf var_8C
  loc_A9BAC4: FMemLdR4 var_100(12)
  loc_A9BAC9: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A9BACE: FStStrNoPop var_94
  loc_A9BAD1: ConcatStr
  loc_A9BAD2: FStStr var_8C
  loc_A9BAD5: FFree1Str var_94
  loc_A9BAD8: ILdRf var_8C
  loc_A9BADB: CVarStr var_B4
  loc_A9BADE: LitI4 &HD
  loc_A9BAE3: FLdRfVar var_A4
  loc_A9BAE6: ImpAdCallFPR4  = Chr()
  loc_A9BAEB: FLdRfVar var_A4
  loc_A9BAEE: ConcatVar var_C4
  loc_A9BAF2: LitI4 &HA
  loc_A9BAF7: FLdRfVar var_D4
  loc_A9BAFA: ImpAdCallFPR4  = Chr()
  loc_A9BAFF: FLdRfVar var_D4
  loc_A9BB02: ConcatVar var_E4
  loc_A9BB06: CStrVarTmp
  loc_A9BB07: FStStr var_8C
  loc_A9BB0A: FFreeVar var_A4 = "": var_C4 = "": var_D4 = ""
  loc_A9BB15: FLdRfVar var_8C
  loc_A9BB18: CDargRef
  loc_A9BB1C: FLdPr Me
  loc_A9BB1F: MemLdRfVar from_stack_1.txtFile
  loc_A9BB22: LdPrVar
  loc_A9BB24: LateMemCall
  loc_A9BB2A: FLdPr Me
  loc_A9BB2D: MemLdRfVar from_stack_1.global_102
  loc_A9BB30: NextI2 var_104, loc_A9B87C
  loc_A9BB35: Branch loc_A9BBF0
  loc_A9BB38: ILdRf var_88
  loc_A9BB3B: LitStr "|"
  loc_A9BB3E: ConcatStr
  loc_A9BB3F: FStStrNoPop var_94
  loc_A9BB42: LitStr "eee-2022-060204"
  loc_A9BB45: ConcatStr
  loc_A9BB46: FStStrNoPop var_108
  loc_A9BB49: LitStr "|"
  loc_A9BB4C: ConcatStr
  loc_A9BB4D: FStStrNoPop var_10C
  loc_A9BB50: FMemLdR4 var_100(0)
  loc_A9BB55: ConcatStr
  loc_A9BB56: FStStrNoPop var_110
  loc_A9BB59: LitStr "|"
  loc_A9BB5C: ConcatStr
  loc_A9BB5D: FStStrNoPop var_114
  loc_A9BB60: FMemLdR4 var_100(4)
  loc_A9BB65: ConcatStr
  loc_A9BB66: FStStrNoPop var_118
  loc_A9BB69: LitStr "|"
  loc_A9BB6C: ConcatStr
  loc_A9BB6D: FStStrNoPop var_11C
  loc_A9BB70: FMemLdR4 var_100(8)
  loc_A9BB75: ConcatStr
  loc_A9BB76: FStStrNoPop var_120
  loc_A9BB79: LitStr "|||0,00||0,00||0,00||0,00|"
  loc_A9BB7C: ConcatStr
  loc_A9BB7D: FStStrNoPop var_124
  loc_A9BB80: FMemLdR4 var_100(12)
  loc_A9BB85: ConcatStr
  loc_A9BB86: FStStr var_8C
  loc_A9BB89: FFreeStr var_94 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_A9BB9E: ILdRf var_8C
  loc_A9BBA1: CVarStr var_B4
  loc_A9BBA4: LitI4 &HD
  loc_A9BBA9: FLdRfVar var_A4
  loc_A9BBAC: ImpAdCallFPR4  = Chr()
  loc_A9BBB1: FLdRfVar var_A4
  loc_A9BBB4: ConcatVar var_C4
  loc_A9BBB8: LitI4 &HA
  loc_A9BBBD: FLdRfVar var_D4
  loc_A9BBC0: ImpAdCallFPR4  = Chr()
  loc_A9BBC5: FLdRfVar var_D4
  loc_A9BBC8: ConcatVar var_E4
  loc_A9BBCC: CStrVarTmp
  loc_A9BBCD: FStStr var_8C
  loc_A9BBD0: FFreeVar var_A4 = "": var_C4 = "": var_D4 = ""
  loc_A9BBDB: FLdRfVar var_8C
  loc_A9BBDE: CDargRef
  loc_A9BBE2: FLdPr Me
  loc_A9BBE5: MemLdRfVar from_stack_1.txtFile
  loc_A9BBE8: LdPrVar
  loc_A9BBEA: LateMemCall
  loc_A9BBF0: LitI4 0
  loc_A9BBF5: FStR4 var_100
  loc_A9BBF8: AryUnlock
  loc_A9BBFB: FLdPr Me
  loc_A9BBFE: MemLdRfVar from_stack_1.global_100
  loc_A9BC01: NextI2 var_F8, loc_A9B83E
  loc_A9BC06: FLdPr Me
  loc_A9BC09: MemLdRfVar from_stack_1.txtFile
  loc_A9BC0C: LdPrVar
  loc_A9BC0E: LateMemCall
  loc_A9BC14: ExitProcHresult
  loc_A9BC15: Branch loc_A9BAFB
End Sub

Public Sub HabilitarCriterio() '996718
  'Data Table: 475F58
  loc_9966C4: LitI4 0
  loc_9966C9: LitI4 2
  loc_9966CE: FLdRfVar var_88
  loc_9966D1: Redim
  loc_9966DB: FLdPr Me
  loc_9966DE: VCallAd Control_ID_cboPeriodo
  loc_9966E1: CVarAd
  loc_9966E5: ParmAry1St
  loc_9966EB: FLdPr Me
  loc_9966EE: VCallAd Control_ID_mskHasta
  loc_9966F1: CVarAd
  loc_9966F5: ParmAry1St
  loc_9966FB: FLdPr Me
  loc_9966FE: VCallAd Control_ID_cmdHasta
  loc_996701: CVarAd
  loc_996705: ParmAry1St
  loc_99670B: FLdRfVar var_88
  loc_99670E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_996713: FLdRfVar var_88
  loc_996716: Erase
  loc_996717: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AD135C
  'Data Table: 475F58
  loc_AD0D4C: LitStr vbNullString
  loc_AD0D4F: FLdPr Me
  loc_AD0D52: MemStStrCopy
  loc_AD0D56: LitI2_Byte 0
  loc_AD0D58: PopTmpLdAd2 var_86
  loc_AD0D5B: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AD0D60: FLdPr Me
  loc_AD0D63: MemLdStr global_116
  loc_AD0D66: LitStr vbNullString
  loc_AD0D69: NeStr
  loc_AD0D6B: BranchF loc_AD0D71
  loc_AD0D6E: Branch loc_AD1334
  loc_AD0D71: FLdPr Me
  loc_AD0D74: MemLdI2 bGenerado
  loc_AD0D77: BranchF loc_AD0D7B
  loc_AD0D7A: ExitProcHresult
  loc_AD0D7B: LitVarStr var_98, "Generando reporte..."
  loc_AD0D80: PopAdLdVar
  loc_AD0D81: FLdPr Me
  loc_AD0D84: VCallAd Control_ID_statusBar
  loc_AD0D87: FStAdFunc var_AC
  loc_AD0D8A: FLdPr var_AC
  loc_AD0D8D: LateIdSt
  loc_AD0D92: FFree1Ad var_AC
  loc_AD0D95: LitI4 &HB
  loc_AD0D9A: CI2I4
  loc_AD0D9B: FLdPr Me
  loc_AD0D9E: Me.MousePointer = from_stack_1
  loc_AD0DA3: FLdPr Me
  loc_AD0DA6: MemLdRfVar from_stack_1.global_88
  loc_AD0DA9: NewIfNullAd
  loc_AD0DAC: FStAd var_B0 
  loc_AD0DB0: LitStr "SET @peri = "
  loc_AD0DB3: FLdRfVar var_B4
  loc_AD0DB6: FLdPr Me
  loc_AD0DB9: VCallAd Control_ID_cboPeriodo
  loc_AD0DBC: FStAdFunc var_AC
  loc_AD0DBF: FLdPr var_AC
  loc_AD0DC2:  = Me.Text
  loc_AD0DC7: ILdRf var_B4
  loc_AD0DCA: ConcatStr
  loc_AD0DCB: FStStrNoPop var_B8
  loc_AD0DCE: LitStr ";"
  loc_AD0DD1: ConcatStr
  loc_AD0DD2: FStStrNoPop var_BC
  loc_AD0DD5: FLdPr var_B0
  loc_AD0DD8: Call clsbase.RedefineRS(from_stack_1v)
  loc_AD0DDD: FFreeStr var_B4 = "": var_B8 = ""
  loc_AD0DE6: FFree1Ad var_AC
  loc_AD0DE9: FLdPr Me
  loc_AD0DEC: VCallAd Control_ID_mskHasta
  loc_AD0DEF: FStAdFunc var_AC
  loc_AD0DF2: FLdPr var_AC
  loc_AD0DF5: LateIdLdVar var_CC DispID_15 0
  loc_AD0DFC: PopAd
  loc_AD0DFE: LitStr "SET @hasta = "
  loc_AD0E01: LitI4 1
  loc_AD0E06: LitI4 1
  loc_AD0E0B: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_AD0E10: FStVarCopyObj var_EC
  loc_AD0E13: FLdRfVar var_EC
  loc_AD0E16: FLdRfVar var_CC
  loc_AD0E19: CStrVarTmp
  loc_AD0E1A: CVarStr var_DC
  loc_AD0E1D: ImpAdCallI2 Format$(, )
  loc_AD0E22: FStStrNoPop var_B4
  loc_AD0E25: ConcatStr
  loc_AD0E26: FStStrNoPop var_B8
  loc_AD0E29: LitStr ";"
  loc_AD0E2C: ConcatStr
  loc_AD0E2D: FStStrNoPop var_BC
  loc_AD0E30: FLdPr var_B0
  loc_AD0E33: Call clsbase.RedefineRS(from_stack_1v)
  loc_AD0E38: FFreeStr var_B4 = "": var_B8 = ""
  loc_AD0E41: FFree1Ad var_AC
  loc_AD0E44: FFreeVar var_CC = "": var_DC = ""
  loc_AD0E4D: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_AD0E50: LitStr " CREATE TEMPORARY TABLE tmovi ("
  loc_AD0E53: ConcatStr
  loc_AD0E54: FStStrNoPop var_B4
  loc_AD0E57: LitStr "  eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_AD0E5A: ConcatStr
  loc_AD0E5B: FStStrNoPop var_B8
  loc_AD0E5E: LitStr "  odiCuco` varchar(12) NOT NULL DEFAULT '',"
  loc_AD0E61: ConcatStr
  loc_AD0E62: FStStrNoPop var_BC
  loc_AD0E65: LitStr "  etaCuco` varchar(100) NOT NULL DEFAULT '',"
  loc_AD0E68: ConcatStr
  loc_AD0E69: FStStrNoPop var_F0
  loc_AD0E6C: LitStr "  aldMoas` decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_AD0E6F: ConcatStr
  loc_AD0E70: FStStrNoPop var_F4
  loc_AD0E73: LitStr "  odiPart` varchar(9) NOT NULL DEFAULT '',"
  loc_AD0E76: ConcatStr
  loc_AD0E77: FStStrNoPop var_F8
  loc_AD0E7A: LitStr "  etaPart` varchar(100) NOT NULL DEFAULT '',"
  loc_AD0E7D: ConcatStr
  loc_AD0E7E: FStStrNoPop var_FC
  loc_AD0E81: LitStr "  mpoAlta` decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_AD0E84: ConcatStr
  loc_AD0E85: FStStrNoPop var_100
  loc_AD0E88: LitStr "  otiAlta` varchar(200) NOT NULL DEFAULT '',"
  loc_AD0E8B: ConcatStr
  loc_AD0E8C: FStStrNoPop var_104
  loc_AD0E8F: LitStr "  troAlta` decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_AD0E92: ConcatStr
  loc_AD0E93: FStStrNoPop var_108
  loc_AD0E96: LitStr "  ormLega` varchar(50) NOT NULL DEFAULT '',"
  loc_AD0E99: ConcatStr
  loc_AD0E9A: FStStrNoPop var_10C
  loc_AD0E9D: LitStr "  mpoBaja` decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_AD0EA0: ConcatStr
  loc_AD0EA1: FStStrNoPop var_110
  loc_AD0EA4: LitStr "  otiBaja` varchar(200) NOT NULL DEFAULT '',"
  loc_AD0EA7: ConcatStr
  loc_AD0EA8: FStStrNoPop var_114
  loc_AD0EAB: LitStr "  troBaja` decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_AD0EAE: ConcatStr
  loc_AD0EAF: FStStrNoPop var_118
  loc_AD0EB2: LitStr "  KEY dxtmovi` (`PeriInfo`,`CodiCuco`,`CodiPart`)"
  loc_AD0EB5: ConcatStr
  loc_AD0EB6: FStStrNoPop var_11C
  loc_AD0EB9: LitStr " ) ;"
  loc_AD0EBC: ConcatStr
  loc_AD0EBD: FStStrNoPop var_120
  loc_AD0EC0: FLdPr var_B0
  loc_AD0EC3: Call clsbase.RedefineRS(from_stack_1v)
  loc_AD0EC8: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_AD0EEB: LitStr "INSERT INTO tmovi (PeriInfo,CodiCuco,DetaCuco,SaldMoas)"
  loc_AD0EEE: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, DetaCuco"
  loc_AD0EF1: ConcatStr
  loc_AD0EF2: FStStrNoPop var_B4
  loc_AD0EF5: LitStr ", IFNULL((SELECT SUM(DebeMoas)- SUM(HabeMoas) FROM moviasiento mv INNER JOIN asiento a ON a.PeriInfo = mv.PeriInfo AND a.CodiAsie = mv.CodiAsie AND a.CodiTias IN (17,18) WHERE mv.PeriInfo = cc.PeriInfo AND mv.CodiCuco = cc.CodiCuco), 0) saldo"
  loc_AD0EF8: ConcatStr
  loc_AD0EF9: FStStrNoPop var_B8
  loc_AD0EFC: LitStr " FROM infogov.cuentacontable cc"
  loc_AD0EFF: ConcatStr
  loc_AD0F00: FStStrNoPop var_BC
  loc_AD0F03: LitStr " WHERE cc.PeriInfo = @peri"
  loc_AD0F06: ConcatStr
  loc_AD0F07: FStStrNoPop var_F0
  loc_AD0F0A: LitStr " AND CodiTicu = '1220' AND ImpuCuco = 1;"
  loc_AD0F0D: ConcatStr
  loc_AD0F0E: FStStrNoPop var_F4
  loc_AD0F11: FLdPr var_B0
  loc_AD0F14: Call clsbase.RedefineRS(from_stack_1v)
  loc_AD0F19: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_F0 = ""
  loc_AD0F26: LitStr "Municipalidad de Guaymallén"
  loc_AD0F29: LitStr "Municipalidad de Maipúuuuuuuuuuuuuuuuuuuu"
  loc_AD0F2C: EqStr
  loc_AD0F2E: BranchF loc_AD0FE4
  loc_AD0F31: LitStr "INSERT INTO tmovi (PeriInfo,CodiCuco,CodiPart,DetaPart,ImpoAlta,MotiAlta,OtroAlta,NormLega,ImpoBaja,MotiBaja,OtroBaja)"
  loc_AD0F34: LitStr " SELECT inve.PeriInfo, inve.CodiCuco, IF(i.CodiPart IS NULL OR i.CodiPart = '','00000000',i.CodiPart) CodiPart, IFNULL(p.DetaPart,'Sin Partida') DetaPart"
  loc_AD0F37: ConcatStr
  loc_AD0F38: FStStrNoPop var_B4
  loc_AD0F3B: LitStr "/*, Sum(IF(Year(FechInpa)=@peri AND i.CodiPart <> '',ImpoInpa,0)) ImpoAlta*/"
  loc_AD0F3E: ConcatStr
  loc_AD0F3F: FStStrNoPop var_B8
  loc_AD0F42: LitStr ", Sum(IF(Year(FechInpa)=@peri AND i.CodiPart!='' AND inve.CodiAlbius=2 AND LEFT(i.CodiPart,1)!=pc.PaexPaco,ImpoInpa,0)) ImpoAlta"
  loc_AD0F45: ConcatStr
  loc_AD0F46: FStStrNoPop var_BC
  loc_AD0F49: LitStr ", IF(Year(FechInpa)=@peri AND CodiAlbius = 3,'Donación','') MotiAlta"
  loc_AD0F4C: ConcatStr
  loc_AD0F4D: FStStrNoPop var_F0
  loc_AD0F50: LitStr "/*, Sum(IF(Year(FechInpa)=@peri AND (i.CodiPart IS NULL OR i.CodiPart = ''),ImpoInpa,0)) OtroAlta*/"
  loc_AD0F53: ConcatStr
  loc_AD0F54: FStStrNoPop var_F4
  loc_AD0F57: LitStr ", SUM(IF(YEAR(FechInpa)=@peri AND (i.CodiPart='' OR inve.CodiAlbius!=2 OR LEFT(i.CodiPart,1)=pc.PaexPaco),ImpoInpa,0)) OtroAlta"
  loc_AD0F5A: ConcatStr
  loc_AD0F5B: FStStrNoPop var_F8
  loc_AD0F5E: LitStr ", Left(Group_concat(Distinct NoleInpa),50) NoleInpa"
  loc_AD0F61: ConcatStr
  loc_AD0F62: FStStrNoPop var_FC
  loc_AD0F65: LitStr ", Sum(IF(Year(FebaInpa) = @peri AND inve.PeriInfo = Year(FebaInpa) AND FebaInpa <= @hasta AND CodiBabius = 4,ImpoInpa,0)) ImpoBaja"
  loc_AD0F68: ConcatStr
  loc_AD0F69: FStStrNoPop var_100
  loc_AD0F6C: LitStr ", IF(Year(FebaInpa) = @peri AND NoleInpa='',inve.BajaMoti,'') MotiBaja"
  loc_AD0F6F: ConcatStr
  loc_AD0F70: FStStrNoPop var_104
  loc_AD0F73: LitStr ", Sum(IF((Year(FebaInpa) = @peri AND inve.PeriInfo != Year(FebaInpa)) OR (Year(FebaInpa) = @peri AND inve.PeriInfo = Year(FebaInpa) AND FebaInpa <= @hasta AND CodiBabius != 4) ,ImpoInpa,0)) OtroBaja"
  loc_AD0F76: ConcatStr
  loc_AD0F77: FStStrNoPop var_108
  loc_AD0F7A: LitStr " FROM invepatrimonial inve"
  loc_AD0F7D: ConcatStr
  loc_AD0F7E: FStStrNoPop var_10C
  loc_AD0F81: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = @peri"
  loc_AD0F84: ConcatStr
  loc_AD0F85: FStStrNoPop var_110
  loc_AD0F88: LitStr " LEFT JOIN imputacion i ON i.PeriInfo = inve.PeriInfo AND i.IdImpu = inve.IdImpu"
  loc_AD0F8B: ConcatStr
  loc_AD0F8C: FStStrNoPop var_114
  loc_AD0F8F: LitStr " LEFT JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AD0F92: ConcatStr
  loc_AD0F93: FStStrNoPop var_118
  loc_AD0F96: LitStr " WHERE inve.CodiInpa > 0"
  loc_AD0F99: ConcatStr
  loc_AD0F9A: FStStrNoPop var_11C
  loc_AD0F9D: LitStr " AND ((Year(FechInpa) = @peri AND FechInpa <= @hasta) OR (Year(FebaInpa) = @peri AND FebaInpa <= @hasta))"
  loc_AD0FA0: ConcatStr
  loc_AD0FA1: FStStrNoPop var_120
  loc_AD0FA4: LitStr " GROUP BY CodiCuco, CodiPart, p.DetaPart"
  loc_AD0FA7: ConcatStr
  loc_AD0FA8: FStStrNoPop var_124
  loc_AD0FAB: LitStr " HAVING ImpoAlta <> 0 OR OtroAlta <> 0 OR ImpoBaja <> 0 OR OtroBaja <> 0;"
  loc_AD0FAE: ConcatStr
  loc_AD0FAF: FStStrNoPop var_128
  loc_AD0FB2: FLdPr var_B0
  loc_AD0FB5: Call clsbase.RedefineRS(from_stack_1v)
  loc_AD0FBA: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_AD0FE1: Branch loc_AD114A
  loc_AD0FE4: FLdRfVar var_B4
  loc_AD0FE7: FLdPr Me
  loc_AD0FEA: VCallAd Control_ID_cboPeriodo
  loc_AD0FED: FStAdFunc var_AC
  loc_AD0FF0: FLdPr var_AC
  loc_AD0FF3:  = Me.Text
  loc_AD0FF8: ILdRf var_B4
  loc_AD0FFB: CR8Str
  loc_AD0FFD: LitI2 2020
  loc_AD1000: CR8I2
  loc_AD1001: GeR8
  loc_AD1002: FFree1Str var_B4
  loc_AD1005: FFree1Ad var_AC
  loc_AD1008: BranchF loc_AD10B5
  loc_AD100B: LitStr "INSERT INTO tmovi (PeriInfo,CodiCuco,CodiPart,DetaPart,ImpoAlta,MotiAlta,OtroAlta,NormLega,ImpoBaja,MotiBaja,OtroBaja)"
  loc_AD100E: LitStr " SELECT inve.PeriInfo, inve.CodiCuco, IF(i.CodiPart IS NULL OR i.CodiPart = '','00000000',i.CodiPart) CodiPart"
  loc_AD1011: ConcatStr
  loc_AD1012: FStStrNoPop var_B4
  loc_AD1015: LitStr ", IFNULL(DetaPart,'Sin Partida') DetaPart"
  loc_AD1018: ConcatStr
  loc_AD1019: FStStrNoPop var_B8
  loc_AD101C: LitStr ", Sum(IF(Year(FechInpa)=@peri AND i.CodiPart!='' AND inve.CodiAlbius=2 AND LEFT(i.CodiPart,1)!=pc.PaexPaco,ImpoInpa,0)) ImpoAlta"
  loc_AD101F: ConcatStr
  loc_AD1020: FStStrNoPop var_BC
  loc_AD1023: LitStr ", IF(Year(FechInpa)=@peri AND CodiAlbius=3,'Donación','') MotiAlta"
  loc_AD1026: ConcatStr
  loc_AD1027: FStStrNoPop var_F0
  loc_AD102A: LitStr " , SUM(IF(YEAR(FechInpa)=@peri AND (i.CodiPart='' OR inve.CodiAlbius!=2 OR LEFT(i.CodiPart,1)=pc.PaexPaco),ImpoInpa,0)) OtroAlta"
  loc_AD102D: ConcatStr
  loc_AD102E: FStStrNoPop var_F4
  loc_AD1031: LitStr ", Left(Group_concat(Distinct NoleInpa),50) NoleInpa"
  loc_AD1034: ConcatStr
  loc_AD1035: FStStrNoPop var_F8
  loc_AD1038: LitStr ", Sum(IF(Year(FebaInpa)=@peri AND inve.PeriInfo=Year(FebaInpa) AND FebaInpa<=@hasta AND inve.CodiAlbius=2 AND LEFT(i.CodiPart,1)!=pc.PaexPaco,ImpoInpa,0)) ImpoBaja"
  loc_AD103B: ConcatStr
  loc_AD103C: FStStrNoPop var_FC
  loc_AD103F: LitStr ", IF(Year(FebaInpa)=@peri AND NoleInpa='',inve.BajaMoti,'') MotiBaja"
  loc_AD1042: ConcatStr
  loc_AD1043: FStStrNoPop var_100
  loc_AD1046: LitStr ", Sum(IF( (Year(FebaInpa)=@peri AND inve.PeriInfo!=Year(FebaInpa) OR (Year(FebaInpa)=@peri AND FebaInpa<=@hasta AND inve.CodiAlbius!=2) OR (YEAR(FebaInpa)=@peri AND FebaInpa<=@hasta AND inve.CodiAlbius = 2 AND LEFT(i.CodiPart,1)=pc.PaexPaco) ),ImpoInpa,0)) OtroBaja"
  loc_AD1049: ConcatStr
  loc_AD104A: FStStrNoPop var_104
  loc_AD104D: LitStr " FROM invepatrimonial inve"
  loc_AD1050: ConcatStr
  loc_AD1051: FStStrNoPop var_108
  loc_AD1054: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = @peri"
  loc_AD1057: ConcatStr
  loc_AD1058: FStStrNoPop var_10C
  loc_AD105B: LitStr " LEFT JOIN imputacion i ON i.PeriInfo = inve.PeriInfo AND i.IdImpu = inve.IdImpu"
  loc_AD105E: ConcatStr
  loc_AD105F: FStStrNoPop var_110
  loc_AD1062: LitStr " LEFT JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AD1065: ConcatStr
  loc_AD1066: FStStrNoPop var_114
  loc_AD1069: LitStr " WHERE inve.CodiInpa > 0"
  loc_AD106C: ConcatStr
  loc_AD106D: FStStrNoPop var_118
  loc_AD1070: LitStr " AND ((Year(FechInpa) = @peri AND FechInpa <= @hasta) OR (Year(FebaInpa) = @peri AND FebaInpa <= @hasta))"
  loc_AD1073: ConcatStr
  loc_AD1074: FStStrNoPop var_11C
  loc_AD1077: LitStr " GROUP BY CodiCuco, CodiPart, DetaPart"
  loc_AD107A: ConcatStr
  loc_AD107B: FStStrNoPop var_120
  loc_AD107E: LitStr " HAVING ImpoAlta <> 0 OR OtroAlta <> 0 OR ImpoBaja <> 0 OR OtroBaja <> 0;"
  loc_AD1081: ConcatStr
  loc_AD1082: FStStrNoPop var_124
  loc_AD1085: FLdPr var_B0
  loc_AD1088: Call clsbase.RedefineRS(from_stack_1v)
  loc_AD108D: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AD10B2: Branch loc_AD114A
  loc_AD10B5: LitStr "INSERT INTO tmovi (PeriInfo,CodiCuco,CodiPart,DetaPart,ImpoAlta,MotiAlta,OtroAlta,NormLega,ImpoBaja,MotiBaja,OtroBaja)"
  loc_AD10B8: LitStr " SELECT inve.PeriInfo, inve.CodiCuco, IF(i.CodiPart IS NULL OR i.CodiPart = '','00000000',i.CodiPart) CodiPart, IFNULL(DetaPart,'Sin Partida') DetaPart"
  loc_AD10BB: ConcatStr
  loc_AD10BC: FStStrNoPop var_B4
  loc_AD10BF: LitStr ", Sum(IF(Year(FechInpa)=@peri AND i.CodiPart!='' AND inve.CodiAlbius=2,ImpoInpa,0)) ImpoAlta"
  loc_AD10C2: ConcatStr
  loc_AD10C3: FStStrNoPop var_B8
  loc_AD10C6: LitStr ", IF(Year(FechInpa)=@peri AND CodiAlbius = 3,'Donación','') MotiAlta"
  loc_AD10C9: ConcatStr
  loc_AD10CA: FStStrNoPop var_BC
  loc_AD10CD: LitStr ", Sum(IF(Year(FechInpa)=@peri AND i.CodiPart != '' AND inve.CodiAlbius = 2,0,ImpoInpa)) OtroAlta"
  loc_AD10D0: ConcatStr
  loc_AD10D1: FStStrNoPop var_F0
  loc_AD10D4: LitStr ", Left(Group_concat(Distinct NoleInpa),50) NoleInpa"
  loc_AD10D7: ConcatStr
  loc_AD10D8: FStStrNoPop var_F4
  loc_AD10DB: LitStr ", Sum(IF(Year(FebaInpa)=@peri AND inve.PeriInfo = Year(FebaInpa) AND FebaInpa <= @hasta,ImpoInpa,0)) ImpoBaja"
  loc_AD10DE: ConcatStr
  loc_AD10DF: FStStrNoPop var_F8
  loc_AD10E2: LitStr ", IF(Year(FebaInpa)=@peri AND NoleInpa='',inve.BajaMoti,'') MotiBaja"
  loc_AD10E5: ConcatStr
  loc_AD10E6: FStStrNoPop var_FC
  loc_AD10E9: LitStr ", Sum(IF(Year(FebaInpa)=@peri AND inve.PeriInfo != Year(FebaInpa),ImpoInpa,0)) OtroBaja"
  loc_AD10EC: ConcatStr
  loc_AD10ED: FStStrNoPop var_100
  loc_AD10F0: LitStr " FROM invepatrimonial inve"
  loc_AD10F3: ConcatStr
  loc_AD10F4: FStStrNoPop var_104
  loc_AD10F7: LitStr " LEFT JOIN imputacion i ON i.PeriInfo = inve.PeriInfo AND i.IdImpu = inve.IdImpu"
  loc_AD10FA: ConcatStr
  loc_AD10FB: FStStrNoPop var_108
  loc_AD10FE: LitStr " LEFT JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AD1101: ConcatStr
  loc_AD1102: FStStrNoPop var_10C
  loc_AD1105: LitStr " WHERE inve.CodiInpa > 0"
  loc_AD1108: ConcatStr
  loc_AD1109: FStStrNoPop var_110
  loc_AD110C: LitStr " AND ((Year(FechInpa) = @peri AND FechInpa <= @hasta) OR (Year(FebaInpa) = @peri AND FebaInpa <= @hasta))"
  loc_AD110F: ConcatStr
  loc_AD1110: FStStrNoPop var_114
  loc_AD1113: LitStr " GROUP BY CodiCuco, CodiPart"
  loc_AD1116: ConcatStr
  loc_AD1117: FStStrNoPop var_118
  loc_AD111A: LitStr " HAVING ImpoAlta <> 0 OR OtroAlta <> 0 OR ImpoBaja <> 0 OR OtroBaja <> 0;"
  loc_AD111D: ConcatStr
  loc_AD111E: FStStrNoPop var_11C
  loc_AD1121: FLdPr var_B0
  loc_AD1124: Call clsbase.RedefineRS(from_stack_1v)
  loc_AD1129: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_AD114A: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiCuco, tmovi.DetaCuco, Sum(tmovi.SaldMoas) SaldMoas"
  loc_AD114D: LitStr ", tmovi.CodiPart, DetaPart, Sum(tmovi.ImpoAlta) ImpoAlta, tmovi.MotiAlta, Sum(tmovi.OtroAlta) OtroAlta"
  loc_AD1150: ConcatStr
  loc_AD1151: FStStrNoPop var_B4
  loc_AD1154: LitStr ", tmovi.NormLega, Sum(tmovi.ImpoBaja) ImpoBaja, tmovi.MotiBaja, Sum(tmovi.OtroBaja) OtroBaja"
  loc_AD1157: ConcatStr
  loc_AD1158: FStStrNoPop var_B8
  loc_AD115B: LitStr " FROM tmovi"
  loc_AD115E: ConcatStr
  loc_AD115F: FStStrNoPop var_BC
  loc_AD1162: LitStr " GROUP BY CodiCuco, CodiPart, DetaPart"
  loc_AD1165: ConcatStr
  loc_AD1166: FStStrNoPop var_F0
  loc_AD1169: LitStr " ORDER BY CodiCuco, CodiPart;"
  loc_AD116C: ConcatStr
  loc_AD116D: FStStrNoPop var_F4
  loc_AD1170: FLdPr var_B0
  loc_AD1173: Call clsbase.RedefineRS(from_stack_1v)
  loc_AD1178: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_F0 = ""
  loc_AD1185: FLdRfVar var_12C
  loc_AD1188: FLdPr var_B0
  loc_AD118B: from_stack_1 = clsbase.RecordCount
  loc_AD1190: ILdRf var_12C
  loc_AD1193: LitI4 1
  loc_AD1198: LtI4
  loc_AD1199: BranchF loc_AD11AC
  loc_AD119C: LitI4 0
  loc_AD11A1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AD11A4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD11A9: Branch loc_AD1334
  loc_AD11AC: FLdPr var_B0
  loc_AD11AF: Call clsbase.MoveFirst()
  loc_AD11B4: LitI4 0
  loc_AD11B9: LitI4 1
  loc_AD11BE: FLdPr Me
  loc_AD11C1: MemLdRfVar from_stack_1.global_104
  loc_AD11C4: Redim
  loc_AD11CE: LitI2_Byte 0
  loc_AD11D0: LitVar_Missing var_CC
  loc_AD11D3: LitI2_Byte &HFF
  loc_AD11D5: LitVarI2 var_98, 0
  loc_AD11DA: PopAdLdVar
  loc_AD11DB: FLdPr Me
  loc_AD11DE: MemLdRfVar from_stack_1.global_108
  loc_AD11E1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD11E6: FFree1Var var_CC = ""
  loc_AD11E9: LitI2_Byte 0
  loc_AD11EB: LitVar_Missing var_CC
  loc_AD11EE: LitI2_Byte &HFF
  loc_AD11F0: LitVarI2 var_98, 0
  loc_AD11F5: PopAdLdVar
  loc_AD11F6: FLdPr Me
  loc_AD11F9: MemLdRfVar from_stack_1.global_112
  loc_AD11FC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD1201: FFree1Var var_CC = ""
  loc_AD1204: LitI2_Byte 0
  loc_AD1206: FLdPr Me
  loc_AD1209: MemStI2 global_100
  loc_AD120C: LitI4 0
  loc_AD1211: FLdPr Me
  loc_AD1214: MemLdI2 global_100
  loc_AD1217: CI4UI1
  loc_AD1218: FLdPr Me
  loc_AD121B: MemLdRfVar from_stack_1.global_96
  loc_AD121E: Redim
  loc_AD1228: Call Proc_156_30_A25690()
  loc_AD122D: FLdRfVar var_86
  loc_AD1230: FLdPr var_B0
  loc_AD1233: from_stack_1 = clsbase.EOF
  loc_AD1238: FLdI2 var_86
  loc_AD123B: NotI4
  loc_AD123C: BranchF loc_AD12AA
  loc_AD123F: FLdRfVar var_CC
  loc_AD1242: FLdRfVar var_134
  loc_AD1245: LitVarStr var_98, "CodiCuco"
  loc_AD124A: PopAdLdVar
  loc_AD124B: FLdRfVar var_130
  loc_AD124E: FLdRfVar var_AC
  loc_AD1251: FLdPr var_B0
  loc_AD1254: from_stack_1v = clsbase.RsFrmGet()
  loc_AD1259: FLdPr var_AC
  loc_AD125C:  = Me.Fields
  loc_AD1261: FLdPr var_130
  loc_AD1264: from_stack_2 = Me.Item(from_stack_1)
  loc_AD1269: FLdPr var_134
  loc_AD126C:  = Me.Value
  loc_AD1271: FLdRfVar var_CC
  loc_AD1274: FLdPr Me
  loc_AD1277: MemLdI2 global_100
  loc_AD127A: CI4UI1
  loc_AD127B: FLdPr Me
  loc_AD127E: MemLdStr global_96
  loc_AD1281: Ary1LdPr
  loc_AD1282: MemLdStr global_0
  loc_AD1285: CVarStr var_A8
  loc_AD1288: HardType
  loc_AD1289: NeVarBool
  loc_AD128B: FFreeAd var_AC = "": var_130 = ""
  loc_AD1294: FFree1Var var_CC = ""
  loc_AD1297: BranchF loc_AD12A2
  loc_AD129A: Call Proc_156_30_A25690()
  loc_AD129F: Branch loc_AD12A7
  loc_AD12A2: Call Proc_156_31_A824FC()
  loc_AD12A7: Branch loc_AD122D
  loc_AD12AA: LitNothing
  loc_AD12AC: FStAd var_B0 
  loc_AD12B0: LitI2_Byte 1
  loc_AD12B2: FLdPr Me
  loc_AD12B5: MemLdRfVar from_stack_1.global_100
  loc_AD12B8: FLdPr Me
  loc_AD12BB: MemLdStr global_96
  loc_AD12BE: LitI2_Byte 1
  loc_AD12C0: FnUBound
  loc_AD12C2: CI2I4
  loc_AD12C3: ForI2 var_13C
  loc_AD12C9: LitI2_Byte 0
  loc_AD12CB: FLdPr Me
  loc_AD12CE: MemLdRfVar from_stack_1.global_108
  loc_AD12D1: CVarRef
  loc_AD12D6: LitI2_Byte &HFF
  loc_AD12D8: FLdPr Me
  loc_AD12DB: MemLdI2 global_100
  loc_AD12DE: CI4UI1
  loc_AD12DF: FLdPr Me
  loc_AD12E2: MemLdStr global_96
  loc_AD12E5: Ary1LdPr
  loc_AD12E6: MemLdStr global_8
  loc_AD12E9: CVarStr var_98
  loc_AD12EC: PopAdLdVar
  loc_AD12ED: FLdRfVar var_138
  loc_AD12F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD12F5: LitI2_Byte 0
  loc_AD12F7: FLdPr Me
  loc_AD12FA: MemLdRfVar from_stack_1.global_112
  loc_AD12FD: CVarRef
  loc_AD1302: LitI2_Byte &HFF
  loc_AD1304: FLdPr Me
  loc_AD1307: MemLdI2 global_100
  loc_AD130A: CI4UI1
  loc_AD130B: FLdPr Me
  loc_AD130E: MemLdStr global_96
  loc_AD1311: Ary1LdPr
  loc_AD1312: MemLdStr global_12
  loc_AD1315: CVarStr var_98
  loc_AD1318: PopAdLdVar
  loc_AD1319: FLdRfVar var_138
  loc_AD131C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD1321: FLdPr Me
  loc_AD1324: MemLdRfVar from_stack_1.global_100
  loc_AD1327: NextI2 var_13C, loc_AD12C9
  loc_AD132C: LitI2_Byte &HFF
  loc_AD132E: FLdPr Me
  loc_AD1331: MemStI2 bGenerado
  loc_AD1334: LitI2_Byte 0
  loc_AD1336: FLdPr Me
  loc_AD1339: Me.MousePointer = from_stack_1
  loc_AD133E: LitVarStr var_98, vbNullString
  loc_AD1343: PopAdLdVar
  loc_AD1344: FLdPr Me
  loc_AD1347: VCallAd Control_ID_statusBar
  loc_AD134A: FStAdFunc var_AC
  loc_AD134D: FLdPr var_AC
  loc_AD1350: LateIdSt
  loc_AD1355: FFree1Ad var_AC
  loc_AD1358: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'ADEED8
  'Data Table: 475F58
  loc_ADE828: FLdRfVar var_88
  loc_ADE82B: LitI2_Byte 0
  loc_ADE82D: LitI2_Byte &HFF
  loc_ADE82F: ImpAdLdI4 MemVar_C3D83C
  loc_ADE832: FLdPr Me
  loc_ADE835: MemLdRfVar from_stack_1.global_92
  loc_ADE838: NewIfNullPr IFileSystem3
  loc_ADE83B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ADE840: ILdRf var_88
  loc_ADE843: FLdPr Me
  loc_ADE846: MemStVarAd
  loc_ADE84A: FFree1Ad var_88
  loc_ADE84D: Call Proc_156_32_A890B4()
  loc_ADE852: LitI2_Byte 1
  loc_ADE854: FLdPr Me
  loc_ADE857: MemLdRfVar from_stack_1.global_100
  loc_ADE85A: FLdPr Me
  loc_ADE85D: MemLdStr global_96
  loc_ADE860: LitI2_Byte 1
  loc_ADE862: FnUBound
  loc_ADE864: CI2I4
  loc_ADE865: ForI2 var_8C
  loc_ADE86B: FLdPr Me
  loc_ADE86E: MemLdI2 global_100
  loc_ADE871: CI4UI1
  loc_ADE872: FLdPr Me
  loc_ADE875: MemLdStr global_96
  loc_ADE878: AryLock
  loc_ADE87B: Ary1LdRf
  loc_ADE87C: FStR4 var_94
  loc_ADE87F: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADE884: PopAdLdVar
  loc_ADE885: FLdPr Me
  loc_ADE888: MemLdRfVar from_stack_1.htmFile
  loc_ADE88B: LdPrVar
  loc_ADE88D: LateMemCall
  loc_ADE893: LitStr "  <td rowspan="""
  loc_ADE896: FMemLdR4 var_94(16)
  loc_ADE89B: LitI2_Byte 1
  loc_ADE89D: FnUBound
  loc_ADE89F: CStrI4
  loc_ADE8A1: FStStrNoPop var_B8
  loc_ADE8A4: ConcatStr
  loc_ADE8A5: FStStrNoPop var_BC
  loc_ADE8A8: LitStr """ align=""left"">"
  loc_ADE8AB: ConcatStr
  loc_ADE8AC: FStStrNoPop var_C0
  loc_ADE8AF: FMemLdR4 var_94(0)
  loc_ADE8B4: ConcatStr
  loc_ADE8B5: FStStrNoPop var_C4
  loc_ADE8B8: LitStr "<br>"
  loc_ADE8BB: ConcatStr
  loc_ADE8BC: FStStrNoPop var_C8
  loc_ADE8BF: FMemLdR4 var_94(4)
  loc_ADE8C4: ConcatStr
  loc_ADE8C5: FStStrNoPop var_CC
  loc_ADE8C8: LitStr "</td>"
  loc_ADE8CB: ConcatStr
  loc_ADE8CC: CVarStr var_DC
  loc_ADE8CF: PopAdLdVar
  loc_ADE8D0: FLdPr Me
  loc_ADE8D3: MemLdRfVar from_stack_1.htmFile
  loc_ADE8D6: LdPrVar
  loc_ADE8D8: LateMemCall
  loc_ADE8DE: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_ADE8ED: FFree1Var var_DC = ""
  loc_ADE8F0: LitStr "  <td rowspan="""
  loc_ADE8F3: FMemLdR4 var_94(16)
  loc_ADE8F8: LitI2_Byte 1
  loc_ADE8FA: FnUBound
  loc_ADE8FC: CStrI4
  loc_ADE8FE: FStStrNoPop var_B8
  loc_ADE901: ConcatStr
  loc_ADE902: FStStrNoPop var_BC
  loc_ADE905: LitStr """ align=""right"">"
  loc_ADE908: ConcatStr
  loc_ADE909: FStStrNoPop var_C0
  loc_ADE90C: FMemLdR4 var_94(8)
  loc_ADE911: ConcatStr
  loc_ADE912: FStStrNoPop var_C4
  loc_ADE915: LitStr "</td>"
  loc_ADE918: ConcatStr
  loc_ADE919: CVarStr var_DC
  loc_ADE91C: PopAdLdVar
  loc_ADE91D: FLdPr Me
  loc_ADE920: MemLdRfVar from_stack_1.htmFile
  loc_ADE923: LdPrVar
  loc_ADE925: LateMemCall
  loc_ADE92B: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_ADE936: FFree1Var var_DC = ""
  loc_ADE939: FMemLdR4 var_94(16)
  loc_ADE93E: LitI2_Byte 1
  loc_ADE940: FnUBound
  loc_ADE942: LitI4 0
  loc_ADE947: GtI4
  loc_ADE948: BranchF loc_ADEBDD
  loc_ADE94B: LitI2_Byte 1
  loc_ADE94D: FLdPr Me
  loc_ADE950: MemLdRfVar from_stack_1.global_102
  loc_ADE953: FMemLdR4 var_94(16)
  loc_ADE958: LitI2_Byte 1
  loc_ADE95A: FnUBound
  loc_ADE95C: CI2I4
  loc_ADE95D: ForI2 var_E0
  loc_ADE963: FLdPr Me
  loc_ADE966: MemLdI2 global_102
  loc_ADE969: LitI2_Byte 1
  loc_ADE96B: GtI2
  loc_ADE96C: BranchF loc_ADE983
  loc_ADE96F: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADE974: PopAdLdVar
  loc_ADE975: FLdPr Me
  loc_ADE978: MemLdRfVar from_stack_1.htmFile
  loc_ADE97B: LdPrVar
  loc_ADE97D: LateMemCall
  loc_ADE983: FLdPr Me
  loc_ADE986: MemLdI2 global_102
  loc_ADE989: CI4UI1
  loc_ADE98A: FMemLdR4 var_94(16)
  loc_ADE98F: AryLock
  loc_ADE992: Ary1LdRf
  loc_ADE993: FStR4 var_E8
  loc_ADE996: FMemLdR4 var_E8(0)
  loc_ADE99B: LitStr "00000000"
  loc_ADE99E: EqStr
  loc_ADE9A0: BranchF loc_ADE9D4
  loc_ADE9A3: LitI4 0
  loc_ADE9A8: LitI4 0
  loc_ADE9AD: LitI2_Byte 0
  loc_ADE9AF: LitStr "left"
  loc_ADE9B2: FMemLdR4 var_E8(4)
  loc_ADE9B7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADE9BC: CVarStr var_DC
  loc_ADE9BF: PopAdLdVar
  loc_ADE9C0: FLdPr Me
  loc_ADE9C3: MemLdRfVar from_stack_1.htmFile
  loc_ADE9C6: LdPrVar
  loc_ADE9C8: LateMemCall
  loc_ADE9CE: FFree1Var var_DC = ""
  loc_ADE9D1: Branch loc_ADEA19
  loc_ADE9D4: LitI4 0
  loc_ADE9D9: LitI4 0
  loc_ADE9DE: LitI2_Byte 0
  loc_ADE9E0: LitStr "left"
  loc_ADE9E3: FMemLdR4 var_E8(0)
  loc_ADE9E8: LitStr " - "
  loc_ADE9EB: ConcatStr
  loc_ADE9EC: FStStrNoPop var_B8
  loc_ADE9EF: FMemLdR4 var_E8(4)
  loc_ADE9F4: ConcatStr
  loc_ADE9F5: FStStrNoPop var_BC
  loc_ADE9F8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADE9FD: CVarStr var_DC
  loc_ADEA00: PopAdLdVar
  loc_ADEA01: FLdPr Me
  loc_ADEA04: MemLdRfVar from_stack_1.htmFile
  loc_ADEA07: LdPrVar
  loc_ADEA09: LateMemCall
  loc_ADEA0F: FFreeStr var_B8 = ""
  loc_ADEA16: FFree1Var var_DC = ""
  loc_ADEA19: LitI4 0
  loc_ADEA1E: LitI4 0
  loc_ADEA23: LitI2_Byte 0
  loc_ADEA25: LitStr "right"
  loc_ADEA28: FMemLdR4 var_E8(8)
  loc_ADEA2D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEA32: CVarStr var_DC
  loc_ADEA35: PopAdLdVar
  loc_ADEA36: FLdPr Me
  loc_ADEA39: MemLdRfVar from_stack_1.htmFile
  loc_ADEA3C: LdPrVar
  loc_ADEA3E: LateMemCall
  loc_ADEA44: FFree1Var var_DC = ""
  loc_ADEA47: LitI4 0
  loc_ADEA4C: LitI4 0
  loc_ADEA51: LitI2_Byte 0
  loc_ADEA53: LitStr "left"
  loc_ADEA56: FMemLdR4 var_E8(12)
  loc_ADEA5B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEA60: CVarStr var_DC
  loc_ADEA63: PopAdLdVar
  loc_ADEA64: FLdPr Me
  loc_ADEA67: MemLdRfVar from_stack_1.htmFile
  loc_ADEA6A: LdPrVar
  loc_ADEA6C: LateMemCall
  loc_ADEA72: FFree1Var var_DC = ""
  loc_ADEA75: LitI4 0
  loc_ADEA7A: LitI4 0
  loc_ADEA7F: LitI2_Byte 0
  loc_ADEA81: LitStr "right"
  loc_ADEA84: FMemLdR4 var_E8(16)
  loc_ADEA89: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEA8E: CVarStr var_DC
  loc_ADEA91: PopAdLdVar
  loc_ADEA92: FLdPr Me
  loc_ADEA95: MemLdRfVar from_stack_1.htmFile
  loc_ADEA98: LdPrVar
  loc_ADEA9A: LateMemCall
  loc_ADEAA0: FFree1Var var_DC = ""
  loc_ADEAA3: LitI4 0
  loc_ADEAA8: LitI4 0
  loc_ADEAAD: LitI2_Byte 0
  loc_ADEAAF: LitStr "left"
  loc_ADEAB2: FMemLdR4 var_E8(20)
  loc_ADEAB7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEABC: CVarStr var_DC
  loc_ADEABF: PopAdLdVar
  loc_ADEAC0: FLdPr Me
  loc_ADEAC3: MemLdRfVar from_stack_1.htmFile
  loc_ADEAC6: LdPrVar
  loc_ADEAC8: LateMemCall
  loc_ADEACE: FFree1Var var_DC = ""
  loc_ADEAD1: LitI4 0
  loc_ADEAD6: LitI4 0
  loc_ADEADB: LitI2_Byte 0
  loc_ADEADD: LitStr "right"
  loc_ADEAE0: FMemLdR4 var_E8(24)
  loc_ADEAE5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEAEA: CVarStr var_DC
  loc_ADEAED: PopAdLdVar
  loc_ADEAEE: FLdPr Me
  loc_ADEAF1: MemLdRfVar from_stack_1.htmFile
  loc_ADEAF4: LdPrVar
  loc_ADEAF6: LateMemCall
  loc_ADEAFC: FFree1Var var_DC = ""
  loc_ADEAFF: LitI4 0
  loc_ADEB04: LitI4 0
  loc_ADEB09: LitI2_Byte 0
  loc_ADEB0B: LitStr "left"
  loc_ADEB0E: FMemLdR4 var_E8(28)
  loc_ADEB13: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEB18: CVarStr var_DC
  loc_ADEB1B: PopAdLdVar
  loc_ADEB1C: FLdPr Me
  loc_ADEB1F: MemLdRfVar from_stack_1.htmFile
  loc_ADEB22: LdPrVar
  loc_ADEB24: LateMemCall
  loc_ADEB2A: FFree1Var var_DC = ""
  loc_ADEB2D: LitI4 0
  loc_ADEB32: LitI4 0
  loc_ADEB37: LitI2_Byte 0
  loc_ADEB39: LitStr "right"
  loc_ADEB3C: FMemLdR4 var_E8(32)
  loc_ADEB41: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEB46: CVarStr var_DC
  loc_ADEB49: PopAdLdVar
  loc_ADEB4A: FLdPr Me
  loc_ADEB4D: MemLdRfVar from_stack_1.htmFile
  loc_ADEB50: LdPrVar
  loc_ADEB52: LateMemCall
  loc_ADEB58: FFree1Var var_DC = ""
  loc_ADEB5B: LitI4 0
  loc_ADEB60: FStR4 var_E8
  loc_ADEB63: AryUnlock
  loc_ADEB66: FLdPr Me
  loc_ADEB69: MemLdI2 global_102
  loc_ADEB6C: LitI2_Byte 1
  loc_ADEB6E: EqI2
  loc_ADEB6F: BranchF loc_ADEBBB
  loc_ADEB72: LitStr "  <td rowspan="""
  loc_ADEB75: FMemLdR4 var_94(16)
  loc_ADEB7A: LitI2_Byte 1
  loc_ADEB7C: FnUBound
  loc_ADEB7E: CStrI4
  loc_ADEB80: FStStrNoPop var_B8
  loc_ADEB83: ConcatStr
  loc_ADEB84: FStStrNoPop var_BC
  loc_ADEB87: LitStr """ align=""right"">"
  loc_ADEB8A: ConcatStr
  loc_ADEB8B: FStStrNoPop var_C0
  loc_ADEB8E: FMemLdR4 var_94(12)
  loc_ADEB93: ConcatStr
  loc_ADEB94: FStStrNoPop var_C4
  loc_ADEB97: LitStr "</td>"
  loc_ADEB9A: ConcatStr
  loc_ADEB9B: CVarStr var_DC
  loc_ADEB9E: PopAdLdVar
  loc_ADEB9F: FLdPr Me
  loc_ADEBA2: MemLdRfVar from_stack_1.htmFile
  loc_ADEBA5: LdPrVar
  loc_ADEBA7: LateMemCall
  loc_ADEBAD: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_ADEBB8: FFree1Var var_DC = ""
  loc_ADEBBB: LitVarStr var_A4, "     </tr>"
  loc_ADEBC0: PopAdLdVar
  loc_ADEBC1: FLdPr Me
  loc_ADEBC4: MemLdRfVar from_stack_1.htmFile
  loc_ADEBC7: LdPrVar
  loc_ADEBC9: LateMemCall
  loc_ADEBCF: FLdPr Me
  loc_ADEBD2: MemLdRfVar from_stack_1.global_102
  loc_ADEBD5: NextI2 var_E0, loc_ADE963
  loc_ADEBDA: Branch loc_ADEC81
  loc_ADEBDD: LitI2_Byte 1
  loc_ADEBDF: FLdPr Me
  loc_ADEBE2: MemLdRfVar from_stack_1.global_102
  loc_ADEBE5: LitI2_Byte 8
  loc_ADEBE7: ForI2 var_EC
  loc_ADEBED: LitI4 0
  loc_ADEBF2: LitI4 0
  loc_ADEBF7: LitI2_Byte 0
  loc_ADEBF9: LitStr "center"
  loc_ADEBFC: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_ADEBFF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEC04: CVarStr var_DC
  loc_ADEC07: PopAdLdVar
  loc_ADEC08: FLdPr Me
  loc_ADEC0B: MemLdRfVar from_stack_1.htmFile
  loc_ADEC0E: LdPrVar
  loc_ADEC10: LateMemCall
  loc_ADEC16: FFree1Var var_DC = ""
  loc_ADEC19: FLdPr Me
  loc_ADEC1C: MemLdRfVar from_stack_1.global_102
  loc_ADEC1F: NextI2 var_EC, loc_ADEBED
  loc_ADEC24: LitStr "  <td rowspan="""
  loc_ADEC27: FMemLdR4 var_94(16)
  loc_ADEC2C: LitI2_Byte 1
  loc_ADEC2E: FnUBound
  loc_ADEC30: CStrI4
  loc_ADEC32: FStStrNoPop var_B8
  loc_ADEC35: ConcatStr
  loc_ADEC36: FStStrNoPop var_BC
  loc_ADEC39: LitStr """ align=""right"">"
  loc_ADEC3C: ConcatStr
  loc_ADEC3D: FStStrNoPop var_C0
  loc_ADEC40: FMemLdR4 var_94(12)
  loc_ADEC45: ConcatStr
  loc_ADEC46: FStStrNoPop var_C4
  loc_ADEC49: LitStr "</td>"
  loc_ADEC4C: ConcatStr
  loc_ADEC4D: CVarStr var_DC
  loc_ADEC50: PopAdLdVar
  loc_ADEC51: FLdPr Me
  loc_ADEC54: MemLdRfVar from_stack_1.htmFile
  loc_ADEC57: LdPrVar
  loc_ADEC59: LateMemCall
  loc_ADEC5F: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_ADEC6A: FFree1Var var_DC = ""
  loc_ADEC6D: LitVarStr var_A4, "     </tr>"
  loc_ADEC72: PopAdLdVar
  loc_ADEC73: FLdPr Me
  loc_ADEC76: MemLdRfVar from_stack_1.htmFile
  loc_ADEC79: LdPrVar
  loc_ADEC7B: LateMemCall
  loc_ADEC81: LitI4 0
  loc_ADEC86: FStR4 var_94
  loc_ADEC89: AryUnlock
  loc_ADEC8C: FLdPr Me
  loc_ADEC8F: MemLdRfVar from_stack_1.global_100
  loc_ADEC92: NextI2 var_8C, loc_ADE86B
  loc_ADEC97: LitI4 1
  loc_ADEC9C: FLdPr Me
  loc_ADEC9F: MemLdStr global_104
  loc_ADECA2: AryLock
  loc_ADECA5: Ary1LdRf
  loc_ADECA6: FStR4 var_F4
  loc_ADECA9: LitVarStr var_A4, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_ADECAE: PopAdLdVar
  loc_ADECAF: FLdPr Me
  loc_ADECB2: MemLdRfVar from_stack_1.htmFile
  loc_ADECB5: LdPrVar
  loc_ADECB7: LateMemCall
  loc_ADECBD: LitVarStr var_A4, "  <td>TOTAL</td>"
  loc_ADECC2: PopAdLdVar
  loc_ADECC3: FLdPr Me
  loc_ADECC6: MemLdRfVar from_stack_1.htmFile
  loc_ADECC9: LdPrVar
  loc_ADECCB: LateMemCall
  loc_ADECD1: LitI4 0
  loc_ADECD6: LitI4 0
  loc_ADECDB: LitI2_Byte 0
  loc_ADECDD: LitStr "right"
  loc_ADECE0: FLdPr Me
  loc_ADECE3: MemLdStr global_108
  loc_ADECE6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADECEB: CVarStr var_DC
  loc_ADECEE: PopAdLdVar
  loc_ADECEF: FLdPr Me
  loc_ADECF2: MemLdRfVar from_stack_1.htmFile
  loc_ADECF5: LdPrVar
  loc_ADECF7: LateMemCall
  loc_ADECFD: FFree1Var var_DC = ""
  loc_ADED00: LitI4 0
  loc_ADED05: LitI4 0
  loc_ADED0A: LitI2_Byte 0
  loc_ADED0C: LitStr "center"
  loc_ADED0F: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_ADED12: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADED17: CVarStr var_DC
  loc_ADED1A: PopAdLdVar
  loc_ADED1B: FLdPr Me
  loc_ADED1E: MemLdRfVar from_stack_1.htmFile
  loc_ADED21: LdPrVar
  loc_ADED23: LateMemCall
  loc_ADED29: FFree1Var var_DC = ""
  loc_ADED2C: LitI4 0
  loc_ADED31: LitI4 0
  loc_ADED36: LitI2_Byte 0
  loc_ADED38: LitStr "right"
  loc_ADED3B: FMemLdR4 var_F4(8)
  loc_ADED40: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADED45: CVarStr var_DC
  loc_ADED48: PopAdLdVar
  loc_ADED49: FLdPr Me
  loc_ADED4C: MemLdRfVar from_stack_1.htmFile
  loc_ADED4F: LdPrVar
  loc_ADED51: LateMemCall
  loc_ADED57: FFree1Var var_DC = ""
  loc_ADED5A: LitI4 0
  loc_ADED5F: LitI4 0
  loc_ADED64: LitI2_Byte 0
  loc_ADED66: LitStr "center"
  loc_ADED69: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_ADED6C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADED71: CVarStr var_DC
  loc_ADED74: PopAdLdVar
  loc_ADED75: FLdPr Me
  loc_ADED78: MemLdRfVar from_stack_1.htmFile
  loc_ADED7B: LdPrVar
  loc_ADED7D: LateMemCall
  loc_ADED83: FFree1Var var_DC = ""
  loc_ADED86: LitI4 0
  loc_ADED8B: LitI4 0
  loc_ADED90: LitI2_Byte 0
  loc_ADED92: LitI4 0
  loc_ADED97: FMemLdR4 var_F4(16)
  loc_ADED9C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEDA1: CVarStr var_DC
  loc_ADEDA4: PopAdLdVar
  loc_ADEDA5: FLdPr Me
  loc_ADEDA8: MemLdRfVar from_stack_1.htmFile
  loc_ADEDAB: LdPrVar
  loc_ADEDAD: LateMemCall
  loc_ADEDB3: FFree1Var var_DC = ""
  loc_ADEDB6: LitI4 0
  loc_ADEDBB: LitI4 0
  loc_ADEDC0: LitI2_Byte 0
  loc_ADEDC2: LitStr "center"
  loc_ADEDC5: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_ADEDC8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEDCD: CVarStr var_DC
  loc_ADEDD0: PopAdLdVar
  loc_ADEDD1: FLdPr Me
  loc_ADEDD4: MemLdRfVar from_stack_1.htmFile
  loc_ADEDD7: LdPrVar
  loc_ADEDD9: LateMemCall
  loc_ADEDDF: FFree1Var var_DC = ""
  loc_ADEDE2: LitI4 0
  loc_ADEDE7: LitI4 0
  loc_ADEDEC: LitI2_Byte 0
  loc_ADEDEE: LitI4 0
  loc_ADEDF3: FMemLdR4 var_F4(24)
  loc_ADEDF8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEDFD: CVarStr var_DC
  loc_ADEE00: PopAdLdVar
  loc_ADEE01: FLdPr Me
  loc_ADEE04: MemLdRfVar from_stack_1.htmFile
  loc_ADEE07: LdPrVar
  loc_ADEE09: LateMemCall
  loc_ADEE0F: FFree1Var var_DC = ""
  loc_ADEE12: LitI4 0
  loc_ADEE17: LitI4 0
  loc_ADEE1C: LitI2_Byte 0
  loc_ADEE1E: LitStr "center"
  loc_ADEE21: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_ADEE24: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEE29: CVarStr var_DC
  loc_ADEE2C: PopAdLdVar
  loc_ADEE2D: FLdPr Me
  loc_ADEE30: MemLdRfVar from_stack_1.htmFile
  loc_ADEE33: LdPrVar
  loc_ADEE35: LateMemCall
  loc_ADEE3B: FFree1Var var_DC = ""
  loc_ADEE3E: LitI4 0
  loc_ADEE43: LitI4 0
  loc_ADEE48: LitI2_Byte 0
  loc_ADEE4A: LitI4 0
  loc_ADEE4F: FMemLdR4 var_F4(32)
  loc_ADEE54: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEE59: CVarStr var_DC
  loc_ADEE5C: PopAdLdVar
  loc_ADEE5D: FLdPr Me
  loc_ADEE60: MemLdRfVar from_stack_1.htmFile
  loc_ADEE63: LdPrVar
  loc_ADEE65: LateMemCall
  loc_ADEE6B: FFree1Var var_DC = ""
  loc_ADEE6E: LitI4 0
  loc_ADEE73: LitI4 0
  loc_ADEE78: LitI2_Byte 0
  loc_ADEE7A: LitStr "right"
  loc_ADEE7D: FLdPr Me
  loc_ADEE80: MemLdStr global_112
  loc_ADEE83: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADEE88: CVarStr var_DC
  loc_ADEE8B: PopAdLdVar
  loc_ADEE8C: FLdPr Me
  loc_ADEE8F: MemLdRfVar from_stack_1.htmFile
  loc_ADEE92: LdPrVar
  loc_ADEE94: LateMemCall
  loc_ADEE9A: FFree1Var var_DC = ""
  loc_ADEE9D: LitVarStr var_A4, "     </tr>"
  loc_ADEEA2: PopAdLdVar
  loc_ADEEA3: FLdPr Me
  loc_ADEEA6: MemLdRfVar from_stack_1.htmFile
  loc_ADEEA9: LdPrVar
  loc_ADEEAB: LateMemCall
  loc_ADEEB1: LitI4 0
  loc_ADEEB6: FStR4 var_F4
  loc_ADEEB9: AryUnlock
  loc_ADEEBC: Call Proc_156_33_A056E0()
  loc_ADEEC1: FLdPr Me
  loc_ADEEC4: MemLdRfVar from_stack_1.htmFile
  loc_ADEEC7: LdPrVar
  loc_ADEEC9: LateMemCall
  loc_ADEECF: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ADEED4: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94E91C
  'Data Table: 475F58
  loc_94E904: LitI2_Byte 0
  loc_94E906: FLdPr Me
  loc_94E909: MemStI2 bLogos
  loc_94E90C: Call GeneraHTML()
  loc_94E911: LitI2_Byte &HFF
  loc_94E913: FLdPr Me
  loc_94E916: MemStI2 bLogos
  loc_94E919: ExitProcHresult
End Sub

Private Function Proc_156_30_A25690() 'A25690
  'Data Table: 475F58
  loc_A254D8: FLdPr Me
  loc_A254DB: MemLdI2 global_100
  loc_A254DE: LitI2_Byte 1
  loc_A254E0: AddI2
  loc_A254E1: FLdPr Me
  loc_A254E4: MemStI2 global_100
  loc_A254E7: LitI2_Byte 0
  loc_A254E9: FLdPr Me
  loc_A254EC: MemStI2 global_102
  loc_A254EF: LitI4 0
  loc_A254F4: FLdPr Me
  loc_A254F7: MemLdI2 global_100
  loc_A254FA: CI4UI1
  loc_A254FB: FLdPr Me
  loc_A254FE: MemLdRfVar from_stack_1.global_96
  loc_A25501: RedimPreserve
  loc_A2550B: LitI4 0
  loc_A25510: LitI4 0
  loc_A25515: FLdPr Me
  loc_A25518: MemLdI2 global_100
  loc_A2551B: CI4UI1
  loc_A2551C: FLdPr Me
  loc_A2551F: MemLdStr global_96
  loc_A25522: Ary1LdPr
  loc_A25523: MemLdRfVar from_stack_1.global_16
  loc_A25526: RedimPreserve
  loc_A25530: FLdRfVar var_A0
  loc_A25533: LitVarStr var_9C, "CodiCuco"
  loc_A25538: PopAdLdVar
  loc_A25539: FLdRfVar var_8C
  loc_A2553C: FLdRfVar var_88
  loc_A2553F: FLdPr Me
  loc_A25542: MemLdRfVar from_stack_1.global_88
  loc_A25545: NewIfNullPr clsbase
  loc_A25548: from_stack_1v = clsbase.RsFrmGet()
  loc_A2554D: FLdPr var_88
  loc_A25550:  = Me.Fields
  loc_A25555: FLdPr var_8C
  loc_A25558: from_stack_2 = Me.Item(from_stack_1)
  loc_A2555D: LitI2_Byte 0
  loc_A2555F: LitVar_Missing var_D4
  loc_A25562: LitI2_Byte 0
  loc_A25564: FLdZeroAd var_A0
  loc_A25567: CVarAd
  loc_A2556B: PopAdLdVar
  loc_A2556C: FLdPr Me
  loc_A2556F: MemLdI2 global_100
  loc_A25572: CI4UI1
  loc_A25573: FLdPr Me
  loc_A25576: MemLdStr global_96
  loc_A25579: AryLock
  loc_A2557C: Ary1LdPr
  loc_A2557D: MemLdRfVar from_stack_1.global_0
  loc_A25580: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A25585: AryUnlock
  loc_A25588: FFreeAd var_88 = ""
  loc_A2558F: FFreeVar var_B4 = ""
  loc_A25596: FLdRfVar var_A0
  loc_A25599: LitVarStr var_9C, "DetaCuco"
  loc_A2559E: PopAdLdVar
  loc_A2559F: FLdRfVar var_8C
  loc_A255A2: FLdRfVar var_88
  loc_A255A5: FLdPr Me
  loc_A255A8: MemLdRfVar from_stack_1.global_88
  loc_A255AB: NewIfNullPr clsbase
  loc_A255AE: from_stack_1v = clsbase.RsFrmGet()
  loc_A255B3: FLdPr var_88
  loc_A255B6:  = Me.Fields
  loc_A255BB: FLdPr var_8C
  loc_A255BE: from_stack_2 = Me.Item(from_stack_1)
  loc_A255C3: LitI2_Byte 0
  loc_A255C5: LitVar_Missing var_D4
  loc_A255C8: LitI2_Byte 0
  loc_A255CA: FLdZeroAd var_A0
  loc_A255CD: CVarAd
  loc_A255D1: PopAdLdVar
  loc_A255D2: FLdPr Me
  loc_A255D5: MemLdI2 global_100
  loc_A255D8: CI4UI1
  loc_A255D9: FLdPr Me
  loc_A255DC: MemLdStr global_96
  loc_A255DF: AryLock
  loc_A255E2: Ary1LdPr
  loc_A255E3: MemLdRfVar from_stack_1.global_4
  loc_A255E6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A255EB: AryUnlock
  loc_A255EE: FFreeAd var_88 = ""
  loc_A255F5: FFreeVar var_B4 = ""
  loc_A255FC: FLdRfVar var_A0
  loc_A255FF: LitVarStr var_9C, "SaldMoas"
  loc_A25604: PopAdLdVar
  loc_A25605: FLdRfVar var_8C
  loc_A25608: FLdRfVar var_88
  loc_A2560B: FLdPr Me
  loc_A2560E: MemLdRfVar from_stack_1.global_88
  loc_A25611: NewIfNullPr clsbase
  loc_A25614: from_stack_1v = clsbase.RsFrmGet()
  loc_A25619: FLdPr var_88
  loc_A2561C:  = Me.Fields
  loc_A25621: FLdPr var_8C
  loc_A25624: from_stack_2 = Me.Item(from_stack_1)
  loc_A25629: LitI2_Byte 0
  loc_A2562B: FLdPr Me
  loc_A2562E: MemLdI2 global_100
  loc_A25631: CI4UI1
  loc_A25632: FLdPr Me
  loc_A25635: MemLdStr global_96
  loc_A25638: AryLock
  loc_A2563B: Ary1LdPr
  loc_A2563C: MemLdRfVar from_stack_1.global_12
  loc_A2563F: CVarRef
  loc_A25644: LitI2_Byte &HFF
  loc_A25646: FLdZeroAd var_A0
  loc_A25649: CVarAd
  loc_A2564D: PopAdLdVar
  loc_A2564E: FLdPr Me
  loc_A25651: MemLdI2 global_100
  loc_A25654: CI4UI1
  loc_A25655: FLdPr Me
  loc_A25658: MemLdStr global_96
  loc_A2565B: AryLock
  loc_A2565E: Ary1LdPr
  loc_A2565F: MemLdRfVar from_stack_1.global_8
  loc_A25662: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A25667: AryUnlock
  loc_A2566A: AryUnlock
  loc_A2566D: FFreeAd var_88 = ""
  loc_A25674: FFree1Var var_B4 = ""
  loc_A25677: LitI4 1
  loc_A2567C: PopTmpLdAdStr var_DC
  loc_A2567F: FLdPr Me
  loc_A25682: MemLdRfVar from_stack_1.global_88
  loc_A25685: NewIfNullPr clsbase
  loc_A25688: Call clsbase.Mover(from_stack_1v)
  loc_A2568D: ExitProcHresult
End Function

Private Function Proc_156_31_A824FC() 'A824FC
  'Data Table: 475F58
  loc_A820F0: FLdPr Me
  loc_A820F3: MemLdI2 global_102
  loc_A820F6: LitI2_Byte 1
  loc_A820F8: AddI2
  loc_A820F9: FLdPr Me
  loc_A820FC: MemStI2 global_102
  loc_A820FF: LitI4 0
  loc_A82104: FLdPr Me
  loc_A82107: MemLdI2 global_102
  loc_A8210A: CI4UI1
  loc_A8210B: FLdPr Me
  loc_A8210E: MemLdI2 global_100
  loc_A82111: CI4UI1
  loc_A82112: FLdPr Me
  loc_A82115: MemLdStr global_96
  loc_A82118: Ary1LdPr
  loc_A82119: MemLdRfVar from_stack_1.global_16
  loc_A8211C: RedimPreserve
  loc_A82126: FLdPr Me
  loc_A82129: MemLdI2 global_102
  loc_A8212C: CI4UI1
  loc_A8212D: FLdPr Me
  loc_A82130: MemLdI2 global_100
  loc_A82133: CI4UI1
  loc_A82134: FLdPr Me
  loc_A82137: MemLdStr global_96
  loc_A8213A: AryLock
  loc_A8213D: Ary1LdPr
  loc_A8213E: MemLdStr global_16
  loc_A82141: AryLock
  loc_A82144: Ary1LdRf
  loc_A82145: FStR4 var_94
  loc_A82148: FLdRfVar var_B0
  loc_A8214B: LitVarStr var_AC, "CodiPart"
  loc_A82150: PopAdLdVar
  loc_A82151: FLdRfVar var_9C
  loc_A82154: FLdRfVar var_98
  loc_A82157: FLdPr Me
  loc_A8215A: MemLdRfVar from_stack_1.global_88
  loc_A8215D: NewIfNullPr clsbase
  loc_A82160: from_stack_1v = clsbase.RsFrmGet()
  loc_A82165: FLdPr var_98
  loc_A82168:  = Me.Fields
  loc_A8216D: FLdPr var_9C
  loc_A82170: from_stack_2 = Me.Item(from_stack_1)
  loc_A82175: LitI2_Byte 0
  loc_A82177: LitVar_Missing var_E0
  loc_A8217A: LitI2_Byte 0
  loc_A8217C: FLdZeroAd var_B0
  loc_A8217F: CVarAd
  loc_A82183: PopAdLdVar
  loc_A82184: FMemLdRf unk_475EC5
  loc_A82189: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8218E: FFreeAd var_98 = ""
  loc_A82195: FFreeVar var_C0 = ""
  loc_A8219C: FLdRfVar var_B0
  loc_A8219F: LitVarStr var_AC, "DetaPart"
  loc_A821A4: PopAdLdVar
  loc_A821A5: FLdRfVar var_9C
  loc_A821A8: FLdRfVar var_98
  loc_A821AB: FLdPr Me
  loc_A821AE: MemLdRfVar from_stack_1.global_88
  loc_A821B1: NewIfNullPr clsbase
  loc_A821B4: from_stack_1v = clsbase.RsFrmGet()
  loc_A821B9: FLdPr var_98
  loc_A821BC:  = Me.Fields
  loc_A821C1: FLdPr var_9C
  loc_A821C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A821C9: LitI2_Byte 0
  loc_A821CB: LitVar_Missing var_E0
  loc_A821CE: LitI2_Byte 0
  loc_A821D0: FLdZeroAd var_B0
  loc_A821D3: CVarAd
  loc_A821D7: PopAdLdVar
  loc_A821D8: FMemLdRf unk_475EC5
  loc_A821DD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A821E2: FFreeAd var_98 = ""
  loc_A821E9: FFreeVar var_C0 = ""
  loc_A821F0: FLdRfVar var_B0
  loc_A821F3: LitVarStr var_AC, "ImpoAlta"
  loc_A821F8: PopAdLdVar
  loc_A821F9: FLdRfVar var_9C
  loc_A821FC: FLdRfVar var_98
  loc_A821FF: FLdPr Me
  loc_A82202: MemLdRfVar from_stack_1.global_88
  loc_A82205: NewIfNullPr clsbase
  loc_A82208: from_stack_1v = clsbase.RsFrmGet()
  loc_A8220D: FLdPr var_98
  loc_A82210:  = Me.Fields
  loc_A82215: FLdPr var_9C
  loc_A82218: from_stack_2 = Me.Item(from_stack_1)
  loc_A8221D: LitI2_Byte 0
  loc_A8221F: LitI4 1
  loc_A82224: FLdPr Me
  loc_A82227: MemLdStr global_104
  loc_A8222A: AryLock
  loc_A8222D: Ary1LdPr
  loc_A8222E: MemLdRfVar from_stack_1.global_8
  loc_A82231: CVarRef
  loc_A82236: LitI2_Byte &HFF
  loc_A82238: FLdZeroAd var_B0
  loc_A8223B: CVarAd
  loc_A8223F: PopAdLdVar
  loc_A82240: FMemLdRf unk_475EC5
  loc_A82245: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8224A: AryUnlock
  loc_A8224D: FFreeAd var_98 = ""
  loc_A82254: FFree1Var var_C0 = ""
  loc_A82257: FLdRfVar var_B0
  loc_A8225A: LitVarStr var_AC, "MotiAlta"
  loc_A8225F: PopAdLdVar
  loc_A82260: FLdRfVar var_9C
  loc_A82263: FLdRfVar var_98
  loc_A82266: FLdPr Me
  loc_A82269: MemLdRfVar from_stack_1.global_88
  loc_A8226C: NewIfNullPr clsbase
  loc_A8226F: from_stack_1v = clsbase.RsFrmGet()
  loc_A82274: FLdPr var_98
  loc_A82277:  = Me.Fields
  loc_A8227C: FLdPr var_9C
  loc_A8227F: from_stack_2 = Me.Item(from_stack_1)
  loc_A82284: LitI2_Byte 0
  loc_A82286: LitVar_Missing var_E0
  loc_A82289: LitI2_Byte 0
  loc_A8228B: FLdZeroAd var_B0
  loc_A8228E: CVarAd
  loc_A82292: PopAdLdVar
  loc_A82293: FMemLdRf unk_475EC5
  loc_A82298: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8229D: FFreeAd var_98 = ""
  loc_A822A4: FFreeVar var_C0 = ""
  loc_A822AB: FLdRfVar var_B0
  loc_A822AE: LitVarStr var_AC, "OtroAlta"
  loc_A822B3: PopAdLdVar
  loc_A822B4: FLdRfVar var_9C
  loc_A822B7: FLdRfVar var_98
  loc_A822BA: FLdPr Me
  loc_A822BD: MemLdRfVar from_stack_1.global_88
  loc_A822C0: NewIfNullPr clsbase
  loc_A822C3: from_stack_1v = clsbase.RsFrmGet()
  loc_A822C8: FLdPr var_98
  loc_A822CB:  = Me.Fields
  loc_A822D0: FLdPr var_9C
  loc_A822D3: from_stack_2 = Me.Item(from_stack_1)
  loc_A822D8: LitI2_Byte 0
  loc_A822DA: LitI4 1
  loc_A822DF: FLdPr Me
  loc_A822E2: MemLdStr global_104
  loc_A822E5: AryLock
  loc_A822E8: Ary1LdPr
  loc_A822E9: MemLdRfVar from_stack_1.global_16
  loc_A822EC: CVarRef
  loc_A822F1: LitI2_Byte &HFF
  loc_A822F3: FLdZeroAd var_B0
  loc_A822F6: CVarAd
  loc_A822FA: PopAdLdVar
  loc_A822FB: FMemLdRf unk_475EC5
  loc_A82300: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A82305: AryUnlock
  loc_A82308: FFreeAd var_98 = ""
  loc_A8230F: FFree1Var var_C0 = ""
  loc_A82312: FLdRfVar var_B0
  loc_A82315: LitVarStr var_AC, "normlega"
  loc_A8231A: PopAdLdVar
  loc_A8231B: FLdRfVar var_9C
  loc_A8231E: FLdRfVar var_98
  loc_A82321: FLdPr Me
  loc_A82324: MemLdRfVar from_stack_1.global_88
  loc_A82327: NewIfNullPr clsbase
  loc_A8232A: from_stack_1v = clsbase.RsFrmGet()
  loc_A8232F: FLdPr var_98
  loc_A82332:  = Me.Fields
  loc_A82337: FLdPr var_9C
  loc_A8233A: from_stack_2 = Me.Item(from_stack_1)
  loc_A8233F: LitI2_Byte 0
  loc_A82341: LitVar_Missing var_E0
  loc_A82344: LitI2_Byte 0
  loc_A82346: FLdZeroAd var_B0
  loc_A82349: CVarAd
  loc_A8234D: PopAdLdVar
  loc_A8234E: FMemLdRf unk_475EC5
  loc_A82353: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A82358: FFreeAd var_98 = ""
  loc_A8235F: FFreeVar var_C0 = ""
  loc_A82366: FLdRfVar var_B0
  loc_A82369: LitVarStr var_AC, "ImpoBaja"
  loc_A8236E: PopAdLdVar
  loc_A8236F: FLdRfVar var_9C
  loc_A82372: FLdRfVar var_98
  loc_A82375: FLdPr Me
  loc_A82378: MemLdRfVar from_stack_1.global_88
  loc_A8237B: NewIfNullPr clsbase
  loc_A8237E: from_stack_1v = clsbase.RsFrmGet()
  loc_A82383: FLdPr var_98
  loc_A82386:  = Me.Fields
  loc_A8238B: FLdPr var_9C
  loc_A8238E: from_stack_2 = Me.Item(from_stack_1)
  loc_A82393: LitI2_Byte 0
  loc_A82395: LitI4 1
  loc_A8239A: FLdPr Me
  loc_A8239D: MemLdStr global_104
  loc_A823A0: AryLock
  loc_A823A3: Ary1LdPr
  loc_A823A4: MemLdRfVar from_stack_1.global_24
  loc_A823A7: CVarRef
  loc_A823AC: LitI2_Byte &HFF
  loc_A823AE: FLdZeroAd var_B0
  loc_A823B1: CVarAd
  loc_A823B5: PopAdLdVar
  loc_A823B6: FMemLdRf unk_475EC5
  loc_A823BB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A823C0: AryUnlock
  loc_A823C3: FFreeAd var_98 = ""
  loc_A823CA: FFree1Var var_C0 = ""
  loc_A823CD: FLdRfVar var_B0
  loc_A823D0: LitVarStr var_AC, "MotiBaja"
  loc_A823D5: PopAdLdVar
  loc_A823D6: FLdRfVar var_9C
  loc_A823D9: FLdRfVar var_98
  loc_A823DC: FLdPr Me
  loc_A823DF: MemLdRfVar from_stack_1.global_88
  loc_A823E2: NewIfNullPr clsbase
  loc_A823E5: from_stack_1v = clsbase.RsFrmGet()
  loc_A823EA: FLdPr var_98
  loc_A823ED:  = Me.Fields
  loc_A823F2: FLdPr var_9C
  loc_A823F5: from_stack_2 = Me.Item(from_stack_1)
  loc_A823FA: LitI2_Byte 0
  loc_A823FC: LitVar_Missing var_E0
  loc_A823FF: LitI2_Byte 0
  loc_A82401: FLdZeroAd var_B0
  loc_A82404: CVarAd
  loc_A82408: PopAdLdVar
  loc_A82409: FMemLdRf unk_475EC5
  loc_A8240E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A82413: FFreeAd var_98 = ""
  loc_A8241A: FFreeVar var_C0 = ""
  loc_A82421: FLdRfVar var_B0
  loc_A82424: LitVarStr var_AC, "OtroBaja"
  loc_A82429: PopAdLdVar
  loc_A8242A: FLdRfVar var_9C
  loc_A8242D: FLdRfVar var_98
  loc_A82430: FLdPr Me
  loc_A82433: MemLdRfVar from_stack_1.global_88
  loc_A82436: NewIfNullPr clsbase
  loc_A82439: from_stack_1v = clsbase.RsFrmGet()
  loc_A8243E: FLdPr var_98
  loc_A82441:  = Me.Fields
  loc_A82446: FLdPr var_9C
  loc_A82449: from_stack_2 = Me.Item(from_stack_1)
  loc_A8244E: LitI2_Byte 0
  loc_A82450: LitI4 1
  loc_A82455: FLdPr Me
  loc_A82458: MemLdStr global_104
  loc_A8245B: AryLock
  loc_A8245E: Ary1LdPr
  loc_A8245F: MemLdRfVar from_stack_1.global_32
  loc_A82462: CVarRef
  loc_A82467: LitI2_Byte &HFF
  loc_A82469: FLdZeroAd var_B0
  loc_A8246C: CVarAd
  loc_A82470: PopAdLdVar
  loc_A82471: FMemLdRf unk_475EC5
  loc_A82476: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8247B: AryUnlock
  loc_A8247E: FFreeAd var_98 = ""
  loc_A82485: FFree1Var var_C0 = ""
  loc_A82488: LitI2_Byte 0
  loc_A8248A: FLdPr Me
  loc_A8248D: MemLdI2 global_100
  loc_A82490: CI4UI1
  loc_A82491: FLdPr Me
  loc_A82494: MemLdStr global_96
  loc_A82497: AryLock
  loc_A8249A: Ary1LdPr
  loc_A8249B: MemLdRfVar from_stack_1.global_12
  loc_A8249E: CVarRef
  loc_A824A3: LitI2_Byte &HFF
  loc_A824A5: FMemLdR4 var_94(8)
  loc_A824AA: CR8Str
  loc_A824AC: FMemLdR4 var_94(16)
  loc_A824B1: CR8Str
  loc_A824B3: AddR8
  loc_A824B4: FMemLdR4 var_94(24)
  loc_A824B9: CR8Str
  loc_A824BB: SubR4
  loc_A824BC: FMemLdR4 var_94(32)
  loc_A824C1: CR8Str
  loc_A824C3: SubR4
  loc_A824C4: CVarR8
  loc_A824C8: PopAdLdVar
  loc_A824C9: FLdRfVar var_88
  loc_A824CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A824D1: AryUnlock
  loc_A824D4: LitI4 0
  loc_A824D9: FStR4 var_94
  loc_A824DC: AryUnlock
  loc_A824DF: AryUnlock
  loc_A824E2: LitI4 1
  loc_A824E7: PopTmpLdAdStr var_E8
  loc_A824EA: FLdPr Me
  loc_A824ED: MemLdRfVar from_stack_1.global_88
  loc_A824F0: NewIfNullPr clsbase
  loc_A824F3: Call clsbase.Mover(from_stack_1v)
  loc_A824F8: ExitProcHresult
  loc_A824F9: NeI4
  loc_A824FA: ILdFPR8 var_1FBA
End Function

Private Function Proc_156_32_A890B4() 'A890B4
  'Data Table: 475F58
  loc_A88C64: LitVarStr var_94, "<html>"
  loc_A88C69: PopAdLdVar
  loc_A88C6A: FLdPr Me
  loc_A88C6D: MemLdRfVar from_stack_1.htmFile
  loc_A88C70: LdPrVar
  loc_A88C72: LateMemCall
  loc_A88C78: LitVarStr var_94, "<head>"
  loc_A88C7D: PopAdLdVar
  loc_A88C7E: FLdPr Me
  loc_A88C81: MemLdRfVar from_stack_1.htmFile
  loc_A88C84: LdPrVar
  loc_A88C86: LateMemCall
  loc_A88C8C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A88C91: PopAdLdVar
  loc_A88C92: FLdPr Me
  loc_A88C95: MemLdRfVar from_stack_1.htmFile
  loc_A88C98: LdPrVar
  loc_A88C9A: LateMemCall
  loc_A88CA0: LitStr "<title>"
  loc_A88CA3: FLdRfVar var_A8
  loc_A88CA6: FLdPr Me
  loc_A88CA9:  = Me.Caption
  loc_A88CAE: ILdRf var_A8
  loc_A88CB1: ConcatStr
  loc_A88CB2: FStStrNoPop var_AC
  loc_A88CB5: LitStr " - "
  loc_A88CB8: ConcatStr
  loc_A88CB9: FStStrNoPop var_B0
  loc_A88CBC: LitStr "Municipalidad de Guaymallén"
  loc_A88CBF: ConcatStr
  loc_A88CC0: FStStrNoPop var_B4
  loc_A88CC3: LitStr "</title>"
  loc_A88CC6: ConcatStr
  loc_A88CC7: CVarStr var_C4
  loc_A88CCA: PopAdLdVar
  loc_A88CCB: FLdPr Me
  loc_A88CCE: MemLdRfVar from_stack_1.htmFile
  loc_A88CD1: LdPrVar
  loc_A88CD3: LateMemCall
  loc_A88CD9: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A88CE4: FFree1Var var_C4 = ""
  loc_A88CE7: LitStr vbNullString
  loc_A88CEA: ILdRf Me
  loc_A88CED: CastAd
  loc_A88CF0: FStAdFunc var_C8
  loc_A88CF3: FLdRfVar var_C8
  loc_A88CF6: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A88CFB: FFree1Ad var_C8
  loc_A88CFE: LitI4 0
  loc_A88D03: FStStrCopy var_AC
  loc_A88D06: FLdRfVar var_AC
  loc_A88D09: LitI4 0
  loc_A88D0E: FStStrCopy var_A8
  loc_A88D11: FLdRfVar var_A8
  loc_A88D14: LitI2_Byte &HFF
  loc_A88D16: PopTmpLdAd2 var_CA
  loc_A88D19: FLdPr Me
  loc_A88D1C: MemLdRfVar from_stack_1.htmFile
  loc_A88D1F: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A88D24: FFreeStr var_A8 = ""
  loc_A88D2B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A88D30: PopAdLdVar
  loc_A88D31: FLdPr Me
  loc_A88D34: MemLdRfVar from_stack_1.htmFile
  loc_A88D37: LdPrVar
  loc_A88D39: LateMemCall
  loc_A88D3F: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A88D44: PopAdLdVar
  loc_A88D45: FLdPr Me
  loc_A88D48: MemLdRfVar from_stack_1.htmFile
  loc_A88D4B: LdPrVar
  loc_A88D4D: LateMemCall
  loc_A88D53: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""center""><p>"
  loc_A88D58: PopAdLdVar
  loc_A88D59: FLdPr Me
  loc_A88D5C: MemLdRfVar from_stack_1.htmFile
  loc_A88D5F: LdPrVar
  loc_A88D61: LateMemCall
  loc_A88D67: FLdPr Me
  loc_A88D6A: MemLdI2 bLogos
  loc_A88D6D: BranchF loc_A88D84
  loc_A88D70: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A88D75: PopAdLdVar
  loc_A88D76: FLdPr Me
  loc_A88D79: MemLdRfVar from_stack_1.htmFile
  loc_A88D7C: LdPrVar
  loc_A88D7E: LateMemCall
  loc_A88D84: LitVarStr var_94, "      <br>ACUERDO<span class=""Titulo2""> N&ordm; 2988 <br>"
  loc_A88D89: PopAdLdVar
  loc_A88D8A: FLdPr Me
  loc_A88D8D: MemLdRfVar from_stack_1.htmFile
  loc_A88D90: LdPrVar
  loc_A88D92: LateMemCall
  loc_A88D98: LitVarStr var_94, "      ANEXO XIII: DE LA SITUACIÓN DE LOS BIENES DEL ESTADO</span></p>"
  loc_A88D9D: PopAdLdVar
  loc_A88D9E: FLdPr Me
  loc_A88DA1: MemLdRfVar from_stack_1.htmFile
  loc_A88DA4: LdPrVar
  loc_A88DA6: LateMemCall
  loc_A88DAC: LitVarStr var_94, "    </th>"
  loc_A88DB1: PopAdLdVar
  loc_A88DB2: FLdPr Me
  loc_A88DB5: MemLdRfVar from_stack_1.htmFile
  loc_A88DB8: LdPrVar
  loc_A88DBA: LateMemCall
  loc_A88DC0: LitVarStr var_94, "  </tr>"
  loc_A88DC5: PopAdLdVar
  loc_A88DC6: FLdPr Me
  loc_A88DC9: MemLdRfVar from_stack_1.htmFile
  loc_A88DCC: LdPrVar
  loc_A88DCE: LateMemCall
  loc_A88DD4: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_A88DD9: PopAdLdVar
  loc_A88DDA: FLdPr Me
  loc_A88DDD: MemLdRfVar from_stack_1.htmFile
  loc_A88DE0: LdPrVar
  loc_A88DE2: LateMemCall
  loc_A88DE8: LitStr "    <td colspan=""2"" align=""left"">Repartici&oacute;n/Organismo: "
  loc_A88DEB: LitStr "Municipalidad de Guaymallén"
  loc_A88DEE: ConcatStr
  loc_A88DEF: FStStrNoPop var_A8
  loc_A88DF2: LitStr "</td>"
  loc_A88DF5: ConcatStr
  loc_A88DF6: CVarStr var_C4
  loc_A88DF9: PopAdLdVar
  loc_A88DFA: FLdPr Me
  loc_A88DFD: MemLdRfVar from_stack_1.htmFile
  loc_A88E00: LdPrVar
  loc_A88E02: LateMemCall
  loc_A88E08: FFree1Str var_A8
  loc_A88E0B: FFree1Var var_C4 = ""
  loc_A88E0E: LitVarStr var_94, "  </tr>"
  loc_A88E13: PopAdLdVar
  loc_A88E14: FLdPr Me
  loc_A88E17: MemLdRfVar from_stack_1.htmFile
  loc_A88E1A: LdPrVar
  loc_A88E1C: LateMemCall
  loc_A88E22: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_A88E27: PopAdLdVar
  loc_A88E28: FLdPr Me
  loc_A88E2B: MemLdRfVar from_stack_1.htmFile
  loc_A88E2E: LdPrVar
  loc_A88E30: LateMemCall
  loc_A88E36: LitStr "    <td colspan=""2"">Ejercicio: "
  loc_A88E39: FLdRfVar var_A8
  loc_A88E3C: FLdPr Me
  loc_A88E3F: VCallAd Control_ID_cboPeriodo
  loc_A88E42: FStAdFunc var_C8
  loc_A88E45: FLdPr var_C8
  loc_A88E48:  = Me.Text
  loc_A88E4D: ILdRf var_A8
  loc_A88E50: ConcatStr
  loc_A88E51: CVarStr var_C4
  loc_A88E54: PopAdLdVar
  loc_A88E55: FLdPr Me
  loc_A88E58: MemLdRfVar from_stack_1.htmFile
  loc_A88E5B: LdPrVar
  loc_A88E5D: LateMemCall
  loc_A88E63: FFree1Str var_A8
  loc_A88E66: FFree1Ad var_C8
  loc_A88E69: FFree1Var var_C4 = ""
  loc_A88E6C: LitVarStr var_94, "    </td>"
  loc_A88E71: PopAdLdVar
  loc_A88E72: FLdPr Me
  loc_A88E75: MemLdRfVar from_stack_1.htmFile
  loc_A88E78: LdPrVar
  loc_A88E7A: LateMemCall
  loc_A88E80: LitVarStr var_94, "  </tr>"
  loc_A88E85: PopAdLdVar
  loc_A88E86: FLdPr Me
  loc_A88E89: MemLdRfVar from_stack_1.htmFile
  loc_A88E8C: LdPrVar
  loc_A88E8E: LateMemCall
  loc_A88E94: LitVarStr var_94, "</table>"
  loc_A88E99: PopAdLdVar
  loc_A88E9A: FLdPr Me
  loc_A88E9D: MemLdRfVar from_stack_1.htmFile
  loc_A88EA0: LdPrVar
  loc_A88EA2: LateMemCall
  loc_A88EA8: LitVarStr var_94, "<table with=""90" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A88EAD: PopAdLdVar
  loc_A88EAE: FLdPr Me
  loc_A88EB1: MemLdRfVar from_stack_1.htmFile
  loc_A88EB4: LdPrVar
  loc_A88EB6: LateMemCall
  loc_A88EBC: LitVarStr var_94, "  <THEAD>"
  loc_A88EC1: PopAdLdVar
  loc_A88EC2: FLdPr Me
  loc_A88EC5: MemLdRfVar from_stack_1.htmFile
  loc_A88EC8: LdPrVar
  loc_A88ECA: LateMemCall
  loc_A88ED0: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_A88ED5: PopAdLdVar
  loc_A88ED6: FLdPr Me
  loc_A88ED9: MemLdRfVar from_stack_1.htmFile
  loc_A88EDC: LdPrVar
  loc_A88EDE: LateMemCall
  loc_A88EE4: LitVarStr var_94, "     <th rowspan=""3"">Cuenta</th>"
  loc_A88EE9: PopAdLdVar
  loc_A88EEA: FLdPr Me
  loc_A88EED: MemLdRfVar from_stack_1.htmFile
  loc_A88EF0: LdPrVar
  loc_A88EF2: LateMemCall
  loc_A88EF8: LitVarStr var_94, "     <th rowspan=""3"">Saldo Inicial</th>"
  loc_A88EFD: PopAdLdVar
  loc_A88EFE: FLdPr Me
  loc_A88F01: MemLdRfVar from_stack_1.htmFile
  loc_A88F04: LdPrVar
  loc_A88F06: LateMemCall
  loc_A88F0C: LitVarStr var_94, "     <th rowspan=""3"">Partida</th>"
  loc_A88F11: PopAdLdVar
  loc_A88F12: FLdPr Me
  loc_A88F15: MemLdRfVar from_stack_1.htmFile
  loc_A88F18: LdPrVar
  loc_A88F1A: LateMemCall
  loc_A88F20: LitVarStr var_94, "     <th colspan=""3"">Altas</th>"
  loc_A88F25: PopAdLdVar
  loc_A88F26: FLdPr Me
  loc_A88F29: MemLdRfVar from_stack_1.htmFile
  loc_A88F2C: LdPrVar
  loc_A88F2E: LateMemCall
  loc_A88F34: LitVarStr var_94, "     <th colspan=""4"">Bajas</th>"
  loc_A88F39: PopAdLdVar
  loc_A88F3A: FLdPr Me
  loc_A88F3D: MemLdRfVar from_stack_1.htmFile
  loc_A88F40: LdPrVar
  loc_A88F42: LateMemCall
  loc_A88F48: LitVarStr var_94, "     <th rowspan=""3"">Saldo Final</th>"
  loc_A88F4D: PopAdLdVar
  loc_A88F4E: FLdPr Me
  loc_A88F51: MemLdRfVar from_stack_1.htmFile
  loc_A88F54: LdPrVar
  loc_A88F56: LateMemCall
  loc_A88F5C: LitVarStr var_94, " </tr>"
  loc_A88F61: PopAdLdVar
  loc_A88F62: FLdPr Me
  loc_A88F65: MemLdRfVar from_stack_1.htmFile
  loc_A88F68: LdPrVar
  loc_A88F6A: LateMemCall
  loc_A88F70: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_A88F75: PopAdLdVar
  loc_A88F76: FLdPr Me
  loc_A88F79: MemLdRfVar from_stack_1.htmFile
  loc_A88F7C: LdPrVar
  loc_A88F7E: LateMemCall
  loc_A88F84: LitVarStr var_94, "     <th>Ejecución<br>Presupuesto</th>"
  loc_A88F89: PopAdLdVar
  loc_A88F8A: FLdPr Me
  loc_A88F8D: MemLdRfVar from_stack_1.htmFile
  loc_A88F90: LdPrVar
  loc_A88F92: LateMemCall
  loc_A88F98: LitVarStr var_94, "     <th colspan=""2"">Otros Conceptos</th>"
  loc_A88F9D: PopAdLdVar
  loc_A88F9E: FLdPr Me
  loc_A88FA1: MemLdRfVar from_stack_1.htmFile
  loc_A88FA4: LdPrVar
  loc_A88FA6: LateMemCall
  loc_A88FAC: LitVarStr var_94, "     <th rowspan=""2"" width=""6" & Chr(37) & """>Norma<br>Legal</th>"
  loc_A88FB1: PopAdLdVar
  loc_A88FB2: FLdPr Me
  loc_A88FB5: MemLdRfVar from_stack_1.htmFile
  loc_A88FB8: LdPrVar
  loc_A88FBA: LateMemCall
  loc_A88FC0: LitVarStr var_94, "     <th>Ejecución<br>Presupuesto</th>"
  loc_A88FC5: PopAdLdVar
  loc_A88FC6: FLdPr Me
  loc_A88FC9: MemLdRfVar from_stack_1.htmFile
  loc_A88FCC: LdPrVar
  loc_A88FCE: LateMemCall
  loc_A88FD4: LitVarStr var_94, "     <th colspan=""2"">Otros Conceptos</th>"
  loc_A88FD9: PopAdLdVar
  loc_A88FDA: FLdPr Me
  loc_A88FDD: MemLdRfVar from_stack_1.htmFile
  loc_A88FE0: LdPrVar
  loc_A88FE2: LateMemCall
  loc_A88FE8: LitVarStr var_94, " </tr>"
  loc_A88FED: PopAdLdVar
  loc_A88FEE: FLdPr Me
  loc_A88FF1: MemLdRfVar from_stack_1.htmFile
  loc_A88FF4: LdPrVar
  loc_A88FF6: LateMemCall
  loc_A88FFC: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_A89001: PopAdLdVar
  loc_A89002: FLdPr Me
  loc_A89005: MemLdRfVar from_stack_1.htmFile
  loc_A89008: LdPrVar
  loc_A8900A: LateMemCall
  loc_A89010: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Importe</th>"
  loc_A89015: PopAdLdVar
  loc_A89016: FLdPr Me
  loc_A89019: MemLdRfVar from_stack_1.htmFile
  loc_A8901C: LdPrVar
  loc_A8901E: LateMemCall
  loc_A89024: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Motivo</th>"
  loc_A89029: PopAdLdVar
  loc_A8902A: FLdPr Me
  loc_A8902D: MemLdRfVar from_stack_1.htmFile
  loc_A89030: LdPrVar
  loc_A89032: LateMemCall
  loc_A89038: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Importe</th>"
  loc_A8903D: PopAdLdVar
  loc_A8903E: FLdPr Me
  loc_A89041: MemLdRfVar from_stack_1.htmFile
  loc_A89044: LdPrVar
  loc_A89046: LateMemCall
  loc_A8904C: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Importe</th>"
  loc_A89051: PopAdLdVar
  loc_A89052: FLdPr Me
  loc_A89055: MemLdRfVar from_stack_1.htmFile
  loc_A89058: LdPrVar
  loc_A8905A: LateMemCall
  loc_A89060: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Motivo</th>"
  loc_A89065: PopAdLdVar
  loc_A89066: FLdPr Me
  loc_A89069: MemLdRfVar from_stack_1.htmFile
  loc_A8906C: LdPrVar
  loc_A8906E: LateMemCall
  loc_A89074: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>Importe</th>"
  loc_A89079: PopAdLdVar
  loc_A8907A: FLdPr Me
  loc_A8907D: MemLdRfVar from_stack_1.htmFile
  loc_A89080: LdPrVar
  loc_A89082: LateMemCall
  loc_A89088: LitVarStr var_94, "   </tr>"
  loc_A8908D: PopAdLdVar
  loc_A8908E: FLdPr Me
  loc_A89091: MemLdRfVar from_stack_1.htmFile
  loc_A89094: LdPrVar
  loc_A89096: LateMemCall
  loc_A8909C: LitVarStr var_94, "  </THEAD>"
  loc_A890A1: PopAdLdVar
  loc_A890A2: FLdPr Me
  loc_A890A5: MemLdRfVar from_stack_1.htmFile
  loc_A890A8: LdPrVar
  loc_A890AA: LateMemCall
  loc_A890B0: ExitProcHresult
End Function

Private Function Proc_156_33_A056E0() 'A056E0
  'Data Table: 475F58
  loc_A0556C: LitVarStr var_94, "</table>"
  loc_A05571: PopAdLdVar
  loc_A05572: FLdPr Me
  loc_A05575: MemLdRfVar from_stack_1.htmFile
  loc_A05578: LdPrVar
  loc_A0557A: LateMemCall
  loc_A05580: LitVarStr var_94, "<br>"
  loc_A05585: PopAdLdVar
  loc_A05586: FLdPr Me
  loc_A05589: MemLdRfVar from_stack_1.htmFile
  loc_A0558C: LdPrVar
  loc_A0558E: LateMemCall
  loc_A05594: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A05599: PopAdLdVar
  loc_A0559A: FLdPr Me
  loc_A0559D: MemLdRfVar from_stack_1.htmFile
  loc_A055A0: LdPrVar
  loc_A055A2: LateMemCall
  loc_A055A8: LitVarStr var_94, "  <tr>"
  loc_A055AD: PopAdLdVar
  loc_A055AE: FLdPr Me
  loc_A055B1: MemLdRfVar from_stack_1.htmFile
  loc_A055B4: LdPrVar
  loc_A055B6: LateMemCall
  loc_A055BC: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A055C1: PopAdLdVar
  loc_A055C2: FLdPr Me
  loc_A055C5: MemLdRfVar from_stack_1.htmFile
  loc_A055C8: LdPrVar
  loc_A055CA: LateMemCall
  loc_A055D0: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A055D5: PopAdLdVar
  loc_A055D6: FLdPr Me
  loc_A055D9: MemLdRfVar from_stack_1.htmFile
  loc_A055DC: LdPrVar
  loc_A055DE: LateMemCall
  loc_A055E4: FLdPr Me
  loc_A055E7: MemLdI2 bLogos
  loc_A055EA: BranchF loc_A05651
  loc_A055ED: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A055F2: PopAdLdVar
  loc_A055F3: FLdPr Me
  loc_A055F6: MemLdRfVar from_stack_1.htmFile
  loc_A055F9: LdPrVar
  loc_A055FB: LateMemCall
  loc_A05601: LitVarStr var_94, "          <map name=""Map"">"
  loc_A05606: PopAdLdVar
  loc_A05607: FLdPr Me
  loc_A0560A: MemLdRfVar from_stack_1.htmFile
  loc_A0560D: LdPrVar
  loc_A0560F: LateMemCall
  loc_A05615: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A0561A: PopAdLdVar
  loc_A0561B: FLdPr Me
  loc_A0561E: MemLdRfVar from_stack_1.htmFile
  loc_A05621: LdPrVar
  loc_A05623: LateMemCall
  loc_A05629: LitVarStr var_94, "          </map>"
  loc_A0562E: PopAdLdVar
  loc_A0562F: FLdPr Me
  loc_A05632: MemLdRfVar from_stack_1.htmFile
  loc_A05635: LdPrVar
  loc_A05637: LateMemCall
  loc_A0563D: LitVarStr var_94, "    </div></th>"
  loc_A05642: PopAdLdVar
  loc_A05643: FLdPr Me
  loc_A05646: MemLdRfVar from_stack_1.htmFile
  loc_A05649: LdPrVar
  loc_A0564B: LateMemCall
  loc_A05651: LitVarStr var_94, "  </tr>"
  loc_A05656: PopAdLdVar
  loc_A05657: FLdPr Me
  loc_A0565A: MemLdRfVar from_stack_1.htmFile
  loc_A0565D: LdPrVar
  loc_A0565F: LateMemCall
  loc_A05665: LitVarStr var_94, "  <tr>"
  loc_A0566A: PopAdLdVar
  loc_A0566B: FLdPr Me
  loc_A0566E: MemLdRfVar from_stack_1.htmFile
  loc_A05671: LdPrVar
  loc_A05673: LateMemCall
  loc_A05679: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A0567E: PopAdLdVar
  loc_A0567F: FLdPr Me
  loc_A05682: MemLdRfVar from_stack_1.htmFile
  loc_A05685: LdPrVar
  loc_A05687: LateMemCall
  loc_A0568D: LitVarStr var_94, "  </tr>"
  loc_A05692: PopAdLdVar
  loc_A05693: FLdPr Me
  loc_A05696: MemLdRfVar from_stack_1.htmFile
  loc_A05699: LdPrVar
  loc_A0569B: LateMemCall
  loc_A056A1: LitVarStr var_94, "</table>"
  loc_A056A6: PopAdLdVar
  loc_A056A7: FLdPr Me
  loc_A056AA: MemLdRfVar from_stack_1.htmFile
  loc_A056AD: LdPrVar
  loc_A056AF: LateMemCall
  loc_A056B5: LitVarStr var_94, "</body>"
  loc_A056BA: PopAdLdVar
  loc_A056BB: FLdPr Me
  loc_A056BE: MemLdRfVar from_stack_1.htmFile
  loc_A056C1: LdPrVar
  loc_A056C3: LateMemCall
  loc_A056C9: LitVarStr var_94, "</html>"
  loc_A056CE: PopAdLdVar
  loc_A056CF: FLdPr Me
  loc_A056D2: MemLdRfVar from_stack_1.htmFile
  loc_A056D5: LdPrVar
  loc_A056D7: LateMemCall
  loc_A056DD: ExitProcHresult
  loc_A056DE: CStr2Ansi
End Function
