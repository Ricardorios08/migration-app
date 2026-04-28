VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptProcesoParaDarDeBajaFacilidad
  Caption = "Proceso para dar de baja facilidad de pago"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptProcesoParaDarDeBajaFacilidad.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11088
  ClientHeight = 5220
  StartUpPosition = 2 'CenterScreen
  Begin VB.CommandButton CmdConfirmar
    Caption = "Ejecutar Proceso"
    Left = 8160
    Top = 3720
    Width = 1455
    Height = 735
    TabIndex = 16
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
  Begin MSComctlLib.ProgressBar Pbar
    Left = 0
    Top = 3000
    Width = 10812
    Height = 156
    Visible = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptProcesoParaDarDeBajaFacilidad.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4965
    Width = 11085
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptProcesoParaDarDeBajaFacilidad.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9960
    Top = 3600
    Width = 855
    Height = 735
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptProcesoParaDarDeBajaFacilidad.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptProcesoParaDarDeBajaFacilidad.frx":0C04
    Left = 10200
    Top = 3240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 3480
    Width = 3495
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
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 12
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
    Left = 240
    Top = 3480
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
    Width = 10815
    Height = 2772
    TabIndex = 0
    Begin VB.OptionButton OptCuotasAtrasadas
      Caption = "Cuotas Atrasadas:"
      Left = 2040
      Top = 2160
      Width = 2292
      Height = 492
      TabIndex = 18
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
    Begin VB.OptionButton OptSinNingunaCuotaPagada
      Caption = "Sin Ninguna Cuota Pagada"
      Left = 2040
      Top = 1680
      Width = 3492
      Height = 492
      TabIndex = 17
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8640
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 3
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
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 2160
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptProcesoParaDarDeBajaFacilidad.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptProcesoParaDarDeBajaFacilidad.frx":0D18
    End
    Begin MSMask.MaskEdBox CantCuotasMsk
      Left = 4440
      Top = 2280
      Width = 492
      Height = 360
      TabIndex = 19
      OleObjectBlob = "rptProcesoParaDarDeBajaFacilidad.frx":0DC8
      DataField = "CodiTise"
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1380
      Top = 885
      Width = 705
      Height = 300
      TabIndex = 4
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
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 1320
      Top = 360
      Width = 765
      Height = 300
      TabIndex = 1
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
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9840
    Top = 3840
    Width = 492
    Height = 252
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptProcesoParaDarDeBajaFacilidad.frx":0E54
  End
End

Attribute VB_Name = "rptProcesoParaDarDeBajaFacilidad"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdNueva_Click() 'A117C0
  'Data Table: 49A7C0
  loc_A11780: LitI2_Byte 0
  loc_A11782: FLdPr Me
  loc_A11785: MemStI2 bGenerado
  loc_A11788: LitI2_Byte &HFF
  loc_A1178A: FLdPr Me
  loc_A1178D: MemStI2 bLogos
  loc_A11790: LitI2_Byte 0
  loc_A11792: ILdRf Me
  loc_A11795: CastAd
  loc_A11798: FStAdFunc var_88
  loc_A1179B: FLdRfVar var_88
  loc_A1179E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A117A3: FFree1Ad var_88
  loc_A117A6: Call HabilitarCriterio()
  loc_A117AB: ILdRf Me
  loc_A117AE: CastAd
  loc_A117B1: FStAdFunc var_88
  loc_A117B4: FLdRfVar var_88
  loc_A117B7: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A117BC: FFree1Ad var_88
  loc_A117BF: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A16228
  'Data Table: 49A7C0
  loc_A161F0: FLdPr Me
  loc_A161F3: VCallAd Control_ID_statusBar
  loc_A161F6: FStAdFunc var_88
  loc_A161F9: FLdPr var_88
  loc_A161FC: LateIdLdVar var_98 DispID_1 0
  loc_A16203: CStrVarTmp
  loc_A16204: CVarStr var_A8
  loc_A16207: PopAdLdVar
  loc_A16208: FLdPr Me
  loc_A1620B: VCallAd Control_ID_statusBar
  loc_A1620E: FStAdFunc var_BC
  loc_A16211: FLdPr var_BC
  loc_A16214: LateIdSt
  loc_A16219: FFreeAd var_88 = ""
  loc_A16220: FFreeVar var_98 = ""
  loc_A16227: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E23AC
  'Data Table: 49A7C0
  loc_9E2390: LitI2_Byte &HFF
  loc_9E2392: LitI2_Byte 0
  loc_9E2394: ILdRf Me
  loc_9E2397: CastAd
  loc_9E239A: FStAdFunc var_88
  loc_9E239D: FLdRfVar var_88
  loc_9E23A0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E23A5: FFree1Ad var_88
  loc_9E23A8: ExitProcHresult
  loc_9E23A9: CCyR4
  loc_9E23AA: LtI2
End Sub

Private Sub cmdPredeterminada_Click() '9D1AA0
  'Data Table: 49A7C0
  loc_9D1A88: LitI2_Byte 0
  loc_9D1A8A: ILdRf Me
  loc_9D1A8D: CastAd
  loc_9D1A90: FStAdFunc var_88
  loc_9D1A93: FLdRfVar var_88
  loc_9D1A96: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D1A9B: FFree1Ad var_88
  loc_9D1A9E: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9C1DD8
  'Data Table: 49A7C0
  loc_9C1DC4: FLdPr Me
  loc_9C1DC7: VCallAd Control_ID_DesdeMsk
  loc_9C1DCA: CVarAd
  loc_9C1DCE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1DD3: FFree1Var var_94 = ""
  loc_9C1DD6: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A62620
  'Data Table: 49A7C0
  loc_A625C4: FLdPr Me
  loc_A625C7: VCallAd Control_ID_DesdeMsk
  loc_A625CA: FStAdFunc var_88
  loc_A625CD: FLdPr var_88
  loc_A625D0: LateIdLdVar var_98 DispID_15 0
  loc_A625D7: CStrVarTmp
  loc_A625D8: FStStrNoPop var_9C
  loc_A625DB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A625E0: FStStrNoPop var_A0
  loc_A625E3: FLdPr Me
  loc_A625E6: MemStStrCopy
  loc_A625EA: FFreeStr var_9C = ""
  loc_A625F1: FFree1Ad var_88
  loc_A625F4: FFree1Var var_98 = ""
  loc_A625F7: FLdPr Me
  loc_A625FA: VCallAd Control_ID_DesdeMsk
  loc_A625FD: FStAdFuncNoPop
  loc_A62600: CastAd
  loc_A62603: FStAdFunc var_A4
  loc_A62606: FLdRfVar var_A4
  loc_A62609: FLdPr Me
  loc_A6260C: MemLdStr global_112
  loc_A6260F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A62614: IStI2 arg_C
  loc_A62617: FFreeAd var_88 = ""
  loc_A6261E: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A25290
  'Data Table: 49A7C0
  loc_A25248: ILdI2 KeyAscii
  loc_A2524B: CI4UI1
  loc_A2524C: LitI4 &H20
  loc_A25251: EqI4
  loc_A25252: BranchF loc_A2528F
  loc_A25255: LitVar_Missing var_A4
  loc_A25258: PopAdLdVar
  loc_A25259: LitVarI4
  loc_A25261: PopAdLdVar
  loc_A25262: ImpAdLdRf MemVar_D930A4
  loc_A25265: NewIfNullPr frmCalendario
  loc_A25268: frmCalendario.Show from_stack_1, from_stack_2
  loc_A2526D: ImpAdLdRf MemVar_D93028
  loc_A25270: CDargRef
  loc_A25274: FLdPr Me
  loc_A25277: VCallAd Control_ID_DesdeMsk
  loc_A2527A: FStAdFunc var_A8
  loc_A2527D: FLdPr var_A8
  loc_A25280: LateIdSt
  loc_A25285: FFree1Ad var_A8
  loc_A25288: LitStr vbNullString
  loc_A2528B: ImpAdStStrCopy MemVar_D93028
  loc_A2528F: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9FF174
  'Data Table: 49A7C0
  loc_9FF144: LitVarStr var_94, "Cerrando..."
  loc_9FF149: PopAdLdVar
  loc_9FF14A: FLdPr Me
  loc_9FF14D: VCallAd Control_ID_statusBar
  loc_9FF150: FStAdFunc var_A8
  loc_9FF153: FLdPr var_A8
  loc_9FF156: LateIdSt
  loc_9FF15B: FFree1Ad var_A8
  loc_9FF15E: ILdRf Me
  loc_9FF161: FStAdNoPop
  loc_9FF165: ImpAdLdRf MemVar_D9C5D8
  loc_9FF168: NewIfNullPr Global
  loc_9FF16B: Global.Unload from_stack_1
  loc_9FF170: FFree1Ad var_A8
  loc_9FF173: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E2F8C
  'Data Table: 49A7C0
  loc_9E2F70: LitI2_Byte 0
  loc_9E2F72: PopTmpLdAd2 var_8A
  loc_9E2F75: ILdRf Me
  loc_9E2F78: CastAd
  loc_9E2F7B: FStAdFunc var_88
  loc_9E2F7E: FLdRfVar var_88
  loc_9E2F81: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2F86: FFree1Ad var_88
  loc_9E2F89: ExitProcHresult
End Sub

Private Sub CantCuotasMsk_UnknownEvent_0 '9C20F0
  'Data Table: 49A7C0
  loc_9C20DC: FLdPr Me
  loc_9C20DF: VCallAd Control_ID_CantCuotasMsk
  loc_9C20E2: CVarAd
  loc_9C20E6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C20EB: FFree1Var var_94 = ""
  loc_9C20EE: ExitProcHresult
End Sub

Private Function CantCuotasMsk_UnknownEvent_8(arg_C) 'A6F7E0
  'Data Table: 49A7C0
  loc_A6F778: FLdPr Me
  loc_A6F77B: VCallAd Control_ID_CantCuotasMsk
  loc_A6F77E: FStAdFunc var_88
  loc_A6F781: FLdPr var_88
  loc_A6F784: LateIdLdVar var_98 DispID_22 0
  loc_A6F78B: PopAd
  loc_A6F78D: LitI2_Byte &HFF
  loc_A6F78F: LitI2_Byte 0
  loc_A6F791: FLdRfVar var_98
  loc_A6F794: CStrVarTmp
  loc_A6F795: FStStrNoPop var_9C
  loc_A6F798: LitStr "Cantidad de Cuotas"
  loc_A6F79B: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A6F7A0: FStStrNoPop var_A0
  loc_A6F7A3: FLdPr Me
  loc_A6F7A6: MemStStrCopy
  loc_A6F7AA: FFreeStr var_9C = ""
  loc_A6F7B1: FFree1Ad var_88
  loc_A6F7B4: FFree1Var var_98 = ""
  loc_A6F7B7: FLdPr Me
  loc_A6F7BA: VCallAd Control_ID_CantCuotasMsk
  loc_A6F7BD: FStAdFuncNoPop
  loc_A6F7C0: CastAd
  loc_A6F7C3: FStAdFunc var_A4
  loc_A6F7C6: FLdRfVar var_A4
  loc_A6F7C9: FLdPr Me
  loc_A6F7CC: MemLdStr global_112
  loc_A6F7CF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6F7D4: IStI2 arg_C
  loc_A6F7D7: FFreeAd var_88 = ""
  loc_A6F7DE: ExitProcHresult
End Function

Private Sub HastaMsk_UnknownEvent_0 '9C1D90
  'Data Table: 49A7C0
  loc_9C1D7C: FLdPr Me
  loc_9C1D7F: VCallAd Control_ID_HastaMsk
  loc_9C1D82: CVarAd
  loc_9C1D86: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1D8B: FFree1Var var_94 = ""
  loc_9C1D8E: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'A61900
  'Data Table: 49A7C0
  loc_A618A4: FLdPr Me
  loc_A618A7: VCallAd Control_ID_HastaMsk
  loc_A618AA: FStAdFunc var_88
  loc_A618AD: FLdPr var_88
  loc_A618B0: LateIdLdVar var_98 DispID_15 0
  loc_A618B7: CStrVarTmp
  loc_A618B8: FStStrNoPop var_9C
  loc_A618BB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A618C0: FStStrNoPop var_A0
  loc_A618C3: FLdPr Me
  loc_A618C6: MemStStrCopy
  loc_A618CA: FFreeStr var_9C = ""
  loc_A618D1: FFree1Ad var_88
  loc_A618D4: FFree1Var var_98 = ""
  loc_A618D7: FLdPr Me
  loc_A618DA: VCallAd Control_ID_HastaMsk
  loc_A618DD: FStAdFuncNoPop
  loc_A618E0: CastAd
  loc_A618E3: FStAdFunc var_A4
  loc_A618E6: FLdRfVar var_A4
  loc_A618E9: FLdPr Me
  loc_A618EC: MemLdStr global_112
  loc_A618EF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A618F4: IStI2 arg_C
  loc_A618F7: FFreeAd var_88 = ""
  loc_A618FE: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A25404
  'Data Table: 49A7C0
  loc_A253BC: ILdI2 KeyAscii
  loc_A253BF: CI4UI1
  loc_A253C0: LitI4 &H20
  loc_A253C5: EqI4
  loc_A253C6: BranchF loc_A25403
  loc_A253C9: LitVar_Missing var_A4
  loc_A253CC: PopAdLdVar
  loc_A253CD: LitVarI4
  loc_A253D5: PopAdLdVar
  loc_A253D6: ImpAdLdRf MemVar_D930A4
  loc_A253D9: NewIfNullPr frmCalendario
  loc_A253DC: frmCalendario.Show from_stack_1, from_stack_2
  loc_A253E1: ImpAdLdRf MemVar_D93028
  loc_A253E4: CDargRef
  loc_A253E8: FLdPr Me
  loc_A253EB: VCallAd Control_ID_HastaMsk
  loc_A253EE: FStAdFunc var_A8
  loc_A253F1: FLdPr var_A8
  loc_A253F4: LateIdSt
  loc_A253F9: FFree1Ad var_A8
  loc_A253FC: LitStr vbNullString
  loc_A253FF: ImpAdStStrCopy MemVar_D93028
  loc_A25403: ExitProcHresult
End Sub

