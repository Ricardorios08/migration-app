VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResiduosPasivos
  Caption = "Residuos Pasivos por Partida"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResiduosPasivos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8340
  ClientHeight = 4320
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4065
    Width = 8340
    Height = 255
    TabIndex = 26
    OleObjectBlob = "rptResiduosPasivos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7080
    Top = 3120
    Width = 735
    Height = 615
    TabIndex = 24
    Cancel = -1  'True
    Picture = "rptResiduosPasivos.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResiduosPasivos.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2880
    Width = 3615
    Height = 1095
    TabIndex = 21
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 23
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2880
    Width = 3015
    Height = 1095
    TabIndex = 18
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8055
    Height = 2775
    TabIndex = 0
    Begin VB.CommandButton cmdCodiPart
      Left = 3120
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptResiduosPasivos.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 3120
      Top = 2160
      Width = 375
      Height = 375
      TabIndex = 16
      Picture = "rptResiduosPasivos.frx":0CFA
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
      Picture = "rptResiduosPasivos.frx":0DF4
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2880
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptResiduosPasivos.frx":1336
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
      OleObjectBlob = "rptResiduosPasivos.frx":1878
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1680
      Top = 1200
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptResiduosPasivos.frx":1900
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1680
      Top = 2160
      Width = 1335
      Height = 315
      TabIndex = 15
      OleObjectBlob = "rptResiduosPasivos.frx":1988
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1680
      Top = 1680
      Width = 1335
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptResiduosPasivos.frx":19E8
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
      Width = 4335
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3600
      Top = 2160
      Width = 4335
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
    Left = 7200
    Top = 3360
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 25
    OleObjectBlob = "rptResiduosPasivos.frx":1A48
  End
End

Attribute VB_Name = "rptResiduosPasivos"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_00600FA8
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_3_006013B4
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_4_006013F0
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_5_0060142C
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub cmdCodiPart_Click() '9F4448
  'Data Table: 4B409C
  loc_9F4318: LitNothing
  loc_9F431A: CastAd
  loc_9F431D: FStAdFuncNoPop
  loc_9F4320: ImpAdLdRf MemVar_C3D724
  loc_9F4323: NewIfNullPr bscPartida
  loc_9F4326: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F432B: FFree1Ad var_88
  loc_9F432E: LitVar_Missing var_A8
  loc_9F4331: PopAdLdVar
  loc_9F4332: LitVarI4
  loc_9F433A: PopAdLdVar
  loc_9F433B: ImpAdLdRf MemVar_C3D724
  loc_9F433E: NewIfNullPr bscPartida
  loc_9F4341: bscPartida.Show from_stack_1, from_stack_2
  loc_9F4346: FLdRfVar var_AC
  loc_9F4349: FLdRfVar var_88
  loc_9F434C: ImpAdLdRf MemVar_C3D724
  loc_9F434F: NewIfNullPr bscPartida
  loc_9F4352: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F4357: FLdPr var_88
  loc_9F435A: from_stack_1 = clsbase.RecordCount
  loc_9F435F: ILdRf var_AC
  loc_9F4362: LitI4 0
  loc_9F4367: GtI4
  loc_9F4368: FFree1Ad var_88
  loc_9F436B: BranchF loc_9F4446
  loc_9F436E: FLdRfVar var_C8
  loc_9F4371: FLdRfVar var_B8
  loc_9F4374: LitVarStr var_98, "CodiPart"
  loc_9F4379: PopAdLdVar
  loc_9F437A: FLdRfVar var_B4
  loc_9F437D: FLdRfVar var_B0
  loc_9F4380: FLdRfVar var_88
  loc_9F4383: ImpAdLdRf MemVar_C3D724
  loc_9F4386: NewIfNullPr bscPartida
  loc_9F4389: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F438E: FLdPr var_88
  loc_9F4391: from_stack_1v = clsbase.RsFrmGet()
  loc_9F4396: FLdPr var_B0
  loc_9F4399:  = Me.Fields
  loc_9F439E: FLdPr var_B4
  loc_9F43A1: from_stack_2 = Me.Item(from_stack_1)
  loc_9F43A6: FLdPr var_B8
  loc_9F43A9:  = Me.Value
  loc_9F43AE: FLdRfVar var_C8
  loc_9F43B1: CStrVarTmp
  loc_9F43B2: CVarStr var_D8
  loc_9F43B5: PopAdLdVar
  loc_9F43B6: FLdPr Me
  loc_9F43B9: VCallAd Control_ID_CodiPartMsk
  loc_9F43BC: FStAdFunc var_DC
  loc_9F43BF: FLdPr var_DC
  loc_9F43C2: LateIdSt
  loc_9F43C7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F43D4: FFreeVar var_C8 = ""
  loc_9F43DB: FLdRfVar var_C8
  loc_9F43DE: FLdRfVar var_B8
  loc_9F43E1: LitVarStr var_98, "DetaPart"
  loc_9F43E6: PopAdLdVar
  loc_9F43E7: FLdRfVar var_B4
  loc_9F43EA: FLdRfVar var_B0
  loc_9F43ED: FLdRfVar var_88
  loc_9F43F0: ImpAdLdRf MemVar_C3D724
  loc_9F43F3: NewIfNullPr bscPartida
  loc_9F43F6: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F43FB: FLdPr var_88
  loc_9F43FE: from_stack_1v = clsbase.RsFrmGet()
  loc_9F4403: FLdPr var_B0
  loc_9F4406:  = Me.Fields
  loc_9F440B: FLdPr var_B4
  loc_9F440E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4413: FLdPr var_B8
  loc_9F4416:  = Me.Value
  loc_9F441B: FLdRfVar var_C8
  loc_9F441E: CStrVarTmp
  loc_9F441F: FStStrNoPop var_E0
  loc_9F4422: FLdPr Me
  loc_9F4425: VCallAd Control_ID_CodiPartLbl
  loc_9F4428: FStAdFunc var_DC
  loc_9F442B: FLdPr var_DC
  loc_9F442E: Me.Caption = from_stack_1
  loc_9F4433: FFree1Str var_E0
  loc_9F4436: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F4443: FFree1Var var_C8 = ""
  loc_9F4446: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A99C
  'Data Table: 4B409C
  loc_97A96C: LitVarStr var_94, "Cerrando..."
  loc_97A971: PopAdLdVar
  loc_97A972: FLdPr Me
  loc_97A975: VCallAd Control_ID_statusBar
  loc_97A978: FStAdFunc var_A8
  loc_97A97B: FLdPr var_A8
  loc_97A97E: LateIdSt
  loc_97A983: FFree1Ad var_A8
  loc_97A986: ILdRf Me
  loc_97A989: FStAdNoPop
  loc_97A98D: ImpAdLdRf MemVar_C44F9C
  loc_97A990: NewIfNullPr Me
  loc_97A993: Me.Global.Unload from_stack_1
  loc_97A998: FFree1Ad var_A8
  loc_97A99B: ExitProcHresult
End Sub

Private Sub Form_Load() '9E3BF0
  'Data Table: 4B409C
  loc_9E3AE4: LitVarStr var_94, "######"
  loc_9E3AE9: PopAdLdVar
  loc_9E3AEA: FLdPr Me
  loc_9E3AED: VCallAd Control_ID_CodiOrgaMsk
  loc_9E3AF0: FStAdFunc var_A8
  loc_9E3AF3: FLdPr var_A8
  loc_9E3AF6: LateIdSt
  loc_9E3AFB: FFree1Ad var_A8
  loc_9E3AFE: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9E3B03: PopAdLdVar
  loc_9E3B04: FLdPr Me
  loc_9E3B07: VCallAd Control_ID_CodiPartMsk
  loc_9E3B0A: FStAdFunc var_A8
  loc_9E3B0D: FLdPr var_A8
  loc_9E3B10: LateIdSt
  loc_9E3B15: FFree1Ad var_A8
  loc_9E3B18: LitI2_Byte &HFF
  loc_9E3B1A: ImpAdStI2 MemVar_C3D840
  loc_9E3B1D: ILdRf Me
  loc_9E3B20: CastAd
  loc_9E3B23: FStAdFunc var_A8
  loc_9E3B26: FLdRfVar var_A8
  loc_9E3B29: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9E3B2E: FFree1Ad var_A8
  loc_9E3B31: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9E3B34: FLdRfVar var_AC
  loc_9E3B37: NewIfNullPr clsperiodo
  loc_9E3B3A: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9E3B3F: FLdRfVar var_B0
  loc_9E3B42: FLdRfVar var_AC
  loc_9E3B45: NewIfNullPr clsperiodo
  loc_9E3B48: from_stack_1 = clsperiodo.RecordCount
  loc_9E3B4D: ILdRf var_B0
  loc_9E3B50: LitI4 0
  loc_9E3B55: GtI4
  loc_9E3B56: BranchF loc_9E3BE9
  loc_9E3B59: FLdRfVar var_AC
  loc_9E3B5C: NewIfNullPr clsperiodo
  loc_9E3B5F: Call clsperiodo.MoveFirst()
  loc_9E3B64: FLdRfVar var_B2
  loc_9E3B67: FLdRfVar var_AC
  loc_9E3B6A: NewIfNullPr clsperiodo
  loc_9E3B6D: from_stack_1 = clsperiodo.EOF
  loc_9E3B72: FLdI2 var_B2
  loc_9E3B75: NotI4
  loc_9E3B76: BranchF loc_9E3BE9
  loc_9E3B79: LitVar_Missing var_A4
  loc_9E3B7C: PopAdLdVar
  loc_9E3B7D: FLdRfVar var_CC
  loc_9E3B80: FLdRfVar var_BC
  loc_9E3B83: LitVarStr var_94, "PeriInfo"
  loc_9E3B88: PopAdLdVar
  loc_9E3B89: FLdRfVar var_B8
  loc_9E3B8C: FLdRfVar var_A8
  loc_9E3B8F: FLdRfVar var_AC
  loc_9E3B92: NewIfNullPr clsperiodo
  loc_9E3B95: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9E3B9A: FLdPr var_A8
  loc_9E3B9D:  = Me.Fields
  loc_9E3BA2: FLdPr var_B8
  loc_9E3BA5: from_stack_2 = Me.Item(from_stack_1)
  loc_9E3BAA: FLdPr var_BC
  loc_9E3BAD:  = Me.Value
  loc_9E3BB2: FLdRfVar var_CC
  loc_9E3BB5: CStrVarTmp
  loc_9E3BB6: FStStrNoPop var_D0
  loc_9E3BB9: FLdPr Me
  loc_9E3BBC: VCallAd Control_ID_cboPeriodo
  loc_9E3BBF: FStAdFunc var_D4
  loc_9E3BC2: FLdPr var_D4
  loc_9E3BC5: Me.AddItem from_stack_1, from_stack_2
  loc_9E3BCA: FFree1Str var_D0
  loc_9E3BCD: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9E3BD8: FFree1Var var_CC = ""
  loc_9E3BDB: FLdRfVar var_AC
  loc_9E3BDE: NewIfNullPr clsperiodo
  loc_9E3BE1: Call clsperiodo.MoveSiguiente()
  loc_9E3BE6: Branch loc_9E3B64
  loc_9E3BE9: Call cmdNueva_Click()
  loc_9E3BEE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96476C
  'Data Table: 4B409C
  loc_964754: FLdPr Me
  loc_964757: VCallAd Control_ID_wbbReporte
  loc_96475A: FStAdFunc var_88
  loc_96475D: FLdRfVar var_88
  loc_964760: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_964765: FFree1Ad var_88
  loc_964768: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94DA30
  'Data Table: 4B409C
  loc_94DA1C: FLdPr Me
  loc_94DA1F: VCallAd Control_ID_CodiPartMsk
  loc_94DA22: CVarAd
  loc_94DA26: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DA2B: FFree1Var var_94 = ""
  loc_94DA2E: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A09744
  'Data Table: 4B409C
  loc_A095F8: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A095FB: FLdRfVar var_90
  loc_A095FE: FLdPr Me
  loc_A09601: VCallAd Control_ID_cboPeriodo
  loc_A09604: FStAdFunc var_8C
  loc_A09607: FLdPr var_8C
  loc_A0960A:  = Me.Text
  loc_A0960F: ILdRf var_90
  loc_A09612: ConcatStr
  loc_A09613: FStStrNoPop var_94
  loc_A09616: LitStr " AND CodiPart LIKE '"
  loc_A09619: ConcatStr
  loc_A0961A: FStStrNoPop var_AC
  loc_A0961D: FLdPr Me
  loc_A09620: VCallAd Control_ID_CodiPartMsk
  loc_A09623: FStAdFunc var_98
  loc_A09626: FLdPr var_98
  loc_A09629: LateIdLdVar var_A8 DispID_22 0
  loc_A09630: CStrVarTmp
  loc_A09631: FStStrNoPop var_B0
  loc_A09634: ConcatStr
  loc_A09635: FStStrNoPop var_B4
  loc_A09638: LitStr Chr(37) & "'"
  loc_A0963B: ConcatStr
  loc_A0963C: FStStrNoPop var_B8
  loc_A0963F: FLdRfVar var_88
  loc_A09642: NewIfNullPr clspartida
  loc_A09645: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0964A: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A09659: FFreeAd var_8C = ""
  loc_A09660: FFree1Var var_A8 = ""
  loc_A09663: FLdRfVar var_BC
  loc_A09666: FLdRfVar var_88
  loc_A09669: NewIfNullPr clspartida
  loc_A0966C: from_stack_1 = clspartida.RecordCount
  loc_A09671: ILdRf var_BC
  loc_A09674: FStR4 var_C0
  loc_A09677: ILdRf var_C0
  loc_A0967A: LitI4 0
  loc_A0967F: EqI4
  loc_A09680: BranchF loc_A0969D
  loc_A09683: LitStr "0 registros encontrados"
  loc_A09686: FLdPr Me
  loc_A09689: VCallAd Control_ID_CodiPartLbl
  loc_A0968C: FStAdFunc var_8C
  loc_A0968F: FLdPr var_8C
  loc_A09692: Me.Caption = from_stack_1
  loc_A09697: FFree1Ad var_8C
  loc_A0969A: Branch loc_A09742
  loc_A0969D: ILdRf var_C0
  loc_A096A0: LitI4 1
  loc_A096A5: EqI4
  loc_A096A6: BranchF loc_A0970A
  loc_A096A9: FLdRfVar var_A8
  loc_A096AC: FLdRfVar var_D4
  loc_A096AF: LitVarStr var_D0, "DetaPart"
  loc_A096B4: PopAdLdVar
  loc_A096B5: FLdRfVar var_98
  loc_A096B8: FLdRfVar var_8C
  loc_A096BB: FLdRfVar var_88
  loc_A096BE: NewIfNullPr clspartida
  loc_A096C1: from_stack_1v = clspartida.RsFrmGet()
  loc_A096C6: FLdPr var_8C
  loc_A096C9:  = Me.Fields
  loc_A096CE: FLdPr var_98
  loc_A096D1: from_stack_2 = Me.Item(from_stack_1)
  loc_A096D6: FLdPr var_D4
  loc_A096D9:  = Me.Value
  loc_A096DE: FLdRfVar var_A8
  loc_A096E1: CStrVarTmp
  loc_A096E2: FStStrNoPop var_90
  loc_A096E5: FLdPr Me
  loc_A096E8: VCallAd Control_ID_CodiPartLbl
  loc_A096EB: FStAdFunc var_D8
  loc_A096EE: FLdPr var_D8
  loc_A096F1: Me.Caption = from_stack_1
  loc_A096F6: FFree1Str var_90
  loc_A096F9: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A09704: FFree1Var var_A8 = ""
  loc_A09707: Branch loc_A09742
  loc_A0970A: FLdRfVar var_BC
  loc_A0970D: FLdRfVar var_88
  loc_A09710: NewIfNullPr clspartida
  loc_A09713: from_stack_1 = clspartida.RecordCount
  loc_A09718: ILdRf var_BC
  loc_A0971B: CStrI4
  loc_A0971D: FStStrNoPop var_90
  loc_A09720: LitStr " partidas encontradas"
  loc_A09723: ConcatStr
  loc_A09724: FStStrNoPop var_94
  loc_A09727: FLdPr Me
  loc_A0972A: VCallAd Control_ID_CodiPartLbl
  loc_A0972D: FStAdFunc var_8C
  loc_A09730: FLdPr var_8C
  loc_A09733: Me.Caption = from_stack_1
  loc_A09738: FFreeStr var_90 = ""
  loc_A0973F: FFree1Ad var_8C
  loc_A09742: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '964B94
  'Data Table: 4B409C
  loc_964B7C: ILdRf Me
  loc_964B7F: CastAd
  loc_964B82: FStAdFunc var_88
  loc_964B85: FLdRfVar var_88
  loc_964B88: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_964B8D: FFree1Ad var_88
  loc_964B90: ExitProcHresult
  loc_964B91: SubI2
  loc_964B92: LeI4
End Sub

