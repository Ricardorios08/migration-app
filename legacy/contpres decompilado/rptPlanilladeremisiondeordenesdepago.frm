VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptPlanilladeremisiondeordenesdepago
  Caption = "Planilla de remisión de órdenes de pago"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptPlanilladeremisiondeordenesdepago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6120
  ClientHeight = 5760
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5505
    Width = 6120
    Height = 255
    TabIndex = 21
    OleObjectBlob = "rptPlanilladeremisiondeordenesdepago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5160
    Top = 4560
    Width = 735
    Height = 615
    TabIndex = 19
    Cancel = -1  'True
    Picture = "rptPlanilladeremisiondeordenesdepago.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptPlanilladeremisiondeordenesdepago.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4320
    Width = 1815
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4320
    Width = 3015
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5895
    Height = 4215
    TabIndex = 0
    Begin VB.TextBox OpTxt
      Left = 1800
      Top = 1440
      Width = 3375
      Height = 375
      TabIndex = 8
    End
    Begin VB.CommandButton cmdFereOrpaDesde
      Left = 3000
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptPlanilladeremisiondeordenesdepago.frx":0C00
      Style = 1
    End
    Begin VB.CheckBox AnuladosChk
      Caption = "Incluye anulados"
      Left = 480
      Top = 3600
      Width = 1575
      Height = 195
      TabIndex = 13
    End
    Begin VB.Frame FrameTipo
      Caption = " Tipo "
      Left = 480
      Top = 2520
      Width = 4935
      Height = 855
      TabIndex = 9
      Begin VB.OptionButton TodosOpt
        Caption = "Todos"
        Left = 600
        Top = 360
        Width = 855
        Height = 255
        TabIndex = 10
      End
      Begin VB.OptionButton DebitoOpt
        Caption = "Débito"
        Left = 3720
        Top = 360
        Width = 855
        Height = 195
        TabIndex = 12
      End
      Begin VB.OptionButton DevengadoOpt
        Caption = "Devengado"
        Left = 2040
        Top = 360
        Width = 1215
        Height = 255
        TabIndex = 11
      End
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1800
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4080
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox FereOrpaDesdeMsk
      Left = 1800
      Top = 885
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptPlanilladeremisiondeordenesdepago.frx":1142
      ToolTipText = "Para obtener la última fecha disponible para el periodo seleccionado, presione CTRL+U."
    End
    Begin MSMask.MaskEdBox SecureOrpaMsk
      Left = 1800
      Top = 2040
      Width = 615
      Height = 285
      TabIndex = 23
      OleObjectBlob = "rptPlanilladeremisiondeordenesdepago.frx":11CA
    End
    Begin VB.Label Label4
      Caption = "Secuencia desde:"
      Left = 360
      Top = 2040
      Width = 1290
      Height = 195
      TabIndex = 22
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Órdenes de Pago:"
      Left = 420
      Top = 1440
      Width = 1290
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Fecha remisión:"
      Left = 600
      Top = 885
      Width = 1110
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 1125
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5280
    Top = 4680
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 20
    OleObjectBlob = "rptPlanilladeremisiondeordenesdepago.frx":1230
  End
End

Attribute VB_Name = "rptPlanilladeremisiondeordenesdepago"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00575408
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_005A600C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_3_005A6058
  bStruc(36) As Byte ' String fields: 9
End Type


Private Sub cmdPdf_Click() '95C7C4
  'Data Table: 496A2C
  loc_95C7AC: LitI2_Byte 0
  loc_95C7AE: ILdRf Me
  loc_95C7B1: CastAd
  loc_95C7B4: FStAdFunc var_88
  loc_95C7B7: FLdRfVar var_88
  loc_95C7BA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95C7BF: FFree1Ad var_88
  loc_95C7C2: ExitProcHresult
End Sub

Private Sub FereOrpaDesdeMsk_UnknownEvent_0 '94B5E8
  'Data Table: 496A2C
  loc_94B5D4: FLdPr Me
  loc_94B5D7: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_94B5DA: CVarAd
  loc_94B5DE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B5E3: FFree1Var var_94 = ""
  loc_94B5E6: ExitProcHresult
End Sub

Private Function FereOrpaDesdeMsk_UnknownEvent_8(arg_C) '9B1734
  'Data Table: 496A2C
  loc_9B1698: FLdPr Me
  loc_9B169B: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_9B169E: FStAdFunc var_88
  loc_9B16A1: FLdPr var_88
  loc_9B16A4: LateIdLdVar var_98 DispID_15 0
  loc_9B16AB: PopAd
  loc_9B16AD: FLdPr Me
  loc_9B16B0: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_9B16B3: FStAdFunc var_AC
  loc_9B16B6: LitI2_Byte 0
  loc_9B16B8: PopTmpLdAd2 var_A2
  loc_9B16BB: FLdZeroAd var_AC
  loc_9B16BE: FStAdFunc var_A0
  loc_9B16C1: FLdRfVar var_A0
  loc_9B16C4: LitStr vbNullString
  loc_9B16C7: LitI2_Byte 0
  loc_9B16C9: LitI2_Byte 0
  loc_9B16CB: FLdRfVar var_98
  loc_9B16CE: CStrVarTmp
  loc_9B16CF: FStStrNoPop var_9C
  loc_9B16D2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B16D7: FStStrNoPop var_A8
  loc_9B16DA: FLdPr Me
  loc_9B16DD: MemStStrCopy
  loc_9B16E1: FFreeStr var_9C = ""
  loc_9B16E8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B16F1: FFree1Var var_98 = ""
  loc_9B16F4: FLdPr Me
  loc_9B16F7: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_9B16FA: FStAdFunc var_B0
  loc_9B16FD: LitNothing
  loc_9B16FF: CastAd
  loc_9B1702: FStAdFunc var_AC
  loc_9B1705: FLdRfVar var_AC
  loc_9B1708: FLdZeroAd var_B0
  loc_9B170B: FStAdFuncNoPop
  loc_9B170E: CastAd
  loc_9B1711: FStAdFunc var_A0
  loc_9B1714: FLdRfVar var_A0
  loc_9B1717: FLdPr Me
  loc_9B171A: MemLdRfVar from_stack_1.global_96
  loc_9B171D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B1722: IStI2 arg_C
  loc_9B1725: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1730: ExitProcHresult
End Function

Private Sub cmdSalir_Click() '97B234
  'Data Table: 496A2C
  loc_97B204: LitVarStr var_94, "Cerrando..."
  loc_97B209: PopAdLdVar
  loc_97B20A: FLdPr Me
  loc_97B20D: VCallAd Control_ID_statusBar
  loc_97B210: FStAdFunc var_A8
  loc_97B213: FLdPr var_A8
  loc_97B216: LateIdSt
  loc_97B21B: FFree1Ad var_A8
  loc_97B21E: ILdRf Me
  loc_97B221: FStAdNoPop
  loc_97B225: ImpAdLdRf MemVar_C44F9C
  loc_97B228: NewIfNullPr Me
  loc_97B22B: Me.Global.Unload from_stack_1
  loc_97B230: FFree1Ad var_A8
  loc_97B233: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A724C
  'Data Table: 496A2C
  loc_9A71BC: LitI2_Byte 0
  loc_9A71BE: FLdPr Me
  loc_9A71C1: MemStI2 bGenerado
  loc_9A71C4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A71C9: ImpAdLdI2 MemVar_C3D064
  loc_9A71CC: CStrUI1
  loc_9A71CE: FStStrNoPop var_88
  loc_9A71D1: FLdPr Me
  loc_9A71D4: VCallAd Control_ID_cboPeriodo
  loc_9A71D7: FStAdFunc var_8C
  loc_9A71DA: FLdPr var_8C
  loc_9A71DD: Me.Text = from_stack_1
  loc_9A71E2: FFree1Str var_88
  loc_9A71E5: FFree1Ad var_8C
  loc_9A71E8: LitStr vbNullString
  loc_9A71EB: FLdPr Me
  loc_9A71EE: VCallAd Control_ID_OpTxt
  loc_9A71F1: FStAdFunc var_8C
  loc_9A71F4: FLdPr var_8C
  loc_9A71F7: Me.Text = from_stack_1
  loc_9A71FC: FFree1Ad var_8C
  loc_9A71FF: LitI2_Byte &HFF
  loc_9A7201: FLdPr Me
  loc_9A7204: VCallAd Control_ID_TodosOpt
  loc_9A7207: FStAdFunc var_8C
  loc_9A720A: FLdPr var_8C
  loc_9A720D: Me.Value = from_stack_1b
  loc_9A7212: FFree1Ad var_8C
  loc_9A7215: LitI4 0
  loc_9A721A: CI2I4
  loc_9A721B: FLdPr Me
  loc_9A721E: VCallAd Control_ID_AnuladosChk
  loc_9A7221: FStAdFunc var_8C
  loc_9A7224: FLdPr var_8C
  loc_9A7227: Me.Value = from_stack_1
  loc_9A722C: FFree1Ad var_8C
  loc_9A722F: Call HabilitarCriterio()
  loc_9A7234: ILdRf Me
  loc_9A7237: CastAd
  loc_9A723A: FStAdFunc var_8C
  loc_9A723D: FLdRfVar var_8C
  loc_9A7240: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A7245: FFree1Ad var_8C
  loc_9A7248: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95BCC8
  'Data Table: 496A2C
  loc_95BCB0: ILdRf Me
  loc_95BCB3: CastAd
  loc_95BCB6: FStAdFunc var_88
  loc_95BCB9: FLdRfVar var_88
  loc_95BCBC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95BCC1: FFree1Ad var_88
  loc_95BCC4: ExitProcHresult
End Sub

Private Sub cmdFereOrpaDesde_Click() '97FD08
  'Data Table: 496A2C
  loc_97FCD4: LitVar_Missing var_A4
  loc_97FCD7: PopAdLdVar
  loc_97FCD8: LitVarI4
  loc_97FCE0: PopAdLdVar
  loc_97FCE1: ImpAdLdRf MemVar_C3D9A8
  loc_97FCE4: NewIfNullPr frmCalendario
  loc_97FCE7: frmCalendario.Show from_stack_1, from_stack_2
  loc_97FCEC: ImpAdLdRf MemVar_C3D038
  loc_97FCEF: CDargRef
  loc_97FCF3: FLdPr Me
  loc_97FCF6: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_97FCF9: FStAdFunc var_A8
  loc_97FCFC: FLdPr var_A8
  loc_97FCFF: LateIdSt
  loc_97FD04: FFree1Ad var_A8
  loc_97FD07: ExitProcHresult
End Sub

Private Sub Form_Load() '9D0BA4
  'Data Table: 496A2C
  loc_9D0ACC: LitI2_Byte &HFF
  loc_9D0ACE: ImpAdStI2 MemVar_C3D840
  loc_9D0AD1: ILdRf Me
  loc_9D0AD4: CastAd
  loc_9D0AD7: FStAdFunc var_8C
  loc_9D0ADA: FLdRfVar var_8C
  loc_9D0ADD: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D0AE2: FFree1Ad var_8C
  loc_9D0AE5: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D0AE8: FLdRfVar var_88
  loc_9D0AEB: NewIfNullPr clsperiodo
  loc_9D0AEE: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D0AF3: FLdRfVar var_90
  loc_9D0AF6: FLdRfVar var_88
  loc_9D0AF9: NewIfNullPr clsperiodo
  loc_9D0AFC: from_stack_1 = clsperiodo.RecordCount
  loc_9D0B01: ILdRf var_90
  loc_9D0B04: LitI4 0
  loc_9D0B09: GtI4
  loc_9D0B0A: BranchF loc_9D0B9D
  loc_9D0B0D: FLdRfVar var_88
  loc_9D0B10: NewIfNullPr clsperiodo
  loc_9D0B13: Call clsperiodo.MoveFirst()
  loc_9D0B18: FLdRfVar var_92
  loc_9D0B1B: FLdRfVar var_88
  loc_9D0B1E: NewIfNullPr clsperiodo
  loc_9D0B21: from_stack_1 = clsperiodo.EOF
  loc_9D0B26: FLdI2 var_92
  loc_9D0B29: NotI4
  loc_9D0B2A: BranchF loc_9D0B9D
  loc_9D0B2D: LitVar_Missing var_D0
  loc_9D0B30: PopAdLdVar
  loc_9D0B31: FLdRfVar var_BC
  loc_9D0B34: FLdRfVar var_AC
  loc_9D0B37: LitVarStr var_A8, "PeriInfo"
  loc_9D0B3C: PopAdLdVar
  loc_9D0B3D: FLdRfVar var_98
  loc_9D0B40: FLdRfVar var_8C
  loc_9D0B43: FLdRfVar var_88
  loc_9D0B46: NewIfNullPr clsperiodo
  loc_9D0B49: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D0B4E: FLdPr var_8C
  loc_9D0B51:  = Me.Fields
  loc_9D0B56: FLdPr var_98
  loc_9D0B59: from_stack_2 = Me.Item(from_stack_1)
  loc_9D0B5E: FLdPr var_AC
  loc_9D0B61:  = Me.Value
  loc_9D0B66: FLdRfVar var_BC
  loc_9D0B69: CStrVarTmp
  loc_9D0B6A: FStStrNoPop var_C0
  loc_9D0B6D: FLdPr Me
  loc_9D0B70: VCallAd Control_ID_cboPeriodo
  loc_9D0B73: FStAdFunc var_D4
  loc_9D0B76: FLdPr var_D4
  loc_9D0B79: Me.AddItem from_stack_1, from_stack_2
  loc_9D0B7E: FFree1Str var_C0
  loc_9D0B81: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9D0B8C: FFree1Var var_BC = ""
  loc_9D0B8F: FLdRfVar var_88
  loc_9D0B92: NewIfNullPr clsperiodo
  loc_9D0B95: Call clsperiodo.MoveSiguiente()
  loc_9D0B9A: Branch loc_9D0B18
  loc_9D0B9D: Call cmdNueva_Click()
  loc_9D0BA2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95BB00
  'Data Table: 496A2C
  loc_95BAE8: FLdPr Me
  loc_95BAEB: VCallAd Control_ID_wbbReporte
  loc_95BAEE: FStAdFunc var_88
  loc_95BAF1: FLdRfVar var_88
  loc_95BAF4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95BAF9: FFree1Ad var_88
  loc_95BAFC: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9AE264
  'Data Table: 496A2C
  loc_9AE1D4: FLdRfVar var_8C
  loc_9AE1D7: FLdPr Me
  loc_9AE1DA: VCallAd Control_ID_cboPeriodo
  loc_9AE1DD: FStAdFunc var_88
  loc_9AE1E0: FLdPr var_88
  loc_9AE1E3:  = Me.Text
  loc_9AE1E8: FLdRfVar var_94
  loc_9AE1EB: FLdPr Me
  loc_9AE1EE: VCallAd Control_ID_cboPeriodo
  loc_9AE1F1: FStAdFunc var_90
  loc_9AE1F4: FLdPr var_90
  loc_9AE1F7:  = Me.Text
  loc_9AE1FC: LitI2_Byte &H1F
  loc_9AE1FE: LitI2_Byte &HC
  loc_9AE200: ILdRf var_94
  loc_9AE203: CI2Str
  loc_9AE205: FLdRfVar var_A4
  loc_9AE208: ImpAdCallFPR4  = DateSerial(, , )
  loc_9AE20D: ImpAdLdRf MemVar_C3D04C
  loc_9AE210: CVarRef
  loc_9AE215: FLdRfVar var_A4
  loc_9AE218: ILdRf var_8C
  loc_9AE21B: CI2Str
  loc_9AE21D: ImpAdLdI2 MemVar_C3D064
  loc_9AE220: LtI2
  loc_9AE221: CVarBoolI2 var_B4
  loc_9AE225: FLdRfVar var_D4
  loc_9AE228: ImpAdCallFPR4  = IIf(, , )
  loc_9AE22D: FLdRfVar var_D4
  loc_9AE230: CStrVarTmp
  loc_9AE231: CVarStr var_E4
  loc_9AE234: PopAdLdVar
  loc_9AE235: FLdPr Me
  loc_9AE238: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_9AE23B: FStAdFunc var_F8
  loc_9AE23E: FLdPr var_F8
  loc_9AE241: LateIdSt
  loc_9AE246: FFreeStr var_8C = ""
  loc_9AE24D: FFreeAd var_88 = "": var_90 = ""
  loc_9AE256: FFreeVar var_B4 = "": var_A4 = "": var_D4 = ""
  loc_9AE261: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95C220
  'Data Table: 496A2C
  loc_95C208: ILdRf Me
  loc_95C20B: CastAd
  loc_95C20E: FStAdFunc var_88
  loc_95C211: FLdRfVar var_88
  loc_95C214: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95C219: FFree1Ad var_88
  loc_95C21C: ExitProcHresult
