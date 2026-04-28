VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptGeneraciondeTXTCajaForence
  Caption = "Generacion de TXT para la Caja Forence"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptGeneraciondeTXTCajaForence.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10068
  ClientHeight = 3684
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
    Left = 240
    Top = 1800
    Width = 9855
    Height = 150
    Visible = 0   'False
    TabIndex = 4
    OleObjectBlob = "rptGeneraciondeTXTCajaForence.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3435
    Width = 10065
    Height = 255
    TabIndex = 14
    OleObjectBlob = "rptGeneraciondeTXTCajaForence.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9000
    Top = 2280
    Width = 855
    Height = 735
    TabIndex = 12
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
    Picture = "rptGeneraciondeTXTCajaForence.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptGeneraciondeTXTCajaForence.frx":0C04
    Left = 9000
    Top = 2160
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2040
    Width = 4575
    Height = 1215
    TabIndex = 8
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 10
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3120
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 11
    End
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
    Top = 2040
    Width = 4095
    Height = 1215
    TabIndex = 5
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 7
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 6
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9855
    Height = 1575
    TabIndex = 0
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
      Left = 7200
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 3840
      Top = 360
      Width = 1332
      Height = 360
      TabIndex = 15
      OleObjectBlob = "rptGeneraciondeTXTCajaForence.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 3840
      Top = 888
      Width = 1332
      Height = 360
      TabIndex = 16
      OleObjectBlob = "rptGeneraciondeTXTCajaForence.frx":0D18
    End
    Begin VB.Label Label5
      Caption = "Hasta Fecha de Pago:"
      Left = 1320
      Top = 840
      Width = 2388
      Height = 300
      TabIndex = 3
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Desde Fecha de Pago:"
      Left = 1320
      Top = 360
      Width = 2448
      Height = 300
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9000
    Top = 2400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptGeneraciondeTXTCajaForence.frx":0DC8
  End
End

Attribute VB_Name = "rptGeneraciondeTXTCajaForence"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00560654
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub cmdSalir_Click() 'A008E4
  'Data Table: 485E14
  loc_A008B4: LitVarStr var_94, "Cerrando..."
  loc_A008B9: PopAdLdVar
  loc_A008BA: FLdPr Me
  loc_A008BD: VCallAd Control_ID_statusBar
  loc_A008C0: FStAdFunc var_A8
  loc_A008C3: FLdPr var_A8
  loc_A008C6: LateIdSt
  loc_A008CB: FFree1Ad var_A8
  loc_A008CE: ILdRf Me
  loc_A008D1: FStAdNoPop
  loc_A008D5: ImpAdLdRf MemVar_D9C5D8
  loc_A008D8: NewIfNullPr Global
  loc_A008DB: Global.Unload from_stack_1
  loc_A008E0: FFree1Ad var_A8
  loc_A008E3: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9C9B90
  'Data Table: 485E14
  loc_9C9B78: LitI2_Byte 0
  loc_9C9B7A: ILdRf Me
  loc_9C9B7D: CastAd
  loc_9C9B80: FStAdFunc var_88
  loc_9C9B83: FLdRfVar var_88
  loc_9C9B86: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C9B8B: FFree1Ad var_88
  loc_9C9B8E: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DDF8C
  'Data Table: 485E14
  loc_9DDF70: LitI2_Byte &HFF
  loc_9DDF72: LitI2_Byte 0
  loc_9DDF74: ILdRf Me
  loc_9DDF77: CastAd
  loc_9DDF7A: FStAdFunc var_88
  loc_9DDF7D: FLdRfVar var_88
  loc_9DDF80: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DDF85: FFree1Ad var_88
  loc_9DDF88: ExitProcHresult
  loc_9DDF89: GeCy
  loc_9DDF8A: FStStrNoPop var_6400
End Sub

Private Sub cmdPdf_Click() '9DDE9C
  'Data Table: 485E14
  loc_9DDE80: LitI2_Byte 0
  loc_9DDE82: PopTmpLdAd2 var_8A
  loc_9DDE85: ILdRf Me
  loc_9DDE88: CastAd
  loc_9DDE8B: FStAdFunc var_88
  loc_9DDE8E: FLdRfVar var_88
  loc_9DDE91: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DDE96: FFree1Ad var_88
  loc_9DDE99: ExitProcHresult
  loc_9DDE9A: FnLBound
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9C1B50
  'Data Table: 485E14
  loc_9C1B3C: FLdPr Me
  loc_9C1B3F: VCallAd Control_ID_DesdeMsk
  loc_9C1B42: CVarAd
  loc_9C1B46: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1B4B: FFree1Var var_94 = ""
  loc_9C1B4E: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A62C60
  'Data Table: 485E14
  loc_A62C04: FLdPr Me
  loc_A62C07: VCallAd Control_ID_DesdeMsk
  loc_A62C0A: FStAdFunc var_88
  loc_A62C0D: FLdPr var_88
  loc_A62C10: LateIdLdVar var_98 DispID_15 0
  loc_A62C17: CStrVarTmp
  loc_A62C18: FStStrNoPop var_9C
  loc_A62C1B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A62C20: FStStrNoPop var_A0
  loc_A62C23: FLdPr Me
  loc_A62C26: MemStStrCopy
  loc_A62C2A: FFreeStr var_9C = ""
  loc_A62C31: FFree1Ad var_88
  loc_A62C34: FFree1Var var_98 = ""
  loc_A62C37: FLdPr Me
  loc_A62C3A: VCallAd Control_ID_DesdeMsk
  loc_A62C3D: FStAdFuncNoPop
  loc_A62C40: CastAd
  loc_A62C43: FStAdFunc var_A4
  loc_A62C46: FLdRfVar var_A4
  loc_A62C49: FLdPr Me
  loc_A62C4C: MemLdStr global_104
  loc_A62C4F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A62C54: IStI2 arg_C
  loc_A62C57: FFreeAd var_88 = ""
  loc_A62C5E: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A22584
  'Data Table: 485E14
  loc_A2253C: ILdI2 KeyAscii
  loc_A2253F: CI4UI1
  loc_A22540: LitI4 &H20
  loc_A22545: EqI4
  loc_A22546: BranchF loc_A22583
  loc_A22549: LitVar_Missing var_A4
  loc_A2254C: PopAdLdVar
  loc_A2254D: LitVarI4
  loc_A22555: PopAdLdVar
  loc_A22556: ImpAdLdRf MemVar_D930A4
  loc_A22559: NewIfNullPr frmCalendario
  loc_A2255C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A22561: ImpAdLdRf MemVar_D93028
  loc_A22564: CDargRef
  loc_A22568: FLdPr Me
  loc_A2256B: VCallAd Control_ID_DesdeMsk
  loc_A2256E: FStAdFunc var_A8
  loc_A22571: FLdPr var_A8
  loc_A22574: LateIdSt
  loc_A22579: FFree1Ad var_A8
  loc_A2257C: LitStr vbNullString
  loc_A2257F: ImpAdStStrCopy MemVar_D93028
  loc_A22583: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A10C6C
  'Data Table: 485E14
  loc_A10C2C: LitI2_Byte 0
  loc_A10C2E: FLdPr Me
  loc_A10C31: MemStI2 bGenerado
  loc_A10C34: LitI2_Byte &HFF
  loc_A10C36: FLdPr Me
  loc_A10C39: MemStI2 bLogos
  loc_A10C3C: LitI2_Byte 0
  loc_A10C3E: ILdRf Me
  loc_A10C41: CastAd
  loc_A10C44: FStAdFunc var_88
  loc_A10C47: FLdRfVar var_88
  loc_A10C4A: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A10C4F: FFree1Ad var_88
  loc_A10C52: Call HabilitarCriterio()
  loc_A10C57: ILdRf Me
  loc_A10C5A: CastAd
  loc_A10C5D: FStAdFunc var_88
  loc_A10C60: FLdRfVar var_88
  loc_A10C63: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A10C68: FFree1Ad var_88
  loc_A10C6B: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1EFB8
  'Data Table: 485E14
  loc_A1EF80: FLdPr Me
  loc_A1EF83: VCallAd Control_ID_statusBar
  loc_A1EF86: FStAdFunc var_88
  loc_A1EF89: FLdPr var_88
  loc_A1EF8C: LateIdLdVar var_98 DispID_1 0
  loc_A1EF93: CStrVarTmp
  loc_A1EF94: CVarStr var_A8
  loc_A1EF97: PopAdLdVar
  loc_A1EF98: FLdPr Me
  loc_A1EF9B: VCallAd Control_ID_statusBar
  loc_A1EF9E: FStAdFunc var_BC
  loc_A1EFA1: FLdPr var_BC
  loc_A1EFA4: LateIdSt
  loc_A1EFA9: FFreeAd var_88 = ""
  loc_A1EFB0: FFreeVar var_98 = ""
  loc_A1EFB7: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9D23D4
  'Data Table: 485E14
  loc_9D23BC: LitI2_Byte 0
  loc_9D23BE: ILdRf Me
  loc_9D23C1: CastAd
  loc_9D23C4: FStAdFunc var_88
  loc_9D23C7: FLdRfVar var_88
  loc_9D23CA: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9D23CF: FFree1Ad var_88
  loc_9D23D2: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9C1BE0
  'Data Table: 485E14
  loc_9C1BCC: FLdPr Me
  loc_9C1BCF: VCallAd Control_ID_HastaMsk
  loc_9C1BD2: CVarAd
  loc_9C1BD6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1BDB: FFree1Var var_94 = ""
  loc_9C1BDE: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA59B4
  'Data Table: 485E14
  loc_AA5904: FLdPr Me
  loc_AA5907: VCallAd Control_ID_HastaMsk
  loc_AA590A: FStAdFunc var_88
  loc_AA590D: FLdPr var_88
  loc_AA5910: LateIdLdVar var_98 DispID_15 0
  loc_AA5917: CStrVarTmp
  loc_AA5918: CVarStr var_A8
  loc_AA591B: ImpAdCallI2 IsDate()
  loc_AA5920: FFree1Ad var_88
  loc_AA5923: FFreeVar var_98 = ""
  loc_AA592A: BranchF loc_AA59B0
  loc_AA592D: FLdPr Me
  loc_AA5930: VCallAd Control_ID_HastaMsk
  loc_AA5933: FStAdFunc var_88
  loc_AA5936: FLdPr var_88
  loc_AA5939: LateIdLdVar var_98 DispID_15 0
  loc_AA5940: CStrVarTmp
  loc_AA5941: CVarStr var_A8
  loc_AA5944: FLdRfVar var_B8
  loc_AA5947: ImpAdCallFPR4  = Year()
  loc_AA594C: FLdRfVar var_B8
  loc_AA594F: FLdPr Me
  loc_AA5952: VCallAd Control_ID_DesdeMsk
  loc_AA5955: FStAdFunc var_BC
  loc_AA5958: FLdPr var_BC
  loc_AA595B: LateIdLdVar var_CC DispID_15 0
  loc_AA5962: CStrVarTmp
  loc_AA5963: CVarStr var_DC
  loc_AA5966: FLdRfVar var_EC
  loc_AA5969: ImpAdCallFPR4  = Year()
  loc_AA596E: FLdRfVar var_EC
  loc_AA5971: NeVarBool
  loc_AA5973: FFreeAd var_88 = ""
  loc_AA597A: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA5989: BranchF loc_AA59B0
  loc_AA598C: FLdPr Me
  loc_AA598F: VCallAd Control_ID_HastaMsk
  loc_AA5992: FStAdFuncNoPop
  loc_AA5995: CastAd
  loc_AA5998: FStAdFunc var_BC
  loc_AA599B: FLdRfVar var_BC
  loc_AA599E: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA59A1: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA59A6: IStI2 arg_C
  loc_AA59A9: FFreeAd var_88 = ""
  loc_AA59B0: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A22600
  'Data Table: 485E14
  loc_A225B8: ILdI2 KeyAscii
  loc_A225BB: CI4UI1
  loc_A225BC: LitI4 &H20
  loc_A225C1: EqI4
  loc_A225C2: BranchF loc_A225FF
  loc_A225C5: LitVar_Missing var_A4
  loc_A225C8: PopAdLdVar
  loc_A225C9: LitVarI4
  loc_A225D1: PopAdLdVar
  loc_A225D2: ImpAdLdRf MemVar_D930A4
  loc_A225D5: NewIfNullPr frmCalendario
  loc_A225D8: frmCalendario.Show from_stack_1, from_stack_2
  loc_A225DD: ImpAdLdRf MemVar_D93028
  loc_A225E0: CDargRef
  loc_A225E4: FLdPr Me
  loc_A225E7: VCallAd Control_ID_HastaMsk
  loc_A225EA: FStAdFunc var_A8
  loc_A225ED: FLdPr var_A8
  loc_A225F0: LateIdSt
  loc_A225F5: FFree1Ad var_A8
  loc_A225F8: LitStr vbNullString
  loc_A225FB: ImpAdStStrCopy MemVar_D93028
  loc_A225FF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D233C
  'Data Table: 485E14
  loc_9D2324: ILdRf Me
  loc_9D2327: CastAd
  loc_9D232A: FStAdFunc var_88
  loc_9D232D: FLdRfVar var_88
  loc_9D2330: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D2335: FFree1Ad var_88
  loc_9D2338: ExitProcHresult
  loc_9D2339: IStFPR8 cmdPrevia_ClickC2