Private Sub cmdCalHasta_Click() '97CD80
  'Data Table: 4B409C
  loc_97CD4C: LitVar_Missing var_A4
  loc_97CD4F: PopAdLdVar
  loc_97CD50: LitVarI4
  loc_97CD58: PopAdLdVar
  loc_97CD59: ImpAdLdRf MemVar_C3D9A8
  loc_97CD5C: NewIfNullPr frmCalendario
  loc_97CD5F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CD64: ImpAdLdRf MemVar_C3D038
  loc_97CD67: CDargRef
  loc_97CD6B: FLdPr Me
  loc_97CD6E: VCallAd Control_ID_mskHasta
  loc_97CD71: FStAdFunc var_A8
  loc_97CD74: FLdPr var_A8
  loc_97CD77: LateIdSt
  loc_97CD7C: FFree1Ad var_A8
  loc_97CD7F: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97CBE0
  'Data Table: 4B409C
  loc_97CBAC: LitVar_Missing var_A4
  loc_97CBAF: PopAdLdVar
  loc_97CBB0: LitVarI4
  loc_97CBB8: PopAdLdVar
  loc_97CBB9: ImpAdLdRf MemVar_C3D9A8
  loc_97CBBC: NewIfNullPr frmCalendario
  loc_97CBBF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CBC4: ImpAdLdRf MemVar_C3D038
  loc_97CBC7: CDargRef
  loc_97CBCB: FLdPr Me
  loc_97CBCE: VCallAd Control_ID_mskDesde
  loc_97CBD1: FStAdFunc var_A8
  loc_97CBD4: FLdPr var_A8
  loc_97CBD7: LateIdSt
  loc_97CBDC: FFree1Ad var_A8
  loc_97CBDF: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D4148
  'Data Table: 4B409C
  loc_9D4060: FLdRfVar var_8C
  loc_9D4063: FLdPr Me
  loc_9D4066: VCallAd Control_ID_cboPeriodo
  loc_9D4069: FStAdFunc var_88
  loc_9D406C: FLdPr var_88
  loc_9D406F:  = Me.Text
  loc_9D4074: LitI2_Byte 1
  loc_9D4076: LitI2_Byte 1
  loc_9D4078: ILdRf var_8C
  loc_9D407B: CI2Str
  loc_9D407D: FLdRfVar var_9C
  loc_9D4080: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D4085: FLdRfVar var_9C
  loc_9D4088: CStrVarTmp
  loc_9D4089: CVarStr var_AC
  loc_9D408C: PopAdLdVar
  loc_9D408D: FLdPr Me
  loc_9D4090: VCallAd Control_ID_mskDesde
  loc_9D4093: FStAdFunc var_C0
  loc_9D4096: FLdPr var_C0
  loc_9D4099: LateIdSt
  loc_9D409E: FFree1Str var_8C
  loc_9D40A1: FFreeAd var_88 = ""
  loc_9D40A8: FFreeVar var_9C = ""
  loc_9D40AF: FLdRfVar var_8C
  loc_9D40B2: FLdPr Me
  loc_9D40B5: VCallAd Control_ID_cboPeriodo
  loc_9D40B8: FStAdFunc var_88
  loc_9D40BB: FLdPr var_88
  loc_9D40BE:  = Me.Text
  loc_9D40C3: ILdRf var_8C
  loc_9D40C6: CI2Str
  loc_9D40C8: ImpAdLdI2 MemVar_C3D064
  loc_9D40CB: LtI2
  loc_9D40CC: FFree1Str var_8C
  loc_9D40CF: FFree1Ad var_88
  loc_9D40D2: BranchF loc_9D4127
  loc_9D40D5: FLdRfVar var_8C
  loc_9D40D8: FLdPr Me
  loc_9D40DB: VCallAd Control_ID_cboPeriodo
  loc_9D40DE: FStAdFunc var_88
  loc_9D40E1: FLdPr var_88
  loc_9D40E4:  = Me.Text
  loc_9D40E9: LitI2_Byte &H1F
  loc_9D40EB: LitI2_Byte &HC
  loc_9D40ED: ILdRf var_8C
  loc_9D40F0: CI2Str
  loc_9D40F2: FLdRfVar var_9C
  loc_9D40F5: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D40FA: FLdRfVar var_9C
  loc_9D40FD: CStrVarTmp
  loc_9D40FE: CVarStr var_AC
  loc_9D4101: PopAdLdVar
  loc_9D4102: FLdPr Me
  loc_9D4105: VCallAd Control_ID_mskHasta
  loc_9D4108: FStAdFunc var_C0
  loc_9D410B: FLdPr var_C0
  loc_9D410E: LateIdSt
  loc_9D4113: FFree1Str var_8C
  loc_9D4116: FFreeAd var_88 = ""
  loc_9D411D: FFreeVar var_9C = ""
  loc_9D4124: Branch loc_9D4147
  loc_9D4127: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D412A: CStrDate
  loc_9D412C: CVarStr var_9C
  loc_9D412F: PopAdLdVar
  loc_9D4130: FLdPr Me
  loc_9D4133: VCallAd Control_ID_mskHasta
  loc_9D4136: FStAdFunc var_88
  loc_9D4139: FLdPr var_88
  loc_9D413C: LateIdSt
  loc_9D4141: FFree1Ad var_88
  loc_9D4144: FFree1Var var_9C = ""
  loc_9D4147: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BD8C
  'Data Table: 4B409C
  loc_98BD54: FLdPr Me
  loc_98BD57: VCallAd Control_ID_statusBar
  loc_98BD5A: FStAdFunc var_88
  loc_98BD5D: FLdPr var_88
  loc_98BD60: LateIdLdVar var_98 DispID_1 0
  loc_98BD67: CStrVarTmp
  loc_98BD68: CVarStr var_A8
  loc_98BD6B: PopAdLdVar
  loc_98BD6C: FLdPr Me
  loc_98BD6F: VCallAd Control_ID_statusBar
  loc_98BD72: FStAdFunc var_BC
  loc_98BD75: FLdPr var_BC
  loc_98BD78: LateIdSt
  loc_98BD7D: FFreeAd var_88 = ""
  loc_98BD84: FFreeVar var_98 = ""
  loc_98BD8B: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9B3700
  'Data Table: 4B409C
  loc_9B3650: LitI2_Byte 0
  loc_9B3652: FLdPr Me
  loc_9B3655: MemStI2 bGenerado
  loc_9B3658: LitI2_Byte &HFF
  loc_9B365A: FLdPr Me
  loc_9B365D: MemStI2 bLogos
  loc_9B3660: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9B3665: ImpAdLdI2 MemVar_C3D064
  loc_9B3668: CStrUI1
  loc_9B366A: FStStrNoPop var_88
  loc_9B366D: FLdPr Me
  loc_9B3670: VCallAd Control_ID_cboPeriodo
  loc_9B3673: FStAdFunc var_8C
  loc_9B3676: FLdPr var_8C
  loc_9B3679: Me.Text = from_stack_1
  loc_9B367E: FFree1Str var_88
  loc_9B3681: FFree1Ad var_8C
  loc_9B3684: LitVarStr var_9C, vbNullString
  loc_9B3689: PopAdLdVar
  loc_9B368A: FLdPr Me
  loc_9B368D: VCallAd Control_ID_CodiPartMsk
  loc_9B3690: FStAdFunc var_8C
  loc_9B3693: FLdPr var_8C
  loc_9B3696: LateIdSt
  loc_9B369B: FFree1Ad var_8C
  loc_9B369E: LitVarStr var_9C, vbNullString
  loc_9B36A3: PopAdLdVar
  loc_9B36A4: FLdPr Me
  loc_9B36A7: VCallAd Control_ID_CodiOrgaMsk
  loc_9B36AA: FStAdFunc var_8C
  loc_9B36AD: FLdPr var_8C
  loc_9B36B0: LateIdSt
  loc_9B36B5: FFree1Ad var_8C
  loc_9B36B8: LitStr vbNullString
  loc_9B36BB: FLdPr Me
  loc_9B36BE: VCallAd Control_ID_CodiPartLbl
  loc_9B36C1: FStAdFunc var_8C
  loc_9B36C4: FLdPr var_8C
  loc_9B36C7: Me.Caption = from_stack_1
  loc_9B36CC: FFree1Ad var_8C
  loc_9B36CF: LitStr vbNullString
  loc_9B36D2: FLdPr Me
  loc_9B36D5: VCallAd Control_ID_CodiOrgaLbl
  loc_9B36D8: FStAdFunc var_8C
  loc_9B36DB: FLdPr var_8C
  loc_9B36DE: Me.Caption = from_stack_1
  loc_9B36E3: FFree1Ad var_8C
  loc_9B36E6: Call HabilitarCriterio()
  loc_9B36EB: ILdRf Me
  loc_9B36EE: CastAd
  loc_9B36F1: FStAdFunc var_8C
  loc_9B36F4: FLdRfVar var_8C
  loc_9B36F7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9B36FC: FFree1Ad var_8C
  loc_9B36FF: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94DA78
  'Data Table: 4B409C
  loc_94DA64: FLdPr Me
  loc_94DA67: VCallAd Control_ID_CodiOrgaMsk
  loc_94DA6A: CVarAd
  loc_94DA6E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DA73: FFree1Var var_94 = ""
  loc_94DA76: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A093EC
  'Data Table: 4B409C
  loc_A092A0: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A092A3: FLdRfVar var_90
  loc_A092A6: FLdPr Me
  loc_A092A9: VCallAd Control_ID_cboPeriodo
  loc_A092AC: FStAdFunc var_8C
  loc_A092AF: FLdPr var_8C
  loc_A092B2:  = Me.Text
  loc_A092B7: ILdRf var_90
  loc_A092BA: ConcatStr
  loc_A092BB: FStStrNoPop var_94
  loc_A092BE: LitStr " AND CodiOrga LIKE '"
  loc_A092C1: ConcatStr
  loc_A092C2: FStStrNoPop var_AC
  loc_A092C5: FLdPr Me
  loc_A092C8: VCallAd Control_ID_CodiOrgaMsk
  loc_A092CB: FStAdFunc var_98
  loc_A092CE: FLdPr var_98
  loc_A092D1: LateIdLdVar var_A8 DispID_22 0
  loc_A092D8: CStrVarTmp
  loc_A092D9: FStStrNoPop var_B0
  loc_A092DC: ConcatStr
  loc_A092DD: FStStrNoPop var_B4
  loc_A092E0: LitStr Chr(37) & "'"
  loc_A092E3: ConcatStr
  loc_A092E4: FStStrNoPop var_B8
  loc_A092E7: FLdRfVar var_88
  loc_A092EA: NewIfNullPr clsorganigrama
  loc_A092ED: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A092F2: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A09301: FFreeAd var_8C = ""
  loc_A09308: FFree1Var var_A8 = ""
  loc_A0930B: FLdRfVar var_BC
  loc_A0930E: FLdRfVar var_88
  loc_A09311: NewIfNullPr clsorganigrama
  loc_A09314: from_stack_1 = clsorganigrama.RecordCount
  loc_A09319: ILdRf var_BC
  loc_A0931C: FStR4 var_C0
  loc_A0931F: ILdRf var_C0
  loc_A09322: LitI4 0
  loc_A09327: EqI4
  loc_A09328: BranchF loc_A09345
  loc_A0932B: LitStr "0 registros encontrados"
  loc_A0932E: FLdPr Me
  loc_A09331: VCallAd Control_ID_CodiOrgaLbl
  loc_A09334: FStAdFunc var_8C
  loc_A09337: FLdPr var_8C
  loc_A0933A: Me.Caption = from_stack_1
  loc_A0933F: FFree1Ad var_8C
  loc_A09342: Branch loc_A093EA
  loc_A09345: ILdRf var_C0
  loc_A09348: LitI4 1
  loc_A0934D: EqI4
  loc_A0934E: BranchF loc_A093B2
  loc_A09351: FLdRfVar var_A8
  loc_A09354: FLdRfVar var_D4
  loc_A09357: LitVarStr var_D0, "DetaOrga"
  loc_A0935C: PopAdLdVar
  loc_A0935D: FLdRfVar var_98
  loc_A09360: FLdRfVar var_8C
  loc_A09363: FLdRfVar var_88
  loc_A09366: NewIfNullPr clsorganigrama
  loc_A09369: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A0936E: FLdPr var_8C
  loc_A09371:  = Me.Fields
  loc_A09376: FLdPr var_98
  loc_A09379: from_stack_2 = Me.Item(from_stack_1)
  loc_A0937E: FLdPr var_D4
  loc_A09381:  = Me.Value
  loc_A09386: FLdRfVar var_A8
  loc_A09389: CStrVarTmp
  loc_A0938A: FStStrNoPop var_90
  loc_A0938D: FLdPr Me
  loc_A09390: VCallAd Control_ID_CodiOrgaLbl
  loc_A09393: FStAdFunc var_D8
  loc_A09396: FLdPr var_D8
  loc_A09399: Me.Caption = from_stack_1
  loc_A0939E: FFree1Str var_90
  loc_A093A1: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A093AC: FFree1Var var_A8 = ""
  loc_A093AF: Branch loc_A093EA
  loc_A093B2: FLdRfVar var_BC
  loc_A093B5: FLdRfVar var_88
  loc_A093B8: NewIfNullPr clsorganigrama
  loc_A093BB: from_stack_1 = clsorganigrama.RecordCount
  loc_A093C0: ILdRf var_BC
  loc_A093C3: CStrI4
  loc_A093C5: FStStrNoPop var_90
  loc_A093C8: LitStr " organigramas encontrados"
  loc_A093CB: ConcatStr
  loc_A093CC: FStStrNoPop var_94
  loc_A093CF: FLdPr Me
  loc_A093D2: VCallAd Control_ID_CodiOrgaLbl
  loc_A093D5: FStAdFunc var_8C
  loc_A093D8: FLdPr var_8C
  loc_A093DB: Me.Caption = from_stack_1
  loc_A093E0: FFreeStr var_90 = ""
  loc_A093E7: FFree1Ad var_8C
  loc_A093EA: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '964AFC
  'Data Table: 4B409C
  loc_964AE4: LitI2_Byte 0
  loc_964AE6: ILdRf Me
  loc_964AE9: CastAd
  loc_964AEC: FStAdFunc var_88
  loc_964AEF: FLdRfVar var_88
  loc_964AF2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_964AF7: FFree1Ad var_88
  loc_964AFA: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94D9A0
  'Data Table: 4B409C
  loc_94D98C: FLdPr Me
  loc_94D98F: VCallAd Control_ID_mskDesde
  loc_94D992: CVarAd
  loc_94D996: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D99B: FFree1Var var_94 = ""
  loc_94D99E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9BBED0
  'Data Table: 4B409C
  loc_9BBE20: FLdPr Me
  loc_9BBE23: VCallAd Control_ID_mskDesde
  loc_9BBE26: FStAdFunc var_88
  loc_9BBE29: FLdPr var_88
  loc_9BBE2C: LateIdLdVar var_98 DispID_13 -32767
  loc_9BBE33: CBoolVar
  loc_9BBE35: FFree1Ad var_88
  loc_9BBE38: FFree1Var var_98 = ""
  loc_9BBE3B: BranchF loc_9BBECD
  loc_9BBE3E: FLdPr Me
  loc_9BBE41: VCallAd Control_ID_mskDesde
  loc_9BBE44: FStAdFunc var_88
  loc_9BBE47: FLdPr var_88
  loc_9BBE4A: LateIdLdVar var_98 DispID_15 0
  loc_9BBE51: PopAd
  loc_9BBE53: LitI2_Byte &HFF
  loc_9BBE55: PopTmpLdAd2 var_A2
  loc_9BBE58: LitNothing
  loc_9BBE5A: CastAd
  loc_9BBE5D: FStAdFunc var_A0
  loc_9BBE60: FLdRfVar var_A0
  loc_9BBE63: LitStr "01/01/2018"
  loc_9BBE66: LitI2_Byte 0
  loc_9BBE68: LitI2_Byte 0
  loc_9BBE6A: FLdRfVar var_98
  loc_9BBE6D: CStrVarTmp
  loc_9BBE6E: FStStrNoPop var_9C
  loc_9BBE71: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9BBE76: FStStrNoPop var_A8
  loc_9BBE79: FLdPr Me
  loc_9BBE7C: MemStStrCopy
  loc_9BBE80: FFreeStr var_9C = ""
  loc_9BBE87: FFreeAd var_88 = ""
  loc_9BBE8E: FFree1Var var_98 = ""
  loc_9BBE91: FLdPr Me
  loc_9BBE94: VCallAd Control_ID_mskDesde
  loc_9BBE97: FStAdFunc var_B0
  loc_9BBE9A: LitNothing
  loc_9BBE9C: CastAd
  loc_9BBE9F: FStAdFunc var_AC
  loc_9BBEA2: FLdRfVar var_AC
  loc_9BBEA5: FLdZeroAd var_B0
  loc_9BBEA8: FStAdFuncNoPop
  loc_9BBEAB: CastAd
  loc_9BBEAE: FStAdFunc var_A0
  loc_9BBEB1: FLdRfVar var_A0
  loc_9BBEB4: FLdPr Me
  loc_9BBEB7: MemLdRfVar from_stack_1.global_100
  loc_9BBEBA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BBEBF: IStI2 arg_C
  loc_9BBEC2: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9BBECD: ExitProcHresult
  loc_9BBECE: NewIfNullPr Me
End Function

Private Sub cmdXLS_Click() '967BBC
  'Data Table: 4B409C
  loc_967BA0: LitI2_Byte &HFF
  loc_967BA2: LitI2_Byte 0
  loc_967BA4: ILdRf Me
  loc_967BA7: CastAd
  loc_967BAA: FStAdFunc var_88
  loc_967BAD: FLdRfVar var_88
  loc_967BB0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_967BB5: FFree1Ad var_88
  loc_967BB8: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9FB500
  'Data Table: 4B409C
  loc_9FB3C4: LitI2_Byte &HFF
  loc_9FB3C6: ImpAdLdRf MemVar_C3D710
  loc_9FB3C9: NewIfNullPr bscOrganigrama
  loc_9FB3CC: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9FB3D1: LitNothing
  loc_9FB3D3: CastAd
  loc_9FB3D6: FStAdFuncNoPop
  loc_9FB3D9: ImpAdLdRf MemVar_C3D710
  loc_9FB3DC: NewIfNullPr bscOrganigrama
  loc_9FB3DF: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9FB3E4: FFree1Ad var_88
  loc_9FB3E7: LitVar_Missing var_A8
  loc_9FB3EA: PopAdLdVar
  loc_9FB3EB: LitVarI4
  loc_9FB3F3: PopAdLdVar
  loc_9FB3F4: ImpAdLdRf MemVar_C3D710
  loc_9FB3F7: NewIfNullPr bscOrganigrama
  loc_9FB3FA: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9FB3FF: FLdRfVar var_AC
  loc_9FB402: FLdRfVar var_88
  loc_9FB405: ImpAdLdRf MemVar_C3D710
  loc_9FB408: NewIfNullPr bscOrganigrama
  loc_9FB40B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FB410: FLdPr var_88
  loc_9FB413: from_stack_1 = clsbase.RecordCount
  loc_9FB418: ILdRf var_AC
  loc_9FB41B: LitI4 0
  loc_9FB420: GtI4
  loc_9FB421: FFree1Ad var_88
  loc_9FB424: BranchF loc_9FB4FF
  loc_9FB427: FLdRfVar var_C8
  loc_9FB42A: FLdRfVar var_B8
  loc_9FB42D: LitVarStr var_98, "CodiOrga"
  loc_9FB432: PopAdLdVar
  loc_9FB433: FLdRfVar var_B4
  loc_9FB436: FLdRfVar var_B0
  loc_9FB439: FLdRfVar var_88
  loc_9FB43C: ImpAdLdRf MemVar_C3D710
  loc_9FB43F: NewIfNullPr bscOrganigrama
  loc_9FB442: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FB447: FLdPr var_88
  loc_9FB44A: from_stack_1v = clsbase.RsFrmGet()
  loc_9FB44F: FLdPr var_B0
  loc_9FB452:  = Me.Fields
  loc_9FB457: FLdPr var_B4
  loc_9FB45A: from_stack_2 = Me.Item(from_stack_1)
  loc_9FB45F: FLdPr var_B8
  loc_9FB462:  = Me.Value
  loc_9FB467: FLdRfVar var_C8
  loc_9FB46A: CStrVarTmp
  loc_9FB46B: CVarStr var_D8
  loc_9FB46E: PopAdLdVar
  loc_9FB46F: FLdPr Me
  loc_9FB472: VCallAd Control_ID_CodiOrgaMsk
  loc_9FB475: FStAdFunc var_DC
  loc_9FB478: FLdPr var_DC
  loc_9FB47B: LateIdSt
  loc_9FB480: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FB48D: FFreeVar var_C8 = ""
  loc_9FB494: FLdRfVar var_C8
  loc_9FB497: FLdRfVar var_B8
  loc_9FB49A: LitVarStr var_98, "DetaOrga"
  loc_9FB49F: PopAdLdVar
  loc_9FB4A0: FLdRfVar var_B4
  loc_9FB4A3: FLdRfVar var_B0
  loc_9FB4A6: FLdRfVar var_88
  loc_9FB4A9: ImpAdLdRf MemVar_C3D710
  loc_9FB4AC: NewIfNullPr bscOrganigrama
  loc_9FB4AF: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FB4B4: FLdPr var_88
  loc_9FB4B7: from_stack_1v = clsbase.RsFrmGet()
  loc_9FB4BC: FLdPr var_B0
  loc_9FB4BF:  = Me.Fields
  loc_9FB4C4: FLdPr var_B4
  loc_9FB4C7: from_stack_2 = Me.Item(from_stack_1)
  loc_9FB4CC: FLdPr var_B8
  loc_9FB4CF:  = Me.Value
  loc_9FB4D4: FLdRfVar var_C8
  loc_9FB4D7: CStrVarTmp
  loc_9FB4D8: FStStrNoPop var_E0
  loc_9FB4DB: FLdPr Me
  loc_9FB4DE: VCallAd Control_ID_CodiOrgaLbl
  loc_9FB4E1: FStAdFunc var_DC
  loc_9FB4E4: FLdPr var_DC
  loc_9FB4E7: Me.Caption = from_stack_1
  loc_9FB4EC: FFree1Str var_E0
  loc_9FB4EF: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FB4FC: FFree1Var var_C8 = ""
  loc_9FB4FF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '964C2C
  'Data Table: 4B409C
  loc_964C14: ILdRf Me
  loc_964C17: CastAd
  loc_964C1A: FStAdFunc var_88
  loc_964C1D: FLdRfVar var_88
  loc_964C20: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_964C25: FFree1Ad var_88
  loc_964C28: ExitProcHresult
  loc_964C29: IStI4 arg_5E5
