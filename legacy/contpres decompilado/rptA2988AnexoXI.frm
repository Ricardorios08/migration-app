VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoXI
  Caption = "ACUERDO 2988 - ANEXO XI - De la Situación del Tesoro"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoXI.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9405
  ClientHeight = 2850
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2595
    Width = 9405
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptA2988AnexoXI.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 4
    Cancel = -1  'True
    Picture = "rptA2988AnexoXI.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoXI.frx":0B9C
    Left = 240
    Top = 840
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1440
    Width = 6015
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT HTC"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1440
    Width = 3015
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 1335
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4560
      Top = 480
      Width = 2055
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2640
      Top = 570
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1920
      Top = 630
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 720
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 5
    OleObjectBlob = "rptA2988AnexoXI.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoXI"

Public htmFile As Variant
Public txtFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean


Private Sub cmdXLS_Click() '96B49C
  'Data Table: 448E04
  loc_96B480: LitI2_Byte &HFF
  loc_96B482: LitI2_Byte 0
  loc_96B484: ILdRf Me
  loc_96B487: CastAd
  loc_96B48A: FStAdFunc var_88
  loc_96B48D: FLdRfVar var_88
  loc_96B490: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B495: FFree1Ad var_88
  loc_96B498: ExitProcHresult
  loc_96B499: ExitProcI2
  loc_96B49A: Branch loc_974080
End Sub

Private Sub Form_Load() '9D1F44
  'Data Table: 448E04
  loc_9D1E6C: LitI2_Byte &HFF
  loc_9D1E6E: ImpAdStI2 MemVar_C3D840
  loc_9D1E71: ILdRf Me
  loc_9D1E74: CastAd
  loc_9D1E77: FStAdFunc var_8C
  loc_9D1E7A: FLdRfVar var_8C
  loc_9D1E7D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D1E82: FFree1Ad var_8C
  loc_9D1E85: FLdRfVar var_88
  loc_9D1E88: NewIfNullAd
  loc_9D1E8B: FStAd var_90 
  loc_9D1E8F: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D1E92: FLdPr var_90
  loc_9D1E95: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D1E9A: FLdRfVar var_94
  loc_9D1E9D: FLdPr var_90
  loc_9D1EA0: from_stack_1 = clsperiodo.RecordCount
  loc_9D1EA5: ILdRf var_94
  loc_9D1EA8: LitI4 0
  loc_9D1EAD: GtI4
  loc_9D1EAE: BranchF loc_9D1F35
  loc_9D1EB1: FLdPr var_90
  loc_9D1EB4: Call clsperiodo.MoveFirst()
  loc_9D1EB9: FLdRfVar var_96
  loc_9D1EBC: FLdPr var_90
  loc_9D1EBF: from_stack_1 = clsperiodo.EOF
  loc_9D1EC4: FLdI2 var_96
  loc_9D1EC7: NotI4
  loc_9D1EC8: BranchF loc_9D1F35
  loc_9D1ECB: LitVar_Missing var_D4
  loc_9D1ECE: PopAdLdVar
  loc_9D1ECF: FLdRfVar var_C0
  loc_9D1ED2: FLdRfVar var_B0
  loc_9D1ED5: LitVarStr var_AC, "PeriInfo"
  loc_9D1EDA: PopAdLdVar
  loc_9D1EDB: FLdRfVar var_9C
  loc_9D1EDE: FLdRfVar var_8C
  loc_9D1EE1: FLdPr var_90
  loc_9D1EE4: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D1EE9: FLdPr var_8C
  loc_9D1EEC:  = Me.Fields
  loc_9D1EF1: FLdPr var_9C
  loc_9D1EF4: from_stack_2 = Me.Item(from_stack_1)
  loc_9D1EF9: FLdPr var_B0
  loc_9D1EFC:  = Me.Value
  loc_9D1F01: FLdRfVar var_C0
  loc_9D1F04: CStrVarTmp
  loc_9D1F05: FStStrNoPop var_C4
  loc_9D1F08: FLdPr Me
  loc_9D1F0B: VCallAd Control_ID_cboPeriodo
  loc_9D1F0E: FStAdFunc var_D8
  loc_9D1F11: FLdPr var_D8
  loc_9D1F14: Me.AddItem from_stack_1, from_stack_2
  loc_9D1F19: FFree1Str var_C4
  loc_9D1F1C: FFreeAd var_8C = "": var_9C = "": var_B0 = ""
  loc_9D1F27: FFree1Var var_C0 = ""
  loc_9D1F2A: FLdPr var_90
  loc_9D1F2D: Call clsperiodo.MoveSiguiente()
  loc_9D1F32: Branch loc_9D1EB9
  loc_9D1F35: LitNothing
  loc_9D1F37: FStAd var_90 
  loc_9D1F3B: Call cmdNueva_Click()
  loc_9D1F40: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '959208
  'Data Table: 448E04
  loc_9591F0: FLdPr Me
  loc_9591F3: VCallAd Control_ID_wbbReporte
  loc_9591F6: FStAdFunc var_88
  loc_9591F9: FLdRfVar var_88
  loc_9591FC: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_959201: FFree1Ad var_88
  loc_959204: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '959AA4
  'Data Table: 448E04
  loc_959A8C: ILdRf Me
  loc_959A8F: CastAd
  loc_959A92: FStAdFunc var_88
  loc_959A95: FLdRfVar var_88
  loc_959A98: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_959A9D: FFree1Ad var_88
  loc_959AA0: ExitProcHresult
  loc_959AA1: CR4Var
  loc_959AA2: CRec2Uni var_7400
End Sub

Private Sub cmdPrevia_Click() '965774
  'Data Table: 448E04
  loc_96575C: ILdRf Me
  loc_96575F: CastAd
  loc_965762: FStAdFunc var_88
  loc_965765: FLdRfVar var_88
  loc_965768: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_96576D: FFree1Ad var_88
  loc_965770: ExitProcHresult
  loc_965771: FnLenStr
  loc_965772: ImpAdLdPr unk_441A05
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988A74
  'Data Table: 448E04
  loc_988A3C: FLdPr Me
  loc_988A3F: VCallAd Control_ID_statusBar
  loc_988A42: FStAdFunc var_88
  loc_988A45: FLdPr var_88
  loc_988A48: LateIdLdVar var_98 DispID_1 0
  loc_988A4F: CStrVarTmp
  loc_988A50: CVarStr var_A8
  loc_988A53: PopAdLdVar
  loc_988A54: FLdPr Me
  loc_988A57: VCallAd Control_ID_statusBar
  loc_988A5A: FStAdFunc var_BC
  loc_988A5D: FLdPr var_BC
  loc_988A60: LateIdSt
  loc_988A65: FFreeAd var_88 = ""
  loc_988A6C: FFreeVar var_98 = ""
  loc_988A73: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '976B1C
  'Data Table: 448E04
  loc_976AEC: LitVarStr var_94, "Cerrando..."
  loc_976AF1: PopAdLdVar
  loc_976AF2: FLdPr Me
  loc_976AF5: VCallAd Control_ID_statusBar
  loc_976AF8: FStAdFunc var_A8
  loc_976AFB: FLdPr var_A8
  loc_976AFE: LateIdSt
  loc_976B03: FFree1Ad var_A8
  loc_976B06: ILdRf Me
  loc_976B09: FStAdNoPop
  loc_976B0D: ImpAdLdRf MemVar_C44F9C
  loc_976B10: NewIfNullPr Me
  loc_976B13: Me.Global.Unload from_stack_1
  loc_976B18: FFree1Ad var_A8
  loc_976B1B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '966568
  'Data Table: 448E04
  loc_966550: ILdRf Me
  loc_966553: CastAd
  loc_966556: FStAdFunc var_88
  loc_966559: FLdRfVar var_88
  loc_96655C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_966561: FFree1Ad var_88
  loc_966564: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '991FBC
  'Data Table: 448E04
  loc_991F6C: LitI2_Byte 0
  loc_991F6E: FLdPr Me
  loc_991F71: MemStI2 bGenerado
  loc_991F74: LitI2_Byte &HFF
  loc_991F76: FLdPr Me
  loc_991F79: MemStI2 bLogos
  loc_991F7C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_991F81: ImpAdLdI2 MemVar_C3D064
  loc_991F84: CStrUI1
  loc_991F86: FStStrNoPop var_88
  loc_991F89: FLdPr Me
  loc_991F8C: VCallAd Control_ID_cboPeriodo
  loc_991F8F: FStAdFunc var_8C
  loc_991F92: FLdPr var_8C
  loc_991F95: Me.Text = from_stack_1
  loc_991F9A: FFree1Str var_88
  loc_991F9D: FFree1Ad var_8C
  loc_991FA0: Call HabilitarCriterio()
  loc_991FA5: ILdRf Me
  loc_991FA8: CastAd
  loc_991FAB: FStAdFunc var_8C
  loc_991FAE: FLdRfVar var_8C
  loc_991FB1: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_991FB6: FFree1Ad var_8C
  loc_991FB9: ExitProcHresult
  loc_991FBA: MemLdPr global_-29693
End Sub

Private Sub cmdPdf_Click() '98F5B0
  'Data Table: 448E04
  loc_98F568: LitStr "Acuerdo 2988 Anexo XI "
  loc_98F56B: FLdRfVar var_8C
  loc_98F56E: FLdPr Me
  loc_98F571: VCallAd Control_ID_cboPeriodo
  loc_98F574: FStAdFunc var_88
  loc_98F577: FLdPr var_88
  loc_98F57A:  = Me.Text
  loc_98F57F: ILdRf var_8C
  loc_98F582: ConcatStr
  loc_98F583: FStStrNoPop var_90
  loc_98F586: FLdPr Me
  loc_98F589: Me.Tag = from_stack_1
  loc_98F58E: FFreeStr var_8C = ""
  loc_98F595: FFree1Ad var_88
  loc_98F598: LitI2_Byte 0
  loc_98F59A: ILdRf Me
  loc_98F59D: CastAd
  loc_98F5A0: FStAdFunc var_88
  loc_98F5A3: FLdRfVar var_88
  loc_98F5A6: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_98F5AB: FFree1Ad var_88
  loc_98F5AE: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '970CD0
  'Data Table: 448E04
  loc_970CAC: LitStr "SitTesoro.txt"
  loc_970CAF: FLdPr Me
  loc_970CB2: Me.Tag = from_stack_1
  loc_970CB7: LitI2_Byte 0
  loc_970CB9: ILdRf Me
  loc_970CBC: CastAd
  loc_970CBF: FStAdFunc var_88
  loc_970CC2: FLdRfVar var_88
  loc_970CC5: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_970CCA: FFree1Ad var_88
  loc_970CCD: ExitProcHresult
End Sub

Public Function htmFileGet() '449A00
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '449A0F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '449A1E
  htmFile = Value
End Sub

Public Function txtFileGet() '449A2D
  txtFileGet = txtFile
End Function

Public Sub txtFilePut(Value) '449A3C
  txtFile = Value
End Sub

Public Sub txtFileSet(Value) '449A4B
  txtFile = Value
End Sub

Public Function bLogosGet() '449A5A
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '449A69
  bLogos = Value
End Sub

Public Function bGeneradoGet() '449A78
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '449A87
  bGenerado = Value
End Sub