End Sub

Private Sub OpTxt_KeyPress(KeyAscii As Integer) '97FEA8
  'Data Table: 496A2C
  loc_97FE74: LitStr "1234567890,."
  loc_97FE77: FStStrCopy var_88
  loc_97FE7A: FLdRfVar var_88
  loc_97FE7D: ILdRf KeyAscii
  loc_97FE80: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97FE85: IStI2 KeyAscii
  loc_97FE88: FFree1Str var_88
  loc_97FE8B: ILdI2 KeyAscii
  loc_97FE8E: LitStr "."
  loc_97FE91: ImpAdCallI2 Asc()
  loc_97FE96: EqI2
  loc_97FE97: BranchF loc_97FEA5
  loc_97FE9A: LitStr ","
  loc_97FE9D: ImpAdCallI2 Asc()
  loc_97FEA2: IStI2 KeyAscii
  loc_97FEA5: ExitProcHresult
End Sub

Private Sub OpTxt_Validate(Cancel As Boolean) '9CF968
  'Data Table: 496A2C
  loc_9CF88C: FLdRfVar var_8A
  loc_9CF88F: FLdPr Me
  loc_9CF892: VCallAd Control_ID_cmdSalir
  loc_9CF895: FStAdFunc var_88
  loc_9CF898: FLdPr var_88
  loc_9CF89B:  = Me.Value
  loc_9CF8A0: FLdI2 var_8A
  loc_9CF8A3: NotI4
  loc_9CF8A4: FLdRfVar var_92
  loc_9CF8A7: FLdPr Me
  loc_9CF8AA: VCallAd Control_ID_OpTxt
  loc_9CF8AD: FStAdFunc var_90
  loc_9CF8B0: FLdPr var_90
  loc_9CF8B3:  = Me.Enabled
  loc_9CF8B8: FLdI2 var_92
  loc_9CF8BB: AndI4
  loc_9CF8BC: FLdRfVar var_9C
  loc_9CF8BF: FLdPr Me
  loc_9CF8C2: VCallAd Control_ID_OpTxt
  loc_9CF8C5: FStAdFunc var_98
  loc_9CF8C8: FLdPr var_98
  loc_9CF8CB:  = Me.Text
  loc_9CF8D0: ILdRf var_9C
  loc_9CF8D3: LitStr vbNullString
  loc_9CF8D6: NeStr
  loc_9CF8D8: AndI4
  loc_9CF8D9: FFree1Str var_9C
  loc_9CF8DC: FFreeAd var_88 = "": var_90 = ""
  loc_9CF8E5: BranchF loc_9CF966
  loc_9CF8E8: FLdRfVar var_9C
  loc_9CF8EB: FLdPr Me
  loc_9CF8EE: VCallAd Control_ID_OpTxt
  loc_9CF8F1: FStAdFunc var_88
  loc_9CF8F4: FLdPr var_88
  loc_9CF8F7:  = Me.Text
  loc_9CF8FC: LitI2_Byte 0
  loc_9CF8FE: PopTmpLdAd2 var_9E
  loc_9CF901: LitI2_Byte 0
  loc_9CF903: PopTmpLdAd2 var_92
  loc_9CF906: LitI2_Byte 0
  loc_9CF908: PopTmpLdAd2 var_8A
  loc_9CF90B: ILdRf var_9C
  loc_9CF90E: LitStr "órdenes de pago"
  loc_9CF911: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CF916: FStStrNoPop var_A4
  loc_9CF919: FLdPr Me
  loc_9CF91C: MemStStrCopy
  loc_9CF920: FFreeStr var_9C = ""
  loc_9CF927: FFree1Ad var_88
  loc_9CF92A: FLdPr Me
  loc_9CF92D: VCallAd Control_ID_OpTxt
  loc_9CF930: FStAdFunc var_A8
  loc_9CF933: LitNothing
  loc_9CF935: CastAd
  loc_9CF938: FStAdFunc var_98
  loc_9CF93B: FLdRfVar var_98
  loc_9CF93E: FLdZeroAd var_A8
  loc_9CF941: FStAdFuncNoPop
  loc_9CF944: CastAd
  loc_9CF947: FStAdFunc var_90
  loc_9CF94A: FLdRfVar var_90
  loc_9CF94D: FLdPr Me
  loc_9CF950: MemLdRfVar from_stack_1.global_96
  loc_9CF953: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CF958: IStI2 Cancel
  loc_9CF95B: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CF966: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B33C
  'Data Table: 496A2C
  loc_98B304: FLdPr Me
  loc_98B307: VCallAd Control_ID_statusBar
  loc_98B30A: FStAdFunc var_88
  loc_98B30D: FLdPr var_88
  loc_98B310: LateIdLdVar var_98 DispID_1 0
  loc_98B317: CStrVarTmp
  loc_98B318: CVarStr var_A8
  loc_98B31B: PopAdLdVar
  loc_98B31C: FLdPr Me
  loc_98B31F: VCallAd Control_ID_statusBar
  loc_98B322: FStAdFunc var_BC
  loc_98B325: FLdPr var_BC
  loc_98B328: LateIdSt
  loc_98B32D: FFreeAd var_88 = ""
  loc_98B334: FFreeVar var_98 = ""
  loc_98B33B: ExitProcHresult
End Sub

Public Function htmFileGet() '497B78
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '497B87
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '497B96
  htmFile = Value
End Sub

Public Function bGeneradoGet() '497BA5
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '497BB4
  bGenerado = Value
End Sub

