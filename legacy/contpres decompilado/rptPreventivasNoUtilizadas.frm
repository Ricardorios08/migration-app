VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptPreventivasNoUtilizadas
  Caption = "Listado de Preventivas No Utilizadas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptPreventivasNoUtilizadas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8205
  ClientHeight = 4800
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4545
    Width = 8205
    Height = 255
    TabIndex = 27
    OleObjectBlob = "rptPreventivasNoUtilizadas.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7080
    Top = 3600
    Width = 735
    Height = 615
    TabIndex = 25
    Cancel = -1  'True
    Picture = "rptPreventivasNoUtilizadas.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptPreventivasNoUtilizadas.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3360
    Width = 3615
    Height = 1095
    TabIndex = 22
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 24
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 23
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3360
    Width = 3015
    Height = 1095
    TabIndex = 19
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7935
    Height = 3255
    TabIndex = 0
    Begin VB.CheckBox chkMarcar
      Caption = "Marcar expedientes sin movimientos últ. 30 días"
      Left = 600
      Top = 2640
      Width = 3735
      Height = 375
      TabIndex = 18
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 3120
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptPreventivasNoUtilizadas.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 3120
      Top = 2160
      Width = 375
      Height = 375
      TabIndex = 16
      Picture = "rptPreventivasNoUtilizadas.frx":0CFA
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1680
      Top = 240
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2880
      Top = 1200
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptPreventivasNoUtilizadas.frx":0DF4
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2880
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptPreventivasNoUtilizadas.frx":1336
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5160
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1680
      Top = 720
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptPreventivasNoUtilizadas.frx":1878
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1680
      Top = 1200
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptPreventivasNoUtilizadas.frx":1900
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1680
      Top = 2160
      Width = 1335
      Height = 315
      TabIndex = 15
      OleObjectBlob = "rptPreventivasNoUtilizadas.frx":1988
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1680
      Top = 1680
      Width = 1335
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptPreventivasNoUtilizadas.frx":19E8
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 960
      Top = 1680
      Width = 615
      Height = 315
      TabIndex = 10
    End
    Begin VB.Label Label4
      Caption = "Organigrama:"
      Left = 600
      Top = 2160
      Width = 975
      Height = 315
      TabIndex = 14
    End
    Begin VB.Label CodiPartLbl
      Left = 3600
      Top = 1680
      Width = 4215
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3600
      Top = 2160
      Width = 4215
      Height = 375
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 960
      Top = 240
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 1080
      Top = 1200
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 1035
      Top = 720
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7080
    Top = 3720
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 26
    OleObjectBlob = "rptPreventivasNoUtilizadas.frx":1A48
  End
End

Attribute VB_Name = "rptPreventivasNoUtilizadas"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_005FD0E0
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_3_005FD11C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_4_005FD190
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub mskDesde_UnknownEvent_0 '952C08
  'Data Table: 4B5738
  loc_952BF4: FLdPr Me
  loc_952BF7: VCallAd Control_ID_mskDesde
  loc_952BFA: CVarAd
  loc_952BFE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952C03: FFree1Var var_94 = ""
  loc_952C06: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9BC4B8
  'Data Table: 4B5738
  loc_9BC408: FLdPr Me
  loc_9BC40B: VCallAd Control_ID_mskDesde
  loc_9BC40E: FStAdFunc var_88
  loc_9BC411: FLdPr var_88
  loc_9BC414: LateIdLdVar var_98 DispID_13 -32767
  loc_9BC41B: CBoolVar
  loc_9BC41D: FFree1Ad var_88
  loc_9BC420: FFree1Var var_98 = ""
  loc_9BC423: BranchF loc_9BC4B5
  loc_9BC426: FLdPr Me
  loc_9BC429: VCallAd Control_ID_mskDesde
  loc_9BC42C: FStAdFunc var_88
  loc_9BC42F: FLdPr var_88
  loc_9BC432: LateIdLdVar var_98 DispID_15 0
  loc_9BC439: PopAd
  loc_9BC43B: LitI2_Byte &HFF
  loc_9BC43D: PopTmpLdAd2 var_A2
  loc_9BC440: LitNothing
  loc_9BC442: CastAd
  loc_9BC445: FStAdFunc var_A0
  loc_9BC448: FLdRfVar var_A0
  loc_9BC44B: LitStr "01/01/2018"
  loc_9BC44E: LitI2_Byte 0
  loc_9BC450: LitI2_Byte 0
  loc_9BC452: FLdRfVar var_98
  loc_9BC455: CStrVarTmp
  loc_9BC456: FStStrNoPop var_9C
  loc_9BC459: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9BC45E: FStStrNoPop var_A8
  loc_9BC461: FLdPr Me
  loc_9BC464: MemStStrCopy
  loc_9BC468: FFreeStr var_9C = ""
  loc_9BC46F: FFreeAd var_88 = ""
  loc_9BC476: FFree1Var var_98 = ""
  loc_9BC479: FLdPr Me
  loc_9BC47C: VCallAd Control_ID_mskDesde
  loc_9BC47F: FStAdFunc var_B0
  loc_9BC482: LitNothing
  loc_9BC484: CastAd
  loc_9BC487: FStAdFunc var_AC
  loc_9BC48A: FLdRfVar var_AC
  loc_9BC48D: FLdZeroAd var_B0
  loc_9BC490: FStAdFuncNoPop
  loc_9BC493: CastAd
  loc_9BC496: FStAdFunc var_A0
  loc_9BC499: FLdRfVar var_A0
  loc_9BC49C: FLdPr Me
  loc_9BC49F: MemLdRfVar from_stack_1.global_100
  loc_9BC4A2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BC4A7: IStI2 arg_C
  loc_9BC4AA: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9BC4B5: ExitProcHresult
  loc_9BC4B6: IDvI2
End Function

Private Sub cmdSalir_Click() '978098
  'Data Table: 4B5738
  loc_978068: LitVarStr var_94, "Cerrando..."
  loc_97806D: PopAdLdVar
  loc_97806E: FLdPr Me
  loc_978071: VCallAd Control_ID_statusBar
  loc_978074: FStAdFunc var_A8
  loc_978077: FLdPr var_A8
  loc_97807A: LateIdSt
  loc_97807F: FFree1Ad var_A8
  loc_978082: ILdRf Me
  loc_978085: FStAdNoPop
  loc_978089: ImpAdLdRf MemVar_C44F9C
  loc_97808C: NewIfNullPr Me
  loc_97808F: Me.Global.Unload from_stack_1
  loc_978094: FFree1Ad var_A8
  loc_978097: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98C584
  'Data Table: 4B5738
  loc_98C54C: FLdPr Me
  loc_98C54F: VCallAd Control_ID_statusBar
  loc_98C552: FStAdFunc var_88
  loc_98C555: FLdPr var_88
  loc_98C558: LateIdLdVar var_98 DispID_1 0
  loc_98C55F: CStrVarTmp
  loc_98C560: CVarStr var_A8
  loc_98C563: PopAdLdVar
  loc_98C564: FLdPr Me
  loc_98C567: VCallAd Control_ID_statusBar
  loc_98C56A: FStAdFunc var_BC
  loc_98C56D: FLdPr var_BC
  loc_98C570: LateIdSt
  loc_98C575: FFreeAd var_88 = ""
  loc_98C57C: FFreeVar var_98 = ""
  loc_98C583: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '952C50
  'Data Table: 4B5738
  loc_952C3C: FLdPr Me
  loc_952C3F: VCallAd Control_ID_mskHasta
  loc_952C42: CVarAd
  loc_952C46: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952C4B: FFree1Var var_94 = ""
  loc_952C4E: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_8 '9BC6B0
  'Data Table: 4B5738
  loc_9BC600: FLdPr Me
  loc_9BC603: VCallAd Control_ID_mskHasta
  loc_9BC606: FStAdFunc var_88
  loc_9BC609: FLdPr var_88
  loc_9BC60C: LateIdLdVar var_98 DispID_13 -32767
  loc_9BC613: CBoolVar
  loc_9BC615: FFree1Ad var_88
  loc_9BC618: FFree1Var var_98 = ""
  loc_9BC61B: BranchF loc_9BC6AD
  loc_9BC61E: FLdPr Me
  loc_9BC621: VCallAd Control_ID_mskHasta
  loc_9BC624: FStAdFunc var_88
  loc_9BC627: FLdPr var_88
  loc_9BC62A: LateIdLdVar var_98 DispID_15 0
  loc_9BC631: PopAd
  loc_9BC633: LitI2_Byte &HFF
  loc_9BC635: PopTmpLdAd2 var_A2
  loc_9BC638: LitNothing
  loc_9BC63A: CastAd
  loc_9BC63D: FStAdFunc var_A0
  loc_9BC640: FLdRfVar var_A0
  loc_9BC643: LitStr "01/01/2018"
  loc_9BC646: LitI2_Byte 0
  loc_9BC648: LitI2_Byte 0
  loc_9BC64A: FLdRfVar var_98
  loc_9BC64D: CStrVarTmp
  loc_9BC64E: FStStrNoPop var_9C
  loc_9BC651: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9BC656: FStStrNoPop var_A8
  loc_9BC659: FLdPr Me
  loc_9BC65C: MemStStrCopy
  loc_9BC660: FFreeStr var_9C = ""
  loc_9BC667: FFreeAd var_88 = ""
  loc_9BC66E: FFree1Var var_98 = ""
  loc_9BC671: FLdPr Me
  loc_9BC674: VCallAd Control_ID_mskHasta
  loc_9BC677: FStAdFunc var_B0
  loc_9BC67A: LitNothing
  loc_9BC67C: CastAd
  loc_9BC67F: FStAdFunc var_AC
  loc_9BC682: FLdRfVar var_AC
  loc_9BC685: FLdZeroAd var_B0
  loc_9BC688: FStAdFuncNoPop
  loc_9BC68B: CastAd
  loc_9BC68E: FStAdFunc var_A0
  loc_9BC691: FLdRfVar var_A0
  loc_9BC694: FLdPr Me
  loc_9BC697: MemLdRfVar from_stack_1.global_100
  loc_9BC69A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BC69F: IStI2 Button
  loc_9BC6A2: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9BC6AD: ExitProcHresult
End Sub