End Sub

Private Sub mskHasta_UnknownEvent_0 '94D9E8
  'Data Table: 4B409C
  loc_94D9D4: FLdPr Me
  loc_94D9D7: VCallAd Control_ID_mskHasta
  loc_94D9DA: CVarAd
  loc_94D9DE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D9E3: FFree1Var var_94 = ""
  loc_94D9E6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B3B74
  'Data Table: 4B409C
  loc_9B3AD8: FLdPr Me
  loc_9B3ADB: VCallAd Control_ID_mskHasta
  loc_9B3ADE: FStAdFunc var_88
  loc_9B3AE1: FLdPr var_88
  loc_9B3AE4: LateIdLdVar var_98 DispID_15 0
  loc_9B3AEB: PopAd
  loc_9B3AED: FLdPr Me
  loc_9B3AF0: VCallAd Control_ID_mskHasta
  loc_9B3AF3: FStAdFunc var_AC
  loc_9B3AF6: LitI2_Byte 0
  loc_9B3AF8: PopTmpLdAd2 var_A2
  loc_9B3AFB: FLdZeroAd var_AC
  loc_9B3AFE: FStAdFunc var_A0
  loc_9B3B01: FLdRfVar var_A0
  loc_9B3B04: LitStr vbNullString
  loc_9B3B07: LitI2_Byte 0
  loc_9B3B09: LitI2_Byte 0
  loc_9B3B0B: FLdRfVar var_98
  loc_9B3B0E: CStrVarTmp
  loc_9B3B0F: FStStrNoPop var_9C
  loc_9B3B12: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B3B17: FStStrNoPop var_A8
  loc_9B3B1A: FLdPr Me
  loc_9B3B1D: MemStStrCopy
  loc_9B3B21: FFreeStr var_9C = ""
  loc_9B3B28: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3B31: FFree1Var var_98 = ""
  loc_9B3B34: FLdPr Me
  loc_9B3B37: VCallAd Control_ID_mskHasta
  loc_9B3B3A: FStAdFunc var_B0
  loc_9B3B3D: LitNothing
  loc_9B3B3F: CastAd
  loc_9B3B42: FStAdFunc var_AC
  loc_9B3B45: FLdRfVar var_AC
  loc_9B3B48: FLdZeroAd var_B0
  loc_9B3B4B: FStAdFuncNoPop
  loc_9B3B4E: CastAd
  loc_9B3B51: FStAdFunc var_A0
  loc_9B3B54: FLdRfVar var_A0
  loc_9B3B57: FLdPr Me
  loc_9B3B5A: MemLdRfVar from_stack_1.global_100
  loc_9B3B5D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B3B62: IStI2 arg_C
  loc_9B3B65: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3B70: ExitProcHresult
  loc_9B3B71: FLdZeroAd arg_35D
End Function

Public Function htmFileGet() '4B53C0
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4B53CF
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4B53DE
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4B53ED
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4B53FC
  bGenerado = Value
End Sub

