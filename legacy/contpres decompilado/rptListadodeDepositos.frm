VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeDepositos
  Caption = "Listado de Depósitos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeDepositos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9735
  ClientHeight = 5925
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 4320
    Width = 7575
    Height = 150
    Visible = 0   'False
    TabIndex = 23
    OleObjectBlob = "rptListadodeDepositos.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5670
    Width = 9735
    Height = 255
    TabIndex = 32
    OleObjectBlob = "rptListadodeDepositos.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 4680
    Width = 735
    Height = 615
    TabIndex = 30
    Cancel = -1  'True
    Picture = "rptListadodeDepositos.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeDepositos.frx":0C04
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4440
    Width = 4455
    Height = 1095
    TabIndex = 27
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 29
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 28
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4440
    Width = 3015
    Height = 1095
    TabIndex = 24
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 26
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 25
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 4335
    TabIndex = 0
    Begin VB.CheckBox chkSintetico
      Caption = "Solo Títulos"
      Left = 5640
      Top = 3840
      Width = 1215
      Height = 255
      TabIndex = 22
    End
    Begin VB.Frame frmAgrupar
      Caption = " Agrupar por: "
      Left = 480
      Top = 3480
      Width = 4575
      Height = 735
      TabIndex = 19
      Begin VB.OptionButton optCodiEnre
        Caption = "Ente Recaudador"
        Left = 2520
        Top = 360
        Width = 1575
        Height = 255
        TabIndex = 21
      End
      Begin VB.OptionButton optCodiBanc
        Caption = "Banco"
        Left = 1080
        Top = 360
        Width = 855
        Height = 255
        TabIndex = 20
        Value = 255
      End
    End
    Begin VB.Frame frmFecha
      Caption = "Fecha"
      Left = 480
      Top = 840
      Width = 5175
      Height = 1455
      TabIndex = 5
      Begin VB.OptionButton optFeinMoba
        Caption = "Recaudación"
        Left = 2880
        Top = 840
        Width = 1335
        Height = 375
        TabIndex = 13
      End
      Begin VB.OptionButton optFechMoba
        Caption = "Depósito (LB)"
        Left = 2880
        Top = 480
        Width = 1335
        Height = 255
        TabIndex = 9
        Value = 255
      End
      Begin VB.CommandButton cmdCalHasta
        Left = 1920
        Top = 840
        Width = 375
        Height = 375
        TabIndex = 12
        Picture = "rptListadodeDepositos.frx":0C68
        Style = 1
      End
      Begin VB.CommandButton cmdCalDesde
        Left = 1920
        Top = 360
        Width = 375
        Height = 375
        TabIndex = 8
        Picture = "rptListadodeDepositos.frx":11AA
        Style = 1
      End
      Begin MSMask.MaskEdBox mskDesde
        Left = 765
        Top = 360
        Width = 1095
        Height = 285
        TabIndex = 7
        OleObjectBlob = "rptListadodeDepositos.frx":16EC
      End
      Begin MSMask.MaskEdBox mskHasta
        Left = 765
        Top = 840
        Width = 1095
        Height = 285
        TabIndex = 11
        OleObjectBlob = "rptListadodeDepositos.frx":1774
      End
      Begin VB.Label Label2
        Caption = "Hasta:"
        Left = 165
        Top = 840
        Width = 465
        Height = 195
        TabIndex = 10
        AutoSize = -1  'True
      End
      Begin VB.Label Label1
        Caption = "Desde:"
        Left = 120
        Top = 360
        Width = 510
        Height = 195
        TabIndex = 6
        AutoSize = -1  'True
      End
    End
    Begin VB.ComboBox CodiEnreCbo
      Style = 2
      ForeColor = &H0&
      Left = 1965
      Top = 3000
      Width = 4935
      Height = 315
      TabIndex = 18
    End
    Begin VB.CommandButton cmdCodiBanc
      Left = 2040
      Top = 360
      Width = 375
      Height = 255
      TabIndex = 3
      Picture = "rptListadodeDepositos.frx":17FC
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 1320
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin MSMask.MaskEdBox CodiBancMsk
      Left = 1245
      Top = 360
      Width = 735
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptListadodeDepositos.frx":18F6
    End
    Begin MSMask.MaskEdBox mskNumeMoba
      Left = 1725
      Top = 2520
      Width = 1095
      Height = 285
      TabIndex = 16
      OleObjectBlob = "rptListadodeDepositos.frx":1960
    End
    Begin VB.Label Label3
      Caption = "Ente Recaudador:"
      Left = 525
      Top = 3000
      Width = 1305
      Height = 195
      TabIndex = 17
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Movimiento Nº:"
      Left = 510
      Top = 2520
      Width = 1080
      Height = 195
      TabIndex = 15
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Banco:"
      Left = 600
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label DetaBancLbl
      Left = 2520
      Top = 360
      Width = 4455
      Height = 255
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8400
    Top = 4920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 31
    OleObjectBlob = "rptListadodeDepositos.frx":19D0
  End
End

Attribute VB_Name = "rptListadodeDepositos"

Public htmFile As Variant
Public iBanco As Integer
Public bLogos As Boolean
Public bGenerado As Boolean
Public bSumar As Boolean


Private Sub cmdSalir_Click() '979740
  'Data Table: 4C485C
  loc_979710: LitVarStr var_94, "Cerrando..."
  loc_979715: PopAdLdVar
  loc_979716: FLdPr Me
  loc_979719: VCallAd Control_ID_statusBar
  loc_97971C: FStAdFunc var_A8
  loc_97971F: FLdPr var_A8
  loc_979722: LateIdSt
  loc_979727: FFree1Ad var_A8
  loc_97972A: ILdRf Me
  loc_97972D: FStAdNoPop
  loc_979731: ImpAdLdRf MemVar_C44F9C
  loc_979734: NewIfNullPr Me
  loc_979737: Me.Global.Unload from_stack_1
  loc_97973C: FFree1Ad var_A8
  loc_97973F: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B08C
  'Data Table: 4C485C
  loc_96B070: LitI2_Byte &HFF
  loc_96B072: LitI2_Byte 0
  loc_96B074: ILdRf Me
  loc_96B077: CastAd
  loc_96B07A: FStAdFunc var_88
  loc_96B07D: FLdRfVar var_88
  loc_96B080: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B085: FFree1Ad var_88
  loc_96B088: ExitProcHresult
  loc_96B089: SubI2
End Sub

Private Sub cmdNueva_Click() '9E8BA4
  'Data Table: 4C485C
  loc_9E8A74: LitI2_Byte 0
  loc_9E8A76: FLdPr Me
  loc_9E8A79: MemStI2 bGenerado
  loc_9E8A7C: LitI2_Byte &HFF
  loc_9E8A7E: FLdPr Me
  loc_9E8A81: MemStI2 bLogos
  loc_9E8A84: LitI2_Byte &HFF
  loc_9E8A86: FLdPr Me
  loc_9E8A89: MemStI2 bSumar
  loc_9E8A8C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9E8A91: LitI2_Byte 0
  loc_9E8A93: PopTmpLdAd2 var_86
  loc_9E8A96: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9E8A9B: CStrDate
  loc_9E8A9D: CVarStr var_98
  loc_9E8AA0: PopAdLdVar
  loc_9E8AA1: FLdPr Me
  loc_9E8AA4: VCallAd Control_ID_mskDesde
  loc_9E8AA7: FStAdFunc var_AC
  loc_9E8AAA: FLdPr var_AC
  loc_9E8AAD: LateIdSt
  loc_9E8AB2: FFree1Ad var_AC
  loc_9E8AB5: FFree1Var var_98 = ""
  loc_9E8AB8: ImpAdLdFPR8 MemVar_C3D04C
  loc_9E8ABB: CStrDate
  loc_9E8ABD: CVarStr var_98
  loc_9E8AC0: PopAdLdVar
  loc_9E8AC1: FLdPr Me
  loc_9E8AC4: VCallAd Control_ID_mskHasta
  loc_9E8AC7: FStAdFunc var_AC
  loc_9E8ACA: FLdPr var_AC
  loc_9E8ACD: LateIdSt
  loc_9E8AD2: FFree1Ad var_AC
  loc_9E8AD5: FFree1Var var_98 = ""
  loc_9E8AD8: LitVarStr var_A8, vbNullString
  loc_9E8ADD: PopAdLdVar
  loc_9E8ADE: FLdPr Me
  loc_9E8AE1: VCallAd Control_ID_CodiBancMsk
  loc_9E8AE4: FStAdFunc var_AC
  loc_9E8AE7: FLdPr var_AC
  loc_9E8AEA: LateIdSt
  loc_9E8AEF: FFree1Ad var_AC
  loc_9E8AF2: LitVarStr var_A8, vbNullString
  loc_9E8AF7: PopAdLdVar
  loc_9E8AF8: FLdPr Me
  loc_9E8AFB: VCallAd Control_ID_CodiBancMsk
  loc_9E8AFE: FStAdFunc var_AC
  loc_9E8B01: FLdPr var_AC
  loc_9E8B04: LateIdSt
  loc_9E8B09: FFree1Ad var_AC
  loc_9E8B0C: LitVarStr var_A8, "#####"
  loc_9E8B11: PopAdLdVar
  loc_9E8B12: FLdPr Me
  loc_9E8B15: VCallAd Control_ID_CodiBancMsk
  loc_9E8B18: FStAdFunc var_AC
  loc_9E8B1B: FLdPr var_AC
  loc_9E8B1E: LateIdSt
  loc_9E8B23: FFree1Ad var_AC
  loc_9E8B26: LitVarStr var_A8, vbNullString
  loc_9E8B2B: PopAdLdVar
  loc_9E8B2C: FLdPr Me
  loc_9E8B2F: VCallAd Control_ID_CodiBancMsk
  loc_9E8B32: FStAdFunc var_AC
  loc_9E8B35: FLdPr var_AC
  loc_9E8B38: LateIdSt
  loc_9E8B3D: FFree1Ad var_AC
  loc_9E8B40: LitStr vbNullString
  loc_9E8B43: FLdPr Me
  loc_9E8B46: VCallAd Control_ID_DetaBancLbl
  loc_9E8B49: FStAdFunc var_AC
  loc_9E8B4C: FLdPr var_AC
  loc_9E8B4F: Me.Caption = from_stack_1
  loc_9E8B54: FFree1Ad var_AC
  loc_9E8B57: LitVarStr var_A8, vbNullString
  loc_9E8B5C: PopAdLdVar
  loc_9E8B5D: FLdPr Me
  loc_9E8B60: VCallAd Control_ID_mskNumeMoba
  loc_9E8B63: FStAdFunc var_AC
  loc_9E8B66: FLdPr var_AC
  loc_9E8B69: LateIdSt
  loc_9E8B6E: FFree1Ad var_AC
  loc_9E8B71: LitI2_Byte 0
  loc_9E8B73: FLdPr Me
  loc_9E8B76: VCallAd Control_ID_CodiEnreCbo
  loc_9E8B79: FStAdFunc var_AC
  loc_9E8B7C: FLdPr var_AC
  loc_9E8B7F: Me.ListIndex = from_stack_1
  loc_9E8B84: FFree1Ad var_AC
  loc_9E8B87: Call HabilitarCriterio()
  loc_9E8B8C: ILdRf Me
  loc_9E8B8F: CastAd
  loc_9E8B92: FStAdFunc var_AC
  loc_9E8B95: FLdRfVar var_AC
  loc_9E8B98: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9E8B9D: FFree1Ad var_AC
  loc_9E8BA0: ExitProcHresult
  loc_9E8BA1: FLdZeroAd arg_39C
End Sub

Private Function CodiBancMsk_UnknownEvent_8(arg_C) '9E3130
  'Data Table: 4C485C
  loc_9E302C: FLdPr Me
  loc_9E302F: VCallAd Control_ID_CodiBancMsk
  loc_9E3032: FStAdFunc var_88
  loc_9E3035: FLdPr var_88
  loc_9E3038: LateIdLdVar var_98 DispID_22 0
  loc_9E303F: CStrVarTmp
  loc_9E3040: FStStrNoPop var_9C
  loc_9E3043: LitStr vbNullString
  loc_9E3046: NeStr
  loc_9E3048: FFree1Str var_9C
  loc_9E304B: FFree1Ad var_88
  loc_9E304E: FFree1Var var_98 = ""
  loc_9E3051: BranchF loc_9E312D
  loc_9E3054: FLdPr Me
  loc_9E3057: VCallAd Control_ID_CodiBancMsk
  loc_9E305A: FStAdFunc var_88
  loc_9E305D: FLdPr var_88
  loc_9E3060: LateIdLdVar var_98 DispID_22 0
  loc_9E3067: PopAd
  loc_9E3069: LitI4 0
  loc_9E306E: FStStrCopy var_A4
  loc_9E3071: FLdRfVar var_A4
  loc_9E3074: FLdPr Me
  loc_9E3077: MemLdRfVar from_stack_1.global_92
  loc_9E307A: NewIfNullRf
  loc_9E307E: FLdRfVar var_98
  loc_9E3081: CStrVarTmp
  loc_9E3082: FStStrNoPop var_A0
  loc_9E3085: ImpAdLdI2 MemVar_C3D064
  loc_9E3088: CStrUI1
  loc_9E308A: FStStrNoPop var_9C
  loc_9E308D: ImpAdCallI2 Proc_259_5_B268F0(, , , )
  loc_9E3092: FFreeStr var_9C = "": var_A0 = ""
  loc_9E309B: FFree1Ad var_88
  loc_9E309E: FFree1Var var_98 = ""
  loc_9E30A1: BranchF loc_9E30D2
  loc_9E30A4: FLdRfVar var_9C
  loc_9E30A7: FLdPr Me
  loc_9E30AA: MemLdRfVar from_stack_1.global_92
  loc_9E30AD: NewIfNullPr tblbanco
  loc_9E30B0: from_stack_1v = tblbanco.DetaBancGet()
  loc_9E30B5: ILdRf var_9C
  loc_9E30B8: FLdPr Me
  loc_9E30BB: VCallAd Control_ID_DetaBancLbl
  loc_9E30BE: FStAdFunc var_88
  loc_9E30C1: FLdPr var_88
  loc_9E30C4: Me.Caption = from_stack_1
  loc_9E30C9: FFree1Str var_9C
  loc_9E30CC: FFree1Ad var_88
  loc_9E30CF: Branch loc_9E312D
  loc_9E30D2: FLdRfVar var_9C
  loc_9E30D5: FLdPr Me
  loc_9E30D8: MemLdRfVar from_stack_1.global_92
  loc_9E30DB: NewIfNullPr tblbanco
  loc_9E30DE: from_stack_1v = tblbanco.MsgErrorGet()
  loc_9E30E3: ILdRf var_9C
  loc_9E30E6: FLdPr Me
  loc_9E30E9: MemStStrCopy
  loc_9E30ED: FFree1Str var_9C
  loc_9E30F0: FLdPr Me
  loc_9E30F3: VCallAd Control_ID_CodiBancMsk
  loc_9E30F6: FStAdFunc var_B0
  loc_9E30F9: FLdPr Me
  loc_9E30FC: VCallAd Control_ID_DetaBancLbl
  loc_9E30FF: FStAdFunc var_AC
  loc_9E3102: FLdRfVar var_AC
  loc_9E3105: FLdZeroAd var_B0
  loc_9E3108: FStAdFuncNoPop
  loc_9E310B: CastAd
  loc_9E310E: FStAdFunc var_A8
  loc_9E3111: FLdRfVar var_A8
  loc_9E3114: FLdPr Me
  loc_9E3117: MemLdRfVar from_stack_1.global_88
  loc_9E311A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E311F: IStI2 arg_C
  loc_9E3122: FFreeAd var_88 = "": var_A8 = "": var_AC = ""
  loc_9E312D: ExitProcHresult
  loc_9E312E: ExitProcI2
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A2D4
  'Data Table: 4C485C
  loc_98A29C: FLdPr Me
  loc_98A29F: VCallAd Control_ID_statusBar
  loc_98A2A2: FStAdFunc var_88
  loc_98A2A5: FLdPr var_88
  loc_98A2A8: LateIdLdVar var_98 DispID_1 0
  loc_98A2AF: CStrVarTmp
  loc_98A2B0: CVarStr var_A8
  loc_98A2B3: PopAdLdVar
  loc_98A2B4: FLdPr Me
  loc_98A2B7: VCallAd Control_ID_statusBar
  loc_98A2BA: FStAdFunc var_BC
  loc_98A2BD: FLdPr var_BC
  loc_98A2C0: LateIdSt
  loc_98A2C5: FFreeAd var_88 = ""
  loc_98A2CC: FFreeVar var_98 = ""
  loc_98A2D3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '961D44
  'Data Table: 4C485C
  loc_961D2C: LitI2_Byte 0
  loc_961D2E: ILdRf Me
  loc_961D31: CastAd
  loc_961D34: FStAdFunc var_88
  loc_961D37: FLdRfVar var_88
  loc_961D3A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_961D3F: FFree1Ad var_88
  loc_961D42: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '961CAC
  'Data Table: 4C485C
  loc_961C94: ILdRf Me
  loc_961C97: CastAd
  loc_961C9A: FStAdFunc var_88
  loc_961C9D: FLdRfVar var_88
  loc_961CA0: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_961CA5: FFree1Ad var_88
  loc_961CA8: ExitProcHresult
  loc_961CA9: EqCy
End Sub

Private Sub cmdPrevia_Click() '961C14
  'Data Table: 4C485C
  loc_961BFC: ILdRf Me
  loc_961BFF: CastAd
  loc_961C02: FStAdFunc var_88
  loc_961C05: FLdRfVar var_88
  loc_961C08: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_961C0D: FFree1Ad var_88
  loc_961C10: ExitProcHresult
  loc_961C11: FnAbsCy
  loc_961C12: BranchFVar
End Sub

Private Sub mskDesde_UnknownEvent_0 '951300
  'Data Table: 4C485C
  loc_9512EC: FLdPr Me
  loc_9512EF: VCallAd Control_ID_mskDesde
  loc_9512F2: CVarAd
  loc_9512F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9512FB: FFree1Var var_94 = ""
  loc_9512FE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B3FFC
  'Data Table: 4C485C
  loc_9B3F60: FLdPr Me
  loc_9B3F63: VCallAd Control_ID_mskDesde
  loc_9B3F66: FStAdFunc var_88
  loc_9B3F69: FLdPr var_88
  loc_9B3F6C: LateIdLdVar var_98 DispID_15 0
  loc_9B3F73: PopAd
  loc_9B3F75: FLdPr Me
  loc_9B3F78: VCallAd Control_ID_mskDesde
  loc_9B3F7B: FStAdFunc var_AC
  loc_9B3F7E: LitI2_Byte &HFF
  loc_9B3F80: PopTmpLdAd2 var_A2
  loc_9B3F83: FLdZeroAd var_AC
  loc_9B3F86: FStAdFunc var_A0
  loc_9B3F89: FLdRfVar var_A0
  loc_9B3F8C: LitStr vbNullString
  loc_9B3F8F: LitI2_Byte 0
  loc_9B3F91: LitI2_Byte 0
  loc_9B3F93: FLdRfVar var_98
  loc_9B3F96: CStrVarTmp
  loc_9B3F97: FStStrNoPop var_9C
  loc_9B3F9A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B3F9F: FStStrNoPop var_A8
  loc_9B3FA2: FLdPr Me
  loc_9B3FA5: MemStStrCopy
  loc_9B3FA9: FFreeStr var_9C = ""
  loc_9B3FB0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3FB9: FFree1Var var_98 = ""
  loc_9B3FBC: FLdPr Me
  loc_9B3FBF: VCallAd Control_ID_mskDesde
  loc_9B3FC2: FStAdFunc var_B0
  loc_9B3FC5: LitNothing
  loc_9B3FC7: CastAd
  loc_9B3FCA: FStAdFunc var_AC
  loc_9B3FCD: FLdRfVar var_AC
  loc_9B3FD0: FLdZeroAd var_B0
  loc_9B3FD3: FStAdFuncNoPop
  loc_9B3FD6: CastAd
  loc_9B3FD9: FStAdFunc var_A0
  loc_9B3FDC: FLdRfVar var_A0
  loc_9B3FDF: FLdPr Me
  loc_9B3FE2: MemLdRfVar from_stack_1.global_88
  loc_9B3FE5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B3FEA: IStI2 arg_C
  loc_9B3FED: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3FF8: ExitProcHresult
  loc_9B3FF9: FStStrNoPop arg_20
End Function

Private Sub cmdCalHasta_Click() '97E238
  'Data Table: 4C485C
  loc_97E204: LitVar_Missing var_A4
  loc_97E207: PopAdLdVar
  loc_97E208: LitVarI4
  loc_97E210: PopAdLdVar
  loc_97E211: ImpAdLdRf MemVar_C3D9A8
  loc_97E214: NewIfNullPr frmCalendario
  loc_97E217: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E21C: ImpAdLdRf MemVar_C3D038
  loc_97E21F: CDargRef
  loc_97E223: FLdPr Me
  loc_97E226: VCallAd Control_ID_mskHasta
  loc_97E229: FStAdFunc var_A8
  loc_97E22C: FLdPr var_A8
  loc_97E22F: LateIdSt
  loc_97E234: FFree1Ad var_A8
  loc_97E237: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '951228
  'Data Table: 4C485C
  loc_951214: FLdPr Me
  loc_951217: VCallAd Control_ID_mskHasta
  loc_95121A: CVarAd
  loc_95121E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951223: FFree1Var var_94 = ""
  loc_951226: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B40E4
  'Data Table: 4C485C
  loc_9B4048: FLdPr Me
  loc_9B404B: VCallAd Control_ID_mskHasta
  loc_9B404E: FStAdFunc var_88
  loc_9B4051: FLdPr var_88
  loc_9B4054: LateIdLdVar var_98 DispID_15 0
  loc_9B405B: PopAd
  loc_9B405D: FLdPr Me
  loc_9B4060: VCallAd Control_ID_mskHasta
  loc_9B4063: FStAdFunc var_AC
  loc_9B4066: LitI2_Byte &HFF
  loc_9B4068: PopTmpLdAd2 var_A2
  loc_9B406B: FLdZeroAd var_AC
  loc_9B406E: FStAdFunc var_A0
  loc_9B4071: FLdRfVar var_A0
  loc_9B4074: LitStr vbNullString
  loc_9B4077: LitI2_Byte 0
  loc_9B4079: LitI2_Byte 0
  loc_9B407B: FLdRfVar var_98
  loc_9B407E: CStrVarTmp
  loc_9B407F: FStStrNoPop var_9C
  loc_9B4082: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B4087: FStStrNoPop var_A8
  loc_9B408A: FLdPr Me
  loc_9B408D: MemStStrCopy
  loc_9B4091: FFreeStr var_9C = ""
  loc_9B4098: FFreeAd var_88 = "": var_A0 = ""
  loc_9B40A1: FFree1Var var_98 = ""
  loc_9B40A4: FLdPr Me
  loc_9B40A7: VCallAd Control_ID_mskHasta
  loc_9B40AA: FStAdFunc var_B0
  loc_9B40AD: LitNothing
  loc_9B40AF: CastAd
  loc_9B40B2: FStAdFunc var_AC
  loc_9B40B5: FLdRfVar var_AC
  loc_9B40B8: FLdZeroAd var_B0
  loc_9B40BB: FStAdFuncNoPop
  loc_9B40BE: CastAd
  loc_9B40C1: FStAdFunc var_A0
  loc_9B40C4: FLdRfVar var_A0
  loc_9B40C7: FLdPr Me
  loc_9B40CA: MemLdRfVar from_stack_1.global_88
  loc_9B40CD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B40D2: IStI2 arg_C
  loc_9B40D5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B40E0: ExitProcHresult
  loc_9B40E1: FStFPR8 arg_23
