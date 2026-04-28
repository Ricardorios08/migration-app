VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptDeclaraciondeSeguridadSocial
  Caption = "Declaración de Seguridad Social"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptDeclaraciondeSeguridadSocial.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9060
  ClientHeight = 6270
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4800
    Width = 3015
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6015
    Width = 9060
    Height = 255
    TabIndex = 25
    OleObjectBlob = "rptDeclaraciondeSeguridadSocial.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6840
    Top = 5040
    Width = 735
    Height = 615
    TabIndex = 23
    Cancel = -1  'True
    Picture = "rptDeclaraciondeSeguridadSocial.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptDeclaraciondeSeguridadSocial.frx":0B9C
    Left = 2760
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4800
    Width = 3015
    Height = 1095
    TabIndex = 20
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7935
    Height = 4695
    TabIndex = 0
    Begin VB.Frame Frame5
      Caption = " Certificados Con / Sin devolución"
      Left = 240
      Top = 2760
      Width = 5535
      Height = 1455
      TabIndex = 12
      Begin VB.OptionButton optTodos
        Caption = "TODOS"
        Left = 480
        Top = 600
        Width = 1575
        Height = 375
        TabIndex = 13
        Value = 255
        CausesValidation = 0   'False
      End
      Begin VB.OptionButton optConDevolucion
        Caption = "CON Devolución"
        Left = 3000
        Top = 840
        Width = 1575
        Height = 375
        TabIndex = 15
        CausesValidation = 0   'False
      End
      Begin VB.OptionButton optSinDevolucion
        Caption = "SIN Devolución"
        Left = 3000
        Top = 360
        Width = 1575
        Height = 375
        TabIndex = 14
        CausesValidation = 0   'False
      End
    End
    Begin VB.Frame Frame4
      Caption = " Fecha "
      Left = 240
      Top = 840
      Width = 5535
      Height = 1575
      TabIndex = 3
      Begin VB.OptionButton OptionPago
        Caption = "de Pago"
        Left = 3120
        Top = 360
        Width = 975
        Height = 255
        TabIndex = 10
      End
      Begin VB.OptionButton OptionFepaLine
        Caption = "de Pago efectivo"
        Left = 3120
        Top = 840
        Width = 1695
        Height = 255
        TabIndex = 11
      End
      Begin VB.CommandButton DesdeCmd
        Left = 2055
        Top = 360
        Width = 375
        Height = 375
        TabIndex = 6
        Picture = "rptDeclaraciondeSeguridadSocial.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaCmd
        Left = 2055
        Top = 885
        Width = 375
        Height = 375
        TabIndex = 9
        Picture = "rptDeclaraciondeSeguridadSocial.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox MskDesde
        Left = 885
        Top = 405
        Width = 1095
        Height = 285
        TabIndex = 5
        OleObjectBlob = "rptDeclaraciondeSeguridadSocial.frx":1684
      End
      Begin MSMask.MaskEdBox MskHasta
        Left = 885
        Top = 930
        Width = 1095
        Height = 285
        TabIndex = 8
        OleObjectBlob = "rptDeclaraciondeSeguridadSocial.frx":170C
      End
      Begin VB.Label Label4
        Caption = "Desde:"
        Left = 240
        Top = 405
        Width = 510
        Height = 195
        TabIndex = 4
        AutoSize = -1  'True
      End
      Begin VB.Label Label3
        Caption = "Hasta:"
        Left = 285
        Top = 930
        Width = 465
        Height = 195
        TabIndex = 7
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6240
      Top = 2400
      Width = 1335
      Height = 495
      TabIndex = 16
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
    Left = 6960
    Top = 5160
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 24
    OleObjectBlob = "rptDeclaraciondeSeguridadSocial.frx":1794
  End
End

Attribute VB_Name = "rptDeclaraciondeSeguridadSocial"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_005D9300
  bStruc(452) As Byte ' String fields: 15
End Type

Private Type UDT_2_005D8BD8
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdPrevia_Click() '95C810
  'Data Table: 49E30C
  loc_95C7F8: ILdRf Me
  loc_95C7FB: CastAd
  loc_95C7FE: FStAdFunc var_88
  loc_95C801: FLdRfVar var_88
  loc_95C804: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95C809: FFree1Ad var_88
  loc_95C80C: ExitProcHresult
  loc_95C80D: SubI2
End Sub

Private Sub cmdSalir_Click() '977FD0
  'Data Table: 49E30C
  loc_977FA0: LitVarStr var_94, "Cerrando..."
  loc_977FA5: PopAdLdVar
  loc_977FA6: FLdPr Me
  loc_977FA9: VCallAd Control_ID_statusBar
  loc_977FAC: FStAdFunc var_A8
  loc_977FAF: FLdPr var_A8
  loc_977FB2: LateIdSt
  loc_977FB7: FFree1Ad var_A8
  loc_977FBA: ILdRf Me
  loc_977FBD: FStAdNoPop
  loc_977FC1: ImpAdLdRf MemVar_C44F9C
  loc_977FC4: NewIfNullPr Me
  loc_977FC7: Me.Global.Unload from_stack_1
  loc_977FCC: FFree1Ad var_A8
  loc_977FCF: ExitProcHresult
End Sub

Private Sub DesdeCmd_Click() '980048
  'Data Table: 49E30C
  loc_980014: LitVar_Missing var_A4
  loc_980017: PopAdLdVar
  loc_980018: LitVarI4
  loc_980020: PopAdLdVar
  loc_980021: ImpAdLdRf MemVar_C3D9A8
  loc_980024: NewIfNullPr frmCalendario
  loc_980027: frmCalendario.Show from_stack_1, from_stack_2
  loc_98002C: ImpAdLdRf MemVar_C3D038
  loc_98002F: CDargRef
  loc_980033: FLdPr Me
  loc_980036: VCallAd Control_ID_MskDesde
  loc_980039: FStAdFunc var_A8
  loc_98003C: FLdPr var_A8
  loc_98003F: LateIdSt
  loc_980044: FFree1Ad var_A8
  loc_980047: ExitProcHresult
End Sub

Private Sub HastaCmd_Click() '984E9C
  'Data Table: 49E30C
  loc_984E60: LitVar_Missing var_A4
  loc_984E63: PopAdLdVar
  loc_984E64: LitVarI4
  loc_984E6C: PopAdLdVar
  loc_984E6D: ImpAdLdRf MemVar_C3D9A8
  loc_984E70: NewIfNullPr frmCalendario
  loc_984E73: frmCalendario.Show from_stack_1, from_stack_2
  loc_984E78: ImpAdLdFPR8 MemVar_C3D04C
  loc_984E7B: CStrDate
  loc_984E7D: CVarStr var_B4
  loc_984E80: PopAdLdVar
  loc_984E81: FLdPr Me
  loc_984E84: VCallAd Control_ID_MskHasta
  loc_984E87: FStAdFunc var_B8
  loc_984E8A: FLdPr var_B8
  loc_984E8D: LateIdSt
  loc_984E92: FFree1Ad var_B8
  loc_984E95: FFree1Var var_B4 = ""
  loc_984E98: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95C8A8
  'Data Table: 49E30C
  loc_95C890: ILdRf Me
  loc_95C893: CastAd
  loc_95C896: FStAdFunc var_88
  loc_95C899: FLdRfVar var_88
  loc_95C89C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95C8A1: FFree1Ad var_88
  loc_95C8A4: ExitProcHresult
  loc_95C8A5: ExitProcI2
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988DBC
  'Data Table: 49E30C
  loc_988D84: FLdPr Me
  loc_988D87: VCallAd Control_ID_statusBar
  loc_988D8A: FStAdFunc var_88
  loc_988D8D: FLdPr var_88
  loc_988D90: LateIdLdVar var_98 DispID_1 0
  loc_988D97: CStrVarTmp
  loc_988D98: CVarStr var_A8
  loc_988D9B: PopAdLdVar
  loc_988D9C: FLdPr Me
  loc_988D9F: VCallAd Control_ID_statusBar
  loc_988DA2: FStAdFunc var_BC
  loc_988DA5: FLdPr var_BC
  loc_988DA8: LateIdSt
  loc_988DAD: FFreeAd var_88 = ""
  loc_988DB4: FFreeVar var_98 = ""
  loc_988DBB: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '95C940
  'Data Table: 49E30C
  loc_95C928: LitI2_Byte 0
  loc_95C92A: ILdRf Me
  loc_95C92D: CastAd
  loc_95C930: FStAdFunc var_88
  loc_95C933: FLdRfVar var_88
  loc_95C936: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_95C93B: FFree1Ad var_88
  loc_95C93E: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94FCC8
  'Data Table: 49E30C
  loc_94FCB4: FLdPr Me
  loc_94FCB7: VCallAd Control_ID_MskDesde
  loc_94FCBA: CVarAd
  loc_94FCBE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FCC3: FFree1Var var_94 = ""
  loc_94FCC6: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B07CC
  'Data Table: 49E30C
  loc_9B0730: FLdPr Me
  loc_9B0733: VCallAd Control_ID_MskDesde
  loc_9B0736: FStAdFunc var_88
  loc_9B0739: FLdPr var_88
  loc_9B073C: LateIdLdVar var_98 DispID_15 0
  loc_9B0743: PopAd
  loc_9B0745: FLdPr Me
  loc_9B0748: VCallAd Control_ID_MskDesde
  loc_9B074B: FStAdFunc var_AC
  loc_9B074E: LitI2_Byte &HFF
  loc_9B0750: PopTmpLdAd2 var_A2
  loc_9B0753: FLdZeroAd var_AC
  loc_9B0756: FStAdFunc var_A0
  loc_9B0759: FLdRfVar var_A0
  loc_9B075C: LitStr vbNullString
  loc_9B075F: LitI2_Byte 0
  loc_9B0761: LitI2_Byte 0
  loc_9B0763: FLdRfVar var_98
  loc_9B0766: CStrVarTmp
  loc_9B0767: FStStrNoPop var_9C
  loc_9B076A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B076F: FStStrNoPop var_A8
  loc_9B0772: FLdPr Me
  loc_9B0775: MemStStrCopy
  loc_9B0779: FFreeStr var_9C = ""
  loc_9B0780: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0789: FFree1Var var_98 = ""
  loc_9B078C: FLdPr Me
  loc_9B078F: VCallAd Control_ID_MskDesde
  loc_9B0792: FStAdFunc var_B0
  loc_9B0795: LitNothing
  loc_9B0797: CastAd
  loc_9B079A: FStAdFunc var_AC
  loc_9B079D: FLdRfVar var_AC
  loc_9B07A0: FLdZeroAd var_B0
  loc_9B07A3: FStAdFuncNoPop
  loc_9B07A6: CastAd
  loc_9B07A9: FStAdFunc var_A0
  loc_9B07AC: FLdRfVar var_A0
  loc_9B07AF: FLdPr Me
  loc_9B07B2: MemLdRfVar from_stack_1.global_116
  loc_9B07B5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B07BA: IStI2 arg_C
  loc_9B07BD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B07C8: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '94FB60
  'Data Table: 49E30C
  loc_94FB4C: FLdPr Me
  loc_94FB4F: VCallAd Control_ID_MskHasta
  loc_94FB52: CVarAd
  loc_94FB56: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FB5B: FFree1Var var_94 = ""
  loc_94FB5E: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B08B4
  'Data Table: 49E30C
  loc_9B0818: FLdPr Me
  loc_9B081B: VCallAd Control_ID_MskDesde
  loc_9B081E: FStAdFunc var_88
  loc_9B0821: FLdPr var_88
  loc_9B0824: LateIdLdVar var_98 DispID_15 0
  loc_9B082B: PopAd
  loc_9B082D: FLdPr Me
  loc_9B0830: VCallAd Control_ID_MskHasta
  loc_9B0833: FStAdFunc var_AC
  loc_9B0836: LitI2_Byte &HFF
  loc_9B0838: PopTmpLdAd2 var_A2
  loc_9B083B: FLdZeroAd var_AC
  loc_9B083E: FStAdFunc var_A0
  loc_9B0841: FLdRfVar var_A0
  loc_9B0844: LitStr vbNullString
  loc_9B0847: LitI2_Byte 0
  loc_9B0849: LitI2_Byte 0
  loc_9B084B: FLdRfVar var_98
  loc_9B084E: CStrVarTmp
  loc_9B084F: FStStrNoPop var_9C
  loc_9B0852: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0857: FStStrNoPop var_A8
  loc_9B085A: FLdPr Me
  loc_9B085D: MemStStrCopy
  loc_9B0861: FFreeStr var_9C = ""
  loc_9B0868: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0871: FFree1Var var_98 = ""
  loc_9B0874: FLdPr Me
  loc_9B0877: VCallAd Control_ID_MskHasta
  loc_9B087A: FStAdFunc var_B0
  loc_9B087D: LitNothing
  loc_9B087F: CastAd
  loc_9B0882: FStAdFunc var_AC
  loc_9B0885: FLdRfVar var_AC
  loc_9B0888: FLdZeroAd var_B0
  loc_9B088B: FStAdFuncNoPop
  loc_9B088E: CastAd
  loc_9B0891: FStAdFunc var_A0
  loc_9B0894: FLdRfVar var_A0
  loc_9B0897: FLdPr Me
  loc_9B089A: MemLdRfVar from_stack_1.global_116
  loc_9B089D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B08A2: IStI2 arg_C
  loc_9B08A5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B08B0: ExitProcHresult
End Function

Private Sub cmdNueva_Click() '9D7648
  'Data Table: 49E30C
  loc_9D7550: LitI2_Byte 0
  loc_9D7552: FLdPr Me
  loc_9D7555: MemStI2 bGenerado
  loc_9D7558: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D755D: ImpAdLdI2 MemVar_C3D064
  loc_9D7560: CStrUI1
  loc_9D7562: FStStrNoPop var_88
  loc_9D7565: FLdPr Me
  loc_9D7568: VCallAd Control_ID_cboPeriodo
  loc_9D756B: FStAdFunc var_8C
  loc_9D756E: FLdPr var_8C
  loc_9D7571: Me.Text = from_stack_1
  loc_9D7576: FFree1Str var_88
  loc_9D7579: FFree1Ad var_8C
  loc_9D757C: LitI2_Byte 1
  loc_9D757E: LitI2_Byte 1
  loc_9D7580: ImpAdLdI2 MemVar_C3D064
  loc_9D7583: FLdRfVar var_9C
  loc_9D7586: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D758B: FLdRfVar var_9C
  loc_9D758E: CStrVarTmp
  loc_9D758F: CVarStr var_AC
  loc_9D7592: PopAdLdVar
  loc_9D7593: FLdPr Me
  loc_9D7596: VCallAd Control_ID_MskDesde
  loc_9D7599: FStAdFunc var_8C
  loc_9D759C: FLdPr var_8C
  loc_9D759F: LateIdSt
  loc_9D75A4: FFree1Ad var_8C
  loc_9D75A7: FFreeVar var_9C = ""
  loc_9D75AE: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D75B1: CStrDate
  loc_9D75B3: CVarStr var_9C
  loc_9D75B6: PopAdLdVar
  loc_9D75B7: FLdPr Me
  loc_9D75BA: VCallAd Control_ID_MskHasta
  loc_9D75BD: FStAdFunc var_8C
  loc_9D75C0: FLdPr var_8C
  loc_9D75C3: LateIdSt
  loc_9D75C8: FFree1Ad var_8C
  loc_9D75CB: FFree1Var var_9C = ""
  loc_9D75CE: FLdRfVar var_BE
  loc_9D75D1: FLdPr Me
  loc_9D75D4: VCallAd Control_ID_OptionPago
  loc_9D75D7: FStAdFunc var_8C
  loc_9D75DA: FLdPr var_8C
  loc_9D75DD:  = Me.Value
  loc_9D75E2: FLdI2 var_BE
  loc_9D75E5: CI4UI1
  loc_9D75E6: LitI4 0
  loc_9D75EB: EqI4
  loc_9D75EC: FLdRfVar var_C6
  loc_9D75EF: FLdPr Me
  loc_9D75F2: VCallAd Control_ID_OptionFepaLine
  loc_9D75F5: FStAdFunc var_C4
  loc_9D75F8: FLdPr var_C4
  loc_9D75FB:  = Me.Value
  loc_9D7600: FLdI2 var_C6
  loc_9D7603: CI4UI1
  loc_9D7604: LitI4 0
  loc_9D7609: EqI4
  loc_9D760A: AndI4
  loc_9D760B: FFreeAd var_8C = ""
  loc_9D7612: BranchF loc_9D762B
  loc_9D7615: LitI2_Byte &HFF
  loc_9D7617: FLdPr Me
  loc_9D761A: VCallAd Control_ID_OptionPago
  loc_9D761D: FStAdFunc var_8C
  loc_9D7620: FLdPr var_8C
  loc_9D7623: Me.Value = from_stack_1b
  loc_9D7628: FFree1Ad var_8C
  loc_9D762B: Call HabilitarCriterio()
  loc_9D7630: ILdRf Me
  loc_9D7633: CastAd
  loc_9D7636: FStAdFunc var_8C
  loc_9D7639: FLdRfVar var_8C
  loc_9D763C: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D7641: FFree1Ad var_8C
  loc_9D7644: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95C8F4
  'Data Table: 49E30C
  loc_95C8DC: LitI2_Byte 0
  loc_95C8DE: ILdRf Me
  loc_95C8E1: CastAd
  loc_95C8E4: FStAdFunc var_88
  loc_95C8E7: FLdRfVar var_88
  loc_95C8EA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95C8EF: FFree1Ad var_88
  loc_95C8F2: ExitProcHresult