Private Sub cmdCodiPart_Click() '9F5048
  'Data Table: 4B5738
  loc_9F4F18: LitNothing
  loc_9F4F1A: CastAd
  loc_9F4F1D: FStAdFuncNoPop
  loc_9F4F20: ImpAdLdRf MemVar_C3D724
  loc_9F4F23: NewIfNullPr bscPartida
  loc_9F4F26: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F4F2B: FFree1Ad var_88
  loc_9F4F2E: LitVar_Missing var_A8
  loc_9F4F31: PopAdLdVar
  loc_9F4F32: LitVarI4
  loc_9F4F3A: PopAdLdVar
  loc_9F4F3B: ImpAdLdRf MemVar_C3D724
  loc_9F4F3E: NewIfNullPr bscPartida
  loc_9F4F41: bscPartida.Show from_stack_1, from_stack_2
  loc_9F4F46: FLdRfVar var_AC
  loc_9F4F49: FLdRfVar var_88
  loc_9F4F4C: ImpAdLdRf MemVar_C3D724
  loc_9F4F4F: NewIfNullPr bscPartida
  loc_9F4F52: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F4F57: FLdPr var_88
  loc_9F4F5A: from_stack_1 = clsbase.RecordCount
  loc_9F4F5F: ILdRf var_AC
  loc_9F4F62: LitI4 0
  loc_9F4F67: GtI4
  loc_9F4F68: FFree1Ad var_88
  loc_9F4F6B: BranchF loc_9F5046
  loc_9F4F6E: FLdRfVar var_C8
  loc_9F4F71: FLdRfVar var_B8
  loc_9F4F74: LitVarStr var_98, "CodiPart"
  loc_9F4F79: PopAdLdVar
  loc_9F4F7A: FLdRfVar var_B4
  loc_9F4F7D: FLdRfVar var_B0
  loc_9F4F80: FLdRfVar var_88
  loc_9F4F83: ImpAdLdRf MemVar_C3D724
  loc_9F4F86: NewIfNullPr bscPartida
  loc_9F4F89: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F4F8E: FLdPr var_88
  loc_9F4F91: from_stack_1v = clsbase.RsFrmGet()
  loc_9F4F96: FLdPr var_B0
  loc_9F4F99:  = Me.Fields
  loc_9F4F9E: FLdPr var_B4
  loc_9F4FA1: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4FA6: FLdPr var_B8
  loc_9F4FA9:  = Me.Value
  loc_9F4FAE: FLdRfVar var_C8
  loc_9F4FB1: CStrVarTmp
  loc_9F4FB2: CVarStr var_D8
  loc_9F4FB5: PopAdLdVar
  loc_9F4FB6: FLdPr Me
  loc_9F4FB9: VCallAd Control_ID_CodiPartMsk
  loc_9F4FBC: FStAdFunc var_DC
  loc_9F4FBF: FLdPr var_DC
  loc_9F4FC2: LateIdSt
  loc_9F4FC7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F4FD4: FFreeVar var_C8 = ""
  loc_9F4FDB: FLdRfVar var_C8
  loc_9F4FDE: FLdRfVar var_B8
  loc_9F4FE1: LitVarStr var_98, "DetaPart"
  loc_9F4FE6: PopAdLdVar
  loc_9F4FE7: FLdRfVar var_B4
  loc_9F4FEA: FLdRfVar var_B0
  loc_9F4FED: FLdRfVar var_88
  loc_9F4FF0: ImpAdLdRf MemVar_C3D724
  loc_9F4FF3: NewIfNullPr bscPartida
  loc_9F4FF6: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F4FFB: FLdPr var_88
  loc_9F4FFE: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5003: FLdPr var_B0
  loc_9F5006:  = Me.Fields
  loc_9F500B: FLdPr var_B4
  loc_9F500E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5013: FLdPr var_B8
  loc_9F5016:  = Me.Value
  loc_9F501B: FLdRfVar var_C8
  loc_9F501E: CStrVarTmp
  loc_9F501F: FStStrNoPop var_E0
  loc_9F5022: FLdPr Me
  loc_9F5025: VCallAd Control_ID_CodiPartLbl
  loc_9F5028: FStAdFunc var_DC
  loc_9F502B: FLdPr var_DC
  loc_9F502E: Me.Caption = from_stack_1
  loc_9F5033: FFree1Str var_E0
  loc_9F5036: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F5043: FFree1Var var_C8 = ""
  loc_9F5046: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97E030
  'Data Table: 4B5738
  loc_97DFFC: LitVar_Missing var_A4
  loc_97DFFF: PopAdLdVar
  loc_97E000: LitVarI4
  loc_97E008: PopAdLdVar
  loc_97E009: ImpAdLdRf MemVar_C3D9A8
  loc_97E00C: NewIfNullPr frmCalendario
  loc_97E00F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E014: ImpAdLdRf MemVar_C3D038
  loc_97E017: CDargRef
  loc_97E01B: FLdPr Me
  loc_97E01E: VCallAd Control_ID_mskDesde
  loc_97E021: FStAdFunc var_A8
  loc_97E024: FLdPr var_A8
  loc_97E027: LateIdSt
  loc_97E02C: FFree1Ad var_A8
  loc_97E02F: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97DBB8
  'Data Table: 4B5738
  loc_97DB84: LitVar_Missing var_A4
  loc_97DB87: PopAdLdVar
  loc_97DB88: LitVarI4
  loc_97DB90: PopAdLdVar
  loc_97DB91: ImpAdLdRf MemVar_C3D9A8
  loc_97DB94: NewIfNullPr frmCalendario
  loc_97DB97: frmCalendario.Show from_stack_1, from_stack_2
  loc_97DB9C: ImpAdLdRf MemVar_C3D038
  loc_97DB9F: CDargRef
  loc_97DBA3: FLdPr Me
  loc_97DBA6: VCallAd Control_ID_mskHasta
  loc_97DBA9: FStAdFunc var_A8
  loc_97DBAC: FLdPr var_A8
  loc_97DBAF: LateIdSt
  loc_97DBB4: FFree1Ad var_A8
  loc_97DBB7: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D36BC
  'Data Table: 4B5738
  loc_9D35D4: FLdRfVar var_8C
  loc_9D35D7: FLdPr Me
  loc_9D35DA: VCallAd Control_ID_cboPeriodo
  loc_9D35DD: FStAdFunc var_88
  loc_9D35E0: FLdPr var_88
  loc_9D35E3:  = Me.Text
  loc_9D35E8: LitI2_Byte 1
  loc_9D35EA: LitI2_Byte 1
  loc_9D35EC: ILdRf var_8C
  loc_9D35EF: CI2Str
  loc_9D35F1: FLdRfVar var_9C
  loc_9D35F4: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D35F9: FLdRfVar var_9C
  loc_9D35FC: CStrVarTmp
  loc_9D35FD: CVarStr var_AC
  loc_9D3600: PopAdLdVar
  loc_9D3601: FLdPr Me
  loc_9D3604: VCallAd Control_ID_mskDesde
  loc_9D3607: FStAdFunc var_C0
  loc_9D360A: FLdPr var_C0
  loc_9D360D: LateIdSt
  loc_9D3612: FFree1Str var_8C
  loc_9D3615: FFreeAd var_88 = ""
  loc_9D361C: FFreeVar var_9C = ""
  loc_9D3623: FLdRfVar var_8C
  loc_9D3626: FLdPr Me
  loc_9D3629: VCallAd Control_ID_cboPeriodo
  loc_9D362C: FStAdFunc var_88
  loc_9D362F: FLdPr var_88
  loc_9D3632:  = Me.Text
  loc_9D3637: ILdRf var_8C
  loc_9D363A: CI2Str
  loc_9D363C: ImpAdLdI2 MemVar_C3D064
  loc_9D363F: LtI2
  loc_9D3640: FFree1Str var_8C
  loc_9D3643: FFree1Ad var_88
  loc_9D3646: BranchF loc_9D369B
  loc_9D3649: FLdRfVar var_8C
  loc_9D364C: FLdPr Me
  loc_9D364F: VCallAd Control_ID_cboPeriodo
  loc_9D3652: FStAdFunc var_88
  loc_9D3655: FLdPr var_88
  loc_9D3658:  = Me.Text
  loc_9D365D: LitI2_Byte &H1F
  loc_9D365F: LitI2_Byte &HC
  loc_9D3661: ILdRf var_8C
  loc_9D3664: CI2Str
  loc_9D3666: FLdRfVar var_9C
  loc_9D3669: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D366E: FLdRfVar var_9C
  loc_9D3671: CStrVarTmp
  loc_9D3672: CVarStr var_AC
  loc_9D3675: PopAdLdVar
  loc_9D3676: FLdPr Me
  loc_9D3679: VCallAd Control_ID_mskHasta
  loc_9D367C: FStAdFunc var_C0
  loc_9D367F: FLdPr var_C0
  loc_9D3682: LateIdSt
  loc_9D3687: FFree1Str var_8C
  loc_9D368A: FFreeAd var_88 = ""
  loc_9D3691: FFreeVar var_9C = ""
  loc_9D3698: Branch loc_9D36BB
  loc_9D369B: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D369E: CStrDate
  loc_9D36A0: CVarStr var_9C
  loc_9D36A3: PopAdLdVar
  loc_9D36A4: FLdPr Me
  loc_9D36A7: VCallAd Control_ID_mskHasta
  loc_9D36AA: FStAdFunc var_88
  loc_9D36AD: FLdPr var_88
  loc_9D36B0: LateIdSt
  loc_9D36B5: FFree1Ad var_88
  loc_9D36B8: FFree1Var var_9C = ""
  loc_9D36BB: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '9506A0
  'Data Table: 4B5738
  loc_95068C: FLdPr Me
  loc_95068F: VCallAd Control_ID_CodiOrgaMsk
  loc_950692: CVarAd
  loc_950696: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95069B: FFree1Var var_94 = ""
  loc_95069E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A08B90
  'Data Table: 4B5738
  loc_A08A44: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A08A47: FLdRfVar var_90
  loc_A08A4A: FLdPr Me
  loc_A08A4D: VCallAd Control_ID_cboPeriodo
  loc_A08A50: FStAdFunc var_8C
  loc_A08A53: FLdPr var_8C
  loc_A08A56:  = Me.Text
  loc_A08A5B: ILdRf var_90
  loc_A08A5E: ConcatStr
  loc_A08A5F: FStStrNoPop var_94
  loc_A08A62: LitStr " AND CodiOrga LIKE '"
  loc_A08A65: ConcatStr
  loc_A08A66: FStStrNoPop var_AC
  loc_A08A69: FLdPr Me
  loc_A08A6C: VCallAd Control_ID_CodiOrgaMsk
  loc_A08A6F: FStAdFunc var_98
  loc_A08A72: FLdPr var_98
  loc_A08A75: LateIdLdVar var_A8 DispID_22 0
  loc_A08A7C: CStrVarTmp
  loc_A08A7D: FStStrNoPop var_B0
  loc_A08A80: ConcatStr
  loc_A08A81: FStStrNoPop var_B4
  loc_A08A84: LitStr Chr(37) & "'"
  loc_A08A87: ConcatStr
  loc_A08A88: FStStrNoPop var_B8
  loc_A08A8B: FLdRfVar var_88
  loc_A08A8E: NewIfNullPr clsorganigrama
  loc_A08A91: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A08A96: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A08AA5: FFreeAd var_8C = ""
  loc_A08AAC: FFree1Var var_A8 = ""
  loc_A08AAF: FLdRfVar var_BC
  loc_A08AB2: FLdRfVar var_88
  loc_A08AB5: NewIfNullPr clsorganigrama
  loc_A08AB8: from_stack_1 = clsorganigrama.RecordCount
  loc_A08ABD: ILdRf var_BC
  loc_A08AC0: FStR4 var_C0
  loc_A08AC3: ILdRf var_C0
  loc_A08AC6: LitI4 0
  loc_A08ACB: EqI4
  loc_A08ACC: BranchF loc_A08AE9
  loc_A08ACF: LitStr "0 registros encontrados"
  loc_A08AD2: FLdPr Me
  loc_A08AD5: VCallAd Control_ID_CodiOrgaLbl
  loc_A08AD8: FStAdFunc var_8C
  loc_A08ADB: FLdPr var_8C
  loc_A08ADE: Me.Caption = from_stack_1
  loc_A08AE3: FFree1Ad var_8C
  loc_A08AE6: Branch loc_A08B8E
  loc_A08AE9: ILdRf var_C0
  loc_A08AEC: LitI4 1
  loc_A08AF1: EqI4
  loc_A08AF2: BranchF loc_A08B56
  loc_A08AF5: FLdRfVar var_A8
  loc_A08AF8: FLdRfVar var_D4
  loc_A08AFB: LitVarStr var_D0, "DetaOrga"
  loc_A08B00: PopAdLdVar
  loc_A08B01: FLdRfVar var_98
  loc_A08B04: FLdRfVar var_8C
  loc_A08B07: FLdRfVar var_88
  loc_A08B0A: NewIfNullPr clsorganigrama
  loc_A08B0D: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A08B12: FLdPr var_8C
  loc_A08B15:  = Me.Fields
  loc_A08B1A: FLdPr var_98
  loc_A08B1D: from_stack_2 = Me.Item(from_stack_1)
  loc_A08B22: FLdPr var_D4
  loc_A08B25:  = Me.Value
  loc_A08B2A: FLdRfVar var_A8
  loc_A08B2D: CStrVarTmp
  loc_A08B2E: FStStrNoPop var_90
  loc_A08B31: FLdPr Me
  loc_A08B34: VCallAd Control_ID_CodiOrgaLbl
  loc_A08B37: FStAdFunc var_D8
  loc_A08B3A: FLdPr var_D8
  loc_A08B3D: Me.Caption = from_stack_1
  loc_A08B42: FFree1Str var_90
  loc_A08B45: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A08B50: FFree1Var var_A8 = ""
  loc_A08B53: Branch loc_A08B8E
  loc_A08B56: FLdRfVar var_BC
  loc_A08B59: FLdRfVar var_88
  loc_A08B5C: NewIfNullPr clsorganigrama
  loc_A08B5F: from_stack_1 = clsorganigrama.RecordCount
  loc_A08B64: ILdRf var_BC
  loc_A08B67: CStrI4
  loc_A08B69: FStStrNoPop var_90
  loc_A08B6C: LitStr " organigramas encontrados"
  loc_A08B6F: ConcatStr
  loc_A08B70: FStStrNoPop var_94
  loc_A08B73: FLdPr Me
  loc_A08B76: VCallAd Control_ID_CodiOrgaLbl
  loc_A08B79: FStAdFunc var_8C
  loc_A08B7C: FLdPr var_8C
  loc_A08B7F: Me.Caption = from_stack_1
  loc_A08B84: FFreeStr var_90 = ""
  loc_A08B8B: FFree1Ad var_8C
  loc_A08B8E: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '966484
  'Data Table: 4B5738
  loc_96646C: LitI2_Byte 0
  loc_96646E: ILdRf Me
  loc_966471: CastAd
  loc_966474: FStAdFunc var_88
  loc_966477: FLdRfVar var_88
  loc_96647A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96647F: FFree1Ad var_88
  loc_966482: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '967D9C
  'Data Table: 4B5738
  loc_967D80: LitI2_Byte &HFF
  loc_967D82: LitI2_Byte 0
  loc_967D84: ILdRf Me
  loc_967D87: CastAd
  loc_967D8A: FStAdFunc var_88
  loc_967D8D: FLdRfVar var_88
  loc_967D90: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_967D95: FFree1Ad var_88
  loc_967D98: ExitProcHresult
  loc_967D99: GeCyR8
  loc_967D9A: ExitProcR8
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94D400
  'Data Table: 4B5738
  loc_94D3EC: FLdPr Me
  loc_94D3EF: VCallAd Control_ID_CodiPartMsk
  loc_94D3F2: CVarAd
  loc_94D3F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D3FB: FFree1Var var_94 = ""
  loc_94D3FE: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A0B3B0
  'Data Table: 4B5738
  loc_A0B264: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A0B267: FLdRfVar var_90
  loc_A0B26A: FLdPr Me
  loc_A0B26D: VCallAd Control_ID_cboPeriodo
  loc_A0B270: FStAdFunc var_8C
  loc_A0B273: FLdPr var_8C
  loc_A0B276:  = Me.Text
  loc_A0B27B: ILdRf var_90
  loc_A0B27E: ConcatStr
  loc_A0B27F: FStStrNoPop var_94
  loc_A0B282: LitStr " AND CodiPart LIKE '"
  loc_A0B285: ConcatStr
  loc_A0B286: FStStrNoPop var_AC
  loc_A0B289: FLdPr Me
  loc_A0B28C: VCallAd Control_ID_CodiPartMsk
  loc_A0B28F: FStAdFunc var_98
  loc_A0B292: FLdPr var_98
  loc_A0B295: LateIdLdVar var_A8 DispID_22 0
  loc_A0B29C: CStrVarTmp
  loc_A0B29D: FStStrNoPop var_B0
  loc_A0B2A0: ConcatStr
  loc_A0B2A1: FStStrNoPop var_B4
  loc_A0B2A4: LitStr Chr(37) & "'"
  loc_A0B2A7: ConcatStr
  loc_A0B2A8: FStStrNoPop var_B8
  loc_A0B2AB: FLdRfVar var_88
  loc_A0B2AE: NewIfNullPr clspartida
  loc_A0B2B1: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0B2B6: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A0B2C5: FFreeAd var_8C = ""
  loc_A0B2CC: FFree1Var var_A8 = ""
  loc_A0B2CF: FLdRfVar var_BC
  loc_A0B2D2: FLdRfVar var_88
  loc_A0B2D5: NewIfNullPr clspartida
  loc_A0B2D8: from_stack_1 = clspartida.RecordCount
  loc_A0B2DD: ILdRf var_BC
  loc_A0B2E0: FStR4 var_C0
  loc_A0B2E3: ILdRf var_C0
  loc_A0B2E6: LitI4 0
  loc_A0B2EB: EqI4
  loc_A0B2EC: BranchF loc_A0B309
  loc_A0B2EF: LitStr "0 registros encontrados"
  loc_A0B2F2: FLdPr Me
  loc_A0B2F5: VCallAd Control_ID_CodiPartLbl
  loc_A0B2F8: FStAdFunc var_8C
  loc_A0B2FB: FLdPr var_8C
  loc_A0B2FE: Me.Caption = from_stack_1
  loc_A0B303: FFree1Ad var_8C
  loc_A0B306: Branch loc_A0B3AE
  loc_A0B309: ILdRf var_C0
  loc_A0B30C: LitI4 1
  loc_A0B311: EqI4
  loc_A0B312: BranchF loc_A0B376
  loc_A0B315: FLdRfVar var_A8
  loc_A0B318: FLdRfVar var_D4
  loc_A0B31B: LitVarStr var_D0, "DetaPart"
  loc_A0B320: PopAdLdVar
  loc_A0B321: FLdRfVar var_98
  loc_A0B324: FLdRfVar var_8C
  loc_A0B327: FLdRfVar var_88
  loc_A0B32A: NewIfNullPr clspartida
  loc_A0B32D: from_stack_1v = clspartida.RsFrmGet()
  loc_A0B332: FLdPr var_8C
  loc_A0B335:  = Me.Fields
  loc_A0B33A: FLdPr var_98
  loc_A0B33D: from_stack_2 = Me.Item(from_stack_1)
  loc_A0B342: FLdPr var_D4
  loc_A0B345:  = Me.Value
  loc_A0B34A: FLdRfVar var_A8
  loc_A0B34D: CStrVarTmp
  loc_A0B34E: FStStrNoPop var_90
  loc_A0B351: FLdPr Me
  loc_A0B354: VCallAd Control_ID_CodiPartLbl
  loc_A0B357: FStAdFunc var_D8
  loc_A0B35A: FLdPr var_D8
  loc_A0B35D: Me.Caption = from_stack_1
  loc_A0B362: FFree1Str var_90
  loc_A0B365: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A0B370: FFree1Var var_A8 = ""
  loc_A0B373: Branch loc_A0B3AE
  loc_A0B376: FLdRfVar var_BC
  loc_A0B379: FLdRfVar var_88
  loc_A0B37C: NewIfNullPr clspartida
  loc_A0B37F: from_stack_1 = clspartida.RecordCount
  loc_A0B384: ILdRf var_BC
  loc_A0B387: CStrI4
  loc_A0B389: FStStrNoPop var_90
  loc_A0B38C: LitStr " partidas encontradas"
  loc_A0B38F: ConcatStr
  loc_A0B390: FStStrNoPop var_94
  loc_A0B393: FLdPr Me
  loc_A0B396: VCallAd Control_ID_CodiPartLbl
  loc_A0B399: FStAdFunc var_8C
  loc_A0B39C: FLdPr var_8C
  loc_A0B39F: Me.Caption = from_stack_1
  loc_A0B3A4: FFreeStr var_90 = ""
  loc_A0B3AB: FFree1Ad var_8C
  loc_A0B3AE: ExitProcHresult
End Sub