Public Sub GeneraTXT() 'A51BAC
  'Data Table: 448E04
  loc_A51944: FLdRfVar var_90
  loc_A51947: FLdPr Me
  loc_A5194A: VCallAd Control_ID_cboPeriodo
  loc_A5194D: FStAdFunc var_8C
  loc_A51950: FLdPr var_8C
  loc_A51953:  = Me.Text
  loc_A51958: FLdZeroAd var_90
  loc_A5195B: FStStr var_88
  loc_A5195E: FFree1Ad var_8C
  loc_A51961: FLdRfVar var_8C
  loc_A51964: LitI2_Byte 0
  loc_A51966: LitI2_Byte &HFF
  loc_A51968: ImpAdLdI4 MemVar_C3D05C
  loc_A5196B: FLdPr Me
  loc_A5196E: MemLdRfVar from_stack_1.global_92
  loc_A51971: NewIfNullPr IFileSystem3
  loc_A51974: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A51979: ILdRf var_8C
  loc_A5197C: FLdPr Me
  loc_A5197F: MemStVarAd
  loc_A51983: FFree1Ad var_8C
  loc_A51986: LitVarStr var_A0, "PeriodoPresenta|ExpID|Rubro|Subrubro|CodigoCuenta|NombreCuenta|Corriente|NoCorriente"
  loc_A5198B: PopAdLdVar
  loc_A5198C: FLdPr Me
  loc_A5198F: MemLdRfVar from_stack_1.txtFile
  loc_A51992: LdPrVar
  loc_A51994: LateMemCall
  loc_A5199A: FLdPr Me
  loc_A5199D: MemLdRfVar from_stack_1.global_88
  loc_A519A0: NewIfNullPr clsbase
  loc_A519A3: Call clsbase.MoveFirst()
  loc_A519A8: FLdRfVar var_B2
  loc_A519AB: FLdPr Me
  loc_A519AE: MemLdRfVar from_stack_1.global_88
  loc_A519B1: NewIfNullPr clsbase
  loc_A519B4: from_stack_1 = clsbase.EOF
  loc_A519B9: FLdI2 var_B2
  loc_A519BC: NotI4
  loc_A519BD: BranchF loc_A51B9D
  loc_A519C0: FLdRfVar var_CC
  loc_A519C3: FLdRfVar var_BC
  loc_A519C6: LitVarStr var_A0, "EsTit"
  loc_A519CB: PopAdLdVar
  loc_A519CC: FLdRfVar var_B8
  loc_A519CF: FLdRfVar var_8C
  loc_A519D2: FLdPr Me
  loc_A519D5: MemLdRfVar from_stack_1.global_88
  loc_A519D8: NewIfNullPr clsbase
  loc_A519DB: from_stack_1v = clsbase.RsFrmGet()
  loc_A519E0: FLdPr var_8C
  loc_A519E3:  = Me.Fields
  loc_A519E8: FLdPr var_B8
  loc_A519EB: from_stack_2 = Me.Item(from_stack_1)
  loc_A519F0: FLdPr var_BC
  loc_A519F3:  = Me.Value
  loc_A519F8: FLdRfVar var_CC
  loc_A519FB: FnCByteVar
  loc_A519FD: CI2UI1
  loc_A519FF: LitI2_Byte 5
  loc_A51A01: EqI2
  loc_A51A02: FFreeAd var_8C = "": var_B8 = ""
  loc_A51A0B: FFree1Var var_CC = ""
  loc_A51A0E: BranchF loc_A51B8C
  loc_A51A11: ILdRf var_88
  loc_A51A14: LitStr "|"
  loc_A51A17: ConcatStr
  loc_A51A18: FStStrNoPop var_90
  loc_A51A1B: LitStr "eee-2022-060204"
  loc_A51A1E: ConcatStr
  loc_A51A1F: FStStrNoPop var_D0
  loc_A51A22: LitStr "|"
  loc_A51A25: ConcatStr
  loc_A51A26: CVarStr var_E0
  loc_A51A29: FLdRfVar var_CC
  loc_A51A2C: FLdRfVar var_BC
  loc_A51A2F: LitVarStr var_A0, "CodiCuco"
  loc_A51A34: PopAdLdVar
  loc_A51A35: FLdRfVar var_B8
  loc_A51A38: FLdRfVar var_8C
  loc_A51A3B: FLdPr Me
  loc_A51A3E: MemLdRfVar from_stack_1.global_88
  loc_A51A41: NewIfNullPr clsbase
  loc_A51A44: from_stack_1v = clsbase.RsFrmGet()
  loc_A51A49: FLdPr var_8C
  loc_A51A4C:  = Me.Fields
  loc_A51A51: FLdPr var_B8
  loc_A51A54: from_stack_2 = Me.Item(from_stack_1)
  loc_A51A59: FLdPr var_BC
  loc_A51A5C:  = Me.Value
  loc_A51A61: FLdRfVar var_CC
  loc_A51A64: ConcatVar var_F0
  loc_A51A68: LitVarStr var_B0, "|"
  loc_A51A6D: ConcatVar var_100
  loc_A51A71: FLdRfVar var_12C
  loc_A51A74: FLdRfVar var_11C
  loc_A51A77: LitVarStr var_118, "DetaCuco"
  loc_A51A7C: PopAdLdVar
  loc_A51A7D: FLdRfVar var_108
  loc_A51A80: FLdRfVar var_104
  loc_A51A83: FLdPr Me
  loc_A51A86: MemLdRfVar from_stack_1.global_88
  loc_A51A89: NewIfNullPr clsbase
  loc_A51A8C: from_stack_1v = clsbase.RsFrmGet()
  loc_A51A91: FLdPr var_104
  loc_A51A94:  = Me.Fields
  loc_A51A99: FLdPr var_108
  loc_A51A9C: from_stack_2 = Me.Item(from_stack_1)
  loc_A51AA1: FLdPr var_11C
  loc_A51AA4:  = Me.Value
  loc_A51AA9: FLdRfVar var_12C
  loc_A51AAC: ConcatVar var_13C
  loc_A51AB0: LitVarStr var_14C, "|"
  loc_A51AB5: ConcatVar var_15C
  loc_A51AB9: FLdRfVar var_188
  loc_A51ABC: FLdRfVar var_178
  loc_A51ABF: LitVarStr var_174, "Cte"
  loc_A51AC4: PopAdLdVar
  loc_A51AC5: FLdRfVar var_164
  loc_A51AC8: FLdRfVar var_160
  loc_A51ACB: FLdPr Me
  loc_A51ACE: MemLdRfVar from_stack_1.global_88
  loc_A51AD1: NewIfNullPr clsbase
  loc_A51AD4: from_stack_1v = clsbase.RsFrmGet()
  loc_A51AD9: FLdPr var_160
  loc_A51ADC:  = Me.Fields
  loc_A51AE1: FLdPr var_164
  loc_A51AE4: from_stack_2 = Me.Item(from_stack_1)
  loc_A51AE9: FLdPr var_178
  loc_A51AEC:  = Me.Value
  loc_A51AF1: FLdRfVar var_188
  loc_A51AF4: ConcatVar var_198
  loc_A51AF8: LitVarStr var_1A8, "|"
  loc_A51AFD: ConcatVar var_1B8
  loc_A51B01: FLdRfVar var_1E4
  loc_A51B04: FLdRfVar var_1D4
  loc_A51B07: LitVarStr var_1D0, "NoCte"
  loc_A51B0C: PopAdLdVar
  loc_A51B0D: FLdRfVar var_1C0
  loc_A51B10: FLdRfVar var_1BC
  loc_A51B13: FLdPr Me
  loc_A51B16: MemLdRfVar from_stack_1.global_88
  loc_A51B19: NewIfNullPr clsbase
  loc_A51B1C: from_stack_1v = clsbase.RsFrmGet()
  loc_A51B21: FLdPr var_1BC
  loc_A51B24:  = Me.Fields
  loc_A51B29: FLdPr var_1C0
  loc_A51B2C: from_stack_2 = Me.Item(from_stack_1)
  loc_A51B31: FLdPr var_1D4
  loc_A51B34:  = Me.Value
  loc_A51B39: FLdRfVar var_1E4
  loc_A51B3C: ConcatVar var_1F4
  loc_A51B40: PopAdLdVar
  loc_A51B41: FLdPr Me
  loc_A51B44: MemLdRfVar from_stack_1.txtFile
  loc_A51B47: LdPrVar
  loc_A51B49: LateMemCall
  loc_A51B4F: FFreeStr var_90 = ""
  loc_A51B56: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_104 = "": var_108 = "": var_11C = "": var_160 = "": var_164 = "": var_178 = "": var_1BC = "": var_1C0 = ""
  loc_A51B71: FFreeVar var_E0 = "": var_CC = "": var_F0 = "": var_100 = "": var_12C = "": var_13C = "": var_15C = "": var_188 = "": var_198 = "": var_1B8 = "": var_1E4 = ""
  loc_A51B8C: FLdPr Me
  loc_A51B8F: MemLdRfVar from_stack_1.global_88
  loc_A51B92: NewIfNullPr clsbase
  loc_A51B95: Call clsbase.MoveSiguiente()
  loc_A51B9A: Branch loc_A519A8
  loc_A51B9D: FLdPr Me
  loc_A51BA0: MemLdRfVar from_stack_1.txtFile
  loc_A51BA3: LdPrVar
  loc_A51BA5: LateMemCall
  loc_A51BAB: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '984CC4
  'Data Table: 448E04
  loc_984C90: LitI4 0
  loc_984C95: LitI4 0
  loc_984C9A: FLdRfVar var_88
  loc_984C9D: Redim
  loc_984CA7: FLdPr Me
  loc_984CAA: VCallAd Control_ID_cboPeriodo
  loc_984CAD: CVarAd
  loc_984CB1: ParmAry1St
  loc_984CB7: FLdRfVar var_88
  loc_984CBA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984CBF: FLdRfVar var_88
  loc_984CC2: Erase
  loc_984CC3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A93624
  'Data Table: 448E04
  loc_A931B4: FLdPr Me
  loc_A931B7: MemLdI2 bGenerado
  loc_A931BA: BranchF loc_A931BE
  loc_A931BD: ExitProcHresult
  loc_A931BE: LitVarStr var_94, "Generando reporte..."
  loc_A931C3: PopAdLdVar
  loc_A931C4: FLdPr Me
  loc_A931C7: VCallAd Control_ID_statusBar
  loc_A931CA: FStAdFunc var_A8
  loc_A931CD: FLdPr var_A8
  loc_A931D0: LateIdSt
  loc_A931D5: FFree1Ad var_A8
  loc_A931D8: LitI4 &HB
  loc_A931DD: CI2I4
  loc_A931DE: FLdPr Me
  loc_A931E1: Me.MousePointer = from_stack_1
  loc_A931E6: FLdPr Me
  loc_A931E9: MemLdRfVar from_stack_1.global_88
  loc_A931EC: NewIfNullAd
  loc_A931EF: FStAd var_AC 
  loc_A931F3: LitStr "SET @periinfo = "
  loc_A931F6: FLdRfVar var_B0
  loc_A931F9: FLdPr Me
  loc_A931FC: VCallAd Control_ID_cboPeriodo
  loc_A931FF: FStAdFunc var_A8
  loc_A93202: FLdPr var_A8
  loc_A93205:  = Me.Text
  loc_A9320A: ILdRf var_B0
  loc_A9320D: ConcatStr
  loc_A9320E: FStStrNoPop var_B4
  loc_A93211: LitStr ";"
  loc_A93214: ConcatStr
  loc_A93215: FStStrNoPop var_B8
  loc_A93218: FLdPr var_AC
  loc_A9321B: Call clsbase.RedefineRS(from_stack_1v)
  loc_A93220: FFreeStr var_B0 = "": var_B4 = ""
  loc_A93229: FFree1Ad var_A8
  loc_A9322C: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_A9322F: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_A93232: ConcatStr
  loc_A93233: FStStrNoPop var_B0
  loc_A93236: LitStr " sTit` int(1) NOT NULL DEFAULT '0',"
  loc_A93239: ConcatStr
  loc_A9323A: FStStrNoPop var_B4
  loc_A9323D: LitStr " odiTicu` char(4) NOT NULL DEFAULT '',"
  loc_A93240: ConcatStr
  loc_A93241: FStStrNoPop var_B8
  loc_A93244: LitStr " etaTicu` varchar(250) NOT NULL DEFAULT '',"
  loc_A93247: ConcatStr
  loc_A93248: FStStrNoPop var_BC
  loc_A9324B: LitStr " odiCuco` varchar(12) NOT NULL DEFAULT '',"
  loc_A9324E: ConcatStr
  loc_A9324F: FStStrNoPop var_C0
  loc_A93252: LitStr " etaCuco` varchar(250) NOT NULL DEFAULT '',"
  loc_A93255: ConcatStr
  loc_A93256: FStStrNoPop var_C4
  loc_A93259: LitStr " te` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_A9325C: ConcatStr
  loc_A9325D: FStStrNoPop var_C8
  loc_A93260: LitStr " octe` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_A93263: ConcatStr
  loc_A93264: FStStrNoPop var_CC
  loc_A93267: LitStr " PRIMARY KEY (odiTicu`,`CodiCuco`)"
  loc_A9326A: ConcatStr
  loc_A9326B: FStStrNoPop var_D0
  loc_A9326E: LitStr ") ;"
  loc_A93271: ConcatStr
  loc_A93272: FStStrNoPop var_D4
  loc_A93275: FLdPr var_AC
  loc_A93278: Call clsbase.RedefineRS(from_stack_1v)
  loc_A9327D: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A93294: LitStr "REPLACE INTO tmovi"
  loc_A93297: LitStr " SELECT 1"
  loc_A9329A: ConcatStr
  loc_A9329B: FStStrNoPop var_B0
  loc_A9329E: LitStr ", tc.CodiTicu, DetaTicu"
  loc_A932A1: ConcatStr
  loc_A932A2: FStStrNoPop var_B4
  loc_A932A5: LitStr ", '', ''"
  loc_A932A8: ConcatStr
  loc_A932A9: FStStrNoPop var_B8
  loc_A932AC: LitStr ", Sum(IF(cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "',DebeMoas-HabeMoas,0)) cte"
  loc_A932AF: ConcatStr
  loc_A932B0: FStStrNoPop var_BC
  loc_A932B3: LitStr ", Sum(IF(cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "',DebeMoas-HabeMoas,0)) nocte"
  loc_A932B6: ConcatStr
  loc_A932B7: FStStrNoPop var_C0
  loc_A932BA: LitStr " FROM asiento"
  loc_A932BD: ConcatStr
  loc_A932BE: FStStrNoPop var_C4
  loc_A932C1: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A932C4: ConcatStr
  loc_A932C5: FStStrNoPop var_C8
  loc_A932C8: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A932CB: ConcatStr
  loc_A932CC: FStStrNoPop var_CC
  loc_A932CF: LitStr " AND (cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "')"
  loc_A932D2: ConcatStr
  loc_A932D3: FStStrNoPop var_D0
  loc_A932D6: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = CONCAT(Left(cc.CodiTicu,1),'000')"
  loc_A932D9: ConcatStr
  loc_A932DA: FStStrNoPop var_D4
  loc_A932DD: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A932E0: ConcatStr
  loc_A932E1: FStStrNoPop var_D8
  loc_A932E4: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A932E7: ConcatStr
  loc_A932E8: FStStrNoPop var_DC
  loc_A932EB: LitStr " GROUP BY tc.CodiTicu;"
  loc_A932EE: ConcatStr
  loc_A932EF: FStStrNoPop var_E0
  loc_A932F2: FLdPr var_AC
  loc_A932F5: Call clsbase.RedefineRS(from_stack_1v)
  loc_A932FA: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A93317: LitStr "REPLACE INTO tmovi"
  loc_A9331A: LitStr " SELECT 2"
  loc_A9331D: ConcatStr
  loc_A9331E: FStStrNoPop var_B0
  loc_A93321: LitStr ", tc.CodiTicu, DetaTicu"
  loc_A93324: ConcatStr
  loc_A93325: FStStrNoPop var_B4
  loc_A93328: LitStr ", '', ''"
  loc_A9332B: ConcatStr
  loc_A9332C: FStStrNoPop var_B8
  loc_A9332F: LitStr ", Sum(IF(cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "',DebeMoas-HabeMoas,0)) cte"
  loc_A93332: ConcatStr
  loc_A93333: FStStrNoPop var_BC
  loc_A93336: LitStr ", Sum(IF(cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "',DebeMoas-HabeMoas,0)) nocte"
  loc_A93339: ConcatStr
  loc_A9333A: FStStrNoPop var_C0
  loc_A9333D: LitStr " FROM asiento"
  loc_A93340: ConcatStr
  loc_A93341: FStStrNoPop var_C4
  loc_A93344: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A93347: ConcatStr
  loc_A93348: FStStrNoPop var_C8
  loc_A9334B: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A9334E: ConcatStr
  loc_A9334F: FStStrNoPop var_CC
  loc_A93352: LitStr " AND (cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "')"
  loc_A93355: ConcatStr
  loc_A93356: FStStrNoPop var_D0
  loc_A93359: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = CONCAT(Left(cc.CodiTicu,2),'00')"
  loc_A9335C: ConcatStr
  loc_A9335D: FStStrNoPop var_D4
  loc_A93360: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A93363: ConcatStr
  loc_A93364: FStStrNoPop var_D8
  loc_A93367: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A9336A: ConcatStr
  loc_A9336B: FStStrNoPop var_DC
  loc_A9336E: LitStr " GROUP BY tc.CodiTicu;"
  loc_A93371: ConcatStr
  loc_A93372: FStStrNoPop var_E0
  loc_A93375: FLdPr var_AC
  loc_A93378: Call clsbase.RedefineRS(from_stack_1v)
  loc_A9337D: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A9339A: LitStr "REPLACE INTO tmovi"
  loc_A9339D: LitStr " SELECT 3"
  loc_A933A0: ConcatStr
  loc_A933A1: FStStrNoPop var_B0
  loc_A933A4: LitStr ", tc.CodiTicu, DetaTicu"
  loc_A933A7: ConcatStr
  loc_A933A8: FStStrNoPop var_B4
  loc_A933AB: LitStr ", '', ''"
  loc_A933AE: ConcatStr
  loc_A933AF: FStStrNoPop var_B8
  loc_A933B2: LitStr ", Sum(IF(cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "',DebeMoas-HabeMoas,0)) cte"
  loc_A933B5: ConcatStr
  loc_A933B6: FStStrNoPop var_BC
  loc_A933B9: LitStr ", Sum(IF(cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "',DebeMoas-HabeMoas,0)) nocte"
  loc_A933BC: ConcatStr
  loc_A933BD: FStStrNoPop var_C0
  loc_A933C0: LitStr " FROM asiento"
  loc_A933C3: ConcatStr
  loc_A933C4: FStStrNoPop var_C4
  loc_A933C7: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A933CA: ConcatStr
  loc_A933CB: FStStrNoPop var_C8
  loc_A933CE: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A933D1: ConcatStr
  loc_A933D2: FStStrNoPop var_CC
  loc_A933D5: LitStr " AND (cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "')"
  loc_A933D8: ConcatStr
  loc_A933D9: FStStrNoPop var_D0
  loc_A933DC: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = CONCAT(Left(cc.CodiTicu,3),'0')"
  loc_A933DF: ConcatStr
  loc_A933E0: FStStrNoPop var_D4
  loc_A933E3: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A933E6: ConcatStr
  loc_A933E7: FStStrNoPop var_D8
  loc_A933EA: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A933ED: ConcatStr
  loc_A933EE: FStStrNoPop var_DC
  loc_A933F1: LitStr "GROUP BY tc.CodiTicu;"
  loc_A933F4: ConcatStr
  loc_A933F5: FStStrNoPop var_E0
  loc_A933F8: FLdPr var_AC
  loc_A933FB: Call clsbase.RedefineRS(from_stack_1v)
  loc_A93400: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A9341D: LitStr "REPLACE INTO tmovi"
  loc_A93420: LitStr " SELECT 4"
  loc_A93423: ConcatStr
  loc_A93424: FStStrNoPop var_B0
  loc_A93427: LitStr ", tc.CodiTicu, DetaTicu"
  loc_A9342A: ConcatStr
  loc_A9342B: FStStrNoPop var_B4
  loc_A9342E: LitStr ", '', ''"
  loc_A93431: ConcatStr
  loc_A93432: FStStrNoPop var_B8
  loc_A93435: LitStr ", Sum(IF(cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "',DebeMoas-HabeMoas,0)) cte"
  loc_A93438: ConcatStr
  loc_A93439: FStStrNoPop var_BC
  loc_A9343C: LitStr ", Sum(IF(cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "',DebeMoas-HabeMoas,0)) nocte"
  loc_A9343F: ConcatStr
  loc_A93440: FStStrNoPop var_C0
  loc_A93443: LitStr " FROM asiento"
  loc_A93446: ConcatStr
  loc_A93447: FStStrNoPop var_C4
  loc_A9344A: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A9344D: ConcatStr
  loc_A9344E: FStStrNoPop var_C8
  loc_A93451: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A93454: ConcatStr
  loc_A93455: FStStrNoPop var_CC
  loc_A93458: LitStr " AND (cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "')"
  loc_A9345B: ConcatStr
  loc_A9345C: FStStrNoPop var_D0
  loc_A9345F: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_A93462: ConcatStr
  loc_A93463: FStStrNoPop var_D4
  loc_A93466: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A93469: ConcatStr
  loc_A9346A: FStStrNoPop var_D8
  loc_A9346D: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A93470: ConcatStr
  loc_A93471: FStStrNoPop var_DC
  loc_A93474: LitStr " GROUP BY tc.CodiTicu;"
  loc_A93477: ConcatStr
  loc_A93478: FStStrNoPop var_E0
  loc_A9347B: FLdPr var_AC
  loc_A9347E: Call clsbase.RedefineRS(from_stack_1v)
  loc_A93483: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A934A0: LitStr "INSERT INTO tmovi"
  loc_A934A3: LitStr " SELECT 5"
  loc_A934A6: ConcatStr
  loc_A934A7: FStStrNoPop var_B0
  loc_A934AA: LitStr ", tc.CodiTicu, DetaTicu"
  loc_A934AD: ConcatStr
  loc_A934AE: FStStrNoPop var_B4
  loc_A934B1: LitStr ", mv.CodiCuco, DetaCuco"
  loc_A934B4: ConcatStr
  loc_A934B5: FStStrNoPop var_B8
  loc_A934B8: LitStr ", Sum(IF(cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "',DebeMoas-HabeMoas,0)) cte"
  loc_A934BB: ConcatStr
  loc_A934BC: FStStrNoPop var_BC
  loc_A934BF: LitStr ", Sum(IF(cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "',DebeMoas-HabeMoas,0)) nocte"
  loc_A934C2: ConcatStr
  loc_A934C3: FStStrNoPop var_C0
  loc_A934C6: LitStr " FROM asiento"
  loc_A934C9: ConcatStr
  loc_A934CA: FStStrNoPop var_C4
  loc_A934CD: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A934D0: ConcatStr
  loc_A934D1: FStStrNoPop var_C8
  loc_A934D4: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A934D7: ConcatStr
  loc_A934D8: FStStrNoPop var_CC
  loc_A934DB: LitStr " AND (cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "')"
  loc_A934DE: ConcatStr
  loc_A934DF: FStStrNoPop var_D0
  loc_A934E2: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = cc.CodiTicu"
  loc_A934E5: ConcatStr
  loc_A934E6: FStStrNoPop var_D4
  loc_A934E9: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A934EC: ConcatStr
  loc_A934ED: FStStrNoPop var_D8
  loc_A934F0: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A934F3: ConcatStr
  loc_A934F4: FStStrNoPop var_DC
  loc_A934F7: LitStr " GROUP BY mv.CodiCuco;"
  loc_A934FA: ConcatStr
  loc_A934FB: FStStrNoPop var_E0
  loc_A934FE: FLdPr var_AC
  loc_A93501: Call clsbase.RedefineRS(from_stack_1v)
  loc_A93506: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A93523: LitStr "REPLACE INTO tmovi"
  loc_A93526: LitStr " SELECT 1"
  loc_A93529: ConcatStr
  loc_A9352A: FStStrNoPop var_B0
  loc_A9352D: LitStr ", '3000', 'SALDO FINAL'"
  loc_A93530: ConcatStr
  loc_A93531: FStStrNoPop var_B4
  loc_A93534: LitStr ", '', ''"
  loc_A93537: ConcatStr
  loc_A93538: FStStrNoPop var_B8
  loc_A9353B: LitStr ", Sum(IF(cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "',DebeMoas-HabeMoas,0)) cte"
  loc_A9353E: ConcatStr
  loc_A9353F: FStStrNoPop var_BC
  loc_A93542: LitStr ", Sum(IF(cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "',DebeMoas-HabeMoas,0)) nocte"
  loc_A93545: ConcatStr
  loc_A93546: FStStrNoPop var_C0
  loc_A93549: LitStr " FROM asiento"
  loc_A9354C: ConcatStr
  loc_A9354D: FStStrNoPop var_C4
  loc_A93550: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A93553: ConcatStr
  loc_A93554: FStStrNoPop var_C8
  loc_A93557: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A9355A: ConcatStr
  loc_A9355B: FStStrNoPop var_CC
  loc_A9355E: LitStr " AND (cc.CodiTicu Like '11" & Chr(37) & "' OR cc.CodiTicu Like '12" & Chr(37) & "' OR cc.CodiTicu Like '21" & Chr(37) & "' OR cc.CodiTicu Like '22" & Chr(37) & "')"
  loc_A93561: ConcatStr
  loc_A93562: FStStrNoPop var_D0
  loc_A93565: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = CONCAT(Left(cc.CodiTicu,1),'000')"
  loc_A93568: ConcatStr
  loc_A93569: FStStrNoPop var_D4
  loc_A9356C: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A9356F: ConcatStr
  loc_A93570: FStStrNoPop var_D8
  loc_A93573: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A93576: ConcatStr
  loc_A93577: FStStrNoPop var_DC
  loc_A9357A: LitStr " GROUP BY TRUE;"
  loc_A9357D: ConcatStr
  loc_A9357E: FStStrNoPop var_E0
  loc_A93581: FLdPr var_AC
  loc_A93584: Call clsbase.RedefineRS(from_stack_1v)
  loc_A93589: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A935A6: LitStr "SELECT *"
  loc_A935A9: LitStr " FROM tmovi"
  loc_A935AC: ConcatStr
  loc_A935AD: FStStrNoPop var_B0
  loc_A935B0: LitStr " ORDER BY CodiTicu, EsTit, CodiCuco;"
  loc_A935B3: ConcatStr
  loc_A935B4: FStStrNoPop var_B4
  loc_A935B7: FLdPr var_AC
  loc_A935BA: Call clsbase.RedefineRS(from_stack_1v)
  loc_A935BF: FFreeStr var_B0 = ""
  loc_A935C6: FLdRfVar var_E4
  loc_A935C9: FLdPr var_AC
  loc_A935CC: from_stack_1 = clsbase.RecordCount
  loc_A935D1: ILdRf var_E4
  loc_A935D4: LitI4 0
  loc_A935D9: EqI4
  loc_A935DA: BranchF loc_A935ED
  loc_A935DD: LitI4 0
  loc_A935E2: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A935E5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A935EA: Branch loc_A935FB
  loc_A935ED: LitNothing
  loc_A935EF: FStAd var_AC 
  loc_A935F3: LitI2_Byte &HFF
  loc_A935F5: FLdPr Me
  loc_A935F8: MemStI2 bGenerado
  loc_A935FB: LitI4 0
  loc_A93600: CI2I4
  loc_A93601: FLdPr Me
  loc_A93604: Me.MousePointer = from_stack_1
  loc_A93609: LitVarStr var_94, vbNullString
  loc_A9360E: PopAdLdVar
  loc_A9360F: FLdPr Me
  loc_A93612: VCallAd Control_ID_statusBar
  loc_A93615: FStAdFunc var_A8
  loc_A93618: FLdPr var_A8
  loc_A9361B: LateIdSt
  loc_A93620: FFree1Ad var_A8
  loc_A93623: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B52158
  'Data Table: 448E04
  loc_B516AC: FLdRfVar var_88
  loc_B516AF: LitI2_Byte 0
  loc_B516B1: LitI2_Byte &HFF
  loc_B516B3: ImpAdLdI4 MemVar_C3D83C
  loc_B516B6: FLdPr Me
  loc_B516B9: MemLdRfVar from_stack_1.global_92
  loc_B516BC: NewIfNullPr IFileSystem3
  loc_B516BF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B516C4: ILdRf var_88
  loc_B516C7: FLdPr Me
  loc_B516CA: MemStVarAd
  loc_B516CE: FFree1Ad var_88
  loc_B516D1: Call Proc_155_26_A518F0()
  loc_B516D6: LitVarStr var_98, " <tr align=""left"" valign=""top"" class=""Encabezado"">"
  loc_B516DB: PopAdLdVar
  loc_B516DC: FLdPr Me
  loc_B516DF: MemLdRfVar from_stack_1.htmFile
  loc_B516E2: LdPrVar
  loc_B516E4: LateMemCall
  loc_B516EA: LitVarStr var_98, "   <th>CUENTA</th>"
  loc_B516EF: PopAdLdVar
  loc_B516F0: FLdPr Me
  loc_B516F3: MemLdRfVar from_stack_1.htmFile
  loc_B516F6: LdPrVar
  loc_B516F8: LateMemCall
  loc_B516FE: LitVarStr var_98, "   <th>CORRIENTE</th>"
  loc_B51703: PopAdLdVar
  loc_B51704: FLdPr Me
  loc_B51707: MemLdRfVar from_stack_1.htmFile
  loc_B5170A: LdPrVar
  loc_B5170C: LateMemCall
  loc_B51712: LitVarStr var_98, "   <th>NO CORRIENTE</th>"
  loc_B51717: PopAdLdVar
  loc_B51718: FLdPr Me
  loc_B5171B: MemLdRfVar from_stack_1.htmFile
  loc_B5171E: LdPrVar
  loc_B51720: LateMemCall
  loc_B51726: LitVarStr var_98, " </tr>"
  loc_B5172B: PopAdLdVar
  loc_B5172C: FLdPr Me
  loc_B5172F: MemLdRfVar from_stack_1.htmFile
  loc_B51732: LdPrVar
  loc_B51734: LateMemCall
  loc_B5173A: FLdPr Me
  loc_B5173D: MemLdRfVar from_stack_1.global_88
  loc_B51740: NewIfNullPr clsbase
  loc_B51743: Call clsbase.MoveFirst()
  loc_B51748: FLdRfVar var_AA
  loc_B5174B: FLdPr Me
  loc_B5174E: MemLdRfVar from_stack_1.global_88
  loc_B51751: NewIfNullPr clsbase
  loc_B51754: from_stack_1 = clsbase.EOF
  loc_B51759: FLdI2 var_AA
  loc_B5175C: NotI4
  loc_B5175D: BranchF loc_B5213F
  loc_B51760: FLdRfVar var_C4
  loc_B51763: FLdRfVar var_B4
  loc_B51766: LitVarStr var_98, "EsTit"
  loc_B5176B: PopAdLdVar
  loc_B5176C: FLdRfVar var_B0
  loc_B5176F: FLdRfVar var_88
  loc_B51772: FLdPr Me
  loc_B51775: MemLdRfVar from_stack_1.global_88
  loc_B51778: NewIfNullPr clsbase
  loc_B5177B: from_stack_1v = clsbase.RsFrmGet()
  loc_B51780: FLdPr var_88
  loc_B51783:  = Me.Fields
  loc_B51788: FLdPr var_B0
  loc_B5178B: from_stack_2 = Me.Item(from_stack_1)
  loc_B51790: FLdPr var_B4
  loc_B51793:  = Me.Value
  loc_B51798: FLdRfVar var_C4
  loc_B5179B: FnCByteVar
  loc_B5179D: CI2UI1
  loc_B5179F: LitI2_Byte 5
  loc_B517A1: LtI2
  loc_B517A2: FFreeAd var_88 = "": var_B0 = ""
  loc_B517AB: FFree1Var var_C4 = ""
  loc_B517AE: BranchF loc_B51904
  loc_B517B1: FLdRfVar var_C4
  loc_B517B4: FLdRfVar var_B4
  loc_B517B7: LitVarStr var_98, "EsTit"
  loc_B517BC: PopAdLdVar
  loc_B517BD: FLdRfVar var_B0
  loc_B517C0: FLdRfVar var_88
  loc_B517C3: FLdPr Me
  loc_B517C6: MemLdRfVar from_stack_1.global_88
  loc_B517C9: NewIfNullPr clsbase
  loc_B517CC: from_stack_1v = clsbase.RsFrmGet()
  loc_B517D1: FLdPr var_88
  loc_B517D4:  = Me.Fields
  loc_B517D9: FLdPr var_B0
  loc_B517DC: from_stack_2 = Me.Item(from_stack_1)
  loc_B517E1: FLdPr var_B4
  loc_B517E4:  = Me.Value
  loc_B517E9: FLdRfVar var_C4
  loc_B517EC: FnCByteVar
  loc_B517EE: FStUI1 var_C6
  loc_B517F2: FFreeAd var_88 = "": var_B0 = ""
  loc_B517FB: FFree1Var var_C4 = ""
  loc_B517FE: FLdUI1
  loc_B51802: LitI2_Byte 1
  loc_B51804: CUI1I2
  loc_B51806: EqI2
  loc_B51807: BranchF loc_B51821
  loc_B5180A: LitVarStr var_98, " <tr class=""Totales"" align=""left"">"
  loc_B5180F: PopAdLdVar
  loc_B51810: FLdPr Me
  loc_B51813: MemLdRfVar from_stack_1.htmFile
  loc_B51816: LdPrVar
  loc_B51818: LateMemCall
  loc_B5181E: Branch loc_B51887
  loc_B51821: FLdUI1
  loc_B51825: LitI2_Byte 2
  loc_B51827: CUI1I2
  loc_B51829: EqI2
  loc_B5182A: BranchF loc_B51844
  loc_B5182D: LitVarStr var_98, " <tr class=""Totales2"" align=""left"">"
  loc_B51832: PopAdLdVar
  loc_B51833: FLdPr Me
  loc_B51836: MemLdRfVar from_stack_1.htmFile
  loc_B51839: LdPrVar
  loc_B5183B: LateMemCall
  loc_B51841: Branch loc_B51887
  loc_B51844: FLdUI1
  loc_B51848: LitI2_Byte 3
  loc_B5184A: CUI1I2
  loc_B5184C: EqI2
  loc_B5184D: BranchF loc_B51867
  loc_B51850: LitVarStr var_98, " <tr class=""Totales3"" align=""left"">"
  loc_B51855: PopAdLdVar
  loc_B51856: FLdPr Me
  loc_B51859: MemLdRfVar from_stack_1.htmFile
  loc_B5185C: LdPrVar
  loc_B5185E: LateMemCall
  loc_B51864: Branch loc_B51887
  loc_B51867: FLdUI1
  loc_B5186B: LitI2_Byte 4
  loc_B5186D: CUI1I2
  loc_B5186F: EqI2
  loc_B51870: BranchF loc_B51887
  loc_B51873: LitVarStr var_98, " <tr class=""Totales4"" align=""left"">"
  loc_B51878: PopAdLdVar
  loc_B51879: FLdPr Me
  loc_B5187C: MemLdRfVar from_stack_1.htmFile
  loc_B5187F: LdPrVar
  loc_B51881: LateMemCall
  loc_B51887: LitI4 0
  loc_B5188C: LitI4 0
  loc_B51891: LitI2_Byte 0
  loc_B51893: LitI4 0
  loc_B51898: FLdRfVar var_C4
  loc_B5189B: FLdRfVar var_B4
  loc_B5189E: LitVarStr var_98, "DetaTicu"
  loc_B518A3: PopAdLdVar
  loc_B518A4: FLdRfVar var_B0
  loc_B518A7: FLdRfVar var_88
  loc_B518AA: FLdPr Me
  loc_B518AD: MemLdRfVar from_stack_1.global_88
  loc_B518B0: NewIfNullPr clsbase
  loc_B518B3: from_stack_1v = clsbase.RsFrmGet()
  loc_B518B8: FLdPr var_88
  loc_B518BB:  = Me.Fields
  loc_B518C0: FLdPr var_B0
  loc_B518C3: from_stack_2 = Me.Item(from_stack_1)
  loc_B518C8: FLdPr var_B4
  loc_B518CB:  = Me.Value
  loc_B518D0: FLdRfVar var_C4
  loc_B518D3: CStrVarTmp
  loc_B518D4: FStStrNoPop var_CC
  loc_B518D7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B518DC: CVarStr var_DC
  loc_B518DF: PopAdLdVar
  loc_B518E0: FLdPr Me
  loc_B518E3: MemLdRfVar from_stack_1.htmFile
  loc_B518E6: LdPrVar
  loc_B518E8: LateMemCall
  loc_B518EE: FFree1Str var_CC
  loc_B518F1: FFreeAd var_88 = "": var_B0 = ""
  loc_B518FA: FFreeVar var_C4 = ""
  loc_B51901: Branch loc_B519E6
  loc_B51904: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B51909: PopAdLdVar
  loc_B5190A: FLdPr Me
  loc_B5190D: MemLdRfVar from_stack_1.htmFile
  loc_B51910: LdPrVar
  loc_B51912: LateMemCall
  loc_B51918: LitI4 0
  loc_B5191D: LitI4 0
  loc_B51922: LitI2_Byte 0
  loc_B51924: LitI4 0
  loc_B51929: FLdRfVar var_C4
  loc_B5192C: FLdRfVar var_B4
  loc_B5192F: LitVarStr var_98, "CodiCuco"
  loc_B51934: PopAdLdVar
  loc_B51935: FLdRfVar var_B0
  loc_B51938: FLdRfVar var_88
  loc_B5193B: FLdPr Me
  loc_B5193E: MemLdRfVar from_stack_1.global_88
  loc_B51941: NewIfNullPr clsbase
  loc_B51944: from_stack_1v = clsbase.RsFrmGet()
  loc_B51949: FLdPr var_88
  loc_B5194C:  = Me.Fields
  loc_B51951: FLdPr var_B0
  loc_B51954: from_stack_2 = Me.Item(from_stack_1)
  loc_B51959: FLdPr var_B4
  loc_B5195C:  = Me.Value
  loc_B51961: FLdRfVar var_C4
  loc_B51964: LitVarStr var_A8, " - "
  loc_B51969: ConcatVar var_DC
  loc_B5196D: FLdRfVar var_108
  loc_B51970: FLdRfVar var_F8
  loc_B51973: LitVarStr var_F4, "DetaCuco"
  loc_B51978: PopAdLdVar
  loc_B51979: FLdRfVar var_E4
  loc_B5197C: FLdRfVar var_E0
  loc_B5197F: FLdPr Me
  loc_B51982: MemLdRfVar from_stack_1.global_88
  loc_B51985: NewIfNullPr clsbase
  loc_B51988: from_stack_1v = clsbase.RsFrmGet()
  loc_B5198D: FLdPr var_E0
  loc_B51990:  = Me.Fields
  loc_B51995: FLdPr var_E4
  loc_B51998: from_stack_2 = Me.Item(from_stack_1)
  loc_B5199D: FLdPr var_F8
  loc_B519A0:  = Me.Value
  loc_B519A5: FLdRfVar var_108
  loc_B519A8: ConcatVar var_118
  loc_B519AC: CStrVarVal var_CC
  loc_B519B0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B519B5: CVarStr var_128
  loc_B519B8: PopAdLdVar
  loc_B519B9: FLdPr Me
  loc_B519BC: MemLdRfVar from_stack_1.htmFile
  loc_B519BF: LdPrVar
  loc_B519C1: LateMemCall
  loc_B519C7: FFree1Str var_CC
  loc_B519CA: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_E0 = "": var_E4 = ""
  loc_B519D9: FFreeVar var_C4 = "": var_DC = "": var_108 = "": var_118 = ""
  loc_B519E6: FLdRfVar var_C4
  loc_B519E9: FLdRfVar var_B4
  loc_B519EC: LitVarStr var_98, "CodiTicu"
  loc_B519F1: PopAdLdVar
  loc_B519F2: FLdRfVar var_B0
  loc_B519F5: FLdRfVar var_88
  loc_B519F8: FLdPr Me
  loc_B519FB: MemLdRfVar from_stack_1.global_88
  loc_B519FE: NewIfNullPr clsbase
  loc_B51A01: from_stack_1v = clsbase.RsFrmGet()
  loc_B51A06: FLdPr var_88
  loc_B51A09:  = Me.Fields
  loc_B51A0E: FLdPr var_B0
  loc_B51A11: from_stack_2 = Me.Item(from_stack_1)
  loc_B51A16: FLdPr var_B4
  loc_B51A19:  = Me.Value
  loc_B51A1E: LitI4 1
  loc_B51A23: FLdRfVar var_C4
  loc_B51A26: CStrVarTmp
  loc_B51A27: FStStrNoPop var_CC
  loc_B51A2A: ImpAdCallI2 Left$(, )
  loc_B51A2F: FStStrNoPop var_13C
  loc_B51A32: LitStr "1"
  loc_B51A35: EqStr
  loc_B51A37: FFreeStr var_CC = ""
  loc_B51A3E: FFreeAd var_88 = "": var_B0 = ""
  loc_B51A47: FFree1Var var_C4 = ""
  loc_B51A4A: BranchF loc_B51C5E
  loc_B51A4D: FLdRfVar var_C4
  loc_B51A50: FLdRfVar var_B4
  loc_B51A53: LitVarStr var_98, "Cte"
  loc_B51A58: PopAdLdVar
  loc_B51A59: FLdRfVar var_B0
  loc_B51A5C: FLdRfVar var_88
  loc_B51A5F: FLdPr Me
  loc_B51A62: MemLdRfVar from_stack_1.global_88
  loc_B51A65: NewIfNullPr clsbase
  loc_B51A68: from_stack_1v = clsbase.RsFrmGet()
  loc_B51A6D: FLdPr var_88
  loc_B51A70:  = Me.Fields
  loc_B51A75: FLdPr var_B0
  loc_B51A78: from_stack_2 = Me.Item(from_stack_1)
  loc_B51A7D: FLdPr var_B4
  loc_B51A80:  = Me.Value
  loc_B51A85: FLdRfVar var_F8
  loc_B51A88: LitVarStr var_F4, "Cte"
  loc_B51A8D: PopAdLdVar
  loc_B51A8E: FLdRfVar var_E4
  loc_B51A91: FLdRfVar var_E0
  loc_B51A94: FLdPr Me
  loc_B51A97: MemLdRfVar from_stack_1.global_88
  loc_B51A9A: NewIfNullPr clsbase
  loc_B51A9D: from_stack_1v = clsbase.RsFrmGet()
  loc_B51AA2: FLdPr var_E0
  loc_B51AA5:  = Me.Fields
  loc_B51AAA: FLdPr var_E4
  loc_B51AAD: from_stack_2 = Me.Item(from_stack_1)
  loc_B51AB2: LitI4 -2
  loc_B51AB7: LitI4 -2
  loc_B51ABC: LitI4 -2
  loc_B51AC1: LitI4 2
  loc_B51AC6: FLdZeroAd var_F8
  loc_B51AC9: CVarAd
  loc_B51ACD: ImpAdCallI2 FormatNumber(, , , , )
  loc_B51AD2: FStStr var_13C
  loc_B51AD5: LitVarStr var_138, "&nbsp;"
  loc_B51ADA: FStVarCopyObj var_14C
  loc_B51ADD: FLdRfVar var_14C
  loc_B51AE0: FLdZeroAd var_13C
  loc_B51AE3: CVarStr var_128
  loc_B51AE6: FLdRfVar var_C4
  loc_B51AE9: LitVarStr var_A8, "0"
  loc_B51AEE: HardType
  loc_B51AEF: NeVar var_DC
  loc_B51AF3: FStVar var_118
  loc_B51AF7: FLdRfVar var_118
  loc_B51AFA: FLdRfVar var_15C
  loc_B51AFD: ImpAdCallFPR4  = IIf(, , )
  loc_B51B02: LitI4 0
  loc_B51B07: LitI4 0
  loc_B51B0C: LitI2_Byte &HFF
  loc_B51B0E: LitStr "right"
  loc_B51B11: FLdRfVar var_15C
  loc_B51B14: CStrVarVal var_CC
  loc_B51B18: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B51B1D: CVarStr var_16C
  loc_B51B20: PopAdLdVar
  loc_B51B21: FLdPr Me
  loc_B51B24: MemLdRfVar from_stack_1.htmFile
  loc_B51B27: LdPrVar
  loc_B51B29: LateMemCall
  loc_B51B2F: FFreeStr var_CC = ""
  loc_B51B36: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_E0 = ""
  loc_B51B43: FFreeVar var_C4 = "": var_108 = "": var_118 = "": var_128 = "": var_14C = "": var_15C = ""
  loc_B51B54: FLdRfVar var_C4
  loc_B51B57: FLdRfVar var_B4
  loc_B51B5A: LitVarStr var_98, "NoCte"
  loc_B51B5F: PopAdLdVar
  loc_B51B60: FLdRfVar var_B0
  loc_B51B63: FLdRfVar var_88
  loc_B51B66: FLdPr Me
  loc_B51B69: MemLdRfVar from_stack_1.global_88
  loc_B51B6C: NewIfNullPr clsbase
  loc_B51B6F: from_stack_1v = clsbase.RsFrmGet()
  loc_B51B74: FLdPr var_88
  loc_B51B77:  = Me.Fields
  loc_B51B7C: FLdPr var_B0
  loc_B51B7F: from_stack_2 = Me.Item(from_stack_1)
  loc_B51B84: FLdPr var_B4
  loc_B51B87:  = Me.Value
  loc_B51B8C: FLdRfVar var_F8
  loc_B51B8F: LitVarStr var_F4, "NoCte"
  loc_B51B94: PopAdLdVar
  loc_B51B95: FLdRfVar var_E4
  loc_B51B98: FLdRfVar var_E0
  loc_B51B9B: FLdPr Me
  loc_B51B9E: MemLdRfVar from_stack_1.global_88
  loc_B51BA1: NewIfNullPr clsbase
  loc_B51BA4: from_stack_1v = clsbase.RsFrmGet()
  loc_B51BA9: FLdPr var_E0
  loc_B51BAC:  = Me.Fields
  loc_B51BB1: FLdPr var_E4
  loc_B51BB4: from_stack_2 = Me.Item(from_stack_1)
  loc_B51BB9: LitI4 -2
  loc_B51BBE: LitI4 -2
  loc_B51BC3: LitI4 -2
  loc_B51BC8: LitI4 2
  loc_B51BCD: FLdZeroAd var_F8
  loc_B51BD0: CVarAd
  loc_B51BD4: ImpAdCallI2 FormatNumber(, , , , )
  loc_B51BD9: FStStr var_13C
  loc_B51BDC: LitVarStr var_138, "&nbsp;"
  loc_B51BE1: FStVarCopyObj var_14C
  loc_B51BE4: FLdRfVar var_14C
  loc_B51BE7: FLdZeroAd var_13C
  loc_B51BEA: CVarStr var_128
  loc_B51BED: FLdRfVar var_C4
  loc_B51BF0: LitVarStr var_A8, "0"
  loc_B51BF5: HardType
  loc_B51BF6: NeVar var_DC
  loc_B51BFA: FStVar var_118
  loc_B51BFE: FLdRfVar var_118
  loc_B51C01: FLdRfVar var_15C
  loc_B51C04: ImpAdCallFPR4  = IIf(, , )
  loc_B51C09: LitI4 0
  loc_B51C0E: LitI4 0
  loc_B51C13: LitI2_Byte &HFF
  loc_B51C15: LitStr "right"
  loc_B51C18: FLdRfVar var_15C
  loc_B51C1B: CStrVarVal var_CC
  loc_B51C1F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B51C24: CVarStr var_16C
  loc_B51C27: PopAdLdVar
  loc_B51C28: FLdPr Me
  loc_B51C2B: MemLdRfVar from_stack_1.htmFile
  loc_B51C2E: LdPrVar
  loc_B51C30: LateMemCall
  loc_B51C36: FFreeStr var_CC = ""
  loc_B51C3D: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_E0 = ""
  loc_B51C4A: FFreeVar var_C4 = "": var_108 = "": var_118 = "": var_128 = "": var_14C = "": var_15C = ""
  loc_B51C5B: Branch loc_B5211A
  loc_B51C5E: FLdRfVar var_C4
  loc_B51C61: FLdRfVar var_B4
  loc_B51C64: LitVarStr var_98, "CodiTicu"
  loc_B51C69: PopAdLdVar
  loc_B51C6A: FLdRfVar var_B0
  loc_B51C6D: FLdRfVar var_88
  loc_B51C70: FLdPr Me
  loc_B51C73: MemLdRfVar from_stack_1.global_88
  loc_B51C76: NewIfNullPr clsbase
  loc_B51C79: from_stack_1v = clsbase.RsFrmGet()
  loc_B51C7E: FLdPr var_88
  loc_B51C81:  = Me.Fields
  loc_B51C86: FLdPr var_B0
  loc_B51C89: from_stack_2 = Me.Item(from_stack_1)
  loc_B51C8E: FLdPr var_B4
  loc_B51C91:  = Me.Value
  loc_B51C96: LitI4 1
  loc_B51C9B: FLdRfVar var_C4
  loc_B51C9E: CStrVarTmp
  loc_B51C9F: FStStrNoPop var_CC
  loc_B51CA2: ImpAdCallI2 Left$(, )
  loc_B51CA7: FStStrNoPop var_13C
  loc_B51CAA: LitStr "2"
  loc_B51CAD: EqStr
  loc_B51CAF: FFreeStr var_CC = ""
  loc_B51CB6: FFreeAd var_88 = "": var_B0 = ""
  loc_B51CBF: FFree1Var var_C4 = ""
  loc_B51CC2: BranchF loc_B51F0C
  loc_B51CC5: FLdRfVar var_C4
  loc_B51CC8: FLdRfVar var_B4
  loc_B51CCB: LitVarStr var_98, "Cte"
  loc_B51CD0: PopAdLdVar
  loc_B51CD1: FLdRfVar var_B0
  loc_B51CD4: FLdRfVar var_88
  loc_B51CD7: FLdPr Me
  loc_B51CDA: MemLdRfVar from_stack_1.global_88
  loc_B51CDD: NewIfNullPr clsbase
  loc_B51CE0: from_stack_1v = clsbase.RsFrmGet()
  loc_B51CE5: FLdPr var_88
  loc_B51CE8:  = Me.Fields
  loc_B51CED: FLdPr var_B0
  loc_B51CF0: from_stack_2 = Me.Item(from_stack_1)
  loc_B51CF5: FLdPr var_B4
  loc_B51CF8:  = Me.Value
  loc_B51CFD: FLdRfVar var_108
  loc_B51D00: FLdRfVar var_F8
  loc_B51D03: LitVarStr var_F4, "Cte"
  loc_B51D08: PopAdLdVar
  loc_B51D09: FLdRfVar var_E4
  loc_B51D0C: FLdRfVar var_E0
  loc_B51D0F: FLdPr Me
  loc_B51D12: MemLdRfVar from_stack_1.global_88
  loc_B51D15: NewIfNullPr clsbase
  loc_B51D18: from_stack_1v = clsbase.RsFrmGet()
  loc_B51D1D: FLdPr var_E0
  loc_B51D20:  = Me.Fields
  loc_B51D25: FLdPr var_E4
  loc_B51D28: from_stack_2 = Me.Item(from_stack_1)
  loc_B51D2D: FLdPr var_F8
  loc_B51D30:  = Me.Value
  loc_B51D35: LitI4 -2
  loc_B51D3A: LitI4 -2
  loc_B51D3F: LitI4 -2
  loc_B51D44: LitI4 2
  loc_B51D49: FLdRfVar var_108
  loc_B51D4C: LitVarI2 var_138, -1
  loc_B51D51: MulVar var_118
  loc_B51D55: FStVar var_128
  loc_B51D59: FLdRfVar var_128
  loc_B51D5C: ImpAdCallI2 FormatNumber(, , , , )
  loc_B51D61: FStStr var_13C
  loc_B51D64: LitVarStr var_17C, "&nbsp;"
  loc_B51D69: FStVarCopyObj var_16C
  loc_B51D6C: FLdRfVar var_16C
  loc_B51D6F: FLdZeroAd var_13C
  loc_B51D72: CVarStr var_15C
  loc_B51D75: FLdRfVar var_C4
  loc_B51D78: LitVarStr var_A8, "0"
  loc_B51D7D: HardType
  loc_B51D7E: NeVar var_DC
  loc_B51D82: FStVar var_14C
  loc_B51D86: FLdRfVar var_14C
  loc_B51D89: FLdRfVar var_18C
  loc_B51D8C: ImpAdCallFPR4  = IIf(, , )
  loc_B51D91: LitI4 0
  loc_B51D96: LitI4 0
  loc_B51D9B: LitI2_Byte &HFF
  loc_B51D9D: LitStr "right"
  loc_B51DA0: FLdRfVar var_18C
  loc_B51DA3: CStrVarVal var_CC
  loc_B51DA7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B51DAC: CVarStr var_19C
  loc_B51DAF: PopAdLdVar
  loc_B51DB0: FLdPr Me
  loc_B51DB3: MemLdRfVar from_stack_1.htmFile
  loc_B51DB6: LdPrVar
  loc_B51DB8: LateMemCall
  loc_B51DBE: FFreeStr var_CC = ""
  loc_B51DC5: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_E0 = "": var_E4 = ""
  loc_B51DD4: FFreeVar var_C4 = "": var_108 = "": var_128 = "": var_14C = "": var_15C = "": var_16C = "": var_18C = ""
  loc_B51DE7: FLdRfVar var_C4
  loc_B51DEA: FLdRfVar var_B4
  loc_B51DED: LitVarStr var_98, "NoCte"
  loc_B51DF2: PopAdLdVar
  loc_B51DF3: FLdRfVar var_B0
  loc_B51DF6: FLdRfVar var_88
  loc_B51DF9: FLdPr Me
  loc_B51DFC: MemLdRfVar from_stack_1.global_88
  loc_B51DFF: NewIfNullPr clsbase
  loc_B51E02: from_stack_1v = clsbase.RsFrmGet()
  loc_B51E07: FLdPr var_88
  loc_B51E0A:  = Me.Fields
  loc_B51E0F: FLdPr var_B0
  loc_B51E12: from_stack_2 = Me.Item(from_stack_1)
  loc_B51E17: FLdPr var_B4
  loc_B51E1A:  = Me.Value
  loc_B51E1F: FLdRfVar var_108
  loc_B51E22: FLdRfVar var_F8
  loc_B51E25: LitVarStr var_F4, "NoCte"
  loc_B51E2A: PopAdLdVar
  loc_B51E2B: FLdRfVar var_E4
  loc_B51E2E: FLdRfVar var_E0
  loc_B51E31: FLdPr Me
  loc_B51E34: MemLdRfVar from_stack_1.global_88
  loc_B51E37: NewIfNullPr clsbase
  loc_B51E3A: from_stack_1v = clsbase.RsFrmGet()
  loc_B51E3F: FLdPr var_E0
  loc_B51E42:  = Me.Fields
  loc_B51E47: FLdPr var_E4
  loc_B51E4A: from_stack_2 = Me.Item(from_stack_1)
  loc_B51E4F: FLdPr var_F8
  loc_B51E52:  = Me.Value
  loc_B51E57: LitI4 -2
  loc_B51E5C: LitI4 -2
  loc_B51E61: LitI4 -2
  loc_B51E66: LitI4 2
  loc_B51E6B: FLdRfVar var_108
  loc_B51E6E: LitVarI2 var_138, -1
  loc_B51E73: MulVar var_118
  loc_B51E77: FStVar var_128
  loc_B51E7B: FLdRfVar var_128
  loc_B51E7E: ImpAdCallI2 FormatNumber(, , , , )
  loc_B51E83: FStStr var_13C
  loc_B51E86: LitVarStr var_17C, "&nbsp;"
  loc_B51E8B: FStVarCopyObj var_16C
  loc_B51E8E: FLdRfVar var_16C
  loc_B51E91: FLdZeroAd var_13C
  loc_B51E94: CVarStr var_15C
  loc_B51E97: FLdRfVar var_C4
  loc_B51E9A: LitVarStr var_A8, "0"
  loc_B51E9F: HardType
  loc_B51EA0: NeVar var_DC
  loc_B51EA4: FStVar var_14C
  loc_B51EA8: FLdRfVar var_14C
  loc_B51EAB: FLdRfVar var_18C
  loc_B51EAE: ImpAdCallFPR4  = IIf(, , )
  loc_B51EB3: LitI4 0
  loc_B51EB8: LitI4 0
  loc_B51EBD: LitI2_Byte &HFF
  loc_B51EBF: LitStr "right"
  loc_B51EC2: FLdRfVar var_18C
  loc_B51EC5: CStrVarVal var_CC
  loc_B51EC9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B51ECE: CVarStr var_19C
  loc_B51ED1: PopAdLdVar
  loc_B51ED2: FLdPr Me
  loc_B51ED5: MemLdRfVar from_stack_1.htmFile
  loc_B51ED8: LdPrVar
  loc_B51EDA: LateMemCall
  loc_B51EE0: FFreeStr var_CC = ""
  loc_B51EE7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_E0 = "": var_E4 = ""
  loc_B51EF6: FFreeVar var_C4 = "": var_108 = "": var_128 = "": var_14C = "": var_15C = "": var_16C = "": var_18C = ""
  loc_B51F09: Branch loc_B5211A
  loc_B51F0C: FLdRfVar var_C4
  loc_B51F0F: FLdRfVar var_B4
  loc_B51F12: LitVarStr var_98, "Cte"
  loc_B51F17: PopAdLdVar
  loc_B51F18: FLdRfVar var_B0
  loc_B51F1B: FLdRfVar var_88
  loc_B51F1E: FLdPr Me
  loc_B51F21: MemLdRfVar from_stack_1.global_88
  loc_B51F24: NewIfNullPr clsbase
  loc_B51F27: from_stack_1v = clsbase.RsFrmGet()
  loc_B51F2C: FLdPr var_88
  loc_B51F2F:  = Me.Fields
  loc_B51F34: FLdPr var_B0
  loc_B51F37: from_stack_2 = Me.Item(from_stack_1)
  loc_B51F3C: FLdPr var_B4
  loc_B51F3F:  = Me.Value
  loc_B51F44: FLdRfVar var_F8
  loc_B51F47: LitVarStr var_F4, "Cte"
  loc_B51F4C: PopAdLdVar
  loc_B51F4D: FLdRfVar var_E4
  loc_B51F50: FLdRfVar var_E0
  loc_B51F53: FLdPr Me
  loc_B51F56: MemLdRfVar from_stack_1.global_88
  loc_B51F59: NewIfNullPr clsbase
  loc_B51F5C: from_stack_1v = clsbase.RsFrmGet()
  loc_B51F61: FLdPr var_E0
  loc_B51F64:  = Me.Fields
  loc_B51F69: FLdPr var_E4
  loc_B51F6C: from_stack_2 = Me.Item(from_stack_1)
  loc_B51F71: LitI4 -2
  loc_B51F76: LitI4 -2
  loc_B51F7B: LitI4 -2
  loc_B51F80: LitI4 2
  loc_B51F85: FLdZeroAd var_F8
  loc_B51F88: CVarAd
  loc_B51F8C: ImpAdCallI2 FormatNumber(, , , , )
  loc_B51F91: FStStr var_13C
  loc_B51F94: LitVarStr var_138, "&nbsp;"
  loc_B51F99: FStVarCopyObj var_14C
  loc_B51F9C: FLdRfVar var_14C
  loc_B51F9F: FLdZeroAd var_13C
  loc_B51FA2: CVarStr var_128
  loc_B51FA5: FLdRfVar var_C4
  loc_B51FA8: LitVarStr var_A8, "0"
  loc_B51FAD: HardType
  loc_B51FAE: NeVar var_DC
  loc_B51FB2: FStVar var_118
  loc_B51FB6: FLdRfVar var_118
  loc_B51FB9: FLdRfVar var_15C
  loc_B51FBC: ImpAdCallFPR4  = IIf(, , )
  loc_B51FC1: LitI4 0
  loc_B51FC6: LitI4 0
  loc_B51FCB: LitI2_Byte &HFF
  loc_B51FCD: LitStr "right"
  loc_B51FD0: FLdRfVar var_15C
  loc_B51FD3: CStrVarVal var_CC
  loc_B51FD7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B51FDC: CVarStr var_16C
  loc_B51FDF: PopAdLdVar
  loc_B51FE0: FLdPr Me
  loc_B51FE3: MemLdRfVar from_stack_1.htmFile
  loc_B51FE6: LdPrVar
  loc_B51FE8: LateMemCall
  loc_B51FEE: FFreeStr var_CC = ""
  loc_B51FF5: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_E0 = ""
  loc_B52002: FFreeVar var_C4 = "": var_108 = "": var_118 = "": var_128 = "": var_14C = "": var_15C = ""
  loc_B52013: FLdRfVar var_C4
  loc_B52016: FLdRfVar var_B4
  loc_B52019: LitVarStr var_98, "NoCte"
  loc_B5201E: PopAdLdVar
  loc_B5201F: FLdRfVar var_B0
  loc_B52022: FLdRfVar var_88
  loc_B52025: FLdPr Me
  loc_B52028: MemLdRfVar from_stack_1.global_88
  loc_B5202B: NewIfNullPr clsbase
  loc_B5202E: from_stack_1v = clsbase.RsFrmGet()
  loc_B52033: FLdPr var_88
  loc_B52036:  = Me.Fields
  loc_B5203B: FLdPr var_B0
  loc_B5203E: from_stack_2 = Me.Item(from_stack_1)
  loc_B52043: FLdPr var_B4
  loc_B52046:  = Me.Value
  loc_B5204B: FLdRfVar var_F8
  loc_B5204E: LitVarStr var_F4, "NoCte"
  loc_B52053: PopAdLdVar
  loc_B52054: FLdRfVar var_E4
  loc_B52057: FLdRfVar var_E0
  loc_B5205A: FLdPr Me
  loc_B5205D: MemLdRfVar from_stack_1.global_88
  loc_B52060: NewIfNullPr clsbase
  loc_B52063: from_stack_1v = clsbase.RsFrmGet()
  loc_B52068: FLdPr var_E0
  loc_B5206B:  = Me.Fields
  loc_B52070: FLdPr var_E4
  loc_B52073: from_stack_2 = Me.Item(from_stack_1)
  loc_B52078: LitI4 -2
  loc_B5207D: LitI4 -2
  loc_B52082: LitI4 -2
  loc_B52087: LitI4 2
  loc_B5208C: FLdZeroAd var_F8
  loc_B5208F: CVarAd
  loc_B52093: ImpAdCallI2 FormatNumber(, , , , )
  loc_B52098: FStStr var_13C
  loc_B5209B: LitVarStr var_138, "&nbsp;"
  loc_B520A0: FStVarCopyObj var_14C
  loc_B520A3: FLdRfVar var_14C
  loc_B520A6: FLdZeroAd var_13C
  loc_B520A9: CVarStr var_128
  loc_B520AC: FLdRfVar var_C4
  loc_B520AF: LitVarStr var_A8, "0"
  loc_B520B4: HardType
  loc_B520B5: NeVar var_DC
  loc_B520B9: FStVar var_118
  loc_B520BD: FLdRfVar var_118
  loc_B520C0: FLdRfVar var_15C
  loc_B520C3: ImpAdCallFPR4  = IIf(, , )
  loc_B520C8: LitI4 0
  loc_B520CD: LitI4 0
  loc_B520D2: LitI2_Byte &HFF
  loc_B520D4: LitStr "right"
  loc_B520D7: FLdRfVar var_15C
  loc_B520DA: CStrVarVal var_CC
  loc_B520DE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B520E3: CVarStr var_16C
  loc_B520E6: PopAdLdVar
  loc_B520E7: FLdPr Me
  loc_B520EA: MemLdRfVar from_stack_1.htmFile
  loc_B520ED: LdPrVar
  loc_B520EF: LateMemCall
  loc_B520F5: FFreeStr var_CC = ""
  loc_B520FC: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_E0 = ""
  loc_B52109: FFreeVar var_C4 = "": var_108 = "": var_118 = "": var_128 = "": var_14C = "": var_15C = ""
  loc_B5211A: LitVarStr var_98, "     </tr>"
  loc_B5211F: PopAdLdVar
  loc_B52120: FLdPr Me
  loc_B52123: MemLdRfVar from_stack_1.htmFile
  loc_B52126: LdPrVar
  loc_B52128: LateMemCall
  loc_B5212E: FLdPr Me
  loc_B52131: MemLdRfVar from_stack_1.global_88
  loc_B52134: NewIfNullPr clsbase
  loc_B52137: Call clsbase.MoveSiguiente()
  loc_B5213C: Branch loc_B51748
  loc_B5213F: Call Proc_155_27_9EF054()
  loc_B52144: FLdPr Me
  loc_B52147: MemLdRfVar from_stack_1.htmFile
  loc_B5214A: LdPrVar
  loc_B5214C: LateMemCall
  loc_B52152: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B52157: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94D6D4
  'Data Table: 448E04
  loc_94D6BC: LitI2_Byte 0
  loc_94D6BE: FLdPr Me
  loc_94D6C1: MemStI2 bLogos
  loc_94D6C4: Call GeneraHTML()
  loc_94D6C9: LitI2_Byte &HFF
  loc_94D6CB: FLdPr Me
  loc_94D6CE: MemStI2 bLogos
  loc_94D6D1: ExitProcHresult