End Function

Private Sub cmdCodiBanc_Click() '9FD2A4
  'Data Table: 4C485C
  loc_9FD164: LitI2_Byte &HFF
  loc_9FD166: ImpAdLdRf MemVar_C3D6AC
  loc_9FD169: NewIfNullPr bscBanco
  loc_9FD16C: Call bscBanco.MuestroAnuladosPut(from_stack_1v)
  loc_9FD171: LitVar_Missing var_A4
  loc_9FD174: PopAdLdVar
  loc_9FD175: LitVarI4
  loc_9FD17D: PopAdLdVar
  loc_9FD17E: ImpAdLdRf MemVar_C3D6AC
  loc_9FD181: NewIfNullPr bscBanco
  loc_9FD184: bscBanco.Show from_stack_1, from_stack_2
  loc_9FD189: FLdRfVar var_AC
  loc_9FD18C: FLdRfVar var_A8
  loc_9FD18F: ImpAdLdRf MemVar_C3D6AC
  loc_9FD192: NewIfNullPr bscBanco
  loc_9FD195: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FD19A: FLdPr var_A8
  loc_9FD19D: from_stack_1 = clsbase.RecordCount
  loc_9FD1A2: ILdRf var_AC
  loc_9FD1A5: LitI4 0
  loc_9FD1AA: GtI4
  loc_9FD1AB: FFree1Ad var_A8
  loc_9FD1AE: BranchF loc_9FD289
  loc_9FD1B1: FLdRfVar var_C8
  loc_9FD1B4: FLdRfVar var_B8
  loc_9FD1B7: LitVarStr var_94, "CodiBanc"
  loc_9FD1BC: PopAdLdVar
  loc_9FD1BD: FLdRfVar var_B4
  loc_9FD1C0: FLdRfVar var_B0
  loc_9FD1C3: FLdRfVar var_A8
  loc_9FD1C6: ImpAdLdRf MemVar_C3D6AC
  loc_9FD1C9: NewIfNullPr bscBanco
  loc_9FD1CC: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FD1D1: FLdPr var_A8
  loc_9FD1D4: from_stack_1v = clsbase.RsFrmGet()
  loc_9FD1D9: FLdPr var_B0
  loc_9FD1DC:  = Me.Fields
  loc_9FD1E1: FLdPr var_B4
  loc_9FD1E4: from_stack_2 = Me.Item(from_stack_1)
  loc_9FD1E9: FLdPr var_B8
  loc_9FD1EC:  = Me.Value
  loc_9FD1F1: FLdRfVar var_C8
  loc_9FD1F4: CStrVarTmp
  loc_9FD1F5: CVarStr var_D8
  loc_9FD1F8: PopAdLdVar
  loc_9FD1F9: FLdPr Me
  loc_9FD1FC: VCallAd Control_ID_CodiBancMsk
  loc_9FD1FF: FStAdFunc var_DC
  loc_9FD202: FLdPr var_DC
  loc_9FD205: LateIdSt
  loc_9FD20A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FD217: FFreeVar var_C8 = ""
  loc_9FD21E: FLdRfVar var_C8
  loc_9FD221: FLdRfVar var_B8
  loc_9FD224: LitVarStr var_94, "DetaBanc"
  loc_9FD229: PopAdLdVar
  loc_9FD22A: FLdRfVar var_B4
  loc_9FD22D: FLdRfVar var_B0
  loc_9FD230: FLdRfVar var_A8
  loc_9FD233: ImpAdLdRf MemVar_C3D6AC
  loc_9FD236: NewIfNullPr bscBanco
  loc_9FD239: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FD23E: FLdPr var_A8
  loc_9FD241: from_stack_1v = clsbase.RsFrmGet()
  loc_9FD246: FLdPr var_B0
  loc_9FD249:  = Me.Fields
  loc_9FD24E: FLdPr var_B4
  loc_9FD251: from_stack_2 = Me.Item(from_stack_1)
  loc_9FD256: FLdPr var_B8
  loc_9FD259:  = Me.Value
  loc_9FD25E: FLdRfVar var_C8
  loc_9FD261: CStrVarTmp
  loc_9FD262: FStStrNoPop var_E0
  loc_9FD265: FLdPr Me
  loc_9FD268: VCallAd Control_ID_DetaBancLbl
  loc_9FD26B: FStAdFunc var_DC
  loc_9FD26E: FLdPr var_DC
  loc_9FD271: Me.Caption = from_stack_1
  loc_9FD276: FFree1Str var_E0
  loc_9FD279: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FD286: FFree1Var var_C8 = ""
  loc_9FD289: FLdPr Me
  loc_9FD28C: VCallAd Control_ID_mskDesde
  loc_9FD28F: FStAdFunc var_A8
  loc_9FD292: FLdPr var_A8
  loc_9FD295: LateIdCall
  loc_9FD29D: FFree1Ad var_A8
  loc_9FD2A0: ExitProcHresult
  loc_9FD2A1: FLdFPR8 cmdCodiBanc_ClickCA
End Sub

Private Sub cmdCalDesde_Click() '97E308
  'Data Table: 4C485C
  loc_97E2D4: LitVar_Missing var_A4
  loc_97E2D7: PopAdLdVar
  loc_97E2D8: LitVarI4
  loc_97E2E0: PopAdLdVar
  loc_97E2E1: ImpAdLdRf MemVar_C3D9A8
  loc_97E2E4: NewIfNullPr frmCalendario
  loc_97E2E7: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E2EC: ImpAdLdRf MemVar_C3D038
  loc_97E2EF: CDargRef
  loc_97E2F3: FLdPr Me
  loc_97E2F6: VCallAd Control_ID_mskDesde
  loc_97E2F9: FStAdFunc var_A8
  loc_97E2FC: FLdPr var_A8
  loc_97E2FF: LateIdSt
  loc_97E304: FFree1Ad var_A8
  loc_97E307: ExitProcHresult
End Sub

Private Sub Form_Load() 'A0C648
  'Data Table: 4C485C
  loc_A0C4EC: LitI2_Byte &HFF
  loc_A0C4EE: ImpAdStI2 MemVar_C3D840
  loc_A0C4F1: ILdRf Me
  loc_A0C4F4: CastAd
  loc_A0C4F7: FStAdFunc var_8C
  loc_A0C4FA: FLdRfVar var_8C
  loc_A0C4FD: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A0C502: FFree1Ad var_8C
  loc_A0C505: FLdRfVar var_88
  loc_A0C508: NewIfNullAd
  loc_A0C50B: FStAd var_90 
  loc_A0C50F: LitStr "SELECT * FROM infogov.entereca ORDER BY CodiEnre"
  loc_A0C512: FLdPr var_90
  loc_A0C515: Call clsentereca.RedefineRS(from_stack_1v)
  loc_A0C51A: FLdPr Me
  loc_A0C51D: VCallAd Control_ID_CodiEnreCbo
  loc_A0C520: FStAdFunc var_8C
  loc_A0C523: FLdPr var_8C
  loc_A0C526: Me.Clear
  loc_A0C52B: FFree1Ad var_8C
  loc_A0C52E: LitVar_Missing var_A0
  loc_A0C531: PopAdLdVar
  loc_A0C532: LitStr "TODOS"
  loc_A0C535: FLdPr Me
  loc_A0C538: VCallAd Control_ID_CodiEnreCbo
  loc_A0C53B: FStAdFunc var_8C
  loc_A0C53E: FLdPr var_8C
  loc_A0C541: Me.AddItem from_stack_1, from_stack_2
  loc_A0C546: FFree1Ad var_8C
  loc_A0C549: FLdRfVar var_A2
  loc_A0C54C: FLdPr var_90
  loc_A0C54F: from_stack_1 = clsentereca.EOF
  loc_A0C554: FLdI2 var_A2
  loc_A0C557: NotI4
  loc_A0C558: BranchF loc_A0C639
  loc_A0C55B: LitVar_Missing var_D0
  loc_A0C55E: PopAdLdVar
  loc_A0C55F: FLdRfVar var_BC
  loc_A0C562: FLdRfVar var_AC
  loc_A0C565: LitVarStr var_A0, "DetaEnre"
  loc_A0C56A: PopAdLdVar
  loc_A0C56B: FLdRfVar var_A8
  loc_A0C56E: FLdRfVar var_8C
  loc_A0C571: FLdPr var_90
  loc_A0C574: from_stack_1v = clsentereca.RsFrmGet()
  loc_A0C579: FLdPr var_8C
  loc_A0C57C:  = Me.Fields
  loc_A0C581: FLdPr var_A8
  loc_A0C584: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C589: FLdPr var_AC
  loc_A0C58C:  = Me.Value
  loc_A0C591: FLdRfVar var_BC
  loc_A0C594: CStrVarTmp
  loc_A0C595: FStStrNoPop var_C0
  loc_A0C598: FLdPr Me
  loc_A0C59B: VCallAd Control_ID_CodiEnreCbo
  loc_A0C59E: FStAdFunc var_D4
  loc_A0C5A1: FLdPr var_D4
  loc_A0C5A4: Me.AddItem from_stack_1, from_stack_2
  loc_A0C5A9: FFree1Str var_C0
  loc_A0C5AC: FFreeAd var_8C = "": var_A8 = "": var_AC = ""
  loc_A0C5B7: FFree1Var var_BC = ""
  loc_A0C5BA: FLdRfVar var_BC
  loc_A0C5BD: FLdRfVar var_AC
  loc_A0C5C0: LitVarStr var_A0, "CodiEnre"
  loc_A0C5C5: PopAdLdVar
  loc_A0C5C6: FLdRfVar var_A8
  loc_A0C5C9: FLdRfVar var_8C
  loc_A0C5CC: FLdPr var_90
  loc_A0C5CF: from_stack_1v = clsentereca.RsFrmGet()
  loc_A0C5D4: FLdPr var_8C
  loc_A0C5D7:  = Me.Fields
  loc_A0C5DC: FLdPr var_A8
  loc_A0C5DF: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C5E4: FLdPr var_AC
  loc_A0C5E7:  = Me.Value
  loc_A0C5EC: FLdRfVar var_BC
  loc_A0C5EF: CI4Var
  loc_A0C5F1: FLdRfVar var_A2
  loc_A0C5F4: FLdPr Me
  loc_A0C5F7: VCallAd Control_ID_CodiEnreCbo
  loc_A0C5FA: FStAdFunc var_D4
  loc_A0C5FD: FLdPr var_D4
  loc_A0C600:  = Me.NewIndex
  loc_A0C605: FLdI2 var_A2
  loc_A0C608: FLdPr Me
  loc_A0C60B: VCallAd Control_ID_CodiEnreCbo
  loc_A0C60E: FStAdFunc var_D8
  loc_A0C611: FLdPr var_D8
  loc_A0C614: Me.ItemData = from_stack_1
  loc_A0C619: FFreeAd var_8C = "": var_A8 = "": var_D4 = "": var_AC = ""
  loc_A0C626: FFree1Var var_BC = ""
  loc_A0C629: LitI2_Byte 1
  loc_A0C62B: PopTmpLdAd2 var_A2
  loc_A0C62E: FLdPr var_90
  loc_A0C631: Call clsentereca.Move(from_stack_1v)
  loc_A0C636: Branch loc_A0C549
  loc_A0C639: LitNothing
  loc_A0C63B: FStAd var_90 
  loc_A0C63F: Call cmdNueva_Click()
  loc_A0C644: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9621B8
  'Data Table: 4C485C
  loc_9621A0: FLdPr Me
  loc_9621A3: VCallAd Control_ID_wbbReporte
  loc_9621A6: FStAdFunc var_88
  loc_9621A9: FLdRfVar var_88
  loc_9621AC: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9621B1: FFree1Ad var_88
  loc_9621B4: ExitProcHresult
End Sub

Public Function htmFileGet() '4C5E80
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4C5E8F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4C5E9E
  htmFile = Value
End Sub

Public Function iBancoGet() '4C5EAD
  iBancoGet = iBanco
End Function

Public Sub iBancoPut(Value) '4C5EBC
  iBanco = Value
End Sub

Public Function bLogosGet() '4C5ECB
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4C5EDA
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4C5EE9
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C5EF8
  bGenerado = Value
End Sub

Public Function bSumarGet() '4C5F07
  bSumarGet = bSumar
End Function

Public Sub bSumarPut(Value) '4C5F16
  bSumar = Value
End Sub