End Sub

Private Sub Form_Load() '9CD3C0
  'Data Table: 49E30C
  loc_9CD2E8: LitI2_Byte &HFF
  loc_9CD2EA: ImpAdStI2 MemVar_C3D840
  loc_9CD2ED: ILdRf Me
  loc_9CD2F0: CastAd
  loc_9CD2F3: FStAdFunc var_90
  loc_9CD2F6: FLdRfVar var_90
  loc_9CD2F9: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CD2FE: FFree1Ad var_90
  loc_9CD301: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CD304: FLdRfVar var_8C
  loc_9CD307: NewIfNullPr clsperiodo
  loc_9CD30A: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CD30F: FLdRfVar var_94
  loc_9CD312: FLdRfVar var_8C
  loc_9CD315: NewIfNullPr clsperiodo
  loc_9CD318: from_stack_1 = clsperiodo.RecordCount
  loc_9CD31D: ILdRf var_94
  loc_9CD320: LitI4 0
  loc_9CD325: GtI4
  loc_9CD326: BranchF loc_9CD3B9
  loc_9CD329: FLdRfVar var_8C
  loc_9CD32C: NewIfNullPr clsperiodo
  loc_9CD32F: Call clsperiodo.MoveFirst()
  loc_9CD334: FLdRfVar var_96
  loc_9CD337: FLdRfVar var_8C
  loc_9CD33A: NewIfNullPr clsperiodo
  loc_9CD33D: from_stack_1 = clsperiodo.EOF
  loc_9CD342: FLdI2 var_96
  loc_9CD345: NotI4
  loc_9CD346: BranchF loc_9CD3B9
  loc_9CD349: LitVar_Missing var_D4
  loc_9CD34C: PopAdLdVar
  loc_9CD34D: FLdRfVar var_C0
  loc_9CD350: FLdRfVar var_B0
  loc_9CD353: LitVarStr var_AC, "PeriInfo"
  loc_9CD358: PopAdLdVar
  loc_9CD359: FLdRfVar var_9C
  loc_9CD35C: FLdRfVar var_90
  loc_9CD35F: FLdRfVar var_8C
  loc_9CD362: NewIfNullPr clsperiodo
  loc_9CD365: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CD36A: FLdPr var_90
  loc_9CD36D:  = Me.Fields
  loc_9CD372: FLdPr var_9C
  loc_9CD375: from_stack_2 = Me.Item(from_stack_1)
  loc_9CD37A: FLdPr var_B0
  loc_9CD37D:  = Me.Value
  loc_9CD382: FLdRfVar var_C0
  loc_9CD385: CStrVarTmp
  loc_9CD386: FStStrNoPop var_C4
  loc_9CD389: FLdPr Me
  loc_9CD38C: VCallAd Control_ID_cboPeriodo
  loc_9CD38F: FStAdFunc var_D8
  loc_9CD392: FLdPr var_D8
  loc_9CD395: Me.AddItem from_stack_1, from_stack_2
  loc_9CD39A: FFree1Str var_C4
  loc_9CD39D: FFreeAd var_90 = "": var_9C = "": var_B0 = ""
  loc_9CD3A8: FFree1Var var_C0 = ""
  loc_9CD3AB: FLdRfVar var_8C
  loc_9CD3AE: NewIfNullPr clsperiodo
  loc_9CD3B1: Call clsperiodo.MoveSiguiente()
  loc_9CD3B6: Branch loc_9CD334
  loc_9CD3B9: Call cmdNueva_Click()
  loc_9CD3BE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95CBA0
  'Data Table: 49E30C
  loc_95CB88: FLdPr Me
  loc_95CB8B: VCallAd Control_ID_wbbReporte
  loc_95CB8E: FStAdFunc var_88
  loc_95CB91: FLdRfVar var_88
  loc_95CB94: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95CB99: FFree1Ad var_88
  loc_95CB9C: ExitProcHresult
End Sub

Public Function htmFileGet() '49F568
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '49F577
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '49F586
  htmFile = Value
End Sub