End Sub

Private Sub Form_Load() 'AD88C0
  'Data Table: 485E14
  loc_AD87A0: ILdRf Me
  loc_AD87A3: CastAd
  loc_AD87A6: FStAdFunc var_88
  loc_AD87A9: FLdRfVar var_88
  loc_AD87AC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_AD87B1: FFree1Ad var_88
  loc_AD87B4: Call cmdNueva_Click()
  loc_AD87B9: LitI2_Byte 0
  loc_AD87BB: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD87C0: CVarDate var_A8
  loc_AD87C4: FLdRfVar var_B8
  loc_AD87C7: ImpAdCallFPR4  = Year()
  loc_AD87CC: LitI2_Byte 0
  loc_AD87CE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD87D3: CVarDate var_D8
  loc_AD87D7: FLdRfVar var_E8
  loc_AD87DA: ImpAdCallFPR4  = Month()
  loc_AD87DF: LitI2_Byte 1
  loc_AD87E1: FLdRfVar var_E8
  loc_AD87E4: LitVarI2 var_F8, 1
  loc_AD87E9: SubVar var_108
  loc_AD87ED: CI2Var
  loc_AD87EE: FLdRfVar var_B8
  loc_AD87F1: CI2Var
  loc_AD87F2: FLdRfVar var_118
  loc_AD87F5: ImpAdCallFPR4  = DateSerial(, , )
  loc_AD87FA: FLdRfVar var_118
  loc_AD87FD: CStrVarTmp
  loc_AD87FE: CVarStr var_128
  loc_AD8801: PopAdLdVar
  loc_AD8802: FLdPr Me
  loc_AD8805: VCallAd Control_ID_DesdeMsk
  loc_AD8808: FStAdFunc var_88
  loc_AD880B: FLdPr var_88
  loc_AD880E: LateIdSt
  loc_AD8813: FFree1Ad var_88
  loc_AD8816: FFreeVar var_A8 = "": var_D8 = "": var_E8 = "": var_B8 = "": var_118 = ""
  loc_AD8825: FLdPr Me
  loc_AD8828: VCallAd Control_ID_DesdeMsk
  loc_AD882B: FStAdFunc var_88
  loc_AD882E: FLdPr var_88
  loc_AD8831: LateIdLdVar var_A8 DispID_15 0
  loc_AD8838: CStrVarTmp
  loc_AD8839: CVarStr var_B8
  loc_AD883C: FLdRfVar var_D8
  loc_AD883F: ImpAdCallFPR4  = Year()
  loc_AD8844: FLdPr Me
  loc_AD8847: VCallAd Control_ID_DesdeMsk
  loc_AD884A: FStAdFunc var_13C
  loc_AD884D: FLdPr var_13C
  loc_AD8850: LateIdLdVar var_E8 DispID_15 0
  loc_AD8857: CStrVarTmp
  loc_AD8858: CVarStr var_108
  loc_AD885B: FLdRfVar var_118
  loc_AD885E: ImpAdCallFPR4  = Month()
  loc_AD8863: LitI2_Byte 1
  loc_AD8865: FLdRfVar var_118
  loc_AD8868: LitVarI2 var_98, 1
  loc_AD886D: AddVar var_128
  loc_AD8871: CI2Var
  loc_AD8872: FLdRfVar var_D8
  loc_AD8875: CI2Var
  loc_AD8876: FLdRfVar var_14C
  loc_AD8879: ImpAdCallFPR4  = DateSerial(, , )
  loc_AD887E: FLdRfVar var_14C
  loc_AD8881: LitVarI2 var_C8, 1
  loc_AD8886: SubVar var_15C
  loc_AD888A: CStrVarTmp
  loc_AD888B: CVarStr var_16C
  loc_AD888E: PopAdLdVar
  loc_AD888F: FLdPr Me
  loc_AD8892: VCallAd Control_ID_HastaMsk
  loc_AD8895: FStAdFunc var_170
  loc_AD8898: FLdPr var_170
  loc_AD889B: LateIdSt
  loc_AD88A0: FFreeAd var_88 = "": var_13C = ""
  loc_AD88A9: FFreeVar var_A8 = "": var_B8 = "": var_E8 = "": var_108 = "": var_118 = "": var_D8 = "": var_128 = "": var_14C = ""
  loc_AD88BE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D175C
  'Data Table: 485E14
  loc_9D1744: FLdPr Me
  loc_9D1747: VCallAd Control_ID_wbbReporte
  loc_9D174A: FStAdFunc var_88
  loc_9D174D: FLdRfVar var_88
  loc_9D1750: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D1755: FFree1Ad var_88
  loc_9D1758: ExitProcHresult
End Sub

Public Function bGeneradoGet() '486B14
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '486B23
  bGenerado = Value
End Sub

Public Function bLogosGet() '486B32
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '486B41
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '9AF074
  'Data Table: 485E14
  loc_9AF070: ExitProcHresult
  loc_9AF071: MemStI2 global_845
End Sub

