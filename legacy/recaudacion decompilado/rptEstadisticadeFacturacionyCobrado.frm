VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptEstadisticadeFacturacionyCobrado
  Caption = "Estadística de Facturación y Cobrado Por Periodo"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEstadisticadeFacturacionyCobrado.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 12096
  ClientHeight = 3276
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3024
    Width = 12096
    Height = 252
    TabIndex = 14
    OleObjectBlob = "rptEstadisticadeFacturacionyCobrado.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 10680
    Top = 2160
    Width = 855
    Height = 735
    TabIndex = 12
    Cancel = -1  'True
    Picture = "rptEstadisticadeFacturacionyCobrado.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEstadisticadeFacturacionyCobrado.frx":0B9C
    Left = 11160
    Top = 2160
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1680
    Width = 1815
    Height = 1215
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 11
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1680
    Width = 4095
    Height = 1215
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 9
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 8
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11895
    Height = 1575
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 10080
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 1
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 2280
      Top = 960
      Width = 1575
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptEstadisticadeFacturacionyCobrado.frx":0C00
    End
    Begin MSMask.MaskEdBox PeriInfoMsk
      Left = 2280
      Top = 480
      Width = 735
      Height = 420
      TabIndex = 3
      OleObjectBlob = "rptEstadisticadeFacturacionyCobrado.frx":0C9E
    End
    Begin VB.Label Label2
      Caption = "Periodo:"
      Left = 1320
      Top = 480
      Width = 870
      Height = 300
      TabIndex = 2
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaCucoLbl
      ForeColor = &HFF0000&
      Left = 3960
      Top = 960
      Width = 7740
      Height = 420
      TabIndex = 6
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Cuenta Contable:"
      Left = 360
      Top = 960
      Width = 1860
      Height = 300
      TabIndex = 4
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10800
    Top = 2520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptEstadisticadeFacturacionyCobrado.frx":0D2E
  End
End

Attribute VB_Name = "rptEstadisticadeFacturacionyCobrado"

Public bGenerado As Boolean


Private Sub CodiCucoMsk_UnknownEvent_0 '9C57C8
  'Data Table: 46BE10
  loc_9C57B4: FLdPr Me
  loc_9C57B7: VCallAd Control_ID_CodiCucoMsk
  loc_9C57BA: CVarAd
  loc_9C57BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C57C3: FFree1Var var_94 = ""
  loc_9C57C6: ExitProcHresult
End Sub

Private Function CodiCucoMsk_UnknownEvent_8(arg_C) 'AD79B4
  'Data Table: 46BE10
  loc_AD7890: FLdPr Me
  loc_AD7893: VCallAd Control_ID_PeriInfoMsk
  loc_AD7896: FStAdFunc var_88
  loc_AD7899: FLdPr var_88
  loc_AD789C: LateIdLdVar var_98 DispID_22 0
  loc_AD78A3: PopAd
  loc_AD78A5: FLdPr Me
  loc_AD78A8: VCallAd Control_ID_CodiCucoMsk
  loc_AD78AB: FStAdFunc var_9C
  loc_AD78AE: FLdPr var_9C
  loc_AD78B1: LateIdLdVar var_AC DispID_22 0
  loc_AD78B8: PopAd
  loc_AD78BA: LitI4 0
  loc_AD78BF: LitI4 0
  loc_AD78C4: FLdRfVar var_B8
  loc_AD78C7: Redim
  loc_AD78D1: LitVarStr var_C8, "1"
  loc_AD78D6: LitI4 0
  loc_AD78DB: ILdRf var_B8
  loc_AD78DE: Ary1StVarCopy
  loc_AD78E0: FLdRfVar var_B8
  loc_AD78E3: FLdRfVar var_AC
  loc_AD78E6: CStrVarTmp
  loc_AD78E7: FStStrNoPop var_B4
  loc_AD78EA: FLdRfVar var_98
  loc_AD78ED: CStrVarTmp
  loc_AD78EE: FStStrNoPop var_B0
  loc_AD78F1: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AD78F6: FStStr var_CC
  loc_AD78F9: FLdRfVar var_B8
  loc_AD78FC: Erase
  loc_AD78FD: ILdRf var_CC
  loc_AD7900: FLdPr Me
  loc_AD7903: MemStStrCopy
  loc_AD7907: FFreeStr var_B0 = "": var_B4 = ""
  loc_AD7910: FFreeAd var_88 = ""
  loc_AD7917: FFreeVar var_98 = ""
  loc_AD791E: FLdPr Me
  loc_AD7921: VCallAd Control_ID_CodiCucoMsk
  loc_AD7924: FStAdFuncNoPop
  loc_AD7927: CastAd
  loc_AD792A: FStAdFunc var_9C
  loc_AD792D: FLdRfVar var_9C
  loc_AD7930: FLdPr Me
  loc_AD7933: MemLdStr global_144
  loc_AD7936: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AD793B: IStI2 arg_C
  loc_AD793E: FFreeAd var_88 = ""
  loc_AD7945: ILdI2 arg_C
  loc_AD7948: NotI4
  loc_AD7949: BranchF loc_AD79B3
  loc_AD794C: FLdPr Me
  loc_AD794F: VCallAd Control_ID_PeriInfoMsk
  loc_AD7952: FStAdFunc var_88
  loc_AD7955: FLdPr var_88
  loc_AD7958: LateIdLdVar var_98 DispID_22 0
  loc_AD795F: PopAd
  loc_AD7961: FLdPr Me
  loc_AD7964: VCallAd Control_ID_CodiCucoMsk
  loc_AD7967: FStAdFunc var_9C
  loc_AD796A: FLdPr var_9C
  loc_AD796D: LateIdLdVar var_AC DispID_22 0
  loc_AD7974: CStrVarTmp
  loc_AD7975: FStStrNoPop var_B4
  loc_AD7978: FLdRfVar var_98
  loc_AD797B: CStrVarTmp
  loc_AD797C: FStStrNoPop var_B0
  loc_AD797F: CI2Str
  loc_AD7981: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AD7986: FStStrNoPop var_CC
  loc_AD7989: FLdPr Me
  loc_AD798C: VCallAd Control_ID_DetaCucoLbl
  loc_AD798F: FStAdFunc var_D0
  loc_AD7992: FLdPr var_D0
  loc_AD7995: Me.Caption = from_stack_1
  loc_AD799A: FFreeStr var_B0 = "": var_B4 = ""
  loc_AD79A3: FFreeAd var_88 = "": var_9C = ""
  loc_AD79AC: FFreeVar var_98 = ""
  loc_AD79B3: ExitProcHresult
End Function

Private Sub CodiCucoMsk_KeyPress(KeyAscii As Integer) 'AB7C94
  'Data Table: 46BE10
  loc_AB7BB8: ILdI2 KeyAscii
  loc_AB7BBB: LitI2_Byte &H20
  loc_AB7BBD: EqI2
  loc_AB7BBE: BranchF loc_AB7C92
  loc_AB7BC1: LitI2_Byte 0
  loc_AB7BC3: IStI2 KeyAscii
  loc_AB7BC6: ImpAdLdRf MemVar_D9468C
  loc_AB7BC9: NewIfNullAd
  loc_AB7BCC: FStAd var_88 
  loc_AB7BD0: LitStr "SELECT DISTINCT(CodiCuco), cu.* FROM infogov.cuentacontable as cu"
  loc_AB7BD3: LitStr " LEFT JOIN concepto as co ON co.PeriInfo = cu.PeriInfo AND co.ActiConc = cu.CodiCuco AND ActiConc <> ''"
  loc_AB7BD6: ConcatStr
  loc_AB7BD7: FStStrNoPop var_8C
  loc_AB7BDA: LitStr " WHERE co.PeriInfo = "
  loc_AB7BDD: ConcatStr
  loc_AB7BDE: FStStrNoPop var_A4
  loc_AB7BE1: FLdPr Me
  loc_AB7BE4: VCallAd Control_ID_PeriInfoMsk
  loc_AB7BE7: FStAdFunc var_90
  loc_AB7BEA: FLdPr var_90
  loc_AB7BED: LateIdLdVar var_A0 DispID_22 0
  loc_AB7BF4: CStrVarTmp
  loc_AB7BF5: FStStrNoPop var_A8
  loc_AB7BF8: ConcatStr
  loc_AB7BF9: FStStrNoPop var_AC
  loc_AB7BFC: LitStr " ORDER BY co.ActiConc"
  loc_AB7BFF: ConcatStr
  loc_AB7C00: FStStrNoPop var_B0
  loc_AB7C03: FLdPr var_88
  loc_AB7C06: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AB7C0B: FFreeStr var_8C = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AB7C18: FFree1Ad var_90
  loc_AB7C1B: FFree1Var var_A0 = ""
  loc_AB7C1E: LitVar_Missing var_D0
  loc_AB7C21: PopAdLdVar
  loc_AB7C22: LitVarI4
  loc_AB7C2A: PopAdLdVar
  loc_AB7C2B: FLdPr var_88
  loc_AB7C2E: Me.Show from_stack_1, from_stack_2
  loc_AB7C33: FLdRfVar var_8C
  loc_AB7C36: FLdPr var_88
  loc_AB7C39: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AB7C3E: FLdZeroAd var_8C
  loc_AB7C41: CVarStr var_A0
  loc_AB7C44: PopAdLdVar
  loc_AB7C45: FLdPr Me
  loc_AB7C48: VCallAd Control_ID_CodiCucoMsk
  loc_AB7C4B: FStAdFunc var_90
  loc_AB7C4E: FLdPr var_90
  loc_AB7C51: LateIdSt
  loc_AB7C56: FFree1Ad var_90
  loc_AB7C59: FFree1Var var_A0 = ""
  loc_AB7C5C: LitStr vbNullString
  loc_AB7C5F: FLdPr var_88
  loc_AB7C62: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AB7C67: FLdRfVar var_8C
  loc_AB7C6A: FLdPr var_88
  loc_AB7C6D: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AB7C72: ILdRf var_8C
  loc_AB7C75: FLdPr Me
  loc_AB7C78: VCallAd Control_ID_DetaCucoLbl
  loc_AB7C7B: FStAdFunc var_90
  loc_AB7C7E: FLdPr var_90
  loc_AB7C81: Me.Caption = from_stack_1
  loc_AB7C86: FFree1Str var_8C
  loc_AB7C89: FFree1Ad var_90
  loc_AB7C8C: LitNothing
  loc_AB7C8E: FStAd var_88 
  loc_AB7C92: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A72F04
  'Data Table: 46BE10
  loc_A72E90: LitI2_Byte 0
  loc_A72E92: FLdPr Me
  loc_A72E95: MemStI2 bGenerado
  loc_A72E98: LitI2_Byte 0
  loc_A72E9A: ILdRf Me
  loc_A72E9D: CastAd
  loc_A72EA0: FStAdFunc var_88
  loc_A72EA3: FLdRfVar var_88
  loc_A72EA6: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A72EAB: FFree1Ad var_88
  loc_A72EAE: ImpAdLdI2 MemVar_D93034
  loc_A72EB1: CStrUI1
  loc_A72EB3: CVarStr var_98
  loc_A72EB6: PopAdLdVar
  loc_A72EB7: FLdPr Me
  loc_A72EBA: VCallAd Control_ID_PeriInfoMsk
  loc_A72EBD: FStAdFunc var_88
  loc_A72EC0: FLdPr var_88
  loc_A72EC3: LateIdSt
  loc_A72EC8: FFree1Ad var_88
  loc_A72ECB: FFree1Var var_98 = ""
  loc_A72ECE: LitVarStr var_A8, vbNullString
  loc_A72ED3: PopAdLdVar
  loc_A72ED4: FLdPr Me
  loc_A72ED7: VCallAd Control_ID_CodiCucoMsk
  loc_A72EDA: FStAdFunc var_88
  loc_A72EDD: FLdPr var_88
  loc_A72EE0: LateIdSt
  loc_A72EE5: FFree1Ad var_88
  loc_A72EE8: Call HabilitarCriterio()
  loc_A72EED: ILdRf Me
  loc_A72EF0: CastAd
  loc_A72EF3: FStAdFunc var_88
  loc_A72EF6: FLdRfVar var_88
  loc_A72EF9: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A72EFE: FFree1Ad var_88
  loc_A72F01: ExitProcHresult
  loc_A72F02: MulI4
End Sub

Private Sub cmdPrevia_Click() '9CC520
  'Data Table: 46BE10
  loc_9CC508: ILdRf Me
  loc_9CC50B: CastAd
  loc_9CC50E: FStAdFunc var_88
  loc_9CC511: FLdRfVar var_88
  loc_9CC514: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CC519: FFree1Ad var_88
  loc_9CC51C: ExitProcHresult
  loc_9CC51D: FFreeAd var_FFFFFF68 = ""