Public Function bGeneradoGet() '49F595
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49F5A4
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9D1A90
  'Data Table: 49E30C
  loc_9D19CC: LitI4 0
  loc_9D19D1: LitI4 9
  loc_9D19D6: FLdRfVar var_88
  loc_9D19D9: Redim
  loc_9D19E3: FLdPr Me
  loc_9D19E6: VCallAd Control_ID_cboPeriodo
  loc_9D19E9: CVarAd
  loc_9D19ED: ParmAry1St
  loc_9D19F3: FLdPr Me
  loc_9D19F6: VCallAd Control_ID_MskDesde
  loc_9D19F9: CVarAd
  loc_9D19FD: ParmAry1St
  loc_9D1A03: FLdPr Me
  loc_9D1A06: VCallAd Control_ID_DesdeCmd
  loc_9D1A09: CVarAd
  loc_9D1A0D: ParmAry1St
  loc_9D1A13: FLdPr Me
  loc_9D1A16: VCallAd Control_ID_MskHasta
  loc_9D1A19: CVarAd
  loc_9D1A1D: ParmAry1St
  loc_9D1A23: FLdPr Me
  loc_9D1A26: VCallAd Control_ID_HastaCmd
  loc_9D1A29: CVarAd
  loc_9D1A2D: ParmAry1St
  loc_9D1A33: FLdPr Me
  loc_9D1A36: VCallAd Control_ID_OptionPago
  loc_9D1A39: CVarAd
  loc_9D1A3D: ParmAry1St
  loc_9D1A43: FLdPr Me
  loc_9D1A46: VCallAd Control_ID_OptionFepaLine
  loc_9D1A49: CVarAd
  loc_9D1A4D: ParmAry1St
  loc_9D1A53: FLdPr Me
  loc_9D1A56: VCallAd Control_ID_optTodos
  loc_9D1A59: CVarAd
  loc_9D1A5D: ParmAry1St
  loc_9D1A63: FLdPr Me
  loc_9D1A66: VCallAd Control_ID_optSinDevolucion
  loc_9D1A69: CVarAd
  loc_9D1A6D: ParmAry1St
  loc_9D1A73: FLdPr Me
  loc_9D1A76: VCallAd Control_ID_optConDevolucion
  loc_9D1A79: CVarAd
  loc_9D1A7D: ParmAry1St
  loc_9D1A83: FLdRfVar var_88
  loc_9D1A86: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9D1A8B: FLdRfVar var_88
  loc_9D1A8E: Erase
  loc_9D1A8F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'ACA36C
  'Data Table: 49E30C
  loc_AC9DA8: LitStr vbNullString
  loc_AC9DAB: FLdPr Me
  loc_AC9DAE: MemStStrCopy
  loc_AC9DB2: LitI2_Byte 0
  loc_AC9DB4: PopTmpLdAd2 var_8E
  loc_AC9DB7: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_AC9DBC: FLdPr Me
  loc_AC9DBF: MemLdStr global_116
  loc_AC9DC2: LitStr vbNullString
  loc_AC9DC5: NeStr
  loc_AC9DC7: BranchF loc_AC9DCD
  loc_AC9DCA: Branch loc_ACA2DE
  loc_AC9DCD: LitI2_Byte 0
  loc_AC9DCF: PopTmpLdAd2 var_8E
  loc_AC9DD2: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AC9DD7: FLdPr Me
  loc_AC9DDA: MemLdStr global_116
  loc_AC9DDD: LitStr vbNullString
  loc_AC9DE0: NeStr
  loc_AC9DE2: BranchF loc_AC9DE8
  loc_AC9DE5: Branch loc_ACA2DE
  loc_AC9DE8: OnErrorGoto loc_ACA307
  loc_AC9DEB: FLdPr Me
  loc_AC9DEE: MemLdI2 bGenerado
  loc_AC9DF1: BranchF loc_AC9DF5
  loc_AC9DF4: ExitProcHresult
  loc_AC9DF5: LitVarStr var_A0, "Generando reporte..."
  loc_AC9DFA: PopAdLdVar
  loc_AC9DFB: FLdPr Me
  loc_AC9DFE: VCallAd Control_ID_statusBar
  loc_AC9E01: FStAdFunc var_B4
  loc_AC9E04: FLdPr var_B4
  loc_AC9E07: LateIdSt
  loc_AC9E0C: FFree1Ad var_B4
  loc_AC9E0F: LitI4 &HB
  loc_AC9E14: CI2I4
  loc_AC9E15: FLdPr Me
  loc_AC9E18: Me.MousePointer = from_stack_1
  loc_AC9E1D: FLdRfVar var_8E
  loc_AC9E20: FLdPr Me
  loc_AC9E23: VCallAd Control_ID_OptionPago
  loc_AC9E26: FStAdFunc var_B4
  loc_AC9E29: FLdPr var_B4
  loc_AC9E2C:  = Me.Value
  loc_AC9E31: FLdI2 var_8E
  loc_AC9E34: LitI2_Byte &HFF
  loc_AC9E36: EqI2
  loc_AC9E37: FFree1Ad var_B4
  loc_AC9E3A: BranchF loc_AC9E46
  loc_AC9E3D: LitStr "FechCaja"
  loc_AC9E40: FStStrCopy var_88
  loc_AC9E43: Branch loc_AC9E6C
  loc_AC9E46: FLdRfVar var_8E
  loc_AC9E49: FLdPr Me
  loc_AC9E4C: VCallAd Control_ID_OptionFepaLine
  loc_AC9E4F: FStAdFunc var_B4
  loc_AC9E52: FLdPr var_B4
  loc_AC9E55:  = Me.Value
  loc_AC9E5A: FLdI2 var_8E
  loc_AC9E5D: LitI2_Byte &HFF
  loc_AC9E5F: EqI2
  loc_AC9E60: FFree1Ad var_B4
  loc_AC9E63: BranchF loc_AC9E6C
  loc_AC9E66: LitStr "Date(FepaLine)"
  loc_AC9E69: FStStrCopy var_88
  loc_AC9E6C: FLdRfVar var_8E
  loc_AC9E6F: FLdPr Me
  loc_AC9E72: VCallAd Control_ID_optTodos
  loc_AC9E75: FStAdFunc var_B4
  loc_AC9E78: FLdPr var_B4
  loc_AC9E7B:  = Me.Value
  loc_AC9E80: FLdI2 var_8E
  loc_AC9E83: LitI2_Byte &HFF
  loc_AC9E85: EqI2
  loc_AC9E86: FFree1Ad var_B4
  loc_AC9E89: BranchF loc_AC9E95
  loc_AC9E8C: LitStr vbNullString
  loc_AC9E8F: FStStrCopy var_8C
  loc_AC9E92: Branch loc_AC9EE4
  loc_AC9E95: FLdRfVar var_8E
  loc_AC9E98: FLdPr Me
  loc_AC9E9B: VCallAd Control_ID_optSinDevolucion
  loc_AC9E9E: FStAdFunc var_B4
  loc_AC9EA1: FLdPr var_B4
  loc_AC9EA4:  = Me.Value
  loc_AC9EA9: FLdI2 var_8E
  loc_AC9EAC: LitI2_Byte &HFF
  loc_AC9EAE: EqI2
  loc_AC9EAF: FFree1Ad var_B4
  loc_AC9EB2: BranchF loc_AC9EBE
  loc_AC9EB5: LitStr " AND lqn.NumeDebi = 0 "
  loc_AC9EB8: FStStrCopy var_8C
  loc_AC9EBB: Branch loc_AC9EE4
  loc_AC9EBE: FLdRfVar var_8E
  loc_AC9EC1: FLdPr Me
  loc_AC9EC4: VCallAd Control_ID_optConDevolucion
  loc_AC9EC7: FStAdFunc var_B4
  loc_AC9ECA: FLdPr var_B4
  loc_AC9ECD:  = Me.Value
  loc_AC9ED2: FLdI2 var_8E
  loc_AC9ED5: LitI2_Byte &HFF
  loc_AC9ED7: EqI2
  loc_AC9ED8: FFree1Ad var_B4
  loc_AC9EDB: BranchF loc_AC9EE4
  loc_AC9EDE: LitStr " AND lqn.NumeDebi > 0 "
  loc_AC9EE1: FStStrCopy var_8C
  loc_AC9EE4: FLdPr Me
  loc_AC9EE7: MemLdRfVar from_stack_1.global_72
  loc_AC9EEA: NewIfNullAd
  loc_AC9EED: FStAd var_B8 
  loc_AC9EF1: FLdPr Me
  loc_AC9EF4: VCallAd Control_ID_MskDesde
  loc_AC9EF7: FStAdFunc var_B4
  loc_AC9EFA: FLdPr var_B4
  loc_AC9EFD: LateIdLdVar var_E4 DispID_15 0
  loc_AC9F04: PopAd
  loc_AC9F06: FLdPr Me
  loc_AC9F09: VCallAd Control_ID_MskHasta
  loc_AC9F0C: FStAdFunc var_114
  loc_AC9F0F: FLdPr var_114
  loc_AC9F12: LateIdLdVar var_124 DispID_15 0
  loc_AC9F19: PopAd
  loc_AC9F1B: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_AC9F1E: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_AC9F21: ConcatStr
  loc_AC9F22: FStStrNoPop var_BC
  loc_AC9F25: LitStr " SELECT lqn.PeriInfo, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CucuPers, IFNULL(ch.CodiBanc,0) CodiBanc, FechCaja, lqn.FepaLine"
  loc_AC9F28: ConcatStr
  loc_AC9F29: FStStrNoPop var_C0
  loc_AC9F2C: LitStr ", Count(Distinct ch.CodiBanc) AS impura"
  loc_AC9F2F: ConcatStr
  loc_AC9F30: FStStrNoPop var_C4
  loc_AC9F33: LitStr " FROM liquidaneto lqn"
  loc_AC9F36: ConcatStr
  loc_AC9F37: FStStrNoPop var_C8
  loc_AC9F3A: LitStr " LEFT JOIN cheque ch ON ch.PeriInfo = lqn.PeriInfo AND ch.ExpeImpu = lqn.ExpeImpu AND ch.NumeLiqu = lqn.NumeLiqu AND ch.CucuPers = lqn.CucuPers"
  loc_AC9F3D: ConcatStr
  loc_AC9F3E: FStStrNoPop var_CC
  loc_AC9F41: LitStr " WHERE "
  loc_AC9F44: ConcatStr
  loc_AC9F45: FStStrNoPop var_D0
  loc_AC9F48: ILdRf var_88
  loc_AC9F4B: ConcatStr
  loc_AC9F4C: FStStrNoPop var_D4
  loc_AC9F4F: LitStr " BETWEEN "
  loc_AC9F52: ConcatStr
  loc_AC9F53: FStStrNoPop var_108
  loc_AC9F56: LitI4 1
  loc_AC9F5B: LitI4 1
  loc_AC9F60: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AC9F65: FStVarCopyObj var_104
  loc_AC9F68: FLdRfVar var_104
  loc_AC9F6B: FLdRfVar var_E4
  loc_AC9F6E: CStrVarTmp
  loc_AC9F6F: CVarStr var_F4
  loc_AC9F72: ImpAdCallI2 Format$(, )
  loc_AC9F77: FStStrNoPop var_10C
  loc_AC9F7A: ConcatStr
  loc_AC9F7B: FStStrNoPop var_110
  loc_AC9F7E: LitStr " AND "
  loc_AC9F81: ConcatStr
  loc_AC9F82: FStStrNoPop var_148
  loc_AC9F85: LitI4 1
  loc_AC9F8A: LitI4 1
  loc_AC9F8F: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_AC9F94: FStVarCopyObj var_144
  loc_AC9F97: FLdRfVar var_144
  loc_AC9F9A: FLdRfVar var_124
  loc_AC9F9D: CStrVarTmp
  loc_AC9F9E: CVarStr var_134
  loc_AC9FA1: ImpAdCallI2 Format$(, )
  loc_AC9FA6: FStStrNoPop var_14C
  loc_AC9FA9: ConcatStr
  loc_AC9FAA: FStStrNoPop var_150
  loc_AC9FAD: LitStr " AND lqn.CodiRete = "
  loc_AC9FB0: ConcatStr
  loc_AC9FB1: FStStrNoPop var_154
  loc_AC9FB4: LitI2_Byte 3
  loc_AC9FB6: CStrI2
  loc_AC9FB8: FStStrNoPop var_158
  loc_AC9FBB: ConcatStr
  loc_AC9FBC: FStStrNoPop var_15C
  loc_AC9FBF: ILdRf var_8C
  loc_AC9FC2: ConcatStr
  loc_AC9FC3: FStStrNoPop var_160
  loc_AC9FC6: LitStr " GROUP BY PeriInfo, ExpeImpu, NumeLiqu, CucuPers;"
  loc_AC9FC9: ConcatStr
  loc_AC9FCA: FStStrNoPop var_164
  loc_AC9FCD: FLdPr var_B8
  loc_AC9FD0: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_AC9FD5: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_108 = "": var_10C = "": var_110 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_AC9FFC: FFreeAd var_B4 = ""
  loc_ACA003: FFreeVar var_E4 = "": var_F4 = "": var_104 = "": var_124 = "": var_134 = ""
  loc_ACA012: LitStr "SELECT impura, tmovi.CodiBanc, IFNULL(DetaBanc,'') DetaBanc, tmovi.ExpeImpu, tmovi.CucuPers,"
  loc_ACA015: LitStr "  DetaProv, IF(DecrPers='','sin registrar',DecrPers) AS DecrPers, Left(NumeFact,3) TifaDeve, Right(NumeFact,12) NumeFact, sum(ImpoImpu) AS ImpoImpu, ImpoLine, BaseEsca,"
  loc_ACA018: ConcatStr
  loc_ACA019: FStStrNoPop var_BC
  loc_ACA01C: LitStr "  Round((Sum(ImpoImpu)/BaseEsca),2) as MontImpo, tmovi.FechCaja, CertLine, AlicEsca"
  loc_ACA01F: ConcatStr
  loc_ACA020: FStStrNoPop var_C0
  loc_ACA023: LitStr ", CONVERT(CONCAT(2004,'0100', LPAD(' ',10,' '),'"
  loc_ACA026: ConcatStr
  loc_ACA027: FStStrNoPop var_C4
  loc_ACA02A: LitI4 0
  loc_ACA02F: LitI4 -1
  loc_ACA034: LitI4 1
  loc_ACA039: LitStr vbNullString
  loc_ACA03C: LitStr "-"
  loc_ACA03F: LitStr "30-99914707-7"
  loc_ACA042: ImpAdCallI2 Replace(, , , , , )
  loc_ACA047: FStStrNoPop var_C8
  loc_ACA04A: ConcatStr
  loc_ACA04B: FStStrNoPop var_CC
  loc_ACA04E: LitStr "',353,755,ln.CucuPers, DATE_FORMAT(tmovi.FechCaja,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'),'01', DATE_FORMAT(ld.FefaDeve,'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'), RPAD(CONCAT(MID(ld.NumeFact,4,4),'-', MID(ld.NumeFact,8,15)),16,' '), LPAD(SUM(ld.ImpoImpu),14,' '), LPAD(ln.ImpoLine,14,' '), LPAD(' ',25,' '), LPAD(' ',10,' '), LPAD('0.00',14,' '), LPAD(0,30,' ')), CHAR) Linea"
  loc_ACA051: ConcatStr
  loc_ACA052: FStStrNoPop var_D0
  loc_ACA055: LitStr " FROM tmovi"
  loc_ACA058: ConcatStr
  loc_ACA059: FStStrNoPop var_D4
  loc_ACA05C: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = tmovi.CucuPers"
  loc_ACA05F: ConcatStr
  loc_ACA060: FStStrNoPop var_108
  loc_ACA063: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = tmovi.CucuPers"
  loc_ACA066: ConcatStr
  loc_ACA067: FStStrNoPop var_10C
  loc_ACA06A: LitStr " INNER JOIN liquidaneto ln ON ln.ExpeImpu = tmovi.ExpeImpu AND ln.NumeLiqu = tmovi.NumeLiqu AND ln.CucuPers = tmovi.CucuPers"
  loc_ACA06D: ConcatStr
  loc_ACA06E: FStStrNoPop var_110
  loc_ACA071: LitStr " INNER JOIN escalas ON escalas.periinfo = ln.PeriInfo AND escalas.FechEsca = ln.FechEsca AND escalas.CodiRete = ln.CodiRete AND escalas.CodiDere = ln.CodiDere AND escalas.CodiEsca = ln.CodiEsca"
  loc_ACA074: ConcatStr
  loc_ACA075: FStStrNoPop var_148
  loc_ACA078: LitStr " INNER JOIN v_liqdeta ld ON ld.ExpeImpu = tmovi.ExpeImpu AND ld.NumeLiqu = tmovi.NumeLiqu AND ld.CucuPers = tmovi.CucuPers"
  loc_ACA07B: ConcatStr
  loc_ACA07C: FStStrNoPop var_14C
  loc_ACA07F: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = ln.PeriInfo AND retenciones.CodiRete = ln.CodiRete"
  loc_ACA082: ConcatStr
  loc_ACA083: FStStrNoPop var_150
  loc_ACA086: LitStr " LEFT JOIN banco ON banco.PeriInfo = "
  loc_ACA089: ConcatStr
  loc_ACA08A: FStStrNoPop var_158
  loc_ACA08D: FLdRfVar var_154
  loc_ACA090: FLdPr Me
  loc_ACA093: VCallAd Control_ID_cboPeriodo
  loc_ACA096: FStAdFunc var_B4
  loc_ACA099: FLdPr var_B4
  loc_ACA09C:  = Me.Text
  loc_ACA0A1: ILdRf var_154
  loc_ACA0A4: ConcatStr
  loc_ACA0A5: FStStrNoPop var_15C
  loc_ACA0A8: LitStr " AND banco.CodiBanc = tmovi.CodiBanc"
  loc_ACA0AB: ConcatStr
  loc_ACA0AC: FStStrNoPop var_160
  loc_ACA0AF: LitStr " WHERE ImpoLine > 0"
  loc_ACA0B2: ConcatStr
  loc_ACA0B3: FStStrNoPop var_164
  loc_ACA0B6: LitStr " AND ln.CodiRete = "
  loc_ACA0B9: ConcatStr
  loc_ACA0BA: FStStrNoPop var_168
  loc_ACA0BD: LitI2_Byte 3
  loc_ACA0BF: CStrI2
  loc_ACA0C1: FStStrNoPop var_16C
  loc_ACA0C4: ConcatStr
  loc_ACA0C5: FStStrNoPop var_170
  loc_ACA0C8: LitStr " GROUP BY tmovi.ExpeImpu, tmovi.NumeLiqu, CucuPers"
  loc_ACA0CB: ConcatStr
  loc_ACA0CC: FStStrNoPop var_174
  loc_ACA0CF: LitStr " ORDER BY impura, tmovi.CodiBanc, CucuPers, tmovi.ExpeImpu, tmovi.NumeLiqu;"
  loc_ACA0D2: ConcatStr
  loc_ACA0D3: FStStrNoPop var_178
  loc_ACA0D6: FLdPr var_B8
  loc_ACA0D9: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_ACA0DE: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_108 = "": var_10C = "": var_110 = "": var_148 = "": var_14C = "": var_150 = "": var_158 = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_ACA10F: FFree1Ad var_B4
  loc_ACA112: FLdRfVar var_17C
  loc_ACA115: FLdPr var_B8
  loc_ACA118: from_stack_1 = clsliquidacion.RecordCount
  loc_ACA11D: ILdRf var_17C
  loc_ACA120: LitI4 1
  loc_ACA125: LtI4
  loc_ACA126: BranchF loc_ACA139
  loc_ACA129: LitI4 0
  loc_ACA12E: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_ACA131: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ACA136: Branch loc_ACA2DE
  loc_ACA139: LitI4 0
  loc_ACA13E: LitI4 0
  loc_ACA143: FLdPr Me
  loc_ACA146: MemLdRfVar from_stack_1.global_96
  loc_ACA149: Redim
  loc_ACA153: LitI2_Byte 0
  loc_ACA155: LitVar_Missing var_E4
  loc_ACA158: LitI2_Byte &HFF
  loc_ACA15A: LitVarI2 var_A0, 0
  loc_ACA15F: PopAdLdVar
  loc_ACA160: FLdPr Me
  loc_ACA163: MemLdRfVar from_stack_1.global_108
  loc_ACA166: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACA16B: FFree1Var var_E4 = ""
  loc_ACA16E: LitI2_Byte 0
  loc_ACA170: FLdPr Me
  loc_ACA173: MemStI2 global_100
  loc_ACA176: LitI2_Byte 0
  loc_ACA178: FLdPr Me
  loc_ACA17B: MemStI2 global_104
  loc_ACA17E: FLdPr var_B8
  loc_ACA181: Call clsliquidacion.MoveFirst()
  loc_ACA186: Call Proc_179_24_A23C98()
  loc_ACA18B: FLdRfVar var_8E
  loc_ACA18E: FLdPr var_B8
  loc_ACA191: from_stack_1 = clsliquidacion.EOF
  loc_ACA196: FLdI2 var_8E
  loc_ACA199: NotI4
  loc_ACA19A: BranchF loc_ACA27D
  loc_ACA19D: FLdRfVar var_E4
  loc_ACA1A0: FLdRfVar var_180
  loc_ACA1A3: LitVarStr var_A0, "impura"
  loc_ACA1A8: PopAdLdVar
  loc_ACA1A9: FLdRfVar var_114
  loc_ACA1AC: FLdRfVar var_B4
  loc_ACA1AF: FLdPr var_B8
  loc_ACA1B2: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_ACA1B7: FLdPr var_B4
  loc_ACA1BA:  = Me.Fields
  loc_ACA1BF: FLdPr var_114
  loc_ACA1C2: from_stack_2 = Me.Item(from_stack_1)
  loc_ACA1C7: FLdPr var_180
  loc_ACA1CA:  = Me.Value
  loc_ACA1CF: FLdRfVar var_E4
  loc_ACA1D2: LitVarI2 var_B0, 1
  loc_ACA1D7: HardType
  loc_ACA1D8: LeVarBool
  loc_ACA1DA: FFreeAd var_B4 = "": var_114 = ""
  loc_ACA1E3: FFree1Var var_E4 = ""
  loc_ACA1E6: BranchF loc_ACA254
  loc_ACA1E9: FLdRfVar var_E4
  loc_ACA1EC: FLdRfVar var_180
  loc_ACA1EF: LitVarStr var_A0, "CodiBanc"
  loc_ACA1F4: PopAdLdVar
  loc_ACA1F5: FLdRfVar var_114
  loc_ACA1F8: FLdRfVar var_B4
  loc_ACA1FB: FLdPr var_B8
  loc_ACA1FE: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_ACA203: FLdPr var_B4
  loc_ACA206:  = Me.Fields
  loc_ACA20B: FLdPr var_114
  loc_ACA20E: from_stack_2 = Me.Item(from_stack_1)
  loc_ACA213: FLdPr var_180
  loc_ACA216:  = Me.Value
  loc_ACA21B: FLdRfVar var_E4
  loc_ACA21E: FLdPr Me
  loc_ACA221: MemLdI2 global_100
  loc_ACA224: CI4UI1
  loc_ACA225: FLdPr Me
  loc_ACA228: MemLdStr global_96
  loc_ACA22B: Ary1LdPr
  loc_ACA22C: MemLdStr global_0
  loc_ACA22F: CVarStr var_B0
  loc_ACA232: HardType
  loc_ACA233: NeVarBool
  loc_ACA235: FFreeAd var_B4 = "": var_114 = ""
  loc_ACA23E: FFree1Var var_E4 = ""
  loc_ACA241: BranchF loc_ACA24C
  loc_ACA244: Call Proc_179_24_A23C98()
  loc_ACA249: Branch loc_ACA251
  loc_ACA24C: Call Proc_179_25_B1A678()
  loc_ACA251: Branch loc_ACA27A
  loc_ACA254: FLdPr Me
  loc_ACA257: MemLdI2 global_100
  loc_ACA25A: CI4UI1
  loc_ACA25B: FLdPr Me
  loc_ACA25E: MemLdStr global_96
  loc_ACA261: Ary1LdPr
  loc_ACA262: MemLdStr global_0
  loc_ACA265: LitStr vbNullString
  loc_ACA268: NeStr
  loc_ACA26A: BranchF loc_ACA275
  loc_ACA26D: Call Proc_179_24_A23C98()
  loc_ACA272: Branch loc_ACA27A
  loc_ACA275: Call Proc_179_25_B1A678()
  loc_ACA27A: Branch loc_ACA18B
  loc_ACA27D: LitNothing
  loc_ACA27F: FStAd var_B8 
  loc_ACA283: LitI2_Byte 1
  loc_ACA285: FLdPr Me
  loc_ACA288: MemLdRfVar from_stack_1.global_100
  loc_ACA28B: FLdPr Me
  loc_ACA28E: MemLdStr global_96
  loc_ACA291: LitI2_Byte 1
  loc_ACA293: FnUBound
  loc_ACA295: CI2I4
  loc_ACA296: ForI2 var_184
  loc_ACA29C: LitI2_Byte 0
  loc_ACA29E: FLdPr Me
  loc_ACA2A1: MemLdRfVar from_stack_1.global_108
  loc_ACA2A4: CVarRef
  loc_ACA2A9: LitI2_Byte &HFF
  loc_ACA2AB: FLdPr Me
  loc_ACA2AE: MemLdI2 global_100
  loc_ACA2B1: CI4UI1
  loc_ACA2B2: FLdPr Me
  loc_ACA2B5: MemLdStr global_96
  loc_ACA2B8: Ary1LdPr
  loc_ACA2B9: MemLdStr global_12
  loc_ACA2BC: CVarStr var_A0
  loc_ACA2BF: PopAdLdVar
  loc_ACA2C0: FLdPr Me
  loc_ACA2C3: MemLdRfVar from_stack_1.global_112
  loc_ACA2C6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACA2CB: FLdPr Me
  loc_ACA2CE: MemLdRfVar from_stack_1.global_100
  loc_ACA2D1: NextI2 var_184, loc_ACA29C
  loc_ACA2D6: LitI2_Byte &HFF
  loc_ACA2D8: FLdPr Me
  loc_ACA2DB: MemStI2 bGenerado
  loc_ACA2DE: LitI4 0
  loc_ACA2E3: CI2I4
  loc_ACA2E4: FLdPr Me
  loc_ACA2E7: Me.MousePointer = from_stack_1
  loc_ACA2EC: LitVarStr var_A0, vbNullString
  loc_ACA2F1: PopAdLdVar
  loc_ACA2F2: FLdPr Me
  loc_ACA2F5: VCallAd Control_ID_statusBar
  loc_ACA2F8: FStAdFunc var_B4
  loc_ACA2FB: FLdPr var_B4
  loc_ACA2FE: LateIdSt
  loc_ACA303: FFree1Ad var_B4
  loc_ACA306: ExitProcHresult
  loc_ACA307: LitI4 0
  loc_ACA30C: LitStr "Error "
  loc_ACA30F: FLdRfVar var_17C
  loc_ACA312: ImpAdCallI2 Err 'rtcErrObj
  loc_ACA317: FStAdFunc var_B4
  loc_ACA31A: FLdPr var_B4
  loc_ACA31D:  = Err.Number
  loc_ACA322: ILdRf var_17C
  loc_ACA325: CStrI4
  loc_ACA327: FStStrNoPop var_BC
  loc_ACA32A: ConcatStr
  loc_ACA32B: FStStrNoPop var_C0
  loc_ACA32E: LitStr ": "
  loc_ACA331: ConcatStr
  loc_ACA332: FStStrNoPop var_C8
  loc_ACA335: FLdRfVar var_C4
  loc_ACA338: ImpAdCallI2 Err 'rtcErrObj
  loc_ACA33D: FStAdFunc var_114
  loc_ACA340: FLdPr var_114
  loc_ACA343:  = Err.Description
  loc_ACA348: ILdRf var_C4
  loc_ACA34B: ConcatStr
  loc_ACA34C: FStStrNoPop var_CC
  loc_ACA34F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ACA354: FFreeStr var_BC = "": var_C0 = "": var_C8 = "": var_C4 = ""
  loc_ACA361: FFreeAd var_B4 = ""
  loc_ACA368: ExitProcHresult
  loc_ACA369: ExitProcHresult
End Sub