Public Function bLogosGet() '4B540B
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4B541A
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '9C6654
  'Data Table: 4B409C
  loc_9C65A0: LitI4 0
  loc_9C65A5: LitI4 8
  loc_9C65AA: FLdRfVar var_88
  loc_9C65AD: Redim
  loc_9C65B7: FLdPr Me
  loc_9C65BA: VCallAd Control_ID_cboPeriodo
  loc_9C65BD: CVarAd
  loc_9C65C1: ParmAry1St
  loc_9C65C7: FLdPr Me
  loc_9C65CA: VCallAd Control_ID_mskDesde
  loc_9C65CD: CVarAd
  loc_9C65D1: ParmAry1St
  loc_9C65D7: FLdPr Me
  loc_9C65DA: VCallAd Control_ID_cmdCalDesde
  loc_9C65DD: CVarAd
  loc_9C65E1: ParmAry1St
  loc_9C65E7: FLdPr Me
  loc_9C65EA: VCallAd Control_ID_mskHasta
  loc_9C65ED: CVarAd
  loc_9C65F1: ParmAry1St
  loc_9C65F7: FLdPr Me
  loc_9C65FA: VCallAd Control_ID_cmdCalHasta
  loc_9C65FD: CVarAd
  loc_9C6601: ParmAry1St
  loc_9C6607: FLdPr Me
  loc_9C660A: VCallAd Control_ID_CodiPartMsk
  loc_9C660D: CVarAd
  loc_9C6611: ParmAry1St
  loc_9C6617: FLdPr Me
  loc_9C661A: VCallAd Control_ID_cmdCodiPart
  loc_9C661D: CVarAd
  loc_9C6621: ParmAry1St
  loc_9C6627: FLdPr Me
  loc_9C662A: VCallAd Control_ID_CodiOrgaMsk
  loc_9C662D: CVarAd
  loc_9C6631: ParmAry1St
  loc_9C6637: FLdPr Me
  loc_9C663A: VCallAd Control_ID_cmdCodiOrga
  loc_9C663D: CVarAd
  loc_9C6641: ParmAry1St
  loc_9C6647: FLdRfVar var_88
  loc_9C664A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C664F: FLdRfVar var_88
  loc_9C6652: Erase
  loc_9C6653: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B1F824
  'Data Table: 4B409C
  loc_B1EFA8: OnErrorGoto loc_B1F7C1
  loc_B1EFAB: FLdPr Me
  loc_B1EFAE: MemLdI2 bGenerado
  loc_B1EFB1: BranchF loc_B1EFB5
  loc_B1EFB4: ExitProcHresult
  loc_B1EFB5: LitVarStr var_A4, "Generando reporte..."
  loc_B1EFBA: PopAdLdVar
  loc_B1EFBB: FLdPr Me
  loc_B1EFBE: VCallAd Control_ID_statusBar
  loc_B1EFC1: FStAdFunc var_B8
  loc_B1EFC4: FLdPr var_B8
  loc_B1EFC7: LateIdSt
  loc_B1EFCC: FFree1Ad var_B8
  loc_B1EFCF: LitI4 &HB
  loc_B1EFD4: CI2I4
  loc_B1EFD5: FLdPr Me
  loc_B1EFD8: Me.MousePointer = from_stack_1
  loc_B1EFDD: LitI2_Byte 0
  loc_B1EFDF: PopTmpLdAd2 var_BA
  loc_B1EFE2: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B1EFE7: LitI2_Byte 0
  loc_B1EFE9: PopTmpLdAd2 var_BA
  loc_B1EFEC: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B1EFF1: LitI2_Byte 0
  loc_B1EFF3: PopTmpLdAd2 var_BA
  loc_B1EFF6: Call CodiPartMsk_UnknownEvent_8()
  loc_B1EFFB: LitI2_Byte 0
  loc_B1EFFD: PopTmpLdAd2 var_BA
  loc_B1F000: Call CodiPartMsk_UnknownEvent_8()
  loc_B1F005: FLdPr Me
  loc_B1F008: VCallAd Control_ID_mskDesde
  loc_B1F00B: FStAdFunc var_B8
  loc_B1F00E: FLdPr var_B8
  loc_B1F011: LateIdLdVar var_CC DispID_15 0
  loc_B1F018: PopAd
  loc_B1F01A: FLdPr Me
  loc_B1F01D: VCallAd Control_ID_mskHasta
  loc_B1F020: FStAdFunc var_130
  loc_B1F023: FLdPr var_130
  loc_B1F026: LateIdLdVar var_140 DispID_15 0
  loc_B1F02D: PopAd
  loc_B1F02F: LitVarStr var_B4, " AND FechImpu BETWEEN '"
  loc_B1F034: LitI4 1
  loc_B1F039: LitI4 1
  loc_B1F03E: LitVarStr var_A4, "yyyy-mm-dd"
  loc_B1F043: FStVarCopyObj var_EC
  loc_B1F046: FLdRfVar var_EC
  loc_B1F049: FLdRfVar var_CC
  loc_B1F04C: CStrVarTmp
  loc_B1F04D: CVarStr var_DC
  loc_B1F050: FLdRfVar var_FC
  loc_B1F053: ImpAdCallFPR4  = Format(, )
  loc_B1F058: FLdRfVar var_FC
  loc_B1F05B: ConcatVar var_10C
  loc_B1F05F: LitVarStr var_11C, "' AND '"
  loc_B1F064: ConcatVar var_12C
  loc_B1F068: LitI4 1
  loc_B1F06D: LitI4 1
  loc_B1F072: LitVarStr var_160, "yyyy-mm-dd"
  loc_B1F077: FStVarCopyObj var_170
  loc_B1F07A: FLdRfVar var_170
  loc_B1F07D: FLdRfVar var_140
  loc_B1F080: CStrVarTmp
  loc_B1F081: CVarStr var_150
  loc_B1F084: FLdRfVar var_180
  loc_B1F087: ImpAdCallFPR4  = Format(, )
  loc_B1F08C: FLdRfVar var_180
  loc_B1F08F: ConcatVar var_190
  loc_B1F093: LitVarStr var_1A0, "'"
  loc_B1F098: ConcatVar var_1B0
  loc_B1F09C: CStrVarTmp
  loc_B1F09D: FStStr var_88
  loc_B1F0A0: FFreeAd var_B8 = ""
  loc_B1F0A7: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_140 = "": var_150 = "": var_170 = "": var_12C = "": var_180 = "": var_190 = ""
  loc_B1F0C2: FLdPr Me
  loc_B1F0C5: VCallAd Control_ID_CodiPartMsk
  loc_B1F0C8: FStAdFunc var_B8
  loc_B1F0CB: FLdPr var_B8
  loc_B1F0CE: LateIdLdVar var_CC DispID_22 0
  loc_B1F0D5: PopAd
  loc_B1F0D7: FLdPr Me
  loc_B1F0DA: VCallAd Control_ID_CodiPartMsk
  loc_B1F0DD: FStAdFunc var_130
  loc_B1F0E0: FLdPr var_130
  loc_B1F0E3: LateIdLdVar var_DC DispID_22 0
  loc_B1F0EA: PopAd
  loc_B1F0EC: LitVarStr var_B4, vbNullString
  loc_B1F0F1: FStVarCopyObj var_FC
  loc_B1F0F4: FLdRfVar var_FC
  loc_B1F0F7: LitStr " AND imputacion.CodiPart LIKE '"
  loc_B1F0FA: FLdRfVar var_DC
  loc_B1F0FD: CStrVarTmp
  loc_B1F0FE: FStStrNoPop var_1B8
  loc_B1F101: ConcatStr
  loc_B1F102: FStStrNoPop var_1BC
  loc_B1F105: LitStr Chr(37) & "'"
  loc_B1F108: ConcatStr
  loc_B1F109: CVarStr var_EC
  loc_B1F10C: FLdRfVar var_CC
  loc_B1F10F: CStrVarTmp
  loc_B1F110: FStStrNoPop var_1B4
  loc_B1F113: LitStr vbNullString
  loc_B1F116: NeStr
  loc_B1F118: CVarBoolI2 var_A4
  loc_B1F11C: FLdRfVar var_10C
  loc_B1F11F: ImpAdCallFPR4  = IIf(, , )
  loc_B1F124: FLdRfVar var_10C
  loc_B1F127: CStrVarTmp
  loc_B1F128: FStStr var_8C
  loc_B1F12B: FFreeStr var_1B4 = "": var_1B8 = ""
  loc_B1F134: FFreeAd var_B8 = ""
  loc_B1F13B: FFreeVar var_CC = "": var_DC = "": var_A4 = "": var_EC = "": var_FC = ""
  loc_B1F14A: FLdPr Me
  loc_B1F14D: VCallAd Control_ID_CodiOrgaMsk
  loc_B1F150: FStAdFunc var_B8
  loc_B1F153: FLdPr var_B8
  loc_B1F156: LateIdLdVar var_CC DispID_22 0
  loc_B1F15D: PopAd
  loc_B1F15F: FLdPr Me
  loc_B1F162: VCallAd Control_ID_CodiOrgaMsk
  loc_B1F165: FStAdFunc var_130
  loc_B1F168: FLdPr var_130
  loc_B1F16B: LateIdLdVar var_DC DispID_22 0
  loc_B1F172: PopAd
  loc_B1F174: LitVarStr var_B4, vbNullString
  loc_B1F179: FStVarCopyObj var_FC
  loc_B1F17C: FLdRfVar var_FC
  loc_B1F17F: LitStr " AND imputacion.CodiOrga LIKE '"
  loc_B1F182: FLdRfVar var_DC
  loc_B1F185: CStrVarTmp
  loc_B1F186: FStStrNoPop var_1B8
  loc_B1F189: ConcatStr
  loc_B1F18A: FStStrNoPop var_1BC
  loc_B1F18D: LitStr Chr(37) & "'"
  loc_B1F190: ConcatStr
  loc_B1F191: CVarStr var_EC
  loc_B1F194: FLdRfVar var_CC
  loc_B1F197: CStrVarTmp
  loc_B1F198: FStStrNoPop var_1B4
  loc_B1F19B: LitStr vbNullString
  loc_B1F19E: NeStr
  loc_B1F1A0: CVarBoolI2 var_A4
  loc_B1F1A4: FLdRfVar var_10C
  loc_B1F1A7: ImpAdCallFPR4  = IIf(, , )
  loc_B1F1AC: FLdRfVar var_10C
  loc_B1F1AF: CStrVarTmp
  loc_B1F1B0: FStStr var_90
  loc_B1F1B3: FFreeStr var_1B4 = "": var_1B8 = ""
  loc_B1F1BC: FFreeAd var_B8 = ""
  loc_B1F1C3: FFreeVar var_CC = "": var_DC = "": var_A4 = "": var_EC = "": var_FC = ""
  loc_B1F1D2: FLdPr Me
  loc_B1F1D5: MemLdRfVar from_stack_1.global_72
  loc_B1F1D8: NewIfNullAd
  loc_B1F1DB: FStAd var_1C0 
  loc_B1F1DF: LitStr "SELECT imputacion.CodiPart, DetaPart, imputacion.CodiOrga, DetaOrga, imputacion.CodiFifu, "
  loc_B1F1E2: LitStr " DetaFifu, ExpeImpu, imputacion.CucuPers, DetaProv, Sum(DeveImpu)-Sum(MapaImpu) AS SaldImpu "
  loc_B1F1E5: ConcatStr
  loc_B1F1E6: FStStrNoPop var_1B4
  loc_B1F1E9: LitStr " FROM imputacion "
  loc_B1F1EC: ConcatStr
  loc_B1F1ED: FStStrNoPop var_1B8
  loc_B1F1F0: LitStr " LEFT JOIN partida ON partida.PeriInfo = imputacion.PeriInfo AND partida.CodiPart = imputacion.CodiPart "
  loc_B1F1F3: ConcatStr
  loc_B1F1F4: FStStrNoPop var_1BC
  loc_B1F1F7: LitStr " LEFT JOIN infogov.organigrama ON organigrama.PeriInfo = imputacion.PeriInfo AND organigrama.CodiOrga = imputacion.CodiOrga "
  loc_B1F1FA: ConcatStr
  loc_B1F1FB: FStStrNoPop var_1C4
  loc_B1F1FE: LitStr " LEFT JOIN finalidad ON finalidad.PeriInfo = imputacion.PeriInfo AND finalidad.CodiFifu = imputacion.CodiFifu "
  loc_B1F201: ConcatStr
  loc_B1F202: FStStrNoPop var_1C8
  loc_B1F205: LitStr " LEFT JOIN proveedor ON proveedor.CucuPers = imputacion.CucuPers"
  loc_B1F208: ConcatStr
  loc_B1F209: FStStrNoPop var_1CC
  loc_B1F20C: LitStr " WHERE imputacion.PeriInfo = "
  loc_B1F20F: ConcatStr
  loc_B1F210: FStStrNoPop var_1D4
  loc_B1F213: FLdRfVar var_1D0
  loc_B1F216: FLdPr Me
  loc_B1F219: VCallAd Control_ID_cboPeriodo
  loc_B1F21C: FStAdFunc var_B8
  loc_B1F21F: FLdPr var_B8
  loc_B1F222:  = Me.Text
  loc_B1F227: ILdRf var_1D0
  loc_B1F22A: ConcatStr
  loc_B1F22B: FStStrNoPop var_1D8
  loc_B1F22E: LitStr " AND (DeveImpu<>0 OR MapaImpu<>0) "
  loc_B1F231: ConcatStr
  loc_B1F232: FStStrNoPop var_1DC
  loc_B1F235: ILdRf var_88
  loc_B1F238: ConcatStr
  loc_B1F239: FStStrNoPop var_1E0
  loc_B1F23C: ILdRf var_8C
  loc_B1F23F: ConcatStr
  loc_B1F240: FStStrNoPop var_1E4
  loc_B1F243: ILdRf var_90
  loc_B1F246: ConcatStr
  loc_B1F247: FStStrNoPop var_1E8
  loc_B1F24A: LitStr " GROUP BY CodiPart, CodiOrga, CodiFifu, ExpeImpu, CucuPers"
  loc_B1F24D: ConcatStr
  loc_B1F24E: FStStrNoPop var_1EC
  loc_B1F251: LitStr " HAVING SaldImpu <> 0 "
  loc_B1F254: ConcatStr
  loc_B1F255: FStStrNoPop var_1F0
  loc_B1F258: LitStr " ORDER BY CodiPart, CodiOrga, CodiFifu, ExpeImpu"
  loc_B1F25B: ConcatStr
  loc_B1F25C: FStStrNoPop var_1F4
  loc_B1F25F: FLdPr var_1C0
  loc_B1F262: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B1F267: FFreeStr var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D4 = "": var_1D0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = ""
  loc_B1F28A: FFree1Ad var_B8
  loc_B1F28D: FLdRfVar var_1F8
  loc_B1F290: FLdPr var_1C0
  loc_B1F293: from_stack_1 = clsimputacion.RecordCount
  loc_B1F298: ILdRf var_1F8
  loc_B1F29B: LitI4 0
  loc_B1F2A0: EqI4
  loc_B1F2A1: BranchF loc_B1F2B4
  loc_B1F2A4: LitI4 0
  loc_B1F2A9: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B1F2AC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1F2B1: Branch loc_B1F798
  loc_B1F2B4: LitI4 0
  loc_B1F2B9: LitI4 1
  loc_B1F2BE: FLdPr Me
  loc_B1F2C1: MemLdRfVar from_stack_1.global_80
  loc_B1F2C4: Redim
  loc_B1F2CE: LitI2_Byte 0
  loc_B1F2D0: CStrUI1
  loc_B1F2D2: FStStrNoPop var_1B4
  loc_B1F2D5: FLdPr Me
  loc_B1F2D8: MemStStrCopy
  loc_B1F2DC: FFree1Str var_1B4
  loc_B1F2DF: LitI2_Byte 0
  loc_B1F2E1: FLdPr Me
  loc_B1F2E4: MemStI2 global_84
  loc_B1F2E7: FLdPr var_1C0
  loc_B1F2EA: Call clsimputacion.MoveFirst()
  loc_B1F2EF: Call Proc_223_33_9E0704()
  loc_B1F2F4: FLdRfVar var_BA
  loc_B1F2F7: FLdPr var_1C0
  loc_B1F2FA: from_stack_1 = clsimputacion.EOF
  loc_B1F2FF: FLdI2 var_BA
  loc_B1F302: NotI4
  loc_B1F303: BranchF loc_B1F4DC
  loc_B1F306: FLdRfVar var_CC
  loc_B1F309: FLdRfVar var_1FC
  loc_B1F30C: LitVarStr var_A4, "CodiPart"
  loc_B1F311: PopAdLdVar
  loc_B1F312: FLdRfVar var_130
  loc_B1F315: FLdRfVar var_B8
  loc_B1F318: FLdPr var_1C0
  loc_B1F31B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1F320: FLdPr var_B8
  loc_B1F323:  = Me.Fields
  loc_B1F328: FLdPr var_130
  loc_B1F32B: from_stack_2 = Me.Item(from_stack_1)
  loc_B1F330: FLdPr var_1FC
  loc_B1F333:  = Me.Value
  loc_B1F338: FLdRfVar var_CC
  loc_B1F33B: FLdPr Me
  loc_B1F33E: MemLdI2 global_84
  loc_B1F341: CI4UI1
  loc_B1F342: FLdPr Me
  loc_B1F345: MemLdStr global_80
  loc_B1F348: Ary1LdPr
  loc_B1F349: MemLdStr global_0
  loc_B1F34C: CVarStr var_B4
  loc_B1F34F: HardType
  loc_B1F350: NeVarBool
  loc_B1F352: FFreeAd var_B8 = "": var_130 = ""
  loc_B1F35B: FFree1Var var_CC = ""
  loc_B1F35E: BranchF loc_B1F369
  loc_B1F361: Call Proc_223_33_9E0704()
  loc_B1F366: Branch loc_B1F4D9
  loc_B1F369: FLdRfVar var_CC
  loc_B1F36C: FLdRfVar var_1FC
  loc_B1F36F: LitVarStr var_A4, "CodiOrga"
  loc_B1F374: PopAdLdVar
  loc_B1F375: FLdRfVar var_130
  loc_B1F378: FLdRfVar var_B8
  loc_B1F37B: FLdPr var_1C0
  loc_B1F37E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1F383: FLdPr var_B8
  loc_B1F386:  = Me.Fields
  loc_B1F38B: FLdPr var_130
  loc_B1F38E: from_stack_2 = Me.Item(from_stack_1)
  loc_B1F393: FLdPr var_1FC
  loc_B1F396:  = Me.Value
  loc_B1F39B: FLdRfVar var_CC
  loc_B1F39E: FLdPr Me
  loc_B1F3A1: MemLdI2 global_86
  loc_B1F3A4: CI4UI1
  loc_B1F3A5: FLdPr Me
  loc_B1F3A8: MemLdI2 global_84
  loc_B1F3AB: CI4UI1
  loc_B1F3AC: FLdPr Me
  loc_B1F3AF: MemLdStr global_80
  loc_B1F3B2: Ary1LdPr
  loc_B1F3B3: MemLdStr global_8
  loc_B1F3B6: Ary1LdPr
  loc_B1F3B7: MemLdStr global_0
  loc_B1F3BA: CVarStr var_B4
  loc_B1F3BD: HardType
  loc_B1F3BE: NeVarBool
  loc_B1F3C0: FFreeAd var_B8 = "": var_130 = ""
  loc_B1F3C9: FFree1Var var_CC = ""
  loc_B1F3CC: BranchF loc_B1F3D7
  loc_B1F3CF: Call Proc_223_34_9F48CC()
  loc_B1F3D4: Branch loc_B1F4D9
  loc_B1F3D7: FLdRfVar var_CC
  loc_B1F3DA: FLdRfVar var_1FC
  loc_B1F3DD: LitVarStr var_A4, "CodiFifu"
  loc_B1F3E2: PopAdLdVar
  loc_B1F3E3: FLdRfVar var_130
  loc_B1F3E6: FLdRfVar var_B8
  loc_B1F3E9: FLdPr var_1C0
  loc_B1F3EC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1F3F1: FLdPr var_B8
  loc_B1F3F4:  = Me.Fields
  loc_B1F3F9: FLdPr var_130
  loc_B1F3FC: from_stack_2 = Me.Item(from_stack_1)
  loc_B1F401: FLdPr var_1FC
  loc_B1F404:  = Me.Value
  loc_B1F409: FLdRfVar var_CC
  loc_B1F40C: FLdPr Me
  loc_B1F40F: MemLdI2 global_88
  loc_B1F412: CI4UI1
  loc_B1F413: FLdPr Me
  loc_B1F416: MemLdI2 global_86
  loc_B1F419: CI4UI1
  loc_B1F41A: FLdPr Me
  loc_B1F41D: MemLdI2 global_84
  loc_B1F420: CI4UI1
  loc_B1F421: FLdPr Me
  loc_B1F424: MemLdStr global_80
  loc_B1F427: Ary1LdPr
  loc_B1F428: MemLdStr global_8
  loc_B1F42B: Ary1LdPr
  loc_B1F42C: MemLdStr global_8
  loc_B1F42F: Ary1LdPr
  loc_B1F430: MemLdStr global_0
  loc_B1F433: CVarStr var_B4
  loc_B1F436: HardType
  loc_B1F437: NeVarBool
  loc_B1F439: FFreeAd var_B8 = "": var_130 = ""
  loc_B1F442: FFree1Var var_CC = ""
  loc_B1F445: BranchF loc_B1F450
  loc_B1F448: Call Proc_223_35_A0CEBC()
  loc_B1F44D: Branch loc_B1F4D9
  loc_B1F450: FLdRfVar var_CC
  loc_B1F453: FLdRfVar var_1FC
  loc_B1F456: LitVarStr var_A4, "ExpeImpu"
  loc_B1F45B: PopAdLdVar
  loc_B1F45C: FLdRfVar var_130
  loc_B1F45F: FLdRfVar var_B8
  loc_B1F462: FLdPr var_1C0
  loc_B1F465: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1F46A: FLdPr var_B8
  loc_B1F46D:  = Me.Fields
  loc_B1F472: FLdPr var_130
  loc_B1F475: from_stack_2 = Me.Item(from_stack_1)
  loc_B1F47A: FLdPr var_1FC
  loc_B1F47D:  = Me.Value
  loc_B1F482: FLdRfVar var_CC
  loc_B1F485: FLdPr Me
  loc_B1F488: MemLdI2 global_90
  loc_B1F48B: CI4UI1
  loc_B1F48C: FLdPr Me
  loc_B1F48F: MemLdI2 global_88
  loc_B1F492: CI4UI1
  loc_B1F493: FLdPr Me
  loc_B1F496: MemLdI2 global_86
  loc_B1F499: CI4UI1
  loc_B1F49A: FLdPr Me
  loc_B1F49D: MemLdI2 global_84
  loc_B1F4A0: CI4UI1
  loc_B1F4A1: FLdPr Me
  loc_B1F4A4: MemLdStr global_80
  loc_B1F4A7: Ary1LdPr
  loc_B1F4A8: MemLdStr global_8
  loc_B1F4AB: Ary1LdPr
  loc_B1F4AC: MemLdStr global_8
  loc_B1F4AF: Ary1LdPr
  loc_B1F4B0: MemLdStr global_8
  loc_B1F4B3: Ary1LdPr
  loc_B1F4B4: MemLdStr global_0
  loc_B1F4B7: CVarStr var_B4
  loc_B1F4BA: HardType
  loc_B1F4BB: NeVarBool
  loc_B1F4BD: FFreeAd var_B8 = "": var_130 = ""
  loc_B1F4C6: FFree1Var var_CC = ""
  loc_B1F4C9: BranchF loc_B1F4D4
  loc_B1F4CC: Call Proc_223_36_9DCCB0()
  loc_B1F4D1: Branch loc_B1F4D9
  loc_B1F4D4: Call Proc_223_37_A2F330()
  loc_B1F4D9: Branch loc_B1F2F4
  loc_B1F4DC: LitNothing
  loc_B1F4DE: FStAd var_1C0 
  loc_B1F4E2: LitI2_Byte 1
  loc_B1F4E4: FLdPr Me
  loc_B1F4E7: MemLdRfVar from_stack_1.global_84
  loc_B1F4EA: FLdPr Me
  loc_B1F4ED: MemLdStr global_80
  loc_B1F4F0: LitI2_Byte 1
  loc_B1F4F2: FnUBound
  loc_B1F4F4: CI2I4
  loc_B1F4F5: ForI2 var_200
  loc_B1F4FB: LitI2_Byte 0
  loc_B1F4FD: FLdPr Me
  loc_B1F500: MemLdRfVar from_stack_1.global_96
  loc_B1F503: CVarRef
  loc_B1F508: LitI2_Byte &HFF
  loc_B1F50A: FLdPr Me
  loc_B1F50D: MemLdI2 global_84
  loc_B1F510: CI4UI1
  loc_B1F511: FLdPr Me
  loc_B1F514: MemLdStr global_80
  loc_B1F517: Ary1LdPr
  loc_B1F518: MemLdStr global_20
  loc_B1F51B: CVarStr var_A4
  loc_B1F51E: PopAdLdVar
  loc_B1F51F: FLdRfVar var_94
  loc_B1F522: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1F527: LitI2_Byte 1
  loc_B1F529: FLdPr Me
  loc_B1F52C: MemLdRfVar from_stack_1.global_86
  loc_B1F52F: FLdPr Me
  loc_B1F532: MemLdI2 global_84
  loc_B1F535: CI4UI1
  loc_B1F536: FLdPr Me
  loc_B1F539: MemLdStr global_80
  loc_B1F53C: Ary1LdPr
  loc_B1F53D: MemLdStr global_8
  loc_B1F540: LitI2_Byte 1
  loc_B1F542: FnUBound
  loc_B1F544: CI2I4
  loc_B1F545: ForI2 var_204
  loc_B1F54B: LitI2_Byte 1
  loc_B1F54D: FLdPr Me
  loc_B1F550: MemLdRfVar from_stack_1.global_88
  loc_B1F553: FLdPr Me
  loc_B1F556: MemLdI2 global_86
  loc_B1F559: CI4UI1
  loc_B1F55A: FLdPr Me
  loc_B1F55D: MemLdI2 global_84
  loc_B1F560: CI4UI1
  loc_B1F561: FLdPr Me
  loc_B1F564: MemLdStr global_80
  loc_B1F567: Ary1LdPr
  loc_B1F568: MemLdStr global_8
  loc_B1F56B: Ary1LdPr
  loc_B1F56C: MemLdStr global_8
  loc_B1F56F: LitI2_Byte 1
  loc_B1F571: FnUBound
  loc_B1F573: CI2I4
  loc_B1F574: ForI2 var_208
  loc_B1F57A: LitI2_Byte 1
  loc_B1F57C: FLdPr Me
  loc_B1F57F: MemLdRfVar from_stack_1.global_90
  loc_B1F582: FLdPr Me
  loc_B1F585: MemLdI2 global_88
  loc_B1F588: CI4UI1
  loc_B1F589: FLdPr Me
  loc_B1F58C: MemLdI2 global_86
  loc_B1F58F: CI4UI1
  loc_B1F590: FLdPr Me
  loc_B1F593: MemLdI2 global_84
  loc_B1F596: CI4UI1
  loc_B1F597: FLdPr Me
  loc_B1F59A: MemLdStr global_80
  loc_B1F59D: Ary1LdPr
  loc_B1F59E: MemLdStr global_8
  loc_B1F5A1: Ary1LdPr
  loc_B1F5A2: MemLdStr global_8
  loc_B1F5A5: Ary1LdPr
  loc_B1F5A6: MemLdStr global_8
  loc_B1F5A9: LitI2_Byte 1
  loc_B1F5AB: FnUBound
  loc_B1F5AD: CI2I4
  loc_B1F5AE: ForI2 var_20C
  loc_B1F5B4: FLdPr Me
  loc_B1F5B7: MemLdI2 global_90
  loc_B1F5BA: CI4UI1
  loc_B1F5BB: FLdPr Me
  loc_B1F5BE: MemLdI2 global_88
  loc_B1F5C1: CI4UI1
  loc_B1F5C2: FLdPr Me
  loc_B1F5C5: MemLdI2 global_86
  loc_B1F5C8: CI4UI1
  loc_B1F5C9: FLdPr Me
  loc_B1F5CC: MemLdI2 global_84
  loc_B1F5CF: CI4UI1
  loc_B1F5D0: FLdPr Me
  loc_B1F5D3: MemLdStr global_80
  loc_B1F5D6: Ary1LdPr
  loc_B1F5D7: MemLdStr global_8
  loc_B1F5DA: Ary1LdPr
  loc_B1F5DB: MemLdStr global_8
  loc_B1F5DE: Ary1LdPr
  loc_B1F5DF: MemLdStr global_8
  loc_B1F5E2: Ary1LdPr
  loc_B1F5E3: MemLdStr global_4
  loc_B1F5E6: LitI2_Byte 1
  loc_B1F5E8: FnUBound
  loc_B1F5EA: FLdPr Me
  loc_B1F5ED: MemLdI2 global_90
  loc_B1F5F0: CI4UI1
  loc_B1F5F1: FLdPr Me
  loc_B1F5F4: MemLdI2 global_88
  loc_B1F5F7: CI4UI1
  loc_B1F5F8: FLdPr Me
  loc_B1F5FB: MemLdI2 global_86
  loc_B1F5FE: CI4UI1
  loc_B1F5FF: FLdPr Me
  loc_B1F602: MemLdI2 global_84
  loc_B1F605: CI4UI1
  loc_B1F606: FLdPr Me
  loc_B1F609: MemLdStr global_80
  loc_B1F60C: Ary1LdPr
  loc_B1F60D: MemLdStr global_8
  loc_B1F610: Ary1LdPr
  loc_B1F611: MemLdStr global_8
  loc_B1F614: Ary1LdPr
  loc_B1F615: MemLdStr global_8
  loc_B1F618: Ary1LdPr
  loc_B1F619: MemStI4 global_8
  loc_B1F61C: FLdPr Me
  loc_B1F61F: MemLdI2 global_88
  loc_B1F622: CI4UI1
  loc_B1F623: FLdPr Me
  loc_B1F626: MemLdI2 global_86
  loc_B1F629: CI4UI1
  loc_B1F62A: FLdPr Me
  loc_B1F62D: MemLdI2 global_84
  loc_B1F630: CI4UI1
  loc_B1F631: FLdPr Me
  loc_B1F634: MemLdStr global_80
  loc_B1F637: Ary1LdPr
  loc_B1F638: MemLdStr global_8
  loc_B1F63B: Ary1LdPr
  loc_B1F63C: MemLdStr global_8
  loc_B1F63F: Ary1LdPr
  loc_B1F640: MemLdStr global_12
  loc_B1F643: FLdPr Me
  loc_B1F646: MemLdI2 global_90
  loc_B1F649: CI4UI1
  loc_B1F64A: FLdPr Me
  loc_B1F64D: MemLdI2 global_88
  loc_B1F650: CI4UI1
  loc_B1F651: FLdPr Me
  loc_B1F654: MemLdI2 global_86
  loc_B1F657: CI4UI1
  loc_B1F658: FLdPr Me
  loc_B1F65B: MemLdI2 global_84
  loc_B1F65E: CI4UI1
  loc_B1F65F: FLdPr Me
  loc_B1F662: MemLdStr global_80
  loc_B1F665: Ary1LdPr
  loc_B1F666: MemLdStr global_8
  loc_B1F669: Ary1LdPr
  loc_B1F66A: MemLdStr global_8
  loc_B1F66D: Ary1LdPr
  loc_B1F66E: MemLdStr global_8
  loc_B1F671: Ary1LdPr
  loc_B1F672: MemLdStr global_8
  loc_B1F675: AddI4
  loc_B1F676: FLdPr Me
  loc_B1F679: MemLdI2 global_88
  loc_B1F67C: CI4UI1
  loc_B1F67D: FLdPr Me
  loc_B1F680: MemLdI2 global_86
  loc_B1F683: CI4UI1
  loc_B1F684: FLdPr Me
  loc_B1F687: MemLdI2 global_84
  loc_B1F68A: CI4UI1
  loc_B1F68B: FLdPr Me
  loc_B1F68E: MemLdStr global_80
  loc_B1F691: Ary1LdPr
  loc_B1F692: MemLdStr global_8
  loc_B1F695: Ary1LdPr
  loc_B1F696: MemLdStr global_8
  loc_B1F699: Ary1LdPr
  loc_B1F69A: MemStI4 global_12
  loc_B1F69D: FLdPr Me
  loc_B1F6A0: MemLdRfVar from_stack_1.global_90
  loc_B1F6A3: NextI2 var_20C, loc_B1F5B4
  loc_B1F6A8: FLdPr Me
  loc_B1F6AB: MemLdI2 global_86
  loc_B1F6AE: CI4UI1
  loc_B1F6AF: FLdPr Me
  loc_B1F6B2: MemLdI2 global_84
  loc_B1F6B5: CI4UI1
  loc_B1F6B6: FLdPr Me
  loc_B1F6B9: MemLdStr global_80
  loc_B1F6BC: Ary1LdPr
  loc_B1F6BD: MemLdStr global_8
  loc_B1F6C0: Ary1LdPr
  loc_B1F6C1: MemLdStr global_12
  loc_B1F6C4: FLdPr Me
  loc_B1F6C7: MemLdI2 global_88
  loc_B1F6CA: CI4UI1
  loc_B1F6CB: FLdPr Me
  loc_B1F6CE: MemLdI2 global_86
  loc_B1F6D1: CI4UI1
  loc_B1F6D2: FLdPr Me
  loc_B1F6D5: MemLdI2 global_84
  loc_B1F6D8: CI4UI1
  loc_B1F6D9: FLdPr Me
  loc_B1F6DC: MemLdStr global_80
  loc_B1F6DF: Ary1LdPr
  loc_B1F6E0: MemLdStr global_8
  loc_B1F6E3: Ary1LdPr
  loc_B1F6E4: MemLdStr global_8
  loc_B1F6E7: Ary1LdPr
  loc_B1F6E8: MemLdStr global_12
  loc_B1F6EB: AddI4
  loc_B1F6EC: FLdPr Me
  loc_B1F6EF: MemLdI2 global_86
  loc_B1F6F2: CI4UI1
  loc_B1F6F3: FLdPr Me
  loc_B1F6F6: MemLdI2 global_84
  loc_B1F6F9: CI4UI1
  loc_B1F6FA: FLdPr Me
  loc_B1F6FD: MemLdStr global_80
  loc_B1F700: Ary1LdPr
  loc_B1F701: MemLdStr global_8
  loc_B1F704: Ary1LdPr
  loc_B1F705: MemStI4 global_12
  loc_B1F708: FLdPr Me
  loc_B1F70B: MemLdRfVar from_stack_1.global_88
  loc_B1F70E: NextI2 var_208, loc_B1F57A
  loc_B1F713: FLdPr Me
  loc_B1F716: MemLdI2 global_84
  loc_B1F719: CI4UI1
  loc_B1F71A: FLdPr Me
  loc_B1F71D: MemLdStr global_80
  loc_B1F720: Ary1LdPr
  loc_B1F721: MemLdStr global_12
  loc_B1F724: FLdPr Me
  loc_B1F727: MemLdI2 global_86
  loc_B1F72A: CI4UI1
  loc_B1F72B: FLdPr Me
  loc_B1F72E: MemLdI2 global_84
  loc_B1F731: CI4UI1
  loc_B1F732: FLdPr Me
  loc_B1F735: MemLdStr global_80
  loc_B1F738: Ary1LdPr
  loc_B1F739: MemLdStr global_8
  loc_B1F73C: Ary1LdPr
  loc_B1F73D: MemLdStr global_12
  loc_B1F740: AddI4
  loc_B1F741: FLdPr Me
  loc_B1F744: MemLdI2 global_84
  loc_B1F747: CI4UI1
  loc_B1F748: FLdPr Me
  loc_B1F74B: MemLdStr global_80
  loc_B1F74E: Ary1LdPr
  loc_B1F74F: MemStI4 global_12
  loc_B1F752: FLdPr Me
  loc_B1F755: MemLdRfVar from_stack_1.global_86
  loc_B1F758: NextI2 var_204, loc_B1F54B
  loc_B1F75D: FLdPr Me
  loc_B1F760: MemLdI2 global_84
  loc_B1F763: CI4UI1
  loc_B1F764: FLdPr Me
  loc_B1F767: MemLdStr global_80
  loc_B1F76A: Ary1LdPr
  loc_B1F76B: MemLdStr global_12
  loc_B1F76E: LitI4 1
  loc_B1F773: AddI4
  loc_B1F774: FLdPr Me
  loc_B1F777: MemLdI2 global_84
  loc_B1F77A: CI4UI1
  loc_B1F77B: FLdPr Me
  loc_B1F77E: MemLdStr global_80
  loc_B1F781: Ary1LdPr
  loc_B1F782: MemStI4 global_12
  loc_B1F785: FLdPr Me
  loc_B1F788: MemLdRfVar from_stack_1.global_84
  loc_B1F78B: NextI2 var_200, loc_B1F4FB
  loc_B1F790: LitI2_Byte &HFF
  loc_B1F792: FLdPr Me
  loc_B1F795: MemStI2 bGenerado
  loc_B1F798: LitI4 0
  loc_B1F79D: CI2I4
  loc_B1F79E: FLdPr Me
  loc_B1F7A1: Me.MousePointer = from_stack_1
  loc_B1F7A6: LitVarStr var_A4, vbNullString
  loc_B1F7AB: PopAdLdVar
  loc_B1F7AC: FLdPr Me
  loc_B1F7AF: VCallAd Control_ID_statusBar
  loc_B1F7B2: FStAdFunc var_B8
  loc_B1F7B5: FLdPr var_B8
  loc_B1F7B8: LateIdSt
  loc_B1F7BD: FFree1Ad var_B8
  loc_B1F7C0: ExitProcHresult
  loc_B1F7C1: LitI4 0
  loc_B1F7C6: LitStr "Error "
  loc_B1F7C9: FLdRfVar var_1F8
  loc_B1F7CC: ImpAdCallI2 Err 'rtcErrObj
  loc_B1F7D1: FStAdFunc var_B8
  loc_B1F7D4: FLdPr var_B8
  loc_B1F7D7:  = Err.Number
  loc_B1F7DC: ILdRf var_1F8
  loc_B1F7DF: CStrI4
  loc_B1F7E1: FStStrNoPop var_1B4
  loc_B1F7E4: ConcatStr
  loc_B1F7E5: FStStrNoPop var_1B8
  loc_B1F7E8: LitStr ": "
  loc_B1F7EB: ConcatStr
  loc_B1F7EC: FStStrNoPop var_1C4
  loc_B1F7EF: FLdRfVar var_1BC
  loc_B1F7F2: ImpAdCallI2 Err 'rtcErrObj
  loc_B1F7F7: FStAdFunc var_130
  loc_B1F7FA: FLdPr var_130
  loc_B1F7FD:  = Err.Description
  loc_B1F802: ILdRf var_1BC
  loc_B1F805: ConcatStr
  loc_B1F806: FStStrNoPop var_1C8
  loc_B1F809: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1F80E: FFreeStr var_1B4 = "": var_1B8 = "": var_1C4 = "": var_1BC = ""
  loc_B1F81B: FFreeAd var_B8 = ""
  loc_B1F822: ExitProcHresult
  loc_B1F823: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'ADC4BC
  'Data Table: 4B409C
  loc_ADBE2C: FLdRfVar var_88
  loc_ADBE2F: LitI2_Byte 0
  loc_ADBE31: LitI2_Byte &HFF
  loc_ADBE33: ImpAdLdI4 MemVar_C3D83C
  loc_ADBE36: FLdPr Me
  loc_ADBE39: MemLdRfVar from_stack_1.global_76
  loc_ADBE3C: NewIfNullPr IFileSystem3
  loc_ADBE3F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ADBE44: ILdRf var_88
  loc_ADBE47: FLdPr Me
  loc_ADBE4A: MemStVarAd
  loc_ADBE4E: FFree1Ad var_88
  loc_ADBE51: Call Proc_223_38_AA3870()
  loc_ADBE56: LitI2_Byte 1
  loc_ADBE58: FLdPr Me
  loc_ADBE5B: MemLdRfVar from_stack_1.global_84
  loc_ADBE5E: FLdPr Me
  loc_ADBE61: MemLdStr global_80
  loc_ADBE64: LitI2_Byte 1
  loc_ADBE66: FnUBound
  loc_ADBE68: CI2I4
  loc_ADBE69: ForI2 var_8C
  loc_ADBE6F: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADBE74: PopAdLdVar
  loc_ADBE75: FLdPr Me
  loc_ADBE78: MemLdRfVar from_stack_1.htmFile
  loc_ADBE7B: LdPrVar
  loc_ADBE7D: LateMemCall
  loc_ADBE83: LitStr "<td rowspan="""
  loc_ADBE86: FLdPr Me
  loc_ADBE89: MemLdI2 global_84
  loc_ADBE8C: CI4UI1
  loc_ADBE8D: FLdPr Me
  loc_ADBE90: MemLdStr global_80
  loc_ADBE93: Ary1LdPr
  loc_ADBE94: MemLdStr global_12
  loc_ADBE97: CStrI4
  loc_ADBE99: FStStrNoPop var_B0
  loc_ADBE9C: ConcatStr
  loc_ADBE9D: FStStrNoPop var_B4
  loc_ADBEA0: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_ADBEA3: ConcatStr
  loc_ADBEA4: FStStrNoPop var_B8
  loc_ADBEA7: FLdPr Me
  loc_ADBEAA: MemLdI2 global_84
  loc_ADBEAD: CI4UI1
  loc_ADBEAE: FLdPr Me
  loc_ADBEB1: MemLdStr global_80
  loc_ADBEB4: Ary1LdPr
  loc_ADBEB5: MemLdStr global_0
  loc_ADBEB8: ConcatStr
  loc_ADBEB9: FStStrNoPop var_BC
  loc_ADBEBC: LitStr "<br>"
  loc_ADBEBF: ConcatStr
  loc_ADBEC0: FStStrNoPop var_C0
  loc_ADBEC3: FLdPr Me
  loc_ADBEC6: MemLdI2 global_84
  loc_ADBEC9: CI4UI1
  loc_ADBECA: FLdPr Me
  loc_ADBECD: MemLdStr global_80
  loc_ADBED0: Ary1LdPr
  loc_ADBED1: MemLdStr global_4
  loc_ADBED4: ConcatStr
  loc_ADBED5: FStStrNoPop var_C4
  loc_ADBED8: LitStr "</td>"
  loc_ADBEDB: ConcatStr
  loc_ADBEDC: CVarStr var_D4
  loc_ADBEDF: PopAdLdVar
  loc_ADBEE0: FLdPr Me
  loc_ADBEE3: MemLdRfVar from_stack_1.htmFile
  loc_ADBEE6: LdPrVar
  loc_ADBEE8: LateMemCall
  loc_ADBEEE: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_ADBEFD: FFree1Var var_D4 = ""
  loc_ADBF00: LitI2_Byte 1
  loc_ADBF02: FLdPr Me
  loc_ADBF05: MemLdRfVar from_stack_1.global_86
  loc_ADBF08: FLdPr Me
  loc_ADBF0B: MemLdI2 global_84
  loc_ADBF0E: CI4UI1
  loc_ADBF0F: FLdPr Me
  loc_ADBF12: MemLdStr global_80
  loc_ADBF15: Ary1LdPr
  loc_ADBF16: MemLdStr global_8
  loc_ADBF19: LitI2_Byte 1
  loc_ADBF1B: FnUBound
  loc_ADBF1D: CI2I4
  loc_ADBF1E: ForI2 var_D8
  loc_ADBF24: FLdPr Me
  loc_ADBF27: MemLdI2 global_86
  loc_ADBF2A: LitI2_Byte 1
  loc_ADBF2C: GtI2
  loc_ADBF2D: BranchF loc_ADBF44
  loc_ADBF30: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADBF35: PopAdLdVar
  loc_ADBF36: FLdPr Me
  loc_ADBF39: MemLdRfVar from_stack_1.htmFile
  loc_ADBF3C: LdPrVar
  loc_ADBF3E: LateMemCall
  loc_ADBF44: LitStr "<td rowspan="""
  loc_ADBF47: FLdPr Me
  loc_ADBF4A: MemLdI2 global_86
  loc_ADBF4D: CI4UI1
  loc_ADBF4E: FLdPr Me
  loc_ADBF51: MemLdI2 global_84
  loc_ADBF54: CI4UI1
  loc_ADBF55: FLdPr Me
  loc_ADBF58: MemLdStr global_80
  loc_ADBF5B: Ary1LdPr
  loc_ADBF5C: MemLdStr global_8
  loc_ADBF5F: Ary1LdPr
  loc_ADBF60: MemLdStr global_12
  loc_ADBF63: CStrI4
  loc_ADBF65: FStStrNoPop var_B0
  loc_ADBF68: ConcatStr
  loc_ADBF69: FStStrNoPop var_B4
  loc_ADBF6C: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_ADBF6F: ConcatStr
  loc_ADBF70: FStStrNoPop var_B8
  loc_ADBF73: FLdPr Me
  loc_ADBF76: MemLdI2 global_86
  loc_ADBF79: CI4UI1
  loc_ADBF7A: FLdPr Me
  loc_ADBF7D: MemLdI2 global_84
  loc_ADBF80: CI4UI1
  loc_ADBF81: FLdPr Me
  loc_ADBF84: MemLdStr global_80
  loc_ADBF87: Ary1LdPr
  loc_ADBF88: MemLdStr global_8
  loc_ADBF8B: Ary1LdPr
  loc_ADBF8C: MemLdStr global_0
  loc_ADBF8F: ConcatStr
  loc_ADBF90: FStStrNoPop var_BC
  loc_ADBF93: LitStr "<br>"
  loc_ADBF96: ConcatStr
  loc_ADBF97: FStStrNoPop var_C0
  loc_ADBF9A: FLdPr Me
  loc_ADBF9D: MemLdI2 global_86
  loc_ADBFA0: CI4UI1
  loc_ADBFA1: FLdPr Me
  loc_ADBFA4: MemLdI2 global_84
  loc_ADBFA7: CI4UI1
  loc_ADBFA8: FLdPr Me
  loc_ADBFAB: MemLdStr global_80
  loc_ADBFAE: Ary1LdPr
  loc_ADBFAF: MemLdStr global_8
  loc_ADBFB2: Ary1LdPr
  loc_ADBFB3: MemLdStr global_4
  loc_ADBFB6: ConcatStr
  loc_ADBFB7: FStStrNoPop var_C4
  loc_ADBFBA: LitStr "</td>"
  loc_ADBFBD: ConcatStr
  loc_ADBFBE: CVarStr var_D4
  loc_ADBFC1: PopAdLdVar
  loc_ADBFC2: FLdPr Me
  loc_ADBFC5: MemLdRfVar from_stack_1.htmFile
  loc_ADBFC8: LdPrVar
  loc_ADBFCA: LateMemCall
  loc_ADBFD0: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_ADBFDF: FFree1Var var_D4 = ""
  loc_ADBFE2: LitI2_Byte 1
  loc_ADBFE4: FLdPr Me
  loc_ADBFE7: MemLdRfVar from_stack_1.global_88
  loc_ADBFEA: FLdPr Me
  loc_ADBFED: MemLdI2 global_86
  loc_ADBFF0: CI4UI1
  loc_ADBFF1: FLdPr Me
  loc_ADBFF4: MemLdI2 global_84
  loc_ADBFF7: CI4UI1
  loc_ADBFF8: FLdPr Me
  loc_ADBFFB: MemLdStr global_80
  loc_ADBFFE: Ary1LdPr
  loc_ADBFFF: MemLdStr global_8
  loc_ADC002: Ary1LdPr
  loc_ADC003: MemLdStr global_8
  loc_ADC006: LitI2_Byte 1
  loc_ADC008: FnUBound
  loc_ADC00A: CI2I4
  loc_ADC00B: ForI2 var_DC
  loc_ADC011: FLdPr Me
  loc_ADC014: MemLdI2 global_88
  loc_ADC017: LitI2_Byte 1
  loc_ADC019: GtI2
  loc_ADC01A: BranchF loc_ADC031
  loc_ADC01D: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADC022: PopAdLdVar
  loc_ADC023: FLdPr Me
  loc_ADC026: MemLdRfVar from_stack_1.htmFile
  loc_ADC029: LdPrVar
  loc_ADC02B: LateMemCall
  loc_ADC031: LitStr "<td rowspan="""
  loc_ADC034: FLdPr Me
  loc_ADC037: MemLdI2 global_88
  loc_ADC03A: CI4UI1
  loc_ADC03B: FLdPr Me
  loc_ADC03E: MemLdI2 global_86
  loc_ADC041: CI4UI1
  loc_ADC042: FLdPr Me
  loc_ADC045: MemLdI2 global_84
  loc_ADC048: CI4UI1
  loc_ADC049: FLdPr Me
  loc_ADC04C: MemLdStr global_80
  loc_ADC04F: Ary1LdPr
  loc_ADC050: MemLdStr global_8
  loc_ADC053: Ary1LdPr
  loc_ADC054: MemLdStr global_8
  loc_ADC057: Ary1LdPr
  loc_ADC058: MemLdStr global_12
  loc_ADC05B: CStrI4
  loc_ADC05D: FStStrNoPop var_B0
  loc_ADC060: ConcatStr
  loc_ADC061: FStStrNoPop var_B4
  loc_ADC064: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_ADC067: ConcatStr
  loc_ADC068: FStStrNoPop var_B8
  loc_ADC06B: FLdPr Me
  loc_ADC06E: MemLdI2 global_88
  loc_ADC071: CI4UI1
  loc_ADC072: FLdPr Me
  loc_ADC075: MemLdI2 global_86
  loc_ADC078: CI4UI1
  loc_ADC079: FLdPr Me
  loc_ADC07C: MemLdI2 global_84
  loc_ADC07F: CI4UI1
  loc_ADC080: FLdPr Me
  loc_ADC083: MemLdStr global_80
  loc_ADC086: Ary1LdPr
  loc_ADC087: MemLdStr global_8
  loc_ADC08A: Ary1LdPr
  loc_ADC08B: MemLdStr global_8
  loc_ADC08E: Ary1LdPr
  loc_ADC08F: MemLdStr global_0
  loc_ADC092: ConcatStr
  loc_ADC093: FStStrNoPop var_BC
  loc_ADC096: LitStr "<br>"
  loc_ADC099: ConcatStr
  loc_ADC09A: FStStrNoPop var_C0
  loc_ADC09D: FLdPr Me
  loc_ADC0A0: MemLdI2 global_88
  loc_ADC0A3: CI4UI1
  loc_ADC0A4: FLdPr Me
  loc_ADC0A7: MemLdI2 global_86
  loc_ADC0AA: CI4UI1
  loc_ADC0AB: FLdPr Me
  loc_ADC0AE: MemLdI2 global_84
  loc_ADC0B1: CI4UI1
  loc_ADC0B2: FLdPr Me
  loc_ADC0B5: MemLdStr global_80
  loc_ADC0B8: Ary1LdPr
  loc_ADC0B9: MemLdStr global_8
  loc_ADC0BC: Ary1LdPr
  loc_ADC0BD: MemLdStr global_8
  loc_ADC0C0: Ary1LdPr
  loc_ADC0C1: MemLdStr global_4
  loc_ADC0C4: ConcatStr
  loc_ADC0C5: FStStrNoPop var_C4
  loc_ADC0C8: LitStr "</td>"
  loc_ADC0CB: ConcatStr
  loc_ADC0CC: CVarStr var_D4
  loc_ADC0CF: PopAdLdVar
  loc_ADC0D0: FLdPr Me
  loc_ADC0D3: MemLdRfVar from_stack_1.htmFile
  loc_ADC0D6: LdPrVar
  loc_ADC0D8: LateMemCall
  loc_ADC0DE: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_ADC0ED: FFree1Var var_D4 = ""
  loc_ADC0F0: LitI2_Byte 1
  loc_ADC0F2: FLdPr Me
  loc_ADC0F5: MemLdRfVar from_stack_1.global_90
  loc_ADC0F8: FLdPr Me
  loc_ADC0FB: MemLdI2 global_88
  loc_ADC0FE: CI4UI1
  loc_ADC0FF: FLdPr Me
  loc_ADC102: MemLdI2 global_86
  loc_ADC105: CI4UI1
  loc_ADC106: FLdPr Me
  loc_ADC109: MemLdI2 global_84
  loc_ADC10C: CI4UI1
  loc_ADC10D: FLdPr Me
  loc_ADC110: MemLdStr global_80
  loc_ADC113: Ary1LdPr
  loc_ADC114: MemLdStr global_8
  loc_ADC117: Ary1LdPr
  loc_ADC118: MemLdStr global_8
  loc_ADC11B: Ary1LdPr
  loc_ADC11C: MemLdStr global_8
  loc_ADC11F: LitI2_Byte 1
  loc_ADC121: FnUBound
  loc_ADC123: CI2I4
  loc_ADC124: ForI2 var_E0
  loc_ADC12A: FLdPr Me
  loc_ADC12D: MemLdI2 global_90
  loc_ADC130: LitI2_Byte 1
  loc_ADC132: GtI2
  loc_ADC133: BranchF loc_ADC14A
  loc_ADC136: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADC13B: PopAdLdVar
  loc_ADC13C: FLdPr Me
  loc_ADC13F: MemLdRfVar from_stack_1.htmFile
  loc_ADC142: LdPrVar
  loc_ADC144: LateMemCall
  loc_ADC14A: LitStr "<td rowspan="""
  loc_ADC14D: FLdPr Me
  loc_ADC150: MemLdI2 global_90
  loc_ADC153: CI4UI1
  loc_ADC154: FLdPr Me
  loc_ADC157: MemLdI2 global_88
  loc_ADC15A: CI4UI1
  loc_ADC15B: FLdPr Me
  loc_ADC15E: MemLdI2 global_86
  loc_ADC161: CI4UI1
  loc_ADC162: FLdPr Me
  loc_ADC165: MemLdI2 global_84
  loc_ADC168: CI4UI1
  loc_ADC169: FLdPr Me
  loc_ADC16C: MemLdStr global_80
  loc_ADC16F: Ary1LdPr
  loc_ADC170: MemLdStr global_8
  loc_ADC173: Ary1LdPr
  loc_ADC174: MemLdStr global_8
  loc_ADC177: Ary1LdPr
  loc_ADC178: MemLdStr global_8
  loc_ADC17B: Ary1LdPr
  loc_ADC17C: MemLdStr global_8
  loc_ADC17F: CStrI4
  loc_ADC181: FStStrNoPop var_B0
  loc_ADC184: ConcatStr
  loc_ADC185: FStStrNoPop var_B4
  loc_ADC188: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_ADC18B: ConcatStr
  loc_ADC18C: FStStrNoPop var_B8
  loc_ADC18F: FLdPr Me
  loc_ADC192: MemLdI2 global_90
  loc_ADC195: CI4UI1
  loc_ADC196: FLdPr Me
  loc_ADC199: MemLdI2 global_88
  loc_ADC19C: CI4UI1
  loc_ADC19D: FLdPr Me
  loc_ADC1A0: MemLdI2 global_86
  loc_ADC1A3: CI4UI1
  loc_ADC1A4: FLdPr Me
  loc_ADC1A7: MemLdI2 global_84
  loc_ADC1AA: CI4UI1
  loc_ADC1AB: FLdPr Me
  loc_ADC1AE: MemLdStr global_80
  loc_ADC1B1: Ary1LdPr
  loc_ADC1B2: MemLdStr global_8
  loc_ADC1B5: Ary1LdPr
  loc_ADC1B6: MemLdStr global_8
  loc_ADC1B9: Ary1LdPr
  loc_ADC1BA: MemLdStr global_8
  loc_ADC1BD: Ary1LdPr
  loc_ADC1BE: MemLdStr global_0
  loc_ADC1C1: ConcatStr
  loc_ADC1C2: FStStrNoPop var_BC
  loc_ADC1C5: LitStr "</td>"
  loc_ADC1C8: ConcatStr
  loc_ADC1C9: CVarStr var_D4
  loc_ADC1CC: PopAdLdVar
  loc_ADC1CD: FLdPr Me
  loc_ADC1D0: MemLdRfVar from_stack_1.htmFile
  loc_ADC1D3: LdPrVar
  loc_ADC1D5: LateMemCall
  loc_ADC1DB: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ADC1E6: FFree1Var var_D4 = ""
  loc_ADC1E9: LitI2_Byte 1
  loc_ADC1EB: FLdPr Me
  loc_ADC1EE: MemLdRfVar from_stack_1.global_92
  loc_ADC1F1: FLdPr Me
  loc_ADC1F4: MemLdI2 global_90
  loc_ADC1F7: CI4UI1
  loc_ADC1F8: FLdPr Me
  loc_ADC1FB: MemLdI2 global_88
  loc_ADC1FE: CI4UI1
  loc_ADC1FF: FLdPr Me
  loc_ADC202: MemLdI2 global_86
  loc_ADC205: CI4UI1
  loc_ADC206: FLdPr Me
  loc_ADC209: MemLdI2 global_84
  loc_ADC20C: CI4UI1
  loc_ADC20D: FLdPr Me
  loc_ADC210: MemLdStr global_80
  loc_ADC213: Ary1LdPr
  loc_ADC214: MemLdStr global_8
  loc_ADC217: Ary1LdPr
  loc_ADC218: MemLdStr global_8
  loc_ADC21B: Ary1LdPr
  loc_ADC21C: MemLdStr global_8
  loc_ADC21F: Ary1LdPr
  loc_ADC220: MemLdStr global_4
  loc_ADC223: LitI2_Byte 1
  loc_ADC225: FnUBound
  loc_ADC227: CI2I4
  loc_ADC228: ForI2 var_E4
  loc_ADC22E: FLdPr Me
  loc_ADC231: MemLdI2 global_92
  loc_ADC234: LitI2_Byte 1
  loc_ADC236: GtI2
  loc_ADC237: BranchF loc_ADC24E
  loc_ADC23A: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADC23F: PopAdLdVar
  loc_ADC240: FLdPr Me
  loc_ADC243: MemLdRfVar from_stack_1.htmFile
  loc_ADC246: LdPrVar
  loc_ADC248: LateMemCall
  loc_ADC24E: FLdPr Me
  loc_ADC251: MemLdI2 global_92
  loc_ADC254: CI4UI1
  loc_ADC255: FLdPr Me
  loc_ADC258: MemLdI2 global_90
  loc_ADC25B: CI4UI1
  loc_ADC25C: FLdPr Me
  loc_ADC25F: MemLdI2 global_88
  loc_ADC262: CI4UI1
  loc_ADC263: FLdPr Me
  loc_ADC266: MemLdI2 global_86
  loc_ADC269: CI4UI1
  loc_ADC26A: FLdPr Me
  loc_ADC26D: MemLdI2 global_84
  loc_ADC270: CI4UI1
  loc_ADC271: FLdPr Me
  loc_ADC274: MemLdStr global_80
  loc_ADC277: AryLock
  loc_ADC27A: Ary1LdPr
  loc_ADC27B: MemLdStr global_8
  loc_ADC27E: AryLock
  loc_ADC281: Ary1LdPr
  loc_ADC282: MemLdStr global_8
  loc_ADC285: AryLock
  loc_ADC288: Ary1LdPr
  loc_ADC289: MemLdStr global_8
  loc_ADC28C: AryLock
  loc_ADC28F: Ary1LdPr
  loc_ADC290: MemLdStr global_4
  loc_ADC293: AryLock
  loc_ADC296: Ary1LdRf
  loc_ADC297: FStR4 var_FC
  loc_ADC29A: LitI4 0
  loc_ADC29F: LitI4 0
  loc_ADC2A4: LitI2_Byte 0
  loc_ADC2A6: LitStr "left"
  loc_ADC2A9: FMemLdR4 var_FC(0)
  loc_ADC2AE: LitStr " - "
  loc_ADC2B1: ConcatStr
  loc_ADC2B2: FStStrNoPop var_B0
  loc_ADC2B5: FMemLdR4 var_FC(4)
  loc_ADC2BA: ConcatStr
  loc_ADC2BB: FStStrNoPop var_B4
  loc_ADC2BE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC2C3: CVarStr var_D4
  loc_ADC2C6: PopAdLdVar
  loc_ADC2C7: FLdPr Me
  loc_ADC2CA: MemLdRfVar from_stack_1.htmFile
  loc_ADC2CD: LdPrVar
  loc_ADC2CF: LateMemCall
  loc_ADC2D5: FFreeStr var_B0 = ""
  loc_ADC2DC: FFree1Var var_D4 = ""
  loc_ADC2DF: LitI4 0
  loc_ADC2E4: LitI4 0
  loc_ADC2E9: LitI2_Byte 0
  loc_ADC2EB: LitStr "right"
  loc_ADC2EE: FMemLdR4 var_FC(8)
  loc_ADC2F3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADC2F8: CVarStr var_D4
  loc_ADC2FB: PopAdLdVar
  loc_ADC2FC: FLdPr Me
  loc_ADC2FF: MemLdRfVar from_stack_1.htmFile
  loc_ADC302: LdPrVar
  loc_ADC304: LateMemCall
  loc_ADC30A: FFree1Var var_D4 = ""
  loc_ADC30D: LitI4 0
  loc_ADC312: FStR4 var_FC
  loc_ADC315: AryUnlock
  loc_ADC318: AryUnlock
  loc_ADC31B: AryUnlock
  loc_ADC31E: AryUnlock
  loc_ADC321: AryUnlock
  loc_ADC324: LitVarStr var_9C, "     </tr>"
  loc_ADC329: PopAdLdVar
  loc_ADC32A: FLdPr Me
  loc_ADC32D: MemLdRfVar from_stack_1.htmFile
  loc_ADC330: LdPrVar
  loc_ADC332: LateMemCall
  loc_ADC338: FLdPr Me
  loc_ADC33B: MemLdRfVar from_stack_1.global_92
  loc_ADC33E: NextI2 var_E4, loc_ADC22E
  loc_ADC343: FLdPr Me
  loc_ADC346: MemLdRfVar from_stack_1.global_90
  loc_ADC349: NextI2 var_E0, loc_ADC12A
  loc_ADC34E: FLdPr Me
  loc_ADC351: MemLdRfVar from_stack_1.global_88
  loc_ADC354: NextI2 var_DC, loc_ADC011
  loc_ADC359: FLdPr Me
  loc_ADC35C: MemLdRfVar from_stack_1.global_86
  loc_ADC35F: NextI2 var_D8, loc_ADBF24
  loc_ADC364: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADC369: PopAdLdVar
  loc_ADC36A: FLdPr Me
  loc_ADC36D: MemLdRfVar from_stack_1.htmFile
  loc_ADC370: LdPrVar
  loc_ADC372: LateMemCall
  loc_ADC378: LitStr "    <th colspan=""4"" align=""right"" class=""LineaDato"">Subtotal ("
  loc_ADC37B: FLdPr Me
  loc_ADC37E: MemLdI2 global_84
  loc_ADC381: CI4UI1
  loc_ADC382: FLdPr Me
  loc_ADC385: MemLdStr global_80
  loc_ADC388: Ary1LdPr
  loc_ADC389: MemLdStr global_0
  loc_ADC38C: ConcatStr
  loc_ADC38D: FStStrNoPop var_B0
  loc_ADC390: LitStr ")</th>"
  loc_ADC393: ConcatStr
  loc_ADC394: CVarStr var_D4
  loc_ADC397: PopAdLdVar
  loc_ADC398: FLdPr Me
  loc_ADC39B: MemLdRfVar from_stack_1.htmFile
  loc_ADC39E: LdPrVar
  loc_ADC3A0: LateMemCall
  loc_ADC3A6: FFree1Str var_B0
  loc_ADC3A9: FFree1Var var_D4 = ""
  loc_ADC3AC: LitStr "    <th align=""right"" class=""Totales"">"
  loc_ADC3AF: FLdPr Me
  loc_ADC3B2: MemLdI2 global_84
  loc_ADC3B5: CI4UI1
  loc_ADC3B6: FLdPr Me
  loc_ADC3B9: MemLdStr global_80
  loc_ADC3BC: Ary1LdPr
  loc_ADC3BD: MemLdStr global_20
  loc_ADC3C0: ConcatStr
  loc_ADC3C1: FStStrNoPop var_B0
  loc_ADC3C4: LitStr "</th>"
  loc_ADC3C7: ConcatStr
  loc_ADC3C8: CVarStr var_D4
  loc_ADC3CB: PopAdLdVar
  loc_ADC3CC: FLdPr Me
  loc_ADC3CF: MemLdRfVar from_stack_1.htmFile
  loc_ADC3D2: LdPrVar
  loc_ADC3D4: LateMemCall
  loc_ADC3DA: FFree1Str var_B0
  loc_ADC3DD: FFree1Var var_D4 = ""
  loc_ADC3E0: LitVarStr var_9C, "  </tr>"
  loc_ADC3E5: PopAdLdVar
  loc_ADC3E6: FLdPr Me
  loc_ADC3E9: MemLdRfVar from_stack_1.htmFile
  loc_ADC3EC: LdPrVar
  loc_ADC3EE: LateMemCall
  loc_ADC3F4: FLdPr Me
  loc_ADC3F7: MemLdRfVar from_stack_1.global_84
  loc_ADC3FA: NextI2 var_8C, loc_ADBE6F
  loc_ADC3FF: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADC404: PopAdLdVar
  loc_ADC405: FLdPr Me
  loc_ADC408: MemLdRfVar from_stack_1.htmFile
  loc_ADC40B: LdPrVar
  loc_ADC40D: LateMemCall
  loc_ADC413: LitVarStr var_9C, "    <th colspan=""6"" class=""Encabezado"">&nbsp;</th>"
  loc_ADC418: PopAdLdVar
  loc_ADC419: FLdPr Me
  loc_ADC41C: MemLdRfVar from_stack_1.htmFile
  loc_ADC41F: LdPrVar
  loc_ADC421: LateMemCall
  loc_ADC427: LitVarStr var_9C, "  </tr>"
  loc_ADC42C: PopAdLdVar
  loc_ADC42D: FLdPr Me
  loc_ADC430: MemLdRfVar from_stack_1.htmFile
  loc_ADC433: LdPrVar
  loc_ADC435: LateMemCall
  loc_ADC43B: LitVarStr var_9C, "  <tr class=""LineaDato"">"
  loc_ADC440: PopAdLdVar
  loc_ADC441: FLdPr Me
  loc_ADC444: MemLdRfVar from_stack_1.htmFile
  loc_ADC447: LdPrVar
  loc_ADC449: LateMemCall
  loc_ADC44F: LitVarStr var_9C, "    <th colspan=""5"" align=""right"" class=""LineaDato"">TOTAL:</th>"
  loc_ADC454: PopAdLdVar
  loc_ADC455: FLdPr Me
  loc_ADC458: MemLdRfVar from_stack_1.htmFile
  loc_ADC45B: LdPrVar
  loc_ADC45D: LateMemCall
  loc_ADC463: LitStr "    <th align=""right"" class=""Totales"">"
  loc_ADC466: FLdPr Me
  loc_ADC469: MemLdStr global_96
  loc_ADC46C: ConcatStr
  loc_ADC46D: FStStrNoPop var_B0
  loc_ADC470: LitStr "</th>"
  loc_ADC473: ConcatStr
  loc_ADC474: CVarStr var_D4
  loc_ADC477: PopAdLdVar
  loc_ADC478: FLdPr Me
  loc_ADC47B: MemLdRfVar from_stack_1.htmFile
  loc_ADC47E: LdPrVar
  loc_ADC480: LateMemCall
  loc_ADC486: FFree1Str var_B0
  loc_ADC489: FFree1Var var_D4 = ""
  loc_ADC48C: LitVarStr var_9C, "  </tr>"
  loc_ADC491: PopAdLdVar
  loc_ADC492: FLdPr Me
  loc_ADC495: MemLdRfVar from_stack_1.htmFile
  loc_ADC498: LdPrVar
  loc_ADC49A: LateMemCall
  loc_ADC4A0: Call Proc_223_39_982690()
  loc_ADC4A5: FLdPr Me
  loc_ADC4A8: MemLdRfVar from_stack_1.htmFile
  loc_ADC4AB: LdPrVar
  loc_ADC4AD: LateMemCall
  loc_ADC4B3: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ADC4B8: ExitProcHresult