Private Sub Form_Load() '9E3FF8
  'Data Table: 4B5738
  loc_9E3EEC: LitVarStr var_94, "######"
  loc_9E3EF1: PopAdLdVar
  loc_9E3EF2: FLdPr Me
  loc_9E3EF5: VCallAd Control_ID_CodiOrgaMsk
  loc_9E3EF8: FStAdFunc var_A8
  loc_9E3EFB: FLdPr var_A8
  loc_9E3EFE: LateIdSt
  loc_9E3F03: FFree1Ad var_A8
  loc_9E3F06: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9E3F0B: PopAdLdVar
  loc_9E3F0C: FLdPr Me
  loc_9E3F0F: VCallAd Control_ID_CodiPartMsk
  loc_9E3F12: FStAdFunc var_A8
  loc_9E3F15: FLdPr var_A8
  loc_9E3F18: LateIdSt
  loc_9E3F1D: FFree1Ad var_A8
  loc_9E3F20: LitI2_Byte &HFF
  loc_9E3F22: ImpAdStI2 MemVar_C3D840
  loc_9E3F25: ILdRf Me
  loc_9E3F28: CastAd
  loc_9E3F2B: FStAdFunc var_A8
  loc_9E3F2E: FLdRfVar var_A8
  loc_9E3F31: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9E3F36: FFree1Ad var_A8
  loc_9E3F39: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9E3F3C: FLdRfVar var_AC
  loc_9E3F3F: NewIfNullPr clsperiodo
  loc_9E3F42: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9E3F47: FLdRfVar var_B0
  loc_9E3F4A: FLdRfVar var_AC
  loc_9E3F4D: NewIfNullPr clsperiodo
  loc_9E3F50: from_stack_1 = clsperiodo.RecordCount
  loc_9E3F55: ILdRf var_B0
  loc_9E3F58: LitI4 0
  loc_9E3F5D: GtI4
  loc_9E3F5E: BranchF loc_9E3FF1
  loc_9E3F61: FLdRfVar var_AC
  loc_9E3F64: NewIfNullPr clsperiodo
  loc_9E3F67: Call clsperiodo.MoveFirst()
  loc_9E3F6C: FLdRfVar var_B2
  loc_9E3F6F: FLdRfVar var_AC
  loc_9E3F72: NewIfNullPr clsperiodo
  loc_9E3F75: from_stack_1 = clsperiodo.EOF
  loc_9E3F7A: FLdI2 var_B2
  loc_9E3F7D: NotI4
  loc_9E3F7E: BranchF loc_9E3FF1
  loc_9E3F81: LitVar_Missing var_A4
  loc_9E3F84: PopAdLdVar
  loc_9E3F85: FLdRfVar var_CC
  loc_9E3F88: FLdRfVar var_BC
  loc_9E3F8B: LitVarStr var_94, "PeriInfo"
  loc_9E3F90: PopAdLdVar
  loc_9E3F91: FLdRfVar var_B8
  loc_9E3F94: FLdRfVar var_A8
  loc_9E3F97: FLdRfVar var_AC
  loc_9E3F9A: NewIfNullPr clsperiodo
  loc_9E3F9D: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9E3FA2: FLdPr var_A8
  loc_9E3FA5:  = Me.Fields
  loc_9E3FAA: FLdPr var_B8
  loc_9E3FAD: from_stack_2 = Me.Item(from_stack_1)
  loc_9E3FB2: FLdPr var_BC
  loc_9E3FB5:  = Me.Value
  loc_9E3FBA: FLdRfVar var_CC
  loc_9E3FBD: CStrVarTmp
  loc_9E3FBE: FStStrNoPop var_D0
  loc_9E3FC1: FLdPr Me
  loc_9E3FC4: VCallAd Control_ID_cboPeriodo
  loc_9E3FC7: FStAdFunc var_D4
  loc_9E3FCA: FLdPr var_D4
  loc_9E3FCD: Me.AddItem from_stack_1, from_stack_2
  loc_9E3FD2: FFree1Str var_D0
  loc_9E3FD5: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9E3FE0: FFree1Var var_CC = ""
  loc_9E3FE3: FLdRfVar var_AC
  loc_9E3FE6: NewIfNullPr clsperiodo
  loc_9E3FE9: Call clsperiodo.MoveSiguiente()
  loc_9E3FEE: Branch loc_9E3F6C
  loc_9E3FF1: Call cmdNueva_Click()
  loc_9E3FF6: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9662BC
  'Data Table: 4B5738
  loc_9662A4: FLdPr Me
  loc_9662A7: VCallAd Control_ID_wbbReporte
  loc_9662AA: FStAdFunc var_88
  loc_9662AD: FLdRfVar var_88
  loc_9662B0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9662B5: FFree1Ad var_88
  loc_9662B8: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9BEE9C
  'Data Table: 4B5738
  loc_9BEDD0: LitI2_Byte 0
  loc_9BEDD2: FLdPr Me
  loc_9BEDD5: MemStI2 bGenerado
  loc_9BEDD8: LitI2_Byte &HFF
  loc_9BEDDA: FLdPr Me
  loc_9BEDDD: MemStI2 bLogos
  loc_9BEDE0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BEDE5: ImpAdLdI2 MemVar_C3D064
  loc_9BEDE8: CStrUI1
  loc_9BEDEA: FStStrNoPop var_88
  loc_9BEDED: FLdPr Me
  loc_9BEDF0: VCallAd Control_ID_cboPeriodo
  loc_9BEDF3: FStAdFunc var_8C
  loc_9BEDF6: FLdPr var_8C
  loc_9BEDF9: Me.Text = from_stack_1
  loc_9BEDFE: FFree1Str var_88
  loc_9BEE01: FFree1Ad var_8C
  loc_9BEE04: LitVarStr var_9C, vbNullString
  loc_9BEE09: PopAdLdVar
  loc_9BEE0A: FLdPr Me
  loc_9BEE0D: VCallAd Control_ID_CodiPartMsk
  loc_9BEE10: FStAdFunc var_8C
  loc_9BEE13: FLdPr var_8C
  loc_9BEE16: LateIdSt
  loc_9BEE1B: FFree1Ad var_8C
  loc_9BEE1E: LitVarStr var_9C, vbNullString
  loc_9BEE23: PopAdLdVar
  loc_9BEE24: FLdPr Me
  loc_9BEE27: VCallAd Control_ID_CodiOrgaMsk
  loc_9BEE2A: FStAdFunc var_8C
  loc_9BEE2D: FLdPr var_8C
  loc_9BEE30: LateIdSt
  loc_9BEE35: FFree1Ad var_8C
  loc_9BEE38: LitStr vbNullString
  loc_9BEE3B: FLdPr Me
  loc_9BEE3E: VCallAd Control_ID_CodiPartLbl
  loc_9BEE41: FStAdFunc var_8C
  loc_9BEE44: FLdPr var_8C
  loc_9BEE47: Me.Caption = from_stack_1
  loc_9BEE4C: FFree1Ad var_8C
  loc_9BEE4F: LitStr vbNullString
  loc_9BEE52: FLdPr Me
  loc_9BEE55: VCallAd Control_ID_CodiOrgaLbl
  loc_9BEE58: FStAdFunc var_8C
  loc_9BEE5B: FLdPr var_8C
  loc_9BEE5E: Me.Caption = from_stack_1
  loc_9BEE63: FFree1Ad var_8C
  loc_9BEE66: LitI4 1
  loc_9BEE6B: CI2I4
  loc_9BEE6C: FLdPr Me
  loc_9BEE6F: VCallAd Control_ID_chkMarcar
  loc_9BEE72: FStAdFunc var_8C
  loc_9BEE75: FLdPr var_8C
  loc_9BEE78: Me.Value = from_stack_1
  loc_9BEE7D: FFree1Ad var_8C
  loc_9BEE80: Call HabilitarCriterio()
  loc_9BEE85: ILdRf Me
  loc_9BEE88: CastAd
  loc_9BEE8B: FStAdFunc var_8C
  loc_9BEE8E: FLdRfVar var_8C
  loc_9BEE91: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BEE96: FFree1Ad var_8C
  loc_9BEE99: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9FA3FC
  'Data Table: 4B5738
  loc_9FA2C0: LitI2_Byte &HFF
  loc_9FA2C2: ImpAdLdRf MemVar_C3D710
  loc_9FA2C5: NewIfNullPr bscOrganigrama
  loc_9FA2C8: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9FA2CD: LitNothing
  loc_9FA2CF: CastAd
  loc_9FA2D2: FStAdFuncNoPop
  loc_9FA2D5: ImpAdLdRf MemVar_C3D710
  loc_9FA2D8: NewIfNullPr bscOrganigrama
  loc_9FA2DB: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9FA2E0: FFree1Ad var_88
  loc_9FA2E3: LitVar_Missing var_A8
  loc_9FA2E6: PopAdLdVar
  loc_9FA2E7: LitVarI4
  loc_9FA2EF: PopAdLdVar
  loc_9FA2F0: ImpAdLdRf MemVar_C3D710
  loc_9FA2F3: NewIfNullPr bscOrganigrama
  loc_9FA2F6: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9FA2FB: FLdRfVar var_AC
  loc_9FA2FE: FLdRfVar var_88
  loc_9FA301: ImpAdLdRf MemVar_C3D710
  loc_9FA304: NewIfNullPr bscOrganigrama
  loc_9FA307: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FA30C: FLdPr var_88
  loc_9FA30F: from_stack_1 = clsbase.RecordCount
  loc_9FA314: ILdRf var_AC
  loc_9FA317: LitI4 0
  loc_9FA31C: GtI4
  loc_9FA31D: FFree1Ad var_88
  loc_9FA320: BranchF loc_9FA3FB
  loc_9FA323: FLdRfVar var_C8
  loc_9FA326: FLdRfVar var_B8
  loc_9FA329: LitVarStr var_98, "CodiOrga"
  loc_9FA32E: PopAdLdVar
  loc_9FA32F: FLdRfVar var_B4
  loc_9FA332: FLdRfVar var_B0
  loc_9FA335: FLdRfVar var_88
  loc_9FA338: ImpAdLdRf MemVar_C3D710
  loc_9FA33B: NewIfNullPr bscOrganigrama
  loc_9FA33E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FA343: FLdPr var_88
  loc_9FA346: from_stack_1v = clsbase.RsFrmGet()
  loc_9FA34B: FLdPr var_B0
  loc_9FA34E:  = Me.Fields
  loc_9FA353: FLdPr var_B4
  loc_9FA356: from_stack_2 = Me.Item(from_stack_1)
  loc_9FA35B: FLdPr var_B8
  loc_9FA35E:  = Me.Value
  loc_9FA363: FLdRfVar var_C8
  loc_9FA366: CStrVarTmp
  loc_9FA367: CVarStr var_D8
  loc_9FA36A: PopAdLdVar
  loc_9FA36B: FLdPr Me
  loc_9FA36E: VCallAd Control_ID_CodiOrgaMsk
  loc_9FA371: FStAdFunc var_DC
  loc_9FA374: FLdPr var_DC
  loc_9FA377: LateIdSt
  loc_9FA37C: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FA389: FFreeVar var_C8 = ""
  loc_9FA390: FLdRfVar var_C8
  loc_9FA393: FLdRfVar var_B8
  loc_9FA396: LitVarStr var_98, "DetaOrga"
  loc_9FA39B: PopAdLdVar
  loc_9FA39C: FLdRfVar var_B4
  loc_9FA39F: FLdRfVar var_B0
  loc_9FA3A2: FLdRfVar var_88
  loc_9FA3A5: ImpAdLdRf MemVar_C3D710
  loc_9FA3A8: NewIfNullPr bscOrganigrama
  loc_9FA3AB: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FA3B0: FLdPr var_88
  loc_9FA3B3: from_stack_1v = clsbase.RsFrmGet()
  loc_9FA3B8: FLdPr var_B0
  loc_9FA3BB:  = Me.Fields
  loc_9FA3C0: FLdPr var_B4
  loc_9FA3C3: from_stack_2 = Me.Item(from_stack_1)
  loc_9FA3C8: FLdPr var_B8
  loc_9FA3CB:  = Me.Value
  loc_9FA3D0: FLdRfVar var_C8
  loc_9FA3D3: CStrVarTmp
  loc_9FA3D4: FStStrNoPop var_E0
  loc_9FA3D7: FLdPr Me
  loc_9FA3DA: VCallAd Control_ID_CodiOrgaLbl
  loc_9FA3DD: FStAdFunc var_DC
  loc_9FA3E0: FLdPr var_DC
  loc_9FA3E3: Me.Caption = from_stack_1
  loc_9FA3E8: FFree1Str var_E0
  loc_9FA3EB: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FA3F8: FFree1Var var_C8 = ""
  loc_9FA3FB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9665B4
  'Data Table: 4B5738
  loc_96659C: ILdRf Me
  loc_96659F: CastAd
  loc_9665A2: FStAdFunc var_88
  loc_9665A5: FLdRfVar var_88
  loc_9665A8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9665AD: FFree1Ad var_88
  loc_9665B0: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '96651C
  'Data Table: 4B5738
  loc_966504: ILdRf Me
  loc_966507: CastAd
  loc_96650A: FStAdFunc var_88
  loc_96650D: FLdRfVar var_88
  loc_966510: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_966515: FFree1Ad var_88
  loc_966518: ExitProcHresult
End Sub

Public Function htmFileGet() '4B6AD4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4B6AE3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4B6AF2
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4B6B01
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4B6B10
  bGenerado = Value
End Sub