End Sub

Private Function Proc_155_26_A518F0() 'A518F0
  'Data Table: 448E04
  loc_A51648: LitVarStr var_94, "<html>"
  loc_A5164D: PopAdLdVar
  loc_A5164E: FLdPr Me
  loc_A51651: MemLdRfVar from_stack_1.htmFile
  loc_A51654: LdPrVar
  loc_A51656: LateMemCall
  loc_A5165C: LitVarStr var_94, "<head>"
  loc_A51661: PopAdLdVar
  loc_A51662: FLdPr Me
  loc_A51665: MemLdRfVar from_stack_1.htmFile
  loc_A51668: LdPrVar
  loc_A5166A: LateMemCall
  loc_A51670: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A51675: PopAdLdVar
  loc_A51676: FLdPr Me
  loc_A51679: MemLdRfVar from_stack_1.htmFile
  loc_A5167C: LdPrVar
  loc_A5167E: LateMemCall
  loc_A51684: LitStr "<title>"
  loc_A51687: FLdRfVar var_A8
  loc_A5168A: FLdPr Me
  loc_A5168D:  = Me.Caption
  loc_A51692: ILdRf var_A8
  loc_A51695: ConcatStr
  loc_A51696: FStStrNoPop var_AC
  loc_A51699: LitStr " - "
  loc_A5169C: ConcatStr
  loc_A5169D: FStStrNoPop var_B0
  loc_A516A0: LitStr "Municipalidad de Guaymallén"
  loc_A516A3: ConcatStr
  loc_A516A4: FStStrNoPop var_B4
  loc_A516A7: LitStr "</title>"
  loc_A516AA: ConcatStr
  loc_A516AB: CVarStr var_C4
  loc_A516AE: PopAdLdVar
  loc_A516AF: FLdPr Me
  loc_A516B2: MemLdRfVar from_stack_1.htmFile
  loc_A516B5: LdPrVar
  loc_A516B7: LateMemCall
  loc_A516BD: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A516C8: FFree1Var var_C4 = ""
  loc_A516CB: LitStr vbNullString
  loc_A516CE: ILdRf Me
  loc_A516D1: CastAd
  loc_A516D4: FStAdFunc var_C8
  loc_A516D7: FLdRfVar var_C8
  loc_A516DA: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A516DF: FFree1Ad var_C8
  loc_A516E2: LitI4 0
  loc_A516E7: FStStrCopy var_AC
  loc_A516EA: FLdRfVar var_AC
  loc_A516ED: LitI4 0
  loc_A516F2: FStStrCopy var_A8
  loc_A516F5: FLdRfVar var_A8
  loc_A516F8: LitI2_Byte &HFF
  loc_A516FA: PopTmpLdAd2 var_CA
  loc_A516FD: FLdPr Me
  loc_A51700: MemLdRfVar from_stack_1.htmFile
  loc_A51703: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A51708: FFreeStr var_A8 = ""
  loc_A5170F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A51714: PopAdLdVar
  loc_A51715: FLdPr Me
  loc_A51718: MemLdRfVar from_stack_1.htmFile
  loc_A5171B: LdPrVar
  loc_A5171D: LateMemCall
  loc_A51723: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A51728: PopAdLdVar
  loc_A51729: FLdPr Me
  loc_A5172C: MemLdRfVar from_stack_1.htmFile
  loc_A5172F: LdPrVar
  loc_A51731: LateMemCall
  loc_A51737: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A5173C: PopAdLdVar
  loc_A5173D: FLdPr Me
  loc_A51740: MemLdRfVar from_stack_1.htmFile
  loc_A51743: LdPrVar
  loc_A51745: LateMemCall
  loc_A5174B: FLdPr Me
  loc_A5174E: MemLdI2 bLogos
  loc_A51751: BranchF loc_A51768
  loc_A51754: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A51759: PopAdLdVar
  loc_A5175A: FLdPr Me
  loc_A5175D: MemLdRfVar from_stack_1.htmFile
  loc_A51760: LdPrVar
  loc_A51762: LateMemCall
  loc_A51768: LitVarStr var_A4, "    <br><br>"
  loc_A5176D: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A51772: FStVarCopyObj var_C4
  loc_A51775: FLdRfVar var_C4
  loc_A51778: FLdRfVar var_DC
  loc_A5177B: ImpAdCallFPR4  = Ucase()
  loc_A51780: FLdRfVar var_DC
  loc_A51783: ConcatVar var_EC
  loc_A51787: LitVarStr var_FC, "</p>"
  loc_A5178C: ConcatVar var_10C
  loc_A51790: PopAdLdVar
  loc_A51791: FLdPr Me
  loc_A51794: MemLdRfVar from_stack_1.htmFile
  loc_A51797: LdPrVar
  loc_A51799: LateMemCall
  loc_A5179F: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A517AA: LitStr "    <p>"
  loc_A517AD: FLdRfVar var_A8
  loc_A517B0: FLdPr Me
  loc_A517B3:  = Me.Caption
  loc_A517B8: ILdRf var_A8
  loc_A517BB: ConcatStr
  loc_A517BC: FStStrNoPop var_AC
  loc_A517BF: LitStr "</p></th>"
  loc_A517C2: ConcatStr
  loc_A517C3: CVarStr var_C4
  loc_A517C6: PopAdLdVar
  loc_A517C7: FLdPr Me
  loc_A517CA: MemLdRfVar from_stack_1.htmFile
  loc_A517CD: LdPrVar
  loc_A517CF: LateMemCall
  loc_A517D5: FFreeStr var_A8 = ""
  loc_A517DC: FFree1Var var_C4 = ""
  loc_A517DF: LitVarStr var_94, "  </tr>"
  loc_A517E4: PopAdLdVar
  loc_A517E5: FLdPr Me
  loc_A517E8: MemLdRfVar from_stack_1.htmFile
  loc_A517EB: LdPrVar
  loc_A517ED: LateMemCall
  loc_A517F3: LitVarStr var_94, "  <tr>"
  loc_A517F8: PopAdLdVar
  loc_A517F9: FLdPr Me
  loc_A517FC: MemLdRfVar from_stack_1.htmFile
  loc_A517FF: LdPrVar
  loc_A51801: LateMemCall
  loc_A51807: LitVarStr var_94, "    <th>"
  loc_A5180C: PopAdLdVar
  loc_A5180D: FLdPr Me
  loc_A51810: MemLdRfVar from_stack_1.htmFile
  loc_A51813: LdPrVar
  loc_A51815: LateMemCall
  loc_A5181B: LitStr "      <p align=""left"" class=""Titulo2"">      Repartición/Organismo: "
  loc_A5181E: LitStr "Municipalidad de Guaymallén"
  loc_A51821: ConcatStr
  loc_A51822: FStStrNoPop var_A8
  loc_A51825: LitStr "<br>"
  loc_A51828: ConcatStr
  loc_A51829: CVarStr var_C4
  loc_A5182C: PopAdLdVar
  loc_A5182D: FLdPr Me
  loc_A51830: MemLdRfVar from_stack_1.htmFile
  loc_A51833: LdPrVar
  loc_A51835: LateMemCall
  loc_A5183B: FFree1Str var_A8
  loc_A5183E: FFree1Var var_C4 = ""
  loc_A51841: LitStr "    Nomenclador: "
  loc_A51844: LitStr "060204"
  loc_A51847: ConcatStr
  loc_A51848: FStStrNoPop var_A8
  loc_A5184B: LitStr "<br>"
  loc_A5184E: ConcatStr
  loc_A5184F: CVarStr var_C4
  loc_A51852: PopAdLdVar
  loc_A51853: FLdPr Me
  loc_A51856: MemLdRfVar from_stack_1.htmFile
  loc_A51859: LdPrVar
  loc_A5185B: LateMemCall
  loc_A51861: FFree1Str var_A8
  loc_A51864: FFree1Var var_C4 = ""
  loc_A51867: LitStr "    Ejercicio: "
  loc_A5186A: FLdRfVar var_A8
  loc_A5186D: FLdPr Me
  loc_A51870: VCallAd Control_ID_cboPeriodo
  loc_A51873: FStAdFunc var_C8
  loc_A51876: FLdPr var_C8
  loc_A51879:  = Me.Text
  loc_A5187E: ILdRf var_A8
  loc_A51881: ConcatStr
  loc_A51882: CVarStr var_C4
  loc_A51885: PopAdLdVar
  loc_A51886: FLdPr Me
  loc_A51889: MemLdRfVar from_stack_1.htmFile
  loc_A5188C: LdPrVar
  loc_A5188E: LateMemCall
  loc_A51894: FFree1Str var_A8
  loc_A51897: FFree1Ad var_C8
  loc_A5189A: FFree1Var var_C4 = ""
  loc_A5189D: LitVarStr var_94, "    </p></th>"
  loc_A518A2: PopAdLdVar
  loc_A518A3: FLdPr Me
  loc_A518A6: MemLdRfVar from_stack_1.htmFile
  loc_A518A9: LdPrVar
  loc_A518AB: LateMemCall
  loc_A518B1: LitVarStr var_94, "  </tr>"
  loc_A518B6: PopAdLdVar
  loc_A518B7: FLdPr Me
  loc_A518BA: MemLdRfVar from_stack_1.htmFile
  loc_A518BD: LdPrVar
  loc_A518BF: LateMemCall
  loc_A518C5: LitVarStr var_94, "</table>"
  loc_A518CA: PopAdLdVar
  loc_A518CB: FLdPr Me
  loc_A518CE: MemLdRfVar from_stack_1.htmFile
  loc_A518D1: LdPrVar
  loc_A518D3: LateMemCall
  loc_A518D9: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A518DE: PopAdLdVar
  loc_A518DF: FLdPr Me
  loc_A518E2: MemLdRfVar from_stack_1.htmFile
  loc_A518E5: LdPrVar
  loc_A518E7: LateMemCall
  loc_A518ED: ExitProcHresult
  loc_A518EE: CI4R8
