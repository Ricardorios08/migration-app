VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA5662a14Incc
  Caption = "Acuerdo 5662 Articulo- 14 Inciso C"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA5662a14Incc.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11052
  ClientHeight = 5484
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 3720
    Width = 10815
    Height = 150
    Visible = 0   'False
    TabIndex = 18
    OleObjectBlob = "rptA5662a14Incc.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5235
    Width = 11055
    Height = 255
    TabIndex = 22
    OleObjectBlob = "rptA5662a14Incc.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9600
    Top = 4200
    Width = 855
    Height = 735
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptA5662a14Incc.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA5662a14Incc.frx":0C04
    Left = 9960
    Top = 4320
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 3960
    Width = 4695
    Height = 1215
    TabIndex = 20
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
      Left = 3120
      Top = 360
      Width = 1335
      Height = 615
      Visible = 0   'False
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
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1680
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      Visible = 0   'False
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
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3960
    Width = 4095
    Height = 1215
    Visible = 0   'False
    TabIndex = 19
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
    Height = 3615
    TabIndex = 15
    Begin VB.OptionButton optConcepto
      Caption = "Concepto"
      Left = 4440
      Top = 2640
      Width = 2415
      Height = 495
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
    End
    Begin VB.OptionButton OptFacilidad
      Caption = "Facilidad"
      Left = 4440
      Top = 2160
      Width = 2415
      Height = 495
      TabIndex = 6
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
    Begin VB.OptionButton OptDetalledelBoleto
      Caption = "Detalle del Boleto"
      Left = 4440
      Top = 1680
      Width = 2415
      Height = 495
      TabIndex = 5
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
    Begin VB.OptionButton OptBoleto
      Caption = "Boleto"
      Left = 4440
      Top = 1200
      Width = 2415
      Height = 495
      TabIndex = 4
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
    Begin VB.OptionButton OptTipoMovimiento
      Caption = "Tipo de Movimiento"
      Left = 4440
      Top = 720
      Width = 2415
      Height = 495
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
    Begin VB.OptionButton OptCtaCte
      Caption = "Cuenta Corriente"
      Left = 4440
      Top = 240
      Width = 2295
      Height = 495
      TabIndex = 2
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
      TabIndex = 13
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
      TabIndex = 0
      OleObjectBlob = "rptA5662a14Incc.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 1
      OleObjectBlob = "rptA5662a14Incc.frx":0D18
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1380
      Top = 885
      Width = 705
      Height = 300
      TabIndex = 17
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
      TabIndex = 16
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
    Left = 9960
    Top = 4560
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 21
    OleObjectBlob = "rptA5662a14Incc.frx":0DC8
  End
End

Attribute VB_Name = "rptA5662a14Incc"

Public bGenerado As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_00560F64
  bStruc(108) As Byte ' String fields: 27
End Type

Private Type UDT_3_00560FDC
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_4_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type

Private Type UDT_5_00560654
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub cmdPredeterminada_Click() '9CB4CC
  'Data Table: 4C8B34
  loc_9CB4B4: LitI2_Byte 0
  loc_9CB4B6: ILdRf Me
  loc_9CB4B9: CastAd
  loc_9CB4BC: FStAdFunc var_88
  loc_9CB4BF: FLdRfVar var_88
  loc_9CB4C2: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CB4C7: FFree1Ad var_88
  loc_9CB4CA: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9BDC98
  'Data Table: 4C8B34
  loc_9BDC84: FLdPr Me
  loc_9BDC87: VCallAd Control_ID_DesdeMsk
  loc_9BDC8A: CVarAd
  loc_9BDC8E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDC93: FFree1Var var_94 = ""
  loc_9BDC96: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A62EE0
  'Data Table: 4C8B34
  loc_A62E84: FLdPr Me
  loc_A62E87: VCallAd Control_ID_DesdeMsk
  loc_A62E8A: FStAdFunc var_88
  loc_A62E8D: FLdPr var_88
  loc_A62E90: LateIdLdVar var_98 DispID_15 0
  loc_A62E97: CStrVarTmp
  loc_A62E98: FStStrNoPop var_9C
  loc_A62E9B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A62EA0: FStStrNoPop var_A0
  loc_A62EA3: FLdPr Me
  loc_A62EA6: MemStStrCopy
  loc_A62EAA: FFreeStr var_9C = ""
  loc_A62EB1: FFree1Ad var_88
  loc_A62EB4: FFree1Var var_98 = ""
  loc_A62EB7: FLdPr Me
  loc_A62EBA: VCallAd Control_ID_DesdeMsk
  loc_A62EBD: FStAdFuncNoPop
  loc_A62EC0: CastAd
  loc_A62EC3: FStAdFunc var_A4
  loc_A62EC6: FLdRfVar var_A4
  loc_A62EC9: FLdPr Me
  loc_A62ECC: MemLdStr global_152
  loc_A62ECF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A62ED4: IStI2 arg_C
  loc_A62ED7: FFreeAd var_88 = ""
  loc_A62EDE: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A22318
  'Data Table: 4C8B34
  loc_A222D0: ILdI2 KeyAscii
  loc_A222D3: CI4UI1
  loc_A222D4: LitI4 &H20
  loc_A222D9: EqI4
  loc_A222DA: BranchF loc_A22317
  loc_A222DD: LitVar_Missing var_A4
  loc_A222E0: PopAdLdVar
  loc_A222E1: LitVarI4
  loc_A222E9: PopAdLdVar
  loc_A222EA: ImpAdLdRf MemVar_D930A4
  loc_A222ED: NewIfNullPr frmCalendario
  loc_A222F0: frmCalendario.Show from_stack_1, from_stack_2
  loc_A222F5: ImpAdLdRf MemVar_D93028
  loc_A222F8: CDargRef
  loc_A222FC: FLdPr Me
  loc_A222FF: VCallAd Control_ID_DesdeMsk
  loc_A22302: FStAdFunc var_A8
  loc_A22305: FLdPr var_A8
  loc_A22308: LateIdSt
  loc_A2230D: FFree1Ad var_A8
  loc_A22310: LitStr vbNullString
  loc_A22313: ImpAdStStrCopy MemVar_D93028
  loc_A22317: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13D98
  'Data Table: 4C8B34
  loc_A13D60: FLdPr Me
  loc_A13D63: VCallAd Control_ID_statusBar
  loc_A13D66: FStAdFunc var_88
  loc_A13D69: FLdPr var_88
  loc_A13D6C: LateIdLdVar var_98 DispID_1 0
  loc_A13D73: CStrVarTmp
  loc_A13D74: CVarStr var_A8
  loc_A13D77: PopAdLdVar
  loc_A13D78: FLdPr Me
  loc_A13D7B: VCallAd Control_ID_statusBar
  loc_A13D7E: FStAdFunc var_BC
  loc_A13D81: FLdPr var_BC
  loc_A13D84: LateIdSt
  loc_A13D89: FFreeAd var_88 = ""
  loc_A13D90: FFreeVar var_98 = ""
  loc_A13D97: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CB3E8
  'Data Table: 4C8B34
  loc_9CB3D0: LitI2_Byte &HFF
  loc_9CB3D2: ILdRf Me
  loc_9CB3D5: CastAd
  loc_9CB3D8: FStAdFunc var_88
  loc_9CB3DB: FLdRfVar var_88
  loc_9CB3DE: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CB3E3: FFree1Ad var_88
  loc_9CB3E6: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A02180
  'Data Table: 4C8B34
  loc_A02150: LitVarStr var_94, "Cerrando..."
  loc_A02155: PopAdLdVar
  loc_A02156: FLdPr Me
  loc_A02159: VCallAd Control_ID_statusBar
  loc_A0215C: FStAdFunc var_A8
  loc_A0215F: FLdPr var_A8
  loc_A02162: LateIdSt
  loc_A02167: FFree1Ad var_A8
  loc_A0216A: ILdRf Me
  loc_A0216D: FStAdNoPop
  loc_A02171: ImpAdLdRf MemVar_D9C5D8
  loc_A02174: NewIfNullPr Global
  loc_A02177: Global.Unload from_stack_1
  loc_A0217C: FFree1Ad var_A8
  loc_A0217F: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BDC50
  'Data Table: 4C8B34
  loc_9BDC3C: FLdPr Me
  loc_9BDC3F: VCallAd Control_ID_HastaMsk
  loc_9BDC42: CVarAd
  loc_9BDC46: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDC4B: FFree1Var var_94 = ""
  loc_9BDC4E: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA55A4
  'Data Table: 4C8B34
  loc_AA54F4: FLdPr Me
  loc_AA54F7: VCallAd Control_ID_HastaMsk
  loc_AA54FA: FStAdFunc var_88
  loc_AA54FD: FLdPr var_88
  loc_AA5500: LateIdLdVar var_98 DispID_15 0
  loc_AA5507: CStrVarTmp
  loc_AA5508: CVarStr var_A8
  loc_AA550B: ImpAdCallI2 IsDate()
  loc_AA5510: FFree1Ad var_88
  loc_AA5513: FFreeVar var_98 = ""
  loc_AA551A: BranchF loc_AA55A0
  loc_AA551D: FLdPr Me
  loc_AA5520: VCallAd Control_ID_HastaMsk
  loc_AA5523: FStAdFunc var_88
  loc_AA5526: FLdPr var_88
  loc_AA5529: LateIdLdVar var_98 DispID_15 0
  loc_AA5530: CStrVarTmp
  loc_AA5531: CVarStr var_A8
  loc_AA5534: FLdRfVar var_B8
  loc_AA5537: ImpAdCallFPR4  = Year()
  loc_AA553C: FLdRfVar var_B8
  loc_AA553F: FLdPr Me
  loc_AA5542: VCallAd Control_ID_DesdeMsk
  loc_AA5545: FStAdFunc var_BC
  loc_AA5548: FLdPr var_BC
  loc_AA554B: LateIdLdVar var_CC DispID_15 0
  loc_AA5552: CStrVarTmp
  loc_AA5553: CVarStr var_DC
  loc_AA5556: FLdRfVar var_EC
  loc_AA5559: ImpAdCallFPR4  = Year()
  loc_AA555E: FLdRfVar var_EC
  loc_AA5561: NeVarBool
  loc_AA5563: FFreeAd var_88 = ""
  loc_AA556A: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA5579: BranchF loc_AA55A0
  loc_AA557C: FLdPr Me
  loc_AA557F: VCallAd Control_ID_HastaMsk
  loc_AA5582: FStAdFuncNoPop
  loc_AA5585: CastAd
  loc_AA5588: FStAdFunc var_BC
  loc_AA558B: FLdRfVar var_BC
  loc_AA558E: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA5591: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA5596: IStI2 arg_C
  loc_AA5599: FFreeAd var_88 = ""
  loc_AA55A0: ExitProcHresult
  loc_AA55A1: Ary1LdCy
  loc_AA55A2: ImpAdLdPr unk_4C4735
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A2286C
  'Data Table: 4C8B34
  loc_A22824: ILdI2 KeyAscii
  loc_A22827: CI4UI1
  loc_A22828: LitI4 &H20
  loc_A2282D: EqI4
  loc_A2282E: BranchF loc_A2286B
  loc_A22831: LitVar_Missing var_A4
  loc_A22834: PopAdLdVar
  loc_A22835: LitVarI4
  loc_A2283D: PopAdLdVar
  loc_A2283E: ImpAdLdRf MemVar_D930A4
  loc_A22841: NewIfNullPr frmCalendario
  loc_A22844: frmCalendario.Show from_stack_1, from_stack_2
  loc_A22849: ImpAdLdRf MemVar_D93028
  loc_A2284C: CDargRef
  loc_A22850: FLdPr Me
  loc_A22853: VCallAd Control_ID_HastaMsk
  loc_A22856: FStAdFunc var_A8
  loc_A22859: FLdPr var_A8
  loc_A2285C: LateIdSt
  loc_A22861: FFree1Ad var_A8
  loc_A22864: LitStr vbNullString
  loc_A22867: ImpAdStStrCopy MemVar_D93028
  loc_A2286B: ExitProcHresult
End Sub

Private Sub Form_Load() 'ADEF54
  'Data Table: 4C8B34
  loc_ADEE1C: ILdRf Me
  loc_ADEE1F: CastAd
  loc_ADEE22: FStAdFunc var_88
  loc_ADEE25: FLdRfVar var_88
  loc_ADEE28: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_ADEE2D: FFree1Ad var_88
  loc_ADEE30: Call cmdNueva_Click()
  loc_ADEE35: LitI2_Byte 0
  loc_ADEE37: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ADEE3C: CVarDate var_A8
  loc_ADEE40: FLdRfVar var_B8
  loc_ADEE43: ImpAdCallFPR4  = Year()
  loc_ADEE48: LitI2_Byte 0
  loc_ADEE4A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ADEE4F: CVarDate var_D8
  loc_ADEE53: FLdRfVar var_E8
  loc_ADEE56: ImpAdCallFPR4  = Month()
  loc_ADEE5B: LitI2_Byte 1
  loc_ADEE5D: FLdRfVar var_E8
  loc_ADEE60: LitVarI2 var_F8, 1
  loc_ADEE65: SubVar var_108
  loc_ADEE69: CI2Var
  loc_ADEE6A: FLdRfVar var_B8
  loc_ADEE6D: CI2Var
  loc_ADEE6E: FLdRfVar var_118
  loc_ADEE71: ImpAdCallFPR4  = DateSerial(, , )
  loc_ADEE76: FLdRfVar var_118
  loc_ADEE79: CStrVarTmp
  loc_ADEE7A: CVarStr var_128
  loc_ADEE7D: PopAdLdVar
  loc_ADEE7E: FLdPr Me
  loc_ADEE81: VCallAd Control_ID_DesdeMsk
  loc_ADEE84: FStAdFunc var_88
  loc_ADEE87: FLdPr var_88
  loc_ADEE8A: LateIdSt
  loc_ADEE8F: FFree1Ad var_88
  loc_ADEE92: FFreeVar var_A8 = "": var_D8 = "": var_E8 = "": var_B8 = "": var_118 = ""
  loc_ADEEA1: FLdPr Me
  loc_ADEEA4: VCallAd Control_ID_DesdeMsk
  loc_ADEEA7: FStAdFunc var_88
  loc_ADEEAA: FLdPr var_88
  loc_ADEEAD: LateIdLdVar var_A8 DispID_15 0
  loc_ADEEB4: CStrVarTmp
  loc_ADEEB5: CVarStr var_B8
  loc_ADEEB8: FLdRfVar var_D8
  loc_ADEEBB: ImpAdCallFPR4  = Year()
  loc_ADEEC0: FLdPr Me
  loc_ADEEC3: VCallAd Control_ID_DesdeMsk
  loc_ADEEC6: FStAdFunc var_13C
  loc_ADEEC9: FLdPr var_13C
  loc_ADEECC: LateIdLdVar var_E8 DispID_15 0
  loc_ADEED3: CStrVarTmp
  loc_ADEED4: CVarStr var_108
  loc_ADEED7: FLdRfVar var_118
  loc_ADEEDA: ImpAdCallFPR4  = Month()
  loc_ADEEDF: LitI2_Byte 1
  loc_ADEEE1: FLdRfVar var_118
  loc_ADEEE4: LitVarI2 var_98, 1
  loc_ADEEE9: AddVar var_128
  loc_ADEEED: CI2Var
  loc_ADEEEE: FLdRfVar var_D8
  loc_ADEEF1: CI2Var
  loc_ADEEF2: FLdRfVar var_14C
  loc_ADEEF5: ImpAdCallFPR4  = DateSerial(, , )
  loc_ADEEFA: FLdRfVar var_14C
  loc_ADEEFD: LitVarI2 var_C8, 1
  loc_ADEF02: SubVar var_15C
  loc_ADEF06: CStrVarTmp
  loc_ADEF07: CVarStr var_16C
  loc_ADEF0A: PopAdLdVar
  loc_ADEF0B: FLdPr Me
  loc_ADEF0E: VCallAd Control_ID_HastaMsk
  loc_ADEF11: FStAdFunc var_170
  loc_ADEF14: FLdPr var_170
  loc_ADEF17: LateIdSt
  loc_ADEF1C: FFreeAd var_88 = "": var_13C = ""
  loc_ADEF25: FFreeVar var_A8 = "": var_B8 = "": var_E8 = "": var_108 = "": var_118 = "": var_D8 = "": var_128 = "": var_14C = ""
  loc_ADEF3A: LitI2_Byte &HFF
  loc_ADEF3C: FLdPr Me
  loc_ADEF3F: VCallAd Control_ID_OptCtaCte
  loc_ADEF42: FStAdFunc var_88
  loc_ADEF45: FLdPr var_88
  loc_ADEF48: Me.Value = from_stack_1b
  loc_ADEF4D: FFree1Ad var_88
  loc_ADEF50: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CB26C
  'Data Table: 4C8B34
  loc_9CB254: FLdPr Me
  loc_9CB257: VCallAd Control_ID_wbbReporte
  loc_9CB25A: FStAdFunc var_88
  loc_9CB25D: FLdRfVar var_88
  loc_9CB260: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CB265: FFree1Ad var_88
  loc_9CB268: ExitProcHresult
  loc_9CB269: ThisVCallHidden
End Sub