End Sub

Public Sub GeneraXLS() '96CF4C
  'Data Table: 4B409C
  loc_96CF24: LitI2_Byte &HFF
  loc_96CF26: FLdPr Me
  loc_96CF29: MemStI2 global_104
  loc_96CF2C: LitI2_Byte 0
  loc_96CF2E: FLdPr Me
  loc_96CF31: MemStI2 bLogos
  loc_96CF34: Call GeneraHTML()
  loc_96CF39: LitI2_Byte &HFF
  loc_96CF3B: FLdPr Me
  loc_96CF3E: MemStI2 bLogos
  loc_96CF41: LitI2_Byte 0
  loc_96CF43: FLdPr Me
  loc_96CF46: MemStI2 global_104
  loc_96CF49: ExitProcHresult
End Sub

Private Function Proc_223_33_9E0704() '9E0704
  'Data Table: 4B409C
  loc_9E05FC: FLdPr Me
  loc_9E05FF: MemLdI2 global_84
  loc_9E0602: LitI2_Byte 1
  loc_9E0604: AddI2
  loc_9E0605: FLdPr Me
  loc_9E0608: MemStI2 global_84
  loc_9E060B: LitI2_Byte 0
  loc_9E060D: FLdPr Me
  loc_9E0610: MemStI2 global_86
  loc_9E0613: LitI4 0
  loc_9E0618: FLdPr Me
  loc_9E061B: MemLdI2 global_84
  loc_9E061E: CI4UI1
  loc_9E061F: FLdPr Me
  loc_9E0622: MemLdRfVar from_stack_1.global_80
  loc_9E0625: RedimPreserve
  loc_9E062F: FLdRfVar var_A0
  loc_9E0632: LitVarStr var_9C, "CodiPart"
  loc_9E0637: PopAdLdVar
  loc_9E0638: FLdRfVar var_8C
  loc_9E063B: FLdRfVar var_88
  loc_9E063E: FLdPr Me
  loc_9E0641: MemLdRfVar from_stack_1.global_72
  loc_9E0644: NewIfNullPr clsimputacion
  loc_9E0647: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E064C: FLdPr var_88
  loc_9E064F:  = Me.Fields
  loc_9E0654: FLdPr var_8C
  loc_9E0657: from_stack_2 = Me.Item(from_stack_1)
  loc_9E065C: LitI2_Byte 0
  loc_9E065E: LitVar_Missing var_D4
  loc_9E0661: LitI2_Byte 0
  loc_9E0663: FLdZeroAd var_A0
  loc_9E0666: CVarAd
  loc_9E066A: PopAdLdVar
  loc_9E066B: FLdPr Me
  loc_9E066E: MemLdI2 global_84
  loc_9E0671: CI4UI1
  loc_9E0672: FLdPr Me
  loc_9E0675: MemLdStr global_80
  loc_9E0678: AryLock
  loc_9E067B: Ary1LdPr
  loc_9E067C: MemLdRfVar from_stack_1.global_0
  loc_9E067F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E0684: AryUnlock
  loc_9E0687: FFreeAd var_88 = ""
  loc_9E068E: FFreeVar var_B4 = ""
  loc_9E0695: FLdRfVar var_A0
  loc_9E0698: LitVarStr var_9C, "DetaPart"
  loc_9E069D: PopAdLdVar
  loc_9E069E: FLdRfVar var_8C
  loc_9E06A1: FLdRfVar var_88
  loc_9E06A4: FLdPr Me
  loc_9E06A7: MemLdRfVar from_stack_1.global_72
  loc_9E06AA: NewIfNullPr clsimputacion
  loc_9E06AD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E06B2: FLdPr var_88
  loc_9E06B5:  = Me.Fields
  loc_9E06BA: FLdPr var_8C
  loc_9E06BD: from_stack_2 = Me.Item(from_stack_1)
  loc_9E06C2: LitI2_Byte 0
  loc_9E06C4: LitVar_Missing var_D4
  loc_9E06C7: LitI2_Byte 0
  loc_9E06C9: FLdZeroAd var_A0
  loc_9E06CC: CVarAd
  loc_9E06D0: PopAdLdVar
  loc_9E06D1: FLdPr Me
  loc_9E06D4: MemLdI2 global_84
  loc_9E06D7: CI4UI1
  loc_9E06D8: FLdPr Me
  loc_9E06DB: MemLdStr global_80
  loc_9E06DE: AryLock
  loc_9E06E1: Ary1LdPr
  loc_9E06E2: MemLdRfVar from_stack_1.global_4
  loc_9E06E5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E06EA: AryUnlock
  loc_9E06ED: FFreeAd var_88 = ""
  loc_9E06F4: FFreeVar var_B4 = ""
  loc_9E06FB: Call Proc_223_34_9F48CC()
  loc_9E0700: ExitProcHresult