Public Sub GeneraHTML() 'ADE7CC
  'Data Table: 496A2C
  loc_ADE11C: FLdRfVar var_88
  loc_ADE11F: LitI2_Byte 0
  loc_ADE121: LitI2_Byte &HFF
  loc_ADE123: ImpAdLdI4 MemVar_C3D83C
  loc_ADE126: FLdPr Me
  loc_ADE129: MemLdRfVar from_stack_1.global_76
  loc_ADE12C: NewIfNullPr IFileSystem3
  loc_ADE12F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ADE134: ILdRf var_88
  loc_ADE137: FLdPr Me
  loc_ADE13A: MemStVarAd
  loc_ADE13E: FFree1Ad var_88
  loc_ADE141: Call Proc_213_22_A855B4()
  loc_ADE146: LitI2_Byte 1
  loc_ADE148: FLdPr Me
  loc_ADE14B: MemLdRfVar from_stack_1.global_88
  loc_ADE14E: FLdPr Me
  loc_ADE151: MemLdStr global_80
  loc_ADE154: LitI2_Byte 1
  loc_ADE156: FnUBound
  loc_ADE158: CI2I4
  loc_ADE159: ForI2 var_8C
  loc_ADE15F: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADE164: PopAdLdVar
  loc_ADE165: FLdPr Me
  loc_ADE168: MemLdRfVar from_stack_1.htmFile
  loc_ADE16B: LdPrVar
  loc_ADE16D: LateMemCall
  loc_ADE173: LitStr "    <th rowspan="""
  loc_ADE176: FLdPr Me
  loc_ADE179: MemLdI2 global_88
  loc_ADE17C: CI4UI1
  loc_ADE17D: FLdPr Me
  loc_ADE180: MemLdStr global_80
  loc_ADE183: Ary1LdPr
  loc_ADE184: MemLdI2 global_32
  loc_ADE187: CStrUI1
  loc_ADE189: FStStrNoPop var_B0
  loc_ADE18C: ConcatStr
  loc_ADE18D: FStStrNoPop var_B4
  loc_ADE190: LitStr """ align=""left"" valign=""top"" class=""Normal"">"
  loc_ADE193: ConcatStr
  loc_ADE194: FStStrNoPop var_B8
  loc_ADE197: FLdPr Me
  loc_ADE19A: MemLdI2 global_88
  loc_ADE19D: CI4UI1
  loc_ADE19E: FLdPr Me
  loc_ADE1A1: MemLdStr global_80
  loc_ADE1A4: Ary1LdPr
  loc_ADE1A5: MemLdStr global_0
  loc_ADE1A8: ConcatStr
  loc_ADE1A9: FStStrNoPop var_BC
  loc_ADE1AC: LitStr "</th>"
  loc_ADE1AF: ConcatStr
  loc_ADE1B0: CVarStr var_CC
  loc_ADE1B3: PopAdLdVar
  loc_ADE1B4: FLdPr Me
  loc_ADE1B7: MemLdRfVar from_stack_1.htmFile
  loc_ADE1BA: LdPrVar
  loc_ADE1BC: LateMemCall
  loc_ADE1C2: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ADE1CD: FFree1Var var_CC = ""
  loc_ADE1D0: LitI2_Byte &HFF
  loc_ADE1D2: BranchF loc_ADE2B7
  loc_ADE1D5: FLdPr Me
  loc_ADE1D8: MemLdI2 global_88
  loc_ADE1DB: CI4UI1
  loc_ADE1DC: FLdPr Me
  loc_ADE1DF: MemLdStr global_80
  loc_ADE1E2: Ary1LdPr
  loc_ADE1E3: MemLdStr global_20
  loc_ADE1E6: LitStr "1"
  loc_ADE1E9: EqStr
  loc_ADE1EB: BranchF loc_ADE257
  loc_ADE1EE: LitStr "    <th rowspan="""
  loc_ADE1F1: FLdPr Me
  loc_ADE1F4: MemLdI2 global_88
  loc_ADE1F7: CI4UI1
  loc_ADE1F8: FLdPr Me
  loc_ADE1FB: MemLdStr global_80
  loc_ADE1FE: Ary1LdPr
  loc_ADE1FF: MemLdI2 global_32
  loc_ADE202: CStrUI1
  loc_ADE204: FStStrNoPop var_B0
  loc_ADE207: ConcatStr
  loc_ADE208: FStStrNoPop var_B4
  loc_ADE20B: LitStr """ align=""left"" valign=""top"" class=""Normal"">"
  loc_ADE20E: ConcatStr
  loc_ADE20F: FStStrNoPop var_B8
  loc_ADE212: FLdPr Me
  loc_ADE215: MemLdI2 global_88
  loc_ADE218: CI4UI1
  loc_ADE219: FLdPr Me
  loc_ADE21C: MemLdStr global_80
  loc_ADE21F: Ary1LdPr
  loc_ADE220: MemLdStr global_4
  loc_ADE223: ConcatStr
  loc_ADE224: FStStrNoPop var_BC
  loc_ADE227: LitStr "<br>Cargo"
  loc_ADE22A: ConcatStr
  loc_ADE22B: FStStrNoPop var_D0
  loc_ADE22E: LitStr "</th>"
  loc_ADE231: ConcatStr
  loc_ADE232: CVarStr var_CC
  loc_ADE235: PopAdLdVar
  loc_ADE236: FLdPr Me
  loc_ADE239: MemLdRfVar from_stack_1.htmFile
  loc_ADE23C: LdPrVar
  loc_ADE23E: LateMemCall
  loc_ADE244: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_ADE251: FFree1Var var_CC = ""
  loc_ADE254: Branch loc_ADE2B4
  loc_ADE257: LitStr "    <th rowspan="""
  loc_ADE25A: FLdPr Me
  loc_ADE25D: MemLdI2 global_88
  loc_ADE260: CI4UI1
  loc_ADE261: FLdPr Me
  loc_ADE264: MemLdStr global_80
  loc_ADE267: Ary1LdPr
  loc_ADE268: MemLdI2 global_32
  loc_ADE26B: CStrUI1
  loc_ADE26D: FStStrNoPop var_B0
  loc_ADE270: ConcatStr
  loc_ADE271: FStStrNoPop var_B4
  loc_ADE274: LitStr """ align=""left"" valign=""top"" class=""Normal"">"
  loc_ADE277: ConcatStr
  loc_ADE278: FStStrNoPop var_B8
  loc_ADE27B: FLdPr Me
  loc_ADE27E: MemLdI2 global_88
  loc_ADE281: CI4UI1
  loc_ADE282: FLdPr Me
  loc_ADE285: MemLdStr global_80
  loc_ADE288: Ary1LdPr
  loc_ADE289: MemLdStr global_4
  loc_ADE28C: ConcatStr
  loc_ADE28D: FStStrNoPop var_BC
  loc_ADE290: LitStr "</th>"
  loc_ADE293: ConcatStr
  loc_ADE294: CVarStr var_CC
  loc_ADE297: PopAdLdVar
  loc_ADE298: FLdPr Me
  loc_ADE29B: MemLdRfVar from_stack_1.htmFile
  loc_ADE29E: LdPrVar
  loc_ADE2A0: LateMemCall
  loc_ADE2A6: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ADE2B1: FFree1Var var_CC = ""
  loc_ADE2B4: Branch loc_ADE314
  loc_ADE2B7: LitStr "    <th rowspan="""
  loc_ADE2BA: FLdPr Me
  loc_ADE2BD: MemLdI2 global_88
  loc_ADE2C0: CI4UI1
  loc_ADE2C1: FLdPr Me
  loc_ADE2C4: MemLdStr global_80
  loc_ADE2C7: Ary1LdPr
  loc_ADE2C8: MemLdI2 global_32
  loc_ADE2CB: CStrUI1
  loc_ADE2CD: FStStrNoPop var_B0
  loc_ADE2D0: ConcatStr
  loc_ADE2D1: FStStrNoPop var_B4
  loc_ADE2D4: LitStr """ align=""left"" valign=""top"" class=""Normal"">"
  loc_ADE2D7: ConcatStr
  loc_ADE2D8: FStStrNoPop var_B8
  loc_ADE2DB: FLdPr Me
  loc_ADE2DE: MemLdI2 global_88
  loc_ADE2E1: CI4UI1
  loc_ADE2E2: FLdPr Me
  loc_ADE2E5: MemLdStr global_80
  loc_ADE2E8: Ary1LdPr
  loc_ADE2E9: MemLdStr global_4
  loc_ADE2EC: ConcatStr
  loc_ADE2ED: FStStrNoPop var_BC
  loc_ADE2F0: LitStr "</th>"
  loc_ADE2F3: ConcatStr
  loc_ADE2F4: CVarStr var_CC
  loc_ADE2F7: PopAdLdVar
  loc_ADE2F8: FLdPr Me
  loc_ADE2FB: MemLdRfVar from_stack_1.htmFile
  loc_ADE2FE: LdPrVar
  loc_ADE300: LateMemCall
  loc_ADE306: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ADE311: FFree1Var var_CC = ""
  loc_ADE314: LitStr "    <th rowspan="""
  loc_ADE317: FLdPr Me
  loc_ADE31A: MemLdI2 global_88
  loc_ADE31D: CI4UI1
  loc_ADE31E: FLdPr Me
  loc_ADE321: MemLdStr global_80
  loc_ADE324: Ary1LdPr
  loc_ADE325: MemLdI2 global_32
  loc_ADE328: CStrUI1
  loc_ADE32A: FStStrNoPop var_B0
  loc_ADE32D: ConcatStr
  loc_ADE32E: FStStrNoPop var_B4
  loc_ADE331: LitStr """ align=""left"">"
  loc_ADE334: ConcatStr
  loc_ADE335: FStStrNoPop var_B8
  loc_ADE338: FLdPr Me
  loc_ADE33B: MemLdI2 global_88
  loc_ADE33E: CI4UI1
  loc_ADE33F: FLdPr Me
  loc_ADE342: MemLdStr global_80
  loc_ADE345: Ary1LdPr
  loc_ADE346: MemLdStr global_8
  loc_ADE349: ConcatStr
  loc_ADE34A: FStStrNoPop var_BC
  loc_ADE34D: LitStr "</th>"
  loc_ADE350: ConcatStr
  loc_ADE351: CVarStr var_CC
  loc_ADE354: PopAdLdVar
  loc_ADE355: FLdPr Me
  loc_ADE358: MemLdRfVar from_stack_1.htmFile
  loc_ADE35B: LdPrVar
  loc_ADE35D: LateMemCall
  loc_ADE363: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ADE36E: FFree1Var var_CC = ""
  loc_ADE371: LitStr "    <th rowspan="""
  loc_ADE374: FLdPr Me
  loc_ADE377: MemLdI2 global_88
  loc_ADE37A: CI4UI1
  loc_ADE37B: FLdPr Me
  loc_ADE37E: MemLdStr global_80
  loc_ADE381: Ary1LdPr
  loc_ADE382: MemLdI2 global_32
  loc_ADE385: CStrUI1
  loc_ADE387: FStStrNoPop var_B0
  loc_ADE38A: ConcatStr
  loc_ADE38B: FStStrNoPop var_B4
  loc_ADE38E: LitStr """ align=""right"">"
  loc_ADE391: ConcatStr
  loc_ADE392: FStStrNoPop var_B8
  loc_ADE395: FLdPr Me
  loc_ADE398: MemLdI2 global_88
  loc_ADE39B: CI4UI1
  loc_ADE39C: FLdPr Me
  loc_ADE39F: MemLdStr global_80
  loc_ADE3A2: Ary1LdPr
  loc_ADE3A3: MemLdStr global_12
  loc_ADE3A6: ConcatStr
  loc_ADE3A7: FStStrNoPop var_BC
  loc_ADE3AA: LitStr "</th>"
  loc_ADE3AD: ConcatStr
  loc_ADE3AE: CVarStr var_CC
  loc_ADE3B1: PopAdLdVar
  loc_ADE3B2: FLdPr Me
  loc_ADE3B5: MemLdRfVar from_stack_1.htmFile
  loc_ADE3B8: LdPrVar
  loc_ADE3BA: LateMemCall
  loc_ADE3C0: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ADE3CB: FFree1Var var_CC = ""
  loc_ADE3CE: LitStr "    <th width=""80"" rowspan="""
  loc_ADE3D1: FLdPr Me
  loc_ADE3D4: MemLdI2 global_88
  loc_ADE3D7: CI4UI1
  loc_ADE3D8: FLdPr Me
  loc_ADE3DB: MemLdStr global_80
  loc_ADE3DE: Ary1LdPr
  loc_ADE3DF: MemLdI2 global_32
  loc_ADE3E2: CStrUI1
  loc_ADE3E4: FStStrNoPop var_B0
  loc_ADE3E7: ConcatStr
  loc_ADE3E8: FStStrNoPop var_B4
  loc_ADE3EB: LitStr """ align=""left"">"
  loc_ADE3EE: ConcatStr
  loc_ADE3EF: FStStrNoPop var_B8
  loc_ADE3F2: FLdPr Me
  loc_ADE3F5: MemLdI2 global_88
  loc_ADE3F8: CI4UI1
  loc_ADE3F9: FLdPr Me
  loc_ADE3FC: MemLdStr global_80
  loc_ADE3FF: Ary1LdPr
  loc_ADE400: MemLdStr global_16
  loc_ADE403: ConcatStr
  loc_ADE404: FStStrNoPop var_BC
  loc_ADE407: LitStr "</th>"
  loc_ADE40A: ConcatStr
  loc_ADE40B: CVarStr var_CC
  loc_ADE40E: PopAdLdVar
  loc_ADE40F: FLdPr Me
  loc_ADE412: MemLdRfVar from_stack_1.htmFile
  loc_ADE415: LdPrVar
  loc_ADE417: LateMemCall
  loc_ADE41D: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ADE428: FFree1Var var_CC = ""
  loc_ADE42B: LitI2_Byte 1
  loc_ADE42D: FLdPr Me
  loc_ADE430: MemLdRfVar from_stack_1.global_90
  loc_ADE433: FLdPr Me
  loc_ADE436: MemLdI2 global_88
  loc_ADE439: CI4UI1
  loc_ADE43A: FLdPr Me
  loc_ADE43D: MemLdStr global_80
  loc_ADE440: Ary1LdPr
  loc_ADE441: MemLdStr global_24
  loc_ADE444: LitI2_Byte 1
  loc_ADE446: FnUBound
  loc_ADE448: CI2I4
  loc_ADE449: ForI2 var_D4
  loc_ADE44F: FLdPr Me
  loc_ADE452: MemLdI2 global_90
  loc_ADE455: LitI2_Byte 1
  loc_ADE457: GtI2
  loc_ADE458: BranchF loc_ADE46F
  loc_ADE45B: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADE460: PopAdLdVar
  loc_ADE461: FLdPr Me
  loc_ADE464: MemLdRfVar from_stack_1.htmFile
  loc_ADE467: LdPrVar
  loc_ADE469: LateMemCall
  loc_ADE46F: LitStr "    <th rowspan="""
  loc_ADE472: FLdPr Me
  loc_ADE475: MemLdI2 global_90
  loc_ADE478: CI4UI1
  loc_ADE479: FLdPr Me
  loc_ADE47C: MemLdI2 global_88
  loc_ADE47F: CI4UI1
  loc_ADE480: FLdPr Me
  loc_ADE483: MemLdStr global_80
  loc_ADE486: Ary1LdPr
  loc_ADE487: MemLdStr global_24
  loc_ADE48A: Ary1LdPr
  loc_ADE48B: MemLdI2 global_12
  loc_ADE48E: CStrUI1
  loc_ADE490: FStStrNoPop var_B0
  loc_ADE493: ConcatStr
  loc_ADE494: FStStrNoPop var_B4
  loc_ADE497: LitStr """ align=""center"" valign=""top"">"
  loc_ADE49A: ConcatStr
  loc_ADE49B: FStStrNoPop var_B8
  loc_ADE49E: FLdPr Me
  loc_ADE4A1: MemLdI2 global_90
  loc_ADE4A4: CI4UI1
  loc_ADE4A5: FLdPr Me
  loc_ADE4A8: MemLdI2 global_88
  loc_ADE4AB: CI4UI1
  loc_ADE4AC: FLdPr Me
  loc_ADE4AF: MemLdStr global_80
  loc_ADE4B2: Ary1LdPr
  loc_ADE4B3: MemLdStr global_24
  loc_ADE4B6: Ary1LdPr
  loc_ADE4B7: MemLdStr global_0
  loc_ADE4BA: ConcatStr
  loc_ADE4BB: FStStrNoPop var_BC
  loc_ADE4BE: LitStr "<br>"
  loc_ADE4C1: ConcatStr
  loc_ADE4C2: FStStrNoPop var_D0
  loc_ADE4C5: FLdPr Me
  loc_ADE4C8: MemLdI2 global_90
  loc_ADE4CB: CI4UI1
  loc_ADE4CC: FLdPr Me
  loc_ADE4CF: MemLdI2 global_88
  loc_ADE4D2: CI4UI1
  loc_ADE4D3: FLdPr Me
  loc_ADE4D6: MemLdStr global_80
  loc_ADE4D9: Ary1LdPr
  loc_ADE4DA: MemLdStr global_24
  loc_ADE4DD: Ary1LdPr
  loc_ADE4DE: MemLdStr global_4
  loc_ADE4E1: ConcatStr
  loc_ADE4E2: FStStrNoPop var_D8
  loc_ADE4E5: LitStr "</th>"
  loc_ADE4E8: ConcatStr
  loc_ADE4E9: CVarStr var_CC
  loc_ADE4EC: PopAdLdVar
  loc_ADE4ED: FLdPr Me
  loc_ADE4F0: MemLdRfVar from_stack_1.htmFile
  loc_ADE4F3: LdPrVar
  loc_ADE4F5: LateMemCall
  loc_ADE4FB: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_D0 = ""
  loc_ADE50A: FFree1Var var_CC = ""
  loc_ADE50D: LitI2_Byte 1
  loc_ADE50F: FLdPr Me
  loc_ADE512: MemLdRfVar from_stack_1.global_92
  loc_ADE515: FLdPr Me
  loc_ADE518: MemLdI2 global_90
  loc_ADE51B: CI4UI1
  loc_ADE51C: FLdPr Me
  loc_ADE51F: MemLdI2 global_88
  loc_ADE522: CI4UI1
  loc_ADE523: FLdPr Me
  loc_ADE526: MemLdStr global_80
  loc_ADE529: Ary1LdPr
  loc_ADE52A: MemLdStr global_24
  loc_ADE52D: Ary1LdPr
  loc_ADE52E: MemLdStr global_8
  loc_ADE531: LitI2_Byte 1
  loc_ADE533: FnUBound
  loc_ADE535: CI2I4
  loc_ADE536: ForI2 var_DC
  loc_ADE53C: FLdPr Me
  loc_ADE53F: MemLdI2 global_92
  loc_ADE542: LitI2_Byte 1
  loc_ADE544: GtI2
  loc_ADE545: BranchF loc_ADE55C
  loc_ADE548: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADE54D: PopAdLdVar
  loc_ADE54E: FLdPr Me
  loc_ADE551: MemLdRfVar from_stack_1.htmFile
  loc_ADE554: LdPrVar
  loc_ADE556: LateMemCall
  loc_ADE55C: FLdPr Me
  loc_ADE55F: MemLdI2 global_92
  loc_ADE562: CI4UI1
  loc_ADE563: FLdPr Me
  loc_ADE566: MemLdI2 global_90
  loc_ADE569: CI4UI1
  loc_ADE56A: FLdPr Me
  loc_ADE56D: MemLdI2 global_88
  loc_ADE570: CI4UI1
  loc_ADE571: FLdPr Me
  loc_ADE574: MemLdStr global_80
  loc_ADE577: AryLock
  loc_ADE57A: Ary1LdPr
  loc_ADE57B: MemLdStr global_24
  loc_ADE57E: AryLock
  loc_ADE581: Ary1LdPr
  loc_ADE582: MemLdStr global_8
  loc_ADE585: AryLock
  loc_ADE588: Ary1LdRf
  loc_ADE589: FStR4 var_EC
  loc_ADE58C: LitI4 0
  loc_ADE591: LitI4 0
  loc_ADE596: LitI2_Byte 0
  loc_ADE598: LitStr "left"
  loc_ADE59B: FMemLdR4 var_EC(0)
  loc_ADE5A0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADE5A5: CVarStr var_CC
  loc_ADE5A8: PopAdLdVar
  loc_ADE5A9: FLdPr Me
  loc_ADE5AC: MemLdRfVar from_stack_1.htmFile
  loc_ADE5AF: LdPrVar
  loc_ADE5B1: LateMemCall
  loc_ADE5B7: FFree1Var var_CC = ""
  loc_ADE5BA: LitI4 0
  loc_ADE5BF: LitI4 0
  loc_ADE5C4: LitI2_Byte 0
  loc_ADE5C6: LitStr "right"
  loc_ADE5C9: FMemLdR4 var_EC(4)
  loc_ADE5CE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADE5D3: CVarStr var_CC
  loc_ADE5D6: PopAdLdVar
  loc_ADE5D7: FLdPr Me
  loc_ADE5DA: MemLdRfVar from_stack_1.htmFile
  loc_ADE5DD: LdPrVar
  loc_ADE5DF: LateMemCall
  loc_ADE5E5: FFree1Var var_CC = ""
  loc_ADE5E8: LitI4 0
  loc_ADE5ED: LitI4 0
  loc_ADE5F2: LitI2_Byte 0
  loc_ADE5F4: LitStr "left"
  loc_ADE5F7: FMemLdR4 var_EC(8)
  loc_ADE5FC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADE601: CVarStr var_CC
  loc_ADE604: PopAdLdVar
  loc_ADE605: FLdPr Me
  loc_ADE608: MemLdRfVar from_stack_1.htmFile
  loc_ADE60B: LdPrVar
  loc_ADE60D: LateMemCall
  loc_ADE613: FFree1Var var_CC = ""
  loc_ADE616: LitI4 0
  loc_ADE61B: LitI4 0
  loc_ADE620: LitI2_Byte 0
  loc_ADE622: LitStr "right"
  loc_ADE625: FMemLdR4 var_EC(12)
  loc_ADE62A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ADE62F: CVarStr var_CC
  loc_ADE632: PopAdLdVar
  loc_ADE633: FLdPr Me
  loc_ADE636: MemLdRfVar from_stack_1.htmFile
  loc_ADE639: LdPrVar
  loc_ADE63B: LateMemCall
  loc_ADE641: FFree1Var var_CC = ""
  loc_ADE644: LitI4 0
  loc_ADE649: FStR4 var_EC
  loc_ADE64C: AryUnlock
  loc_ADE64F: AryUnlock
  loc_ADE652: AryUnlock
  loc_ADE655: FLdPr Me
  loc_ADE658: MemLdI2 global_90
  loc_ADE65B: LitI2_Byte 1
  loc_ADE65D: EqI2
  loc_ADE65E: FLdPr Me
  loc_ADE661: MemLdI2 global_92
  loc_ADE664: LitI2_Byte 1
  loc_ADE666: EqI2
  loc_ADE667: AndI4
  loc_ADE668: BranchF loc_ADE705
  loc_ADE66B: LitStr "    <th rowspan="""
  loc_ADE66E: FLdPr Me
  loc_ADE671: MemLdI2 global_88
  loc_ADE674: CI4UI1
  loc_ADE675: FLdPr Me
  loc_ADE678: MemLdStr global_80
  loc_ADE67B: Ary1LdPr
  loc_ADE67C: MemLdI2 global_32
  loc_ADE67F: CStrUI1
  loc_ADE681: FStStrNoPop var_B0
  loc_ADE684: ConcatStr
  loc_ADE685: FStStrNoPop var_B4
  loc_ADE688: LitStr """ align=""right"">"
  loc_ADE68B: ConcatStr
  loc_ADE68C: FStStrNoPop var_B8
  loc_ADE68F: FLdPr Me
  loc_ADE692: MemLdI2 global_88
  loc_ADE695: CI4UI1
  loc_ADE696: FLdPr Me
  loc_ADE699: MemLdStr global_80
  loc_ADE69C: Ary1LdPr
  loc_ADE69D: MemLdStr global_28
  loc_ADE6A0: ConcatStr
  loc_ADE6A1: FStStrNoPop var_BC
  loc_ADE6A4: LitStr "</th>"
  loc_ADE6A7: ConcatStr
  loc_ADE6A8: CVarStr var_CC
  loc_ADE6AB: PopAdLdVar
  loc_ADE6AC: FLdPr Me
  loc_ADE6AF: MemLdRfVar from_stack_1.htmFile
  loc_ADE6B2: LdPrVar
  loc_ADE6B4: LateMemCall
  loc_ADE6BA: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ADE6C5: FFree1Var var_CC = ""
  loc_ADE6C8: LitStr "    <th rowspan="""
  loc_ADE6CB: FLdPr Me
  loc_ADE6CE: MemLdI2 global_88
  loc_ADE6D1: CI4UI1
  loc_ADE6D2: FLdPr Me
  loc_ADE6D5: MemLdStr global_80
  loc_ADE6D8: Ary1LdPr
  loc_ADE6D9: MemLdI2 global_32
  loc_ADE6DC: CStrUI1
  loc_ADE6DE: FStStrNoPop var_B0
  loc_ADE6E1: ConcatStr
  loc_ADE6E2: FStStrNoPop var_B4
  loc_ADE6E5: LitStr """>&nbsp;</th>"
  loc_ADE6E8: ConcatStr
  loc_ADE6E9: CVarStr var_CC
  loc_ADE6EC: PopAdLdVar
  loc_ADE6ED: FLdPr Me
  loc_ADE6F0: MemLdRfVar from_stack_1.htmFile
  loc_ADE6F3: LdPrVar
  loc_ADE6F5: LateMemCall
  loc_ADE6FB: FFreeStr var_B0 = ""
  loc_ADE702: FFree1Var var_CC = ""
  loc_ADE705: LitVarStr var_9C, "     </tr>"
  loc_ADE70A: PopAdLdVar
  loc_ADE70B: FLdPr Me
  loc_ADE70E: MemLdRfVar from_stack_1.htmFile
  loc_ADE711: LdPrVar
  loc_ADE713: LateMemCall
  loc_ADE719: FLdPr Me
  loc_ADE71C: MemLdRfVar from_stack_1.global_92
  loc_ADE71F: NextI2 var_DC, loc_ADE53C
  loc_ADE724: FLdPr Me
  loc_ADE727: MemLdRfVar from_stack_1.global_90
  loc_ADE72A: NextI2 var_D4, loc_ADE44F
  loc_ADE72F: FLdPr Me
  loc_ADE732: MemLdRfVar from_stack_1.global_88
  loc_ADE735: NextI2 var_8C, loc_ADE15F
  loc_ADE73A: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ADE73F: PopAdLdVar
  loc_ADE740: FLdPr Me
  loc_ADE743: MemLdRfVar from_stack_1.htmFile
  loc_ADE746: LdPrVar
  loc_ADE748: LateMemCall
  loc_ADE74E: LitVarStr var_9C, "    <th colspan=""9"" align=""right"" valign=""top"" class=""Normal"">TOTAL</th>"
  loc_ADE753: PopAdLdVar
  loc_ADE754: FLdPr Me
  loc_ADE757: MemLdRfVar from_stack_1.htmFile
  loc_ADE75A: LdPrVar
  loc_ADE75C: LateMemCall
  loc_ADE762: LitStr "    <th colspan=""2"" align=""right"" class=""Totales"">"
  loc_ADE765: FLdPr Me
  loc_ADE768: MemLdStr global_84
  loc_ADE76B: ConcatStr
  loc_ADE76C: FStStrNoPop var_B0
  loc_ADE76F: LitStr "</th>"
  loc_ADE772: ConcatStr
  loc_ADE773: CVarStr var_CC
  loc_ADE776: PopAdLdVar
  loc_ADE777: FLdPr Me
  loc_ADE77A: MemLdRfVar from_stack_1.htmFile
  loc_ADE77D: LdPrVar
  loc_ADE77F: LateMemCall
  loc_ADE785: FFree1Str var_B0
  loc_ADE788: FFree1Var var_CC = ""
  loc_ADE78B: LitVarStr var_9C, "    <th>&nbsp;</th>"
  loc_ADE790: PopAdLdVar
  loc_ADE791: FLdPr Me
  loc_ADE794: MemLdRfVar from_stack_1.htmFile
  loc_ADE797: LdPrVar
  loc_ADE799: LateMemCall
  loc_ADE79F: LitVarStr var_9C, "     </tr>"
  loc_ADE7A4: PopAdLdVar
  loc_ADE7A5: FLdPr Me
  loc_ADE7A8: MemLdRfVar from_stack_1.htmFile
  loc_ADE7AB: LdPrVar
  loc_ADE7AD: LateMemCall
  loc_ADE7B3: Call Proc_213_23_982150()
  loc_ADE7B8: FLdPr Me
  loc_ADE7BB: MemLdRfVar from_stack_1.htmFile
  loc_ADE7BE: LdPrVar
  loc_ADE7C0: LateMemCall
  loc_ADE7C6: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ADE7CB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B0C0A4
  'Data Table: 496A2C
  loc_B0B96C: FLdPr Me
  loc_B0B96F: MemLdI2 bGenerado
  loc_B0B972: BranchF loc_B0B976
  loc_B0B975: ExitProcHresult
  loc_B0B976: LitVarStr var_A4, "Generando reporte..."
  loc_B0B97B: PopAdLdVar
  loc_B0B97C: FLdPr Me
  loc_B0B97F: VCallAd Control_ID_statusBar
  loc_B0B982: FStAdFunc var_B8
  loc_B0B985: FLdPr var_B8
  loc_B0B988: LateIdSt
  loc_B0B98D: FFree1Ad var_B8
  loc_B0B990: LitI4 &HB
  loc_B0B995: CI2I4
  loc_B0B996: FLdPr Me
  loc_B0B999: Me.MousePointer = from_stack_1
  loc_B0B99E: LitI2_Byte 0
  loc_B0B9A0: PopTmpLdAd2 var_BA
  loc_B0B9A3: from_stack_2v = FereOrpaDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_B0B9A8: FLdPr Me
  loc_B0B9AB: MemLdStr global_96
  loc_B0B9AE: LitStr vbNullString
  loc_B0B9B1: NeStr
  loc_B0B9B3: BranchF loc_B0B9B9
  loc_B0B9B6: Branch loc_B0C079
  loc_B0B9B9: LitI2_Byte 0
  loc_B0B9BB: PopTmpLdAd2 var_BA
  loc_B0B9BE: Call OpTxt_Validate(from_stack_1v)
  loc_B0B9C3: FLdPr Me
  loc_B0B9C6: MemLdStr global_96
  loc_B0B9C9: LitStr vbNullString
  loc_B0B9CC: NeStr
  loc_B0B9CE: BranchF loc_B0B9D4
  loc_B0B9D1: Branch loc_B0C079
  loc_B0B9D4: FLdRfVar var_BA
  loc_B0B9D7: FLdPr Me
  loc_B0B9DA: VCallAd Control_ID_DevengadoOpt
  loc_B0B9DD: FStAdFunc var_B8
  loc_B0B9E0: FLdPr var_B8
  loc_B0B9E3:  = Me.Value
  loc_B0B9E8: FLdI2 var_BA
  loc_B0B9EB: FFree1Ad var_B8
  loc_B0B9EE: BranchF loc_B0B9FA
  loc_B0B9F1: LitStr " AND o.TipoOrpa = 'Devengado'"
  loc_B0B9F4: FStStrCopy var_8C
  loc_B0B9F7: Branch loc_B0BA26
  loc_B0B9FA: FLdRfVar var_BA
  loc_B0B9FD: FLdPr Me
  loc_B0BA00: VCallAd Control_ID_DebitoOpt
  loc_B0BA03: FStAdFunc var_B8
  loc_B0BA06: FLdPr var_B8
  loc_B0BA09:  = Me.Value
  loc_B0BA0E: FLdI2 var_BA
  loc_B0BA11: FFree1Ad var_B8
  loc_B0BA14: BranchF loc_B0BA20
  loc_B0BA17: LitStr " AND o.TipoOrpa = 'Debito'"
  loc_B0BA1A: FStStrCopy var_8C
  loc_B0BA1D: Branch loc_B0BA26
  loc_B0BA20: LitStr vbNullString
  loc_B0BA23: FStStrCopy var_8C
  loc_B0BA26: FLdRfVar var_BA
  loc_B0BA29: FLdPr Me
  loc_B0BA2C: VCallAd Control_ID_AnuladosChk
  loc_B0BA2F: FStAdFunc var_B8
  loc_B0BA32: FLdPr var_B8
  loc_B0BA35:  = Me.Value
  loc_B0BA3A: LitVarStr var_DC, " AND ordenpago.FeanOrpa IS NULL"
  loc_B0BA3F: FStVarCopyObj var_EC
  loc_B0BA42: FLdRfVar var_EC
  loc_B0BA45: LitVarStr var_B4, vbNullString
  loc_B0BA4A: FStVarCopyObj var_CC
  loc_B0BA4D: FLdRfVar var_CC
  loc_B0BA50: FLdI2 var_BA
  loc_B0BA53: CI4UI1
  loc_B0BA54: LitI4 1
  loc_B0BA59: EqI4
  loc_B0BA5A: CVarBoolI2 var_A4
  loc_B0BA5E: FLdRfVar var_FC
  loc_B0BA61: ImpAdCallFPR4  = IIf(, , )
  loc_B0BA66: FLdRfVar var_FC
  loc_B0BA69: CStrVarTmp
  loc_B0BA6A: FStStr var_90
  loc_B0BA6D: FFree1Ad var_B8
  loc_B0BA70: FFreeVar var_A4 = "": var_CC = "": var_EC = ""
  loc_B0BA7B: FLdRfVar var_100
  loc_B0BA7E: FLdPr Me
  loc_B0BA81: VCallAd Control_ID_OpTxt
  loc_B0BA84: FStAdFunc var_B8
  loc_B0BA87: FLdPr var_B8
  loc_B0BA8A:  = Me.Text
  loc_B0BA8F: FLdRfVar var_108
  loc_B0BA92: FLdPr Me
  loc_B0BA95: VCallAd Control_ID_OpTxt
  loc_B0BA98: FStAdFunc var_104
  loc_B0BA9B: FLdPr var_104
  loc_B0BA9E:  = Me.Text
  loc_B0BAA3: LitI4 0
  loc_B0BAA8: LitI4 -1
  loc_B0BAAD: LitI4 1
  loc_B0BAB2: LitStr "','"
  loc_B0BAB5: LitStr ","
  loc_B0BAB8: ILdRf var_108
  loc_B0BABB: ImpAdCallI2 Replace(, , , , , )
  loc_B0BAC0: FStStr var_114
  loc_B0BAC3: LitVarStr var_B4, vbNullString
  loc_B0BAC8: FStVarCopyObj var_EC
  loc_B0BACB: FLdRfVar var_EC
  loc_B0BACE: LitStr " AND o.NumeOrpa IN ('"
  loc_B0BAD1: FLdZeroAd var_114
  loc_B0BAD4: FStStrNoPop var_10C
  loc_B0BAD7: ConcatStr
  loc_B0BAD8: FStStrNoPop var_110
  loc_B0BADB: LitStr "')"
  loc_B0BADE: ConcatStr
  loc_B0BADF: CVarStr var_CC
  loc_B0BAE2: ILdRf var_100
  loc_B0BAE5: LitStr vbNullString
  loc_B0BAE8: NeStr
  loc_B0BAEA: CVarBoolI2 var_A4
  loc_B0BAEE: FLdRfVar var_FC
  loc_B0BAF1: ImpAdCallFPR4  = IIf(, , )
  loc_B0BAF6: FLdRfVar var_FC
  loc_B0BAF9: CStrVarTmp
  loc_B0BAFA: FStStr var_94
  loc_B0BAFD: FFreeStr var_100 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_B0BB0A: FFreeAd var_B8 = ""
  loc_B0BB11: FFreeVar var_A4 = "": var_CC = "": var_EC = ""
  loc_B0BB1C: FLdPr Me
  loc_B0BB1F: MemLdRfVar from_stack_1.global_72
  loc_B0BB22: NewIfNullAd
  loc_B0BB25: FStAd var_118 
  loc_B0BB29: FLdPr Me
  loc_B0BB2C: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_B0BB2F: FStAdFunc var_104
  loc_B0BB32: FLdPr var_104
  loc_B0BB35: LateIdLdVar var_CC DispID_15 0
  loc_B0BB3C: PopAd
  loc_B0BB3E: FLdPr Me
  loc_B0BB41: VCallAd Control_ID_SecureOrpaMsk
  loc_B0BB44: FStAdFunc var_19C
  loc_B0BB47: FLdPr var_19C
  loc_B0BB4A: LateIdLdVar var_1AC DispID_22 0
  loc_B0BB51: PopAd
  loc_B0BB53: FLdPr Me
  loc_B0BB56: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_B0BB59: FStAdFunc var_3D0
  loc_B0BB5C: FLdPr var_3D0
  loc_B0BB5F: LateIdLdVar var_3E0 DispID_15 0
  loc_B0BB66: PopAd
  loc_B0BB68: FLdPr Me
  loc_B0BB6B: VCallAd Control_ID_SecureOrpaMsk
  loc_B0BB6E: FStAdFunc var_494
  loc_B0BB71: FLdPr var_494
  loc_B0BB74: LateIdLdVar var_4A4 DispID_22 0
  loc_B0BB7B: PopAd
  loc_B0BB7D: LitStr "SELECT 1 Orden, o.NumeOrpa, o.ExpeImpu, o.NumeLiqu, o.SecureOrpa, o.CargoOrpa, ch.CucuPers, DetaProv"
  loc_B0BB80: LitStr " , if(AutoCheq=1,'cheque manual',if(AutoCheq=2,'cheque impreso',if(AutoCheq=3,'transferencia',''))) concepto, CONCAT(if(ch.NumeMoba!=0,ch.NumeMoba,''),'(',ch.CodiBanc,')') numero, ch.FechCheq Fecha, ch.ImpoCheq importe"
  loc_B0BB83: ConcatStr
  loc_B0BB84: FStStrNoPop var_100
  loc_B0BB87: LitStr ", IFNULL( (SELECT GROUP_CONCAT(DISTINCT ExorImpu) FROM imputacion ii WHERE ii.PeriInfo = o.PeriInfo AND ii.NumeOrpa = o.NumeOrpa AND ii.CucuPers = ch.CucuPers) ,'&nbsp;') ExorImpus"
  loc_B0BB8A: ConcatStr
  loc_B0BB8B: FStStrNoPop var_108
  loc_B0BB8E: LitStr " FROM ordenpago o"
  loc_B0BB91: ConcatStr
  loc_B0BB92: FStStrNoPop var_10C
  loc_B0BB95: LitStr " INNER JOIN cheque ch ON ch.PeriInfo = o.PeriInfo AND ch.ExpeImpu = o.ExpeImpu AND ch.NumeLiqu = o.NumeLiqu"
  loc_B0BB98: ConcatStr
  loc_B0BB99: FStStrNoPop var_110
  loc_B0BB9C: LitStr " AND ch.AutoCheq > 0 AND ch.FeanCheq IS NULL"
  loc_B0BB9F: ConcatStr
  loc_B0BBA0: FStStrNoPop var_114
  loc_B0BBA3: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_B0BBA6: ConcatStr
  loc_B0BBA7: FStStrNoPop var_11C
  loc_B0BBAA: LitStr " WHERE o.PeriInfo = "
  loc_B0BBAD: ConcatStr
  loc_B0BBAE: FStStrNoPop var_124
  loc_B0BBB1: FLdRfVar var_120
  loc_B0BBB4: FLdPr Me
  loc_B0BBB7: VCallAd Control_ID_cboPeriodo
  loc_B0BBBA: FStAdFunc var_B8
  loc_B0BBBD: FLdPr var_B8
  loc_B0BBC0:  = Me.Text
  loc_B0BBC5: ILdRf var_120
  loc_B0BBC8: ConcatStr
  loc_B0BBC9: FStStrNoPop var_128
  loc_B0BBCC: LitStr " AND o.FereOrpa = "
  loc_B0BBCF: ConcatStr
  loc_B0BBD0: CVarStr var_148
  loc_B0BBD3: LitI4 1
  loc_B0BBD8: LitI4 1
  loc_B0BBDD: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B0BBE2: FStVarCopyObj var_FC
  loc_B0BBE5: FLdRfVar var_FC
  loc_B0BBE8: FLdRfVar var_CC
  loc_B0BBEB: CStrVarTmp
  loc_B0BBEC: CVarStr var_EC
  loc_B0BBEF: FLdRfVar var_138
  loc_B0BBF2: ImpAdCallFPR4  = Format(, )
  loc_B0BBF7: FLdRfVar var_138
  loc_B0BBFA: ConcatVar var_158
  loc_B0BBFE: ILdRf var_8C
  loc_B0BC01: CVarStr var_B4
  loc_B0BC04: ConcatVar var_168
  loc_B0BC08: ILdRf var_94
  loc_B0BC0B: CVarStr var_DC
  loc_B0BC0E: ConcatVar var_178
  loc_B0BC12: LitVarStr var_188, " AND o.FeanOrpa IS NULL AND o.SecureOrpa >= '"
  loc_B0BC17: ConcatVar var_198
  loc_B0BC1B: FLdPr Me
  loc_B0BC1E: VCallAd Control_ID_SecureOrpaMsk
  loc_B0BC21: FStAdFunc var_1B4
  loc_B0BC24: FLdPr var_1B4
  loc_B0BC27: LateIdLdVar var_1C4 DispID_22 0
  loc_B0BC2E: CStrVarTmp
  loc_B0BC2F: CVarStr var_204
  loc_B0BC32: LitVarStr var_1E4, "0"
  loc_B0BC37: FStVarCopyObj var_1F4
  loc_B0BC3A: FLdRfVar var_1F4
  loc_B0BC3D: FLdRfVar var_1AC
  loc_B0BC40: CStrVarTmp
  loc_B0BC41: FStStrNoPop var_1B0
  loc_B0BC44: LitStr vbNullString
  loc_B0BC47: EqStr
  loc_B0BC49: CVarBoolI2 var_1D4
  loc_B0BC4D: FLdRfVar var_214
  loc_B0BC50: ImpAdCallFPR4  = IIf(, , )
  loc_B0BC55: FLdRfVar var_214
  loc_B0BC58: ConcatVar var_224
  loc_B0BC5C: LitVarStr var_234, "'"
  loc_B0BC61: ConcatVar var_244
  loc_B0BC65: LitVarStr var_254, " UNION ALL"
  loc_B0BC6A: ConcatVar var_264
  loc_B0BC6E: LitVarStr var_274, " SELECT 2 Orden, o.NumeOrpa, o.ExpeImpu, o.NumeLiqu, o.SecureOrpa, o.CargoOrpa, lqn.CucuPers, DetaProv"
  loc_B0BC73: ConcatVar var_284
  loc_B0BC77: LitVarStr var_294, " , DetaRete concepto , CertLine numero, '' Fecha, ImpoLine importe"
  loc_B0BC7C: ConcatVar var_2A4
  loc_B0BC80: LitVarStr var_2B4, ", '&nbsp;' ExorImpus"
  loc_B0BC85: ConcatVar var_2C4
  loc_B0BC89: LitVarStr var_2D4, " FROM ordenpago o"
  loc_B0BC8E: ConcatVar var_2E4
  loc_B0BC92: LitVarStr var_2F4, " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = o.PeriInfo AND lqn.ExpeImpu = o.ExpeImpu AND lqn.NumeLiqu = o.NumeLiqu"
  loc_B0BC97: ConcatVar var_304
  loc_B0BC9B: LitVarStr var_314, " AND lqn.CodiRete > 0"
  loc_B0BCA0: ConcatVar var_324
  loc_B0BCA4: LitVarStr var_334, " INNER JOIN proveedor ON proveedor.CucuPers = lqn.CucuPers"
  loc_B0BCA9: ConcatVar var_344
  loc_B0BCAD: LitVarStr var_354, " INNER JOIN retenciones r ON r.PeriInfo = lqn.PeriInfo AND r.CodiRete = lqn.CodiRete"
  loc_B0BCB2: ConcatVar var_364
  loc_B0BCB6: LitVarStr var_374, " WHERE o.PeriInfo = "
  loc_B0BCBB: ConcatVar var_384
  loc_B0BCBF: FLdRfVar var_38C
  loc_B0BCC2: FLdPr Me
  loc_B0BCC5: VCallAd Control_ID_cboPeriodo
  loc_B0BCC8: FStAdFunc var_388
  loc_B0BCCB: FLdPr var_388
  loc_B0BCCE:  = Me.Text
  loc_B0BCD3: FLdZeroAd var_38C
  loc_B0BCD6: CVarStr var_39C
  loc_B0BCD9: ConcatVar var_3AC
  loc_B0BCDD: LitVarStr var_3BC, " AND o.FereOrpa = "
  loc_B0BCE2: ConcatVar var_3CC
  loc_B0BCE6: LitI4 1
  loc_B0BCEB: LitI4 1
  loc_B0BCF0: LitVarStr var_400, "'yyyy-mm-dd'"
  loc_B0BCF5: FStVarCopyObj var_410
  loc_B0BCF8: FLdRfVar var_410
  loc_B0BCFB: FLdRfVar var_3E0
  loc_B0BCFE: CStrVarTmp
  loc_B0BCFF: CVarStr var_3F0
  loc_B0BD02: FLdRfVar var_420
  loc_B0BD05: ImpAdCallFPR4  = Format(, )
  loc_B0BD0A: FLdRfVar var_420
  loc_B0BD0D: ConcatVar var_430
  loc_B0BD11: ILdRf var_8C
  loc_B0BD14: CVarStr var_440
  loc_B0BD17: ConcatVar var_450
  loc_B0BD1B: ILdRf var_94
  loc_B0BD1E: CVarStr var_460
  loc_B0BD21: ConcatVar var_470
  loc_B0BD25: LitVarStr var_480, " AND o.FeanOrpa IS NULL AND o.SecureOrpa >= '"
  loc_B0BD2A: ConcatVar var_490
  loc_B0BD2E: FLdPr Me
  loc_B0BD31: VCallAd Control_ID_SecureOrpaMsk
  loc_B0BD34: FStAdFunc var_4AC
  loc_B0BD37: FLdPr var_4AC
  loc_B0BD3A: LateIdLdVar var_4BC DispID_22 0
  loc_B0BD41: CStrVarTmp
  loc_B0BD42: CVarStr var_4FC
  loc_B0BD45: LitVarStr var_4DC, "0"
  loc_B0BD4A: FStVarCopyObj var_4EC
  loc_B0BD4D: FLdRfVar var_4EC
  loc_B0BD50: FLdRfVar var_4A4
  loc_B0BD53: CStrVarTmp
  loc_B0BD54: FStStrNoPop var_4A8
  loc_B0BD57: LitStr vbNullString
  loc_B0BD5A: EqStr
  loc_B0BD5C: CVarBoolI2 var_4CC
  loc_B0BD60: FLdRfVar var_50C
  loc_B0BD63: ImpAdCallFPR4  = IIf(, , )
  loc_B0BD68: FLdRfVar var_50C
  loc_B0BD6B: ConcatVar var_51C
  loc_B0BD6F: LitVarStr var_52C, "'"
  loc_B0BD74: ConcatVar var_53C
  loc_B0BD78: LitVarStr var_54C, " ORDER BY SecureOrpa, Orden, NumeOrpa;"
  loc_B0BD7D: ConcatVar var_55C
  loc_B0BD81: CStrVarVal var_560
  loc_B0BD85: FLdPr var_118
  loc_B0BD88: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_B0BD8D: FFreeStr var_100 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_11C = "": var_124 = "": var_120 = "": var_128 = "": var_1B0 = "": var_4A8 = ""
  loc_B0BDA8: FFreeAd var_B8 = "": var_104 = "": var_19C = "": var_1B4 = "": var_388 = "": var_3D0 = "": var_494 = ""
  loc_B0BDBB: FFreeVar var_3F0 = "": var_410 = "": var_3CC = "": var_420 = "": var_430 = "": var_450 = "": var_470 = "": var_4A4 = "": var_4BC = "": var_4CC = "": var_4EC = "": var_4FC = "": var_490 = "": var_50C = "": var_51C = "": var_53C = "": var_55C = "": var_CC = "": var_EC = "": var_FC = "": var_148 = "": var_138 = "": var_158 = "": var_168 = "": var_178 = "": var_1AC = "": var_1C4 = "": var_1D4 = "": var_1F4 = "": var_204 = "": var_198 = "": var_214 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_364 = "": var_384 = "": var_39C = "": var_3AC = ""
  loc_B0BE1C: FLdRfVar var_564
  loc_B0BE1F: FLdPr var_118
  loc_B0BE22: from_stack_1 = clsordenpago.RecordCount
  loc_B0BE27: ILdRf var_564
  loc_B0BE2A: LitI4 0
  loc_B0BE2F: EqI4
  loc_B0BE30: BranchF loc_B0BE43
  loc_B0BE33: LitI4 0
  loc_B0BE38: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B0BE3B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0BE40: Branch loc_B0C079
  loc_B0BE43: LitI2_Byte 0
  loc_B0BE45: LitVar_Missing var_CC
  loc_B0BE48: LitI2_Byte &HFF
  loc_B0BE4A: LitVarI2 var_A4, 0
  loc_B0BE4F: PopAdLdVar
  loc_B0BE50: FLdPr Me
  loc_B0BE53: MemLdRfVar from_stack_1.global_84
  loc_B0BE56: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0BE5B: FFree1Var var_CC = ""
  loc_B0BE5E: LitI2_Byte 0
  loc_B0BE60: FLdPr Me
  loc_B0BE63: MemStI2 global_88
  loc_B0BE66: LitI4 0
  loc_B0BE6B: LitI4 1
  loc_B0BE70: FLdPr Me
  loc_B0BE73: MemLdRfVar from_stack_1.global_80
  loc_B0BE76: Redim
  loc_B0BE80: Call Proc_213_24_A5E4C8()
  loc_B0BE85: FLdRfVar var_BA
  loc_B0BE88: FLdPr var_118
  loc_B0BE8B: from_stack_1 = clsordenpago.EOF
  loc_B0BE90: FLdI2 var_BA
  loc_B0BE93: NotI4
  loc_B0BE94: BranchF loc_B0BF70
  loc_B0BE97: FLdRfVar var_CC
  loc_B0BE9A: FLdRfVar var_19C
  loc_B0BE9D: LitVarStr var_A4, "NumeOrpa"
  loc_B0BEA2: PopAdLdVar
  loc_B0BEA3: FLdRfVar var_104
  loc_B0BEA6: FLdRfVar var_B8
  loc_B0BEA9: FLdPr var_118
  loc_B0BEAC: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B0BEB1: FLdPr var_B8
  loc_B0BEB4:  = Me.Fields
  loc_B0BEB9: FLdPr var_104
  loc_B0BEBC: from_stack_2 = Me.Item(from_stack_1)
  loc_B0BEC1: FLdPr var_19C
  loc_B0BEC4:  = Me.Value
  loc_B0BEC9: FLdRfVar var_CC
  loc_B0BECC: FnCIntVar
  loc_B0BECE: CR8I2
  loc_B0BECF: FLdPr Me
  loc_B0BED2: MemLdI2 global_88
  loc_B0BED5: CI4UI1
  loc_B0BED6: FLdPr Me
  loc_B0BED9: MemLdStr global_80
  loc_B0BEDC: Ary1LdPr
  loc_B0BEDD: MemLdStr global_4
  loc_B0BEE0: CR8Str
  loc_B0BEE2: NeR8
  loc_B0BEE3: FFreeAd var_B8 = "": var_104 = ""
  loc_B0BEEC: FFree1Var var_CC = ""
  loc_B0BEEF: BranchF loc_B0BEFA
  loc_B0BEF2: Call Proc_213_24_A5E4C8()
  loc_B0BEF7: Branch loc_B0BF6D
  loc_B0BEFA: FLdRfVar var_CC
  loc_B0BEFD: FLdRfVar var_19C
  loc_B0BF00: LitVarStr var_A4, "CucuPers"
  loc_B0BF05: PopAdLdVar
  loc_B0BF06: FLdRfVar var_104
  loc_B0BF09: FLdRfVar var_B8
  loc_B0BF0C: FLdPr var_118
  loc_B0BF0F: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B0BF14: FLdPr var_B8
  loc_B0BF17:  = Me.Fields
  loc_B0BF1C: FLdPr var_104
  loc_B0BF1F: from_stack_2 = Me.Item(from_stack_1)
  loc_B0BF24: FLdPr var_19C
  loc_B0BF27:  = Me.Value
  loc_B0BF2C: FLdRfVar var_CC
  loc_B0BF2F: FLdPr Me
  loc_B0BF32: MemLdI2 global_90
  loc_B0BF35: CI4UI1
  loc_B0BF36: FLdPr Me
  loc_B0BF39: MemLdI2 global_88
  loc_B0BF3C: CI4UI1
  loc_B0BF3D: FLdPr Me
  loc_B0BF40: MemLdStr global_80
  loc_B0BF43: Ary1LdPr
  loc_B0BF44: MemLdStr global_24
  loc_B0BF47: Ary1LdPr
  loc_B0BF48: MemLdStr global_0
  loc_B0BF4B: CVarStr var_B4
  loc_B0BF4E: HardType
  loc_B0BF4F: NeVarBool
  loc_B0BF51: FFreeAd var_B8 = "": var_104 = ""
  loc_B0BF5A: FFree1Var var_CC = ""
  loc_B0BF5D: BranchF loc_B0BF68
  loc_B0BF60: Call Proc_213_25_9F57CC()
  loc_B0BF65: Branch loc_B0BF6D
  loc_B0BF68: Call Proc_213_26_A53440()
  loc_B0BF6D: Branch loc_B0BE85
  loc_B0BF70: LitNothing
  loc_B0BF72: FStAd var_118 
  loc_B0BF76: LitI2_Byte 1
  loc_B0BF78: FLdPr Me
  loc_B0BF7B: MemLdRfVar from_stack_1.global_88
  loc_B0BF7E: FLdPr Me
  loc_B0BF81: MemLdStr global_80
  loc_B0BF84: LitI2_Byte 1
  loc_B0BF86: FnUBound
  loc_B0BF88: CI2I4
  loc_B0BF89: ForI2 var_56C
  loc_B0BF8F: LitI2_Byte 1
  loc_B0BF91: FLdPr Me
  loc_B0BF94: MemLdRfVar from_stack_1.global_90
  loc_B0BF97: FLdPr Me
  loc_B0BF9A: MemLdI2 global_88
  loc_B0BF9D: CI4UI1
  loc_B0BF9E: FLdPr Me
  loc_B0BFA1: MemLdStr global_80
  loc_B0BFA4: Ary1LdPr
  loc_B0BFA5: MemLdStr global_24
  loc_B0BFA8: LitI2_Byte 1
  loc_B0BFAA: FnUBound
  loc_B0BFAC: CI2I4
  loc_B0BFAD: ForI2 var_570
  loc_B0BFB3: FLdPr Me
  loc_B0BFB6: MemLdI2 global_90
  loc_B0BFB9: CI4UI1
  loc_B0BFBA: FLdPr Me
  loc_B0BFBD: MemLdI2 global_88
  loc_B0BFC0: CI4UI1
  loc_B0BFC1: FLdPr Me
  loc_B0BFC4: MemLdStr global_80
  loc_B0BFC7: Ary1LdPr
  loc_B0BFC8: MemLdStr global_24
  loc_B0BFCB: Ary1LdPr
  loc_B0BFCC: MemLdStr global_8
  loc_B0BFCF: LitI2_Byte 1
  loc_B0BFD1: FnUBound
  loc_B0BFD3: CI2I4
  loc_B0BFD4: FLdPr Me
  loc_B0BFD7: MemLdI2 global_90
  loc_B0BFDA: CI4UI1
  loc_B0BFDB: FLdPr Me
  loc_B0BFDE: MemLdI2 global_88
  loc_B0BFE1: CI4UI1
  loc_B0BFE2: FLdPr Me
  loc_B0BFE5: MemLdStr global_80
  loc_B0BFE8: Ary1LdPr
  loc_B0BFE9: MemLdStr global_24
  loc_B0BFEC: Ary1LdPr
  loc_B0BFED: MemStI2 global_12
  loc_B0BFF0: FLdPr Me
  loc_B0BFF3: MemLdI2 global_88
  loc_B0BFF6: CI4UI1
  loc_B0BFF7: FLdPr Me
  loc_B0BFFA: MemLdStr global_80
  loc_B0BFFD: Ary1LdPr
  loc_B0BFFE: MemLdI2 global_32
  loc_B0C001: FLdPr Me
  loc_B0C004: MemLdI2 global_90
  loc_B0C007: CI4UI1
  loc_B0C008: FLdPr Me
  loc_B0C00B: MemLdI2 global_88
  loc_B0C00E: CI4UI1
  loc_B0C00F: FLdPr Me
  loc_B0C012: MemLdStr global_80
  loc_B0C015: Ary1LdPr
  loc_B0C016: MemLdStr global_24
  loc_B0C019: Ary1LdPr
  loc_B0C01A: MemLdI2 global_12
  loc_B0C01D: AddI2
  loc_B0C01E: FLdPr Me
  loc_B0C021: MemLdI2 global_88
  loc_B0C024: CI4UI1
  loc_B0C025: FLdPr Me
  loc_B0C028: MemLdStr global_80
  loc_B0C02B: Ary1LdPr
  loc_B0C02C: MemStI2 global_32
  loc_B0C02F: FLdPr Me
  loc_B0C032: MemLdRfVar from_stack_1.global_90
  loc_B0C035: NextI2 var_570, loc_B0BFB3
  loc_B0C03A: LitI2_Byte 0
  loc_B0C03C: FLdPr Me
  loc_B0C03F: MemLdRfVar from_stack_1.global_84
  loc_B0C042: CVarRef
  loc_B0C047: LitI2_Byte &HFF
  loc_B0C049: FLdPr Me
  loc_B0C04C: MemLdI2 global_88
  loc_B0C04F: CI4UI1
  loc_B0C050: FLdPr Me
  loc_B0C053: MemLdStr global_80
  loc_B0C056: Ary1LdPr
  loc_B0C057: MemLdStr global_28
  loc_B0C05A: CVarStr var_A4
  loc_B0C05D: PopAdLdVar
  loc_B0C05E: FLdRfVar var_568
  loc_B0C061: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C066: FLdPr Me
  loc_B0C069: MemLdRfVar from_stack_1.global_88
  loc_B0C06C: NextI2 var_56C, loc_B0BF8F
  loc_B0C071: LitI2_Byte &HFF
  loc_B0C073: FLdPr Me
  loc_B0C076: MemStI2 bGenerado
  loc_B0C079: LitI4 0
  loc_B0C07E: CI2I4
  loc_B0C07F: FLdPr Me
  loc_B0C082: Me.MousePointer = from_stack_1
  loc_B0C087: LitVarStr var_A4, vbNullString
  loc_B0C08C: PopAdLdVar
  loc_B0C08D: FLdPr Me
  loc_B0C090: VCallAd Control_ID_statusBar
  loc_B0C093: FStAdFunc var_B8
  loc_B0C096: FLdPr var_B8
  loc_B0C099: LateIdSt
  loc_B0C09E: FFree1Ad var_B8
  loc_B0C0A1: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '9C7230
  'Data Table: 496A2C
  loc_9C717C: LitI4 0
  loc_9C7181: LitI4 8
  loc_9C7186: FLdRfVar var_88
  loc_9C7189: Redim
  loc_9C7193: FLdPr Me
  loc_9C7196: VCallAd Control_ID_cboPeriodo
  loc_9C7199: CVarAd
  loc_9C719D: ParmAry1St
  loc_9C71A3: FLdPr Me
  loc_9C71A6: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_9C71A9: CVarAd
  loc_9C71AD: ParmAry1St
  loc_9C71B3: FLdPr Me
  loc_9C71B6: VCallAd Control_ID_cmdFereOrpaDesde
  loc_9C71B9: CVarAd
  loc_9C71BD: ParmAry1St
  loc_9C71C3: FLdPr Me
  loc_9C71C6: VCallAd Control_ID_TodosOpt
  loc_9C71C9: CVarAd
  loc_9C71CD: ParmAry1St
  loc_9C71D3: FLdPr Me
  loc_9C71D6: VCallAd Control_ID_DebitoOpt
  loc_9C71D9: CVarAd
  loc_9C71DD: ParmAry1St
  loc_9C71E3: FLdPr Me
  loc_9C71E6: VCallAd Control_ID_DevengadoOpt
  loc_9C71E9: CVarAd
  loc_9C71ED: ParmAry1St
  loc_9C71F3: FLdPr Me
  loc_9C71F6: VCallAd Control_ID_AnuladosChk
  loc_9C71F9: CVarAd
  loc_9C71FD: ParmAry1St
  loc_9C7203: FLdPr Me
  loc_9C7206: VCallAd Control_ID_OpTxt
  loc_9C7209: CVarAd
  loc_9C720D: ParmAry1St
  loc_9C7213: FLdPr Me
  loc_9C7216: VCallAd Control_ID_SecureOrpaMsk
  loc_9C7219: CVarAd
  loc_9C721D: ParmAry1St
  loc_9C7223: FLdRfVar var_88
  loc_9C7226: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C722B: FLdRfVar var_88
  loc_9C722E: Erase
  loc_9C722F: ExitProcHresult
End Sub

Private Function Proc_213_22_A855B4() 'A855B4
  'Data Table: 496A2C
  loc_A85198: LitVarStr var_98, "<html>"
  loc_A8519D: PopAdLdVar
  loc_A8519E: FLdPr Me
  loc_A851A1: MemLdRfVar from_stack_1.htmFile
  loc_A851A4: LdPrVar
  loc_A851A6: LateMemCall
  loc_A851AC: LitVarStr var_98, "<head>"
  loc_A851B1: PopAdLdVar
  loc_A851B2: FLdPr Me
  loc_A851B5: MemLdRfVar from_stack_1.htmFile
  loc_A851B8: LdPrVar
  loc_A851BA: LateMemCall
  loc_A851C0: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A851C5: PopAdLdVar
  loc_A851C6: FLdPr Me
  loc_A851C9: MemLdRfVar from_stack_1.htmFile
  loc_A851CC: LdPrVar
  loc_A851CE: LateMemCall
  loc_A851D4: LitStr "<title>"
  loc_A851D7: FLdRfVar var_AC
  loc_A851DA: FLdPr Me
  loc_A851DD:  = Me.Caption
  loc_A851E2: ILdRf var_AC
  loc_A851E5: ConcatStr
  loc_A851E6: FStStrNoPop var_B0
  loc_A851E9: LitStr "</title>"
  loc_A851EC: ConcatStr
  loc_A851ED: CVarStr var_C0
  loc_A851F0: PopAdLdVar
  loc_A851F1: FLdPr Me
  loc_A851F4: MemLdRfVar from_stack_1.htmFile
  loc_A851F7: LdPrVar
  loc_A851F9: LateMemCall
  loc_A851FF: FFreeStr var_AC = ""
  loc_A85206: FFree1Var var_C0 = ""
  loc_A85209: LitStr ".ExpOriginal {"
  loc_A8520C: LitStr " max-width: 40px;"
  loc_A8520F: ConcatStr
  loc_A85210: FStStrNoPop var_AC
  loc_A85213: LitStr " width: 40px;"
  loc_A85216: ConcatStr
  loc_A85217: FStStrNoPop var_B0
  loc_A8521A: LitStr " word-wrap: break-word;"
  loc_A8521D: ConcatStr
  loc_A8521E: FStStrNoPop var_C4
  loc_A85221: LitStr " word-break: break-all;"
  loc_A85224: ConcatStr
  loc_A85225: FStStrNoPop var_C8
  loc_A85228: LitStr " overflow-wrap: break-word;"
  loc_A8522B: ConcatStr
  loc_A8522C: FStStrNoPop var_CC
  loc_A8522F: LitStr " white-space: normal;"
  loc_A85232: ConcatStr
  loc_A85233: FStStrNoPop var_D0
  loc_A85236: LitStr " font-size: 9px;"
  loc_A85239: ConcatStr
  loc_A8523A: FStStrNoPop var_D4
  loc_A8523D: LitStr "}"
  loc_A85240: ConcatStr
  loc_A85241: FStStr var_88
  loc_A85244: FFreeStr var_AC = "": var_B0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A85255: ILdRf var_88
  loc_A85258: ILdRf Me
  loc_A8525B: CastAd
  loc_A8525E: FStAdFunc var_D8
  loc_A85261: FLdRfVar var_D8
  loc_A85264: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A85269: FFree1Ad var_D8
  loc_A8526C: LitI4 0
  loc_A85271: FStStrCopy var_B0
  loc_A85274: FLdRfVar var_B0
  loc_A85277: LitI4 0
  loc_A8527C: FStStrCopy var_AC
  loc_A8527F: FLdRfVar var_AC
  loc_A85282: LitI2_Byte &HFF
  loc_A85284: PopTmpLdAd2 var_DA
  loc_A85287: FLdPr Me
  loc_A8528A: MemLdRfVar from_stack_1.htmFile
  loc_A8528D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A85292: FFreeStr var_AC = ""
  loc_A85299: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A8529E: PopAdLdVar
  loc_A8529F: FLdPr Me
  loc_A852A2: MemLdRfVar from_stack_1.htmFile
  loc_A852A5: LdPrVar
  loc_A852A7: LateMemCall
  loc_A852AD: LitVarStr var_98, "  <tr valign=""baseline"">"
  loc_A852B2: PopAdLdVar
  loc_A852B3: FLdPr Me
  loc_A852B6: MemLdRfVar from_stack_1.htmFile
  loc_A852B9: LdPrVar
  loc_A852BB: LateMemCall
  loc_A852C1: LitVarStr var_A8, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_A852C6: LitVarStr var_98, "Municipalidad de Guaymallén"
  loc_A852CB: FStVarCopyObj var_C0
  loc_A852CE: FLdRfVar var_C0
  loc_A852D1: FLdRfVar var_EC
  loc_A852D4: ImpAdCallFPR4  = Ucase()
  loc_A852D9: FLdRfVar var_EC
  loc_A852DC: ConcatVar var_FC
  loc_A852E0: LitVarStr var_10C, "</p>"
  loc_A852E5: ConcatVar var_11C
  loc_A852E9: PopAdLdVar
  loc_A852EA: FLdPr Me
  loc_A852ED: MemLdRfVar from_stack_1.htmFile
  loc_A852F0: LdPrVar
  loc_A852F2: LateMemCall
  loc_A852F8: FFreeVar var_C0 = "": var_EC = "": var_FC = ""
  loc_A85303: LitStr "                 <p>"
  loc_A85306: FLdRfVar var_AC
  loc_A85309: FLdPr Me
  loc_A8530C:  = Me.Caption
  loc_A85311: ILdRf var_AC
  loc_A85314: ConcatStr
  loc_A85315: FStStrNoPop var_B0
  loc_A85318: LitStr "</p>"
  loc_A8531B: ConcatStr
  loc_A8531C: CVarStr var_C0
  loc_A8531F: PopAdLdVar
  loc_A85320: FLdPr Me
  loc_A85323: MemLdRfVar from_stack_1.htmFile
  loc_A85326: LdPrVar
  loc_A85328: LateMemCall
  loc_A8532E: FFreeStr var_AC = ""
  loc_A85335: FFree1Var var_C0 = ""
  loc_A85338: LitVarStr var_98, "    </th>"
  loc_A8533D: PopAdLdVar
  loc_A8533E: FLdPr Me
  loc_A85341: MemLdRfVar from_stack_1.htmFile
  loc_A85344: LdPrVar
  loc_A85346: LateMemCall
  loc_A8534C: LitVarStr var_98, "  </tr>"
  loc_A85351: PopAdLdVar
  loc_A85352: FLdPr Me
  loc_A85355: MemLdRfVar from_stack_1.htmFile
  loc_A85358: LdPrVar
  loc_A8535A: LateMemCall
  loc_A85360: LitVarStr var_98, "  <tr>"
  loc_A85365: PopAdLdVar
  loc_A85366: FLdPr Me
  loc_A85369: MemLdRfVar from_stack_1.htmFile
  loc_A8536C: LdPrVar
  loc_A8536E: LateMemCall
  loc_A85374: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_A85379: PopAdLdVar
  loc_A8537A: FLdPr Me
  loc_A8537D: MemLdRfVar from_stack_1.htmFile
  loc_A85380: LdPrVar
  loc_A85382: LateMemCall
  loc_A85388: LitVarStr var_98, "  </tr>"
  loc_A8538D: PopAdLdVar
  loc_A8538E: FLdPr Me
  loc_A85391: MemLdRfVar from_stack_1.htmFile
  loc_A85394: LdPrVar
  loc_A85396: LateMemCall
  loc_A8539C: LitVarStr var_98, "  <tr valign=""top"">"
  loc_A853A1: PopAdLdVar
  loc_A853A2: FLdPr Me
  loc_A853A5: MemLdRfVar from_stack_1.htmFile
  loc_A853A8: LdPrVar
  loc_A853AA: LateMemCall
  loc_A853B0: LitStr "    <th align=""left"">Periodo: <span class=""Normal"">"
  loc_A853B3: FLdRfVar var_AC
  loc_A853B6: FLdPr Me
  loc_A853B9: VCallAd Control_ID_cboPeriodo
  loc_A853BC: FStAdFunc var_D8
  loc_A853BF: FLdPr var_D8
  loc_A853C2:  = Me.Text
  loc_A853C7: ILdRf var_AC
  loc_A853CA: ConcatStr
  loc_A853CB: FStStrNoPop var_B0
  loc_A853CE: LitStr "</span></th>"
  loc_A853D1: ConcatStr
  loc_A853D2: CVarStr var_C0
  loc_A853D5: PopAdLdVar
  loc_A853D6: FLdPr Me
  loc_A853D9: MemLdRfVar from_stack_1.htmFile
  loc_A853DC: LdPrVar
  loc_A853DE: LateMemCall
  loc_A853E4: FFreeStr var_AC = ""
  loc_A853EB: FFree1Ad var_D8
  loc_A853EE: FFree1Var var_C0 = ""
  loc_A853F1: LitStr "    <th align=""center"">Fecha remisión: <span class=""Normal"">"
  loc_A853F4: FLdPr Me
  loc_A853F7: VCallAd Control_ID_FereOrpaDesdeMsk
  loc_A853FA: FStAdFunc var_D8
  loc_A853FD: FLdPr var_D8
  loc_A85400: LateIdLdVar var_C0 DispID_15 0
  loc_A85407: CStrVarTmp
  loc_A85408: FStStrNoPop var_AC
  loc_A8540B: ConcatStr
  loc_A8540C: FStStrNoPop var_B0
  loc_A8540F: LitStr "</span></th>"
  loc_A85412: ConcatStr
  loc_A85413: CVarStr var_EC
  loc_A85416: PopAdLdVar
  loc_A85417: FLdPr Me
  loc_A8541A: MemLdRfVar from_stack_1.htmFile
  loc_A8541D: LdPrVar
  loc_A8541F: LateMemCall
  loc_A85425: FFreeStr var_AC = ""
  loc_A8542C: FFree1Ad var_D8
  loc_A8542F: FFreeVar var_C0 = ""
  loc_A85436: LitVarStr var_98, "  </tr>"
  loc_A8543B: PopAdLdVar
  loc_A8543C: FLdPr Me
  loc_A8543F: MemLdRfVar from_stack_1.htmFile
  loc_A85442: LdPrVar
  loc_A85444: LateMemCall
  loc_A8544A: LitVarStr var_98, "</table>"
  loc_A8544F: PopAdLdVar
  loc_A85450: FLdPr Me
  loc_A85453: MemLdRfVar from_stack_1.htmFile
  loc_A85456: LdPrVar
  loc_A85458: LateMemCall
  loc_A8545E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"" style=""table-layout: fixed;"" >"
  loc_A85463: PopAdLdVar
  loc_A85464: FLdPr Me
  loc_A85467: MemLdRfVar from_stack_1.htmFile
  loc_A8546A: LdPrVar
  loc_A8546C: LateMemCall
  loc_A85472: LitVarStr var_98, "  <THEAD>"
  loc_A85477: PopAdLdVar
  loc_A85478: FLdPr Me
  loc_A8547B: MemLdRfVar from_stack_1.htmFile
  loc_A8547E: LdPrVar
  loc_A85480: LateMemCall
  loc_A85486: LitVarStr var_98, "  <tr class=""Encabezado"" align=""center"">"
  loc_A8548B: PopAdLdVar
  loc_A8548C: FLdPr Me
  loc_A8548F: MemLdRfVar from_stack_1.htmFile
  loc_A85492: LdPrVar
  loc_A85494: LateMemCall
  loc_A8549A: LitVarStr var_98, "    <th>Secuencia</th>"
  loc_A8549F: PopAdLdVar
  loc_A854A0: FLdPr Me
  loc_A854A3: MemLdRfVar from_stack_1.htmFile
  loc_A854A6: LdPrVar
  loc_A854A8: LateMemCall
  loc_A854AE: LitVarStr var_98, "    <th>Orden de pago</th>"
  loc_A854B3: PopAdLdVar
  loc_A854B4: FLdPr Me
  loc_A854B7: MemLdRfVar from_stack_1.htmFile
  loc_A854BA: LdPrVar
  loc_A854BC: LateMemCall
  loc_A854C2: LitVarStr var_98, "    <th>Expediente</th>"
  loc_A854C7: PopAdLdVar
  loc_A854C8: FLdPr Me
  loc_A854CB: MemLdRfVar from_stack_1.htmFile
  loc_A854CE: LdPrVar
  loc_A854D0: LateMemCall
  loc_A854D6: LitVarStr var_98, "    <th>Liquidación</th>"
  loc_A854DB: PopAdLdVar
  loc_A854DC: FLdPr Me
  loc_A854DF: MemLdRfVar from_stack_1.htmFile
  loc_A854E2: LdPrVar
  loc_A854E4: LateMemCall
  loc_A854EA: LitVarStr var_98, "    <th width=""10" & Chr(37) & """>Exp.Original</th>"
  loc_A854EF: PopAdLdVar
  loc_A854F0: FLdPr Me
  loc_A854F3: MemLdRfVar from_stack_1.htmFile
  loc_A854F6: LdPrVar
  loc_A854F8: LateMemCall
  loc_A854FE: LitVarStr var_98, "    <th>Proveedor</th>"
  loc_A85503: PopAdLdVar
  loc_A85504: FLdPr Me
  loc_A85507: MemLdRfVar from_stack_1.htmFile
  loc_A8550A: LdPrVar
  loc_A8550C: LateMemCall
  loc_A85512: LitVarStr var_98, "    <th>Concepto</th>"
  loc_A85517: PopAdLdVar
  loc_A85518: FLdPr Me
  loc_A8551B: MemLdRfVar from_stack_1.htmFile
  loc_A8551E: LdPrVar
  loc_A85520: LateMemCall
  loc_A85526: LitVarStr var_98, "    <th>Número</th>"
  loc_A8552B: PopAdLdVar
  loc_A8552C: FLdPr Me
  loc_A8552F: MemLdRfVar from_stack_1.htmFile
  loc_A85532: LdPrVar
  loc_A85534: LateMemCall
  loc_A8553A: LitVarStr var_98, "    <th>Fecha</th>"
  loc_A8553F: PopAdLdVar
  loc_A85540: FLdPr Me
  loc_A85543: MemLdRfVar from_stack_1.htmFile
  loc_A85546: LdPrVar
  loc_A85548: LateMemCall
  loc_A8554E: LitVarStr var_98, "    <th>Importe</th>"
  loc_A85553: PopAdLdVar
  loc_A85554: FLdPr Me
  loc_A85557: MemLdRfVar from_stack_1.htmFile
  loc_A8555A: LdPrVar
  loc_A8555C: LateMemCall
  loc_A85562: LitVarStr var_98, "    <th>Total</th>"
  loc_A85567: PopAdLdVar
  loc_A85568: FLdPr Me
  loc_A8556B: MemLdRfVar from_stack_1.htmFile
  loc_A8556E: LdPrVar
  loc_A85570: LateMemCall
  loc_A85576: LitVarStr var_98, "    <th>Firma</th>"
  loc_A8557B: PopAdLdVar
  loc_A8557C: FLdPr Me
  loc_A8557F: MemLdRfVar from_stack_1.htmFile
  loc_A85582: LdPrVar
  loc_A85584: LateMemCall
  loc_A8558A: LitVarStr var_98, "  </tr>"
  loc_A8558F: PopAdLdVar
  loc_A85590: FLdPr Me
  loc_A85593: MemLdRfVar from_stack_1.htmFile
  loc_A85596: LdPrVar
  loc_A85598: LateMemCall
  loc_A8559E: LitVarStr var_98, "  </THEAD>"
  loc_A855A3: PopAdLdVar
  loc_A855A4: FLdPr Me
  loc_A855A7: MemLdRfVar from_stack_1.htmFile
  loc_A855AA: LdPrVar
  loc_A855AC: LateMemCall
  loc_A855B2: ExitProcHresult