End Sub

Private Sub cmdSalir_Click() 'A025CC
  'Data Table: 46BE10
  loc_A0259C: LitVarStr var_94, "Cerrando..."
  loc_A025A1: PopAdLdVar
  loc_A025A2: FLdPr Me
  loc_A025A5: VCallAd Control_ID_statusBar
  loc_A025A8: FStAdFunc var_A8
  loc_A025AB: FLdPr var_A8
  loc_A025AE: LateIdSt
  loc_A025B3: FFree1Ad var_A8
  loc_A025B6: ILdRf Me
  loc_A025B9: FStAdNoPop
  loc_A025BD: ImpAdLdRf MemVar_D9C5D8
  loc_A025C0: NewIfNullPr Global
  loc_A025C3: Global.Unload from_stack_1
  loc_A025C8: FFree1Ad var_A8
  loc_A025CB: ExitProcHresult
End Sub

Private Sub Form_Load() '9E1F4C
  'Data Table: 46BE10
  loc_9E1F30: ILdRf Me
  loc_9E1F33: CastAd
  loc_9E1F36: FStAdFunc var_88
  loc_9E1F39: FLdRfVar var_88
  loc_9E1F3C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E1F41: FFree1Ad var_88
  loc_9E1F44: Call cmdNueva_Click()
  loc_9E1F49: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CC0F8
  'Data Table: 46BE10
  loc_9CC0E0: FLdPr Me
  loc_9CC0E3: VCallAd Control_ID_wbbReporte
  loc_9CC0E6: FStAdFunc var_88
  loc_9CC0E9: FLdRfVar var_88
  loc_9CC0EC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CC0F1: FFree1Ad var_88
  loc_9CC0F4: ExitProcHresult
End Sub

Private Sub PeriInfoMsk_UnknownEvent_0 '9C55D0
  'Data Table: 46BE10
  loc_9C55BC: FLdPr Me
  loc_9C55BF: VCallAd Control_ID_PeriInfoMsk
  loc_9C55C2: CVarAd
  loc_9C55C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C55CB: FFree1Var var_94 = ""
  loc_9C55CE: ExitProcHresult
End Sub

Private Sub PeriInfoMsk_UnknownEvent_8 'A73300
  'Data Table: 46BE10
  loc_A73298: FLdPr Me
  loc_A7329B: VCallAd Control_ID_PeriInfoMsk
  loc_A7329E: FStAdFunc var_88
  loc_A732A1: FLdPr var_88
  loc_A732A4: LateIdLdVar var_98 DispID_22 0
  loc_A732AB: PopAd
  loc_A732AD: LitI2_Byte 0
  loc_A732AF: FLdRfVar var_98
  loc_A732B2: CStrVarTmp
  loc_A732B3: FStStrNoPop var_9C
  loc_A732B6: LitStr "Periodo"
  loc_A732B9: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A732BE: FStStrNoPop var_A0
  loc_A732C1: FLdPr Me
  loc_A732C4: MemStStrCopy
  loc_A732C8: FFreeStr var_9C = ""
  loc_A732CF: FFree1Ad var_88
  loc_A732D2: FFree1Var var_98 = ""
  loc_A732D5: FLdPr Me
  loc_A732D8: VCallAd Control_ID_PeriInfoMsk
  loc_A732DB: FStAdFuncNoPop
  loc_A732DE: CastAd
  loc_A732E1: FStAdFunc var_A4
  loc_A732E4: FLdRfVar var_A4
  loc_A732E7: FLdPr Me
  loc_A732EA: MemLdStr global_144
  loc_A732ED: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A732F2: IStI2 Cancel
  loc_A732F5: FFreeAd var_88 = ""
  loc_A732FC: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E32FC
  'Data Table: 46BE10
  loc_9E32E0: LitI2_Byte 0
  loc_9E32E2: PopTmpLdAd2 var_8A
  loc_9E32E5: ILdRf Me
  loc_9E32E8: CastAd
  loc_9E32EB: FStAdFunc var_88
  loc_9E32EE: FLdRfVar var_88
  loc_9E32F1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E32F6: FFree1Ad var_88
  loc_9E32F9: ExitProcHresult
  loc_9E32FA: NewIfNullPr Me
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1C588
  'Data Table: 46BE10
  loc_A1C550: FLdPr Me
  loc_A1C553: VCallAd Control_ID_statusBar
  loc_A1C556: FStAdFunc var_88
  loc_A1C559: FLdPr var_88
  loc_A1C55C: LateIdLdVar var_98 DispID_1 0
  loc_A1C563: CStrVarTmp
  loc_A1C564: CVarStr var_A8
  loc_A1C567: PopAdLdVar
  loc_A1C568: FLdPr Me
  loc_A1C56B: VCallAd Control_ID_statusBar
  loc_A1C56E: FStAdFunc var_BC
  loc_A1C571: FLdPr var_BC
  loc_A1C574: LateIdSt
  loc_A1C579: FFreeAd var_88 = ""
  loc_A1C580: FFreeVar var_98 = ""
  loc_A1C587: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9C8D50
  'Data Table: 46BE10
  loc_9C8D38: LitI2_Byte 0
  loc_9C8D3A: ILdRf Me
  loc_9C8D3D: CastAd
  loc_9C8D40: FStAdFunc var_88
  loc_9C8D43: FLdRfVar var_88
  loc_9C8D46: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C8D4B: FFree1Ad var_88
  loc_9C8D4E: ExitProcHresult
End Sub