Private Sub Form_Load() 'AF0FE4
  'Data Table: 49A7C0
  loc_AF0E64: ILdRf Me
  loc_AF0E67: CastAd
  loc_AF0E6A: FStAdFunc var_88
  loc_AF0E6D: FLdRfVar var_88
  loc_AF0E70: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AF0E75: FFree1Ad var_88
  loc_AF0E78: LitVarStr var_98, "Proceso para dar de baja facilidades con estado activa, sin ninguna cuota pagada"
  loc_AF0E7D: CStrVarVal var_9C
  loc_AF0E81: FLdPr Me
  loc_AF0E84: Me.Caption = from_stack_1
  loc_AF0E89: FFree1Str var_9C
  loc_AF0E8C: Call cmdNueva_Click()
  loc_AF0E91: LitI2_Byte 0
  loc_AF0E93: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF0E98: CVarDate var_AC
  loc_AF0E9C: FLdRfVar var_BC
  loc_AF0E9F: ImpAdCallFPR4  = Year()
  loc_AF0EA4: LitI2_Byte 0
  loc_AF0EA6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF0EAB: CVarDate var_DC
  loc_AF0EAF: FLdRfVar var_EC
  loc_AF0EB2: ImpAdCallFPR4  = Month()
  loc_AF0EB7: LitI2_Byte 1
  loc_AF0EB9: FLdRfVar var_EC
  loc_AF0EBC: LitVarI2 var_FC, 1
  loc_AF0EC1: SubVar var_10C
  loc_AF0EC5: CI2Var
  loc_AF0EC6: FLdRfVar var_BC
  loc_AF0EC9: CI2Var
  loc_AF0ECA: FLdRfVar var_11C
  loc_AF0ECD: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF0ED2: FLdRfVar var_11C
  loc_AF0ED5: CStrVarTmp
  loc_AF0ED6: CVarStr var_12C
  loc_AF0ED9: PopAdLdVar
  loc_AF0EDA: FLdPr Me
  loc_AF0EDD: VCallAd Control_ID_DesdeMsk
  loc_AF0EE0: FStAdFunc var_88
  loc_AF0EE3: FLdPr var_88
  loc_AF0EE6: LateIdSt
  loc_AF0EEB: FFree1Ad var_88
  loc_AF0EEE: FFreeVar var_AC = "": var_DC = "": var_EC = "": var_BC = "": var_11C = ""
  loc_AF0EFD: FLdPr Me
  loc_AF0F00: VCallAd Control_ID_DesdeMsk
  loc_AF0F03: FStAdFunc var_88
  loc_AF0F06: FLdPr var_88
  loc_AF0F09: LateIdLdVar var_AC DispID_15 0
  loc_AF0F10: CStrVarTmp
  loc_AF0F11: CVarStr var_BC
  loc_AF0F14: FLdRfVar var_DC
  loc_AF0F17: ImpAdCallFPR4  = Year()
  loc_AF0F1C: FLdPr Me
  loc_AF0F1F: VCallAd Control_ID_DesdeMsk
  loc_AF0F22: FStAdFunc var_140
  loc_AF0F25: FLdPr var_140
  loc_AF0F28: LateIdLdVar var_EC DispID_15 0
  loc_AF0F2F: CStrVarTmp
  loc_AF0F30: CVarStr var_10C
  loc_AF0F33: FLdRfVar var_11C
  loc_AF0F36: ImpAdCallFPR4  = Month()
  loc_AF0F3B: LitI2_Byte 1
  loc_AF0F3D: FLdRfVar var_11C
  loc_AF0F40: LitVarI2 var_98, 1
  loc_AF0F45: AddVar var_12C
  loc_AF0F49: CI2Var
  loc_AF0F4A: FLdRfVar var_DC
  loc_AF0F4D: CI2Var
  loc_AF0F4E: FLdRfVar var_150
  loc_AF0F51: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF0F56: FLdRfVar var_150
  loc_AF0F59: LitVarI2 var_CC, 1
  loc_AF0F5E: SubVar var_160
  loc_AF0F62: CStrVarTmp
  loc_AF0F63: CVarStr var_170
  loc_AF0F66: PopAdLdVar
  loc_AF0F67: FLdPr Me
  loc_AF0F6A: VCallAd Control_ID_HastaMsk
  loc_AF0F6D: FStAdFunc var_174
  loc_AF0F70: FLdPr var_174
  loc_AF0F73: LateIdSt
  loc_AF0F78: FFreeAd var_88 = "": var_140 = ""
  loc_AF0F81: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_AF0F96: LitI2_Byte &HFF
  loc_AF0F98: FLdPr Me
  loc_AF0F9B: VCallAd Control_ID_OptSinNingunaCuotaPagada
  loc_AF0F9E: FStAdFunc var_88
  loc_AF0FA1: FLdPr var_88
  loc_AF0FA4: Me.Value = from_stack_1b
  loc_AF0FA9: FFree1Ad var_88
  loc_AF0FAC: LitI2_Byte 0
  loc_AF0FAE: FLdPr Me
  loc_AF0FB1: VCallAd Control_ID_OptCuotasAtrasadas
  loc_AF0FB4: FStAdFunc var_88
  loc_AF0FB7: FLdPr var_88
  loc_AF0FBA: Me.Value = from_stack_1b
  loc_AF0FBF: FFree1Ad var_88
  loc_AF0FC2: LitI2_Byte 0
  loc_AF0FC4: CStrUI1
  loc_AF0FC6: CVarStr var_AC
  loc_AF0FC9: PopAdLdVar
  loc_AF0FCA: FLdPr Me
  loc_AF0FCD: VCallAd Control_ID_CantCuotasMsk
  loc_AF0FD0: FStAdFunc var_88
  loc_AF0FD3: FLdPr var_88
  loc_AF0FD6: LateIdSt
  loc_AF0FDB: FFree1Ad var_88
  loc_AF0FDE: FFree1Var var_AC = ""
  loc_AF0FE1: ExitProcHresult
  loc_AF0FE2: FLdPr Form_Load808
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D21C0
  'Data Table: 49A7C0
  loc_9D21A8: FLdPr Me
  loc_9D21AB: VCallAd Control_ID_wbbReporte
  loc_9D21AE: FStAdFunc var_88
  loc_9D21B1: FLdRfVar var_88
  loc_9D21B4: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D21B9: FFree1Ad var_88
  loc_9D21BC: ExitProcHresult
  loc_9D21BD: LtI2
  loc_9D21BE: NeR8
End Sub