Public Function bLogosGet() '4B6B1F
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4B6B2E
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '9E5568
  'Data Table: 4B5738
  loc_9E5474: LitI4 0
  loc_9E5479: LitI4 9
  loc_9E547E: FLdRfVar var_88
  loc_9E5481: Redim
  loc_9E548B: FLdPr Me
  loc_9E548E: VCallAd Control_ID_cboPeriodo
  loc_9E5491: CVarAd
  loc_9E5495: ParmAry1St
  loc_9E549B: FLdPr Me
  loc_9E549E: VCallAd Control_ID_mskDesde
  loc_9E54A1: CVarAd
  loc_9E54A5: ParmAry1St
  loc_9E54AB: FLdPr Me
  loc_9E54AE: VCallAd Control_ID_cmdCalDesde
  loc_9E54B1: CVarAd
  loc_9E54B5: ParmAry1St
  loc_9E54BB: FLdPr Me
  loc_9E54BE: VCallAd Control_ID_mskHasta
  loc_9E54C1: CVarAd
  loc_9E54C5: ParmAry1St
  loc_9E54CB: FLdPr Me
  loc_9E54CE: VCallAd Control_ID_cmdCalHasta
  loc_9E54D1: CVarAd
  loc_9E54D5: ParmAry1St
  loc_9E54DB: FLdPr Me
  loc_9E54DE: VCallAd Control_ID_CodiPartMsk
  loc_9E54E1: CVarAd
  loc_9E54E5: ParmAry1St
  loc_9E54EB: FLdPr Me
  loc_9E54EE: VCallAd Control_ID_cmdCodiPart
  loc_9E54F1: CVarAd
  loc_9E54F5: ParmAry1St
  loc_9E54FB: FLdPr Me
  loc_9E54FE: VCallAd Control_ID_CodiOrgaMsk
  loc_9E5501: CVarAd
  loc_9E5505: ParmAry1St
  loc_9E550B: FLdPr Me
  loc_9E550E: VCallAd Control_ID_cmdCodiOrga
  loc_9E5511: CVarAd
  loc_9E5515: ParmAry1St
  loc_9E551B: FLdPr Me
  loc_9E551E: VCallAd Control_ID_chkMarcar
  loc_9E5521: CVarAd
  loc_9E5525: ParmAry1St
  loc_9E552B: FLdRfVar var_88
  loc_9E552E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E5533: FLdRfVar var_88
  loc_9E5536: Erase
  loc_9E5537: LitVar_FALSE
  loc_9E553B: PopAdLdVar
  loc_9E553C: FLdPr Me
  loc_9E553F: VCallAd Control_ID_mskDesde
  loc_9E5542: FStAdFunc var_14C
  loc_9E5545: FLdPr var_14C
  loc_9E5548: LateIdSt
  loc_9E554D: FFree1Ad var_14C
  loc_9E5550: LitI2_Byte 0
  loc_9E5552: FLdPr Me
  loc_9E5555: VCallAd Control_ID_cmdCalDesde
  loc_9E5558: FStAdFunc var_14C
  loc_9E555B: FLdPr var_14C
  loc_9E555E: Me.Enabled = from_stack_1b
  loc_9E5563: FFree1Ad var_14C
  loc_9E5566: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B08E88
  'Data Table: 4B5738
  loc_B08700: OnErrorGoto loc_B08E23
  loc_B08703: FLdPr Me
  loc_B08706: MemLdI2 bGenerado
  loc_B08709: BranchF loc_B0870D
  loc_B0870C: ExitProcHresult
  loc_B0870D: LitVarStr var_A4, "Generando reporte..."
  loc_B08712: PopAdLdVar
  loc_B08713: FLdPr Me
  loc_B08716: VCallAd Control_ID_statusBar
  loc_B08719: FStAdFunc var_B8
  loc_B0871C: FLdPr var_B8
  loc_B0871F: LateIdSt
  loc_B08724: FFree1Ad var_B8
  loc_B08727: LitI4 &HB
  loc_B0872C: CI2I4
  loc_B0872D: FLdPr Me
  loc_B08730: Me.MousePointer = from_stack_1
  loc_B08735: LitI2_Byte 0
  loc_B08737: PopTmpLdAd2 var_BA
  loc_B0873A: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B0873F: LitI2_Byte 0
  loc_B08741: PopTmpLdAd2 var_BA
  loc_B08744: Call mskHasta_UnknownEvent_8()
  loc_B08749: LitI2_Byte 0
  loc_B0874B: PopTmpLdAd2 var_BA
  loc_B0874E: Call CodiPartMsk_UnknownEvent_8()
  loc_B08753: LitI2_Byte 0
  loc_B08755: PopTmpLdAd2 var_BA
  loc_B08758: Call CodiPartMsk_UnknownEvent_8()
  loc_B0875D: FLdPr Me
  loc_B08760: VCallAd Control_ID_mskDesde
  loc_B08763: FStAdFunc var_B8
  loc_B08766: FLdPr var_B8
  loc_B08769: LateIdLdVar var_CC DispID_15 0
  loc_B08770: PopAd
  loc_B08772: FLdPr Me
  loc_B08775: VCallAd Control_ID_mskHasta
  loc_B08778: FStAdFunc var_130
  loc_B0877B: FLdPr var_130
  loc_B0877E: LateIdLdVar var_140 DispID_15 0
  loc_B08785: PopAd
  loc_B08787: LitVarStr var_B4, " AND FechImpu BETWEEN "
  loc_B0878C: LitI4 1
  loc_B08791: LitI4 1
  loc_B08796: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B0879B: FStVarCopyObj var_EC
  loc_B0879E: FLdRfVar var_EC
  loc_B087A1: FLdRfVar var_CC
  loc_B087A4: CStrVarTmp
  loc_B087A5: CVarStr var_DC
  loc_B087A8: FLdRfVar var_FC
  loc_B087AB: ImpAdCallFPR4  = Format(, )
  loc_B087B0: FLdRfVar var_FC
  loc_B087B3: ConcatVar var_10C
  loc_B087B7: LitVarStr var_11C, " AND "
  loc_B087BC: ConcatVar var_12C
  loc_B087C0: LitI4 1
  loc_B087C5: LitI4 1
  loc_B087CA: LitVarStr var_160, "'yyyy-mm-dd'"
  loc_B087CF: FStVarCopyObj var_170
  loc_B087D2: FLdRfVar var_170
  loc_B087D5: FLdRfVar var_140
  loc_B087D8: CStrVarTmp
  loc_B087D9: CVarStr var_150
  loc_B087DC: FLdRfVar var_180
  loc_B087DF: ImpAdCallFPR4  = Format(, )
  loc_B087E4: FLdRfVar var_180
  loc_B087E7: ConcatVar var_190
  loc_B087EB: CStrVarTmp
  loc_B087EC: FStStr var_88
  loc_B087EF: FFreeAd var_B8 = ""
  loc_B087F6: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_140 = "": var_150 = "": var_170 = "": var_12C = "": var_180 = ""
  loc_B0880F: FLdPr Me
  loc_B08812: VCallAd Control_ID_CodiPartMsk
  loc_B08815: FStAdFunc var_B8
  loc_B08818: FLdPr var_B8
  loc_B0881B: LateIdLdVar var_CC DispID_22 0
  loc_B08822: PopAd
  loc_B08824: FLdPr Me
  loc_B08827: VCallAd Control_ID_CodiPartMsk
  loc_B0882A: FStAdFunc var_130
  loc_B0882D: FLdPr var_130
  loc_B08830: LateIdLdVar var_DC DispID_22 0
  loc_B08837: PopAd
  loc_B08839: LitVarStr var_B4, vbNullString
  loc_B0883E: FStVarCopyObj var_FC
  loc_B08841: FLdRfVar var_FC
  loc_B08844: LitStr " AND imputacion.CodiPart LIKE '"
  loc_B08847: FLdRfVar var_DC
  loc_B0884A: CStrVarTmp
  loc_B0884B: FStStrNoPop var_198
  loc_B0884E: ConcatStr
  loc_B0884F: FStStrNoPop var_19C
  loc_B08852: LitStr Chr(37) & "'"
  loc_B08855: ConcatStr
  loc_B08856: CVarStr var_EC
  loc_B08859: FLdRfVar var_CC
  loc_B0885C: CStrVarTmp
  loc_B0885D: FStStrNoPop var_194
  loc_B08860: LitStr vbNullString
  loc_B08863: NeStr
  loc_B08865: CVarBoolI2 var_A4
  loc_B08869: FLdRfVar var_10C
  loc_B0886C: ImpAdCallFPR4  = IIf(, , )
  loc_B08871: FLdRfVar var_10C
  loc_B08874: CStrVarTmp
  loc_B08875: FStStr var_8C
  loc_B08878: FFreeStr var_194 = "": var_198 = ""
  loc_B08881: FFreeAd var_B8 = ""
  loc_B08888: FFreeVar var_CC = "": var_DC = "": var_A4 = "": var_EC = "": var_FC = ""
  loc_B08897: FLdPr Me
  loc_B0889A: VCallAd Control_ID_CodiOrgaMsk
  loc_B0889D: FStAdFunc var_B8
  loc_B088A0: FLdPr var_B8
  loc_B088A3: LateIdLdVar var_CC DispID_22 0
  loc_B088AA: PopAd
  loc_B088AC: FLdPr Me
  loc_B088AF: VCallAd Control_ID_CodiOrgaMsk
  loc_B088B2: FStAdFunc var_130
  loc_B088B5: FLdPr var_130
  loc_B088B8: LateIdLdVar var_DC DispID_22 0
  loc_B088BF: PopAd
  loc_B088C1: LitVarStr var_B4, vbNullString
  loc_B088C6: FStVarCopyObj var_FC
  loc_B088C9: FLdRfVar var_FC
  loc_B088CC: LitStr " AND imputacion.CodiOrga LIKE '"
  loc_B088CF: FLdRfVar var_DC
  loc_B088D2: CStrVarTmp
  loc_B088D3: FStStrNoPop var_198
  loc_B088D6: ConcatStr
  loc_B088D7: FStStrNoPop var_19C
  loc_B088DA: LitStr Chr(37) & "'"
  loc_B088DD: ConcatStr
  loc_B088DE: CVarStr var_EC
  loc_B088E1: FLdRfVar var_CC
  loc_B088E4: CStrVarTmp
  loc_B088E5: FStStrNoPop var_194
  loc_B088E8: LitStr vbNullString
  loc_B088EB: NeStr
  loc_B088ED: CVarBoolI2 var_A4
  loc_B088F1: FLdRfVar var_10C
  loc_B088F4: ImpAdCallFPR4  = IIf(, , )
  loc_B088F9: FLdRfVar var_10C
  loc_B088FC: CStrVarTmp
  loc_B088FD: FStStr var_90
  loc_B08900: FFreeStr var_194 = "": var_198 = ""
  loc_B08909: FFreeAd var_B8 = ""
  loc_B08910: FFreeVar var_CC = "": var_DC = "": var_A4 = "": var_EC = "": var_FC = ""
  loc_B0891F: FLdPr Me
  loc_B08922: MemLdRfVar from_stack_1.global_72
  loc_B08925: NewIfNullAd
  loc_B08928: FStAd var_1A0 
  loc_B0892C: FLdPr Me
  loc_B0892F: VCallAd Control_ID_mskHasta
  loc_B08932: FStAdFunc var_B8
  loc_B08935: FLdPr var_B8
  loc_B08938: LateIdLdVar var_CC DispID_15 0
  loc_B0893F: PopAd
  loc_B08941: LitStr "SELECT imputacion.CodiPart, DetaPart, imputacion.CodiOrga, DetaOrga, imputacion.CodiFifu, DetaFifu,"
  loc_B08944: LitStr " ExorImpu, Sum(PrevImpu) - Sum(DefiImpu) AS SaldImpu"
  loc_B08947: ConcatStr
  loc_B08948: FStStrNoPop var_194
  loc_B0894B: LitStr " , Datediff(IF(DefiImpu<>0,Max(FechImpu),Current_Date),IF(PrevImpu<>0,Max(FechImpu),"
  loc_B0894E: ConcatStr
  loc_B0894F: CVarStr var_10C
  loc_B08952: LitI4 1
  loc_B08957: LitI4 1
  loc_B0895C: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B08961: FStVarCopyObj var_EC
  loc_B08964: FLdRfVar var_EC
  loc_B08967: FLdRfVar var_CC
  loc_B0896A: CStrVarTmp
  loc_B0896B: CVarStr var_DC
  loc_B0896E: FLdRfVar var_FC
  loc_B08971: ImpAdCallFPR4  = Format(, )
  loc_B08976: FLdRfVar var_FC
  loc_B08979: ConcatVar var_12C
  loc_B0897D: LitVarStr var_B4, ")) Dias"
  loc_B08982: ConcatVar var_140
  loc_B08986: LitVarStr var_11C, " FROM imputacion"
  loc_B0898B: ConcatVar var_150
  loc_B0898F: LitVarStr var_160, " INNER JOIN partida ON partida.PeriInfo = imputacion.PeriInfo AND partida.CodiPart = imputacion.CodiPart"
  loc_B08994: ConcatVar var_170
  loc_B08998: LitVarStr var_1B0, " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = imputacion.PeriInfo AND organigrama.CodiOrga = imputacion.CodiOrga"
  loc_B0899D: ConcatVar var_180
  loc_B089A1: LitVarStr var_1C0, " INNER JOIN finalidad ON finalidad.PeriInfo = imputacion.PeriInfo AND finalidad.CodiFifu = imputacion.CodiFifu"
  loc_B089A6: ConcatVar var_190
  loc_B089AA: LitVarStr var_1D0, " WHERE imputacion.PeriInfo = "
  loc_B089AF: ConcatVar var_1E0
  loc_B089B3: FLdRfVar var_198
  loc_B089B6: FLdPr Me
  loc_B089B9: VCallAd Control_ID_cboPeriodo
  loc_B089BC: FStAdFunc var_130
  loc_B089BF: FLdPr var_130
  loc_B089C2:  = Me.Text
  loc_B089C7: FLdZeroAd var_198
  loc_B089CA: CVarStr var_1F0
  loc_B089CD: ConcatVar var_200
  loc_B089D1: LitVarStr var_210, " AND (PrevImpu <> 0 OR DefiImpu <> 0) "
  loc_B089D6: ConcatVar var_220
  loc_B089DA: ILdRf var_88
  loc_B089DD: CVarStr var_230
  loc_B089E0: ConcatVar var_240
  loc_B089E4: ILdRf var_8C
  loc_B089E7: CVarStr var_250
  loc_B089EA: ConcatVar var_260
  loc_B089EE: ILdRf var_90
  loc_B089F1: CVarStr var_270
  loc_B089F4: ConcatVar var_280
  loc_B089F8: LitVarStr var_290, " GROUP BY CodiPart, CodiOrga, CodiFifu, ExorImpu HAVING SaldImpu <> 0"
  loc_B089FD: ConcatVar var_2A0
  loc_B08A01: LitVarStr var_2B0, " ORDER BY CodiPart, CodiOrga, CodiFifu, ExorImpu"
  loc_B08A06: ConcatVar var_2C0
  loc_B08A0A: CStrVarVal var_19C
  loc_B08A0E: FLdPr var_1A0
  loc_B08A11: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B08A16: FFreeStr var_194 = ""
  loc_B08A1D: FFreeAd var_B8 = ""
  loc_B08A24: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_10C = "": var_FC = "": var_12C = "": var_140 = "": var_150 = "": var_170 = "": var_180 = "": var_190 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = ""
  loc_B08A4F: FLdRfVar var_2C4
  loc_B08A52: FLdPr var_1A0
  loc_B08A55: from_stack_1 = clsimputacion.RecordCount
  loc_B08A5A: ILdRf var_2C4
  loc_B08A5D: LitI4 0
  loc_B08A62: EqI4
  loc_B08A63: BranchF loc_B08A76
  loc_B08A66: LitI4 0
  loc_B08A6B: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B08A6E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B08A73: Branch loc_B08DFA
  loc_B08A76: LitI4 0
  loc_B08A7B: LitI4 1
  loc_B08A80: FLdPr Me
  loc_B08A83: MemLdRfVar from_stack_1.global_80
  loc_B08A86: Redim
  loc_B08A90: LitI2_Byte 0
  loc_B08A92: CStrUI1
  loc_B08A94: FStStrNoPop var_194
  loc_B08A97: FLdPr Me
  loc_B08A9A: MemStStrCopy
  loc_B08A9E: FFree1Str var_194
  loc_B08AA1: LitI2_Byte 0
  loc_B08AA3: FLdPr Me
  loc_B08AA6: MemStI2 global_84
  loc_B08AA9: FLdPr var_1A0
  loc_B08AAC: Call clsimputacion.MoveFirst()
  loc_B08AB1: Call Proc_217_33_9E1C04()
  loc_B08AB6: FLdRfVar var_BA
  loc_B08AB9: FLdPr var_1A0
  loc_B08ABC: from_stack_1 = clsimputacion.EOF
  loc_B08AC1: FLdI2 var_BA
  loc_B08AC4: NotI4
  loc_B08AC5: BranchF loc_B08C1A
  loc_B08AC8: FLdRfVar var_CC
  loc_B08ACB: FLdRfVar var_2C8
  loc_B08ACE: LitVarStr var_A4, "CodiPart"
  loc_B08AD3: PopAdLdVar
  loc_B08AD4: FLdRfVar var_130
  loc_B08AD7: FLdRfVar var_B8
  loc_B08ADA: FLdPr var_1A0
  loc_B08ADD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B08AE2: FLdPr var_B8
  loc_B08AE5:  = Me.Fields
  loc_B08AEA: FLdPr var_130
  loc_B08AED: from_stack_2 = Me.Item(from_stack_1)
  loc_B08AF2: FLdPr var_2C8
  loc_B08AF5:  = Me.Value
  loc_B08AFA: FLdRfVar var_CC
  loc_B08AFD: FLdPr Me
  loc_B08B00: MemLdI2 global_84
  loc_B08B03: CI4UI1
  loc_B08B04: FLdPr Me
  loc_B08B07: MemLdStr global_80
  loc_B08B0A: Ary1LdPr
  loc_B08B0B: MemLdStr global_0
  loc_B08B0E: CVarStr var_B4
  loc_B08B11: HardType
  loc_B08B12: NeVarBool
  loc_B08B14: FFreeAd var_B8 = "": var_130 = ""
  loc_B08B1D: FFree1Var var_CC = ""
  loc_B08B20: BranchF loc_B08B2B
  loc_B08B23: Call Proc_217_33_9E1C04()
  loc_B08B28: Branch loc_B08C17
  loc_B08B2B: FLdRfVar var_CC
  loc_B08B2E: FLdRfVar var_2C8
  loc_B08B31: LitVarStr var_A4, "CodiOrga"
  loc_B08B36: PopAdLdVar
  loc_B08B37: FLdRfVar var_130
  loc_B08B3A: FLdRfVar var_B8
  loc_B08B3D: FLdPr var_1A0
  loc_B08B40: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B08B45: FLdPr var_B8
  loc_B08B48:  = Me.Fields
  loc_B08B4D: FLdPr var_130
  loc_B08B50: from_stack_2 = Me.Item(from_stack_1)
  loc_B08B55: FLdPr var_2C8
  loc_B08B58:  = Me.Value
  loc_B08B5D: FLdRfVar var_CC
  loc_B08B60: FLdPr Me
  loc_B08B63: MemLdI2 global_86
  loc_B08B66: CI4UI1
  loc_B08B67: FLdPr Me
  loc_B08B6A: MemLdI2 global_84
  loc_B08B6D: CI4UI1
  loc_B08B6E: FLdPr Me
  loc_B08B71: MemLdStr global_80
  loc_B08B74: Ary1LdPr
  loc_B08B75: MemLdStr global_8
  loc_B08B78: Ary1LdPr
  loc_B08B79: MemLdStr global_0
  loc_B08B7C: CVarStr var_B4
  loc_B08B7F: HardType
  loc_B08B80: NeVarBool
  loc_B08B82: FFreeAd var_B8 = "": var_130 = ""
  loc_B08B8B: FFree1Var var_CC = ""
  loc_B08B8E: BranchF loc_B08B99
  loc_B08B91: Call Proc_217_34_9F564C()
  loc_B08B96: Branch loc_B08C17
  loc_B08B99: FLdRfVar var_CC
  loc_B08B9C: FLdRfVar var_2C8
  loc_B08B9F: LitVarStr var_A4, "CodiFifu"
  loc_B08BA4: PopAdLdVar
  loc_B08BA5: FLdRfVar var_130
  loc_B08BA8: FLdRfVar var_B8
  loc_B08BAB: FLdPr var_1A0
  loc_B08BAE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B08BB3: FLdPr var_B8
  loc_B08BB6:  = Me.Fields
  loc_B08BBB: FLdPr var_130
  loc_B08BBE: from_stack_2 = Me.Item(from_stack_1)
  loc_B08BC3: FLdPr var_2C8
  loc_B08BC6:  = Me.Value
  loc_B08BCB: FLdRfVar var_CC
  loc_B08BCE: FLdPr Me
  loc_B08BD1: MemLdI2 global_88
  loc_B08BD4: CI4UI1
  loc_B08BD5: FLdPr Me
  loc_B08BD8: MemLdI2 global_86
  loc_B08BDB: CI4UI1
  loc_B08BDC: FLdPr Me
  loc_B08BDF: MemLdI2 global_84
  loc_B08BE2: CI4UI1
  loc_B08BE3: FLdPr Me
  loc_B08BE6: MemLdStr global_80
  loc_B08BE9: Ary1LdPr
  loc_B08BEA: MemLdStr global_8
  loc_B08BED: Ary1LdPr
  loc_B08BEE: MemLdStr global_8
  loc_B08BF1: Ary1LdPr
  loc_B08BF2: MemLdStr global_0
  loc_B08BF5: CVarStr var_B4
  loc_B08BF8: HardType
  loc_B08BF9: NeVarBool
  loc_B08BFB: FFreeAd var_B8 = "": var_130 = ""
  loc_B08C04: FFree1Var var_CC = ""
  loc_B08C07: BranchF loc_B08C12
  loc_B08C0A: Call Proc_217_35_A0F264()
  loc_B08C0F: Branch loc_B08C17
  loc_B08C12: Call Proc_217_36_A3F144()
  loc_B08C17: Branch loc_B08AB6
  loc_B08C1A: LitNothing
  loc_B08C1C: FStAd var_1A0 
  loc_B08C20: LitI2_Byte 1
  loc_B08C22: FLdPr Me
  loc_B08C25: MemLdRfVar from_stack_1.global_84
  loc_B08C28: FLdPr Me
  loc_B08C2B: MemLdStr global_80
  loc_B08C2E: LitI2_Byte 1
  loc_B08C30: FnUBound
  loc_B08C32: CI2I4
  loc_B08C33: ForI2 var_2CC
  loc_B08C39: LitI2_Byte 0
  loc_B08C3B: FLdPr Me
  loc_B08C3E: MemLdRfVar from_stack_1.global_96
  loc_B08C41: CVarRef
  loc_B08C46: LitI2_Byte &HFF
  loc_B08C48: FLdPr Me
  loc_B08C4B: MemLdI2 global_84
  loc_B08C4E: CI4UI1
  loc_B08C4F: FLdPr Me
  loc_B08C52: MemLdStr global_80
  loc_B08C55: Ary1LdPr
  loc_B08C56: MemLdStr global_20
  loc_B08C59: CVarStr var_A4
  loc_B08C5C: PopAdLdVar
  loc_B08C5D: FLdRfVar var_94
  loc_B08C60: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B08C65: LitI2_Byte 1
  loc_B08C67: FLdPr Me
  loc_B08C6A: MemLdRfVar from_stack_1.global_86
  loc_B08C6D: FLdPr Me
  loc_B08C70: MemLdI2 global_84
  loc_B08C73: CI4UI1
  loc_B08C74: FLdPr Me
  loc_B08C77: MemLdStr global_80
  loc_B08C7A: Ary1LdPr
  loc_B08C7B: MemLdStr global_8
  loc_B08C7E: LitI2_Byte 1
  loc_B08C80: FnUBound
  loc_B08C82: CI2I4
  loc_B08C83: ForI2 var_2D0
  loc_B08C89: LitI2_Byte 1
  loc_B08C8B: FLdPr Me
  loc_B08C8E: MemLdRfVar from_stack_1.global_88
  loc_B08C91: FLdPr Me
  loc_B08C94: MemLdI2 global_86
  loc_B08C97: CI4UI1
  loc_B08C98: FLdPr Me
  loc_B08C9B: MemLdI2 global_84
  loc_B08C9E: CI4UI1
  loc_B08C9F: FLdPr Me
  loc_B08CA2: MemLdStr global_80
  loc_B08CA5: Ary1LdPr
  loc_B08CA6: MemLdStr global_8
  loc_B08CA9: Ary1LdPr
  loc_B08CAA: MemLdStr global_8
  loc_B08CAD: LitI2_Byte 1
  loc_B08CAF: FnUBound
  loc_B08CB1: CI2I4
  loc_B08CB2: ForI2 var_2D4
  loc_B08CB8: FLdPr Me
  loc_B08CBB: MemLdI2 global_88
  loc_B08CBE: CI4UI1
  loc_B08CBF: FLdPr Me
  loc_B08CC2: MemLdI2 global_86
  loc_B08CC5: CI4UI1
  loc_B08CC6: FLdPr Me
  loc_B08CC9: MemLdI2 global_84
  loc_B08CCC: CI4UI1
  loc_B08CCD: FLdPr Me
  loc_B08CD0: MemLdStr global_80
  loc_B08CD3: Ary1LdPr
  loc_B08CD4: MemLdStr global_8
  loc_B08CD7: Ary1LdPr
  loc_B08CD8: MemLdStr global_8
  loc_B08CDB: Ary1LdPr
  loc_B08CDC: MemLdStr global_8
  loc_B08CDF: LitI2_Byte 1
  loc_B08CE1: FnUBound
  loc_B08CE3: FLdPr Me
  loc_B08CE6: MemLdI2 global_88
  loc_B08CE9: CI4UI1
  loc_B08CEA: FLdPr Me
  loc_B08CED: MemLdI2 global_86
  loc_B08CF0: CI4UI1
  loc_B08CF1: FLdPr Me
  loc_B08CF4: MemLdI2 global_84
  loc_B08CF7: CI4UI1
  loc_B08CF8: FLdPr Me
  loc_B08CFB: MemLdStr global_80
  loc_B08CFE: Ary1LdPr
  loc_B08CFF: MemLdStr global_8
  loc_B08D02: Ary1LdPr
  loc_B08D03: MemLdStr global_8
  loc_B08D06: Ary1LdPr
  loc_B08D07: MemStI4 global_12
  loc_B08D0A: FLdPr Me
  loc_B08D0D: MemLdI2 global_86
  loc_B08D10: CI4UI1
  loc_B08D11: FLdPr Me
  loc_B08D14: MemLdI2 global_84
  loc_B08D17: CI4UI1
  loc_B08D18: FLdPr Me
  loc_B08D1B: MemLdStr global_80
  loc_B08D1E: Ary1LdPr
  loc_B08D1F: MemLdStr global_8
  loc_B08D22: Ary1LdPr
  loc_B08D23: MemLdStr global_12
  loc_B08D26: FLdPr Me
  loc_B08D29: MemLdI2 global_88
  loc_B08D2C: CI4UI1
  loc_B08D2D: FLdPr Me
  loc_B08D30: MemLdI2 global_86
  loc_B08D33: CI4UI1
  loc_B08D34: FLdPr Me
  loc_B08D37: MemLdI2 global_84
  loc_B08D3A: CI4UI1
  loc_B08D3B: FLdPr Me
  loc_B08D3E: MemLdStr global_80
  loc_B08D41: Ary1LdPr
  loc_B08D42: MemLdStr global_8
  loc_B08D45: Ary1LdPr
  loc_B08D46: MemLdStr global_8
  loc_B08D49: Ary1LdPr
  loc_B08D4A: MemLdStr global_12
  loc_B08D4D: AddI4
  loc_B08D4E: FLdPr Me
  loc_B08D51: MemLdI2 global_86
  loc_B08D54: CI4UI1
  loc_B08D55: FLdPr Me
  loc_B08D58: MemLdI2 global_84
  loc_B08D5B: CI4UI1
  loc_B08D5C: FLdPr Me
  loc_B08D5F: MemLdStr global_80
  loc_B08D62: Ary1LdPr
  loc_B08D63: MemLdStr global_8
  loc_B08D66: Ary1LdPr
  loc_B08D67: MemStI4 global_12
  loc_B08D6A: FLdPr Me
  loc_B08D6D: MemLdRfVar from_stack_1.global_88
  loc_B08D70: NextI2 var_2D4, loc_B08CB8
  loc_B08D75: FLdPr Me
  loc_B08D78: MemLdI2 global_84
  loc_B08D7B: CI4UI1
  loc_B08D7C: FLdPr Me
  loc_B08D7F: MemLdStr global_80
  loc_B08D82: Ary1LdPr
  loc_B08D83: MemLdStr global_12
  loc_B08D86: FLdPr Me
  loc_B08D89: MemLdI2 global_86
  loc_B08D8C: CI4UI1
  loc_B08D8D: FLdPr Me
  loc_B08D90: MemLdI2 global_84
  loc_B08D93: CI4UI1
  loc_B08D94: FLdPr Me
  loc_B08D97: MemLdStr global_80
  loc_B08D9A: Ary1LdPr
  loc_B08D9B: MemLdStr global_8
  loc_B08D9E: Ary1LdPr
  loc_B08D9F: MemLdStr global_12
  loc_B08DA2: AddI4
  loc_B08DA3: FLdPr Me
  loc_B08DA6: MemLdI2 global_84
  loc_B08DA9: CI4UI1
  loc_B08DAA: FLdPr Me
  loc_B08DAD: MemLdStr global_80
  loc_B08DB0: Ary1LdPr
  loc_B08DB1: MemStI4 global_12
  loc_B08DB4: FLdPr Me
  loc_B08DB7: MemLdRfVar from_stack_1.global_86
  loc_B08DBA: NextI2 var_2D0, loc_B08C89
  loc_B08DBF: FLdPr Me
  loc_B08DC2: MemLdI2 global_84
  loc_B08DC5: CI4UI1
  loc_B08DC6: FLdPr Me
  loc_B08DC9: MemLdStr global_80
  loc_B08DCC: Ary1LdPr
  loc_B08DCD: MemLdStr global_12
  loc_B08DD0: LitI4 1
  loc_B08DD5: AddI4
  loc_B08DD6: FLdPr Me
  loc_B08DD9: MemLdI2 global_84
  loc_B08DDC: CI4UI1
  loc_B08DDD: FLdPr Me
  loc_B08DE0: MemLdStr global_80
  loc_B08DE3: Ary1LdPr
  loc_B08DE4: MemStI4 global_12
  loc_B08DE7: FLdPr Me
  loc_B08DEA: MemLdRfVar from_stack_1.global_84
  loc_B08DED: NextI2 var_2CC, loc_B08C39
  loc_B08DF2: LitI2_Byte &HFF
  loc_B08DF4: FLdPr Me
  loc_B08DF7: MemStI2 bGenerado
  loc_B08DFA: LitI4 0
  loc_B08DFF: CI2I4
  loc_B08E00: FLdPr Me
  loc_B08E03: Me.MousePointer = from_stack_1
  loc_B08E08: LitVarStr var_A4, vbNullString
  loc_B08E0D: PopAdLdVar
  loc_B08E0E: FLdPr Me
  loc_B08E11: VCallAd Control_ID_statusBar
  loc_B08E14: FStAdFunc var_B8
  loc_B08E17: FLdPr var_B8
  loc_B08E1A: LateIdSt
  loc_B08E1F: FFree1Ad var_B8
  loc_B08E22: ExitProcHresult
  loc_B08E23: LitI4 0
  loc_B08E28: LitStr "Error "
  loc_B08E2B: FLdRfVar var_2C4
  loc_B08E2E: ImpAdCallI2 Err 'rtcErrObj
  loc_B08E33: FStAdFunc var_B8
  loc_B08E36: FLdPr var_B8
  loc_B08E39:  = Err.Number
  loc_B08E3E: ILdRf var_2C4
  loc_B08E41: CStrI4
  loc_B08E43: FStStrNoPop var_194
  loc_B08E46: ConcatStr
  loc_B08E47: FStStrNoPop var_198
  loc_B08E4A: LitStr ": "
  loc_B08E4D: ConcatStr
  loc_B08E4E: FStStrNoPop var_2D8
  loc_B08E51: FLdRfVar var_19C
  loc_B08E54: ImpAdCallI2 Err 'rtcErrObj
  loc_B08E59: FStAdFunc var_130
  loc_B08E5C: FLdPr var_130
  loc_B08E5F:  = Err.Description
  loc_B08E64: ILdRf var_19C
  loc_B08E67: ConcatStr
  loc_B08E68: FStStrNoPop var_2DC
  loc_B08E6B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B08E70: FFreeStr var_194 = "": var_198 = "": var_2D8 = "": var_19C = ""
  loc_B08E7D: FFreeAd var_B8 = ""
  loc_B08E84: ExitProcHresult
  loc_B08E85: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AC4A5C
  'Data Table: 4B5738
  loc_AC446C: FLdRfVar var_88
  loc_AC446F: LitI2_Byte 0
  loc_AC4471: LitI2_Byte &HFF
  loc_AC4473: ImpAdLdI4 MemVar_C3D83C
  loc_AC4476: FLdPr Me
  loc_AC4479: MemLdRfVar from_stack_1.global_76
  loc_AC447C: NewIfNullPr IFileSystem3
  loc_AC447F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AC4484: ILdRf var_88
  loc_AC4487: FLdPr Me
  loc_AC448A: MemStVarAd
  loc_AC448E: FFree1Ad var_88
  loc_AC4491: Call Proc_217_37_AA041C()
  loc_AC4496: LitI2_Byte 1
  loc_AC4498: FLdPr Me
  loc_AC449B: MemLdRfVar from_stack_1.global_84
  loc_AC449E: FLdPr Me
  loc_AC44A1: MemLdStr global_80
  loc_AC44A4: LitI2_Byte 1
  loc_AC44A6: FnUBound
  loc_AC44A8: CI2I4
  loc_AC44A9: ForI2 var_8C
  loc_AC44AF: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC44B4: PopAdLdVar
  loc_AC44B5: FLdPr Me
  loc_AC44B8: MemLdRfVar from_stack_1.htmFile
  loc_AC44BB: LdPrVar
  loc_AC44BD: LateMemCall
  loc_AC44C3: LitStr "<td rowspan="""
  loc_AC44C6: FLdPr Me
  loc_AC44C9: MemLdI2 global_84
  loc_AC44CC: CI4UI1
  loc_AC44CD: FLdPr Me
  loc_AC44D0: MemLdStr global_80
  loc_AC44D3: Ary1LdPr
  loc_AC44D4: MemLdStr global_12
  loc_AC44D7: CStrI4
  loc_AC44D9: FStStrNoPop var_B0
  loc_AC44DC: ConcatStr
  loc_AC44DD: FStStrNoPop var_B4
  loc_AC44E0: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_AC44E3: ConcatStr
  loc_AC44E4: FStStrNoPop var_B8
  loc_AC44E7: FLdPr Me
  loc_AC44EA: MemLdI2 global_84
  loc_AC44ED: CI4UI1
  loc_AC44EE: FLdPr Me
  loc_AC44F1: MemLdStr global_80
  loc_AC44F4: Ary1LdPr
  loc_AC44F5: MemLdStr global_0
  loc_AC44F8: ConcatStr
  loc_AC44F9: FStStrNoPop var_BC
  loc_AC44FC: LitStr "<br>"
  loc_AC44FF: ConcatStr
  loc_AC4500: FStStrNoPop var_C0
  loc_AC4503: FLdPr Me
  loc_AC4506: MemLdI2 global_84
  loc_AC4509: CI4UI1
  loc_AC450A: FLdPr Me
  loc_AC450D: MemLdStr global_80
  loc_AC4510: Ary1LdPr
  loc_AC4511: MemLdStr global_4
  loc_AC4514: ConcatStr
  loc_AC4515: FStStrNoPop var_C4
  loc_AC4518: LitStr "</td>"
  loc_AC451B: ConcatStr
  loc_AC451C: CVarStr var_D4
  loc_AC451F: PopAdLdVar
  loc_AC4520: FLdPr Me
  loc_AC4523: MemLdRfVar from_stack_1.htmFile
  loc_AC4526: LdPrVar
  loc_AC4528: LateMemCall
  loc_AC452E: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AC453D: FFree1Var var_D4 = ""
  loc_AC4540: LitI2_Byte 1
  loc_AC4542: FLdPr Me
  loc_AC4545: MemLdRfVar from_stack_1.global_86
  loc_AC4548: FLdPr Me
  loc_AC454B: MemLdI2 global_84
  loc_AC454E: CI4UI1
  loc_AC454F: FLdPr Me
  loc_AC4552: MemLdStr global_80
  loc_AC4555: Ary1LdPr
  loc_AC4556: MemLdStr global_8
  loc_AC4559: LitI2_Byte 1
  loc_AC455B: FnUBound
  loc_AC455D: CI2I4
  loc_AC455E: ForI2 var_D8
  loc_AC4564: FLdPr Me
  loc_AC4567: MemLdI2 global_86
  loc_AC456A: LitI2_Byte 1
  loc_AC456C: GtI2
  loc_AC456D: BranchF loc_AC4584
  loc_AC4570: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC4575: PopAdLdVar
  loc_AC4576: FLdPr Me
  loc_AC4579: MemLdRfVar from_stack_1.htmFile
  loc_AC457C: LdPrVar
  loc_AC457E: LateMemCall
  loc_AC4584: LitStr "<td rowspan="""
  loc_AC4587: FLdPr Me
  loc_AC458A: MemLdI2 global_86
  loc_AC458D: CI4UI1
  loc_AC458E: FLdPr Me
  loc_AC4591: MemLdI2 global_84
  loc_AC4594: CI4UI1
  loc_AC4595: FLdPr Me
  loc_AC4598: MemLdStr global_80
  loc_AC459B: Ary1LdPr
  loc_AC459C: MemLdStr global_8
  loc_AC459F: Ary1LdPr
  loc_AC45A0: MemLdStr global_12
  loc_AC45A3: CStrI4
  loc_AC45A5: FStStrNoPop var_B0
  loc_AC45A8: ConcatStr
  loc_AC45A9: FStStrNoPop var_B4
  loc_AC45AC: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_AC45AF: ConcatStr
  loc_AC45B0: FStStrNoPop var_B8
  loc_AC45B3: FLdPr Me
  loc_AC45B6: MemLdI2 global_86
  loc_AC45B9: CI4UI1
  loc_AC45BA: FLdPr Me
  loc_AC45BD: MemLdI2 global_84
  loc_AC45C0: CI4UI1
  loc_AC45C1: FLdPr Me
  loc_AC45C4: MemLdStr global_80
  loc_AC45C7: Ary1LdPr
  loc_AC45C8: MemLdStr global_8
  loc_AC45CB: Ary1LdPr
  loc_AC45CC: MemLdStr global_0
  loc_AC45CF: ConcatStr
  loc_AC45D0: FStStrNoPop var_BC
  loc_AC45D3: LitStr "<br>"
  loc_AC45D6: ConcatStr
  loc_AC45D7: FStStrNoPop var_C0
  loc_AC45DA: FLdPr Me
  loc_AC45DD: MemLdI2 global_86
  loc_AC45E0: CI4UI1
  loc_AC45E1: FLdPr Me
  loc_AC45E4: MemLdI2 global_84
  loc_AC45E7: CI4UI1
  loc_AC45E8: FLdPr Me
  loc_AC45EB: MemLdStr global_80
  loc_AC45EE: Ary1LdPr
  loc_AC45EF: MemLdStr global_8
  loc_AC45F2: Ary1LdPr
  loc_AC45F3: MemLdStr global_4
  loc_AC45F6: ConcatStr
  loc_AC45F7: FStStrNoPop var_C4
  loc_AC45FA: LitStr "</td>"
  loc_AC45FD: ConcatStr
  loc_AC45FE: CVarStr var_D4
  loc_AC4601: PopAdLdVar
  loc_AC4602: FLdPr Me
  loc_AC4605: MemLdRfVar from_stack_1.htmFile
  loc_AC4608: LdPrVar
  loc_AC460A: LateMemCall
  loc_AC4610: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AC461F: FFree1Var var_D4 = ""
  loc_AC4622: LitI2_Byte 1
  loc_AC4624: FLdPr Me
  loc_AC4627: MemLdRfVar from_stack_1.global_88
  loc_AC462A: FLdPr Me
  loc_AC462D: MemLdI2 global_86
  loc_AC4630: CI4UI1
  loc_AC4631: FLdPr Me
  loc_AC4634: MemLdI2 global_84
  loc_AC4637: CI4UI1
  loc_AC4638: FLdPr Me
  loc_AC463B: MemLdStr global_80
  loc_AC463E: Ary1LdPr
  loc_AC463F: MemLdStr global_8
  loc_AC4642: Ary1LdPr
  loc_AC4643: MemLdStr global_8
  loc_AC4646: LitI2_Byte 1
  loc_AC4648: FnUBound
  loc_AC464A: CI2I4
  loc_AC464B: ForI2 var_DC
  loc_AC4651: FLdPr Me
  loc_AC4654: MemLdI2 global_88
  loc_AC4657: LitI2_Byte 1
  loc_AC4659: GtI2
  loc_AC465A: BranchF loc_AC4671
  loc_AC465D: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC4662: PopAdLdVar
  loc_AC4663: FLdPr Me
  loc_AC4666: MemLdRfVar from_stack_1.htmFile
  loc_AC4669: LdPrVar
  loc_AC466B: LateMemCall
  loc_AC4671: LitStr "<td rowspan="""
  loc_AC4674: FLdPr Me
  loc_AC4677: MemLdI2 global_88
  loc_AC467A: CI4UI1
  loc_AC467B: FLdPr Me
  loc_AC467E: MemLdI2 global_86
  loc_AC4681: CI4UI1
  loc_AC4682: FLdPr Me
  loc_AC4685: MemLdI2 global_84
  loc_AC4688: CI4UI1
  loc_AC4689: FLdPr Me
  loc_AC468C: MemLdStr global_80
  loc_AC468F: Ary1LdPr
  loc_AC4690: MemLdStr global_8
  loc_AC4693: Ary1LdPr
  loc_AC4694: MemLdStr global_8
  loc_AC4697: Ary1LdPr
  loc_AC4698: MemLdStr global_12
  loc_AC469B: CStrI4
  loc_AC469D: FStStrNoPop var_B0
  loc_AC46A0: ConcatStr
  loc_AC46A1: FStStrNoPop var_B4
  loc_AC46A4: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_AC46A7: ConcatStr
  loc_AC46A8: FStStrNoPop var_B8
  loc_AC46AB: FLdPr Me
  loc_AC46AE: MemLdI2 global_88
  loc_AC46B1: CI4UI1
  loc_AC46B2: FLdPr Me
  loc_AC46B5: MemLdI2 global_86
  loc_AC46B8: CI4UI1
  loc_AC46B9: FLdPr Me
  loc_AC46BC: MemLdI2 global_84
  loc_AC46BF: CI4UI1
  loc_AC46C0: FLdPr Me
  loc_AC46C3: MemLdStr global_80
  loc_AC46C6: Ary1LdPr
  loc_AC46C7: MemLdStr global_8
  loc_AC46CA: Ary1LdPr
  loc_AC46CB: MemLdStr global_8
  loc_AC46CE: Ary1LdPr
  loc_AC46CF: MemLdStr global_0
  loc_AC46D2: ConcatStr
  loc_AC46D3: FStStrNoPop var_BC
  loc_AC46D6: LitStr "<br>"
  loc_AC46D9: ConcatStr
  loc_AC46DA: FStStrNoPop var_C0
  loc_AC46DD: FLdPr Me
  loc_AC46E0: MemLdI2 global_88
  loc_AC46E3: CI4UI1
  loc_AC46E4: FLdPr Me
  loc_AC46E7: MemLdI2 global_86
  loc_AC46EA: CI4UI1
  loc_AC46EB: FLdPr Me
  loc_AC46EE: MemLdI2 global_84
  loc_AC46F1: CI4UI1
  loc_AC46F2: FLdPr Me
  loc_AC46F5: MemLdStr global_80
  loc_AC46F8: Ary1LdPr
  loc_AC46F9: MemLdStr global_8
  loc_AC46FC: Ary1LdPr
  loc_AC46FD: MemLdStr global_8
  loc_AC4700: Ary1LdPr
  loc_AC4701: MemLdStr global_4
  loc_AC4704: ConcatStr
  loc_AC4705: FStStrNoPop var_C4
  loc_AC4708: LitStr "</td>"
  loc_AC470B: ConcatStr
  loc_AC470C: CVarStr var_D4
  loc_AC470F: PopAdLdVar
  loc_AC4710: FLdPr Me
  loc_AC4713: MemLdRfVar from_stack_1.htmFile
  loc_AC4716: LdPrVar
  loc_AC4718: LateMemCall
  loc_AC471E: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AC472D: FFree1Var var_D4 = ""
  loc_AC4730: LitI4 1
  loc_AC4735: FLdPr Me
  loc_AC4738: MemLdRfVar from_stack_1.global_92
  loc_AC473B: FLdPr Me
  loc_AC473E: MemLdI2 global_88
  loc_AC4741: CI4UI1
  loc_AC4742: FLdPr Me
  loc_AC4745: MemLdI2 global_86
  loc_AC4748: CI4UI1
  loc_AC4749: FLdPr Me
  loc_AC474C: MemLdI2 global_84
  loc_AC474F: CI4UI1
  loc_AC4750: FLdPr Me
  loc_AC4753: MemLdStr global_80
  loc_AC4756: Ary1LdPr
  loc_AC4757: MemLdStr global_8
  loc_AC475A: Ary1LdPr
  loc_AC475B: MemLdStr global_8
  loc_AC475E: Ary1LdPr
  loc_AC475F: MemLdStr global_8
  loc_AC4762: LitI2_Byte 1
  loc_AC4764: FnUBound
  loc_AC4766: ForI4 var_E4
  loc_AC476C: FLdPr Me
  loc_AC476F: MemLdStr global_92
  loc_AC4772: LitI4 1
  loc_AC4777: GtI4
  loc_AC4778: BranchF loc_AC478F
  loc_AC477B: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC4780: PopAdLdVar
  loc_AC4781: FLdPr Me
  loc_AC4784: MemLdRfVar from_stack_1.htmFile
  loc_AC4787: LdPrVar
  loc_AC4789: LateMemCall
  loc_AC478F: FLdPr Me
  loc_AC4792: MemLdStr global_92
  loc_AC4795: FLdPr Me
  loc_AC4798: MemLdI2 global_88
  loc_AC479B: CI4UI1
  loc_AC479C: FLdPr Me
  loc_AC479F: MemLdI2 global_86
  loc_AC47A2: CI4UI1
  loc_AC47A3: FLdPr Me
  loc_AC47A6: MemLdI2 global_84
  loc_AC47A9: CI4UI1
  loc_AC47AA: FLdPr Me
  loc_AC47AD: MemLdStr global_80
  loc_AC47B0: AryLock
  loc_AC47B3: Ary1LdPr
  loc_AC47B4: MemLdStr global_8
  loc_AC47B7: AryLock
  loc_AC47BA: Ary1LdPr
  loc_AC47BB: MemLdStr global_8
  loc_AC47BE: AryLock
  loc_AC47C1: Ary1LdPr
  loc_AC47C2: MemLdStr global_8
  loc_AC47C5: AryLock
  loc_AC47C8: Ary1LdRf
  loc_AC47C9: FStR4 var_F8
  loc_AC47CC: FLdRfVar var_FA
  loc_AC47CF: FLdPr Me
  loc_AC47D2: VCallAd Control_ID_chkMarcar
  loc_AC47D5: FStAdFunc var_88
  loc_AC47D8: FLdPr var_88
  loc_AC47DB:  = Me.Value
  loc_AC47E0: FLdI2 var_FA
  loc_AC47E3: CI4UI1
  loc_AC47E4: LitI4 1
  loc_AC47E9: EqI4
  loc_AC47EA: FFree1Ad var_88
  loc_AC47ED: BranchF loc_AC4862
  loc_AC47F0: FMemLdR4 var_F8(8)
  loc_AC47F5: LitStr vbNullString
  loc_AC47F8: NeStr
  loc_AC47FA: BranchF loc_AC485F
  loc_AC47FD: FMemLdR4 var_F8(8)
  loc_AC4802: CI4Str
  loc_AC4803: LitI4 &H1E
  loc_AC4808: GtI4
  loc_AC4809: BranchF loc_AC4837
  loc_AC480C: LitStr "       <td align=""left"" bgcolor=""#FFFF00"">"
  loc_AC480F: FMemLdR4 var_F8(0)
  loc_AC4814: ConcatStr
  loc_AC4815: FStStrNoPop var_B0
  loc_AC4818: LitStr "</td>"
  loc_AC481B: ConcatStr
  loc_AC481C: CVarStr var_D4
  loc_AC481F: PopAdLdVar
  loc_AC4820: FLdPr Me
  loc_AC4823: MemLdRfVar from_stack_1.htmFile
  loc_AC4826: LdPrVar
  loc_AC4828: LateMemCall
  loc_AC482E: FFree1Str var_B0
  loc_AC4831: FFree1Var var_D4 = ""
  loc_AC4834: Branch loc_AC485F
  loc_AC4837: LitStr "       <td align=""left"">"
  loc_AC483A: FMemLdR4 var_F8(0)
  loc_AC483F: ConcatStr
  loc_AC4840: FStStrNoPop var_B0
  loc_AC4843: LitStr "</td>"
  loc_AC4846: ConcatStr
  loc_AC4847: CVarStr var_D4
  loc_AC484A: PopAdLdVar
  loc_AC484B: FLdPr Me
  loc_AC484E: MemLdRfVar from_stack_1.htmFile
  loc_AC4851: LdPrVar
  loc_AC4853: LateMemCall
  loc_AC4859: FFree1Str var_B0
  loc_AC485C: FFree1Var var_D4 = ""
  loc_AC485F: Branch loc_AC4890
  loc_AC4862: LitI4 0
  loc_AC4867: LitI4 0
  loc_AC486C: LitI2_Byte 0
  loc_AC486E: LitStr "left"
  loc_AC4871: FMemLdR4 var_F8(0)
  loc_AC4876: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC487B: CVarStr var_D4
  loc_AC487E: PopAdLdVar
  loc_AC487F: FLdPr Me
  loc_AC4882: MemLdRfVar from_stack_1.htmFile
  loc_AC4885: LdPrVar
  loc_AC4887: LateMemCall
  loc_AC488D: FFree1Var var_D4 = ""
  loc_AC4890: LitI4 0
  loc_AC4895: LitI4 0
  loc_AC489A: LitI2_Byte 0
  loc_AC489C: LitStr "right"
  loc_AC489F: FMemLdR4 var_F8(4)
  loc_AC48A4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC48A9: CVarStr var_D4
  loc_AC48AC: PopAdLdVar
  loc_AC48AD: FLdPr Me
  loc_AC48B0: MemLdRfVar from_stack_1.htmFile
  loc_AC48B3: LdPrVar
  loc_AC48B5: LateMemCall
  loc_AC48BB: FFree1Var var_D4 = ""
  loc_AC48BE: LitI4 0
  loc_AC48C3: FStR4 var_F8
  loc_AC48C6: AryUnlock
  loc_AC48C9: AryUnlock
  loc_AC48CC: AryUnlock
  loc_AC48CF: AryUnlock
  loc_AC48D2: LitVarStr var_9C, "     </tr>"
  loc_AC48D7: PopAdLdVar
  loc_AC48D8: FLdPr Me
  loc_AC48DB: MemLdRfVar from_stack_1.htmFile
  loc_AC48DE: LdPrVar
  loc_AC48E0: LateMemCall
  loc_AC48E6: FLdPr Me
  loc_AC48E9: MemLdRfVar from_stack_1.global_92
  loc_AC48EC: NextI4 var_E4, loc_AC476C
  loc_AC48F1: FLdPr Me
  loc_AC48F4: MemLdRfVar from_stack_1.global_88
  loc_AC48F7: NextI2 var_DC, loc_AC4651
  loc_AC48FC: FLdPr Me
  loc_AC48FF: MemLdRfVar from_stack_1.global_86
  loc_AC4902: NextI2 var_D8, loc_AC4564
  loc_AC4907: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC490C: PopAdLdVar
  loc_AC490D: FLdPr Me
  loc_AC4910: MemLdRfVar from_stack_1.htmFile
  loc_AC4913: LdPrVar
  loc_AC4915: LateMemCall
  loc_AC491B: LitStr "    <th colspan=""3"" align=""right"" class=""LineaDato"">Subtotal ("
  loc_AC491E: FLdPr Me
  loc_AC4921: MemLdI2 global_84
  loc_AC4924: CI4UI1
  loc_AC4925: FLdPr Me
  loc_AC4928: MemLdStr global_80
  loc_AC492B: Ary1LdPr
  loc_AC492C: MemLdStr global_0
  loc_AC492F: ConcatStr
  loc_AC4930: FStStrNoPop var_B0
  loc_AC4933: LitStr ")</th>"
  loc_AC4936: ConcatStr
  loc_AC4937: CVarStr var_D4
  loc_AC493A: PopAdLdVar
  loc_AC493B: FLdPr Me
  loc_AC493E: MemLdRfVar from_stack_1.htmFile
  loc_AC4941: LdPrVar
  loc_AC4943: LateMemCall
  loc_AC4949: FFree1Str var_B0
  loc_AC494C: FFree1Var var_D4 = ""
  loc_AC494F: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AC4952: FLdPr Me
  loc_AC4955: MemLdI2 global_84
  loc_AC4958: CI4UI1
  loc_AC4959: FLdPr Me
  loc_AC495C: MemLdStr global_80
  loc_AC495F: Ary1LdPr
  loc_AC4960: MemLdStr global_20
  loc_AC4963: ConcatStr
  loc_AC4964: FStStrNoPop var_B0
  loc_AC4967: LitStr "</th>"
  loc_AC496A: ConcatStr
  loc_AC496B: CVarStr var_D4
  loc_AC496E: PopAdLdVar
  loc_AC496F: FLdPr Me
  loc_AC4972: MemLdRfVar from_stack_1.htmFile
  loc_AC4975: LdPrVar
  loc_AC4977: LateMemCall
  loc_AC497D: FFree1Str var_B0
  loc_AC4980: FFree1Var var_D4 = ""
  loc_AC4983: LitVarStr var_9C, "  </tr>"
  loc_AC4988: PopAdLdVar
  loc_AC4989: FLdPr Me
  loc_AC498C: MemLdRfVar from_stack_1.htmFile
  loc_AC498F: LdPrVar
  loc_AC4991: LateMemCall
  loc_AC4997: FLdPr Me
  loc_AC499A: MemLdRfVar from_stack_1.global_84
  loc_AC499D: NextI2 var_8C, loc_AC44AF
  loc_AC49A2: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC49A7: PopAdLdVar
  loc_AC49A8: FLdPr Me
  loc_AC49AB: MemLdRfVar from_stack_1.htmFile
  loc_AC49AE: LdPrVar
  loc_AC49B0: LateMemCall
  loc_AC49B6: LitVarStr var_9C, "    <th colspan=""5"" class=""Encabezado"">&nbsp;</th>"
  loc_AC49BB: PopAdLdVar
  loc_AC49BC: FLdPr Me
  loc_AC49BF: MemLdRfVar from_stack_1.htmFile
  loc_AC49C2: LdPrVar
  loc_AC49C4: LateMemCall
  loc_AC49CA: LitVarStr var_9C, "  </tr>"
  loc_AC49CF: PopAdLdVar
  loc_AC49D0: FLdPr Me
  loc_AC49D3: MemLdRfVar from_stack_1.htmFile
  loc_AC49D6: LdPrVar
  loc_AC49D8: LateMemCall
  loc_AC49DE: LitVarStr var_9C, "  <tr class=""LineaDato"">"
  loc_AC49E3: PopAdLdVar
  loc_AC49E4: FLdPr Me
  loc_AC49E7: MemLdRfVar from_stack_1.htmFile
  loc_AC49EA: LdPrVar
  loc_AC49EC: LateMemCall
  loc_AC49F2: LitVarStr var_9C, "    <th colspan=""4"" align=""right"" class=""LineaDato"">TOTAL:</th>"
  loc_AC49F7: PopAdLdVar
  loc_AC49F8: FLdPr Me
  loc_AC49FB: MemLdRfVar from_stack_1.htmFile
  loc_AC49FE: LdPrVar
  loc_AC4A00: LateMemCall
  loc_AC4A06: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AC4A09: FLdPr Me
  loc_AC4A0C: MemLdStr global_96
  loc_AC4A0F: ConcatStr
  loc_AC4A10: FStStrNoPop var_B0
  loc_AC4A13: LitStr "</th>"
  loc_AC4A16: ConcatStr
  loc_AC4A17: CVarStr var_D4
  loc_AC4A1A: PopAdLdVar
  loc_AC4A1B: FLdPr Me
  loc_AC4A1E: MemLdRfVar from_stack_1.htmFile
  loc_AC4A21: LdPrVar
  loc_AC4A23: LateMemCall
  loc_AC4A29: FFree1Str var_B0
  loc_AC4A2C: FFree1Var var_D4 = ""
  loc_AC4A2F: LitVarStr var_9C, "  </tr>"
  loc_AC4A34: PopAdLdVar
  loc_AC4A35: FLdPr Me
  loc_AC4A38: MemLdRfVar from_stack_1.htmFile
  loc_AC4A3B: LdPrVar
  loc_AC4A3D: LateMemCall
  loc_AC4A43: Call Proc_217_38_981AC0()
  loc_AC4A48: FLdPr Me
  loc_AC4A4B: MemLdRfVar from_stack_1.htmFile
  loc_AC4A4E: LdPrVar
  loc_AC4A50: LateMemCall
  loc_AC4A56: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AC4A5B: ExitProcHresult