Public Sub GeneraTXT() '9F6FCC
  'Data Table: 49E30C
  loc_9F6E98: FLdRfVar var_88
  loc_9F6E9B: LitI2_Byte 0
  loc_9F6E9D: LitI2_Byte &HFF
  loc_9F6E9F: ImpAdLdI4 MemVar_C3D05C
  loc_9F6EA2: FLdPr Me
  loc_9F6EA5: MemLdRfVar from_stack_1.global_76
  loc_9F6EA8: NewIfNullPr IFileSystem3
  loc_9F6EAB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9F6EB0: ILdRf var_88
  loc_9F6EB3: FLdPr Me
  loc_9F6EB6: MemStVarAd
  loc_9F6EBA: FFree1Ad var_88
  loc_9F6EBD: FLdRfVar var_8C
  loc_9F6EC0: FLdPr Me
  loc_9F6EC3: MemLdRfVar from_stack_1.global_72
  loc_9F6EC6: NewIfNullPr clsliquidacion
  loc_9F6EC9: from_stack_1 = clsliquidacion.RecordCount
  loc_9F6ECE: ILdRf var_8C
  loc_9F6ED1: LitI4 0
  loc_9F6ED6: GtI4
  loc_9F6ED7: BranchF loc_9F6F99
  loc_9F6EDA: FLdPr Me
  loc_9F6EDD: MemLdRfVar from_stack_1.global_72
  loc_9F6EE0: NewIfNullPr clsliquidacion
  loc_9F6EE3: Call clsliquidacion.MoveFirst()
  loc_9F6EE8: FLdRfVar var_8E
  loc_9F6EEB: FLdPr Me
  loc_9F6EEE: MemLdRfVar from_stack_1.global_72
  loc_9F6EF1: NewIfNullPr clsliquidacion
  loc_9F6EF4: from_stack_1 = clsliquidacion.EOF
  loc_9F6EF9: FLdI2 var_8E
  loc_9F6EFC: NotI4
  loc_9F6EFD: BranchF loc_9F6F99
  loc_9F6F00: FLdRfVar var_C8
  loc_9F6F03: FLdRfVar var_A8
  loc_9F6F06: LitVarStr var_A4, "Linea"
  loc_9F6F0B: PopAdLdVar
  loc_9F6F0C: FLdRfVar var_94
  loc_9F6F0F: FLdRfVar var_88
  loc_9F6F12: FLdPr Me
  loc_9F6F15: MemLdRfVar from_stack_1.global_72
  loc_9F6F18: NewIfNullPr clsliquidacion
  loc_9F6F1B: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_9F6F20: FLdPr var_88
  loc_9F6F23:  = Me.Fields
  loc_9F6F28: FLdPr var_94
  loc_9F6F2B: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6F30: FLdPr var_A8
  loc_9F6F33:  = Me.Value
  loc_9F6F38: FLdRfVar var_C8
  loc_9F6F3B: LitI4 &HD
  loc_9F6F40: FLdRfVar var_B8
  loc_9F6F43: ImpAdCallFPR4  = Chr()
  loc_9F6F48: FLdRfVar var_B8
  loc_9F6F4B: ConcatVar var_D8
  loc_9F6F4F: LitI4 &HA
  loc_9F6F54: FLdRfVar var_E8
  loc_9F6F57: ImpAdCallFPR4  = Chr()
  loc_9F6F5C: FLdRfVar var_E8
  loc_9F6F5F: ConcatVar var_F8
  loc_9F6F63: PopAdLdVar
  loc_9F6F64: FLdPr Me
  loc_9F6F67: MemLdRfVar from_stack_1.global_80
  loc_9F6F6A: LdPrVar
  loc_9F6F6C: LateMemCall
  loc_9F6F72: FFreeAd var_88 = "": var_94 = ""
  loc_9F6F7B: FFreeVar var_C8 = "": var_B8 = "": var_D8 = "": var_E8 = ""
  loc_9F6F88: FLdPr Me
  loc_9F6F8B: MemLdRfVar from_stack_1.global_72
  loc_9F6F8E: NewIfNullPr clsliquidacion
  loc_9F6F91: Call clsliquidacion.MoveSiguiente()
  loc_9F6F96: Branch loc_9F6EE8
  loc_9F6F99: LitI4 &H1A
  loc_9F6F9E: FLdRfVar var_B8
  loc_9F6FA1: ImpAdCallFPR4  = Chr()
  loc_9F6FA6: FLdVar var_B8
  loc_9F6FAA: FLdPr Me
  loc_9F6FAD: MemLdRfVar from_stack_1.global_80
  loc_9F6FB0: LdPrVar
  loc_9F6FB2: LateMemCall
  loc_9F6FB8: FFree1Var var_B8 = ""
  loc_9F6FBB: FLdPr Me
  loc_9F6FBE: MemLdRfVar from_stack_1.global_80
  loc_9F6FC1: LdPrVar
  loc_9F6FC3: LateMemCall
  loc_9F6FC9: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AC121C
  'Data Table: 49E30C
  loc_AC0C54: FLdRfVar var_88
  loc_AC0C57: LitI2_Byte 0
  loc_AC0C59: LitI2_Byte &HFF
  loc_AC0C5B: ImpAdLdI4 MemVar_C3D83C
  loc_AC0C5E: FLdPr Me
  loc_AC0C61: MemLdRfVar from_stack_1.global_76
  loc_AC0C64: NewIfNullPr IFileSystem3
  loc_AC0C67: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AC0C6C: ILdRf var_88
  loc_AC0C6F: FLdPr Me
  loc_AC0C72: MemStVarAd
  loc_AC0C76: FFree1Ad var_88
  loc_AC0C79: Call Proc_179_26_AAB9EC()
  loc_AC0C7E: LitI2_Byte 1
  loc_AC0C80: FLdPr Me
  loc_AC0C83: MemLdRfVar from_stack_1.global_100
  loc_AC0C86: FLdPr Me
  loc_AC0C89: MemLdStr global_96
  loc_AC0C8C: LitI2_Byte 1
  loc_AC0C8E: FnUBound
  loc_AC0C90: CI2I4
  loc_AC0C91: ForI2 var_8C
  loc_AC0C97: FLdPr Me
  loc_AC0C9A: MemLdI2 global_100
  loc_AC0C9D: CI4UI1
  loc_AC0C9E: FLdPr Me
  loc_AC0CA1: MemLdStr global_96
  loc_AC0CA4: AryLock
  loc_AC0CA7: Ary1LdRf
  loc_AC0CA8: FStR4 var_94
  loc_AC0CAB: LitVarStr var_A4, "  <tr class=""Encabezado2"">"
  loc_AC0CB0: PopAdLdVar
  loc_AC0CB1: FLdPr Me
  loc_AC0CB4: MemLdRfVar from_stack_1.htmFile
  loc_AC0CB7: LdPrVar
  loc_AC0CB9: LateMemCall
  loc_AC0CBF: LitStr "   <td align=""left"" colspan=""10"">"
  loc_AC0CC2: FMemLdR4 var_94(0)
  loc_AC0CC7: ConcatStr
  loc_AC0CC8: CVarStr var_104
  loc_AC0CCB: LitVarStr var_D4, vbNullString
  loc_AC0CD0: FStVarCopyObj var_E4
  loc_AC0CD3: FLdRfVar var_E4
  loc_AC0CD6: LitVarStr var_B4, " - "
  loc_AC0CDB: FStVarCopyObj var_C4
  loc_AC0CDE: FLdRfVar var_C4
  loc_AC0CE1: FMemLdR4 var_94(0)
  loc_AC0CE6: LitStr vbNullString
  loc_AC0CE9: NeStr
  loc_AC0CEB: CVarBoolI2 var_A4
  loc_AC0CEF: FLdRfVar var_F4
  loc_AC0CF2: ImpAdCallFPR4  = IIf(, , )
  loc_AC0CF7: FLdRfVar var_F4
  loc_AC0CFA: ConcatVar var_114
  loc_AC0CFE: FMemLdR4 var_94(4)
  loc_AC0D03: CVarStr var_124
  loc_AC0D06: ConcatVar var_134
  loc_AC0D0A: LitVarStr var_144, "</td>"
  loc_AC0D0F: ConcatVar var_154
  loc_AC0D13: PopAdLdVar
  loc_AC0D14: FLdPr Me
  loc_AC0D17: MemLdRfVar from_stack_1.htmFile
  loc_AC0D1A: LdPrVar
  loc_AC0D1C: LateMemCall
  loc_AC0D22: FFreeVar var_A4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_F4 = "": var_114 = "": var_134 = ""
  loc_AC0D35: LitI4 0
  loc_AC0D3A: LitStr "Totales"
  loc_AC0D3D: LitI2_Byte 0
  loc_AC0D3F: LitStr "right"
  loc_AC0D42: FMemLdR4 var_94(12)
  loc_AC0D47: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC0D4C: CVarStr var_C4
  loc_AC0D4F: PopAdLdVar
  loc_AC0D50: FLdPr Me
  loc_AC0D53: MemLdRfVar from_stack_1.htmFile
  loc_AC0D56: LdPrVar
  loc_AC0D58: LateMemCall
  loc_AC0D5E: FFree1Var var_C4 = ""
  loc_AC0D61: LitVarStr var_A4, "     </tr>"
  loc_AC0D66: PopAdLdVar
  loc_AC0D67: FLdPr Me
  loc_AC0D6A: MemLdRfVar from_stack_1.htmFile
  loc_AC0D6D: LdPrVar
  loc_AC0D6F: LateMemCall
  loc_AC0D75: LitI2_Byte 1
  loc_AC0D77: FLdPr Me
  loc_AC0D7A: MemLdRfVar from_stack_1.global_102
  loc_AC0D7D: FMemLdR4 var_94(8)
  loc_AC0D82: LitI2_Byte 1
  loc_AC0D84: FnUBound
  loc_AC0D86: CI2I4
  loc_AC0D87: ForI2 var_168
  loc_AC0D8D: FLdPr Me
  loc_AC0D90: MemLdI2 global_102
  loc_AC0D93: CI4UI1
  loc_AC0D94: FMemLdR4 var_94(8)
  loc_AC0D99: AryLock
  loc_AC0D9C: Ary1LdRf
  loc_AC0D9D: FStR4 var_170
  loc_AC0DA0: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC0DA5: PopAdLdVar
  loc_AC0DA6: FLdPr Me
  loc_AC0DA9: MemLdRfVar from_stack_1.htmFile
  loc_AC0DAC: LdPrVar
  loc_AC0DAE: LateMemCall
  loc_AC0DB4: LitI4 0
  loc_AC0DB9: LitI4 0
  loc_AC0DBE: LitI2_Byte 0
  loc_AC0DC0: LitStr "right"
  loc_AC0DC3: FMemLdRf 0
  loc_AC0DC8: LdFixedStr
  loc_AC0DCB: FStStrNoPop var_174
  loc_AC0DCE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC0DD3: FStStr var_178
  loc_AC0DD6: ILdRf var_174
  loc_AC0DD9: FMemLdRf 0
  loc_AC0DDE: StFixedStr
  loc_AC0DE1: FLdZeroAd var_178
  loc_AC0DE4: CVarStr var_C4
  loc_AC0DE7: PopAdLdVar
  loc_AC0DE8: FLdPr Me
  loc_AC0DEB: MemLdRfVar from_stack_1.htmFile
  loc_AC0DEE: LdPrVar
  loc_AC0DF0: LateMemCall
  loc_AC0DF6: FFree1Str var_174
  loc_AC0DF9: FFree1Var var_C4 = ""
  loc_AC0DFC: LitI4 0
  loc_AC0E01: LitI4 0
  loc_AC0E06: LitI2_Byte 0
  loc_AC0E08: LitStr "left"
  loc_AC0E0B: FMemLdRf 0
  loc_AC0E10: LdFixedStr
  loc_AC0E13: FStStrNoPop var_174
  loc_AC0E16: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC0E1B: FStStr var_178
  loc_AC0E1E: ILdRf var_174
  loc_AC0E21: FMemLdRf 0
  loc_AC0E26: StFixedStr
  loc_AC0E29: FLdZeroAd var_178
  loc_AC0E2C: CVarStr var_C4
  loc_AC0E2F: PopAdLdVar
  loc_AC0E30: FLdPr Me
  loc_AC0E33: MemLdRfVar from_stack_1.htmFile
  loc_AC0E36: LdPrVar
  loc_AC0E38: LateMemCall
  loc_AC0E3E: FFree1Str var_174
  loc_AC0E41: FFree1Var var_C4 = ""
  loc_AC0E44: LitI4 0
  loc_AC0E49: LitI4 0
  loc_AC0E4E: LitI2_Byte 0
  loc_AC0E50: LitStr "center"
  loc_AC0E53: FMemLdRf 0
  loc_AC0E58: LdFixedStr
  loc_AC0E5B: FStStrNoPop var_174
  loc_AC0E5E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC0E63: FStStr var_178
  loc_AC0E66: ILdRf var_174
  loc_AC0E69: FMemLdRf 0
  loc_AC0E6E: StFixedStr
  loc_AC0E71: FLdZeroAd var_178
  loc_AC0E74: CVarStr var_C4
  loc_AC0E77: PopAdLdVar
  loc_AC0E78: FLdPr Me
  loc_AC0E7B: MemLdRfVar from_stack_1.htmFile
  loc_AC0E7E: LdPrVar
  loc_AC0E80: LateMemCall
  loc_AC0E86: FFree1Str var_174
  loc_AC0E89: FFree1Var var_C4 = ""
  loc_AC0E8C: LitI4 0
  loc_AC0E91: LitI4 0
  loc_AC0E96: LitI2_Byte 0
  loc_AC0E98: LitStr "left"
  loc_AC0E9B: FMemLdRf 0
  loc_AC0EA0: LdFixedStr
  loc_AC0EA3: FStStrNoPop var_174
  loc_AC0EA6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC0EAB: FStStr var_178
  loc_AC0EAE: ILdRf var_174
  loc_AC0EB1: FMemLdRf 0
  loc_AC0EB6: StFixedStr
  loc_AC0EB9: FLdZeroAd var_178
  loc_AC0EBC: CVarStr var_C4
  loc_AC0EBF: PopAdLdVar
  loc_AC0EC0: FLdPr Me
  loc_AC0EC3: MemLdRfVar from_stack_1.htmFile
  loc_AC0EC6: LdPrVar
  loc_AC0EC8: LateMemCall
  loc_AC0ECE: FFree1Str var_174
  loc_AC0ED1: FFree1Var var_C4 = ""
  loc_AC0ED4: LitI4 0
  loc_AC0ED9: LitI4 0
  loc_AC0EDE: LitI2_Byte 0
  loc_AC0EE0: LitStr "left"
  loc_AC0EE3: FMemLdRf 0
  loc_AC0EE8: LdFixedStr
  loc_AC0EEB: FStStrNoPop var_174
  loc_AC0EEE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC0EF3: FStStr var_178
  loc_AC0EF6: ILdRf var_174
  loc_AC0EF9: FMemLdRf 0
  loc_AC0EFE: StFixedStr
  loc_AC0F01: FLdZeroAd var_178
  loc_AC0F04: CVarStr var_C4
  loc_AC0F07: PopAdLdVar
  loc_AC0F08: FLdPr Me
  loc_AC0F0B: MemLdRfVar from_stack_1.htmFile
  loc_AC0F0E: LdPrVar
  loc_AC0F10: LateMemCall
  loc_AC0F16: FFree1Str var_174
  loc_AC0F19: FFree1Var var_C4 = ""
  loc_AC0F1C: LitI4 0
  loc_AC0F21: LitI4 0
  loc_AC0F26: LitI2_Byte 0
  loc_AC0F28: LitStr "center"
  loc_AC0F2B: FMemLdRf 0
  loc_AC0F30: LdFixedStr
  loc_AC0F33: FStStrNoPop var_174
  loc_AC0F36: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC0F3B: FStStr var_178
  loc_AC0F3E: ILdRf var_174
  loc_AC0F41: FMemLdRf 0
  loc_AC0F46: StFixedStr
  loc_AC0F49: FLdZeroAd var_178
  loc_AC0F4C: CVarStr var_C4
  loc_AC0F4F: PopAdLdVar
  loc_AC0F50: FLdPr Me
  loc_AC0F53: MemLdRfVar from_stack_1.htmFile
  loc_AC0F56: LdPrVar
  loc_AC0F58: LateMemCall
  loc_AC0F5E: FFree1Str var_174
  loc_AC0F61: FFree1Var var_C4 = ""
  loc_AC0F64: LitI4 0
  loc_AC0F69: LitI4 0
  loc_AC0F6E: LitI2_Byte 0
  loc_AC0F70: LitStr "center"
  loc_AC0F73: FMemLdRf 0
  loc_AC0F78: LdFixedStr
  loc_AC0F7B: FStStrNoPop var_174
  loc_AC0F7E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC0F83: FStStr var_178
  loc_AC0F86: ILdRf var_174
  loc_AC0F89: FMemLdRf 0
  loc_AC0F8E: StFixedStr
  loc_AC0F91: FLdZeroAd var_178
  loc_AC0F94: CVarStr var_C4
  loc_AC0F97: PopAdLdVar
  loc_AC0F98: FLdPr Me
  loc_AC0F9B: MemLdRfVar from_stack_1.htmFile
  loc_AC0F9E: LdPrVar
  loc_AC0FA0: LateMemCall
  loc_AC0FA6: FFree1Str var_174
  loc_AC0FA9: FFree1Var var_C4 = ""
  loc_AC0FAC: LitI4 0
  loc_AC0FB1: LitI4 0
  loc_AC0FB6: LitI2_Byte 0
  loc_AC0FB8: LitStr "right"
  loc_AC0FBB: FMemLdRf 0
  loc_AC0FC0: LdFixedStr
  loc_AC0FC3: FStStrNoPop var_174
  loc_AC0FC6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC0FCB: FStStr var_178
  loc_AC0FCE: ILdRf var_174
  loc_AC0FD1: FMemLdRf 0
  loc_AC0FD6: StFixedStr
  loc_AC0FD9: FLdZeroAd var_178
  loc_AC0FDC: CVarStr var_C4
  loc_AC0FDF: PopAdLdVar
  loc_AC0FE0: FLdPr Me
  loc_AC0FE3: MemLdRfVar from_stack_1.htmFile
  loc_AC0FE6: LdPrVar
  loc_AC0FE8: LateMemCall
  loc_AC0FEE: FFree1Str var_174
  loc_AC0FF1: FFree1Var var_C4 = ""
  loc_AC0FF4: FMemLdRf 0
  loc_AC0FF9: LdFixedStr
  loc_AC0FFC: FStStrNoPop var_174
  loc_AC0FFF: ImpAdCallI2 Proc_261_59_995350()
  loc_AC1004: FStStr var_178
  loc_AC1007: ILdRf var_174
  loc_AC100A: FMemLdRf 0
  loc_AC100F: StFixedStr
  loc_AC1012: LitI4 -1
  loc_AC1017: LitI4 0
  loc_AC101C: LitI4 -1
  loc_AC1021: LitI4 2
  loc_AC1026: FLdZeroAd var_178
  loc_AC1029: CVarStr var_C4
  loc_AC102C: ImpAdCallI2 FormatNumber(, , , , )
  loc_AC1031: FStStr var_180
  loc_AC1034: LitI4 0
  loc_AC1039: LitI4 0
  loc_AC103E: LitI2_Byte 0
  loc_AC1040: LitStr "right"
  loc_AC1043: FLdZeroAd var_180
  loc_AC1046: FStStrNoPop var_17C
  loc_AC1049: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC104E: CVarStr var_E4
  loc_AC1051: PopAdLdVar
  loc_AC1052: FLdPr Me
  loc_AC1055: MemLdRfVar from_stack_1.htmFile
  loc_AC1058: LdPrVar
  loc_AC105A: LateMemCall
  loc_AC1060: FFreeStr var_174 = "": var_17C = ""
  loc_AC1069: FFreeVar var_C4 = ""
  loc_AC1070: LitI4 0
  loc_AC1075: LitI4 0
  loc_AC107A: LitI2_Byte 0
  loc_AC107C: LitStr "right"
  loc_AC107F: FMemLdRf 0
  loc_AC1084: LdFixedStr
  loc_AC1087: FStStrNoPop var_174
  loc_AC108A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC108F: FStStr var_178
  loc_AC1092: ILdRf var_174
  loc_AC1095: FMemLdRf 0
  loc_AC109A: StFixedStr
  loc_AC109D: FLdZeroAd var_178
  loc_AC10A0: CVarStr var_C4
  loc_AC10A3: PopAdLdVar
  loc_AC10A4: FLdPr Me
  loc_AC10A7: MemLdRfVar from_stack_1.htmFile
  loc_AC10AA: LdPrVar
  loc_AC10AC: LateMemCall
  loc_AC10B2: FFree1Str var_174
  loc_AC10B5: FFree1Var var_C4 = ""
  loc_AC10B8: FMemLdRf 0
  loc_AC10BD: LdFixedStr
  loc_AC10C0: FStStrNoPop var_174
  loc_AC10C3: ImpAdCallI2 Proc_261_59_995350()
  loc_AC10C8: FStStr var_178
  loc_AC10CB: ILdRf var_174
  loc_AC10CE: FMemLdRf 0
  loc_AC10D3: StFixedStr
  loc_AC10D6: LitI4 -1
  loc_AC10DB: LitI4 0
  loc_AC10E0: LitI4 -1
  loc_AC10E5: LitI4 2
  loc_AC10EA: FLdZeroAd var_178
  loc_AC10ED: CVarStr var_C4
  loc_AC10F0: ImpAdCallI2 FormatNumber(, , , , )
  loc_AC10F5: FStStr var_180
  loc_AC10F8: LitI4 0
  loc_AC10FD: LitI4 0
  loc_AC1102: LitI2_Byte 0
  loc_AC1104: LitStr "right"
  loc_AC1107: FLdZeroAd var_180
  loc_AC110A: FStStrNoPop var_17C
  loc_AC110D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC1112: CVarStr var_E4
  loc_AC1115: PopAdLdVar
  loc_AC1116: FLdPr Me
  loc_AC1119: MemLdRfVar from_stack_1.htmFile
  loc_AC111C: LdPrVar
  loc_AC111E: LateMemCall
  loc_AC1124: FFreeStr var_174 = "": var_17C = ""
  loc_AC112D: FFreeVar var_C4 = ""
  loc_AC1134: LitI4 0
  loc_AC1139: FStR4 var_170
  loc_AC113C: AryUnlock
  loc_AC113F: FLdPr Me
  loc_AC1142: MemLdRfVar from_stack_1.global_102
  loc_AC1145: NextI2 var_168, loc_AC0D8D
  loc_AC114A: LitI4 0
  loc_AC114F: FStR4 var_94
  loc_AC1152: AryUnlock
  loc_AC1155: FLdPr Me
  loc_AC1158: MemLdRfVar from_stack_1.global_100
  loc_AC115B: NextI2 var_8C, loc_AC0C97
  loc_AC1160: LitVarStr var_A4, "</table>"
  loc_AC1165: PopAdLdVar
  loc_AC1166: FLdPr Me
  loc_AC1169: MemLdRfVar from_stack_1.htmFile
  loc_AC116C: LdPrVar
  loc_AC116E: LateMemCall
  loc_AC1174: LitVarStr var_A4, "<br>"
  loc_AC1179: PopAdLdVar
  loc_AC117A: FLdPr Me
  loc_AC117D: MemLdRfVar from_stack_1.htmFile
  loc_AC1180: LdPrVar
  loc_AC1182: LateMemCall
  loc_AC1188: LitVarStr var_A4, "<table align=""center"">"
  loc_AC118D: PopAdLdVar
  loc_AC118E: FLdPr Me
  loc_AC1191: MemLdRfVar from_stack_1.htmFile
  loc_AC1194: LdPrVar
  loc_AC1196: LateMemCall
  loc_AC119C: LitVarStr var_A4, "<tr>"
  loc_AC11A1: PopAdLdVar
  loc_AC11A2: FLdPr Me
  loc_AC11A5: MemLdRfVar from_stack_1.htmFile
  loc_AC11A8: LdPrVar
  loc_AC11AA: LateMemCall
  loc_AC11B0: LitVarStr var_A4, "<th align=""right"" class=""Normal"">Monto total retenido: </th>"
  loc_AC11B5: PopAdLdVar
  loc_AC11B6: FLdPr Me
  loc_AC11B9: MemLdRfVar from_stack_1.htmFile
  loc_AC11BC: LdPrVar
  loc_AC11BE: LateMemCall
  loc_AC11C4: LitStr "<th align=""left"" class=""Totales"">"
  loc_AC11C7: FLdPr Me
  loc_AC11CA: MemLdStr global_108
  loc_AC11CD: ConcatStr
  loc_AC11CE: FStStrNoPop var_174
  loc_AC11D1: LitStr "</th>"
  loc_AC11D4: ConcatStr
  loc_AC11D5: CVarStr var_C4
  loc_AC11D8: PopAdLdVar
  loc_AC11D9: FLdPr Me
  loc_AC11DC: MemLdRfVar from_stack_1.htmFile
  loc_AC11DF: LdPrVar
  loc_AC11E1: LateMemCall
  loc_AC11E7: FFree1Str var_174
  loc_AC11EA: FFree1Var var_C4 = ""
  loc_AC11ED: LitVarStr var_A4, "</tr>"
  loc_AC11F2: PopAdLdVar
  loc_AC11F3: FLdPr Me
  loc_AC11F6: MemLdRfVar from_stack_1.htmFile
  loc_AC11F9: LdPrVar
  loc_AC11FB: LateMemCall
  loc_AC1201: Call Proc_179_27_982000()
  loc_AC1206: FLdPr Me
  loc_AC1209: MemLdRfVar from_stack_1.htmFile
  loc_AC120C: LdPrVar
  loc_AC120E: LateMemCall
  loc_AC1214: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AC1219: ExitProcHresult