Public Sub GeneraReporte() 'BAA618
  'Data Table: 485E14
  loc_BAA00C: FLdPr Me
  loc_BAA00F: MemLdI2 bGenerado
  loc_BAA012: BranchF loc_BAA016
  loc_BAA015: ExitProcHresult
  loc_BAA016: LitVarStr var_9C, "Generando reporte..."
  loc_BAA01B: PopAdLdVar
  loc_BAA01C: FLdPr Me
  loc_BAA01F: VCallAd Control_ID_statusBar
  loc_BAA022: FStAdFunc var_B0
  loc_BAA025: FLdPr var_B0
  loc_BAA028: LateIdSt
  loc_BAA02D: FFree1Ad var_B0
  loc_BAA030: LitI4 &HB
  loc_BAA035: CI2I4
  loc_BAA036: FLdPr Me
  loc_BAA039: Me.MousePointer = from_stack_1
  loc_BAA03E: LitI2_Byte 0
  loc_BAA040: PopTmpLdAd2 var_B2
  loc_BAA043: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BAA048: FLdPr Me
  loc_BAA04B: MemLdStr global_104
  loc_BAA04E: LitStr vbNullString
  loc_BAA051: NeStr
  loc_BAA053: BranchF loc_BAA059
  loc_BAA056: Branch loc_BAA5EF
  loc_BAA059: LitI2_Byte 0
  loc_BAA05B: PopTmpLdAd2 var_B2
  loc_BAA05E: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_BAA063: FLdPr Me
  loc_BAA066: MemLdStr global_104
  loc_BAA069: LitStr vbNullString
  loc_BAA06C: NeStr
  loc_BAA06E: BranchF loc_BAA074
  loc_BAA071: Branch loc_BAA5EF
  loc_BAA074: FLdPr Me
  loc_BAA077: VCallAd Control_ID_DesdeMsk
  loc_BAA07A: FStAdFunc var_B0
  loc_BAA07D: FLdPr var_B0
  loc_BAA080: LateIdLdVar var_C4 DispID_15 0
  loc_BAA087: PopAd
  loc_BAA089: LitI4 1
  loc_BAA08E: LitI4 1
  loc_BAA093: LitVarStr var_9C, "yyyy-mm-dd"
  loc_BAA098: FStVarCopyObj var_E4
  loc_BAA09B: FLdRfVar var_E4
  loc_BAA09E: FLdRfVar var_C4
  loc_BAA0A1: CStrVarTmp
  loc_BAA0A2: CVarStr var_D4
  loc_BAA0A5: ImpAdCallI2 Format$(, )
  loc_BAA0AA: FStStr var_88
  loc_BAA0AD: FFree1Ad var_B0
  loc_BAA0B0: FFreeVar var_C4 = "": var_D4 = ""
  loc_BAA0B9: FLdPr Me
  loc_BAA0BC: VCallAd Control_ID_HastaMsk
  loc_BAA0BF: FStAdFunc var_B0
  loc_BAA0C2: FLdPr var_B0
  loc_BAA0C5: LateIdLdVar var_C4 DispID_15 0
  loc_BAA0CC: PopAd
  loc_BAA0CE: LitI4 1
  loc_BAA0D3: LitI4 1
  loc_BAA0D8: LitVarStr var_9C, "yyyy-mm-dd"
  loc_BAA0DD: FStVarCopyObj var_E4
  loc_BAA0E0: FLdRfVar var_E4
  loc_BAA0E3: FLdRfVar var_C4
  loc_BAA0E6: CStrVarTmp
  loc_BAA0E7: CVarStr var_D4
  loc_BAA0EA: ImpAdCallI2 Format$(, )
  loc_BAA0EF: FStStr var_8C
  loc_BAA0F2: FFree1Ad var_B0
  loc_BAA0F5: FFreeVar var_C4 = "": var_D4 = ""
  loc_BAA0FE: FLdPr Me
  loc_BAA101: MemLdRfVar from_stack_1.global_92
  loc_BAA104: NewIfNullAd
  loc_BAA107: FStAd var_E8 
  loc_BAA10B: LitStr "Municipalidad de Guaymallén"
  loc_BAA10E: LitStr "Municipalidad de Tunuyán"
  loc_BAA111: EqStr
  loc_BAA113: BranchF loc_BAA18A
  loc_BAA116: LitStr "SELECT 'NTT  ' JuzgApre,  lpad(apremio.AutoApre,12,'0') AutoApre,   CAST(REPLACE(LPAD(apremio.TotaApre,13,'0'),'.','') AS CHAR) AS TotaApreStr, "
  loc_BAA119: LitStr " pago.FepaPago, CAST(REPLACE(LPAD( boleapre.ApleBoap,13,'0'),'.','') AS CHAR) AS ApleBoapStr, lpad(recaudador.MatrReca,6,'0') MatrReca "
  loc_BAA11C: ConcatStr
  loc_BAA11D: FStStrNoPop var_EC
  loc_BAA120: LitStr " FROM boleapre"
  loc_BAA123: ConcatStr
  loc_BAA124: FStStrNoPop var_F0
  loc_BAA127: LitStr " INNER JOIN apremio ON apremio.NumeApre = boleapre.NumeApre"
  loc_BAA12A: ConcatStr
  loc_BAA12B: FStStrNoPop var_F4
  loc_BAA12E: LitStr " INNER JOIN pago ON pago.PeriBole = boleapre.PeriBole"
  loc_BAA131: ConcatStr
  loc_BAA132: FStStrNoPop var_F8
  loc_BAA135: LitStr " AND pago.NumeBole = boleapre.NumeBole"
  loc_BAA138: ConcatStr
  loc_BAA139: FStStrNoPop var_FC
  loc_BAA13C: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_BAA13F: ConcatStr
  loc_BAA140: FStStrNoPop var_100
  loc_BAA143: LitStr " WHERE boleapre.FeenAcpa BETWEEN '"
  loc_BAA146: ConcatStr
  loc_BAA147: FStStrNoPop var_104
  loc_BAA14A: ILdRf var_88
  loc_BAA14D: ConcatStr
  loc_BAA14E: FStStrNoPop var_108
  loc_BAA151: LitStr "' AND '"
  loc_BAA154: ConcatStr
  loc_BAA155: FStStrNoPop var_10C
  loc_BAA158: ILdRf var_8C
  loc_BAA15B: ConcatStr
  loc_BAA15C: FStStrNoPop var_110
  loc_BAA15F: LitStr "' AND ApleBoap > 0"
  loc_BAA162: ConcatStr
  loc_BAA163: FStStrNoPop var_114
  loc_BAA166: FLdPr var_E8
  loc_BAA169: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BAA16E: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_BAA187: Branch loc_BAA27A
  loc_BAA18A: LitStr "Municipalidad de Guaymallén"
  loc_BAA18D: LitStr "Municipalidad de Guaymallén"
  loc_BAA190: EqStr
  loc_BAA192: BranchF loc_BAA209
  loc_BAA195: LitStr "SELECT 'NTT  ' JuzgApre,  lpad(apremio.AutoApre,12,'0') AutoApre,   CAST(REPLACE(LPAD(apremio.TotaApre,13,'0'),'.','') AS CHAR) AS TotaApreStr, "
  loc_BAA198: LitStr " pago.FepaPago, CAST(REPLACE(LPAD( boleapre.ApleBoap,13,'0'),'.','') AS CHAR) AS ApleBoapStr, lpad(recaudador.MatrReca,6,'0') MatrReca "
  loc_BAA19B: ConcatStr
  loc_BAA19C: FStStrNoPop var_EC
  loc_BAA19F: LitStr " FROM boleapre"
  loc_BAA1A2: ConcatStr
  loc_BAA1A3: FStStrNoPop var_F0
  loc_BAA1A6: LitStr " INNER JOIN apremio ON apremio.NumeApre = boleapre.NumeApre"
  loc_BAA1A9: ConcatStr
  loc_BAA1AA: FStStrNoPop var_F4
  loc_BAA1AD: LitStr " INNER JOIN pago ON pago.PeriBole = boleapre.PeriBole"
  loc_BAA1B0: ConcatStr
  loc_BAA1B1: FStStrNoPop var_F8
  loc_BAA1B4: LitStr " AND pago.NumeBole = boleapre.NumeBole"
  loc_BAA1B7: ConcatStr
  loc_BAA1B8: FStStrNoPop var_FC
  loc_BAA1BB: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_BAA1BE: ConcatStr
  loc_BAA1BF: FStStrNoPop var_100
  loc_BAA1C2: LitStr " WHERE boleapre.FeenAcpa BETWEEN '"
  loc_BAA1C5: ConcatStr
  loc_BAA1C6: FStStrNoPop var_104
  loc_BAA1C9: ILdRf var_88
  loc_BAA1CC: ConcatStr
  loc_BAA1CD: FStStrNoPop var_108
  loc_BAA1D0: LitStr "' AND '"
  loc_BAA1D3: ConcatStr
  loc_BAA1D4: FStStrNoPop var_10C
  loc_BAA1D7: ILdRf var_8C
  loc_BAA1DA: ConcatStr
  loc_BAA1DB: FStStrNoPop var_110
  loc_BAA1DE: LitStr "' AND ApleBoap > 0"
  loc_BAA1E1: ConcatStr
  loc_BAA1E2: FStStrNoPop var_114
  loc_BAA1E5: FLdPr var_E8
  loc_BAA1E8: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BAA1ED: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_BAA206: Branch loc_BAA27A
  loc_BAA209: LitStr "SELECT 'NTT  ' JuzgApre,  lpad(apremio.AutoApre,12,'0') AutoApre,   CAST(REPLACE(LPAD(IF(boleapre.CapiCtct<>0,boleapre.CapiCtct+boleapre.RecaCtct,apremio.TotaApre),13,'0'),'.','') AS CHAR) AS TotaApreStr, "
  loc_BAA20C: LitStr " pago.FepaPago, CAST(REPLACE(LPAD( boleapre.ApleBoap,13,'0'),'.','') AS CHAR) AS ApleBoapStr, lpad(recaudador.MatrReca,6,'0') MatrReca "
  loc_BAA20F: ConcatStr
  loc_BAA210: FStStrNoPop var_EC
  loc_BAA213: LitStr " FROM boleapre"
  loc_BAA216: ConcatStr
  loc_BAA217: FStStrNoPop var_F0
  loc_BAA21A: LitStr " INNER JOIN apremio ON apremio.NumeApre = boleapre.NumeApre"
  loc_BAA21D: ConcatStr
  loc_BAA21E: FStStrNoPop var_F4
  loc_BAA221: LitStr " INNER JOIN pago ON pago.PeriBole = boleapre.PeriBole"
  loc_BAA224: ConcatStr
  loc_BAA225: FStStrNoPop var_F8
  loc_BAA228: LitStr " AND pago.NumeBole = boleapre.NumeBole"
  loc_BAA22B: ConcatStr
  loc_BAA22C: FStStrNoPop var_FC
  loc_BAA22F: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_BAA232: ConcatStr
  loc_BAA233: FStStrNoPop var_100
  loc_BAA236: LitStr " WHERE boleapre.FeenAcpa BETWEEN '"
  loc_BAA239: ConcatStr
  loc_BAA23A: FStStrNoPop var_104
  loc_BAA23D: ILdRf var_88
  loc_BAA240: ConcatStr
  loc_BAA241: FStStrNoPop var_108
  loc_BAA244: LitStr "' AND '"
  loc_BAA247: ConcatStr
  loc_BAA248: FStStrNoPop var_10C
  loc_BAA24B: ILdRf var_8C
  loc_BAA24E: ConcatStr
  loc_BAA24F: FStStrNoPop var_110
  loc_BAA252: LitStr "' AND ApleBoap > 0"
  loc_BAA255: ConcatStr
  loc_BAA256: FStStrNoPop var_114
  loc_BAA259: FLdPr var_E8
  loc_BAA25C: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BAA261: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_BAA27A: FLdRfVar var_118
  loc_BAA27D: FLdPr var_E8
  loc_BAA280: from_stack_1 = clsapremio.RecordCount
  loc_BAA285: ILdRf var_118
  loc_BAA288: LitI4 0
  loc_BAA28D: EqI4
  loc_BAA28E: BranchF loc_BAA2AE
  loc_BAA291: LitI4 0
  loc_BAA296: LitI4 0
  loc_BAA29B: FLdPr Me
  loc_BAA29E: MemLdRfVar from_stack_1.global_96
  loc_BAA2A1: Redim
  loc_BAA2AB: Branch loc_BAA5E1
  loc_BAA2AE: LitI4 0
  loc_BAA2B3: FLdRfVar var_118
  loc_BAA2B6: FLdPr var_E8
  loc_BAA2B9: from_stack_1 = clsapremio.RecordCount
  loc_BAA2BE: ILdRf var_118
  loc_BAA2C1: FLdPr Me
  loc_BAA2C4: MemLdRfVar from_stack_1.global_96
  loc_BAA2C7: Redim
  loc_BAA2D1: FLdPr var_E8
  loc_BAA2D4: Call clsapremio.MoveFirst()
  loc_BAA2D9: FLdRfVar var_118
  loc_BAA2DC: FLdPr var_E8
  loc_BAA2DF: from_stack_1 = clsapremio.RecordCount
  loc_BAA2E4: ILdRf var_118
  loc_BAA2E7: CR8I4
  loc_BAA2E8: CVarR4
  loc_BAA2EC: PopAdLdVar
  loc_BAA2ED: FLdPrThis
  loc_BAA2EE: VCallAd Control_ID_Pbar
  loc_BAA2F1: FStAdFunc var_B0
  loc_BAA2F4: FLdPr var_B0
  loc_BAA2F7: LateIdSt
  loc_BAA2FC: FFree1Ad var_B0
  loc_BAA2FF: LitVar_TRUE var_9C
  loc_BAA302: PopAdLdVar
  loc_BAA303: FLdPrThis
  loc_BAA304: VCallAd Control_ID_Pbar
  loc_BAA307: FStAdFunc var_B0
  loc_BAA30A: FLdPr var_B0
  loc_BAA30D: LateIdSt
  loc_BAA312: FFree1Ad var_B0
  loc_BAA315: LitI4 1
  loc_BAA31A: FLdPr Me
  loc_BAA31D: MemLdRfVar from_stack_1.global_100
  loc_BAA320: FLdPr Me
  loc_BAA323: MemLdStr global_96
  loc_BAA326: LitI2_Byte 1
  loc_BAA328: FnUBound
  loc_BAA32A: ForI4 var_120
  loc_BAA330: FLdPr Me
  loc_BAA333: MemLdStr global_100
  loc_BAA336: CR8I4
  loc_BAA337: CVarR4
  loc_BAA33B: PopAdLdVar
  loc_BAA33C: FLdPrThis
  loc_BAA33D: VCallAd Control_ID_Pbar
  loc_BAA340: FStAdFunc var_B0
  loc_BAA343: FLdPr var_B0
  loc_BAA346: LateIdSt
  loc_BAA34B: FFree1Ad var_B0
  loc_BAA34E: FLdRfVar var_128
  loc_BAA351: LitVarStr var_9C, "JuzgApre"
  loc_BAA356: PopAdLdVar
  loc_BAA357: FLdRfVar var_124
  loc_BAA35A: FLdRfVar var_B0
  loc_BAA35D: FLdPr var_E8
  loc_BAA360: from_stack_1v = clsapremio.RsFrmGet()
  loc_BAA365: FLdPr var_B0
  loc_BAA368:  = Me.Fields
  loc_BAA36D: FLdPr var_124
  loc_BAA370: from_stack_2 = Me.Item(from_stack_1)
  loc_BAA375: LitI2_Byte 0
  loc_BAA377: LitVar_Missing var_D4
  loc_BAA37A: LitI2_Byte 0
  loc_BAA37C: FLdZeroAd var_128
  loc_BAA37F: CVarAd
  loc_BAA383: PopAdLdVar
  loc_BAA384: FLdPr Me
  loc_BAA387: MemLdStr global_100
  loc_BAA38A: FLdPr Me
  loc_BAA38D: MemLdStr global_96
  loc_BAA390: AryLock
  loc_BAA393: Ary1LdPr
  loc_BAA394: MemLdRfVar from_stack_1.global_0
  loc_BAA397: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BAA39C: AryUnlock
  loc_BAA39F: FFreeAd var_B0 = ""
  loc_BAA3A6: FFreeVar var_C4 = ""
  loc_BAA3AD: FLdRfVar var_128
  loc_BAA3B0: LitVarStr var_9C, "AutoApre"
  loc_BAA3B5: PopAdLdVar
  loc_BAA3B6: FLdRfVar var_124
  loc_BAA3B9: FLdRfVar var_B0
  loc_BAA3BC: FLdPr var_E8
  loc_BAA3BF: from_stack_1v = clsapremio.RsFrmGet()
  loc_BAA3C4: FLdPr var_B0
  loc_BAA3C7:  = Me.Fields
  loc_BAA3CC: FLdPr var_124
  loc_BAA3CF: from_stack_2 = Me.Item(from_stack_1)
  loc_BAA3D4: LitI2_Byte 0
  loc_BAA3D6: LitVar_Missing var_D4
  loc_BAA3D9: LitI2_Byte 0
  loc_BAA3DB: FLdZeroAd var_128
  loc_BAA3DE: CVarAd
  loc_BAA3E2: PopAdLdVar
  loc_BAA3E3: FLdPr Me
  loc_BAA3E6: MemLdStr global_100
  loc_BAA3E9: FLdPr Me
  loc_BAA3EC: MemLdStr global_96
  loc_BAA3EF: AryLock
  loc_BAA3F2: Ary1LdPr
  loc_BAA3F3: MemLdRfVar from_stack_1.global_4
  loc_BAA3F6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BAA3FB: AryUnlock
  loc_BAA3FE: FFreeAd var_B0 = ""
  loc_BAA405: FFreeVar var_C4 = ""
  loc_BAA40C: FLdRfVar var_128
  loc_BAA40F: LitVarStr var_9C, "TotaApreStr"
  loc_BAA414: PopAdLdVar
  loc_BAA415: FLdRfVar var_124
  loc_BAA418: FLdRfVar var_B0
  loc_BAA41B: FLdPr var_E8
  loc_BAA41E: from_stack_1v = clsapremio.RsFrmGet()
  loc_BAA423: FLdPr var_B0
  loc_BAA426:  = Me.Fields
  loc_BAA42B: FLdPr var_124
  loc_BAA42E: from_stack_2 = Me.Item(from_stack_1)
  loc_BAA433: LitI2_Byte 0
  loc_BAA435: LitVar_Missing var_D4
  loc_BAA438: LitI2_Byte 0
  loc_BAA43A: FLdZeroAd var_128
  loc_BAA43D: CVarAd
  loc_BAA441: PopAdLdVar
  loc_BAA442: FLdPr Me
  loc_BAA445: MemLdStr global_100
  loc_BAA448: FLdPr Me
  loc_BAA44B: MemLdStr global_96
  loc_BAA44E: AryLock
  loc_BAA451: Ary1LdPr
  loc_BAA452: MemLdRfVar from_stack_1.global_8
  loc_BAA455: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BAA45A: AryUnlock
  loc_BAA45D: FFreeAd var_B0 = ""
  loc_BAA464: FFreeVar var_C4 = ""
  loc_BAA46B: FLdRfVar var_128
  loc_BAA46E: LitVarStr var_9C, "FepaPago"
  loc_BAA473: PopAdLdVar
  loc_BAA474: FLdRfVar var_124
  loc_BAA477: FLdRfVar var_B0
  loc_BAA47A: FLdPr var_E8
  loc_BAA47D: from_stack_1v = clsapremio.RsFrmGet()
  loc_BAA482: FLdPr var_B0
  loc_BAA485:  = Me.Fields
  loc_BAA48A: FLdPr var_124
  loc_BAA48D: from_stack_2 = Me.Item(from_stack_1)
  loc_BAA492: LitI4 1
  loc_BAA497: LitI4 1
  loc_BAA49C: LitVarStr var_AC, "ddmmyyyy"
  loc_BAA4A1: FStVarCopyObj var_D4
  loc_BAA4A4: FLdRfVar var_D4
  loc_BAA4A7: FLdZeroAd var_128
  loc_BAA4AA: CVarAd
  loc_BAA4AE: ImpAdCallI2 Format$(, )
  loc_BAA4B3: FStStr var_EC
  loc_BAA4B6: LitI2_Byte 0
  loc_BAA4B8: LitVar_Missing var_14C
  loc_BAA4BB: LitI2_Byte 0
  loc_BAA4BD: FLdZeroAd var_EC
  loc_BAA4C0: CVarStr var_E4
  loc_BAA4C3: PopAdLdVar
  loc_BAA4C4: FLdPr Me
  loc_BAA4C7: MemLdStr global_100
  loc_BAA4CA: FLdPr Me
  loc_BAA4CD: MemLdStr global_96
  loc_BAA4D0: AryLock
  loc_BAA4D3: Ary1LdPr
  loc_BAA4D4: MemLdRfVar from_stack_1.global_12
  loc_BAA4D7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BAA4DC: AryUnlock
  loc_BAA4DF: FFree1Str var_EC
  loc_BAA4E2: FFreeAd var_B0 = ""
  loc_BAA4E9: FFreeVar var_C4 = "": var_D4 = "": var_E4 = ""
  loc_BAA4F4: FLdRfVar var_128
  loc_BAA4F7: LitVarStr var_9C, "ApleBoapStr"
  loc_BAA4FC: PopAdLdVar
  loc_BAA4FD: FLdRfVar var_124
  loc_BAA500: FLdRfVar var_B0
  loc_BAA503: FLdPr var_E8
  loc_BAA506: from_stack_1v = clsapremio.RsFrmGet()
  loc_BAA50B: FLdPr var_B0
  loc_BAA50E:  = Me.Fields
  loc_BAA513: FLdPr var_124
  loc_BAA516: from_stack_2 = Me.Item(from_stack_1)
  loc_BAA51B: LitI2_Byte 0
  loc_BAA51D: LitVar_Missing var_D4
  loc_BAA520: LitI2_Byte 0
  loc_BAA522: FLdZeroAd var_128
  loc_BAA525: CVarAd
  loc_BAA529: PopAdLdVar
  loc_BAA52A: FLdPr Me
  loc_BAA52D: MemLdStr global_100
  loc_BAA530: FLdPr Me
  loc_BAA533: MemLdStr global_96
  loc_BAA536: AryLock
  loc_BAA539: Ary1LdPr
  loc_BAA53A: MemLdRfVar from_stack_1.global_16
  loc_BAA53D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BAA542: AryUnlock
  loc_BAA545: FFreeAd var_B0 = ""
  loc_BAA54C: FFreeVar var_C4 = ""
  loc_BAA553: FLdRfVar var_128
  loc_BAA556: LitVarStr var_9C, "MatrReca"
  loc_BAA55B: PopAdLdVar
  loc_BAA55C: FLdRfVar var_124
  loc_BAA55F: FLdRfVar var_B0
  loc_BAA562: FLdPr var_E8
  loc_BAA565: from_stack_1v = clsapremio.RsFrmGet()
  loc_BAA56A: FLdPr var_B0
  loc_BAA56D:  = Me.Fields
  loc_BAA572: FLdPr var_124
  loc_BAA575: from_stack_2 = Me.Item(from_stack_1)
  loc_BAA57A: LitI2_Byte 0
  loc_BAA57C: LitVar_Missing var_D4
  loc_BAA57F: LitI2_Byte 0
  loc_BAA581: FLdZeroAd var_128
  loc_BAA584: CVarAd
  loc_BAA588: PopAdLdVar
  loc_BAA589: FLdPr Me
  loc_BAA58C: MemLdStr global_100
  loc_BAA58F: FLdPr Me
  loc_BAA592: MemLdStr global_96
  loc_BAA595: AryLock
  loc_BAA598: Ary1LdPr
  loc_BAA599: MemLdRfVar from_stack_1.global_20
  loc_BAA59C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BAA5A1: AryUnlock
  loc_BAA5A4: FFreeAd var_B0 = ""
  loc_BAA5AB: FFreeVar var_C4 = ""
  loc_BAA5B2: LitI2_Byte 1
  loc_BAA5B4: PopTmpLdAd2 var_B2
  loc_BAA5B7: FLdPr var_E8
  loc_BAA5BA: Call clsapremio.Move(from_stack_1v)
  loc_BAA5BF: FLdPr Me
  loc_BAA5C2: MemLdRfVar from_stack_1.global_100
  loc_BAA5C5: NextI4 var_120, loc_BAA330
  loc_BAA5CA: LitVar_FALSE
  loc_BAA5CE: PopAdLdVar
  loc_BAA5CF: FLdPrThis
  loc_BAA5D0: VCallAd Control_ID_Pbar
  loc_BAA5D3: FStAdFunc var_B0
  loc_BAA5D6: FLdPr var_B0
  loc_BAA5D9: LateIdSt
  loc_BAA5DE: FFree1Ad var_B0
  loc_BAA5E1: LitNothing
  loc_BAA5E3: FStAd var_E8 
  loc_BAA5E7: LitI2_Byte &HFF
  loc_BAA5E9: FLdPr Me
  loc_BAA5EC: MemStI2 bGenerado
  loc_BAA5EF: LitI4 0
  loc_BAA5F4: CI2I4
  loc_BAA5F5: FLdPr Me
  loc_BAA5F8: Me.MousePointer = from_stack_1
  loc_BAA5FD: LitVarStr var_9C, vbNullString
  loc_BAA602: PopAdLdVar
  loc_BAA603: FLdPr Me
  loc_BAA606: VCallAd Control_ID_statusBar
  loc_BAA609: FStAdFunc var_B0
  loc_BAA60C: FLdPr var_B0
  loc_BAA60F: LateIdSt
  loc_BAA614: FFree1Ad var_B0
  loc_BAA617: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B04A94
  'Data Table: 485E14
  loc_B04888: FLdRfVar var_88
  loc_B0488B: LitI2_Byte 0
  loc_B0488D: LitI2_Byte &HFF
  loc_B0488F: ImpAdLdI4 MemVar_D93C84
  loc_B04892: FLdPr Me
  loc_B04895: MemLdRfVar from_stack_1.global_56
  loc_B04898: NewIfNullPr IFileSystem3
  loc_B0489B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B048A0: ILdRf var_88
  loc_B048A3: FLdPr Me
  loc_B048A6: MemStVarAd
  loc_B048AA: FFree1Ad var_88
  loc_B048AD: LitI2_Byte &HFF
  loc_B048AF: ImpAdStI2 MemVar_D93C8A
  loc_B048B2: Call Proc_352_25_BA1EFC()
  loc_B048B7: FLdPr Me
  loc_B048BA: MemLdStr global_96
  loc_B048BD: LitI2_Byte 1
  loc_B048BF: FnUBound
  loc_B048C1: LitI4 0
  loc_B048C6: EqI4
  loc_B048C7: BranchF loc_B04909
  loc_B048CA: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B048CF: PopAdLdVar
  loc_B048D0: FLdPr Me
  loc_B048D3: MemLdRfVar from_stack_1.global_60
  loc_B048D6: LdPrVar
  loc_B048D8: LateMemCall
  loc_B048DE: LitVarStr var_98, "   <td colspan=""4"" align=""center""><strong>SIN MOVIMIENTO</strong></td>"
  loc_B048E3: PopAdLdVar
  loc_B048E4: FLdPr Me
  loc_B048E7: MemLdRfVar from_stack_1.global_60
  loc_B048EA: LdPrVar
  loc_B048EC: LateMemCall
  loc_B048F2: LitVarStr var_98, "     </tr>"
  loc_B048F7: PopAdLdVar
  loc_B048F8: FLdPr Me
  loc_B048FB: MemLdRfVar from_stack_1.global_60
  loc_B048FE: LdPrVar
  loc_B04900: LateMemCall
  loc_B04906: Branch loc_B04A77
  loc_B04909: LitI4 1
  loc_B0490E: FLdPr Me
  loc_B04911: MemLdRfVar from_stack_1.global_100
  loc_B04914: FLdPr Me
  loc_B04917: MemLdStr global_96
  loc_B0491A: LitI2_Byte 1
  loc_B0491C: FnUBound
  loc_B0491E: ForI4 var_B0
  loc_B04924: FLdPr Me
  loc_B04927: MemLdStr global_100
  loc_B0492A: FLdPr Me
  loc_B0492D: MemLdStr global_96
  loc_B04930: AryLock
  loc_B04933: Ary1LdRf
  loc_B04934: FStR4 var_B8
  loc_B04937: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B0493C: PopAdLdVar
  loc_B0493D: FLdPr Me
  loc_B04940: MemLdRfVar from_stack_1.global_60
  loc_B04943: LdPrVar
  loc_B04945: LateMemCall
  loc_B0494B: LitStr vbNullString
  loc_B0494E: LitI2_Byte 0
  loc_B04950: LitI2_Byte 0
  loc_B04952: LitI2_Byte 0
  loc_B04954: LitStr "right"
  loc_B04957: FMemLdR4 var_B8(0)
  loc_B0495C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B04961: CVarStr var_C8
  loc_B04964: PopAdLdVar
  loc_B04965: FLdPr Me
  loc_B04968: MemLdRfVar from_stack_1.global_60
  loc_B0496B: LdPrVar
  loc_B0496D: LateMemCall
  loc_B04973: FFree1Var var_C8 = ""
  loc_B04976: LitStr vbNullString
  loc_B04979: LitI2_Byte 0
  loc_B0497B: LitI2_Byte 0
  loc_B0497D: LitI2_Byte 0
  loc_B0497F: LitStr "right"
  loc_B04982: FMemLdR4 var_B8(4)
  loc_B04987: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0498C: CVarStr var_C8
  loc_B0498F: PopAdLdVar
  loc_B04990: FLdPr Me
  loc_B04993: MemLdRfVar from_stack_1.global_60
  loc_B04996: LdPrVar
  loc_B04998: LateMemCall
  loc_B0499E: FFree1Var var_C8 = ""
  loc_B049A1: LitStr vbNullString
  loc_B049A4: LitI2_Byte 0
  loc_B049A6: LitI2_Byte 0
  loc_B049A8: LitI2_Byte 0
  loc_B049AA: LitStr "right"
  loc_B049AD: FMemLdR4 var_B8(8)
  loc_B049B2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B049B7: CVarStr var_C8
  loc_B049BA: PopAdLdVar
  loc_B049BB: FLdPr Me
  loc_B049BE: MemLdRfVar from_stack_1.global_60
  loc_B049C1: LdPrVar
  loc_B049C3: LateMemCall
  loc_B049C9: FFree1Var var_C8 = ""
  loc_B049CC: LitStr vbNullString
  loc_B049CF: LitI2_Byte 0
  loc_B049D1: LitI2_Byte 0
  loc_B049D3: LitI2_Byte 0
  loc_B049D5: LitStr "center"
  loc_B049D8: FMemLdR4 var_B8(12)
  loc_B049DD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B049E2: CVarStr var_C8
  loc_B049E5: PopAdLdVar
  loc_B049E6: FLdPr Me
  loc_B049E9: MemLdRfVar from_stack_1.global_60
  loc_B049EC: LdPrVar
  loc_B049EE: LateMemCall
  loc_B049F4: FFree1Var var_C8 = ""
  loc_B049F7: LitStr vbNullString
  loc_B049FA: LitI2_Byte 0
  loc_B049FC: LitI2_Byte 0
  loc_B049FE: LitI2_Byte 0
  loc_B04A00: LitStr "right"
  loc_B04A03: FMemLdR4 var_B8(16)
  loc_B04A08: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B04A0D: CVarStr var_C8
  loc_B04A10: PopAdLdVar
  loc_B04A11: FLdPr Me
  loc_B04A14: MemLdRfVar from_stack_1.global_60
  loc_B04A17: LdPrVar
  loc_B04A19: LateMemCall
  loc_B04A1F: FFree1Var var_C8 = ""
  loc_B04A22: LitStr vbNullString
  loc_B04A25: LitI2_Byte 0
  loc_B04A27: LitI2_Byte 0
  loc_B04A29: LitI2_Byte 0
  loc_B04A2B: LitStr "right"
  loc_B04A2E: FMemLdR4 var_B8(20)
  loc_B04A33: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B04A38: CVarStr var_C8
  loc_B04A3B: PopAdLdVar
  loc_B04A3C: FLdPr Me
  loc_B04A3F: MemLdRfVar from_stack_1.global_60
  loc_B04A42: LdPrVar
  loc_B04A44: LateMemCall
  loc_B04A4A: FFree1Var var_C8 = ""
  loc_B04A4D: LitVarStr var_98, "     </tr>"
  loc_B04A52: PopAdLdVar
  loc_B04A53: FLdPr Me
  loc_B04A56: MemLdRfVar from_stack_1.global_60
  loc_B04A59: LdPrVar
  loc_B04A5B: LateMemCall
  loc_B04A61: LitI4 0
  loc_B04A66: FStR4 var_B8
  loc_B04A69: AryUnlock
  loc_B04A6C: FLdPr Me
  loc_B04A6F: MemLdRfVar from_stack_1.global_100
  loc_B04A72: NextI4 var_B0, loc_B04924
  loc_B04A77: Call Proc_352_26_A0F468()
  loc_B04A7C: FLdPr Me
  loc_B04A7F: MemLdRfVar from_stack_1.global_60
  loc_B04A82: LdPrVar
  loc_B04A84: LateMemCall
  loc_B04A8A: LitStr vbNullString
  loc_B04A8D: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B04A92: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C2184
  'Data Table: 485E14
  loc_9C216C: LitI2_Byte 0
  loc_9C216E: FLdPr Me
  loc_9C2171: MemStI2 bLogos
  loc_9C2174: Call GeneraHTML()
  loc_9C2179: LitI2_Byte &HFF
  loc_9C217B: FLdPr Me
  loc_9C217E: MemStI2 bLogos
  loc_9C2181: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B07AF4
  'Data Table: 485E14
  loc_B0790C: OnErrorGoto loc_B07A75
  loc_B0790F: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B07914: FStStrNoPop var_88
  loc_B07917: LitStr "\cajaforence.txt"
  loc_B0791A: ConcatStr
  loc_B0791B: ImpAdStStr MemVar_D93030
  loc_B0791F: FFree1Str var_88
  loc_B07922: ImpAdLdI4 MemVar_D93030
  loc_B07925: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B0792A: LitStr "	"
  loc_B0792D: FStStrCopy var_8C
  loc_B07930: FLdRfVar var_90
  loc_B07933: LitI2_Byte 0
  loc_B07935: LitI2_Byte &HFF
  loc_B07937: ImpAdLdI4 MemVar_D93030
  loc_B0793A: FLdPr Me
  loc_B0793D: MemLdRfVar from_stack_1.global_56
  loc_B07940: NewIfNullPr IFileSystem3
  loc_B07943: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B07948: ILdRf var_90
  loc_B0794B: FLdPr Me
  loc_B0794E: MemStVarAd
  loc_B07952: FFree1Ad var_90
  loc_B07955: FLdPr Me
  loc_B07958: MemLdStr global_96
  loc_B0795B: LitI2_Byte 1
  loc_B0795D: FnUBound
  loc_B0795F: LitI4 0
  loc_B07964: EqI4
  loc_B07965: BranchF loc_B079C7
  loc_B07968: LitI4 0
  loc_B0796D: LitI4 1
  loc_B07972: FLdRfVar var_94
  loc_B07975: Redim
  loc_B0797F: LitVarStr var_A4, "|"
  loc_B07984: LitI4 0
  loc_B07989: ILdRf var_94
  loc_B0798C: Ary1StVarCopy
  loc_B0798E: LitVarStr var_B4, "SIN MOVIMIENTO"
  loc_B07993: LitI4 1
  loc_B07998: ILdRf var_94
  loc_B0799B: Ary1StVarCopy
  loc_B0799D: FLdRfVar var_94
  loc_B079A0: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B079A5: FStStr var_88
  loc_B079A8: FLdRfVar var_94
  loc_B079AB: Erase
  loc_B079AC: FLdZeroAd var_88
  loc_B079AF: CVarStr var_C4
  loc_B079B2: PopAdLdVar
  loc_B079B3: FLdPr Me
  loc_B079B6: MemLdRfVar from_stack_1.global_76
  loc_B079B9: LdPrVar
  loc_B079BB: LateMemCall
  loc_B079C1: FFree1Var var_C4 = ""
  loc_B079C4: Branch loc_B07A63
  loc_B079C7: LitI4 1
  loc_B079CC: FLdPr Me
  loc_B079CF: MemLdRfVar from_stack_1.global_100
  loc_B079D2: FLdPr Me
  loc_B079D5: MemLdStr global_96
  loc_B079D8: LitI2_Byte 1
  loc_B079DA: FnUBound
  loc_B079DC: ForI4 var_DC
  loc_B079E2: FLdPr Me
  loc_B079E5: MemLdStr global_100
  loc_B079E8: FLdPr Me
  loc_B079EB: MemLdStr global_96
  loc_B079EE: AryLock
  loc_B079F1: Ary1LdRf
  loc_B079F2: FStR4 var_E4
  loc_B079F5: FMemLdR4 var_E4(0)
  loc_B079FA: FMemLdR4 var_E4(4)
  loc_B079FF: ConcatStr
  loc_B07A00: FStStrNoPop var_88
  loc_B07A03: FMemLdR4 var_E4(8)
  loc_B07A08: ConcatStr
  loc_B07A09: FStStrNoPop var_E8
  loc_B07A0C: FMemLdR4 var_E4(12)
  loc_B07A11: ConcatStr
  loc_B07A12: FStStrNoPop var_EC
  loc_B07A15: LitStr "P"
  loc_B07A18: ConcatStr
  loc_B07A19: FStStrNoPop var_F0
  loc_B07A1C: FMemLdR4 var_E4(16)
  loc_B07A21: ConcatStr
  loc_B07A22: FStStrNoPop var_F4
  loc_B07A25: FMemLdR4 var_E4(20)
  loc_B07A2A: ConcatStr
  loc_B07A2B: CVarStr var_C4
  loc_B07A2E: PopAdLdVar
  loc_B07A2F: FLdPr Me
  loc_B07A32: MemLdRfVar from_stack_1.global_76
  loc_B07A35: LdPrVar
  loc_B07A37: LateMemCall
  loc_B07A3D: FFreeStr var_88 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B07A4A: FFree1Var var_C4 = ""
  loc_B07A4D: LitI4 0
  loc_B07A52: FStR4 var_E4
  loc_B07A55: AryUnlock
  loc_B07A58: FLdPr Me
  loc_B07A5B: MemLdRfVar from_stack_1.global_100
  loc_B07A5E: NextI4 var_DC, loc_B079E2
  loc_B07A63: FLdPr Me
  loc_B07A66: MemLdRfVar from_stack_1.global_76
  loc_B07A69: LdPrVar
  loc_B07A6B: LateMemCall
  loc_B07A71: On Error GoTo 0
  loc_B07A74: ExitProcHresult
  loc_B07A75: LitVar_Missing var_12C
  loc_B07A78: LitVar_Missing var_11C
  loc_B07A7B: LitVar_Missing var_10C
  loc_B07A7E: LitI4 0
  loc_B07A83: LitStr "Error "
  loc_B07A86: FLdRfVar var_F8
  loc_B07A89: ImpAdCallI2 Err 'rtcErrObj
  loc_B07A8E: FStAdFunc var_90
  loc_B07A91: FLdPr var_90
  loc_B07A94:  = Err.Number
  loc_B07A99: ILdRf var_F8
  loc_B07A9C: CStrI4
  loc_B07A9E: FStStrNoPop var_88
  loc_B07AA1: ConcatStr
  loc_B07AA2: FStStrNoPop var_E8
  loc_B07AA5: LitStr " ("
  loc_B07AA8: ConcatStr
  loc_B07AA9: FStStrNoPop var_F0
  loc_B07AAC: FLdRfVar var_EC
  loc_B07AAF: ImpAdCallI2 Err 'rtcErrObj
  loc_B07AB4: FStAdFunc var_FC
  loc_B07AB7: FLdPr var_FC
  loc_B07ABA:  = Err.Description
  loc_B07ABF: ILdRf var_EC
  loc_B07AC2: ConcatStr
  loc_B07AC3: FStStrNoPop var_F4
  loc_B07AC6: LitStr ") in procedure GeneraTXT of Formulario GeneracionTXTCajaForence"
  loc_B07AC9: ConcatStr
  loc_B07ACA: CVarStr var_C4
  loc_B07ACD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B07AD2: FFreeStr var_88 = "": var_E8 = "": var_F0 = "": var_EC = ""
  loc_B07ADF: FFreeAd var_90 = ""
  loc_B07AE6: FFreeVar var_C4 = "": var_10C = "": var_11C = ""
  loc_B07AF1: ExitProcHresult
