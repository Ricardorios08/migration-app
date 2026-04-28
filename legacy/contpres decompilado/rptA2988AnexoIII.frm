VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoIII
  Caption = "ACUERDO 2988 - ANEXO 3 - De la Ejecución del Presupuesto de Gastos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoIII.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 11100
  ClientHeight = 6420
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6165
    Width = 11100
    Height = 255
    TabIndex = 31
    OleObjectBlob = "rptA2988AnexoIII.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9720
    Top = 5160
    Width = 735
    Height = 615
    TabIndex = 29
    Cancel = -1  'True
    Picture = "rptA2988AnexoIII.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoIII.frx":0B9C
    Left = 9840
    Top = 3120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4920
    Width = 6015
    Height = 1095
    TabIndex = 25
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT HTC"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 32
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 28
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 27
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 26
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4920
    Width = 3015
    Height = 1095
    TabIndex = 22
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 24
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 23
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10815
    Height = 4815
    TabIndex = 0
    Begin VB.CheckBox chkAgrupaMes
      Caption = "Agrupa EJECUCIÓN por MES"
      Left = 1440
      Top = 2760
      Width = 2415
      Height = 375
      TabIndex = 15
    End
    Begin VB.Frame Frame4
      Left = 1440
      Top = 3360
      Width = 1455
      Height = 1095
      TabIndex = 16
      Begin VB.OptionButton optSintetico
        Caption = "Sintético"
        Left = 240
        Top = 240
        Width = 1095
        Height = 255
        TabIndex = 17
      End
      Begin VB.OptionButton optAnalitico
        Caption = "Analítico"
        Left = 240
        Top = 600
        Width = 1095
        Height = 255
        TabIndex = 18
      End
    End
    Begin VB.Frame Frame5
      Left = 2760
      Top = 3360
      Width = 1815
      Height = 1095
      TabIndex = 19
      Begin VB.OptionButton optJurisdiccion
        Caption = "Por Jurisdicción"
        Left = 240
        Top = 600
        Width = 1455
        Height = 255
        TabIndex = 21
      End
      Begin VB.OptionButton optConsolidado
        Caption = "Consolidado"
        Left = 240
        Top = 240
        Width = 1215
        Height = 255
        TabIndex = 20
      End
    End
    Begin VB.CheckBox chkNotCodiPart
      Caption = "No comienza con"
      Left = 1440
      Top = 2160
      Width = 1575
      Height = 255
      TabIndex = 14
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 2880
      Top = 1800
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptA2988AnexoIII.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdDesde
      Left = 2610
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptA2988AnexoIII.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdHasta
      Left = 2610
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptA2988AnexoIII.frx":123C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1455
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1455
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptA2988AnexoIII.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1455
      Top = 1320
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptA2988AnexoIII.frx":1806
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1440
      Top = 1800
      Width = 1335
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptA2988AnexoIII.frx":188E
    End
    Begin VB.Label CodiPartLbl
      Left = 3360
      Top = 1800
      Width = 5295
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 720
      Top = 1800
      Width = 615
      Height = 315
      TabIndex = 10
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 810
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 855
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 735
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9840
    Top = 5280
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 30
    OleObjectBlob = "rptA2988AnexoIII.frx":18EE
  End
End

Attribute VB_Name = "rptA2988AnexoIII"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_005A9484
  bStruc(396) As Byte ' String fields: 99
End Type

Private Type UDT_2_005A961C
  bStruc(400) As Byte ' String fields: 2
End Type

Private Type UDT_3_005A9020
  bStruc(400) As Byte ' String fields: 2
End Type

Private Type UDT_4_005A9068
  bStruc(400) As Byte ' String fields: 2
End Type

Private Type UDT_5_005A744C
  bStruc(408) As Byte ' String fields: 4
End Type


Private Sub cmdCodiPart_Click() '9F42C8
  'Data Table: 4CFE80
  loc_9F4198: LitNothing
  loc_9F419A: CastAd
  loc_9F419D: FStAdFuncNoPop
  loc_9F41A0: ImpAdLdRf MemVar_C3D724
  loc_9F41A3: NewIfNullPr bscPartida
  loc_9F41A6: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F41AB: FFree1Ad var_88
  loc_9F41AE: LitVar_Missing var_A8
  loc_9F41B1: PopAdLdVar
  loc_9F41B2: LitVarI4
  loc_9F41BA: PopAdLdVar
  loc_9F41BB: ImpAdLdRf MemVar_C3D724
  loc_9F41BE: NewIfNullPr bscPartida
  loc_9F41C1: bscPartida.Show from_stack_1, from_stack_2
  loc_9F41C6: FLdRfVar var_AC
  loc_9F41C9: FLdRfVar var_88
  loc_9F41CC: ImpAdLdRf MemVar_C3D724
  loc_9F41CF: NewIfNullPr bscPartida
  loc_9F41D2: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F41D7: FLdPr var_88
  loc_9F41DA: from_stack_1 = clsbase.RecordCount
  loc_9F41DF: ILdRf var_AC
  loc_9F41E2: LitI4 0
  loc_9F41E7: GtI4
  loc_9F41E8: FFree1Ad var_88
  loc_9F41EB: BranchF loc_9F42C6
  loc_9F41EE: FLdRfVar var_C8
  loc_9F41F1: FLdRfVar var_B8
  loc_9F41F4: LitVarStr var_98, "CodiPart"
  loc_9F41F9: PopAdLdVar
  loc_9F41FA: FLdRfVar var_B4
  loc_9F41FD: FLdRfVar var_B0
  loc_9F4200: FLdRfVar var_88
  loc_9F4203: ImpAdLdRf MemVar_C3D724
  loc_9F4206: NewIfNullPr bscPartida
  loc_9F4209: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F420E: FLdPr var_88
  loc_9F4211: from_stack_1v = clsbase.RsFrmGet()
  loc_9F4216: FLdPr var_B0
  loc_9F4219:  = Me.Fields
  loc_9F421E: FLdPr var_B4
  loc_9F4221: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4226: FLdPr var_B8
  loc_9F4229:  = Me.Value
  loc_9F422E: FLdRfVar var_C8
  loc_9F4231: CStrVarTmp
  loc_9F4232: CVarStr var_D8
  loc_9F4235: PopAdLdVar
  loc_9F4236: FLdPr Me
  loc_9F4239: VCallAd Control_ID_CodiPartMsk
  loc_9F423C: FStAdFunc var_DC
  loc_9F423F: FLdPr var_DC
  loc_9F4242: LateIdSt
  loc_9F4247: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F4254: FFreeVar var_C8 = ""
  loc_9F425B: FLdRfVar var_C8
  loc_9F425E: FLdRfVar var_B8
  loc_9F4261: LitVarStr var_98, "DetaPart"
  loc_9F4266: PopAdLdVar
  loc_9F4267: FLdRfVar var_B4
  loc_9F426A: FLdRfVar var_B0
  loc_9F426D: FLdRfVar var_88
  loc_9F4270: ImpAdLdRf MemVar_C3D724
  loc_9F4273: NewIfNullPr bscPartida
  loc_9F4276: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F427B: FLdPr var_88
  loc_9F427E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F4283: FLdPr var_B0
  loc_9F4286:  = Me.Fields
  loc_9F428B: FLdPr var_B4
  loc_9F428E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4293: FLdPr var_B8
  loc_9F4296:  = Me.Value
  loc_9F429B: FLdRfVar var_C8
  loc_9F429E: CStrVarTmp
  loc_9F429F: FStStrNoPop var_E0
  loc_9F42A2: FLdPr Me
  loc_9F42A5: VCallAd Control_ID_CodiPartLbl
  loc_9F42A8: FStAdFunc var_DC
  loc_9F42AB: FLdPr var_DC
  loc_9F42AE: Me.Caption = from_stack_1
  loc_9F42B3: FFree1Str var_E0
  loc_9F42B6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F42C3: FFree1Var var_C8 = ""
  loc_9F42C6: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A744
  'Data Table: 4CFE80
  loc_97A714: LitVarStr var_94, "Cerrando..."
  loc_97A719: PopAdLdVar
  loc_97A71A: FLdPr Me
  loc_97A71D: VCallAd Control_ID_statusBar
  loc_97A720: FStAdFunc var_A8
  loc_97A723: FLdPr var_A8
  loc_97A726: LateIdSt
  loc_97A72B: FFree1Ad var_A8
  loc_97A72E: ILdRf Me
  loc_97A731: FStAdNoPop
  loc_97A735: ImpAdLdRf MemVar_C44F9C
  loc_97A738: NewIfNullPr Me
  loc_97A73B: Me.Global.Unload from_stack_1
  loc_97A740: FFree1Ad var_A8
  loc_97A743: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '95EB64
  'Data Table: 4CFE80
  loc_95EB4C: ILdRf Me
  loc_95EB4F: CastAd
  loc_95EB52: FStAdFunc var_88
  loc_95EB55: FLdRfVar var_88
  loc_95EB58: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_95EB5D: FFree1Ad var_88
  loc_95EB60: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96AB8C
  'Data Table: 4CFE80
  loc_96AB70: LitI2_Byte &HFF
  loc_96AB72: LitI2_Byte 0
  loc_96AB74: ILdRf Me
  loc_96AB77: CastAd
  loc_96AB7A: FStAdFunc var_88
  loc_96AB7D: FLdRfVar var_88
  loc_96AB80: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96AB85: FFree1Ad var_88
  loc_96AB88: ExitProcHresult
  loc_96AB89: SubI4
  loc_96AB8A: ImpAdLdPr 7C
End Sub

Private Sub cmdNueva_Click() '9EDED4
  'Data Table: 4CFE80
  loc_9EDDA0: LitI2_Byte 0
  loc_9EDDA2: FLdPr Me
  loc_9EDDA5: MemStI2 bGenerado
  loc_9EDDA8: LitI2_Byte &HFF
  loc_9EDDAA: FLdPr Me
  loc_9EDDAD: MemStI2 bLogos
  loc_9EDDB0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9EDDB5: ImpAdLdI2 MemVar_C3D064
  loc_9EDDB8: CStrUI1
  loc_9EDDBA: FStStrNoPop var_88
  loc_9EDDBD: FLdPr Me
  loc_9EDDC0: VCallAd Control_ID_cboPeriodo
  loc_9EDDC3: FStAdFunc var_8C
  loc_9EDDC6: FLdPr var_8C
  loc_9EDDC9: Me.Text = from_stack_1
  loc_9EDDCE: FFree1Str var_88
  loc_9EDDD1: FFree1Ad var_8C
  loc_9EDDD4: LitI2_Byte 1
  loc_9EDDD6: LitI2_Byte 1
  loc_9EDDD8: ImpAdLdI2 MemVar_C3D064
  loc_9EDDDB: FLdRfVar var_9C
  loc_9EDDDE: ImpAdCallFPR4  = DateSerial(, , )
  loc_9EDDE3: FLdRfVar var_9C
  loc_9EDDE6: CStrVarTmp
  loc_9EDDE7: CVarStr var_AC
  loc_9EDDEA: PopAdLdVar
  loc_9EDDEB: FLdPr Me
  loc_9EDDEE: VCallAd Control_ID_mskDesde
  loc_9EDDF1: FStAdFunc var_8C
  loc_9EDDF4: FLdPr var_8C
  loc_9EDDF7: LateIdSt
  loc_9EDDFC: FFree1Ad var_8C
  loc_9EDDFF: FFreeVar var_9C = ""
  loc_9EDE06: ImpAdLdFPR8 MemVar_C3D04C
  loc_9EDE09: CStrDate
  loc_9EDE0B: CVarStr var_9C
  loc_9EDE0E: PopAdLdVar
  loc_9EDE0F: FLdPr Me
  loc_9EDE12: VCallAd Control_ID_mskHasta
  loc_9EDE15: FStAdFunc var_8C
  loc_9EDE18: FLdPr var_8C
  loc_9EDE1B: LateIdSt
  loc_9EDE20: FFree1Ad var_8C
  loc_9EDE23: FFree1Var var_9C = ""
  loc_9EDE26: LitVarStr var_BC, vbNullString
  loc_9EDE2B: PopAdLdVar
  loc_9EDE2C: FLdPr Me
  loc_9EDE2F: VCallAd Control_ID_CodiPartMsk
  loc_9EDE32: FStAdFunc var_8C
  loc_9EDE35: FLdPr var_8C
  loc_9EDE38: LateIdSt
  loc_9EDE3D: FFree1Ad var_8C
  loc_9EDE40: LitStr vbNullString
  loc_9EDE43: FLdPr Me
  loc_9EDE46: VCallAd Control_ID_CodiPartLbl
  loc_9EDE49: FStAdFunc var_8C
  loc_9EDE4C: FLdPr var_8C
  loc_9EDE4F: Me.Caption = from_stack_1
  loc_9EDE54: FFree1Ad var_8C
  loc_9EDE57: LitI4 0
  loc_9EDE5C: CI2I4
  loc_9EDE5D: FLdPr Me
  loc_9EDE60: VCallAd Control_ID_chkNotCodiPart
  loc_9EDE63: FStAdFunc var_8C
  loc_9EDE66: FLdPr var_8C
  loc_9EDE69: Me.Value = from_stack_1
  loc_9EDE6E: FFree1Ad var_8C
  loc_9EDE71: LitI2_Byte &HFF
  loc_9EDE73: FLdPr Me
  loc_9EDE76: VCallAd Control_ID_optSintetico
  loc_9EDE79: FStAdFunc var_8C
  loc_9EDE7C: FLdPr var_8C
  loc_9EDE7F: Me.Value = from_stack_1b
  loc_9EDE84: FFree1Ad var_8C
  loc_9EDE87: LitI2_Byte &HFF
  loc_9EDE89: FLdPr Me
  loc_9EDE8C: VCallAd Control_ID_optConsolidado
  loc_9EDE8F: FStAdFunc var_8C
  loc_9EDE92: FLdPr var_8C
  loc_9EDE95: Me.Value = from_stack_1b
  loc_9EDE9A: FFree1Ad var_8C
  loc_9EDE9D: LitI4 0
  loc_9EDEA2: CI2I4
  loc_9EDEA3: FLdPr Me
  loc_9EDEA6: VCallAd Control_ID_chkAgrupaMes
  loc_9EDEA9: FStAdFunc var_8C
  loc_9EDEAC: FLdPr var_8C
  loc_9EDEAF: Me.Value = from_stack_1
  loc_9EDEB4: FFree1Ad var_8C
  loc_9EDEB7: Call HabilitarCriterio()
  loc_9EDEBC: ILdRf Me
  loc_9EDEBF: CastAd
  loc_9EDEC2: FStAdFunc var_8C
  loc_9EDEC5: FLdRfVar var_8C
  loc_9EDEC8: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9EDECD: FFree1Ad var_8C
  loc_9EDED0: ExitProcHresult
  loc_9EDED1: FStVarCopyObj arg_3A8
End Sub

Private Sub cboPeriodo_Click() 'A018C8
  'Data Table: 4CFE80
  loc_A01770: FLdRfVar var_8C
  loc_A01773: FLdPr Me
  loc_A01776: VCallAd Control_ID_cboPeriodo
  loc_A01779: FStAdFunc var_88
  loc_A0177C: FLdPr var_88
  loc_A0177F:  = Me.Text
  loc_A01784: LitI2_Byte 1
  loc_A01786: LitI2_Byte 1
  loc_A01788: ILdRf var_8C
  loc_A0178B: CI2Str
  loc_A0178D: FLdRfVar var_9C
  loc_A01790: ImpAdCallFPR4  = DateSerial(, , )
  loc_A01795: FLdRfVar var_9C
  loc_A01798: CStrVarTmp
  loc_A01799: CVarStr var_AC
  loc_A0179C: PopAdLdVar
  loc_A0179D: FLdPr Me
  loc_A017A0: VCallAd Control_ID_mskDesde
  loc_A017A3: FStAdFunc var_C0
  loc_A017A6: FLdPr var_C0
  loc_A017A9: LateIdSt
  loc_A017AE: FFree1Str var_8C
  loc_A017B1: FFreeAd var_88 = ""
  loc_A017B8: FFreeVar var_9C = ""
  loc_A017BF: FLdRfVar var_8C
  loc_A017C2: FLdPr Me
  loc_A017C5: VCallAd Control_ID_cboPeriodo
  loc_A017C8: FStAdFunc var_88
  loc_A017CB: FLdPr var_88
  loc_A017CE:  = Me.Text
  loc_A017D3: ILdRf var_8C
  loc_A017D6: CI2Str
  loc_A017D8: ImpAdLdI2 MemVar_C3D064
  loc_A017DB: LtI2
  loc_A017DC: FFree1Str var_8C
  loc_A017DF: FFree1Ad var_88
  loc_A017E2: BranchF loc_A01837
  loc_A017E5: FLdRfVar var_8C
  loc_A017E8: FLdPr Me
  loc_A017EB: VCallAd Control_ID_cboPeriodo
  loc_A017EE: FStAdFunc var_88
  loc_A017F1: FLdPr var_88
  loc_A017F4:  = Me.Text
  loc_A017F9: LitI2_Byte &H1F
  loc_A017FB: LitI2_Byte &HC
  loc_A017FD: ILdRf var_8C
  loc_A01800: CI2Str
  loc_A01802: FLdRfVar var_9C
  loc_A01805: ImpAdCallFPR4  = DateSerial(, , )
  loc_A0180A: FLdRfVar var_9C
  loc_A0180D: CStrVarTmp
  loc_A0180E: CVarStr var_AC
  loc_A01811: PopAdLdVar
  loc_A01812: FLdPr Me
  loc_A01815: VCallAd Control_ID_mskHasta
  loc_A01818: FStAdFunc var_C0
  loc_A0181B: FLdPr var_C0
  loc_A0181E: LateIdSt
  loc_A01823: FFree1Str var_8C
  loc_A01826: FFreeAd var_88 = ""
  loc_A0182D: FFreeVar var_9C = ""
  loc_A01834: Branch loc_A018C5
  loc_A01837: FLdRfVar var_8C
  loc_A0183A: FLdPr Me
  loc_A0183D: VCallAd Control_ID_cboPeriodo
  loc_A01840: FStAdFunc var_88
  loc_A01843: FLdPr var_88
  loc_A01846:  = Me.Text
  loc_A0184B: ILdRf var_8C
  loc_A0184E: CI2Str
  loc_A01850: ImpAdLdI2 MemVar_C3D064
  loc_A01853: GtI2
  loc_A01854: FFree1Str var_8C
  loc_A01857: FFree1Ad var_88
  loc_A0185A: BranchF loc_A018A5
  loc_A0185D: FLdRfVar var_8C
  loc_A01860: FLdPr Me
  loc_A01863: VCallAd Control_ID_cboPeriodo
  loc_A01866: FStAdFunc var_88
  loc_A01869: FLdPr var_88
  loc_A0186C:  = Me.Text
  loc_A01871: ILdRf var_8C
  loc_A01874: CI2Str
  loc_A01876: PopTmpLdAd2 var_C2
  loc_A01879: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A0187E: CStrDate
  loc_A01880: CVarStr var_9C
  loc_A01883: PopAdLdVar
  loc_A01884: FLdPr Me
  loc_A01887: VCallAd Control_ID_mskHasta
  loc_A0188A: FStAdFunc var_C0
  loc_A0188D: FLdPr var_C0
  loc_A01890: LateIdSt
  loc_A01895: FFree1Str var_8C
  loc_A01898: FFreeAd var_88 = ""
  loc_A0189F: FFree1Var var_9C = ""
  loc_A018A2: Branch loc_A018C5
  loc_A018A5: ImpAdLdFPR8 MemVar_C3D04C
  loc_A018A8: CStrDate
  loc_A018AA: CVarStr var_9C
  loc_A018AD: PopAdLdVar
  loc_A018AE: FLdPr Me
  loc_A018B1: VCallAd Control_ID_mskHasta
  loc_A018B4: FStAdFunc var_88
  loc_A018B7: FLdPr var_88
  loc_A018BA: LateIdSt
  loc_A018BF: FFree1Ad var_88
  loc_A018C2: FFree1Var var_9C = ""
  loc_A018C5: ExitProcHresult
  loc_A018C6: PopTmpLdAdStr Me03
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94A700
  'Data Table: 4CFE80
  loc_94A6EC: FLdPr Me
  loc_94A6EF: VCallAd Control_ID_CodiPartMsk
  loc_94A6F2: CVarAd
  loc_94A6F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A6FB: FFree1Var var_94 = ""
  loc_94A6FE: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A2C2E0
  'Data Table: 4CFE80
  loc_A2C12C: FLdRfVar var_9A
  loc_A2C12F: FLdPr Me
  loc_A2C132: VCallAd Control_ID_chkNotCodiPart
  loc_A2C135: FStAdFunc var_98
  loc_A2C138: FLdPr var_98
  loc_A2C13B:  = Me.Value
  loc_A2C140: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A2C143: FLdRfVar var_90
  loc_A2C146: FLdPr Me
  loc_A2C149: VCallAd Control_ID_cboPeriodo
  loc_A2C14C: FStAdFunc var_8C
  loc_A2C14F: FLdPr var_8C
  loc_A2C152:  = Me.Text
  loc_A2C157: ILdRf var_90
  loc_A2C15A: ConcatStr
  loc_A2C15B: FStStrNoPop var_94
  loc_A2C15E: LitStr " AND CodiPart "
  loc_A2C161: ConcatStr
  loc_A2C162: CVarStr var_10C
  loc_A2C165: LitVarStr var_DC, vbNullString
  loc_A2C16A: FStVarCopyObj var_EC
  loc_A2C16D: FLdRfVar var_EC
  loc_A2C170: LitVarStr var_BC, "NOT"
  loc_A2C175: FStVarCopyObj var_CC
  loc_A2C178: FLdRfVar var_CC
  loc_A2C17B: FLdI2 var_9A
  loc_A2C17E: CI4UI1
  loc_A2C17F: LitI4 1
  loc_A2C184: EqI4
  loc_A2C185: CVarBoolI2 var_AC
  loc_A2C189: FLdRfVar var_FC
  loc_A2C18C: ImpAdCallFPR4  = IIf(, , )
  loc_A2C191: FLdRfVar var_FC
  loc_A2C194: ConcatVar var_11C
  loc_A2C198: LitVarStr var_12C, " LIKE '"
  loc_A2C19D: ConcatVar var_13C
  loc_A2C1A1: FLdPr Me
  loc_A2C1A4: VCallAd Control_ID_CodiPartMsk
  loc_A2C1A7: FStAdFunc var_140
  loc_A2C1AA: FLdPr var_140
  loc_A2C1AD: LateIdLdVar var_150 DispID_22 0
  loc_A2C1B4: CStrVarTmp
  loc_A2C1B5: CVarStr var_160
  loc_A2C1B8: ConcatVar var_170
  loc_A2C1BC: LitVarStr var_180, Chr(37) & "'"
  loc_A2C1C1: ConcatVar var_190
  loc_A2C1C5: CStrVarVal var_194
  loc_A2C1C9: FLdRfVar var_88
  loc_A2C1CC: NewIfNullPr clspartida
  loc_A2C1CF: Call clspartida.RedefineRS(from_stack_1v)
  loc_A2C1D4: FFreeStr var_90 = "": var_94 = ""
  loc_A2C1DD: FFreeAd var_8C = "": var_98 = ""
  loc_A2C1E6: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_150 = "": var_13C = "": var_160 = "": var_170 = ""
  loc_A2C1FF: FLdRfVar var_198
  loc_A2C202: FLdRfVar var_88
  loc_A2C205: NewIfNullPr clspartida
  loc_A2C208: from_stack_1 = clspartida.RecordCount
  loc_A2C20D: ILdRf var_198
  loc_A2C210: FStR4 var_19C
  loc_A2C213: ILdRf var_19C
  loc_A2C216: LitI4 0
  loc_A2C21B: EqI4
  loc_A2C21C: BranchF loc_A2C239
  loc_A2C21F: LitStr "0 registros encontrados"
  loc_A2C222: FLdPr Me
  loc_A2C225: VCallAd Control_ID_CodiPartLbl
  loc_A2C228: FStAdFunc var_8C
  loc_A2C22B: FLdPr var_8C
  loc_A2C22E: Me.Caption = from_stack_1
  loc_A2C233: FFree1Ad var_8C
  loc_A2C236: Branch loc_A2C2DE
  loc_A2C239: ILdRf var_19C
  loc_A2C23C: LitI4 1
  loc_A2C241: EqI4
  loc_A2C242: BranchF loc_A2C2A6
  loc_A2C245: FLdRfVar var_CC
  loc_A2C248: FLdRfVar var_140
  loc_A2C24B: LitVarStr var_AC, "DetaPart"
  loc_A2C250: PopAdLdVar
  loc_A2C251: FLdRfVar var_98
  loc_A2C254: FLdRfVar var_8C
  loc_A2C257: FLdRfVar var_88
  loc_A2C25A: NewIfNullPr clspartida
  loc_A2C25D: from_stack_1v = clspartida.RsFrmGet()
  loc_A2C262: FLdPr var_8C
  loc_A2C265:  = Me.Fields
  loc_A2C26A: FLdPr var_98
  loc_A2C26D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C272: FLdPr var_140
  loc_A2C275:  = Me.Value
  loc_A2C27A: FLdRfVar var_CC
  loc_A2C27D: CStrVarTmp
  loc_A2C27E: FStStrNoPop var_90
  loc_A2C281: FLdPr Me
  loc_A2C284: VCallAd Control_ID_CodiPartLbl
  loc_A2C287: FStAdFunc var_1A0
  loc_A2C28A: FLdPr var_1A0
  loc_A2C28D: Me.Caption = from_stack_1
  loc_A2C292: FFree1Str var_90
  loc_A2C295: FFreeAd var_8C = "": var_98 = "": var_140 = ""
  loc_A2C2A0: FFree1Var var_CC = ""
  loc_A2C2A3: Branch loc_A2C2DE
  loc_A2C2A6: FLdRfVar var_198
  loc_A2C2A9: FLdRfVar var_88
  loc_A2C2AC: NewIfNullPr clspartida
  loc_A2C2AF: from_stack_1 = clspartida.RecordCount
  loc_A2C2B4: ILdRf var_198
  loc_A2C2B7: CStrI4
  loc_A2C2B9: FStStrNoPop var_90
  loc_A2C2BC: LitStr " partidas encontradas"
  loc_A2C2BF: ConcatStr
  loc_A2C2C0: FStStrNoPop var_94
  loc_A2C2C3: FLdPr Me
  loc_A2C2C6: VCallAd Control_ID_CodiPartLbl
  loc_A2C2C9: FStAdFunc var_8C
  loc_A2C2CC: FLdPr var_8C
  loc_A2C2CF: Me.Caption = from_stack_1
  loc_A2C2D4: FFreeStr var_90 = ""
  loc_A2C2DB: FFree1Ad var_8C
  loc_A2C2DE: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A3C4
  'Data Table: 4CFE80
  loc_98A38C: FLdPr Me
  loc_98A38F: VCallAd Control_ID_statusBar
  loc_98A392: FStAdFunc var_88
  loc_98A395: FLdPr var_88
  loc_98A398: LateIdLdVar var_98 DispID_1 0
  loc_98A39F: CStrVarTmp
  loc_98A3A0: CVarStr var_A8
  loc_98A3A3: PopAdLdVar
  loc_98A3A4: FLdPr Me
  loc_98A3A7: VCallAd Control_ID_statusBar
  loc_98A3AA: FStAdFunc var_BC
  loc_98A3AD: FLdPr var_BC
  loc_98A3B0: LateIdSt
  loc_98A3B5: FFreeAd var_88 = ""
  loc_98A3BC: FFreeVar var_98 = ""
  loc_98A3C3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9CA1D8
  'Data Table: 4CFE80
  loc_9CA114: FLdPr Me
  loc_9CA117: VCallAd Control_ID_mskDesde
  loc_9CA11A: FStAdFunc var_88
  loc_9CA11D: FLdPr var_88
  loc_9CA120: LateIdLdVar var_98 DispID_15 0
  loc_9CA127: PopAd
  loc_9CA129: FLdPr Me
  loc_9CA12C: VCallAd Control_ID_mskHasta
  loc_9CA12F: FStAdFunc var_A8
  loc_9CA132: FLdPr var_A8
  loc_9CA135: LateIdLdVar var_B8 DispID_15 0
  loc_9CA13C: PopAd
  loc_9CA13E: LitStr "Acuerdo 2988 Anexo III "
  loc_9CA141: LitI4 0
  loc_9CA146: LitI4 -1
  loc_9CA14B: LitI4 1
  loc_9CA150: LitStr "-"
  loc_9CA153: LitStr "/"
  loc_9CA156: FLdRfVar var_98
  loc_9CA159: CStrVarTmp
  loc_9CA15A: FStStrNoPop var_9C
  loc_9CA15D: ImpAdCallI2 Replace(, , , , , )
  loc_9CA162: FStStrNoPop var_A0
  loc_9CA165: ConcatStr
  loc_9CA166: FStStrNoPop var_A4
  loc_9CA169: LitStr " "
  loc_9CA16C: ConcatStr
  loc_9CA16D: FStStrNoPop var_C0
  loc_9CA170: LitI4 0
  loc_9CA175: LitI4 -1
  loc_9CA17A: LitI4 1
  loc_9CA17F: LitStr "-"
  loc_9CA182: LitStr "/"
  loc_9CA185: FLdRfVar var_B8
  loc_9CA188: CStrVarTmp
  loc_9CA189: FStStrNoPop var_BC
  loc_9CA18C: ImpAdCallI2 Replace(, , , , , )
  loc_9CA191: FStStrNoPop var_C4
  loc_9CA194: ConcatStr
  loc_9CA195: FStStrNoPop var_C8
  loc_9CA198: FLdPr Me
  loc_9CA19B: Me.Tag = from_stack_1
  loc_9CA1A0: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_9CA1B1: FFreeAd var_88 = ""
  loc_9CA1B8: FFreeVar var_98 = ""
  loc_9CA1BF: LitI2_Byte 0
  loc_9CA1C1: ILdRf Me
  loc_9CA1C4: CastAd
  loc_9CA1C7: FStAdFunc var_88
  loc_9CA1CA: FLdRfVar var_88
  loc_9CA1CD: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9CA1D2: FFree1Ad var_88
  loc_9CA1D5: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95F3B4
  'Data Table: 4CFE80
  loc_95F39C: ILdRf Me
  loc_95F39F: CastAd
  loc_95F3A2: FStAdFunc var_88
  loc_95F3A5: FLdRfVar var_88
  loc_95F3A8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95F3AD: FFree1Ad var_88
  loc_95F3B0: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95F6F8
  'Data Table: 4CFE80
  loc_95F6E0: ILdRf Me
  loc_95F6E3: CastAd
  loc_95F6E6: FStAdFunc var_88
  loc_95F6E9: FLdRfVar var_88
  loc_95F6EC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95F6F1: FFree1Ad var_88
  loc_95F6F4: ExitProcHresult
End Sub

Private Sub chkAgrupaMes_Click() '9AAC98
  'Data Table: 4CFE80
  loc_9AAC08: FLdRfVar var_8A
  loc_9AAC0B: FLdPr Me
  loc_9AAC0E: VCallAd Control_ID_chkAgrupaMes
  loc_9AAC11: FStAdFunc var_88
  loc_9AAC14: FLdPr var_88
  loc_9AAC17:  = Me.Value
  loc_9AAC1C: FLdI2 var_8A
  loc_9AAC1F: CI4UI1
  loc_9AAC20: LitI4 1
  loc_9AAC25: EqI4
  loc_9AAC26: FFree1Ad var_88
  loc_9AAC29: BranchF loc_9AAC62
  loc_9AAC2C: LitI4 0
  loc_9AAC31: LitI4 0
  loc_9AAC36: FLdRfVar var_90
  loc_9AAC39: Redim
  loc_9AAC43: FLdPr Me
  loc_9AAC46: VCallAd Control_ID_cmdTXT
  loc_9AAC49: CVarAd
  loc_9AAC4D: ParmAry1St
  loc_9AAC53: FLdRfVar var_90
  loc_9AAC56: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9AAC5B: FLdRfVar var_90
  loc_9AAC5E: Erase
  loc_9AAC5F: Branch loc_9AAC95
  loc_9AAC62: LitI4 0
  loc_9AAC67: LitI4 0
  loc_9AAC6C: FLdRfVar var_90
  loc_9AAC6F: Redim
  loc_9AAC79: FLdPr Me
  loc_9AAC7C: VCallAd Control_ID_cmdTXT
  loc_9AAC7F: CVarAd
  loc_9AAC83: ParmAry1St
  loc_9AAC89: FLdRfVar var_90
  loc_9AAC8C: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AAC91: FLdRfVar var_90
  loc_9AAC94: Erase
  loc_9AAC95: ExitProcHresult
  loc_9AAC96: Ary1StI2
End Sub

Private Sub cmdTxt_Click() 'A168D0
  'Data Table: 4CFE80
  loc_A16774: FLdRfVar var_A4
  loc_A16777: FLdPr Me
  loc_A1677A: VCallAd Control_ID_cboPeriodo
  loc_A1677D: FStAdFunc var_A0
  loc_A16780: FLdPr var_A0
  loc_A16783:  = Me.Text
  loc_A16788: FLdRfVar var_F4
  loc_A1678B: FLdPr Me
  loc_A1678E: VCallAd Control_ID_cboPeriodo
  loc_A16791: FStAdFunc var_F0
  loc_A16794: FLdPr var_F0
  loc_A16797:  = Me.Text
  loc_A1679C: FLdPr Me
  loc_A1679F: VCallAd Control_ID_mskDesde
  loc_A167A2: FStAdFunc var_88
  loc_A167A5: FLdPr var_88
  loc_A167A8: LateIdLdVar var_98 DispID_15 0
  loc_A167AF: CStrVarTmp
  loc_A167B0: FStStrNoPop var_9C
  loc_A167B3: CDateStr
  loc_A167B5: CVarDate var_C4
  loc_A167B9: HardType
  loc_A167BA: LitI2_Byte 1
  loc_A167BC: LitI2_Byte 1
  loc_A167BE: ILdRf var_A4
  loc_A167C1: CI2Str
  loc_A167C3: FLdRfVar var_B4
  loc_A167C6: ImpAdCallFPR4  = DateSerial(, , )
  loc_A167CB: FLdRfVar var_B4
  loc_A167CE: EqVar var_D4
  loc_A167D2: FLdPr Me
  loc_A167D5: VCallAd Control_ID_mskHasta
  loc_A167D8: FStAdFunc var_D8
  loc_A167DB: FLdPr var_D8
  loc_A167DE: LateIdLdVar var_E8 DispID_15 0
  loc_A167E5: CStrVarTmp
  loc_A167E6: FStStrNoPop var_EC
  loc_A167E9: CDateStr
  loc_A167EB: CVarDate var_114
  loc_A167EF: HardType
  loc_A167F0: LitI2_Byte &H1F
  loc_A167F2: LitI2_Byte 1
  loc_A167F4: ILdRf var_F4
  loc_A167F7: CI2Str
  loc_A167F9: FLdRfVar var_104
  loc_A167FC: ImpAdCallFPR4  = DateSerial(, , )
  loc_A16801: FLdRfVar var_104
  loc_A16804: EqVar var_124
  loc_A16808: AndVar var_134
  loc_A1680C: CBoolVarNull
  loc_A1680E: FFreeStr var_9C = "": var_A4 = "": var_EC = ""
  loc_A16819: FFreeAd var_88 = "": var_A0 = "": var_D8 = ""
  loc_A16824: FFreeVar var_98 = "": var_B4 = "": var_E8 = ""
  loc_A1682F: BranchF loc_A16840
  loc_A16832: LitStr "EjePreGtoMes.txt"
  loc_A16835: FLdPr Me
  loc_A16838: Me.Tag = from_stack_1
  loc_A1683D: Branch loc_A168B9
  loc_A16840: FLdRfVar var_A4
  loc_A16843: FLdPr Me
  loc_A16846: VCallAd Control_ID_cboPeriodo
  loc_A16849: FStAdFunc var_A0
  loc_A1684C: FLdPr var_A0
  loc_A1684F:  = Me.Text
  loc_A16854: FLdPr Me
  loc_A16857: VCallAd Control_ID_mskDesde
  loc_A1685A: FStAdFunc var_88
  loc_A1685D: FLdPr var_88
  loc_A16860: LateIdLdVar var_98 DispID_15 0
  loc_A16867: CStrVarTmp
  loc_A16868: FStStrNoPop var_9C
  loc_A1686B: CDateStr
  loc_A1686D: CVarDate var_C4
  loc_A16871: HardType
  loc_A16872: LitI2_Byte 1
  loc_A16874: LitI2_Byte 1
  loc_A16876: ILdRf var_A4
  loc_A16879: CI2Str
  loc_A1687B: FLdRfVar var_B4
  loc_A1687E: ImpAdCallFPR4  = DateSerial(, , )
  loc_A16883: FLdRfVar var_B4
  loc_A16886: EqVarBool
  loc_A16888: FFreeStr var_9C = ""
  loc_A1688F: FFreeAd var_88 = ""
  loc_A16896: FFreeVar var_98 = ""
  loc_A1689D: BranchF loc_A168AE
  loc_A168A0: LitStr "EjePreGtoAcu.txt"
  loc_A168A3: FLdPr Me
  loc_A168A6: Me.Tag = from_stack_1
  loc_A168AB: Branch loc_A168B9
  loc_A168AE: LitStr "EjePreGtoMes.txt"
  loc_A168B1: FLdPr Me
  loc_A168B4: Me.Tag = from_stack_1
  loc_A168B9: LitI2_Byte 0
  loc_A168BB: ILdRf Me
  loc_A168BE: CastAd
  loc_A168C1: FStAdFunc var_88
  loc_A168C4: FLdRfVar var_88
  loc_A168C7: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_A168CC: FFree1Ad var_88
  loc_A168CF: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94AAA8
  'Data Table: 4CFE80
  loc_94AA94: FLdPr Me
  loc_94AA97: VCallAd Control_ID_mskDesde
  loc_94AA9A: CVarAd
  loc_94AA9E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AAA3: FFree1Var var_94 = ""
  loc_94AAA6: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B2EC4
  'Data Table: 4CFE80
  loc_9B2E28: FLdPr Me
  loc_9B2E2B: VCallAd Control_ID_mskDesde
  loc_9B2E2E: FStAdFunc var_88
  loc_9B2E31: FLdPr var_88
  loc_9B2E34: LateIdLdVar var_98 DispID_15 0
  loc_9B2E3B: PopAd
  loc_9B2E3D: FLdPr Me
  loc_9B2E40: VCallAd Control_ID_mskDesde
  loc_9B2E43: FStAdFunc var_AC
  loc_9B2E46: LitI2_Byte &HFF
  loc_9B2E48: PopTmpLdAd2 var_A2
  loc_9B2E4B: FLdZeroAd var_AC
  loc_9B2E4E: FStAdFunc var_A0
  loc_9B2E51: FLdRfVar var_A0
  loc_9B2E54: LitStr vbNullString
  loc_9B2E57: LitI2_Byte 0
  loc_9B2E59: LitI2_Byte 0
  loc_9B2E5B: FLdRfVar var_98
  loc_9B2E5E: CStrVarTmp
  loc_9B2E5F: FStStrNoPop var_9C
  loc_9B2E62: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B2E67: FStStrNoPop var_A8
  loc_9B2E6A: FLdPr Me
  loc_9B2E6D: MemStStrCopy
  loc_9B2E71: FFreeStr var_9C = ""
  loc_9B2E78: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2E81: FFree1Var var_98 = ""
  loc_9B2E84: FLdPr Me
  loc_9B2E87: VCallAd Control_ID_mskDesde
  loc_9B2E8A: FStAdFunc var_B0
  loc_9B2E8D: LitNothing
  loc_9B2E8F: CastAd
  loc_9B2E92: FStAdFunc var_AC
  loc_9B2E95: FLdRfVar var_AC
  loc_9B2E98: FLdZeroAd var_B0
  loc_9B2E9B: FStAdFuncNoPop
  loc_9B2E9E: CastAd
  loc_9B2EA1: FStAdFunc var_A0
  loc_9B2EA4: FLdRfVar var_A0
  loc_9B2EA7: FLdPr Me
  loc_9B2EAA: MemLdRfVar from_stack_1.global_124
  loc_9B2EAD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B2EB2: IStI2 arg_C
  loc_9B2EB5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2EC0: ExitProcHresult
  loc_9B2EC1: NeI2
  loc_9B2EC2: ImpAdLdRf MemVar_7C
End Function

Private Sub mskHasta_UnknownEvent_0 '94A4C0
  'Data Table: 4CFE80
  loc_94A4AC: FLdPr Me
  loc_94A4AF: VCallAd Control_ID_mskHasta
  loc_94A4B2: CVarAd
  loc_94A4B6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A4BB: FFree1Var var_94 = ""
  loc_94A4BE: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B2CF4
  'Data Table: 4CFE80
  loc_9B2C58: FLdPr Me
  loc_9B2C5B: VCallAd Control_ID_mskHasta
  loc_9B2C5E: FStAdFunc var_88
  loc_9B2C61: FLdPr var_88
  loc_9B2C64: LateIdLdVar var_98 DispID_15 0
  loc_9B2C6B: PopAd
  loc_9B2C6D: FLdPr Me
  loc_9B2C70: VCallAd Control_ID_mskHasta
  loc_9B2C73: FStAdFunc var_AC
  loc_9B2C76: LitI2_Byte 0
  loc_9B2C78: PopTmpLdAd2 var_A2
  loc_9B2C7B: FLdZeroAd var_AC
  loc_9B2C7E: FStAdFunc var_A0
  loc_9B2C81: FLdRfVar var_A0
  loc_9B2C84: LitStr vbNullString
  loc_9B2C87: LitI2_Byte 0
  loc_9B2C89: LitI2_Byte 0
  loc_9B2C8B: FLdRfVar var_98
  loc_9B2C8E: CStrVarTmp
  loc_9B2C8F: FStStrNoPop var_9C
  loc_9B2C92: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B2C97: FStStrNoPop var_A8
  loc_9B2C9A: FLdPr Me
  loc_9B2C9D: MemStStrCopy
  loc_9B2CA1: FFreeStr var_9C = ""
  loc_9B2CA8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2CB1: FFree1Var var_98 = ""
  loc_9B2CB4: FLdPr Me
  loc_9B2CB7: VCallAd Control_ID_mskHasta
  loc_9B2CBA: FStAdFunc var_B0
  loc_9B2CBD: LitNothing
  loc_9B2CBF: CastAd
  loc_9B2CC2: FStAdFunc var_AC
  loc_9B2CC5: FLdRfVar var_AC
  loc_9B2CC8: FLdZeroAd var_B0
  loc_9B2CCB: FStAdFuncNoPop
  loc_9B2CCE: CastAd
  loc_9B2CD1: FStAdFunc var_A0
  loc_9B2CD4: FLdRfVar var_A0
  loc_9B2CD7: FLdPr Me
  loc_9B2CDA: MemLdRfVar from_stack_1.global_124
  loc_9B2CDD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B2CE2: IStI2 arg_C
  loc_9B2CE5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2CF0: ExitProcHresult
End Function

Private Sub chkNotCodiPart_Click() '993188
  'Data Table: 4CFE80
  loc_993138: FLdPr Me
  loc_99313B: VCallAd Control_ID_CodiPartMsk
  loc_99313E: FStAdFunc var_88
  loc_993141: FLdPr var_88
  loc_993144: LateIdLdVar var_98 DispID_22 0
  loc_99314B: CStrVarTmp
  loc_99314C: FStStrNoPop var_9C
  loc_99314F: LitStr vbNullString
  loc_993152: EqStr
  loc_993154: FFree1Str var_9C
  loc_993157: FFree1Ad var_88
  loc_99315A: FFree1Var var_98 = ""
  loc_99315D: BranchF loc_99317D
  loc_993160: LitI4 0
  loc_993165: CI2I4
  loc_993166: FLdPr Me
  loc_993169: VCallAd Control_ID_chkNotCodiPart
  loc_99316C: FStAdFunc var_88
  loc_99316F: FLdPr var_88
  loc_993172: Me.Value = from_stack_1
  loc_993177: FFree1Ad var_88
  loc_99317A: Branch loc_993187
  loc_99317D: LitI2_Byte 0
  loc_99317F: PopTmpLdAd2 var_9E
  loc_993182: Call CodiPartMsk_UnknownEvent_8()
  loc_993187: ExitProcHresult
End Sub

Private Sub Form_Load() '9EA954
  'Data Table: 4CFE80
  loc_9EA838: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9EA83D: PopAdLdVar
  loc_9EA83E: FLdPr Me
  loc_9EA841: VCallAd Control_ID_CodiPartMsk
  loc_9EA844: FStAdFunc var_A8
  loc_9EA847: FLdPr var_A8
  loc_9EA84A: LateIdSt
  loc_9EA84F: FFree1Ad var_A8
  loc_9EA852: LitVar_TRUE var_DC
  loc_9EA855: LitVar_FALSE
  loc_9EA859: LitStr "Municipalidad de Guaymallén"
  loc_9EA85C: LitStr "Municipalidad de Malargüe"
  loc_9EA85F: EqStr
  loc_9EA861: CVarBoolI2 var_94
  loc_9EA865: FLdRfVar var_EC
  loc_9EA868: ImpAdCallFPR4  = IIf(, , )
  loc_9EA86D: FLdRfVar var_EC
  loc_9EA870: CBoolVar
  loc_9EA872: ImpAdStI2 MemVar_C3D840
  loc_9EA875: FFreeVar var_94 = "": var_BC = "": var_DC = ""
  loc_9EA880: ILdRf Me
  loc_9EA883: CastAd
  loc_9EA886: FStAdFunc var_A8
  loc_9EA889: FLdRfVar var_A8
  loc_9EA88C: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9EA891: FFree1Ad var_A8
  loc_9EA894: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9EA897: FLdRfVar var_AC
  loc_9EA89A: NewIfNullPr clsperiodo
  loc_9EA89D: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9EA8A2: FLdRfVar var_F0
  loc_9EA8A5: FLdRfVar var_AC
  loc_9EA8A8: NewIfNullPr clsperiodo
  loc_9EA8AB: from_stack_1 = clsperiodo.RecordCount
  loc_9EA8B0: ILdRf var_F0
  loc_9EA8B3: LitI4 0
  loc_9EA8B8: GtI4
  loc_9EA8B9: BranchF loc_9EA94C
  loc_9EA8BC: FLdRfVar var_AC
  loc_9EA8BF: NewIfNullPr clsperiodo
  loc_9EA8C2: Call clsperiodo.MoveFirst()
  loc_9EA8C7: FLdRfVar var_F2
  loc_9EA8CA: FLdRfVar var_AC
  loc_9EA8CD: NewIfNullPr clsperiodo
  loc_9EA8D0: from_stack_1 = clsperiodo.EOF
  loc_9EA8D5: FLdI2 var_F2
  loc_9EA8D8: NotI4
  loc_9EA8D9: BranchF loc_9EA94C
  loc_9EA8DC: LitVar_Missing var_A4
  loc_9EA8DF: PopAdLdVar
  loc_9EA8E0: FLdRfVar var_BC
  loc_9EA8E3: FLdRfVar var_FC
  loc_9EA8E6: LitVarStr var_94, "PeriInfo"
  loc_9EA8EB: PopAdLdVar
  loc_9EA8EC: FLdRfVar var_F8
  loc_9EA8EF: FLdRfVar var_A8
  loc_9EA8F2: FLdRfVar var_AC
  loc_9EA8F5: NewIfNullPr clsperiodo
  loc_9EA8F8: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9EA8FD: FLdPr var_A8
  loc_9EA900:  = Me.Fields
  loc_9EA905: FLdPr var_F8
  loc_9EA908: from_stack_2 = Me.Item(from_stack_1)
  loc_9EA90D: FLdPr var_FC
  loc_9EA910:  = Me.Value
  loc_9EA915: FLdRfVar var_BC
  loc_9EA918: CStrVarTmp
  loc_9EA919: FStStrNoPop var_100
  loc_9EA91C: FLdPr Me
  loc_9EA91F: VCallAd Control_ID_cboPeriodo
  loc_9EA922: FStAdFunc var_104
  loc_9EA925: FLdPr var_104
  loc_9EA928: Me.AddItem from_stack_1, from_stack_2
  loc_9EA92D: FFree1Str var_100
  loc_9EA930: FFreeAd var_A8 = "": var_F8 = "": var_FC = ""
  loc_9EA93B: FFree1Var var_BC = ""
  loc_9EA93E: FLdRfVar var_AC
  loc_9EA941: NewIfNullPr clsperiodo
  loc_9EA944: Call clsperiodo.MoveSiguiente()
  loc_9EA949: Branch loc_9EA8C7
  loc_9EA94C: Call cmdNueva_Click()
  loc_9EA951: ExitProcHresult
  loc_9EA952: CStrVarTmp
End Sub

Private Sub Form_Unload(Cancel As Integer) '95E788
  'Data Table: 4CFE80
  loc_95E770: FLdPr Me
  loc_95E773: VCallAd Control_ID_wbbReporte
  loc_95E776: FStAdFunc var_88
  loc_95E779: FLdRfVar var_88
  loc_95E77C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95E781: FFree1Ad var_88
  loc_95E784: ExitProcHresult
End Sub

Private Sub cmdDesde_Click() '97FB68
  'Data Table: 4CFE80
  loc_97FB34: LitVar_Missing var_A4
  loc_97FB37: PopAdLdVar
  loc_97FB38: LitVarI4
  loc_97FB40: PopAdLdVar
  loc_97FB41: ImpAdLdRf MemVar_C3D9A8
  loc_97FB44: NewIfNullPr frmCalendario
  loc_97FB47: frmCalendario.Show from_stack_1, from_stack_2
  loc_97FB4C: ImpAdLdRf MemVar_C3D038
  loc_97FB4F: CDargRef
  loc_97FB53: FLdPr Me
  loc_97FB56: VCallAd Control_ID_mskDesde
  loc_97FB59: FStAdFunc var_A8
  loc_97FB5C: FLdPr var_A8
  loc_97FB5F: LateIdSt
  loc_97FB64: FFree1Ad var_A8
  loc_97FB67: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '980528
  'Data Table: 4CFE80
  loc_9804F4: LitVar_Missing var_A4
  loc_9804F7: PopAdLdVar
  loc_9804F8: LitVarI4
  loc_980500: PopAdLdVar
  loc_980501: ImpAdLdRf MemVar_C3D9A8
  loc_980504: NewIfNullPr frmCalendario
  loc_980507: frmCalendario.Show from_stack_1, from_stack_2
  loc_98050C: ImpAdLdRf MemVar_C3D038
  loc_98050F: CDargRef
  loc_980513: FLdPr Me
  loc_980516: VCallAd Control_ID_mskHasta
  loc_980519: FStAdFunc var_A8
  loc_98051C: FLdPr var_A8
  loc_98051F: LateIdSt
  loc_980524: FFree1Ad var_A8
  loc_980527: ExitProcHresult
End Sub

Public Function htmFileGet() '4D1664
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4D1673
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4D1682
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4D1691
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4D16A0
  bGenerado = Value
End Sub

Public Function bLogosGet() '4D16AF
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4D16BE
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '9E69FC
  'Data Table: 4CFE80
  loc_9E6908: LitI4 0
  loc_9E690D: LitI4 &HC
  loc_9E6912: FLdRfVar var_88
  loc_9E6915: Redim
  loc_9E691F: FLdPr Me
  loc_9E6922: VCallAd Control_ID_cboPeriodo
  loc_9E6925: CVarAd
  loc_9E6929: ParmAry1St
  loc_9E692F: FLdPr Me
  loc_9E6932: VCallAd Control_ID_mskDesde
  loc_9E6935: CVarAd
  loc_9E6939: ParmAry1St
  loc_9E693F: FLdPr Me
  loc_9E6942: VCallAd Control_ID_cmdDesde
  loc_9E6945: CVarAd
  loc_9E6949: ParmAry1St
  loc_9E694F: FLdPr Me
  loc_9E6952: VCallAd Control_ID_mskHasta
  loc_9E6955: CVarAd
  loc_9E6959: ParmAry1St
  loc_9E695F: FLdPr Me
  loc_9E6962: VCallAd Control_ID_cmdHasta
  loc_9E6965: CVarAd
  loc_9E6969: ParmAry1St
  loc_9E696F: FLdPr Me
  loc_9E6972: VCallAd Control_ID_CodiPartMsk
  loc_9E6975: CVarAd
  loc_9E6979: ParmAry1St
  loc_9E697F: FLdPr Me
  loc_9E6982: VCallAd Control_ID_cmdCodiPart
  loc_9E6985: CVarAd
  loc_9E6989: ParmAry1St
  loc_9E698F: FLdPr Me
  loc_9E6992: VCallAd Control_ID_chkNotCodiPart
  loc_9E6995: CVarAd
  loc_9E6999: ParmAry1St
  loc_9E699F: FLdPr Me
  loc_9E69A2: VCallAd Control_ID_optSintetico
  loc_9E69A5: CVarAd
  loc_9E69A9: ParmAry1St
  loc_9E69AF: FLdPr Me
  loc_9E69B2: VCallAd Control_ID_optAnalitico
  loc_9E69B5: CVarAd
  loc_9E69B9: ParmAry1St
  loc_9E69BF: FLdPr Me
  loc_9E69C2: VCallAd Control_ID_optConsolidado
  loc_9E69C5: CVarAd
  loc_9E69C9: ParmAry1St
  loc_9E69CF: FLdPr Me
  loc_9E69D2: VCallAd Control_ID_optJurisdiccion
  loc_9E69D5: CVarAd
  loc_9E69D9: ParmAry1St
  loc_9E69DF: FLdPr Me
  loc_9E69E2: VCallAd Control_ID_chkAgrupaMes
  loc_9E69E5: CVarAd
  loc_9E69E9: ParmAry1St
  loc_9E69EF: FLdRfVar var_88
  loc_9E69F2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E69F7: FLdRfVar var_88
  loc_9E69FA: Erase
  loc_9E69FB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B37CA8
  'Data Table: 4CFE80
  loc_B37300: LitI2_Byte 0
  loc_B37302: PopTmpLdAd2 var_86
  loc_B37305: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B3730A: FLdPr Me
  loc_B3730D: MemLdStr global_124
  loc_B37310: LitStr vbNullString
  loc_B37313: NeStr
  loc_B37315: BranchF loc_B3731B
  loc_B37318: Branch loc_B37C82
  loc_B3731B: LitI2_Byte 0
  loc_B3731D: PopTmpLdAd2 var_86
  loc_B37320: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B37325: FLdPr Me
  loc_B37328: MemLdStr global_124
  loc_B3732B: LitStr vbNullString
  loc_B3732E: NeStr
  loc_B37330: BranchF loc_B37336
  loc_B37333: Branch loc_B37C82
  loc_B37336: FLdPr Me
  loc_B37339: MemLdI2 bGenerado
  loc_B3733C: BranchF loc_B37340
  loc_B3733F: ExitProcHresult
  loc_B37340: LitVarStr var_98, "Generando reporte..."
  loc_B37345: PopAdLdVar
  loc_B37346: FLdPr Me
  loc_B37349: VCallAd Control_ID_statusBar
  loc_B3734C: FStAdFunc var_AC
  loc_B3734F: FLdPr var_AC
  loc_B37352: LateIdSt
  loc_B37357: FFree1Ad var_AC
  loc_B3735A: LitI4 &HB
  loc_B3735F: CI2I4
  loc_B37360: FLdPr Me
  loc_B37363: Me.MousePointer = from_stack_1
  loc_B37368: LitStr "Municipalidad de Guaymallén"
  loc_B3736B: LitStr "Municipalidad de Tupungato"
  loc_B3736E: EqStr
  loc_B37370: BranchF loc_B3737E
  loc_B37373: LitI2_Byte 3
  loc_B37375: FLdPr Me
  loc_B37378: MemStI2 global_80
  loc_B3737B: Branch loc_B3739C
  loc_B3737E: LitStr "Municipalidad de Guaymallén"
  loc_B37381: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B37384: EqStr
  loc_B37386: BranchF loc_B37394
  loc_B37389: LitI2_Byte 3
  loc_B3738B: FLdPr Me
  loc_B3738E: MemStI2 global_80
  loc_B37391: Branch loc_B3739C
  loc_B37394: LitI2_Byte 3
  loc_B37396: FLdPr Me
  loc_B37399: MemStI2 global_80
  loc_B3739C: FLdPr Me
  loc_B3739F: MemLdRfVar from_stack_1.global_72
  loc_B373A2: NewIfNullAd
  loc_B373A5: FStAd var_B0 
  loc_B373A9: FLdRfVar var_F4
  loc_B373AC: FLdPr Me
  loc_B373AF: VCallAd Control_ID_cboPeriodo
  loc_B373B2: FStAdFunc var_F0
  loc_B373B5: FLdPr var_F0
  loc_B373B8:  = Me.Text
  loc_B373BD: FLdPr Me
  loc_B373C0: VCallAd Control_ID_CodiPartMsk
  loc_B373C3: FStAdFunc var_AC
  loc_B373C6: FLdPr var_AC
  loc_B373C9: LateIdLdVar var_C0 DispID_22 0
  loc_B373D0: PopAd
  loc_B373D2: FLdRfVar var_86
  loc_B373D5: FLdPr Me
  loc_B373D8: VCallAd Control_ID_chkNotCodiPart
  loc_B373DB: FStAdFunc var_C4
  loc_B373DE: FLdPr var_C4
  loc_B373E1:  = Me.Value
  loc_B373E6: FLdPr Me
  loc_B373E9: VCallAd Control_ID_mskDesde
  loc_B373EC: FStAdFunc var_C8
  loc_B373EF: FLdPr var_C8
  loc_B373F2: LateIdLdVar var_D8 DispID_15 0
  loc_B373F9: PopAd
  loc_B373FB: FLdPr Me
  loc_B373FE: VCallAd Control_ID_mskHasta
  loc_B37401: FStAdFunc var_DC
  loc_B37404: FLdPr var_DC
  loc_B37407: LateIdLdVar var_EC DispID_15 0
  loc_B3740E: PopAd
  loc_B37410: FLdRfVar var_106
  loc_B37413: FLdPr Me
  loc_B37416: VCallAd Control_ID_optSintetico
  loc_B37419: FStAdFunc var_104
  loc_B3741C: FLdPr var_104
  loc_B3741F:  = Me.Value
  loc_B37424: FLdRfVar var_10E
  loc_B37427: FLdPr Me
  loc_B3742A: VCallAd Control_ID_optConsolidado
  loc_B3742D: FStAdFunc var_10C
  loc_B37430: FLdPr var_10C
  loc_B37433:  = Me.Value
  loc_B37438: FLdRfVar var_110
  loc_B3743B: FLdI2 var_10E
  loc_B3743E: FLdI2 var_106
  loc_B37441: FLdRfVar var_EC
  loc_B37444: CStrVarTmp
  loc_B37445: FStStrNoPop var_100
  loc_B37448: FLdRfVar var_D8
  loc_B3744B: CStrVarTmp
  loc_B3744C: FStStrNoPop var_FC
  loc_B3744F: FLdI2 var_86
  loc_B37452: CI4UI1
  loc_B37453: LitI4 1
  loc_B37458: NeI4
  loc_B37459: FLdRfVar var_C0
  loc_B3745C: CStrVarTmp
  loc_B3745D: FStStrNoPop var_F8
  loc_B37460: ILdRf var_F4
  loc_B37463: FLdPr var_B0
  loc_B37466: from_stack_8v = clsimputacion.GenerarEjecucion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_B3746B: FLdI2 var_110
  loc_B3746E: NotI4
  loc_B3746F: FFreeStr var_F4 = "": var_F8 = "": var_FC = ""
  loc_B3747A: FFreeAd var_AC = "": var_C4 = "": var_C8 = "": var_DC = "": var_F0 = "": var_104 = ""
  loc_B3748B: FFreeVar var_C0 = "": var_D8 = ""
  loc_B37494: BranchF loc_B374A7
  loc_B37497: LitI4 0
  loc_B3749C: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B3749F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B374A4: Branch loc_B37C82
  loc_B374A7: LitI4 1
  loc_B374AC: LitI4 1
  loc_B374B1: FLdPr Me
  loc_B374B4: MemLdRfVar from_stack_1.global_104
  loc_B374B7: Redim
  loc_B374C1: LitI2_Byte 0
  loc_B374C3: FLdPr Me
  loc_B374C6: MemStI2 global_108
  loc_B374C9: LitI4 1
  loc_B374CE: LitI4 1
  loc_B374D3: FLdPr Me
  loc_B374D6: MemLdRfVar from_stack_1.global_120
  loc_B374D9: Redim
  loc_B374E3: FLdPr var_B0
  loc_B374E6: Call clsimputacion.MoveFirst()
  loc_B374EB: Call Proc_147_35_9E01C4()
  loc_B374F0: FLdPr Me
  loc_B374F3: VCallAd Control_ID_optJurisdiccion
  loc_B374F6: CVarAd
  loc_B374FA: CBoolVarNull
  loc_B374FC: FFree1Var var_C0 = ""
  loc_B374FF: BranchF loc_B3776C
  loc_B37502: FLdRfVar var_86
  loc_B37505: FLdPr var_B0
  loc_B37508: from_stack_1 = clsimputacion.EOF
  loc_B3750D: FLdI2 var_86
  loc_B37510: NotI4
  loc_B37511: BranchF loc_B37769
  loc_B37514: FLdRfVar var_C0
  loc_B37517: FLdRfVar var_C8
  loc_B3751A: LitVarStr var_98, "CodiOrga"
  loc_B3751F: PopAdLdVar
  loc_B37520: FLdRfVar var_C4
  loc_B37523: FLdRfVar var_AC
  loc_B37526: FLdPr var_B0
  loc_B37529: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B3752E: FLdPr var_AC
  loc_B37531:  = Me.Fields
  loc_B37536: FLdPr var_C4
  loc_B37539: from_stack_2 = Me.Item(from_stack_1)
  loc_B3753E: FLdPr var_C8
  loc_B37541:  = Me.Value
  loc_B37546: FLdRfVar var_C0
  loc_B37549: FLdPr Me
  loc_B3754C: MemLdI2 global_108
  loc_B3754F: CI4UI1
  loc_B37550: FLdPr Me
  loc_B37553: MemLdStr global_104
  loc_B37556: Ary1LdPr
  loc_B37557: MemLdStr global_0
  loc_B3755A: CVarStr var_A8
  loc_B3755D: HardType
  loc_B3755E: NeVarBool
  loc_B37560: FFreeAd var_AC = "": var_C4 = ""
  loc_B37569: FFree1Var var_C0 = ""
  loc_B3756C: BranchF loc_B37577
  loc_B3756F: Call Proc_147_35_9E01C4()
  loc_B37574: Branch loc_B37766
  loc_B37577: FLdRfVar var_C0
  loc_B3757A: FLdRfVar var_C8
  loc_B3757D: LitVarStr var_98, "CodiPart"
  loc_B37582: PopAdLdVar
  loc_B37583: FLdRfVar var_C4
  loc_B37586: FLdRfVar var_AC
  loc_B37589: FLdPr var_B0
  loc_B3758C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B37591: FLdPr var_AC
  loc_B37594:  = Me.Fields
  loc_B37599: FLdPr var_C4
  loc_B3759C: from_stack_2 = Me.Item(from_stack_1)
  loc_B375A1: FLdPr var_C8
  loc_B375A4:  = Me.Value
  loc_B375A9: LitI4 1
  loc_B375AE: FLdRfVar var_C0
  loc_B375B1: CStrVarTmp
  loc_B375B2: FStStrNoPop var_F4
  loc_B375B5: ImpAdCallI2 Left$(, )
  loc_B375BA: FStStrNoPop var_F8
  loc_B375BD: LitI4 1
  loc_B375C2: FLdPr Me
  loc_B375C5: MemLdI2 global_110
  loc_B375C8: CI4UI1
  loc_B375C9: FLdPr Me
  loc_B375CC: MemLdI2 global_108
  loc_B375CF: CI4UI1
  loc_B375D0: FLdPr Me
  loc_B375D3: MemLdStr global_104
  loc_B375D6: Ary1LdPr
  loc_B375D7: MemLdStr global_8
  loc_B375DA: Ary1LdPr
  loc_B375DB: MemLdStr global_0
  loc_B375DE: ImpAdCallI2 Left$(, )
  loc_B375E3: FStStrNoPop var_FC
  loc_B375E6: NeStr
  loc_B375E8: FFreeStr var_F4 = "": var_F8 = ""
  loc_B375F1: FFreeAd var_AC = "": var_C4 = ""
  loc_B375FA: FFree1Var var_C0 = ""
  loc_B375FD: BranchF loc_B37608
  loc_B37600: Call Proc_147_36_A56910()
  loc_B37605: Branch loc_B37766
  loc_B37608: FLdRfVar var_C0
  loc_B3760B: FLdRfVar var_C8
  loc_B3760E: LitVarStr var_98, "CodiPart"
  loc_B37613: PopAdLdVar
  loc_B37614: FLdRfVar var_C4
  loc_B37617: FLdRfVar var_AC
  loc_B3761A: FLdPr var_B0
  loc_B3761D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B37622: FLdPr var_AC
  loc_B37625:  = Me.Fields
  loc_B3762A: FLdPr var_C4
  loc_B3762D: from_stack_2 = Me.Item(from_stack_1)
  loc_B37632: FLdPr var_C8
  loc_B37635:  = Me.Value
  loc_B3763A: LitI4 2
  loc_B3763F: FLdRfVar var_C0
  loc_B37642: CStrVarTmp
  loc_B37643: FStStrNoPop var_F4
  loc_B37646: ImpAdCallI2 Left$(, )
  loc_B3764B: FStStrNoPop var_F8
  loc_B3764E: LitI4 2
  loc_B37653: FLdPr Me
  loc_B37656: MemLdI2 global_112
  loc_B37659: CI4UI1
  loc_B3765A: FLdPr Me
  loc_B3765D: MemLdI2 global_110
  loc_B37660: CI4UI1
  loc_B37661: FLdPr Me
  loc_B37664: MemLdI2 global_108
  loc_B37667: CI4UI1
  loc_B37668: FLdPr Me
  loc_B3766B: MemLdStr global_104
  loc_B3766E: Ary1LdPr
  loc_B3766F: MemLdStr global_8
  loc_B37672: Ary1LdPr
  loc_B37673: MemLdStr global_396
  loc_B37676: Ary1LdPr
  loc_B37677: MemLdStr global_0
  loc_B3767A: ImpAdCallI2 Left$(, )
  loc_B3767F: FStStrNoPop var_FC
  loc_B37682: NeStr
  loc_B37684: FFreeStr var_F4 = "": var_F8 = ""
  loc_B3768D: FFreeAd var_AC = "": var_C4 = ""
  loc_B37696: FFree1Var var_C0 = ""
  loc_B37699: BranchF loc_B376A4
  loc_B3769C: Call Proc_147_37_A62570()
  loc_B376A1: Branch loc_B37766
  loc_B376A4: FLdRfVar var_C0
  loc_B376A7: FLdRfVar var_C8
  loc_B376AA: LitVarStr var_98, "CodiPart"
  loc_B376AF: PopAdLdVar
  loc_B376B0: FLdRfVar var_C4
  loc_B376B3: FLdRfVar var_AC
  loc_B376B6: FLdPr var_B0
  loc_B376B9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B376BE: FLdPr var_AC
  loc_B376C1:  = Me.Fields
  loc_B376C6: FLdPr var_C4
  loc_B376C9: from_stack_2 = Me.Item(from_stack_1)
  loc_B376CE: FLdPr var_C8
  loc_B376D1:  = Me.Value
  loc_B376D6: FLdPr Me
  loc_B376D9: MemLdI2 global_108
  loc_B376DC: CI4UI1
  loc_B376DD: FLdRfVar var_C0
  loc_B376E0: CStrVarTmp
  loc_B376E1: FStStrNoPop var_F4
  loc_B376E4: ImpAdCallI2 Left$(, )
  loc_B376E9: FStStrNoPop var_F8
  loc_B376EC: FLdPr Me
  loc_B376EF: MemLdI2 global_80
  loc_B376F2: CI4UI1
  loc_B376F3: FLdPr Me
  loc_B376F6: MemLdI2 global_114
  loc_B376F9: CI4UI1
  loc_B376FA: FLdPr Me
  loc_B376FD: MemLdI2 global_112
  loc_B37700: CI4UI1
  loc_B37701: FLdPr Me
  loc_B37704: MemLdI2 global_110
  loc_B37707: CI4UI1
  loc_B37708: FLdPr Me
  loc_B3770B: MemLdI2 global_108
  loc_B3770E: CI4UI1
  loc_B3770F: FLdPr Me
  loc_B37712: MemLdStr global_104
  loc_B37715: Ary1LdPr
  loc_B37716: MemLdStr global_8
  loc_B37719: Ary1LdPr
  loc_B3771A: MemLdStr global_396
  loc_B3771D: Ary1LdPr
  loc_B3771E: MemLdStr global_396
  loc_B37721: Ary1LdPr
  loc_B37722: MemLdStr global_0
  loc_B37725: ImpAdCallI2 Left$(, )
  loc_B3772A: FStStrNoPop var_FC
  loc_B3772D: NeStr
  loc_B3772F: FFreeStr var_F4 = "": var_F8 = ""
  loc_B37738: FFreeAd var_AC = "": var_C4 = ""
  loc_B37741: FFree1Var var_C0 = ""
  loc_B37744: BranchF loc_B3774F
  loc_B37747: Call Proc_147_38_A8B588()
  loc_B3774C: Branch loc_B37766
  loc_B3774F: FLdPr Me
  loc_B37752: VCallAd Control_ID_optAnalitico
  loc_B37755: CVarAd
  loc_B37759: CBoolVarNull
  loc_B3775B: FFree1Var var_C0 = ""
  loc_B3775E: BranchF loc_B37766
  loc_B37761: Call Proc_147_39_A74E14()
  loc_B37766: Branch loc_B37502
  loc_B37769: Branch loc_B3798A
  loc_B3776C: FLdRfVar var_86
  loc_B3776F: FLdPr var_B0
  loc_B37772: from_stack_1 = clsimputacion.EOF
  loc_B37777: FLdI2 var_86
  loc_B3777A: NotI4
  loc_B3777B: BranchF loc_B3798A
  loc_B3777E: FLdRfVar var_C0
  loc_B37781: FLdRfVar var_C8
  loc_B37784: LitVarStr var_98, "CodiPart"
  loc_B37789: PopAdLdVar
  loc_B3778A: FLdRfVar var_C4
  loc_B3778D: FLdRfVar var_AC
  loc_B37790: FLdPr var_B0
  loc_B37793: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B37798: FLdPr var_AC
  loc_B3779B:  = Me.Fields
  loc_B377A0: FLdPr var_C4
  loc_B377A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B377A8: FLdPr var_C8
  loc_B377AB:  = Me.Value
  loc_B377B0: LitI4 1
  loc_B377B5: FLdRfVar var_C0
  loc_B377B8: CStrVarTmp
  loc_B377B9: FStStrNoPop var_F4
  loc_B377BC: ImpAdCallI2 Left$(, )
  loc_B377C1: FStStrNoPop var_F8
  loc_B377C4: LitI4 1
  loc_B377C9: FLdPr Me
  loc_B377CC: MemLdI2 global_110
  loc_B377CF: CI4UI1
  loc_B377D0: FLdPr Me
  loc_B377D3: MemLdI2 global_108
  loc_B377D6: CI4UI1
  loc_B377D7: FLdPr Me
  loc_B377DA: MemLdStr global_104
  loc_B377DD: Ary1LdPr
  loc_B377DE: MemLdStr global_8
  loc_B377E1: Ary1LdPr
  loc_B377E2: MemLdStr global_0
  loc_B377E5: ImpAdCallI2 Left$(, )
  loc_B377EA: FStStrNoPop var_FC
  loc_B377ED: NeStr
  loc_B377EF: FFreeStr var_F4 = "": var_F8 = ""
  loc_B377F8: FFreeAd var_AC = "": var_C4 = ""
  loc_B37801: FFree1Var var_C0 = ""
  loc_B37804: BranchF loc_B3780F
  loc_B37807: Call Proc_147_36_A56910()
  loc_B3780C: Branch loc_B37987
  loc_B3780F: FLdRfVar var_C0
  loc_B37812: FLdRfVar var_C8
  loc_B37815: LitVarStr var_98, "CodiPart"
  loc_B3781A: PopAdLdVar
  loc_B3781B: FLdRfVar var_C4
  loc_B3781E: FLdRfVar var_AC
  loc_B37821: FLdPr var_B0
  loc_B37824: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B37829: FLdPr var_AC
  loc_B3782C:  = Me.Fields
  loc_B37831: FLdPr var_C4
  loc_B37834: from_stack_2 = Me.Item(from_stack_1)
  loc_B37839: FLdPr var_C8
  loc_B3783C:  = Me.Value
  loc_B37841: LitI4 2
  loc_B37846: FLdRfVar var_C0
  loc_B37849: CStrVarTmp
  loc_B3784A: FStStrNoPop var_F4
  loc_B3784D: ImpAdCallI2 Left$(, )
  loc_B37852: FStStrNoPop var_F8
  loc_B37855: LitI4 2
  loc_B3785A: FLdPr Me
  loc_B3785D: MemLdI2 global_112
  loc_B37860: CI4UI1
  loc_B37861: FLdPr Me
  loc_B37864: MemLdI2 global_110
  loc_B37867: CI4UI1
  loc_B37868: FLdPr Me
  loc_B3786B: MemLdI2 global_108
  loc_B3786E: CI4UI1
  loc_B3786F: FLdPr Me
  loc_B37872: MemLdStr global_104
  loc_B37875: Ary1LdPr
  loc_B37876: MemLdStr global_8
  loc_B37879: Ary1LdPr
  loc_B3787A: MemLdStr global_396
  loc_B3787D: Ary1LdPr
  loc_B3787E: MemLdStr global_0
  loc_B37881: ImpAdCallI2 Left$(, )
  loc_B37886: FStStrNoPop var_FC
  loc_B37889: NeStr
  loc_B3788B: FFreeStr var_F4 = "": var_F8 = ""
  loc_B37894: FFreeAd var_AC = "": var_C4 = ""
  loc_B3789D: FFree1Var var_C0 = ""
  loc_B378A0: BranchF loc_B378AB
  loc_B378A3: Call Proc_147_37_A62570()
  loc_B378A8: Branch loc_B37987
  loc_B378AB: FLdRfVar var_C0
  loc_B378AE: FLdRfVar var_C8
  loc_B378B1: LitVarStr var_98, "CodiPart"
  loc_B378B6: PopAdLdVar
  loc_B378B7: FLdRfVar var_C4
  loc_B378BA: FLdRfVar var_AC
  loc_B378BD: FLdPr var_B0
  loc_B378C0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B378C5: FLdPr var_AC
  loc_B378C8:  = Me.Fields
  loc_B378CD: FLdPr var_C4
  loc_B378D0: from_stack_2 = Me.Item(from_stack_1)
  loc_B378D5: FLdPr var_C8
  loc_B378D8:  = Me.Value
  loc_B378DD: FLdPr Me
  loc_B378E0: MemLdI2 global_108
  loc_B378E3: CI4UI1
  loc_B378E4: FLdRfVar var_C0
  loc_B378E7: CStrVarTmp
  loc_B378E8: FStStrNoPop var_F4
  loc_B378EB: ImpAdCallI2 Left$(, )
  loc_B378F0: FStStrNoPop var_F8
  loc_B378F3: FLdPr Me
  loc_B378F6: MemLdI2 global_80
  loc_B378F9: CI4UI1
  loc_B378FA: FLdPr Me
  loc_B378FD: MemLdI2 global_114
  loc_B37900: CI4UI1
  loc_B37901: FLdPr Me
  loc_B37904: MemLdI2 global_112
  loc_B37907: CI4UI1
  loc_B37908: FLdPr Me
  loc_B3790B: MemLdI2 global_110
  loc_B3790E: CI4UI1
  loc_B3790F: FLdPr Me
  loc_B37912: MemLdI2 global_108
  loc_B37915: CI4UI1
  loc_B37916: FLdPr Me
  loc_B37919: MemLdStr global_104
  loc_B3791C: Ary1LdPr
  loc_B3791D: MemLdStr global_8
  loc_B37920: Ary1LdPr
  loc_B37921: MemLdStr global_396
  loc_B37924: Ary1LdPr
  loc_B37925: MemLdStr global_396
  loc_B37928: Ary1LdPr
  loc_B37929: MemLdStr global_0
  loc_B3792C: ImpAdCallI2 Left$(, )
  loc_B37931: FStStrNoPop var_FC
  loc_B37934: NeStr
  loc_B37936: FLdRfVar var_86
  loc_B37939: FLdPr Me
  loc_B3793C: VCallAd Control_ID_optSintetico
  loc_B3793F: FStAdFunc var_DC
  loc_B37942: FLdPr var_DC
  loc_B37945:  = Me.Value
  loc_B3794A: FLdI2 var_86
  loc_B3794D: AndI4
  loc_B3794E: FFreeStr var_F4 = "": var_F8 = ""
  loc_B37957: FFreeAd var_AC = "": var_C4 = "": var_C8 = ""
  loc_B37962: FFree1Var var_C0 = ""
  loc_B37965: BranchF loc_B37970
  loc_B37968: Call Proc_147_38_A8B588()
  loc_B3796D: Branch loc_B37987
  loc_B37970: FLdPr Me
  loc_B37973: VCallAd Control_ID_optAnalitico
  loc_B37976: CVarAd
  loc_B3797A: CBoolVarNull
  loc_B3797C: FFree1Var var_C0 = ""
  loc_B3797F: BranchF loc_B37987
  loc_B37982: Call Proc_147_39_A74E14()
  loc_B37987: Branch loc_B3776C
  loc_B3798A: LitNothing
  loc_B3798C: FStAd var_B0 
  loc_B37990: LitI2_Byte 1
  loc_B37992: FLdPr Me
  loc_B37995: MemLdRfVar from_stack_1.global_108
  loc_B37998: FLdPr Me
  loc_B3799B: MemLdStr global_104
  loc_B3799E: LitI2_Byte 1
  loc_B379A0: FnUBound
  loc_B379A2: CI2I4
  loc_B379A3: ForI2 var_114
  loc_B379A9: LitI2_Byte 1
  loc_B379AB: FLdPr Me
  loc_B379AE: MemLdRfVar from_stack_1.global_110
  loc_B379B1: FLdPr Me
  loc_B379B4: MemLdI2 global_108
  loc_B379B7: CI4UI1
  loc_B379B8: FLdPr Me
  loc_B379BB: MemLdStr global_104
  loc_B379BE: Ary1LdPr
  loc_B379BF: MemLdStr global_8
  loc_B379C2: LitI2_Byte 1
  loc_B379C4: FnUBound
  loc_B379C6: CI2I4
  loc_B379C7: ForI2 var_118
  loc_B379CD: LitI2_Byte 1
  loc_B379CF: FLdPr Me
  loc_B379D2: MemLdRfVar from_stack_1.global_112
  loc_B379D5: FLdPr Me
  loc_B379D8: MemLdI2 global_110
  loc_B379DB: CI4UI1
  loc_B379DC: FLdPr Me
  loc_B379DF: MemLdI2 global_108
  loc_B379E2: CI4UI1
  loc_B379E3: FLdPr Me
  loc_B379E6: MemLdStr global_104
  loc_B379E9: Ary1LdPr
  loc_B379EA: MemLdStr global_8
  loc_B379ED: Ary1LdPr
  loc_B379EE: MemLdStr global_396
  loc_B379F1: LitI2_Byte 1
  loc_B379F3: FnUBound
  loc_B379F5: CI2I4
  loc_B379F6: ForI2 var_11C
  loc_B379FC: FLdPr Me
  loc_B379FF: VCallAd Control_ID_optAnalitico
  loc_B37A02: CVarAd
  loc_B37A06: CBoolVarNull
  loc_B37A08: FFree1Var var_C0 = ""
  loc_B37A0B: BranchF loc_B37ADB
  loc_B37A0E: LitI2_Byte 1
  loc_B37A10: FLdPr Me
  loc_B37A13: MemLdRfVar from_stack_1.global_114
  loc_B37A16: FLdPr Me
  loc_B37A19: MemLdI2 global_112
  loc_B37A1C: CI4UI1
  loc_B37A1D: FLdPr Me
  loc_B37A20: MemLdI2 global_110
  loc_B37A23: CI4UI1
  loc_B37A24: FLdPr Me
  loc_B37A27: MemLdI2 global_108
  loc_B37A2A: CI4UI1
  loc_B37A2B: FLdPr Me
  loc_B37A2E: MemLdStr global_104
  loc_B37A31: Ary1LdPr
  loc_B37A32: MemLdStr global_8
  loc_B37A35: Ary1LdPr
  loc_B37A36: MemLdStr global_396
  loc_B37A39: Ary1LdPr
  loc_B37A3A: MemLdStr global_396
  loc_B37A3D: LitI2_Byte 1
  loc_B37A3F: FnUBound
  loc_B37A41: CI2I4
  loc_B37A42: ForI2 var_120
  loc_B37A48: FLdPr Me
  loc_B37A4B: MemLdI2 global_112
  loc_B37A4E: CI4UI1
  loc_B37A4F: FLdPr Me
  loc_B37A52: MemLdI2 global_110
  loc_B37A55: CI4UI1
  loc_B37A56: FLdPr Me
  loc_B37A59: MemLdI2 global_108
  loc_B37A5C: CI4UI1
  loc_B37A5D: FLdPr Me
  loc_B37A60: MemLdStr global_104
  loc_B37A63: AryLock
  loc_B37A66: Ary1LdPr
  loc_B37A67: MemLdStr global_8
  loc_B37A6A: AryLock
  loc_B37A6D: Ary1LdPr
  loc_B37A6E: MemLdStr global_396
  loc_B37A71: AryLock
  loc_B37A74: Ary1LdPr
  loc_B37A75: MemLdRfVar from_stack_1.global_0
  loc_B37A78: FLdPr Me
  loc_B37A7B: MemLdI2 global_114
  loc_B37A7E: CI4UI1
  loc_B37A7F: FLdPr Me
  loc_B37A82: MemLdI2 global_112
  loc_B37A85: CI4UI1
  loc_B37A86: FLdPr Me
  loc_B37A89: MemLdI2 global_110
  loc_B37A8C: CI4UI1
  loc_B37A8D: FLdPr Me
  loc_B37A90: MemLdI2 global_108
  loc_B37A93: CI4UI1
  loc_B37A94: FLdPr Me
  loc_B37A97: MemLdStr global_104
  loc_B37A9A: AryLock
  loc_B37A9D: Ary1LdPr
  loc_B37A9E: MemLdStr global_8
  loc_B37AA1: AryLock
  loc_B37AA4: Ary1LdPr
  loc_B37AA5: MemLdStr global_396
  loc_B37AA8: AryLock
  loc_B37AAB: Ary1LdPr
  loc_B37AAC: MemLdStr global_396
  loc_B37AAF: AryLock
  loc_B37AB2: Ary1LdPr
  loc_B37AB3: MemLdRfVar from_stack_1.global_0
  loc_B37AB6: Call Proc_147_41_A0926C()
  loc_B37ABB: AryUnlock
  loc_B37ABE: AryUnlock
  loc_B37AC1: AryUnlock
  loc_B37AC4: AryUnlock
  loc_B37AC7: AryUnlock
  loc_B37ACA: AryUnlock
  loc_B37ACD: AryUnlock
  loc_B37AD0: FLdPr Me
  loc_B37AD3: MemLdRfVar from_stack_1.global_114
  loc_B37AD6: NextI2 var_120, loc_B37A48
  loc_B37ADB: FLdPr Me
  loc_B37ADE: MemLdI2 global_110
  loc_B37AE1: CI4UI1
  loc_B37AE2: FLdPr Me
  loc_B37AE5: MemLdI2 global_108
  loc_B37AE8: CI4UI1
  loc_B37AE9: FLdPr Me
  loc_B37AEC: MemLdStr global_104
  loc_B37AEF: AryLock
  loc_B37AF2: Ary1LdPr
  loc_B37AF3: MemLdStr global_8
  loc_B37AF6: AryLock
  loc_B37AF9: Ary1LdPr
  loc_B37AFA: MemLdRfVar from_stack_1.global_0
  loc_B37AFD: FLdPr Me
  loc_B37B00: MemLdI2 global_112
  loc_B37B03: CI4UI1
  loc_B37B04: FLdPr Me
  loc_B37B07: MemLdI2 global_110
  loc_B37B0A: CI4UI1
  loc_B37B0B: FLdPr Me
  loc_B37B0E: MemLdI2 global_108
  loc_B37B11: CI4UI1
  loc_B37B12: FLdPr Me
  loc_B37B15: MemLdStr global_104
  loc_B37B18: AryLock
  loc_B37B1B: Ary1LdPr
  loc_B37B1C: MemLdStr global_8
  loc_B37B1F: AryLock
  loc_B37B22: Ary1LdPr
  loc_B37B23: MemLdStr global_396
  loc_B37B26: AryLock
  loc_B37B29: Ary1LdPr
  loc_B37B2A: MemLdRfVar from_stack_1.global_0
  loc_B37B2D: Call Proc_147_41_A0926C()
  loc_B37B32: AryUnlock
  loc_B37B35: AryUnlock
  loc_B37B38: AryUnlock
  loc_B37B3B: AryUnlock
  loc_B37B3E: AryUnlock
  loc_B37B41: FLdPr Me
  loc_B37B44: MemLdRfVar from_stack_1.global_112
  loc_B37B47: NextI2 var_11C, loc_B379FC
  loc_B37B4C: FLdPr Me
  loc_B37B4F: MemLdI2 global_108
  loc_B37B52: CI4UI1
  loc_B37B53: FLdPr Me
  loc_B37B56: MemLdStr global_104
  loc_B37B59: AryLock
  loc_B37B5C: Ary1LdPr
  loc_B37B5D: MemLdRfVar from_stack_1.global_12
  loc_B37B60: FLdPr Me
  loc_B37B63: MemLdI2 global_110
  loc_B37B66: CI4UI1
  loc_B37B67: FLdPr Me
  loc_B37B6A: MemLdI2 global_108
  loc_B37B6D: CI4UI1
  loc_B37B6E: FLdPr Me
  loc_B37B71: MemLdStr global_104
  loc_B37B74: AryLock
  loc_B37B77: Ary1LdPr
  loc_B37B78: MemLdStr global_8
  loc_B37B7B: AryLock
  loc_B37B7E: Ary1LdPr
  loc_B37B7F: MemLdRfVar from_stack_1.global_0
  loc_B37B82: Call Proc_147_41_A0926C()
  loc_B37B87: AryUnlock
  loc_B37B8A: AryUnlock
  loc_B37B8D: AryUnlock
  loc_B37B90: FLdPr Me
  loc_B37B93: MemLdRfVar from_stack_1.global_110
  loc_B37B96: NextI2 var_118, loc_B379CD
  loc_B37B9B: LitI4 1
  loc_B37BA0: FLdPr Me
  loc_B37BA3: MemLdStr global_120
  loc_B37BA6: AryLock
  loc_B37BA9: Ary1LdRf
  loc_B37BAA: FLdPr Me
  loc_B37BAD: MemLdI2 global_108
  loc_B37BB0: CI4UI1
  loc_B37BB1: FLdPr Me
  loc_B37BB4: MemLdStr global_104
  loc_B37BB7: AryLock
  loc_B37BBA: Ary1LdPr
  loc_B37BBB: MemLdRfVar from_stack_1.global_12
  loc_B37BBE: Call Proc_147_41_A0926C()
  loc_B37BC3: AryUnlock
  loc_B37BC6: AryUnlock
  loc_B37BC9: FLdPr Me
  loc_B37BCC: MemLdRfVar from_stack_1.global_108
  loc_B37BCF: NextI2 var_114, loc_B379A9
  loc_B37BD4: LitI2_Byte &HFF
  loc_B37BD6: FLdPr Me
  loc_B37BD9: MemStI2 bGenerado
  loc_B37BDC: FLdRfVar var_86
  loc_B37BDF: FLdPr Me
  loc_B37BE2: VCallAd Control_ID_optSintetico
  loc_B37BE5: FStAdFunc var_AC
  loc_B37BE8: FLdPr var_AC
  loc_B37BEB:  = Me.Value
  loc_B37BF0: FLdI2 var_86
  loc_B37BF3: FFree1Ad var_AC
  loc_B37BF6: BranchF loc_B37C3F
  loc_B37BF9: LitI4 0
  loc_B37BFE: LitI4 1
  loc_B37C03: FLdRfVar var_140
  loc_B37C06: Redim
  loc_B37C10: FLdPr Me
  loc_B37C13: VCallAd Control_ID_optAnalitico
  loc_B37C16: CVarAd
  loc_B37C1A: ParmAry1St
  loc_B37C20: FLdPr Me
  loc_B37C23: VCallAd Control_ID_optSintetico
  loc_B37C26: CVarAd
  loc_B37C2A: ParmAry1St
  loc_B37C30: FLdRfVar var_140
  loc_B37C33: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B37C38: FLdRfVar var_140
  loc_B37C3B: Erase
  loc_B37C3C: Branch loc_B37C82
  loc_B37C3F: LitI4 0
  loc_B37C44: LitI4 1
  loc_B37C49: FLdRfVar var_140
  loc_B37C4C: Redim
  loc_B37C56: FLdPr Me
  loc_B37C59: VCallAd Control_ID_optSintetico
  loc_B37C5C: CVarAd
  loc_B37C60: ParmAry1St
  loc_B37C66: FLdPr Me
  loc_B37C69: VCallAd Control_ID_optAnalitico
  loc_B37C6C: CVarAd
  loc_B37C70: ParmAry1St
  loc_B37C76: FLdRfVar var_140
  loc_B37C79: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B37C7E: FLdRfVar var_140
  loc_B37C81: Erase
  loc_B37C82: LitI2_Byte 0
  loc_B37C84: FLdPr Me
  loc_B37C87: Me.MousePointer = from_stack_1
  loc_B37C8C: LitVarStr var_98, vbNullString
  loc_B37C91: PopAdLdVar
  loc_B37C92: FLdPr Me
  loc_B37C95: VCallAd Control_ID_statusBar
  loc_B37C98: FStAdFunc var_AC
  loc_B37C9B: FLdPr var_AC
  loc_B37C9E: LateIdSt
  loc_B37CA3: FFree1Ad var_AC
  loc_B37CA6: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'C1E29C
  'Data Table: 4CFE80
  loc_C1AE60: FLdRfVar var_88
  loc_C1AE63: LitI2_Byte 0
  loc_C1AE65: LitI2_Byte &HFF
  loc_C1AE67: ImpAdLdI4 MemVar_C3D83C
  loc_C1AE6A: FLdPr Me
  loc_C1AE6D: MemLdRfVar from_stack_1.global_84
  loc_C1AE70: NewIfNullPr IFileSystem3
  loc_C1AE73: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C1AE78: ILdRf var_88
  loc_C1AE7B: FLdPr Me
  loc_C1AE7E: MemStVarAd
  loc_C1AE82: FFree1Ad var_88
  loc_C1AE85: Call Proc_147_42_AF9E7C()
  loc_C1AE8A: LitI2_Byte 1
  loc_C1AE8C: FLdPr Me
  loc_C1AE8F: MemLdRfVar from_stack_1.global_108
  loc_C1AE92: FLdPr Me
  loc_C1AE95: MemLdStr global_104
  loc_C1AE98: LitI2_Byte 1
  loc_C1AE9A: FnUBound
  loc_C1AE9C: CI2I4
  loc_C1AE9D: ForI2 var_8C
  loc_C1AEA3: FLdPr Me
  loc_C1AEA6: VCallAd Control_ID_optJurisdiccion
  loc_C1AEA9: CVarAd
  loc_C1AEAD: CBoolVarNull
  loc_C1AEAF: FFree1Var var_9C = ""
  loc_C1AEB2: BranchF loc_C1AF33
  loc_C1AEB5: LitVarStr var_AC, "  <tr align=""left"" class=""Encabezado"">"
  loc_C1AEBA: PopAdLdVar
  loc_C1AEBB: FLdPr Me
  loc_C1AEBE: MemLdRfVar from_stack_1.htmFile
  loc_C1AEC1: LdPrVar
  loc_C1AEC3: LateMemCall
  loc_C1AEC9: LitStr "    <td colspan=""14"">Jurisdicción: "
  loc_C1AECC: FLdPr Me
  loc_C1AECF: MemLdI2 global_108
  loc_C1AED2: CI4UI1
  loc_C1AED3: FLdPr Me
  loc_C1AED6: MemLdStr global_104
  loc_C1AED9: Ary1LdPr
  loc_C1AEDA: MemLdStr global_0
  loc_C1AEDD: ConcatStr
  loc_C1AEDE: FStStrNoPop var_C0
  loc_C1AEE1: LitStr " - "
  loc_C1AEE4: ConcatStr
  loc_C1AEE5: FStStrNoPop var_C4
  loc_C1AEE8: FLdPr Me
  loc_C1AEEB: MemLdI2 global_108
  loc_C1AEEE: CI4UI1
  loc_C1AEEF: FLdPr Me
  loc_C1AEF2: MemLdStr global_104
  loc_C1AEF5: Ary1LdPr
  loc_C1AEF6: MemLdStr global_4
  loc_C1AEF9: ConcatStr
  loc_C1AEFA: FStStrNoPop var_C8
  loc_C1AEFD: LitStr "</td>"
  loc_C1AF00: ConcatStr
  loc_C1AF01: CVarStr var_9C
  loc_C1AF04: PopAdLdVar
  loc_C1AF05: FLdPr Me
  loc_C1AF08: MemLdRfVar from_stack_1.htmFile
  loc_C1AF0B: LdPrVar
  loc_C1AF0D: LateMemCall
  loc_C1AF13: FFreeStr var_C0 = "": var_C4 = ""
  loc_C1AF1C: FFree1Var var_9C = ""
  loc_C1AF1F: LitVarStr var_AC, "     </tr>"
  loc_C1AF24: PopAdLdVar
  loc_C1AF25: FLdPr Me
  loc_C1AF28: MemLdRfVar from_stack_1.htmFile
  loc_C1AF2B: LdPrVar
  loc_C1AF2D: LateMemCall
  loc_C1AF33: LitI2_Byte 1
  loc_C1AF35: FLdPr Me
  loc_C1AF38: MemLdRfVar from_stack_1.global_110
  loc_C1AF3B: FLdPr Me
  loc_C1AF3E: MemLdI2 global_108
  loc_C1AF41: CI4UI1
  loc_C1AF42: FLdPr Me
  loc_C1AF45: MemLdStr global_104
  loc_C1AF48: Ary1LdPr
  loc_C1AF49: MemLdStr global_8
  loc_C1AF4C: LitI2_Byte 1
  loc_C1AF4E: FnUBound
  loc_C1AF50: CI2I4
  loc_C1AF51: ForI2 var_CC
  loc_C1AF57: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_C1AF5C: PopAdLdVar
  loc_C1AF5D: FLdPr Me
  loc_C1AF60: MemLdRfVar from_stack_1.htmFile
  loc_C1AF63: LdPrVar
  loc_C1AF65: LateMemCall
  loc_C1AF6B: FLdPr Me
  loc_C1AF6E: MemLdI2 global_110
  loc_C1AF71: CI4UI1
  loc_C1AF72: FLdPr Me
  loc_C1AF75: MemLdI2 global_108
  loc_C1AF78: CI4UI1
  loc_C1AF79: FLdPr Me
  loc_C1AF7C: MemLdStr global_104
  loc_C1AF7F: AryLock
  loc_C1AF82: Ary1LdPr
  loc_C1AF83: MemLdStr global_8
  loc_C1AF86: AryLock
  loc_C1AF89: Ary1LdPr
  loc_C1AF8A: MemLdRfVar from_stack_1.global_0
  loc_C1AF8D: FStR4 var_D8
  loc_C1AF90: LitI4 0
  loc_C1AF95: LitI4 0
  loc_C1AF9A: LitI2_Byte 0
  loc_C1AF9C: LitStr "left"
  loc_C1AF9F: FMemLdR4 var_D8(0)
  loc_C1AFA4: LitStr "&nbsp;(Subtotal)<br>"
  loc_C1AFA7: ConcatStr
  loc_C1AFA8: FStStrNoPop var_C0
  loc_C1AFAB: FMemLdR4 var_D8(4)
  loc_C1AFB0: ConcatStr
  loc_C1AFB1: FStStrNoPop var_C4
  loc_C1AFB4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1AFB9: CVarStr var_9C
  loc_C1AFBC: PopAdLdVar
  loc_C1AFBD: FLdPr Me
  loc_C1AFC0: MemLdRfVar from_stack_1.htmFile
  loc_C1AFC3: LdPrVar
  loc_C1AFC5: LateMemCall
  loc_C1AFCB: FFreeStr var_C0 = ""
  loc_C1AFD2: FFree1Var var_9C = ""
  loc_C1AFD5: LitI4 0
  loc_C1AFDA: LitI4 0
  loc_C1AFDF: LitI2_Byte 0
  loc_C1AFE1: LitStr "right"
  loc_C1AFE4: FMemLdR4 var_D8(12)
  loc_C1AFE9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1AFEE: CVarStr var_9C
  loc_C1AFF1: PopAdLdVar
  loc_C1AFF2: FLdPr Me
  loc_C1AFF5: MemLdRfVar from_stack_1.htmFile
  loc_C1AFF8: LdPrVar
  loc_C1AFFA: LateMemCall
  loc_C1B000: FFree1Var var_9C = ""
  loc_C1B003: LitI4 0
  loc_C1B008: LitI4 0
  loc_C1B00D: LitI2_Byte 0
  loc_C1B00F: LitStr "left"
  loc_C1B012: FMemLdR4 var_D8(8)
  loc_C1B017: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B01C: CVarStr var_9C
  loc_C1B01F: PopAdLdVar
  loc_C1B020: FLdPr Me
  loc_C1B023: MemLdRfVar from_stack_1.htmFile
  loc_C1B026: LdPrVar
  loc_C1B028: LateMemCall
  loc_C1B02E: FFree1Var var_9C = ""
  loc_C1B031: LitI4 0
  loc_C1B036: LitI4 0
  loc_C1B03B: LitI2_Byte 0
  loc_C1B03D: LitStr "right"
  loc_C1B040: FMemLdR4 var_D8(16)
  loc_C1B045: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B04A: CVarStr var_9C
  loc_C1B04D: PopAdLdVar
  loc_C1B04E: FLdPr Me
  loc_C1B051: MemLdRfVar from_stack_1.htmFile
  loc_C1B054: LdPrVar
  loc_C1B056: LateMemCall
  loc_C1B05C: FFree1Var var_9C = ""
  loc_C1B05F: LitI4 0
  loc_C1B064: LitI4 0
  loc_C1B069: LitI2_Byte 0
  loc_C1B06B: LitStr "right"
  loc_C1B06E: FMemLdR4 var_D8(20)
  loc_C1B073: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B078: CVarStr var_9C
  loc_C1B07B: PopAdLdVar
  loc_C1B07C: FLdPr Me
  loc_C1B07F: MemLdRfVar from_stack_1.htmFile
  loc_C1B082: LdPrVar
  loc_C1B084: LateMemCall
  loc_C1B08A: FFree1Var var_9C = ""
  loc_C1B08D: LitI4 0
  loc_C1B092: LitI4 0
  loc_C1B097: LitI2_Byte 0
  loc_C1B099: LitStr "right"
  loc_C1B09C: FMemLdR4 var_D8(24)
  loc_C1B0A1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B0A6: CVarStr var_9C
  loc_C1B0A9: PopAdLdVar
  loc_C1B0AA: FLdPr Me
  loc_C1B0AD: MemLdRfVar from_stack_1.htmFile
  loc_C1B0B0: LdPrVar
  loc_C1B0B2: LateMemCall
  loc_C1B0B8: FFree1Var var_9C = ""
  loc_C1B0BB: LitI4 0
  loc_C1B0C0: LitI4 0
  loc_C1B0C5: LitI2_Byte 0
  loc_C1B0C7: LitStr "right"
  loc_C1B0CA: FMemLdR4 var_D8(28)
  loc_C1B0CF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B0D4: CVarStr var_9C
  loc_C1B0D7: PopAdLdVar
  loc_C1B0D8: FLdPr Me
  loc_C1B0DB: MemLdRfVar from_stack_1.htmFile
  loc_C1B0DE: LdPrVar
  loc_C1B0E0: LateMemCall
  loc_C1B0E6: FFree1Var var_9C = ""
  loc_C1B0E9: LitI4 0
  loc_C1B0EE: LitI4 0
  loc_C1B0F3: LitI2_Byte 0
  loc_C1B0F5: LitStr "right"
  loc_C1B0F8: FMemLdR4 var_D8(32)
  loc_C1B0FD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B102: CVarStr var_9C
  loc_C1B105: PopAdLdVar
  loc_C1B106: FLdPr Me
  loc_C1B109: MemLdRfVar from_stack_1.htmFile
  loc_C1B10C: LdPrVar
  loc_C1B10E: LateMemCall
  loc_C1B114: FFree1Var var_9C = ""
  loc_C1B117: LitI4 0
  loc_C1B11C: LitI4 0
  loc_C1B121: LitI2_Byte 0
  loc_C1B123: LitStr "right"
  loc_C1B126: FMemLdR4 var_D8(36)
  loc_C1B12B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B130: CVarStr var_9C
  loc_C1B133: PopAdLdVar
  loc_C1B134: FLdPr Me
  loc_C1B137: MemLdRfVar from_stack_1.htmFile
  loc_C1B13A: LdPrVar
  loc_C1B13C: LateMemCall
  loc_C1B142: FFree1Var var_9C = ""
  loc_C1B145: FLdPr Me
  loc_C1B148: VCallAd Control_ID_mskHasta
  loc_C1B14B: FStAdFunc var_88
  loc_C1B14E: FLdPr var_88
  loc_C1B151: LateIdLdVar var_9C DispID_15 0
  loc_C1B158: PopAd
  loc_C1B15A: LitStr "Municipalidad de Guaymallén"
  loc_C1B15D: LitStr "Municipalidad de Tupungato"
  loc_C1B160: EqStr
  loc_C1B162: CVarBoolI2 var_BC
  loc_C1B166: LitI4 5
  loc_C1B16B: FLdRfVar var_9C
  loc_C1B16E: CStrVarTmp
  loc_C1B16F: CVarStr var_E8
  loc_C1B172: FLdRfVar var_F8
  loc_C1B175: ImpAdCallFPR4  = Left(, )
  loc_C1B17A: FLdRfVar var_F8
  loc_C1B17D: LitVarStr var_AC, "31/12"
  loc_C1B182: HardType
  loc_C1B183: NeVar var_108
  loc_C1B187: AndVar var_118
  loc_C1B18B: CBoolVarNull
  loc_C1B18D: FFree1Ad var_88
  loc_C1B190: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1B19B: BranchF loc_C1B1CD
  loc_C1B19E: LitI4 0
  loc_C1B1A3: LitI4 0
  loc_C1B1A8: LitI2_Byte 0
  loc_C1B1AA: LitStr "right"
  loc_C1B1AD: LitStr "&nbsp;"
  loc_C1B1B0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B1B5: CVarStr var_9C
  loc_C1B1B8: PopAdLdVar
  loc_C1B1B9: FLdPr Me
  loc_C1B1BC: MemLdRfVar from_stack_1.htmFile
  loc_C1B1BF: LdPrVar
  loc_C1B1C1: LateMemCall
  loc_C1B1C7: FFree1Var var_9C = ""
  loc_C1B1CA: Branch loc_C1B1FB
  loc_C1B1CD: LitI4 0
  loc_C1B1D2: LitI4 0
  loc_C1B1D7: LitI2_Byte 0
  loc_C1B1D9: LitStr "right"
  loc_C1B1DC: FMemLdR4 var_D8(40)
  loc_C1B1E1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B1E6: CVarStr var_9C
  loc_C1B1E9: PopAdLdVar
  loc_C1B1EA: FLdPr Me
  loc_C1B1ED: MemLdRfVar from_stack_1.htmFile
  loc_C1B1F0: LdPrVar
  loc_C1B1F2: LateMemCall
  loc_C1B1F8: FFree1Var var_9C = ""
  loc_C1B1FB: LitI4 0
  loc_C1B200: LitI4 0
  loc_C1B205: LitI2_Byte 0
  loc_C1B207: LitStr "right"
  loc_C1B20A: FMemLdR4 var_D8(44)
  loc_C1B20F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B214: CVarStr var_9C
  loc_C1B217: PopAdLdVar
  loc_C1B218: FLdPr Me
  loc_C1B21B: MemLdRfVar from_stack_1.htmFile
  loc_C1B21E: LdPrVar
  loc_C1B220: LateMemCall
  loc_C1B226: FFree1Var var_9C = ""
  loc_C1B229: FLdPr Me
  loc_C1B22C: VCallAd Control_ID_mskHasta
  loc_C1B22F: FStAdFunc var_88
  loc_C1B232: FLdPr var_88
  loc_C1B235: LateIdLdVar var_9C DispID_15 0
  loc_C1B23C: PopAd
  loc_C1B23E: LitStr "Municipalidad de Guaymallén"
  loc_C1B241: LitStr "Municipalidad de Tupungato"
  loc_C1B244: EqStr
  loc_C1B246: CVarBoolI2 var_BC
  loc_C1B24A: LitI4 5
  loc_C1B24F: FLdRfVar var_9C
  loc_C1B252: CStrVarTmp
  loc_C1B253: CVarStr var_E8
  loc_C1B256: FLdRfVar var_F8
  loc_C1B259: ImpAdCallFPR4  = Left(, )
  loc_C1B25E: FLdRfVar var_F8
  loc_C1B261: LitVarStr var_AC, "31/12"
  loc_C1B266: HardType
  loc_C1B267: NeVar var_108
  loc_C1B26B: AndVar var_118
  loc_C1B26F: CBoolVarNull
  loc_C1B271: FFree1Ad var_88
  loc_C1B274: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1B27F: BranchF loc_C1B2B1
  loc_C1B282: LitI4 0
  loc_C1B287: LitI4 0
  loc_C1B28C: LitI2_Byte 0
  loc_C1B28E: LitStr "right"
  loc_C1B291: LitStr "&nbsp;"
  loc_C1B294: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B299: CVarStr var_9C
  loc_C1B29C: PopAdLdVar
  loc_C1B29D: FLdPr Me
  loc_C1B2A0: MemLdRfVar from_stack_1.htmFile
  loc_C1B2A3: LdPrVar
  loc_C1B2A5: LateMemCall
  loc_C1B2AB: FFree1Var var_9C = ""
  loc_C1B2AE: Branch loc_C1B2DF
  loc_C1B2B1: LitI4 0
  loc_C1B2B6: LitI4 0
  loc_C1B2BB: LitI2_Byte 0
  loc_C1B2BD: LitStr "right"
  loc_C1B2C0: FMemLdR4 var_D8(48)
  loc_C1B2C5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B2CA: CVarStr var_9C
  loc_C1B2CD: PopAdLdVar
  loc_C1B2CE: FLdPr Me
  loc_C1B2D1: MemLdRfVar from_stack_1.htmFile
  loc_C1B2D4: LdPrVar
  loc_C1B2D6: LateMemCall
  loc_C1B2DC: FFree1Var var_9C = ""
  loc_C1B2DF: LitI4 0
  loc_C1B2E4: LitI4 0
  loc_C1B2E9: LitI2_Byte 0
  loc_C1B2EB: LitStr "right"
  loc_C1B2EE: FMemLdR4 var_D8(52)
  loc_C1B2F3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B2F8: CVarStr var_9C
  loc_C1B2FB: PopAdLdVar
  loc_C1B2FC: FLdPr Me
  loc_C1B2FF: MemLdRfVar from_stack_1.htmFile
  loc_C1B302: LdPrVar
  loc_C1B304: LateMemCall
  loc_C1B30A: FFree1Var var_9C = ""
  loc_C1B30D: FLdPr Me
  loc_C1B310: VCallAd Control_ID_mskHasta
  loc_C1B313: FStAdFunc var_88
  loc_C1B316: FLdPr var_88
  loc_C1B319: LateIdLdVar var_9C DispID_15 0
  loc_C1B320: PopAd
  loc_C1B322: LitStr "Municipalidad de Guaymallén"
  loc_C1B325: LitStr "Municipalidad de Tupungato"
  loc_C1B328: EqStr
  loc_C1B32A: CVarBoolI2 var_BC
  loc_C1B32E: LitI4 5
  loc_C1B333: FLdRfVar var_9C
  loc_C1B336: CStrVarTmp
  loc_C1B337: CVarStr var_E8
  loc_C1B33A: FLdRfVar var_F8
  loc_C1B33D: ImpAdCallFPR4  = Left(, )
  loc_C1B342: FLdRfVar var_F8
  loc_C1B345: LitVarStr var_AC, "31/12"
  loc_C1B34A: HardType
  loc_C1B34B: NeVar var_108
  loc_C1B34F: AndVar var_118
  loc_C1B353: CBoolVarNull
  loc_C1B355: FFree1Ad var_88
  loc_C1B358: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1B363: BranchF loc_C1B395
  loc_C1B366: LitI4 0
  loc_C1B36B: LitI4 0
  loc_C1B370: LitI2_Byte 0
  loc_C1B372: LitStr "right"
  loc_C1B375: LitStr "&nbsp;"
  loc_C1B378: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B37D: CVarStr var_9C
  loc_C1B380: PopAdLdVar
  loc_C1B381: FLdPr Me
  loc_C1B384: MemLdRfVar from_stack_1.htmFile
  loc_C1B387: LdPrVar
  loc_C1B389: LateMemCall
  loc_C1B38F: FFree1Var var_9C = ""
  loc_C1B392: Branch loc_C1B3C3
  loc_C1B395: LitI4 0
  loc_C1B39A: LitI4 0
  loc_C1B39F: LitI2_Byte 0
  loc_C1B3A1: LitStr "right"
  loc_C1B3A4: FMemLdR4 var_D8(56)
  loc_C1B3A9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B3AE: CVarStr var_9C
  loc_C1B3B1: PopAdLdVar
  loc_C1B3B2: FLdPr Me
  loc_C1B3B5: MemLdRfVar from_stack_1.htmFile
  loc_C1B3B8: LdPrVar
  loc_C1B3BA: LateMemCall
  loc_C1B3C0: FFree1Var var_9C = ""
  loc_C1B3C3: LitI4 0
  loc_C1B3C8: FStR4 var_D8
  loc_C1B3CB: AryUnlock
  loc_C1B3CE: AryUnlock
  loc_C1B3D1: LitVarStr var_AC, "     </tr>"
  loc_C1B3D6: PopAdLdVar
  loc_C1B3D7: FLdPr Me
  loc_C1B3DA: MemLdRfVar from_stack_1.htmFile
  loc_C1B3DD: LdPrVar
  loc_C1B3DF: LateMemCall
  loc_C1B3E5: LitI2_Byte 1
  loc_C1B3E7: FLdPr Me
  loc_C1B3EA: MemLdRfVar from_stack_1.global_112
  loc_C1B3ED: FLdPr Me
  loc_C1B3F0: MemLdI2 global_110
  loc_C1B3F3: CI4UI1
  loc_C1B3F4: FLdPr Me
  loc_C1B3F7: MemLdI2 global_108
  loc_C1B3FA: CI4UI1
  loc_C1B3FB: FLdPr Me
  loc_C1B3FE: MemLdStr global_104
  loc_C1B401: Ary1LdPr
  loc_C1B402: MemLdStr global_8
  loc_C1B405: Ary1LdPr
  loc_C1B406: MemLdStr global_396
  loc_C1B409: LitI2_Byte 1
  loc_C1B40B: FnUBound
  loc_C1B40D: CI2I4
  loc_C1B40E: ForI2 var_11C
  loc_C1B414: LitVarStr var_AC, "  <tr align=""left"" class=""Totales2"" valign=""top"">"
  loc_C1B419: PopAdLdVar
  loc_C1B41A: FLdPr Me
  loc_C1B41D: MemLdRfVar from_stack_1.htmFile
  loc_C1B420: LdPrVar
  loc_C1B422: LateMemCall
  loc_C1B428: FLdPr Me
  loc_C1B42B: MemLdI2 global_112
  loc_C1B42E: CI4UI1
  loc_C1B42F: FLdPr Me
  loc_C1B432: MemLdI2 global_110
  loc_C1B435: CI4UI1
  loc_C1B436: FLdPr Me
  loc_C1B439: MemLdI2 global_108
  loc_C1B43C: CI4UI1
  loc_C1B43D: FLdPr Me
  loc_C1B440: MemLdStr global_104
  loc_C1B443: AryLock
  loc_C1B446: Ary1LdPr
  loc_C1B447: MemLdStr global_8
  loc_C1B44A: AryLock
  loc_C1B44D: Ary1LdPr
  loc_C1B44E: MemLdStr global_396
  loc_C1B451: AryLock
  loc_C1B454: Ary1LdPr
  loc_C1B455: MemLdRfVar from_stack_1.global_0
  loc_C1B458: FStR4 var_12C
  loc_C1B45B: LitI4 0
  loc_C1B460: LitI4 0
  loc_C1B465: LitI2_Byte 0
  loc_C1B467: LitStr "left"
  loc_C1B46A: LitStr "&nbsp;&nbsp;"
  loc_C1B46D: FMemLdR4 var_12C(0)
  loc_C1B472: ConcatStr
  loc_C1B473: FStStrNoPop var_C0
  loc_C1B476: LitStr "&nbsp;(Subtotal)<br>&nbsp;&nbsp;"
  loc_C1B479: ConcatStr
  loc_C1B47A: FStStrNoPop var_C4
  loc_C1B47D: FMemLdR4 var_12C(4)
  loc_C1B482: ConcatStr
  loc_C1B483: FStStrNoPop var_C8
  loc_C1B486: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B48B: CVarStr var_9C
  loc_C1B48E: PopAdLdVar
  loc_C1B48F: FLdPr Me
  loc_C1B492: MemLdRfVar from_stack_1.htmFile
  loc_C1B495: LdPrVar
  loc_C1B497: LateMemCall
  loc_C1B49D: FFreeStr var_C0 = "": var_C4 = ""
  loc_C1B4A6: FFree1Var var_9C = ""
  loc_C1B4A9: LitI4 0
  loc_C1B4AE: LitI4 0
  loc_C1B4B3: LitI2_Byte 0
  loc_C1B4B5: LitStr "right"
  loc_C1B4B8: FMemLdR4 var_12C(12)
  loc_C1B4BD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B4C2: CVarStr var_9C
  loc_C1B4C5: PopAdLdVar
  loc_C1B4C6: FLdPr Me
  loc_C1B4C9: MemLdRfVar from_stack_1.htmFile
  loc_C1B4CC: LdPrVar
  loc_C1B4CE: LateMemCall
  loc_C1B4D4: FFree1Var var_9C = ""
  loc_C1B4D7: LitI4 0
  loc_C1B4DC: LitI4 0
  loc_C1B4E1: LitI2_Byte 0
  loc_C1B4E3: LitStr "left"
  loc_C1B4E6: FMemLdR4 var_12C(8)
  loc_C1B4EB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B4F0: CVarStr var_9C
  loc_C1B4F3: PopAdLdVar
  loc_C1B4F4: FLdPr Me
  loc_C1B4F7: MemLdRfVar from_stack_1.htmFile
  loc_C1B4FA: LdPrVar
  loc_C1B4FC: LateMemCall
  loc_C1B502: FFree1Var var_9C = ""
  loc_C1B505: LitI4 0
  loc_C1B50A: LitI4 0
  loc_C1B50F: LitI2_Byte 0
  loc_C1B511: LitStr "right"
  loc_C1B514: FMemLdR4 var_12C(16)
  loc_C1B519: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B51E: CVarStr var_9C
  loc_C1B521: PopAdLdVar
  loc_C1B522: FLdPr Me
  loc_C1B525: MemLdRfVar from_stack_1.htmFile
  loc_C1B528: LdPrVar
  loc_C1B52A: LateMemCall
  loc_C1B530: FFree1Var var_9C = ""
  loc_C1B533: LitI4 0
  loc_C1B538: LitI4 0
  loc_C1B53D: LitI2_Byte 0
  loc_C1B53F: LitStr "right"
  loc_C1B542: FMemLdR4 var_12C(20)
  loc_C1B547: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B54C: CVarStr var_9C
  loc_C1B54F: PopAdLdVar
  loc_C1B550: FLdPr Me
  loc_C1B553: MemLdRfVar from_stack_1.htmFile
  loc_C1B556: LdPrVar
  loc_C1B558: LateMemCall
  loc_C1B55E: FFree1Var var_9C = ""
  loc_C1B561: LitI4 0
  loc_C1B566: LitI4 0
  loc_C1B56B: LitI2_Byte 0
  loc_C1B56D: LitStr "right"
  loc_C1B570: FMemLdR4 var_12C(24)
  loc_C1B575: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B57A: CVarStr var_9C
  loc_C1B57D: PopAdLdVar
  loc_C1B57E: FLdPr Me
  loc_C1B581: MemLdRfVar from_stack_1.htmFile
  loc_C1B584: LdPrVar
  loc_C1B586: LateMemCall
  loc_C1B58C: FFree1Var var_9C = ""
  loc_C1B58F: LitI4 0
  loc_C1B594: LitI4 0
  loc_C1B599: LitI2_Byte 0
  loc_C1B59B: LitStr "right"
  loc_C1B59E: FMemLdR4 var_12C(28)
  loc_C1B5A3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B5A8: CVarStr var_9C
  loc_C1B5AB: PopAdLdVar
  loc_C1B5AC: FLdPr Me
  loc_C1B5AF: MemLdRfVar from_stack_1.htmFile
  loc_C1B5B2: LdPrVar
  loc_C1B5B4: LateMemCall
  loc_C1B5BA: FFree1Var var_9C = ""
  loc_C1B5BD: LitI4 0
  loc_C1B5C2: LitI4 0
  loc_C1B5C7: LitI2_Byte 0
  loc_C1B5C9: LitStr "right"
  loc_C1B5CC: FMemLdR4 var_12C(32)
  loc_C1B5D1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B5D6: CVarStr var_9C
  loc_C1B5D9: PopAdLdVar
  loc_C1B5DA: FLdPr Me
  loc_C1B5DD: MemLdRfVar from_stack_1.htmFile
  loc_C1B5E0: LdPrVar
  loc_C1B5E2: LateMemCall
  loc_C1B5E8: FFree1Var var_9C = ""
  loc_C1B5EB: LitI4 0
  loc_C1B5F0: LitI4 0
  loc_C1B5F5: LitI2_Byte 0
  loc_C1B5F7: LitStr "right"
  loc_C1B5FA: FMemLdR4 var_12C(36)
  loc_C1B5FF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B604: CVarStr var_9C
  loc_C1B607: PopAdLdVar
  loc_C1B608: FLdPr Me
  loc_C1B60B: MemLdRfVar from_stack_1.htmFile
  loc_C1B60E: LdPrVar
  loc_C1B610: LateMemCall
  loc_C1B616: FFree1Var var_9C = ""
  loc_C1B619: FLdPr Me
  loc_C1B61C: VCallAd Control_ID_mskHasta
  loc_C1B61F: FStAdFunc var_88
  loc_C1B622: FLdPr var_88
  loc_C1B625: LateIdLdVar var_9C DispID_15 0
  loc_C1B62C: PopAd
  loc_C1B62E: LitStr "Municipalidad de Guaymallén"
  loc_C1B631: LitStr "Municipalidad de Tupungato"
  loc_C1B634: EqStr
  loc_C1B636: CVarBoolI2 var_BC
  loc_C1B63A: LitI4 5
  loc_C1B63F: FLdRfVar var_9C
  loc_C1B642: CStrVarTmp
  loc_C1B643: CVarStr var_E8
  loc_C1B646: FLdRfVar var_F8
  loc_C1B649: ImpAdCallFPR4  = Left(, )
  loc_C1B64E: FLdRfVar var_F8
  loc_C1B651: LitVarStr var_AC, "31/12"
  loc_C1B656: HardType
  loc_C1B657: NeVar var_108
  loc_C1B65B: AndVar var_118
  loc_C1B65F: CBoolVarNull
  loc_C1B661: FFree1Ad var_88
  loc_C1B664: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1B66F: BranchF loc_C1B6A1
  loc_C1B672: LitI4 0
  loc_C1B677: LitI4 0
  loc_C1B67C: LitI2_Byte 0
  loc_C1B67E: LitStr "right"
  loc_C1B681: LitStr "&nbsp;"
  loc_C1B684: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B689: CVarStr var_9C
  loc_C1B68C: PopAdLdVar
  loc_C1B68D: FLdPr Me
  loc_C1B690: MemLdRfVar from_stack_1.htmFile
  loc_C1B693: LdPrVar
  loc_C1B695: LateMemCall
  loc_C1B69B: FFree1Var var_9C = ""
  loc_C1B69E: Branch loc_C1B6CF
  loc_C1B6A1: LitI4 0
  loc_C1B6A6: LitI4 0
  loc_C1B6AB: LitI2_Byte 0
  loc_C1B6AD: LitStr "right"
  loc_C1B6B0: FMemLdR4 var_12C(40)
  loc_C1B6B5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B6BA: CVarStr var_9C
  loc_C1B6BD: PopAdLdVar
  loc_C1B6BE: FLdPr Me
  loc_C1B6C1: MemLdRfVar from_stack_1.htmFile
  loc_C1B6C4: LdPrVar
  loc_C1B6C6: LateMemCall
  loc_C1B6CC: FFree1Var var_9C = ""
  loc_C1B6CF: LitI4 0
  loc_C1B6D4: LitI4 0
  loc_C1B6D9: LitI2_Byte 0
  loc_C1B6DB: LitStr "right"
  loc_C1B6DE: FMemLdR4 var_12C(44)
  loc_C1B6E3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B6E8: CVarStr var_9C
  loc_C1B6EB: PopAdLdVar
  loc_C1B6EC: FLdPr Me
  loc_C1B6EF: MemLdRfVar from_stack_1.htmFile
  loc_C1B6F2: LdPrVar
  loc_C1B6F4: LateMemCall
  loc_C1B6FA: FFree1Var var_9C = ""
  loc_C1B6FD: FLdPr Me
  loc_C1B700: VCallAd Control_ID_mskHasta
  loc_C1B703: FStAdFunc var_88
  loc_C1B706: FLdPr var_88
  loc_C1B709: LateIdLdVar var_9C DispID_15 0
  loc_C1B710: PopAd
  loc_C1B712: LitStr "Municipalidad de Guaymallén"
  loc_C1B715: LitStr "Municipalidad de Tupungato"
  loc_C1B718: EqStr
  loc_C1B71A: CVarBoolI2 var_BC
  loc_C1B71E: LitI4 5
  loc_C1B723: FLdRfVar var_9C
  loc_C1B726: CStrVarTmp
  loc_C1B727: CVarStr var_E8
  loc_C1B72A: FLdRfVar var_F8
  loc_C1B72D: ImpAdCallFPR4  = Left(, )
  loc_C1B732: FLdRfVar var_F8
  loc_C1B735: LitVarStr var_AC, "31/12"
  loc_C1B73A: HardType
  loc_C1B73B: NeVar var_108
  loc_C1B73F: AndVar var_118
  loc_C1B743: CBoolVarNull
  loc_C1B745: FFree1Ad var_88
  loc_C1B748: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1B753: BranchF loc_C1B785
  loc_C1B756: LitI4 0
  loc_C1B75B: LitI4 0
  loc_C1B760: LitI2_Byte 0
  loc_C1B762: LitStr "right"
  loc_C1B765: LitStr "&nbsp;"
  loc_C1B768: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B76D: CVarStr var_9C
  loc_C1B770: PopAdLdVar
  loc_C1B771: FLdPr Me
  loc_C1B774: MemLdRfVar from_stack_1.htmFile
  loc_C1B777: LdPrVar
  loc_C1B779: LateMemCall
  loc_C1B77F: FFree1Var var_9C = ""
  loc_C1B782: Branch loc_C1B7B3
  loc_C1B785: LitI4 0
  loc_C1B78A: LitI4 0
  loc_C1B78F: LitI2_Byte 0
  loc_C1B791: LitStr "right"
  loc_C1B794: FMemLdR4 var_12C(48)
  loc_C1B799: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B79E: CVarStr var_9C
  loc_C1B7A1: PopAdLdVar
  loc_C1B7A2: FLdPr Me
  loc_C1B7A5: MemLdRfVar from_stack_1.htmFile
  loc_C1B7A8: LdPrVar
  loc_C1B7AA: LateMemCall
  loc_C1B7B0: FFree1Var var_9C = ""
  loc_C1B7B3: LitI4 0
  loc_C1B7B8: LitI4 0
  loc_C1B7BD: LitI2_Byte 0
  loc_C1B7BF: LitStr "right"
  loc_C1B7C2: FMemLdR4 var_12C(52)
  loc_C1B7C7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B7CC: CVarStr var_9C
  loc_C1B7CF: PopAdLdVar
  loc_C1B7D0: FLdPr Me
  loc_C1B7D3: MemLdRfVar from_stack_1.htmFile
  loc_C1B7D6: LdPrVar
  loc_C1B7D8: LateMemCall
  loc_C1B7DE: FFree1Var var_9C = ""
  loc_C1B7E1: FLdPr Me
  loc_C1B7E4: VCallAd Control_ID_mskHasta
  loc_C1B7E7: FStAdFunc var_88
  loc_C1B7EA: FLdPr var_88
  loc_C1B7ED: LateIdLdVar var_9C DispID_15 0
  loc_C1B7F4: PopAd
  loc_C1B7F6: LitStr "Municipalidad de Guaymallén"
  loc_C1B7F9: LitStr "Municipalidad de Tupungato"
  loc_C1B7FC: EqStr
  loc_C1B7FE: CVarBoolI2 var_BC
  loc_C1B802: LitI4 5
  loc_C1B807: FLdRfVar var_9C
  loc_C1B80A: CStrVarTmp
  loc_C1B80B: CVarStr var_E8
  loc_C1B80E: FLdRfVar var_F8
  loc_C1B811: ImpAdCallFPR4  = Left(, )
  loc_C1B816: FLdRfVar var_F8
  loc_C1B819: LitVarStr var_AC, "31/12"
  loc_C1B81E: HardType
  loc_C1B81F: NeVar var_108
  loc_C1B823: AndVar var_118
  loc_C1B827: CBoolVarNull
  loc_C1B829: FFree1Ad var_88
  loc_C1B82C: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1B837: BranchF loc_C1B869
  loc_C1B83A: LitI4 0
  loc_C1B83F: LitI4 0
  loc_C1B844: LitI2_Byte 0
  loc_C1B846: LitStr "right"
  loc_C1B849: LitStr "&nbsp;"
  loc_C1B84C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B851: CVarStr var_9C
  loc_C1B854: PopAdLdVar
  loc_C1B855: FLdPr Me
  loc_C1B858: MemLdRfVar from_stack_1.htmFile
  loc_C1B85B: LdPrVar
  loc_C1B85D: LateMemCall
  loc_C1B863: FFree1Var var_9C = ""
  loc_C1B866: Branch loc_C1B897
  loc_C1B869: LitI4 0
  loc_C1B86E: LitI4 0
  loc_C1B873: LitI2_Byte 0
  loc_C1B875: LitStr "right"
  loc_C1B878: FMemLdR4 var_12C(56)
  loc_C1B87D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B882: CVarStr var_9C
  loc_C1B885: PopAdLdVar
  loc_C1B886: FLdPr Me
  loc_C1B889: MemLdRfVar from_stack_1.htmFile
  loc_C1B88C: LdPrVar
  loc_C1B88E: LateMemCall
  loc_C1B894: FFree1Var var_9C = ""
  loc_C1B897: LitI4 0
  loc_C1B89C: FStR4 var_12C
  loc_C1B89F: AryUnlock
  loc_C1B8A2: AryUnlock
  loc_C1B8A5: AryUnlock
  loc_C1B8A8: LitVarStr var_AC, "     </tr>"
  loc_C1B8AD: PopAdLdVar
  loc_C1B8AE: FLdPr Me
  loc_C1B8B1: MemLdRfVar from_stack_1.htmFile
  loc_C1B8B4: LdPrVar
  loc_C1B8B6: LateMemCall
  loc_C1B8BC: LitI2_Byte 1
  loc_C1B8BE: FLdPr Me
  loc_C1B8C1: MemLdRfVar from_stack_1.global_114
  loc_C1B8C4: FLdPr Me
  loc_C1B8C7: MemLdI2 global_112
  loc_C1B8CA: CI4UI1
  loc_C1B8CB: FLdPr Me
  loc_C1B8CE: MemLdI2 global_110
  loc_C1B8D1: CI4UI1
  loc_C1B8D2: FLdPr Me
  loc_C1B8D5: MemLdI2 global_108
  loc_C1B8D8: CI4UI1
  loc_C1B8D9: FLdPr Me
  loc_C1B8DC: MemLdStr global_104
  loc_C1B8DF: Ary1LdPr
  loc_C1B8E0: MemLdStr global_8
  loc_C1B8E3: Ary1LdPr
  loc_C1B8E4: MemLdStr global_396
  loc_C1B8E7: Ary1LdPr
  loc_C1B8E8: MemLdStr global_396
  loc_C1B8EB: LitI2_Byte 1
  loc_C1B8ED: FnUBound
  loc_C1B8EF: CI2I4
  loc_C1B8F0: ForI2 var_130
  loc_C1B8F6: LitVarStr var_AC, "  <tr align=""left"" class=""Totales3"" valign=""top"">"
  loc_C1B8FB: PopAdLdVar
  loc_C1B8FC: FLdPr Me
  loc_C1B8FF: MemLdRfVar from_stack_1.htmFile
  loc_C1B902: LdPrVar
  loc_C1B904: LateMemCall
  loc_C1B90A: FLdPr Me
  loc_C1B90D: MemLdI2 global_114
  loc_C1B910: CI4UI1
  loc_C1B911: FLdPr Me
  loc_C1B914: MemLdI2 global_112
  loc_C1B917: CI4UI1
  loc_C1B918: FLdPr Me
  loc_C1B91B: MemLdI2 global_110
  loc_C1B91E: CI4UI1
  loc_C1B91F: FLdPr Me
  loc_C1B922: MemLdI2 global_108
  loc_C1B925: CI4UI1
  loc_C1B926: FLdPr Me
  loc_C1B929: MemLdStr global_104
  loc_C1B92C: AryLock
  loc_C1B92F: Ary1LdPr
  loc_C1B930: MemLdStr global_8
  loc_C1B933: AryLock
  loc_C1B936: Ary1LdPr
  loc_C1B937: MemLdStr global_396
  loc_C1B93A: AryLock
  loc_C1B93D: Ary1LdPr
  loc_C1B93E: MemLdStr global_396
  loc_C1B941: AryLock
  loc_C1B944: Ary1LdPr
  loc_C1B945: MemLdRfVar from_stack_1.global_0
  loc_C1B948: FStR4 var_144
  loc_C1B94B: LitI4 0
  loc_C1B950: LitI4 0
  loc_C1B955: LitI2_Byte 0
  loc_C1B957: LitStr "left"
  loc_C1B95A: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_C1B95D: FMemLdR4 var_144(0)
  loc_C1B962: ConcatStr
  loc_C1B963: FStStrNoPop var_C0
  loc_C1B966: LitStr "&nbsp;(Subtotal)<br>&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_C1B969: ConcatStr
  loc_C1B96A: FStStrNoPop var_C4
  loc_C1B96D: FMemLdR4 var_144(4)
  loc_C1B972: ConcatStr
  loc_C1B973: FStStrNoPop var_C8
  loc_C1B976: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B97B: CVarStr var_9C
  loc_C1B97E: PopAdLdVar
  loc_C1B97F: FLdPr Me
  loc_C1B982: MemLdRfVar from_stack_1.htmFile
  loc_C1B985: LdPrVar
  loc_C1B987: LateMemCall
  loc_C1B98D: FFreeStr var_C0 = "": var_C4 = ""
  loc_C1B996: FFree1Var var_9C = ""
  loc_C1B999: LitI4 0
  loc_C1B99E: LitI4 0
  loc_C1B9A3: LitI2_Byte 0
  loc_C1B9A5: LitStr "right"
  loc_C1B9A8: FMemLdR4 var_144(12)
  loc_C1B9AD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B9B2: CVarStr var_9C
  loc_C1B9B5: PopAdLdVar
  loc_C1B9B6: FLdPr Me
  loc_C1B9B9: MemLdRfVar from_stack_1.htmFile
  loc_C1B9BC: LdPrVar
  loc_C1B9BE: LateMemCall
  loc_C1B9C4: FFree1Var var_9C = ""
  loc_C1B9C7: LitI4 0
  loc_C1B9CC: LitI4 0
  loc_C1B9D1: LitI2_Byte 0
  loc_C1B9D3: LitStr "left"
  loc_C1B9D6: FMemLdR4 var_144(8)
  loc_C1B9DB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1B9E0: CVarStr var_9C
  loc_C1B9E3: PopAdLdVar
  loc_C1B9E4: FLdPr Me
  loc_C1B9E7: MemLdRfVar from_stack_1.htmFile
  loc_C1B9EA: LdPrVar
  loc_C1B9EC: LateMemCall
  loc_C1B9F2: FFree1Var var_9C = ""
  loc_C1B9F5: LitI4 0
  loc_C1B9FA: LitI4 0
  loc_C1B9FF: LitI2_Byte 0
  loc_C1BA01: LitStr "right"
  loc_C1BA04: FMemLdR4 var_144(16)
  loc_C1BA09: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BA0E: CVarStr var_9C
  loc_C1BA11: PopAdLdVar
  loc_C1BA12: FLdPr Me
  loc_C1BA15: MemLdRfVar from_stack_1.htmFile
  loc_C1BA18: LdPrVar
  loc_C1BA1A: LateMemCall
  loc_C1BA20: FFree1Var var_9C = ""
  loc_C1BA23: LitI4 0
  loc_C1BA28: LitI4 0
  loc_C1BA2D: LitI2_Byte 0
  loc_C1BA2F: LitStr "right"
  loc_C1BA32: FMemLdR4 var_144(20)
  loc_C1BA37: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BA3C: CVarStr var_9C
  loc_C1BA3F: PopAdLdVar
  loc_C1BA40: FLdPr Me
  loc_C1BA43: MemLdRfVar from_stack_1.htmFile
  loc_C1BA46: LdPrVar
  loc_C1BA48: LateMemCall
  loc_C1BA4E: FFree1Var var_9C = ""
  loc_C1BA51: LitI4 0
  loc_C1BA56: LitI4 0
  loc_C1BA5B: LitI2_Byte 0
  loc_C1BA5D: LitStr "right"
  loc_C1BA60: FMemLdR4 var_144(24)
  loc_C1BA65: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BA6A: CVarStr var_9C
  loc_C1BA6D: PopAdLdVar
  loc_C1BA6E: FLdPr Me
  loc_C1BA71: MemLdRfVar from_stack_1.htmFile
  loc_C1BA74: LdPrVar
  loc_C1BA76: LateMemCall
  loc_C1BA7C: FFree1Var var_9C = ""
  loc_C1BA7F: FLdRfVar var_146
  loc_C1BA82: FLdPr Me
  loc_C1BA85: VCallAd Control_ID_chkAgrupaMes
  loc_C1BA88: FStAdFunc var_88
  loc_C1BA8B: FLdPr var_88
  loc_C1BA8E:  = Me.Value
  loc_C1BA93: FLdI2 var_146
  loc_C1BA96: CI4UI1
  loc_C1BA97: LitI4 0
  loc_C1BA9C: EqI4
  loc_C1BA9D: FFree1Ad var_88
  loc_C1BAA0: BranchF loc_C1BDAE
  loc_C1BAA3: LitI4 0
  loc_C1BAA8: LitI4 0
  loc_C1BAAD: LitI2_Byte 0
  loc_C1BAAF: LitStr "right"
  loc_C1BAB2: FMemLdR4 var_144(28)
  loc_C1BAB7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BABC: CVarStr var_9C
  loc_C1BABF: PopAdLdVar
  loc_C1BAC0: FLdPr Me
  loc_C1BAC3: MemLdRfVar from_stack_1.htmFile
  loc_C1BAC6: LdPrVar
  loc_C1BAC8: LateMemCall
  loc_C1BACE: FFree1Var var_9C = ""
  loc_C1BAD1: LitI4 0
  loc_C1BAD6: LitI4 0
  loc_C1BADB: LitI2_Byte 0
  loc_C1BADD: LitStr "right"
  loc_C1BAE0: FMemLdR4 var_144(32)
  loc_C1BAE5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BAEA: CVarStr var_9C
  loc_C1BAED: PopAdLdVar
  loc_C1BAEE: FLdPr Me
  loc_C1BAF1: MemLdRfVar from_stack_1.htmFile
  loc_C1BAF4: LdPrVar
  loc_C1BAF6: LateMemCall
  loc_C1BAFC: FFree1Var var_9C = ""
  loc_C1BAFF: LitI4 0
  loc_C1BB04: LitI4 0
  loc_C1BB09: LitI2_Byte 0
  loc_C1BB0B: LitStr "right"
  loc_C1BB0E: FMemLdR4 var_144(36)
  loc_C1BB13: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BB18: CVarStr var_9C
  loc_C1BB1B: PopAdLdVar
  loc_C1BB1C: FLdPr Me
  loc_C1BB1F: MemLdRfVar from_stack_1.htmFile
  loc_C1BB22: LdPrVar
  loc_C1BB24: LateMemCall
  loc_C1BB2A: FFree1Var var_9C = ""
  loc_C1BB2D: FLdPr Me
  loc_C1BB30: VCallAd Control_ID_mskHasta
  loc_C1BB33: FStAdFunc var_88
  loc_C1BB36: FLdPr var_88
  loc_C1BB39: LateIdLdVar var_9C DispID_15 0
  loc_C1BB40: PopAd
  loc_C1BB42: LitStr "Municipalidad de Guaymallén"
  loc_C1BB45: LitStr "Municipalidad de Tupungato"
  loc_C1BB48: EqStr
  loc_C1BB4A: CVarBoolI2 var_BC
  loc_C1BB4E: LitI4 5
  loc_C1BB53: FLdRfVar var_9C
  loc_C1BB56: CStrVarTmp
  loc_C1BB57: CVarStr var_E8
  loc_C1BB5A: FLdRfVar var_F8
  loc_C1BB5D: ImpAdCallFPR4  = Left(, )
  loc_C1BB62: FLdRfVar var_F8
  loc_C1BB65: LitVarStr var_AC, "31/12"
  loc_C1BB6A: HardType
  loc_C1BB6B: NeVar var_108
  loc_C1BB6F: AndVar var_118
  loc_C1BB73: CBoolVarNull
  loc_C1BB75: FFree1Ad var_88
  loc_C1BB78: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1BB83: BranchF loc_C1BBB5
  loc_C1BB86: LitI4 0
  loc_C1BB8B: LitI4 0
  loc_C1BB90: LitI2_Byte 0
  loc_C1BB92: LitStr "right"
  loc_C1BB95: LitStr "&nbsp;"
  loc_C1BB98: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BB9D: CVarStr var_9C
  loc_C1BBA0: PopAdLdVar
  loc_C1BBA1: FLdPr Me
  loc_C1BBA4: MemLdRfVar from_stack_1.htmFile
  loc_C1BBA7: LdPrVar
  loc_C1BBA9: LateMemCall
  loc_C1BBAF: FFree1Var var_9C = ""
  loc_C1BBB2: Branch loc_C1BBE3
  loc_C1BBB5: LitI4 0
  loc_C1BBBA: LitI4 0
  loc_C1BBBF: LitI2_Byte 0
  loc_C1BBC1: LitStr "right"
  loc_C1BBC4: FMemLdR4 var_144(40)
  loc_C1BBC9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BBCE: CVarStr var_9C
  loc_C1BBD1: PopAdLdVar
  loc_C1BBD2: FLdPr Me
  loc_C1BBD5: MemLdRfVar from_stack_1.htmFile
  loc_C1BBD8: LdPrVar
  loc_C1BBDA: LateMemCall
  loc_C1BBE0: FFree1Var var_9C = ""
  loc_C1BBE3: LitI4 0
  loc_C1BBE8: LitI4 0
  loc_C1BBED: LitI2_Byte 0
  loc_C1BBEF: LitStr "right"
  loc_C1BBF2: FMemLdR4 var_144(44)
  loc_C1BBF7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BBFC: CVarStr var_9C
  loc_C1BBFF: PopAdLdVar
  loc_C1BC00: FLdPr Me
  loc_C1BC03: MemLdRfVar from_stack_1.htmFile
  loc_C1BC06: LdPrVar
  loc_C1BC08: LateMemCall
  loc_C1BC0E: FFree1Var var_9C = ""
  loc_C1BC11: FLdPr Me
  loc_C1BC14: VCallAd Control_ID_mskHasta
  loc_C1BC17: FStAdFunc var_88
  loc_C1BC1A: FLdPr var_88
  loc_C1BC1D: LateIdLdVar var_9C DispID_15 0
  loc_C1BC24: PopAd
  loc_C1BC26: LitStr "Municipalidad de Guaymallén"
  loc_C1BC29: LitStr "Municipalidad de Tupungato"
  loc_C1BC2C: EqStr
  loc_C1BC2E: CVarBoolI2 var_BC
  loc_C1BC32: LitI4 5
  loc_C1BC37: FLdRfVar var_9C
  loc_C1BC3A: CStrVarTmp
  loc_C1BC3B: CVarStr var_E8
  loc_C1BC3E: FLdRfVar var_F8
  loc_C1BC41: ImpAdCallFPR4  = Left(, )
  loc_C1BC46: FLdRfVar var_F8
  loc_C1BC49: LitVarStr var_AC, "31/12"
  loc_C1BC4E: HardType
  loc_C1BC4F: NeVar var_108
  loc_C1BC53: AndVar var_118
  loc_C1BC57: CBoolVarNull
  loc_C1BC59: FFree1Ad var_88
  loc_C1BC5C: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1BC67: BranchF loc_C1BC99
  loc_C1BC6A: LitI4 0
  loc_C1BC6F: LitI4 0
  loc_C1BC74: LitI2_Byte 0
  loc_C1BC76: LitStr "right"
  loc_C1BC79: LitStr "&nbsp;"
  loc_C1BC7C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BC81: CVarStr var_9C
  loc_C1BC84: PopAdLdVar
  loc_C1BC85: FLdPr Me
  loc_C1BC88: MemLdRfVar from_stack_1.htmFile
  loc_C1BC8B: LdPrVar
  loc_C1BC8D: LateMemCall
  loc_C1BC93: FFree1Var var_9C = ""
  loc_C1BC96: Branch loc_C1BCC7
  loc_C1BC99: LitI4 0
  loc_C1BC9E: LitI4 0
  loc_C1BCA3: LitI2_Byte 0
  loc_C1BCA5: LitStr "right"
  loc_C1BCA8: FMemLdR4 var_144(48)
  loc_C1BCAD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BCB2: CVarStr var_9C
  loc_C1BCB5: PopAdLdVar
  loc_C1BCB6: FLdPr Me
  loc_C1BCB9: MemLdRfVar from_stack_1.htmFile
  loc_C1BCBC: LdPrVar
  loc_C1BCBE: LateMemCall
  loc_C1BCC4: FFree1Var var_9C = ""
  loc_C1BCC7: LitI4 0
  loc_C1BCCC: LitI4 0
  loc_C1BCD1: LitI2_Byte 0
  loc_C1BCD3: LitStr "right"
  loc_C1BCD6: FMemLdR4 var_144(52)
  loc_C1BCDB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BCE0: CVarStr var_9C
  loc_C1BCE3: PopAdLdVar
  loc_C1BCE4: FLdPr Me
  loc_C1BCE7: MemLdRfVar from_stack_1.htmFile
  loc_C1BCEA: LdPrVar
  loc_C1BCEC: LateMemCall
  loc_C1BCF2: FFree1Var var_9C = ""
  loc_C1BCF5: FLdPr Me
  loc_C1BCF8: VCallAd Control_ID_mskHasta
  loc_C1BCFB: FStAdFunc var_88
  loc_C1BCFE: FLdPr var_88
  loc_C1BD01: LateIdLdVar var_9C DispID_15 0
  loc_C1BD08: PopAd
  loc_C1BD0A: LitStr "Municipalidad de Guaymallén"
  loc_C1BD0D: LitStr "Municipalidad de Tupungato"
  loc_C1BD10: EqStr
  loc_C1BD12: CVarBoolI2 var_BC
  loc_C1BD16: LitI4 5
  loc_C1BD1B: FLdRfVar var_9C
  loc_C1BD1E: CStrVarTmp
  loc_C1BD1F: CVarStr var_E8
  loc_C1BD22: FLdRfVar var_F8
  loc_C1BD25: ImpAdCallFPR4  = Left(, )
  loc_C1BD2A: FLdRfVar var_F8
  loc_C1BD2D: LitVarStr var_AC, "31/12"
  loc_C1BD32: HardType
  loc_C1BD33: NeVar var_108
  loc_C1BD37: AndVar var_118
  loc_C1BD3B: CBoolVarNull
  loc_C1BD3D: FFree1Ad var_88
  loc_C1BD40: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1BD4B: BranchF loc_C1BD7D
  loc_C1BD4E: LitI4 0
  loc_C1BD53: LitI4 0
  loc_C1BD58: LitI2_Byte 0
  loc_C1BD5A: LitStr "right"
  loc_C1BD5D: LitStr "&nbsp;"
  loc_C1BD60: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BD65: CVarStr var_9C
  loc_C1BD68: PopAdLdVar
  loc_C1BD69: FLdPr Me
  loc_C1BD6C: MemLdRfVar from_stack_1.htmFile
  loc_C1BD6F: LdPrVar
  loc_C1BD71: LateMemCall
  loc_C1BD77: FFree1Var var_9C = ""
  loc_C1BD7A: Branch loc_C1BDAB
  loc_C1BD7D: LitI4 0
  loc_C1BD82: LitI4 0
  loc_C1BD87: LitI2_Byte 0
  loc_C1BD89: LitStr "right"
  loc_C1BD8C: FMemLdR4 var_144(56)
  loc_C1BD91: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1BD96: CVarStr var_9C
  loc_C1BD99: PopAdLdVar
  loc_C1BD9A: FLdPr Me
  loc_C1BD9D: MemLdRfVar from_stack_1.htmFile
  loc_C1BDA0: LdPrVar
  loc_C1BDA2: LateMemCall
  loc_C1BDA8: FFree1Var var_9C = ""
  loc_C1BDAB: Branch loc_C1D417
  loc_C1BDAE: LitVarStr var_BC, vbNullString
  loc_C1BDB3: FStVarCopyObj var_E8
  loc_C1BDB6: FLdRfVar var_E8
  loc_C1BDB9: LitStr "(1)&nbsp;"
  loc_C1BDBC: FMemLdR4 var_144(60)
  loc_C1BDC1: ConcatStr
  loc_C1BDC2: CVarStr var_9C
  loc_C1BDC5: FMemLdR4 var_144(60)
  loc_C1BDCA: LitStr "0,00"
  loc_C1BDCD: NeStr
  loc_C1BDCF: CVarBoolI2 var_AC
  loc_C1BDD3: FLdRfVar var_F8
  loc_C1BDD6: ImpAdCallFPR4  = IIf(, , )
  loc_C1BDDB: LitVarStr var_168, vbNullString
  loc_C1BDE0: FStVarCopyObj var_118
  loc_C1BDE3: FLdRfVar var_118
  loc_C1BDE6: LitStr "<br>(2)&nbsp;"
  loc_C1BDE9: FMemLdR4 var_144(64)
  loc_C1BDEE: ConcatStr
  loc_C1BDEF: CVarStr var_108
  loc_C1BDF2: FMemLdR4 var_144(64)
  loc_C1BDF7: LitStr "0,00"
  loc_C1BDFA: NeStr
  loc_C1BDFC: CVarBoolI2 var_158
  loc_C1BE00: FLdRfVar var_178
  loc_C1BE03: ImpAdCallFPR4  = IIf(, , )
  loc_C1BE08: LitVarStr var_1B8, vbNullString
  loc_C1BE0D: FStVarCopyObj var_1C8
  loc_C1BE10: FLdRfVar var_1C8
  loc_C1BE13: LitStr "<br>(3)&nbsp;"
  loc_C1BE16: FMemLdR4 var_144(68)
  loc_C1BE1B: ConcatStr
  loc_C1BE1C: CVarStr var_1A8
  loc_C1BE1F: FMemLdR4 var_144(68)
  loc_C1BE24: LitStr "0,00"
  loc_C1BE27: NeStr
  loc_C1BE29: CVarBoolI2 var_198
  loc_C1BE2D: FLdRfVar var_1D8
  loc_C1BE30: ImpAdCallFPR4  = IIf(, , )
  loc_C1BE35: LitVarStr var_218, vbNullString
  loc_C1BE3A: FStVarCopyObj var_228
  loc_C1BE3D: FLdRfVar var_228
  loc_C1BE40: LitStr "<br>(4)&nbsp;"
  loc_C1BE43: FMemLdR4 var_144(72)
  loc_C1BE48: ConcatStr
  loc_C1BE49: CVarStr var_208
  loc_C1BE4C: FMemLdR4 var_144(72)
  loc_C1BE51: LitStr "0,00"
  loc_C1BE54: NeStr
  loc_C1BE56: CVarBoolI2 var_1F8
  loc_C1BE5A: FLdRfVar var_238
  loc_C1BE5D: ImpAdCallFPR4  = IIf(, , )
  loc_C1BE62: LitVarStr var_278, vbNullString
  loc_C1BE67: FStVarCopyObj var_288
  loc_C1BE6A: FLdRfVar var_288
  loc_C1BE6D: LitStr "<br>(5)&nbsp;"
  loc_C1BE70: FMemLdR4 var_144(76)
  loc_C1BE75: ConcatStr
  loc_C1BE76: CVarStr var_268
  loc_C1BE79: FMemLdR4 var_144(76)
  loc_C1BE7E: LitStr "0,00"
  loc_C1BE81: NeStr
  loc_C1BE83: CVarBoolI2 var_258
  loc_C1BE87: FLdRfVar var_298
  loc_C1BE8A: ImpAdCallFPR4  = IIf(, , )
  loc_C1BE8F: LitVarStr var_2D8, vbNullString
  loc_C1BE94: FStVarCopyObj var_2E8
  loc_C1BE97: FLdRfVar var_2E8
  loc_C1BE9A: LitStr "<br>(6)&nbsp;"
  loc_C1BE9D: FMemLdR4 var_144(80)
  loc_C1BEA2: ConcatStr
  loc_C1BEA3: CVarStr var_2C8
  loc_C1BEA6: FMemLdR4 var_144(80)
  loc_C1BEAB: LitStr "0,00"
  loc_C1BEAE: NeStr
  loc_C1BEB0: CVarBoolI2 var_2B8
  loc_C1BEB4: FLdRfVar var_2F8
  loc_C1BEB7: ImpAdCallFPR4  = IIf(, , )
  loc_C1BEBC: LitVarStr var_338, vbNullString
  loc_C1BEC1: FStVarCopyObj var_348
  loc_C1BEC4: FLdRfVar var_348
  loc_C1BEC7: LitStr "<br>(7)&nbsp;"
  loc_C1BECA: FMemLdR4 var_144(84)
  loc_C1BECF: ConcatStr
  loc_C1BED0: CVarStr var_328
  loc_C1BED3: FMemLdR4 var_144(84)
  loc_C1BED8: LitStr "0,00"
  loc_C1BEDB: NeStr
  loc_C1BEDD: CVarBoolI2 var_318
  loc_C1BEE1: FLdRfVar var_358
  loc_C1BEE4: ImpAdCallFPR4  = IIf(, , )
  loc_C1BEE9: LitVarStr var_398, vbNullString
  loc_C1BEEE: FStVarCopyObj var_3A8
  loc_C1BEF1: FLdRfVar var_3A8
  loc_C1BEF4: LitStr "<br>(8)&nbsp;"
  loc_C1BEF7: FMemLdR4 var_144(88)
  loc_C1BEFC: ConcatStr
  loc_C1BEFD: CVarStr var_388
  loc_C1BF00: FMemLdR4 var_144(88)
  loc_C1BF05: LitStr "0,00"
  loc_C1BF08: NeStr
  loc_C1BF0A: CVarBoolI2 var_378
  loc_C1BF0E: FLdRfVar var_3B8
  loc_C1BF11: ImpAdCallFPR4  = IIf(, , )
  loc_C1BF16: LitVarStr var_3F8, vbNullString
  loc_C1BF1B: FStVarCopyObj var_408
  loc_C1BF1E: FLdRfVar var_408
  loc_C1BF21: LitStr "<br>(9)&nbsp;"
  loc_C1BF24: FMemLdR4 var_144(92)
  loc_C1BF29: ConcatStr
  loc_C1BF2A: CVarStr var_3E8
  loc_C1BF2D: FMemLdR4 var_144(92)
  loc_C1BF32: LitStr "0,00"
  loc_C1BF35: NeStr
  loc_C1BF37: CVarBoolI2 var_3D8
  loc_C1BF3B: FLdRfVar var_418
  loc_C1BF3E: ImpAdCallFPR4  = IIf(, , )
  loc_C1BF43: LitVarStr var_458, vbNullString
  loc_C1BF48: FStVarCopyObj var_468
  loc_C1BF4B: FLdRfVar var_468
  loc_C1BF4E: LitStr "<br>(10)&nbsp;"
  loc_C1BF51: FMemLdR4 var_144(96)
  loc_C1BF56: ConcatStr
  loc_C1BF57: CVarStr var_448
  loc_C1BF5A: FMemLdR4 var_144(96)
  loc_C1BF5F: LitStr "0,00"
  loc_C1BF62: NeStr
  loc_C1BF64: CVarBoolI2 var_438
  loc_C1BF68: FLdRfVar var_478
  loc_C1BF6B: ImpAdCallFPR4  = IIf(, , )
  loc_C1BF70: LitVarStr var_4B8, vbNullString
  loc_C1BF75: FStVarCopyObj var_4C8
  loc_C1BF78: FLdRfVar var_4C8
  loc_C1BF7B: LitStr "<br>(11)&nbsp;"
  loc_C1BF7E: FMemLdR4 var_144(100)
  loc_C1BF83: ConcatStr
  loc_C1BF84: CVarStr var_4A8
  loc_C1BF87: FMemLdR4 var_144(100)
  loc_C1BF8C: LitStr "0,00"
  loc_C1BF8F: NeStr
  loc_C1BF91: CVarBoolI2 var_498
  loc_C1BF95: FLdRfVar var_4D8
  loc_C1BF98: ImpAdCallFPR4  = IIf(, , )
  loc_C1BF9D: LitVarStr var_518, vbNullString
  loc_C1BFA2: FStVarCopyObj var_528
  loc_C1BFA5: FLdRfVar var_528
  loc_C1BFA8: LitStr "<br>(12)&nbsp;"
  loc_C1BFAB: FMemLdR4 var_144(104)
  loc_C1BFB0: ConcatStr
  loc_C1BFB1: CVarStr var_508
  loc_C1BFB4: FMemLdR4 var_144(104)
  loc_C1BFB9: LitStr "0,00"
  loc_C1BFBC: NeStr
  loc_C1BFBE: CVarBoolI2 var_4F8
  loc_C1BFC2: FLdRfVar var_538
  loc_C1BFC5: ImpAdCallFPR4  = IIf(, , )
  loc_C1BFCA: LitI4 0
  loc_C1BFCF: LitI4 0
  loc_C1BFD4: LitI2_Byte 0
  loc_C1BFD6: LitStr "right"
  loc_C1BFD9: FLdRfVar var_F8
  loc_C1BFDC: FLdRfVar var_178
  loc_C1BFDF: ConcatVar var_188
  loc_C1BFE3: FLdRfVar var_1D8
  loc_C1BFE6: ConcatVar var_1E8
  loc_C1BFEA: FLdRfVar var_238
  loc_C1BFED: ConcatVar var_248
  loc_C1BFF1: FLdRfVar var_298
  loc_C1BFF4: ConcatVar var_2A8
  loc_C1BFF8: FLdRfVar var_2F8
  loc_C1BFFB: ConcatVar var_308
  loc_C1BFFF: FLdRfVar var_358
  loc_C1C002: ConcatVar var_368
  loc_C1C006: FLdRfVar var_3B8
  loc_C1C009: ConcatVar var_3C8
  loc_C1C00D: FLdRfVar var_418
  loc_C1C010: ConcatVar var_428
  loc_C1C014: FLdRfVar var_478
  loc_C1C017: ConcatVar var_488
  loc_C1C01B: FLdRfVar var_4D8
  loc_C1C01E: ConcatVar var_4E8
  loc_C1C022: FLdRfVar var_538
  loc_C1C025: ConcatVar var_548
  loc_C1C029: LitVarStr var_558, "<br>(T)&nbsp;"
  loc_C1C02E: ConcatVar var_568
  loc_C1C032: FMemLdR4 var_144(28)
  loc_C1C037: CVarStr var_578
  loc_C1C03A: ConcatVar var_588
  loc_C1C03E: CStrVarVal var_C0
  loc_C1C042: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1C047: CVarStr var_598
  loc_C1C04A: PopAdLdVar
  loc_C1C04B: FLdPr Me
  loc_C1C04E: MemLdRfVar from_stack_1.htmFile
  loc_C1C051: LdPrVar
  loc_C1C053: LateMemCall
  loc_C1C059: FFree1Str var_C0
  loc_C1C05C: FFreeVar var_588 = "": var_598 = "": var_348 = "": var_308 = "": var_358 = "": var_378 = "": var_388 = "": var_3A8 = "": var_368 = "": var_3B8 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C8 = "": var_418 = "": var_438 = "": var_448 = "": var_468 = "": var_428 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4C8 = "": var_488 = "": var_4D8 = "": var_4F8 = "": var_508 = "": var_528 = "": var_4E8 = "": var_538 = "": var_548 = "": var_568 = "": var_AC = "": var_9C = "": var_E8 = "": var_158 = "": var_108 = "": var_118 = "": var_F8 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1E8 = "": var_238 = "": var_258 = "": var_268 = "": var_288 = "": var_248 = "": var_298 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_2A8 = "": var_2F8 = "": var_318 = ""
  loc_C1C0DB: LitVarStr var_BC, vbNullString
  loc_C1C0E0: FStVarCopyObj var_E8
  loc_C1C0E3: FLdRfVar var_E8
  loc_C1C0E6: LitStr "(1)&nbsp;"
  loc_C1C0E9: FMemLdR4 var_144(108)
  loc_C1C0EE: ConcatStr
  loc_C1C0EF: CVarStr var_9C
  loc_C1C0F2: FMemLdR4 var_144(108)
  loc_C1C0F7: LitStr "0,00"
  loc_C1C0FA: NeStr
  loc_C1C0FC: CVarBoolI2 var_AC
  loc_C1C100: FLdRfVar var_F8
  loc_C1C103: ImpAdCallFPR4  = IIf(, , )
  loc_C1C108: LitVarStr var_168, vbNullString
  loc_C1C10D: FStVarCopyObj var_118
  loc_C1C110: FLdRfVar var_118
  loc_C1C113: LitStr "<br>(2)&nbsp;"
  loc_C1C116: FMemLdR4 var_144(112)
  loc_C1C11B: ConcatStr
  loc_C1C11C: CVarStr var_108
  loc_C1C11F: FMemLdR4 var_144(112)
  loc_C1C124: LitStr "0,00"
  loc_C1C127: NeStr
  loc_C1C129: CVarBoolI2 var_158
  loc_C1C12D: FLdRfVar var_178
  loc_C1C130: ImpAdCallFPR4  = IIf(, , )
  loc_C1C135: LitVarStr var_1B8, vbNullString
  loc_C1C13A: FStVarCopyObj var_1C8
  loc_C1C13D: FLdRfVar var_1C8
  loc_C1C140: LitStr "<br>(3)&nbsp;"
  loc_C1C143: FMemLdR4 var_144(116)
  loc_C1C148: ConcatStr
  loc_C1C149: CVarStr var_1A8
  loc_C1C14C: FMemLdR4 var_144(116)
  loc_C1C151: LitStr "0,00"
  loc_C1C154: NeStr
  loc_C1C156: CVarBoolI2 var_198
  loc_C1C15A: FLdRfVar var_1D8
  loc_C1C15D: ImpAdCallFPR4  = IIf(, , )
  loc_C1C162: LitVarStr var_218, vbNullString
  loc_C1C167: FStVarCopyObj var_228
  loc_C1C16A: FLdRfVar var_228
  loc_C1C16D: LitStr "<br>(4)&nbsp;"
  loc_C1C170: FMemLdR4 var_144(120)
  loc_C1C175: ConcatStr
  loc_C1C176: CVarStr var_208
  loc_C1C179: FMemLdR4 var_144(120)
  loc_C1C17E: LitStr "0,00"
  loc_C1C181: NeStr
  loc_C1C183: CVarBoolI2 var_1F8
  loc_C1C187: FLdRfVar var_238
  loc_C1C18A: ImpAdCallFPR4  = IIf(, , )
  loc_C1C18F: LitVarStr var_278, vbNullString
  loc_C1C194: FStVarCopyObj var_288
  loc_C1C197: FLdRfVar var_288
  loc_C1C19A: LitStr "<br>(5)&nbsp;"
  loc_C1C19D: FMemLdR4 var_144(124)
  loc_C1C1A2: ConcatStr
  loc_C1C1A3: CVarStr var_268
  loc_C1C1A6: FMemLdR4 var_144(124)
  loc_C1C1AB: LitStr "0,00"
  loc_C1C1AE: NeStr
  loc_C1C1B0: CVarBoolI2 var_258
  loc_C1C1B4: FLdRfVar var_298
  loc_C1C1B7: ImpAdCallFPR4  = IIf(, , )
  loc_C1C1BC: LitVarStr var_2D8, vbNullString
  loc_C1C1C1: FStVarCopyObj var_2E8
  loc_C1C1C4: FLdRfVar var_2E8
  loc_C1C1C7: LitStr "<br>(6)&nbsp;"
  loc_C1C1CA: FMemLdR4 var_144(128)
  loc_C1C1CF: ConcatStr
  loc_C1C1D0: CVarStr var_2C8
  loc_C1C1D3: FMemLdR4 var_144(128)
  loc_C1C1D8: LitStr "0,00"
  loc_C1C1DB: NeStr
  loc_C1C1DD: CVarBoolI2 var_2B8
  loc_C1C1E1: FLdRfVar var_2F8
  loc_C1C1E4: ImpAdCallFPR4  = IIf(, , )
  loc_C1C1E9: LitVarStr var_338, vbNullString
  loc_C1C1EE: FStVarCopyObj var_348
  loc_C1C1F1: FLdRfVar var_348
  loc_C1C1F4: LitStr "<br>(7)&nbsp;"
  loc_C1C1F7: FMemLdR4 var_144(132)
  loc_C1C1FC: ConcatStr
  loc_C1C1FD: CVarStr var_328
  loc_C1C200: FMemLdR4 var_144(132)
  loc_C1C205: LitStr "0,00"
  loc_C1C208: NeStr
  loc_C1C20A: CVarBoolI2 var_318
  loc_C1C20E: FLdRfVar var_358
  loc_C1C211: ImpAdCallFPR4  = IIf(, , )
  loc_C1C216: LitVarStr var_398, vbNullString
  loc_C1C21B: FStVarCopyObj var_3A8
  loc_C1C21E: FLdRfVar var_3A8
  loc_C1C221: LitStr "<br>(8)&nbsp;"
  loc_C1C224: FMemLdR4 var_144(136)
  loc_C1C229: ConcatStr
  loc_C1C22A: CVarStr var_388
  loc_C1C22D: FMemLdR4 var_144(136)
  loc_C1C232: LitStr "0,00"
  loc_C1C235: NeStr
  loc_C1C237: CVarBoolI2 var_378
  loc_C1C23B: FLdRfVar var_3B8
  loc_C1C23E: ImpAdCallFPR4  = IIf(, , )
  loc_C1C243: LitVarStr var_3F8, vbNullString
  loc_C1C248: FStVarCopyObj var_408
  loc_C1C24B: FLdRfVar var_408
  loc_C1C24E: LitStr "<br>(9)&nbsp;"
  loc_C1C251: FMemLdR4 var_144(140)
  loc_C1C256: ConcatStr
  loc_C1C257: CVarStr var_3E8
  loc_C1C25A: FMemLdR4 var_144(140)
  loc_C1C25F: LitStr "0,00"
  loc_C1C262: NeStr
  loc_C1C264: CVarBoolI2 var_3D8
  loc_C1C268: FLdRfVar var_418
  loc_C1C26B: ImpAdCallFPR4  = IIf(, , )
  loc_C1C270: LitVarStr var_458, vbNullString
  loc_C1C275: FStVarCopyObj var_468
  loc_C1C278: FLdRfVar var_468
  loc_C1C27B: LitStr "<br>(10)&nbsp;"
  loc_C1C27E: FMemLdR4 var_144(144)
  loc_C1C283: ConcatStr
  loc_C1C284: CVarStr var_448
  loc_C1C287: FMemLdR4 var_144(144)
  loc_C1C28C: LitStr "0,00"
  loc_C1C28F: NeStr
  loc_C1C291: CVarBoolI2 var_438
  loc_C1C295: FLdRfVar var_478
  loc_C1C298: ImpAdCallFPR4  = IIf(, , )
  loc_C1C29D: LitVarStr var_4B8, vbNullString
  loc_C1C2A2: FStVarCopyObj var_4C8
  loc_C1C2A5: FLdRfVar var_4C8
  loc_C1C2A8: LitStr "<br>(11)&nbsp;"
  loc_C1C2AB: FMemLdR4 var_144(148)
  loc_C1C2B0: ConcatStr
  loc_C1C2B1: CVarStr var_4A8
  loc_C1C2B4: FMemLdR4 var_144(148)
  loc_C1C2B9: LitStr "0,00"
  loc_C1C2BC: NeStr
  loc_C1C2BE: CVarBoolI2 var_498
  loc_C1C2C2: FLdRfVar var_4D8
  loc_C1C2C5: ImpAdCallFPR4  = IIf(, , )
  loc_C1C2CA: LitVarStr var_518, vbNullString
  loc_C1C2CF: FStVarCopyObj var_528
  loc_C1C2D2: FLdRfVar var_528
  loc_C1C2D5: LitStr "<br>(12)&nbsp;"
  loc_C1C2D8: FMemLdR4 var_144(152)
  loc_C1C2DD: ConcatStr
  loc_C1C2DE: CVarStr var_508
  loc_C1C2E1: FMemLdR4 var_144(152)
  loc_C1C2E6: LitStr "0,00"
  loc_C1C2E9: NeStr
  loc_C1C2EB: CVarBoolI2 var_4F8
  loc_C1C2EF: FLdRfVar var_538
  loc_C1C2F2: ImpAdCallFPR4  = IIf(, , )
  loc_C1C2F7: LitI4 0
  loc_C1C2FC: LitI4 0
  loc_C1C301: LitI2_Byte 0
  loc_C1C303: LitStr "right"
  loc_C1C306: FLdRfVar var_F8
  loc_C1C309: FLdRfVar var_178
  loc_C1C30C: ConcatVar var_188
  loc_C1C310: FLdRfVar var_1D8
  loc_C1C313: ConcatVar var_1E8
  loc_C1C317: FLdRfVar var_238
  loc_C1C31A: ConcatVar var_248
  loc_C1C31E: FLdRfVar var_298
  loc_C1C321: ConcatVar var_2A8
  loc_C1C325: FLdRfVar var_2F8
  loc_C1C328: ConcatVar var_308
  loc_C1C32C: FLdRfVar var_358
  loc_C1C32F: ConcatVar var_368
  loc_C1C333: FLdRfVar var_3B8
  loc_C1C336: ConcatVar var_3C8
  loc_C1C33A: FLdRfVar var_418
  loc_C1C33D: ConcatVar var_428
  loc_C1C341: FLdRfVar var_478
  loc_C1C344: ConcatVar var_488
  loc_C1C348: FLdRfVar var_4D8
  loc_C1C34B: ConcatVar var_4E8
  loc_C1C34F: FLdRfVar var_538
  loc_C1C352: ConcatVar var_548
  loc_C1C356: LitVarStr var_558, "<br>(T)&nbsp;"
  loc_C1C35B: ConcatVar var_568
  loc_C1C35F: FMemLdR4 var_144(32)
  loc_C1C364: CVarStr var_578
  loc_C1C367: ConcatVar var_588
  loc_C1C36B: CStrVarVal var_C0
  loc_C1C36F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1C374: CVarStr var_598
  loc_C1C377: PopAdLdVar
  loc_C1C378: FLdPr Me
  loc_C1C37B: MemLdRfVar from_stack_1.htmFile
  loc_C1C37E: LdPrVar
  loc_C1C380: LateMemCall
  loc_C1C386: FFree1Str var_C0
  loc_C1C389: FFreeVar var_588 = "": var_598 = "": var_348 = "": var_308 = "": var_358 = "": var_378 = "": var_388 = "": var_3A8 = "": var_368 = "": var_3B8 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C8 = "": var_418 = "": var_438 = "": var_448 = "": var_468 = "": var_428 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4C8 = "": var_488 = "": var_4D8 = "": var_4F8 = "": var_508 = "": var_528 = "": var_4E8 = "": var_538 = "": var_548 = "": var_568 = "": var_AC = "": var_9C = "": var_E8 = "": var_158 = "": var_108 = "": var_118 = "": var_F8 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1E8 = "": var_238 = "": var_258 = "": var_268 = "": var_288 = "": var_248 = "": var_298 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_2A8 = "": var_2F8 = "": var_318 = ""
  loc_C1C408: LitVarStr var_BC, vbNullString
  loc_C1C40D: FStVarCopyObj var_E8
  loc_C1C410: FLdRfVar var_E8
  loc_C1C413: LitStr "(1)&nbsp;"
  loc_C1C416: FMemLdR4 var_144(156)
  loc_C1C41B: ConcatStr
  loc_C1C41C: CVarStr var_9C
  loc_C1C41F: FMemLdR4 var_144(156)
  loc_C1C424: LitStr "0,00"
  loc_C1C427: NeStr
  loc_C1C429: CVarBoolI2 var_AC
  loc_C1C42D: FLdRfVar var_F8
  loc_C1C430: ImpAdCallFPR4  = IIf(, , )
  loc_C1C435: LitVarStr var_168, vbNullString
  loc_C1C43A: FStVarCopyObj var_118
  loc_C1C43D: FLdRfVar var_118
  loc_C1C440: LitStr "<br>(2)&nbsp;"
  loc_C1C443: FMemLdR4 var_144(160)
  loc_C1C448: ConcatStr
  loc_C1C449: CVarStr var_108
  loc_C1C44C: FMemLdR4 var_144(160)
  loc_C1C451: LitStr "0,00"
  loc_C1C454: NeStr
  loc_C1C456: CVarBoolI2 var_158
  loc_C1C45A: FLdRfVar var_178
  loc_C1C45D: ImpAdCallFPR4  = IIf(, , )
  loc_C1C462: LitVarStr var_1B8, vbNullString
  loc_C1C467: FStVarCopyObj var_1C8
  loc_C1C46A: FLdRfVar var_1C8
  loc_C1C46D: LitStr "<br>(3)&nbsp;"
  loc_C1C470: FMemLdR4 var_144(164)
  loc_C1C475: ConcatStr
  loc_C1C476: CVarStr var_1A8
  loc_C1C479: FMemLdR4 var_144(164)
  loc_C1C47E: LitStr "0,00"
  loc_C1C481: NeStr
  loc_C1C483: CVarBoolI2 var_198
  loc_C1C487: FLdRfVar var_1D8
  loc_C1C48A: ImpAdCallFPR4  = IIf(, , )
  loc_C1C48F: LitVarStr var_218, vbNullString
  loc_C1C494: FStVarCopyObj var_228
  loc_C1C497: FLdRfVar var_228
  loc_C1C49A: LitStr "<br>(4)&nbsp;"
  loc_C1C49D: FMemLdR4 var_144(168)
  loc_C1C4A2: ConcatStr
  loc_C1C4A3: CVarStr var_208
  loc_C1C4A6: FMemLdR4 var_144(168)
  loc_C1C4AB: LitStr "0,00"
  loc_C1C4AE: NeStr
  loc_C1C4B0: CVarBoolI2 var_1F8
  loc_C1C4B4: FLdRfVar var_238
  loc_C1C4B7: ImpAdCallFPR4  = IIf(, , )
  loc_C1C4BC: LitVarStr var_278, vbNullString
  loc_C1C4C1: FStVarCopyObj var_288
  loc_C1C4C4: FLdRfVar var_288
  loc_C1C4C7: LitStr "<br>(5)&nbsp;"
  loc_C1C4CA: FMemLdR4 var_144(172)
  loc_C1C4CF: ConcatStr
  loc_C1C4D0: CVarStr var_268
  loc_C1C4D3: FMemLdR4 var_144(172)
  loc_C1C4D8: LitStr "0,00"
  loc_C1C4DB: NeStr
  loc_C1C4DD: CVarBoolI2 var_258
  loc_C1C4E1: FLdRfVar var_298
  loc_C1C4E4: ImpAdCallFPR4  = IIf(, , )
  loc_C1C4E9: LitVarStr var_2D8, vbNullString
  loc_C1C4EE: FStVarCopyObj var_2E8
  loc_C1C4F1: FLdRfVar var_2E8
  loc_C1C4F4: LitStr "<br>(6)&nbsp;"
  loc_C1C4F7: FMemLdR4 var_144(176)
  loc_C1C4FC: ConcatStr
  loc_C1C4FD: CVarStr var_2C8
  loc_C1C500: FMemLdR4 var_144(176)
  loc_C1C505: LitStr "0,00"
  loc_C1C508: NeStr
  loc_C1C50A: CVarBoolI2 var_2B8
  loc_C1C50E: FLdRfVar var_2F8
  loc_C1C511: ImpAdCallFPR4  = IIf(, , )
  loc_C1C516: LitVarStr var_338, vbNullString
  loc_C1C51B: FStVarCopyObj var_348
  loc_C1C51E: FLdRfVar var_348
  loc_C1C521: LitStr "<br>(7)&nbsp;"
  loc_C1C524: FMemLdR4 var_144(180)
  loc_C1C529: ConcatStr
  loc_C1C52A: CVarStr var_328
  loc_C1C52D: FMemLdR4 var_144(180)
  loc_C1C532: LitStr "0,00"
  loc_C1C535: NeStr
  loc_C1C537: CVarBoolI2 var_318
  loc_C1C53B: FLdRfVar var_358
  loc_C1C53E: ImpAdCallFPR4  = IIf(, , )
  loc_C1C543: LitVarStr var_398, vbNullString
  loc_C1C548: FStVarCopyObj var_3A8
  loc_C1C54B: FLdRfVar var_3A8
  loc_C1C54E: LitStr "<br>(8)&nbsp;"
  loc_C1C551: FMemLdR4 var_144(184)
  loc_C1C556: ConcatStr
  loc_C1C557: CVarStr var_388
  loc_C1C55A: FMemLdR4 var_144(184)
  loc_C1C55F: LitStr "0,00"
  loc_C1C562: NeStr
  loc_C1C564: CVarBoolI2 var_378
  loc_C1C568: FLdRfVar var_3B8
  loc_C1C56B: ImpAdCallFPR4  = IIf(, , )
  loc_C1C570: LitVarStr var_3F8, vbNullString
  loc_C1C575: FStVarCopyObj var_408
  loc_C1C578: FLdRfVar var_408
  loc_C1C57B: LitStr "<br>(9)&nbsp;"
  loc_C1C57E: FMemLdR4 var_144(188)
  loc_C1C583: ConcatStr
  loc_C1C584: CVarStr var_3E8
  loc_C1C587: FMemLdR4 var_144(188)
  loc_C1C58C: LitStr "0,00"
  loc_C1C58F: NeStr
  loc_C1C591: CVarBoolI2 var_3D8
  loc_C1C595: FLdRfVar var_418
  loc_C1C598: ImpAdCallFPR4  = IIf(, , )
  loc_C1C59D: LitVarStr var_458, vbNullString
  loc_C1C5A2: FStVarCopyObj var_468
  loc_C1C5A5: FLdRfVar var_468
  loc_C1C5A8: LitStr "<br>(10)&nbsp;"
  loc_C1C5AB: FMemLdR4 var_144(192)
  loc_C1C5B0: ConcatStr
  loc_C1C5B1: CVarStr var_448
  loc_C1C5B4: FMemLdR4 var_144(192)
  loc_C1C5B9: LitStr "0,00"
  loc_C1C5BC: NeStr
  loc_C1C5BE: CVarBoolI2 var_438
  loc_C1C5C2: FLdRfVar var_478
  loc_C1C5C5: ImpAdCallFPR4  = IIf(, , )
  loc_C1C5CA: LitVarStr var_4B8, vbNullString
  loc_C1C5CF: FStVarCopyObj var_4C8
  loc_C1C5D2: FLdRfVar var_4C8
  loc_C1C5D5: LitStr "<br>(11)&nbsp;"
  loc_C1C5D8: FMemLdR4 var_144(196)
  loc_C1C5DD: ConcatStr
  loc_C1C5DE: CVarStr var_4A8
  loc_C1C5E1: FMemLdR4 var_144(196)
  loc_C1C5E6: LitStr "0,00"
  loc_C1C5E9: NeStr
  loc_C1C5EB: CVarBoolI2 var_498
  loc_C1C5EF: FLdRfVar var_4D8
  loc_C1C5F2: ImpAdCallFPR4  = IIf(, , )
  loc_C1C5F7: LitVarStr var_518, vbNullString
  loc_C1C5FC: FStVarCopyObj var_528
  loc_C1C5FF: FLdRfVar var_528
  loc_C1C602: LitStr "<br>(12)&nbsp;"
  loc_C1C605: FMemLdR4 var_144(200)
  loc_C1C60A: ConcatStr
  loc_C1C60B: CVarStr var_508
  loc_C1C60E: FMemLdR4 var_144(200)
  loc_C1C613: LitStr "0,00"
  loc_C1C616: NeStr
  loc_C1C618: CVarBoolI2 var_4F8
  loc_C1C61C: FLdRfVar var_538
  loc_C1C61F: ImpAdCallFPR4  = IIf(, , )
  loc_C1C624: LitI4 0
  loc_C1C629: LitI4 0
  loc_C1C62E: LitI2_Byte 0
  loc_C1C630: LitStr "right"
  loc_C1C633: FLdRfVar var_F8
  loc_C1C636: FLdRfVar var_178
  loc_C1C639: ConcatVar var_188
  loc_C1C63D: FLdRfVar var_1D8
  loc_C1C640: ConcatVar var_1E8
  loc_C1C644: FLdRfVar var_238
  loc_C1C647: ConcatVar var_248
  loc_C1C64B: FLdRfVar var_298
  loc_C1C64E: ConcatVar var_2A8
  loc_C1C652: FLdRfVar var_2F8
  loc_C1C655: ConcatVar var_308
  loc_C1C659: FLdRfVar var_358
  loc_C1C65C: ConcatVar var_368
  loc_C1C660: FLdRfVar var_3B8
  loc_C1C663: ConcatVar var_3C8
  loc_C1C667: FLdRfVar var_418
  loc_C1C66A: ConcatVar var_428
  loc_C1C66E: FLdRfVar var_478
  loc_C1C671: ConcatVar var_488
  loc_C1C675: FLdRfVar var_4D8
  loc_C1C678: ConcatVar var_4E8
  loc_C1C67C: FLdRfVar var_538
  loc_C1C67F: ConcatVar var_548
  loc_C1C683: LitVarStr var_558, "<br>(T)&nbsp;"
  loc_C1C688: ConcatVar var_568
  loc_C1C68C: FMemLdR4 var_144(36)
  loc_C1C691: CVarStr var_578
  loc_C1C694: ConcatVar var_588
  loc_C1C698: CStrVarVal var_C0
  loc_C1C69C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1C6A1: CVarStr var_598
  loc_C1C6A4: PopAdLdVar
  loc_C1C6A5: FLdPr Me
  loc_C1C6A8: MemLdRfVar from_stack_1.htmFile
  loc_C1C6AB: LdPrVar
  loc_C1C6AD: LateMemCall
  loc_C1C6B3: FFree1Str var_C0
  loc_C1C6B6: FFreeVar var_588 = "": var_598 = "": var_348 = "": var_308 = "": var_358 = "": var_378 = "": var_388 = "": var_3A8 = "": var_368 = "": var_3B8 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C8 = "": var_418 = "": var_438 = "": var_448 = "": var_468 = "": var_428 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4C8 = "": var_488 = "": var_4D8 = "": var_4F8 = "": var_508 = "": var_528 = "": var_4E8 = "": var_538 = "": var_548 = "": var_568 = "": var_AC = "": var_9C = "": var_E8 = "": var_158 = "": var_108 = "": var_118 = "": var_F8 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1E8 = "": var_238 = "": var_258 = "": var_268 = "": var_288 = "": var_248 = "": var_298 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_2A8 = "": var_2F8 = "": var_318 = ""
  loc_C1C735: LitVarStr var_BC, vbNullString
  loc_C1C73A: FStVarCopyObj var_E8
  loc_C1C73D: FLdRfVar var_E8
  loc_C1C740: LitStr "(1)&nbsp;"
  loc_C1C743: FMemLdR4 var_144(204)
  loc_C1C748: ConcatStr
  loc_C1C749: CVarStr var_9C
  loc_C1C74C: FMemLdR4 var_144(204)
  loc_C1C751: LitStr "0,00"
  loc_C1C754: NeStr
  loc_C1C756: CVarBoolI2 var_AC
  loc_C1C75A: FLdRfVar var_F8
  loc_C1C75D: ImpAdCallFPR4  = IIf(, , )
  loc_C1C762: LitVarStr var_168, vbNullString
  loc_C1C767: FStVarCopyObj var_118
  loc_C1C76A: FLdRfVar var_118
  loc_C1C76D: LitStr "<br>(2)&nbsp;"
  loc_C1C770: FMemLdR4 var_144(208)
  loc_C1C775: ConcatStr
  loc_C1C776: CVarStr var_108
  loc_C1C779: FMemLdR4 var_144(208)
  loc_C1C77E: LitStr "0,00"
  loc_C1C781: NeStr
  loc_C1C783: CVarBoolI2 var_158
  loc_C1C787: FLdRfVar var_178
  loc_C1C78A: ImpAdCallFPR4  = IIf(, , )
  loc_C1C78F: LitVarStr var_1B8, vbNullString
  loc_C1C794: FStVarCopyObj var_1C8
  loc_C1C797: FLdRfVar var_1C8
  loc_C1C79A: LitStr "<br>(3)&nbsp;"
  loc_C1C79D: FMemLdR4 var_144(212)
  loc_C1C7A2: ConcatStr
  loc_C1C7A3: CVarStr var_1A8
  loc_C1C7A6: FMemLdR4 var_144(212)
  loc_C1C7AB: LitStr "0,00"
  loc_C1C7AE: NeStr
  loc_C1C7B0: CVarBoolI2 var_198
  loc_C1C7B4: FLdRfVar var_1D8
  loc_C1C7B7: ImpAdCallFPR4  = IIf(, , )
  loc_C1C7BC: LitVarStr var_218, vbNullString
  loc_C1C7C1: FStVarCopyObj var_228
  loc_C1C7C4: FLdRfVar var_228
  loc_C1C7C7: LitStr "<br>(4)&nbsp;"
  loc_C1C7CA: FMemLdR4 var_144(216)
  loc_C1C7CF: ConcatStr
  loc_C1C7D0: CVarStr var_208
  loc_C1C7D3: FMemLdR4 var_144(216)
  loc_C1C7D8: LitStr "0,00"
  loc_C1C7DB: NeStr
  loc_C1C7DD: CVarBoolI2 var_1F8
  loc_C1C7E1: FLdRfVar var_238
  loc_C1C7E4: ImpAdCallFPR4  = IIf(, , )
  loc_C1C7E9: LitVarStr var_278, vbNullString
  loc_C1C7EE: FStVarCopyObj var_288
  loc_C1C7F1: FLdRfVar var_288
  loc_C1C7F4: LitStr "<br>(5)&nbsp;"
  loc_C1C7F7: FMemLdR4 var_144(220)
  loc_C1C7FC: ConcatStr
  loc_C1C7FD: CVarStr var_268
  loc_C1C800: FMemLdR4 var_144(220)
  loc_C1C805: LitStr "0,00"
  loc_C1C808: NeStr
  loc_C1C80A: CVarBoolI2 var_258
  loc_C1C80E: FLdRfVar var_298
  loc_C1C811: ImpAdCallFPR4  = IIf(, , )
  loc_C1C816: LitVarStr var_2D8, vbNullString
  loc_C1C81B: FStVarCopyObj var_2E8
  loc_C1C81E: FLdRfVar var_2E8
  loc_C1C821: LitStr "<br>(6)&nbsp;"
  loc_C1C824: FMemLdR4 var_144(224)
  loc_C1C829: ConcatStr
  loc_C1C82A: CVarStr var_2C8
  loc_C1C82D: FMemLdR4 var_144(224)
  loc_C1C832: LitStr "0,00"
  loc_C1C835: NeStr
  loc_C1C837: CVarBoolI2 var_2B8
  loc_C1C83B: FLdRfVar var_2F8
  loc_C1C83E: ImpAdCallFPR4  = IIf(, , )
  loc_C1C843: LitVarStr var_338, vbNullString
  loc_C1C848: FStVarCopyObj var_348
  loc_C1C84B: FLdRfVar var_348
  loc_C1C84E: LitStr "<br>(7)&nbsp;"
  loc_C1C851: FMemLdR4 var_144(228)
  loc_C1C856: ConcatStr
  loc_C1C857: CVarStr var_328
  loc_C1C85A: FMemLdR4 var_144(228)
  loc_C1C85F: LitStr "0,00"
  loc_C1C862: NeStr
  loc_C1C864: CVarBoolI2 var_318
  loc_C1C868: FLdRfVar var_358
  loc_C1C86B: ImpAdCallFPR4  = IIf(, , )
  loc_C1C870: LitVarStr var_398, vbNullString
  loc_C1C875: FStVarCopyObj var_3A8
  loc_C1C878: FLdRfVar var_3A8
  loc_C1C87B: LitStr "<br>(8)&nbsp;"
  loc_C1C87E: FMemLdR4 var_144(232)
  loc_C1C883: ConcatStr
  loc_C1C884: CVarStr var_388
  loc_C1C887: FMemLdR4 var_144(232)
  loc_C1C88C: LitStr "0,00"
  loc_C1C88F: NeStr
  loc_C1C891: CVarBoolI2 var_378
  loc_C1C895: FLdRfVar var_3B8
  loc_C1C898: ImpAdCallFPR4  = IIf(, , )
  loc_C1C89D: LitVarStr var_3F8, vbNullString
  loc_C1C8A2: FStVarCopyObj var_408
  loc_C1C8A5: FLdRfVar var_408
  loc_C1C8A8: LitStr "<br>(9)&nbsp;"
  loc_C1C8AB: FMemLdR4 var_144(236)
  loc_C1C8B0: ConcatStr
  loc_C1C8B1: CVarStr var_3E8
  loc_C1C8B4: FMemLdR4 var_144(236)
  loc_C1C8B9: LitStr "0,00"
  loc_C1C8BC: NeStr
  loc_C1C8BE: CVarBoolI2 var_3D8
  loc_C1C8C2: FLdRfVar var_418
  loc_C1C8C5: ImpAdCallFPR4  = IIf(, , )
  loc_C1C8CA: LitVarStr var_458, vbNullString
  loc_C1C8CF: FStVarCopyObj var_468
  loc_C1C8D2: FLdRfVar var_468
  loc_C1C8D5: LitStr "<br>(10)&nbsp;"
  loc_C1C8D8: FMemLdR4 var_144(240)
  loc_C1C8DD: ConcatStr
  loc_C1C8DE: CVarStr var_448
  loc_C1C8E1: FMemLdR4 var_144(240)
  loc_C1C8E6: LitStr "0,00"
  loc_C1C8E9: NeStr
  loc_C1C8EB: CVarBoolI2 var_438
  loc_C1C8EF: FLdRfVar var_478
  loc_C1C8F2: ImpAdCallFPR4  = IIf(, , )
  loc_C1C8F7: LitVarStr var_4B8, vbNullString
  loc_C1C8FC: FStVarCopyObj var_4C8
  loc_C1C8FF: FLdRfVar var_4C8
  loc_C1C902: LitStr "<br>(11)&nbsp;"
  loc_C1C905: FMemLdR4 var_144(244)
  loc_C1C90A: ConcatStr
  loc_C1C90B: CVarStr var_4A8
  loc_C1C90E: FMemLdR4 var_144(244)
  loc_C1C913: LitStr "0,00"
  loc_C1C916: NeStr
  loc_C1C918: CVarBoolI2 var_498
  loc_C1C91C: FLdRfVar var_4D8
  loc_C1C91F: ImpAdCallFPR4  = IIf(, , )
  loc_C1C924: LitVarStr var_518, vbNullString
  loc_C1C929: FStVarCopyObj var_528
  loc_C1C92C: FLdRfVar var_528
  loc_C1C92F: LitStr "<br>(12)&nbsp;"
  loc_C1C932: FMemLdR4 var_144(248)
  loc_C1C937: ConcatStr
  loc_C1C938: CVarStr var_508
  loc_C1C93B: FMemLdR4 var_144(248)
  loc_C1C940: LitStr "0,00"
  loc_C1C943: NeStr
  loc_C1C945: CVarBoolI2 var_4F8
  loc_C1C949: FLdRfVar var_538
  loc_C1C94C: ImpAdCallFPR4  = IIf(, , )
  loc_C1C951: LitI4 0
  loc_C1C956: LitI4 0
  loc_C1C95B: LitI2_Byte 0
  loc_C1C95D: LitStr "right"
  loc_C1C960: FLdRfVar var_F8
  loc_C1C963: FLdRfVar var_178
  loc_C1C966: ConcatVar var_188
  loc_C1C96A: FLdRfVar var_1D8
  loc_C1C96D: ConcatVar var_1E8
  loc_C1C971: FLdRfVar var_238
  loc_C1C974: ConcatVar var_248
  loc_C1C978: FLdRfVar var_298
  loc_C1C97B: ConcatVar var_2A8
  loc_C1C97F: FLdRfVar var_2F8
  loc_C1C982: ConcatVar var_308
  loc_C1C986: FLdRfVar var_358
  loc_C1C989: ConcatVar var_368
  loc_C1C98D: FLdRfVar var_3B8
  loc_C1C990: ConcatVar var_3C8
  loc_C1C994: FLdRfVar var_418
  loc_C1C997: ConcatVar var_428
  loc_C1C99B: FLdRfVar var_478
  loc_C1C99E: ConcatVar var_488
  loc_C1C9A2: FLdRfVar var_4D8
  loc_C1C9A5: ConcatVar var_4E8
  loc_C1C9A9: FLdRfVar var_538
  loc_C1C9AC: ConcatVar var_548
  loc_C1C9B0: LitVarStr var_558, "<br>(T)&nbsp;"
  loc_C1C9B5: ConcatVar var_568
  loc_C1C9B9: FMemLdR4 var_144(40)
  loc_C1C9BE: CVarStr var_578
  loc_C1C9C1: ConcatVar var_588
  loc_C1C9C5: CStrVarVal var_C0
  loc_C1C9C9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1C9CE: CVarStr var_598
  loc_C1C9D1: PopAdLdVar
  loc_C1C9D2: FLdPr Me
  loc_C1C9D5: MemLdRfVar from_stack_1.htmFile
  loc_C1C9D8: LdPrVar
  loc_C1C9DA: LateMemCall
  loc_C1C9E0: FFree1Str var_C0
  loc_C1C9E3: FFreeVar var_588 = "": var_598 = "": var_348 = "": var_308 = "": var_358 = "": var_378 = "": var_388 = "": var_3A8 = "": var_368 = "": var_3B8 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C8 = "": var_418 = "": var_438 = "": var_448 = "": var_468 = "": var_428 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4C8 = "": var_488 = "": var_4D8 = "": var_4F8 = "": var_508 = "": var_528 = "": var_4E8 = "": var_538 = "": var_548 = "": var_568 = "": var_AC = "": var_9C = "": var_E8 = "": var_158 = "": var_108 = "": var_118 = "": var_F8 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1E8 = "": var_238 = "": var_258 = "": var_268 = "": var_288 = "": var_248 = "": var_298 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_2A8 = "": var_2F8 = "": var_318 = ""
  loc_C1CA62: LitVarStr var_BC, vbNullString
  loc_C1CA67: FStVarCopyObj var_E8
  loc_C1CA6A: FLdRfVar var_E8
  loc_C1CA6D: LitStr "(1)&nbsp;"
  loc_C1CA70: FMemLdR4 var_144(252)
  loc_C1CA75: ConcatStr
  loc_C1CA76: CVarStr var_9C
  loc_C1CA79: FMemLdR4 var_144(252)
  loc_C1CA7E: LitStr "0,00"
  loc_C1CA81: NeStr
  loc_C1CA83: CVarBoolI2 var_AC
  loc_C1CA87: FLdRfVar var_F8
  loc_C1CA8A: ImpAdCallFPR4  = IIf(, , )
  loc_C1CA8F: LitVarStr var_168, vbNullString
  loc_C1CA94: FStVarCopyObj var_118
  loc_C1CA97: FLdRfVar var_118
  loc_C1CA9A: LitStr "<br>(2)&nbsp;"
  loc_C1CA9D: FMemLdR4 var_144(256)
  loc_C1CAA2: ConcatStr
  loc_C1CAA3: CVarStr var_108
  loc_C1CAA6: FMemLdR4 var_144(256)
  loc_C1CAAB: LitStr "0,00"
  loc_C1CAAE: NeStr
  loc_C1CAB0: CVarBoolI2 var_158
  loc_C1CAB4: FLdRfVar var_178
  loc_C1CAB7: ImpAdCallFPR4  = IIf(, , )
  loc_C1CABC: LitVarStr var_1B8, vbNullString
  loc_C1CAC1: FStVarCopyObj var_1C8
  loc_C1CAC4: FLdRfVar var_1C8
  loc_C1CAC7: LitStr "<br>(3)&nbsp;"
  loc_C1CACA: FMemLdR4 var_144(260)
  loc_C1CACF: ConcatStr
  loc_C1CAD0: CVarStr var_1A8
  loc_C1CAD3: FMemLdR4 var_144(260)
  loc_C1CAD8: LitStr "0,00"
  loc_C1CADB: NeStr
  loc_C1CADD: CVarBoolI2 var_198
  loc_C1CAE1: FLdRfVar var_1D8
  loc_C1CAE4: ImpAdCallFPR4  = IIf(, , )
  loc_C1CAE9: LitVarStr var_218, vbNullString
  loc_C1CAEE: FStVarCopyObj var_228
  loc_C1CAF1: FLdRfVar var_228
  loc_C1CAF4: LitStr "<br>(4)&nbsp;"
  loc_C1CAF7: FMemLdR4 var_144(264)
  loc_C1CAFC: ConcatStr
  loc_C1CAFD: CVarStr var_208
  loc_C1CB00: FMemLdR4 var_144(264)
  loc_C1CB05: LitStr "0,00"
  loc_C1CB08: NeStr
  loc_C1CB0A: CVarBoolI2 var_1F8
  loc_C1CB0E: FLdRfVar var_238
  loc_C1CB11: ImpAdCallFPR4  = IIf(, , )
  loc_C1CB16: LitVarStr var_278, vbNullString
  loc_C1CB1B: FStVarCopyObj var_288
  loc_C1CB1E: FLdRfVar var_288
  loc_C1CB21: LitStr "<br>(5)&nbsp;"
  loc_C1CB24: FMemLdR4 var_144(268)
  loc_C1CB29: ConcatStr
  loc_C1CB2A: CVarStr var_268
  loc_C1CB2D: FMemLdR4 var_144(268)
  loc_C1CB32: LitStr "0,00"
  loc_C1CB35: NeStr
  loc_C1CB37: CVarBoolI2 var_258
  loc_C1CB3B: FLdRfVar var_298
  loc_C1CB3E: ImpAdCallFPR4  = IIf(, , )
  loc_C1CB43: LitVarStr var_2D8, vbNullString
  loc_C1CB48: FStVarCopyObj var_2E8
  loc_C1CB4B: FLdRfVar var_2E8
  loc_C1CB4E: LitStr "<br>(6)&nbsp;"
  loc_C1CB51: FMemLdR4 var_144(272)
  loc_C1CB56: ConcatStr
  loc_C1CB57: CVarStr var_2C8
  loc_C1CB5A: FMemLdR4 var_144(272)
  loc_C1CB5F: LitStr "0,00"
  loc_C1CB62: NeStr
  loc_C1CB64: CVarBoolI2 var_2B8
  loc_C1CB68: FLdRfVar var_2F8
  loc_C1CB6B: ImpAdCallFPR4  = IIf(, , )
  loc_C1CB70: LitVarStr var_338, vbNullString
  loc_C1CB75: FStVarCopyObj var_348
  loc_C1CB78: FLdRfVar var_348
  loc_C1CB7B: LitStr "<br>(7)&nbsp;"
  loc_C1CB7E: FMemLdR4 var_144(276)
  loc_C1CB83: ConcatStr
  loc_C1CB84: CVarStr var_328
  loc_C1CB87: FMemLdR4 var_144(276)
  loc_C1CB8C: LitStr "0,00"
  loc_C1CB8F: NeStr
  loc_C1CB91: CVarBoolI2 var_318
  loc_C1CB95: FLdRfVar var_358
  loc_C1CB98: ImpAdCallFPR4  = IIf(, , )
  loc_C1CB9D: LitVarStr var_398, vbNullString
  loc_C1CBA2: FStVarCopyObj var_3A8
  loc_C1CBA5: FLdRfVar var_3A8
  loc_C1CBA8: LitStr "<br>(8)&nbsp;"
  loc_C1CBAB: FMemLdR4 var_144(280)
  loc_C1CBB0: ConcatStr
  loc_C1CBB1: CVarStr var_388
  loc_C1CBB4: FMemLdR4 var_144(280)
  loc_C1CBB9: LitStr "0,00"
  loc_C1CBBC: NeStr
  loc_C1CBBE: CVarBoolI2 var_378
  loc_C1CBC2: FLdRfVar var_3B8
  loc_C1CBC5: ImpAdCallFPR4  = IIf(, , )
  loc_C1CBCA: LitVarStr var_3F8, vbNullString
  loc_C1CBCF: FStVarCopyObj var_408
  loc_C1CBD2: FLdRfVar var_408
  loc_C1CBD5: LitStr "<br>(9)&nbsp;"
  loc_C1CBD8: FMemLdR4 var_144(284)
  loc_C1CBDD: ConcatStr
  loc_C1CBDE: CVarStr var_3E8
  loc_C1CBE1: FMemLdR4 var_144(284)
  loc_C1CBE6: LitStr "0,00"
  loc_C1CBE9: NeStr
  loc_C1CBEB: CVarBoolI2 var_3D8
  loc_C1CBEF: FLdRfVar var_418
  loc_C1CBF2: ImpAdCallFPR4  = IIf(, , )
  loc_C1CBF7: LitVarStr var_458, vbNullString
  loc_C1CBFC: FStVarCopyObj var_468
  loc_C1CBFF: FLdRfVar var_468
  loc_C1CC02: LitStr "<br>(10)&nbsp;"
  loc_C1CC05: FMemLdR4 var_144(288)
  loc_C1CC0A: ConcatStr
  loc_C1CC0B: CVarStr var_448
  loc_C1CC0E: FMemLdR4 var_144(288)
  loc_C1CC13: LitStr "0,00"
  loc_C1CC16: NeStr
  loc_C1CC18: CVarBoolI2 var_438
  loc_C1CC1C: FLdRfVar var_478
  loc_C1CC1F: ImpAdCallFPR4  = IIf(, , )
  loc_C1CC24: LitVarStr var_4B8, vbNullString
  loc_C1CC29: FStVarCopyObj var_4C8
  loc_C1CC2C: FLdRfVar var_4C8
  loc_C1CC2F: LitStr "<br>(11)&nbsp;"
  loc_C1CC32: FMemLdR4 var_144(292)
  loc_C1CC37: ConcatStr
  loc_C1CC38: CVarStr var_4A8
  loc_C1CC3B: FMemLdR4 var_144(292)
  loc_C1CC40: LitStr "0,00"
  loc_C1CC43: NeStr
  loc_C1CC45: CVarBoolI2 var_498
  loc_C1CC49: FLdRfVar var_4D8
  loc_C1CC4C: ImpAdCallFPR4  = IIf(, , )
  loc_C1CC51: LitVarStr var_518, vbNullString
  loc_C1CC56: FStVarCopyObj var_528
  loc_C1CC59: FLdRfVar var_528
  loc_C1CC5C: LitStr "<br>(12)&nbsp;"
  loc_C1CC5F: FMemLdR4 var_144(296)
  loc_C1CC64: ConcatStr
  loc_C1CC65: CVarStr var_508
  loc_C1CC68: FMemLdR4 var_144(296)
  loc_C1CC6D: LitStr "0,00"
  loc_C1CC70: NeStr
  loc_C1CC72: CVarBoolI2 var_4F8
  loc_C1CC76: FLdRfVar var_538
  loc_C1CC79: ImpAdCallFPR4  = IIf(, , )
  loc_C1CC7E: LitI4 0
  loc_C1CC83: LitI4 0
  loc_C1CC88: LitI2_Byte 0
  loc_C1CC8A: LitStr "right"
  loc_C1CC8D: FLdRfVar var_F8
  loc_C1CC90: FLdRfVar var_178
  loc_C1CC93: ConcatVar var_188
  loc_C1CC97: FLdRfVar var_1D8
  loc_C1CC9A: ConcatVar var_1E8
  loc_C1CC9E: FLdRfVar var_238
  loc_C1CCA1: ConcatVar var_248
  loc_C1CCA5: FLdRfVar var_298
  loc_C1CCA8: ConcatVar var_2A8
  loc_C1CCAC: FLdRfVar var_2F8
  loc_C1CCAF: ConcatVar var_308
  loc_C1CCB3: FLdRfVar var_358
  loc_C1CCB6: ConcatVar var_368
  loc_C1CCBA: FLdRfVar var_3B8
  loc_C1CCBD: ConcatVar var_3C8
  loc_C1CCC1: FLdRfVar var_418
  loc_C1CCC4: ConcatVar var_428
  loc_C1CCC8: FLdRfVar var_478
  loc_C1CCCB: ConcatVar var_488
  loc_C1CCCF: FLdRfVar var_4D8
  loc_C1CCD2: ConcatVar var_4E8
  loc_C1CCD6: FLdRfVar var_538
  loc_C1CCD9: ConcatVar var_548
  loc_C1CCDD: LitVarStr var_558, "<br>(T)&nbsp;"
  loc_C1CCE2: ConcatVar var_568
  loc_C1CCE6: FMemLdR4 var_144(44)
  loc_C1CCEB: CVarStr var_578
  loc_C1CCEE: ConcatVar var_588
  loc_C1CCF2: CStrVarVal var_C0
  loc_C1CCF6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1CCFB: CVarStr var_598
  loc_C1CCFE: PopAdLdVar
  loc_C1CCFF: FLdPr Me
  loc_C1CD02: MemLdRfVar from_stack_1.htmFile
  loc_C1CD05: LdPrVar
  loc_C1CD07: LateMemCall
  loc_C1CD0D: FFree1Str var_C0
  loc_C1CD10: FFreeVar var_588 = "": var_598 = "": var_348 = "": var_308 = "": var_358 = "": var_378 = "": var_388 = "": var_3A8 = "": var_368 = "": var_3B8 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C8 = "": var_418 = "": var_438 = "": var_448 = "": var_468 = "": var_428 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4C8 = "": var_488 = "": var_4D8 = "": var_4F8 = "": var_508 = "": var_528 = "": var_4E8 = "": var_538 = "": var_548 = "": var_568 = "": var_AC = "": var_9C = "": var_E8 = "": var_158 = "": var_108 = "": var_118 = "": var_F8 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1E8 = "": var_238 = "": var_258 = "": var_268 = "": var_288 = "": var_248 = "": var_298 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_2A8 = "": var_2F8 = "": var_318 = ""
  loc_C1CD8F: LitVarStr var_BC, vbNullString
  loc_C1CD94: FStVarCopyObj var_E8
  loc_C1CD97: FLdRfVar var_E8
  loc_C1CD9A: LitStr "(1)&nbsp;"
  loc_C1CD9D: FMemLdR4 var_144(300)
  loc_C1CDA2: ConcatStr
  loc_C1CDA3: CVarStr var_9C
  loc_C1CDA6: FMemLdR4 var_144(300)
  loc_C1CDAB: LitStr "0,00"
  loc_C1CDAE: NeStr
  loc_C1CDB0: CVarBoolI2 var_AC
  loc_C1CDB4: FLdRfVar var_F8
  loc_C1CDB7: ImpAdCallFPR4  = IIf(, , )
  loc_C1CDBC: LitVarStr var_168, vbNullString
  loc_C1CDC1: FStVarCopyObj var_118
  loc_C1CDC4: FLdRfVar var_118
  loc_C1CDC7: LitStr "<br>(2)&nbsp;"
  loc_C1CDCA: FMemLdR4 var_144(304)
  loc_C1CDCF: ConcatStr
  loc_C1CDD0: CVarStr var_108
  loc_C1CDD3: FMemLdR4 var_144(304)
  loc_C1CDD8: LitStr "0,00"
  loc_C1CDDB: NeStr
  loc_C1CDDD: CVarBoolI2 var_158
  loc_C1CDE1: FLdRfVar var_178
  loc_C1CDE4: ImpAdCallFPR4  = IIf(, , )
  loc_C1CDE9: LitVarStr var_1B8, vbNullString
  loc_C1CDEE: FStVarCopyObj var_1C8
  loc_C1CDF1: FLdRfVar var_1C8
  loc_C1CDF4: LitStr "<br>(3)&nbsp;"
  loc_C1CDF7: FMemLdR4 var_144(308)
  loc_C1CDFC: ConcatStr
  loc_C1CDFD: CVarStr var_1A8
  loc_C1CE00: FMemLdR4 var_144(308)
  loc_C1CE05: LitStr "0,00"
  loc_C1CE08: NeStr
  loc_C1CE0A: CVarBoolI2 var_198
  loc_C1CE0E: FLdRfVar var_1D8
  loc_C1CE11: ImpAdCallFPR4  = IIf(, , )
  loc_C1CE16: LitVarStr var_218, vbNullString
  loc_C1CE1B: FStVarCopyObj var_228
  loc_C1CE1E: FLdRfVar var_228
  loc_C1CE21: LitStr "<br>(4)&nbsp;"
  loc_C1CE24: FMemLdR4 var_144(312)
  loc_C1CE29: ConcatStr
  loc_C1CE2A: CVarStr var_208
  loc_C1CE2D: FMemLdR4 var_144(312)
  loc_C1CE32: LitStr "0,00"
  loc_C1CE35: NeStr
  loc_C1CE37: CVarBoolI2 var_1F8
  loc_C1CE3B: FLdRfVar var_238
  loc_C1CE3E: ImpAdCallFPR4  = IIf(, , )
  loc_C1CE43: LitVarStr var_278, vbNullString
  loc_C1CE48: FStVarCopyObj var_288
  loc_C1CE4B: FLdRfVar var_288
  loc_C1CE4E: LitStr "<br>(5)&nbsp;"
  loc_C1CE51: FMemLdR4 var_144(316)
  loc_C1CE56: ConcatStr
  loc_C1CE57: CVarStr var_268
  loc_C1CE5A: FMemLdR4 var_144(316)
  loc_C1CE5F: LitStr "0,00"
  loc_C1CE62: NeStr
  loc_C1CE64: CVarBoolI2 var_258
  loc_C1CE68: FLdRfVar var_298
  loc_C1CE6B: ImpAdCallFPR4  = IIf(, , )
  loc_C1CE70: LitVarStr var_2D8, vbNullString
  loc_C1CE75: FStVarCopyObj var_2E8
  loc_C1CE78: FLdRfVar var_2E8
  loc_C1CE7B: LitStr "<br>(6)&nbsp;"
  loc_C1CE7E: FMemLdR4 var_144(320)
  loc_C1CE83: ConcatStr
  loc_C1CE84: CVarStr var_2C8
  loc_C1CE87: FMemLdR4 var_144(320)
  loc_C1CE8C: LitStr "0,00"
  loc_C1CE8F: NeStr
  loc_C1CE91: CVarBoolI2 var_2B8
  loc_C1CE95: FLdRfVar var_2F8
  loc_C1CE98: ImpAdCallFPR4  = IIf(, , )
  loc_C1CE9D: LitVarStr var_338, vbNullString
  loc_C1CEA2: FStVarCopyObj var_348
  loc_C1CEA5: FLdRfVar var_348
  loc_C1CEA8: LitStr "<br>(7)&nbsp;"
  loc_C1CEAB: FMemLdR4 var_144(324)
  loc_C1CEB0: ConcatStr
  loc_C1CEB1: CVarStr var_328
  loc_C1CEB4: FMemLdR4 var_144(324)
  loc_C1CEB9: LitStr "0,00"
  loc_C1CEBC: NeStr
  loc_C1CEBE: CVarBoolI2 var_318
  loc_C1CEC2: FLdRfVar var_358
  loc_C1CEC5: ImpAdCallFPR4  = IIf(, , )
  loc_C1CECA: LitVarStr var_398, vbNullString
  loc_C1CECF: FStVarCopyObj var_3A8
  loc_C1CED2: FLdRfVar var_3A8
  loc_C1CED5: LitStr "<br>(8)&nbsp;"
  loc_C1CED8: FMemLdR4 var_144(328)
  loc_C1CEDD: ConcatStr
  loc_C1CEDE: CVarStr var_388
  loc_C1CEE1: FMemLdR4 var_144(328)
  loc_C1CEE6: LitStr "0,00"
  loc_C1CEE9: NeStr
  loc_C1CEEB: CVarBoolI2 var_378
  loc_C1CEEF: FLdRfVar var_3B8
  loc_C1CEF2: ImpAdCallFPR4  = IIf(, , )
  loc_C1CEF7: LitVarStr var_3F8, vbNullString
  loc_C1CEFC: FStVarCopyObj var_408
  loc_C1CEFF: FLdRfVar var_408
  loc_C1CF02: LitStr "<br>(9)&nbsp;"
  loc_C1CF05: FMemLdR4 var_144(332)
  loc_C1CF0A: ConcatStr
  loc_C1CF0B: CVarStr var_3E8
  loc_C1CF0E: FMemLdR4 var_144(332)
  loc_C1CF13: LitStr "0,00"
  loc_C1CF16: NeStr
  loc_C1CF18: CVarBoolI2 var_3D8
  loc_C1CF1C: FLdRfVar var_418
  loc_C1CF1F: ImpAdCallFPR4  = IIf(, , )
  loc_C1CF24: LitVarStr var_458, vbNullString
  loc_C1CF29: FStVarCopyObj var_468
  loc_C1CF2C: FLdRfVar var_468
  loc_C1CF2F: LitStr "<br>(10)&nbsp;"
  loc_C1CF32: FMemLdR4 var_144(336)
  loc_C1CF37: ConcatStr
  loc_C1CF38: CVarStr var_448
  loc_C1CF3B: FMemLdR4 var_144(336)
  loc_C1CF40: LitStr "0,00"
  loc_C1CF43: NeStr
  loc_C1CF45: CVarBoolI2 var_438
  loc_C1CF49: FLdRfVar var_478
  loc_C1CF4C: ImpAdCallFPR4  = IIf(, , )
  loc_C1CF51: LitVarStr var_4B8, vbNullString
  loc_C1CF56: FStVarCopyObj var_4C8
  loc_C1CF59: FLdRfVar var_4C8
  loc_C1CF5C: LitStr "<br>(11)&nbsp;"
  loc_C1CF5F: FMemLdR4 var_144(340)
  loc_C1CF64: ConcatStr
  loc_C1CF65: CVarStr var_4A8
  loc_C1CF68: FMemLdR4 var_144(340)
  loc_C1CF6D: LitStr "0,00"
  loc_C1CF70: NeStr
  loc_C1CF72: CVarBoolI2 var_498
  loc_C1CF76: FLdRfVar var_4D8
  loc_C1CF79: ImpAdCallFPR4  = IIf(, , )
  loc_C1CF7E: LitVarStr var_518, vbNullString
  loc_C1CF83: FStVarCopyObj var_528
  loc_C1CF86: FLdRfVar var_528
  loc_C1CF89: LitStr "<br>(12)&nbsp;"
  loc_C1CF8C: FMemLdR4 var_144(344)
  loc_C1CF91: ConcatStr
  loc_C1CF92: CVarStr var_508
  loc_C1CF95: FMemLdR4 var_144(344)
  loc_C1CF9A: LitStr "0,00"
  loc_C1CF9D: NeStr
  loc_C1CF9F: CVarBoolI2 var_4F8
  loc_C1CFA3: FLdRfVar var_538
  loc_C1CFA6: ImpAdCallFPR4  = IIf(, , )
  loc_C1CFAB: LitI4 0
  loc_C1CFB0: LitI4 0
  loc_C1CFB5: LitI2_Byte 0
  loc_C1CFB7: LitStr "right"
  loc_C1CFBA: FLdRfVar var_F8
  loc_C1CFBD: FLdRfVar var_178
  loc_C1CFC0: ConcatVar var_188
  loc_C1CFC4: FLdRfVar var_1D8
  loc_C1CFC7: ConcatVar var_1E8
  loc_C1CFCB: FLdRfVar var_238
  loc_C1CFCE: ConcatVar var_248
  loc_C1CFD2: FLdRfVar var_298
  loc_C1CFD5: ConcatVar var_2A8
  loc_C1CFD9: FLdRfVar var_2F8
  loc_C1CFDC: ConcatVar var_308
  loc_C1CFE0: FLdRfVar var_358
  loc_C1CFE3: ConcatVar var_368
  loc_C1CFE7: FLdRfVar var_3B8
  loc_C1CFEA: ConcatVar var_3C8
  loc_C1CFEE: FLdRfVar var_418
  loc_C1CFF1: ConcatVar var_428
  loc_C1CFF5: FLdRfVar var_478
  loc_C1CFF8: ConcatVar var_488
  loc_C1CFFC: FLdRfVar var_4D8
  loc_C1CFFF: ConcatVar var_4E8
  loc_C1D003: FLdRfVar var_538
  loc_C1D006: ConcatVar var_548
  loc_C1D00A: LitVarStr var_558, "<br>(T)&nbsp;"
  loc_C1D00F: ConcatVar var_568
  loc_C1D013: FMemLdR4 var_144(48)
  loc_C1D018: CVarStr var_578
  loc_C1D01B: ConcatVar var_588
  loc_C1D01F: CStrVarVal var_C0
  loc_C1D023: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D028: CVarStr var_598
  loc_C1D02B: PopAdLdVar
  loc_C1D02C: FLdPr Me
  loc_C1D02F: MemLdRfVar from_stack_1.htmFile
  loc_C1D032: LdPrVar
  loc_C1D034: LateMemCall
  loc_C1D03A: FFree1Str var_C0
  loc_C1D03D: FFreeVar var_588 = "": var_598 = "": var_348 = "": var_308 = "": var_358 = "": var_378 = "": var_388 = "": var_3A8 = "": var_368 = "": var_3B8 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C8 = "": var_418 = "": var_438 = "": var_448 = "": var_468 = "": var_428 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4C8 = "": var_488 = "": var_4D8 = "": var_4F8 = "": var_508 = "": var_528 = "": var_4E8 = "": var_538 = "": var_548 = "": var_568 = "": var_AC = "": var_9C = "": var_E8 = "": var_158 = "": var_108 = "": var_118 = "": var_F8 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1E8 = "": var_238 = "": var_258 = "": var_268 = "": var_288 = "": var_248 = "": var_298 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_2A8 = "": var_2F8 = "": var_318 = ""
  loc_C1D0BC: LitI4 0
  loc_C1D0C1: LitI4 0
  loc_C1D0C6: LitI2_Byte 0
  loc_C1D0C8: LitStr "right"
  loc_C1D0CB: FMemLdR4 var_144(52)
  loc_C1D0D0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D0D5: CVarStr var_9C
  loc_C1D0D8: PopAdLdVar
  loc_C1D0D9: FLdPr Me
  loc_C1D0DC: MemLdRfVar from_stack_1.htmFile
  loc_C1D0DF: LdPrVar
  loc_C1D0E1: LateMemCall
  loc_C1D0E7: FFree1Var var_9C = ""
  loc_C1D0EA: LitVarStr var_BC, vbNullString
  loc_C1D0EF: FStVarCopyObj var_E8
  loc_C1D0F2: FLdRfVar var_E8
  loc_C1D0F5: LitStr "(1)&nbsp;"
  loc_C1D0F8: FMemLdR4 var_144(348)
  loc_C1D0FD: ConcatStr
  loc_C1D0FE: CVarStr var_9C
  loc_C1D101: FMemLdR4 var_144(348)
  loc_C1D106: LitStr "0,00"
  loc_C1D109: NeStr
  loc_C1D10B: CVarBoolI2 var_AC
  loc_C1D10F: FLdRfVar var_F8
  loc_C1D112: ImpAdCallFPR4  = IIf(, , )
  loc_C1D117: LitVarStr var_168, vbNullString
  loc_C1D11C: FStVarCopyObj var_118
  loc_C1D11F: FLdRfVar var_118
  loc_C1D122: LitStr "<br>(2)&nbsp;"
  loc_C1D125: FMemLdR4 var_144(352)
  loc_C1D12A: ConcatStr
  loc_C1D12B: CVarStr var_108
  loc_C1D12E: FMemLdR4 var_144(352)
  loc_C1D133: LitStr "0,00"
  loc_C1D136: NeStr
  loc_C1D138: CVarBoolI2 var_158
  loc_C1D13C: FLdRfVar var_178
  loc_C1D13F: ImpAdCallFPR4  = IIf(, , )
  loc_C1D144: LitVarStr var_1B8, vbNullString
  loc_C1D149: FStVarCopyObj var_1C8
  loc_C1D14C: FLdRfVar var_1C8
  loc_C1D14F: LitStr "<br>(3)&nbsp;"
  loc_C1D152: FMemLdR4 var_144(356)
  loc_C1D157: ConcatStr
  loc_C1D158: CVarStr var_1A8
  loc_C1D15B: FMemLdR4 var_144(356)
  loc_C1D160: LitStr "0,00"
  loc_C1D163: NeStr
  loc_C1D165: CVarBoolI2 var_198
  loc_C1D169: FLdRfVar var_1D8
  loc_C1D16C: ImpAdCallFPR4  = IIf(, , )
  loc_C1D171: LitVarStr var_218, vbNullString
  loc_C1D176: FStVarCopyObj var_228
  loc_C1D179: FLdRfVar var_228
  loc_C1D17C: LitStr "<br>(4)&nbsp;"
  loc_C1D17F: FMemLdR4 var_144(360)
  loc_C1D184: ConcatStr
  loc_C1D185: CVarStr var_208
  loc_C1D188: FMemLdR4 var_144(360)
  loc_C1D18D: LitStr "0,00"
  loc_C1D190: NeStr
  loc_C1D192: CVarBoolI2 var_1F8
  loc_C1D196: FLdRfVar var_238
  loc_C1D199: ImpAdCallFPR4  = IIf(, , )
  loc_C1D19E: LitVarStr var_278, vbNullString
  loc_C1D1A3: FStVarCopyObj var_288
  loc_C1D1A6: FLdRfVar var_288
  loc_C1D1A9: LitStr "<br>(5)&nbsp;"
  loc_C1D1AC: FMemLdR4 var_144(364)
  loc_C1D1B1: ConcatStr
  loc_C1D1B2: CVarStr var_268
  loc_C1D1B5: FMemLdR4 var_144(364)
  loc_C1D1BA: LitStr "0,00"
  loc_C1D1BD: NeStr
  loc_C1D1BF: CVarBoolI2 var_258
  loc_C1D1C3: FLdRfVar var_298
  loc_C1D1C6: ImpAdCallFPR4  = IIf(, , )
  loc_C1D1CB: LitVarStr var_2D8, vbNullString
  loc_C1D1D0: FStVarCopyObj var_2E8
  loc_C1D1D3: FLdRfVar var_2E8
  loc_C1D1D6: LitStr "<br>(6)&nbsp;"
  loc_C1D1D9: FMemLdR4 var_144(368)
  loc_C1D1DE: ConcatStr
  loc_C1D1DF: CVarStr var_2C8
  loc_C1D1E2: FMemLdR4 var_144(368)
  loc_C1D1E7: LitStr "0,00"
  loc_C1D1EA: NeStr
  loc_C1D1EC: CVarBoolI2 var_2B8
  loc_C1D1F0: FLdRfVar var_2F8
  loc_C1D1F3: ImpAdCallFPR4  = IIf(, , )
  loc_C1D1F8: LitVarStr var_338, vbNullString
  loc_C1D1FD: FStVarCopyObj var_348
  loc_C1D200: FLdRfVar var_348
  loc_C1D203: LitStr "<br>(7)&nbsp;"
  loc_C1D206: FMemLdR4 var_144(372)
  loc_C1D20B: ConcatStr
  loc_C1D20C: CVarStr var_328
  loc_C1D20F: FMemLdR4 var_144(372)
  loc_C1D214: LitStr "0,00"
  loc_C1D217: NeStr
  loc_C1D219: CVarBoolI2 var_318
  loc_C1D21D: FLdRfVar var_358
  loc_C1D220: ImpAdCallFPR4  = IIf(, , )
  loc_C1D225: LitVarStr var_398, vbNullString
  loc_C1D22A: FStVarCopyObj var_3A8
  loc_C1D22D: FLdRfVar var_3A8
  loc_C1D230: LitStr "<br>(8)&nbsp;"
  loc_C1D233: FMemLdR4 var_144(376)
  loc_C1D238: ConcatStr
  loc_C1D239: CVarStr var_388
  loc_C1D23C: FMemLdR4 var_144(376)
  loc_C1D241: LitStr "0,00"
  loc_C1D244: NeStr
  loc_C1D246: CVarBoolI2 var_378
  loc_C1D24A: FLdRfVar var_3B8
  loc_C1D24D: ImpAdCallFPR4  = IIf(, , )
  loc_C1D252: LitVarStr var_3F8, vbNullString
  loc_C1D257: FStVarCopyObj var_408
  loc_C1D25A: FLdRfVar var_408
  loc_C1D25D: LitStr "<br>(9)&nbsp;"
  loc_C1D260: FMemLdR4 var_144(380)
  loc_C1D265: ConcatStr
  loc_C1D266: CVarStr var_3E8
  loc_C1D269: FMemLdR4 var_144(380)
  loc_C1D26E: LitStr "0,00"
  loc_C1D271: NeStr
  loc_C1D273: CVarBoolI2 var_3D8
  loc_C1D277: FLdRfVar var_418
  loc_C1D27A: ImpAdCallFPR4  = IIf(, , )
  loc_C1D27F: LitVarStr var_458, vbNullString
  loc_C1D284: FStVarCopyObj var_468
  loc_C1D287: FLdRfVar var_468
  loc_C1D28A: LitStr "<br>(10)&nbsp;"
  loc_C1D28D: FMemLdR4 var_144(384)
  loc_C1D292: ConcatStr
  loc_C1D293: CVarStr var_448
  loc_C1D296: FMemLdR4 var_144(384)
  loc_C1D29B: LitStr "0,00"
  loc_C1D29E: NeStr
  loc_C1D2A0: CVarBoolI2 var_438
  loc_C1D2A4: FLdRfVar var_478
  loc_C1D2A7: ImpAdCallFPR4  = IIf(, , )
  loc_C1D2AC: LitVarStr var_4B8, vbNullString
  loc_C1D2B1: FStVarCopyObj var_4C8
  loc_C1D2B4: FLdRfVar var_4C8
  loc_C1D2B7: LitStr "<br>(11)&nbsp;"
  loc_C1D2BA: FMemLdR4 var_144(388)
  loc_C1D2BF: ConcatStr
  loc_C1D2C0: CVarStr var_4A8
  loc_C1D2C3: FMemLdR4 var_144(388)
  loc_C1D2C8: LitStr "0,00"
  loc_C1D2CB: NeStr
  loc_C1D2CD: CVarBoolI2 var_498
  loc_C1D2D1: FLdRfVar var_4D8
  loc_C1D2D4: ImpAdCallFPR4  = IIf(, , )
  loc_C1D2D9: LitVarStr var_518, vbNullString
  loc_C1D2DE: FStVarCopyObj var_528
  loc_C1D2E1: FLdRfVar var_528
  loc_C1D2E4: LitStr "<br>(12)&nbsp;"
  loc_C1D2E7: FMemLdR4 var_144(392)
  loc_C1D2EC: ConcatStr
  loc_C1D2ED: CVarStr var_508
  loc_C1D2F0: FMemLdR4 var_144(392)
  loc_C1D2F5: LitStr "0,00"
  loc_C1D2F8: NeStr
  loc_C1D2FA: CVarBoolI2 var_4F8
  loc_C1D2FE: FLdRfVar var_538
  loc_C1D301: ImpAdCallFPR4  = IIf(, , )
  loc_C1D306: LitI4 0
  loc_C1D30B: LitI4 0
  loc_C1D310: LitI2_Byte 0
  loc_C1D312: LitStr "right"
  loc_C1D315: FLdRfVar var_F8
  loc_C1D318: FLdRfVar var_178
  loc_C1D31B: ConcatVar var_188
  loc_C1D31F: FLdRfVar var_1D8
  loc_C1D322: ConcatVar var_1E8
  loc_C1D326: FLdRfVar var_238
  loc_C1D329: ConcatVar var_248
  loc_C1D32D: FLdRfVar var_298
  loc_C1D330: ConcatVar var_2A8
  loc_C1D334: FLdRfVar var_2F8
  loc_C1D337: ConcatVar var_308
  loc_C1D33B: FLdRfVar var_358
  loc_C1D33E: ConcatVar var_368
  loc_C1D342: FLdRfVar var_3B8
  loc_C1D345: ConcatVar var_3C8
  loc_C1D349: FLdRfVar var_418
  loc_C1D34C: ConcatVar var_428
  loc_C1D350: FLdRfVar var_478
  loc_C1D353: ConcatVar var_488
  loc_C1D357: FLdRfVar var_4D8
  loc_C1D35A: ConcatVar var_4E8
  loc_C1D35E: FLdRfVar var_538
  loc_C1D361: ConcatVar var_548
  loc_C1D365: LitVarStr var_558, "<br>(T)&nbsp;"
  loc_C1D36A: ConcatVar var_568
  loc_C1D36E: FMemLdR4 var_144(56)
  loc_C1D373: CVarStr var_578
  loc_C1D376: ConcatVar var_588
  loc_C1D37A: CStrVarVal var_C0
  loc_C1D37E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D383: CVarStr var_598
  loc_C1D386: PopAdLdVar
  loc_C1D387: FLdPr Me
  loc_C1D38A: MemLdRfVar from_stack_1.htmFile
  loc_C1D38D: LdPrVar
  loc_C1D38F: LateMemCall
  loc_C1D395: FFree1Str var_C0
  loc_C1D398: FFreeVar var_588 = "": var_598 = "": var_348 = "": var_308 = "": var_358 = "": var_378 = "": var_388 = "": var_3A8 = "": var_368 = "": var_3B8 = "": var_3D8 = "": var_3E8 = "": var_408 = "": var_3C8 = "": var_418 = "": var_438 = "": var_448 = "": var_468 = "": var_428 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4C8 = "": var_488 = "": var_4D8 = "": var_4F8 = "": var_508 = "": var_528 = "": var_4E8 = "": var_538 = "": var_548 = "": var_568 = "": var_AC = "": var_9C = "": var_E8 = "": var_158 = "": var_108 = "": var_118 = "": var_F8 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1C8 = "": var_188 = "": var_1D8 = "": var_1F8 = "": var_208 = "": var_228 = "": var_1E8 = "": var_238 = "": var_258 = "": var_268 = "": var_288 = "": var_248 = "": var_298 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_2A8 = "": var_2F8 = "": var_318 = ""
  loc_C1D417: LitI4 0
  loc_C1D41C: FStR4 var_144
  loc_C1D41F: AryUnlock
  loc_C1D422: AryUnlock
  loc_C1D425: AryUnlock
  loc_C1D428: AryUnlock
  loc_C1D42B: LitVarStr var_AC, "     </tr>"
  loc_C1D430: PopAdLdVar
  loc_C1D431: FLdPr Me
  loc_C1D434: MemLdRfVar from_stack_1.htmFile
  loc_C1D437: LdPrVar
  loc_C1D439: LateMemCall
  loc_C1D43F: FLdPr Me
  loc_C1D442: VCallAd Control_ID_optAnalitico
  loc_C1D445: CVarAd
  loc_C1D449: CBoolVarNull
  loc_C1D44B: FFree1Var var_9C = ""
  loc_C1D44E: BranchF loc_C1D968
  loc_C1D451: LitI2_Byte 1
  loc_C1D453: FLdPr Me
  loc_C1D456: MemLdRfVar from_stack_1.global_116
  loc_C1D459: FLdPr Me
  loc_C1D45C: MemLdI2 global_114
  loc_C1D45F: CI4UI1
  loc_C1D460: FLdPr Me
  loc_C1D463: MemLdI2 global_112
  loc_C1D466: CI4UI1
  loc_C1D467: FLdPr Me
  loc_C1D46A: MemLdI2 global_110
  loc_C1D46D: CI4UI1
  loc_C1D46E: FLdPr Me
  loc_C1D471: MemLdI2 global_108
  loc_C1D474: CI4UI1
  loc_C1D475: FLdPr Me
  loc_C1D478: MemLdStr global_104
  loc_C1D47B: Ary1LdPr
  loc_C1D47C: MemLdStr global_8
  loc_C1D47F: Ary1LdPr
  loc_C1D480: MemLdStr global_396
  loc_C1D483: Ary1LdPr
  loc_C1D484: MemLdStr global_396
  loc_C1D487: Ary1LdPr
  loc_C1D488: MemLdStr global_396
  loc_C1D48B: LitI2_Byte 1
  loc_C1D48D: FnUBound
  loc_C1D48F: CI2I4
  loc_C1D490: ForI2 var_5AC
  loc_C1D496: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C1D49B: PopAdLdVar
  loc_C1D49C: FLdPr Me
  loc_C1D49F: MemLdRfVar from_stack_1.htmFile
  loc_C1D4A2: LdPrVar
  loc_C1D4A4: LateMemCall
  loc_C1D4AA: FLdPr Me
  loc_C1D4AD: MemLdI2 global_116
  loc_C1D4B0: CI4UI1
  loc_C1D4B1: FLdPr Me
  loc_C1D4B4: MemLdI2 global_114
  loc_C1D4B7: CI4UI1
  loc_C1D4B8: FLdPr Me
  loc_C1D4BB: MemLdI2 global_112
  loc_C1D4BE: CI4UI1
  loc_C1D4BF: FLdPr Me
  loc_C1D4C2: MemLdI2 global_110
  loc_C1D4C5: CI4UI1
  loc_C1D4C6: FLdPr Me
  loc_C1D4C9: MemLdI2 global_108
  loc_C1D4CC: CI4UI1
  loc_C1D4CD: FLdPr Me
  loc_C1D4D0: MemLdStr global_104
  loc_C1D4D3: AryLock
  loc_C1D4D6: Ary1LdPr
  loc_C1D4D7: MemLdStr global_8
  loc_C1D4DA: AryLock
  loc_C1D4DD: Ary1LdPr
  loc_C1D4DE: MemLdStr global_396
  loc_C1D4E1: AryLock
  loc_C1D4E4: Ary1LdPr
  loc_C1D4E5: MemLdStr global_396
  loc_C1D4E8: AryLock
  loc_C1D4EB: Ary1LdPr
  loc_C1D4EC: MemLdStr global_396
  loc_C1D4EF: AryLock
  loc_C1D4F2: Ary1LdRf
  loc_C1D4F3: FStR4 var_5C4
  loc_C1D4F6: LitI4 0
  loc_C1D4FB: LitI4 0
  loc_C1D500: LitI2_Byte 0
  loc_C1D502: LitStr "left"
  loc_C1D505: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_C1D508: FMemLdR4 var_5C4(0)
  loc_C1D50D: ConcatStr
  loc_C1D50E: FStStrNoPop var_C0
  loc_C1D511: LitStr "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_C1D514: ConcatStr
  loc_C1D515: FStStrNoPop var_C4
  loc_C1D518: FMemLdR4 var_5C4(4)
  loc_C1D51D: ConcatStr
  loc_C1D51E: FStStrNoPop var_C8
  loc_C1D521: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D526: CVarStr var_9C
  loc_C1D529: PopAdLdVar
  loc_C1D52A: FLdPr Me
  loc_C1D52D: MemLdRfVar from_stack_1.htmFile
  loc_C1D530: LdPrVar
  loc_C1D532: LateMemCall
  loc_C1D538: FFreeStr var_C0 = "": var_C4 = ""
  loc_C1D541: FFree1Var var_9C = ""
  loc_C1D544: LitI4 0
  loc_C1D549: LitI4 0
  loc_C1D54E: LitI2_Byte 0
  loc_C1D550: LitStr "right"
  loc_C1D553: FMemLdR4 var_5C4(12)
  loc_C1D558: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D55D: CVarStr var_9C
  loc_C1D560: PopAdLdVar
  loc_C1D561: FLdPr Me
  loc_C1D564: MemLdRfVar from_stack_1.htmFile
  loc_C1D567: LdPrVar
  loc_C1D569: LateMemCall
  loc_C1D56F: FFree1Var var_9C = ""
  loc_C1D572: LitI4 0
  loc_C1D577: LitI4 0
  loc_C1D57C: LitI2_Byte 0
  loc_C1D57E: LitStr "left"
  loc_C1D581: FMemLdR4 var_5C4(8)
  loc_C1D586: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D58B: CVarStr var_9C
  loc_C1D58E: PopAdLdVar
  loc_C1D58F: FLdPr Me
  loc_C1D592: MemLdRfVar from_stack_1.htmFile
  loc_C1D595: LdPrVar
  loc_C1D597: LateMemCall
  loc_C1D59D: FFree1Var var_9C = ""
  loc_C1D5A0: LitI4 0
  loc_C1D5A5: LitI4 0
  loc_C1D5AA: LitI2_Byte 0
  loc_C1D5AC: LitStr "right"
  loc_C1D5AF: FMemLdR4 var_5C4(16)
  loc_C1D5B4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D5B9: CVarStr var_9C
  loc_C1D5BC: PopAdLdVar
  loc_C1D5BD: FLdPr Me
  loc_C1D5C0: MemLdRfVar from_stack_1.htmFile
  loc_C1D5C3: LdPrVar
  loc_C1D5C5: LateMemCall
  loc_C1D5CB: FFree1Var var_9C = ""
  loc_C1D5CE: LitI4 0
  loc_C1D5D3: LitI4 0
  loc_C1D5D8: LitI2_Byte 0
  loc_C1D5DA: LitStr "right"
  loc_C1D5DD: FMemLdR4 var_5C4(20)
  loc_C1D5E2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D5E7: CVarStr var_9C
  loc_C1D5EA: PopAdLdVar
  loc_C1D5EB: FLdPr Me
  loc_C1D5EE: MemLdRfVar from_stack_1.htmFile
  loc_C1D5F1: LdPrVar
  loc_C1D5F3: LateMemCall
  loc_C1D5F9: FFree1Var var_9C = ""
  loc_C1D5FC: LitI4 0
  loc_C1D601: LitI4 0
  loc_C1D606: LitI2_Byte 0
  loc_C1D608: LitStr "right"
  loc_C1D60B: FMemLdR4 var_5C4(24)
  loc_C1D610: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D615: CVarStr var_9C
  loc_C1D618: PopAdLdVar
  loc_C1D619: FLdPr Me
  loc_C1D61C: MemLdRfVar from_stack_1.htmFile
  loc_C1D61F: LdPrVar
  loc_C1D621: LateMemCall
  loc_C1D627: FFree1Var var_9C = ""
  loc_C1D62A: LitI4 0
  loc_C1D62F: LitI4 0
  loc_C1D634: LitI2_Byte 0
  loc_C1D636: LitStr "right"
  loc_C1D639: FMemLdR4 var_5C4(28)
  loc_C1D63E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D643: CVarStr var_9C
  loc_C1D646: PopAdLdVar
  loc_C1D647: FLdPr Me
  loc_C1D64A: MemLdRfVar from_stack_1.htmFile
  loc_C1D64D: LdPrVar
  loc_C1D64F: LateMemCall
  loc_C1D655: FFree1Var var_9C = ""
  loc_C1D658: LitI4 0
  loc_C1D65D: LitI4 0
  loc_C1D662: LitI2_Byte 0
  loc_C1D664: LitStr "right"
  loc_C1D667: FMemLdR4 var_5C4(32)
  loc_C1D66C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D671: CVarStr var_9C
  loc_C1D674: PopAdLdVar
  loc_C1D675: FLdPr Me
  loc_C1D678: MemLdRfVar from_stack_1.htmFile
  loc_C1D67B: LdPrVar
  loc_C1D67D: LateMemCall
  loc_C1D683: FFree1Var var_9C = ""
  loc_C1D686: LitI4 0
  loc_C1D68B: LitI4 0
  loc_C1D690: LitI2_Byte 0
  loc_C1D692: LitStr "right"
  loc_C1D695: FMemLdR4 var_5C4(36)
  loc_C1D69A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D69F: CVarStr var_9C
  loc_C1D6A2: PopAdLdVar
  loc_C1D6A3: FLdPr Me
  loc_C1D6A6: MemLdRfVar from_stack_1.htmFile
  loc_C1D6A9: LdPrVar
  loc_C1D6AB: LateMemCall
  loc_C1D6B1: FFree1Var var_9C = ""
  loc_C1D6B4: FLdPr Me
  loc_C1D6B7: VCallAd Control_ID_mskHasta
  loc_C1D6BA: FStAdFunc var_88
  loc_C1D6BD: FLdPr var_88
  loc_C1D6C0: LateIdLdVar var_9C DispID_15 0
  loc_C1D6C7: PopAd
  loc_C1D6C9: LitStr "Municipalidad de Guaymallén"
  loc_C1D6CC: LitStr "Municipalidad de Tupungato"
  loc_C1D6CF: EqStr
  loc_C1D6D1: CVarBoolI2 var_BC
  loc_C1D6D5: LitI4 5
  loc_C1D6DA: FLdRfVar var_9C
  loc_C1D6DD: CStrVarTmp
  loc_C1D6DE: CVarStr var_E8
  loc_C1D6E1: FLdRfVar var_F8
  loc_C1D6E4: ImpAdCallFPR4  = Left(, )
  loc_C1D6E9: FLdRfVar var_F8
  loc_C1D6EC: LitVarStr var_AC, "31/12"
  loc_C1D6F1: HardType
  loc_C1D6F2: NeVar var_108
  loc_C1D6F6: AndVar var_118
  loc_C1D6FA: CBoolVarNull
  loc_C1D6FC: FFree1Ad var_88
  loc_C1D6FF: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1D70A: BranchF loc_C1D73C
  loc_C1D70D: LitI4 0
  loc_C1D712: LitI4 0
  loc_C1D717: LitI2_Byte 0
  loc_C1D719: LitStr "right"
  loc_C1D71C: LitStr "&nbsp;"
  loc_C1D71F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D724: CVarStr var_9C
  loc_C1D727: PopAdLdVar
  loc_C1D728: FLdPr Me
  loc_C1D72B: MemLdRfVar from_stack_1.htmFile
  loc_C1D72E: LdPrVar
  loc_C1D730: LateMemCall
  loc_C1D736: FFree1Var var_9C = ""
  loc_C1D739: Branch loc_C1D76A
  loc_C1D73C: LitI4 0
  loc_C1D741: LitI4 0
  loc_C1D746: LitI2_Byte 0
  loc_C1D748: LitStr "right"
  loc_C1D74B: FMemLdR4 var_5C4(40)
  loc_C1D750: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D755: CVarStr var_9C
  loc_C1D758: PopAdLdVar
  loc_C1D759: FLdPr Me
  loc_C1D75C: MemLdRfVar from_stack_1.htmFile
  loc_C1D75F: LdPrVar
  loc_C1D761: LateMemCall
  loc_C1D767: FFree1Var var_9C = ""
  loc_C1D76A: LitI4 0
  loc_C1D76F: LitI4 0
  loc_C1D774: LitI2_Byte 0
  loc_C1D776: LitStr "right"
  loc_C1D779: FMemLdR4 var_5C4(44)
  loc_C1D77E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D783: CVarStr var_9C
  loc_C1D786: PopAdLdVar
  loc_C1D787: FLdPr Me
  loc_C1D78A: MemLdRfVar from_stack_1.htmFile
  loc_C1D78D: LdPrVar
  loc_C1D78F: LateMemCall
  loc_C1D795: FFree1Var var_9C = ""
  loc_C1D798: FLdPr Me
  loc_C1D79B: VCallAd Control_ID_mskHasta
  loc_C1D79E: FStAdFunc var_88
  loc_C1D7A1: FLdPr var_88
  loc_C1D7A4: LateIdLdVar var_9C DispID_15 0
  loc_C1D7AB: PopAd
  loc_C1D7AD: LitStr "Municipalidad de Guaymallén"
  loc_C1D7B0: LitStr "Municipalidad de Tupungato"
  loc_C1D7B3: EqStr
  loc_C1D7B5: CVarBoolI2 var_BC
  loc_C1D7B9: LitI4 5
  loc_C1D7BE: FLdRfVar var_9C
  loc_C1D7C1: CStrVarTmp
  loc_C1D7C2: CVarStr var_E8
  loc_C1D7C5: FLdRfVar var_F8
  loc_C1D7C8: ImpAdCallFPR4  = Left(, )
  loc_C1D7CD: FLdRfVar var_F8
  loc_C1D7D0: LitVarStr var_AC, "31/12"
  loc_C1D7D5: HardType
  loc_C1D7D6: NeVar var_108
  loc_C1D7DA: AndVar var_118
  loc_C1D7DE: CBoolVarNull
  loc_C1D7E0: FFree1Ad var_88
  loc_C1D7E3: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1D7EE: BranchF loc_C1D820
  loc_C1D7F1: LitI4 0
  loc_C1D7F6: LitI4 0
  loc_C1D7FB: LitI2_Byte 0
  loc_C1D7FD: LitStr "right"
  loc_C1D800: LitStr "&nbsp;"
  loc_C1D803: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D808: CVarStr var_9C
  loc_C1D80B: PopAdLdVar
  loc_C1D80C: FLdPr Me
  loc_C1D80F: MemLdRfVar from_stack_1.htmFile
  loc_C1D812: LdPrVar
  loc_C1D814: LateMemCall
  loc_C1D81A: FFree1Var var_9C = ""
  loc_C1D81D: Branch loc_C1D84E
  loc_C1D820: LitI4 0
  loc_C1D825: LitI4 0
  loc_C1D82A: LitI2_Byte 0
  loc_C1D82C: LitStr "right"
  loc_C1D82F: FMemLdR4 var_5C4(48)
  loc_C1D834: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D839: CVarStr var_9C
  loc_C1D83C: PopAdLdVar
  loc_C1D83D: FLdPr Me
  loc_C1D840: MemLdRfVar from_stack_1.htmFile
  loc_C1D843: LdPrVar
  loc_C1D845: LateMemCall
  loc_C1D84B: FFree1Var var_9C = ""
  loc_C1D84E: LitI4 0
  loc_C1D853: LitI4 0
  loc_C1D858: LitI2_Byte 0
  loc_C1D85A: LitStr "right"
  loc_C1D85D: FMemLdR4 var_5C4(52)
  loc_C1D862: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D867: CVarStr var_9C
  loc_C1D86A: PopAdLdVar
  loc_C1D86B: FLdPr Me
  loc_C1D86E: MemLdRfVar from_stack_1.htmFile
  loc_C1D871: LdPrVar
  loc_C1D873: LateMemCall
  loc_C1D879: FFree1Var var_9C = ""
  loc_C1D87C: FLdPr Me
  loc_C1D87F: VCallAd Control_ID_mskHasta
  loc_C1D882: FStAdFunc var_88
  loc_C1D885: FLdPr var_88
  loc_C1D888: LateIdLdVar var_9C DispID_15 0
  loc_C1D88F: PopAd
  loc_C1D891: LitStr "Municipalidad de Guaymallén"
  loc_C1D894: LitStr "Municipalidad de Tupungato"
  loc_C1D897: EqStr
  loc_C1D899: CVarBoolI2 var_BC
  loc_C1D89D: LitI4 5
  loc_C1D8A2: FLdRfVar var_9C
  loc_C1D8A5: CStrVarTmp
  loc_C1D8A6: CVarStr var_E8
  loc_C1D8A9: FLdRfVar var_F8
  loc_C1D8AC: ImpAdCallFPR4  = Left(, )
  loc_C1D8B1: FLdRfVar var_F8
  loc_C1D8B4: LitVarStr var_AC, "31/12"
  loc_C1D8B9: HardType
  loc_C1D8BA: NeVar var_108
  loc_C1D8BE: AndVar var_118
  loc_C1D8C2: CBoolVarNull
  loc_C1D8C4: FFree1Ad var_88
  loc_C1D8C7: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1D8D2: BranchF loc_C1D904
  loc_C1D8D5: LitI4 0
  loc_C1D8DA: LitI4 0
  loc_C1D8DF: LitI2_Byte 0
  loc_C1D8E1: LitStr "right"
  loc_C1D8E4: LitStr "&nbsp;"
  loc_C1D8E7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D8EC: CVarStr var_9C
  loc_C1D8EF: PopAdLdVar
  loc_C1D8F0: FLdPr Me
  loc_C1D8F3: MemLdRfVar from_stack_1.htmFile
  loc_C1D8F6: LdPrVar
  loc_C1D8F8: LateMemCall
  loc_C1D8FE: FFree1Var var_9C = ""
  loc_C1D901: Branch loc_C1D932
  loc_C1D904: LitI4 0
  loc_C1D909: LitI4 0
  loc_C1D90E: LitI2_Byte 0
  loc_C1D910: LitStr "right"
  loc_C1D913: FMemLdR4 var_5C4(56)
  loc_C1D918: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D91D: CVarStr var_9C
  loc_C1D920: PopAdLdVar
  loc_C1D921: FLdPr Me
  loc_C1D924: MemLdRfVar from_stack_1.htmFile
  loc_C1D927: LdPrVar
  loc_C1D929: LateMemCall
  loc_C1D92F: FFree1Var var_9C = ""
  loc_C1D932: LitI4 0
  loc_C1D937: FStR4 var_5C4
  loc_C1D93A: AryUnlock
  loc_C1D93D: AryUnlock
  loc_C1D940: AryUnlock
  loc_C1D943: AryUnlock
  loc_C1D946: AryUnlock
  loc_C1D949: LitVarStr var_AC, "     </tr>"
  loc_C1D94E: PopAdLdVar
  loc_C1D94F: FLdPr Me
  loc_C1D952: MemLdRfVar from_stack_1.htmFile
  loc_C1D955: LdPrVar
  loc_C1D957: LateMemCall
  loc_C1D95D: FLdPr Me
  loc_C1D960: MemLdRfVar from_stack_1.global_116
  loc_C1D963: NextI2 var_5AC, loc_C1D496
  loc_C1D968: FLdPr Me
  loc_C1D96B: MemLdRfVar from_stack_1.global_114
  loc_C1D96E: NextI2 var_130, loc_C1B8F6
  loc_C1D973: FLdPr Me
  loc_C1D976: MemLdRfVar from_stack_1.global_112
  loc_C1D979: NextI2 var_11C, loc_C1B414
  loc_C1D97E: FLdPr Me
  loc_C1D981: MemLdRfVar from_stack_1.global_110
  loc_C1D984: NextI2 var_CC, loc_C1AF57
  loc_C1D989: FLdPr Me
  loc_C1D98C: VCallAd Control_ID_optJurisdiccion
  loc_C1D98F: CVarAd
  loc_C1D993: CBoolVarNull
  loc_C1D995: FFree1Var var_9C = ""
  loc_C1D998: BranchF loc_C1DE17
  loc_C1D99B: FLdPr Me
  loc_C1D99E: MemLdI2 global_108
  loc_C1D9A1: CI4UI1
  loc_C1D9A2: FLdPr Me
  loc_C1D9A5: MemLdStr global_104
  loc_C1D9A8: AryLock
  loc_C1D9AB: Ary1LdPr
  loc_C1D9AC: MemLdRfVar from_stack_1.global_12
  loc_C1D9AF: FStR4 var_5CC
  loc_C1D9B2: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_C1D9B7: PopAdLdVar
  loc_C1D9B8: FLdPr Me
  loc_C1D9BB: MemLdRfVar from_stack_1.htmFile
  loc_C1D9BE: LdPrVar
  loc_C1D9C0: LateMemCall
  loc_C1D9C6: LitI4 0
  loc_C1D9CB: LitI4 0
  loc_C1D9D0: LitI2_Byte 0
  loc_C1D9D2: LitStr "right"
  loc_C1D9D5: LitStr "Subtotal Juris."
  loc_C1D9D8: FLdPr Me
  loc_C1D9DB: MemLdI2 global_108
  loc_C1D9DE: CI4UI1
  loc_C1D9DF: FLdPr Me
  loc_C1D9E2: MemLdStr global_104
  loc_C1D9E5: Ary1LdPr
  loc_C1D9E6: MemLdStr global_0
  loc_C1D9E9: ConcatStr
  loc_C1D9EA: FStStrNoPop var_C0
  loc_C1D9ED: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1D9F2: CVarStr var_9C
  loc_C1D9F5: PopAdLdVar
  loc_C1D9F6: FLdPr Me
  loc_C1D9F9: MemLdRfVar from_stack_1.htmFile
  loc_C1D9FC: LdPrVar
  loc_C1D9FE: LateMemCall
  loc_C1DA04: FFree1Str var_C0
  loc_C1DA07: FFree1Var var_9C = ""
  loc_C1DA0A: LitI4 0
  loc_C1DA0F: LitI4 0
  loc_C1DA14: LitI2_Byte 0
  loc_C1DA16: LitStr "right"
  loc_C1DA19: FMemLdR4 var_5CC(12)
  loc_C1DA1E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DA23: CVarStr var_9C
  loc_C1DA26: PopAdLdVar
  loc_C1DA27: FLdPr Me
  loc_C1DA2A: MemLdRfVar from_stack_1.htmFile
  loc_C1DA2D: LdPrVar
  loc_C1DA2F: LateMemCall
  loc_C1DA35: FFree1Var var_9C = ""
  loc_C1DA38: LitI4 0
  loc_C1DA3D: LitI4 0
  loc_C1DA42: LitI2_Byte 0
  loc_C1DA44: LitI4 0
  loc_C1DA49: LitStr vbNullString
  loc_C1DA4C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DA51: CVarStr var_9C
  loc_C1DA54: PopAdLdVar
  loc_C1DA55: FLdPr Me
  loc_C1DA58: MemLdRfVar from_stack_1.htmFile
  loc_C1DA5B: LdPrVar
  loc_C1DA5D: LateMemCall
  loc_C1DA63: FFree1Var var_9C = ""
  loc_C1DA66: LitI4 0
  loc_C1DA6B: LitI4 0
  loc_C1DA70: LitI2_Byte 0
  loc_C1DA72: LitStr "right"
  loc_C1DA75: FMemLdR4 var_5CC(16)
  loc_C1DA7A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DA7F: CVarStr var_9C
  loc_C1DA82: PopAdLdVar
  loc_C1DA83: FLdPr Me
  loc_C1DA86: MemLdRfVar from_stack_1.htmFile
  loc_C1DA89: LdPrVar
  loc_C1DA8B: LateMemCall
  loc_C1DA91: FFree1Var var_9C = ""
  loc_C1DA94: LitI4 0
  loc_C1DA99: LitI4 0
  loc_C1DA9E: LitI2_Byte 0
  loc_C1DAA0: LitStr "right"
  loc_C1DAA3: FMemLdR4 var_5CC(20)
  loc_C1DAA8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DAAD: CVarStr var_9C
  loc_C1DAB0: PopAdLdVar
  loc_C1DAB1: FLdPr Me
  loc_C1DAB4: MemLdRfVar from_stack_1.htmFile
  loc_C1DAB7: LdPrVar
  loc_C1DAB9: LateMemCall
  loc_C1DABF: FFree1Var var_9C = ""
  loc_C1DAC2: LitI4 0
  loc_C1DAC7: LitI4 0
  loc_C1DACC: LitI2_Byte 0
  loc_C1DACE: LitStr "right"
  loc_C1DAD1: FMemLdR4 var_5CC(24)
  loc_C1DAD6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DADB: CVarStr var_9C
  loc_C1DADE: PopAdLdVar
  loc_C1DADF: FLdPr Me
  loc_C1DAE2: MemLdRfVar from_stack_1.htmFile
  loc_C1DAE5: LdPrVar
  loc_C1DAE7: LateMemCall
  loc_C1DAED: FFree1Var var_9C = ""
  loc_C1DAF0: LitI4 0
  loc_C1DAF5: LitI4 0
  loc_C1DAFA: LitI2_Byte 0
  loc_C1DAFC: LitStr "right"
  loc_C1DAFF: FMemLdR4 var_5CC(28)
  loc_C1DB04: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DB09: CVarStr var_9C
  loc_C1DB0C: PopAdLdVar
  loc_C1DB0D: FLdPr Me
  loc_C1DB10: MemLdRfVar from_stack_1.htmFile
  loc_C1DB13: LdPrVar
  loc_C1DB15: LateMemCall
  loc_C1DB1B: FFree1Var var_9C = ""
  loc_C1DB1E: LitI4 0
  loc_C1DB23: LitI4 0
  loc_C1DB28: LitI2_Byte 0
  loc_C1DB2A: LitStr "right"
  loc_C1DB2D: FMemLdR4 var_5CC(32)
  loc_C1DB32: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DB37: CVarStr var_9C
  loc_C1DB3A: PopAdLdVar
  loc_C1DB3B: FLdPr Me
  loc_C1DB3E: MemLdRfVar from_stack_1.htmFile
  loc_C1DB41: LdPrVar
  loc_C1DB43: LateMemCall
  loc_C1DB49: FFree1Var var_9C = ""
  loc_C1DB4C: LitI4 0
  loc_C1DB51: LitI4 0
  loc_C1DB56: LitI2_Byte 0
  loc_C1DB58: LitStr "right"
  loc_C1DB5B: FMemLdR4 var_5CC(36)
  loc_C1DB60: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DB65: CVarStr var_9C
  loc_C1DB68: PopAdLdVar
  loc_C1DB69: FLdPr Me
  loc_C1DB6C: MemLdRfVar from_stack_1.htmFile
  loc_C1DB6F: LdPrVar
  loc_C1DB71: LateMemCall
  loc_C1DB77: FFree1Var var_9C = ""
  loc_C1DB7A: FLdPr Me
  loc_C1DB7D: VCallAd Control_ID_mskHasta
  loc_C1DB80: FStAdFunc var_88
  loc_C1DB83: FLdPr var_88
  loc_C1DB86: LateIdLdVar var_9C DispID_15 0
  loc_C1DB8D: PopAd
  loc_C1DB8F: LitStr "Municipalidad de Guaymallén"
  loc_C1DB92: LitStr "Municipalidad de Tupungato"
  loc_C1DB95: EqStr
  loc_C1DB97: CVarBoolI2 var_BC
  loc_C1DB9B: LitI4 5
  loc_C1DBA0: FLdRfVar var_9C
  loc_C1DBA3: CStrVarTmp
  loc_C1DBA4: CVarStr var_E8
  loc_C1DBA7: FLdRfVar var_F8
  loc_C1DBAA: ImpAdCallFPR4  = Left(, )
  loc_C1DBAF: FLdRfVar var_F8
  loc_C1DBB2: LitVarStr var_AC, "31/12"
  loc_C1DBB7: HardType
  loc_C1DBB8: NeVar var_108
  loc_C1DBBC: AndVar var_118
  loc_C1DBC0: CBoolVarNull
  loc_C1DBC2: FFree1Ad var_88
  loc_C1DBC5: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1DBD0: BranchF loc_C1DC02
  loc_C1DBD3: LitI4 0
  loc_C1DBD8: LitI4 0
  loc_C1DBDD: LitI2_Byte 0
  loc_C1DBDF: LitStr "right"
  loc_C1DBE2: LitStr "&nbsp;"
  loc_C1DBE5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DBEA: CVarStr var_9C
  loc_C1DBED: PopAdLdVar
  loc_C1DBEE: FLdPr Me
  loc_C1DBF1: MemLdRfVar from_stack_1.htmFile
  loc_C1DBF4: LdPrVar
  loc_C1DBF6: LateMemCall
  loc_C1DBFC: FFree1Var var_9C = ""
  loc_C1DBFF: Branch loc_C1DC30
  loc_C1DC02: LitI4 0
  loc_C1DC07: LitI4 0
  loc_C1DC0C: LitI2_Byte 0
  loc_C1DC0E: LitStr "right"
  loc_C1DC11: FMemLdR4 var_5CC(40)
  loc_C1DC16: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DC1B: CVarStr var_9C
  loc_C1DC1E: PopAdLdVar
  loc_C1DC1F: FLdPr Me
  loc_C1DC22: MemLdRfVar from_stack_1.htmFile
  loc_C1DC25: LdPrVar
  loc_C1DC27: LateMemCall
  loc_C1DC2D: FFree1Var var_9C = ""
  loc_C1DC30: LitI4 0
  loc_C1DC35: LitI4 0
  loc_C1DC3A: LitI2_Byte 0
  loc_C1DC3C: LitStr "right"
  loc_C1DC3F: FMemLdR4 var_5CC(44)
  loc_C1DC44: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DC49: CVarStr var_9C
  loc_C1DC4C: PopAdLdVar
  loc_C1DC4D: FLdPr Me
  loc_C1DC50: MemLdRfVar from_stack_1.htmFile
  loc_C1DC53: LdPrVar
  loc_C1DC55: LateMemCall
  loc_C1DC5B: FFree1Var var_9C = ""
  loc_C1DC5E: FLdPr Me
  loc_C1DC61: VCallAd Control_ID_mskHasta
  loc_C1DC64: FStAdFunc var_88
  loc_C1DC67: FLdPr var_88
  loc_C1DC6A: LateIdLdVar var_9C DispID_15 0
  loc_C1DC71: PopAd
  loc_C1DC73: LitStr "Municipalidad de Guaymallén"
  loc_C1DC76: LitStr "Municipalidad de Tupungato"
  loc_C1DC79: EqStr
  loc_C1DC7B: CVarBoolI2 var_BC
  loc_C1DC7F: LitI4 5
  loc_C1DC84: FLdRfVar var_9C
  loc_C1DC87: CStrVarTmp
  loc_C1DC88: CVarStr var_E8
  loc_C1DC8B: FLdRfVar var_F8
  loc_C1DC8E: ImpAdCallFPR4  = Left(, )
  loc_C1DC93: FLdRfVar var_F8
  loc_C1DC96: LitVarStr var_AC, "31/12"
  loc_C1DC9B: HardType
  loc_C1DC9C: NeVar var_108
  loc_C1DCA0: AndVar var_118
  loc_C1DCA4: CBoolVarNull
  loc_C1DCA6: FFree1Ad var_88
  loc_C1DCA9: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1DCB4: BranchF loc_C1DCE6
  loc_C1DCB7: LitI4 0
  loc_C1DCBC: LitI4 0
  loc_C1DCC1: LitI2_Byte 0
  loc_C1DCC3: LitStr "right"
  loc_C1DCC6: LitStr "&nbsp;"
  loc_C1DCC9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DCCE: CVarStr var_9C
  loc_C1DCD1: PopAdLdVar
  loc_C1DCD2: FLdPr Me
  loc_C1DCD5: MemLdRfVar from_stack_1.htmFile
  loc_C1DCD8: LdPrVar
  loc_C1DCDA: LateMemCall
  loc_C1DCE0: FFree1Var var_9C = ""
  loc_C1DCE3: Branch loc_C1DD14
  loc_C1DCE6: LitI4 0
  loc_C1DCEB: LitI4 0
  loc_C1DCF0: LitI2_Byte 0
  loc_C1DCF2: LitStr "right"
  loc_C1DCF5: FMemLdR4 var_5CC(48)
  loc_C1DCFA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DCFF: CVarStr var_9C
  loc_C1DD02: PopAdLdVar
  loc_C1DD03: FLdPr Me
  loc_C1DD06: MemLdRfVar from_stack_1.htmFile
  loc_C1DD09: LdPrVar
  loc_C1DD0B: LateMemCall
  loc_C1DD11: FFree1Var var_9C = ""
  loc_C1DD14: LitI4 0
  loc_C1DD19: LitI4 0
  loc_C1DD1E: LitI2_Byte 0
  loc_C1DD20: LitStr "right"
  loc_C1DD23: FMemLdR4 var_5CC(52)
  loc_C1DD28: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DD2D: CVarStr var_9C
  loc_C1DD30: PopAdLdVar
  loc_C1DD31: FLdPr Me
  loc_C1DD34: MemLdRfVar from_stack_1.htmFile
  loc_C1DD37: LdPrVar
  loc_C1DD39: LateMemCall
  loc_C1DD3F: FFree1Var var_9C = ""
  loc_C1DD42: FLdPr Me
  loc_C1DD45: VCallAd Control_ID_mskHasta
  loc_C1DD48: FStAdFunc var_88
  loc_C1DD4B: FLdPr var_88
  loc_C1DD4E: LateIdLdVar var_9C DispID_15 0
  loc_C1DD55: PopAd
  loc_C1DD57: LitStr "Municipalidad de Guaymallén"
  loc_C1DD5A: LitStr "Municipalidad de Tupungato"
  loc_C1DD5D: EqStr
  loc_C1DD5F: CVarBoolI2 var_BC
  loc_C1DD63: LitI4 5
  loc_C1DD68: FLdRfVar var_9C
  loc_C1DD6B: CStrVarTmp
  loc_C1DD6C: CVarStr var_E8
  loc_C1DD6F: FLdRfVar var_F8
  loc_C1DD72: ImpAdCallFPR4  = Left(, )
  loc_C1DD77: FLdRfVar var_F8
  loc_C1DD7A: LitVarStr var_AC, "31/12"
  loc_C1DD7F: HardType
  loc_C1DD80: NeVar var_108
  loc_C1DD84: AndVar var_118
  loc_C1DD88: CBoolVarNull
  loc_C1DD8A: FFree1Ad var_88
  loc_C1DD8D: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1DD98: BranchF loc_C1DDCA
  loc_C1DD9B: LitI4 0
  loc_C1DDA0: LitI4 0
  loc_C1DDA5: LitI2_Byte 0
  loc_C1DDA7: LitStr "right"
  loc_C1DDAA: LitStr "&nbsp;"
  loc_C1DDAD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DDB2: CVarStr var_9C
  loc_C1DDB5: PopAdLdVar
  loc_C1DDB6: FLdPr Me
  loc_C1DDB9: MemLdRfVar from_stack_1.htmFile
  loc_C1DDBC: LdPrVar
  loc_C1DDBE: LateMemCall
  loc_C1DDC4: FFree1Var var_9C = ""
  loc_C1DDC7: Branch loc_C1DDF8
  loc_C1DDCA: LitI4 0
  loc_C1DDCF: LitI4 0
  loc_C1DDD4: LitI2_Byte 0
  loc_C1DDD6: LitStr "right"
  loc_C1DDD9: FMemLdR4 var_5CC(56)
  loc_C1DDDE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DDE3: CVarStr var_9C
  loc_C1DDE6: PopAdLdVar
  loc_C1DDE7: FLdPr Me
  loc_C1DDEA: MemLdRfVar from_stack_1.htmFile
  loc_C1DDED: LdPrVar
  loc_C1DDEF: LateMemCall
  loc_C1DDF5: FFree1Var var_9C = ""
  loc_C1DDF8: LitVarStr var_AC, "     </tr>"
  loc_C1DDFD: PopAdLdVar
  loc_C1DDFE: FLdPr Me
  loc_C1DE01: MemLdRfVar from_stack_1.htmFile
  loc_C1DE04: LdPrVar
  loc_C1DE06: LateMemCall
  loc_C1DE0C: LitI4 0
  loc_C1DE11: FStR4 var_5CC
  loc_C1DE14: AryUnlock
  loc_C1DE17: FLdPr Me
  loc_C1DE1A: MemLdRfVar from_stack_1.global_108
  loc_C1DE1D: NextI2 var_8C, loc_C1AEA3
  loc_C1DE22: LitI4 1
  loc_C1DE27: FLdPr Me
  loc_C1DE2A: MemLdStr global_120
  loc_C1DE2D: AryLock
  loc_C1DE30: Ary1LdRf
  loc_C1DE31: FStR4 var_5D4
  loc_C1DE34: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_C1DE39: PopAdLdVar
  loc_C1DE3A: FLdPr Me
  loc_C1DE3D: MemLdRfVar from_stack_1.htmFile
  loc_C1DE40: LdPrVar
  loc_C1DE42: LateMemCall
  loc_C1DE48: LitI4 0
  loc_C1DE4D: LitI4 0
  loc_C1DE52: LitI2_Byte 0
  loc_C1DE54: LitStr "right"
  loc_C1DE57: LitStr "TOTAL GENERAL"
  loc_C1DE5A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DE5F: CVarStr var_9C
  loc_C1DE62: PopAdLdVar
  loc_C1DE63: FLdPr Me
  loc_C1DE66: MemLdRfVar from_stack_1.htmFile
  loc_C1DE69: LdPrVar
  loc_C1DE6B: LateMemCall
  loc_C1DE71: FFree1Var var_9C = ""
  loc_C1DE74: LitI4 0
  loc_C1DE79: LitI4 0
  loc_C1DE7E: LitI2_Byte 0
  loc_C1DE80: LitStr "right"
  loc_C1DE83: FMemLdR4 var_5D4(12)
  loc_C1DE88: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DE8D: CVarStr var_9C
  loc_C1DE90: PopAdLdVar
  loc_C1DE91: FLdPr Me
  loc_C1DE94: MemLdRfVar from_stack_1.htmFile
  loc_C1DE97: LdPrVar
  loc_C1DE99: LateMemCall
  loc_C1DE9F: FFree1Var var_9C = ""
  loc_C1DEA2: LitI4 0
  loc_C1DEA7: LitI4 0
  loc_C1DEAC: LitI2_Byte 0
  loc_C1DEAE: LitI4 0
  loc_C1DEB3: LitStr vbNullString
  loc_C1DEB6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DEBB: CVarStr var_9C
  loc_C1DEBE: PopAdLdVar
  loc_C1DEBF: FLdPr Me
  loc_C1DEC2: MemLdRfVar from_stack_1.htmFile
  loc_C1DEC5: LdPrVar
  loc_C1DEC7: LateMemCall
  loc_C1DECD: FFree1Var var_9C = ""
  loc_C1DED0: LitI4 0
  loc_C1DED5: LitI4 0
  loc_C1DEDA: LitI2_Byte 0
  loc_C1DEDC: LitStr "right"
  loc_C1DEDF: FMemLdR4 var_5D4(16)
  loc_C1DEE4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DEE9: CVarStr var_9C
  loc_C1DEEC: PopAdLdVar
  loc_C1DEED: FLdPr Me
  loc_C1DEF0: MemLdRfVar from_stack_1.htmFile
  loc_C1DEF3: LdPrVar
  loc_C1DEF5: LateMemCall
  loc_C1DEFB: FFree1Var var_9C = ""
  loc_C1DEFE: LitI4 0
  loc_C1DF03: LitI4 0
  loc_C1DF08: LitI2_Byte 0
  loc_C1DF0A: LitStr "right"
  loc_C1DF0D: FMemLdR4 var_5D4(20)
  loc_C1DF12: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DF17: CVarStr var_9C
  loc_C1DF1A: PopAdLdVar
  loc_C1DF1B: FLdPr Me
  loc_C1DF1E: MemLdRfVar from_stack_1.htmFile
  loc_C1DF21: LdPrVar
  loc_C1DF23: LateMemCall
  loc_C1DF29: FFree1Var var_9C = ""
  loc_C1DF2C: LitI4 0
  loc_C1DF31: LitI4 0
  loc_C1DF36: LitI2_Byte 0
  loc_C1DF38: LitStr "right"
  loc_C1DF3B: FMemLdR4 var_5D4(24)
  loc_C1DF40: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DF45: CVarStr var_9C
  loc_C1DF48: PopAdLdVar
  loc_C1DF49: FLdPr Me
  loc_C1DF4C: MemLdRfVar from_stack_1.htmFile
  loc_C1DF4F: LdPrVar
  loc_C1DF51: LateMemCall
  loc_C1DF57: FFree1Var var_9C = ""
  loc_C1DF5A: LitI4 0
  loc_C1DF5F: LitI4 0
  loc_C1DF64: LitI2_Byte 0
  loc_C1DF66: LitStr "right"
  loc_C1DF69: FMemLdR4 var_5D4(28)
  loc_C1DF6E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DF73: CVarStr var_9C
  loc_C1DF76: PopAdLdVar
  loc_C1DF77: FLdPr Me
  loc_C1DF7A: MemLdRfVar from_stack_1.htmFile
  loc_C1DF7D: LdPrVar
  loc_C1DF7F: LateMemCall
  loc_C1DF85: FFree1Var var_9C = ""
  loc_C1DF88: LitI4 0
  loc_C1DF8D: LitI4 0
  loc_C1DF92: LitI2_Byte 0
  loc_C1DF94: LitStr "right"
  loc_C1DF97: FMemLdR4 var_5D4(32)
  loc_C1DF9C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DFA1: CVarStr var_9C
  loc_C1DFA4: PopAdLdVar
  loc_C1DFA5: FLdPr Me
  loc_C1DFA8: MemLdRfVar from_stack_1.htmFile
  loc_C1DFAB: LdPrVar
  loc_C1DFAD: LateMemCall
  loc_C1DFB3: FFree1Var var_9C = ""
  loc_C1DFB6: LitI4 0
  loc_C1DFBB: LitI4 0
  loc_C1DFC0: LitI2_Byte 0
  loc_C1DFC2: LitStr "right"
  loc_C1DFC5: FMemLdR4 var_5D4(36)
  loc_C1DFCA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1DFCF: CVarStr var_9C
  loc_C1DFD2: PopAdLdVar
  loc_C1DFD3: FLdPr Me
  loc_C1DFD6: MemLdRfVar from_stack_1.htmFile
  loc_C1DFD9: LdPrVar
  loc_C1DFDB: LateMemCall
  loc_C1DFE1: FFree1Var var_9C = ""
  loc_C1DFE4: FLdPr Me
  loc_C1DFE7: VCallAd Control_ID_mskHasta
  loc_C1DFEA: FStAdFunc var_88
  loc_C1DFED: FLdPr var_88
  loc_C1DFF0: LateIdLdVar var_9C DispID_15 0
  loc_C1DFF7: PopAd
  loc_C1DFF9: LitStr "Municipalidad de Guaymallén"
  loc_C1DFFC: LitStr "Municipalidad de Tupungato"
  loc_C1DFFF: EqStr
  loc_C1E001: CVarBoolI2 var_BC
  loc_C1E005: LitI4 5
  loc_C1E00A: FLdRfVar var_9C
  loc_C1E00D: CStrVarTmp
  loc_C1E00E: CVarStr var_E8
  loc_C1E011: FLdRfVar var_F8
  loc_C1E014: ImpAdCallFPR4  = Left(, )
  loc_C1E019: FLdRfVar var_F8
  loc_C1E01C: LitVarStr var_AC, "31/12"
  loc_C1E021: HardType
  loc_C1E022: NeVar var_108
  loc_C1E026: AndVar var_118
  loc_C1E02A: CBoolVarNull
  loc_C1E02C: FFree1Ad var_88
  loc_C1E02F: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1E03A: BranchF loc_C1E06C
  loc_C1E03D: LitI4 0
  loc_C1E042: LitI4 0
  loc_C1E047: LitI2_Byte 0
  loc_C1E049: LitStr "right"
  loc_C1E04C: LitStr "&nbsp;"
  loc_C1E04F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1E054: CVarStr var_9C
  loc_C1E057: PopAdLdVar
  loc_C1E058: FLdPr Me
  loc_C1E05B: MemLdRfVar from_stack_1.htmFile
  loc_C1E05E: LdPrVar
  loc_C1E060: LateMemCall
  loc_C1E066: FFree1Var var_9C = ""
  loc_C1E069: Branch loc_C1E09A
  loc_C1E06C: LitI4 0
  loc_C1E071: LitI4 0
  loc_C1E076: LitI2_Byte 0
  loc_C1E078: LitStr "right"
  loc_C1E07B: FMemLdR4 var_5D4(40)
  loc_C1E080: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1E085: CVarStr var_9C
  loc_C1E088: PopAdLdVar
  loc_C1E089: FLdPr Me
  loc_C1E08C: MemLdRfVar from_stack_1.htmFile
  loc_C1E08F: LdPrVar
  loc_C1E091: LateMemCall
  loc_C1E097: FFree1Var var_9C = ""
  loc_C1E09A: LitI4 0
  loc_C1E09F: LitI4 0
  loc_C1E0A4: LitI2_Byte 0
  loc_C1E0A6: LitStr "right"
  loc_C1E0A9: FMemLdR4 var_5D4(44)
  loc_C1E0AE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1E0B3: CVarStr var_9C
  loc_C1E0B6: PopAdLdVar
  loc_C1E0B7: FLdPr Me
  loc_C1E0BA: MemLdRfVar from_stack_1.htmFile
  loc_C1E0BD: LdPrVar
  loc_C1E0BF: LateMemCall
  loc_C1E0C5: FFree1Var var_9C = ""
  loc_C1E0C8: FLdPr Me
  loc_C1E0CB: VCallAd Control_ID_mskHasta
  loc_C1E0CE: FStAdFunc var_88
  loc_C1E0D1: FLdPr var_88
  loc_C1E0D4: LateIdLdVar var_9C DispID_15 0
  loc_C1E0DB: PopAd
  loc_C1E0DD: LitStr "Municipalidad de Guaymallén"
  loc_C1E0E0: LitStr "Municipalidad de Tupungato"
  loc_C1E0E3: EqStr
  loc_C1E0E5: CVarBoolI2 var_BC
  loc_C1E0E9: LitI4 5
  loc_C1E0EE: FLdRfVar var_9C
  loc_C1E0F1: CStrVarTmp
  loc_C1E0F2: CVarStr var_E8
  loc_C1E0F5: FLdRfVar var_F8
  loc_C1E0F8: ImpAdCallFPR4  = Left(, )
  loc_C1E0FD: FLdRfVar var_F8
  loc_C1E100: LitVarStr var_AC, "31/12"
  loc_C1E105: HardType
  loc_C1E106: NeVar var_108
  loc_C1E10A: AndVar var_118
  loc_C1E10E: CBoolVarNull
  loc_C1E110: FFree1Ad var_88
  loc_C1E113: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1E11E: BranchF loc_C1E150
  loc_C1E121: LitI4 0
  loc_C1E126: LitI4 0
  loc_C1E12B: LitI2_Byte 0
  loc_C1E12D: LitStr "right"
  loc_C1E130: LitStr "&nbsp;"
  loc_C1E133: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1E138: CVarStr var_9C
  loc_C1E13B: PopAdLdVar
  loc_C1E13C: FLdPr Me
  loc_C1E13F: MemLdRfVar from_stack_1.htmFile
  loc_C1E142: LdPrVar
  loc_C1E144: LateMemCall
  loc_C1E14A: FFree1Var var_9C = ""
  loc_C1E14D: Branch loc_C1E17E
  loc_C1E150: LitI4 0
  loc_C1E155: LitI4 0
  loc_C1E15A: LitI2_Byte 0
  loc_C1E15C: LitStr "right"
  loc_C1E15F: FMemLdR4 var_5D4(48)
  loc_C1E164: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1E169: CVarStr var_9C
  loc_C1E16C: PopAdLdVar
  loc_C1E16D: FLdPr Me
  loc_C1E170: MemLdRfVar from_stack_1.htmFile
  loc_C1E173: LdPrVar
  loc_C1E175: LateMemCall
  loc_C1E17B: FFree1Var var_9C = ""
  loc_C1E17E: LitI4 0
  loc_C1E183: LitI4 0
  loc_C1E188: LitI2_Byte 0
  loc_C1E18A: LitStr "right"
  loc_C1E18D: FMemLdR4 var_5D4(52)
  loc_C1E192: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1E197: CVarStr var_9C
  loc_C1E19A: PopAdLdVar
  loc_C1E19B: FLdPr Me
  loc_C1E19E: MemLdRfVar from_stack_1.htmFile
  loc_C1E1A1: LdPrVar
  loc_C1E1A3: LateMemCall
  loc_C1E1A9: FFree1Var var_9C = ""
  loc_C1E1AC: FLdPr Me
  loc_C1E1AF: VCallAd Control_ID_mskHasta
  loc_C1E1B2: FStAdFunc var_88
  loc_C1E1B5: FLdPr var_88
  loc_C1E1B8: LateIdLdVar var_9C DispID_15 0
  loc_C1E1BF: PopAd
  loc_C1E1C1: LitStr "Municipalidad de Guaymallén"
  loc_C1E1C4: LitStr "Municipalidad de Tupungato"
  loc_C1E1C7: EqStr
  loc_C1E1C9: CVarBoolI2 var_BC
  loc_C1E1CD: LitI4 5
  loc_C1E1D2: FLdRfVar var_9C
  loc_C1E1D5: CStrVarTmp
  loc_C1E1D6: CVarStr var_E8
  loc_C1E1D9: FLdRfVar var_F8
  loc_C1E1DC: ImpAdCallFPR4  = Left(, )
  loc_C1E1E1: FLdRfVar var_F8
  loc_C1E1E4: LitVarStr var_AC, "31/12"
  loc_C1E1E9: HardType
  loc_C1E1EA: NeVar var_108
  loc_C1E1EE: AndVar var_118
  loc_C1E1F2: CBoolVarNull
  loc_C1E1F4: FFree1Ad var_88
  loc_C1E1F7: FFreeVar var_9C = "": var_E8 = "": var_F8 = ""
  loc_C1E202: BranchF loc_C1E234
  loc_C1E205: LitI4 0
  loc_C1E20A: LitI4 0
  loc_C1E20F: LitI2_Byte 0
  loc_C1E211: LitStr "right"
  loc_C1E214: LitStr "&nbsp;"
  loc_C1E217: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1E21C: CVarStr var_9C
  loc_C1E21F: PopAdLdVar
  loc_C1E220: FLdPr Me
  loc_C1E223: MemLdRfVar from_stack_1.htmFile
  loc_C1E226: LdPrVar
  loc_C1E228: LateMemCall
  loc_C1E22E: FFree1Var var_9C = ""
  loc_C1E231: Branch loc_C1E262
  loc_C1E234: LitI4 0
  loc_C1E239: LitI4 0
  loc_C1E23E: LitI2_Byte 0
  loc_C1E240: LitStr "right"
  loc_C1E243: FMemLdR4 var_5D4(56)
  loc_C1E248: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1E24D: CVarStr var_9C
  loc_C1E250: PopAdLdVar
  loc_C1E251: FLdPr Me
  loc_C1E254: MemLdRfVar from_stack_1.htmFile
  loc_C1E257: LdPrVar
  loc_C1E259: LateMemCall
  loc_C1E25F: FFree1Var var_9C = ""
  loc_C1E262: LitVarStr var_AC, "     </tr>"
  loc_C1E267: PopAdLdVar
  loc_C1E268: FLdPr Me
  loc_C1E26B: MemLdRfVar from_stack_1.htmFile
  loc_C1E26E: LdPrVar
  loc_C1E270: LateMemCall
  loc_C1E276: LitI4 0
  loc_C1E27B: FStR4 var_5D4
  loc_C1E27E: AryUnlock
  loc_C1E281: Call Proc_147_43_A01740()
  loc_C1E286: FLdPr Me
  loc_C1E289: MemLdRfVar from_stack_1.htmFile
  loc_C1E28C: LdPrVar
  loc_C1E28E: LateMemCall
  loc_C1E294: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_C1E299: ExitProcHresult
  loc_C1E29A: AndI4
End Sub

Public Sub GeneraXLS() '96EF44
  'Data Table: 4CFE80
  loc_96EF1C: LitI2_Byte &HFF
  loc_96EF1E: FLdPr Me
  loc_96EF21: MemStI2 global_128
  loc_96EF24: LitI2_Byte 0
  loc_96EF26: FLdPr Me
  loc_96EF29: MemStI2 bLogos
  loc_96EF2C: Call GeneraHTML()
  loc_96EF31: LitI2_Byte &HFF
  loc_96EF33: FLdPr Me
  loc_96EF36: MemStI2 bLogos
  loc_96EF39: LitI2_Byte 0
  loc_96EF3B: FLdPr Me
  loc_96EF3E: MemStI2 global_128
  loc_96EF41: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'AF0BE4
  'Data Table: 4CFE80
  loc_AF0580: FLdRfVar var_A8
  loc_AF0583: FLdPr Me
  loc_AF0586: VCallAd Control_ID_cboPeriodo
  loc_AF0589: FStAdFunc var_A4
  loc_AF058C: FLdPr var_A4
  loc_AF058F:  = Me.Text
  loc_AF0594: FLdRfVar var_F8
  loc_AF0597: FLdPr Me
  loc_AF059A: VCallAd Control_ID_cboPeriodo
  loc_AF059D: FStAdFunc var_F4
  loc_AF05A0: FLdPr var_F4
  loc_AF05A3:  = Me.Text
  loc_AF05A8: FLdPr Me
  loc_AF05AB: VCallAd Control_ID_mskDesde
  loc_AF05AE: FStAdFunc var_8C
  loc_AF05B1: FLdPr var_8C
  loc_AF05B4: LateIdLdVar var_9C DispID_15 0
  loc_AF05BB: CStrVarTmp
  loc_AF05BC: FStStrNoPop var_A0
  loc_AF05BF: CDateStr
  loc_AF05C1: CVarDate var_C8
  loc_AF05C5: HardType
  loc_AF05C6: LitI2_Byte 1
  loc_AF05C8: LitI2_Byte 1
  loc_AF05CA: ILdRf var_A8
  loc_AF05CD: CI2Str
  loc_AF05CF: FLdRfVar var_B8
  loc_AF05D2: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF05D7: FLdRfVar var_B8
  loc_AF05DA: EqVar var_D8
  loc_AF05DE: FLdPr Me
  loc_AF05E1: VCallAd Control_ID_mskHasta
  loc_AF05E4: FStAdFunc var_DC
  loc_AF05E7: FLdPr var_DC
  loc_AF05EA: LateIdLdVar var_EC DispID_15 0
  loc_AF05F1: CStrVarTmp
  loc_AF05F2: FStStrNoPop var_F0
  loc_AF05F5: CDateStr
  loc_AF05F7: CVarDate var_118
  loc_AF05FB: HardType
  loc_AF05FC: LitI2_Byte &H1F
  loc_AF05FE: LitI2_Byte 1
  loc_AF0600: ILdRf var_F8
  loc_AF0603: CI2Str
  loc_AF0605: FLdRfVar var_108
  loc_AF0608: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF060D: FLdRfVar var_108
  loc_AF0610: EqVar var_128
  loc_AF0614: AndVar var_138
  loc_AF0618: CBoolVarNull
  loc_AF061A: FFreeStr var_A0 = "": var_A8 = "": var_F0 = ""
  loc_AF0625: FFreeAd var_8C = "": var_A4 = "": var_DC = ""
  loc_AF0630: FFreeVar var_9C = "": var_B8 = "": var_EC = ""
  loc_AF063B: BranchF loc_AF0665
  loc_AF063E: FLdRfVar var_A0
  loc_AF0641: FLdPr Me
  loc_AF0644: VCallAd Control_ID_cboPeriodo
  loc_AF0647: FStAdFunc var_8C
  loc_AF064A: FLdPr var_8C
  loc_AF064D:  = Me.Text
  loc_AF0652: ILdRf var_A0
  loc_AF0655: LitStr "01"
  loc_AF0658: ConcatStr
  loc_AF0659: FStStr var_88
  loc_AF065C: FFree1Str var_A0
  loc_AF065F: FFree1Ad var_8C
  loc_AF0662: Branch loc_AF07EB
  loc_AF0665: FLdRfVar var_A8
  loc_AF0668: FLdPr Me
  loc_AF066B: VCallAd Control_ID_cboPeriodo
  loc_AF066E: FStAdFunc var_A4
  loc_AF0671: FLdPr var_A4
  loc_AF0674:  = Me.Text
  loc_AF0679: FLdPr Me
  loc_AF067C: VCallAd Control_ID_mskDesde
  loc_AF067F: FStAdFunc var_8C
  loc_AF0682: FLdPr var_8C
  loc_AF0685: LateIdLdVar var_9C DispID_15 0
  loc_AF068C: CStrVarTmp
  loc_AF068D: FStStrNoPop var_A0
  loc_AF0690: CDateStr
  loc_AF0692: CVarDate var_C8
  loc_AF0696: HardType
  loc_AF0697: LitI2_Byte 1
  loc_AF0699: LitI2_Byte 1
  loc_AF069B: ILdRf var_A8
  loc_AF069E: CI2Str
  loc_AF06A0: FLdRfVar var_B8
  loc_AF06A3: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF06A8: FLdRfVar var_B8
  loc_AF06AB: EqVarBool
  loc_AF06AD: FFreeStr var_A0 = ""
  loc_AF06B4: FFreeAd var_8C = ""
  loc_AF06BB: FFreeVar var_9C = ""
  loc_AF06C2: BranchF loc_AF076F
  loc_AF06C5: LitStr "Municipalidad de Guaymallén"
  loc_AF06C8: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_AF06CB: EqStr
  loc_AF06CD: BranchF loc_AF074F
  loc_AF06D0: FLdPr Me
  loc_AF06D3: VCallAd Control_ID_mskHasta
  loc_AF06D6: FStAdFunc var_A4
  loc_AF06D9: FLdPr var_A4
  loc_AF06DC: LateIdLdVar var_9C DispID_15 0
  loc_AF06E3: CStrVarTmp
  loc_AF06E4: CVarStr var_B8
  loc_AF06E7: FLdRfVar var_D8
  loc_AF06EA: ImpAdCallFPR4  = Month()
  loc_AF06EF: FLdRfVar var_A0
  loc_AF06F2: FLdPr Me
  loc_AF06F5: VCallAd Control_ID_cboPeriodo
  loc_AF06F8: FStAdFunc var_8C
  loc_AF06FB: FLdPr var_8C
  loc_AF06FE:  = Me.Text
  loc_AF0703: FLdZeroAd var_A0
  loc_AF0706: CVarStr var_128
  loc_AF0709: LitI4 1
  loc_AF070E: LitI4 1
  loc_AF0713: LitVarStr var_C8, "00"
  loc_AF0718: FStVarCopyObj var_EC
  loc_AF071B: FLdRfVar var_EC
  loc_AF071E: FLdRfVar var_D8
  loc_AF0721: FLdRfVar var_108
  loc_AF0724: ImpAdCallFPR4  = Format(, )
  loc_AF0729: FLdRfVar var_108
  loc_AF072C: ConcatVar var_138
  loc_AF0730: CStrVarTmp
  loc_AF0731: FStStr var_88
  loc_AF0734: FFreeAd var_8C = ""
  loc_AF073B: FFreeVar var_9C = "": var_B8 = "": var_D8 = "": var_EC = "": var_128 = "": var_108 = ""
  loc_AF074C: Branch loc_AF076C
  loc_AF074F: FLdRfVar var_A0
  loc_AF0752: FLdPr Me
  loc_AF0755: VCallAd Control_ID_cboPeriodo
  loc_AF0758: FStAdFunc var_8C
  loc_AF075B: FLdPr var_8C
  loc_AF075E:  = Me.Text
  loc_AF0763: FLdZeroAd var_A0
  loc_AF0766: FStStr var_88
  loc_AF0769: FFree1Ad var_8C
  loc_AF076C: Branch loc_AF07EB
  loc_AF076F: FLdPr Me
  loc_AF0772: VCallAd Control_ID_mskHasta
  loc_AF0775: FStAdFunc var_A4
  loc_AF0778: FLdPr var_A4
  loc_AF077B: LateIdLdVar var_9C DispID_15 0
  loc_AF0782: CStrVarTmp
  loc_AF0783: CVarStr var_B8
  loc_AF0786: FLdRfVar var_D8
  loc_AF0789: ImpAdCallFPR4  = Month()
  loc_AF078E: FLdRfVar var_A0
  loc_AF0791: FLdPr Me
  loc_AF0794: VCallAd Control_ID_cboPeriodo
  loc_AF0797: FStAdFunc var_8C
  loc_AF079A: FLdPr var_8C
  loc_AF079D:  = Me.Text
  loc_AF07A2: FLdZeroAd var_A0
  loc_AF07A5: CVarStr var_128
  loc_AF07A8: LitI4 1
  loc_AF07AD: LitI4 1
  loc_AF07B2: LitVarStr var_C8, "00"
  loc_AF07B7: FStVarCopyObj var_EC
  loc_AF07BA: FLdRfVar var_EC
  loc_AF07BD: FLdRfVar var_D8
  loc_AF07C0: FLdRfVar var_108
  loc_AF07C3: ImpAdCallFPR4  = Format(, )
  loc_AF07C8: FLdRfVar var_108
  loc_AF07CB: ConcatVar var_138
  loc_AF07CF: CStrVarTmp
  loc_AF07D0: FStStr var_88
  loc_AF07D3: FFreeAd var_8C = ""
  loc_AF07DA: FFreeVar var_9C = "": var_B8 = "": var_D8 = "": var_EC = "": var_128 = "": var_108 = ""
  loc_AF07EB: FLdRfVar var_8C
  loc_AF07EE: LitI2_Byte 0
  loc_AF07F0: LitI2_Byte &HFF
  loc_AF07F2: ImpAdLdI4 MemVar_C3D05C
  loc_AF07F5: FLdPr Me
  loc_AF07F8: MemLdRfVar from_stack_1.global_84
  loc_AF07FB: NewIfNullPr IFileSystem3
  loc_AF07FE: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AF0803: ILdRf var_8C
  loc_AF0806: FLdPr Me
  loc_AF0809: MemStVarAd
  loc_AF080D: FFree1Ad var_8C
  loc_AF0810: LitVarStr var_C8, "PeriodoPresenta|ExpID|PartidaCod|PartidaDet|CreditoVotOriginal|ModNormaLegal|ModAumentos|ModDisminuciones|CredVigDef|ComproContraido|Devengado|MandadoPagar|CreditosReapropiado|Pagado|ResiduoPasivo|SaldoNoUtilizado|PasivoOrdenPago"
  loc_AF0815: LitI4 &HD
  loc_AF081A: FLdRfVar var_9C
  loc_AF081D: ImpAdCallFPR4  = Chr()
  loc_AF0822: FLdRfVar var_9C
  loc_AF0825: ConcatVar var_B8
  loc_AF0829: LitI4 &HA
  loc_AF082E: FLdRfVar var_D8
  loc_AF0831: ImpAdCallFPR4  = Chr()
  loc_AF0836: FLdRfVar var_D8
  loc_AF0839: ConcatVar var_EC
  loc_AF083D: PopAdLdVar
  loc_AF083E: FLdPr Me
  loc_AF0841: MemLdRfVar from_stack_1.global_88
  loc_AF0844: LdPrVar
  loc_AF0846: LateMemCall
  loc_AF084C: FFreeVar var_9C = "": var_B8 = "": var_D8 = ""
  loc_AF0857: LitI2_Byte 1
  loc_AF0859: FLdPr Me
  loc_AF085C: MemLdRfVar from_stack_1.global_108
  loc_AF085F: FLdPr Me
  loc_AF0862: MemLdStr global_104
  loc_AF0865: LitI2_Byte 1
  loc_AF0867: FnUBound
  loc_AF0869: CI2I4
  loc_AF086A: ForI2 var_13C
  loc_AF0870: LitI2_Byte 1
  loc_AF0872: FLdPr Me
  loc_AF0875: MemLdRfVar from_stack_1.global_110
  loc_AF0878: FLdPr Me
  loc_AF087B: MemLdI2 global_108
  loc_AF087E: CI4UI1
  loc_AF087F: FLdPr Me
  loc_AF0882: MemLdStr global_104
  loc_AF0885: Ary1LdPr
  loc_AF0886: MemLdStr global_8
  loc_AF0889: LitI2_Byte 1
  loc_AF088B: FnUBound
  loc_AF088D: CI2I4
  loc_AF088E: ForI2 var_140
  loc_AF0894: FLdPr Me
  loc_AF0897: MemLdI2 global_110
  loc_AF089A: CI4UI1
  loc_AF089B: FLdPr Me
  loc_AF089E: MemLdI2 global_108
  loc_AF08A1: CI4UI1
  loc_AF08A2: FLdPr Me
  loc_AF08A5: MemLdStr global_104
  loc_AF08A8: AryLock
  loc_AF08AB: Ary1LdPr
  loc_AF08AC: MemLdStr global_8
  loc_AF08AF: AryLock
  loc_AF08B2: Ary1LdPr
  loc_AF08B3: MemLdRfVar from_stack_1.global_0
  loc_AF08B6: FStR4 var_14C
  loc_AF08B9: LitI4 0
  loc_AF08BE: FStR4 var_14C
  loc_AF08C1: AryUnlock
  loc_AF08C4: AryUnlock
  loc_AF08C7: LitI2_Byte 1
  loc_AF08C9: FLdPr Me
  loc_AF08CC: MemLdRfVar from_stack_1.global_112
  loc_AF08CF: FLdPr Me
  loc_AF08D2: MemLdI2 global_110
  loc_AF08D5: CI4UI1
  loc_AF08D6: FLdPr Me
  loc_AF08D9: MemLdI2 global_108
  loc_AF08DC: CI4UI1
  loc_AF08DD: FLdPr Me
  loc_AF08E0: MemLdStr global_104
  loc_AF08E3: Ary1LdPr
  loc_AF08E4: MemLdStr global_8
  loc_AF08E7: Ary1LdPr
  loc_AF08E8: MemLdStr global_396
  loc_AF08EB: LitI2_Byte 1
  loc_AF08ED: FnUBound
  loc_AF08EF: CI2I4
  loc_AF08F0: ForI2 var_150
  loc_AF08F6: FLdPr Me
  loc_AF08F9: MemLdI2 global_112
  loc_AF08FC: CI4UI1
  loc_AF08FD: FLdPr Me
  loc_AF0900: MemLdI2 global_110
  loc_AF0903: CI4UI1
  loc_AF0904: FLdPr Me
  loc_AF0907: MemLdI2 global_108
  loc_AF090A: CI4UI1
  loc_AF090B: FLdPr Me
  loc_AF090E: MemLdStr global_104
  loc_AF0911: AryLock
  loc_AF0914: Ary1LdPr
  loc_AF0915: MemLdStr global_8
  loc_AF0918: AryLock
  loc_AF091B: Ary1LdPr
  loc_AF091C: MemLdStr global_396
  loc_AF091F: AryLock
  loc_AF0922: Ary1LdPr
  loc_AF0923: MemLdRfVar from_stack_1.global_0
  loc_AF0926: FStR4 var_160
  loc_AF0929: LitI4 0
  loc_AF092E: FStR4 var_160
  loc_AF0931: AryUnlock
  loc_AF0934: AryUnlock
  loc_AF0937: AryUnlock
  loc_AF093A: LitI2_Byte 1
  loc_AF093C: FLdPr Me
  loc_AF093F: MemLdRfVar from_stack_1.global_114
  loc_AF0942: FLdPr Me
  loc_AF0945: MemLdI2 global_112
  loc_AF0948: CI4UI1
  loc_AF0949: FLdPr Me
  loc_AF094C: MemLdI2 global_110
  loc_AF094F: CI4UI1
  loc_AF0950: FLdPr Me
  loc_AF0953: MemLdI2 global_108
  loc_AF0956: CI4UI1
  loc_AF0957: FLdPr Me
  loc_AF095A: MemLdStr global_104
  loc_AF095D: Ary1LdPr
  loc_AF095E: MemLdStr global_8
  loc_AF0961: Ary1LdPr
  loc_AF0962: MemLdStr global_396
  loc_AF0965: Ary1LdPr
  loc_AF0966: MemLdStr global_396
  loc_AF0969: LitI2_Byte 1
  loc_AF096B: FnUBound
  loc_AF096D: CI2I4
  loc_AF096E: ForI2 var_164
  loc_AF0974: FLdPr Me
  loc_AF0977: MemLdI2 global_114
  loc_AF097A: CI4UI1
  loc_AF097B: FLdPr Me
  loc_AF097E: MemLdI2 global_112
  loc_AF0981: CI4UI1
  loc_AF0982: FLdPr Me
  loc_AF0985: MemLdI2 global_110
  loc_AF0988: CI4UI1
  loc_AF0989: FLdPr Me
  loc_AF098C: MemLdI2 global_108
  loc_AF098F: CI4UI1
  loc_AF0990: FLdPr Me
  loc_AF0993: MemLdStr global_104
  loc_AF0996: AryLock
  loc_AF0999: Ary1LdPr
  loc_AF099A: MemLdStr global_8
  loc_AF099D: AryLock
  loc_AF09A0: Ary1LdPr
  loc_AF09A1: MemLdStr global_396
  loc_AF09A4: AryLock
  loc_AF09A7: Ary1LdPr
  loc_AF09A8: MemLdStr global_396
  loc_AF09AB: AryLock
  loc_AF09AE: Ary1LdPr
  loc_AF09AF: MemLdRfVar from_stack_1.global_0
  loc_AF09B2: FStR4 var_178
  loc_AF09B5: ILdRf var_88
  loc_AF09B8: LitStr "|"
  loc_AF09BB: ConcatStr
  loc_AF09BC: FStStrNoPop var_A0
  loc_AF09BF: LitStr "eee-2022-060204"
  loc_AF09C2: ConcatStr
  loc_AF09C3: FStStrNoPop var_A8
  loc_AF09C6: LitStr "|"
  loc_AF09C9: ConcatStr
  loc_AF09CA: FStStrNoPop var_F0
  loc_AF09CD: FMemLdR4 var_178(0)
  loc_AF09D2: ConcatStr
  loc_AF09D3: FStStrNoPop var_F8
  loc_AF09D6: LitStr "|"
  loc_AF09D9: ConcatStr
  loc_AF09DA: FStStrNoPop var_17C
  loc_AF09DD: FMemLdR4 var_178(4)
  loc_AF09E2: ConcatStr
  loc_AF09E3: FStStrNoPop var_180
  loc_AF09E6: LitStr "|"
  loc_AF09E9: ConcatStr
  loc_AF09EA: FStStrNoPop var_184
  loc_AF09ED: FMemLdR4 var_178(12)
  loc_AF09F2: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF09F7: FStStrNoPop var_188
  loc_AF09FA: ConcatStr
  loc_AF09FB: FStStrNoPop var_18C
  loc_AF09FE: LitStr "|"
  loc_AF0A01: ConcatStr
  loc_AF0A02: FStStrNoPop var_190
  loc_AF0A05: FMemLdR4 var_178(8)
  loc_AF0A0A: ConcatStr
  loc_AF0A0B: FStStrNoPop var_194
  loc_AF0A0E: LitStr "|"
  loc_AF0A11: ConcatStr
  loc_AF0A12: FStStrNoPop var_198
  loc_AF0A15: FMemLdR4 var_178(16)
  loc_AF0A1A: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0A1F: FStStrNoPop var_19C
  loc_AF0A22: ConcatStr
  loc_AF0A23: FStStrNoPop var_1A0
  loc_AF0A26: LitStr "|"
  loc_AF0A29: ConcatStr
  loc_AF0A2A: FStStrNoPop var_1A4
  loc_AF0A2D: FMemLdR4 var_178(20)
  loc_AF0A32: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0A37: FStStrNoPop var_1A8
  loc_AF0A3A: ConcatStr
  loc_AF0A3B: FStStrNoPop var_1AC
  loc_AF0A3E: LitStr "|"
  loc_AF0A41: ConcatStr
  loc_AF0A42: FStStrNoPop var_1B0
  loc_AF0A45: FMemLdR4 var_178(24)
  loc_AF0A4A: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0A4F: FStStrNoPop var_1B4
  loc_AF0A52: ConcatStr
  loc_AF0A53: FStStrNoPop var_1B8
  loc_AF0A56: LitStr "|"
  loc_AF0A59: ConcatStr
  loc_AF0A5A: FStStrNoPop var_1BC
  loc_AF0A5D: FMemLdR4 var_178(28)
  loc_AF0A62: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0A67: FStStrNoPop var_1C0
  loc_AF0A6A: ConcatStr
  loc_AF0A6B: FStStrNoPop var_1C4
  loc_AF0A6E: LitStr "|"
  loc_AF0A71: ConcatStr
  loc_AF0A72: FStStrNoPop var_1C8
  loc_AF0A75: FMemLdR4 var_178(32)
  loc_AF0A7A: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0A7F: FStStrNoPop var_1CC
  loc_AF0A82: ConcatStr
  loc_AF0A83: FStStrNoPop var_1D0
  loc_AF0A86: LitStr "|"
  loc_AF0A89: ConcatStr
  loc_AF0A8A: FStStrNoPop var_1D4
  loc_AF0A8D: FMemLdR4 var_178(36)
  loc_AF0A92: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0A97: FStStrNoPop var_1D8
  loc_AF0A9A: ConcatStr
  loc_AF0A9B: FStStrNoPop var_1DC
  loc_AF0A9E: LitStr "|"
  loc_AF0AA1: ConcatStr
  loc_AF0AA2: FStStrNoPop var_1E0
  loc_AF0AA5: FMemLdR4 var_178(40)
  loc_AF0AAA: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0AAF: FStStrNoPop var_1E4
  loc_AF0AB2: ConcatStr
  loc_AF0AB3: FStStrNoPop var_1E8
  loc_AF0AB6: LitStr "|"
  loc_AF0AB9: ConcatStr
  loc_AF0ABA: FStStrNoPop var_1EC
  loc_AF0ABD: FMemLdR4 var_178(44)
  loc_AF0AC2: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0AC7: FStStrNoPop var_1F0
  loc_AF0ACA: ConcatStr
  loc_AF0ACB: FStStrNoPop var_1F4
  loc_AF0ACE: LitStr "|"
  loc_AF0AD1: ConcatStr
  loc_AF0AD2: FStStrNoPop var_1F8
  loc_AF0AD5: FMemLdR4 var_178(48)
  loc_AF0ADA: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0ADF: FStStrNoPop var_1FC
  loc_AF0AE2: ConcatStr
  loc_AF0AE3: FStStrNoPop var_200
  loc_AF0AE6: LitStr "|"
  loc_AF0AE9: ConcatStr
  loc_AF0AEA: FStStrNoPop var_204
  loc_AF0AED: FMemLdR4 var_178(52)
  loc_AF0AF2: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0AF7: FStStrNoPop var_208
  loc_AF0AFA: ConcatStr
  loc_AF0AFB: FStStrNoPop var_20C
  loc_AF0AFE: LitStr "|"
  loc_AF0B01: ConcatStr
  loc_AF0B02: FStStrNoPop var_210
  loc_AF0B05: FMemLdR4 var_178(56)
  loc_AF0B0A: ImpAdCallI2 Proc_261_60_9953E4()
  loc_AF0B0F: FStStrNoPop var_214
  loc_AF0B12: ConcatStr
  loc_AF0B13: CVarStr var_9C
  loc_AF0B16: PopAdLdVar
  loc_AF0B17: FLdPr Me
  loc_AF0B1A: MemLdRfVar from_stack_1.global_88
  loc_AF0B1D: LdPrVar
  loc_AF0B1F: LateMemCall
  loc_AF0B25: FFreeStr var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_A0 = "": var_A8 = "": var_F0 = "": var_F8 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = ""
  loc_AF0B7E: FFree1Var var_9C = ""
  loc_AF0B81: LitVarStr var_C8, vbCrLf
  loc_AF0B86: PopAdLdVar
  loc_AF0B87: FLdPr Me
  loc_AF0B8A: MemLdRfVar from_stack_1.global_88
  loc_AF0B8D: LdPrVar
  loc_AF0B8F: LateMemCall
  loc_AF0B95: LitI4 0
  loc_AF0B9A: FStR4 var_178
  loc_AF0B9D: AryUnlock
  loc_AF0BA0: AryUnlock
  loc_AF0BA3: AryUnlock
  loc_AF0BA6: AryUnlock
  loc_AF0BA9: FLdPr Me
  loc_AF0BAC: MemLdRfVar from_stack_1.global_114
  loc_AF0BAF: NextI2 var_164, loc_AF0974
  loc_AF0BB4: FLdPr Me
  loc_AF0BB7: MemLdRfVar from_stack_1.global_112
  loc_AF0BBA: NextI2 var_150, loc_AF08F6
  loc_AF0BBF: FLdPr Me
  loc_AF0BC2: MemLdRfVar from_stack_1.global_110
  loc_AF0BC5: NextI2 var_140, loc_AF0894
  loc_AF0BCA: FLdPr Me
  loc_AF0BCD: MemLdRfVar from_stack_1.global_108
  loc_AF0BD0: NextI2 var_13C, loc_AF0870
  loc_AF0BD5: FLdPr Me
  loc_AF0BD8: MemLdRfVar from_stack_1.global_88
  loc_AF0BDB: LdPrVar
  loc_AF0BDD: LateMemCall
  loc_AF0BE3: ExitProcHresult
End Sub

Private Function Proc_147_35_9E01C4() '9E01C4
  'Data Table: 4CFE80
  loc_9E00BC: FLdPr Me
  loc_9E00BF: MemLdI2 global_108
  loc_9E00C2: LitI2_Byte 1
  loc_9E00C4: AddI2
  loc_9E00C5: FLdPr Me
  loc_9E00C8: MemStI2 global_108
  loc_9E00CB: LitI2_Byte 0
  loc_9E00CD: FLdPr Me
  loc_9E00D0: MemStI2 global_110
  loc_9E00D3: LitI4 1
  loc_9E00D8: FLdPr Me
  loc_9E00DB: MemLdI2 global_108
  loc_9E00DE: CI4UI1
  loc_9E00DF: FLdPr Me
  loc_9E00E2: MemLdRfVar from_stack_1.global_104
  loc_9E00E5: RedimPreserve
  loc_9E00EF: FLdRfVar var_A0
  loc_9E00F2: LitVarStr var_9C, "CodiOrga"
  loc_9E00F7: PopAdLdVar
  loc_9E00F8: FLdRfVar var_8C
  loc_9E00FB: FLdRfVar var_88
  loc_9E00FE: FLdPr Me
  loc_9E0101: MemLdRfVar from_stack_1.global_72
  loc_9E0104: NewIfNullPr clsimputacion
  loc_9E0107: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E010C: FLdPr var_88
  loc_9E010F:  = Me.Fields
  loc_9E0114: FLdPr var_8C
  loc_9E0117: from_stack_2 = Me.Item(from_stack_1)
  loc_9E011C: LitI2_Byte 0
  loc_9E011E: LitVar_Missing var_D4
  loc_9E0121: LitI2_Byte 0
  loc_9E0123: FLdZeroAd var_A0
  loc_9E0126: CVarAd
  loc_9E012A: PopAdLdVar
  loc_9E012B: FLdPr Me
  loc_9E012E: MemLdI2 global_108
  loc_9E0131: CI4UI1
  loc_9E0132: FLdPr Me
  loc_9E0135: MemLdStr global_104
  loc_9E0138: AryLock
  loc_9E013B: Ary1LdPr
  loc_9E013C: MemLdRfVar from_stack_1.global_0
  loc_9E013F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E0144: AryUnlock
  loc_9E0147: FFreeAd var_88 = ""
  loc_9E014E: FFreeVar var_B4 = ""
  loc_9E0155: FLdRfVar var_A0
  loc_9E0158: LitVarStr var_9C, "DetaOrga"
  loc_9E015D: PopAdLdVar
  loc_9E015E: FLdRfVar var_8C
  loc_9E0161: FLdRfVar var_88
  loc_9E0164: FLdPr Me
  loc_9E0167: MemLdRfVar from_stack_1.global_72
  loc_9E016A: NewIfNullPr clsimputacion
  loc_9E016D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E0172: FLdPr var_88
  loc_9E0175:  = Me.Fields
  loc_9E017A: FLdPr var_8C
  loc_9E017D: from_stack_2 = Me.Item(from_stack_1)
  loc_9E0182: LitI2_Byte 0
  loc_9E0184: LitVar_Missing var_D4
  loc_9E0187: LitI2_Byte 0
  loc_9E0189: FLdZeroAd var_A0
  loc_9E018C: CVarAd
  loc_9E0190: PopAdLdVar
  loc_9E0191: FLdPr Me
  loc_9E0194: MemLdI2 global_108
  loc_9E0197: CI4UI1
  loc_9E0198: FLdPr Me
  loc_9E019B: MemLdStr global_104
  loc_9E019E: AryLock
  loc_9E01A1: Ary1LdPr
  loc_9E01A2: MemLdRfVar from_stack_1.global_4
  loc_9E01A5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E01AA: AryUnlock
  loc_9E01AD: FFreeAd var_88 = ""
  loc_9E01B4: FFreeVar var_B4 = ""
  loc_9E01BB: Call Proc_147_36_A56910()
  loc_9E01C0: ExitProcHresult
  loc_9E01C1: NewIfNullPr Me
End Function

Private Function Proc_147_36_A56910() 'A56910
  'Data Table: 4CFE80
  loc_A56654: FLdPr Me
  loc_A56657: MemLdI2 global_110
  loc_A5665A: LitI2_Byte 1
  loc_A5665C: AddI2
  loc_A5665D: FLdPr Me
  loc_A56660: MemStI2 global_110
  loc_A56663: LitI2_Byte 0
  loc_A56665: FLdPr Me
  loc_A56668: MemStI2 global_112
  loc_A5666B: LitI4 1
  loc_A56670: FLdPr Me
  loc_A56673: MemLdI2 global_110
  loc_A56676: CI4UI1
  loc_A56677: FLdPr Me
  loc_A5667A: MemLdI2 global_108
  loc_A5667D: CI4UI1
  loc_A5667E: FLdPr Me
  loc_A56681: MemLdStr global_104
  loc_A56684: Ary1LdPr
  loc_A56685: MemLdRfVar from_stack_1.global_8
  loc_A56688: RedimPreserve
  loc_A56692: FLdRfVar var_B0
  loc_A56695: FLdRfVar var_A0
  loc_A56698: LitVarStr var_9C, "CodiPart"
  loc_A5669D: PopAdLdVar
  loc_A5669E: FLdRfVar var_8C
  loc_A566A1: FLdRfVar var_88
  loc_A566A4: FLdPr Me
  loc_A566A7: MemLdRfVar from_stack_1.global_72
  loc_A566AA: NewIfNullPr clsimputacion
  loc_A566AD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A566B2: FLdPr var_88
  loc_A566B5:  = Me.Fields
  loc_A566BA: FLdPr var_8C
  loc_A566BD: from_stack_2 = Me.Item(from_stack_1)
  loc_A566C2: FLdPr var_A0
  loc_A566C5:  = Me.Value
  loc_A566CA: LitI4 1
  loc_A566CF: FLdRfVar var_B0
  loc_A566D2: CStrVarTmp
  loc_A566D3: FStStrNoPop var_B4
  loc_A566D6: ImpAdCallI2 Left$(, )
  loc_A566DB: FStStr var_F4
  loc_A566DE: LitI2_Byte 0
  loc_A566E0: LitVar_Missing var_F0
  loc_A566E3: LitI2_Byte 0
  loc_A566E5: FLdZeroAd var_F4
  loc_A566E8: FStStrNoPop var_B8
  loc_A566EB: LitStr "0000000"
  loc_A566EE: ConcatStr
  loc_A566EF: CVarStr var_D0
  loc_A566F2: PopAdLdVar
  loc_A566F3: FLdPr Me
  loc_A566F6: MemLdI2 global_110
  loc_A566F9: CI4UI1
  loc_A566FA: FLdPr Me
  loc_A566FD: MemLdI2 global_108
  loc_A56700: CI4UI1
  loc_A56701: FLdPr Me
  loc_A56704: MemLdStr global_104
  loc_A56707: AryLock
  loc_A5670A: Ary1LdPr
  loc_A5670B: MemLdStr global_8
  loc_A5670E: AryLock
  loc_A56711: Ary1LdPr
  loc_A56712: MemLdRfVar from_stack_1.global_0
  loc_A56715: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5671A: AryUnlock
  loc_A5671D: AryUnlock
  loc_A56720: FFreeStr var_B4 = "": var_B8 = ""
  loc_A56729: FFreeAd var_88 = "": var_8C = ""
  loc_A56732: FFreeVar var_B0 = "": var_D0 = ""
  loc_A5673B: FLdRfVar var_B0
  loc_A5673E: FLdRfVar var_A0
  loc_A56741: LitVarStr var_9C, "PeriInfo"
  loc_A56746: PopAdLdVar
  loc_A56747: FLdRfVar var_8C
  loc_A5674A: FLdRfVar var_88
  loc_A5674D: FLdPr Me
  loc_A56750: MemLdRfVar from_stack_1.global_72
  loc_A56753: NewIfNullPr clsimputacion
  loc_A56756: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5675B: FLdPr var_88
  loc_A5675E:  = Me.Fields
  loc_A56763: FLdPr var_8C
  loc_A56766: from_stack_2 = Me.Item(from_stack_1)
  loc_A5676B: FLdPr var_A0
  loc_A5676E:  = Me.Value
  loc_A56773: FLdPr Me
  loc_A56776: MemLdRfVar from_stack_1.global_76
  loc_A56779: NewIfNullRf
  loc_A5677D: FLdPr Me
  loc_A56780: MemLdI2 global_110
  loc_A56783: CI4UI1
  loc_A56784: FLdPr Me
  loc_A56787: MemLdI2 global_108
  loc_A5678A: CI4UI1
  loc_A5678B: FLdPr Me
  loc_A5678E: MemLdStr global_104
  loc_A56791: Ary1LdPr
  loc_A56792: MemLdStr global_8
  loc_A56795: Ary1LdPr
  loc_A56796: MemLdStr global_0
  loc_A56799: FLdRfVar var_B0
  loc_A5679C: CI2Var
  loc_A5679D: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A567A2: FFreeAd var_88 = "": var_8C = ""
  loc_A567AB: FFree1Var var_B0 = ""
  loc_A567AE: FLdRfVar var_B4
  loc_A567B1: FLdPr Me
  loc_A567B4: MemLdRfVar from_stack_1.global_76
  loc_A567B7: NewIfNullPr tblpartida
  loc_A567BA: from_stack_1v = tblpartida.DetaPartGet()
  loc_A567BF: LitI2_Byte 0
  loc_A567C1: LitVar_Missing var_D0
  loc_A567C4: LitI2_Byte 0
  loc_A567C6: FLdZeroAd var_B4
  loc_A567C9: CVarStr var_B0
  loc_A567CC: PopAdLdVar
  loc_A567CD: FLdPr Me
  loc_A567D0: MemLdI2 global_110
  loc_A567D3: CI4UI1
  loc_A567D4: FLdPr Me
  loc_A567D7: MemLdI2 global_108
  loc_A567DA: CI4UI1
  loc_A567DB: FLdPr Me
  loc_A567DE: MemLdStr global_104
  loc_A567E1: AryLock
  loc_A567E4: Ary1LdPr
  loc_A567E5: MemLdStr global_8
  loc_A567E8: AryLock
  loc_A567EB: Ary1LdPr
  loc_A567EC: MemLdRfVar from_stack_1.global_4
  loc_A567EF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A567F4: AryUnlock
  loc_A567F7: AryUnlock
  loc_A567FA: FFreeVar var_B0 = ""
  loc_A56801: LitStr "Municipalidad de Guaymallén"
  loc_A56804: LitStr "Municipalidad de San Carlos"
  loc_A56807: EqStr
  loc_A56809: BranchF loc_A5690A
  loc_A5680C: FLdRfVar var_B4
  loc_A5680F: FLdPr Me
  loc_A56812: VCallAd Control_ID_cboPeriodo
  loc_A56815: FStAdFunc var_88
  loc_A56818: FLdPr var_88
  loc_A5681B:  = Me.Text
  loc_A56820: LitI4 1
  loc_A56825: FLdPr Me
  loc_A56828: MemLdI2 global_110
  loc_A5682B: CI4UI1
  loc_A5682C: FLdPr Me
  loc_A5682F: MemLdI2 global_108
  loc_A56832: CI4UI1
  loc_A56833: FLdPr Me
  loc_A56836: MemLdStr global_104
  loc_A56839: Ary1LdPr
  loc_A5683A: MemLdStr global_8
  loc_A5683D: Ary1LdPr
  loc_A5683E: MemLdStr global_0
  loc_A56841: ImpAdCallI2 Left$(, )
  loc_A56846: FStStr var_110
  loc_A56849: FLdPr Me
  loc_A5684C: VCallAd Control_ID_mskDesde
  loc_A5684F: FStAdFunc var_8C
  loc_A56852: FLdPr var_8C
  loc_A56855: LateIdLdVar var_B0 DispID_15 0
  loc_A5685C: PopAd
  loc_A5685E: FLdPr Me
  loc_A56861: VCallAd Control_ID_mskHasta
  loc_A56864: FStAdFunc var_A0
  loc_A56867: FLdPr var_A0
  loc_A5686A: LateIdLdVar var_D0 DispID_15 0
  loc_A56871: PopAd
  loc_A56873: FLdRfVar var_FC
  loc_A56876: FLdRfVar var_D0
  loc_A56879: CStrVarTmp
  loc_A5687A: FStStrNoPop var_F8
  loc_A5687D: FLdRfVar var_B0
  loc_A56880: CStrVarTmp
  loc_A56881: FStStrNoPop var_F4
  loc_A56884: FLdZeroAd var_110
  loc_A56887: FStStrNoPop var_B8
  loc_A5688A: FLdPr Me
  loc_A5688D: MemLdI2 global_108
  loc_A56890: CI4UI1
  loc_A56891: FLdPr Me
  loc_A56894: MemLdStr global_104
  loc_A56897: Ary1LdPr
  loc_A56898: MemLdStr global_0
  loc_A5689B: ILdRf var_B4
  loc_A5689E: CI2Str
  loc_A568A0: FLdPr Me
  loc_A568A3: MemLdRfVar from_stack_1.global_72
  loc_A568A6: NewIfNullPr clsimputacion
  loc_A568A9: from_stack_6v = clsimputacion.NormasLegales(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_A568AE: LitI2_Byte 0
  loc_A568B0: LitVar_Missing var_10C
  loc_A568B3: LitI2_Byte 0
  loc_A568B5: FLdZeroAd var_FC
  loc_A568B8: CVarStr var_F0
  loc_A568BB: PopAdLdVar
  loc_A568BC: FLdPr Me
  loc_A568BF: MemLdI2 global_110
  loc_A568C2: CI4UI1
  loc_A568C3: FLdPr Me
  loc_A568C6: MemLdI2 global_108
  loc_A568C9: CI4UI1
  loc_A568CA: FLdPr Me
  loc_A568CD: MemLdStr global_104
  loc_A568D0: AryLock
  loc_A568D3: Ary1LdPr
  loc_A568D4: MemLdStr global_8
  loc_A568D7: AryLock
  loc_A568DA: Ary1LdPr
  loc_A568DB: MemLdRfVar from_stack_1.global_8
  loc_A568DE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A568E3: AryUnlock
  loc_A568E6: AryUnlock
  loc_A568E9: FFreeStr var_B4 = "": var_B8 = "": var_F4 = "": var_F8 = ""
  loc_A568F6: FFreeAd var_88 = "": var_8C = ""
  loc_A568FF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_A5690A: Call Proc_147_37_A62570()
  loc_A5690F: ExitProcHresult
End Function

Private Function Proc_147_37_A62570() 'A62570
  'Data Table: 4CFE80
  loc_A62260: FLdPr Me
  loc_A62263: MemLdI2 global_112
  loc_A62266: LitI2_Byte 1
  loc_A62268: AddI2
  loc_A62269: FLdPr Me
  loc_A6226C: MemStI2 global_112
  loc_A6226F: LitI2_Byte 0
  loc_A62271: FLdPr Me
  loc_A62274: MemStI2 global_114
  loc_A62277: LitI4 1
  loc_A6227C: FLdPr Me
  loc_A6227F: MemLdI2 global_112
  loc_A62282: CI4UI1
  loc_A62283: FLdPr Me
  loc_A62286: MemLdI2 global_110
  loc_A62289: CI4UI1
  loc_A6228A: FLdPr Me
  loc_A6228D: MemLdI2 global_108
  loc_A62290: CI4UI1
  loc_A62291: FLdPr Me
  loc_A62294: MemLdStr global_104
  loc_A62297: Ary1LdPr
  loc_A62298: MemLdStr global_8
  loc_A6229B: Ary1LdPr
  loc_A6229C: MemLdRfVar from_stack_1.global_396
  loc_A6229F: RedimPreserve
  loc_A622A9: FLdRfVar var_B0
  loc_A622AC: FLdRfVar var_A0
  loc_A622AF: LitVarStr var_9C, "CodiPart"
  loc_A622B4: PopAdLdVar
  loc_A622B5: FLdRfVar var_8C
  loc_A622B8: FLdRfVar var_88
  loc_A622BB: FLdPr Me
  loc_A622BE: MemLdRfVar from_stack_1.global_72
  loc_A622C1: NewIfNullPr clsimputacion
  loc_A622C4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A622C9: FLdPr var_88
  loc_A622CC:  = Me.Fields
  loc_A622D1: FLdPr var_8C
  loc_A622D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A622D9: FLdPr var_A0
  loc_A622DC:  = Me.Value
  loc_A622E1: LitI4 2
  loc_A622E6: FLdRfVar var_B0
  loc_A622E9: CStrVarTmp
  loc_A622EA: FStStrNoPop var_B4
  loc_A622ED: ImpAdCallI2 Left$(, )
  loc_A622F2: FStStr var_F8
  loc_A622F5: LitI2_Byte 0
  loc_A622F7: LitVar_Missing var_F4
  loc_A622FA: LitI2_Byte 0
  loc_A622FC: FLdZeroAd var_F8
  loc_A622FF: FStStrNoPop var_B8
  loc_A62302: LitStr "000000"
  loc_A62305: ConcatStr
  loc_A62306: CVarStr var_D4
  loc_A62309: PopAdLdVar
  loc_A6230A: FLdPr Me
  loc_A6230D: MemLdI2 global_112
  loc_A62310: CI4UI1
  loc_A62311: FLdPr Me
  loc_A62314: MemLdI2 global_110
  loc_A62317: CI4UI1
  loc_A62318: FLdPr Me
  loc_A6231B: MemLdI2 global_108
  loc_A6231E: CI4UI1
  loc_A6231F: FLdPr Me
  loc_A62322: MemLdStr global_104
  loc_A62325: AryLock
  loc_A62328: Ary1LdPr
  loc_A62329: MemLdStr global_8
  loc_A6232C: AryLock
  loc_A6232F: Ary1LdPr
  loc_A62330: MemLdStr global_396
  loc_A62333: AryLock
  loc_A62336: Ary1LdPr
  loc_A62337: MemLdRfVar from_stack_1.global_0
  loc_A6233A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6233F: AryUnlock
  loc_A62342: AryUnlock
  loc_A62345: AryUnlock
  loc_A62348: FFreeStr var_B4 = "": var_B8 = ""
  loc_A62351: FFreeAd var_88 = "": var_8C = ""
  loc_A6235A: FFreeVar var_B0 = "": var_D4 = ""
  loc_A62363: FLdRfVar var_B0
  loc_A62366: FLdRfVar var_A0
  loc_A62369: LitVarStr var_9C, "PeriInfo"
  loc_A6236E: PopAdLdVar
  loc_A6236F: FLdRfVar var_8C
  loc_A62372: FLdRfVar var_88
  loc_A62375: FLdPr Me
  loc_A62378: MemLdRfVar from_stack_1.global_72
  loc_A6237B: NewIfNullPr clsimputacion
  loc_A6237E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A62383: FLdPr var_88
  loc_A62386:  = Me.Fields
  loc_A6238B: FLdPr var_8C
  loc_A6238E: from_stack_2 = Me.Item(from_stack_1)
  loc_A62393: FLdPr var_A0
  loc_A62396:  = Me.Value
  loc_A6239B: FLdPr Me
  loc_A6239E: MemLdRfVar from_stack_1.global_76
  loc_A623A1: NewIfNullRf
  loc_A623A5: FLdPr Me
  loc_A623A8: MemLdI2 global_112
  loc_A623AB: CI4UI1
  loc_A623AC: FLdPr Me
  loc_A623AF: MemLdI2 global_110
  loc_A623B2: CI4UI1
  loc_A623B3: FLdPr Me
  loc_A623B6: MemLdI2 global_108
  loc_A623B9: CI4UI1
  loc_A623BA: FLdPr Me
  loc_A623BD: MemLdStr global_104
  loc_A623C0: Ary1LdPr
  loc_A623C1: MemLdStr global_8
  loc_A623C4: Ary1LdPr
  loc_A623C5: MemLdStr global_396
  loc_A623C8: Ary1LdPr
  loc_A623C9: MemLdStr global_0
  loc_A623CC: FLdRfVar var_B0
  loc_A623CF: CI2Var
  loc_A623D0: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A623D5: FFreeAd var_88 = "": var_8C = ""
  loc_A623DE: FFree1Var var_B0 = ""
  loc_A623E1: FLdRfVar var_B4
  loc_A623E4: FLdPr Me
  loc_A623E7: MemLdRfVar from_stack_1.global_76
  loc_A623EA: NewIfNullPr tblpartida
  loc_A623ED: from_stack_1v = tblpartida.DetaPartGet()
  loc_A623F2: LitI2_Byte 0
  loc_A623F4: LitVar_Missing var_D4
  loc_A623F7: LitI2_Byte 0
  loc_A623F9: FLdZeroAd var_B4
  loc_A623FC: CVarStr var_B0
  loc_A623FF: PopAdLdVar
  loc_A62400: FLdPr Me
  loc_A62403: MemLdI2 global_112
  loc_A62406: CI4UI1
  loc_A62407: FLdPr Me
  loc_A6240A: MemLdI2 global_110
  loc_A6240D: CI4UI1
  loc_A6240E: FLdPr Me
  loc_A62411: MemLdI2 global_108
  loc_A62414: CI4UI1
  loc_A62415: FLdPr Me
  loc_A62418: MemLdStr global_104
  loc_A6241B: AryLock
  loc_A6241E: Ary1LdPr
  loc_A6241F: MemLdStr global_8
  loc_A62422: AryLock
  loc_A62425: Ary1LdPr
  loc_A62426: MemLdStr global_396
  loc_A62429: AryLock
  loc_A6242C: Ary1LdPr
  loc_A6242D: MemLdRfVar from_stack_1.global_4
  loc_A62430: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A62435: AryUnlock
  loc_A62438: AryUnlock
  loc_A6243B: AryUnlock
  loc_A6243E: FFreeVar var_B0 = ""
  loc_A62445: LitStr "Municipalidad de Guaymallén"
  loc_A62448: LitStr "Municipalidad de San Carlos"
  loc_A6244B: EqStr
  loc_A6244D: BranchF loc_A6256A
  loc_A62450: FLdRfVar var_B4
  loc_A62453: FLdPr Me
  loc_A62456: VCallAd Control_ID_cboPeriodo
  loc_A62459: FStAdFunc var_88
  loc_A6245C: FLdPr var_88
  loc_A6245F:  = Me.Text
  loc_A62464: LitI4 2
  loc_A62469: FLdPr Me
  loc_A6246C: MemLdI2 global_112
  loc_A6246F: CI4UI1
  loc_A62470: FLdPr Me
  loc_A62473: MemLdI2 global_110
  loc_A62476: CI4UI1
  loc_A62477: FLdPr Me
  loc_A6247A: MemLdI2 global_108
  loc_A6247D: CI4UI1
  loc_A6247E: FLdPr Me
  loc_A62481: MemLdStr global_104
  loc_A62484: Ary1LdPr
  loc_A62485: MemLdStr global_8
  loc_A62488: Ary1LdPr
  loc_A62489: MemLdStr global_396
  loc_A6248C: Ary1LdPr
  loc_A6248D: MemLdStr global_0
  loc_A62490: ImpAdCallI2 Left$(, )
  loc_A62495: FStStr var_114
  loc_A62498: FLdPr Me
  loc_A6249B: VCallAd Control_ID_mskDesde
  loc_A6249E: FStAdFunc var_8C
  loc_A624A1: FLdPr var_8C
  loc_A624A4: LateIdLdVar var_B0 DispID_15 0
  loc_A624AB: PopAd
  loc_A624AD: FLdPr Me
  loc_A624B0: VCallAd Control_ID_mskHasta
  loc_A624B3: FStAdFunc var_A0
  loc_A624B6: FLdPr var_A0
  loc_A624B9: LateIdLdVar var_D4 DispID_15 0
  loc_A624C0: PopAd
  loc_A624C2: FLdRfVar var_100
  loc_A624C5: FLdRfVar var_D4
  loc_A624C8: CStrVarTmp
  loc_A624C9: FStStrNoPop var_FC
  loc_A624CC: FLdRfVar var_B0
  loc_A624CF: CStrVarTmp
  loc_A624D0: FStStrNoPop var_F8
  loc_A624D3: FLdZeroAd var_114
  loc_A624D6: FStStrNoPop var_B8
  loc_A624D9: FLdPr Me
  loc_A624DC: MemLdI2 global_108
  loc_A624DF: CI4UI1
  loc_A624E0: FLdPr Me
  loc_A624E3: MemLdStr global_104
  loc_A624E6: Ary1LdPr
  loc_A624E7: MemLdStr global_0
  loc_A624EA: ILdRf var_B4
  loc_A624ED: CI2Str
  loc_A624EF: FLdPr Me
  loc_A624F2: MemLdRfVar from_stack_1.global_72
  loc_A624F5: NewIfNullPr clsimputacion
  loc_A624F8: from_stack_6v = clsimputacion.NormasLegales(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_A624FD: LitI2_Byte 0
  loc_A624FF: LitVar_Missing var_110
  loc_A62502: LitI2_Byte 0
  loc_A62504: FLdZeroAd var_100
  loc_A62507: CVarStr var_F4
  loc_A6250A: PopAdLdVar
  loc_A6250B: FLdPr Me
  loc_A6250E: MemLdI2 global_112
  loc_A62511: CI4UI1
  loc_A62512: FLdPr Me
  loc_A62515: MemLdI2 global_110
  loc_A62518: CI4UI1
  loc_A62519: FLdPr Me
  loc_A6251C: MemLdI2 global_108
  loc_A6251F: CI4UI1
  loc_A62520: FLdPr Me
  loc_A62523: MemLdStr global_104
  loc_A62526: AryLock
  loc_A62529: Ary1LdPr
  loc_A6252A: MemLdStr global_8
  loc_A6252D: AryLock
  loc_A62530: Ary1LdPr
  loc_A62531: MemLdStr global_396
  loc_A62534: AryLock
  loc_A62537: Ary1LdPr
  loc_A62538: MemLdRfVar from_stack_1.global_8
  loc_A6253B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A62540: AryUnlock
  loc_A62543: AryUnlock
  loc_A62546: AryUnlock
  loc_A62549: FFreeStr var_B4 = "": var_B8 = "": var_F8 = "": var_FC = ""
  loc_A62556: FFreeAd var_88 = "": var_8C = ""
  loc_A6255F: FFreeVar var_B0 = "": var_D4 = "": var_F4 = ""
  loc_A6256A: Call Proc_147_38_A8B588()
  loc_A6256F: ExitProcHresult
End Function

Private Function Proc_147_38_A8B588() 'A8B588
  'Data Table: 4CFE80
  loc_A8B164: FLdPr Me
  loc_A8B167: MemLdI2 global_114
  loc_A8B16A: LitI2_Byte 1
  loc_A8B16C: AddI2
  loc_A8B16D: FLdPr Me
  loc_A8B170: MemStI2 global_114
  loc_A8B173: LitI2_Byte 0
  loc_A8B175: FLdPr Me
  loc_A8B178: MemStI2 global_116
  loc_A8B17B: LitI4 1
  loc_A8B180: FLdPr Me
  loc_A8B183: MemLdI2 global_114
  loc_A8B186: CI4UI1
  loc_A8B187: FLdPr Me
  loc_A8B18A: MemLdI2 global_112
  loc_A8B18D: CI4UI1
  loc_A8B18E: FLdPr Me
  loc_A8B191: MemLdI2 global_110
  loc_A8B194: CI4UI1
  loc_A8B195: FLdPr Me
  loc_A8B198: MemLdI2 global_108
  loc_A8B19B: CI4UI1
  loc_A8B19C: FLdPr Me
  loc_A8B19F: MemLdStr global_104
  loc_A8B1A2: Ary1LdPr
  loc_A8B1A3: MemLdStr global_8
  loc_A8B1A6: Ary1LdPr
  loc_A8B1A7: MemLdStr global_396
  loc_A8B1AA: Ary1LdPr
  loc_A8B1AB: MemLdRfVar from_stack_1.global_396
  loc_A8B1AE: RedimPreserve
  loc_A8B1B8: FLdRfVar var_B0
  loc_A8B1BB: FLdRfVar var_A0
  loc_A8B1BE: LitVarStr var_9C, "CodiPart"
  loc_A8B1C3: PopAdLdVar
  loc_A8B1C4: FLdRfVar var_8C
  loc_A8B1C7: FLdRfVar var_88
  loc_A8B1CA: FLdPr Me
  loc_A8B1CD: MemLdRfVar from_stack_1.global_72
  loc_A8B1D0: NewIfNullPr clsimputacion
  loc_A8B1D3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8B1D8: FLdPr var_88
  loc_A8B1DB:  = Me.Fields
  loc_A8B1E0: FLdPr var_8C
  loc_A8B1E3: from_stack_2 = Me.Item(from_stack_1)
  loc_A8B1E8: FLdPr var_A0
  loc_A8B1EB:  = Me.Value
  loc_A8B1F0: FLdPr Me
  loc_A8B1F3: MemLdI2 global_80
  loc_A8B1F6: CI4UI1
  loc_A8B1F7: FLdRfVar var_B0
  loc_A8B1FA: CStrVarTmp
  loc_A8B1FB: FStStrNoPop var_B4
  loc_A8B1FE: ImpAdCallI2 Left$(, )
  loc_A8B203: FStStr var_138
  loc_A8B206: LitVarStr var_C4, "0"
  loc_A8B20B: FStVarCopyObj var_D4
  loc_A8B20E: FLdRfVar var_D4
  loc_A8B211: LitI2_Byte 8
  loc_A8B213: CI2UI1
  loc_A8B215: FLdPr Me
  loc_A8B218: MemLdI2 global_80
  loc_A8B21B: SubI2
  loc_A8B21C: CI4UI1
  loc_A8B21D: FLdRfVar var_E4
  loc_A8B220: ImpAdCallFPR4  = String(, )
  loc_A8B225: LitI2_Byte 0
  loc_A8B227: LitVar_Missing var_134
  loc_A8B22A: LitI2_Byte 0
  loc_A8B22C: FLdZeroAd var_138
  loc_A8B22F: CVarStr var_F4
  loc_A8B232: FLdRfVar var_E4
  loc_A8B235: ConcatVar var_104
  loc_A8B239: PopAdLdVar
  loc_A8B23A: FLdPr Me
  loc_A8B23D: MemLdI2 global_114
  loc_A8B240: CI4UI1
  loc_A8B241: FLdPr Me
  loc_A8B244: MemLdI2 global_112
  loc_A8B247: CI4UI1
  loc_A8B248: FLdPr Me
  loc_A8B24B: MemLdI2 global_110
  loc_A8B24E: CI4UI1
  loc_A8B24F: FLdPr Me
  loc_A8B252: MemLdI2 global_108
  loc_A8B255: CI4UI1
  loc_A8B256: FLdPr Me
  loc_A8B259: MemLdStr global_104
  loc_A8B25C: AryLock
  loc_A8B25F: Ary1LdPr
  loc_A8B260: MemLdStr global_8
  loc_A8B263: AryLock
  loc_A8B266: Ary1LdPr
  loc_A8B267: MemLdStr global_396
  loc_A8B26A: AryLock
  loc_A8B26D: Ary1LdPr
  loc_A8B26E: MemLdStr global_396
  loc_A8B271: AryLock
  loc_A8B274: Ary1LdPr
  loc_A8B275: MemLdRfVar from_stack_1.global_0
  loc_A8B278: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8B27D: AryUnlock
  loc_A8B280: AryUnlock
  loc_A8B283: AryUnlock
  loc_A8B286: AryUnlock
  loc_A8B289: FFreeStr var_B4 = ""
  loc_A8B290: FFreeAd var_88 = "": var_8C = ""
  loc_A8B299: FFreeVar var_B0 = "": var_D4 = "": var_F4 = "": var_E4 = "": var_104 = ""
  loc_A8B2A8: FLdRfVar var_B0
  loc_A8B2AB: FLdRfVar var_A0
  loc_A8B2AE: LitVarStr var_9C, "PeriInfo"
  loc_A8B2B3: PopAdLdVar
  loc_A8B2B4: FLdRfVar var_8C
  loc_A8B2B7: FLdRfVar var_88
  loc_A8B2BA: FLdPr Me
  loc_A8B2BD: MemLdRfVar from_stack_1.global_72
  loc_A8B2C0: NewIfNullPr clsimputacion
  loc_A8B2C3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A8B2C8: FLdPr var_88
  loc_A8B2CB:  = Me.Fields
  loc_A8B2D0: FLdPr var_8C
  loc_A8B2D3: from_stack_2 = Me.Item(from_stack_1)
  loc_A8B2D8: FLdPr var_A0
  loc_A8B2DB:  = Me.Value
  loc_A8B2E0: FLdPr Me
  loc_A8B2E3: MemLdRfVar from_stack_1.global_76
  loc_A8B2E6: NewIfNullRf
  loc_A8B2EA: FLdPr Me
  loc_A8B2ED: MemLdI2 global_114
  loc_A8B2F0: CI4UI1
  loc_A8B2F1: FLdPr Me
  loc_A8B2F4: MemLdI2 global_112
  loc_A8B2F7: CI4UI1
  loc_A8B2F8: FLdPr Me
  loc_A8B2FB: MemLdI2 global_110
  loc_A8B2FE: CI4UI1
  loc_A8B2FF: FLdPr Me
  loc_A8B302: MemLdI2 global_108
  loc_A8B305: CI4UI1
  loc_A8B306: FLdPr Me
  loc_A8B309: MemLdStr global_104
  loc_A8B30C: Ary1LdPr
  loc_A8B30D: MemLdStr global_8
  loc_A8B310: Ary1LdPr
  loc_A8B311: MemLdStr global_396
  loc_A8B314: Ary1LdPr
  loc_A8B315: MemLdStr global_396
  loc_A8B318: Ary1LdPr
  loc_A8B319: MemLdStr global_0
  loc_A8B31C: FLdRfVar var_B0
  loc_A8B31F: CI2Var
  loc_A8B320: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A8B325: FFreeAd var_88 = "": var_8C = ""
  loc_A8B32E: FFree1Var var_B0 = ""
  loc_A8B331: FLdRfVar var_B4
  loc_A8B334: FLdPr Me
  loc_A8B337: MemLdRfVar from_stack_1.global_76
  loc_A8B33A: NewIfNullPr tblpartida
  loc_A8B33D: from_stack_1v = tblpartida.DetaPartGet()
  loc_A8B342: LitI2_Byte 0
  loc_A8B344: LitVar_Missing var_D4
  loc_A8B347: LitI2_Byte 0
  loc_A8B349: FLdZeroAd var_B4
  loc_A8B34C: CVarStr var_B0
  loc_A8B34F: PopAdLdVar
  loc_A8B350: FLdPr Me
  loc_A8B353: MemLdI2 global_114
  loc_A8B356: CI4UI1
  loc_A8B357: FLdPr Me
  loc_A8B35A: MemLdI2 global_112
  loc_A8B35D: CI4UI1
  loc_A8B35E: FLdPr Me
  loc_A8B361: MemLdI2 global_110
  loc_A8B364: CI4UI1
  loc_A8B365: FLdPr Me
  loc_A8B368: MemLdI2 global_108
  loc_A8B36B: CI4UI1
  loc_A8B36C: FLdPr Me
  loc_A8B36F: MemLdStr global_104
  loc_A8B372: AryLock
  loc_A8B375: Ary1LdPr
  loc_A8B376: MemLdStr global_8
  loc_A8B379: AryLock
  loc_A8B37C: Ary1LdPr
  loc_A8B37D: MemLdStr global_396
  loc_A8B380: AryLock
  loc_A8B383: Ary1LdPr
  loc_A8B384: MemLdStr global_396
  loc_A8B387: AryLock
  loc_A8B38A: Ary1LdPr
  loc_A8B38B: MemLdRfVar from_stack_1.global_4
  loc_A8B38E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8B393: AryUnlock
  loc_A8B396: AryUnlock
  loc_A8B399: AryUnlock
  loc_A8B39C: AryUnlock
  loc_A8B39F: FFreeVar var_B0 = ""
  loc_A8B3A6: FLdRfVar var_B4
  loc_A8B3A9: FLdPr Me
  loc_A8B3AC: VCallAd Control_ID_cboPeriodo
  loc_A8B3AF: FStAdFunc var_88
  loc_A8B3B2: FLdPr var_88
  loc_A8B3B5:  = Me.Text
  loc_A8B3BA: LitI4 3
  loc_A8B3BF: FLdPr Me
  loc_A8B3C2: MemLdI2 global_114
  loc_A8B3C5: CI4UI1
  loc_A8B3C6: FLdPr Me
  loc_A8B3C9: MemLdI2 global_112
  loc_A8B3CC: CI4UI1
  loc_A8B3CD: FLdPr Me
  loc_A8B3D0: MemLdI2 global_110
  loc_A8B3D3: CI4UI1
  loc_A8B3D4: FLdPr Me
  loc_A8B3D7: MemLdI2 global_108
  loc_A8B3DA: CI4UI1
  loc_A8B3DB: FLdPr Me
  loc_A8B3DE: MemLdStr global_104
  loc_A8B3E1: Ary1LdPr
  loc_A8B3E2: MemLdStr global_8
  loc_A8B3E5: Ary1LdPr
  loc_A8B3E6: MemLdStr global_396
  loc_A8B3E9: Ary1LdPr
  loc_A8B3EA: MemLdStr global_396
  loc_A8B3ED: Ary1LdPr
  loc_A8B3EE: MemLdStr global_0
  loc_A8B3F1: ImpAdCallI2 Left$(, )
  loc_A8B3F6: FStStr var_148
  loc_A8B3F9: FLdPr Me
  loc_A8B3FC: VCallAd Control_ID_mskDesde
  loc_A8B3FF: FStAdFunc var_8C
  loc_A8B402: FLdPr var_8C
  loc_A8B405: LateIdLdVar var_B0 DispID_15 0
  loc_A8B40C: PopAd
  loc_A8B40E: FLdPr Me
  loc_A8B411: VCallAd Control_ID_mskHasta
  loc_A8B414: FStAdFunc var_A0
  loc_A8B417: FLdPr var_A0
  loc_A8B41A: LateIdLdVar var_D4 DispID_15 0
  loc_A8B421: PopAd
  loc_A8B423: FLdRfVar var_144
  loc_A8B426: FLdRfVar var_D4
  loc_A8B429: CStrVarTmp
  loc_A8B42A: FStStrNoPop var_140
  loc_A8B42D: FLdRfVar var_B0
  loc_A8B430: CStrVarTmp
  loc_A8B431: FStStrNoPop var_13C
  loc_A8B434: FLdZeroAd var_148
  loc_A8B437: FStStrNoPop var_138
  loc_A8B43A: LitStr vbNullString
  loc_A8B43D: ILdRf var_B4
  loc_A8B440: CI2Str
  loc_A8B442: FLdPr Me
  loc_A8B445: MemLdRfVar from_stack_1.global_72
  loc_A8B448: NewIfNullPr clsimputacion
  loc_A8B44B: from_stack_6v = clsimputacion.NormasLegales(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_A8B450: LitI2_Byte 0
  loc_A8B452: LitVar_Missing var_F4
  loc_A8B455: LitI2_Byte 0
  loc_A8B457: FLdZeroAd var_144
  loc_A8B45A: CVarStr var_E4
  loc_A8B45D: PopAdLdVar
  loc_A8B45E: FLdPr Me
  loc_A8B461: MemLdI2 global_114
  loc_A8B464: CI4UI1
  loc_A8B465: FLdPr Me
  loc_A8B468: MemLdI2 global_112
  loc_A8B46B: CI4UI1
  loc_A8B46C: FLdPr Me
  loc_A8B46F: MemLdI2 global_110
  loc_A8B472: CI4UI1
  loc_A8B473: FLdPr Me
  loc_A8B476: MemLdI2 global_108
  loc_A8B479: CI4UI1
  loc_A8B47A: FLdPr Me
  loc_A8B47D: MemLdStr global_104
  loc_A8B480: AryLock
  loc_A8B483: Ary1LdPr
  loc_A8B484: MemLdStr global_8
  loc_A8B487: AryLock
  loc_A8B48A: Ary1LdPr
  loc_A8B48B: MemLdStr global_396
  loc_A8B48E: AryLock
  loc_A8B491: Ary1LdPr
  loc_A8B492: MemLdStr global_396
  loc_A8B495: AryLock
  loc_A8B498: Ary1LdPr
  loc_A8B499: MemLdRfVar from_stack_1.global_8
  loc_A8B49C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8B4A1: AryUnlock
  loc_A8B4A4: AryUnlock
  loc_A8B4A7: AryUnlock
  loc_A8B4AA: AryUnlock
  loc_A8B4AD: FFreeStr var_B4 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_A8B4BA: FFreeAd var_88 = "": var_8C = ""
  loc_A8B4C3: FFreeVar var_B0 = "": var_D4 = "": var_E4 = ""
  loc_A8B4CE: FLdPr Me
  loc_A8B4D1: VCallAd Control_ID_optSintetico
  loc_A8B4D4: CVarAd
  loc_A8B4D8: CBoolVarNull
  loc_A8B4DA: FFree1Var var_B0 = ""
  loc_A8B4DD: BranchF loc_A8B581
  loc_A8B4E0: FLdPr Me
  loc_A8B4E3: MemLdI2 global_112
  loc_A8B4E6: CI4UI1
  loc_A8B4E7: FLdPr Me
  loc_A8B4EA: MemLdI2 global_110
  loc_A8B4ED: CI4UI1
  loc_A8B4EE: FLdPr Me
  loc_A8B4F1: MemLdI2 global_108
  loc_A8B4F4: CI4UI1
  loc_A8B4F5: FLdPr Me
  loc_A8B4F8: MemLdStr global_104
  loc_A8B4FB: AryLock
  loc_A8B4FE: Ary1LdPr
  loc_A8B4FF: MemLdStr global_8
  loc_A8B502: AryLock
  loc_A8B505: Ary1LdPr
  loc_A8B506: MemLdStr global_396
  loc_A8B509: AryLock
  loc_A8B50C: Ary1LdPr
  loc_A8B50D: MemLdRfVar from_stack_1.global_0
  loc_A8B510: FLdPr Me
  loc_A8B513: MemLdI2 global_114
  loc_A8B516: CI4UI1
  loc_A8B517: FLdPr Me
  loc_A8B51A: MemLdI2 global_112
  loc_A8B51D: CI4UI1
  loc_A8B51E: FLdPr Me
  loc_A8B521: MemLdI2 global_110
  loc_A8B524: CI4UI1
  loc_A8B525: FLdPr Me
  loc_A8B528: MemLdI2 global_108
  loc_A8B52B: CI4UI1
  loc_A8B52C: FLdPr Me
  loc_A8B52F: MemLdStr global_104
  loc_A8B532: AryLock
  loc_A8B535: Ary1LdPr
  loc_A8B536: MemLdStr global_8
  loc_A8B539: AryLock
  loc_A8B53C: Ary1LdPr
  loc_A8B53D: MemLdStr global_396
  loc_A8B540: AryLock
  loc_A8B543: Ary1LdPr
  loc_A8B544: MemLdStr global_396
  loc_A8B547: AryLock
  loc_A8B54A: Ary1LdPr
  loc_A8B54B: MemLdRfVar from_stack_1.global_0
  loc_A8B54E: Call Proc_147_40_C12534()
  loc_A8B553: AryUnlock
  loc_A8B556: AryUnlock
  loc_A8B559: AryUnlock
  loc_A8B55C: AryUnlock
  loc_A8B55F: AryUnlock
  loc_A8B562: AryUnlock
  loc_A8B565: AryUnlock
  loc_A8B568: LitI4 1
  loc_A8B56D: PopTmpLdAdStr var_158
  loc_A8B570: FLdPr Me
  loc_A8B573: MemLdRfVar from_stack_1.global_72
  loc_A8B576: NewIfNullPr clsimputacion
  loc_A8B579: Call clsimputacion.Mover(from_stack_1v)
  loc_A8B57E: Branch loc_A8B586
  loc_A8B581: Call Proc_147_39_A74E14()
  loc_A8B586: ExitProcHresult
End Function

Private Function Proc_147_39_A74E14() 'A74E14
  'Data Table: 4CFE80
  loc_A74A7C: FLdPr Me
  loc_A74A7F: MemLdI2 global_116
  loc_A74A82: LitI2_Byte 1
  loc_A74A84: AddI2
  loc_A74A85: FLdPr Me
  loc_A74A88: MemStI2 global_116
  loc_A74A8B: LitI4 1
  loc_A74A90: FLdPr Me
  loc_A74A93: MemLdI2 global_116
  loc_A74A96: CI4UI1
  loc_A74A97: FLdPr Me
  loc_A74A9A: MemLdI2 global_114
  loc_A74A9D: CI4UI1
  loc_A74A9E: FLdPr Me
  loc_A74AA1: MemLdI2 global_112
  loc_A74AA4: CI4UI1
  loc_A74AA5: FLdPr Me
  loc_A74AA8: MemLdI2 global_110
  loc_A74AAB: CI4UI1
  loc_A74AAC: FLdPr Me
  loc_A74AAF: MemLdI2 global_108
  loc_A74AB2: CI4UI1
  loc_A74AB3: FLdPr Me
  loc_A74AB6: MemLdStr global_104
  loc_A74AB9: Ary1LdPr
  loc_A74ABA: MemLdStr global_8
  loc_A74ABD: Ary1LdPr
  loc_A74ABE: MemLdStr global_396
  loc_A74AC1: Ary1LdPr
  loc_A74AC2: MemLdStr global_396
  loc_A74AC5: Ary1LdPr
  loc_A74AC6: MemLdRfVar from_stack_1.global_396
  loc_A74AC9: RedimPreserve
  loc_A74AD3: FLdRfVar var_A0
  loc_A74AD6: LitVarStr var_9C, "CodiPart"
  loc_A74ADB: PopAdLdVar
  loc_A74ADC: FLdRfVar var_8C
  loc_A74ADF: FLdRfVar var_88
  loc_A74AE2: FLdPr Me
  loc_A74AE5: MemLdRfVar from_stack_1.global_72
  loc_A74AE8: NewIfNullPr clsimputacion
  loc_A74AEB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A74AF0: FLdPr var_88
  loc_A74AF3:  = Me.Fields
  loc_A74AF8: FLdPr var_8C
  loc_A74AFB: from_stack_2 = Me.Item(from_stack_1)
  loc_A74B00: LitI2_Byte 0
  loc_A74B02: LitVar_Missing var_E4
  loc_A74B05: LitI2_Byte 0
  loc_A74B07: FLdZeroAd var_A0
  loc_A74B0A: CVarAd
  loc_A74B0E: PopAdLdVar
  loc_A74B0F: FLdPr Me
  loc_A74B12: MemLdI2 global_116
  loc_A74B15: CI4UI1
  loc_A74B16: FLdPr Me
  loc_A74B19: MemLdI2 global_114
  loc_A74B1C: CI4UI1
  loc_A74B1D: FLdPr Me
  loc_A74B20: MemLdI2 global_112
  loc_A74B23: CI4UI1
  loc_A74B24: FLdPr Me
  loc_A74B27: MemLdI2 global_110
  loc_A74B2A: CI4UI1
  loc_A74B2B: FLdPr Me
  loc_A74B2E: MemLdI2 global_108
  loc_A74B31: CI4UI1
  loc_A74B32: FLdPr Me
  loc_A74B35: MemLdStr global_104
  loc_A74B38: AryLock
  loc_A74B3B: Ary1LdPr
  loc_A74B3C: MemLdStr global_8
  loc_A74B3F: AryLock
  loc_A74B42: Ary1LdPr
  loc_A74B43: MemLdStr global_396
  loc_A74B46: AryLock
  loc_A74B49: Ary1LdPr
  loc_A74B4A: MemLdStr global_396
  loc_A74B4D: AryLock
  loc_A74B50: Ary1LdPr
  loc_A74B51: MemLdStr global_396
  loc_A74B54: AryLock
  loc_A74B57: Ary1LdPr
  loc_A74B58: MemLdRfVar from_stack_1.global_0
  loc_A74B5B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A74B60: AryUnlock
  loc_A74B63: AryUnlock
  loc_A74B66: AryUnlock
  loc_A74B69: AryUnlock
  loc_A74B6C: AryUnlock
  loc_A74B6F: FFreeAd var_88 = ""
  loc_A74B76: FFreeVar var_C4 = ""
  loc_A74B7D: FLdRfVar var_A0
  loc_A74B80: LitVarStr var_9C, "DetaPart"
  loc_A74B85: PopAdLdVar
  loc_A74B86: FLdRfVar var_8C
  loc_A74B89: FLdRfVar var_88
  loc_A74B8C: FLdPr Me
  loc_A74B8F: MemLdRfVar from_stack_1.global_72
  loc_A74B92: NewIfNullPr clsimputacion
  loc_A74B95: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A74B9A: FLdPr var_88
  loc_A74B9D:  = Me.Fields
  loc_A74BA2: FLdPr var_8C
  loc_A74BA5: from_stack_2 = Me.Item(from_stack_1)
  loc_A74BAA: LitI2_Byte 0
  loc_A74BAC: LitVar_Missing var_E4
  loc_A74BAF: LitI2_Byte 0
  loc_A74BB1: FLdZeroAd var_A0
  loc_A74BB4: CVarAd
  loc_A74BB8: PopAdLdVar
  loc_A74BB9: FLdPr Me
  loc_A74BBC: MemLdI2 global_116
  loc_A74BBF: CI4UI1
  loc_A74BC0: FLdPr Me
  loc_A74BC3: MemLdI2 global_114
  loc_A74BC6: CI4UI1
  loc_A74BC7: FLdPr Me
  loc_A74BCA: MemLdI2 global_112
  loc_A74BCD: CI4UI1
  loc_A74BCE: FLdPr Me
  loc_A74BD1: MemLdI2 global_110
  loc_A74BD4: CI4UI1
  loc_A74BD5: FLdPr Me
  loc_A74BD8: MemLdI2 global_108
  loc_A74BDB: CI4UI1
  loc_A74BDC: FLdPr Me
  loc_A74BDF: MemLdStr global_104
  loc_A74BE2: AryLock
  loc_A74BE5: Ary1LdPr
  loc_A74BE6: MemLdStr global_8
  loc_A74BE9: AryLock
  loc_A74BEC: Ary1LdPr
  loc_A74BED: MemLdStr global_396
  loc_A74BF0: AryLock
  loc_A74BF3: Ary1LdPr
  loc_A74BF4: MemLdStr global_396
  loc_A74BF7: AryLock
  loc_A74BFA: Ary1LdPr
  loc_A74BFB: MemLdStr global_396
  loc_A74BFE: AryLock
  loc_A74C01: Ary1LdPr
  loc_A74C02: MemLdRfVar from_stack_1.global_4
  loc_A74C05: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A74C0A: AryUnlock
  loc_A74C0D: AryUnlock
  loc_A74C10: AryUnlock
  loc_A74C13: AryUnlock
  loc_A74C16: AryUnlock
  loc_A74C19: FFreeAd var_88 = ""
  loc_A74C20: FFreeVar var_C4 = ""
  loc_A74C27: FLdRfVar var_E8
  loc_A74C2A: FLdPr Me
  loc_A74C2D: VCallAd Control_ID_cboPeriodo
  loc_A74C30: FStAdFunc var_88
  loc_A74C33: FLdPr var_88
  loc_A74C36:  = Me.Text
  loc_A74C3B: FLdPr Me
  loc_A74C3E: VCallAd Control_ID_mskDesde
  loc_A74C41: FStAdFunc var_8C
  loc_A74C44: FLdPr var_8C
  loc_A74C47: LateIdLdVar var_C4 DispID_15 0
  loc_A74C4E: PopAd
  loc_A74C50: FLdPr Me
  loc_A74C53: VCallAd Control_ID_mskHasta
  loc_A74C56: FStAdFunc var_A0
  loc_A74C59: FLdPr var_A0
  loc_A74C5C: LateIdLdVar var_E4 DispID_15 0
  loc_A74C63: PopAd
  loc_A74C65: FLdRfVar var_F4
  loc_A74C68: FLdRfVar var_E4
  loc_A74C6B: CStrVarTmp
  loc_A74C6C: FStStrNoPop var_F0
  loc_A74C6F: FLdRfVar var_C4
  loc_A74C72: CStrVarTmp
  loc_A74C73: FStStrNoPop var_EC
  loc_A74C76: FLdPr Me
  loc_A74C79: MemLdI2 global_116
  loc_A74C7C: CI4UI1
  loc_A74C7D: FLdPr Me
  loc_A74C80: MemLdI2 global_114
  loc_A74C83: CI4UI1
  loc_A74C84: FLdPr Me
  loc_A74C87: MemLdI2 global_112
  loc_A74C8A: CI4UI1
  loc_A74C8B: FLdPr Me
  loc_A74C8E: MemLdI2 global_110
  loc_A74C91: CI4UI1
  loc_A74C92: FLdPr Me
  loc_A74C95: MemLdI2 global_108
  loc_A74C98: CI4UI1
  loc_A74C99: FLdPr Me
  loc_A74C9C: MemLdStr global_104
  loc_A74C9F: Ary1LdPr
  loc_A74CA0: MemLdStr global_8
  loc_A74CA3: Ary1LdPr
  loc_A74CA4: MemLdStr global_396
  loc_A74CA7: Ary1LdPr
  loc_A74CA8: MemLdStr global_396
  loc_A74CAB: Ary1LdPr
  loc_A74CAC: MemLdStr global_396
  loc_A74CAF: Ary1LdPr
  loc_A74CB0: MemLdStr global_0
  loc_A74CB3: LitStr vbNullString
  loc_A74CB6: ILdRf var_E8
  loc_A74CB9: CI2Str
  loc_A74CBB: FLdPr Me
  loc_A74CBE: MemLdRfVar from_stack_1.global_72
  loc_A74CC1: NewIfNullPr clsimputacion
  loc_A74CC4: from_stack_6v = clsimputacion.NormasLegales(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_A74CC9: LitI2_Byte 0
  loc_A74CCB: LitVar_Missing var_114
  loc_A74CCE: LitI2_Byte 0
  loc_A74CD0: FLdZeroAd var_F4
  loc_A74CD3: CVarStr var_104
  loc_A74CD6: PopAdLdVar
  loc_A74CD7: FLdPr Me
  loc_A74CDA: MemLdI2 global_116
  loc_A74CDD: CI4UI1
  loc_A74CDE: FLdPr Me
  loc_A74CE1: MemLdI2 global_114
  loc_A74CE4: CI4UI1
  loc_A74CE5: FLdPr Me
  loc_A74CE8: MemLdI2 global_112
  loc_A74CEB: CI4UI1
  loc_A74CEC: FLdPr Me
  loc_A74CEF: MemLdI2 global_110
  loc_A74CF2: CI4UI1
  loc_A74CF3: FLdPr Me
  loc_A74CF6: MemLdI2 global_108
  loc_A74CF9: CI4UI1
  loc_A74CFA: FLdPr Me
  loc_A74CFD: MemLdStr global_104
  loc_A74D00: AryLock
  loc_A74D03: Ary1LdPr
  loc_A74D04: MemLdStr global_8
  loc_A74D07: AryLock
  loc_A74D0A: Ary1LdPr
  loc_A74D0B: MemLdStr global_396
  loc_A74D0E: AryLock
  loc_A74D11: Ary1LdPr
  loc_A74D12: MemLdStr global_396
  loc_A74D15: AryLock
  loc_A74D18: Ary1LdPr
  loc_A74D19: MemLdStr global_396
  loc_A74D1C: AryLock
  loc_A74D1F: Ary1LdPr
  loc_A74D20: MemLdRfVar from_stack_1.global_8
  loc_A74D23: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A74D28: AryUnlock
  loc_A74D2B: AryUnlock
  loc_A74D2E: AryUnlock
  loc_A74D31: AryUnlock
  loc_A74D34: AryUnlock
  loc_A74D37: FFreeStr var_E8 = "": var_EC = ""
  loc_A74D40: FFreeAd var_88 = "": var_8C = ""
  loc_A74D49: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_A74D54: FLdPr Me
  loc_A74D57: MemLdI2 global_114
  loc_A74D5A: CI4UI1
  loc_A74D5B: FLdPr Me
  loc_A74D5E: MemLdI2 global_112
  loc_A74D61: CI4UI1
  loc_A74D62: FLdPr Me
  loc_A74D65: MemLdI2 global_110
  loc_A74D68: CI4UI1
  loc_A74D69: FLdPr Me
  loc_A74D6C: MemLdI2 global_108
  loc_A74D6F: CI4UI1
  loc_A74D70: FLdPr Me
  loc_A74D73: MemLdStr global_104
  loc_A74D76: AryLock
  loc_A74D79: Ary1LdPr
  loc_A74D7A: MemLdStr global_8
  loc_A74D7D: AryLock
  loc_A74D80: Ary1LdPr
  loc_A74D81: MemLdStr global_396
  loc_A74D84: AryLock
  loc_A74D87: Ary1LdPr
  loc_A74D88: MemLdStr global_396
  loc_A74D8B: AryLock
  loc_A74D8E: Ary1LdPr
  loc_A74D8F: MemLdRfVar from_stack_1.global_0
  loc_A74D92: FLdPr Me
  loc_A74D95: MemLdI2 global_116
  loc_A74D98: CI4UI1
  loc_A74D99: FLdPr Me
  loc_A74D9C: MemLdI2 global_114
  loc_A74D9F: CI4UI1
  loc_A74DA0: FLdPr Me
  loc_A74DA3: MemLdI2 global_112
  loc_A74DA6: CI4UI1
  loc_A74DA7: FLdPr Me
  loc_A74DAA: MemLdI2 global_110
  loc_A74DAD: CI4UI1
  loc_A74DAE: FLdPr Me
  loc_A74DB1: MemLdI2 global_108
  loc_A74DB4: CI4UI1
  loc_A74DB5: FLdPr Me
  loc_A74DB8: MemLdStr global_104
  loc_A74DBB: AryLock
  loc_A74DBE: Ary1LdPr
  loc_A74DBF: MemLdStr global_8
  loc_A74DC2: AryLock
  loc_A74DC5: Ary1LdPr
  loc_A74DC6: MemLdStr global_396
  loc_A74DC9: AryLock
  loc_A74DCC: Ary1LdPr
  loc_A74DCD: MemLdStr global_396
  loc_A74DD0: AryLock
  loc_A74DD3: Ary1LdPr
  loc_A74DD4: MemLdStr global_396
  loc_A74DD7: AryLock
  loc_A74DDA: Ary1LdRf
  loc_A74DDB: Call Proc_147_40_C12534()
  loc_A74DE0: AryUnlock
  loc_A74DE3: AryUnlock
  loc_A74DE6: AryUnlock
  loc_A74DE9: AryUnlock
  loc_A74DEC: AryUnlock
  loc_A74DEF: AryUnlock
  loc_A74DF2: AryUnlock
  loc_A74DF5: AryUnlock
  loc_A74DF8: AryUnlock
  loc_A74DFB: LitI4 1
  loc_A74E00: PopTmpLdAdStr var_128
  loc_A74E03: FLdPr Me
  loc_A74E06: MemLdRfVar from_stack_1.global_72
  loc_A74E09: NewIfNullPr clsimputacion
  loc_A74E0C: Call clsimputacion.Mover(from_stack_1v)
  loc_A74E11: ExitProcHresult
End Function

Private Function Proc_147_40_C12534(arg_C) 'C12534
  'Data Table: 4CFE80
  loc_C0F9C0: FLdPr Me
  loc_C0F9C3: MemLdRfVar from_stack_1.global_72
  loc_C0F9C6: NewIfNullAd
  loc_C0F9C9: FStAd var_88 
  loc_C0F9CD: FLdRfVar var_A4
  loc_C0F9D0: LitVarStr var_A0, "AutoAuto"
  loc_C0F9D5: PopAdLdVar
  loc_C0F9D6: FLdRfVar var_90
  loc_C0F9D9: FLdRfVar var_8C
  loc_C0F9DC: FLdPr var_88
  loc_C0F9DF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0F9E4: FLdPr var_8C
  loc_C0F9E7:  = Me.Fields
  loc_C0F9EC: FLdPr var_90
  loc_C0F9EF: from_stack_2 = Me.Item(from_stack_1)
  loc_C0F9F4: LitI2_Byte 0
  loc_C0F9F6: FMemLdRf unk_4CFE91
  loc_C0F9FB: CVarRef
  loc_C0FA00: LitI2_Byte &HFF
  loc_C0FA02: FLdZeroAd var_A4
  loc_C0FA05: CVarAd
  loc_C0FA09: PopAdLdVar
  loc_C0FA0A: FMemLdRf Proc_261_32_A53D7C(, , )
  loc_C0FA0F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FA14: FFreeAd var_8C = ""
  loc_C0FA1B: FFree1Var var_B4 = ""
  loc_C0FA1E: FLdRfVar var_A4
  loc_C0FA21: LitVarStr var_A0, "AumeAuto"
  loc_C0FA26: PopAdLdVar
  loc_C0FA27: FLdRfVar var_90
  loc_C0FA2A: FLdRfVar var_8C
  loc_C0FA2D: FLdPr var_88
  loc_C0FA30: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FA35: FLdPr var_8C
  loc_C0FA38:  = Me.Fields
  loc_C0FA3D: FLdPr var_90
  loc_C0FA40: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FA45: LitI2_Byte 0
  loc_C0FA47: FMemLdRf unk_4CFE91
  loc_C0FA4C: CVarRef
  loc_C0FA51: LitI2_Byte &HFF
  loc_C0FA53: FLdZeroAd var_A4
  loc_C0FA56: CVarAd
  loc_C0FA5A: PopAdLdVar
  loc_C0FA5B: FMemLdRf Proc_261_32_A53D7C(, , , )
  loc_C0FA60: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FA65: FFreeAd var_8C = ""
  loc_C0FA6C: FFree1Var var_B4 = ""
  loc_C0FA6F: FLdRfVar var_A4
  loc_C0FA72: LitVarStr var_A0, "DismAuto"
  loc_C0FA77: PopAdLdVar
  loc_C0FA78: FLdRfVar var_90
  loc_C0FA7B: FLdRfVar var_8C
  loc_C0FA7E: FLdPr var_88
  loc_C0FA81: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FA86: FLdPr var_8C
  loc_C0FA89:  = Me.Fields
  loc_C0FA8E: FLdPr var_90
  loc_C0FA91: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FA96: LitI2_Byte 0
  loc_C0FA98: FMemLdRf unk_4CFE91
  loc_C0FA9D: CVarRef
  loc_C0FAA2: LitI2_Byte &HFF
  loc_C0FAA4: FLdZeroAd var_A4
  loc_C0FAA7: CVarAd
  loc_C0FAAB: PopAdLdVar
  loc_C0FAAC: FMemLdRf Proc_261_32_A53D7C(, , , , )
  loc_C0FAB1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FAB6: FFreeAd var_8C = ""
  loc_C0FABD: FFree1Var var_B4 = ""
  loc_C0FAC0: FLdRfVar var_B4
  loc_C0FAC3: FLdRfVar var_A4
  loc_C0FAC6: LitVarStr var_A0, "AutoAuto"
  loc_C0FACB: PopAdLdVar
  loc_C0FACC: FLdRfVar var_90
  loc_C0FACF: FLdRfVar var_8C
  loc_C0FAD2: FLdPr var_88
  loc_C0FAD5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FADA: FLdPr var_8C
  loc_C0FADD:  = Me.Fields
  loc_C0FAE2: FLdPr var_90
  loc_C0FAE5: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FAEA: FLdPr var_A4
  loc_C0FAED:  = Me.Value
  loc_C0FAF2: FLdRfVar var_E0
  loc_C0FAF5: FLdRfVar var_D0
  loc_C0FAF8: LitVarStr var_C4, "AumeAuto"
  loc_C0FAFD: PopAdLdVar
  loc_C0FAFE: FLdRfVar var_CC
  loc_C0FB01: FLdRfVar var_C8
  loc_C0FB04: FLdPr var_88
  loc_C0FB07: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FB0C: FLdPr var_C8
  loc_C0FB0F:  = Me.Fields
  loc_C0FB14: FLdPr var_CC
  loc_C0FB17: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FB1C: FLdPr var_D0
  loc_C0FB1F:  = Me.Value
  loc_C0FB24: FLdRfVar var_10C
  loc_C0FB27: FLdRfVar var_FC
  loc_C0FB2A: LitVarStr var_F8, "DismAuto"
  loc_C0FB2F: PopAdLdVar
  loc_C0FB30: FLdRfVar var_E8
  loc_C0FB33: FLdRfVar var_E4
  loc_C0FB36: FLdPr var_88
  loc_C0FB39: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FB3E: FLdPr var_E4
  loc_C0FB41:  = Me.Fields
  loc_C0FB46: FLdPr var_E8
  loc_C0FB49: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FB4E: FLdPr var_FC
  loc_C0FB51:  = Me.Value
  loc_C0FB56: LitI2_Byte 0
  loc_C0FB58: FMemLdRf unk_4CFE91
  loc_C0FB5D: CVarRef
  loc_C0FB62: LitI2_Byte &HFF
  loc_C0FB64: FLdRfVar var_B4
  loc_C0FB67: FnCDblVar
  loc_C0FB69: FLdRfVar var_E0
  loc_C0FB6C: FnCDblVar
  loc_C0FB6E: AddR8
  loc_C0FB6F: FLdRfVar var_10C
  loc_C0FB72: FnCDblVar
  loc_C0FB74: SubR4
  loc_C0FB75: CVarR8
  loc_C0FB79: PopAdLdVar
  loc_C0FB7A: FMemLdRf Proc_261_32_A53D7C(, , , , , )
  loc_C0FB7F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FB84: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_E4 = "": var_E8 = ""
  loc_C0FB99: FFreeVar var_B4 = "": var_E0 = ""
  loc_C0FBA2: FLdRfVar var_A4
  loc_C0FBA5: LitVarStr var_A0, "DefiImpu"
  loc_C0FBAA: PopAdLdVar
  loc_C0FBAB: FLdRfVar var_90
  loc_C0FBAE: FLdRfVar var_8C
  loc_C0FBB1: FLdPr var_88
  loc_C0FBB4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FBB9: FLdPr var_8C
  loc_C0FBBC:  = Me.Fields
  loc_C0FBC1: FLdPr var_90
  loc_C0FBC4: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FBC9: LitI2_Byte 0
  loc_C0FBCB: FMemLdRf unk_4CFE91
  loc_C0FBD0: CVarRef
  loc_C0FBD5: LitI2_Byte &HFF
  loc_C0FBD7: FLdZeroAd var_A4
  loc_C0FBDA: CVarAd
  loc_C0FBDE: PopAdLdVar
  loc_C0FBDF: FMemLdRf Proc_261_32_A53D7C(, , , , , , )
  loc_C0FBE4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FBE9: FFreeAd var_8C = ""
  loc_C0FBF0: FFree1Var var_B4 = ""
  loc_C0FBF3: FLdRfVar var_A4
  loc_C0FBF6: LitVarStr var_A0, "DefiImpuMes1"
  loc_C0FBFB: PopAdLdVar
  loc_C0FBFC: FLdRfVar var_90
  loc_C0FBFF: FLdRfVar var_8C
  loc_C0FC02: FLdPr var_88
  loc_C0FC05: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FC0A: FLdPr var_8C
  loc_C0FC0D:  = Me.Fields
  loc_C0FC12: FLdPr var_90
  loc_C0FC15: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FC1A: LitI2_Byte 0
  loc_C0FC1C: FMemLdRf unk_4CFE91
  loc_C0FC21: CVarRef
  loc_C0FC26: LitI2_Byte &HFF
  loc_C0FC28: FLdZeroAd var_A4
  loc_C0FC2B: CVarAd
  loc_C0FC2F: PopAdLdVar
  loc_C0FC30: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , )
  loc_C0FC35: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FC3A: FFreeAd var_8C = ""
  loc_C0FC41: FFree1Var var_B4 = ""
  loc_C0FC44: FLdRfVar var_A4
  loc_C0FC47: LitVarStr var_A0, "DefiImpuMes2"
  loc_C0FC4C: PopAdLdVar
  loc_C0FC4D: FLdRfVar var_90
  loc_C0FC50: FLdRfVar var_8C
  loc_C0FC53: FLdPr var_88
  loc_C0FC56: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FC5B: FLdPr var_8C
  loc_C0FC5E:  = Me.Fields
  loc_C0FC63: FLdPr var_90
  loc_C0FC66: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FC6B: LitI2_Byte 0
  loc_C0FC6D: FMemLdRf unk_4CFE91
  loc_C0FC72: CVarRef
  loc_C0FC77: LitI2_Byte &HFF
  loc_C0FC79: FLdZeroAd var_A4
  loc_C0FC7C: CVarAd
  loc_C0FC80: PopAdLdVar
  loc_C0FC81: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , )
  loc_C0FC86: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FC8B: FFreeAd var_8C = ""
  loc_C0FC92: FFree1Var var_B4 = ""
  loc_C0FC95: FLdRfVar var_A4
  loc_C0FC98: LitVarStr var_A0, "DefiImpuMes3"
  loc_C0FC9D: PopAdLdVar
  loc_C0FC9E: FLdRfVar var_90
  loc_C0FCA1: FLdRfVar var_8C
  loc_C0FCA4: FLdPr var_88
  loc_C0FCA7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FCAC: FLdPr var_8C
  loc_C0FCAF:  = Me.Fields
  loc_C0FCB4: FLdPr var_90
  loc_C0FCB7: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FCBC: LitI2_Byte 0
  loc_C0FCBE: FMemLdRf unk_4CFE91
  loc_C0FCC3: CVarRef
  loc_C0FCC8: LitI2_Byte &HFF
  loc_C0FCCA: FLdZeroAd var_A4
  loc_C0FCCD: CVarAd
  loc_C0FCD1: PopAdLdVar
  loc_C0FCD2: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , )
  loc_C0FCD7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FCDC: FFreeAd var_8C = ""
  loc_C0FCE3: FFree1Var var_B4 = ""
  loc_C0FCE6: FLdRfVar var_A4
  loc_C0FCE9: LitVarStr var_A0, "DefiImpuMes4"
  loc_C0FCEE: PopAdLdVar
  loc_C0FCEF: FLdRfVar var_90
  loc_C0FCF2: FLdRfVar var_8C
  loc_C0FCF5: FLdPr var_88
  loc_C0FCF8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FCFD: FLdPr var_8C
  loc_C0FD00:  = Me.Fields
  loc_C0FD05: FLdPr var_90
  loc_C0FD08: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FD0D: LitI2_Byte 0
  loc_C0FD0F: FMemLdRf unk_4CFE91
  loc_C0FD14: CVarRef
  loc_C0FD19: LitI2_Byte &HFF
  loc_C0FD1B: FLdZeroAd var_A4
  loc_C0FD1E: CVarAd
  loc_C0FD22: PopAdLdVar
  loc_C0FD23: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , )
  loc_C0FD28: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FD2D: FFreeAd var_8C = ""
  loc_C0FD34: FFree1Var var_B4 = ""
  loc_C0FD37: FLdRfVar var_A4
  loc_C0FD3A: LitVarStr var_A0, "DefiImpuMes5"
  loc_C0FD3F: PopAdLdVar
  loc_C0FD40: FLdRfVar var_90
  loc_C0FD43: FLdRfVar var_8C
  loc_C0FD46: FLdPr var_88
  loc_C0FD49: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FD4E: FLdPr var_8C
  loc_C0FD51:  = Me.Fields
  loc_C0FD56: FLdPr var_90
  loc_C0FD59: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FD5E: LitI2_Byte 0
  loc_C0FD60: FMemLdRf unk_4CFE91
  loc_C0FD65: CVarRef
  loc_C0FD6A: LitI2_Byte &HFF
  loc_C0FD6C: FLdZeroAd var_A4
  loc_C0FD6F: CVarAd
  loc_C0FD73: PopAdLdVar
  loc_C0FD74: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , )
  loc_C0FD79: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FD7E: FFreeAd var_8C = ""
  loc_C0FD85: FFree1Var var_B4 = ""
  loc_C0FD88: FLdRfVar var_A4
  loc_C0FD8B: LitVarStr var_A0, "DefiImpuMes6"
  loc_C0FD90: PopAdLdVar
  loc_C0FD91: FLdRfVar var_90
  loc_C0FD94: FLdRfVar var_8C
  loc_C0FD97: FLdPr var_88
  loc_C0FD9A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FD9F: FLdPr var_8C
  loc_C0FDA2:  = Me.Fields
  loc_C0FDA7: FLdPr var_90
  loc_C0FDAA: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FDAF: LitI2_Byte 0
  loc_C0FDB1: FMemLdRf unk_4CFE91
  loc_C0FDB6: CVarRef
  loc_C0FDBB: LitI2_Byte &HFF
  loc_C0FDBD: FLdZeroAd var_A4
  loc_C0FDC0: CVarAd
  loc_C0FDC4: PopAdLdVar
  loc_C0FDC5: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , )
  loc_C0FDCA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FDCF: FFreeAd var_8C = ""
  loc_C0FDD6: FFree1Var var_B4 = ""
  loc_C0FDD9: FLdRfVar var_A4
  loc_C0FDDC: LitVarStr var_A0, "DefiImpuMes7"
  loc_C0FDE1: PopAdLdVar
  loc_C0FDE2: FLdRfVar var_90
  loc_C0FDE5: FLdRfVar var_8C
  loc_C0FDE8: FLdPr var_88
  loc_C0FDEB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FDF0: FLdPr var_8C
  loc_C0FDF3:  = Me.Fields
  loc_C0FDF8: FLdPr var_90
  loc_C0FDFB: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FE00: LitI2_Byte 0
  loc_C0FE02: FMemLdRf unk_4CFE91
  loc_C0FE07: CVarRef
  loc_C0FE0C: LitI2_Byte &HFF
  loc_C0FE0E: FLdZeroAd var_A4
  loc_C0FE11: CVarAd
  loc_C0FE15: PopAdLdVar
  loc_C0FE16: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , )
  loc_C0FE1B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FE20: FFreeAd var_8C = ""
  loc_C0FE27: FFree1Var var_B4 = ""
  loc_C0FE2A: FLdRfVar var_A4
  loc_C0FE2D: LitVarStr var_A0, "DefiImpuMes8"
  loc_C0FE32: PopAdLdVar
  loc_C0FE33: FLdRfVar var_90
  loc_C0FE36: FLdRfVar var_8C
  loc_C0FE39: FLdPr var_88
  loc_C0FE3C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FE41: FLdPr var_8C
  loc_C0FE44:  = Me.Fields
  loc_C0FE49: FLdPr var_90
  loc_C0FE4C: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FE51: LitI2_Byte 0
  loc_C0FE53: FMemLdRf unk_4CFE91
  loc_C0FE58: CVarRef
  loc_C0FE5D: LitI2_Byte &HFF
  loc_C0FE5F: FLdZeroAd var_A4
  loc_C0FE62: CVarAd
  loc_C0FE66: PopAdLdVar
  loc_C0FE67: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , )
  loc_C0FE6C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FE71: FFreeAd var_8C = ""
  loc_C0FE78: FFree1Var var_B4 = ""
  loc_C0FE7B: FLdRfVar var_A4
  loc_C0FE7E: LitVarStr var_A0, "DefiImpuMes9"
  loc_C0FE83: PopAdLdVar
  loc_C0FE84: FLdRfVar var_90
  loc_C0FE87: FLdRfVar var_8C
  loc_C0FE8A: FLdPr var_88
  loc_C0FE8D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FE92: FLdPr var_8C
  loc_C0FE95:  = Me.Fields
  loc_C0FE9A: FLdPr var_90
  loc_C0FE9D: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FEA2: LitI2_Byte 0
  loc_C0FEA4: FMemLdRf unk_4CFE91
  loc_C0FEA9: CVarRef
  loc_C0FEAE: LitI2_Byte &HFF
  loc_C0FEB0: FLdZeroAd var_A4
  loc_C0FEB3: CVarAd
  loc_C0FEB7: PopAdLdVar
  loc_C0FEB8: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , )
  loc_C0FEBD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FEC2: FFreeAd var_8C = ""
  loc_C0FEC9: FFree1Var var_B4 = ""
  loc_C0FECC: FLdRfVar var_A4
  loc_C0FECF: LitVarStr var_A0, "DefiImpuMes10"
  loc_C0FED4: PopAdLdVar
  loc_C0FED5: FLdRfVar var_90
  loc_C0FED8: FLdRfVar var_8C
  loc_C0FEDB: FLdPr var_88
  loc_C0FEDE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FEE3: FLdPr var_8C
  loc_C0FEE6:  = Me.Fields
  loc_C0FEEB: FLdPr var_90
  loc_C0FEEE: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FEF3: LitI2_Byte 0
  loc_C0FEF5: FMemLdRf unk_4CFE91
  loc_C0FEFA: CVarRef
  loc_C0FEFF: LitI2_Byte &HFF
  loc_C0FF01: FLdZeroAd var_A4
  loc_C0FF04: CVarAd
  loc_C0FF08: PopAdLdVar
  loc_C0FF09: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , )
  loc_C0FF0E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FF13: FFreeAd var_8C = ""
  loc_C0FF1A: FFree1Var var_B4 = ""
  loc_C0FF1D: FLdRfVar var_A4
  loc_C0FF20: LitVarStr var_A0, "DefiImpuMes11"
  loc_C0FF25: PopAdLdVar
  loc_C0FF26: FLdRfVar var_90
  loc_C0FF29: FLdRfVar var_8C
  loc_C0FF2C: FLdPr var_88
  loc_C0FF2F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FF34: FLdPr var_8C
  loc_C0FF37:  = Me.Fields
  loc_C0FF3C: FLdPr var_90
  loc_C0FF3F: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FF44: LitI2_Byte 0
  loc_C0FF46: FMemLdRf unk_4CFE91
  loc_C0FF4B: CVarRef
  loc_C0FF50: LitI2_Byte &HFF
  loc_C0FF52: FLdZeroAd var_A4
  loc_C0FF55: CVarAd
  loc_C0FF59: PopAdLdVar
  loc_C0FF5A: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C0FF5F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FF64: FFreeAd var_8C = ""
  loc_C0FF6B: FFree1Var var_B4 = ""
  loc_C0FF6E: FLdRfVar var_A4
  loc_C0FF71: LitVarStr var_A0, "DefiImpuMes12"
  loc_C0FF76: PopAdLdVar
  loc_C0FF77: FLdRfVar var_90
  loc_C0FF7A: FLdRfVar var_8C
  loc_C0FF7D: FLdPr var_88
  loc_C0FF80: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FF85: FLdPr var_8C
  loc_C0FF88:  = Me.Fields
  loc_C0FF8D: FLdPr var_90
  loc_C0FF90: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FF95: LitI2_Byte 0
  loc_C0FF97: FMemLdRf unk_4CFE91
  loc_C0FF9C: CVarRef
  loc_C0FFA1: LitI2_Byte &HFF
  loc_C0FFA3: FLdZeroAd var_A4
  loc_C0FFA6: CVarAd
  loc_C0FFAA: PopAdLdVar
  loc_C0FFAB: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C0FFB0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0FFB5: FFreeAd var_8C = ""
  loc_C0FFBC: FFree1Var var_B4 = ""
  loc_C0FFBF: FLdRfVar var_A4
  loc_C0FFC2: LitVarStr var_A0, "DeveImpu"
  loc_C0FFC7: PopAdLdVar
  loc_C0FFC8: FLdRfVar var_90
  loc_C0FFCB: FLdRfVar var_8C
  loc_C0FFCE: FLdPr var_88
  loc_C0FFD1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0FFD6: FLdPr var_8C
  loc_C0FFD9:  = Me.Fields
  loc_C0FFDE: FLdPr var_90
  loc_C0FFE1: from_stack_2 = Me.Item(from_stack_1)
  loc_C0FFE6: LitI2_Byte 0
  loc_C0FFE8: FMemLdRf unk_4CFE91
  loc_C0FFED: CVarRef
  loc_C0FFF2: LitI2_Byte &HFF
  loc_C0FFF4: FLdZeroAd var_A4
  loc_C0FFF7: CVarAd
  loc_C0FFFB: PopAdLdVar
  loc_C0FFFC: FMemLdRf Proc_261_32_A53D7C(, , , , , , , )
  loc_C10001: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10006: FFreeAd var_8C = ""
  loc_C1000D: FFree1Var var_B4 = ""
  loc_C10010: FLdRfVar var_A4
  loc_C10013: LitVarStr var_A0, "DeveImpuMes1"
  loc_C10018: PopAdLdVar
  loc_C10019: FLdRfVar var_90
  loc_C1001C: FLdRfVar var_8C
  loc_C1001F: FLdPr var_88
  loc_C10022: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10027: FLdPr var_8C
  loc_C1002A:  = Me.Fields
  loc_C1002F: FLdPr var_90
  loc_C10032: from_stack_2 = Me.Item(from_stack_1)
  loc_C10037: LitI2_Byte 0
  loc_C10039: FMemLdRf unk_4CFE91
  loc_C1003E: CVarRef
  loc_C10043: LitI2_Byte &HFF
  loc_C10045: FLdZeroAd var_A4
  loc_C10048: CVarAd
  loc_C1004C: PopAdLdVar
  loc_C1004D: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10052: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10057: FFreeAd var_8C = ""
  loc_C1005E: FFree1Var var_B4 = ""
  loc_C10061: FLdRfVar var_A4
  loc_C10064: LitVarStr var_A0, "DeveImpuMes2"
  loc_C10069: PopAdLdVar
  loc_C1006A: FLdRfVar var_90
  loc_C1006D: FLdRfVar var_8C
  loc_C10070: FLdPr var_88
  loc_C10073: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10078: FLdPr var_8C
  loc_C1007B:  = Me.Fields
  loc_C10080: FLdPr var_90
  loc_C10083: from_stack_2 = Me.Item(from_stack_1)
  loc_C10088: LitI2_Byte 0
  loc_C1008A: FMemLdRf unk_4CFE91
  loc_C1008F: CVarRef
  loc_C10094: LitI2_Byte &HFF
  loc_C10096: FLdZeroAd var_A4
  loc_C10099: CVarAd
  loc_C1009D: PopAdLdVar
  loc_C1009E: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C100A3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C100A8: FFreeAd var_8C = ""
  loc_C100AF: FFree1Var var_B4 = ""
  loc_C100B2: FLdRfVar var_A4
  loc_C100B5: LitVarStr var_A0, "DeveImpuMes3"
  loc_C100BA: PopAdLdVar
  loc_C100BB: FLdRfVar var_90
  loc_C100BE: FLdRfVar var_8C
  loc_C100C1: FLdPr var_88
  loc_C100C4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C100C9: FLdPr var_8C
  loc_C100CC:  = Me.Fields
  loc_C100D1: FLdPr var_90
  loc_C100D4: from_stack_2 = Me.Item(from_stack_1)
  loc_C100D9: LitI2_Byte 0
  loc_C100DB: FMemLdRf unk_4CFE91
  loc_C100E0: CVarRef
  loc_C100E5: LitI2_Byte &HFF
  loc_C100E7: FLdZeroAd var_A4
  loc_C100EA: CVarAd
  loc_C100EE: PopAdLdVar
  loc_C100EF: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C100F4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C100F9: FFreeAd var_8C = ""
  loc_C10100: FFree1Var var_B4 = ""
  loc_C10103: FLdRfVar var_A4
  loc_C10106: LitVarStr var_A0, "DeveImpuMes4"
  loc_C1010B: PopAdLdVar
  loc_C1010C: FLdRfVar var_90
  loc_C1010F: FLdRfVar var_8C
  loc_C10112: FLdPr var_88
  loc_C10115: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1011A: FLdPr var_8C
  loc_C1011D:  = Me.Fields
  loc_C10122: FLdPr var_90
  loc_C10125: from_stack_2 = Me.Item(from_stack_1)
  loc_C1012A: LitI2_Byte 0
  loc_C1012C: FMemLdRf unk_4CFE91
  loc_C10131: CVarRef
  loc_C10136: LitI2_Byte &HFF
  loc_C10138: FLdZeroAd var_A4
  loc_C1013B: CVarAd
  loc_C1013F: PopAdLdVar
  loc_C10140: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10145: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1014A: FFreeAd var_8C = ""
  loc_C10151: FFree1Var var_B4 = ""
  loc_C10154: FLdRfVar var_A4
  loc_C10157: LitVarStr var_A0, "DeveImpuMes5"
  loc_C1015C: PopAdLdVar
  loc_C1015D: FLdRfVar var_90
  loc_C10160: FLdRfVar var_8C
  loc_C10163: FLdPr var_88
  loc_C10166: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1016B: FLdPr var_8C
  loc_C1016E:  = Me.Fields
  loc_C10173: FLdPr var_90
  loc_C10176: from_stack_2 = Me.Item(from_stack_1)
  loc_C1017B: LitI2_Byte 0
  loc_C1017D: FMemLdRf unk_4CFE91
  loc_C10182: CVarRef
  loc_C10187: LitI2_Byte &HFF
  loc_C10189: FLdZeroAd var_A4
  loc_C1018C: CVarAd
  loc_C10190: PopAdLdVar
  loc_C10191: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10196: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1019B: FFreeAd var_8C = ""
  loc_C101A2: FFree1Var var_B4 = ""
  loc_C101A5: FLdRfVar var_A4
  loc_C101A8: LitVarStr var_A0, "DeveImpuMes6"
  loc_C101AD: PopAdLdVar
  loc_C101AE: FLdRfVar var_90
  loc_C101B1: FLdRfVar var_8C
  loc_C101B4: FLdPr var_88
  loc_C101B7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C101BC: FLdPr var_8C
  loc_C101BF:  = Me.Fields
  loc_C101C4: FLdPr var_90
  loc_C101C7: from_stack_2 = Me.Item(from_stack_1)
  loc_C101CC: LitI2_Byte 0
  loc_C101CE: FMemLdRf unk_4CFE91
  loc_C101D3: CVarRef
  loc_C101D8: LitI2_Byte &HFF
  loc_C101DA: FLdZeroAd var_A4
  loc_C101DD: CVarAd
  loc_C101E1: PopAdLdVar
  loc_C101E2: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C101E7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C101EC: FFreeAd var_8C = ""
  loc_C101F3: FFree1Var var_B4 = ""
  loc_C101F6: FLdRfVar var_A4
  loc_C101F9: LitVarStr var_A0, "DeveImpuMes7"
  loc_C101FE: PopAdLdVar
  loc_C101FF: FLdRfVar var_90
  loc_C10202: FLdRfVar var_8C
  loc_C10205: FLdPr var_88
  loc_C10208: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1020D: FLdPr var_8C
  loc_C10210:  = Me.Fields
  loc_C10215: FLdPr var_90
  loc_C10218: from_stack_2 = Me.Item(from_stack_1)
  loc_C1021D: LitI2_Byte 0
  loc_C1021F: FMemLdRf unk_4CFE91
  loc_C10224: CVarRef
  loc_C10229: LitI2_Byte &HFF
  loc_C1022B: FLdZeroAd var_A4
  loc_C1022E: CVarAd
  loc_C10232: PopAdLdVar
  loc_C10233: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10238: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1023D: FFreeAd var_8C = ""
  loc_C10244: FFree1Var var_B4 = ""
  loc_C10247: FLdRfVar var_A4
  loc_C1024A: LitVarStr var_A0, "DeveImpuMes8"
  loc_C1024F: PopAdLdVar
  loc_C10250: FLdRfVar var_90
  loc_C10253: FLdRfVar var_8C
  loc_C10256: FLdPr var_88
  loc_C10259: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1025E: FLdPr var_8C
  loc_C10261:  = Me.Fields
  loc_C10266: FLdPr var_90
  loc_C10269: from_stack_2 = Me.Item(from_stack_1)
  loc_C1026E: LitI2_Byte 0
  loc_C10270: FMemLdRf unk_4CFE91
  loc_C10275: CVarRef
  loc_C1027A: LitI2_Byte &HFF
  loc_C1027C: FLdZeroAd var_A4
  loc_C1027F: CVarAd
  loc_C10283: PopAdLdVar
  loc_C10284: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10289: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1028E: FFreeAd var_8C = ""
  loc_C10295: FFree1Var var_B4 = ""
  loc_C10298: FLdRfVar var_A4
  loc_C1029B: LitVarStr var_A0, "DeveImpuMes9"
  loc_C102A0: PopAdLdVar
  loc_C102A1: FLdRfVar var_90
  loc_C102A4: FLdRfVar var_8C
  loc_C102A7: FLdPr var_88
  loc_C102AA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C102AF: FLdPr var_8C
  loc_C102B2:  = Me.Fields
  loc_C102B7: FLdPr var_90
  loc_C102BA: from_stack_2 = Me.Item(from_stack_1)
  loc_C102BF: LitI2_Byte 0
  loc_C102C1: FMemLdRf unk_4CFE91
  loc_C102C6: CVarRef
  loc_C102CB: LitI2_Byte &HFF
  loc_C102CD: FLdZeroAd var_A4
  loc_C102D0: CVarAd
  loc_C102D4: PopAdLdVar
  loc_C102D5: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C102DA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C102DF: FFreeAd var_8C = ""
  loc_C102E6: FFree1Var var_B4 = ""
  loc_C102E9: FLdRfVar var_A4
  loc_C102EC: LitVarStr var_A0, "DeveImpuMes10"
  loc_C102F1: PopAdLdVar
  loc_C102F2: FLdRfVar var_90
  loc_C102F5: FLdRfVar var_8C
  loc_C102F8: FLdPr var_88
  loc_C102FB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10300: FLdPr var_8C
  loc_C10303:  = Me.Fields
  loc_C10308: FLdPr var_90
  loc_C1030B: from_stack_2 = Me.Item(from_stack_1)
  loc_C10310: LitI2_Byte 0
  loc_C10312: FMemLdRf unk_4CFE91
  loc_C10317: CVarRef
  loc_C1031C: LitI2_Byte &HFF
  loc_C1031E: FLdZeroAd var_A4
  loc_C10321: CVarAd
  loc_C10325: PopAdLdVar
  loc_C10326: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C1032B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10330: FFreeAd var_8C = ""
  loc_C10337: FFree1Var var_B4 = ""
  loc_C1033A: FLdRfVar var_A4
  loc_C1033D: LitVarStr var_A0, "DeveImpuMes11"
  loc_C10342: PopAdLdVar
  loc_C10343: FLdRfVar var_90
  loc_C10346: FLdRfVar var_8C
  loc_C10349: FLdPr var_88
  loc_C1034C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10351: FLdPr var_8C
  loc_C10354:  = Me.Fields
  loc_C10359: FLdPr var_90
  loc_C1035C: from_stack_2 = Me.Item(from_stack_1)
  loc_C10361: LitI2_Byte 0
  loc_C10363: FMemLdRf unk_4CFE91
  loc_C10368: CVarRef
  loc_C1036D: LitI2_Byte &HFF
  loc_C1036F: FLdZeroAd var_A4
  loc_C10372: CVarAd
  loc_C10376: PopAdLdVar
  loc_C10377: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C1037C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10381: FFreeAd var_8C = ""
  loc_C10388: FFree1Var var_B4 = ""
  loc_C1038B: FLdRfVar var_A4
  loc_C1038E: LitVarStr var_A0, "DeveImpuMes12"
  loc_C10393: PopAdLdVar
  loc_C10394: FLdRfVar var_90
  loc_C10397: FLdRfVar var_8C
  loc_C1039A: FLdPr var_88
  loc_C1039D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C103A2: FLdPr var_8C
  loc_C103A5:  = Me.Fields
  loc_C103AA: FLdPr var_90
  loc_C103AD: from_stack_2 = Me.Item(from_stack_1)
  loc_C103B2: LitI2_Byte 0
  loc_C103B4: FMemLdRf unk_4CFE91
  loc_C103B9: CVarRef
  loc_C103BE: LitI2_Byte &HFF
  loc_C103C0: FLdZeroAd var_A4
  loc_C103C3: CVarAd
  loc_C103C7: PopAdLdVar
  loc_C103C8: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C103CD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C103D2: FFreeAd var_8C = ""
  loc_C103D9: FFree1Var var_B4 = ""
  loc_C103DC: FLdRfVar var_A4
  loc_C103DF: LitVarStr var_A0, "MapaImpu"
  loc_C103E4: PopAdLdVar
  loc_C103E5: FLdRfVar var_90
  loc_C103E8: FLdRfVar var_8C
  loc_C103EB: FLdPr var_88
  loc_C103EE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C103F3: FLdPr var_8C
  loc_C103F6:  = Me.Fields
  loc_C103FB: FLdPr var_90
  loc_C103FE: from_stack_2 = Me.Item(from_stack_1)
  loc_C10403: LitI2_Byte 0
  loc_C10405: FMemLdRf unk_4CFE91
  loc_C1040A: CVarRef
  loc_C1040F: LitI2_Byte &HFF
  loc_C10411: FLdZeroAd var_A4
  loc_C10414: CVarAd
  loc_C10418: PopAdLdVar
  loc_C10419: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , )
  loc_C1041E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10423: FFreeAd var_8C = ""
  loc_C1042A: FFree1Var var_B4 = ""
  loc_C1042D: FLdRfVar var_A4
  loc_C10430: LitVarStr var_A0, "MapaImpuMes1"
  loc_C10435: PopAdLdVar
  loc_C10436: FLdRfVar var_90
  loc_C10439: FLdRfVar var_8C
  loc_C1043C: FLdPr var_88
  loc_C1043F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10444: FLdPr var_8C
  loc_C10447:  = Me.Fields
  loc_C1044C: FLdPr var_90
  loc_C1044F: from_stack_2 = Me.Item(from_stack_1)
  loc_C10454: LitI2_Byte 0
  loc_C10456: FMemLdRf unk_4CFE91
  loc_C1045B: CVarRef
  loc_C10460: LitI2_Byte &HFF
  loc_C10462: FLdZeroAd var_A4
  loc_C10465: CVarAd
  loc_C10469: PopAdLdVar
  loc_C1046A: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C1046F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10474: FFreeAd var_8C = ""
  loc_C1047B: FFree1Var var_B4 = ""
  loc_C1047E: FLdRfVar var_A4
  loc_C10481: LitVarStr var_A0, "MapaImpuMes2"
  loc_C10486: PopAdLdVar
  loc_C10487: FLdRfVar var_90
  loc_C1048A: FLdRfVar var_8C
  loc_C1048D: FLdPr var_88
  loc_C10490: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10495: FLdPr var_8C
  loc_C10498:  = Me.Fields
  loc_C1049D: FLdPr var_90
  loc_C104A0: from_stack_2 = Me.Item(from_stack_1)
  loc_C104A5: LitI2_Byte 0
  loc_C104A7: FMemLdRf unk_4CFE91
  loc_C104AC: CVarRef
  loc_C104B1: LitI2_Byte &HFF
  loc_C104B3: FLdZeroAd var_A4
  loc_C104B6: CVarAd
  loc_C104BA: PopAdLdVar
  loc_C104BB: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C104C0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C104C5: FFreeAd var_8C = ""
  loc_C104CC: FFree1Var var_B4 = ""
  loc_C104CF: FLdRfVar var_A4
  loc_C104D2: LitVarStr var_A0, "MapaImpuMes3"
  loc_C104D7: PopAdLdVar
  loc_C104D8: FLdRfVar var_90
  loc_C104DB: FLdRfVar var_8C
  loc_C104DE: FLdPr var_88
  loc_C104E1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C104E6: FLdPr var_8C
  loc_C104E9:  = Me.Fields
  loc_C104EE: FLdPr var_90
  loc_C104F1: from_stack_2 = Me.Item(from_stack_1)
  loc_C104F6: LitI2_Byte 0
  loc_C104F8: FMemLdRf unk_4CFE91
  loc_C104FD: CVarRef
  loc_C10502: LitI2_Byte &HFF
  loc_C10504: FLdZeroAd var_A4
  loc_C10507: CVarAd
  loc_C1050B: PopAdLdVar
  loc_C1050C: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10511: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10516: FFreeAd var_8C = ""
  loc_C1051D: FFree1Var var_B4 = ""
  loc_C10520: FLdRfVar var_A4
  loc_C10523: LitVarStr var_A0, "MapaImpuMes4"
  loc_C10528: PopAdLdVar
  loc_C10529: FLdRfVar var_90
  loc_C1052C: FLdRfVar var_8C
  loc_C1052F: FLdPr var_88
  loc_C10532: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10537: FLdPr var_8C
  loc_C1053A:  = Me.Fields
  loc_C1053F: FLdPr var_90
  loc_C10542: from_stack_2 = Me.Item(from_stack_1)
  loc_C10547: LitI2_Byte 0
  loc_C10549: FMemLdRf unk_4CFE91
  loc_C1054E: CVarRef
  loc_C10553: LitI2_Byte &HFF
  loc_C10555: FLdZeroAd var_A4
  loc_C10558: CVarAd
  loc_C1055C: PopAdLdVar
  loc_C1055D: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10562: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10567: FFreeAd var_8C = ""
  loc_C1056E: FFree1Var var_B4 = ""
  loc_C10571: FLdRfVar var_A4
  loc_C10574: LitVarStr var_A0, "MapaImpuMes5"
  loc_C10579: PopAdLdVar
  loc_C1057A: FLdRfVar var_90
  loc_C1057D: FLdRfVar var_8C
  loc_C10580: FLdPr var_88
  loc_C10583: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10588: FLdPr var_8C
  loc_C1058B:  = Me.Fields
  loc_C10590: FLdPr var_90
  loc_C10593: from_stack_2 = Me.Item(from_stack_1)
  loc_C10598: LitI2_Byte 0
  loc_C1059A: FMemLdRf unk_4CFE91
  loc_C1059F: CVarRef
  loc_C105A4: LitI2_Byte &HFF
  loc_C105A6: FLdZeroAd var_A4
  loc_C105A9: CVarAd
  loc_C105AD: PopAdLdVar
  loc_C105AE: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C105B3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C105B8: FFreeAd var_8C = ""
  loc_C105BF: FFree1Var var_B4 = ""
  loc_C105C2: FLdRfVar var_A4
  loc_C105C5: LitVarStr var_A0, "MapaImpuMes6"
  loc_C105CA: PopAdLdVar
  loc_C105CB: FLdRfVar var_90
  loc_C105CE: FLdRfVar var_8C
  loc_C105D1: FLdPr var_88
  loc_C105D4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C105D9: FLdPr var_8C
  loc_C105DC:  = Me.Fields
  loc_C105E1: FLdPr var_90
  loc_C105E4: from_stack_2 = Me.Item(from_stack_1)
  loc_C105E9: LitI2_Byte 0
  loc_C105EB: FMemLdRf unk_4CFE91
  loc_C105F0: CVarRef
  loc_C105F5: LitI2_Byte &HFF
  loc_C105F7: FLdZeroAd var_A4
  loc_C105FA: CVarAd
  loc_C105FE: PopAdLdVar
  loc_C105FF: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10604: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10609: FFreeAd var_8C = ""
  loc_C10610: FFree1Var var_B4 = ""
  loc_C10613: FLdRfVar var_A4
  loc_C10616: LitVarStr var_A0, "MapaImpuMes7"
  loc_C1061B: PopAdLdVar
  loc_C1061C: FLdRfVar var_90
  loc_C1061F: FLdRfVar var_8C
  loc_C10622: FLdPr var_88
  loc_C10625: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1062A: FLdPr var_8C
  loc_C1062D:  = Me.Fields
  loc_C10632: FLdPr var_90
  loc_C10635: from_stack_2 = Me.Item(from_stack_1)
  loc_C1063A: LitI2_Byte 0
  loc_C1063C: FMemLdRf unk_4CFE91
  loc_C10641: CVarRef
  loc_C10646: LitI2_Byte &HFF
  loc_C10648: FLdZeroAd var_A4
  loc_C1064B: CVarAd
  loc_C1064F: PopAdLdVar
  loc_C10650: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10655: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1065A: FFreeAd var_8C = ""
  loc_C10661: FFree1Var var_B4 = ""
  loc_C10664: FLdRfVar var_A4
  loc_C10667: LitVarStr var_A0, "MapaImpuMes8"
  loc_C1066C: PopAdLdVar
  loc_C1066D: FLdRfVar var_90
  loc_C10670: FLdRfVar var_8C
  loc_C10673: FLdPr var_88
  loc_C10676: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1067B: FLdPr var_8C
  loc_C1067E:  = Me.Fields
  loc_C10683: FLdPr var_90
  loc_C10686: from_stack_2 = Me.Item(from_stack_1)
  loc_C1068B: LitI2_Byte 0
  loc_C1068D: FMemLdRf unk_4CFE91
  loc_C10692: CVarRef
  loc_C10697: LitI2_Byte &HFF
  loc_C10699: FLdZeroAd var_A4
  loc_C1069C: CVarAd
  loc_C106A0: PopAdLdVar
  loc_C106A1: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C106A6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C106AB: FFreeAd var_8C = ""
  loc_C106B2: FFree1Var var_B4 = ""
  loc_C106B5: FLdRfVar var_A4
  loc_C106B8: LitVarStr var_A0, "MapaImpuMes9"
  loc_C106BD: PopAdLdVar
  loc_C106BE: FLdRfVar var_90
  loc_C106C1: FLdRfVar var_8C
  loc_C106C4: FLdPr var_88
  loc_C106C7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C106CC: FLdPr var_8C
  loc_C106CF:  = Me.Fields
  loc_C106D4: FLdPr var_90
  loc_C106D7: from_stack_2 = Me.Item(from_stack_1)
  loc_C106DC: LitI2_Byte 0
  loc_C106DE: FMemLdRf unk_4CFE91
  loc_C106E3: CVarRef
  loc_C106E8: LitI2_Byte &HFF
  loc_C106EA: FLdZeroAd var_A4
  loc_C106ED: CVarAd
  loc_C106F1: PopAdLdVar
  loc_C106F2: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C106F7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C106FC: FFreeAd var_8C = ""
  loc_C10703: FFree1Var var_B4 = ""
  loc_C10706: FLdRfVar var_A4
  loc_C10709: LitVarStr var_A0, "MapaImpuMes10"
  loc_C1070E: PopAdLdVar
  loc_C1070F: FLdRfVar var_90
  loc_C10712: FLdRfVar var_8C
  loc_C10715: FLdPr var_88
  loc_C10718: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1071D: FLdPr var_8C
  loc_C10720:  = Me.Fields
  loc_C10725: FLdPr var_90
  loc_C10728: from_stack_2 = Me.Item(from_stack_1)
  loc_C1072D: LitI2_Byte 0
  loc_C1072F: FMemLdRf unk_4CFE91
  loc_C10734: CVarRef
  loc_C10739: LitI2_Byte &HFF
  loc_C1073B: FLdZeroAd var_A4
  loc_C1073E: CVarAd
  loc_C10742: PopAdLdVar
  loc_C10743: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10748: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1074D: FFreeAd var_8C = ""
  loc_C10754: FFree1Var var_B4 = ""
  loc_C10757: FLdRfVar var_A4
  loc_C1075A: LitVarStr var_A0, "MapaImpuMes11"
  loc_C1075F: PopAdLdVar
  loc_C10760: FLdRfVar var_90
  loc_C10763: FLdRfVar var_8C
  loc_C10766: FLdPr var_88
  loc_C10769: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1076E: FLdPr var_8C
  loc_C10771:  = Me.Fields
  loc_C10776: FLdPr var_90
  loc_C10779: from_stack_2 = Me.Item(from_stack_1)
  loc_C1077E: LitI2_Byte 0
  loc_C10780: FMemLdRf unk_4CFE91
  loc_C10785: CVarRef
  loc_C1078A: LitI2_Byte &HFF
  loc_C1078C: FLdZeroAd var_A4
  loc_C1078F: CVarAd
  loc_C10793: PopAdLdVar
  loc_C10794: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10799: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1079E: FFreeAd var_8C = ""
  loc_C107A5: FFree1Var var_B4 = ""
  loc_C107A8: FLdRfVar var_A4
  loc_C107AB: LitVarStr var_A0, "MapaImpuMes12"
  loc_C107B0: PopAdLdVar
  loc_C107B1: FLdRfVar var_90
  loc_C107B4: FLdRfVar var_8C
  loc_C107B7: FLdPr var_88
  loc_C107BA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C107BF: FLdPr var_8C
  loc_C107C2:  = Me.Fields
  loc_C107C7: FLdPr var_90
  loc_C107CA: from_stack_2 = Me.Item(from_stack_1)
  loc_C107CF: LitI2_Byte 0
  loc_C107D1: FMemLdRf unk_4CFE91
  loc_C107D6: CVarRef
  loc_C107DB: LitI2_Byte &HFF
  loc_C107DD: FLdZeroAd var_A4
  loc_C107E0: CVarAd
  loc_C107E4: PopAdLdVar
  loc_C107E5: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C107EA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C107EF: FFreeAd var_8C = ""
  loc_C107F6: FFree1Var var_B4 = ""
  loc_C107F9: FLdRfVar var_B4
  loc_C107FC: FLdRfVar var_A4
  loc_C107FF: LitVarStr var_A0, "DefiImpu"
  loc_C10804: PopAdLdVar
  loc_C10805: FLdRfVar var_90
  loc_C10808: FLdRfVar var_8C
  loc_C1080B: FLdPr var_88
  loc_C1080E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10813: FLdPr var_8C
  loc_C10816:  = Me.Fields
  loc_C1081B: FLdPr var_90
  loc_C1081E: from_stack_2 = Me.Item(from_stack_1)
  loc_C10823: FLdPr var_A4
  loc_C10826:  = Me.Value
  loc_C1082B: FLdRfVar var_E0
  loc_C1082E: FLdRfVar var_D0
  loc_C10831: LitVarStr var_C4, "DeveImpu"
  loc_C10836: PopAdLdVar
  loc_C10837: FLdRfVar var_CC
  loc_C1083A: FLdRfVar var_C8
  loc_C1083D: FLdPr var_88
  loc_C10840: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10845: FLdPr var_C8
  loc_C10848:  = Me.Fields
  loc_C1084D: FLdPr var_CC
  loc_C10850: from_stack_2 = Me.Item(from_stack_1)
  loc_C10855: FLdPr var_D0
  loc_C10858:  = Me.Value
  loc_C1085D: LitI2_Byte 0
  loc_C1085F: FMemLdRf unk_4CFE91
  loc_C10864: CVarRef
  loc_C10869: LitI2_Byte &HFF
  loc_C1086B: FLdRfVar var_B4
  loc_C1086E: FnCDblVar
  loc_C10870: FLdRfVar var_E0
  loc_C10873: FnCDblVar
  loc_C10875: SubR4
  loc_C10876: CVarR8
  loc_C1087A: PopAdLdVar
  loc_C1087B: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , )
  loc_C10880: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10885: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10894: FFreeVar var_B4 = ""
  loc_C1089B: FLdRfVar var_B4
  loc_C1089E: FLdRfVar var_A4
  loc_C108A1: LitVarStr var_A0, "DefiImpuMes1"
  loc_C108A6: PopAdLdVar
  loc_C108A7: FLdRfVar var_90
  loc_C108AA: FLdRfVar var_8C
  loc_C108AD: FLdPr var_88
  loc_C108B0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C108B5: FLdPr var_8C
  loc_C108B8:  = Me.Fields
  loc_C108BD: FLdPr var_90
  loc_C108C0: from_stack_2 = Me.Item(from_stack_1)
  loc_C108C5: FLdPr var_A4
  loc_C108C8:  = Me.Value
  loc_C108CD: FLdRfVar var_E0
  loc_C108D0: FLdRfVar var_D0
  loc_C108D3: LitVarStr var_C4, "DeveImpuMes1"
  loc_C108D8: PopAdLdVar
  loc_C108D9: FLdRfVar var_CC
  loc_C108DC: FLdRfVar var_C8
  loc_C108DF: FLdPr var_88
  loc_C108E2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C108E7: FLdPr var_C8
  loc_C108EA:  = Me.Fields
  loc_C108EF: FLdPr var_CC
  loc_C108F2: from_stack_2 = Me.Item(from_stack_1)
  loc_C108F7: FLdPr var_D0
  loc_C108FA:  = Me.Value
  loc_C108FF: LitI2_Byte 0
  loc_C10901: FMemLdRf unk_4CFE91
  loc_C10906: CVarRef
  loc_C1090B: LitI2_Byte &HFF
  loc_C1090D: FLdRfVar var_B4
  loc_C10910: FnCDblVar
  loc_C10912: FLdRfVar var_E0
  loc_C10915: FnCDblVar
  loc_C10917: SubR4
  loc_C10918: CVarR8
  loc_C1091C: PopAdLdVar
  loc_C1091D: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10922: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10927: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10936: FFreeVar var_B4 = ""
  loc_C1093D: FLdRfVar var_B4
  loc_C10940: FLdRfVar var_A4
  loc_C10943: LitVarStr var_A0, "DefiImpuMes2"
  loc_C10948: PopAdLdVar
  loc_C10949: FLdRfVar var_90
  loc_C1094C: FLdRfVar var_8C
  loc_C1094F: FLdPr var_88
  loc_C10952: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10957: FLdPr var_8C
  loc_C1095A:  = Me.Fields
  loc_C1095F: FLdPr var_90
  loc_C10962: from_stack_2 = Me.Item(from_stack_1)
  loc_C10967: FLdPr var_A4
  loc_C1096A:  = Me.Value
  loc_C1096F: FLdRfVar var_E0
  loc_C10972: FLdRfVar var_D0
  loc_C10975: LitVarStr var_C4, "DeveImpuMes2"
  loc_C1097A: PopAdLdVar
  loc_C1097B: FLdRfVar var_CC
  loc_C1097E: FLdRfVar var_C8
  loc_C10981: FLdPr var_88
  loc_C10984: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10989: FLdPr var_C8
  loc_C1098C:  = Me.Fields
  loc_C10991: FLdPr var_CC
  loc_C10994: from_stack_2 = Me.Item(from_stack_1)
  loc_C10999: FLdPr var_D0
  loc_C1099C:  = Me.Value
  loc_C109A1: LitI2_Byte 0
  loc_C109A3: FMemLdRf unk_4CFE91
  loc_C109A8: CVarRef
  loc_C109AD: LitI2_Byte &HFF
  loc_C109AF: FLdRfVar var_B4
  loc_C109B2: FnCDblVar
  loc_C109B4: FLdRfVar var_E0
  loc_C109B7: FnCDblVar
  loc_C109B9: SubR4
  loc_C109BA: CVarR8
  loc_C109BE: PopAdLdVar
  loc_C109BF: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C109C4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C109C9: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C109D8: FFreeVar var_B4 = ""
  loc_C109DF: FLdRfVar var_B4
  loc_C109E2: FLdRfVar var_A4
  loc_C109E5: LitVarStr var_A0, "DefiImpuMes3"
  loc_C109EA: PopAdLdVar
  loc_C109EB: FLdRfVar var_90
  loc_C109EE: FLdRfVar var_8C
  loc_C109F1: FLdPr var_88
  loc_C109F4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C109F9: FLdPr var_8C
  loc_C109FC:  = Me.Fields
  loc_C10A01: FLdPr var_90
  loc_C10A04: from_stack_2 = Me.Item(from_stack_1)
  loc_C10A09: FLdPr var_A4
  loc_C10A0C:  = Me.Value
  loc_C10A11: FLdRfVar var_E0
  loc_C10A14: FLdRfVar var_D0
  loc_C10A17: LitVarStr var_C4, "DeveImpuMes3"
  loc_C10A1C: PopAdLdVar
  loc_C10A1D: FLdRfVar var_CC
  loc_C10A20: FLdRfVar var_C8
  loc_C10A23: FLdPr var_88
  loc_C10A26: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10A2B: FLdPr var_C8
  loc_C10A2E:  = Me.Fields
  loc_C10A33: FLdPr var_CC
  loc_C10A36: from_stack_2 = Me.Item(from_stack_1)
  loc_C10A3B: FLdPr var_D0
  loc_C10A3E:  = Me.Value
  loc_C10A43: LitI2_Byte 0
  loc_C10A45: FMemLdRf unk_4CFE91
  loc_C10A4A: CVarRef
  loc_C10A4F: LitI2_Byte &HFF
  loc_C10A51: FLdRfVar var_B4
  loc_C10A54: FnCDblVar
  loc_C10A56: FLdRfVar var_E0
  loc_C10A59: FnCDblVar
  loc_C10A5B: SubR4
  loc_C10A5C: CVarR8
  loc_C10A60: PopAdLdVar
  loc_C10A61: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10A66: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10A6B: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10A7A: FFreeVar var_B4 = ""
  loc_C10A81: FLdRfVar var_B4
  loc_C10A84: FLdRfVar var_A4
  loc_C10A87: LitVarStr var_A0, "DefiImpuMes4"
  loc_C10A8C: PopAdLdVar
  loc_C10A8D: FLdRfVar var_90
  loc_C10A90: FLdRfVar var_8C
  loc_C10A93: FLdPr var_88
  loc_C10A96: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10A9B: FLdPr var_8C
  loc_C10A9E:  = Me.Fields
  loc_C10AA3: FLdPr var_90
  loc_C10AA6: from_stack_2 = Me.Item(from_stack_1)
  loc_C10AAB: FLdPr var_A4
  loc_C10AAE:  = Me.Value
  loc_C10AB3: FLdRfVar var_E0
  loc_C10AB6: FLdRfVar var_D0
  loc_C10AB9: LitVarStr var_C4, "DeveImpuMes4"
  loc_C10ABE: PopAdLdVar
  loc_C10ABF: FLdRfVar var_CC
  loc_C10AC2: FLdRfVar var_C8
  loc_C10AC5: FLdPr var_88
  loc_C10AC8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10ACD: FLdPr var_C8
  loc_C10AD0:  = Me.Fields
  loc_C10AD5: FLdPr var_CC
  loc_C10AD8: from_stack_2 = Me.Item(from_stack_1)
  loc_C10ADD: FLdPr var_D0
  loc_C10AE0:  = Me.Value
  loc_C10AE5: LitI2_Byte 0
  loc_C10AE7: FMemLdRf unk_4CFE91
  loc_C10AEC: CVarRef
  loc_C10AF1: LitI2_Byte &HFF
  loc_C10AF3: FLdRfVar var_B4
  loc_C10AF6: FnCDblVar
  loc_C10AF8: FLdRfVar var_E0
  loc_C10AFB: FnCDblVar
  loc_C10AFD: SubR4
  loc_C10AFE: CVarR8
  loc_C10B02: PopAdLdVar
  loc_C10B03: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10B08: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10B0D: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10B1C: FFreeVar var_B4 = ""
  loc_C10B23: FLdRfVar var_B4
  loc_C10B26: FLdRfVar var_A4
  loc_C10B29: LitVarStr var_A0, "DefiImpuMes5"
  loc_C10B2E: PopAdLdVar
  loc_C10B2F: FLdRfVar var_90
  loc_C10B32: FLdRfVar var_8C
  loc_C10B35: FLdPr var_88
  loc_C10B38: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10B3D: FLdPr var_8C
  loc_C10B40:  = Me.Fields
  loc_C10B45: FLdPr var_90
  loc_C10B48: from_stack_2 = Me.Item(from_stack_1)
  loc_C10B4D: FLdPr var_A4
  loc_C10B50:  = Me.Value
  loc_C10B55: FLdRfVar var_E0
  loc_C10B58: FLdRfVar var_D0
  loc_C10B5B: LitVarStr var_C4, "DeveImpuMes5"
  loc_C10B60: PopAdLdVar
  loc_C10B61: FLdRfVar var_CC
  loc_C10B64: FLdRfVar var_C8
  loc_C10B67: FLdPr var_88
  loc_C10B6A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10B6F: FLdPr var_C8
  loc_C10B72:  = Me.Fields
  loc_C10B77: FLdPr var_CC
  loc_C10B7A: from_stack_2 = Me.Item(from_stack_1)
  loc_C10B7F: FLdPr var_D0
  loc_C10B82:  = Me.Value
  loc_C10B87: LitI2_Byte 0
  loc_C10B89: FMemLdRf unk_4CFE91
  loc_C10B8E: CVarRef
  loc_C10B93: LitI2_Byte &HFF
  loc_C10B95: FLdRfVar var_B4
  loc_C10B98: FnCDblVar
  loc_C10B9A: FLdRfVar var_E0
  loc_C10B9D: FnCDblVar
  loc_C10B9F: SubR4
  loc_C10BA0: CVarR8
  loc_C10BA4: PopAdLdVar
  loc_C10BA5: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10BAA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10BAF: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10BBE: FFreeVar var_B4 = ""
  loc_C10BC5: FLdRfVar var_B4
  loc_C10BC8: FLdRfVar var_A4
  loc_C10BCB: LitVarStr var_A0, "DefiImpuMes6"
  loc_C10BD0: PopAdLdVar
  loc_C10BD1: FLdRfVar var_90
  loc_C10BD4: FLdRfVar var_8C
  loc_C10BD7: FLdPr var_88
  loc_C10BDA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10BDF: FLdPr var_8C
  loc_C10BE2:  = Me.Fields
  loc_C10BE7: FLdPr var_90
  loc_C10BEA: from_stack_2 = Me.Item(from_stack_1)
  loc_C10BEF: FLdPr var_A4
  loc_C10BF2:  = Me.Value
  loc_C10BF7: FLdRfVar var_E0
  loc_C10BFA: FLdRfVar var_D0
  loc_C10BFD: LitVarStr var_C4, "DeveImpuMes6"
  loc_C10C02: PopAdLdVar
  loc_C10C03: FLdRfVar var_CC
  loc_C10C06: FLdRfVar var_C8
  loc_C10C09: FLdPr var_88
  loc_C10C0C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10C11: FLdPr var_C8
  loc_C10C14:  = Me.Fields
  loc_C10C19: FLdPr var_CC
  loc_C10C1C: from_stack_2 = Me.Item(from_stack_1)
  loc_C10C21: FLdPr var_D0
  loc_C10C24:  = Me.Value
  loc_C10C29: LitI2_Byte 0
  loc_C10C2B: FMemLdRf unk_4CFE91
  loc_C10C30: CVarRef
  loc_C10C35: LitI2_Byte &HFF
  loc_C10C37: FLdRfVar var_B4
  loc_C10C3A: FnCDblVar
  loc_C10C3C: FLdRfVar var_E0
  loc_C10C3F: FnCDblVar
  loc_C10C41: SubR4
  loc_C10C42: CVarR8
  loc_C10C46: PopAdLdVar
  loc_C10C47: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10C4C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10C51: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10C60: FFreeVar var_B4 = ""
  loc_C10C67: FLdRfVar var_B4
  loc_C10C6A: FLdRfVar var_A4
  loc_C10C6D: LitVarStr var_A0, "DefiImpuMes7"
  loc_C10C72: PopAdLdVar
  loc_C10C73: FLdRfVar var_90
  loc_C10C76: FLdRfVar var_8C
  loc_C10C79: FLdPr var_88
  loc_C10C7C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10C81: FLdPr var_8C
  loc_C10C84:  = Me.Fields
  loc_C10C89: FLdPr var_90
  loc_C10C8C: from_stack_2 = Me.Item(from_stack_1)
  loc_C10C91: FLdPr var_A4
  loc_C10C94:  = Me.Value
  loc_C10C99: FLdRfVar var_E0
  loc_C10C9C: FLdRfVar var_D0
  loc_C10C9F: LitVarStr var_C4, "DeveImpuMes7"
  loc_C10CA4: PopAdLdVar
  loc_C10CA5: FLdRfVar var_CC
  loc_C10CA8: FLdRfVar var_C8
  loc_C10CAB: FLdPr var_88
  loc_C10CAE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10CB3: FLdPr var_C8
  loc_C10CB6:  = Me.Fields
  loc_C10CBB: FLdPr var_CC
  loc_C10CBE: from_stack_2 = Me.Item(from_stack_1)
  loc_C10CC3: FLdPr var_D0
  loc_C10CC6:  = Me.Value
  loc_C10CCB: LitI2_Byte 0
  loc_C10CCD: FMemLdRf unk_4CFE91
  loc_C10CD2: CVarRef
  loc_C10CD7: LitI2_Byte &HFF
  loc_C10CD9: FLdRfVar var_B4
  loc_C10CDC: FnCDblVar
  loc_C10CDE: FLdRfVar var_E0
  loc_C10CE1: FnCDblVar
  loc_C10CE3: SubR4
  loc_C10CE4: CVarR8
  loc_C10CE8: PopAdLdVar
  loc_C10CE9: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10CEE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10CF3: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10D02: FFreeVar var_B4 = ""
  loc_C10D09: FLdRfVar var_B4
  loc_C10D0C: FLdRfVar var_A4
  loc_C10D0F: LitVarStr var_A0, "DefiImpuMes8"
  loc_C10D14: PopAdLdVar
  loc_C10D15: FLdRfVar var_90
  loc_C10D18: FLdRfVar var_8C
  loc_C10D1B: FLdPr var_88
  loc_C10D1E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10D23: FLdPr var_8C
  loc_C10D26:  = Me.Fields
  loc_C10D2B: FLdPr var_90
  loc_C10D2E: from_stack_2 = Me.Item(from_stack_1)
  loc_C10D33: FLdPr var_A4
  loc_C10D36:  = Me.Value
  loc_C10D3B: FLdRfVar var_E0
  loc_C10D3E: FLdRfVar var_D0
  loc_C10D41: LitVarStr var_C4, "DeveImpuMes8"
  loc_C10D46: PopAdLdVar
  loc_C10D47: FLdRfVar var_CC
  loc_C10D4A: FLdRfVar var_C8
  loc_C10D4D: FLdPr var_88
  loc_C10D50: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10D55: FLdPr var_C8
  loc_C10D58:  = Me.Fields
  loc_C10D5D: FLdPr var_CC
  loc_C10D60: from_stack_2 = Me.Item(from_stack_1)
  loc_C10D65: FLdPr var_D0
  loc_C10D68:  = Me.Value
  loc_C10D6D: LitI2_Byte 0
  loc_C10D6F: FMemLdRf unk_4CFE91
  loc_C10D74: CVarRef
  loc_C10D79: LitI2_Byte &HFF
  loc_C10D7B: FLdRfVar var_B4
  loc_C10D7E: FnCDblVar
  loc_C10D80: FLdRfVar var_E0
  loc_C10D83: FnCDblVar
  loc_C10D85: SubR4
  loc_C10D86: CVarR8
  loc_C10D8A: PopAdLdVar
  loc_C10D8B: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10D90: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10D95: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10DA4: FFreeVar var_B4 = ""
  loc_C10DAB: FLdRfVar var_B4
  loc_C10DAE: FLdRfVar var_A4
  loc_C10DB1: LitVarStr var_A0, "DefiImpuMes9"
  loc_C10DB6: PopAdLdVar
  loc_C10DB7: FLdRfVar var_90
  loc_C10DBA: FLdRfVar var_8C
  loc_C10DBD: FLdPr var_88
  loc_C10DC0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10DC5: FLdPr var_8C
  loc_C10DC8:  = Me.Fields
  loc_C10DCD: FLdPr var_90
  loc_C10DD0: from_stack_2 = Me.Item(from_stack_1)
  loc_C10DD5: FLdPr var_A4
  loc_C10DD8:  = Me.Value
  loc_C10DDD: FLdRfVar var_E0
  loc_C10DE0: FLdRfVar var_D0
  loc_C10DE3: LitVarStr var_C4, "DeveImpuMes9"
  loc_C10DE8: PopAdLdVar
  loc_C10DE9: FLdRfVar var_CC
  loc_C10DEC: FLdRfVar var_C8
  loc_C10DEF: FLdPr var_88
  loc_C10DF2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10DF7: FLdPr var_C8
  loc_C10DFA:  = Me.Fields
  loc_C10DFF: FLdPr var_CC
  loc_C10E02: from_stack_2 = Me.Item(from_stack_1)
  loc_C10E07: FLdPr var_D0
  loc_C10E0A:  = Me.Value
  loc_C10E0F: LitI2_Byte 0
  loc_C10E11: FMemLdRf unk_4CFE91
  loc_C10E16: CVarRef
  loc_C10E1B: LitI2_Byte &HFF
  loc_C10E1D: FLdRfVar var_B4
  loc_C10E20: FnCDblVar
  loc_C10E22: FLdRfVar var_E0
  loc_C10E25: FnCDblVar
  loc_C10E27: SubR4
  loc_C10E28: CVarR8
  loc_C10E2C: PopAdLdVar
  loc_C10E2D: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10E32: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10E37: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10E46: FFreeVar var_B4 = ""
  loc_C10E4D: FLdRfVar var_B4
  loc_C10E50: FLdRfVar var_A4
  loc_C10E53: LitVarStr var_A0, "DefiImpuMes10"
  loc_C10E58: PopAdLdVar
  loc_C10E59: FLdRfVar var_90
  loc_C10E5C: FLdRfVar var_8C
  loc_C10E5F: FLdPr var_88
  loc_C10E62: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10E67: FLdPr var_8C
  loc_C10E6A:  = Me.Fields
  loc_C10E6F: FLdPr var_90
  loc_C10E72: from_stack_2 = Me.Item(from_stack_1)
  loc_C10E77: FLdPr var_A4
  loc_C10E7A:  = Me.Value
  loc_C10E7F: FLdRfVar var_E0
  loc_C10E82: FLdRfVar var_D0
  loc_C10E85: LitVarStr var_C4, "DeveImpuMes10"
  loc_C10E8A: PopAdLdVar
  loc_C10E8B: FLdRfVar var_CC
  loc_C10E8E: FLdRfVar var_C8
  loc_C10E91: FLdPr var_88
  loc_C10E94: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10E99: FLdPr var_C8
  loc_C10E9C:  = Me.Fields
  loc_C10EA1: FLdPr var_CC
  loc_C10EA4: from_stack_2 = Me.Item(from_stack_1)
  loc_C10EA9: FLdPr var_D0
  loc_C10EAC:  = Me.Value
  loc_C10EB1: LitI2_Byte 0
  loc_C10EB3: FMemLdRf unk_4CFE91
  loc_C10EB8: CVarRef
  loc_C10EBD: LitI2_Byte &HFF
  loc_C10EBF: FLdRfVar var_B4
  loc_C10EC2: FnCDblVar
  loc_C10EC4: FLdRfVar var_E0
  loc_C10EC7: FnCDblVar
  loc_C10EC9: SubR4
  loc_C10ECA: CVarR8
  loc_C10ECE: PopAdLdVar
  loc_C10ECF: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10ED4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10ED9: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10EE8: FFreeVar var_B4 = ""
  loc_C10EEF: FLdRfVar var_B4
  loc_C10EF2: FLdRfVar var_A4
  loc_C10EF5: LitVarStr var_A0, "DefiImpuMes11"
  loc_C10EFA: PopAdLdVar
  loc_C10EFB: FLdRfVar var_90
  loc_C10EFE: FLdRfVar var_8C
  loc_C10F01: FLdPr var_88
  loc_C10F04: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10F09: FLdPr var_8C
  loc_C10F0C:  = Me.Fields
  loc_C10F11: FLdPr var_90
  loc_C10F14: from_stack_2 = Me.Item(from_stack_1)
  loc_C10F19: FLdPr var_A4
  loc_C10F1C:  = Me.Value
  loc_C10F21: FLdRfVar var_E0
  loc_C10F24: FLdRfVar var_D0
  loc_C10F27: LitVarStr var_C4, "DeveImpuMes11"
  loc_C10F2C: PopAdLdVar
  loc_C10F2D: FLdRfVar var_CC
  loc_C10F30: FLdRfVar var_C8
  loc_C10F33: FLdPr var_88
  loc_C10F36: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10F3B: FLdPr var_C8
  loc_C10F3E:  = Me.Fields
  loc_C10F43: FLdPr var_CC
  loc_C10F46: from_stack_2 = Me.Item(from_stack_1)
  loc_C10F4B: FLdPr var_D0
  loc_C10F4E:  = Me.Value
  loc_C10F53: LitI2_Byte 0
  loc_C10F55: FMemLdRf unk_4CFE91
  loc_C10F5A: CVarRef
  loc_C10F5F: LitI2_Byte &HFF
  loc_C10F61: FLdRfVar var_B4
  loc_C10F64: FnCDblVar
  loc_C10F66: FLdRfVar var_E0
  loc_C10F69: FnCDblVar
  loc_C10F6B: SubR4
  loc_C10F6C: CVarR8
  loc_C10F70: PopAdLdVar
  loc_C10F71: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C10F76: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C10F7B: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C10F8A: FFreeVar var_B4 = ""
  loc_C10F91: FLdRfVar var_B4
  loc_C10F94: FLdRfVar var_A4
  loc_C10F97: LitVarStr var_A0, "DefiImpuMes12"
  loc_C10F9C: PopAdLdVar
  loc_C10F9D: FLdRfVar var_90
  loc_C10FA0: FLdRfVar var_8C
  loc_C10FA3: FLdPr var_88
  loc_C10FA6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10FAB: FLdPr var_8C
  loc_C10FAE:  = Me.Fields
  loc_C10FB3: FLdPr var_90
  loc_C10FB6: from_stack_2 = Me.Item(from_stack_1)
  loc_C10FBB: FLdPr var_A4
  loc_C10FBE:  = Me.Value
  loc_C10FC3: FLdRfVar var_E0
  loc_C10FC6: FLdRfVar var_D0
  loc_C10FC9: LitVarStr var_C4, "DeveImpuMes12"
  loc_C10FCE: PopAdLdVar
  loc_C10FCF: FLdRfVar var_CC
  loc_C10FD2: FLdRfVar var_C8
  loc_C10FD5: FLdPr var_88
  loc_C10FD8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C10FDD: FLdPr var_C8
  loc_C10FE0:  = Me.Fields
  loc_C10FE5: FLdPr var_CC
  loc_C10FE8: from_stack_2 = Me.Item(from_stack_1)
  loc_C10FED: FLdPr var_D0
  loc_C10FF0:  = Me.Value
  loc_C10FF5: LitI2_Byte 0
  loc_C10FF7: FMemLdRf unk_4CFE91
  loc_C10FFC: CVarRef
  loc_C11001: LitI2_Byte &HFF
  loc_C11003: FLdRfVar var_B4
  loc_C11006: FnCDblVar
  loc_C11008: FLdRfVar var_E0
  loc_C1100B: FnCDblVar
  loc_C1100D: SubR4
  loc_C1100E: CVarR8
  loc_C11012: PopAdLdVar
  loc_C11013: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C11018: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1101D: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C1102C: FFreeVar var_B4 = ""
  loc_C11033: FLdRfVar var_A4
  loc_C11036: LitVarStr var_A0, "PagaImpu"
  loc_C1103B: PopAdLdVar
  loc_C1103C: FLdRfVar var_90
  loc_C1103F: FLdRfVar var_8C
  loc_C11042: FLdPr var_88
  loc_C11045: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1104A: FLdPr var_8C
  loc_C1104D:  = Me.Fields
  loc_C11052: FLdPr var_90
  loc_C11055: from_stack_2 = Me.Item(from_stack_1)
  loc_C1105A: LitI2_Byte 0
  loc_C1105C: FMemLdRf unk_4CFE91
  loc_C11061: CVarRef
  loc_C11066: LitI2_Byte &HFF
  loc_C11068: FLdZeroAd var_A4
  loc_C1106B: CVarAd
  loc_C1106F: PopAdLdVar
  loc_C11070: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , )
  loc_C11075: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1107A: FFreeAd var_8C = ""
  loc_C11081: FFree1Var var_B4 = ""
  loc_C11084: FLdRfVar var_A4
  loc_C11087: LitVarStr var_A0, "PagaImpuMes1"
  loc_C1108C: PopAdLdVar
  loc_C1108D: FLdRfVar var_90
  loc_C11090: FLdRfVar var_8C
  loc_C11093: FLdPr var_88
  loc_C11096: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1109B: FLdPr var_8C
  loc_C1109E:  = Me.Fields
  loc_C110A3: FLdPr var_90
  loc_C110A6: from_stack_2 = Me.Item(from_stack_1)
  loc_C110AB: LitI2_Byte 0
  loc_C110AD: FMemLdRf unk_4CFE91
  loc_C110B2: CVarRef
  loc_C110B7: LitI2_Byte &HFF
  loc_C110B9: FLdZeroAd var_A4
  loc_C110BC: CVarAd
  loc_C110C0: PopAdLdVar
  loc_C110C1: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C110C6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C110CB: FFreeAd var_8C = ""
  loc_C110D2: FFree1Var var_B4 = ""
  loc_C110D5: FLdRfVar var_A4
  loc_C110D8: LitVarStr var_A0, "PagaImpuMes2"
  loc_C110DD: PopAdLdVar
  loc_C110DE: FLdRfVar var_90
  loc_C110E1: FLdRfVar var_8C
  loc_C110E4: FLdPr var_88
  loc_C110E7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C110EC: FLdPr var_8C
  loc_C110EF:  = Me.Fields
  loc_C110F4: FLdPr var_90
  loc_C110F7: from_stack_2 = Me.Item(from_stack_1)
  loc_C110FC: LitI2_Byte 0
  loc_C110FE: FMemLdRf unk_4CFE91
  loc_C11103: CVarRef
  loc_C11108: LitI2_Byte &HFF
  loc_C1110A: FLdZeroAd var_A4
  loc_C1110D: CVarAd
  loc_C11111: PopAdLdVar
  loc_C11112: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , )
  loc_C11117: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1111C: FFreeAd var_8C = ""
  loc_C11123: FFree1Var var_B4 = ""
  loc_C11126: FLdRfVar var_A4
  loc_C11129: LitVarStr var_A0, "PagaImpuMes3"
  loc_C1112E: PopAdLdVar
  loc_C1112F: FLdRfVar var_90
  loc_C11132: FLdRfVar var_8C
  loc_C11135: FLdPr var_88
  loc_C11138: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1113D: FLdPr var_8C
  loc_C11140:  = Me.Fields
  loc_C11145: FLdPr var_90
  loc_C11148: from_stack_2 = Me.Item(from_stack_1)
  loc_C1114D: LitI2_Byte 0
  loc_C1114F: FMemLdRf unk_4CFE91
  loc_C11154: CVarRef
  loc_C11159: LitI2_Byte &HFF
  loc_C1115B: FLdZeroAd var_A4
  loc_C1115E: CVarAd
  loc_C11162: PopAdLdVar
  loc_C11163: FMemLdRf 
  loc_C11168: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1116D: FFreeAd var_8C = ""
  loc_C11174: FFree1Var var_B4 = ""
  loc_C11177: FLdRfVar var_A4
  loc_C1117A: LitVarStr var_A0, "PagaImpuMes4"
  loc_C1117F: PopAdLdVar
  loc_C11180: FLdRfVar var_90
  loc_C11183: FLdRfVar var_8C
  loc_C11186: FLdPr var_88
  loc_C11189: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1118E: FLdPr var_8C
  loc_C11191:  = Me.Fields
  loc_C11196: FLdPr var_90
  loc_C11199: from_stack_2 = Me.Item(from_stack_1)
  loc_C1119E: LitI2_Byte 0
  loc_C111A0: FMemLdRf unk_4CFE91
  loc_C111A5: CVarRef
  loc_C111AA: LitI2_Byte &HFF
  loc_C111AC: FLdZeroAd var_A4
  loc_C111AF: CVarAd
  loc_C111B3: PopAdLdVar
  loc_C111B4: FMemLdRf 
  loc_C111B9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C111BE: FFreeAd var_8C = ""
  loc_C111C5: FFree1Var var_B4 = ""
  loc_C111C8: FLdRfVar var_A4
  loc_C111CB: LitVarStr var_A0, "PagaImpuMes5"
  loc_C111D0: PopAdLdVar
  loc_C111D1: FLdRfVar var_90
  loc_C111D4: FLdRfVar var_8C
  loc_C111D7: FLdPr var_88
  loc_C111DA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C111DF: FLdPr var_8C
  loc_C111E2:  = Me.Fields
  loc_C111E7: FLdPr var_90
  loc_C111EA: from_stack_2 = Me.Item(from_stack_1)
  loc_C111EF: LitI2_Byte 0
  loc_C111F1: FMemLdRf unk_4CFE91
  loc_C111F6: CVarRef
  loc_C111FB: LitI2_Byte &HFF
  loc_C111FD: FLdZeroAd var_A4
  loc_C11200: CVarAd
  loc_C11204: PopAdLdVar
  loc_C11205: FMemLdRf 
  loc_C1120A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1120F: FFreeAd var_8C = ""
  loc_C11216: FFree1Var var_B4 = ""
  loc_C11219: FLdRfVar var_A4
  loc_C1121C: LitVarStr var_A0, "PagaImpuMes6"
  loc_C11221: PopAdLdVar
  loc_C11222: FLdRfVar var_90
  loc_C11225: FLdRfVar var_8C
  loc_C11228: FLdPr var_88
  loc_C1122B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11230: FLdPr var_8C
  loc_C11233:  = Me.Fields
  loc_C11238: FLdPr var_90
  loc_C1123B: from_stack_2 = Me.Item(from_stack_1)
  loc_C11240: LitI2_Byte 0
  loc_C11242: FMemLdRf unk_4CFE91
  loc_C11247: CVarRef
  loc_C1124C: LitI2_Byte &HFF
  loc_C1124E: FLdZeroAd var_A4
  loc_C11251: CVarAd
  loc_C11255: PopAdLdVar
  loc_C11256: FMemLdRf 
  loc_C1125B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11260: FFreeAd var_8C = ""
  loc_C11267: FFree1Var var_B4 = ""
  loc_C1126A: FLdRfVar var_A4
  loc_C1126D: LitVarStr var_A0, "PagaImpuMes7"
  loc_C11272: PopAdLdVar
  loc_C11273: FLdRfVar var_90
  loc_C11276: FLdRfVar var_8C
  loc_C11279: FLdPr var_88
  loc_C1127C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11281: FLdPr var_8C
  loc_C11284:  = Me.Fields
  loc_C11289: FLdPr var_90
  loc_C1128C: from_stack_2 = Me.Item(from_stack_1)
  loc_C11291: LitI2_Byte 0
  loc_C11293: FMemLdRf unk_4CFE91
  loc_C11298: CVarRef
  loc_C1129D: LitI2_Byte &HFF
  loc_C1129F: FLdZeroAd var_A4
  loc_C112A2: CVarAd
  loc_C112A6: PopAdLdVar
  loc_C112A7: FMemLdRf 
  loc_C112AC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C112B1: FFreeAd var_8C = ""
  loc_C112B8: FFree1Var var_B4 = ""
  loc_C112BB: FLdRfVar var_A4
  loc_C112BE: LitVarStr var_A0, "PagaImpuMes8"
  loc_C112C3: PopAdLdVar
  loc_C112C4: FLdRfVar var_90
  loc_C112C7: FLdRfVar var_8C
  loc_C112CA: FLdPr var_88
  loc_C112CD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C112D2: FLdPr var_8C
  loc_C112D5:  = Me.Fields
  loc_C112DA: FLdPr var_90
  loc_C112DD: from_stack_2 = Me.Item(from_stack_1)
  loc_C112E2: LitI2_Byte 0
  loc_C112E4: FMemLdRf unk_4CFE91
  loc_C112E9: CVarRef
  loc_C112EE: LitI2_Byte &HFF
  loc_C112F0: FLdZeroAd var_A4
  loc_C112F3: CVarAd
  loc_C112F7: PopAdLdVar
  loc_C112F8: FMemLdRf 
  loc_C112FD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11302: FFreeAd var_8C = ""
  loc_C11309: FFree1Var var_B4 = ""
  loc_C1130C: FLdRfVar var_A4
  loc_C1130F: LitVarStr var_A0, "PagaImpuMes9"
  loc_C11314: PopAdLdVar
  loc_C11315: FLdRfVar var_90
  loc_C11318: FLdRfVar var_8C
  loc_C1131B: FLdPr var_88
  loc_C1131E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11323: FLdPr var_8C
  loc_C11326:  = Me.Fields
  loc_C1132B: FLdPr var_90
  loc_C1132E: from_stack_2 = Me.Item(from_stack_1)
  loc_C11333: LitI2_Byte 0
  loc_C11335: FMemLdRf unk_4CFE91
  loc_C1133A: CVarRef
  loc_C1133F: LitI2_Byte &HFF
  loc_C11341: FLdZeroAd var_A4
  loc_C11344: CVarAd
  loc_C11348: PopAdLdVar
  loc_C11349: FMemLdRf 
  loc_C1134E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11353: FFreeAd var_8C = ""
  loc_C1135A: FFree1Var var_B4 = ""
  loc_C1135D: FLdRfVar var_A4
  loc_C11360: LitVarStr var_A0, "PagaImpuMes10"
  loc_C11365: PopAdLdVar
  loc_C11366: FLdRfVar var_90
  loc_C11369: FLdRfVar var_8C
  loc_C1136C: FLdPr var_88
  loc_C1136F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11374: FLdPr var_8C
  loc_C11377:  = Me.Fields
  loc_C1137C: FLdPr var_90
  loc_C1137F: from_stack_2 = Me.Item(from_stack_1)
  loc_C11384: LitI2_Byte 0
  loc_C11386: FMemLdRf unk_4CFE91
  loc_C1138B: CVarRef
  loc_C11390: LitI2_Byte &HFF
  loc_C11392: FLdZeroAd var_A4
  loc_C11395: CVarAd
  loc_C11399: PopAdLdVar
  loc_C1139A: FMemLdRf 
  loc_C1139F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C113A4: FFreeAd var_8C = ""
  loc_C113AB: FFree1Var var_B4 = ""
  loc_C113AE: FLdRfVar var_A4
  loc_C113B1: LitVarStr var_A0, "PagaImpuMes11"
  loc_C113B6: PopAdLdVar
  loc_C113B7: FLdRfVar var_90
  loc_C113BA: FLdRfVar var_8C
  loc_C113BD: FLdPr var_88
  loc_C113C0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C113C5: FLdPr var_8C
  loc_C113C8:  = Me.Fields
  loc_C113CD: FLdPr var_90
  loc_C113D0: from_stack_2 = Me.Item(from_stack_1)
  loc_C113D5: LitI2_Byte 0
  loc_C113D7: FMemLdRf unk_4CFE91
  loc_C113DC: CVarRef
  loc_C113E1: LitI2_Byte &HFF
  loc_C113E3: FLdZeroAd var_A4
  loc_C113E6: CVarAd
  loc_C113EA: PopAdLdVar
  loc_C113EB: FMemLdRf 
  loc_C113F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C113F5: FFreeAd var_8C = ""
  loc_C113FC: FFree1Var var_B4 = ""
  loc_C113FF: FLdRfVar var_A4
  loc_C11402: LitVarStr var_A0, "PagaImpuMes12"
  loc_C11407: PopAdLdVar
  loc_C11408: FLdRfVar var_90
  loc_C1140B: FLdRfVar var_8C
  loc_C1140E: FLdPr var_88
  loc_C11411: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11416: FLdPr var_8C
  loc_C11419:  = Me.Fields
  loc_C1141E: FLdPr var_90
  loc_C11421: from_stack_2 = Me.Item(from_stack_1)
  loc_C11426: LitI2_Byte 0
  loc_C11428: FMemLdRf unk_4CFE91
  loc_C1142D: CVarRef
  loc_C11432: LitI2_Byte &HFF
  loc_C11434: FLdZeroAd var_A4
  loc_C11437: CVarAd
  loc_C1143B: PopAdLdVar
  loc_C1143C: FMemLdRf 
  loc_C11441: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11446: FFreeAd var_8C = ""
  loc_C1144D: FFree1Var var_B4 = ""
  loc_C11450: FLdRfVar var_B4
  loc_C11453: FLdRfVar var_A4
  loc_C11456: LitVarStr var_A0, "DeveImpu"
  loc_C1145B: PopAdLdVar
  loc_C1145C: FLdRfVar var_90
  loc_C1145F: FLdRfVar var_8C
  loc_C11462: FLdPr var_88
  loc_C11465: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1146A: FLdPr var_8C
  loc_C1146D:  = Me.Fields
  loc_C11472: FLdPr var_90
  loc_C11475: from_stack_2 = Me.Item(from_stack_1)
  loc_C1147A: FLdPr var_A4
  loc_C1147D:  = Me.Value
  loc_C11482: FLdRfVar var_E0
  loc_C11485: FLdRfVar var_D0
  loc_C11488: LitVarStr var_C4, "MapaImpu"
  loc_C1148D: PopAdLdVar
  loc_C1148E: FLdRfVar var_CC
  loc_C11491: FLdRfVar var_C8
  loc_C11494: FLdPr var_88
  loc_C11497: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1149C: FLdPr var_C8
  loc_C1149F:  = Me.Fields
  loc_C114A4: FLdPr var_CC
  loc_C114A7: from_stack_2 = Me.Item(from_stack_1)
  loc_C114AC: FLdPr var_D0
  loc_C114AF:  = Me.Value
  loc_C114B4: LitI2_Byte 0
  loc_C114B6: FMemLdRf unk_4CFE91
  loc_C114BB: CVarRef
  loc_C114C0: LitI2_Byte &HFF
  loc_C114C2: FLdRfVar var_B4
  loc_C114C5: FnCDblVar
  loc_C114C7: FLdRfVar var_E0
  loc_C114CA: FnCDblVar
  loc_C114CC: SubR4
  loc_C114CD: CVarR8
  loc_C114D1: PopAdLdVar
  loc_C114D2: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , )
  loc_C114D7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C114DC: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C114EB: FFreeVar var_B4 = ""
  loc_C114F2: FLdRfVar var_B4
  loc_C114F5: FLdRfVar var_A4
  loc_C114F8: LitVarStr var_A0, "DeveImpuMes1"
  loc_C114FD: PopAdLdVar
  loc_C114FE: FLdRfVar var_90
  loc_C11501: FLdRfVar var_8C
  loc_C11504: FLdPr var_88
  loc_C11507: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1150C: FLdPr var_8C
  loc_C1150F:  = Me.Fields
  loc_C11514: FLdPr var_90
  loc_C11517: from_stack_2 = Me.Item(from_stack_1)
  loc_C1151C: FLdPr var_A4
  loc_C1151F:  = Me.Value
  loc_C11524: FLdRfVar var_E0
  loc_C11527: FLdRfVar var_D0
  loc_C1152A: LitVarStr var_C4, "MapaImpuMes1"
  loc_C1152F: PopAdLdVar
  loc_C11530: FLdRfVar var_CC
  loc_C11533: FLdRfVar var_C8
  loc_C11536: FLdPr var_88
  loc_C11539: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1153E: FLdPr var_C8
  loc_C11541:  = Me.Fields
  loc_C11546: FLdPr var_CC
  loc_C11549: from_stack_2 = Me.Item(from_stack_1)
  loc_C1154E: FLdPr var_D0
  loc_C11551:  = Me.Value
  loc_C11556: LitI2_Byte 0
  loc_C11558: FMemLdRf unk_4CFE91
  loc_C1155D: CVarRef
  loc_C11562: LitI2_Byte &HFF
  loc_C11564: FLdRfVar var_B4
  loc_C11567: FnCDblVar
  loc_C11569: FLdRfVar var_E0
  loc_C1156C: FnCDblVar
  loc_C1156E: SubR4
  loc_C1156F: CVarR8
  loc_C11573: PopAdLdVar
  loc_C11574: FMemLdRf 
  loc_C11579: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1157E: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C1158D: FFreeVar var_B4 = ""
  loc_C11594: FLdRfVar var_B4
  loc_C11597: FLdRfVar var_A4
  loc_C1159A: LitVarStr var_A0, "DeveImpuMes2"
  loc_C1159F: PopAdLdVar
  loc_C115A0: FLdRfVar var_90
  loc_C115A3: FLdRfVar var_8C
  loc_C115A6: FLdPr var_88
  loc_C115A9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C115AE: FLdPr var_8C
  loc_C115B1:  = Me.Fields
  loc_C115B6: FLdPr var_90
  loc_C115B9: from_stack_2 = Me.Item(from_stack_1)
  loc_C115BE: FLdPr var_A4
  loc_C115C1:  = Me.Value
  loc_C115C6: FLdRfVar var_E0
  loc_C115C9: FLdRfVar var_D0
  loc_C115CC: LitVarStr var_C4, "MapaImpuMes2"
  loc_C115D1: PopAdLdVar
  loc_C115D2: FLdRfVar var_CC
  loc_C115D5: FLdRfVar var_C8
  loc_C115D8: FLdPr var_88
  loc_C115DB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C115E0: FLdPr var_C8
  loc_C115E3:  = Me.Fields
  loc_C115E8: FLdPr var_CC
  loc_C115EB: from_stack_2 = Me.Item(from_stack_1)
  loc_C115F0: FLdPr var_D0
  loc_C115F3:  = Me.Value
  loc_C115F8: LitI2_Byte 0
  loc_C115FA: FMemLdRf unk_4CFE91
  loc_C115FF: CVarRef
  loc_C11604: LitI2_Byte &HFF
  loc_C11606: FLdRfVar var_B4
  loc_C11609: FnCDblVar
  loc_C1160B: FLdRfVar var_E0
  loc_C1160E: FnCDblVar
  loc_C11610: SubR4
  loc_C11611: CVarR8
  loc_C11615: PopAdLdVar
  loc_C11616: FMemLdRf 
  loc_C1161B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11620: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C1162F: FFreeVar var_B4 = ""
  loc_C11636: FLdRfVar var_B4
  loc_C11639: FLdRfVar var_A4
  loc_C1163C: LitVarStr var_A0, "DeveImpuMes3"
  loc_C11641: PopAdLdVar
  loc_C11642: FLdRfVar var_90
  loc_C11645: FLdRfVar var_8C
  loc_C11648: FLdPr var_88
  loc_C1164B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11650: FLdPr var_8C
  loc_C11653:  = Me.Fields
  loc_C11658: FLdPr var_90
  loc_C1165B: from_stack_2 = Me.Item(from_stack_1)
  loc_C11660: FLdPr var_A4
  loc_C11663:  = Me.Value
  loc_C11668: FLdRfVar var_E0
  loc_C1166B: FLdRfVar var_D0
  loc_C1166E: LitVarStr var_C4, "MapaImpuMes3"
  loc_C11673: PopAdLdVar
  loc_C11674: FLdRfVar var_CC
  loc_C11677: FLdRfVar var_C8
  loc_C1167A: FLdPr var_88
  loc_C1167D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11682: FLdPr var_C8
  loc_C11685:  = Me.Fields
  loc_C1168A: FLdPr var_CC
  loc_C1168D: from_stack_2 = Me.Item(from_stack_1)
  loc_C11692: FLdPr var_D0
  loc_C11695:  = Me.Value
  loc_C1169A: LitI2_Byte 0
  loc_C1169C: FMemLdRf unk_4CFE91
  loc_C116A1: CVarRef
  loc_C116A6: LitI2_Byte &HFF
  loc_C116A8: FLdRfVar var_B4
  loc_C116AB: FnCDblVar
  loc_C116AD: FLdRfVar var_E0
  loc_C116B0: FnCDblVar
  loc_C116B2: SubR4
  loc_C116B3: CVarR8
  loc_C116B7: PopAdLdVar
  loc_C116B8: FMemLdRf 
  loc_C116BD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C116C2: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C116D1: FFreeVar var_B4 = ""
  loc_C116D8: FLdRfVar var_B4
  loc_C116DB: FLdRfVar var_A4
  loc_C116DE: LitVarStr var_A0, "DeveImpuMes4"
  loc_C116E3: PopAdLdVar
  loc_C116E4: FLdRfVar var_90
  loc_C116E7: FLdRfVar var_8C
  loc_C116EA: FLdPr var_88
  loc_C116ED: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C116F2: FLdPr var_8C
  loc_C116F5:  = Me.Fields
  loc_C116FA: FLdPr var_90
  loc_C116FD: from_stack_2 = Me.Item(from_stack_1)
  loc_C11702: FLdPr var_A4
  loc_C11705:  = Me.Value
  loc_C1170A: FLdRfVar var_E0
  loc_C1170D: FLdRfVar var_D0
  loc_C11710: LitVarStr var_C4, "MapaImpuMes4"
  loc_C11715: PopAdLdVar
  loc_C11716: FLdRfVar var_CC
  loc_C11719: FLdRfVar var_C8
  loc_C1171C: FLdPr var_88
  loc_C1171F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11724: FLdPr var_C8
  loc_C11727:  = Me.Fields
  loc_C1172C: FLdPr var_CC
  loc_C1172F: from_stack_2 = Me.Item(from_stack_1)
  loc_C11734: FLdPr var_D0
  loc_C11737:  = Me.Value
  loc_C1173C: LitI2_Byte 0
  loc_C1173E: FMemLdRf unk_4CFE91
  loc_C11743: CVarRef
  loc_C11748: LitI2_Byte &HFF
  loc_C1174A: FLdRfVar var_B4
  loc_C1174D: FnCDblVar
  loc_C1174F: FLdRfVar var_E0
  loc_C11752: FnCDblVar
  loc_C11754: SubR4
  loc_C11755: CVarR8
  loc_C11759: PopAdLdVar
  loc_C1175A: FMemLdRf 
  loc_C1175F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11764: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11773: FFreeVar var_B4 = ""
  loc_C1177A: FLdRfVar var_B4
  loc_C1177D: FLdRfVar var_A4
  loc_C11780: LitVarStr var_A0, "DeveImpuMes5"
  loc_C11785: PopAdLdVar
  loc_C11786: FLdRfVar var_90
  loc_C11789: FLdRfVar var_8C
  loc_C1178C: FLdPr var_88
  loc_C1178F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11794: FLdPr var_8C
  loc_C11797:  = Me.Fields
  loc_C1179C: FLdPr var_90
  loc_C1179F: from_stack_2 = Me.Item(from_stack_1)
  loc_C117A4: FLdPr var_A4
  loc_C117A7:  = Me.Value
  loc_C117AC: FLdRfVar var_E0
  loc_C117AF: FLdRfVar var_D0
  loc_C117B2: LitVarStr var_C4, "MapaImpuMes5"
  loc_C117B7: PopAdLdVar
  loc_C117B8: FLdRfVar var_CC
  loc_C117BB: FLdRfVar var_C8
  loc_C117BE: FLdPr var_88
  loc_C117C1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C117C6: FLdPr var_C8
  loc_C117C9:  = Me.Fields
  loc_C117CE: FLdPr var_CC
  loc_C117D1: from_stack_2 = Me.Item(from_stack_1)
  loc_C117D6: FLdPr var_D0
  loc_C117D9:  = Me.Value
  loc_C117DE: LitI2_Byte 0
  loc_C117E0: FMemLdRf unk_4CFE91
  loc_C117E5: CVarRef
  loc_C117EA: LitI2_Byte &HFF
  loc_C117EC: FLdRfVar var_B4
  loc_C117EF: FnCDblVar
  loc_C117F1: FLdRfVar var_E0
  loc_C117F4: FnCDblVar
  loc_C117F6: SubR4
  loc_C117F7: CVarR8
  loc_C117FB: PopAdLdVar
  loc_C117FC: FMemLdRf 
  loc_C11801: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11806: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11815: FFreeVar var_B4 = ""
  loc_C1181C: FLdRfVar var_B4
  loc_C1181F: FLdRfVar var_A4
  loc_C11822: LitVarStr var_A0, "DeveImpuMes6"
  loc_C11827: PopAdLdVar
  loc_C11828: FLdRfVar var_90
  loc_C1182B: FLdRfVar var_8C
  loc_C1182E: FLdPr var_88
  loc_C11831: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11836: FLdPr var_8C
  loc_C11839:  = Me.Fields
  loc_C1183E: FLdPr var_90
  loc_C11841: from_stack_2 = Me.Item(from_stack_1)
  loc_C11846: FLdPr var_A4
  loc_C11849:  = Me.Value
  loc_C1184E: FLdRfVar var_E0
  loc_C11851: FLdRfVar var_D0
  loc_C11854: LitVarStr var_C4, "MapaImpuMes6"
  loc_C11859: PopAdLdVar
  loc_C1185A: FLdRfVar var_CC
  loc_C1185D: FLdRfVar var_C8
  loc_C11860: FLdPr var_88
  loc_C11863: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11868: FLdPr var_C8
  loc_C1186B:  = Me.Fields
  loc_C11870: FLdPr var_CC
  loc_C11873: from_stack_2 = Me.Item(from_stack_1)
  loc_C11878: FLdPr var_D0
  loc_C1187B:  = Me.Value
  loc_C11880: LitI2_Byte 0
  loc_C11882: FMemLdRf unk_4CFE91
  loc_C11887: CVarRef
  loc_C1188C: LitI2_Byte &HFF
  loc_C1188E: FLdRfVar var_B4
  loc_C11891: FnCDblVar
  loc_C11893: FLdRfVar var_E0
  loc_C11896: FnCDblVar
  loc_C11898: SubR4
  loc_C11899: CVarR8
  loc_C1189D: PopAdLdVar
  loc_C1189E: FMemLdRf 
  loc_C118A3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C118A8: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C118B7: FFreeVar var_B4 = ""
  loc_C118BE: FLdRfVar var_B4
  loc_C118C1: FLdRfVar var_A4
  loc_C118C4: LitVarStr var_A0, "DeveImpuMes7"
  loc_C118C9: PopAdLdVar
  loc_C118CA: FLdRfVar var_90
  loc_C118CD: FLdRfVar var_8C
  loc_C118D0: FLdPr var_88
  loc_C118D3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C118D8: FLdPr var_8C
  loc_C118DB:  = Me.Fields
  loc_C118E0: FLdPr var_90
  loc_C118E3: from_stack_2 = Me.Item(from_stack_1)
  loc_C118E8: FLdPr var_A4
  loc_C118EB:  = Me.Value
  loc_C118F0: FLdRfVar var_E0
  loc_C118F3: FLdRfVar var_D0
  loc_C118F6: LitVarStr var_C4, "MapaImpuMes7"
  loc_C118FB: PopAdLdVar
  loc_C118FC: FLdRfVar var_CC
  loc_C118FF: FLdRfVar var_C8
  loc_C11902: FLdPr var_88
  loc_C11905: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1190A: FLdPr var_C8
  loc_C1190D:  = Me.Fields
  loc_C11912: FLdPr var_CC
  loc_C11915: from_stack_2 = Me.Item(from_stack_1)
  loc_C1191A: FLdPr var_D0
  loc_C1191D:  = Me.Value
  loc_C11922: LitI2_Byte 0
  loc_C11924: FMemLdRf unk_4CFE91
  loc_C11929: CVarRef
  loc_C1192E: LitI2_Byte &HFF
  loc_C11930: FLdRfVar var_B4
  loc_C11933: FnCDblVar
  loc_C11935: FLdRfVar var_E0
  loc_C11938: FnCDblVar
  loc_C1193A: SubR4
  loc_C1193B: CVarR8
  loc_C1193F: PopAdLdVar
  loc_C11940: FMemLdRf 
  loc_C11945: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1194A: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11959: FFreeVar var_B4 = ""
  loc_C11960: FLdRfVar var_B4
  loc_C11963: FLdRfVar var_A4
  loc_C11966: LitVarStr var_A0, "DeveImpuMes8"
  loc_C1196B: PopAdLdVar
  loc_C1196C: FLdRfVar var_90
  loc_C1196F: FLdRfVar var_8C
  loc_C11972: FLdPr var_88
  loc_C11975: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1197A: FLdPr var_8C
  loc_C1197D:  = Me.Fields
  loc_C11982: FLdPr var_90
  loc_C11985: from_stack_2 = Me.Item(from_stack_1)
  loc_C1198A: FLdPr var_A4
  loc_C1198D:  = Me.Value
  loc_C11992: FLdRfVar var_E0
  loc_C11995: FLdRfVar var_D0
  loc_C11998: LitVarStr var_C4, "MapaImpuMes8"
  loc_C1199D: PopAdLdVar
  loc_C1199E: FLdRfVar var_CC
  loc_C119A1: FLdRfVar var_C8
  loc_C119A4: FLdPr var_88
  loc_C119A7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C119AC: FLdPr var_C8
  loc_C119AF:  = Me.Fields
  loc_C119B4: FLdPr var_CC
  loc_C119B7: from_stack_2 = Me.Item(from_stack_1)
  loc_C119BC: FLdPr var_D0
  loc_C119BF:  = Me.Value
  loc_C119C4: LitI2_Byte 0
  loc_C119C6: FMemLdRf unk_4CFE91
  loc_C119CB: CVarRef
  loc_C119D0: LitI2_Byte &HFF
  loc_C119D2: FLdRfVar var_B4
  loc_C119D5: FnCDblVar
  loc_C119D7: FLdRfVar var_E0
  loc_C119DA: FnCDblVar
  loc_C119DC: SubR4
  loc_C119DD: CVarR8
  loc_C119E1: PopAdLdVar
  loc_C119E2: FMemLdRf 
  loc_C119E7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C119EC: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C119FB: FFreeVar var_B4 = ""
  loc_C11A02: FLdRfVar var_B4
  loc_C11A05: FLdRfVar var_A4
  loc_C11A08: LitVarStr var_A0, "DeveImpuMes9"
  loc_C11A0D: PopAdLdVar
  loc_C11A0E: FLdRfVar var_90
  loc_C11A11: FLdRfVar var_8C
  loc_C11A14: FLdPr var_88
  loc_C11A17: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11A1C: FLdPr var_8C
  loc_C11A1F:  = Me.Fields
  loc_C11A24: FLdPr var_90
  loc_C11A27: from_stack_2 = Me.Item(from_stack_1)
  loc_C11A2C: FLdPr var_A4
  loc_C11A2F:  = Me.Value
  loc_C11A34: FLdRfVar var_E0
  loc_C11A37: FLdRfVar var_D0
  loc_C11A3A: LitVarStr var_C4, "MapaImpuMes9"
  loc_C11A3F: PopAdLdVar
  loc_C11A40: FLdRfVar var_CC
  loc_C11A43: FLdRfVar var_C8
  loc_C11A46: FLdPr var_88
  loc_C11A49: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11A4E: FLdPr var_C8
  loc_C11A51:  = Me.Fields
  loc_C11A56: FLdPr var_CC
  loc_C11A59: from_stack_2 = Me.Item(from_stack_1)
  loc_C11A5E: FLdPr var_D0
  loc_C11A61:  = Me.Value
  loc_C11A66: LitI2_Byte 0
  loc_C11A68: FMemLdRf unk_4CFE91
  loc_C11A6D: CVarRef
  loc_C11A72: LitI2_Byte &HFF
  loc_C11A74: FLdRfVar var_B4
  loc_C11A77: FnCDblVar
  loc_C11A79: FLdRfVar var_E0
  loc_C11A7C: FnCDblVar
  loc_C11A7E: SubR4
  loc_C11A7F: CVarR8
  loc_C11A83: PopAdLdVar
  loc_C11A84: FMemLdRf 
  loc_C11A89: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11A8E: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11A9D: FFreeVar var_B4 = ""
  loc_C11AA4: FLdRfVar var_B4
  loc_C11AA7: FLdRfVar var_A4
  loc_C11AAA: LitVarStr var_A0, "DeveImpuMes10"
  loc_C11AAF: PopAdLdVar
  loc_C11AB0: FLdRfVar var_90
  loc_C11AB3: FLdRfVar var_8C
  loc_C11AB6: FLdPr var_88
  loc_C11AB9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11ABE: FLdPr var_8C
  loc_C11AC1:  = Me.Fields
  loc_C11AC6: FLdPr var_90
  loc_C11AC9: from_stack_2 = Me.Item(from_stack_1)
  loc_C11ACE: FLdPr var_A4
  loc_C11AD1:  = Me.Value
  loc_C11AD6: FLdRfVar var_E0
  loc_C11AD9: FLdRfVar var_D0
  loc_C11ADC: LitVarStr var_C4, "MapaImpuMes10"
  loc_C11AE1: PopAdLdVar
  loc_C11AE2: FLdRfVar var_CC
  loc_C11AE5: FLdRfVar var_C8
  loc_C11AE8: FLdPr var_88
  loc_C11AEB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11AF0: FLdPr var_C8
  loc_C11AF3:  = Me.Fields
  loc_C11AF8: FLdPr var_CC
  loc_C11AFB: from_stack_2 = Me.Item(from_stack_1)
  loc_C11B00: FLdPr var_D0
  loc_C11B03:  = Me.Value
  loc_C11B08: LitI2_Byte 0
  loc_C11B0A: FMemLdRf unk_4CFE91
  loc_C11B0F: CVarRef
  loc_C11B14: LitI2_Byte &HFF
  loc_C11B16: FLdRfVar var_B4
  loc_C11B19: FnCDblVar
  loc_C11B1B: FLdRfVar var_E0
  loc_C11B1E: FnCDblVar
  loc_C11B20: SubR4
  loc_C11B21: CVarR8
  loc_C11B25: PopAdLdVar
  loc_C11B26: FMemLdRf 
  loc_C11B2B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11B30: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11B3F: FFreeVar var_B4 = ""
  loc_C11B46: FLdRfVar var_B4
  loc_C11B49: FLdRfVar var_A4
  loc_C11B4C: LitVarStr var_A0, "DeveImpuMes11"
  loc_C11B51: PopAdLdVar
  loc_C11B52: FLdRfVar var_90
  loc_C11B55: FLdRfVar var_8C
  loc_C11B58: FLdPr var_88
  loc_C11B5B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11B60: FLdPr var_8C
  loc_C11B63:  = Me.Fields
  loc_C11B68: FLdPr var_90
  loc_C11B6B: from_stack_2 = Me.Item(from_stack_1)
  loc_C11B70: FLdPr var_A4
  loc_C11B73:  = Me.Value
  loc_C11B78: FLdRfVar var_E0
  loc_C11B7B: FLdRfVar var_D0
  loc_C11B7E: LitVarStr var_C4, "MapaImpuMes11"
  loc_C11B83: PopAdLdVar
  loc_C11B84: FLdRfVar var_CC
  loc_C11B87: FLdRfVar var_C8
  loc_C11B8A: FLdPr var_88
  loc_C11B8D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11B92: FLdPr var_C8
  loc_C11B95:  = Me.Fields
  loc_C11B9A: FLdPr var_CC
  loc_C11B9D: from_stack_2 = Me.Item(from_stack_1)
  loc_C11BA2: FLdPr var_D0
  loc_C11BA5:  = Me.Value
  loc_C11BAA: LitI2_Byte 0
  loc_C11BAC: FMemLdRf unk_4CFE91
  loc_C11BB1: CVarRef
  loc_C11BB6: LitI2_Byte &HFF
  loc_C11BB8: FLdRfVar var_B4
  loc_C11BBB: FnCDblVar
  loc_C11BBD: FLdRfVar var_E0
  loc_C11BC0: FnCDblVar
  loc_C11BC2: SubR4
  loc_C11BC3: CVarR8
  loc_C11BC7: PopAdLdVar
  loc_C11BC8: FMemLdRf 
  loc_C11BCD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11BD2: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11BE1: FFreeVar var_B4 = ""
  loc_C11BE8: FLdRfVar var_B4
  loc_C11BEB: FLdRfVar var_A4
  loc_C11BEE: LitVarStr var_A0, "DeveImpuMes12"
  loc_C11BF3: PopAdLdVar
  loc_C11BF4: FLdRfVar var_90
  loc_C11BF7: FLdRfVar var_8C
  loc_C11BFA: FLdPr var_88
  loc_C11BFD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11C02: FLdPr var_8C
  loc_C11C05:  = Me.Fields
  loc_C11C0A: FLdPr var_90
  loc_C11C0D: from_stack_2 = Me.Item(from_stack_1)
  loc_C11C12: FLdPr var_A4
  loc_C11C15:  = Me.Value
  loc_C11C1A: FLdRfVar var_E0
  loc_C11C1D: FLdRfVar var_D0
  loc_C11C20: LitVarStr var_C4, "MapaImpuMes12"
  loc_C11C25: PopAdLdVar
  loc_C11C26: FLdRfVar var_CC
  loc_C11C29: FLdRfVar var_C8
  loc_C11C2C: FLdPr var_88
  loc_C11C2F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11C34: FLdPr var_C8
  loc_C11C37:  = Me.Fields
  loc_C11C3C: FLdPr var_CC
  loc_C11C3F: from_stack_2 = Me.Item(from_stack_1)
  loc_C11C44: FLdPr var_D0
  loc_C11C47:  = Me.Value
  loc_C11C4C: LitI2_Byte 0
  loc_C11C4E: FMemLdRf unk_4CFE91
  loc_C11C53: CVarRef
  loc_C11C58: LitI2_Byte &HFF
  loc_C11C5A: FLdRfVar var_B4
  loc_C11C5D: FnCDblVar
  loc_C11C5F: FLdRfVar var_E0
  loc_C11C62: FnCDblVar
  loc_C11C64: SubR4
  loc_C11C65: CVarR8
  loc_C11C69: PopAdLdVar
  loc_C11C6A: FMemLdRf 
  loc_C11C6F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11C74: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11C83: FFreeVar var_B4 = ""
  loc_C11C8A: FLdRfVar var_B4
  loc_C11C8D: FLdRfVar var_A4
  loc_C11C90: LitVarStr var_A0, "DefiImpu"
  loc_C11C95: PopAdLdVar
  loc_C11C96: FLdRfVar var_90
  loc_C11C99: FLdRfVar var_8C
  loc_C11C9C: FLdPr var_88
  loc_C11C9F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11CA4: FLdPr var_8C
  loc_C11CA7:  = Me.Fields
  loc_C11CAC: FLdPr var_90
  loc_C11CAF: from_stack_2 = Me.Item(from_stack_1)
  loc_C11CB4: FLdPr var_A4
  loc_C11CB7:  = Me.Value
  loc_C11CBC: LitI2_Byte 0
  loc_C11CBE: FMemLdRf unk_4CFE91
  loc_C11CC3: CVarRef
  loc_C11CC8: LitI2_Byte &HFF
  loc_C11CCA: FMemLdR4 arg_C(24)
  loc_C11CCF: CR8Str
  loc_C11CD1: FLdRfVar var_B4
  loc_C11CD4: FnCDblVar
  loc_C11CD6: SubR4
  loc_C11CD7: CVarR8
  loc_C11CDB: PopAdLdVar
  loc_C11CDC: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , )
  loc_C11CE1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11CE6: FFreeAd var_8C = "": var_90 = ""
  loc_C11CEF: FFree1Var var_B4 = ""
  loc_C11CF2: FLdRfVar var_B4
  loc_C11CF5: FLdRfVar var_A4
  loc_C11CF8: LitVarStr var_A0, "MapaImpu"
  loc_C11CFD: PopAdLdVar
  loc_C11CFE: FLdRfVar var_90
  loc_C11D01: FLdRfVar var_8C
  loc_C11D04: FLdPr var_88
  loc_C11D07: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11D0C: FLdPr var_8C
  loc_C11D0F:  = Me.Fields
  loc_C11D14: FLdPr var_90
  loc_C11D17: from_stack_2 = Me.Item(from_stack_1)
  loc_C11D1C: FLdPr var_A4
  loc_C11D1F:  = Me.Value
  loc_C11D24: FLdRfVar var_E0
  loc_C11D27: FLdRfVar var_D0
  loc_C11D2A: LitVarStr var_C4, "PagaImpu"
  loc_C11D2F: PopAdLdVar
  loc_C11D30: FLdRfVar var_CC
  loc_C11D33: FLdRfVar var_C8
  loc_C11D36: FLdPr var_88
  loc_C11D39: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11D3E: FLdPr var_C8
  loc_C11D41:  = Me.Fields
  loc_C11D46: FLdPr var_CC
  loc_C11D49: from_stack_2 = Me.Item(from_stack_1)
  loc_C11D4E: FLdPr var_D0
  loc_C11D51:  = Me.Value
  loc_C11D56: LitI2_Byte 0
  loc_C11D58: FMemLdRf unk_4CFE91
  loc_C11D5D: CVarRef
  loc_C11D62: LitI2_Byte &HFF
  loc_C11D64: FLdRfVar var_B4
  loc_C11D67: FnCDblVar
  loc_C11D69: FLdRfVar var_E0
  loc_C11D6C: FnCDblVar
  loc_C11D6E: SubR4
  loc_C11D6F: CVarR8
  loc_C11D73: PopAdLdVar
  loc_C11D74: FMemLdRf Proc_261_32_A53D7C(, , , , , , , , , , , , , )
  loc_C11D79: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11D7E: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11D8D: FFreeVar var_B4 = ""
  loc_C11D94: FLdRfVar var_B4
  loc_C11D97: FLdRfVar var_A4
  loc_C11D9A: LitVarStr var_A0, "MapaImpuMes1"
  loc_C11D9F: PopAdLdVar
  loc_C11DA0: FLdRfVar var_90
  loc_C11DA3: FLdRfVar var_8C
  loc_C11DA6: FLdPr var_88
  loc_C11DA9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11DAE: FLdPr var_8C
  loc_C11DB1:  = Me.Fields
  loc_C11DB6: FLdPr var_90
  loc_C11DB9: from_stack_2 = Me.Item(from_stack_1)
  loc_C11DBE: FLdPr var_A4
  loc_C11DC1:  = Me.Value
  loc_C11DC6: FLdRfVar var_E0
  loc_C11DC9: FLdRfVar var_D0
  loc_C11DCC: LitVarStr var_C4, "PagaImpuMes1"
  loc_C11DD1: PopAdLdVar
  loc_C11DD2: FLdRfVar var_CC
  loc_C11DD5: FLdRfVar var_C8
  loc_C11DD8: FLdPr var_88
  loc_C11DDB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11DE0: FLdPr var_C8
  loc_C11DE3:  = Me.Fields
  loc_C11DE8: FLdPr var_CC
  loc_C11DEB: from_stack_2 = Me.Item(from_stack_1)
  loc_C11DF0: FLdPr var_D0
  loc_C11DF3:  = Me.Value
  loc_C11DF8: LitI2_Byte 0
  loc_C11DFA: FMemLdRf unk_4CFE91
  loc_C11DFF: CVarRef
  loc_C11E04: LitI2_Byte &HFF
  loc_C11E06: FLdRfVar var_B4
  loc_C11E09: FnCDblVar
  loc_C11E0B: FLdRfVar var_E0
  loc_C11E0E: FnCDblVar
  loc_C11E10: SubR4
  loc_C11E11: CVarR8
  loc_C11E15: PopAdLdVar
  loc_C11E16: FMemLdRf 
  loc_C11E1B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11E20: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11E2F: FFreeVar var_B4 = ""
  loc_C11E36: FLdRfVar var_B4
  loc_C11E39: FLdRfVar var_A4
  loc_C11E3C: LitVarStr var_A0, "MapaImpuMes2"
  loc_C11E41: PopAdLdVar
  loc_C11E42: FLdRfVar var_90
  loc_C11E45: FLdRfVar var_8C
  loc_C11E48: FLdPr var_88
  loc_C11E4B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11E50: FLdPr var_8C
  loc_C11E53:  = Me.Fields
  loc_C11E58: FLdPr var_90
  loc_C11E5B: from_stack_2 = Me.Item(from_stack_1)
  loc_C11E60: FLdPr var_A4
  loc_C11E63:  = Me.Value
  loc_C11E68: FLdRfVar var_E0
  loc_C11E6B: FLdRfVar var_D0
  loc_C11E6E: LitVarStr var_C4, "PagaImpuMes2"
  loc_C11E73: PopAdLdVar
  loc_C11E74: FLdRfVar var_CC
  loc_C11E77: FLdRfVar var_C8
  loc_C11E7A: FLdPr var_88
  loc_C11E7D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11E82: FLdPr var_C8
  loc_C11E85:  = Me.Fields
  loc_C11E8A: FLdPr var_CC
  loc_C11E8D: from_stack_2 = Me.Item(from_stack_1)
  loc_C11E92: FLdPr var_D0
  loc_C11E95:  = Me.Value
  loc_C11E9A: LitI2_Byte 0
  loc_C11E9C: FMemLdRf unk_4CFE91
  loc_C11EA1: CVarRef
  loc_C11EA6: LitI2_Byte &HFF
  loc_C11EA8: FLdRfVar var_B4
  loc_C11EAB: FnCDblVar
  loc_C11EAD: FLdRfVar var_E0
  loc_C11EB0: FnCDblVar
  loc_C11EB2: SubR4
  loc_C11EB3: CVarR8
  loc_C11EB7: PopAdLdVar
  loc_C11EB8: FMemLdRf 
  loc_C11EBD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11EC2: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11ED1: FFreeVar var_B4 = ""
  loc_C11ED8: FLdRfVar var_B4
  loc_C11EDB: FLdRfVar var_A4
  loc_C11EDE: LitVarStr var_A0, "MapaImpuMes3"
  loc_C11EE3: PopAdLdVar
  loc_C11EE4: FLdRfVar var_90
  loc_C11EE7: FLdRfVar var_8C
  loc_C11EEA: FLdPr var_88
  loc_C11EED: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11EF2: FLdPr var_8C
  loc_C11EF5:  = Me.Fields
  loc_C11EFA: FLdPr var_90
  loc_C11EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_C11F02: FLdPr var_A4
  loc_C11F05:  = Me.Value
  loc_C11F0A: FLdRfVar var_E0
  loc_C11F0D: FLdRfVar var_D0
  loc_C11F10: LitVarStr var_C4, "PagaImpuMes3"
  loc_C11F15: PopAdLdVar
  loc_C11F16: FLdRfVar var_CC
  loc_C11F19: FLdRfVar var_C8
  loc_C11F1C: FLdPr var_88
  loc_C11F1F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11F24: FLdPr var_C8
  loc_C11F27:  = Me.Fields
  loc_C11F2C: FLdPr var_CC
  loc_C11F2F: from_stack_2 = Me.Item(from_stack_1)
  loc_C11F34: FLdPr var_D0
  loc_C11F37:  = Me.Value
  loc_C11F3C: LitI2_Byte 0
  loc_C11F3E: FMemLdRf unk_4CFE91
  loc_C11F43: CVarRef
  loc_C11F48: LitI2_Byte &HFF
  loc_C11F4A: FLdRfVar var_B4
  loc_C11F4D: FnCDblVar
  loc_C11F4F: FLdRfVar var_E0
  loc_C11F52: FnCDblVar
  loc_C11F54: SubR4
  loc_C11F55: CVarR8
  loc_C11F59: PopAdLdVar
  loc_C11F5A: FMemLdRf 
  loc_C11F5F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C11F64: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C11F73: FFreeVar var_B4 = ""
  loc_C11F7A: FLdRfVar var_B4
  loc_C11F7D: FLdRfVar var_A4
  loc_C11F80: LitVarStr var_A0, "MapaImpuMes4"
  loc_C11F85: PopAdLdVar
  loc_C11F86: FLdRfVar var_90
  loc_C11F89: FLdRfVar var_8C
  loc_C11F8C: FLdPr var_88
  loc_C11F8F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11F94: FLdPr var_8C
  loc_C11F97:  = Me.Fields
  loc_C11F9C: FLdPr var_90
  loc_C11F9F: from_stack_2 = Me.Item(from_stack_1)
  loc_C11FA4: FLdPr var_A4
  loc_C11FA7:  = Me.Value
  loc_C11FAC: FLdRfVar var_E0
  loc_C11FAF: FLdRfVar var_D0
  loc_C11FB2: LitVarStr var_C4, "PagaImpuMes4"
  loc_C11FB7: PopAdLdVar
  loc_C11FB8: FLdRfVar var_CC
  loc_C11FBB: FLdRfVar var_C8
  loc_C11FBE: FLdPr var_88
  loc_C11FC1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C11FC6: FLdPr var_C8
  loc_C11FC9:  = Me.Fields
  loc_C11FCE: FLdPr var_CC
  loc_C11FD1: from_stack_2 = Me.Item(from_stack_1)
  loc_C11FD6: FLdPr var_D0
  loc_C11FD9:  = Me.Value
  loc_C11FDE: LitI2_Byte 0
  loc_C11FE0: FMemLdRf unk_4CFE91
  loc_C11FE5: CVarRef
  loc_C11FEA: LitI2_Byte &HFF
  loc_C11FEC: FLdRfVar var_B4
  loc_C11FEF: FnCDblVar
  loc_C11FF1: FLdRfVar var_E0
  loc_C11FF4: FnCDblVar
  loc_C11FF6: SubR4
  loc_C11FF7: CVarR8
  loc_C11FFB: PopAdLdVar
  loc_C11FFC: FMemLdRf 
  loc_C12001: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C12006: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C12015: FFreeVar var_B4 = ""
  loc_C1201C: FLdRfVar var_B4
  loc_C1201F: FLdRfVar var_A4
  loc_C12022: LitVarStr var_A0, "MapaImpuMes5"
  loc_C12027: PopAdLdVar
  loc_C12028: FLdRfVar var_90
  loc_C1202B: FLdRfVar var_8C
  loc_C1202E: FLdPr var_88
  loc_C12031: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C12036: FLdPr var_8C
  loc_C12039:  = Me.Fields
  loc_C1203E: FLdPr var_90
  loc_C12041: from_stack_2 = Me.Item(from_stack_1)
  loc_C12046: FLdPr var_A4
  loc_C12049:  = Me.Value
  loc_C1204E: FLdRfVar var_E0
  loc_C12051: FLdRfVar var_D0
  loc_C12054: LitVarStr var_C4, "PagaImpuMes5"
  loc_C12059: PopAdLdVar
  loc_C1205A: FLdRfVar var_CC
  loc_C1205D: FLdRfVar var_C8
  loc_C12060: FLdPr var_88
  loc_C12063: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C12068: FLdPr var_C8
  loc_C1206B:  = Me.Fields
  loc_C12070: FLdPr var_CC
  loc_C12073: from_stack_2 = Me.Item(from_stack_1)
  loc_C12078: FLdPr var_D0
  loc_C1207B:  = Me.Value
  loc_C12080: LitI2_Byte 0
  loc_C12082: FMemLdRf unk_4CFE91
  loc_C12087: CVarRef
  loc_C1208C: LitI2_Byte &HFF
  loc_C1208E: FLdRfVar var_B4
  loc_C12091: FnCDblVar
  loc_C12093: FLdRfVar var_E0
  loc_C12096: FnCDblVar
  loc_C12098: SubR4
  loc_C12099: CVarR8
  loc_C1209D: PopAdLdVar
  loc_C1209E: FMemLdRf 
  loc_C120A3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C120A8: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C120B7: FFreeVar var_B4 = ""
  loc_C120BE: FLdRfVar var_B4
  loc_C120C1: FLdRfVar var_A4
  loc_C120C4: LitVarStr var_A0, "MapaImpuMes6"
  loc_C120C9: PopAdLdVar
  loc_C120CA: FLdRfVar var_90
  loc_C120CD: FLdRfVar var_8C
  loc_C120D0: FLdPr var_88
  loc_C120D3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C120D8: FLdPr var_8C
  loc_C120DB:  = Me.Fields
  loc_C120E0: FLdPr var_90
  loc_C120E3: from_stack_2 = Me.Item(from_stack_1)
  loc_C120E8: FLdPr var_A4
  loc_C120EB:  = Me.Value
  loc_C120F0: FLdRfVar var_E0
  loc_C120F3: FLdRfVar var_D0
  loc_C120F6: LitVarStr var_C4, "PagaImpuMes6"
  loc_C120FB: PopAdLdVar
  loc_C120FC: FLdRfVar var_CC
  loc_C120FF: FLdRfVar var_C8
  loc_C12102: FLdPr var_88
  loc_C12105: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1210A: FLdPr var_C8
  loc_C1210D:  = Me.Fields
  loc_C12112: FLdPr var_CC
  loc_C12115: from_stack_2 = Me.Item(from_stack_1)
  loc_C1211A: FLdPr var_D0
  loc_C1211D:  = Me.Value
  loc_C12122: LitI2_Byte 0
  loc_C12124: FMemLdRf unk_4CFE91
  loc_C12129: CVarRef
  loc_C1212E: LitI2_Byte &HFF
  loc_C12130: FLdRfVar var_B4
  loc_C12133: FnCDblVar
  loc_C12135: FLdRfVar var_E0
  loc_C12138: FnCDblVar
  loc_C1213A: SubR4
  loc_C1213B: CVarR8
  loc_C1213F: PopAdLdVar
  loc_C12140: FMemLdRf 
  loc_C12145: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1214A: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C12159: FFreeVar var_B4 = ""
  loc_C12160: FLdRfVar var_B4
  loc_C12163: FLdRfVar var_A4
  loc_C12166: LitVarStr var_A0, "MapaImpuMes7"
  loc_C1216B: PopAdLdVar
  loc_C1216C: FLdRfVar var_90
  loc_C1216F: FLdRfVar var_8C
  loc_C12172: FLdPr var_88
  loc_C12175: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1217A: FLdPr var_8C
  loc_C1217D:  = Me.Fields
  loc_C12182: FLdPr var_90
  loc_C12185: from_stack_2 = Me.Item(from_stack_1)
  loc_C1218A: FLdPr var_A4
  loc_C1218D:  = Me.Value
  loc_C12192: FLdRfVar var_E0
  loc_C12195: FLdRfVar var_D0
  loc_C12198: LitVarStr var_C4, "PagaImpuMes7"
  loc_C1219D: PopAdLdVar
  loc_C1219E: FLdRfVar var_CC
  loc_C121A1: FLdRfVar var_C8
  loc_C121A4: FLdPr var_88
  loc_C121A7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C121AC: FLdPr var_C8
  loc_C121AF:  = Me.Fields
  loc_C121B4: FLdPr var_CC
  loc_C121B7: from_stack_2 = Me.Item(from_stack_1)
  loc_C121BC: FLdPr var_D0
  loc_C121BF:  = Me.Value
  loc_C121C4: LitI2_Byte 0
  loc_C121C6: FMemLdRf unk_4CFE91
  loc_C121CB: CVarRef
  loc_C121D0: LitI2_Byte &HFF
  loc_C121D2: FLdRfVar var_B4
  loc_C121D5: FnCDblVar
  loc_C121D7: FLdRfVar var_E0
  loc_C121DA: FnCDblVar
  loc_C121DC: SubR4
  loc_C121DD: CVarR8
  loc_C121E1: PopAdLdVar
  loc_C121E2: FMemLdRf 
  loc_C121E7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C121EC: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C121FB: FFreeVar var_B4 = ""
  loc_C12202: FLdRfVar var_B4
  loc_C12205: FLdRfVar var_A4
  loc_C12208: LitVarStr var_A0, "MapaImpuMes8"
  loc_C1220D: PopAdLdVar
  loc_C1220E: FLdRfVar var_90
  loc_C12211: FLdRfVar var_8C
  loc_C12214: FLdPr var_88
  loc_C12217: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1221C: FLdPr var_8C
  loc_C1221F:  = Me.Fields
  loc_C12224: FLdPr var_90
  loc_C12227: from_stack_2 = Me.Item(from_stack_1)
  loc_C1222C: FLdPr var_A4
  loc_C1222F:  = Me.Value
  loc_C12234: FLdRfVar var_E0
  loc_C12237: FLdRfVar var_D0
  loc_C1223A: LitVarStr var_C4, "PagaImpuMes8"
  loc_C1223F: PopAdLdVar
  loc_C12240: FLdRfVar var_CC
  loc_C12243: FLdRfVar var_C8
  loc_C12246: FLdPr var_88
  loc_C12249: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C1224E: FLdPr var_C8
  loc_C12251:  = Me.Fields
  loc_C12256: FLdPr var_CC
  loc_C12259: from_stack_2 = Me.Item(from_stack_1)
  loc_C1225E: FLdPr var_D0
  loc_C12261:  = Me.Value
  loc_C12266: LitI2_Byte 0
  loc_C12268: FMemLdRf unk_4CFE91
  loc_C1226D: CVarRef
  loc_C12272: LitI2_Byte &HFF
  loc_C12274: FLdRfVar var_B4
  loc_C12277: FnCDblVar
  loc_C12279: FLdRfVar var_E0
  loc_C1227C: FnCDblVar
  loc_C1227E: SubR4
  loc_C1227F: CVarR8
  loc_C12283: PopAdLdVar
  loc_C12284: FMemLdRf 
  loc_C12289: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C1228E: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C1229D: FFreeVar var_B4 = ""
  loc_C122A4: FLdRfVar var_B4
  loc_C122A7: FLdRfVar var_A4
  loc_C122AA: LitVarStr var_A0, "MapaImpuMes9"
  loc_C122AF: PopAdLdVar
  loc_C122B0: FLdRfVar var_90
  loc_C122B3: FLdRfVar var_8C
  loc_C122B6: FLdPr var_88
  loc_C122B9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C122BE: FLdPr var_8C
  loc_C122C1:  = Me.Fields
  loc_C122C6: FLdPr var_90
  loc_C122C9: from_stack_2 = Me.Item(from_stack_1)
  loc_C122CE: FLdPr var_A4
  loc_C122D1:  = Me.Value
  loc_C122D6: FLdRfVar var_E0
  loc_C122D9: FLdRfVar var_D0
  loc_C122DC: LitVarStr var_C4, "PagaImpuMes9"
  loc_C122E1: PopAdLdVar
  loc_C122E2: FLdRfVar var_CC
  loc_C122E5: FLdRfVar var_C8
  loc_C122E8: FLdPr var_88
  loc_C122EB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C122F0: FLdPr var_C8
  loc_C122F3:  = Me.Fields
  loc_C122F8: FLdPr var_CC
  loc_C122FB: from_stack_2 = Me.Item(from_stack_1)
  loc_C12300: FLdPr var_D0
  loc_C12303:  = Me.Value
  loc_C12308: LitI2_Byte 0
  loc_C1230A: FMemLdRf unk_4CFE91
  loc_C1230F: CVarRef
  loc_C12314: LitI2_Byte &HFF
  loc_C12316: FLdRfVar var_B4
  loc_C12319: FnCDblVar
  loc_C1231B: FLdRfVar var_E0
  loc_C1231E: FnCDblVar
  loc_C12320: SubR4
  loc_C12321: CVarR8
  loc_C12325: PopAdLdVar
  loc_C12326: FMemLdRf 
  loc_C1232B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C12330: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C1233F: FFreeVar var_B4 = ""
  loc_C12346: FLdRfVar var_B4
  loc_C12349: FLdRfVar var_A4
  loc_C1234C: LitVarStr var_A0, "MapaImpuMes10"
  loc_C12351: PopAdLdVar
  loc_C12352: FLdRfVar var_90
  loc_C12355: FLdRfVar var_8C
  loc_C12358: FLdPr var_88
  loc_C1235B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C12360: FLdPr var_8C
  loc_C12363:  = Me.Fields
  loc_C12368: FLdPr var_90
  loc_C1236B: from_stack_2 = Me.Item(from_stack_1)
  loc_C12370: FLdPr var_A4
  loc_C12373:  = Me.Value
  loc_C12378: FLdRfVar var_E0
  loc_C1237B: FLdRfVar var_D0
  loc_C1237E: LitVarStr var_C4, "PagaImpuMes10"
  loc_C12383: PopAdLdVar
  loc_C12384: FLdRfVar var_CC
  loc_C12387: FLdRfVar var_C8
  loc_C1238A: FLdPr var_88
  loc_C1238D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C12392: FLdPr var_C8
  loc_C12395:  = Me.Fields
  loc_C1239A: FLdPr var_CC
  loc_C1239D: from_stack_2 = Me.Item(from_stack_1)
  loc_C123A2: FLdPr var_D0
  loc_C123A5:  = Me.Value
  loc_C123AA: LitI2_Byte 0
  loc_C123AC: FMemLdRf unk_4CFE91
  loc_C123B1: CVarRef
  loc_C123B6: LitI2_Byte &HFF
  loc_C123B8: FLdRfVar var_B4
  loc_C123BB: FnCDblVar
  loc_C123BD: FLdRfVar var_E0
  loc_C123C0: FnCDblVar
  loc_C123C2: SubR4
  loc_C123C3: CVarR8
  loc_C123C7: PopAdLdVar
  loc_C123C8: FMemLdRf 
  loc_C123CD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C123D2: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C123E1: FFreeVar var_B4 = ""
  loc_C123E8: FLdRfVar var_B4
  loc_C123EB: FLdRfVar var_A4
  loc_C123EE: LitVarStr var_A0, "MapaImpuMes11"
  loc_C123F3: PopAdLdVar
  loc_C123F4: FLdRfVar var_90
  loc_C123F7: FLdRfVar var_8C
  loc_C123FA: FLdPr var_88
  loc_C123FD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C12402: FLdPr var_8C
  loc_C12405:  = Me.Fields
  loc_C1240A: FLdPr var_90
  loc_C1240D: from_stack_2 = Me.Item(from_stack_1)
  loc_C12412: FLdPr var_A4
  loc_C12415:  = Me.Value
  loc_C1241A: FLdRfVar var_E0
  loc_C1241D: FLdRfVar var_D0
  loc_C12420: LitVarStr var_C4, "PagaImpuMes11"
  loc_C12425: PopAdLdVar
  loc_C12426: FLdRfVar var_CC
  loc_C12429: FLdRfVar var_C8
  loc_C1242C: FLdPr var_88
  loc_C1242F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C12434: FLdPr var_C8
  loc_C12437:  = Me.Fields
  loc_C1243C: FLdPr var_CC
  loc_C1243F: from_stack_2 = Me.Item(from_stack_1)
  loc_C12444: FLdPr var_D0
  loc_C12447:  = Me.Value
  loc_C1244C: LitI2_Byte 0
  loc_C1244E: FMemLdRf unk_4CFE91
  loc_C12453: CVarRef
  loc_C12458: LitI2_Byte &HFF
  loc_C1245A: FLdRfVar var_B4
  loc_C1245D: FnCDblVar
  loc_C1245F: FLdRfVar var_E0
  loc_C12462: FnCDblVar
  loc_C12464: SubR4
  loc_C12465: CVarR8
  loc_C12469: PopAdLdVar
  loc_C1246A: FMemLdRf 
  loc_C1246F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C12474: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C12483: FFreeVar var_B4 = ""
  loc_C1248A: FLdRfVar var_B4
  loc_C1248D: FLdRfVar var_A4
  loc_C12490: LitVarStr var_A0, "MapaImpuMes12"
  loc_C12495: PopAdLdVar
  loc_C12496: FLdRfVar var_90
  loc_C12499: FLdRfVar var_8C
  loc_C1249C: FLdPr var_88
  loc_C1249F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C124A4: FLdPr var_8C
  loc_C124A7:  = Me.Fields
  loc_C124AC: FLdPr var_90
  loc_C124AF: from_stack_2 = Me.Item(from_stack_1)
  loc_C124B4: FLdPr var_A4
  loc_C124B7:  = Me.Value
  loc_C124BC: FLdRfVar var_E0
  loc_C124BF: FLdRfVar var_D0
  loc_C124C2: LitVarStr var_C4, "PagaImpuMes12"
  loc_C124C7: PopAdLdVar
  loc_C124C8: FLdRfVar var_CC
  loc_C124CB: FLdRfVar var_C8
  loc_C124CE: FLdPr var_88
  loc_C124D1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C124D6: FLdPr var_C8
  loc_C124D9:  = Me.Fields
  loc_C124DE: FLdPr var_CC
  loc_C124E1: from_stack_2 = Me.Item(from_stack_1)
  loc_C124E6: FLdPr var_D0
  loc_C124E9:  = Me.Value
  loc_C124EE: LitI2_Byte 0
  loc_C124F0: FMemLdRf unk_4CFE91
  loc_C124F5: CVarRef
  loc_C124FA: LitI2_Byte &HFF
  loc_C124FC: FLdRfVar var_B4
  loc_C124FF: FnCDblVar
  loc_C12501: FLdRfVar var_E0
  loc_C12504: FnCDblVar
  loc_C12506: SubR4
  loc_C12507: CVarR8
  loc_C1250B: PopAdLdVar
  loc_C1250C: FMemLdRf 
  loc_C12511: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C12516: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_C8 = "": var_CC = ""
  loc_C12525: FFreeVar var_B4 = ""
  loc_C1252C: LitNothing
  loc_C1252E: FStAd var_88 
  loc_C12532: ExitProcHresult
End Function

Private Function Proc_147_41_A0926C(arg_C) 'A0926C
  'Data Table: 4CFE80
  loc_A090F4: LitI2_Byte 0
  loc_A090F6: FMemLdRf unk_4CFE91
  loc_A090FB: CVarRef
  loc_A09100: LitI2_Byte &HFF
  loc_A09102: FMemLdR4 arg_C(12)
  loc_A09107: CVarStr var_98
  loc_A0910A: PopAdLdVar
  loc_A0910B: FLdRfVar var_88
  loc_A0910E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A09113: LitI2_Byte 0
  loc_A09115: FMemLdRf unk_4CFE91
  loc_A0911A: CVarRef
  loc_A0911F: LitI2_Byte &HFF
  loc_A09121: FMemLdR4 arg_C(16)
  loc_A09126: CVarStr var_98
  loc_A09129: PopAdLdVar
  loc_A0912A: FLdRfVar var_88
  loc_A0912D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A09132: LitI2_Byte 0
  loc_A09134: FMemLdRf unk_4CFE91
  loc_A09139: CVarRef
  loc_A0913E: LitI2_Byte &HFF
  loc_A09140: FMemLdR4 arg_C(20)
  loc_A09145: CVarStr var_98
  loc_A09148: PopAdLdVar
  loc_A09149: FLdRfVar var_88
  loc_A0914C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A09151: LitI2_Byte 0
  loc_A09153: FMemLdRf unk_4CFE91
  loc_A09158: CVarRef
  loc_A0915D: LitI2_Byte &HFF
  loc_A0915F: FMemLdR4 arg_C(24)
  loc_A09164: CVarStr var_98
  loc_A09167: PopAdLdVar
  loc_A09168: FLdRfVar var_88
  loc_A0916B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A09170: LitI2_Byte 0
  loc_A09172: FMemLdRf unk_4CFE91
  loc_A09177: CVarRef
  loc_A0917C: LitI2_Byte &HFF
  loc_A0917E: FMemLdR4 arg_C(28)
  loc_A09183: CVarStr var_98
  loc_A09186: PopAdLdVar
  loc_A09187: FLdRfVar var_88
  loc_A0918A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0918F: LitI2_Byte 0
  loc_A09191: FMemLdRf unk_4CFE91
  loc_A09196: CVarRef
  loc_A0919B: LitI2_Byte &HFF
  loc_A0919D: FMemLdR4 arg_C(32)
  loc_A091A2: CVarStr var_98
  loc_A091A5: PopAdLdVar
  loc_A091A6: FLdRfVar var_88
  loc_A091A9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A091AE: LitI2_Byte 0
  loc_A091B0: FMemLdRf unk_4CFE91
  loc_A091B5: CVarRef
  loc_A091BA: LitI2_Byte &HFF
  loc_A091BC: FMemLdR4 arg_C(36)
  loc_A091C1: CVarStr var_98
  loc_A091C4: PopAdLdVar
  loc_A091C5: FLdRfVar var_88
  loc_A091C8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A091CD: LitI2_Byte 0
  loc_A091CF: FMemLdRf unk_4CFE91
  loc_A091D4: CVarRef
  loc_A091D9: LitI2_Byte &HFF
  loc_A091DB: FMemLdR4 arg_C(40)
  loc_A091E0: CVarStr var_98
  loc_A091E3: PopAdLdVar
  loc_A091E4: FLdRfVar var_88
  loc_A091E7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A091EC: LitI2_Byte 0
  loc_A091EE: FMemLdRf unk_4CFE91
  loc_A091F3: CVarRef
  loc_A091F8: LitI2_Byte &HFF
  loc_A091FA: FMemLdR4 arg_C(44)
  loc_A091FF: CVarStr var_98
  loc_A09202: PopAdLdVar
  loc_A09203: FLdRfVar var_88
  loc_A09206: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0920B: LitI2_Byte 0
  loc_A0920D: FMemLdRf unk_4CFE91
  loc_A09212: CVarRef
  loc_A09217: LitI2_Byte &HFF
  loc_A09219: FMemLdR4 arg_C(48)
  loc_A0921E: CVarStr var_98
  loc_A09221: PopAdLdVar
  loc_A09222: FLdRfVar var_88
  loc_A09225: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0922A: LitI2_Byte 0
  loc_A0922C: FMemLdRf unk_4CFE91
  loc_A09231: CVarRef
  loc_A09236: LitI2_Byte &HFF
  loc_A09238: FMemLdR4 arg_C(52)
  loc_A0923D: CVarStr var_98
  loc_A09240: PopAdLdVar
  loc_A09241: FLdRfVar var_88
  loc_A09244: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A09249: LitI2_Byte 0
  loc_A0924B: FMemLdRf unk_4CFE91
  loc_A09250: CVarRef
  loc_A09255: LitI2_Byte &HFF
  loc_A09257: FMemLdR4 arg_C(56)
  loc_A0925C: CVarStr var_98
  loc_A0925F: PopAdLdVar
  loc_A09260: FLdRfVar var_88
  loc_A09263: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A09268: ExitProcHresult
  loc_A09269: CExtInstUnk
End Function

Private Function Proc_147_42_AF9E7C() 'AF9E7C
  'Data Table: 4CFE80
  loc_AF9750: LitVarStr var_94, "<html>"
  loc_AF9755: PopAdLdVar
  loc_AF9756: FLdPr Me
  loc_AF9759: MemLdRfVar from_stack_1.htmFile
  loc_AF975C: LdPrVar
  loc_AF975E: LateMemCall
  loc_AF9764: LitVarStr var_94, "<head>"
  loc_AF9769: PopAdLdVar
  loc_AF976A: FLdPr Me
  loc_AF976D: MemLdRfVar from_stack_1.htmFile
  loc_AF9770: LdPrVar
  loc_AF9772: LateMemCall
  loc_AF9778: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AF977D: PopAdLdVar
  loc_AF977E: FLdPr Me
  loc_AF9781: MemLdRfVar from_stack_1.htmFile
  loc_AF9784: LdPrVar
  loc_AF9786: LateMemCall
  loc_AF978C: LitStr "<title>"
  loc_AF978F: LitStr "Municipalidad de Guaymallén"
  loc_AF9792: ConcatStr
  loc_AF9793: FStStrNoPop var_A8
  loc_AF9796: LitStr " - Anexo III - "
  loc_AF9799: ConcatStr
  loc_AF979A: FStStrNoPop var_B4
  loc_AF979D: FLdRfVar var_B0
  loc_AF97A0: FLdPr Me
  loc_AF97A3: VCallAd Control_ID_cboPeriodo
  loc_AF97A6: FStAdFunc var_AC
  loc_AF97A9: FLdPr var_AC
  loc_AF97AC:  = Me.Text
  loc_AF97B1: ILdRf var_B0
  loc_AF97B4: ConcatStr
  loc_AF97B5: FStStrNoPop var_B8
  loc_AF97B8: LitStr "</title>"
  loc_AF97BB: ConcatStr
  loc_AF97BC: CVarStr var_C8
  loc_AF97BF: PopAdLdVar
  loc_AF97C0: FLdPr Me
  loc_AF97C3: MemLdRfVar from_stack_1.htmFile
  loc_AF97C6: LdPrVar
  loc_AF97C8: LateMemCall
  loc_AF97CE: FFreeStr var_A8 = "": var_B4 = "": var_B0 = ""
  loc_AF97D9: FFree1Ad var_AC
  loc_AF97DC: FFree1Var var_C8 = ""
  loc_AF97DF: LitStr vbNullString
  loc_AF97E2: ILdRf Me
  loc_AF97E5: CastAd
  loc_AF97E8: FStAdFunc var_AC
  loc_AF97EB: FLdRfVar var_AC
  loc_AF97EE: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AF97F3: FFree1Ad var_AC
  loc_AF97F6: LitI4 0
  loc_AF97FB: FStStrCopy var_B0
  loc_AF97FE: FLdRfVar var_B0
  loc_AF9801: LitI4 0
  loc_AF9806: FStStrCopy var_A8
  loc_AF9809: FLdRfVar var_A8
  loc_AF980C: LitI2_Byte &HFF
  loc_AF980E: PopTmpLdAd2 var_CA
  loc_AF9811: FLdPr Me
  loc_AF9814: MemLdRfVar from_stack_1.htmFile
  loc_AF9817: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AF981C: FFreeStr var_A8 = ""
  loc_AF9823: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AF9828: PopAdLdVar
  loc_AF9829: FLdPr Me
  loc_AF982C: MemLdRfVar from_stack_1.htmFile
  loc_AF982F: LdPrVar
  loc_AF9831: LateMemCall
  loc_AF9837: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AF983C: PopAdLdVar
  loc_AF983D: FLdPr Me
  loc_AF9840: MemLdRfVar from_stack_1.htmFile
  loc_AF9843: LdPrVar
  loc_AF9845: LateMemCall
  loc_AF984B: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AF9850: PopAdLdVar
  loc_AF9851: FLdPr Me
  loc_AF9854: MemLdRfVar from_stack_1.htmFile
  loc_AF9857: LdPrVar
  loc_AF9859: LateMemCall
  loc_AF985F: FLdPr Me
  loc_AF9862: MemLdI2 bLogos
  loc_AF9865: BranchF loc_AF987C
  loc_AF9868: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AF986D: PopAdLdVar
  loc_AF986E: FLdPr Me
  loc_AF9871: MemLdRfVar from_stack_1.htmFile
  loc_AF9874: LdPrVar
  loc_AF9876: LateMemCall
  loc_AF987C: LitVarStr var_A4, "    <br><br>"
  loc_AF9881: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AF9886: FStVarCopyObj var_C8
  loc_AF9889: FLdRfVar var_C8
  loc_AF988C: FLdRfVar var_DC
  loc_AF988F: ImpAdCallFPR4  = Ucase()
  loc_AF9894: FLdRfVar var_DC
  loc_AF9897: ConcatVar var_EC
  loc_AF989B: LitVarStr var_FC, "</p>"
  loc_AF98A0: ConcatVar var_10C
  loc_AF98A4: PopAdLdVar
  loc_AF98A5: FLdPr Me
  loc_AF98A8: MemLdRfVar from_stack_1.htmFile
  loc_AF98AB: LdPrVar
  loc_AF98AD: LateMemCall
  loc_AF98B3: FFreeVar var_C8 = "": var_DC = "": var_EC = ""
  loc_AF98BE: LitStr "    <p>"
  loc_AF98C1: FLdRfVar var_A8
  loc_AF98C4: FLdPr Me
  loc_AF98C7:  = Me.Caption
  loc_AF98CC: ILdRf var_A8
  loc_AF98CF: ConcatStr
  loc_AF98D0: FStStrNoPop var_B0
  loc_AF98D3: LitStr "</p></th>"
  loc_AF98D6: ConcatStr
  loc_AF98D7: CVarStr var_C8
  loc_AF98DA: PopAdLdVar
  loc_AF98DB: FLdPr Me
  loc_AF98DE: MemLdRfVar from_stack_1.htmFile
  loc_AF98E1: LdPrVar
  loc_AF98E3: LateMemCall
  loc_AF98E9: FFreeStr var_A8 = ""
  loc_AF98F0: FFree1Var var_C8 = ""
  loc_AF98F3: LitVarStr var_94, "  </tr>"
  loc_AF98F8: PopAdLdVar
  loc_AF98F9: FLdPr Me
  loc_AF98FC: MemLdRfVar from_stack_1.htmFile
  loc_AF98FF: LdPrVar
  loc_AF9901: LateMemCall
  loc_AF9907: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_AF990C: PopAdLdVar
  loc_AF990D: FLdPr Me
  loc_AF9910: MemLdRfVar from_stack_1.htmFile
  loc_AF9913: LdPrVar
  loc_AF9915: LateMemCall
  loc_AF991B: LitStr "    <td colspan=""2"" align=""left"">Repartición/Organismo: "
  loc_AF991E: LitStr "Municipalidad de Guaymallén"
  loc_AF9921: ConcatStr
  loc_AF9922: FStStrNoPop var_A8
  loc_AF9925: LitStr "</td>"
  loc_AF9928: ConcatStr
  loc_AF9929: CVarStr var_C8
  loc_AF992C: PopAdLdVar
  loc_AF992D: FLdPr Me
  loc_AF9930: MemLdRfVar from_stack_1.htmFile
  loc_AF9933: LdPrVar
  loc_AF9935: LateMemCall
  loc_AF993B: FFree1Str var_A8
  loc_AF993E: FFree1Var var_C8 = ""
  loc_AF9941: LitVarStr var_94, "  </tr>"
  loc_AF9946: PopAdLdVar
  loc_AF9947: FLdPr Me
  loc_AF994A: MemLdRfVar from_stack_1.htmFile
  loc_AF994D: LdPrVar
  loc_AF994F: LateMemCall
  loc_AF9955: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_AF995A: PopAdLdVar
  loc_AF995B: FLdPr Me
  loc_AF995E: MemLdRfVar from_stack_1.htmFile
  loc_AF9961: LdPrVar
  loc_AF9963: LateMemCall
  loc_AF9969: FLdPr Me
  loc_AF996C: VCallAd Control_ID_mskHasta
  loc_AF996F: FStAdFunc var_138
  loc_AF9972: FLdPr var_138
  loc_AF9975: LateIdLdVar var_EC DispID_15 0
  loc_AF997C: PopAd
  loc_AF997E: FLdRfVar var_144
  loc_AF9981: FLdPr Me
  loc_AF9984: VCallAd Control_ID_cboPeriodo
  loc_AF9987: FStAdFunc var_140
  loc_AF998A: FLdPr var_140
  loc_AF998D:  = Me.Text
  loc_AF9992: ILdRf var_144
  loc_AF9995: CI2Str
  loc_AF9997: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_AF999C: FStStr var_1CC
  loc_AF999F: LitStr "    <td>Ejercicio: "
  loc_AF99A2: FLdRfVar var_A8
  loc_AF99A5: FLdPr Me
  loc_AF99A8: VCallAd Control_ID_cboPeriodo
  loc_AF99AB: FStAdFunc var_AC
  loc_AF99AE: FLdPr var_AC
  loc_AF99B1:  = Me.Text
  loc_AF99B6: ILdRf var_A8
  loc_AF99B9: ConcatStr
  loc_AF99BA: FStStrNoPop var_B0
  loc_AF99BD: LitStr "<br>Desde: "
  loc_AF99C0: ConcatStr
  loc_AF99C1: FStStrNoPop var_B4
  loc_AF99C4: FLdPr Me
  loc_AF99C7: VCallAd Control_ID_mskDesde
  loc_AF99CA: FStAdFunc var_120
  loc_AF99CD: FLdPr var_120
  loc_AF99D0: LateIdLdVar var_C8 DispID_15 0
  loc_AF99D7: CStrVarTmp
  loc_AF99D8: FStStrNoPop var_B8
  loc_AF99DB: ConcatStr
  loc_AF99DC: FStStrNoPop var_124
  loc_AF99DF: LitStr "<br>Hasta: "
  loc_AF99E2: ConcatStr
  loc_AF99E3: FStStrNoPop var_12C
  loc_AF99E6: FLdPr Me
  loc_AF99E9: VCallAd Control_ID_mskHasta
  loc_AF99EC: FStAdFunc var_128
  loc_AF99EF: FLdPr var_128
  loc_AF99F2: LateIdLdVar var_DC DispID_15 0
  loc_AF99F9: CStrVarTmp
  loc_AF99FA: FStStrNoPop var_130
  loc_AF99FD: ConcatStr
  loc_AF99FE: FStStrNoPop var_134
  loc_AF9A01: LitStr " ("
  loc_AF9A04: ConcatStr
  loc_AF9A05: CVarStr var_178
  loc_AF9A08: LitVarStr var_FC, "Definitivo"
  loc_AF9A0D: FStVarCopyObj var_158
  loc_AF9A10: FLdRfVar var_158
  loc_AF9A13: LitVarStr var_A4, "Provisorio"
  loc_AF9A18: FStVarCopyObj var_10C
  loc_AF9A1B: FLdRfVar var_10C
  loc_AF9A1E: FLdRfVar var_EC
  loc_AF9A21: CStrVarTmp
  loc_AF9A22: FStStrNoPop var_13C
  loc_AF9A25: CDateStr
  loc_AF9A27: FLdZeroAd var_1CC
  loc_AF9A2A: FStStrNoPop var_148
  loc_AF9A2D: CDateStr
  loc_AF9A2F: GtR4
  loc_AF9A30: CVarBoolI2 var_94
  loc_AF9A34: FLdRfVar var_168
  loc_AF9A37: ImpAdCallFPR4  = IIf(, , )
  loc_AF9A3C: FLdRfVar var_168
  loc_AF9A3F: ConcatVar var_188
  loc_AF9A43: LitVarStr var_11C, ")"
  loc_AF9A48: ConcatVar var_198
  loc_AF9A4C: LitVarStr var_1A8, "</td>"
  loc_AF9A51: ConcatVar var_1B8
  loc_AF9A55: PopAdLdVar
  loc_AF9A56: FLdPr Me
  loc_AF9A59: MemLdRfVar from_stack_1.htmFile
  loc_AF9A5C: LdPrVar
  loc_AF9A5E: LateMemCall
  loc_AF9A64: FFreeStr var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_13C = "": var_144 = "": var_148 = ""
  loc_AF9A7F: FFreeAd var_AC = "": var_120 = "": var_128 = "": var_138 = ""
  loc_AF9A8C: FFreeVar var_C8 = "": var_DC = "": var_EC = "": var_94 = "": var_10C = "": var_158 = "": var_178 = "": var_168 = "": var_188 = "": var_198 = ""
  loc_AF9AA5: FLdPr Me
  loc_AF9AA8: VCallAd Control_ID_CodiPartMsk
  loc_AF9AAB: FStAdFunc var_AC
  loc_AF9AAE: FLdPr var_AC
  loc_AF9AB1: LateIdLdVar var_C8 DispID_22 0
  loc_AF9AB8: CStrVarTmp
  loc_AF9AB9: FStStrNoPop var_A8
  loc_AF9ABC: LitStr vbNullString
  loc_AF9ABF: NeStr
  loc_AF9AC1: FLdPr Me
  loc_AF9AC4: VCallAd Control_ID_CodiPartMsk
  loc_AF9AC7: FStAdFunc var_120
  loc_AF9ACA: FLdPr var_120
  loc_AF9ACD: LateIdLdVar var_DC DispID_22 0
  loc_AF9AD4: CStrVarTmp
  loc_AF9AD5: FStStrNoPop var_B0
  loc_AF9AD8: LitStr "9"
  loc_AF9ADB: EqStr
  loc_AF9ADD: FLdRfVar var_CA
  loc_AF9AE0: FLdPr Me
  loc_AF9AE3: VCallAd Control_ID_chkNotCodiPart
  loc_AF9AE6: FStAdFunc var_128
  loc_AF9AE9: FLdPr var_128
  loc_AF9AEC:  = Me.Value
  loc_AF9AF1: FLdI2 var_CA
  loc_AF9AF4: CI4UI1
  loc_AF9AF5: LitI4 1
  loc_AF9AFA: EqI4
  loc_AF9AFB: AndI4
  loc_AF9AFC: NotI4
  loc_AF9AFD: AndI4
  loc_AF9AFE: FLdPr Me
  loc_AF9B01: VCallAd Control_ID_CodiPartMsk
  loc_AF9B04: FStAdFunc var_138
  loc_AF9B07: FLdPr var_138
  loc_AF9B0A: LateIdLdVar var_EC DispID_22 0
  loc_AF9B11: CStrVarTmp
  loc_AF9B12: FStStrNoPop var_B4
  loc_AF9B15: LitStr "2"
  loc_AF9B18: EqStr
  loc_AF9B1A: FLdRfVar var_1CE
  loc_AF9B1D: FLdPr Me
  loc_AF9B20: VCallAd Control_ID_chkNotCodiPart
  loc_AF9B23: FStAdFunc var_140
  loc_AF9B26: FLdPr var_140
  loc_AF9B29:  = Me.Value
  loc_AF9B2E: FLdI2 var_1CE
  loc_AF9B31: CI4UI1
  loc_AF9B32: LitI4 1
  loc_AF9B37: EqI4
  loc_AF9B38: AndI4
  loc_AF9B39: NotI4
  loc_AF9B3A: AndI4
  loc_AF9B3B: FFreeStr var_A8 = "": var_B0 = ""
  loc_AF9B44: FFreeAd var_AC = "": var_120 = "": var_128 = "": var_138 = ""
  loc_AF9B51: FFreeVar var_C8 = "": var_DC = ""
  loc_AF9B5A: BranchF loc_AF9CC1
  loc_AF9B5D: FLdPr Me
  loc_AF9B60: VCallAd Control_ID_CodiPartMsk
  loc_AF9B63: FStAdFunc var_AC
  loc_AF9B66: FLdPr var_AC
  loc_AF9B69: LateIdLdVar var_C8 DispID_0 0
  loc_AF9B70: CStrVarTmp
  loc_AF9B71: FStStrNoPop var_A8
  loc_AF9B74: FnLenStr
  loc_AF9B75: LitI4 8
  loc_AF9B7A: EqI4
  loc_AF9B7B: FFree1Str var_A8
  loc_AF9B7E: FFree1Ad var_AC
  loc_AF9B81: FFree1Var var_C8 = ""
  loc_AF9B84: BranchF loc_AF9BFB
  loc_AF9B87: LitStr "    <td align=""right"">Partida: "
  loc_AF9B8A: FLdPr Me
  loc_AF9B8D: VCallAd Control_ID_CodiPartMsk
  loc_AF9B90: FStAdFunc var_AC
  loc_AF9B93: FLdPr var_AC
  loc_AF9B96: LateIdLdVar var_C8 DispID_0 0
  loc_AF9B9D: CStrVarTmp
  loc_AF9B9E: FStStrNoPop var_A8
  loc_AF9BA1: ConcatStr
  loc_AF9BA2: FStStrNoPop var_B0
  loc_AF9BA5: LitStr " - "
  loc_AF9BA8: ConcatStr
  loc_AF9BA9: FStStrNoPop var_B8
  loc_AF9BAC: FLdRfVar var_B4
  loc_AF9BAF: FLdPr Me
  loc_AF9BB2: VCallAd Control_ID_CodiPartLbl
  loc_AF9BB5: FStAdFunc var_120
  loc_AF9BB8: FLdPr var_120
  loc_AF9BBB:  = Me.Caption
  loc_AF9BC0: ILdRf var_B4
  loc_AF9BC3: ConcatStr
  loc_AF9BC4: FStStrNoPop var_124
  loc_AF9BC7: LitStr "</td>"
  loc_AF9BCA: ConcatStr
  loc_AF9BCB: CVarStr var_DC
  loc_AF9BCE: PopAdLdVar
  loc_AF9BCF: FLdPr Me
  loc_AF9BD2: MemLdRfVar from_stack_1.htmFile
  loc_AF9BD5: LdPrVar
  loc_AF9BD7: LateMemCall
  loc_AF9BDD: FFreeStr var_A8 = "": var_B0 = "": var_B8 = "": var_B4 = ""
  loc_AF9BEA: FFreeAd var_AC = ""
  loc_AF9BF1: FFreeVar var_C8 = ""
  loc_AF9BF8: Branch loc_AF9CBE
  loc_AF9BFB: FLdRfVar var_CA
  loc_AF9BFE: FLdPr Me
  loc_AF9C01: VCallAd Control_ID_chkNotCodiPart
  loc_AF9C04: FStAdFunc var_AC
  loc_AF9C07: FLdPr var_AC
  loc_AF9C0A:  = Me.Value
  loc_AF9C0F: FLdI2 var_CA
  loc_AF9C12: CI4UI1
  loc_AF9C13: LitI4 0
  loc_AF9C18: EqI4
  loc_AF9C19: FFree1Ad var_AC
  loc_AF9C1C: BranchF loc_AF9C70
  loc_AF9C1F: LitStr "    <td align=""right"">Partidas que comienzan con: "
  loc_AF9C22: FLdPr Me
  loc_AF9C25: VCallAd Control_ID_CodiPartMsk
  loc_AF9C28: FStAdFunc var_AC
  loc_AF9C2B: FLdPr var_AC
  loc_AF9C2E: LateIdLdVar var_C8 DispID_0 0
  loc_AF9C35: CStrVarTmp
  loc_AF9C36: FStStrNoPop var_A8
  loc_AF9C39: ConcatStr
  loc_AF9C3A: FStStrNoPop var_B0
  loc_AF9C3D: LitStr "..."
  loc_AF9C40: ConcatStr
  loc_AF9C41: FStStrNoPop var_B4
  loc_AF9C44: LitStr "</td>"
  loc_AF9C47: ConcatStr
  loc_AF9C48: CVarStr var_DC
  loc_AF9C4B: PopAdLdVar
  loc_AF9C4C: FLdPr Me
  loc_AF9C4F: MemLdRfVar from_stack_1.htmFile
  loc_AF9C52: LdPrVar
  loc_AF9C54: LateMemCall
  loc_AF9C5A: FFreeStr var_A8 = "": var_B0 = ""
  loc_AF9C63: FFree1Ad var_AC
  loc_AF9C66: FFreeVar var_C8 = ""
  loc_AF9C6D: Branch loc_AF9CBE
  loc_AF9C70: LitStr "    <td align=""right"">Partidas que no comienzan con: "
  loc_AF9C73: FLdPr Me
  loc_AF9C76: VCallAd Control_ID_CodiPartMsk
  loc_AF9C79: FStAdFunc var_AC
  loc_AF9C7C: FLdPr var_AC
  loc_AF9C7F: LateIdLdVar var_C8 DispID_0 0
  loc_AF9C86: CStrVarTmp
  loc_AF9C87: FStStrNoPop var_A8
  loc_AF9C8A: ConcatStr
  loc_AF9C8B: FStStrNoPop var_B0
  loc_AF9C8E: LitStr "..."
  loc_AF9C91: ConcatStr
  loc_AF9C92: FStStrNoPop var_B4
  loc_AF9C95: LitStr "</td>"
  loc_AF9C98: ConcatStr
  loc_AF9C99: CVarStr var_DC
  loc_AF9C9C: PopAdLdVar
  loc_AF9C9D: FLdPr Me
  loc_AF9CA0: MemLdRfVar from_stack_1.htmFile
  loc_AF9CA3: LdPrVar
  loc_AF9CA5: LateMemCall
  loc_AF9CAB: FFreeStr var_A8 = "": var_B0 = ""
  loc_AF9CB4: FFree1Ad var_AC
  loc_AF9CB7: FFreeVar var_C8 = ""
  loc_AF9CBE: Branch loc_AF9CD5
  loc_AF9CC1: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_AF9CC6: PopAdLdVar
  loc_AF9CC7: FLdPr Me
  loc_AF9CCA: MemLdRfVar from_stack_1.htmFile
  loc_AF9CCD: LdPrVar
  loc_AF9CCF: LateMemCall
  loc_AF9CD5: LitVarStr var_94, "  </tr>"
  loc_AF9CDA: PopAdLdVar
  loc_AF9CDB: FLdPr Me
  loc_AF9CDE: MemLdRfVar from_stack_1.htmFile
  loc_AF9CE1: LdPrVar
  loc_AF9CE3: LateMemCall
  loc_AF9CE9: LitVarStr var_94, "</table>"
  loc_AF9CEE: PopAdLdVar
  loc_AF9CEF: FLdPr Me
  loc_AF9CF2: MemLdRfVar from_stack_1.htmFile
  loc_AF9CF5: LdPrVar
  loc_AF9CF7: LateMemCall
  loc_AF9CFD: LitVarStr var_94, "<table with=""90" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AF9D02: PopAdLdVar
  loc_AF9D03: FLdPr Me
  loc_AF9D06: MemLdRfVar from_stack_1.htmFile
  loc_AF9D09: LdPrVar
  loc_AF9D0B: LateMemCall
  loc_AF9D11: LitVarStr var_94, "  <THEAD>"
  loc_AF9D16: PopAdLdVar
  loc_AF9D17: FLdPr Me
  loc_AF9D1A: MemLdRfVar from_stack_1.htmFile
  loc_AF9D1D: LdPrVar
  loc_AF9D1F: LateMemCall
  loc_AF9D25: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_AF9D2A: PopAdLdVar
  loc_AF9D2B: FLdPr Me
  loc_AF9D2E: MemLdRfVar from_stack_1.htmFile
  loc_AF9D31: LdPrVar
  loc_AF9D33: LateMemCall
  loc_AF9D39: LitVarStr var_94, "     <th>Partida</th>"
  loc_AF9D3E: PopAdLdVar
  loc_AF9D3F: FLdPr Me
  loc_AF9D42: MemLdRfVar from_stack_1.htmFile
  loc_AF9D45: LdPrVar
  loc_AF9D47: LateMemCall
  loc_AF9D4D: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Crédito Autorizado Original</th>"
  loc_AF9D52: PopAdLdVar
  loc_AF9D53: FLdPr Me
  loc_AF9D56: MemLdRfVar from_stack_1.htmFile
  loc_AF9D59: LdPrVar
  loc_AF9D5B: LateMemCall
  loc_AF9D61: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Norma<br>Legal</th>"
  loc_AF9D66: PopAdLdVar
  loc_AF9D67: FLdPr Me
  loc_AF9D6A: MemLdRfVar from_stack_1.htmFile
  loc_AF9D6D: LdPrVar
  loc_AF9D6F: LateMemCall
  loc_AF9D75: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Aumentos</th>"
  loc_AF9D7A: PopAdLdVar
  loc_AF9D7B: FLdPr Me
  loc_AF9D7E: MemLdRfVar from_stack_1.htmFile
  loc_AF9D81: LdPrVar
  loc_AF9D83: LateMemCall
  loc_AF9D89: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Disminu<br>ciones</th>"
  loc_AF9D8E: PopAdLdVar
  loc_AF9D8F: FLdPr Me
  loc_AF9D92: MemLdRfVar from_stack_1.htmFile
  loc_AF9D95: LdPrVar
  loc_AF9D97: LateMemCall
  loc_AF9D9D: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Crédito<br>Autorizado<br>Definitivo</th>"
  loc_AF9DA2: PopAdLdVar
  loc_AF9DA3: FLdPr Me
  loc_AF9DA6: MemLdRfVar from_stack_1.htmFile
  loc_AF9DA9: LdPrVar
  loc_AF9DAB: LateMemCall
  loc_AF9DB1: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Compromisos contraidos</th>"
  loc_AF9DB6: PopAdLdVar
  loc_AF9DB7: FLdPr Me
  loc_AF9DBA: MemLdRfVar from_stack_1.htmFile
  loc_AF9DBD: LdPrVar
  loc_AF9DBF: LateMemCall
  loc_AF9DC5: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Devengado</th>"
  loc_AF9DCA: PopAdLdVar
  loc_AF9DCB: FLdPr Me
  loc_AF9DCE: MemLdRfVar from_stack_1.htmFile
  loc_AF9DD1: LdPrVar
  loc_AF9DD3: LateMemCall
  loc_AF9DD9: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Mandado a pagar</th>"
  loc_AF9DDE: PopAdLdVar
  loc_AF9DDF: FLdPr Me
  loc_AF9DE2: MemLdRfVar from_stack_1.htmFile
  loc_AF9DE5: LdPrVar
  loc_AF9DE7: LateMemCall
  loc_AF9DED: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Créditos<br>Reapropiados<br>al Ejercicio<br>siguiente</th>"
  loc_AF9DF2: PopAdLdVar
  loc_AF9DF3: FLdPr Me
  loc_AF9DF6: MemLdRfVar from_stack_1.htmFile
  loc_AF9DF9: LdPrVar
  loc_AF9DFB: LateMemCall
  loc_AF9E01: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Pagado</th>"
  loc_AF9E06: PopAdLdVar
  loc_AF9E07: FLdPr Me
  loc_AF9E0A: MemLdRfVar from_stack_1.htmFile
  loc_AF9E0D: LdPrVar
  loc_AF9E0F: LateMemCall
  loc_AF9E15: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Pasivos SIN <br> Orden de Pago</th>"
  loc_AF9E1A: PopAdLdVar
  loc_AF9E1B: FLdPr Me
  loc_AF9E1E: MemLdRfVar from_stack_1.htmFile
  loc_AF9E21: LdPrVar
  loc_AF9E23: LateMemCall
  loc_AF9E29: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Saldo no<br>utilizado</th>"
  loc_AF9E2E: PopAdLdVar
  loc_AF9E2F: FLdPr Me
  loc_AF9E32: MemLdRfVar from_stack_1.htmFile
  loc_AF9E35: LdPrVar
  loc_AF9E37: LateMemCall
  loc_AF9E3D: LitVarStr var_94, "     <th width=""7" & Chr(37) & """>Pasivos CON <br> Orden de Pago</th>"
  loc_AF9E42: PopAdLdVar
  loc_AF9E43: FLdPr Me
  loc_AF9E46: MemLdRfVar from_stack_1.htmFile
  loc_AF9E49: LdPrVar
  loc_AF9E4B: LateMemCall
  loc_AF9E51: LitVarStr var_94, "   </tr>"
  loc_AF9E56: PopAdLdVar
  loc_AF9E57: FLdPr Me
  loc_AF9E5A: MemLdRfVar from_stack_1.htmFile
  loc_AF9E5D: LdPrVar
  loc_AF9E5F: LateMemCall
  loc_AF9E65: LitVarStr var_94, "  </THEAD>"
  loc_AF9E6A: PopAdLdVar
  loc_AF9E6B: FLdPr Me
  loc_AF9E6E: MemLdRfVar from_stack_1.htmFile
  loc_AF9E71: LdPrVar
  loc_AF9E73: LateMemCall
  loc_AF9E79: ExitProcHresult
End Function

Private Function Proc_147_43_A01740() 'A01740
  'Data Table: 4CFE80
  loc_A015D4: LitVarStr var_94, "</table>"
  loc_A015D9: PopAdLdVar
  loc_A015DA: FLdPr Me
  loc_A015DD: MemLdRfVar from_stack_1.htmFile
  loc_A015E0: LdPrVar
  loc_A015E2: LateMemCall
  loc_A015E8: LitVarStr var_94, "<br>"
  loc_A015ED: PopAdLdVar
  loc_A015EE: FLdPr Me
  loc_A015F1: MemLdRfVar from_stack_1.htmFile
  loc_A015F4: LdPrVar
  loc_A015F6: LateMemCall
  loc_A015FC: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A01601: PopAdLdVar
  loc_A01602: FLdPr Me
  loc_A01605: MemLdRfVar from_stack_1.htmFile
  loc_A01608: LdPrVar
  loc_A0160A: LateMemCall
  loc_A01610: LitVarStr var_94, "  <tr>"
  loc_A01615: PopAdLdVar
  loc_A01616: FLdPr Me
  loc_A01619: MemLdRfVar from_stack_1.htmFile
  loc_A0161C: LdPrVar
  loc_A0161E: LateMemCall
  loc_A01624: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A01629: PopAdLdVar
  loc_A0162A: FLdPr Me
  loc_A0162D: MemLdRfVar from_stack_1.htmFile
  loc_A01630: LdPrVar
  loc_A01632: LateMemCall
  loc_A01638: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A0163D: PopAdLdVar
  loc_A0163E: FLdPr Me
  loc_A01641: MemLdRfVar from_stack_1.htmFile
  loc_A01644: LdPrVar
  loc_A01646: LateMemCall
  loc_A0164C: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A01651: PopAdLdVar
  loc_A01652: FLdPr Me
  loc_A01655: MemLdRfVar from_stack_1.htmFile
  loc_A01658: LdPrVar
  loc_A0165A: LateMemCall
  loc_A01660: LitVarStr var_94, "          <map name=""Map"">"
  loc_A01665: PopAdLdVar
  loc_A01666: FLdPr Me
  loc_A01669: MemLdRfVar from_stack_1.htmFile
  loc_A0166C: LdPrVar
  loc_A0166E: LateMemCall
  loc_A01674: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A01679: PopAdLdVar
  loc_A0167A: FLdPr Me
  loc_A0167D: MemLdRfVar from_stack_1.htmFile
  loc_A01680: LdPrVar
  loc_A01682: LateMemCall
  loc_A01688: LitVarStr var_94, "          </map>"
  loc_A0168D: PopAdLdVar
  loc_A0168E: FLdPr Me
  loc_A01691: MemLdRfVar from_stack_1.htmFile
  loc_A01694: LdPrVar
  loc_A01696: LateMemCall
  loc_A0169C: LitVarStr var_94, "    </div></th>"
  loc_A016A1: PopAdLdVar
  loc_A016A2: FLdPr Me
  loc_A016A5: MemLdRfVar from_stack_1.htmFile
  loc_A016A8: LdPrVar
  loc_A016AA: LateMemCall
  loc_A016B0: LitVarStr var_94, "  </tr>"
  loc_A016B5: PopAdLdVar
  loc_A016B6: FLdPr Me
  loc_A016B9: MemLdRfVar from_stack_1.htmFile
  loc_A016BC: LdPrVar
  loc_A016BE: LateMemCall
  loc_A016C4: LitVarStr var_94, "  <tr>"
  loc_A016C9: PopAdLdVar
  loc_A016CA: FLdPr Me
  loc_A016CD: MemLdRfVar from_stack_1.htmFile
  loc_A016D0: LdPrVar
  loc_A016D2: LateMemCall
  loc_A016D8: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A016DD: PopAdLdVar
  loc_A016DE: FLdPr Me
  loc_A016E1: MemLdRfVar from_stack_1.htmFile
  loc_A016E4: LdPrVar
  loc_A016E6: LateMemCall
  loc_A016EC: LitVarStr var_94, "  </tr>"
  loc_A016F1: PopAdLdVar
  loc_A016F2: FLdPr Me
  loc_A016F5: MemLdRfVar from_stack_1.htmFile
  loc_A016F8: LdPrVar
  loc_A016FA: LateMemCall
  loc_A01700: LitVarStr var_94, "</table>"
  loc_A01705: PopAdLdVar
  loc_A01706: FLdPr Me
  loc_A01709: MemLdRfVar from_stack_1.htmFile
  loc_A0170C: LdPrVar
  loc_A0170E: LateMemCall
  loc_A01714: LitVarStr var_94, "</body>"
  loc_A01719: PopAdLdVar
  loc_A0171A: FLdPr Me
  loc_A0171D: MemLdRfVar from_stack_1.htmFile
  loc_A01720: LdPrVar
  loc_A01722: LateMemCall
  loc_A01728: LitVarStr var_94, "</html>"
  loc_A0172D: PopAdLdVar
  loc_A0172E: FLdPr Me
  loc_A01731: MemLdRfVar from_stack_1.htmFile
  loc_A01734: LdPrVar
  loc_A01736: LateMemCall
  loc_A0173C: ExitProcHresult
End Function