End Sub

Private Function Proc_179_24_A23C98() 'A23C98
  'Data Table: 49E30C
  loc_A23AE4: FLdPr Me
  loc_A23AE7: MemLdI2 global_100
  loc_A23AEA: LitI2_Byte 1
  loc_A23AEC: AddI2
  loc_A23AED: FLdPr Me
  loc_A23AF0: MemStI2 global_100
  loc_A23AF3: LitI2_Byte 0
  loc_A23AF5: FLdPr Me
  loc_A23AF8: MemStI2 global_102
  loc_A23AFB: LitI4 0
  loc_A23B00: FLdPr Me
  loc_A23B03: MemLdI2 global_100
  loc_A23B06: CI4UI1
  loc_A23B07: FLdPr Me
  loc_A23B0A: MemLdRfVar from_stack_1.global_96
  loc_A23B0D: RedimPreserve
  loc_A23B17: FLdRfVar var_B0
  loc_A23B1A: FLdRfVar var_A0
  loc_A23B1D: LitVarStr var_9C, "impura"
  loc_A23B22: PopAdLdVar
  loc_A23B23: FLdRfVar var_8C
  loc_A23B26: FLdRfVar var_88
  loc_A23B29: FLdPr Me
  loc_A23B2C: MemLdRfVar from_stack_1.global_72
  loc_A23B2F: NewIfNullPr clsliquidacion
  loc_A23B32: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_A23B37: FLdPr var_88
  loc_A23B3A:  = Me.Fields
  loc_A23B3F: FLdPr var_8C
  loc_A23B42: from_stack_2 = Me.Item(from_stack_1)
  loc_A23B47: FLdPr var_A0
  loc_A23B4A:  = Me.Value
  loc_A23B4F: FLdRfVar var_B0
  loc_A23B52: LitVarI2 var_C0, 1
  loc_A23B57: HardType
  loc_A23B58: LeVarBool
  loc_A23B5A: FFreeAd var_88 = "": var_8C = ""
  loc_A23B63: FFree1Var var_B0 = ""
  loc_A23B66: BranchF loc_A23C38
  loc_A23B69: FLdRfVar var_A0
  loc_A23B6C: LitVarStr var_9C, "CodiBanc"
  loc_A23B71: PopAdLdVar
  loc_A23B72: FLdRfVar var_8C
  loc_A23B75: FLdRfVar var_88
  loc_A23B78: FLdPr Me
  loc_A23B7B: MemLdRfVar from_stack_1.global_72
  loc_A23B7E: NewIfNullPr clsliquidacion
  loc_A23B81: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_A23B86: FLdPr var_88
  loc_A23B89:  = Me.Fields
  loc_A23B8E: FLdPr var_8C
  loc_A23B91: from_stack_2 = Me.Item(from_stack_1)
  loc_A23B96: LitI2_Byte 0
  loc_A23B98: LitVar_Missing var_D0
  loc_A23B9B: LitI2_Byte 0
  loc_A23B9D: FLdZeroAd var_A0
  loc_A23BA0: CVarAd
  loc_A23BA4: PopAdLdVar
  loc_A23BA5: FLdPr Me
  loc_A23BA8: MemLdI2 global_100
  loc_A23BAB: CI4UI1
  loc_A23BAC: FLdPr Me
  loc_A23BAF: MemLdStr global_96
  loc_A23BB2: AryLock
  loc_A23BB5: Ary1LdPr
  loc_A23BB6: MemLdRfVar from_stack_1.global_0
  loc_A23BB9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A23BBE: AryUnlock
  loc_A23BC1: FFreeAd var_88 = ""
  loc_A23BC8: FFreeVar var_B0 = ""
  loc_A23BCF: FLdRfVar var_A0
  loc_A23BD2: LitVarStr var_9C, "DetaBanc"
  loc_A23BD7: PopAdLdVar
  loc_A23BD8: FLdRfVar var_8C
  loc_A23BDB: FLdRfVar var_88
  loc_A23BDE: FLdPr Me
  loc_A23BE1: MemLdRfVar from_stack_1.global_72
  loc_A23BE4: NewIfNullPr clsliquidacion
  loc_A23BE7: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_A23BEC: FLdPr var_88
  loc_A23BEF:  = Me.Fields
  loc_A23BF4: FLdPr var_8C
  loc_A23BF7: from_stack_2 = Me.Item(from_stack_1)
  loc_A23BFC: LitI2_Byte 0
  loc_A23BFE: LitVar_Missing var_D0
  loc_A23C01: LitI2_Byte 0
  loc_A23C03: FLdZeroAd var_A0
  loc_A23C06: CVarAd
  loc_A23C0A: PopAdLdVar
  loc_A23C0B: FLdPr Me
  loc_A23C0E: MemLdI2 global_100
  loc_A23C11: CI4UI1
  loc_A23C12: FLdPr Me
  loc_A23C15: MemLdStr global_96
  loc_A23C18: AryLock
  loc_A23C1B: Ary1LdPr
  loc_A23C1C: MemLdRfVar from_stack_1.global_4
  loc_A23C1F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A23C24: AryUnlock
  loc_A23C27: FFreeAd var_88 = ""
  loc_A23C2E: FFreeVar var_B0 = ""
  loc_A23C35: Branch loc_A23C90
  loc_A23C38: LitI2_Byte 0
  loc_A23C3A: LitVar_Missing var_B0
  loc_A23C3D: LitI2_Byte 0
  loc_A23C3F: LitVarStr var_9C, vbNullString
  loc_A23C44: PopAdLdVar
  loc_A23C45: FLdPr Me
  loc_A23C48: MemLdI2 global_100
  loc_A23C4B: CI4UI1
  loc_A23C4C: FLdPr Me
  loc_A23C4F: MemLdStr global_96
  loc_A23C52: AryLock
  loc_A23C55: Ary1LdPr
  loc_A23C56: MemLdRfVar from_stack_1.global_0
  loc_A23C59: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A23C5E: AryUnlock
  loc_A23C61: FFree1Var var_B0 = ""
  loc_A23C64: LitI2_Byte 0
  loc_A23C66: LitVar_Missing var_B0
  loc_A23C69: LitI2_Byte 0
  loc_A23C6B: LitVarStr var_9C, "BANCOS VARIOS"
  loc_A23C70: PopAdLdVar
  loc_A23C71: FLdPr Me
  loc_A23C74: MemLdI2 global_100
  loc_A23C77: CI4UI1
  loc_A23C78: FLdPr Me
  loc_A23C7B: MemLdStr global_96
  loc_A23C7E: AryLock
  loc_A23C81: Ary1LdPr
  loc_A23C82: MemLdRfVar from_stack_1.global_4
  loc_A23C85: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A23C8A: AryUnlock
  loc_A23C8D: FFree1Var var_B0 = ""
  loc_A23C90: Call Proc_179_25_B1A678()
  loc_A23C95: ExitProcHresult
End Function