End Function

Private Function Proc_155_27_9EF054() '9EF054
  'Data Table: 448E04
  loc_9EEF10: LitVarStr var_94, "</table>"
  loc_9EEF15: PopAdLdVar
  loc_9EEF16: FLdPr Me
  loc_9EEF19: MemLdRfVar from_stack_1.htmFile
  loc_9EEF1C: LdPrVar
  loc_9EEF1E: LateMemCall
  loc_9EEF24: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9EEF29: PopAdLdVar
  loc_9EEF2A: FLdPr Me
  loc_9EEF2D: MemLdRfVar from_stack_1.htmFile
  loc_9EEF30: LdPrVar
  loc_9EEF32: LateMemCall
  loc_9EEF38: LitVarStr var_94, "  <tr>"
  loc_9EEF3D: PopAdLdVar
  loc_9EEF3E: FLdPr Me
  loc_9EEF41: MemLdRfVar from_stack_1.htmFile
  loc_9EEF44: LdPrVar
  loc_9EEF46: LateMemCall
  loc_9EEF4C: LitVarStr var_94, "    <th scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9EEF51: PopAdLdVar
  loc_9EEF52: FLdPr Me
  loc_9EEF55: MemLdRfVar from_stack_1.htmFile
  loc_9EEF58: LdPrVar
  loc_9EEF5A: LateMemCall
  loc_9EEF60: LitVarStr var_94, "          <map name=""Map"">"
  loc_9EEF65: PopAdLdVar
  loc_9EEF66: FLdPr Me
  loc_9EEF69: MemLdRfVar from_stack_1.htmFile
  loc_9EEF6C: LdPrVar
  loc_9EEF6E: LateMemCall
  loc_9EEF74: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9EEF79: PopAdLdVar
  loc_9EEF7A: FLdPr Me
  loc_9EEF7D: MemLdRfVar from_stack_1.htmFile
  loc_9EEF80: LdPrVar
  loc_9EEF82: LateMemCall
  loc_9EEF88: LitVarStr var_94, "          </map>"
  loc_9EEF8D: PopAdLdVar
  loc_9EEF8E: FLdPr Me
  loc_9EEF91: MemLdRfVar from_stack_1.htmFile
  loc_9EEF94: LdPrVar
  loc_9EEF96: LateMemCall
  loc_9EEF9C: LitVarStr var_94, "    </div></th>"
  loc_9EEFA1: PopAdLdVar
  loc_9EEFA2: FLdPr Me
  loc_9EEFA5: MemLdRfVar from_stack_1.htmFile
  loc_9EEFA8: LdPrVar
  loc_9EEFAA: LateMemCall
  loc_9EEFB0: LitVarStr var_94, "  </tr>"
  loc_9EEFB5: PopAdLdVar
  loc_9EEFB6: FLdPr Me
  loc_9EEFB9: MemLdRfVar from_stack_1.htmFile
  loc_9EEFBC: LdPrVar
  loc_9EEFBE: LateMemCall
  loc_9EEFC4: LitVarStr var_94, "  <tr>"
  loc_9EEFC9: PopAdLdVar
  loc_9EEFCA: FLdPr Me
  loc_9EEFCD: MemLdRfVar from_stack_1.htmFile
  loc_9EEFD0: LdPrVar
  loc_9EEFD2: LateMemCall
  loc_9EEFD8: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9EEFDD: PopAdLdVar
  loc_9EEFDE: FLdPr Me
  loc_9EEFE1: MemLdRfVar from_stack_1.htmFile
  loc_9EEFE4: LdPrVar
  loc_9EEFE6: LateMemCall
  loc_9EEFEC: LitVarStr var_94, "  </tr>"
  loc_9EEFF1: PopAdLdVar
  loc_9EEFF2: FLdPr Me
  loc_9EEFF5: MemLdRfVar from_stack_1.htmFile
  loc_9EEFF8: LdPrVar
  loc_9EEFFA: LateMemCall
  loc_9EF000: LitVarStr var_94, "</table>"
  loc_9EF005: PopAdLdVar
  loc_9EF006: FLdPr Me
  loc_9EF009: MemLdRfVar from_stack_1.htmFile
  loc_9EF00C: LdPrVar
  loc_9EF00E: LateMemCall
  loc_9EF014: LitVarStr var_94, "<p class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</p>"
  loc_9EF019: PopAdLdVar
  loc_9EF01A: FLdPr Me
  loc_9EF01D: MemLdRfVar from_stack_1.htmFile
  loc_9EF020: LdPrVar
  loc_9EF022: LateMemCall
  loc_9EF028: LitVarStr var_94, "</body>"
  loc_9EF02D: PopAdLdVar
  loc_9EF02E: FLdPr Me
  loc_9EF031: MemLdRfVar from_stack_1.htmFile
  loc_9EF034: LdPrVar
  loc_9EF036: LateMemCall
  loc_9EF03C: LitVarStr var_94, "</html>"
  loc_9EF041: PopAdLdVar
  loc_9EF042: FLdPr Me
  loc_9EF045: MemLdRfVar from_stack_1.htmFile
  loc_9EF048: LdPrVar
  loc_9EF04A: LateMemCall
  loc_9EF050: ExitProcHresult
  loc_9EF051: SetLastSystemError
End Function