Private Sub cmdPdf_Click() '9E1D6C
  'Data Table: 4C8B34
  loc_9E1D50: LitI2_Byte 0
  loc_9E1D52: PopTmpLdAd2 var_8A
  loc_9E1D55: ILdRf Me
  loc_9E1D58: CastAd
  loc_9E1D5B: FStAdFunc var_88
  loc_9E1D5E: FLdRfVar var_88
  loc_9E1D61: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E1D66: FFree1Ad var_88
  loc_9E1D69: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CB5B0
  'Data Table: 4C8B34
  loc_9CB598: ILdRf Me
  loc_9CB59B: CastAd
  loc_9CB59E: FStAdFunc var_88
  loc_9CB5A1: FLdRfVar var_88
  loc_9CB5A4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CB5A9: FFree1Ad var_88
  loc_9CB5AC: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A09400
  'Data Table: 4C8B34
  loc_A093C8: LitI2_Byte 0
  loc_A093CA: FLdPr Me
  loc_A093CD: MemStI2 bGenerado
  loc_A093D0: LitI2_Byte 0
  loc_A093D2: ILdRf Me
  loc_A093D5: CastAd
  loc_A093D8: FStAdFunc var_88
  loc_A093DB: FLdRfVar var_88
  loc_A093DE: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A093E3: FFree1Ad var_88
  loc_A093E6: Call HabilitarCriterio()
  loc_A093EB: ILdRf Me
  loc_A093EE: CastAd
  loc_A093F1: FStAdFunc var_88
  loc_A093F4: FLdRfVar var_88
  loc_A093F7: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A093FC: FFree1Ad var_88
  loc_A093FF: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E1C7C
  'Data Table: 4C8B34
  loc_9E1C60: LitI2_Byte 0
  loc_9E1C62: LitI2_Byte 0
  loc_9E1C64: ILdRf Me
  loc_9E1C67: CastAd
  loc_9E1C6A: FStAdFunc var_88
  loc_9E1C6D: FLdRfVar var_88
  loc_9E1C70: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E1C75: FFree1Ad var_88
  loc_9E1C78: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4C9DC4
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C9DD3
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'AA4B8C
  'Data Table: 4C8B34
  loc_AA4AE8: LitI4 0
  loc_AA4AED: LitI4 7
  loc_AA4AF2: FLdRfVar var_88
  loc_AA4AF5: Redim
  loc_AA4AFF: FLdPr Me
  loc_AA4B02: VCallAd Control_ID_DesdeMsk
  loc_AA4B05: CVarAd
  loc_AA4B09: ParmAry1St
  loc_AA4B0F: FLdPr Me
  loc_AA4B12: VCallAd Control_ID_HastaMsk
  loc_AA4B15: CVarAd
  loc_AA4B19: ParmAry1St
  loc_AA4B1F: FLdPr Me
  loc_AA4B22: VCallAd Control_ID_OptCtaCte
  loc_AA4B25: CVarAd
  loc_AA4B29: ParmAry1St
  loc_AA4B2F: FLdPr Me
  loc_AA4B32: VCallAd Control_ID_OptTipoMovimiento
  loc_AA4B35: CVarAd
  loc_AA4B39: ParmAry1St
  loc_AA4B3F: FLdPr Me
  loc_AA4B42: VCallAd Control_ID_OptBoleto
  loc_AA4B45: CVarAd
  loc_AA4B49: ParmAry1St
  loc_AA4B4F: FLdPr Me
  loc_AA4B52: VCallAd Control_ID_OptDetalledelBoleto
  loc_AA4B55: CVarAd
  loc_AA4B59: ParmAry1St
  loc_AA4B5F: FLdPr Me
  loc_AA4B62: VCallAd Control_ID_OptFacilidad
  loc_AA4B65: CVarAd
  loc_AA4B69: ParmAry1St
  loc_AA4B6F: FLdPr Me
  loc_AA4B72: VCallAd Control_ID_optConcepto
  loc_AA4B75: CVarAd
  loc_AA4B79: ParmAry1St
  loc_AA4B7F: FLdRfVar var_88
  loc_AA4B82: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA4B87: FLdRfVar var_88
  loc_AA4B8A: Erase
  loc_AA4B8B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C4ECE8
  'Data Table: 4C8B34
  loc_C4DEF0: FLdPr Me
  loc_C4DEF3: MemLdI2 bGenerado
  loc_C4DEF6: BranchF loc_C4DEFA
  loc_C4DEF9: ExitProcHresult
  loc_C4DEFA: LitVarStr var_9C, "Generando reporte..."
  loc_C4DEFF: PopAdLdVar
  loc_C4DF00: FLdPr Me
  loc_C4DF03: VCallAd Control_ID_statusBar
  loc_C4DF06: FStAdFunc var_B0
  loc_C4DF09: FLdPr var_B0
  loc_C4DF0C: LateIdSt
  loc_C4DF11: FFree1Ad var_B0
  loc_C4DF14: LitI4 &HB
  loc_C4DF19: CI2I4
  loc_C4DF1A: FLdPr Me
  loc_C4DF1D: Me.MousePointer = from_stack_1
  loc_C4DF22: LitI2_Byte 0
  loc_C4DF24: PopTmpLdAd2 var_B2
  loc_C4DF27: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C4DF2C: FLdPr Me
  loc_C4DF2F: MemLdStr global_152
  loc_C4DF32: LitStr vbNullString
  loc_C4DF35: NeStr
  loc_C4DF37: BranchF loc_C4DF3D
  loc_C4DF3A: Branch loc_C4ECBC
  loc_C4DF3D: LitI2_Byte 0
  loc_C4DF3F: PopTmpLdAd2 var_B2
  loc_C4DF42: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C4DF47: FLdPr Me
  loc_C4DF4A: MemLdStr global_152
  loc_C4DF4D: LitStr vbNullString
  loc_C4DF50: NeStr
  loc_C4DF52: BranchF loc_C4DF58
  loc_C4DF55: Branch loc_C4ECBC
  loc_C4DF58: FLdPr Me
  loc_C4DF5B: VCallAd Control_ID_DesdeMsk
  loc_C4DF5E: FStAdFunc var_B0
  loc_C4DF61: FLdPr var_B0
  loc_C4DF64: LateIdLdVar var_C4 DispID_15 0
  loc_C4DF6B: PopAd
  loc_C4DF6D: LitI4 1
  loc_C4DF72: LitI4 1
  loc_C4DF77: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_C4DF7C: FStVarCopyObj var_E4
  loc_C4DF7F: FLdRfVar var_E4
  loc_C4DF82: FLdRfVar var_C4
  loc_C4DF85: CStrVarTmp
  loc_C4DF86: CVarStr var_D4
  loc_C4DF89: ImpAdCallI2 Format$(, )
  loc_C4DF8E: FStStr var_88
  loc_C4DF91: FFree1Ad var_B0
  loc_C4DF94: FFreeVar var_C4 = "": var_D4 = ""
  loc_C4DF9D: FLdPr Me
  loc_C4DFA0: VCallAd Control_ID_HastaMsk
  loc_C4DFA3: FStAdFunc var_B0
  loc_C4DFA6: FLdPr var_B0
  loc_C4DFA9: LateIdLdVar var_C4 DispID_15 0
  loc_C4DFB0: PopAd
  loc_C4DFB2: LitI4 1
  loc_C4DFB7: LitI4 1
  loc_C4DFBC: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_C4DFC1: FStVarCopyObj var_E4
  loc_C4DFC4: FLdRfVar var_E4
  loc_C4DFC7: FLdRfVar var_C4
  loc_C4DFCA: CStrVarTmp
  loc_C4DFCB: CVarStr var_D4
  loc_C4DFCE: ImpAdCallI2 Format$(, )
  loc_C4DFD3: FStStr var_8C
  loc_C4DFD6: FFree1Ad var_B0
  loc_C4DFD9: FFreeVar var_C4 = "": var_D4 = ""
  loc_C4DFE2: FLdRfVar var_B2
  loc_C4DFE5: FLdPr Me
  loc_C4DFE8: VCallAd Control_ID_OptCtaCte
  loc_C4DFEB: FStAdFunc var_B0
  loc_C4DFEE: FLdPr var_B0
  loc_C4DFF1:  = Me.Value
  loc_C4DFF6: FLdI2 var_B2
  loc_C4DFF9: LitI2_Byte &HFF
  loc_C4DFFB: EqI2
  loc_C4DFFC: FFree1Ad var_B0
  loc_C4DFFF: BranchF loc_C4E084
  loc_C4E002: FLdPr Me
  loc_C4E005: MemLdRfVar from_stack_1.global_92
  loc_C4E008: NewIfNullAd
  loc_C4E00B: FStAd var_E8 
  loc_C4E00F: LitStr "SELECT ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct,"
  loc_C4E012: LitStr " ctacte.PeriBole, ctacte.NumeBole, ctacte.FealCtct, ctacte.FeveCtct, ctacte.PeriInfo, ctacte.CodiConc,"
  loc_C4E015: ConcatStr
  loc_C4E016: FStStrNoPop var_EC
  loc_C4E019: LitStr " ctacte.CodiFapa, ctacte.NumeApre, ctacte.CodiTimo, ctacte.ExpeCtct, ctacte.DebeCtct, ctacte.CredCtct"
  loc_C4E01C: ConcatStr
  loc_C4E01D: FStStrNoPop var_F0
  loc_C4E020: LitStr " FROM ctacte "
  loc_C4E023: ConcatStr
  loc_C4E024: FStStrNoPop var_F4
  loc_C4E027: LitStr " WHERE ctacte.FealCtct BETWEEN "
  loc_C4E02A: ConcatStr
  loc_C4E02B: FStStrNoPop var_F8
  loc_C4E02E: ILdRf var_88
  loc_C4E031: ConcatStr
  loc_C4E032: FStStrNoPop var_FC
  loc_C4E035: LitStr " AND "
  loc_C4E038: ConcatStr
  loc_C4E039: FStStrNoPop var_100
  loc_C4E03C: ILdRf var_8C
  loc_C4E03F: ConcatStr
  loc_C4E040: FStStrNoPop var_104
  loc_C4E043: FLdPr var_E8
  loc_C4E046: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4E04B: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C4E05C: FLdRfVar var_108
  loc_C4E05F: FLdPr var_E8
  loc_C4E062: from_stack_1 = clsctacte.RecordCount
  loc_C4E067: ILdRf var_108
  loc_C4E06A: LitI4 0
  loc_C4E06F: EqI4
  loc_C4E070: BranchF loc_C4E07E
  loc_C4E073: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C4E076: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4E07B: Branch loc_C4ECBC
  loc_C4E07E: LitNothing
  loc_C4E080: FStAd var_E8 
  loc_C4E084: FLdRfVar var_B2
  loc_C4E087: FLdPr Me
  loc_C4E08A: VCallAd Control_ID_OptBoleto
  loc_C4E08D: FStAdFunc var_B0
  loc_C4E090: FLdPr var_B0
  loc_C4E093:  = Me.Value
  loc_C4E098: FLdI2 var_B2
  loc_C4E09B: LitI2_Byte &HFF
  loc_C4E09D: EqI2
  loc_C4E09E: FFree1Ad var_B0
  loc_C4E0A1: BranchF loc_C4E102
  loc_C4E0A4: FLdPr Me
  loc_C4E0A7: MemLdRfVar from_stack_1.global_92
  loc_C4E0AA: NewIfNullAd
  loc_C4E0AD: FStAd var_10C 
  loc_C4E0B1: LitStr "SELECT * FROM boleto WHERE boleto.FealBole BETWEEN "
  loc_C4E0B4: ILdRf var_88
  loc_C4E0B7: ConcatStr
  loc_C4E0B8: FStStrNoPop var_EC
  loc_C4E0BB: LitStr " AND "
  loc_C4E0BE: ConcatStr
  loc_C4E0BF: FStStrNoPop var_F0
  loc_C4E0C2: ILdRf var_8C
  loc_C4E0C5: ConcatStr
  loc_C4E0C6: FStStrNoPop var_F4
  loc_C4E0C9: FLdPr var_10C
  loc_C4E0CC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4E0D1: FFreeStr var_EC = "": var_F0 = ""
  loc_C4E0DA: FLdRfVar var_108
  loc_C4E0DD: FLdPr var_10C
  loc_C4E0E0: from_stack_1 = clsctacte.RecordCount
  loc_C4E0E5: ILdRf var_108
  loc_C4E0E8: LitI4 0
  loc_C4E0ED: EqI4
  loc_C4E0EE: BranchF loc_C4E0FC
  loc_C4E0F1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C4E0F4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4E0F9: Branch loc_C4ECBC
  loc_C4E0FC: LitNothing
  loc_C4E0FE: FStAd var_10C 
  loc_C4E102: FLdRfVar var_B2
  loc_C4E105: FLdPr Me
  loc_C4E108: VCallAd Control_ID_OptTipoMovimiento
  loc_C4E10B: FStAdFunc var_B0
  loc_C4E10E: FLdPr var_B0
  loc_C4E111:  = Me.Value
  loc_C4E116: FLdI2 var_B2
  loc_C4E119: LitI2_Byte &HFF
  loc_C4E11B: EqI2
  loc_C4E11C: FFree1Ad var_B0
  loc_C4E11F: BranchF loc_C4E365
  loc_C4E122: FLdPr Me
  loc_C4E125: MemLdRfVar from_stack_1.global_92
  loc_C4E128: NewIfNullAd
  loc_C4E12B: FStAd var_110 
  loc_C4E12F: LitStr "SELECT * FROM tipomovi"
  loc_C4E132: FLdPr var_110
  loc_C4E135: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4E13A: FLdRfVar var_108
  loc_C4E13D: FLdPr var_110
  loc_C4E140: from_stack_1 = clsctacte.RecordCount
  loc_C4E145: ILdRf var_108
  loc_C4E148: LitI4 0
  loc_C4E14D: EqI4
  loc_C4E14E: BranchF loc_C4E15C
  loc_C4E151: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C4E154: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4E159: Branch loc_C4ECBC
  loc_C4E15C: LitI4 0
  loc_C4E161: LitI4 1
  loc_C4E166: FLdRfVar var_114
  loc_C4E169: Redim
  loc_C4E173: LitI4 0
  loc_C4E178: FLdRfVar var_108
  loc_C4E17B: FLdPr var_110
  loc_C4E17E: from_stack_1 = clsctacte.RecordCount
  loc_C4E183: ILdRf var_108
  loc_C4E186: FLdPr Me
  loc_C4E189: MemLdRfVar from_stack_1.global_96
  loc_C4E18C: Redim
  loc_C4E196: FLdPr var_110
  loc_C4E199: Call clsctacte.MoveFirst()
  loc_C4E19E: FLdRfVar var_108
  loc_C4E1A1: FLdPr var_110
  loc_C4E1A4: from_stack_1 = clsctacte.RecordCount
  loc_C4E1A9: ILdRf var_108
  loc_C4E1AC: CR8I4
  loc_C4E1AD: CVarR4
  loc_C4E1B1: PopAdLdVar
  loc_C4E1B2: FLdPrThis
  loc_C4E1B3: VCallAd Control_ID_Pbar
  loc_C4E1B6: FStAdFunc var_B0
  loc_C4E1B9: FLdPr var_B0
  loc_C4E1BC: LateIdSt
  loc_C4E1C1: FFree1Ad var_B0
  loc_C4E1C4: LitVar_TRUE var_9C
  loc_C4E1C7: PopAdLdVar
  loc_C4E1C8: FLdPrThis
  loc_C4E1C9: VCallAd Control_ID_Pbar
  loc_C4E1CC: FStAdFunc var_B0
  loc_C4E1CF: FLdPr var_B0
  loc_C4E1D2: LateIdSt
  loc_C4E1D7: FFree1Ad var_B0
  loc_C4E1DA: LitI4 1
  loc_C4E1DF: FLdPr Me
  loc_C4E1E2: MemLdRfVar from_stack_1.global_120
  loc_C4E1E5: FLdPr Me
  loc_C4E1E8: MemLdStr global_96
  loc_C4E1EB: LitI2_Byte 1
  loc_C4E1ED: FnUBound
  loc_C4E1EF: ForI4 var_11C
  loc_C4E1F5: FLdPr Me
  loc_C4E1F8: MemLdStr global_120
  loc_C4E1FB: CR8I4
  loc_C4E1FC: CVarR4
  loc_C4E200: PopAdLdVar
  loc_C4E201: FLdPrThis
  loc_C4E202: VCallAd Control_ID_Pbar
  loc_C4E205: FStAdFunc var_B0
  loc_C4E208: FLdPr var_B0
  loc_C4E20B: LateIdSt
  loc_C4E210: FFree1Ad var_B0
  loc_C4E213: FLdRfVar var_124
  loc_C4E216: LitVarStr var_9C, "CodiTimo"
  loc_C4E21B: PopAdLdVar
  loc_C4E21C: FLdRfVar var_120
  loc_C4E21F: FLdRfVar var_B0
  loc_C4E222: FLdPr var_110
  loc_C4E225: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E22A: FLdPr var_B0
  loc_C4E22D:  = Me.Fields
  loc_C4E232: FLdPr var_120
  loc_C4E235: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E23A: LitI2_Byte 0
  loc_C4E23C: LitVar_Missing var_D4
  loc_C4E23F: LitI2_Byte 0
  loc_C4E241: FLdZeroAd var_124
  loc_C4E244: CVarAd
  loc_C4E248: PopAdLdVar
  loc_C4E249: FLdPr Me
  loc_C4E24C: MemLdStr global_120
  loc_C4E24F: FLdPr Me
  loc_C4E252: MemLdStr global_96
  loc_C4E255: AryLock
  loc_C4E258: Ary1LdPr
  loc_C4E259: MemLdRfVar from_stack_1.global_0
  loc_C4E25C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4E261: AryUnlock
  loc_C4E264: FFreeAd var_B0 = ""
  loc_C4E26B: FFreeVar var_C4 = ""
  loc_C4E272: FLdRfVar var_124
  loc_C4E275: LitVarStr var_9C, "DetaTimo"
  loc_C4E27A: PopAdLdVar
  loc_C4E27B: FLdRfVar var_120
  loc_C4E27E: FLdRfVar var_B0
  loc_C4E281: FLdPr var_110
  loc_C4E284: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E289: FLdPr var_B0
  loc_C4E28C:  = Me.Fields
  loc_C4E291: FLdPr var_120
  loc_C4E294: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E299: LitI2_Byte 0
  loc_C4E29B: LitVar_Missing var_D4
  loc_C4E29E: LitI2_Byte 0
  loc_C4E2A0: FLdZeroAd var_124
  loc_C4E2A3: CVarAd
  loc_C4E2A7: PopAdLdVar
  loc_C4E2A8: FLdPr Me
  loc_C4E2AB: MemLdStr global_120
  loc_C4E2AE: FLdPr Me
  loc_C4E2B1: MemLdStr global_96
  loc_C4E2B4: AryLock
  loc_C4E2B7: Ary1LdPr
  loc_C4E2B8: MemLdRfVar from_stack_1.global_4
  loc_C4E2BB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4E2C0: AryUnlock
  loc_C4E2C3: FFreeAd var_B0 = ""
  loc_C4E2CA: FFreeVar var_C4 = ""
  loc_C4E2D1: FLdRfVar var_124
  loc_C4E2D4: LitVarStr var_9C, "AbreTimo"
  loc_C4E2D9: PopAdLdVar
  loc_C4E2DA: FLdRfVar var_120
  loc_C4E2DD: FLdRfVar var_B0
  loc_C4E2E0: FLdPr var_110
  loc_C4E2E3: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E2E8: FLdPr var_B0
  loc_C4E2EB:  = Me.Fields
  loc_C4E2F0: FLdPr var_120
  loc_C4E2F3: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E2F8: LitI2_Byte 0
  loc_C4E2FA: LitVar_Missing var_D4
  loc_C4E2FD: LitI2_Byte 0
  loc_C4E2FF: FLdZeroAd var_124
  loc_C4E302: CVarAd
  loc_C4E306: PopAdLdVar
  loc_C4E307: FLdPr Me
  loc_C4E30A: MemLdStr global_120
  loc_C4E30D: FLdPr Me
  loc_C4E310: MemLdStr global_96
  loc_C4E313: AryLock
  loc_C4E316: Ary1LdPr
  loc_C4E317: MemLdRfVar from_stack_1.global_8
  loc_C4E31A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4E31F: AryUnlock
  loc_C4E322: FFreeAd var_B0 = ""
  loc_C4E329: FFreeVar var_C4 = ""
  loc_C4E330: LitI2_Byte 1
  loc_C4E332: PopTmpLdAd2 var_B2
  loc_C4E335: FLdPr var_110
  loc_C4E338: Call clsctacte.Move(from_stack_1v)
  loc_C4E33D: FLdPr Me
  loc_C4E340: MemLdRfVar from_stack_1.global_120
  loc_C4E343: NextI4 var_11C, loc_C4E1F5
  loc_C4E348: LitVar_FALSE
  loc_C4E34C: PopAdLdVar
  loc_C4E34D: FLdPrThis
  loc_C4E34E: VCallAd Control_ID_Pbar
  loc_C4E351: FStAdFunc var_B0
  loc_C4E354: FLdPr var_B0
  loc_C4E357: LateIdSt
  loc_C4E35C: FFree1Ad var_B0
  loc_C4E35F: LitNothing
  loc_C4E361: FStAd var_110 
  loc_C4E365: FLdRfVar var_B2
  loc_C4E368: FLdPr Me
  loc_C4E36B: VCallAd Control_ID_OptDetalledelBoleto
  loc_C4E36E: FStAdFunc var_B0
  loc_C4E371: FLdPr var_B0
  loc_C4E374:  = Me.Value
  loc_C4E379: FLdI2 var_B2
  loc_C4E37C: LitI2_Byte &HFF
  loc_C4E37E: EqI2
  loc_C4E37F: FFree1Ad var_B0
  loc_C4E382: BranchF loc_C4E64E
  loc_C4E385: FLdPr Me
  loc_C4E388: MemLdRfVar from_stack_1.global_92
  loc_C4E38B: NewIfNullAd
  loc_C4E38E: FStAd var_12C 
  loc_C4E392: LitStr "SELECT count(db.NumeBole) NumeBole"
  loc_C4E395: LitStr " FROM detabole as db"
  loc_C4E398: ConcatStr
  loc_C4E399: FStStrNoPop var_EC
  loc_C4E39C: LitStr " INNER JOIN boleto as b ON b.PeriBole = db.PeriBole AND b.NumeBole = db.NumeBole"
  loc_C4E39F: ConcatStr
  loc_C4E3A0: FStStrNoPop var_F0
  loc_C4E3A3: LitStr " WHERE b.FealBole BETWEEN "
  loc_C4E3A6: ConcatStr
  loc_C4E3A7: FStStrNoPop var_F4
  loc_C4E3AA: ILdRf var_88
  loc_C4E3AD: ConcatStr
  loc_C4E3AE: FStStrNoPop var_F8
  loc_C4E3B1: LitStr " AND "
  loc_C4E3B4: ConcatStr
  loc_C4E3B5: FStStrNoPop var_FC
  loc_C4E3B8: ILdRf var_8C
  loc_C4E3BB: ConcatStr
  loc_C4E3BC: FStStrNoPop var_100
  loc_C4E3BF: FLdPr var_12C
  loc_C4E3C2: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4E3C7: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C4E3D6: FLdPr var_12C
  loc_C4E3D9: Call clsctacte.MoveFirst()
  loc_C4E3DE: FLdRfVar var_108
  loc_C4E3E1: FLdPr var_12C
  loc_C4E3E4: from_stack_1 = clsctacte.NumeBole
  loc_C4E3E9: ILdRf var_108
  loc_C4E3EC: LitI4 0
  loc_C4E3F1: EqI4
  loc_C4E3F2: BranchF loc_C4E41A
  loc_C4E3F5: LitI4 0
  loc_C4E3FA: LitI4 0
  loc_C4E3FF: FLdPr Me
  loc_C4E402: MemLdRfVar from_stack_1.global_104
  loc_C4E405: Redim
  loc_C4E40F: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C4E412: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4E417: Branch loc_C4ECBC
  loc_C4E41A: FLdRfVar var_108
  loc_C4E41D: FLdPr var_12C
  loc_C4E420: from_stack_1 = clsctacte.NumeBole
  loc_C4E425: ILdRf var_108
  loc_C4E428: FLdPr Me
  loc_C4E42B: MemStI4 global_132
  loc_C4E42E: LitI4 0
  loc_C4E433: FLdPr Me
  loc_C4E436: MemStI4 global_136
  loc_C4E439: LitI4 0
  loc_C4E43E: LitI4 -1
  loc_C4E443: LitI4 1
  loc_C4E448: LitStr vbNullString
  loc_C4E44B: LitStr "'"
  loc_C4E44E: ILdRf var_88
  loc_C4E451: ImpAdCallI2 Replace(, , , , , )
  loc_C4E456: FStStrNoPop var_EC
  loc_C4E459: CDateStr
  loc_C4E45B: FStFPR8 var_134
  loc_C4E45E: FFree1Str var_EC
  loc_C4E461: LitI4 0
  loc_C4E466: LitI4 -1
  loc_C4E46B: LitI4 1
  loc_C4E470: LitStr vbNullString
  loc_C4E473: LitStr "'"
  loc_C4E476: ILdRf var_8C
  loc_C4E479: ImpAdCallI2 Replace(, , , , , )
  loc_C4E47E: FStStrNoPop var_EC
  loc_C4E481: CDateStr
  loc_C4E483: FStFPR8 var_13C
  loc_C4E486: FFree1Str var_EC
  loc_C4E489: LitI4 0
  loc_C4E48E: LitI4 1
  loc_C4E493: LitI4 1
  loc_C4E498: FLdRfVar var_13C
  loc_C4E49B: CVarRef
  loc_C4E4A0: FLdRfVar var_134
  loc_C4E4A3: CVarRef
  loc_C4E4A8: LitStr "m"
  loc_C4E4AB: FLdRfVar var_C4
  loc_C4E4AE: ImpAdCallFPR4  = DateDiff(, , , , )
  loc_C4E4B3: FLdRfVar var_C4
  loc_C4E4B6: LitVarI2 var_14C, 1
  loc_C4E4BB: AddVar var_D4
  loc_C4E4BF: CI4Var
  loc_C4E4C1: FLdPr Me
  loc_C4E4C4: MemLdRfVar from_stack_1.global_104
  loc_C4E4C7: Redim
  loc_C4E4D1: FFreeVar var_C4 = ""
  loc_C4E4D8: LitI2_Byte 1
  loc_C4E4DA: FLdPr Me
  loc_C4E4DD: MemLdRfVar from_stack_1.global_140
  loc_C4E4E0: FLdPr Me
  loc_C4E4E3: MemLdStr global_104
  loc_C4E4E6: LitI2_Byte 1
  loc_C4E4E8: FnUBound
  loc_C4E4EA: CI2I4
  loc_C4E4EB: ForI2 var_150
  loc_C4E4F1: FLdPr Me
  loc_C4E4F4: MemLdI2 global_140
  loc_C4E4F7: LitI2_Byte 1
  loc_C4E4F9: EqI2
  loc_C4E4FA: BranchF loc_C4E51D
  loc_C4E4FD: FLdFPR8 var_134
  loc_C4E500: CStrDate
  loc_C4E502: FStStrNoPop var_EC
  loc_C4E505: FLdPr Me
  loc_C4E508: MemLdI2 global_140
  loc_C4E50B: CI4UI1
  loc_C4E50C: FLdPr Me
  loc_C4E50F: MemLdStr global_104
  loc_C4E512: Ary1LdPr
  loc_C4E513: MemStStrCopy
  loc_C4E517: FFree1Str var_EC
  loc_C4E51A: Branch loc_C4E56A
  loc_C4E51D: FLdPr Me
  loc_C4E520: MemLdI2 global_140
  loc_C4E523: LitI2_Byte 1
  loc_C4E525: SubI2
  loc_C4E526: CI4UI1
  loc_C4E527: FLdPr Me
  loc_C4E52A: MemLdStr global_104
  loc_C4E52D: AryLock
  loc_C4E530: Ary1LdPr
  loc_C4E531: MemLdRfVar from_stack_1.global_4
  loc_C4E534: CVarRef
  loc_C4E539: LitI2_Byte 1
  loc_C4E53B: CR8I2
  loc_C4E53C: PopFPR8
  loc_C4E53D: LitStr "d"
  loc_C4E540: FLdRfVar var_C4
  loc_C4E543: ImpAdCallFPR4  = DateAdd(, , )
  loc_C4E548: AryUnlock
  loc_C4E54B: FLdRfVar var_C4
  loc_C4E54E: CStrVarTmp
  loc_C4E54F: FStStrNoPop var_EC
  loc_C4E552: FLdPr Me
  loc_C4E555: MemLdI2 global_140
  loc_C4E558: CI4UI1
  loc_C4E559: FLdPr Me
  loc_C4E55C: MemLdStr global_104
  loc_C4E55F: Ary1LdPr
  loc_C4E560: MemStStrCopy
  loc_C4E564: FFree1Str var_EC
  loc_C4E567: FFree1Var var_C4 = ""
  loc_C4E56A: FLdPr Me
  loc_C4E56D: MemLdI2 global_140
  loc_C4E570: CI4UI1
  loc_C4E571: FLdPr Me
  loc_C4E574: MemLdStr global_104
  loc_C4E577: LitI2_Byte 1
  loc_C4E579: FnUBound
  loc_C4E57B: EqI4
  loc_C4E57C: BranchF loc_C4E59F
  loc_C4E57F: FLdFPR8 var_13C
  loc_C4E582: CStrDate
  loc_C4E584: FStStrNoPop var_EC
  loc_C4E587: FLdPr Me
  loc_C4E58A: MemLdI2 global_140
  loc_C4E58D: CI4UI1
  loc_C4E58E: FLdPr Me
  loc_C4E591: MemLdStr global_104
  loc_C4E594: Ary1LdPr
  loc_C4E595: MemStStrCopy
  loc_C4E599: FFree1Str var_EC
  loc_C4E59C: Branch loc_C4E63D
  loc_C4E59F: FLdPr Me
  loc_C4E5A2: MemLdI2 global_140
  loc_C4E5A5: CI4UI1
  loc_C4E5A6: FLdPr Me
  loc_C4E5A9: MemLdStr global_104
  loc_C4E5AC: AryLock
  loc_C4E5AF: Ary1LdPr
  loc_C4E5B0: MemLdRfVar from_stack_1.global_0
  loc_C4E5B3: CVarRef
  loc_C4E5B8: FLdRfVar var_C4
  loc_C4E5BB: ImpAdCallFPR4  = Year()
  loc_C4E5C0: AryUnlock
  loc_C4E5C3: FLdPr Me
  loc_C4E5C6: MemLdI2 global_140
  loc_C4E5C9: CI4UI1
  loc_C4E5CA: FLdPr Me
  loc_C4E5CD: MemLdStr global_104
  loc_C4E5D0: AryLock
  loc_C4E5D3: Ary1LdPr
  loc_C4E5D4: MemLdRfVar from_stack_1.global_0
  loc_C4E5D7: CVarRef
  loc_C4E5DC: FLdRfVar var_D4
  loc_C4E5DF: ImpAdCallFPR4  = Month()
  loc_C4E5E4: AryUnlock
  loc_C4E5E7: LitI2_Byte 1
  loc_C4E5E9: FLdRfVar var_D4
  loc_C4E5EC: LitVarI2 var_14C, 1
  loc_C4E5F1: AddVar var_E4
  loc_C4E5F5: CI2Var
  loc_C4E5F6: FLdRfVar var_C4
  loc_C4E5F9: CI2Var
  loc_C4E5FA: FLdRfVar var_164
  loc_C4E5FD: ImpAdCallFPR4  = DateSerial(, , )
  loc_C4E602: FLdRfVar var_164
  loc_C4E605: LitI2_Byte &HFF
  loc_C4E607: CR8I2
  loc_C4E608: PopFPR8
  loc_C4E609: LitStr "d"
  loc_C4E60C: FLdRfVar var_174
  loc_C4E60F: ImpAdCallFPR4  = DateAdd(, , )
  loc_C4E614: FLdRfVar var_174
  loc_C4E617: CStrVarTmp
  loc_C4E618: FStStrNoPop var_EC
  loc_C4E61B: FLdPr Me
  loc_C4E61E: MemLdI2 global_140
  loc_C4E621: CI4UI1
  loc_C4E622: FLdPr Me
  loc_C4E625: MemLdStr global_104
  loc_C4E628: Ary1LdPr
  loc_C4E629: MemStStrCopy
  loc_C4E62D: FFree1Str var_EC
  loc_C4E630: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_164 = ""
  loc_C4E63D: FLdPr Me
  loc_C4E640: MemLdRfVar from_stack_1.global_140
  loc_C4E643: NextI2 var_150, loc_C4E4F1
  loc_C4E648: LitNothing
  loc_C4E64A: FStAd var_12C 
  loc_C4E64E: FLdRfVar var_B2
  loc_C4E651: FLdPr Me
  loc_C4E654: VCallAd Control_ID_OptFacilidad
  loc_C4E657: FStAdFunc var_B0
  loc_C4E65A: FLdPr var_B0
  loc_C4E65D:  = Me.Value
  loc_C4E662: FLdI2 var_B2
  loc_C4E665: LitI2_Byte &HFF
  loc_C4E667: EqI2
  loc_C4E668: FFree1Ad var_B0
  loc_C4E66B: BranchF loc_C4EC38
  loc_C4E66E: FLdPr Me
  loc_C4E671: MemLdRfVar from_stack_1.global_92
  loc_C4E674: NewIfNullAd
  loc_C4E677: FStAd var_178 
  loc_C4E67B: LitStr "SELECT * FROM detafapa"
  loc_C4E67E: LitStr " INNER JOIN facipago ON facipago.CodiFapa = detafapa.CodiFapa"
  loc_C4E681: ConcatStr
  loc_C4E682: FStStrNoPop var_EC
  loc_C4E685: LitStr " WHERE facipago.FealFapa BETWEEN "
  loc_C4E688: ConcatStr
  loc_C4E689: FStStrNoPop var_F0
  loc_C4E68C: ILdRf var_88
  loc_C4E68F: ConcatStr
  loc_C4E690: FStStrNoPop var_F4
  loc_C4E693: LitStr " AND "
  loc_C4E696: ConcatStr
  loc_C4E697: FStStrNoPop var_F8
  loc_C4E69A: ILdRf var_8C
  loc_C4E69D: ConcatStr
  loc_C4E69E: FStStrNoPop var_FC
  loc_C4E6A1: FLdPr var_178
  loc_C4E6A4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4E6A9: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C4E6B6: FLdRfVar var_108
  loc_C4E6B9: FLdPr var_178
  loc_C4E6BC: from_stack_1 = clsctacte.RecordCount
  loc_C4E6C1: ILdRf var_108
  loc_C4E6C4: LitI4 0
  loc_C4E6C9: EqI4
  loc_C4E6CA: BranchF loc_C4E6D8
  loc_C4E6CD: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C4E6D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4E6D5: Branch loc_C4ECBC
  loc_C4E6D8: LitI4 0
  loc_C4E6DD: LitI4 1
  loc_C4E6E2: FLdRfVar var_114
  loc_C4E6E5: Redim
  loc_C4E6EF: LitI4 0
  loc_C4E6F4: FLdRfVar var_108
  loc_C4E6F7: FLdPr var_178
  loc_C4E6FA: from_stack_1 = clsctacte.RecordCount
  loc_C4E6FF: ILdRf var_108
  loc_C4E702: FLdPr Me
  loc_C4E705: MemLdRfVar from_stack_1.global_108
  loc_C4E708: Redim
  loc_C4E712: FLdPr var_178
  loc_C4E715: Call clsctacte.MoveFirst()
  loc_C4E71A: FLdRfVar var_108
  loc_C4E71D: FLdPr var_178
  loc_C4E720: from_stack_1 = clsctacte.RecordCount
  loc_C4E725: ILdRf var_108
  loc_C4E728: CR8I4
  loc_C4E729: CVarR4
  loc_C4E72D: PopAdLdVar
  loc_C4E72E: FLdPrThis
  loc_C4E72F: VCallAd Control_ID_Pbar
  loc_C4E732: FStAdFunc var_B0
  loc_C4E735: FLdPr var_B0
  loc_C4E738: LateIdSt
  loc_C4E73D: FFree1Ad var_B0
  loc_C4E740: LitVar_TRUE var_9C
  loc_C4E743: PopAdLdVar
  loc_C4E744: FLdPrThis
  loc_C4E745: VCallAd Control_ID_Pbar
  loc_C4E748: FStAdFunc var_B0
  loc_C4E74B: FLdPr var_B0
  loc_C4E74E: LateIdSt
  loc_C4E753: FFree1Ad var_B0
  loc_C4E756: LitI4 1
  loc_C4E75B: FLdPr Me
  loc_C4E75E: MemLdRfVar from_stack_1.global_144
  loc_C4E761: FLdPr Me
  loc_C4E764: MemLdStr global_108
  loc_C4E767: LitI2_Byte 1
  loc_C4E769: FnUBound
  loc_C4E76B: ForI4 var_180
  loc_C4E771: FLdPr Me
  loc_C4E774: MemLdStr global_144
  loc_C4E777: CR8I4
  loc_C4E778: CVarR4
  loc_C4E77C: PopAdLdVar
  loc_C4E77D: FLdPrThis
  loc_C4E77E: VCallAd Control_ID_Pbar
  loc_C4E781: FStAdFunc var_B0
  loc_C4E784: FLdPr var_B0
  loc_C4E787: LateIdSt
  loc_C4E78C: FFree1Ad var_B0
  loc_C4E78F: FLdRfVar var_124
  loc_C4E792: LitVarStr var_9C, "CodiFapa"
  loc_C4E797: PopAdLdVar
  loc_C4E798: FLdRfVar var_120
  loc_C4E79B: FLdRfVar var_B0
  loc_C4E79E: FLdPr var_178
  loc_C4E7A1: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E7A6: FLdPr var_B0
  loc_C4E7A9:  = Me.Fields
  loc_C4E7AE: FLdPr var_120
  loc_C4E7B1: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E7B6: LitI2_Byte 0
  loc_C4E7B8: LitVar_Missing var_D4
  loc_C4E7BB: LitI2_Byte 0
  loc_C4E7BD: FLdZeroAd var_124
  loc_C4E7C0: CVarAd
  loc_C4E7C4: PopAdLdVar
  loc_C4E7C5: FLdPr Me
  loc_C4E7C8: MemLdStr global_144
  loc_C4E7CB: FLdPr Me
  loc_C4E7CE: MemLdStr global_108
  loc_C4E7D1: AryLock
  loc_C4E7D4: Ary1LdPr
  loc_C4E7D5: MemLdRfVar from_stack_1.global_0
  loc_C4E7D8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4E7DD: AryUnlock
  loc_C4E7E0: FFreeAd var_B0 = ""
  loc_C4E7E7: FFreeVar var_C4 = ""
  loc_C4E7EE: FLdRfVar var_124
  loc_C4E7F1: LitVarStr var_9C, "CuotDefa"
  loc_C4E7F6: PopAdLdVar
  loc_C4E7F7: FLdRfVar var_120
  loc_C4E7FA: FLdRfVar var_B0
  loc_C4E7FD: FLdPr var_178
  loc_C4E800: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E805: FLdPr var_B0
  loc_C4E808:  = Me.Fields
  loc_C4E80D: FLdPr var_120
  loc_C4E810: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E815: LitI2_Byte 0
  loc_C4E817: LitVar_Missing var_D4
  loc_C4E81A: LitI2_Byte 0
  loc_C4E81C: FLdZeroAd var_124
  loc_C4E81F: CVarAd
  loc_C4E823: PopAdLdVar
  loc_C4E824: FLdPr Me
  loc_C4E827: MemLdStr global_144
  loc_C4E82A: FLdPr Me
  loc_C4E82D: MemLdStr global_108
  loc_C4E830: AryLock
  loc_C4E833: Ary1LdPr
  loc_C4E834: MemLdRfVar from_stack_1.global_4
  loc_C4E837: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4E83C: AryUnlock
  loc_C4E83F: FFreeAd var_B0 = ""
  loc_C4E846: FFreeVar var_C4 = ""
  loc_C4E84D: FLdRfVar var_124
  loc_C4E850: LitVarStr var_9C, "EstaDefa"
  loc_C4E855: PopAdLdVar
  loc_C4E856: FLdRfVar var_120
  loc_C4E859: FLdRfVar var_B0
  loc_C4E85C: FLdPr var_178
  loc_C4E85F: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E864: FLdPr var_B0
  loc_C4E867:  = Me.Fields
  loc_C4E86C: FLdPr var_120
  loc_C4E86F: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E874: LitI2_Byte 0
  loc_C4E876: LitVar_Missing var_D4
  loc_C4E879: LitI2_Byte 0
  loc_C4E87B: FLdZeroAd var_124
  loc_C4E87E: CVarAd
  loc_C4E882: PopAdLdVar
  loc_C4E883: FLdPr Me
  loc_C4E886: MemLdStr global_144
  loc_C4E889: FLdPr Me
  loc_C4E88C: MemLdStr global_108
  loc_C4E88F: AryLock
  loc_C4E892: Ary1LdPr
  loc_C4E893: MemLdRfVar from_stack_1.global_8
  loc_C4E896: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4E89B: AryUnlock
  loc_C4E89E: FFreeAd var_B0 = ""
  loc_C4E8A5: FFreeVar var_C4 = ""
  loc_C4E8AC: FLdRfVar var_124
  loc_C4E8AF: LitVarStr var_9C, "FeveDefa"
  loc_C4E8B4: PopAdLdVar
  loc_C4E8B5: FLdRfVar var_120
  loc_C4E8B8: FLdRfVar var_B0
  loc_C4E8BB: FLdPr var_178
  loc_C4E8BE: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E8C3: FLdPr var_B0
  loc_C4E8C6:  = Me.Fields
  loc_C4E8CB: FLdPr var_120
  loc_C4E8CE: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E8D3: LitI2_Byte 0
  loc_C4E8D5: LitVar_Missing var_D4
  loc_C4E8D8: LitI2_Byte 0
  loc_C4E8DA: FLdZeroAd var_124
  loc_C4E8DD: CVarAd
  loc_C4E8E1: PopAdLdVar
  loc_C4E8E2: FLdPr Me
  loc_C4E8E5: MemLdStr global_144
  loc_C4E8E8: FLdPr Me
  loc_C4E8EB: MemLdStr global_108
  loc_C4E8EE: AryLock
  loc_C4E8F1: Ary1LdPr
  loc_C4E8F2: MemLdRfVar from_stack_1.global_12
  loc_C4E8F5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4E8FA: AryUnlock
  loc_C4E8FD: FFreeAd var_B0 = ""
  loc_C4E904: FFreeVar var_C4 = ""
  loc_C4E90B: FLdRfVar var_124
  loc_C4E90E: LitVarStr var_9C, "FepaDefa"
  loc_C4E913: PopAdLdVar
  loc_C4E914: FLdRfVar var_120
  loc_C4E917: FLdRfVar var_B0
  loc_C4E91A: FLdPr var_178
  loc_C4E91D: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E922: FLdPr var_B0
  loc_C4E925:  = Me.Fields
  loc_C4E92A: FLdPr var_120
  loc_C4E92D: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E932: LitI2_Byte 0
  loc_C4E934: LitVar_Missing var_D4
  loc_C4E937: LitI2_Byte 0
  loc_C4E939: FLdZeroAd var_124
  loc_C4E93C: CVarAd
  loc_C4E940: PopAdLdVar
  loc_C4E941: FLdPr Me
  loc_C4E944: MemLdStr global_144
  loc_C4E947: FLdPr Me
  loc_C4E94A: MemLdStr global_108
  loc_C4E94D: AryLock
  loc_C4E950: Ary1LdPr
  loc_C4E951: MemLdRfVar from_stack_1.global_16
  loc_C4E954: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4E959: AryUnlock
  loc_C4E95C: FFreeAd var_B0 = ""
  loc_C4E963: FFreeVar var_C4 = ""
  loc_C4E96A: FLdRfVar var_124
  loc_C4E96D: LitVarStr var_9C, "CapiDefa"
  loc_C4E972: PopAdLdVar
  loc_C4E973: FLdRfVar var_120
  loc_C4E976: FLdRfVar var_B0
  loc_C4E979: FLdPr var_178
  loc_C4E97C: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E981: FLdPr var_B0
  loc_C4E984:  = Me.Fields
  loc_C4E989: FLdPr var_120
  loc_C4E98C: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E991: LitI2_Byte 0
  loc_C4E993: LitVar_Missing var_D4
  loc_C4E996: LitI2_Byte 0
  loc_C4E998: FLdZeroAd var_124
  loc_C4E99B: CVarAd
  loc_C4E99F: PopAdLdVar
  loc_C4E9A0: FLdPr Me
  loc_C4E9A3: MemLdStr global_144
  loc_C4E9A6: FLdPr Me
  loc_C4E9A9: MemLdStr global_108
  loc_C4E9AC: AryLock
  loc_C4E9AF: Ary1LdPr
  loc_C4E9B0: MemLdRfVar from_stack_1.global_20
  loc_C4E9B3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4E9B8: AryUnlock
  loc_C4E9BB: FFreeAd var_B0 = ""
  loc_C4E9C2: FFreeVar var_C4 = ""
  loc_C4E9C9: FLdRfVar var_124
  loc_C4E9CC: LitVarStr var_9C, "DecaDefa"
  loc_C4E9D1: PopAdLdVar
  loc_C4E9D2: FLdRfVar var_120
  loc_C4E9D5: FLdRfVar var_B0
  loc_C4E9D8: FLdPr var_178
  loc_C4E9DB: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4E9E0: FLdPr var_B0
  loc_C4E9E3:  = Me.Fields
  loc_C4E9E8: FLdPr var_120
  loc_C4E9EB: from_stack_2 = Me.Item(from_stack_1)
  loc_C4E9F0: LitI2_Byte 0
  loc_C4E9F2: LitVar_Missing var_D4
  loc_C4E9F5: LitI2_Byte 0
  loc_C4E9F7: FLdZeroAd var_124
  loc_C4E9FA: CVarAd
  loc_C4E9FE: PopAdLdVar
  loc_C4E9FF: FLdPr Me
  loc_C4EA02: MemLdStr global_144
  loc_C4EA05: FLdPr Me
  loc_C4EA08: MemLdStr global_108
  loc_C4EA0B: AryLock
  loc_C4EA0E: Ary1LdPr
  loc_C4EA0F: MemLdRfVar from_stack_1.global_24
  loc_C4EA12: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4EA17: AryUnlock
  loc_C4EA1A: FFreeAd var_B0 = ""
  loc_C4EA21: FFreeVar var_C4 = ""
  loc_C4EA28: FLdRfVar var_124
  loc_C4EA2B: LitVarStr var_9C, "RecaDefa"
  loc_C4EA30: PopAdLdVar
  loc_C4EA31: FLdRfVar var_120
  loc_C4EA34: FLdRfVar var_B0
  loc_C4EA37: FLdPr var_178
  loc_C4EA3A: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4EA3F: FLdPr var_B0
  loc_C4EA42:  = Me.Fields
  loc_C4EA47: FLdPr var_120
  loc_C4EA4A: from_stack_2 = Me.Item(from_stack_1)
  loc_C4EA4F: LitI2_Byte 0
  loc_C4EA51: LitVar_Missing var_D4
  loc_C4EA54: LitI2_Byte 0
  loc_C4EA56: FLdZeroAd var_124
  loc_C4EA59: CVarAd
  loc_C4EA5D: PopAdLdVar
  loc_C4EA5E: FLdPr Me
  loc_C4EA61: MemLdStr global_144
  loc_C4EA64: FLdPr Me
  loc_C4EA67: MemLdStr global_108
  loc_C4EA6A: AryLock
  loc_C4EA6D: Ary1LdPr
  loc_C4EA6E: MemLdRfVar from_stack_1.global_28
  loc_C4EA71: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4EA76: AryUnlock
  loc_C4EA79: FFreeAd var_B0 = ""
  loc_C4EA80: FFreeVar var_C4 = ""
  loc_C4EA87: FLdRfVar var_124
  loc_C4EA8A: LitVarStr var_9C, "DereDefa"
  loc_C4EA8F: PopAdLdVar
  loc_C4EA90: FLdRfVar var_120
  loc_C4EA93: FLdRfVar var_B0
  loc_C4EA96: FLdPr var_178
  loc_C4EA99: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4EA9E: FLdPr var_B0
  loc_C4EAA1:  = Me.Fields
  loc_C4EAA6: FLdPr var_120
  loc_C4EAA9: from_stack_2 = Me.Item(from_stack_1)
  loc_C4EAAE: LitI2_Byte 0
  loc_C4EAB0: LitVar_Missing var_D4
  loc_C4EAB3: LitI2_Byte 0
  loc_C4EAB5: FLdZeroAd var_124
  loc_C4EAB8: CVarAd
  loc_C4EABC: PopAdLdVar
  loc_C4EABD: FLdPr Me
  loc_C4EAC0: MemLdStr global_144
  loc_C4EAC3: FLdPr Me
  loc_C4EAC6: MemLdStr global_108
  loc_C4EAC9: AryLock
  loc_C4EACC: Ary1LdPr
  loc_C4EACD: MemLdRfVar from_stack_1.global_32
  loc_C4EAD0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4EAD5: AryUnlock
  loc_C4EAD8: FFreeAd var_B0 = ""
  loc_C4EADF: FFreeVar var_C4 = ""
  loc_C4EAE6: FLdRfVar var_124
  loc_C4EAE9: LitVarStr var_9C, "ApreDefa"
  loc_C4EAEE: PopAdLdVar
  loc_C4EAEF: FLdRfVar var_120
  loc_C4EAF2: FLdRfVar var_B0
  loc_C4EAF5: FLdPr var_178
  loc_C4EAF8: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4EAFD: FLdPr var_B0
  loc_C4EB00:  = Me.Fields
  loc_C4EB05: FLdPr var_120
  loc_C4EB08: from_stack_2 = Me.Item(from_stack_1)
  loc_C4EB0D: LitI2_Byte 0
  loc_C4EB0F: LitVar_Missing var_D4
  loc_C4EB12: LitI2_Byte 0
  loc_C4EB14: FLdZeroAd var_124
  loc_C4EB17: CVarAd
  loc_C4EB1B: PopAdLdVar
  loc_C4EB1C: FLdPr Me
  loc_C4EB1F: MemLdStr global_144
  loc_C4EB22: FLdPr Me
  loc_C4EB25: MemLdStr global_108
  loc_C4EB28: AryLock
  loc_C4EB2B: Ary1LdPr
  loc_C4EB2C: MemLdRfVar from_stack_1.global_36
  loc_C4EB2F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4EB34: AryUnlock
  loc_C4EB37: FFreeAd var_B0 = ""
  loc_C4EB3E: FFreeVar var_C4 = ""
  loc_C4EB45: FLdRfVar var_124
  loc_C4EB48: LitVarStr var_9C, "InteDefa"
  loc_C4EB4D: PopAdLdVar
  loc_C4EB4E: FLdRfVar var_120
  loc_C4EB51: FLdRfVar var_B0
  loc_C4EB54: FLdPr var_178
  loc_C4EB57: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4EB5C: FLdPr var_B0
  loc_C4EB5F:  = Me.Fields
  loc_C4EB64: FLdPr var_120
  loc_C4EB67: from_stack_2 = Me.Item(from_stack_1)
  loc_C4EB6C: LitI2_Byte 0
  loc_C4EB6E: LitVar_Missing var_D4
  loc_C4EB71: LitI2_Byte 0
  loc_C4EB73: FLdZeroAd var_124
  loc_C4EB76: CVarAd
  loc_C4EB7A: PopAdLdVar
  loc_C4EB7B: FLdPr Me
  loc_C4EB7E: MemLdStr global_144
  loc_C4EB81: FLdPr Me
  loc_C4EB84: MemLdStr global_108
  loc_C4EB87: AryLock
  loc_C4EB8A: Ary1LdPr
  loc_C4EB8B: MemLdRfVar from_stack_1.global_40
  loc_C4EB8E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4EB93: AryUnlock
  loc_C4EB96: FFreeAd var_B0 = ""
  loc_C4EB9D: FFreeVar var_C4 = ""
  loc_C4EBA4: FLdRfVar var_124
  loc_C4EBA7: LitVarStr var_9C, "TotaDefa"
  loc_C4EBAC: PopAdLdVar
  loc_C4EBAD: FLdRfVar var_120
  loc_C4EBB0: FLdRfVar var_B0
  loc_C4EBB3: FLdPr var_178
  loc_C4EBB6: from_stack_1v = clsctacte.RsFrmGet()
  loc_C4EBBB: FLdPr var_B0
  loc_C4EBBE:  = Me.Fields
  loc_C4EBC3: FLdPr var_120
  loc_C4EBC6: from_stack_2 = Me.Item(from_stack_1)
  loc_C4EBCB: LitI2_Byte 0
  loc_C4EBCD: LitVar_Missing var_D4
  loc_C4EBD0: LitI2_Byte 0
  loc_C4EBD2: FLdZeroAd var_124
  loc_C4EBD5: CVarAd
  loc_C4EBD9: PopAdLdVar
  loc_C4EBDA: FLdPr Me
  loc_C4EBDD: MemLdStr global_144
  loc_C4EBE0: FLdPr Me
  loc_C4EBE3: MemLdStr global_108
  loc_C4EBE6: AryLock
  loc_C4EBE9: Ary1LdPr
  loc_C4EBEA: MemLdRfVar from_stack_1.global_44
  loc_C4EBED: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4EBF2: AryUnlock
  loc_C4EBF5: FFreeAd var_B0 = ""
  loc_C4EBFC: FFreeVar var_C4 = ""
  loc_C4EC03: LitI2_Byte 1
  loc_C4EC05: PopTmpLdAd2 var_B2
  loc_C4EC08: FLdPr var_178
  loc_C4EC0B: Call clsctacte.Move(from_stack_1v)
  loc_C4EC10: FLdPr Me
  loc_C4EC13: MemLdRfVar from_stack_1.global_144
  loc_C4EC16: NextI4 var_180, loc_C4E771
  loc_C4EC1B: LitVar_FALSE
  loc_C4EC1F: PopAdLdVar
  loc_C4EC20: FLdPrThis
  loc_C4EC21: VCallAd Control_ID_Pbar
  loc_C4EC24: FStAdFunc var_B0
  loc_C4EC27: FLdPr var_B0
  loc_C4EC2A: LateIdSt
  loc_C4EC2F: FFree1Ad var_B0
  loc_C4EC32: LitNothing
  loc_C4EC34: FStAd var_178 
  loc_C4EC38: FLdRfVar var_B2
  loc_C4EC3B: FLdPr Me
  loc_C4EC3E: VCallAd Control_ID_optConcepto
  loc_C4EC41: FStAdFunc var_B0
  loc_C4EC44: FLdPr var_B0
  loc_C4EC47:  = Me.Value
  loc_C4EC4C: FLdI2 var_B2
  loc_C4EC4F: LitI2_Byte &HFF
  loc_C4EC51: EqI2
  loc_C4EC52: FFree1Ad var_B0
  loc_C4EC55: BranchF loc_C4ECB4
  loc_C4EC58: FLdPr Me
  loc_C4EC5B: MemLdRfVar from_stack_1.global_92
  loc_C4EC5E: NewIfNullAd
  loc_C4EC61: FStAd var_184 
  loc_C4EC65: LitStr "SELECT PeriInfo, CodiConc, DetaConc, AforConc, IngrConc, ActiConc FROM concepto"
  loc_C4EC68: LitStr " WHERE PeriInfo = "
  loc_C4EC6B: ConcatStr
  loc_C4EC6C: FStStrNoPop var_EC
  loc_C4EC6F: ImpAdLdI2 MemVar_D93034
  loc_C4EC72: CStrUI1
  loc_C4EC74: FStStrNoPop var_F0
  loc_C4EC77: ConcatStr
  loc_C4EC78: FStStrNoPop var_F4
  loc_C4EC7B: FLdPr var_184
  loc_C4EC7E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4EC83: FFreeStr var_EC = "": var_F0 = ""
  loc_C4EC8C: FLdRfVar var_108
  loc_C4EC8F: FLdPr var_184
  loc_C4EC92: from_stack_1 = clsctacte.RecordCount
  loc_C4EC97: ILdRf var_108
  loc_C4EC9A: LitI4 0
  loc_C4EC9F: EqI4
  loc_C4ECA0: BranchF loc_C4ECAE
  loc_C4ECA3: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C4ECA6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4ECAB: Branch loc_C4ECBC
  loc_C4ECAE: LitNothing
  loc_C4ECB0: FStAd var_184 
  loc_C4ECB4: LitI2_Byte &HFF
  loc_C4ECB6: FLdPr Me
  loc_C4ECB9: MemStI2 bGenerado
  loc_C4ECBC: LitI4 0
  loc_C4ECC1: CI2I4
  loc_C4ECC2: FLdPr Me
  loc_C4ECC5: Me.MousePointer = from_stack_1
  loc_C4ECCA: LitVarStr var_9C, vbNullString
  loc_C4ECCF: PopAdLdVar
  loc_C4ECD0: FLdPr Me
  loc_C4ECD3: VCallAd Control_ID_statusBar
  loc_C4ECD6: FStAdFunc var_B0
  loc_C4ECD9: FLdPr var_B0
  loc_C4ECDC: LateIdSt
  loc_C4ECE1: FFree1Ad var_B0
  loc_C4ECE4: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'CD3CA0
  'Data Table: 4C8B34
  loc_CD1650: FLdRfVar var_8E
  loc_CD1653: FLdPr Me
  loc_CD1656: VCallAd Control_ID_OptCtaCte
  loc_CD1659: FStAdFunc var_8C
  loc_CD165C: FLdPr var_8C
  loc_CD165F:  = Me.Value
  loc_CD1664: FLdI2 var_8E
  loc_CD1667: LitI2_Byte &HFF
  loc_CD1669: EqI2
  loc_CD166A: FFree1Ad var_8C
  loc_CD166D: BranchF loc_CD1708
  loc_CD1670: ImpAdCallI2 Proc_272_19_A53E30()
  loc_CD1675: FStStrNoPop var_94
  loc_CD1678: LitStr "\Acuerdo 5662\"
  loc_CD167B: ConcatStr
  loc_CD167C: CVarStr var_D4
  loc_CD167F: FLdPr Me
  loc_CD1682: VCallAd Control_ID_DesdeMsk
  loc_CD1685: FStAdFunc var_8C
  loc_CD1688: FLdPr var_8C
  loc_CD168B: LateIdLdVar var_A4 DispID_15 0
  loc_CD1692: CStrVarTmp
  loc_CD1693: CVarStr var_B4
  loc_CD1696: FLdRfVar var_C4
  loc_CD1699: ImpAdCallFPR4  = Year()
  loc_CD169E: FLdRfVar var_C4
  loc_CD16A1: ConcatVar var_E4
  loc_CD16A5: LitVarStr var_F4, "\Mes "
  loc_CD16AA: ConcatVar var_104
  loc_CD16AE: FLdPr Me
  loc_CD16B1: VCallAd Control_ID_DesdeMsk
  loc_CD16B4: FStAdFunc var_108
  loc_CD16B7: FLdPr var_108
  loc_CD16BA: LateIdLdVar var_118 DispID_15 0
  loc_CD16C1: CStrVarTmp
  loc_CD16C2: CVarStr var_128
  loc_CD16C5: FLdRfVar var_138
  loc_CD16C8: ImpAdCallFPR4  = Month()
  loc_CD16CD: FLdRfVar var_138
  loc_CD16D0: ConcatVar var_148
  loc_CD16D4: LitVarStr var_158, "\ctacte.txt"
  loc_CD16D9: ConcatVar var_168
  loc_CD16DD: CStrVarTmp
  loc_CD16DE: ImpAdStStr MemVar_D93030
  loc_CD16E2: FFree1Str var_94
  loc_CD16E5: FFreeAd var_8C = ""
  loc_CD16EC: FFreeVar var_A4 = "": var_B4 = "": var_D4 = "": var_C4 = "": var_E4 = "": var_118 = "": var_128 = "": var_104 = "": var_138 = "": var_148 = ""
  loc_CD1705: Branch loc_CD1A81
  loc_CD1708: FLdRfVar var_8E
  loc_CD170B: FLdPr Me
  loc_CD170E: VCallAd Control_ID_OptTipoMovimiento
  loc_CD1711: FStAdFunc var_8C
  loc_CD1714: FLdPr var_8C
  loc_CD1717:  = Me.Value
  loc_CD171C: FLdI2 var_8E
  loc_CD171F: LitI2_Byte &HFF
  loc_CD1721: EqI2
  loc_CD1722: FFree1Ad var_8C
  loc_CD1725: BranchF loc_CD17C0
  loc_CD1728: ImpAdCallI2 Proc_272_19_A53E30()
  loc_CD172D: FStStrNoPop var_94
  loc_CD1730: LitStr "\Acuerdo 5662\"
  loc_CD1733: ConcatStr
  loc_CD1734: CVarStr var_D4
  loc_CD1737: FLdPr Me
  loc_CD173A: VCallAd Control_ID_DesdeMsk
  loc_CD173D: FStAdFunc var_8C
  loc_CD1740: FLdPr var_8C
  loc_CD1743: LateIdLdVar var_A4 DispID_15 0
  loc_CD174A: CStrVarTmp
  loc_CD174B: CVarStr var_B4
  loc_CD174E: FLdRfVar var_C4
  loc_CD1751: ImpAdCallFPR4  = Year()
  loc_CD1756: FLdRfVar var_C4
  loc_CD1759: ConcatVar var_E4
  loc_CD175D: LitVarStr var_F4, "\Mes "
  loc_CD1762: ConcatVar var_104
  loc_CD1766: FLdPr Me
  loc_CD1769: VCallAd Control_ID_DesdeMsk
  loc_CD176C: FStAdFunc var_108
  loc_CD176F: FLdPr var_108
  loc_CD1772: LateIdLdVar var_118 DispID_15 0
  loc_CD1779: CStrVarTmp
  loc_CD177A: CVarStr var_128
  loc_CD177D: FLdRfVar var_138
  loc_CD1780: ImpAdCallFPR4  = Month()
  loc_CD1785: FLdRfVar var_138
  loc_CD1788: ConcatVar var_148
  loc_CD178C: LitVarStr var_158, "\tipodemovimiento.txt"
  loc_CD1791: ConcatVar var_168
  loc_CD1795: CStrVarTmp
  loc_CD1796: ImpAdStStr MemVar_D93030
  loc_CD179A: FFree1Str var_94
  loc_CD179D: FFreeAd var_8C = ""
  loc_CD17A4: FFreeVar var_A4 = "": var_B4 = "": var_D4 = "": var_C4 = "": var_E4 = "": var_118 = "": var_128 = "": var_104 = "": var_138 = "": var_148 = ""
  loc_CD17BD: Branch loc_CD1A81
  loc_CD17C0: FLdRfVar var_8E
  loc_CD17C3: FLdPr Me
  loc_CD17C6: VCallAd Control_ID_OptBoleto
  loc_CD17C9: FStAdFunc var_8C
  loc_CD17CC: FLdPr var_8C
  loc_CD17CF:  = Me.Value
  loc_CD17D4: FLdI2 var_8E
  loc_CD17D7: LitI2_Byte &HFF
  loc_CD17D9: EqI2
  loc_CD17DA: FFree1Ad var_8C
  loc_CD17DD: BranchF loc_CD1878
  loc_CD17E0: ImpAdCallI2 Proc_272_19_A53E30()
  loc_CD17E5: FStStrNoPop var_94
  loc_CD17E8: LitStr "\Acuerdo 5662\"
  loc_CD17EB: ConcatStr
  loc_CD17EC: CVarStr var_D4
  loc_CD17EF: FLdPr Me
  loc_CD17F2: VCallAd Control_ID_DesdeMsk
  loc_CD17F5: FStAdFunc var_8C
  loc_CD17F8: FLdPr var_8C
  loc_CD17FB: LateIdLdVar var_A4 DispID_15 0
  loc_CD1802: CStrVarTmp
  loc_CD1803: CVarStr var_B4
  loc_CD1806: FLdRfVar var_C4
  loc_CD1809: ImpAdCallFPR4  = Year()
  loc_CD180E: FLdRfVar var_C4
  loc_CD1811: ConcatVar var_E4
  loc_CD1815: LitVarStr var_F4, "\Mes "
  loc_CD181A: ConcatVar var_104
  loc_CD181E: FLdPr Me
  loc_CD1821: VCallAd Control_ID_DesdeMsk
  loc_CD1824: FStAdFunc var_108
  loc_CD1827: FLdPr var_108
  loc_CD182A: LateIdLdVar var_118 DispID_15 0
  loc_CD1831: CStrVarTmp
  loc_CD1832: CVarStr var_128
  loc_CD1835: FLdRfVar var_138
  loc_CD1838: ImpAdCallFPR4  = Month()
  loc_CD183D: FLdRfVar var_138
  loc_CD1840: ConcatVar var_148
  loc_CD1844: LitVarStr var_158, "\boleto.txt"
  loc_CD1849: ConcatVar var_168
  loc_CD184D: CStrVarTmp
  loc_CD184E: ImpAdStStr MemVar_D93030
  loc_CD1852: FFree1Str var_94
  loc_CD1855: FFreeAd var_8C = ""
  loc_CD185C: FFreeVar var_A4 = "": var_B4 = "": var_D4 = "": var_C4 = "": var_E4 = "": var_118 = "": var_128 = "": var_104 = "": var_138 = "": var_148 = ""
  loc_CD1875: Branch loc_CD1A81
  loc_CD1878: FLdRfVar var_8E
  loc_CD187B: FLdPr Me
  loc_CD187E: VCallAd Control_ID_OptDetalledelBoleto
  loc_CD1881: FStAdFunc var_8C
  loc_CD1884: FLdPr var_8C
  loc_CD1887:  = Me.Value
  loc_CD188C: FLdI2 var_8E
  loc_CD188F: LitI2_Byte &HFF
  loc_CD1891: EqI2
  loc_CD1892: FFree1Ad var_8C
  loc_CD1895: BranchF loc_CD1930
  loc_CD1898: ImpAdCallI2 Proc_272_19_A53E30()
  loc_CD189D: FStStrNoPop var_94
  loc_CD18A0: LitStr "\Acuerdo 5662\"
  loc_CD18A3: ConcatStr
  loc_CD18A4: CVarStr var_D4
  loc_CD18A7: FLdPr Me
  loc_CD18AA: VCallAd Control_ID_DesdeMsk
  loc_CD18AD: FStAdFunc var_8C
  loc_CD18B0: FLdPr var_8C
  loc_CD18B3: LateIdLdVar var_A4 DispID_15 0
  loc_CD18BA: CStrVarTmp
  loc_CD18BB: CVarStr var_B4
  loc_CD18BE: FLdRfVar var_C4
  loc_CD18C1: ImpAdCallFPR4  = Year()
  loc_CD18C6: FLdRfVar var_C4
  loc_CD18C9: ConcatVar var_E4
  loc_CD18CD: LitVarStr var_F4, "\Mes "
  loc_CD18D2: ConcatVar var_104
  loc_CD18D6: FLdPr Me
  loc_CD18D9: VCallAd Control_ID_DesdeMsk
  loc_CD18DC: FStAdFunc var_108
  loc_CD18DF: FLdPr var_108
  loc_CD18E2: LateIdLdVar var_118 DispID_15 0
  loc_CD18E9: CStrVarTmp
  loc_CD18EA: CVarStr var_128
  loc_CD18ED: FLdRfVar var_138
  loc_CD18F0: ImpAdCallFPR4  = Month()
  loc_CD18F5: FLdRfVar var_138
  loc_CD18F8: ConcatVar var_148
  loc_CD18FC: LitVarStr var_158, "\detabole.txt"
  loc_CD1901: ConcatVar var_168
  loc_CD1905: CStrVarTmp
  loc_CD1906: ImpAdStStr MemVar_D93030
  loc_CD190A: FFree1Str var_94
  loc_CD190D: FFreeAd var_8C = ""
  loc_CD1914: FFreeVar var_A4 = "": var_B4 = "": var_D4 = "": var_C4 = "": var_E4 = "": var_118 = "": var_128 = "": var_104 = "": var_138 = "": var_148 = ""
  loc_CD192D: Branch loc_CD1A81
  loc_CD1930: FLdPr Me
  loc_CD1933: VCallAd Control_ID_OptFacilidad
  loc_CD1936: CVarAd
  loc_CD193A: CBoolVarNull
  loc_CD193C: FFree1Var var_A4 = ""
  loc_CD193F: BranchF loc_CD19DA
  loc_CD1942: ImpAdCallI2 Proc_272_19_A53E30()
  loc_CD1947: FStStrNoPop var_94
  loc_CD194A: LitStr "\Acuerdo 5662\"
  loc_CD194D: ConcatStr
  loc_CD194E: CVarStr var_D4
  loc_CD1951: FLdPr Me
  loc_CD1954: VCallAd Control_ID_DesdeMsk
  loc_CD1957: FStAdFunc var_8C
  loc_CD195A: FLdPr var_8C
  loc_CD195D: LateIdLdVar var_A4 DispID_15 0
  loc_CD1964: CStrVarTmp
  loc_CD1965: CVarStr var_B4
  loc_CD1968: FLdRfVar var_C4
  loc_CD196B: ImpAdCallFPR4  = Year()
  loc_CD1970: FLdRfVar var_C4
  loc_CD1973: ConcatVar var_E4
  loc_CD1977: LitVarStr var_F4, "\Mes "
  loc_CD197C: ConcatVar var_104
  loc_CD1980: FLdPr Me
  loc_CD1983: VCallAd Control_ID_DesdeMsk
  loc_CD1986: FStAdFunc var_108
  loc_CD1989: FLdPr var_108
  loc_CD198C: LateIdLdVar var_118 DispID_15 0
  loc_CD1993: CStrVarTmp
  loc_CD1994: CVarStr var_128
  loc_CD1997: FLdRfVar var_138
  loc_CD199A: ImpAdCallFPR4  = Month()
  loc_CD199F: FLdRfVar var_138
  loc_CD19A2: ConcatVar var_148
  loc_CD19A6: LitVarStr var_158, "\facilidad.txt"
  loc_CD19AB: ConcatVar var_168
  loc_CD19AF: CStrVarTmp
  loc_CD19B0: ImpAdStStr MemVar_D93030
  loc_CD19B4: FFree1Str var_94
  loc_CD19B7: FFreeAd var_8C = ""
  loc_CD19BE: FFreeVar var_A4 = "": var_B4 = "": var_D4 = "": var_C4 = "": var_E4 = "": var_118 = "": var_128 = "": var_104 = "": var_138 = "": var_148 = ""
  loc_CD19D7: Branch loc_CD1A81
  loc_CD19DA: FLdPr Me
  loc_CD19DD: VCallAd Control_ID_optConcepto
  loc_CD19E0: CVarAd
  loc_CD19E4: CBoolVarNull
  loc_CD19E6: FFree1Var var_A4 = ""
  loc_CD19E9: BranchF loc_CD1A81
  loc_CD19EC: ImpAdCallI2 Proc_272_19_A53E30()
  loc_CD19F1: FStStrNoPop var_94
  loc_CD19F4: LitStr "\Acuerdo 5662\"
  loc_CD19F7: ConcatStr
  loc_CD19F8: CVarStr var_D4
  loc_CD19FB: FLdPr Me
  loc_CD19FE: VCallAd Control_ID_DesdeMsk
  loc_CD1A01: FStAdFunc var_8C
  loc_CD1A04: FLdPr var_8C
  loc_CD1A07: LateIdLdVar var_A4 DispID_15 0
  loc_CD1A0E: CStrVarTmp
  loc_CD1A0F: CVarStr var_B4
  loc_CD1A12: FLdRfVar var_C4
  loc_CD1A15: ImpAdCallFPR4  = Year()
  loc_CD1A1A: FLdRfVar var_C4
  loc_CD1A1D: ConcatVar var_E4
  loc_CD1A21: LitVarStr var_F4, "\Mes "
  loc_CD1A26: ConcatVar var_104
  loc_CD1A2A: FLdPr Me
  loc_CD1A2D: VCallAd Control_ID_DesdeMsk
  loc_CD1A30: FStAdFunc var_108
  loc_CD1A33: FLdPr var_108
  loc_CD1A36: LateIdLdVar var_118 DispID_15 0
  loc_CD1A3D: CStrVarTmp
  loc_CD1A3E: CVarStr var_128
  loc_CD1A41: FLdRfVar var_138
  loc_CD1A44: ImpAdCallFPR4  = Month()
  loc_CD1A49: FLdRfVar var_138
  loc_CD1A4C: ConcatVar var_148
  loc_CD1A50: LitVarStr var_158, "\concepto.txt"
  loc_CD1A55: ConcatVar var_168
  loc_CD1A59: CStrVarTmp
  loc_CD1A5A: ImpAdStStr MemVar_D93030
  loc_CD1A5E: FFree1Str var_94
  loc_CD1A61: FFreeAd var_8C = ""
  loc_CD1A68: FFreeVar var_A4 = "": var_B4 = "": var_D4 = "": var_C4 = "": var_E4 = "": var_118 = "": var_128 = "": var_104 = "": var_138 = "": var_148 = ""
  loc_CD1A81: ImpAdLdI4 MemVar_D93030
  loc_CD1A84: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_CD1A89: LitStr "	"
  loc_CD1A8C: FStStrCopy var_88
  loc_CD1A8F: FLdRfVar var_8E
  loc_CD1A92: FLdPr Me
  loc_CD1A95: VCallAd Control_ID_OptCtaCte
  loc_CD1A98: FStAdFunc var_8C
  loc_CD1A9B: FLdPr var_8C
  loc_CD1A9E:  = Me.Value
  loc_CD1AA3: FLdI2 var_8E
  loc_CD1AA6: FFree1Ad var_8C
  loc_CD1AA9: BranchF loc_CD1F64
  loc_CD1AAC: FLdRfVar var_8C
  loc_CD1AAF: LitI2_Byte 0
  loc_CD1AB1: LitI2_Byte &HFF
  loc_CD1AB3: ImpAdLdI4 MemVar_D93030
  loc_CD1AB6: FLdPr Me
  loc_CD1AB9: MemLdRfVar from_stack_1.global_56
  loc_CD1ABC: NewIfNullPr IFileSystem3
  loc_CD1ABF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_CD1AC4: ILdRf var_8C
  loc_CD1AC7: FLdPr Me
  loc_CD1ACA: MemStVarAd
  loc_CD1ACE: FFree1Ad var_8C
  loc_CD1AD1: FLdPr Me
  loc_CD1AD4: MemLdRfVar from_stack_1.global_92
  loc_CD1AD7: NewIfNullAd
  loc_CD1ADA: FStAd var_16C 
  loc_CD1ADE: FLdRfVar var_170
  loc_CD1AE1: FLdPr var_16C
  loc_CD1AE4: from_stack_1 = clsctacte.RecordCount
  loc_CD1AE9: ILdRf var_170
  loc_CD1AEC: LitI4 0
  loc_CD1AF1: EqI4
  loc_CD1AF2: BranchF loc_CD1B54
  loc_CD1AF5: LitI4 0
  loc_CD1AFA: LitI4 1
  loc_CD1AFF: FLdRfVar var_174
  loc_CD1B02: Redim
  loc_CD1B0C: LitVarStr var_F4, "|"
  loc_CD1B11: LitI4 0
  loc_CD1B16: ILdRf var_174
  loc_CD1B19: Ary1StVarCopy
  loc_CD1B1B: LitVarStr var_158, "SIN MOVIMIENTO"
  loc_CD1B20: LitI4 1
  loc_CD1B25: ILdRf var_174
  loc_CD1B28: Ary1StVarCopy
  loc_CD1B2A: FLdRfVar var_174
  loc_CD1B2D: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD1B32: FStStr var_94
  loc_CD1B35: FLdRfVar var_174
  loc_CD1B38: Erase
  loc_CD1B39: FLdZeroAd var_94
  loc_CD1B3C: CVarStr var_A4
  loc_CD1B3F: PopAdLdVar
  loc_CD1B40: FLdPr Me
  loc_CD1B43: MemLdRfVar from_stack_1.global_76
  loc_CD1B46: LdPrVar
  loc_CD1B48: LateMemCall
  loc_CD1B4E: FFree1Var var_A4 = ""
  loc_CD1B51: Branch loc_CD1F5E
  loc_CD1B54: LitI4 0
  loc_CD1B59: LitI4 &H11
  loc_CD1B5E: FLdRfVar var_174
  loc_CD1B61: Redim
  loc_CD1B6B: LitVarStr var_F4, "|"
  loc_CD1B70: LitI4 0
  loc_CD1B75: ILdRf var_174
  loc_CD1B78: Ary1StVarCopy
  loc_CD1B7A: LitVarStr var_158, "Sector"
  loc_CD1B7F: LitI4 1
  loc_CD1B84: ILdRf var_174
  loc_CD1B87: Ary1StVarCopy
  loc_CD1B89: LitVarStr var_184, "Cuenta"
  loc_CD1B8E: LitI4 2
  loc_CD1B93: ILdRf var_174
  loc_CD1B96: Ary1StVarCopy
  loc_CD1B98: LitVarStr var_194, "Periodo"
  loc_CD1B9D: LitI4 3
  loc_CD1BA2: ILdRf var_174
  loc_CD1BA5: Ary1StVarCopy
  loc_CD1BA7: LitVarStr var_1A4, "Bimestre"
  loc_CD1BAC: LitI4 4
  loc_CD1BB1: ILdRf var_174
  loc_CD1BB4: Ary1StVarCopy
  loc_CD1BB6: LitVarStr var_1B4, "Nro Int."
  loc_CD1BBB: LitI4 5
  loc_CD1BC0: ILdRf var_174
  loc_CD1BC3: Ary1StVarCopy
  loc_CD1BC5: LitVarStr var_1C4, "Per. Boleto"
  loc_CD1BCA: LitI4 6
  loc_CD1BCF: ILdRf var_174
  loc_CD1BD2: Ary1StVarCopy
  loc_CD1BD4: LitVarStr var_1D4, "Nro Boleto"
  loc_CD1BD9: LitI4 7
  loc_CD1BDE: ILdRf var_174
  loc_CD1BE1: Ary1StVarCopy
  loc_CD1BE3: LitVarStr var_1E4, "Fecha Alta"
  loc_CD1BE8: LitI4 8
  loc_CD1BED: ILdRf var_174
  loc_CD1BF0: Ary1StVarCopy
  loc_CD1BF2: LitVarStr var_1F4, "Fecha Vto"
  loc_CD1BF7: LitI4 9
  loc_CD1BFC: ILdRf var_174
  loc_CD1BFF: Ary1StVarCopy
  loc_CD1C01: LitVarStr var_204, "Periodo Conc."
  loc_CD1C06: LitI4 &HA
  loc_CD1C0B: ILdRf var_174
  loc_CD1C0E: Ary1StVarCopy
  loc_CD1C10: LitVarStr var_214, "Concepto"
  loc_CD1C15: LitI4 &HB
  loc_CD1C1A: ILdRf var_174
  loc_CD1C1D: Ary1StVarCopy
  loc_CD1C1F: LitVarStr var_224, "Nro Facil."
  loc_CD1C24: LitI4 &HC
  loc_CD1C29: ILdRf var_174
  loc_CD1C2C: Ary1StVarCopy
  loc_CD1C2E: LitVarStr var_234, "Apremio"
  loc_CD1C33: LitI4 &HD
  loc_CD1C38: ILdRf var_174
  loc_CD1C3B: Ary1StVarCopy
  loc_CD1C3D: LitVarStr var_244, "Tipo Mov."
  loc_CD1C42: LitI4 &HE
  loc_CD1C47: ILdRf var_174
  loc_CD1C4A: Ary1StVarCopy
  loc_CD1C4C: LitVarStr var_254, "Expediente"
  loc_CD1C51: LitI4 &HF
  loc_CD1C56: ILdRf var_174
  loc_CD1C59: Ary1StVarCopy
  loc_CD1C5B: LitVarStr var_264, "Importe Deb."
  loc_CD1C60: LitI4 &H10
  loc_CD1C65: ILdRf var_174
  loc_CD1C68: Ary1StVarCopy
  loc_CD1C6A: LitVarStr var_274, "Importes Cred."
  loc_CD1C6F: LitI4 &H11
  loc_CD1C74: ILdRf var_174
  loc_CD1C77: Ary1StVarCopy
  loc_CD1C79: FLdRfVar var_174
  loc_CD1C7C: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD1C81: FStStr var_94
  loc_CD1C84: FLdRfVar var_174
  loc_CD1C87: Erase
  loc_CD1C88: FLdZeroAd var_94
  loc_CD1C8B: CVarStr var_A4
  loc_CD1C8E: PopAdLdVar
  loc_CD1C8F: FLdPr Me
  loc_CD1C92: MemLdRfVar from_stack_1.global_76
  loc_CD1C95: LdPrVar
  loc_CD1C97: LateMemCall
  loc_CD1C9D: FFree1Var var_A4 = ""
  loc_CD1CA0: FLdPr var_16C
  loc_CD1CA3: Call clsctacte.MoveFirst()
  loc_CD1CA8: FLdRfVar var_170
  loc_CD1CAB: FLdPr var_16C
  loc_CD1CAE: from_stack_1 = clsctacte.RecordCount
  loc_CD1CB3: ILdRf var_170
  loc_CD1CB6: CR8I4
  loc_CD1CB7: CVarR4
  loc_CD1CBB: PopAdLdVar
  loc_CD1CBC: FLdPrThis
  loc_CD1CBD: VCallAd Control_ID_Pbar
  loc_CD1CC0: FStAdFunc var_8C
  loc_CD1CC3: FLdPr var_8C
  loc_CD1CC6: LateIdSt
  loc_CD1CCB: FFree1Ad var_8C
  loc_CD1CCE: LitVar_TRUE var_F4
  loc_CD1CD1: PopAdLdVar
  loc_CD1CD2: FLdPrThis
  loc_CD1CD3: VCallAd Control_ID_Pbar
  loc_CD1CD6: FStAdFunc var_8C
  loc_CD1CD9: FLdPr var_8C
  loc_CD1CDC: LateIdSt
  loc_CD1CE1: FFree1Ad var_8C
  loc_CD1CE4: LitI4 1
  loc_CD1CE9: FLdPr Me
  loc_CD1CEC: MemLdRfVar from_stack_1.global_116
  loc_CD1CEF: FLdRfVar var_170
  loc_CD1CF2: FLdPr var_16C
  loc_CD1CF5: from_stack_1 = clsctacte.RecordCount
  loc_CD1CFA: ILdRf var_170
  loc_CD1CFD: ForI4 var_28C
  loc_CD1D03: FLdPr Me
  loc_CD1D06: MemLdStr global_116
  loc_CD1D09: CR8I4
  loc_CD1D0A: CVarR4
  loc_CD1D0E: PopAdLdVar
  loc_CD1D0F: FLdPrThis
  loc_CD1D10: VCallAd Control_ID_Pbar
  loc_CD1D13: FStAdFunc var_8C
  loc_CD1D16: FLdPr var_8C
  loc_CD1D19: LateIdSt
  loc_CD1D1E: FFree1Ad var_8C
  loc_CD1D21: LitI4 0
  loc_CD1D26: LitI4 &H11
  loc_CD1D2B: FLdRfVar var_174
  loc_CD1D2E: Redim
  loc_CD1D38: LitVarStr var_F4, "|"
  loc_CD1D3D: LitI4 0
  loc_CD1D42: ILdRf var_174
  loc_CD1D45: Ary1StVarCopy
  loc_CD1D47: FLdRfVar var_8E
  loc_CD1D4A: FLdPr var_16C
  loc_CD1D4D: from_stack_1 = clsctacte.CodiOfic
  loc_CD1D52: FLdI2 var_8E
  loc_CD1D55: CVarI2 var_158
  loc_CD1D58: LitI4 1
  loc_CD1D5D: ILdRf var_174
  loc_CD1D60: Ary1StVar
  loc_CD1D61: FLdRfVar var_94
  loc_CD1D64: FLdPr var_16C
  loc_CD1D67: from_stack_1 = clsctacte.CuenCtct
  loc_CD1D6C: FLdZeroAd var_94
  loc_CD1D6F: CVarStr var_B4
  loc_CD1D72: ParmAry1St
  loc_CD1D78: FLdRfVar var_28E
  loc_CD1D7B: FLdPr var_16C
  loc_CD1D7E: from_stack_1 = clsctacte.PeriCtct
  loc_CD1D83: FLdI2 var_28E
  loc_CD1D86: CVarI2 var_184
  loc_CD1D89: LitI4 3
  loc_CD1D8E: ILdRf var_174
  loc_CD1D91: Ary1StVar
  loc_CD1D92: FLdRfVar var_290
  loc_CD1D95: FLdPr var_16C
  loc_CD1D98: from_stack_1 = clsctacte.BimeCtct
  loc_CD1D9D: FLdI2 var_290
  loc_CD1DA0: CVarI2 var_194
  loc_CD1DA3: LitI4 4
  loc_CD1DA8: ILdRf var_174
  loc_CD1DAB: Ary1StVar
  loc_CD1DAC: FLdRfVar var_170
  loc_CD1DAF: FLdPr var_16C
  loc_CD1DB2: from_stack_1 = clsctacte.NumeCtct
  loc_CD1DB7: ILdRf var_170
  loc_CD1DBA: CVarI4
  loc_CD1DBE: LitI4 5
  loc_CD1DC3: ILdRf var_174
  loc_CD1DC6: Ary1StVar
  loc_CD1DC7: FLdRfVar var_292
  loc_CD1DCA: FLdPr var_16C
  loc_CD1DCD: from_stack_1 = clsctacte.PeriBole
  loc_CD1DD2: FLdI2 var_292
  loc_CD1DD5: CVarI2 var_1B4
  loc_CD1DD8: LitI4 6
  loc_CD1DDD: ILdRf var_174
  loc_CD1DE0: Ary1StVar
  loc_CD1DE1: FLdRfVar var_298
  loc_CD1DE4: FLdPr var_16C
  loc_CD1DE7: from_stack_1 = clsctacte.NumeBole
  loc_CD1DEC: ILdRf var_298
  loc_CD1DEF: CVarI4
  loc_CD1DF3: LitI4 7
  loc_CD1DF8: ILdRf var_174
  loc_CD1DFB: Ary1StVar
  loc_CD1DFC: FLdRfVar var_29C
  loc_CD1DFF: FLdPr var_16C
  loc_CD1E02: from_stack_1 = clsctacte.FealCtct
  loc_CD1E07: FLdZeroAd var_29C
  loc_CD1E0A: CVarStr var_C4
  loc_CD1E0D: ParmAry1St
  loc_CD1E13: FLdRfVar var_A4
  loc_CD1E16: FLdPr var_16C
  loc_CD1E19: from_stack_1 = clsctacte.FeveCtct
  loc_CD1E1E: FLdRfVar var_A4
  loc_CD1E21: ParmAry1St
  loc_CD1E27: FLdRfVar var_29E
  loc_CD1E2A: FLdPr var_16C
  loc_CD1E2D: from_stack_1 = clsctacte.PeriInfo
  loc_CD1E32: FLdI2 var_29E
  loc_CD1E35: CVarI2 var_1D4
  loc_CD1E38: LitI4 &HA
  loc_CD1E3D: ILdRf var_174
  loc_CD1E40: Ary1StVar
  loc_CD1E41: FLdRfVar var_2A4
  loc_CD1E44: FLdPr var_16C
  loc_CD1E47: from_stack_1 = clsctacte.CodiConc
  loc_CD1E4C: FLdZeroAd var_2A4
  loc_CD1E4F: CVarStr var_D4
  loc_CD1E52: ParmAry1St
  loc_CD1E58: FLdRfVar var_2A8
  loc_CD1E5B: FLdPr var_16C
  loc_CD1E5E: from_stack_1 = clsctacte.CodiFapa
  loc_CD1E63: ILdRf var_2A8
  loc_CD1E66: CVarI4
  loc_CD1E6A: LitI4 &HC
  loc_CD1E6F: ILdRf var_174
  loc_CD1E72: Ary1StVar
  loc_CD1E73: FLdRfVar var_2AC
  loc_CD1E76: FLdPr var_16C
  loc_CD1E79: from_stack_1 = clsctacte.NumeApre
  loc_CD1E7E: ILdRf var_2AC
  loc_CD1E81: CVarI4
  loc_CD1E85: LitI4 &HD
  loc_CD1E8A: ILdRf var_174
  loc_CD1E8D: Ary1StVar
  loc_CD1E8E: FLdRfVar var_2AE
  loc_CD1E91: FLdPr var_16C
  loc_CD1E94: from_stack_1 = clsctacte.CodiTimo
  loc_CD1E99: FLdI2 var_2AE
  loc_CD1E9C: CVarI2 var_204
  loc_CD1E9F: LitI4 &HE
  loc_CD1EA4: ILdRf var_174
  loc_CD1EA7: Ary1StVar
  loc_CD1EA8: FLdRfVar var_2B4
  loc_CD1EAB: FLdPr var_16C
  loc_CD1EAE: from_stack_1 = clsctacte.ExpeCtct
  loc_CD1EB3: FLdZeroAd var_2B4
  loc_CD1EB6: CVarStr var_E4
  loc_CD1EB9: ParmAry1St
  loc_CD1EBF: FLdRfVar var_2BC
  loc_CD1EC2: FLdPr var_16C
  loc_CD1EC5: from_stack_1 = clsctacte.DebeCtct
  loc_CD1ECA: FLdFPR8 var_2BC
  loc_CD1ECD: CStrR8
  loc_CD1ECF: FStStrNoPop var_2C0
  loc_CD1ED2: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_CD1ED7: CVarStr var_104
  loc_CD1EDA: ParmAry1St
  loc_CD1EE0: FLdRfVar var_2C8
  loc_CD1EE3: FLdPr var_16C
  loc_CD1EE6: from_stack_1 = clsctacte.CredCtct
  loc_CD1EEB: FLdFPR8 var_2C8
  loc_CD1EEE: CStrR8
  loc_CD1EF0: FStStrNoPop var_2CC
  loc_CD1EF3: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_CD1EF8: CVarStr var_118
  loc_CD1EFB: ParmAry1St
  loc_CD1F01: FLdRfVar var_174
  loc_CD1F04: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD1F09: FStStr var_2D0
  loc_CD1F0C: FLdRfVar var_174
  loc_CD1F0F: Erase
  loc_CD1F10: FLdZeroAd var_2D0
  loc_CD1F13: CVarStr var_128
  loc_CD1F16: PopAdLdVar
  loc_CD1F17: FLdPr Me
  loc_CD1F1A: MemLdRfVar from_stack_1.global_76
  loc_CD1F1D: LdPrVar
  loc_CD1F1F: LateMemCall
  loc_CD1F25: FFreeStr var_2C0 = ""
  loc_CD1F2C: FFree1Var var_128 = ""
  loc_CD1F2F: LitI2_Byte 1
  loc_CD1F31: PopTmpLdAd2 var_8E
  loc_CD1F34: FLdPr var_16C
  loc_CD1F37: Call clsctacte.Move(from_stack_1v)
  loc_CD1F3C: FLdPr Me
  loc_CD1F3F: MemLdRfVar from_stack_1.global_116
  loc_CD1F42: NextI4 var_28C, loc_CD1D03
  loc_CD1F47: LitVar_FALSE
  loc_CD1F4B: PopAdLdVar
  loc_CD1F4C: FLdPrThis
  loc_CD1F4D: VCallAd Control_ID_Pbar
  loc_CD1F50: FStAdFunc var_8C
  loc_CD1F53: FLdPr var_8C
  loc_CD1F56: LateIdSt
  loc_CD1F5B: FFree1Ad var_8C
  loc_CD1F5E: LitNothing
  loc_CD1F60: FStAd var_16C 
  loc_CD1F64: FLdRfVar var_8E
  loc_CD1F67: FLdPr Me
  loc_CD1F6A: VCallAd Control_ID_OptTipoMovimiento
  loc_CD1F6D: FStAdFunc var_8C
  loc_CD1F70: FLdPr var_8C
  loc_CD1F73:  = Me.Value
  loc_CD1F78: FLdI2 var_8E
  loc_CD1F7B: FFree1Ad var_8C
  loc_CD1F7E: BranchF loc_CD2153
  loc_CD1F81: FLdRfVar var_8C
  loc_CD1F84: LitI2_Byte 0
  loc_CD1F86: LitI2_Byte &HFF
  loc_CD1F88: ImpAdLdI4 MemVar_D93030
  loc_CD1F8B: FLdPr Me
  loc_CD1F8E: MemLdRfVar from_stack_1.global_56
  loc_CD1F91: NewIfNullPr IFileSystem3
  loc_CD1F94: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_CD1F99: ILdRf var_8C
  loc_CD1F9C: FLdPr Me
  loc_CD1F9F: MemStVarAd
  loc_CD1FA3: FFree1Ad var_8C
  loc_CD1FA6: FLdPr Me
  loc_CD1FA9: MemLdStr global_96
  loc_CD1FAC: LitI2_Byte 1
  loc_CD1FAE: FnUBound
  loc_CD1FB0: LitI4 0
  loc_CD1FB5: EqI4
  loc_CD1FB6: BranchF loc_CD2018
  loc_CD1FB9: LitI4 0
  loc_CD1FBE: LitI4 1
  loc_CD1FC3: FLdRfVar var_174
  loc_CD1FC6: Redim
  loc_CD1FD0: LitVarStr var_F4, "|"
  loc_CD1FD5: LitI4 0
  loc_CD1FDA: ILdRf var_174
  loc_CD1FDD: Ary1StVarCopy
  loc_CD1FDF: LitVarStr var_158, "SIN MOVIMIENTO"
  loc_CD1FE4: LitI4 1
  loc_CD1FE9: ILdRf var_174
  loc_CD1FEC: Ary1StVarCopy
  loc_CD1FEE: FLdRfVar var_174
  loc_CD1FF1: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD1FF6: FStStr var_94
  loc_CD1FF9: FLdRfVar var_174
  loc_CD1FFC: Erase
  loc_CD1FFD: FLdZeroAd var_94
  loc_CD2000: CVarStr var_A4
  loc_CD2003: PopAdLdVar
  loc_CD2004: FLdPr Me
  loc_CD2007: MemLdRfVar from_stack_1.global_76
  loc_CD200A: LdPrVar
  loc_CD200C: LateMemCall
  loc_CD2012: FFree1Var var_A4 = ""
  loc_CD2015: Branch loc_CD2153
  loc_CD2018: LitI4 0
  loc_CD201D: LitI4 3
  loc_CD2022: FLdRfVar var_174
  loc_CD2025: Redim
  loc_CD202F: LitVarStr var_F4, "|"
  loc_CD2034: LitI4 0
  loc_CD2039: ILdRf var_174
  loc_CD203C: Ary1StVarCopy
  loc_CD203E: LitVarStr var_158, "Código"
  loc_CD2043: LitI4 1
  loc_CD2048: ILdRf var_174
  loc_CD204B: Ary1StVarCopy
  loc_CD204D: LitVarStr var_184, "Detalle"
  loc_CD2052: LitI4 2
  loc_CD2057: ILdRf var_174
  loc_CD205A: Ary1StVarCopy
  loc_CD205C: LitVarStr var_194, "Abreviatura"
  loc_CD2061: LitI4 3
  loc_CD2066: ILdRf var_174
  loc_CD2069: Ary1StVarCopy
  loc_CD206B: FLdRfVar var_174
  loc_CD206E: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD2073: FStStr var_94
  loc_CD2076: FLdRfVar var_174
  loc_CD2079: Erase
  loc_CD207A: FLdZeroAd var_94
  loc_CD207D: CVarStr var_A4
  loc_CD2080: PopAdLdVar
  loc_CD2081: FLdPr Me
  loc_CD2084: MemLdRfVar from_stack_1.global_76
  loc_CD2087: LdPrVar
  loc_CD2089: LateMemCall
  loc_CD208F: FFree1Var var_A4 = ""
  loc_CD2092: LitI4 1
  loc_CD2097: FLdPr Me
  loc_CD209A: MemLdRfVar from_stack_1.global_120
  loc_CD209D: FLdPr Me
  loc_CD20A0: MemLdStr global_96
  loc_CD20A3: LitI2_Byte 1
  loc_CD20A5: FnUBound
  loc_CD20A7: ForI4 var_2D8
  loc_CD20AD: FLdPr Me
  loc_CD20B0: MemLdStr global_120
  loc_CD20B3: FLdPr Me
  loc_CD20B6: MemLdStr global_96
  loc_CD20B9: AryLock
  loc_CD20BC: Ary1LdRf
  loc_CD20BD: FStR4 var_2E0
  loc_CD20C0: LitI4 0
  loc_CD20C5: LitI4 3
  loc_CD20CA: FLdRfVar var_174
  loc_CD20CD: Redim
  loc_CD20D7: LitVarStr var_F4, "|"
  loc_CD20DC: LitI4 0
  loc_CD20E1: ILdRf var_174
  loc_CD20E4: Ary1StVarCopy
  loc_CD20E6: FMemLdRf unk_4C8855
  loc_CD20EB: CVarRef
  loc_CD20F0: ParmAry1St
  loc_CD20F6: FMemLdRf unk_4C8855
  loc_CD20FB: CVarRef
  loc_CD2100: ParmAry1St
  loc_CD2106: FMemLdRf unk_4C8855
  loc_CD210B: CVarRef
  loc_CD2110: ParmAry1St
  loc_CD2116: FLdRfVar var_174
  loc_CD2119: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD211E: FStStr var_94
  loc_CD2121: FLdRfVar var_174
  loc_CD2124: Erase
  loc_CD2125: FLdZeroAd var_94
  loc_CD2128: CVarStr var_A4
  loc_CD212B: PopAdLdVar
  loc_CD212C: FLdPr Me
  loc_CD212F: MemLdRfVar from_stack_1.global_76
  loc_CD2132: LdPrVar
  loc_CD2134: LateMemCall
  loc_CD213A: FFree1Var var_A4 = ""
  loc_CD213D: LitI4 0
  loc_CD2142: FStR4 var_2E0
  loc_CD2145: AryUnlock
  loc_CD2148: FLdPr Me
  loc_CD214B: MemLdRfVar from_stack_1.global_120
  loc_CD214E: NextI4 var_2D8, loc_CD20AD
  loc_CD2153: FLdRfVar var_8E
  loc_CD2156: FLdPr Me
  loc_CD2159: VCallAd Control_ID_OptBoleto
  loc_CD215C: FStAdFunc var_8C
  loc_CD215F: FLdPr var_8C
  loc_CD2162:  = Me.Value
  loc_CD2167: FLdI2 var_8E
  loc_CD216A: FFree1Ad var_8C
  loc_CD216D: BranchF loc_CD2AEA
  loc_CD2170: FLdRfVar var_8C
  loc_CD2173: LitI2_Byte 0
  loc_CD2175: LitI2_Byte &HFF
  loc_CD2177: ImpAdLdI4 MemVar_D93030
  loc_CD217A: FLdPr Me
  loc_CD217D: MemLdRfVar from_stack_1.global_56
  loc_CD2180: NewIfNullPr IFileSystem3
  loc_CD2183: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_CD2188: ILdRf var_8C
  loc_CD218B: FLdPr Me
  loc_CD218E: MemStVarAd
  loc_CD2192: FFree1Ad var_8C
  loc_CD2195: FLdPr Me
  loc_CD2198: MemLdRfVar from_stack_1.global_92
  loc_CD219B: NewIfNullAd
  loc_CD219E: FStAd var_2E4 
  loc_CD21A2: FLdRfVar var_170
  loc_CD21A5: FLdPr var_2E4
  loc_CD21A8: from_stack_1 = clsctacte.RecordCount
  loc_CD21AD: ILdRf var_170
  loc_CD21B0: LitI4 0
  loc_CD21B5: EqI4
  loc_CD21B6: BranchF loc_CD2218
  loc_CD21B9: LitI4 0
  loc_CD21BE: LitI4 1
  loc_CD21C3: FLdRfVar var_174
  loc_CD21C6: Redim
  loc_CD21D0: LitVarStr var_F4, "|"
  loc_CD21D5: LitI4 0
  loc_CD21DA: ILdRf var_174
  loc_CD21DD: Ary1StVarCopy
  loc_CD21DF: LitVarStr var_158, "SIN MOVIMIENTO"
  loc_CD21E4: LitI4 1
  loc_CD21E9: ILdRf var_174
  loc_CD21EC: Ary1StVarCopy
  loc_CD21EE: FLdRfVar var_174
  loc_CD21F1: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD21F6: FStStr var_94
  loc_CD21F9: FLdRfVar var_174
  loc_CD21FC: Erase
  loc_CD21FD: FLdZeroAd var_94
  loc_CD2200: CVarStr var_A4
  loc_CD2203: PopAdLdVar
  loc_CD2204: FLdPr Me
  loc_CD2207: MemLdRfVar from_stack_1.global_76
  loc_CD220A: LdPrVar
  loc_CD220C: LateMemCall
  loc_CD2212: FFree1Var var_A4 = ""
  loc_CD2215: Branch loc_CD2AE4
  loc_CD2218: FLdPr var_2E4
  loc_CD221B: Call clsctacte.MoveFirst()
  loc_CD2220: FLdRfVar var_170
  loc_CD2223: FLdPr var_2E4
  loc_CD2226: from_stack_1 = clsctacte.RecordCount
  loc_CD222B: ILdRf var_170
  loc_CD222E: CR8I4
  loc_CD222F: CVarR4
  loc_CD2233: PopAdLdVar
  loc_CD2234: FLdPrThis
  loc_CD2235: VCallAd Control_ID_Pbar
  loc_CD2238: FStAdFunc var_8C
  loc_CD223B: FLdPr var_8C
  loc_CD223E: LateIdSt
  loc_CD2243: FFree1Ad var_8C
  loc_CD2246: LitVar_TRUE var_F4
  loc_CD2249: PopAdLdVar
  loc_CD224A: FLdPrThis
  loc_CD224B: VCallAd Control_ID_Pbar
  loc_CD224E: FStAdFunc var_8C
  loc_CD2251: FLdPr var_8C
  loc_CD2254: LateIdSt
  loc_CD2259: FFree1Ad var_8C
  loc_CD225C: LitI4 0
  loc_CD2261: LitI4 &H1A
  loc_CD2266: FLdRfVar var_174
  loc_CD2269: Redim
  loc_CD2273: LitVarStr var_F4, "|"
  loc_CD2278: LitI4 0
  loc_CD227D: ILdRf var_174
  loc_CD2280: Ary1StVarCopy
  loc_CD2282: LitVarStr var_158, "Periodo"
  loc_CD2287: LitI4 1
  loc_CD228C: ILdRf var_174
  loc_CD228F: Ary1StVarCopy
  loc_CD2291: LitVarStr var_184, "Numero"
  loc_CD2296: LitI4 2
  loc_CD229B: ILdRf var_174
  loc_CD229E: Ary1StVarCopy
  loc_CD22A0: LitVarStr var_194, "Ofic."
  loc_CD22A5: LitI4 3
  loc_CD22AA: ILdRf var_174
  loc_CD22AD: Ary1StVarCopy
  loc_CD22AF: LitVarStr var_1A4, "Cuenta"
  loc_CD22B4: LitI4 4
  loc_CD22B9: ILdRf var_174
  loc_CD22BC: Ary1StVarCopy
  loc_CD22BE: LitVarStr var_1B4, "CUIT"
  loc_CD22C3: LitI4 5
  loc_CD22C8: ILdRf var_174
  loc_CD22CB: Ary1StVarCopy
  loc_CD22CD: LitVarStr var_1C4, "Fecha Alta"
  loc_CD22D2: LitI4 6
  loc_CD22D7: ILdRf var_174
  loc_CD22DA: Ary1StVarCopy
  loc_CD22DC: LitVarStr var_1D4, "Fecha Vto"
  loc_CD22E1: LitI4 7
  loc_CD22E6: ILdRf var_174
  loc_CD22E9: Ary1StVarCopy
  loc_CD22EB: LitVarStr var_1E4, "Cod. Ente"
  loc_CD22F0: LitI4 8
  loc_CD22F5: ILdRf var_174
  loc_CD22F8: Ary1StVarCopy
  loc_CD22FA: LitVarStr var_1F4, "Estado"
  loc_CD22FF: LitI4 9
  loc_CD2304: ILdRf var_174
  loc_CD2307: Ary1StVarCopy
  loc_CD2309: LitVarStr var_204, "Fecha Anul."
  loc_CD230E: LitI4 &HA
  loc_CD2313: ILdRf var_174
  loc_CD2316: Ary1StVarCopy
  loc_CD2318: LitVarStr var_214, "Motivo"
  loc_CD231D: LitI4 &HB
  loc_CD2322: ILdRf var_174
  loc_CD2325: Ary1StVarCopy
  loc_CD2327: LitVarStr var_224, "Usuario Anul"
  loc_CD232C: LitI4 &HC
  loc_CD2331: ILdRf var_174
  loc_CD2334: Ary1StVarCopy
  loc_CD2336: LitVarStr var_234, "Tipo Liqu"
  loc_CD233B: LitI4 &HD
  loc_CD2340: ILdRf var_174
  loc_CD2343: Ary1StVarCopy
  loc_CD2345: LitVarStr var_244, "Cod. Faci."
  loc_CD234A: LitI4 &HE
  loc_CD234F: ILdRf var_174
  loc_CD2352: Ary1StVarCopy
  loc_CD2354: LitVarStr var_254, "Expediente"
  loc_CD2359: LitI4 &HF
  loc_CD235E: ILdRf var_174
  loc_CD2361: Ary1StVarCopy
  loc_CD2363: LitVarStr var_264, "Observaciones"
  loc_CD2368: LitI4 &H10
  loc_CD236D: ILdRf var_174
  loc_CD2370: Ary1StVarCopy
  loc_CD2372: LitVarStr var_274, "Capital"
  loc_CD2377: LitI4 &H11
  loc_CD237C: ILdRf var_174
  loc_CD237F: Ary1StVarCopy
  loc_CD2381: LitVarStr var_284, "Recargo"
  loc_CD2386: LitI4 &H12
  loc_CD238B: ILdRf var_174
  loc_CD238E: Ary1StVarCopy
  loc_CD2390: LitVarStr var_2F4, "Desc. Cap."
  loc_CD2395: LitI4 &H13
  loc_CD239A: ILdRf var_174
  loc_CD239D: Ary1StVarCopy
  loc_CD239F: LitVarStr var_304, "Desc. Recar."
  loc_CD23A4: LitI4 &H14
  loc_CD23A9: ILdRf var_174
  loc_CD23AC: Ary1StVarCopy
  loc_CD23AE: LitVarStr var_314, "Interes"
  loc_CD23B3: LitI4 &H15
  loc_CD23B8: ILdRf var_174
  loc_CD23BB: Ary1StVarCopy
  loc_CD23BD: LitVarStr var_324, "Exencion"
  loc_CD23C2: LitI4 &H16
  loc_CD23C7: ILdRf var_174
  loc_CD23CA: Ary1StVarCopy
  loc_CD23CC: LitVarStr var_334, "Cred. a Favor"
  loc_CD23D1: LitI4 &H17
  loc_CD23D6: ILdRf var_174
  loc_CD23D9: Ary1StVarCopy
  loc_CD23DB: LitVarStr var_344, "Apremio"
  loc_CD23E0: LitI4 &H18
  loc_CD23E5: ILdRf var_174
  loc_CD23E8: Ary1StVarCopy
  loc_CD23EA: LitVarStr var_354, "Total"
  loc_CD23EF: LitI4 &H19
  loc_CD23F4: ILdRf var_174
  loc_CD23F7: Ary1StVarCopy
  loc_CD23F9: LitVarStr var_364, "Usuario"
  loc_CD23FE: LitI4 &H1A
  loc_CD2403: ILdRf var_174
  loc_CD2406: Ary1StVarCopy
  loc_CD2408: FLdRfVar var_174
  loc_CD240B: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD2410: FStStr var_94
  loc_CD2413: FLdRfVar var_174
  loc_CD2416: Erase
  loc_CD2417: FLdZeroAd var_94
  loc_CD241A: CVarStr var_A4
  loc_CD241D: PopAdLdVar
  loc_CD241E: FLdPr Me
  loc_CD2421: MemLdRfVar from_stack_1.global_76
  loc_CD2424: LdPrVar
  loc_CD2426: LateMemCall
  loc_CD242C: FFree1Var var_A4 = ""
  loc_CD242F: LitI4 0
  loc_CD2434: FLdPr Me
  loc_CD2437: MemStI4 global_124
  loc_CD243A: FLdRfVar var_8E
  loc_CD243D: FLdPr var_2E4
  loc_CD2440: from_stack_1 = clsctacte.EOF
  loc_CD2445: FLdI2 var_8E
  loc_CD2448: NotI4
  loc_CD2449: BranchF loc_CD2ACD
  loc_CD244C: FLdPr Me
  loc_CD244F: MemLdStr global_124
  loc_CD2452: LitI4 1
  loc_CD2457: AddI4
  loc_CD2458: FLdPr Me
  loc_CD245B: MemStI4 global_124
  loc_CD245E: FLdPr Me
  loc_CD2461: MemLdStr global_124
  loc_CD2464: CR8I4
  loc_CD2465: CVarR4
  loc_CD2469: PopAdLdVar
  loc_CD246A: FLdPrThis
  loc_CD246B: VCallAd Control_ID_Pbar
  loc_CD246E: FStAdFunc var_8C
  loc_CD2471: FLdPr var_8C
  loc_CD2474: LateIdSt
  loc_CD2479: FFree1Ad var_8C
  loc_CD247C: LitI4 0
  loc_CD2481: LitI4 &H1B
  loc_CD2486: FLdRfVar var_174
  loc_CD2489: Redim
  loc_CD2493: LitVarStr var_374, "|"
  loc_CD2498: LitI4 0
  loc_CD249D: ILdRf var_174
  loc_CD24A0: Ary1StVarCopy
  loc_CD24A2: FLdRfVar var_378
  loc_CD24A5: LitVarStr var_F4, "PeriBole"
  loc_CD24AA: PopAdLdVar
  loc_CD24AB: FLdRfVar var_108
  loc_CD24AE: FLdRfVar var_8C
  loc_CD24B1: FLdPr var_2E4
  loc_CD24B4: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD24B9: FLdPr var_8C
  loc_CD24BC:  = Me.Fields
  loc_CD24C1: FLdPr var_108
  loc_CD24C4: from_stack_2 = Me.Item(from_stack_1)
  loc_CD24C9: FLdZeroAd var_378
  loc_CD24CC: CVarAd
  loc_CD24D0: ParmAry1St
  loc_CD24D6: FLdRfVar var_384
  loc_CD24D9: LitVarStr var_158, "NumeBole"
  loc_CD24DE: PopAdLdVar
  loc_CD24DF: FLdRfVar var_380
  loc_CD24E2: FLdRfVar var_37C
  loc_CD24E5: FLdPr var_2E4
  loc_CD24E8: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD24ED: FLdPr var_37C
  loc_CD24F0:  = Me.Fields
  loc_CD24F5: FLdPr var_380
  loc_CD24F8: from_stack_2 = Me.Item(from_stack_1)
  loc_CD24FD: FLdZeroAd var_384
  loc_CD2500: CVarAd
  loc_CD2504: ParmAry1St
  loc_CD250A: FLdRfVar var_390
  loc_CD250D: LitVarStr var_184, "CodiOfic"
  loc_CD2512: PopAdLdVar
  loc_CD2513: FLdRfVar var_38C
  loc_CD2516: FLdRfVar var_388
  loc_CD2519: FLdPr var_2E4
  loc_CD251C: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2521: FLdPr var_388
  loc_CD2524:  = Me.Fields
  loc_CD2529: FLdPr var_38C
  loc_CD252C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2531: FLdZeroAd var_390
  loc_CD2534: CVarAd
  loc_CD2538: ParmAry1St
  loc_CD253E: FLdRfVar var_39C
  loc_CD2541: LitVarStr var_194, "CuenCtct"
  loc_CD2546: PopAdLdVar
  loc_CD2547: FLdRfVar var_398
  loc_CD254A: FLdRfVar var_394
  loc_CD254D: FLdPr var_2E4
  loc_CD2550: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2555: FLdPr var_394
  loc_CD2558:  = Me.Fields
  loc_CD255D: FLdPr var_398
  loc_CD2560: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2565: FLdZeroAd var_39C
  loc_CD2568: CVarAd
  loc_CD256C: ParmAry1St
  loc_CD2572: FLdRfVar var_3A8
  loc_CD2575: LitVarStr var_1A4, "CucuPers"
  loc_CD257A: PopAdLdVar
  loc_CD257B: FLdRfVar var_3A4
  loc_CD257E: FLdRfVar var_3A0
  loc_CD2581: FLdPr var_2E4
  loc_CD2584: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2589: FLdPr var_3A0
  loc_CD258C:  = Me.Fields
  loc_CD2591: FLdPr var_3A4
  loc_CD2594: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2599: FLdZeroAd var_3A8
  loc_CD259C: CVarAd
  loc_CD25A0: ParmAry1St
  loc_CD25A6: FLdRfVar var_3B4
  loc_CD25A9: LitVarStr var_1B4, "FealBole"
  loc_CD25AE: PopAdLdVar
  loc_CD25AF: FLdRfVar var_3B0
  loc_CD25B2: FLdRfVar var_3AC
  loc_CD25B5: FLdPr var_2E4
  loc_CD25B8: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD25BD: FLdPr var_3AC
  loc_CD25C0:  = Me.Fields
  loc_CD25C5: FLdPr var_3B0
  loc_CD25C8: from_stack_2 = Me.Item(from_stack_1)
  loc_CD25CD: FLdZeroAd var_3B4
  loc_CD25D0: CVarAd
  loc_CD25D4: ParmAry1St
  loc_CD25DA: FLdRfVar var_3C0
  loc_CD25DD: LitVarStr var_1C4, "FeveBole"
  loc_CD25E2: PopAdLdVar
  loc_CD25E3: FLdRfVar var_3BC
  loc_CD25E6: FLdRfVar var_3B8
  loc_CD25E9: FLdPr var_2E4
  loc_CD25EC: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD25F1: FLdPr var_3B8
  loc_CD25F4:  = Me.Fields
  loc_CD25F9: FLdPr var_3BC
  loc_CD25FC: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2601: FLdZeroAd var_3C0
  loc_CD2604: CVarAd
  loc_CD2608: ParmAry1St
  loc_CD260E: FLdRfVar var_3CC
  loc_CD2611: LitVarStr var_1D4, "CodiEnre"
  loc_CD2616: PopAdLdVar
  loc_CD2617: FLdRfVar var_3C8
  loc_CD261A: FLdRfVar var_3C4
  loc_CD261D: FLdPr var_2E4
  loc_CD2620: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2625: FLdPr var_3C4
  loc_CD2628:  = Me.Fields
  loc_CD262D: FLdPr var_3C8
  loc_CD2630: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2635: FLdZeroAd var_3CC
  loc_CD2638: CVarAd
  loc_CD263C: ParmAry1St
  loc_CD2642: FLdRfVar var_3D8
  loc_CD2645: LitVarStr var_1E4, "EstaBole"
  loc_CD264A: PopAdLdVar
  loc_CD264B: FLdRfVar var_3D4
  loc_CD264E: FLdRfVar var_3D0
  loc_CD2651: FLdPr var_2E4
  loc_CD2654: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2659: FLdPr var_3D0
  loc_CD265C:  = Me.Fields
  loc_CD2661: FLdPr var_3D4
  loc_CD2664: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2669: FLdZeroAd var_3D8
  loc_CD266C: CVarAd
  loc_CD2670: ParmAry1St
  loc_CD2676: FLdRfVar var_3E4
  loc_CD2679: LitVarStr var_1F4, "FeanBole"
  loc_CD267E: PopAdLdVar
  loc_CD267F: FLdRfVar var_3E0
  loc_CD2682: FLdRfVar var_3DC
  loc_CD2685: FLdPr var_2E4
  loc_CD2688: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD268D: FLdPr var_3DC
  loc_CD2690:  = Me.Fields
  loc_CD2695: FLdPr var_3E0
  loc_CD2698: from_stack_2 = Me.Item(from_stack_1)
  loc_CD269D: FLdZeroAd var_3E4
  loc_CD26A0: CVarAd
  loc_CD26A4: ParmAry1St
  loc_CD26AA: FLdRfVar var_3F0
  loc_CD26AD: LitVarStr var_204, "MoanBole"
  loc_CD26B2: PopAdLdVar
  loc_CD26B3: FLdRfVar var_3EC
  loc_CD26B6: FLdRfVar var_3E8
  loc_CD26B9: FLdPr var_2E4
  loc_CD26BC: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD26C1: FLdPr var_3E8
  loc_CD26C4:  = Me.Fields
  loc_CD26C9: FLdPr var_3EC
  loc_CD26CC: from_stack_2 = Me.Item(from_stack_1)
  loc_CD26D1: FLdZeroAd var_3F0
  loc_CD26D4: CVarAd
  loc_CD26D8: ParmAry1St
  loc_CD26DE: FLdRfVar var_3FC
  loc_CD26E1: LitVarStr var_214, "AnulUsua"
  loc_CD26E6: PopAdLdVar
  loc_CD26E7: FLdRfVar var_3F8
  loc_CD26EA: FLdRfVar var_3F4
  loc_CD26ED: FLdPr var_2E4
  loc_CD26F0: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD26F5: FLdPr var_3F4
  loc_CD26F8:  = Me.Fields
  loc_CD26FD: FLdPr var_3F8
  loc_CD2700: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2705: FLdZeroAd var_3FC
  loc_CD2708: CVarAd
  loc_CD270C: ParmAry1St
  loc_CD2712: FLdRfVar var_408
  loc_CD2715: LitVarStr var_224, "CodiTili"
  loc_CD271A: PopAdLdVar
  loc_CD271B: FLdRfVar var_404
  loc_CD271E: FLdRfVar var_400
  loc_CD2721: FLdPr var_2E4
  loc_CD2724: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2729: FLdPr var_400
  loc_CD272C:  = Me.Fields
  loc_CD2731: FLdPr var_404
  loc_CD2734: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2739: FLdZeroAd var_408
  loc_CD273C: CVarAd
  loc_CD2740: ParmAry1St
  loc_CD2746: FLdRfVar var_414
  loc_CD2749: LitVarStr var_234, "CodiFapa"
  loc_CD274E: PopAdLdVar
  loc_CD274F: FLdRfVar var_410
  loc_CD2752: FLdRfVar var_40C
  loc_CD2755: FLdPr var_2E4
  loc_CD2758: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD275D: FLdPr var_40C
  loc_CD2760:  = Me.Fields
  loc_CD2765: FLdPr var_410
  loc_CD2768: from_stack_2 = Me.Item(from_stack_1)
  loc_CD276D: FLdZeroAd var_414
  loc_CD2770: CVarAd
  loc_CD2774: ParmAry1St
  loc_CD277A: FLdRfVar var_420
  loc_CD277D: LitVarStr var_244, "ExpeBole"
  loc_CD2782: PopAdLdVar
  loc_CD2783: FLdRfVar var_41C
  loc_CD2786: FLdRfVar var_418
  loc_CD2789: FLdPr var_2E4
  loc_CD278C: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2791: FLdPr var_418
  loc_CD2794:  = Me.Fields
  loc_CD2799: FLdPr var_41C
  loc_CD279C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD27A1: FLdZeroAd var_420
  loc_CD27A4: CVarAd
  loc_CD27A8: ParmAry1St
  loc_CD27AE: FLdRfVar var_42C
  loc_CD27B1: LitVarStr var_254, "ObseBole"
  loc_CD27B6: PopAdLdVar
  loc_CD27B7: FLdRfVar var_428
  loc_CD27BA: FLdRfVar var_424
  loc_CD27BD: FLdPr var_2E4
  loc_CD27C0: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD27C5: FLdPr var_424
  loc_CD27C8:  = Me.Fields
  loc_CD27CD: FLdPr var_428
  loc_CD27D0: from_stack_2 = Me.Item(from_stack_1)
  loc_CD27D5: FLdZeroAd var_42C
  loc_CD27D8: CVarAd
  loc_CD27DC: ParmAry1St
  loc_CD27E2: FLdRfVar var_438
  loc_CD27E5: LitVarStr var_264, "CapiBole"
  loc_CD27EA: PopAdLdVar
  loc_CD27EB: FLdRfVar var_434
  loc_CD27EE: FLdRfVar var_430
  loc_CD27F1: FLdPr var_2E4
  loc_CD27F4: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD27F9: FLdPr var_430
  loc_CD27FC:  = Me.Fields
  loc_CD2801: FLdPr var_434
  loc_CD2804: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2809: FLdZeroAd var_438
  loc_CD280C: CVarAd
  loc_CD2810: ParmAry1St
  loc_CD2816: FLdRfVar var_444
  loc_CD2819: LitVarStr var_274, "RecaBole"
  loc_CD281E: PopAdLdVar
  loc_CD281F: FLdRfVar var_440
  loc_CD2822: FLdRfVar var_43C
  loc_CD2825: FLdPr var_2E4
  loc_CD2828: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD282D: FLdPr var_43C
  loc_CD2830:  = Me.Fields
  loc_CD2835: FLdPr var_440
  loc_CD2838: from_stack_2 = Me.Item(from_stack_1)
  loc_CD283D: FLdZeroAd var_444
  loc_CD2840: CVarAd
  loc_CD2844: ParmAry1St
  loc_CD284A: FLdRfVar var_450
  loc_CD284D: LitVarStr var_284, "DecaBole"
  loc_CD2852: PopAdLdVar
  loc_CD2853: FLdRfVar var_44C
  loc_CD2856: FLdRfVar var_448
  loc_CD2859: FLdPr var_2E4
  loc_CD285C: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2861: FLdPr var_448
  loc_CD2864:  = Me.Fields
  loc_CD2869: FLdPr var_44C
  loc_CD286C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2871: FLdZeroAd var_450
  loc_CD2874: CVarAd
  loc_CD2878: ParmAry1St
  loc_CD287E: FLdRfVar var_45C
  loc_CD2881: LitVarStr var_2F4, "DereBole"
  loc_CD2886: PopAdLdVar
  loc_CD2887: FLdRfVar var_458
  loc_CD288A: FLdRfVar var_454
  loc_CD288D: FLdPr var_2E4
  loc_CD2890: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2895: FLdPr var_454
  loc_CD2898:  = Me.Fields
  loc_CD289D: FLdPr var_458
  loc_CD28A0: from_stack_2 = Me.Item(from_stack_1)
  loc_CD28A5: FLdZeroAd var_45C
  loc_CD28A8: CVarAd
  loc_CD28AC: ParmAry1St
  loc_CD28B2: FLdRfVar var_468
  loc_CD28B5: LitVarStr var_304, "InteBole"
  loc_CD28BA: PopAdLdVar
  loc_CD28BB: FLdRfVar var_464
  loc_CD28BE: FLdRfVar var_460
  loc_CD28C1: FLdPr var_2E4
  loc_CD28C4: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD28C9: FLdPr var_460
  loc_CD28CC:  = Me.Fields
  loc_CD28D1: FLdPr var_464
  loc_CD28D4: from_stack_2 = Me.Item(from_stack_1)
  loc_CD28D9: FLdZeroAd var_468
  loc_CD28DC: CVarAd
  loc_CD28E0: ParmAry1St
  loc_CD28E6: FLdRfVar var_474
  loc_CD28E9: LitVarStr var_314, "ExenBole"
  loc_CD28EE: PopAdLdVar
  loc_CD28EF: FLdRfVar var_470
  loc_CD28F2: FLdRfVar var_46C
  loc_CD28F5: FLdPr var_2E4
  loc_CD28F8: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD28FD: FLdPr var_46C
  loc_CD2900:  = Me.Fields
  loc_CD2905: FLdPr var_470
  loc_CD2908: from_stack_2 = Me.Item(from_stack_1)
  loc_CD290D: FLdZeroAd var_474
  loc_CD2910: CVarAd
  loc_CD2914: ParmAry1St
  loc_CD291A: FLdRfVar var_480
  loc_CD291D: LitVarStr var_324, "CrafBole"
  loc_CD2922: PopAdLdVar
  loc_CD2923: FLdRfVar var_47C
  loc_CD2926: FLdRfVar var_478
  loc_CD2929: FLdPr var_2E4
  loc_CD292C: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2931: FLdPr var_478
  loc_CD2934:  = Me.Fields
  loc_CD2939: FLdPr var_47C
  loc_CD293C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2941: FLdZeroAd var_480
  loc_CD2944: CVarAd
  loc_CD2948: ParmAry1St
  loc_CD294E: FLdRfVar var_48C
  loc_CD2951: LitVarStr var_334, "ApreBole"
  loc_CD2956: PopAdLdVar
  loc_CD2957: FLdRfVar var_488
  loc_CD295A: FLdRfVar var_484
  loc_CD295D: FLdPr var_2E4
  loc_CD2960: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2965: FLdPr var_484
  loc_CD2968:  = Me.Fields
  loc_CD296D: FLdPr var_488
  loc_CD2970: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2975: FLdZeroAd var_48C
  loc_CD2978: CVarAd
  loc_CD297C: ParmAry1St
  loc_CD2982: FLdRfVar var_498
  loc_CD2985: LitVarStr var_344, "TotaBole"
  loc_CD298A: PopAdLdVar
  loc_CD298B: FLdRfVar var_494
  loc_CD298E: FLdRfVar var_490
  loc_CD2991: FLdPr var_2E4
  loc_CD2994: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2999: FLdPr var_490
  loc_CD299C:  = Me.Fields
  loc_CD29A1: FLdPr var_494
  loc_CD29A4: from_stack_2 = Me.Item(from_stack_1)
  loc_CD29A9: FLdZeroAd var_498
  loc_CD29AC: CVarAd
  loc_CD29B0: ParmAry1St
  loc_CD29B6: FLdRfVar var_4A4
  loc_CD29B9: LitVarStr var_354, "TotaBole"
  loc_CD29BE: PopAdLdVar
  loc_CD29BF: FLdRfVar var_4A0
  loc_CD29C2: FLdRfVar var_49C
  loc_CD29C5: FLdPr var_2E4
  loc_CD29C8: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD29CD: FLdPr var_49C
  loc_CD29D0:  = Me.Fields
  loc_CD29D5: FLdPr var_4A0
  loc_CD29D8: from_stack_2 = Me.Item(from_stack_1)
  loc_CD29DD: FLdZeroAd var_4A4
  loc_CD29E0: CVarAd
  loc_CD29E4: ParmAry1St
  loc_CD29EA: FLdRfVar var_4B0
  loc_CD29ED: LitVarStr var_364, "CodiUsua"
  loc_CD29F2: PopAdLdVar
  loc_CD29F3: FLdRfVar var_4AC
  loc_CD29F6: FLdRfVar var_4A8
  loc_CD29F9: FLdPr var_2E4
  loc_CD29FC: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2A01: FLdPr var_4A8
  loc_CD2A04:  = Me.Fields
  loc_CD2A09: FLdPr var_4AC
  loc_CD2A0C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD2A11: FLdZeroAd var_4B0
  loc_CD2A14: CVarAd
  loc_CD2A18: ParmAry1St
  loc_CD2A1E: FLdRfVar var_174
  loc_CD2A21: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD2A26: FStStr var_94
  loc_CD2A29: FLdRfVar var_174
  loc_CD2A2C: Erase
  loc_CD2A2D: FLdZeroAd var_94
  loc_CD2A30: CVarStr var_5C0
  loc_CD2A33: PopAdLdVar
  loc_CD2A34: FLdPr Me
  loc_CD2A37: MemLdRfVar from_stack_1.global_76
  loc_CD2A3A: LdPrVar
  loc_CD2A3C: LateMemCall
  loc_CD2A42: FFreeAd var_424 = "": var_428 = "": var_430 = "": var_434 = "": var_43C = "": var_440 = "": var_448 = "": var_44C = "": var_454 = "": var_458 = "": var_460 = "": var_464 = "": var_46C = "": var_470 = "": var_478 = "": var_47C = "": var_484 = "": var_488 = "": var_490 = "": var_494 = "": var_49C = "": var_4A0 = "": var_4A8 = "": var_4AC = "": var_8C = "": var_108 = "": var_37C = "": var_380 = "": var_388 = "": var_38C = "": var_394 = "": var_398 = "": var_3A0 = "": var_3A4 = "": var_3AC = "": var_3B0 = "": var_3B8 = "": var_3BC = "": var_3C4 = "": var_3C8 = "": var_3D0 = "": var_3D4 = "": var_3DC = "": var_3E0 = "": var_3E8 = "": var_3EC = "": var_3F4 = "": var_3F8 = "": var_400 = "": var_404 = "": var_40C = "": var_410 = "": var_418 = ""
  loc_CD2AB1: FFree1Var var_5C0 = ""
  loc_CD2AB4: FLdRfVar var_8C
  loc_CD2AB7: FLdPr var_2E4
  loc_CD2ABA: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2ABF: FLdPr var_8C
  loc_CD2AC2: Me.MoveNext
  loc_CD2AC7: FFree1Ad var_8C
  loc_CD2ACA: Branch loc_CD243A
  loc_CD2ACD: LitVar_FALSE
  loc_CD2AD1: PopAdLdVar
  loc_CD2AD2: FLdPrThis
  loc_CD2AD3: VCallAd Control_ID_Pbar
  loc_CD2AD6: FStAdFunc var_8C
  loc_CD2AD9: FLdPr var_8C
  loc_CD2ADC: LateIdSt
  loc_CD2AE1: FFree1Ad var_8C
  loc_CD2AE4: LitNothing
  loc_CD2AE6: FStAd var_2E4 
  loc_CD2AEA: FLdRfVar var_8E
  loc_CD2AED: FLdPr Me
  loc_CD2AF0: VCallAd Control_ID_OptDetalledelBoleto
  loc_CD2AF3: FStAdFunc var_8C
  loc_CD2AF6: FLdPr var_8C
  loc_CD2AF9:  = Me.Value
  loc_CD2AFE: FLdI2 var_8E
  loc_CD2B01: FFree1Ad var_8C
  loc_CD2B04: BranchF loc_CD3536
  loc_CD2B07: FLdRfVar var_8C
  loc_CD2B0A: LitI2_Byte 0
  loc_CD2B0C: LitI2_Byte &HFF
  loc_CD2B0E: ImpAdLdI4 MemVar_D93030
  loc_CD2B11: FLdPr Me
  loc_CD2B14: MemLdRfVar from_stack_1.global_56
  loc_CD2B17: NewIfNullPr IFileSystem3
  loc_CD2B1A: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_CD2B1F: ILdRf var_8C
  loc_CD2B22: FLdPr Me
  loc_CD2B25: MemStVarAd
  loc_CD2B29: FFree1Ad var_8C
  loc_CD2B2C: FLdPr Me
  loc_CD2B2F: MemLdRfVar from_stack_1.global_92
  loc_CD2B32: NewIfNullAd
  loc_CD2B35: FStAd var_5D4 
  loc_CD2B39: FLdPr Me
  loc_CD2B3C: MemLdStr global_104
  loc_CD2B3F: LitI2_Byte 1
  loc_CD2B41: FnUBound
  loc_CD2B43: LitI4 0
  loc_CD2B48: EqI4
  loc_CD2B49: BranchF loc_CD2BAB
  loc_CD2B4C: LitI4 0
  loc_CD2B51: LitI4 1
  loc_CD2B56: FLdRfVar var_174
  loc_CD2B59: Redim
  loc_CD2B63: LitVarStr var_F4, "|"
  loc_CD2B68: LitI4 0
  loc_CD2B6D: ILdRf var_174
  loc_CD2B70: Ary1StVarCopy
  loc_CD2B72: LitVarStr var_158, "SIN MOVIMIENTO"
  loc_CD2B77: LitI4 1
  loc_CD2B7C: ILdRf var_174
  loc_CD2B7F: Ary1StVarCopy
  loc_CD2B81: FLdRfVar var_174
  loc_CD2B84: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD2B89: FStStr var_94
  loc_CD2B8C: FLdRfVar var_174
  loc_CD2B8F: Erase
  loc_CD2B90: FLdZeroAd var_94
  loc_CD2B93: CVarStr var_A4
  loc_CD2B96: PopAdLdVar
  loc_CD2B97: FLdPr Me
  loc_CD2B9A: MemLdRfVar from_stack_1.global_76
  loc_CD2B9D: LdPrVar
  loc_CD2B9F: LateMemCall
  loc_CD2BA5: FFree1Var var_A4 = ""
  loc_CD2BA8: Branch loc_CD3530
  loc_CD2BAB: LitI4 0
  loc_CD2BB0: LitI4 &H1D
  loc_CD2BB5: FLdRfVar var_174
  loc_CD2BB8: Redim
  loc_CD2BC2: LitVarStr var_F4, "|"
  loc_CD2BC7: LitI4 0
  loc_CD2BCC: ILdRf var_174
  loc_CD2BCF: Ary1StVarCopy
  loc_CD2BD1: LitVarStr var_158, "Periodo"
  loc_CD2BD6: LitI4 1
  loc_CD2BDB: ILdRf var_174
  loc_CD2BDE: Ary1StVarCopy
  loc_CD2BE0: LitVarStr var_184, "Numero"
  loc_CD2BE5: LitI4 2
  loc_CD2BEA: ILdRf var_174
  loc_CD2BED: Ary1StVarCopy
  loc_CD2BEF: LitVarStr var_194, "Periodo"
  loc_CD2BF4: LitI4 3
  loc_CD2BF9: ILdRf var_174
  loc_CD2BFC: Ary1StVarCopy
  loc_CD2BFE: LitVarStr var_1A4, "Bimest."
  loc_CD2C03: LitI4 4
  loc_CD2C08: ILdRf var_174
  loc_CD2C0B: Ary1StVarCopy
  loc_CD2C0D: LitVarStr var_1B4, "Nro"
  loc_CD2C12: LitI4 5
  loc_CD2C17: ILdRf var_174
  loc_CD2C1A: Ary1StVarCopy
  loc_CD2C1C: LitVarStr var_1C4, "Mov."
  loc_CD2C21: LitI4 6
  loc_CD2C26: ILdRf var_174
  loc_CD2C29: Ary1StVarCopy
  loc_CD2C2B: LitVarStr var_1D4, "Mov. Deb."
  loc_CD2C30: LitI4 7
  loc_CD2C35: ILdRf var_174
  loc_CD2C38: Ary1StVarCopy
  loc_CD2C3A: LitVarStr var_1E4, "Cod. Tili"
  loc_CD2C3F: LitI4 8
  loc_CD2C44: ILdRf var_174
  loc_CD2C47: Ary1StVarCopy
  loc_CD2C49: LitVarStr var_1F4, "Nro Liqu"
  loc_CD2C4E: LitI4 9
  loc_CD2C53: ILdRf var_174
  loc_CD2C56: Ary1StVarCopy
  loc_CD2C58: LitVarStr var_204, "Of."
  loc_CD2C5D: LitI4 &HA
  loc_CD2C62: ILdRf var_174
  loc_CD2C65: Ary1StVarCopy
  loc_CD2C67: LitVarStr var_214, "Cuenta"
  loc_CD2C6C: LitI4 &HB
  loc_CD2C71: ILdRf var_174
  loc_CD2C74: Ary1StVarCopy
  loc_CD2C76: LitVarStr var_224, "Tipo"
  loc_CD2C7B: LitI4 &HC
  loc_CD2C80: ILdRf var_174
  loc_CD2C83: Ary1StVarCopy
  loc_CD2C85: LitVarStr var_234, "Cod. Fac."
  loc_CD2C8A: LitI4 &HD
  loc_CD2C8F: ILdRf var_174
  loc_CD2C92: Ary1StVarCopy
  loc_CD2C94: LitVarStr var_244, "Cuota"
  loc_CD2C99: LitI4 &HE
  loc_CD2C9E: ILdRf var_174
  loc_CD2CA1: Ary1StVarCopy
  loc_CD2CA3: LitVarStr var_254, "Apremio"
  loc_CD2CA8: LitI4 &HF
  loc_CD2CAD: ILdRf var_174
  loc_CD2CB0: Ary1StVarCopy
  loc_CD2CB2: LitVarStr var_264, "Tipo Mov."
  loc_CD2CB7: LitI4 &H10
  loc_CD2CBC: ILdRf var_174
  loc_CD2CBF: Ary1StVarCopy
  loc_CD2CC1: LitVarStr var_274, "Periodo"
  loc_CD2CC6: LitI4 &H11
  loc_CD2CCB: ILdRf var_174
  loc_CD2CCE: Ary1StVarCopy
  loc_CD2CD0: LitVarStr var_284, "Concepto"
  loc_CD2CD5: LitI4 &H12
  loc_CD2CDA: ILdRf var_174
  loc_CD2CDD: Ary1StVarCopy
  loc_CD2CDF: LitVarStr var_2F4, "Cantidad"
  loc_CD2CE4: LitI4 &H13
  loc_CD2CE9: ILdRf var_174
  loc_CD2CEC: Ary1StVarCopy
  loc_CD2CEE: LitVarStr var_304, "Observaciones"
  loc_CD2CF3: LitI4 &H14
  loc_CD2CF8: ILdRf var_174
  loc_CD2CFB: Ary1StVarCopy
  loc_CD2CFD: LitVarStr var_314, "Capital"
  loc_CD2D02: LitI4 &H15
  loc_CD2D07: ILdRf var_174
  loc_CD2D0A: Ary1StVarCopy
  loc_CD2D0C: LitVarStr var_324, "Desc. Cap."
  loc_CD2D11: LitI4 &H16
  loc_CD2D16: ILdRf var_174
  loc_CD2D19: Ary1StVarCopy
  loc_CD2D1B: LitVarStr var_334, "Recargo"
  loc_CD2D20: LitI4 &H17
  loc_CD2D25: ILdRf var_174
  loc_CD2D28: Ary1StVarCopy
  loc_CD2D2A: LitVarStr var_344, "Desc. Recargo"
  loc_CD2D2F: LitI4 &H18
  loc_CD2D34: ILdRf var_174
  loc_CD2D37: Ary1StVarCopy
  loc_CD2D39: LitVarStr var_354, "Interes"
  loc_CD2D3E: LitI4 &H19
  loc_CD2D43: ILdRf var_174
  loc_CD2D46: Ary1StVarCopy
  loc_CD2D48: LitVarStr var_364, "Exencion"
  loc_CD2D4D: LitI4 &H1A
  loc_CD2D52: ILdRf var_174
  loc_CD2D55: Ary1StVarCopy
  loc_CD2D57: LitVarStr var_374, "Cred. a Favor"
  loc_CD2D5C: LitI4 &H1B
  loc_CD2D61: ILdRf var_174
  loc_CD2D64: Ary1StVarCopy
  loc_CD2D66: LitVarStr var_5D0, "Apremio"
  loc_CD2D6B: LitI4 &H1C
  loc_CD2D70: ILdRf var_174
  loc_CD2D73: Ary1StVarCopy
  loc_CD2D75: LitVarStr var_5E4, "Total"
  loc_CD2D7A: LitI4 &H1D
  loc_CD2D7F: ILdRf var_174
  loc_CD2D82: Ary1StVarCopy
  loc_CD2D84: FLdRfVar var_174
  loc_CD2D87: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD2D8C: FStStr var_94
  loc_CD2D8F: FLdRfVar var_174
  loc_CD2D92: Erase
  loc_CD2D93: FLdZeroAd var_94
  loc_CD2D96: CVarStr var_A4
  loc_CD2D99: PopAdLdVar
  loc_CD2D9A: FLdPr Me
  loc_CD2D9D: MemLdRfVar from_stack_1.global_76
  loc_CD2DA0: LdPrVar
  loc_CD2DA2: LateMemCall
  loc_CD2DA8: FFree1Var var_A4 = ""
  loc_CD2DAB: LitVar_TRUE var_F4
  loc_CD2DAE: PopAdLdVar
  loc_CD2DAF: FLdPrThis
  loc_CD2DB0: VCallAd Control_ID_Pbar
  loc_CD2DB3: FStAdFunc var_8C
  loc_CD2DB6: FLdPr var_8C
  loc_CD2DB9: LateIdSt
  loc_CD2DBE: FFree1Ad var_8C
  loc_CD2DC1: LitI2_Byte &H64
  loc_CD2DC3: CR8I2
  loc_CD2DC4: CVarR4
  loc_CD2DC8: PopAdLdVar
  loc_CD2DC9: FLdPrThis
  loc_CD2DCA: VCallAd Control_ID_Pbar
  loc_CD2DCD: FStAdFunc var_8C
  loc_CD2DD0: FLdPr var_8C
  loc_CD2DD3: LateIdSt
  loc_CD2DD8: FFree1Ad var_8C
  loc_CD2DDB: LitI2_Byte 1
  loc_CD2DDD: FLdPr Me
  loc_CD2DE0: MemLdRfVar from_stack_1.global_140
  loc_CD2DE3: FLdPr Me
  loc_CD2DE6: MemLdStr global_104
  loc_CD2DE9: LitI2_Byte 1
  loc_CD2DEB: FnUBound
  loc_CD2DED: CI2I4
  loc_CD2DEE: ForI2 var_5F8
  loc_CD2DF4: LitStr "SELECT db.PeriBole, db.NumeBole, db.PeriCtct, db.BimeCtct, db.NumeCtct, db.MoviCtct, db.MoviDebo, db.CodiTili, db.NumeLiqu, db.CodiOfic, db.CuenCtct, "
  loc_CD2DF7: LitStr " db.TipoCtct, db.CodiFapa, db.CuotDefa, db.NumeApre, db.CodiTimo, db.PeriInfo, db.CodiConc, db.CantDebo, ifnull(db.ObseDebo,'') ObseDebo, db.CapiDebo, db.DecaDebo, db.RecaDebo,"
  loc_CD2DFA: ConcatStr
  loc_CD2DFB: FStStrNoPop var_94
  loc_CD2DFE: LitStr " db.DereDebo, db.InteDebo, db.ExenDebo, db.CrafDebo, db.ApreDebo, db.TotaDebo"
  loc_CD2E01: ConcatStr
  loc_CD2E02: FStStrNoPop var_29C
  loc_CD2E05: LitStr " FROM detabole as db"
  loc_CD2E08: ConcatStr
  loc_CD2E09: FStStrNoPop var_2A4
  loc_CD2E0C: LitStr " INNER JOIN boleto as b ON b.PeriBole = db.PeriBole AND b.NumeBole = db.NumeBole"
  loc_CD2E0F: ConcatStr
  loc_CD2E10: FStStrNoPop var_2B4
  loc_CD2E13: LitStr " WHERE b.FealBole BETWEEN "
  loc_CD2E16: ConcatStr
  loc_CD2E17: FStStrNoPop var_2CC
  loc_CD2E1A: LitI4 1
  loc_CD2E1F: LitI4 1
  loc_CD2E24: LitVarStr var_158, "'yyyy-mm-dd'"
  loc_CD2E29: FStVarCopyObj var_A4
  loc_CD2E2C: FLdRfVar var_A4
  loc_CD2E2F: FLdPr Me
  loc_CD2E32: MemLdI2 global_140
  loc_CD2E35: CI4UI1
  loc_CD2E36: FLdPr Me
  loc_CD2E39: MemLdStr global_104
  loc_CD2E3C: AryLock
  loc_CD2E3F: Ary1LdPr
  loc_CD2E40: MemLdRfVar from_stack_1.global_0
  loc_CD2E43: CVarRef
  loc_CD2E48: ImpAdCallI2 Format$(, )
  loc_CD2E4D: FStStr var_2C0
  loc_CD2E50: AryUnlock
  loc_CD2E53: ILdRf var_2C0
  loc_CD2E56: ConcatStr
  loc_CD2E57: FStStrNoPop var_2D0
  loc_CD2E5A: LitStr " AND "
  loc_CD2E5D: ConcatStr
  loc_CD2E5E: FStStrNoPop var_608
  loc_CD2E61: LitI4 1
  loc_CD2E66: LitI4 1
  loc_CD2E6B: LitVarStr var_194, "'yyyy-mm-dd'"
  loc_CD2E70: FStVarCopyObj var_B4
  loc_CD2E73: FLdRfVar var_B4
  loc_CD2E76: FLdPr Me
  loc_CD2E79: MemLdI2 global_140
  loc_CD2E7C: CI4UI1
  loc_CD2E7D: FLdPr Me
  loc_CD2E80: MemLdStr global_104
  loc_CD2E83: AryLock
  loc_CD2E86: Ary1LdPr
  loc_CD2E87: MemLdRfVar from_stack_1.global_4
  loc_CD2E8A: CVarRef
  loc_CD2E8F: ImpAdCallI2 Format$(, )
  loc_CD2E94: FStStr var_604
  loc_CD2E97: AryUnlock
  loc_CD2E9A: ILdRf var_604
  loc_CD2E9D: ConcatStr
  loc_CD2E9E: FStStrNoPop var_60C
  loc_CD2EA1: FLdPr var_5D4
  loc_CD2EA4: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD2EA9: FFreeStr var_94 = "": var_29C = "": var_2A4 = "": var_2B4 = "": var_2CC = "": var_2C0 = "": var_2D0 = "": var_608 = "": var_604 = ""
  loc_CD2EC0: FFreeVar var_A4 = ""
  loc_CD2EC7: FLdRfVar var_170
  loc_CD2ECA: FLdPr var_5D4
  loc_CD2ECD: from_stack_1 = clsctacte.RecordCount
  loc_CD2ED2: ILdRf var_170
  loc_CD2ED5: LitI4 0
  loc_CD2EDA: GtI4
  loc_CD2EDB: BranchF loc_CD350E
  loc_CD2EDE: FLdPr var_5D4
  loc_CD2EE1: Call clsctacte.MoveFirst()
  loc_CD2EE6: LitI4 1
  loc_CD2EEB: FLdPr Me
  loc_CD2EEE: MemLdRfVar from_stack_1.global_128
  loc_CD2EF1: FLdRfVar var_170
  loc_CD2EF4: FLdPr var_5D4
  loc_CD2EF7: from_stack_1 = clsctacte.RecordCount
  loc_CD2EFC: ILdRf var_170
  loc_CD2EFF: ForI4 var_614
  loc_CD2F05: FLdPr Me
  loc_CD2F08: MemLdStr global_136
  loc_CD2F0B: LitI4 1
  loc_CD2F10: AddI4
  loc_CD2F11: FLdPr Me
  loc_CD2F14: MemStI4 global_136
  loc_CD2F17: LitI4 0
  loc_CD2F1C: FLdPr Me
  loc_CD2F1F: MemLdStr global_136
  loc_CD2F22: CR8I4
  loc_CD2F23: FLdPr Me
  loc_CD2F26: MemLdStr global_132
  loc_CD2F29: CR8I4
  loc_CD2F2A: DivR8
  loc_CD2F2B: LitI2_Byte &H64
  loc_CD2F2D: CR8I2
  loc_CD2F2E: MulR8
  loc_CD2F2F: CVarR8
  loc_CD2F33: FLdRfVar var_B4
  loc_CD2F36: ImpAdCallFPR4  = Round(, )
  loc_CD2F3B: LitI4 0
  loc_CD2F40: FLdPr Me
  loc_CD2F43: MemLdStr global_136
  loc_CD2F46: CR8I4
  loc_CD2F47: FLdPr Me
  loc_CD2F4A: MemLdStr global_132
  loc_CD2F4D: CR8I4
  loc_CD2F4E: DivR8
  loc_CD2F4F: LitI2_Byte &H64
  loc_CD2F51: CR8I2
  loc_CD2F52: MulR8
  loc_CD2F53: CVarR8
  loc_CD2F57: FLdRfVar var_E4
  loc_CD2F5A: ImpAdCallFPR4  = Round(, )
  loc_CD2F5F: FLdRfVar var_E4
  loc_CD2F62: LitVarI2 var_118, 1
  loc_CD2F67: FLdRfVar var_B4
  loc_CD2F6A: LitVarI2 var_158, 0
  loc_CD2F6F: HardType
  loc_CD2F70: EqVar var_C4
  loc_CD2F74: FStVar var_104
  loc_CD2F78: FLdRfVar var_104
  loc_CD2F7B: FLdRfVar var_128
  loc_CD2F7E: ImpAdCallFPR4  = IIf(, , )
  loc_CD2F83: FLdRfVar var_128
  loc_CD2F86: CR8Var
  loc_CD2F88: CVarR4
  loc_CD2F8C: PopAdLdVar
  loc_CD2F8D: FLdPrThis
  loc_CD2F8E: VCallAd Control_ID_Pbar
  loc_CD2F91: FStAdFunc var_8C
  loc_CD2F94: FLdPr var_8C
  loc_CD2F97: LateIdSt
  loc_CD2F9C: FFree1Ad var_8C
  loc_CD2F9F: FFreeVar var_A4 = "": var_B4 = "": var_D4 = "": var_104 = "": var_118 = "": var_E4 = ""
  loc_CD2FB0: FLdRfVar var_8C
  loc_CD2FB3: FLdPr var_5D4
  loc_CD2FB6: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD2FBB: FLdZeroAd var_8C
  loc_CD2FBE: FStAdFunc var_618
  loc_CD2FC1: LitI4 0
  loc_CD2FC6: LitI4 &H1D
  loc_CD2FCB: FLdRfVar var_174
  loc_CD2FCE: Redim
  loc_CD2FD8: LitVarStr var_5E4, "|"
  loc_CD2FDD: LitI4 0
  loc_CD2FE2: ILdRf var_174
  loc_CD2FE5: Ary1StVarCopy
  loc_CD2FE7: FLdRfVar var_108
  loc_CD2FEA: LitVarStr var_F4, "PeriBole"
  loc_CD2FEF: PopAdLdVar
  loc_CD2FF0: FLdRfVar var_8C
  loc_CD2FF3: FLdPr var_618
  loc_CD2FF6:  = Me.Fields
  loc_CD2FFB: FLdPr var_8C
  loc_CD2FFE: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3003: FLdZeroAd var_108
  loc_CD3006: CVarAd
  loc_CD300A: ParmAry1St
  loc_CD3010: FLdRfVar var_37C
  loc_CD3013: LitVarStr var_158, "NumeBole"
  loc_CD3018: PopAdLdVar
  loc_CD3019: FLdRfVar var_378
  loc_CD301C: FLdPr var_618
  loc_CD301F:  = Me.Fields
  loc_CD3024: FLdPr var_378
  loc_CD3027: from_stack_2 = Me.Item(from_stack_1)
  loc_CD302C: FLdZeroAd var_37C
  loc_CD302F: CVarAd
  loc_CD3033: ParmAry1St
  loc_CD3039: FLdRfVar var_384
  loc_CD303C: LitVarStr var_184, "PeriCtct"
  loc_CD3041: PopAdLdVar
  loc_CD3042: FLdRfVar var_380
  loc_CD3045: FLdPr var_618
  loc_CD3048:  = Me.Fields
  loc_CD304D: FLdPr var_380
  loc_CD3050: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3055: FLdZeroAd var_384
  loc_CD3058: CVarAd
  loc_CD305C: ParmAry1St
  loc_CD3062: FLdRfVar var_38C
  loc_CD3065: LitVarStr var_194, "BimeCtct"
  loc_CD306A: PopAdLdVar
  loc_CD306B: FLdRfVar var_388
  loc_CD306E: FLdPr var_618
  loc_CD3071:  = Me.Fields
  loc_CD3076: FLdPr var_388
  loc_CD3079: from_stack_2 = Me.Item(from_stack_1)
  loc_CD307E: FLdZeroAd var_38C
  loc_CD3081: CVarAd
  loc_CD3085: ParmAry1St
  loc_CD308B: FLdRfVar var_394
  loc_CD308E: LitVarStr var_1A4, "NumeCtct"
  loc_CD3093: PopAdLdVar
  loc_CD3094: FLdRfVar var_390
  loc_CD3097: FLdPr var_618
  loc_CD309A:  = Me.Fields
  loc_CD309F: FLdPr var_390
  loc_CD30A2: from_stack_2 = Me.Item(from_stack_1)
  loc_CD30A7: FLdZeroAd var_394
  loc_CD30AA: CVarAd
  loc_CD30AE: ParmAry1St
  loc_CD30B4: FLdRfVar var_39C
  loc_CD30B7: LitVarStr var_1B4, "MoviCtct"
  loc_CD30BC: PopAdLdVar
  loc_CD30BD: FLdRfVar var_398
  loc_CD30C0: FLdPr var_618
  loc_CD30C3:  = Me.Fields
  loc_CD30C8: FLdPr var_398
  loc_CD30CB: from_stack_2 = Me.Item(from_stack_1)
  loc_CD30D0: FLdZeroAd var_39C
  loc_CD30D3: CVarAd
  loc_CD30D7: ParmAry1St
  loc_CD30DD: FLdRfVar var_3A4
  loc_CD30E0: LitVarStr var_1C4, "MoviDebo"
  loc_CD30E5: PopAdLdVar
  loc_CD30E6: FLdRfVar var_3A0
  loc_CD30E9: FLdPr var_618
  loc_CD30EC:  = Me.Fields
  loc_CD30F1: FLdPr var_3A0
  loc_CD30F4: from_stack_2 = Me.Item(from_stack_1)
  loc_CD30F9: FLdZeroAd var_3A4
  loc_CD30FC: CVarAd
  loc_CD3100: ParmAry1St
  loc_CD3106: FLdRfVar var_3AC
  loc_CD3109: LitVarStr var_1D4, "CodiTili"
  loc_CD310E: PopAdLdVar
  loc_CD310F: FLdRfVar var_3A8
  loc_CD3112: FLdPr var_618
  loc_CD3115:  = Me.Fields
  loc_CD311A: FLdPr var_3A8
  loc_CD311D: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3122: FLdZeroAd var_3AC
  loc_CD3125: CVarAd
  loc_CD3129: ParmAry1St
  loc_CD312F: FLdRfVar var_3B4
  loc_CD3132: LitVarStr var_1E4, "NumeLiqu"
  loc_CD3137: PopAdLdVar
  loc_CD3138: FLdRfVar var_3B0
  loc_CD313B: FLdPr var_618
  loc_CD313E:  = Me.Fields
  loc_CD3143: FLdPr var_3B0
  loc_CD3146: from_stack_2 = Me.Item(from_stack_1)
  loc_CD314B: FLdZeroAd var_3B4
  loc_CD314E: CVarAd
  loc_CD3152: ParmAry1St
  loc_CD3158: FLdRfVar var_3BC
  loc_CD315B: LitVarStr var_1F4, "CodiOfic"
  loc_CD3160: PopAdLdVar
  loc_CD3161: FLdRfVar var_3B8
  loc_CD3164: FLdPr var_618
  loc_CD3167:  = Me.Fields
  loc_CD316C: FLdPr var_3B8
  loc_CD316F: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3174: FLdZeroAd var_3BC
  loc_CD3177: CVarAd
  loc_CD317B: ParmAry1St
  loc_CD3181: FLdRfVar var_3C4
  loc_CD3184: LitVarStr var_204, "CuenCtct"
  loc_CD3189: PopAdLdVar
  loc_CD318A: FLdRfVar var_3C0
  loc_CD318D: FLdPr var_618
  loc_CD3190:  = Me.Fields
  loc_CD3195: FLdPr var_3C0
  loc_CD3198: from_stack_2 = Me.Item(from_stack_1)
  loc_CD319D: FLdZeroAd var_3C4
  loc_CD31A0: CVarAd
  loc_CD31A4: ParmAry1St
  loc_CD31AA: FLdRfVar var_3CC
  loc_CD31AD: LitVarStr var_214, "TipoCtct"
  loc_CD31B2: PopAdLdVar
  loc_CD31B3: FLdRfVar var_3C8
  loc_CD31B6: FLdPr var_618
  loc_CD31B9:  = Me.Fields
  loc_CD31BE: FLdPr var_3C8
  loc_CD31C1: from_stack_2 = Me.Item(from_stack_1)
  loc_CD31C6: FLdZeroAd var_3CC
  loc_CD31C9: CVarAd
  loc_CD31CD: ParmAry1St
  loc_CD31D3: FLdRfVar var_3D4
  loc_CD31D6: LitVarStr var_224, "CodiFapa"
  loc_CD31DB: PopAdLdVar
  loc_CD31DC: FLdRfVar var_3D0
  loc_CD31DF: FLdPr var_618
  loc_CD31E2:  = Me.Fields
  loc_CD31E7: FLdPr var_3D0
  loc_CD31EA: from_stack_2 = Me.Item(from_stack_1)
  loc_CD31EF: FLdZeroAd var_3D4
  loc_CD31F2: CVarAd
  loc_CD31F6: ParmAry1St
  loc_CD31FC: FLdRfVar var_3DC
  loc_CD31FF: LitVarStr var_234, "CuotDefa"
  loc_CD3204: PopAdLdVar
  loc_CD3205: FLdRfVar var_3D8
  loc_CD3208: FLdPr var_618
  loc_CD320B:  = Me.Fields
  loc_CD3210: FLdPr var_3D8
  loc_CD3213: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3218: FLdZeroAd var_3DC
  loc_CD321B: CVarAd
  loc_CD321F: ParmAry1St
  loc_CD3225: FLdRfVar var_3E4
  loc_CD3228: LitVarStr var_244, "NumeApre"
  loc_CD322D: PopAdLdVar
  loc_CD322E: FLdRfVar var_3E0
  loc_CD3231: FLdPr var_618
  loc_CD3234:  = Me.Fields
  loc_CD3239: FLdPr var_3E0
  loc_CD323C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3241: FLdZeroAd var_3E4
  loc_CD3244: CVarAd
  loc_CD3248: ParmAry1St
  loc_CD324E: FLdRfVar var_3EC
  loc_CD3251: LitVarStr var_254, "CodiTimo"
  loc_CD3256: PopAdLdVar
  loc_CD3257: FLdRfVar var_3E8
  loc_CD325A: FLdPr var_618
  loc_CD325D:  = Me.Fields
  loc_CD3262: FLdPr var_3E8
  loc_CD3265: from_stack_2 = Me.Item(from_stack_1)
  loc_CD326A: FLdZeroAd var_3EC
  loc_CD326D: CVarAd
  loc_CD3271: ParmAry1St
  loc_CD3277: FLdRfVar var_3F4
  loc_CD327A: LitVarStr var_264, "PeriInfo"
  loc_CD327F: PopAdLdVar
  loc_CD3280: FLdRfVar var_3F0
  loc_CD3283: FLdPr var_618
  loc_CD3286:  = Me.Fields
  loc_CD328B: FLdPr var_3F0
  loc_CD328E: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3293: FLdZeroAd var_3F4
  loc_CD3296: CVarAd
  loc_CD329A: ParmAry1St
  loc_CD32A0: FLdRfVar var_3FC
  loc_CD32A3: LitVarStr var_274, "CodiConc"
  loc_CD32A8: PopAdLdVar
  loc_CD32A9: FLdRfVar var_3F8
  loc_CD32AC: FLdPr var_618
  loc_CD32AF:  = Me.Fields
  loc_CD32B4: FLdPr var_3F8
  loc_CD32B7: from_stack_2 = Me.Item(from_stack_1)
  loc_CD32BC: FLdZeroAd var_3FC
  loc_CD32BF: CVarAd
  loc_CD32C3: ParmAry1St
  loc_CD32C9: FLdRfVar var_404
  loc_CD32CC: LitVarStr var_284, "CantDebo"
  loc_CD32D1: PopAdLdVar
  loc_CD32D2: FLdRfVar var_400
  loc_CD32D5: FLdPr var_618
  loc_CD32D8:  = Me.Fields
  loc_CD32DD: FLdPr var_400
  loc_CD32E0: from_stack_2 = Me.Item(from_stack_1)
  loc_CD32E5: FLdZeroAd var_404
  loc_CD32E8: CVarAd
  loc_CD32EC: ParmAry1St
  loc_CD32F2: FLdRfVar var_40C
  loc_CD32F5: LitVarStr var_2F4, "ObseDebo"
  loc_CD32FA: PopAdLdVar
  loc_CD32FB: FLdRfVar var_408
  loc_CD32FE: FLdPr var_618
  loc_CD3301:  = Me.Fields
  loc_CD3306: FLdPr var_408
  loc_CD3309: from_stack_2 = Me.Item(from_stack_1)
  loc_CD330E: FLdZeroAd var_40C
  loc_CD3311: CVarAd
  loc_CD3315: ParmAry1St
  loc_CD331B: FLdRfVar var_414
  loc_CD331E: LitVarStr var_304, "CapiDebo"
  loc_CD3323: PopAdLdVar
  loc_CD3324: FLdRfVar var_410
  loc_CD3327: FLdPr var_618
  loc_CD332A:  = Me.Fields
  loc_CD332F: FLdPr var_410
  loc_CD3332: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3337: FLdZeroAd var_414
  loc_CD333A: CVarAd
  loc_CD333E: ParmAry1St
  loc_CD3344: FLdRfVar var_41C
  loc_CD3347: LitVarStr var_314, "DecaDebo"
  loc_CD334C: PopAdLdVar
  loc_CD334D: FLdRfVar var_418
  loc_CD3350: FLdPr var_618
  loc_CD3353:  = Me.Fields
  loc_CD3358: FLdPr var_418
  loc_CD335B: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3360: FLdZeroAd var_41C
  loc_CD3363: CVarAd
  loc_CD3367: ParmAry1St
  loc_CD336D: FLdRfVar var_424
  loc_CD3370: LitVarStr var_324, "RecaDebo"
  loc_CD3375: PopAdLdVar
  loc_CD3376: FLdRfVar var_420
  loc_CD3379: FLdPr var_618
  loc_CD337C:  = Me.Fields
  loc_CD3381: FLdPr var_420
  loc_CD3384: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3389: FLdZeroAd var_424
  loc_CD338C: CVarAd
  loc_CD3390: ParmAry1St
  loc_CD3396: FLdRfVar var_42C
  loc_CD3399: LitVarStr var_334, "DereDebo"
  loc_CD339E: PopAdLdVar
  loc_CD339F: FLdRfVar var_428
  loc_CD33A2: FLdPr var_618
  loc_CD33A5:  = Me.Fields
  loc_CD33AA: FLdPr var_428
  loc_CD33AD: from_stack_2 = Me.Item(from_stack_1)
  loc_CD33B2: FLdZeroAd var_42C
  loc_CD33B5: CVarAd
  loc_CD33B9: ParmAry1St
  loc_CD33BF: FLdRfVar var_434
  loc_CD33C2: LitVarStr var_344, "InteDebo"
  loc_CD33C7: PopAdLdVar
  loc_CD33C8: FLdRfVar var_430
  loc_CD33CB: FLdPr var_618
  loc_CD33CE:  = Me.Fields
  loc_CD33D3: FLdPr var_430
  loc_CD33D6: from_stack_2 = Me.Item(from_stack_1)
  loc_CD33DB: FLdZeroAd var_434
  loc_CD33DE: CVarAd
  loc_CD33E2: ParmAry1St
  loc_CD33E8: FLdRfVar var_43C
  loc_CD33EB: LitVarStr var_354, "ExenDebo"
  loc_CD33F0: PopAdLdVar
  loc_CD33F1: FLdRfVar var_438
  loc_CD33F4: FLdPr var_618
  loc_CD33F7:  = Me.Fields
  loc_CD33FC: FLdPr var_438
  loc_CD33FF: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3404: FLdZeroAd var_43C
  loc_CD3407: CVarAd
  loc_CD340B: ParmAry1St
  loc_CD3411: FLdRfVar var_444
  loc_CD3414: LitVarStr var_364, "CrafDebo"
  loc_CD3419: PopAdLdVar
  loc_CD341A: FLdRfVar var_440
  loc_CD341D: FLdPr var_618
  loc_CD3420:  = Me.Fields
  loc_CD3425: FLdPr var_440
  loc_CD3428: from_stack_2 = Me.Item(from_stack_1)
  loc_CD342D: FLdZeroAd var_444
  loc_CD3430: CVarAd
  loc_CD3434: ParmAry1St
  loc_CD343A: FLdRfVar var_44C
  loc_CD343D: LitVarStr var_374, "ApreDebo"
  loc_CD3442: PopAdLdVar
  loc_CD3443: FLdRfVar var_448
  loc_CD3446: FLdPr var_618
  loc_CD3449:  = Me.Fields
  loc_CD344E: FLdPr var_448
  loc_CD3451: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3456: FLdZeroAd var_44C
  loc_CD3459: CVarAd
  loc_CD345D: ParmAry1St
  loc_CD3463: FLdRfVar var_454
  loc_CD3466: LitVarStr var_5D0, "TotaDebo"
  loc_CD346B: PopAdLdVar
  loc_CD346C: FLdRfVar var_450
  loc_CD346F: FLdPr var_618
  loc_CD3472:  = Me.Fields
  loc_CD3477: FLdPr var_450
  loc_CD347A: from_stack_2 = Me.Item(from_stack_1)
  loc_CD347F: FLdZeroAd var_454
  loc_CD3482: CVarAd
  loc_CD3486: ParmAry1St
  loc_CD348C: FLdRfVar var_174
  loc_CD348F: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD3494: FStStr var_94
  loc_CD3497: FLdRfVar var_174
  loc_CD349A: Erase
  loc_CD349B: FLdZeroAd var_94
  loc_CD349E: CVarStr var_638
  loc_CD34A1: PopAdLdVar
  loc_CD34A2: FLdPr Me
  loc_CD34A5: MemLdRfVar from_stack_1.global_76
  loc_CD34A8: LdPrVar
  loc_CD34AA: LateMemCall
  loc_CD34B0: FFreeAd var_8C = "": var_378 = "": var_380 = "": var_388 = "": var_390 = "": var_398 = "": var_3A0 = "": var_3A8 = "": var_3B0 = "": var_3B8 = "": var_3C0 = "": var_3C8 = "": var_3D0 = "": var_3D8 = "": var_3E0 = "": var_3E8 = "": var_3F0 = "": var_3F8 = "": var_400 = "": var_408 = "": var_410 = "": var_418 = "": var_420 = "": var_428 = "": var_430 = "": var_438 = "": var_440 = "": var_448 = ""
  loc_CD34ED: FFree1Var var_638 = ""
  loc_CD34F0: LitNothing
  loc_CD34F2: FStAd var_618 
  loc_CD34F6: LitI2_Byte 1
  loc_CD34F8: PopTmpLdAd2 var_8E
  loc_CD34FB: FLdPr var_5D4
  loc_CD34FE: Call clsctacte.Move(from_stack_1v)
  loc_CD3503: FLdPr Me
  loc_CD3506: MemLdRfVar from_stack_1.global_128
  loc_CD3509: NextI4 var_614, loc_CD2F05
  loc_CD350E: FLdPr Me
  loc_CD3511: MemLdRfVar from_stack_1.global_140
  loc_CD3514: NextI2 var_5F8, loc_CD2DF4
  loc_CD3519: LitVar_FALSE
  loc_CD351D: PopAdLdVar
  loc_CD351E: FLdPrThis
  loc_CD351F: VCallAd Control_ID_Pbar
  loc_CD3522: FStAdFunc var_8C
  loc_CD3525: FLdPr var_8C
  loc_CD3528: LateIdSt
  loc_CD352D: FFree1Ad var_8C
  loc_CD3530: LitNothing
  loc_CD3532: FStAd var_5D4 
  loc_CD3536: FLdRfVar var_8E
  loc_CD3539: FLdPr Me
  loc_CD353C: VCallAd Control_ID_OptFacilidad
  loc_CD353F: FStAdFunc var_8C
  loc_CD3542: FLdPr var_8C
  loc_CD3545:  = Me.Value
  loc_CD354A: FLdI2 var_8E
  loc_CD354D: FFree1Ad var_8C
  loc_CD3550: BranchF loc_CD383C
  loc_CD3553: FLdRfVar var_8C
  loc_CD3556: LitI2_Byte 0
  loc_CD3558: LitI2_Byte &HFF
  loc_CD355A: ImpAdLdI4 MemVar_D93030
  loc_CD355D: FLdPr Me
  loc_CD3560: MemLdRfVar from_stack_1.global_56
  loc_CD3563: NewIfNullPr IFileSystem3
  loc_CD3566: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_CD356B: ILdRf var_8C
  loc_CD356E: FLdPr Me
  loc_CD3571: MemStVarAd
  loc_CD3575: FFree1Ad var_8C
  loc_CD3578: FLdPr Me
  loc_CD357B: MemLdStr global_108
  loc_CD357E: LitI2_Byte 1
  loc_CD3580: FnUBound
  loc_CD3582: LitI4 0
  loc_CD3587: EqI4
  loc_CD3588: BranchF loc_CD35EA
  loc_CD358B: LitI4 0
  loc_CD3590: LitI4 1
  loc_CD3595: FLdRfVar var_174
  loc_CD3598: Redim
  loc_CD35A2: LitVarStr var_F4, "|"
  loc_CD35A7: LitI4 0
  loc_CD35AC: ILdRf var_174
  loc_CD35AF: Ary1StVarCopy
  loc_CD35B1: LitVarStr var_158, "SIN MOVIMIENTO"
  loc_CD35B6: LitI4 1
  loc_CD35BB: ILdRf var_174
  loc_CD35BE: Ary1StVarCopy
  loc_CD35C0: FLdRfVar var_174
  loc_CD35C3: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD35C8: FStStr var_94
  loc_CD35CB: FLdRfVar var_174
  loc_CD35CE: Erase
  loc_CD35CF: FLdZeroAd var_94
  loc_CD35D2: CVarStr var_A4
  loc_CD35D5: PopAdLdVar
  loc_CD35D6: FLdPr Me
  loc_CD35D9: MemLdRfVar from_stack_1.global_76
  loc_CD35DC: LdPrVar
  loc_CD35DE: LateMemCall
  loc_CD35E4: FFree1Var var_A4 = ""
  loc_CD35E7: Branch loc_CD383C
  loc_CD35EA: LitI4 0
  loc_CD35EF: LitI4 &HC
  loc_CD35F4: FLdRfVar var_174
  loc_CD35F7: Redim
  loc_CD3601: LitVarStr var_F4, "|"
  loc_CD3606: LitI4 0
  loc_CD360B: ILdRf var_174
  loc_CD360E: Ary1StVarCopy
  loc_CD3610: LitVarStr var_158, "Cod. Facildiad"
  loc_CD3615: LitI4 1
  loc_CD361A: ILdRf var_174
  loc_CD361D: Ary1StVarCopy
  loc_CD361F: LitVarStr var_184, "Cuota"
  loc_CD3624: LitI4 2
  loc_CD3629: ILdRf var_174
  loc_CD362C: Ary1StVarCopy
  loc_CD362E: LitVarStr var_194, "Estado"
  loc_CD3633: LitI4 3
  loc_CD3638: ILdRf var_174
  loc_CD363B: Ary1StVarCopy
  loc_CD363D: LitVarStr var_1A4, "Fecha Vto"
  loc_CD3642: LitI4 4
  loc_CD3647: ILdRf var_174
  loc_CD364A: Ary1StVarCopy
  loc_CD364C: LitVarStr var_1B4, "Fecha de Pago"
  loc_CD3651: LitI4 5
  loc_CD3656: ILdRf var_174
  loc_CD3659: Ary1StVarCopy
  loc_CD365B: LitVarStr var_1C4, "Capital"
  loc_CD3660: LitI4 6
  loc_CD3665: ILdRf var_174
  loc_CD3668: Ary1StVarCopy
  loc_CD366A: LitVarStr var_1D4, "Desc. Capital"
  loc_CD366F: LitI4 7
  loc_CD3674: ILdRf var_174
  loc_CD3677: Ary1StVarCopy
  loc_CD3679: LitVarStr var_1E4, "Recargo"
  loc_CD367E: LitI4 8
  loc_CD3683: ILdRf var_174
  loc_CD3686: Ary1StVarCopy
  loc_CD3688: LitVarStr var_1F4, "Desc. Recargo"
  loc_CD368D: LitI4 9
  loc_CD3692: ILdRf var_174
  loc_CD3695: Ary1StVarCopy
  loc_CD3697: LitVarStr var_204, "Apremio"
  loc_CD369C: LitI4 &HA
  loc_CD36A1: ILdRf var_174
  loc_CD36A4: Ary1StVarCopy
  loc_CD36A6: LitVarStr var_214, "Interes"
  loc_CD36AB: LitI4 &HB
  loc_CD36B0: ILdRf var_174
  loc_CD36B3: Ary1StVarCopy
  loc_CD36B5: LitVarStr var_224, "Total"
  loc_CD36BA: LitI4 &HC
  loc_CD36BF: ILdRf var_174
  loc_CD36C2: Ary1StVarCopy
  loc_CD36C4: FLdRfVar var_174
  loc_CD36C7: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD36CC: FStStr var_94
  loc_CD36CF: FLdRfVar var_174
  loc_CD36D2: Erase
  loc_CD36D3: FLdZeroAd var_94
  loc_CD36D6: CVarStr var_A4
  loc_CD36D9: PopAdLdVar
  loc_CD36DA: FLdPr Me
  loc_CD36DD: MemLdRfVar from_stack_1.global_76
  loc_CD36E0: LdPrVar
  loc_CD36E2: LateMemCall
  loc_CD36E8: FFree1Var var_A4 = ""
  loc_CD36EB: LitI4 1
  loc_CD36F0: FLdPr Me
  loc_CD36F3: MemLdRfVar from_stack_1.global_144
  loc_CD36F6: FLdPr Me
  loc_CD36F9: MemLdStr global_108
  loc_CD36FC: LitI2_Byte 1
  loc_CD36FE: FnUBound
  loc_CD3700: ForI4 var_640
  loc_CD3706: FLdPr Me
  loc_CD3709: MemLdStr global_144
  loc_CD370C: FLdPr Me
  loc_CD370F: MemLdStr global_108
  loc_CD3712: AryLock
  loc_CD3715: Ary1LdRf
  loc_CD3716: FStR4 var_648
  loc_CD3719: LitI4 0
  loc_CD371E: LitI4 &HC
  loc_CD3723: FLdRfVar var_174
  loc_CD3726: Redim
  loc_CD3730: LitVarStr var_F4, "|"
  loc_CD3735: LitI4 0
  loc_CD373A: ILdRf var_174
  loc_CD373D: Ary1StVarCopy
  loc_CD373F: FMemLdRf 0
  loc_CD3744: CVarRef
  loc_CD3749: ParmAry1St
  loc_CD374F: FMemLdRf 0
  loc_CD3754: CVarRef
  loc_CD3759: ParmAry1St
  loc_CD375F: FMemLdRf 0
  loc_CD3764: CVarRef
  loc_CD3769: ParmAry1St
  loc_CD376F: FMemLdRf 0
  loc_CD3774: CVarRef
  loc_CD3779: ParmAry1St
  loc_CD377F: FMemLdRf 0
  loc_CD3784: CVarRef
  loc_CD3789: ParmAry1St
  loc_CD378F: FMemLdRf 0
  loc_CD3794: CVarRef
  loc_CD3799: ParmAry1St
  loc_CD379F: FMemLdRf 0
  loc_CD37A4: CVarRef
  loc_CD37A9: ParmAry1St
  loc_CD37AF: FMemLdRf 0
  loc_CD37B4: CVarRef
  loc_CD37B9: ParmAry1St
  loc_CD37BF: FMemLdRf 0
  loc_CD37C4: CVarRef
  loc_CD37C9: ParmAry1St
  loc_CD37CF: FMemLdRf 0
  loc_CD37D4: CVarRef
  loc_CD37D9: ParmAry1St
  loc_CD37DF: FMemLdRf 0
  loc_CD37E4: CVarRef
  loc_CD37E9: ParmAry1St
  loc_CD37EF: FMemLdRf 0
  loc_CD37F4: CVarRef
  loc_CD37F9: ParmAry1St
  loc_CD37FF: FLdRfVar var_174
  loc_CD3802: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD3807: FStStr var_94
  loc_CD380A: FLdRfVar var_174
  loc_CD380D: Erase
  loc_CD380E: FLdZeroAd var_94
  loc_CD3811: CVarStr var_A4
  loc_CD3814: PopAdLdVar
  loc_CD3815: FLdPr Me
  loc_CD3818: MemLdRfVar from_stack_1.global_76
  loc_CD381B: LdPrVar
  loc_CD381D: LateMemCall
  loc_CD3823: FFree1Var var_A4 = ""
  loc_CD3826: LitI4 0
  loc_CD382B: FStR4 var_648
  loc_CD382E: AryUnlock
  loc_CD3831: FLdPr Me
  loc_CD3834: MemLdRfVar from_stack_1.global_144
  loc_CD3837: NextI4 var_640, loc_CD3706
  loc_CD383C: FLdRfVar var_8E
  loc_CD383F: FLdPr Me
  loc_CD3842: VCallAd Control_ID_optConcepto
  loc_CD3845: FStAdFunc var_8C
  loc_CD3848: FLdPr var_8C
  loc_CD384B:  = Me.Value
  loc_CD3850: FLdI2 var_8E
  loc_CD3853: FFree1Ad var_8C
  loc_CD3856: BranchF loc_CD3C0F
  loc_CD3859: FLdRfVar var_8C
  loc_CD385C: LitI2_Byte 0
  loc_CD385E: LitI2_Byte &HFF
  loc_CD3860: ImpAdLdI4 MemVar_D93030
  loc_CD3863: FLdPr Me
  loc_CD3866: MemLdRfVar from_stack_1.global_56
  loc_CD3869: NewIfNullPr IFileSystem3
  loc_CD386C: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_CD3871: ILdRf var_8C
  loc_CD3874: FLdPr Me
  loc_CD3877: MemStVarAd
  loc_CD387B: FFree1Ad var_8C
  loc_CD387E: FLdPr Me
  loc_CD3881: MemLdRfVar from_stack_1.global_92
  loc_CD3884: NewIfNullAd
  loc_CD3887: FStAd var_64C 
  loc_CD388B: FLdRfVar var_170
  loc_CD388E: FLdPr var_64C
  loc_CD3891: from_stack_1 = clsctacte.RecordCount
  loc_CD3896: ILdRf var_170
  loc_CD3899: LitI4 0
  loc_CD389E: EqI4
  loc_CD389F: BranchF loc_CD3901
  loc_CD38A2: LitI4 0
  loc_CD38A7: LitI4 1
  loc_CD38AC: FLdRfVar var_174
  loc_CD38AF: Redim
  loc_CD38B9: LitVarStr var_F4, "|"
  loc_CD38BE: LitI4 0
  loc_CD38C3: ILdRf var_174
  loc_CD38C6: Ary1StVarCopy
  loc_CD38C8: LitVarStr var_158, "SIN MOVIMIENTO"
  loc_CD38CD: LitI4 1
  loc_CD38D2: ILdRf var_174
  loc_CD38D5: Ary1StVarCopy
  loc_CD38D7: FLdRfVar var_174
  loc_CD38DA: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD38DF: FStStr var_94
  loc_CD38E2: FLdRfVar var_174
  loc_CD38E5: Erase
  loc_CD38E6: FLdZeroAd var_94
  loc_CD38E9: CVarStr var_A4
  loc_CD38EC: PopAdLdVar
  loc_CD38ED: FLdPr Me
  loc_CD38F0: MemLdRfVar from_stack_1.global_76
  loc_CD38F3: LdPrVar
  loc_CD38F5: LateMemCall
  loc_CD38FB: FFree1Var var_A4 = ""
  loc_CD38FE: Branch loc_CD3C09
  loc_CD3901: FLdPr var_64C
  loc_CD3904: Call clsctacte.MoveFirst()
  loc_CD3909: FLdRfVar var_170
  loc_CD390C: FLdPr var_64C
  loc_CD390F: from_stack_1 = clsctacte.RecordCount
  loc_CD3914: ILdRf var_170
  loc_CD3917: CR8I4
  loc_CD3918: CVarR4
  loc_CD391C: PopAdLdVar
  loc_CD391D: FLdPrThis
  loc_CD391E: VCallAd Control_ID_Pbar
  loc_CD3921: FStAdFunc var_8C
  loc_CD3924: FLdPr var_8C
  loc_CD3927: LateIdSt
  loc_CD392C: FFree1Ad var_8C
  loc_CD392F: LitVar_TRUE var_F4
  loc_CD3932: PopAdLdVar
  loc_CD3933: FLdPrThis
  loc_CD3934: VCallAd Control_ID_Pbar
  loc_CD3937: FStAdFunc var_8C
  loc_CD393A: FLdPr var_8C
  loc_CD393D: LateIdSt
  loc_CD3942: FFree1Ad var_8C
  loc_CD3945: LitI4 0
  loc_CD394A: LitI4 6
  loc_CD394F: FLdRfVar var_174
  loc_CD3952: Redim
  loc_CD395C: LitVarStr var_F4, "|"
  loc_CD3961: LitI4 0
  loc_CD3966: ILdRf var_174
  loc_CD3969: Ary1StVarCopy
  loc_CD396B: LitVarStr var_158, "Periodo"
  loc_CD3970: LitI4 1
  loc_CD3975: ILdRf var_174
  loc_CD3978: Ary1StVarCopy
  loc_CD397A: LitVarStr var_184, "Codigo"
  loc_CD397F: LitI4 2
  loc_CD3984: ILdRf var_174
  loc_CD3987: Ary1StVarCopy
  loc_CD3989: LitVarStr var_194, "Detalle"
  loc_CD398E: LitI4 3
  loc_CD3993: ILdRf var_174
  loc_CD3996: Ary1StVarCopy
  loc_CD3998: LitVarStr var_1A4, "Tipo"
  loc_CD399D: LitI4 4
  loc_CD39A2: ILdRf var_174
  loc_CD39A5: Ary1StVarCopy
  loc_CD39A7: LitVarStr var_1B4, "Cuenta Contable de Ingreso"
  loc_CD39AC: LitI4 5
  loc_CD39B1: ILdRf var_174
  loc_CD39B4: Ary1StVarCopy
  loc_CD39B6: LitVarStr var_1C4, "Cuenta Contable de Activo"
  loc_CD39BB: LitI4 6
  loc_CD39C0: ILdRf var_174
  loc_CD39C3: Ary1StVarCopy
  loc_CD39C5: FLdRfVar var_174
  loc_CD39C8: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD39CD: FStStr var_94
  loc_CD39D0: FLdRfVar var_174
  loc_CD39D3: Erase
  loc_CD39D4: FLdZeroAd var_94
  loc_CD39D7: CVarStr var_A4
  loc_CD39DA: PopAdLdVar
  loc_CD39DB: FLdPr Me
  loc_CD39DE: MemLdRfVar from_stack_1.global_76
  loc_CD39E1: LdPrVar
  loc_CD39E3: LateMemCall
  loc_CD39E9: FFree1Var var_A4 = ""
  loc_CD39EC: LitI4 0
  loc_CD39F1: FLdPr Me
  loc_CD39F4: MemStI4 global_148
  loc_CD39F7: FLdRfVar var_8E
  loc_CD39FA: FLdPr var_64C
  loc_CD39FD: from_stack_1 = clsctacte.EOF
  loc_CD3A02: FLdI2 var_8E
  loc_CD3A05: NotI4
  loc_CD3A06: BranchF loc_CD3BF2
  loc_CD3A09: FLdPr Me
  loc_CD3A0C: MemLdStr global_148
  loc_CD3A0F: LitI4 1
  loc_CD3A14: AddI4
  loc_CD3A15: FLdPr Me
  loc_CD3A18: MemStI4 global_148
  loc_CD3A1B: FLdPr Me
  loc_CD3A1E: MemLdStr global_148
  loc_CD3A21: CR8I4
  loc_CD3A22: CVarR4
  loc_CD3A26: PopAdLdVar
  loc_CD3A27: FLdPrThis
  loc_CD3A28: VCallAd Control_ID_Pbar
  loc_CD3A2B: FStAdFunc var_8C
  loc_CD3A2E: FLdPr var_8C
  loc_CD3A31: LateIdSt
  loc_CD3A36: FFree1Ad var_8C
  loc_CD3A39: LitI4 0
  loc_CD3A3E: LitI4 6
  loc_CD3A43: FLdRfVar var_174
  loc_CD3A46: Redim
  loc_CD3A50: LitVarStr var_1C4, "|"
  loc_CD3A55: LitI4 0
  loc_CD3A5A: ILdRf var_174
  loc_CD3A5D: Ary1StVarCopy
  loc_CD3A5F: FLdRfVar var_378
  loc_CD3A62: LitVarStr var_F4, "PeriInfo"
  loc_CD3A67: PopAdLdVar
  loc_CD3A68: FLdRfVar var_108
  loc_CD3A6B: FLdRfVar var_8C
  loc_CD3A6E: FLdPr var_64C
  loc_CD3A71: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD3A76: FLdPr var_8C
  loc_CD3A79:  = Me.Fields
  loc_CD3A7E: FLdPr var_108
  loc_CD3A81: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3A86: FLdZeroAd var_378
  loc_CD3A89: CVarAd
  loc_CD3A8D: ParmAry1St
  loc_CD3A93: FLdRfVar var_384
  loc_CD3A96: LitVarStr var_158, "CodiConc"
  loc_CD3A9B: PopAdLdVar
  loc_CD3A9C: FLdRfVar var_380
  loc_CD3A9F: FLdRfVar var_37C
  loc_CD3AA2: FLdPr var_64C
  loc_CD3AA5: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD3AAA: FLdPr var_37C
  loc_CD3AAD:  = Me.Fields
  loc_CD3AB2: FLdPr var_380
  loc_CD3AB5: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3ABA: FLdZeroAd var_384
  loc_CD3ABD: CVarAd
  loc_CD3AC1: ParmAry1St
  loc_CD3AC7: FLdRfVar var_390
  loc_CD3ACA: LitVarStr var_184, "DetaConc"
  loc_CD3ACF: PopAdLdVar
  loc_CD3AD0: FLdRfVar var_38C
  loc_CD3AD3: FLdRfVar var_388
  loc_CD3AD6: FLdPr var_64C
  loc_CD3AD9: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD3ADE: FLdPr var_388
  loc_CD3AE1:  = Me.Fields
  loc_CD3AE6: FLdPr var_38C
  loc_CD3AE9: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3AEE: FLdZeroAd var_390
  loc_CD3AF1: CVarAd
  loc_CD3AF5: ParmAry1St
  loc_CD3AFB: FLdRfVar var_39C
  loc_CD3AFE: LitVarStr var_194, "AforConc"
  loc_CD3B03: PopAdLdVar
  loc_CD3B04: FLdRfVar var_398
  loc_CD3B07: FLdRfVar var_394
  loc_CD3B0A: FLdPr var_64C
  loc_CD3B0D: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD3B12: FLdPr var_394
  loc_CD3B15:  = Me.Fields
  loc_CD3B1A: FLdPr var_398
  loc_CD3B1D: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3B22: FLdZeroAd var_39C
  loc_CD3B25: CVarAd
  loc_CD3B29: ParmAry1St
  loc_CD3B2F: FLdRfVar var_3A8
  loc_CD3B32: LitVarStr var_1A4, "IngrConc"
  loc_CD3B37: PopAdLdVar
  loc_CD3B38: FLdRfVar var_3A4
  loc_CD3B3B: FLdRfVar var_3A0
  loc_CD3B3E: FLdPr var_64C
  loc_CD3B41: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD3B46: FLdPr var_3A0
  loc_CD3B49:  = Me.Fields
  loc_CD3B4E: FLdPr var_3A4
  loc_CD3B51: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3B56: FLdZeroAd var_3A8
  loc_CD3B59: CVarAd
  loc_CD3B5D: ParmAry1St
  loc_CD3B63: FLdRfVar var_3B4
  loc_CD3B66: LitVarStr var_1B4, "ActiConc"
  loc_CD3B6B: PopAdLdVar
  loc_CD3B6C: FLdRfVar var_3B0
  loc_CD3B6F: FLdRfVar var_3AC
  loc_CD3B72: FLdPr var_64C
  loc_CD3B75: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD3B7A: FLdPr var_3AC
  loc_CD3B7D:  = Me.Fields
  loc_CD3B82: FLdPr var_3B0
  loc_CD3B85: from_stack_2 = Me.Item(from_stack_1)
  loc_CD3B8A: FLdZeroAd var_3B4
  loc_CD3B8D: CVarAd
  loc_CD3B91: ParmAry1St
  loc_CD3B97: FLdRfVar var_174
  loc_CD3B9A: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_CD3B9F: FStStr var_94
  loc_CD3BA2: FLdRfVar var_174
  loc_CD3BA5: Erase
  loc_CD3BA6: FLdZeroAd var_94
  loc_CD3BA9: CVarStr var_118
  loc_CD3BAC: PopAdLdVar
  loc_CD3BAD: FLdPr Me
  loc_CD3BB0: MemLdRfVar from_stack_1.global_76
  loc_CD3BB3: LdPrVar
  loc_CD3BB5: LateMemCall
  loc_CD3BBB: FFreeAd var_8C = "": var_108 = "": var_37C = "": var_380 = "": var_388 = "": var_38C = "": var_394 = "": var_398 = "": var_3A0 = "": var_3A4 = "": var_3AC = ""
  loc_CD3BD6: FFree1Var var_118 = ""
  loc_CD3BD9: FLdRfVar var_8C
  loc_CD3BDC: FLdPr var_64C
  loc_CD3BDF: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD3BE4: FLdPr var_8C
  loc_CD3BE7: Me.MoveNext
  loc_CD3BEC: FFree1Ad var_8C
  loc_CD3BEF: Branch loc_CD39F7
  loc_CD3BF2: LitVar_FALSE
  loc_CD3BF6: PopAdLdVar
  loc_CD3BF7: FLdPrThis
  loc_CD3BF8: VCallAd Control_ID_Pbar
  loc_CD3BFB: FStAdFunc var_8C
  loc_CD3BFE: FLdPr var_8C
  loc_CD3C01: LateIdSt
  loc_CD3C06: FFree1Ad var_8C
  loc_CD3C09: LitNothing
  loc_CD3C0B: FStAd var_64C 
  loc_CD3C0F: FLdPr Me
  loc_CD3C12: MemLdRfVar from_stack_1.global_76
  loc_CD3C15: LdPrVar
  loc_CD3C17: LateMemCall
  loc_CD3C1D: On Error GoTo 0
  loc_CD3C20: ExitProcHresult
  loc_CD3C21: LitVar_Missing var_D4
  loc_CD3C24: LitVar_Missing var_C4
  loc_CD3C27: LitVar_Missing var_B4
  loc_CD3C2A: LitI4 0
  loc_CD3C2F: LitStr "Error "
  loc_CD3C32: FLdRfVar var_170
  loc_CD3C35: ImpAdCallI2 Err 'rtcErrObj
  loc_CD3C3A: FStAdFunc var_8C
  loc_CD3C3D: FLdPr var_8C
  loc_CD3C40:  = Err.Number
  loc_CD3C45: ILdRf var_170
  loc_CD3C48: CStrI4
  loc_CD3C4A: FStStrNoPop var_94
  loc_CD3C4D: ConcatStr
  loc_CD3C4E: FStStrNoPop var_29C
  loc_CD3C51: LitStr " ("
  loc_CD3C54: ConcatStr
  loc_CD3C55: FStStrNoPop var_2B4
  loc_CD3C58: FLdRfVar var_2A4
  loc_CD3C5B: ImpAdCallI2 Err 'rtcErrObj
  loc_CD3C60: FStAdFunc var_108
  loc_CD3C63: FLdPr var_108
  loc_CD3C66:  = Err.Description
  loc_CD3C6B: ILdRf var_2A4
  loc_CD3C6E: ConcatStr
  loc_CD3C6F: FStStrNoPop var_2C0
  loc_CD3C72: LitStr ") in procedure GeneraTXT of Formulario rptA2988XX"
  loc_CD3C75: ConcatStr
  loc_CD3C76: CVarStr var_A4
  loc_CD3C79: ImpAdCallFPR4 MsgBox(, , , , )
  loc_CD3C7E: FFreeStr var_94 = "": var_29C = "": var_2B4 = "": var_2A4 = ""
  loc_CD3C8B: FFreeAd var_8C = ""
  loc_CD3C92: FFreeVar var_A4 = "": var_B4 = "": var_C4 = ""
  loc_CD3C9D: ExitProcHresult