End Function

Private Function Proc_213_23_982150() '982150
  'Data Table: 496A2C
  loc_982110: LitVarStr var_94, "</table>"
  loc_982115: PopAdLdVar
  loc_982116: FLdPr Me
  loc_982119: MemLdRfVar from_stack_1.htmFile
  loc_98211C: LdPrVar
  loc_98211E: LateMemCall
  loc_982124: LitVarStr var_94, "</body>"
  loc_982129: PopAdLdVar
  loc_98212A: FLdPr Me
  loc_98212D: MemLdRfVar from_stack_1.htmFile
  loc_982130: LdPrVar
  loc_982132: LateMemCall
  loc_982138: LitVarStr var_94, "</html>"
  loc_98213D: PopAdLdVar
  loc_98213E: FLdPr Me
  loc_982141: MemLdRfVar from_stack_1.htmFile
  loc_982144: LdPrVar
  loc_982146: LateMemCall
  loc_98214C: ExitProcHresult
End Function

Private Function Proc_213_24_A5E4C8() 'A5E4C8
  'Data Table: 496A2C
  loc_A5E1C4: FLdPr Me
  loc_A5E1C7: MemLdI2 global_88
  loc_A5E1CA: LitI2_Byte 1
  loc_A5E1CC: AddI2
  loc_A5E1CD: FLdPr Me
  loc_A5E1D0: MemStI2 global_88
  loc_A5E1D3: LitI2_Byte 0
  loc_A5E1D5: FLdPr Me
  loc_A5E1D8: MemStI2 global_90
  loc_A5E1DB: LitI4 0
  loc_A5E1E0: FLdPr Me
  loc_A5E1E3: MemLdI2 global_88
  loc_A5E1E6: CI4UI1
  loc_A5E1E7: FLdPr Me
  loc_A5E1EA: MemLdRfVar from_stack_1.global_80
  loc_A5E1ED: RedimPreserve
  loc_A5E1F7: FLdRfVar var_A0
  loc_A5E1FA: LitVarStr var_9C, "SecureOrpa"
  loc_A5E1FF: PopAdLdVar
  loc_A5E200: FLdRfVar var_8C
  loc_A5E203: FLdRfVar var_88
  loc_A5E206: FLdPr Me
  loc_A5E209: MemLdRfVar from_stack_1.global_72
  loc_A5E20C: NewIfNullPr clsordenpago
  loc_A5E20F: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A5E214: FLdPr var_88
  loc_A5E217:  = Me.Fields
  loc_A5E21C: FLdPr var_8C
  loc_A5E21F: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E224: LitI2_Byte 0
  loc_A5E226: LitVar_Missing var_D4
  loc_A5E229: LitI2_Byte 0
  loc_A5E22B: FLdZeroAd var_A0
  loc_A5E22E: CVarAd
  loc_A5E232: PopAdLdVar
  loc_A5E233: FLdPr Me
  loc_A5E236: MemLdI2 global_88
  loc_A5E239: CI4UI1
  loc_A5E23A: FLdPr Me
  loc_A5E23D: MemLdStr global_80
  loc_A5E240: AryLock
  loc_A5E243: Ary1LdPr
  loc_A5E244: MemLdRfVar from_stack_1.global_0
  loc_A5E247: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5E24C: AryUnlock
  loc_A5E24F: FFreeAd var_88 = ""
  loc_A5E256: FFreeVar var_B4 = ""
  loc_A5E25D: FLdRfVar var_A0
  loc_A5E260: LitVarStr var_9C, "NumeOrpa"
  loc_A5E265: PopAdLdVar
  loc_A5E266: FLdRfVar var_8C
  loc_A5E269: FLdRfVar var_88
  loc_A5E26C: FLdPr Me
  loc_A5E26F: MemLdRfVar from_stack_1.global_72
  loc_A5E272: NewIfNullPr clsordenpago
  loc_A5E275: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A5E27A: FLdPr var_88
  loc_A5E27D:  = Me.Fields
  loc_A5E282: FLdPr var_8C
  loc_A5E285: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E28A: LitI2_Byte 0
  loc_A5E28C: LitVar_Missing var_D4
  loc_A5E28F: LitI2_Byte 0
  loc_A5E291: FLdZeroAd var_A0
  loc_A5E294: CVarAd
  loc_A5E298: PopAdLdVar
  loc_A5E299: FLdPr Me
  loc_A5E29C: MemLdI2 global_88
  loc_A5E29F: CI4UI1
  loc_A5E2A0: FLdPr Me
  loc_A5E2A3: MemLdStr global_80
  loc_A5E2A6: AryLock
  loc_A5E2A9: Ary1LdPr
  loc_A5E2AA: MemLdRfVar from_stack_1.global_4
  loc_A5E2AD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5E2B2: AryUnlock
  loc_A5E2B5: FFreeAd var_88 = ""
  loc_A5E2BC: FFreeVar var_B4 = ""
  loc_A5E2C3: FLdRfVar var_A0
  loc_A5E2C6: LitVarStr var_9C, "ExpeImpu"
  loc_A5E2CB: PopAdLdVar
  loc_A5E2CC: FLdRfVar var_8C
  loc_A5E2CF: FLdRfVar var_88
  loc_A5E2D2: FLdPr Me
  loc_A5E2D5: MemLdRfVar from_stack_1.global_72
  loc_A5E2D8: NewIfNullPr clsordenpago
  loc_A5E2DB: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A5E2E0: FLdPr var_88
  loc_A5E2E3:  = Me.Fields
  loc_A5E2E8: FLdPr var_8C
  loc_A5E2EB: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E2F0: LitI2_Byte 0
  loc_A5E2F2: LitVar_Missing var_D4
  loc_A5E2F5: LitI2_Byte 0
  loc_A5E2F7: FLdZeroAd var_A0
  loc_A5E2FA: CVarAd
  loc_A5E2FE: PopAdLdVar
  loc_A5E2FF: FLdPr Me
  loc_A5E302: MemLdI2 global_88
  loc_A5E305: CI4UI1
  loc_A5E306: FLdPr Me
  loc_A5E309: MemLdStr global_80
  loc_A5E30C: AryLock
  loc_A5E30F: Ary1LdPr
  loc_A5E310: MemLdRfVar from_stack_1.global_8
  loc_A5E313: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5E318: AryUnlock
  loc_A5E31B: FFreeAd var_88 = ""
  loc_A5E322: FFreeVar var_B4 = ""
  loc_A5E329: FLdRfVar var_A0
  loc_A5E32C: LitVarStr var_9C, "NumeLiqu"
  loc_A5E331: PopAdLdVar
  loc_A5E332: FLdRfVar var_8C
  loc_A5E335: FLdRfVar var_88
  loc_A5E338: FLdPr Me
  loc_A5E33B: MemLdRfVar from_stack_1.global_72
  loc_A5E33E: NewIfNullPr clsordenpago
  loc_A5E341: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A5E346: FLdPr var_88
  loc_A5E349:  = Me.Fields
  loc_A5E34E: FLdPr var_8C
  loc_A5E351: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E356: LitI2_Byte 0
  loc_A5E358: LitVar_Missing var_D4
  loc_A5E35B: LitI2_Byte 0
  loc_A5E35D: FLdZeroAd var_A0
  loc_A5E360: CVarAd
  loc_A5E364: PopAdLdVar
  loc_A5E365: FLdPr Me
  loc_A5E368: MemLdI2 global_88
  loc_A5E36B: CI4UI1
  loc_A5E36C: FLdPr Me
  loc_A5E36F: MemLdStr global_80
  loc_A5E372: AryLock
  loc_A5E375: Ary1LdPr
  loc_A5E376: MemLdRfVar from_stack_1.global_12
  loc_A5E379: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5E37E: AryUnlock
  loc_A5E381: FFreeAd var_88 = ""
  loc_A5E388: FFreeVar var_B4 = ""
  loc_A5E38F: FLdRfVar var_B4
  loc_A5E392: FLdRfVar var_A0
  loc_A5E395: LitVarStr var_9C, "ExorImpus"
  loc_A5E39A: PopAdLdVar
  loc_A5E39B: FLdRfVar var_8C
  loc_A5E39E: FLdRfVar var_88
  loc_A5E3A1: FLdPr Me
  loc_A5E3A4: MemLdRfVar from_stack_1.global_72
  loc_A5E3A7: NewIfNullPr clsordenpago
  loc_A5E3AA: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A5E3AF: FLdPr var_88
  loc_A5E3B2:  = Me.Fields
  loc_A5E3B7: FLdPr var_8C
  loc_A5E3BA: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E3BF: FLdPr var_A0
  loc_A5E3C2:  = Me.Value
  loc_A5E3C7: LitI4 0
  loc_A5E3CC: LitI4 -1
  loc_A5E3D1: LitI4 1
  loc_A5E3D6: LitStr "<br>"
  loc_A5E3D9: LitStr ","
  loc_A5E3DC: FLdRfVar var_B4
  loc_A5E3DF: CStrVarTmp
  loc_A5E3E0: FStStrNoPop var_D8
  loc_A5E3E3: ImpAdCallI2 Replace(, , , , , )
  loc_A5E3E8: FStStr var_EC
  loc_A5E3EB: LitI2_Byte 0
  loc_A5E3ED: LitVar_Missing var_E8
  loc_A5E3F0: LitI2_Byte 0
  loc_A5E3F2: FLdZeroAd var_EC
  loc_A5E3F5: CVarStr var_D4
  loc_A5E3F8: PopAdLdVar
  loc_A5E3F9: FLdPr Me
  loc_A5E3FC: MemLdI2 global_88
  loc_A5E3FF: CI4UI1
  loc_A5E400: FLdPr Me
  loc_A5E403: MemLdStr global_80
  loc_A5E406: AryLock
  loc_A5E409: Ary1LdPr
  loc_A5E40A: MemLdRfVar from_stack_1.global_16
  loc_A5E40D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5E412: AryUnlock
  loc_A5E415: FFreeStr var_D8 = ""
  loc_A5E41C: FFreeAd var_88 = "": var_8C = ""
  loc_A5E425: FFreeVar var_B4 = "": var_D4 = ""
  loc_A5E42E: FLdRfVar var_A0
  loc_A5E431: LitVarStr var_9C, "CargoOrpa"
  loc_A5E436: PopAdLdVar
  loc_A5E437: FLdRfVar var_8C
  loc_A5E43A: FLdRfVar var_88
  loc_A5E43D: FLdPr Me
  loc_A5E440: MemLdRfVar from_stack_1.global_72
  loc_A5E443: NewIfNullPr clsordenpago
  loc_A5E446: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A5E44B: FLdPr var_88
  loc_A5E44E:  = Me.Fields
  loc_A5E453: FLdPr var_8C
  loc_A5E456: from_stack_2 = Me.Item(from_stack_1)
  loc_A5E45B: LitI2_Byte 0
  loc_A5E45D: LitVar_Missing var_D4
  loc_A5E460: LitI2_Byte 0
  loc_A5E462: FLdZeroAd var_A0
  loc_A5E465: CVarAd
  loc_A5E469: PopAdLdVar
  loc_A5E46A: FLdPr Me
  loc_A5E46D: MemLdI2 global_88
  loc_A5E470: CI4UI1
  loc_A5E471: FLdPr Me
  loc_A5E474: MemLdStr global_80
  loc_A5E477: AryLock
  loc_A5E47A: Ary1LdPr
  loc_A5E47B: MemLdRfVar from_stack_1.global_20
  loc_A5E47E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5E483: AryUnlock
  loc_A5E486: FFreeAd var_88 = ""
  loc_A5E48D: FFreeVar var_B4 = ""
  loc_A5E494: LitI2_Byte 0
  loc_A5E496: LitVar_Missing var_B4
  loc_A5E499: LitI2_Byte 0
  loc_A5E49B: LitVarI2 var_9C, 0
  loc_A5E4A0: PopAdLdVar
  loc_A5E4A1: FLdPr Me
  loc_A5E4A4: MemLdI2 global_88
  loc_A5E4A7: CI4UI1
  loc_A5E4A8: FLdPr Me
  loc_A5E4AB: MemLdStr global_80
  loc_A5E4AE: AryLock
  loc_A5E4B1: Ary1LdPr
  loc_A5E4B2: MemLdRfVar from_stack_1.global_28
  loc_A5E4B5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5E4BA: AryUnlock
  loc_A5E4BD: FFree1Var var_B4 = ""
  loc_A5E4C0: Call Proc_213_25_9F57CC()
  loc_A5E4C5: ExitProcHresult