Public Function bGeneradoGet() '46CA0C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46CA1B
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A42890
  'Data Table: 46BE10
  loc_A4284C: LitI4 0
  loc_A42851: LitI4 1
  loc_A42856: FLdRfVar var_88
  loc_A42859: Redim
  loc_A42863: FLdPr Me
  loc_A42866: VCallAd Control_ID_PeriInfoMsk
  loc_A42869: CVarAd
  loc_A4286D: ParmAry1St
  loc_A42873: FLdPr Me
  loc_A42876: VCallAd Control_ID_CodiCucoMsk
  loc_A42879: CVarAd
  loc_A4287D: ParmAry1St
  loc_A42883: FLdRfVar var_88
  loc_A42886: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A4288B: FLdRfVar var_88
  loc_A4288E: Erase
  loc_A4288F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BDF620
  'Data Table: 46BE10
  loc_BDEF84: FLdPr Me
  loc_BDEF87: MemLdI2 bGenerado
  loc_BDEF8A: BranchF loc_BDEF8E
  loc_BDEF8D: ExitProcHresult
  loc_BDEF8E: LitVarStr var_98, "Generando reporte..."
  loc_BDEF93: PopAdLdVar
  loc_BDEF94: FLdPr Me
  loc_BDEF97: VCallAd Control_ID_statusBar
  loc_BDEF9A: FStAdFunc var_AC
  loc_BDEF9D: FLdPr var_AC
  loc_BDEFA0: LateIdSt
  loc_BDEFA5: FFree1Ad var_AC
  loc_BDEFA8: LitI4 &HB
  loc_BDEFAD: CI2I4
  loc_BDEFAE: FLdPr Me
  loc_BDEFB1: Me.MousePointer = from_stack_1
  loc_BDEFB6: LitI2_Byte 0
  loc_BDEFB8: PopTmpLdAd2 var_AE
  loc_BDEFBB: Call PeriInfoMsk_UnknownEvent_8()
  loc_BDEFC0: FLdPr Me
  loc_BDEFC3: MemLdStr global_144
  loc_BDEFC6: LitStr vbNullString
  loc_BDEFC9: NeStr
  loc_BDEFCB: BranchF loc_BDEFD1
  loc_BDEFCE: Branch loc_BDF5F4
  loc_BDEFD1: LitI2_Byte 0
  loc_BDEFD3: PopTmpLdAd2 var_AE
  loc_BDEFD6: from_stack_2v = CodiCucoMsk_UnknownEvent_8(from_stack_1v)
  loc_BDEFDB: FLdPr Me
  loc_BDEFDE: MemLdStr global_144
  loc_BDEFE1: LitStr vbNullString
  loc_BDEFE4: NeStr
  loc_BDEFE6: BranchF loc_BDEFEC
  loc_BDEFE9: Branch loc_BDF5F4
  loc_BDEFEC: FLdPr Me
  loc_BDEFEF: VCallAd Control_ID_PeriInfoMsk
  loc_BDEFF2: FStAdFunc var_AC
  loc_BDEFF5: FLdPr var_AC
  loc_BDEFF8: LateIdLdVar var_C0 DispID_22 0
  loc_BDEFFF: PopAd
  loc_BDF001: LitI2_Byte &H1F
  loc_BDF003: LitI2_Byte &HC
  loc_BDF005: FLdRfVar var_C0
  loc_BDF008: CStrVarTmp
  loc_BDF009: FStStrNoPop var_C4
  loc_BDF00C: CI2Str
  loc_BDF00E: FLdRfVar var_D4
  loc_BDF011: ImpAdCallFPR4  = DateSerial(, , )
  loc_BDF016: LitI4 1
  loc_BDF01B: LitI4 1
  loc_BDF020: LitVarStr var_98, "yyyy-mm-dd"
  loc_BDF025: FStVarCopyObj var_E4
  loc_BDF028: FLdRfVar var_E4
  loc_BDF02B: FLdRfVar var_D4
  loc_BDF02E: ImpAdCallI2 Format$(, )
  loc_BDF033: FStStr var_88
  loc_BDF036: FFree1Str var_C4
  loc_BDF039: FFree1Ad var_AC
  loc_BDF03C: FFreeVar var_C0 = "": var_D4 = ""
  loc_BDF045: FLdPr Me
  loc_BDF048: MemLdRfVar from_stack_1.global_76
  loc_BDF04B: NewIfNullAd
  loc_BDF04E: FStAd var_E8 
  loc_BDF052: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_BDF055: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, 0 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,0)) as AforCtct,"
  loc_BDF058: ConcatStr
  loc_BDF059: FStStrNoPop var_C4
  loc_BDF05C: LitStr " sum(if(CodiTimo in (10,19,22,24),DebeCtct,0)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,0)) as CredCtct,"
  loc_BDF05F: ConcatStr
  loc_BDF060: FStStrNoPop var_EC
  loc_BDF063: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct, sum(if(CodiTimo in(6,7),CredCtct,000000000.00)) as DescCtct,"
  loc_BDF066: ConcatStr
  loc_BDF067: FStStrNoPop var_F0
  loc_BDF06A: LitStr " sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,0)) as Cobrado,"
  loc_BDF06D: ConcatStr
  loc_BDF06E: FStStrNoPop var_F4
  loc_BDF071: LitStr " sum(if((CodiTimo in (2,4,5,9,21,25))and(NumeApre<>0),CredCtct,0)) as CobradoApremio,"
  loc_BDF074: ConcatStr
  loc_BDF075: FStStrNoPop var_F8
  loc_BDF078: LitStr " sum(if((CodiTimo in(2,4,5,9,21,25))and(PeriCtct>=year(FealCtct)),CredCtct,0)) as CobradoActual,"
  loc_BDF07B: ConcatStr
  loc_BDF07C: FStStrNoPop var_FC
  loc_BDF07F: LitStr " sum(if((CodiTimo in(2,4,5,9,21,25))and(PeriCtct<year(FealCtct)),CredCtct,0)) as CobradoAnterior,"
  loc_BDF082: ConcatStr
  loc_BDF083: FStStrNoPop var_100
  loc_BDF086: LitStr " sum(if((CodiTimo in(2,4,5,9,21,25))and(PeriCtct>=year(FealCtct))and(NumeApre<>0),CredCtct,0)) as CobradoApremioActual,"
  loc_BDF089: ConcatStr
  loc_BDF08A: FStStrNoPop var_104
  loc_BDF08D: LitStr " sum(if((CodiTimo in(2,4,5,9,21,25))and(PeriCtct<year(FealCtct))and(NumeApre<>0),CredCtct,0)) as CobradoApremioAnterior"
  loc_BDF090: ConcatStr
  loc_BDF091: FStStrNoPop var_108
  loc_BDF094: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_BDF097: ConcatStr
  loc_BDF098: FStStrNoPop var_10C
  loc_BDF09B: FLdPr Me
  loc_BDF09E: VCallAd Control_ID_PeriInfoMsk
  loc_BDF0A1: FStAdFunc var_AC
  loc_BDF0A4: FLdPr var_AC
  loc_BDF0A7: LateIdLdVar var_C0 DispID_22 0
  loc_BDF0AE: CStrVarTmp
  loc_BDF0AF: FStStrNoPop var_110
  loc_BDF0B2: ConcatStr
  loc_BDF0B3: FStStrNoPop var_114
  loc_BDF0B6: LitStr " AND concepto.ActiConc = '"
  loc_BDF0B9: ConcatStr
  loc_BDF0BA: FStStrNoPop var_11C
  loc_BDF0BD: FLdPr Me
  loc_BDF0C0: VCallAd Control_ID_CodiCucoMsk
  loc_BDF0C3: FStAdFunc var_118
  loc_BDF0C6: FLdPr var_118
  loc_BDF0C9: LateIdLdVar var_D4 DispID_22 0
  loc_BDF0D0: CStrVarTmp
  loc_BDF0D1: FStStrNoPop var_120
  loc_BDF0D4: ConcatStr
  loc_BDF0D5: FStStrNoPop var_124
  loc_BDF0D8: LitStr "'"
  loc_BDF0DB: ConcatStr
  loc_BDF0DC: FStStrNoPop var_128
  loc_BDF0DF: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_BDF0E2: ConcatStr
  loc_BDF0E3: FStStrNoPop var_130
  loc_BDF0E6: FLdPr Me
  loc_BDF0E9: VCallAd Control_ID_PeriInfoMsk
  loc_BDF0EC: FStAdFunc var_12C
  loc_BDF0EF: FLdPr var_12C
  loc_BDF0F2: LateIdLdVar var_E4 DispID_22 0
  loc_BDF0F9: CStrVarTmp
  loc_BDF0FA: FStStrNoPop var_134
  loc_BDF0FD: ConcatStr
  loc_BDF0FE: FStStrNoPop var_138
  loc_BDF101: LitStr "-01-01' AND '"
  loc_BDF104: ConcatStr
  loc_BDF105: FStStrNoPop var_13C
  loc_BDF108: ILdRf var_88
  loc_BDF10B: ConcatStr
  loc_BDF10C: FStStrNoPop var_140
  loc_BDF10F: LitStr "' "
  loc_BDF112: ConcatStr
  loc_BDF113: FStStrNoPop var_144
  loc_BDF116: LitStr " GROUP BY ActiConc) UNION ALL"
  loc_BDF119: ConcatStr
  loc_BDF11A: FStStrNoPop var_148
  loc_BDF11D: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, ActiConc, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_BDF120: ConcatStr
  loc_BDF121: FStStrNoPop var_14C
  loc_BDF124: LitStr " 0 as AforCtct, 0 as DebeCtct, 0 as CredCtct, 0 as PresCtct, 0 as CondCtct, 0 as ExenCtct, 0 as DescCtct,"
  loc_BDF127: ConcatStr
  loc_BDF128: FStStrNoPop var_150
  loc_BDF12B: LitStr " 0 as Cobrado, 0 as CobradoApremio, 0 as CobradoActual, 0 as CobradoAnterior, 0 as CobradoApremioActual, 0 as CobradoApremioAnterior"
  loc_BDF12E: ConcatStr
  loc_BDF12F: FStStrNoPop var_154
  loc_BDF132: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_BDF135: ConcatStr
  loc_BDF136: FStStrNoPop var_16C
  loc_BDF139: FLdPr Me
  loc_BDF13C: VCallAd Control_ID_PeriInfoMsk
  loc_BDF13F: FStAdFunc var_158
  loc_BDF142: FLdPr var_158
  loc_BDF145: LateIdLdVar var_168 DispID_22 0
  loc_BDF14C: CStrVarTmp
  loc_BDF14D: FStStrNoPop var_170
  loc_BDF150: ConcatStr
  loc_BDF151: FStStrNoPop var_174
  loc_BDF154: LitStr " AND concepto.ActiConc = '"
  loc_BDF157: ConcatStr
  loc_BDF158: FStStrNoPop var_18C
  loc_BDF15B: FLdPr Me
  loc_BDF15E: VCallAd Control_ID_CodiCucoMsk
  loc_BDF161: FStAdFunc var_178
  loc_BDF164: FLdPr var_178
  loc_BDF167: LateIdLdVar var_188 DispID_22 0
  loc_BDF16E: CStrVarTmp
  loc_BDF16F: FStStrNoPop var_190
  loc_BDF172: ConcatStr
  loc_BDF173: FStStrNoPop var_194
  loc_BDF176: LitStr "'"
  loc_BDF179: ConcatStr
  loc_BDF17A: FStStrNoPop var_198
  loc_BDF17D: LitStr " WHERE ctacte.FealCtct < '"
  loc_BDF180: ConcatStr
  loc_BDF181: FStStrNoPop var_1B0
  loc_BDF184: FLdPr Me
  loc_BDF187: VCallAd Control_ID_PeriInfoMsk
  loc_BDF18A: FStAdFunc var_19C
  loc_BDF18D: FLdPr var_19C
  loc_BDF190: LateIdLdVar var_1AC DispID_22 0
  loc_BDF197: CStrVarTmp
  loc_BDF198: FStStrNoPop var_1B4
  loc_BDF19B: ConcatStr
  loc_BDF19C: FStStrNoPop var_1B8
  loc_BDF19F: LitStr "-01-01' GROUP BY ActiConc) UNION ALL"
  loc_BDF1A2: ConcatStr
  loc_BDF1A3: FStStrNoPop var_1BC
  loc_BDF1A6: LitStr " (SELECT histoctacte.CuenCtct, CodiOfic, ActiConc, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_BDF1A9: ConcatStr
  loc_BDF1AA: FStStrNoPop var_1C0
  loc_BDF1AD: LitStr " 0 as AforCtct, 0 as DebeCtct, 0 as CredCtct, 0 as PresCtct, 0 as CondCtct, 0 as ExenCtct, 0 as DescCtct,"
  loc_BDF1B0: ConcatStr
  loc_BDF1B1: FStStrNoPop var_1C4
  loc_BDF1B4: LitStr " 0 as Cobrado, 0 as CobradoApremio, 0 as CobradoActual, 0 as CobradoAnterior, 0 as CobradoApremioActual, 0 as CobradoApremioAnterior"
  loc_BDF1B7: ConcatStr
  loc_BDF1B8: FStStrNoPop var_1C8
  loc_BDF1BB: LitStr " FROM recahisto.histoctacte INNER JOIN concepto ON concepto.CodiConc = histoctacte.CodiConc AND concepto.PeriInfo = "
  loc_BDF1BE: ConcatStr
  loc_BDF1BF: FStStrNoPop var_1E0
  loc_BDF1C2: FLdPr Me
  loc_BDF1C5: VCallAd Control_ID_PeriInfoMsk
  loc_BDF1C8: FStAdFunc var_1CC
  loc_BDF1CB: FLdPr var_1CC
  loc_BDF1CE: LateIdLdVar var_1DC DispID_22 0
  loc_BDF1D5: CStrVarTmp
  loc_BDF1D6: FStStrNoPop var_1E4
  loc_BDF1D9: ConcatStr
  loc_BDF1DA: FStStrNoPop var_1E8
  loc_BDF1DD: LitStr " AND concepto.ActiConc = '"
  loc_BDF1E0: ConcatStr
  loc_BDF1E1: FStStrNoPop var_200
  loc_BDF1E4: FLdPr Me
  loc_BDF1E7: VCallAd Control_ID_CodiCucoMsk
  loc_BDF1EA: FStAdFunc var_1EC
  loc_BDF1ED: FLdPr var_1EC
  loc_BDF1F0: LateIdLdVar var_1FC DispID_22 0
  loc_BDF1F7: CStrVarTmp
  loc_BDF1F8: FStStrNoPop var_204
  loc_BDF1FB: ConcatStr
  loc_BDF1FC: FStStrNoPop var_208
  loc_BDF1FF: LitStr "'"
  loc_BDF202: ConcatStr
  loc_BDF203: FStStrNoPop var_20C
  loc_BDF206: LitStr " WHERE histoctacte.FealCtct < '"
  loc_BDF209: ConcatStr
  loc_BDF20A: FStStrNoPop var_224
  loc_BDF20D: FLdPr Me
  loc_BDF210: VCallAd Control_ID_PeriInfoMsk
  loc_BDF213: FStAdFunc var_210
  loc_BDF216: FLdPr var_210
  loc_BDF219: LateIdLdVar var_220 DispID_22 0
  loc_BDF220: CStrVarTmp
  loc_BDF221: FStStrNoPop var_228
  loc_BDF224: ConcatStr
  loc_BDF225: FStStrNoPop var_22C
  loc_BDF228: LitStr "-01-01' GROUP BY ActiConc); CREATE INDEX i_tribu ON tribu (ActiConc);"
  loc_BDF22B: ConcatStr
  loc_BDF22C: FStStrNoPop var_230
  loc_BDF22F: FLdPr var_E8
  loc_BDF232: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BDF237: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_C4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_BDF2A0: FFreeAd var_AC = "": var_118 = "": var_12C = "": var_158 = "": var_178 = "": var_19C = "": var_1CC = "": var_1EC = ""
  loc_BDF2B5: FFreeVar var_C0 = "": var_D4 = "": var_E4 = "": var_168 = "": var_188 = "": var_1AC = "": var_1DC = "": var_1FC = ""
  loc_BDF2CA: LitStr "SELECT tribu.ActiConc, DetaCuco, sum(SainCtct) as SaldoInicial, sum(AforCtct) as Facturado,"
  loc_BDF2CD: LitStr " sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(PresCtct) as PresCtct, sum(CondCtct) as CondCtct, sum(ExenCtct) as ExenCtct, sum(DescCtct) as DescCtct, sum(Cobrado) as CobrCtct, "
  loc_BDF2D0: ConcatStr
  loc_BDF2D1: FStStrNoPop var_C4
  loc_BDF2D4: LitStr " sum(SainCtct)+sum(AforCtct)+sum(DebeCtct)-sum(CredCtct)-sum(PresCtct)-sum(CondCtct)-sum(ExenCtct)-sum(DescCtct)-sum(Cobrado) as SaldoFinal,"
  loc_BDF2D7: ConcatStr
  loc_BDF2D8: FStStrNoPop var_EC
  loc_BDF2DB: LitStr " sum(Cobrado) as Cobrado, sum(CobradoApremio) as CobradoApremio, sum(CobradoActual) as CobradoActual, sum(CobradoAnterior) as CobradoAnterior,"
  loc_BDF2DE: ConcatStr
  loc_BDF2DF: FStStrNoPop var_F0
  loc_BDF2E2: LitStr " sum(CobradoApremioActual) as CobradoApremioActual, sum(CobradoApremioAnterior) as CobradoApremioAnterior"
  loc_BDF2E5: ConcatStr
  loc_BDF2E6: FStStrNoPop var_F4
  loc_BDF2E9: LitStr " FROM tribu LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = "
  loc_BDF2EC: ConcatStr
  loc_BDF2ED: FStStrNoPop var_F8
  loc_BDF2F0: FLdPr Me
  loc_BDF2F3: VCallAd Control_ID_PeriInfoMsk
  loc_BDF2F6: FStAdFunc var_AC
  loc_BDF2F9: FLdPr var_AC
  loc_BDF2FC: LateIdLdVar var_C0 DispID_22 0
  loc_BDF303: CStrVarTmp
  loc_BDF304: FStStrNoPop var_FC
  loc_BDF307: ConcatStr
  loc_BDF308: FStStrNoPop var_100
  loc_BDF30B: LitStr " AND c.CodiCuco = tribu.ActiConc"
  loc_BDF30E: ConcatStr
  loc_BDF30F: FStStrNoPop var_104
  loc_BDF312: LitStr " GROUP BY tribu.ActiConc"
  loc_BDF315: ConcatStr
  loc_BDF316: FStStrNoPop var_108
  loc_BDF319: FLdPr var_E8
  loc_BDF31C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BDF321: FFreeStr var_C4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_BDF336: FFree1Ad var_AC
  loc_BDF339: FFree1Var var_C0 = ""
  loc_BDF33C: FLdRfVar var_234
  loc_BDF33F: FLdPr var_E8
  loc_BDF342: from_stack_1 = clsctacte.RecordCount
  loc_BDF347: ILdRf var_234
  loc_BDF34A: LitI4 0
  loc_BDF34F: EqI4
  loc_BDF350: BranchF loc_BDF35E
  loc_BDF353: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BDF356: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BDF35B: Branch loc_BDF5F4
  loc_BDF35E: FLdPr var_E8
  loc_BDF361: Call clsctacte.MoveFirst()
  loc_BDF366: FLdRfVar var_C0
  loc_BDF369: FLdPr var_E8
  loc_BDF36C: from_stack_1 = clsctacte.SaldoInicial
  loc_BDF371: LitI2_Byte 0
  loc_BDF373: LitVar_Missing var_D4
  loc_BDF376: LitI2_Byte &HFF
  loc_BDF378: FLdVar var_C0
  loc_BDF37C: FLdPr Me
  loc_BDF37F: MemLdRfVar from_stack_1.global_80
  loc_BDF382: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF387: FFreeVar var_C0 = ""
  loc_BDF38E: FLdRfVar var_C0
  loc_BDF391: FLdPr var_E8
  loc_BDF394: from_stack_1 = clsctacte.Facturado
  loc_BDF399: LitI2_Byte 0
  loc_BDF39B: LitVar_Missing var_D4
  loc_BDF39E: LitI2_Byte &HFF
  loc_BDF3A0: FLdVar var_C0
  loc_BDF3A4: FLdPr Me
  loc_BDF3A7: MemLdRfVar from_stack_1.global_84
  loc_BDF3AA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF3AF: FFreeVar var_C0 = ""
  loc_BDF3B6: FLdRfVar var_23C
  loc_BDF3B9: FLdPr var_E8
  loc_BDF3BC: from_stack_1 = clsctacte.DebeCtct
  loc_BDF3C1: LitI2_Byte 0
  loc_BDF3C3: LitVar_Missing var_C0
  loc_BDF3C6: LitI2_Byte &HFF
  loc_BDF3C8: FLdFPR8 var_23C
  loc_BDF3CB: CVarR8
  loc_BDF3CF: PopAdLdVar
  loc_BDF3D0: FLdPr Me
  loc_BDF3D3: MemLdRfVar from_stack_1.global_88
  loc_BDF3D6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF3DB: FFree1Var var_C0 = ""
  loc_BDF3DE: FLdRfVar var_23C
  loc_BDF3E1: FLdPr var_E8
  loc_BDF3E4: from_stack_1 = clsctacte.CredCtct
  loc_BDF3E9: LitI2_Byte 0
  loc_BDF3EB: LitVar_Missing var_C0
  loc_BDF3EE: LitI2_Byte &HFF
  loc_BDF3F0: FLdFPR8 var_23C
  loc_BDF3F3: CVarR8
  loc_BDF3F7: PopAdLdVar
  loc_BDF3F8: FLdPr Me
  loc_BDF3FB: MemLdRfVar from_stack_1.global_92
  loc_BDF3FE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF403: FFree1Var var_C0 = ""
  loc_BDF406: FLdRfVar var_C0
  loc_BDF409: FLdPr var_E8
  loc_BDF40C: from_stack_1 = clsctacte.PresCtct
  loc_BDF411: LitI2_Byte 0
  loc_BDF413: LitVar_Missing var_D4
  loc_BDF416: LitI2_Byte &HFF
  loc_BDF418: FLdVar var_C0
  loc_BDF41C: FLdPr Me
  loc_BDF41F: MemLdRfVar from_stack_1.global_96
  loc_BDF422: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF427: FFreeVar var_C0 = ""
  loc_BDF42E: FLdRfVar var_C0
  loc_BDF431: FLdPr var_E8
  loc_BDF434: from_stack_1 = clsctacte.CondCtct
  loc_BDF439: LitI2_Byte 0
  loc_BDF43B: LitVar_Missing var_D4
  loc_BDF43E: LitI2_Byte &HFF
  loc_BDF440: FLdVar var_C0
  loc_BDF444: FLdPr Me
  loc_BDF447: MemLdRfVar from_stack_1.global_100
  loc_BDF44A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF44F: FFreeVar var_C0 = ""
  loc_BDF456: FLdRfVar var_C0
  loc_BDF459: FLdPr var_E8
  loc_BDF45C: from_stack_1 = clsctacte.ExenCtct
  loc_BDF461: LitI2_Byte 0
  loc_BDF463: LitVar_Missing var_D4
  loc_BDF466: LitI2_Byte &HFF
  loc_BDF468: FLdVar var_C0
  loc_BDF46C: FLdPr Me
  loc_BDF46F: MemLdRfVar from_stack_1.global_104
  loc_BDF472: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF477: FFreeVar var_C0 = ""
  loc_BDF47E: FLdRfVar var_C0
  loc_BDF481: FLdPr var_E8
  loc_BDF484: from_stack_1 = clsctacte.DescCtct
  loc_BDF489: LitI2_Byte 0
  loc_BDF48B: LitVar_Missing var_D4
  loc_BDF48E: LitI2_Byte &HFF
  loc_BDF490: FLdVar var_C0
  loc_BDF494: FLdPr Me
  loc_BDF497: MemLdRfVar from_stack_1.global_108
  loc_BDF49A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF49F: FFreeVar var_C0 = ""
  loc_BDF4A6: FLdRfVar var_C0
  loc_BDF4A9: FLdPr var_E8
  loc_BDF4AC: from_stack_1 = clsctacte.Cobrado
  loc_BDF4B1: LitI2_Byte 0
  loc_BDF4B3: LitVar_Missing var_D4
  loc_BDF4B6: LitI2_Byte &HFF
  loc_BDF4B8: FLdVar var_C0
  loc_BDF4BC: FLdPr Me
  loc_BDF4BF: MemLdRfVar from_stack_1.global_112
  loc_BDF4C2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF4C7: FFreeVar var_C0 = ""
  loc_BDF4CE: FLdRfVar var_C0
  loc_BDF4D1: FLdPr var_E8
  loc_BDF4D4: from_stack_1 = clsctacte.SaldoFinal
  loc_BDF4D9: LitI2_Byte 0
  loc_BDF4DB: LitVar_Missing var_D4
  loc_BDF4DE: LitI2_Byte &HFF
  loc_BDF4E0: FLdVar var_C0
  loc_BDF4E4: FLdPr Me
  loc_BDF4E7: MemLdRfVar from_stack_1.global_116
  loc_BDF4EA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF4EF: FFreeVar var_C0 = ""
  loc_BDF4F6: FLdRfVar var_C0
  loc_BDF4F9: FLdPr var_E8
  loc_BDF4FC: from_stack_1 = clsctacte.Cobrado
  loc_BDF501: LitI2_Byte 0
  loc_BDF503: LitVar_Missing var_D4
  loc_BDF506: LitI2_Byte &HFF
  loc_BDF508: FLdVar var_C0
  loc_BDF50C: FLdPr Me
  loc_BDF50F: MemLdRfVar from_stack_1.global_120
  loc_BDF512: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF517: FFreeVar var_C0 = ""
  loc_BDF51E: FLdRfVar var_C0
  loc_BDF521: FLdPr var_E8
  loc_BDF524: from_stack_1 = clsctacte.CobradoActual
  loc_BDF529: LitI2_Byte 0
  loc_BDF52B: LitVar_Missing var_D4
  loc_BDF52E: LitI2_Byte &HFF
  loc_BDF530: FLdVar var_C0
  loc_BDF534: FLdPr Me
  loc_BDF537: MemLdRfVar from_stack_1.global_124
  loc_BDF53A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF53F: FFreeVar var_C0 = ""
  loc_BDF546: FLdRfVar var_C0
  loc_BDF549: FLdPr var_E8
  loc_BDF54C: from_stack_1 = clsctacte.CobradoAnterior
  loc_BDF551: LitI2_Byte 0
  loc_BDF553: LitVar_Missing var_D4
  loc_BDF556: LitI2_Byte &HFF
  loc_BDF558: FLdVar var_C0
  loc_BDF55C: FLdPr Me
  loc_BDF55F: MemLdRfVar from_stack_1.global_128
  loc_BDF562: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF567: FFreeVar var_C0 = ""
  loc_BDF56E: FLdRfVar var_C0
  loc_BDF571: FLdPr var_E8
  loc_BDF574: from_stack_1 = clsctacte.CobradoApremio
  loc_BDF579: LitI2_Byte 0
  loc_BDF57B: LitVar_Missing var_D4
  loc_BDF57E: LitI2_Byte &HFF
  loc_BDF580: FLdVar var_C0
  loc_BDF584: FLdPr Me
  loc_BDF587: MemLdRfVar from_stack_1.global_132
  loc_BDF58A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF58F: FFreeVar var_C0 = ""
  loc_BDF596: FLdRfVar var_C0
  loc_BDF599: FLdPr var_E8
  loc_BDF59C: from_stack_1 = clsctacte.CobradoApremioActual
  loc_BDF5A1: LitI2_Byte 0
  loc_BDF5A3: LitVar_Missing var_D4
  loc_BDF5A6: LitI2_Byte &HFF
  loc_BDF5A8: FLdVar var_C0
  loc_BDF5AC: FLdPr Me
  loc_BDF5AF: MemLdRfVar from_stack_1.global_136
  loc_BDF5B2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF5B7: FFreeVar var_C0 = ""
  loc_BDF5BE: FLdRfVar var_C0
  loc_BDF5C1: FLdPr var_E8
  loc_BDF5C4: from_stack_1 = clsctacte.CobradoApremioAnterior
  loc_BDF5C9: LitI2_Byte 0
  loc_BDF5CB: LitVar_Missing var_D4
  loc_BDF5CE: LitI2_Byte &HFF
  loc_BDF5D0: FLdVar var_C0
  loc_BDF5D4: FLdPr Me
  loc_BDF5D7: MemLdRfVar from_stack_1.global_140
  loc_BDF5DA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BDF5DF: FFreeVar var_C0 = ""
  loc_BDF5E6: LitNothing
  loc_BDF5E8: FStAd var_E8 
  loc_BDF5EC: LitI2_Byte &HFF
  loc_BDF5EE: FLdPr Me
  loc_BDF5F1: MemStI2 bGenerado
  loc_BDF5F4: LitI4 0
  loc_BDF5F9: CI2I4
  loc_BDF5FA: FLdPr Me
  loc_BDF5FD: Me.MousePointer = from_stack_1
  loc_BDF602: LitVarStr var_98, vbNullString
  loc_BDF607: PopAdLdVar
  loc_BDF608: FLdPr Me
  loc_BDF60B: VCallAd Control_ID_statusBar
  loc_BDF60E: FStAdFunc var_AC
  loc_BDF611: FLdPr var_AC
  loc_BDF614: LateIdSt
  loc_BDF619: FFree1Ad var_AC
  loc_BDF61C: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BD4C54
  'Data Table: 46BE10
  loc_BD44FC: FLdRfVar var_88
  loc_BD44FF: LitI2_Byte 0
  loc_BD4501: LitI2_Byte &HFF
  loc_BD4503: ImpAdLdI4 MemVar_D93C84
  loc_BD4506: FLdPr Me
  loc_BD4509: MemLdRfVar from_stack_1.global_56
  loc_BD450C: NewIfNullPr IFileSystem3
  loc_BD450F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BD4514: ILdRf var_88
  loc_BD4517: FLdPr Me
  loc_BD451A: MemStVarAd
  loc_BD451E: FFree1Ad var_88
  loc_BD4521: LitI2_Byte &HFF
  loc_BD4523: ImpAdStI2 MemVar_D93C8A
  loc_BD4526: Call Proc_122_18_B9238C()
  loc_BD452B: LitVarStr var_98, "<table border=""0"" align=""center"" cellpadding=""4"" cellspacing=""7"">"
  loc_BD4530: PopAdLdVar
  loc_BD4531: FLdPr Me
  loc_BD4534: MemLdRfVar from_stack_1.global_60
  loc_BD4537: LdPrVar
  loc_BD4539: LateMemCall
  loc_BD453F: LitVarStr var_98, "      <tr>"
  loc_BD4544: PopAdLdVar
  loc_BD4545: FLdPr Me
  loc_BD4548: MemLdRfVar from_stack_1.global_60
  loc_BD454B: LdPrVar
  loc_BD454D: LateMemCall
  loc_BD4553: LitStr "        <th colspan=""3"" align=""center"" valign=""top"" class=""Encabezado""><div class=""Titulo2"">Cuenta Contable: "
  loc_BD4556: FLdPr Me
  loc_BD4559: VCallAd Control_ID_CodiCucoMsk
  loc_BD455C: FStAdFunc var_88
  loc_BD455F: FLdPr var_88
  loc_BD4562: LateIdLdVar var_B8 DispID_22 0
  loc_BD4569: CStrVarTmp
  loc_BD456A: FStStrNoPop var_BC
  loc_BD456D: ConcatStr
  loc_BD456E: FStStrNoPop var_C0
  loc_BD4571: LitStr "</div></th>"
  loc_BD4574: ConcatStr
  loc_BD4575: CVarStr var_D0
  loc_BD4578: PopAdLdVar
  loc_BD4579: FLdPr Me
  loc_BD457C: MemLdRfVar from_stack_1.global_60
  loc_BD457F: LdPrVar
  loc_BD4581: LateMemCall
  loc_BD4587: FFreeStr var_BC = ""
  loc_BD458E: FFree1Ad var_88
  loc_BD4591: FFreeVar var_B8 = ""
  loc_BD4598: LitVarStr var_98, "        </tr>"
  loc_BD459D: PopAdLdVar
  loc_BD459E: FLdPr Me
  loc_BD45A1: MemLdRfVar from_stack_1.global_60
  loc_BD45A4: LdPrVar
  loc_BD45A6: LateMemCall
  loc_BD45AC: LitVarStr var_98, "      <tr>"
  loc_BD45B1: PopAdLdVar
  loc_BD45B2: FLdPr Me
  loc_BD45B5: MemLdRfVar from_stack_1.global_60
  loc_BD45B8: LdPrVar
  loc_BD45BA: LateMemCall
  loc_BD45C0: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Saldo Inicial: </th>"
  loc_BD45C5: PopAdLdVar
  loc_BD45C6: FLdPr Me
  loc_BD45C9: MemLdRfVar from_stack_1.global_60
  loc_BD45CC: LdPrVar
  loc_BD45CE: LateMemCall
  loc_BD45D4: LitStr "        <th width=""71"" align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD45D7: FLdPr Me
  loc_BD45DA: MemLdStr global_80
  loc_BD45DD: ConcatStr
  loc_BD45DE: FStStrNoPop var_BC
  loc_BD45E1: LitStr "</th>"
  loc_BD45E4: ConcatStr
  loc_BD45E5: CVarStr var_B8
  loc_BD45E8: PopAdLdVar
  loc_BD45E9: FLdPr Me
  loc_BD45EC: MemLdRfVar from_stack_1.global_60
  loc_BD45EF: LdPrVar
  loc_BD45F1: LateMemCall
  loc_BD45F7: FFree1Str var_BC
  loc_BD45FA: FFree1Var var_B8 = ""
  loc_BD45FD: LitVarStr var_98, "      </tr>"
  loc_BD4602: PopAdLdVar
  loc_BD4603: FLdPr Me
  loc_BD4606: MemLdRfVar from_stack_1.global_60
  loc_BD4609: LdPrVar
  loc_BD460B: LateMemCall
  loc_BD4611: LitVarStr var_98, "      <tr>"
  loc_BD4616: PopAdLdVar
  loc_BD4617: FLdPr Me
  loc_BD461A: MemLdRfVar from_stack_1.global_60
  loc_BD461D: LdPrVar
  loc_BD461F: LateMemCall
  loc_BD4625: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Facturado: </th>"
  loc_BD462A: PopAdLdVar
  loc_BD462B: FLdPr Me
  loc_BD462E: MemLdRfVar from_stack_1.global_60
  loc_BD4631: LdPrVar
  loc_BD4633: LateMemCall
  loc_BD4639: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD463C: FLdPr Me
  loc_BD463F: MemLdStr global_84
  loc_BD4642: ConcatStr
  loc_BD4643: FStStrNoPop var_BC
  loc_BD4646: LitStr "</th>"
  loc_BD4649: ConcatStr
  loc_BD464A: CVarStr var_B8
  loc_BD464D: PopAdLdVar
  loc_BD464E: FLdPr Me
  loc_BD4651: MemLdRfVar from_stack_1.global_60
  loc_BD4654: LdPrVar
  loc_BD4656: LateMemCall
  loc_BD465C: FFree1Str var_BC
  loc_BD465F: FFree1Var var_B8 = ""
  loc_BD4662: LitVarStr var_98, "      </tr>"
  loc_BD4667: PopAdLdVar
  loc_BD4668: FLdPr Me
  loc_BD466B: MemLdRfVar from_stack_1.global_60
  loc_BD466E: LdPrVar
  loc_BD4670: LateMemCall
  loc_BD4676: LitVarStr var_98, "      <tr>"
  loc_BD467B: PopAdLdVar
  loc_BD467C: FLdPr Me
  loc_BD467F: MemLdRfVar from_stack_1.global_60
  loc_BD4682: LdPrVar
  loc_BD4684: LateMemCall
  loc_BD468A: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Débitos: </th>"
  loc_BD468F: PopAdLdVar
  loc_BD4690: FLdPr Me
  loc_BD4693: MemLdRfVar from_stack_1.global_60
  loc_BD4696: LdPrVar
  loc_BD4698: LateMemCall
  loc_BD469E: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD46A1: FLdPr Me
  loc_BD46A4: MemLdStr global_88
  loc_BD46A7: ConcatStr
  loc_BD46A8: FStStrNoPop var_BC
  loc_BD46AB: LitStr "</th>"
  loc_BD46AE: ConcatStr
  loc_BD46AF: CVarStr var_B8
  loc_BD46B2: PopAdLdVar
  loc_BD46B3: FLdPr Me
  loc_BD46B6: MemLdRfVar from_stack_1.global_60
  loc_BD46B9: LdPrVar
  loc_BD46BB: LateMemCall
  loc_BD46C1: FFree1Str var_BC
  loc_BD46C4: FFree1Var var_B8 = ""
  loc_BD46C7: LitVarStr var_98, "      </tr>"
  loc_BD46CC: PopAdLdVar
  loc_BD46CD: FLdPr Me
  loc_BD46D0: MemLdRfVar from_stack_1.global_60
  loc_BD46D3: LdPrVar
  loc_BD46D5: LateMemCall
  loc_BD46DB: LitVarStr var_98, "      <tr>"
  loc_BD46E0: PopAdLdVar
  loc_BD46E1: FLdPr Me
  loc_BD46E4: MemLdRfVar from_stack_1.global_60
  loc_BD46E7: LdPrVar
  loc_BD46E9: LateMemCall
  loc_BD46EF: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Créditos: </th>"
  loc_BD46F4: PopAdLdVar
  loc_BD46F5: FLdPr Me
  loc_BD46F8: MemLdRfVar from_stack_1.global_60
  loc_BD46FB: LdPrVar
  loc_BD46FD: LateMemCall
  loc_BD4703: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD4706: FLdPr Me
  loc_BD4709: MemLdStr global_92
  loc_BD470C: ConcatStr
  loc_BD470D: FStStrNoPop var_BC
  loc_BD4710: LitStr "</th>"
  loc_BD4713: ConcatStr
  loc_BD4714: CVarStr var_B8
  loc_BD4717: PopAdLdVar
  loc_BD4718: FLdPr Me
  loc_BD471B: MemLdRfVar from_stack_1.global_60
  loc_BD471E: LdPrVar
  loc_BD4720: LateMemCall
  loc_BD4726: FFree1Str var_BC
  loc_BD4729: FFree1Var var_B8 = ""
  loc_BD472C: LitVarStr var_98, "      </tr>"
  loc_BD4731: PopAdLdVar
  loc_BD4732: FLdPr Me
  loc_BD4735: MemLdRfVar from_stack_1.global_60
  loc_BD4738: LdPrVar
  loc_BD473A: LateMemCall
  loc_BD4740: LitVarStr var_98, "      <tr>"
  loc_BD4745: PopAdLdVar
  loc_BD4746: FLdPr Me
  loc_BD4749: MemLdRfVar from_stack_1.global_60
  loc_BD474C: LdPrVar
  loc_BD474E: LateMemCall
  loc_BD4754: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Prescripción: </th>"
  loc_BD4759: PopAdLdVar
  loc_BD475A: FLdPr Me
  loc_BD475D: MemLdRfVar from_stack_1.global_60
  loc_BD4760: LdPrVar
  loc_BD4762: LateMemCall
  loc_BD4768: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD476B: FLdPr Me
  loc_BD476E: MemLdStr global_96
  loc_BD4771: ConcatStr
  loc_BD4772: FStStrNoPop var_BC
  loc_BD4775: LitStr "</th>"
  loc_BD4778: ConcatStr
  loc_BD4779: CVarStr var_B8
  loc_BD477C: PopAdLdVar
  loc_BD477D: FLdPr Me
  loc_BD4780: MemLdRfVar from_stack_1.global_60
  loc_BD4783: LdPrVar
  loc_BD4785: LateMemCall
  loc_BD478B: FFree1Str var_BC
  loc_BD478E: FFree1Var var_B8 = ""
  loc_BD4791: LitVarStr var_98, "      </tr>"
  loc_BD4796: PopAdLdVar
  loc_BD4797: FLdPr Me
  loc_BD479A: MemLdRfVar from_stack_1.global_60
  loc_BD479D: LdPrVar
  loc_BD479F: LateMemCall
  loc_BD47A5: LitVarStr var_98, "      <tr>"
  loc_BD47AA: PopAdLdVar
  loc_BD47AB: FLdPr Me
  loc_BD47AE: MemLdRfVar from_stack_1.global_60
  loc_BD47B1: LdPrVar
  loc_BD47B3: LateMemCall
  loc_BD47B9: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Condonación: </th>"
  loc_BD47BE: PopAdLdVar
  loc_BD47BF: FLdPr Me
  loc_BD47C2: MemLdRfVar from_stack_1.global_60
  loc_BD47C5: LdPrVar
  loc_BD47C7: LateMemCall
  loc_BD47CD: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD47D0: FLdPr Me
  loc_BD47D3: MemLdStr global_100
  loc_BD47D6: ConcatStr
  loc_BD47D7: FStStrNoPop var_BC
  loc_BD47DA: LitStr "</th>"
  loc_BD47DD: ConcatStr
  loc_BD47DE: CVarStr var_B8
  loc_BD47E1: PopAdLdVar
  loc_BD47E2: FLdPr Me
  loc_BD47E5: MemLdRfVar from_stack_1.global_60
  loc_BD47E8: LdPrVar
  loc_BD47EA: LateMemCall
  loc_BD47F0: FFree1Str var_BC
  loc_BD47F3: FFree1Var var_B8 = ""
  loc_BD47F6: LitVarStr var_98, "      </tr>"
  loc_BD47FB: PopAdLdVar
  loc_BD47FC: FLdPr Me
  loc_BD47FF: MemLdRfVar from_stack_1.global_60
  loc_BD4802: LdPrVar
  loc_BD4804: LateMemCall
  loc_BD480A: LitVarStr var_98, "      <tr>"
  loc_BD480F: PopAdLdVar
  loc_BD4810: FLdPr Me
  loc_BD4813: MemLdRfVar from_stack_1.global_60
  loc_BD4816: LdPrVar
  loc_BD4818: LateMemCall
  loc_BD481E: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Exención: </th>"
  loc_BD4823: PopAdLdVar
  loc_BD4824: FLdPr Me
  loc_BD4827: MemLdRfVar from_stack_1.global_60
  loc_BD482A: LdPrVar
  loc_BD482C: LateMemCall
  loc_BD4832: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD4835: FLdPr Me
  loc_BD4838: MemLdStr global_104
  loc_BD483B: ConcatStr
  loc_BD483C: FStStrNoPop var_BC
  loc_BD483F: LitStr "</th>"
  loc_BD4842: ConcatStr
  loc_BD4843: CVarStr var_B8
  loc_BD4846: PopAdLdVar
  loc_BD4847: FLdPr Me
  loc_BD484A: MemLdRfVar from_stack_1.global_60
  loc_BD484D: LdPrVar
  loc_BD484F: LateMemCall
  loc_BD4855: FFree1Str var_BC
  loc_BD4858: FFree1Var var_B8 = ""
  loc_BD485B: LitVarStr var_98, "      </tr>"
  loc_BD4860: PopAdLdVar
  loc_BD4861: FLdPr Me
  loc_BD4864: MemLdRfVar from_stack_1.global_60
  loc_BD4867: LdPrVar
  loc_BD4869: LateMemCall
  loc_BD486F: LitVarStr var_98, "      <tr>"
  loc_BD4874: PopAdLdVar
  loc_BD4875: FLdPr Me
  loc_BD4878: MemLdRfVar from_stack_1.global_60
  loc_BD487B: LdPrVar
  loc_BD487D: LateMemCall
  loc_BD4883: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Descuento: </th>"
  loc_BD4888: PopAdLdVar
  loc_BD4889: FLdPr Me
  loc_BD488C: MemLdRfVar from_stack_1.global_60
  loc_BD488F: LdPrVar
  loc_BD4891: LateMemCall
  loc_BD4897: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD489A: FLdPr Me
  loc_BD489D: MemLdStr global_108
  loc_BD48A0: ConcatStr
  loc_BD48A1: FStStrNoPop var_BC
  loc_BD48A4: LitStr "</th>"
  loc_BD48A7: ConcatStr
  loc_BD48A8: CVarStr var_B8
  loc_BD48AB: PopAdLdVar
  loc_BD48AC: FLdPr Me
  loc_BD48AF: MemLdRfVar from_stack_1.global_60
  loc_BD48B2: LdPrVar
  loc_BD48B4: LateMemCall
  loc_BD48BA: FFree1Str var_BC
  loc_BD48BD: FFree1Var var_B8 = ""
  loc_BD48C0: LitVarStr var_98, "      </tr>"
  loc_BD48C5: PopAdLdVar
  loc_BD48C6: FLdPr Me
  loc_BD48C9: MemLdRfVar from_stack_1.global_60
  loc_BD48CC: LdPrVar
  loc_BD48CE: LateMemCall
  loc_BD48D4: LitVarStr var_98, "      <tr>"
  loc_BD48D9: PopAdLdVar
  loc_BD48DA: FLdPr Me
  loc_BD48DD: MemLdRfVar from_stack_1.global_60
  loc_BD48E0: LdPrVar
  loc_BD48E2: LateMemCall
  loc_BD48E8: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Cobrado: </th>"
  loc_BD48ED: PopAdLdVar
  loc_BD48EE: FLdPr Me
  loc_BD48F1: MemLdRfVar from_stack_1.global_60
  loc_BD48F4: LdPrVar
  loc_BD48F6: LateMemCall
  loc_BD48FC: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD48FF: FLdPr Me
  loc_BD4902: MemLdStr global_112
  loc_BD4905: ConcatStr
  loc_BD4906: FStStrNoPop var_BC
  loc_BD4909: LitStr "</th>"
  loc_BD490C: ConcatStr
  loc_BD490D: CVarStr var_B8
  loc_BD4910: PopAdLdVar
  loc_BD4911: FLdPr Me
  loc_BD4914: MemLdRfVar from_stack_1.global_60
  loc_BD4917: LdPrVar
  loc_BD4919: LateMemCall
  loc_BD491F: FFree1Str var_BC
  loc_BD4922: FFree1Var var_B8 = ""
  loc_BD4925: LitVarStr var_98, "      </tr>"
  loc_BD492A: PopAdLdVar
  loc_BD492B: FLdPr Me
  loc_BD492E: MemLdRfVar from_stack_1.global_60
  loc_BD4931: LdPrVar
  loc_BD4933: LateMemCall
  loc_BD4939: LitVarStr var_98, "      <tr>"
  loc_BD493E: PopAdLdVar
  loc_BD493F: FLdPr Me
  loc_BD4942: MemLdRfVar from_stack_1.global_60
  loc_BD4945: LdPrVar
  loc_BD4947: LateMemCall
  loc_BD494D: LitVarStr var_98, "        <th colspan=""2"" align=""left"" valign=""top"" class=""Encabezado"">Saldo Final: </th>"
  loc_BD4952: PopAdLdVar
  loc_BD4953: FLdPr Me
  loc_BD4956: MemLdRfVar from_stack_1.global_60
  loc_BD4959: LdPrVar
  loc_BD495B: LateMemCall
  loc_BD4961: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD4964: FLdPr Me
  loc_BD4967: MemLdStr global_116
  loc_BD496A: ConcatStr
  loc_BD496B: FStStrNoPop var_BC
  loc_BD496E: LitStr "</th>"
  loc_BD4971: ConcatStr
  loc_BD4972: CVarStr var_B8
  loc_BD4975: PopAdLdVar
  loc_BD4976: FLdPr Me
  loc_BD4979: MemLdRfVar from_stack_1.global_60
  loc_BD497C: LdPrVar
  loc_BD497E: LateMemCall
  loc_BD4984: FFree1Str var_BC
  loc_BD4987: FFree1Var var_B8 = ""
  loc_BD498A: LitVarStr var_98, "      </tr>"
  loc_BD498F: PopAdLdVar
  loc_BD4990: FLdPr Me
  loc_BD4993: MemLdRfVar from_stack_1.global_60
  loc_BD4996: LdPrVar
  loc_BD4998: LateMemCall
  loc_BD499E: LitVarStr var_98, "      <tr>"
  loc_BD49A3: PopAdLdVar
  loc_BD49A4: FLdPr Me
  loc_BD49A7: MemLdRfVar from_stack_1.global_60
  loc_BD49AA: LdPrVar
  loc_BD49AC: LateMemCall
  loc_BD49B2: LitVarStr var_98, "        <th width=""86"" rowspan=""3"" align=""left"" valign=""middle"" class=""Encabezado"">Cobrado</th>"
  loc_BD49B7: PopAdLdVar
  loc_BD49B8: FLdPr Me
  loc_BD49BB: MemLdRfVar from_stack_1.global_60
  loc_BD49BE: LdPrVar
  loc_BD49C0: LateMemCall
  loc_BD49C6: LitVarStr var_98, "        <th align=""left"" valign=""top"" class=""Encabezado"">Periodo Anterior:</th>"
  loc_BD49CB: PopAdLdVar
  loc_BD49CC: FLdPr Me
  loc_BD49CF: MemLdRfVar from_stack_1.global_60
  loc_BD49D2: LdPrVar
  loc_BD49D4: LateMemCall
  loc_BD49DA: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD49DD: FLdPr Me
  loc_BD49E0: MemLdStr global_128
  loc_BD49E3: ConcatStr
  loc_BD49E4: FStStrNoPop var_BC
  loc_BD49E7: LitStr "</th>"
  loc_BD49EA: ConcatStr
  loc_BD49EB: CVarStr var_B8
  loc_BD49EE: PopAdLdVar
  loc_BD49EF: FLdPr Me
  loc_BD49F2: MemLdRfVar from_stack_1.global_60
  loc_BD49F5: LdPrVar
  loc_BD49F7: LateMemCall
  loc_BD49FD: FFree1Str var_BC
  loc_BD4A00: FFree1Var var_B8 = ""
  loc_BD4A03: LitVarStr var_98, "      </tr>"
  loc_BD4A08: PopAdLdVar
  loc_BD4A09: FLdPr Me
  loc_BD4A0C: MemLdRfVar from_stack_1.global_60
  loc_BD4A0F: LdPrVar
  loc_BD4A11: LateMemCall
  loc_BD4A17: LitVarStr var_98, "      <tr>"
  loc_BD4A1C: PopAdLdVar
  loc_BD4A1D: FLdPr Me
  loc_BD4A20: MemLdRfVar from_stack_1.global_60
  loc_BD4A23: LdPrVar
  loc_BD4A25: LateMemCall
  loc_BD4A2B: LitVarStr var_98, "        <th align=""left"" valign=""top"" class=""Encabezado"">Periodo Actual: </th>"
  loc_BD4A30: PopAdLdVar
  loc_BD4A31: FLdPr Me
  loc_BD4A34: MemLdRfVar from_stack_1.global_60
  loc_BD4A37: LdPrVar
  loc_BD4A39: LateMemCall
  loc_BD4A3F: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD4A42: FLdPr Me
  loc_BD4A45: MemLdStr global_124
  loc_BD4A48: ConcatStr
  loc_BD4A49: FStStrNoPop var_BC
  loc_BD4A4C: LitStr "</th>"
  loc_BD4A4F: ConcatStr
  loc_BD4A50: CVarStr var_B8
  loc_BD4A53: PopAdLdVar
  loc_BD4A54: FLdPr Me
  loc_BD4A57: MemLdRfVar from_stack_1.global_60
  loc_BD4A5A: LdPrVar
  loc_BD4A5C: LateMemCall
  loc_BD4A62: FFree1Str var_BC
  loc_BD4A65: FFree1Var var_B8 = ""
  loc_BD4A68: LitVarStr var_98, "      </tr>"
  loc_BD4A6D: PopAdLdVar
  loc_BD4A6E: FLdPr Me
  loc_BD4A71: MemLdRfVar from_stack_1.global_60
  loc_BD4A74: LdPrVar
  loc_BD4A76: LateMemCall
  loc_BD4A7C: LitVarStr var_98, "      <tr>"
  loc_BD4A81: PopAdLdVar
  loc_BD4A82: FLdPr Me
  loc_BD4A85: MemLdRfVar from_stack_1.global_60
  loc_BD4A88: LdPrVar
  loc_BD4A8A: LateMemCall
  loc_BD4A90: LitVarStr var_98, "        <th align=""left"" valign=""top"" class=""Encabezado"">Total: </th>"
  loc_BD4A95: PopAdLdVar
  loc_BD4A96: FLdPr Me
  loc_BD4A99: MemLdRfVar from_stack_1.global_60
  loc_BD4A9C: LdPrVar
  loc_BD4A9E: LateMemCall
  loc_BD4AA4: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD4AA7: FLdPr Me
  loc_BD4AAA: MemLdStr global_120
  loc_BD4AAD: ConcatStr
  loc_BD4AAE: FStStrNoPop var_BC
  loc_BD4AB1: LitStr "</th>"
  loc_BD4AB4: ConcatStr
  loc_BD4AB5: CVarStr var_B8
  loc_BD4AB8: PopAdLdVar
  loc_BD4AB9: FLdPr Me
  loc_BD4ABC: MemLdRfVar from_stack_1.global_60
  loc_BD4ABF: LdPrVar
  loc_BD4AC1: LateMemCall
  loc_BD4AC7: FFree1Str var_BC
  loc_BD4ACA: FFree1Var var_B8 = ""
  loc_BD4ACD: LitVarStr var_98, "      </tr>"
  loc_BD4AD2: PopAdLdVar
  loc_BD4AD3: FLdPr Me
  loc_BD4AD6: MemLdRfVar from_stack_1.global_60
  loc_BD4AD9: LdPrVar
  loc_BD4ADB: LateMemCall
  loc_BD4AE1: LitVarStr var_98, "      <tr>"
  loc_BD4AE6: PopAdLdVar
  loc_BD4AE7: FLdPr Me
  loc_BD4AEA: MemLdRfVar from_stack_1.global_60
  loc_BD4AED: LdPrVar
  loc_BD4AEF: LateMemCall
  loc_BD4AF5: LitVarStr var_98, "        <th rowspan=""3"" align=""left"" valign=""middle"" class=""Encabezado"">Cobrado<br>con Apremio </th>"
  loc_BD4AFA: PopAdLdVar
  loc_BD4AFB: FLdPr Me
  loc_BD4AFE: MemLdRfVar from_stack_1.global_60
  loc_BD4B01: LdPrVar
  loc_BD4B03: LateMemCall
  loc_BD4B09: LitVarStr var_98, "        <th align=""left"" valign=""top"" class=""Encabezado"">Periodo Anterior:</th>"
  loc_BD4B0E: PopAdLdVar
  loc_BD4B0F: FLdPr Me
  loc_BD4B12: MemLdRfVar from_stack_1.global_60
  loc_BD4B15: LdPrVar
  loc_BD4B17: LateMemCall
  loc_BD4B1D: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD4B20: FLdPr Me
  loc_BD4B23: MemLdStr global_140
  loc_BD4B26: ConcatStr
  loc_BD4B27: FStStrNoPop var_BC
  loc_BD4B2A: LitStr "</th>"
  loc_BD4B2D: ConcatStr
  loc_BD4B2E: CVarStr var_B8
  loc_BD4B31: PopAdLdVar
  loc_BD4B32: FLdPr Me
  loc_BD4B35: MemLdRfVar from_stack_1.global_60
  loc_BD4B38: LdPrVar
  loc_BD4B3A: LateMemCall
  loc_BD4B40: FFree1Str var_BC
  loc_BD4B43: FFree1Var var_B8 = ""
  loc_BD4B46: LitVarStr var_98, "      </tr>"
  loc_BD4B4B: PopAdLdVar
  loc_BD4B4C: FLdPr Me
  loc_BD4B4F: MemLdRfVar from_stack_1.global_60
  loc_BD4B52: LdPrVar
  loc_BD4B54: LateMemCall
  loc_BD4B5A: LitVarStr var_98, "      <tr>"
  loc_BD4B5F: PopAdLdVar
  loc_BD4B60: FLdPr Me
  loc_BD4B63: MemLdRfVar from_stack_1.global_60
  loc_BD4B66: LdPrVar
  loc_BD4B68: LateMemCall
  loc_BD4B6E: LitVarStr var_98, "        <th align=""left"" valign=""top"" class=""Encabezado"">Periodo Actual: </th>"
  loc_BD4B73: PopAdLdVar
  loc_BD4B74: FLdPr Me
  loc_BD4B77: MemLdRfVar from_stack_1.global_60
  loc_BD4B7A: LdPrVar
  loc_BD4B7C: LateMemCall
  loc_BD4B82: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD4B85: FLdPr Me
  loc_BD4B88: MemLdStr global_136
  loc_BD4B8B: ConcatStr
  loc_BD4B8C: FStStrNoPop var_BC
  loc_BD4B8F: LitStr "</th>"
  loc_BD4B92: ConcatStr
  loc_BD4B93: CVarStr var_B8
  loc_BD4B96: PopAdLdVar
  loc_BD4B97: FLdPr Me
  loc_BD4B9A: MemLdRfVar from_stack_1.global_60
  loc_BD4B9D: LdPrVar
  loc_BD4B9F: LateMemCall
  loc_BD4BA5: FFree1Str var_BC
  loc_BD4BA8: FFree1Var var_B8 = ""
  loc_BD4BAB: LitVarStr var_98, "      </tr>"
  loc_BD4BB0: PopAdLdVar
  loc_BD4BB1: FLdPr Me
  loc_BD4BB4: MemLdRfVar from_stack_1.global_60
  loc_BD4BB7: LdPrVar
  loc_BD4BB9: LateMemCall
  loc_BD4BBF: LitVarStr var_98, "      <tr>"
  loc_BD4BC4: PopAdLdVar
  loc_BD4BC5: FLdPr Me
  loc_BD4BC8: MemLdRfVar from_stack_1.global_60
  loc_BD4BCB: LdPrVar
  loc_BD4BCD: LateMemCall
  loc_BD4BD3: LitVarStr var_98, "        <th align=""left"" valign=""top"" class=""Encabezado"">Total: </th>"
  loc_BD4BD8: PopAdLdVar
  loc_BD4BD9: FLdPr Me
  loc_BD4BDC: MemLdRfVar from_stack_1.global_60
  loc_BD4BDF: LdPrVar
  loc_BD4BE1: LateMemCall
  loc_BD4BE7: LitStr "        <th align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BD4BEA: FLdPr Me
  loc_BD4BED: MemLdStr global_132
  loc_BD4BF0: ConcatStr
  loc_BD4BF1: FStStrNoPop var_BC
  loc_BD4BF4: LitStr "</th>"
  loc_BD4BF7: ConcatStr
  loc_BD4BF8: CVarStr var_B8
  loc_BD4BFB: PopAdLdVar
  loc_BD4BFC: FLdPr Me
  loc_BD4BFF: MemLdRfVar from_stack_1.global_60
  loc_BD4C02: LdPrVar
  loc_BD4C04: LateMemCall
  loc_BD4C0A: FFree1Str var_BC
  loc_BD4C0D: FFree1Var var_B8 = ""
  loc_BD4C10: LitVarStr var_98, "      </tr>"
  loc_BD4C15: PopAdLdVar
  loc_BD4C16: FLdPr Me
  loc_BD4C19: MemLdRfVar from_stack_1.global_60
  loc_BD4C1C: LdPrVar
  loc_BD4C1E: LateMemCall
  loc_BD4C24: LitVarStr var_98, "    </table>"
  loc_BD4C29: PopAdLdVar
  loc_BD4C2A: FLdPr Me
  loc_BD4C2D: MemLdRfVar from_stack_1.global_60
  loc_BD4C30: LdPrVar
  loc_BD4C32: LateMemCall
  loc_BD4C38: Call Proc_122_19_A0BA38()
  loc_BD4C3D: FLdPr Me
  loc_BD4C40: MemLdRfVar from_stack_1.global_60
  loc_BD4C43: LdPrVar
  loc_BD4C45: LateMemCall
  loc_BD4C4B: LitStr vbNullString
  loc_BD4C4E: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BD4C53: ExitProcHresult
