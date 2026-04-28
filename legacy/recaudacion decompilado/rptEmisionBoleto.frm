VERSION 5.00
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptEmisionBoleto
  Caption = "Emisión de Boleto"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEmisionBoleto.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9396
  ClientHeight = 3912
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Enabled = 0   'False
    Interval = 8000
    Left = 8640
    Top = 1800
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 240
    Top = 240
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptEmisionBoleto.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3660
    Width = 9390
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptEmisionBoleto.frx":099C
  End
  Begin VB.CommandButton cmdSalir
    Left = 8520
    Top = 2280
    Width = 735
    Height = 615
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptEmisionBoleto.frx":0A1C
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEmisionBoleto.frx":0C6E
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 6360
    Top = 2040
    Width = 1815
    Height = 1095
    TabIndex = 10
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 6135
    Height = 1575
    TabIndex = 9
    Begin VB.ComboBox cboImpresoras
      Style = 2
      ForeColor = &HFF0000&
      Left = 120
      Top = 360
      Width = 5775
      Height = 315
      TabIndex = 17
      List = "rptEmisionBoleto.frx":0CD2
      ItemData = "rptEmisionBoleto.frx":0D46
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Seleccionada"
      Left = 1560
      Top = 840
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 840
      Width = 1335
      Height = 495
      TabIndex = 3
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8055
    Height = 1935
    TabIndex = 8
    Begin VB.TextBox DetaOficTxt
      BackColor = &H8000000F&
      Left = 2280
      Top = 1320
      Width = 3615
      Height = 315
      Enabled = 0   'False
      TabIndex = 18
      Locked = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 7,8
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox BancoChk
      Caption = "Paga en Banco"
      Left = 6480
      Top = 1320
      Width = 1455
      Height = 255
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin MSMask.MaskEdBox PeriBoleMsk
      Left = 2280
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 0
      OleObjectBlob = "rptEmisionBoleto.frx":0D59
    End
    Begin MSMask.MaskEdBox NumeBoleMsk
      Left = 2280
      Top = 840
      Width = 975
      Height = 315
      TabIndex = 1
      OleObjectBlob = "rptEmisionBoleto.frx":0DC1
    End
    Begin VB.Label Label1
      Caption = "Oficina:"
      Left = 1635
      Top = 1320
      Width = 540
      Height = 195
      TabIndex = 16
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Boleto Nº:"
      Left = 1455
      Top = 840
      Width = 720
      Height = 195
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Periodo:"
      Left = 1590
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 13
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8520
    Top = 2520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptEmisionBoleto.frx":0E31
  End
End

Attribute VB_Name = "rptEmisionBoleto"

Public DetaDeva As String
Public Imprimiendo As Boolean
Public bGenerado As Boolean
Public sImprimirApremioPendiente As String
Public sImprimirApremioInhibido As String
Public sImprimirApremioEmbargo As String

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_005C9BB8
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_3_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_4_005C9C04
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_5_005C9C3C
  bStruc(16) As Byte ' String fields: 3
End Type

Private Type UDT_6_005C9C70
  bStruc(36) As Byte ' String fields: 2
End Type

Private Type UDT_7_005C9CB8
  bStruc(192) As Byte ' String fields: 48
End Type


Private Sub cmdPrevia_Click() '9F4A48
  'Data Table: 4DE7C8
  loc_9F4A20: LitI2_Byte &HFF
  loc_9F4A22: FLdPr Me
  loc_9F4A25: MemStI2 Imprimiendo
  loc_9F4A28: ILdRf Me
  loc_9F4A2B: CastAd
  loc_9F4A2E: FStAdFunc var_88
  loc_9F4A31: FLdRfVar var_88
  loc_9F4A34: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9F4A39: FFree1Ad var_88
  loc_9F4A3C: LitI2_Byte 0
  loc_9F4A3E: FLdPr Me
  loc_9F4A41: MemStI2 Imprimiendo
  loc_9F4A44: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A16A20
  'Data Table: 4DE7C8
  loc_A169E8: FLdPr Me
  loc_A169EB: VCallAd Control_ID_statusBar
  loc_A169EE: FStAdFunc var_88
  loc_A169F1: FLdPr var_88
  loc_A169F4: LateIdLdVar var_98 DispID_1 0
  loc_A169FB: CStrVarTmp
  loc_A169FC: CVarStr var_A8
  loc_A169FF: PopAdLdVar
  loc_A16A00: FLdPr Me
  loc_A16A03: VCallAd Control_ID_statusBar
  loc_A16A06: FStAdFunc var_BC
  loc_A16A09: FLdPr var_BC
  loc_A16A0C: LateIdSt
  loc_A16A11: FFreeAd var_88 = ""
  loc_A16A18: FFreeVar var_98 = ""
  loc_A16A1F: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A979F8
  'Data Table: 4DE7C8
  loc_A97948: LitI2_Byte &HFF
  loc_A9794A: FLdPr Me
  loc_A9794D: MemStI2 Imprimiendo
  loc_A97950: FLdRfVar var_88
  loc_A97953: ImpAdLdRf MemVar_D9C5D8
  loc_A97956: NewIfNullPr Global
  loc_A97959:  = Global.Printer
  loc_A9795E: FLdPr var_88
  loc_A97961: LateIdLdVar var_98 DispID_28 1
  loc_A97968: CStrVarTmp
  loc_A97969: FStStrNoPop var_9C
  loc_A9796C: FLdPr Me
  loc_A9796F: MemStStrCopy
  loc_A97973: FFree1Str var_9C
  loc_A97976: FFree1Ad var_88
  loc_A97979: FFree1Var var_98 = ""
  loc_A9797C: FLdRfVar var_9C
  loc_A9797F: FLdPr Me
  loc_A97982: VCallAd Control_ID_cboImpresoras
  loc_A97985: FStAdFunc var_88
  loc_A97988: FLdPr var_88
  loc_A9798B:  = Me.Text
  loc_A97990: ILdRf var_9C
  loc_A97993: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A97998: FStStr var_A0
  loc_A9799B: FFreeStr var_9C = ""
  loc_A979A2: FFree1Ad var_88
  loc_A979A5: LitI2_Byte 0
  loc_A979A7: ILdRf Me
  loc_A979AA: CastAd
  loc_A979AD: FStAdFunc var_88
  loc_A979B0: FLdRfVar var_88
  loc_A979B3: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A979B8: FFree1Ad var_88
  loc_A979BB: FLdRfVar var_A2
  loc_A979BE: FLdPr Me
  loc_A979C1: VCallAd Control_ID_cmdPredeterminada
  loc_A979C4: FStAdFunc var_88
  loc_A979C7: FLdPr var_88
  loc_A979CA:  = Me.Enabled
  loc_A979CF: FLdI2 var_A2
  loc_A979D2: NotI4
  loc_A979D3: FFree1Ad var_88
  loc_A979D6: BranchF loc_A979E1
  loc_A979D9: ImpAdCallFPR4 DoEvents()
  loc_A979DE: Branch loc_A979BB
  loc_A979E1: LitI2_Byte &HFF
  loc_A979E3: FLdPr Me
  loc_A979E6: VCallAd Control_ID_Timer1
  loc_A979E9: FStAdFunc var_88
  loc_A979EC: FLdPr var_88
  loc_A979EF: Me.Enabled = from_stack_1b
  loc_A979F4: FFree1Ad var_88
  loc_A979F7: ExitProcHresult
End Sub

Private Sub Timer1_Timer() 'A31A28
  'Data Table: 4DE7C8
  loc_A319E0: LitI2_Byte 0
  loc_A319E2: FLdPr Me
  loc_A319E5: VCallAd Control_ID_Timer1
  loc_A319E8: FStAdFunc var_88
  loc_A319EB: FLdPr var_88
  loc_A319EE: Me.Enabled = from_stack_1b
  loc_A319F3: FFree1Ad var_88
  loc_A319F6: FLdPr Me
  loc_A319F9: MemLdStr global_156
  loc_A319FC: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A31A01: FStStr var_8C
  loc_A31A04: FFree1Str var_8C
  loc_A31A07: ILdRf Me
  loc_A31A0A: FStAdNoPop
  loc_A31A0E: ImpAdLdRf MemVar_D9C5D8
  loc_A31A11: NewIfNullPr Global
  loc_A31A14: Global.Unload from_stack_1
  loc_A31A19: FFree1Ad var_88
  loc_A31A1C: LitI2_Byte 0
  loc_A31A1E: FLdPr Me
  loc_A31A21: MemStI2 Imprimiendo
  loc_A31A24: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A03ECC
  'Data Table: 4DE7C8
  loc_A03E9C: LitVarStr var_94, "Cerrando..."
  loc_A03EA1: PopAdLdVar
  loc_A03EA2: FLdPr Me
  loc_A03EA5: VCallAd Control_ID_statusBar
  loc_A03EA8: FStAdFunc var_A8
  loc_A03EAB: FLdPr var_A8
  loc_A03EAE: LateIdSt
  loc_A03EB3: FFree1Ad var_A8
  loc_A03EB6: ILdRf Me
  loc_A03EB9: FStAdNoPop
  loc_A03EBD: ImpAdLdRf MemVar_D9C5D8
  loc_A03EC0: NewIfNullPr Global
  loc_A03EC3: Global.Unload from_stack_1
  loc_A03EC8: FFree1Ad var_A8
  loc_A03ECB: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E096C
  'Data Table: 4DE7C8
  loc_9E0950: LitI2_Byte 0
  loc_9E0952: PopTmpLdAd2 var_8A
  loc_9E0955: ILdRf Me
  loc_9E0958: CastAd
  loc_9E095B: FStAdFunc var_88
  loc_9E095E: FLdRfVar var_88
  loc_9E0961: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E0966: FFree1Ad var_88
  loc_9E0969: ExitProcHresult
End Sub

Private Sub NumeBoleMsk_UnknownEvent_0 '9C7AA8
  'Data Table: 4DE7C8
  loc_9C7A94: FLdPr Me
  loc_9C7A97: VCallAd Control_ID_NumeBoleMsk
  loc_9C7A9A: CVarAd
  loc_9C7A9E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7AA3: FFree1Var var_94 = ""
  loc_9C7AA6: ExitProcHresult
End Sub

Private Function NumeBoleMsk_UnknownEvent_8(arg_C) 'A6FFF0
  'Data Table: 4DE7C8
  loc_A6FF88: FLdPr Me
  loc_A6FF8B: VCallAd Control_ID_NumeBoleMsk
  loc_A6FF8E: FStAdFunc var_88
  loc_A6FF91: FLdPr var_88
  loc_A6FF94: LateIdLdVar var_98 DispID_22 0
  loc_A6FF9B: PopAd
  loc_A6FF9D: LitI2_Byte 0
  loc_A6FF9F: LitI2_Byte 0
  loc_A6FFA1: FLdRfVar var_98
  loc_A6FFA4: CStrVarTmp
  loc_A6FFA5: FStStrNoPop var_9C
  loc_A6FFA8: LitStr "Número de boleto"
  loc_A6FFAB: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A6FFB0: FStStrNoPop var_A0
  loc_A6FFB3: FLdPr Me
  loc_A6FFB6: MemStStrCopy
  loc_A6FFBA: FFreeStr var_9C = ""
  loc_A6FFC1: FFree1Ad var_88
  loc_A6FFC4: FFree1Var var_98 = ""
  loc_A6FFC7: FLdPr Me
  loc_A6FFCA: VCallAd Control_ID_NumeBoleMsk
  loc_A6FFCD: FStAdFuncNoPop
  loc_A6FFD0: CastAd
  loc_A6FFD3: FStAdFunc var_A4
  loc_A6FFD6: FLdRfVar var_A4
  loc_A6FFD9: FLdPr Me
  loc_A6FFDC: MemLdStr global_152
  loc_A6FFDF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6FFE4: IStI2 arg_C
  loc_A6FFE7: FFreeAd var_88 = ""
  loc_A6FFEE: ExitProcHresult
End Function

Private Sub Form_Load() 'AB14D0
  'Data Table: 4DE7C8
  loc_AB13FC: ILdRf Me
  loc_AB13FF: CastAd
  loc_AB1402: FStAdFunc var_88
  loc_AB1405: FLdRfVar var_88
  loc_AB1408: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AB140D: FFree1Ad var_88
  loc_AB1410: FLdPr Me
  loc_AB1413: VCallAd Control_ID_cboImpresoras
  loc_AB1416: FStAdFunc var_88
  loc_AB1419: FLdPr var_88
  loc_AB141C: Me.Clear
  loc_AB1421: FFree1Ad var_88
  loc_AB1424: FLdRfVar var_88
  loc_AB1427: ImpAdLdRf MemVar_D9C5D8
  loc_AB142A: NewIfNullPr Global
  loc_AB142D:  = Global.Printers
  loc_AB1432: FLdZeroAd var_88
  loc_AB1435: FStAdFuncNoPop
  loc_AB1438: FLdRfVar var_8C
  loc_AB143B: ForEachCollObj
  loc_AB1443: LitVar_Missing var_BC
  loc_AB1446: PopAdLdVar
  loc_AB1447: FLdPr var_8C
  loc_AB144A: LateIdLdVar var_A8 DispID_28 1
  loc_AB1451: CStrVarTmp
  loc_AB1452: FStStrNoPop var_AC
  loc_AB1455: FLdPr Me
  loc_AB1458: VCallAd Control_ID_cboImpresoras
  loc_AB145B: FStAdFunc var_88
  loc_AB145E: FLdPr var_88
  loc_AB1461: Me.AddItem from_stack_1, from_stack_2
  loc_AB1466: FFree1Str var_AC
  loc_AB1469: FFree1Ad var_88
  loc_AB146C: FFree1Var var_A8 = ""
  loc_AB146F: FLdPr var_8C
  loc_AB1472: LateIdLdVar var_A8 DispID_28 1
  loc_AB1479: CStrVarTmp
  loc_AB147A: FStStrNoPop var_AC
  loc_AB147D: ImpAdLdI4 MemVar_D93CA4
  loc_AB1480: EqStr
  loc_AB1482: FFree1Str var_AC
  loc_AB1485: FFree1Var var_A8 = ""
  loc_AB1488: BranchF loc_AB14A8
  loc_AB148B: FLdRfVar var_BE
  loc_AB148E: FLdPr Me
  loc_AB1491: VCallAd Control_ID_cboImpresoras
  loc_AB1494: FStAdFunc var_88
  loc_AB1497: FLdPr var_88
  loc_AB149A:  = Me.NewIndex
  loc_AB149F: FLdI2 var_BE
  loc_AB14A2: FStI2 var_8E
  loc_AB14A5: FFree1Ad var_88
  loc_AB14A8: FLdRfVar var_8C
  loc_AB14AB: NextEachCollObj
  loc_AB14B3: FLdI2 var_8E
  loc_AB14B6: FLdPr Me
  loc_AB14B9: VCallAd Control_ID_cboImpresoras
  loc_AB14BC: FStAdFunc var_88
  loc_AB14BF: FLdPr var_88
  loc_AB14C2: Me.ListIndex = from_stack_1
  loc_AB14C7: FFree1Ad var_88
  loc_AB14CA: Call cmdNueva_Click()
  loc_AB14CF: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CAB4C
  'Data Table: 4DE7C8
  loc_9CAB34: FLdPr Me
  loc_9CAB37: VCallAd Control_ID_wbbReporte
  loc_9CAB3A: FStAdFunc var_88
  loc_9CAB3D: FLdRfVar var_88
  loc_9CAB40: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CAB45: FFree1Ad var_88
  loc_9CAB48: ExitProcHresult
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) '9F34B8
  'Data Table: 4DE7C8
  loc_9F3490: FLdRfVar var_8A
  loc_9F3493: FLdPr Me
  loc_9F3496: VCallAd Control_ID_cmdPredeterminada
  loc_9F3499: FStAdFunc var_88
  loc_9F349C: FLdPr var_88
  loc_9F349F:  = Me.Enabled
  loc_9F34A4: FLdI2 var_8A
  loc_9F34A7: NotI4
  loc_9F34A8: FFree1Ad var_88
  loc_9F34AB: BranchF loc_9F34B6
  loc_9F34AE: ImpAdCallFPR4 DoEvents()
  loc_9F34B3: Branch loc_9F3490
  loc_9F34B6: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A9393C
  'Data Table: 4DE7C8
  loc_A93888: LitI2_Byte 0
  loc_A9388A: FLdPr Me
  loc_A9388D: MemStI2 bGenerado
  loc_A93890: LitVarStr var_94, vbNullString
  loc_A93895: PopAdLdVar
  loc_A93896: FLdPr Me
  loc_A93899: VCallAd Control_ID_PeriBoleMsk
  loc_A9389C: FStAdFunc var_A8
  loc_A9389F: FLdPr var_A8
  loc_A938A2: LateIdSt
  loc_A938A7: FFree1Ad var_A8
  loc_A938AA: LitVarStr var_94, vbNullString
  loc_A938AF: PopAdLdVar
  loc_A938B0: FLdPr Me
  loc_A938B3: VCallAd Control_ID_NumeBoleMsk
  loc_A938B6: FStAdFunc var_A8
  loc_A938B9: FLdPr var_A8
  loc_A938BC: LateIdSt
  loc_A938C1: FFree1Ad var_A8
  loc_A938C4: LitStr vbNullString
  loc_A938C7: FLdPr Me
  loc_A938CA: VCallAd Control_ID_DetaOficTxt
  loc_A938CD: FStAdFunc var_A8
  loc_A938D0: FLdPr var_A8
  loc_A938D3: Me.Text = from_stack_1
  loc_A938D8: FFree1Ad var_A8
  loc_A938DB: LitI4 0
  loc_A938E0: CI2I4
  loc_A938E1: FLdPr Me
  loc_A938E4: VCallAd Control_ID_BancoChk
  loc_A938E7: FStAdFunc var_A8
  loc_A938EA: FLdPr var_A8
  loc_A938ED: Me.Value = from_stack_1
  loc_A938F2: FFree1Ad var_A8
  loc_A938F5: LitStr "Emisión de Boleto"
  loc_A938F8: FLdPr Me
  loc_A938FB: Me.Caption = from_stack_1
  loc_A93900: LitStr vbNullString
  loc_A93903: FLdPr Me
  loc_A93906: Me.Tag = from_stack_1
  loc_A9390B: LitI2_Byte 0
  loc_A9390D: ILdRf Me
  loc_A93910: CastAd
  loc_A93913: FStAdFunc var_A8
  loc_A93916: FLdRfVar var_A8
  loc_A93919: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A9391E: FFree1Ad var_A8
  loc_A93921: Call HabilitarCriterio()
  loc_A93926: ILdRf Me
  loc_A93929: CastAd
  loc_A9392C: FStAdFunc var_A8
  loc_A9392F: FLdRfVar var_A8
  loc_A93932: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A93937: FFree1Ad var_A8
  loc_A9393A: ExitProcHresult
End Sub

Private Sub PeriBoleMsk_UnknownEvent_0 '9C5DF8
  'Data Table: 4DE7C8
  loc_9C5DE4: FLdPr Me
  loc_9C5DE7: VCallAd Control_ID_PeriBoleMsk
  loc_9C5DEA: CVarAd
  loc_9C5DEE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5DF3: FFree1Var var_94 = ""
  loc_9C5DF6: ExitProcHresult
End Sub

Private Function PeriBoleMsk_UnknownEvent_8(arg_C) 'A7009C
  'Data Table: 4DE7C8
  loc_A70034: FLdPr Me
  loc_A70037: VCallAd Control_ID_PeriBoleMsk
  loc_A7003A: FStAdFunc var_88
  loc_A7003D: FLdPr var_88
  loc_A70040: LateIdLdVar var_98 DispID_22 0
  loc_A70047: PopAd
  loc_A70049: LitI2_Byte 0
  loc_A7004B: FLdRfVar var_98
  loc_A7004E: CStrVarTmp
  loc_A7004F: FStStrNoPop var_9C
  loc_A70052: LitStr "Periodo"
  loc_A70055: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A7005A: FStStrNoPop var_A0
  loc_A7005D: FLdPr Me
  loc_A70060: MemStStrCopy
  loc_A70064: FFreeStr var_9C = ""
  loc_A7006B: FFree1Ad var_88
  loc_A7006E: FFree1Var var_98 = ""
  loc_A70071: FLdPr Me
  loc_A70074: VCallAd Control_ID_PeriBoleMsk
  loc_A70077: FStAdFuncNoPop
  loc_A7007A: CastAd
  loc_A7007D: FStAdFunc var_A4
  loc_A70080: FLdRfVar var_A4
  loc_A70083: FLdPr Me
  loc_A70086: MemLdStr global_152
  loc_A70089: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A7008E: IStI2 arg_C
  loc_A70091: FFreeAd var_88 = ""
  loc_A70098: ExitProcHresult
End Function

Public Function DetaDevaGet() '4DFAF4
  DetaDevaGet = DetaDeva
End Function

Public Sub DetaDevaPut(Value) '4DFB03
  DetaDeva = Value
End Sub

Public Function ImprimiendoGet() '4DFB12
  ImprimiendoGet = Imprimiendo
End Function

Public Sub ImprimiendoPut(Value) '4DFB21
  Imprimiendo = Value
End Sub

Public Function bGeneradoGet() '4DFB30
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4DFB3F
  bGenerado = Value
End Sub

Public Function sImprimirApremioPendienteGet() '4DFB4E
  sImprimirApremioPendienteGet = sImprimirApremioPendiente
End Function

Public Sub sImprimirApremioPendientePut(Value) '4DFB5D
  sImprimirApremioPendiente = Value
End Sub

Public Function sImprimirApremioInhibidoGet() '4DFB6C
  sImprimirApremioInhibidoGet = sImprimirApremioInhibido
End Function

Public Sub sImprimirApremioInhibidoPut(Value) '4DFB7B
  sImprimirApremioInhibido = Value
End Sub

Public Function sImprimirApremioEmbargoGet() '4DFB8A
  sImprimirApremioEmbargoGet = sImprimirApremioEmbargo
End Function

Public Sub sImprimirApremioEmbargoPut(Value) '4DFB99
  sImprimirApremioEmbargo = Value
End Sub

Public Sub HabilitarCriterio() 'A5F4F8
  'Data Table: 4DE7C8
  loc_A5F4A4: LitI4 0
  loc_A5F4A9: LitI4 2
  loc_A5F4AE: FLdRfVar var_88
  loc_A5F4B1: Redim
  loc_A5F4BB: FLdPr Me
  loc_A5F4BE: VCallAd Control_ID_PeriBoleMsk
  loc_A5F4C1: CVarAd
  loc_A5F4C5: ParmAry1St
  loc_A5F4CB: FLdPr Me
  loc_A5F4CE: VCallAd Control_ID_NumeBoleMsk
  loc_A5F4D1: CVarAd
  loc_A5F4D5: ParmAry1St
  loc_A5F4DB: FLdPr Me
  loc_A5F4DE: VCallAd Control_ID_BancoChk
  loc_A5F4E1: CVarAd
  loc_A5F4E5: ParmAry1St
  loc_A5F4EB: FLdRfVar var_88
  loc_A5F4EE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5F4F3: FLdRfVar var_88
  loc_A5F4F6: Erase
  loc_A5F4F7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'CC9DA0
  'Data Table: 4DE7C8
  loc_CC7748: LitI2_Byte 0
  loc_CC774A: PopTmpLdAd2 var_96
  loc_CC774D: from_stack_2v = PeriBoleMsk_UnknownEvent_8(from_stack_1v)
  loc_CC7752: FLdPr Me
  loc_CC7755: MemLdStr global_152
  loc_CC7758: LitStr vbNullString
  loc_CC775B: NeStr
  loc_CC775D: BranchF loc_CC7763
  loc_CC7760: Branch loc_CC9D74
  loc_CC7763: LitI2_Byte 0
  loc_CC7765: PopTmpLdAd2 var_96
  loc_CC7768: from_stack_2v = NumeBoleMsk_UnknownEvent_8(from_stack_1v)
  loc_CC776D: FLdPr Me
  loc_CC7770: MemLdStr global_152
  loc_CC7773: LitStr vbNullString
  loc_CC7776: NeStr
  loc_CC7778: BranchF loc_CC777E
  loc_CC777B: Branch loc_CC9D74
  loc_CC777E: FLdPr Me
  loc_CC7781: MemLdI2 bGenerado
  loc_CC7784: BranchF loc_CC7788
  loc_CC7787: ExitProcHresult
  loc_CC7788: LitVarStr var_A8, "Generando reporte..."
  loc_CC778D: PopAdLdVar
  loc_CC778E: FLdPr Me
  loc_CC7791: VCallAd Control_ID_statusBar
  loc_CC7794: FStAdFunc var_BC
  loc_CC7797: FLdPr var_BC
  loc_CC779A: LateIdSt
  loc_CC779F: FFree1Ad var_BC
  loc_CC77A2: LitI4 &HB
  loc_CC77A7: CI2I4
  loc_CC77A8: FLdPr Me
  loc_CC77AB: Me.MousePointer = from_stack_1
  loc_CC77B0: Call Proc_163_29_AC2B14()
  loc_CC77B5: FLdPr Me
  loc_CC77B8: MemLdUI1 global_120
  loc_CC77BC: CI2UI1
  loc_CC77BE: LitI2_Byte 0
  loc_CC77C0: EqI2
  loc_CC77C1: BranchF loc_CC77CF
  loc_CC77C4: LitStr "No hay se encuentra el boleto. Consulte con el administrador"
  loc_CC77C7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC77CC: Branch loc_CC9D74
  loc_CC77CF: FLdPr Me
  loc_CC77D2: MemLdUI1 global_120
  loc_CC77D6: FStUI1 var_BE
  loc_CC77DA: FLdUI1
  loc_CC77DE: LitI2_Byte 1
  loc_CC77E0: CUI1I2
  loc_CC77E2: EqI2
  loc_CC77E3: BranchF loc_CC77E9
  loc_CC77E6: Branch loc_CC792A
  loc_CC77E9: FLdUI1
  loc_CC77ED: LitI2_Byte 2
  loc_CC77EF: CUI1I2
  loc_CC77F1: EqI2
  loc_CC77F2: BranchF loc_CC782B
  loc_CC77F5: LitStr " IFNULL(domipostal.calle,'') as DecaPost, IFNULL(domipostal.NumeCalle,'') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost, "
  loc_CC77F8: LitStr " IFNULL(concat(domipostal.Monoblock,IF(domipostal.Dpto<>'',' - ',''),domipostal.Dpto,IF(domipostal.Planta<>'',' - ',''),domipostal.Planta,IF(domipostal.NroLocal<>'',' - ',''), domipostal.NroLocal),'')  as UbicPost, IFNULL(domipostal.Localidad,'') as DeloPost, IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_CC77FB: ConcatStr
  loc_CC77FC: FStStrNoPop var_C4
  loc_CC77FF: LitStr " IFNULL(domireal.calle,'') as DetaCall, IFNULL(cast(domireal.NumeCalle as UNSIGNED),'') as NucaCome,  IFNULL(concat(domireal.Monoblock,IF(domireal.Dpto <>'',' - ',''),domireal.Dpto,IF(domireal.Planta<>'',' - ',''),domireal.Planta,IF(domireal.NroLocal<>'',' - ',''), domireal.NroLocal),'') UbicCome,"
  loc_CC7802: ConcatStr
  loc_CC7803: FStStrNoPop var_C8
  loc_CC7806: LitStr " IFNULL(domireal.CodiBarrio,'') as CodiBarr, IFNULL(domireal.barrio,'') as DetaBarr, IFNULL(domireal.Manzana,'') as MansBole, IFNULL(domireal.Casa,'') as CasaBole, IFNULL(concat(domireal.Localidad,' - C.P: ', domireal.CodPostal),'') as DetaLoca,"
  loc_CC7809: ConcatStr
  loc_CC780A: FStStr var_88
  loc_CC780D: FFreeStr var_C4 = ""
  loc_CC7814: LitStr " LEFT JOIN comercio ON comercio.CodiCome = boleto.CuenCtct"
  loc_CC7817: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 2 AND domipostal.CodiCome = comercio.CodiCome AND domipostal.Tipo = 'Postal'"
  loc_CC781A: ConcatStr
  loc_CC781B: FStStrNoPop var_C4
  loc_CC781E: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 2 AND domireal.CodiCome = comercio.CodiCome AND domireal.Tipo = 'Comercial'"
  loc_CC7821: ConcatStr
  loc_CC7822: FStStr var_8C
  loc_CC7825: FFree1Str var_C4
  loc_CC7828: Branch loc_CC792A
  loc_CC782B: FLdUI1
  loc_CC782F: LitI2_Byte 3
  loc_CC7831: CUI1I2
  loc_CC7833: EqI2
  loc_CC7834: BranchF loc_CC7846
  loc_CC7837: LitStr " p1.DecrPers as DecaPost, p1.NurePers as NumePost, p1.DebrPers as DebaPost, p1.MarePers as ManzPost, p1.CarePers as CasaPost, p1.UbrePers as UbicPost, p1.DelrPers as DeloPost, p1.CoprPers as CopoPost, "
  loc_CC783A: FStStrCopy var_88
  loc_CC783D: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = boleto.CuenCtct"
  loc_CC7840: FStStrCopy var_8C
  loc_CC7843: Branch loc_CC792A
  loc_CC7846: FLdUI1
  loc_CC784A: LitI2_Byte 4
  loc_CC784C: CUI1I2
  loc_CC784E: EqI2
  loc_CC784F: BranchF loc_CC7879
  loc_CC7852: LitStr " DetaTise, Nom1Difu NumeDifu, Nom2Difu FilaDifu, Nom3Difu NoseDifu, Nom4Difu SeccDifu, Nom5Difu, DetaDedi, FeveDifu, DetaCeme,"
  loc_CC7855: LitStr " IFNULL(domipostal.calle,'') as DecaPost, IFNULL(domipostal.NumeCalle,'') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost,"
  loc_CC7858: ConcatStr
  loc_CC7859: FStStrNoPop var_C4
  loc_CC785C: LitStr " IFNULL(concat(domipostal.Monoblock,IF(domipostal.Dpto<>'',' - ',''),domipostal.Dpto,IF(domipostal.Planta<>'',' - ',''),domipostal.Planta,IF(domipostal.NroLocal<>'',' - ',''), domipostal.NroLocal),'') as UbicPost, IFNULL(domipostal.Localidad,'') as DeloPost, IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_CC785F: ConcatStr
  loc_CC7860: FStStr var_88
  loc_CC7863: FFree1Str var_C4
  loc_CC7866: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = boleto.CuenCtct LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu AND detadifu.BajaFeho IS NULL AND detadifu.FetrDedi IS NULL LEFT JOIN cementerio ON cementerio.CodiCeme = difunto.CodiCeme"
  loc_CC7869: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 4 AND domipostal.CodiCome = difunto.CodiDifu AND domipostal.Tipo = 'Postal'"
  loc_CC786C: ConcatStr
  loc_CC786D: FStStr var_8C
  loc_CC7870: LitStr " ORDER BY NumeDedi LIMIT 1"
  loc_CC7873: FStStrCopy var_90
  loc_CC7876: Branch loc_CC792A
  loc_CC7879: FLdUI1
  loc_CC787D: LitI2_Byte 5
  loc_CC787F: CUI1I2
  loc_CC7881: EqI2
  loc_CC7882: BranchF loc_CC7894
  loc_CC7885: LitStr " p1.DecrPers as DecaPost, p1.NurePers as NumePost, p1.DebrPers as DebaPost, p1.MarePers as ManzPost, p1.CarePers as CasaPost, p1.UbrePers as UbicPost, p1.DelrPers as DeloPost, p1.CoprPers as CopoPost, "
  loc_CC7888: FStStrCopy var_88
  loc_CC788B: LitStr " LEFT JOIN transito ON transito.CodiTran = boleto.CuenCtct"
  loc_CC788E: FStStrCopy var_8C
  loc_CC7891: Branch loc_CC792A
  loc_CC7894: FLdUI1
  loc_CC7898: LitI2_Byte 6
  loc_CC789A: CUI1I2
  loc_CC789C: EqI2
  loc_CC789D: BranchF loc_CC78D6
  loc_CC78A0: LitStr " IFNULL(domipostal.calle,'') as DecaPost, IFNULL(domipostal.NumeCalle,'') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost, "
  loc_CC78A3: LitStr " IFNULL(concat(domipostal.Monoblock,IF(domipostal.Dpto<>'',' - ',''),domipostal.Dpto,IF(domipostal.Planta<>'',' - ',''),domipostal.Planta,IF(domipostal.NroLocal<>'',' - ',''), domipostal.NroLocal),'')  as UbicPost, IFNULL(domipostal.Localidad,'') as DeloPost, IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_CC78A6: ConcatStr
  loc_CC78A7: FStStrNoPop var_C4
  loc_CC78AA: LitStr " IFNULL(domireal.calle,'') as DetaCall, IFNULL(cast(domireal.NumeCalle as UNSIGNED),'') as NucaCome,  IFNULL(concat(domireal.Monoblock,IF(domireal.Dpto <>'',' - ',''),domireal.Dpto,IF(domireal.Planta<>'',' - ',''),domireal.Planta,IF(domireal.NroLocal<>'',' - ',''), domireal.NroLocal),'') UbicCome,"
  loc_CC78AD: ConcatStr
  loc_CC78AE: FStStrNoPop var_C8
  loc_CC78B1: LitStr " IFNULL(domireal.CodiBarrio,'') as CodiBarr, IFNULL(domireal.barrio,'') as DetaBarr, IFNULL(domireal.Manzana,'') as MansBole, IFNULL(domireal.Casa,'') as CasaBole, IFNULL(concat(domireal.Localidad,' - C.P: ', domireal.CodPostal),'') as DetaLoca,"
  loc_CC78B4: ConcatStr
  loc_CC78B5: FStStr var_88
  loc_CC78B8: FFreeStr var_C4 = ""
  loc_CC78BF: LitStr " LEFT JOIN publicidad ON publicidad.CodiCome = boleto.CuenCtct"
  loc_CC78C2: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 6 AND domipostal.CodiCome = publicidad.CodiCome AND domipostal.Tipo = 'Postal'"
  loc_CC78C5: ConcatStr
  loc_CC78C6: FStStrNoPop var_C4
  loc_CC78C9: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 6 AND domireal.CodiCome = publicidad.CodiCome AND domireal.Tipo = 'Comercial'"
  loc_CC78CC: ConcatStr
  loc_CC78CD: FStStr var_8C
  loc_CC78D0: FFree1Str var_C4
  loc_CC78D3: Branch loc_CC792A
  loc_CC78D6: FLdUI1
  loc_CC78DA: LitI2_Byte 7
  loc_CC78DC: CUI1I2
  loc_CC78DE: EqI2
  loc_CC78DF: BranchF loc_CC7918
  loc_CC78E2: LitStr " IFNULL(domipostal.calle,'') as DecaPost, IFNULL(domipostal.NumeCalle,'') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost, "
  loc_CC78E5: LitStr " IFNULL(concat(domipostal.Monoblock,IF(domipostal.Dpto<>'',' - ',''),domipostal.Dpto,IF(domipostal.Planta<>'',' - ',''),domipostal.Planta,IF(domipostal.NroLocal<>'',' - ',''), domipostal.NroLocal),'')  as UbicPost, IFNULL(domipostal.Localidad,'') as DeloPost, IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_CC78E8: ConcatStr
  loc_CC78E9: FStStrNoPop var_C4
  loc_CC78EC: LitStr " IFNULL(domireal.calle,'') as DetaCall, IFNULL(cast(domireal.NumeCalle as UNSIGNED),'') as NucaCome,  IFNULL(concat(domireal.Monoblock,IF(domireal.Dpto <>'',' - ',''),domireal.Dpto,IF(domireal.Planta<>'',' - ',''),domireal.Planta,IF(domireal.NroLocal<>'',' - ',''), domireal.NroLocal),'') UbicCome,"
  loc_CC78EF: ConcatStr
  loc_CC78F0: FStStrNoPop var_C8
  loc_CC78F3: LitStr " IFNULL(domireal.CodiBarrio,'') as CodiBarr, IFNULL(domireal.barrio,'') as DetaBarr, IFNULL(domireal.Manzana,'') as MansBole, IFNULL(domireal.Casa,'') as CasaBole, IFNULL(concat(domireal.Localidad,' - C.P: ', domireal.CodPostal),'') as DetaLoca,"
  loc_CC78F6: ConcatStr
  loc_CC78F7: FStStr var_88
  loc_CC78FA: FFreeStr var_C4 = ""
  loc_CC7901: LitStr " LEFT JOIN antena ON antena.CodiCome = boleto.CuenCtct"
  loc_CC7904: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 7 AND domipostal.CodiCome = antena.CodiCome AND domipostal.Tipo = 'Postal'"
  loc_CC7907: ConcatStr
  loc_CC7908: FStStrNoPop var_C4
  loc_CC790B: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 7 AND domireal.CodiCome = antena.CodiCome AND domireal.Tipo = 'Comercial'"
  loc_CC790E: ConcatStr
  loc_CC790F: FStStr var_8C
  loc_CC7912: FFree1Str var_C4
  loc_CC7915: Branch loc_CC792A
  loc_CC7918: FLdUI1
  loc_CC791C: LitI2_Byte 8
  loc_CC791E: CUI1I2
  loc_CC7920: EqI2
  loc_CC7921: BranchF loc_CC792A
  loc_CC7924: LitStr " IFNULL(p1.DecrPers,'') AS DecaPost, IFNULL(p1.NurePers,'') AS NumePost, IFNULL(p1.DebrPers,'') AS DebaPost, IFNULL(p1.MarePers,'') AS ManzPost, IFNULL(p1.CarePers,'') AS CasaPost, IFNULL(p1.UbrePers,'') AS UbicPost, IFNULL(p1.DelrPers,'') AS DeloPost, IFNULL(p1.CoprPers,'') AS CopoPost, ExpeBole, boleto.FealBole, "
  loc_CC7927: FStStrCopy var_88
  loc_CC792A: FLdPr Me
  loc_CC792D: MemLdRfVar from_stack_1.global_92
  loc_CC7930: NewIfNullAd
  loc_CC7933: FStAd var_CC 
  loc_CC7937: FLdPr Me
  loc_CC793A: MemLdUI1 global_120
  loc_CC793E: CI2UI1
  loc_CC7940: LitI2_Byte 1
  loc_CC7942: EqI2
  loc_CC7943: BranchF loc_CC79D0
  loc_CC7946: LitStr "SELECT ObseBole, boleto.CuenCtct, "
  loc_CC7949: LitStr " boleto.CodiUsua , boleto.CodiFapa, boleto.CuotDefa, boleto.CodiOfic, boleto.FeveBole, boleto.TotaBole, ApreBole"
  loc_CC794C: ConcatStr
  loc_CC794D: FStStrNoPop var_C4
  loc_CC7950: LitStr " FROM boleto"
  loc_CC7953: ConcatStr
  loc_CC7954: FStStrNoPop var_C8
  loc_CC7957: LitStr " WHERE boleto.PeriBole = '"
  loc_CC795A: ConcatStr
  loc_CC795B: FStStrNoPop var_E0
  loc_CC795E: FLdPr Me
  loc_CC7961: VCallAd Control_ID_PeriBoleMsk
  loc_CC7964: FStAdFunc var_BC
  loc_CC7967: FLdPr var_BC
  loc_CC796A: LateIdLdVar var_DC DispID_0 0
  loc_CC7971: CStrVarTmp
  loc_CC7972: FStStrNoPop var_E4
  loc_CC7975: ConcatStr
  loc_CC7976: FStStrNoPop var_E8
  loc_CC7979: LitStr "' AND boleto.NumeBole = '"
  loc_CC797C: ConcatStr
  loc_CC797D: FStStrNoPop var_100
  loc_CC7980: FLdPr Me
  loc_CC7983: VCallAd Control_ID_NumeBoleMsk
  loc_CC7986: FStAdFunc var_EC
  loc_CC7989: FLdPr var_EC
  loc_CC798C: LateIdLdVar var_FC DispID_0 0
  loc_CC7993: CStrVarTmp
  loc_CC7994: FStStrNoPop var_104
  loc_CC7997: ConcatStr
  loc_CC7998: FStStrNoPop var_108
  loc_CC799B: LitStr "'"
  loc_CC799E: ConcatStr
  loc_CC799F: FStStrNoPop var_10C
  loc_CC79A2: FLdPr var_CC
  loc_CC79A5: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CC79AA: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_100 = "": var_104 = "": var_108 = ""
  loc_CC79BF: FFreeAd var_BC = ""
  loc_CC79C6: FFreeVar var_DC = ""
  loc_CC79CD: Branch loc_CC7A8D
  loc_CC79D0: LitStr "SELECT"
  loc_CC79D3: LitStr " boleto.CucuPers, ifnull(p1.DetaPers,'') as DetaPers, ObseBole, boleto.CuenCtct, ifnull(p2.DetaPers,'') as Vinculo,"
  loc_CC79D6: ConcatStr
  loc_CC79D7: FStStrNoPop var_C4
  loc_CC79DA: ILdRf var_88
  loc_CC79DD: ConcatStr
  loc_CC79DE: FStStrNoPop var_C8
  loc_CC79E1: LitStr " boleto.CodiUsua , boleto.CodiFapa, boleto.CuotDefa, boleto.CodiOfic, boleto.FeveBole, boleto.TotaBole, ApreBole"
  loc_CC79E4: ConcatStr
  loc_CC79E5: FStStrNoPop var_E0
  loc_CC79E8: LitStr " FROM boleto"
  loc_CC79EB: ConcatStr
  loc_CC79EC: FStStrNoPop var_E4
  loc_CC79EF: LitStr " LEFT JOIN infogov.persona as p1 ON p1.CucuPers = boleto.CucuPers"
  loc_CC79F2: ConcatStr
  loc_CC79F3: FStStrNoPop var_E8
  loc_CC79F6: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = boleto.CodiOfic AND relacion.CuenCtct = boleto.CuenCtct AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_CC79F9: ConcatStr
  loc_CC79FA: FStStrNoPop var_100
  loc_CC79FD: LitStr " LEFT JOIN infogov.persona as p2 ON p2.CucuPers = relacion.CucuPers"
  loc_CC7A00: ConcatStr
  loc_CC7A01: FStStrNoPop var_104
  loc_CC7A04: ILdRf var_8C
  loc_CC7A07: ConcatStr
  loc_CC7A08: FStStrNoPop var_108
  loc_CC7A0B: LitStr " WHERE boleto.PeriBole = '"
  loc_CC7A0E: ConcatStr
  loc_CC7A0F: FStStrNoPop var_10C
  loc_CC7A12: FLdPr Me
  loc_CC7A15: VCallAd Control_ID_PeriBoleMsk
  loc_CC7A18: FStAdFunc var_BC
  loc_CC7A1B: FLdPr var_BC
  loc_CC7A1E: LateIdLdVar var_DC DispID_0 0
  loc_CC7A25: CStrVarTmp
  loc_CC7A26: FStStrNoPop var_110
  loc_CC7A29: ConcatStr
  loc_CC7A2A: FStStrNoPop var_114
  loc_CC7A2D: LitStr "' AND boleto.NumeBole = '"
  loc_CC7A30: ConcatStr
  loc_CC7A31: FStStrNoPop var_118
  loc_CC7A34: FLdPr Me
  loc_CC7A37: VCallAd Control_ID_NumeBoleMsk
  loc_CC7A3A: FStAdFunc var_EC
  loc_CC7A3D: FLdPr var_EC
  loc_CC7A40: LateIdLdVar var_FC DispID_0 0
  loc_CC7A47: CStrVarTmp
  loc_CC7A48: FStStrNoPop var_11C
  loc_CC7A4B: ConcatStr
  loc_CC7A4C: FStStrNoPop var_120
  loc_CC7A4F: LitStr "'"
  loc_CC7A52: ConcatStr
  loc_CC7A53: FStStrNoPop var_124
  loc_CC7A56: FLdPr var_CC
  loc_CC7A59: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CC7A5E: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_CC7A7F: FFreeAd var_BC = ""
  loc_CC7A86: FFreeVar var_DC = ""
  loc_CC7A8D: FLdRfVar var_128
  loc_CC7A90: FLdPr var_CC
  loc_CC7A93: from_stack_1 = clsboleto.RecordCount
  loc_CC7A98: ILdRf var_128
  loc_CC7A9B: LitI4 0
  loc_CC7AA0: EqI4
  loc_CC7AA1: BranchF loc_CC7AAF
  loc_CC7AA4: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CC7AA7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC7AAC: Branch loc_CC9D74
  loc_CC7AAF: LitI4 0
  loc_CC7AB4: LitI4 1
  loc_CC7AB9: FLdPr Me
  loc_CC7ABC: MemLdRfVar from_stack_1.global_116
  loc_CC7ABF: Redim
  loc_CC7AC9: LitI4 0
  loc_CC7ACE: LitI4 1
  loc_CC7AD3: FLdPr Me
  loc_CC7AD6: MemLdRfVar from_stack_1.global_136
  loc_CC7AD9: Redim
  loc_CC7AE3: LitI4 0
  loc_CC7AE8: LitI4 1
  loc_CC7AED: FLdPr Me
  loc_CC7AF0: MemLdRfVar from_stack_1.global_140
  loc_CC7AF3: Redim
  loc_CC7AFD: LitI2_Byte 0
  loc_CC7AFF: FLdPr Me
  loc_CC7B02: MemStI2 global_124
  loc_CC7B05: FLdPr var_CC
  loc_CC7B08: Call clsboleto.MoveFirst()
  loc_CC7B0D: FLdPr Me
  loc_CC7B10: MemLdUI1 global_120
  loc_CC7B14: CI2UI1
  loc_CC7B16: LitI2_Byte 1
  loc_CC7B18: EqI2
  loc_CC7B19: BranchF loc_CC878F
  loc_CC7B1C: FLdRfVar var_C4
  loc_CC7B1F: FLdPr var_CC
  loc_CC7B22: from_stack_1 = clsboleto.CuenCtct
  loc_CC7B27: FLdPr Me
  loc_CC7B2A: MemLdRfVar from_stack_1.global_160
  loc_CC7B2D: NewIfNullRf
  loc_CC7B31: ILdRf var_C4
  loc_CC7B34: ImpAdCallI2 Proc_270_13_C86920(, )
  loc_CC7B39: FFree1Str var_C4
  loc_CC7B3C: BranchF loc_CC8253
  loc_CC7B3F: FLdRfVar var_C4
  loc_CC7B42: FLdPr Me
  loc_CC7B45: MemLdRfVar from_stack_1.global_160
  loc_CC7B48: NewIfNullPr tblPersonaGIS
  loc_CC7B4B: from_stack_1v = tblPersonaGIS.CucuPersGet()
  loc_CC7B50: LitI2_Byte 0
  loc_CC7B52: LitVar_Missing var_FC
  loc_CC7B55: LitI2_Byte 0
  loc_CC7B57: FLdZeroAd var_C4
  loc_CC7B5A: CVarStr var_DC
  loc_CC7B5D: PopAdLdVar
  loc_CC7B5E: LitI4 1
  loc_CC7B63: FLdPr Me
  loc_CC7B66: MemLdStr global_116
  loc_CC7B69: AryLock
  loc_CC7B6C: Ary1LdPr
  loc_CC7B6D: MemLdRfVar from_stack_1.global_0
  loc_CC7B70: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7B75: AryUnlock
  loc_CC7B78: FFreeVar var_DC = ""
  loc_CC7B7F: FLdRfVar var_C4
  loc_CC7B82: FLdPr Me
  loc_CC7B85: MemLdRfVar from_stack_1.global_160
  loc_CC7B88: NewIfNullPr tblPersonaGIS
  loc_CC7B8B: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_CC7B90: LitI2_Byte 0
  loc_CC7B92: LitVar_Missing var_FC
  loc_CC7B95: LitI2_Byte 0
  loc_CC7B97: FLdZeroAd var_C4
  loc_CC7B9A: CVarStr var_DC
  loc_CC7B9D: PopAdLdVar
  loc_CC7B9E: LitI4 1
  loc_CC7BA3: FLdPr Me
  loc_CC7BA6: MemLdStr global_116
  loc_CC7BA9: AryLock
  loc_CC7BAC: Ary1LdPr
  loc_CC7BAD: MemLdRfVar from_stack_1.global_4
  loc_CC7BB0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7BB5: AryUnlock
  loc_CC7BB8: FFreeVar var_DC = ""
  loc_CC7BBF: FLdRfVar var_C4
  loc_CC7BC2: FLdPr var_CC
  loc_CC7BC5: from_stack_1 = clsboleto.CuenCtct
  loc_CC7BCA: FLdRfVar var_C8
  loc_CC7BCD: FLdPr var_CC
  loc_CC7BD0: from_stack_1 = clsboleto.CuenCtct
  loc_CC7BD5: LitVarStr var_B8, "&nbsp;"
  loc_CC7BDA: FStVarCopyObj var_FC
  loc_CC7BDD: FLdRfVar var_FC
  loc_CC7BE0: FLdZeroAd var_C8
  loc_CC7BE3: CVarStr var_DC
  loc_CC7BE6: ILdRf var_C4
  loc_CC7BE9: LitStr vbNullString
  loc_CC7BEC: NeStr
  loc_CC7BEE: CVarBoolI2 var_A8
  loc_CC7BF2: FLdRfVar var_13C
  loc_CC7BF5: ImpAdCallFPR4  = IIf(, , )
  loc_CC7BFA: LitI2_Byte 0
  loc_CC7BFC: LitVar_Missing var_15C
  loc_CC7BFF: LitI2_Byte 0
  loc_CC7C01: FLdVar var_13C
  loc_CC7C05: LitI4 1
  loc_CC7C0A: FLdPr Me
  loc_CC7C0D: MemLdStr global_116
  loc_CC7C10: AryLock
  loc_CC7C13: Ary1LdPr
  loc_CC7C14: MemLdRfVar from_stack_1.global_40
  loc_CC7C17: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7C1C: AryUnlock
  loc_CC7C1F: FFree1Str var_C4
  loc_CC7C22: FFreeVar var_A8 = "": var_DC = "": var_FC = "": var_13C = ""
  loc_CC7C2F: FLdRfVar var_C4
  loc_CC7C32: FLdPr var_CC
  loc_CC7C35: from_stack_1 = clsboleto.CuenCtct
  loc_CC7C3A: ILdRf var_C4
  loc_CC7C3D: LitI2_Byte 1
  loc_CC7C3F: ImpAdCallI2 Proc_270_138_AC2750(, )
  loc_CC7C44: FStStr var_C8
  loc_CC7C47: LitI2_Byte 0
  loc_CC7C49: LitVar_Missing var_FC
  loc_CC7C4C: LitI2_Byte 0
  loc_CC7C4E: FLdZeroAd var_C8
  loc_CC7C51: CVarStr var_DC
  loc_CC7C54: PopAdLdVar
  loc_CC7C55: LitI4 1
  loc_CC7C5A: FLdPr Me
  loc_CC7C5D: MemLdStr global_116
  loc_CC7C60: AryLock
  loc_CC7C63: Ary1LdPr
  loc_CC7C64: MemLdRfVar from_stack_1.global_44
  loc_CC7C67: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7C6C: AryUnlock
  loc_CC7C6F: FFreeStr var_C4 = ""
  loc_CC7C76: FFreeVar var_DC = ""
  loc_CC7C7D: FLdRfVar var_C4
  loc_CC7C80: FLdPr var_CC
  loc_CC7C83: from_stack_1 = clsboleto.CuenCtct
  loc_CC7C88: ILdRf var_C4
  loc_CC7C8B: ImpAdCallI2 Proc_270_139_A8BB28()
  loc_CC7C90: FStStr var_C8
  loc_CC7C93: LitI2_Byte 0
  loc_CC7C95: LitVar_Missing var_FC
  loc_CC7C98: LitI2_Byte 0
  loc_CC7C9A: FLdZeroAd var_C8
  loc_CC7C9D: CVarStr var_DC
  loc_CC7CA0: PopAdLdVar
  loc_CC7CA1: LitI4 1
  loc_CC7CA6: FLdPr Me
  loc_CC7CA9: MemLdStr global_116
  loc_CC7CAC: AryLock
  loc_CC7CAF: Ary1LdPr
  loc_CC7CB0: MemLdRfVar from_stack_1.sImprimirApremioPendiente
  loc_CC7CB3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7CB8: AryUnlock
  loc_CC7CBB: FFreeStr var_C4 = ""
  loc_CC7CC2: FFreeVar var_DC = ""
  loc_CC7CC9: FLdRfVar var_C4
  loc_CC7CCC: FLdPr var_CC
  loc_CC7CCF: from_stack_1 = clsboleto.CodiUsua
  loc_CC7CD4: LitI2_Byte 0
  loc_CC7CD6: LitVar_Missing var_FC
  loc_CC7CD9: LitI2_Byte 0
  loc_CC7CDB: FLdZeroAd var_C4
  loc_CC7CDE: CVarStr var_DC
  loc_CC7CE1: PopAdLdVar
  loc_CC7CE2: LitI4 1
  loc_CC7CE7: FLdPr Me
  loc_CC7CEA: MemLdStr global_116
  loc_CC7CED: AryLock
  loc_CC7CF0: Ary1LdPr
  loc_CC7CF1: MemLdRfVar from_stack_1.global_112
  loc_CC7CF4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7CF9: AryUnlock
  loc_CC7CFC: FFreeVar var_DC = ""
  loc_CC7D03: FLdRfVar var_128
  loc_CC7D06: FLdPr var_CC
  loc_CC7D09: from_stack_1 = clsboleto.CodiFapa
  loc_CC7D0E: LitI2_Byte 0
  loc_CC7D10: LitVar_Missing var_DC
  loc_CC7D13: LitI2_Byte 0
  loc_CC7D15: ILdRf var_128
  loc_CC7D18: CVarI4
  loc_CC7D1C: PopAdLdVar
  loc_CC7D1D: LitI4 1
  loc_CC7D22: FLdPr Me
  loc_CC7D25: MemLdStr global_116
  loc_CC7D28: AryLock
  loc_CC7D2B: Ary1LdPr
  loc_CC7D2C: MemLdRfVar from_stack_1.global_116
  loc_CC7D2F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7D34: AryUnlock
  loc_CC7D37: FFree1Var var_DC = ""
  loc_CC7D3A: FLdRfVar var_96
  loc_CC7D3D: FLdPr var_CC
  loc_CC7D40: from_stack_1 = clsboleto.CuotDefa
  loc_CC7D45: LitI2_Byte 0
  loc_CC7D47: LitVar_Missing var_DC
  loc_CC7D4A: LitI2_Byte 0
  loc_CC7D4C: FLdI2 var_96
  loc_CC7D4F: CVarI2 var_A8
  loc_CC7D52: PopAdLdVar
  loc_CC7D53: LitI4 1
  loc_CC7D58: FLdPr Me
  loc_CC7D5B: MemLdStr global_116
  loc_CC7D5E: AryLock
  loc_CC7D61: Ary1LdPr
  loc_CC7D62: MemLdRfVar from_stack_1.global_120
  loc_CC7D65: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7D6A: AryUnlock
  loc_CC7D6D: FFree1Var var_DC = ""
  loc_CC7D70: FLdRfVar var_96
  loc_CC7D73: FLdPr var_CC
  loc_CC7D76: from_stack_1 = clsboleto.CodiOfic
  loc_CC7D7B: LitI2_Byte 0
  loc_CC7D7D: LitVar_Missing var_DC
  loc_CC7D80: LitI2_Byte 0
  loc_CC7D82: FLdI2 var_96
  loc_CC7D85: CVarI2 var_A8
  loc_CC7D88: PopAdLdVar
  loc_CC7D89: LitI4 1
  loc_CC7D8E: FLdPr Me
  loc_CC7D91: MemLdStr global_116
  loc_CC7D94: AryLock
  loc_CC7D97: Ary1LdPr
  loc_CC7D98: MemLdRfVar from_stack_1.global_124
  loc_CC7D9B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7DA0: AryUnlock
  loc_CC7DA3: FFree1Var var_DC = ""
  loc_CC7DA6: FLdRfVar var_DC
  loc_CC7DA9: FLdPr var_CC
  loc_CC7DAC: from_stack_1 = clsboleto.FeveBole
  loc_CC7DB1: LitI2_Byte 0
  loc_CC7DB3: LitVar_Missing var_FC
  loc_CC7DB6: LitI2_Byte 0
  loc_CC7DB8: FLdVar var_DC
  loc_CC7DBC: LitI4 1
  loc_CC7DC1: FLdPr Me
  loc_CC7DC4: MemLdStr global_116
  loc_CC7DC7: AryLock
  loc_CC7DCA: Ary1LdPr
  loc_CC7DCB: MemLdRfVar from_stack_1.global_128
  loc_CC7DCE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7DD3: AryUnlock
  loc_CC7DD6: FFreeVar var_DC = ""
  loc_CC7DDD: FLdRfVar var_164
  loc_CC7DE0: FLdPr var_CC
  loc_CC7DE3: from_stack_1 = clsboleto.TotaBole
  loc_CC7DE8: LitI2_Byte 0
  loc_CC7DEA: LitVar_Missing var_DC
  loc_CC7DED: LitI2_Byte &HFF
  loc_CC7DEF: FLdFPR8 var_164
  loc_CC7DF2: CVarR8
  loc_CC7DF6: PopAdLdVar
  loc_CC7DF7: LitI4 1
  loc_CC7DFC: FLdPr Me
  loc_CC7DFF: MemLdStr global_116
  loc_CC7E02: AryLock
  loc_CC7E05: Ary1LdPr
  loc_CC7E06: MemLdRfVar from_stack_1.global_148
  loc_CC7E09: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7E0E: AryUnlock
  loc_CC7E11: FFree1Var var_DC = ""
  loc_CC7E14: FLdRfVar var_C4
  loc_CC7E17: FLdPr var_CC
  loc_CC7E1A: from_stack_1 = clsboleto.ObseBole
  loc_CC7E1F: LitI2_Byte 0
  loc_CC7E21: LitVar_Missing var_FC
  loc_CC7E24: LitI2_Byte 0
  loc_CC7E26: FLdZeroAd var_C4
  loc_CC7E29: CVarStr var_DC
  loc_CC7E2C: PopAdLdVar
  loc_CC7E2D: LitI4 1
  loc_CC7E32: FLdPr Me
  loc_CC7E35: MemLdStr global_116
  loc_CC7E38: AryLock
  loc_CC7E3B: Ary1LdPr
  loc_CC7E3C: MemLdRfVar from_stack_1.global_152
  loc_CC7E3F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7E44: AryUnlock
  loc_CC7E47: FFreeVar var_DC = ""
  loc_CC7E4E: FLdRfVar var_164
  loc_CC7E51: FLdPr var_CC
  loc_CC7E54: from_stack_1 = clsboleto.ApreBole
  loc_CC7E59: FLdFPR8 var_164
  loc_CC7E5C: LitI2_Byte 0
  loc_CC7E5E: CR8I2
  loc_CC7E5F: NeR8
  loc_CC7E60: BranchF loc_CC7E9A
  loc_CC7E63: FLdRfVar var_164
  loc_CC7E66: FLdPr var_CC
  loc_CC7E69: from_stack_1 = clsboleto.ApreBole
  loc_CC7E6E: LitI2_Byte 0
  loc_CC7E70: LitVar_Missing var_DC
  loc_CC7E73: LitI2_Byte &HFF
  loc_CC7E75: FLdFPR8 var_164
  loc_CC7E78: CVarR8
  loc_CC7E7C: PopAdLdVar
  loc_CC7E7D: LitI4 1
  loc_CC7E82: FLdPr Me
  loc_CC7E85: MemLdStr global_116
  loc_CC7E88: AryLock
  loc_CC7E8B: Ary1LdPr
  loc_CC7E8C: MemLdRfVar from_stack_1.global_140
  loc_CC7E8F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7E94: AryUnlock
  loc_CC7E97: FFree1Var var_DC = ""
  loc_CC7E9A: FLdRfVar var_C4
  loc_CC7E9D: Call Proc_163_34_AB85DC()
  loc_CC7EA2: LitI2_Byte 0
  loc_CC7EA4: LitVar_Missing var_FC
  loc_CC7EA7: LitI2_Byte 0
  loc_CC7EA9: FLdZeroAd var_C4
  loc_CC7EAC: CVarStr var_DC
  loc_CC7EAF: PopAdLdVar
  loc_CC7EB0: LitI4 1
  loc_CC7EB5: FLdPr Me
  loc_CC7EB8: MemLdStr global_116
  loc_CC7EBB: AryLock
  loc_CC7EBE: Ary1LdPr
  loc_CC7EBF: MemLdRfVar from_stack_1.global_144
  loc_CC7EC2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7EC7: AryUnlock
  loc_CC7ECA: FFreeVar var_DC = ""
  loc_CC7ED1: LitI2_Byte 0
  loc_CC7ED3: LitVar_Missing var_DC
  loc_CC7ED6: LitI2_Byte 0
  loc_CC7ED8: LitVarStr var_A8, vbNullString
  loc_CC7EDD: PopAdLdVar
  loc_CC7EDE: LitI4 1
  loc_CC7EE3: FLdPr Me
  loc_CC7EE6: MemLdStr global_116
  loc_CC7EE9: AryLock
  loc_CC7EEC: Ary1LdPr
  loc_CC7EED: MemLdRfVar from_stack_1.global_48
  loc_CC7EF0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7EF5: AryUnlock
  loc_CC7EF8: FFree1Var var_DC = ""
  loc_CC7EFB: FLdRfVar var_C4
  loc_CC7EFE: FLdPr Me
  loc_CC7F01: MemLdRfVar from_stack_1.global_160
  loc_CC7F04: NewIfNullPr tblPersonaGIS
  loc_CC7F07: from_stack_1v = tblPersonaGIS.DependenciaGet()
  loc_CC7F0C: FLdRfVar var_C8
  loc_CC7F0F: FLdPr Me
  loc_CC7F12: MemLdRfVar from_stack_1.global_160
  loc_CC7F15: NewIfNullPr tblPersonaGIS
  loc_CC7F18: from_stack_1v = tblPersonaGIS.DistritoGet()
  loc_CC7F1D: FLdRfVar var_E8
  loc_CC7F20: FLdPr Me
  loc_CC7F23: MemLdRfVar from_stack_1.global_160
  loc_CC7F26: NewIfNullPr tblPersonaGIS
  loc_CC7F29: from_stack_1v = tblPersonaGIS.SeccionGet()
  loc_CC7F2E: FLdRfVar var_108
  loc_CC7F31: FLdPr Me
  loc_CC7F34: MemLdRfVar from_stack_1.global_160
  loc_CC7F37: NewIfNullPr tblPersonaGIS
  loc_CC7F3A: from_stack_1v = tblPersonaGIS.ManzanaGet()
  loc_CC7F3F: FLdRfVar var_114
  loc_CC7F42: FLdPr Me
  loc_CC7F45: MemLdRfVar from_stack_1.global_160
  loc_CC7F48: NewIfNullPr tblPersonaGIS
  loc_CC7F4B: from_stack_1v = tblPersonaGIS.ParcelaGet()
  loc_CC7F50: FLdRfVar var_120
  loc_CC7F53: FLdPr Me
  loc_CC7F56: MemLdRfVar from_stack_1.global_160
  loc_CC7F59: NewIfNullPr tblPersonaGIS
  loc_CC7F5C: from_stack_1v = tblPersonaGIS.SubparcelaGet()
  loc_CC7F61: FLdRfVar var_16C
  loc_CC7F64: FLdPr Me
  loc_CC7F67: MemLdRfVar from_stack_1.global_160
  loc_CC7F6A: NewIfNullPr tblPersonaGIS
  loc_CC7F6D: from_stack_1v = tblPersonaGIS.DigiVeriGet()
  loc_CC7F72: LitI2_Byte 0
  loc_CC7F74: LitVar_Missing var_FC
  loc_CC7F77: LitI2_Byte 0
  loc_CC7F79: ILdRf var_C4
  loc_CC7F7C: LitStr "-"
  loc_CC7F7F: ConcatStr
  loc_CC7F80: FStStrNoPop var_E0
  loc_CC7F83: ILdRf var_C8
  loc_CC7F86: ConcatStr
  loc_CC7F87: FStStrNoPop var_E4
  loc_CC7F8A: LitStr "-"
  loc_CC7F8D: ConcatStr
  loc_CC7F8E: FStStrNoPop var_100
  loc_CC7F91: ILdRf var_E8
  loc_CC7F94: ConcatStr
  loc_CC7F95: FStStrNoPop var_104
  loc_CC7F98: LitStr "-"
  loc_CC7F9B: ConcatStr
  loc_CC7F9C: FStStrNoPop var_10C
  loc_CC7F9F: ILdRf var_108
  loc_CC7FA2: ConcatStr
  loc_CC7FA3: FStStrNoPop var_110
  loc_CC7FA6: LitStr "-"
  loc_CC7FA9: ConcatStr
  loc_CC7FAA: FStStrNoPop var_118
  loc_CC7FAD: ILdRf var_114
  loc_CC7FB0: ConcatStr
  loc_CC7FB1: FStStrNoPop var_11C
  loc_CC7FB4: LitStr "-"
  loc_CC7FB7: ConcatStr
  loc_CC7FB8: FStStrNoPop var_124
  loc_CC7FBB: ILdRf var_120
  loc_CC7FBE: ConcatStr
  loc_CC7FBF: FStStrNoPop var_168
  loc_CC7FC2: LitStr "-"
  loc_CC7FC5: ConcatStr
  loc_CC7FC6: FStStrNoPop var_170
  loc_CC7FC9: ILdRf var_16C
  loc_CC7FCC: ConcatStr
  loc_CC7FCD: CVarStr var_DC
  loc_CC7FD0: PopAdLdVar
  loc_CC7FD1: LitI4 1
  loc_CC7FD6: FLdPr Me
  loc_CC7FD9: MemLdStr global_116
  loc_CC7FDC: AryLock
  loc_CC7FDF: Ary1LdPr
  loc_CC7FE0: MemLdRfVar from_stack_1.DetaDeva
  loc_CC7FE3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC7FE8: AryUnlock
  loc_CC7FEB: FFreeStr var_C4 = "": var_E0 = "": var_C8 = "": var_E4 = "": var_100 = "": var_E8 = "": var_104 = "": var_10C = "": var_108 = "": var_110 = "": var_118 = "": var_114 = "": var_11C = "": var_124 = "": var_120 = "": var_168 = "": var_170 = ""
  loc_CC8012: FFreeVar var_DC = ""
  loc_CC8019: LitI2_Byte 0
  loc_CC801B: LitVar_Missing var_DC
  loc_CC801E: LitI2_Byte 0
  loc_CC8020: LitVarStr var_A8, vbNullString
  loc_CC8025: PopAdLdVar
  loc_CC8026: LitI4 1
  loc_CC802B: FLdPr Me
  loc_CC802E: MemLdStr global_116
  loc_CC8031: AryLock
  loc_CC8034: Ary1LdPr
  loc_CC8035: MemLdRfVar from_stack_1.Imprimiendo
  loc_CC8038: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC803D: AryUnlock
  loc_CC8040: FFree1Var var_DC = ""
  loc_CC8043: FLdRfVar var_C4
  loc_CC8046: FLdPr Me
  loc_CC8049: MemLdRfVar from_stack_1.global_160
  loc_CC804C: NewIfNullPr tblPersonaGIS
  loc_CC804F: from_stack_1v = tblPersonaGIS.DetaCallGet()
  loc_CC8054: LitI2_Byte 0
  loc_CC8056: LitVar_Missing var_FC
  loc_CC8059: LitI2_Byte 0
  loc_CC805B: FLdZeroAd var_C4
  loc_CC805E: CVarStr var_DC
  loc_CC8061: PopAdLdVar
  loc_CC8062: LitI4 1
  loc_CC8067: FLdPr Me
  loc_CC806A: MemLdStr global_116
  loc_CC806D: AryLock
  loc_CC8070: Ary1LdPr
  loc_CC8071: MemLdRfVar from_stack_1.global_156
  loc_CC8074: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8079: AryUnlock
  loc_CC807C: FFreeVar var_DC = ""
  loc_CC8083: FLdRfVar var_C4
  loc_CC8086: FLdPr Me
  loc_CC8089: MemLdRfVar from_stack_1.global_160
  loc_CC808C: NewIfNullPr tblPersonaGIS
  loc_CC808F: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_CC8094: FLdRfVar var_C8
  loc_CC8097: FLdPr Me
  loc_CC809A: MemLdRfVar from_stack_1.global_160
  loc_CC809D: NewIfNullPr tblPersonaGIS
  loc_CC80A0: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_CC80A5: FLdZeroAd var_C8
  loc_CC80A8: CVarStr var_FC
  loc_CC80AB: LitVarStr var_B8, vbNullString
  loc_CC80B0: FStVarCopyObj var_DC
  loc_CC80B3: FLdRfVar var_DC
  loc_CC80B6: ILdRf var_C4
  loc_CC80B9: LitStr "0"
  loc_CC80BC: EqStr
  loc_CC80BE: CVarBoolI2 var_A8
  loc_CC80C2: FLdRfVar var_13C
  loc_CC80C5: ImpAdCallFPR4  = IIf(, , )
  loc_CC80CA: LitI2_Byte 0
  loc_CC80CC: LitVar_Missing var_15C
  loc_CC80CF: LitI2_Byte 0
  loc_CC80D1: FLdVar var_13C
  loc_CC80D5: LitI4 1
  loc_CC80DA: FLdPr Me
  loc_CC80DD: MemLdStr global_116
  loc_CC80E0: AryLock
  loc_CC80E3: Ary1LdPr
  loc_CC80E4: MemLdRfVar from_stack_1.global_160
  loc_CC80E7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC80EC: AryUnlock
  loc_CC80EF: FFree1Str var_C4
  loc_CC80F2: FFreeVar var_A8 = "": var_DC = "": var_FC = "": var_13C = ""
  loc_CC80FF: LitI2_Byte 0
  loc_CC8101: LitVar_Missing var_DC
  loc_CC8104: LitI2_Byte 0
  loc_CC8106: LitVarStr var_A8, vbNullString
  loc_CC810B: PopAdLdVar
  loc_CC810C: LitI4 1
  loc_CC8111: FLdPr Me
  loc_CC8114: MemLdStr global_116
  loc_CC8117: AryLock
  loc_CC811A: Ary1LdPr
  loc_CC811B: MemLdRfVar from_stack_1.global_164
  loc_CC811E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8123: AryUnlock
  loc_CC8126: FFree1Var var_DC = ""
  loc_CC8129: LitI2_Byte 0
  loc_CC812B: LitVar_Missing var_DC
  loc_CC812E: LitI2_Byte 0
  loc_CC8130: LitVarStr var_A8, vbNullString
  loc_CC8135: PopAdLdVar
  loc_CC8136: LitI4 1
  loc_CC813B: FLdPr Me
  loc_CC813E: MemLdStr global_116
  loc_CC8141: AryLock
  loc_CC8144: Ary1LdPr
  loc_CC8145: MemLdRfVar from_stack_1.global_168
  loc_CC8148: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC814D: AryUnlock
  loc_CC8150: FFree1Var var_DC = ""
  loc_CC8153: FLdRfVar var_C4
  loc_CC8156: FLdPr Me
  loc_CC8159: MemLdRfVar from_stack_1.global_160
  loc_CC815C: NewIfNullPr tblPersonaGIS
  loc_CC815F: from_stack_1v = tblPersonaGIS.DetaBarrGet()
  loc_CC8164: LitI2_Byte 0
  loc_CC8166: LitVar_Missing var_FC
  loc_CC8169: LitI2_Byte 0
  loc_CC816B: FLdZeroAd var_C4
  loc_CC816E: CVarStr var_DC
  loc_CC8171: PopAdLdVar
  loc_CC8172: LitI4 1
  loc_CC8177: FLdPr Me
  loc_CC817A: MemLdStr global_116
  loc_CC817D: AryLock
  loc_CC8180: Ary1LdPr
  loc_CC8181: MemLdRfVar from_stack_1.global_172
  loc_CC8184: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8189: AryUnlock
  loc_CC818C: FFreeVar var_DC = ""
  loc_CC8193: FLdRfVar var_C4
  loc_CC8196: FLdPr Me
  loc_CC8199: MemLdRfVar from_stack_1.global_160
  loc_CC819C: NewIfNullPr tblPersonaGIS
  loc_CC819F: from_stack_1v = tblPersonaGIS.ManzInmuGet()
  loc_CC81A4: LitI2_Byte 0
  loc_CC81A6: LitVar_Missing var_FC
  loc_CC81A9: LitI2_Byte 0
  loc_CC81AB: FLdZeroAd var_C4
  loc_CC81AE: CVarStr var_DC
  loc_CC81B1: PopAdLdVar
  loc_CC81B2: LitI4 1
  loc_CC81B7: FLdPr Me
  loc_CC81BA: MemLdStr global_116
  loc_CC81BD: AryLock
  loc_CC81C0: Ary1LdPr
  loc_CC81C1: MemLdRfVar from_stack_1.global_176
  loc_CC81C4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC81C9: AryUnlock
  loc_CC81CC: FFreeVar var_DC = ""
  loc_CC81D3: FLdRfVar var_C4
  loc_CC81D6: FLdPr Me
  loc_CC81D9: MemLdRfVar from_stack_1.global_160
  loc_CC81DC: NewIfNullPr tblPersonaGIS
  loc_CC81DF: from_stack_1v = tblPersonaGIS.CasaInmuGet()
  loc_CC81E4: LitI2_Byte 0
  loc_CC81E6: LitVar_Missing var_FC
  loc_CC81E9: LitI2_Byte 0
  loc_CC81EB: FLdZeroAd var_C4
  loc_CC81EE: CVarStr var_DC
  loc_CC81F1: PopAdLdVar
  loc_CC81F2: LitI4 1
  loc_CC81F7: FLdPr Me
  loc_CC81FA: MemLdStr global_116
  loc_CC81FD: AryLock
  loc_CC8200: Ary1LdPr
  loc_CC8201: MemLdRfVar from_stack_1.global_180
  loc_CC8204: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8209: AryUnlock
  loc_CC820C: FFreeVar var_DC = ""
  loc_CC8213: FLdRfVar var_C4
  loc_CC8216: FLdPr Me
  loc_CC8219: MemLdRfVar from_stack_1.global_160
  loc_CC821C: NewIfNullPr tblPersonaGIS
  loc_CC821F: from_stack_1v = tblPersonaGIS.DetaLocaGet()
  loc_CC8224: LitI2_Byte 0
  loc_CC8226: LitVar_Missing var_FC
  loc_CC8229: LitI2_Byte 0
  loc_CC822B: FLdZeroAd var_C4
  loc_CC822E: CVarStr var_DC
  loc_CC8231: PopAdLdVar
  loc_CC8232: LitI4 1
  loc_CC8237: FLdPr Me
  loc_CC823A: MemLdStr global_116
  loc_CC823D: AryLock
  loc_CC8240: Ary1LdPr
  loc_CC8241: MemLdRfVar from_stack_1.global_184
  loc_CC8244: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8249: AryUnlock
  loc_CC824C: FFreeVar var_DC = ""
  loc_CC8253: LitStr " SELECT domicilio.calle as DecaPost, domicilio.NumeCalle as NumePost, domicilio.barrio as DebaPost, domicilio.Manzana as ManzPost, domicilio.Casa as CasaPost, "
  loc_CC8256: LitStr " concat(domicilio.Monoblock,"
  loc_CC8259: ConcatStr
  loc_CC825A: FStStrNoPop var_C4
  loc_CC825D: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_CC8260: ConcatStr
  loc_CC8261: FStStrNoPop var_C8
  loc_CC8264: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_CC8267: ConcatStr
  loc_CC8268: FStStrNoPop var_E0
  loc_CC826B: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_CC826E: ConcatStr
  loc_CC826F: FStStrNoPop var_E4
  loc_CC8272: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_CC8275: ConcatStr
  loc_CC8276: FStStrNoPop var_E8
  loc_CC8279: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta)  as UbicPost,"
  loc_CC827C: ConcatStr
  loc_CC827D: FStStrNoPop var_100
  loc_CC8280: LitStr " domicilio.Localidad as DeloPost, domicilio.CodPostal as CopoPost"
  loc_CC8283: ConcatStr
  loc_CC8284: FStStrNoPop var_104
  loc_CC8287: LitStr " FROM domicilio"
  loc_CC828A: ConcatStr
  loc_CC828B: FStStrNoPop var_108
  loc_CC828E: LitStr " WHERE CodiOfic = 1"
  loc_CC8291: ConcatStr
  loc_CC8292: FStStrNoPop var_10C
  loc_CC8295: LitStr " AND CodiCome = "
  loc_CC8298: ConcatStr
  loc_CC8299: FStStrNoPop var_114
  loc_CC829C: FLdRfVar var_110
  loc_CC829F: FLdPr var_CC
  loc_CC82A2: from_stack_1 = clsboleto.CuenCtct
  loc_CC82A7: ILdRf var_110
  loc_CC82AA: ConcatStr
  loc_CC82AB: FStStrNoPop var_118
  loc_CC82AE: LitStr " AND Tipo = 'RENTAS'"
  loc_CC82B1: ConcatStr
  loc_CC82B2: FStStrNoPop var_11C
  loc_CC82B5: FLdPr Me
  loc_CC82B8: MemLdRfVar from_stack_1.global_96
  loc_CC82BB: NewIfNullPr clsboleto
  loc_CC82BE: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CC82C3: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_110 = "": var_118 = ""
  loc_CC82E0: FLdRfVar var_128
  loc_CC82E3: FLdPr Me
  loc_CC82E6: MemLdRfVar from_stack_1.global_96
  loc_CC82E9: NewIfNullPr clsboleto
  loc_CC82EC: from_stack_1 = clsboleto.RecordCount
  loc_CC82F1: ILdRf var_128
  loc_CC82F4: LitI4 1
  loc_CC82F9: GeI4
  loc_CC82FA: BranchF loc_CC863C
  loc_CC82FD: FLdRfVar var_BC
  loc_CC8300: FLdPr Me
  loc_CC8303: MemLdRfVar from_stack_1.global_96
  loc_CC8306: NewIfNullPr clsboleto
  loc_CC8309: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC830E: FLdPr var_BC
  loc_CC8311: Me.MoveFirst
  loc_CC8316: FFree1Ad var_BC
  loc_CC8319: FLdRfVar var_174
  loc_CC831C: LitVarStr var_A8, "DecaPost"
  loc_CC8321: PopAdLdVar
  loc_CC8322: FLdRfVar var_EC
  loc_CC8325: FLdRfVar var_BC
  loc_CC8328: FLdPr Me
  loc_CC832B: MemLdRfVar from_stack_1.global_96
  loc_CC832E: NewIfNullPr clsboleto
  loc_CC8331: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC8336: FLdPr var_BC
  loc_CC8339:  = Me.Fields
  loc_CC833E: FLdPr var_EC
  loc_CC8341: from_stack_2 = Me.Item(from_stack_1)
  loc_CC8346: LitI2_Byte 0
  loc_CC8348: LitVar_Missing var_FC
  loc_CC834B: LitI2_Byte 0
  loc_CC834D: FLdZeroAd var_174
  loc_CC8350: CVarAd
  loc_CC8354: PopAdLdVar
  loc_CC8355: LitI4 1
  loc_CC835A: FLdPr Me
  loc_CC835D: MemLdStr global_116
  loc_CC8360: AryLock
  loc_CC8363: Ary1LdPr
  loc_CC8364: MemLdRfVar from_stack_1.global_8
  loc_CC8367: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC836C: AryUnlock
  loc_CC836F: FFreeAd var_BC = ""
  loc_CC8376: FFreeVar var_DC = ""
  loc_CC837D: FLdRfVar var_174
  loc_CC8380: LitVarStr var_A8, "NumePost"
  loc_CC8385: PopAdLdVar
  loc_CC8386: FLdRfVar var_EC
  loc_CC8389: FLdRfVar var_BC
  loc_CC838C: FLdPr Me
  loc_CC838F: MemLdRfVar from_stack_1.global_96
  loc_CC8392: NewIfNullPr clsboleto
  loc_CC8395: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC839A: FLdPr var_BC
  loc_CC839D:  = Me.Fields
  loc_CC83A2: FLdPr var_EC
  loc_CC83A5: from_stack_2 = Me.Item(from_stack_1)
  loc_CC83AA: LitI2_Byte 0
  loc_CC83AC: LitVar_Missing var_FC
  loc_CC83AF: LitI2_Byte 0
  loc_CC83B1: FLdZeroAd var_174
  loc_CC83B4: CVarAd
  loc_CC83B8: PopAdLdVar
  loc_CC83B9: LitI4 1
  loc_CC83BE: FLdPr Me
  loc_CC83C1: MemLdStr global_116
  loc_CC83C4: AryLock
  loc_CC83C7: Ary1LdPr
  loc_CC83C8: MemLdRfVar from_stack_1.global_12
  loc_CC83CB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC83D0: AryUnlock
  loc_CC83D3: FFreeAd var_BC = ""
  loc_CC83DA: FFreeVar var_DC = ""
  loc_CC83E1: FLdRfVar var_174
  loc_CC83E4: LitVarStr var_A8, "DebaPost"
  loc_CC83E9: PopAdLdVar
  loc_CC83EA: FLdRfVar var_EC
  loc_CC83ED: FLdRfVar var_BC
  loc_CC83F0: FLdPr Me
  loc_CC83F3: MemLdRfVar from_stack_1.global_96
  loc_CC83F6: NewIfNullPr clsboleto
  loc_CC83F9: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC83FE: FLdPr var_BC
  loc_CC8401:  = Me.Fields
  loc_CC8406: FLdPr var_EC
  loc_CC8409: from_stack_2 = Me.Item(from_stack_1)
  loc_CC840E: LitI2_Byte 0
  loc_CC8410: LitVar_Missing var_FC
  loc_CC8413: LitI2_Byte 0
  loc_CC8415: FLdZeroAd var_174
  loc_CC8418: CVarAd
  loc_CC841C: PopAdLdVar
  loc_CC841D: LitI4 1
  loc_CC8422: FLdPr Me
  loc_CC8425: MemLdStr global_116
  loc_CC8428: AryLock
  loc_CC842B: Ary1LdPr
  loc_CC842C: MemLdRfVar from_stack_1.global_16
  loc_CC842F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8434: AryUnlock
  loc_CC8437: FFreeAd var_BC = ""
  loc_CC843E: FFreeVar var_DC = ""
  loc_CC8445: FLdRfVar var_174
  loc_CC8448: LitVarStr var_A8, "ManzPost"
  loc_CC844D: PopAdLdVar
  loc_CC844E: FLdRfVar var_EC
  loc_CC8451: FLdRfVar var_BC
  loc_CC8454: FLdPr Me
  loc_CC8457: MemLdRfVar from_stack_1.global_96
  loc_CC845A: NewIfNullPr clsboleto
  loc_CC845D: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC8462: FLdPr var_BC
  loc_CC8465:  = Me.Fields
  loc_CC846A: FLdPr var_EC
  loc_CC846D: from_stack_2 = Me.Item(from_stack_1)
  loc_CC8472: LitI2_Byte 0
  loc_CC8474: LitVar_Missing var_FC
  loc_CC8477: LitI2_Byte 0
  loc_CC8479: FLdZeroAd var_174
  loc_CC847C: CVarAd
  loc_CC8480: PopAdLdVar
  loc_CC8481: LitI4 1
  loc_CC8486: FLdPr Me
  loc_CC8489: MemLdStr global_116
  loc_CC848C: AryLock
  loc_CC848F: Ary1LdPr
  loc_CC8490: MemLdRfVar from_stack_1.global_20
  loc_CC8493: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8498: AryUnlock
  loc_CC849B: FFreeAd var_BC = ""
  loc_CC84A2: FFreeVar var_DC = ""
  loc_CC84A9: FLdRfVar var_174
  loc_CC84AC: LitVarStr var_A8, "CasaPost"
  loc_CC84B1: PopAdLdVar
  loc_CC84B2: FLdRfVar var_EC
  loc_CC84B5: FLdRfVar var_BC
  loc_CC84B8: FLdPr Me
  loc_CC84BB: MemLdRfVar from_stack_1.global_96
  loc_CC84BE: NewIfNullPr clsboleto
  loc_CC84C1: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC84C6: FLdPr var_BC
  loc_CC84C9:  = Me.Fields
  loc_CC84CE: FLdPr var_EC
  loc_CC84D1: from_stack_2 = Me.Item(from_stack_1)
  loc_CC84D6: LitI2_Byte 0
  loc_CC84D8: LitVar_Missing var_FC
  loc_CC84DB: LitI2_Byte 0
  loc_CC84DD: FLdZeroAd var_174
  loc_CC84E0: CVarAd
  loc_CC84E4: PopAdLdVar
  loc_CC84E5: LitI4 1
  loc_CC84EA: FLdPr Me
  loc_CC84ED: MemLdStr global_116
  loc_CC84F0: AryLock
  loc_CC84F3: Ary1LdPr
  loc_CC84F4: MemLdRfVar from_stack_1.global_24
  loc_CC84F7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC84FC: AryUnlock
  loc_CC84FF: FFreeAd var_BC = ""
  loc_CC8506: FFreeVar var_DC = ""
  loc_CC850D: FLdRfVar var_174
  loc_CC8510: LitVarStr var_A8, "UbicPost"
  loc_CC8515: PopAdLdVar
  loc_CC8516: FLdRfVar var_EC
  loc_CC8519: FLdRfVar var_BC
  loc_CC851C: FLdPr Me
  loc_CC851F: MemLdRfVar from_stack_1.global_96
  loc_CC8522: NewIfNullPr clsboleto
  loc_CC8525: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC852A: FLdPr var_BC
  loc_CC852D:  = Me.Fields
  loc_CC8532: FLdPr var_EC
  loc_CC8535: from_stack_2 = Me.Item(from_stack_1)
  loc_CC853A: LitI2_Byte 0
  loc_CC853C: LitVar_Missing var_FC
  loc_CC853F: LitI2_Byte 0
  loc_CC8541: FLdZeroAd var_174
  loc_CC8544: CVarAd
  loc_CC8548: PopAdLdVar
  loc_CC8549: LitI4 1
  loc_CC854E: FLdPr Me
  loc_CC8551: MemLdStr global_116
  loc_CC8554: AryLock
  loc_CC8557: Ary1LdPr
  loc_CC8558: MemLdRfVar from_stack_1.global_28
  loc_CC855B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8560: AryUnlock
  loc_CC8563: FFreeAd var_BC = ""
  loc_CC856A: FFreeVar var_DC = ""
  loc_CC8571: FLdRfVar var_174
  loc_CC8574: LitVarStr var_A8, "DeloPost"
  loc_CC8579: PopAdLdVar
  loc_CC857A: FLdRfVar var_EC
  loc_CC857D: FLdRfVar var_BC
  loc_CC8580: FLdPr Me
  loc_CC8583: MemLdRfVar from_stack_1.global_96
  loc_CC8586: NewIfNullPr clsboleto
  loc_CC8589: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC858E: FLdPr var_BC
  loc_CC8591:  = Me.Fields
  loc_CC8596: FLdPr var_EC
  loc_CC8599: from_stack_2 = Me.Item(from_stack_1)
  loc_CC859E: LitI2_Byte 0
  loc_CC85A0: LitVar_Missing var_FC
  loc_CC85A3: LitI2_Byte 0
  loc_CC85A5: FLdZeroAd var_174
  loc_CC85A8: CVarAd
  loc_CC85AC: PopAdLdVar
  loc_CC85AD: LitI4 1
  loc_CC85B2: FLdPr Me
  loc_CC85B5: MemLdStr global_116
  loc_CC85B8: AryLock
  loc_CC85BB: Ary1LdPr
  loc_CC85BC: MemLdRfVar from_stack_1.global_32
  loc_CC85BF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC85C4: AryUnlock
  loc_CC85C7: FFreeAd var_BC = ""
  loc_CC85CE: FFreeVar var_DC = ""
  loc_CC85D5: FLdRfVar var_174
  loc_CC85D8: LitVarStr var_A8, "CopoPost"
  loc_CC85DD: PopAdLdVar
  loc_CC85DE: FLdRfVar var_EC
  loc_CC85E1: FLdRfVar var_BC
  loc_CC85E4: FLdPr Me
  loc_CC85E7: MemLdRfVar from_stack_1.global_96
  loc_CC85EA: NewIfNullPr clsboleto
  loc_CC85ED: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC85F2: FLdPr var_BC
  loc_CC85F5:  = Me.Fields
  loc_CC85FA: FLdPr var_EC
  loc_CC85FD: from_stack_2 = Me.Item(from_stack_1)
  loc_CC8602: LitI2_Byte 0
  loc_CC8604: LitVar_Missing var_FC
  loc_CC8607: LitI2_Byte 0
  loc_CC8609: FLdZeroAd var_174
  loc_CC860C: CVarAd
  loc_CC8610: PopAdLdVar
  loc_CC8611: LitI4 1
  loc_CC8616: FLdPr Me
  loc_CC8619: MemLdStr global_116
  loc_CC861C: AryLock
  loc_CC861F: Ary1LdPr
  loc_CC8620: MemLdRfVar from_stack_1.global_36
  loc_CC8623: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8628: AryUnlock
  loc_CC862B: FFreeAd var_BC = ""
  loc_CC8632: FFreeVar var_DC = ""
  loc_CC8639: Branch loc_CC878C
  loc_CC863C: LitI2_Byte 0
  loc_CC863E: LitVar_Missing var_DC
  loc_CC8641: LitI2_Byte 0
  loc_CC8643: LitVarStr var_A8, vbNullString
  loc_CC8648: PopAdLdVar
  loc_CC8649: LitI4 1
  loc_CC864E: FLdPr Me
  loc_CC8651: MemLdStr global_116
  loc_CC8654: AryLock
  loc_CC8657: Ary1LdPr
  loc_CC8658: MemLdRfVar from_stack_1.global_8
  loc_CC865B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8660: AryUnlock
  loc_CC8663: FFree1Var var_DC = ""
  loc_CC8666: LitI2_Byte 0
  loc_CC8668: LitVar_Missing var_DC
  loc_CC866B: LitI2_Byte 0
  loc_CC866D: LitVarStr var_A8, vbNullString
  loc_CC8672: PopAdLdVar
  loc_CC8673: LitI4 1
  loc_CC8678: FLdPr Me
  loc_CC867B: MemLdStr global_116
  loc_CC867E: AryLock
  loc_CC8681: Ary1LdPr
  loc_CC8682: MemLdRfVar from_stack_1.global_12
  loc_CC8685: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC868A: AryUnlock
  loc_CC868D: FFree1Var var_DC = ""
  loc_CC8690: LitI2_Byte 0
  loc_CC8692: LitVar_Missing var_DC
  loc_CC8695: LitI2_Byte 0
  loc_CC8697: LitVarStr var_A8, vbNullString
  loc_CC869C: PopAdLdVar
  loc_CC869D: LitI4 1
  loc_CC86A2: FLdPr Me
  loc_CC86A5: MemLdStr global_116
  loc_CC86A8: AryLock
  loc_CC86AB: Ary1LdPr
  loc_CC86AC: MemLdRfVar from_stack_1.global_16
  loc_CC86AF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC86B4: AryUnlock
  loc_CC86B7: FFree1Var var_DC = ""
  loc_CC86BA: LitI2_Byte 0
  loc_CC86BC: LitVar_Missing var_DC
  loc_CC86BF: LitI2_Byte 0
  loc_CC86C1: LitVarStr var_A8, vbNullString
  loc_CC86C6: PopAdLdVar
  loc_CC86C7: LitI4 1
  loc_CC86CC: FLdPr Me
  loc_CC86CF: MemLdStr global_116
  loc_CC86D2: AryLock
  loc_CC86D5: Ary1LdPr
  loc_CC86D6: MemLdRfVar from_stack_1.global_20
  loc_CC86D9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC86DE: AryUnlock
  loc_CC86E1: FFree1Var var_DC = ""
  loc_CC86E4: LitI2_Byte 0
  loc_CC86E6: LitVar_Missing var_DC
  loc_CC86E9: LitI2_Byte 0
  loc_CC86EB: LitVarStr var_A8, vbNullString
  loc_CC86F0: PopAdLdVar
  loc_CC86F1: LitI4 1
  loc_CC86F6: FLdPr Me
  loc_CC86F9: MemLdStr global_116
  loc_CC86FC: AryLock
  loc_CC86FF: Ary1LdPr
  loc_CC8700: MemLdRfVar from_stack_1.global_24
  loc_CC8703: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8708: AryUnlock
  loc_CC870B: FFree1Var var_DC = ""
  loc_CC870E: LitI2_Byte 0
  loc_CC8710: LitVar_Missing var_DC
  loc_CC8713: LitI2_Byte 0
  loc_CC8715: LitVarStr var_A8, vbNullString
  loc_CC871A: PopAdLdVar
  loc_CC871B: LitI4 1
  loc_CC8720: FLdPr Me
  loc_CC8723: MemLdStr global_116
  loc_CC8726: AryLock
  loc_CC8729: Ary1LdPr
  loc_CC872A: MemLdRfVar from_stack_1.global_28
  loc_CC872D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8732: AryUnlock
  loc_CC8735: FFree1Var var_DC = ""
  loc_CC8738: LitI2_Byte 0
  loc_CC873A: LitVar_Missing var_DC
  loc_CC873D: LitI2_Byte 0
  loc_CC873F: LitVarStr var_A8, vbNullString
  loc_CC8744: PopAdLdVar
  loc_CC8745: LitI4 1
  loc_CC874A: FLdPr Me
  loc_CC874D: MemLdStr global_116
  loc_CC8750: AryLock
  loc_CC8753: Ary1LdPr
  loc_CC8754: MemLdRfVar from_stack_1.global_32
  loc_CC8757: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC875C: AryUnlock
  loc_CC875F: FFree1Var var_DC = ""
  loc_CC8762: LitI2_Byte 0
  loc_CC8764: LitVar_Missing var_DC
  loc_CC8767: LitI2_Byte 0
  loc_CC8769: LitVarStr var_A8, vbNullString
  loc_CC876E: PopAdLdVar
  loc_CC876F: LitI4 1
  loc_CC8774: FLdPr Me
  loc_CC8777: MemLdStr global_116
  loc_CC877A: AryLock
  loc_CC877D: Ary1LdPr
  loc_CC877E: MemLdRfVar from_stack_1.global_36
  loc_CC8781: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8786: AryUnlock
  loc_CC8789: FFree1Var var_DC = ""
  loc_CC878C: Branch loc_CC9435
  loc_CC878F: FLdRfVar var_C4
  loc_CC8792: FLdPr var_CC
  loc_CC8795: from_stack_1 = clsboleto.CucuPers
  loc_CC879A: LitI2_Byte 0
  loc_CC879C: LitVar_Missing var_FC
  loc_CC879F: LitI2_Byte 0
  loc_CC87A1: FLdZeroAd var_C4
  loc_CC87A4: CVarStr var_DC
  loc_CC87A7: PopAdLdVar
  loc_CC87A8: LitI4 1
  loc_CC87AD: FLdPr Me
  loc_CC87B0: MemLdStr global_116
  loc_CC87B3: AryLock
  loc_CC87B6: Ary1LdPr
  loc_CC87B7: MemLdRfVar from_stack_1.global_0
  loc_CC87BA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC87BF: AryUnlock
  loc_CC87C2: FFreeVar var_DC = ""
  loc_CC87C9: FLdRfVar var_C4
  loc_CC87CC: FLdPr var_CC
  loc_CC87CF: from_stack_1 = clsboleto.DetaPers
  loc_CC87D4: LitI2_Byte 0
  loc_CC87D6: LitVar_Missing var_FC
  loc_CC87D9: LitI2_Byte 0
  loc_CC87DB: FLdZeroAd var_C4
  loc_CC87DE: CVarStr var_DC
  loc_CC87E1: PopAdLdVar
  loc_CC87E2: LitI4 1
  loc_CC87E7: FLdPr Me
  loc_CC87EA: MemLdStr global_116
  loc_CC87ED: AryLock
  loc_CC87F0: Ary1LdPr
  loc_CC87F1: MemLdRfVar from_stack_1.global_4
  loc_CC87F4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC87F9: AryUnlock
  loc_CC87FC: FFreeVar var_DC = ""
  loc_CC8803: FLdRfVar var_C4
  loc_CC8806: FLdPr var_CC
  loc_CC8809: from_stack_1 = clsboleto.DecaPost
  loc_CC880E: LitI2_Byte 0
  loc_CC8810: LitVar_Missing var_FC
  loc_CC8813: LitI2_Byte 0
  loc_CC8815: FLdZeroAd var_C4
  loc_CC8818: CVarStr var_DC
  loc_CC881B: PopAdLdVar
  loc_CC881C: LitI4 1
  loc_CC8821: FLdPr Me
  loc_CC8824: MemLdStr global_116
  loc_CC8827: AryLock
  loc_CC882A: Ary1LdPr
  loc_CC882B: MemLdRfVar from_stack_1.global_8
  loc_CC882E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8833: AryUnlock
  loc_CC8836: FFreeVar var_DC = ""
  loc_CC883D: FLdRfVar var_C4
  loc_CC8840: FLdPr var_CC
  loc_CC8843: from_stack_1 = clsboleto.NumePost
  loc_CC8848: LitI2_Byte 0
  loc_CC884A: LitVar_Missing var_FC
  loc_CC884D: LitI2_Byte 0
  loc_CC884F: FLdZeroAd var_C4
  loc_CC8852: CVarStr var_DC
  loc_CC8855: PopAdLdVar
  loc_CC8856: LitI4 1
  loc_CC885B: FLdPr Me
  loc_CC885E: MemLdStr global_116
  loc_CC8861: AryLock
  loc_CC8864: Ary1LdPr
  loc_CC8865: MemLdRfVar from_stack_1.global_12
  loc_CC8868: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC886D: AryUnlock
  loc_CC8870: FFreeVar var_DC = ""
  loc_CC8877: FLdRfVar var_C4
  loc_CC887A: FLdPr var_CC
  loc_CC887D: from_stack_1 = clsboleto.DebaPost
  loc_CC8882: LitI2_Byte 0
  loc_CC8884: LitVar_Missing var_FC
  loc_CC8887: LitI2_Byte 0
  loc_CC8889: FLdZeroAd var_C4
  loc_CC888C: CVarStr var_DC
  loc_CC888F: PopAdLdVar
  loc_CC8890: LitI4 1
  loc_CC8895: FLdPr Me
  loc_CC8898: MemLdStr global_116
  loc_CC889B: AryLock
  loc_CC889E: Ary1LdPr
  loc_CC889F: MemLdRfVar from_stack_1.global_16
  loc_CC88A2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC88A7: AryUnlock
  loc_CC88AA: FFreeVar var_DC = ""
  loc_CC88B1: FLdRfVar var_C4
  loc_CC88B4: FLdPr var_CC
  loc_CC88B7: from_stack_1 = clsboleto.ManzPost
  loc_CC88BC: LitI2_Byte 0
  loc_CC88BE: LitVar_Missing var_FC
  loc_CC88C1: LitI2_Byte 0
  loc_CC88C3: FLdZeroAd var_C4
  loc_CC88C6: CVarStr var_DC
  loc_CC88C9: PopAdLdVar
  loc_CC88CA: LitI4 1
  loc_CC88CF: FLdPr Me
  loc_CC88D2: MemLdStr global_116
  loc_CC88D5: AryLock
  loc_CC88D8: Ary1LdPr
  loc_CC88D9: MemLdRfVar from_stack_1.global_20
  loc_CC88DC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC88E1: AryUnlock
  loc_CC88E4: FFreeVar var_DC = ""
  loc_CC88EB: FLdRfVar var_C4
  loc_CC88EE: FLdPr var_CC
  loc_CC88F1: from_stack_1 = clsboleto.CasaPost
  loc_CC88F6: LitI2_Byte 0
  loc_CC88F8: LitVar_Missing var_FC
  loc_CC88FB: LitI2_Byte 0
  loc_CC88FD: FLdZeroAd var_C4
  loc_CC8900: CVarStr var_DC
  loc_CC8903: PopAdLdVar
  loc_CC8904: LitI4 1
  loc_CC8909: FLdPr Me
  loc_CC890C: MemLdStr global_116
  loc_CC890F: AryLock
  loc_CC8912: Ary1LdPr
  loc_CC8913: MemLdRfVar from_stack_1.global_24
  loc_CC8916: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC891B: AryUnlock
  loc_CC891E: FFreeVar var_DC = ""
  loc_CC8925: FLdRfVar var_C4
  loc_CC8928: FLdPr var_CC
  loc_CC892B: from_stack_1 = clsboleto.UbicPost
  loc_CC8930: LitI2_Byte 0
  loc_CC8932: LitVar_Missing var_FC
  loc_CC8935: LitI2_Byte 0
  loc_CC8937: FLdZeroAd var_C4
  loc_CC893A: CVarStr var_DC
  loc_CC893D: PopAdLdVar
  loc_CC893E: LitI4 1
  loc_CC8943: FLdPr Me
  loc_CC8946: MemLdStr global_116
  loc_CC8949: AryLock
  loc_CC894C: Ary1LdPr
  loc_CC894D: MemLdRfVar from_stack_1.global_28
  loc_CC8950: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8955: AryUnlock
  loc_CC8958: FFreeVar var_DC = ""
  loc_CC895F: FLdRfVar var_C4
  loc_CC8962: FLdPr var_CC
  loc_CC8965: from_stack_1 = clsboleto.DeloPost
  loc_CC896A: LitI2_Byte 0
  loc_CC896C: LitVar_Missing var_FC
  loc_CC896F: LitI2_Byte 0
  loc_CC8971: FLdZeroAd var_C4
  loc_CC8974: CVarStr var_DC
  loc_CC8977: PopAdLdVar
  loc_CC8978: LitI4 1
  loc_CC897D: FLdPr Me
  loc_CC8980: MemLdStr global_116
  loc_CC8983: AryLock
  loc_CC8986: Ary1LdPr
  loc_CC8987: MemLdRfVar from_stack_1.global_32
  loc_CC898A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC898F: AryUnlock
  loc_CC8992: FFreeVar var_DC = ""
  loc_CC8999: FLdRfVar var_C4
  loc_CC899C: FLdPr var_CC
  loc_CC899F: from_stack_1 = clsboleto.CopoPost
  loc_CC89A4: LitI2_Byte 0
  loc_CC89A6: LitVar_Missing var_FC
  loc_CC89A9: LitI2_Byte 0
  loc_CC89AB: FLdZeroAd var_C4
  loc_CC89AE: CVarStr var_DC
  loc_CC89B1: PopAdLdVar
  loc_CC89B2: LitI4 1
  loc_CC89B7: FLdPr Me
  loc_CC89BA: MemLdStr global_116
  loc_CC89BD: AryLock
  loc_CC89C0: Ary1LdPr
  loc_CC89C1: MemLdRfVar from_stack_1.global_36
  loc_CC89C4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC89C9: AryUnlock
  loc_CC89CC: FFreeVar var_DC = ""
  loc_CC89D3: FLdRfVar var_C4
  loc_CC89D6: FLdPr var_CC
  loc_CC89D9: from_stack_1 = clsboleto.CuenCtct
  loc_CC89DE: FLdRfVar var_C8
  loc_CC89E1: FLdPr var_CC
  loc_CC89E4: from_stack_1 = clsboleto.CuenCtct
  loc_CC89E9: LitVarStr var_B8, "&nbsp;"
  loc_CC89EE: FStVarCopyObj var_FC
  loc_CC89F1: FLdRfVar var_FC
  loc_CC89F4: FLdZeroAd var_C8
  loc_CC89F7: CVarStr var_DC
  loc_CC89FA: ILdRf var_C4
  loc_CC89FD: LitStr vbNullString
  loc_CC8A00: NeStr
  loc_CC8A02: CVarBoolI2 var_A8
  loc_CC8A06: FLdRfVar var_13C
  loc_CC8A09: ImpAdCallFPR4  = IIf(, , )
  loc_CC8A0E: LitI2_Byte 0
  loc_CC8A10: LitVar_Missing var_15C
  loc_CC8A13: LitI2_Byte 0
  loc_CC8A15: FLdVar var_13C
  loc_CC8A19: LitI4 1
  loc_CC8A1E: FLdPr Me
  loc_CC8A21: MemLdStr global_116
  loc_CC8A24: AryLock
  loc_CC8A27: Ary1LdPr
  loc_CC8A28: MemLdRfVar from_stack_1.global_40
  loc_CC8A2B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8A30: AryUnlock
  loc_CC8A33: FFree1Str var_C4
  loc_CC8A36: FFreeVar var_A8 = "": var_DC = "": var_FC = "": var_13C = ""
  loc_CC8A43: FLdRfVar var_DC
  loc_CC8A46: FLdPr var_CC
  loc_CC8A49: from_stack_1 = clsboleto.Vinculo
  loc_CC8A4E: LitI2_Byte 0
  loc_CC8A50: LitVar_Missing var_FC
  loc_CC8A53: LitI2_Byte 0
  loc_CC8A55: FLdVar var_DC
  loc_CC8A59: LitI4 1
  loc_CC8A5E: FLdPr Me
  loc_CC8A61: MemLdStr global_116
  loc_CC8A64: AryLock
  loc_CC8A67: Ary1LdPr
  loc_CC8A68: MemLdRfVar from_stack_1.global_44
  loc_CC8A6B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8A70: AryUnlock
  loc_CC8A73: FFreeVar var_DC = ""
  loc_CC8A7A: FLdRfVar var_C4
  loc_CC8A7D: FLdPr var_CC
  loc_CC8A80: from_stack_1 = clsboleto.CodiUsua
  loc_CC8A85: LitI2_Byte 0
  loc_CC8A87: LitVar_Missing var_FC
  loc_CC8A8A: LitI2_Byte 0
  loc_CC8A8C: FLdZeroAd var_C4
  loc_CC8A8F: CVarStr var_DC
  loc_CC8A92: PopAdLdVar
  loc_CC8A93: LitI4 1
  loc_CC8A98: FLdPr Me
  loc_CC8A9B: MemLdStr global_116
  loc_CC8A9E: AryLock
  loc_CC8AA1: Ary1LdPr
  loc_CC8AA2: MemLdRfVar from_stack_1.global_112
  loc_CC8AA5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8AAA: AryUnlock
  loc_CC8AAD: FFreeVar var_DC = ""
  loc_CC8AB4: FLdRfVar var_128
  loc_CC8AB7: FLdPr var_CC
  loc_CC8ABA: from_stack_1 = clsboleto.CodiFapa
  loc_CC8ABF: LitI2_Byte 0
  loc_CC8AC1: LitVar_Missing var_DC
  loc_CC8AC4: LitI2_Byte 0
  loc_CC8AC6: ILdRf var_128
  loc_CC8AC9: CVarI4
  loc_CC8ACD: PopAdLdVar
  loc_CC8ACE: LitI4 1
  loc_CC8AD3: FLdPr Me
  loc_CC8AD6: MemLdStr global_116
  loc_CC8AD9: AryLock
  loc_CC8ADC: Ary1LdPr
  loc_CC8ADD: MemLdRfVar from_stack_1.global_116
  loc_CC8AE0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8AE5: AryUnlock
  loc_CC8AE8: FFree1Var var_DC = ""
  loc_CC8AEB: FLdRfVar var_96
  loc_CC8AEE: FLdPr var_CC
  loc_CC8AF1: from_stack_1 = clsboleto.CuotDefa
  loc_CC8AF6: LitI2_Byte 0
  loc_CC8AF8: LitVar_Missing var_DC
  loc_CC8AFB: LitI2_Byte 0
  loc_CC8AFD: FLdI2 var_96
  loc_CC8B00: CVarI2 var_A8
  loc_CC8B03: PopAdLdVar
  loc_CC8B04: LitI4 1
  loc_CC8B09: FLdPr Me
  loc_CC8B0C: MemLdStr global_116
  loc_CC8B0F: AryLock
  loc_CC8B12: Ary1LdPr
  loc_CC8B13: MemLdRfVar from_stack_1.global_120
  loc_CC8B16: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8B1B: AryUnlock
  loc_CC8B1E: FFree1Var var_DC = ""
  loc_CC8B21: FLdRfVar var_96
  loc_CC8B24: FLdPr var_CC
  loc_CC8B27: from_stack_1 = clsboleto.CodiOfic
  loc_CC8B2C: LitI2_Byte 0
  loc_CC8B2E: LitVar_Missing var_DC
  loc_CC8B31: LitI2_Byte 0
  loc_CC8B33: FLdI2 var_96
  loc_CC8B36: CVarI2 var_A8
  loc_CC8B39: PopAdLdVar
  loc_CC8B3A: LitI4 1
  loc_CC8B3F: FLdPr Me
  loc_CC8B42: MemLdStr global_116
  loc_CC8B45: AryLock
  loc_CC8B48: Ary1LdPr
  loc_CC8B49: MemLdRfVar from_stack_1.global_124
  loc_CC8B4C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8B51: AryUnlock
  loc_CC8B54: FFree1Var var_DC = ""
  loc_CC8B57: FLdRfVar var_DC
  loc_CC8B5A: FLdPr var_CC
  loc_CC8B5D: from_stack_1 = clsboleto.FeveBole
  loc_CC8B62: LitI2_Byte 0
  loc_CC8B64: LitVar_Missing var_FC
  loc_CC8B67: LitI2_Byte 0
  loc_CC8B69: FLdVar var_DC
  loc_CC8B6D: LitI4 1
  loc_CC8B72: FLdPr Me
  loc_CC8B75: MemLdStr global_116
  loc_CC8B78: AryLock
  loc_CC8B7B: Ary1LdPr
  loc_CC8B7C: MemLdRfVar from_stack_1.global_128
  loc_CC8B7F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8B84: AryUnlock
  loc_CC8B87: FFreeVar var_DC = ""
  loc_CC8B8E: FLdRfVar var_164
  loc_CC8B91: FLdPr var_CC
  loc_CC8B94: from_stack_1 = clsboleto.TotaBole
  loc_CC8B99: LitI2_Byte 0
  loc_CC8B9B: LitVar_Missing var_DC
  loc_CC8B9E: LitI2_Byte &HFF
  loc_CC8BA0: FLdFPR8 var_164
  loc_CC8BA3: CVarR8
  loc_CC8BA7: PopAdLdVar
  loc_CC8BA8: LitI4 1
  loc_CC8BAD: FLdPr Me
  loc_CC8BB0: MemLdStr global_116
  loc_CC8BB3: AryLock
  loc_CC8BB6: Ary1LdPr
  loc_CC8BB7: MemLdRfVar from_stack_1.global_148
  loc_CC8BBA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8BBF: AryUnlock
  loc_CC8BC2: FFree1Var var_DC = ""
  loc_CC8BC5: FLdRfVar var_C4
  loc_CC8BC8: FLdPr var_CC
  loc_CC8BCB: from_stack_1 = clsboleto.ObseBole
  loc_CC8BD0: LitI2_Byte 0
  loc_CC8BD2: LitVar_Missing var_FC
  loc_CC8BD5: LitI2_Byte 0
  loc_CC8BD7: FLdZeroAd var_C4
  loc_CC8BDA: CVarStr var_DC
  loc_CC8BDD: PopAdLdVar
  loc_CC8BDE: LitI4 1
  loc_CC8BE3: FLdPr Me
  loc_CC8BE6: MemLdStr global_116
  loc_CC8BE9: AryLock
  loc_CC8BEC: Ary1LdPr
  loc_CC8BED: MemLdRfVar from_stack_1.global_152
  loc_CC8BF0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8BF5: AryUnlock
  loc_CC8BF8: FFreeVar var_DC = ""
  loc_CC8BFF: FLdRfVar var_164
  loc_CC8C02: FLdPr var_CC
  loc_CC8C05: from_stack_1 = clsboleto.ApreBole
  loc_CC8C0A: FLdFPR8 var_164
  loc_CC8C0D: LitI2_Byte 0
  loc_CC8C0F: CR8I2
  loc_CC8C10: NeR8
  loc_CC8C11: BranchF loc_CC8C4B
  loc_CC8C14: FLdRfVar var_164
  loc_CC8C17: FLdPr var_CC
  loc_CC8C1A: from_stack_1 = clsboleto.ApreBole
  loc_CC8C1F: LitI2_Byte 0
  loc_CC8C21: LitVar_Missing var_DC
  loc_CC8C24: LitI2_Byte &HFF
  loc_CC8C26: FLdFPR8 var_164
  loc_CC8C29: CVarR8
  loc_CC8C2D: PopAdLdVar
  loc_CC8C2E: LitI4 1
  loc_CC8C33: FLdPr Me
  loc_CC8C36: MemLdStr global_116
  loc_CC8C39: AryLock
  loc_CC8C3C: Ary1LdPr
  loc_CC8C3D: MemLdRfVar from_stack_1.global_140
  loc_CC8C40: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8C45: AryUnlock
  loc_CC8C48: FFree1Var var_DC = ""
  loc_CC8C4B: FLdRfVar var_C4
  loc_CC8C4E: Call Proc_163_34_AB85DC()
  loc_CC8C53: LitI2_Byte 0
  loc_CC8C55: LitVar_Missing var_FC
  loc_CC8C58: LitI2_Byte 0
  loc_CC8C5A: FLdZeroAd var_C4
  loc_CC8C5D: CVarStr var_DC
  loc_CC8C60: PopAdLdVar
  loc_CC8C61: LitI4 1
  loc_CC8C66: FLdPr Me
  loc_CC8C69: MemLdStr global_116
  loc_CC8C6C: AryLock
  loc_CC8C6F: Ary1LdPr
  loc_CC8C70: MemLdRfVar from_stack_1.global_144
  loc_CC8C73: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8C78: AryUnlock
  loc_CC8C7B: FFreeVar var_DC = ""
  loc_CC8C82: FLdPr Me
  loc_CC8C85: MemLdUI1 global_120
  loc_CC8C89: FStUI1 var_176
  loc_CC8C8D: FLdUI1
  loc_CC8C91: LitI2_Byte 2
  loc_CC8C93: CUI1I2
  loc_CC8C95: EqI2
  loc_CC8C96: BranchF loc_CC8E54
  loc_CC8C99: FLdRfVar var_DC
  loc_CC8C9C: FLdPr var_CC
  loc_CC8C9F: from_stack_1 = clsboleto.DetaCall
  loc_CC8CA4: LitI2_Byte 0
  loc_CC8CA6: LitVar_Missing var_FC
  loc_CC8CA9: LitI2_Byte 0
  loc_CC8CAB: FLdVar var_DC
  loc_CC8CAF: LitI4 1
  loc_CC8CB4: FLdPr Me
  loc_CC8CB7: MemLdStr global_116
  loc_CC8CBA: AryLock
  loc_CC8CBD: Ary1LdPr
  loc_CC8CBE: MemLdRfVar from_stack_1.global_156
  loc_CC8CC1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8CC6: AryUnlock
  loc_CC8CC9: FFreeVar var_DC = ""
  loc_CC8CD0: FLdRfVar var_DC
  loc_CC8CD3: FLdPr var_CC
  loc_CC8CD6: from_stack_1 = clsboleto.NucaCome
  loc_CC8CDB: LitI2_Byte 0
  loc_CC8CDD: LitVar_Missing var_FC
  loc_CC8CE0: LitI2_Byte 0
  loc_CC8CE2: FLdVar var_DC
  loc_CC8CE6: LitI4 1
  loc_CC8CEB: FLdPr Me
  loc_CC8CEE: MemLdStr global_116
  loc_CC8CF1: AryLock
  loc_CC8CF4: Ary1LdPr
  loc_CC8CF5: MemLdRfVar from_stack_1.global_160
  loc_CC8CF8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8CFD: AryUnlock
  loc_CC8D00: FFreeVar var_DC = ""
  loc_CC8D07: FLdRfVar var_DC
  loc_CC8D0A: FLdPr var_CC
  loc_CC8D0D: from_stack_1 = clsboleto.UbicCome
  loc_CC8D12: LitI2_Byte 0
  loc_CC8D14: LitVar_Missing var_FC
  loc_CC8D17: LitI2_Byte 0
  loc_CC8D19: FLdVar var_DC
  loc_CC8D1D: LitI4 1
  loc_CC8D22: FLdPr Me
  loc_CC8D25: MemLdStr global_116
  loc_CC8D28: AryLock
  loc_CC8D2B: Ary1LdPr
  loc_CC8D2C: MemLdRfVar from_stack_1.global_164
  loc_CC8D2F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8D34: AryUnlock
  loc_CC8D37: FFreeVar var_DC = ""
  loc_CC8D3E: FLdRfVar var_DC
  loc_CC8D41: FLdPr var_CC
  loc_CC8D44: from_stack_1 = clsboleto.CodiBarr
  loc_CC8D49: LitI2_Byte 0
  loc_CC8D4B: LitVar_Missing var_FC
  loc_CC8D4E: LitI2_Byte 0
  loc_CC8D50: FLdVar var_DC
  loc_CC8D54: LitI4 1
  loc_CC8D59: FLdPr Me
  loc_CC8D5C: MemLdStr global_116
  loc_CC8D5F: AryLock
  loc_CC8D62: Ary1LdPr
  loc_CC8D63: MemLdRfVar from_stack_1.global_168
  loc_CC8D66: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8D6B: AryUnlock
  loc_CC8D6E: FFreeVar var_DC = ""
  loc_CC8D75: FLdRfVar var_DC
  loc_CC8D78: FLdPr var_CC
  loc_CC8D7B: from_stack_1 = clsboleto.DetaBarr
  loc_CC8D80: LitI2_Byte 0
  loc_CC8D82: LitVar_Missing var_FC
  loc_CC8D85: LitI2_Byte 0
  loc_CC8D87: FLdVar var_DC
  loc_CC8D8B: LitI4 1
  loc_CC8D90: FLdPr Me
  loc_CC8D93: MemLdStr global_116
  loc_CC8D96: AryLock
  loc_CC8D99: Ary1LdPr
  loc_CC8D9A: MemLdRfVar from_stack_1.global_172
  loc_CC8D9D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8DA2: AryUnlock
  loc_CC8DA5: FFreeVar var_DC = ""
  loc_CC8DAC: FLdRfVar var_DC
  loc_CC8DAF: FLdPr var_CC
  loc_CC8DB2: from_stack_1 = clsboleto.MansBole
  loc_CC8DB7: LitI2_Byte 0
  loc_CC8DB9: LitVar_Missing var_FC
  loc_CC8DBC: LitI2_Byte 0
  loc_CC8DBE: FLdVar var_DC
  loc_CC8DC2: LitI4 1
  loc_CC8DC7: FLdPr Me
  loc_CC8DCA: MemLdStr global_116
  loc_CC8DCD: AryLock
  loc_CC8DD0: Ary1LdPr
  loc_CC8DD1: MemLdRfVar from_stack_1.global_176
  loc_CC8DD4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8DD9: AryUnlock
  loc_CC8DDC: FFreeVar var_DC = ""
  loc_CC8DE3: FLdRfVar var_DC
  loc_CC8DE6: FLdPr var_CC
  loc_CC8DE9: from_stack_1 = clsboleto.CasaBole
  loc_CC8DEE: LitI2_Byte 0
  loc_CC8DF0: LitVar_Missing var_FC
  loc_CC8DF3: LitI2_Byte 0
  loc_CC8DF5: FLdVar var_DC
  loc_CC8DF9: LitI4 1
  loc_CC8DFE: FLdPr Me
  loc_CC8E01: MemLdStr global_116
  loc_CC8E04: AryLock
  loc_CC8E07: Ary1LdPr
  loc_CC8E08: MemLdRfVar from_stack_1.global_180
  loc_CC8E0B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8E10: AryUnlock
  loc_CC8E13: FFreeVar var_DC = ""
  loc_CC8E1A: FLdRfVar var_DC
  loc_CC8E1D: FLdPr var_CC
  loc_CC8E20: from_stack_1 = clsboleto.DetaLoca
  loc_CC8E25: LitI2_Byte 0
  loc_CC8E27: LitVar_Missing var_FC
  loc_CC8E2A: LitI2_Byte 0
  loc_CC8E2C: FLdVar var_DC
  loc_CC8E30: LitI4 1
  loc_CC8E35: FLdPr Me
  loc_CC8E38: MemLdStr global_116
  loc_CC8E3B: AryLock
  loc_CC8E3E: Ary1LdPr
  loc_CC8E3F: MemLdRfVar from_stack_1.global_184
  loc_CC8E42: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8E47: AryUnlock
  loc_CC8E4A: FFreeVar var_DC = ""
  loc_CC8E51: Branch loc_CC9435
  loc_CC8E54: FLdUI1
  loc_CC8E58: LitI2_Byte 3
  loc_CC8E5A: CUI1I2
  loc_CC8E5C: EqI2
  loc_CC8E5D: BranchF loc_CC8E63
  loc_CC8E60: Branch loc_CC9435
  loc_CC8E63: FLdUI1
  loc_CC8E67: LitI2_Byte 4
  loc_CC8E69: CUI1I2
  loc_CC8E6B: EqI2
  loc_CC8E6C: BranchF loc_CC902A
  loc_CC8E6F: FLdRfVar var_DC
  loc_CC8E72: FLdPr var_CC
  loc_CC8E75: from_stack_1 = clsboleto.DetaCeme
  loc_CC8E7A: LitI2_Byte 0
  loc_CC8E7C: LitVar_Missing var_FC
  loc_CC8E7F: LitI2_Byte 0
  loc_CC8E81: FLdVar var_DC
  loc_CC8E85: LitI4 1
  loc_CC8E8A: FLdPr Me
  loc_CC8E8D: MemLdStr global_116
  loc_CC8E90: AryLock
  loc_CC8E93: Ary1LdPr
  loc_CC8E94: MemLdRfVar from_stack_1.sImprimirApremioEmbargo
  loc_CC8E97: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8E9C: AryUnlock
  loc_CC8E9F: FFreeVar var_DC = ""
  loc_CC8EA6: FLdRfVar var_DC
  loc_CC8EA9: FLdPr var_CC
  loc_CC8EAC: from_stack_1 = clsboleto.DetaTise
  loc_CC8EB1: LitI2_Byte 0
  loc_CC8EB3: LitVar_Missing var_FC
  loc_CC8EB6: LitI2_Byte 0
  loc_CC8EB8: FLdVar var_DC
  loc_CC8EBC: LitI4 1
  loc_CC8EC1: FLdPr Me
  loc_CC8EC4: MemLdStr global_116
  loc_CC8EC7: AryLock
  loc_CC8ECA: Ary1LdPr
  loc_CC8ECB: MemLdRfVar from_stack_1.global_72
  loc_CC8ECE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8ED3: AryUnlock
  loc_CC8ED6: FFreeVar var_DC = ""
  loc_CC8EDD: FLdRfVar var_DC
  loc_CC8EE0: FLdPr var_CC
  loc_CC8EE3: from_stack_1 = clsboleto.NumeDifu
  loc_CC8EE8: LitI2_Byte 0
  loc_CC8EEA: LitVar_Missing var_FC
  loc_CC8EED: LitI2_Byte 0
  loc_CC8EEF: FLdVar var_DC
  loc_CC8EF3: LitI4 1
  loc_CC8EF8: FLdPr Me
  loc_CC8EFB: MemLdStr global_116
  loc_CC8EFE: AryLock
  loc_CC8F01: Ary1LdPr
  loc_CC8F02: MemLdRfVar from_stack_1.global_76
  loc_CC8F05: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8F0A: AryUnlock
  loc_CC8F0D: FFreeVar var_DC = ""
  loc_CC8F14: FLdRfVar var_DC
  loc_CC8F17: FLdPr var_CC
  loc_CC8F1A: from_stack_1 = clsboleto.FilaDifu
  loc_CC8F1F: LitI2_Byte 0
  loc_CC8F21: LitVar_Missing var_FC
  loc_CC8F24: LitI2_Byte 0
  loc_CC8F26: FLdVar var_DC
  loc_CC8F2A: LitI4 1
  loc_CC8F2F: FLdPr Me
  loc_CC8F32: MemLdStr global_116
  loc_CC8F35: AryLock
  loc_CC8F38: Ary1LdPr
  loc_CC8F39: MemLdRfVar from_stack_1.global_80
  loc_CC8F3C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8F41: AryUnlock
  loc_CC8F44: FFreeVar var_DC = ""
  loc_CC8F4B: FLdRfVar var_DC
  loc_CC8F4E: FLdPr var_CC
  loc_CC8F51: from_stack_1 = clsboleto.NoseDifu
  loc_CC8F56: LitI2_Byte 0
  loc_CC8F58: LitVar_Missing var_FC
  loc_CC8F5B: LitI2_Byte 0
  loc_CC8F5D: FLdVar var_DC
  loc_CC8F61: LitI4 1
  loc_CC8F66: FLdPr Me
  loc_CC8F69: MemLdStr global_116
  loc_CC8F6C: AryLock
  loc_CC8F6F: Ary1LdPr
  loc_CC8F70: MemLdRfVar from_stack_1.global_84
  loc_CC8F73: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8F78: AryUnlock
  loc_CC8F7B: FFreeVar var_DC = ""
  loc_CC8F82: FLdRfVar var_DC
  loc_CC8F85: FLdPr var_CC
  loc_CC8F88: from_stack_1 = clsboleto.SeccDifu
  loc_CC8F8D: LitI2_Byte 0
  loc_CC8F8F: LitVar_Missing var_FC
  loc_CC8F92: LitI2_Byte 0
  loc_CC8F94: FLdVar var_DC
  loc_CC8F98: LitI4 1
  loc_CC8F9D: FLdPr Me
  loc_CC8FA0: MemLdStr global_116
  loc_CC8FA3: AryLock
  loc_CC8FA6: Ary1LdPr
  loc_CC8FA7: MemLdRfVar from_stack_1.global_88
  loc_CC8FAA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8FAF: AryUnlock
  loc_CC8FB2: FFreeVar var_DC = ""
  loc_CC8FB9: FLdRfVar var_DC
  loc_CC8FBC: FLdPr var_CC
  loc_CC8FBF: from_stack_1 = clsboleto.DetaDedi
  loc_CC8FC4: LitI2_Byte 0
  loc_CC8FC6: LitVar_Missing var_FC
  loc_CC8FC9: LitI2_Byte 0
  loc_CC8FCB: FLdVar var_DC
  loc_CC8FCF: LitI4 1
  loc_CC8FD4: FLdPr Me
  loc_CC8FD7: MemLdStr global_116
  loc_CC8FDA: AryLock
  loc_CC8FDD: Ary1LdPr
  loc_CC8FDE: MemLdRfVar from_stack_1.global_92
  loc_CC8FE1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC8FE6: AryUnlock
  loc_CC8FE9: FFreeVar var_DC = ""
  loc_CC8FF0: FLdRfVar var_DC
  loc_CC8FF3: FLdPr var_CC
  loc_CC8FF6: from_stack_1 = clsboleto.FeveDifu
  loc_CC8FFB: LitI2_Byte 0
  loc_CC8FFD: LitVar_Missing var_FC
  loc_CC9000: LitI2_Byte 0
  loc_CC9002: FLdVar var_DC
  loc_CC9006: LitI4 1
  loc_CC900B: FLdPr Me
  loc_CC900E: MemLdStr global_116
  loc_CC9011: AryLock
  loc_CC9014: Ary1LdPr
  loc_CC9015: MemLdRfVar from_stack_1.global_96
  loc_CC9018: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC901D: AryUnlock
  loc_CC9020: FFreeVar var_DC = ""
  loc_CC9027: Branch loc_CC9435
  loc_CC902A: FLdUI1
  loc_CC902E: LitI2_Byte 6
  loc_CC9030: CUI1I2
  loc_CC9032: EqI2
  loc_CC9033: BranchF loc_CC91F1
  loc_CC9036: FLdRfVar var_DC
  loc_CC9039: FLdPr var_CC
  loc_CC903C: from_stack_1 = clsboleto.DetaCall
  loc_CC9041: LitI2_Byte 0
  loc_CC9043: LitVar_Missing var_FC
  loc_CC9046: LitI2_Byte 0
  loc_CC9048: FLdVar var_DC
  loc_CC904C: LitI4 1
  loc_CC9051: FLdPr Me
  loc_CC9054: MemLdStr global_116
  loc_CC9057: AryLock
  loc_CC905A: Ary1LdPr
  loc_CC905B: MemLdRfVar from_stack_1.global_156
  loc_CC905E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9063: AryUnlock
  loc_CC9066: FFreeVar var_DC = ""
  loc_CC906D: FLdRfVar var_DC
  loc_CC9070: FLdPr var_CC
  loc_CC9073: from_stack_1 = clsboleto.NucaCome
  loc_CC9078: LitI2_Byte 0
  loc_CC907A: LitVar_Missing var_FC
  loc_CC907D: LitI2_Byte 0
  loc_CC907F: FLdVar var_DC
  loc_CC9083: LitI4 1
  loc_CC9088: FLdPr Me
  loc_CC908B: MemLdStr global_116
  loc_CC908E: AryLock
  loc_CC9091: Ary1LdPr
  loc_CC9092: MemLdRfVar from_stack_1.global_160
  loc_CC9095: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC909A: AryUnlock
  loc_CC909D: FFreeVar var_DC = ""
  loc_CC90A4: FLdRfVar var_DC
  loc_CC90A7: FLdPr var_CC
  loc_CC90AA: from_stack_1 = clsboleto.UbicCome
  loc_CC90AF: LitI2_Byte 0
  loc_CC90B1: LitVar_Missing var_FC
  loc_CC90B4: LitI2_Byte 0
  loc_CC90B6: FLdVar var_DC
  loc_CC90BA: LitI4 1
  loc_CC90BF: FLdPr Me
  loc_CC90C2: MemLdStr global_116
  loc_CC90C5: AryLock
  loc_CC90C8: Ary1LdPr
  loc_CC90C9: MemLdRfVar from_stack_1.global_164
  loc_CC90CC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC90D1: AryUnlock
  loc_CC90D4: FFreeVar var_DC = ""
  loc_CC90DB: FLdRfVar var_DC
  loc_CC90DE: FLdPr var_CC
  loc_CC90E1: from_stack_1 = clsboleto.CodiBarr
  loc_CC90E6: LitI2_Byte 0
  loc_CC90E8: LitVar_Missing var_FC
  loc_CC90EB: LitI2_Byte 0
  loc_CC90ED: FLdVar var_DC
  loc_CC90F1: LitI4 1
  loc_CC90F6: FLdPr Me
  loc_CC90F9: MemLdStr global_116
  loc_CC90FC: AryLock
  loc_CC90FF: Ary1LdPr
  loc_CC9100: MemLdRfVar from_stack_1.global_168
  loc_CC9103: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9108: AryUnlock
  loc_CC910B: FFreeVar var_DC = ""
  loc_CC9112: FLdRfVar var_DC
  loc_CC9115: FLdPr var_CC
  loc_CC9118: from_stack_1 = clsboleto.DetaBarr
  loc_CC911D: LitI2_Byte 0
  loc_CC911F: LitVar_Missing var_FC
  loc_CC9122: LitI2_Byte 0
  loc_CC9124: FLdVar var_DC
  loc_CC9128: LitI4 1
  loc_CC912D: FLdPr Me
  loc_CC9130: MemLdStr global_116
  loc_CC9133: AryLock
  loc_CC9136: Ary1LdPr
  loc_CC9137: MemLdRfVar from_stack_1.global_172
  loc_CC913A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC913F: AryUnlock
  loc_CC9142: FFreeVar var_DC = ""
  loc_CC9149: FLdRfVar var_DC
  loc_CC914C: FLdPr var_CC
  loc_CC914F: from_stack_1 = clsboleto.MansBole
  loc_CC9154: LitI2_Byte 0
  loc_CC9156: LitVar_Missing var_FC
  loc_CC9159: LitI2_Byte 0
  loc_CC915B: FLdVar var_DC
  loc_CC915F: LitI4 1
  loc_CC9164: FLdPr Me
  loc_CC9167: MemLdStr global_116
  loc_CC916A: AryLock
  loc_CC916D: Ary1LdPr
  loc_CC916E: MemLdRfVar from_stack_1.global_176
  loc_CC9171: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9176: AryUnlock
  loc_CC9179: FFreeVar var_DC = ""
  loc_CC9180: FLdRfVar var_DC
  loc_CC9183: FLdPr var_CC
  loc_CC9186: from_stack_1 = clsboleto.CasaBole
  loc_CC918B: LitI2_Byte 0
  loc_CC918D: LitVar_Missing var_FC
  loc_CC9190: LitI2_Byte 0
  loc_CC9192: FLdVar var_DC
  loc_CC9196: LitI4 1
  loc_CC919B: FLdPr Me
  loc_CC919E: MemLdStr global_116
  loc_CC91A1: AryLock
  loc_CC91A4: Ary1LdPr
  loc_CC91A5: MemLdRfVar from_stack_1.global_180
  loc_CC91A8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC91AD: AryUnlock
  loc_CC91B0: FFreeVar var_DC = ""
  loc_CC91B7: FLdRfVar var_DC
  loc_CC91BA: FLdPr var_CC
  loc_CC91BD: from_stack_1 = clsboleto.DetaLoca
  loc_CC91C2: LitI2_Byte 0
  loc_CC91C4: LitVar_Missing var_FC
  loc_CC91C7: LitI2_Byte 0
  loc_CC91C9: FLdVar var_DC
  loc_CC91CD: LitI4 1
  loc_CC91D2: FLdPr Me
  loc_CC91D5: MemLdStr global_116
  loc_CC91D8: AryLock
  loc_CC91DB: Ary1LdPr
  loc_CC91DC: MemLdRfVar from_stack_1.global_184
  loc_CC91DF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC91E4: AryUnlock
  loc_CC91E7: FFreeVar var_DC = ""
  loc_CC91EE: Branch loc_CC9435
  loc_CC91F1: FLdUI1
  loc_CC91F5: LitI2_Byte 7
  loc_CC91F7: CUI1I2
  loc_CC91F9: EqI2
  loc_CC91FA: BranchF loc_CC93B8
  loc_CC91FD: FLdRfVar var_DC
  loc_CC9200: FLdPr var_CC
  loc_CC9203: from_stack_1 = clsboleto.DetaCall
  loc_CC9208: LitI2_Byte 0
  loc_CC920A: LitVar_Missing var_FC
  loc_CC920D: LitI2_Byte 0
  loc_CC920F: FLdVar var_DC
  loc_CC9213: LitI4 1
  loc_CC9218: FLdPr Me
  loc_CC921B: MemLdStr global_116
  loc_CC921E: AryLock
  loc_CC9221: Ary1LdPr
  loc_CC9222: MemLdRfVar from_stack_1.global_156
  loc_CC9225: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC922A: AryUnlock
  loc_CC922D: FFreeVar var_DC = ""
  loc_CC9234: FLdRfVar var_DC
  loc_CC9237: FLdPr var_CC
  loc_CC923A: from_stack_1 = clsboleto.NucaCome
  loc_CC923F: LitI2_Byte 0
  loc_CC9241: LitVar_Missing var_FC
  loc_CC9244: LitI2_Byte 0
  loc_CC9246: FLdVar var_DC
  loc_CC924A: LitI4 1
  loc_CC924F: FLdPr Me
  loc_CC9252: MemLdStr global_116
  loc_CC9255: AryLock
  loc_CC9258: Ary1LdPr
  loc_CC9259: MemLdRfVar from_stack_1.global_160
  loc_CC925C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9261: AryUnlock
  loc_CC9264: FFreeVar var_DC = ""
  loc_CC926B: FLdRfVar var_DC
  loc_CC926E: FLdPr var_CC
  loc_CC9271: from_stack_1 = clsboleto.UbicCome
  loc_CC9276: LitI2_Byte 0
  loc_CC9278: LitVar_Missing var_FC
  loc_CC927B: LitI2_Byte 0
  loc_CC927D: FLdVar var_DC
  loc_CC9281: LitI4 1
  loc_CC9286: FLdPr Me
  loc_CC9289: MemLdStr global_116
  loc_CC928C: AryLock
  loc_CC928F: Ary1LdPr
  loc_CC9290: MemLdRfVar from_stack_1.global_164
  loc_CC9293: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9298: AryUnlock
  loc_CC929B: FFreeVar var_DC = ""
  loc_CC92A2: FLdRfVar var_DC
  loc_CC92A5: FLdPr var_CC
  loc_CC92A8: from_stack_1 = clsboleto.CodiBarr
  loc_CC92AD: LitI2_Byte 0
  loc_CC92AF: LitVar_Missing var_FC
  loc_CC92B2: LitI2_Byte 0
  loc_CC92B4: FLdVar var_DC
  loc_CC92B8: LitI4 1
  loc_CC92BD: FLdPr Me
  loc_CC92C0: MemLdStr global_116
  loc_CC92C3: AryLock
  loc_CC92C6: Ary1LdPr
  loc_CC92C7: MemLdRfVar from_stack_1.global_168
  loc_CC92CA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC92CF: AryUnlock
  loc_CC92D2: FFreeVar var_DC = ""
  loc_CC92D9: FLdRfVar var_DC
  loc_CC92DC: FLdPr var_CC
  loc_CC92DF: from_stack_1 = clsboleto.DetaBarr
  loc_CC92E4: LitI2_Byte 0
  loc_CC92E6: LitVar_Missing var_FC
  loc_CC92E9: LitI2_Byte 0
  loc_CC92EB: FLdVar var_DC
  loc_CC92EF: LitI4 1
  loc_CC92F4: FLdPr Me
  loc_CC92F7: MemLdStr global_116
  loc_CC92FA: AryLock
  loc_CC92FD: Ary1LdPr
  loc_CC92FE: MemLdRfVar from_stack_1.global_172
  loc_CC9301: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9306: AryUnlock
  loc_CC9309: FFreeVar var_DC = ""
  loc_CC9310: FLdRfVar var_DC
  loc_CC9313: FLdPr var_CC
  loc_CC9316: from_stack_1 = clsboleto.MansBole
  loc_CC931B: LitI2_Byte 0
  loc_CC931D: LitVar_Missing var_FC
  loc_CC9320: LitI2_Byte 0
  loc_CC9322: FLdVar var_DC
  loc_CC9326: LitI4 1
  loc_CC932B: FLdPr Me
  loc_CC932E: MemLdStr global_116
  loc_CC9331: AryLock
  loc_CC9334: Ary1LdPr
  loc_CC9335: MemLdRfVar from_stack_1.global_176
  loc_CC9338: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC933D: AryUnlock
  loc_CC9340: FFreeVar var_DC = ""
  loc_CC9347: FLdRfVar var_DC
  loc_CC934A: FLdPr var_CC
  loc_CC934D: from_stack_1 = clsboleto.CasaBole
  loc_CC9352: LitI2_Byte 0
  loc_CC9354: LitVar_Missing var_FC
  loc_CC9357: LitI2_Byte 0
  loc_CC9359: FLdVar var_DC
  loc_CC935D: LitI4 1
  loc_CC9362: FLdPr Me
  loc_CC9365: MemLdStr global_116
  loc_CC9368: AryLock
  loc_CC936B: Ary1LdPr
  loc_CC936C: MemLdRfVar from_stack_1.global_180
  loc_CC936F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9374: AryUnlock
  loc_CC9377: FFreeVar var_DC = ""
  loc_CC937E: FLdRfVar var_DC
  loc_CC9381: FLdPr var_CC
  loc_CC9384: from_stack_1 = clsboleto.DetaLoca
  loc_CC9389: LitI2_Byte 0
  loc_CC938B: LitVar_Missing var_FC
  loc_CC938E: LitI2_Byte 0
  loc_CC9390: FLdVar var_DC
  loc_CC9394: LitI4 1
  loc_CC9399: FLdPr Me
  loc_CC939C: MemLdStr global_116
  loc_CC939F: AryLock
  loc_CC93A2: Ary1LdPr
  loc_CC93A3: MemLdRfVar from_stack_1.global_184
  loc_CC93A6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC93AB: AryUnlock
  loc_CC93AE: FFreeVar var_DC = ""
  loc_CC93B5: Branch loc_CC9435
  loc_CC93B8: FLdUI1
  loc_CC93BC: LitI2_Byte 8
  loc_CC93BE: CUI1I2
  loc_CC93C0: EqI2
  loc_CC93C1: BranchF loc_CC9435
  loc_CC93C4: FLdRfVar var_C4
  loc_CC93C7: FLdPr var_CC
  loc_CC93CA: from_stack_1 = clsboleto.ExpeBole
  loc_CC93CF: LitI2_Byte 0
  loc_CC93D1: LitVar_Missing var_FC
  loc_CC93D4: LitI2_Byte 0
  loc_CC93D6: FLdZeroAd var_C4
  loc_CC93D9: CVarStr var_DC
  loc_CC93DC: PopAdLdVar
  loc_CC93DD: LitI4 1
  loc_CC93E2: FLdPr Me
  loc_CC93E5: MemLdStr global_116
  loc_CC93E8: AryLock
  loc_CC93EB: Ary1LdPr
  loc_CC93EC: MemLdRfVar from_stack_1.global_104
  loc_CC93EF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC93F4: AryUnlock
  loc_CC93F7: FFreeVar var_DC = ""
  loc_CC93FE: FLdRfVar var_DC
  loc_CC9401: FLdPr var_CC
  loc_CC9404: from_stack_1 = clsboleto.FealBole
  loc_CC9409: LitI2_Byte 0
  loc_CC940B: LitVar_Missing var_FC
  loc_CC940E: LitI2_Byte 0
  loc_CC9410: FLdVar var_DC
  loc_CC9414: LitI4 1
  loc_CC9419: FLdPr Me
  loc_CC941C: MemLdStr global_116
  loc_CC941F: AryLock
  loc_CC9422: Ary1LdPr
  loc_CC9423: MemLdRfVar from_stack_1.global_108
  loc_CC9426: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC942B: AryUnlock
  loc_CC942E: FFreeVar var_DC = ""
  loc_CC9435: LitNothing
  loc_CC9437: FStAd var_CC 
  loc_CC943B: FLdPr Me
  loc_CC943E: MemLdRfVar from_stack_1.global_100
  loc_CC9441: NewIfNullAd
  loc_CC9444: FStAd var_17C 
  loc_CC9448: FLdPr Me
  loc_CC944B: MemLdUI1 global_120
  loc_CC944F: CI2UI1
  loc_CC9451: LitI2_Byte 8
  loc_CC9453: EqI2
  loc_CC9454: BranchF loc_CC9889
  loc_CC9457: LitStr "SELECT CantDede, devadeta.CodiSede, DetaSede, PrunDede, SubtDede, DescDede, TotaDede"
  loc_CC945A: LitStr " FROM devadeta"
  loc_CC945D: ConcatStr
  loc_CC945E: FStStrNoPop var_C4
  loc_CC9461: LitStr " LEFT JOIN servdeva ON servdeva.PeriOrde = devadeta.PeriOrde AND servdeva.CodiSede = devadeta.CodiSede"
  loc_CC9464: ConcatStr
  loc_CC9465: FStStrNoPop var_C8
  loc_CC9468: LitStr " WHERE PeriBole = "
  loc_CC946B: ConcatStr
  loc_CC946C: FStStrNoPop var_E0
  loc_CC946F: FLdPr Me
  loc_CC9472: VCallAd Control_ID_PeriBoleMsk
  loc_CC9475: FStAdFunc var_BC
  loc_CC9478: FLdPr var_BC
  loc_CC947B: LateIdLdVar var_DC DispID_22 0
  loc_CC9482: CStrVarTmp
  loc_CC9483: FStStrNoPop var_E4
  loc_CC9486: ConcatStr
  loc_CC9487: FStStrNoPop var_E8
  loc_CC948A: LitStr " AND devadeta.NumeBole = "
  loc_CC948D: ConcatStr
  loc_CC948E: FStStrNoPop var_100
  loc_CC9491: FLdPr Me
  loc_CC9494: VCallAd Control_ID_NumeBoleMsk
  loc_CC9497: FStAdFunc var_EC
  loc_CC949A: FLdPr var_EC
  loc_CC949D: LateIdLdVar var_FC DispID_22 0
  loc_CC94A4: CStrVarTmp
  loc_CC94A5: FStStrNoPop var_104
  loc_CC94A8: ConcatStr
  loc_CC94A9: FStStrNoPop var_108
  loc_CC94AC: LitStr " ORDER BY PeriCtct, BimeCtct"
  loc_CC94AF: ConcatStr
  loc_CC94B0: FStStrNoPop var_10C
  loc_CC94B3: FLdPr var_17C
  loc_CC94B6: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC94BB: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_100 = "": var_104 = "": var_108 = ""
  loc_CC94D0: FFreeAd var_BC = ""
  loc_CC94D7: FFreeVar var_DC = ""
  loc_CC94DE: FLdRfVar var_128
  loc_CC94E1: FLdPr var_17C
  loc_CC94E4: from_stack_1 = clsdetabole.RecordCount
  loc_CC94E9: ILdRf var_128
  loc_CC94EC: LitI4 0
  loc_CC94F1: EqI4
  loc_CC94F2: BranchF loc_CC9500
  loc_CC94F5: LitStr "No se ha generado detalle para el boleto"
  loc_CC94F8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC94FD: Branch loc_CC9D74
  loc_CC9500: FLdPr var_17C
  loc_CC9503: Call clsdetabole.MoveFirst()
  loc_CC9508: FLdRfVar var_128
  loc_CC950B: FLdPr var_17C
  loc_CC950E: from_stack_1 = clsdetabole.RecordCount
  loc_CC9513: LitI4 0
  loc_CC9518: ILdRf var_128
  loc_CC951B: LitI4 1
  loc_CC9520: FLdPr Me
  loc_CC9523: MemLdStr global_116
  loc_CC9526: Ary1LdPr
  loc_CC9527: MemLdRfVar from_stack_1.global_100
  loc_CC952A: Redim
  loc_CC9534: LitI2_Byte 1
  loc_CC9536: FLdPr Me
  loc_CC9539: MemLdRfVar from_stack_1.global_130
  loc_CC953C: LitI4 1
  loc_CC9541: FLdPr Me
  loc_CC9544: MemLdStr global_116
  loc_CC9547: Ary1LdPr
  loc_CC9548: MemLdStr global_100
  loc_CC954B: LitI2_Byte 1
  loc_CC954D: FnUBound
  loc_CC954F: CI2I4
  loc_CC9550: ForI2 var_180
  loc_CC9556: FLdRfVar var_164
  loc_CC9559: FLdPr var_17C
  loc_CC955C: from_stack_1 = clsdetabole.CantDede
  loc_CC9561: LitI2_Byte 0
  loc_CC9563: LitVar_Missing var_DC
  loc_CC9566: LitI2_Byte 0
  loc_CC9568: FLdFPR8 var_164
  loc_CC956B: CVarR8
  loc_CC956F: PopAdLdVar
  loc_CC9570: FLdPr Me
  loc_CC9573: MemLdI2 global_130
  loc_CC9576: CI4UI1
  loc_CC9577: LitI4 1
  loc_CC957C: FLdPr Me
  loc_CC957F: MemLdStr global_116
  loc_CC9582: AryLock
  loc_CC9585: Ary1LdPr
  loc_CC9586: MemLdStr global_100
  loc_CC9589: AryLock
  loc_CC958C: Ary1LdPr
  loc_CC958D: MemLdRfVar from_stack_1.global_0
  loc_CC9590: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9595: AryUnlock
  loc_CC9598: AryUnlock
  loc_CC959B: FFree1Var var_DC = ""
  loc_CC959E: FLdRfVar var_128
  loc_CC95A1: FLdPr var_17C
  loc_CC95A4: from_stack_1 = clsdetabole.CodiSede
  loc_CC95A9: LitI2_Byte 0
  loc_CC95AB: LitVar_Missing var_DC
  loc_CC95AE: LitI2_Byte 0
  loc_CC95B0: ILdRf var_128
  loc_CC95B3: CVarI4
  loc_CC95B7: PopAdLdVar
  loc_CC95B8: FLdPr Me
  loc_CC95BB: MemLdI2 global_130
  loc_CC95BE: CI4UI1
  loc_CC95BF: LitI4 1
  loc_CC95C4: FLdPr Me
  loc_CC95C7: MemLdStr global_116
  loc_CC95CA: AryLock
  loc_CC95CD: Ary1LdPr
  loc_CC95CE: MemLdStr global_100
  loc_CC95D1: AryLock
  loc_CC95D4: Ary1LdPr
  loc_CC95D5: MemLdRfVar from_stack_1.global_4
  loc_CC95D8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC95DD: AryUnlock
  loc_CC95E0: AryUnlock
  loc_CC95E3: FFree1Var var_DC = ""
  loc_CC95E6: FLdRfVar var_DC
  loc_CC95E9: FLdPr var_17C
  loc_CC95EC: from_stack_1 = clsdetabole.DetaSede
  loc_CC95F1: LitI2_Byte 0
  loc_CC95F3: LitVar_Missing var_FC
  loc_CC95F6: LitI2_Byte 0
  loc_CC95F8: FLdVar var_DC
  loc_CC95FC: FLdPr Me
  loc_CC95FF: MemLdI2 global_130
  loc_CC9602: CI4UI1
  loc_CC9603: LitI4 1
  loc_CC9608: FLdPr Me
  loc_CC960B: MemLdStr global_116
  loc_CC960E: AryLock
  loc_CC9611: Ary1LdPr
  loc_CC9612: MemLdStr global_100
  loc_CC9615: AryLock
  loc_CC9618: Ary1LdPr
  loc_CC9619: MemLdRfVar from_stack_1.global_8
  loc_CC961C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9621: AryUnlock
  loc_CC9624: AryUnlock
  loc_CC9627: FFreeVar var_DC = ""
  loc_CC962E: FLdRfVar var_164
  loc_CC9631: FLdPr var_17C
  loc_CC9634: from_stack_1 = clsdetabole.PrunDede
  loc_CC9639: LitI2_Byte 0
  loc_CC963B: LitI4 1
  loc_CC9640: FLdPr Me
  loc_CC9643: MemLdStr global_140
  loc_CC9646: AryLock
  loc_CC9649: Ary1LdPr
  loc_CC964A: MemLdRfVar from_stack_1.global_12
  loc_CC964D: CVarRef
  loc_CC9652: LitI2_Byte &HFF
  loc_CC9654: FLdFPR8 var_164
  loc_CC9657: CVarR8
  loc_CC965B: PopAdLdVar
  loc_CC965C: FLdPr Me
  loc_CC965F: MemLdI2 global_130
  loc_CC9662: CI4UI1
  loc_CC9663: LitI4 1
  loc_CC9668: FLdPr Me
  loc_CC966B: MemLdStr global_116
  loc_CC966E: AryLock
  loc_CC9671: Ary1LdPr
  loc_CC9672: MemLdStr global_100
  loc_CC9675: AryLock
  loc_CC9678: Ary1LdPr
  loc_CC9679: MemLdRfVar from_stack_1.global_12
  loc_CC967C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9681: AryUnlock
  loc_CC9684: AryUnlock
  loc_CC9687: AryUnlock
  loc_CC968A: FLdRfVar var_164
  loc_CC968D: FLdPr var_17C
  loc_CC9690: from_stack_1 = clsdetabole.SubtDede
  loc_CC9695: LitI2_Byte 0
  loc_CC9697: LitI4 1
  loc_CC969C: FLdPr Me
  loc_CC969F: MemLdStr global_140
  loc_CC96A2: AryLock
  loc_CC96A5: Ary1LdPr
  loc_CC96A6: MemLdRfVar from_stack_1.global_16
  loc_CC96A9: CVarRef
  loc_CC96AE: LitI2_Byte &HFF
  loc_CC96B0: FLdFPR8 var_164
  loc_CC96B3: CVarR8
  loc_CC96B7: PopAdLdVar
  loc_CC96B8: FLdPr Me
  loc_CC96BB: MemLdI2 global_130
  loc_CC96BE: CI4UI1
  loc_CC96BF: LitI4 1
  loc_CC96C4: FLdPr Me
  loc_CC96C7: MemLdStr global_116
  loc_CC96CA: AryLock
  loc_CC96CD: Ary1LdPr
  loc_CC96CE: MemLdStr global_100
  loc_CC96D1: AryLock
  loc_CC96D4: Ary1LdPr
  loc_CC96D5: MemLdRfVar from_stack_1.global_16
  loc_CC96D8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC96DD: AryUnlock
  loc_CC96E0: AryUnlock
  loc_CC96E3: AryUnlock
  loc_CC96E6: FLdRfVar var_164
  loc_CC96E9: FLdPr var_17C
  loc_CC96EC: from_stack_1 = clsdetabole.DescDede
  loc_CC96F1: LitI2_Byte 0
  loc_CC96F3: LitI4 1
  loc_CC96F8: FLdPr Me
  loc_CC96FB: MemLdStr global_140
  loc_CC96FE: AryLock
  loc_CC9701: Ary1LdPr
  loc_CC9702: MemLdRfVar from_stack_1.global_20
  loc_CC9705: CVarRef
  loc_CC970A: LitI2_Byte &HFF
  loc_CC970C: FLdFPR8 var_164
  loc_CC970F: CVarR8
  loc_CC9713: PopAdLdVar
  loc_CC9714: FLdPr Me
  loc_CC9717: MemLdI2 global_130
  loc_CC971A: CI4UI1
  loc_CC971B: LitI4 1
  loc_CC9720: FLdPr Me
  loc_CC9723: MemLdStr global_116
  loc_CC9726: AryLock
  loc_CC9729: Ary1LdPr
  loc_CC972A: MemLdStr global_100
  loc_CC972D: AryLock
  loc_CC9730: Ary1LdPr
  loc_CC9731: MemLdRfVar from_stack_1.global_20
  loc_CC9734: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9739: AryUnlock
  loc_CC973C: AryUnlock
  loc_CC973F: AryUnlock
  loc_CC9742: FLdRfVar var_164
  loc_CC9745: FLdPr var_17C
  loc_CC9748: from_stack_1 = clsdetabole.TotaDede
  loc_CC974D: LitI2_Byte 0
  loc_CC974F: LitI4 1
  loc_CC9754: FLdPr Me
  loc_CC9757: MemLdStr global_140
  loc_CC975A: AryLock
  loc_CC975D: Ary1LdPr
  loc_CC975E: MemLdRfVar from_stack_1.global_24
  loc_CC9761: CVarRef
  loc_CC9766: LitI2_Byte &HFF
  loc_CC9768: FLdFPR8 var_164
  loc_CC976B: CVarR8
  loc_CC976F: PopAdLdVar
  loc_CC9770: FLdPr Me
  loc_CC9773: MemLdI2 global_130
  loc_CC9776: CI4UI1
  loc_CC9777: LitI4 1
  loc_CC977C: FLdPr Me
  loc_CC977F: MemLdStr global_116
  loc_CC9782: AryLock
  loc_CC9785: Ary1LdPr
  loc_CC9786: MemLdStr global_100
  loc_CC9789: AryLock
  loc_CC978C: Ary1LdPr
  loc_CC978D: MemLdRfVar from_stack_1.global_24
  loc_CC9790: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9795: AryUnlock
  loc_CC9798: AryUnlock
  loc_CC979B: AryUnlock
  loc_CC979E: LitI2_Byte 1
  loc_CC97A0: PopTmpLdAd2 var_96
  loc_CC97A3: FLdPr var_17C
  loc_CC97A6: Call clsdetabole.Move(from_stack_1v)
  loc_CC97AB: FLdPr Me
  loc_CC97AE: MemLdRfVar from_stack_1.global_130
  loc_CC97B1: NextI2 var_180, loc_CC9556
  loc_CC97B6: FLdPr Me
  loc_CC97B9: VCallAd Control_ID_PeriBoleMsk
  loc_CC97BC: FStAdFunc var_BC
  loc_CC97BF: FLdPr var_BC
  loc_CC97C2: LateIdLdVar var_DC DispID_22 0
  loc_CC97C9: PopAd
  loc_CC97CB: FLdPr Me
  loc_CC97CE: VCallAd Control_ID_NumeBoleMsk
  loc_CC97D1: FStAdFunc var_EC
  loc_CC97D4: FLdPr var_EC
  loc_CC97D7: LateIdLdVar var_FC DispID_22 0
  loc_CC97DE: PopAd
  loc_CC97E0: FLdRfVar var_13C
  loc_CC97E3: FLdPr Me
  loc_CC97E6: MemLdRfVar from_stack_1.global_92
  loc_CC97E9: NewIfNullPr clsboleto
  loc_CC97EC: from_stack_1 = clsboleto.FealBole
  loc_CC97F1: FLdRfVar var_13C
  loc_CC97F4: FLdRfVar var_15C
  loc_CC97F7: ImpAdCallFPR4  = Month()
  loc_CC97FC: FLdRfVar var_164
  loc_CC97FF: FLdPr Me
  loc_CC9802: MemLdRfVar from_stack_1.global_92
  loc_CC9805: NewIfNullPr clsboleto
  loc_CC9808: from_stack_1 = clsboleto.TotaBole
  loc_CC980D: FLdRfVar var_198
  loc_CC9810: FLdPr Me
  loc_CC9813: MemLdRfVar from_stack_1.global_92
  loc_CC9816: NewIfNullPr clsboleto
  loc_CC9819: from_stack_1 = clsboleto.FeveBole
  loc_CC981E: FLdRfVar var_198
  loc_CC9821: CStrVarVal var_E8
  loc_CC9825: FLdFPR8 var_164
  loc_CC9828: CStrR8
  loc_CC982A: FStStrNoPop var_E4
  loc_CC982D: FLdPr Me
  loc_CC9830: MemLdUI1 global_120
  loc_CC9834: LitStr "0000000000000"
  loc_CC9837: FLdRfVar var_15C
  loc_CC983A: CStrVarVal var_E0
  loc_CC983E: FLdRfVar var_FC
  loc_CC9841: CStrVarTmp
  loc_CC9842: FStStrNoPop var_C8
  loc_CC9845: FLdRfVar var_DC
  loc_CC9848: CStrVarTmp
  loc_CC9849: FStStrNoPop var_C4
  loc_CC984C: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_CC9851: PopTmpLdAdStr var_128
  loc_CC9854: LitI4 1
  loc_CC9859: FLdPr Me
  loc_CC985C: MemLdStr global_116
  loc_CC985F: Ary1LdPr
  loc_CC9860: MemLdRfVar from_stack_1.global_136
  loc_CC9863: StAryMove
  loc_CC9865: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = ""
  loc_CC9872: FFreeAd var_BC = ""
  loc_CC9879: FFreeVar var_DC = "": var_FC = "": var_13C = "": var_15C = ""
  loc_CC9886: Branch loc_CC9BF2
  loc_CC9889: FLdPr Me
  loc_CC988C: MemLdUI1 global_120
  loc_CC9890: CI2UI1
  loc_CC9892: LitI2_Byte 5
  loc_CC9894: EqI2
  loc_CC9895: BranchF loc_CC9946
  loc_CC9898: LitStr "SELECT detabole.PeriCtct, detabole.BimeCtct, cast(group_concat(DISTINCT detabole.BimeCtct ORDER BY detabole.BimeCtct ASC SEPARATOR ',') as CHAR) as Bimestres,"
  loc_CC989B: LitStr " detabole.PeriInfo, detabole.CodiConc, DetaConc, sum(CapiDebo) as CapiDebo, sum(RecaDebo) as RecaDebo, sum(InteDebo) as InteDebo,"
  loc_CC989E: ConcatStr
  loc_CC989F: FStStrNoPop var_C4
  loc_CC98A2: LitStr " sum(DecaDebo+DereDebo) as DescDebo, sum(TotaDebo) TotaDebo, detabole.PeriBole, detabole.NumeBole, detabole.NumeCtct, detabole.MoviCtct, detabole.CodiFapa, detabole.CuotDefa, ctacte.ExpeCtct"
  loc_CC98A5: ConcatStr
  loc_CC98A6: FStStrNoPop var_C8
  loc_CC98A9: LitStr " FROM detabole LEFT JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc"
  loc_CC98AC: ConcatStr
  loc_CC98AD: FStStrNoPop var_E0
  loc_CC98B0: LitStr " LEFT JOIN ctacte ON ctacte.CodiOfic = 5 AND ctacte.CuenCtct = detabole.CuenCtct AND ctacte.PeriCtct = detabole.PeriCtct AND ctacte.BimeCtct = detabole.BimeCtct AND ctacte.NumeCtct = detabole.NumeCtct AND ctacte.MoviCtct = 1"
  loc_CC98B3: ConcatStr
  loc_CC98B4: FStStrNoPop var_E4
  loc_CC98B7: LitStr " WHERE detabole.PeriBole = '"
  loc_CC98BA: ConcatStr
  loc_CC98BB: FStStrNoPop var_E8
  loc_CC98BE: FLdPr Me
  loc_CC98C1: VCallAd Control_ID_PeriBoleMsk
  loc_CC98C4: FStAdFunc var_BC
  loc_CC98C7: FLdPr var_BC
  loc_CC98CA: LateIdLdVar var_DC DispID_0 0
  loc_CC98D1: CStrVarTmp
  loc_CC98D2: FStStrNoPop var_100
  loc_CC98D5: ConcatStr
  loc_CC98D6: FStStrNoPop var_104
  loc_CC98D9: LitStr "' AND detabole.NumeBole = '"
  loc_CC98DC: ConcatStr
  loc_CC98DD: FStStrNoPop var_108
  loc_CC98E0: FLdPr Me
  loc_CC98E3: VCallAd Control_ID_NumeBoleMsk
  loc_CC98E6: FStAdFunc var_EC
  loc_CC98E9: FLdPr var_EC
  loc_CC98EC: LateIdLdVar var_FC DispID_0 0
  loc_CC98F3: CStrVarTmp
  loc_CC98F4: FStStrNoPop var_10C
  loc_CC98F7: ConcatStr
  loc_CC98F8: FStStrNoPop var_110
  loc_CC98FB: LitStr "'"
  loc_CC98FE: ConcatStr
  loc_CC98FF: FStStrNoPop var_114
  loc_CC9902: LitStr " GROUP BY CodiFapa, CuotDefa, CodiConc, PeriCtct, BimeCtct, NumeCtct"
  loc_CC9905: ConcatStr
  loc_CC9906: FStStrNoPop var_118
  loc_CC9909: LitStr " ORDER BY CodiFapa, CodiConc, PeriCtct, BimeCtct"
  loc_CC990C: ConcatStr
  loc_CC990D: FStStrNoPop var_11C
  loc_CC9910: FLdPr var_17C
  loc_CC9913: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC9918: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_CC9935: FFreeAd var_BC = ""
  loc_CC993C: FFreeVar var_DC = ""
  loc_CC9943: Branch loc_CC99E8
  loc_CC9946: LitStr "SELECT detabole.PeriCtct, BimeCtct, cast(group_concat(DISTINCT BimeCtct ORDER BY BimeCtct ASC SEPARATOR ',') as CHAR) as Bimestres,"
  loc_CC9949: LitStr " detabole.PeriInfo, detabole.CodiConc, DetaConc, sum(CapiDebo) as CapiDebo, sum(RecaDebo) as RecaDebo, sum(InteDebo) as InteDebo,"
  loc_CC994C: ConcatStr
  loc_CC994D: FStStrNoPop var_C4
  loc_CC9950: LitStr " sum(DecaDebo+DereDebo) as DescDebo, sum(TotaDebo) TotaDebo, detabole.PeriBole, detabole.NumeBole, NumeCtct, MoviCtct, CodiFapa, CuotDefa"
  loc_CC9953: ConcatStr
  loc_CC9954: FStStrNoPop var_C8
  loc_CC9957: LitStr " FROM detabole LEFT JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc"
  loc_CC995A: ConcatStr
  loc_CC995B: FStStrNoPop var_E0
  loc_CC995E: LitStr " WHERE detabole.PeriBole = '"
  loc_CC9961: ConcatStr
  loc_CC9962: FStStrNoPop var_E4
  loc_CC9965: FLdPr Me
  loc_CC9968: VCallAd Control_ID_PeriBoleMsk
  loc_CC996B: FStAdFunc var_BC
  loc_CC996E: FLdPr var_BC
  loc_CC9971: LateIdLdVar var_DC DispID_0 0
  loc_CC9978: CStrVarTmp
  loc_CC9979: FStStrNoPop var_E8
  loc_CC997C: ConcatStr
  loc_CC997D: FStStrNoPop var_100
  loc_CC9980: LitStr "' AND detabole.NumeBole = '"
  loc_CC9983: ConcatStr
  loc_CC9984: FStStrNoPop var_104
  loc_CC9987: FLdPr Me
  loc_CC998A: VCallAd Control_ID_NumeBoleMsk
  loc_CC998D: FStAdFunc var_EC
  loc_CC9990: FLdPr var_EC
  loc_CC9993: LateIdLdVar var_FC DispID_0 0
  loc_CC999A: CStrVarTmp
  loc_CC999B: FStStrNoPop var_108
  loc_CC999E: ConcatStr
  loc_CC999F: FStStrNoPop var_10C
  loc_CC99A2: LitStr "'"
  loc_CC99A5: ConcatStr
  loc_CC99A6: FStStrNoPop var_110
  loc_CC99A9: LitStr " GROUP BY CodiFapa, CuotDefa, CodiConc, PeriCtct"
  loc_CC99AC: ConcatStr
  loc_CC99AD: FStStrNoPop var_114
  loc_CC99B0: LitStr " ORDER BY CodiFapa, CodiConc, PeriCtct, BimeCtct"
  loc_CC99B3: ConcatStr
  loc_CC99B4: FStStrNoPop var_118
  loc_CC99B7: FLdPr var_17C
  loc_CC99BA: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC99BF: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_CC99DA: FFreeAd var_BC = ""
  loc_CC99E1: FFreeVar var_DC = ""
  loc_CC99E8: FLdRfVar var_128
  loc_CC99EB: FLdPr var_17C
  loc_CC99EE: from_stack_1 = clsdetabole.RecordCount
  loc_CC99F3: ILdRf var_128
  loc_CC99F6: LitI4 0
  loc_CC99FB: EqI4
  loc_CC99FC: BranchF loc_CC9A0A
  loc_CC99FF: LitStr "No se ha generado detalle para el boleto"
  loc_CC9A02: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC9A07: Branch loc_CC9D74
  loc_CC9A0A: FLdPr var_17C
  loc_CC9A0D: Call clsdetabole.MoveFirst()
  loc_CC9A12: Call Proc_163_30_ADA13C()
  loc_CC9A17: FLdRfVar var_96
  loc_CC9A1A: FLdPr var_17C
  loc_CC9A1D: from_stack_1 = clsdetabole.EOF
  loc_CC9A22: FLdI2 var_96
  loc_CC9A25: NotI4
  loc_CC9A26: BranchF loc_CC9B29
  loc_CC9A29: FLdRfVar var_C4
  loc_CC9A2C: FLdPr var_17C
  loc_CC9A2F: from_stack_1 = clsdetabole.CodiConc
  loc_CC9A34: ILdRf var_C4
  loc_CC9A37: FLdPr Me
  loc_CC9A3A: MemLdI2 global_126
  loc_CC9A3D: CI4UI1
  loc_CC9A3E: FLdPr Me
  loc_CC9A41: MemLdI2 global_124
  loc_CC9A44: CI4UI1
  loc_CC9A45: LitI4 1
  loc_CC9A4A: FLdPr Me
  loc_CC9A4D: MemLdStr global_116
  loc_CC9A50: Ary1LdPr
  loc_CC9A51: MemLdStr global_188
  loc_CC9A54: Ary1LdPr
  loc_CC9A55: MemLdStr global_0
  loc_CC9A58: Ary1LdPr
  loc_CC9A59: MemLdStr global_0
  loc_CC9A5C: NeStr
  loc_CC9A5E: FFree1Str var_C4
  loc_CC9A61: BranchF loc_CC9A6C
  loc_CC9A64: Call Proc_163_31_AE681C()
  loc_CC9A69: Branch loc_CC9B26
  loc_CC9A6C: FLdRfVar var_128
  loc_CC9A6F: FLdPr var_17C
  loc_CC9A72: from_stack_1 = clsdetabole.CodiFapa
  loc_CC9A77: FLdRfVar var_1A0
  loc_CC9A7A: FLdPr var_17C
  loc_CC9A7D: from_stack_1 = clsdetabole.PeriCtct
  loc_CC9A82: ILdRf var_1A0
  loc_CC9A85: CVarI4
  loc_CC9A89: ILdRf var_128
  loc_CC9A8C: CVarI4
  loc_CC9A90: FLdPr Me
  loc_CC9A93: MemLdI2 global_126
  loc_CC9A96: CI4UI1
  loc_CC9A97: FLdPr Me
  loc_CC9A9A: MemLdI2 global_124
  loc_CC9A9D: CI4UI1
  loc_CC9A9E: LitI4 1
  loc_CC9AA3: FLdPr Me
  loc_CC9AA6: MemLdStr global_116
  loc_CC9AA9: AryLock
  loc_CC9AAC: Ary1LdPr
  loc_CC9AAD: MemLdStr global_188
  loc_CC9AB0: AryLock
  loc_CC9AB3: Ary1LdPr
  loc_CC9AB4: MemLdStr global_0
  loc_CC9AB7: AryLock
  loc_CC9ABA: Ary1LdPr
  loc_CC9ABB: MemLdRfVar from_stack_1.global_8
  loc_CC9ABE: CVarRef
  loc_CC9AC3: FLdRfVar var_13C
  loc_CC9AC6: ImpAdCallFPR4  = IIf(, , )
  loc_CC9ACB: AryUnlock
  loc_CC9ACE: AryUnlock
  loc_CC9AD1: AryUnlock
  loc_CC9AD4: FLdRfVar var_13C
  loc_CC9AD7: FLdPr Me
  loc_CC9ADA: MemLdI2 global_128
  loc_CC9ADD: CI4UI1
  loc_CC9ADE: FLdPr Me
  loc_CC9AE1: MemLdI2 global_126
  loc_CC9AE4: CI4UI1
  loc_CC9AE5: FLdPr Me
  loc_CC9AE8: MemLdI2 global_124
  loc_CC9AEB: CI4UI1
  loc_CC9AEC: LitI4 1
  loc_CC9AF1: FLdPr Me
  loc_CC9AF4: MemLdStr global_116
  loc_CC9AF7: Ary1LdPr
  loc_CC9AF8: MemLdStr global_188
  loc_CC9AFB: Ary1LdPr
  loc_CC9AFC: MemLdStr global_0
  loc_CC9AFF: Ary1LdPr
  loc_CC9B00: MemLdStr global_12
  loc_CC9B03: Ary1LdPr
  loc_CC9B04: MemLdStr global_0
  loc_CC9B07: CVarStr var_1B0
  loc_CC9B0A: HardType
  loc_CC9B0B: NeVarBool
  loc_CC9B0D: FFreeVar var_DC = "": var_FC = ""
  loc_CC9B16: BranchF loc_CC9B21
  loc_CC9B19: Call Proc_163_32_AF3C94()
  loc_CC9B1E: Branch loc_CC9B26
  loc_CC9B21: Call Proc_163_33_C1C12C()
  loc_CC9B26: Branch loc_CC9A17
  loc_CC9B29: FLdPr Me
  loc_CC9B2C: VCallAd Control_ID_PeriBoleMsk
  loc_CC9B2F: FStAdFunc var_BC
  loc_CC9B32: FLdPr var_BC
  loc_CC9B35: LateIdLdVar var_DC DispID_22 0
  loc_CC9B3C: PopAd
  loc_CC9B3E: FLdPr Me
  loc_CC9B41: VCallAd Control_ID_NumeBoleMsk
  loc_CC9B44: FStAdFunc var_EC
  loc_CC9B47: FLdPr var_EC
  loc_CC9B4A: LateIdLdVar var_FC DispID_22 0
  loc_CC9B51: PopAd
  loc_CC9B53: FLdRfVar var_C4
  loc_CC9B56: FLdPr Me
  loc_CC9B59: MemLdRfVar from_stack_1.global_92
  loc_CC9B5C: NewIfNullPr clsboleto
  loc_CC9B5F: from_stack_1 = clsboleto.CuenCtct
  loc_CC9B64: FLdRfVar var_164
  loc_CC9B67: FLdPr Me
  loc_CC9B6A: MemLdRfVar from_stack_1.global_92
  loc_CC9B6D: NewIfNullPr clsboleto
  loc_CC9B70: from_stack_1 = clsboleto.TotaBole
  loc_CC9B75: FLdRfVar var_13C
  loc_CC9B78: FLdPr Me
  loc_CC9B7B: MemLdRfVar from_stack_1.global_92
  loc_CC9B7E: NewIfNullPr clsboleto
  loc_CC9B81: from_stack_1 = clsboleto.FeveBole
  loc_CC9B86: FLdRfVar var_13C
  loc_CC9B89: CStrVarVal var_E8
  loc_CC9B8D: FLdFPR8 var_164
  loc_CC9B90: CStrR8
  loc_CC9B92: FStStrNoPop var_E4
  loc_CC9B95: FLdPr Me
  loc_CC9B98: MemLdUI1 global_120
  loc_CC9B9C: ILdRf var_C4
  loc_CC9B9F: LitI4 1
  loc_CC9BA4: FLdPr Me
  loc_CC9BA7: MemLdStr global_116
  loc_CC9BAA: Ary1LdPr
  loc_CC9BAB: MemLdStr global_132
  loc_CC9BAE: FLdRfVar var_FC
  loc_CC9BB1: CStrVarTmp
  loc_CC9BB2: FStStrNoPop var_E0
  loc_CC9BB5: FLdRfVar var_DC
  loc_CC9BB8: CStrVarTmp
  loc_CC9BB9: FStStrNoPop var_C8
  loc_CC9BBC: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_CC9BC1: PopTmpLdAdStr var_128
  loc_CC9BC4: LitI4 1
  loc_CC9BC9: FLdPr Me
  loc_CC9BCC: MemLdStr global_116
  loc_CC9BCF: Ary1LdPr
  loc_CC9BD0: MemLdRfVar from_stack_1.global_136
  loc_CC9BD3: StAryMove
  loc_CC9BD5: FFreeStr var_C8 = "": var_E0 = "": var_C4 = "": var_E4 = ""
  loc_CC9BE2: FFreeAd var_BC = ""
  loc_CC9BE9: FFreeVar var_DC = "": var_FC = ""
  loc_CC9BF2: LitI4 1
  loc_CC9BF7: FLdPr Me
  loc_CC9BFA: MemLdStr global_116
  loc_CC9BFD: Ary1LdPr
  loc_CC9BFE: MemLdStr global_140
  loc_CC9C01: LitStr vbNullString
  loc_CC9C04: NeStr
  loc_CC9C06: BranchF loc_CC9C42
  loc_CC9C09: LitI2_Byte 0
  loc_CC9C0B: LitI4 1
  loc_CC9C10: FLdPr Me
  loc_CC9C13: MemLdStr global_136
  loc_CC9C16: AryLock
  loc_CC9C19: Ary1LdPr
  loc_CC9C1A: MemLdRfVar from_stack_1.global_20
  loc_CC9C1D: CVarRef
  loc_CC9C22: LitI2_Byte &HFF
  loc_CC9C24: LitI4 1
  loc_CC9C29: FLdPr Me
  loc_CC9C2C: MemLdStr global_116
  loc_CC9C2F: Ary1LdPr
  loc_CC9C30: MemLdStr global_140
  loc_CC9C33: CVarStr var_A8
  loc_CC9C36: PopAdLdVar
  loc_CC9C37: FLdRfVar var_94
  loc_CC9C3A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CC9C3F: AryUnlock
  loc_CC9C42: LitStr "SELECT count(DISTINCT CodiConc) as CodiConc FROM detabole"
  loc_CC9C45: LitStr " WHERE detabole.PeriBole = '"
  loc_CC9C48: ConcatStr
  loc_CC9C49: FStStrNoPop var_C4
  loc_CC9C4C: FLdPr Me
  loc_CC9C4F: VCallAd Control_ID_PeriBoleMsk
  loc_CC9C52: FStAdFunc var_BC
  loc_CC9C55: FLdPr var_BC
  loc_CC9C58: LateIdLdVar var_DC DispID_0 0
  loc_CC9C5F: CStrVarTmp
  loc_CC9C60: FStStrNoPop var_C8
  loc_CC9C63: ConcatStr
  loc_CC9C64: FStStrNoPop var_E0
  loc_CC9C67: LitStr "' AND detabole.NumeBole = '"
  loc_CC9C6A: ConcatStr
  loc_CC9C6B: FStStrNoPop var_E4
  loc_CC9C6E: FLdPr Me
  loc_CC9C71: VCallAd Control_ID_NumeBoleMsk
  loc_CC9C74: FStAdFunc var_EC
  loc_CC9C77: FLdPr var_EC
  loc_CC9C7A: LateIdLdVar var_FC DispID_0 0
  loc_CC9C81: CStrVarTmp
  loc_CC9C82: FStStrNoPop var_E8
  loc_CC9C85: ConcatStr
  loc_CC9C86: FStStrNoPop var_100
  loc_CC9C89: LitStr "'"
  loc_CC9C8C: ConcatStr
  loc_CC9C8D: FStStrNoPop var_104
  loc_CC9C90: LitStr " GROUP BY PeriBole, NumeBole"
  loc_CC9C93: ConcatStr
  loc_CC9C94: FStStrNoPop var_108
  loc_CC9C97: FLdPr var_17C
  loc_CC9C9A: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC9C9F: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_100 = "": var_104 = ""
  loc_CC9CB2: FFreeAd var_BC = ""
  loc_CC9CB9: FFreeVar var_DC = ""
  loc_CC9CC0: FLdRfVar var_C4
  loc_CC9CC3: FLdPr var_17C
  loc_CC9CC6: from_stack_1 = clsdetabole.CodiConc
  loc_CC9CCB: ILdRf var_C4
  loc_CC9CCE: CI2Str
  loc_CC9CD0: FLdPr Me
  loc_CC9CD3: MemStI2 global_122
  loc_CC9CD6: FFree1Str var_C4
  loc_CC9CD9: LitNothing
  loc_CC9CDB: FStAd var_17C 
  loc_CC9CDF: LitI2_Byte &HFF
  loc_CC9CE1: FLdPr Me
  loc_CC9CE4: MemStI2 bGenerado
  loc_CC9CE7: LitStr " - "
  loc_CC9CEA: FLdRfVar var_C4
  loc_CC9CED: FLdPr Me
  loc_CC9CF0: VCallAd Control_ID_DetaOficTxt
  loc_CC9CF3: FStAdFunc var_BC
  loc_CC9CF6: FLdPr var_BC
  loc_CC9CF9:  = Me.Text
  loc_CC9CFE: ILdRf var_C4
  loc_CC9D01: ConcatStr
  loc_CC9D02: FStStrNoPop var_C8
  loc_CC9D05: LitStr " - "
  loc_CC9D08: ConcatStr
  loc_CC9D09: FStStrNoPop var_E0
  loc_CC9D0C: FLdPr Me
  loc_CC9D0F: VCallAd Control_ID_PeriBoleMsk
  loc_CC9D12: FStAdFunc var_EC
  loc_CC9D15: FLdPr var_EC
  loc_CC9D18: LateIdLdVar var_DC DispID_22 0
  loc_CC9D1F: CStrVarTmp
  loc_CC9D20: FStStrNoPop var_E4
  loc_CC9D23: ConcatStr
  loc_CC9D24: FStStrNoPop var_E8
  loc_CC9D27: LitStr "-"
  loc_CC9D2A: ConcatStr
  loc_CC9D2B: FStStrNoPop var_100
  loc_CC9D2E: FLdPr Me
  loc_CC9D31: VCallAd Control_ID_NumeBoleMsk
  loc_CC9D34: FStAdFunc var_174
  loc_CC9D37: FLdPr var_174
  loc_CC9D3A: LateIdLdVar var_FC DispID_22 0
  loc_CC9D41: CStrVarTmp
  loc_CC9D42: FStStrNoPop var_104
  loc_CC9D45: ConcatStr
  loc_CC9D46: FStStrNoPop var_108
  loc_CC9D49: FLdPr Me
  loc_CC9D4C: Me.Tag = from_stack_1
  loc_CC9D51: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_100 = "": var_104 = ""
  loc_CC9D64: FFreeAd var_BC = "": var_EC = ""
  loc_CC9D6D: FFreeVar var_DC = ""
  loc_CC9D74: LitI4 0
  loc_CC9D79: CI2I4
  loc_CC9D7A: FLdPr Me
  loc_CC9D7D: Me.MousePointer = from_stack_1
  loc_CC9D82: LitVarStr var_A8, vbNullString
  loc_CC9D87: PopAdLdVar
  loc_CC9D88: FLdPr Me
  loc_CC9D8B: VCallAd Control_ID_statusBar
  loc_CC9D8E: FStAdFunc var_BC
  loc_CC9D91: FLdPr var_BC
  loc_CC9D94: LateIdSt
  loc_CC9D99: FFree1Ad var_BC
  loc_CC9D9C: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B27698
  'Data Table: 4DE7C8
  loc_B273C0: FLdRfVar var_88
  loc_B273C3: LitI2_Byte 0
  loc_B273C5: LitI2_Byte &HFF
  loc_B273C7: ImpAdLdI4 MemVar_D93C84
  loc_B273CA: FLdPr Me
  loc_B273CD: MemLdRfVar from_stack_1.global_72
  loc_B273D0: NewIfNullPr IFileSystem3
  loc_B273D3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B273D8: ILdRf var_88
  loc_B273DB: FLdPr Me
  loc_B273DE: MemStVarAd
  loc_B273E2: FFree1Ad var_88
  loc_B273E5: LitI2_Byte &HFF
  loc_B273E7: ImpAdStI2 MemVar_D93C8A
  loc_B273EA: Call Proc_163_35_BD89C4()
  loc_B273EF: FLdPr Me
  loc_B273F2: MemLdUI1 global_120
  loc_B273F6: CI2UI1
  loc_B273F8: LitI2_Byte 8
  loc_B273FA: NeI2
  loc_B273FB: BranchF loc_B27663
  loc_B273FE: LitI2_Byte 1
  loc_B27400: FLdPr Me
  loc_B27403: MemLdRfVar from_stack_1.global_124
  loc_B27406: LitI4 1
  loc_B2740B: FLdPr Me
  loc_B2740E: MemLdStr global_116
  loc_B27411: Ary1LdPr
  loc_B27412: MemLdStr global_188
  loc_B27415: LitI2_Byte 1
  loc_B27417: FnUBound
  loc_B27419: CI2I4
  loc_B2741A: ForI2 var_8C
  loc_B27420: FLdPr Me
  loc_B27423: MemLdI2 global_124
  loc_B27426: LitI2_Byte 1
  loc_B27428: NeI2
  loc_B27429: BranchF loc_B27440
  loc_B2742C: LitVarStr var_9C, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_B27431: PopAdLdVar
  loc_B27432: FLdPr Me
  loc_B27435: MemLdRfVar from_stack_1.global_76
  loc_B27438: LdPrVar
  loc_B2743A: LateMemCall
  loc_B27440: Call Proc_163_36_AFBBA8()
  loc_B27445: FLdPr Me
  loc_B27448: MemLdUI1 global_120
  loc_B2744C: FStUI1 var_AE
  loc_B27450: FLdUI1
  loc_B27454: LitI2_Byte 1
  loc_B27456: CUI1I2
  loc_B27458: EqI2
  loc_B27459: BranchF loc_B27491
  loc_B2745C: Call Proc_163_37_B9AA44()
  loc_B27461: Call Proc_163_43_C1F764()
  loc_B27466: FLdPr Me
  loc_B27469: MemLdI2 global_124
  loc_B2746C: CI4UI1
  loc_B2746D: LitI4 1
  loc_B27472: FLdPr Me
  loc_B27475: MemLdStr global_116
  loc_B27478: Ary1LdPr
  loc_B27479: MemLdStr global_188
  loc_B2747C: LitI2_Byte 1
  loc_B2747E: FnUBound
  loc_B27480: EqI4
  loc_B27481: BranchF loc_B2748E
  loc_B27484: Call Proc_163_45_B806E4()
  loc_B27489: Call Proc_163_47_B9B6A0()
  loc_B2748E: Branch loc_B27655
  loc_B27491: FLdUI1
  loc_B27495: LitI2_Byte 2
  loc_B27497: CUI1I2
  loc_B27499: EqI2
  loc_B2749A: BranchF loc_B274D2
  loc_B2749D: Call Proc_163_38_B98694()
  loc_B274A2: Call Proc_163_43_C1F764()
  loc_B274A7: FLdPr Me
  loc_B274AA: MemLdI2 global_124
  loc_B274AD: CI4UI1
  loc_B274AE: LitI4 1
  loc_B274B3: FLdPr Me
  loc_B274B6: MemLdStr global_116
  loc_B274B9: Ary1LdPr
  loc_B274BA: MemLdStr global_188
  loc_B274BD: LitI2_Byte 1
  loc_B274BF: FnUBound
  loc_B274C1: EqI4
  loc_B274C2: BranchF loc_B274CF
  loc_B274C5: Call Proc_163_45_B806E4()
  loc_B274CA: Call Proc_163_47_B9B6A0()
  loc_B274CF: Branch loc_B27655
  loc_B274D2: FLdUI1
  loc_B274D6: LitI2_Byte 3
  loc_B274D8: CUI1I2
  loc_B274DA: EqI2
  loc_B274DB: BranchF loc_B27513
  loc_B274DE: Call Proc_163_39_B5F898()
  loc_B274E3: Call Proc_163_43_C1F764()
  loc_B274E8: FLdPr Me
  loc_B274EB: MemLdI2 global_124
  loc_B274EE: CI4UI1
  loc_B274EF: LitI4 1
  loc_B274F4: FLdPr Me
  loc_B274F7: MemLdStr global_116
  loc_B274FA: Ary1LdPr
  loc_B274FB: MemLdStr global_188
  loc_B274FE: LitI2_Byte 1
  loc_B27500: FnUBound
  loc_B27502: EqI4
  loc_B27503: BranchF loc_B27510
  loc_B27506: Call Proc_163_45_B806E4()
  loc_B2750B: Call Proc_163_47_B9B6A0()
  loc_B27510: Branch loc_B27655
  loc_B27513: FLdUI1
  loc_B27517: LitI2_Byte 4
  loc_B27519: CUI1I2
  loc_B2751B: EqI2
  loc_B2751C: BranchF loc_B27554
  loc_B2751F: Call Proc_163_40_B911B0()
  loc_B27524: Call Proc_163_43_C1F764()
  loc_B27529: FLdPr Me
  loc_B2752C: MemLdI2 global_124
  loc_B2752F: CI4UI1
  loc_B27530: LitI4 1
  loc_B27535: FLdPr Me
  loc_B27538: MemLdStr global_116
  loc_B2753B: Ary1LdPr
  loc_B2753C: MemLdStr global_188
  loc_B2753F: LitI2_Byte 1
  loc_B27541: FnUBound
  loc_B27543: EqI4
  loc_B27544: BranchF loc_B27551
  loc_B27547: Call Proc_163_45_B806E4()
  loc_B2754C: Call Proc_163_47_B9B6A0()
  loc_B27551: Branch loc_B27655
  loc_B27554: FLdUI1
  loc_B27558: LitI2_Byte 5
  loc_B2755A: CUI1I2
  loc_B2755C: EqI2
  loc_B2755D: BranchF loc_B27595
  loc_B27560: Call Proc_163_41_B5F428()
  loc_B27565: Call Proc_163_43_C1F764()
  loc_B2756A: FLdPr Me
  loc_B2756D: MemLdI2 global_124
  loc_B27570: CI4UI1
  loc_B27571: LitI4 1
  loc_B27576: FLdPr Me
  loc_B27579: MemLdStr global_116
  loc_B2757C: Ary1LdPr
  loc_B2757D: MemLdStr global_188
  loc_B27580: LitI2_Byte 1
  loc_B27582: FnUBound
  loc_B27584: EqI4
  loc_B27585: BranchF loc_B27592
  loc_B27588: Call Proc_163_45_B806E4()
  loc_B2758D: Call Proc_163_47_B9B6A0()
  loc_B27592: Branch loc_B27655
  loc_B27595: FLdUI1
  loc_B27599: LitI2_Byte 6
  loc_B2759B: CUI1I2
  loc_B2759D: EqI2
  loc_B2759E: BranchF loc_B275D6
  loc_B275A1: Call Proc_163_38_B98694()
  loc_B275A6: Call Proc_163_43_C1F764()
  loc_B275AB: FLdPr Me
  loc_B275AE: MemLdI2 global_124
  loc_B275B1: CI4UI1
  loc_B275B2: LitI4 1
  loc_B275B7: FLdPr Me
  loc_B275BA: MemLdStr global_116
  loc_B275BD: Ary1LdPr
  loc_B275BE: MemLdStr global_188
  loc_B275C1: LitI2_Byte 1
  loc_B275C3: FnUBound
  loc_B275C5: EqI4
  loc_B275C6: BranchF loc_B275D3
  loc_B275C9: Call Proc_163_45_B806E4()
  loc_B275CE: Call Proc_163_47_B9B6A0()
  loc_B275D3: Branch loc_B27655
  loc_B275D6: FLdUI1
  loc_B275DA: LitI2_Byte 7
  loc_B275DC: CUI1I2
  loc_B275DE: EqI2
  loc_B275DF: BranchF loc_B27617
  loc_B275E2: Call Proc_163_38_B98694()
  loc_B275E7: Call Proc_163_43_C1F764()
  loc_B275EC: FLdPr Me
  loc_B275EF: MemLdI2 global_124
  loc_B275F2: CI4UI1
  loc_B275F3: LitI4 1
  loc_B275F8: FLdPr Me
  loc_B275FB: MemLdStr global_116
  loc_B275FE: Ary1LdPr
  loc_B275FF: MemLdStr global_188
  loc_B27602: LitI2_Byte 1
  loc_B27604: FnUBound
  loc_B27606: EqI4
  loc_B27607: BranchF loc_B27614
  loc_B2760A: Call Proc_163_45_B806E4()
  loc_B2760F: Call Proc_163_47_B9B6A0()
  loc_B27614: Branch loc_B27655
  loc_B27617: FLdUI1
  loc_B2761B: LitI2_Byte 8
  loc_B2761D: CUI1I2
  loc_B2761F: EqI2
  loc_B27620: BranchF loc_B27655
  loc_B27623: Call Proc_163_42_B422E0()
  loc_B27628: Call Proc_163_44_B1182C()
  loc_B2762D: FLdPr Me
  loc_B27630: MemLdI2 global_124
  loc_B27633: CI4UI1
  loc_B27634: LitI4 1
  loc_B27639: FLdPr Me
  loc_B2763C: MemLdStr global_116
  loc_B2763F: Ary1LdPr
  loc_B27640: MemLdStr global_188
  loc_B27643: LitI2_Byte 1
  loc_B27645: FnUBound
  loc_B27647: EqI4
  loc_B27648: BranchF loc_B27655
  loc_B2764B: Call Proc_163_46_B3BAC8()
  loc_B27650: Call Proc_163_48_B6B1A0()
  loc_B27655: FLdPr Me
  loc_B27658: MemLdRfVar from_stack_1.global_124
  loc_B2765B: NextI2 var_8C, loc_B27420
  loc_B27660: Branch loc_B2767C
  loc_B27663: Call Proc_163_36_AFBBA8()
  loc_B27668: Call Proc_163_42_B422E0()
  loc_B2766D: Call Proc_163_44_B1182C()
  loc_B27672: Call Proc_163_46_B3BAC8()
  loc_B27677: Call Proc_163_48_B6B1A0()
  loc_B2767C: Call Proc_163_49_9F390C()
  loc_B27681: FLdPr Me
  loc_B27684: MemLdRfVar from_stack_1.global_76
  loc_B27687: LdPrVar
  loc_B27689: LateMemCall
  loc_B2768F: LitStr vbNullString
  loc_B27692: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B27697: ExitProcHresult
End Sub

Private Function Proc_163_29_AC2B14() 'AC2B14
  'Data Table: 4DE7C8
  loc_AC2A2C: FLdPr Me
  loc_AC2A2F: MemLdRfVar from_stack_1.global_92
  loc_AC2A32: NewIfNullAd
  loc_AC2A35: FStAd var_88 
  loc_AC2A39: LitStr "SELECT if(b.CodiOfic=3,if(CuenCtct<>'',3,8),b.CodiOfic) CodiOfic, DetaOfic FROM boleto b LEFT JOIN oficina ON oficina.CodiOfic = b.CodiOfic WHERE PeriBole = "
  loc_AC2A3C: FLdPr Me
  loc_AC2A3F: VCallAd Control_ID_PeriBoleMsk
  loc_AC2A42: FStAdFunc var_8C
  loc_AC2A45: FLdPr var_8C
  loc_AC2A48: LateIdLdVar var_9C DispID_22 0
  loc_AC2A4F: CStrVarTmp
  loc_AC2A50: FStStrNoPop var_A0
  loc_AC2A53: ConcatStr
  loc_AC2A54: FStStrNoPop var_A4
  loc_AC2A57: LitStr " AND NumeBole = "
  loc_AC2A5A: ConcatStr
  loc_AC2A5B: FStStrNoPop var_BC
  loc_AC2A5E: FLdPr Me
  loc_AC2A61: VCallAd Control_ID_NumeBoleMsk
  loc_AC2A64: FStAdFunc var_A8
  loc_AC2A67: FLdPr var_A8
  loc_AC2A6A: LateIdLdVar var_B8 DispID_22 0
  loc_AC2A71: CStrVarTmp
  loc_AC2A72: FStStrNoPop var_C0
  loc_AC2A75: ConcatStr
  loc_AC2A76: FStStrNoPop var_C4
  loc_AC2A79: FLdPr var_88
  loc_AC2A7C: Call clsboleto.RedefineRS(from_stack_1v)
  loc_AC2A81: FFreeStr var_A0 = "": var_A4 = "": var_BC = "": var_C0 = ""
  loc_AC2A8E: FFreeAd var_8C = ""
  loc_AC2A95: FFreeVar var_9C = ""
  loc_AC2A9C: FLdRfVar var_C8
  loc_AC2A9F: FLdPr var_88
  loc_AC2AA2: from_stack_1 = clsboleto.RecordCount
  loc_AC2AA7: ILdRf var_C8
  loc_AC2AAA: LitI4 0
  loc_AC2AAF: GtI4
  loc_AC2AB0: BranchF loc_AC2B01
  loc_AC2AB3: FLdPr var_88
  loc_AC2AB6: Call clsboleto.MoveFirst()
  loc_AC2ABB: FLdRfVar var_CA
  loc_AC2ABE: FLdPr var_88
  loc_AC2AC1: from_stack_1 = clsboleto.CodiOfic
  loc_AC2AC6: FLdI2 var_CA
  loc_AC2AC9: CUI1I2
  loc_AC2ACB: FLdPr Me
  loc_AC2ACE: MemStUI1
  loc_AC2AD2: FLdRfVar var_9C
  loc_AC2AD5: FLdPr var_88
  loc_AC2AD8: from_stack_1 = clsboleto.DetaOfic
  loc_AC2ADD: FLdRfVar var_9C
  loc_AC2AE0: CStrVarVal var_A0
  loc_AC2AE4: FLdPr Me
  loc_AC2AE7: VCallAd Control_ID_DetaOficTxt
  loc_AC2AEA: FStAdFunc var_8C
  loc_AC2AED: FLdPr var_8C
  loc_AC2AF0: Me.Text = from_stack_1
  loc_AC2AF5: FFree1Str var_A0
  loc_AC2AF8: FFree1Ad var_8C
  loc_AC2AFB: FFree1Var var_9C = ""
  loc_AC2AFE: Branch loc_AC2B0C
  loc_AC2B01: LitI2_Byte 0
  loc_AC2B03: CUI1I2
  loc_AC2B05: FLdPr Me
  loc_AC2B08: MemStUI1
  loc_AC2B0C: LitNothing
  loc_AC2B0E: FStAd var_88 
  loc_AC2B12: ExitProcHresult
End Function

Private Function Proc_163_30_ADA13C() 'ADA13C
  'Data Table: 4DE7C8
  loc_AD9FF0: LitI2_Byte 0
  loc_AD9FF2: FLdPr Me
  loc_AD9FF5: MemStI2 global_134
  loc_AD9FF8: LitI2_Byte 0
  loc_AD9FFA: FLdPr Me
  loc_AD9FFD: MemStI2 global_126
  loc_ADA000: FLdPr Me
  loc_ADA003: MemLdI2 global_124
  loc_ADA006: LitI2_Byte 0
  loc_ADA008: GtI2
  loc_ADA009: BranchF loc_ADA100
  loc_ADA00C: FLdPr Me
  loc_ADA00F: MemLdI2 global_124
  loc_ADA012: CI4UI1
  loc_ADA013: LitI4 1
  loc_ADA018: FLdPr Me
  loc_ADA01B: MemLdStr global_116
  loc_ADA01E: AryLock
  loc_ADA021: Ary1LdPr
  loc_ADA022: MemLdStr global_188
  loc_ADA025: AryLock
  loc_ADA028: Ary1LdPr
  loc_ADA029: MemLdRfVar from_stack_1.global_4
  loc_ADA02C: FStR4 var_90
  loc_ADA02F: LitI2_Byte 0
  loc_ADA031: LitVar_Missing var_C0
  loc_ADA034: LitI2_Byte 0
  loc_ADA036: LitI4 1
  loc_ADA03B: FLdPr Me
  loc_ADA03E: MemLdStr global_136
  loc_ADA041: Ary1LdPr
  loc_ADA042: MemLdStr global_4
  loc_ADA045: CVarStr var_A0
  loc_ADA048: PopAdLdVar
  loc_ADA049: FMemLdRf unk_4DE739
  loc_ADA04E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ADA053: FFree1Var var_C0 = ""
  loc_ADA056: LitI2_Byte 0
  loc_ADA058: LitVar_Missing var_C0
  loc_ADA05B: LitI2_Byte 0
  loc_ADA05D: LitI4 1
  loc_ADA062: FLdPr Me
  loc_ADA065: MemLdStr global_136
  loc_ADA068: Ary1LdPr
  loc_ADA069: MemLdStr global_8
  loc_ADA06C: CVarStr var_A0
  loc_ADA06F: PopAdLdVar
  loc_ADA070: FMemLdRf unk_4DE739
  loc_ADA075: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ADA07A: FFree1Var var_C0 = ""
  loc_ADA07D: LitI2_Byte 0
  loc_ADA07F: LitVar_Missing var_C0
  loc_ADA082: LitI2_Byte 0
  loc_ADA084: LitI4 1
  loc_ADA089: FLdPr Me
  loc_ADA08C: MemLdStr global_136
  loc_ADA08F: Ary1LdPr
  loc_ADA090: MemLdStr global_12
  loc_ADA093: CVarStr var_A0
  loc_ADA096: PopAdLdVar
  loc_ADA097: FMemLdRf unk_4DE739
  loc_ADA09C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ADA0A1: FFree1Var var_C0 = ""
  loc_ADA0A4: LitI2_Byte 0
  loc_ADA0A6: LitVar_Missing var_C0
  loc_ADA0A9: LitI2_Byte 0
  loc_ADA0AB: LitI4 1
  loc_ADA0B0: FLdPr Me
  loc_ADA0B3: MemLdStr global_136
  loc_ADA0B6: Ary1LdPr
  loc_ADA0B7: MemLdStr global_16
  loc_ADA0BA: CVarStr var_A0
  loc_ADA0BD: PopAdLdVar
  loc_ADA0BE: FMemLdRf unk_4DE739
  loc_ADA0C3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ADA0C8: FFree1Var var_C0 = ""
  loc_ADA0CB: LitI2_Byte 0
  loc_ADA0CD: LitVar_Missing var_C0
  loc_ADA0D0: LitI2_Byte 0
  loc_ADA0D2: LitI4 1
  loc_ADA0D7: FLdPr Me
  loc_ADA0DA: MemLdStr global_136
  loc_ADA0DD: Ary1LdPr
  loc_ADA0DE: MemLdStr global_20
  loc_ADA0E1: CVarStr var_A0
  loc_ADA0E4: PopAdLdVar
  loc_ADA0E5: FMemLdRf unk_4DE739
  loc_ADA0EA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ADA0EF: FFree1Var var_C0 = ""
  loc_ADA0F2: LitI4 0
  loc_ADA0F7: FStR4 var_90
  loc_ADA0FA: AryUnlock
  loc_ADA0FD: AryUnlock
  loc_ADA100: FLdPr Me
  loc_ADA103: MemLdI2 global_124
  loc_ADA106: LitI2_Byte 1
  loc_ADA108: AddI2
  loc_ADA109: FLdPr Me
  loc_ADA10C: MemStI2 global_124
  loc_ADA10F: LitI4 0
  loc_ADA114: FLdPr Me
  loc_ADA117: MemLdI2 global_124
  loc_ADA11A: CI4UI1
  loc_ADA11B: LitI4 1
  loc_ADA120: FLdPr Me
  loc_ADA123: MemLdStr global_116
  loc_ADA126: Ary1LdPr
  loc_ADA127: MemLdRfVar from_stack_1.global_188
  loc_ADA12A: RedimPreserve
  loc_ADA134: Call Proc_163_31_AE681C()
  loc_ADA139: ExitProcHresult
  loc_ADA13A: GeCy
End Function

Private Function Proc_163_31_AE681C() 'AE681C
  'Data Table: 4DE7C8
  loc_AE66AC: FLdPr Me
  loc_AE66AF: MemLdI2 global_134
  loc_AE66B2: LitI2_Byte &H1E
  loc_AE66B4: GeI2
  loc_AE66B5: BranchF loc_AE66BE
  loc_AE66B8: from_stack_1v = Proc_163_30_ADA13C()
  loc_AE66BD: ExitProcHresult
  loc_AE66BE: FLdPr Me
  loc_AE66C1: MemLdI2 global_126
  loc_AE66C4: LitI2_Byte 1
  loc_AE66C6: AddI2
  loc_AE66C7: FLdPr Me
  loc_AE66CA: MemStI2 global_126
  loc_AE66CD: LitI2_Byte 0
  loc_AE66CF: FLdPr Me
  loc_AE66D2: MemStI2 global_128
  loc_AE66D5: FLdPr Me
  loc_AE66D8: MemLdI2 global_134
  loc_AE66DB: LitI2_Byte 1
  loc_AE66DD: AddI2
  loc_AE66DE: FLdPr Me
  loc_AE66E1: MemStI2 global_134
  loc_AE66E4: LitI4 0
  loc_AE66E9: FLdPr Me
  loc_AE66EC: MemLdI2 global_126
  loc_AE66EF: CI4UI1
  loc_AE66F0: FLdPr Me
  loc_AE66F3: MemLdI2 global_124
  loc_AE66F6: CI4UI1
  loc_AE66F7: LitI4 1
  loc_AE66FC: FLdPr Me
  loc_AE66FF: MemLdStr global_116
  loc_AE6702: Ary1LdPr
  loc_AE6703: MemLdStr global_188
  loc_AE6706: Ary1LdPr
  loc_AE6707: MemLdRfVar from_stack_1.global_0
  loc_AE670A: RedimPreserve
  loc_AE6714: FLdRfVar var_88
  loc_AE6717: FLdPr Me
  loc_AE671A: MemLdRfVar from_stack_1.global_100
  loc_AE671D: NewIfNullPr clsdetabole
  loc_AE6720: from_stack_1 = clsdetabole.CodiConc
  loc_AE6725: LitI2_Byte 0
  loc_AE6727: LitVar_Missing var_C4
  loc_AE672A: LitI2_Byte 0
  loc_AE672C: FLdZeroAd var_88
  loc_AE672F: CVarStr var_A4
  loc_AE6732: PopAdLdVar
  loc_AE6733: FLdPr Me
  loc_AE6736: MemLdI2 global_126
  loc_AE6739: CI4UI1
  loc_AE673A: FLdPr Me
  loc_AE673D: MemLdI2 global_124
  loc_AE6740: CI4UI1
  loc_AE6741: LitI4 1
  loc_AE6746: FLdPr Me
  loc_AE6749: MemLdStr global_116
  loc_AE674C: AryLock
  loc_AE674F: Ary1LdPr
  loc_AE6750: MemLdStr global_188
  loc_AE6753: AryLock
  loc_AE6756: Ary1LdPr
  loc_AE6757: MemLdStr global_0
  loc_AE675A: AryLock
  loc_AE675D: Ary1LdPr
  loc_AE675E: MemLdRfVar from_stack_1.global_0
  loc_AE6761: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE6766: AryUnlock
  loc_AE6769: AryUnlock
  loc_AE676C: AryUnlock
  loc_AE676F: FFreeVar var_A4 = ""
  loc_AE6776: FLdRfVar var_A4
  loc_AE6779: FLdPr Me
  loc_AE677C: MemLdRfVar from_stack_1.global_100
  loc_AE677F: NewIfNullPr clsdetabole
  loc_AE6782: from_stack_1 = clsdetabole.DetaConc
  loc_AE6787: LitI2_Byte 0
  loc_AE6789: LitVar_Missing var_C4
  loc_AE678C: LitI2_Byte 0
  loc_AE678E: FLdVar var_A4
  loc_AE6792: FLdPr Me
  loc_AE6795: MemLdI2 global_126
  loc_AE6798: CI4UI1
  loc_AE6799: FLdPr Me
  loc_AE679C: MemLdI2 global_124
  loc_AE679F: CI4UI1
  loc_AE67A0: LitI4 1
  loc_AE67A5: FLdPr Me
  loc_AE67A8: MemLdStr global_116
  loc_AE67AB: AryLock
  loc_AE67AE: Ary1LdPr
  loc_AE67AF: MemLdStr global_188
  loc_AE67B2: AryLock
  loc_AE67B5: Ary1LdPr
  loc_AE67B6: MemLdStr global_0
  loc_AE67B9: AryLock
  loc_AE67BC: Ary1LdPr
  loc_AE67BD: MemLdRfVar from_stack_1.global_4
  loc_AE67C0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE67C5: AryUnlock
  loc_AE67C8: AryUnlock
  loc_AE67CB: AryUnlock
  loc_AE67CE: FFreeVar var_A4 = ""
  loc_AE67D5: FLdRfVar var_C8
  loc_AE67D8: FLdPr Me
  loc_AE67DB: MemLdRfVar from_stack_1.global_100
  loc_AE67DE: NewIfNullPr clsdetabole
  loc_AE67E1: from_stack_1 = clsdetabole.CodiFapa
  loc_AE67E6: ILdRf var_C8
  loc_AE67E9: LitI4 0
  loc_AE67EE: NeI4
  loc_AE67EF: FLdPr Me
  loc_AE67F2: MemLdI2 global_126
  loc_AE67F5: CI4UI1
  loc_AE67F6: FLdPr Me
  loc_AE67F9: MemLdI2 global_124
  loc_AE67FC: CI4UI1
  loc_AE67FD: LitI4 1
  loc_AE6802: FLdPr Me
  loc_AE6805: MemLdStr global_116
  loc_AE6808: Ary1LdPr
  loc_AE6809: MemLdStr global_188
  loc_AE680C: Ary1LdPr
  loc_AE680D: MemLdStr global_0
  loc_AE6810: Ary1LdPr
  loc_AE6811: MemStI2 global_8
  loc_AE6814: Call Proc_163_32_AF3C94()
  loc_AE6819: ExitProcHresult
  loc_AE681A: FLdPr arg_5014
End Function

Private Function Proc_163_32_AF3C94() 'AF3C94
  'Data Table: 4DE7C8
  loc_AF3AE0: FLdPr Me
  loc_AF3AE3: MemLdI2 global_134
  loc_AF3AE6: LitI2_Byte &H1E
  loc_AF3AE8: GeI2
  loc_AF3AE9: BranchF loc_AF3B31
  loc_AF3AEC: FLdPr Me
  loc_AF3AEF: MemLdI2 global_128
  loc_AF3AF2: LitI2_Byte 0
  loc_AF3AF4: EqI2
  loc_AF3AF5: BranchF loc_AF3B2B
  loc_AF3AF8: LitI4 0
  loc_AF3AFD: FLdPr Me
  loc_AF3B00: MemLdI2 global_126
  loc_AF3B03: LitI2_Byte 1
  loc_AF3B05: SubI2
  loc_AF3B06: CI4UI1
  loc_AF3B07: FLdPr Me
  loc_AF3B0A: MemLdI2 global_124
  loc_AF3B0D: CI4UI1
  loc_AF3B0E: LitI4 1
  loc_AF3B13: FLdPr Me
  loc_AF3B16: MemLdStr global_116
  loc_AF3B19: Ary1LdPr
  loc_AF3B1A: MemLdStr global_188
  loc_AF3B1D: Ary1LdPr
  loc_AF3B1E: MemLdRfVar from_stack_1.global_0
  loc_AF3B21: RedimPreserve
  loc_AF3B2B: from_stack_1v = Proc_163_30_ADA13C()
  loc_AF3B30: ExitProcHresult
  loc_AF3B31: FLdPr Me
  loc_AF3B34: MemLdI2 global_128
  loc_AF3B37: LitI2_Byte 1
  loc_AF3B39: AddI2
  loc_AF3B3A: FLdPr Me
  loc_AF3B3D: MemStI2 global_128
  loc_AF3B40: LitI2_Byte 0
  loc_AF3B42: FLdPr Me
  loc_AF3B45: MemStI2 global_130
  loc_AF3B48: LitI4 0
  loc_AF3B4D: FLdPr Me
  loc_AF3B50: MemLdI2 global_128
  loc_AF3B53: CI4UI1
  loc_AF3B54: FLdPr Me
  loc_AF3B57: MemLdI2 global_126
  loc_AF3B5A: CI4UI1
  loc_AF3B5B: FLdPr Me
  loc_AF3B5E: MemLdI2 global_124
  loc_AF3B61: CI4UI1
  loc_AF3B62: LitI4 1
  loc_AF3B67: FLdPr Me
  loc_AF3B6A: MemLdStr global_116
  loc_AF3B6D: Ary1LdPr
  loc_AF3B6E: MemLdStr global_188
  loc_AF3B71: Ary1LdPr
  loc_AF3B72: MemLdStr global_0
  loc_AF3B75: Ary1LdPr
  loc_AF3B76: MemLdRfVar from_stack_1.global_12
  loc_AF3B79: RedimPreserve
  loc_AF3B83: FLdPr Me
  loc_AF3B86: MemLdI2 global_126
  loc_AF3B89: CI4UI1
  loc_AF3B8A: FLdPr Me
  loc_AF3B8D: MemLdI2 global_124
  loc_AF3B90: CI4UI1
  loc_AF3B91: LitI4 1
  loc_AF3B96: FLdPr Me
  loc_AF3B99: MemLdStr global_116
  loc_AF3B9C: Ary1LdPr
  loc_AF3B9D: MemLdStr global_188
  loc_AF3BA0: Ary1LdPr
  loc_AF3BA1: MemLdStr global_0
  loc_AF3BA4: Ary1LdPr
  loc_AF3BA5: MemLdI2 global_8
  loc_AF3BA8: BranchF loc_AF3C1E
  loc_AF3BAB: FLdRfVar var_88
  loc_AF3BAE: FLdPr Me
  loc_AF3BB1: MemLdRfVar from_stack_1.global_100
  loc_AF3BB4: NewIfNullPr clsdetabole
  loc_AF3BB7: from_stack_1 = clsdetabole.CodiFapa
  loc_AF3BBC: LitI2_Byte 0
  loc_AF3BBE: LitVar_Missing var_C8
  loc_AF3BC1: LitI2_Byte 0
  loc_AF3BC3: ILdRf var_88
  loc_AF3BC6: CVarI4
  loc_AF3BCA: PopAdLdVar
  loc_AF3BCB: FLdPr Me
  loc_AF3BCE: MemLdI2 global_128
  loc_AF3BD1: CI4UI1
  loc_AF3BD2: FLdPr Me
  loc_AF3BD5: MemLdI2 global_126
  loc_AF3BD8: CI4UI1
  loc_AF3BD9: FLdPr Me
  loc_AF3BDC: MemLdI2 global_124
  loc_AF3BDF: CI4UI1
  loc_AF3BE0: LitI4 1
  loc_AF3BE5: FLdPr Me
  loc_AF3BE8: MemLdStr global_116
  loc_AF3BEB: AryLock
  loc_AF3BEE: Ary1LdPr
  loc_AF3BEF: MemLdStr global_188
  loc_AF3BF2: AryLock
  loc_AF3BF5: Ary1LdPr
  loc_AF3BF6: MemLdStr global_0
  loc_AF3BF9: AryLock
  loc_AF3BFC: Ary1LdPr
  loc_AF3BFD: MemLdStr global_12
  loc_AF3C00: AryLock
  loc_AF3C03: Ary1LdPr
  loc_AF3C04: MemLdRfVar from_stack_1.global_0
  loc_AF3C07: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AF3C0C: AryUnlock
  loc_AF3C0F: AryUnlock
  loc_AF3C12: AryUnlock
  loc_AF3C15: AryUnlock
  loc_AF3C18: FFree1Var var_C8 = ""
  loc_AF3C1B: Branch loc_AF3C8E
  loc_AF3C1E: FLdRfVar var_88
  loc_AF3C21: FLdPr Me
  loc_AF3C24: MemLdRfVar from_stack_1.global_100
  loc_AF3C27: NewIfNullPr clsdetabole
  loc_AF3C2A: from_stack_1 = clsdetabole.PeriCtct
  loc_AF3C2F: LitI2_Byte 0
  loc_AF3C31: LitVar_Missing var_C8
  loc_AF3C34: LitI2_Byte 0
  loc_AF3C36: ILdRf var_88
  loc_AF3C39: CVarI4
  loc_AF3C3D: PopAdLdVar
  loc_AF3C3E: FLdPr Me
  loc_AF3C41: MemLdI2 global_128
  loc_AF3C44: CI4UI1
  loc_AF3C45: FLdPr Me
  loc_AF3C48: MemLdI2 global_126
  loc_AF3C4B: CI4UI1
  loc_AF3C4C: FLdPr Me
  loc_AF3C4F: MemLdI2 global_124
  loc_AF3C52: CI4UI1
  loc_AF3C53: LitI4 1
  loc_AF3C58: FLdPr Me
  loc_AF3C5B: MemLdStr global_116
  loc_AF3C5E: AryLock
  loc_AF3C61: Ary1LdPr
  loc_AF3C62: MemLdStr global_188
  loc_AF3C65: AryLock
  loc_AF3C68: Ary1LdPr
  loc_AF3C69: MemLdStr global_0
  loc_AF3C6C: AryLock
  loc_AF3C6F: Ary1LdPr
  loc_AF3C70: MemLdStr global_12
  loc_AF3C73: AryLock
  loc_AF3C76: Ary1LdPr
  loc_AF3C77: MemLdRfVar from_stack_1.global_0
  loc_AF3C7A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AF3C7F: AryUnlock
  loc_AF3C82: AryUnlock
  loc_AF3C85: AryUnlock
  loc_AF3C88: AryUnlock
  loc_AF3C8B: FFree1Var var_C8 = ""
  loc_AF3C8E: Call Proc_163_33_C1C12C()
  loc_AF3C93: ExitProcHresult
End Function

Private Function Proc_163_33_C1C12C() 'C1C12C
  'Data Table: 4DE7C8
  loc_C1B730: FLdPr Me
  loc_C1B733: MemLdI2 global_134
  loc_C1B736: LitI2_Byte &H1E
  loc_C1B738: GeI2
  loc_C1B739: BranchF loc_C1B742
  loc_C1B73C: from_stack_1v = Proc_163_30_ADA13C()
  loc_C1B741: ExitProcHresult
  loc_C1B742: FLdPr Me
  loc_C1B745: MemLdI2 global_130
  loc_C1B748: LitI2_Byte 1
  loc_C1B74A: AddI2
  loc_C1B74B: FLdPr Me
  loc_C1B74E: MemStI2 global_130
  loc_C1B751: FLdPr Me
  loc_C1B754: MemLdI2 global_134
  loc_C1B757: LitI2_Byte 1
  loc_C1B759: AddI2
  loc_C1B75A: FLdPr Me
  loc_C1B75D: MemStI2 global_134
  loc_C1B760: LitI4 0
  loc_C1B765: FLdPr Me
  loc_C1B768: MemLdI2 global_130
  loc_C1B76B: CI4UI1
  loc_C1B76C: FLdPr Me
  loc_C1B76F: MemLdI2 global_128
  loc_C1B772: CI4UI1
  loc_C1B773: FLdPr Me
  loc_C1B776: MemLdI2 global_126
  loc_C1B779: CI4UI1
  loc_C1B77A: FLdPr Me
  loc_C1B77D: MemLdI2 global_124
  loc_C1B780: CI4UI1
  loc_C1B781: LitI4 1
  loc_C1B786: FLdPr Me
  loc_C1B789: MemLdStr global_116
  loc_C1B78C: Ary1LdPr
  loc_C1B78D: MemLdStr global_188
  loc_C1B790: Ary1LdPr
  loc_C1B791: MemLdStr global_0
  loc_C1B794: Ary1LdPr
  loc_C1B795: MemLdStr global_12
  loc_C1B798: Ary1LdPr
  loc_C1B799: MemLdRfVar from_stack_1.global_4
  loc_C1B79C: RedimPreserve
  loc_C1B7A6: FLdPr Me
  loc_C1B7A9: MemLdI2 global_130
  loc_C1B7AC: CI4UI1
  loc_C1B7AD: FLdPr Me
  loc_C1B7B0: MemLdI2 global_128
  loc_C1B7B3: CI4UI1
  loc_C1B7B4: FLdPr Me
  loc_C1B7B7: MemLdI2 global_126
  loc_C1B7BA: CI4UI1
  loc_C1B7BB: FLdPr Me
  loc_C1B7BE: MemLdI2 global_124
  loc_C1B7C1: CI4UI1
  loc_C1B7C2: LitI4 1
  loc_C1B7C7: FLdPr Me
  loc_C1B7CA: MemLdStr global_116
  loc_C1B7CD: AryLock
  loc_C1B7D0: Ary1LdPr
  loc_C1B7D1: MemLdStr global_188
  loc_C1B7D4: AryLock
  loc_C1B7D7: Ary1LdPr
  loc_C1B7D8: MemLdStr global_0
  loc_C1B7DB: AryLock
  loc_C1B7DE: Ary1LdPr
  loc_C1B7DF: MemLdStr global_12
  loc_C1B7E2: AryLock
  loc_C1B7E5: Ary1LdPr
  loc_C1B7E6: MemLdStr global_4
  loc_C1B7E9: AryLock
  loc_C1B7EC: Ary1LdRf
  loc_C1B7ED: FStR4 var_9C
  loc_C1B7F0: FLdPr Me
  loc_C1B7F3: MemLdI2 global_126
  loc_C1B7F6: CI4UI1
  loc_C1B7F7: FLdPr Me
  loc_C1B7FA: MemLdI2 global_124
  loc_C1B7FD: CI4UI1
  loc_C1B7FE: LitI4 1
  loc_C1B803: FLdPr Me
  loc_C1B806: MemLdStr global_116
  loc_C1B809: Ary1LdPr
  loc_C1B80A: MemLdStr global_188
  loc_C1B80D: Ary1LdPr
  loc_C1B80E: MemLdStr global_0
  loc_C1B811: Ary1LdPr
  loc_C1B812: MemLdI2 global_8
  loc_C1B815: BranchF loc_C1B847
  loc_C1B818: FLdRfVar var_9E
  loc_C1B81B: FLdPr Me
  loc_C1B81E: MemLdRfVar from_stack_1.global_100
  loc_C1B821: NewIfNullPr clsdetabole
  loc_C1B824: from_stack_1 = clsdetabole.CuotDefa
  loc_C1B829: LitI2_Byte 0
  loc_C1B82B: LitVar_Missing var_D0
  loc_C1B82E: LitI2_Byte 0
  loc_C1B830: FLdI2 var_9E
  loc_C1B833: CVarI2 var_B0
  loc_C1B836: PopAdLdVar
  loc_C1B837: FMemLdRf unk_4DE72D
  loc_C1B83C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1B841: FFree1Var var_D0 = ""
  loc_C1B844: Branch loc_C1B877
  loc_C1B847: FLdRfVar var_D4
  loc_C1B84A: FLdPr Me
  loc_C1B84D: MemLdRfVar from_stack_1.global_100
  loc_C1B850: NewIfNullPr clsdetabole
  loc_C1B853: from_stack_1 = clsdetabole.Bimestres
  loc_C1B858: LitI2_Byte 0
  loc_C1B85A: LitVar_Missing var_E4
  loc_C1B85D: LitI2_Byte 0
  loc_C1B85F: FLdZeroAd var_D4
  loc_C1B862: CVarStr var_D0
  loc_C1B865: PopAdLdVar
  loc_C1B866: FMemLdRf unk_4DE72D
  loc_C1B86B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1B870: FFreeVar var_D0 = ""
  loc_C1B877: LitI4 1
  loc_C1B87C: FLdPr Me
  loc_C1B87F: MemLdStr global_116
  loc_C1B882: Ary1LdPr
  loc_C1B883: MemLdStr global_132
  loc_C1B886: LitStr vbNullString
  loc_C1B889: EqStr
  loc_C1B88B: BranchF loc_C1B8CA
  loc_C1B88E: FLdRfVar var_9E
  loc_C1B891: FLdPr Me
  loc_C1B894: MemLdRfVar from_stack_1.global_100
  loc_C1B897: NewIfNullPr clsdetabole
  loc_C1B89A: from_stack_1 = clsdetabole.BimeCtct
  loc_C1B89F: LitI2_Byte 0
  loc_C1B8A1: LitVar_Missing var_D0
  loc_C1B8A4: LitI2_Byte 0
  loc_C1B8A6: FLdI2 var_9E
  loc_C1B8A9: CVarI2 var_B0
  loc_C1B8AC: PopAdLdVar
  loc_C1B8AD: LitI4 1
  loc_C1B8B2: FLdPr Me
  loc_C1B8B5: MemLdStr global_116
  loc_C1B8B8: AryLock
  loc_C1B8BB: Ary1LdPr
  loc_C1B8BC: MemLdRfVar from_stack_1.global_132
  loc_C1B8BF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1B8C4: AryUnlock
  loc_C1B8C7: FFree1Var var_D0 = ""
  loc_C1B8CA: FLdRfVar var_F0
  loc_C1B8CD: FLdPr Me
  loc_C1B8D0: MemLdRfVar from_stack_1.global_100
  loc_C1B8D3: NewIfNullPr clsdetabole
  loc_C1B8D6: from_stack_1 = clsdetabole.CapiDebo
  loc_C1B8DB: LitI2_Byte 0
  loc_C1B8DD: LitI4 1
  loc_C1B8E2: FLdPr Me
  loc_C1B8E5: MemLdStr global_136
  loc_C1B8E8: AryLock
  loc_C1B8EB: Ary1LdPr
  loc_C1B8EC: MemLdRfVar from_stack_1.global_4
  loc_C1B8EF: CVarRef
  loc_C1B8F4: LitI2_Byte &HFF
  loc_C1B8F6: FLdFPR8 var_F0
  loc_C1B8F9: CVarR8
  loc_C1B8FD: PopAdLdVar
  loc_C1B8FE: FMemLdRf unk_4DE72D
  loc_C1B903: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1B908: AryUnlock
  loc_C1B90B: FLdRfVar var_F0
  loc_C1B90E: FLdPr Me
  loc_C1B911: MemLdRfVar from_stack_1.global_100
  loc_C1B914: NewIfNullPr clsdetabole
  loc_C1B917: from_stack_1 = clsdetabole.RecaDebo
  loc_C1B91C: LitI2_Byte 0
  loc_C1B91E: LitI4 1
  loc_C1B923: FLdPr Me
  loc_C1B926: MemLdStr global_136
  loc_C1B929: AryLock
  loc_C1B92C: Ary1LdPr
  loc_C1B92D: MemLdRfVar from_stack_1.global_8
  loc_C1B930: CVarRef
  loc_C1B935: LitI2_Byte &HFF
  loc_C1B937: FLdFPR8 var_F0
  loc_C1B93A: CVarR8
  loc_C1B93E: PopAdLdVar
  loc_C1B93F: FMemLdRf unk_4DE72D
  loc_C1B944: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1B949: AryUnlock
  loc_C1B94C: FLdRfVar var_F0
  loc_C1B94F: FLdPr Me
  loc_C1B952: MemLdRfVar from_stack_1.global_100
  loc_C1B955: NewIfNullPr clsdetabole
  loc_C1B958: from_stack_1 = clsdetabole.InteDebo
  loc_C1B95D: LitI2_Byte 0
  loc_C1B95F: LitI4 1
  loc_C1B964: FLdPr Me
  loc_C1B967: MemLdStr global_136
  loc_C1B96A: AryLock
  loc_C1B96D: Ary1LdPr
  loc_C1B96E: MemLdRfVar from_stack_1.global_12
  loc_C1B971: CVarRef
  loc_C1B976: LitI2_Byte &HFF
  loc_C1B978: FLdFPR8 var_F0
  loc_C1B97B: CVarR8
  loc_C1B97F: PopAdLdVar
  loc_C1B980: FMemLdRf unk_4DE72D
  loc_C1B985: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1B98A: AryUnlock
  loc_C1B98D: FLdRfVar var_F0
  loc_C1B990: FLdPr Me
  loc_C1B993: MemLdRfVar from_stack_1.global_100
  loc_C1B996: NewIfNullPr clsdetabole
  loc_C1B999: from_stack_1 = clsdetabole.DescDebo
  loc_C1B99E: LitI2_Byte 0
  loc_C1B9A0: LitI4 1
  loc_C1B9A5: FLdPr Me
  loc_C1B9A8: MemLdStr global_136
  loc_C1B9AB: AryLock
  loc_C1B9AE: Ary1LdPr
  loc_C1B9AF: MemLdRfVar from_stack_1.global_16
  loc_C1B9B2: CVarRef
  loc_C1B9B7: LitI2_Byte &HFF
  loc_C1B9B9: FLdFPR8 var_F0
  loc_C1B9BC: CVarR8
  loc_C1B9C0: PopAdLdVar
  loc_C1B9C1: FMemLdRf unk_4DE72D
  loc_C1B9C6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1B9CB: AryUnlock
  loc_C1B9CE: FLdRfVar var_F0
  loc_C1B9D1: FLdPr Me
  loc_C1B9D4: MemLdRfVar from_stack_1.global_100
  loc_C1B9D7: NewIfNullPr clsdetabole
  loc_C1B9DA: from_stack_1 = clsdetabole.TotaDebo
  loc_C1B9DF: LitI2_Byte 0
  loc_C1B9E1: LitI4 1
  loc_C1B9E6: FLdPr Me
  loc_C1B9E9: MemLdStr global_136
  loc_C1B9EC: AryLock
  loc_C1B9EF: Ary1LdPr
  loc_C1B9F0: MemLdRfVar from_stack_1.global_20
  loc_C1B9F3: CVarRef
  loc_C1B9F8: LitI2_Byte &HFF
  loc_C1B9FA: FLdFPR8 var_F0
  loc_C1B9FD: CVarR8
  loc_C1BA01: PopAdLdVar
  loc_C1BA02: FMemLdRf unk_4DE72D
  loc_C1BA07: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1BA0C: AryUnlock
  loc_C1BA0F: FLdPr Me
  loc_C1BA12: MemLdUI1 global_120
  loc_C1BA16: FStUI1 var_F2
  loc_C1BA1A: FLdUI1
  loc_C1BA1E: LitI2_Byte 1
  loc_C1BA20: CUI1I2
  loc_C1BA22: EqI2
  loc_C1BA23: BranchF loc_C1BA44
  loc_C1BA26: LitStr "SELECT CodiCtde FROM boledeta WHERE boledeta.PeriBole = 0 AND boledeta.NumeBole = 0"
  loc_C1BA29: LitStr " AND PeriCtct = 0 AND BimeCtct = 0 AND NumeCtct = 0 AND MoviCtct = 0"
  loc_C1BA2C: ConcatStr
  loc_C1BA2D: FStStrNoPop var_D4
  loc_C1BA30: FLdPr Me
  loc_C1BA33: MemLdRfVar from_stack_1.global_104
  loc_C1BA36: NewIfNullPr clsdetabole
  loc_C1BA39: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1BA3E: FFree1Str var_D4
  loc_C1BA41: Branch loc_C1BE70
  loc_C1BA44: FLdUI1
  loc_C1BA48: LitI2_Byte 2
  loc_C1BA4A: CUI1I2
  loc_C1BA4C: EqI2
  loc_C1BA4D: BranchF loc_C1BA6E
  loc_C1BA50: LitStr "SELECT CodiCtde FROM boledeta WHERE boledeta.PeriBole = 0 AND boledeta.NumeBole = 0"
  loc_C1BA53: LitStr " AND PeriCtct = 0 AND BimeCtct = 0 AND NumeCtct = 0 AND MoviCtct = 0"
  loc_C1BA56: ConcatStr
  loc_C1BA57: FStStrNoPop var_D4
  loc_C1BA5A: FLdPr Me
  loc_C1BA5D: MemLdRfVar from_stack_1.global_104
  loc_C1BA60: NewIfNullPr clsdetabole
  loc_C1BA63: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1BA68: FFree1Str var_D4
  loc_C1BA6B: Branch loc_C1BE70
  loc_C1BA6E: FLdUI1
  loc_C1BA72: LitI2_Byte 3
  loc_C1BA74: CUI1I2
  loc_C1BA76: EqI2
  loc_C1BA77: BranchF loc_C1BB96
  loc_C1BA7A: LitStr "SELECT CodiCtde, '' as DetaBode, ImpoBode, DecaBode, TotaBode FROM boledeta"
  loc_C1BA7D: LitStr " WHERE boledeta.PeriBole = "
  loc_C1BA80: ConcatStr
  loc_C1BA81: FStStrNoPop var_D4
  loc_C1BA84: FLdRfVar var_9E
  loc_C1BA87: FLdPr Me
  loc_C1BA8A: MemLdRfVar from_stack_1.global_100
  loc_C1BA8D: NewIfNullPr clsdetabole
  loc_C1BA90: from_stack_1 = clsdetabole.PeriBole
  loc_C1BA95: FLdI2 var_9E
  loc_C1BA98: CStrUI1
  loc_C1BA9A: FStStrNoPop var_F8
  loc_C1BA9D: ConcatStr
  loc_C1BA9E: FStStrNoPop var_FC
  loc_C1BAA1: LitStr " AND boledeta.NumeBole = "
  loc_C1BAA4: ConcatStr
  loc_C1BAA5: FStStrNoPop var_104
  loc_C1BAA8: FLdRfVar var_100
  loc_C1BAAB: FLdPr Me
  loc_C1BAAE: MemLdRfVar from_stack_1.global_100
  loc_C1BAB1: NewIfNullPr clsdetabole
  loc_C1BAB4: from_stack_1 = clsdetabole.NumeBole
  loc_C1BAB9: ILdRf var_100
  loc_C1BABC: CStrI4
  loc_C1BABE: FStStrNoPop var_108
  loc_C1BAC1: ConcatStr
  loc_C1BAC2: FStStrNoPop var_10C
  loc_C1BAC5: LitStr " AND PeriCtct = "
  loc_C1BAC8: ConcatStr
  loc_C1BAC9: FStStrNoPop var_114
  loc_C1BACC: FLdRfVar var_110
  loc_C1BACF: FLdPr Me
  loc_C1BAD2: MemLdRfVar from_stack_1.global_100
  loc_C1BAD5: NewIfNullPr clsdetabole
  loc_C1BAD8: from_stack_1 = clsdetabole.PeriCtct
  loc_C1BADD: ILdRf var_110
  loc_C1BAE0: CStrI4
  loc_C1BAE2: FStStrNoPop var_118
  loc_C1BAE5: ConcatStr
  loc_C1BAE6: FStStrNoPop var_11C
  loc_C1BAE9: LitStr " AND BimeCtct = "
  loc_C1BAEC: ConcatStr
  loc_C1BAED: FStStrNoPop var_124
  loc_C1BAF0: FLdRfVar var_11E
  loc_C1BAF3: FLdPr Me
  loc_C1BAF6: MemLdRfVar from_stack_1.global_100
  loc_C1BAF9: NewIfNullPr clsdetabole
  loc_C1BAFC: from_stack_1 = clsdetabole.BimeCtct
  loc_C1BB01: FLdI2 var_11E
  loc_C1BB04: CStrUI1
  loc_C1BB06: FStStrNoPop var_128
  loc_C1BB09: ConcatStr
  loc_C1BB0A: FStStrNoPop var_12C
  loc_C1BB0D: LitStr " AND NumeCtct = "
  loc_C1BB10: ConcatStr
  loc_C1BB11: FStStrNoPop var_134
  loc_C1BB14: FLdRfVar var_130
  loc_C1BB17: FLdPr Me
  loc_C1BB1A: MemLdRfVar from_stack_1.global_100
  loc_C1BB1D: NewIfNullPr clsdetabole
  loc_C1BB20: from_stack_1 = clsdetabole.NumeCtct
  loc_C1BB25: ILdRf var_130
  loc_C1BB28: CStrI4
  loc_C1BB2A: FStStrNoPop var_138
  loc_C1BB2D: ConcatStr
  loc_C1BB2E: FStStrNoPop var_13C
  loc_C1BB31: LitStr " AND MoviCtct = "
  loc_C1BB34: ConcatStr
  loc_C1BB35: FStStrNoPop var_144
  loc_C1BB38: FLdRfVar var_13E
  loc_C1BB3B: FLdPr Me
  loc_C1BB3E: MemLdRfVar from_stack_1.global_100
  loc_C1BB41: NewIfNullPr clsdetabole
  loc_C1BB44: from_stack_1 = clsdetabole.MoviCtct
  loc_C1BB49: FLdI2 var_13E
  loc_C1BB4C: CStrUI1
  loc_C1BB4E: FStStrNoPop var_148
  loc_C1BB51: ConcatStr
  loc_C1BB52: FStStrNoPop var_14C
  loc_C1BB55: LitStr " ORDER BY PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_C1BB58: ConcatStr
  loc_C1BB59: FStStrNoPop var_150
  loc_C1BB5C: FLdPr Me
  loc_C1BB5F: MemLdRfVar from_stack_1.global_104
  loc_C1BB62: NewIfNullPr clsdetabole
  loc_C1BB65: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1BB6A: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_148 = "": var_14C = ""
  loc_C1BB93: Branch loc_C1BE70
  loc_C1BB96: FLdUI1
  loc_C1BB9A: LitI2_Byte 4
  loc_C1BB9C: CUI1I2
  loc_C1BB9E: EqI2
  loc_C1BB9F: BranchF loc_C1BCC7
  loc_C1BBA2: LitStr "SELECT CodiCtde, DetaSece as DetaBode, ImpoBode, DecaBode, TotaBode FROM boledeta"
  loc_C1BBA5: LitStr " LEFT JOIN servceme ON servceme.PeriOrde = boledeta.PeriOrde AND servceme.CodiSece = CodiCtde"
  loc_C1BBA8: ConcatStr
  loc_C1BBA9: FStStrNoPop var_D4
  loc_C1BBAC: LitStr " WHERE boledeta.PeriBole = "
  loc_C1BBAF: ConcatStr
  loc_C1BBB0: FStStrNoPop var_F8
  loc_C1BBB3: FLdRfVar var_9E
  loc_C1BBB6: FLdPr Me
  loc_C1BBB9: MemLdRfVar from_stack_1.global_100
  loc_C1BBBC: NewIfNullPr clsdetabole
  loc_C1BBBF: from_stack_1 = clsdetabole.PeriBole
  loc_C1BBC4: FLdI2 var_9E
  loc_C1BBC7: CStrUI1
  loc_C1BBC9: FStStrNoPop var_FC
  loc_C1BBCC: ConcatStr
  loc_C1BBCD: FStStrNoPop var_104
  loc_C1BBD0: LitStr " AND boledeta.NumeBole = "
  loc_C1BBD3: ConcatStr
  loc_C1BBD4: FStStrNoPop var_108
  loc_C1BBD7: FLdRfVar var_100
  loc_C1BBDA: FLdPr Me
  loc_C1BBDD: MemLdRfVar from_stack_1.global_100
  loc_C1BBE0: NewIfNullPr clsdetabole
  loc_C1BBE3: from_stack_1 = clsdetabole.NumeBole
  loc_C1BBE8: ILdRf var_100
  loc_C1BBEB: CStrI4
  loc_C1BBED: FStStrNoPop var_10C
  loc_C1BBF0: ConcatStr
  loc_C1BBF1: FStStrNoPop var_114
  loc_C1BBF4: LitStr " AND PeriCtct = "
  loc_C1BBF7: ConcatStr
  loc_C1BBF8: FStStrNoPop var_118
  loc_C1BBFB: FLdRfVar var_110
  loc_C1BBFE: FLdPr Me
  loc_C1BC01: MemLdRfVar from_stack_1.global_100
  loc_C1BC04: NewIfNullPr clsdetabole
  loc_C1BC07: from_stack_1 = clsdetabole.PeriCtct
  loc_C1BC0C: ILdRf var_110
  loc_C1BC0F: CStrI4
  loc_C1BC11: FStStrNoPop var_11C
  loc_C1BC14: ConcatStr
  loc_C1BC15: FStStrNoPop var_124
  loc_C1BC18: LitStr " AND BimeCtct = "
  loc_C1BC1B: ConcatStr
  loc_C1BC1C: FStStrNoPop var_128
  loc_C1BC1F: FLdRfVar var_11E
  loc_C1BC22: FLdPr Me
  loc_C1BC25: MemLdRfVar from_stack_1.global_100
  loc_C1BC28: NewIfNullPr clsdetabole
  loc_C1BC2B: from_stack_1 = clsdetabole.BimeCtct
  loc_C1BC30: FLdI2 var_11E
  loc_C1BC33: CStrUI1
  loc_C1BC35: FStStrNoPop var_12C
  loc_C1BC38: ConcatStr
  loc_C1BC39: FStStrNoPop var_134
  loc_C1BC3C: LitStr " AND NumeCtct = "
  loc_C1BC3F: ConcatStr
  loc_C1BC40: FStStrNoPop var_138
  loc_C1BC43: FLdRfVar var_130
  loc_C1BC46: FLdPr Me
  loc_C1BC49: MemLdRfVar from_stack_1.global_100
  loc_C1BC4C: NewIfNullPr clsdetabole
  loc_C1BC4F: from_stack_1 = clsdetabole.NumeCtct
  loc_C1BC54: ILdRf var_130
  loc_C1BC57: CStrI4
  loc_C1BC59: FStStrNoPop var_13C
  loc_C1BC5C: ConcatStr
  loc_C1BC5D: FStStrNoPop var_144
  loc_C1BC60: LitStr " AND MoviCtct = "
  loc_C1BC63: ConcatStr
  loc_C1BC64: FStStrNoPop var_148
  loc_C1BC67: FLdRfVar var_13E
  loc_C1BC6A: FLdPr Me
  loc_C1BC6D: MemLdRfVar from_stack_1.global_100
  loc_C1BC70: NewIfNullPr clsdetabole
  loc_C1BC73: from_stack_1 = clsdetabole.MoviCtct
  loc_C1BC78: FLdI2 var_13E
  loc_C1BC7B: CStrUI1
  loc_C1BC7D: FStStrNoPop var_14C
  loc_C1BC80: ConcatStr
  loc_C1BC81: FStStrNoPop var_150
  loc_C1BC84: LitStr " ORDER BY PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_C1BC87: ConcatStr
  loc_C1BC88: FStStrNoPop var_154
  loc_C1BC8B: FLdPr Me
  loc_C1BC8E: MemLdRfVar from_stack_1.global_104
  loc_C1BC91: NewIfNullPr clsdetabole
  loc_C1BC94: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1BC99: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_C1BCC4: Branch loc_C1BE70
  loc_C1BCC7: FLdUI1
  loc_C1BCCB: LitI2_Byte 5
  loc_C1BCCD: CUI1I2
  loc_C1BCCF: EqI2
  loc_C1BCD0: BranchF loc_C1BE1F
  loc_C1BCD3: LitStr "SELECT CodiCtde, '' as DetaBode, ImpoBode, DecaBode, TotaBode FROM boledeta"
  loc_C1BCD6: LitStr " WHERE boledeta.PeriBole = "
  loc_C1BCD9: ConcatStr
  loc_C1BCDA: FStStrNoPop var_D4
  loc_C1BCDD: FLdRfVar var_9E
  loc_C1BCE0: FLdPr Me
  loc_C1BCE3: MemLdRfVar from_stack_1.global_100
  loc_C1BCE6: NewIfNullPr clsdetabole
  loc_C1BCE9: from_stack_1 = clsdetabole.PeriBole
  loc_C1BCEE: FLdI2 var_9E
  loc_C1BCF1: CStrUI1
  loc_C1BCF3: FStStrNoPop var_F8
  loc_C1BCF6: ConcatStr
  loc_C1BCF7: FStStrNoPop var_FC
  loc_C1BCFA: LitStr " AND boledeta.NumeBole = "
  loc_C1BCFD: ConcatStr
  loc_C1BCFE: FStStrNoPop var_104
  loc_C1BD01: FLdRfVar var_100
  loc_C1BD04: FLdPr Me
  loc_C1BD07: MemLdRfVar from_stack_1.global_100
  loc_C1BD0A: NewIfNullPr clsdetabole
  loc_C1BD0D: from_stack_1 = clsdetabole.NumeBole
  loc_C1BD12: ILdRf var_100
  loc_C1BD15: CStrI4
  loc_C1BD17: FStStrNoPop var_108
  loc_C1BD1A: ConcatStr
  loc_C1BD1B: FStStrNoPop var_10C
  loc_C1BD1E: LitStr " AND PeriCtct = "
  loc_C1BD21: ConcatStr
  loc_C1BD22: FStStrNoPop var_114
  loc_C1BD25: FLdRfVar var_110
  loc_C1BD28: FLdPr Me
  loc_C1BD2B: MemLdRfVar from_stack_1.global_100
  loc_C1BD2E: NewIfNullPr clsdetabole
  loc_C1BD31: from_stack_1 = clsdetabole.PeriCtct
  loc_C1BD36: ILdRf var_110
  loc_C1BD39: CStrI4
  loc_C1BD3B: FStStrNoPop var_118
  loc_C1BD3E: ConcatStr
  loc_C1BD3F: FStStrNoPop var_11C
  loc_C1BD42: LitStr " AND BimeCtct = "
  loc_C1BD45: ConcatStr
  loc_C1BD46: FStStrNoPop var_124
  loc_C1BD49: FLdRfVar var_11E
  loc_C1BD4C: FLdPr Me
  loc_C1BD4F: MemLdRfVar from_stack_1.global_100
  loc_C1BD52: NewIfNullPr clsdetabole
  loc_C1BD55: from_stack_1 = clsdetabole.BimeCtct
  loc_C1BD5A: FLdI2 var_11E
  loc_C1BD5D: CStrUI1
  loc_C1BD5F: FStStrNoPop var_128
  loc_C1BD62: ConcatStr
  loc_C1BD63: FStStrNoPop var_12C
  loc_C1BD66: LitStr " AND NumeCtct = "
  loc_C1BD69: ConcatStr
  loc_C1BD6A: FStStrNoPop var_134
  loc_C1BD6D: FLdRfVar var_130
  loc_C1BD70: FLdPr Me
  loc_C1BD73: MemLdRfVar from_stack_1.global_100
  loc_C1BD76: NewIfNullPr clsdetabole
  loc_C1BD79: from_stack_1 = clsdetabole.NumeCtct
  loc_C1BD7E: ILdRf var_130
  loc_C1BD81: CStrI4
  loc_C1BD83: FStStrNoPop var_138
  loc_C1BD86: ConcatStr
  loc_C1BD87: FStStrNoPop var_13C
  loc_C1BD8A: LitStr " AND MoviCtct = "
  loc_C1BD8D: ConcatStr
  loc_C1BD8E: FStStrNoPop var_144
  loc_C1BD91: FLdRfVar var_13E
  loc_C1BD94: FLdPr Me
  loc_C1BD97: MemLdRfVar from_stack_1.global_100
  loc_C1BD9A: NewIfNullPr clsdetabole
  loc_C1BD9D: from_stack_1 = clsdetabole.MoviCtct
  loc_C1BDA2: FLdI2 var_13E
  loc_C1BDA5: CStrUI1
  loc_C1BDA7: FStStrNoPop var_148
  loc_C1BDAA: ConcatStr
  loc_C1BDAB: FStStrNoPop var_14C
  loc_C1BDAE: LitStr " ORDER BY PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_C1BDB1: ConcatStr
  loc_C1BDB2: FStStrNoPop var_150
  loc_C1BDB5: FLdPr Me
  loc_C1BDB8: MemLdRfVar from_stack_1.global_104
  loc_C1BDBB: NewIfNullPr clsdetabole
  loc_C1BDBE: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1BDC3: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_148 = "": var_14C = ""
  loc_C1BDEC: FLdRfVar var_D4
  loc_C1BDEF: FLdPr Me
  loc_C1BDF2: MemLdRfVar from_stack_1.global_100
  loc_C1BDF5: NewIfNullPr clsdetabole
  loc_C1BDF8: from_stack_1 = clsdetabole.ExpeCtct
  loc_C1BDFD: LitI2_Byte 0
  loc_C1BDFF: LitVar_Missing var_E4
  loc_C1BE02: LitI2_Byte 0
  loc_C1BE04: FLdZeroAd var_D4
  loc_C1BE07: CVarStr var_D0
  loc_C1BE0A: PopAdLdVar
  loc_C1BE0B: FMemLdRf unk_4DE72D
  loc_C1BE10: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1BE15: FFreeVar var_D0 = ""
  loc_C1BE1C: Branch loc_C1BE70
  loc_C1BE1F: FLdUI1
  loc_C1BE23: LitI2_Byte 6
  loc_C1BE25: CUI1I2
  loc_C1BE27: EqI2
  loc_C1BE28: BranchF loc_C1BE49
  loc_C1BE2B: LitStr "SELECT CodiCtde FROM boledeta WHERE boledeta.PeriBole = 0 AND boledeta.NumeBole = 0"
  loc_C1BE2E: LitStr " AND PeriCtct = 0 AND BimeCtct = 0 AND NumeCtct = 0 AND MoviCtct = 0"
  loc_C1BE31: ConcatStr
  loc_C1BE32: FStStrNoPop var_D4
  loc_C1BE35: FLdPr Me
  loc_C1BE38: MemLdRfVar from_stack_1.global_104
  loc_C1BE3B: NewIfNullPr clsdetabole
  loc_C1BE3E: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1BE43: FFree1Str var_D4
  loc_C1BE46: Branch loc_C1BE70
  loc_C1BE49: FLdUI1
  loc_C1BE4D: LitI2_Byte 7
  loc_C1BE4F: CUI1I2
  loc_C1BE51: EqI2
  loc_C1BE52: BranchF loc_C1BE70
  loc_C1BE55: LitStr "SELECT CodiCtde FROM boledeta WHERE boledeta.PeriBole = 0 AND boledeta.NumeBole = 0"
  loc_C1BE58: LitStr " AND PeriCtct = 0 AND BimeCtct = 0 AND NumeCtct = 0 AND MoviCtct = 0"
  loc_C1BE5B: ConcatStr
  loc_C1BE5C: FStStrNoPop var_D4
  loc_C1BE5F: FLdPr Me
  loc_C1BE62: MemLdRfVar from_stack_1.global_104
  loc_C1BE65: NewIfNullPr clsdetabole
  loc_C1BE68: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1BE6D: FFree1Str var_D4
  loc_C1BE70: FLdRfVar var_100
  loc_C1BE73: FLdPr Me
  loc_C1BE76: MemLdRfVar from_stack_1.global_104
  loc_C1BE79: NewIfNullPr clsdetabole
  loc_C1BE7C: from_stack_1 = clsdetabole.RecordCount
  loc_C1BE81: ILdRf var_100
  loc_C1BE84: LitI4 0
  loc_C1BE89: GtI4
  loc_C1BE8A: BranchF loc_C1C008
  loc_C1BE8D: LitI4 0
  loc_C1BE92: FLdRfVar var_100
  loc_C1BE95: FLdPr Me
  loc_C1BE98: MemLdRfVar from_stack_1.global_104
  loc_C1BE9B: NewIfNullPr clsdetabole
  loc_C1BE9E: from_stack_1 = clsdetabole.RecordCount
  loc_C1BEA3: ILdRf var_100
  loc_C1BEA6: FMemLdRf unk_4DE72D
  loc_C1BEAB: RedimPreserve
  loc_C1BEB5: FMemLdR4 var_9C(24)
  loc_C1BEBA: LitI2_Byte 1
  loc_C1BEBC: FnUBound
  loc_C1BEBE: CI2I4
  loc_C1BEBF: FMemStI2 var_9C(28)
  loc_C1BEC4: FLdPr Me
  loc_C1BEC7: MemLdI2 global_128
  loc_C1BECA: CI4UI1
  loc_C1BECB: FLdPr Me
  loc_C1BECE: MemLdI2 global_126
  loc_C1BED1: CI4UI1
  loc_C1BED2: FLdPr Me
  loc_C1BED5: MemLdI2 global_124
  loc_C1BED8: CI4UI1
  loc_C1BED9: LitI4 1
  loc_C1BEDE: FLdPr Me
  loc_C1BEE1: MemLdStr global_116
  loc_C1BEE4: Ary1LdPr
  loc_C1BEE5: MemLdStr global_188
  loc_C1BEE8: Ary1LdPr
  loc_C1BEE9: MemLdStr global_0
  loc_C1BEEC: Ary1LdPr
  loc_C1BEED: MemLdStr global_12
  loc_C1BEF0: Ary1LdPr
  loc_C1BEF1: MemLdI2 global_8
  loc_C1BEF4: FMemLdI2 var_9C(28)
  loc_C1BEF9: AddI2
  loc_C1BEFA: FLdPr Me
  loc_C1BEFD: MemLdI2 global_128
  loc_C1BF00: CI4UI1
  loc_C1BF01: FLdPr Me
  loc_C1BF04: MemLdI2 global_126
  loc_C1BF07: CI4UI1
  loc_C1BF08: FLdPr Me
  loc_C1BF0B: MemLdI2 global_124
  loc_C1BF0E: CI4UI1
  loc_C1BF0F: LitI4 1
  loc_C1BF14: FLdPr Me
  loc_C1BF17: MemLdStr global_116
  loc_C1BF1A: Ary1LdPr
  loc_C1BF1B: MemLdStr global_188
  loc_C1BF1E: Ary1LdPr
  loc_C1BF1F: MemLdStr global_0
  loc_C1BF22: Ary1LdPr
  loc_C1BF23: MemLdStr global_12
  loc_C1BF26: Ary1LdPr
  loc_C1BF27: MemStI2 global_8
  loc_C1BF2A: LitI2_Byte 1
  loc_C1BF2C: FLdPr Me
  loc_C1BF2F: MemLdRfVar from_stack_1.global_132
  loc_C1BF32: FMemLdR4 var_9C(24)
  loc_C1BF37: LitI2_Byte 1
  loc_C1BF39: FnUBound
  loc_C1BF3B: CI2I4
  loc_C1BF3C: ForI2 var_158
  loc_C1BF42: FLdPr Me
  loc_C1BF45: MemLdI2 global_132
  loc_C1BF48: CI4UI1
  loc_C1BF49: FMemLdR4 var_9C(24)
  loc_C1BF4E: AryLock
  loc_C1BF51: Ary1LdRf
  loc_C1BF52: FStR4 var_160
  loc_C1BF55: FLdRfVar var_D0
  loc_C1BF58: FLdPr Me
  loc_C1BF5B: MemLdRfVar from_stack_1.global_104
  loc_C1BF5E: NewIfNullPr clsdetabole
  loc_C1BF61: from_stack_1 = clsdetabole.DetaBode
  loc_C1BF66: LitI2_Byte 0
  loc_C1BF68: LitVar_Missing var_E4
  loc_C1BF6B: LitI2_Byte 0
  loc_C1BF6D: FLdVar var_D0
  loc_C1BF71: FMemLdRf 0
  loc_C1BF76: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1BF7B: FFreeVar var_D0 = ""
  loc_C1BF82: FLdRfVar var_F0
  loc_C1BF85: FLdPr Me
  loc_C1BF88: MemLdRfVar from_stack_1.global_104
  loc_C1BF8B: NewIfNullPr clsdetabole
  loc_C1BF8E: from_stack_1 = clsdetabole.ImpoBode
  loc_C1BF93: LitI2_Byte 0
  loc_C1BF95: LitVar_Missing var_D0
  loc_C1BF98: LitI2_Byte &HFF
  loc_C1BF9A: FLdFPR8 var_F0
  loc_C1BF9D: CVarR8
  loc_C1BFA1: PopAdLdVar
  loc_C1BFA2: FMemLdRf 0
  loc_C1BFA7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1BFAC: FFree1Var var_D0 = ""
  loc_C1BFAF: FLdRfVar var_F0
  loc_C1BFB2: FLdPr Me
  loc_C1BFB5: MemLdRfVar from_stack_1.global_104
  loc_C1BFB8: NewIfNullPr clsdetabole
  loc_C1BFBB: from_stack_1 = clsdetabole.DecaBode
  loc_C1BFC0: LitI2_Byte 0
  loc_C1BFC2: LitVar_Missing var_D0
  loc_C1BFC5: LitI2_Byte &HFF
  loc_C1BFC7: FLdFPR8 var_F0
  loc_C1BFCA: CVarR8
  loc_C1BFCE: PopAdLdVar
  loc_C1BFCF: FMemLdRf 0
  loc_C1BFD4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1BFD9: FFree1Var var_D0 = ""
  loc_C1BFDC: LitI2_Byte 1
  loc_C1BFDE: PopTmpLdAd2 var_9E
  loc_C1BFE1: FLdPr Me
  loc_C1BFE4: MemLdRfVar from_stack_1.global_104
  loc_C1BFE7: NewIfNullPr clsdetabole
  loc_C1BFEA: Call clsdetabole.Move(from_stack_1v)
  loc_C1BFEF: LitI4 0
  loc_C1BFF4: FStR4 var_160
  loc_C1BFF7: AryUnlock
  loc_C1BFFA: FLdPr Me
  loc_C1BFFD: MemLdRfVar from_stack_1.global_132
  loc_C1C000: NextI2 var_158, loc_C1BF42
  loc_C1C005: Branch loc_C1C100
  loc_C1C008: LitI4 0
  loc_C1C00D: LitI4 1
  loc_C1C012: FMemLdRf unk_4DE72D
  loc_C1C017: RedimPreserve
  loc_C1C021: FMemLdR4 var_9C(24)
  loc_C1C026: LitI2_Byte 1
  loc_C1C028: FnUBound
  loc_C1C02A: CI2I4
  loc_C1C02B: FMemStI2 var_9C(28)
  loc_C1C030: FLdPr Me
  loc_C1C033: MemLdI2 global_128
  loc_C1C036: CI4UI1
  loc_C1C037: FLdPr Me
  loc_C1C03A: MemLdI2 global_126
  loc_C1C03D: CI4UI1
  loc_C1C03E: FLdPr Me
  loc_C1C041: MemLdI2 global_124
  loc_C1C044: CI4UI1
  loc_C1C045: LitI4 1
  loc_C1C04A: FLdPr Me
  loc_C1C04D: MemLdStr global_116
  loc_C1C050: Ary1LdPr
  loc_C1C051: MemLdStr global_188
  loc_C1C054: Ary1LdPr
  loc_C1C055: MemLdStr global_0
  loc_C1C058: Ary1LdPr
  loc_C1C059: MemLdStr global_12
  loc_C1C05C: Ary1LdPr
  loc_C1C05D: MemLdI2 global_8
  loc_C1C060: FMemLdI2 var_9C(28)
  loc_C1C065: AddI2
  loc_C1C066: FLdPr Me
  loc_C1C069: MemLdI2 global_128
  loc_C1C06C: CI4UI1
  loc_C1C06D: FLdPr Me
  loc_C1C070: MemLdI2 global_126
  loc_C1C073: CI4UI1
  loc_C1C074: FLdPr Me
  loc_C1C077: MemLdI2 global_124
  loc_C1C07A: CI4UI1
  loc_C1C07B: LitI4 1
  loc_C1C080: FLdPr Me
  loc_C1C083: MemLdStr global_116
  loc_C1C086: Ary1LdPr
  loc_C1C087: MemLdStr global_188
  loc_C1C08A: Ary1LdPr
  loc_C1C08B: MemLdStr global_0
  loc_C1C08E: Ary1LdPr
  loc_C1C08F: MemLdStr global_12
  loc_C1C092: Ary1LdPr
  loc_C1C093: MemStI2 global_8
  loc_C1C096: LitI4 1
  loc_C1C09B: FMemLdR4 var_9C(24)
  loc_C1C0A0: AryLock
  loc_C1C0A3: Ary1LdRf
  loc_C1C0A4: FStR4 var_168
  loc_C1C0A7: LitI2_Byte 0
  loc_C1C0A9: LitVar_Missing var_D0
  loc_C1C0AC: LitI2_Byte 0
  loc_C1C0AE: LitVarStr var_B0, "&nbsp;"
  loc_C1C0B3: PopAdLdVar
  loc_C1C0B4: FMemLdRf 0
  loc_C1C0B9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1C0BE: FFree1Var var_D0 = ""
  loc_C1C0C1: LitI2_Byte 0
  loc_C1C0C3: LitVar_Missing var_D0
  loc_C1C0C6: LitI2_Byte 0
  loc_C1C0C8: LitVarI2 var_B0, 0
  loc_C1C0CD: PopAdLdVar
  loc_C1C0CE: FMemLdRf 0
  loc_C1C0D3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1C0D8: FFree1Var var_D0 = ""
  loc_C1C0DB: LitI2_Byte 0
  loc_C1C0DD: LitVar_Missing var_D0
  loc_C1C0E0: LitI2_Byte 0
  loc_C1C0E2: LitVarI2 var_B0, 0
  loc_C1C0E7: PopAdLdVar
  loc_C1C0E8: FMemLdRf 0
  loc_C1C0ED: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C1C0F2: FFree1Var var_D0 = ""
  loc_C1C0F5: LitI4 0
  loc_C1C0FA: FStR4 var_168
  loc_C1C0FD: AryUnlock
  loc_C1C100: LitI4 0
  loc_C1C105: FStR4 var_9C
  loc_C1C108: AryUnlock
  loc_C1C10B: AryUnlock
  loc_C1C10E: AryUnlock
  loc_C1C111: AryUnlock
  loc_C1C114: AryUnlock
  loc_C1C117: LitI2_Byte 1
  loc_C1C119: PopTmpLdAd2 var_9E
  loc_C1C11C: FLdPr Me
  loc_C1C11F: MemLdRfVar from_stack_1.global_100
  loc_C1C122: NewIfNullPr clsdetabole
  loc_C1C125: Call clsdetabole.Move(from_stack_1v)
  loc_C1C12A: ExitProcHresult
End Function

Private Function Proc_163_34_AB85DC() 'AB85DC
  'Data Table: 4DE7C8
  loc_AB8518: ZeroRetVal
  loc_AB851A: FLdRfVar var_8C
  loc_AB851D: NewIfNullAd
  loc_AB8520: FStAd var_90 
  loc_AB8524: LitStr "SELECT cast(group_concat(DISTINCT NumeApre ORDER BY NumeApre ASC SEPARATOR ', ') as CHAR) as AutoApre"
  loc_AB8527: LitStr " FROM boleapre WHERE PeriBole = "
  loc_AB852A: ConcatStr
  loc_AB852B: FStStrNoPop var_A8
  loc_AB852E: FLdPr Me
  loc_AB8531: VCallAd Control_ID_PeriBoleMsk
  loc_AB8534: FStAdFunc var_94
  loc_AB8537: FLdPr var_94
  loc_AB853A: LateIdLdVar var_A4 DispID_22 0
  loc_AB8541: CStrVarTmp
  loc_AB8542: FStStrNoPop var_AC
  loc_AB8545: ConcatStr
  loc_AB8546: FStStrNoPop var_B0
  loc_AB8549: LitStr " AND NumeBole = "
  loc_AB854C: ConcatStr
  loc_AB854D: FStStrNoPop var_C8
  loc_AB8550: FLdPr Me
  loc_AB8553: VCallAd Control_ID_NumeBoleMsk
  loc_AB8556: FStAdFunc var_B4
  loc_AB8559: FLdPr var_B4
  loc_AB855C: LateIdLdVar var_C4 DispID_22 0
  loc_AB8563: CStrVarTmp
  loc_AB8564: FStStrNoPop var_CC
  loc_AB8567: ConcatStr
  loc_AB8568: FStStrNoPop var_D0
  loc_AB856B: LitStr " GROUP BY PeriBole, NumeBole"
  loc_AB856E: ConcatStr
  loc_AB856F: FStStrNoPop var_D4
  loc_AB8572: FLdPr var_90
  loc_AB8575: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_AB857A: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_AB858B: FFreeAd var_94 = ""
  loc_AB8592: FFreeVar var_A4 = ""
  loc_AB8599: FLdRfVar var_D8
  loc_AB859C: FLdPr var_90
  loc_AB859F: from_stack_1 = clsboleapre.RecordCount
  loc_AB85A4: ILdRf var_D8
  loc_AB85A7: LitI4 0
  loc_AB85AC: GtI4
  loc_AB85AD: BranchF loc_AB85C8
  loc_AB85B0: FLdRfVar var_A4
  loc_AB85B3: FLdPr var_90
  loc_AB85B6: from_stack_1 = clsboleapre.AutoApre
  loc_AB85BB: FLdRfVar var_A4
  loc_AB85BE: CStrVarTmp
  loc_AB85BF: FStStr var_88
  loc_AB85C2: FFree1Var var_A4 = ""
  loc_AB85C5: Branch loc_AB85CE
  loc_AB85C8: LitStr vbNullString
  loc_AB85CB: FStStrCopy var_88
  loc_AB85CE: LitNothing
  loc_AB85D0: FStAd var_90 
  loc_AB85D4: ExitProcCbHresult
  loc_AB85DA: FLdPr arg_5098
End Function

Private Function Proc_163_35_BD89C4() 'BD89C4
  'Data Table: 4DE7C8
  loc_BD824C: LitVarI2 var_D8, 12
  loc_BD8251: LitVarI2 var_B8, 10
  loc_BD8256: LitI4 1
  loc_BD825B: FLdPr Me
  loc_BD825E: MemLdStr global_116
  loc_BD8261: Ary1LdPr
  loc_BD8262: MemLdStr global_148
  loc_BD8265: FnLenStr
  loc_BD8266: LitI4 9
  loc_BD826B: GeI4
  loc_BD826C: CVarBoolI2 var_98
  loc_BD8270: FLdRfVar var_E8
  loc_BD8273: ImpAdCallFPR4  = IIf(, , )
  loc_BD8278: FLdRfVar var_E8
  loc_BD827B: CI2Var
  loc_BD827C: FStI2 var_86
  loc_BD827F: FFreeVar var_98 = "": var_B8 = "": var_D8 = ""
  loc_BD828A: LitVarStr var_98, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_BD828F: PopAdLdVar
  loc_BD8290: FLdPr Me
  loc_BD8293: MemLdRfVar from_stack_1.global_76
  loc_BD8296: LdPrVar
  loc_BD8298: LateMemCall
  loc_BD829E: LitVarStr var_98, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_BD82A3: PopAdLdVar
  loc_BD82A4: FLdPr Me
  loc_BD82A7: MemLdRfVar from_stack_1.global_76
  loc_BD82AA: LdPrVar
  loc_BD82AC: LateMemCall
  loc_BD82B2: LitVarStr var_98, "<head>"
  loc_BD82B7: PopAdLdVar
  loc_BD82B8: FLdPr Me
  loc_BD82BB: MemLdRfVar from_stack_1.global_76
  loc_BD82BE: LdPrVar
  loc_BD82C0: LateMemCall
  loc_BD82C6: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BD82CB: PopAdLdVar
  loc_BD82CC: FLdPr Me
  loc_BD82CF: MemLdRfVar from_stack_1.global_76
  loc_BD82D2: LdPrVar
  loc_BD82D4: LateMemCall
  loc_BD82DA: LitStr "<title>"
  loc_BD82DD: FLdRfVar var_EC
  loc_BD82E0: FLdPr Me
  loc_BD82E3:  = Me.Caption
  loc_BD82E8: ILdRf var_EC
  loc_BD82EB: ConcatStr
  loc_BD82EC: FStStrNoPop var_F0
  loc_BD82EF: LitStr "</title>"
  loc_BD82F2: ConcatStr
  loc_BD82F3: CVarStr var_B8
  loc_BD82F6: PopAdLdVar
  loc_BD82F7: FLdPr Me
  loc_BD82FA: MemLdRfVar from_stack_1.global_76
  loc_BD82FD: LdPrVar
  loc_BD82FF: LateMemCall
  loc_BD8305: FFreeStr var_EC = ""
  loc_BD830C: FFree1Var var_B8 = ""
  loc_BD830F: LitVarStr var_98, "<style type=""text/css"">"
  loc_BD8314: PopAdLdVar
  loc_BD8315: FLdPr Me
  loc_BD8318: MemLdRfVar from_stack_1.global_76
  loc_BD831B: LdPrVar
  loc_BD831D: LateMemCall
  loc_BD8323: LitVarStr var_98, "<!--"
  loc_BD8328: PopAdLdVar
  loc_BD8329: FLdPr Me
  loc_BD832C: MemLdRfVar from_stack_1.global_76
  loc_BD832F: LdPrVar
  loc_BD8331: LateMemCall
  loc_BD8337: LitVarStr var_98, ".Encabezado {"
  loc_BD833C: PopAdLdVar
  loc_BD833D: FLdPr Me
  loc_BD8340: MemLdRfVar from_stack_1.global_76
  loc_BD8343: LdPrVar
  loc_BD8345: LateMemCall
  loc_BD834B: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BD8350: PopAdLdVar
  loc_BD8351: FLdPr Me
  loc_BD8354: MemLdRfVar from_stack_1.global_76
  loc_BD8357: LdPrVar
  loc_BD8359: LateMemCall
  loc_BD835F: LitVarStr var_98, " font-size: 10px;"
  loc_BD8364: PopAdLdVar
  loc_BD8365: FLdPr Me
  loc_BD8368: MemLdRfVar from_stack_1.global_76
  loc_BD836B: LdPrVar
  loc_BD836D: LateMemCall
  loc_BD8373: LitVarStr var_98, " background-color: #F0F0F0;"
  loc_BD8378: PopAdLdVar
  loc_BD8379: FLdPr Me
  loc_BD837C: MemLdRfVar from_stack_1.global_76
  loc_BD837F: LdPrVar
  loc_BD8381: LateMemCall
  loc_BD8387: LitVarStr var_98, "}"
  loc_BD838C: PopAdLdVar
  loc_BD838D: FLdPr Me
  loc_BD8390: MemLdRfVar from_stack_1.global_76
  loc_BD8393: LdPrVar
  loc_BD8395: LateMemCall
  loc_BD839B: LitVarStr var_98, ".Normal {"
  loc_BD83A0: PopAdLdVar
  loc_BD83A1: FLdPr Me
  loc_BD83A4: MemLdRfVar from_stack_1.global_76
  loc_BD83A7: LdPrVar
  loc_BD83A9: LateMemCall
  loc_BD83AF: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD83B4: PopAdLdVar
  loc_BD83B5: FLdPr Me
  loc_BD83B8: MemLdRfVar from_stack_1.global_76
  loc_BD83BB: LdPrVar
  loc_BD83BD: LateMemCall
  loc_BD83C3: LitVarStr var_98, " font-size: 11px;"
  loc_BD83C8: PopAdLdVar
  loc_BD83C9: FLdPr Me
  loc_BD83CC: MemLdRfVar from_stack_1.global_76
  loc_BD83CF: LdPrVar
  loc_BD83D1: LateMemCall
  loc_BD83D7: LitVarStr var_98, " vertical-align: top;"
  loc_BD83DC: PopAdLdVar
  loc_BD83DD: FLdPr Me
  loc_BD83E0: MemLdRfVar from_stack_1.global_76
  loc_BD83E3: LdPrVar
  loc_BD83E5: LateMemCall
  loc_BD83EB: LitVarStr var_98, "}"
  loc_BD83F0: PopAdLdVar
  loc_BD83F1: FLdPr Me
  loc_BD83F4: MemLdRfVar from_stack_1.global_76
  loc_BD83F7: LdPrVar
  loc_BD83F9: LateMemCall
  loc_BD83FF: LitVarStr var_98, ".NormalDetalle {"
  loc_BD8404: PopAdLdVar
  loc_BD8405: FLdPr Me
  loc_BD8408: MemLdRfVar from_stack_1.global_76
  loc_BD840B: LdPrVar
  loc_BD840D: LateMemCall
  loc_BD8413: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8418: PopAdLdVar
  loc_BD8419: FLdPr Me
  loc_BD841C: MemLdRfVar from_stack_1.global_76
  loc_BD841F: LdPrVar
  loc_BD8421: LateMemCall
  loc_BD8427: LitVarStr var_98, " font-size: 9px;"
  loc_BD842C: PopAdLdVar
  loc_BD842D: FLdPr Me
  loc_BD8430: MemLdRfVar from_stack_1.global_76
  loc_BD8433: LdPrVar
  loc_BD8435: LateMemCall
  loc_BD843B: LitVarStr var_98, " vertical-align: top;"
  loc_BD8440: PopAdLdVar
  loc_BD8441: FLdPr Me
  loc_BD8444: MemLdRfVar from_stack_1.global_76
  loc_BD8447: LdPrVar
  loc_BD8449: LateMemCall
  loc_BD844F: LitVarStr var_98, "}"
  loc_BD8454: PopAdLdVar
  loc_BD8455: FLdPr Me
  loc_BD8458: MemLdRfVar from_stack_1.global_76
  loc_BD845B: LdPrVar
  loc_BD845D: LateMemCall
  loc_BD8463: LitVarStr var_98, ".NormalBloqueFin {"
  loc_BD8468: PopAdLdVar
  loc_BD8469: FLdPr Me
  loc_BD846C: MemLdRfVar from_stack_1.global_76
  loc_BD846F: LdPrVar
  loc_BD8471: LateMemCall
  loc_BD8477: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD847C: PopAdLdVar
  loc_BD847D: FLdPr Me
  loc_BD8480: MemLdRfVar from_stack_1.global_76
  loc_BD8483: LdPrVar
  loc_BD8485: LateMemCall
  loc_BD848B: LitStr " font-size: "
  loc_BD848E: FLdI2 var_86
  loc_BD8491: CStrUI1
  loc_BD8493: FStStrNoPop var_EC
  loc_BD8496: ConcatStr
  loc_BD8497: FStStrNoPop var_F0
  loc_BD849A: LitStr "px;"
  loc_BD849D: ConcatStr
  loc_BD849E: CVarStr var_B8
  loc_BD84A1: PopAdLdVar
  loc_BD84A2: FLdPr Me
  loc_BD84A5: MemLdRfVar from_stack_1.global_76
  loc_BD84A8: LdPrVar
  loc_BD84AA: LateMemCall
  loc_BD84B0: FFreeStr var_EC = ""
  loc_BD84B7: FFree1Var var_B8 = ""
  loc_BD84BA: LitVarStr var_98, " vertical-align: top;"
  loc_BD84BF: PopAdLdVar
  loc_BD84C0: FLdPr Me
  loc_BD84C3: MemLdRfVar from_stack_1.global_76
  loc_BD84C6: LdPrVar
  loc_BD84C8: LateMemCall
  loc_BD84CE: LitVarStr var_98, "}"
  loc_BD84D3: PopAdLdVar
  loc_BD84D4: FLdPr Me
  loc_BD84D7: MemLdRfVar from_stack_1.global_76
  loc_BD84DA: LdPrVar
  loc_BD84DC: LateMemCall
  loc_BD84E2: LitVarStr var_98, ".NormalBloqueFinGrande {"
  loc_BD84E7: PopAdLdVar
  loc_BD84E8: FLdPr Me
  loc_BD84EB: MemLdRfVar from_stack_1.global_76
  loc_BD84EE: LdPrVar
  loc_BD84F0: LateMemCall
  loc_BD84F6: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD84FB: PopAdLdVar
  loc_BD84FC: FLdPr Me
  loc_BD84FF: MemLdRfVar from_stack_1.global_76
  loc_BD8502: LdPrVar
  loc_BD8504: LateMemCall
  loc_BD850A: LitStr " font-size: "
  loc_BD850D: FLdI2 var_86
  loc_BD8510: LitI2_Byte 4
  loc_BD8512: AddI2
  loc_BD8513: CStrUI1
  loc_BD8515: FStStrNoPop var_EC
  loc_BD8518: ConcatStr
  loc_BD8519: FStStrNoPop var_F0
  loc_BD851C: LitStr "px;"
  loc_BD851F: ConcatStr
  loc_BD8520: CVarStr var_B8
  loc_BD8523: PopAdLdVar
  loc_BD8524: FLdPr Me
  loc_BD8527: MemLdRfVar from_stack_1.global_76
  loc_BD852A: LdPrVar
  loc_BD852C: LateMemCall
  loc_BD8532: FFreeStr var_EC = ""
  loc_BD8539: FFree1Var var_B8 = ""
  loc_BD853C: LitVarStr var_98, " vertical-align: top;"
  loc_BD8541: PopAdLdVar
  loc_BD8542: FLdPr Me
  loc_BD8545: MemLdRfVar from_stack_1.global_76
  loc_BD8548: LdPrVar
  loc_BD854A: LateMemCall
  loc_BD8550: LitVarStr var_98, "}"
  loc_BD8555: PopAdLdVar
  loc_BD8556: FLdPr Me
  loc_BD8559: MemLdRfVar from_stack_1.global_76
  loc_BD855C: LdPrVar
  loc_BD855E: LateMemCall
  loc_BD8564: LitVarStr var_98, ".NombreMunicipio {"
  loc_BD8569: PopAdLdVar
  loc_BD856A: FLdPr Me
  loc_BD856D: MemLdRfVar from_stack_1.global_76
  loc_BD8570: LdPrVar
  loc_BD8572: LateMemCall
  loc_BD8578: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BD857D: PopAdLdVar
  loc_BD857E: FLdPr Me
  loc_BD8581: MemLdRfVar from_stack_1.global_76
  loc_BD8584: LdPrVar
  loc_BD8586: LateMemCall
  loc_BD858C: LitVarStr var_98, " font-size: 14px;"
  loc_BD8591: PopAdLdVar
  loc_BD8592: FLdPr Me
  loc_BD8595: MemLdRfVar from_stack_1.global_76
  loc_BD8598: LdPrVar
  loc_BD859A: LateMemCall
  loc_BD85A0: LitVarStr var_98, " font-weight: bold;"
  loc_BD85A5: PopAdLdVar
  loc_BD85A6: FLdPr Me
  loc_BD85A9: MemLdRfVar from_stack_1.global_76
  loc_BD85AC: LdPrVar
  loc_BD85AE: LateMemCall
  loc_BD85B4: LitVarStr var_98, "}"
  loc_BD85B9: PopAdLdVar
  loc_BD85BA: FLdPr Me
  loc_BD85BD: MemLdRfVar from_stack_1.global_76
  loc_BD85C0: LdPrVar
  loc_BD85C2: LateMemCall
  loc_BD85C8: LitVarStr var_98, ".NombreMunicipioBloqueFin {"
  loc_BD85CD: PopAdLdVar
  loc_BD85CE: FLdPr Me
  loc_BD85D1: MemLdRfVar from_stack_1.global_76
  loc_BD85D4: LdPrVar
  loc_BD85D6: LateMemCall
  loc_BD85DC: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BD85E1: PopAdLdVar
  loc_BD85E2: FLdPr Me
  loc_BD85E5: MemLdRfVar from_stack_1.global_76
  loc_BD85E8: LdPrVar
  loc_BD85EA: LateMemCall
  loc_BD85F0: LitVarStr var_98, " font-size: 10px;"
  loc_BD85F5: PopAdLdVar
  loc_BD85F6: FLdPr Me
  loc_BD85F9: MemLdRfVar from_stack_1.global_76
  loc_BD85FC: LdPrVar
  loc_BD85FE: LateMemCall
  loc_BD8604: LitVarStr var_98, "}"
  loc_BD8609: PopAdLdVar
  loc_BD860A: FLdPr Me
  loc_BD860D: MemLdRfVar from_stack_1.global_76
  loc_BD8610: LdPrVar
  loc_BD8612: LateMemCall
  loc_BD8618: LitVarStr var_98, ".DatosMunicipio {"
  loc_BD861D: PopAdLdVar
  loc_BD861E: FLdPr Me
  loc_BD8621: MemLdRfVar from_stack_1.global_76
  loc_BD8624: LdPrVar
  loc_BD8626: LateMemCall
  loc_BD862C: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BD8631: PopAdLdVar
  loc_BD8632: FLdPr Me
  loc_BD8635: MemLdRfVar from_stack_1.global_76
  loc_BD8638: LdPrVar
  loc_BD863A: LateMemCall
  loc_BD8640: LitVarStr var_98, " font-size: 12px;"
  loc_BD8645: PopAdLdVar
  loc_BD8646: FLdPr Me
  loc_BD8649: MemLdRfVar from_stack_1.global_76
  loc_BD864C: LdPrVar
  loc_BD864E: LateMemCall
  loc_BD8654: LitVarStr var_98, "}"
  loc_BD8659: PopAdLdVar
  loc_BD865A: FLdPr Me
  loc_BD865D: MemLdRfVar from_stack_1.global_76
  loc_BD8660: LdPrVar
  loc_BD8662: LateMemCall
  loc_BD8668: LitVarStr var_98, ".Totales {"
  loc_BD866D: PopAdLdVar
  loc_BD866E: FLdPr Me
  loc_BD8671: MemLdRfVar from_stack_1.global_76
  loc_BD8674: LdPrVar
  loc_BD8676: LateMemCall
  loc_BD867C: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8681: PopAdLdVar
  loc_BD8682: FLdPr Me
  loc_BD8685: MemLdRfVar from_stack_1.global_76
  loc_BD8688: LdPrVar
  loc_BD868A: LateMemCall
  loc_BD8690: LitVarStr var_98, " font-size: 13px;"
  loc_BD8695: PopAdLdVar
  loc_BD8696: FLdPr Me
  loc_BD8699: MemLdRfVar from_stack_1.global_76
  loc_BD869C: LdPrVar
  loc_BD869E: LateMemCall
  loc_BD86A4: LitVarStr var_98, " vertical-align: top;"
  loc_BD86A9: PopAdLdVar
  loc_BD86AA: FLdPr Me
  loc_BD86AD: MemLdRfVar from_stack_1.global_76
  loc_BD86B0: LdPrVar
  loc_BD86B2: LateMemCall
  loc_BD86B8: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_BD86BD: PopAdLdVar
  loc_BD86BE: FLdPr Me
  loc_BD86C1: MemLdRfVar from_stack_1.global_76
  loc_BD86C4: LdPrVar
  loc_BD86C6: LateMemCall
  loc_BD86CC: LitVarStr var_98, " font-weight: bold;"
  loc_BD86D1: PopAdLdVar
  loc_BD86D2: FLdPr Me
  loc_BD86D5: MemLdRfVar from_stack_1.global_76
  loc_BD86D8: LdPrVar
  loc_BD86DA: LateMemCall
  loc_BD86E0: LitVarStr var_98, "}"
  loc_BD86E5: PopAdLdVar
  loc_BD86E6: FLdPr Me
  loc_BD86E9: MemLdRfVar from_stack_1.global_76
  loc_BD86EC: LdPrVar
  loc_BD86EE: LateMemCall
  loc_BD86F4: LitVarStr var_98, ".Total {"
  loc_BD86F9: PopAdLdVar
  loc_BD86FA: FLdPr Me
  loc_BD86FD: MemLdRfVar from_stack_1.global_76
  loc_BD8700: LdPrVar
  loc_BD8702: LateMemCall
  loc_BD8708: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD870D: PopAdLdVar
  loc_BD870E: FLdPr Me
  loc_BD8711: MemLdRfVar from_stack_1.global_76
  loc_BD8714: LdPrVar
  loc_BD8716: LateMemCall
  loc_BD871C: LitVarStr var_98, " font-size: 14px;"
  loc_BD8721: PopAdLdVar
  loc_BD8722: FLdPr Me
  loc_BD8725: MemLdRfVar from_stack_1.global_76
  loc_BD8728: LdPrVar
  loc_BD872A: LateMemCall
  loc_BD8730: LitVarStr var_98, " vertical-align: top;"
  loc_BD8735: PopAdLdVar
  loc_BD8736: FLdPr Me
  loc_BD8739: MemLdRfVar from_stack_1.global_76
  loc_BD873C: LdPrVar
  loc_BD873E: LateMemCall
  loc_BD8744: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_BD8749: PopAdLdVar
  loc_BD874A: FLdPr Me
  loc_BD874D: MemLdRfVar from_stack_1.global_76
  loc_BD8750: LdPrVar
  loc_BD8752: LateMemCall
  loc_BD8758: LitVarStr var_98, " font-weight: bold;"
  loc_BD875D: PopAdLdVar
  loc_BD875E: FLdPr Me
  loc_BD8761: MemLdRfVar from_stack_1.global_76
  loc_BD8764: LdPrVar
  loc_BD8766: LateMemCall
  loc_BD876C: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BD8771: PopAdLdVar
  loc_BD8772: FLdPr Me
  loc_BD8775: MemLdRfVar from_stack_1.global_76
  loc_BD8778: LdPrVar
  loc_BD877A: LateMemCall
  loc_BD8780: LitVarStr var_98, "}"
  loc_BD8785: PopAdLdVar
  loc_BD8786: FLdPr Me
  loc_BD8789: MemLdRfVar from_stack_1.global_76
  loc_BD878C: LdPrVar
  loc_BD878E: LateMemCall
  loc_BD8794: LitVarStr var_98, ".Vencimiento {"
  loc_BD8799: PopAdLdVar
  loc_BD879A: FLdPr Me
  loc_BD879D: MemLdRfVar from_stack_1.global_76
  loc_BD87A0: LdPrVar
  loc_BD87A2: LateMemCall
  loc_BD87A8: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD87AD: PopAdLdVar
  loc_BD87AE: FLdPr Me
  loc_BD87B1: MemLdRfVar from_stack_1.global_76
  loc_BD87B4: LdPrVar
  loc_BD87B6: LateMemCall
  loc_BD87BC: LitStr " font-size: "
  loc_BD87BF: FLdI2 var_86
  loc_BD87C2: CStrUI1
  loc_BD87C4: FStStrNoPop var_EC
  loc_BD87C7: ConcatStr
  loc_BD87C8: FStStrNoPop var_F0
  loc_BD87CB: LitStr "px;"
  loc_BD87CE: ConcatStr
  loc_BD87CF: CVarStr var_B8
  loc_BD87D2: PopAdLdVar
  loc_BD87D3: FLdPr Me
  loc_BD87D6: MemLdRfVar from_stack_1.global_76
  loc_BD87D9: LdPrVar
  loc_BD87DB: LateMemCall
  loc_BD87E1: FFreeStr var_EC = ""
  loc_BD87E8: FFree1Var var_B8 = ""
  loc_BD87EB: LitVarStr var_98, " vertical-align: top;"
  loc_BD87F0: PopAdLdVar
  loc_BD87F1: FLdPr Me
  loc_BD87F4: MemLdRfVar from_stack_1.global_76
  loc_BD87F7: LdPrVar
  loc_BD87F9: LateMemCall
  loc_BD87FF: LitVarStr var_98, " font-weight: bold;"
  loc_BD8804: PopAdLdVar
  loc_BD8805: FLdPr Me
  loc_BD8808: MemLdRfVar from_stack_1.global_76
  loc_BD880B: LdPrVar
  loc_BD880D: LateMemCall
  loc_BD8813: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BD8818: PopAdLdVar
  loc_BD8819: FLdPr Me
  loc_BD881C: MemLdRfVar from_stack_1.global_76
  loc_BD881F: LdPrVar
  loc_BD8821: LateMemCall
  loc_BD8827: LitVarStr var_98, "}"
  loc_BD882C: PopAdLdVar
  loc_BD882D: FLdPr Me
  loc_BD8830: MemLdRfVar from_stack_1.global_76
  loc_BD8833: LdPrVar
  loc_BD8835: LateMemCall
  loc_BD883B: LitVarStr var_98, ".Resaltado {"
  loc_BD8840: PopAdLdVar
  loc_BD8841: FLdPr Me
  loc_BD8844: MemLdRfVar from_stack_1.global_76
  loc_BD8847: LdPrVar
  loc_BD8849: LateMemCall
  loc_BD884F: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8854: PopAdLdVar
  loc_BD8855: FLdPr Me
  loc_BD8858: MemLdRfVar from_stack_1.global_76
  loc_BD885B: LdPrVar
  loc_BD885D: LateMemCall
  loc_BD8863: LitVarStr var_98, " font-size: 11px;"
  loc_BD8868: PopAdLdVar
  loc_BD8869: FLdPr Me
  loc_BD886C: MemLdRfVar from_stack_1.global_76
  loc_BD886F: LdPrVar
  loc_BD8871: LateMemCall
  loc_BD8877: LitVarStr var_98, " vertical-align: top;"
  loc_BD887C: PopAdLdVar
  loc_BD887D: FLdPr Me
  loc_BD8880: MemLdRfVar from_stack_1.global_76
  loc_BD8883: LdPrVar
  loc_BD8885: LateMemCall
  loc_BD888B: LitVarStr var_98, " font-weight: bold;"
  loc_BD8890: PopAdLdVar
  loc_BD8891: FLdPr Me
  loc_BD8894: MemLdRfVar from_stack_1.global_76
  loc_BD8897: LdPrVar
  loc_BD8899: LateMemCall
  loc_BD889F: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BD88A4: PopAdLdVar
  loc_BD88A5: FLdPr Me
  loc_BD88A8: MemLdRfVar from_stack_1.global_76
  loc_BD88AB: LdPrVar
  loc_BD88AD: LateMemCall
  loc_BD88B3: LitVarStr var_98, "}"
  loc_BD88B8: PopAdLdVar
  loc_BD88B9: FLdPr Me
  loc_BD88BC: MemLdRfVar from_stack_1.global_76
  loc_BD88BF: LdPrVar
  loc_BD88C1: LateMemCall
  loc_BD88C7: LitVarStr var_98, ".CodBar {"
  loc_BD88CC: PopAdLdVar
  loc_BD88CD: FLdPr Me
  loc_BD88D0: MemLdRfVar from_stack_1.global_76
  loc_BD88D3: LdPrVar
  loc_BD88D5: LateMemCall
  loc_BD88DB: LitVarStr var_98, " font-family: ""Code 128"";"
  loc_BD88E0: PopAdLdVar
  loc_BD88E1: FLdPr Me
  loc_BD88E4: MemLdRfVar from_stack_1.global_76
  loc_BD88E7: LdPrVar
  loc_BD88E9: LateMemCall
  loc_BD88EF: LitStr " font-size: "
  loc_BD88F2: LitI2_Byte &H30
  loc_BD88F4: CStrUI1
  loc_BD88F6: FStStrNoPop var_EC
  loc_BD88F9: ConcatStr
  loc_BD88FA: FStStrNoPop var_F0
  loc_BD88FD: LitStr "px;"
  loc_BD8900: ConcatStr
  loc_BD8901: CVarStr var_B8
  loc_BD8904: PopAdLdVar
  loc_BD8905: FLdPr Me
  loc_BD8908: MemLdRfVar from_stack_1.global_76
  loc_BD890B: LdPrVar
  loc_BD890D: LateMemCall
  loc_BD8913: FFreeStr var_EC = ""
  loc_BD891A: FFree1Var var_B8 = ""
  loc_BD891D: LitVarStr var_98, " font-style: normal;"
  loc_BD8922: PopAdLdVar
  loc_BD8923: FLdPr Me
  loc_BD8926: MemLdRfVar from_stack_1.global_76
  loc_BD8929: LdPrVar
  loc_BD892B: LateMemCall
  loc_BD8931: LitVarStr var_98, " line-height: normal;"
  loc_BD8936: PopAdLdVar
  loc_BD8937: FLdPr Me
  loc_BD893A: MemLdRfVar from_stack_1.global_76
  loc_BD893D: LdPrVar
  loc_BD893F: LateMemCall
  loc_BD8945: LitVarStr var_98, " font-weight: normal;"
  loc_BD894A: PopAdLdVar
  loc_BD894B: FLdPr Me
  loc_BD894E: MemLdRfVar from_stack_1.global_76
  loc_BD8951: LdPrVar
  loc_BD8953: LateMemCall
  loc_BD8959: LitVarStr var_98, "}"
  loc_BD895E: PopAdLdVar
  loc_BD895F: FLdPr Me
  loc_BD8962: MemLdRfVar from_stack_1.global_76
  loc_BD8965: LdPrVar
  loc_BD8967: LateMemCall
  loc_BD896D: LitVarStr var_98, "-->"
  loc_BD8972: PopAdLdVar
  loc_BD8973: FLdPr Me
  loc_BD8976: MemLdRfVar from_stack_1.global_76
  loc_BD8979: LdPrVar
  loc_BD897B: LateMemCall
  loc_BD8981: LitVarStr var_98, "</style>"
  loc_BD8986: PopAdLdVar
  loc_BD8987: FLdPr Me
  loc_BD898A: MemLdRfVar from_stack_1.global_76
  loc_BD898D: LdPrVar
  loc_BD898F: LateMemCall
  loc_BD8995: LitI4 0
  loc_BD899A: FStStrCopy var_F0
  loc_BD899D: FLdRfVar var_F0
  loc_BD89A0: LitI4 0
  loc_BD89A5: FStStrCopy var_EC
  loc_BD89A8: FLdRfVar var_EC
  loc_BD89AB: LitI2_Byte 0
  loc_BD89AD: PopTmpLdAd2 var_F2
  loc_BD89B0: FLdPr Me
  loc_BD89B3: MemLdRfVar from_stack_1.global_76
  loc_BD89B6: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BD89BB: FFreeStr var_EC = ""
  loc_BD89C2: ExitProcHresult
End Function

Private Function Proc_163_36_AFBBA8() 'AFBBA8
  'Data Table: 4DE7C8
  loc_AFB9F0: LitVarStr var_94, "<table align=""center"" height=""780"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_AFB9F5: PopAdLdVar
  loc_AFB9F6: FLdPr Me
  loc_AFB9F9: MemLdRfVar from_stack_1.global_76
  loc_AFB9FC: LdPrVar
  loc_AFB9FE: LateMemCall
  loc_AFBA04: LitVarStr var_94, "  <tr valign=""top""><td>"
  loc_AFBA09: PopAdLdVar
  loc_AFBA0A: FLdPr Me
  loc_AFBA0D: MemLdRfVar from_stack_1.global_76
  loc_AFBA10: LdPrVar
  loc_AFBA12: LateMemCall
  loc_AFBA18: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_AFBA1D: PopAdLdVar
  loc_AFBA1E: FLdPr Me
  loc_AFBA21: MemLdRfVar from_stack_1.global_76
  loc_AFBA24: LdPrVar
  loc_AFBA26: LateMemCall
  loc_AFBA2C: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AFBA31: PopAdLdVar
  loc_AFBA32: FLdPr Me
  loc_AFBA35: MemLdRfVar from_stack_1.global_76
  loc_AFBA38: LdPrVar
  loc_AFBA3A: LateMemCall
  loc_AFBA40: LitStr "    <td height=""63"" colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_AFBA43: LitI2_Byte &H5F
  loc_AFBA45: CStrUI1
  loc_AFBA47: FStStrNoPop var_A8
  loc_AFBA4A: ConcatStr
  loc_AFBA4B: FStStrNoPop var_AC
  loc_AFBA4E: LitStr """ height="""
  loc_AFBA51: ConcatStr
  loc_AFBA52: FStStrNoPop var_B0
  loc_AFBA55: LitI2_Byte &H3C
  loc_AFBA57: CStrUI1
  loc_AFBA59: FStStrNoPop var_B4
  loc_AFBA5C: ConcatStr
  loc_AFBA5D: FStStrNoPop var_B8
  loc_AFBA60: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_AFBA63: ConcatStr
  loc_AFBA64: FStStrNoPop var_BC
  loc_AFBA67: LitI2_Byte &H3C
  loc_AFBA69: CStrUI1
  loc_AFBA6B: FStStrNoPop var_C0
  loc_AFBA6E: ConcatStr
  loc_AFBA6F: FStStrNoPop var_C4
  loc_AFBA72: LitStr """ height="""
  loc_AFBA75: ConcatStr
  loc_AFBA76: FStStrNoPop var_C8
  loc_AFBA79: LitI2_Byte &H3C
  loc_AFBA7B: CStrUI1
  loc_AFBA7D: FStStrNoPop var_CC
  loc_AFBA80: ConcatStr
  loc_AFBA81: FStStrNoPop var_D0
  loc_AFBA84: LitStr """ align=""right"" /><span class=""NombreMunicipio"">"
  loc_AFBA87: ConcatStr
  loc_AFBA88: FStStrNoPop var_D4
  loc_AFBA8B: LitStr "Municipalidad de Guaymallén"
  loc_AFBA8E: ConcatStr
  loc_AFBA8F: FStStrNoPop var_D8
  loc_AFBA92: LitStr "</span><br />"
  loc_AFBA95: ConcatStr
  loc_AFBA96: CVarStr var_E8
  loc_AFBA99: PopAdLdVar
  loc_AFBA9A: FLdPr Me
  loc_AFBA9D: MemLdRfVar from_stack_1.global_76
  loc_AFBAA0: LdPrVar
  loc_AFBAA2: LateMemCall
  loc_AFBAA8: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AFBAC5: FFree1Var var_E8 = ""
  loc_AFBAC8: LitStr "    "
  loc_AFBACB: LitStr "Dirección de Rentas"
  loc_AFBACE: ConcatStr
  loc_AFBACF: FStStrNoPop var_A8
  loc_AFBAD2: LitStr "<br>"
  loc_AFBAD5: ConcatStr
  loc_AFBAD6: CVarStr var_E8
  loc_AFBAD9: PopAdLdVar
  loc_AFBADA: FLdPr Me
  loc_AFBADD: MemLdRfVar from_stack_1.global_76
  loc_AFBAE0: LdPrVar
  loc_AFBAE2: LateMemCall
  loc_AFBAE8: FFree1Str var_A8
  loc_AFBAEB: FFree1Var var_E8 = ""
  loc_AFBAEE: LitStr "    "
  loc_AFBAF1: LitStr "Libertad 720 - Villa Nueva"
  loc_AFBAF4: ConcatStr
  loc_AFBAF5: FStStrNoPop var_A8
  loc_AFBAF8: LitStr "<br>"
  loc_AFBAFB: ConcatStr
  loc_AFBAFC: CVarStr var_E8
  loc_AFBAFF: PopAdLdVar
  loc_AFBB00: FLdPr Me
  loc_AFBB03: MemLdRfVar from_stack_1.global_76
  loc_AFBB06: LdPrVar
  loc_AFBB08: LateMemCall
  loc_AFBB0E: FFree1Str var_A8
  loc_AFBB11: FFree1Var var_E8 = ""
  loc_AFBB14: LitStr "    "
  loc_AFBB17: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_AFBB1A: ConcatStr
  loc_AFBB1B: FStStrNoPop var_A8
  loc_AFBB1E: LitStr "<br>"
  loc_AFBB21: ConcatStr
  loc_AFBB22: CVarStr var_E8
  loc_AFBB25: PopAdLdVar
  loc_AFBB26: FLdPr Me
  loc_AFBB29: MemLdRfVar from_stack_1.global_76
  loc_AFBB2C: LdPrVar
  loc_AFBB2E: LateMemCall
  loc_AFBB34: FFree1Str var_A8
  loc_AFBB37: FFree1Var var_E8 = ""
  loc_AFBB3A: LitStr "    "
  loc_AFBB3D: LitStr "C.U.I.T.: "
  loc_AFBB40: ConcatStr
  loc_AFBB41: FStStrNoPop var_A8
  loc_AFBB44: LitStr "30-99914707-7"
  loc_AFBB47: ConcatStr
  loc_AFBB48: FStStrNoPop var_AC
  loc_AFBB4B: LitStr "<br>"
  loc_AFBB4E: ConcatStr
  loc_AFBB4F: CVarStr var_E8
  loc_AFBB52: PopAdLdVar
  loc_AFBB53: FLdPr Me
  loc_AFBB56: MemLdRfVar from_stack_1.global_76
  loc_AFBB59: LdPrVar
  loc_AFBB5B: LateMemCall
  loc_AFBB61: FFreeStr var_A8 = ""
  loc_AFBB68: FFree1Var var_E8 = ""
  loc_AFBB6B: LitStr " <div align=""right""><em>"
  loc_AFBB6E: LitStr "&nbsp;"
  loc_AFBB71: ConcatStr
  loc_AFBB72: FStStrNoPop var_A8
  loc_AFBB75: LitStr "</em></div></td>"
  loc_AFBB78: ConcatStr
  loc_AFBB79: CVarStr var_E8
  loc_AFBB7C: PopAdLdVar
  loc_AFBB7D: FLdPr Me
  loc_AFBB80: MemLdRfVar from_stack_1.global_76
  loc_AFBB83: LdPrVar
  loc_AFBB85: LateMemCall
  loc_AFBB8B: FFree1Str var_A8
  loc_AFBB8E: FFree1Var var_E8 = ""
  loc_AFBB91: LitVarStr var_94, "  </tr>"
  loc_AFBB96: PopAdLdVar
  loc_AFBB97: FLdPr Me
  loc_AFBB9A: MemLdRfVar from_stack_1.global_76
  loc_AFBB9D: LdPrVar
  loc_AFBB9F: LateMemCall
  loc_AFBBA5: ExitProcHresult
End Function

Private Function Proc_163_37_B9AA44() 'B9AA44
  'Data Table: 4DE7C8
  loc_B9A518: LitI4 1
  loc_B9A51D: FLdPr Me
  loc_B9A520: MemLdStr global_116
  loc_B9A523: AryLock
  loc_B9A526: Ary1LdRf
  loc_B9A527: FStR4 var_8C
  loc_B9A52A: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B9A52F: PopAdLdVar
  loc_B9A530: FLdPr Me
  loc_B9A533: MemLdRfVar from_stack_1.global_76
  loc_B9A536: LdPrVar
  loc_B9A538: LateMemCall
  loc_B9A53E: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B9A543: PopAdLdVar
  loc_B9A544: FLdPr Me
  loc_B9A547: MemLdRfVar from_stack_1.global_76
  loc_B9A54A: LdPrVar
  loc_B9A54C: LateMemCall
  loc_B9A552: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - INMUEBLE</strong></td>"
  loc_B9A557: PopAdLdVar
  loc_B9A558: FLdPr Me
  loc_B9A55B: MemLdRfVar from_stack_1.global_76
  loc_B9A55E: LdPrVar
  loc_B9A560: LateMemCall
  loc_B9A566: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B9A56B: PopAdLdVar
  loc_B9A56C: FLdPr Me
  loc_B9A56F: MemLdRfVar from_stack_1.global_76
  loc_B9A572: LdPrVar
  loc_B9A574: LateMemCall
  loc_B9A57A: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B9A57D: FLdPr Me
  loc_B9A580: VCallAd Control_ID_PeriBoleMsk
  loc_B9A583: FStAdFunc var_B0
  loc_B9A586: FLdPr var_B0
  loc_B9A589: LateIdLdVar var_C0 DispID_0 0
  loc_B9A590: CStrVarTmp
  loc_B9A591: FStStrNoPop var_C4
  loc_B9A594: ConcatStr
  loc_B9A595: FStStrNoPop var_C8
  loc_B9A598: LitStr "/"
  loc_B9A59B: ConcatStr
  loc_B9A59C: FStStrNoPop var_E0
  loc_B9A59F: FLdPr Me
  loc_B9A5A2: VCallAd Control_ID_NumeBoleMsk
  loc_B9A5A5: FStAdFunc var_CC
  loc_B9A5A8: FLdPr var_CC
  loc_B9A5AB: LateIdLdVar var_DC DispID_0 0
  loc_B9A5B2: CStrVarTmp
  loc_B9A5B3: FStStrNoPop var_E4
  loc_B9A5B6: ConcatStr
  loc_B9A5B7: FStStrNoPop var_E8
  loc_B9A5BA: LitStr "</strong></td>"
  loc_B9A5BD: ConcatStr
  loc_B9A5BE: CVarStr var_F8
  loc_B9A5C1: PopAdLdVar
  loc_B9A5C2: FLdPr Me
  loc_B9A5C5: MemLdRfVar from_stack_1.global_76
  loc_B9A5C8: LdPrVar
  loc_B9A5CA: LateMemCall
  loc_B9A5D0: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = ""
  loc_B9A5DD: FFreeAd var_B0 = ""
  loc_B9A5E4: FFreeVar var_C0 = "": var_DC = ""
  loc_B9A5ED: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B9A5F2: PopAdLdVar
  loc_B9A5F3: FLdPr Me
  loc_B9A5F6: MemLdRfVar from_stack_1.global_76
  loc_B9A5F9: LdPrVar
  loc_B9A5FB: LateMemCall
  loc_B9A601: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B9A604: FMemLdR4 var_8C(128)
  loc_B9A609: ConcatStr
  loc_B9A60A: FStStrNoPop var_C4
  loc_B9A60D: LitStr "</strong></td>"
  loc_B9A610: ConcatStr
  loc_B9A611: CVarStr var_C0
  loc_B9A614: PopAdLdVar
  loc_B9A615: FLdPr Me
  loc_B9A618: MemLdRfVar from_stack_1.global_76
  loc_B9A61B: LdPrVar
  loc_B9A61D: LateMemCall
  loc_B9A623: FFree1Str var_C4
  loc_B9A626: FFree1Var var_C0 = ""
  loc_B9A629: LitVarStr var_9C, "  </tr>"
  loc_B9A62E: PopAdLdVar
  loc_B9A62F: FLdPr Me
  loc_B9A632: MemLdRfVar from_stack_1.global_76
  loc_B9A635: LdPrVar
  loc_B9A637: LateMemCall
  loc_B9A63D: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B9A642: PopAdLdVar
  loc_B9A643: FLdPr Me
  loc_B9A646: MemLdRfVar from_stack_1.global_76
  loc_B9A649: LdPrVar
  loc_B9A64B: LateMemCall
  loc_B9A651: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B9A656: PopAdLdVar
  loc_B9A657: FLdPr Me
  loc_B9A65A: MemLdRfVar from_stack_1.global_76
  loc_B9A65D: LdPrVar
  loc_B9A65F: LateMemCall
  loc_B9A665: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B9A668: FMemLdR4 var_8C(4)
  loc_B9A66D: ConcatStr
  loc_B9A66E: FStStrNoPop var_C4
  loc_B9A671: LitStr "</span> "
  loc_B9A674: ConcatStr
  loc_B9A675: FStStrNoPop var_C8
  loc_B9A678: LitStr "<br>"
  loc_B9A67B: ConcatStr
  loc_B9A67C: CVarStr var_C0
  loc_B9A67F: PopAdLdVar
  loc_B9A680: FLdPr Me
  loc_B9A683: MemLdRfVar from_stack_1.global_76
  loc_B9A686: LdPrVar
  loc_B9A688: LateMemCall
  loc_B9A68E: FFreeStr var_C4 = ""
  loc_B9A695: FFree1Var var_C0 = ""
  loc_B9A698: LitStr "      "
  loc_B9A69B: FMemLdR4 var_8C(0)
  loc_B9A6A0: ConcatStr
  loc_B9A6A1: FStStrNoPop var_C4
  loc_B9A6A4: LitStr "<br>"
  loc_B9A6A7: ConcatStr
  loc_B9A6A8: CVarStr var_C0
  loc_B9A6AB: PopAdLdVar
  loc_B9A6AC: FLdPr Me
  loc_B9A6AF: MemLdRfVar from_stack_1.global_76
  loc_B9A6B2: LdPrVar
  loc_B9A6B4: LateMemCall
  loc_B9A6BA: FFree1Str var_C4
  loc_B9A6BD: FFree1Var var_C0 = ""
  loc_B9A6C0: FMemLdR4 var_8C(44)
  loc_B9A6C5: LitStr vbNullString
  loc_B9A6C8: NeStr
  loc_B9A6CA: BranchF loc_B9A6F5
  loc_B9A6CD: LitStr "      Poseedor: "
  loc_B9A6D0: FMemLdR4 var_8C(44)
  loc_B9A6D5: ConcatStr
  loc_B9A6D6: FStStrNoPop var_C4
  loc_B9A6D9: LitStr "<br>"
  loc_B9A6DC: ConcatStr
  loc_B9A6DD: CVarStr var_C0
  loc_B9A6E0: PopAdLdVar
  loc_B9A6E1: FLdPr Me
  loc_B9A6E4: MemLdRfVar from_stack_1.global_76
  loc_B9A6E7: LdPrVar
  loc_B9A6E9: LateMemCall
  loc_B9A6EF: FFree1Str var_C4
  loc_B9A6F2: FFree1Var var_C0 = ""
  loc_B9A6F5: FMemLdR4 var_8C(60)
  loc_B9A6FA: LitStr vbNullString
  loc_B9A6FD: NeStr
  loc_B9A6FF: BranchF loc_B9A72A
  loc_B9A702: LitStr "      Fiduciario: "
  loc_B9A705: FMemLdR4 var_8C(60)
  loc_B9A70A: ConcatStr
  loc_B9A70B: FStStrNoPop var_C4
  loc_B9A70E: LitStr "<br>"
  loc_B9A711: ConcatStr
  loc_B9A712: CVarStr var_C0
  loc_B9A715: PopAdLdVar
  loc_B9A716: FLdPr Me
  loc_B9A719: MemLdRfVar from_stack_1.global_76
  loc_B9A71C: LdPrVar
  loc_B9A71E: LateMemCall
  loc_B9A724: FFree1Str var_C4
  loc_B9A727: FFree1Var var_C0 = ""
  loc_B9A72A: LitStr "      "
  loc_B9A72D: FMemLdR4 var_8C(8)
  loc_B9A732: ConcatStr
  loc_B9A733: FStStrNoPop var_C4
  loc_B9A736: LitStr " "
  loc_B9A739: ConcatStr
  loc_B9A73A: CVarStr var_108
  loc_B9A73D: LitVarStr var_AC, vbNullString
  loc_B9A742: FStVarCopyObj var_DC
  loc_B9A745: FLdRfVar var_DC
  loc_B9A748: LitStr "Nro: "
  loc_B9A74B: FMemLdR4 var_8C(12)
  loc_B9A750: ConcatStr
  loc_B9A751: CVarStr var_C0
  loc_B9A754: FMemLdR4 var_8C(12)
  loc_B9A759: LitStr vbNullString
  loc_B9A75C: NeStr
  loc_B9A75E: FMemLdR4 var_8C(12)
  loc_B9A763: LitStr "0"
  loc_B9A766: NeStr
  loc_B9A768: AndI4
  loc_B9A769: CVarBoolI2 var_9C
  loc_B9A76D: FLdRfVar var_F8
  loc_B9A770: ImpAdCallFPR4  = IIf(, , )
  loc_B9A775: FLdRfVar var_F8
  loc_B9A778: ConcatVar var_118
  loc_B9A77C: LitVarStr var_128, "<br>"
  loc_B9A781: ConcatVar var_138
  loc_B9A785: LitVarStr var_168, vbNullString
  loc_B9A78A: FStVarCopyObj var_178
  loc_B9A78D: FLdRfVar var_178
  loc_B9A790: LitStr "Barrio: "
  loc_B9A793: FMemLdR4 var_8C(16)
  loc_B9A798: ConcatStr
  loc_B9A799: CVarStr var_158
  loc_B9A79C: FMemLdR4 var_8C(16)
  loc_B9A7A1: LitStr vbNullString
  loc_B9A7A4: NeStr
  loc_B9A7A6: CVarBoolI2 var_148
  loc_B9A7AA: FLdRfVar var_188
  loc_B9A7AD: ImpAdCallFPR4  = IIf(, , )
  loc_B9A7B2: FLdRfVar var_188
  loc_B9A7B5: ConcatVar var_198
  loc_B9A7B9: LitVarStr var_1A8, " "
  loc_B9A7BE: ConcatVar var_1B8
  loc_B9A7C2: LitVarStr var_1E8, vbNullString
  loc_B9A7C7: FStVarCopyObj var_1F8
  loc_B9A7CA: FLdRfVar var_1F8
  loc_B9A7CD: LitStr "Manz.: "
  loc_B9A7D0: FMemLdR4 var_8C(20)
  loc_B9A7D5: ConcatStr
  loc_B9A7D6: CVarStr var_1D8
  loc_B9A7D9: FMemLdR4 var_8C(20)
  loc_B9A7DE: LitStr vbNullString
  loc_B9A7E1: NeStr
  loc_B9A7E3: CVarBoolI2 var_1C8
  loc_B9A7E7: FLdRfVar var_208
  loc_B9A7EA: ImpAdCallFPR4  = IIf(, , )
  loc_B9A7EF: FLdRfVar var_208
  loc_B9A7F2: ConcatVar var_218
  loc_B9A7F6: LitVarStr var_228, " "
  loc_B9A7FB: ConcatVar var_238
  loc_B9A7FF: LitVarStr var_268, vbNullString
  loc_B9A804: FStVarCopyObj var_278
  loc_B9A807: FLdRfVar var_278
  loc_B9A80A: LitStr "Casa/Lote: "
  loc_B9A80D: FMemLdR4 var_8C(24)
  loc_B9A812: ConcatStr
  loc_B9A813: CVarStr var_258
  loc_B9A816: FMemLdR4 var_8C(24)
  loc_B9A81B: LitStr vbNullString
  loc_B9A81E: NeStr
  loc_B9A820: CVarBoolI2 var_248
  loc_B9A824: FLdRfVar var_288
  loc_B9A827: ImpAdCallFPR4  = IIf(, , )
  loc_B9A82C: FLdRfVar var_288
  loc_B9A82F: ConcatVar var_298
  loc_B9A833: LitVarStr var_2A8, " "
  loc_B9A838: ConcatVar var_2B8
  loc_B9A83C: FMemLdR4 var_8C(28)
  loc_B9A841: CVarStr var_2C8
  loc_B9A844: ConcatVar var_2D8
  loc_B9A848: LitVarStr var_2E8, "<br>"
  loc_B9A84D: ConcatVar var_2F8
  loc_B9A851: FMemLdR4 var_8C(32)
  loc_B9A856: CVarStr var_308
  loc_B9A859: ConcatVar var_318
  loc_B9A85D: LitVarStr var_328, " ("
  loc_B9A862: ConcatVar var_338
  loc_B9A866: FMemLdR4 var_8C(36)
  loc_B9A86B: CVarStr var_348
  loc_B9A86E: ConcatVar var_358
  loc_B9A872: LitVarStr var_368, ")</strong></td>"
  loc_B9A877: ConcatVar var_378
  loc_B9A87B: PopAdLdVar
  loc_B9A87C: FLdPr Me
  loc_B9A87F: MemLdRfVar from_stack_1.global_76
  loc_B9A882: LdPrVar
  loc_B9A884: LateMemCall
  loc_B9A88A: FFree1Str var_C4
  loc_B9A88D: FFreeVar var_378 = "": var_9C = "": var_C0 = "": var_DC = "": var_108 = "": var_F8 = "": var_118 = "": var_148 = "": var_158 = "": var_178 = "": var_138 = "": var_188 = "": var_198 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B8 = "": var_208 = "": var_218 = "": var_248 = "": var_258 = "": var_278 = "": var_238 = "": var_288 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = ""
  loc_B9A8CE: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B9A8D3: PopAdLdVar
  loc_B9A8D4: FLdPr Me
  loc_B9A8D7: MemLdRfVar from_stack_1.global_76
  loc_B9A8DA: LdPrVar
  loc_B9A8DC: LateMemCall
  loc_B9A8E2: LitStr "    <td colspan=""3"">REFERENCIA&nbsp;&nbsp;: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B9A8E5: FMemLdR4 var_8C(40)
  loc_B9A8EA: ConcatStr
  loc_B9A8EB: FStStrNoPop var_C4
  loc_B9A8EE: LitStr "</span></strong><br>"
  loc_B9A8F1: ConcatStr
  loc_B9A8F2: CVarStr var_C0
  loc_B9A8F5: PopAdLdVar
  loc_B9A8F6: FLdPr Me
  loc_B9A8F9: MemLdRfVar from_stack_1.global_76
  loc_B9A8FC: LdPrVar
  loc_B9A8FE: LateMemCall
  loc_B9A904: FFree1Str var_C4
  loc_B9A907: FFree1Var var_C0 = ""
  loc_B9A90A: LitStr "                                NOMENCLATURA: <strong>"
  loc_B9A90D: FMemLdR4 var_8C(52)
  loc_B9A912: ConcatStr
  loc_B9A913: FStStrNoPop var_C4
  loc_B9A916: LitStr "</strong><br>"
  loc_B9A919: ConcatStr
  loc_B9A91A: CVarStr var_C0
  loc_B9A91D: PopAdLdVar
  loc_B9A91E: FLdPr Me
  loc_B9A921: MemLdRfVar from_stack_1.global_76
  loc_B9A924: LdPrVar
  loc_B9A926: LateMemCall
  loc_B9A92C: FFree1Str var_C4
  loc_B9A92F: FFree1Var var_C0 = ""
  loc_B9A932: LitStr "          DOM. REAL&nbsp;&nbsp;&nbsp;: <strong>"
  loc_B9A935: FMemLdR4 var_8C(156)
  loc_B9A93A: ConcatStr
  loc_B9A93B: FStStrNoPop var_C4
  loc_B9A93E: LitStr " "
  loc_B9A941: ConcatStr
  loc_B9A942: FStStrNoPop var_C8
  loc_B9A945: FMemLdR4 var_8C(160)
  loc_B9A94A: ConcatStr
  loc_B9A94B: FStStrNoPop var_E0
  loc_B9A94E: LitStr " "
  loc_B9A951: ConcatStr
  loc_B9A952: FStStrNoPop var_E4
  loc_B9A955: FMemLdR4 var_8C(164)
  loc_B9A95A: ConcatStr
  loc_B9A95B: FStStrNoPop var_E8
  loc_B9A95E: LitStr " "
  loc_B9A961: ConcatStr
  loc_B9A962: CVarStr var_108
  loc_B9A965: LitVarStr var_AC, vbNullString
  loc_B9A96A: FStVarCopyObj var_DC
  loc_B9A96D: FLdRfVar var_DC
  loc_B9A970: LitStr "Bº "
  loc_B9A973: FMemLdR4 var_8C(172)
  loc_B9A978: ConcatStr
  loc_B9A979: FStStrNoPop var_38C
  loc_B9A97C: LitStr " "
  loc_B9A97F: ConcatStr
  loc_B9A980: FStStrNoPop var_390
  loc_B9A983: FMemLdR4 var_8C(176)
  loc_B9A988: ConcatStr
  loc_B9A989: FStStrNoPop var_394
  loc_B9A98C: LitStr " "
  loc_B9A98F: ConcatStr
  loc_B9A990: FStStrNoPop var_398
  loc_B9A993: FMemLdR4 var_8C(180)
  loc_B9A998: ConcatStr
  loc_B9A999: CVarStr var_C0
  loc_B9A99C: FMemLdR4 var_8C(168)
  loc_B9A9A1: LitStr "0"
  loc_B9A9A4: NeStr
  loc_B9A9A6: CVarBoolI2 var_9C
  loc_B9A9AA: FLdRfVar var_F8
  loc_B9A9AD: ImpAdCallFPR4  = IIf(, , )
  loc_B9A9B2: FLdRfVar var_F8
  loc_B9A9B5: ConcatVar var_118
  loc_B9A9B9: LitVarStr var_128, " "
  loc_B9A9BE: ConcatVar var_138
  loc_B9A9C2: FMemLdR4 var_8C(184)
  loc_B9A9C7: CVarStr var_148
  loc_B9A9CA: ConcatVar var_158
  loc_B9A9CE: LitVarStr var_168, "</strong></td>"
  loc_B9A9D3: ConcatVar var_178
  loc_B9A9D7: PopAdLdVar
  loc_B9A9D8: FLdPr Me
  loc_B9A9DB: MemLdRfVar from_stack_1.global_76
  loc_B9A9DE: LdPrVar
  loc_B9A9E0: LateMemCall
  loc_B9A9E6: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_38C = "": var_390 = "": var_394 = ""
  loc_B9A9FB: FFreeVar var_9C = "": var_C0 = "": var_DC = "": var_108 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = ""
  loc_B9AA10: LitVarStr var_9C, "  </tr>"
  loc_B9AA15: PopAdLdVar
  loc_B9AA16: FLdPr Me
  loc_B9AA19: MemLdRfVar from_stack_1.global_76
  loc_B9AA1C: LdPrVar
  loc_B9AA1E: LateMemCall
  loc_B9AA24: LitVarStr var_9C, "</table>"
  loc_B9AA29: PopAdLdVar
  loc_B9AA2A: FLdPr Me
  loc_B9AA2D: MemLdRfVar from_stack_1.global_76
  loc_B9AA30: LdPrVar
  loc_B9AA32: LateMemCall
  loc_B9AA38: LitI4 0
  loc_B9AA3D: FStR4 var_8C
  loc_B9AA40: AryUnlock
  loc_B9AA43: ExitProcHresult
End Function

Private Function Proc_163_38_B98694() 'B98694
  'Data Table: 4DE7C8
  loc_B9816C: LitI4 1
  loc_B98171: FLdPr Me
  loc_B98174: MemLdStr global_116
  loc_B98177: AryLock
  loc_B9817A: Ary1LdRf
  loc_B9817B: FStR4 var_8C
  loc_B9817E: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B98183: PopAdLdVar
  loc_B98184: FLdPr Me
  loc_B98187: MemLdRfVar from_stack_1.global_76
  loc_B9818A: LdPrVar
  loc_B9818C: LateMemCall
  loc_B98192: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B98197: PopAdLdVar
  loc_B98198: FLdPr Me
  loc_B9819B: MemLdRfVar from_stack_1.global_76
  loc_B9819E: LdPrVar
  loc_B981A0: LateMemCall
  loc_B981A6: FLdPr Me
  loc_B981A9: MemLdUI1 global_120
  loc_B981AD: CI2UI1
  loc_B981AF: LitI2_Byte 2
  loc_B981B1: EqI2
  loc_B981B2: BranchF loc_B981CC
  loc_B981B5: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - COMERCIO</strong></td>"
  loc_B981BA: PopAdLdVar
  loc_B981BB: FLdPr Me
  loc_B981BE: MemLdRfVar from_stack_1.global_76
  loc_B981C1: LdPrVar
  loc_B981C3: LateMemCall
  loc_B981C9: Branch loc_B98215
  loc_B981CC: FLdPr Me
  loc_B981CF: MemLdUI1 global_120
  loc_B981D3: CI2UI1
  loc_B981D5: LitI2_Byte 6
  loc_B981D7: EqI2
  loc_B981D8: BranchF loc_B981F2
  loc_B981DB: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - PUBLICIDAD Y PROPAGANDA</strong></td>"
  loc_B981E0: PopAdLdVar
  loc_B981E1: FLdPr Me
  loc_B981E4: MemLdRfVar from_stack_1.global_76
  loc_B981E7: LdPrVar
  loc_B981E9: LateMemCall
  loc_B981EF: Branch loc_B98215
  loc_B981F2: FLdPr Me
  loc_B981F5: MemLdUI1 global_120
  loc_B981F9: CI2UI1
  loc_B981FB: LitI2_Byte 7
  loc_B981FD: EqI2
  loc_B981FE: BranchF loc_B98215
  loc_B98201: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - ANTENA</strong></td>"
  loc_B98206: PopAdLdVar
  loc_B98207: FLdPr Me
  loc_B9820A: MemLdRfVar from_stack_1.global_76
  loc_B9820D: LdPrVar
  loc_B9820F: LateMemCall
  loc_B98215: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B9821A: PopAdLdVar
  loc_B9821B: FLdPr Me
  loc_B9821E: MemLdRfVar from_stack_1.global_76
  loc_B98221: LdPrVar
  loc_B98223: LateMemCall
  loc_B98229: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B9822C: FLdPr Me
  loc_B9822F: VCallAd Control_ID_PeriBoleMsk
  loc_B98232: FStAdFunc var_B0
  loc_B98235: FLdPr var_B0
  loc_B98238: LateIdLdVar var_C0 DispID_0 0
  loc_B9823F: CStrVarTmp
  loc_B98240: FStStrNoPop var_C4
  loc_B98243: ConcatStr
  loc_B98244: FStStrNoPop var_C8
  loc_B98247: LitStr "/"
  loc_B9824A: ConcatStr
  loc_B9824B: FStStrNoPop var_E0
  loc_B9824E: FLdPr Me
  loc_B98251: VCallAd Control_ID_NumeBoleMsk
  loc_B98254: FStAdFunc var_CC
  loc_B98257: FLdPr var_CC
  loc_B9825A: LateIdLdVar var_DC DispID_0 0
  loc_B98261: CStrVarTmp
  loc_B98262: FStStrNoPop var_E4
  loc_B98265: ConcatStr
  loc_B98266: FStStrNoPop var_E8
  loc_B98269: LitStr "</strong></td>"
  loc_B9826C: ConcatStr
  loc_B9826D: CVarStr var_F8
  loc_B98270: PopAdLdVar
  loc_B98271: FLdPr Me
  loc_B98274: MemLdRfVar from_stack_1.global_76
  loc_B98277: LdPrVar
  loc_B98279: LateMemCall
  loc_B9827F: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = ""
  loc_B9828C: FFreeAd var_B0 = ""
  loc_B98293: FFreeVar var_C0 = "": var_DC = ""
  loc_B9829C: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B982A1: PopAdLdVar
  loc_B982A2: FLdPr Me
  loc_B982A5: MemLdRfVar from_stack_1.global_76
  loc_B982A8: LdPrVar
  loc_B982AA: LateMemCall
  loc_B982B0: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B982B3: FMemLdR4 var_8C(128)
  loc_B982B8: ConcatStr
  loc_B982B9: FStStrNoPop var_C4
  loc_B982BC: LitStr "</strong></td>"
  loc_B982BF: ConcatStr
  loc_B982C0: CVarStr var_C0
  loc_B982C3: PopAdLdVar
  loc_B982C4: FLdPr Me
  loc_B982C7: MemLdRfVar from_stack_1.global_76
  loc_B982CA: LdPrVar
  loc_B982CC: LateMemCall
  loc_B982D2: FFree1Str var_C4
  loc_B982D5: FFree1Var var_C0 = ""
  loc_B982D8: LitVarStr var_9C, "  </tr>"
  loc_B982DD: PopAdLdVar
  loc_B982DE: FLdPr Me
  loc_B982E1: MemLdRfVar from_stack_1.global_76
  loc_B982E4: LdPrVar
  loc_B982E6: LateMemCall
  loc_B982EC: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B982F1: PopAdLdVar
  loc_B982F2: FLdPr Me
  loc_B982F5: MemLdRfVar from_stack_1.global_76
  loc_B982F8: LdPrVar
  loc_B982FA: LateMemCall
  loc_B98300: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B98305: PopAdLdVar
  loc_B98306: FLdPr Me
  loc_B98309: MemLdRfVar from_stack_1.global_76
  loc_B9830C: LdPrVar
  loc_B9830E: LateMemCall
  loc_B98314: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B98317: FMemLdR4 var_8C(4)
  loc_B9831C: ConcatStr
  loc_B9831D: FStStrNoPop var_C4
  loc_B98320: LitStr "</span><br>"
  loc_B98323: ConcatStr
  loc_B98324: CVarStr var_C0
  loc_B98327: PopAdLdVar
  loc_B98328: FLdPr Me
  loc_B9832B: MemLdRfVar from_stack_1.global_76
  loc_B9832E: LdPrVar
  loc_B98330: LateMemCall
  loc_B98336: FFree1Str var_C4
  loc_B98339: FFree1Var var_C0 = ""
  loc_B9833C: LitStr "      "
  loc_B9833F: FMemLdR4 var_8C(0)
  loc_B98344: ConcatStr
  loc_B98345: FStStrNoPop var_C4
  loc_B98348: LitStr "<br>"
  loc_B9834B: ConcatStr
  loc_B9834C: CVarStr var_C0
  loc_B9834F: PopAdLdVar
  loc_B98350: FLdPr Me
  loc_B98353: MemLdRfVar from_stack_1.global_76
  loc_B98356: LdPrVar
  loc_B98358: LateMemCall
  loc_B9835E: FFree1Str var_C4
  loc_B98361: FFree1Var var_C0 = ""
  loc_B98364: FMemLdRf E0B8
  loc_B98369: CVarRef
  loc_B9836E: LitVarI2 var_168, 0
  loc_B98373: FMemLdR4 var_8C(12)
  loc_B98378: LitStr vbNullString
  loc_B9837B: EqStr
  loc_B9837D: CVarBoolI2 var_148
  loc_B98381: FLdRfVar var_188
  loc_B98384: ImpAdCallFPR4  = IIf(, , )
  loc_B98389: LitVarStr var_118, "      "
  loc_B9838E: LitVarStr var_108, vbNullString
  loc_B98393: FStVarCopyObj var_C0
  loc_B98396: FLdRfVar var_C0
  loc_B98399: FMemLdRf E0B8
  loc_B9839E: CVarRef
  loc_B983A3: FMemLdR4 var_8C(8)
  loc_B983A8: LitStr vbNullString
  loc_B983AB: NeStr
  loc_B983AD: FMemLdR4 var_8C(8)
  loc_B983B2: LitStr "SIN CALLE"
  loc_B983B5: NeStr
  loc_B983B7: AndI4
  loc_B983B8: CVarBoolI2 var_9C
  loc_B983BC: FLdRfVar var_DC
  loc_B983BF: ImpAdCallFPR4  = IIf(, , )
  loc_B983C4: FLdRfVar var_DC
  loc_B983C7: ConcatVar var_F8
  loc_B983CB: LitVarStr var_128, " "
  loc_B983D0: ConcatVar var_138
  loc_B983D4: LitVarStr var_1D8, vbNullString
  loc_B983D9: FStVarCopyObj var_1E8
  loc_B983DC: FLdRfVar var_1E8
  loc_B983DF: FMemLdRf E0B8
  loc_B983E4: CVarRef
  loc_B983E9: FLdRfVar var_188
  loc_B983EC: LitVarI2 var_198, 0
  loc_B983F1: HardType
  loc_B983F2: NeVar var_1A8
  loc_B983F6: FStVar var_1B8
  loc_B983FA: FLdRfVar var_1B8
  loc_B983FD: FLdRfVar var_1F8
  loc_B98400: ImpAdCallFPR4  = IIf(, , )
  loc_B98405: FLdRfVar var_1F8
  loc_B98408: ConcatVar var_208
  loc_B9840C: LitVarStr var_218, " "
  loc_B98411: ConcatVar var_228
  loc_B98415: FMemLdR4 var_8C(28)
  loc_B9841A: CVarStr var_238
  loc_B9841D: ConcatVar var_248
  loc_B98421: LitVarStr var_258, "<br>"
  loc_B98426: ConcatVar var_268
  loc_B9842A: LitVarStr var_298, vbNullString
  loc_B9842F: FStVarCopyObj var_2A8
  loc_B98432: FLdRfVar var_2A8
  loc_B98435: LitStr "Bº "
  loc_B98438: FMemLdR4 var_8C(16)
  loc_B9843D: ConcatStr
  loc_B9843E: FStStrNoPop var_C4
  loc_B98441: LitStr " "
  loc_B98444: ConcatStr
  loc_B98445: FStStrNoPop var_C8
  loc_B98448: FMemLdR4 var_8C(20)
  loc_B9844D: ConcatStr
  loc_B9844E: FStStrNoPop var_E0
  loc_B98451: LitStr " "
  loc_B98454: ConcatStr
  loc_B98455: FStStrNoPop var_E4
  loc_B98458: FMemLdR4 var_8C(24)
  loc_B9845D: ConcatStr
  loc_B9845E: CVarStr var_288
  loc_B98461: FMemLdR4 var_8C(16)
  loc_B98466: LitStr vbNullString
  loc_B98469: NeStr
  loc_B9846B: FMemLdR4 var_8C(16)
  loc_B98470: LitStr "SIN BARRIO"
  loc_B98473: NeStr
  loc_B98475: AndI4
  loc_B98476: CVarBoolI2 var_278
  loc_B9847A: FLdRfVar var_2B8
  loc_B9847D: ImpAdCallFPR4  = IIf(, , )
  loc_B98482: FLdRfVar var_2B8
  loc_B98485: ConcatVar var_2C8
  loc_B98489: LitVarStr var_2D8, "<br>"
  loc_B9848E: ConcatVar var_2E8
  loc_B98492: FMemLdR4 var_8C(32)
  loc_B98497: CVarStr var_2F8
  loc_B9849A: ConcatVar var_308
  loc_B9849E: LitVarStr var_338, vbNullString
  loc_B984A3: FStVarCopyObj var_348
  loc_B984A6: FLdRfVar var_348
  loc_B984A9: LitStr " ("
  loc_B984AC: FMemLdR4 var_8C(36)
  loc_B984B1: ConcatStr
  loc_B984B2: FStStrNoPop var_E8
  loc_B984B5: LitStr ")"
  loc_B984B8: ConcatStr
  loc_B984B9: CVarStr var_328
  loc_B984BC: FMemLdR4 var_8C(36)
  loc_B984C1: LitStr vbNullString
  loc_B984C4: NeStr
  loc_B984C6: CVarBoolI2 var_318
  loc_B984CA: FLdRfVar var_358
  loc_B984CD: ImpAdCallFPR4  = IIf(, , )
  loc_B984D2: FLdRfVar var_358
  loc_B984D5: ConcatVar var_368
  loc_B984D9: LitVarStr var_378, "</strong></td>"
  loc_B984DE: ConcatVar var_388
  loc_B984E2: PopAdLdVar
  loc_B984E3: FLdPr Me
  loc_B984E6: MemLdRfVar from_stack_1.global_76
  loc_B984E9: LdPrVar
  loc_B984EB: LateMemCall
  loc_B984F1: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = ""
  loc_B984FE: FFreeVar var_9C = "": var_C0 = "": var_DC = "": var_F8 = "": var_148 = "": var_168 = "": var_188 = "": var_1B8 = "": var_1E8 = "": var_138 = "": var_1F8 = "": var_208 = "": var_228 = "": var_248 = "": var_278 = "": var_288 = "": var_2A8 = "": var_268 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_318 = "": var_328 = "": var_348 = "": var_308 = "": var_358 = "": var_368 = ""
  loc_B98539: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B9853E: PopAdLdVar
  loc_B9853F: FLdPr Me
  loc_B98542: MemLdRfVar from_stack_1.global_76
  loc_B98545: LdPrVar
  loc_B98547: LateMemCall
  loc_B9854D: LitStr "    <td colspan=""3"">REFERENCIA&nbsp;&nbsp;: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B98550: FMemLdR4 var_8C(40)
  loc_B98555: ConcatStr
  loc_B98556: FStStrNoPop var_C4
  loc_B98559: LitStr "</span></strong><br>"
  loc_B9855C: ConcatStr
  loc_B9855D: CVarStr var_C0
  loc_B98560: PopAdLdVar
  loc_B98561: FLdPr Me
  loc_B98564: MemLdRfVar from_stack_1.global_76
  loc_B98567: LdPrVar
  loc_B98569: LateMemCall
  loc_B9856F: FFree1Str var_C4
  loc_B98572: FFree1Var var_C0 = ""
  loc_B98575: LitStr "          DOM. REAL&nbsp;&nbsp;&nbsp;: <strong>"
  loc_B98578: FMemLdR4 var_8C(156)
  loc_B9857D: ConcatStr
  loc_B9857E: FStStrNoPop var_C4
  loc_B98581: LitStr " "
  loc_B98584: ConcatStr
  loc_B98585: FStStrNoPop var_C8
  loc_B98588: FMemLdR4 var_8C(160)
  loc_B9858D: ConcatStr
  loc_B9858E: FStStrNoPop var_E0
  loc_B98591: LitStr " "
  loc_B98594: ConcatStr
  loc_B98595: FStStrNoPop var_E4
  loc_B98598: FMemLdR4 var_8C(164)
  loc_B9859D: ConcatStr
  loc_B9859E: FStStrNoPop var_E8
  loc_B985A1: LitStr " "
  loc_B985A4: ConcatStr
  loc_B985A5: CVarStr var_138
  loc_B985A8: LitVarStr var_AC, vbNullString
  loc_B985AD: FStVarCopyObj var_DC
  loc_B985B0: FLdRfVar var_DC
  loc_B985B3: LitStr "Bº "
  loc_B985B6: FMemLdR4 var_8C(172)
  loc_B985BB: ConcatStr
  loc_B985BC: FStStrNoPop var_39C
  loc_B985BF: LitStr " "
  loc_B985C2: ConcatStr
  loc_B985C3: FStStrNoPop var_3A0
  loc_B985C6: FMemLdR4 var_8C(176)
  loc_B985CB: ConcatStr
  loc_B985CC: FStStrNoPop var_3A4
  loc_B985CF: LitStr " "
  loc_B985D2: ConcatStr
  loc_B985D3: FStStrNoPop var_3A8
  loc_B985D6: FMemLdR4 var_8C(180)
  loc_B985DB: ConcatStr
  loc_B985DC: CVarStr var_C0
  loc_B985DF: FMemLdR4 var_8C(168)
  loc_B985E4: LitStr "0"
  loc_B985E7: NeStr
  loc_B985E9: FMemLdR4 var_8C(168)
  loc_B985EE: LitStr vbNullString
  loc_B985F1: NeStr
  loc_B985F3: AndI4
  loc_B985F4: CVarBoolI2 var_9C
  loc_B985F8: FLdRfVar var_F8
  loc_B985FB: ImpAdCallFPR4  = IIf(, , )
  loc_B98600: FLdRfVar var_F8
  loc_B98603: ConcatVar var_168
  loc_B98607: LitVarStr var_108, " "
  loc_B9860C: ConcatVar var_188
  loc_B98610: FMemLdR4 var_8C(184)
  loc_B98615: CVarStr var_118
  loc_B98618: ConcatVar var_1A8
  loc_B9861C: LitVarStr var_128, "</strong></td>"
  loc_B98621: ConcatVar var_1B8
  loc_B98625: PopAdLdVar
  loc_B98626: FLdPr Me
  loc_B98629: MemLdRfVar from_stack_1.global_76
  loc_B9862C: LdPrVar
  loc_B9862E: LateMemCall
  loc_B98634: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_39C = "": var_3A0 = "": var_3A4 = ""
  loc_B98649: FFreeVar var_9C = "": var_C0 = "": var_DC = "": var_138 = "": var_F8 = "": var_168 = "": var_188 = "": var_1A8 = ""
  loc_B9865E: LitVarStr var_9C, "  </tr>"
  loc_B98663: PopAdLdVar
  loc_B98664: FLdPr Me
  loc_B98667: MemLdRfVar from_stack_1.global_76
  loc_B9866A: LdPrVar
  loc_B9866C: LateMemCall
  loc_B98672: LitVarStr var_9C, "</table>"
  loc_B98677: PopAdLdVar
  loc_B98678: FLdPr Me
  loc_B9867B: MemLdRfVar from_stack_1.global_76
  loc_B9867E: LdPrVar
  loc_B98680: LateMemCall
  loc_B98686: LitI4 0
  loc_B9868B: FStR4 var_8C
  loc_B9868E: AryUnlock
  loc_B98691: ExitProcHresult
  loc_B98692: LeR8
End Function

Private Function Proc_163_39_B5F898() 'B5F898
  'Data Table: 4DE7C8
  loc_B5F4E4: LitI4 1
  loc_B5F4E9: FLdPr Me
  loc_B5F4EC: MemLdStr global_116
  loc_B5F4EF: AryLock
  loc_B5F4F2: Ary1LdRf
  loc_B5F4F3: FStR4 var_8C
  loc_B5F4F6: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B5F4FB: PopAdLdVar
  loc_B5F4FC: FLdPr Me
  loc_B5F4FF: MemLdRfVar from_stack_1.global_76
  loc_B5F502: LdPrVar
  loc_B5F504: LateMemCall
  loc_B5F50A: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B5F50F: PopAdLdVar
  loc_B5F510: FLdPr Me
  loc_B5F513: MemLdRfVar from_stack_1.global_76
  loc_B5F516: LdPrVar
  loc_B5F518: LateMemCall
  loc_B5F51E: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA<br>DEUDORES VARIOS CON CREACIÓN DE CUENTA</strong></td>"
  loc_B5F523: PopAdLdVar
  loc_B5F524: FLdPr Me
  loc_B5F527: MemLdRfVar from_stack_1.global_76
  loc_B5F52A: LdPrVar
  loc_B5F52C: LateMemCall
  loc_B5F532: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B5F537: PopAdLdVar
  loc_B5F538: FLdPr Me
  loc_B5F53B: MemLdRfVar from_stack_1.global_76
  loc_B5F53E: LdPrVar
  loc_B5F540: LateMemCall
  loc_B5F546: LitStr "    <td width=""12" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B5F549: FLdPr Me
  loc_B5F54C: VCallAd Control_ID_PeriBoleMsk
  loc_B5F54F: FStAdFunc var_B0
  loc_B5F552: FLdPr var_B0
  loc_B5F555: LateIdLdVar var_C0 DispID_0 0
  loc_B5F55C: CStrVarTmp
  loc_B5F55D: FStStrNoPop var_C4
  loc_B5F560: ConcatStr
  loc_B5F561: FStStrNoPop var_C8
  loc_B5F564: LitStr "/"
  loc_B5F567: ConcatStr
  loc_B5F568: FStStrNoPop var_E0
  loc_B5F56B: FLdPr Me
  loc_B5F56E: VCallAd Control_ID_NumeBoleMsk
  loc_B5F571: FStAdFunc var_CC
  loc_B5F574: FLdPr var_CC
  loc_B5F577: LateIdLdVar var_DC DispID_0 0
  loc_B5F57E: CStrVarTmp
  loc_B5F57F: FStStrNoPop var_E4
  loc_B5F582: ConcatStr
  loc_B5F583: FStStrNoPop var_E8
  loc_B5F586: LitStr "</strong></td>"
  loc_B5F589: ConcatStr
  loc_B5F58A: CVarStr var_F8
  loc_B5F58D: PopAdLdVar
  loc_B5F58E: FLdPr Me
  loc_B5F591: MemLdRfVar from_stack_1.global_76
  loc_B5F594: LdPrVar
  loc_B5F596: LateMemCall
  loc_B5F59C: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = ""
  loc_B5F5A9: FFreeAd var_B0 = ""
  loc_B5F5B0: FFreeVar var_C0 = "": var_DC = ""
  loc_B5F5B9: LitVarStr var_9C, "    <td width=""11" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B5F5BE: PopAdLdVar
  loc_B5F5BF: FLdPr Me
  loc_B5F5C2: MemLdRfVar from_stack_1.global_76
  loc_B5F5C5: LdPrVar
  loc_B5F5C7: LateMemCall
  loc_B5F5CD: LitStr "    <td width=""13" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B5F5D0: FMemLdR4 var_8C(128)
  loc_B5F5D5: ConcatStr
  loc_B5F5D6: FStStrNoPop var_C4
  loc_B5F5D9: LitStr "</strong></td>"
  loc_B5F5DC: ConcatStr
  loc_B5F5DD: CVarStr var_C0
  loc_B5F5E0: PopAdLdVar
  loc_B5F5E1: FLdPr Me
  loc_B5F5E4: MemLdRfVar from_stack_1.global_76
  loc_B5F5E7: LdPrVar
  loc_B5F5E9: LateMemCall
  loc_B5F5EF: FFree1Str var_C4
  loc_B5F5F2: FFree1Var var_C0 = ""
  loc_B5F5F5: LitVarStr var_9C, "  </tr>"
  loc_B5F5FA: PopAdLdVar
  loc_B5F5FB: FLdPr Me
  loc_B5F5FE: MemLdRfVar from_stack_1.global_76
  loc_B5F601: LdPrVar
  loc_B5F603: LateMemCall
  loc_B5F609: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B5F60E: PopAdLdVar
  loc_B5F60F: FLdPr Me
  loc_B5F612: MemLdRfVar from_stack_1.global_76
  loc_B5F615: LdPrVar
  loc_B5F617: LateMemCall
  loc_B5F61D: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B5F622: PopAdLdVar
  loc_B5F623: FLdPr Me
  loc_B5F626: MemLdRfVar from_stack_1.global_76
  loc_B5F629: LdPrVar
  loc_B5F62B: LateMemCall
  loc_B5F631: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B5F634: FMemLdR4 var_8C(4)
  loc_B5F639: ConcatStr
  loc_B5F63A: FStStrNoPop var_C4
  loc_B5F63D: LitStr "</span><br>"
  loc_B5F640: ConcatStr
  loc_B5F641: CVarStr var_C0
  loc_B5F644: PopAdLdVar
  loc_B5F645: FLdPr Me
  loc_B5F648: MemLdRfVar from_stack_1.global_76
  loc_B5F64B: LdPrVar
  loc_B5F64D: LateMemCall
  loc_B5F653: FFree1Str var_C4
  loc_B5F656: FFree1Var var_C0 = ""
  loc_B5F659: LitStr "      "
  loc_B5F65C: FMemLdR4 var_8C(0)
  loc_B5F661: ConcatStr
  loc_B5F662: FStStrNoPop var_C4
  loc_B5F665: LitStr "<br>"
  loc_B5F668: ConcatStr
  loc_B5F669: CVarStr var_C0
  loc_B5F66C: PopAdLdVar
  loc_B5F66D: FLdPr Me
  loc_B5F670: MemLdRfVar from_stack_1.global_76
  loc_B5F673: LdPrVar
  loc_B5F675: LateMemCall
  loc_B5F67B: FFree1Str var_C4
  loc_B5F67E: FFree1Var var_C0 = ""
  loc_B5F681: LitStr "      "
  loc_B5F684: FMemLdR4 var_8C(8)
  loc_B5F689: ConcatStr
  loc_B5F68A: FStStrNoPop var_C4
  loc_B5F68D: LitStr " "
  loc_B5F690: ConcatStr
  loc_B5F691: CVarStr var_108
  loc_B5F694: LitVarStr var_AC, vbNullString
  loc_B5F699: FStVarCopyObj var_DC
  loc_B5F69C: FLdRfVar var_DC
  loc_B5F69F: LitStr "Nro: "
  loc_B5F6A2: FMemLdR4 var_8C(12)
  loc_B5F6A7: ConcatStr
  loc_B5F6A8: CVarStr var_C0
  loc_B5F6AB: FMemLdR4 var_8C(12)
  loc_B5F6B0: LitStr "0"
  loc_B5F6B3: NeStr
  loc_B5F6B5: FMemLdR4 var_8C(12)
  loc_B5F6BA: LitStr vbNullString
  loc_B5F6BD: NeStr
  loc_B5F6BF: AndI4
  loc_B5F6C0: CVarBoolI2 var_9C
  loc_B5F6C4: FLdRfVar var_F8
  loc_B5F6C7: ImpAdCallFPR4  = IIf(, , )
  loc_B5F6CC: FLdRfVar var_F8
  loc_B5F6CF: ConcatVar var_118
  loc_B5F6D3: LitVarStr var_128, "<br>"
  loc_B5F6D8: ConcatVar var_138
  loc_B5F6DC: LitVarStr var_168, vbNullString
  loc_B5F6E1: FStVarCopyObj var_178
  loc_B5F6E4: FLdRfVar var_178
  loc_B5F6E7: LitStr "Barrio: "
  loc_B5F6EA: FMemLdR4 var_8C(16)
  loc_B5F6EF: ConcatStr
  loc_B5F6F0: CVarStr var_158
  loc_B5F6F3: FMemLdR4 var_8C(16)
  loc_B5F6F8: LitStr vbNullString
  loc_B5F6FB: NeStr
  loc_B5F6FD: CVarBoolI2 var_148
  loc_B5F701: FLdRfVar var_188
  loc_B5F704: ImpAdCallFPR4  = IIf(, , )
  loc_B5F709: FLdRfVar var_188
  loc_B5F70C: ConcatVar var_198
  loc_B5F710: LitVarStr var_1A8, " "
  loc_B5F715: ConcatVar var_1B8
  loc_B5F719: LitVarStr var_1E8, vbNullString
  loc_B5F71E: FStVarCopyObj var_1F8
  loc_B5F721: FLdRfVar var_1F8
  loc_B5F724: LitStr "Manz.: "
  loc_B5F727: FMemLdR4 var_8C(20)
  loc_B5F72C: ConcatStr
  loc_B5F72D: CVarStr var_1D8
  loc_B5F730: FMemLdR4 var_8C(20)
  loc_B5F735: LitStr vbNullString
  loc_B5F738: NeStr
  loc_B5F73A: CVarBoolI2 var_1C8
  loc_B5F73E: FLdRfVar var_208
  loc_B5F741: ImpAdCallFPR4  = IIf(, , )
  loc_B5F746: FLdRfVar var_208
  loc_B5F749: ConcatVar var_218
  loc_B5F74D: LitVarStr var_228, " "
  loc_B5F752: ConcatVar var_238
  loc_B5F756: LitVarStr var_268, vbNullString
  loc_B5F75B: FStVarCopyObj var_278
  loc_B5F75E: FLdRfVar var_278
  loc_B5F761: LitStr "Casa/Lote: "
  loc_B5F764: FMemLdR4 var_8C(24)
  loc_B5F769: ConcatStr
  loc_B5F76A: CVarStr var_258
  loc_B5F76D: FMemLdR4 var_8C(24)
  loc_B5F772: LitStr vbNullString
  loc_B5F775: NeStr
  loc_B5F777: CVarBoolI2 var_248
  loc_B5F77B: FLdRfVar var_288
  loc_B5F77E: ImpAdCallFPR4  = IIf(, , )
  loc_B5F783: FLdRfVar var_288
  loc_B5F786: ConcatVar var_298
  loc_B5F78A: LitVarStr var_2A8, " "
  loc_B5F78F: ConcatVar var_2B8
  loc_B5F793: FMemLdR4 var_8C(28)
  loc_B5F798: CVarStr var_2C8
  loc_B5F79B: ConcatVar var_2D8
  loc_B5F79F: LitVarStr var_2E8, "<br>"
  loc_B5F7A4: ConcatVar var_2F8
  loc_B5F7A8: FMemLdR4 var_8C(32)
  loc_B5F7AD: CVarStr var_308
  loc_B5F7B0: ConcatVar var_318
  loc_B5F7B4: LitVarStr var_328, " ("
  loc_B5F7B9: ConcatVar var_338
  loc_B5F7BD: FMemLdR4 var_8C(36)
  loc_B5F7C2: CVarStr var_348
  loc_B5F7C5: ConcatVar var_358
  loc_B5F7C9: LitVarStr var_368, ")</strong></td>"
  loc_B5F7CE: ConcatVar var_378
  loc_B5F7D2: PopAdLdVar
  loc_B5F7D3: FLdPr Me
  loc_B5F7D6: MemLdRfVar from_stack_1.global_76
  loc_B5F7D9: LdPrVar
  loc_B5F7DB: LateMemCall
  loc_B5F7E1: FFree1Str var_C4
  loc_B5F7E4: FFreeVar var_378 = "": var_9C = "": var_C0 = "": var_DC = "": var_108 = "": var_F8 = "": var_118 = "": var_148 = "": var_158 = "": var_178 = "": var_138 = "": var_188 = "": var_198 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B8 = "": var_208 = "": var_218 = "": var_248 = "": var_258 = "": var_278 = "": var_238 = "": var_288 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = ""
  loc_B5F825: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B5F82A: PopAdLdVar
  loc_B5F82B: FLdPr Me
  loc_B5F82E: MemLdRfVar from_stack_1.global_76
  loc_B5F831: LdPrVar
  loc_B5F833: LateMemCall
  loc_B5F839: LitStr "    <td colspan=""3"">REFERENCIA&nbsp;&nbsp;: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B5F83C: FMemLdR4 var_8C(40)
  loc_B5F841: ConcatStr
  loc_B5F842: FStStrNoPop var_C4
  loc_B5F845: LitStr "</span></strong>"
  loc_B5F848: ConcatStr
  loc_B5F849: CVarStr var_C0
  loc_B5F84C: PopAdLdVar
  loc_B5F84D: FLdPr Me
  loc_B5F850: MemLdRfVar from_stack_1.global_76
  loc_B5F853: LdPrVar
  loc_B5F855: LateMemCall
  loc_B5F85B: FFree1Str var_C4
  loc_B5F85E: FFree1Var var_C0 = ""
  loc_B5F861: LitVarStr var_9C, "  </tr>"
  loc_B5F866: PopAdLdVar
  loc_B5F867: FLdPr Me
  loc_B5F86A: MemLdRfVar from_stack_1.global_76
  loc_B5F86D: LdPrVar
  loc_B5F86F: LateMemCall
  loc_B5F875: LitVarStr var_9C, "</table>"
  loc_B5F87A: PopAdLdVar
  loc_B5F87B: FLdPr Me
  loc_B5F87E: MemLdRfVar from_stack_1.global_76
  loc_B5F881: LdPrVar
  loc_B5F883: LateMemCall
  loc_B5F889: LitI4 0
  loc_B5F88E: FStR4 var_8C
  loc_B5F891: AryUnlock
  loc_B5F894: ExitProcHresult
  loc_B5F895: UMiCy
  loc_B5F896: BranchF loc_B64543
End Function

Private Function Proc_163_40_B911B0() 'B911B0
  'Data Table: 4DE7C8
  loc_B90CCC: LitI4 1
  loc_B90CD1: FLdPr Me
  loc_B90CD4: MemLdStr global_116
  loc_B90CD7: AryLock
  loc_B90CDA: Ary1LdRf
  loc_B90CDB: FStR4 var_8C
  loc_B90CDE: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B90CE3: PopAdLdVar
  loc_B90CE4: FLdPr Me
  loc_B90CE7: MemLdRfVar from_stack_1.global_76
  loc_B90CEA: LdPrVar
  loc_B90CEC: LateMemCall
  loc_B90CF2: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B90CF7: PopAdLdVar
  loc_B90CF8: FLdPr Me
  loc_B90CFB: MemLdRfVar from_stack_1.global_76
  loc_B90CFE: LdPrVar
  loc_B90D00: LateMemCall
  loc_B90D06: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - CEMENTERIO</strong></td>"
  loc_B90D0B: PopAdLdVar
  loc_B90D0C: FLdPr Me
  loc_B90D0F: MemLdRfVar from_stack_1.global_76
  loc_B90D12: LdPrVar
  loc_B90D14: LateMemCall
  loc_B90D1A: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B90D1F: PopAdLdVar
  loc_B90D20: FLdPr Me
  loc_B90D23: MemLdRfVar from_stack_1.global_76
  loc_B90D26: LdPrVar
  loc_B90D28: LateMemCall
  loc_B90D2E: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B90D31: FLdPr Me
  loc_B90D34: VCallAd Control_ID_PeriBoleMsk
  loc_B90D37: FStAdFunc var_B0
  loc_B90D3A: FLdPr var_B0
  loc_B90D3D: LateIdLdVar var_C0 DispID_0 0
  loc_B90D44: CStrVarTmp
  loc_B90D45: FStStrNoPop var_C4
  loc_B90D48: ConcatStr
  loc_B90D49: FStStrNoPop var_C8
  loc_B90D4C: LitStr "/"
  loc_B90D4F: ConcatStr
  loc_B90D50: FStStrNoPop var_E0
  loc_B90D53: FLdPr Me
  loc_B90D56: VCallAd Control_ID_NumeBoleMsk
  loc_B90D59: FStAdFunc var_CC
  loc_B90D5C: FLdPr var_CC
  loc_B90D5F: LateIdLdVar var_DC DispID_0 0
  loc_B90D66: CStrVarTmp
  loc_B90D67: FStStrNoPop var_E4
  loc_B90D6A: ConcatStr
  loc_B90D6B: FStStrNoPop var_E8
  loc_B90D6E: LitStr "</strong></td>"
  loc_B90D71: ConcatStr
  loc_B90D72: CVarStr var_F8
  loc_B90D75: PopAdLdVar
  loc_B90D76: FLdPr Me
  loc_B90D79: MemLdRfVar from_stack_1.global_76
  loc_B90D7C: LdPrVar
  loc_B90D7E: LateMemCall
  loc_B90D84: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = ""
  loc_B90D91: FFreeAd var_B0 = ""
  loc_B90D98: FFreeVar var_C0 = "": var_DC = ""
  loc_B90DA1: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B90DA6: PopAdLdVar
  loc_B90DA7: FLdPr Me
  loc_B90DAA: MemLdRfVar from_stack_1.global_76
  loc_B90DAD: LdPrVar
  loc_B90DAF: LateMemCall
  loc_B90DB5: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B90DB8: FMemLdR4 var_8C(128)
  loc_B90DBD: ConcatStr
  loc_B90DBE: FStStrNoPop var_C4
  loc_B90DC1: LitStr "</strong></td>"
  loc_B90DC4: ConcatStr
  loc_B90DC5: CVarStr var_C0
  loc_B90DC8: PopAdLdVar
  loc_B90DC9: FLdPr Me
  loc_B90DCC: MemLdRfVar from_stack_1.global_76
  loc_B90DCF: LdPrVar
  loc_B90DD1: LateMemCall
  loc_B90DD7: FFree1Str var_C4
  loc_B90DDA: FFree1Var var_C0 = ""
  loc_B90DDD: LitVarStr var_9C, "  </tr>"
  loc_B90DE2: PopAdLdVar
  loc_B90DE3: FLdPr Me
  loc_B90DE6: MemLdRfVar from_stack_1.global_76
  loc_B90DE9: LdPrVar
  loc_B90DEB: LateMemCall
  loc_B90DF1: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B90DF6: PopAdLdVar
  loc_B90DF7: FLdPr Me
  loc_B90DFA: MemLdRfVar from_stack_1.global_76
  loc_B90DFD: LdPrVar
  loc_B90DFF: LateMemCall
  loc_B90E05: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B90E0A: PopAdLdVar
  loc_B90E0B: FLdPr Me
  loc_B90E0E: MemLdRfVar from_stack_1.global_76
  loc_B90E11: LdPrVar
  loc_B90E13: LateMemCall
  loc_B90E19: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B90E1C: FMemLdR4 var_8C(4)
  loc_B90E21: ConcatStr
  loc_B90E22: FStStrNoPop var_C4
  loc_B90E25: LitStr "</span><br>"
  loc_B90E28: ConcatStr
  loc_B90E29: CVarStr var_C0
  loc_B90E2C: PopAdLdVar
  loc_B90E2D: FLdPr Me
  loc_B90E30: MemLdRfVar from_stack_1.global_76
  loc_B90E33: LdPrVar
  loc_B90E35: LateMemCall
  loc_B90E3B: FFree1Str var_C4
  loc_B90E3E: FFree1Var var_C0 = ""
  loc_B90E41: LitStr "      "
  loc_B90E44: FMemLdR4 var_8C(0)
  loc_B90E49: ConcatStr
  loc_B90E4A: FStStrNoPop var_C4
  loc_B90E4D: LitStr "<br>"
  loc_B90E50: ConcatStr
  loc_B90E51: CVarStr var_C0
  loc_B90E54: PopAdLdVar
  loc_B90E55: FLdPr Me
  loc_B90E58: MemLdRfVar from_stack_1.global_76
  loc_B90E5B: LdPrVar
  loc_B90E5D: LateMemCall
  loc_B90E63: FFree1Str var_C4
  loc_B90E66: FFree1Var var_C0 = ""
  loc_B90E69: FMemLdRf E0B8
  loc_B90E6E: CVarRef
  loc_B90E73: LitVarI2 var_C0, 0
  loc_B90E78: FMemLdR4 var_8C(12)
  loc_B90E7D: LitStr vbNullString
  loc_B90E80: EqStr
  loc_B90E82: CVarBoolI2 var_9C
  loc_B90E86: FLdRfVar var_DC
  loc_B90E89: ImpAdCallFPR4  = IIf(, , )
  loc_B90E8E: LitStr "      "
  loc_B90E91: FMemLdR4 var_8C(8)
  loc_B90E96: ConcatStr
  loc_B90E97: FStStrNoPop var_C4
  loc_B90E9A: LitStr " "
  loc_B90E9D: ConcatStr
  loc_B90E9E: CVarStr var_178
  loc_B90EA1: LitVarStr var_148, vbNullString
  loc_B90EA6: FStVarCopyObj var_158
  loc_B90EA9: FLdRfVar var_158
  loc_B90EAC: FMemLdRf E0B8
  loc_B90EB1: CVarRef
  loc_B90EB6: FLdRfVar var_DC
  loc_B90EB9: LitVarI2 var_118, 0
  loc_B90EBE: HardType
  loc_B90EBF: NeVar var_F8
  loc_B90EC3: FStVar var_128
  loc_B90EC7: FLdRfVar var_128
  loc_B90ECA: FLdRfVar var_168
  loc_B90ECD: ImpAdCallFPR4  = IIf(, , )
  loc_B90ED2: FLdRfVar var_168
  loc_B90ED5: ConcatVar var_188
  loc_B90ED9: LitVarStr var_198, "<br>"
  loc_B90EDE: ConcatVar var_1A8
  loc_B90EE2: LitVarStr var_1D8, vbNullString
  loc_B90EE7: FStVarCopyObj var_1E8
  loc_B90EEA: FLdRfVar var_1E8
  loc_B90EED: LitStr "Barrio: "
  loc_B90EF0: FMemLdR4 var_8C(16)
  loc_B90EF5: ConcatStr
  loc_B90EF6: CVarStr var_1C8
  loc_B90EF9: FMemLdR4 var_8C(16)
  loc_B90EFE: LitStr vbNullString
  loc_B90F01: NeStr
  loc_B90F03: CVarBoolI2 var_1B8
  loc_B90F07: FLdRfVar var_1F8
  loc_B90F0A: ImpAdCallFPR4  = IIf(, , )
  loc_B90F0F: FLdRfVar var_1F8
  loc_B90F12: ConcatVar var_208
  loc_B90F16: LitVarStr var_218, " "
  loc_B90F1B: ConcatVar var_228
  loc_B90F1F: LitVarStr var_258, vbNullString
  loc_B90F24: FStVarCopyObj var_268
  loc_B90F27: FLdRfVar var_268
  loc_B90F2A: LitStr "Manz.: "
  loc_B90F2D: FMemLdR4 var_8C(20)
  loc_B90F32: ConcatStr
  loc_B90F33: CVarStr var_248
  loc_B90F36: FMemLdR4 var_8C(20)
  loc_B90F3B: LitStr vbNullString
  loc_B90F3E: NeStr
  loc_B90F40: CVarBoolI2 var_238
  loc_B90F44: FLdRfVar var_278
  loc_B90F47: ImpAdCallFPR4  = IIf(, , )
  loc_B90F4C: FLdRfVar var_278
  loc_B90F4F: ConcatVar var_288
  loc_B90F53: LitVarStr var_298, " "
  loc_B90F58: ConcatVar var_2A8
  loc_B90F5C: LitVarStr var_2D8, vbNullString
  loc_B90F61: FStVarCopyObj var_2E8
  loc_B90F64: FLdRfVar var_2E8
  loc_B90F67: LitStr "Casa/Lote: "
  loc_B90F6A: FMemLdR4 var_8C(24)
  loc_B90F6F: ConcatStr
  loc_B90F70: CVarStr var_2C8
  loc_B90F73: FMemLdR4 var_8C(24)
  loc_B90F78: LitStr vbNullString
  loc_B90F7B: NeStr
  loc_B90F7D: CVarBoolI2 var_2B8
  loc_B90F81: FLdRfVar var_2F8
  loc_B90F84: ImpAdCallFPR4  = IIf(, , )
  loc_B90F89: FLdRfVar var_2F8
  loc_B90F8C: ConcatVar var_308
  loc_B90F90: LitVarStr var_318, " "
  loc_B90F95: ConcatVar var_328
  loc_B90F99: FMemLdR4 var_8C(28)
  loc_B90F9E: CVarStr var_338
  loc_B90FA1: ConcatVar var_348
  loc_B90FA5: LitVarStr var_358, "<br>"
  loc_B90FAA: ConcatVar var_368
  loc_B90FAE: FMemLdR4 var_8C(32)
  loc_B90FB3: CVarStr var_378
  loc_B90FB6: ConcatVar var_388
  loc_B90FBA: LitVarStr var_3B8, vbNullString
  loc_B90FBF: FStVarCopyObj var_3C8
  loc_B90FC2: FLdRfVar var_3C8
  loc_B90FC5: LitStr " ("
  loc_B90FC8: FMemLdR4 var_8C(36)
  loc_B90FCD: ConcatStr
  loc_B90FCE: FStStrNoPop var_C8
  loc_B90FD1: LitStr ")"
  loc_B90FD4: ConcatStr
  loc_B90FD5: CVarStr var_3A8
  loc_B90FD8: FMemLdR4 var_8C(36)
  loc_B90FDD: LitStr vbNullString
  loc_B90FE0: NeStr
  loc_B90FE2: CVarBoolI2 var_398
  loc_B90FE6: FLdRfVar var_3D8
  loc_B90FE9: ImpAdCallFPR4  = IIf(, , )
  loc_B90FEE: FLdRfVar var_3D8
  loc_B90FF1: ConcatVar var_3E8
  loc_B90FF5: LitVarStr var_3F8, "</strong></td>"
  loc_B90FFA: ConcatVar var_408
  loc_B90FFE: PopAdLdVar
  loc_B90FFF: FLdPr Me
  loc_B91002: MemLdRfVar from_stack_1.global_76
  loc_B91005: LdPrVar
  loc_B91007: LateMemCall
  loc_B9100D: FFreeStr var_C4 = ""
  loc_B91014: FFreeVar var_3A8 = "": var_3C8 = "": var_388 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_9C = "": var_C0 = "": var_DC = "": var_128 = "": var_158 = "": var_178 = "": var_168 = "": var_188 = "": var_1B8 = "": var_1C8 = "": var_1E8 = "": var_1A8 = "": var_1F8 = "": var_208 = "": var_238 = "": var_248 = "": var_268 = "": var_228 = "": var_278 = "": var_288 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_2A8 = "": var_2F8 = "": var_308 = "": var_328 = "": var_348 = "": var_368 = ""
  loc_B9105F: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B91064: PopAdLdVar
  loc_B91065: FLdPr Me
  loc_B91068: MemLdRfVar from_stack_1.global_76
  loc_B9106B: LdPrVar
  loc_B9106D: LateMemCall
  loc_B91073: LitStr "    <td colspan=""3"">Cuenta: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B91076: FMemLdR4 var_8C(40)
  loc_B9107B: ConcatStr
  loc_B9107C: FStStrNoPop var_C4
  loc_B9107F: LitStr "</span></strong>&nbsp;&nbsp;&nbsp; Conc.: <strong>"
  loc_B91082: ConcatStr
  loc_B91083: FStStrNoPop var_C8
  loc_B91086: FMemLdR4 var_8C(96)
  loc_B9108B: ConcatStr
  loc_B9108C: FStStrNoPop var_E0
  loc_B9108F: LitStr "</strong><br>"
  loc_B91092: ConcatStr
  loc_B91093: CVarStr var_C0
  loc_B91096: PopAdLdVar
  loc_B91097: FLdPr Me
  loc_B9109A: MemLdRfVar from_stack_1.global_76
  loc_B9109D: LdPrVar
  loc_B9109F: LateMemCall
  loc_B910A5: FFreeStr var_C4 = "": var_C8 = ""
  loc_B910AE: FFree1Var var_C0 = ""
  loc_B910B1: LitStr "                                CEMENTERIO: <strong>"
  loc_B910B4: FMemLdR4 var_8C(68)
  loc_B910B9: ConcatStr
  loc_B910BA: FStStrNoPop var_C4
  loc_B910BD: LitStr "</strong><br>"
  loc_B910C0: ConcatStr
  loc_B910C1: CVarStr var_C0
  loc_B910C4: PopAdLdVar
  loc_B910C5: FLdPr Me
  loc_B910C8: MemLdRfVar from_stack_1.global_76
  loc_B910CB: LdPrVar
  loc_B910CD: LateMemCall
  loc_B910D3: FFree1Str var_C4
  loc_B910D6: FFree1Var var_C0 = ""
  loc_B910D9: LitStr "                                "
  loc_B910DC: FMemLdR4 var_8C(72)
  loc_B910E1: ConcatStr
  loc_B910E2: FStStrNoPop var_C4
  loc_B910E5: LitStr ": <strong>"
  loc_B910E8: ConcatStr
  loc_B910E9: FStStrNoPop var_C8
  loc_B910EC: FMemLdR4 var_8C(76)
  loc_B910F1: ConcatStr
  loc_B910F2: FStStrNoPop var_E0
  loc_B910F5: LitStr " Fila "
  loc_B910F8: ConcatStr
  loc_B910F9: FStStrNoPop var_E4
  loc_B910FC: FMemLdR4 var_8C(80)
  loc_B91101: ConcatStr
  loc_B91102: FStStrNoPop var_E8
  loc_B91105: LitStr " "
  loc_B91108: ConcatStr
  loc_B91109: FStStrNoPop var_41C
  loc_B9110C: FMemLdR4 var_8C(84)
  loc_B91111: ConcatStr
  loc_B91112: FStStrNoPop var_420
  loc_B91115: LitStr " "
  loc_B91118: ConcatStr
  loc_B91119: FStStrNoPop var_424
  loc_B9111C: FMemLdR4 var_8C(88)
  loc_B91121: ConcatStr
  loc_B91122: FStStrNoPop var_428
  loc_B91125: LitStr "</strong><br>"
  loc_B91128: ConcatStr
  loc_B91129: CVarStr var_C0
  loc_B9112C: PopAdLdVar
  loc_B9112D: FLdPr Me
  loc_B91130: MemLdRfVar from_stack_1.global_76
  loc_B91133: LdPrVar
  loc_B91135: LateMemCall
  loc_B9113B: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_41C = "": var_420 = "": var_424 = ""
  loc_B91150: FFree1Var var_C0 = ""
  loc_B91153: LitStr "                                Difunto: <strong>"
  loc_B91156: FMemLdR4 var_8C(92)
  loc_B9115B: ConcatStr
  loc_B9115C: FStStrNoPop var_C4
  loc_B9115F: LitStr "</strong></td>"
  loc_B91162: ConcatStr
  loc_B91163: CVarStr var_C0
  loc_B91166: PopAdLdVar
  loc_B91167: FLdPr Me
  loc_B9116A: MemLdRfVar from_stack_1.global_76
  loc_B9116D: LdPrVar
  loc_B9116F: LateMemCall
  loc_B91175: FFree1Str var_C4
  loc_B91178: FFree1Var var_C0 = ""
  loc_B9117B: LitVarStr var_9C, "  </tr>"
  loc_B91180: PopAdLdVar
  loc_B91181: FLdPr Me
  loc_B91184: MemLdRfVar from_stack_1.global_76
  loc_B91187: LdPrVar
  loc_B91189: LateMemCall
  loc_B9118F: LitVarStr var_9C, "</table>"
  loc_B91194: PopAdLdVar
  loc_B91195: FLdPr Me
  loc_B91198: MemLdRfVar from_stack_1.global_76
  loc_B9119B: LdPrVar
  loc_B9119D: LateMemCall
  loc_B911A3: LitI4 0
  loc_B911A8: FStR4 var_8C
  loc_B911AB: AryUnlock
  loc_B911AE: ExitProcHresult
End Function

Private Function Proc_163_41_B5F428() 'B5F428
  'Data Table: 4DE7C8
  loc_B5F074: LitI4 1
  loc_B5F079: FLdPr Me
  loc_B5F07C: MemLdStr global_116
  loc_B5F07F: AryLock
  loc_B5F082: Ary1LdRf
  loc_B5F083: FStR4 var_8C
  loc_B5F086: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B5F08B: PopAdLdVar
  loc_B5F08C: FLdPr Me
  loc_B5F08F: MemLdRfVar from_stack_1.global_76
  loc_B5F092: LdPrVar
  loc_B5F094: LateMemCall
  loc_B5F09A: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B5F09F: PopAdLdVar
  loc_B5F0A0: FLdPr Me
  loc_B5F0A3: MemLdRfVar from_stack_1.global_76
  loc_B5F0A6: LdPrVar
  loc_B5F0A8: LateMemCall
  loc_B5F0AE: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA<br>OFICINA DE TRÁNSITO</strong></td>"
  loc_B5F0B3: PopAdLdVar
  loc_B5F0B4: FLdPr Me
  loc_B5F0B7: MemLdRfVar from_stack_1.global_76
  loc_B5F0BA: LdPrVar
  loc_B5F0BC: LateMemCall
  loc_B5F0C2: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B5F0C7: PopAdLdVar
  loc_B5F0C8: FLdPr Me
  loc_B5F0CB: MemLdRfVar from_stack_1.global_76
  loc_B5F0CE: LdPrVar
  loc_B5F0D0: LateMemCall
  loc_B5F0D6: LitStr "    <td width=""12" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B5F0D9: FLdPr Me
  loc_B5F0DC: VCallAd Control_ID_PeriBoleMsk
  loc_B5F0DF: FStAdFunc var_B0
  loc_B5F0E2: FLdPr var_B0
  loc_B5F0E5: LateIdLdVar var_C0 DispID_0 0
  loc_B5F0EC: CStrVarTmp
  loc_B5F0ED: FStStrNoPop var_C4
  loc_B5F0F0: ConcatStr
  loc_B5F0F1: FStStrNoPop var_C8
  loc_B5F0F4: LitStr "/"
  loc_B5F0F7: ConcatStr
  loc_B5F0F8: FStStrNoPop var_E0
  loc_B5F0FB: FLdPr Me
  loc_B5F0FE: VCallAd Control_ID_NumeBoleMsk
  loc_B5F101: FStAdFunc var_CC
  loc_B5F104: FLdPr var_CC
  loc_B5F107: LateIdLdVar var_DC DispID_0 0
  loc_B5F10E: CStrVarTmp
  loc_B5F10F: FStStrNoPop var_E4
  loc_B5F112: ConcatStr
  loc_B5F113: FStStrNoPop var_E8
  loc_B5F116: LitStr "</strong></td>"
  loc_B5F119: ConcatStr
  loc_B5F11A: CVarStr var_F8
  loc_B5F11D: PopAdLdVar
  loc_B5F11E: FLdPr Me
  loc_B5F121: MemLdRfVar from_stack_1.global_76
  loc_B5F124: LdPrVar
  loc_B5F126: LateMemCall
  loc_B5F12C: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = ""
  loc_B5F139: FFreeAd var_B0 = ""
  loc_B5F140: FFreeVar var_C0 = "": var_DC = ""
  loc_B5F149: LitVarStr var_9C, "    <td width=""11" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B5F14E: PopAdLdVar
  loc_B5F14F: FLdPr Me
  loc_B5F152: MemLdRfVar from_stack_1.global_76
  loc_B5F155: LdPrVar
  loc_B5F157: LateMemCall
  loc_B5F15D: LitStr "    <td width=""13" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B5F160: FMemLdR4 var_8C(128)
  loc_B5F165: ConcatStr
  loc_B5F166: FStStrNoPop var_C4
  loc_B5F169: LitStr "</strong></td>"
  loc_B5F16C: ConcatStr
  loc_B5F16D: CVarStr var_C0
  loc_B5F170: PopAdLdVar
  loc_B5F171: FLdPr Me
  loc_B5F174: MemLdRfVar from_stack_1.global_76
  loc_B5F177: LdPrVar
  loc_B5F179: LateMemCall
  loc_B5F17F: FFree1Str var_C4
  loc_B5F182: FFree1Var var_C0 = ""
  loc_B5F185: LitVarStr var_9C, "  </tr>"
  loc_B5F18A: PopAdLdVar
  loc_B5F18B: FLdPr Me
  loc_B5F18E: MemLdRfVar from_stack_1.global_76
  loc_B5F191: LdPrVar
  loc_B5F193: LateMemCall
  loc_B5F199: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B5F19E: PopAdLdVar
  loc_B5F19F: FLdPr Me
  loc_B5F1A2: MemLdRfVar from_stack_1.global_76
  loc_B5F1A5: LdPrVar
  loc_B5F1A7: LateMemCall
  loc_B5F1AD: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B5F1B2: PopAdLdVar
  loc_B5F1B3: FLdPr Me
  loc_B5F1B6: MemLdRfVar from_stack_1.global_76
  loc_B5F1B9: LdPrVar
  loc_B5F1BB: LateMemCall
  loc_B5F1C1: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B5F1C4: FMemLdR4 var_8C(4)
  loc_B5F1C9: ConcatStr
  loc_B5F1CA: FStStrNoPop var_C4
  loc_B5F1CD: LitStr "</span><br>"
  loc_B5F1D0: ConcatStr
  loc_B5F1D1: CVarStr var_C0
  loc_B5F1D4: PopAdLdVar
  loc_B5F1D5: FLdPr Me
  loc_B5F1D8: MemLdRfVar from_stack_1.global_76
  loc_B5F1DB: LdPrVar
  loc_B5F1DD: LateMemCall
  loc_B5F1E3: FFree1Str var_C4
  loc_B5F1E6: FFree1Var var_C0 = ""
  loc_B5F1E9: LitStr "      "
  loc_B5F1EC: FMemLdR4 var_8C(0)
  loc_B5F1F1: ConcatStr
  loc_B5F1F2: FStStrNoPop var_C4
  loc_B5F1F5: LitStr "<br>"
  loc_B5F1F8: ConcatStr
  loc_B5F1F9: CVarStr var_C0
  loc_B5F1FC: PopAdLdVar
  loc_B5F1FD: FLdPr Me
  loc_B5F200: MemLdRfVar from_stack_1.global_76
  loc_B5F203: LdPrVar
  loc_B5F205: LateMemCall
  loc_B5F20B: FFree1Str var_C4
  loc_B5F20E: FFree1Var var_C0 = ""
  loc_B5F211: LitStr "      "
  loc_B5F214: FMemLdR4 var_8C(8)
  loc_B5F219: ConcatStr
  loc_B5F21A: FStStrNoPop var_C4
  loc_B5F21D: LitStr " "
  loc_B5F220: ConcatStr
  loc_B5F221: CVarStr var_108
  loc_B5F224: LitVarStr var_AC, vbNullString
  loc_B5F229: FStVarCopyObj var_DC
  loc_B5F22C: FLdRfVar var_DC
  loc_B5F22F: LitStr "Nro: "
  loc_B5F232: FMemLdR4 var_8C(12)
  loc_B5F237: ConcatStr
  loc_B5F238: CVarStr var_C0
  loc_B5F23B: FMemLdR4 var_8C(12)
  loc_B5F240: LitStr "0"
  loc_B5F243: NeStr
  loc_B5F245: FMemLdR4 var_8C(12)
  loc_B5F24A: LitStr vbNullString
  loc_B5F24D: NeStr
  loc_B5F24F: AndI4
  loc_B5F250: CVarBoolI2 var_9C
  loc_B5F254: FLdRfVar var_F8
  loc_B5F257: ImpAdCallFPR4  = IIf(, , )
  loc_B5F25C: FLdRfVar var_F8
  loc_B5F25F: ConcatVar var_118
  loc_B5F263: LitVarStr var_128, "<br>"
  loc_B5F268: ConcatVar var_138
  loc_B5F26C: LitVarStr var_168, vbNullString
  loc_B5F271: FStVarCopyObj var_178
  loc_B5F274: FLdRfVar var_178
  loc_B5F277: LitStr "Barrio: "
  loc_B5F27A: FMemLdR4 var_8C(16)
  loc_B5F27F: ConcatStr
  loc_B5F280: CVarStr var_158
  loc_B5F283: FMemLdR4 var_8C(16)
  loc_B5F288: LitStr vbNullString
  loc_B5F28B: NeStr
  loc_B5F28D: CVarBoolI2 var_148
  loc_B5F291: FLdRfVar var_188
  loc_B5F294: ImpAdCallFPR4  = IIf(, , )
  loc_B5F299: FLdRfVar var_188
  loc_B5F29C: ConcatVar var_198
  loc_B5F2A0: LitVarStr var_1A8, " "
  loc_B5F2A5: ConcatVar var_1B8
  loc_B5F2A9: LitVarStr var_1E8, vbNullString
  loc_B5F2AE: FStVarCopyObj var_1F8
  loc_B5F2B1: FLdRfVar var_1F8
  loc_B5F2B4: LitStr "Manz.: "
  loc_B5F2B7: FMemLdR4 var_8C(20)
  loc_B5F2BC: ConcatStr
  loc_B5F2BD: CVarStr var_1D8
  loc_B5F2C0: FMemLdR4 var_8C(20)
  loc_B5F2C5: LitStr vbNullString
  loc_B5F2C8: NeStr
  loc_B5F2CA: CVarBoolI2 var_1C8
  loc_B5F2CE: FLdRfVar var_208
  loc_B5F2D1: ImpAdCallFPR4  = IIf(, , )
  loc_B5F2D6: FLdRfVar var_208
  loc_B5F2D9: ConcatVar var_218
  loc_B5F2DD: LitVarStr var_228, " "
  loc_B5F2E2: ConcatVar var_238
  loc_B5F2E6: LitVarStr var_268, vbNullString
  loc_B5F2EB: FStVarCopyObj var_278
  loc_B5F2EE: FLdRfVar var_278
  loc_B5F2F1: LitStr "Casa/Lote: "
  loc_B5F2F4: FMemLdR4 var_8C(24)
  loc_B5F2F9: ConcatStr
  loc_B5F2FA: CVarStr var_258
  loc_B5F2FD: FMemLdR4 var_8C(24)
  loc_B5F302: LitStr vbNullString
  loc_B5F305: NeStr
  loc_B5F307: CVarBoolI2 var_248
  loc_B5F30B: FLdRfVar var_288
  loc_B5F30E: ImpAdCallFPR4  = IIf(, , )
  loc_B5F313: FLdRfVar var_288
  loc_B5F316: ConcatVar var_298
  loc_B5F31A: LitVarStr var_2A8, " "
  loc_B5F31F: ConcatVar var_2B8
  loc_B5F323: FMemLdR4 var_8C(28)
  loc_B5F328: CVarStr var_2C8
  loc_B5F32B: ConcatVar var_2D8
  loc_B5F32F: LitVarStr var_2E8, "<br>"
  loc_B5F334: ConcatVar var_2F8
  loc_B5F338: FMemLdR4 var_8C(32)
  loc_B5F33D: CVarStr var_308
  loc_B5F340: ConcatVar var_318
  loc_B5F344: LitVarStr var_328, " ("
  loc_B5F349: ConcatVar var_338
  loc_B5F34D: FMemLdR4 var_8C(36)
  loc_B5F352: CVarStr var_348
  loc_B5F355: ConcatVar var_358
  loc_B5F359: LitVarStr var_368, ")</strong></td>"
  loc_B5F35E: ConcatVar var_378
  loc_B5F362: PopAdLdVar
  loc_B5F363: FLdPr Me
  loc_B5F366: MemLdRfVar from_stack_1.global_76
  loc_B5F369: LdPrVar
  loc_B5F36B: LateMemCall
  loc_B5F371: FFree1Str var_C4
  loc_B5F374: FFreeVar var_378 = "": var_9C = "": var_C0 = "": var_DC = "": var_108 = "": var_F8 = "": var_118 = "": var_148 = "": var_158 = "": var_178 = "": var_138 = "": var_188 = "": var_198 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_1B8 = "": var_208 = "": var_218 = "": var_248 = "": var_258 = "": var_278 = "": var_238 = "": var_288 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_318 = "": var_338 = ""
  loc_B5F3B5: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B5F3BA: PopAdLdVar
  loc_B5F3BB: FLdPr Me
  loc_B5F3BE: MemLdRfVar from_stack_1.global_76
  loc_B5F3C1: LdPrVar
  loc_B5F3C3: LateMemCall
  loc_B5F3C9: LitStr "    <td colspan=""3"">NRO CUENTA&nbsp;&nbsp;: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B5F3CC: FMemLdR4 var_8C(40)
  loc_B5F3D1: ConcatStr
  loc_B5F3D2: FStStrNoPop var_C4
  loc_B5F3D5: LitStr "</span></strong>"
  loc_B5F3D8: ConcatStr
  loc_B5F3D9: CVarStr var_C0
  loc_B5F3DC: PopAdLdVar
  loc_B5F3DD: FLdPr Me
  loc_B5F3E0: MemLdRfVar from_stack_1.global_76
  loc_B5F3E3: LdPrVar
  loc_B5F3E5: LateMemCall
  loc_B5F3EB: FFree1Str var_C4
  loc_B5F3EE: FFree1Var var_C0 = ""
  loc_B5F3F1: LitVarStr var_9C, "  </tr>"
  loc_B5F3F6: PopAdLdVar
  loc_B5F3F7: FLdPr Me
  loc_B5F3FA: MemLdRfVar from_stack_1.global_76
  loc_B5F3FD: LdPrVar
  loc_B5F3FF: LateMemCall
  loc_B5F405: LitVarStr var_9C, "</table>"
  loc_B5F40A: PopAdLdVar
  loc_B5F40B: FLdPr Me
  loc_B5F40E: MemLdRfVar from_stack_1.global_76
  loc_B5F411: LdPrVar
  loc_B5F413: LateMemCall
  loc_B5F419: LitI4 0
  loc_B5F41E: FStR4 var_8C
  loc_B5F421: AryUnlock
  loc_B5F424: ExitProcHresult
End Function

Private Function Proc_163_42_B422E0() 'B422E0
  'Data Table: 4DE7C8
  loc_B41FC8: LitI4 1
  loc_B41FCD: FLdPr Me
  loc_B41FD0: MemLdStr global_116
  loc_B41FD3: AryLock
  loc_B41FD6: Ary1LdRf
  loc_B41FD7: FStR4 var_8C
  loc_B41FDA: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B41FDF: PopAdLdVar
  loc_B41FE0: FLdPr Me
  loc_B41FE3: MemLdRfVar from_stack_1.global_76
  loc_B41FE6: LdPrVar
  loc_B41FE8: LateMemCall
  loc_B41FEE: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B41FF3: PopAdLdVar
  loc_B41FF4: FLdPr Me
  loc_B41FF7: MemLdRfVar from_stack_1.global_76
  loc_B41FFA: LdPrVar
  loc_B41FFC: LateMemCall
  loc_B42002: LitVarStr var_9C, "    <td><strong>DERECHOS VARIOS</strong></td>"
  loc_B42007: PopAdLdVar
  loc_B42008: FLdPr Me
  loc_B4200B: MemLdRfVar from_stack_1.global_76
  loc_B4200E: LdPrVar
  loc_B42010: LateMemCall
  loc_B42016: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B4201B: PopAdLdVar
  loc_B4201C: FLdPr Me
  loc_B4201F: MemLdRfVar from_stack_1.global_76
  loc_B42022: LdPrVar
  loc_B42024: LateMemCall
  loc_B4202A: LitStr "    <td width=""12" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B4202D: FLdPr Me
  loc_B42030: VCallAd Control_ID_PeriBoleMsk
  loc_B42033: FStAdFunc var_B0
  loc_B42036: FLdPr var_B0
  loc_B42039: LateIdLdVar var_C0 DispID_0 0
  loc_B42040: CStrVarTmp
  loc_B42041: FStStrNoPop var_C4
  loc_B42044: ConcatStr
  loc_B42045: FStStrNoPop var_C8
  loc_B42048: LitStr "/"
  loc_B4204B: ConcatStr
  loc_B4204C: FStStrNoPop var_E0
  loc_B4204F: FLdPr Me
  loc_B42052: VCallAd Control_ID_NumeBoleMsk
  loc_B42055: FStAdFunc var_CC
  loc_B42058: FLdPr var_CC
  loc_B4205B: LateIdLdVar var_DC DispID_0 0
  loc_B42062: CStrVarTmp
  loc_B42063: FStStrNoPop var_E4
  loc_B42066: ConcatStr
  loc_B42067: FStStrNoPop var_E8
  loc_B4206A: LitStr "</strong></td>"
  loc_B4206D: ConcatStr
  loc_B4206E: CVarStr var_F8
  loc_B42071: PopAdLdVar
  loc_B42072: FLdPr Me
  loc_B42075: MemLdRfVar from_stack_1.global_76
  loc_B42078: LdPrVar
  loc_B4207A: LateMemCall
  loc_B42080: FFreeStr var_C4 = "": var_C8 = "": var_E0 = "": var_E4 = ""
  loc_B4208D: FFreeAd var_B0 = ""
  loc_B42094: FFreeVar var_C0 = "": var_DC = ""
  loc_B4209D: LitVarStr var_9C, "    <td width=""11" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B420A2: PopAdLdVar
  loc_B420A3: FLdPr Me
  loc_B420A6: MemLdRfVar from_stack_1.global_76
  loc_B420A9: LdPrVar
  loc_B420AB: LateMemCall
  loc_B420B1: LitStr "    <td width=""13" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B420B4: FMemLdR4 var_8C(128)
  loc_B420B9: ConcatStr
  loc_B420BA: FStStrNoPop var_C4
  loc_B420BD: LitStr "</strong></td>"
  loc_B420C0: ConcatStr
  loc_B420C1: CVarStr var_C0
  loc_B420C4: PopAdLdVar
  loc_B420C5: FLdPr Me
  loc_B420C8: MemLdRfVar from_stack_1.global_76
  loc_B420CB: LdPrVar
  loc_B420CD: LateMemCall
  loc_B420D3: FFree1Str var_C4
  loc_B420D6: FFree1Var var_C0 = ""
  loc_B420D9: LitVarStr var_9C, "  </tr>"
  loc_B420DE: PopAdLdVar
  loc_B420DF: FLdPr Me
  loc_B420E2: MemLdRfVar from_stack_1.global_76
  loc_B420E5: LdPrVar
  loc_B420E7: LateMemCall
  loc_B420ED: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B420F2: PopAdLdVar
  loc_B420F3: FLdPr Me
  loc_B420F6: MemLdRfVar from_stack_1.global_76
  loc_B420F9: LdPrVar
  loc_B420FB: LateMemCall
  loc_B42101: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B42106: PopAdLdVar
  loc_B42107: FLdPr Me
  loc_B4210A: MemLdRfVar from_stack_1.global_76
  loc_B4210D: LdPrVar
  loc_B4210F: LateMemCall
  loc_B42115: LitVarStr var_118, "    <td colspan="""
  loc_B4211A: LitVarI2 var_DC, 5
  loc_B4211F: LitVarI2 var_C0, 1
  loc_B42124: FMemLdR4 var_8C(104)
  loc_B42129: LitStr vbNullString
  loc_B4212C: NeStr
  loc_B4212E: CVarBoolI2 var_9C
  loc_B42132: FLdRfVar var_F8
  loc_B42135: ImpAdCallFPR4  = IIf(, , )
  loc_B4213A: FLdRfVar var_F8
  loc_B4213D: ConcatVar var_128
  loc_B42141: LitVarStr var_138, """><strong><span class=""NormalBloqueFinGrande"">"
  loc_B42146: ConcatVar var_148
  loc_B4214A: FMemLdR4 var_8C(4)
  loc_B4214F: CVarStr var_158
  loc_B42152: ConcatVar var_168
  loc_B42156: LitVarStr var_178, "</span><br>"
  loc_B4215B: ConcatVar var_188
  loc_B4215F: PopAdLdVar
  loc_B42160: FLdPr Me
  loc_B42163: MemLdRfVar from_stack_1.global_76
  loc_B42166: LdPrVar
  loc_B42168: LateMemCall
  loc_B4216E: FFreeVar var_9C = "": var_C0 = "": var_DC = "": var_F8 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_B42181: LitStr "      "
  loc_B42184: FMemLdR4 var_8C(0)
  loc_B42189: ConcatStr
  loc_B4218A: FStStrNoPop var_C4
  loc_B4218D: LitStr "<br>"
  loc_B42190: ConcatStr
  loc_B42191: CVarStr var_C0
  loc_B42194: PopAdLdVar
  loc_B42195: FLdPr Me
  loc_B42198: MemLdRfVar from_stack_1.global_76
  loc_B4219B: LdPrVar
  loc_B4219D: LateMemCall
  loc_B421A3: FFree1Str var_C4
  loc_B421A6: FFree1Var var_C0 = ""
  loc_B421A9: LitStr "      "
  loc_B421AC: FMemLdR4 var_8C(8)
  loc_B421B1: ConcatStr
  loc_B421B2: FStStrNoPop var_C4
  loc_B421B5: LitStr " "
  loc_B421B8: ConcatStr
  loc_B421B9: CVarStr var_F8
  loc_B421BC: LitVarStr var_108, vbNullString
  loc_B421C1: FStVarCopyObj var_C0
  loc_B421C4: FLdRfVar var_C0
  loc_B421C7: FMemLdRf E0B8
  loc_B421CC: CVarRef
  loc_B421D1: FMemLdR4 var_8C(12)
  loc_B421D6: LitStr vbNullString
  loc_B421D9: NeStr
  loc_B421DB: CVarBoolI2 var_9C
  loc_B421DF: FLdRfVar var_DC
  loc_B421E2: ImpAdCallFPR4  = IIf(, , )
  loc_B421E7: FLdRfVar var_DC
  loc_B421EA: ConcatVar var_128
  loc_B421EE: LitVarStr var_118, " "
  loc_B421F3: ConcatVar var_148
  loc_B421F7: FMemLdR4 var_8C(12)
  loc_B421FC: CVarStr var_138
  loc_B421FF: ConcatVar var_168
  loc_B42203: LitVarStr var_158, "<br>"
  loc_B42208: ConcatVar var_188
  loc_B4220C: FMemLdR4 var_8C(32)
  loc_B42211: CVarStr var_178
  loc_B42214: ConcatVar var_1A8
  loc_B42218: LitVarStr var_198, " ("
  loc_B4221D: ConcatVar var_1B8
  loc_B42221: FMemLdR4 var_8C(36)
  loc_B42226: CVarStr var_1C8
  loc_B42229: ConcatVar var_1D8
  loc_B4222D: LitVarStr var_1E8, ")</strong></td>"
  loc_B42232: ConcatVar var_1F8
  loc_B42236: PopAdLdVar
  loc_B42237: FLdPr Me
  loc_B4223A: MemLdRfVar from_stack_1.global_76
  loc_B4223D: LdPrVar
  loc_B4223F: LateMemCall
  loc_B42245: FFree1Str var_C4
  loc_B42248: FFreeVar var_9C = "": var_C0 = "": var_F8 = "": var_DC = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1D8 = ""
  loc_B42263: FMemLdR4 var_8C(104)
  loc_B42268: LitStr vbNullString
  loc_B4226B: NeStr
  loc_B4226D: BranchF loc_B422AC
  loc_B42270: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Expediente: </strong></td>"
  loc_B42275: PopAdLdVar
  loc_B42276: FLdPr Me
  loc_B42279: MemLdRfVar from_stack_1.global_76
  loc_B4227C: LdPrVar
  loc_B4227E: LateMemCall
  loc_B42284: LitStr "    <td colspan=""3""><strong>"
  loc_B42287: FMemLdR4 var_8C(104)
  loc_B4228C: ConcatStr
  loc_B4228D: FStStrNoPop var_C4
  loc_B42290: LitStr "</strong>"
  loc_B42293: ConcatStr
  loc_B42294: CVarStr var_C0
  loc_B42297: PopAdLdVar
  loc_B42298: FLdPr Me
  loc_B4229B: MemLdRfVar from_stack_1.global_76
  loc_B4229E: LdPrVar
  loc_B422A0: LateMemCall
  loc_B422A6: FFree1Str var_C4
  loc_B422A9: FFree1Var var_C0 = ""
  loc_B422AC: LitVarStr var_9C, "  </tr>"
  loc_B422B1: PopAdLdVar
  loc_B422B2: FLdPr Me
  loc_B422B5: MemLdRfVar from_stack_1.global_76
  loc_B422B8: LdPrVar
  loc_B422BA: LateMemCall
  loc_B422C0: LitVarStr var_9C, "</table>"
  loc_B422C5: PopAdLdVar
  loc_B422C6: FLdPr Me
  loc_B422C9: MemLdRfVar from_stack_1.global_76
  loc_B422CC: LdPrVar
  loc_B422CE: LateMemCall
  loc_B422D4: LitI4 0
  loc_B422D9: FStR4 var_8C
  loc_B422DC: AryUnlock
  loc_B422DF: ExitProcHresult
End Function

Private Function Proc_163_43_C1F764() 'C1F764
  'Data Table: 4DE7C8
  loc_C1ECF8: LitVarStr var_94, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_C1ECFD: PopAdLdVar
  loc_C1ECFE: FLdPr Me
  loc_C1ED01: MemLdRfVar from_stack_1.global_76
  loc_C1ED04: LdPrVar
  loc_C1ED06: LateMemCall
  loc_C1ED0C: LitI2_Byte 1
  loc_C1ED0E: FLdPr Me
  loc_C1ED11: MemLdRfVar from_stack_1.global_126
  loc_C1ED14: FLdPr Me
  loc_C1ED17: MemLdI2 global_124
  loc_C1ED1A: CI4UI1
  loc_C1ED1B: LitI4 1
  loc_C1ED20: FLdPr Me
  loc_C1ED23: MemLdStr global_116
  loc_C1ED26: Ary1LdPr
  loc_C1ED27: MemLdStr global_188
  loc_C1ED2A: Ary1LdPr
  loc_C1ED2B: MemLdStr global_0
  loc_C1ED2E: LitI2_Byte 1
  loc_C1ED30: FnUBound
  loc_C1ED32: CI2I4
  loc_C1ED33: ForI2 var_A8
  loc_C1ED39: LitVarStr var_94, "  <tr>"
  loc_C1ED3E: PopAdLdVar
  loc_C1ED3F: FLdPr Me
  loc_C1ED42: MemLdRfVar from_stack_1.global_76
  loc_C1ED45: LdPrVar
  loc_C1ED47: LateMemCall
  loc_C1ED4D: LitVarStr var_F8, "    <td "
  loc_C1ED52: LitVarStr var_C8, vbNullString
  loc_C1ED57: FStVarCopyObj var_D8
  loc_C1ED5A: FLdRfVar var_D8
  loc_C1ED5D: LitVarStr var_A4, "style=""border-top:none"""
  loc_C1ED62: FStVarCopyObj var_B8
  loc_C1ED65: FLdRfVar var_B8
  loc_C1ED68: FLdPr Me
  loc_C1ED6B: MemLdI2 global_126
  loc_C1ED6E: LitI2_Byte 1
  loc_C1ED70: EqI2
  loc_C1ED71: CVarBoolI2 var_94
  loc_C1ED75: FLdRfVar var_E8
  loc_C1ED78: ImpAdCallFPR4  = IIf(, , )
  loc_C1ED7D: FLdRfVar var_E8
  loc_C1ED80: ConcatVar var_108
  loc_C1ED84: LitVarStr var_118, " colspan=""7"" align=""left"">"
  loc_C1ED89: ConcatVar var_128
  loc_C1ED8D: FLdPr Me
  loc_C1ED90: MemLdI2 global_126
  loc_C1ED93: CI4UI1
  loc_C1ED94: FLdPr Me
  loc_C1ED97: MemLdI2 global_124
  loc_C1ED9A: CI4UI1
  loc_C1ED9B: LitI4 1
  loc_C1EDA0: FLdPr Me
  loc_C1EDA3: MemLdStr global_116
  loc_C1EDA6: Ary1LdPr
  loc_C1EDA7: MemLdStr global_188
  loc_C1EDAA: Ary1LdPr
  loc_C1EDAB: MemLdStr global_0
  loc_C1EDAE: Ary1LdPr
  loc_C1EDAF: MemLdStr global_0
  loc_C1EDB2: CVarStr var_138
  loc_C1EDB5: ConcatVar var_148
  loc_C1EDB9: LitVarStr var_158, " - "
  loc_C1EDBE: ConcatVar var_168
  loc_C1EDC2: FLdPr Me
  loc_C1EDC5: MemLdI2 global_126
  loc_C1EDC8: CI4UI1
  loc_C1EDC9: FLdPr Me
  loc_C1EDCC: MemLdI2 global_124
  loc_C1EDCF: CI4UI1
  loc_C1EDD0: LitI4 1
  loc_C1EDD5: FLdPr Me
  loc_C1EDD8: MemLdStr global_116
  loc_C1EDDB: Ary1LdPr
  loc_C1EDDC: MemLdStr global_188
  loc_C1EDDF: Ary1LdPr
  loc_C1EDE0: MemLdStr global_0
  loc_C1EDE3: Ary1LdPr
  loc_C1EDE4: MemLdStr global_4
  loc_C1EDE7: CVarStr var_178
  loc_C1EDEA: ConcatVar var_188
  loc_C1EDEE: LitVarStr var_198, "</td>"
  loc_C1EDF3: ConcatVar var_1A8
  loc_C1EDF7: PopAdLdVar
  loc_C1EDF8: FLdPr Me
  loc_C1EDFB: MemLdRfVar from_stack_1.global_76
  loc_C1EDFE: LdPrVar
  loc_C1EE00: LateMemCall
  loc_C1EE06: FFreeVar var_94 = "": var_B8 = "": var_D8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = ""
  loc_C1EE1D: LitVarStr var_94, "  </tr>"
  loc_C1EE22: PopAdLdVar
  loc_C1EE23: FLdPr Me
  loc_C1EE26: MemLdRfVar from_stack_1.global_76
  loc_C1EE29: LdPrVar
  loc_C1EE2B: LateMemCall
  loc_C1EE31: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C1EE36: PopAdLdVar
  loc_C1EE37: FLdPr Me
  loc_C1EE3A: MemLdRfVar from_stack_1.global_76
  loc_C1EE3D: LdPrVar
  loc_C1EE3F: LateMemCall
  loc_C1EE45: FLdPr Me
  loc_C1EE48: MemLdI2 global_126
  loc_C1EE4B: CI4UI1
  loc_C1EE4C: FLdPr Me
  loc_C1EE4F: MemLdI2 global_124
  loc_C1EE52: CI4UI1
  loc_C1EE53: LitI4 1
  loc_C1EE58: FLdPr Me
  loc_C1EE5B: MemLdStr global_116
  loc_C1EE5E: Ary1LdPr
  loc_C1EE5F: MemLdStr global_188
  loc_C1EE62: Ary1LdPr
  loc_C1EE63: MemLdStr global_0
  loc_C1EE66: Ary1LdPr
  loc_C1EE67: MemLdI2 global_8
  loc_C1EE6A: BranchF loc_C1EE8A
  loc_C1EE6D: LitVarStr var_94, "    <td>Facilidad</td>"
  loc_C1EE72: PopAdLdVar
  loc_C1EE73: FLdPr Me
  loc_C1EE76: MemLdRfVar from_stack_1.global_76
  loc_C1EE79: LdPrVar
  loc_C1EE7B: LateMemCall
  loc_C1EE81: LitStr "Cuota"
  loc_C1EE84: FStStrCopy var_1BC
  loc_C1EE87: Branch loc_C1EF3E
  loc_C1EE8A: LitVarStr var_94, "    <td>Periodo</td>"
  loc_C1EE8F: PopAdLdVar
  loc_C1EE90: FLdPr Me
  loc_C1EE93: MemLdRfVar from_stack_1.global_76
  loc_C1EE96: LdPrVar
  loc_C1EE98: LateMemCall
  loc_C1EE9E: FLdPr Me
  loc_C1EEA1: MemLdUI1 global_120
  loc_C1EEA5: FStUI1 var_1BE
  loc_C1EEA9: FLdUI1
  loc_C1EEAD: LitI2_Byte 1
  loc_C1EEAF: CUI1I2
  loc_C1EEB1: EqI2
  loc_C1EEB2: BranchF loc_C1EEBE
  loc_C1EEB5: LitStr "Bimestres"
  loc_C1EEB8: FStStrCopy var_1BC
  loc_C1EEBB: Branch loc_C1EF3E
  loc_C1EEBE: FLdUI1
  loc_C1EEC2: LitI2_Byte 2
  loc_C1EEC4: CUI1I2
  loc_C1EEC6: EqI2
  loc_C1EEC7: BranchT loc_C1EEEE
  loc_C1EECA: FLdUI1
  loc_C1EECE: LitI2_Byte 4
  loc_C1EED0: CUI1I2
  loc_C1EED2: EqI2
  loc_C1EED3: BranchT loc_C1EEEE
  loc_C1EED6: FLdUI1
  loc_C1EEDA: LitI2_Byte 6
  loc_C1EEDC: CUI1I2
  loc_C1EEDE: EqI2
  loc_C1EEDF: BranchT loc_C1EEEE
  loc_C1EEE2: FLdUI1
  loc_C1EEE6: LitI2_Byte 7
  loc_C1EEE8: CUI1I2
  loc_C1EEEA: EqI2
  loc_C1EEEB: BranchF loc_C1EEF7
  loc_C1EEEE: LitStr "Bimestres"
  loc_C1EEF1: FStStrCopy var_1BC
  loc_C1EEF4: Branch loc_C1EF3E
  loc_C1EEF7: FLdUI1
  loc_C1EEFB: LitI2_Byte 3
  loc_C1EEFD: CUI1I2
  loc_C1EEFF: EqI2
  loc_C1EF00: BranchF loc_C1EF2C
  loc_C1EF03: LitI4 1
  loc_C1EF08: FLdPr Me
  loc_C1EF0B: MemLdStr global_116
  loc_C1EF0E: Ary1LdPr
  loc_C1EF0F: MemLdStr global_116
  loc_C1EF12: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C1EF15: EqStr
  loc_C1EF17: BranchF loc_C1EF23
  loc_C1EF1A: LitStr "Mes"
  loc_C1EF1D: FStStrCopy var_1BC
  loc_C1EF20: Branch loc_C1EF29
  loc_C1EF23: LitStr "Cuota"
  loc_C1EF26: FStStrCopy var_1BC
  loc_C1EF29: Branch loc_C1EF3E
  loc_C1EF2C: FLdUI1
  loc_C1EF30: LitI2_Byte 5
  loc_C1EF32: CUI1I2
  loc_C1EF34: EqI2
  loc_C1EF35: BranchF loc_C1EF3E
  loc_C1EF38: LitStr "N&deg; de Acta"
  loc_C1EF3B: FStStrCopy var_1BC
  loc_C1EF3E: LitStr "    <td>"
  loc_C1EF41: ILdRf var_1BC
  loc_C1EF44: ConcatStr
  loc_C1EF45: FStStrNoPop var_1C4
  loc_C1EF48: LitStr "</td>"
  loc_C1EF4B: ConcatStr
  loc_C1EF4C: CVarStr var_B8
  loc_C1EF4F: PopAdLdVar
  loc_C1EF50: FLdPr Me
  loc_C1EF53: MemLdRfVar from_stack_1.global_76
  loc_C1EF56: LdPrVar
  loc_C1EF58: LateMemCall
  loc_C1EF5E: FFree1Str var_1C4
  loc_C1EF61: FFree1Var var_B8 = ""
  loc_C1EF64: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>Derecho</td>"
  loc_C1EF69: PopAdLdVar
  loc_C1EF6A: FLdPr Me
  loc_C1EF6D: MemLdRfVar from_stack_1.global_76
  loc_C1EF70: LdPrVar
  loc_C1EF72: LateMemCall
  loc_C1EF78: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>Recargo</td>"
  loc_C1EF7D: PopAdLdVar
  loc_C1EF7E: FLdPr Me
  loc_C1EF81: MemLdRfVar from_stack_1.global_76
  loc_C1EF84: LdPrVar
  loc_C1EF86: LateMemCall
  loc_C1EF8C: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>Inter&eacute;s</td>"
  loc_C1EF91: PopAdLdVar
  loc_C1EF92: FLdPr Me
  loc_C1EF95: MemLdRfVar from_stack_1.global_76
  loc_C1EF98: LdPrVar
  loc_C1EF9A: LateMemCall
  loc_C1EFA0: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>Descuento</td>"
  loc_C1EFA5: PopAdLdVar
  loc_C1EFA6: FLdPr Me
  loc_C1EFA9: MemLdRfVar from_stack_1.global_76
  loc_C1EFAC: LdPrVar
  loc_C1EFAE: LateMemCall
  loc_C1EFB4: LitVarStr var_94, "    <td width=""14" & Chr(37) & """>TOTAL</td>"
  loc_C1EFB9: PopAdLdVar
  loc_C1EFBA: FLdPr Me
  loc_C1EFBD: MemLdRfVar from_stack_1.global_76
  loc_C1EFC0: LdPrVar
  loc_C1EFC2: LateMemCall
  loc_C1EFC8: LitVarStr var_94, "  </tr>"
  loc_C1EFCD: PopAdLdVar
  loc_C1EFCE: FLdPr Me
  loc_C1EFD1: MemLdRfVar from_stack_1.global_76
  loc_C1EFD4: LdPrVar
  loc_C1EFD6: LateMemCall
  loc_C1EFDC: LitI2_Byte 1
  loc_C1EFDE: FLdPr Me
  loc_C1EFE1: MemLdRfVar from_stack_1.global_128
  loc_C1EFE4: FLdPr Me
  loc_C1EFE7: MemLdI2 global_126
  loc_C1EFEA: CI4UI1
  loc_C1EFEB: FLdPr Me
  loc_C1EFEE: MemLdI2 global_124
  loc_C1EFF1: CI4UI1
  loc_C1EFF2: LitI4 1
  loc_C1EFF7: FLdPr Me
  loc_C1EFFA: MemLdStr global_116
  loc_C1EFFD: Ary1LdPr
  loc_C1EFFE: MemLdStr global_188
  loc_C1F001: Ary1LdPr
  loc_C1F002: MemLdStr global_0
  loc_C1F005: Ary1LdPr
  loc_C1F006: MemLdStr global_12
  loc_C1F009: LitI2_Byte 1
  loc_C1F00B: FnUBound
  loc_C1F00D: CI2I4
  loc_C1F00E: ForI2 var_1C8
  loc_C1F014: LitVarStr var_94, "  <tr align=""right"" valign=""top"">"
  loc_C1F019: PopAdLdVar
  loc_C1F01A: FLdPr Me
  loc_C1F01D: MemLdRfVar from_stack_1.global_76
  loc_C1F020: LdPrVar
  loc_C1F022: LateMemCall
  loc_C1F028: LitStr "    <td width=""9" & Chr(37) & """ rowspan="""
  loc_C1F02B: FLdPr Me
  loc_C1F02E: MemLdI2 global_128
  loc_C1F031: CI4UI1
  loc_C1F032: FLdPr Me
  loc_C1F035: MemLdI2 global_126
  loc_C1F038: CI4UI1
  loc_C1F039: FLdPr Me
  loc_C1F03C: MemLdI2 global_124
  loc_C1F03F: CI4UI1
  loc_C1F040: LitI4 1
  loc_C1F045: FLdPr Me
  loc_C1F048: MemLdStr global_116
  loc_C1F04B: Ary1LdPr
  loc_C1F04C: MemLdStr global_188
  loc_C1F04F: Ary1LdPr
  loc_C1F050: MemLdStr global_0
  loc_C1F053: Ary1LdPr
  loc_C1F054: MemLdStr global_12
  loc_C1F057: Ary1LdPr
  loc_C1F058: MemLdI2 global_8
  loc_C1F05B: CStrUI1
  loc_C1F05D: FStStrNoPop var_1C4
  loc_C1F060: ConcatStr
  loc_C1F061: FStStrNoPop var_1CC
  loc_C1F064: LitStr """ valign=""top"">"
  loc_C1F067: ConcatStr
  loc_C1F068: FStStrNoPop var_1D0
  loc_C1F06B: FLdPr Me
  loc_C1F06E: MemLdI2 global_128
  loc_C1F071: CI4UI1
  loc_C1F072: FLdPr Me
  loc_C1F075: MemLdI2 global_126
  loc_C1F078: CI4UI1
  loc_C1F079: FLdPr Me
  loc_C1F07C: MemLdI2 global_124
  loc_C1F07F: CI4UI1
  loc_C1F080: LitI4 1
  loc_C1F085: FLdPr Me
  loc_C1F088: MemLdStr global_116
  loc_C1F08B: Ary1LdPr
  loc_C1F08C: MemLdStr global_188
  loc_C1F08F: Ary1LdPr
  loc_C1F090: MemLdStr global_0
  loc_C1F093: Ary1LdPr
  loc_C1F094: MemLdStr global_12
  loc_C1F097: Ary1LdPr
  loc_C1F098: MemLdStr global_0
  loc_C1F09B: ConcatStr
  loc_C1F09C: FStStrNoPop var_1D4
  loc_C1F09F: LitStr "</td>"
  loc_C1F0A2: ConcatStr
  loc_C1F0A3: CVarStr var_B8
  loc_C1F0A6: PopAdLdVar
  loc_C1F0A7: FLdPr Me
  loc_C1F0AA: MemLdRfVar from_stack_1.global_76
  loc_C1F0AD: LdPrVar
  loc_C1F0AF: LateMemCall
  loc_C1F0B5: FFreeStr var_1C4 = "": var_1CC = "": var_1D0 = ""
  loc_C1F0C0: FFree1Var var_B8 = ""
  loc_C1F0C3: LitI2_Byte 1
  loc_C1F0C5: FLdPr Me
  loc_C1F0C8: MemLdRfVar from_stack_1.global_130
  loc_C1F0CB: FLdPr Me
  loc_C1F0CE: MemLdI2 global_128
  loc_C1F0D1: CI4UI1
  loc_C1F0D2: FLdPr Me
  loc_C1F0D5: MemLdI2 global_126
  loc_C1F0D8: CI4UI1
  loc_C1F0D9: FLdPr Me
  loc_C1F0DC: MemLdI2 global_124
  loc_C1F0DF: CI4UI1
  loc_C1F0E0: LitI4 1
  loc_C1F0E5: FLdPr Me
  loc_C1F0E8: MemLdStr global_116
  loc_C1F0EB: Ary1LdPr
  loc_C1F0EC: MemLdStr global_188
  loc_C1F0EF: Ary1LdPr
  loc_C1F0F0: MemLdStr global_0
  loc_C1F0F3: Ary1LdPr
  loc_C1F0F4: MemLdStr global_12
  loc_C1F0F7: Ary1LdPr
  loc_C1F0F8: MemLdStr global_4
  loc_C1F0FB: LitI2_Byte 1
  loc_C1F0FD: FnUBound
  loc_C1F0FF: CI2I4
  loc_C1F100: ForI2 var_1D8
  loc_C1F106: FLdPr Me
  loc_C1F109: MemLdI2 global_130
  loc_C1F10C: LitI2_Byte 1
  loc_C1F10E: GtI2
  loc_C1F10F: BranchF loc_C1F126
  loc_C1F112: LitVarStr var_94, "  <tr align=""right"" valign=""top"">"
  loc_C1F117: PopAdLdVar
  loc_C1F118: FLdPr Me
  loc_C1F11B: MemLdRfVar from_stack_1.global_76
  loc_C1F11E: LdPrVar
  loc_C1F120: LateMemCall
  loc_C1F126: LitStr "    <td nowrap valign=""top"" width=""10" & Chr(37) & """ rowspan="""
  loc_C1F129: FLdPr Me
  loc_C1F12C: MemLdI2 global_130
  loc_C1F12F: CI4UI1
  loc_C1F130: FLdPr Me
  loc_C1F133: MemLdI2 global_128
  loc_C1F136: CI4UI1
  loc_C1F137: FLdPr Me
  loc_C1F13A: MemLdI2 global_126
  loc_C1F13D: CI4UI1
  loc_C1F13E: FLdPr Me
  loc_C1F141: MemLdI2 global_124
  loc_C1F144: CI4UI1
  loc_C1F145: LitI4 1
  loc_C1F14A: FLdPr Me
  loc_C1F14D: MemLdStr global_116
  loc_C1F150: Ary1LdPr
  loc_C1F151: MemLdStr global_188
  loc_C1F154: Ary1LdPr
  loc_C1F155: MemLdStr global_0
  loc_C1F158: Ary1LdPr
  loc_C1F159: MemLdStr global_12
  loc_C1F15C: Ary1LdPr
  loc_C1F15D: MemLdStr global_4
  loc_C1F160: Ary1LdPr
  loc_C1F161: MemLdI2 global_28
  loc_C1F164: CStrUI1
  loc_C1F166: FStStrNoPop var_1C4
  loc_C1F169: ConcatStr
  loc_C1F16A: FStStrNoPop var_1CC
  loc_C1F16D: LitStr """>"
  loc_C1F170: ConcatStr
  loc_C1F171: FStStrNoPop var_1D0
  loc_C1F174: FLdPr Me
  loc_C1F177: MemLdI2 global_130
  loc_C1F17A: CI4UI1
  loc_C1F17B: FLdPr Me
  loc_C1F17E: MemLdI2 global_128
  loc_C1F181: CI4UI1
  loc_C1F182: FLdPr Me
  loc_C1F185: MemLdI2 global_126
  loc_C1F188: CI4UI1
  loc_C1F189: FLdPr Me
  loc_C1F18C: MemLdI2 global_124
  loc_C1F18F: CI4UI1
  loc_C1F190: LitI4 1
  loc_C1F195: FLdPr Me
  loc_C1F198: MemLdStr global_116
  loc_C1F19B: Ary1LdPr
  loc_C1F19C: MemLdStr global_188
  loc_C1F19F: Ary1LdPr
  loc_C1F1A0: MemLdStr global_0
  loc_C1F1A3: Ary1LdPr
  loc_C1F1A4: MemLdStr global_12
  loc_C1F1A7: Ary1LdPr
  loc_C1F1A8: MemLdStr global_4
  loc_C1F1AB: Ary1LdPr
  loc_C1F1AC: MemLdStr global_0
  loc_C1F1AF: ConcatStr
  loc_C1F1B0: FStStrNoPop var_1D4
  loc_C1F1B3: LitStr "</td>"
  loc_C1F1B6: ConcatStr
  loc_C1F1B7: CVarStr var_B8
  loc_C1F1BA: PopAdLdVar
  loc_C1F1BB: FLdPr Me
  loc_C1F1BE: MemLdRfVar from_stack_1.global_76
  loc_C1F1C1: LdPrVar
  loc_C1F1C3: LateMemCall
  loc_C1F1C9: FFreeStr var_1C4 = "": var_1CC = "": var_1D0 = ""
  loc_C1F1D4: FFree1Var var_B8 = ""
  loc_C1F1D7: LitI2_Byte 1
  loc_C1F1D9: FLdPr Me
  loc_C1F1DC: MemLdRfVar from_stack_1.global_132
  loc_C1F1DF: FLdPr Me
  loc_C1F1E2: MemLdI2 global_130
  loc_C1F1E5: CI4UI1
  loc_C1F1E6: FLdPr Me
  loc_C1F1E9: MemLdI2 global_128
  loc_C1F1EC: CI4UI1
  loc_C1F1ED: FLdPr Me
  loc_C1F1F0: MemLdI2 global_126
  loc_C1F1F3: CI4UI1
  loc_C1F1F4: FLdPr Me
  loc_C1F1F7: MemLdI2 global_124
  loc_C1F1FA: CI4UI1
  loc_C1F1FB: LitI4 1
  loc_C1F200: FLdPr Me
  loc_C1F203: MemLdStr global_116
  loc_C1F206: Ary1LdPr
  loc_C1F207: MemLdStr global_188
  loc_C1F20A: Ary1LdPr
  loc_C1F20B: MemLdStr global_0
  loc_C1F20E: Ary1LdPr
  loc_C1F20F: MemLdStr global_12
  loc_C1F212: Ary1LdPr
  loc_C1F213: MemLdStr global_4
  loc_C1F216: Ary1LdPr
  loc_C1F217: MemLdStr global_24
  loc_C1F21A: LitI2_Byte 1
  loc_C1F21C: FnUBound
  loc_C1F21E: CI2I4
  loc_C1F21F: ForI2 var_1DC
  loc_C1F225: FLdPr Me
  loc_C1F228: MemLdI2 global_130
  loc_C1F22B: CI4UI1
  loc_C1F22C: FLdPr Me
  loc_C1F22F: MemLdI2 global_128
  loc_C1F232: CI4UI1
  loc_C1F233: FLdPr Me
  loc_C1F236: MemLdI2 global_126
  loc_C1F239: CI4UI1
  loc_C1F23A: FLdPr Me
  loc_C1F23D: MemLdI2 global_124
  loc_C1F240: CI4UI1
  loc_C1F241: LitI4 1
  loc_C1F246: FLdPr Me
  loc_C1F249: MemLdStr global_116
  loc_C1F24C: AryLock
  loc_C1F24F: Ary1LdPr
  loc_C1F250: MemLdStr global_188
  loc_C1F253: AryLock
  loc_C1F256: Ary1LdPr
  loc_C1F257: MemLdStr global_0
  loc_C1F25A: AryLock
  loc_C1F25D: Ary1LdPr
  loc_C1F25E: MemLdStr global_12
  loc_C1F261: AryLock
  loc_C1F264: Ary1LdPr
  loc_C1F265: MemLdStr global_4
  loc_C1F268: AryLock
  loc_C1F26B: Ary1LdRf
  loc_C1F26C: FStR4 var_1F4
  loc_C1F26F: FLdPr Me
  loc_C1F272: MemLdI2 global_132
  loc_C1F275: LitI2_Byte 1
  loc_C1F277: GtI2
  loc_C1F278: BranchF loc_C1F28F
  loc_C1F27B: LitVarStr var_94, "  <tr align=""right"">"
  loc_C1F280: PopAdLdVar
  loc_C1F281: FLdPr Me
  loc_C1F284: MemLdRfVar from_stack_1.global_76
  loc_C1F287: LdPrVar
  loc_C1F289: LateMemCall
  loc_C1F28F: LitStr "  <td rowspan="""
  loc_C1F292: FMemLdI2 var_1F4(28)
  loc_C1F297: CStrUI1
  loc_C1F299: FStStrNoPop var_1C4
  loc_C1F29C: ConcatStr
  loc_C1F29D: FStStrNoPop var_1CC
  loc_C1F2A0: LitStr """>"
  loc_C1F2A3: ConcatStr
  loc_C1F2A4: CVarStr var_E8
  loc_C1F2A7: FMemLdRf 0
  loc_C1F2AC: CVarRef
  loc_C1F2B1: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C1F2B6: FStVarCopyObj var_B8
  loc_C1F2B9: FLdRfVar var_B8
  loc_C1F2BC: FMemLdR4 var_1F4(4)
  loc_C1F2C1: LitStr "0,00"
  loc_C1F2C4: EqStr
  loc_C1F2C6: CVarBoolI2 var_94
  loc_C1F2CA: FLdRfVar var_D8
  loc_C1F2CD: ImpAdCallFPR4  = IIf(, , )
  loc_C1F2D2: FLdRfVar var_D8
  loc_C1F2D5: ConcatVar var_108
  loc_C1F2D9: LitVarStr var_F8, "</td>"
  loc_C1F2DE: ConcatVar var_128
  loc_C1F2E2: PopAdLdVar
  loc_C1F2E3: FLdPr Me
  loc_C1F2E6: MemLdRfVar from_stack_1.global_76
  loc_C1F2E9: LdPrVar
  loc_C1F2EB: LateMemCall
  loc_C1F2F1: FFreeStr var_1C4 = ""
  loc_C1F2F8: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C1F307: LitStr "  <td rowspan="""
  loc_C1F30A: FMemLdI2 var_1F4(28)
  loc_C1F30F: CStrUI1
  loc_C1F311: FStStrNoPop var_1C4
  loc_C1F314: ConcatStr
  loc_C1F315: FStStrNoPop var_1CC
  loc_C1F318: LitStr """>"
  loc_C1F31B: ConcatStr
  loc_C1F31C: CVarStr var_E8
  loc_C1F31F: FMemLdRf 0
  loc_C1F324: CVarRef
  loc_C1F329: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C1F32E: FStVarCopyObj var_B8
  loc_C1F331: FLdRfVar var_B8
  loc_C1F334: FMemLdR4 var_1F4(8)
  loc_C1F339: LitStr "0,00"
  loc_C1F33C: EqStr
  loc_C1F33E: CVarBoolI2 var_94
  loc_C1F342: FLdRfVar var_D8
  loc_C1F345: ImpAdCallFPR4  = IIf(, , )
  loc_C1F34A: FLdRfVar var_D8
  loc_C1F34D: ConcatVar var_108
  loc_C1F351: LitVarStr var_F8, "</td>"
  loc_C1F356: ConcatVar var_128
  loc_C1F35A: PopAdLdVar
  loc_C1F35B: FLdPr Me
  loc_C1F35E: MemLdRfVar from_stack_1.global_76
  loc_C1F361: LdPrVar
  loc_C1F363: LateMemCall
  loc_C1F369: FFreeStr var_1C4 = ""
  loc_C1F370: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C1F37F: LitStr "  <td rowspan="""
  loc_C1F382: FMemLdI2 var_1F4(28)
  loc_C1F387: CStrUI1
  loc_C1F389: FStStrNoPop var_1C4
  loc_C1F38C: ConcatStr
  loc_C1F38D: FStStrNoPop var_1CC
  loc_C1F390: LitStr """>"
  loc_C1F393: ConcatStr
  loc_C1F394: CVarStr var_E8
  loc_C1F397: FMemLdRf 0
  loc_C1F39C: CVarRef
  loc_C1F3A1: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C1F3A6: FStVarCopyObj var_B8
  loc_C1F3A9: FLdRfVar var_B8
  loc_C1F3AC: FMemLdR4 var_1F4(12)
  loc_C1F3B1: LitStr "0,00"
  loc_C1F3B4: EqStr
  loc_C1F3B6: CVarBoolI2 var_94
  loc_C1F3BA: FLdRfVar var_D8
  loc_C1F3BD: ImpAdCallFPR4  = IIf(, , )
  loc_C1F3C2: FLdRfVar var_D8
  loc_C1F3C5: ConcatVar var_108
  loc_C1F3C9: LitVarStr var_F8, "</td>"
  loc_C1F3CE: ConcatVar var_128
  loc_C1F3D2: PopAdLdVar
  loc_C1F3D3: FLdPr Me
  loc_C1F3D6: MemLdRfVar from_stack_1.global_76
  loc_C1F3D9: LdPrVar
  loc_C1F3DB: LateMemCall
  loc_C1F3E1: FFreeStr var_1C4 = ""
  loc_C1F3E8: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C1F3F7: LitStr "  <td rowspan="""
  loc_C1F3FA: FMemLdI2 var_1F4(28)
  loc_C1F3FF: CStrUI1
  loc_C1F401: FStStrNoPop var_1C4
  loc_C1F404: ConcatStr
  loc_C1F405: FStStrNoPop var_1CC
  loc_C1F408: LitStr """>"
  loc_C1F40B: ConcatStr
  loc_C1F40C: CVarStr var_E8
  loc_C1F40F: FMemLdRf 0
  loc_C1F414: CVarRef
  loc_C1F419: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C1F41E: FStVarCopyObj var_B8
  loc_C1F421: FLdRfVar var_B8
  loc_C1F424: FMemLdR4 var_1F4(16)
  loc_C1F429: LitStr "0,00"
  loc_C1F42C: EqStr
  loc_C1F42E: CVarBoolI2 var_94
  loc_C1F432: FLdRfVar var_D8
  loc_C1F435: ImpAdCallFPR4  = IIf(, , )
  loc_C1F43A: FLdRfVar var_D8
  loc_C1F43D: ConcatVar var_108
  loc_C1F441: LitVarStr var_F8, "</td>"
  loc_C1F446: ConcatVar var_128
  loc_C1F44A: PopAdLdVar
  loc_C1F44B: FLdPr Me
  loc_C1F44E: MemLdRfVar from_stack_1.global_76
  loc_C1F451: LdPrVar
  loc_C1F453: LateMemCall
  loc_C1F459: FFreeStr var_1C4 = ""
  loc_C1F460: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C1F46F: LitStr "  <td align=""right"" width=""11" & Chr(37) & """ rowspan="""
  loc_C1F472: FMemLdI2 var_1F4(28)
  loc_C1F477: CStrUI1
  loc_C1F479: FStStrNoPop var_1C4
  loc_C1F47C: ConcatStr
  loc_C1F47D: FStStrNoPop var_1CC
  loc_C1F480: LitStr """>"
  loc_C1F483: ConcatStr
  loc_C1F484: CVarStr var_E8
  loc_C1F487: FMemLdRf 0
  loc_C1F48C: CVarRef
  loc_C1F491: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C1F496: FStVarCopyObj var_B8
  loc_C1F499: FLdRfVar var_B8
  loc_C1F49C: FMemLdR4 var_1F4(20)
  loc_C1F4A1: LitStr "0,00"
  loc_C1F4A4: EqStr
  loc_C1F4A6: CVarBoolI2 var_94
  loc_C1F4AA: FLdRfVar var_D8
  loc_C1F4AD: ImpAdCallFPR4  = IIf(, , )
  loc_C1F4B2: FLdRfVar var_D8
  loc_C1F4B5: ConcatVar var_108
  loc_C1F4B9: LitVarStr var_F8, "</td>"
  loc_C1F4BE: ConcatVar var_128
  loc_C1F4C2: PopAdLdVar
  loc_C1F4C3: FLdPr Me
  loc_C1F4C6: MemLdRfVar from_stack_1.global_76
  loc_C1F4C9: LdPrVar
  loc_C1F4CB: LateMemCall
  loc_C1F4D1: FFreeStr var_1C4 = ""
  loc_C1F4D8: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C1F4E7: LitI4 0
  loc_C1F4EC: FStR4 var_1F4
  loc_C1F4EF: AryUnlock
  loc_C1F4F2: AryUnlock
  loc_C1F4F5: AryUnlock
  loc_C1F4F8: AryUnlock
  loc_C1F4FB: AryUnlock
  loc_C1F4FE: LitVarStr var_94, "  </tr>"
  loc_C1F503: PopAdLdVar
  loc_C1F504: FLdPr Me
  loc_C1F507: MemLdRfVar from_stack_1.global_76
  loc_C1F50A: LdPrVar
  loc_C1F50C: LateMemCall
  loc_C1F512: FLdPr Me
  loc_C1F515: MemLdRfVar from_stack_1.global_132
  loc_C1F518: NextI2 var_1DC, loc_C1F225
  loc_C1F51D: FLdPr Me
  loc_C1F520: MemLdRfVar from_stack_1.global_130
  loc_C1F523: NextI2 var_1D8, loc_C1F106
  loc_C1F528: FLdPr Me
  loc_C1F52B: MemLdRfVar from_stack_1.global_128
  loc_C1F52E: NextI2 var_1C8, loc_C1F014
  loc_C1F533: FLdPr Me
  loc_C1F536: MemLdRfVar from_stack_1.global_126
  loc_C1F539: NextI2 var_A8, loc_C1ED39
  loc_C1F53E: FLdPr Me
  loc_C1F541: MemLdI2 global_124
  loc_C1F544: CI4UI1
  loc_C1F545: LitI4 1
  loc_C1F54A: FLdPr Me
  loc_C1F54D: MemLdStr global_116
  loc_C1F550: Ary1LdPr
  loc_C1F551: MemLdStr global_188
  loc_C1F554: LitI2_Byte 1
  loc_C1F556: FnUBound
  loc_C1F558: LtI4
  loc_C1F559: BranchF loc_C1F763
  loc_C1F55C: LitVarStr var_94, "</table><p><hr></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>"
  loc_C1F561: PopAdLdVar
  loc_C1F562: FLdPr Me
  loc_C1F565: MemLdRfVar from_stack_1.global_76
  loc_C1F568: LdPrVar
  loc_C1F56A: LateMemCall
  loc_C1F570: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_C1F575: PopAdLdVar
  loc_C1F576: FLdPr Me
  loc_C1F579: MemLdRfVar from_stack_1.global_76
  loc_C1F57C: LdPrVar
  loc_C1F57E: LateMemCall
  loc_C1F584: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C1F589: PopAdLdVar
  loc_C1F58A: FLdPr Me
  loc_C1F58D: MemLdRfVar from_stack_1.global_76
  loc_C1F590: LdPrVar
  loc_C1F592: LateMemCall
  loc_C1F598: LitStr "    <td rowspan=""2"">SUBTOTALES HOJA "
  loc_C1F59B: FLdPr Me
  loc_C1F59E: MemLdI2 global_124
  loc_C1F5A1: CStrUI1
  loc_C1F5A3: FStStrNoPop var_1C4
  loc_C1F5A6: ConcatStr
  loc_C1F5A7: FStStrNoPop var_1CC
  loc_C1F5AA: LitStr "</td>"
  loc_C1F5AD: ConcatStr
  loc_C1F5AE: CVarStr var_B8
  loc_C1F5B1: PopAdLdVar
  loc_C1F5B2: FLdPr Me
  loc_C1F5B5: MemLdRfVar from_stack_1.global_76
  loc_C1F5B8: LdPrVar
  loc_C1F5BA: LateMemCall
  loc_C1F5C0: FFreeStr var_1C4 = ""
  loc_C1F5C7: FFree1Var var_B8 = ""
  loc_C1F5CA: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_C1F5CF: PopAdLdVar
  loc_C1F5D0: FLdPr Me
  loc_C1F5D3: MemLdRfVar from_stack_1.global_76
  loc_C1F5D6: LdPrVar
  loc_C1F5D8: LateMemCall
  loc_C1F5DE: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>RECARGO</td>"
  loc_C1F5E3: PopAdLdVar
  loc_C1F5E4: FLdPr Me
  loc_C1F5E7: MemLdRfVar from_stack_1.global_76
  loc_C1F5EA: LdPrVar
  loc_C1F5EC: LateMemCall
  loc_C1F5F2: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>INTER&Eacute;S</td>"
  loc_C1F5F7: PopAdLdVar
  loc_C1F5F8: FLdPr Me
  loc_C1F5FB: MemLdRfVar from_stack_1.global_76
  loc_C1F5FE: LdPrVar
  loc_C1F600: LateMemCall
  loc_C1F606: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DESCUENTO</td>"
  loc_C1F60B: PopAdLdVar
  loc_C1F60C: FLdPr Me
  loc_C1F60F: MemLdRfVar from_stack_1.global_76
  loc_C1F612: LdPrVar
  loc_C1F614: LateMemCall
  loc_C1F61A: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>TOTAL</td>"
  loc_C1F61F: PopAdLdVar
  loc_C1F620: FLdPr Me
  loc_C1F623: MemLdRfVar from_stack_1.global_76
  loc_C1F626: LdPrVar
  loc_C1F628: LateMemCall
  loc_C1F62E: LitVarStr var_94, "  </tr>"
  loc_C1F633: PopAdLdVar
  loc_C1F634: FLdPr Me
  loc_C1F637: MemLdRfVar from_stack_1.global_76
  loc_C1F63A: LdPrVar
  loc_C1F63C: LateMemCall
  loc_C1F642: LitVarStr var_94, "  <tr align=""center"" class=""Normal"">"
  loc_C1F647: PopAdLdVar
  loc_C1F648: FLdPr Me
  loc_C1F64B: MemLdRfVar from_stack_1.global_76
  loc_C1F64E: LdPrVar
  loc_C1F650: LateMemCall
  loc_C1F656: FLdPr Me
  loc_C1F659: MemLdI2 global_124
  loc_C1F65C: CI4UI1
  loc_C1F65D: LitI4 1
  loc_C1F662: FLdPr Me
  loc_C1F665: MemLdStr global_116
  loc_C1F668: AryLock
  loc_C1F66B: Ary1LdPr
  loc_C1F66C: MemLdStr global_188
  loc_C1F66F: AryLock
  loc_C1F672: Ary1LdPr
  loc_C1F673: MemLdRfVar from_stack_1.global_4
  loc_C1F676: FStR4 var_200
  loc_C1F679: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C1F67C: FMemLdR4 var_200(4)
  loc_C1F681: ConcatStr
  loc_C1F682: FStStrNoPop var_1C4
  loc_C1F685: LitStr "</td>"
  loc_C1F688: ConcatStr
  loc_C1F689: CVarStr var_B8
  loc_C1F68C: PopAdLdVar
  loc_C1F68D: FLdPr Me
  loc_C1F690: MemLdRfVar from_stack_1.global_76
  loc_C1F693: LdPrVar
  loc_C1F695: LateMemCall
  loc_C1F69B: FFree1Str var_1C4
  loc_C1F69E: FFree1Var var_B8 = ""
  loc_C1F6A1: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C1F6A4: FMemLdR4 var_200(8)
  loc_C1F6A9: ConcatStr
  loc_C1F6AA: FStStrNoPop var_1C4
  loc_C1F6AD: LitStr "</td>"
  loc_C1F6B0: ConcatStr
  loc_C1F6B1: CVarStr var_B8
  loc_C1F6B4: PopAdLdVar
  loc_C1F6B5: FLdPr Me
  loc_C1F6B8: MemLdRfVar from_stack_1.global_76
  loc_C1F6BB: LdPrVar
  loc_C1F6BD: LateMemCall
  loc_C1F6C3: FFree1Str var_1C4
  loc_C1F6C6: FFree1Var var_B8 = ""
  loc_C1F6C9: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C1F6CC: FMemLdR4 var_200(12)
  loc_C1F6D1: ConcatStr
  loc_C1F6D2: FStStrNoPop var_1C4
  loc_C1F6D5: LitStr "</td>"
  loc_C1F6D8: ConcatStr
  loc_C1F6D9: CVarStr var_B8
  loc_C1F6DC: PopAdLdVar
  loc_C1F6DD: FLdPr Me
  loc_C1F6E0: MemLdRfVar from_stack_1.global_76
  loc_C1F6E3: LdPrVar
  loc_C1F6E5: LateMemCall
  loc_C1F6EB: FFree1Str var_1C4
  loc_C1F6EE: FFree1Var var_B8 = ""
  loc_C1F6F1: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C1F6F4: FMemLdR4 var_200(16)
  loc_C1F6F9: ConcatStr
  loc_C1F6FA: FStStrNoPop var_1C4
  loc_C1F6FD: LitStr "</td>"
  loc_C1F700: ConcatStr
  loc_C1F701: CVarStr var_B8
  loc_C1F704: PopAdLdVar
  loc_C1F705: FLdPr Me
  loc_C1F708: MemLdRfVar from_stack_1.global_76
  loc_C1F70B: LdPrVar
  loc_C1F70D: LateMemCall
  loc_C1F713: FFree1Str var_1C4
  loc_C1F716: FFree1Var var_B8 = ""
  loc_C1F719: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C1F71C: FMemLdR4 var_200(20)
  loc_C1F721: ConcatStr
  loc_C1F722: FStStrNoPop var_1C4
  loc_C1F725: LitStr "</td>"
  loc_C1F728: ConcatStr
  loc_C1F729: CVarStr var_B8
  loc_C1F72C: PopAdLdVar
  loc_C1F72D: FLdPr Me
  loc_C1F730: MemLdRfVar from_stack_1.global_76
  loc_C1F733: LdPrVar
  loc_C1F735: LateMemCall
  loc_C1F73B: FFree1Str var_1C4
  loc_C1F73E: FFree1Var var_B8 = ""
  loc_C1F741: LitI4 0
  loc_C1F746: FStR4 var_200
  loc_C1F749: AryUnlock
  loc_C1F74C: AryUnlock
  loc_C1F74F: LitVarStr var_94, "  </tr></table>"
  loc_C1F754: PopAdLdVar
  loc_C1F755: FLdPr Me
  loc_C1F758: MemLdRfVar from_stack_1.global_76
  loc_C1F75B: LdPrVar
  loc_C1F75D: LateMemCall
  loc_C1F763: ExitProcHresult
End Function

Private Function Proc_163_44_B1182C() 'B1182C
  'Data Table: 4DE7C8
  loc_B115D8: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B115DD: PopAdLdVar
  loc_B115DE: FLdPr Me
  loc_B115E1: MemLdRfVar from_stack_1.global_76
  loc_B115E4: LdPrVar
  loc_B115E6: LateMemCall
  loc_B115EC: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B115F1: PopAdLdVar
  loc_B115F2: FLdPr Me
  loc_B115F5: MemLdRfVar from_stack_1.global_76
  loc_B115F8: LdPrVar
  loc_B115FA: LateMemCall
  loc_B11600: LitVarStr var_94, "    <td>CANTIDAD</td>"
  loc_B11605: PopAdLdVar
  loc_B11606: FLdPr Me
  loc_B11609: MemLdRfVar from_stack_1.global_76
  loc_B1160C: LdPrVar
  loc_B1160E: LateMemCall
  loc_B11614: LitVarStr var_94, "    <td>DETALLE O SERVICIO</td>"
  loc_B11619: PopAdLdVar
  loc_B1161A: FLdPr Me
  loc_B1161D: MemLdRfVar from_stack_1.global_76
  loc_B11620: LdPrVar
  loc_B11622: LateMemCall
  loc_B11628: LitVarStr var_94, "    <td>PRECIO UN.</td>"
  loc_B1162D: PopAdLdVar
  loc_B1162E: FLdPr Me
  loc_B11631: MemLdRfVar from_stack_1.global_76
  loc_B11634: LdPrVar
  loc_B11636: LateMemCall
  loc_B1163C: LitVarStr var_94, "    <td>SUBTOTAL</td>"
  loc_B11641: PopAdLdVar
  loc_B11642: FLdPr Me
  loc_B11645: MemLdRfVar from_stack_1.global_76
  loc_B11648: LdPrVar
  loc_B1164A: LateMemCall
  loc_B11650: LitVarStr var_94, "    <td>DESCUENTO</td>"
  loc_B11655: PopAdLdVar
  loc_B11656: FLdPr Me
  loc_B11659: MemLdRfVar from_stack_1.global_76
  loc_B1165C: LdPrVar
  loc_B1165E: LateMemCall
  loc_B11664: LitVarStr var_94, "    <td>TOTAL</td>"
  loc_B11669: PopAdLdVar
  loc_B1166A: FLdPr Me
  loc_B1166D: MemLdRfVar from_stack_1.global_76
  loc_B11670: LdPrVar
  loc_B11672: LateMemCall
  loc_B11678: LitVarStr var_94, "  </tr>"
  loc_B1167D: PopAdLdVar
  loc_B1167E: FLdPr Me
  loc_B11681: MemLdRfVar from_stack_1.global_76
  loc_B11684: LdPrVar
  loc_B11686: LateMemCall
  loc_B1168C: LitI2_Byte 1
  loc_B1168E: FLdPr Me
  loc_B11691: MemLdRfVar from_stack_1.global_130
  loc_B11694: LitI4 1
  loc_B11699: FLdPr Me
  loc_B1169C: MemLdStr global_116
  loc_B1169F: Ary1LdPr
  loc_B116A0: MemLdStr global_100
  loc_B116A3: LitI2_Byte 1
  loc_B116A5: FnUBound
  loc_B116A7: CI2I4
  loc_B116A8: ForI2 var_A8
  loc_B116AE: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B116B3: PopAdLdVar
  loc_B116B4: FLdPr Me
  loc_B116B7: MemLdRfVar from_stack_1.global_76
  loc_B116BA: LdPrVar
  loc_B116BC: LateMemCall
  loc_B116C2: FLdPr Me
  loc_B116C5: MemLdI2 global_130
  loc_B116C8: CI4UI1
  loc_B116C9: LitI4 1
  loc_B116CE: FLdPr Me
  loc_B116D1: MemLdStr global_116
  loc_B116D4: AryLock
  loc_B116D7: Ary1LdPr
  loc_B116D8: MemLdStr global_100
  loc_B116DB: AryLock
  loc_B116DE: Ary1LdRf
  loc_B116DF: FStR4 var_B4
  loc_B116E2: LitStr vbNullString
  loc_B116E5: LitI2_Byte 0
  loc_B116E7: LitI2_Byte 0
  loc_B116E9: LitI2_Byte 0
  loc_B116EB: LitStr "right"
  loc_B116EE: FMemLdR4 var_B4(0)
  loc_B116F3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B116F8: CVarStr var_C4
  loc_B116FB: PopAdLdVar
  loc_B116FC: FLdPr Me
  loc_B116FF: MemLdRfVar from_stack_1.global_76
  loc_B11702: LdPrVar
  loc_B11704: LateMemCall
  loc_B1170A: FFree1Var var_C4 = ""
  loc_B1170D: LitStr vbNullString
  loc_B11710: LitI2_Byte 0
  loc_B11712: LitI2_Byte 0
  loc_B11714: LitI2_Byte 0
  loc_B11716: LitStr "left"
  loc_B11719: FMemLdR4 var_B4(4)
  loc_B1171E: LitStr " - "
  loc_B11721: ConcatStr
  loc_B11722: FStStrNoPop var_C8
  loc_B11725: FMemLdR4 var_B4(8)
  loc_B1172A: ConcatStr
  loc_B1172B: FStStrNoPop var_CC
  loc_B1172E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B11733: CVarStr var_C4
  loc_B11736: PopAdLdVar
  loc_B11737: FLdPr Me
  loc_B1173A: MemLdRfVar from_stack_1.global_76
  loc_B1173D: LdPrVar
  loc_B1173F: LateMemCall
  loc_B11745: FFreeStr var_C8 = ""
  loc_B1174C: FFree1Var var_C4 = ""
  loc_B1174F: LitStr vbNullString
  loc_B11752: LitI2_Byte 0
  loc_B11754: LitI2_Byte 0
  loc_B11756: LitI2_Byte 0
  loc_B11758: LitStr "right"
  loc_B1175B: FMemLdR4 var_B4(12)
  loc_B11760: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B11765: CVarStr var_C4
  loc_B11768: PopAdLdVar
  loc_B11769: FLdPr Me
  loc_B1176C: MemLdRfVar from_stack_1.global_76
  loc_B1176F: LdPrVar
  loc_B11771: LateMemCall
  loc_B11777: FFree1Var var_C4 = ""
  loc_B1177A: LitStr vbNullString
  loc_B1177D: LitI2_Byte 0
  loc_B1177F: LitI2_Byte 0
  loc_B11781: LitI2_Byte 0
  loc_B11783: LitStr "right"
  loc_B11786: FMemLdR4 var_B4(16)
  loc_B1178B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B11790: CVarStr var_C4
  loc_B11793: PopAdLdVar
  loc_B11794: FLdPr Me
  loc_B11797: MemLdRfVar from_stack_1.global_76
  loc_B1179A: LdPrVar
  loc_B1179C: LateMemCall
  loc_B117A2: FFree1Var var_C4 = ""
  loc_B117A5: LitStr vbNullString
  loc_B117A8: LitI2_Byte 0
  loc_B117AA: LitI2_Byte 0
  loc_B117AC: LitI2_Byte 0
  loc_B117AE: LitStr "right"
  loc_B117B1: FMemLdR4 var_B4(20)
  loc_B117B6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B117BB: CVarStr var_C4
  loc_B117BE: PopAdLdVar
  loc_B117BF: FLdPr Me
  loc_B117C2: MemLdRfVar from_stack_1.global_76
  loc_B117C5: LdPrVar
  loc_B117C7: LateMemCall
  loc_B117CD: FFree1Var var_C4 = ""
  loc_B117D0: LitStr vbNullString
  loc_B117D3: LitI2_Byte 0
  loc_B117D5: LitI2_Byte 0
  loc_B117D7: LitI2_Byte 0
  loc_B117D9: LitStr "right"
  loc_B117DC: FMemLdR4 var_B4(24)
  loc_B117E1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B117E6: CVarStr var_C4
  loc_B117E9: PopAdLdVar
  loc_B117EA: FLdPr Me
  loc_B117ED: MemLdRfVar from_stack_1.global_76
  loc_B117F0: LdPrVar
  loc_B117F2: LateMemCall
  loc_B117F8: FFree1Var var_C4 = ""
  loc_B117FB: LitI4 0
  loc_B11800: FStR4 var_B4
  loc_B11803: AryUnlock
  loc_B11806: AryUnlock
  loc_B11809: LitVarStr var_94, "     </tr>"
  loc_B1180E: PopAdLdVar
  loc_B1180F: FLdPr Me
  loc_B11812: MemLdRfVar from_stack_1.global_76
  loc_B11815: LdPrVar
  loc_B11817: LateMemCall
  loc_B1181D: FLdPr Me
  loc_B11820: MemLdRfVar from_stack_1.global_130
  loc_B11823: NextI2 var_A8, loc_B116AE
  loc_B11828: ExitProcHresult
End Function

Private Function Proc_163_45_B806E4() 'B806E4
  'Data Table: 4DE7C8
  loc_B801EC: LitI4 1
  loc_B801F1: FLdPr Me
  loc_B801F4: MemLdStr global_116
  loc_B801F7: Ary1LdPr
  loc_B801F8: MemLdStr global_144
  loc_B801FB: LitStr vbNullString
  loc_B801FE: NeStr
  loc_B80200: BranchF loc_B80292
  loc_B80203: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B80208: PopAdLdVar
  loc_B80209: FLdPr Me
  loc_B8020C: MemLdRfVar from_stack_1.global_76
  loc_B8020F: LdPrVar
  loc_B80211: LateMemCall
  loc_B80217: LitStr "    <td colspan=""6"" align=""right"" valign=""top""><strong>APREMIO ("
  loc_B8021A: LitI4 1
  loc_B8021F: FLdPr Me
  loc_B80222: MemLdStr global_116
  loc_B80225: Ary1LdPr
  loc_B80226: MemLdStr global_144
  loc_B80229: ConcatStr
  loc_B8022A: FStStrNoPop var_A8
  loc_B8022D: LitStr "):</strong></td>"
  loc_B80230: ConcatStr
  loc_B80231: CVarStr var_B8
  loc_B80234: PopAdLdVar
  loc_B80235: FLdPr Me
  loc_B80238: MemLdRfVar from_stack_1.global_76
  loc_B8023B: LdPrVar
  loc_B8023D: LateMemCall
  loc_B80243: FFree1Str var_A8
  loc_B80246: FFree1Var var_B8 = ""
  loc_B80249: LitStr vbNullString
  loc_B8024C: LitI2_Byte 0
  loc_B8024E: LitI2_Byte 0
  loc_B80250: LitI2_Byte 0
  loc_B80252: LitStr "right"
  loc_B80255: LitI4 1
  loc_B8025A: FLdPr Me
  loc_B8025D: MemLdStr global_116
  loc_B80260: Ary1LdPr
  loc_B80261: MemLdStr global_140
  loc_B80264: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B80269: CVarStr var_B8
  loc_B8026C: PopAdLdVar
  loc_B8026D: FLdPr Me
  loc_B80270: MemLdRfVar from_stack_1.global_76
  loc_B80273: LdPrVar
  loc_B80275: LateMemCall
  loc_B8027B: FFree1Var var_B8 = ""
  loc_B8027E: LitVarStr var_94, "  </tr>"
  loc_B80283: PopAdLdVar
  loc_B80284: FLdPr Me
  loc_B80287: MemLdRfVar from_stack_1.global_76
  loc_B8028A: LdPrVar
  loc_B8028C: LateMemCall
  loc_B80292: FLdPr Me
  loc_B80295: MemLdStr DetaDeva
  loc_B80298: LitStr vbNullString
  loc_B8029B: NeStr
  loc_B8029D: BranchF loc_B802FB
  loc_B802A0: LitVarStr var_94, "  <tr>"
  loc_B802A5: PopAdLdVar
  loc_B802A6: FLdPr Me
  loc_B802A9: MemLdRfVar from_stack_1.global_76
  loc_B802AC: LdPrVar
  loc_B802AE: LateMemCall
  loc_B802B4: LitStr "    <td colspan=""7"" align=""justify"" valign=""top"">Detalle: "
  loc_B802B7: FLdPr Me
  loc_B802BA: MemLdStr DetaDeva
  loc_B802BD: ConcatStr
  loc_B802BE: FStStrNoPop var_A8
  loc_B802C1: LitStr "</td>"
  loc_B802C4: ConcatStr
  loc_B802C5: CVarStr var_B8
  loc_B802C8: PopAdLdVar
  loc_B802C9: FLdPr Me
  loc_B802CC: MemLdRfVar from_stack_1.global_76
  loc_B802CF: LdPrVar
  loc_B802D1: LateMemCall
  loc_B802D7: FFree1Str var_A8
  loc_B802DA: FFree1Var var_B8 = ""
  loc_B802DD: LitVarStr var_94, "  </tr>"
  loc_B802E2: PopAdLdVar
  loc_B802E3: FLdPr Me
  loc_B802E6: MemLdRfVar from_stack_1.global_76
  loc_B802E9: LdPrVar
  loc_B802EB: LateMemCall
  loc_B802F1: LitStr vbNullString
  loc_B802F4: FLdPr Me
  loc_B802F7: MemStStrCopy
  loc_B802FB: LitVarStr var_94, "  <tr align=""right"" class=""Totales"">"
  loc_B80300: PopAdLdVar
  loc_B80301: FLdPr Me
  loc_B80304: MemLdRfVar from_stack_1.global_76
  loc_B80307: LdPrVar
  loc_B80309: LateMemCall
  loc_B8030F: LitVarStr var_94, "    <td colspan=""2"" align=""right"" valign=""top"" class=""Encabezado"">TOTALES:</td>"
  loc_B80314: PopAdLdVar
  loc_B80315: FLdPr Me
  loc_B80318: MemLdRfVar from_stack_1.global_76
  loc_B8031B: LdPrVar
  loc_B8031D: LateMemCall
  loc_B80323: LitStr "    <td>"
  loc_B80326: LitI4 1
  loc_B8032B: FLdPr Me
  loc_B8032E: MemLdStr global_136
  loc_B80331: Ary1LdPr
  loc_B80332: MemLdStr global_4
  loc_B80335: ConcatStr
  loc_B80336: FStStrNoPop var_A8
  loc_B80339: LitStr "</td>"
  loc_B8033C: ConcatStr
  loc_B8033D: CVarStr var_B8
  loc_B80340: PopAdLdVar
  loc_B80341: FLdPr Me
  loc_B80344: MemLdRfVar from_stack_1.global_76
  loc_B80347: LdPrVar
  loc_B80349: LateMemCall
  loc_B8034F: FFree1Str var_A8
  loc_B80352: FFree1Var var_B8 = ""
  loc_B80355: LitStr "    <td>"
  loc_B80358: LitI4 1
  loc_B8035D: FLdPr Me
  loc_B80360: MemLdStr global_136
  loc_B80363: Ary1LdPr
  loc_B80364: MemLdStr global_8
  loc_B80367: ConcatStr
  loc_B80368: FStStrNoPop var_A8
  loc_B8036B: LitStr "</td>"
  loc_B8036E: ConcatStr
  loc_B8036F: CVarStr var_B8
  loc_B80372: PopAdLdVar
  loc_B80373: FLdPr Me
  loc_B80376: MemLdRfVar from_stack_1.global_76
  loc_B80379: LdPrVar
  loc_B8037B: LateMemCall
  loc_B80381: FFree1Str var_A8
  loc_B80384: FFree1Var var_B8 = ""
  loc_B80387: LitStr "    <td>"
  loc_B8038A: LitI4 1
  loc_B8038F: FLdPr Me
  loc_B80392: MemLdStr global_136
  loc_B80395: Ary1LdPr
  loc_B80396: MemLdStr global_12
  loc_B80399: ConcatStr
  loc_B8039A: FStStrNoPop var_A8
  loc_B8039D: LitStr "</td>"
  loc_B803A0: ConcatStr
  loc_B803A1: CVarStr var_B8
  loc_B803A4: PopAdLdVar
  loc_B803A5: FLdPr Me
  loc_B803A8: MemLdRfVar from_stack_1.global_76
  loc_B803AB: LdPrVar
  loc_B803AD: LateMemCall
  loc_B803B3: FFree1Str var_A8
  loc_B803B6: FFree1Var var_B8 = ""
  loc_B803B9: LitStr "    <td>"
  loc_B803BC: LitI4 1
  loc_B803C1: FLdPr Me
  loc_B803C4: MemLdStr global_136
  loc_B803C7: Ary1LdPr
  loc_B803C8: MemLdStr global_16
  loc_B803CB: ConcatStr
  loc_B803CC: FStStrNoPop var_A8
  loc_B803CF: LitStr "</td>"
  loc_B803D2: ConcatStr
  loc_B803D3: CVarStr var_B8
  loc_B803D6: PopAdLdVar
  loc_B803D7: FLdPr Me
  loc_B803DA: MemLdRfVar from_stack_1.global_76
  loc_B803DD: LdPrVar
  loc_B803DF: LateMemCall
  loc_B803E5: FFree1Str var_A8
  loc_B803E8: FFree1Var var_B8 = ""
  loc_B803EB: LitStr "    <td>"
  loc_B803EE: LitI4 1
  loc_B803F3: FLdPr Me
  loc_B803F6: MemLdStr global_136
  loc_B803F9: Ary1LdPr
  loc_B803FA: MemLdStr global_20
  loc_B803FD: ConcatStr
  loc_B803FE: FStStrNoPop var_A8
  loc_B80401: LitStr "</td>"
  loc_B80404: ConcatStr
  loc_B80405: CVarStr var_B8
  loc_B80408: PopAdLdVar
  loc_B80409: FLdPr Me
  loc_B8040C: MemLdRfVar from_stack_1.global_76
  loc_B8040F: LdPrVar
  loc_B80411: LateMemCall
  loc_B80417: FFree1Str var_A8
  loc_B8041A: FFree1Var var_B8 = ""
  loc_B8041D: LitVarStr var_94, "  </tr>"
  loc_B80422: PopAdLdVar
  loc_B80423: FLdPr Me
  loc_B80426: MemLdRfVar from_stack_1.global_76
  loc_B80429: LdPrVar
  loc_B8042B: LateMemCall
  loc_B80431: LitVarStr var_94, "  <tr>"
  loc_B80436: PopAdLdVar
  loc_B80437: FLdPr Me
  loc_B8043A: MemLdRfVar from_stack_1.global_76
  loc_B8043D: LdPrVar
  loc_B8043F: LateMemCall
  loc_B80445: LitStr "    <td colspan=""7"" valign=""top"">SON PESOS: <strong>"
  loc_B80448: LitI4 1
  loc_B8044D: FLdPr Me
  loc_B80450: MemLdStr global_136
  loc_B80453: Ary1LdPr
  loc_B80454: MemLdStr global_20
  loc_B80457: CR8Str
  loc_B80459: PopFPR8
  loc_B8045A: ImpAdCallI2 Proc_272_28_AB2798(, )
  loc_B8045F: FStStrNoPop var_A8
  loc_B80462: ConcatStr
  loc_B80463: FStStrNoPop var_BC
  loc_B80466: LitStr ".---</strong></td>"
  loc_B80469: ConcatStr
  loc_B8046A: CVarStr var_B8
  loc_B8046D: PopAdLdVar
  loc_B8046E: FLdPr Me
  loc_B80471: MemLdRfVar from_stack_1.global_76
  loc_B80474: LdPrVar
  loc_B80476: LateMemCall
  loc_B8047C: FFreeStr var_A8 = ""
  loc_B80483: FFree1Var var_B8 = ""
  loc_B80486: LitVarStr var_94, "  </tr>"
  loc_B8048B: PopAdLdVar
  loc_B8048C: FLdPr Me
  loc_B8048F: MemLdRfVar from_stack_1.global_76
  loc_B80492: LdPrVar
  loc_B80494: LateMemCall
  loc_B8049A: LitVarStr var_94, "</table>"
  loc_B8049F: PopAdLdVar
  loc_B804A0: FLdPr Me
  loc_B804A3: MemLdRfVar from_stack_1.global_76
  loc_B804A6: LdPrVar
  loc_B804A8: LateMemCall
  loc_B804AE: LitVarStr var_94, "<div class=""Normal"">Los recargos por pago fuera de t&eacute;rmino se incluir&aacute;n en la pr&oacute;xima facturaci&oacute;n.</div>"
  loc_B804B3: PopAdLdVar
  loc_B804B4: FLdPr Me
  loc_B804B7: MemLdRfVar from_stack_1.global_76
  loc_B804BA: LdPrVar
  loc_B804BC: LateMemCall
  loc_B804C2: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B804C5: FLdRfVar var_A8
  loc_B804C8: FLdRfVar var_C0
  loc_B804CB: NewIfNullPr clsparagene
  loc_B804CE: from_stack_1v = clsparagene.ObtenerLeyendaBoletos()
  loc_B804D3: ILdRf var_A8
  loc_B804D6: ConcatStr
  loc_B804D7: FStStrNoPop var_BC
  loc_B804DA: LitStr "</div>"
  loc_B804DD: ConcatStr
  loc_B804DE: CVarStr var_B8
  loc_B804E1: PopAdLdVar
  loc_B804E2: FLdPr Me
  loc_B804E5: MemLdRfVar from_stack_1.global_76
  loc_B804E8: LdPrVar
  loc_B804EA: LateMemCall
  loc_B804F0: FFreeStr var_A8 = ""
  loc_B804F7: FFree1Var var_B8 = ""
  loc_B804FA: LitStr " SELECT CONCAT('LA PERSONA POSEE EXPEDIENTE: ',' ', replace(Expediente,'-','/'),' ', 'CON CAUSA: ', Causa) Detalle"
  loc_B804FD: LitStr " FROM expeinmu WHERE CodiOfic = "
  loc_B80500: ConcatStr
  loc_B80501: FStStrNoPop var_A8
  loc_B80504: LitI4 1
  loc_B80509: FLdPr Me
  loc_B8050C: MemLdStr global_116
  loc_B8050F: Ary1LdPr
  loc_B80510: MemLdStr global_124
  loc_B80513: ConcatStr
  loc_B80514: FStStrNoPop var_BC
  loc_B80517: LitStr " AND CodiInmu = '"
  loc_B8051A: ConcatStr
  loc_B8051B: FStStrNoPop var_C4
  loc_B8051E: LitI4 1
  loc_B80523: FLdPr Me
  loc_B80526: MemLdStr global_116
  loc_B80529: Ary1LdPr
  loc_B8052A: MemLdStr global_40
  loc_B8052D: ConcatStr
  loc_B8052E: FStStrNoPop var_C8
  loc_B80531: LitStr "' AND Afectadeuda = 1"
  loc_B80534: ConcatStr
  loc_B80535: FStStrNoPop var_CC
  loc_B80538: FLdPr Me
  loc_B8053B: MemLdRfVar from_stack_1.global_108
  loc_B8053E: NewIfNullPr clsctacte
  loc_B80541: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B80546: FFreeStr var_A8 = "": var_BC = "": var_C4 = "": var_C8 = ""
  loc_B80553: FLdRfVar var_D0
  loc_B80556: FLdPr Me
  loc_B80559: MemLdRfVar from_stack_1.global_108
  loc_B8055C: NewIfNullPr clsctacte
  loc_B8055F: from_stack_1 = clsctacte.RecordCount
  loc_B80564: ILdRf var_D0
  loc_B80567: LitI4 0
  loc_B8056C: GtI4
  loc_B8056D: BranchF loc_B80615
  loc_B80570: FLdPr Me
  loc_B80573: MemLdRfVar from_stack_1.global_108
  loc_B80576: NewIfNullPr clsctacte
  loc_B80579: Call clsctacte.MoveFirst()
  loc_B8057E: FLdRfVar var_D2
  loc_B80581: FLdPr Me
  loc_B80584: MemLdRfVar from_stack_1.global_108
  loc_B80587: NewIfNullPr clsctacte
  loc_B8058A: from_stack_1 = clsctacte.EOF
  loc_B8058F: FLdI2 var_D2
  loc_B80592: NotI4
  loc_B80593: BranchF loc_B80615
  loc_B80596: LitVarStr var_A4, "<div class=""Normal"" align=""justify"">"
  loc_B8059B: FLdRfVar var_B8
  loc_B8059E: FLdRfVar var_E0
  loc_B805A1: LitVarStr var_94, "Detalle"
  loc_B805A6: PopAdLdVar
  loc_B805A7: FLdRfVar var_DC
  loc_B805AA: FLdRfVar var_D8
  loc_B805AD: FLdPr Me
  loc_B805B0: MemLdRfVar from_stack_1.global_108
  loc_B805B3: NewIfNullPr clsctacte
  loc_B805B6: from_stack_1v = clsctacte.RsFrmGet()
  loc_B805BB: FLdPr var_D8
  loc_B805BE:  = Me.Fields
  loc_B805C3: FLdPr var_DC
  loc_B805C6: from_stack_2 = Me.Item(from_stack_1)
  loc_B805CB: FLdPr var_E0
  loc_B805CE:  = Me.Value
  loc_B805D3: FLdRfVar var_B8
  loc_B805D6: ConcatVar var_F0
  loc_B805DA: LitVarStr var_100, "</div>"
  loc_B805DF: ConcatVar var_110
  loc_B805E3: PopAdLdVar
  loc_B805E4: FLdPr Me
  loc_B805E7: MemLdRfVar from_stack_1.global_76
  loc_B805EA: LdPrVar
  loc_B805EC: LateMemCall
  loc_B805F2: FFreeAd var_D8 = "": var_DC = ""
  loc_B805FB: FFreeVar var_B8 = "": var_F0 = ""
  loc_B80604: FLdPr Me
  loc_B80607: MemLdRfVar from_stack_1.global_108
  loc_B8060A: NewIfNullPr clsctacte
  loc_B8060D: Call clsctacte.MoveSiguiente()
  loc_B80612: Branch loc_B8057E
  loc_B80615: FLdPr Me
  loc_B80618: MemLdStr sImprimirApremioPendiente
  loc_B8061B: LitStr vbNullString
  loc_B8061E: NeStr
  loc_B80620: BranchF loc_B8064C
  loc_B80623: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B80626: FLdPr Me
  loc_B80629: MemLdStr sImprimirApremioPendiente
  loc_B8062C: ConcatStr
  loc_B8062D: FStStrNoPop var_A8
  loc_B80630: LitStr "</div>"
  loc_B80633: ConcatStr
  loc_B80634: CVarStr var_B8
  loc_B80637: PopAdLdVar
  loc_B80638: FLdPr Me
  loc_B8063B: MemLdRfVar from_stack_1.global_76
  loc_B8063E: LdPrVar
  loc_B80640: LateMemCall
  loc_B80646: FFree1Str var_A8
  loc_B80649: FFree1Var var_B8 = ""
  loc_B8064C: FLdPr Me
  loc_B8064F: MemLdStr sImprimirApremioInhibido
  loc_B80652: LitStr vbNullString
  loc_B80655: NeStr
  loc_B80657: BranchF loc_B80683
  loc_B8065A: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B8065D: FLdPr Me
  loc_B80660: MemLdStr sImprimirApremioInhibido
  loc_B80663: ConcatStr
  loc_B80664: FStStrNoPop var_A8
  loc_B80667: LitStr "</div>"
  loc_B8066A: ConcatStr
  loc_B8066B: CVarStr var_B8
  loc_B8066E: PopAdLdVar
  loc_B8066F: FLdPr Me
  loc_B80672: MemLdRfVar from_stack_1.global_76
  loc_B80675: LdPrVar
  loc_B80677: LateMemCall
  loc_B8067D: FFree1Str var_A8
  loc_B80680: FFree1Var var_B8 = ""
  loc_B80683: FLdPr Me
  loc_B80686: MemLdStr sImprimirApremioEmbargo
  loc_B80689: LitStr vbNullString
  loc_B8068C: NeStr
  loc_B8068E: BranchF loc_B806BA
  loc_B80691: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B80694: FLdPr Me
  loc_B80697: MemLdStr sImprimirApremioEmbargo
  loc_B8069A: ConcatStr
  loc_B8069B: FStStrNoPop var_A8
  loc_B8069E: LitStr "</div>"
  loc_B806A1: ConcatStr
  loc_B806A2: CVarStr var_B8
  loc_B806A5: PopAdLdVar
  loc_B806A6: FLdPr Me
  loc_B806A9: MemLdRfVar from_stack_1.global_76
  loc_B806AC: LdPrVar
  loc_B806AE: LateMemCall
  loc_B806B4: FFree1Str var_A8
  loc_B806B7: FFree1Var var_B8 = ""
  loc_B806BA: LitVarStr var_94, "</td>"
  loc_B806BF: PopAdLdVar
  loc_B806C0: FLdPr Me
  loc_B806C3: MemLdRfVar from_stack_1.global_76
  loc_B806C6: LdPrVar
  loc_B806C8: LateMemCall
  loc_B806CE: LitVarStr var_94, "</tr></table><hr>"
  loc_B806D3: PopAdLdVar
  loc_B806D4: FLdPr Me
  loc_B806D7: MemLdRfVar from_stack_1.global_76
  loc_B806DA: LdPrVar
  loc_B806DC: LateMemCall
  loc_B806E2: ExitProcHresult
End Function

Private Function Proc_163_46_B3BAC8() 'B3BAC8
  'Data Table: 4DE7C8
  loc_B3B7A0: LitI4 1
  loc_B3B7A5: FLdPr Me
  loc_B3B7A8: MemLdStr global_116
  loc_B3B7AB: Ary1LdPr
  loc_B3B7AC: MemLdStr global_140
  loc_B3B7AF: LitStr vbNullString
  loc_B3B7B2: NeStr
  loc_B3B7B4: BranchF loc_B3B846
  loc_B3B7B7: LitVarStr var_94, "  <tr>"
  loc_B3B7BC: PopAdLdVar
  loc_B3B7BD: FLdPr Me
  loc_B3B7C0: MemLdRfVar from_stack_1.global_76
  loc_B3B7C3: LdPrVar
  loc_B3B7C5: LateMemCall
  loc_B3B7CB: LitStr "    <td colspan=""5"" align=""right"" valign=""top""><strong>APREMIO ("
  loc_B3B7CE: LitI4 1
  loc_B3B7D3: FLdPr Me
  loc_B3B7D6: MemLdStr global_116
  loc_B3B7D9: Ary1LdPr
  loc_B3B7DA: MemLdStr global_144
  loc_B3B7DD: ConcatStr
  loc_B3B7DE: FStStrNoPop var_A8
  loc_B3B7E1: LitStr "):</strong></td>"
  loc_B3B7E4: ConcatStr
  loc_B3B7E5: CVarStr var_B8
  loc_B3B7E8: PopAdLdVar
  loc_B3B7E9: FLdPr Me
  loc_B3B7EC: MemLdRfVar from_stack_1.global_76
  loc_B3B7EF: LdPrVar
  loc_B3B7F1: LateMemCall
  loc_B3B7F7: FFree1Str var_A8
  loc_B3B7FA: FFree1Var var_B8 = ""
  loc_B3B7FD: LitStr vbNullString
  loc_B3B800: LitI2_Byte 0
  loc_B3B802: LitI2_Byte 0
  loc_B3B804: LitI2_Byte 0
  loc_B3B806: LitStr "right"
  loc_B3B809: LitI4 1
  loc_B3B80E: FLdPr Me
  loc_B3B811: MemLdStr global_116
  loc_B3B814: Ary1LdPr
  loc_B3B815: MemLdStr global_140
  loc_B3B818: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3B81D: CVarStr var_B8
  loc_B3B820: PopAdLdVar
  loc_B3B821: FLdPr Me
  loc_B3B824: MemLdRfVar from_stack_1.global_76
  loc_B3B827: LdPrVar
  loc_B3B829: LateMemCall
  loc_B3B82F: FFree1Var var_B8 = ""
  loc_B3B832: LitVarStr var_94, "  </tr>"
  loc_B3B837: PopAdLdVar
  loc_B3B838: FLdPr Me
  loc_B3B83B: MemLdRfVar from_stack_1.global_76
  loc_B3B83E: LdPrVar
  loc_B3B840: LateMemCall
  loc_B3B846: FLdPr Me
  loc_B3B849: MemLdStr DetaDeva
  loc_B3B84C: LitStr vbNullString
  loc_B3B84F: NeStr
  loc_B3B851: BranchF loc_B3B8AF
  loc_B3B854: LitVarStr var_94, "  <tr>"
  loc_B3B859: PopAdLdVar
  loc_B3B85A: FLdPr Me
  loc_B3B85D: MemLdRfVar from_stack_1.global_76
  loc_B3B860: LdPrVar
  loc_B3B862: LateMemCall
  loc_B3B868: LitStr "    <td colspan=""6"" align=""justify"" valign=""top"">Detalle: "
  loc_B3B86B: FLdPr Me
  loc_B3B86E: MemLdStr DetaDeva
  loc_B3B871: ConcatStr
  loc_B3B872: FStStrNoPop var_A8
  loc_B3B875: LitStr "</td>"
  loc_B3B878: ConcatStr
  loc_B3B879: CVarStr var_B8
  loc_B3B87C: PopAdLdVar
  loc_B3B87D: FLdPr Me
  loc_B3B880: MemLdRfVar from_stack_1.global_76
  loc_B3B883: LdPrVar
  loc_B3B885: LateMemCall
  loc_B3B88B: FFree1Str var_A8
  loc_B3B88E: FFree1Var var_B8 = ""
  loc_B3B891: LitVarStr var_94, "  </tr>"
  loc_B3B896: PopAdLdVar
  loc_B3B897: FLdPr Me
  loc_B3B89A: MemLdRfVar from_stack_1.global_76
  loc_B3B89D: LdPrVar
  loc_B3B89F: LateMemCall
  loc_B3B8A5: LitStr vbNullString
  loc_B3B8A8: FLdPr Me
  loc_B3B8AB: MemStStrCopy
  loc_B3B8AF: LitVarStr var_94, "  <tr>"
  loc_B3B8B4: PopAdLdVar
  loc_B3B8B5: FLdPr Me
  loc_B3B8B8: MemLdRfVar from_stack_1.global_76
  loc_B3B8BB: LdPrVar
  loc_B3B8BD: LateMemCall
  loc_B3B8C3: LitVarStr var_94, "    <td colspan=""2"" align=""center"" valign=""top"" class=""Encabezado"">TOTALES:</td>"
  loc_B3B8C8: PopAdLdVar
  loc_B3B8C9: FLdPr Me
  loc_B3B8CC: MemLdRfVar from_stack_1.global_76
  loc_B3B8CF: LdPrVar
  loc_B3B8D1: LateMemCall
  loc_B3B8D7: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B3B8DA: LitI4 1
  loc_B3B8DF: FLdPr Me
  loc_B3B8E2: MemLdStr global_140
  loc_B3B8E5: Ary1LdPr
  loc_B3B8E6: MemLdStr global_12
  loc_B3B8E9: ConcatStr
  loc_B3B8EA: FStStrNoPop var_A8
  loc_B3B8ED: LitStr "</td>"
  loc_B3B8F0: ConcatStr
  loc_B3B8F1: CVarStr var_B8
  loc_B3B8F4: PopAdLdVar
  loc_B3B8F5: FLdPr Me
  loc_B3B8F8: MemLdRfVar from_stack_1.global_76
  loc_B3B8FB: LdPrVar
  loc_B3B8FD: LateMemCall
  loc_B3B903: FFree1Str var_A8
  loc_B3B906: FFree1Var var_B8 = ""
  loc_B3B909: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B3B90C: LitI4 1
  loc_B3B911: FLdPr Me
  loc_B3B914: MemLdStr global_140
  loc_B3B917: Ary1LdPr
  loc_B3B918: MemLdStr global_16
  loc_B3B91B: ConcatStr
  loc_B3B91C: FStStrNoPop var_A8
  loc_B3B91F: LitStr "</td>"
  loc_B3B922: ConcatStr
  loc_B3B923: CVarStr var_B8
  loc_B3B926: PopAdLdVar
  loc_B3B927: FLdPr Me
  loc_B3B92A: MemLdRfVar from_stack_1.global_76
  loc_B3B92D: LdPrVar
  loc_B3B92F: LateMemCall
  loc_B3B935: FFree1Str var_A8
  loc_B3B938: FFree1Var var_B8 = ""
  loc_B3B93B: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B3B93E: LitI4 1
  loc_B3B943: FLdPr Me
  loc_B3B946: MemLdStr global_140
  loc_B3B949: Ary1LdPr
  loc_B3B94A: MemLdStr global_20
  loc_B3B94D: ConcatStr
  loc_B3B94E: FStStrNoPop var_A8
  loc_B3B951: LitStr "</td>"
  loc_B3B954: ConcatStr
  loc_B3B955: CVarStr var_B8
  loc_B3B958: PopAdLdVar
  loc_B3B959: FLdPr Me
  loc_B3B95C: MemLdRfVar from_stack_1.global_76
  loc_B3B95F: LdPrVar
  loc_B3B961: LateMemCall
  loc_B3B967: FFree1Str var_A8
  loc_B3B96A: FFree1Var var_B8 = ""
  loc_B3B96D: LitStr "    <td align=""right"" class=""Total"">"
  loc_B3B970: LitI4 1
  loc_B3B975: FLdPr Me
  loc_B3B978: MemLdStr global_140
  loc_B3B97B: Ary1LdPr
  loc_B3B97C: MemLdStr global_24
  loc_B3B97F: ConcatStr
  loc_B3B980: FStStrNoPop var_A8
  loc_B3B983: LitStr "</td>"
  loc_B3B986: ConcatStr
  loc_B3B987: CVarStr var_B8
  loc_B3B98A: PopAdLdVar
  loc_B3B98B: FLdPr Me
  loc_B3B98E: MemLdRfVar from_stack_1.global_76
  loc_B3B991: LdPrVar
  loc_B3B993: LateMemCall
  loc_B3B999: FFree1Str var_A8
  loc_B3B99C: FFree1Var var_B8 = ""
  loc_B3B99F: LitVarStr var_94, "  </tr>"
  loc_B3B9A4: PopAdLdVar
  loc_B3B9A5: FLdPr Me
  loc_B3B9A8: MemLdRfVar from_stack_1.global_76
  loc_B3B9AB: LdPrVar
  loc_B3B9AD: LateMemCall
  loc_B3B9B3: LitVarStr var_94, "  <tr>"
  loc_B3B9B8: PopAdLdVar
  loc_B3B9B9: FLdPr Me
  loc_B3B9BC: MemLdRfVar from_stack_1.global_76
  loc_B3B9BF: LdPrVar
  loc_B3B9C1: LateMemCall
  loc_B3B9C7: LitStr "    <td colspan=""6"" valign=""top"">SON PESOS: <strong>"
  loc_B3B9CA: LitI4 1
  loc_B3B9CF: FLdPr Me
  loc_B3B9D2: MemLdStr global_140
  loc_B3B9D5: Ary1LdPr
  loc_B3B9D6: MemLdStr global_24
  loc_B3B9D9: CR8Str
  loc_B3B9DB: PopFPR8
  loc_B3B9DC: ImpAdCallI2 Proc_272_28_AB2798(, )
  loc_B3B9E1: FStStrNoPop var_A8
  loc_B3B9E4: ConcatStr
  loc_B3B9E5: FStStrNoPop var_BC
  loc_B3B9E8: LitStr ".---</strong></td>"
  loc_B3B9EB: ConcatStr
  loc_B3B9EC: CVarStr var_B8
  loc_B3B9EF: PopAdLdVar
  loc_B3B9F0: FLdPr Me
  loc_B3B9F3: MemLdRfVar from_stack_1.global_76
  loc_B3B9F6: LdPrVar
  loc_B3B9F8: LateMemCall
  loc_B3B9FE: FFreeStr var_A8 = ""
  loc_B3BA05: FFree1Var var_B8 = ""
  loc_B3BA08: LitVarStr var_94, "  </tr>"
  loc_B3BA0D: PopAdLdVar
  loc_B3BA0E: FLdPr Me
  loc_B3BA11: MemLdRfVar from_stack_1.global_76
  loc_B3BA14: LdPrVar
  loc_B3BA16: LateMemCall
  loc_B3BA1C: LitVarStr var_94, "  <tr>"
  loc_B3BA21: PopAdLdVar
  loc_B3BA22: FLdPr Me
  loc_B3BA25: MemLdRfVar from_stack_1.global_76
  loc_B3BA28: LdPrVar
  loc_B3BA2A: LateMemCall
  loc_B3BA30: LitStr "    <td colspan=""6"" align=""justify"" valign=""top""><strong>Observaciones:</strong> "
  loc_B3BA33: LitI4 1
  loc_B3BA38: FLdPr Me
  loc_B3BA3B: MemLdStr global_116
  loc_B3BA3E: Ary1LdPr
  loc_B3BA3F: MemLdStr global_152
  loc_B3BA42: ConcatStr
  loc_B3BA43: FStStrNoPop var_A8
  loc_B3BA46: LitStr "</td>"
  loc_B3BA49: ConcatStr
  loc_B3BA4A: CVarStr var_B8
  loc_B3BA4D: PopAdLdVar
  loc_B3BA4E: FLdPr Me
  loc_B3BA51: MemLdRfVar from_stack_1.global_76
  loc_B3BA54: LdPrVar
  loc_B3BA56: LateMemCall
  loc_B3BA5C: FFree1Str var_A8
  loc_B3BA5F: FFree1Var var_B8 = ""
  loc_B3BA62: LitVarStr var_94, "  </tr>"
  loc_B3BA67: PopAdLdVar
  loc_B3BA68: FLdPr Me
  loc_B3BA6B: MemLdRfVar from_stack_1.global_76
  loc_B3BA6E: LdPrVar
  loc_B3BA70: LateMemCall
  loc_B3BA76: LitVarStr var_94, "</table>"
  loc_B3BA7B: PopAdLdVar
  loc_B3BA7C: FLdPr Me
  loc_B3BA7F: MemLdRfVar from_stack_1.global_76
  loc_B3BA82: LdPrVar
  loc_B3BA84: LateMemCall
  loc_B3BA8A: LitVarStr var_94, "<div class=""Normal"">Los recargos por pago fuera de t&eacute;rmino se incluir&aacute;n en la pr&oacute;xima facturaci&oacute;n.</div>"
  loc_B3BA8F: PopAdLdVar
  loc_B3BA90: FLdPr Me
  loc_B3BA93: MemLdRfVar from_stack_1.global_76
  loc_B3BA96: LdPrVar
  loc_B3BA98: LateMemCall
  loc_B3BA9E: LitVarStr var_94, "</td>"
  loc_B3BAA3: PopAdLdVar
  loc_B3BAA4: FLdPr Me
  loc_B3BAA7: MemLdRfVar from_stack_1.global_76
  loc_B3BAAA: LdPrVar
  loc_B3BAAC: LateMemCall
  loc_B3BAB2: LitVarStr var_94, "</tr></table><hr>"
  loc_B3BAB7: PopAdLdVar
  loc_B3BAB8: FLdPr Me
  loc_B3BABB: MemLdRfVar from_stack_1.global_76
  loc_B3BABE: LdPrVar
  loc_B3BAC0: LateMemCall
  loc_B3BAC6: ExitProcHresult
End Function

Private Function Proc_163_47_B9B6A0() 'B9B6A0
  'Data Table: 4DE7C8
  loc_B9B10C: LitI4 1
  loc_B9B111: FLdPr Me
  loc_B9B114: MemLdStr global_116
  loc_B9B117: AryLock
  loc_B9B11A: Ary1LdRf
  loc_B9B11B: FStR4 var_8C
  loc_B9B11E: LitVarStr var_9C, "<table align=""center"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_B9B123: PopAdLdVar
  loc_B9B124: FLdPr Me
  loc_B9B127: MemLdRfVar from_stack_1.global_76
  loc_B9B12A: LdPrVar
  loc_B9B12C: LateMemCall
  loc_B9B132: LitVarStr var_9C, "  <tr>"
  loc_B9B137: PopAdLdVar
  loc_B9B138: FLdPr Me
  loc_B9B13B: MemLdRfVar from_stack_1.global_76
  loc_B9B13E: LdPrVar
  loc_B9B140: LateMemCall
  loc_B9B146: LitVarStr var_9C, "    <th valign=""top"">"
  loc_B9B14B: PopAdLdVar
  loc_B9B14C: FLdPr Me
  loc_B9B14F: MemLdRfVar from_stack_1.global_76
  loc_B9B152: LdPrVar
  loc_B9B154: LateMemCall
  loc_B9B15A: LitVarStr var_9C, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B9B15F: PopAdLdVar
  loc_B9B160: FLdPr Me
  loc_B9B163: MemLdRfVar from_stack_1.global_76
  loc_B9B166: LdPrVar
  loc_B9B168: LateMemCall
  loc_B9B16E: LitVarStr var_9C, "      <tr>"
  loc_B9B173: PopAdLdVar
  loc_B9B174: FLdPr Me
  loc_B9B177: MemLdRfVar from_stack_1.global_76
  loc_B9B17A: LdPrVar
  loc_B9B17C: LateMemCall
  loc_B9B182: LitVarStr var_AC, "        <td colspan=""8"" align=""center"" class=""NombreMunicipioBloqueFin"">"
  loc_B9B187: LitVarStr var_9C, "Municipalidad de Guaymallén"
  loc_B9B18C: FStVarCopyObj var_BC
  loc_B9B18F: FLdRfVar var_BC
  loc_B9B192: FLdRfVar var_CC
  loc_B9B195: ImpAdCallFPR4  = Ucase()
  loc_B9B19A: FLdRfVar var_CC
  loc_B9B19D: ConcatVar var_DC
  loc_B9B1A1: LitVarStr var_EC, " - "
  loc_B9B1A6: ConcatVar var_FC
  loc_B9B1AA: LitVarStr var_10C, "Dirección de Rentas"
  loc_B9B1AF: ConcatVar var_11C
  loc_B9B1B3: LitVarStr var_12C, "</td>"
  loc_B9B1B8: ConcatVar var_13C
  loc_B9B1BC: PopAdLdVar
  loc_B9B1BD: FLdPr Me
  loc_B9B1C0: MemLdRfVar from_stack_1.global_76
  loc_B9B1C3: LdPrVar
  loc_B9B1C5: LateMemCall
  loc_B9B1CB: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_B9B1DA: LitVarStr var_9C, "        </tr>"
  loc_B9B1DF: PopAdLdVar
  loc_B9B1E0: FLdPr Me
  loc_B9B1E3: MemLdRfVar from_stack_1.global_76
  loc_B9B1E6: LdPrVar
  loc_B9B1E8: LateMemCall
  loc_B9B1EE: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B9B1F3: PopAdLdVar
  loc_B9B1F4: FLdPr Me
  loc_B9B1F7: MemLdRfVar from_stack_1.global_76
  loc_B9B1FA: LdPrVar
  loc_B9B1FC: LateMemCall
  loc_B9B202: LitVarStr var_9C, "        <td colspan=""8"">APELLIDO Y NOMBRE</td>"
  loc_B9B207: PopAdLdVar
  loc_B9B208: FLdPr Me
  loc_B9B20B: MemLdRfVar from_stack_1.global_76
  loc_B9B20E: LdPrVar
  loc_B9B210: LateMemCall
  loc_B9B216: LitVarStr var_9C, "        </tr>"
  loc_B9B21B: PopAdLdVar
  loc_B9B21C: FLdPr Me
  loc_B9B21F: MemLdRfVar from_stack_1.global_76
  loc_B9B222: LdPrVar
  loc_B9B224: LateMemCall
  loc_B9B22A: LitVarStr var_9C, "      <tr>"
  loc_B9B22F: PopAdLdVar
  loc_B9B230: FLdPr Me
  loc_B9B233: MemLdRfVar from_stack_1.global_76
  loc_B9B236: LdPrVar
  loc_B9B238: LateMemCall
  loc_B9B23E: LitStr "        <td align=""left"" colspan=""8"" class=""NormalBloqueFinGrande"">"
  loc_B9B241: FMemLdR4 var_8C(4)
  loc_B9B246: ConcatStr
  loc_B9B247: FStStrNoPop var_150
  loc_B9B24A: LitStr "</td>"
  loc_B9B24D: ConcatStr
  loc_B9B24E: CVarStr var_BC
  loc_B9B251: PopAdLdVar
  loc_B9B252: FLdPr Me
  loc_B9B255: MemLdRfVar from_stack_1.global_76
  loc_B9B258: LdPrVar
  loc_B9B25A: LateMemCall
  loc_B9B260: FFree1Str var_150
  loc_B9B263: FFree1Var var_BC = ""
  loc_B9B266: LitVarStr var_9C, "        </tr>"
  loc_B9B26B: PopAdLdVar
  loc_B9B26C: FLdPr Me
  loc_B9B26F: MemLdRfVar from_stack_1.global_76
  loc_B9B272: LdPrVar
  loc_B9B274: LateMemCall
  loc_B9B27A: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B9B27F: PopAdLdVar
  loc_B9B280: FLdPr Me
  loc_B9B283: MemLdRfVar from_stack_1.global_76
  loc_B9B286: LdPrVar
  loc_B9B288: LateMemCall
  loc_B9B28E: LitVarStr var_9C, "        <td width=""16" & Chr(37) & """>USUARIO</td>"
  loc_B9B293: PopAdLdVar
  loc_B9B294: FLdPr Me
  loc_B9B297: MemLdRfVar from_stack_1.global_76
  loc_B9B29A: LdPrVar
  loc_B9B29C: LateMemCall
  loc_B9B2A2: LitVarStr var_10C, "        <td width=""16" & Chr(37) & """>"
  loc_B9B2A7: LitVarStr var_EC, "OFICINA"
  loc_B9B2AC: FStVarCopyObj var_CC
  loc_B9B2AF: FLdRfVar var_CC
  loc_B9B2B2: LitVarStr var_AC, "CONCEPTO"
  loc_B9B2B7: FStVarCopyObj var_BC
  loc_B9B2BA: FLdRfVar var_BC
  loc_B9B2BD: FLdPr Me
  loc_B9B2C0: MemLdI2 global_122
  loc_B9B2C3: LitI2_Byte 1
  loc_B9B2C5: EqI2
  loc_B9B2C6: FLdPr Me
  loc_B9B2C9: MemLdUI1 global_120
  loc_B9B2CD: CI2UI1
  loc_B9B2CF: LitI2_Byte 6
  loc_B9B2D1: NeI2
  loc_B9B2D2: AndI4
  loc_B9B2D3: CVarBoolI2 var_9C
  loc_B9B2D7: FLdRfVar var_DC
  loc_B9B2DA: ImpAdCallFPR4  = IIf(, , )
  loc_B9B2DF: FLdRfVar var_DC
  loc_B9B2E2: ConcatVar var_FC
  loc_B9B2E6: LitVarStr var_12C, "</td>"
  loc_B9B2EB: ConcatVar var_11C
  loc_B9B2EF: PopAdLdVar
  loc_B9B2F0: FLdPr Me
  loc_B9B2F3: MemLdRfVar from_stack_1.global_76
  loc_B9B2F6: LdPrVar
  loc_B9B2F8: LateMemCall
  loc_B9B2FE: FFreeVar var_9C = "": var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B9B30D: LitVarStr var_9C, "        <td width=""16" & Chr(37) & """>CUENTA</td>"
  loc_B9B312: PopAdLdVar
  loc_B9B313: FLdPr Me
  loc_B9B316: MemLdRfVar from_stack_1.global_76
  loc_B9B319: LdPrVar
  loc_B9B31B: LateMemCall
  loc_B9B321: LitVarStr var_9C, "        <td width=""16" & Chr(37) & """>BOLETO</td>"
  loc_B9B326: PopAdLdVar
  loc_B9B327: FLdPr Me
  loc_B9B32A: MemLdRfVar from_stack_1.global_76
  loc_B9B32D: LdPrVar
  loc_B9B32F: LateMemCall
  loc_B9B335: LitVarStr var_9C, "        <td width=""16" & Chr(37) & """>VENCIMIENTO</td>"
  loc_B9B33A: PopAdLdVar
  loc_B9B33B: FLdPr Me
  loc_B9B33E: MemLdRfVar from_stack_1.global_76
  loc_B9B341: LdPrVar
  loc_B9B343: LateMemCall
  loc_B9B349: LitVarStr var_9C, "        <td>IMPORTE</td>"
  loc_B9B34E: PopAdLdVar
  loc_B9B34F: FLdPr Me
  loc_B9B352: MemLdRfVar from_stack_1.global_76
  loc_B9B355: LdPrVar
  loc_B9B357: LateMemCall
  loc_B9B35D: LitVarStr var_9C, "      </tr>"
  loc_B9B362: PopAdLdVar
  loc_B9B363: FLdPr Me
  loc_B9B366: MemLdRfVar from_stack_1.global_76
  loc_B9B369: LdPrVar
  loc_B9B36B: LateMemCall
  loc_B9B371: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_B9B376: PopAdLdVar
  loc_B9B377: FLdPr Me
  loc_B9B37A: MemLdRfVar from_stack_1.global_76
  loc_B9B37D: LdPrVar
  loc_B9B37F: LateMemCall
  loc_B9B385: LitStr "        <td align=""center"">"
  loc_B9B388: FMemLdR4 var_8C(112)
  loc_B9B38D: ConcatStr
  loc_B9B38E: FStStrNoPop var_150
  loc_B9B391: LitStr "</td>"
  loc_B9B394: ConcatStr
  loc_B9B395: CVarStr var_BC
  loc_B9B398: PopAdLdVar
  loc_B9B399: FLdPr Me
  loc_B9B39C: MemLdRfVar from_stack_1.global_76
  loc_B9B39F: LdPrVar
  loc_B9B3A1: LateMemCall
  loc_B9B3A7: FFree1Str var_150
  loc_B9B3AA: FFree1Var var_BC = ""
  loc_B9B3AD: FLdPr Me
  loc_B9B3B0: MemLdI2 global_122
  loc_B9B3B3: LitI2_Byte 1
  loc_B9B3B5: EqI2
  loc_B9B3B6: FLdPr Me
  loc_B9B3B9: MemLdUI1 global_120
  loc_B9B3BD: CI2UI1
  loc_B9B3BF: LitI2_Byte 6
  loc_B9B3C1: NeI2
  loc_B9B3C2: AndI4
  loc_B9B3C3: BranchF loc_B9B40D
  loc_B9B3C6: LitStr "        <td align=""right"">"
  loc_B9B3C9: LitI4 1
  loc_B9B3CE: LitI4 1
  loc_B9B3D3: LitI4 1
  loc_B9B3D8: FLdPr Me
  loc_B9B3DB: MemLdStr global_116
  loc_B9B3DE: Ary1LdPr
  loc_B9B3DF: MemLdStr global_188
  loc_B9B3E2: Ary1LdPr
  loc_B9B3E3: MemLdStr global_0
  loc_B9B3E6: Ary1LdPr
  loc_B9B3E7: MemLdStr global_0
  loc_B9B3EA: ConcatStr
  loc_B9B3EB: FStStrNoPop var_150
  loc_B9B3EE: LitStr "</td>"
  loc_B9B3F1: ConcatStr
  loc_B9B3F2: CVarStr var_BC
  loc_B9B3F5: PopAdLdVar
  loc_B9B3F6: FLdPr Me
  loc_B9B3F9: MemLdRfVar from_stack_1.global_76
  loc_B9B3FC: LdPrVar
  loc_B9B3FE: LateMemCall
  loc_B9B404: FFree1Str var_150
  loc_B9B407: FFree1Var var_BC = ""
  loc_B9B40A: Branch loc_B9B435
  loc_B9B40D: LitStr "        <td align=""right"">"
  loc_B9B410: FMemLdR4 var_8C(124)
  loc_B9B415: ConcatStr
  loc_B9B416: FStStrNoPop var_150
  loc_B9B419: LitStr "</td>"
  loc_B9B41C: ConcatStr
  loc_B9B41D: CVarStr var_BC
  loc_B9B420: PopAdLdVar
  loc_B9B421: FLdPr Me
  loc_B9B424: MemLdRfVar from_stack_1.global_76
  loc_B9B427: LdPrVar
  loc_B9B429: LateMemCall
  loc_B9B42F: FFree1Str var_150
  loc_B9B432: FFree1Var var_BC = ""
  loc_B9B435: LitStr "        <td align=""right"" class=""NormalBloqueFinGrande"">"
  loc_B9B438: FMemLdR4 var_8C(40)
  loc_B9B43D: ConcatStr
  loc_B9B43E: FStStrNoPop var_150
  loc_B9B441: LitStr "</td>"
  loc_B9B444: ConcatStr
  loc_B9B445: CVarStr var_BC
  loc_B9B448: PopAdLdVar
  loc_B9B449: FLdPr Me
  loc_B9B44C: MemLdRfVar from_stack_1.global_76
  loc_B9B44F: LdPrVar
  loc_B9B451: LateMemCall
  loc_B9B457: FFree1Str var_150
  loc_B9B45A: FFree1Var var_BC = ""
  loc_B9B45D: LitStr "        <td align=""right"">"
  loc_B9B460: FLdPr Me
  loc_B9B463: VCallAd Control_ID_PeriBoleMsk
  loc_B9B466: FStAdFunc var_154
  loc_B9B469: FLdPr var_154
  loc_B9B46C: LateIdLdVar var_BC DispID_0 0
  loc_B9B473: CStrVarTmp
  loc_B9B474: FStStrNoPop var_150
  loc_B9B477: ConcatStr
  loc_B9B478: FStStrNoPop var_158
  loc_B9B47B: LitStr "/"
  loc_B9B47E: ConcatStr
  loc_B9B47F: FStStrNoPop var_160
  loc_B9B482: FLdPr Me
  loc_B9B485: VCallAd Control_ID_NumeBoleMsk
  loc_B9B488: FStAdFunc var_15C
  loc_B9B48B: FLdPr var_15C
  loc_B9B48E: LateIdLdVar var_CC DispID_0 0
  loc_B9B495: CStrVarTmp
  loc_B9B496: FStStrNoPop var_164
  loc_B9B499: ConcatStr
  loc_B9B49A: FStStrNoPop var_168
  loc_B9B49D: LitStr "</td>"
  loc_B9B4A0: ConcatStr
  loc_B9B4A1: CVarStr var_DC
  loc_B9B4A4: PopAdLdVar
  loc_B9B4A5: FLdPr Me
  loc_B9B4A8: MemLdRfVar from_stack_1.global_76
  loc_B9B4AB: LdPrVar
  loc_B9B4AD: LateMemCall
  loc_B9B4B3: FFreeStr var_150 = "": var_158 = "": var_160 = "": var_164 = ""
  loc_B9B4C0: FFreeAd var_154 = ""
  loc_B9B4C7: FFreeVar var_BC = "": var_CC = ""
  loc_B9B4D0: LitStr "        <td align=""center"" class=""Vencimiento"">"
  loc_B9B4D3: FMemLdR4 var_8C(128)
  loc_B9B4D8: ConcatStr
  loc_B9B4D9: FStStrNoPop var_150
  loc_B9B4DC: LitStr "</td>"
  loc_B9B4DF: ConcatStr
  loc_B9B4E0: CVarStr var_BC
  loc_B9B4E3: PopAdLdVar
  loc_B9B4E4: FLdPr Me
  loc_B9B4E7: MemLdRfVar from_stack_1.global_76
  loc_B9B4EA: LdPrVar
  loc_B9B4EC: LateMemCall
  loc_B9B4F2: FFree1Str var_150
  loc_B9B4F5: FFree1Var var_BC = ""
  loc_B9B4F8: LitStr "        <td align=""right"">"
  loc_B9B4FB: FMemLdR4 var_8C(148)
  loc_B9B500: ConcatStr
  loc_B9B501: FStStrNoPop var_150
  loc_B9B504: LitStr "</td>"
  loc_B9B507: ConcatStr
  loc_B9B508: CVarStr var_BC
  loc_B9B50B: PopAdLdVar
  loc_B9B50C: FLdPr Me
  loc_B9B50F: MemLdRfVar from_stack_1.global_76
  loc_B9B512: LdPrVar
  loc_B9B514: LateMemCall
  loc_B9B51A: FFree1Str var_150
  loc_B9B51D: FFree1Var var_BC = ""
  loc_B9B520: LitVarStr var_9C, "      </tr>"
  loc_B9B525: PopAdLdVar
  loc_B9B526: FLdPr Me
  loc_B9B529: MemLdRfVar from_stack_1.global_76
  loc_B9B52C: LdPrVar
  loc_B9B52E: LateMemCall
  loc_B9B534: LitVarStr var_9C, "      <tr align=""left"">"
  loc_B9B539: PopAdLdVar
  loc_B9B53A: FLdPr Me
  loc_B9B53D: MemLdRfVar from_stack_1.global_76
  loc_B9B540: LdPrVar
  loc_B9B542: LateMemCall
  loc_B9B548: LitVarStr var_9C, "          <td height=""85"" colspan=""6"" class=""Normal"">"
  loc_B9B54D: PopAdLdVar
  loc_B9B54E: FLdPr Me
  loc_B9B551: MemLdRfVar from_stack_1.global_76
  loc_B9B554: LdPrVar
  loc_B9B556: LateMemCall
  loc_B9B55C: LitVarStr var_9C, "           <table valign=""middle"" align=""center"">"
  loc_B9B561: PopAdLdVar
  loc_B9B562: FLdPr Me
  loc_B9B565: MemLdRfVar from_stack_1.global_76
  loc_B9B568: LdPrVar
  loc_B9B56A: LateMemCall
  loc_B9B570: LitStr "             <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_B9B573: LitI4 1
  loc_B9B578: LitI4 1
  loc_B9B57D: FLdPr Me
  loc_B9B580: MemLdStr global_116
  loc_B9B583: Ary1LdPr
  loc_B9B584: MemLdStr global_136
  loc_B9B587: Ary1LdI4
  loc_B9B588: ConcatStr
  loc_B9B589: FStStrNoPop var_150
  loc_B9B58C: LitStr "</td><tr>"
  loc_B9B58F: ConcatStr
  loc_B9B590: CVarStr var_BC
  loc_B9B593: PopAdLdVar
  loc_B9B594: FLdPr Me
  loc_B9B597: MemLdRfVar from_stack_1.global_76
  loc_B9B59A: LdPrVar
  loc_B9B59C: LateMemCall
  loc_B9B5A2: FFree1Str var_150
  loc_B9B5A5: FFree1Var var_BC = ""
  loc_B9B5A8: LitStr "             <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_B9B5AB: LitI4 0
  loc_B9B5B0: LitI4 1
  loc_B9B5B5: FLdPr Me
  loc_B9B5B8: MemLdStr global_116
  loc_B9B5BB: Ary1LdPr
  loc_B9B5BC: MemLdStr global_136
  loc_B9B5BF: Ary1LdI4
  loc_B9B5C0: ConcatStr
  loc_B9B5C1: FStStrNoPop var_150
  loc_B9B5C4: LitStr "</td><tr>"
  loc_B9B5C7: ConcatStr
  loc_B9B5C8: CVarStr var_BC
  loc_B9B5CB: PopAdLdVar
  loc_B9B5CC: FLdPr Me
  loc_B9B5CF: MemLdRfVar from_stack_1.global_76
  loc_B9B5D2: LdPrVar
  loc_B9B5D4: LateMemCall
  loc_B9B5DA: FFree1Str var_150
  loc_B9B5DD: FFree1Var var_BC = ""
  loc_B9B5E0: LitVarStr var_9C, "           </table>"
  loc_B9B5E5: PopAdLdVar
  loc_B9B5E6: FLdPr Me
  loc_B9B5E9: MemLdRfVar from_stack_1.global_76
  loc_B9B5EC: LdPrVar
  loc_B9B5EE: LateMemCall
  loc_B9B5F4: LitVarStr var_9C, "          <br><div align=""right"">Sellar al dorso</div></td>"
  loc_B9B5F9: PopAdLdVar
  loc_B9B5FA: FLdPr Me
  loc_B9B5FD: MemLdRfVar from_stack_1.global_76
  loc_B9B600: LdPrVar
  loc_B9B602: LateMemCall
  loc_B9B608: LitVarStr var_9C, "      </tr>"
  loc_B9B60D: PopAdLdVar
  loc_B9B60E: FLdPr Me
  loc_B9B611: MemLdRfVar from_stack_1.global_76
  loc_B9B614: LdPrVar
  loc_B9B616: LateMemCall
  loc_B9B61C: LitVarStr var_9C, "    </table>"
  loc_B9B621: PopAdLdVar
  loc_B9B622: FLdPr Me
  loc_B9B625: MemLdRfVar from_stack_1.global_76
  loc_B9B628: LdPrVar
  loc_B9B62A: LateMemCall
  loc_B9B630: LitVarStr var_9C, "  </th></tr>"
  loc_B9B635: PopAdLdVar
  loc_B9B636: FLdPr Me
  loc_B9B639: MemLdRfVar from_stack_1.global_76
  loc_B9B63C: LdPrVar
  loc_B9B63E: LateMemCall
  loc_B9B644: LitVarStr var_9C, "  <tr>"
  loc_B9B649: PopAdLdVar
  loc_B9B64A: FLdPr Me
  loc_B9B64D: MemLdRfVar from_stack_1.global_76
  loc_B9B650: LdPrVar
  loc_B9B652: LateMemCall
  loc_B9B658: LitVarStr var_9C, "    <td align=""left"" valign=""top"" class=""Normal"">www.infogov.com.ar</td>"
  loc_B9B65D: PopAdLdVar
  loc_B9B65E: FLdPr Me
  loc_B9B661: MemLdRfVar from_stack_1.global_76
  loc_B9B664: LdPrVar
  loc_B9B666: LateMemCall
  loc_B9B66C: LitVarStr var_9C, "  </tr>"
  loc_B9B671: PopAdLdVar
  loc_B9B672: FLdPr Me
  loc_B9B675: MemLdRfVar from_stack_1.global_76
  loc_B9B678: LdPrVar
  loc_B9B67A: LateMemCall
  loc_B9B680: LitVarStr var_9C, "</table>"
  loc_B9B685: PopAdLdVar
  loc_B9B686: FLdPr Me
  loc_B9B689: MemLdRfVar from_stack_1.global_76
  loc_B9B68C: LdPrVar
  loc_B9B68E: LateMemCall
  loc_B9B694: LitI4 0
  loc_B9B699: FStR4 var_8C
  loc_B9B69C: AryUnlock
  loc_B9B69F: ExitProcHresult
End Function

Private Function Proc_163_48_B6B1A0() 'B6B1A0
  'Data Table: 4DE7C8
  loc_B6AD38: LitI4 1
  loc_B6AD3D: FLdPr Me
  loc_B6AD40: MemLdStr global_116
  loc_B6AD43: AryLock
  loc_B6AD46: Ary1LdRf
  loc_B6AD47: FStR4 var_8C
  loc_B6AD4A: LitVarStr var_9C, "<table align=""center"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_B6AD4F: PopAdLdVar
  loc_B6AD50: FLdPr Me
  loc_B6AD53: MemLdRfVar from_stack_1.global_76
  loc_B6AD56: LdPrVar
  loc_B6AD58: LateMemCall
  loc_B6AD5E: LitVarStr var_9C, "  <tr>"
  loc_B6AD63: PopAdLdVar
  loc_B6AD64: FLdPr Me
  loc_B6AD67: MemLdRfVar from_stack_1.global_76
  loc_B6AD6A: LdPrVar
  loc_B6AD6C: LateMemCall
  loc_B6AD72: LitVarStr var_9C, "    <th valign=""top"">"
  loc_B6AD77: PopAdLdVar
  loc_B6AD78: FLdPr Me
  loc_B6AD7B: MemLdRfVar from_stack_1.global_76
  loc_B6AD7E: LdPrVar
  loc_B6AD80: LateMemCall
  loc_B6AD86: LitVarStr var_9C, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B6AD8B: PopAdLdVar
  loc_B6AD8C: FLdPr Me
  loc_B6AD8F: MemLdRfVar from_stack_1.global_76
  loc_B6AD92: LdPrVar
  loc_B6AD94: LateMemCall
  loc_B6AD9A: LitVarStr var_9C, "      <tr>"
  loc_B6AD9F: PopAdLdVar
  loc_B6ADA0: FLdPr Me
  loc_B6ADA3: MemLdRfVar from_stack_1.global_76
  loc_B6ADA6: LdPrVar
  loc_B6ADA8: LateMemCall
  loc_B6ADAE: LitVarStr var_AC, "        <td colspan=""4"" align=""center"" class=""NombreMunicipioBloqueFin"">"
  loc_B6ADB3: LitVarStr var_9C, "Municipalidad de Guaymallén"
  loc_B6ADB8: FStVarCopyObj var_BC
  loc_B6ADBB: FLdRfVar var_BC
  loc_B6ADBE: FLdRfVar var_CC
  loc_B6ADC1: ImpAdCallFPR4  = Ucase()
  loc_B6ADC6: FLdRfVar var_CC
  loc_B6ADC9: ConcatVar var_DC
  loc_B6ADCD: LitVarStr var_EC, " - "
  loc_B6ADD2: ConcatVar var_FC
  loc_B6ADD6: LitVarStr var_10C, "Dirección de Rentas"
  loc_B6ADDB: ConcatVar var_11C
  loc_B6ADDF: LitVarStr var_12C, "</td>"
  loc_B6ADE4: ConcatVar var_13C
  loc_B6ADE8: PopAdLdVar
  loc_B6ADE9: FLdPr Me
  loc_B6ADEC: MemLdRfVar from_stack_1.global_76
  loc_B6ADEF: LdPrVar
  loc_B6ADF1: LateMemCall
  loc_B6ADF7: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_B6AE06: LitVarStr var_9C, "        </tr>"
  loc_B6AE0B: PopAdLdVar
  loc_B6AE0C: FLdPr Me
  loc_B6AE0F: MemLdRfVar from_stack_1.global_76
  loc_B6AE12: LdPrVar
  loc_B6AE14: LateMemCall
  loc_B6AE1A: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B6AE1F: PopAdLdVar
  loc_B6AE20: FLdPr Me
  loc_B6AE23: MemLdRfVar from_stack_1.global_76
  loc_B6AE26: LdPrVar
  loc_B6AE28: LateMemCall
  loc_B6AE2E: LitVarStr var_9C, "        <td colspan=""4"">APELLIDO Y NOMBRE</td>"
  loc_B6AE33: PopAdLdVar
  loc_B6AE34: FLdPr Me
  loc_B6AE37: MemLdRfVar from_stack_1.global_76
  loc_B6AE3A: LdPrVar
  loc_B6AE3C: LateMemCall
  loc_B6AE42: LitVarStr var_9C, "        </tr>"
  loc_B6AE47: PopAdLdVar
  loc_B6AE48: FLdPr Me
  loc_B6AE4B: MemLdRfVar from_stack_1.global_76
  loc_B6AE4E: LdPrVar
  loc_B6AE50: LateMemCall
  loc_B6AE56: LitVarStr var_9C, "      <tr>"
  loc_B6AE5B: PopAdLdVar
  loc_B6AE5C: FLdPr Me
  loc_B6AE5F: MemLdRfVar from_stack_1.global_76
  loc_B6AE62: LdPrVar
  loc_B6AE64: LateMemCall
  loc_B6AE6A: LitStr "        <td colspan=""2"" class=""NormalBloqueFinGrande"">"
  loc_B6AE6D: FMemLdR4 var_8C(4)
  loc_B6AE72: ConcatStr
  loc_B6AE73: FStStrNoPop var_150
  loc_B6AE76: LitStr "</td>"
  loc_B6AE79: ConcatStr
  loc_B6AE7A: CVarStr var_BC
  loc_B6AE7D: PopAdLdVar
  loc_B6AE7E: FLdPr Me
  loc_B6AE81: MemLdRfVar from_stack_1.global_76
  loc_B6AE84: LdPrVar
  loc_B6AE86: LateMemCall
  loc_B6AE8C: FFree1Str var_150
  loc_B6AE8F: FFree1Var var_BC = ""
  loc_B6AE92: LitVarStr var_9C, "        </tr>"
  loc_B6AE97: PopAdLdVar
  loc_B6AE98: FLdPr Me
  loc_B6AE9B: MemLdRfVar from_stack_1.global_76
  loc_B6AE9E: LdPrVar
  loc_B6AEA0: LateMemCall
  loc_B6AEA6: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B6AEAB: PopAdLdVar
  loc_B6AEAC: FLdPr Me
  loc_B6AEAF: MemLdRfVar from_stack_1.global_76
  loc_B6AEB2: LdPrVar
  loc_B6AEB4: LateMemCall
  loc_B6AEBA: LitVarStr var_9C, "        <td width=""25" & Chr(37) & """>USUARIO</td>"
  loc_B6AEBF: PopAdLdVar
  loc_B6AEC0: FLdPr Me
  loc_B6AEC3: MemLdRfVar from_stack_1.global_76
  loc_B6AEC6: LdPrVar
  loc_B6AEC8: LateMemCall
  loc_B6AECE: LitVarStr var_9C, "        <td width=""25" & Chr(37) & """>BOLETO</td>"
  loc_B6AED3: PopAdLdVar
  loc_B6AED4: FLdPr Me
  loc_B6AED7: MemLdRfVar from_stack_1.global_76
  loc_B6AEDA: LdPrVar
  loc_B6AEDC: LateMemCall
  loc_B6AEE2: LitVarStr var_9C, "        <td width=""25" & Chr(37) & """>VENCIMIENTO</td>"
  loc_B6AEE7: PopAdLdVar
  loc_B6AEE8: FLdPr Me
  loc_B6AEEB: MemLdRfVar from_stack_1.global_76
  loc_B6AEEE: LdPrVar
  loc_B6AEF0: LateMemCall
  loc_B6AEF6: LitVarStr var_9C, "        <td width=""25" & Chr(37) & """>IMPORTE</td>"
  loc_B6AEFB: PopAdLdVar
  loc_B6AEFC: FLdPr Me
  loc_B6AEFF: MemLdRfVar from_stack_1.global_76
  loc_B6AF02: LdPrVar
  loc_B6AF04: LateMemCall
  loc_B6AF0A: LitVarStr var_9C, "      </tr>"
  loc_B6AF0F: PopAdLdVar
  loc_B6AF10: FLdPr Me
  loc_B6AF13: MemLdRfVar from_stack_1.global_76
  loc_B6AF16: LdPrVar
  loc_B6AF18: LateMemCall
  loc_B6AF1E: LitVarStr var_9C, "      <tr>"
  loc_B6AF23: PopAdLdVar
  loc_B6AF24: FLdPr Me
  loc_B6AF27: MemLdRfVar from_stack_1.global_76
  loc_B6AF2A: LdPrVar
  loc_B6AF2C: LateMemCall
  loc_B6AF32: LitStr "        <td align=""center"">"
  loc_B6AF35: FMemLdR4 var_8C(112)
  loc_B6AF3A: ConcatStr
  loc_B6AF3B: FStStrNoPop var_150
  loc_B6AF3E: LitStr "</td>"
  loc_B6AF41: ConcatStr
  loc_B6AF42: CVarStr var_BC
  loc_B6AF45: PopAdLdVar
  loc_B6AF46: FLdPr Me
  loc_B6AF49: MemLdRfVar from_stack_1.global_76
  loc_B6AF4C: LdPrVar
  loc_B6AF4E: LateMemCall
  loc_B6AF54: FFree1Str var_150
  loc_B6AF57: FFree1Var var_BC = ""
  loc_B6AF5A: LitStr "        <td align=""right"">"
  loc_B6AF5D: FLdPr Me
  loc_B6AF60: VCallAd Control_ID_PeriBoleMsk
  loc_B6AF63: FStAdFunc var_154
  loc_B6AF66: FLdPr var_154
  loc_B6AF69: LateIdLdVar var_BC DispID_0 0
  loc_B6AF70: CStrVarTmp
  loc_B6AF71: FStStrNoPop var_150
  loc_B6AF74: ConcatStr
  loc_B6AF75: FStStrNoPop var_158
  loc_B6AF78: LitStr "/"
  loc_B6AF7B: ConcatStr
  loc_B6AF7C: FStStrNoPop var_160
  loc_B6AF7F: FLdPr Me
  loc_B6AF82: VCallAd Control_ID_NumeBoleMsk
  loc_B6AF85: FStAdFunc var_15C
  loc_B6AF88: FLdPr var_15C
  loc_B6AF8B: LateIdLdVar var_CC DispID_0 0
  loc_B6AF92: CStrVarTmp
  loc_B6AF93: FStStrNoPop var_164
  loc_B6AF96: ConcatStr
  loc_B6AF97: FStStrNoPop var_168
  loc_B6AF9A: LitStr "</td>"
  loc_B6AF9D: ConcatStr
  loc_B6AF9E: CVarStr var_DC
  loc_B6AFA1: PopAdLdVar
  loc_B6AFA2: FLdPr Me
  loc_B6AFA5: MemLdRfVar from_stack_1.global_76
  loc_B6AFA8: LdPrVar
  loc_B6AFAA: LateMemCall
  loc_B6AFB0: FFreeStr var_150 = "": var_158 = "": var_160 = "": var_164 = ""
  loc_B6AFBD: FFreeAd var_154 = ""
  loc_B6AFC4: FFreeVar var_BC = "": var_CC = ""
  loc_B6AFCD: LitStr "        <td align=""center"" class=""Vencimiento"">"
  loc_B6AFD0: FMemLdR4 var_8C(128)
  loc_B6AFD5: ConcatStr
  loc_B6AFD6: FStStrNoPop var_150
  loc_B6AFD9: LitStr "</td>"
  loc_B6AFDC: ConcatStr
  loc_B6AFDD: CVarStr var_BC
  loc_B6AFE0: PopAdLdVar
  loc_B6AFE1: FLdPr Me
  loc_B6AFE4: MemLdRfVar from_stack_1.global_76
  loc_B6AFE7: LdPrVar
  loc_B6AFE9: LateMemCall
  loc_B6AFEF: FFree1Str var_150
  loc_B6AFF2: FFree1Var var_BC = ""
  loc_B6AFF5: LitStr "        <td align=""right"">"
  loc_B6AFF8: FMemLdR4 var_8C(148)
  loc_B6AFFD: ConcatStr
  loc_B6AFFE: FStStrNoPop var_150
  loc_B6B001: LitStr "</td>"
  loc_B6B004: ConcatStr
  loc_B6B005: CVarStr var_BC
  loc_B6B008: PopAdLdVar
  loc_B6B009: FLdPr Me
  loc_B6B00C: MemLdRfVar from_stack_1.global_76
  loc_B6B00F: LdPrVar
  loc_B6B011: LateMemCall
  loc_B6B017: FFree1Str var_150
  loc_B6B01A: FFree1Var var_BC = ""
  loc_B6B01D: LitVarStr var_9C, "      </tr>"
  loc_B6B022: PopAdLdVar
  loc_B6B023: FLdPr Me
  loc_B6B026: MemLdRfVar from_stack_1.global_76
  loc_B6B029: LdPrVar
  loc_B6B02B: LateMemCall
  loc_B6B031: LitVarStr var_9C, "      <tr align=""left"">"
  loc_B6B036: PopAdLdVar
  loc_B6B037: FLdPr Me
  loc_B6B03A: MemLdRfVar from_stack_1.global_76
  loc_B6B03D: LdPrVar
  loc_B6B03F: LateMemCall
  loc_B6B045: LitVarStr var_9C, "          <td height=""85"" colspan=""4"" class=""Normal"">"
  loc_B6B04A: PopAdLdVar
  loc_B6B04B: FLdPr Me
  loc_B6B04E: MemLdRfVar from_stack_1.global_76
  loc_B6B051: LdPrVar
  loc_B6B053: LateMemCall
  loc_B6B059: LitVarStr var_9C, "           <table valign=""middle"" align=""center"">"
  loc_B6B05E: PopAdLdVar
  loc_B6B05F: FLdPr Me
  loc_B6B062: MemLdRfVar from_stack_1.global_76
  loc_B6B065: LdPrVar
  loc_B6B067: LateMemCall
  loc_B6B06D: LitStr "             <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_B6B070: LitI4 1
  loc_B6B075: LitI4 1
  loc_B6B07A: FLdPr Me
  loc_B6B07D: MemLdStr global_116
  loc_B6B080: Ary1LdPr
  loc_B6B081: MemLdStr global_136
  loc_B6B084: Ary1LdI4
  loc_B6B085: ConcatStr
  loc_B6B086: FStStrNoPop var_150
  loc_B6B089: LitStr "</td></tr>"
  loc_B6B08C: ConcatStr
  loc_B6B08D: CVarStr var_BC
  loc_B6B090: PopAdLdVar
  loc_B6B091: FLdPr Me
  loc_B6B094: MemLdRfVar from_stack_1.global_76
  loc_B6B097: LdPrVar
  loc_B6B099: LateMemCall
  loc_B6B09F: FFree1Str var_150
  loc_B6B0A2: FFree1Var var_BC = ""
  loc_B6B0A5: LitStr "             <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_B6B0A8: LitI4 0
  loc_B6B0AD: LitI4 1
  loc_B6B0B2: FLdPr Me
  loc_B6B0B5: MemLdStr global_116
  loc_B6B0B8: Ary1LdPr
  loc_B6B0B9: MemLdStr global_136
  loc_B6B0BC: Ary1LdI4
  loc_B6B0BD: ConcatStr
  loc_B6B0BE: FStStrNoPop var_150
  loc_B6B0C1: LitStr "</td></tr>"
  loc_B6B0C4: ConcatStr
  loc_B6B0C5: CVarStr var_BC
  loc_B6B0C8: PopAdLdVar
  loc_B6B0C9: FLdPr Me
  loc_B6B0CC: MemLdRfVar from_stack_1.global_76
  loc_B6B0CF: LdPrVar
  loc_B6B0D1: LateMemCall
  loc_B6B0D7: FFree1Str var_150
  loc_B6B0DA: FFree1Var var_BC = ""
  loc_B6B0DD: LitVarStr var_9C, "           </table>"
  loc_B6B0E2: PopAdLdVar
  loc_B6B0E3: FLdPr Me
  loc_B6B0E6: MemLdRfVar from_stack_1.global_76
  loc_B6B0E9: LdPrVar
  loc_B6B0EB: LateMemCall
  loc_B6B0F1: LitVarStr var_9C, "          <br><div align=""right"">Sellar al dorso</div></td>"
  loc_B6B0F6: PopAdLdVar
  loc_B6B0F7: FLdPr Me
  loc_B6B0FA: MemLdRfVar from_stack_1.global_76
  loc_B6B0FD: LdPrVar
  loc_B6B0FF: LateMemCall
  loc_B6B105: LitVarStr var_9C, "      </tr>"
  loc_B6B10A: PopAdLdVar
  loc_B6B10B: FLdPr Me
  loc_B6B10E: MemLdRfVar from_stack_1.global_76
  loc_B6B111: LdPrVar
  loc_B6B113: LateMemCall
  loc_B6B119: LitVarStr var_9C, "    </table>"
  loc_B6B11E: PopAdLdVar
  loc_B6B11F: FLdPr Me
  loc_B6B122: MemLdRfVar from_stack_1.global_76
  loc_B6B125: LdPrVar
  loc_B6B127: LateMemCall
  loc_B6B12D: LitVarStr var_9C, "  </th></tr>"
  loc_B6B132: PopAdLdVar
  loc_B6B133: FLdPr Me
  loc_B6B136: MemLdRfVar from_stack_1.global_76
  loc_B6B139: LdPrVar
  loc_B6B13B: LateMemCall
  loc_B6B141: LitVarStr var_9C, "  <tr class=""Normal"" valign=""top"">"
  loc_B6B146: PopAdLdVar
  loc_B6B147: FLdPr Me
  loc_B6B14A: MemLdRfVar from_stack_1.global_76
  loc_B6B14D: LdPrVar
  loc_B6B14F: LateMemCall
  loc_B6B155: LitVarStr var_9C, "    <td align=""left"" valign=""top"" class=""Normal"">www.infogov.com.ar</td>"
  loc_B6B15A: PopAdLdVar
  loc_B6B15B: FLdPr Me
  loc_B6B15E: MemLdRfVar from_stack_1.global_76
  loc_B6B161: LdPrVar
  loc_B6B163: LateMemCall
  loc_B6B169: LitVarStr var_9C, "  </tr>"
  loc_B6B16E: PopAdLdVar
  loc_B6B16F: FLdPr Me
  loc_B6B172: MemLdRfVar from_stack_1.global_76
  loc_B6B175: LdPrVar
  loc_B6B177: LateMemCall
  loc_B6B17D: LitVarStr var_9C, "</table>"
  loc_B6B182: PopAdLdVar
  loc_B6B183: FLdPr Me
  loc_B6B186: MemLdRfVar from_stack_1.global_76
  loc_B6B189: LdPrVar
  loc_B6B18B: LateMemCall
  loc_B6B191: LitI4 0
  loc_B6B196: FStR4 var_8C
  loc_B6B199: AryUnlock
  loc_B6B19C: ExitProcHresult
End Function

Private Function Proc_163_49_9F390C() '9F390C
  'Data Table: 4DE7C8
  loc_9F38E0: LitVarStr var_94, "</body>"
  loc_9F38E5: PopAdLdVar
  loc_9F38E6: FLdPr Me
  loc_9F38E9: MemLdRfVar from_stack_1.global_76
  loc_9F38EC: LdPrVar
  loc_9F38EE: LateMemCall
  loc_9F38F4: LitVarStr var_94, "</html>"
  loc_9F38F9: PopAdLdVar
  loc_9F38FA: FLdPr Me
  loc_9F38FD: MemLdRfVar from_stack_1.global_76
  loc_9F3900: LdPrVar
  loc_9F3902: LateMemCall
  loc_9F3908: ExitProcHresult
End Function