Private Sub CmdConfirmar_Click() 'C0AE44
  'Data Table: 49A7C0
  loc_C0A540: LitVar_Missing var_10C
  loc_C0A543: LitVar_Missing var_EC
  loc_C0A546: LitVar_Missing var_CC
  loc_C0A549: LitI4 4
  loc_C0A54E: LitVarStr var_9C, "Esta seguro de ejecutar el proceso"
  loc_C0A553: FStVarCopyObj var_AC
  loc_C0A556: FLdRfVar var_AC
  loc_C0A559: ImpAdCallI2 MsgBox(, , , , )
  loc_C0A55E: LitI4 6
  loc_C0A563: EqI4
  loc_C0A564: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_C0A56F: BranchF loc_C0AE1A
  loc_C0A572: LitVarStr var_9C, "Ejecutando el proceso...espere por favor"
  loc_C0A577: PopAdLdVar
  loc_C0A578: FLdPr Me
  loc_C0A57B: VCallAd Control_ID_statusBar
  loc_C0A57E: FStAdFunc var_110
  loc_C0A581: FLdPr var_110
  loc_C0A584: LateIdSt
  loc_C0A589: FFree1Ad var_110
  loc_C0A58C: LitI4 &HB
  loc_C0A591: CI2I4
  loc_C0A592: FLdPr Me
  loc_C0A595: Me.MousePointer = from_stack_1
  loc_C0A59A: LitI2_Byte 0
  loc_C0A59C: PopTmpLdAd2 var_112
  loc_C0A59F: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C0A5A4: FLdPr Me
  loc_C0A5A7: MemLdStr global_112
  loc_C0A5AA: LitStr vbNullString
  loc_C0A5AD: NeStr
  loc_C0A5AF: BranchF loc_C0A5B5
  loc_C0A5B2: Branch loc_C0AE1A
  loc_C0A5B5: LitI2_Byte 0
  loc_C0A5B7: PopTmpLdAd2 var_112
  loc_C0A5BA: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C0A5BF: FLdPr Me
  loc_C0A5C2: MemLdStr global_112
  loc_C0A5C5: LitStr vbNullString
  loc_C0A5C8: NeStr
  loc_C0A5CA: BranchF loc_C0A5D0
  loc_C0A5CD: Branch loc_C0AE1A
  loc_C0A5D0: FLdPr Me
  loc_C0A5D3: VCallAd Control_ID_DesdeMsk
  loc_C0A5D6: FStAdFunc var_110
  loc_C0A5D9: FLdPr var_110
  loc_C0A5DC: LateIdLdVar var_AC DispID_15 0
  loc_C0A5E3: PopAd
  loc_C0A5E5: LitI4 1
  loc_C0A5EA: LitI4 1
  loc_C0A5EF: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_C0A5F4: FStVarCopyObj var_EC
  loc_C0A5F7: FLdRfVar var_EC
  loc_C0A5FA: FLdRfVar var_AC
  loc_C0A5FD: CStrVarTmp
  loc_C0A5FE: CVarStr var_CC
  loc_C0A601: ImpAdCallI2 Format$(, )
  loc_C0A606: FStStr var_88
  loc_C0A609: FFree1Ad var_110
  loc_C0A60C: FFreeVar var_AC = "": var_CC = ""
  loc_C0A615: FLdPr Me
  loc_C0A618: VCallAd Control_ID_HastaMsk
  loc_C0A61B: FStAdFunc var_110
  loc_C0A61E: FLdPr var_110
  loc_C0A621: LateIdLdVar var_AC DispID_15 0
  loc_C0A628: PopAd
  loc_C0A62A: LitI4 1
  loc_C0A62F: LitI4 1
  loc_C0A634: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_C0A639: FStVarCopyObj var_EC
  loc_C0A63C: FLdRfVar var_EC
  loc_C0A63F: FLdRfVar var_AC
  loc_C0A642: CStrVarTmp
  loc_C0A643: CVarStr var_CC
  loc_C0A646: ImpAdCallI2 Format$(, )
  loc_C0A64B: FStStr var_8C
  loc_C0A64E: FFree1Ad var_110
  loc_C0A651: FFreeVar var_AC = "": var_CC = ""
  loc_C0A65A: LitStr " DROP TEMPORARY TABLE IF EXISTS tribu;"
  loc_C0A65D: LitStr " CREATE TEMPORARY TABLE tribu ("
  loc_C0A660: ConcatStr
  loc_C0A661: FStStrNoPop var_118
  loc_C0A664: LitStr "odiFapa` int(8) unsigned NOT NULL default '0',"
  loc_C0A667: ConcatStr
  loc_C0A668: FStStrNoPop var_11C
  loc_C0A66B: LitStr " KEY mpidx` (`CodiFapa`)"
  loc_C0A66E: ConcatStr
  loc_C0A66F: FStStrNoPop var_120
  loc_C0A672: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_C0A675: ConcatStr
  loc_C0A676: FStStrNoPop var_124
  loc_C0A679: FLdPr Me
  loc_C0A67C: MemLdRfVar from_stack_1.global_92
  loc_C0A67F: NewIfNullPr clsctacte
  loc_C0A682: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C0A687: FFreeStr var_118 = "": var_11C = "": var_120 = ""
  loc_C0A692: FLdRfVar var_112
  loc_C0A695: FLdPr Me
  loc_C0A698: VCallAd Control_ID_OptSinNingunaCuotaPagada
  loc_C0A69B: FStAdFunc var_110
  loc_C0A69E: FLdPr var_110
  loc_C0A6A1:  = Me.Value
  loc_C0A6A6: FLdI2 var_112
  loc_C0A6A9: LitI2_Byte &HFF
  loc_C0A6AB: EqI2
  loc_C0A6AC: FFree1Ad var_110
  loc_C0A6AF: BranchF loc_C0A8BD
  loc_C0A6B2: LitStr "Municipalidad de Guaymallén"
  loc_C0A6B5: LitStr "Municipalidad de Tunuyán"
  loc_C0A6B8: EqStr
  loc_C0A6BA: BranchF loc_C0A701
  loc_C0A6BD: LitStr "SELECT * FROM facipago "
  loc_C0A6C0: LitStr " WHERE facipago.FealFapa BETWEEN "
  loc_C0A6C3: ConcatStr
  loc_C0A6C4: FStStrNoPop var_118
  loc_C0A6C7: ILdRf var_88
  loc_C0A6CA: ConcatStr
  loc_C0A6CB: FStStrNoPop var_11C
  loc_C0A6CE: LitStr " AND "
  loc_C0A6D1: ConcatStr
  loc_C0A6D2: FStStrNoPop var_120
  loc_C0A6D5: ILdRf var_8C
  loc_C0A6D8: ConcatStr
  loc_C0A6D9: FStStrNoPop var_124
  loc_C0A6DC: LitStr " AND facipago.EstaFapa = 'Activa' ORDER BY facipago.FealFapa"
  loc_C0A6DF: ConcatStr
  loc_C0A6E0: FStStrNoPop var_128
  loc_C0A6E3: FLdPr Me
  loc_C0A6E6: MemLdRfVar from_stack_1.global_96
  loc_C0A6E9: NewIfNullPr clsboleto
  loc_C0A6EC: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C0A6F1: FFreeStr var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_C0A6FE: Branch loc_C0A74B
  loc_C0A701: LitStr "SELECT * FROM facipago "
  loc_C0A704: LitStr " WHERE facipago.FealFapa BETWEEN "
  loc_C0A707: ConcatStr
  loc_C0A708: FStStrNoPop var_118
  loc_C0A70B: ILdRf var_88
  loc_C0A70E: ConcatStr
  loc_C0A70F: FStStrNoPop var_11C
  loc_C0A712: LitStr " AND "
  loc_C0A715: ConcatStr
  loc_C0A716: FStStrNoPop var_120
  loc_C0A719: ILdRf var_8C
  loc_C0A71C: ConcatStr
  loc_C0A71D: FStStrNoPop var_124
  loc_C0A720: LitStr " AND facipago.NovaFapa = 0"
  loc_C0A723: ConcatStr
  loc_C0A724: FStStrNoPop var_128
  loc_C0A727: LitStr " AND facipago.EstaFapa = 'Activa' ORDER BY facipago.FealFapa"
  loc_C0A72A: ConcatStr
  loc_C0A72B: FStStrNoPop var_12C
  loc_C0A72E: FLdPr Me
  loc_C0A731: MemLdRfVar from_stack_1.global_96
  loc_C0A734: NewIfNullPr clsboleto
  loc_C0A737: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C0A73C: FFreeStr var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_C0A74B: FLdRfVar var_130
  loc_C0A74E: FLdPr Me
  loc_C0A751: MemLdRfVar from_stack_1.global_96
  loc_C0A754: NewIfNullPr clsboleto
  loc_C0A757: from_stack_1 = clsboleto.RecordCount
  loc_C0A75C: ILdRf var_130
  loc_C0A75F: LitI4 0
  loc_C0A764: GtI4
  loc_C0A765: BranchF loc_C0A8BD
  loc_C0A768: FLdPr Me
  loc_C0A76B: MemLdRfVar from_stack_1.global_96
  loc_C0A76E: NewIfNullPr clsboleto
  loc_C0A771: Call clsboleto.MoveFirst()
  loc_C0A776: FLdRfVar var_112
  loc_C0A779: FLdPr Me
  loc_C0A77C: MemLdRfVar from_stack_1.global_96
  loc_C0A77F: NewIfNullPr clsboleto
  loc_C0A782: from_stack_1 = clsboleto.EOF
  loc_C0A787: FLdI2 var_112
  loc_C0A78A: NotI4
  loc_C0A78B: BranchF loc_C0A8BD
  loc_C0A78E: LitStr " SELECT CodiFapa, CuotDefa FROM detafapa "
  loc_C0A791: LitStr " WHERE CodiFapa = "
  loc_C0A794: ConcatStr
  loc_C0A795: CVarStr var_CC
  loc_C0A798: FLdRfVar var_AC
  loc_C0A79B: FLdRfVar var_138
  loc_C0A79E: LitVarStr var_9C, "CodiFapa"
  loc_C0A7A3: PopAdLdVar
  loc_C0A7A4: FLdRfVar var_134
  loc_C0A7A7: FLdRfVar var_110
  loc_C0A7AA: FLdPr Me
  loc_C0A7AD: MemLdRfVar from_stack_1.global_96
  loc_C0A7B0: NewIfNullPr clsboleto
  loc_C0A7B3: from_stack_1v = clsboleto.RsFrmGet()
  loc_C0A7B8: FLdPr var_110
  loc_C0A7BB:  = Me.Fields
  loc_C0A7C0: FLdPr var_134
  loc_C0A7C3: from_stack_2 = Me.Item(from_stack_1)
  loc_C0A7C8: FLdPr var_138
  loc_C0A7CB:  = Me.Value
  loc_C0A7D0: FLdRfVar var_AC
  loc_C0A7D3: ConcatVar var_EC
  loc_C0A7D7: LitVarStr var_BC, " AND FepaDefa IS NOT NULL "
  loc_C0A7DC: ConcatVar var_10C
  loc_C0A7E0: LitVarStr var_DC, " ORDER BY detafapa.CodiFapa, detafapa.CuotDefa"
  loc_C0A7E5: ConcatVar var_148
  loc_C0A7E9: CStrVarVal var_118
  loc_C0A7ED: FLdPr Me
  loc_C0A7F0: MemLdRfVar from_stack_1.global_92
  loc_C0A7F3: NewIfNullPr clsctacte
  loc_C0A7F6: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C0A7FB: FFree1Str var_118
  loc_C0A7FE: FFreeAd var_110 = "": var_134 = ""
  loc_C0A807: FFreeVar var_CC = "": var_AC = "": var_EC = "": var_10C = ""
  loc_C0A814: FLdRfVar var_130
  loc_C0A817: FLdPr Me
  loc_C0A81A: MemLdRfVar from_stack_1.global_92
  loc_C0A81D: NewIfNullPr clsctacte
  loc_C0A820: from_stack_1 = clsctacte.RecordCount
  loc_C0A825: ILdRf var_130
  loc_C0A828: LitI4 0
  loc_C0A82D: EqI4
  loc_C0A82E: BranchF loc_C0A8AC
  loc_C0A831: LitStr "INSERT INTO tribu (CodiFapa)"
  loc_C0A834: LitStr " VALUE ("
  loc_C0A837: ConcatStr
  loc_C0A838: CVarStr var_CC
  loc_C0A83B: FLdRfVar var_AC
  loc_C0A83E: FLdRfVar var_138
  loc_C0A841: LitVarStr var_9C, "CodiFapa"
  loc_C0A846: PopAdLdVar
  loc_C0A847: FLdRfVar var_134
  loc_C0A84A: FLdRfVar var_110
  loc_C0A84D: FLdPr Me
  loc_C0A850: MemLdRfVar from_stack_1.global_96
  loc_C0A853: NewIfNullPr clsboleto
  loc_C0A856: from_stack_1v = clsboleto.RsFrmGet()
  loc_C0A85B: FLdPr var_110
  loc_C0A85E:  = Me.Fields
  loc_C0A863: FLdPr var_134
  loc_C0A866: from_stack_2 = Me.Item(from_stack_1)
  loc_C0A86B: FLdPr var_138
  loc_C0A86E:  = Me.Value
  loc_C0A873: FLdRfVar var_AC
  loc_C0A876: ConcatVar var_EC
  loc_C0A87A: LitVarStr var_BC, ")"
  loc_C0A87F: ConcatVar var_10C
  loc_C0A883: CStrVarVal var_118
  loc_C0A887: FLdPr Me
  loc_C0A88A: MemLdRfVar from_stack_1.global_92
  loc_C0A88D: NewIfNullPr clsctacte
  loc_C0A890: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C0A895: FFree1Str var_118
  loc_C0A898: FFreeAd var_110 = "": var_134 = ""
  loc_C0A8A1: FFreeVar var_CC = "": var_AC = "": var_EC = ""
  loc_C0A8AC: FLdPr Me
  loc_C0A8AF: MemLdRfVar from_stack_1.global_96
  loc_C0A8B2: NewIfNullPr clsboleto
  loc_C0A8B5: Call clsboleto.MoveSiguiente()
  loc_C0A8BA: Branch loc_C0A776
  loc_C0A8BD: FLdRfVar var_112
  loc_C0A8C0: FLdPr Me
  loc_C0A8C3: VCallAd Control_ID_OptCuotasAtrasadas
  loc_C0A8C6: FStAdFunc var_110
  loc_C0A8C9: FLdPr var_110
  loc_C0A8CC:  = Me.Value
  loc_C0A8D1: FLdI2 var_112
  loc_C0A8D4: LitI2_Byte &HFF
  loc_C0A8D6: EqI2
  loc_C0A8D7: FFree1Ad var_110
  loc_C0A8DA: BranchF loc_C0AC42
  loc_C0A8DD: LitStr "Municipalidad de Guaymallén"
  loc_C0A8E0: LitStr "Municipalidad de Tupungato"
  loc_C0A8E3: EqStr
  loc_C0A8E5: BranchF loc_C0AA9B
  loc_C0A8E8: LitI2_Byte 0
  loc_C0A8EA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C0A8EF: FStFPR8 var_178
  loc_C0A8F2: LitStr "SELECT facipago.CodiOfic, facipago.CuenCtct, facipago.CodiFapa, 0 as FeveCuot, COUNT(detafapa.CuotDefa) as CantImpa, 'Atrasados' as EstaFapa, "
  loc_C0A8F5: LitStr " datediff(current_date, FeveDefa) As CantDias"
  loc_C0A8F8: ConcatStr
  loc_C0A8F9: FStStrNoPop var_118
  loc_C0A8FC: LitStr " FROM detafapa INNER JOIN facipago ON facipago.CodiFapa = detafapa.CodiFapa"
  loc_C0A8FF: ConcatStr
  loc_C0A900: FStStrNoPop var_11C
  loc_C0A903: LitStr " WHERE facipago.EstaFapa = 'Activa'"
  loc_C0A906: ConcatStr
  loc_C0A907: FStStrNoPop var_120
  loc_C0A90A: LitStr " AND detafapa.FepaDefa IS NULL"
  loc_C0A90D: ConcatStr
  loc_C0A90E: FStStrNoPop var_124
  loc_C0A911: LitStr " AND facipago.FealFapa BETWEEN "
  loc_C0A914: ConcatStr
  loc_C0A915: FStStrNoPop var_128
  loc_C0A918: ILdRf var_88
  loc_C0A91B: ConcatStr
  loc_C0A91C: FStStrNoPop var_12C
  loc_C0A91F: LitStr " AND "
  loc_C0A922: ConcatStr
  loc_C0A923: FStStrNoPop var_14C
  loc_C0A926: ILdRf var_8C
  loc_C0A929: ConcatStr
  loc_C0A92A: FStStrNoPop var_150
  loc_C0A92D: LitStr " AND FeveDefa < '"
  loc_C0A930: ConcatStr
  loc_C0A931: FStStrNoPop var_154
  loc_C0A934: LitI4 1
  loc_C0A939: LitI4 1
  loc_C0A93E: LitVarStr var_BC, "yyyy-mm-dd"
  loc_C0A943: FStVarCopyObj var_CC
  loc_C0A946: FLdRfVar var_CC
  loc_C0A949: FLdFPR8 var_178
  loc_C0A94C: CVarDate var_AC
  loc_C0A950: ImpAdCallI2 Format$(, )
  loc_C0A955: FStStrNoPop var_158
  loc_C0A958: ConcatStr
  loc_C0A959: FStStrNoPop var_15C
  loc_C0A95C: LitStr "'"
  loc_C0A95F: ConcatStr
  loc_C0A960: FStStrNoPop var_160
  loc_C0A963: LitStr " GROUP BY detafapa.CodiFapa  HAVING  CantImpa >= "
  loc_C0A966: ConcatStr
  loc_C0A967: FStStrNoPop var_164
  loc_C0A96A: FLdPr Me
  loc_C0A96D: VCallAd Control_ID_CantCuotasMsk
  loc_C0A970: FStAdFunc var_110
  loc_C0A973: FLdPr var_110
  loc_C0A976: LateIdLdVar var_EC DispID_22 0
  loc_C0A97D: CStrVarTmp
  loc_C0A97E: FStStrNoPop var_168
  loc_C0A981: ConcatStr
  loc_C0A982: FStStrNoPop var_16C
  loc_C0A985: LitStr " AND CantDias >= 60"
  loc_C0A988: ConcatStr
  loc_C0A989: FStStrNoPop var_170
  loc_C0A98C: FLdPr Me
  loc_C0A98F: MemLdRfVar from_stack_1.global_96
  loc_C0A992: NewIfNullPr clsboleto
  loc_C0A995: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C0A99A: FFreeStr var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_C0A9BD: FFree1Ad var_110
  loc_C0A9C0: FFreeVar var_AC = "": var_CC = ""
  loc_C0A9C9: FLdRfVar var_130
  loc_C0A9CC: FLdPr Me
  loc_C0A9CF: MemLdRfVar from_stack_1.global_96
  loc_C0A9D2: NewIfNullPr clsboleto
  loc_C0A9D5: from_stack_1 = clsboleto.RecordCount
  loc_C0A9DA: ILdRf var_130
  loc_C0A9DD: LitI4 0
  loc_C0A9E2: GtI4
  loc_C0A9E3: BranchF loc_C0AA98
  loc_C0A9E6: FLdPr Me
  loc_C0A9E9: MemLdRfVar from_stack_1.global_96
  loc_C0A9EC: NewIfNullPr clsboleto
  loc_C0A9EF: Call clsboleto.MoveFirst()
  loc_C0A9F4: FLdRfVar var_112
  loc_C0A9F7: FLdPr Me
  loc_C0A9FA: MemLdRfVar from_stack_1.global_96
  loc_C0A9FD: NewIfNullPr clsboleto
  loc_C0AA00: from_stack_1 = clsboleto.EOF
  loc_C0AA05: FLdI2 var_112
  loc_C0AA08: NotI4
  loc_C0AA09: BranchF loc_C0AA98
  loc_C0AA0C: LitStr "INSERT INTO tribu (CodiFapa)"
  loc_C0AA0F: LitStr " VALUE ("
  loc_C0AA12: ConcatStr
  loc_C0AA13: CVarStr var_CC
  loc_C0AA16: FLdRfVar var_AC
  loc_C0AA19: FLdRfVar var_138
  loc_C0AA1C: LitVarStr var_9C, "CodiFapa"
  loc_C0AA21: PopAdLdVar
  loc_C0AA22: FLdRfVar var_134
  loc_C0AA25: FLdRfVar var_110
  loc_C0AA28: FLdPr Me
  loc_C0AA2B: MemLdRfVar from_stack_1.global_96
  loc_C0AA2E: NewIfNullPr clsboleto
  loc_C0AA31: from_stack_1v = clsboleto.RsFrmGet()
  loc_C0AA36: FLdPr var_110
  loc_C0AA39:  = Me.Fields
  loc_C0AA3E: FLdPr var_134
  loc_C0AA41: from_stack_2 = Me.Item(from_stack_1)
  loc_C0AA46: FLdPr var_138
  loc_C0AA49:  = Me.Value
  loc_C0AA4E: FLdRfVar var_AC
  loc_C0AA51: ConcatVar var_EC
  loc_C0AA55: LitVarStr var_BC, ")"
  loc_C0AA5A: ConcatVar var_10C
  loc_C0AA5E: CStrVarVal var_118
  loc_C0AA62: FLdPr Me
  loc_C0AA65: MemLdRfVar from_stack_1.global_92
  loc_C0AA68: NewIfNullPr clsctacte
  loc_C0AA6B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C0AA70: FFree1Str var_118
  loc_C0AA73: FFreeAd var_110 = "": var_134 = ""
  loc_C0AA7C: FFreeVar var_CC = "": var_AC = "": var_EC = ""
  loc_C0AA87: FLdPr Me
  loc_C0AA8A: MemLdRfVar from_stack_1.global_96
  loc_C0AA8D: NewIfNullPr clsboleto
  loc_C0AA90: Call clsboleto.MoveSiguiente()
  loc_C0AA95: Branch loc_C0A9F4
  loc_C0AA98: Branch loc_C0AC42
  loc_C0AA9B: LitI2_Byte 0
  loc_C0AA9D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C0AAA2: FStFPR8 var_178
  loc_C0AAA5: LitStr "SELECT facipago.CodiOfic, facipago.CuenCtct, facipago.CodiFapa, 0 as FeveCuot, COUNT(detafapa.CuotDefa) as CantImpa, 'Atrasados' as EstaFapa, "
  loc_C0AAA8: LitStr " datediff(current_date, FeveDefa) As CantDias"
  loc_C0AAAB: ConcatStr
  loc_C0AAAC: FStStrNoPop var_118
  loc_C0AAAF: LitStr " FROM detafapa INNER JOIN facipago ON facipago.CodiFapa = detafapa.CodiFapa"
  loc_C0AAB2: ConcatStr
  loc_C0AAB3: FStStrNoPop var_11C
  loc_C0AAB6: LitStr " WHERE facipago.EstaFapa = 'Activa'"
  loc_C0AAB9: ConcatStr
  loc_C0AABA: FStStrNoPop var_120
  loc_C0AABD: LitStr " AND detafapa.FepaDefa IS NULL"
  loc_C0AAC0: ConcatStr
  loc_C0AAC1: FStStrNoPop var_124
  loc_C0AAC4: LitStr " AND facipago.FealFapa BETWEEN "
  loc_C0AAC7: ConcatStr
  loc_C0AAC8: FStStrNoPop var_128
  loc_C0AACB: ILdRf var_88
  loc_C0AACE: ConcatStr
  loc_C0AACF: FStStrNoPop var_12C
  loc_C0AAD2: LitStr " AND "
  loc_C0AAD5: ConcatStr
  loc_C0AAD6: FStStrNoPop var_14C
  loc_C0AAD9: ILdRf var_8C
  loc_C0AADC: ConcatStr
  loc_C0AADD: FStStrNoPop var_150
  loc_C0AAE0: LitStr " AND FeveDefa < '"
  loc_C0AAE3: ConcatStr
  loc_C0AAE4: FStStrNoPop var_154
  loc_C0AAE7: LitI4 1
  loc_C0AAEC: LitI4 1
  loc_C0AAF1: LitVarStr var_BC, "yyyy-mm-dd"
  loc_C0AAF6: FStVarCopyObj var_CC
  loc_C0AAF9: FLdRfVar var_CC
  loc_C0AAFC: FLdFPR8 var_178
  loc_C0AAFF: CVarDate var_AC
  loc_C0AB03: ImpAdCallI2 Format$(, )
  loc_C0AB08: FStStrNoPop var_158
  loc_C0AB0B: ConcatStr
  loc_C0AB0C: FStStrNoPop var_15C
  loc_C0AB0F: LitStr "'"
  loc_C0AB12: ConcatStr
  loc_C0AB13: FStStrNoPop var_160
  loc_C0AB16: LitStr " GROUP BY detafapa.CodiFapa  HAVING  CantImpa >= "
  loc_C0AB19: ConcatStr
  loc_C0AB1A: FStStrNoPop var_164
  loc_C0AB1D: FLdPr Me
  loc_C0AB20: VCallAd Control_ID_CantCuotasMsk
  loc_C0AB23: FStAdFunc var_110
  loc_C0AB26: FLdPr var_110
  loc_C0AB29: LateIdLdVar var_EC DispID_22 0
  loc_C0AB30: CStrVarTmp
  loc_C0AB31: FStStrNoPop var_168
  loc_C0AB34: ConcatStr
  loc_C0AB35: FStStrNoPop var_16C
  loc_C0AB38: FLdPr Me
  loc_C0AB3B: MemLdRfVar from_stack_1.global_96
  loc_C0AB3E: NewIfNullPr clsboleto
  loc_C0AB41: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C0AB46: FFreeStr var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_C0AB67: FFree1Ad var_110
  loc_C0AB6A: FFreeVar var_AC = "": var_CC = ""
  loc_C0AB73: FLdRfVar var_130
  loc_C0AB76: FLdPr Me
  loc_C0AB79: MemLdRfVar from_stack_1.global_96
  loc_C0AB7C: NewIfNullPr clsboleto
  loc_C0AB7F: from_stack_1 = clsboleto.RecordCount
  loc_C0AB84: ILdRf var_130
  loc_C0AB87: LitI4 0
  loc_C0AB8C: GtI4
  loc_C0AB8D: BranchF loc_C0AC42
  loc_C0AB90: FLdPr Me
  loc_C0AB93: MemLdRfVar from_stack_1.global_96
  loc_C0AB96: NewIfNullPr clsboleto
  loc_C0AB99: Call clsboleto.MoveFirst()
  loc_C0AB9E: FLdRfVar var_112
  loc_C0ABA1: FLdPr Me
  loc_C0ABA4: MemLdRfVar from_stack_1.global_96
  loc_C0ABA7: NewIfNullPr clsboleto
  loc_C0ABAA: from_stack_1 = clsboleto.EOF
  loc_C0ABAF: FLdI2 var_112
  loc_C0ABB2: NotI4
  loc_C0ABB3: BranchF loc_C0AC42
  loc_C0ABB6: LitStr "INSERT INTO tribu (CodiFapa)"
  loc_C0ABB9: LitStr " VALUE ("
  loc_C0ABBC: ConcatStr
  loc_C0ABBD: CVarStr var_CC
  loc_C0ABC0: FLdRfVar var_AC
  loc_C0ABC3: FLdRfVar var_138
  loc_C0ABC6: LitVarStr var_9C, "CodiFapa"
  loc_C0ABCB: PopAdLdVar
  loc_C0ABCC: FLdRfVar var_134
  loc_C0ABCF: FLdRfVar var_110
  loc_C0ABD2: FLdPr Me
  loc_C0ABD5: MemLdRfVar from_stack_1.global_96
  loc_C0ABD8: NewIfNullPr clsboleto
  loc_C0ABDB: from_stack_1v = clsboleto.RsFrmGet()
  loc_C0ABE0: FLdPr var_110
  loc_C0ABE3:  = Me.Fields
  loc_C0ABE8: FLdPr var_134
  loc_C0ABEB: from_stack_2 = Me.Item(from_stack_1)
  loc_C0ABF0: FLdPr var_138
  loc_C0ABF3:  = Me.Value
  loc_C0ABF8: FLdRfVar var_AC
  loc_C0ABFB: ConcatVar var_EC
  loc_C0ABFF: LitVarStr var_BC, ")"
  loc_C0AC04: ConcatVar var_10C
  loc_C0AC08: CStrVarVal var_118
  loc_C0AC0C: FLdPr Me
  loc_C0AC0F: MemLdRfVar from_stack_1.global_92
  loc_C0AC12: NewIfNullPr clsctacte
  loc_C0AC15: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C0AC1A: FFree1Str var_118
  loc_C0AC1D: FFreeAd var_110 = "": var_134 = ""
  loc_C0AC26: FFreeVar var_CC = "": var_AC = "": var_EC = ""
  loc_C0AC31: FLdPr Me
  loc_C0AC34: MemLdRfVar from_stack_1.global_96
  loc_C0AC37: NewIfNullPr clsboleto
  loc_C0AC3A: Call clsboleto.MoveSiguiente()
  loc_C0AC3F: Branch loc_C0AB9E
  loc_C0AC42: FLdPr Me
  loc_C0AC45: MemLdRfVar from_stack_1.global_92
  loc_C0AC48: NewIfNullAd
  loc_C0AC4B: FStAd var_17C 
  loc_C0AC4F: LitStr " SELECT tribu.CodiFapa, facipago.FealFapa, facipago.CodiOfic, facipago.CuenCtct"
  loc_C0AC52: LitStr " FROM tribu INNER JOIN facipago ON facipago.CodiFapa = tribu.CodiFapa"
  loc_C0AC55: ConcatStr
  loc_C0AC56: FStStrNoPop var_118
  loc_C0AC59: LitStr " ORDER BY facipago.FealFapa"
  loc_C0AC5C: ConcatStr
  loc_C0AC5D: FStStrNoPop var_11C
  loc_C0AC60: FLdPr var_17C
  loc_C0AC63: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C0AC68: FFreeStr var_118 = ""
  loc_C0AC6F: FLdRfVar var_130
  loc_C0AC72: FLdPr var_17C
  loc_C0AC75: from_stack_1 = clsctacte.RecordCount
  loc_C0AC7A: ILdRf var_130
  loc_C0AC7D: LitI4 0
  loc_C0AC82: EqI4
  loc_C0AC83: BranchF loc_C0AC91
  loc_C0AC86: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C0AC89: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C0AC8E: Branch loc_C0AE1A
  loc_C0AC91: FLdPr var_17C
  loc_C0AC94: Call clsctacte.MoveFirst()
  loc_C0AC99: FLdRfVar var_112
  loc_C0AC9C: FLdPr var_17C
  loc_C0AC9F: from_stack_1 = clsctacte.EOF
  loc_C0ACA4: FLdI2 var_112
  loc_C0ACA7: NotI4
  loc_C0ACA8: BranchF loc_C0ADD7
  loc_C0ACAB: LitVarStr var_BC, "CALL nAnulaFacilidad`('"
  loc_C0ACB0: FLdRfVar var_AC
  loc_C0ACB3: FLdRfVar var_138
  loc_C0ACB6: LitVarStr var_9C, "CodiFapa"
  loc_C0ACBB: PopAdLdVar
  loc_C0ACBC: FLdRfVar var_134
  loc_C0ACBF: FLdRfVar var_110
  loc_C0ACC2: FLdPr var_17C
  loc_C0ACC5: from_stack_1v = clsctacte.RsFrmGet()
  loc_C0ACCA: FLdPr var_110
  loc_C0ACCD:  = Me.Fields
  loc_C0ACD2: FLdPr var_134
  loc_C0ACD5: from_stack_2 = Me.Item(from_stack_1)
  loc_C0ACDA: FLdPr var_138
  loc_C0ACDD:  = Me.Value
  loc_C0ACE2: FLdRfVar var_AC
  loc_C0ACE5: ConcatVar var_CC
  loc_C0ACE9: LitVarStr var_DC, "', '"
  loc_C0ACEE: ConcatVar var_EC
  loc_C0ACF2: FLdRfVar var_10C
  loc_C0ACF5: FLdRfVar var_188
  loc_C0ACF8: LitVarStr var_FC, "CodiOfic"
  loc_C0ACFD: PopAdLdVar
  loc_C0ACFE: FLdRfVar var_184
  loc_C0AD01: FLdRfVar var_180
  loc_C0AD04: FLdPr var_17C
  loc_C0AD07: from_stack_1v = clsctacte.RsFrmGet()
  loc_C0AD0C: FLdPr var_180
  loc_C0AD0F:  = Me.Fields
  loc_C0AD14: FLdPr var_184
  loc_C0AD17: from_stack_2 = Me.Item(from_stack_1)
  loc_C0AD1C: FLdPr var_188
  loc_C0AD1F:  = Me.Value
  loc_C0AD24: FLdRfVar var_10C
  loc_C0AD27: ConcatVar var_148
  loc_C0AD2B: LitVarStr var_198, "', '"
  loc_C0AD30: ConcatVar var_1A8
  loc_C0AD34: FLdRfVar var_1D4
  loc_C0AD37: FLdRfVar var_1C4
  loc_C0AD3A: LitVarStr var_1C0, "CuenCtct"
  loc_C0AD3F: PopAdLdVar
  loc_C0AD40: FLdRfVar var_1B0
  loc_C0AD43: FLdRfVar var_1AC
  loc_C0AD46: FLdPr var_17C
  loc_C0AD49: from_stack_1v = clsctacte.RsFrmGet()
  loc_C0AD4E: FLdPr var_1AC
  loc_C0AD51:  = Me.Fields
  loc_C0AD56: FLdPr var_1B0
  loc_C0AD59: from_stack_2 = Me.Item(from_stack_1)
  loc_C0AD5E: FLdPr var_1C4
  loc_C0AD61:  = Me.Value
  loc_C0AD66: FLdRfVar var_1D4
  loc_C0AD69: ConcatVar var_1E4
  loc_C0AD6D: LitVarStr var_1F4, "', '"
  loc_C0AD72: ConcatVar var_204
  loc_C0AD76: ImpAdLdI4 MemVar_D9302C
  loc_C0AD79: CVarStr var_214
  loc_C0AD7C: ConcatVar var_224
  loc_C0AD80: LitVarStr var_234, "', 'Proceso Automatico. Baja de Facilidad')"
  loc_C0AD85: ConcatVar var_244
  loc_C0AD89: CStrVarVal var_118
  loc_C0AD8D: FLdPr Me
  loc_C0AD90: MemLdRfVar from_stack_1.global_96
  loc_C0AD93: NewIfNullPr clsboleto
  loc_C0AD96: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C0AD9B: FFree1Str var_118
  loc_C0AD9E: FFreeAd var_110 = "": var_134 = "": var_138 = "": var_180 = "": var_184 = "": var_188 = "": var_1AC = "": var_1B0 = ""
  loc_C0ADB3: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_10C = "": var_148 = "": var_1A8 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_224 = ""
  loc_C0ADCC: FLdPr var_17C
  loc_C0ADCF: Call clsctacte.MoveSiguiente()
  loc_C0ADD4: Branch loc_C0AC99
  loc_C0ADD7: LitNothing
  loc_C0ADD9: FStAd var_17C 
  loc_C0ADDD: LitI4 0
  loc_C0ADE2: CI2I4
  loc_C0ADE3: FLdPr Me
  loc_C0ADE6: Me.MousePointer = from_stack_1
  loc_C0ADEB: LitVarStr var_9C, vbNullString
  loc_C0ADF0: PopAdLdVar
  loc_C0ADF1: FLdPr Me
  loc_C0ADF4: VCallAd Control_ID_statusBar
  loc_C0ADF7: FStAdFunc var_110
  loc_C0ADFA: FLdPr var_110
  loc_C0ADFD: LateIdSt
  loc_C0AE02: FFree1Ad var_110
  loc_C0AE05: LitStr "El proceso se realizo con exito"
  loc_C0AE08: FLdPr Me
  loc_C0AE0B: MemStStrCopy
  loc_C0AE0F: FLdPr Me
  loc_C0AE12: MemLdStr global_112
  loc_C0AE15: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C0AE1A: LitI4 0
  loc_C0AE1F: CI2I4
  loc_C0AE20: FLdPr Me
  loc_C0AE23: Me.MousePointer = from_stack_1
  loc_C0AE28: LitVarStr var_9C, vbNullString
  loc_C0AE2D: PopAdLdVar
  loc_C0AE2E: FLdPr Me
  loc_C0AE31: VCallAd Control_ID_statusBar
  loc_C0AE34: FStAdFunc var_110
  loc_C0AE37: FLdPr var_110
  loc_C0AE3A: LateIdSt
  loc_C0AE3F: FFree1Ad var_110
  loc_C0AE42: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D1A08
  'Data Table: 49A7C0
  loc_9D19F0: ILdRf Me
  loc_9D19F3: CastAd
  loc_9D19F6: FStAdFunc var_88
  loc_9D19F9: FLdRfVar var_88
  loc_9D19FC: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D1A01: FFree1Ad var_88
  loc_9D1A04: ExitProcHresult
  loc_9D1A05: AndI4
  loc_9D1A06: NeR8