Private Function Proc_179_25_B1A678() 'B1A678
  'Data Table: 49E30C
  loc_B19DDC: FLdPr Me
  loc_B19DDF: MemLdI2 global_104
  loc_B19DE2: LitI2_Byte 1
  loc_B19DE4: AddI2
  loc_B19DE5: FLdPr Me
  loc_B19DE8: MemStI2 global_104
  loc_B19DEB: FLdPr Me
  loc_B19DEE: MemLdI2 global_102
  loc_B19DF1: LitI2_Byte 1
  loc_B19DF3: AddI2
  loc_B19DF4: FLdPr Me
  loc_B19DF7: MemStI2 global_102
  loc_B19DFA: LitI4 0
  loc_B19DFF: FLdPr Me
  loc_B19E02: MemLdI2 global_102
  loc_B19E05: CI4UI1
  loc_B19E06: FLdPr Me
  loc_B19E09: MemLdI2 global_100
  loc_B19E0C: CI4UI1
  loc_B19E0D: FLdPr Me
  loc_B19E10: MemLdStr global_96
  loc_B19E13: Ary1LdPr
  loc_B19E14: MemLdRfVar from_stack_1.global_8
  loc_B19E17: RedimPreserve
  loc_B19E21: FLdPr Me
  loc_B19E24: MemLdI2 global_102
  loc_B19E27: CI4UI1
  loc_B19E28: FLdPr Me
  loc_B19E2B: MemLdI2 global_100
  loc_B19E2E: CI4UI1
  loc_B19E2F: FLdPr Me
  loc_B19E32: MemLdStr global_96
  loc_B19E35: AryLock
  loc_B19E38: Ary1LdPr
  loc_B19E39: MemLdStr global_8
  loc_B19E3C: AryLock
  loc_B19E3F: Ary1LdRf
  loc_B19E40: FStR4 var_90
  loc_B19E43: FLdRfVar var_BC
  loc_B19E46: FLdRfVar var_AC
  loc_B19E49: LitVarStr var_A8, "impura"
  loc_B19E4E: PopAdLdVar
  loc_B19E4F: FLdRfVar var_98
  loc_B19E52: FLdRfVar var_94
  loc_B19E55: FLdPr Me
  loc_B19E58: MemLdRfVar from_stack_1.global_72
  loc_B19E5B: NewIfNullPr clsliquidacion
  loc_B19E5E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B19E63: FLdPr var_94
  loc_B19E66:  = Me.Fields
  loc_B19E6B: FLdPr var_98
  loc_B19E6E: from_stack_2 = Me.Item(from_stack_1)
  loc_B19E73: FLdPr var_AC
  loc_B19E76:  = Me.Value
  loc_B19E7B: FLdRfVar var_BC
  loc_B19E7E: CI2Var
  loc_B19E7F: FMemStI2 var_90(444)
  loc_B19E84: FFreeAd var_94 = "": var_98 = ""
  loc_B19E8D: FFree1Var var_BC = ""
  loc_B19E90: FLdRfVar var_BC
  loc_B19E93: FLdRfVar var_AC
  loc_B19E96: LitVarStr var_A8, "ExpeImpu"
  loc_B19E9B: PopAdLdVar
  loc_B19E9C: FLdRfVar var_98
  loc_B19E9F: FLdRfVar var_94
  loc_B19EA2: FLdPr Me
  loc_B19EA5: MemLdRfVar from_stack_1.global_72
  loc_B19EA8: NewIfNullPr clsliquidacion
  loc_B19EAB: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B19EB0: FLdPr var_94
  loc_B19EB3:  = Me.Fields
  loc_B19EB8: FLdPr var_98
  loc_B19EBB: from_stack_2 = Me.Item(from_stack_1)
  loc_B19EC0: FLdPr var_AC
  loc_B19EC3:  = Me.Value
  loc_B19EC8: FLdRfVar var_BC
  loc_B19ECB: CStrVarTmp
  loc_B19ECC: FStStrNoPop var_C0
  loc_B19ECF: FLdPr Me
  loc_B19ED2: MemLdI2 global_102
  loc_B19ED5: CI4UI1
  loc_B19ED6: FLdPr Me
  loc_B19ED9: MemLdI2 global_100
  loc_B19EDC: CI4UI1
  loc_B19EDD: FLdPr Me
  loc_B19EE0: MemLdStr global_96
  loc_B19EE3: Ary1LdPr
  loc_B19EE4: MemLdStr global_8
  loc_B19EE7: Ary1LdPr
  loc_B19EE8: MemLdRfVar from_stack_1.global_0
  loc_B19EEB: StFixedStr
  loc_B19EEE: FFree1Str var_C0
  loc_B19EF1: FFreeAd var_94 = "": var_98 = ""
  loc_B19EFA: FFree1Var var_BC = ""
  loc_B19EFD: FLdRfVar var_AC
  loc_B19F00: LitVarStr var_A8, "CucuPers"
  loc_B19F05: PopAdLdVar
  loc_B19F06: FLdRfVar var_98
  loc_B19F09: FLdRfVar var_94
  loc_B19F0C: FLdPr Me
  loc_B19F0F: MemLdRfVar from_stack_1.global_72
  loc_B19F12: NewIfNullPr clsliquidacion
  loc_B19F15: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B19F1A: FLdPr var_94
  loc_B19F1D:  = Me.Fields
  loc_B19F22: FLdPr var_98
  loc_B19F25: from_stack_2 = Me.Item(from_stack_1)
  loc_B19F2A: LitI2_Byte 0
  loc_B19F2C: LitVar_Missing var_E0
  loc_B19F2F: LitI2_Byte 0
  loc_B19F31: FLdZeroAd var_AC
  loc_B19F34: CVarAd
  loc_B19F38: PopAdLdVar
  loc_B19F39: FMemLdRf 0
  loc_B19F3E: LdFixedStr
  loc_B19F41: PopTmpLdAdStr
  loc_B19F45: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B19F4A: ILdRf var_C0
  loc_B19F4D: FMemLdRf 0
  loc_B19F52: StFixedStr
  loc_B19F55: FFree1Str var_C0
  loc_B19F58: FFreeAd var_94 = ""
  loc_B19F5F: FFreeVar var_BC = ""
  loc_B19F66: FLdRfVar var_BC
  loc_B19F69: FLdRfVar var_AC
  loc_B19F6C: LitVarStr var_A8, "DetaProv"
  loc_B19F71: PopAdLdVar
  loc_B19F72: FLdRfVar var_98
  loc_B19F75: FLdRfVar var_94
  loc_B19F78: FLdPr Me
  loc_B19F7B: MemLdRfVar from_stack_1.global_72
  loc_B19F7E: NewIfNullPr clsliquidacion
  loc_B19F81: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B19F86: FLdPr var_94
  loc_B19F89:  = Me.Fields
  loc_B19F8E: FLdPr var_98
  loc_B19F91: from_stack_2 = Me.Item(from_stack_1)
  loc_B19F96: FLdPr var_AC
  loc_B19F99:  = Me.Value
  loc_B19F9E: LitI4 &H28
  loc_B19FA3: FLdRfVar var_BC
  loc_B19FA6: CStrVarTmp
  loc_B19FA7: FStStrNoPop var_C0
  loc_B19FAA: ImpAdCallI2 Left$(, )
  loc_B19FAF: FStStr var_F8
  loc_B19FB2: LitI2_Byte 0
  loc_B19FB4: LitVar_Missing var_F4
  loc_B19FB7: LitI2_Byte 0
  loc_B19FB9: FLdZeroAd var_F8
  loc_B19FBC: CVarStr var_E0
  loc_B19FBF: PopAdLdVar
  loc_B19FC0: FMemLdRf 0
  loc_B19FC5: LdFixedStr
  loc_B19FC8: PopTmpLdAdStr
  loc_B19FCC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B19FD1: ILdRf var_E4
  loc_B19FD4: FMemLdRf 0
  loc_B19FD9: StFixedStr
  loc_B19FDC: FFreeStr var_C0 = "": var_E4 = ""
  loc_B19FE5: FFreeAd var_94 = "": var_98 = ""
  loc_B19FEE: FFreeVar var_BC = "": var_E0 = ""
  loc_B19FF7: FLdRfVar var_BC
  loc_B19FFA: FLdRfVar var_AC
  loc_B19FFD: LitVarStr var_A8, "DecrPers"
  loc_B1A002: PopAdLdVar
  loc_B1A003: FLdRfVar var_98
  loc_B1A006: FLdRfVar var_94
  loc_B1A009: FLdPr Me
  loc_B1A00C: MemLdRfVar from_stack_1.global_72
  loc_B1A00F: NewIfNullPr clsliquidacion
  loc_B1A012: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B1A017: FLdPr var_94
  loc_B1A01A:  = Me.Fields
  loc_B1A01F: FLdPr var_98
  loc_B1A022: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A027: FLdPr var_AC
  loc_B1A02A:  = Me.Value
  loc_B1A02F: LitI4 &H46
  loc_B1A034: FLdRfVar var_BC
  loc_B1A037: CStrVarTmp
  loc_B1A038: FStStrNoPop var_C0
  loc_B1A03B: ImpAdCallI2 Left$(, )
  loc_B1A040: FStStr var_F8
  loc_B1A043: LitI2_Byte 0
  loc_B1A045: LitVar_Missing var_F4
  loc_B1A048: LitI2_Byte 0
  loc_B1A04A: FLdZeroAd var_F8
  loc_B1A04D: CVarStr var_E0
  loc_B1A050: PopAdLdVar
  loc_B1A051: FMemLdRf 0
  loc_B1A056: LdFixedStr
  loc_B1A059: PopTmpLdAdStr
  loc_B1A05D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A062: ILdRf var_E4
  loc_B1A065: FMemLdRf 0
  loc_B1A06A: StFixedStr
  loc_B1A06D: FFreeStr var_C0 = "": var_E4 = ""
  loc_B1A076: FFreeAd var_94 = "": var_98 = ""
  loc_B1A07F: FFreeVar var_BC = "": var_E0 = ""
  loc_B1A088: FLdRfVar var_AC
  loc_B1A08B: LitVarStr var_A8, "FechCaja"
  loc_B1A090: PopAdLdVar
  loc_B1A091: FLdRfVar var_98
  loc_B1A094: FLdRfVar var_94
  loc_B1A097: FLdPr Me
  loc_B1A09A: MemLdRfVar from_stack_1.global_72
  loc_B1A09D: NewIfNullPr clsliquidacion
  loc_B1A0A0: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B1A0A5: FLdPr var_94
  loc_B1A0A8:  = Me.Fields
  loc_B1A0AD: FLdPr var_98
  loc_B1A0B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A0B5: LitI4 1
  loc_B1A0BA: LitI4 1
  loc_B1A0BF: LitVarStr var_D0, "dd/mm/yyyy"
  loc_B1A0C4: FStVarCopyObj var_E0
  loc_B1A0C7: FLdRfVar var_E0
  loc_B1A0CA: FLdZeroAd var_AC
  loc_B1A0CD: CVarAd
  loc_B1A0D1: FLdRfVar var_F4
  loc_B1A0D4: ImpAdCallFPR4  = Format(, )
  loc_B1A0D9: LitI2_Byte 0
  loc_B1A0DB: LitVar_Missing var_118
  loc_B1A0DE: LitI2_Byte 0
  loc_B1A0E0: FLdVar var_F4
  loc_B1A0E4: FMemLdRf 0
  loc_B1A0E9: LdFixedStr
  loc_B1A0EC: PopTmpLdAdStr
  loc_B1A0F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A0F5: ILdRf var_C0
  loc_B1A0F8: FMemLdRf 0
  loc_B1A0FD: StFixedStr
  loc_B1A100: FFree1Str var_C0
  loc_B1A103: FFreeAd var_94 = ""
  loc_B1A10A: FFreeVar var_BC = "": var_E0 = "": var_F4 = ""
  loc_B1A115: FLdRfVar var_AC
  loc_B1A118: LitVarStr var_A8, "TifaDeve"
  loc_B1A11D: PopAdLdVar
  loc_B1A11E: FLdRfVar var_98
  loc_B1A121: FLdRfVar var_94
  loc_B1A124: FLdPr Me
  loc_B1A127: MemLdRfVar from_stack_1.global_72
  loc_B1A12A: NewIfNullPr clsliquidacion
  loc_B1A12D: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B1A132: FLdPr var_94
  loc_B1A135:  = Me.Fields
  loc_B1A13A: FLdPr var_98
  loc_B1A13D: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A142: FLdZeroAd var_AC
  loc_B1A145: CVarAd
  loc_B1A149: FLdRfVar var_E0
  loc_B1A14C: ImpAdCallFPR4  = Ucase()
  loc_B1A151: LitI2_Byte 0
  loc_B1A153: LitVar_Missing var_F4
  loc_B1A156: LitI2_Byte 0
  loc_B1A158: FLdVar var_E0
  loc_B1A15C: FMemLdRf 0
  loc_B1A161: LdFixedStr
  loc_B1A164: PopTmpLdAdStr
  loc_B1A168: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A16D: ILdRf var_C0
  loc_B1A170: FMemLdRf 0
  loc_B1A175: StFixedStr
  loc_B1A178: FFree1Str var_C0
  loc_B1A17B: FFreeAd var_94 = ""
  loc_B1A182: FFreeVar var_BC = "": var_E0 = ""
  loc_B1A18B: FLdRfVar var_AC
  loc_B1A18E: LitVarStr var_A8, "NumeFact"
  loc_B1A193: PopAdLdVar
  loc_B1A194: FLdRfVar var_98
  loc_B1A197: FLdRfVar var_94
  loc_B1A19A: FLdPr Me
  loc_B1A19D: MemLdRfVar from_stack_1.global_72
  loc_B1A1A0: NewIfNullPr clsliquidacion
  loc_B1A1A3: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B1A1A8: FLdPr var_94
  loc_B1A1AB:  = Me.Fields
  loc_B1A1B0: FLdPr var_98
  loc_B1A1B3: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A1B8: LitI2_Byte 0
  loc_B1A1BA: LitVar_Missing var_E0
  loc_B1A1BD: LitI2_Byte 0
  loc_B1A1BF: FLdZeroAd var_AC
  loc_B1A1C2: CVarAd
  loc_B1A1C6: PopAdLdVar
  loc_B1A1C7: FMemLdRf 0
  loc_B1A1CC: LdFixedStr
  loc_B1A1CF: PopTmpLdAdStr
  loc_B1A1D3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A1D8: ILdRf var_C0
  loc_B1A1DB: FMemLdRf 0
  loc_B1A1E0: StFixedStr
  loc_B1A1E3: FFree1Str var_C0
  loc_B1A1E6: FFreeAd var_94 = ""
  loc_B1A1ED: FFreeVar var_BC = ""
  loc_B1A1F4: FLdRfVar var_AC
  loc_B1A1F7: LitVarStr var_A8, "MontImpo"
  loc_B1A1FC: PopAdLdVar
  loc_B1A1FD: FLdRfVar var_98
  loc_B1A200: FLdRfVar var_94
  loc_B1A203: FLdPr Me
  loc_B1A206: MemLdRfVar from_stack_1.global_72
  loc_B1A209: NewIfNullPr clsliquidacion
  loc_B1A20C: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B1A211: FLdPr var_94
  loc_B1A214:  = Me.Fields
  loc_B1A219: FLdPr var_98
  loc_B1A21C: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A221: LitI4 1
  loc_B1A226: LitI4 1
  loc_B1A22B: LitVarStr var_D0, "###########0.00"
  loc_B1A230: FStVarCopyObj var_E0
  loc_B1A233: FLdRfVar var_E0
  loc_B1A236: FLdZeroAd var_AC
  loc_B1A239: CVarAd
  loc_B1A23D: FLdRfVar var_F4
  loc_B1A240: ImpAdCallFPR4  = Format(, )
  loc_B1A245: FLdRfVar var_F4
  loc_B1A248: CStrVarVal var_C0
  loc_B1A24C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B1A251: FStStr var_F8
  loc_B1A254: LitI2_Byte 0
  loc_B1A256: LitVar_Missing var_128
  loc_B1A259: LitI2_Byte 0
  loc_B1A25B: FLdZeroAd var_F8
  loc_B1A25E: CVarStr var_118
  loc_B1A261: PopAdLdVar
  loc_B1A262: FMemLdRf 0
  loc_B1A267: LdFixedStr
  loc_B1A26A: PopTmpLdAdStr
  loc_B1A26E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A273: ILdRf var_E4
  loc_B1A276: FMemLdRf 0
  loc_B1A27B: StFixedStr
  loc_B1A27E: FFreeStr var_C0 = "": var_E4 = ""
  loc_B1A287: FFreeAd var_94 = ""
  loc_B1A28E: FFreeVar var_BC = "": var_E0 = "": var_F4 = "": var_118 = ""
  loc_B1A29B: FMemLdRf 0
  loc_B1A2A0: LdFixedStr
  loc_B1A2A3: FStStrNoPop var_C0
  loc_B1A2A6: ImpAdCallI2 Trim$()
  loc_B1A2AB: FStStr var_E4
  loc_B1A2AE: ILdRf var_C0
  loc_B1A2B1: FMemLdRf 0
  loc_B1A2B6: StFixedStr
  loc_B1A2B9: ILdRf var_E4
  loc_B1A2BC: FMemLdRf 0
  loc_B1A2C1: StFixedStrR
  loc_B1A2C5: FFreeStr var_C0 = ""
  loc_B1A2CC: FMemLdRf 0
  loc_B1A2D1: LdFixedStr
  loc_B1A2D4: FStStrNoPop var_C0
  loc_B1A2D7: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B1A2DC: FStStr var_E4
  loc_B1A2DF: ILdRf var_C0
  loc_B1A2E2: FMemLdRf 0
  loc_B1A2E7: StFixedStr
  loc_B1A2EA: ILdRf var_E4
  loc_B1A2ED: FMemLdRf 0
  loc_B1A2F2: StFixedStr
  loc_B1A2F5: FFreeStr var_C0 = ""
  loc_B1A2FC: FLdRfVar var_AC
  loc_B1A2FF: LitVarStr var_A8, "AlicEsca"
  loc_B1A304: PopAdLdVar
  loc_B1A305: FLdRfVar var_98
  loc_B1A308: FLdRfVar var_94
  loc_B1A30B: FLdPr Me
  loc_B1A30E: MemLdRfVar from_stack_1.global_72
  loc_B1A311: NewIfNullPr clsliquidacion
  loc_B1A314: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B1A319: FLdPr var_94
  loc_B1A31C:  = Me.Fields
  loc_B1A321: FLdPr var_98
  loc_B1A324: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A329: LitI4 1
  loc_B1A32E: LitI4 1
  loc_B1A333: LitVarStr var_D0, "0.0000"
  loc_B1A338: FStVarCopyObj var_E0
  loc_B1A33B: FLdRfVar var_E0
  loc_B1A33E: FLdZeroAd var_AC
  loc_B1A341: CVarAd
  loc_B1A345: FLdRfVar var_F4
  loc_B1A348: ImpAdCallFPR4  = Format(, )
  loc_B1A34D: LitI2_Byte 0
  loc_B1A34F: LitVar_Missing var_118
  loc_B1A352: LitI2_Byte 0
  loc_B1A354: FLdVar var_F4
  loc_B1A358: FMemLdRf 0
  loc_B1A35D: LdFixedStr
  loc_B1A360: PopTmpLdAdStr
  loc_B1A364: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A369: ILdRf var_C0
  loc_B1A36C: FMemLdRf 0
  loc_B1A371: StFixedStr
  loc_B1A374: FFree1Str var_C0
  loc_B1A377: FFreeAd var_94 = ""
  loc_B1A37E: FFreeVar var_BC = "": var_E0 = "": var_F4 = ""
  loc_B1A389: FMemLdRf 0
  loc_B1A38E: LdFixedStr
  loc_B1A391: FStStrNoPop var_C0
  loc_B1A394: ImpAdCallI2 Trim$()
  loc_B1A399: FStStr var_E4
  loc_B1A39C: ILdRf var_C0
  loc_B1A39F: FMemLdRf 0
  loc_B1A3A4: StFixedStr
  loc_B1A3A7: ILdRf var_E4
  loc_B1A3AA: FMemLdRf 0
  loc_B1A3AF: StFixedStrR
  loc_B1A3B3: FFreeStr var_C0 = ""
  loc_B1A3BA: FMemLdRf 0
  loc_B1A3BF: LdFixedStr
  loc_B1A3C2: FStStrNoPop var_C0
  loc_B1A3C5: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B1A3CA: FStStr var_E4
  loc_B1A3CD: ILdRf var_C0
  loc_B1A3D0: FMemLdRf 0
  loc_B1A3D5: StFixedStr
  loc_B1A3D8: ILdRf var_E4
  loc_B1A3DB: FMemLdRf 0
  loc_B1A3E0: StFixedStr
  loc_B1A3E3: FFreeStr var_C0 = ""
  loc_B1A3EA: FLdRfVar var_AC
  loc_B1A3ED: LitVarStr var_A8, "ImpoLine"
  loc_B1A3F2: PopAdLdVar
  loc_B1A3F3: FLdRfVar var_98
  loc_B1A3F6: FLdRfVar var_94
  loc_B1A3F9: FLdPr Me
  loc_B1A3FC: MemLdRfVar from_stack_1.global_72
  loc_B1A3FF: NewIfNullPr clsliquidacion
  loc_B1A402: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B1A407: FLdPr var_94
  loc_B1A40A:  = Me.Fields
  loc_B1A40F: FLdPr var_98
  loc_B1A412: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A417: LitI4 1
  loc_B1A41C: LitI4 1
  loc_B1A421: LitVarStr var_D0, "###########0.00"
  loc_B1A426: FStVarCopyObj var_E0
  loc_B1A429: FLdRfVar var_E0
  loc_B1A42C: FLdZeroAd var_AC
  loc_B1A42F: CVarAd
  loc_B1A433: FLdRfVar var_F4
  loc_B1A436: ImpAdCallFPR4  = Format(, )
  loc_B1A43B: LitI2_Byte 0
  loc_B1A43D: FLdPr Me
  loc_B1A440: MemLdI2 global_100
  loc_B1A443: CI4UI1
  loc_B1A444: FLdPr Me
  loc_B1A447: MemLdStr global_96
  loc_B1A44A: AryLock
  loc_B1A44D: Ary1LdPr
  loc_B1A44E: MemLdRfVar from_stack_1.global_12
  loc_B1A451: CVarRef
  loc_B1A456: LitI2_Byte 0
  loc_B1A458: FLdVar var_F4
  loc_B1A45C: FMemLdRf 0
  loc_B1A461: LdFixedStr
  loc_B1A464: PopTmpLdAdStr
  loc_B1A468: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A46D: ILdRf var_C0
  loc_B1A470: FMemLdRf 0
  loc_B1A475: StFixedStr
  loc_B1A478: AryUnlock
  loc_B1A47B: FFree1Str var_C0
  loc_B1A47E: FFreeAd var_94 = ""
  loc_B1A485: FFreeVar var_BC = "": var_E0 = ""
  loc_B1A48E: FMemLdRf 0
  loc_B1A493: LdFixedStr
  loc_B1A496: FStStrNoPop var_C0
  loc_B1A499: ImpAdCallI2 Trim$()
  loc_B1A49E: FStStr var_E4
  loc_B1A4A1: ILdRf var_C0
  loc_B1A4A4: FMemLdRf 0
  loc_B1A4A9: StFixedStr
  loc_B1A4AC: ILdRf var_E4
  loc_B1A4AF: FMemLdRf 0
  loc_B1A4B4: StFixedStrR
  loc_B1A4B8: FFreeStr var_C0 = ""
  loc_B1A4BF: FMemLdRf 0
  loc_B1A4C4: LdFixedStr
  loc_B1A4C7: FStStrNoPop var_C0
  loc_B1A4CA: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B1A4CF: FStStr var_E4
  loc_B1A4D2: ILdRf var_C0
  loc_B1A4D5: FMemLdRf 0
  loc_B1A4DA: StFixedStr
  loc_B1A4DD: ILdRf var_E4
  loc_B1A4E0: FMemLdRf 0
  loc_B1A4E5: StFixedStr
  loc_B1A4E8: FFreeStr var_C0 = ""
  loc_B1A4EF: LitI2_Byte 0
  loc_B1A4F1: LitVar_Missing var_BC
  loc_B1A4F4: LitI2_Byte 0
  loc_B1A4F6: FLdPr Me
  loc_B1A4F9: MemLdI2 global_104
  loc_B1A4FC: CVarI2 var_A8
  loc_B1A4FF: PopAdLdVar
  loc_B1A500: FMemLdRf 0
  loc_B1A505: LdFixedStr
  loc_B1A508: PopTmpLdAdStr
  loc_B1A50C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A511: ILdRf var_C0
  loc_B1A514: FMemLdRf 0
  loc_B1A519: StFixedStr
  loc_B1A51C: FFree1Str var_C0
  loc_B1A51F: FFree1Var var_BC = ""
  loc_B1A522: FMemLdRf 0
  loc_B1A527: LdFixedStr
  loc_B1A52A: FStStrNoPop var_C0
  loc_B1A52D: ImpAdCallI2 Trim$()
  loc_B1A532: FStStr var_E4
  loc_B1A535: ILdRf var_C0
  loc_B1A538: FMemLdRf 0
  loc_B1A53D: StFixedStr
  loc_B1A540: ILdRf var_E4
  loc_B1A543: FMemLdRf 0
  loc_B1A548: StFixedStrR
  loc_B1A54C: FFreeStr var_C0 = ""
  loc_B1A553: FLdRfVar var_BC
  loc_B1A556: FLdRfVar var_AC
  loc_B1A559: LitVarStr var_A8, "CertLine"
  loc_B1A55E: PopAdLdVar
  loc_B1A55F: FLdRfVar var_98
  loc_B1A562: FLdRfVar var_94
  loc_B1A565: FLdPr Me
  loc_B1A568: MemLdRfVar from_stack_1.global_72
  loc_B1A56B: NewIfNullPr clsliquidacion
  loc_B1A56E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B1A573: FLdPr var_94
  loc_B1A576:  = Me.Fields
  loc_B1A57B: FLdPr var_98
  loc_B1A57E: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A583: FLdPr var_AC
  loc_B1A586:  = Me.Value
  loc_B1A58B: LitI2_Byte 0
  loc_B1A58D: LitVar_Missing var_F4
  loc_B1A590: LitI2_Byte 0
  loc_B1A592: LitVarUI1
  loc_B1A598: FLdRfVar var_BC
  loc_B1A59B: ConcatVar var_E0
  loc_B1A59F: PopAdLdVar
  loc_B1A5A0: FMemLdRf 0
  loc_B1A5A5: LdFixedStr
  loc_B1A5A8: PopTmpLdAdStr
  loc_B1A5AC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A5B1: ILdRf var_C0
  loc_B1A5B4: FMemLdRf 0
  loc_B1A5B9: StFixedStr
  loc_B1A5BC: FFree1Str var_C0
  loc_B1A5BF: FFreeAd var_94 = "": var_98 = ""
  loc_B1A5C8: FFreeVar var_BC = "": var_E0 = ""
  loc_B1A5D1: LitI2_Byte 0
  loc_B1A5D3: LitVar_Missing var_BC
  loc_B1A5D6: LitI2_Byte 0
  loc_B1A5D8: LitVarStr var_A8, "0,00"
  loc_B1A5DD: PopAdLdVar
  loc_B1A5DE: FMemLdRf 0
  loc_B1A5E3: LdFixedStr
  loc_B1A5E6: PopTmpLdAdStr
  loc_B1A5EA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A5EF: ILdRf var_C0
  loc_B1A5F2: FMemLdRf 0
  loc_B1A5F7: StFixedStr
  loc_B1A5FA: FFree1Str var_C0
  loc_B1A5FD: FFree1Var var_BC = ""
  loc_B1A600: FLdRfVar var_AC
  loc_B1A603: LitVarStr var_A8, "Linea"
  loc_B1A608: PopAdLdVar
  loc_B1A609: FLdRfVar var_98
  loc_B1A60C: FLdRfVar var_94
  loc_B1A60F: FLdPr Me
  loc_B1A612: MemLdRfVar from_stack_1.global_72
  loc_B1A615: NewIfNullPr clsliquidacion
  loc_B1A618: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B1A61D: FLdPr var_94
  loc_B1A620:  = Me.Fields
  loc_B1A625: FLdPr var_98
  loc_B1A628: from_stack_2 = Me.Item(from_stack_1)
  loc_B1A62D: LitI2_Byte 0
  loc_B1A62F: LitVar_Missing var_E0
  loc_B1A632: LitI2_Byte 0
  loc_B1A634: FLdZeroAd var_AC
  loc_B1A637: CVarAd
  loc_B1A63B: PopAdLdVar
  loc_B1A63C: FMemLdRf 0
  loc_B1A641: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1A646: FFreeAd var_94 = ""
  loc_B1A64D: FFreeVar var_BC = ""
  loc_B1A654: LitI4 0
  loc_B1A659: FStR4 var_90
  loc_B1A65C: AryUnlock
  loc_B1A65F: AryUnlock
  loc_B1A662: LitI2_Byte 1
  loc_B1A664: PopTmpLdAd2 var_12E
  loc_B1A667: FLdPr Me
  loc_B1A66A: MemLdRfVar from_stack_1.global_72
  loc_B1A66D: NewIfNullPr clsliquidacion
  loc_B1A670: Call clsliquidacion.Move(from_stack_1v)
  loc_B1A675: ExitProcHresult