End Sub

Public Sub GeneraXLS() '96CFFC
  'Data Table: 4B5738
  loc_96CFD4: LitI2_Byte &HFF
  loc_96CFD6: FLdPr Me
  loc_96CFD9: MemStI2 global_104
  loc_96CFDC: LitI2_Byte 0
  loc_96CFDE: FLdPr Me
  loc_96CFE1: MemStI2 bLogos
  loc_96CFE4: Call GeneraHTML()
  loc_96CFE9: LitI2_Byte &HFF
  loc_96CFEB: FLdPr Me
  loc_96CFEE: MemStI2 bLogos
  loc_96CFF1: LitI2_Byte 0
  loc_96CFF3: FLdPr Me
  loc_96CFF6: MemStI2 global_104
  loc_96CFF9: ExitProcHresult
End Sub

Private Function Proc_217_33_9E1C04() '9E1C04
  'Data Table: 4B5738
  loc_9E1AFC: FLdPr Me
  loc_9E1AFF: MemLdI2 global_84
  loc_9E1B02: LitI2_Byte 1
  loc_9E1B04: AddI2
  loc_9E1B05: FLdPr Me
  loc_9E1B08: MemStI2 global_84
  loc_9E1B0B: LitI2_Byte 0
  loc_9E1B0D: FLdPr Me
  loc_9E1B10: MemStI2 global_86
  loc_9E1B13: LitI4 0
  loc_9E1B18: FLdPr Me
  loc_9E1B1B: MemLdI2 global_84
  loc_9E1B1E: CI4UI1
  loc_9E1B1F: FLdPr Me
  loc_9E1B22: MemLdRfVar from_stack_1.global_80
  loc_9E1B25: RedimPreserve
  loc_9E1B2F: FLdRfVar var_A0
  loc_9E1B32: LitVarStr var_9C, "CodiPart"
  loc_9E1B37: PopAdLdVar
  loc_9E1B38: FLdRfVar var_8C
  loc_9E1B3B: FLdRfVar var_88
  loc_9E1B3E: FLdPr Me
  loc_9E1B41: MemLdRfVar from_stack_1.global_72
  loc_9E1B44: NewIfNullPr clsimputacion
  loc_9E1B47: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E1B4C: FLdPr var_88
  loc_9E1B4F:  = Me.Fields
  loc_9E1B54: FLdPr var_8C
  loc_9E1B57: from_stack_2 = Me.Item(from_stack_1)
  loc_9E1B5C: LitI2_Byte 0
  loc_9E1B5E: LitVar_Missing var_D4
  loc_9E1B61: LitI2_Byte 0
  loc_9E1B63: FLdZeroAd var_A0
  loc_9E1B66: CVarAd
  loc_9E1B6A: PopAdLdVar
  loc_9E1B6B: FLdPr Me
  loc_9E1B6E: MemLdI2 global_84
  loc_9E1B71: CI4UI1
  loc_9E1B72: FLdPr Me
  loc_9E1B75: MemLdStr global_80
  loc_9E1B78: AryLock
  loc_9E1B7B: Ary1LdPr
  loc_9E1B7C: MemLdRfVar from_stack_1.global_0
  loc_9E1B7F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E1B84: AryUnlock
  loc_9E1B87: FFreeAd var_88 = ""
  loc_9E1B8E: FFreeVar var_B4 = ""
  loc_9E1B95: FLdRfVar var_A0
  loc_9E1B98: LitVarStr var_9C, "DetaPart"
  loc_9E1B9D: PopAdLdVar
  loc_9E1B9E: FLdRfVar var_8C
  loc_9E1BA1: FLdRfVar var_88
  loc_9E1BA4: FLdPr Me
  loc_9E1BA7: MemLdRfVar from_stack_1.global_72
  loc_9E1BAA: NewIfNullPr clsimputacion
  loc_9E1BAD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E1BB2: FLdPr var_88
  loc_9E1BB5:  = Me.Fields
  loc_9E1BBA: FLdPr var_8C
  loc_9E1BBD: from_stack_2 = Me.Item(from_stack_1)
  loc_9E1BC2: LitI2_Byte 0
  loc_9E1BC4: LitVar_Missing var_D4
  loc_9E1BC7: LitI2_Byte 0
  loc_9E1BC9: FLdZeroAd var_A0
  loc_9E1BCC: CVarAd
  loc_9E1BD0: PopAdLdVar
  loc_9E1BD1: FLdPr Me
  loc_9E1BD4: MemLdI2 global_84
  loc_9E1BD7: CI4UI1
  loc_9E1BD8: FLdPr Me
  loc_9E1BDB: MemLdStr global_80
  loc_9E1BDE: AryLock
  loc_9E1BE1: Ary1LdPr
  loc_9E1BE2: MemLdRfVar from_stack_1.global_4
  loc_9E1BE5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E1BEA: AryUnlock
  loc_9E1BED: FFreeAd var_88 = ""
  loc_9E1BF4: FFreeVar var_B4 = ""
  loc_9E1BFB: Call Proc_217_34_9F564C()
  loc_9E1C00: ExitProcHresult
  loc_9E1C01: SubCy