End Sub

Public Function bGeneradoGet() '49B6C0
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49B6CF
  bGenerado = Value
End Sub

Public Function bLogosGet() '49B6DE
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '49B6ED
  bLogos = Value
End Sub

Public Sub GeneraXLS() '9C1F8C
  'Data Table: 49A7C0
  loc_9C1F74: LitI2_Byte 0
  loc_9C1F76: FLdPr Me
  loc_9C1F79: MemStI2 bLogos
  loc_9C1F7C: Call GeneraHTML()
  loc_9C1F81: LitI2_Byte &HFF
  loc_9C1F83: FLdPr Me
  loc_9C1F86: MemStI2 bLogos
  loc_9C1F89: ExitProcHresult
  loc_9C1F8A: LtI2
End Sub

Public Sub HabilitarCriterio() 'A5CCC0
  'Data Table: 49A7C0
  loc_A5CC6C: LitI4 0
  loc_A5CC71: LitI4 2
  loc_A5CC76: FLdRfVar var_88
  loc_A5CC79: Redim
  loc_A5CC83: FLdPr Me
  loc_A5CC86: VCallAd Control_ID_DesdeMsk
  loc_A5CC89: CVarAd
  loc_A5CC8D: ParmAry1St
  loc_A5CC93: FLdPr Me
  loc_A5CC96: VCallAd Control_ID_HastaMsk
  loc_A5CC99: CVarAd
  loc_A5CC9D: ParmAry1St
  loc_A5CCA3: FLdPr Me
  loc_A5CCA6: VCallAd Control_ID_CmdConfirmar
  loc_A5CCA9: CVarAd
  loc_A5CCAD: ParmAry1St
  loc_A5CCB3: FLdRfVar var_88
  loc_A5CCB6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5CCBB: FLdRfVar var_88
  loc_A5CCBE: Erase
  loc_A5CCBF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BF4C58
  'Data Table: 49A7C0
  loc_BF443C: FLdPr Me
  loc_BF443F: MemLdI2 bGenerado
  loc_BF4442: BranchF loc_BF4446
  loc_BF4445: ExitProcHresult
  loc_BF4446: LitVarStr var_9C, "Generando reporte..."
  loc_BF444B: PopAdLdVar
  loc_BF444C: FLdPr Me
  loc_BF444F: VCallAd Control_ID_statusBar
  loc_BF4452: FStAdFunc var_B0
  loc_BF4455: FLdPr var_B0
  loc_BF4458: LateIdSt
  loc_BF445D: FFree1Ad var_B0
  loc_BF4460: LitI4 &HB
  loc_BF4465: CI2I4
  loc_BF4466: FLdPr Me
  loc_BF4469: Me.MousePointer = from_stack_1
  loc_BF446E: LitI2_Byte 0
  loc_BF4470: PopTmpLdAd2 var_B2
  loc_BF4473: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BF4478: FLdPr Me
  loc_BF447B: MemLdStr global_112
  loc_BF447E: LitStr vbNullString
  loc_BF4481: NeStr
  loc_BF4483: BranchF loc_BF4489
  loc_BF4486: Branch loc_BF4C2C
  loc_BF4489: LitI2_Byte 0
  loc_BF448B: PopTmpLdAd2 var_B2
  loc_BF448E: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_BF4493: FLdPr Me
  loc_BF4496: MemLdStr global_112
  loc_BF4499: LitStr vbNullString
  loc_BF449C: NeStr
  loc_BF449E: BranchF loc_BF44A4
  loc_BF44A1: Branch loc_BF4C2C
  loc_BF44A4: FLdPr Me
  loc_BF44A7: VCallAd Control_ID_DesdeMsk
  loc_BF44AA: FStAdFunc var_B0
  loc_BF44AD: FLdPr var_B0
  loc_BF44B0: LateIdLdVar var_C4 DispID_15 0
  loc_BF44B7: PopAd
  loc_BF44B9: LitI4 1
  loc_BF44BE: LitI4 1
  loc_BF44C3: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_BF44C8: FStVarCopyObj var_E4
  loc_BF44CB: FLdRfVar var_E4
  loc_BF44CE: FLdRfVar var_C4
  loc_BF44D1: CStrVarTmp
  loc_BF44D2: CVarStr var_D4
  loc_BF44D5: ImpAdCallI2 Format$(, )
  loc_BF44DA: FStStr var_88
  loc_BF44DD: FFree1Ad var_B0
  loc_BF44E0: FFreeVar var_C4 = "": var_D4 = ""
  loc_BF44E9: FLdPr Me
  loc_BF44EC: VCallAd Control_ID_HastaMsk
  loc_BF44EF: FStAdFunc var_B0
  loc_BF44F2: FLdPr var_B0
  loc_BF44F5: LateIdLdVar var_C4 DispID_15 0
  loc_BF44FC: PopAd
  loc_BF44FE: LitI4 1
  loc_BF4503: LitI4 1
  loc_BF4508: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_BF450D: FStVarCopyObj var_E4
  loc_BF4510: FLdRfVar var_E4
  loc_BF4513: FLdRfVar var_C4
  loc_BF4516: CStrVarTmp
  loc_BF4517: CVarStr var_D4
  loc_BF451A: ImpAdCallI2 Format$(, )
  loc_BF451F: FStStr var_8C
  loc_BF4522: FFree1Ad var_B0
  loc_BF4525: FFreeVar var_C4 = "": var_D4 = ""
  loc_BF452E: LitStr " DROP TEMPORARY TABLE IF EXISTS tribu;"
  loc_BF4531: LitStr " CREATE TEMPORARY TABLE tribu ("
  loc_BF4534: ConcatStr
  loc_BF4535: FStStrNoPop var_E8
  loc_BF4538: LitStr "odiFapa` int(8) unsigned NOT NULL default '0',"
  loc_BF453B: ConcatStr
  loc_BF453C: FStStrNoPop var_EC
  loc_BF453F: LitStr " KEY mpidx` (`CodiFapa`)"
  loc_BF4542: ConcatStr
  loc_BF4543: FStStrNoPop var_F0
  loc_BF4546: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_BF4549: ConcatStr
  loc_BF454A: FStStrNoPop var_F4
  loc_BF454D: FLdPr Me
  loc_BF4550: MemLdRfVar from_stack_1.global_92
  loc_BF4553: NewIfNullPr clsctacte
  loc_BF4556: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BF455B: FFreeStr var_E8 = "": var_EC = "": var_F0 = ""
  loc_BF4566: FLdRfVar var_B2
  loc_BF4569: FLdPr Me
  loc_BF456C: VCallAd Control_ID_OptSinNingunaCuotaPagada
  loc_BF456F: FStAdFunc var_B0
  loc_BF4572: FLdPr var_B0
  loc_BF4575:  = Me.Value
  loc_BF457A: FLdI2 var_B2
  loc_BF457D: LitI2_Byte &HFF
  loc_BF457F: EqI2
  loc_BF4580: FFree1Ad var_B0
  loc_BF4583: BranchF loc_BF4791
  loc_BF4586: LitStr "Municipalidad de Guaymallén"
  loc_BF4589: LitStr "Municipalidad de Tunuyán"
  loc_BF458C: EqStr
  loc_BF458E: BranchF loc_BF45D5
  loc_BF4591: LitStr "SELECT * FROM facipago "
  loc_BF4594: LitStr " WHERE facipago.FealFapa BETWEEN "
  loc_BF4597: ConcatStr
  loc_BF4598: FStStrNoPop var_E8
  loc_BF459B: ILdRf var_88
  loc_BF459E: ConcatStr
  loc_BF459F: FStStrNoPop var_EC
  loc_BF45A2: LitStr " AND "
  loc_BF45A5: ConcatStr
  loc_BF45A6: FStStrNoPop var_F0
  loc_BF45A9: ILdRf var_8C
  loc_BF45AC: ConcatStr
  loc_BF45AD: FStStrNoPop var_F4
  loc_BF45B0: LitStr " AND facipago.EstaFapa = 'Activa' ORDER BY facipago.FealFapa"
  loc_BF45B3: ConcatStr
  loc_BF45B4: FStStrNoPop var_F8
  loc_BF45B7: FLdPr Me
  loc_BF45BA: MemLdRfVar from_stack_1.global_96
  loc_BF45BD: NewIfNullPr clsboleto
  loc_BF45C0: Call clsboleto.RedefineRS(from_stack_1v)
  loc_BF45C5: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_BF45D2: Branch loc_BF461F
  loc_BF45D5: LitStr "SELECT * FROM facipago "
  loc_BF45D8: LitStr " WHERE facipago.FealFapa BETWEEN "
  loc_BF45DB: ConcatStr
  loc_BF45DC: FStStrNoPop var_E8
  loc_BF45DF: ILdRf var_88
  loc_BF45E2: ConcatStr
  loc_BF45E3: FStStrNoPop var_EC
  loc_BF45E6: LitStr " AND "
  loc_BF45E9: ConcatStr
  loc_BF45EA: FStStrNoPop var_F0
  loc_BF45ED: ILdRf var_8C
  loc_BF45F0: ConcatStr
  loc_BF45F1: FStStrNoPop var_F4
  loc_BF45F4: LitStr " AND facipago.NovaFapa = 0"
  loc_BF45F7: ConcatStr
  loc_BF45F8: FStStrNoPop var_F8
  loc_BF45FB: LitStr " AND facipago.EstaFapa = 'Activa' ORDER BY facipago.FealFapa"
  loc_BF45FE: ConcatStr
  loc_BF45FF: FStStrNoPop var_FC
  loc_BF4602: FLdPr Me
  loc_BF4605: MemLdRfVar from_stack_1.global_96
  loc_BF4608: NewIfNullPr clsboleto
  loc_BF460B: Call clsboleto.RedefineRS(from_stack_1v)
  loc_BF4610: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_BF461F: FLdRfVar var_100
  loc_BF4622: FLdPr Me
  loc_BF4625: MemLdRfVar from_stack_1.global_96
  loc_BF4628: NewIfNullPr clsboleto
  loc_BF462B: from_stack_1 = clsboleto.RecordCount
  loc_BF4630: ILdRf var_100
  loc_BF4633: LitI4 0
  loc_BF4638: GtI4
  loc_BF4639: BranchF loc_BF4791
  loc_BF463C: FLdPr Me
  loc_BF463F: MemLdRfVar from_stack_1.global_96
  loc_BF4642: NewIfNullPr clsboleto
  loc_BF4645: Call clsboleto.MoveFirst()
  loc_BF464A: FLdRfVar var_B2
  loc_BF464D: FLdPr Me
  loc_BF4650: MemLdRfVar from_stack_1.global_96
  loc_BF4653: NewIfNullPr clsboleto
  loc_BF4656: from_stack_1 = clsboleto.EOF
  loc_BF465B: FLdI2 var_B2
  loc_BF465E: NotI4
  loc_BF465F: BranchF loc_BF4791
  loc_BF4662: LitStr " SELECT CodiFapa, CuotDefa FROM detafapa "
  loc_BF4665: LitStr " WHERE CodiFapa = "
  loc_BF4668: ConcatStr
  loc_BF4669: CVarStr var_D4
  loc_BF466C: FLdRfVar var_C4
  loc_BF466F: FLdRfVar var_108
  loc_BF4672: LitVarStr var_9C, "CodiFapa"
  loc_BF4677: PopAdLdVar
  loc_BF4678: FLdRfVar var_104
  loc_BF467B: FLdRfVar var_B0
  loc_BF467E: FLdPr Me
  loc_BF4681: MemLdRfVar from_stack_1.global_96
  loc_BF4684: NewIfNullPr clsboleto
  loc_BF4687: from_stack_1v = clsboleto.RsFrmGet()
  loc_BF468C: FLdPr var_B0
  loc_BF468F:  = Me.Fields
  loc_BF4694: FLdPr var_104
  loc_BF4697: from_stack_2 = Me.Item(from_stack_1)
  loc_BF469C: FLdPr var_108
  loc_BF469F:  = Me.Value
  loc_BF46A4: FLdRfVar var_C4
  loc_BF46A7: ConcatVar var_E4
  loc_BF46AB: LitVarStr var_AC, " AND FepaDefa IS NOT NULL "
  loc_BF46B0: ConcatVar var_118
  loc_BF46B4: LitVarStr var_128, " ORDER BY detafapa.CodiFapa, detafapa.CuotDefa"
  loc_BF46B9: ConcatVar var_138
  loc_BF46BD: CStrVarVal var_E8
  loc_BF46C1: FLdPr Me
  loc_BF46C4: MemLdRfVar from_stack_1.global_92
  loc_BF46C7: NewIfNullPr clsctacte
  loc_BF46CA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BF46CF: FFree1Str var_E8
  loc_BF46D2: FFreeAd var_B0 = "": var_104 = ""
  loc_BF46DB: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_118 = ""
  loc_BF46E8: FLdRfVar var_100
  loc_BF46EB: FLdPr Me
  loc_BF46EE: MemLdRfVar from_stack_1.global_92
  loc_BF46F1: NewIfNullPr clsctacte
  loc_BF46F4: from_stack_1 = clsctacte.RecordCount
  loc_BF46F9: ILdRf var_100
  loc_BF46FC: LitI4 0
  loc_BF4701: EqI4
  loc_BF4702: BranchF loc_BF4780
  loc_BF4705: LitStr "INSERT INTO tribu (CodiFapa)"
  loc_BF4708: LitStr " VALUE ("
  loc_BF470B: ConcatStr
  loc_BF470C: CVarStr var_D4
  loc_BF470F: FLdRfVar var_C4
  loc_BF4712: FLdRfVar var_108
  loc_BF4715: LitVarStr var_9C, "CodiFapa"
  loc_BF471A: PopAdLdVar
  loc_BF471B: FLdRfVar var_104
  loc_BF471E: FLdRfVar var_B0
  loc_BF4721: FLdPr Me
  loc_BF4724: MemLdRfVar from_stack_1.global_96
  loc_BF4727: NewIfNullPr clsboleto
  loc_BF472A: from_stack_1v = clsboleto.RsFrmGet()
  loc_BF472F: FLdPr var_B0
  loc_BF4732:  = Me.Fields
  loc_BF4737: FLdPr var_104
  loc_BF473A: from_stack_2 = Me.Item(from_stack_1)
  loc_BF473F: FLdPr var_108
  loc_BF4742:  = Me.Value
  loc_BF4747: FLdRfVar var_C4
  loc_BF474A: ConcatVar var_E4
  loc_BF474E: LitVarStr var_AC, ")"
  loc_BF4753: ConcatVar var_118
  loc_BF4757: CStrVarVal var_E8
  loc_BF475B: FLdPr Me
  loc_BF475E: MemLdRfVar from_stack_1.global_92
  loc_BF4761: NewIfNullPr clsctacte
  loc_BF4764: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BF4769: FFree1Str var_E8
  loc_BF476C: FFreeAd var_B0 = "": var_104 = ""
  loc_BF4775: FFreeVar var_D4 = "": var_C4 = "": var_E4 = ""
  loc_BF4780: FLdPr Me
  loc_BF4783: MemLdRfVar from_stack_1.global_96
  loc_BF4786: NewIfNullPr clsboleto
  loc_BF4789: Call clsboleto.MoveSiguiente()
  loc_BF478E: Branch loc_BF464A
  loc_BF4791: FLdRfVar var_B2
  loc_BF4794: FLdPr Me
  loc_BF4797: VCallAd Control_ID_OptCuotasAtrasadas
  loc_BF479A: FStAdFunc var_B0
  loc_BF479D: FLdPr var_B0
  loc_BF47A0:  = Me.Value
  loc_BF47A5: FLdI2 var_B2
  loc_BF47A8: LitI2_Byte &HFF
  loc_BF47AA: EqI2
  loc_BF47AB: FFree1Ad var_B0
  loc_BF47AE: BranchF loc_BF4958
  loc_BF47B1: LitI2_Byte 0
  loc_BF47B3: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BF47B8: FStFPR8 var_164
  loc_BF47BB: LitStr "SELECT facipago.CodiOfic, facipago.CuenCtct, facipago.CodiFapa, 0 as FeveCuot, COUNT(detafapa.CuotDefa) as CantImpa, 'Atrasados' as EstaFapa, "
  loc_BF47BE: LitStr " datediff(current_date, FeveDefa) As CantDias"
  loc_BF47C1: ConcatStr
  loc_BF47C2: FStStrNoPop var_E8
  loc_BF47C5: LitStr " FROM detafapa INNER JOIN facipago ON facipago.CodiFapa = detafapa.CodiFapa"
  loc_BF47C8: ConcatStr
  loc_BF47C9: FStStrNoPop var_EC
  loc_BF47CC: LitStr " WHERE facipago.EstaFapa = 'Activa'"
  loc_BF47CF: ConcatStr
  loc_BF47D0: FStStrNoPop var_F0
  loc_BF47D3: LitStr " AND detafapa.FepaDefa IS NULL"
  loc_BF47D6: ConcatStr
  loc_BF47D7: FStStrNoPop var_F4
  loc_BF47DA: LitStr " AND facipago.FealFapa BETWEEN "
  loc_BF47DD: ConcatStr
  loc_BF47DE: FStStrNoPop var_F8
  loc_BF47E1: ILdRf var_88
  loc_BF47E4: ConcatStr
  loc_BF47E5: FStStrNoPop var_FC
  loc_BF47E8: LitStr " AND "
  loc_BF47EB: ConcatStr
  loc_BF47EC: FStStrNoPop var_13C
  loc_BF47EF: ILdRf var_8C
  loc_BF47F2: ConcatStr
  loc_BF47F3: FStStrNoPop var_140
  loc_BF47F6: LitStr " AND FeveDefa < '"
  loc_BF47F9: ConcatStr
  loc_BF47FA: FStStrNoPop var_144
  loc_BF47FD: LitI4 1
  loc_BF4802: LitI4 1
  loc_BF4807: LitVarStr var_AC, "yyyy-mm-dd"
  loc_BF480C: FStVarCopyObj var_D4
  loc_BF480F: FLdRfVar var_D4
  loc_BF4812: FLdFPR8 var_164
  loc_BF4815: CVarDate var_C4
  loc_BF4819: ImpAdCallI2 Format$(, )
  loc_BF481E: FStStrNoPop var_148
  loc_BF4821: ConcatStr
  loc_BF4822: FStStrNoPop var_14C
  loc_BF4825: LitStr "'"
  loc_BF4828: ConcatStr
  loc_BF4829: FStStrNoPop var_150
  loc_BF482C: LitStr " GROUP BY detafapa.CodiFapa  HAVING  CantImpa >= "
  loc_BF482F: ConcatStr
  loc_BF4830: FStStrNoPop var_154
  loc_BF4833: FLdPr Me
  loc_BF4836: VCallAd Control_ID_CantCuotasMsk
  loc_BF4839: FStAdFunc var_B0
  loc_BF483C: FLdPr var_B0
  loc_BF483F: LateIdLdVar var_E4 DispID_22 0
  loc_BF4846: CStrVarTmp
  loc_BF4847: FStStrNoPop var_158
  loc_BF484A: ConcatStr
  loc_BF484B: FStStrNoPop var_15C
  loc_BF484E: FLdPr Me
  loc_BF4851: MemLdRfVar from_stack_1.global_96
  loc_BF4854: NewIfNullPr clsboleto
  loc_BF4857: Call clsboleto.RedefineRS(from_stack_1v)
  loc_BF485C: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_BF487D: FFree1Ad var_B0
  loc_BF4880: FFreeVar var_C4 = "": var_D4 = ""
  loc_BF4889: FLdRfVar var_100
  loc_BF488C: FLdPr Me
  loc_BF488F: MemLdRfVar from_stack_1.global_96
  loc_BF4892: NewIfNullPr clsboleto
  loc_BF4895: from_stack_1 = clsboleto.RecordCount
  loc_BF489A: ILdRf var_100
  loc_BF489D: LitI4 0
  loc_BF48A2: GtI4
  loc_BF48A3: BranchF loc_BF4958
  loc_BF48A6: FLdPr Me
  loc_BF48A9: MemLdRfVar from_stack_1.global_96
  loc_BF48AC: NewIfNullPr clsboleto
  loc_BF48AF: Call clsboleto.MoveFirst()
  loc_BF48B4: FLdRfVar var_B2
  loc_BF48B7: FLdPr Me
  loc_BF48BA: MemLdRfVar from_stack_1.global_96
  loc_BF48BD: NewIfNullPr clsboleto
  loc_BF48C0: from_stack_1 = clsboleto.EOF
  loc_BF48C5: FLdI2 var_B2
  loc_BF48C8: NotI4
  loc_BF48C9: BranchF loc_BF4958
  loc_BF48CC: LitStr "INSERT INTO tribu (CodiFapa)"
  loc_BF48CF: LitStr " VALUE ("
  loc_BF48D2: ConcatStr
  loc_BF48D3: CVarStr var_D4
  loc_BF48D6: FLdRfVar var_C4
  loc_BF48D9: FLdRfVar var_108
  loc_BF48DC: LitVarStr var_9C, "CodiFapa"
  loc_BF48E1: PopAdLdVar
  loc_BF48E2: FLdRfVar var_104
  loc_BF48E5: FLdRfVar var_B0
  loc_BF48E8: FLdPr Me
  loc_BF48EB: MemLdRfVar from_stack_1.global_96
  loc_BF48EE: NewIfNullPr clsboleto
  loc_BF48F1: from_stack_1v = clsboleto.RsFrmGet()
  loc_BF48F6: FLdPr var_B0
  loc_BF48F9:  = Me.Fields
  loc_BF48FE: FLdPr var_104
  loc_BF4901: from_stack_2 = Me.Item(from_stack_1)
  loc_BF4906: FLdPr var_108
  loc_BF4909:  = Me.Value
  loc_BF490E: FLdRfVar var_C4
  loc_BF4911: ConcatVar var_E4
  loc_BF4915: LitVarStr var_AC, ")"
  loc_BF491A: ConcatVar var_118
  loc_BF491E: CStrVarVal var_E8
  loc_BF4922: FLdPr Me
  loc_BF4925: MemLdRfVar from_stack_1.global_92
  loc_BF4928: NewIfNullPr clsctacte
  loc_BF492B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BF4930: FFree1Str var_E8
  loc_BF4933: FFreeAd var_B0 = "": var_104 = ""
  loc_BF493C: FFreeVar var_D4 = "": var_C4 = "": var_E4 = ""
  loc_BF4947: FLdPr Me
  loc_BF494A: MemLdRfVar from_stack_1.global_96
  loc_BF494D: NewIfNullPr clsboleto
  loc_BF4950: Call clsboleto.MoveSiguiente()
  loc_BF4955: Branch loc_BF48B4
  loc_BF4958: FLdPr Me
  loc_BF495B: MemLdRfVar from_stack_1.global_92
  loc_BF495E: NewIfNullAd
  loc_BF4961: FStAd var_168 
  loc_BF4965: LitStr " SELECT tribu.CodiFapa, facipago.FealFapa, facipago.CodiOfic, facipago.CuenCtct"
  loc_BF4968: LitStr " FROM tribu INNER JOIN facipago ON facipago.CodiFapa = tribu.CodiFapa"
  loc_BF496B: ConcatStr
  loc_BF496C: FStStrNoPop var_E8
  loc_BF496F: LitStr " ORDER BY facipago.FealFapa"
  loc_BF4972: ConcatStr
  loc_BF4973: FStStrNoPop var_EC
  loc_BF4976: FLdPr var_168
  loc_BF4979: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BF497E: FFreeStr var_E8 = ""
  loc_BF4985: FLdRfVar var_100
  loc_BF4988: FLdPr Me
  loc_BF498B: MemLdRfVar from_stack_1.global_92
  loc_BF498E: NewIfNullPr clsctacte
  loc_BF4991: from_stack_1 = clsctacte.RecordCount
  loc_BF4996: ILdRf var_100
  loc_BF4999: LitI4 0
  loc_BF499E: EqI4
  loc_BF499F: BranchF loc_BF49AD
  loc_BF49A2: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BF49A5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF49AA: Branch loc_BF4C2C
  loc_BF49AD: LitI4 0
  loc_BF49B2: LitI4 1
  loc_BF49B7: FLdPr Me
  loc_BF49BA: MemLdRfVar from_stack_1.global_104
  loc_BF49BD: Redim
  loc_BF49C7: LitI4 0
  loc_BF49CC: FLdRfVar var_100
  loc_BF49CF: FLdPr var_168
  loc_BF49D2: from_stack_1 = clsctacte.RecordCount
  loc_BF49D7: ILdRf var_100
  loc_BF49DA: FLdPr Me
  loc_BF49DD: MemLdRfVar from_stack_1.global_100
  loc_BF49E0: Redim
  loc_BF49EA: FLdPr Me
  loc_BF49ED: MemLdRfVar from_stack_1.global_92
  loc_BF49F0: NewIfNullPr clsctacte
  loc_BF49F3: Call clsctacte.MoveFirst()
  loc_BF49F8: FLdRfVar var_100
  loc_BF49FB: FLdPr var_168
  loc_BF49FE: from_stack_1 = clsctacte.RecordCount
  loc_BF4A03: ILdRf var_100
  loc_BF4A06: CR8I4
  loc_BF4A07: CVarR4
  loc_BF4A0B: PopAdLdVar
  loc_BF4A0C: FLdPrThis
  loc_BF4A0D: VCallAd Control_ID_Pbar
  loc_BF4A10: FStAdFunc var_B0
  loc_BF4A13: FLdPr var_B0
  loc_BF4A16: LateIdSt
  loc_BF4A1B: FFree1Ad var_B0
  loc_BF4A1E: LitVar_TRUE var_9C
  loc_BF4A21: PopAdLdVar
  loc_BF4A22: FLdPrThis
  loc_BF4A23: VCallAd Control_ID_Pbar
  loc_BF4A26: FStAdFunc var_B0
  loc_BF4A29: FLdPr var_B0
  loc_BF4A2C: LateIdSt
  loc_BF4A31: FFree1Ad var_B0
  loc_BF4A34: LitI4 1
  loc_BF4A39: FLdPr Me
  loc_BF4A3C: MemLdRfVar from_stack_1.global_108
  loc_BF4A3F: FLdPr Me
  loc_BF4A42: MemLdStr global_100
  loc_BF4A45: LitI2_Byte 1
  loc_BF4A47: FnUBound
  loc_BF4A49: ForI4 var_170
  loc_BF4A4F: FLdPr Me
  loc_BF4A52: MemLdStr global_108
  loc_BF4A55: CR8I4
  loc_BF4A56: CVarR4
  loc_BF4A5A: PopAdLdVar
  loc_BF4A5B: FLdPrThis
  loc_BF4A5C: VCallAd Control_ID_Pbar
  loc_BF4A5F: FStAdFunc var_B0
  loc_BF4A62: FLdPr var_B0
  loc_BF4A65: LateIdSt
  loc_BF4A6A: FFree1Ad var_B0
  loc_BF4A6D: FLdRfVar var_108
  loc_BF4A70: LitVarStr var_9C, "CodiFapa"
  loc_BF4A75: PopAdLdVar
  loc_BF4A76: FLdRfVar var_104
  loc_BF4A79: FLdRfVar var_B0
  loc_BF4A7C: FLdPr var_168
  loc_BF4A7F: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF4A84: FLdPr var_B0
  loc_BF4A87:  = Me.Fields
  loc_BF4A8C: FLdPr var_104
  loc_BF4A8F: from_stack_2 = Me.Item(from_stack_1)
  loc_BF4A94: LitI2_Byte 0
  loc_BF4A96: LitVar_Missing var_D4
  loc_BF4A99: LitI2_Byte 0
  loc_BF4A9B: FLdZeroAd var_108
  loc_BF4A9E: CVarAd
  loc_BF4AA2: PopAdLdVar
  loc_BF4AA3: FLdPr Me
  loc_BF4AA6: MemLdStr global_108
  loc_BF4AA9: FLdPr Me
  loc_BF4AAC: MemLdStr global_100
  loc_BF4AAF: AryLock
  loc_BF4AB2: Ary1LdPr
  loc_BF4AB3: MemLdRfVar from_stack_1.global_0
  loc_BF4AB6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF4ABB: AryUnlock
  loc_BF4ABE: FFreeAd var_B0 = ""
  loc_BF4AC5: FFreeVar var_C4 = ""
  loc_BF4ACC: FLdRfVar var_108
  loc_BF4ACF: LitVarStr var_9C, "FealFapa"
  loc_BF4AD4: PopAdLdVar
  loc_BF4AD5: FLdRfVar var_104
  loc_BF4AD8: FLdRfVar var_B0
  loc_BF4ADB: FLdPr var_168
  loc_BF4ADE: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF4AE3: FLdPr var_B0
  loc_BF4AE6:  = Me.Fields
  loc_BF4AEB: FLdPr var_104
  loc_BF4AEE: from_stack_2 = Me.Item(from_stack_1)
  loc_BF4AF3: LitI2_Byte 0
  loc_BF4AF5: LitVar_Missing var_D4
  loc_BF4AF8: LitI2_Byte 0
  loc_BF4AFA: FLdZeroAd var_108
  loc_BF4AFD: CVarAd
  loc_BF4B01: PopAdLdVar
  loc_BF4B02: FLdPr Me
  loc_BF4B05: MemLdStr global_108
  loc_BF4B08: FLdPr Me
  loc_BF4B0B: MemLdStr global_100
  loc_BF4B0E: AryLock
  loc_BF4B11: Ary1LdPr
  loc_BF4B12: MemLdRfVar from_stack_1.global_4
  loc_BF4B15: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF4B1A: AryUnlock
  loc_BF4B1D: FFreeAd var_B0 = ""
  loc_BF4B24: FFreeVar var_C4 = ""
  loc_BF4B2B: FLdRfVar var_108
  loc_BF4B2E: LitVarStr var_9C, "CodiOfic"
  loc_BF4B33: PopAdLdVar
  loc_BF4B34: FLdRfVar var_104
  loc_BF4B37: FLdRfVar var_B0
  loc_BF4B3A: FLdPr var_168
  loc_BF4B3D: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF4B42: FLdPr var_B0
  loc_BF4B45:  = Me.Fields
  loc_BF4B4A: FLdPr var_104
  loc_BF4B4D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF4B52: LitI2_Byte 0
  loc_BF4B54: LitVar_Missing var_D4
  loc_BF4B57: LitI2_Byte 0
  loc_BF4B59: FLdZeroAd var_108
  loc_BF4B5C: CVarAd
  loc_BF4B60: PopAdLdVar
  loc_BF4B61: FLdPr Me
  loc_BF4B64: MemLdStr global_108
  loc_BF4B67: FLdPr Me
  loc_BF4B6A: MemLdStr global_100
  loc_BF4B6D: AryLock
  loc_BF4B70: Ary1LdPr
  loc_BF4B71: MemLdRfVar from_stack_1.global_8
  loc_BF4B74: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF4B79: AryUnlock
  loc_BF4B7C: FFreeAd var_B0 = ""
  loc_BF4B83: FFreeVar var_C4 = ""
  loc_BF4B8A: FLdRfVar var_108
  loc_BF4B8D: LitVarStr var_9C, "CuenCtct"
  loc_BF4B92: PopAdLdVar
  loc_BF4B93: FLdRfVar var_104
  loc_BF4B96: FLdRfVar var_B0
  loc_BF4B99: FLdPr var_168
  loc_BF4B9C: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF4BA1: FLdPr var_B0
  loc_BF4BA4:  = Me.Fields
  loc_BF4BA9: FLdPr var_104
  loc_BF4BAC: from_stack_2 = Me.Item(from_stack_1)
  loc_BF4BB1: LitI2_Byte 0
  loc_BF4BB3: LitVar_Missing var_D4
  loc_BF4BB6: LitI2_Byte 0
  loc_BF4BB8: FLdZeroAd var_108
  loc_BF4BBB: CVarAd
  loc_BF4BBF: PopAdLdVar
  loc_BF4BC0: FLdPr Me
  loc_BF4BC3: MemLdStr global_108
  loc_BF4BC6: FLdPr Me
  loc_BF4BC9: MemLdStr global_100
  loc_BF4BCC: AryLock
  loc_BF4BCF: Ary1LdPr
  loc_BF4BD0: MemLdRfVar from_stack_1.global_12
  loc_BF4BD3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF4BD8: AryUnlock
  loc_BF4BDB: FFreeAd var_B0 = ""
  loc_BF4BE2: FFreeVar var_C4 = ""
  loc_BF4BE9: LitI2_Byte 1
  loc_BF4BEB: PopTmpLdAd2 var_B2
  loc_BF4BEE: FLdPr Me
  loc_BF4BF1: MemLdRfVar from_stack_1.global_92
  loc_BF4BF4: NewIfNullPr clsctacte
  loc_BF4BF7: Call clsctacte.Move(from_stack_1v)
  loc_BF4BFC: FLdPr Me
  loc_BF4BFF: MemLdRfVar from_stack_1.global_108
  loc_BF4C02: NextI4 var_170, loc_BF4A4F
  loc_BF4C07: LitVar_FALSE
  loc_BF4C0B: PopAdLdVar
  loc_BF4C0C: FLdPrThis
  loc_BF4C0D: VCallAd Control_ID_Pbar
  loc_BF4C10: FStAdFunc var_B0
  loc_BF4C13: FLdPr var_B0
  loc_BF4C16: LateIdSt
  loc_BF4C1B: FFree1Ad var_B0
  loc_BF4C1E: LitNothing
  loc_BF4C20: FStAd var_168 
  loc_BF4C24: LitI2_Byte &HFF
  loc_BF4C26: FLdPr Me
  loc_BF4C29: MemStI2 bGenerado
  loc_BF4C2C: LitI4 0
  loc_BF4C31: CI2I4
  loc_BF4C32: FLdPr Me
  loc_BF4C35: Me.MousePointer = from_stack_1
  loc_BF4C3A: LitVarStr var_9C, vbNullString
  loc_BF4C3F: PopAdLdVar
  loc_BF4C40: FLdPr Me
  loc_BF4C43: VCallAd Control_ID_statusBar
  loc_BF4C46: FStAdFunc var_B0
  loc_BF4C49: FLdPr var_B0
  loc_BF4C4C: LateIdSt
  loc_BF4C51: FFree1Ad var_B0
  loc_BF4C54: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AE5024
  'Data Table: 49A7C0
  loc_AE4EAC: FLdRfVar var_88
  loc_AE4EAF: LitI2_Byte 0
  loc_AE4EB1: LitI2_Byte &HFF
  loc_AE4EB3: ImpAdLdI4 MemVar_D93C84
  loc_AE4EB6: FLdPr Me
  loc_AE4EB9: MemLdRfVar from_stack_1.global_56
  loc_AE4EBC: NewIfNullPr IFileSystem3
  loc_AE4EBF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE4EC4: ILdRf var_88
  loc_AE4EC7: FLdPr Me
  loc_AE4ECA: MemStVarAd
  loc_AE4ECE: FFree1Ad var_88
  loc_AE4ED1: LitI2_Byte &HFF
  loc_AE4ED3: ImpAdStI2 MemVar_D93C8A
  loc_AE4ED6: Call Proc_248_26_BBA140()
  loc_AE4EDB: LitI4 1
  loc_AE4EE0: FLdPr Me
  loc_AE4EE3: MemLdRfVar from_stack_1.global_108
  loc_AE4EE6: FLdPr Me
  loc_AE4EE9: MemLdStr global_100
  loc_AE4EEC: LitI2_Byte 1
  loc_AE4EEE: FnUBound
  loc_AE4EF0: ForI4 var_90
  loc_AE4EF6: FLdPr Me
  loc_AE4EF9: MemLdStr global_108
  loc_AE4EFC: FLdPr Me
  loc_AE4EFF: MemLdStr global_100
  loc_AE4F02: AryLock
  loc_AE4F05: Ary1LdRf
  loc_AE4F06: FStR4 var_98
  loc_AE4F09: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE4F0E: PopAdLdVar
  loc_AE4F0F: FLdPr Me
  loc_AE4F12: MemLdRfVar from_stack_1.global_60
  loc_AE4F15: LdPrVar
  loc_AE4F17: LateMemCall
  loc_AE4F1D: LitStr vbNullString
  loc_AE4F20: LitI2_Byte 0
  loc_AE4F22: LitI2_Byte 0
  loc_AE4F24: LitI2_Byte 0
  loc_AE4F26: LitStr "right"
  loc_AE4F29: FMemLdR4 var_98(0)
  loc_AE4F2E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE4F33: CVarStr var_C8
  loc_AE4F36: PopAdLdVar
  loc_AE4F37: FLdPr Me
  loc_AE4F3A: MemLdRfVar from_stack_1.global_60
  loc_AE4F3D: LdPrVar
  loc_AE4F3F: LateMemCall
  loc_AE4F45: FFree1Var var_C8 = ""
  loc_AE4F48: LitStr vbNullString
  loc_AE4F4B: LitI2_Byte 0
  loc_AE4F4D: LitI2_Byte 0
  loc_AE4F4F: LitI2_Byte 0
  loc_AE4F51: LitStr "left"
  loc_AE4F54: FMemLdR4 var_98(4)
  loc_AE4F59: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE4F5E: CVarStr var_C8
  loc_AE4F61: PopAdLdVar
  loc_AE4F62: FLdPr Me
  loc_AE4F65: MemLdRfVar from_stack_1.global_60
  loc_AE4F68: LdPrVar
  loc_AE4F6A: LateMemCall
  loc_AE4F70: FFree1Var var_C8 = ""
  loc_AE4F73: LitStr vbNullString
  loc_AE4F76: LitI2_Byte 0
  loc_AE4F78: LitI2_Byte 0
  loc_AE4F7A: LitI2_Byte 0
  loc_AE4F7C: LitStr "right"
  loc_AE4F7F: FMemLdR4 var_98(8)
  loc_AE4F84: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE4F89: CVarStr var_C8
  loc_AE4F8C: PopAdLdVar
  loc_AE4F8D: FLdPr Me
  loc_AE4F90: MemLdRfVar from_stack_1.global_60
  loc_AE4F93: LdPrVar
  loc_AE4F95: LateMemCall
  loc_AE4F9B: FFree1Var var_C8 = ""
  loc_AE4F9E: LitStr vbNullString
  loc_AE4FA1: LitI2_Byte 0
  loc_AE4FA3: LitI2_Byte 0
  loc_AE4FA5: LitI2_Byte 0
  loc_AE4FA7: LitStr "right"
  loc_AE4FAA: FMemLdR4 var_98(12)
  loc_AE4FAF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE4FB4: CVarStr var_C8
  loc_AE4FB7: PopAdLdVar
  loc_AE4FB8: FLdPr Me
  loc_AE4FBB: MemLdRfVar from_stack_1.global_60
  loc_AE4FBE: LdPrVar
  loc_AE4FC0: LateMemCall
  loc_AE4FC6: FFree1Var var_C8 = ""
  loc_AE4FC9: LitVarStr var_A8, "     </tr>"
  loc_AE4FCE: PopAdLdVar
  loc_AE4FCF: FLdPr Me
  loc_AE4FD2: MemLdRfVar from_stack_1.global_60
  loc_AE4FD5: LdPrVar
  loc_AE4FD7: LateMemCall
  loc_AE4FDD: LitI4 0
  loc_AE4FE2: FStR4 var_98
  loc_AE4FE5: AryUnlock
  loc_AE4FE8: FLdPr Me
  loc_AE4FEB: MemLdRfVar from_stack_1.global_108
  loc_AE4FEE: NextI4 var_90, loc_AE4EF6
  loc_AE4FF3: LitVarStr var_A8, "     </tr>"
  loc_AE4FF8: PopAdLdVar
  loc_AE4FF9: FLdPr Me
  loc_AE4FFC: MemLdRfVar from_stack_1.global_60
  loc_AE4FFF: LdPrVar
  loc_AE5001: LateMemCall
  loc_AE5007: Call Proc_248_27_A0C3D8()
  loc_AE500C: FLdPr Me
  loc_AE500F: MemLdRfVar from_stack_1.global_60
  loc_AE5012: LdPrVar
  loc_AE5014: LateMemCall
  loc_AE501A: LitStr vbNullString
  loc_AE501D: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_AE5022: ExitProcHresult