End Function

Private Function Proc_223_34_9F48CC() '9F48CC
  'Data Table: 4B409C
  loc_9F4798: FLdPr Me
  loc_9F479B: MemLdI2 global_86
  loc_9F479E: LitI2_Byte 1
  loc_9F47A0: AddI2
  loc_9F47A1: FLdPr Me
  loc_9F47A4: MemStI2 global_86
  loc_9F47A7: LitI2_Byte 0
  loc_9F47A9: FLdPr Me
  loc_9F47AC: MemStI2 global_88
  loc_9F47AF: LitI4 0
  loc_9F47B4: FLdPr Me
  loc_9F47B7: MemLdI2 global_86
  loc_9F47BA: CI4UI1
  loc_9F47BB: FLdPr Me
  loc_9F47BE: MemLdI2 global_84
  loc_9F47C1: CI4UI1
  loc_9F47C2: FLdPr Me
  loc_9F47C5: MemLdStr global_80
  loc_9F47C8: Ary1LdPr
  loc_9F47C9: MemLdRfVar from_stack_1.global_8
  loc_9F47CC: RedimPreserve
  loc_9F47D6: FLdRfVar var_A0
  loc_9F47D9: LitVarStr var_9C, "CodiOrga"
  loc_9F47DE: PopAdLdVar
  loc_9F47DF: FLdRfVar var_8C
  loc_9F47E2: FLdRfVar var_88
  loc_9F47E5: FLdPr Me
  loc_9F47E8: MemLdRfVar from_stack_1.global_72
  loc_9F47EB: NewIfNullPr clsimputacion
  loc_9F47EE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9F47F3: FLdPr var_88
  loc_9F47F6:  = Me.Fields
  loc_9F47FB: FLdPr var_8C
  loc_9F47FE: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4803: LitI2_Byte 0
  loc_9F4805: LitVar_Missing var_D8
  loc_9F4808: LitI2_Byte 0
  loc_9F480A: FLdZeroAd var_A0
  loc_9F480D: CVarAd
  loc_9F4811: PopAdLdVar
  loc_9F4812: FLdPr Me
  loc_9F4815: MemLdI2 global_86
  loc_9F4818: CI4UI1
  loc_9F4819: FLdPr Me
  loc_9F481C: MemLdI2 global_84
  loc_9F481F: CI4UI1
  loc_9F4820: FLdPr Me
  loc_9F4823: MemLdStr global_80
  loc_9F4826: AryLock
  loc_9F4829: Ary1LdPr
  loc_9F482A: MemLdStr global_8
  loc_9F482D: AryLock
  loc_9F4830: Ary1LdPr
  loc_9F4831: MemLdRfVar from_stack_1.global_0
  loc_9F4834: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F4839: AryUnlock
  loc_9F483C: AryUnlock
  loc_9F483F: FFreeAd var_88 = ""
  loc_9F4846: FFreeVar var_B8 = ""
  loc_9F484D: FLdRfVar var_A0
  loc_9F4850: LitVarStr var_9C, "DetaOrga"
  loc_9F4855: PopAdLdVar
  loc_9F4856: FLdRfVar var_8C
  loc_9F4859: FLdRfVar var_88
  loc_9F485C: FLdPr Me
  loc_9F485F: MemLdRfVar from_stack_1.global_72
  loc_9F4862: NewIfNullPr clsimputacion
  loc_9F4865: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9F486A: FLdPr var_88
  loc_9F486D:  = Me.Fields
  loc_9F4872: FLdPr var_8C
  loc_9F4875: from_stack_2 = Me.Item(from_stack_1)
  loc_9F487A: LitI2_Byte 0
  loc_9F487C: LitVar_Missing var_D8
  loc_9F487F: LitI2_Byte 0
  loc_9F4881: FLdZeroAd var_A0
  loc_9F4884: CVarAd
  loc_9F4888: PopAdLdVar
  loc_9F4889: FLdPr Me
  loc_9F488C: MemLdI2 global_86
  loc_9F488F: CI4UI1
  loc_9F4890: FLdPr Me
  loc_9F4893: MemLdI2 global_84
  loc_9F4896: CI4UI1
  loc_9F4897: FLdPr Me
  loc_9F489A: MemLdStr global_80
  loc_9F489D: AryLock
  loc_9F48A0: Ary1LdPr
  loc_9F48A1: MemLdStr global_8
  loc_9F48A4: AryLock
  loc_9F48A7: Ary1LdPr
  loc_9F48A8: MemLdRfVar from_stack_1.global_4
  loc_9F48AB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F48B0: AryUnlock
  loc_9F48B3: AryUnlock
  loc_9F48B6: FFreeAd var_88 = ""
  loc_9F48BD: FFreeVar var_B8 = ""
  loc_9F48C4: Call Proc_223_35_A0CEBC()
  loc_9F48C9: ExitProcHresult