End Function

Private Function Proc_213_25_9F57CC() '9F57CC
  'Data Table: 496A2C
  loc_9F5698: FLdPr Me
  loc_9F569B: MemLdI2 global_90
  loc_9F569E: LitI2_Byte 1
  loc_9F56A0: AddI2
  loc_9F56A1: FLdPr Me
  loc_9F56A4: MemStI2 global_90
  loc_9F56A7: LitI2_Byte 0
  loc_9F56A9: FLdPr Me
  loc_9F56AC: MemStI2 global_92
  loc_9F56AF: LitI4 0
  loc_9F56B4: FLdPr Me
  loc_9F56B7: MemLdI2 global_90
  loc_9F56BA: CI4UI1
  loc_9F56BB: FLdPr Me
  loc_9F56BE: MemLdI2 global_88
  loc_9F56C1: CI4UI1
  loc_9F56C2: FLdPr Me
  loc_9F56C5: MemLdStr global_80
  loc_9F56C8: Ary1LdPr
  loc_9F56C9: MemLdRfVar from_stack_1.global_24
  loc_9F56CC: RedimPreserve
  loc_9F56D6: FLdRfVar var_A0
  loc_9F56D9: LitVarStr var_9C, "CucuPers"
  loc_9F56DE: PopAdLdVar
  loc_9F56DF: FLdRfVar var_8C
  loc_9F56E2: FLdRfVar var_88
  loc_9F56E5: FLdPr Me
  loc_9F56E8: MemLdRfVar from_stack_1.global_72
  loc_9F56EB: NewIfNullPr clsordenpago
  loc_9F56EE: from_stack_1v = clsordenpago.RsFrmGet()
  loc_9F56F3: FLdPr var_88
  loc_9F56F6:  = Me.Fields
  loc_9F56FB: FLdPr var_8C
  loc_9F56FE: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5703: LitI2_Byte 0
  loc_9F5705: LitVar_Missing var_D8
  loc_9F5708: LitI2_Byte 0
  loc_9F570A: FLdZeroAd var_A0
  loc_9F570D: CVarAd
  loc_9F5711: PopAdLdVar
  loc_9F5712: FLdPr Me
  loc_9F5715: MemLdI2 global_90
  loc_9F5718: CI4UI1
  loc_9F5719: FLdPr Me
  loc_9F571C: MemLdI2 global_88
  loc_9F571F: CI4UI1
  loc_9F5720: FLdPr Me
  loc_9F5723: MemLdStr global_80
  loc_9F5726: AryLock
  loc_9F5729: Ary1LdPr
  loc_9F572A: MemLdStr global_24
  loc_9F572D: AryLock
  loc_9F5730: Ary1LdPr
  loc_9F5731: MemLdRfVar from_stack_1.global_0
  loc_9F5734: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F5739: AryUnlock
  loc_9F573C: AryUnlock
  loc_9F573F: FFreeAd var_88 = ""
  loc_9F5746: FFreeVar var_B8 = ""
  loc_9F574D: FLdRfVar var_A0
  loc_9F5750: LitVarStr var_9C, "DetaProv"
  loc_9F5755: PopAdLdVar
  loc_9F5756: FLdRfVar var_8C
  loc_9F5759: FLdRfVar var_88
  loc_9F575C: FLdPr Me
  loc_9F575F: MemLdRfVar from_stack_1.global_72
  loc_9F5762: NewIfNullPr clsordenpago
  loc_9F5765: from_stack_1v = clsordenpago.RsFrmGet()
  loc_9F576A: FLdPr var_88
  loc_9F576D:  = Me.Fields
  loc_9F5772: FLdPr var_8C
  loc_9F5775: from_stack_2 = Me.Item(from_stack_1)
  loc_9F577A: LitI2_Byte 0
  loc_9F577C: LitVar_Missing var_D8
  loc_9F577F: LitI2_Byte 0
  loc_9F5781: FLdZeroAd var_A0
  loc_9F5784: CVarAd
  loc_9F5788: PopAdLdVar
  loc_9F5789: FLdPr Me
  loc_9F578C: MemLdI2 global_90
  loc_9F578F: CI4UI1
  loc_9F5790: FLdPr Me
  loc_9F5793: MemLdI2 global_88
  loc_9F5796: CI4UI1
  loc_9F5797: FLdPr Me
  loc_9F579A: MemLdStr global_80
  loc_9F579D: AryLock
  loc_9F57A0: Ary1LdPr
  loc_9F57A1: MemLdStr global_24
  loc_9F57A4: AryLock
  loc_9F57A7: Ary1LdPr
  loc_9F57A8: MemLdRfVar from_stack_1.global_4
  loc_9F57AB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F57B0: AryUnlock
  loc_9F57B3: AryUnlock
  loc_9F57B6: FFreeAd var_88 = ""
  loc_9F57BD: FFreeVar var_B8 = ""
  loc_9F57C4: Call Proc_213_26_A53440()
  loc_9F57C9: ExitProcHresult
  loc_9F57CA: FLdFPR8 var_4C00