End Function

Private Function Proc_217_34_9F564C() '9F564C
  'Data Table: 4B5738
  loc_9F5518: FLdPr Me
  loc_9F551B: MemLdI2 global_86
  loc_9F551E: LitI2_Byte 1
  loc_9F5520: AddI2
  loc_9F5521: FLdPr Me
  loc_9F5524: MemStI2 global_86
  loc_9F5527: LitI2_Byte 0
  loc_9F5529: FLdPr Me
  loc_9F552C: MemStI2 global_88
  loc_9F552F: LitI4 0
  loc_9F5534: FLdPr Me
  loc_9F5537: MemLdI2 global_86
  loc_9F553A: CI4UI1
  loc_9F553B: FLdPr Me
  loc_9F553E: MemLdI2 global_84
  loc_9F5541: CI4UI1
  loc_9F5542: FLdPr Me
  loc_9F5545: MemLdStr global_80
  loc_9F5548: Ary1LdPr
  loc_9F5549: MemLdRfVar from_stack_1.global_8
  loc_9F554C: RedimPreserve
  loc_9F5556: FLdRfVar var_A0
  loc_9F5559: LitVarStr var_9C, "CodiOrga"
  loc_9F555E: PopAdLdVar
  loc_9F555F: FLdRfVar var_8C
  loc_9F5562: FLdRfVar var_88
  loc_9F5565: FLdPr Me
  loc_9F5568: MemLdRfVar from_stack_1.global_72
  loc_9F556B: NewIfNullPr clsimputacion
  loc_9F556E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9F5573: FLdPr var_88
  loc_9F5576:  = Me.Fields
  loc_9F557B: FLdPr var_8C
  loc_9F557E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5583: LitI2_Byte 0
  loc_9F5585: LitVar_Missing var_D8
  loc_9F5588: LitI2_Byte 0
  loc_9F558A: FLdZeroAd var_A0
  loc_9F558D: CVarAd
  loc_9F5591: PopAdLdVar
  loc_9F5592: FLdPr Me
  loc_9F5595: MemLdI2 global_86
  loc_9F5598: CI4UI1
  loc_9F5599: FLdPr Me
  loc_9F559C: MemLdI2 global_84
  loc_9F559F: CI4UI1
  loc_9F55A0: FLdPr Me
  loc_9F55A3: MemLdStr global_80
  loc_9F55A6: AryLock
  loc_9F55A9: Ary1LdPr
  loc_9F55AA: MemLdStr global_8
  loc_9F55AD: AryLock
  loc_9F55B0: Ary1LdPr
  loc_9F55B1: MemLdRfVar from_stack_1.global_0
  loc_9F55B4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F55B9: AryUnlock
  loc_9F55BC: AryUnlock
  loc_9F55BF: FFreeAd var_88 = ""
  loc_9F55C6: FFreeVar var_B8 = ""
  loc_9F55CD: FLdRfVar var_A0
  loc_9F55D0: LitVarStr var_9C, "DetaOrga"
  loc_9F55D5: PopAdLdVar
  loc_9F55D6: FLdRfVar var_8C
  loc_9F55D9: FLdRfVar var_88
  loc_9F55DC: FLdPr Me
  loc_9F55DF: MemLdRfVar from_stack_1.global_72
  loc_9F55E2: NewIfNullPr clsimputacion
  loc_9F55E5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9F55EA: FLdPr var_88
  loc_9F55ED:  = Me.Fields
  loc_9F55F2: FLdPr var_8C
  loc_9F55F5: from_stack_2 = Me.Item(from_stack_1)
  loc_9F55FA: LitI2_Byte 0
  loc_9F55FC: LitVar_Missing var_D8
  loc_9F55FF: LitI2_Byte 0
  loc_9F5601: FLdZeroAd var_A0
  loc_9F5604: CVarAd
  loc_9F5608: PopAdLdVar
  loc_9F5609: FLdPr Me
  loc_9F560C: MemLdI2 global_86
  loc_9F560F: CI4UI1
  loc_9F5610: FLdPr Me
  loc_9F5613: MemLdI2 global_84
  loc_9F5616: CI4UI1
  loc_9F5617: FLdPr Me
  loc_9F561A: MemLdStr global_80
  loc_9F561D: AryLock
  loc_9F5620: Ary1LdPr
  loc_9F5621: MemLdStr global_8
  loc_9F5624: AryLock
  loc_9F5627: Ary1LdPr
  loc_9F5628: MemLdRfVar from_stack_1.global_4
  loc_9F562B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F5630: AryUnlock
  loc_9F5633: AryUnlock
  loc_9F5636: FFreeAd var_88 = ""
  loc_9F563D: FFreeVar var_B8 = ""
  loc_9F5644: Call Proc_217_35_A0F264()
  loc_9F5649: ExitProcHresult