End Sub

Public Sub GeneraHTML() '9AED34
  'Data Table: 4C8B34
  loc_9AED30: ExitProcHresult
  loc_9AED31: FStR8 MeFF
End Sub

Private Function Proc_291_22_BB77B4() 'BB77B4
  'Data Table: 4C8B34
  loc_BB7124: LitVarStr var_94, "<html>"
  loc_BB7129: PopAdLdVar
  loc_BB712A: FLdPr Me
  loc_BB712D: MemLdRfVar from_stack_1.global_60
  loc_BB7130: LdPrVar
  loc_BB7132: LateMemCall
  loc_BB7138: LitVarStr var_94, "<head>"
  loc_BB713D: PopAdLdVar
  loc_BB713E: FLdPr Me
  loc_BB7141: MemLdRfVar from_stack_1.global_60
  loc_BB7144: LdPrVar
  loc_BB7146: LateMemCall
  loc_BB714C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BB7151: PopAdLdVar
  loc_BB7152: FLdPr Me
  loc_BB7155: MemLdRfVar from_stack_1.global_60
  loc_BB7158: LdPrVar
  loc_BB715A: LateMemCall
  loc_BB7160: LitStr "<title>"
  loc_BB7163: FLdRfVar var_A8
  loc_BB7166: FLdPr Me
  loc_BB7169:  = Me.Caption
  loc_BB716E: ILdRf var_A8
  loc_BB7171: ConcatStr
  loc_BB7172: FStStrNoPop var_AC
  loc_BB7175: LitStr "</title>"
  loc_BB7178: ConcatStr
  loc_BB7179: CVarStr var_BC
  loc_BB717C: PopAdLdVar
  loc_BB717D: FLdPr Me
  loc_BB7180: MemLdRfVar from_stack_1.global_60
  loc_BB7183: LdPrVar
  loc_BB7185: LateMemCall
  loc_BB718B: FFreeStr var_A8 = ""
  loc_BB7192: FFree1Var var_BC = ""
  loc_BB7195: LitVarStr var_94, "<style type=""text/css"">"
  loc_BB719A: PopAdLdVar
  loc_BB719B: FLdPr Me
  loc_BB719E: MemLdRfVar from_stack_1.global_60
  loc_BB71A1: LdPrVar
  loc_BB71A3: LateMemCall
  loc_BB71A9: LitVarStr var_94, ".Titulo1 {"
  loc_BB71AE: PopAdLdVar
  loc_BB71AF: FLdPr Me
  loc_BB71B2: MemLdRfVar from_stack_1.global_60
  loc_BB71B5: LdPrVar
  loc_BB71B7: LateMemCall
  loc_BB71BD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB71C2: PopAdLdVar
  loc_BB71C3: FLdPr Me
  loc_BB71C6: MemLdRfVar from_stack_1.global_60
  loc_BB71C9: LdPrVar
  loc_BB71CB: LateMemCall
  loc_BB71D1: LitVarStr var_94, " font-size: 18px;"
  loc_BB71D6: PopAdLdVar
  loc_BB71D7: FLdPr Me
  loc_BB71DA: MemLdRfVar from_stack_1.global_60
  loc_BB71DD: LdPrVar
  loc_BB71DF: LateMemCall
  loc_BB71E5: LitVarStr var_94, " font-weight: bold;"
  loc_BB71EA: PopAdLdVar
  loc_BB71EB: FLdPr Me
  loc_BB71EE: MemLdRfVar from_stack_1.global_60
  loc_BB71F1: LdPrVar
  loc_BB71F3: LateMemCall
  loc_BB71F9: LitVarStr var_94, "}"
  loc_BB71FE: PopAdLdVar
  loc_BB71FF: FLdPr Me
  loc_BB7202: MemLdRfVar from_stack_1.global_60
  loc_BB7205: LdPrVar
  loc_BB7207: LateMemCall
  loc_BB720D: LitVarStr var_94, ".Titulo2 {"
  loc_BB7212: PopAdLdVar
  loc_BB7213: FLdPr Me
  loc_BB7216: MemLdRfVar from_stack_1.global_60
  loc_BB7219: LdPrVar
  loc_BB721B: LateMemCall
  loc_BB7221: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB7226: PopAdLdVar
  loc_BB7227: FLdPr Me
  loc_BB722A: MemLdRfVar from_stack_1.global_60
  loc_BB722D: LdPrVar
  loc_BB722F: LateMemCall
  loc_BB7235: LitVarStr var_94, " font-size: 14px;"
  loc_BB723A: PopAdLdVar
  loc_BB723B: FLdPr Me
  loc_BB723E: MemLdRfVar from_stack_1.global_60
  loc_BB7241: LdPrVar
  loc_BB7243: LateMemCall
  loc_BB7249: LitVarStr var_94, " font-weight: bold;"
  loc_BB724E: PopAdLdVar
  loc_BB724F: FLdPr Me
  loc_BB7252: MemLdRfVar from_stack_1.global_60
  loc_BB7255: LdPrVar
  loc_BB7257: LateMemCall
  loc_BB725D: LitVarStr var_94, "}"
  loc_BB7262: PopAdLdVar
  loc_BB7263: FLdPr Me
  loc_BB7266: MemLdRfVar from_stack_1.global_60
  loc_BB7269: LdPrVar
  loc_BB726B: LateMemCall
  loc_BB7271: LitVarStr var_94, ".Normal {"
  loc_BB7276: PopAdLdVar
  loc_BB7277: FLdPr Me
  loc_BB727A: MemLdRfVar from_stack_1.global_60
  loc_BB727D: LdPrVar
  loc_BB727F: LateMemCall
  loc_BB7285: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB728A: PopAdLdVar
  loc_BB728B: FLdPr Me
  loc_BB728E: MemLdRfVar from_stack_1.global_60
  loc_BB7291: LdPrVar
  loc_BB7293: LateMemCall
  loc_BB7299: LitVarStr var_94, " font-size: 12px;"
  loc_BB729E: PopAdLdVar
  loc_BB729F: FLdPr Me
  loc_BB72A2: MemLdRfVar from_stack_1.global_60
  loc_BB72A5: LdPrVar
  loc_BB72A7: LateMemCall
  loc_BB72AD: LitVarStr var_94, " font-style: normal;"
  loc_BB72B2: PopAdLdVar
  loc_BB72B3: FLdPr Me
  loc_BB72B6: MemLdRfVar from_stack_1.global_60
  loc_BB72B9: LdPrVar
  loc_BB72BB: LateMemCall
  loc_BB72C1: LitVarStr var_94, " font-weight: normal;"
  loc_BB72C6: PopAdLdVar
  loc_BB72C7: FLdPr Me
  loc_BB72CA: MemLdRfVar from_stack_1.global_60
  loc_BB72CD: LdPrVar
  loc_BB72CF: LateMemCall
  loc_BB72D5: LitVarStr var_94, " font-variant: normal;"
  loc_BB72DA: PopAdLdVar
  loc_BB72DB: FLdPr Me
  loc_BB72DE: MemLdRfVar from_stack_1.global_60
  loc_BB72E1: LdPrVar
  loc_BB72E3: LateMemCall
  loc_BB72E9: LitVarStr var_94, "}"
  loc_BB72EE: PopAdLdVar
  loc_BB72EF: FLdPr Me
  loc_BB72F2: MemLdRfVar from_stack_1.global_60
  loc_BB72F5: LdPrVar
  loc_BB72F7: LateMemCall
  loc_BB72FD: LitVarStr var_94, ".Encabezado {"
  loc_BB7302: PopAdLdVar
  loc_BB7303: FLdPr Me
  loc_BB7306: MemLdRfVar from_stack_1.global_60
  loc_BB7309: LdPrVar
  loc_BB730B: LateMemCall
  loc_BB7311: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BB7316: PopAdLdVar
  loc_BB7317: FLdPr Me
  loc_BB731A: MemLdRfVar from_stack_1.global_60
  loc_BB731D: LdPrVar
  loc_BB731F: LateMemCall
  loc_BB7325: LitVarStr var_94, " font-size: 11px;"
  loc_BB732A: PopAdLdVar
  loc_BB732B: FLdPr Me
  loc_BB732E: MemLdRfVar from_stack_1.global_60
  loc_BB7331: LdPrVar
  loc_BB7333: LateMemCall
  loc_BB7339: LitVarStr var_94, " font-weight: bold;"
  loc_BB733E: PopAdLdVar
  loc_BB733F: FLdPr Me
  loc_BB7342: MemLdRfVar from_stack_1.global_60
  loc_BB7345: LdPrVar
  loc_BB7347: LateMemCall
  loc_BB734D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BB7352: PopAdLdVar
  loc_BB7353: FLdPr Me
  loc_BB7356: MemLdRfVar from_stack_1.global_60
  loc_BB7359: LdPrVar
  loc_BB735B: LateMemCall
  loc_BB7361: LitVarStr var_94, "}"
  loc_BB7366: PopAdLdVar
  loc_BB7367: FLdPr Me
  loc_BB736A: MemLdRfVar from_stack_1.global_60
  loc_BB736D: LdPrVar
  loc_BB736F: LateMemCall
  loc_BB7375: LitVarStr var_94, ".LineaDato {"
  loc_BB737A: PopAdLdVar
  loc_BB737B: FLdPr Me
  loc_BB737E: MemLdRfVar from_stack_1.global_60
  loc_BB7381: LdPrVar
  loc_BB7383: LateMemCall
  loc_BB7389: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB738E: PopAdLdVar
  loc_BB738F: FLdPr Me
  loc_BB7392: MemLdRfVar from_stack_1.global_60
  loc_BB7395: LdPrVar
  loc_BB7397: LateMemCall
  loc_BB739D: LitVarStr var_94, " font-size: 10px;"
  loc_BB73A2: PopAdLdVar
  loc_BB73A3: FLdPr Me
  loc_BB73A6: MemLdRfVar from_stack_1.global_60
  loc_BB73A9: LdPrVar
  loc_BB73AB: LateMemCall
  loc_BB73B1: LitVarStr var_94, "}"
  loc_BB73B6: PopAdLdVar
  loc_BB73B7: FLdPr Me
  loc_BB73BA: MemLdRfVar from_stack_1.global_60
  loc_BB73BD: LdPrVar
  loc_BB73BF: LateMemCall
  loc_BB73C5: LitVarStr var_94, ".Totales {"
  loc_BB73CA: PopAdLdVar
  loc_BB73CB: FLdPr Me
  loc_BB73CE: MemLdRfVar from_stack_1.global_60
  loc_BB73D1: LdPrVar
  loc_BB73D3: LateMemCall
  loc_BB73D9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB73DE: PopAdLdVar
  loc_BB73DF: FLdPr Me
  loc_BB73E2: MemLdRfVar from_stack_1.global_60
  loc_BB73E5: LdPrVar
  loc_BB73E7: LateMemCall
  loc_BB73ED: LitVarStr var_94, " font-size: 12px;"
  loc_BB73F2: PopAdLdVar
  loc_BB73F3: FLdPr Me
  loc_BB73F6: MemLdRfVar from_stack_1.global_60
  loc_BB73F9: LdPrVar
  loc_BB73FB: LateMemCall
  loc_BB7401: LitVarStr var_94, " font-weight: bold;"
  loc_BB7406: PopAdLdVar
  loc_BB7407: FLdPr Me
  loc_BB740A: MemLdRfVar from_stack_1.global_60
  loc_BB740D: LdPrVar
  loc_BB740F: LateMemCall
  loc_BB7415: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB741A: PopAdLdVar
  loc_BB741B: FLdPr Me
  loc_BB741E: MemLdRfVar from_stack_1.global_60
  loc_BB7421: LdPrVar
  loc_BB7423: LateMemCall
  loc_BB7429: LitVarStr var_94, "}"
  loc_BB742E: PopAdLdVar
  loc_BB742F: FLdPr Me
  loc_BB7432: MemLdRfVar from_stack_1.global_60
  loc_BB7435: LdPrVar
  loc_BB7437: LateMemCall
  loc_BB743D: LitVarStr var_94, ".SubTotales {"
  loc_BB7442: PopAdLdVar
  loc_BB7443: FLdPr Me
  loc_BB7446: MemLdRfVar from_stack_1.global_60
  loc_BB7449: LdPrVar
  loc_BB744B: LateMemCall
  loc_BB7451: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB7456: PopAdLdVar
  loc_BB7457: FLdPr Me
  loc_BB745A: MemLdRfVar from_stack_1.global_60
  loc_BB745D: LdPrVar
  loc_BB745F: LateMemCall
  loc_BB7465: LitVarStr var_94, " font-size: 10px;"
  loc_BB746A: PopAdLdVar
  loc_BB746B: FLdPr Me
  loc_BB746E: MemLdRfVar from_stack_1.global_60
  loc_BB7471: LdPrVar
  loc_BB7473: LateMemCall
  loc_BB7479: LitVarStr var_94, " font-weight: bold;"
  loc_BB747E: PopAdLdVar
  loc_BB747F: FLdPr Me
  loc_BB7482: MemLdRfVar from_stack_1.global_60
  loc_BB7485: LdPrVar
  loc_BB7487: LateMemCall
  loc_BB748D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BB7492: PopAdLdVar
  loc_BB7493: FLdPr Me
  loc_BB7496: MemLdRfVar from_stack_1.global_60
  loc_BB7499: LdPrVar
  loc_BB749B: LateMemCall
  loc_BB74A1: LitVarStr var_94, "}"
  loc_BB74A6: PopAdLdVar
  loc_BB74A7: FLdPr Me
  loc_BB74AA: MemLdRfVar from_stack_1.global_60
  loc_BB74AD: LdPrVar
  loc_BB74AF: LateMemCall
  loc_BB74B5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BB74BA: PopAdLdVar
  loc_BB74BB: FLdPr Me
  loc_BB74BE: MemLdRfVar from_stack_1.global_60
  loc_BB74C1: LdPrVar
  loc_BB74C3: LateMemCall
  loc_BB74C9: LitVarStr var_94, "</style>"
  loc_BB74CE: PopAdLdVar
  loc_BB74CF: FLdPr Me
  loc_BB74D2: MemLdRfVar from_stack_1.global_60
  loc_BB74D5: LdPrVar
  loc_BB74D7: LateMemCall
  loc_BB74DD: LitI4 0
  loc_BB74E2: FStStrCopy var_AC
  loc_BB74E5: FLdRfVar var_AC
  loc_BB74E8: LitI4 0
  loc_BB74ED: FStStrCopy var_A8
  loc_BB74F0: FLdRfVar var_A8
  loc_BB74F3: LitI2_Byte &HFF
  loc_BB74F5: PopTmpLdAd2 var_BE
  loc_BB74F8: FLdPr Me
  loc_BB74FB: MemLdRfVar from_stack_1.global_60
  loc_BB74FE: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BB7503: FFreeStr var_A8 = ""
  loc_BB750A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BB750F: PopAdLdVar
  loc_BB7510: FLdPr Me
  loc_BB7513: MemLdRfVar from_stack_1.global_60
  loc_BB7516: LdPrVar
  loc_BB7518: LateMemCall
  loc_BB751E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BB7523: PopAdLdVar
  loc_BB7524: FLdPr Me
  loc_BB7527: MemLdRfVar from_stack_1.global_60
  loc_BB752A: LdPrVar
  loc_BB752C: LateMemCall
  loc_BB7532: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BB7535: LitI2_Byte &H5F
  loc_BB7537: CStrUI1
  loc_BB7539: FStStrNoPop var_A8
  loc_BB753C: ConcatStr
  loc_BB753D: FStStrNoPop var_AC
  loc_BB7540: LitStr """ height="""
  loc_BB7543: ConcatStr
  loc_BB7544: FStStrNoPop var_C4
  loc_BB7547: LitI2_Byte &H3C
  loc_BB7549: CStrUI1
  loc_BB754B: FStStrNoPop var_C8
  loc_BB754E: ConcatStr
  loc_BB754F: FStStrNoPop var_CC
  loc_BB7552: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BB7555: ConcatStr
  loc_BB7556: FStStrNoPop var_D0
  loc_BB7559: LitStr "Municipalidad de Guaymallén"
  loc_BB755C: ConcatStr
  loc_BB755D: FStStrNoPop var_D4
  loc_BB7560: LitStr "</p>"
  loc_BB7563: ConcatStr
  loc_BB7564: CVarStr var_BC
  loc_BB7567: PopAdLdVar
  loc_BB7568: FLdPr Me
  loc_BB756B: MemLdRfVar from_stack_1.global_60
  loc_BB756E: LdPrVar
  loc_BB7570: LateMemCall
  loc_BB7576: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BB7587: FFree1Var var_BC = ""
  loc_BB758A: LitStr "    <p>"
  loc_BB758D: FLdRfVar var_A8
  loc_BB7590: FLdPr Me
  loc_BB7593:  = Me.Caption
  loc_BB7598: ILdRf var_A8
  loc_BB759B: ConcatStr
  loc_BB759C: FStStrNoPop var_AC
  loc_BB759F: LitStr "</p></th>"
  loc_BB75A2: ConcatStr
  loc_BB75A3: CVarStr var_BC
  loc_BB75A6: PopAdLdVar
  loc_BB75A7: FLdPr Me
  loc_BB75AA: MemLdRfVar from_stack_1.global_60
  loc_BB75AD: LdPrVar
  loc_BB75AF: LateMemCall
  loc_BB75B5: FFreeStr var_A8 = ""
  loc_BB75BC: FFree1Var var_BC = ""
  loc_BB75BF: LitVarStr var_94, "  </tr>"
  loc_BB75C4: PopAdLdVar
  loc_BB75C5: FLdPr Me
  loc_BB75C8: MemLdRfVar from_stack_1.global_60
  loc_BB75CB: LdPrVar
  loc_BB75CD: LateMemCall
  loc_BB75D3: LitVarStr var_94, "  <tr>"
  loc_BB75D8: PopAdLdVar
  loc_BB75D9: FLdPr Me
  loc_BB75DC: MemLdRfVar from_stack_1.global_60
  loc_BB75DF: LdPrVar
  loc_BB75E1: LateMemCall
  loc_BB75E7: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BB75EC: PopAdLdVar
  loc_BB75ED: FLdPr Me
  loc_BB75F0: MemLdRfVar from_stack_1.global_60
  loc_BB75F3: LdPrVar
  loc_BB75F5: LateMemCall
  loc_BB75FB: LitVarStr var_94, "  </tr>"
  loc_BB7600: PopAdLdVar
  loc_BB7601: FLdPr Me
  loc_BB7604: MemLdRfVar from_stack_1.global_60
  loc_BB7607: LdPrVar
  loc_BB7609: LateMemCall
  loc_BB760F: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BB7614: PopAdLdVar
  loc_BB7615: FLdPr Me
  loc_BB7618: MemLdRfVar from_stack_1.global_60
  loc_BB761B: LdPrVar
  loc_BB761D: LateMemCall
  loc_BB7623: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BB7626: FLdPr Me
  loc_BB7629: VCallAd Control_ID_DesdeMsk
  loc_BB762C: FStAdFunc var_D8
  loc_BB762F: FLdPr var_D8
  loc_BB7632: LateIdLdVar var_BC DispID_15 0
  loc_BB7639: CStrVarTmp
  loc_BB763A: FStStrNoPop var_A8
  loc_BB763D: ConcatStr
  loc_BB763E: FStStrNoPop var_AC
  loc_BB7641: LitStr "</td>"
  loc_BB7644: ConcatStr
  loc_BB7645: CVarStr var_E8
  loc_BB7648: PopAdLdVar
  loc_BB7649: FLdPr Me
  loc_BB764C: MemLdRfVar from_stack_1.global_60
  loc_BB764F: LdPrVar
  loc_BB7651: LateMemCall
  loc_BB7657: FFreeStr var_A8 = ""
  loc_BB765E: FFree1Ad var_D8
  loc_BB7661: FFreeVar var_BC = ""
  loc_BB7668: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BB766B: FLdPr Me
  loc_BB766E: VCallAd Control_ID_HastaMsk
  loc_BB7671: FStAdFunc var_D8
  loc_BB7674: FLdPr var_D8
  loc_BB7677: LateIdLdVar var_BC DispID_15 0
  loc_BB767E: CStrVarTmp
  loc_BB767F: FStStrNoPop var_A8
  loc_BB7682: ConcatStr
  loc_BB7683: FStStrNoPop var_AC
  loc_BB7686: LitStr "</td>"
  loc_BB7689: ConcatStr
  loc_BB768A: CVarStr var_E8
  loc_BB768D: PopAdLdVar
  loc_BB768E: FLdPr Me
  loc_BB7691: MemLdRfVar from_stack_1.global_60
  loc_BB7694: LdPrVar
  loc_BB7696: LateMemCall
  loc_BB769C: FFreeStr var_A8 = ""
  loc_BB76A3: FFree1Ad var_D8
  loc_BB76A6: FFreeVar var_BC = ""
  loc_BB76AD: LitVarStr var_94, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BB76B2: PopAdLdVar
  loc_BB76B3: FLdPr Me
  loc_BB76B6: MemLdRfVar from_stack_1.global_60
  loc_BB76B9: LdPrVar
  loc_BB76BB: LateMemCall
  loc_BB76C1: LitVarStr var_94, "  </tr>"
  loc_BB76C6: PopAdLdVar
  loc_BB76C7: FLdPr Me
  loc_BB76CA: MemLdRfVar from_stack_1.global_60
  loc_BB76CD: LdPrVar
  loc_BB76CF: LateMemCall
  loc_BB76D5: LitVarStr var_94, "</table>"
  loc_BB76DA: PopAdLdVar
  loc_BB76DB: FLdPr Me
  loc_BB76DE: MemLdRfVar from_stack_1.global_60
  loc_BB76E1: LdPrVar
  loc_BB76E3: LateMemCall
  loc_BB76E9: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BB76EE: PopAdLdVar
  loc_BB76EF: FLdPr Me
  loc_BB76F2: MemLdRfVar from_stack_1.global_60
  loc_BB76F5: LdPrVar
  loc_BB76F7: LateMemCall
  loc_BB76FD: LitVarStr var_94, "  <thead>"
  loc_BB7702: PopAdLdVar
  loc_BB7703: FLdPr Me
  loc_BB7706: MemLdRfVar from_stack_1.global_60
  loc_BB7709: LdPrVar
  loc_BB770B: LateMemCall
  loc_BB7711: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BB7716: PopAdLdVar
  loc_BB7717: FLdPr Me
  loc_BB771A: MemLdRfVar from_stack_1.global_60
  loc_BB771D: LdPrVar
  loc_BB771F: LateMemCall
  loc_BB7725: LitVarStr var_94, "    <th>Cod. Conc.</th>"
  loc_BB772A: PopAdLdVar
  loc_BB772B: FLdPr Me
  loc_BB772E: MemLdRfVar from_stack_1.global_60
  loc_BB7731: LdPrVar
  loc_BB7733: LateMemCall
  loc_BB7739: LitVarStr var_94, "    <th>Detalle del Concepto</th>"
  loc_BB773E: PopAdLdVar
  loc_BB773F: FLdPr Me
  loc_BB7742: MemLdRfVar from_stack_1.global_60
  loc_BB7745: LdPrVar
  loc_BB7747: LateMemCall
  loc_BB774D: LitVarStr var_94, "    <th>Total Ingresado en Anexo IV</th>"
  loc_BB7752: PopAdLdVar
  loc_BB7753: FLdPr Me
  loc_BB7756: MemLdRfVar from_stack_1.global_60
  loc_BB7759: LdPrVar
  loc_BB775B: LateMemCall
  loc_BB7761: LitVarStr var_94, "    <th>Total Rendido Por Entidada Recaudadora</th>"
  loc_BB7766: PopAdLdVar
  loc_BB7767: FLdPr Me
  loc_BB776A: MemLdRfVar from_stack_1.global_60
  loc_BB776D: LdPrVar
  loc_BB776F: LateMemCall
  loc_BB7775: LitVarStr var_94, "    <th>Diferencia</th>"
  loc_BB777A: PopAdLdVar
  loc_BB777B: FLdPr Me
  loc_BB777E: MemLdRfVar from_stack_1.global_60
  loc_BB7781: LdPrVar
  loc_BB7783: LateMemCall
  loc_BB7789: LitVarStr var_94, "  </tr>"
  loc_BB778E: PopAdLdVar
  loc_BB778F: FLdPr Me
  loc_BB7792: MemLdRfVar from_stack_1.global_60
  loc_BB7795: LdPrVar
  loc_BB7797: LateMemCall
  loc_BB779D: LitVarStr var_94, "  </thead>"
  loc_BB77A2: PopAdLdVar
  loc_BB77A3: FLdPr Me
  loc_BB77A6: MemLdRfVar from_stack_1.global_60
  loc_BB77A9: LdPrVar
  loc_BB77AB: LateMemCall
  loc_BB77B1: ExitProcHresult