End Function

Private Function Proc_223_35_A0CEBC() 'A0CEBC
  'Data Table: 4B409C
  loc_A0CD5C: FLdPr Me
  loc_A0CD5F: MemLdI2 global_88
  loc_A0CD62: LitI2_Byte 1
  loc_A0CD64: AddI2
  loc_A0CD65: FLdPr Me
  loc_A0CD68: MemStI2 global_88
  loc_A0CD6B: LitI2_Byte 0
  loc_A0CD6D: FLdPr Me
  loc_A0CD70: MemStI2 global_90
  loc_A0CD73: LitI4 0
  loc_A0CD78: FLdPr Me
  loc_A0CD7B: MemLdI2 global_88
  loc_A0CD7E: CI4UI1
  loc_A0CD7F: FLdPr Me
  loc_A0CD82: MemLdI2 global_86
  loc_A0CD85: CI4UI1
  loc_A0CD86: FLdPr Me
  loc_A0CD89: MemLdI2 global_84
  loc_A0CD8C: CI4UI1
  loc_A0CD8D: FLdPr Me
  loc_A0CD90: MemLdStr global_80
  loc_A0CD93: Ary1LdPr
  loc_A0CD94: MemLdStr global_8
  loc_A0CD97: Ary1LdPr
  loc_A0CD98: MemLdRfVar from_stack_1.global_8
  loc_A0CD9B: RedimPreserve
  loc_A0CDA5: FLdRfVar var_A0
  loc_A0CDA8: LitVarStr var_9C, "CodiFifu"
  loc_A0CDAD: PopAdLdVar
  loc_A0CDAE: FLdRfVar var_8C
  loc_A0CDB1: FLdRfVar var_88
  loc_A0CDB4: FLdPr Me
  loc_A0CDB7: MemLdRfVar from_stack_1.global_72
  loc_A0CDBA: NewIfNullPr clsimputacion
  loc_A0CDBD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A0CDC2: FLdPr var_88
  loc_A0CDC5:  = Me.Fields
  loc_A0CDCA: FLdPr var_8C
  loc_A0CDCD: from_stack_2 = Me.Item(from_stack_1)
  loc_A0CDD2: LitI2_Byte 0
  loc_A0CDD4: LitVar_Missing var_DC
  loc_A0CDD7: LitI2_Byte 0
  loc_A0CDD9: FLdZeroAd var_A0
  loc_A0CDDC: CVarAd
  loc_A0CDE0: PopAdLdVar
  loc_A0CDE1: FLdPr Me
  loc_A0CDE4: MemLdI2 global_88
  loc_A0CDE7: CI4UI1
  loc_A0CDE8: FLdPr Me
  loc_A0CDEB: MemLdI2 global_86
  loc_A0CDEE: CI4UI1
  loc_A0CDEF: FLdPr Me
  loc_A0CDF2: MemLdI2 global_84
  loc_A0CDF5: CI4UI1
  loc_A0CDF6: FLdPr Me
  loc_A0CDF9: MemLdStr global_80
  loc_A0CDFC: AryLock
  loc_A0CDFF: Ary1LdPr
  loc_A0CE00: MemLdStr global_8
  loc_A0CE03: AryLock
  loc_A0CE06: Ary1LdPr
  loc_A0CE07: MemLdStr global_8
  loc_A0CE0A: AryLock
  loc_A0CE0D: Ary1LdPr
  loc_A0CE0E: MemLdRfVar from_stack_1.global_0
  loc_A0CE11: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0CE16: AryUnlock
  loc_A0CE19: AryUnlock
  loc_A0CE1C: AryUnlock
  loc_A0CE1F: FFreeAd var_88 = ""
  loc_A0CE26: FFreeVar var_BC = ""
  loc_A0CE2D: FLdRfVar var_A0
  loc_A0CE30: LitVarStr var_9C, "DetaFifu"
  loc_A0CE35: PopAdLdVar
  loc_A0CE36: FLdRfVar var_8C
  loc_A0CE39: FLdRfVar var_88
  loc_A0CE3C: FLdPr Me
  loc_A0CE3F: MemLdRfVar from_stack_1.global_72
  loc_A0CE42: NewIfNullPr clsimputacion
  loc_A0CE45: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A0CE4A: FLdPr var_88
  loc_A0CE4D:  = Me.Fields
  loc_A0CE52: FLdPr var_8C
  loc_A0CE55: from_stack_2 = Me.Item(from_stack_1)
  loc_A0CE5A: LitI2_Byte 0
  loc_A0CE5C: LitVar_Missing var_DC
  loc_A0CE5F: LitI2_Byte 0
  loc_A0CE61: FLdZeroAd var_A0
  loc_A0CE64: CVarAd
  loc_A0CE68: PopAdLdVar
  loc_A0CE69: FLdPr Me
  loc_A0CE6C: MemLdI2 global_88
  loc_A0CE6F: CI4UI1
  loc_A0CE70: FLdPr Me
  loc_A0CE73: MemLdI2 global_86
  loc_A0CE76: CI4UI1
  loc_A0CE77: FLdPr Me
  loc_A0CE7A: MemLdI2 global_84
  loc_A0CE7D: CI4UI1
  loc_A0CE7E: FLdPr Me
  loc_A0CE81: MemLdStr global_80
  loc_A0CE84: AryLock
  loc_A0CE87: Ary1LdPr
  loc_A0CE88: MemLdStr global_8
  loc_A0CE8B: AryLock
  loc_A0CE8E: Ary1LdPr
  loc_A0CE8F: MemLdStr global_8
  loc_A0CE92: AryLock
  loc_A0CE95: Ary1LdPr
  loc_A0CE96: MemLdRfVar from_stack_1.global_4
  loc_A0CE99: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0CE9E: AryUnlock
  loc_A0CEA1: AryUnlock
  loc_A0CEA4: AryUnlock
  loc_A0CEA7: FFreeAd var_88 = ""
  loc_A0CEAE: FFreeVar var_BC = ""
  loc_A0CEB5: Call Proc_223_36_9DCCB0()
  loc_A0CEBA: ExitProcHresult
End Function

Private Function Proc_223_36_9DCCB0() '9DCCB0
  'Data Table: 4B409C
  loc_9DCBBC: FLdPr Me
  loc_9DCBBF: MemLdI2 global_90
  loc_9DCBC2: LitI2_Byte 1
  loc_9DCBC4: AddI2
  loc_9DCBC5: FLdPr Me
  loc_9DCBC8: MemStI2 global_90
  loc_9DCBCB: LitI2_Byte 0
  loc_9DCBCD: FLdPr Me
  loc_9DCBD0: MemStI2 global_92
  loc_9DCBD3: LitI4 0
  loc_9DCBD8: FLdPr Me
  loc_9DCBDB: MemLdI2 global_90
  loc_9DCBDE: CI4UI1
  loc_9DCBDF: FLdPr Me
  loc_9DCBE2: MemLdI2 global_88
  loc_9DCBE5: CI4UI1
  loc_9DCBE6: FLdPr Me
  loc_9DCBE9: MemLdI2 global_86
  loc_9DCBEC: CI4UI1
  loc_9DCBED: FLdPr Me
  loc_9DCBF0: MemLdI2 global_84
  loc_9DCBF3: CI4UI1
  loc_9DCBF4: FLdPr Me
  loc_9DCBF7: MemLdStr global_80
  loc_9DCBFA: Ary1LdPr
  loc_9DCBFB: MemLdStr global_8
  loc_9DCBFE: Ary1LdPr
  loc_9DCBFF: MemLdStr global_8
  loc_9DCC02: Ary1LdPr
  loc_9DCC03: MemLdRfVar from_stack_1.global_8
  loc_9DCC06: RedimPreserve
  loc_9DCC10: FLdRfVar var_A0
  loc_9DCC13: LitVarStr var_9C, "ExpeImpu"
  loc_9DCC18: PopAdLdVar
  loc_9DCC19: FLdRfVar var_8C
  loc_9DCC1C: FLdRfVar var_88
  loc_9DCC1F: FLdPr Me
  loc_9DCC22: MemLdRfVar from_stack_1.global_72
  loc_9DCC25: NewIfNullPr clsimputacion
  loc_9DCC28: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9DCC2D: FLdPr var_88
  loc_9DCC30:  = Me.Fields
  loc_9DCC35: FLdPr var_8C
  loc_9DCC38: from_stack_2 = Me.Item(from_stack_1)
  loc_9DCC3D: LitI2_Byte 0
  loc_9DCC3F: LitVar_Missing var_E0
  loc_9DCC42: LitI2_Byte 0
  loc_9DCC44: FLdZeroAd var_A0
  loc_9DCC47: CVarAd
  loc_9DCC4B: PopAdLdVar
  loc_9DCC4C: FLdPr Me
  loc_9DCC4F: MemLdI2 global_90
  loc_9DCC52: CI4UI1
  loc_9DCC53: FLdPr Me
  loc_9DCC56: MemLdI2 global_88
  loc_9DCC59: CI4UI1
  loc_9DCC5A: FLdPr Me
  loc_9DCC5D: MemLdI2 global_86
  loc_9DCC60: CI4UI1
  loc_9DCC61: FLdPr Me
  loc_9DCC64: MemLdI2 global_84
  loc_9DCC67: CI4UI1
  loc_9DCC68: FLdPr Me
  loc_9DCC6B: MemLdStr global_80
  loc_9DCC6E: AryLock
  loc_9DCC71: Ary1LdPr
  loc_9DCC72: MemLdStr global_8
  loc_9DCC75: AryLock
  loc_9DCC78: Ary1LdPr
  loc_9DCC79: MemLdStr global_8
  loc_9DCC7C: AryLock
  loc_9DCC7F: Ary1LdPr
  loc_9DCC80: MemLdStr global_8
  loc_9DCC83: AryLock
  loc_9DCC86: Ary1LdPr
  loc_9DCC87: MemLdRfVar from_stack_1.global_0
  loc_9DCC8A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9DCC8F: AryUnlock
  loc_9DCC92: AryUnlock
  loc_9DCC95: AryUnlock
  loc_9DCC98: AryUnlock
  loc_9DCC9B: FFreeAd var_88 = ""
  loc_9DCCA2: FFreeVar var_C0 = ""
  loc_9DCCA9: Call Proc_223_37_A2F330()
  loc_9DCCAE: ExitProcHresult
End Function

Private Function Proc_223_37_A2F330() 'A2F330
  'Data Table: 4B409C
  loc_A2F154: FLdPr Me
  loc_A2F157: MemLdI2 global_92
  loc_A2F15A: LitI2_Byte 1
  loc_A2F15C: AddI2
  loc_A2F15D: FLdPr Me
  loc_A2F160: MemStI2 global_92
  loc_A2F163: LitI4 0
  loc_A2F168: FLdPr Me
  loc_A2F16B: MemLdI2 global_92
  loc_A2F16E: CI4UI1
  loc_A2F16F: FLdPr Me
  loc_A2F172: MemLdI2 global_90
  loc_A2F175: CI4UI1
  loc_A2F176: FLdPr Me
  loc_A2F179: MemLdI2 global_88
  loc_A2F17C: CI4UI1
  loc_A2F17D: FLdPr Me
  loc_A2F180: MemLdI2 global_86
  loc_A2F183: CI4UI1
  loc_A2F184: FLdPr Me
  loc_A2F187: MemLdI2 global_84
  loc_A2F18A: CI4UI1
  loc_A2F18B: FLdPr Me
  loc_A2F18E: MemLdStr global_80
  loc_A2F191: Ary1LdPr
  loc_A2F192: MemLdStr global_8
  loc_A2F195: Ary1LdPr
  loc_A2F196: MemLdStr global_8
  loc_A2F199: Ary1LdPr
  loc_A2F19A: MemLdStr global_8
  loc_A2F19D: Ary1LdPr
  loc_A2F19E: MemLdRfVar from_stack_1.global_4
  loc_A2F1A1: RedimPreserve
  loc_A2F1AB: FLdPr Me
  loc_A2F1AE: MemLdI2 global_92
  loc_A2F1B1: CI4UI1
  loc_A2F1B2: FLdPr Me
  loc_A2F1B5: MemLdI2 global_90
  loc_A2F1B8: CI4UI1
  loc_A2F1B9: FLdPr Me
  loc_A2F1BC: MemLdI2 global_88
  loc_A2F1BF: CI4UI1
  loc_A2F1C0: FLdPr Me
  loc_A2F1C3: MemLdI2 global_86
  loc_A2F1C6: CI4UI1
  loc_A2F1C7: FLdPr Me
  loc_A2F1CA: MemLdI2 global_84
  loc_A2F1CD: CI4UI1
  loc_A2F1CE: FLdPr Me
  loc_A2F1D1: MemLdStr global_80
  loc_A2F1D4: AryLock
  loc_A2F1D7: Ary1LdPr
  loc_A2F1D8: MemLdStr global_8
  loc_A2F1DB: AryLock
  loc_A2F1DE: Ary1LdPr
  loc_A2F1DF: MemLdStr global_8
  loc_A2F1E2: AryLock
  loc_A2F1E5: Ary1LdPr
  loc_A2F1E6: MemLdStr global_8
  loc_A2F1E9: AryLock
  loc_A2F1EC: Ary1LdPr
  loc_A2F1ED: MemLdStr global_4
  loc_A2F1F0: AryLock
  loc_A2F1F3: Ary1LdRf
  loc_A2F1F4: FStR4 var_9C
  loc_A2F1F7: FLdRfVar var_B8
  loc_A2F1FA: LitVarStr var_B4, "CucuPers"
  loc_A2F1FF: PopAdLdVar
  loc_A2F200: FLdRfVar var_A4
  loc_A2F203: FLdRfVar var_A0
  loc_A2F206: FLdPr Me
  loc_A2F209: MemLdRfVar from_stack_1.global_72
  loc_A2F20C: NewIfNullPr clsimputacion
  loc_A2F20F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A2F214: FLdPr var_A0
  loc_A2F217:  = Me.Fields
  loc_A2F21C: FLdPr var_A4
  loc_A2F21F: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F224: LitI2_Byte 0
  loc_A2F226: LitVar_Missing var_E8
  loc_A2F229: LitI2_Byte 0
  loc_A2F22B: FLdZeroAd var_B8
  loc_A2F22E: CVarAd
  loc_A2F232: PopAdLdVar
  loc_A2F233: FMemLdRf unk_4B4001
  loc_A2F238: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2F23D: FFreeAd var_A0 = ""
  loc_A2F244: FFreeVar var_C8 = ""
  loc_A2F24B: FLdRfVar var_B8
  loc_A2F24E: LitVarStr var_B4, "DetaProv"
  loc_A2F253: PopAdLdVar
  loc_A2F254: FLdRfVar var_A4
  loc_A2F257: FLdRfVar var_A0
  loc_A2F25A: FLdPr Me
  loc_A2F25D: MemLdRfVar from_stack_1.global_72
  loc_A2F260: NewIfNullPr clsimputacion
  loc_A2F263: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A2F268: FLdPr var_A0
  loc_A2F26B:  = Me.Fields
  loc_A2F270: FLdPr var_A4
  loc_A2F273: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F278: LitI2_Byte 0
  loc_A2F27A: LitVar_Missing var_E8
  loc_A2F27D: LitI2_Byte 0
  loc_A2F27F: FLdZeroAd var_B8
  loc_A2F282: CVarAd
  loc_A2F286: PopAdLdVar
  loc_A2F287: FMemLdRf unk_4B4001
  loc_A2F28C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2F291: FFreeAd var_A0 = ""
  loc_A2F298: FFreeVar var_C8 = ""
  loc_A2F29F: FLdRfVar var_B8
  loc_A2F2A2: LitVarStr var_B4, "SaldImpu"
  loc_A2F2A7: PopAdLdVar
  loc_A2F2A8: FLdRfVar var_A4
  loc_A2F2AB: FLdRfVar var_A0
  loc_A2F2AE: FLdPr Me
  loc_A2F2B1: MemLdRfVar from_stack_1.global_72
  loc_A2F2B4: NewIfNullPr clsimputacion
  loc_A2F2B7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A2F2BC: FLdPr var_A0
  loc_A2F2BF:  = Me.Fields
  loc_A2F2C4: FLdPr var_A4
  loc_A2F2C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F2CC: LitI2_Byte 0
  loc_A2F2CE: FLdPr Me
  loc_A2F2D1: MemLdI2 global_84
  loc_A2F2D4: CI4UI1
  loc_A2F2D5: FLdPr Me
  loc_A2F2D8: MemLdStr global_80
  loc_A2F2DB: AryLock
  loc_A2F2DE: Ary1LdPr
  loc_A2F2DF: MemLdRfVar from_stack_1.global_20
  loc_A2F2E2: CVarRef
  loc_A2F2E7: LitI2_Byte &HFF
  loc_A2F2E9: FLdZeroAd var_B8
  loc_A2F2EC: CVarAd
  loc_A2F2F0: PopAdLdVar
  loc_A2F2F1: FMemLdRf unk_4B4001
  loc_A2F2F6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2F2FB: AryUnlock
  loc_A2F2FE: FFreeAd var_A0 = ""
  loc_A2F305: FFree1Var var_C8 = ""
  loc_A2F308: LitI4 0
  loc_A2F30D: FStR4 var_9C
  loc_A2F310: AryUnlock
  loc_A2F313: AryUnlock
  loc_A2F316: AryUnlock
  loc_A2F319: AryUnlock
  loc_A2F31C: AryUnlock
  loc_A2F31F: FLdPr Me
  loc_A2F322: MemLdRfVar from_stack_1.global_72
  loc_A2F325: NewIfNullPr clsimputacion
  loc_A2F328: Call clsimputacion.MoveSiguiente()
  loc_A2F32D: ExitProcHresult