End Function

Private Function Proc_217_35_A0F264() 'A0F264
  'Data Table: 4B5738
  loc_A0F100: FLdPr Me
  loc_A0F103: MemLdI2 global_88
  loc_A0F106: LitI2_Byte 1
  loc_A0F108: AddI2
  loc_A0F109: FLdPr Me
  loc_A0F10C: MemStI2 global_88
  loc_A0F10F: LitI4 0
  loc_A0F114: FLdPr Me
  loc_A0F117: MemStI4 global_92
  loc_A0F11A: LitI4 0
  loc_A0F11F: FLdPr Me
  loc_A0F122: MemLdI2 global_88
  loc_A0F125: CI4UI1
  loc_A0F126: FLdPr Me
  loc_A0F129: MemLdI2 global_86
  loc_A0F12C: CI4UI1
  loc_A0F12D: FLdPr Me
  loc_A0F130: MemLdI2 global_84
  loc_A0F133: CI4UI1
  loc_A0F134: FLdPr Me
  loc_A0F137: MemLdStr global_80
  loc_A0F13A: Ary1LdPr
  loc_A0F13B: MemLdStr global_8
  loc_A0F13E: Ary1LdPr
  loc_A0F13F: MemLdRfVar from_stack_1.global_8
  loc_A0F142: RedimPreserve
  loc_A0F14C: FLdRfVar var_A0
  loc_A0F14F: LitVarStr var_9C, "CodiFifu"
  loc_A0F154: PopAdLdVar
  loc_A0F155: FLdRfVar var_8C
  loc_A0F158: FLdRfVar var_88
  loc_A0F15B: FLdPr Me
  loc_A0F15E: MemLdRfVar from_stack_1.global_72
  loc_A0F161: NewIfNullPr clsimputacion
  loc_A0F164: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A0F169: FLdPr var_88
  loc_A0F16C:  = Me.Fields
  loc_A0F171: FLdPr var_8C
  loc_A0F174: from_stack_2 = Me.Item(from_stack_1)
  loc_A0F179: LitI2_Byte 0
  loc_A0F17B: LitVar_Missing var_DC
  loc_A0F17E: LitI2_Byte 0
  loc_A0F180: FLdZeroAd var_A0
  loc_A0F183: CVarAd
  loc_A0F187: PopAdLdVar
  loc_A0F188: FLdPr Me
  loc_A0F18B: MemLdI2 global_88
  loc_A0F18E: CI4UI1
  loc_A0F18F: FLdPr Me
  loc_A0F192: MemLdI2 global_86
  loc_A0F195: CI4UI1
  loc_A0F196: FLdPr Me
  loc_A0F199: MemLdI2 global_84
  loc_A0F19C: CI4UI1
  loc_A0F19D: FLdPr Me
  loc_A0F1A0: MemLdStr global_80
  loc_A0F1A3: AryLock
  loc_A0F1A6: Ary1LdPr
  loc_A0F1A7: MemLdStr global_8
  loc_A0F1AA: AryLock
  loc_A0F1AD: Ary1LdPr
  loc_A0F1AE: MemLdStr global_8
  loc_A0F1B1: AryLock
  loc_A0F1B4: Ary1LdPr
  loc_A0F1B5: MemLdRfVar from_stack_1.global_0
  loc_A0F1B8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0F1BD: AryUnlock
  loc_A0F1C0: AryUnlock
  loc_A0F1C3: AryUnlock
  loc_A0F1C6: FFreeAd var_88 = ""
  loc_A0F1CD: FFreeVar var_BC = ""
  loc_A0F1D4: FLdRfVar var_A0
  loc_A0F1D7: LitVarStr var_9C, "DetaFifu"
  loc_A0F1DC: PopAdLdVar
  loc_A0F1DD: FLdRfVar var_8C
  loc_A0F1E0: FLdRfVar var_88
  loc_A0F1E3: FLdPr Me
  loc_A0F1E6: MemLdRfVar from_stack_1.global_72
  loc_A0F1E9: NewIfNullPr clsimputacion
  loc_A0F1EC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A0F1F1: FLdPr var_88
  loc_A0F1F4:  = Me.Fields
  loc_A0F1F9: FLdPr var_8C
  loc_A0F1FC: from_stack_2 = Me.Item(from_stack_1)
  loc_A0F201: LitI2_Byte 0
  loc_A0F203: LitVar_Missing var_DC
  loc_A0F206: LitI2_Byte 0
  loc_A0F208: FLdZeroAd var_A0
  loc_A0F20B: CVarAd
  loc_A0F20F: PopAdLdVar
  loc_A0F210: FLdPr Me
  loc_A0F213: MemLdI2 global_88
  loc_A0F216: CI4UI1
  loc_A0F217: FLdPr Me
  loc_A0F21A: MemLdI2 global_86
  loc_A0F21D: CI4UI1
  loc_A0F21E: FLdPr Me
  loc_A0F221: MemLdI2 global_84
  loc_A0F224: CI4UI1
  loc_A0F225: FLdPr Me
  loc_A0F228: MemLdStr global_80
  loc_A0F22B: AryLock
  loc_A0F22E: Ary1LdPr
  loc_A0F22F: MemLdStr global_8
  loc_A0F232: AryLock
  loc_A0F235: Ary1LdPr
  loc_A0F236: MemLdStr global_8
  loc_A0F239: AryLock
  loc_A0F23C: Ary1LdPr
  loc_A0F23D: MemLdRfVar from_stack_1.global_4
  loc_A0F240: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0F245: AryUnlock
  loc_A0F248: AryUnlock
  loc_A0F24B: AryUnlock
  loc_A0F24E: FFreeAd var_88 = ""
  loc_A0F255: FFreeVar var_BC = ""
  loc_A0F25C: Call Proc_217_36_A3F144()
  loc_A0F261: ExitProcHresult
End Function

Private Function Proc_217_36_A3F144() 'A3F144
  'Data Table: 4B5738
  loc_A3EF08: FLdPr Me
  loc_A3EF0B: MemLdStr global_92
  loc_A3EF0E: LitI4 1
  loc_A3EF13: AddI4
  loc_A3EF14: FLdPr Me
  loc_A3EF17: MemStI4 global_92
  loc_A3EF1A: LitI4 0
  loc_A3EF1F: FLdPr Me
  loc_A3EF22: MemLdStr global_92
  loc_A3EF25: FLdPr Me
  loc_A3EF28: MemLdI2 global_88
  loc_A3EF2B: CI4UI1
  loc_A3EF2C: FLdPr Me
  loc_A3EF2F: MemLdI2 global_86
  loc_A3EF32: CI4UI1
  loc_A3EF33: FLdPr Me
  loc_A3EF36: MemLdI2 global_84
  loc_A3EF39: CI4UI1
  loc_A3EF3A: FLdPr Me
  loc_A3EF3D: MemLdStr global_80
  loc_A3EF40: Ary1LdPr
  loc_A3EF41: MemLdStr global_8
  loc_A3EF44: Ary1LdPr
  loc_A3EF45: MemLdStr global_8
  loc_A3EF48: Ary1LdPr
  loc_A3EF49: MemLdRfVar from_stack_1.global_8
  loc_A3EF4C: RedimPreserve
  loc_A3EF56: FLdRfVar var_A0
  loc_A3EF59: LitVarStr var_9C, "ExorImpu"
  loc_A3EF5E: PopAdLdVar
  loc_A3EF5F: FLdRfVar var_8C
  loc_A3EF62: FLdRfVar var_88
  loc_A3EF65: FLdPr Me
  loc_A3EF68: MemLdRfVar from_stack_1.global_72
  loc_A3EF6B: NewIfNullPr clsimputacion
  loc_A3EF6E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A3EF73: FLdPr var_88
  loc_A3EF76:  = Me.Fields
  loc_A3EF7B: FLdPr var_8C
  loc_A3EF7E: from_stack_2 = Me.Item(from_stack_1)
  loc_A3EF83: LitI2_Byte 0
  loc_A3EF85: LitVar_Missing var_E0
  loc_A3EF88: LitI2_Byte 0
  loc_A3EF8A: FLdZeroAd var_A0
  loc_A3EF8D: CVarAd
  loc_A3EF91: PopAdLdVar
  loc_A3EF92: FLdPr Me
  loc_A3EF95: MemLdStr global_92
  loc_A3EF98: FLdPr Me
  loc_A3EF9B: MemLdI2 global_88
  loc_A3EF9E: CI4UI1
  loc_A3EF9F: FLdPr Me
  loc_A3EFA2: MemLdI2 global_86
  loc_A3EFA5: CI4UI1
  loc_A3EFA6: FLdPr Me
  loc_A3EFA9: MemLdI2 global_84
  loc_A3EFAC: CI4UI1
  loc_A3EFAD: FLdPr Me
  loc_A3EFB0: MemLdStr global_80
  loc_A3EFB3: AryLock
  loc_A3EFB6: Ary1LdPr
  loc_A3EFB7: MemLdStr global_8
  loc_A3EFBA: AryLock
  loc_A3EFBD: Ary1LdPr
  loc_A3EFBE: MemLdStr global_8
  loc_A3EFC1: AryLock
  loc_A3EFC4: Ary1LdPr
  loc_A3EFC5: MemLdStr global_8
  loc_A3EFC8: AryLock
  loc_A3EFCB: Ary1LdPr
  loc_A3EFCC: MemLdRfVar from_stack_1.global_0
  loc_A3EFCF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A3EFD4: AryUnlock
  loc_A3EFD7: AryUnlock
  loc_A3EFDA: AryUnlock
  loc_A3EFDD: AryUnlock
  loc_A3EFE0: FFreeAd var_88 = ""
  loc_A3EFE7: FFreeVar var_C0 = ""
  loc_A3EFEE: FLdRfVar var_A0
  loc_A3EFF1: LitVarStr var_9C, "SaldImpu"
  loc_A3EFF6: PopAdLdVar
  loc_A3EFF7: FLdRfVar var_8C
  loc_A3EFFA: FLdRfVar var_88
  loc_A3EFFD: FLdPr Me
  loc_A3F000: MemLdRfVar from_stack_1.global_72
  loc_A3F003: NewIfNullPr clsimputacion
  loc_A3F006: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A3F00B: FLdPr var_88
  loc_A3F00E:  = Me.Fields
  loc_A3F013: FLdPr var_8C
  loc_A3F016: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F01B: LitI2_Byte 0
  loc_A3F01D: FLdPr Me
  loc_A3F020: MemLdI2 global_84
  loc_A3F023: CI4UI1
  loc_A3F024: FLdPr Me
  loc_A3F027: MemLdStr global_80
  loc_A3F02A: AryLock
  loc_A3F02D: Ary1LdPr
  loc_A3F02E: MemLdRfVar from_stack_1.global_20
  loc_A3F031: CVarRef
  loc_A3F036: LitI2_Byte &HFF
  loc_A3F038: FLdZeroAd var_A0
  loc_A3F03B: CVarAd
  loc_A3F03F: PopAdLdVar
  loc_A3F040: FLdPr Me
  loc_A3F043: MemLdStr global_92
  loc_A3F046: FLdPr Me
  loc_A3F049: MemLdI2 global_88
  loc_A3F04C: CI4UI1
  loc_A3F04D: FLdPr Me
  loc_A3F050: MemLdI2 global_86
  loc_A3F053: CI4UI1
  loc_A3F054: FLdPr Me
  loc_A3F057: MemLdI2 global_84
  loc_A3F05A: CI4UI1
  loc_A3F05B: FLdPr Me
  loc_A3F05E: MemLdStr global_80
  loc_A3F061: AryLock
  loc_A3F064: Ary1LdPr
  loc_A3F065: MemLdStr global_8
  loc_A3F068: AryLock
  loc_A3F06B: Ary1LdPr
  loc_A3F06C: MemLdStr global_8
  loc_A3F06F: AryLock
  loc_A3F072: Ary1LdPr
  loc_A3F073: MemLdStr global_8
  loc_A3F076: AryLock
  loc_A3F079: Ary1LdPr
  loc_A3F07A: MemLdRfVar from_stack_1.global_4
  loc_A3F07D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A3F082: AryUnlock
  loc_A3F085: AryUnlock
  loc_A3F088: AryUnlock
  loc_A3F08B: AryUnlock
  loc_A3F08E: AryUnlock
  loc_A3F091: FFreeAd var_88 = ""
  loc_A3F098: FFree1Var var_C0 = ""
  loc_A3F09B: FLdRfVar var_A0
  loc_A3F09E: LitVarStr var_9C, "Dias"
  loc_A3F0A3: PopAdLdVar
  loc_A3F0A4: FLdRfVar var_8C
  loc_A3F0A7: FLdRfVar var_88
  loc_A3F0AA: FLdPr Me
  loc_A3F0AD: MemLdRfVar from_stack_1.global_72
  loc_A3F0B0: NewIfNullPr clsimputacion
  loc_A3F0B3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A3F0B8: FLdPr var_88
  loc_A3F0BB:  = Me.Fields
  loc_A3F0C0: FLdPr var_8C
  loc_A3F0C3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F0C8: LitI2_Byte 0
  loc_A3F0CA: LitVar_Missing var_E0
  loc_A3F0CD: LitI2_Byte 0
  loc_A3F0CF: FLdZeroAd var_A0
  loc_A3F0D2: CVarAd
  loc_A3F0D6: PopAdLdVar
  loc_A3F0D7: FLdPr Me
  loc_A3F0DA: MemLdStr global_92
  loc_A3F0DD: FLdPr Me
  loc_A3F0E0: MemLdI2 global_88
  loc_A3F0E3: CI4UI1
  loc_A3F0E4: FLdPr Me
  loc_A3F0E7: MemLdI2 global_86
  loc_A3F0EA: CI4UI1
  loc_A3F0EB: FLdPr Me
  loc_A3F0EE: MemLdI2 global_84
  loc_A3F0F1: CI4UI1
  loc_A3F0F2: FLdPr Me
  loc_A3F0F5: MemLdStr global_80
  loc_A3F0F8: AryLock
  loc_A3F0FB: Ary1LdPr
  loc_A3F0FC: MemLdStr global_8
  loc_A3F0FF: AryLock
  loc_A3F102: Ary1LdPr
  loc_A3F103: MemLdStr global_8
  loc_A3F106: AryLock
  loc_A3F109: Ary1LdPr
  loc_A3F10A: MemLdStr global_8
  loc_A3F10D: AryLock
  loc_A3F110: Ary1LdPr
  loc_A3F111: MemLdRfVar from_stack_1.global_8
  loc_A3F114: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A3F119: AryUnlock
  loc_A3F11C: AryUnlock
  loc_A3F11F: AryUnlock
  loc_A3F122: AryUnlock
  loc_A3F125: FFreeAd var_88 = ""
  loc_A3F12C: FFreeVar var_C0 = ""
  loc_A3F133: FLdPr Me
  loc_A3F136: MemLdRfVar from_stack_1.global_72
  loc_A3F139: NewIfNullPr clsimputacion
  loc_A3F13C: Call clsimputacion.MoveSiguiente()
  loc_A3F141: ExitProcHresult
End Function