End Function

Private Function Proc_179_26_AAB9EC() 'AAB9EC
  'Data Table: 49E30C
  loc_AAB4D0: LitVarStr var_94, "<html>"
  loc_AAB4D5: PopAdLdVar
  loc_AAB4D6: FLdPr Me
  loc_AAB4D9: MemLdRfVar from_stack_1.htmFile
  loc_AAB4DC: LdPrVar
  loc_AAB4DE: LateMemCall
  loc_AAB4E4: LitVarStr var_94, "<head>"
  loc_AAB4E9: PopAdLdVar
  loc_AAB4EA: FLdPr Me
  loc_AAB4ED: MemLdRfVar from_stack_1.htmFile
  loc_AAB4F0: LdPrVar
  loc_AAB4F2: LateMemCall
  loc_AAB4F8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AAB4FD: PopAdLdVar
  loc_AAB4FE: FLdPr Me
  loc_AAB501: MemLdRfVar from_stack_1.htmFile
  loc_AAB504: LdPrVar
  loc_AAB506: LateMemCall
  loc_AAB50C: LitStr "<title>"
  loc_AAB50F: FLdRfVar var_A8
  loc_AAB512: FLdPr Me
  loc_AAB515:  = Me.Caption
  loc_AAB51A: ILdRf var_A8
  loc_AAB51D: ConcatStr
  loc_AAB51E: FStStrNoPop var_AC
  loc_AAB521: LitStr "</title>"
  loc_AAB524: ConcatStr
  loc_AAB525: CVarStr var_BC
  loc_AAB528: PopAdLdVar
  loc_AAB529: FLdPr Me
  loc_AAB52C: MemLdRfVar from_stack_1.htmFile
  loc_AAB52F: LdPrVar
  loc_AAB531: LateMemCall
  loc_AAB537: FFreeStr var_A8 = ""
  loc_AAB53E: FFree1Var var_BC = ""
  loc_AAB541: LitStr vbNullString
  loc_AAB544: ILdRf Me
  loc_AAB547: CastAd
  loc_AAB54A: FStAdFunc var_C0
  loc_AAB54D: FLdRfVar var_C0
  loc_AAB550: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AAB555: FFree1Ad var_C0
  loc_AAB558: LitI4 0
  loc_AAB55D: FStStrCopy var_AC
  loc_AAB560: FLdRfVar var_AC
  loc_AAB563: LitI4 0
  loc_AAB568: FStStrCopy var_A8
  loc_AAB56B: FLdRfVar var_A8
  loc_AAB56E: LitI2_Byte &HFF
  loc_AAB570: PopTmpLdAd2 var_C2
  loc_AAB573: FLdPr Me
  loc_AAB576: MemLdRfVar from_stack_1.htmFile
  loc_AAB579: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AAB57E: FFreeStr var_A8 = ""
  loc_AAB585: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AAB58A: PopAdLdVar
  loc_AAB58B: FLdPr Me
  loc_AAB58E: MemLdRfVar from_stack_1.htmFile
  loc_AAB591: LdPrVar
  loc_AAB593: LateMemCall
  loc_AAB599: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AAB59E: PopAdLdVar
  loc_AAB59F: FLdPr Me
  loc_AAB5A2: MemLdRfVar from_stack_1.htmFile
  loc_AAB5A5: LdPrVar
  loc_AAB5A7: LateMemCall
  loc_AAB5AD: LitVarStr var_A4, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AAB5B2: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AAB5B7: FStVarCopyObj var_BC
  loc_AAB5BA: FLdRfVar var_BC
  loc_AAB5BD: FLdRfVar var_D4
  loc_AAB5C0: ImpAdCallFPR4  = Ucase()
  loc_AAB5C5: FLdRfVar var_D4
  loc_AAB5C8: ConcatVar var_E4
  loc_AAB5CC: PopAdLdVar
  loc_AAB5CD: FLdPr Me
  loc_AAB5D0: MemLdRfVar from_stack_1.htmFile
  loc_AAB5D3: LdPrVar
  loc_AAB5D5: LateMemCall
  loc_AAB5DB: FFreeVar var_BC = "": var_D4 = ""
  loc_AAB5E4: LitVarStr var_94, "           <p>Declaración de Retenciones<br>Seguridad Social</p>"
  loc_AAB5E9: PopAdLdVar
  loc_AAB5EA: FLdPr Me
  loc_AAB5ED: MemLdRfVar from_stack_1.htmFile
  loc_AAB5F0: LdPrVar
  loc_AAB5F2: LateMemCall
  loc_AAB5F8: LitVarStr var_94, "      <hr></th>"
  loc_AAB5FD: PopAdLdVar
  loc_AAB5FE: FLdPr Me
  loc_AAB601: MemLdRfVar from_stack_1.htmFile
  loc_AAB604: LdPrVar
  loc_AAB606: LateMemCall
  loc_AAB60C: LitVarStr var_94, "  </tr>"
  loc_AAB611: PopAdLdVar
  loc_AAB612: FLdPr Me
  loc_AAB615: MemLdRfVar from_stack_1.htmFile
  loc_AAB618: LdPrVar
  loc_AAB61A: LateMemCall
  loc_AAB620: FLdPr Me
  loc_AAB623: VCallAd Control_ID_MskDesde
  loc_AAB626: FStAdFunc var_C0
  loc_AAB629: FLdPr var_C0
  loc_AAB62C: LateIdLdVar var_BC DispID_20 0
  loc_AAB633: CStrVarTmp
  loc_AAB634: FStStrNoPop var_A8
  loc_AAB637: LitStr vbNullString
  loc_AAB63A: NeStr
  loc_AAB63C: FLdPr Me
  loc_AAB63F: VCallAd Control_ID_MskHasta
  loc_AAB642: FStAdFunc var_F8
  loc_AAB645: FLdPr var_F8
  loc_AAB648: LateIdLdVar var_D4 DispID_20 0
  loc_AAB64F: CStrVarTmp
  loc_AAB650: FStStrNoPop var_AC
  loc_AAB653: LitStr vbNullString
  loc_AAB656: NeStr
  loc_AAB658: OrI4
  loc_AAB659: FFreeStr var_A8 = ""
  loc_AAB660: FFreeAd var_C0 = ""
  loc_AAB667: FFreeVar var_BC = ""
  loc_AAB66E: BranchF loc_AAB85A
  loc_AAB671: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AAB676: PopAdLdVar
  loc_AAB677: FLdPr Me
  loc_AAB67A: MemLdRfVar from_stack_1.htmFile
  loc_AAB67D: LdPrVar
  loc_AAB67F: LateMemCall
  loc_AAB685: FLdRfVar var_C2
  loc_AAB688: FLdPr Me
  loc_AAB68B: VCallAd Control_ID_OptionPago
  loc_AAB68E: FStAdFunc var_C0
  loc_AAB691: FLdPr var_C0
  loc_AAB694:  = Me.Value
  loc_AAB699: LitVarStr var_108, "    <th align=""left"">Fecha de "
  loc_AAB69E: LitVarStr var_F4, "Pago efectivo"
  loc_AAB6A3: FStVarCopyObj var_D4
  loc_AAB6A6: FLdRfVar var_D4
  loc_AAB6A9: LitVarStr var_A4, "Pago"
  loc_AAB6AE: FStVarCopyObj var_BC
  loc_AAB6B1: FLdRfVar var_BC
  loc_AAB6B4: FLdI2 var_C2
  loc_AAB6B7: CVarBoolI2 var_94
  loc_AAB6BB: FLdRfVar var_E4
  loc_AAB6BE: ImpAdCallFPR4  = IIf(, , )
  loc_AAB6C3: FLdRfVar var_E4
  loc_AAB6C6: ConcatVar var_118
  loc_AAB6CA: LitVarStr var_128, "</th>"
  loc_AAB6CF: ConcatVar var_138
  loc_AAB6D3: PopAdLdVar
  loc_AAB6D4: FLdPr Me
  loc_AAB6D7: MemLdRfVar from_stack_1.htmFile
  loc_AAB6DA: LdPrVar
  loc_AAB6DC: LateMemCall
  loc_AAB6E2: FFree1Ad var_C0
  loc_AAB6E5: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_E4 = "": var_118 = ""
  loc_AAB6F4: FLdPr Me
  loc_AAB6F7: VCallAd Control_ID_MskDesde
  loc_AAB6FA: FStAdFunc var_C0
  loc_AAB6FD: FLdPr var_C0
  loc_AAB700: LateIdLdVar var_BC DispID_20 0
  loc_AAB707: PopAd
  loc_AAB709: FLdPr Me
  loc_AAB70C: VCallAd Control_ID_MskDesde
  loc_AAB70F: FStAdFunc var_F8
  loc_AAB712: FLdPr var_F8
  loc_AAB715: LateIdLdVar var_D4 DispID_15 0
  loc_AAB71C: PopAd
  loc_AAB71E: LitVarStr var_F4, "    <th align=""center"">"
  loc_AAB723: LitVarStr var_A4, "&nbsp;"
  loc_AAB728: FStVarCopyObj var_118
  loc_AAB72B: FLdRfVar var_118
  loc_AAB72E: LitStr "      Desde: <span class=""Normal"">"
  loc_AAB731: FLdRfVar var_D4
  loc_AAB734: CStrVarTmp
  loc_AAB735: FStStrNoPop var_AC
  loc_AAB738: ConcatStr
  loc_AAB739: FStStrNoPop var_14C
  loc_AAB73C: LitStr "</span>"
  loc_AAB73F: ConcatStr
  loc_AAB740: CVarStr var_E4
  loc_AAB743: FLdRfVar var_BC
  loc_AAB746: CStrVarTmp
  loc_AAB747: FStStrNoPop var_A8
  loc_AAB74A: LitStr vbNullString
  loc_AAB74D: NeStr
  loc_AAB74F: CVarBoolI2 var_94
  loc_AAB753: FLdRfVar var_138
  loc_AAB756: ImpAdCallFPR4  = IIf(, , )
  loc_AAB75B: FLdRfVar var_138
  loc_AAB75E: ConcatVar var_15C
  loc_AAB762: LitVarStr var_108, "</th>"
  loc_AAB767: ConcatVar var_16C
  loc_AAB76B: PopAdLdVar
  loc_AAB76C: FLdPr Me
  loc_AAB76F: MemLdRfVar from_stack_1.htmFile
  loc_AAB772: LdPrVar
  loc_AAB774: LateMemCall
  loc_AAB77A: FFreeStr var_A8 = "": var_AC = ""
  loc_AAB783: FFreeAd var_C0 = ""
  loc_AAB78A: FFreeVar var_BC = "": var_D4 = "": var_94 = "": var_E4 = "": var_118 = "": var_138 = "": var_15C = ""
  loc_AAB79D: FLdPr Me
  loc_AAB7A0: VCallAd Control_ID_MskDesde
  loc_AAB7A3: FStAdFunc var_C0
  loc_AAB7A6: FLdPr var_C0
  loc_AAB7A9: LateIdLdVar var_BC DispID_20 0
  loc_AAB7B0: PopAd
  loc_AAB7B2: FLdPr Me
  loc_AAB7B5: VCallAd Control_ID_MskHasta
  loc_AAB7B8: FStAdFunc var_F8
  loc_AAB7BB: FLdPr var_F8
  loc_AAB7BE: LateIdLdVar var_D4 DispID_15 0
  loc_AAB7C5: PopAd
  loc_AAB7C7: LitVarStr var_F4, "    <th align=""right"">"
  loc_AAB7CC: LitVarStr var_A4, "&nbsp;"
  loc_AAB7D1: FStVarCopyObj var_118
  loc_AAB7D4: FLdRfVar var_118
  loc_AAB7D7: LitStr "      Hasta: <span class=""Normal"">"
  loc_AAB7DA: FLdRfVar var_D4
  loc_AAB7DD: CStrVarTmp
  loc_AAB7DE: FStStrNoPop var_AC
  loc_AAB7E1: ConcatStr
  loc_AAB7E2: FStStrNoPop var_14C
  loc_AAB7E5: LitStr "</span>"
  loc_AAB7E8: ConcatStr
  loc_AAB7E9: CVarStr var_E4
  loc_AAB7EC: FLdRfVar var_BC
  loc_AAB7EF: CStrVarTmp
  loc_AAB7F0: FStStrNoPop var_A8
  loc_AAB7F3: LitStr vbNullString
  loc_AAB7F6: NeStr
  loc_AAB7F8: CVarBoolI2 var_94
  loc_AAB7FC: FLdRfVar var_138
  loc_AAB7FF: ImpAdCallFPR4  = IIf(, , )
  loc_AAB804: FLdRfVar var_138
  loc_AAB807: ConcatVar var_15C
  loc_AAB80B: LitVarStr var_108, "</th>"
  loc_AAB810: ConcatVar var_16C
  loc_AAB814: PopAdLdVar
  loc_AAB815: FLdPr Me
  loc_AAB818: MemLdRfVar from_stack_1.htmFile
  loc_AAB81B: LdPrVar
  loc_AAB81D: LateMemCall
  loc_AAB823: FFreeStr var_A8 = "": var_AC = ""
  loc_AAB82C: FFreeAd var_C0 = ""
  loc_AAB833: FFreeVar var_BC = "": var_D4 = "": var_94 = "": var_E4 = "": var_118 = "": var_138 = "": var_15C = ""
  loc_AAB846: LitVarStr var_94, "  </tr>"
  loc_AAB84B: PopAdLdVar
  loc_AAB84C: FLdPr Me
  loc_AAB84F: MemLdRfVar from_stack_1.htmFile
  loc_AAB852: LdPrVar
  loc_AAB854: LateMemCall
  loc_AAB85A: LitVarStr var_94, "</table>"
  loc_AAB85F: PopAdLdVar
  loc_AAB860: FLdPr Me
  loc_AAB863: MemLdRfVar from_stack_1.htmFile
  loc_AAB866: LdPrVar
  loc_AAB868: LateMemCall
  loc_AAB86E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AAB873: PopAdLdVar
  loc_AAB874: FLdPr Me
  loc_AAB877: MemLdRfVar from_stack_1.htmFile
  loc_AAB87A: LdPrVar
  loc_AAB87C: LateMemCall
  loc_AAB882: LitVarStr var_94, "  <THEAD>"
  loc_AAB887: PopAdLdVar
  loc_AAB888: FLdPr Me
  loc_AAB88B: MemLdRfVar from_stack_1.htmFile
  loc_AAB88E: LdPrVar
  loc_AAB890: LateMemCall
  loc_AAB896: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AAB89B: PopAdLdVar
  loc_AAB89C: FLdPr Me
  loc_AAB89F: MemLdRfVar from_stack_1.htmFile
  loc_AAB8A2: LdPrVar
  loc_AAB8A4: LateMemCall
  loc_AAB8AA: LitVarStr var_94, "    <th rowspan=""2"">&nbsp</th>"
  loc_AAB8AF: PopAdLdVar
  loc_AAB8B0: FLdPr Me
  loc_AAB8B3: MemLdRfVar from_stack_1.htmFile
  loc_AAB8B6: LdPrVar
  loc_AAB8B8: LateMemCall
  loc_AAB8BE: LitVarStr var_94, "    <th rowspan=""2"">Expediente</th>"
  loc_AAB8C3: PopAdLdVar
  loc_AAB8C4: FLdPr Me
  loc_AAB8C7: MemLdRfVar from_stack_1.htmFile
  loc_AAB8CA: LdPrVar
  loc_AAB8CC: LateMemCall
  loc_AAB8D2: LitVarStr var_94, "    <th width=""10" & Chr(37) & """ rowspan=""2"">CUIT</th>"
  loc_AAB8D7: PopAdLdVar
  loc_AAB8D8: FLdPr Me
  loc_AAB8DB: MemLdRfVar from_stack_1.htmFile
  loc_AAB8DE: LdPrVar
  loc_AAB8E0: LateMemCall
  loc_AAB8E6: LitVarStr var_94, "    <th rowspan=""2"">Razón Social </th>"
  loc_AAB8EB: PopAdLdVar
  loc_AAB8EC: FLdPr Me
  loc_AAB8EF: MemLdRfVar from_stack_1.htmFile
  loc_AAB8F2: LdPrVar
  loc_AAB8F4: LateMemCall
  loc_AAB8FA: LitVarStr var_94, "    <th rowspan=""2"">Domicilio</th>"
  loc_AAB8FF: PopAdLdVar
  loc_AAB900: FLdPr Me
  loc_AAB903: MemLdRfVar from_stack_1.htmFile
  loc_AAB906: LdPrVar
  loc_AAB908: LateMemCall
  loc_AAB90E: LitVarStr var_94, "    <th rowspan=""2"">Fecha Retención </th>"
  loc_AAB913: PopAdLdVar
  loc_AAB914: FLdPr Me
  loc_AAB917: MemLdRfVar from_stack_1.htmFile
  loc_AAB91A: LdPrVar
  loc_AAB91C: LateMemCall
  loc_AAB922: LitVarStr var_94, "    <th colspan=""2"">Comprobante</th>"
  loc_AAB927: PopAdLdVar
  loc_AAB928: FLdPr Me
  loc_AAB92B: MemLdRfVar from_stack_1.htmFile
  loc_AAB92E: LdPrVar
  loc_AAB930: LateMemCall
  loc_AAB936: LitVarStr var_94, "    <th rowspan=""2"">Monto Imponible </th>"
  loc_AAB93B: PopAdLdVar
  loc_AAB93C: FLdPr Me
  loc_AAB93F: MemLdRfVar from_stack_1.htmFile
  loc_AAB942: LdPrVar
  loc_AAB944: LateMemCall
  loc_AAB94A: LitVarStr var_94, "    <th rowspan=""2"">Alícuota</th>"
  loc_AAB94F: PopAdLdVar
  loc_AAB950: FLdPr Me
  loc_AAB953: MemLdRfVar from_stack_1.htmFile
  loc_AAB956: LdPrVar
  loc_AAB958: LateMemCall
  loc_AAB95E: LitVarStr var_94, "    <th rowspan=""2"">Monto Retenido </th>"
  loc_AAB963: PopAdLdVar
  loc_AAB964: FLdPr Me
  loc_AAB967: MemLdRfVar from_stack_1.htmFile
  loc_AAB96A: LdPrVar
  loc_AAB96C: LateMemCall
  loc_AAB972: LitVarStr var_94, "  </tr>"
  loc_AAB977: PopAdLdVar
  loc_AAB978: FLdPr Me
  loc_AAB97B: MemLdRfVar from_stack_1.htmFile
  loc_AAB97E: LdPrVar
  loc_AAB980: LateMemCall
  loc_AAB986: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AAB98B: PopAdLdVar
  loc_AAB98C: FLdPr Me
  loc_AAB98F: MemLdRfVar from_stack_1.htmFile
  loc_AAB992: LdPrVar
  loc_AAB994: LateMemCall
  loc_AAB99A: LitVarStr var_94, "    <th>Tipo</th>"
  loc_AAB99F: PopAdLdVar
  loc_AAB9A0: FLdPr Me
  loc_AAB9A3: MemLdRfVar from_stack_1.htmFile
  loc_AAB9A6: LdPrVar
  loc_AAB9A8: LateMemCall
  loc_AAB9AE: LitVarStr var_94, "    <th>Número</th>"
  loc_AAB9B3: PopAdLdVar
  loc_AAB9B4: FLdPr Me
  loc_AAB9B7: MemLdRfVar from_stack_1.htmFile
  loc_AAB9BA: LdPrVar
  loc_AAB9BC: LateMemCall
  loc_AAB9C2: LitVarStr var_94, "  </tr>"
  loc_AAB9C7: PopAdLdVar
  loc_AAB9C8: FLdPr Me
  loc_AAB9CB: MemLdRfVar from_stack_1.htmFile
  loc_AAB9CE: LdPrVar
  loc_AAB9D0: LateMemCall
  loc_AAB9D6: LitVarStr var_94, "  </THEAD>"
  loc_AAB9DB: PopAdLdVar
  loc_AAB9DC: FLdPr Me
  loc_AAB9DF: MemLdRfVar from_stack_1.htmFile
  loc_AAB9E2: LdPrVar
  loc_AAB9E4: LateMemCall
  loc_AAB9EA: ExitProcHresult
End Function

Private Function Proc_179_27_982000() '982000
  'Data Table: 49E30C
  loc_981FC0: LitVarStr var_94, "</table>"
  loc_981FC5: PopAdLdVar
  loc_981FC6: FLdPr Me
  loc_981FC9: MemLdRfVar from_stack_1.htmFile
  loc_981FCC: LdPrVar
  loc_981FCE: LateMemCall
  loc_981FD4: LitVarStr var_94, "</body>"
  loc_981FD9: PopAdLdVar
  loc_981FDA: FLdPr Me
  loc_981FDD: MemLdRfVar from_stack_1.htmFile
  loc_981FE0: LdPrVar
  loc_981FE2: LateMemCall
  loc_981FE8: LitVarStr var_94, "</html>"
  loc_981FED: PopAdLdVar
  loc_981FEE: FLdPr Me
  loc_981FF1: MemLdRfVar from_stack_1.htmFile
  loc_981FF4: LdPrVar
  loc_981FF6: LateMemCall
  loc_981FFC: ExitProcHresult
End Function