End Function

Private Function Proc_291_23_AE0474() 'AE0474
  'Data Table: 4C8B34
  loc_AE0308: LitVarStr var_94, "</table>"
  loc_AE030D: PopAdLdVar
  loc_AE030E: FLdPr Me
  loc_AE0311: MemLdRfVar from_stack_1.global_60
  loc_AE0314: LdPrVar
  loc_AE0316: LateMemCall
  loc_AE031C: LitVarStr var_94, "<br>"
  loc_AE0321: PopAdLdVar
  loc_AE0322: FLdPr Me
  loc_AE0325: MemLdRfVar from_stack_1.global_60
  loc_AE0328: LdPrVar
  loc_AE032A: LateMemCall
  loc_AE0330: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_AE0335: PopAdLdVar
  loc_AE0336: FLdPr Me
  loc_AE0339: MemLdRfVar from_stack_1.global_60
  loc_AE033C: LdPrVar
  loc_AE033E: LateMemCall
  loc_AE0344: LitVarStr var_94, "  <tr>"
  loc_AE0349: PopAdLdVar
  loc_AE034A: FLdPr Me
  loc_AE034D: MemLdRfVar from_stack_1.global_60
  loc_AE0350: LdPrVar
  loc_AE0352: LateMemCall
  loc_AE0358: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_AE035D: PopAdLdVar
  loc_AE035E: FLdPr Me
  loc_AE0361: MemLdRfVar from_stack_1.global_60
  loc_AE0364: LdPrVar
  loc_AE0366: LateMemCall
  loc_AE036C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_AE0371: PopAdLdVar
  loc_AE0372: FLdPr Me
  loc_AE0375: MemLdRfVar from_stack_1.global_60
  loc_AE0378: LdPrVar
  loc_AE037A: LateMemCall
  loc_AE0380: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_AE0385: PopAdLdVar
  loc_AE0386: FLdPr Me
  loc_AE0389: MemLdRfVar from_stack_1.global_60
  loc_AE038C: LdPrVar
  loc_AE038E: LateMemCall
  loc_AE0394: LitVarStr var_94, "          <map name=""Map"">"
  loc_AE0399: PopAdLdVar
  loc_AE039A: FLdPr Me
  loc_AE039D: MemLdRfVar from_stack_1.global_60
  loc_AE03A0: LdPrVar
  loc_AE03A2: LateMemCall
  loc_AE03A8: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_AE03AD: PopAdLdVar
  loc_AE03AE: FLdPr Me
  loc_AE03B1: MemLdRfVar from_stack_1.global_60
  loc_AE03B4: LdPrVar
  loc_AE03B6: LateMemCall
  loc_AE03BC: LitVarStr var_94, "          </map>"
  loc_AE03C1: PopAdLdVar
  loc_AE03C2: FLdPr Me
  loc_AE03C5: MemLdRfVar from_stack_1.global_60
  loc_AE03C8: LdPrVar
  loc_AE03CA: LateMemCall
  loc_AE03D0: LitVarStr var_94, "    </div></th>"
  loc_AE03D5: PopAdLdVar
  loc_AE03D6: FLdPr Me
  loc_AE03D9: MemLdRfVar from_stack_1.global_60
  loc_AE03DC: LdPrVar
  loc_AE03DE: LateMemCall
  loc_AE03E4: LitVarStr var_94, "  </tr>"
  loc_AE03E9: PopAdLdVar
  loc_AE03EA: FLdPr Me
  loc_AE03ED: MemLdRfVar from_stack_1.global_60
  loc_AE03F0: LdPrVar
  loc_AE03F2: LateMemCall
  loc_AE03F8: LitVarStr var_94, "  <tr>"
  loc_AE03FD: PopAdLdVar
  loc_AE03FE: FLdPr Me
  loc_AE0401: MemLdRfVar from_stack_1.global_60
  loc_AE0404: LdPrVar
  loc_AE0406: LateMemCall
  loc_AE040C: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_AE0411: PopAdLdVar
  loc_AE0412: FLdPr Me
  loc_AE0415: MemLdRfVar from_stack_1.global_60
  loc_AE0418: LdPrVar
  loc_AE041A: LateMemCall
  loc_AE0420: LitVarStr var_94, "  </tr>"
  loc_AE0425: PopAdLdVar
  loc_AE0426: FLdPr Me
  loc_AE0429: MemLdRfVar from_stack_1.global_60
  loc_AE042C: LdPrVar
  loc_AE042E: LateMemCall
  loc_AE0434: LitVarStr var_94, "</table>"
  loc_AE0439: PopAdLdVar
  loc_AE043A: FLdPr Me
  loc_AE043D: MemLdRfVar from_stack_1.global_60
  loc_AE0440: LdPrVar
  loc_AE0442: LateMemCall
  loc_AE0448: LitVarStr var_94, "</body>"
  loc_AE044D: PopAdLdVar
  loc_AE044E: FLdPr Me
  loc_AE0451: MemLdRfVar from_stack_1.global_60
  loc_AE0454: LdPrVar
  loc_AE0456: LateMemCall
  loc_AE045C: LitVarStr var_94, "</html>"
  loc_AE0461: PopAdLdVar
  loc_AE0462: FLdPr Me
  loc_AE0465: MemLdRfVar from_stack_1.global_60
  loc_AE0468: LdPrVar
  loc_AE046A: LateMemCall
  loc_AE0470: ExitProcHresult
  loc_AE0471: CI4R8
End Function