Public Sub HabilitarCriterio() '9E7254
  'Data Table: 4C485C
  loc_9E7160: LitI4 0
  loc_9E7165: LitI4 &HC
  loc_9E716A: FLdRfVar var_88
  loc_9E716D: Redim
  loc_9E7177: FLdPr Me
  loc_9E717A: VCallAd Control_ID_CodiBancMsk
  loc_9E717D: CVarAd
  loc_9E7181: ParmAry1St
  loc_9E7187: FLdPr Me
  loc_9E718A: VCallAd Control_ID_cmdCodiBanc
  loc_9E718D: CVarAd
  loc_9E7191: ParmAry1St
  loc_9E7197: FLdPr Me
  loc_9E719A: VCallAd Control_ID_mskDesde
  loc_9E719D: CVarAd
  loc_9E71A1: ParmAry1St
  loc_9E71A7: FLdPr Me
  loc_9E71AA: VCallAd Control_ID_cmdCalDesde
  loc_9E71AD: CVarAd
  loc_9E71B1: ParmAry1St
  loc_9E71B7: FLdPr Me
  loc_9E71BA: VCallAd Control_ID_mskHasta
  loc_9E71BD: CVarAd
  loc_9E71C1: ParmAry1St
  loc_9E71C7: FLdPr Me
  loc_9E71CA: VCallAd Control_ID_cmdCalHasta
  loc_9E71CD: CVarAd
  loc_9E71D1: ParmAry1St
  loc_9E71D7: FLdPr Me
  loc_9E71DA: VCallAd Control_ID_mskNumeMoba
  loc_9E71DD: CVarAd
  loc_9E71E1: ParmAry1St
  loc_9E71E7: FLdPr Me
  loc_9E71EA: VCallAd Control_ID_CodiEnreCbo
  loc_9E71ED: CVarAd
  loc_9E71F1: ParmAry1St
  loc_9E71F7: FLdPr Me
  loc_9E71FA: VCallAd Control_ID_optCodiBanc
  loc_9E71FD: CVarAd
  loc_9E7201: ParmAry1St
  loc_9E7207: FLdPr Me
  loc_9E720A: VCallAd Control_ID_optCodiEnre
  loc_9E720D: CVarAd
  loc_9E7211: ParmAry1St
  loc_9E7217: FLdPr Me
  loc_9E721A: VCallAd Control_ID_optFechMoba
  loc_9E721D: CVarAd
  loc_9E7221: ParmAry1St
  loc_9E7227: FLdPr Me
  loc_9E722A: VCallAd Control_ID_optFeinMoba
  loc_9E722D: CVarAd
  loc_9E7231: ParmAry1St
  loc_9E7237: FLdPr Me
  loc_9E723A: VCallAd Control_ID_chkSintetico
  loc_9E723D: CVarAd
  loc_9E7241: ParmAry1St
  loc_9E7247: FLdRfVar var_88
  loc_9E724A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E724F: FLdRfVar var_88
  loc_9E7252: Erase
  loc_9E7253: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B6FE98
  'Data Table: 4C485C
  loc_B6F304: OnErrorGoto loc_B6FE35
  loc_B6F307: FLdPr Me
  loc_B6F30A: MemLdI2 bGenerado
  loc_B6F30D: BranchF loc_B6F311
  loc_B6F310: ExitProcHresult
  loc_B6F311: LitVarStr var_B0, "Generando reporte..."
  loc_B6F316: PopAdLdVar
  loc_B6F317: FLdPr Me
  loc_B6F31A: VCallAd Control_ID_statusBar
  loc_B6F31D: FStAdFunc var_C4
  loc_B6F320: FLdPr var_C4
  loc_B6F323: LateIdSt
  loc_B6F328: FFree1Ad var_C4
  loc_B6F32B: LitI4 &HB
  loc_B6F330: CI2I4
  loc_B6F331: FLdPr Me
  loc_B6F334: Me.MousePointer = from_stack_1
  loc_B6F339: LitI2_Byte 0
  loc_B6F33B: PopTmpLdAd2 var_C6
  loc_B6F33E: from_stack_2v = CodiBancMsk_UnknownEvent_8(from_stack_1v)
  loc_B6F343: FLdPr Me
  loc_B6F346: MemLdStr global_88
  loc_B6F349: LitStr vbNullString
  loc_B6F34C: NeStr
  loc_B6F34E: BranchF loc_B6F354
  loc_B6F351: Branch loc_B6FE0C
  loc_B6F354: LitI2_Byte 0
  loc_B6F356: PopTmpLdAd2 var_C6
  loc_B6F359: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B6F35E: FLdPr Me
  loc_B6F361: MemLdStr global_88
  loc_B6F364: LitStr vbNullString
  loc_B6F367: NeStr
  loc_B6F369: BranchF loc_B6F36F
  loc_B6F36C: Branch loc_B6FE0C
  loc_B6F36F: LitI2_Byte 0
  loc_B6F371: PopTmpLdAd2 var_C6
  loc_B6F374: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B6F379: FLdPr Me
  loc_B6F37C: MemLdStr global_88
  loc_B6F37F: LitStr vbNullString
  loc_B6F382: NeStr
  loc_B6F384: BranchF loc_B6F38A
  loc_B6F387: Branch loc_B6FE0C
  loc_B6F38A: FLdPr Me
  loc_B6F38D: VCallAd Control_ID_CodiBancMsk
  loc_B6F390: FStAdFunc var_C4
  loc_B6F393: FLdPr var_C4
  loc_B6F396: LateIdLdVar var_D8 DispID_22 0
  loc_B6F39D: PopAd
  loc_B6F39F: FLdPr Me
  loc_B6F3A2: VCallAd Control_ID_CodiBancMsk
  loc_B6F3A5: FStAdFunc var_E0
  loc_B6F3A8: FLdPr var_E0
  loc_B6F3AB: LateIdLdVar var_F0 DispID_22 0
  loc_B6F3B2: PopAd
  loc_B6F3B4: LitVarStr var_C0, vbNullString
  loc_B6F3B9: FStVarCopyObj var_114
  loc_B6F3BC: FLdRfVar var_114
  loc_B6F3BF: LitStr " AND mb.CodiBanc = "
  loc_B6F3C2: FLdRfVar var_F0
  loc_B6F3C5: CStrVarTmp
  loc_B6F3C6: FStStrNoPop var_F4
  loc_B6F3C9: ConcatStr
  loc_B6F3CA: CVarStr var_104
  loc_B6F3CD: FLdRfVar var_D8
  loc_B6F3D0: CStrVarTmp
  loc_B6F3D1: FStStrNoPop var_DC
  loc_B6F3D4: LitStr vbNullString
  loc_B6F3D7: NeStr
  loc_B6F3D9: CVarBoolI2 var_B0
  loc_B6F3DD: FLdRfVar var_124
  loc_B6F3E0: ImpAdCallFPR4  = IIf(, , )
  loc_B6F3E5: FLdRfVar var_124
  loc_B6F3E8: CStrVarTmp
  loc_B6F3E9: FStStr var_88
  loc_B6F3EC: FFreeStr var_DC = ""
  loc_B6F3F3: FFreeAd var_C4 = ""
  loc_B6F3FA: FFreeVar var_D8 = "": var_F0 = "": var_B0 = "": var_104 = "": var_114 = ""
  loc_B6F409: FLdRfVar var_C6
  loc_B6F40C: FLdPr Me
  loc_B6F40F: VCallAd Control_ID_optFechMoba
  loc_B6F412: FStAdFunc var_C4
  loc_B6F415: FLdPr var_C4
  loc_B6F418:  = Me.Value
  loc_B6F41D: FLdI2 var_C6
  loc_B6F420: LitI2_Byte &HFF
  loc_B6F422: EqI2
  loc_B6F423: FFree1Ad var_C4
  loc_B6F426: BranchF loc_B6F6CC
  loc_B6F429: FLdPr Me
  loc_B6F42C: VCallAd Control_ID_mskDesde
  loc_B6F42F: FStAdFunc var_C4
  loc_B6F432: FLdPr var_C4
  loc_B6F435: LateIdLdVar var_D8 DispID_22 0
  loc_B6F43C: PopAd
  loc_B6F43E: FLdPr Me
  loc_B6F441: VCallAd Control_ID_mskDesde
  loc_B6F444: FStAdFunc var_E0
  loc_B6F447: FLdPr var_E0
  loc_B6F44A: LateIdLdVar var_F0 DispID_15 0
  loc_B6F451: PopAd
  loc_B6F453: LitI4 1
  loc_B6F458: LitI4 1
  loc_B6F45D: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B6F462: FStVarCopyObj var_114
  loc_B6F465: FLdRfVar var_114
  loc_B6F468: FLdRfVar var_F0
  loc_B6F46B: CStrVarTmp
  loc_B6F46C: CVarStr var_104
  loc_B6F46F: ImpAdCallI2 Format$(, )
  loc_B6F474: FStStr var_158
  loc_B6F477: LitVarStr var_134, vbNullString
  loc_B6F47C: FStVarCopyObj var_144
  loc_B6F47F: FLdRfVar var_144
  loc_B6F482: LitStr " AND FechMoba >= "
  loc_B6F485: FLdZeroAd var_158
  loc_B6F488: FStStrNoPop var_F4
  loc_B6F48B: ConcatStr
  loc_B6F48C: CVarStr var_124
  loc_B6F48F: FLdRfVar var_D8
  loc_B6F492: CStrVarTmp
  loc_B6F493: FStStrNoPop var_DC
  loc_B6F496: LitStr vbNullString
  loc_B6F499: NeStr
  loc_B6F49B: CVarBoolI2 var_C0
  loc_B6F49F: FLdRfVar var_154
  loc_B6F4A2: ImpAdCallFPR4  = IIf(, , )
  loc_B6F4A7: FLdRfVar var_154
  loc_B6F4AA: CStrVarTmp
  loc_B6F4AB: FStStr var_8C
  loc_B6F4AE: FFreeStr var_DC = "": var_F4 = ""
  loc_B6F4B7: FFreeAd var_C4 = ""
  loc_B6F4BE: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_C0 = "": var_124 = "": var_144 = ""
  loc_B6F4D1: FLdPr Me
  loc_B6F4D4: VCallAd Control_ID_mskDesde
  loc_B6F4D7: FStAdFunc var_C4
  loc_B6F4DA: FLdPr var_C4
  loc_B6F4DD: LateIdLdVar var_D8 DispID_22 0
  loc_B6F4E4: PopAd
  loc_B6F4E6: FLdPr Me
  loc_B6F4E9: VCallAd Control_ID_mskDesde
  loc_B6F4EC: FStAdFunc var_E0
  loc_B6F4EF: FLdPr var_E0
  loc_B6F4F2: LateIdLdVar var_F0 DispID_15 0
  loc_B6F4F9: PopAd
  loc_B6F4FB: LitI4 1
  loc_B6F500: LitI4 1
  loc_B6F505: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B6F50A: FStVarCopyObj var_114
  loc_B6F50D: FLdRfVar var_114
  loc_B6F510: FLdRfVar var_F0
  loc_B6F513: CStrVarTmp
  loc_B6F514: CVarStr var_104
  loc_B6F517: ImpAdCallI2 Format$(, )
  loc_B6F51C: FStStr var_158
  loc_B6F51F: LitVarStr var_134, vbNullString
  loc_B6F524: FStVarCopyObj var_144
  loc_B6F527: FLdRfVar var_144
  loc_B6F52A: LitStr " AND mb2.FechMoba >= "
  loc_B6F52D: FLdZeroAd var_158
  loc_B6F530: FStStrNoPop var_F4
  loc_B6F533: ConcatStr
  loc_B6F534: CVarStr var_124
  loc_B6F537: FLdRfVar var_D8
  loc_B6F53A: CStrVarTmp
  loc_B6F53B: FStStrNoPop var_DC
  loc_B6F53E: LitStr vbNullString
  loc_B6F541: NeStr
  loc_B6F543: CVarBoolI2 var_C0
  loc_B6F547: FLdRfVar var_154
  loc_B6F54A: ImpAdCallFPR4  = IIf(, , )
  loc_B6F54F: FLdRfVar var_154
  loc_B6F552: CStrVarTmp
  loc_B6F553: FStStr var_90
  loc_B6F556: FFreeStr var_DC = "": var_F4 = ""
  loc_B6F55F: FFreeAd var_C4 = ""
  loc_B6F566: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_C0 = "": var_124 = "": var_144 = ""
  loc_B6F579: FLdPr Me
  loc_B6F57C: VCallAd Control_ID_mskHasta
  loc_B6F57F: FStAdFunc var_C4
  loc_B6F582: FLdPr var_C4
  loc_B6F585: LateIdLdVar var_D8 DispID_22 0
  loc_B6F58C: PopAd
  loc_B6F58E: FLdPr Me
  loc_B6F591: VCallAd Control_ID_mskHasta
  loc_B6F594: FStAdFunc var_E0
  loc_B6F597: FLdPr var_E0
  loc_B6F59A: LateIdLdVar var_F0 DispID_15 0
  loc_B6F5A1: PopAd
  loc_B6F5A3: LitI4 1
  loc_B6F5A8: LitI4 1
  loc_B6F5AD: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B6F5B2: FStVarCopyObj var_114
  loc_B6F5B5: FLdRfVar var_114
  loc_B6F5B8: FLdRfVar var_F0
  loc_B6F5BB: CStrVarTmp
  loc_B6F5BC: CVarStr var_104
  loc_B6F5BF: ImpAdCallI2 Format$(, )
  loc_B6F5C4: FStStr var_158
  loc_B6F5C7: LitVarStr var_134, vbNullString
  loc_B6F5CC: FStVarCopyObj var_144
  loc_B6F5CF: FLdRfVar var_144
  loc_B6F5D2: LitStr " AND FechMoba <= "
  loc_B6F5D5: FLdZeroAd var_158
  loc_B6F5D8: FStStrNoPop var_F4
  loc_B6F5DB: ConcatStr
  loc_B6F5DC: CVarStr var_124
  loc_B6F5DF: FLdRfVar var_D8
  loc_B6F5E2: CStrVarTmp
  loc_B6F5E3: FStStrNoPop var_DC
  loc_B6F5E6: LitStr vbNullString
  loc_B6F5E9: NeStr
  loc_B6F5EB: CVarBoolI2 var_C0
  loc_B6F5EF: FLdRfVar var_154
  loc_B6F5F2: ImpAdCallFPR4  = IIf(, , )
  loc_B6F5F7: FLdRfVar var_154
  loc_B6F5FA: CStrVarTmp
  loc_B6F5FB: FStStr var_94
  loc_B6F5FE: FFreeStr var_DC = "": var_F4 = ""
  loc_B6F607: FFreeAd var_C4 = ""
  loc_B6F60E: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_C0 = "": var_124 = "": var_144 = ""
  loc_B6F621: FLdPr Me
  loc_B6F624: VCallAd Control_ID_mskHasta
  loc_B6F627: FStAdFunc var_C4
  loc_B6F62A: FLdPr var_C4
  loc_B6F62D: LateIdLdVar var_D8 DispID_22 0
  loc_B6F634: PopAd
  loc_B6F636: FLdPr Me
  loc_B6F639: VCallAd Control_ID_mskHasta
  loc_B6F63C: FStAdFunc var_E0
  loc_B6F63F: FLdPr var_E0
  loc_B6F642: LateIdLdVar var_F0 DispID_15 0
  loc_B6F649: PopAd
  loc_B6F64B: LitI4 1
  loc_B6F650: LitI4 1
  loc_B6F655: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B6F65A: FStVarCopyObj var_114
  loc_B6F65D: FLdRfVar var_114
  loc_B6F660: FLdRfVar var_F0
  loc_B6F663: CStrVarTmp
  loc_B6F664: CVarStr var_104
  loc_B6F667: ImpAdCallI2 Format$(, )
  loc_B6F66C: FStStr var_158
  loc_B6F66F: LitVarStr var_134, vbNullString
  loc_B6F674: FStVarCopyObj var_144
  loc_B6F677: FLdRfVar var_144
  loc_B6F67A: LitStr " AND mb2.FechMoba <= "
  loc_B6F67D: FLdZeroAd var_158
  loc_B6F680: FStStrNoPop var_F4
  loc_B6F683: ConcatStr
  loc_B6F684: CVarStr var_124
  loc_B6F687: FLdRfVar var_D8
  loc_B6F68A: CStrVarTmp
  loc_B6F68B: FStStrNoPop var_DC
  loc_B6F68E: LitStr vbNullString
  loc_B6F691: NeStr
  loc_B6F693: CVarBoolI2 var_C0
  loc_B6F697: FLdRfVar var_154
  loc_B6F69A: ImpAdCallFPR4  = IIf(, , )
  loc_B6F69F: FLdRfVar var_154
  loc_B6F6A2: CStrVarTmp
  loc_B6F6A3: FStStr var_98
  loc_B6F6A6: FFreeStr var_DC = "": var_F4 = ""
  loc_B6F6AF: FFreeAd var_C4 = ""
  loc_B6F6B6: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_C0 = "": var_124 = "": var_144 = ""
  loc_B6F6C9: Branch loc_B6F98C
  loc_B6F6CC: FLdRfVar var_C6
  loc_B6F6CF: FLdPr Me
  loc_B6F6D2: VCallAd Control_ID_optFeinMoba
  loc_B6F6D5: FStAdFunc var_C4
  loc_B6F6D8: FLdPr var_C4
  loc_B6F6DB:  = Me.Value
  loc_B6F6E0: FLdI2 var_C6
  loc_B6F6E3: LitI2_Byte &HFF
  loc_B6F6E5: EqI2
  loc_B6F6E6: FFree1Ad var_C4
  loc_B6F6E9: BranchF loc_B6F98C
  loc_B6F6EC: FLdPr Me
  loc_B6F6EF: VCallAd Control_ID_mskDesde
  loc_B6F6F2: FStAdFunc var_C4
  loc_B6F6F5: FLdPr var_C4
  loc_B6F6F8: LateIdLdVar var_D8 DispID_22 0
  loc_B6F6FF: PopAd
  loc_B6F701: FLdPr Me
  loc_B6F704: VCallAd Control_ID_mskDesde
  loc_B6F707: FStAdFunc var_E0
  loc_B6F70A: FLdPr var_E0
  loc_B6F70D: LateIdLdVar var_F0 DispID_15 0
  loc_B6F714: PopAd
  loc_B6F716: LitI4 1
  loc_B6F71B: LitI4 1
  loc_B6F720: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B6F725: FStVarCopyObj var_114
  loc_B6F728: FLdRfVar var_114
  loc_B6F72B: FLdRfVar var_F0
  loc_B6F72E: CStrVarTmp
  loc_B6F72F: CVarStr var_104
  loc_B6F732: ImpAdCallI2 Format$(, )
  loc_B6F737: FStStr var_158
  loc_B6F73A: LitVarStr var_134, vbNullString
  loc_B6F73F: FStVarCopyObj var_144
  loc_B6F742: FLdRfVar var_144
  loc_B6F745: LitStr " AND FeinMoba >= "
  loc_B6F748: FLdZeroAd var_158
  loc_B6F74B: FStStrNoPop var_F4
  loc_B6F74E: ConcatStr
  loc_B6F74F: CVarStr var_124
  loc_B6F752: FLdRfVar var_D8
  loc_B6F755: CStrVarTmp
  loc_B6F756: FStStrNoPop var_DC
  loc_B6F759: LitStr vbNullString
  loc_B6F75C: NeStr
  loc_B6F75E: CVarBoolI2 var_C0
  loc_B6F762: FLdRfVar var_154
  loc_B6F765: ImpAdCallFPR4  = IIf(, , )
  loc_B6F76A: FLdRfVar var_154
  loc_B6F76D: CStrVarTmp
  loc_B6F76E: FStStr var_8C
  loc_B6F771: FFreeStr var_DC = "": var_F4 = ""
  loc_B6F77A: FFreeAd var_C4 = ""
  loc_B6F781: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_C0 = "": var_124 = "": var_144 = ""
  loc_B6F794: FLdPr Me
  loc_B6F797: VCallAd Control_ID_mskDesde
  loc_B6F79A: FStAdFunc var_C4
  loc_B6F79D: FLdPr var_C4
  loc_B6F7A0: LateIdLdVar var_D8 DispID_22 0
  loc_B6F7A7: PopAd
  loc_B6F7A9: FLdPr Me
  loc_B6F7AC: VCallAd Control_ID_mskDesde
  loc_B6F7AF: FStAdFunc var_E0
  loc_B6F7B2: FLdPr var_E0
  loc_B6F7B5: LateIdLdVar var_F0 DispID_15 0
  loc_B6F7BC: PopAd
  loc_B6F7BE: LitI4 1
  loc_B6F7C3: LitI4 1
  loc_B6F7C8: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B6F7CD: FStVarCopyObj var_114
  loc_B6F7D0: FLdRfVar var_114
  loc_B6F7D3: FLdRfVar var_F0
  loc_B6F7D6: CStrVarTmp
  loc_B6F7D7: CVarStr var_104
  loc_B6F7DA: ImpAdCallI2 Format$(, )
  loc_B6F7DF: FStStr var_158
  loc_B6F7E2: LitVarStr var_134, vbNullString
  loc_B6F7E7: FStVarCopyObj var_144
  loc_B6F7EA: FLdRfVar var_144
  loc_B6F7ED: LitStr " AND mb2.FeinMoba >= "
  loc_B6F7F0: FLdZeroAd var_158
  loc_B6F7F3: FStStrNoPop var_F4
  loc_B6F7F6: ConcatStr
  loc_B6F7F7: CVarStr var_124
  loc_B6F7FA: FLdRfVar var_D8
  loc_B6F7FD: CStrVarTmp
  loc_B6F7FE: FStStrNoPop var_DC
  loc_B6F801: LitStr vbNullString
  loc_B6F804: NeStr
  loc_B6F806: CVarBoolI2 var_C0
  loc_B6F80A: FLdRfVar var_154
  loc_B6F80D: ImpAdCallFPR4  = IIf(, , )
  loc_B6F812: FLdRfVar var_154
  loc_B6F815: CStrVarTmp
  loc_B6F816: FStStr var_90
  loc_B6F819: FFreeStr var_DC = "": var_F4 = ""
  loc_B6F822: FFreeAd var_C4 = ""
  loc_B6F829: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_C0 = "": var_124 = "": var_144 = ""
  loc_B6F83C: FLdPr Me
  loc_B6F83F: VCallAd Control_ID_mskHasta
  loc_B6F842: FStAdFunc var_C4
  loc_B6F845: FLdPr var_C4
  loc_B6F848: LateIdLdVar var_D8 DispID_22 0
  loc_B6F84F: PopAd
  loc_B6F851: FLdPr Me
  loc_B6F854: VCallAd Control_ID_mskHasta
  loc_B6F857: FStAdFunc var_E0
  loc_B6F85A: FLdPr var_E0
  loc_B6F85D: LateIdLdVar var_F0 DispID_15 0
  loc_B6F864: PopAd
  loc_B6F866: LitI4 1
  loc_B6F86B: LitI4 1
  loc_B6F870: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B6F875: FStVarCopyObj var_114
  loc_B6F878: FLdRfVar var_114
  loc_B6F87B: FLdRfVar var_F0
  loc_B6F87E: CStrVarTmp
  loc_B6F87F: CVarStr var_104
  loc_B6F882: ImpAdCallI2 Format$(, )
  loc_B6F887: FStStr var_158
  loc_B6F88A: LitVarStr var_134, vbNullString
  loc_B6F88F: FStVarCopyObj var_144
  loc_B6F892: FLdRfVar var_144
  loc_B6F895: LitStr " AND FeinMoba <= "
  loc_B6F898: FLdZeroAd var_158
  loc_B6F89B: FStStrNoPop var_F4
  loc_B6F89E: ConcatStr
  loc_B6F89F: CVarStr var_124
  loc_B6F8A2: FLdRfVar var_D8
  loc_B6F8A5: CStrVarTmp
  loc_B6F8A6: FStStrNoPop var_DC
  loc_B6F8A9: LitStr vbNullString
  loc_B6F8AC: NeStr
  loc_B6F8AE: CVarBoolI2 var_C0
  loc_B6F8B2: FLdRfVar var_154
  loc_B6F8B5: ImpAdCallFPR4  = IIf(, , )
  loc_B6F8BA: FLdRfVar var_154
  loc_B6F8BD: CStrVarTmp
  loc_B6F8BE: FStStr var_94
  loc_B6F8C1: FFreeStr var_DC = "": var_F4 = ""
  loc_B6F8CA: FFreeAd var_C4 = ""
  loc_B6F8D1: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_C0 = "": var_124 = "": var_144 = ""
  loc_B6F8E4: FLdPr Me
  loc_B6F8E7: VCallAd Control_ID_mskHasta
  loc_B6F8EA: FStAdFunc var_C4
  loc_B6F8ED: FLdPr var_C4
  loc_B6F8F0: LateIdLdVar var_D8 DispID_22 0
  loc_B6F8F7: PopAd
  loc_B6F8F9: FLdPr Me
  loc_B6F8FC: VCallAd Control_ID_mskHasta
  loc_B6F8FF: FStAdFunc var_E0
  loc_B6F902: FLdPr var_E0
  loc_B6F905: LateIdLdVar var_F0 DispID_15 0
  loc_B6F90C: PopAd
  loc_B6F90E: LitI4 1
  loc_B6F913: LitI4 1
  loc_B6F918: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B6F91D: FStVarCopyObj var_114
  loc_B6F920: FLdRfVar var_114
  loc_B6F923: FLdRfVar var_F0
  loc_B6F926: CStrVarTmp
  loc_B6F927: CVarStr var_104
  loc_B6F92A: ImpAdCallI2 Format$(, )
  loc_B6F92F: FStStr var_158
  loc_B6F932: LitVarStr var_134, vbNullString
  loc_B6F937: FStVarCopyObj var_144
  loc_B6F93A: FLdRfVar var_144
  loc_B6F93D: LitStr " AND mb2.FeinMoba <= "
  loc_B6F940: FLdZeroAd var_158
  loc_B6F943: FStStrNoPop var_F4
  loc_B6F946: ConcatStr
  loc_B6F947: CVarStr var_124
  loc_B6F94A: FLdRfVar var_D8
  loc_B6F94D: CStrVarTmp
  loc_B6F94E: FStStrNoPop var_DC
  loc_B6F951: LitStr vbNullString
  loc_B6F954: NeStr
  loc_B6F956: CVarBoolI2 var_C0
  loc_B6F95A: FLdRfVar var_154
  loc_B6F95D: ImpAdCallFPR4  = IIf(, , )
  loc_B6F962: FLdRfVar var_154
  loc_B6F965: CStrVarTmp
  loc_B6F966: FStStr var_98
  loc_B6F969: FFreeStr var_DC = "": var_F4 = ""
  loc_B6F972: FFreeAd var_C4 = ""
  loc_B6F979: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_C0 = "": var_124 = "": var_144 = ""
  loc_B6F98C: FLdPr Me
  loc_B6F98F: VCallAd Control_ID_mskNumeMoba
  loc_B6F992: FStAdFunc var_C4
  loc_B6F995: FLdPr var_C4
  loc_B6F998: LateIdLdVar var_D8 DispID_22 0
  loc_B6F99F: PopAd
  loc_B6F9A1: FLdPr Me
  loc_B6F9A4: VCallAd Control_ID_mskNumeMoba
  loc_B6F9A7: FStAdFunc var_E0
  loc_B6F9AA: FLdPr var_E0
  loc_B6F9AD: LateIdLdVar var_F0 DispID_0 0
  loc_B6F9B4: PopAd
  loc_B6F9B6: LitVarStr var_C0, vbNullString
  loc_B6F9BB: FStVarCopyObj var_114
  loc_B6F9BE: FLdRfVar var_114
  loc_B6F9C1: LitStr " AND NumeMoba = "
  loc_B6F9C4: FLdRfVar var_F0
  loc_B6F9C7: CStrVarTmp
  loc_B6F9C8: FStStrNoPop var_F4
  loc_B6F9CB: ConcatStr
  loc_B6F9CC: CVarStr var_104
  loc_B6F9CF: FLdRfVar var_D8
  loc_B6F9D2: CStrVarTmp
  loc_B6F9D3: FStStrNoPop var_DC
  loc_B6F9D6: LitStr vbNullString
  loc_B6F9D9: NeStr
  loc_B6F9DB: CVarBoolI2 var_B0
  loc_B6F9DF: FLdRfVar var_124
  loc_B6F9E2: ImpAdCallFPR4  = IIf(, , )
  loc_B6F9E7: FLdRfVar var_124
  loc_B6F9EA: CStrVarTmp
  loc_B6F9EB: FStStr var_9C
  loc_B6F9EE: FFreeStr var_DC = ""
  loc_B6F9F5: FFreeAd var_C4 = ""
  loc_B6F9FC: FFreeVar var_D8 = "": var_F0 = "": var_B0 = "": var_104 = "": var_114 = ""
  loc_B6FA0B: FLdRfVar var_C6
  loc_B6FA0E: FLdPr Me
  loc_B6FA11: VCallAd Control_ID_CodiEnreCbo
  loc_B6FA14: FStAdFunc var_C4
  loc_B6FA17: FLdPr var_C4
  loc_B6FA1A:  = Me.ListIndex
  loc_B6FA1F: FLdRfVar var_15A
  loc_B6FA22: FLdPr Me
  loc_B6FA25: VCallAd Control_ID_CodiEnreCbo
  loc_B6FA28: FStAdFunc var_E0
  loc_B6FA2B: FLdPr var_E0
  loc_B6FA2E:  = Me.ListIndex
  loc_B6FA33: FLdRfVar var_164
  loc_B6FA36: FLdI2 var_15A
  loc_B6FA39: FLdPr Me
  loc_B6FA3C: VCallAd Control_ID_CodiEnreCbo
  loc_B6FA3F: FStAdFunc var_160
  loc_B6FA42: FLdPr var_160
  loc_B6FA45:  = Me.ItemData
  loc_B6FA4A: LitVarStr var_C0, vbNullString
  loc_B6FA4F: FStVarCopyObj var_F0
  loc_B6FA52: FLdRfVar var_F0
  loc_B6FA55: LitStr " AND mb.CodiEnre = "
  loc_B6FA58: ILdRf var_164
  loc_B6FA5B: CStrI4
  loc_B6FA5D: FStStrNoPop var_DC
  loc_B6FA60: ConcatStr
  loc_B6FA61: CVarStr var_D8
  loc_B6FA64: FLdI2 var_C6
  loc_B6FA67: LitI2_Byte 0
  loc_B6FA69: GtI2
  loc_B6FA6A: CVarBoolI2 var_B0
  loc_B6FA6E: FLdRfVar var_104
  loc_B6FA71: ImpAdCallFPR4  = IIf(, , )
  loc_B6FA76: FLdRfVar var_104
  loc_B6FA79: CStrVarTmp
  loc_B6FA7A: FStStr var_A0
  loc_B6FA7D: FFree1Str var_DC
  loc_B6FA80: FFreeAd var_C4 = "": var_E0 = ""
  loc_B6FA89: FFreeVar var_B0 = "": var_D8 = "": var_F0 = ""
  loc_B6FA94: FLdPr Me
  loc_B6FA97: MemLdRfVar from_stack_1.global_76
  loc_B6FA9A: NewIfNullAd
  loc_B6FA9D: FStAd var_168 
  loc_B6FAA1: FLdRfVar var_C6
  loc_B6FAA4: FLdPr Me
  loc_B6FAA7: VCallAd Control_ID_optCodiBanc
  loc_B6FAAA: FStAdFunc var_C4
  loc_B6FAAD: FLdPr var_C4
  loc_B6FAB0:  = Me.Value
  loc_B6FAB5: FLdI2 var_C6
  loc_B6FAB8: LitI2_Byte &HFF
  loc_B6FABA: EqI2
  loc_B6FABB: FFree1Ad var_C4
  loc_B6FABE: BranchF loc_B6FC05
  loc_B6FAC1: LitStr "SELECT mb.*, DetaBanc, NumeBanc, DetaEnre, DetaTimb, DebeMoba-HabeMoba ImpoMoba"
  loc_B6FAC4: LitStr ", (SELECT SUM(DebeMoba)-SUM(HabeMoba) FROM movibanco mb2 WHERE mb2.PeriInfo = mb.PeriInfo AND mb2.CodiBanc = mb.CodiBanc AND mb2.CodiTimb IN (5,6)"
  loc_B6FAC7: ConcatStr
  loc_B6FAC8: FStStrNoPop var_DC
  loc_B6FACB: ILdRf var_90
  loc_B6FACE: ConcatStr
  loc_B6FACF: FStStrNoPop var_F4
  loc_B6FAD2: ILdRf var_98
  loc_B6FAD5: ConcatStr
  loc_B6FAD6: FStStrNoPop var_158
  loc_B6FAD9: LitStr ") TotaImpo"
  loc_B6FADC: ConcatStr
  loc_B6FADD: FStStrNoPop var_16C
  loc_B6FAE0: LitStr ", (SELECT SUM(ComiMoba) FROM movibanco mb2 WHERE mb2.PeriInfo = mb.PeriInfo AND mb2.CodiBanc = mb.CodiBanc AND mb2.CodiTimb = mb.CodiTimb"
  loc_B6FAE3: ConcatStr
  loc_B6FAE4: FStStrNoPop var_170
  loc_B6FAE7: ILdRf var_90
  loc_B6FAEA: ConcatStr
  loc_B6FAEB: FStStrNoPop var_174
  loc_B6FAEE: ILdRf var_98
  loc_B6FAF1: ConcatStr
  loc_B6FAF2: FStStrNoPop var_178
  loc_B6FAF5: LitStr ") TotaComi"
  loc_B6FAF8: ConcatStr
  loc_B6FAF9: FStStrNoPop var_17C
  loc_B6FAFC: LitStr ", (SELECT SUM(IvaMoba) FROM movibanco mb2 WHERE mb2.PeriInfo = mb.PeriInfo AND mb2.CodiBanc = mb.CodiBanc AND mb2.CodiTimb = mb.CodiTimb"
  loc_B6FAFF: ConcatStr
  loc_B6FB00: FStStrNoPop var_180
  loc_B6FB03: ILdRf var_90
  loc_B6FB06: ConcatStr
  loc_B6FB07: FStStrNoPop var_184
  loc_B6FB0A: ILdRf var_98
  loc_B6FB0D: ConcatStr
  loc_B6FB0E: FStStrNoPop var_188
  loc_B6FB11: LitStr ") TotaIva"
  loc_B6FB14: ConcatStr
  loc_B6FB15: FStStrNoPop var_18C
  loc_B6FB18: LitStr " FROM movibanco mb"
  loc_B6FB1B: ConcatStr
  loc_B6FB1C: FStStrNoPop var_190
  loc_B6FB1F: LitStr " INNER JOIN banco b ON b.PeriInfo = mb.PeriInfo AND b.CodiBanc = mb.CodiBanc"
  loc_B6FB22: ConcatStr
  loc_B6FB23: FStStrNoPop var_194
  loc_B6FB26: LitStr " INNER JOIN infogov.entereca er ON er.CodiEnre = mb.CodiEnre"
  loc_B6FB29: ConcatStr
  loc_B6FB2A: FStStrNoPop var_198
  loc_B6FB2D: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = mb.PeriInfo"
  loc_B6FB30: ConcatStr
  loc_B6FB31: FStStrNoPop var_19C
  loc_B6FB34: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_B6FB37: ConcatStr
  loc_B6FB38: FStStrNoPop var_1A0
  loc_B6FB3B: LitStr " /*AND tmb.CodiCuco = pc.CajaPaco*/"
  loc_B6FB3E: ConcatStr
  loc_B6FB3F: FStStrNoPop var_1A4
  loc_B6FB42: LitStr " WHERE mb.PeriInfo = Year(FechMoba)"
  loc_B6FB45: ConcatStr
  loc_B6FB46: FStStrNoPop var_1A8
  loc_B6FB49: ILdRf var_88
  loc_B6FB4C: ConcatStr
  loc_B6FB4D: CVarStr var_114
  loc_B6FB50: LitVarStr var_134, " AND mb.CodiTimb IN (5,6) "
  loc_B6FB55: FStVarCopyObj var_F0
  loc_B6FB58: FLdRfVar var_F0
  loc_B6FB5B: LitVarStr var_C0, " AND mb.CodiTimb IN (5,6,27,28,29,30,31) "
  loc_B6FB60: FStVarCopyObj var_D8
  loc_B6FB63: FLdRfVar var_D8
  loc_B6FB66: LitStr "Municipalidad de Guaymallén"
  loc_B6FB69: LitStr "Municipalidad de Guaymallén"
  loc_B6FB6C: EqStr
  loc_B6FB6E: CVarBoolI2 var_B0
  loc_B6FB72: FLdRfVar var_104
  loc_B6FB75: ImpAdCallFPR4  = IIf(, , )
  loc_B6FB7A: FLdRfVar var_104
  loc_B6FB7D: ConcatVar var_124
  loc_B6FB81: ILdRf var_9C
  loc_B6FB84: CVarStr var_1B8
  loc_B6FB87: ConcatVar var_144
  loc_B6FB8B: ILdRf var_8C
  loc_B6FB8E: CVarStr var_1C8
  loc_B6FB91: ConcatVar var_154
  loc_B6FB95: ILdRf var_94
  loc_B6FB98: CVarStr var_1D8
  loc_B6FB9B: ConcatVar var_1E8
  loc_B6FB9F: ILdRf var_A0
  loc_B6FBA2: CVarStr var_1F8
  loc_B6FBA5: ConcatVar var_208
  loc_B6FBA9: LitVarStr var_218, " ORDER BY PeriInfo, CodiBanc, CodiEnre, FechMoba, mb.CodiTimb, NumeMoba"
  loc_B6FBAE: ConcatVar var_228
  loc_B6FBB2: CStrVarVal var_22C
  loc_B6FBB6: FLdPr var_168
  loc_B6FBB9: Call clsbase.RedefineRS(from_stack_1v)
  loc_B6FBBE: FFreeStr var_DC = "": var_F4 = "": var_158 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = ""
  loc_B6FBE9: FFreeVar var_B0 = "": var_D8 = "": var_F0 = "": var_114 = "": var_104 = "": var_124 = "": var_144 = "": var_154 = "": var_1E8 = "": var_208 = ""
  loc_B6FC02: Branch loc_B6FD66
  loc_B6FC05: FLdRfVar var_C6
  loc_B6FC08: FLdPr Me
  loc_B6FC0B: VCallAd Control_ID_optCodiEnre
  loc_B6FC0E: FStAdFunc var_C4
  loc_B6FC11: FLdPr var_C4
  loc_B6FC14:  = Me.Value
  loc_B6FC19: FLdI2 var_C6
  loc_B6FC1C: LitI2_Byte &HFF
  loc_B6FC1E: EqI2
  loc_B6FC1F: FFree1Ad var_C4
  loc_B6FC22: BranchF loc_B6FD66
  loc_B6FC25: LitStr "SELECT mb.*, DetaBanc, NumeBanc, DetaEnre, DetaTimb, DebeMoba-HabeMoba ImpoMoba"
  loc_B6FC28: LitStr ", (SELECT SUM(DebeMoba)-SUM(HabeMoba) FROM movibanco mb2 WHERE mb2.PeriInfo = mb.PeriInfo AND mb2.CodiEnre = mb.CodiEnre AND mb2.CodiTimb IN (5,6)"
  loc_B6FC2B: ConcatStr
  loc_B6FC2C: FStStrNoPop var_DC
  loc_B6FC2F: ILdRf var_90
  loc_B6FC32: ConcatStr
  loc_B6FC33: FStStrNoPop var_F4
  loc_B6FC36: ILdRf var_98
  loc_B6FC39: ConcatStr
  loc_B6FC3A: FStStrNoPop var_158
  loc_B6FC3D: LitStr ") TotaImpo"
  loc_B6FC40: ConcatStr
  loc_B6FC41: FStStrNoPop var_16C
  loc_B6FC44: LitStr ", (SELECT SUM(ComiMoba) FROM movibanco mb2 WHERE mb2.PeriInfo = mb.PeriInfo AND mb2.CodiEnre = mb.CodiEnre AND mb2.CodiTimb = mb.CodiTimb"
  loc_B6FC47: ConcatStr
  loc_B6FC48: FStStrNoPop var_170
  loc_B6FC4B: ILdRf var_90
  loc_B6FC4E: ConcatStr
  loc_B6FC4F: FStStrNoPop var_174
  loc_B6FC52: ILdRf var_98
  loc_B6FC55: ConcatStr
  loc_B6FC56: FStStrNoPop var_178
  loc_B6FC59: LitStr ") TotaComi"
  loc_B6FC5C: ConcatStr
  loc_B6FC5D: FStStrNoPop var_17C
  loc_B6FC60: LitStr ", (SELECT SUM(IvaMoba) FROM movibanco mb2 WHERE mb2.PeriInfo = mb.PeriInfo AND mb2.CodiEnre = mb.CodiEnre AND mb2.CodiTimb = mb.CodiTimb"
  loc_B6FC63: ConcatStr
  loc_B6FC64: FStStrNoPop var_180
  loc_B6FC67: ILdRf var_90
  loc_B6FC6A: ConcatStr
  loc_B6FC6B: FStStrNoPop var_184
  loc_B6FC6E: ILdRf var_98
  loc_B6FC71: ConcatStr
  loc_B6FC72: FStStrNoPop var_188
  loc_B6FC75: LitStr ") TotaIva"
  loc_B6FC78: ConcatStr
  loc_B6FC79: FStStrNoPop var_18C
  loc_B6FC7C: LitStr " FROM movibanco mb"
  loc_B6FC7F: ConcatStr
  loc_B6FC80: FStStrNoPop var_190
  loc_B6FC83: LitStr " INNER JOIN banco b ON b.PeriInfo = mb.PeriInfo AND b.CodiBanc = mb.CodiBanc"
  loc_B6FC86: ConcatStr
  loc_B6FC87: FStStrNoPop var_194
  loc_B6FC8A: LitStr " INNER JOIN infogov.entereca er ON er.CodiEnre = mb.CodiEnre"
  loc_B6FC8D: ConcatStr
  loc_B6FC8E: FStStrNoPop var_198
  loc_B6FC91: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = mb.PeriInfo"
  loc_B6FC94: ConcatStr
  loc_B6FC95: FStStrNoPop var_19C
  loc_B6FC98: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_B6FC9B: ConcatStr
  loc_B6FC9C: FStStrNoPop var_1A0
  loc_B6FC9F: LitStr " /*AND tmb.CodiCuco = pc.CajaPaco*/"
  loc_B6FCA2: ConcatStr
  loc_B6FCA3: FStStrNoPop var_1A4
  loc_B6FCA6: LitStr " WHERE mb.PeriInfo = Year(FechMoba)"
  loc_B6FCA9: ConcatStr
  loc_B6FCAA: FStStrNoPop var_1A8
  loc_B6FCAD: ILdRf var_88
  loc_B6FCB0: ConcatStr
  loc_B6FCB1: CVarStr var_114
  loc_B6FCB4: LitVarStr var_134, " AND mb.CodiTimb IN (5,6) "
  loc_B6FCB9: FStVarCopyObj var_F0
  loc_B6FCBC: FLdRfVar var_F0
  loc_B6FCBF: LitVarStr var_C0, " AND mb.CodiTimb IN (5,6,27,28,29,30,31) "
  loc_B6FCC4: FStVarCopyObj var_D8
  loc_B6FCC7: FLdRfVar var_D8
  loc_B6FCCA: LitStr "Municipalidad de Guaymallén"
  loc_B6FCCD: LitStr "Municipalidad de Guaymallén"
  loc_B6FCD0: EqStr
  loc_B6FCD2: CVarBoolI2 var_B0
  loc_B6FCD6: FLdRfVar var_104
  loc_B6FCD9: ImpAdCallFPR4  = IIf(, , )
  loc_B6FCDE: FLdRfVar var_104
  loc_B6FCE1: ConcatVar var_124
  loc_B6FCE5: ILdRf var_9C
  loc_B6FCE8: CVarStr var_1B8
  loc_B6FCEB: ConcatVar var_144
  loc_B6FCEF: ILdRf var_8C
  loc_B6FCF2: CVarStr var_1C8
  loc_B6FCF5: ConcatVar var_154
  loc_B6FCF9: ILdRf var_94
  loc_B6FCFC: CVarStr var_1D8
  loc_B6FCFF: ConcatVar var_1E8
  loc_B6FD03: ILdRf var_A0
  loc_B6FD06: CVarStr var_1F8
  loc_B6FD09: ConcatVar var_208
  loc_B6FD0D: LitVarStr var_218, " ORDER BY PeriInfo, CodiEnre, CodiBanc, FechMoba, mb.CodiTimb, NumeMoba"
  loc_B6FD12: ConcatVar var_228
  loc_B6FD16: CStrVarVal var_22C
  loc_B6FD1A: FLdPr var_168
  loc_B6FD1D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B6FD22: FFreeStr var_DC = "": var_F4 = "": var_158 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = ""
  loc_B6FD4D: FFreeVar var_B0 = "": var_D8 = "": var_F0 = "": var_114 = "": var_104 = "": var_124 = "": var_144 = "": var_154 = "": var_1E8 = "": var_208 = ""
  loc_B6FD66: FLdRfVar var_164
  loc_B6FD69: FLdPr var_168
  loc_B6FD6C: from_stack_1 = clsbase.RecordCount
  loc_B6FD71: ILdRf var_164
  loc_B6FD74: LitI4 0
  loc_B6FD79: EqI4
  loc_B6FD7A: BranchF loc_B6FD8D
  loc_B6FD7D: LitI4 0
  loc_B6FD82: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B6FD85: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6FD8A: Branch loc_B6FE0C
  loc_B6FD8D: FLdRfVar var_164
  loc_B6FD90: FLdPr var_168
  loc_B6FD93: from_stack_1 = clsbase.RecordCount
  loc_B6FD98: ILdRf var_164
  loc_B6FD9B: CR8I4
  loc_B6FD9C: CVarR4
  loc_B6FDA0: PopAdLdVar
  loc_B6FDA1: FLdPrThis
  loc_B6FDA2: VCallAd Control_ID_Pbar
  loc_B6FDA5: FStAdFunc var_C4
  loc_B6FDA8: FLdPr var_C4
  loc_B6FDAB: LateIdSt
  loc_B6FDB0: FFree1Ad var_C4
  loc_B6FDB3: LitVar_TRUE var_B0
  loc_B6FDB6: PopAdLdVar
  loc_B6FDB7: FLdPrThis
  loc_B6FDB8: VCallAd Control_ID_Pbar
  loc_B6FDBB: FStAdFunc var_C4
  loc_B6FDBE: FLdPr var_C4
  loc_B6FDC1: LateIdSt
  loc_B6FDC6: FFree1Ad var_C4
  loc_B6FDC9: LitNothing
  loc_B6FDCB: FStAd var_168 
  loc_B6FDCF: LitVar_FALSE
  loc_B6FDD3: PopAdLdVar
  loc_B6FDD4: FLdPrThis
  loc_B6FDD5: VCallAd Control_ID_Pbar
  loc_B6FDD8: FStAdFunc var_C4
  loc_B6FDDB: FLdPr var_C4
  loc_B6FDDE: LateIdSt
  loc_B6FDE3: FFree1Ad var_C4
  loc_B6FDE6: LitStr vbNullString
  loc_B6FDE9: FLdPr Me
  loc_B6FDEC: MemStStrCopy
  loc_B6FDF0: LitStr vbNullString
  loc_B6FDF3: FLdPr Me
  loc_B6FDF6: MemStStrCopy
  loc_B6FDFA: LitStr vbNullString
  loc_B6FDFD: FLdPr Me
  loc_B6FE00: MemStStrCopy
  loc_B6FE04: LitI2_Byte &HFF
  loc_B6FE06: FLdPr Me
  loc_B6FE09: MemStI2 bGenerado
  loc_B6FE0C: LitI4 0
  loc_B6FE11: CI2I4
  loc_B6FE12: FLdPr Me
  loc_B6FE15: Me.MousePointer = from_stack_1
  loc_B6FE1A: LitVarStr var_B0, vbNullString
  loc_B6FE1F: PopAdLdVar
  loc_B6FE20: FLdPr Me
  loc_B6FE23: VCallAd Control_ID_statusBar
  loc_B6FE26: FStAdFunc var_C4
  loc_B6FE29: FLdPr var_C4
  loc_B6FE2C: LateIdSt
  loc_B6FE31: FFree1Ad var_C4
  loc_B6FE34: ExitProcHresult
  loc_B6FE35: LitI4 0
  loc_B6FE3A: LitStr "Error "
  loc_B6FE3D: FLdRfVar var_164
  loc_B6FE40: ImpAdCallI2 Err 'rtcErrObj
  loc_B6FE45: FStAdFunc var_C4
  loc_B6FE48: FLdPr var_C4
  loc_B6FE4B:  = Err.Number
  loc_B6FE50: ILdRf var_164
  loc_B6FE53: CStrI4
  loc_B6FE55: FStStrNoPop var_DC
  loc_B6FE58: ConcatStr
  loc_B6FE59: FStStrNoPop var_F4
  loc_B6FE5C: LitStr ": "
  loc_B6FE5F: ConcatStr
  loc_B6FE60: FStStrNoPop var_16C
  loc_B6FE63: FLdRfVar var_158
  loc_B6FE66: ImpAdCallI2 Err 'rtcErrObj
  loc_B6FE6B: FStAdFunc var_E0
  loc_B6FE6E: FLdPr var_E0
  loc_B6FE71:  = Err.Description
  loc_B6FE76: ILdRf var_158
  loc_B6FE79: ConcatStr
  loc_B6FE7A: FStStrNoPop var_170
  loc_B6FE7D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6FE82: FFreeStr var_DC = "": var_F4 = "": var_16C = "": var_158 = ""
  loc_B6FE8F: FFreeAd var_C4 = ""
  loc_B6FE96: ExitProcHresult
  loc_B6FE97: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9511E4
  'Data Table: 4C485C
  loc_9511CC: LitI2_Byte 0
  loc_9511CE: FLdPr Me
  loc_9511D1: MemStI2 bLogos
  loc_9511D4: Call GeneraHTML()
  loc_9511D9: LitI2_Byte &HFF
  loc_9511DB: FLdPr Me
  loc_9511DE: MemStI2 bLogos
  loc_9511E1: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BE23B0
  'Data Table: 4C485C
  loc_BE0B1C: FLdRfVar var_94
  loc_BE0B1F: LitI2_Byte 0
  loc_BE0B21: LitI2_Byte &HFF
  loc_BE0B23: ImpAdLdI4 MemVar_C3D83C
  loc_BE0B26: FLdPr Me
  loc_BE0B29: MemLdRfVar from_stack_1.global_80
  loc_BE0B2C: NewIfNullPr IFileSystem3
  loc_BE0B2F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BE0B34: ILdRf var_94
  loc_BE0B37: FLdPr Me
  loc_BE0B3A: MemStVarAd
  loc_BE0B3E: FFree1Ad var_94
  loc_BE0B41: Call Proc_192_32_A5564C()
  loc_BE0B46: FLdPr Me
  loc_BE0B49: MemLdRfVar from_stack_1.global_76
  loc_BE0B4C: NewIfNullPr clsbase
  loc_BE0B4F: Call clsbase.MoveFirst()
  loc_BE0B54: FLdRfVar var_96
  loc_BE0B57: FLdPr Me
  loc_BE0B5A: MemLdRfVar from_stack_1.global_76
  loc_BE0B5D: NewIfNullPr clsbase
  loc_BE0B60: from_stack_1 = clsbase.EOF
  loc_BE0B65: FLdI2 var_96
  loc_BE0B68: NotI4
  loc_BE0B69: BranchF loc_BE21D6
  loc_BE0B6C: FLdRfVar var_94
  loc_BE0B6F: FLdPr Me
  loc_BE0B72: MemLdRfVar from_stack_1.global_76
  loc_BE0B75: NewIfNullPr clsbase
  loc_BE0B78: from_stack_1v = clsbase.RsFrmGet()
  loc_BE0B7D: FLdZeroAd var_94
  loc_BE0B80: FStAdFunc var_9C
  loc_BE0B83: FLdRfVar var_96
  loc_BE0B86: FLdPr Me
  loc_BE0B89: VCallAd Control_ID_optCodiBanc
  loc_BE0B8C: FStAdFunc var_94
  loc_BE0B8F: FLdPr var_94
  loc_BE0B92:  = Me.Value
  loc_BE0B97: FLdI2 var_96
  loc_BE0B9A: LitI2_Byte &HFF
  loc_BE0B9C: EqI2
  loc_BE0B9D: FFree1Ad var_94
  loc_BE0BA0: BranchF loc_BE16FA
  loc_BE0BA3: ILdRf var_88
  loc_BE0BA6: LitStr vbNullString
  loc_BE0BA9: NeStr
  loc_BE0BAB: ILdRf var_88
  loc_BE0BAE: FLdRfVar var_C0
  loc_BE0BB1: FLdRfVar var_B0
  loc_BE0BB4: LitVarStr var_AC, "CodiBanc"
  loc_BE0BB9: PopAdLdVar
  loc_BE0BBA: FLdRfVar var_94
  loc_BE0BBD: FLdPr var_9C
  loc_BE0BC0:  = Me.Fields
  loc_BE0BC5: FLdPr var_94
  loc_BE0BC8: from_stack_2 = Me.Item(from_stack_1)
  loc_BE0BCD: FLdPr var_B0
  loc_BE0BD0:  = Me.Value
  loc_BE0BD5: FLdRfVar var_C0
  loc_BE0BD8: FnCStrVar
  loc_BE0BDA: FStStrNoPop var_C4
  loc_BE0BDD: NeStr
  loc_BE0BDF: AndI4
  loc_BE0BE0: FFree1Str var_C4
  loc_BE0BE3: FFreeAd var_94 = ""
  loc_BE0BEA: FFree1Var var_C0 = ""
  loc_BE0BED: BranchF loc_BE0C18
  loc_BE0BF0: LitVarStr var_AC, "</table>"
  loc_BE0BF5: PopAdLdVar
  loc_BE0BF6: FLdPr Me
  loc_BE0BF9: MemLdRfVar from_stack_1.htmFile
  loc_BE0BFC: LdPrVar
  loc_BE0BFE: LateMemCall
  loc_BE0C04: LitVarStr var_AC, "<br>"
  loc_BE0C09: PopAdLdVar
  loc_BE0C0A: FLdPr Me
  loc_BE0C0D: MemLdRfVar from_stack_1.htmFile
  loc_BE0C10: LdPrVar
  loc_BE0C12: LateMemCall
  loc_BE0C18: ILdRf var_88
  loc_BE0C1B: FLdRfVar var_C0
  loc_BE0C1E: FLdRfVar var_B0
  loc_BE0C21: LitVarStr var_AC, "CodiBanc"
  loc_BE0C26: PopAdLdVar
  loc_BE0C27: FLdRfVar var_94
  loc_BE0C2A: FLdPr var_9C
  loc_BE0C2D:  = Me.Fields
  loc_BE0C32: FLdPr var_94
  loc_BE0C35: from_stack_2 = Me.Item(from_stack_1)
  loc_BE0C3A: FLdPr var_B0
  loc_BE0C3D:  = Me.Value
  loc_BE0C42: FLdRfVar var_C0
  loc_BE0C45: FnCStrVar
  loc_BE0C47: FStStrNoPop var_C4
  loc_BE0C4A: NeStr
  loc_BE0C4C: FFree1Str var_C4
  loc_BE0C4F: FFreeAd var_94 = ""
  loc_BE0C56: FFree1Var var_C0 = ""
  loc_BE0C59: BranchF loc_BE0FB2
  loc_BE0C5C: LitVarStr var_AC, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BE0C61: PopAdLdVar
  loc_BE0C62: FLdPr Me
  loc_BE0C65: MemLdRfVar from_stack_1.htmFile
  loc_BE0C68: LdPrVar
  loc_BE0C6A: LateMemCall
  loc_BE0C70: LitVarStr var_AC, "  <THEAD>"
  loc_BE0C75: PopAdLdVar
  loc_BE0C76: FLdPr Me
  loc_BE0C79: MemLdRfVar from_stack_1.htmFile
  loc_BE0C7C: LdPrVar
  loc_BE0C7E: LateMemCall
  loc_BE0C84: LitVarStr var_AC, "  <tr align=""left"" valign=""top"">"
  loc_BE0C89: PopAdLdVar
  loc_BE0C8A: FLdPr Me
  loc_BE0C8D: MemLdRfVar from_stack_1.htmFile
  loc_BE0C90: LdPrVar
  loc_BE0C92: LateMemCall
  loc_BE0C98: LitVarStr var_D4, "    <td width=""70" & Chr(37) & """ class=""Totales"" colspan=""5"">Banco: "
  loc_BE0C9D: FLdRfVar var_C0
  loc_BE0CA0: FLdRfVar var_B0
  loc_BE0CA3: LitVarStr var_AC, "CodiBanc"
  loc_BE0CA8: PopAdLdVar
  loc_BE0CA9: FLdRfVar var_94
  loc_BE0CAC: FLdPr var_9C
  loc_BE0CAF:  = Me.Fields
  loc_BE0CB4: FLdPr var_94
  loc_BE0CB7: from_stack_2 = Me.Item(from_stack_1)
  loc_BE0CBC: FLdPr var_B0
  loc_BE0CBF:  = Me.Value
  loc_BE0CC4: FLdRfVar var_C0
  loc_BE0CC7: ConcatVar var_E4
  loc_BE0CCB: LitVarStr var_F4, " - "
  loc_BE0CD0: ConcatVar var_104
  loc_BE0CD4: FLdRfVar var_12C
  loc_BE0CD7: FLdRfVar var_11C
  loc_BE0CDA: LitVarStr var_118, "DetaBanc"
  loc_BE0CDF: PopAdLdVar
  loc_BE0CE0: FLdRfVar var_108
  loc_BE0CE3: FLdPr var_9C
  loc_BE0CE6:  = Me.Fields
  loc_BE0CEB: FLdPr var_108
  loc_BE0CEE: from_stack_2 = Me.Item(from_stack_1)
  loc_BE0CF3: FLdPr var_11C
  loc_BE0CF6:  = Me.Value
  loc_BE0CFB: FLdRfVar var_12C
  loc_BE0CFE: ConcatVar var_13C
  loc_BE0D02: LitVarStr var_14C, " ("
  loc_BE0D07: ConcatVar var_15C
  loc_BE0D0B: FLdRfVar var_184
  loc_BE0D0E: FLdRfVar var_174
  loc_BE0D11: LitVarStr var_170, "NumeBanc"
  loc_BE0D16: PopAdLdVar
  loc_BE0D17: FLdRfVar var_160
  loc_BE0D1A: FLdPr var_9C
  loc_BE0D1D:  = Me.Fields
  loc_BE0D22: FLdPr var_160
  loc_BE0D25: from_stack_2 = Me.Item(from_stack_1)
  loc_BE0D2A: FLdPr var_174
  loc_BE0D2D:  = Me.Value
  loc_BE0D32: FLdRfVar var_184
  loc_BE0D35: ConcatVar var_194
  loc_BE0D39: LitVarStr var_1A4, ")</td>"
  loc_BE0D3E: ConcatVar var_1B4
  loc_BE0D42: PopAdLdVar
  loc_BE0D43: FLdPr Me
  loc_BE0D46: MemLdRfVar from_stack_1.htmFile
  loc_BE0D49: LdPrVar
  loc_BE0D4B: LateMemCall
  loc_BE0D51: FFreeAd var_94 = "": var_B0 = "": var_108 = "": var_11C = "": var_160 = ""
  loc_BE0D60: FFreeVar var_C0 = "": var_E4 = "": var_104 = "": var_12C = "": var_13C = "": var_15C = "": var_184 = "": var_194 = ""
  loc_BE0D75: FLdRfVar var_B0
  loc_BE0D78: LitVarStr var_AC, "TotaImpo"
  loc_BE0D7D: PopAdLdVar
  loc_BE0D7E: FLdRfVar var_94
  loc_BE0D81: FLdPr var_9C
  loc_BE0D84:  = Me.Fields
  loc_BE0D89: FLdPr var_94
  loc_BE0D8C: from_stack_2 = Me.Item(from_stack_1)
  loc_BE0D91: LitStr "    <td width=""15" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_BE0D94: LitI2_Byte 0
  loc_BE0D96: LitVar_Missing var_E4
  loc_BE0D99: LitI2_Byte &HFF
  loc_BE0D9B: FLdZeroAd var_B0
  loc_BE0D9E: CVarAd
  loc_BE0DA2: PopAdLdVar
  loc_BE0DA3: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE0DA8: FStStrNoPop var_C4
  loc_BE0DAB: ConcatStr
  loc_BE0DAC: FStStrNoPop var_1C8
  loc_BE0DAF: LitStr "</td>"
  loc_BE0DB2: ConcatStr
  loc_BE0DB3: CVarStr var_104
  loc_BE0DB6: PopAdLdVar
  loc_BE0DB7: FLdPr Me
  loc_BE0DBA: MemLdRfVar from_stack_1.htmFile
  loc_BE0DBD: LdPrVar
  loc_BE0DBF: LateMemCall
  loc_BE0DC5: FFreeStr var_C4 = ""
  loc_BE0DCC: FFree1Ad var_94
  loc_BE0DCF: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE0DD8: FLdRfVar var_B0
  loc_BE0DDB: LitVarStr var_AC, "TotaComi"
  loc_BE0DE0: PopAdLdVar
  loc_BE0DE1: FLdRfVar var_94
  loc_BE0DE4: FLdPr var_9C
  loc_BE0DE7:  = Me.Fields
  loc_BE0DEC: FLdPr var_94
  loc_BE0DEF: from_stack_2 = Me.Item(from_stack_1)
  loc_BE0DF4: LitStr "    <td width=""8" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_BE0DF7: LitI2_Byte 0
  loc_BE0DF9: LitVar_Missing var_E4
  loc_BE0DFC: LitI2_Byte &HFF
  loc_BE0DFE: FLdZeroAd var_B0
  loc_BE0E01: CVarAd
  loc_BE0E05: PopAdLdVar
  loc_BE0E06: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE0E0B: FStStrNoPop var_C4
  loc_BE0E0E: ConcatStr
  loc_BE0E0F: FStStrNoPop var_1C8
  loc_BE0E12: LitStr "</td>"
  loc_BE0E15: ConcatStr
  loc_BE0E16: CVarStr var_104
  loc_BE0E19: PopAdLdVar
  loc_BE0E1A: FLdPr Me
  loc_BE0E1D: MemLdRfVar from_stack_1.htmFile
  loc_BE0E20: LdPrVar
  loc_BE0E22: LateMemCall
  loc_BE0E28: FFreeStr var_C4 = ""
  loc_BE0E2F: FFree1Ad var_94
  loc_BE0E32: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE0E3B: FLdRfVar var_B0
  loc_BE0E3E: LitVarStr var_AC, "TotaIva"
  loc_BE0E43: PopAdLdVar
  loc_BE0E44: FLdRfVar var_94
  loc_BE0E47: FLdPr var_9C
  loc_BE0E4A:  = Me.Fields
  loc_BE0E4F: FLdPr var_94
  loc_BE0E52: from_stack_2 = Me.Item(from_stack_1)
  loc_BE0E57: LitStr "    <td width=""7" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_BE0E5A: LitI2_Byte 0
  loc_BE0E5C: LitVar_Missing var_E4
  loc_BE0E5F: LitI2_Byte &HFF
  loc_BE0E61: FLdZeroAd var_B0
  loc_BE0E64: CVarAd
  loc_BE0E68: PopAdLdVar
  loc_BE0E69: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE0E6E: FStStrNoPop var_C4
  loc_BE0E71: ConcatStr
  loc_BE0E72: FStStrNoPop var_1C8
  loc_BE0E75: LitStr "</td>"
  loc_BE0E78: ConcatStr
  loc_BE0E79: CVarStr var_104
  loc_BE0E7C: PopAdLdVar
  loc_BE0E7D: FLdPr Me
  loc_BE0E80: MemLdRfVar from_stack_1.htmFile
  loc_BE0E83: LdPrVar
  loc_BE0E85: LateMemCall
  loc_BE0E8B: FFreeStr var_C4 = ""
  loc_BE0E92: FFree1Ad var_94
  loc_BE0E95: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE0E9E: LitVarStr var_AC, "  </tr>"
  loc_BE0EA3: PopAdLdVar
  loc_BE0EA4: FLdPr Me
  loc_BE0EA7: MemLdRfVar from_stack_1.htmFile
  loc_BE0EAA: LdPrVar
  loc_BE0EAC: LateMemCall
  loc_BE0EB2: FLdRfVar var_96
  loc_BE0EB5: FLdPr Me
  loc_BE0EB8: VCallAd Control_ID_chkSintetico
  loc_BE0EBB: FStAdFunc var_94
  loc_BE0EBE: FLdPr var_94
  loc_BE0EC1:  = Me.Value
  loc_BE0EC6: FLdI2 var_96
  loc_BE0EC9: CI4UI1
  loc_BE0ECA: LitI4 0
  loc_BE0ECF: EqI4
  loc_BE0ED0: FFree1Ad var_94
  loc_BE0ED3: BranchF loc_BE0F9E
  loc_BE0ED6: LitVarStr var_AC, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE0EDB: PopAdLdVar
  loc_BE0EDC: FLdPr Me
  loc_BE0EDF: MemLdRfVar from_stack_1.htmFile
  loc_BE0EE2: LdPrVar
  loc_BE0EE4: LateMemCall
  loc_BE0EEA: LitVarStr var_AC, "    <th>Ente Recaudador</th>"
  loc_BE0EEF: PopAdLdVar
  loc_BE0EF0: FLdPr Me
  loc_BE0EF3: MemLdRfVar from_stack_1.htmFile
  loc_BE0EF6: LdPrVar
  loc_BE0EF8: LateMemCall
  loc_BE0EFE: LitVarStr var_AC, "    <th>Fecha depósito (LB)</th>"
  loc_BE0F03: PopAdLdVar
  loc_BE0F04: FLdPr Me
  loc_BE0F07: MemLdRfVar from_stack_1.htmFile
  loc_BE0F0A: LdPrVar
  loc_BE0F0C: LateMemCall
  loc_BE0F12: LitVarStr var_AC, "    <th>Fecha recaudación</th>"
  loc_BE0F17: PopAdLdVar
  loc_BE0F18: FLdPr Me
  loc_BE0F1B: MemLdRfVar from_stack_1.htmFile
  loc_BE0F1E: LdPrVar
  loc_BE0F20: LateMemCall
  loc_BE0F26: LitVarStr var_AC, "    <th>Tipo</th>"
  loc_BE0F2B: PopAdLdVar
  loc_BE0F2C: FLdPr Me
  loc_BE0F2F: MemLdRfVar from_stack_1.htmFile
  loc_BE0F32: LdPrVar
  loc_BE0F34: LateMemCall
  loc_BE0F3A: LitVarStr var_AC, "    <th>Nro</th>"
  loc_BE0F3F: PopAdLdVar
  loc_BE0F40: FLdPr Me
  loc_BE0F43: MemLdRfVar from_stack_1.htmFile
  loc_BE0F46: LdPrVar
  loc_BE0F48: LateMemCall
  loc_BE0F4E: LitVarStr var_AC, "    <th>Importe</th>"
  loc_BE0F53: PopAdLdVar
  loc_BE0F54: FLdPr Me
  loc_BE0F57: MemLdRfVar from_stack_1.htmFile
  loc_BE0F5A: LdPrVar
  loc_BE0F5C: LateMemCall
  loc_BE0F62: LitVarStr var_AC, "    <th>Comisión</th>"
  loc_BE0F67: PopAdLdVar
  loc_BE0F68: FLdPr Me
  loc_BE0F6B: MemLdRfVar from_stack_1.htmFile
  loc_BE0F6E: LdPrVar
  loc_BE0F70: LateMemCall
  loc_BE0F76: LitVarStr var_AC, "    <th>Iva</th>"
  loc_BE0F7B: PopAdLdVar
  loc_BE0F7C: FLdPr Me
  loc_BE0F7F: MemLdRfVar from_stack_1.htmFile
  loc_BE0F82: LdPrVar
  loc_BE0F84: LateMemCall
  loc_BE0F8A: LitVarStr var_AC, "  </tr>"
  loc_BE0F8F: PopAdLdVar
  loc_BE0F90: FLdPr Me
  loc_BE0F93: MemLdRfVar from_stack_1.htmFile
  loc_BE0F96: LdPrVar
  loc_BE0F98: LateMemCall
  loc_BE0F9E: LitVarStr var_AC, "  </THEAD>"
  loc_BE0FA3: PopAdLdVar
  loc_BE0FA4: FLdPr Me
  loc_BE0FA7: MemLdRfVar from_stack_1.htmFile
  loc_BE0FAA: LdPrVar
  loc_BE0FAC: LateMemCall
  loc_BE0FB2: FLdRfVar var_96
  loc_BE0FB5: FLdPr Me
  loc_BE0FB8: VCallAd Control_ID_chkSintetico
  loc_BE0FBB: FStAdFunc var_94
  loc_BE0FBE: FLdPr var_94
  loc_BE0FC1:  = Me.Value
  loc_BE0FC6: FLdI2 var_96
  loc_BE0FC9: CI4UI1
  loc_BE0FCA: LitI4 0
  loc_BE0FCF: EqI4
  loc_BE0FD0: FFree1Ad var_94
  loc_BE0FD3: BranchF loc_BE12C5
  loc_BE0FD6: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BE0FDB: PopAdLdVar
  loc_BE0FDC: FLdPr Me
  loc_BE0FDF: MemLdRfVar from_stack_1.htmFile
  loc_BE0FE2: LdPrVar
  loc_BE0FE4: LateMemCall
  loc_BE0FEA: FLdRfVar var_C0
  loc_BE0FED: FLdRfVar var_B0
  loc_BE0FF0: LitVarStr var_AC, "CodiEnre"
  loc_BE0FF5: PopAdLdVar
  loc_BE0FF6: FLdRfVar var_94
  loc_BE0FF9: FLdPr var_9C
  loc_BE0FFC:  = Me.Fields
  loc_BE1001: FLdPr var_94
  loc_BE1004: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1009: FLdPr var_B0
  loc_BE100C:  = Me.Value
  loc_BE1011: FLdRfVar var_104
  loc_BE1014: FLdRfVar var_11C
  loc_BE1017: LitVarStr var_F4, "DetaEnre"
  loc_BE101C: PopAdLdVar
  loc_BE101D: FLdRfVar var_108
  loc_BE1020: FLdPr var_9C
  loc_BE1023:  = Me.Fields
  loc_BE1028: FLdPr var_108
  loc_BE102B: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1030: FLdPr var_11C
  loc_BE1033:  = Me.Value
  loc_BE1038: LitI4 0
  loc_BE103D: LitI4 0
  loc_BE1042: LitI2_Byte 0
  loc_BE1044: LitStr "left"
  loc_BE1047: FLdRfVar var_C0
  loc_BE104A: LitVarStr var_D4, " "
  loc_BE104F: ConcatVar var_E4
  loc_BE1053: FLdRfVar var_104
  loc_BE1056: ConcatVar var_12C
  loc_BE105A: CStrVarVal var_C4
  loc_BE105E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1063: CVarStr var_13C
  loc_BE1066: PopAdLdVar
  loc_BE1067: FLdPr Me
  loc_BE106A: MemLdRfVar from_stack_1.htmFile
  loc_BE106D: LdPrVar
  loc_BE106F: LateMemCall
  loc_BE1075: FFree1Str var_C4
  loc_BE1078: FFreeAd var_94 = "": var_B0 = "": var_108 = ""
  loc_BE1083: FFreeVar var_C0 = "": var_E4 = "": var_104 = "": var_12C = ""
  loc_BE1090: FLdRfVar var_C0
  loc_BE1093: FLdRfVar var_B0
  loc_BE1096: LitVarStr var_AC, "FechMoba"
  loc_BE109B: PopAdLdVar
  loc_BE109C: FLdRfVar var_94
  loc_BE109F: FLdPr var_9C
  loc_BE10A2:  = Me.Fields
  loc_BE10A7: FLdPr var_94
  loc_BE10AA: from_stack_2 = Me.Item(from_stack_1)
  loc_BE10AF: FLdPr var_B0
  loc_BE10B2:  = Me.Value
  loc_BE10B7: LitI4 0
  loc_BE10BC: LitI4 0
  loc_BE10C1: LitI2_Byte 0
  loc_BE10C3: LitStr "center"
  loc_BE10C6: FLdRfVar var_C0
  loc_BE10C9: CStrVarTmp
  loc_BE10CA: FStStrNoPop var_C4
  loc_BE10CD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE10D2: CVarStr var_E4
  loc_BE10D5: PopAdLdVar
  loc_BE10D6: FLdPr Me
  loc_BE10D9: MemLdRfVar from_stack_1.htmFile
  loc_BE10DC: LdPrVar
  loc_BE10DE: LateMemCall
  loc_BE10E4: FFree1Str var_C4
  loc_BE10E7: FFreeAd var_94 = ""
  loc_BE10EE: FFreeVar var_C0 = ""
  loc_BE10F5: FLdRfVar var_B0
  loc_BE10F8: LitVarStr var_AC, "FeinMoba"
  loc_BE10FD: PopAdLdVar
  loc_BE10FE: FLdRfVar var_94
  loc_BE1101: FLdPr var_9C
  loc_BE1104:  = Me.Fields
  loc_BE1109: FLdPr var_94
  loc_BE110C: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1111: FLdZeroAd var_B0
  loc_BE1114: CVarAd
  loc_BE1118: ImpAdCallI2 IsNull()
  loc_BE111D: FFree1Ad var_94
  loc_BE1120: FFree1Var var_C0 = ""
  loc_BE1123: BranchF loc_BE1155
  loc_BE1126: LitI4 0
  loc_BE112B: LitI4 0
  loc_BE1130: LitI2_Byte 0
  loc_BE1132: LitStr "center"
  loc_BE1135: LitStr "&nbsp;"
  loc_BE1138: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE113D: CVarStr var_C0
  loc_BE1140: PopAdLdVar
  loc_BE1141: FLdPr Me
  loc_BE1144: MemLdRfVar from_stack_1.htmFile
  loc_BE1147: LdPrVar
  loc_BE1149: LateMemCall
  loc_BE114F: FFree1Var var_C0 = ""
  loc_BE1152: Branch loc_BE11BA
  loc_BE1155: FLdRfVar var_C0
  loc_BE1158: FLdRfVar var_B0
  loc_BE115B: LitVarStr var_AC, "FeinMoba"
  loc_BE1160: PopAdLdVar
  loc_BE1161: FLdRfVar var_94
  loc_BE1164: FLdPr var_9C
  loc_BE1167:  = Me.Fields
  loc_BE116C: FLdPr var_94
  loc_BE116F: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1174: FLdPr var_B0
  loc_BE1177:  = Me.Value
  loc_BE117C: LitI4 0
  loc_BE1181: LitI4 0
  loc_BE1186: LitI2_Byte 0
  loc_BE1188: LitStr "center"
  loc_BE118B: FLdRfVar var_C0
  loc_BE118E: CStrVarTmp
  loc_BE118F: FStStrNoPop var_C4
  loc_BE1192: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1197: CVarStr var_E4
  loc_BE119A: PopAdLdVar
  loc_BE119B: FLdPr Me
  loc_BE119E: MemLdRfVar from_stack_1.htmFile
  loc_BE11A1: LdPrVar
  loc_BE11A3: LateMemCall
  loc_BE11A9: FFree1Str var_C4
  loc_BE11AC: FFreeAd var_94 = ""
  loc_BE11B3: FFreeVar var_C0 = ""
  loc_BE11BA: FLdRfVar var_C0
  loc_BE11BD: FLdRfVar var_B0
  loc_BE11C0: LitVarStr var_AC, "CodiTimb"
  loc_BE11C5: PopAdLdVar
  loc_BE11C6: FLdRfVar var_94
  loc_BE11C9: FLdPr var_9C
  loc_BE11CC:  = Me.Fields
  loc_BE11D1: FLdPr var_94
  loc_BE11D4: from_stack_2 = Me.Item(from_stack_1)
  loc_BE11D9: FLdPr var_B0
  loc_BE11DC:  = Me.Value
  loc_BE11E1: FLdRfVar var_104
  loc_BE11E4: FLdRfVar var_11C
  loc_BE11E7: LitVarStr var_F4, "DetaTimb"
  loc_BE11EC: PopAdLdVar
  loc_BE11ED: FLdRfVar var_108
  loc_BE11F0: FLdPr var_9C
  loc_BE11F3:  = Me.Fields
  loc_BE11F8: FLdPr var_108
  loc_BE11FB: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1200: FLdPr var_11C
  loc_BE1203:  = Me.Value
  loc_BE1208: LitI4 0
  loc_BE120D: LitI4 0
  loc_BE1212: LitI2_Byte 0
  loc_BE1214: LitStr "left"
  loc_BE1217: FLdRfVar var_C0
  loc_BE121A: LitVarStr var_D4, " "
  loc_BE121F: ConcatVar var_E4
  loc_BE1223: FLdRfVar var_104
  loc_BE1226: ConcatVar var_12C
  loc_BE122A: CStrVarVal var_C4
  loc_BE122E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1233: CVarStr var_13C
  loc_BE1236: PopAdLdVar
  loc_BE1237: FLdPr Me
  loc_BE123A: MemLdRfVar from_stack_1.htmFile
  loc_BE123D: LdPrVar
  loc_BE123F: LateMemCall
  loc_BE1245: FFree1Str var_C4
  loc_BE1248: FFreeAd var_94 = "": var_B0 = "": var_108 = ""
  loc_BE1253: FFreeVar var_C0 = "": var_E4 = "": var_104 = "": var_12C = ""
  loc_BE1260: FLdRfVar var_C0
  loc_BE1263: FLdRfVar var_B0
  loc_BE1266: LitVarStr var_AC, "NumeMoba"
  loc_BE126B: PopAdLdVar
  loc_BE126C: FLdRfVar var_94
  loc_BE126F: FLdPr var_9C
  loc_BE1272:  = Me.Fields
  loc_BE1277: FLdPr var_94
  loc_BE127A: from_stack_2 = Me.Item(from_stack_1)
  loc_BE127F: FLdPr var_B0
  loc_BE1282:  = Me.Value
  loc_BE1287: LitI4 0
  loc_BE128C: LitI4 0
  loc_BE1291: LitI2_Byte 0
  loc_BE1293: LitStr "right"
  loc_BE1296: FLdRfVar var_C0
  loc_BE1299: CStrVarTmp
  loc_BE129A: FStStrNoPop var_C4
  loc_BE129D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE12A2: CVarStr var_E4
  loc_BE12A5: PopAdLdVar
  loc_BE12A6: FLdPr Me
  loc_BE12A9: MemLdRfVar from_stack_1.htmFile
  loc_BE12AC: LdPrVar
  loc_BE12AE: LateMemCall
  loc_BE12B4: FFree1Str var_C4
  loc_BE12B7: FFreeAd var_94 = ""
  loc_BE12BE: FFreeVar var_C0 = ""
  loc_BE12C5: FLdPr Me
  loc_BE12C8: MemLdI2 bSumar
  loc_BE12CB: BranchF loc_BE1523
  loc_BE12CE: FLdRfVar var_96
  loc_BE12D1: FLdPr Me
  loc_BE12D4: VCallAd Control_ID_chkSintetico
  loc_BE12D7: FStAdFunc var_94
  loc_BE12DA: FLdPr var_94
  loc_BE12DD:  = Me.Value
  loc_BE12E2: FLdI2 var_96
  loc_BE12E5: CI4UI1
  loc_BE12E6: LitI4 0
  loc_BE12EB: EqI4
  loc_BE12EC: FFree1Ad var_94
  loc_BE12EF: BranchF loc_BE145D
  loc_BE12F2: FLdRfVar var_B0
  loc_BE12F5: LitVarStr var_AC, "ImpoMoba"
  loc_BE12FA: PopAdLdVar
  loc_BE12FB: FLdRfVar var_94
  loc_BE12FE: FLdPr var_9C
  loc_BE1301:  = Me.Fields
  loc_BE1306: FLdPr var_94
  loc_BE1309: from_stack_2 = Me.Item(from_stack_1)
  loc_BE130E: LitI2_Byte 0
  loc_BE1310: FLdPr Me
  loc_BE1313: MemLdRfVar from_stack_1.global_96
  loc_BE1316: CVarRef
  loc_BE131B: LitI2_Byte &HFF
  loc_BE131D: FLdZeroAd var_B0
  loc_BE1320: CVarAd
  loc_BE1324: PopAdLdVar
  loc_BE1325: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE132A: FStStr var_1C8
  loc_BE132D: LitI4 0
  loc_BE1332: LitI4 0
  loc_BE1337: LitI2_Byte 0
  loc_BE1339: LitStr "right"
  loc_BE133C: FLdZeroAd var_1C8
  loc_BE133F: FStStrNoPop var_C4
  loc_BE1342: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1347: CVarStr var_E4
  loc_BE134A: PopAdLdVar
  loc_BE134B: FLdPr Me
  loc_BE134E: MemLdRfVar from_stack_1.htmFile
  loc_BE1351: LdPrVar
  loc_BE1353: LateMemCall
  loc_BE1359: FFreeStr var_C4 = ""
  loc_BE1360: FFree1Ad var_94
  loc_BE1363: FFreeVar var_C0 = ""
  loc_BE136A: FLdRfVar var_B0
  loc_BE136D: LitVarStr var_AC, "ComiMoba"
  loc_BE1372: PopAdLdVar
  loc_BE1373: FLdRfVar var_94
  loc_BE1376: FLdPr var_9C
  loc_BE1379:  = Me.Fields
  loc_BE137E: FLdPr var_94
  loc_BE1381: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1386: LitI2_Byte 0
  loc_BE1388: FLdPr Me
  loc_BE138B: MemLdRfVar from_stack_1.global_100
  loc_BE138E: CVarRef
  loc_BE1393: LitI2_Byte &HFF
  loc_BE1395: FLdZeroAd var_B0
  loc_BE1398: CVarAd
  loc_BE139C: PopAdLdVar
  loc_BE139D: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE13A2: FStStr var_1C8
  loc_BE13A5: LitI4 0
  loc_BE13AA: LitI4 0
  loc_BE13AF: LitI2_Byte 0
  loc_BE13B1: LitStr "right"
  loc_BE13B4: FLdZeroAd var_1C8
  loc_BE13B7: FStStrNoPop var_C4
  loc_BE13BA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE13BF: CVarStr var_E4
  loc_BE13C2: PopAdLdVar
  loc_BE13C3: FLdPr Me
  loc_BE13C6: MemLdRfVar from_stack_1.htmFile
  loc_BE13C9: LdPrVar
  loc_BE13CB: LateMemCall
  loc_BE13D1: FFreeStr var_C4 = ""
  loc_BE13D8: FFree1Ad var_94
  loc_BE13DB: FFreeVar var_C0 = ""
  loc_BE13E2: FLdRfVar var_B0
  loc_BE13E5: LitVarStr var_AC, "IvaMoba"
  loc_BE13EA: PopAdLdVar
  loc_BE13EB: FLdRfVar var_94
  loc_BE13EE: FLdPr var_9C
  loc_BE13F1:  = Me.Fields
  loc_BE13F6: FLdPr var_94
  loc_BE13F9: from_stack_2 = Me.Item(from_stack_1)
  loc_BE13FE: LitI2_Byte 0
  loc_BE1400: FLdPr Me
  loc_BE1403: MemLdRfVar from_stack_1.global_104
  loc_BE1406: CVarRef
  loc_BE140B: LitI2_Byte &HFF
  loc_BE140D: FLdZeroAd var_B0
  loc_BE1410: CVarAd
  loc_BE1414: PopAdLdVar
  loc_BE1415: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE141A: FStStr var_1C8
  loc_BE141D: LitI4 0
  loc_BE1422: LitI4 0
  loc_BE1427: LitI2_Byte 0
  loc_BE1429: LitStr "right"
  loc_BE142C: FLdZeroAd var_1C8
  loc_BE142F: FStStrNoPop var_C4
  loc_BE1432: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1437: CVarStr var_E4
  loc_BE143A: PopAdLdVar
  loc_BE143B: FLdPr Me
  loc_BE143E: MemLdRfVar from_stack_1.htmFile
  loc_BE1441: LdPrVar
  loc_BE1443: LateMemCall
  loc_BE1449: FFreeStr var_C4 = ""
  loc_BE1450: FFree1Ad var_94
  loc_BE1453: FFreeVar var_C0 = ""
  loc_BE145A: Branch loc_BE1520
  loc_BE145D: FLdRfVar var_B0
  loc_BE1460: LitVarStr var_AC, "ImpoMoba"
  loc_BE1465: PopAdLdVar
  loc_BE1466: FLdRfVar var_94
  loc_BE1469: FLdPr var_9C
  loc_BE146C:  = Me.Fields
  loc_BE1471: FLdPr var_94
  loc_BE1474: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1479: LitI2_Byte 0
  loc_BE147B: FLdPr Me
  loc_BE147E: MemLdRfVar from_stack_1.global_96
  loc_BE1481: CVarRef
  loc_BE1486: LitI2_Byte &HFF
  loc_BE1488: FLdZeroAd var_B0
  loc_BE148B: CVarAd
  loc_BE148F: PopAdLdVar
  loc_BE1490: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1495: FStStr var_90
  loc_BE1498: FFree1Ad var_94
  loc_BE149B: FFree1Var var_C0 = ""
  loc_BE149E: FLdRfVar var_B0
  loc_BE14A1: LitVarStr var_AC, "ComiMoba"
  loc_BE14A6: PopAdLdVar
  loc_BE14A7: FLdRfVar var_94
  loc_BE14AA: FLdPr var_9C
  loc_BE14AD:  = Me.Fields
  loc_BE14B2: FLdPr var_94
  loc_BE14B5: from_stack_2 = Me.Item(from_stack_1)
  loc_BE14BA: LitI2_Byte 0
  loc_BE14BC: FLdPr Me
  loc_BE14BF: MemLdRfVar from_stack_1.global_100
  loc_BE14C2: CVarRef
  loc_BE14C7: LitI2_Byte &HFF
  loc_BE14C9: FLdZeroAd var_B0
  loc_BE14CC: CVarAd
  loc_BE14D0: PopAdLdVar
  loc_BE14D1: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE14D6: FStStr var_90
  loc_BE14D9: FFree1Ad var_94
  loc_BE14DC: FFree1Var var_C0 = ""
  loc_BE14DF: FLdRfVar var_B0
  loc_BE14E2: LitVarStr var_AC, "IvaMoba"
  loc_BE14E7: PopAdLdVar
  loc_BE14E8: FLdRfVar var_94
  loc_BE14EB: FLdPr var_9C
  loc_BE14EE:  = Me.Fields
  loc_BE14F3: FLdPr var_94
  loc_BE14F6: from_stack_2 = Me.Item(from_stack_1)
  loc_BE14FB: LitI2_Byte 0
  loc_BE14FD: FLdPr Me
  loc_BE1500: MemLdRfVar from_stack_1.global_104
  loc_BE1503: CVarRef
  loc_BE1508: LitI2_Byte &HFF
  loc_BE150A: FLdZeroAd var_B0
  loc_BE150D: CVarAd
  loc_BE1511: PopAdLdVar
  loc_BE1512: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1517: FStStr var_90
  loc_BE151A: FFree1Ad var_94
  loc_BE151D: FFree1Var var_C0 = ""
  loc_BE1520: Branch loc_BE169D
  loc_BE1523: FLdRfVar var_96
  loc_BE1526: FLdPr Me
  loc_BE1529: VCallAd Control_ID_chkSintetico
  loc_BE152C: FStAdFunc var_94
  loc_BE152F: FLdPr var_94
  loc_BE1532:  = Me.Value
  loc_BE1537: FLdI2 var_96
  loc_BE153A: CI4UI1
  loc_BE153B: LitI4 0
  loc_BE1540: EqI4
  loc_BE1541: FFree1Ad var_94
  loc_BE1544: BranchF loc_BE169D
  loc_BE1547: FLdRfVar var_B0
  loc_BE154A: LitVarStr var_AC, "ImpoMoba"
  loc_BE154F: PopAdLdVar
  loc_BE1550: FLdRfVar var_94
  loc_BE1553: FLdPr var_9C
  loc_BE1556:  = Me.Fields
  loc_BE155B: FLdPr var_94
  loc_BE155E: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1563: LitI2_Byte 0
  loc_BE1565: LitVar_Missing var_E4
  loc_BE1568: LitI2_Byte &HFF
  loc_BE156A: FLdZeroAd var_B0
  loc_BE156D: CVarAd
  loc_BE1571: PopAdLdVar
  loc_BE1572: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1577: FStStr var_1C8
  loc_BE157A: LitI4 0
  loc_BE157F: LitI4 0
  loc_BE1584: LitI2_Byte 0
  loc_BE1586: LitStr "right"
  loc_BE1589: FLdZeroAd var_1C8
  loc_BE158C: FStStrNoPop var_C4
  loc_BE158F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1594: CVarStr var_104
  loc_BE1597: PopAdLdVar
  loc_BE1598: FLdPr Me
  loc_BE159B: MemLdRfVar from_stack_1.htmFile
  loc_BE159E: LdPrVar
  loc_BE15A0: LateMemCall
  loc_BE15A6: FFreeStr var_C4 = ""
  loc_BE15AD: FFree1Ad var_94
  loc_BE15B0: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE15B9: FLdRfVar var_B0
  loc_BE15BC: LitVarStr var_AC, "ComiMoba"
  loc_BE15C1: PopAdLdVar
  loc_BE15C2: FLdRfVar var_94
  loc_BE15C5: FLdPr var_9C
  loc_BE15C8:  = Me.Fields
  loc_BE15CD: FLdPr var_94
  loc_BE15D0: from_stack_2 = Me.Item(from_stack_1)
  loc_BE15D5: LitI2_Byte 0
  loc_BE15D7: LitVar_Missing var_E4
  loc_BE15DA: LitI2_Byte &HFF
  loc_BE15DC: FLdZeroAd var_B0
  loc_BE15DF: CVarAd
  loc_BE15E3: PopAdLdVar
  loc_BE15E4: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE15E9: FStStr var_1C8
  loc_BE15EC: LitI4 0
  loc_BE15F1: LitI4 0
  loc_BE15F6: LitI2_Byte 0
  loc_BE15F8: LitStr "right"
  loc_BE15FB: FLdZeroAd var_1C8
  loc_BE15FE: FStStrNoPop var_C4
  loc_BE1601: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1606: CVarStr var_104
  loc_BE1609: PopAdLdVar
  loc_BE160A: FLdPr Me
  loc_BE160D: MemLdRfVar from_stack_1.htmFile
  loc_BE1610: LdPrVar
  loc_BE1612: LateMemCall
  loc_BE1618: FFreeStr var_C4 = ""
  loc_BE161F: FFree1Ad var_94
  loc_BE1622: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE162B: FLdRfVar var_B0
  loc_BE162E: LitVarStr var_AC, "IvaMoba"
  loc_BE1633: PopAdLdVar
  loc_BE1634: FLdRfVar var_94
  loc_BE1637: FLdPr var_9C
  loc_BE163A:  = Me.Fields
  loc_BE163F: FLdPr var_94
  loc_BE1642: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1647: LitI2_Byte 0
  loc_BE1649: LitVar_Missing var_E4
  loc_BE164C: LitI2_Byte &HFF
  loc_BE164E: FLdZeroAd var_B0
  loc_BE1651: CVarAd
  loc_BE1655: PopAdLdVar
  loc_BE1656: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE165B: FStStr var_1C8
  loc_BE165E: LitI4 0
  loc_BE1663: LitI4 0
  loc_BE1668: LitI2_Byte 0
  loc_BE166A: LitStr "right"
  loc_BE166D: FLdZeroAd var_1C8
  loc_BE1670: FStStrNoPop var_C4
  loc_BE1673: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1678: CVarStr var_104
  loc_BE167B: PopAdLdVar
  loc_BE167C: FLdPr Me
  loc_BE167F: MemLdRfVar from_stack_1.htmFile
  loc_BE1682: LdPrVar
  loc_BE1684: LateMemCall
  loc_BE168A: FFreeStr var_C4 = ""
  loc_BE1691: FFree1Ad var_94
  loc_BE1694: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE169D: LitVarStr var_AC, "     </tr>"
  loc_BE16A2: PopAdLdVar
  loc_BE16A3: FLdPr Me
  loc_BE16A6: MemLdRfVar from_stack_1.htmFile
  loc_BE16A9: LdPrVar
  loc_BE16AB: LateMemCall
  loc_BE16B1: FLdRfVar var_C0
  loc_BE16B4: FLdRfVar var_B0
  loc_BE16B7: LitVarStr var_AC, "CodiBanc"
  loc_BE16BC: PopAdLdVar
  loc_BE16BD: FLdRfVar var_94
  loc_BE16C0: FLdPr var_9C
  loc_BE16C3:  = Me.Fields
  loc_BE16C8: FLdPr var_94
  loc_BE16CB: from_stack_2 = Me.Item(from_stack_1)
  loc_BE16D0: FLdPr var_B0
  loc_BE16D3:  = Me.Value
  loc_BE16D8: FLdRfVar var_C0
  loc_BE16DB: CStrVarTmp
  loc_BE16DC: FStStr var_88
  loc_BE16DF: FFreeAd var_94 = ""
  loc_BE16E6: FFree1Var var_C0 = ""
  loc_BE16E9: FLdPr Me
  loc_BE16EC: MemLdRfVar from_stack_1.global_76
  loc_BE16EF: NewIfNullPr clsbase
  loc_BE16F2: Call clsbase.MoveSiguiente()
  loc_BE16F7: Branch loc_BE21CD
  loc_BE16FA: FLdRfVar var_96
  loc_BE16FD: FLdPr Me
  loc_BE1700: VCallAd Control_ID_optCodiEnre
  loc_BE1703: FStAdFunc var_94
  loc_BE1706: FLdPr var_94
  loc_BE1709:  = Me.Value
  loc_BE170E: FLdI2 var_96
  loc_BE1711: LitI2_Byte &HFF
  loc_BE1713: EqI2
  loc_BE1714: FFree1Ad var_94
  loc_BE1717: BranchF loc_BE21CD
  loc_BE171A: ILdRf var_88
  loc_BE171D: LitStr vbNullString
  loc_BE1720: NeStr
  loc_BE1722: ILdRf var_88
  loc_BE1725: FLdRfVar var_C0
  loc_BE1728: FLdRfVar var_B0
  loc_BE172B: LitVarStr var_AC, "CodiEnre"
  loc_BE1730: PopAdLdVar
  loc_BE1731: FLdRfVar var_94
  loc_BE1734: FLdPr var_9C
  loc_BE1737:  = Me.Fields
  loc_BE173C: FLdPr var_94
  loc_BE173F: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1744: FLdPr var_B0
  loc_BE1747:  = Me.Value
  loc_BE174C: FLdRfVar var_C0
  loc_BE174F: FnCStrVar
  loc_BE1751: FStStrNoPop var_C4
  loc_BE1754: NeStr
  loc_BE1756: AndI4
  loc_BE1757: FFree1Str var_C4
  loc_BE175A: FFreeAd var_94 = ""
  loc_BE1761: FFree1Var var_C0 = ""
  loc_BE1764: BranchF loc_BE178F
  loc_BE1767: LitVarStr var_AC, "</table>"
  loc_BE176C: PopAdLdVar
  loc_BE176D: FLdPr Me
  loc_BE1770: MemLdRfVar from_stack_1.htmFile
  loc_BE1773: LdPrVar
  loc_BE1775: LateMemCall
  loc_BE177B: LitVarStr var_AC, "<br>"
  loc_BE1780: PopAdLdVar
  loc_BE1781: FLdPr Me
  loc_BE1784: MemLdRfVar from_stack_1.htmFile
  loc_BE1787: LdPrVar
  loc_BE1789: LateMemCall
  loc_BE178F: ILdRf var_88
  loc_BE1792: FLdRfVar var_C0
  loc_BE1795: FLdRfVar var_B0
  loc_BE1798: LitVarStr var_AC, "CodiEnre"
  loc_BE179D: PopAdLdVar
  loc_BE179E: FLdRfVar var_94
  loc_BE17A1: FLdPr var_9C
  loc_BE17A4:  = Me.Fields
  loc_BE17A9: FLdPr var_94
  loc_BE17AC: from_stack_2 = Me.Item(from_stack_1)
  loc_BE17B1: FLdPr var_B0
  loc_BE17B4:  = Me.Value
  loc_BE17B9: FLdRfVar var_C0
  loc_BE17BC: FnCStrVar
  loc_BE17BE: FStStrNoPop var_C4
  loc_BE17C1: NeStr
  loc_BE17C3: FFree1Str var_C4
  loc_BE17C6: FFreeAd var_94 = ""
  loc_BE17CD: FFree1Var var_C0 = ""
  loc_BE17D0: BranchF loc_BE1AE8
  loc_BE17D3: LitVarStr var_AC, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BE17D8: PopAdLdVar
  loc_BE17D9: FLdPr Me
  loc_BE17DC: MemLdRfVar from_stack_1.htmFile
  loc_BE17DF: LdPrVar
  loc_BE17E1: LateMemCall
  loc_BE17E7: LitVarStr var_AC, "  <THEAD>"
  loc_BE17EC: PopAdLdVar
  loc_BE17ED: FLdPr Me
  loc_BE17F0: MemLdRfVar from_stack_1.htmFile
  loc_BE17F3: LdPrVar
  loc_BE17F5: LateMemCall
  loc_BE17FB: LitVarStr var_AC, "  <tr align=""left"" valign=""top"">"
  loc_BE1800: PopAdLdVar
  loc_BE1801: FLdPr Me
  loc_BE1804: MemLdRfVar from_stack_1.htmFile
  loc_BE1807: LdPrVar
  loc_BE1809: LateMemCall
  loc_BE180F: LitVarStr var_D4, "    <td width=""70" & Chr(37) & """ class=""Totales"" colspan=""5"">Ente Recaudador: "
  loc_BE1814: FLdRfVar var_C0
  loc_BE1817: FLdRfVar var_B0
  loc_BE181A: LitVarStr var_AC, "CodiEnre"
  loc_BE181F: PopAdLdVar
  loc_BE1820: FLdRfVar var_94
  loc_BE1823: FLdPr var_9C
  loc_BE1826:  = Me.Fields
  loc_BE182B: FLdPr var_94
  loc_BE182E: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1833: FLdPr var_B0
  loc_BE1836:  = Me.Value
  loc_BE183B: FLdRfVar var_C0
  loc_BE183E: ConcatVar var_E4
  loc_BE1842: LitVarStr var_F4, " - "
  loc_BE1847: ConcatVar var_104
  loc_BE184B: FLdRfVar var_12C
  loc_BE184E: FLdRfVar var_11C
  loc_BE1851: LitVarStr var_118, "DetaEnre"
  loc_BE1856: PopAdLdVar
  loc_BE1857: FLdRfVar var_108
  loc_BE185A: FLdPr var_9C
  loc_BE185D:  = Me.Fields
  loc_BE1862: FLdPr var_108
  loc_BE1865: from_stack_2 = Me.Item(from_stack_1)
  loc_BE186A: FLdPr var_11C
  loc_BE186D:  = Me.Value
  loc_BE1872: FLdRfVar var_12C
  loc_BE1875: ConcatVar var_13C
  loc_BE1879: LitVarStr var_14C, "</td>"
  loc_BE187E: ConcatVar var_15C
  loc_BE1882: PopAdLdVar
  loc_BE1883: FLdPr Me
  loc_BE1886: MemLdRfVar from_stack_1.htmFile
  loc_BE1889: LdPrVar
  loc_BE188B: LateMemCall
  loc_BE1891: FFreeAd var_94 = "": var_B0 = "": var_108 = ""
  loc_BE189C: FFreeVar var_C0 = "": var_E4 = "": var_104 = "": var_12C = "": var_13C = ""
  loc_BE18AB: FLdRfVar var_B0
  loc_BE18AE: LitVarStr var_AC, "TotaImpo"
  loc_BE18B3: PopAdLdVar
  loc_BE18B4: FLdRfVar var_94
  loc_BE18B7: FLdPr var_9C
  loc_BE18BA:  = Me.Fields
  loc_BE18BF: FLdPr var_94
  loc_BE18C2: from_stack_2 = Me.Item(from_stack_1)
  loc_BE18C7: LitStr "    <td width=""15" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_BE18CA: LitI2_Byte 0
  loc_BE18CC: LitVar_Missing var_E4
  loc_BE18CF: LitI2_Byte &HFF
  loc_BE18D1: FLdZeroAd var_B0
  loc_BE18D4: CVarAd
  loc_BE18D8: PopAdLdVar
  loc_BE18D9: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE18DE: FStStrNoPop var_C4
  loc_BE18E1: ConcatStr
  loc_BE18E2: FStStrNoPop var_1C8
  loc_BE18E5: LitStr "</td>"
  loc_BE18E8: ConcatStr
  loc_BE18E9: CVarStr var_104
  loc_BE18EC: PopAdLdVar
  loc_BE18ED: FLdPr Me
  loc_BE18F0: MemLdRfVar from_stack_1.htmFile
  loc_BE18F3: LdPrVar
  loc_BE18F5: LateMemCall
  loc_BE18FB: FFreeStr var_C4 = ""
  loc_BE1902: FFree1Ad var_94
  loc_BE1905: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE190E: FLdRfVar var_B0
  loc_BE1911: LitVarStr var_AC, "TotaComi"
  loc_BE1916: PopAdLdVar
  loc_BE1917: FLdRfVar var_94
  loc_BE191A: FLdPr var_9C
  loc_BE191D:  = Me.Fields
  loc_BE1922: FLdPr var_94
  loc_BE1925: from_stack_2 = Me.Item(from_stack_1)
  loc_BE192A: LitStr "    <td width=""8" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_BE192D: LitI2_Byte 0
  loc_BE192F: LitVar_Missing var_E4
  loc_BE1932: LitI2_Byte &HFF
  loc_BE1934: FLdZeroAd var_B0
  loc_BE1937: CVarAd
  loc_BE193B: PopAdLdVar
  loc_BE193C: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1941: FStStrNoPop var_C4
  loc_BE1944: ConcatStr
  loc_BE1945: FStStrNoPop var_1C8
  loc_BE1948: LitStr "</td>"
  loc_BE194B: ConcatStr
  loc_BE194C: CVarStr var_104
  loc_BE194F: PopAdLdVar
  loc_BE1950: FLdPr Me
  loc_BE1953: MemLdRfVar from_stack_1.htmFile
  loc_BE1956: LdPrVar
  loc_BE1958: LateMemCall
  loc_BE195E: FFreeStr var_C4 = ""
  loc_BE1965: FFree1Ad var_94
  loc_BE1968: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE1971: FLdRfVar var_B0
  loc_BE1974: LitVarStr var_AC, "TotaIva"
  loc_BE1979: PopAdLdVar
  loc_BE197A: FLdRfVar var_94
  loc_BE197D: FLdPr var_9C
  loc_BE1980:  = Me.Fields
  loc_BE1985: FLdPr var_94
  loc_BE1988: from_stack_2 = Me.Item(from_stack_1)
  loc_BE198D: LitStr "    <td width=""7" & Chr(37) & """ align=""right"" class=""Totales"">"
  loc_BE1990: LitI2_Byte 0
  loc_BE1992: LitVar_Missing var_E4
  loc_BE1995: LitI2_Byte &HFF
  loc_BE1997: FLdZeroAd var_B0
  loc_BE199A: CVarAd
  loc_BE199E: PopAdLdVar
  loc_BE199F: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE19A4: FStStrNoPop var_C4
  loc_BE19A7: ConcatStr
  loc_BE19A8: FStStrNoPop var_1C8
  loc_BE19AB: LitStr "</td>"
  loc_BE19AE: ConcatStr
  loc_BE19AF: CVarStr var_104
  loc_BE19B2: PopAdLdVar
  loc_BE19B3: FLdPr Me
  loc_BE19B6: MemLdRfVar from_stack_1.htmFile
  loc_BE19B9: LdPrVar
  loc_BE19BB: LateMemCall
  loc_BE19C1: FFreeStr var_C4 = ""
  loc_BE19C8: FFree1Ad var_94
  loc_BE19CB: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE19D4: LitVarStr var_AC, "  </tr>"
  loc_BE19D9: PopAdLdVar
  loc_BE19DA: FLdPr Me
  loc_BE19DD: MemLdRfVar from_stack_1.htmFile
  loc_BE19E0: LdPrVar
  loc_BE19E2: LateMemCall
  loc_BE19E8: FLdRfVar var_96
  loc_BE19EB: FLdPr Me
  loc_BE19EE: VCallAd Control_ID_chkSintetico
  loc_BE19F1: FStAdFunc var_94
  loc_BE19F4: FLdPr var_94
  loc_BE19F7:  = Me.Value
  loc_BE19FC: FLdI2 var_96
  loc_BE19FF: CI4UI1
  loc_BE1A00: LitI4 0
  loc_BE1A05: EqI4
  loc_BE1A06: FFree1Ad var_94
  loc_BE1A09: BranchF loc_BE1AD4
  loc_BE1A0C: LitVarStr var_AC, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE1A11: PopAdLdVar
  loc_BE1A12: FLdPr Me
  loc_BE1A15: MemLdRfVar from_stack_1.htmFile
  loc_BE1A18: LdPrVar
  loc_BE1A1A: LateMemCall
  loc_BE1A20: LitVarStr var_AC, "    <th>Banco</th>"
  loc_BE1A25: PopAdLdVar
  loc_BE1A26: FLdPr Me
  loc_BE1A29: MemLdRfVar from_stack_1.htmFile
  loc_BE1A2C: LdPrVar
  loc_BE1A2E: LateMemCall
  loc_BE1A34: LitVarStr var_AC, "    <th>Fecha depósito (LB)</th>"
  loc_BE1A39: PopAdLdVar
  loc_BE1A3A: FLdPr Me
  loc_BE1A3D: MemLdRfVar from_stack_1.htmFile
  loc_BE1A40: LdPrVar
  loc_BE1A42: LateMemCall
  loc_BE1A48: LitVarStr var_AC, "    <th>Fecha recaudación</th>"
  loc_BE1A4D: PopAdLdVar
  loc_BE1A4E: FLdPr Me
  loc_BE1A51: MemLdRfVar from_stack_1.htmFile
  loc_BE1A54: LdPrVar
  loc_BE1A56: LateMemCall
  loc_BE1A5C: LitVarStr var_AC, "    <th>Tipo</th>"
  loc_BE1A61: PopAdLdVar
  loc_BE1A62: FLdPr Me
  loc_BE1A65: MemLdRfVar from_stack_1.htmFile
  loc_BE1A68: LdPrVar
  loc_BE1A6A: LateMemCall
  loc_BE1A70: LitVarStr var_AC, "    <th>Nro</th>"
  loc_BE1A75: PopAdLdVar
  loc_BE1A76: FLdPr Me
  loc_BE1A79: MemLdRfVar from_stack_1.htmFile
  loc_BE1A7C: LdPrVar
  loc_BE1A7E: LateMemCall
  loc_BE1A84: LitVarStr var_AC, "    <th>Importe</th>"
  loc_BE1A89: PopAdLdVar
  loc_BE1A8A: FLdPr Me
  loc_BE1A8D: MemLdRfVar from_stack_1.htmFile
  loc_BE1A90: LdPrVar
  loc_BE1A92: LateMemCall
  loc_BE1A98: LitVarStr var_AC, "    <th>Comisión</th>"
  loc_BE1A9D: PopAdLdVar
  loc_BE1A9E: FLdPr Me
  loc_BE1AA1: MemLdRfVar from_stack_1.htmFile
  loc_BE1AA4: LdPrVar
  loc_BE1AA6: LateMemCall
  loc_BE1AAC: LitVarStr var_AC, "    <th>Iva</th>"
  loc_BE1AB1: PopAdLdVar
  loc_BE1AB2: FLdPr Me
  loc_BE1AB5: MemLdRfVar from_stack_1.htmFile
  loc_BE1AB8: LdPrVar
  loc_BE1ABA: LateMemCall
  loc_BE1AC0: LitVarStr var_AC, "  </tr>"
  loc_BE1AC5: PopAdLdVar
  loc_BE1AC6: FLdPr Me
  loc_BE1AC9: MemLdRfVar from_stack_1.htmFile
  loc_BE1ACC: LdPrVar
  loc_BE1ACE: LateMemCall
  loc_BE1AD4: LitVarStr var_AC, "  </THEAD>"
  loc_BE1AD9: PopAdLdVar
  loc_BE1ADA: FLdPr Me
  loc_BE1ADD: MemLdRfVar from_stack_1.htmFile
  loc_BE1AE0: LdPrVar
  loc_BE1AE2: LateMemCall
  loc_BE1AE8: FLdRfVar var_96
  loc_BE1AEB: FLdPr Me
  loc_BE1AEE: VCallAd Control_ID_chkSintetico
  loc_BE1AF1: FStAdFunc var_94
  loc_BE1AF4: FLdPr var_94
  loc_BE1AF7:  = Me.Value
  loc_BE1AFC: FLdI2 var_96
  loc_BE1AFF: CI4UI1
  loc_BE1B00: LitI4 0
  loc_BE1B05: EqI4
  loc_BE1B06: FFree1Ad var_94
  loc_BE1B09: BranchF loc_BE1D9B
  loc_BE1B0C: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BE1B11: PopAdLdVar
  loc_BE1B12: FLdPr Me
  loc_BE1B15: MemLdRfVar from_stack_1.htmFile
  loc_BE1B18: LdPrVar
  loc_BE1B1A: LateMemCall
  loc_BE1B20: FLdRfVar var_C0
  loc_BE1B23: FLdRfVar var_B0
  loc_BE1B26: LitVarStr var_AC, "CodiBanc"
  loc_BE1B2B: PopAdLdVar
  loc_BE1B2C: FLdRfVar var_94
  loc_BE1B2F: FLdPr var_9C
  loc_BE1B32:  = Me.Fields
  loc_BE1B37: FLdPr var_94
  loc_BE1B3A: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1B3F: FLdPr var_B0
  loc_BE1B42:  = Me.Value
  loc_BE1B47: FLdRfVar var_104
  loc_BE1B4A: FLdRfVar var_11C
  loc_BE1B4D: LitVarStr var_F4, "DetaBanc"
  loc_BE1B52: PopAdLdVar
  loc_BE1B53: FLdRfVar var_108
  loc_BE1B56: FLdPr var_9C
  loc_BE1B59:  = Me.Fields
  loc_BE1B5E: FLdPr var_108
  loc_BE1B61: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1B66: FLdPr var_11C
  loc_BE1B69:  = Me.Value
  loc_BE1B6E: LitI4 0
  loc_BE1B73: LitI4 0
  loc_BE1B78: LitI2_Byte 0
  loc_BE1B7A: LitStr "left"
  loc_BE1B7D: FLdRfVar var_C0
  loc_BE1B80: LitVarStr var_D4, " "
  loc_BE1B85: ConcatVar var_E4
  loc_BE1B89: FLdRfVar var_104
  loc_BE1B8C: ConcatVar var_12C
  loc_BE1B90: CStrVarVal var_C4
  loc_BE1B94: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1B99: CVarStr var_13C
  loc_BE1B9C: PopAdLdVar
  loc_BE1B9D: FLdPr Me
  loc_BE1BA0: MemLdRfVar from_stack_1.htmFile
  loc_BE1BA3: LdPrVar
  loc_BE1BA5: LateMemCall
  loc_BE1BAB: FFree1Str var_C4
  loc_BE1BAE: FFreeAd var_94 = "": var_B0 = "": var_108 = ""
  loc_BE1BB9: FFreeVar var_C0 = "": var_E4 = "": var_104 = "": var_12C = ""
  loc_BE1BC6: FLdRfVar var_C0
  loc_BE1BC9: FLdRfVar var_B0
  loc_BE1BCC: LitVarStr var_AC, "FechMoba"
  loc_BE1BD1: PopAdLdVar
  loc_BE1BD2: FLdRfVar var_94
  loc_BE1BD5: FLdPr var_9C
  loc_BE1BD8:  = Me.Fields
  loc_BE1BDD: FLdPr var_94
  loc_BE1BE0: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1BE5: FLdPr var_B0
  loc_BE1BE8:  = Me.Value
  loc_BE1BED: LitI4 0
  loc_BE1BF2: LitI4 0
  loc_BE1BF7: LitI2_Byte 0
  loc_BE1BF9: LitStr "center"
  loc_BE1BFC: FLdRfVar var_C0
  loc_BE1BFF: CStrVarTmp
  loc_BE1C00: FStStrNoPop var_C4
  loc_BE1C03: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1C08: CVarStr var_E4
  loc_BE1C0B: PopAdLdVar
  loc_BE1C0C: FLdPr Me
  loc_BE1C0F: MemLdRfVar from_stack_1.htmFile
  loc_BE1C12: LdPrVar
  loc_BE1C14: LateMemCall
  loc_BE1C1A: FFree1Str var_C4
  loc_BE1C1D: FFreeAd var_94 = ""
  loc_BE1C24: FFreeVar var_C0 = ""
  loc_BE1C2B: FLdRfVar var_C0
  loc_BE1C2E: FLdRfVar var_B0
  loc_BE1C31: LitVarStr var_AC, "FeinMoba"
  loc_BE1C36: PopAdLdVar
  loc_BE1C37: FLdRfVar var_94
  loc_BE1C3A: FLdPr var_9C
  loc_BE1C3D:  = Me.Fields
  loc_BE1C42: FLdPr var_94
  loc_BE1C45: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1C4A: FLdPr var_B0
  loc_BE1C4D:  = Me.Value
  loc_BE1C52: LitI4 0
  loc_BE1C57: LitI4 0
  loc_BE1C5C: LitI2_Byte 0
  loc_BE1C5E: LitStr "center"
  loc_BE1C61: FLdRfVar var_C0
  loc_BE1C64: CStrVarTmp
  loc_BE1C65: FStStrNoPop var_C4
  loc_BE1C68: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1C6D: CVarStr var_E4
  loc_BE1C70: PopAdLdVar
  loc_BE1C71: FLdPr Me
  loc_BE1C74: MemLdRfVar from_stack_1.htmFile
  loc_BE1C77: LdPrVar
  loc_BE1C79: LateMemCall
  loc_BE1C7F: FFree1Str var_C4
  loc_BE1C82: FFreeAd var_94 = ""
  loc_BE1C89: FFreeVar var_C0 = ""
  loc_BE1C90: FLdRfVar var_C0
  loc_BE1C93: FLdRfVar var_B0
  loc_BE1C96: LitVarStr var_AC, "CodiTimb"
  loc_BE1C9B: PopAdLdVar
  loc_BE1C9C: FLdRfVar var_94
  loc_BE1C9F: FLdPr var_9C
  loc_BE1CA2:  = Me.Fields
  loc_BE1CA7: FLdPr var_94
  loc_BE1CAA: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1CAF: FLdPr var_B0
  loc_BE1CB2:  = Me.Value
  loc_BE1CB7: FLdRfVar var_104
  loc_BE1CBA: FLdRfVar var_11C
  loc_BE1CBD: LitVarStr var_F4, "DetaTimb"
  loc_BE1CC2: PopAdLdVar
  loc_BE1CC3: FLdRfVar var_108
  loc_BE1CC6: FLdPr var_9C
  loc_BE1CC9:  = Me.Fields
  loc_BE1CCE: FLdPr var_108
  loc_BE1CD1: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1CD6: FLdPr var_11C
  loc_BE1CD9:  = Me.Value
  loc_BE1CDE: LitI4 0
  loc_BE1CE3: LitI4 0
  loc_BE1CE8: LitI2_Byte 0
  loc_BE1CEA: LitStr "left"
  loc_BE1CED: FLdRfVar var_C0
  loc_BE1CF0: LitVarStr var_D4, " "
  loc_BE1CF5: ConcatVar var_E4
  loc_BE1CF9: FLdRfVar var_104
  loc_BE1CFC: ConcatVar var_12C
  loc_BE1D00: CStrVarVal var_C4
  loc_BE1D04: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1D09: CVarStr var_13C
  loc_BE1D0C: PopAdLdVar
  loc_BE1D0D: FLdPr Me
  loc_BE1D10: MemLdRfVar from_stack_1.htmFile
  loc_BE1D13: LdPrVar
  loc_BE1D15: LateMemCall
  loc_BE1D1B: FFree1Str var_C4
  loc_BE1D1E: FFreeAd var_94 = "": var_B0 = "": var_108 = ""
  loc_BE1D29: FFreeVar var_C0 = "": var_E4 = "": var_104 = "": var_12C = ""
  loc_BE1D36: FLdRfVar var_C0
  loc_BE1D39: FLdRfVar var_B0
  loc_BE1D3C: LitVarStr var_AC, "NumeMoba"
  loc_BE1D41: PopAdLdVar
  loc_BE1D42: FLdRfVar var_94
  loc_BE1D45: FLdPr var_9C
  loc_BE1D48:  = Me.Fields
  loc_BE1D4D: FLdPr var_94
  loc_BE1D50: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1D55: FLdPr var_B0
  loc_BE1D58:  = Me.Value
  loc_BE1D5D: LitI4 0
  loc_BE1D62: LitI4 0
  loc_BE1D67: LitI2_Byte 0
  loc_BE1D69: LitStr "right"
  loc_BE1D6C: FLdRfVar var_C0
  loc_BE1D6F: CStrVarTmp
  loc_BE1D70: FStStrNoPop var_C4
  loc_BE1D73: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1D78: CVarStr var_E4
  loc_BE1D7B: PopAdLdVar
  loc_BE1D7C: FLdPr Me
  loc_BE1D7F: MemLdRfVar from_stack_1.htmFile
  loc_BE1D82: LdPrVar
  loc_BE1D84: LateMemCall
  loc_BE1D8A: FFree1Str var_C4
  loc_BE1D8D: FFreeAd var_94 = ""
  loc_BE1D94: FFreeVar var_C0 = ""
  loc_BE1D9B: FLdPr Me
  loc_BE1D9E: MemLdI2 bSumar
  loc_BE1DA1: BranchF loc_BE1FF9
  loc_BE1DA4: FLdRfVar var_96
  loc_BE1DA7: FLdPr Me
  loc_BE1DAA: VCallAd Control_ID_chkSintetico
  loc_BE1DAD: FStAdFunc var_94
  loc_BE1DB0: FLdPr var_94
  loc_BE1DB3:  = Me.Value
  loc_BE1DB8: FLdI2 var_96
  loc_BE1DBB: CI4UI1
  loc_BE1DBC: LitI4 0
  loc_BE1DC1: EqI4
  loc_BE1DC2: FFree1Ad var_94
  loc_BE1DC5: BranchF loc_BE1F33
  loc_BE1DC8: FLdRfVar var_B0
  loc_BE1DCB: LitVarStr var_AC, "ImpoMoba"
  loc_BE1DD0: PopAdLdVar
  loc_BE1DD1: FLdRfVar var_94
  loc_BE1DD4: FLdPr var_9C
  loc_BE1DD7:  = Me.Fields
  loc_BE1DDC: FLdPr var_94
  loc_BE1DDF: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1DE4: LitI2_Byte 0
  loc_BE1DE6: FLdPr Me
  loc_BE1DE9: MemLdRfVar from_stack_1.global_96
  loc_BE1DEC: CVarRef
  loc_BE1DF1: LitI2_Byte &HFF
  loc_BE1DF3: FLdZeroAd var_B0
  loc_BE1DF6: CVarAd
  loc_BE1DFA: PopAdLdVar
  loc_BE1DFB: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1E00: FStStr var_1C8
  loc_BE1E03: LitI4 0
  loc_BE1E08: LitI4 0
  loc_BE1E0D: LitI2_Byte 0
  loc_BE1E0F: LitStr "right"
  loc_BE1E12: FLdZeroAd var_1C8
  loc_BE1E15: FStStrNoPop var_C4
  loc_BE1E18: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1E1D: CVarStr var_E4
  loc_BE1E20: PopAdLdVar
  loc_BE1E21: FLdPr Me
  loc_BE1E24: MemLdRfVar from_stack_1.htmFile
  loc_BE1E27: LdPrVar
  loc_BE1E29: LateMemCall
  loc_BE1E2F: FFreeStr var_C4 = ""
  loc_BE1E36: FFree1Ad var_94
  loc_BE1E39: FFreeVar var_C0 = ""
  loc_BE1E40: FLdRfVar var_B0
  loc_BE1E43: LitVarStr var_AC, "ComiMoba"
  loc_BE1E48: PopAdLdVar
  loc_BE1E49: FLdRfVar var_94
  loc_BE1E4C: FLdPr var_9C
  loc_BE1E4F:  = Me.Fields
  loc_BE1E54: FLdPr var_94
  loc_BE1E57: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1E5C: LitI2_Byte 0
  loc_BE1E5E: FLdPr Me
  loc_BE1E61: MemLdRfVar from_stack_1.global_100
  loc_BE1E64: CVarRef
  loc_BE1E69: LitI2_Byte &HFF
  loc_BE1E6B: FLdZeroAd var_B0
  loc_BE1E6E: CVarAd
  loc_BE1E72: PopAdLdVar
  loc_BE1E73: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1E78: FStStr var_1C8
  loc_BE1E7B: LitI4 0
  loc_BE1E80: LitI4 0
  loc_BE1E85: LitI2_Byte 0
  loc_BE1E87: LitStr "right"
  loc_BE1E8A: FLdZeroAd var_1C8
  loc_BE1E8D: FStStrNoPop var_C4
  loc_BE1E90: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1E95: CVarStr var_E4
  loc_BE1E98: PopAdLdVar
  loc_BE1E99: FLdPr Me
  loc_BE1E9C: MemLdRfVar from_stack_1.htmFile
  loc_BE1E9F: LdPrVar
  loc_BE1EA1: LateMemCall
  loc_BE1EA7: FFreeStr var_C4 = ""
  loc_BE1EAE: FFree1Ad var_94
  loc_BE1EB1: FFreeVar var_C0 = ""
  loc_BE1EB8: FLdRfVar var_B0
  loc_BE1EBB: LitVarStr var_AC, "IvaMoba"
  loc_BE1EC0: PopAdLdVar
  loc_BE1EC1: FLdRfVar var_94
  loc_BE1EC4: FLdPr var_9C
  loc_BE1EC7:  = Me.Fields
  loc_BE1ECC: FLdPr var_94
  loc_BE1ECF: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1ED4: LitI2_Byte 0
  loc_BE1ED6: FLdPr Me
  loc_BE1ED9: MemLdRfVar from_stack_1.global_104
  loc_BE1EDC: CVarRef
  loc_BE1EE1: LitI2_Byte &HFF
  loc_BE1EE3: FLdZeroAd var_B0
  loc_BE1EE6: CVarAd
  loc_BE1EEA: PopAdLdVar
  loc_BE1EEB: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1EF0: FStStr var_1C8
  loc_BE1EF3: LitI4 0
  loc_BE1EF8: LitI4 0
  loc_BE1EFD: LitI2_Byte 0
  loc_BE1EFF: LitStr "right"
  loc_BE1F02: FLdZeroAd var_1C8
  loc_BE1F05: FStStrNoPop var_C4
  loc_BE1F08: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE1F0D: CVarStr var_E4
  loc_BE1F10: PopAdLdVar
  loc_BE1F11: FLdPr Me
  loc_BE1F14: MemLdRfVar from_stack_1.htmFile
  loc_BE1F17: LdPrVar
  loc_BE1F19: LateMemCall
  loc_BE1F1F: FFreeStr var_C4 = ""
  loc_BE1F26: FFree1Ad var_94
  loc_BE1F29: FFreeVar var_C0 = ""
  loc_BE1F30: Branch loc_BE1FF6
  loc_BE1F33: FLdRfVar var_B0
  loc_BE1F36: LitVarStr var_AC, "ImpoMoba"
  loc_BE1F3B: PopAdLdVar
  loc_BE1F3C: FLdRfVar var_94
  loc_BE1F3F: FLdPr var_9C
  loc_BE1F42:  = Me.Fields
  loc_BE1F47: FLdPr var_94
  loc_BE1F4A: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1F4F: LitI2_Byte 0
  loc_BE1F51: FLdPr Me
  loc_BE1F54: MemLdRfVar from_stack_1.global_96
  loc_BE1F57: CVarRef
  loc_BE1F5C: LitI2_Byte &HFF
  loc_BE1F5E: FLdZeroAd var_B0
  loc_BE1F61: CVarAd
  loc_BE1F65: PopAdLdVar
  loc_BE1F66: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1F6B: FStStr var_90
  loc_BE1F6E: FFree1Ad var_94
  loc_BE1F71: FFree1Var var_C0 = ""
  loc_BE1F74: FLdRfVar var_B0
  loc_BE1F77: LitVarStr var_AC, "ComiMoba"
  loc_BE1F7C: PopAdLdVar
  loc_BE1F7D: FLdRfVar var_94
  loc_BE1F80: FLdPr var_9C
  loc_BE1F83:  = Me.Fields
  loc_BE1F88: FLdPr var_94
  loc_BE1F8B: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1F90: LitI2_Byte 0
  loc_BE1F92: FLdPr Me
  loc_BE1F95: MemLdRfVar from_stack_1.global_100
  loc_BE1F98: CVarRef
  loc_BE1F9D: LitI2_Byte &HFF
  loc_BE1F9F: FLdZeroAd var_B0
  loc_BE1FA2: CVarAd
  loc_BE1FA6: PopAdLdVar
  loc_BE1FA7: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1FAC: FStStr var_90
  loc_BE1FAF: FFree1Ad var_94
  loc_BE1FB2: FFree1Var var_C0 = ""
  loc_BE1FB5: FLdRfVar var_B0
  loc_BE1FB8: LitVarStr var_AC, "IvaMoba"
  loc_BE1FBD: PopAdLdVar
  loc_BE1FBE: FLdRfVar var_94
  loc_BE1FC1: FLdPr var_9C
  loc_BE1FC4:  = Me.Fields
  loc_BE1FC9: FLdPr var_94
  loc_BE1FCC: from_stack_2 = Me.Item(from_stack_1)
  loc_BE1FD1: LitI2_Byte 0
  loc_BE1FD3: FLdPr Me
  loc_BE1FD6: MemLdRfVar from_stack_1.global_104
  loc_BE1FD9: CVarRef
  loc_BE1FDE: LitI2_Byte &HFF
  loc_BE1FE0: FLdZeroAd var_B0
  loc_BE1FE3: CVarAd
  loc_BE1FE7: PopAdLdVar
  loc_BE1FE8: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE1FED: FStStr var_90
  loc_BE1FF0: FFree1Ad var_94
  loc_BE1FF3: FFree1Var var_C0 = ""
  loc_BE1FF6: Branch loc_BE2173
  loc_BE1FF9: FLdRfVar var_96
  loc_BE1FFC: FLdPr Me
  loc_BE1FFF: VCallAd Control_ID_chkSintetico
  loc_BE2002: FStAdFunc var_94
  loc_BE2005: FLdPr var_94
  loc_BE2008:  = Me.Value
  loc_BE200D: FLdI2 var_96
  loc_BE2010: CI4UI1
  loc_BE2011: LitI4 0
  loc_BE2016: EqI4
  loc_BE2017: FFree1Ad var_94
  loc_BE201A: BranchF loc_BE2173
  loc_BE201D: FLdRfVar var_B0
  loc_BE2020: LitVarStr var_AC, "ImpoMoba"
  loc_BE2025: PopAdLdVar
  loc_BE2026: FLdRfVar var_94
  loc_BE2029: FLdPr var_9C
  loc_BE202C:  = Me.Fields
  loc_BE2031: FLdPr var_94
  loc_BE2034: from_stack_2 = Me.Item(from_stack_1)
  loc_BE2039: LitI2_Byte 0
  loc_BE203B: LitVar_Missing var_E4
  loc_BE203E: LitI2_Byte &HFF
  loc_BE2040: FLdZeroAd var_B0
  loc_BE2043: CVarAd
  loc_BE2047: PopAdLdVar
  loc_BE2048: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE204D: FStStr var_1C8
  loc_BE2050: LitI4 0
  loc_BE2055: LitI4 0
  loc_BE205A: LitI2_Byte 0
  loc_BE205C: LitStr "right"
  loc_BE205F: FLdZeroAd var_1C8
  loc_BE2062: FStStrNoPop var_C4
  loc_BE2065: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE206A: CVarStr var_104
  loc_BE206D: PopAdLdVar
  loc_BE206E: FLdPr Me
  loc_BE2071: MemLdRfVar from_stack_1.htmFile
  loc_BE2074: LdPrVar
  loc_BE2076: LateMemCall
  loc_BE207C: FFreeStr var_C4 = ""
  loc_BE2083: FFree1Ad var_94
  loc_BE2086: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE208F: FLdRfVar var_B0
  loc_BE2092: LitVarStr var_AC, "ComiMoba"
  loc_BE2097: PopAdLdVar
  loc_BE2098: FLdRfVar var_94
  loc_BE209B: FLdPr var_9C
  loc_BE209E:  = Me.Fields
  loc_BE20A3: FLdPr var_94
  loc_BE20A6: from_stack_2 = Me.Item(from_stack_1)
  loc_BE20AB: LitI2_Byte 0
  loc_BE20AD: LitVar_Missing var_E4
  loc_BE20B0: LitI2_Byte &HFF
  loc_BE20B2: FLdZeroAd var_B0
  loc_BE20B5: CVarAd
  loc_BE20B9: PopAdLdVar
  loc_BE20BA: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE20BF: FStStr var_1C8
  loc_BE20C2: LitI4 0
  loc_BE20C7: LitI4 0
  loc_BE20CC: LitI2_Byte 0
  loc_BE20CE: LitStr "right"
  loc_BE20D1: FLdZeroAd var_1C8
  loc_BE20D4: FStStrNoPop var_C4
  loc_BE20D7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE20DC: CVarStr var_104
  loc_BE20DF: PopAdLdVar
  loc_BE20E0: FLdPr Me
  loc_BE20E3: MemLdRfVar from_stack_1.htmFile
  loc_BE20E6: LdPrVar
  loc_BE20E8: LateMemCall
  loc_BE20EE: FFreeStr var_C4 = ""
  loc_BE20F5: FFree1Ad var_94
  loc_BE20F8: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE2101: FLdRfVar var_B0
  loc_BE2104: LitVarStr var_AC, "IvaMoba"
  loc_BE2109: PopAdLdVar
  loc_BE210A: FLdRfVar var_94
  loc_BE210D: FLdPr var_9C
  loc_BE2110:  = Me.Fields
  loc_BE2115: FLdPr var_94
  loc_BE2118: from_stack_2 = Me.Item(from_stack_1)
  loc_BE211D: LitI2_Byte 0
  loc_BE211F: LitVar_Missing var_E4
  loc_BE2122: LitI2_Byte &HFF
  loc_BE2124: FLdZeroAd var_B0
  loc_BE2127: CVarAd
  loc_BE212B: PopAdLdVar
  loc_BE212C: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_BE2131: FStStr var_1C8
  loc_BE2134: LitI4 0
  loc_BE2139: LitI4 0
  loc_BE213E: LitI2_Byte 0
  loc_BE2140: LitStr "right"
  loc_BE2143: FLdZeroAd var_1C8
  loc_BE2146: FStStrNoPop var_C4
  loc_BE2149: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BE214E: CVarStr var_104
  loc_BE2151: PopAdLdVar
  loc_BE2152: FLdPr Me
  loc_BE2155: MemLdRfVar from_stack_1.htmFile
  loc_BE2158: LdPrVar
  loc_BE215A: LateMemCall
  loc_BE2160: FFreeStr var_C4 = ""
  loc_BE2167: FFree1Ad var_94
  loc_BE216A: FFreeVar var_C0 = "": var_E4 = ""
  loc_BE2173: LitVarStr var_AC, "     </tr>"
  loc_BE2178: PopAdLdVar
  loc_BE2179: FLdPr Me
  loc_BE217C: MemLdRfVar from_stack_1.htmFile
  loc_BE217F: LdPrVar
  loc_BE2181: LateMemCall
  loc_BE2187: FLdRfVar var_C0
  loc_BE218A: FLdRfVar var_B0
  loc_BE218D: LitVarStr var_AC, "CodiEnre"
  loc_BE2192: PopAdLdVar
  loc_BE2193: FLdRfVar var_94
  loc_BE2196: FLdPr var_9C
  loc_BE2199:  = Me.Fields
  loc_BE219E: FLdPr var_94
  loc_BE21A1: from_stack_2 = Me.Item(from_stack_1)
  loc_BE21A6: FLdPr var_B0
  loc_BE21A9:  = Me.Value
  loc_BE21AE: FLdRfVar var_C0
  loc_BE21B1: CStrVarTmp
  loc_BE21B2: FStStr var_88
  loc_BE21B5: FFreeAd var_94 = ""
  loc_BE21BC: FFree1Var var_C0 = ""
  loc_BE21BF: FLdPr Me
  loc_BE21C2: MemLdRfVar from_stack_1.global_76
  loc_BE21C5: NewIfNullPr clsbase
  loc_BE21C8: Call clsbase.MoveSiguiente()
  loc_BE21CD: LitNothing
  loc_BE21CF: FStAd var_9C 
  loc_BE21D3: Branch loc_BE0B54
  loc_BE21D6: LitVarStr var_AC, "</table>"
  loc_BE21DB: PopAdLdVar
  loc_BE21DC: FLdPr Me
  loc_BE21DF: MemLdRfVar from_stack_1.htmFile
  loc_BE21E2: LdPrVar
  loc_BE21E4: LateMemCall
  loc_BE21EA: LitVarStr var_AC, "<br>"
  loc_BE21EF: PopAdLdVar
  loc_BE21F0: FLdPr Me
  loc_BE21F3: MemLdRfVar from_stack_1.htmFile
  loc_BE21F6: LdPrVar
  loc_BE21F8: LateMemCall
  loc_BE21FE: LitVarStr var_AC, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BE2203: PopAdLdVar
  loc_BE2204: FLdPr Me
  loc_BE2207: MemLdRfVar from_stack_1.htmFile
  loc_BE220A: LdPrVar
  loc_BE220C: LateMemCall
  loc_BE2212: LitVarStr var_AC, "  <THEAD>"
  loc_BE2217: PopAdLdVar
  loc_BE2218: FLdPr Me
  loc_BE221B: MemLdRfVar from_stack_1.htmFile
  loc_BE221E: LdPrVar
  loc_BE2220: LateMemCall
  loc_BE2226: LitVarStr var_AC, "  <tr align=""left"" valign=""top"">"
  loc_BE222B: PopAdLdVar
  loc_BE222C: FLdPr Me
  loc_BE222F: MemLdRfVar from_stack_1.htmFile
  loc_BE2232: LdPrVar
  loc_BE2234: LateMemCall
  loc_BE223A: FLdRfVar var_C0
  loc_BE223D: FLdPr Me
  loc_BE2240: MemLdRfVar from_stack_1.global_96
  loc_BE2243: CVarRef
  loc_BE2248: ImpAdCallHresult  = CDec()
  loc_BE224D: FLdRfVar var_E4
  loc_BE2250: FLdPr Me
  loc_BE2253: MemLdRfVar from_stack_1.global_100
  loc_BE2256: CVarRef
  loc_BE225B: ImpAdCallHresult  = CDec()
  loc_BE2260: FLdRfVar var_12C
  loc_BE2263: FLdPr Me
  loc_BE2266: MemLdRfVar from_stack_1.global_104
  loc_BE2269: CVarRef
  loc_BE226E: ImpAdCallHresult  = CDec()
  loc_BE2273: LitStr "    <td class=""Totales"" colspan=""5"" align=""right"" width=""40" & Chr(37) & """>TOTAL GENERAL: "
  loc_BE2276: LitI4 1
  loc_BE227B: LitI4 1
  loc_BE2280: LitVarStr var_118, "currency"
  loc_BE2285: FStVarCopyObj var_15C
  loc_BE2288: FLdRfVar var_15C
  loc_BE228B: FLdRfVar var_C0
  loc_BE228E: FLdRfVar var_E4
  loc_BE2291: AddVar var_104
  loc_BE2295: FLdRfVar var_12C
  loc_BE2298: AddVar var_13C
  loc_BE229C: ImpAdCallI2 Format$(, )
  loc_BE22A1: FStStrNoPop var_C4
  loc_BE22A4: ConcatStr
  loc_BE22A5: FStStrNoPop var_1C8
  loc_BE22A8: LitStr "</th>"
  loc_BE22AB: ConcatStr
  loc_BE22AC: CVarStr var_184
  loc_BE22AF: PopAdLdVar
  loc_BE22B0: FLdPr Me
  loc_BE22B3: MemLdRfVar from_stack_1.htmFile
  loc_BE22B6: LdPrVar
  loc_BE22B8: LateMemCall
  loc_BE22BE: FFreeStr var_C4 = ""
  loc_BE22C5: FFreeVar var_C0 = "": var_E4 = "": var_104 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_BE22D6: LitStr "    <td class=""Totales"" align=""right"" width=""20" & Chr(37) & """>"
  loc_BE22D9: FLdPr Me
  loc_BE22DC: MemLdStr global_96
  loc_BE22DF: ConcatStr
  loc_BE22E0: FStStrNoPop var_C4
  loc_BE22E3: LitStr "</th>"
  loc_BE22E6: ConcatStr
  loc_BE22E7: CVarStr var_C0
  loc_BE22EA: PopAdLdVar
  loc_BE22EB: FLdPr Me
  loc_BE22EE: MemLdRfVar from_stack_1.htmFile
  loc_BE22F1: LdPrVar
  loc_BE22F3: LateMemCall
  loc_BE22F9: FFree1Str var_C4
  loc_BE22FC: FFree1Var var_C0 = ""
  loc_BE22FF: LitStr "    <td class=""Totales"" align=""right"" width=""20" & Chr(37) & """>"
  loc_BE2302: FLdPr Me
  loc_BE2305: MemLdStr global_100
  loc_BE2308: ConcatStr
  loc_BE2309: FStStrNoPop var_C4
  loc_BE230C: LitStr "</th>"
  loc_BE230F: ConcatStr
  loc_BE2310: CVarStr var_C0
  loc_BE2313: PopAdLdVar
  loc_BE2314: FLdPr Me
  loc_BE2317: MemLdRfVar from_stack_1.htmFile
  loc_BE231A: LdPrVar
  loc_BE231C: LateMemCall
  loc_BE2322: FFree1Str var_C4
  loc_BE2325: FFree1Var var_C0 = ""
  loc_BE2328: LitStr "    <td class=""Totales"" align=""right"" width=""20" & Chr(37) & """>"
  loc_BE232B: FLdPr Me
  loc_BE232E: MemLdStr global_104
  loc_BE2331: ConcatStr
  loc_BE2332: FStStrNoPop var_C4
  loc_BE2335: LitStr "</th>"
  loc_BE2338: ConcatStr
  loc_BE2339: CVarStr var_C0
  loc_BE233C: PopAdLdVar
  loc_BE233D: FLdPr Me
  loc_BE2340: MemLdRfVar from_stack_1.htmFile
  loc_BE2343: LdPrVar
  loc_BE2345: LateMemCall
  loc_BE234B: FFree1Str var_C4
  loc_BE234E: FFree1Var var_C0 = ""
  loc_BE2351: LitVarStr var_AC, "  </tr>"
  loc_BE2356: PopAdLdVar
  loc_BE2357: FLdPr Me
  loc_BE235A: MemLdRfVar from_stack_1.htmFile
  loc_BE235D: LdPrVar
  loc_BE235F: LateMemCall
  loc_BE2365: LitVarStr var_AC, "  </THEAD>"
  loc_BE236A: PopAdLdVar
  loc_BE236B: FLdPr Me
  loc_BE236E: MemLdRfVar from_stack_1.htmFile
  loc_BE2371: LdPrVar
  loc_BE2373: LateMemCall
  loc_BE2379: LitVarStr var_AC, "</table>"
  loc_BE237E: PopAdLdVar
  loc_BE237F: FLdPr Me
  loc_BE2382: MemLdRfVar from_stack_1.htmFile
  loc_BE2385: LdPrVar
  loc_BE2387: LateMemCall
  loc_BE238D: Call Proc_192_33_9833B0()
  loc_BE2392: FLdPr Me
  loc_BE2395: MemLdRfVar from_stack_1.htmFile
  loc_BE2398: LdPrVar
  loc_BE239A: LateMemCall
  loc_BE23A0: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_BE23A5: LitI2_Byte 0
  loc_BE23A7: FLdPr Me
  loc_BE23AA: MemStI2 bSumar
  loc_BE23AD: ExitProcHresult
End Sub

Private Function Proc_192_32_A5564C() 'A5564C
  'Data Table: 4C485C
  loc_A55384: LitVarStr var_94, "<html>"
  loc_A55389: PopAdLdVar
  loc_A5538A: FLdPr Me
  loc_A5538D: MemLdRfVar from_stack_1.htmFile
  loc_A55390: LdPrVar
  loc_A55392: LateMemCall
  loc_A55398: LitVarStr var_94, "<head>"
  loc_A5539D: PopAdLdVar
  loc_A5539E: FLdPr Me
  loc_A553A1: MemLdRfVar from_stack_1.htmFile
  loc_A553A4: LdPrVar
  loc_A553A6: LateMemCall
  loc_A553AC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A553B1: PopAdLdVar
  loc_A553B2: FLdPr Me
  loc_A553B5: MemLdRfVar from_stack_1.htmFile
  loc_A553B8: LdPrVar
  loc_A553BA: LateMemCall
  loc_A553C0: LitStr "<title>"
  loc_A553C3: FLdRfVar var_A8
  loc_A553C6: FLdPr Me
  loc_A553C9:  = Me.Caption
  loc_A553CE: ILdRf var_A8
  loc_A553D1: ConcatStr
  loc_A553D2: FStStrNoPop var_AC
  loc_A553D5: LitStr "</title>"
  loc_A553D8: ConcatStr
  loc_A553D9: CVarStr var_BC
  loc_A553DC: PopAdLdVar
  loc_A553DD: FLdPr Me
  loc_A553E0: MemLdRfVar from_stack_1.htmFile
  loc_A553E3: LdPrVar
  loc_A553E5: LateMemCall
  loc_A553EB: FFreeStr var_A8 = ""
  loc_A553F2: FFree1Var var_BC = ""
  loc_A553F5: LitStr vbNullString
  loc_A553F8: ILdRf Me
  loc_A553FB: CastAd
  loc_A553FE: FStAdFunc var_C0
  loc_A55401: FLdRfVar var_C0
  loc_A55404: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A55409: FFree1Ad var_C0
  loc_A5540C: LitI4 0
  loc_A55411: FStStrCopy var_AC
  loc_A55414: FLdRfVar var_AC
  loc_A55417: LitI4 0
  loc_A5541C: FStStrCopy var_A8
  loc_A5541F: FLdRfVar var_A8
  loc_A55422: LitI2_Byte 0
  loc_A55424: PopTmpLdAd2 var_C2
  loc_A55427: FLdPr Me
  loc_A5542A: MemLdRfVar from_stack_1.htmFile
  loc_A5542D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A55432: FFreeStr var_A8 = ""
  loc_A55439: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A5543E: PopAdLdVar
  loc_A5543F: FLdPr Me
  loc_A55442: MemLdRfVar from_stack_1.htmFile
  loc_A55445: LdPrVar
  loc_A55447: LateMemCall
  loc_A5544D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A55452: PopAdLdVar
  loc_A55453: FLdPr Me
  loc_A55456: MemLdRfVar from_stack_1.htmFile
  loc_A55459: LdPrVar
  loc_A5545B: LateMemCall
  loc_A55461: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom"">"
  loc_A55466: PopAdLdVar
  loc_A55467: FLdPr Me
  loc_A5546A: MemLdRfVar from_stack_1.htmFile
  loc_A5546D: LdPrVar
  loc_A5546F: LateMemCall
  loc_A55475: FLdPr Me
  loc_A55478: MemLdI2 bLogos
  loc_A5547B: BranchF loc_A55492
  loc_A5547E: LitVarStr var_94, "<img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A55483: PopAdLdVar
  loc_A55484: FLdPr Me
  loc_A55487: MemLdRfVar from_stack_1.htmFile
  loc_A5548A: LdPrVar
  loc_A5548C: LateMemCall
  loc_A55492: LitVarStr var_A4, "<br><p>"
  loc_A55497: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A5549C: FStVarCopyObj var_BC
  loc_A5549F: FLdRfVar var_BC
  loc_A554A2: FLdRfVar var_D4
  loc_A554A5: ImpAdCallFPR4  = Ucase()
  loc_A554AA: FLdRfVar var_D4
  loc_A554AD: ConcatVar var_E4
  loc_A554B1: LitVarStr var_F4, "</p><p>"
  loc_A554B6: ConcatVar var_104
  loc_A554BA: FLdRfVar var_A8
  loc_A554BD: FLdPr Me
  loc_A554C0:  = Me.Caption
  loc_A554C5: FLdZeroAd var_A8
  loc_A554C8: CVarStr var_114
  loc_A554CB: ConcatVar var_124
  loc_A554CF: LitVarStr var_134, "</p></th>"
  loc_A554D4: ConcatVar var_144
  loc_A554D8: PopAdLdVar
  loc_A554D9: FLdPr Me
  loc_A554DC: MemLdRfVar from_stack_1.htmFile
  loc_A554DF: LdPrVar
  loc_A554E1: LateMemCall
  loc_A554E7: FFreeVar var_BC = "": var_D4 = "": var_E4 = "": var_104 = "": var_114 = "": var_124 = ""
  loc_A554F8: LitVarStr var_94, "  </tr>"
  loc_A554FD: PopAdLdVar
  loc_A554FE: FLdPr Me
  loc_A55501: MemLdRfVar from_stack_1.htmFile
  loc_A55504: LdPrVar
  loc_A55506: LateMemCall
  loc_A5550C: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A55511: PopAdLdVar
  loc_A55512: FLdPr Me
  loc_A55515: MemLdRfVar from_stack_1.htmFile
  loc_A55518: LdPrVar
  loc_A5551A: LateMemCall
  loc_A55520: LitVarStr var_94, "    <th colspan=""3"" align=""left"" valign=""bottom""><hr></th>"
  loc_A55525: PopAdLdVar
  loc_A55526: FLdPr Me
  loc_A55529: MemLdRfVar from_stack_1.htmFile
  loc_A5552C: LdPrVar
  loc_A5552E: LateMemCall
  loc_A55534: LitVarStr var_94, "  </tr>"
  loc_A55539: PopAdLdVar
  loc_A5553A: FLdPr Me
  loc_A5553D: MemLdRfVar from_stack_1.htmFile
  loc_A55540: LdPrVar
  loc_A55542: LateMemCall
  loc_A55548: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A5554D: PopAdLdVar
  loc_A5554E: FLdPr Me
  loc_A55551: MemLdRfVar from_stack_1.htmFile
  loc_A55554: LdPrVar
  loc_A55556: LateMemCall
  loc_A5555C: LitVarStr var_94, "    <th colspan=""3"" align=""left"" valign=""bottom"">"
  loc_A55561: PopAdLdVar
  loc_A55562: FLdPr Me
  loc_A55565: MemLdRfVar from_stack_1.htmFile
  loc_A55568: LdPrVar
  loc_A5556A: LateMemCall
  loc_A55570: LitStr " Desde: <span class=""Normal"">"
  loc_A55573: FLdPr Me
  loc_A55576: VCallAd Control_ID_mskDesde
  loc_A55579: FStAdFunc var_C0
  loc_A5557C: FLdPr var_C0
  loc_A5557F: LateIdLdVar var_BC DispID_15 0
  loc_A55586: CStrVarTmp
  loc_A55587: FStStrNoPop var_A8
  loc_A5558A: ConcatStr
  loc_A5558B: FStStrNoPop var_AC
  loc_A5558E: LitStr "</span><br>"
  loc_A55591: ConcatStr
  loc_A55592: CVarStr var_D4
  loc_A55595: PopAdLdVar
  loc_A55596: FLdPr Me
  loc_A55599: MemLdRfVar from_stack_1.htmFile
  loc_A5559C: LdPrVar
  loc_A5559E: LateMemCall
  loc_A555A4: FFreeStr var_A8 = ""
  loc_A555AB: FFree1Ad var_C0
  loc_A555AE: FFreeVar var_BC = ""
  loc_A555B5: LitStr "    Hasta: <span class=""Normal"">"
  loc_A555B8: FLdPr Me
  loc_A555BB: VCallAd Control_ID_mskHasta
  loc_A555BE: FStAdFunc var_C0
  loc_A555C1: FLdPr var_C0
  loc_A555C4: LateIdLdVar var_BC DispID_15 0
  loc_A555CB: CStrVarTmp
  loc_A555CC: FStStrNoPop var_A8
  loc_A555CF: ConcatStr
  loc_A555D0: FStStrNoPop var_AC
  loc_A555D3: LitStr "</span><br>"
  loc_A555D6: ConcatStr
  loc_A555D7: CVarStr var_D4
  loc_A555DA: PopAdLdVar
  loc_A555DB: FLdPr Me
  loc_A555DE: MemLdRfVar from_stack_1.htmFile
  loc_A555E1: LdPrVar
  loc_A555E3: LateMemCall
  loc_A555E9: FFreeStr var_A8 = ""
  loc_A555F0: FFree1Ad var_C0
  loc_A555F3: FFreeVar var_BC = ""
  loc_A555FA: LitStr " Tipo de movimiento: <span class=""Normal"">"
  loc_A555FD: LitStr "Depósitos"
  loc_A55600: ConcatStr
  loc_A55601: FStStrNoPop var_A8
  loc_A55604: LitStr "</span></th>"
  loc_A55607: ConcatStr
  loc_A55608: CVarStr var_BC
  loc_A5560B: PopAdLdVar
  loc_A5560C: FLdPr Me
  loc_A5560F: MemLdRfVar from_stack_1.htmFile
  loc_A55612: LdPrVar
  loc_A55614: LateMemCall
  loc_A5561A: FFree1Str var_A8
  loc_A5561D: FFree1Var var_BC = ""
  loc_A55620: LitVarStr var_94, "  </tr>"
  loc_A55625: PopAdLdVar
  loc_A55626: FLdPr Me
  loc_A55629: MemLdRfVar from_stack_1.htmFile
  loc_A5562C: LdPrVar
  loc_A5562E: LateMemCall
  loc_A55634: LitVarStr var_94, "</table>"
  loc_A55639: PopAdLdVar
  loc_A5563A: FLdPr Me
  loc_A5563D: MemLdRfVar from_stack_1.htmFile
  loc_A55640: LdPrVar
  loc_A55642: LateMemCall
  loc_A55648: ExitProcHresult
End Function

Private Function Proc_192_33_9833B0() '9833B0
  'Data Table: 4C485C
  loc_983370: LitVarStr var_94, "</table>"
  loc_983375: PopAdLdVar
  loc_983376: FLdPr Me
  loc_983379: MemLdRfVar from_stack_1.htmFile
  loc_98337C: LdPrVar
  loc_98337E: LateMemCall
  loc_983384: LitVarStr var_94, "</body>"
  loc_983389: PopAdLdVar
  loc_98338A: FLdPr Me
  loc_98338D: MemLdRfVar from_stack_1.htmFile
  loc_983390: LdPrVar
  loc_983392: LateMemCall
  loc_983398: LitVarStr var_94, "</html>"
  loc_98339D: PopAdLdVar
  loc_98339E: FLdPr Me
  loc_9833A1: MemLdRfVar from_stack_1.htmFile
  loc_9833A4: LdPrVar
  loc_9833A6: LateMemCall
  loc_9833AC: ExitProcHresult
End Function