End Sub

Private Function Proc_248_26_BBA140() 'BBA140
  'Data Table: 49A7C0
  loc_BB9AA8: LitVarStr var_94, "<html>"
  loc_BB9AAD: PopAdLdVar
  loc_BB9AAE: FLdPr Me
  loc_BB9AB1: MemLdRfVar from_stack_1.global_60
  loc_BB9AB4: LdPrVar
  loc_BB9AB6: LateMemCall
  loc_BB9ABC: LitVarStr var_94, "<head>"
  loc_BB9AC1: PopAdLdVar
  loc_BB9AC2: FLdPr Me
  loc_BB9AC5: MemLdRfVar from_stack_1.global_60
  loc_BB9AC8: LdPrVar
  loc_BB9ACA: LateMemCall
  loc_BB9AD0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BB9AD5: PopAdLdVar
  loc_BB9AD6: FLdPr Me
  loc_BB9AD9: MemLdRfVar from_stack_1.global_60
  loc_BB9ADC: LdPrVar
  loc_BB9ADE: LateMemCall
  loc_BB9AE4: LitStr "<title>"
  loc_BB9AE7: FLdRfVar var_A8
  loc_BB9AEA: FLdPr Me
  loc_BB9AED:  = Me.Caption
  loc_BB9AF2: ILdRf var_A8
  loc_BB9AF5: ConcatStr
  loc_BB9AF6: FStStrNoPop var_AC
  loc_BB9AF9: LitStr "</title>"
  loc_BB9AFC: ConcatStr
  loc_BB9AFD: CVarStr var_BC
  loc_BB9B00: PopAdLdVar
  loc_BB9B01: FLdPr Me
  loc_BB9B04: MemLdRfVar from_stack_1.global_60
  loc_BB9B07: LdPrVar
  loc_BB9B09: LateMemCall
  loc_BB9B0F: FFreeStr var_A8 = ""
  loc_BB9B16: FFree1Var var_BC = ""
  loc_BB9B19: LitVarStr var_94, "<style type=""text/css"">"
  loc_BB9B1E: PopAdLdVar
  loc_BB9B1F: FLdPr Me
  loc_BB9B22: MemLdRfVar from_stack_1.global_60
  loc_BB9B25: LdPrVar
  loc_BB9B27: LateMemCall
  loc_BB9B2D: LitVarStr var_94, ".Titulo1 {"
  loc_BB9B32: PopAdLdVar
  loc_BB9B33: FLdPr Me
  loc_BB9B36: MemLdRfVar from_stack_1.global_60
  loc_BB9B39: LdPrVar
  loc_BB9B3B: LateMemCall
  loc_BB9B41: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB9B46: PopAdLdVar
  loc_BB9B47: FLdPr Me
  loc_BB9B4A: MemLdRfVar from_stack_1.global_60
  loc_BB9B4D: LdPrVar
  loc_BB9B4F: LateMemCall
  loc_BB9B55: LitVarStr var_94, " font-size: 18px;"
  loc_BB9B5A: PopAdLdVar
  loc_BB9B5B: FLdPr Me
  loc_BB9B5E: MemLdRfVar from_stack_1.global_60
  loc_BB9B61: LdPrVar
  loc_BB9B63: LateMemCall
  loc_BB9B69: LitVarStr var_94, " font-weight: bold;"
  loc_BB9B6E: PopAdLdVar
  loc_BB9B6F: FLdPr Me
  loc_BB9B72: MemLdRfVar from_stack_1.global_60
  loc_BB9B75: LdPrVar
  loc_BB9B77: LateMemCall
  loc_BB9B7D: LitVarStr var_94, "}"
  loc_BB9B82: PopAdLdVar
  loc_BB9B83: FLdPr Me
  loc_BB9B86: MemLdRfVar from_stack_1.global_60
  loc_BB9B89: LdPrVar
  loc_BB9B8B: LateMemCall
  loc_BB9B91: LitVarStr var_94, ".Titulo2 {"
  loc_BB9B96: PopAdLdVar
  loc_BB9B97: FLdPr Me
  loc_BB9B9A: MemLdRfVar from_stack_1.global_60
  loc_BB9B9D: LdPrVar
  loc_BB9B9F: LateMemCall
  loc_BB9BA5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB9BAA: PopAdLdVar
  loc_BB9BAB: FLdPr Me
  loc_BB9BAE: MemLdRfVar from_stack_1.global_60
  loc_BB9BB1: LdPrVar
  loc_BB9BB3: LateMemCall
  loc_BB9BB9: LitVarStr var_94, " font-size: 14px;"
  loc_BB9BBE: PopAdLdVar
  loc_BB9BBF: FLdPr Me
  loc_BB9BC2: MemLdRfVar from_stack_1.global_60
  loc_BB9BC5: LdPrVar
  loc_BB9BC7: LateMemCall
  loc_BB9BCD: LitVarStr var_94, " font-weight: bold;"
  loc_BB9BD2: PopAdLdVar
  loc_BB9BD3: FLdPr Me
  loc_BB9BD6: MemLdRfVar from_stack_1.global_60
  loc_BB9BD9: LdPrVar
  loc_BB9BDB: LateMemCall
  loc_BB9BE1: LitVarStr var_94, "}"
  loc_BB9BE6: PopAdLdVar
  loc_BB9BE7: FLdPr Me
  loc_BB9BEA: MemLdRfVar from_stack_1.global_60
  loc_BB9BED: LdPrVar
  loc_BB9BEF: LateMemCall
  loc_BB9BF5: LitVarStr var_94, ".Normal {"
  loc_BB9BFA: PopAdLdVar
  loc_BB9BFB: FLdPr Me
  loc_BB9BFE: MemLdRfVar from_stack_1.global_60
  loc_BB9C01: LdPrVar
  loc_BB9C03: LateMemCall
  loc_BB9C09: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB9C0E: PopAdLdVar
  loc_BB9C0F: FLdPr Me
  loc_BB9C12: MemLdRfVar from_stack_1.global_60
  loc_BB9C15: LdPrVar
  loc_BB9C17: LateMemCall
  loc_BB9C1D: LitVarStr var_94, " font-size: 12px;"
  loc_BB9C22: PopAdLdVar
  loc_BB9C23: FLdPr Me
  loc_BB9C26: MemLdRfVar from_stack_1.global_60
  loc_BB9C29: LdPrVar
  loc_BB9C2B: LateMemCall
  loc_BB9C31: LitVarStr var_94, " font-style: normal;"
  loc_BB9C36: PopAdLdVar
  loc_BB9C37: FLdPr Me
  loc_BB9C3A: MemLdRfVar from_stack_1.global_60
  loc_BB9C3D: LdPrVar
  loc_BB9C3F: LateMemCall
  loc_BB9C45: LitVarStr var_94, " font-weight: normal;"
  loc_BB9C4A: PopAdLdVar
  loc_BB9C4B: FLdPr Me
  loc_BB9C4E: MemLdRfVar from_stack_1.global_60
  loc_BB9C51: LdPrVar
  loc_BB9C53: LateMemCall
  loc_BB9C59: LitVarStr var_94, " font-variant: normal;"
  loc_BB9C5E: PopAdLdVar
  loc_BB9C5F: FLdPr Me
  loc_BB9C62: MemLdRfVar from_stack_1.global_60
  loc_BB9C65: LdPrVar
  loc_BB9C67: LateMemCall
  loc_BB9C6D: LitVarStr var_94, "}"
  loc_BB9C72: PopAdLdVar
  loc_BB9C73: FLdPr Me
  loc_BB9C76: MemLdRfVar from_stack_1.global_60
  loc_BB9C79: LdPrVar
  loc_BB9C7B: LateMemCall
  loc_BB9C81: LitVarStr var_94, ".Encabezado {"
  loc_BB9C86: PopAdLdVar
  loc_BB9C87: FLdPr Me
  loc_BB9C8A: MemLdRfVar from_stack_1.global_60
  loc_BB9C8D: LdPrVar
  loc_BB9C8F: LateMemCall
  loc_BB9C95: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BB9C9A: PopAdLdVar
  loc_BB9C9B: FLdPr Me
  loc_BB9C9E: MemLdRfVar from_stack_1.global_60
  loc_BB9CA1: LdPrVar
  loc_BB9CA3: LateMemCall
  loc_BB9CA9: LitVarStr var_94, " font-size: 11px;"
  loc_BB9CAE: PopAdLdVar
  loc_BB9CAF: FLdPr Me
  loc_BB9CB2: MemLdRfVar from_stack_1.global_60
  loc_BB9CB5: LdPrVar
  loc_BB9CB7: LateMemCall
  loc_BB9CBD: LitVarStr var_94, " font-weight: bold;"
  loc_BB9CC2: PopAdLdVar
  loc_BB9CC3: FLdPr Me
  loc_BB9CC6: MemLdRfVar from_stack_1.global_60
  loc_BB9CC9: LdPrVar
  loc_BB9CCB: LateMemCall
  loc_BB9CD1: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BB9CD6: PopAdLdVar
  loc_BB9CD7: FLdPr Me
  loc_BB9CDA: MemLdRfVar from_stack_1.global_60
  loc_BB9CDD: LdPrVar
  loc_BB9CDF: LateMemCall
  loc_BB9CE5: LitVarStr var_94, "}"
  loc_BB9CEA: PopAdLdVar
  loc_BB9CEB: FLdPr Me
  loc_BB9CEE: MemLdRfVar from_stack_1.global_60
  loc_BB9CF1: LdPrVar
  loc_BB9CF3: LateMemCall
  loc_BB9CF9: LitVarStr var_94, ".LineaDato {"
  loc_BB9CFE: PopAdLdVar
  loc_BB9CFF: FLdPr Me
  loc_BB9D02: MemLdRfVar from_stack_1.global_60
  loc_BB9D05: LdPrVar
  loc_BB9D07: LateMemCall
  loc_BB9D0D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB9D12: PopAdLdVar
  loc_BB9D13: FLdPr Me
  loc_BB9D16: MemLdRfVar from_stack_1.global_60
  loc_BB9D19: LdPrVar
  loc_BB9D1B: LateMemCall
  loc_BB9D21: LitVarStr var_94, " font-size: 10px;"
  loc_BB9D26: PopAdLdVar
  loc_BB9D27: FLdPr Me
  loc_BB9D2A: MemLdRfVar from_stack_1.global_60
  loc_BB9D2D: LdPrVar
  loc_BB9D2F: LateMemCall
  loc_BB9D35: LitVarStr var_94, "}"
  loc_BB9D3A: PopAdLdVar
  loc_BB9D3B: FLdPr Me
  loc_BB9D3E: MemLdRfVar from_stack_1.global_60
  loc_BB9D41: LdPrVar
  loc_BB9D43: LateMemCall
  loc_BB9D49: LitVarStr var_94, ".Totales {"
  loc_BB9D4E: PopAdLdVar
  loc_BB9D4F: FLdPr Me
  loc_BB9D52: MemLdRfVar from_stack_1.global_60
  loc_BB9D55: LdPrVar
  loc_BB9D57: LateMemCall
  loc_BB9D5D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB9D62: PopAdLdVar
  loc_BB9D63: FLdPr Me
  loc_BB9D66: MemLdRfVar from_stack_1.global_60
  loc_BB9D69: LdPrVar
  loc_BB9D6B: LateMemCall
  loc_BB9D71: LitVarStr var_94, " font-size: 12px;"
  loc_BB9D76: PopAdLdVar
  loc_BB9D77: FLdPr Me
  loc_BB9D7A: MemLdRfVar from_stack_1.global_60
  loc_BB9D7D: LdPrVar
  loc_BB9D7F: LateMemCall
  loc_BB9D85: LitVarStr var_94, " font-weight: bold;"
  loc_BB9D8A: PopAdLdVar
  loc_BB9D8B: FLdPr Me
  loc_BB9D8E: MemLdRfVar from_stack_1.global_60
  loc_BB9D91: LdPrVar
  loc_BB9D93: LateMemCall
  loc_BB9D99: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB9D9E: PopAdLdVar
  loc_BB9D9F: FLdPr Me
  loc_BB9DA2: MemLdRfVar from_stack_1.global_60
  loc_BB9DA5: LdPrVar
  loc_BB9DA7: LateMemCall
  loc_BB9DAD: LitVarStr var_94, "}"
  loc_BB9DB2: PopAdLdVar
  loc_BB9DB3: FLdPr Me
  loc_BB9DB6: MemLdRfVar from_stack_1.global_60
  loc_BB9DB9: LdPrVar
  loc_BB9DBB: LateMemCall
  loc_BB9DC1: LitVarStr var_94, ".SubTotales {"
  loc_BB9DC6: PopAdLdVar
  loc_BB9DC7: FLdPr Me
  loc_BB9DCA: MemLdRfVar from_stack_1.global_60
  loc_BB9DCD: LdPrVar
  loc_BB9DCF: LateMemCall
  loc_BB9DD5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB9DDA: PopAdLdVar
  loc_BB9DDB: FLdPr Me
  loc_BB9DDE: MemLdRfVar from_stack_1.global_60
  loc_BB9DE1: LdPrVar
  loc_BB9DE3: LateMemCall
  loc_BB9DE9: LitVarStr var_94, " font-size: 10px;"
  loc_BB9DEE: PopAdLdVar
  loc_BB9DEF: FLdPr Me
  loc_BB9DF2: MemLdRfVar from_stack_1.global_60
  loc_BB9DF5: LdPrVar
  loc_BB9DF7: LateMemCall
  loc_BB9DFD: LitVarStr var_94, " font-weight: bold;"
  loc_BB9E02: PopAdLdVar
  loc_BB9E03: FLdPr Me
  loc_BB9E06: MemLdRfVar from_stack_1.global_60
  loc_BB9E09: LdPrVar
  loc_BB9E0B: LateMemCall
  loc_BB9E11: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB9E16: PopAdLdVar
  loc_BB9E17: FLdPr Me
  loc_BB9E1A: MemLdRfVar from_stack_1.global_60
  loc_BB9E1D: LdPrVar
  loc_BB9E1F: LateMemCall
  loc_BB9E25: LitVarStr var_94, "}"
  loc_BB9E2A: PopAdLdVar
  loc_BB9E2B: FLdPr Me
  loc_BB9E2E: MemLdRfVar from_stack_1.global_60
  loc_BB9E31: LdPrVar
  loc_BB9E33: LateMemCall
  loc_BB9E39: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BB9E3E: PopAdLdVar
  loc_BB9E3F: FLdPr Me
  loc_BB9E42: MemLdRfVar from_stack_1.global_60
  loc_BB9E45: LdPrVar
  loc_BB9E47: LateMemCall
  loc_BB9E4D: LitVarStr var_94, "</style>"
  loc_BB9E52: PopAdLdVar
  loc_BB9E53: FLdPr Me
  loc_BB9E56: MemLdRfVar from_stack_1.global_60
  loc_BB9E59: LdPrVar
  loc_BB9E5B: LateMemCall
  loc_BB9E61: LitI4 0
  loc_BB9E66: FStStrCopy var_AC
  loc_BB9E69: FLdRfVar var_AC
  loc_BB9E6C: LitI4 0
  loc_BB9E71: FStStrCopy var_A8
  loc_BB9E74: FLdRfVar var_A8
  loc_BB9E77: LitI2_Byte &HFF
  loc_BB9E79: PopTmpLdAd2 var_BE
  loc_BB9E7C: FLdPr Me
  loc_BB9E7F: MemLdRfVar from_stack_1.global_60
  loc_BB9E82: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BB9E87: FFreeStr var_A8 = ""
  loc_BB9E8E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BB9E93: PopAdLdVar
  loc_BB9E94: FLdPr Me
  loc_BB9E97: MemLdRfVar from_stack_1.global_60
  loc_BB9E9A: LdPrVar
  loc_BB9E9C: LateMemCall
  loc_BB9EA2: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BB9EA7: PopAdLdVar
  loc_BB9EA8: FLdPr Me
  loc_BB9EAB: MemLdRfVar from_stack_1.global_60
  loc_BB9EAE: LdPrVar
  loc_BB9EB0: LateMemCall
  loc_BB9EB6: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BB9EBB: PopAdLdVar
  loc_BB9EBC: FLdPr Me
  loc_BB9EBF: MemLdRfVar from_stack_1.global_60
  loc_BB9EC2: LdPrVar
  loc_BB9EC4: LateMemCall
  loc_BB9ECA: FLdPr Me
  loc_BB9ECD: MemLdI2 bLogos
  loc_BB9ED0: BranchF loc_BB9F2B
  loc_BB9ED3: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BB9ED6: LitI2_Byte &H5F
  loc_BB9ED8: CStrUI1
  loc_BB9EDA: FStStrNoPop var_A8
  loc_BB9EDD: ConcatStr
  loc_BB9EDE: FStStrNoPop var_AC
  loc_BB9EE1: LitStr """ height="""
  loc_BB9EE4: ConcatStr
  loc_BB9EE5: FStStrNoPop var_C4
  loc_BB9EE8: LitI2_Byte &H3C
  loc_BB9EEA: CStrUI1
  loc_BB9EEC: FStStrNoPop var_C8
  loc_BB9EEF: ConcatStr
  loc_BB9EF0: FStStrNoPop var_CC
  loc_BB9EF3: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BB9EF6: ConcatStr
  loc_BB9EF7: FStStrNoPop var_D0
  loc_BB9EFA: LitStr "Municipalidad de Guaymallén"
  loc_BB9EFD: ConcatStr
  loc_BB9EFE: FStStrNoPop var_D4
  loc_BB9F01: LitStr "</p>"
  loc_BB9F04: ConcatStr
  loc_BB9F05: CVarStr var_BC
  loc_BB9F08: PopAdLdVar
  loc_BB9F09: FLdPr Me
  loc_BB9F0C: MemLdRfVar from_stack_1.global_60
  loc_BB9F0F: LdPrVar
  loc_BB9F11: LateMemCall
  loc_BB9F17: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BB9F28: FFree1Var var_BC = ""
  loc_BB9F2B: LitStr "    <p>"
  loc_BB9F2E: FLdRfVar var_A8
  loc_BB9F31: FLdPr Me
  loc_BB9F34:  = Me.Caption
  loc_BB9F39: ILdRf var_A8
  loc_BB9F3C: ConcatStr
  loc_BB9F3D: FStStrNoPop var_AC
  loc_BB9F40: LitStr "</p></th>"
  loc_BB9F43: ConcatStr
  loc_BB9F44: CVarStr var_BC
  loc_BB9F47: PopAdLdVar
  loc_BB9F48: FLdPr Me
  loc_BB9F4B: MemLdRfVar from_stack_1.global_60
  loc_BB9F4E: LdPrVar
  loc_BB9F50: LateMemCall
  loc_BB9F56: FFreeStr var_A8 = ""
  loc_BB9F5D: FFree1Var var_BC = ""
  loc_BB9F60: LitVarStr var_94, "  </tr>"
  loc_BB9F65: PopAdLdVar
  loc_BB9F66: FLdPr Me
  loc_BB9F69: MemLdRfVar from_stack_1.global_60
  loc_BB9F6C: LdPrVar
  loc_BB9F6E: LateMemCall
  loc_BB9F74: LitVarStr var_94, "  <tr>"
  loc_BB9F79: PopAdLdVar
  loc_BB9F7A: FLdPr Me
  loc_BB9F7D: MemLdRfVar from_stack_1.global_60
  loc_BB9F80: LdPrVar
  loc_BB9F82: LateMemCall
  loc_BB9F88: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BB9F8D: PopAdLdVar
  loc_BB9F8E: FLdPr Me
  loc_BB9F91: MemLdRfVar from_stack_1.global_60
  loc_BB9F94: LdPrVar
  loc_BB9F96: LateMemCall
  loc_BB9F9C: LitVarStr var_94, "  </tr>"
  loc_BB9FA1: PopAdLdVar
  loc_BB9FA2: FLdPr Me
  loc_BB9FA5: MemLdRfVar from_stack_1.global_60
  loc_BB9FA8: LdPrVar
  loc_BB9FAA: LateMemCall
  loc_BB9FB0: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BB9FB5: PopAdLdVar
  loc_BB9FB6: FLdPr Me
  loc_BB9FB9: MemLdRfVar from_stack_1.global_60
  loc_BB9FBC: LdPrVar
  loc_BB9FBE: LateMemCall
  loc_BB9FC4: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BB9FC7: FLdPr Me
  loc_BB9FCA: VCallAd Control_ID_DesdeMsk
  loc_BB9FCD: FStAdFunc var_D8
  loc_BB9FD0: FLdPr var_D8
  loc_BB9FD3: LateIdLdVar var_BC DispID_15 0
  loc_BB9FDA: CStrVarTmp
  loc_BB9FDB: FStStrNoPop var_A8
  loc_BB9FDE: ConcatStr
  loc_BB9FDF: FStStrNoPop var_AC
  loc_BB9FE2: LitStr "</td>"
  loc_BB9FE5: ConcatStr
  loc_BB9FE6: CVarStr var_E8
  loc_BB9FE9: PopAdLdVar
  loc_BB9FEA: FLdPr Me
  loc_BB9FED: MemLdRfVar from_stack_1.global_60
  loc_BB9FF0: LdPrVar
  loc_BB9FF2: LateMemCall
  loc_BB9FF8: FFreeStr var_A8 = ""
  loc_BB9FFF: FFree1Ad var_D8
  loc_BBA002: FFreeVar var_BC = ""
  loc_BBA009: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BBA00C: FLdPr Me
  loc_BBA00F: VCallAd Control_ID_HastaMsk
  loc_BBA012: FStAdFunc var_D8
  loc_BBA015: FLdPr var_D8
  loc_BBA018: LateIdLdVar var_BC DispID_15 0
  loc_BBA01F: CStrVarTmp
  loc_BBA020: FStStrNoPop var_A8
  loc_BBA023: ConcatStr
  loc_BBA024: FStStrNoPop var_AC
  loc_BBA027: LitStr "</td>"
  loc_BBA02A: ConcatStr
  loc_BBA02B: CVarStr var_E8
  loc_BBA02E: PopAdLdVar
  loc_BBA02F: FLdPr Me
  loc_BBA032: MemLdRfVar from_stack_1.global_60
  loc_BBA035: LdPrVar
  loc_BBA037: LateMemCall
  loc_BBA03D: FFreeStr var_A8 = ""
  loc_BBA044: FFree1Ad var_D8
  loc_BBA047: FFreeVar var_BC = ""
  loc_BBA04E: LitVarStr var_94, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BBA053: PopAdLdVar
  loc_BBA054: FLdPr Me
  loc_BBA057: MemLdRfVar from_stack_1.global_60
  loc_BBA05A: LdPrVar
  loc_BBA05C: LateMemCall
  loc_BBA062: LitVarStr var_94, "  </tr>"
  loc_BBA067: PopAdLdVar
  loc_BBA068: FLdPr Me
  loc_BBA06B: MemLdRfVar from_stack_1.global_60
  loc_BBA06E: LdPrVar
  loc_BBA070: LateMemCall
  loc_BBA076: LitVarStr var_94, "</table>"
  loc_BBA07B: PopAdLdVar
  loc_BBA07C: FLdPr Me
  loc_BBA07F: MemLdRfVar from_stack_1.global_60
  loc_BBA082: LdPrVar
  loc_BBA084: LateMemCall
  loc_BBA08A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BBA08F: PopAdLdVar
  loc_BBA090: FLdPr Me
  loc_BBA093: MemLdRfVar from_stack_1.global_60
  loc_BBA096: LdPrVar
  loc_BBA098: LateMemCall
  loc_BBA09E: LitVarStr var_94, "  <thead>"
  loc_BBA0A3: PopAdLdVar
  loc_BBA0A4: FLdPr Me
  loc_BBA0A7: MemLdRfVar from_stack_1.global_60
  loc_BBA0AA: LdPrVar
  loc_BBA0AC: LateMemCall
  loc_BBA0B2: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BBA0B7: PopAdLdVar
  loc_BBA0B8: FLdPr Me
  loc_BBA0BB: MemLdRfVar from_stack_1.global_60
  loc_BBA0BE: LdPrVar
  loc_BBA0C0: LateMemCall
  loc_BBA0C6: LitVarStr var_94, "    <th>Facilidad</th>"
  loc_BBA0CB: PopAdLdVar
  loc_BBA0CC: FLdPr Me
  loc_BBA0CF: MemLdRfVar from_stack_1.global_60
  loc_BBA0D2: LdPrVar
  loc_BBA0D4: LateMemCall
  loc_BBA0DA: LitVarStr var_94, "    <th>Fecha de Alta</th>"
  loc_BBA0DF: PopAdLdVar
  loc_BBA0E0: FLdPr Me
  loc_BBA0E3: MemLdRfVar from_stack_1.global_60
  loc_BBA0E6: LdPrVar
  loc_BBA0E8: LateMemCall
  loc_BBA0EE: LitVarStr var_94, "    <th>Ofic.</th>"
  loc_BBA0F3: PopAdLdVar
  loc_BBA0F4: FLdPr Me
  loc_BBA0F7: MemLdRfVar from_stack_1.global_60
  loc_BBA0FA: LdPrVar
  loc_BBA0FC: LateMemCall
  loc_BBA102: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BBA107: PopAdLdVar
  loc_BBA108: FLdPr Me
  loc_BBA10B: MemLdRfVar from_stack_1.global_60
  loc_BBA10E: LdPrVar
  loc_BBA110: LateMemCall
  loc_BBA116: LitVarStr var_94, "  </tr>"
  loc_BBA11B: PopAdLdVar
  loc_BBA11C: FLdPr Me
  loc_BBA11F: MemLdRfVar from_stack_1.global_60
  loc_BBA122: LdPrVar
  loc_BBA124: LateMemCall
  loc_BBA12A: LitVarStr var_94, "  </thead>"
  loc_BBA12F: PopAdLdVar
  loc_BBA130: FLdPr Me
  loc_BBA133: MemLdRfVar from_stack_1.global_60
  loc_BBA136: LdPrVar
  loc_BBA138: LateMemCall
  loc_BBA13E: ExitProcHresult
End Function

Private Function Proc_248_27_A0C3D8() 'A0C3D8
  'Data Table: 49A7C0
  loc_A0C398: LitVarStr var_94, "</table>"
  loc_A0C39D: PopAdLdVar
  loc_A0C39E: FLdPr Me
  loc_A0C3A1: MemLdRfVar from_stack_1.global_60
  loc_A0C3A4: LdPrVar
  loc_A0C3A6: LateMemCall
  loc_A0C3AC: LitVarStr var_94, "</body>"
  loc_A0C3B1: PopAdLdVar
  loc_A0C3B2: FLdPr Me
  loc_A0C3B5: MemLdRfVar from_stack_1.global_60
  loc_A0C3B8: LdPrVar
  loc_A0C3BA: LateMemCall
  loc_A0C3C0: LitVarStr var_94, "</html>"
  loc_A0C3C5: PopAdLdVar
  loc_A0C3C6: FLdPr Me
  loc_A0C3C9: MemLdRfVar from_stack_1.global_60
  loc_A0C3CC: LdPrVar
  loc_A0C3CE: LateMemCall
  loc_A0C3D4: ExitProcHresult
  loc_A0C3D5: GeR8
  loc_A0C3D6: LtI2
End Function