End Sub

Private Function Proc_352_25_BA1EFC() 'BA1EFC
  'Data Table: 485E14
  loc_BA1900: LitVarStr var_98, "<html>"
  loc_BA1905: PopAdLdVar
  loc_BA1906: FLdPr Me
  loc_BA1909: MemLdRfVar from_stack_1.global_60
  loc_BA190C: LdPrVar
  loc_BA190E: LateMemCall
  loc_BA1914: LitVarStr var_98, "<head>"
  loc_BA1919: PopAdLdVar
  loc_BA191A: FLdPr Me
  loc_BA191D: MemLdRfVar from_stack_1.global_60
  loc_BA1920: LdPrVar
  loc_BA1922: LateMemCall
  loc_BA1928: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BA192D: PopAdLdVar
  loc_BA192E: FLdPr Me
  loc_BA1931: MemLdRfVar from_stack_1.global_60
  loc_BA1934: LdPrVar
  loc_BA1936: LateMemCall
  loc_BA193C: LitStr "<title>"
  loc_BA193F: FLdRfVar var_AC
  loc_BA1942: FLdPr Me
  loc_BA1945:  = Me.Caption
  loc_BA194A: ILdRf var_AC
  loc_BA194D: ConcatStr
  loc_BA194E: FStStrNoPop var_B0
  loc_BA1951: LitStr "</title>"
  loc_BA1954: ConcatStr
  loc_BA1955: CVarStr var_C0
  loc_BA1958: PopAdLdVar
  loc_BA1959: FLdPr Me
  loc_BA195C: MemLdRfVar from_stack_1.global_60
  loc_BA195F: LdPrVar
  loc_BA1961: LateMemCall
  loc_BA1967: FFreeStr var_AC = ""
  loc_BA196E: FFree1Var var_C0 = ""
  loc_BA1971: LitVarStr var_98, "<style type=""text/css"">"
  loc_BA1976: PopAdLdVar
  loc_BA1977: FLdPr Me
  loc_BA197A: MemLdRfVar from_stack_1.global_60
  loc_BA197D: LdPrVar
  loc_BA197F: LateMemCall
  loc_BA1985: LitVarStr var_98, ".Titulo1 {"
  loc_BA198A: PopAdLdVar
  loc_BA198B: FLdPr Me
  loc_BA198E: MemLdRfVar from_stack_1.global_60
  loc_BA1991: LdPrVar
  loc_BA1993: LateMemCall
  loc_BA1999: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA199E: PopAdLdVar
  loc_BA199F: FLdPr Me
  loc_BA19A2: MemLdRfVar from_stack_1.global_60
  loc_BA19A5: LdPrVar
  loc_BA19A7: LateMemCall
  loc_BA19AD: LitVarStr var_98, " font-size: 18px;"
  loc_BA19B2: PopAdLdVar
  loc_BA19B3: FLdPr Me
  loc_BA19B6: MemLdRfVar from_stack_1.global_60
  loc_BA19B9: LdPrVar
  loc_BA19BB: LateMemCall
  loc_BA19C1: LitVarStr var_98, " font-weight: bold;"
  loc_BA19C6: PopAdLdVar
  loc_BA19C7: FLdPr Me
  loc_BA19CA: MemLdRfVar from_stack_1.global_60
  loc_BA19CD: LdPrVar
  loc_BA19CF: LateMemCall
  loc_BA19D5: LitVarStr var_98, "}"
  loc_BA19DA: PopAdLdVar
  loc_BA19DB: FLdPr Me
  loc_BA19DE: MemLdRfVar from_stack_1.global_60
  loc_BA19E1: LdPrVar
  loc_BA19E3: LateMemCall
  loc_BA19E9: LitVarStr var_98, ".Titulo2 {"
  loc_BA19EE: PopAdLdVar
  loc_BA19EF: FLdPr Me
  loc_BA19F2: MemLdRfVar from_stack_1.global_60
  loc_BA19F5: LdPrVar
  loc_BA19F7: LateMemCall
  loc_BA19FD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA1A02: PopAdLdVar
  loc_BA1A03: FLdPr Me
  loc_BA1A06: MemLdRfVar from_stack_1.global_60
  loc_BA1A09: LdPrVar
  loc_BA1A0B: LateMemCall
  loc_BA1A11: LitVarStr var_98, " font-size: 14px;"
  loc_BA1A16: PopAdLdVar
  loc_BA1A17: FLdPr Me
  loc_BA1A1A: MemLdRfVar from_stack_1.global_60
  loc_BA1A1D: LdPrVar
  loc_BA1A1F: LateMemCall
  loc_BA1A25: LitVarStr var_98, " font-weight: bold;"
  loc_BA1A2A: PopAdLdVar
  loc_BA1A2B: FLdPr Me
  loc_BA1A2E: MemLdRfVar from_stack_1.global_60
  loc_BA1A31: LdPrVar
  loc_BA1A33: LateMemCall
  loc_BA1A39: LitVarStr var_98, "}"
  loc_BA1A3E: PopAdLdVar
  loc_BA1A3F: FLdPr Me
  loc_BA1A42: MemLdRfVar from_stack_1.global_60
  loc_BA1A45: LdPrVar
  loc_BA1A47: LateMemCall
  loc_BA1A4D: LitVarStr var_98, ".Normal {"
  loc_BA1A52: PopAdLdVar
  loc_BA1A53: FLdPr Me
  loc_BA1A56: MemLdRfVar from_stack_1.global_60
  loc_BA1A59: LdPrVar
  loc_BA1A5B: LateMemCall
  loc_BA1A61: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA1A66: PopAdLdVar
  loc_BA1A67: FLdPr Me
  loc_BA1A6A: MemLdRfVar from_stack_1.global_60
  loc_BA1A6D: LdPrVar
  loc_BA1A6F: LateMemCall
  loc_BA1A75: LitVarStr var_98, " font-size: 12px;"
  loc_BA1A7A: PopAdLdVar
  loc_BA1A7B: FLdPr Me
  loc_BA1A7E: MemLdRfVar from_stack_1.global_60
  loc_BA1A81: LdPrVar
  loc_BA1A83: LateMemCall
  loc_BA1A89: LitVarStr var_98, " font-style: normal;"
  loc_BA1A8E: PopAdLdVar
  loc_BA1A8F: FLdPr Me
  loc_BA1A92: MemLdRfVar from_stack_1.global_60
  loc_BA1A95: LdPrVar
  loc_BA1A97: LateMemCall
  loc_BA1A9D: LitVarStr var_98, " font-weight: normal;"
  loc_BA1AA2: PopAdLdVar
  loc_BA1AA3: FLdPr Me
  loc_BA1AA6: MemLdRfVar from_stack_1.global_60
  loc_BA1AA9: LdPrVar
  loc_BA1AAB: LateMemCall
  loc_BA1AB1: LitVarStr var_98, " font-variant: normal;"
  loc_BA1AB6: PopAdLdVar
  loc_BA1AB7: FLdPr Me
  loc_BA1ABA: MemLdRfVar from_stack_1.global_60
  loc_BA1ABD: LdPrVar
  loc_BA1ABF: LateMemCall
  loc_BA1AC5: LitVarStr var_98, "}"
  loc_BA1ACA: PopAdLdVar
  loc_BA1ACB: FLdPr Me
  loc_BA1ACE: MemLdRfVar from_stack_1.global_60
  loc_BA1AD1: LdPrVar
  loc_BA1AD3: LateMemCall
  loc_BA1AD9: LitVarStr var_98, ".Encabezado {"
  loc_BA1ADE: PopAdLdVar
  loc_BA1ADF: FLdPr Me
  loc_BA1AE2: MemLdRfVar from_stack_1.global_60
  loc_BA1AE5: LdPrVar
  loc_BA1AE7: LateMemCall
  loc_BA1AED: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BA1AF2: PopAdLdVar
  loc_BA1AF3: FLdPr Me
  loc_BA1AF6: MemLdRfVar from_stack_1.global_60
  loc_BA1AF9: LdPrVar
  loc_BA1AFB: LateMemCall
  loc_BA1B01: LitVarStr var_98, " font-size: 11px;"
  loc_BA1B06: PopAdLdVar
  loc_BA1B07: FLdPr Me
  loc_BA1B0A: MemLdRfVar from_stack_1.global_60
  loc_BA1B0D: LdPrVar
  loc_BA1B0F: LateMemCall
  loc_BA1B15: LitVarStr var_98, " font-weight: bold;"
  loc_BA1B1A: PopAdLdVar
  loc_BA1B1B: FLdPr Me
  loc_BA1B1E: MemLdRfVar from_stack_1.global_60
  loc_BA1B21: LdPrVar
  loc_BA1B23: LateMemCall
  loc_BA1B29: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BA1B2E: PopAdLdVar
  loc_BA1B2F: FLdPr Me
  loc_BA1B32: MemLdRfVar from_stack_1.global_60
  loc_BA1B35: LdPrVar
  loc_BA1B37: LateMemCall
  loc_BA1B3D: LitVarStr var_98, "}"
  loc_BA1B42: PopAdLdVar
  loc_BA1B43: FLdPr Me
  loc_BA1B46: MemLdRfVar from_stack_1.global_60
  loc_BA1B49: LdPrVar
  loc_BA1B4B: LateMemCall
  loc_BA1B51: LitVarStr var_98, ".LineaDato {"
  loc_BA1B56: PopAdLdVar
  loc_BA1B57: FLdPr Me
  loc_BA1B5A: MemLdRfVar from_stack_1.global_60
  loc_BA1B5D: LdPrVar
  loc_BA1B5F: LateMemCall
  loc_BA1B65: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA1B6A: PopAdLdVar
  loc_BA1B6B: FLdPr Me
  loc_BA1B6E: MemLdRfVar from_stack_1.global_60
  loc_BA1B71: LdPrVar
  loc_BA1B73: LateMemCall
  loc_BA1B79: LitVarStr var_98, " font-size: 10px;"
  loc_BA1B7E: PopAdLdVar
  loc_BA1B7F: FLdPr Me
  loc_BA1B82: MemLdRfVar from_stack_1.global_60
  loc_BA1B85: LdPrVar
  loc_BA1B87: LateMemCall
  loc_BA1B8D: LitVarStr var_98, "}"
  loc_BA1B92: PopAdLdVar
  loc_BA1B93: FLdPr Me
  loc_BA1B96: MemLdRfVar from_stack_1.global_60
  loc_BA1B99: LdPrVar
  loc_BA1B9B: LateMemCall
  loc_BA1BA1: LitVarStr var_98, ".Totales {"
  loc_BA1BA6: PopAdLdVar
  loc_BA1BA7: FLdPr Me
  loc_BA1BAA: MemLdRfVar from_stack_1.global_60
  loc_BA1BAD: LdPrVar
  loc_BA1BAF: LateMemCall
  loc_BA1BB5: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA1BBA: PopAdLdVar
  loc_BA1BBB: FLdPr Me
  loc_BA1BBE: MemLdRfVar from_stack_1.global_60
  loc_BA1BC1: LdPrVar
  loc_BA1BC3: LateMemCall
  loc_BA1BC9: LitVarStr var_98, " font-size: 12px;"
  loc_BA1BCE: PopAdLdVar
  loc_BA1BCF: FLdPr Me
  loc_BA1BD2: MemLdRfVar from_stack_1.global_60
  loc_BA1BD5: LdPrVar
  loc_BA1BD7: LateMemCall
  loc_BA1BDD: LitVarStr var_98, " font-weight: bold;"
  loc_BA1BE2: PopAdLdVar
  loc_BA1BE3: FLdPr Me
  loc_BA1BE6: MemLdRfVar from_stack_1.global_60
  loc_BA1BE9: LdPrVar
  loc_BA1BEB: LateMemCall
  loc_BA1BF1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BA1BF6: PopAdLdVar
  loc_BA1BF7: FLdPr Me
  loc_BA1BFA: MemLdRfVar from_stack_1.global_60
  loc_BA1BFD: LdPrVar
  loc_BA1BFF: LateMemCall
  loc_BA1C05: LitVarStr var_98, "}"
  loc_BA1C0A: PopAdLdVar
  loc_BA1C0B: FLdPr Me
  loc_BA1C0E: MemLdRfVar from_stack_1.global_60
  loc_BA1C11: LdPrVar
  loc_BA1C13: LateMemCall
  loc_BA1C19: LitVarStr var_98, ".SubTotales {"
  loc_BA1C1E: PopAdLdVar
  loc_BA1C1F: FLdPr Me
  loc_BA1C22: MemLdRfVar from_stack_1.global_60
  loc_BA1C25: LdPrVar
  loc_BA1C27: LateMemCall
  loc_BA1C2D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA1C32: PopAdLdVar
  loc_BA1C33: FLdPr Me
  loc_BA1C36: MemLdRfVar from_stack_1.global_60
  loc_BA1C39: LdPrVar
  loc_BA1C3B: LateMemCall
  loc_BA1C41: LitVarStr var_98, " font-size: 10px;"
  loc_BA1C46: PopAdLdVar
  loc_BA1C47: FLdPr Me
  loc_BA1C4A: MemLdRfVar from_stack_1.global_60
  loc_BA1C4D: LdPrVar
  loc_BA1C4F: LateMemCall
  loc_BA1C55: LitVarStr var_98, " font-weight: bold;"
  loc_BA1C5A: PopAdLdVar
  loc_BA1C5B: FLdPr Me
  loc_BA1C5E: MemLdRfVar from_stack_1.global_60
  loc_BA1C61: LdPrVar
  loc_BA1C63: LateMemCall
  loc_BA1C69: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BA1C6E: PopAdLdVar
  loc_BA1C6F: FLdPr Me
  loc_BA1C72: MemLdRfVar from_stack_1.global_60
  loc_BA1C75: LdPrVar
  loc_BA1C77: LateMemCall
  loc_BA1C7D: LitVarStr var_98, "}"
  loc_BA1C82: PopAdLdVar
  loc_BA1C83: FLdPr Me
  loc_BA1C86: MemLdRfVar from_stack_1.global_60
  loc_BA1C89: LdPrVar
  loc_BA1C8B: LateMemCall
  loc_BA1C91: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BA1C96: PopAdLdVar
  loc_BA1C97: FLdPr Me
  loc_BA1C9A: MemLdRfVar from_stack_1.global_60
  loc_BA1C9D: LdPrVar
  loc_BA1C9F: LateMemCall
  loc_BA1CA5: LitVarStr var_98, "</style>"
  loc_BA1CAA: PopAdLdVar
  loc_BA1CAB: FLdPr Me
  loc_BA1CAE: MemLdRfVar from_stack_1.global_60
  loc_BA1CB1: LdPrVar
  loc_BA1CB3: LateMemCall
  loc_BA1CB9: LitI4 0
  loc_BA1CBE: FStStrCopy var_B0
  loc_BA1CC1: FLdRfVar var_B0
  loc_BA1CC4: LitI4 0
  loc_BA1CC9: FStStrCopy var_AC
  loc_BA1CCC: FLdRfVar var_AC
  loc_BA1CCF: LitI2_Byte &HFF
  loc_BA1CD1: PopTmpLdAd2 var_C2
  loc_BA1CD4: FLdPr Me
  loc_BA1CD7: MemLdRfVar from_stack_1.global_60
  loc_BA1CDA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BA1CDF: FFreeStr var_AC = ""
  loc_BA1CE6: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BA1CEB: PopAdLdVar
  loc_BA1CEC: FLdPr Me
  loc_BA1CEF: MemLdRfVar from_stack_1.global_60
  loc_BA1CF2: LdPrVar
  loc_BA1CF4: LateMemCall
  loc_BA1CFA: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BA1CFF: PopAdLdVar
  loc_BA1D00: FLdPr Me
  loc_BA1D03: MemLdRfVar from_stack_1.global_60
  loc_BA1D06: LdPrVar
  loc_BA1D08: LateMemCall
  loc_BA1D0E: LitVarStr var_98, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p> "
  loc_BA1D13: PopAdLdVar
  loc_BA1D14: FLdPr Me
  loc_BA1D17: MemLdRfVar from_stack_1.global_60
  loc_BA1D1A: LdPrVar
  loc_BA1D1C: LateMemCall
  loc_BA1D22: FLdPr Me
  loc_BA1D25: MemLdI2 bLogos
  loc_BA1D28: BranchF loc_BA1D83
  loc_BA1D2B: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BA1D2E: LitI2_Byte &H5F
  loc_BA1D30: CStrUI1
  loc_BA1D32: FStStrNoPop var_AC
  loc_BA1D35: ConcatStr
  loc_BA1D36: FStStrNoPop var_B0
  loc_BA1D39: LitStr """ height="""
  loc_BA1D3C: ConcatStr
  loc_BA1D3D: FStStrNoPop var_C8
  loc_BA1D40: LitI2_Byte &H3C
  loc_BA1D42: CStrUI1
  loc_BA1D44: FStStrNoPop var_CC
  loc_BA1D47: ConcatStr
  loc_BA1D48: FStStrNoPop var_D0
  loc_BA1D4B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BA1D4E: ConcatStr
  loc_BA1D4F: FStStrNoPop var_D4
  loc_BA1D52: LitStr "Municipalidad de Guaymallén"
  loc_BA1D55: ConcatStr
  loc_BA1D56: FStStrNoPop var_D8
  loc_BA1D59: LitStr "</p>"
  loc_BA1D5C: ConcatStr
  loc_BA1D5D: CVarStr var_C0
  loc_BA1D60: PopAdLdVar
  loc_BA1D61: FLdPr Me
  loc_BA1D64: MemLdRfVar from_stack_1.global_60
  loc_BA1D67: LdPrVar
  loc_BA1D69: LateMemCall
  loc_BA1D6F: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BA1D80: FFree1Var var_C0 = ""
  loc_BA1D83: LitStr "    <p>"
  loc_BA1D86: FLdRfVar var_AC
  loc_BA1D89: FLdPr Me
  loc_BA1D8C:  = Me.Caption
  loc_BA1D91: ILdRf var_AC
  loc_BA1D94: ConcatStr
  loc_BA1D95: FStStrNoPop var_B0
  loc_BA1D98: LitStr "</p></th>"
  loc_BA1D9B: ConcatStr
  loc_BA1D9C: CVarStr var_C0
  loc_BA1D9F: PopAdLdVar
  loc_BA1DA0: FLdPr Me
  loc_BA1DA3: MemLdRfVar from_stack_1.global_60
  loc_BA1DA6: LdPrVar
  loc_BA1DA8: LateMemCall
  loc_BA1DAE: FFreeStr var_AC = ""
  loc_BA1DB5: FFree1Var var_C0 = ""
  loc_BA1DB8: LitVarStr var_98, "  </tr>"
  loc_BA1DBD: PopAdLdVar
  loc_BA1DBE: FLdPr Me
  loc_BA1DC1: MemLdRfVar from_stack_1.global_60
  loc_BA1DC4: LdPrVar
  loc_BA1DC6: LateMemCall
  loc_BA1DCC: LitVarStr var_98, "  <tr>"
  loc_BA1DD1: PopAdLdVar
  loc_BA1DD2: FLdPr Me
  loc_BA1DD5: MemLdRfVar from_stack_1.global_60
  loc_BA1DD8: LdPrVar
  loc_BA1DDA: LateMemCall
  loc_BA1DE0: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BA1DE5: PopAdLdVar
  loc_BA1DE6: FLdPr Me
  loc_BA1DE9: MemLdRfVar from_stack_1.global_60
  loc_BA1DEC: LdPrVar
  loc_BA1DEE: LateMemCall
  loc_BA1DF4: LitVarStr var_98, "  </tr>"
  loc_BA1DF9: PopAdLdVar
  loc_BA1DFA: FLdPr Me
  loc_BA1DFD: MemLdRfVar from_stack_1.global_60
  loc_BA1E00: LdPrVar
  loc_BA1E02: LateMemCall
  loc_BA1E08: LitVarStr var_98, "</table>"
  loc_BA1E0D: PopAdLdVar
  loc_BA1E0E: FLdPr Me
  loc_BA1E11: MemLdRfVar from_stack_1.global_60
  loc_BA1E14: LdPrVar
  loc_BA1E16: LateMemCall
  loc_BA1E1C: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BA1E21: PopAdLdVar
  loc_BA1E22: FLdPr Me
  loc_BA1E25: MemLdRfVar from_stack_1.global_60
  loc_BA1E28: LdPrVar
  loc_BA1E2A: LateMemCall
  loc_BA1E30: LitVarStr var_98, "  <thead>"
  loc_BA1E35: PopAdLdVar
  loc_BA1E36: FLdPr Me
  loc_BA1E39: MemLdRfVar from_stack_1.global_60
  loc_BA1E3C: LdPrVar
  loc_BA1E3E: LateMemCall
  loc_BA1E44: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BA1E49: PopAdLdVar
  loc_BA1E4A: FLdPr Me
  loc_BA1E4D: MemLdRfVar from_stack_1.global_60
  loc_BA1E50: LdPrVar
  loc_BA1E52: LateMemCall
  loc_BA1E58: LitVarStr var_98, "    <th>Juzgado</th>"
  loc_BA1E5D: PopAdLdVar
  loc_BA1E5E: FLdPr Me
  loc_BA1E61: MemLdRfVar from_stack_1.global_60
  loc_BA1E64: LdPrVar
  loc_BA1E66: LateMemCall
  loc_BA1E6C: LitVarStr var_98, "    <th>Juicio</th>"
  loc_BA1E71: PopAdLdVar
  loc_BA1E72: FLdPr Me
  loc_BA1E75: MemLdRfVar from_stack_1.global_60
  loc_BA1E78: LdPrVar
  loc_BA1E7A: LateMemCall
  loc_BA1E80: LitVarStr var_98, "    <th>Demanda</th>"
  loc_BA1E85: PopAdLdVar
  loc_BA1E86: FLdPr Me
  loc_BA1E89: MemLdRfVar from_stack_1.global_60
  loc_BA1E8C: LdPrVar
  loc_BA1E8E: LateMemCall
  loc_BA1E94: LitVarStr var_98, "    <th>Fecha</th>"
  loc_BA1E99: PopAdLdVar
  loc_BA1E9A: FLdPr Me
  loc_BA1E9D: MemLdRfVar from_stack_1.global_60
  loc_BA1EA0: LdPrVar
  loc_BA1EA2: LateMemCall
  loc_BA1EA8: LitVarStr var_98, "    <th>Aporte</th>"
  loc_BA1EAD: PopAdLdVar
  loc_BA1EAE: FLdPr Me
  loc_BA1EB1: MemLdRfVar from_stack_1.global_60
  loc_BA1EB4: LdPrVar
  loc_BA1EB6: LateMemCall
  loc_BA1EBC: LitVarStr var_98, "    <th>Matricula</th>"
  loc_BA1EC1: PopAdLdVar
  loc_BA1EC2: FLdPr Me
  loc_BA1EC5: MemLdRfVar from_stack_1.global_60
  loc_BA1EC8: LdPrVar
  loc_BA1ECA: LateMemCall
  loc_BA1ED0: LitVarStr var_98, "  </tr>"
  loc_BA1ED5: PopAdLdVar
  loc_BA1ED6: FLdPr Me
  loc_BA1ED9: MemLdRfVar from_stack_1.global_60
  loc_BA1EDC: LdPrVar
  loc_BA1EDE: LateMemCall
  loc_BA1EE4: LitVarStr var_98, "  </thead>"
  loc_BA1EE9: PopAdLdVar
  loc_BA1EEA: FLdPr Me
  loc_BA1EED: MemLdRfVar from_stack_1.global_60
  loc_BA1EF0: LdPrVar
  loc_BA1EF2: LateMemCall
  loc_BA1EF8: ExitProcHresult
End Function

Private Function Proc_352_26_A0F468() 'A0F468
  'Data Table: 485E14
  loc_A0F428: LitVarStr var_94, "</table>"
  loc_A0F42D: PopAdLdVar
  loc_A0F42E: FLdPr Me
  loc_A0F431: MemLdRfVar from_stack_1.global_60
  loc_A0F434: LdPrVar
  loc_A0F436: LateMemCall
  loc_A0F43C: LitVarStr var_94, "</body>"
  loc_A0F441: PopAdLdVar
  loc_A0F442: FLdPr Me
  loc_A0F445: MemLdRfVar from_stack_1.global_60
  loc_A0F448: LdPrVar
  loc_A0F44A: LateMemCall
  loc_A0F450: LitVarStr var_94, "</html>"
  loc_A0F455: PopAdLdVar
  loc_A0F456: FLdPr Me
  loc_A0F459: MemLdRfVar from_stack_1.global_60
  loc_A0F45C: LdPrVar
  loc_A0F45E: LateMemCall
  loc_A0F464: ExitProcHresult
End Function