End Function

Private Function Proc_223_38_AA3870() 'AA3870
  'Data Table: 4B409C
  loc_AA3384: LitVarStr var_94, "<html>"
  loc_AA3389: PopAdLdVar
  loc_AA338A: FLdPr Me
  loc_AA338D: MemLdRfVar from_stack_1.htmFile
  loc_AA3390: LdPrVar
  loc_AA3392: LateMemCall
  loc_AA3398: LitVarStr var_94, "<head>"
  loc_AA339D: PopAdLdVar
  loc_AA339E: FLdPr Me
  loc_AA33A1: MemLdRfVar from_stack_1.htmFile
  loc_AA33A4: LdPrVar
  loc_AA33A6: LateMemCall
  loc_AA33AC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AA33B1: PopAdLdVar
  loc_AA33B2: FLdPr Me
  loc_AA33B5: MemLdRfVar from_stack_1.htmFile
  loc_AA33B8: LdPrVar
  loc_AA33BA: LateMemCall
  loc_AA33C0: LitStr "<title>"
  loc_AA33C3: FLdRfVar var_A8
  loc_AA33C6: FLdPr Me
  loc_AA33C9:  = Me.Caption
  loc_AA33CE: ILdRf var_A8
  loc_AA33D1: ConcatStr
  loc_AA33D2: FStStrNoPop var_AC
  loc_AA33D5: LitStr "</title>"
  loc_AA33D8: ConcatStr
  loc_AA33D9: CVarStr var_BC
  loc_AA33DC: PopAdLdVar
  loc_AA33DD: FLdPr Me
  loc_AA33E0: MemLdRfVar from_stack_1.htmFile
  loc_AA33E3: LdPrVar
  loc_AA33E5: LateMemCall
  loc_AA33EB: FFreeStr var_A8 = ""
  loc_AA33F2: FFree1Var var_BC = ""
  loc_AA33F5: LitStr vbNullString
  loc_AA33F8: ILdRf Me
  loc_AA33FB: CastAd
  loc_AA33FE: FStAdFunc var_C0
  loc_AA3401: FLdRfVar var_C0
  loc_AA3404: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AA3409: FFree1Ad var_C0
  loc_AA340C: LitI4 0
  loc_AA3411: FStStrCopy var_AC
  loc_AA3414: FLdRfVar var_AC
  loc_AA3417: LitI4 0
  loc_AA341C: FStStrCopy var_A8
  loc_AA341F: FLdRfVar var_A8
  loc_AA3422: LitI2_Byte &HFF
  loc_AA3424: PopTmpLdAd2 var_C2
  loc_AA3427: FLdPr Me
  loc_AA342A: MemLdRfVar from_stack_1.htmFile
  loc_AA342D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AA3432: FFreeStr var_A8 = ""
  loc_AA3439: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AA343E: PopAdLdVar
  loc_AA343F: FLdPr Me
  loc_AA3442: MemLdRfVar from_stack_1.htmFile
  loc_AA3445: LdPrVar
  loc_AA3447: LateMemCall
  loc_AA344D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA3452: PopAdLdVar
  loc_AA3453: FLdPr Me
  loc_AA3456: MemLdRfVar from_stack_1.htmFile
  loc_AA3459: LdPrVar
  loc_AA345B: LateMemCall
  loc_AA3461: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AA3466: PopAdLdVar
  loc_AA3467: FLdPr Me
  loc_AA346A: MemLdRfVar from_stack_1.htmFile
  loc_AA346D: LdPrVar
  loc_AA346F: LateMemCall
  loc_AA3475: FLdPr Me
  loc_AA3478: MemLdI2 bLogos
  loc_AA347B: BranchF loc_AA3492
  loc_AA347E: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AA3483: PopAdLdVar
  loc_AA3484: FLdPr Me
  loc_AA3487: MemLdRfVar from_stack_1.htmFile
  loc_AA348A: LdPrVar
  loc_AA348C: LateMemCall
  loc_AA3492: LitVarStr var_A4, "    <br><br>"
  loc_AA3497: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AA349C: FStVarCopyObj var_BC
  loc_AA349F: FLdRfVar var_BC
  loc_AA34A2: FLdRfVar var_D4
  loc_AA34A5: ImpAdCallFPR4  = Ucase()
  loc_AA34AA: FLdRfVar var_D4
  loc_AA34AD: ConcatVar var_E4
  loc_AA34B1: LitVarStr var_F4, "</p>"
  loc_AA34B6: ConcatVar var_104
  loc_AA34BA: PopAdLdVar
  loc_AA34BB: FLdPr Me
  loc_AA34BE: MemLdRfVar from_stack_1.htmFile
  loc_AA34C1: LdPrVar
  loc_AA34C3: LateMemCall
  loc_AA34C9: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AA34D4: LitStr "    <p>"
  loc_AA34D7: FLdRfVar var_A8
  loc_AA34DA: FLdPr Me
  loc_AA34DD:  = Me.Caption
  loc_AA34E2: ILdRf var_A8
  loc_AA34E5: ConcatStr
  loc_AA34E6: FStStrNoPop var_AC
  loc_AA34E9: LitStr "</p></th>"
  loc_AA34EC: ConcatStr
  loc_AA34ED: CVarStr var_BC
  loc_AA34F0: PopAdLdVar
  loc_AA34F1: FLdPr Me
  loc_AA34F4: MemLdRfVar from_stack_1.htmFile
  loc_AA34F7: LdPrVar
  loc_AA34F9: LateMemCall
  loc_AA34FF: FFreeStr var_A8 = ""
  loc_AA3506: FFree1Var var_BC = ""
  loc_AA3509: LitVarStr var_94, "  </tr>"
  loc_AA350E: PopAdLdVar
  loc_AA350F: FLdPr Me
  loc_AA3512: MemLdRfVar from_stack_1.htmFile
  loc_AA3515: LdPrVar
  loc_AA3517: LateMemCall
  loc_AA351D: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AA3522: PopAdLdVar
  loc_AA3523: FLdPr Me
  loc_AA3526: MemLdRfVar from_stack_1.htmFile
  loc_AA3529: LdPrVar
  loc_AA352B: LateMemCall
  loc_AA3531: LitVarStr var_94, "  <tr align=""left"">"
  loc_AA3536: PopAdLdVar
  loc_AA3537: FLdPr Me
  loc_AA353A: MemLdRfVar from_stack_1.htmFile
  loc_AA353D: LdPrVar
  loc_AA353F: LateMemCall
  loc_AA3545: LitVarStr var_94, "   <th>"
  loc_AA354A: PopAdLdVar
  loc_AA354B: FLdPr Me
  loc_AA354E: MemLdRfVar from_stack_1.htmFile
  loc_AA3551: LdPrVar
  loc_AA3553: LateMemCall
  loc_AA3559: LitStr "    Periodo: <span class=""Normal"">"
  loc_AA355C: FLdRfVar var_A8
  loc_AA355F: FLdPr Me
  loc_AA3562: VCallAd Control_ID_cboPeriodo
  loc_AA3565: FStAdFunc var_C0
  loc_AA3568: FLdPr var_C0
  loc_AA356B:  = Me.Text
  loc_AA3570: ILdRf var_A8
  loc_AA3573: ConcatStr
  loc_AA3574: FStStrNoPop var_AC
  loc_AA3577: LitStr "</span>"
  loc_AA357A: ConcatStr
  loc_AA357B: CVarStr var_BC
  loc_AA357E: PopAdLdVar
  loc_AA357F: FLdPr Me
  loc_AA3582: MemLdRfVar from_stack_1.htmFile
  loc_AA3585: LdPrVar
  loc_AA3587: LateMemCall
  loc_AA358D: FFreeStr var_A8 = ""
  loc_AA3594: FFree1Ad var_C0
  loc_AA3597: FFree1Var var_BC = ""
  loc_AA359A: LitStr "   <br>Desde: <span class=""Normal"">"
  loc_AA359D: FLdPr Me
  loc_AA35A0: VCallAd Control_ID_mskDesde
  loc_AA35A3: FStAdFunc var_C0
  loc_AA35A6: FLdPr var_C0
  loc_AA35A9: LateIdLdVar var_BC DispID_15 0
  loc_AA35B0: CStrVarTmp
  loc_AA35B1: FStStrNoPop var_A8
  loc_AA35B4: ConcatStr
  loc_AA35B5: FStStrNoPop var_AC
  loc_AA35B8: LitStr "</span>"
  loc_AA35BB: ConcatStr
  loc_AA35BC: CVarStr var_D4
  loc_AA35BF: PopAdLdVar
  loc_AA35C0: FLdPr Me
  loc_AA35C3: MemLdRfVar from_stack_1.htmFile
  loc_AA35C6: LdPrVar
  loc_AA35C8: LateMemCall
  loc_AA35CE: FFreeStr var_A8 = ""
  loc_AA35D5: FFree1Ad var_C0
  loc_AA35D8: FFreeVar var_BC = ""
  loc_AA35DF: LitStr "   <br>Hasta: <span class=""Normal"">"
  loc_AA35E2: FLdPr Me
  loc_AA35E5: VCallAd Control_ID_mskHasta
  loc_AA35E8: FStAdFunc var_C0
  loc_AA35EB: FLdPr var_C0
  loc_AA35EE: LateIdLdVar var_BC DispID_15 0
  loc_AA35F5: CStrVarTmp
  loc_AA35F6: FStStrNoPop var_A8
  loc_AA35F9: ConcatStr
  loc_AA35FA: FStStrNoPop var_AC
  loc_AA35FD: LitStr "</span>"
  loc_AA3600: ConcatStr
  loc_AA3601: CVarStr var_D4
  loc_AA3604: PopAdLdVar
  loc_AA3605: FLdPr Me
  loc_AA3608: MemLdRfVar from_stack_1.htmFile
  loc_AA360B: LdPrVar
  loc_AA360D: LateMemCall
  loc_AA3613: FFreeStr var_A8 = ""
  loc_AA361A: FFree1Ad var_C0
  loc_AA361D: FFreeVar var_BC = ""
  loc_AA3624: FLdPr Me
  loc_AA3627: VCallAd Control_ID_CodiPartMsk
  loc_AA362A: FStAdFunc var_C0
  loc_AA362D: FLdPr var_C0
  loc_AA3630: LateIdLdVar var_BC DispID_0 0
  loc_AA3637: CStrVarTmp
  loc_AA3638: FStStrNoPop var_A8
  loc_AA363B: LitStr vbNullString
  loc_AA363E: NeStr
  loc_AA3640: FFree1Str var_A8
  loc_AA3643: FFree1Ad var_C0
  loc_AA3646: FFree1Var var_BC = ""
  loc_AA3649: BranchF loc_AA36BD
  loc_AA364C: LitStr "   <br>Partida: <span class=""Normal"">Comenzando con '"
  loc_AA364F: FLdPr Me
  loc_AA3652: VCallAd Control_ID_CodiPartMsk
  loc_AA3655: FStAdFunc var_C0
  loc_AA3658: FLdPr var_C0
  loc_AA365B: LateIdLdVar var_BC DispID_0 0
  loc_AA3662: CStrVarTmp
  loc_AA3663: FStStrNoPop var_A8
  loc_AA3666: ConcatStr
  loc_AA3667: FStStrNoPop var_AC
  loc_AA366A: LitStr "'  -  "
  loc_AA366D: ConcatStr
  loc_AA366E: FStStrNoPop var_120
  loc_AA3671: FLdRfVar var_11C
  loc_AA3674: FLdPr Me
  loc_AA3677: VCallAd Control_ID_CodiPartLbl
  loc_AA367A: FStAdFunc var_118
  loc_AA367D: FLdPr var_118
  loc_AA3680:  = Me.Caption
  loc_AA3685: ILdRf var_11C
  loc_AA3688: ConcatStr
  loc_AA3689: FStStrNoPop var_124
  loc_AA368C: LitStr "</span>"
  loc_AA368F: ConcatStr
  loc_AA3690: CVarStr var_D4
  loc_AA3693: PopAdLdVar
  loc_AA3694: FLdPr Me
  loc_AA3697: MemLdRfVar from_stack_1.htmFile
  loc_AA369A: LdPrVar
  loc_AA369C: LateMemCall
  loc_AA36A2: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AA36AF: FFreeAd var_C0 = ""
  loc_AA36B6: FFreeVar var_BC = ""
  loc_AA36BD: FLdPr Me
  loc_AA36C0: VCallAd Control_ID_CodiOrgaMsk
  loc_AA36C3: FStAdFunc var_C0
  loc_AA36C6: FLdPr var_C0
  loc_AA36C9: LateIdLdVar var_BC DispID_0 0
  loc_AA36D0: CStrVarTmp
  loc_AA36D1: FStStrNoPop var_A8
  loc_AA36D4: LitStr vbNullString
  loc_AA36D7: NeStr
  loc_AA36D9: FFree1Str var_A8
  loc_AA36DC: FFree1Ad var_C0
  loc_AA36DF: FFree1Var var_BC = ""
  loc_AA36E2: BranchF loc_AA3756
  loc_AA36E5: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_AA36E8: FLdPr Me
  loc_AA36EB: VCallAd Control_ID_CodiOrgaMsk
  loc_AA36EE: FStAdFunc var_C0
  loc_AA36F1: FLdPr var_C0
  loc_AA36F4: LateIdLdVar var_BC DispID_0 0
  loc_AA36FB: CStrVarTmp
  loc_AA36FC: FStStrNoPop var_A8
  loc_AA36FF: ConcatStr
  loc_AA3700: FStStrNoPop var_AC
  loc_AA3703: LitStr "'  -  "
  loc_AA3706: ConcatStr
  loc_AA3707: FStStrNoPop var_120
  loc_AA370A: FLdRfVar var_11C
  loc_AA370D: FLdPr Me
  loc_AA3710: VCallAd Control_ID_CodiOrgaLbl
  loc_AA3713: FStAdFunc var_118
  loc_AA3716: FLdPr var_118
  loc_AA3719:  = Me.Caption
  loc_AA371E: ILdRf var_11C
  loc_AA3721: ConcatStr
  loc_AA3722: FStStrNoPop var_124
  loc_AA3725: LitStr "</span>"
  loc_AA3728: ConcatStr
  loc_AA3729: CVarStr var_D4
  loc_AA372C: PopAdLdVar
  loc_AA372D: FLdPr Me
  loc_AA3730: MemLdRfVar from_stack_1.htmFile
  loc_AA3733: LdPrVar
  loc_AA3735: LateMemCall
  loc_AA373B: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AA3748: FFreeAd var_C0 = ""
  loc_AA374F: FFreeVar var_BC = ""
  loc_AA3756: LitVarStr var_94, "   </p></th>"
  loc_AA375B: PopAdLdVar
  loc_AA375C: FLdPr Me
  loc_AA375F: MemLdRfVar from_stack_1.htmFile
  loc_AA3762: LdPrVar
  loc_AA3764: LateMemCall
  loc_AA376A: LitVarStr var_94, "  </tr>"
  loc_AA376F: PopAdLdVar
  loc_AA3770: FLdPr Me
  loc_AA3773: MemLdRfVar from_stack_1.htmFile
  loc_AA3776: LdPrVar
  loc_AA3778: LateMemCall
  loc_AA377E: LitVarStr var_94, "</table>"
  loc_AA3783: PopAdLdVar
  loc_AA3784: FLdPr Me
  loc_AA3787: MemLdRfVar from_stack_1.htmFile
  loc_AA378A: LdPrVar
  loc_AA378C: LateMemCall
  loc_AA3792: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA3797: PopAdLdVar
  loc_AA3798: FLdPr Me
  loc_AA379B: MemLdRfVar from_stack_1.htmFile
  loc_AA379E: LdPrVar
  loc_AA37A0: LateMemCall
  loc_AA37A6: LitVarStr var_94, "  <THEAD>"
  loc_AA37AB: PopAdLdVar
  loc_AA37AC: FLdPr Me
  loc_AA37AF: MemLdRfVar from_stack_1.htmFile
  loc_AA37B2: LdPrVar
  loc_AA37B4: LateMemCall
  loc_AA37BA: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AA37BF: PopAdLdVar
  loc_AA37C0: FLdPr Me
  loc_AA37C3: MemLdRfVar from_stack_1.htmFile
  loc_AA37C6: LdPrVar
  loc_AA37C8: LateMemCall
  loc_AA37CE: LitVarStr var_94, "    <th>Partida</th>"
  loc_AA37D3: PopAdLdVar
  loc_AA37D4: FLdPr Me
  loc_AA37D7: MemLdRfVar from_stack_1.htmFile
  loc_AA37DA: LdPrVar
  loc_AA37DC: LateMemCall
  loc_AA37E2: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_AA37E7: PopAdLdVar
  loc_AA37E8: FLdPr Me
  loc_AA37EB: MemLdRfVar from_stack_1.htmFile
  loc_AA37EE: LdPrVar
  loc_AA37F0: LateMemCall
  loc_AA37F6: LitVarStr var_94, "    <th>Finalidad</th>"
  loc_AA37FB: PopAdLdVar
  loc_AA37FC: FLdPr Me
  loc_AA37FF: MemLdRfVar from_stack_1.htmFile
  loc_AA3802: LdPrVar
  loc_AA3804: LateMemCall
  loc_AA380A: LitVarStr var_94, "    <th>Expediente de Pago</th>"
  loc_AA380F: PopAdLdVar
  loc_AA3810: FLdPr Me
  loc_AA3813: MemLdRfVar from_stack_1.htmFile
  loc_AA3816: LdPrVar
  loc_AA3818: LateMemCall
  loc_AA381E: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_AA3823: PopAdLdVar
  loc_AA3824: FLdPr Me
  loc_AA3827: MemLdRfVar from_stack_1.htmFile
  loc_AA382A: LdPrVar
  loc_AA382C: LateMemCall
  loc_AA3832: LitVarStr var_94, "    <th>Saldo</th>"
  loc_AA3837: PopAdLdVar
  loc_AA3838: FLdPr Me
  loc_AA383B: MemLdRfVar from_stack_1.htmFile
  loc_AA383E: LdPrVar
  loc_AA3840: LateMemCall
  loc_AA3846: LitVarStr var_94, "  </tr>"
  loc_AA384B: PopAdLdVar
  loc_AA384C: FLdPr Me
  loc_AA384F: MemLdRfVar from_stack_1.htmFile
  loc_AA3852: LdPrVar
  loc_AA3854: LateMemCall
  loc_AA385A: LitVarStr var_94, "  </THEAD>"
  loc_AA385F: PopAdLdVar
  loc_AA3860: FLdPr Me
  loc_AA3863: MemLdRfVar from_stack_1.htmFile
  loc_AA3866: LdPrVar
  loc_AA3868: LateMemCall
  loc_AA386E: ExitProcHresult
End Function

Private Function Proc_223_39_982690() '982690
  'Data Table: 4B409C
  loc_982650: LitVarStr var_94, "</table>"
  loc_982655: PopAdLdVar
  loc_982656: FLdPr Me
  loc_982659: MemLdRfVar from_stack_1.htmFile
  loc_98265C: LdPrVar
  loc_98265E: LateMemCall
  loc_982664: LitVarStr var_94, "</body>"
  loc_982669: PopAdLdVar
  loc_98266A: FLdPr Me
  loc_98266D: MemLdRfVar from_stack_1.htmFile
  loc_982670: LdPrVar
  loc_982672: LateMemCall
  loc_982678: LitVarStr var_94, "</html>"
  loc_98267D: PopAdLdVar
  loc_98267E: FLdPr Me
  loc_982681: MemLdRfVar from_stack_1.htmFile
  loc_982684: LdPrVar
  loc_982686: LateMemCall
  loc_98268C: ExitProcHresult
End Function