Private Function Proc_217_37_AA041C() 'AA041C
  'Data Table: 4B5738
  loc_A9FF44: LitVarStr var_94, "<html>"
  loc_A9FF49: PopAdLdVar
  loc_A9FF4A: FLdPr Me
  loc_A9FF4D: MemLdRfVar from_stack_1.htmFile
  loc_A9FF50: LdPrVar
  loc_A9FF52: LateMemCall
  loc_A9FF58: LitVarStr var_94, "<head>"
  loc_A9FF5D: PopAdLdVar
  loc_A9FF5E: FLdPr Me
  loc_A9FF61: MemLdRfVar from_stack_1.htmFile
  loc_A9FF64: LdPrVar
  loc_A9FF66: LateMemCall
  loc_A9FF6C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A9FF71: PopAdLdVar
  loc_A9FF72: FLdPr Me
  loc_A9FF75: MemLdRfVar from_stack_1.htmFile
  loc_A9FF78: LdPrVar
  loc_A9FF7A: LateMemCall
  loc_A9FF80: LitStr "<title>"
  loc_A9FF83: FLdRfVar var_A8
  loc_A9FF86: FLdPr Me
  loc_A9FF89:  = Me.Caption
  loc_A9FF8E: ILdRf var_A8
  loc_A9FF91: ConcatStr
  loc_A9FF92: FStStrNoPop var_AC
  loc_A9FF95: LitStr "</title>"
  loc_A9FF98: ConcatStr
  loc_A9FF99: CVarStr var_BC
  loc_A9FF9C: PopAdLdVar
  loc_A9FF9D: FLdPr Me
  loc_A9FFA0: MemLdRfVar from_stack_1.htmFile
  loc_A9FFA3: LdPrVar
  loc_A9FFA5: LateMemCall
  loc_A9FFAB: FFreeStr var_A8 = ""
  loc_A9FFB2: FFree1Var var_BC = ""
  loc_A9FFB5: LitStr vbNullString
  loc_A9FFB8: ILdRf Me
  loc_A9FFBB: CastAd
  loc_A9FFBE: FStAdFunc var_C0
  loc_A9FFC1: FLdRfVar var_C0
  loc_A9FFC4: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A9FFC9: FFree1Ad var_C0
  loc_A9FFCC: LitI4 0
  loc_A9FFD1: FStStrCopy var_AC
  loc_A9FFD4: FLdRfVar var_AC
  loc_A9FFD7: LitI4 0
  loc_A9FFDC: FStStrCopy var_A8
  loc_A9FFDF: FLdRfVar var_A8
  loc_A9FFE2: LitI2_Byte &HFF
  loc_A9FFE4: PopTmpLdAd2 var_C2
  loc_A9FFE7: FLdPr Me
  loc_A9FFEA: MemLdRfVar from_stack_1.htmFile
  loc_A9FFED: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9FFF2: FFreeStr var_A8 = ""
  loc_A9FFF9: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A9FFFE: PopAdLdVar
  loc_A9FFFF: FLdPr Me
  loc_AA0002: MemLdRfVar from_stack_1.htmFile
  loc_AA0005: LdPrVar
  loc_AA0007: LateMemCall
  loc_AA000D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA0012: PopAdLdVar
  loc_AA0013: FLdPr Me
  loc_AA0016: MemLdRfVar from_stack_1.htmFile
  loc_AA0019: LdPrVar
  loc_AA001B: LateMemCall
  loc_AA0021: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AA0026: PopAdLdVar
  loc_AA0027: FLdPr Me
  loc_AA002A: MemLdRfVar from_stack_1.htmFile
  loc_AA002D: LdPrVar
  loc_AA002F: LateMemCall
  loc_AA0035: FLdPr Me
  loc_AA0038: MemLdI2 bLogos
  loc_AA003B: BranchF loc_AA0052
  loc_AA003E: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AA0043: PopAdLdVar
  loc_AA0044: FLdPr Me
  loc_AA0047: MemLdRfVar from_stack_1.htmFile
  loc_AA004A: LdPrVar
  loc_AA004C: LateMemCall
  loc_AA0052: LitVarStr var_A4, "    <br><br>"
  loc_AA0057: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AA005C: FStVarCopyObj var_BC
  loc_AA005F: FLdRfVar var_BC
  loc_AA0062: FLdRfVar var_D4
  loc_AA0065: ImpAdCallFPR4  = Ucase()
  loc_AA006A: FLdRfVar var_D4
  loc_AA006D: ConcatVar var_E4
  loc_AA0071: LitVarStr var_F4, "</p>"
  loc_AA0076: ConcatVar var_104
  loc_AA007A: PopAdLdVar
  loc_AA007B: FLdPr Me
  loc_AA007E: MemLdRfVar from_stack_1.htmFile
  loc_AA0081: LdPrVar
  loc_AA0083: LateMemCall
  loc_AA0089: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AA0094: LitStr "    <p>"
  loc_AA0097: FLdRfVar var_A8
  loc_AA009A: FLdPr Me
  loc_AA009D:  = Me.Caption
  loc_AA00A2: ILdRf var_A8
  loc_AA00A5: ConcatStr
  loc_AA00A6: FStStrNoPop var_AC
  loc_AA00A9: LitStr "</p></th>"
  loc_AA00AC: ConcatStr
  loc_AA00AD: CVarStr var_BC
  loc_AA00B0: PopAdLdVar
  loc_AA00B1: FLdPr Me
  loc_AA00B4: MemLdRfVar from_stack_1.htmFile
  loc_AA00B7: LdPrVar
  loc_AA00B9: LateMemCall
  loc_AA00BF: FFreeStr var_A8 = ""
  loc_AA00C6: FFree1Var var_BC = ""
  loc_AA00C9: LitVarStr var_94, "  </tr>"
  loc_AA00CE: PopAdLdVar
  loc_AA00CF: FLdPr Me
  loc_AA00D2: MemLdRfVar from_stack_1.htmFile
  loc_AA00D5: LdPrVar
  loc_AA00D7: LateMemCall
  loc_AA00DD: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AA00E2: PopAdLdVar
  loc_AA00E3: FLdPr Me
  loc_AA00E6: MemLdRfVar from_stack_1.htmFile
  loc_AA00E9: LdPrVar
  loc_AA00EB: LateMemCall
  loc_AA00F1: LitVarStr var_94, "  <tr align=""left"">"
  loc_AA00F6: PopAdLdVar
  loc_AA00F7: FLdPr Me
  loc_AA00FA: MemLdRfVar from_stack_1.htmFile
  loc_AA00FD: LdPrVar
  loc_AA00FF: LateMemCall
  loc_AA0105: LitVarStr var_94, "   <th>"
  loc_AA010A: PopAdLdVar
  loc_AA010B: FLdPr Me
  loc_AA010E: MemLdRfVar from_stack_1.htmFile
  loc_AA0111: LdPrVar
  loc_AA0113: LateMemCall
  loc_AA0119: LitStr "    Periodo: <span class=""Normal"">"
  loc_AA011C: FLdRfVar var_A8
  loc_AA011F: FLdPr Me
  loc_AA0122: VCallAd Control_ID_cboPeriodo
  loc_AA0125: FStAdFunc var_C0
  loc_AA0128: FLdPr var_C0
  loc_AA012B:  = Me.Text
  loc_AA0130: ILdRf var_A8
  loc_AA0133: ConcatStr
  loc_AA0134: FStStrNoPop var_AC
  loc_AA0137: LitStr "</span>"
  loc_AA013A: ConcatStr
  loc_AA013B: CVarStr var_BC
  loc_AA013E: PopAdLdVar
  loc_AA013F: FLdPr Me
  loc_AA0142: MemLdRfVar from_stack_1.htmFile
  loc_AA0145: LdPrVar
  loc_AA0147: LateMemCall
  loc_AA014D: FFreeStr var_A8 = ""
  loc_AA0154: FFree1Ad var_C0
  loc_AA0157: FFree1Var var_BC = ""
  loc_AA015A: LitStr "   <br>Desde: <span class=""Normal"">"
  loc_AA015D: FLdPr Me
  loc_AA0160: VCallAd Control_ID_mskDesde
  loc_AA0163: FStAdFunc var_C0
  loc_AA0166: FLdPr var_C0
  loc_AA0169: LateIdLdVar var_BC DispID_15 0
  loc_AA0170: CStrVarTmp
  loc_AA0171: FStStrNoPop var_A8
  loc_AA0174: ConcatStr
  loc_AA0175: FStStrNoPop var_AC
  loc_AA0178: LitStr "</span>"
  loc_AA017B: ConcatStr
  loc_AA017C: CVarStr var_D4
  loc_AA017F: PopAdLdVar
  loc_AA0180: FLdPr Me
  loc_AA0183: MemLdRfVar from_stack_1.htmFile
  loc_AA0186: LdPrVar
  loc_AA0188: LateMemCall
  loc_AA018E: FFreeStr var_A8 = ""
  loc_AA0195: FFree1Ad var_C0
  loc_AA0198: FFreeVar var_BC = ""
  loc_AA019F: LitStr "   <br>Hasta: <span class=""Normal"">"
  loc_AA01A2: FLdPr Me
  loc_AA01A5: VCallAd Control_ID_mskHasta
  loc_AA01A8: FStAdFunc var_C0
  loc_AA01AB: FLdPr var_C0
  loc_AA01AE: LateIdLdVar var_BC DispID_15 0
  loc_AA01B5: CStrVarTmp
  loc_AA01B6: FStStrNoPop var_A8
  loc_AA01B9: ConcatStr
  loc_AA01BA: FStStrNoPop var_AC
  loc_AA01BD: LitStr "</span>"
  loc_AA01C0: ConcatStr
  loc_AA01C1: CVarStr var_D4
  loc_AA01C4: PopAdLdVar
  loc_AA01C5: FLdPr Me
  loc_AA01C8: MemLdRfVar from_stack_1.htmFile
  loc_AA01CB: LdPrVar
  loc_AA01CD: LateMemCall
  loc_AA01D3: FFreeStr var_A8 = ""
  loc_AA01DA: FFree1Ad var_C0
  loc_AA01DD: FFreeVar var_BC = ""
  loc_AA01E4: FLdPr Me
  loc_AA01E7: VCallAd Control_ID_CodiPartMsk
  loc_AA01EA: FStAdFunc var_C0
  loc_AA01ED: FLdPr var_C0
  loc_AA01F0: LateIdLdVar var_BC DispID_0 0
  loc_AA01F7: CStrVarTmp
  loc_AA01F8: FStStrNoPop var_A8
  loc_AA01FB: LitStr vbNullString
  loc_AA01FE: NeStr
  loc_AA0200: FFree1Str var_A8
  loc_AA0203: FFree1Ad var_C0
  loc_AA0206: FFree1Var var_BC = ""
  loc_AA0209: BranchF loc_AA027D
  loc_AA020C: LitStr "   <br>Partida: <span class=""Normal"">Comenzando con '"
  loc_AA020F: FLdPr Me
  loc_AA0212: VCallAd Control_ID_CodiPartMsk
  loc_AA0215: FStAdFunc var_C0
  loc_AA0218: FLdPr var_C0
  loc_AA021B: LateIdLdVar var_BC DispID_0 0
  loc_AA0222: CStrVarTmp
  loc_AA0223: FStStrNoPop var_A8
  loc_AA0226: ConcatStr
  loc_AA0227: FStStrNoPop var_AC
  loc_AA022A: LitStr "'  -  "
  loc_AA022D: ConcatStr
  loc_AA022E: FStStrNoPop var_120
  loc_AA0231: FLdRfVar var_11C
  loc_AA0234: FLdPr Me
  loc_AA0237: VCallAd Control_ID_CodiPartLbl
  loc_AA023A: FStAdFunc var_118
  loc_AA023D: FLdPr var_118
  loc_AA0240:  = Me.Caption
  loc_AA0245: ILdRf var_11C
  loc_AA0248: ConcatStr
  loc_AA0249: FStStrNoPop var_124
  loc_AA024C: LitStr "</span>"
  loc_AA024F: ConcatStr
  loc_AA0250: CVarStr var_D4
  loc_AA0253: PopAdLdVar
  loc_AA0254: FLdPr Me
  loc_AA0257: MemLdRfVar from_stack_1.htmFile
  loc_AA025A: LdPrVar
  loc_AA025C: LateMemCall
  loc_AA0262: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AA026F: FFreeAd var_C0 = ""
  loc_AA0276: FFreeVar var_BC = ""
  loc_AA027D: FLdPr Me
  loc_AA0280: VCallAd Control_ID_CodiOrgaMsk
  loc_AA0283: FStAdFunc var_C0
  loc_AA0286: FLdPr var_C0
  loc_AA0289: LateIdLdVar var_BC DispID_0 0
  loc_AA0290: CStrVarTmp
  loc_AA0291: FStStrNoPop var_A8
  loc_AA0294: LitStr vbNullString
  loc_AA0297: NeStr
  loc_AA0299: FFree1Str var_A8
  loc_AA029C: FFree1Ad var_C0
  loc_AA029F: FFree1Var var_BC = ""
  loc_AA02A2: BranchF loc_AA0316
  loc_AA02A5: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_AA02A8: FLdPr Me
  loc_AA02AB: VCallAd Control_ID_CodiOrgaMsk
  loc_AA02AE: FStAdFunc var_C0
  loc_AA02B1: FLdPr var_C0
  loc_AA02B4: LateIdLdVar var_BC DispID_0 0
  loc_AA02BB: CStrVarTmp
  loc_AA02BC: FStStrNoPop var_A8
  loc_AA02BF: ConcatStr
  loc_AA02C0: FStStrNoPop var_AC
  loc_AA02C3: LitStr "'  -  "
  loc_AA02C6: ConcatStr
  loc_AA02C7: FStStrNoPop var_120
  loc_AA02CA: FLdRfVar var_11C
  loc_AA02CD: FLdPr Me
  loc_AA02D0: VCallAd Control_ID_CodiOrgaLbl
  loc_AA02D3: FStAdFunc var_118
  loc_AA02D6: FLdPr var_118
  loc_AA02D9:  = Me.Caption
  loc_AA02DE: ILdRf var_11C
  loc_AA02E1: ConcatStr
  loc_AA02E2: FStStrNoPop var_124
  loc_AA02E5: LitStr "</span>"
  loc_AA02E8: ConcatStr
  loc_AA02E9: CVarStr var_D4
  loc_AA02EC: PopAdLdVar
  loc_AA02ED: FLdPr Me
  loc_AA02F0: MemLdRfVar from_stack_1.htmFile
  loc_AA02F3: LdPrVar
  loc_AA02F5: LateMemCall
  loc_AA02FB: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AA0308: FFreeAd var_C0 = ""
  loc_AA030F: FFreeVar var_BC = ""
  loc_AA0316: LitVarStr var_94, "   </th>"
  loc_AA031B: PopAdLdVar
  loc_AA031C: FLdPr Me
  loc_AA031F: MemLdRfVar from_stack_1.htmFile
  loc_AA0322: LdPrVar
  loc_AA0324: LateMemCall
  loc_AA032A: LitVarStr var_94, "  </tr>"
  loc_AA032F: PopAdLdVar
  loc_AA0330: FLdPr Me
  loc_AA0333: MemLdRfVar from_stack_1.htmFile
  loc_AA0336: LdPrVar
  loc_AA0338: LateMemCall
  loc_AA033E: LitVarStr var_94, "</table>"
  loc_AA0343: PopAdLdVar
  loc_AA0344: FLdPr Me
  loc_AA0347: MemLdRfVar from_stack_1.htmFile
  loc_AA034A: LdPrVar
  loc_AA034C: LateMemCall
  loc_AA0352: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA0357: PopAdLdVar
  loc_AA0358: FLdPr Me
  loc_AA035B: MemLdRfVar from_stack_1.htmFile
  loc_AA035E: LdPrVar
  loc_AA0360: LateMemCall
  loc_AA0366: LitVarStr var_94, "  <THEAD>"
  loc_AA036B: PopAdLdVar
  loc_AA036C: FLdPr Me
  loc_AA036F: MemLdRfVar from_stack_1.htmFile
  loc_AA0372: LdPrVar
  loc_AA0374: LateMemCall
  loc_AA037A: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AA037F: PopAdLdVar
  loc_AA0380: FLdPr Me
  loc_AA0383: MemLdRfVar from_stack_1.htmFile
  loc_AA0386: LdPrVar
  loc_AA0388: LateMemCall
  loc_AA038E: LitVarStr var_94, "    <th>Partida</th>"
  loc_AA0393: PopAdLdVar
  loc_AA0394: FLdPr Me
  loc_AA0397: MemLdRfVar from_stack_1.htmFile
  loc_AA039A: LdPrVar
  loc_AA039C: LateMemCall
  loc_AA03A2: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_AA03A7: PopAdLdVar
  loc_AA03A8: FLdPr Me
  loc_AA03AB: MemLdRfVar from_stack_1.htmFile
  loc_AA03AE: LdPrVar
  loc_AA03B0: LateMemCall
  loc_AA03B6: LitVarStr var_94, "    <th>Finalidad</th>"
  loc_AA03BB: PopAdLdVar
  loc_AA03BC: FLdPr Me
  loc_AA03BF: MemLdRfVar from_stack_1.htmFile
  loc_AA03C2: LdPrVar
  loc_AA03C4: LateMemCall
  loc_AA03CA: LitVarStr var_94, "    <th>Expediente Original</th>"
  loc_AA03CF: PopAdLdVar
  loc_AA03D0: FLdPr Me
  loc_AA03D3: MemLdRfVar from_stack_1.htmFile
  loc_AA03D6: LdPrVar
  loc_AA03D8: LateMemCall
  loc_AA03DE: LitVarStr var_94, "    <th>Saldo</th>"
  loc_AA03E3: PopAdLdVar
  loc_AA03E4: FLdPr Me
  loc_AA03E7: MemLdRfVar from_stack_1.htmFile
  loc_AA03EA: LdPrVar
  loc_AA03EC: LateMemCall
  loc_AA03F2: LitVarStr var_94, "  </tr>"
  loc_AA03F7: PopAdLdVar
  loc_AA03F8: FLdPr Me
  loc_AA03FB: MemLdRfVar from_stack_1.htmFile
  loc_AA03FE: LdPrVar
  loc_AA0400: LateMemCall
  loc_AA0406: LitVarStr var_94, "  <THEAD>"
  loc_AA040B: PopAdLdVar
  loc_AA040C: FLdPr Me
  loc_AA040F: MemLdRfVar from_stack_1.htmFile
  loc_AA0412: LdPrVar
  loc_AA0414: LateMemCall
  loc_AA041A: ExitProcHresult
End Function

Private Function Proc_217_38_981AC0() '981AC0
  'Data Table: 4B5738
  loc_981A80: LitVarStr var_94, "</table>"
  loc_981A85: PopAdLdVar
  loc_981A86: FLdPr Me
  loc_981A89: MemLdRfVar from_stack_1.htmFile
  loc_981A8C: LdPrVar
  loc_981A8E: LateMemCall
  loc_981A94: LitVarStr var_94, "</body>"
  loc_981A99: PopAdLdVar
  loc_981A9A: FLdPr Me
  loc_981A9D: MemLdRfVar from_stack_1.htmFile
  loc_981AA0: LdPrVar
  loc_981AA2: LateMemCall
  loc_981AA8: LitVarStr var_94, "</html>"
  loc_981AAD: PopAdLdVar
  loc_981AAE: FLdPr Me
  loc_981AB1: MemLdRfVar from_stack_1.htmFile
  loc_981AB4: LdPrVar
  loc_981AB6: LateMemCall
  loc_981ABC: ExitProcHresult
End Function