End Function

Private Function Proc_213_26_A53440() 'A53440
  'Data Table: 496A2C
  loc_A53190: FLdPr Me
  loc_A53193: MemLdI2 global_92
  loc_A53196: LitI2_Byte 1
  loc_A53198: AddI2
  loc_A53199: FLdPr Me
  loc_A5319C: MemStI2 global_92
  loc_A5319F: LitI4 0
  loc_A531A4: FLdPr Me
  loc_A531A7: MemLdI2 global_92
  loc_A531AA: CI4UI1
  loc_A531AB: FLdPr Me
  loc_A531AE: MemLdI2 global_90
  loc_A531B1: CI4UI1
  loc_A531B2: FLdPr Me
  loc_A531B5: MemLdI2 global_88
  loc_A531B8: CI4UI1
  loc_A531B9: FLdPr Me
  loc_A531BC: MemLdStr global_80
  loc_A531BF: Ary1LdPr
  loc_A531C0: MemLdStr global_24
  loc_A531C3: Ary1LdPr
  loc_A531C4: MemLdRfVar from_stack_1.global_8
  loc_A531C7: RedimPreserve
  loc_A531D1: FLdRfVar var_A0
  loc_A531D4: LitVarStr var_9C, "Concepto"
  loc_A531D9: PopAdLdVar
  loc_A531DA: FLdRfVar var_8C
  loc_A531DD: FLdRfVar var_88
  loc_A531E0: FLdPr Me
  loc_A531E3: MemLdRfVar from_stack_1.global_72
  loc_A531E6: NewIfNullPr clsordenpago
  loc_A531E9: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A531EE: FLdPr var_88
  loc_A531F1:  = Me.Fields
  loc_A531F6: FLdPr var_8C
  loc_A531F9: from_stack_2 = Me.Item(from_stack_1)
  loc_A531FE: LitI2_Byte 0
  loc_A53200: LitVar_Missing var_DC
  loc_A53203: LitI2_Byte 0
  loc_A53205: FLdZeroAd var_A0
  loc_A53208: CVarAd
  loc_A5320C: PopAdLdVar
  loc_A5320D: FLdPr Me
  loc_A53210: MemLdI2 global_92
  loc_A53213: CI4UI1
  loc_A53214: FLdPr Me
  loc_A53217: MemLdI2 global_90
  loc_A5321A: CI4UI1
  loc_A5321B: FLdPr Me
  loc_A5321E: MemLdI2 global_88
  loc_A53221: CI4UI1
  loc_A53222: FLdPr Me
  loc_A53225: MemLdStr global_80
  loc_A53228: AryLock
  loc_A5322B: Ary1LdPr
  loc_A5322C: MemLdStr global_24
  loc_A5322F: AryLock
  loc_A53232: Ary1LdPr
  loc_A53233: MemLdStr global_8
  loc_A53236: AryLock
  loc_A53239: Ary1LdPr
  loc_A5323A: MemLdRfVar from_stack_1.global_0
  loc_A5323D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A53242: AryUnlock
  loc_A53245: AryUnlock
  loc_A53248: AryUnlock
  loc_A5324B: FFreeAd var_88 = ""
  loc_A53252: FFreeVar var_BC = ""
  loc_A53259: FLdRfVar var_A0
  loc_A5325C: LitVarStr var_9C, "Numero"
  loc_A53261: PopAdLdVar
  loc_A53262: FLdRfVar var_8C
  loc_A53265: FLdRfVar var_88
  loc_A53268: FLdPr Me
  loc_A5326B: MemLdRfVar from_stack_1.global_72
  loc_A5326E: NewIfNullPr clsordenpago
  loc_A53271: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A53276: FLdPr var_88
  loc_A53279:  = Me.Fields
  loc_A5327E: FLdPr var_8C
  loc_A53281: from_stack_2 = Me.Item(from_stack_1)
  loc_A53286: LitI2_Byte 0
  loc_A53288: LitVar_Missing var_DC
  loc_A5328B: LitI2_Byte 0
  loc_A5328D: FLdZeroAd var_A0
  loc_A53290: CVarAd
  loc_A53294: PopAdLdVar
  loc_A53295: FLdPr Me
  loc_A53298: MemLdI2 global_92
  loc_A5329B: CI4UI1
  loc_A5329C: FLdPr Me
  loc_A5329F: MemLdI2 global_90
  loc_A532A2: CI4UI1
  loc_A532A3: FLdPr Me
  loc_A532A6: MemLdI2 global_88
  loc_A532A9: CI4UI1
  loc_A532AA: FLdPr Me
  loc_A532AD: MemLdStr global_80
  loc_A532B0: AryLock
  loc_A532B3: Ary1LdPr
  loc_A532B4: MemLdStr global_24
  loc_A532B7: AryLock
  loc_A532BA: Ary1LdPr
  loc_A532BB: MemLdStr global_8
  loc_A532BE: AryLock
  loc_A532C1: Ary1LdPr
  loc_A532C2: MemLdRfVar from_stack_1.global_4
  loc_A532C5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A532CA: AryUnlock
  loc_A532CD: AryUnlock
  loc_A532D0: AryUnlock
  loc_A532D3: FFreeAd var_88 = ""
  loc_A532DA: FFreeVar var_BC = ""
  loc_A532E1: FLdRfVar var_A0
  loc_A532E4: LitVarStr var_9C, "Fecha"
  loc_A532E9: PopAdLdVar
  loc_A532EA: FLdRfVar var_8C
  loc_A532ED: FLdRfVar var_88
  loc_A532F0: FLdPr Me
  loc_A532F3: MemLdRfVar from_stack_1.global_72
  loc_A532F6: NewIfNullPr clsordenpago
  loc_A532F9: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A532FE: FLdPr var_88
  loc_A53301:  = Me.Fields
  loc_A53306: FLdPr var_8C
  loc_A53309: from_stack_2 = Me.Item(from_stack_1)
  loc_A5330E: LitI4 1
  loc_A53313: LitI4 1
  loc_A53318: LitVarStr var_CC, "dd-mm-yyyy"
  loc_A5331D: FStVarCopyObj var_DC
  loc_A53320: FLdRfVar var_DC
  loc_A53323: FLdZeroAd var_A0
  loc_A53326: CVarAd
  loc_A5332A: ImpAdCallI2 Format$(, )
  loc_A5332F: FStStr var_110
  loc_A53332: LitI2_Byte 0
  loc_A53334: LitVar_Missing var_10C
  loc_A53337: LitI2_Byte 0
  loc_A53339: FLdZeroAd var_110
  loc_A5333C: CVarStr var_EC
  loc_A5333F: PopAdLdVar
  loc_A53340: FLdPr Me
  loc_A53343: MemLdI2 global_92
  loc_A53346: CI4UI1
  loc_A53347: FLdPr Me
  loc_A5334A: MemLdI2 global_90
  loc_A5334D: CI4UI1
  loc_A5334E: FLdPr Me
  loc_A53351: MemLdI2 global_88
  loc_A53354: CI4UI1
  loc_A53355: FLdPr Me
  loc_A53358: MemLdStr global_80
  loc_A5335B: AryLock
  loc_A5335E: Ary1LdPr
  loc_A5335F: MemLdStr global_24
  loc_A53362: AryLock
  loc_A53365: Ary1LdPr
  loc_A53366: MemLdStr global_8
  loc_A53369: AryLock
  loc_A5336C: Ary1LdPr
  loc_A5336D: MemLdRfVar from_stack_1.global_8
  loc_A53370: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A53375: AryUnlock
  loc_A53378: AryUnlock
  loc_A5337B: AryUnlock
  loc_A5337E: FFree1Str var_110
  loc_A53381: FFreeAd var_88 = ""
  loc_A53388: FFreeVar var_BC = "": var_DC = "": var_EC = ""
  loc_A53393: FLdRfVar var_A0
  loc_A53396: LitVarStr var_9C, "Importe"
  loc_A5339B: PopAdLdVar
  loc_A5339C: FLdRfVar var_8C
  loc_A5339F: FLdRfVar var_88
  loc_A533A2: FLdPr Me
  loc_A533A5: MemLdRfVar from_stack_1.global_72
  loc_A533A8: NewIfNullPr clsordenpago
  loc_A533AB: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A533B0: FLdPr var_88
  loc_A533B3:  = Me.Fields
  loc_A533B8: FLdPr var_8C
  loc_A533BB: from_stack_2 = Me.Item(from_stack_1)
  loc_A533C0: LitI2_Byte 0
  loc_A533C2: FLdPr Me
  loc_A533C5: MemLdI2 global_88
  loc_A533C8: CI4UI1
  loc_A533C9: FLdPr Me
  loc_A533CC: MemLdStr global_80
  loc_A533CF: AryLock
  loc_A533D2: Ary1LdPr
  loc_A533D3: MemLdRfVar from_stack_1.global_28
  loc_A533D6: CVarRef
  loc_A533DB: LitI2_Byte &HFF
  loc_A533DD: FLdZeroAd var_A0
  loc_A533E0: CVarAd
  loc_A533E4: PopAdLdVar
  loc_A533E5: FLdPr Me
  loc_A533E8: MemLdI2 global_92
  loc_A533EB: CI4UI1
  loc_A533EC: FLdPr Me
  loc_A533EF: MemLdI2 global_90
  loc_A533F2: CI4UI1
  loc_A533F3: FLdPr Me
  loc_A533F6: MemLdI2 global_88
  loc_A533F9: CI4UI1
  loc_A533FA: FLdPr Me
  loc_A533FD: MemLdStr global_80
  loc_A53400: AryLock
  loc_A53403: Ary1LdPr
  loc_A53404: MemLdStr global_24
  loc_A53407: AryLock
  loc_A5340A: Ary1LdPr
  loc_A5340B: MemLdStr global_8
  loc_A5340E: AryLock
  loc_A53411: Ary1LdPr
  loc_A53412: MemLdRfVar from_stack_1.global_12
  loc_A53415: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5341A: AryUnlock
  loc_A5341D: AryUnlock
  loc_A53420: AryUnlock
  loc_A53423: AryUnlock
  loc_A53426: FFreeAd var_88 = ""
  loc_A5342D: FFree1Var var_BC = ""
  loc_A53430: FLdPr Me
  loc_A53433: MemLdRfVar from_stack_1.global_72
  loc_A53436: NewIfNullPr clsordenpago
  loc_A53439: Call clsordenpago.MoveSiguiente()
  loc_A5343E: ExitProcHresult
End Function