End Sub

Private Function Proc_122_18_B9238C() 'B9238C
  'Data Table: 46BE10
  loc_B91E1C: LitVarStr var_98, "<html>"
  loc_B91E21: PopAdLdVar
  loc_B91E22: FLdPr Me
  loc_B91E25: MemLdRfVar from_stack_1.global_60
  loc_B91E28: LdPrVar
  loc_B91E2A: LateMemCall
  loc_B91E30: LitVarStr var_98, "<head>"
  loc_B91E35: PopAdLdVar
  loc_B91E36: FLdPr Me
  loc_B91E39: MemLdRfVar from_stack_1.global_60
  loc_B91E3C: LdPrVar
  loc_B91E3E: LateMemCall
  loc_B91E44: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B91E49: PopAdLdVar
  loc_B91E4A: FLdPr Me
  loc_B91E4D: MemLdRfVar from_stack_1.global_60
  loc_B91E50: LdPrVar
  loc_B91E52: LateMemCall
  loc_B91E58: LitStr "<title>"
  loc_B91E5B: FLdRfVar var_AC
  loc_B91E5E: FLdPr Me
  loc_B91E61:  = Me.Caption
  loc_B91E66: ILdRf var_AC
  loc_B91E69: ConcatStr
  loc_B91E6A: FStStrNoPop var_B0
  loc_B91E6D: LitStr "</title>"
  loc_B91E70: ConcatStr
  loc_B91E71: CVarStr var_C0
  loc_B91E74: PopAdLdVar
  loc_B91E75: FLdPr Me
  loc_B91E78: MemLdRfVar from_stack_1.global_60
  loc_B91E7B: LdPrVar
  loc_B91E7D: LateMemCall
  loc_B91E83: FFreeStr var_AC = ""
  loc_B91E8A: FFree1Var var_C0 = ""
  loc_B91E8D: LitVarStr var_98, "<style type=""text/css"">"
  loc_B91E92: PopAdLdVar
  loc_B91E93: FLdPr Me
  loc_B91E96: MemLdRfVar from_stack_1.global_60
  loc_B91E99: LdPrVar
  loc_B91E9B: LateMemCall
  loc_B91EA1: LitVarStr var_98, ".Titulo1 {"
  loc_B91EA6: PopAdLdVar
  loc_B91EA7: FLdPr Me
  loc_B91EAA: MemLdRfVar from_stack_1.global_60
  loc_B91EAD: LdPrVar
  loc_B91EAF: LateMemCall
  loc_B91EB5: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B91EBA: PopAdLdVar
  loc_B91EBB: FLdPr Me
  loc_B91EBE: MemLdRfVar from_stack_1.global_60
  loc_B91EC1: LdPrVar
  loc_B91EC3: LateMemCall
  loc_B91EC9: LitVarStr var_98, " font-size: 18px;"
  loc_B91ECE: PopAdLdVar
  loc_B91ECF: FLdPr Me
  loc_B91ED2: MemLdRfVar from_stack_1.global_60
  loc_B91ED5: LdPrVar
  loc_B91ED7: LateMemCall
  loc_B91EDD: LitVarStr var_98, " font-weight: bold;"
  loc_B91EE2: PopAdLdVar
  loc_B91EE3: FLdPr Me
  loc_B91EE6: MemLdRfVar from_stack_1.global_60
  loc_B91EE9: LdPrVar
  loc_B91EEB: LateMemCall
  loc_B91EF1: LitVarStr var_98, "}"
  loc_B91EF6: PopAdLdVar
  loc_B91EF7: FLdPr Me
  loc_B91EFA: MemLdRfVar from_stack_1.global_60
  loc_B91EFD: LdPrVar
  loc_B91EFF: LateMemCall
  loc_B91F05: LitVarStr var_98, ".Titulo2 {"
  loc_B91F0A: PopAdLdVar
  loc_B91F0B: FLdPr Me
  loc_B91F0E: MemLdRfVar from_stack_1.global_60
  loc_B91F11: LdPrVar
  loc_B91F13: LateMemCall
  loc_B91F19: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B91F1E: PopAdLdVar
  loc_B91F1F: FLdPr Me
  loc_B91F22: MemLdRfVar from_stack_1.global_60
  loc_B91F25: LdPrVar
  loc_B91F27: LateMemCall
  loc_B91F2D: LitVarStr var_98, " font-size: 14px;"
  loc_B91F32: PopAdLdVar
  loc_B91F33: FLdPr Me
  loc_B91F36: MemLdRfVar from_stack_1.global_60
  loc_B91F39: LdPrVar
  loc_B91F3B: LateMemCall
  loc_B91F41: LitVarStr var_98, " font-weight: bold;"
  loc_B91F46: PopAdLdVar
  loc_B91F47: FLdPr Me
  loc_B91F4A: MemLdRfVar from_stack_1.global_60
  loc_B91F4D: LdPrVar
  loc_B91F4F: LateMemCall
  loc_B91F55: LitVarStr var_98, "}"
  loc_B91F5A: PopAdLdVar
  loc_B91F5B: FLdPr Me
  loc_B91F5E: MemLdRfVar from_stack_1.global_60
  loc_B91F61: LdPrVar
  loc_B91F63: LateMemCall
  loc_B91F69: LitVarStr var_98, ".Normal { font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B91F6E: PopAdLdVar
  loc_B91F6F: FLdPr Me
  loc_B91F72: MemLdRfVar from_stack_1.global_60
  loc_B91F75: LdPrVar
  loc_B91F77: LateMemCall
  loc_B91F7D: LitVarStr var_98, " font-size: 11px;"
  loc_B91F82: PopAdLdVar
  loc_B91F83: FLdPr Me
  loc_B91F86: MemLdRfVar from_stack_1.global_60
  loc_B91F89: LdPrVar
  loc_B91F8B: LateMemCall
  loc_B91F91: LitVarStr var_98, " font-style: normal;"
  loc_B91F96: PopAdLdVar
  loc_B91F97: FLdPr Me
  loc_B91F9A: MemLdRfVar from_stack_1.global_60
  loc_B91F9D: LdPrVar
  loc_B91F9F: LateMemCall
  loc_B91FA5: LitVarStr var_98, " font-weight: normal;"
  loc_B91FAA: PopAdLdVar
  loc_B91FAB: FLdPr Me
  loc_B91FAE: MemLdRfVar from_stack_1.global_60
  loc_B91FB1: LdPrVar
  loc_B91FB3: LateMemCall
  loc_B91FB9: LitVarStr var_98, " font-variant: normal;"
  loc_B91FBE: PopAdLdVar
  loc_B91FBF: FLdPr Me
  loc_B91FC2: MemLdRfVar from_stack_1.global_60
  loc_B91FC5: LdPrVar
  loc_B91FC7: LateMemCall
  loc_B91FCD: LitVarStr var_98, "}"
  loc_B91FD2: PopAdLdVar
  loc_B91FD3: FLdPr Me
  loc_B91FD6: MemLdRfVar from_stack_1.global_60
  loc_B91FD9: LdPrVar
  loc_B91FDB: LateMemCall
  loc_B91FE1: LitVarStr var_98, ".Encabezado {"
  loc_B91FE6: PopAdLdVar
  loc_B91FE7: FLdPr Me
  loc_B91FEA: MemLdRfVar from_stack_1.global_60
  loc_B91FED: LdPrVar
  loc_B91FEF: LateMemCall
  loc_B91FF5: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_B91FFA: PopAdLdVar
  loc_B91FFB: FLdPr Me
  loc_B91FFE: MemLdRfVar from_stack_1.global_60
  loc_B92001: LdPrVar
  loc_B92003: LateMemCall
  loc_B92009: LitVarStr var_98, " font-size: 13px;"
  loc_B9200E: PopAdLdVar
  loc_B9200F: FLdPr Me
  loc_B92012: MemLdRfVar from_stack_1.global_60
  loc_B92015: LdPrVar
  loc_B92017: LateMemCall
  loc_B9201D: LitVarStr var_98, " font-weight: bold;"
  loc_B92022: PopAdLdVar
  loc_B92023: FLdPr Me
  loc_B92026: MemLdRfVar from_stack_1.global_60
  loc_B92029: LdPrVar
  loc_B9202B: LateMemCall
  loc_B92031: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_B92036: PopAdLdVar
  loc_B92037: FLdPr Me
  loc_B9203A: MemLdRfVar from_stack_1.global_60
  loc_B9203D: LdPrVar
  loc_B9203F: LateMemCall
  loc_B92045: LitVarStr var_98, "}"
  loc_B9204A: PopAdLdVar
  loc_B9204B: FLdPr Me
  loc_B9204E: MemLdRfVar from_stack_1.global_60
  loc_B92051: LdPrVar
  loc_B92053: LateMemCall
  loc_B92059: LitVarStr var_98, ".LineaDato { font-family: ""Courier New"", Courier, monospace;"
  loc_B9205E: PopAdLdVar
  loc_B9205F: FLdPr Me
  loc_B92062: MemLdRfVar from_stack_1.global_60
  loc_B92065: LdPrVar
  loc_B92067: LateMemCall
  loc_B9206D: LitVarStr var_98, " font-size: 12px;"
  loc_B92072: PopAdLdVar
  loc_B92073: FLdPr Me
  loc_B92076: MemLdRfVar from_stack_1.global_60
  loc_B92079: LdPrVar
  loc_B9207B: LateMemCall
  loc_B92081: LitVarStr var_98, " font-style: normal;"
  loc_B92086: PopAdLdVar
  loc_B92087: FLdPr Me
  loc_B9208A: MemLdRfVar from_stack_1.global_60
  loc_B9208D: LdPrVar
  loc_B9208F: LateMemCall
  loc_B92095: LitVarStr var_98, " font-weight: normal;"
  loc_B9209A: PopAdLdVar
  loc_B9209B: FLdPr Me
  loc_B9209E: MemLdRfVar from_stack_1.global_60
  loc_B920A1: LdPrVar
  loc_B920A3: LateMemCall
  loc_B920A9: LitVarStr var_98, " font-variant: normal;"
  loc_B920AE: PopAdLdVar
  loc_B920AF: FLdPr Me
  loc_B920B2: MemLdRfVar from_stack_1.global_60
  loc_B920B5: LdPrVar
  loc_B920B7: LateMemCall
  loc_B920BD: LitVarStr var_98, "}"
  loc_B920C2: PopAdLdVar
  loc_B920C3: FLdPr Me
  loc_B920C6: MemLdRfVar from_stack_1.global_60
  loc_B920C9: LdPrVar
  loc_B920CB: LateMemCall
  loc_B920D1: LitVarStr var_98, ".Totales {"
  loc_B920D6: PopAdLdVar
  loc_B920D7: FLdPr Me
  loc_B920DA: MemLdRfVar from_stack_1.global_60
  loc_B920DD: LdPrVar
  loc_B920DF: LateMemCall
  loc_B920E5: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B920EA: PopAdLdVar
  loc_B920EB: FLdPr Me
  loc_B920EE: MemLdRfVar from_stack_1.global_60
  loc_B920F1: LdPrVar
  loc_B920F3: LateMemCall
  loc_B920F9: LitVarStr var_98, " font-size: 12px;"
  loc_B920FE: PopAdLdVar
  loc_B920FF: FLdPr Me
  loc_B92102: MemLdRfVar from_stack_1.global_60
  loc_B92105: LdPrVar
  loc_B92107: LateMemCall
  loc_B9210D: LitVarStr var_98, " font-weight: bold;"
  loc_B92112: PopAdLdVar
  loc_B92113: FLdPr Me
  loc_B92116: MemLdRfVar from_stack_1.global_60
  loc_B92119: LdPrVar
  loc_B9211B: LateMemCall
  loc_B92121: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_B92126: PopAdLdVar
  loc_B92127: FLdPr Me
  loc_B9212A: MemLdRfVar from_stack_1.global_60
  loc_B9212D: LdPrVar
  loc_B9212F: LateMemCall
  loc_B92135: LitVarStr var_98, "}"
  loc_B9213A: PopAdLdVar
  loc_B9213B: FLdPr Me
  loc_B9213E: MemLdRfVar from_stack_1.global_60
  loc_B92141: LdPrVar
  loc_B92143: LateMemCall
  loc_B92149: LitVarStr var_98, ".SubTotales {"
  loc_B9214E: PopAdLdVar
  loc_B9214F: FLdPr Me
  loc_B92152: MemLdRfVar from_stack_1.global_60
  loc_B92155: LdPrVar
  loc_B92157: LateMemCall
  loc_B9215D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_B92162: PopAdLdVar
  loc_B92163: FLdPr Me
  loc_B92166: MemLdRfVar from_stack_1.global_60
  loc_B92169: LdPrVar
  loc_B9216B: LateMemCall
  loc_B92171: LitVarStr var_98, " font-size: 10px;"
  loc_B92176: PopAdLdVar
  loc_B92177: FLdPr Me
  loc_B9217A: MemLdRfVar from_stack_1.global_60
  loc_B9217D: LdPrVar
  loc_B9217F: LateMemCall
  loc_B92185: LitVarStr var_98, " font-weight: bold;"
  loc_B9218A: PopAdLdVar
  loc_B9218B: FLdPr Me
  loc_B9218E: MemLdRfVar from_stack_1.global_60
  loc_B92191: LdPrVar
  loc_B92193: LateMemCall
  loc_B92199: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_B9219E: PopAdLdVar
  loc_B9219F: FLdPr Me
  loc_B921A2: MemLdRfVar from_stack_1.global_60
  loc_B921A5: LdPrVar
  loc_B921A7: LateMemCall
  loc_B921AD: LitVarStr var_98, "}"
  loc_B921B2: PopAdLdVar
  loc_B921B3: FLdPr Me
  loc_B921B6: MemLdRfVar from_stack_1.global_60
  loc_B921B9: LdPrVar
  loc_B921BB: LateMemCall
  loc_B921C1: LitVarStr var_98, "</style>"
  loc_B921C6: PopAdLdVar
  loc_B921C7: FLdPr Me
  loc_B921CA: MemLdRfVar from_stack_1.global_60
  loc_B921CD: LdPrVar
  loc_B921CF: LateMemCall
  loc_B921D5: LitI4 0
  loc_B921DA: FStStrCopy var_B0
  loc_B921DD: FLdRfVar var_B0
  loc_B921E0: LitI4 0
  loc_B921E5: FStStrCopy var_AC
  loc_B921E8: FLdRfVar var_AC
  loc_B921EB: LitI2_Byte 0
  loc_B921ED: PopTmpLdAd2 var_C2
  loc_B921F0: FLdPr Me
  loc_B921F3: MemLdRfVar from_stack_1.global_60
  loc_B921F6: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B921FB: FFreeStr var_AC = ""
  loc_B92202: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B92207: PopAdLdVar
  loc_B92208: FLdPr Me
  loc_B9220B: MemLdRfVar from_stack_1.global_60
  loc_B9220E: LdPrVar
  loc_B92210: LateMemCall
  loc_B92216: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_B9221B: PopAdLdVar
  loc_B9221C: FLdPr Me
  loc_B9221F: MemLdRfVar from_stack_1.global_60
  loc_B92222: LdPrVar
  loc_B92224: LateMemCall
  loc_B9222A: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B9222D: LitI2_Byte &H5F
  loc_B9222F: CStrUI1
  loc_B92231: FStStrNoPop var_AC
  loc_B92234: ConcatStr
  loc_B92235: FStStrNoPop var_B0
  loc_B92238: LitStr """ height="""
  loc_B9223B: ConcatStr
  loc_B9223C: FStStrNoPop var_C8
  loc_B9223F: LitI2_Byte &H3C
  loc_B92241: CStrUI1
  loc_B92243: FStStrNoPop var_CC
  loc_B92246: ConcatStr
  loc_B92247: FStStrNoPop var_D0
  loc_B9224A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B9224D: ConcatStr
  loc_B9224E: FStStrNoPop var_D4
  loc_B92251: LitStr "Municipalidad de Guaymallén"
  loc_B92254: ConcatStr
  loc_B92255: FStStrNoPop var_D8
  loc_B92258: LitStr "</p>"
  loc_B9225B: ConcatStr
  loc_B9225C: CVarStr var_C0
  loc_B9225F: PopAdLdVar
  loc_B92260: FLdPr Me
  loc_B92263: MemLdRfVar from_stack_1.global_60
  loc_B92266: LdPrVar
  loc_B92268: LateMemCall
  loc_B9226E: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B9227F: FFree1Var var_C0 = ""
  loc_B92282: LitStr "    <p>"
  loc_B92285: FLdRfVar var_AC
  loc_B92288: FLdPr Me
  loc_B9228B:  = Me.Caption
  loc_B92290: ILdRf var_AC
  loc_B92293: ConcatStr
  loc_B92294: FStStrNoPop var_B0
  loc_B92297: LitStr "</p></th>"
  loc_B9229A: ConcatStr
  loc_B9229B: CVarStr var_C0
  loc_B9229E: PopAdLdVar
  loc_B9229F: FLdPr Me
  loc_B922A2: MemLdRfVar from_stack_1.global_60
  loc_B922A5: LdPrVar
  loc_B922A7: LateMemCall
  loc_B922AD: FFreeStr var_AC = ""
  loc_B922B4: FFree1Var var_C0 = ""
  loc_B922B7: LitVarStr var_98, "  </tr>"
  loc_B922BC: PopAdLdVar
  loc_B922BD: FLdPr Me
  loc_B922C0: MemLdRfVar from_stack_1.global_60
  loc_B922C3: LdPrVar
  loc_B922C5: LateMemCall
  loc_B922CB: LitVarStr var_98, "  <tr>"
  loc_B922D0: PopAdLdVar
  loc_B922D1: FLdPr Me
  loc_B922D4: MemLdRfVar from_stack_1.global_60
  loc_B922D7: LdPrVar
  loc_B922D9: LateMemCall
  loc_B922DF: LitVarStr var_98, "    <th><hr></th>"
  loc_B922E4: PopAdLdVar
  loc_B922E5: FLdPr Me
  loc_B922E8: MemLdRfVar from_stack_1.global_60
  loc_B922EB: LdPrVar
  loc_B922ED: LateMemCall
  loc_B922F3: LitVarStr var_98, "  </tr>"
  loc_B922F8: PopAdLdVar
  loc_B922F9: FLdPr Me
  loc_B922FC: MemLdRfVar from_stack_1.global_60
  loc_B922FF: LdPrVar
  loc_B92301: LateMemCall
  loc_B92307: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_B9230C: PopAdLdVar
  loc_B9230D: FLdPr Me
  loc_B92310: MemLdRfVar from_stack_1.global_60
  loc_B92313: LdPrVar
  loc_B92315: LateMemCall
  loc_B9231B: LitStr "    <td height=""20"" align=""center"" valign=""top"" ><strong>Periodo: </strong>"
  loc_B9231E: FLdPr Me
  loc_B92321: VCallAd Control_ID_PeriInfoMsk
  loc_B92324: FStAdFunc var_DC
  loc_B92327: FLdPr var_DC
  loc_B9232A: LateIdLdVar var_C0 DispID_22 0
  loc_B92331: CStrVarTmp
  loc_B92332: FStStrNoPop var_AC
  loc_B92335: ConcatStr
  loc_B92336: FStStrNoPop var_B0
  loc_B92339: LitStr "</td>"
  loc_B9233C: ConcatStr
  loc_B9233D: CVarStr var_EC
  loc_B92340: PopAdLdVar
  loc_B92341: FLdPr Me
  loc_B92344: MemLdRfVar from_stack_1.global_60
  loc_B92347: LdPrVar
  loc_B92349: LateMemCall
  loc_B9234F: FFreeStr var_AC = ""
  loc_B92356: FFree1Ad var_DC
  loc_B92359: FFreeVar var_C0 = ""
  loc_B92360: LitVarStr var_98, "  </tr>"
  loc_B92365: PopAdLdVar
  loc_B92366: FLdPr Me
  loc_B92369: MemLdRfVar from_stack_1.global_60
  loc_B9236C: LdPrVar
  loc_B9236E: LateMemCall
  loc_B92374: LitVarStr var_98, "</table>"
  loc_B92379: PopAdLdVar
  loc_B9237A: FLdPr Me
  loc_B9237D: MemLdRfVar from_stack_1.global_60
  loc_B92380: LdPrVar
  loc_B92382: LateMemCall
  loc_B92388: ExitProcHresult
End Function

Private Function Proc_122_19_A0BA38() 'A0BA38
  'Data Table: 46BE10
  loc_A0B9F8: LitVarStr var_94, "</table>"
  loc_A0B9FD: PopAdLdVar
  loc_A0B9FE: FLdPr Me
  loc_A0BA01: MemLdRfVar from_stack_1.global_60
  loc_A0BA04: LdPrVar
  loc_A0BA06: LateMemCall
  loc_A0BA0C: LitVarStr var_94, "</body>"
  loc_A0BA11: PopAdLdVar
  loc_A0BA12: FLdPr Me
  loc_A0BA15: MemLdRfVar from_stack_1.global_60
  loc_A0BA18: LdPrVar
  loc_A0BA1A: LateMemCall
  loc_A0BA20: LitVarStr var_94, "</html>"
  loc_A0BA25: PopAdLdVar
  loc_A0BA26: FLdPr Me
  loc_A0BA29: MemLdRfVar from_stack_1.global_60
  loc_A0BA2C: LdPrVar
  loc_A0BA2E: LateMemCall
  loc_A0BA34: ExitProcHresult
End Function
