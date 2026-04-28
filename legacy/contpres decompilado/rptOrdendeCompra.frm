VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptOrdendeCompra
  Caption = "Orden de Compra"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptOrdendeCompra.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9510
  ClientHeight = 6150
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5895
    Width = 9510
    Height = 255
    TabIndex = 37
    OleObjectBlob = "rptOrdendeCompra.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 4920
    Width = 735
    Height = 615
    TabIndex = 35
    Cancel = -1  'True
    Picture = "rptOrdendeCompra.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptOrdendeCompra.frx":0B9C
    Left = 8640
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4680
    Width = 1815
    Height = 1095
    TabIndex = 34
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 31
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4680
    Width = 3015
    Height = 1095
    TabIndex = 33
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 30
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 29
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9255
    Height = 4575
    TabIndex = 0
    Begin VB.CheckBox chkIncluyelafirma
      Caption = "¿Incluye la firma?:"
      Left = 6480
      Top = 4080
      Width = 1575
      Height = 255
      TabIndex = 28
    End
    Begin VB.ComboBox cboTipoCompra
      Left = 6000
      Top = 1965
      Width = 3015
      Height = 315
      TabIndex = 16
    End
    Begin VB.TextBox CodiOrcoTxt
      Left = 2520
      Top = 960
      Width = 3615
      Height = 315
      TabIndex = 10
      MaxLength = 400
    End
    Begin VB.TextBox CucuPersTxt
      Left = 2280
      Top = 2520
      Width = 1815
      Height = 315
      TabIndex = 18
      MaxLength = 70
      DataField = "CucuPers"
    End
    Begin VB.CommandButton cmdDesde
      Left = 4560
      Top = 315
      Width = 375
      Height = 375
      TabIndex = 5
      Picture = "rptOrdendeCompra.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdHasta
      Left = 7005
      Top = 315
      Width = 375
      Height = 375
      TabIndex = 8
      Picture = "rptOrdendeCompra.frx":1142
      Style = 1
    End
    Begin VB.CheckBox SoloEncabezadosChk
      Caption = "Solo Encabezados"
      Left = 4440
      Top = 4080
      Width = 1695
      Height = 255
      TabIndex = 27
    End
    Begin VB.CheckBox AgruparChk
      Caption = "Agrupar insumos iguales"
      Left = 120
      Top = 4080
      Width = 2055
      Height = 255
      TabIndex = 25
    End
    Begin VB.ComboBox cboExpeImpu
      Left = 2280
      Top = 1965
      Width = 2055
      Height = 315
      TabIndex = 14
    End
    Begin VB.CheckBox HojasSeparadasChk
      Caption = "Hojas separadas"
      Left = 2520
      Top = 4080
      Width = 1575
      Height = 255
      TabIndex = 26
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7320
      Top = 1080
      Width = 1335
      Height = 495
      TabIndex = 32
    End
    Begin MSMask.MaskEdBox CodiNopeMsk
      Left = 2280
      Top = 3000
      Width = 975
      Height = 315
      TabIndex = 21
      OleObjectBlob = "rptOrdendeCompra.frx":1684
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2280
      Top = 3480
      Width = 1335
      Height = 315
      TabIndex = 23
      OleObjectBlob = "rptOrdendeCompra.frx":16F4
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 3360
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptOrdendeCompra.frx":177C
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 5805
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptOrdendeCompra.frx":1804
    End
    Begin VB.Label Label11
      Caption = "Tipo de Compra:"
      Left = 4680
      Top = 1965
      Width = 1170
      Height = 195
      TabIndex = 15
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Orden de Compra:"
      Left = 1080
      Top = 960
      Width = 1290
      Height = 195
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "(intercalar distintas órdenes con coma; ejemplo: 18,21,25)"
      Left = 1290
      Top = 1560
      Width = 4065
      Height = 195
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "(desde-hasta separar con guión; ejemplo: 18-21)"
      Left = 1290
      Top = 1320
      Width = 3405
      Height = 195
      TabIndex = 11
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Proveedor:"
      Left = 1365
      Top = 2520
      Width = 780
      Height = 195
      TabIndex = 17
      AutoSize = -1  'True
    End
    Begin VB.Label DetaProvLbl
      Left = 4200
      Top = 2520
      Width = 4815
      Height = 315
      TabIndex = 19
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
    Begin VB.Label Label9
      Caption = "Fecha Desde:"
      Left = 2220
      Top = 405
      Width = 1005
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Hasta:"
      Left = 5205
      Top = 405
      Width = 465
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label7
      Caption = "Organigrama:"
      Left = 1200
      Top = 3480
      Width = 945
      Height = 195
      TabIndex = 22
      AutoSize = -1  'True
    End
    Begin VB.Label DetaOrgaLbl
      Left = 3720
      Top = 3480
      Width = 5295
      Height = 315
      TabIndex = 24
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrga"
    End
    Begin VB.Label Label6
      Caption = "Nota de pedido Nº:"
      Left = 780
      Top = 3000
      Width = 1365
      Height = 195
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Expediente original:"
      Left = 675
      Top = 1965
      Width = 1380
      Height = 195
      TabIndex = 13
      AutoSize = -1  'True
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
    Left = 8280
    Top = 5040
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 36
    OleObjectBlob = "rptOrdendeCompra.frx":188C
  End
End

Attribute VB_Name = "rptOrdendeCompra"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00589EDC
  bStruc(52) As Byte ' String fields: 13
End Type

Private Type UDT_2_0059C6FC
  bStruc(112) As Byte ' String fields: 28
End Type


Private Sub cmdDesde_Click() '97F3B0
  'Data Table: 4E66BC
  loc_97F37C: LitVar_Missing var_A4
  loc_97F37F: PopAdLdVar
  loc_97F380: LitVarI4
  loc_97F388: PopAdLdVar
  loc_97F389: ImpAdLdRf MemVar_C3D9A8
  loc_97F38C: NewIfNullPr frmCalendario
  loc_97F38F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F394: ImpAdLdRf MemVar_C3D038
  loc_97F397: CDargRef
  loc_97F39B: FLdPr Me
  loc_97F39E: VCallAd Control_ID_mskDesde
  loc_97F3A1: FStAdFunc var_A8
  loc_97F3A4: FLdPr var_A8
  loc_97F3A7: LateIdSt
  loc_97F3AC: FFree1Ad var_A8
  loc_97F3AF: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '97D7A8
  'Data Table: 4E66BC
  loc_97D774: LitVar_Missing var_A4
  loc_97D777: PopAdLdVar
  loc_97D778: LitVarI4
  loc_97D780: PopAdLdVar
  loc_97D781: ImpAdLdRf MemVar_C3D9A8
  loc_97D784: NewIfNullPr frmCalendario
  loc_97D787: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D78C: ImpAdLdRf MemVar_C3D038
  loc_97D78F: CDargRef
  loc_97D793: FLdPr Me
  loc_97D796: VCallAd Control_ID_mskHasta
  loc_97D799: FStAdFunc var_A8
  loc_97D79C: FLdPr var_A8
  loc_97D79F: LateIdSt
  loc_97D7A4: FFree1Ad var_A8
  loc_97D7A7: ExitProcHresult
End Sub

Private Sub Form_Load() '9D5F1C
  'Data Table: 4E66BC
  loc_9D5E30: LitI2_Byte &HFF
  loc_9D5E32: ImpAdStI2 MemVar_C3D840
  loc_9D5E35: ILdRf Me
  loc_9D5E38: CastAd
  loc_9D5E3B: FStAdFunc var_88
  loc_9D5E3E: FLdRfVar var_88
  loc_9D5E41: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D5E46: FFree1Ad var_88
  loc_9D5E49: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo;"
  loc_9D5E4C: FLdPr Me
  loc_9D5E4F: MemLdRfVar from_stack_1.global_84
  loc_9D5E52: NewIfNullPr clsbase
  loc_9D5E55: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D5E5A: FLdRfVar var_8C
  loc_9D5E5D: FLdPr Me
  loc_9D5E60: MemLdRfVar from_stack_1.global_84
  loc_9D5E63: NewIfNullPr clsbase
  loc_9D5E66: from_stack_1 = clsbase.RecordCount
  loc_9D5E6B: ILdRf var_8C
  loc_9D5E6E: LitI4 0
  loc_9D5E73: GtI4
  loc_9D5E74: BranchF loc_9D5F13
  loc_9D5E77: FLdPr Me
  loc_9D5E7A: MemLdRfVar from_stack_1.global_84
  loc_9D5E7D: NewIfNullPr clsbase
  loc_9D5E80: Call clsbase.MoveFirst()
  loc_9D5E85: FLdRfVar var_8E
  loc_9D5E88: FLdPr Me
  loc_9D5E8B: MemLdRfVar from_stack_1.global_84
  loc_9D5E8E: NewIfNullPr clsbase
  loc_9D5E91: from_stack_1 = clsbase.EOF
  loc_9D5E96: FLdI2 var_8E
  loc_9D5E99: NotI4
  loc_9D5E9A: BranchF loc_9D5F13
  loc_9D5E9D: LitVar_Missing var_CC
  loc_9D5EA0: PopAdLdVar
  loc_9D5EA1: FLdRfVar var_B8
  loc_9D5EA4: FLdRfVar var_A8
  loc_9D5EA7: LitVarStr var_A4, "PeriInfo"
  loc_9D5EAC: PopAdLdVar
  loc_9D5EAD: FLdRfVar var_94
  loc_9D5EB0: FLdRfVar var_88
  loc_9D5EB3: FLdPr Me
  loc_9D5EB6: MemLdRfVar from_stack_1.global_84
  loc_9D5EB9: NewIfNullPr clsbase
  loc_9D5EBC: from_stack_1v = clsbase.RsFrmGet()
  loc_9D5EC1: FLdPr var_88
  loc_9D5EC4:  = Me.Fields
  loc_9D5EC9: FLdPr var_94
  loc_9D5ECC: from_stack_2 = Me.Item(from_stack_1)
  loc_9D5ED1: FLdPr var_A8
  loc_9D5ED4:  = Me.Value
  loc_9D5ED9: FLdRfVar var_B8
  loc_9D5EDC: CStrVarTmp
  loc_9D5EDD: FStStrNoPop var_BC
  loc_9D5EE0: FLdPr Me
  loc_9D5EE3: VCallAd Control_ID_cboPeriodo
  loc_9D5EE6: FStAdFunc var_D0
  loc_9D5EE9: FLdPr var_D0
  loc_9D5EEC: Me.AddItem from_stack_1, from_stack_2
  loc_9D5EF1: FFree1Str var_BC
  loc_9D5EF4: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D5EFF: FFree1Var var_B8 = ""
  loc_9D5F02: FLdPr Me
  loc_9D5F05: MemLdRfVar from_stack_1.global_84
  loc_9D5F08: NewIfNullPr clsbase
  loc_9D5F0B: Call clsbase.MoveSiguiente()
  loc_9D5F10: Branch loc_9D5E85
  loc_9D5F13: Call cmdNueva_Click()
  loc_9D5F18: ExitProcHresult
  loc_9D5F19: StUdtVar
End Sub

Private Sub Form_Unload(Cancel As Integer) '957704
  'Data Table: 4E66BC
  loc_9576EC: FLdPr Me
  loc_9576EF: VCallAd Control_ID_wbbReporte
  loc_9576F2: FStAdFunc var_88
  loc_9576F5: FLdRfVar var_88
  loc_9576F8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9576FD: FFree1Ad var_88
  loc_957700: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'AED724
  'Data Table: 4E66BC
  loc_AED0C0: LitStr "Municipalidad de Guaymallén"
  loc_AED0C3: LitStr "Municipalidad de General Alvear"
  loc_AED0C6: EqStr
  loc_AED0C8: BranchF loc_AED6E3
  loc_AED0CB: LitVarStr var_A8, "Generando reporte..."
  loc_AED0D0: PopAdLdVar
  loc_AED0D1: FLdPr Me
  loc_AED0D4: VCallAd Control_ID_statusBar
  loc_AED0D7: FStAdFunc var_BC
  loc_AED0DA: FLdPr var_BC
  loc_AED0DD: LateIdSt
  loc_AED0E2: FFree1Ad var_BC
  loc_AED0E5: LitI4 &HB
  loc_AED0EA: CI2I4
  loc_AED0EB: FLdPr Me
  loc_AED0EE: Me.MousePointer = from_stack_1
  loc_AED0F3: LitI2_Byte 0
  loc_AED0F5: PopTmpLdAd2 var_BE
  loc_AED0F8: Call CodiOrcoTxt_Validate(from_stack_1v)
  loc_AED0FD: FLdPr Me
  loc_AED100: MemLdStr global_120
  loc_AED103: LitStr vbNullString
  loc_AED106: NeStr
  loc_AED108: BranchF loc_AED120
  loc_AED10B: FLdPr Me
  loc_AED10E: VCallAd Control_ID_CodiOrcoTxt
  loc_AED111: CVarAd
  loc_AED115: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_AED11A: FFree1Var var_D0 = ""
  loc_AED11D: Branch loc_AED6F9
  loc_AED120: FLdRfVar var_D4
  loc_AED123: FLdPr Me
  loc_AED126: VCallAd Control_ID_cboExpeImpu
  loc_AED129: FStAdFunc var_BC
  loc_AED12C: FLdPr var_BC
  loc_AED12F:  = Me.Text
  loc_AED134: FLdRfVar var_DC
  loc_AED137: FLdPr Me
  loc_AED13A: VCallAd Control_ID_cboExpeImpu
  loc_AED13D: FStAdFunc var_D8
  loc_AED140: FLdPr var_D8
  loc_AED143:  = Me.Text
  loc_AED148: LitVarStr var_B8, vbNullString
  loc_AED14D: FStVarCopyObj var_F0
  loc_AED150: FLdRfVar var_F0
  loc_AED153: LitStr " AND oc.ExpeImpu = '"
  loc_AED156: ILdRf var_DC
  loc_AED159: ConcatStr
  loc_AED15A: FStStrNoPop var_E0
  loc_AED15D: LitStr "'"
  loc_AED160: ConcatStr
  loc_AED161: CVarStr var_D0
  loc_AED164: ILdRf var_D4
  loc_AED167: LitStr vbNullString
  loc_AED16A: NeStr
  loc_AED16C: CVarBoolI2 var_A8
  loc_AED170: FLdRfVar var_100
  loc_AED173: ImpAdCallFPR4  = IIf(, , )
  loc_AED178: FLdRfVar var_100
  loc_AED17B: CStrVarTmp
  loc_AED17C: FStStr var_88
  loc_AED17F: FFreeStr var_D4 = "": var_DC = ""
  loc_AED188: FFreeAd var_BC = ""
  loc_AED18F: FFreeVar var_A8 = "": var_D0 = "": var_F0 = ""
  loc_AED19A: FLdRfVar var_D4
  loc_AED19D: FLdPr Me
  loc_AED1A0: VCallAd Control_ID_CucuPersTxt
  loc_AED1A3: FStAdFunc var_BC
  loc_AED1A6: FLdPr var_BC
  loc_AED1A9:  = Me.Text
  loc_AED1AE: FLdRfVar var_DC
  loc_AED1B1: FLdPr Me
  loc_AED1B4: VCallAd Control_ID_CucuPersTxt
  loc_AED1B7: FStAdFunc var_D8
  loc_AED1BA: FLdPr var_D8
  loc_AED1BD:  = Me.Text
  loc_AED1C2: LitVarStr var_B8, vbNullString
  loc_AED1C7: FStVarCopyObj var_F0
  loc_AED1CA: FLdRfVar var_F0
  loc_AED1CD: LitStr " AND oc.CucuPers = '"
  loc_AED1D0: ILdRf var_DC
  loc_AED1D3: ConcatStr
  loc_AED1D4: FStStrNoPop var_E0
  loc_AED1D7: LitStr "'"
  loc_AED1DA: ConcatStr
  loc_AED1DB: CVarStr var_D0
  loc_AED1DE: ILdRf var_D4
  loc_AED1E1: LitStr vbNullString
  loc_AED1E4: NeStr
  loc_AED1E6: CVarBoolI2 var_A8
  loc_AED1EA: FLdRfVar var_100
  loc_AED1ED: ImpAdCallFPR4  = IIf(, , )
  loc_AED1F2: FLdRfVar var_100
  loc_AED1F5: CStrVarTmp
  loc_AED1F6: FStStr var_8C
  loc_AED1F9: FFreeStr var_D4 = "": var_DC = ""
  loc_AED202: FFreeAd var_BC = ""
  loc_AED209: FFreeVar var_A8 = "": var_D0 = "": var_F0 = ""
  loc_AED214: FLdPr Me
  loc_AED217: VCallAd Control_ID_CodiNopeMsk
  loc_AED21A: FStAdFunc var_BC
  loc_AED21D: FLdPr var_BC
  loc_AED220: LateIdLdVar var_D0 DispID_0 0
  loc_AED227: PopAd
  loc_AED229: FLdPr Me
  loc_AED22C: VCallAd Control_ID_CodiNopeMsk
  loc_AED22F: FStAdFunc var_D8
  loc_AED232: FLdPr var_D8
  loc_AED235: LateIdLdVar var_F0 DispID_0 0
  loc_AED23C: PopAd
  loc_AED23E: LitVarStr var_B8, vbNullString
  loc_AED243: FStVarCopyObj var_110
  loc_AED246: FLdRfVar var_110
  loc_AED249: LitStr " AND oc.CodiNope = "
  loc_AED24C: FLdRfVar var_F0
  loc_AED24F: CStrVarTmp
  loc_AED250: FStStrNoPop var_DC
  loc_AED253: ConcatStr
  loc_AED254: CVarStr var_100
  loc_AED257: FLdRfVar var_D0
  loc_AED25A: CStrVarTmp
  loc_AED25B: FStStrNoPop var_D4
  loc_AED25E: LitStr vbNullString
  loc_AED261: NeStr
  loc_AED263: CVarBoolI2 var_A8
  loc_AED267: FLdRfVar var_120
  loc_AED26A: ImpAdCallFPR4  = IIf(, , )
  loc_AED26F: FLdRfVar var_120
  loc_AED272: CStrVarTmp
  loc_AED273: FStStr var_90
  loc_AED276: FFreeStr var_D4 = ""
  loc_AED27D: FFreeAd var_BC = ""
  loc_AED284: FFreeVar var_D0 = "": var_F0 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_AED293: FLdPr Me
  loc_AED296: VCallAd Control_ID_CodiOrgaMsk
  loc_AED299: FStAdFunc var_BC
  loc_AED29C: FLdPr var_BC
  loc_AED29F: LateIdLdVar var_D0 DispID_22 0
  loc_AED2A6: PopAd
  loc_AED2A8: FLdPr Me
  loc_AED2AB: VCallAd Control_ID_CodiOrgaMsk
  loc_AED2AE: FStAdFunc var_D8
  loc_AED2B1: FLdPr var_D8
  loc_AED2B4: LateIdLdVar var_F0 DispID_22 0
  loc_AED2BB: PopAd
  loc_AED2BD: LitVarStr var_B8, vbNullString
  loc_AED2C2: FStVarCopyObj var_110
  loc_AED2C5: FLdRfVar var_110
  loc_AED2C8: LitStr " AND oc.CodiOrga = '"
  loc_AED2CB: FLdRfVar var_F0
  loc_AED2CE: CStrVarTmp
  loc_AED2CF: FStStrNoPop var_DC
  loc_AED2D2: ConcatStr
  loc_AED2D3: FStStrNoPop var_E0
  loc_AED2D6: LitStr "'"
  loc_AED2D9: ConcatStr
  loc_AED2DA: CVarStr var_100
  loc_AED2DD: FLdRfVar var_D0
  loc_AED2E0: CStrVarTmp
  loc_AED2E1: FStStrNoPop var_D4
  loc_AED2E4: LitStr vbNullString
  loc_AED2E7: NeStr
  loc_AED2E9: CVarBoolI2 var_A8
  loc_AED2ED: FLdRfVar var_120
  loc_AED2F0: ImpAdCallFPR4  = IIf(, , )
  loc_AED2F5: FLdRfVar var_120
  loc_AED2F8: CStrVarTmp
  loc_AED2F9: FStStr var_98
  loc_AED2FC: FFreeStr var_D4 = "": var_DC = ""
  loc_AED305: FFreeAd var_BC = ""
  loc_AED30C: FFreeVar var_D0 = "": var_F0 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_AED31B: LitVarStr var_130, " HAVING CantItem = CantItemImpu"
  loc_AED320: FStVarCopyObj var_F0
  loc_AED323: FLdRfVar var_F0
  loc_AED326: LitVarStr var_B8, vbNullString
  loc_AED32B: FStVarCopyObj var_D0
  loc_AED32E: FLdRfVar var_D0
  loc_AED331: LitStr "Municipalidad de Guaymallén"
  loc_AED334: LitStr "Municipalidad de Rivadavia"
  loc_AED337: EqStr
  loc_AED339: CVarBoolI2 var_A8
  loc_AED33D: FLdRfVar var_100
  loc_AED340: ImpAdCallFPR4  = IIf(, , )
  loc_AED345: FLdRfVar var_100
  loc_AED348: CStrVarTmp
  loc_AED349: FStStr var_94
  loc_AED34C: FFreeVar var_A8 = "": var_D0 = "": var_F0 = ""
  loc_AED357: FLdPr Me
  loc_AED35A: VCallAd Control_ID_mskDesde
  loc_AED35D: FStAdFunc var_D8
  loc_AED360: FLdPr var_D8
  loc_AED363: LateIdLdVar var_D0 DispID_15 0
  loc_AED36A: PopAd
  loc_AED36C: FLdPr Me
  loc_AED36F: VCallAd Control_ID_mskHasta
  loc_AED372: FStAdFunc var_180
  loc_AED375: FLdPr var_180
  loc_AED378: LateIdLdVar var_110 DispID_15 0
  loc_AED37F: PopAd
  loc_AED381: LitStr "SELECT Count(CodiItco) CantItem, Sum(If(IdImpu>0,1,0)) CantItemImpu, oc.CodiOrco, oc.CodiOrga, oc.DetaOrco, oc.CodiNope, oc.IdCoti, oc.CodiTico, oc.ExpeImpu, ExpeProv, FactProv, oc.FechOrco, oc.FenoOrco, oc.FeanOrco, oc.BajaMoti, oc.AltaUsua, DetaOrga, DetaTico"
  loc_AED384: LitStr ", CAST(IF(Count(CodiItco)=Sum(If(IdImpu>0,1,0)),oc.CucuPers,'') AS CHAR) CucuPers"
  loc_AED387: ConcatStr
  loc_AED388: FStStrNoPop var_D4
  loc_AED38B: LitStr ", IF(Count(CodiItco)=Sum(If(IdImpu>0,1,0)),DetaProv,'') DetaProv"
  loc_AED38E: ConcatStr
  loc_AED38F: FStStrNoPop var_DC
  loc_AED392: LitStr ", IF(Count(CodiItco)=Sum(If(IdImpu>0,1,0)),pp.DecrPers,'') DecrPers"
  loc_AED395: ConcatStr
  loc_AED396: FStStrNoPop var_E0
  loc_AED399: LitStr ", IF(Count(CodiItco)=Sum(If(IdImpu>0,1,0)),pp.TelePers,'') TelePers"
  loc_AED39C: ConcatStr
  loc_AED39D: FStStrNoPop var_134
  loc_AED3A0: LitStr ", persona_firma.DetaPers, PlenCoti, AlivaOrco, SelloOrco"
  loc_AED3A3: ConcatStr
  loc_AED3A4: FStStrNoPop var_138
  loc_AED3A7: LitStr ", np.IdUbfi, np.DienNope"
  loc_AED3AA: ConcatStr
  loc_AED3AB: FStStrNoPop var_13C
  loc_AED3AE: LitStr " FROM ordencompra oc"
  loc_AED3B1: ConcatStr
  loc_AED3B2: FStStrNoPop var_140
  loc_AED3B5: LitStr " INNER JOIN notapedido np ON np.PeriInfo = oc.PeriInfo AND np.CodiNope = oc.CodiNope"
  loc_AED3B8: ConcatStr
  loc_AED3B9: FStStrNoPop var_144
  loc_AED3BC: LitStr " LEFT JOIN ubicfisica uf ON uf.IdUbfi = np.IdUbfi"
  loc_AED3BF: ConcatStr
  loc_AED3C0: FStStrNoPop var_148
  loc_AED3C3: LitStr " INNER JOIN cotizacion ct ON ct.IdCoti = oc.IdCoti"
  loc_AED3C6: ConcatStr
  loc_AED3C7: FStStrNoPop var_14C
  loc_AED3CA: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = oc.PeriInfo AND o.CodiOrga = oc.CodiOrga"
  loc_AED3CD: ConcatStr
  loc_AED3CE: FStStrNoPop var_150
  loc_AED3D1: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = oc.CodiTico"
  loc_AED3D4: ConcatStr
  loc_AED3D5: FStStrNoPop var_154
  loc_AED3D8: LitStr " INNER JOIN proveedor p ON p.CucuPers = oc.CucuPers"
  loc_AED3DB: ConcatStr
  loc_AED3DC: FStStrNoPop var_158
  loc_AED3DF: LitStr " INNER JOIN infogov.persona pp ON pp.CucuPers = oc.CucuPers"
  loc_AED3E2: ConcatStr
  loc_AED3E3: FStStrNoPop var_15C
  loc_AED3E6: LitStr " LEFT JOIN infogov.persona persona_firma ON persona_firma.CucuPers = tc.CucuPers AND tc.CucuPers > 0"
  loc_AED3E9: ConcatStr
  loc_AED3EA: FStStrNoPop var_160
  loc_AED3ED: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco"
  loc_AED3F0: ConcatStr
  loc_AED3F1: FStStrNoPop var_164
  loc_AED3F4: LitStr " WHERE oc.PeriInfo = "
  loc_AED3F7: ConcatStr
  loc_AED3F8: FStStrNoPop var_16C
  loc_AED3FB: FLdRfVar var_168
  loc_AED3FE: FLdPr Me
  loc_AED401: VCallAd Control_ID_cboPeriodo
  loc_AED404: FStAdFunc var_BC
  loc_AED407: FLdPr var_BC
  loc_AED40A:  = Me.Text
  loc_AED40F: ILdRf var_168
  loc_AED412: ConcatStr
  loc_AED413: FStStrNoPop var_170
  loc_AED416: LitStr " AND oc.FenoOrco BETWEEN "
  loc_AED419: ConcatStr
  loc_AED41A: FStStrNoPop var_174
  loc_AED41D: LitI4 1
  loc_AED422: LitI4 1
  loc_AED427: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_AED42C: FStVarCopyObj var_100
  loc_AED42F: FLdRfVar var_100
  loc_AED432: FLdRfVar var_D0
  loc_AED435: CStrVarTmp
  loc_AED436: CVarStr var_F0
  loc_AED439: ImpAdCallI2 Format$(, )
  loc_AED43E: FStStrNoPop var_178
  loc_AED441: ConcatStr
  loc_AED442: FStStrNoPop var_17C
  loc_AED445: LitStr " AND "
  loc_AED448: ConcatStr
  loc_AED449: FStStrNoPop var_194
  loc_AED44C: LitI4 1
  loc_AED451: LitI4 1
  loc_AED456: LitVarStr var_B8, "'yyyy-mm-dd'"
  loc_AED45B: FStVarCopyObj var_190
  loc_AED45E: FLdRfVar var_190
  loc_AED461: FLdRfVar var_110
  loc_AED464: CStrVarTmp
  loc_AED465: CVarStr var_120
  loc_AED468: ImpAdCallI2 Format$(, )
  loc_AED46D: FStStrNoPop var_198
  loc_AED470: ConcatStr
  loc_AED471: FStStrNoPop var_19C
  loc_AED474: FLdPr Me
  loc_AED477: MemLdStr global_124
  loc_AED47A: ConcatStr
  loc_AED47B: FStStrNoPop var_1A0
  loc_AED47E: ILdRf var_88
  loc_AED481: ConcatStr
  loc_AED482: FStStrNoPop var_1A4
  loc_AED485: ILdRf var_8C
  loc_AED488: ConcatStr
  loc_AED489: FStStrNoPop var_1A8
  loc_AED48C: ILdRf var_90
  loc_AED48F: ConcatStr
  loc_AED490: FStStrNoPop var_1AC
  loc_AED493: ILdRf var_98
  loc_AED496: ConcatStr
  loc_AED497: FStStrNoPop var_1B0
  loc_AED49A: LitStr " GROUP BY oc.PeriInfo, oc.CodiOrco"
  loc_AED49D: ConcatStr
  loc_AED49E: FStStrNoPop var_1B4
  loc_AED4A1: ILdRf var_94
  loc_AED4A4: ConcatStr
  loc_AED4A5: FStStrNoPop var_1B8
  loc_AED4A8: LitStr " ORDER BY oc.CodiOrco;"
  loc_AED4AB: ConcatStr
  loc_AED4AC: FStStrNoPop var_1BC
  loc_AED4AF: FLdPr Me
  loc_AED4B2: MemLdRfVar from_stack_1.global_88
  loc_AED4B5: NewIfNullPr clsordencompra
  loc_AED4B8: Call clsordencompra.RedefineRS(from_stack_1v)
  loc_AED4BD: FFreeStr var_1B4 = "": var_1B8 = "": var_1BC = "": var_D4 = "": var_DC = "": var_E0 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_16C = "": var_168 = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = ""
  loc_AED502: FFreeAd var_BC = "": var_D8 = ""
  loc_AED50B: FFreeVar var_D0 = "": var_F0 = "": var_100 = "": var_110 = "": var_120 = ""
  loc_AED51A: FLdRfVar var_1C0
  loc_AED51D: FLdPr Me
  loc_AED520: MemLdRfVar from_stack_1.global_88
  loc_AED523: NewIfNullPr clsordencompra
  loc_AED526: from_stack_1 = clsordencompra.RecordCount
  loc_AED52B: ILdRf var_1C0
  loc_AED52E: LitI4 0
  loc_AED533: EqI4
  loc_AED534: BranchF loc_AED54A
  loc_AED537: LitI4 0
  loc_AED53C: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AED53F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AED544: Branch loc_AED6F9
  loc_AED547: Branch loc_AED6CA
  loc_AED54A: FLdPr Me
  loc_AED54D: MemLdRfVar from_stack_1.global_88
  loc_AED550: NewIfNullPr clsordencompra
  loc_AED553: Call clsordencompra.MoveFirst()
  loc_AED558: FLdRfVar var_BE
  loc_AED55B: FLdPr Me
  loc_AED55E: MemLdRfVar from_stack_1.global_88
  loc_AED561: NewIfNullPr clsordencompra
  loc_AED564: from_stack_1 = clsordencompra.EOF
  loc_AED569: FLdI2 var_BE
  loc_AED56C: NotI4
  loc_AED56D: BranchF loc_AED6CA
  loc_AED570: FLdRfVar var_DC
  loc_AED573: FLdPr Me
  loc_AED576:  = Me.Tag
  loc_AED57B: FLdRfVar var_D4
  loc_AED57E: FLdPr Me
  loc_AED581:  = Me.Tag
  loc_AED586: FLdZeroAd var_D4
  loc_AED589: CVarStr var_110
  loc_AED58C: LitVarStr var_130, " - "
  loc_AED591: FStVarCopyObj var_F0
  loc_AED594: FLdRfVar var_F0
  loc_AED597: LitVarStr var_B8, vbNullString
  loc_AED59C: FStVarCopyObj var_D0
  loc_AED59F: FLdRfVar var_D0
  loc_AED5A2: ILdRf var_DC
  loc_AED5A5: LitStr vbNullString
  loc_AED5A8: EqStr
  loc_AED5AA: CVarBoolI2 var_A8
  loc_AED5AE: FLdRfVar var_100
  loc_AED5B1: ImpAdCallFPR4  = IIf(, , )
  loc_AED5B6: FLdRfVar var_100
  loc_AED5B9: ConcatVar var_120
  loc_AED5BD: LitVarStr var_1D0, "Expte "
  loc_AED5C2: ConcatVar var_190
  loc_AED5C6: FLdRfVar var_E0
  loc_AED5C9: FLdPr Me
  loc_AED5CC: VCallAd Control_ID_cboPeriodo
  loc_AED5CF: FStAdFunc var_BC
  loc_AED5D2: FLdPr var_BC
  loc_AED5D5:  = Me.Text
  loc_AED5DA: FLdZeroAd var_E0
  loc_AED5DD: CVarStr var_1E0
  loc_AED5E0: ConcatVar var_1F0
  loc_AED5E4: LitVarStr var_200, "-"
  loc_AED5E9: ConcatVar var_210
  loc_AED5ED: FLdRfVar var_234
  loc_AED5F0: FLdRfVar var_224
  loc_AED5F3: LitVarStr var_220, "ExpeImpu"
  loc_AED5F8: PopAdLdVar
  loc_AED5F9: FLdRfVar var_180
  loc_AED5FC: FLdRfVar var_D8
  loc_AED5FF: FLdPr Me
  loc_AED602: MemLdRfVar from_stack_1.global_88
  loc_AED605: NewIfNullPr clsordencompra
  loc_AED608: from_stack_1v = clsordencompra.RsFrmGet()
  loc_AED60D: FLdPr var_D8
  loc_AED610:  = Me.Fields
  loc_AED615: FLdPr var_180
  loc_AED618: from_stack_2 = Me.Item(from_stack_1)
  loc_AED61D: FLdPr var_224
  loc_AED620:  = Me.Value
  loc_AED625: FLdRfVar var_234
  loc_AED628: ConcatVar var_244
  loc_AED62C: LitVarStr var_254, " - Orden de Compra Nro "
  loc_AED631: ConcatVar var_264
  loc_AED635: FLdRfVar var_290
  loc_AED638: FLdRfVar var_280
  loc_AED63B: LitVarStr var_27C, "CodiOrco"
  loc_AED640: PopAdLdVar
  loc_AED641: FLdRfVar var_26C
  loc_AED644: FLdRfVar var_268
  loc_AED647: FLdPr Me
  loc_AED64A: MemLdRfVar from_stack_1.global_88
  loc_AED64D: NewIfNullPr clsordencompra
  loc_AED650: from_stack_1v = clsordencompra.RsFrmGet()
  loc_AED655: FLdPr var_268
  loc_AED658:  = Me.Fields
  loc_AED65D: FLdPr var_26C
  loc_AED660: from_stack_2 = Me.Item(from_stack_1)
  loc_AED665: FLdPr var_280
  loc_AED668:  = Me.Value
  loc_AED66D: FLdRfVar var_290
  loc_AED670: ConcatVar var_2A0
  loc_AED674: CStrVarVal var_134
  loc_AED678: FLdPr Me
  loc_AED67B: Me.Tag = from_stack_1
  loc_AED680: FFreeStr var_DC = ""
  loc_AED687: FFreeAd var_BC = "": var_D8 = "": var_180 = "": var_224 = "": var_268 = "": var_26C = ""
  loc_AED698: FFreeVar var_A8 = "": var_D0 = "": var_F0 = "": var_110 = "": var_100 = "": var_120 = "": var_190 = "": var_1E0 = "": var_1F0 = "": var_210 = "": var_234 = "": var_244 = "": var_264 = "": var_290 = ""
  loc_AED6B9: FLdPr Me
  loc_AED6BC: MemLdRfVar from_stack_1.global_88
  loc_AED6BF: NewIfNullPr clsordencompra
  loc_AED6C2: Call clsordencompra.MoveSiguiente()
  loc_AED6C7: Branch loc_AED558
  loc_AED6CA: LitI2_Byte 0
  loc_AED6CC: ILdRf Me
  loc_AED6CF: CastAd
  loc_AED6D2: FStAdFunc var_BC
  loc_AED6D5: FLdRfVar var_BC
  loc_AED6D8: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_AED6DD: FFree1Ad var_BC
  loc_AED6E0: Branch loc_AED6F9
  loc_AED6E3: LitI2_Byte 0
  loc_AED6E5: ILdRf Me
  loc_AED6E8: CastAd
  loc_AED6EB: FStAdFunc var_BC
  loc_AED6EE: FLdRfVar var_BC
  loc_AED6F1: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_AED6F6: FFree1Ad var_BC
  loc_AED6F9: LitI4 0
  loc_AED6FE: CI2I4
  loc_AED6FF: FLdPr Me
  loc_AED702: Me.MousePointer = from_stack_1
  loc_AED707: LitVarStr var_A8, vbNullString
  loc_AED70C: PopAdLdVar
  loc_AED70D: FLdPr Me
  loc_AED710: VCallAd Control_ID_statusBar
  loc_AED713: FStAdFunc var_BC
  loc_AED716: FLdPr var_BC
  loc_AED719: LateIdSt
  loc_AED71E: FFree1Ad var_BC
  loc_AED721: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '989DAC
  'Data Table: 4E66BC
  loc_989D74: FLdPr Me
  loc_989D77: VCallAd Control_ID_statusBar
  loc_989D7A: FStAdFunc var_88
  loc_989D7D: FLdPr var_88
  loc_989D80: LateIdLdVar var_98 DispID_1 0
  loc_989D87: CStrVarTmp
  loc_989D88: CVarStr var_A8
  loc_989D8B: PopAdLdVar
  loc_989D8C: FLdPr Me
  loc_989D8F: VCallAd Control_ID_statusBar
  loc_989D92: FStAdFunc var_BC
  loc_989D95: FLdPr var_BC
  loc_989D98: LateIdSt
  loc_989D9D: FFreeAd var_88 = ""
  loc_989DA4: FFreeVar var_98 = ""
  loc_989DAB: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '9A0E1C
  'Data Table: 4E66BC
  loc_9A0DAC: LitVarStr var_94, vbNullString
  loc_9A0DB1: PopAdLdVar
  loc_9A0DB2: FLdPr Me
  loc_9A0DB5: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0DB8: FStAdFunc var_A8
  loc_9A0DBB: FLdPr var_A8
  loc_9A0DBE: LateIdSt
  loc_9A0DC3: FFree1Ad var_A8
  loc_9A0DC6: FLdPr Me
  loc_9A0DC9: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0DCC: FStAdFunc var_A8
  loc_9A0DCF: FLdPr var_A8
  loc_9A0DD2: LateIdLdVar var_B8 DispID_22 0
  loc_9A0DD9: CStrVarTmp
  loc_9A0DDA: FStStrNoPop var_BC
  loc_9A0DDD: LitStr vbNullString
  loc_9A0DE0: EqStr
  loc_9A0DE2: FFree1Str var_BC
  loc_9A0DE5: FFree1Ad var_A8
  loc_9A0DE8: FFree1Var var_B8 = ""
  loc_9A0DEB: BranchF loc_9A0E08
  loc_9A0DEE: LitVarStr var_94, vbNullString
  loc_9A0DF3: PopAdLdVar
  loc_9A0DF4: FLdPr Me
  loc_9A0DF7: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0DFA: FStAdFunc var_A8
  loc_9A0DFD: FLdPr var_A8
  loc_9A0E00: LateIdSt
  loc_9A0E05: FFree1Ad var_A8
  loc_9A0E08: FLdPr Me
  loc_9A0E0B: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0E0E: CVarAd
  loc_9A0E12: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A0E17: FFree1Var var_B8 = ""
  loc_9A0E1A: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 '969E1C
  'Data Table: 4E66BC
  loc_969E00: LitVarStr var_94, "######"
  loc_969E05: PopAdLdVar
  loc_969E06: FLdPr Me
  loc_969E09: VCallAd Control_ID_CodiOrgaMsk
  loc_969E0C: FStAdFunc var_A8
  loc_969E0F: FLdPr var_A8
  loc_969E12: LateIdSt
  loc_969E17: FFree1Ad var_A8
  loc_969E1A: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'B50010
  'Data Table: 4E66BC
  loc_B4F550: FLdRfVar var_8A
  loc_B4F553: FLdPr Me
  loc_B4F556: VCallAd Control_ID_cmdSalir
  loc_B4F559: FStAdFunc var_88
  loc_B4F55C: FLdPr var_88
  loc_B4F55F:  = Me.Value
  loc_B4F564: FLdI2 var_8A
  loc_B4F567: NotI4
  loc_B4F568: FLdPr Me
  loc_B4F56B: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F56E: FStAdFunc var_90
  loc_B4F571: FLdPr var_90
  loc_B4F574: LateIdLdVar var_A0 DispID_13 -32767
  loc_B4F57B: CBoolVar
  loc_B4F57D: AndI4
  loc_B4F57E: FLdPr Me
  loc_B4F581: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F584: FStAdFunc var_A4
  loc_B4F587: FLdPr var_A4
  loc_B4F58A: LateIdLdVar var_B4 DispID_22 0
  loc_B4F591: CStrVarTmp
  loc_B4F592: FStStrNoPop var_B8
  loc_B4F595: LitStr vbNullString
  loc_B4F598: NeStr
  loc_B4F59A: AndI4
  loc_B4F59B: FFree1Str var_B8
  loc_B4F59E: FFreeAd var_88 = "": var_90 = ""
  loc_B4F5A7: FFreeVar var_A0 = ""
  loc_B4F5AE: BranchF loc_B5000E
  loc_B4F5B1: FLdPr Me
  loc_B4F5B4: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F5B7: FStAdFunc var_88
  loc_B4F5BA: FLdPr var_88
  loc_B4F5BD: LateIdLdVar var_A0 DispID_22 0
  loc_B4F5C4: CStrVarTmp
  loc_B4F5C5: FStStrNoPop var_B8
  loc_B4F5C8: ImpAdCallI2 Trim$()
  loc_B4F5CD: FStStrNoPop var_BC
  loc_B4F5D0: LitStr vbNullString
  loc_B4F5D3: NeStr
  loc_B4F5D5: FFreeStr var_B8 = ""
  loc_B4F5DC: FFree1Ad var_88
  loc_B4F5DF: FFree1Var var_A0 = ""
  loc_B4F5E2: BranchF loc_B4FE42
  loc_B4F5E5: FLdPr Me
  loc_B4F5E8: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F5EB: FStAdFunc var_88
  loc_B4F5EE: FLdRfVar var_88
  loc_B4F5F1: ImpAdCallI2 Proc_266_40_A1E128()
  loc_B4F5F6: FFree1Ad var_88
  loc_B4F5F9: BranchF loc_B4FA1F
  loc_B4F5FC: FLdPr Me
  loc_B4F5FF: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F602: FStAdFunc var_88
  loc_B4F605: FLdPr var_88
  loc_B4F608: LateIdLdVar var_A0 DispID_22 0
  loc_B4F60F: PopAd
  loc_B4F611: LitStr " AND o.CodiOrga = '"
  loc_B4F614: LitI4 0
  loc_B4F619: LitI4 -1
  loc_B4F61E: LitI4 1
  loc_B4F623: LitStr vbNullString
  loc_B4F626: LitStr "."
  loc_B4F629: FLdRfVar var_A0
  loc_B4F62C: CStrVarTmp
  loc_B4F62D: FStStrNoPop var_B8
  loc_B4F630: ImpAdCallI2 Replace(, , , , , )
  loc_B4F635: FStStrNoPop var_BC
  loc_B4F638: ConcatStr
  loc_B4F639: FStStrNoPop var_C0
  loc_B4F63C: LitStr "'"
  loc_B4F63F: ConcatStr
  loc_B4F640: FStStrNoPop var_C4
  loc_B4F643: ImpAdLdI2 MemVar_C3D064
  loc_B4F646: ImpAdLdRf MemVar_C3D710
  loc_B4F649: NewIfNullPr bscOrganigrama
  loc_B4F64C: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B4F651: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_B4F65C: FFree1Ad var_88
  loc_B4F65F: FFree1Var var_A0 = ""
  loc_B4F662: FLdRfVar var_C8
  loc_B4F665: FLdRfVar var_90
  loc_B4F668: FLdRfVar var_88
  loc_B4F66B: ImpAdLdRf MemVar_C3D710
  loc_B4F66E: NewIfNullPr bscOrganigrama
  loc_B4F671: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4F676: FLdPr var_88
  loc_B4F679: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F67E: FLdPr var_90
  loc_B4F681:  = Me.RecordCount
  loc_B4F686: ILdRf var_C8
  loc_B4F689: LitI4 1
  loc_B4F68E: EqI4
  loc_B4F68F: FFreeAd var_88 = ""
  loc_B4F696: BranchF loc_B4F7BB
  loc_B4F699: FLdRfVar var_A0
  loc_B4F69C: FLdRfVar var_DC
  loc_B4F69F: LitVarStr var_D8, "CodiOrga"
  loc_B4F6A4: PopAdLdVar
  loc_B4F6A5: FLdRfVar var_A4
  loc_B4F6A8: FLdRfVar var_90
  loc_B4F6AB: FLdRfVar var_88
  loc_B4F6AE: ImpAdLdRf MemVar_C3D710
  loc_B4F6B1: NewIfNullPr bscOrganigrama
  loc_B4F6B4: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4F6B9: FLdPr var_88
  loc_B4F6BC: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F6C1: FLdPr var_90
  loc_B4F6C4:  = Me.Fields
  loc_B4F6C9: FLdPr var_A4
  loc_B4F6CC: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F6D1: FLdPr var_DC
  loc_B4F6D4:  = Me.Value
  loc_B4F6D9: FLdRfVar var_B8
  loc_B4F6DC: FLdPr Me
  loc_B4F6DF:  = Me.Name
  loc_B4F6E4: FLdPr Me
  loc_B4F6E7: MemLdRfVar from_stack_1.global_76
  loc_B4F6EA: NewIfNullRf
  loc_B4F6EE: ILdRf var_B8
  loc_B4F6F1: FLdRfVar var_A0
  loc_B4F6F4: CStrVarTmp
  loc_B4F6F5: FStStrNoPop var_BC
  loc_B4F6F8: ImpAdLdI2 MemVar_C3D064
  loc_B4F6FB: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B4F700: FStStrNoPop var_C0
  loc_B4F703: FLdPr Me
  loc_B4F706: MemStStrCopy
  loc_B4F70A: FFreeStr var_BC = "": var_B8 = ""
  loc_B4F713: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4F71E: FFree1Var var_A0 = ""
  loc_B4F721: FLdRfVar var_B8
  loc_B4F724: FLdPr Me
  loc_B4F727: MemLdRfVar from_stack_1.global_76
  loc_B4F72A: NewIfNullPr tblorganigrama
  loc_B4F72D: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B4F732: FLdZeroAd var_B8
  loc_B4F735: CVarStr var_A0
  loc_B4F738: PopAdLdVar
  loc_B4F739: FLdPr Me
  loc_B4F73C: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F73F: FStAdFunc var_88
  loc_B4F742: FLdPr var_88
  loc_B4F745: LateIdSt
  loc_B4F74A: FFree1Ad var_88
  loc_B4F74D: FFree1Var var_A0 = ""
  loc_B4F750: FLdRfVar var_B8
  loc_B4F753: FLdPr Me
  loc_B4F756: MemLdRfVar from_stack_1.global_76
  loc_B4F759: NewIfNullPr tblorganigrama
  loc_B4F75C: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B4F761: ILdRf var_B8
  loc_B4F764: FLdPr Me
  loc_B4F767: VCallAd Control_ID_DetaOrgaLbl
  loc_B4F76A: FStAdFunc var_88
  loc_B4F76D: FLdPr var_88
  loc_B4F770: Me.Caption = from_stack_1
  loc_B4F775: FFree1Str var_B8
  loc_B4F778: FFree1Ad var_88
  loc_B4F77B: FLdPr Me
  loc_B4F77E: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F781: FStAdFunc var_DC
  loc_B4F784: FLdPr Me
  loc_B4F787: VCallAd Control_ID_DetaOrgaLbl
  loc_B4F78A: FStAdFunc var_A4
  loc_B4F78D: FLdRfVar var_A4
  loc_B4F790: FLdZeroAd var_DC
  loc_B4F793: FStAdFuncNoPop
  loc_B4F796: CastAd
  loc_B4F799: FStAdFunc var_90
  loc_B4F79C: FLdRfVar var_90
  loc_B4F79F: FLdPr Me
  loc_B4F7A2: MemLdRfVar from_stack_1.global_120
  loc_B4F7A5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4F7AA: IStI2 Button
  loc_B4F7AD: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4F7B8: Branch loc_B4FA1C
  loc_B4F7BB: FLdRfVar var_C8
  loc_B4F7BE: FLdRfVar var_90
  loc_B4F7C1: FLdRfVar var_88
  loc_B4F7C4: ImpAdLdRf MemVar_C3D710
  loc_B4F7C7: NewIfNullPr bscOrganigrama
  loc_B4F7CA: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4F7CF: FLdPr var_88
  loc_B4F7D2: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F7D7: FLdPr var_90
  loc_B4F7DA:  = Me.RecordCount
  loc_B4F7DF: ILdRf var_C8
  loc_B4F7E2: LitI4 1
  loc_B4F7E7: GtI4
  loc_B4F7E8: FFreeAd var_88 = ""
  loc_B4F7EF: BranchF loc_B4F99E
  loc_B4F7F2: LitVar_Missing var_EC
  loc_B4F7F5: PopAdLdVar
  loc_B4F7F6: LitVarI4
  loc_B4F7FE: PopAdLdVar
  loc_B4F7FF: ImpAdLdRf MemVar_C3D710
  loc_B4F802: NewIfNullPr bscOrganigrama
  loc_B4F805: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B4F80A: FLdRfVar var_C8
  loc_B4F80D: FLdRfVar var_88
  loc_B4F810: ImpAdLdRf MemVar_C3D710
  loc_B4F813: NewIfNullPr bscOrganigrama
  loc_B4F816: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4F81B: FLdPr var_88
  loc_B4F81E: from_stack_1 = clsbase.RecordCount
  loc_B4F823: ILdRf var_C8
  loc_B4F826: LitI4 0
  loc_B4F82B: GtI4
  loc_B4F82C: FFree1Ad var_88
  loc_B4F82F: BranchF loc_B4F954
  loc_B4F832: FLdRfVar var_A0
  loc_B4F835: FLdRfVar var_DC
  loc_B4F838: LitVarStr var_D8, "CodiOrga"
  loc_B4F83D: PopAdLdVar
  loc_B4F83E: FLdRfVar var_A4
  loc_B4F841: FLdRfVar var_90
  loc_B4F844: FLdRfVar var_88
  loc_B4F847: ImpAdLdRf MemVar_C3D710
  loc_B4F84A: NewIfNullPr bscOrganigrama
  loc_B4F84D: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4F852: FLdPr var_88
  loc_B4F855: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F85A: FLdPr var_90
  loc_B4F85D:  = Me.Fields
  loc_B4F862: FLdPr var_A4
  loc_B4F865: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F86A: FLdPr var_DC
  loc_B4F86D:  = Me.Value
  loc_B4F872: FLdRfVar var_B8
  loc_B4F875: FLdPr Me
  loc_B4F878:  = Me.Name
  loc_B4F87D: FLdPr Me
  loc_B4F880: MemLdRfVar from_stack_1.global_76
  loc_B4F883: NewIfNullRf
  loc_B4F887: ILdRf var_B8
  loc_B4F88A: FLdRfVar var_A0
  loc_B4F88D: CStrVarTmp
  loc_B4F88E: FStStrNoPop var_BC
  loc_B4F891: ImpAdLdI2 MemVar_C3D064
  loc_B4F894: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B4F899: FStStrNoPop var_C0
  loc_B4F89C: FLdPr Me
  loc_B4F89F: MemStStrCopy
  loc_B4F8A3: FFreeStr var_BC = "": var_B8 = ""
  loc_B4F8AC: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4F8B7: FFree1Var var_A0 = ""
  loc_B4F8BA: FLdRfVar var_B8
  loc_B4F8BD: FLdPr Me
  loc_B4F8C0: MemLdRfVar from_stack_1.global_76
  loc_B4F8C3: NewIfNullPr tblorganigrama
  loc_B4F8C6: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B4F8CB: FLdZeroAd var_B8
  loc_B4F8CE: CVarStr var_A0
  loc_B4F8D1: PopAdLdVar
  loc_B4F8D2: FLdPr Me
  loc_B4F8D5: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F8D8: FStAdFunc var_88
  loc_B4F8DB: FLdPr var_88
  loc_B4F8DE: LateIdSt
  loc_B4F8E3: FFree1Ad var_88
  loc_B4F8E6: FFree1Var var_A0 = ""
  loc_B4F8E9: FLdRfVar var_B8
  loc_B4F8EC: FLdPr Me
  loc_B4F8EF: MemLdRfVar from_stack_1.global_76
  loc_B4F8F2: NewIfNullPr tblorganigrama
  loc_B4F8F5: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B4F8FA: ILdRf var_B8
  loc_B4F8FD: FLdPr Me
  loc_B4F900: VCallAd Control_ID_DetaOrgaLbl
  loc_B4F903: FStAdFunc var_88
  loc_B4F906: FLdPr var_88
  loc_B4F909: Me.Caption = from_stack_1
  loc_B4F90E: FFree1Str var_B8
  loc_B4F911: FFree1Ad var_88
  loc_B4F914: FLdPr Me
  loc_B4F917: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F91A: FStAdFunc var_DC
  loc_B4F91D: FLdPr Me
  loc_B4F920: VCallAd Control_ID_DetaOrgaLbl
  loc_B4F923: FStAdFunc var_A4
  loc_B4F926: FLdRfVar var_A4
  loc_B4F929: FLdZeroAd var_DC
  loc_B4F92C: FStAdFuncNoPop
  loc_B4F92F: CastAd
  loc_B4F932: FStAdFunc var_90
  loc_B4F935: FLdRfVar var_90
  loc_B4F938: FLdPr Me
  loc_B4F93B: MemLdRfVar from_stack_1.global_120
  loc_B4F93E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4F943: IStI2 Button
  loc_B4F946: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4F951: Branch loc_B4F99B
  loc_B4F954: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B4F957: FLdPr Me
  loc_B4F95A: MemStStrCopy
  loc_B4F95E: FLdPr Me
  loc_B4F961: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F964: FStAdFunc var_DC
  loc_B4F967: FLdPr Me
  loc_B4F96A: VCallAd Control_ID_DetaOrgaLbl
  loc_B4F96D: FStAdFunc var_A4
  loc_B4F970: FLdRfVar var_A4
  loc_B4F973: FLdZeroAd var_DC
  loc_B4F976: FStAdFuncNoPop
  loc_B4F979: CastAd
  loc_B4F97C: FStAdFunc var_90
  loc_B4F97F: FLdRfVar var_90
  loc_B4F982: FLdPr Me
  loc_B4F985: MemLdRfVar from_stack_1.global_120
  loc_B4F988: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4F98D: IStI2 Button
  loc_B4F990: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4F99B: Branch loc_B4FA1C
  loc_B4F99E: FLdRfVar var_C8
  loc_B4F9A1: FLdRfVar var_90
  loc_B4F9A4: FLdRfVar var_88
  loc_B4F9A7: ImpAdLdRf MemVar_C3D710
  loc_B4F9AA: NewIfNullPr bscOrganigrama
  loc_B4F9AD: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4F9B2: FLdPr var_88
  loc_B4F9B5: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F9BA: FLdPr var_90
  loc_B4F9BD:  = Me.RecordCount
  loc_B4F9C2: ILdRf var_C8
  loc_B4F9C5: LitI4 1
  loc_B4F9CA: LtI4
  loc_B4F9CB: FFreeAd var_88 = ""
  loc_B4F9D2: BranchF loc_B4FA1C
  loc_B4F9D5: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B4F9D8: FLdPr Me
  loc_B4F9DB: MemStStrCopy
  loc_B4F9DF: FLdPr Me
  loc_B4F9E2: VCallAd Control_ID_CodiOrgaMsk
  loc_B4F9E5: FStAdFunc var_DC
  loc_B4F9E8: FLdPr Me
  loc_B4F9EB: VCallAd Control_ID_DetaOrgaLbl
  loc_B4F9EE: FStAdFunc var_A4
  loc_B4F9F1: FLdRfVar var_A4
  loc_B4F9F4: FLdZeroAd var_DC
  loc_B4F9F7: FStAdFuncNoPop
  loc_B4F9FA: CastAd
  loc_B4F9FD: FStAdFunc var_90
  loc_B4FA00: FLdRfVar var_90
  loc_B4FA03: FLdPr Me
  loc_B4FA06: MemLdRfVar from_stack_1.global_120
  loc_B4FA09: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4FA0E: IStI2 Button
  loc_B4FA11: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4FA1C: Branch loc_B4FE3F
  loc_B4FA1F: FLdPr Me
  loc_B4FA22: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FA25: FStAdFunc var_88
  loc_B4FA28: FLdPr var_88
  loc_B4FA2B: LateIdLdVar var_A0 DispID_22 0
  loc_B4FA32: PopAd
  loc_B4FA34: LitStr " AND o.DetaOrga LIKE '" & Chr(37)
  loc_B4FA37: LitI4 0
  loc_B4FA3C: LitI4 -1
  loc_B4FA41: LitI4 1
  loc_B4FA46: LitStr Chr(37)
  loc_B4FA49: LitStr " "
  loc_B4FA4C: FLdRfVar var_A0
  loc_B4FA4F: CStrVarTmp
  loc_B4FA50: FStStrNoPop var_B8
  loc_B4FA53: ImpAdCallI2 Replace(, , , , , )
  loc_B4FA58: FStStrNoPop var_BC
  loc_B4FA5B: ConcatStr
  loc_B4FA5C: FStStrNoPop var_C0
  loc_B4FA5F: LitStr Chr(37) & "'"
  loc_B4FA62: ConcatStr
  loc_B4FA63: FStStrNoPop var_C4
  loc_B4FA66: ImpAdLdI2 MemVar_C3D064
  loc_B4FA69: ImpAdLdRf MemVar_C3D710
  loc_B4FA6C: NewIfNullPr bscOrganigrama
  loc_B4FA6F: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B4FA74: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_B4FA7F: FFree1Ad var_88
  loc_B4FA82: FFree1Var var_A0 = ""
  loc_B4FA85: FLdRfVar var_C8
  loc_B4FA88: FLdRfVar var_90
  loc_B4FA8B: FLdRfVar var_88
  loc_B4FA8E: ImpAdLdRf MemVar_C3D710
  loc_B4FA91: NewIfNullPr bscOrganigrama
  loc_B4FA94: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4FA99: FLdPr var_88
  loc_B4FA9C: from_stack_1v = clsbase.RsFrmGet()
  loc_B4FAA1: FLdPr var_90
  loc_B4FAA4:  = Me.RecordCount
  loc_B4FAA9: ILdRf var_C8
  loc_B4FAAC: LitI4 1
  loc_B4FAB1: EqI4
  loc_B4FAB2: FFreeAd var_88 = ""
  loc_B4FAB9: BranchF loc_B4FBDE
  loc_B4FABC: FLdRfVar var_A0
  loc_B4FABF: FLdRfVar var_DC
  loc_B4FAC2: LitVarStr var_D8, "CodiOrga"
  loc_B4FAC7: PopAdLdVar
  loc_B4FAC8: FLdRfVar var_A4
  loc_B4FACB: FLdRfVar var_90
  loc_B4FACE: FLdRfVar var_88
  loc_B4FAD1: ImpAdLdRf MemVar_C3D710
  loc_B4FAD4: NewIfNullPr bscOrganigrama
  loc_B4FAD7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4FADC: FLdPr var_88
  loc_B4FADF: from_stack_1v = clsbase.RsFrmGet()
  loc_B4FAE4: FLdPr var_90
  loc_B4FAE7:  = Me.Fields
  loc_B4FAEC: FLdPr var_A4
  loc_B4FAEF: from_stack_2 = Me.Item(from_stack_1)
  loc_B4FAF4: FLdPr var_DC
  loc_B4FAF7:  = Me.Value
  loc_B4FAFC: FLdRfVar var_B8
  loc_B4FAFF: FLdPr Me
  loc_B4FB02:  = Me.Name
  loc_B4FB07: FLdPr Me
  loc_B4FB0A: MemLdRfVar from_stack_1.global_76
  loc_B4FB0D: NewIfNullRf
  loc_B4FB11: ILdRf var_B8
  loc_B4FB14: FLdRfVar var_A0
  loc_B4FB17: CStrVarTmp
  loc_B4FB18: FStStrNoPop var_BC
  loc_B4FB1B: ImpAdLdI2 MemVar_C3D064
  loc_B4FB1E: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B4FB23: FStStrNoPop var_C0
  loc_B4FB26: FLdPr Me
  loc_B4FB29: MemStStrCopy
  loc_B4FB2D: FFreeStr var_BC = "": var_B8 = ""
  loc_B4FB36: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4FB41: FFree1Var var_A0 = ""
  loc_B4FB44: FLdRfVar var_B8
  loc_B4FB47: FLdPr Me
  loc_B4FB4A: MemLdRfVar from_stack_1.global_76
  loc_B4FB4D: NewIfNullPr tblorganigrama
  loc_B4FB50: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B4FB55: FLdZeroAd var_B8
  loc_B4FB58: CVarStr var_A0
  loc_B4FB5B: PopAdLdVar
  loc_B4FB5C: FLdPr Me
  loc_B4FB5F: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FB62: FStAdFunc var_88
  loc_B4FB65: FLdPr var_88
  loc_B4FB68: LateIdSt
  loc_B4FB6D: FFree1Ad var_88
  loc_B4FB70: FFree1Var var_A0 = ""
  loc_B4FB73: FLdRfVar var_B8
  loc_B4FB76: FLdPr Me
  loc_B4FB79: MemLdRfVar from_stack_1.global_76
  loc_B4FB7C: NewIfNullPr tblorganigrama
  loc_B4FB7F: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B4FB84: ILdRf var_B8
  loc_B4FB87: FLdPr Me
  loc_B4FB8A: VCallAd Control_ID_DetaOrgaLbl
  loc_B4FB8D: FStAdFunc var_88
  loc_B4FB90: FLdPr var_88
  loc_B4FB93: Me.Caption = from_stack_1
  loc_B4FB98: FFree1Str var_B8
  loc_B4FB9B: FFree1Ad var_88
  loc_B4FB9E: FLdPr Me
  loc_B4FBA1: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FBA4: FStAdFunc var_DC
  loc_B4FBA7: FLdPr Me
  loc_B4FBAA: VCallAd Control_ID_DetaOrgaLbl
  loc_B4FBAD: FStAdFunc var_A4
  loc_B4FBB0: FLdRfVar var_A4
  loc_B4FBB3: FLdZeroAd var_DC
  loc_B4FBB6: FStAdFuncNoPop
  loc_B4FBB9: CastAd
  loc_B4FBBC: FStAdFunc var_90
  loc_B4FBBF: FLdRfVar var_90
  loc_B4FBC2: FLdPr Me
  loc_B4FBC5: MemLdRfVar from_stack_1.global_120
  loc_B4FBC8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4FBCD: IStI2 Button
  loc_B4FBD0: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4FBDB: Branch loc_B4FE3F
  loc_B4FBDE: FLdRfVar var_C8
  loc_B4FBE1: FLdRfVar var_90
  loc_B4FBE4: FLdRfVar var_88
  loc_B4FBE7: ImpAdLdRf MemVar_C3D710
  loc_B4FBEA: NewIfNullPr bscOrganigrama
  loc_B4FBED: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4FBF2: FLdPr var_88
  loc_B4FBF5: from_stack_1v = clsbase.RsFrmGet()
  loc_B4FBFA: FLdPr var_90
  loc_B4FBFD:  = Me.RecordCount
  loc_B4FC02: ILdRf var_C8
  loc_B4FC05: LitI4 1
  loc_B4FC0A: GtI4
  loc_B4FC0B: FFreeAd var_88 = ""
  loc_B4FC12: BranchF loc_B4FDC1
  loc_B4FC15: LitVar_Missing var_EC
  loc_B4FC18: PopAdLdVar
  loc_B4FC19: LitVarI4
  loc_B4FC21: PopAdLdVar
  loc_B4FC22: ImpAdLdRf MemVar_C3D710
  loc_B4FC25: NewIfNullPr bscOrganigrama
  loc_B4FC28: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B4FC2D: FLdRfVar var_C8
  loc_B4FC30: FLdRfVar var_88
  loc_B4FC33: ImpAdLdRf MemVar_C3D710
  loc_B4FC36: NewIfNullPr bscOrganigrama
  loc_B4FC39: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4FC3E: FLdPr var_88
  loc_B4FC41: from_stack_1 = clsbase.RecordCount
  loc_B4FC46: ILdRf var_C8
  loc_B4FC49: LitI4 0
  loc_B4FC4E: GtI4
  loc_B4FC4F: FFree1Ad var_88
  loc_B4FC52: BranchF loc_B4FD77
  loc_B4FC55: FLdRfVar var_A0
  loc_B4FC58: FLdRfVar var_DC
  loc_B4FC5B: LitVarStr var_D8, "CodiOrga"
  loc_B4FC60: PopAdLdVar
  loc_B4FC61: FLdRfVar var_A4
  loc_B4FC64: FLdRfVar var_90
  loc_B4FC67: FLdRfVar var_88
  loc_B4FC6A: ImpAdLdRf MemVar_C3D710
  loc_B4FC6D: NewIfNullPr bscOrganigrama
  loc_B4FC70: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4FC75: FLdPr var_88
  loc_B4FC78: from_stack_1v = clsbase.RsFrmGet()
  loc_B4FC7D: FLdPr var_90
  loc_B4FC80:  = Me.Fields
  loc_B4FC85: FLdPr var_A4
  loc_B4FC88: from_stack_2 = Me.Item(from_stack_1)
  loc_B4FC8D: FLdPr var_DC
  loc_B4FC90:  = Me.Value
  loc_B4FC95: FLdRfVar var_B8
  loc_B4FC98: FLdPr Me
  loc_B4FC9B:  = Me.Name
  loc_B4FCA0: FLdPr Me
  loc_B4FCA3: MemLdRfVar from_stack_1.global_76
  loc_B4FCA6: NewIfNullRf
  loc_B4FCAA: ILdRf var_B8
  loc_B4FCAD: FLdRfVar var_A0
  loc_B4FCB0: CStrVarTmp
  loc_B4FCB1: FStStrNoPop var_BC
  loc_B4FCB4: ImpAdLdI2 MemVar_C3D064
  loc_B4FCB7: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B4FCBC: FStStrNoPop var_C0
  loc_B4FCBF: FLdPr Me
  loc_B4FCC2: MemStStrCopy
  loc_B4FCC6: FFreeStr var_BC = "": var_B8 = ""
  loc_B4FCCF: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4FCDA: FFree1Var var_A0 = ""
  loc_B4FCDD: FLdRfVar var_B8
  loc_B4FCE0: FLdPr Me
  loc_B4FCE3: MemLdRfVar from_stack_1.global_76
  loc_B4FCE6: NewIfNullPr tblorganigrama
  loc_B4FCE9: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B4FCEE: FLdZeroAd var_B8
  loc_B4FCF1: CVarStr var_A0
  loc_B4FCF4: PopAdLdVar
  loc_B4FCF5: FLdPr Me
  loc_B4FCF8: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FCFB: FStAdFunc var_88
  loc_B4FCFE: FLdPr var_88
  loc_B4FD01: LateIdSt
  loc_B4FD06: FFree1Ad var_88
  loc_B4FD09: FFree1Var var_A0 = ""
  loc_B4FD0C: FLdRfVar var_B8
  loc_B4FD0F: FLdPr Me
  loc_B4FD12: MemLdRfVar from_stack_1.global_76
  loc_B4FD15: NewIfNullPr tblorganigrama
  loc_B4FD18: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B4FD1D: ILdRf var_B8
  loc_B4FD20: FLdPr Me
  loc_B4FD23: VCallAd Control_ID_DetaOrgaLbl
  loc_B4FD26: FStAdFunc var_88
  loc_B4FD29: FLdPr var_88
  loc_B4FD2C: Me.Caption = from_stack_1
  loc_B4FD31: FFree1Str var_B8
  loc_B4FD34: FFree1Ad var_88
  loc_B4FD37: FLdPr Me
  loc_B4FD3A: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FD3D: FStAdFunc var_DC
  loc_B4FD40: FLdPr Me
  loc_B4FD43: VCallAd Control_ID_DetaOrgaLbl
  loc_B4FD46: FStAdFunc var_A4
  loc_B4FD49: FLdRfVar var_A4
  loc_B4FD4C: FLdZeroAd var_DC
  loc_B4FD4F: FStAdFuncNoPop
  loc_B4FD52: CastAd
  loc_B4FD55: FStAdFunc var_90
  loc_B4FD58: FLdRfVar var_90
  loc_B4FD5B: FLdPr Me
  loc_B4FD5E: MemLdRfVar from_stack_1.global_120
  loc_B4FD61: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4FD66: IStI2 Button
  loc_B4FD69: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4FD74: Branch loc_B4FDBE
  loc_B4FD77: LitStr "El Organigrama NO EXISTE. Verique..."
  loc_B4FD7A: FLdPr Me
  loc_B4FD7D: MemStStrCopy
  loc_B4FD81: FLdPr Me
  loc_B4FD84: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FD87: FStAdFunc var_DC
  loc_B4FD8A: FLdPr Me
  loc_B4FD8D: VCallAd Control_ID_DetaOrgaLbl
  loc_B4FD90: FStAdFunc var_A4
  loc_B4FD93: FLdRfVar var_A4
  loc_B4FD96: FLdZeroAd var_DC
  loc_B4FD99: FStAdFuncNoPop
  loc_B4FD9C: CastAd
  loc_B4FD9F: FStAdFunc var_90
  loc_B4FDA2: FLdRfVar var_90
  loc_B4FDA5: FLdPr Me
  loc_B4FDA8: MemLdRfVar from_stack_1.global_120
  loc_B4FDAB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4FDB0: IStI2 Button
  loc_B4FDB3: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4FDBE: Branch loc_B4FE3F
  loc_B4FDC1: FLdRfVar var_C8
  loc_B4FDC4: FLdRfVar var_90
  loc_B4FDC7: FLdRfVar var_88
  loc_B4FDCA: ImpAdLdRf MemVar_C3D710
  loc_B4FDCD: NewIfNullPr bscOrganigrama
  loc_B4FDD0: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4FDD5: FLdPr var_88
  loc_B4FDD8: from_stack_1v = clsbase.RsFrmGet()
  loc_B4FDDD: FLdPr var_90
  loc_B4FDE0:  = Me.RecordCount
  loc_B4FDE5: ILdRf var_C8
  loc_B4FDE8: LitI4 1
  loc_B4FDED: LtI4
  loc_B4FDEE: FFreeAd var_88 = ""
  loc_B4FDF5: BranchF loc_B4FE3F
  loc_B4FDF8: LitStr "El organigrama NO EXISTE. Verique..."
  loc_B4FDFB: FLdPr Me
  loc_B4FDFE: MemStStrCopy
  loc_B4FE02: FLdPr Me
  loc_B4FE05: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FE08: FStAdFunc var_DC
  loc_B4FE0B: FLdPr Me
  loc_B4FE0E: VCallAd Control_ID_DetaOrgaLbl
  loc_B4FE11: FStAdFunc var_A4
  loc_B4FE14: FLdRfVar var_A4
  loc_B4FE17: FLdZeroAd var_DC
  loc_B4FE1A: FStAdFuncNoPop
  loc_B4FE1D: CastAd
  loc_B4FE20: FStAdFunc var_90
  loc_B4FE23: FLdRfVar var_90
  loc_B4FE26: FLdPr Me
  loc_B4FE29: MemLdRfVar from_stack_1.global_120
  loc_B4FE2C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4FE31: IStI2 Button
  loc_B4FE34: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4FE3F: Branch loc_B5000E
  loc_B4FE42: LitI2_Byte 0
  loc_B4FE44: ImpAdLdRf MemVar_C3D710
  loc_B4FE47: NewIfNullPr bscOrganigrama
  loc_B4FE4A: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_B4FE4F: LitNothing
  loc_B4FE51: CastAd
  loc_B4FE54: FStAdFuncNoPop
  loc_B4FE57: ImpAdLdRf MemVar_C3D710
  loc_B4FE5A: NewIfNullPr bscOrganigrama
  loc_B4FE5D: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_B4FE62: FFree1Ad var_88
  loc_B4FE65: LitVar_Missing var_EC
  loc_B4FE68: PopAdLdVar
  loc_B4FE69: LitVarI4
  loc_B4FE71: PopAdLdVar
  loc_B4FE72: ImpAdLdRf MemVar_C3D710
  loc_B4FE75: NewIfNullPr bscOrganigrama
  loc_B4FE78: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B4FE7D: FLdRfVar var_C8
  loc_B4FE80: FLdRfVar var_88
  loc_B4FE83: ImpAdLdRf MemVar_C3D710
  loc_B4FE86: NewIfNullPr bscOrganigrama
  loc_B4FE89: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4FE8E: FLdPr var_88
  loc_B4FE91: from_stack_1 = clsbase.RecordCount
  loc_B4FE96: ILdRf var_C8
  loc_B4FE99: LitI4 0
  loc_B4FE9E: GtI4
  loc_B4FE9F: FFree1Ad var_88
  loc_B4FEA2: BranchF loc_B4FFC7
  loc_B4FEA5: FLdRfVar var_A0
  loc_B4FEA8: FLdRfVar var_DC
  loc_B4FEAB: LitVarStr var_D8, "CodiOrga"
  loc_B4FEB0: PopAdLdVar
  loc_B4FEB1: FLdRfVar var_A4
  loc_B4FEB4: FLdRfVar var_90
  loc_B4FEB7: FLdRfVar var_88
  loc_B4FEBA: ImpAdLdRf MemVar_C3D710
  loc_B4FEBD: NewIfNullPr bscOrganigrama
  loc_B4FEC0: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B4FEC5: FLdPr var_88
  loc_B4FEC8: from_stack_1v = clsbase.RsFrmGet()
  loc_B4FECD: FLdPr var_90
  loc_B4FED0:  = Me.Fields
  loc_B4FED5: FLdPr var_A4
  loc_B4FED8: from_stack_2 = Me.Item(from_stack_1)
  loc_B4FEDD: FLdPr var_DC
  loc_B4FEE0:  = Me.Value
  loc_B4FEE5: FLdRfVar var_B8
  loc_B4FEE8: FLdPr Me
  loc_B4FEEB:  = Me.Name
  loc_B4FEF0: FLdPr Me
  loc_B4FEF3: MemLdRfVar from_stack_1.global_76
  loc_B4FEF6: NewIfNullRf
  loc_B4FEFA: ILdRf var_B8
  loc_B4FEFD: FLdRfVar var_A0
  loc_B4FF00: CStrVarTmp
  loc_B4FF01: FStStrNoPop var_BC
  loc_B4FF04: ImpAdLdI2 MemVar_C3D064
  loc_B4FF07: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B4FF0C: FStStrNoPop var_C0
  loc_B4FF0F: FLdPr Me
  loc_B4FF12: MemStStrCopy
  loc_B4FF16: FFreeStr var_BC = "": var_B8 = ""
  loc_B4FF1F: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4FF2A: FFree1Var var_A0 = ""
  loc_B4FF2D: FLdRfVar var_B8
  loc_B4FF30: FLdPr Me
  loc_B4FF33: MemLdRfVar from_stack_1.global_76
  loc_B4FF36: NewIfNullPr tblorganigrama
  loc_B4FF39: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B4FF3E: FLdZeroAd var_B8
  loc_B4FF41: CVarStr var_A0
  loc_B4FF44: PopAdLdVar
  loc_B4FF45: FLdPr Me
  loc_B4FF48: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FF4B: FStAdFunc var_88
  loc_B4FF4E: FLdPr var_88
  loc_B4FF51: LateIdSt
  loc_B4FF56: FFree1Ad var_88
  loc_B4FF59: FFree1Var var_A0 = ""
  loc_B4FF5C: FLdRfVar var_B8
  loc_B4FF5F: FLdPr Me
  loc_B4FF62: MemLdRfVar from_stack_1.global_76
  loc_B4FF65: NewIfNullPr tblorganigrama
  loc_B4FF68: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B4FF6D: ILdRf var_B8
  loc_B4FF70: FLdPr Me
  loc_B4FF73: VCallAd Control_ID_DetaOrgaLbl
  loc_B4FF76: FStAdFunc var_88
  loc_B4FF79: FLdPr var_88
  loc_B4FF7C: Me.Caption = from_stack_1
  loc_B4FF81: FFree1Str var_B8
  loc_B4FF84: FFree1Ad var_88
  loc_B4FF87: FLdPr Me
  loc_B4FF8A: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FF8D: FStAdFunc var_DC
  loc_B4FF90: FLdPr Me
  loc_B4FF93: VCallAd Control_ID_DetaOrgaLbl
  loc_B4FF96: FStAdFunc var_A4
  loc_B4FF99: FLdRfVar var_A4
  loc_B4FF9C: FLdZeroAd var_DC
  loc_B4FF9F: FStAdFuncNoPop
  loc_B4FFA2: CastAd
  loc_B4FFA5: FStAdFunc var_90
  loc_B4FFA8: FLdRfVar var_90
  loc_B4FFAB: FLdPr Me
  loc_B4FFAE: MemLdRfVar from_stack_1.global_120
  loc_B4FFB1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4FFB6: IStI2 Button
  loc_B4FFB9: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B4FFC4: Branch loc_B5000E
  loc_B4FFC7: LitStr "El organigrama NO EXISTE. Verifique..."
  loc_B4FFCA: FLdPr Me
  loc_B4FFCD: MemStStrCopy
  loc_B4FFD1: FLdPr Me
  loc_B4FFD4: VCallAd Control_ID_CodiOrgaMsk
  loc_B4FFD7: FStAdFunc var_DC
  loc_B4FFDA: FLdPr Me
  loc_B4FFDD: VCallAd Control_ID_DetaOrgaLbl
  loc_B4FFE0: FStAdFunc var_A4
  loc_B4FFE3: FLdRfVar var_A4
  loc_B4FFE6: FLdZeroAd var_DC
  loc_B4FFE9: FStAdFuncNoPop
  loc_B4FFEC: CastAd
  loc_B4FFEF: FStAdFunc var_90
  loc_B4FFF2: FLdRfVar var_90
  loc_B4FFF5: FLdPr Me
  loc_B4FFF8: MemLdRfVar from_stack_1.global_120
  loc_B4FFFB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B50000: IStI2 Button
  loc_B50003: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B5000E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyPress(KeyAscii As Integer) '9AC374
  'Data Table: 4E66BC
  loc_9AC2D8: FLdPr Me
  loc_9AC2DB: VCallAd Control_ID_CodiOrgaMsk
  loc_9AC2DE: FStAdFunc var_88
  loc_9AC2E1: FLdPr var_88
  loc_9AC2E4: LateIdLdVar var_98 DispID_22 0
  loc_9AC2EB: PopAd
  loc_9AC2ED: LitI4 0
  loc_9AC2F2: LitI4 -1
  loc_9AC2F7: LitI4 1
  loc_9AC2FC: LitStr vbNullString
  loc_9AC2FF: LitStr "."
  loc_9AC302: FLdRfVar var_98
  loc_9AC305: CStrVarTmp
  loc_9AC306: FStStrNoPop var_9C
  loc_9AC309: ImpAdCallI2 Replace(, , , , , )
  loc_9AC30E: FStStrNoPop var_A0
  loc_9AC311: FnLenStr
  loc_9AC312: LitI4 5
  loc_9AC317: GtI4
  loc_9AC318: FFreeStr var_9C = ""
  loc_9AC31F: FFree1Ad var_88
  loc_9AC322: FFree1Var var_98 = ""
  loc_9AC325: BranchF loc_9AC373
  loc_9AC328: FLdPr Me
  loc_9AC32B: VCallAd Control_ID_CodiOrgaMsk
  loc_9AC32E: FStAdFunc var_88
  loc_9AC331: FLdRfVar var_88
  loc_9AC334: ImpAdCallI2 Proc_266_40_A1E128()
  loc_9AC339: FFree1Ad var_88
  loc_9AC33C: BranchF loc_9AC373
  loc_9AC33F: ILdI2 KeyAscii
  loc_9AC342: CI4UI1
  loc_9AC343: LitI4 8
  loc_9AC348: NeI4
  loc_9AC349: FLdPr Me
  loc_9AC34C: VCallAd Control_ID_CodiOrgaMsk
  loc_9AC34F: FStAdFunc var_88
  loc_9AC352: FLdPr var_88
  loc_9AC355: LateIdLdVar var_98 DispID_17 0
  loc_9AC35C: CI4Var
  loc_9AC35E: LitI4 0
  loc_9AC363: EqI4
  loc_9AC364: AndI4
  loc_9AC365: FFree1Ad var_88
  loc_9AC368: FFree1Var var_98 = ""
  loc_9AC36B: BranchF loc_9AC373
  loc_9AC36E: LitI2_Byte 0
  loc_9AC370: IStI2 KeyAscii
  loc_9AC373: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A06728
  'Data Table: 4E66BC
  loc_A065D4: ILdI2 Shift
  loc_A065D7: CI4UI1
  loc_A065D8: LitI4 2
  loc_A065DD: EqI4
  loc_A065DE: ILdI2 KeyCode
  loc_A065E1: CI4UI1
  loc_A065E2: LitI4 &H42
  loc_A065E7: EqI4
  loc_A065E8: AndI4
  loc_A065E9: BranchF loc_A06727
  loc_A065EC: LitI2_Byte 0
  loc_A065EE: ImpAdLdRf MemVar_C3D710
  loc_A065F1: NewIfNullPr bscOrganigrama
  loc_A065F4: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A065F9: LitNothing
  loc_A065FB: CastAd
  loc_A065FE: FStAdFuncNoPop
  loc_A06601: ImpAdLdRf MemVar_C3D710
  loc_A06604: NewIfNullPr bscOrganigrama
  loc_A06607: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A0660C: FFree1Ad var_88
  loc_A0660F: LitVar_Missing var_A8
  loc_A06612: PopAdLdVar
  loc_A06613: LitVarI4
  loc_A0661B: PopAdLdVar
  loc_A0661C: ImpAdLdRf MemVar_C3D710
  loc_A0661F: NewIfNullPr bscOrganigrama
  loc_A06622: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A06627: FLdRfVar var_AC
  loc_A0662A: FLdRfVar var_88
  loc_A0662D: ImpAdLdRf MemVar_C3D710
  loc_A06630: NewIfNullPr bscOrganigrama
  loc_A06633: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A06638: FLdPr var_88
  loc_A0663B: from_stack_1 = clsbase.RecordCount
  loc_A06640: ILdRf var_AC
  loc_A06643: LitI4 0
  loc_A06648: GtI4
  loc_A06649: FFree1Ad var_88
  loc_A0664C: BranchF loc_A06727
  loc_A0664F: FLdRfVar var_C8
  loc_A06652: FLdRfVar var_B8
  loc_A06655: LitVarStr var_98, "CodiOrga"
  loc_A0665A: PopAdLdVar
  loc_A0665B: FLdRfVar var_B4
  loc_A0665E: FLdRfVar var_B0
  loc_A06661: FLdRfVar var_88
  loc_A06664: ImpAdLdRf MemVar_C3D710
  loc_A06667: NewIfNullPr bscOrganigrama
  loc_A0666A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A0666F: FLdPr var_88
  loc_A06672: from_stack_1v = clsbase.RsFrmGet()
  loc_A06677: FLdPr var_B0
  loc_A0667A:  = Me.Fields
  loc_A0667F: FLdPr var_B4
  loc_A06682: from_stack_2 = Me.Item(from_stack_1)
  loc_A06687: FLdPr var_B8
  loc_A0668A:  = Me.Value
  loc_A0668F: FLdRfVar var_C8
  loc_A06692: CStrVarTmp
  loc_A06693: CVarStr var_D8
  loc_A06696: PopAdLdVar
  loc_A06697: FLdPr Me
  loc_A0669A: VCallAd Control_ID_CodiOrgaMsk
  loc_A0669D: FStAdFunc var_DC
  loc_A066A0: FLdPr var_DC
  loc_A066A3: LateIdSt
  loc_A066A8: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A066B5: FFreeVar var_C8 = ""
  loc_A066BC: FLdRfVar var_C8
  loc_A066BF: FLdRfVar var_B8
  loc_A066C2: LitVarStr var_98, "DetaOrga"
  loc_A066C7: PopAdLdVar
  loc_A066C8: FLdRfVar var_B4
  loc_A066CB: FLdRfVar var_B0
  loc_A066CE: FLdRfVar var_88
  loc_A066D1: ImpAdLdRf MemVar_C3D710
  loc_A066D4: NewIfNullPr bscOrganigrama
  loc_A066D7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A066DC: FLdPr var_88
  loc_A066DF: from_stack_1v = clsbase.RsFrmGet()
  loc_A066E4: FLdPr var_B0
  loc_A066E7:  = Me.Fields
  loc_A066EC: FLdPr var_B4
  loc_A066EF: from_stack_2 = Me.Item(from_stack_1)
  loc_A066F4: FLdPr var_B8
  loc_A066F7:  = Me.Value
  loc_A066FC: FLdRfVar var_C8
  loc_A066FF: CStrVarTmp
  loc_A06700: FStStrNoPop var_E0
  loc_A06703: FLdPr Me
  loc_A06706: VCallAd Control_ID_DetaOrgaLbl
  loc_A06709: FStAdFunc var_DC
  loc_A0670C: FLdPr var_DC
  loc_A0670F: Me.Caption = from_stack_1
  loc_A06714: FFree1Str var_E0
  loc_A06717: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A06724: FFree1Var var_C8 = ""
  loc_A06727: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95FDCC
  'Data Table: 4E66BC
  loc_95FDB4: ILdRf Me
  loc_95FDB7: CastAd
  loc_95FDBA: FStAdFunc var_88
  loc_95FDBD: FLdRfVar var_88
  loc_95FDC0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95FDC5: FFree1Ad var_88
  loc_95FDC8: ExitProcHresult
End Sub

Private Sub CodiOrcoTxt_GotFocus() '94ACE8
  'Data Table: 4E66BC
  loc_94ACD4: FLdPr Me
  loc_94ACD7: VCallAd Control_ID_CodiOrcoTxt
  loc_94ACDA: CVarAd
  loc_94ACDE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94ACE3: FFree1Var var_94 = ""
  loc_94ACE6: ExitProcHresult
End Sub

Private Sub CodiOrcoTxt_KeyPress(KeyAscii As Integer) '97F4E8
  'Data Table: 4E66BC
  loc_97F4B4: LitStr "1234567890-,."
  loc_97F4B7: FStStrCopy var_88
  loc_97F4BA: FLdRfVar var_88
  loc_97F4BD: ILdRf KeyAscii
  loc_97F4C0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97F4C5: IStI2 KeyAscii
  loc_97F4C8: FFree1Str var_88
  loc_97F4CB: ILdI2 KeyAscii
  loc_97F4CE: LitStr "."
  loc_97F4D1: ImpAdCallI2 Asc()
  loc_97F4D6: EqI2
  loc_97F4D7: BranchF loc_97F4E5
  loc_97F4DA: LitStr ","
  loc_97F4DD: ImpAdCallI2 Asc()
  loc_97F4E2: IStI2 KeyAscii
  loc_97F4E5: ExitProcHresult
End Sub

Private Sub CodiOrcoTxt_Validate(Cancel As Boolean) 'A7DBC4
  'Data Table: 4E66BC
  loc_A7D7F0: LitStr vbNullString
  loc_A7D7F3: FLdPr Me
  loc_A7D7F6: MemStStrCopy
  loc_A7D7FA: FLdRfVar var_8C
  loc_A7D7FD: FLdPr Me
  loc_A7D800: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D803: FStAdFunc var_88
  loc_A7D806: FLdPr var_88
  loc_A7D809:  = Me.Text
  loc_A7D80E: LitI2_Byte 0
  loc_A7D810: PopTmpLdAd2 var_92
  loc_A7D813: LitI2_Byte 0
  loc_A7D815: PopTmpLdAd2 var_90
  loc_A7D818: LitI2_Byte 0
  loc_A7D81A: PopTmpLdAd2 var_8E
  loc_A7D81D: ILdRf var_8C
  loc_A7D820: LitStr "Orden de Compra"
  loc_A7D823: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A7D828: FStStrNoPop var_98
  loc_A7D82B: FLdPr Me
  loc_A7D82E: MemStStrCopy
  loc_A7D832: FFreeStr var_8C = ""
  loc_A7D839: FFree1Ad var_88
  loc_A7D83C: FLdPr Me
  loc_A7D83F: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D842: FStAdFunc var_A4
  loc_A7D845: LitNothing
  loc_A7D847: CastAd
  loc_A7D84A: FStAdFunc var_A0
  loc_A7D84D: FLdRfVar var_A0
  loc_A7D850: FLdZeroAd var_A4
  loc_A7D853: FStAdFuncNoPop
  loc_A7D856: CastAd
  loc_A7D859: FStAdFunc var_9C
  loc_A7D85C: FLdRfVar var_9C
  loc_A7D85F: FLdPr Me
  loc_A7D862: MemLdRfVar from_stack_1.global_120
  loc_A7D865: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7D86A: IStI2 Cancel
  loc_A7D86D: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7D878: ILdI2 Cancel
  loc_A7D87B: NotI4
  loc_A7D87C: BranchF loc_A7DBC0
  loc_A7D87F: LitI4 1
  loc_A7D884: FLdRfVar var_8C
  loc_A7D887: FLdPr Me
  loc_A7D88A: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D88D: FStAdFunc var_88
  loc_A7D890: FLdPr var_88
  loc_A7D893:  = Me.Text
  loc_A7D898: ILdRf var_8C
  loc_A7D89B: LitStr "-"
  loc_A7D89E: LitI4 0
  loc_A7D8A3: FnInStr4
  loc_A7D8A5: LitI4 0
  loc_A7D8AA: GtI4
  loc_A7D8AB: FFree1Str var_8C
  loc_A7D8AE: FFree1Ad var_88
  loc_A7D8B1: BranchF loc_A7DA45
  loc_A7D8B4: LitI4 1
  loc_A7D8B9: FLdRfVar var_8C
  loc_A7D8BC: FLdPr Me
  loc_A7D8BF: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D8C2: FStAdFunc var_88
  loc_A7D8C5: FLdPr var_88
  loc_A7D8C8:  = Me.Text
  loc_A7D8CD: ILdRf var_8C
  loc_A7D8D0: LitStr ","
  loc_A7D8D3: LitI4 0
  loc_A7D8D8: FnInStr4
  loc_A7D8DA: LitI4 0
  loc_A7D8DF: GtI4
  loc_A7D8E0: FFree1Str var_8C
  loc_A7D8E3: FFree1Ad var_88
  loc_A7D8E6: BranchF loc_A7D8F6
  loc_A7D8E9: LitStr "primero un guión, y luego una coma..."
  loc_A7D8EC: FLdPr Me
  loc_A7D8EF: MemStStrCopy
  loc_A7D8F3: Branch loc_A7DA42
  loc_A7D8F6: FLdRfVar var_98
  loc_A7D8F9: FLdPr Me
  loc_A7D8FC: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D8FF: FStAdFunc var_9C
  loc_A7D902: FLdPr var_9C
  loc_A7D905:  = Me.Text
  loc_A7D90A: LitI4 1
  loc_A7D90F: FLdRfVar var_8C
  loc_A7D912: FLdPr Me
  loc_A7D915: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D918: FStAdFunc var_88
  loc_A7D91B: FLdPr var_88
  loc_A7D91E:  = Me.Text
  loc_A7D923: ILdRf var_8C
  loc_A7D926: LitStr "-"
  loc_A7D929: LitI4 0
  loc_A7D92E: FnInStr4
  loc_A7D930: LitI4 0
  loc_A7D935: LitI4 -1
  loc_A7D93A: LitStr "-"
  loc_A7D93D: ILdRf var_98
  loc_A7D940: ImpAdCallI2 InStrRev(, , , )
  loc_A7D945: NeI4
  loc_A7D946: FFreeStr var_8C = ""
  loc_A7D94D: FFreeAd var_88 = ""
  loc_A7D954: BranchF loc_A7D964
  loc_A7D957: LitStr "tiene más de un guión..."
  loc_A7D95A: FLdPr Me
  loc_A7D95D: MemStStrCopy
  loc_A7D961: Branch loc_A7DA42
  loc_A7D964: FLdRfVar var_8C
  loc_A7D967: FLdPr Me
  loc_A7D96A: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D96D: FStAdFunc var_88
  loc_A7D970: FLdPr var_88
  loc_A7D973:  = Me.Text
  loc_A7D978: FLdRfVar var_B0
  loc_A7D97B: FLdPr Me
  loc_A7D97E: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D981: FStAdFunc var_A0
  loc_A7D984: FLdPr var_A0
  loc_A7D987:  = Me.Text
  loc_A7D98C: FLdRfVar var_B4
  loc_A7D98F: FLdPr Me
  loc_A7D992: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D995: FStAdFunc var_A4
  loc_A7D998: FLdPr var_A4
  loc_A7D99B:  = Me.Text
  loc_A7D9A0: LitStr " AND oc.CodiOrco >= '"
  loc_A7D9A3: LitI4 1
  loc_A7D9A8: FLdRfVar var_98
  loc_A7D9AB: FLdPr Me
  loc_A7D9AE: VCallAd Control_ID_CodiOrcoTxt
  loc_A7D9B1: FStAdFunc var_9C
  loc_A7D9B4: FLdPr var_9C
  loc_A7D9B7:  = Me.Text
  loc_A7D9BC: ILdRf var_98
  loc_A7D9BF: LitStr "-"
  loc_A7D9C2: LitI4 0
  loc_A7D9C7: FnInStr4
  loc_A7D9C9: LitI4 1
  loc_A7D9CE: SubI4
  loc_A7D9CF: ILdRf var_8C
  loc_A7D9D2: ImpAdCallI2 Left$(, )
  loc_A7D9D7: FStStrNoPop var_A8
  loc_A7D9DA: ConcatStr
  loc_A7D9DB: FStStrNoPop var_AC
  loc_A7D9DE: LitStr "' AND oc.CodiOrco <= '"
  loc_A7D9E1: ConcatStr
  loc_A7D9E2: FStStrNoPop var_D8
  loc_A7D9E5: LitVar_Missing var_D4
  loc_A7D9E8: LitI4 1
  loc_A7D9ED: ILdRf var_B4
  loc_A7D9F0: LitStr "-"
  loc_A7D9F3: LitI4 0
  loc_A7D9F8: FnInStr4
  loc_A7D9FA: LitI4 1
  loc_A7D9FF: AddI4
  loc_A7DA00: ILdRf var_B0
  loc_A7DA03: ImpAdCallI2 Mid$(, , )
  loc_A7DA08: FStStrNoPop var_DC
  loc_A7DA0B: ConcatStr
  loc_A7DA0C: FStStrNoPop var_E0
  loc_A7DA0F: LitStr "'"
  loc_A7DA12: ConcatStr
  loc_A7DA13: FStStrNoPop var_E4
  loc_A7DA16: FLdPr Me
  loc_A7DA19: MemStStrCopy
  loc_A7DA1D: FFreeStr var_98 = "": var_8C = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A7DA34: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7DA3F: FFree1Var var_D4 = ""
  loc_A7DA42: Branch loc_A7DB84
  loc_A7DA45: LitI4 1
  loc_A7DA4A: FLdRfVar var_8C
  loc_A7DA4D: FLdPr Me
  loc_A7DA50: VCallAd Control_ID_CodiOrcoTxt
  loc_A7DA53: FStAdFunc var_88
  loc_A7DA56: FLdPr var_88
  loc_A7DA59:  = Me.Text
  loc_A7DA5E: ILdRf var_8C
  loc_A7DA61: LitStr ","
  loc_A7DA64: LitI4 0
  loc_A7DA69: FnInStr4
  loc_A7DA6B: LitI4 0
  loc_A7DA70: GtI4
  loc_A7DA71: FFree1Str var_8C
  loc_A7DA74: FFree1Ad var_88
  loc_A7DA77: BranchF loc_A7DB16
  loc_A7DA7A: LitI4 1
  loc_A7DA7F: FLdRfVar var_8C
  loc_A7DA82: FLdPr Me
  loc_A7DA85: VCallAd Control_ID_CodiOrcoTxt
  loc_A7DA88: FStAdFunc var_88
  loc_A7DA8B: FLdPr var_88
  loc_A7DA8E:  = Me.Text
  loc_A7DA93: ILdRf var_8C
  loc_A7DA96: LitStr "-"
  loc_A7DA99: LitI4 0
  loc_A7DA9E: FnInStr4
  loc_A7DAA0: LitI4 0
  loc_A7DAA5: GtI4
  loc_A7DAA6: FFree1Str var_8C
  loc_A7DAA9: FFree1Ad var_88
  loc_A7DAAC: BranchF loc_A7DABC
  loc_A7DAAF: LitStr "primero un coma, y luego un guión..."
  loc_A7DAB2: FLdPr Me
  loc_A7DAB5: MemStStrCopy
  loc_A7DAB9: Branch loc_A7DB13
  loc_A7DABC: FLdRfVar var_8C
  loc_A7DABF: FLdPr Me
  loc_A7DAC2: VCallAd Control_ID_CodiOrcoTxt
  loc_A7DAC5: FStAdFunc var_88
  loc_A7DAC8: FLdPr var_88
  loc_A7DACB:  = Me.Text
  loc_A7DAD0: LitStr " AND oc.CodiOrco IN ('"
  loc_A7DAD3: LitI4 0
  loc_A7DAD8: LitI4 -1
  loc_A7DADD: LitI4 1
  loc_A7DAE2: LitStr "','"
  loc_A7DAE5: LitStr ","
  loc_A7DAE8: ILdRf var_8C
  loc_A7DAEB: ImpAdCallI2 Replace(, , , , , )
  loc_A7DAF0: FStStrNoPop var_98
  loc_A7DAF3: ConcatStr
  loc_A7DAF4: FStStrNoPop var_A8
  loc_A7DAF7: LitStr "')"
  loc_A7DAFA: ConcatStr
  loc_A7DAFB: FStStrNoPop var_AC
  loc_A7DAFE: FLdPr Me
  loc_A7DB01: MemStStrCopy
  loc_A7DB05: FFreeStr var_8C = "": var_98 = "": var_A8 = ""
  loc_A7DB10: FFree1Ad var_88
  loc_A7DB13: Branch loc_A7DB84
  loc_A7DB16: FLdRfVar var_8C
  loc_A7DB19: FLdPr Me
  loc_A7DB1C: VCallAd Control_ID_CodiOrcoTxt
  loc_A7DB1F: FStAdFunc var_88
  loc_A7DB22: FLdPr var_88
  loc_A7DB25:  = Me.Text
  loc_A7DB2A: FLdZeroAd var_8C
  loc_A7DB2D: CVarStr var_D4
  loc_A7DB30: ImpAdCallI2 IsNumeric()
  loc_A7DB35: NotI4
  loc_A7DB36: FFree1Ad var_88
  loc_A7DB39: FFree1Var var_D4 = ""
  loc_A7DB3C: BranchF loc_A7DB4C
  loc_A7DB3F: LitStr "no es un número..."
  loc_A7DB42: FLdPr Me
  loc_A7DB45: MemStStrCopy
  loc_A7DB49: Branch loc_A7DB84
  loc_A7DB4C: LitStr " AND oc.Codiorco = '"
  loc_A7DB4F: FLdRfVar var_8C
  loc_A7DB52: FLdPr Me
  loc_A7DB55: VCallAd Control_ID_CodiOrcoTxt
  loc_A7DB58: FStAdFunc var_88
  loc_A7DB5B: FLdPr var_88
  loc_A7DB5E:  = Me.Text
  loc_A7DB63: ILdRf var_8C
  loc_A7DB66: ConcatStr
  loc_A7DB67: FStStrNoPop var_98
  loc_A7DB6A: LitStr "'"
  loc_A7DB6D: ConcatStr
  loc_A7DB6E: FStStrNoPop var_A8
  loc_A7DB71: FLdPr Me
  loc_A7DB74: MemStStrCopy
  loc_A7DB78: FFreeStr var_8C = "": var_98 = ""
  loc_A7DB81: FFree1Ad var_88
  loc_A7DB84: FLdPr Me
  loc_A7DB87: VCallAd Control_ID_CodiOrcoTxt
  loc_A7DB8A: FStAdFunc var_A4
  loc_A7DB8D: LitNothing
  loc_A7DB8F: CastAd
  loc_A7DB92: FStAdFunc var_A0
  loc_A7DB95: FLdRfVar var_A0
  loc_A7DB98: FLdZeroAd var_A4
  loc_A7DB9B: FStAdFuncNoPop
  loc_A7DB9E: CastAd
  loc_A7DBA1: FStAdFunc var_9C
  loc_A7DBA4: FLdRfVar var_9C
  loc_A7DBA7: FLdPr Me
  loc_A7DBAA: MemLdRfVar from_stack_1.global_120
  loc_A7DBAD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7DBB2: IStI2 Cancel
  loc_A7DBB5: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7DBC0: ExitProcHresult
  loc_A7DBC1: CVarStr var_BC
End Sub

Private Sub SoloEncabezadosChk_Click() '96A04C
  'Data Table: 4E66BC
  loc_96A030: LitI4 0
  loc_96A035: CI2I4
  loc_96A036: FLdPr Me
  loc_96A039: VCallAd Control_ID_HojasSeparadasChk
  loc_96A03C: FStAdFunc var_88
  loc_96A03F: FLdPr var_88
  loc_96A042: Me.Value = from_stack_1
  loc_96A047: FFree1Ad var_88
  loc_96A04A: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A25CA4
  'Data Table: 4E66BC
  loc_A25AE4: LitI2_Byte 0
  loc_A25AE6: FLdPr Me
  loc_A25AE9: MemStI2 bGenerado
  loc_A25AEC: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A25AF1: ImpAdLdI2 MemVar_C3D064
  loc_A25AF4: CStrUI1
  loc_A25AF6: FStStrNoPop var_88
  loc_A25AF9: FLdPr Me
  loc_A25AFC: VCallAd Control_ID_cboPeriodo
  loc_A25AFF: FStAdFunc var_8C
  loc_A25B02: FLdPr var_8C
  loc_A25B05: Me.Text = from_stack_1
  loc_A25B0A: FFree1Str var_88
  loc_A25B0D: FFree1Ad var_8C
  loc_A25B10: LitStr "01/01/"
  loc_A25B13: FLdRfVar var_88
  loc_A25B16: FLdPr Me
  loc_A25B19: VCallAd Control_ID_cboPeriodo
  loc_A25B1C: FStAdFunc var_8C
  loc_A25B1F: FLdPr var_8C
  loc_A25B22:  = Me.Text
  loc_A25B27: ILdRf var_88
  loc_A25B2A: ConcatStr
  loc_A25B2B: FStStrNoPop var_90
  loc_A25B2E: CDateStr
  loc_A25B30: CStrDate
  loc_A25B32: CVarStr var_A0
  loc_A25B35: PopAdLdVar
  loc_A25B36: FLdPr Me
  loc_A25B39: VCallAd Control_ID_mskDesde
  loc_A25B3C: FStAdFunc var_B4
  loc_A25B3F: FLdPr var_B4
  loc_A25B42: LateIdSt
  loc_A25B47: FFreeStr var_88 = ""
  loc_A25B4E: FFreeAd var_8C = ""
  loc_A25B55: FFree1Var var_A0 = ""
  loc_A25B58: ImpAdLdFPR8 MemVar_C3D04C
  loc_A25B5B: CStrDate
  loc_A25B5D: CVarStr var_A0
  loc_A25B60: PopAdLdVar
  loc_A25B61: FLdPr Me
  loc_A25B64: VCallAd Control_ID_mskHasta
  loc_A25B67: FStAdFunc var_8C
  loc_A25B6A: FLdPr var_8C
  loc_A25B6D: LateIdSt
  loc_A25B72: FFree1Ad var_8C
  loc_A25B75: FFree1Var var_A0 = ""
  loc_A25B78: LitStr vbNullString
  loc_A25B7B: FLdPr Me
  loc_A25B7E: VCallAd Control_ID_cboExpeImpu
  loc_A25B81: FStAdFunc var_8C
  loc_A25B84: FLdPr var_8C
  loc_A25B87: Me.Text = from_stack_1
  loc_A25B8C: FFree1Ad var_8C
  loc_A25B8F: LitStr vbNullString
  loc_A25B92: FLdPr Me
  loc_A25B95: VCallAd Control_ID_cboTipoCompra
  loc_A25B98: FStAdFunc var_8C
  loc_A25B9B: FLdPr var_8C
  loc_A25B9E: Me.Text = from_stack_1
  loc_A25BA3: FFree1Ad var_8C
  loc_A25BA6: LitStr vbNullString
  loc_A25BA9: FLdPr Me
  loc_A25BAC: VCallAd Control_ID_CucuPersTxt
  loc_A25BAF: FStAdFunc var_8C
  loc_A25BB2: FLdPr var_8C
  loc_A25BB5: Me.Text = from_stack_1
  loc_A25BBA: FFree1Ad var_8C
  loc_A25BBD: LitStr vbNullString
  loc_A25BC0: FLdPr Me
  loc_A25BC3: VCallAd Control_ID_DetaProvLbl
  loc_A25BC6: FStAdFunc var_8C
  loc_A25BC9: FLdPr var_8C
  loc_A25BCC: Me.Caption = from_stack_1
  loc_A25BD1: FFree1Ad var_8C
  loc_A25BD4: LitVarStr var_B0, vbNullString
  loc_A25BD9: PopAdLdVar
  loc_A25BDA: FLdPr Me
  loc_A25BDD: VCallAd Control_ID_CodiNopeMsk
  loc_A25BE0: FStAdFunc var_8C
  loc_A25BE3: FLdPr var_8C
  loc_A25BE6: LateIdSt
  loc_A25BEB: FFree1Ad var_8C
  loc_A25BEE: LitVarStr var_B0, vbNullString
  loc_A25BF3: PopAdLdVar
  loc_A25BF4: FLdPr Me
  loc_A25BF7: VCallAd Control_ID_CodiOrgaMsk
  loc_A25BFA: FStAdFunc var_8C
  loc_A25BFD: FLdPr var_8C
  loc_A25C00: LateIdSt
  loc_A25C05: FFree1Ad var_8C
  loc_A25C08: LitStr vbNullString
  loc_A25C0B: FLdPr Me
  loc_A25C0E: VCallAd Control_ID_DetaOrgaLbl
  loc_A25C11: FStAdFunc var_8C
  loc_A25C14: FLdPr var_8C
  loc_A25C17: Me.Caption = from_stack_1
  loc_A25C1C: FFree1Ad var_8C
  loc_A25C1F: LitI4 0
  loc_A25C24: CI2I4
  loc_A25C25: FLdPr Me
  loc_A25C28: VCallAd Control_ID_SoloEncabezadosChk
  loc_A25C2B: FStAdFunc var_8C
  loc_A25C2E: FLdPr var_8C
  loc_A25C31: Me.Value = from_stack_1
  loc_A25C36: FFree1Ad var_8C
  loc_A25C39: LitI4 0
  loc_A25C3E: CI2I4
  loc_A25C3F: FLdPr Me
  loc_A25C42: VCallAd Control_ID_chkIncluyelafirma
  loc_A25C45: FStAdFunc var_8C
  loc_A25C48: FLdPr var_8C
  loc_A25C4B: Me.Value = from_stack_1
  loc_A25C50: FFree1Ad var_8C
  loc_A25C53: LitI4 0
  loc_A25C58: CI2I4
  loc_A25C59: FLdPr Me
  loc_A25C5C: VCallAd Control_ID_AgruparChk
  loc_A25C5F: FStAdFunc var_8C
  loc_A25C62: FLdPr var_8C
  loc_A25C65: Me.Value = from_stack_1
  loc_A25C6A: FFree1Ad var_8C
  loc_A25C6D: LitI4 1
  loc_A25C72: CI2I4
  loc_A25C73: FLdPr Me
  loc_A25C76: VCallAd Control_ID_HojasSeparadasChk
  loc_A25C79: FStAdFunc var_8C
  loc_A25C7C: FLdPr var_8C
  loc_A25C7F: Me.Value = from_stack_1
  loc_A25C84: FFree1Ad var_8C
  loc_A25C87: Call HabilitarCriterio()
  loc_A25C8C: ILdRf Me
  loc_A25C8F: CastAd
  loc_A25C92: FStAdFunc var_8C
  loc_A25C95: FLdRfVar var_8C
  loc_A25C98: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A25C9D: FFree1Ad var_8C
  loc_A25CA0: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B5B8
  'Data Table: 4E66BC
  loc_97B588: LitVarStr var_94, "Cerrando..."
  loc_97B58D: PopAdLdVar
  loc_97B58E: FLdPr Me
  loc_97B591: VCallAd Control_ID_statusBar
  loc_97B594: FStAdFunc var_A8
  loc_97B597: FLdPr var_A8
  loc_97B59A: LateIdSt
  loc_97B59F: FFree1Ad var_A8
  loc_97B5A2: ILdRf Me
  loc_97B5A5: FStAdNoPop
  loc_97B5A9: ImpAdLdRf MemVar_C44F9C
  loc_97B5AC: NewIfNullPr Me
  loc_97B5AF: Me.Global.Unload from_stack_1
  loc_97B5B4: FFree1Ad var_A8
  loc_97B5B7: ExitProcHresult
End Sub

Private Sub CodiNopeMsk_UnknownEvent_0 '94A478
  'Data Table: 4E66BC
  loc_94A464: FLdPr Me
  loc_94A467: VCallAd Control_ID_CodiNopeMsk
  loc_94A46A: CVarAd
  loc_94A46E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A473: FFree1Var var_94 = ""
  loc_94A476: ExitProcHresult
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '9755D4
  'Data Table: 4E66BC
  loc_9755AC: FLdPr Me
  loc_9755AF: VCallAd Control_ID_cboExpeImpu
  loc_9755B2: FStAdFunc var_8C
  loc_9755B5: ILdI2 KeyAscii
  loc_9755B8: FLdZeroAd var_8C
  loc_9755BB: FStAdFunc var_88
  loc_9755BE: FLdRfVar var_88
  loc_9755C1: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_9755C6: IStI2 KeyAscii
  loc_9755C9: FFreeAd var_88 = ""
  loc_9755D0: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '94AF70
  'Data Table: 4E66BC
  loc_94AF5C: FLdPr Me
  loc_94AF5F: VCallAd Control_ID_CucuPersTxt
  loc_94AF62: CVarAd
  loc_94AF66: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AF6B: FFree1Var var_94 = ""
  loc_94AF6E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0B720
  'Data Table: 4E66BC
  loc_A0B5BC: ILdI2 Shift
  loc_A0B5BF: CI4UI1
  loc_A0B5C0: LitI4 2
  loc_A0B5C5: EqI4
  loc_A0B5C6: ILdI2 KeyCode
  loc_A0B5C9: CI4UI1
  loc_A0B5CA: LitI4 &H42
  loc_A0B5CF: EqI4
  loc_A0B5D0: AndI4
  loc_A0B5D1: BranchF loc_A0B71C
  loc_A0B5D4: LitI2_Byte 0
  loc_A0B5D6: ImpAdLdRf MemVar_C3D74C
  loc_A0B5D9: NewIfNullPr bscProveedor
  loc_A0B5DC: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0B5E1: LitNothing
  loc_A0B5E3: CastAd
  loc_A0B5E6: FStAdFuncNoPop
  loc_A0B5E9: FLdRfVar var_88
  loc_A0B5EC: ImpAdLdRf MemVar_C3D74C
  loc_A0B5EF: NewIfNullPr bscProveedor
  loc_A0B5F2: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0B5F7: FLdPr var_88
  loc_A0B5FA: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0B5FF: FFreeAd var_8C = ""
  loc_A0B606: LitVar_Missing var_AC
  loc_A0B609: PopAdLdVar
  loc_A0B60A: LitVarI4
  loc_A0B612: PopAdLdVar
  loc_A0B613: ImpAdLdRf MemVar_C3D74C
  loc_A0B616: NewIfNullPr bscProveedor
  loc_A0B619: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0B61E: FLdRfVar var_B0
  loc_A0B621: FLdRfVar var_88
  loc_A0B624: ImpAdLdRf MemVar_C3D74C
  loc_A0B627: NewIfNullPr bscProveedor
  loc_A0B62A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0B62F: FLdPr var_88
  loc_A0B632: from_stack_1 = clsbase.RecordCount
  loc_A0B637: ILdRf var_B0
  loc_A0B63A: LitI4 0
  loc_A0B63F: GtI4
  loc_A0B640: FFree1Ad var_88
  loc_A0B643: BranchF loc_A0B71C
  loc_A0B646: FLdRfVar var_C8
  loc_A0B649: FLdRfVar var_B8
  loc_A0B64C: LitVarStr var_9C, "CucuPers"
  loc_A0B651: PopAdLdVar
  loc_A0B652: FLdRfVar var_B4
  loc_A0B655: FLdRfVar var_8C
  loc_A0B658: FLdRfVar var_88
  loc_A0B65B: ImpAdLdRf MemVar_C3D74C
  loc_A0B65E: NewIfNullPr bscProveedor
  loc_A0B661: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0B666: FLdPr var_88
  loc_A0B669: from_stack_1v = clsbase.RsFrmGet()
  loc_A0B66E: FLdPr var_8C
  loc_A0B671:  = Me.Fields
  loc_A0B676: FLdPr var_B4
  loc_A0B679: from_stack_2 = Me.Item(from_stack_1)
  loc_A0B67E: FLdPr var_B8
  loc_A0B681:  = Me.Value
  loc_A0B686: FLdRfVar var_C8
  loc_A0B689: CStrVarTmp
  loc_A0B68A: FStStrNoPop var_CC
  loc_A0B68D: FLdPr Me
  loc_A0B690: VCallAd Control_ID_CucuPersTxt
  loc_A0B693: FStAdFunc var_D0
  loc_A0B696: FLdPr var_D0
  loc_A0B699: Me.Text = from_stack_1
  loc_A0B69E: FFree1Str var_CC
  loc_A0B6A1: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0B6AE: FFree1Var var_C8 = ""
  loc_A0B6B1: FLdRfVar var_C8
  loc_A0B6B4: FLdRfVar var_B8
  loc_A0B6B7: LitVarStr var_9C, "DetaProv"
  loc_A0B6BC: PopAdLdVar
  loc_A0B6BD: FLdRfVar var_B4
  loc_A0B6C0: FLdRfVar var_8C
  loc_A0B6C3: FLdRfVar var_88
  loc_A0B6C6: ImpAdLdRf MemVar_C3D74C
  loc_A0B6C9: NewIfNullPr bscProveedor
  loc_A0B6CC: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0B6D1: FLdPr var_88
  loc_A0B6D4: from_stack_1v = clsbase.RsFrmGet()
  loc_A0B6D9: FLdPr var_8C
  loc_A0B6DC:  = Me.Fields
  loc_A0B6E1: FLdPr var_B4
  loc_A0B6E4: from_stack_2 = Me.Item(from_stack_1)
  loc_A0B6E9: FLdPr var_B8
  loc_A0B6EC:  = Me.Value
  loc_A0B6F1: FLdRfVar var_C8
  loc_A0B6F4: CStrVarTmp
  loc_A0B6F5: FStStrNoPop var_CC
  loc_A0B6F8: FLdPr Me
  loc_A0B6FB: VCallAd Control_ID_DetaProvLbl
  loc_A0B6FE: FStAdFunc var_D0
  loc_A0B701: FLdPr var_D0
  loc_A0B704: Me.Caption = from_stack_1
  loc_A0B709: FFree1Str var_CC
  loc_A0B70C: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0B719: FFree1Var var_C8 = ""
  loc_A0B71C: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B45B18
  'Data Table: 4E66BC
  loc_B450A4: FLdRfVar var_8A
  loc_B450A7: FLdPr Me
  loc_B450AA: VCallAd Control_ID_cmdSalir
  loc_B450AD: FStAdFunc var_88
  loc_B450B0: FLdPr var_88
  loc_B450B3:  = Me.Value
  loc_B450B8: FLdI2 var_8A
  loc_B450BB: NotI4
  loc_B450BC: FLdRfVar var_92
  loc_B450BF: FLdPr Me
  loc_B450C2: VCallAd Control_ID_CucuPersTxt
  loc_B450C5: FStAdFunc var_90
  loc_B450C8: FLdPr var_90
  loc_B450CB:  = Me.Enabled
  loc_B450D0: FLdI2 var_92
  loc_B450D3: AndI4
  loc_B450D4: FLdRfVar var_9C
  loc_B450D7: FLdPr Me
  loc_B450DA: VCallAd Control_ID_CucuPersTxt
  loc_B450DD: FStAdFunc var_98
  loc_B450E0: FLdPr var_98
  loc_B450E3:  = Me.Text
  loc_B450E8: ILdRf var_9C
  loc_B450EB: LitStr vbNullString
  loc_B450EE: NeStr
  loc_B450F0: AndI4
  loc_B450F1: FFree1Str var_9C
  loc_B450F4: FFreeAd var_88 = "": var_90 = ""
  loc_B450FD: BranchF loc_B45B15
  loc_B45100: FLdRfVar var_9C
  loc_B45103: FLdPr Me
  loc_B45106: VCallAd Control_ID_CucuPersTxt
  loc_B45109: FStAdFunc var_88
  loc_B4510C: FLdPr var_88
  loc_B4510F:  = Me.Text
  loc_B45114: ILdRf var_9C
  loc_B45117: ImpAdCallI2 Trim$()
  loc_B4511C: FStStrNoPop var_A0
  loc_B4511F: LitStr vbNullString
  loc_B45122: NeStr
  loc_B45124: FFreeStr var_9C = ""
  loc_B4512B: FFree1Ad var_88
  loc_B4512E: BranchF loc_B45951
  loc_B45131: FLdPr Me
  loc_B45134: VCallAd Control_ID_CucuPersTxt
  loc_B45137: FStAdFunc var_88
  loc_B4513A: FLdRfVar var_88
  loc_B4513D: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B45142: FFree1Ad var_88
  loc_B45145: BranchF loc_B4553D
  loc_B45148: LitStr " AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B4514B: FLdRfVar var_9C
  loc_B4514E: FLdPr Me
  loc_B45151: VCallAd Control_ID_CucuPersTxt
  loc_B45154: FStAdFunc var_88
  loc_B45157: FLdPr var_88
  loc_B4515A:  = Me.Text
  loc_B4515F: ILdRf var_9C
  loc_B45162: ConcatStr
  loc_B45163: FStStrNoPop var_A0
  loc_B45166: LitStr Chr(37) & "'"
  loc_B45169: ConcatStr
  loc_B4516A: FStStrNoPop var_A4
  loc_B4516D: ImpAdLdRf MemVar_C3D74C
  loc_B45170: NewIfNullPr bscProveedor
  loc_B45173: Call bscProveedor.Constructor(from_stack_1v)
  loc_B45178: FFreeStr var_9C = "": var_A0 = ""
  loc_B45181: FFree1Ad var_88
  loc_B45184: FLdRfVar var_A8
  loc_B45187: FLdRfVar var_90
  loc_B4518A: FLdRfVar var_88
  loc_B4518D: ImpAdLdRf MemVar_C3D74C
  loc_B45190: NewIfNullPr bscProveedor
  loc_B45193: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B45198: FLdPr var_88
  loc_B4519B: from_stack_1v = clsbase.RsFrmGet()
  loc_B451A0: FLdPr var_90
  loc_B451A3:  = Me.RecordCount
  loc_B451A8: ILdRf var_A8
  loc_B451AB: LitI4 1
  loc_B451B0: EqI4
  loc_B451B1: FFreeAd var_88 = ""
  loc_B451B8: BranchF loc_B452DB
  loc_B451BB: FLdRfVar var_CC
  loc_B451BE: FLdRfVar var_BC
  loc_B451C1: LitVarStr var_B8, "CucuPers"
  loc_B451C6: PopAdLdVar
  loc_B451C7: FLdRfVar var_98
  loc_B451CA: FLdRfVar var_90
  loc_B451CD: FLdRfVar var_88
  loc_B451D0: ImpAdLdRf MemVar_C3D74C
  loc_B451D3: NewIfNullPr bscProveedor
  loc_B451D6: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B451DB: FLdPr var_88
  loc_B451DE: from_stack_1v = clsbase.RsFrmGet()
  loc_B451E3: FLdPr var_90
  loc_B451E6:  = Me.Fields
  loc_B451EB: FLdPr var_98
  loc_B451EE: from_stack_2 = Me.Item(from_stack_1)
  loc_B451F3: FLdPr var_BC
  loc_B451F6:  = Me.Value
  loc_B451FB: FLdRfVar var_CC
  loc_B451FE: CStrVarTmp
  loc_B451FF: FStStrNoPop var_9C
  loc_B45202: FLdPr Me
  loc_B45205: VCallAd Control_ID_CucuPersTxt
  loc_B45208: FStAdFunc var_D0
  loc_B4520B: FLdPr var_D0
  loc_B4520E: Me.Text = from_stack_1
  loc_B45213: FFree1Str var_9C
  loc_B45216: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B45223: FFree1Var var_CC = ""
  loc_B45226: FLdRfVar var_CC
  loc_B45229: FLdRfVar var_BC
  loc_B4522C: LitVarStr var_B8, "DetaProv"
  loc_B45231: PopAdLdVar
  loc_B45232: FLdRfVar var_98
  loc_B45235: FLdRfVar var_90
  loc_B45238: FLdRfVar var_88
  loc_B4523B: ImpAdLdRf MemVar_C3D74C
  loc_B4523E: NewIfNullPr bscProveedor
  loc_B45241: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B45246: FLdPr var_88
  loc_B45249: from_stack_1v = clsbase.RsFrmGet()
  loc_B4524E: FLdPr var_90
  loc_B45251:  = Me.Fields
  loc_B45256: FLdPr var_98
  loc_B45259: from_stack_2 = Me.Item(from_stack_1)
  loc_B4525E: FLdPr var_BC
  loc_B45261:  = Me.Value
  loc_B45266: FLdRfVar var_CC
  loc_B45269: CStrVarTmp
  loc_B4526A: FStStrNoPop var_9C
  loc_B4526D: FLdPr Me
  loc_B45270: VCallAd Control_ID_DetaProvLbl
  loc_B45273: FStAdFunc var_D0
  loc_B45276: FLdPr var_D0
  loc_B45279: Me.Caption = from_stack_1
  loc_B4527E: FFree1Str var_9C
  loc_B45281: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B4528E: FFree1Var var_CC = ""
  loc_B45291: LitStr vbNullString
  loc_B45294: FLdPr Me
  loc_B45297: MemStStrCopy
  loc_B4529B: FLdPr Me
  loc_B4529E: VCallAd Control_ID_CucuPersTxt
  loc_B452A1: FStAdFunc var_BC
  loc_B452A4: FLdPr Me
  loc_B452A7: VCallAd Control_ID_DetaProvLbl
  loc_B452AA: FStAdFunc var_98
  loc_B452AD: FLdRfVar var_98
  loc_B452B0: FLdZeroAd var_BC
  loc_B452B3: FStAdFuncNoPop
  loc_B452B6: CastAd
  loc_B452B9: FStAdFunc var_90
  loc_B452BC: FLdRfVar var_90
  loc_B452BF: FLdPr Me
  loc_B452C2: MemLdRfVar from_stack_1.global_120
  loc_B452C5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B452CA: IStI2 Cancel
  loc_B452CD: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B452D8: Branch loc_B4553A
  loc_B452DB: FLdRfVar var_A8
  loc_B452DE: FLdRfVar var_90
  loc_B452E1: FLdRfVar var_88
  loc_B452E4: ImpAdLdRf MemVar_C3D74C
  loc_B452E7: NewIfNullPr bscProveedor
  loc_B452EA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B452EF: FLdPr var_88
  loc_B452F2: from_stack_1v = clsbase.RsFrmGet()
  loc_B452F7: FLdPr var_90
  loc_B452FA:  = Me.RecordCount
  loc_B452FF: ILdRf var_A8
  loc_B45302: LitI4 1
  loc_B45307: GtI4
  loc_B45308: FFreeAd var_88 = ""
  loc_B4530F: BranchF loc_B454BC
  loc_B45312: LitVar_Missing var_E0
  loc_B45315: PopAdLdVar
  loc_B45316: LitVarI4
  loc_B4531E: PopAdLdVar
  loc_B4531F: ImpAdLdRf MemVar_C3D74C
  loc_B45322: NewIfNullPr bscProveedor
  loc_B45325: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4532A: FLdRfVar var_A8
  loc_B4532D: FLdRfVar var_88
  loc_B45330: ImpAdLdRf MemVar_C3D74C
  loc_B45333: NewIfNullPr bscProveedor
  loc_B45336: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4533B: FLdPr var_88
  loc_B4533E: from_stack_1 = clsbase.RecordCount
  loc_B45343: ILdRf var_A8
  loc_B45346: LitI4 0
  loc_B4534B: GtI4
  loc_B4534C: FFree1Ad var_88
  loc_B4534F: BranchF loc_B45472
  loc_B45352: FLdRfVar var_CC
  loc_B45355: FLdRfVar var_BC
  loc_B45358: LitVarStr var_B8, "CucuPers"
  loc_B4535D: PopAdLdVar
  loc_B4535E: FLdRfVar var_98
  loc_B45361: FLdRfVar var_90
  loc_B45364: FLdRfVar var_88
  loc_B45367: ImpAdLdRf MemVar_C3D74C
  loc_B4536A: NewIfNullPr bscProveedor
  loc_B4536D: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B45372: FLdPr var_88
  loc_B45375: from_stack_1v = clsbase.RsFrmGet()
  loc_B4537A: FLdPr var_90
  loc_B4537D:  = Me.Fields
  loc_B45382: FLdPr var_98
  loc_B45385: from_stack_2 = Me.Item(from_stack_1)
  loc_B4538A: FLdPr var_BC
  loc_B4538D:  = Me.Value
  loc_B45392: FLdRfVar var_CC
  loc_B45395: CStrVarTmp
  loc_B45396: FStStrNoPop var_9C
  loc_B45399: FLdPr Me
  loc_B4539C: VCallAd Control_ID_CucuPersTxt
  loc_B4539F: FStAdFunc var_D0
  loc_B453A2: FLdPr var_D0
  loc_B453A5: Me.Text = from_stack_1
  loc_B453AA: FFree1Str var_9C
  loc_B453AD: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B453BA: FFree1Var var_CC = ""
  loc_B453BD: FLdRfVar var_CC
  loc_B453C0: FLdRfVar var_BC
  loc_B453C3: LitVarStr var_B8, "DetaProv"
  loc_B453C8: PopAdLdVar
  loc_B453C9: FLdRfVar var_98
  loc_B453CC: FLdRfVar var_90
  loc_B453CF: FLdRfVar var_88
  loc_B453D2: ImpAdLdRf MemVar_C3D74C
  loc_B453D5: NewIfNullPr bscProveedor
  loc_B453D8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B453DD: FLdPr var_88
  loc_B453E0: from_stack_1v = clsbase.RsFrmGet()
  loc_B453E5: FLdPr var_90
  loc_B453E8:  = Me.Fields
  loc_B453ED: FLdPr var_98
  loc_B453F0: from_stack_2 = Me.Item(from_stack_1)
  loc_B453F5: FLdPr var_BC
  loc_B453F8:  = Me.Value
  loc_B453FD: FLdRfVar var_CC
  loc_B45400: CStrVarTmp
  loc_B45401: FStStrNoPop var_9C
  loc_B45404: FLdPr Me
  loc_B45407: VCallAd Control_ID_DetaProvLbl
  loc_B4540A: FStAdFunc var_D0
  loc_B4540D: FLdPr var_D0
  loc_B45410: Me.Caption = from_stack_1
  loc_B45415: FFree1Str var_9C
  loc_B45418: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B45425: FFree1Var var_CC = ""
  loc_B45428: LitStr vbNullString
  loc_B4542B: FLdPr Me
  loc_B4542E: MemStStrCopy
  loc_B45432: FLdPr Me
  loc_B45435: VCallAd Control_ID_CucuPersTxt
  loc_B45438: FStAdFunc var_BC
  loc_B4543B: FLdPr Me
  loc_B4543E: VCallAd Control_ID_DetaProvLbl
  loc_B45441: FStAdFunc var_98
  loc_B45444: FLdRfVar var_98
  loc_B45447: FLdZeroAd var_BC
  loc_B4544A: FStAdFuncNoPop
  loc_B4544D: CastAd
  loc_B45450: FStAdFunc var_90
  loc_B45453: FLdRfVar var_90
  loc_B45456: FLdPr Me
  loc_B45459: MemLdRfVar from_stack_1.global_120
  loc_B4545C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B45461: IStI2 Cancel
  loc_B45464: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B4546F: Branch loc_B454B9
  loc_B45472: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B45475: FLdPr Me
  loc_B45478: MemStStrCopy
  loc_B4547C: FLdPr Me
  loc_B4547F: VCallAd Control_ID_CucuPersTxt
  loc_B45482: FStAdFunc var_BC
  loc_B45485: FLdPr Me
  loc_B45488: VCallAd Control_ID_DetaProvLbl
  loc_B4548B: FStAdFunc var_98
  loc_B4548E: FLdRfVar var_98
  loc_B45491: FLdZeroAd var_BC
  loc_B45494: FStAdFuncNoPop
  loc_B45497: CastAd
  loc_B4549A: FStAdFunc var_90
  loc_B4549D: FLdRfVar var_90
  loc_B454A0: FLdPr Me
  loc_B454A3: MemLdRfVar from_stack_1.global_120
  loc_B454A6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B454AB: IStI2 Cancel
  loc_B454AE: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B454B9: Branch loc_B4553A
  loc_B454BC: FLdRfVar var_A8
  loc_B454BF: FLdRfVar var_90
  loc_B454C2: FLdRfVar var_88
  loc_B454C5: ImpAdLdRf MemVar_C3D74C
  loc_B454C8: NewIfNullPr bscProveedor
  loc_B454CB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B454D0: FLdPr var_88
  loc_B454D3: from_stack_1v = clsbase.RsFrmGet()
  loc_B454D8: FLdPr var_90
  loc_B454DB:  = Me.RecordCount
  loc_B454E0: ILdRf var_A8
  loc_B454E3: LitI4 1
  loc_B454E8: LtI4
  loc_B454E9: FFreeAd var_88 = ""
  loc_B454F0: BranchF loc_B4553A
  loc_B454F3: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B454F6: FLdPr Me
  loc_B454F9: MemStStrCopy
  loc_B454FD: FLdPr Me
  loc_B45500: VCallAd Control_ID_CucuPersTxt
  loc_B45503: FStAdFunc var_BC
  loc_B45506: FLdPr Me
  loc_B45509: VCallAd Control_ID_DetaProvLbl
  loc_B4550C: FStAdFunc var_98
  loc_B4550F: FLdRfVar var_98
  loc_B45512: FLdZeroAd var_BC
  loc_B45515: FStAdFuncNoPop
  loc_B45518: CastAd
  loc_B4551B: FStAdFunc var_90
  loc_B4551E: FLdRfVar var_90
  loc_B45521: FLdPr Me
  loc_B45524: MemLdRfVar from_stack_1.global_120
  loc_B45527: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4552C: IStI2 Cancel
  loc_B4552F: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B4553A: Branch loc_B4594E
  loc_B4553D: FLdRfVar var_9C
  loc_B45540: FLdPr Me
  loc_B45543: VCallAd Control_ID_CucuPersTxt
  loc_B45546: FStAdFunc var_88
  loc_B45549: FLdPr var_88
  loc_B4554C:  = Me.Text
  loc_B45551: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B45554: LitI4 0
  loc_B45559: LitI4 -1
  loc_B4555E: LitI4 1
  loc_B45563: LitStr Chr(37)
  loc_B45566: LitStr " "
  loc_B45569: ILdRf var_9C
  loc_B4556C: ImpAdCallI2 Replace(, , , , , )
  loc_B45571: FStStrNoPop var_A0
  loc_B45574: ConcatStr
  loc_B45575: FStStrNoPop var_A4
  loc_B45578: LitStr Chr(37) & "'"
  loc_B4557B: ConcatStr
  loc_B4557C: FStStrNoPop var_E4
  loc_B4557F: ImpAdLdRf MemVar_C3D74C
  loc_B45582: NewIfNullPr bscProveedor
  loc_B45585: Call bscProveedor.Constructor(from_stack_1v)
  loc_B4558A: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_B45595: FFree1Ad var_88
  loc_B45598: FLdRfVar var_A8
  loc_B4559B: FLdRfVar var_90
  loc_B4559E: FLdRfVar var_88
  loc_B455A1: ImpAdLdRf MemVar_C3D74C
  loc_B455A4: NewIfNullPr bscProveedor
  loc_B455A7: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B455AC: FLdPr var_88
  loc_B455AF: from_stack_1v = clsbase.RsFrmGet()
  loc_B455B4: FLdPr var_90
  loc_B455B7:  = Me.RecordCount
  loc_B455BC: ILdRf var_A8
  loc_B455BF: LitI4 1
  loc_B455C4: EqI4
  loc_B455C5: FFreeAd var_88 = ""
  loc_B455CC: BranchF loc_B456EF
  loc_B455CF: FLdRfVar var_CC
  loc_B455D2: FLdRfVar var_BC
  loc_B455D5: LitVarStr var_B8, "CucuPers"
  loc_B455DA: PopAdLdVar
  loc_B455DB: FLdRfVar var_98
  loc_B455DE: FLdRfVar var_90
  loc_B455E1: FLdRfVar var_88
  loc_B455E4: ImpAdLdRf MemVar_C3D74C
  loc_B455E7: NewIfNullPr bscProveedor
  loc_B455EA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B455EF: FLdPr var_88
  loc_B455F2: from_stack_1v = clsbase.RsFrmGet()
  loc_B455F7: FLdPr var_90
  loc_B455FA:  = Me.Fields
  loc_B455FF: FLdPr var_98
  loc_B45602: from_stack_2 = Me.Item(from_stack_1)
  loc_B45607: FLdPr var_BC
  loc_B4560A:  = Me.Value
  loc_B4560F: FLdRfVar var_CC
  loc_B45612: CStrVarTmp
  loc_B45613: FStStrNoPop var_9C
  loc_B45616: FLdPr Me
  loc_B45619: VCallAd Control_ID_CucuPersTxt
  loc_B4561C: FStAdFunc var_D0
  loc_B4561F: FLdPr var_D0
  loc_B45622: Me.Text = from_stack_1
  loc_B45627: FFree1Str var_9C
  loc_B4562A: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B45637: FFree1Var var_CC = ""
  loc_B4563A: FLdRfVar var_CC
  loc_B4563D: FLdRfVar var_BC
  loc_B45640: LitVarStr var_B8, "DetaProv"
  loc_B45645: PopAdLdVar
  loc_B45646: FLdRfVar var_98
  loc_B45649: FLdRfVar var_90
  loc_B4564C: FLdRfVar var_88
  loc_B4564F: ImpAdLdRf MemVar_C3D74C
  loc_B45652: NewIfNullPr bscProveedor
  loc_B45655: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4565A: FLdPr var_88
  loc_B4565D: from_stack_1v = clsbase.RsFrmGet()
  loc_B45662: FLdPr var_90
  loc_B45665:  = Me.Fields
  loc_B4566A: FLdPr var_98
  loc_B4566D: from_stack_2 = Me.Item(from_stack_1)
  loc_B45672: FLdPr var_BC
  loc_B45675:  = Me.Value
  loc_B4567A: FLdRfVar var_CC
  loc_B4567D: CStrVarTmp
  loc_B4567E: FStStrNoPop var_9C
  loc_B45681: FLdPr Me
  loc_B45684: VCallAd Control_ID_DetaProvLbl
  loc_B45687: FStAdFunc var_D0
  loc_B4568A: FLdPr var_D0
  loc_B4568D: Me.Caption = from_stack_1
  loc_B45692: FFree1Str var_9C
  loc_B45695: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B456A2: FFree1Var var_CC = ""
  loc_B456A5: LitStr vbNullString
  loc_B456A8: FLdPr Me
  loc_B456AB: MemStStrCopy
  loc_B456AF: FLdPr Me
  loc_B456B2: VCallAd Control_ID_CucuPersTxt
  loc_B456B5: FStAdFunc var_BC
  loc_B456B8: FLdPr Me
  loc_B456BB: VCallAd Control_ID_DetaProvLbl
  loc_B456BE: FStAdFunc var_98
  loc_B456C1: FLdRfVar var_98
  loc_B456C4: FLdZeroAd var_BC
  loc_B456C7: FStAdFuncNoPop
  loc_B456CA: CastAd
  loc_B456CD: FStAdFunc var_90
  loc_B456D0: FLdRfVar var_90
  loc_B456D3: FLdPr Me
  loc_B456D6: MemLdRfVar from_stack_1.global_120
  loc_B456D9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B456DE: IStI2 Cancel
  loc_B456E1: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B456EC: Branch loc_B4594E
  loc_B456EF: FLdRfVar var_A8
  loc_B456F2: FLdRfVar var_90
  loc_B456F5: FLdRfVar var_88
  loc_B456F8: ImpAdLdRf MemVar_C3D74C
  loc_B456FB: NewIfNullPr bscProveedor
  loc_B456FE: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B45703: FLdPr var_88
  loc_B45706: from_stack_1v = clsbase.RsFrmGet()
  loc_B4570B: FLdPr var_90
  loc_B4570E:  = Me.RecordCount
  loc_B45713: ILdRf var_A8
  loc_B45716: LitI4 1
  loc_B4571B: GtI4
  loc_B4571C: FFreeAd var_88 = ""
  loc_B45723: BranchF loc_B458D0
  loc_B45726: LitVar_Missing var_E0
  loc_B45729: PopAdLdVar
  loc_B4572A: LitVarI4
  loc_B45732: PopAdLdVar
  loc_B45733: ImpAdLdRf MemVar_C3D74C
  loc_B45736: NewIfNullPr bscProveedor
  loc_B45739: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4573E: FLdRfVar var_A8
  loc_B45741: FLdRfVar var_88
  loc_B45744: ImpAdLdRf MemVar_C3D74C
  loc_B45747: NewIfNullPr bscProveedor
  loc_B4574A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4574F: FLdPr var_88
  loc_B45752: from_stack_1 = clsbase.RecordCount
  loc_B45757: ILdRf var_A8
  loc_B4575A: LitI4 0
  loc_B4575F: GtI4
  loc_B45760: FFree1Ad var_88
  loc_B45763: BranchF loc_B45886
  loc_B45766: FLdRfVar var_CC
  loc_B45769: FLdRfVar var_BC
  loc_B4576C: LitVarStr var_B8, "CucuPers"
  loc_B45771: PopAdLdVar
  loc_B45772: FLdRfVar var_98
  loc_B45775: FLdRfVar var_90
  loc_B45778: FLdRfVar var_88
  loc_B4577B: ImpAdLdRf MemVar_C3D74C
  loc_B4577E: NewIfNullPr bscProveedor
  loc_B45781: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B45786: FLdPr var_88
  loc_B45789: from_stack_1v = clsbase.RsFrmGet()
  loc_B4578E: FLdPr var_90
  loc_B45791:  = Me.Fields
  loc_B45796: FLdPr var_98
  loc_B45799: from_stack_2 = Me.Item(from_stack_1)
  loc_B4579E: FLdPr var_BC
  loc_B457A1:  = Me.Value
  loc_B457A6: FLdRfVar var_CC
  loc_B457A9: CStrVarTmp
  loc_B457AA: FStStrNoPop var_9C
  loc_B457AD: FLdPr Me
  loc_B457B0: VCallAd Control_ID_CucuPersTxt
  loc_B457B3: FStAdFunc var_D0
  loc_B457B6: FLdPr var_D0
  loc_B457B9: Me.Text = from_stack_1
  loc_B457BE: FFree1Str var_9C
  loc_B457C1: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B457CE: FFree1Var var_CC = ""
  loc_B457D1: FLdRfVar var_CC
  loc_B457D4: FLdRfVar var_BC
  loc_B457D7: LitVarStr var_B8, "DetaProv"
  loc_B457DC: PopAdLdVar
  loc_B457DD: FLdRfVar var_98
  loc_B457E0: FLdRfVar var_90
  loc_B457E3: FLdRfVar var_88
  loc_B457E6: ImpAdLdRf MemVar_C3D74C
  loc_B457E9: NewIfNullPr bscProveedor
  loc_B457EC: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B457F1: FLdPr var_88
  loc_B457F4: from_stack_1v = clsbase.RsFrmGet()
  loc_B457F9: FLdPr var_90
  loc_B457FC:  = Me.Fields
  loc_B45801: FLdPr var_98
  loc_B45804: from_stack_2 = Me.Item(from_stack_1)
  loc_B45809: FLdPr var_BC
  loc_B4580C:  = Me.Value
  loc_B45811: FLdRfVar var_CC
  loc_B45814: CStrVarTmp
  loc_B45815: FStStrNoPop var_9C
  loc_B45818: FLdPr Me
  loc_B4581B: VCallAd Control_ID_DetaProvLbl
  loc_B4581E: FStAdFunc var_D0
  loc_B45821: FLdPr var_D0
  loc_B45824: Me.Caption = from_stack_1
  loc_B45829: FFree1Str var_9C
  loc_B4582C: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B45839: FFree1Var var_CC = ""
  loc_B4583C: LitStr vbNullString
  loc_B4583F: FLdPr Me
  loc_B45842: MemStStrCopy
  loc_B45846: FLdPr Me
  loc_B45849: VCallAd Control_ID_CucuPersTxt
  loc_B4584C: FStAdFunc var_BC
  loc_B4584F: FLdPr Me
  loc_B45852: VCallAd Control_ID_DetaProvLbl
  loc_B45855: FStAdFunc var_98
  loc_B45858: FLdRfVar var_98
  loc_B4585B: FLdZeroAd var_BC
  loc_B4585E: FStAdFuncNoPop
  loc_B45861: CastAd
  loc_B45864: FStAdFunc var_90
  loc_B45867: FLdRfVar var_90
  loc_B4586A: FLdPr Me
  loc_B4586D: MemLdRfVar from_stack_1.global_120
  loc_B45870: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B45875: IStI2 Cancel
  loc_B45878: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B45883: Branch loc_B458CD
  loc_B45886: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B45889: FLdPr Me
  loc_B4588C: MemStStrCopy
  loc_B45890: FLdPr Me
  loc_B45893: VCallAd Control_ID_CucuPersTxt
  loc_B45896: FStAdFunc var_BC
  loc_B45899: FLdPr Me
  loc_B4589C: VCallAd Control_ID_DetaProvLbl
  loc_B4589F: FStAdFunc var_98
  loc_B458A2: FLdRfVar var_98
  loc_B458A5: FLdZeroAd var_BC
  loc_B458A8: FStAdFuncNoPop
  loc_B458AB: CastAd
  loc_B458AE: FStAdFunc var_90
  loc_B458B1: FLdRfVar var_90
  loc_B458B4: FLdPr Me
  loc_B458B7: MemLdRfVar from_stack_1.global_120
  loc_B458BA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B458BF: IStI2 Cancel
  loc_B458C2: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B458CD: Branch loc_B4594E
  loc_B458D0: FLdRfVar var_A8
  loc_B458D3: FLdRfVar var_90
  loc_B458D6: FLdRfVar var_88
  loc_B458D9: ImpAdLdRf MemVar_C3D74C
  loc_B458DC: NewIfNullPr bscProveedor
  loc_B458DF: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B458E4: FLdPr var_88
  loc_B458E7: from_stack_1v = clsbase.RsFrmGet()
  loc_B458EC: FLdPr var_90
  loc_B458EF:  = Me.RecordCount
  loc_B458F4: ILdRf var_A8
  loc_B458F7: LitI4 1
  loc_B458FC: LtI4
  loc_B458FD: FFreeAd var_88 = ""
  loc_B45904: BranchF loc_B4594E
  loc_B45907: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B4590A: FLdPr Me
  loc_B4590D: MemStStrCopy
  loc_B45911: FLdPr Me
  loc_B45914: VCallAd Control_ID_CucuPersTxt
  loc_B45917: FStAdFunc var_BC
  loc_B4591A: FLdPr Me
  loc_B4591D: VCallAd Control_ID_DetaProvLbl
  loc_B45920: FStAdFunc var_98
  loc_B45923: FLdRfVar var_98
  loc_B45926: FLdZeroAd var_BC
  loc_B45929: FStAdFuncNoPop
  loc_B4592C: CastAd
  loc_B4592F: FStAdFunc var_90
  loc_B45932: FLdRfVar var_90
  loc_B45935: FLdPr Me
  loc_B45938: MemLdRfVar from_stack_1.global_120
  loc_B4593B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B45940: IStI2 Cancel
  loc_B45943: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B4594E: Branch loc_B45B15
  loc_B45951: LitI2_Byte 0
  loc_B45953: ImpAdLdRf MemVar_C3D74C
  loc_B45956: NewIfNullPr bscProveedor
  loc_B45959: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B4595E: LitNothing
  loc_B45960: CastAd
  loc_B45963: FStAdFuncNoPop
  loc_B45966: FLdRfVar var_88
  loc_B45969: ImpAdLdRf MemVar_C3D74C
  loc_B4596C: NewIfNullPr bscProveedor
  loc_B4596F: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B45974: FLdPr var_88
  loc_B45977: Call clsbase.RsFrmSet(from_stack_1v)
  loc_B4597C: FFreeAd var_90 = ""
  loc_B45983: LitVar_Missing var_E0
  loc_B45986: PopAdLdVar
  loc_B45987: LitVarI4
  loc_B4598F: PopAdLdVar
  loc_B45990: ImpAdLdRf MemVar_C3D74C
  loc_B45993: NewIfNullPr bscProveedor
  loc_B45996: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4599B: FLdRfVar var_A8
  loc_B4599E: FLdRfVar var_88
  loc_B459A1: ImpAdLdRf MemVar_C3D74C
  loc_B459A4: NewIfNullPr bscProveedor
  loc_B459A7: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B459AC: FLdPr var_88
  loc_B459AF: from_stack_1 = clsbase.RecordCount
  loc_B459B4: ILdRf var_A8
  loc_B459B7: LitI4 0
  loc_B459BC: GtI4
  loc_B459BD: FFree1Ad var_88
  loc_B459C0: BranchF loc_B45ACE
  loc_B459C3: FLdRfVar var_CC
  loc_B459C6: FLdRfVar var_BC
  loc_B459C9: LitVarStr var_B8, "CucuPers"
  loc_B459CE: PopAdLdVar
  loc_B459CF: FLdRfVar var_98
  loc_B459D2: FLdRfVar var_90
  loc_B459D5: FLdRfVar var_88
  loc_B459D8: ImpAdLdRf MemVar_C3D74C
  loc_B459DB: NewIfNullPr bscProveedor
  loc_B459DE: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B459E3: FLdPr var_88
  loc_B459E6: from_stack_1v = clsbase.RsFrmGet()
  loc_B459EB: FLdPr var_90
  loc_B459EE:  = Me.Fields
  loc_B459F3: FLdPr var_98
  loc_B459F6: from_stack_2 = Me.Item(from_stack_1)
  loc_B459FB: FLdPr var_BC
  loc_B459FE:  = Me.Value
  loc_B45A03: FLdPr Me
  loc_B45A06: MemLdRfVar from_stack_1.global_72
  loc_B45A09: NewIfNullRf
  loc_B45A0D: FLdRfVar var_CC
  loc_B45A10: CStrVarTmp
  loc_B45A11: FStStrNoPop var_9C
  loc_B45A14: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_B45A19: FStStrNoPop var_A0
  loc_B45A1C: FLdPr Me
  loc_B45A1F: MemStStrCopy
  loc_B45A23: FFreeStr var_9C = ""
  loc_B45A2A: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B45A35: FFree1Var var_CC = ""
  loc_B45A38: FLdRfVar var_9C
  loc_B45A3B: FLdPr Me
  loc_B45A3E: MemLdRfVar from_stack_1.global_72
  loc_B45A41: NewIfNullPr tblproveedor
  loc_B45A44: from_stack_1v = tblproveedor.CucuPersGet()
  loc_B45A49: ILdRf var_9C
  loc_B45A4C: FLdPr Me
  loc_B45A4F: VCallAd Control_ID_CucuPersTxt
  loc_B45A52: FStAdFunc var_88
  loc_B45A55: FLdPr var_88
  loc_B45A58: Me.Text = from_stack_1
  loc_B45A5D: FFree1Str var_9C
  loc_B45A60: FFree1Ad var_88
  loc_B45A63: FLdRfVar var_9C
  loc_B45A66: FLdPr Me
  loc_B45A69: MemLdRfVar from_stack_1.global_72
  loc_B45A6C: NewIfNullPr tblproveedor
  loc_B45A6F: from_stack_1v = tblproveedor.DetaProvGet()
  loc_B45A74: ILdRf var_9C
  loc_B45A77: FLdPr Me
  loc_B45A7A: VCallAd Control_ID_DetaProvLbl
  loc_B45A7D: FStAdFunc var_88
  loc_B45A80: FLdPr var_88
  loc_B45A83: Me.Caption = from_stack_1
  loc_B45A88: FFree1Str var_9C
  loc_B45A8B: FFree1Ad var_88
  loc_B45A8E: FLdPr Me
  loc_B45A91: VCallAd Control_ID_CucuPersTxt
  loc_B45A94: FStAdFunc var_BC
  loc_B45A97: FLdPr Me
  loc_B45A9A: VCallAd Control_ID_DetaProvLbl
  loc_B45A9D: FStAdFunc var_98
  loc_B45AA0: FLdRfVar var_98
  loc_B45AA3: FLdZeroAd var_BC
  loc_B45AA6: FStAdFuncNoPop
  loc_B45AA9: CastAd
  loc_B45AAC: FStAdFunc var_90
  loc_B45AAF: FLdRfVar var_90
  loc_B45AB2: FLdPr Me
  loc_B45AB5: MemLdRfVar from_stack_1.global_120
  loc_B45AB8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B45ABD: IStI2 Cancel
  loc_B45AC0: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B45ACB: Branch loc_B45B15
  loc_B45ACE: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B45AD1: FLdPr Me
  loc_B45AD4: MemStStrCopy
  loc_B45AD8: FLdPr Me
  loc_B45ADB: VCallAd Control_ID_CucuPersTxt
  loc_B45ADE: FStAdFunc var_BC
  loc_B45AE1: FLdPr Me
  loc_B45AE4: VCallAd Control_ID_DetaProvLbl
  loc_B45AE7: FStAdFunc var_98
  loc_B45AEA: FLdRfVar var_98
  loc_B45AED: FLdZeroAd var_BC
  loc_B45AF0: FStAdFuncNoPop
  loc_B45AF3: CastAd
  loc_B45AF6: FStAdFunc var_90
  loc_B45AF9: FLdRfVar var_90
  loc_B45AFC: FLdPr Me
  loc_B45AFF: MemLdRfVar from_stack_1.global_120
  loc_B45B02: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B45B07: IStI2 Cancel
  loc_B45B0A: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B45B15: ExitProcHresult
  loc_B45B16: FLdPr CucuPersTxt_Validate4DC
End Sub

Private Sub cboPeriodo_Click() 'A8DB1C
  'Data Table: 4E66BC
  loc_A8D6E0: FLdPr Me
  loc_A8D6E3: MemLdRfVar from_stack_1.global_88
  loc_A8D6E6: NewIfNullAd
  loc_A8D6E9: FStAd var_88 
  loc_A8D6ED: LitStr "SELECT IFNULL(Max(CodiOrco),1) CodiOrco"
  loc_A8D6F0: LitStr " FROM ordencompra"
  loc_A8D6F3: ConcatStr
  loc_A8D6F4: FStStrNoPop var_8C
  loc_A8D6F7: LitStr " WHERE PeriInfo = "
  loc_A8D6FA: ConcatStr
  loc_A8D6FB: FStStrNoPop var_98
  loc_A8D6FE: FLdRfVar var_94
  loc_A8D701: FLdPr Me
  loc_A8D704: VCallAd Control_ID_cboPeriodo
  loc_A8D707: FStAdFunc var_90
  loc_A8D70A: FLdPr var_90
  loc_A8D70D:  = Me.Text
  loc_A8D712: ILdRf var_94
  loc_A8D715: ConcatStr
  loc_A8D716: FStStrNoPop var_9C
  loc_A8D719: LitStr " LIMIT 1;"
  loc_A8D71C: ConcatStr
  loc_A8D71D: FStStrNoPop var_A0
  loc_A8D720: FLdPr var_88
  loc_A8D723: Call clsordencompra.RedefineRS(from_stack_1v)
  loc_A8D728: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A8D735: FFree1Ad var_90
  loc_A8D738: LitStr vbNullString
  loc_A8D73B: FLdPr Me
  loc_A8D73E: VCallAd Control_ID_CodiOrcoTxt
  loc_A8D741: FStAdFunc var_90
  loc_A8D744: FLdPr var_90
  loc_A8D747: Me.Text = from_stack_1
  loc_A8D74C: FFree1Ad var_90
  loc_A8D74F: FLdRfVar var_A4
  loc_A8D752: FLdPr var_88
  loc_A8D755: from_stack_1 = clsordencompra.RecordCount
  loc_A8D75A: ILdRf var_A4
  loc_A8D75D: LitI4 0
  loc_A8D762: GtI4
  loc_A8D763: BranchF loc_A8D7C1
  loc_A8D766: FLdRfVar var_CC
  loc_A8D769: FLdRfVar var_BC
  loc_A8D76C: LitVarStr var_B8, "CodiOrco"
  loc_A8D771: PopAdLdVar
  loc_A8D772: FLdRfVar var_A8
  loc_A8D775: FLdRfVar var_90
  loc_A8D778: FLdPr var_88
  loc_A8D77B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_A8D780: FLdPr var_90
  loc_A8D783:  = Me.Fields
  loc_A8D788: FLdPr var_A8
  loc_A8D78B: from_stack_2 = Me.Item(from_stack_1)
  loc_A8D790: FLdPr var_BC
  loc_A8D793:  = Me.Value
  loc_A8D798: FLdRfVar var_CC
  loc_A8D79B: CStrVarTmp
  loc_A8D79C: FStStrNoPop var_8C
  loc_A8D79F: FLdPr Me
  loc_A8D7A2: VCallAd Control_ID_CodiOrcoTxt
  loc_A8D7A5: FStAdFunc var_D0
  loc_A8D7A8: FLdPr var_D0
  loc_A8D7AB: Me.Text = from_stack_1
  loc_A8D7B0: FFree1Str var_8C
  loc_A8D7B3: FFreeAd var_90 = "": var_A8 = "": var_BC = ""
  loc_A8D7BE: FFree1Var var_CC = ""
  loc_A8D7C1: FLdRfVar var_8C
  loc_A8D7C4: FLdPr Me
  loc_A8D7C7: VCallAd Control_ID_cboPeriodo
  loc_A8D7CA: FStAdFunc var_90
  loc_A8D7CD: FLdPr var_90
  loc_A8D7D0:  = Me.Text
  loc_A8D7D5: LitI2_Byte 1
  loc_A8D7D7: LitI2_Byte 1
  loc_A8D7D9: ILdRf var_8C
  loc_A8D7DC: CI2Str
  loc_A8D7DE: FLdRfVar var_CC
  loc_A8D7E1: ImpAdCallFPR4  = DateSerial(, , )
  loc_A8D7E6: FLdRfVar var_CC
  loc_A8D7E9: CStrVarTmp
  loc_A8D7EA: CVarStr var_E0
  loc_A8D7ED: PopAdLdVar
  loc_A8D7EE: FLdPr Me
  loc_A8D7F1: VCallAd Control_ID_mskDesde
  loc_A8D7F4: FStAdFunc var_A8
  loc_A8D7F7: FLdPr var_A8
  loc_A8D7FA: LateIdSt
  loc_A8D7FF: FFree1Str var_8C
  loc_A8D802: FFreeAd var_90 = ""
  loc_A8D809: FFreeVar var_CC = ""
  loc_A8D810: FLdRfVar var_8C
  loc_A8D813: FLdPr Me
  loc_A8D816: VCallAd Control_ID_cboPeriodo
  loc_A8D819: FStAdFunc var_90
  loc_A8D81C: FLdPr var_90
  loc_A8D81F:  = Me.Text
  loc_A8D824: ILdRf var_8C
  loc_A8D827: CI2Str
  loc_A8D829: ImpAdLdI2 MemVar_C3D064
  loc_A8D82C: LtI2
  loc_A8D82D: FFree1Str var_8C
  loc_A8D830: FFree1Ad var_90
  loc_A8D833: BranchF loc_A8D888
  loc_A8D836: FLdRfVar var_8C
  loc_A8D839: FLdPr Me
  loc_A8D83C: VCallAd Control_ID_cboPeriodo
  loc_A8D83F: FStAdFunc var_90
  loc_A8D842: FLdPr var_90
  loc_A8D845:  = Me.Text
  loc_A8D84A: LitI2_Byte &H1F
  loc_A8D84C: LitI2_Byte &HC
  loc_A8D84E: ILdRf var_8C
  loc_A8D851: CI2Str
  loc_A8D853: FLdRfVar var_CC
  loc_A8D856: ImpAdCallFPR4  = DateSerial(, , )
  loc_A8D85B: FLdRfVar var_CC
  loc_A8D85E: CStrVarTmp
  loc_A8D85F: CVarStr var_E0
  loc_A8D862: PopAdLdVar
  loc_A8D863: FLdPr Me
  loc_A8D866: VCallAd Control_ID_mskHasta
  loc_A8D869: FStAdFunc var_A8
  loc_A8D86C: FLdPr var_A8
  loc_A8D86F: LateIdSt
  loc_A8D874: FFree1Str var_8C
  loc_A8D877: FFreeAd var_90 = ""
  loc_A8D87E: FFreeVar var_CC = ""
  loc_A8D885: Branch loc_A8D8A8
  loc_A8D888: ImpAdLdFPR8 MemVar_C3D04C
  loc_A8D88B: CStrDate
  loc_A8D88D: CVarStr var_CC
  loc_A8D890: PopAdLdVar
  loc_A8D891: FLdPr Me
  loc_A8D894: VCallAd Control_ID_mskHasta
  loc_A8D897: FStAdFunc var_90
  loc_A8D89A: FLdPr var_90
  loc_A8D89D: LateIdSt
  loc_A8D8A2: FFree1Ad var_90
  loc_A8D8A5: FFree1Var var_CC = ""
  loc_A8D8A8: LitNothing
  loc_A8D8AA: FStAd var_88 
  loc_A8D8AE: FLdPr Me
  loc_A8D8B1: VCallAd Control_ID_cboExpeImpu
  loc_A8D8B4: FStAdFunc var_90
  loc_A8D8B7: FLdPr var_90
  loc_A8D8BA: Me.Clear
  loc_A8D8BF: FFree1Ad var_90
  loc_A8D8C2: FLdPr Me
  loc_A8D8C5: MemLdRfVar from_stack_1.global_96
  loc_A8D8C8: NewIfNullAd
  loc_A8D8CB: FStAd var_E4 
  loc_A8D8CF: LitStr "SELECT DISTINCT ExpeImpu"
  loc_A8D8D2: LitStr " FROM ordencompra"
  loc_A8D8D5: ConcatStr
  loc_A8D8D6: FStStrNoPop var_8C
  loc_A8D8D9: LitStr " WHERE ordencompra.PeriInfo = "
  loc_A8D8DC: ConcatStr
  loc_A8D8DD: FStStrNoPop var_98
  loc_A8D8E0: FLdRfVar var_94
  loc_A8D8E3: FLdPr Me
  loc_A8D8E6: VCallAd Control_ID_cboPeriodo
  loc_A8D8E9: FStAdFunc var_90
  loc_A8D8EC: FLdPr var_90
  loc_A8D8EF:  = Me.Text
  loc_A8D8F4: ILdRf var_94
  loc_A8D8F7: ConcatStr
  loc_A8D8F8: FStStrNoPop var_9C
  loc_A8D8FB: LitStr " ORDER BY ExpeImpu;"
  loc_A8D8FE: ConcatStr
  loc_A8D8FF: FStStrNoPop var_A0
  loc_A8D902: FLdPr var_E4
  loc_A8D905: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8D90A: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A8D917: FFree1Ad var_90
  loc_A8D91A: FLdRfVar var_A4
  loc_A8D91D: FLdPr var_E4
  loc_A8D920: from_stack_1 = clsbase.RecordCount
  loc_A8D925: ILdRf var_A4
  loc_A8D928: LitI4 0
  loc_A8D92D: GtI4
  loc_A8D92E: BranchF loc_A8D9B5
  loc_A8D931: FLdPr var_E4
  loc_A8D934: Call clsbase.MoveFirst()
  loc_A8D939: FLdRfVar var_E6
  loc_A8D93C: FLdPr var_E4
  loc_A8D93F: from_stack_1 = clsbase.EOF
  loc_A8D944: FLdI2 var_E6
  loc_A8D947: NotI4
  loc_A8D948: BranchF loc_A8D9B5
  loc_A8D94B: LitVar_Missing var_F8
  loc_A8D94E: PopAdLdVar
  loc_A8D94F: FLdRfVar var_CC
  loc_A8D952: FLdRfVar var_BC
  loc_A8D955: LitVarStr var_B8, "ExpeImpu"
  loc_A8D95A: PopAdLdVar
  loc_A8D95B: FLdRfVar var_A8
  loc_A8D95E: FLdRfVar var_90
  loc_A8D961: FLdPr var_E4
  loc_A8D964: from_stack_1v = clsbase.RsFrmGet()
  loc_A8D969: FLdPr var_90
  loc_A8D96C:  = Me.Fields
  loc_A8D971: FLdPr var_A8
  loc_A8D974: from_stack_2 = Me.Item(from_stack_1)
  loc_A8D979: FLdPr var_BC
  loc_A8D97C:  = Me.Value
  loc_A8D981: FLdRfVar var_CC
  loc_A8D984: CStrVarTmp
  loc_A8D985: FStStrNoPop var_8C
  loc_A8D988: FLdPr Me
  loc_A8D98B: VCallAd Control_ID_cboExpeImpu
  loc_A8D98E: FStAdFunc var_D0
  loc_A8D991: FLdPr var_D0
  loc_A8D994: Me.AddItem from_stack_1, from_stack_2
  loc_A8D999: FFree1Str var_8C
  loc_A8D99C: FFreeAd var_90 = "": var_A8 = "": var_BC = ""
  loc_A8D9A7: FFree1Var var_CC = ""
  loc_A8D9AA: FLdPr var_E4
  loc_A8D9AD: Call clsbase.MoveSiguiente()
  loc_A8D9B2: Branch loc_A8D939
  loc_A8D9B5: LitNothing
  loc_A8D9B7: FStAd var_E4 
  loc_A8D9BB: FLdPr Me
  loc_A8D9BE: VCallAd Control_ID_cboTipoCompra
  loc_A8D9C1: FStAdFunc var_90
  loc_A8D9C4: FLdPr var_90
  loc_A8D9C7: Me.Clear
  loc_A8D9CC: FFree1Ad var_90
  loc_A8D9CF: LitVar_Missing var_B8
  loc_A8D9D2: PopAdLdVar
  loc_A8D9D3: LitStr "Todos"
  loc_A8D9D6: FLdPr Me
  loc_A8D9D9: VCallAd Control_ID_cboTipoCompra
  loc_A8D9DC: FStAdFunc var_90
  loc_A8D9DF: FLdPr var_90
  loc_A8D9E2: Me.AddItem from_stack_1, from_stack_2
  loc_A8D9E7: FFree1Ad var_90
  loc_A8D9EA: FLdPr Me
  loc_A8D9ED: MemLdRfVar from_stack_1.global_96
  loc_A8D9F0: NewIfNullAd
  loc_A8D9F3: FStAd var_FC 
  loc_A8D9F7: LitStr "SELECT CodiTico, DetaTico"
  loc_A8D9FA: LitStr " FROM tipocompra"
  loc_A8D9FD: ConcatStr
  loc_A8D9FE: FStStrNoPop var_8C
  loc_A8DA01: LitStr " ORDER BY CodiTico;"
  loc_A8DA04: ConcatStr
  loc_A8DA05: FStStrNoPop var_94
  loc_A8DA08: FLdPr var_FC
  loc_A8DA0B: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8DA10: FFreeStr var_8C = ""
  loc_A8DA17: FLdRfVar var_A4
  loc_A8DA1A: FLdPr var_FC
  loc_A8DA1D: from_stack_1 = clsbase.RecordCount
  loc_A8DA22: ILdRf var_A4
  loc_A8DA25: LitI4 0
  loc_A8DA2A: GtI4
  loc_A8DA2B: BranchF loc_A8DB02
  loc_A8DA2E: FLdPr var_FC
  loc_A8DA31: Call clsbase.MoveFirst()
  loc_A8DA36: FLdRfVar var_E6
  loc_A8DA39: FLdPr var_FC
  loc_A8DA3C: from_stack_1 = clsbase.EOF
  loc_A8DA41: FLdI2 var_E6
  loc_A8DA44: NotI4
  loc_A8DA45: BranchF loc_A8DB02
  loc_A8DA48: LitVar_Missing var_144
  loc_A8DA4B: PopAdLdVar
  loc_A8DA4C: FLdRfVar var_CC
  loc_A8DA4F: FLdRfVar var_BC
  loc_A8DA52: LitVarStr var_B8, "CodiTico"
  loc_A8DA57: PopAdLdVar
  loc_A8DA58: FLdRfVar var_A8
  loc_A8DA5B: FLdRfVar var_90
  loc_A8DA5E: FLdPr var_FC
  loc_A8DA61: from_stack_1v = clsbase.RsFrmGet()
  loc_A8DA66: FLdPr var_90
  loc_A8DA69:  = Me.Fields
  loc_A8DA6E: FLdPr var_A8
  loc_A8DA71: from_stack_2 = Me.Item(from_stack_1)
  loc_A8DA76: FLdPr var_BC
  loc_A8DA79:  = Me.Value
  loc_A8DA7E: FLdRfVar var_CC
  loc_A8DA81: LitVarStr var_F8, " - "
  loc_A8DA86: ConcatVar var_E0
  loc_A8DA8A: FLdRfVar var_124
  loc_A8DA8D: FLdRfVar var_114
  loc_A8DA90: LitVarStr var_110, "DetaTico"
  loc_A8DA95: PopAdLdVar
  loc_A8DA96: FLdRfVar var_100
  loc_A8DA99: FLdRfVar var_D0
  loc_A8DA9C: FLdPr var_FC
  loc_A8DA9F: from_stack_1v = clsbase.RsFrmGet()
  loc_A8DAA4: FLdPr var_D0
  loc_A8DAA7:  = Me.Fields
  loc_A8DAAC: FLdPr var_100
  loc_A8DAAF: from_stack_2 = Me.Item(from_stack_1)
  loc_A8DAB4: FLdPr var_114
  loc_A8DAB7:  = Me.Value
  loc_A8DABC: FLdRfVar var_124
  loc_A8DABF: ConcatVar var_134
  loc_A8DAC3: CStrVarVal var_8C
  loc_A8DAC7: FLdPr Me
  loc_A8DACA: VCallAd Control_ID_cboTipoCompra
  loc_A8DACD: FStAdFunc var_148
  loc_A8DAD0: FLdPr var_148
  loc_A8DAD3: Me.AddItem from_stack_1, from_stack_2
  loc_A8DAD8: FFree1Str var_8C
  loc_A8DADB: FFreeAd var_90 = "": var_A8 = "": var_BC = "": var_D0 = "": var_100 = "": var_114 = ""
  loc_A8DAEC: FFreeVar var_CC = "": var_E0 = "": var_124 = ""
  loc_A8DAF7: FLdPr var_FC
  loc_A8DAFA: Call clsbase.MoveSiguiente()
  loc_A8DAFF: Branch loc_A8DA36
  loc_A8DB02: LitNothing
  loc_A8DB04: FStAd var_FC 
  loc_A8DB08: LitNothing
  loc_A8DB0A: CastAd
  loc_A8DB0D: FStAdFuncNoPop
  loc_A8DB10: FLdPr Me
  loc_A8DB13: MemStAd
  loc_A8DB17: FFree1Ad var_90
  loc_A8DB1A: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94ACA0
  'Data Table: 4E66BC
  loc_94AC8C: FLdPr Me
  loc_94AC8F: VCallAd Control_ID_mskDesde
  loc_94AC92: CVarAd
  loc_94AC96: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AC9B: FFree1Var var_94 = ""
  loc_94AC9E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B351C
  'Data Table: 4E66BC
  loc_9B3480: FLdPr Me
  loc_9B3483: VCallAd Control_ID_mskDesde
  loc_9B3486: FStAdFunc var_88
  loc_9B3489: FLdPr var_88
  loc_9B348C: LateIdLdVar var_98 DispID_15 0
  loc_9B3493: PopAd
  loc_9B3495: FLdPr Me
  loc_9B3498: VCallAd Control_ID_mskDesde
  loc_9B349B: FStAdFunc var_AC
  loc_9B349E: LitI2_Byte 0
  loc_9B34A0: PopTmpLdAd2 var_A2
  loc_9B34A3: FLdZeroAd var_AC
  loc_9B34A6: FStAdFunc var_A0
  loc_9B34A9: FLdRfVar var_A0
  loc_9B34AC: LitStr vbNullString
  loc_9B34AF: LitI2_Byte 0
  loc_9B34B1: LitI2_Byte 0
  loc_9B34B3: FLdRfVar var_98
  loc_9B34B6: CStrVarTmp
  loc_9B34B7: FStStrNoPop var_9C
  loc_9B34BA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B34BF: FStStrNoPop var_A8
  loc_9B34C2: FLdPr Me
  loc_9B34C5: MemStStrCopy
  loc_9B34C9: FFreeStr var_9C = ""
  loc_9B34D0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B34D9: FFree1Var var_98 = ""
  loc_9B34DC: FLdPr Me
  loc_9B34DF: VCallAd Control_ID_mskDesde
  loc_9B34E2: FStAdFunc var_B0
  loc_9B34E5: LitNothing
  loc_9B34E7: CastAd
  loc_9B34EA: FStAdFunc var_AC
  loc_9B34ED: FLdRfVar var_AC
  loc_9B34F0: FLdZeroAd var_B0
  loc_9B34F3: FStAdFuncNoPop
  loc_9B34F6: CastAd
  loc_9B34F9: FStAdFunc var_A0
  loc_9B34FC: FLdRfVar var_A0
  loc_9B34FF: FLdPr Me
  loc_9B3502: MemLdRfVar from_stack_1.global_120
  loc_9B3505: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B350A: IStI2 arg_C
  loc_9B350D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3518: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '94AC58
  'Data Table: 4E66BC
  loc_94AC44: FLdPr Me
  loc_94AC47: VCallAd Control_ID_mskHasta
  loc_94AC4A: CVarAd
  loc_94AC4E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AC53: FFree1Var var_94 = ""
  loc_94AC56: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B317C
  'Data Table: 4E66BC
  loc_9B30E0: FLdPr Me
  loc_9B30E3: VCallAd Control_ID_mskHasta
  loc_9B30E6: FStAdFunc var_88
  loc_9B30E9: FLdPr var_88
  loc_9B30EC: LateIdLdVar var_98 DispID_15 0
  loc_9B30F3: PopAd
  loc_9B30F5: FLdPr Me
  loc_9B30F8: VCallAd Control_ID_mskHasta
  loc_9B30FB: FStAdFunc var_AC
  loc_9B30FE: LitI2_Byte 0
  loc_9B3100: PopTmpLdAd2 var_A2
  loc_9B3103: FLdZeroAd var_AC
  loc_9B3106: FStAdFunc var_A0
  loc_9B3109: FLdRfVar var_A0
  loc_9B310C: LitStr vbNullString
  loc_9B310F: LitI2_Byte 0
  loc_9B3111: LitI2_Byte 0
  loc_9B3113: FLdRfVar var_98
  loc_9B3116: CStrVarTmp
  loc_9B3117: FStStrNoPop var_9C
  loc_9B311A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B311F: FStStrNoPop var_A8
  loc_9B3122: FLdPr Me
  loc_9B3125: MemStStrCopy
  loc_9B3129: FFreeStr var_9C = ""
  loc_9B3130: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3139: FFree1Var var_98 = ""
  loc_9B313C: FLdPr Me
  loc_9B313F: VCallAd Control_ID_mskHasta
  loc_9B3142: FStAdFunc var_B0
  loc_9B3145: LitNothing
  loc_9B3147: CastAd
  loc_9B314A: FStAdFunc var_AC
  loc_9B314D: FLdRfVar var_AC
  loc_9B3150: FLdZeroAd var_B0
  loc_9B3153: FStAdFuncNoPop
  loc_9B3156: CastAd
  loc_9B3159: FStAdFunc var_A0
  loc_9B315C: FLdRfVar var_A0
  loc_9B315F: FLdPr Me
  loc_9B3162: MemLdRfVar from_stack_1.global_120
  loc_9B3165: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B316A: IStI2 arg_C
  loc_9B316D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3178: ExitProcHresult
  loc_9B3179: CastAd
End Function

Private Sub cmdPredeterminada_Click() '95FD34
  'Data Table: 4E66BC
  loc_95FD1C: ILdRf Me
  loc_95FD1F: CastAd
  loc_95FD22: FStAdFunc var_88
  loc_95FD25: FLdRfVar var_88
  loc_95FD28: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95FD2D: FFree1Ad var_88
  loc_95FD30: ExitProcHresult
End Sub

Private Sub cboTipoCompra_KeyPress(KeyAscii As Integer) '9756F4
  'Data Table: 4E66BC
  loc_9756CC: FLdPr Me
  loc_9756CF: VCallAd Control_ID_cboTipoCompra
  loc_9756D2: FStAdFunc var_8C
  loc_9756D5: ILdI2 KeyAscii
  loc_9756D8: FLdZeroAd var_8C
  loc_9756DB: FStAdFunc var_88
  loc_9756DE: FLdRfVar var_88
  loc_9756E1: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_9756E6: IStI2 KeyAscii
  loc_9756E9: FFreeAd var_88 = ""
  loc_9756F0: ExitProcHresult
  loc_9756F1: StUdtVar
End Sub

Public Function htmFileGet() '4E836C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4E837B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4E838A
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4E8399
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4E83A8
  bGenerado = Value
End Sub

Public Sub GeneraHTML() '9A6148
  'Data Table: 4E66BC
  loc_9A60B8: FLdRfVar var_88
  loc_9A60BB: LitI2_Byte 0
  loc_9A60BD: LitI2_Byte &HFF
  loc_9A60BF: ImpAdLdI4 MemVar_C3D83C
  loc_9A60C2: FLdPr Me
  loc_9A60C5: MemLdRfVar from_stack_1.global_100
  loc_9A60C8: NewIfNullPr IFileSystem3
  loc_9A60CB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9A60D0: ILdRf var_88
  loc_9A60D3: FLdPr Me
  loc_9A60D6: MemStVarAd
  loc_9A60DA: FFree1Ad var_88
  loc_9A60DD: Call Proc_199_43_9BAA44()
  loc_9A60E2: LitI2_Byte 0
  loc_9A60E4: BranchF loc_9A612A
  loc_9A60E7: LitI2_Byte 1
  loc_9A60E9: FLdPr Me
  loc_9A60EC: MemLdRfVar from_stack_1.global_70
  loc_9A60EF: LitI2_Byte 2
  loc_9A60F1: ForI2 var_8C
  loc_9A60F7: FLdPr Me
  loc_9A60FA: MemLdI2 global_70
  loc_9A60FD: LitI2_Byte 1
  loc_9A60FF: NeI2
  loc_9A6100: BranchF loc_9A6117
  loc_9A6103: LitVarStr var_9C, "<div style=""page-break-before:always""></div>"
  loc_9A6108: PopAdLdVar
  loc_9A6109: FLdPr Me
  loc_9A610C: MemLdRfVar from_stack_1.htmFile
  loc_9A610F: LdPrVar
  loc_9A6111: LateMemCall
  loc_9A6117: Call Proc_199_47_9A5FC0()
  loc_9A611C: FLdPr Me
  loc_9A611F: MemLdRfVar from_stack_1.global_70
  loc_9A6122: NextI2 var_8C, loc_9A60F7
  loc_9A6127: Branch loc_9A612F
  loc_9A612A: Call Proc_199_47_9A5FC0()
  loc_9A612F: Call Proc_199_46_973388()
  loc_9A6134: FLdPr Me
  loc_9A6137: MemLdRfVar from_stack_1.htmFile
  loc_9A613A: LdPrVar
  loc_9A613C: LateMemCall
  loc_9A6142: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9A6147: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BEA6E4
  'Data Table: 4E66BC
  loc_BE8C88: FLdPr Me
  loc_BE8C8B: MemLdI2 bGenerado
  loc_BE8C8E: BranchF loc_BE8C92
  loc_BE8C91: ExitProcHresult
  loc_BE8C92: LitVarStr var_B0, "Generando reporte..."
  loc_BE8C97: PopAdLdVar
  loc_BE8C98: FLdPr Me
  loc_BE8C9B: VCallAd Control_ID_statusBar
  loc_BE8C9E: FStAdFunc var_C4
  loc_BE8CA1: FLdPr var_C4
  loc_BE8CA4: LateIdSt
  loc_BE8CA9: FFree1Ad var_C4
  loc_BE8CAC: LitI4 &HB
  loc_BE8CB1: CI2I4
  loc_BE8CB2: FLdPr Me
  loc_BE8CB5: Me.MousePointer = from_stack_1
  loc_BE8CBA: LitI2_Byte 0
  loc_BE8CBC: PopTmpLdAd2 var_C6
  loc_BE8CBF: Call CodiOrcoTxt_Validate(from_stack_1v)
  loc_BE8CC4: FLdPr Me
  loc_BE8CC7: MemLdStr global_120
  loc_BE8CCA: LitStr vbNullString
  loc_BE8CCD: NeStr
  loc_BE8CCF: BranchF loc_BE8CE7
  loc_BE8CD2: FLdPr Me
  loc_BE8CD5: VCallAd Control_ID_CodiOrcoTxt
  loc_BE8CD8: CVarAd
  loc_BE8CDC: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BE8CE1: FFree1Var var_D8 = ""
  loc_BE8CE4: Branch loc_BEA6BA
  loc_BE8CE7: LitI2_Byte 0
  loc_BE8CE9: PopTmpLdAd2 var_C6
  loc_BE8CEC: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BE8CF1: FLdPr Me
  loc_BE8CF4: MemLdStr global_120
  loc_BE8CF7: LitStr vbNullString
  loc_BE8CFA: NeStr
  loc_BE8CFC: BranchF loc_BE8D14
  loc_BE8CFF: FLdPr Me
  loc_BE8D02: VCallAd Control_ID_mskDesde
  loc_BE8D05: CVarAd
  loc_BE8D09: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BE8D0E: FFree1Var var_D8 = ""
  loc_BE8D11: Branch loc_BEA6BA
  loc_BE8D14: LitI2_Byte 0
  loc_BE8D16: PopTmpLdAd2 var_C6
  loc_BE8D19: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BE8D1E: FLdPr Me
  loc_BE8D21: MemLdStr global_120
  loc_BE8D24: LitStr vbNullString
  loc_BE8D27: NeStr
  loc_BE8D29: BranchF loc_BE8D41
  loc_BE8D2C: FLdPr Me
  loc_BE8D2F: VCallAd Control_ID_mskHasta
  loc_BE8D32: CVarAd
  loc_BE8D36: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BE8D3B: FFree1Var var_D8 = ""
  loc_BE8D3E: Branch loc_BEA6BA
  loc_BE8D41: FLdRfVar var_DC
  loc_BE8D44: FLdPr Me
  loc_BE8D47: VCallAd Control_ID_cboExpeImpu
  loc_BE8D4A: FStAdFunc var_C4
  loc_BE8D4D: FLdPr var_C4
  loc_BE8D50:  = Me.Text
  loc_BE8D55: FLdRfVar var_E4
  loc_BE8D58: FLdPr Me
  loc_BE8D5B: VCallAd Control_ID_cboExpeImpu
  loc_BE8D5E: FStAdFunc var_E0
  loc_BE8D61: FLdPr var_E0
  loc_BE8D64:  = Me.Text
  loc_BE8D69: LitVarStr var_C0, vbNullString
  loc_BE8D6E: FStVarCopyObj var_F8
  loc_BE8D71: FLdRfVar var_F8
  loc_BE8D74: LitStr " AND oc.ExpeImpu = '"
  loc_BE8D77: ILdRf var_E4
  loc_BE8D7A: ConcatStr
  loc_BE8D7B: FStStrNoPop var_E8
  loc_BE8D7E: LitStr "'"
  loc_BE8D81: ConcatStr
  loc_BE8D82: CVarStr var_D8
  loc_BE8D85: ILdRf var_DC
  loc_BE8D88: LitStr vbNullString
  loc_BE8D8B: NeStr
  loc_BE8D8D: CVarBoolI2 var_B0
  loc_BE8D91: FLdRfVar var_108
  loc_BE8D94: ImpAdCallFPR4  = IIf(, , )
  loc_BE8D99: FLdRfVar var_108
  loc_BE8D9C: CStrVarTmp
  loc_BE8D9D: FStStr var_8C
  loc_BE8DA0: FFreeStr var_DC = "": var_E4 = ""
  loc_BE8DA9: FFreeAd var_C4 = ""
  loc_BE8DB0: FFreeVar var_B0 = "": var_D8 = "": var_F8 = ""
  loc_BE8DBB: FLdRfVar var_DC
  loc_BE8DBE: FLdPr Me
  loc_BE8DC1: VCallAd Control_ID_cboTipoCompra
  loc_BE8DC4: FStAdFunc var_C4
  loc_BE8DC7: FLdPr var_C4
  loc_BE8DCA:  = Me.Text
  loc_BE8DCF: FLdRfVar var_E4
  loc_BE8DD2: FLdPr Me
  loc_BE8DD5: VCallAd Control_ID_cboTipoCompra
  loc_BE8DD8: FStAdFunc var_E0
  loc_BE8DDB: FLdPr var_E0
  loc_BE8DDE:  = Me.Text
  loc_BE8DE3: FLdPr Me
  loc_BE8DE6: VCallAd Control_ID_cboTipoCompra
  loc_BE8DE9: CVarAd
  loc_BE8DED: LitVarStr var_C0, "0 "
  loc_BE8DF2: FStVarCopyObj var_D8
  loc_BE8DF5: FLdRfVar var_D8
  loc_BE8DF8: ILdRf var_DC
  loc_BE8DFB: LitStr "Todos"
  loc_BE8DFE: EqStr
  loc_BE8E00: ILdRf var_E4
  loc_BE8E03: LitStr vbNullString
  loc_BE8E06: EqStr
  loc_BE8E08: OrI4
  loc_BE8E09: CVarBoolI2 var_B0
  loc_BE8E0D: FLdRfVar var_108
  loc_BE8E10: ImpAdCallFPR4  = IIf(, , )
  loc_BE8E15: FLdRfVar var_108
  loc_BE8E18: CStrVarTmp
  loc_BE8E19: FStStr var_90
  loc_BE8E1C: FFreeStr var_DC = ""
  loc_BE8E23: FFreeAd var_C4 = ""
  loc_BE8E2A: FFreeVar var_B0 = "": var_D8 = "": var_F8 = ""
  loc_BE8E35: LitVarStr var_118, " AND oc.CodiTico = '"
  loc_BE8E3A: LitI4 1
  loc_BE8E3F: ILdRf var_90
  loc_BE8E42: LitStr " "
  loc_BE8E45: LitI4 0
  loc_BE8E4A: FnInStr4
  loc_BE8E4C: LitI4 1
  loc_BE8E51: SubI4
  loc_BE8E52: CVarI4
  loc_BE8E56: LitI4 1
  loc_BE8E5B: FLdRfVar var_90
  loc_BE8E5E: CVarRef
  loc_BE8E63: FLdRfVar var_F8
  loc_BE8E66: ImpAdCallFPR4  = Mid(, , )
  loc_BE8E6B: FLdRfVar var_F8
  loc_BE8E6E: ConcatVar var_108
  loc_BE8E72: LitVarStr var_128, "'"
  loc_BE8E77: ConcatVar var_138
  loc_BE8E7B: LitVarStr var_158, vbNullString
  loc_BE8E80: FStVarCopyObj var_168
  loc_BE8E83: FLdRfVar var_168
  loc_BE8E86: ILdRf var_90
  loc_BE8E89: LitStr "0 "
  loc_BE8E8C: EqStr
  loc_BE8E8E: CVarBoolI2 var_148
  loc_BE8E92: FLdRfVar var_178
  loc_BE8E95: ImpAdCallFPR4  = IIf(, , )
  loc_BE8E9A: FLdRfVar var_178
  loc_BE8E9D: CStrVarTmp
  loc_BE8E9E: FStStr var_90
  loc_BE8EA1: FFreeVar var_D8 = "": var_F8 = "": var_108 = "": var_148 = "": var_168 = "": var_138 = ""
  loc_BE8EB2: FLdRfVar var_DC
  loc_BE8EB5: FLdPr Me
  loc_BE8EB8: VCallAd Control_ID_CucuPersTxt
  loc_BE8EBB: FStAdFunc var_C4
  loc_BE8EBE: FLdPr var_C4
  loc_BE8EC1:  = Me.Text
  loc_BE8EC6: FLdRfVar var_E4
  loc_BE8EC9: FLdPr Me
  loc_BE8ECC: VCallAd Control_ID_CucuPersTxt
  loc_BE8ECF: FStAdFunc var_E0
  loc_BE8ED2: FLdPr var_E0
  loc_BE8ED5:  = Me.Text
  loc_BE8EDA: LitVarStr var_C0, vbNullString
  loc_BE8EDF: FStVarCopyObj var_F8
  loc_BE8EE2: FLdRfVar var_F8
  loc_BE8EE5: LitStr " AND oc.CucuPers = '"
  loc_BE8EE8: ILdRf var_E4
  loc_BE8EEB: ConcatStr
  loc_BE8EEC: FStStrNoPop var_E8
  loc_BE8EEF: LitStr "'"
  loc_BE8EF2: ConcatStr
  loc_BE8EF3: CVarStr var_D8
  loc_BE8EF6: ILdRf var_DC
  loc_BE8EF9: LitStr vbNullString
  loc_BE8EFC: NeStr
  loc_BE8EFE: CVarBoolI2 var_B0
  loc_BE8F02: FLdRfVar var_108
  loc_BE8F05: ImpAdCallFPR4  = IIf(, , )
  loc_BE8F0A: FLdRfVar var_108
  loc_BE8F0D: CStrVarTmp
  loc_BE8F0E: FStStr var_94
  loc_BE8F11: FFreeStr var_DC = "": var_E4 = ""
  loc_BE8F1A: FFreeAd var_C4 = ""
  loc_BE8F21: FFreeVar var_B0 = "": var_D8 = "": var_F8 = ""
  loc_BE8F2C: FLdPr Me
  loc_BE8F2F: VCallAd Control_ID_CodiNopeMsk
  loc_BE8F32: FStAdFunc var_C4
  loc_BE8F35: FLdPr var_C4
  loc_BE8F38: LateIdLdVar var_D8 DispID_0 0
  loc_BE8F3F: PopAd
  loc_BE8F41: FLdPr Me
  loc_BE8F44: VCallAd Control_ID_CodiNopeMsk
  loc_BE8F47: FStAdFunc var_E0
  loc_BE8F4A: FLdPr var_E0
  loc_BE8F4D: LateIdLdVar var_F8 DispID_0 0
  loc_BE8F54: PopAd
  loc_BE8F56: LitVarStr var_C0, vbNullString
  loc_BE8F5B: FStVarCopyObj var_138
  loc_BE8F5E: FLdRfVar var_138
  loc_BE8F61: LitStr " AND oc.CodiNope = "
  loc_BE8F64: FLdRfVar var_F8
  loc_BE8F67: CStrVarTmp
  loc_BE8F68: FStStrNoPop var_E4
  loc_BE8F6B: ConcatStr
  loc_BE8F6C: CVarStr var_108
  loc_BE8F6F: FLdRfVar var_D8
  loc_BE8F72: CStrVarTmp
  loc_BE8F73: FStStrNoPop var_DC
  loc_BE8F76: LitStr vbNullString
  loc_BE8F79: NeStr
  loc_BE8F7B: CVarBoolI2 var_B0
  loc_BE8F7F: FLdRfVar var_168
  loc_BE8F82: ImpAdCallFPR4  = IIf(, , )
  loc_BE8F87: FLdRfVar var_168
  loc_BE8F8A: CStrVarTmp
  loc_BE8F8B: FStStr var_98
  loc_BE8F8E: FFreeStr var_DC = ""
  loc_BE8F95: FFreeAd var_C4 = ""
  loc_BE8F9C: FFreeVar var_D8 = "": var_F8 = "": var_B0 = "": var_108 = "": var_138 = ""
  loc_BE8FAB: ILdRf var_98
  loc_BE8FAE: LitStr vbNullString
  loc_BE8FB1: NeStr
  loc_BE8FB3: BranchF loc_BE8FC0
  loc_BE8FB6: LitStr vbNullString
  loc_BE8FB9: FLdPr Me
  loc_BE8FBC: MemStStrCopy
  loc_BE8FC0: FLdPr Me
  loc_BE8FC3: VCallAd Control_ID_CodiOrgaMsk
  loc_BE8FC6: FStAdFunc var_C4
  loc_BE8FC9: FLdPr var_C4
  loc_BE8FCC: LateIdLdVar var_D8 DispID_22 0
  loc_BE8FD3: PopAd
  loc_BE8FD5: FLdPr Me
  loc_BE8FD8: VCallAd Control_ID_CodiOrgaMsk
  loc_BE8FDB: FStAdFunc var_E0
  loc_BE8FDE: FLdPr var_E0
  loc_BE8FE1: LateIdLdVar var_F8 DispID_22 0
  loc_BE8FE8: PopAd
  loc_BE8FEA: LitVarStr var_C0, vbNullString
  loc_BE8FEF: FStVarCopyObj var_138
  loc_BE8FF2: FLdRfVar var_138
  loc_BE8FF5: LitStr " AND oc.CodiOrga = '"
  loc_BE8FF8: FLdRfVar var_F8
  loc_BE8FFB: CStrVarTmp
  loc_BE8FFC: FStStrNoPop var_E4
  loc_BE8FFF: ConcatStr
  loc_BE9000: FStStrNoPop var_E8
  loc_BE9003: LitStr "'"
  loc_BE9006: ConcatStr
  loc_BE9007: CVarStr var_108
  loc_BE900A: FLdRfVar var_D8
  loc_BE900D: CStrVarTmp
  loc_BE900E: FStStrNoPop var_DC
  loc_BE9011: LitStr vbNullString
  loc_BE9014: NeStr
  loc_BE9016: CVarBoolI2 var_B0
  loc_BE901A: FLdRfVar var_168
  loc_BE901D: ImpAdCallFPR4  = IIf(, , )
  loc_BE9022: FLdRfVar var_168
  loc_BE9025: CStrVarTmp
  loc_BE9026: FStStr var_A0
  loc_BE9029: FFreeStr var_DC = "": var_E4 = ""
  loc_BE9032: FFreeAd var_C4 = ""
  loc_BE9039: FFreeVar var_D8 = "": var_F8 = "": var_B0 = "": var_108 = "": var_138 = ""
  loc_BE9048: ILdRf var_8C
  loc_BE904B: LitStr vbNullString
  loc_BE904E: NeStr
  loc_BE9050: BranchF loc_BE905D
  loc_BE9053: LitStr vbNullString
  loc_BE9056: FLdPr Me
  loc_BE9059: MemStStrCopy
  loc_BE905D: ILdRf var_94
  loc_BE9060: LitStr vbNullString
  loc_BE9063: NeStr
  loc_BE9065: BranchF loc_BE9072
  loc_BE9068: LitStr vbNullString
  loc_BE906B: FLdPr Me
  loc_BE906E: MemStStrCopy
  loc_BE9072: ILdRf var_98
  loc_BE9075: LitStr vbNullString
  loc_BE9078: NeStr
  loc_BE907A: BranchF loc_BE9087
  loc_BE907D: LitStr vbNullString
  loc_BE9080: FLdPr Me
  loc_BE9083: MemStStrCopy
  loc_BE9087: LitStr "Municipalidad de Guaymallén"
  loc_BE908A: FStStrCopy var_17C
  loc_BE908D: ILdRf var_17C
  loc_BE9090: LitStr "Municipalidad de Rivadavia"
  loc_BE9093: EqStr
  loc_BE9095: BranchT loc_BE90AE
  loc_BE9098: ILdRf var_17C
  loc_BE909B: LitStr "Municipalidad de Tunuyán"
  loc_BE909E: EqStr
  loc_BE90A0: BranchT loc_BE90AE
  loc_BE90A3: ILdRf var_17C
  loc_BE90A6: LitStr "Municipalidad de Guaymallén"
  loc_BE90A9: EqStr
  loc_BE90AB: BranchF loc_BE90B7
  loc_BE90AE: LitStr vbNullString
  loc_BE90B1: FStStrCopy var_9C
  loc_BE90B4: Branch loc_BE90BD
  loc_BE90B7: LitStr " HAVING CantItem = CantItemImpu"
  loc_BE90BA: FStStrCopy var_9C
  loc_BE90BD: FLdPr Me
  loc_BE90C0: VCallAd Control_ID_mskDesde
  loc_BE90C3: FStAdFunc var_E0
  loc_BE90C6: FLdPr var_E0
  loc_BE90C9: LateIdLdVar var_D8 DispID_15 0
  loc_BE90D0: PopAd
  loc_BE90D2: FLdPr Me
  loc_BE90D5: VCallAd Control_ID_mskHasta
  loc_BE90D8: FStAdFunc var_1D8
  loc_BE90DB: FLdPr var_1D8
  loc_BE90DE: LateIdLdVar var_138 DispID_15 0
  loc_BE90E5: PopAd
  loc_BE90E7: LitStr "SELECT IF(oxu.PeriInfo IS NULL,'No','Si') Mostrar, Count(CodiItco) CantItem, Sum(If(IdImpu>0||(IdImpu=0&&itc.PeriItco>0),1,0)) CantItemImpu, oc.CodiOrco, oc.CodiOrga, oc.DetaOrco, oc.CodiNope, oc.IdCoti, oc.CodiTico, oc.ExpeImpu, ExpeProv, FactProv, oc.FechOrco, oc.FenoOrco, oc.FeanOrco, oc.BajaMoti, oc.AltaUsua, DetaOrga, DetaTico"
  loc_BE90EA: LitStr ", CAST(IF(Count(CodiItco)=Sum(If(IdImpu>0||(IdImpu=0&&itc.PeriItco>0),1,0)),oc.CucuPers,'') AS CHAR) CucuPers"
  loc_BE90ED: ConcatStr
  loc_BE90EE: FStStrNoPop var_DC
  loc_BE90F1: LitStr ", IF(Count(CodiItco)=Sum(If(IdImpu>0||(IdImpu=0&&itc.PeriItco>0),1,0)),DetaProv,'') DetaProv"
  loc_BE90F4: ConcatStr
  loc_BE90F5: FStStrNoPop var_E4
  loc_BE90F8: LitStr ", IF(Count(CodiItco)=Sum(If(IdImpu>0||(IdImpu=0&&itc.PeriItco>0),1,0)),pp.DecrPers,'') DecrPers"
  loc_BE90FB: ConcatStr
  loc_BE90FC: FStStrNoPop var_E8
  loc_BE90FF: LitStr ", IF(Count(CodiItco)=Sum(If(IdImpu>0||(IdImpu=0&&itc.PeriItco>0),1,0)),pp.TelePers,'') TelePers"
  loc_BE9102: ConcatStr
  loc_BE9103: FStStrNoPop var_180
  loc_BE9106: LitStr ", persona_firma.DetaPers, PlenCoti, AlivaOrco, SelloOrco"
  loc_BE9109: ConcatStr
  loc_BE910A: FStStrNoPop var_184
  loc_BE910D: LitStr ", np.IdUbfi, np.DienNope"
  loc_BE9110: ConcatStr
  loc_BE9111: FStStrNoPop var_188
  loc_BE9114: LitStr " FROM ordencompra oc"
  loc_BE9117: ConcatStr
  loc_BE9118: FStStrNoPop var_18C
  loc_BE911B: LitStr " LEFT JOIN orgaxusua oxu ON oxu.PeriInfo = oc.PeriInfo AND oxu.CodiOrga = oc.CodiOrga AND oxu.CodiUsua = '"
  loc_BE911E: ConcatStr
  loc_BE911F: FStStrNoPop var_190
  loc_BE9122: ImpAdLdI4 MemVar_C3D03C
  loc_BE9125: ConcatStr
  loc_BE9126: FStStrNoPop var_194
  loc_BE9129: LitStr "'"
  loc_BE912C: ConcatStr
  loc_BE912D: FStStrNoPop var_198
  loc_BE9130: LitStr " INNER JOIN notapedido np ON np.PeriInfo = oc.PeriInfo AND np.CodiNope = oc.CodiNope"
  loc_BE9133: ConcatStr
  loc_BE9134: FStStrNoPop var_19C
  loc_BE9137: LitStr " LEFT JOIN ubicfisica uf ON uf.IdUbfi = np.IdUbfi"
  loc_BE913A: ConcatStr
  loc_BE913B: FStStrNoPop var_1A0
  loc_BE913E: LitStr " INNER JOIN cotizacion ct ON ct.IdCoti = oc.IdCoti"
  loc_BE9141: ConcatStr
  loc_BE9142: FStStrNoPop var_1A4
  loc_BE9145: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = oc.PeriInfo AND o.CodiOrga = oc.CodiOrga"
  loc_BE9148: ConcatStr
  loc_BE9149: FStStrNoPop var_1A8
  loc_BE914C: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = oc.CodiTico"
  loc_BE914F: ConcatStr
  loc_BE9150: FStStrNoPop var_1AC
  loc_BE9153: LitStr " INNER JOIN proveedor p ON p.CucuPers = oc.CucuPers"
  loc_BE9156: ConcatStr
  loc_BE9157: FStStrNoPop var_1B0
  loc_BE915A: LitStr " INNER JOIN infogov.persona pp ON pp.CucuPers = oc.CucuPers"
  loc_BE915D: ConcatStr
  loc_BE915E: FStStrNoPop var_1B4
  loc_BE9161: LitStr " LEFT JOIN infogov.persona persona_firma ON persona_firma.CucuPers = tc.CucuPers AND tc.CucuPers > 0"
  loc_BE9164: ConcatStr
  loc_BE9165: FStStrNoPop var_1B8
  loc_BE9168: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco"
  loc_BE916B: ConcatStr
  loc_BE916C: FStStrNoPop var_1BC
  loc_BE916F: LitStr " WHERE oc.PeriInfo = "
  loc_BE9172: ConcatStr
  loc_BE9173: FStStrNoPop var_1C4
  loc_BE9176: FLdRfVar var_1C0
  loc_BE9179: FLdPr Me
  loc_BE917C: VCallAd Control_ID_cboPeriodo
  loc_BE917F: FStAdFunc var_C4
  loc_BE9182: FLdPr var_C4
  loc_BE9185:  = Me.Text
  loc_BE918A: ILdRf var_1C0
  loc_BE918D: ConcatStr
  loc_BE918E: FStStrNoPop var_1C8
  loc_BE9191: LitStr " AND oc.FenoOrco BETWEEN "
  loc_BE9194: ConcatStr
  loc_BE9195: FStStrNoPop var_1CC
  loc_BE9198: LitI4 1
  loc_BE919D: LitI4 1
  loc_BE91A2: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_BE91A7: FStVarCopyObj var_108
  loc_BE91AA: FLdRfVar var_108
  loc_BE91AD: FLdRfVar var_D8
  loc_BE91B0: CStrVarTmp
  loc_BE91B1: CVarStr var_F8
  loc_BE91B4: ImpAdCallI2 Format$(, )
  loc_BE91B9: FStStrNoPop var_1D0
  loc_BE91BC: ConcatStr
  loc_BE91BD: FStStrNoPop var_1D4
  loc_BE91C0: LitStr " AND "
  loc_BE91C3: ConcatStr
  loc_BE91C4: FStStrNoPop var_1DC
  loc_BE91C7: LitI4 1
  loc_BE91CC: LitI4 1
  loc_BE91D1: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_BE91D6: FStVarCopyObj var_178
  loc_BE91D9: FLdRfVar var_178
  loc_BE91DC: FLdRfVar var_138
  loc_BE91DF: CStrVarTmp
  loc_BE91E0: CVarStr var_168
  loc_BE91E3: ImpAdCallI2 Format$(, )
  loc_BE91E8: FStStrNoPop var_1E0
  loc_BE91EB: ConcatStr
  loc_BE91EC: FStStrNoPop var_1E4
  loc_BE91EF: FLdPr Me
  loc_BE91F2: MemLdStr global_124
  loc_BE91F5: ConcatStr
  loc_BE91F6: FStStrNoPop var_1E8
  loc_BE91F9: ILdRf var_8C
  loc_BE91FC: ConcatStr
  loc_BE91FD: FStStrNoPop var_1EC
  loc_BE9200: ILdRf var_90
  loc_BE9203: ConcatStr
  loc_BE9204: FStStrNoPop var_1F0
  loc_BE9207: ILdRf var_94
  loc_BE920A: ConcatStr
  loc_BE920B: FStStrNoPop var_1F4
  loc_BE920E: ILdRf var_98
  loc_BE9211: ConcatStr
  loc_BE9212: FStStrNoPop var_1F8
  loc_BE9215: ILdRf var_A0
  loc_BE9218: ConcatStr
  loc_BE9219: FStStrNoPop var_1FC
  loc_BE921C: LitStr " GROUP BY oc.PeriInfo, oc.CodiOrco"
  loc_BE921F: ConcatStr
  loc_BE9220: FStStrNoPop var_200
  loc_BE9223: ILdRf var_9C
  loc_BE9226: ConcatStr
  loc_BE9227: FStStrNoPop var_204
  loc_BE922A: LitStr " ORDER BY oc.CodiOrco;"
  loc_BE922D: ConcatStr
  loc_BE922E: FStStrNoPop var_208
  loc_BE9231: FLdPr Me
  loc_BE9234: MemLdRfVar from_stack_1.global_88
  loc_BE9237: NewIfNullPr clsordencompra
  loc_BE923A: Call clsordencompra.RedefineRS(from_stack_1v)
  loc_BE923F: FFreeStr var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_DC = "": var_E4 = "": var_E8 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C4 = "": var_1C0 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_BE928C: FFreeAd var_C4 = "": var_E0 = ""
  loc_BE9295: FFreeVar var_D8 = "": var_F8 = "": var_108 = "": var_138 = "": var_168 = ""
  loc_BE92A4: FLdRfVar var_20C
  loc_BE92A7: FLdPr Me
  loc_BE92AA: MemLdRfVar from_stack_1.global_88
  loc_BE92AD: NewIfNullPr clsordencompra
  loc_BE92B0: from_stack_1 = clsordencompra.RecordCount
  loc_BE92B5: ILdRf var_20C
  loc_BE92B8: LitI4 0
  loc_BE92BD: EqI4
  loc_BE92BE: BranchF loc_BE92D4
  loc_BE92C1: LitI4 0
  loc_BE92C6: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BE92C9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE92CE: Branch loc_BEA6BA
  loc_BE92D1: Branch loc_BE945B
  loc_BE92D4: FLdPr Me
  loc_BE92D7: MemLdRfVar from_stack_1.global_88
  loc_BE92DA: NewIfNullPr clsordencompra
  loc_BE92DD: Call clsordencompra.MoveFirst()
  loc_BE92E2: FLdRfVar var_C6
  loc_BE92E5: FLdPr Me
  loc_BE92E8: MemLdRfVar from_stack_1.global_88
  loc_BE92EB: NewIfNullPr clsordencompra
  loc_BE92EE: from_stack_1 = clsordencompra.EOF
  loc_BE92F3: FLdI2 var_C6
  loc_BE92F6: NotI4
  loc_BE92F7: BranchF loc_BE93BC
  loc_BE92FA: FLdRfVar var_D8
  loc_BE92FD: FLdRfVar var_1D8
  loc_BE9300: LitVarStr var_B0, "Mostrar"
  loc_BE9305: PopAdLdVar
  loc_BE9306: FLdRfVar var_E0
  loc_BE9309: FLdRfVar var_C4
  loc_BE930C: FLdPr Me
  loc_BE930F: MemLdRfVar from_stack_1.global_88
  loc_BE9312: NewIfNullPr clsordencompra
  loc_BE9315: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE931A: FLdPr var_C4
  loc_BE931D:  = Me.Fields
  loc_BE9322: FLdPr var_E0
  loc_BE9325: from_stack_2 = Me.Item(from_stack_1)
  loc_BE932A: FLdPr var_1D8
  loc_BE932D:  = Me.Value
  loc_BE9332: FLdRfVar var_D8
  loc_BE9335: LitVarStr var_C0, "No"
  loc_BE933A: HardType
  loc_BE933B: EqVarBool
  loc_BE933D: FFreeAd var_C4 = "": var_E0 = ""
  loc_BE9346: FFree1Var var_D8 = ""
  loc_BE9349: BranchF loc_BE93AB
  loc_BE934C: ILdRf var_210
  loc_BE934F: LitStr " "
  loc_BE9352: ConcatStr
  loc_BE9353: CVarStr var_F8
  loc_BE9356: FLdRfVar var_D8
  loc_BE9359: FLdRfVar var_1D8
  loc_BE935C: LitVarStr var_B0, "CodiOrco"
  loc_BE9361: PopAdLdVar
  loc_BE9362: FLdRfVar var_E0
  loc_BE9365: FLdRfVar var_C4
  loc_BE9368: FLdPr Me
  loc_BE936B: MemLdRfVar from_stack_1.global_88
  loc_BE936E: NewIfNullPr clsordencompra
  loc_BE9371: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9376: FLdPr var_C4
  loc_BE9379:  = Me.Fields
  loc_BE937E: FLdPr var_E0
  loc_BE9381: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9386: FLdPr var_1D8
  loc_BE9389:  = Me.Value
  loc_BE938E: FLdRfVar var_D8
  loc_BE9391: ConcatVar var_108
  loc_BE9395: CStrVarTmp
  loc_BE9396: FStStr var_210
  loc_BE9399: FFreeAd var_C4 = "": var_E0 = ""
  loc_BE93A2: FFreeVar var_F8 = "": var_D8 = ""
  loc_BE93AB: FLdPr Me
  loc_BE93AE: MemLdRfVar from_stack_1.global_88
  loc_BE93B1: NewIfNullPr clsordencompra
  loc_BE93B4: Call clsordencompra.MoveSiguiente()
  loc_BE93B9: Branch loc_BE92E2
  loc_BE93BC: ILdRf var_210
  loc_BE93BF: LitStr vbNullString
  loc_BE93C2: NeStr
  loc_BE93C4: BranchF loc_BE945B
  loc_BE93C7: FLdRfVar var_210
  loc_BE93CA: CVarRef
  loc_BE93CF: FLdRfVar var_D8
  loc_BE93D2: ImpAdCallFPR4  = Trim()
  loc_BE93D7: LitI4 0
  loc_BE93DC: LitI4 -1
  loc_BE93E1: LitI4 1
  loc_BE93E6: LitStr ", "
  loc_BE93E9: LitStr " "
  loc_BE93EC: FLdRfVar var_D8
  loc_BE93EF: CStrVarVal var_DC
  loc_BE93F3: ImpAdCallI2 Replace(, , , , , )
  loc_BE93F8: FStStr var_210
  loc_BE93FB: FFree1Str var_DC
  loc_BE93FE: FFree1Var var_D8 = ""
  loc_BE9401: LitStr "Su Usuario no tiene Permiso para ver las órdenes de compra: "
  loc_BE9404: ILdRf var_210
  loc_BE9407: ConcatStr
  loc_BE9408: CVarStr var_F8
  loc_BE940B: LitStr "Su Usuario no tiene Permiso para ver la OC: "
  loc_BE940E: ILdRf var_210
  loc_BE9411: ConcatStr
  loc_BE9412: CVarStr var_D8
  loc_BE9415: LitI4 1
  loc_BE941A: ILdRf var_210
  loc_BE941D: LitStr ","
  loc_BE9420: LitI4 0
  loc_BE9425: FnInStr4
  loc_BE9427: LitI4 0
  loc_BE942C: EqI4
  loc_BE942D: CVarBoolI2 var_B0
  loc_BE9431: FLdRfVar var_108
  loc_BE9434: ImpAdCallFPR4  = IIf(, , )
  loc_BE9439: LitI4 0
  loc_BE943E: FLdRfVar var_108
  loc_BE9441: CStrVarVal var_DC
  loc_BE9445: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE944A: FFree1Str var_DC
  loc_BE944D: FFreeVar var_B0 = "": var_D8 = "": var_F8 = ""
  loc_BE9458: Branch loc_BEA6BA
  loc_BE945B: LitI4 0
  loc_BE9460: FLdRfVar var_20C
  loc_BE9463: FLdPr Me
  loc_BE9466: MemLdRfVar from_stack_1.global_88
  loc_BE9469: NewIfNullPr clsordencompra
  loc_BE946C: from_stack_1 = clsordencompra.RecordCount
  loc_BE9471: ILdRf var_20C
  loc_BE9474: FLdPr Me
  loc_BE9477: MemLdRfVar from_stack_1.global_104
  loc_BE947A: Redim
  loc_BE9484: FLdPr Me
  loc_BE9487: MemLdRfVar from_stack_1.global_88
  loc_BE948A: NewIfNullPr clsordencompra
  loc_BE948D: Call clsordencompra.MoveFirst()
  loc_BE9492: LitI4 1
  loc_BE9497: FLdPr Me
  loc_BE949A: MemLdRfVar from_stack_1.global_108
  loc_BE949D: FLdPr Me
  loc_BE94A0: MemLdStr global_104
  loc_BE94A3: LitI2_Byte 1
  loc_BE94A5: FnUBound
  loc_BE94A7: ForI4 var_218
  loc_BE94AD: FLdPr Me
  loc_BE94B0: MemLdRfVar from_stack_1.global_88
  loc_BE94B3: NewIfNullAd
  loc_BE94B6: FStAd var_21C 
  loc_BE94BA: FLdRfVar var_1D8
  loc_BE94BD: LitVarStr var_B0, "CodiOrco"
  loc_BE94C2: PopAdLdVar
  loc_BE94C3: FLdRfVar var_E0
  loc_BE94C6: FLdRfVar var_C4
  loc_BE94C9: FLdPr var_21C
  loc_BE94CC: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE94D1: FLdPr var_C4
  loc_BE94D4:  = Me.Fields
  loc_BE94D9: FLdPr var_E0
  loc_BE94DC: from_stack_2 = Me.Item(from_stack_1)
  loc_BE94E1: LitI2_Byte 0
  loc_BE94E3: LitVar_Missing var_F8
  loc_BE94E6: LitI2_Byte 0
  loc_BE94E8: FLdZeroAd var_1D8
  loc_BE94EB: CVarAd
  loc_BE94EF: PopAdLdVar
  loc_BE94F0: FLdPr Me
  loc_BE94F3: MemLdStr global_108
  loc_BE94F6: FLdPr Me
  loc_BE94F9: MemLdStr global_104
  loc_BE94FC: AryLock
  loc_BE94FF: Ary1LdPr
  loc_BE9500: MemLdRfVar from_stack_1.global_0
  loc_BE9503: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9508: AryUnlock
  loc_BE950B: FFreeAd var_C4 = ""
  loc_BE9512: FFreeVar var_D8 = ""
  loc_BE9519: FLdRfVar var_1D8
  loc_BE951C: LitVarStr var_B0, "DetaOrco"
  loc_BE9521: PopAdLdVar
  loc_BE9522: FLdRfVar var_E0
  loc_BE9525: FLdRfVar var_C4
  loc_BE9528: FLdPr var_21C
  loc_BE952B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9530: FLdPr var_C4
  loc_BE9533:  = Me.Fields
  loc_BE9538: FLdPr var_E0
  loc_BE953B: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9540: LitI2_Byte 0
  loc_BE9542: LitVar_Missing var_F8
  loc_BE9545: LitI2_Byte 0
  loc_BE9547: FLdZeroAd var_1D8
  loc_BE954A: CVarAd
  loc_BE954E: PopAdLdVar
  loc_BE954F: FLdPr Me
  loc_BE9552: MemLdStr global_108
  loc_BE9555: FLdPr Me
  loc_BE9558: MemLdStr global_104
  loc_BE955B: AryLock
  loc_BE955E: Ary1LdPr
  loc_BE955F: MemLdRfVar from_stack_1.global_4
  loc_BE9562: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9567: AryUnlock
  loc_BE956A: FFreeAd var_C4 = ""
  loc_BE9571: FFreeVar var_D8 = ""
  loc_BE9578: FLdRfVar var_1D8
  loc_BE957B: LitVarStr var_B0, "CodiTico"
  loc_BE9580: PopAdLdVar
  loc_BE9581: FLdRfVar var_E0
  loc_BE9584: FLdRfVar var_C4
  loc_BE9587: FLdPr var_21C
  loc_BE958A: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE958F: FLdPr var_C4
  loc_BE9592:  = Me.Fields
  loc_BE9597: FLdPr var_E0
  loc_BE959A: from_stack_2 = Me.Item(from_stack_1)
  loc_BE959F: LitI2_Byte 0
  loc_BE95A1: LitVar_Missing var_F8
  loc_BE95A4: LitI2_Byte 0
  loc_BE95A6: FLdZeroAd var_1D8
  loc_BE95A9: CVarAd
  loc_BE95AD: PopAdLdVar
  loc_BE95AE: FLdPr Me
  loc_BE95B1: MemLdStr global_108
  loc_BE95B4: FLdPr Me
  loc_BE95B7: MemLdStr global_104
  loc_BE95BA: AryLock
  loc_BE95BD: Ary1LdPr
  loc_BE95BE: MemLdRfVar from_stack_1.global_24
  loc_BE95C1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE95C6: AryUnlock
  loc_BE95C9: FFreeAd var_C4 = ""
  loc_BE95D0: FFreeVar var_D8 = ""
  loc_BE95D7: FLdRfVar var_1D8
  loc_BE95DA: LitVarStr var_B0, "DetaTico"
  loc_BE95DF: PopAdLdVar
  loc_BE95E0: FLdRfVar var_E0
  loc_BE95E3: FLdRfVar var_C4
  loc_BE95E6: FLdPr var_21C
  loc_BE95E9: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE95EE: FLdPr var_C4
  loc_BE95F1:  = Me.Fields
  loc_BE95F6: FLdPr var_E0
  loc_BE95F9: from_stack_2 = Me.Item(from_stack_1)
  loc_BE95FE: LitI2_Byte 0
  loc_BE9600: LitVar_Missing var_F8
  loc_BE9603: LitI2_Byte 0
  loc_BE9605: FLdZeroAd var_1D8
  loc_BE9608: CVarAd
  loc_BE960C: PopAdLdVar
  loc_BE960D: FLdPr Me
  loc_BE9610: MemLdStr global_108
  loc_BE9613: FLdPr Me
  loc_BE9616: MemLdStr global_104
  loc_BE9619: AryLock
  loc_BE961C: Ary1LdPr
  loc_BE961D: MemLdRfVar from_stack_1.global_28
  loc_BE9620: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9625: AryUnlock
  loc_BE9628: FFreeAd var_C4 = ""
  loc_BE962F: FFreeVar var_D8 = ""
  loc_BE9636: FLdRfVar var_1D8
  loc_BE9639: LitVarStr var_B0, "CodiNope"
  loc_BE963E: PopAdLdVar
  loc_BE963F: FLdRfVar var_E0
  loc_BE9642: FLdRfVar var_C4
  loc_BE9645: FLdPr var_21C
  loc_BE9648: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE964D: FLdPr var_C4
  loc_BE9650:  = Me.Fields
  loc_BE9655: FLdPr var_E0
  loc_BE9658: from_stack_2 = Me.Item(from_stack_1)
  loc_BE965D: LitI2_Byte 0
  loc_BE965F: LitVar_Missing var_F8
  loc_BE9662: LitI2_Byte 0
  loc_BE9664: FLdZeroAd var_1D8
  loc_BE9667: CVarAd
  loc_BE966B: PopAdLdVar
  loc_BE966C: FLdPr Me
  loc_BE966F: MemLdStr global_108
  loc_BE9672: FLdPr Me
  loc_BE9675: MemLdStr global_104
  loc_BE9678: AryLock
  loc_BE967B: Ary1LdPr
  loc_BE967C: MemLdRfVar from_stack_1.global_8
  loc_BE967F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9684: AryUnlock
  loc_BE9687: FFreeAd var_C4 = ""
  loc_BE968E: FFreeVar var_D8 = ""
  loc_BE9695: FLdRfVar var_1D8
  loc_BE9698: LitVarStr var_B0, "IdCoti"
  loc_BE969D: PopAdLdVar
  loc_BE969E: FLdRfVar var_E0
  loc_BE96A1: FLdRfVar var_C4
  loc_BE96A4: FLdPr var_21C
  loc_BE96A7: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE96AC: FLdPr var_C4
  loc_BE96AF:  = Me.Fields
  loc_BE96B4: FLdPr var_E0
  loc_BE96B7: from_stack_2 = Me.Item(from_stack_1)
  loc_BE96BC: LitI2_Byte 0
  loc_BE96BE: LitVar_Missing var_F8
  loc_BE96C1: LitI2_Byte 0
  loc_BE96C3: FLdZeroAd var_1D8
  loc_BE96C6: CVarAd
  loc_BE96CA: PopAdLdVar
  loc_BE96CB: FLdPr Me
  loc_BE96CE: MemLdStr global_108
  loc_BE96D1: FLdPr Me
  loc_BE96D4: MemLdStr global_104
  loc_BE96D7: AryLock
  loc_BE96DA: Ary1LdPr
  loc_BE96DB: MemLdRfVar from_stack_1.global_12
  loc_BE96DE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE96E3: AryUnlock
  loc_BE96E6: FFreeAd var_C4 = ""
  loc_BE96ED: FFreeVar var_D8 = ""
  loc_BE96F4: FLdRfVar var_1D8
  loc_BE96F7: LitVarStr var_B0, "IdUbfi"
  loc_BE96FC: PopAdLdVar
  loc_BE96FD: FLdRfVar var_E0
  loc_BE9700: FLdRfVar var_C4
  loc_BE9703: FLdPr var_21C
  loc_BE9706: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE970B: FLdPr var_C4
  loc_BE970E:  = Me.Fields
  loc_BE9713: FLdPr var_E0
  loc_BE9716: from_stack_2 = Me.Item(from_stack_1)
  loc_BE971B: LitI2_Byte 0
  loc_BE971D: LitVar_Missing var_F8
  loc_BE9720: LitI2_Byte 0
  loc_BE9722: FLdZeroAd var_1D8
  loc_BE9725: CVarAd
  loc_BE9729: PopAdLdVar
  loc_BE972A: FLdPr Me
  loc_BE972D: MemLdStr global_108
  loc_BE9730: FLdPr Me
  loc_BE9733: MemLdStr global_104
  loc_BE9736: AryLock
  loc_BE9739: Ary1LdPr
  loc_BE973A: MemLdRfVar from_stack_1.global_16
  loc_BE973D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9742: AryUnlock
  loc_BE9745: FFreeAd var_C4 = ""
  loc_BE974C: FFreeVar var_D8 = ""
  loc_BE9753: FLdRfVar var_1D8
  loc_BE9756: LitVarStr var_B0, "DienNope"
  loc_BE975B: PopAdLdVar
  loc_BE975C: FLdRfVar var_E0
  loc_BE975F: FLdRfVar var_C4
  loc_BE9762: FLdPr var_21C
  loc_BE9765: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE976A: FLdPr var_C4
  loc_BE976D:  = Me.Fields
  loc_BE9772: FLdPr var_E0
  loc_BE9775: from_stack_2 = Me.Item(from_stack_1)
  loc_BE977A: LitI2_Byte 0
  loc_BE977C: LitVar_Missing var_F8
  loc_BE977F: LitI2_Byte 0
  loc_BE9781: FLdZeroAd var_1D8
  loc_BE9784: CVarAd
  loc_BE9788: PopAdLdVar
  loc_BE9789: FLdPr Me
  loc_BE978C: MemLdStr global_108
  loc_BE978F: FLdPr Me
  loc_BE9792: MemLdStr global_104
  loc_BE9795: AryLock
  loc_BE9798: Ary1LdPr
  loc_BE9799: MemLdRfVar from_stack_1.global_20
  loc_BE979C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE97A1: AryUnlock
  loc_BE97A4: FFreeAd var_C4 = ""
  loc_BE97AB: FFreeVar var_D8 = ""
  loc_BE97B2: FLdRfVar var_1D8
  loc_BE97B5: LitVarStr var_B0, "CodiOrga"
  loc_BE97BA: PopAdLdVar
  loc_BE97BB: FLdRfVar var_E0
  loc_BE97BE: FLdRfVar var_C4
  loc_BE97C1: FLdPr var_21C
  loc_BE97C4: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE97C9: FLdPr var_C4
  loc_BE97CC:  = Me.Fields
  loc_BE97D1: FLdPr var_E0
  loc_BE97D4: from_stack_2 = Me.Item(from_stack_1)
  loc_BE97D9: LitI2_Byte 0
  loc_BE97DB: LitVar_Missing var_F8
  loc_BE97DE: LitI2_Byte 0
  loc_BE97E0: FLdZeroAd var_1D8
  loc_BE97E3: CVarAd
  loc_BE97E7: PopAdLdVar
  loc_BE97E8: FLdPr Me
  loc_BE97EB: MemLdStr global_108
  loc_BE97EE: FLdPr Me
  loc_BE97F1: MemLdStr global_104
  loc_BE97F4: AryLock
  loc_BE97F7: Ary1LdPr
  loc_BE97F8: MemLdRfVar from_stack_1.global_32
  loc_BE97FB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9800: AryUnlock
  loc_BE9803: FFreeAd var_C4 = ""
  loc_BE980A: FFreeVar var_D8 = ""
  loc_BE9811: FLdRfVar var_1D8
  loc_BE9814: LitVarStr var_B0, "DetaOrga"
  loc_BE9819: PopAdLdVar
  loc_BE981A: FLdRfVar var_E0
  loc_BE981D: FLdRfVar var_C4
  loc_BE9820: FLdPr var_21C
  loc_BE9823: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9828: FLdPr var_C4
  loc_BE982B:  = Me.Fields
  loc_BE9830: FLdPr var_E0
  loc_BE9833: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9838: LitI2_Byte 0
  loc_BE983A: LitVar_Missing var_F8
  loc_BE983D: LitI2_Byte 0
  loc_BE983F: FLdZeroAd var_1D8
  loc_BE9842: CVarAd
  loc_BE9846: PopAdLdVar
  loc_BE9847: FLdPr Me
  loc_BE984A: MemLdStr global_108
  loc_BE984D: FLdPr Me
  loc_BE9850: MemLdStr global_104
  loc_BE9853: AryLock
  loc_BE9856: Ary1LdPr
  loc_BE9857: MemLdRfVar from_stack_1.global_36
  loc_BE985A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE985F: AryUnlock
  loc_BE9862: FFreeAd var_C4 = ""
  loc_BE9869: FFreeVar var_D8 = ""
  loc_BE9870: FLdRfVar var_1D8
  loc_BE9873: LitVarStr var_B0, "DetaPers"
  loc_BE9878: PopAdLdVar
  loc_BE9879: FLdRfVar var_E0
  loc_BE987C: FLdRfVar var_C4
  loc_BE987F: FLdPr var_21C
  loc_BE9882: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9887: FLdPr var_C4
  loc_BE988A:  = Me.Fields
  loc_BE988F: FLdPr var_E0
  loc_BE9892: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9897: LitI2_Byte 0
  loc_BE9899: LitVar_Missing var_F8
  loc_BE989C: LitI2_Byte 0
  loc_BE989E: FLdZeroAd var_1D8
  loc_BE98A1: CVarAd
  loc_BE98A5: PopAdLdVar
  loc_BE98A6: FLdPr Me
  loc_BE98A9: MemLdStr global_108
  loc_BE98AC: FLdPr Me
  loc_BE98AF: MemLdStr global_104
  loc_BE98B2: AryLock
  loc_BE98B5: Ary1LdPr
  loc_BE98B6: MemLdRfVar from_stack_1.global_40
  loc_BE98B9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE98BE: AryUnlock
  loc_BE98C1: FFreeAd var_C4 = ""
  loc_BE98C8: FFreeVar var_D8 = ""
  loc_BE98CF: FLdRfVar var_1D8
  loc_BE98D2: LitVarStr var_B0, "CucuPers"
  loc_BE98D7: PopAdLdVar
  loc_BE98D8: FLdRfVar var_E0
  loc_BE98DB: FLdRfVar var_C4
  loc_BE98DE: FLdPr var_21C
  loc_BE98E1: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE98E6: FLdPr var_C4
  loc_BE98E9:  = Me.Fields
  loc_BE98EE: FLdPr var_E0
  loc_BE98F1: from_stack_2 = Me.Item(from_stack_1)
  loc_BE98F6: LitI2_Byte 0
  loc_BE98F8: LitVar_Missing var_F8
  loc_BE98FB: LitI2_Byte 0
  loc_BE98FD: FLdZeroAd var_1D8
  loc_BE9900: CVarAd
  loc_BE9904: PopAdLdVar
  loc_BE9905: FLdPr Me
  loc_BE9908: MemLdStr global_108
  loc_BE990B: FLdPr Me
  loc_BE990E: MemLdStr global_104
  loc_BE9911: AryLock
  loc_BE9914: Ary1LdPr
  loc_BE9915: MemLdRfVar from_stack_1.global_44
  loc_BE9918: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE991D: AryUnlock
  loc_BE9920: FFreeAd var_C4 = ""
  loc_BE9927: FFreeVar var_D8 = ""
  loc_BE992E: FLdRfVar var_1D8
  loc_BE9931: LitVarStr var_B0, "DetaProv"
  loc_BE9936: PopAdLdVar
  loc_BE9937: FLdRfVar var_E0
  loc_BE993A: FLdRfVar var_C4
  loc_BE993D: FLdPr var_21C
  loc_BE9940: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9945: FLdPr var_C4
  loc_BE9948:  = Me.Fields
  loc_BE994D: FLdPr var_E0
  loc_BE9950: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9955: LitI2_Byte 0
  loc_BE9957: LitVar_Missing var_F8
  loc_BE995A: LitI2_Byte 0
  loc_BE995C: FLdZeroAd var_1D8
  loc_BE995F: CVarAd
  loc_BE9963: PopAdLdVar
  loc_BE9964: FLdPr Me
  loc_BE9967: MemLdStr global_108
  loc_BE996A: FLdPr Me
  loc_BE996D: MemLdStr global_104
  loc_BE9970: AryLock
  loc_BE9973: Ary1LdPr
  loc_BE9974: MemLdRfVar from_stack_1.global_48
  loc_BE9977: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE997C: AryUnlock
  loc_BE997F: FFreeAd var_C4 = ""
  loc_BE9986: FFreeVar var_D8 = ""
  loc_BE998D: FLdRfVar var_1D8
  loc_BE9990: LitVarStr var_B0, "DecrPers"
  loc_BE9995: PopAdLdVar
  loc_BE9996: FLdRfVar var_E0
  loc_BE9999: FLdRfVar var_C4
  loc_BE999C: FLdPr var_21C
  loc_BE999F: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE99A4: FLdPr var_C4
  loc_BE99A7:  = Me.Fields
  loc_BE99AC: FLdPr var_E0
  loc_BE99AF: from_stack_2 = Me.Item(from_stack_1)
  loc_BE99B4: LitI2_Byte 0
  loc_BE99B6: LitVar_Missing var_F8
  loc_BE99B9: LitI2_Byte 0
  loc_BE99BB: FLdZeroAd var_1D8
  loc_BE99BE: CVarAd
  loc_BE99C2: PopAdLdVar
  loc_BE99C3: FLdPr Me
  loc_BE99C6: MemLdStr global_108
  loc_BE99C9: FLdPr Me
  loc_BE99CC: MemLdStr global_104
  loc_BE99CF: AryLock
  loc_BE99D2: Ary1LdPr
  loc_BE99D3: MemLdRfVar from_stack_1.htmFile
  loc_BE99D6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE99DB: AryUnlock
  loc_BE99DE: FFreeAd var_C4 = ""
  loc_BE99E5: FFreeVar var_D8 = ""
  loc_BE99EC: FLdRfVar var_1D8
  loc_BE99EF: LitVarStr var_B0, "TelePers"
  loc_BE99F4: PopAdLdVar
  loc_BE99F5: FLdRfVar var_E0
  loc_BE99F8: FLdRfVar var_C4
  loc_BE99FB: FLdPr var_21C
  loc_BE99FE: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9A03: FLdPr var_C4
  loc_BE9A06:  = Me.Fields
  loc_BE9A0B: FLdPr var_E0
  loc_BE9A0E: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9A13: LitI2_Byte 0
  loc_BE9A15: LitVar_Missing var_F8
  loc_BE9A18: LitI2_Byte 0
  loc_BE9A1A: FLdZeroAd var_1D8
  loc_BE9A1D: CVarAd
  loc_BE9A21: PopAdLdVar
  loc_BE9A22: FLdPr Me
  loc_BE9A25: MemLdStr global_108
  loc_BE9A28: FLdPr Me
  loc_BE9A2B: MemLdStr global_104
  loc_BE9A2E: AryLock
  loc_BE9A31: Ary1LdPr
  loc_BE9A32: MemLdRfVar from_stack_1.global_56
  loc_BE9A35: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9A3A: AryUnlock
  loc_BE9A3D: FFreeAd var_C4 = ""
  loc_BE9A44: FFreeVar var_D8 = ""
  loc_BE9A4B: FLdRfVar var_1D8
  loc_BE9A4E: LitVarStr var_B0, "ExpeImpu"
  loc_BE9A53: PopAdLdVar
  loc_BE9A54: FLdRfVar var_E0
  loc_BE9A57: FLdRfVar var_C4
  loc_BE9A5A: FLdPr var_21C
  loc_BE9A5D: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9A62: FLdPr var_C4
  loc_BE9A65:  = Me.Fields
  loc_BE9A6A: FLdPr var_E0
  loc_BE9A6D: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9A72: LitI2_Byte 0
  loc_BE9A74: LitVar_Missing var_F8
  loc_BE9A77: LitI2_Byte 0
  loc_BE9A79: FLdZeroAd var_1D8
  loc_BE9A7C: CVarAd
  loc_BE9A80: PopAdLdVar
  loc_BE9A81: FLdPr Me
  loc_BE9A84: MemLdStr global_108
  loc_BE9A87: FLdPr Me
  loc_BE9A8A: MemLdStr global_104
  loc_BE9A8D: AryLock
  loc_BE9A90: Ary1LdPr
  loc_BE9A91: MemLdRfVar from_stack_1.global_60
  loc_BE9A94: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9A99: AryUnlock
  loc_BE9A9C: FFreeAd var_C4 = ""
  loc_BE9AA3: FFreeVar var_D8 = ""
  loc_BE9AAA: FLdRfVar var_1D8
  loc_BE9AAD: LitVarStr var_B0, "ExpeProv"
  loc_BE9AB2: PopAdLdVar
  loc_BE9AB3: FLdRfVar var_E0
  loc_BE9AB6: FLdRfVar var_C4
  loc_BE9AB9: FLdPr var_21C
  loc_BE9ABC: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9AC1: FLdPr var_C4
  loc_BE9AC4:  = Me.Fields
  loc_BE9AC9: FLdPr var_E0
  loc_BE9ACC: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9AD1: LitI2_Byte 0
  loc_BE9AD3: LitVar_Missing var_F8
  loc_BE9AD6: LitI2_Byte 0
  loc_BE9AD8: FLdZeroAd var_1D8
  loc_BE9ADB: CVarAd
  loc_BE9ADF: PopAdLdVar
  loc_BE9AE0: FLdPr Me
  loc_BE9AE3: MemLdStr global_108
  loc_BE9AE6: FLdPr Me
  loc_BE9AE9: MemLdStr global_104
  loc_BE9AEC: AryLock
  loc_BE9AEF: Ary1LdPr
  loc_BE9AF0: MemLdRfVar from_stack_1.global_64
  loc_BE9AF3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9AF8: AryUnlock
  loc_BE9AFB: FFreeAd var_C4 = ""
  loc_BE9B02: FFreeVar var_D8 = ""
  loc_BE9B09: FLdRfVar var_1D8
  loc_BE9B0C: LitVarStr var_B0, "FactProv"
  loc_BE9B11: PopAdLdVar
  loc_BE9B12: FLdRfVar var_E0
  loc_BE9B15: FLdRfVar var_C4
  loc_BE9B18: FLdPr var_21C
  loc_BE9B1B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9B20: FLdPr var_C4
  loc_BE9B23:  = Me.Fields
  loc_BE9B28: FLdPr var_E0
  loc_BE9B2B: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9B30: LitI2_Byte 0
  loc_BE9B32: LitVar_Missing var_F8
  loc_BE9B35: LitI2_Byte 0
  loc_BE9B37: FLdZeroAd var_1D8
  loc_BE9B3A: CVarAd
  loc_BE9B3E: PopAdLdVar
  loc_BE9B3F: FLdPr Me
  loc_BE9B42: MemLdStr global_108
  loc_BE9B45: FLdPr Me
  loc_BE9B48: MemLdStr global_104
  loc_BE9B4B: AryLock
  loc_BE9B4E: Ary1LdPr
  loc_BE9B4F: MemLdRfVar from_stack_1.bGenerado
  loc_BE9B52: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9B57: AryUnlock
  loc_BE9B5A: FFreeAd var_C4 = ""
  loc_BE9B61: FFreeVar var_D8 = ""
  loc_BE9B68: FLdRfVar var_1D8
  loc_BE9B6B: LitVarStr var_B0, "PlenCoti"
  loc_BE9B70: PopAdLdVar
  loc_BE9B71: FLdRfVar var_E0
  loc_BE9B74: FLdRfVar var_C4
  loc_BE9B77: FLdPr var_21C
  loc_BE9B7A: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9B7F: FLdPr var_C4
  loc_BE9B82:  = Me.Fields
  loc_BE9B87: FLdPr var_E0
  loc_BE9B8A: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9B8F: LitI2_Byte 0
  loc_BE9B91: LitVar_Missing var_F8
  loc_BE9B94: LitI2_Byte 0
  loc_BE9B96: FLdZeroAd var_1D8
  loc_BE9B99: CVarAd
  loc_BE9B9D: PopAdLdVar
  loc_BE9B9E: FLdPr Me
  loc_BE9BA1: MemLdStr global_108
  loc_BE9BA4: FLdPr Me
  loc_BE9BA7: MemLdStr global_104
  loc_BE9BAA: AryLock
  loc_BE9BAD: Ary1LdPr
  loc_BE9BAE: MemLdRfVar from_stack_1.global_72
  loc_BE9BB1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9BB6: AryUnlock
  loc_BE9BB9: FFreeAd var_C4 = ""
  loc_BE9BC0: FFreeVar var_D8 = ""
  loc_BE9BC7: FLdRfVar var_1D8
  loc_BE9BCA: LitVarStr var_B0, "FechOrco"
  loc_BE9BCF: PopAdLdVar
  loc_BE9BD0: FLdRfVar var_E0
  loc_BE9BD3: FLdRfVar var_C4
  loc_BE9BD6: FLdPr var_21C
  loc_BE9BD9: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9BDE: FLdPr var_C4
  loc_BE9BE1:  = Me.Fields
  loc_BE9BE6: FLdPr var_E0
  loc_BE9BE9: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9BEE: LitI2_Byte 0
  loc_BE9BF0: LitVar_Missing var_F8
  loc_BE9BF3: LitI2_Byte 0
  loc_BE9BF5: FLdZeroAd var_1D8
  loc_BE9BF8: CVarAd
  loc_BE9BFC: PopAdLdVar
  loc_BE9BFD: FLdPr Me
  loc_BE9C00: MemLdStr global_108
  loc_BE9C03: FLdPr Me
  loc_BE9C06: MemLdStr global_104
  loc_BE9C09: AryLock
  loc_BE9C0C: Ary1LdPr
  loc_BE9C0D: MemLdRfVar from_stack_1.global_76
  loc_BE9C10: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9C15: AryUnlock
  loc_BE9C18: FFreeAd var_C4 = ""
  loc_BE9C1F: FFreeVar var_D8 = ""
  loc_BE9C26: FLdRfVar var_1D8
  loc_BE9C29: LitVarStr var_B0, "FenoOrco"
  loc_BE9C2E: PopAdLdVar
  loc_BE9C2F: FLdRfVar var_E0
  loc_BE9C32: FLdRfVar var_C4
  loc_BE9C35: FLdPr var_21C
  loc_BE9C38: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9C3D: FLdPr var_C4
  loc_BE9C40:  = Me.Fields
  loc_BE9C45: FLdPr var_E0
  loc_BE9C48: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9C4D: LitI2_Byte 0
  loc_BE9C4F: LitVar_Missing var_F8
  loc_BE9C52: LitI2_Byte 0
  loc_BE9C54: FLdZeroAd var_1D8
  loc_BE9C57: CVarAd
  loc_BE9C5B: PopAdLdVar
  loc_BE9C5C: FLdPr Me
  loc_BE9C5F: MemLdStr global_108
  loc_BE9C62: FLdPr Me
  loc_BE9C65: MemLdStr global_104
  loc_BE9C68: AryLock
  loc_BE9C6B: Ary1LdPr
  loc_BE9C6C: MemLdRfVar from_stack_1.global_80
  loc_BE9C6F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9C74: AryUnlock
  loc_BE9C77: FFreeAd var_C4 = ""
  loc_BE9C7E: FFreeVar var_D8 = ""
  loc_BE9C85: FLdRfVar var_1D8
  loc_BE9C88: LitVarStr var_B0, "FeanOrco"
  loc_BE9C8D: PopAdLdVar
  loc_BE9C8E: FLdRfVar var_E0
  loc_BE9C91: FLdRfVar var_C4
  loc_BE9C94: FLdPr var_21C
  loc_BE9C97: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9C9C: FLdPr var_C4
  loc_BE9C9F:  = Me.Fields
  loc_BE9CA4: FLdPr var_E0
  loc_BE9CA7: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9CAC: LitI2_Byte 0
  loc_BE9CAE: LitVar_Missing var_F8
  loc_BE9CB1: LitI2_Byte 0
  loc_BE9CB3: FLdZeroAd var_1D8
  loc_BE9CB6: CVarAd
  loc_BE9CBA: PopAdLdVar
  loc_BE9CBB: FLdPr Me
  loc_BE9CBE: MemLdStr global_108
  loc_BE9CC1: FLdPr Me
  loc_BE9CC4: MemLdStr global_104
  loc_BE9CC7: AryLock
  loc_BE9CCA: Ary1LdPr
  loc_BE9CCB: MemLdRfVar from_stack_1.global_84
  loc_BE9CCE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9CD3: AryUnlock
  loc_BE9CD6: FFreeAd var_C4 = ""
  loc_BE9CDD: FFreeVar var_D8 = ""
  loc_BE9CE4: FLdRfVar var_1D8
  loc_BE9CE7: LitVarStr var_B0, "BajaMoti"
  loc_BE9CEC: PopAdLdVar
  loc_BE9CED: FLdRfVar var_E0
  loc_BE9CF0: FLdRfVar var_C4
  loc_BE9CF3: FLdPr var_21C
  loc_BE9CF6: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9CFB: FLdPr var_C4
  loc_BE9CFE:  = Me.Fields
  loc_BE9D03: FLdPr var_E0
  loc_BE9D06: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9D0B: LitI2_Byte 0
  loc_BE9D0D: LitVar_Missing var_F8
  loc_BE9D10: LitI2_Byte 0
  loc_BE9D12: FLdZeroAd var_1D8
  loc_BE9D15: CVarAd
  loc_BE9D19: PopAdLdVar
  loc_BE9D1A: FLdPr Me
  loc_BE9D1D: MemLdStr global_108
  loc_BE9D20: FLdPr Me
  loc_BE9D23: MemLdStr global_104
  loc_BE9D26: AryLock
  loc_BE9D29: Ary1LdPr
  loc_BE9D2A: MemLdRfVar from_stack_1.global_88
  loc_BE9D2D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9D32: AryUnlock
  loc_BE9D35: FFreeAd var_C4 = ""
  loc_BE9D3C: FFreeVar var_D8 = ""
  loc_BE9D43: FLdRfVar var_1D8
  loc_BE9D46: LitVarStr var_B0, "SelloOrco"
  loc_BE9D4B: PopAdLdVar
  loc_BE9D4C: FLdRfVar var_E0
  loc_BE9D4F: FLdRfVar var_C4
  loc_BE9D52: FLdPr var_21C
  loc_BE9D55: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9D5A: FLdPr var_C4
  loc_BE9D5D:  = Me.Fields
  loc_BE9D62: FLdPr var_E0
  loc_BE9D65: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9D6A: LitI2_Byte 0
  loc_BE9D6C: LitVar_Missing var_F8
  loc_BE9D6F: LitI2_Byte 0
  loc_BE9D71: FLdZeroAd var_1D8
  loc_BE9D74: CVarAd
  loc_BE9D78: PopAdLdVar
  loc_BE9D79: FLdPr Me
  loc_BE9D7C: MemLdStr global_108
  loc_BE9D7F: FLdPr Me
  loc_BE9D82: MemLdStr global_104
  loc_BE9D85: AryLock
  loc_BE9D88: Ary1LdPr
  loc_BE9D89: MemLdRfVar from_stack_1.global_104
  loc_BE9D8C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9D91: AryUnlock
  loc_BE9D94: FFreeAd var_C4 = ""
  loc_BE9D9B: FFreeVar var_D8 = ""
  loc_BE9DA2: FLdRfVar var_1D8
  loc_BE9DA5: LitVarStr var_B0, "AlivaOrco"
  loc_BE9DAA: PopAdLdVar
  loc_BE9DAB: FLdRfVar var_E0
  loc_BE9DAE: FLdRfVar var_C4
  loc_BE9DB1: FLdPr var_21C
  loc_BE9DB4: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9DB9: FLdPr var_C4
  loc_BE9DBC:  = Me.Fields
  loc_BE9DC1: FLdPr var_E0
  loc_BE9DC4: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9DC9: LitI2_Byte 0
  loc_BE9DCB: LitVar_Missing var_F8
  loc_BE9DCE: LitI2_Byte 0
  loc_BE9DD0: FLdZeroAd var_1D8
  loc_BE9DD3: CVarAd
  loc_BE9DD7: PopAdLdVar
  loc_BE9DD8: FLdPr Me
  loc_BE9DDB: MemLdStr global_108
  loc_BE9DDE: FLdPr Me
  loc_BE9DE1: MemLdStr global_104
  loc_BE9DE4: AryLock
  loc_BE9DE7: Ary1LdPr
  loc_BE9DE8: MemLdRfVar from_stack_1.global_108
  loc_BE9DEB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9DF0: AryUnlock
  loc_BE9DF3: FFreeAd var_C4 = ""
  loc_BE9DFA: FFreeVar var_D8 = ""
  loc_BE9E01: FLdRfVar var_1D8
  loc_BE9E04: LitVarStr var_B0, "AltaUsua"
  loc_BE9E09: PopAdLdVar
  loc_BE9E0A: FLdRfVar var_E0
  loc_BE9E0D: FLdRfVar var_C4
  loc_BE9E10: FLdPr var_21C
  loc_BE9E13: from_stack_1v = clsordencompra.RsFrmGet()
  loc_BE9E18: FLdPr var_C4
  loc_BE9E1B:  = Me.Fields
  loc_BE9E20: FLdPr var_E0
  loc_BE9E23: from_stack_2 = Me.Item(from_stack_1)
  loc_BE9E28: LitI2_Byte 0
  loc_BE9E2A: LitVar_Missing var_F8
  loc_BE9E2D: LitI2_Byte 0
  loc_BE9E2F: FLdZeroAd var_1D8
  loc_BE9E32: CVarAd
  loc_BE9E36: PopAdLdVar
  loc_BE9E37: FLdPr Me
  loc_BE9E3A: MemLdStr global_108
  loc_BE9E3D: FLdPr Me
  loc_BE9E40: MemLdStr global_104
  loc_BE9E43: AryLock
  loc_BE9E46: Ary1LdPr
  loc_BE9E47: MemLdRfVar from_stack_1.global_92
  loc_BE9E4A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE9E4F: AryUnlock
  loc_BE9E52: FFreeAd var_C4 = ""
  loc_BE9E59: FFreeVar var_D8 = ""
  loc_BE9E60: LitNothing
  loc_BE9E62: FStAd var_21C 
  loc_BE9E66: LitStr "Municipalidad de Guaymallén"
  loc_BE9E69: FStStrCopy var_224
  loc_BE9E6C: ILdRf var_224
  loc_BE9E6F: LitStr "Municipalidad de Guaymallén"
  loc_BE9E72: EqStr
  loc_BE9E74: BranchT loc_BE9E82
  loc_BE9E77: ILdRf var_224
  loc_BE9E7A: LitStr "Municipalidad de Tunuyán"
  loc_BE9E7D: EqStr
  loc_BE9E7F: BranchF loc_BE9EFE
  loc_BE9E82: LitStr "SELECT itc.*, DetaInsu,  ImunItco, (CantItco * ImunItco) doImpoItco"
  loc_BE9E85: LitStr " FROM itemcompra itc"
  loc_BE9E88: ConcatStr
  loc_BE9E89: FStStrNoPop var_DC
  loc_BE9E8C: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itc.CodiInsu"
  loc_BE9E8F: ConcatStr
  loc_BE9E90: FStStrNoPop var_E4
  loc_BE9E93: LitStr " WHERE PeriInfo = "
  loc_BE9E96: ConcatStr
  loc_BE9E97: FStStrNoPop var_180
  loc_BE9E9A: FLdRfVar var_E8
  loc_BE9E9D: FLdPr Me
  loc_BE9EA0: VCallAd Control_ID_cboPeriodo
  loc_BE9EA3: FStAdFunc var_C4
  loc_BE9EA6: FLdPr var_C4
  loc_BE9EA9:  = Me.Text
  loc_BE9EAE: ILdRf var_E8
  loc_BE9EB1: ConcatStr
  loc_BE9EB2: FStStrNoPop var_184
  loc_BE9EB5: LitStr " AND CodiOrco = "
  loc_BE9EB8: ConcatStr
  loc_BE9EB9: FStStrNoPop var_188
  loc_BE9EBC: FLdPr Me
  loc_BE9EBF: MemLdStr global_108
  loc_BE9EC2: FLdPr Me
  loc_BE9EC5: MemLdStr global_104
  loc_BE9EC8: Ary1LdPr
  loc_BE9EC9: MemLdStr global_0
  loc_BE9ECC: ConcatStr
  loc_BE9ECD: FStStrNoPop var_18C
  loc_BE9ED0: LitStr " ORDER BY CodiItco;"
  loc_BE9ED3: ConcatStr
  loc_BE9ED4: FStStrNoPop var_190
  loc_BE9ED7: FLdPr Me
  loc_BE9EDA: MemLdRfVar from_stack_1.global_92
  loc_BE9EDD: NewIfNullPr clsbase
  loc_BE9EE0: Call clsbase.RedefineRS(from_stack_1v)
  loc_BE9EE5: FFreeStr var_DC = "": var_E4 = "": var_180 = "": var_E8 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_BE9EF8: FFree1Ad var_C4
  loc_BE9EFB: Branch loc_BE9F77
  loc_BE9EFE: LitStr "SELECT itc.*, DetaInsu, IF(IdImpu>0||(IdImpu=0&&itc.PeriItco>0),ImunItco,0) ImunItco, round( (CantItco*IF(IdImpu>0||(IdImpu=0&&itc.PeriItco>0),ImunItco,0)) ,2) doImpoItco"
  loc_BE9F01: LitStr " FROM itemcompra itc"
  loc_BE9F04: ConcatStr
  loc_BE9F05: FStStrNoPop var_DC
  loc_BE9F08: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itc.CodiInsu"
  loc_BE9F0B: ConcatStr
  loc_BE9F0C: FStStrNoPop var_E4
  loc_BE9F0F: LitStr " WHERE PeriInfo = "
  loc_BE9F12: ConcatStr
  loc_BE9F13: FStStrNoPop var_180
  loc_BE9F16: FLdRfVar var_E8
  loc_BE9F19: FLdPr Me
  loc_BE9F1C: VCallAd Control_ID_cboPeriodo
  loc_BE9F1F: FStAdFunc var_C4
  loc_BE9F22: FLdPr var_C4
  loc_BE9F25:  = Me.Text
  loc_BE9F2A: ILdRf var_E8
  loc_BE9F2D: ConcatStr
  loc_BE9F2E: FStStrNoPop var_184
  loc_BE9F31: LitStr " AND CodiOrco = "
  loc_BE9F34: ConcatStr
  loc_BE9F35: FStStrNoPop var_188
  loc_BE9F38: FLdPr Me
  loc_BE9F3B: MemLdStr global_108
  loc_BE9F3E: FLdPr Me
  loc_BE9F41: MemLdStr global_104
  loc_BE9F44: Ary1LdPr
  loc_BE9F45: MemLdStr global_0
  loc_BE9F48: ConcatStr
  loc_BE9F49: FStStrNoPop var_18C
  loc_BE9F4C: LitStr " ORDER BY CodiItco;"
  loc_BE9F4F: ConcatStr
  loc_BE9F50: FStStrNoPop var_190
  loc_BE9F53: FLdPr Me
  loc_BE9F56: MemLdRfVar from_stack_1.global_92
  loc_BE9F59: NewIfNullPr clsbase
  loc_BE9F5C: Call clsbase.RedefineRS(from_stack_1v)
  loc_BE9F61: FFreeStr var_DC = "": var_E4 = "": var_180 = "": var_E8 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_BE9F74: FFree1Ad var_C4
  loc_BE9F77: FLdRfVar var_C6
  loc_BE9F7A: FLdPr Me
  loc_BE9F7D: VCallAd Control_ID_AgruparChk
  loc_BE9F80: FStAdFunc var_C4
  loc_BE9F83: FLdPr var_C4
  loc_BE9F86:  = Me.Value
  loc_BE9F8B: FLdI2 var_C6
  loc_BE9F8E: CI4UI1
  loc_BE9F8F: LitI4 0
  loc_BE9F94: EqI4
  loc_BE9F95: FFree1Ad var_C4
  loc_BE9F98: BranchF loc_BEA60A
  loc_BE9F9B: FLdRfVar var_20C
  loc_BE9F9E: FLdPr Me
  loc_BE9FA1: MemLdRfVar from_stack_1.global_92
  loc_BE9FA4: NewIfNullPr clsbase
  loc_BE9FA7: from_stack_1 = clsbase.RecordCount
  loc_BE9FAC: LitI4 0
  loc_BE9FB1: ILdRf var_20C
  loc_BE9FB4: FLdPr Me
  loc_BE9FB7: MemLdStr global_108
  loc_BE9FBA: FLdPr Me
  loc_BE9FBD: MemLdStr global_104
  loc_BE9FC0: Ary1LdPr
  loc_BE9FC1: MemLdRfVar from_stack_1.global_96
  loc_BE9FC4: Redim
  loc_BE9FCE: FLdPr Me
  loc_BE9FD1: MemLdRfVar from_stack_1.global_92
  loc_BE9FD4: NewIfNullPr clsbase
  loc_BE9FD7: Call clsbase.MoveFirst()
  loc_BE9FDC: LitI4 1
  loc_BE9FE1: FLdPr Me
  loc_BE9FE4: MemLdRfVar from_stack_1.global_112
  loc_BE9FE7: FLdPr Me
  loc_BE9FEA: MemLdStr global_108
  loc_BE9FED: FLdPr Me
  loc_BE9FF0: MemLdStr global_104
  loc_BE9FF3: Ary1LdPr
  loc_BE9FF4: MemLdStr global_96
  loc_BE9FF7: LitI2_Byte 1
  loc_BE9FF9: FnUBound
  loc_BE9FFB: ForI4 var_22C
  loc_BEA001: FLdPr Me
  loc_BEA004: MemLdRfVar from_stack_1.global_92
  loc_BEA007: NewIfNullAd
  loc_BEA00A: FStAd var_230 
  loc_BEA00E: FLdRfVar var_1D8
  loc_BEA011: LitVarStr var_B0, "CodiItco"
  loc_BEA016: PopAdLdVar
  loc_BEA017: FLdRfVar var_E0
  loc_BEA01A: FLdRfVar var_C4
  loc_BEA01D: FLdPr var_230
  loc_BEA020: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA025: FLdPr var_C4
  loc_BEA028:  = Me.Fields
  loc_BEA02D: FLdPr var_E0
  loc_BEA030: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA035: LitI2_Byte 0
  loc_BEA037: LitVar_Missing var_F8
  loc_BEA03A: LitI2_Byte 0
  loc_BEA03C: FLdZeroAd var_1D8
  loc_BEA03F: CVarAd
  loc_BEA043: PopAdLdVar
  loc_BEA044: FLdPr Me
  loc_BEA047: MemLdStr global_112
  loc_BEA04A: FLdPr Me
  loc_BEA04D: MemLdStr global_108
  loc_BEA050: FLdPr Me
  loc_BEA053: MemLdStr global_104
  loc_BEA056: AryLock
  loc_BEA059: Ary1LdPr
  loc_BEA05A: MemLdStr global_96
  loc_BEA05D: AryLock
  loc_BEA060: Ary1LdPr
  loc_BEA061: MemLdRfVar from_stack_1.global_0
  loc_BEA064: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA069: AryUnlock
  loc_BEA06C: AryUnlock
  loc_BEA06F: FFreeAd var_C4 = ""
  loc_BEA076: FFreeVar var_D8 = ""
  loc_BEA07D: FLdRfVar var_1D8
  loc_BEA080: LitVarStr var_B0, "AlteItco"
  loc_BEA085: PopAdLdVar
  loc_BEA086: FLdRfVar var_E0
  loc_BEA089: FLdRfVar var_C4
  loc_BEA08C: FLdPr var_230
  loc_BEA08F: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA094: FLdPr var_C4
  loc_BEA097:  = Me.Fields
  loc_BEA09C: FLdPr var_E0
  loc_BEA09F: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA0A4: LitI2_Byte 0
  loc_BEA0A6: LitVar_Missing var_F8
  loc_BEA0A9: LitI2_Byte 0
  loc_BEA0AB: FLdZeroAd var_1D8
  loc_BEA0AE: CVarAd
  loc_BEA0B2: PopAdLdVar
  loc_BEA0B3: FLdPr Me
  loc_BEA0B6: MemLdStr global_112
  loc_BEA0B9: FLdPr Me
  loc_BEA0BC: MemLdStr global_108
  loc_BEA0BF: FLdPr Me
  loc_BEA0C2: MemLdStr global_104
  loc_BEA0C5: AryLock
  loc_BEA0C8: Ary1LdPr
  loc_BEA0C9: MemLdStr global_96
  loc_BEA0CC: AryLock
  loc_BEA0CF: Ary1LdPr
  loc_BEA0D0: MemLdRfVar from_stack_1.global_4
  loc_BEA0D3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA0D8: AryUnlock
  loc_BEA0DB: AryUnlock
  loc_BEA0DE: FFreeAd var_C4 = ""
  loc_BEA0E5: FFreeVar var_D8 = ""
  loc_BEA0EC: FLdRfVar var_1D8
  loc_BEA0EF: LitVarStr var_B0, "DetaItco"
  loc_BEA0F4: PopAdLdVar
  loc_BEA0F5: FLdRfVar var_E0
  loc_BEA0F8: FLdRfVar var_C4
  loc_BEA0FB: FLdPr var_230
  loc_BEA0FE: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA103: FLdPr var_C4
  loc_BEA106:  = Me.Fields
  loc_BEA10B: FLdPr var_E0
  loc_BEA10E: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA113: LitI2_Byte 0
  loc_BEA115: LitVar_Missing var_F8
  loc_BEA118: LitI2_Byte 0
  loc_BEA11A: FLdZeroAd var_1D8
  loc_BEA11D: CVarAd
  loc_BEA121: PopAdLdVar
  loc_BEA122: FLdPr Me
  loc_BEA125: MemLdStr global_112
  loc_BEA128: FLdPr Me
  loc_BEA12B: MemLdStr global_108
  loc_BEA12E: FLdPr Me
  loc_BEA131: MemLdStr global_104
  loc_BEA134: AryLock
  loc_BEA137: Ary1LdPr
  loc_BEA138: MemLdStr global_96
  loc_BEA13B: AryLock
  loc_BEA13E: Ary1LdPr
  loc_BEA13F: MemLdRfVar from_stack_1.global_16
  loc_BEA142: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA147: AryUnlock
  loc_BEA14A: AryUnlock
  loc_BEA14D: FFreeAd var_C4 = ""
  loc_BEA154: FFreeVar var_D8 = ""
  loc_BEA15B: FLdRfVar var_1D8
  loc_BEA15E: LitVarStr var_B0, "MarcaItco"
  loc_BEA163: PopAdLdVar
  loc_BEA164: FLdRfVar var_E0
  loc_BEA167: FLdRfVar var_C4
  loc_BEA16A: FLdPr var_230
  loc_BEA16D: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA172: FLdPr var_C4
  loc_BEA175:  = Me.Fields
  loc_BEA17A: FLdPr var_E0
  loc_BEA17D: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA182: LitI2_Byte 0
  loc_BEA184: LitVar_Missing var_F8
  loc_BEA187: LitI2_Byte 0
  loc_BEA189: FLdZeroAd var_1D8
  loc_BEA18C: CVarAd
  loc_BEA190: PopAdLdVar
  loc_BEA191: FLdPr Me
  loc_BEA194: MemLdStr global_112
  loc_BEA197: FLdPr Me
  loc_BEA19A: MemLdStr global_108
  loc_BEA19D: FLdPr Me
  loc_BEA1A0: MemLdStr global_104
  loc_BEA1A3: AryLock
  loc_BEA1A6: Ary1LdPr
  loc_BEA1A7: MemLdStr global_96
  loc_BEA1AA: AryLock
  loc_BEA1AD: Ary1LdPr
  loc_BEA1AE: MemLdRfVar from_stack_1.global_20
  loc_BEA1B1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA1B6: AryUnlock
  loc_BEA1B9: AryUnlock
  loc_BEA1BC: FFreeAd var_C4 = ""
  loc_BEA1C3: FFreeVar var_D8 = ""
  loc_BEA1CA: FLdRfVar var_1D8
  loc_BEA1CD: LitVarStr var_B0, "CaraItco"
  loc_BEA1D2: PopAdLdVar
  loc_BEA1D3: FLdRfVar var_E0
  loc_BEA1D6: FLdRfVar var_C4
  loc_BEA1D9: FLdPr var_230
  loc_BEA1DC: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA1E1: FLdPr var_C4
  loc_BEA1E4:  = Me.Fields
  loc_BEA1E9: FLdPr var_E0
  loc_BEA1EC: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA1F1: LitI2_Byte 0
  loc_BEA1F3: LitVar_Missing var_F8
  loc_BEA1F6: LitI2_Byte 0
  loc_BEA1F8: FLdZeroAd var_1D8
  loc_BEA1FB: CVarAd
  loc_BEA1FF: PopAdLdVar
  loc_BEA200: FLdPr Me
  loc_BEA203: MemLdStr global_112
  loc_BEA206: FLdPr Me
  loc_BEA209: MemLdStr global_108
  loc_BEA20C: FLdPr Me
  loc_BEA20F: MemLdStr global_104
  loc_BEA212: AryLock
  loc_BEA215: Ary1LdPr
  loc_BEA216: MemLdStr global_96
  loc_BEA219: AryLock
  loc_BEA21C: Ary1LdPr
  loc_BEA21D: MemLdRfVar from_stack_1.global_24
  loc_BEA220: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA225: AryUnlock
  loc_BEA228: AryUnlock
  loc_BEA22B: FFreeAd var_C4 = ""
  loc_BEA232: FFreeVar var_D8 = ""
  loc_BEA239: FLdRfVar var_1D8
  loc_BEA23C: LitVarStr var_B0, "CodiInsu"
  loc_BEA241: PopAdLdVar
  loc_BEA242: FLdRfVar var_E0
  loc_BEA245: FLdRfVar var_C4
  loc_BEA248: FLdPr var_230
  loc_BEA24B: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA250: FLdPr var_C4
  loc_BEA253:  = Me.Fields
  loc_BEA258: FLdPr var_E0
  loc_BEA25B: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA260: LitI2_Byte 0
  loc_BEA262: LitVar_Missing var_F8
  loc_BEA265: LitI2_Byte 0
  loc_BEA267: FLdZeroAd var_1D8
  loc_BEA26A: CVarAd
  loc_BEA26E: PopAdLdVar
  loc_BEA26F: FLdPr Me
  loc_BEA272: MemLdStr global_112
  loc_BEA275: FLdPr Me
  loc_BEA278: MemLdStr global_108
  loc_BEA27B: FLdPr Me
  loc_BEA27E: MemLdStr global_104
  loc_BEA281: AryLock
  loc_BEA284: Ary1LdPr
  loc_BEA285: MemLdStr global_96
  loc_BEA288: AryLock
  loc_BEA28B: Ary1LdPr
  loc_BEA28C: MemLdRfVar from_stack_1.global_8
  loc_BEA28F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA294: AryUnlock
  loc_BEA297: AryUnlock
  loc_BEA29A: FFreeAd var_C4 = ""
  loc_BEA2A1: FFreeVar var_D8 = ""
  loc_BEA2A8: FLdRfVar var_1D8
  loc_BEA2AB: LitVarStr var_B0, "DetaInsu"
  loc_BEA2B0: PopAdLdVar
  loc_BEA2B1: FLdRfVar var_E0
  loc_BEA2B4: FLdRfVar var_C4
  loc_BEA2B7: FLdPr var_230
  loc_BEA2BA: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA2BF: FLdPr var_C4
  loc_BEA2C2:  = Me.Fields
  loc_BEA2C7: FLdPr var_E0
  loc_BEA2CA: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA2CF: LitI2_Byte 0
  loc_BEA2D1: LitVar_Missing var_F8
  loc_BEA2D4: LitI2_Byte 0
  loc_BEA2D6: FLdZeroAd var_1D8
  loc_BEA2D9: CVarAd
  loc_BEA2DD: PopAdLdVar
  loc_BEA2DE: FLdPr Me
  loc_BEA2E1: MemLdStr global_112
  loc_BEA2E4: FLdPr Me
  loc_BEA2E7: MemLdStr global_108
  loc_BEA2EA: FLdPr Me
  loc_BEA2ED: MemLdStr global_104
  loc_BEA2F0: AryLock
  loc_BEA2F3: Ary1LdPr
  loc_BEA2F4: MemLdStr global_96
  loc_BEA2F7: AryLock
  loc_BEA2FA: Ary1LdPr
  loc_BEA2FB: MemLdRfVar from_stack_1.global_12
  loc_BEA2FE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA303: AryUnlock
  loc_BEA306: AryUnlock
  loc_BEA309: FFreeAd var_C4 = ""
  loc_BEA310: FFreeVar var_D8 = ""
  loc_BEA317: FLdRfVar var_1D8
  loc_BEA31A: LitVarStr var_B0, "CantItco"
  loc_BEA31F: PopAdLdVar
  loc_BEA320: FLdRfVar var_E0
  loc_BEA323: FLdRfVar var_C4
  loc_BEA326: FLdPr var_230
  loc_BEA329: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA32E: FLdPr var_C4
  loc_BEA331:  = Me.Fields
  loc_BEA336: FLdPr var_E0
  loc_BEA339: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA33E: LitI2_Byte 0
  loc_BEA340: LitVar_Missing var_F8
  loc_BEA343: LitI2_Byte 0
  loc_BEA345: FLdZeroAd var_1D8
  loc_BEA348: CVarAd
  loc_BEA34C: PopAdLdVar
  loc_BEA34D: FLdPr Me
  loc_BEA350: MemLdStr global_112
  loc_BEA353: FLdPr Me
  loc_BEA356: MemLdStr global_108
  loc_BEA359: FLdPr Me
  loc_BEA35C: MemLdStr global_104
  loc_BEA35F: AryLock
  loc_BEA362: Ary1LdPr
  loc_BEA363: MemLdStr global_96
  loc_BEA366: AryLock
  loc_BEA369: Ary1LdPr
  loc_BEA36A: MemLdRfVar from_stack_1.global_28
  loc_BEA36D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA372: AryUnlock
  loc_BEA375: AryUnlock
  loc_BEA378: FFreeAd var_C4 = ""
  loc_BEA37F: FFreeVar var_D8 = ""
  loc_BEA386: FLdRfVar var_1D8
  loc_BEA389: LitVarStr var_B0, "ImunItco"
  loc_BEA38E: PopAdLdVar
  loc_BEA38F: FLdRfVar var_E0
  loc_BEA392: FLdRfVar var_C4
  loc_BEA395: FLdPr var_230
  loc_BEA398: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA39D: FLdPr var_C4
  loc_BEA3A0:  = Me.Fields
  loc_BEA3A5: FLdPr var_E0
  loc_BEA3A8: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA3AD: LitI4 -1
  loc_BEA3B2: LitI4 0
  loc_BEA3B7: LitI4 -1
  loc_BEA3BC: LitI4 3
  loc_BEA3C1: FLdZeroAd var_1D8
  loc_BEA3C4: CVarAd
  loc_BEA3C8: ImpAdCallI2 FormatNumber(, , , , )
  loc_BEA3CD: FStStr var_DC
  loc_BEA3D0: LitI2_Byte 0
  loc_BEA3D2: LitVar_Missing var_108
  loc_BEA3D5: LitI2_Byte 0
  loc_BEA3D7: FLdZeroAd var_DC
  loc_BEA3DA: CVarStr var_F8
  loc_BEA3DD: PopAdLdVar
  loc_BEA3DE: FLdPr Me
  loc_BEA3E1: MemLdStr global_112
  loc_BEA3E4: FLdPr Me
  loc_BEA3E7: MemLdStr global_108
  loc_BEA3EA: FLdPr Me
  loc_BEA3ED: MemLdStr global_104
  loc_BEA3F0: AryLock
  loc_BEA3F3: Ary1LdPr
  loc_BEA3F4: MemLdStr global_96
  loc_BEA3F7: AryLock
  loc_BEA3FA: Ary1LdPr
  loc_BEA3FB: MemLdRfVar from_stack_1.global_32
  loc_BEA3FE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA403: AryUnlock
  loc_BEA406: AryUnlock
  loc_BEA409: FFree1Str var_DC
  loc_BEA40C: FFreeAd var_C4 = ""
  loc_BEA413: FFreeVar var_D8 = "": var_F8 = ""
  loc_BEA41C: FLdRfVar var_1D8
  loc_BEA41F: LitVarStr var_B0, "doImpoItco"
  loc_BEA424: PopAdLdVar
  loc_BEA425: FLdRfVar var_E0
  loc_BEA428: FLdRfVar var_C4
  loc_BEA42B: FLdPr var_230
  loc_BEA42E: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA433: FLdPr var_C4
  loc_BEA436:  = Me.Fields
  loc_BEA43B: FLdPr var_E0
  loc_BEA43E: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA443: LitI2_Byte 3
  loc_BEA445: CUI1I2
  loc_BEA447: FLdPr Me
  loc_BEA44A: MemLdStr global_108
  loc_BEA44D: FLdPr Me
  loc_BEA450: MemLdStr global_104
  loc_BEA453: AryLock
  loc_BEA456: Ary1LdPr
  loc_BEA457: MemLdRfVar from_stack_1.global_100
  loc_BEA45A: CVarRef
  loc_BEA45F: LitI2_Byte &HFF
  loc_BEA461: FLdZeroAd var_1D8
  loc_BEA464: CVarAd
  loc_BEA468: PopAdLdVar
  loc_BEA469: FLdPr Me
  loc_BEA46C: MemLdStr global_112
  loc_BEA46F: FLdPr Me
  loc_BEA472: MemLdStr global_108
  loc_BEA475: FLdPr Me
  loc_BEA478: MemLdStr global_104
  loc_BEA47B: AryLock
  loc_BEA47E: Ary1LdPr
  loc_BEA47F: MemLdStr global_96
  loc_BEA482: AryLock
  loc_BEA485: Ary1LdPr
  loc_BEA486: MemLdRfVar from_stack_1.global_36
  loc_BEA489: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA48E: AryUnlock
  loc_BEA491: AryUnlock
  loc_BEA494: AryUnlock
  loc_BEA497: FFreeAd var_C4 = ""
  loc_BEA49E: FFree1Var var_D8 = ""
  loc_BEA4A1: FLdRfVar var_1D8
  loc_BEA4A4: LitVarStr var_B0, "CodiPart"
  loc_BEA4A9: PopAdLdVar
  loc_BEA4AA: FLdRfVar var_E0
  loc_BEA4AD: FLdRfVar var_C4
  loc_BEA4B0: FLdPr var_230
  loc_BEA4B3: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA4B8: FLdPr var_C4
  loc_BEA4BB:  = Me.Fields
  loc_BEA4C0: FLdPr var_E0
  loc_BEA4C3: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA4C8: LitI2_Byte 0
  loc_BEA4CA: LitVar_Missing var_F8
  loc_BEA4CD: LitI2_Byte 0
  loc_BEA4CF: FLdZeroAd var_1D8
  loc_BEA4D2: CVarAd
  loc_BEA4D6: PopAdLdVar
  loc_BEA4D7: FLdPr Me
  loc_BEA4DA: MemLdStr global_112
  loc_BEA4DD: FLdPr Me
  loc_BEA4E0: MemLdStr global_108
  loc_BEA4E3: FLdPr Me
  loc_BEA4E6: MemLdStr global_104
  loc_BEA4E9: AryLock
  loc_BEA4EC: Ary1LdPr
  loc_BEA4ED: MemLdStr global_96
  loc_BEA4F0: AryLock
  loc_BEA4F3: Ary1LdPr
  loc_BEA4F4: MemLdRfVar from_stack_1.global_40
  loc_BEA4F7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA4FC: AryUnlock
  loc_BEA4FF: AryUnlock
  loc_BEA502: FFreeAd var_C4 = ""
  loc_BEA509: FFreeVar var_D8 = ""
  loc_BEA510: FLdRfVar var_1D8
  loc_BEA513: LitVarStr var_B0, "CodiOrga"
  loc_BEA518: PopAdLdVar
  loc_BEA519: FLdRfVar var_E0
  loc_BEA51C: FLdRfVar var_C4
  loc_BEA51F: FLdPr var_230
  loc_BEA522: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA527: FLdPr var_C4
  loc_BEA52A:  = Me.Fields
  loc_BEA52F: FLdPr var_E0
  loc_BEA532: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA537: LitI2_Byte 0
  loc_BEA539: LitVar_Missing var_F8
  loc_BEA53C: LitI2_Byte 0
  loc_BEA53E: FLdZeroAd var_1D8
  loc_BEA541: CVarAd
  loc_BEA545: PopAdLdVar
  loc_BEA546: FLdPr Me
  loc_BEA549: MemLdStr global_112
  loc_BEA54C: FLdPr Me
  loc_BEA54F: MemLdStr global_108
  loc_BEA552: FLdPr Me
  loc_BEA555: MemLdStr global_104
  loc_BEA558: AryLock
  loc_BEA55B: Ary1LdPr
  loc_BEA55C: MemLdStr global_96
  loc_BEA55F: AryLock
  loc_BEA562: Ary1LdPr
  loc_BEA563: MemLdRfVar from_stack_1.global_44
  loc_BEA566: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA56B: AryUnlock
  loc_BEA56E: AryUnlock
  loc_BEA571: FFreeAd var_C4 = ""
  loc_BEA578: FFreeVar var_D8 = ""
  loc_BEA57F: FLdRfVar var_1D8
  loc_BEA582: LitVarStr var_B0, "CodiFifu"
  loc_BEA587: PopAdLdVar
  loc_BEA588: FLdRfVar var_E0
  loc_BEA58B: FLdRfVar var_C4
  loc_BEA58E: FLdPr var_230
  loc_BEA591: from_stack_1v = clsbase.RsFrmGet()
  loc_BEA596: FLdPr var_C4
  loc_BEA599:  = Me.Fields
  loc_BEA59E: FLdPr var_E0
  loc_BEA5A1: from_stack_2 = Me.Item(from_stack_1)
  loc_BEA5A6: LitI2_Byte 0
  loc_BEA5A8: LitVar_Missing var_F8
  loc_BEA5AB: LitI2_Byte 0
  loc_BEA5AD: FLdZeroAd var_1D8
  loc_BEA5B0: CVarAd
  loc_BEA5B4: PopAdLdVar
  loc_BEA5B5: FLdPr Me
  loc_BEA5B8: MemLdStr global_112
  loc_BEA5BB: FLdPr Me
  loc_BEA5BE: MemLdStr global_108
  loc_BEA5C1: FLdPr Me
  loc_BEA5C4: MemLdStr global_104
  loc_BEA5C7: AryLock
  loc_BEA5CA: Ary1LdPr
  loc_BEA5CB: MemLdStr global_96
  loc_BEA5CE: AryLock
  loc_BEA5D1: Ary1LdPr
  loc_BEA5D2: MemLdRfVar from_stack_1.global_48
  loc_BEA5D5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA5DA: AryUnlock
  loc_BEA5DD: AryUnlock
  loc_BEA5E0: FFreeAd var_C4 = ""
  loc_BEA5E7: FFreeVar var_D8 = ""
  loc_BEA5EE: FLdPr var_230
  loc_BEA5F1: Call clsbase.MoveSiguiente()
  loc_BEA5F6: LitNothing
  loc_BEA5F8: FStAd var_230 
  loc_BEA5FC: FLdPr Me
  loc_BEA5FF: MemLdRfVar from_stack_1.global_112
  loc_BEA602: NextI4 var_22C, loc_BEA001
  loc_BEA607: Branch loc_BEA66A
  loc_BEA60A: FLdPr Me
  loc_BEA60D: MemLdRfVar from_stack_1.global_92
  loc_BEA610: NewIfNullPr clsbase
  loc_BEA613: Call clsbase.MoveFirst()
  loc_BEA618: LitI4 0
  loc_BEA61D: FLdPr Me
  loc_BEA620: MemStI4 global_112
  loc_BEA623: Call Proc_199_38_ACEBD8()
  loc_BEA628: FLdRfVar var_C6
  loc_BEA62B: FLdPr Me
  loc_BEA62E: MemLdRfVar from_stack_1.global_92
  loc_BEA631: NewIfNullPr clsbase
  loc_BEA634: from_stack_1 = clsbase.EOF
  loc_BEA639: FLdI2 var_C6
  loc_BEA63C: NotI4
  loc_BEA63D: BranchF loc_BEA66A
  loc_BEA640: FLdRfVar var_C6
  loc_BEA643: Call Proc_199_40_A45858()
  loc_BEA648: FLdI2 var_C6
  loc_BEA64B: FStI2 var_23A
  loc_BEA64E: FLdI2 var_23A
  loc_BEA651: LitI2_Byte 0
  loc_BEA653: GtI2
  loc_BEA654: BranchF loc_BEA662
  loc_BEA657: FLdI2 var_23A
  loc_BEA65A: Call Proc_199_39_A3E480()
  loc_BEA65F: Branch loc_BEA667
  loc_BEA662: Call Proc_199_38_ACEBD8()
  loc_BEA667: Branch loc_BEA628
  loc_BEA66A: FLdPr Me
  loc_BEA66D: MemLdRfVar from_stack_1.global_88
  loc_BEA670: NewIfNullPr clsordencompra
  loc_BEA673: Call clsordencompra.MoveSiguiente()
  loc_BEA678: LitI2_Byte 2
  loc_BEA67A: CUI1I2
  loc_BEA67C: FLdPr Me
  loc_BEA67F: MemLdStr global_108
  loc_BEA682: FLdPr Me
  loc_BEA685: MemLdStr global_104
  loc_BEA688: AryLock
  loc_BEA68B: Ary1LdPr
  loc_BEA68C: MemLdRfVar from_stack_1.global_100
  loc_BEA68F: CVarRef
  loc_BEA694: LitI2_Byte &HFF
  loc_BEA696: LitVarI2 var_B0, 0
  loc_BEA69B: PopAdLdVar
  loc_BEA69C: FLdRfVar var_88
  loc_BEA69F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BEA6A4: AryUnlock
  loc_BEA6A7: FLdPr Me
  loc_BEA6AA: MemLdRfVar from_stack_1.global_108
  loc_BEA6AD: NextI4 var_218, loc_BE94AD
  loc_BEA6B2: LitI2_Byte &HFF
  loc_BEA6B4: FLdPr Me
  loc_BEA6B7: MemStI2 bGenerado
  loc_BEA6BA: LitI4 0
  loc_BEA6BF: CI2I4
  loc_BEA6C0: FLdPr Me
  loc_BEA6C3: Me.MousePointer = from_stack_1
  loc_BEA6C8: LitVarStr var_B0, vbNullString
  loc_BEA6CD: PopAdLdVar
  loc_BEA6CE: FLdPr Me
  loc_BEA6D1: VCallAd Control_ID_statusBar
  loc_BEA6D4: FStAdFunc var_C4
  loc_BEA6D7: FLdPr var_C4
  loc_BEA6DA: LateIdSt
  loc_BEA6DF: FFree1Ad var_C4
  loc_BEA6E2: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() 'A023E8
  'Data Table: 4E66BC
  loc_A022C4: LitI4 0
  loc_A022C9: LitI4 &HF
  loc_A022CE: FLdRfVar var_88
  loc_A022D1: Redim
  loc_A022DB: FLdPr Me
  loc_A022DE: VCallAd Control_ID_cboPeriodo
  loc_A022E1: CVarAd
  loc_A022E5: ParmAry1St
  loc_A022EB: FLdPr Me
  loc_A022EE: VCallAd Control_ID_mskDesde
  loc_A022F1: CVarAd
  loc_A022F5: ParmAry1St
  loc_A022FB: FLdPr Me
  loc_A022FE: VCallAd Control_ID_cmdDesde
  loc_A02301: CVarAd
  loc_A02305: ParmAry1St
  loc_A0230B: FLdPr Me
  loc_A0230E: VCallAd Control_ID_mskHasta
  loc_A02311: CVarAd
  loc_A02315: ParmAry1St
  loc_A0231B: FLdPr Me
  loc_A0231E: VCallAd Control_ID_cmdHasta
  loc_A02321: CVarAd
  loc_A02325: ParmAry1St
  loc_A0232B: FLdPr Me
  loc_A0232E: VCallAd Control_ID_CodiOrcoTxt
  loc_A02331: CVarAd
  loc_A02335: ParmAry1St
  loc_A0233B: FLdPr Me
  loc_A0233E: VCallAd Control_ID_HojasSeparadasChk
  loc_A02341: CVarAd
  loc_A02345: ParmAry1St
  loc_A0234B: FLdPr Me
  loc_A0234E: VCallAd Control_ID_cboExpeImpu
  loc_A02351: CVarAd
  loc_A02355: ParmAry1St
  loc_A0235B: FLdPr Me
  loc_A0235E: VCallAd Control_ID_cboTipoCompra
  loc_A02361: CVarAd
  loc_A02365: ParmAry1St
  loc_A0236B: FLdPr Me
  loc_A0236E: VCallAd Control_ID_CucuPersTxt
  loc_A02371: CVarAd
  loc_A02375: ParmAry1St
  loc_A0237B: FLdPr Me
  loc_A0237E: VCallAd Control_ID_CodiNopeMsk
  loc_A02381: CVarAd
  loc_A02385: ParmAry1St
  loc_A0238B: FLdPr Me
  loc_A0238E: VCallAd Control_ID_CodiOrgaMsk
  loc_A02391: CVarAd
  loc_A02395: ParmAry1St
  loc_A0239B: FLdPr Me
  loc_A0239E: VCallAd Control_ID_AgruparChk
  loc_A023A1: CVarAd
  loc_A023A5: ParmAry1St
  loc_A023AB: FLdPr Me
  loc_A023AE: VCallAd Control_ID_HojasSeparadasChk
  loc_A023B1: CVarAd
  loc_A023B5: ParmAry1St
  loc_A023BB: FLdPr Me
  loc_A023BE: VCallAd Control_ID_SoloEncabezadosChk
  loc_A023C1: CVarAd
  loc_A023C5: ParmAry1St
  loc_A023CB: FLdPr Me
  loc_A023CE: VCallAd Control_ID_chkIncluyelafirma
  loc_A023D1: CVarAd
  loc_A023D5: ParmAry1St
  loc_A023DB: FLdRfVar var_88
  loc_A023DE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A023E3: FLdRfVar var_88
  loc_A023E6: Erase
  loc_A023E7: ExitProcHresult
End Sub

Private Function Proc_199_38_ACEBD8() 'ACEBD8
  'Data Table: 4E66BC
  loc_ACE5A0: FLdPr Me
  loc_ACE5A3: MemLdStr global_112
  loc_ACE5A6: LitI4 1
  loc_ACE5AB: AddI4
  loc_ACE5AC: FLdPr Me
  loc_ACE5AF: MemStI4 global_112
  loc_ACE5B2: LitI4 0
  loc_ACE5B7: FLdPr Me
  loc_ACE5BA: MemLdStr global_112
  loc_ACE5BD: FLdPr Me
  loc_ACE5C0: MemLdStr global_108
  loc_ACE5C3: FLdPr Me
  loc_ACE5C6: MemLdStr global_104
  loc_ACE5C9: Ary1LdPr
  loc_ACE5CA: MemLdRfVar from_stack_1.global_96
  loc_ACE5CD: RedimPreserve
  loc_ACE5D7: FLdPr Me
  loc_ACE5DA: MemLdRfVar from_stack_1.global_92
  loc_ACE5DD: NewIfNullAd
  loc_ACE5E0: FStAd var_88 
  loc_ACE5E4: FLdRfVar var_A4
  loc_ACE5E7: LitVarStr var_A0, "CodiItco"
  loc_ACE5EC: PopAdLdVar
  loc_ACE5ED: FLdRfVar var_90
  loc_ACE5F0: FLdRfVar var_8C
  loc_ACE5F3: FLdPr var_88
  loc_ACE5F6: from_stack_1v = clsbase.RsFrmGet()
  loc_ACE5FB: FLdPr var_8C
  loc_ACE5FE:  = Me.Fields
  loc_ACE603: FLdPr var_90
  loc_ACE606: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE60B: LitI2_Byte 0
  loc_ACE60D: LitVar_Missing var_DC
  loc_ACE610: LitI2_Byte 0
  loc_ACE612: FLdZeroAd var_A4
  loc_ACE615: CVarAd
  loc_ACE619: PopAdLdVar
  loc_ACE61A: FLdPr Me
  loc_ACE61D: MemLdStr global_112
  loc_ACE620: FLdPr Me
  loc_ACE623: MemLdStr global_108
  loc_ACE626: FLdPr Me
  loc_ACE629: MemLdStr global_104
  loc_ACE62C: AryLock
  loc_ACE62F: Ary1LdPr
  loc_ACE630: MemLdStr global_96
  loc_ACE633: AryLock
  loc_ACE636: Ary1LdPr
  loc_ACE637: MemLdRfVar from_stack_1.global_0
  loc_ACE63A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACE63F: AryUnlock
  loc_ACE642: AryUnlock
  loc_ACE645: FFreeAd var_8C = ""
  loc_ACE64C: FFreeVar var_BC = ""
  loc_ACE653: FLdRfVar var_A4
  loc_ACE656: LitVarStr var_A0, "AlteItco"
  loc_ACE65B: PopAdLdVar
  loc_ACE65C: FLdRfVar var_90
  loc_ACE65F: FLdRfVar var_8C
  loc_ACE662: FLdPr var_88
  loc_ACE665: from_stack_1v = clsbase.RsFrmGet()
  loc_ACE66A: FLdPr var_8C
  loc_ACE66D:  = Me.Fields
  loc_ACE672: FLdPr var_90
  loc_ACE675: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE67A: LitI2_Byte 0
  loc_ACE67C: LitVar_Missing var_DC
  loc_ACE67F: LitI2_Byte 0
  loc_ACE681: FLdZeroAd var_A4
  loc_ACE684: CVarAd
  loc_ACE688: PopAdLdVar
  loc_ACE689: FLdPr Me
  loc_ACE68C: MemLdStr global_112
  loc_ACE68F: FLdPr Me
  loc_ACE692: MemLdStr global_108
  loc_ACE695: FLdPr Me
  loc_ACE698: MemLdStr global_104
  loc_ACE69B: AryLock
  loc_ACE69E: Ary1LdPr
  loc_ACE69F: MemLdStr global_96
  loc_ACE6A2: AryLock
  loc_ACE6A5: Ary1LdPr
  loc_ACE6A6: MemLdRfVar from_stack_1.global_4
  loc_ACE6A9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACE6AE: AryUnlock
  loc_ACE6B1: AryUnlock
  loc_ACE6B4: FFreeAd var_8C = ""
  loc_ACE6BB: FFreeVar var_BC = ""
  loc_ACE6C2: FLdRfVar var_A4
  loc_ACE6C5: LitVarStr var_A0, "DetaItco"
  loc_ACE6CA: PopAdLdVar
  loc_ACE6CB: FLdRfVar var_90
  loc_ACE6CE: FLdRfVar var_8C
  loc_ACE6D1: FLdPr var_88
  loc_ACE6D4: from_stack_1v = clsbase.RsFrmGet()
  loc_ACE6D9: FLdPr var_8C
  loc_ACE6DC:  = Me.Fields
  loc_ACE6E1: FLdPr var_90
  loc_ACE6E4: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE6E9: LitI2_Byte 0
  loc_ACE6EB: LitVar_Missing var_DC
  loc_ACE6EE: LitI2_Byte 0
  loc_ACE6F0: FLdZeroAd var_A4
  loc_ACE6F3: CVarAd
  loc_ACE6F7: PopAdLdVar
  loc_ACE6F8: FLdPr Me
  loc_ACE6FB: MemLdStr global_112
  loc_ACE6FE: FLdPr Me
  loc_ACE701: MemLdStr global_108
  loc_ACE704: FLdPr Me
  loc_ACE707: MemLdStr global_104
  loc_ACE70A: AryLock
  loc_ACE70D: Ary1LdPr
  loc_ACE70E: MemLdStr global_96
  loc_ACE711: AryLock
  loc_ACE714: Ary1LdPr
  loc_ACE715: MemLdRfVar from_stack_1.global_16
  loc_ACE718: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACE71D: AryUnlock
  loc_ACE720: AryUnlock
  loc_ACE723: FFreeAd var_8C = ""
  loc_ACE72A: FFreeVar var_BC = ""
  loc_ACE731: FLdRfVar var_A4
  loc_ACE734: LitVarStr var_A0, "MarcaItco"
  loc_ACE739: PopAdLdVar
  loc_ACE73A: FLdRfVar var_90
  loc_ACE73D: FLdRfVar var_8C
  loc_ACE740: FLdPr var_88
  loc_ACE743: from_stack_1v = clsbase.RsFrmGet()
  loc_ACE748: FLdPr var_8C
  loc_ACE74B:  = Me.Fields
  loc_ACE750: FLdPr var_90
  loc_ACE753: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE758: LitI2_Byte 0
  loc_ACE75A: LitVar_Missing var_DC
  loc_ACE75D: LitI2_Byte 0
  loc_ACE75F: FLdZeroAd var_A4
  loc_ACE762: CVarAd
  loc_ACE766: PopAdLdVar
  loc_ACE767: FLdPr Me
  loc_ACE76A: MemLdStr global_112
  loc_ACE76D: FLdPr Me
  loc_ACE770: MemLdStr global_108
  loc_ACE773: FLdPr Me
  loc_ACE776: MemLdStr global_104
  loc_ACE779: AryLock
  loc_ACE77C: Ary1LdPr
  loc_ACE77D: MemLdStr global_96
  loc_ACE780: AryLock
  loc_ACE783: Ary1LdPr
  loc_ACE784: MemLdRfVar from_stack_1.global_20
  loc_ACE787: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACE78C: AryUnlock
  loc_ACE78F: AryUnlock
  loc_ACE792: FFreeAd var_8C = ""
  loc_ACE799: FFreeVar var_BC = ""
  loc_ACE7A0: FLdRfVar var_A4
  loc_ACE7A3: LitVarStr var_A0, "CaraItco"
  loc_ACE7A8: PopAdLdVar
  loc_ACE7A9: FLdRfVar var_90
  loc_ACE7AC: FLdRfVar var_8C
  loc_ACE7AF: FLdPr var_88
  loc_ACE7B2: from_stack_1v = clsbase.RsFrmGet()
  loc_ACE7B7: FLdPr var_8C
  loc_ACE7BA:  = Me.Fields
  loc_ACE7BF: FLdPr var_90
  loc_ACE7C2: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE7C7: LitI2_Byte 0
  loc_ACE7C9: LitVar_Missing var_DC
  loc_ACE7CC: LitI2_Byte 0
  loc_ACE7CE: FLdZeroAd var_A4
  loc_ACE7D1: CVarAd
  loc_ACE7D5: PopAdLdVar
  loc_ACE7D6: FLdPr Me
  loc_ACE7D9: MemLdStr global_112
  loc_ACE7DC: FLdPr Me
  loc_ACE7DF: MemLdStr global_108
  loc_ACE7E2: FLdPr Me
  loc_ACE7E5: MemLdStr global_104
  loc_ACE7E8: AryLock
  loc_ACE7EB: Ary1LdPr
  loc_ACE7EC: MemLdStr global_96
  loc_ACE7EF: AryLock
  loc_ACE7F2: Ary1LdPr
  loc_ACE7F3: MemLdRfVar from_stack_1.global_24
  loc_ACE7F6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACE7FB: AryUnlock
  loc_ACE7FE: AryUnlock
  loc_ACE801: FFreeAd var_8C = ""
  loc_ACE808: FFreeVar var_BC = ""
  loc_ACE80F: FLdRfVar var_A4
  loc_ACE812: LitVarStr var_A0, "CodiInsu"
  loc_ACE817: PopAdLdVar
  loc_ACE818: FLdRfVar var_90
  loc_ACE81B: FLdRfVar var_8C
  loc_ACE81E: FLdPr var_88
  loc_ACE821: from_stack_1v = clsbase.RsFrmGet()
  loc_ACE826: FLdPr var_8C
  loc_ACE829:  = Me.Fields
  loc_ACE82E: FLdPr var_90
  loc_ACE831: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE836: LitI2_Byte 0
  loc_ACE838: LitVar_Missing var_DC
  loc_ACE83B: LitI2_Byte 0
  loc_ACE83D: FLdZeroAd var_A4
  loc_ACE840: CVarAd
  loc_ACE844: PopAdLdVar
  loc_ACE845: FLdPr Me
  loc_ACE848: MemLdStr global_112
  loc_ACE84B: FLdPr Me
  loc_ACE84E: MemLdStr global_108
  loc_ACE851: FLdPr Me
  loc_ACE854: MemLdStr global_104
  loc_ACE857: AryLock
  loc_ACE85A: Ary1LdPr
  loc_ACE85B: MemLdStr global_96
  loc_ACE85E: AryLock
  loc_ACE861: Ary1LdPr
  loc_ACE862: MemLdRfVar from_stack_1.global_8
  loc_ACE865: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACE86A: AryUnlock
  loc_ACE86D: AryUnlock
  loc_ACE870: FFreeAd var_8C = ""
  loc_ACE877: FFreeVar var_BC = ""
  loc_ACE87E: FLdRfVar var_A4
  loc_ACE881: LitVarStr var_A0, "DetaInsu"
  loc_ACE886: PopAdLdVar
  loc_ACE887: FLdRfVar var_90
  loc_ACE88A: FLdRfVar var_8C
  loc_ACE88D: FLdPr var_88
  loc_ACE890: from_stack_1v = clsbase.RsFrmGet()
  loc_ACE895: FLdPr var_8C
  loc_ACE898:  = Me.Fields
  loc_ACE89D: FLdPr var_90
  loc_ACE8A0: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE8A5: LitI2_Byte 0
  loc_ACE8A7: LitVar_Missing var_DC
  loc_ACE8AA: LitI2_Byte 0
  loc_ACE8AC: FLdZeroAd var_A4
  loc_ACE8AF: CVarAd
  loc_ACE8B3: PopAdLdVar
  loc_ACE8B4: FLdPr Me
  loc_ACE8B7: MemLdStr global_112
  loc_ACE8BA: FLdPr Me
  loc_ACE8BD: MemLdStr global_108
  loc_ACE8C0: FLdPr Me
  loc_ACE8C3: MemLdStr global_104
  loc_ACE8C6: AryLock
  loc_ACE8C9: Ary1LdPr
  loc_ACE8CA: MemLdStr global_96
  loc_ACE8CD: AryLock
  loc_ACE8D0: Ary1LdPr
  loc_ACE8D1: MemLdRfVar from_stack_1.global_12
  loc_ACE8D4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACE8D9: AryUnlock
  loc_ACE8DC: AryUnlock
  loc_ACE8DF: FFreeAd var_8C = ""
  loc_ACE8E6: FFreeVar var_BC = ""
  loc_ACE8ED: FLdRfVar var_A4
  loc_ACE8F0: LitVarStr var_A0, "CantItco"
  loc_ACE8F5: PopAdLdVar
  loc_ACE8F6: FLdRfVar var_90
  loc_ACE8F9: FLdRfVar var_8C
  loc_ACE8FC: FLdPr var_88
  loc_ACE8FF: from_stack_1v = clsbase.RsFrmGet()
  loc_ACE904: FLdPr var_8C
  loc_ACE907:  = Me.Fields
  loc_ACE90C: FLdPr var_90
  loc_ACE90F: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE914: LitI2_Byte 0
  loc_ACE916: LitVar_Missing var_DC
  loc_ACE919: LitI2_Byte 0
  loc_ACE91B: FLdZeroAd var_A4
  loc_ACE91E: CVarAd
  loc_ACE922: PopAdLdVar
  loc_ACE923: FLdPr Me
  loc_ACE926: MemLdStr global_112
  loc_ACE929: FLdPr Me
  loc_ACE92C: MemLdStr global_108
  loc_ACE92F: FLdPr Me
  loc_ACE932: MemLdStr global_104
  loc_ACE935: AryLock
  loc_ACE938: Ary1LdPr
  loc_ACE939: MemLdStr global_96
  loc_ACE93C: AryLock
  loc_ACE93F: Ary1LdPr
  loc_ACE940: MemLdRfVar from_stack_1.global_28
  loc_ACE943: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACE948: AryUnlock
  loc_ACE94B: AryUnlock
  loc_ACE94E: FFreeAd var_8C = ""
  loc_ACE955: FFreeVar var_BC = ""
  loc_ACE95C: FLdRfVar var_A4
  loc_ACE95F: LitVarStr var_A0, "ImunItco"
  loc_ACE964: PopAdLdVar
  loc_ACE965: FLdRfVar var_90
  loc_ACE968: FLdRfVar var_8C
  loc_ACE96B: FLdPr var_88
  loc_ACE96E: from_stack_1v = clsbase.RsFrmGet()
  loc_ACE973: FLdPr var_8C
  loc_ACE976:  = Me.Fields
  loc_ACE97B: FLdPr var_90
  loc_ACE97E: from_stack_2 = Me.Item(from_stack_1)
  loc_ACE983: LitI4 -1
  loc_ACE988: LitI4 0
  loc_ACE98D: LitI4 -1
  loc_ACE992: LitI4 3
  loc_ACE997: FLdZeroAd var_A4
  loc_ACE99A: CVarAd
  loc_ACE99E: ImpAdCallI2 FormatNumber(, , , , )
  loc_ACE9A3: FStStr var_F0
  loc_ACE9A6: LitI2_Byte 0
  loc_ACE9A8: LitVar_Missing var_EC
  loc_ACE9AB: LitI2_Byte 0
  loc_ACE9AD: FLdZeroAd var_F0
  loc_ACE9B0: CVarStr var_DC
  loc_ACE9B3: PopAdLdVar
  loc_ACE9B4: FLdPr Me
  loc_ACE9B7: MemLdStr global_112
  loc_ACE9BA: FLdPr Me
  loc_ACE9BD: MemLdStr global_108
  loc_ACE9C0: FLdPr Me
  loc_ACE9C3: MemLdStr global_104
  loc_ACE9C6: AryLock
  loc_ACE9C9: Ary1LdPr
  loc_ACE9CA: MemLdStr global_96
  loc_ACE9CD: AryLock
  loc_ACE9D0: Ary1LdPr
  loc_ACE9D1: MemLdRfVar from_stack_1.global_32
  loc_ACE9D4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACE9D9: AryUnlock
  loc_ACE9DC: AryUnlock
  loc_ACE9DF: FFree1Str var_F0
  loc_ACE9E2: FFreeAd var_8C = ""
  loc_ACE9E9: FFreeVar var_BC = "": var_DC = ""
  loc_ACE9F2: FLdRfVar var_A4
  loc_ACE9F5: LitVarStr var_A0, "doImpoItco"
  loc_ACE9FA: PopAdLdVar
  loc_ACE9FB: FLdRfVar var_90
  loc_ACE9FE: FLdRfVar var_8C
  loc_ACEA01: FLdPr var_88
  loc_ACEA04: from_stack_1v = clsbase.RsFrmGet()
  loc_ACEA09: FLdPr var_8C
  loc_ACEA0C:  = Me.Fields
  loc_ACEA11: FLdPr var_90
  loc_ACEA14: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEA19: LitI2_Byte 3
  loc_ACEA1B: CUI1I2
  loc_ACEA1D: FLdPr Me
  loc_ACEA20: MemLdStr global_108
  loc_ACEA23: FLdPr Me
  loc_ACEA26: MemLdStr global_104
  loc_ACEA29: AryLock
  loc_ACEA2C: Ary1LdPr
  loc_ACEA2D: MemLdRfVar from_stack_1.global_100
  loc_ACEA30: CVarRef
  loc_ACEA35: LitI2_Byte &HFF
  loc_ACEA37: FLdZeroAd var_A4
  loc_ACEA3A: CVarAd
  loc_ACEA3E: PopAdLdVar
  loc_ACEA3F: FLdPr Me
  loc_ACEA42: MemLdStr global_112
  loc_ACEA45: FLdPr Me
  loc_ACEA48: MemLdStr global_108
  loc_ACEA4B: FLdPr Me
  loc_ACEA4E: MemLdStr global_104
  loc_ACEA51: AryLock
  loc_ACEA54: Ary1LdPr
  loc_ACEA55: MemLdStr global_96
  loc_ACEA58: AryLock
  loc_ACEA5B: Ary1LdPr
  loc_ACEA5C: MemLdRfVar from_stack_1.global_36
  loc_ACEA5F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACEA64: AryUnlock
  loc_ACEA67: AryUnlock
  loc_ACEA6A: AryUnlock
  loc_ACEA6D: FFreeAd var_8C = ""
  loc_ACEA74: FFree1Var var_BC = ""
  loc_ACEA77: FLdRfVar var_A4
  loc_ACEA7A: LitVarStr var_A0, "CodiPart"
  loc_ACEA7F: PopAdLdVar
  loc_ACEA80: FLdRfVar var_90
  loc_ACEA83: FLdRfVar var_8C
  loc_ACEA86: FLdPr var_88
  loc_ACEA89: from_stack_1v = clsbase.RsFrmGet()
  loc_ACEA8E: FLdPr var_8C
  loc_ACEA91:  = Me.Fields
  loc_ACEA96: FLdPr var_90
  loc_ACEA99: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEA9E: LitI2_Byte 0
  loc_ACEAA0: LitVar_Missing var_DC
  loc_ACEAA3: LitI2_Byte 0
  loc_ACEAA5: FLdZeroAd var_A4
  loc_ACEAA8: CVarAd
  loc_ACEAAC: PopAdLdVar
  loc_ACEAAD: FLdPr Me
  loc_ACEAB0: MemLdStr global_112
  loc_ACEAB3: FLdPr Me
  loc_ACEAB6: MemLdStr global_108
  loc_ACEAB9: FLdPr Me
  loc_ACEABC: MemLdStr global_104
  loc_ACEABF: AryLock
  loc_ACEAC2: Ary1LdPr
  loc_ACEAC3: MemLdStr global_96
  loc_ACEAC6: AryLock
  loc_ACEAC9: Ary1LdPr
  loc_ACEACA: MemLdRfVar from_stack_1.global_40
  loc_ACEACD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACEAD2: AryUnlock
  loc_ACEAD5: AryUnlock
  loc_ACEAD8: FFreeAd var_8C = ""
  loc_ACEADF: FFreeVar var_BC = ""
  loc_ACEAE6: FLdRfVar var_A4
  loc_ACEAE9: LitVarStr var_A0, "CodiOrga"
  loc_ACEAEE: PopAdLdVar
  loc_ACEAEF: FLdRfVar var_90
  loc_ACEAF2: FLdRfVar var_8C
  loc_ACEAF5: FLdPr var_88
  loc_ACEAF8: from_stack_1v = clsbase.RsFrmGet()
  loc_ACEAFD: FLdPr var_8C
  loc_ACEB00:  = Me.Fields
  loc_ACEB05: FLdPr var_90
  loc_ACEB08: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEB0D: LitI2_Byte 0
  loc_ACEB0F: LitVar_Missing var_DC
  loc_ACEB12: LitI2_Byte 0
  loc_ACEB14: FLdZeroAd var_A4
  loc_ACEB17: CVarAd
  loc_ACEB1B: PopAdLdVar
  loc_ACEB1C: FLdPr Me
  loc_ACEB1F: MemLdStr global_112
  loc_ACEB22: FLdPr Me
  loc_ACEB25: MemLdStr global_108
  loc_ACEB28: FLdPr Me
  loc_ACEB2B: MemLdStr global_104
  loc_ACEB2E: AryLock
  loc_ACEB31: Ary1LdPr
  loc_ACEB32: MemLdStr global_96
  loc_ACEB35: AryLock
  loc_ACEB38: Ary1LdPr
  loc_ACEB39: MemLdRfVar from_stack_1.global_44
  loc_ACEB3C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACEB41: AryUnlock
  loc_ACEB44: AryUnlock
  loc_ACEB47: FFreeAd var_8C = ""
  loc_ACEB4E: FFreeVar var_BC = ""
  loc_ACEB55: FLdRfVar var_A4
  loc_ACEB58: LitVarStr var_A0, "CodiFifu"
  loc_ACEB5D: PopAdLdVar
  loc_ACEB5E: FLdRfVar var_90
  loc_ACEB61: FLdRfVar var_8C
  loc_ACEB64: FLdPr var_88
  loc_ACEB67: from_stack_1v = clsbase.RsFrmGet()
  loc_ACEB6C: FLdPr var_8C
  loc_ACEB6F:  = Me.Fields
  loc_ACEB74: FLdPr var_90
  loc_ACEB77: from_stack_2 = Me.Item(from_stack_1)
  loc_ACEB7C: LitI2_Byte 0
  loc_ACEB7E: LitVar_Missing var_DC
  loc_ACEB81: LitI2_Byte 0
  loc_ACEB83: FLdZeroAd var_A4
  loc_ACEB86: CVarAd
  loc_ACEB8A: PopAdLdVar
  loc_ACEB8B: FLdPr Me
  loc_ACEB8E: MemLdStr global_112
  loc_ACEB91: FLdPr Me
  loc_ACEB94: MemLdStr global_108
  loc_ACEB97: FLdPr Me
  loc_ACEB9A: MemLdStr global_104
  loc_ACEB9D: AryLock
  loc_ACEBA0: Ary1LdPr
  loc_ACEBA1: MemLdStr global_96
  loc_ACEBA4: AryLock
  loc_ACEBA7: Ary1LdPr
  loc_ACEBA8: MemLdRfVar from_stack_1.global_48
  loc_ACEBAB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACEBB0: AryUnlock
  loc_ACEBB3: AryUnlock
  loc_ACEBB6: FFreeAd var_8C = ""
  loc_ACEBBD: FFreeVar var_BC = ""
  loc_ACEBC4: LitI2_Byte 1
  loc_ACEBC6: PopTmpLdAd2 var_F6
  loc_ACEBC9: FLdPr var_88
  loc_ACEBCC: Call clsbase.Move(from_stack_1v)
  loc_ACEBD1: LitNothing
  loc_ACEBD3: FStAd var_88 
  loc_ACEBD7: ExitProcHresult
End Function

Private Function Proc_199_39_A3E480(arg_C) 'A3E480
  'Data Table: 4E66BC
  loc_A3E250: FLdI2 arg_C
  loc_A3E253: CI4UI1
  loc_A3E254: FLdPr Me
  loc_A3E257: MemLdStr global_108
  loc_A3E25A: FLdPr Me
  loc_A3E25D: MemLdStr global_104
  loc_A3E260: AryLock
  loc_A3E263: Ary1LdPr
  loc_A3E264: MemLdStr global_96
  loc_A3E267: AryLock
  loc_A3E26A: Ary1LdRf
  loc_A3E26B: FStR4 var_90
  loc_A3E26E: FMemLdR4 var_90(0)
  loc_A3E273: LitStr ", "
  loc_A3E276: ConcatStr
  loc_A3E277: CVarStr var_CC
  loc_A3E27A: FLdRfVar var_BC
  loc_A3E27D: FLdRfVar var_AC
  loc_A3E280: LitVarStr var_A8, "CodiItco"
  loc_A3E285: PopAdLdVar
  loc_A3E286: FLdRfVar var_98
  loc_A3E289: FLdRfVar var_94
  loc_A3E28C: FLdPr Me
  loc_A3E28F: MemLdRfVar from_stack_1.global_92
  loc_A3E292: NewIfNullPr clsbase
  loc_A3E295: from_stack_1v = clsbase.RsFrmGet()
  loc_A3E29A: FLdPr var_94
  loc_A3E29D:  = Me.Fields
  loc_A3E2A2: FLdPr var_98
  loc_A3E2A5: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E2AA: FLdPr var_AC
  loc_A3E2AD:  = Me.Value
  loc_A3E2B2: FLdRfVar var_BC
  loc_A3E2B5: ConcatVar var_DC
  loc_A3E2B9: CStrVarTmp
  loc_A3E2BA: FStStrNoPop var_E0
  loc_A3E2BD: FMemStStrCopy
  loc_A3E2C2: FFree1Str var_E0
  loc_A3E2C5: FFreeAd var_94 = "": var_98 = ""
  loc_A3E2CE: FFreeVar var_CC = "": var_BC = ""
  loc_A3E2D7: FMemLdR4 var_90(4)
  loc_A3E2DC: LitStr ", "
  loc_A3E2DF: ConcatStr
  loc_A3E2E0: CVarStr var_CC
  loc_A3E2E3: FLdRfVar var_BC
  loc_A3E2E6: FLdRfVar var_AC
  loc_A3E2E9: LitVarStr var_A8, "AlteItco"
  loc_A3E2EE: PopAdLdVar
  loc_A3E2EF: FLdRfVar var_98
  loc_A3E2F2: FLdRfVar var_94
  loc_A3E2F5: FLdPr Me
  loc_A3E2F8: MemLdRfVar from_stack_1.global_92
  loc_A3E2FB: NewIfNullPr clsbase
  loc_A3E2FE: from_stack_1v = clsbase.RsFrmGet()
  loc_A3E303: FLdPr var_94
  loc_A3E306:  = Me.Fields
  loc_A3E30B: FLdPr var_98
  loc_A3E30E: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E313: FLdPr var_AC
  loc_A3E316:  = Me.Value
  loc_A3E31B: FLdRfVar var_BC
  loc_A3E31E: ConcatVar var_DC
  loc_A3E322: CStrVarTmp
  loc_A3E323: FStStrNoPop var_E0
  loc_A3E326: FMemStStrCopy
  loc_A3E32B: FFree1Str var_E0
  loc_A3E32E: FFreeAd var_94 = "": var_98 = ""
  loc_A3E337: FFreeVar var_CC = "": var_BC = ""
  loc_A3E340: FLdRfVar var_AC
  loc_A3E343: LitVarStr var_A8, "CantItco"
  loc_A3E348: PopAdLdVar
  loc_A3E349: FLdRfVar var_98
  loc_A3E34C: FLdRfVar var_94
  loc_A3E34F: FLdPr Me
  loc_A3E352: MemLdRfVar from_stack_1.global_92
  loc_A3E355: NewIfNullPr clsbase
  loc_A3E358: from_stack_1v = clsbase.RsFrmGet()
  loc_A3E35D: FLdPr var_94
  loc_A3E360:  = Me.Fields
  loc_A3E365: FLdPr var_98
  loc_A3E368: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E36D: LitI2_Byte 0
  loc_A3E36F: FMemLdRf unk_4E662D
  loc_A3E374: CVarRef
  loc_A3E379: LitI2_Byte 0
  loc_A3E37B: FLdZeroAd var_AC
  loc_A3E37E: CVarAd
  loc_A3E382: PopAdLdVar
  loc_A3E383: FLdPr Me
  loc_A3E386: MemLdRfVar from_stack_1.global_116
  loc_A3E389: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A3E38E: FFreeAd var_94 = ""
  loc_A3E395: FFree1Var var_BC = ""
  loc_A3E398: FLdRfVar var_AC
  loc_A3E39B: LitVarStr var_A8, "doImpoItco"
  loc_A3E3A0: PopAdLdVar
  loc_A3E3A1: FLdRfVar var_98
  loc_A3E3A4: FLdRfVar var_94
  loc_A3E3A7: FLdPr Me
  loc_A3E3AA: MemLdRfVar from_stack_1.global_92
  loc_A3E3AD: NewIfNullPr clsbase
  loc_A3E3B0: from_stack_1v = clsbase.RsFrmGet()
  loc_A3E3B5: FLdPr var_94
  loc_A3E3B8:  = Me.Fields
  loc_A3E3BD: FLdPr var_98
  loc_A3E3C0: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E3C5: LitI2_Byte 3
  loc_A3E3C7: CUI1I2
  loc_A3E3C9: FMemLdRf unk_4E662D
  loc_A3E3CE: CVarRef
  loc_A3E3D3: LitI2_Byte &HFF
  loc_A3E3D5: FLdZeroAd var_AC
  loc_A3E3D8: CVarAd
  loc_A3E3DC: PopAdLdVar
  loc_A3E3DD: FLdPr Me
  loc_A3E3E0: MemLdRfVar from_stack_1.global_116
  loc_A3E3E3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A3E3E8: FFreeAd var_94 = ""
  loc_A3E3EF: FFree1Var var_BC = ""
  loc_A3E3F2: FLdRfVar var_AC
  loc_A3E3F5: LitVarStr var_A8, "doImpoItco"
  loc_A3E3FA: PopAdLdVar
  loc_A3E3FB: FLdRfVar var_98
  loc_A3E3FE: FLdRfVar var_94
  loc_A3E401: FLdPr Me
  loc_A3E404: MemLdRfVar from_stack_1.global_92
  loc_A3E407: NewIfNullPr clsbase
  loc_A3E40A: from_stack_1v = clsbase.RsFrmGet()
  loc_A3E40F: FLdPr var_94
  loc_A3E412:  = Me.Fields
  loc_A3E417: FLdPr var_98
  loc_A3E41A: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E41F: LitI2_Byte 3
  loc_A3E421: CUI1I2
  loc_A3E423: FLdPr Me
  loc_A3E426: MemLdStr global_108
  loc_A3E429: FLdPr Me
  loc_A3E42C: MemLdStr global_104
  loc_A3E42F: AryLock
  loc_A3E432: Ary1LdPr
  loc_A3E433: MemLdRfVar from_stack_1.global_100
  loc_A3E436: CVarRef
  loc_A3E43B: LitI2_Byte &HFF
  loc_A3E43D: FLdZeroAd var_AC
  loc_A3E440: CVarAd
  loc_A3E444: PopAdLdVar
  loc_A3E445: FLdPr Me
  loc_A3E448: MemLdRfVar from_stack_1.global_116
  loc_A3E44B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A3E450: AryUnlock
  loc_A3E453: FFreeAd var_94 = ""
  loc_A3E45A: FFree1Var var_BC = ""
  loc_A3E45D: LitI4 0
  loc_A3E462: FStR4 var_90
  loc_A3E465: AryUnlock
  loc_A3E468: AryUnlock
  loc_A3E46B: LitI2_Byte 1
  loc_A3E46D: PopTmpLdAd2 var_F6
  loc_A3E470: FLdPr Me
  loc_A3E473: MemLdRfVar from_stack_1.global_92
  loc_A3E476: NewIfNullPr clsbase
  loc_A3E479: Call clsbase.Move(from_stack_1v)
  loc_A3E47E: ExitProcHresult
End Function

Private Function Proc_199_40_A45858() 'A45858
  'Data Table: 4E66BC
  loc_A45640: LitI2_Byte 1
  loc_A45642: FLdRfVar var_88
  loc_A45645: FLdPr Me
  loc_A45648: MemLdStr global_108
  loc_A4564B: FLdPr Me
  loc_A4564E: MemLdStr global_104
  loc_A45651: Ary1LdPr
  loc_A45652: MemLdStr global_96
  loc_A45655: LitI2_Byte 1
  loc_A45657: FnUBound
  loc_A45659: CI2I4
  loc_A4565A: ForI2 var_8C
  loc_A45660: FLdI2 var_88
  loc_A45663: CI4UI1
  loc_A45664: FLdPr Me
  loc_A45667: MemLdStr global_108
  loc_A4566A: FLdPr Me
  loc_A4566D: MemLdStr global_104
  loc_A45670: AryLock
  loc_A45673: Ary1LdPr
  loc_A45674: MemLdStr global_96
  loc_A45677: AryLock
  loc_A4567A: Ary1LdRf
  loc_A4567B: FStR4 var_98
  loc_A4567E: FLdRfVar var_214
  loc_A45681: FLdRfVar var_204
  loc_A45684: LitVarStr var_200, "ImunItco"
  loc_A45689: PopAdLdVar
  loc_A4568A: FLdRfVar var_1F0
  loc_A4568D: FLdRfVar var_1EC
  loc_A45690: FLdPr Me
  loc_A45693: MemLdRfVar from_stack_1.global_92
  loc_A45696: NewIfNullPr clsbase
  loc_A45699: from_stack_1v = clsbase.RsFrmGet()
  loc_A4569E: FLdPr var_1EC
  loc_A456A1:  = Me.Fields
  loc_A456A6: FLdPr var_1F0
  loc_A456A9: from_stack_2 = Me.Item(from_stack_1)
  loc_A456AE: FLdPr var_204
  loc_A456B1:  = Me.Value
  loc_A456B6: FMemLdR4 var_98(8)
  loc_A456BB: CI2Str
  loc_A456BD: FLdRfVar var_C4
  loc_A456C0: FLdRfVar var_B4
  loc_A456C3: LitVarStr var_B0, "CodiInsu"
  loc_A456C8: PopAdLdVar
  loc_A456C9: FLdRfVar var_A0
  loc_A456CC: FLdRfVar var_9C
  loc_A456CF: FLdPr Me
  loc_A456D2: MemLdRfVar from_stack_1.global_92
  loc_A456D5: NewIfNullPr clsbase
  loc_A456D8: from_stack_1v = clsbase.RsFrmGet()
  loc_A456DD: FLdPr var_9C
  loc_A456E0:  = Me.Fields
  loc_A456E5: FLdPr var_A0
  loc_A456E8: from_stack_2 = Me.Item(from_stack_1)
  loc_A456ED: FLdPr var_B4
  loc_A456F0:  = Me.Value
  loc_A456F5: FLdRfVar var_C4
  loc_A456F8: FnCIntVar
  loc_A456FA: EqI2
  loc_A456FB: CVarBoolI2 var_120
  loc_A456FF: FMemLdR4 var_98(16)
  loc_A45704: CVarStr var_100
  loc_A45707: HardType
  loc_A45708: FLdRfVar var_F0
  loc_A4570B: FLdRfVar var_E0
  loc_A4570E: LitVarStr var_DC, "DetaItco"
  loc_A45713: PopAdLdVar
  loc_A45714: FLdRfVar var_CC
  loc_A45717: FLdRfVar var_C8
  loc_A4571A: FLdPr Me
  loc_A4571D: MemLdRfVar from_stack_1.global_92
  loc_A45720: NewIfNullPr clsbase
  loc_A45723: from_stack_1v = clsbase.RsFrmGet()
  loc_A45728: FLdPr var_C8
  loc_A4572B:  = Me.Fields
  loc_A45730: FLdPr var_CC
  loc_A45733: from_stack_2 = Me.Item(from_stack_1)
  loc_A45738: FLdPr var_E0
  loc_A4573B:  = Me.Value
  loc_A45740: FLdRfVar var_F0
  loc_A45743: EqVar var_110
  loc_A45747: AndVar var_130
  loc_A4574B: FMemLdR4 var_98(20)
  loc_A45750: CVarStr var_16C
  loc_A45753: HardType
  loc_A45754: FLdRfVar var_15C
  loc_A45757: FLdRfVar var_14C
  loc_A4575A: LitVarStr var_148, "MarcaItco"
  loc_A4575F: PopAdLdVar
  loc_A45760: FLdRfVar var_138
  loc_A45763: FLdRfVar var_134
  loc_A45766: FLdPr Me
  loc_A45769: MemLdRfVar from_stack_1.global_92
  loc_A4576C: NewIfNullPr clsbase
  loc_A4576F: from_stack_1v = clsbase.RsFrmGet()
  loc_A45774: FLdPr var_134
  loc_A45777:  = Me.Fields
  loc_A4577C: FLdPr var_138
  loc_A4577F: from_stack_2 = Me.Item(from_stack_1)
  loc_A45784: FLdPr var_14C
  loc_A45787:  = Me.Value
  loc_A4578C: FLdRfVar var_15C
  loc_A4578F: EqVar var_17C
  loc_A45793: AndVar var_18C
  loc_A45797: FMemLdR4 var_98(24)
  loc_A4579C: CVarStr var_1C8
  loc_A4579F: HardType
  loc_A457A0: FLdRfVar var_1B8
  loc_A457A3: FLdRfVar var_1A8
  loc_A457A6: LitVarStr var_1A4, "CaraItco"
  loc_A457AB: PopAdLdVar
  loc_A457AC: FLdRfVar var_194
  loc_A457AF: FLdRfVar var_190
  loc_A457B2: FLdPr Me
  loc_A457B5: MemLdRfVar from_stack_1.global_92
  loc_A457B8: NewIfNullPr clsbase
  loc_A457BB: from_stack_1v = clsbase.RsFrmGet()
  loc_A457C0: FLdPr var_190
  loc_A457C3:  = Me.Fields
  loc_A457C8: FLdPr var_194
  loc_A457CB: from_stack_2 = Me.Item(from_stack_1)
  loc_A457D0: FLdPr var_1A8
  loc_A457D3:  = Me.Value
  loc_A457D8: FLdRfVar var_1B8
  loc_A457DB: EqVar var_1D8
  loc_A457DF: AndVar var_1E8
  loc_A457E3: FMemLdR4 var_98(32)
  loc_A457E8: CR8Str
  loc_A457EA: FLdRfVar var_214
  loc_A457ED: FnCDblVar
  loc_A457EF: EqR4
  loc_A457F0: CVarBoolI2 var_224
  loc_A457F4: AndVar var_234
  loc_A457F8: CBoolVarNull
  loc_A457FA: FFreeAd var_9C = "": var_A0 = "": var_B4 = "": var_C8 = "": var_CC = "": var_E0 = "": var_134 = "": var_138 = "": var_14C = "": var_190 = "": var_194 = "": var_1A8 = "": var_1EC = "": var_1F0 = ""
  loc_A4581B: FFreeVar var_C4 = "": var_F0 = "": var_120 = "": var_15C = "": var_1B8 = "": var_214 = ""
  loc_A4582C: BranchF loc_A4583B
  loc_A4582F: FLdI2 var_88
  loc_A45832: FStI2 var_86
  loc_A45835: ExitProcCbHresult
  loc_A4583B: LitI4 0
  loc_A45840: FStR4 var_98
  loc_A45843: AryUnlock
  loc_A45846: AryUnlock
  loc_A45849: FLdRfVar var_88
  loc_A4584C: NextI2 var_8C, loc_A45660
  loc_A45851: ExitProcCbHresult
End Function

Private Function Proc_199_41_BEC48C() 'BEC48C
  'Data Table: 4E66BC
  loc_BEA808: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BEA80D: PopAdLdVar
  loc_BEA80E: FLdPr Me
  loc_BEA811: MemLdRfVar from_stack_1.htmFile
  loc_BEA814: LdPrVar
  loc_BEA816: LateMemCall
  loc_BEA81C: LitVarStr var_98, "  <tr align=""left"" valign=""top"" class=""Normal"" nowrap=""nowrap"">"
  loc_BEA821: PopAdLdVar
  loc_BEA822: FLdPr Me
  loc_BEA825: MemLdRfVar from_stack_1.htmFile
  loc_BEA828: LdPrVar
  loc_BEA82A: LateMemCall
  loc_BEA830: LitVarStr var_98, "    <th colspan=""12"" class=""LineaDato"">"
  loc_BEA835: PopAdLdVar
  loc_BEA836: FLdPr Me
  loc_BEA839: MemLdRfVar from_stack_1.htmFile
  loc_BEA83C: LdPrVar
  loc_BEA83E: LateMemCall
  loc_BEA844: LitVarStr var_98, "  <table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_BEA849: PopAdLdVar
  loc_BEA84A: FLdPr Me
  loc_BEA84D: MemLdRfVar from_stack_1.htmFile
  loc_BEA850: LdPrVar
  loc_BEA852: LateMemCall
  loc_BEA858: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BEA85D: PopAdLdVar
  loc_BEA85E: FLdPr Me
  loc_BEA861: MemLdRfVar from_stack_1.htmFile
  loc_BEA864: LdPrVar
  loc_BEA866: LateMemCall
  loc_BEA86C: LitStr "        <td>Fecha:<br>"
  loc_BEA86F: FLdPr Me
  loc_BEA872: MemLdStr global_108
  loc_BEA875: FLdPr Me
  loc_BEA878: MemLdStr global_104
  loc_BEA87B: Ary1LdPr
  loc_BEA87C: MemLdStr global_80
  loc_BEA87F: ConcatStr
  loc_BEA880: FStStrNoPop var_AC
  loc_BEA883: LitStr "</td>"
  loc_BEA886: ConcatStr
  loc_BEA887: CVarStr var_BC
  loc_BEA88A: PopAdLdVar
  loc_BEA88B: FLdPr Me
  loc_BEA88E: MemLdRfVar from_stack_1.htmFile
  loc_BEA891: LdPrVar
  loc_BEA893: LateMemCall
  loc_BEA899: FFree1Str var_AC
  loc_BEA89C: FFree1Var var_BC = ""
  loc_BEA89F: LitStr "        <td>Tipo de compra:<br>"
  loc_BEA8A2: FLdPr Me
  loc_BEA8A5: MemLdStr global_108
  loc_BEA8A8: FLdPr Me
  loc_BEA8AB: MemLdStr global_104
  loc_BEA8AE: Ary1LdPr
  loc_BEA8AF: MemLdStr global_24
  loc_BEA8B2: ConcatStr
  loc_BEA8B3: FStStrNoPop var_AC
  loc_BEA8B6: LitStr " - "
  loc_BEA8B9: ConcatStr
  loc_BEA8BA: FStStrNoPop var_C0
  loc_BEA8BD: FLdPr Me
  loc_BEA8C0: MemLdStr global_108
  loc_BEA8C3: FLdPr Me
  loc_BEA8C6: MemLdStr global_104
  loc_BEA8C9: Ary1LdPr
  loc_BEA8CA: MemLdStr global_28
  loc_BEA8CD: ConcatStr
  loc_BEA8CE: FStStrNoPop var_C4
  loc_BEA8D1: LitStr "</td>"
  loc_BEA8D4: ConcatStr
  loc_BEA8D5: CVarStr var_BC
  loc_BEA8D8: PopAdLdVar
  loc_BEA8D9: FLdPr Me
  loc_BEA8DC: MemLdRfVar from_stack_1.htmFile
  loc_BEA8DF: LdPrVar
  loc_BEA8E1: LateMemCall
  loc_BEA8E7: FFreeStr var_AC = "": var_C0 = ""
  loc_BEA8F0: FFree1Var var_BC = ""
  loc_BEA8F3: LitStr "        <td>Expediente:<br>"
  loc_BEA8F6: FLdPr Me
  loc_BEA8F9: MemLdStr global_108
  loc_BEA8FC: FLdPr Me
  loc_BEA8FF: MemLdStr global_104
  loc_BEA902: Ary1LdPr
  loc_BEA903: MemLdStr global_60
  loc_BEA906: ConcatStr
  loc_BEA907: FStStrNoPop var_AC
  loc_BEA90A: LitStr "</td>"
  loc_BEA90D: ConcatStr
  loc_BEA90E: CVarStr var_BC
  loc_BEA911: PopAdLdVar
  loc_BEA912: FLdPr Me
  loc_BEA915: MemLdRfVar from_stack_1.htmFile
  loc_BEA918: LdPrVar
  loc_BEA91A: LateMemCall
  loc_BEA920: FFree1Str var_AC
  loc_BEA923: FFree1Var var_BC = ""
  loc_BEA926: LitStr "        <td>Nota de pedido:<br>"
  loc_BEA929: FLdPr Me
  loc_BEA92C: MemLdStr global_108
  loc_BEA92F: FLdPr Me
  loc_BEA932: MemLdStr global_104
  loc_BEA935: Ary1LdPr
  loc_BEA936: MemLdStr global_8
  loc_BEA939: ConcatStr
  loc_BEA93A: FStStrNoPop var_AC
  loc_BEA93D: LitStr " ("
  loc_BEA940: ConcatStr
  loc_BEA941: FStStrNoPop var_C0
  loc_BEA944: FLdPr Me
  loc_BEA947: MemLdStr global_108
  loc_BEA94A: FLdPr Me
  loc_BEA94D: MemLdStr global_104
  loc_BEA950: Ary1LdPr
  loc_BEA951: MemLdStr global_12
  loc_BEA954: ConcatStr
  loc_BEA955: FStStrNoPop var_C4
  loc_BEA958: LitStr ")</td>"
  loc_BEA95B: ConcatStr
  loc_BEA95C: CVarStr var_BC
  loc_BEA95F: PopAdLdVar
  loc_BEA960: FLdPr Me
  loc_BEA963: MemLdRfVar from_stack_1.htmFile
  loc_BEA966: LdPrVar
  loc_BEA968: LateMemCall
  loc_BEA96E: FFreeStr var_AC = "": var_C0 = ""
  loc_BEA977: FFree1Var var_BC = ""
  loc_BEA97A: LitStr "        <td>Área Solicitante:<br>"
  loc_BEA97D: FLdPr Me
  loc_BEA980: MemLdStr global_108
  loc_BEA983: FLdPr Me
  loc_BEA986: MemLdStr global_104
  loc_BEA989: Ary1LdPr
  loc_BEA98A: MemLdStr global_32
  loc_BEA98D: ConcatStr
  loc_BEA98E: FStStrNoPop var_AC
  loc_BEA991: LitStr " - "
  loc_BEA994: ConcatStr
  loc_BEA995: FStStrNoPop var_C0
  loc_BEA998: FLdPr Me
  loc_BEA99B: MemLdStr global_108
  loc_BEA99E: FLdPr Me
  loc_BEA9A1: MemLdStr global_104
  loc_BEA9A4: Ary1LdPr
  loc_BEA9A5: MemLdStr global_36
  loc_BEA9A8: ConcatStr
  loc_BEA9A9: FStStrNoPop var_C4
  loc_BEA9AC: LitStr "</td>"
  loc_BEA9AF: ConcatStr
  loc_BEA9B0: CVarStr var_BC
  loc_BEA9B3: PopAdLdVar
  loc_BEA9B4: FLdPr Me
  loc_BEA9B7: MemLdRfVar from_stack_1.htmFile
  loc_BEA9BA: LdPrVar
  loc_BEA9BC: LateMemCall
  loc_BEA9C2: FFreeStr var_AC = "": var_C0 = ""
  loc_BEA9CB: FFree1Var var_BC = ""
  loc_BEA9CE: LitStr "        <td>Plazo de entrega:<br>"
  loc_BEA9D1: FLdPr Me
  loc_BEA9D4: MemLdStr global_108
  loc_BEA9D7: FLdPr Me
  loc_BEA9DA: MemLdStr global_104
  loc_BEA9DD: Ary1LdPr
  loc_BEA9DE: MemLdStr global_72
  loc_BEA9E1: ConcatStr
  loc_BEA9E2: FStStrNoPop var_AC
  loc_BEA9E5: LitStr "</td>"
  loc_BEA9E8: ConcatStr
  loc_BEA9E9: CVarStr var_BC
  loc_BEA9EC: PopAdLdVar
  loc_BEA9ED: FLdPr Me
  loc_BEA9F0: MemLdRfVar from_stack_1.htmFile
  loc_BEA9F3: LdPrVar
  loc_BEA9F5: LateMemCall
  loc_BEA9FB: FFree1Str var_AC
  loc_BEA9FE: FFree1Var var_BC = ""
  loc_BEAA01: LitStr "        <td>Usuario:<br>"
  loc_BEAA04: FLdPr Me
  loc_BEAA07: MemLdStr global_108
  loc_BEAA0A: FLdPr Me
  loc_BEAA0D: MemLdStr global_104
  loc_BEAA10: Ary1LdPr
  loc_BEAA11: MemLdStr global_92
  loc_BEAA14: ConcatStr
  loc_BEAA15: FStStrNoPop var_AC
  loc_BEAA18: LitStr "</td>"
  loc_BEAA1B: ConcatStr
  loc_BEAA1C: CVarStr var_BC
  loc_BEAA1F: PopAdLdVar
  loc_BEAA20: FLdPr Me
  loc_BEAA23: MemLdRfVar from_stack_1.htmFile
  loc_BEAA26: LdPrVar
  loc_BEAA28: LateMemCall
  loc_BEAA2E: FFree1Str var_AC
  loc_BEAA31: FFree1Var var_BC = ""
  loc_BEAA34: LitStr "        <td class=""Totales"">Total:<br>"
  loc_BEAA37: FLdPr Me
  loc_BEAA3A: MemLdStr global_108
  loc_BEAA3D: FLdPr Me
  loc_BEAA40: MemLdStr global_104
  loc_BEAA43: Ary1LdPr
  loc_BEAA44: MemLdStr global_100
  loc_BEAA47: ConcatStr
  loc_BEAA48: FStStrNoPop var_AC
  loc_BEAA4B: LitStr "</td>"
  loc_BEAA4E: ConcatStr
  loc_BEAA4F: CVarStr var_BC
  loc_BEAA52: PopAdLdVar
  loc_BEAA53: FLdPr Me
  loc_BEAA56: MemLdRfVar from_stack_1.htmFile
  loc_BEAA59: LdPrVar
  loc_BEAA5B: LateMemCall
  loc_BEAA61: FFree1Str var_AC
  loc_BEAA64: FFree1Var var_BC = ""
  loc_BEAA67: LitVarStr var_98, "        </tr>"
  loc_BEAA6C: PopAdLdVar
  loc_BEAA6D: FLdPr Me
  loc_BEAA70: MemLdRfVar from_stack_1.htmFile
  loc_BEAA73: LdPrVar
  loc_BEAA75: LateMemCall
  loc_BEAA7B: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BEAA80: PopAdLdVar
  loc_BEAA81: FLdPr Me
  loc_BEAA84: MemLdRfVar from_stack_1.htmFile
  loc_BEAA87: LdPrVar
  loc_BEAA89: LateMemCall
  loc_BEAA8F: LitStr "Municipalidad de Guaymallén"
  loc_BEAA92: LitStr "Municipalidad de Malargüe"
  loc_BEAA95: EqStr
  loc_BEAA97: BranchF loc_BEAB52
  loc_BEAA9A: LitStr "        <td class=""Encabezado"" colspan=""8"">Proveedor: "
  loc_BEAA9D: FLdPr Me
  loc_BEAAA0: MemLdStr global_108
  loc_BEAAA3: FLdPr Me
  loc_BEAAA6: MemLdStr global_104
  loc_BEAAA9: Ary1LdPr
  loc_BEAAAA: MemLdStr global_44
  loc_BEAAAD: ConcatStr
  loc_BEAAAE: FStStrNoPop var_AC
  loc_BEAAB1: LitStr " - "
  loc_BEAAB4: ConcatStr
  loc_BEAAB5: FStStrNoPop var_C0
  loc_BEAAB8: FLdPr Me
  loc_BEAABB: MemLdStr global_108
  loc_BEAABE: FLdPr Me
  loc_BEAAC1: MemLdStr global_104
  loc_BEAAC4: Ary1LdPr
  loc_BEAAC5: MemLdStr global_48
  loc_BEAAC8: ConcatStr
  loc_BEAAC9: CVarStr var_F4
  loc_BEAACC: LitVarStr var_A8, vbNullString
  loc_BEAAD1: FStVarCopyObj var_D4
  loc_BEAAD4: FLdRfVar var_D4
  loc_BEAAD7: LitStr " (RUP: "
  loc_BEAADA: FLdPr Me
  loc_BEAADD: MemLdStr global_108
  loc_BEAAE0: FLdPr Me
  loc_BEAAE3: MemLdStr global_104
  loc_BEAAE6: Ary1LdPr
  loc_BEAAE7: MemLdStr global_64
  loc_BEAAEA: ConcatStr
  loc_BEAAEB: FStStrNoPop var_C4
  loc_BEAAEE: LitStr ")"
  loc_BEAAF1: ConcatStr
  loc_BEAAF2: CVarStr var_BC
  loc_BEAAF5: FLdPr Me
  loc_BEAAF8: MemLdStr global_108
  loc_BEAAFB: FLdPr Me
  loc_BEAAFE: MemLdStr global_104
  loc_BEAB01: Ary1LdPr
  loc_BEAB02: MemLdStr global_64
  loc_BEAB05: LitStr vbNullString
  loc_BEAB08: NeStr
  loc_BEAB0A: CVarBoolI2 var_98
  loc_BEAB0E: FLdRfVar var_E4
  loc_BEAB11: ImpAdCallFPR4  = IIf(, , )
  loc_BEAB16: FLdRfVar var_E4
  loc_BEAB19: ConcatVar var_104
  loc_BEAB1D: LitVarStr var_114, "</td>"
  loc_BEAB22: ConcatVar var_124
  loc_BEAB26: PopAdLdVar
  loc_BEAB27: FLdPr Me
  loc_BEAB2A: MemLdRfVar from_stack_1.htmFile
  loc_BEAB2D: LdPrVar
  loc_BEAB2F: LateMemCall
  loc_BEAB35: FFreeStr var_AC = "": var_C0 = ""
  loc_BEAB3E: FFreeVar var_98 = "": var_BC = "": var_D4 = "": var_F4 = "": var_E4 = "": var_104 = ""
  loc_BEAB4F: Branch loc_BEAC15
  loc_BEAB52: FLdPr Me
  loc_BEAB55: MemLdStr global_108
  loc_BEAB58: FLdPr Me
  loc_BEAB5B: MemLdStr global_104
  loc_BEAB5E: Ary1LdPr
  loc_BEAB5F: MemLdStr global_44
  loc_BEAB62: LitStr vbNullString
  loc_BEAB65: EqStr
  loc_BEAB67: BranchF loc_BEABC1
  loc_BEAB6A: LitStr "        <td class=""EncabezadoLeft"" colspan=""8"">Proveedor: "
  loc_BEAB6D: FLdPr Me
  loc_BEAB70: MemLdStr global_108
  loc_BEAB73: FLdPr Me
  loc_BEAB76: MemLdStr global_104
  loc_BEAB79: Ary1LdPr
  loc_BEAB7A: MemLdStr global_44
  loc_BEAB7D: ConcatStr
  loc_BEAB7E: FStStrNoPop var_AC
  loc_BEAB81: LitStr " - "
  loc_BEAB84: ConcatStr
  loc_BEAB85: FStStrNoPop var_C0
  loc_BEAB88: FLdPr Me
  loc_BEAB8B: MemLdStr global_108
  loc_BEAB8E: FLdPr Me
  loc_BEAB91: MemLdStr global_104
  loc_BEAB94: Ary1LdPr
  loc_BEAB95: MemLdStr global_48
  loc_BEAB98: ConcatStr
  loc_BEAB99: FStStrNoPop var_C4
  loc_BEAB9C: LitStr "</td>"
  loc_BEAB9F: ConcatStr
  loc_BEABA0: CVarStr var_BC
  loc_BEABA3: PopAdLdVar
  loc_BEABA4: FLdPr Me
  loc_BEABA7: MemLdRfVar from_stack_1.htmFile
  loc_BEABAA: LdPrVar
  loc_BEABAC: LateMemCall
  loc_BEABB2: FFreeStr var_AC = "": var_C0 = ""
  loc_BEABBB: FFree1Var var_BC = ""
  loc_BEABBE: Branch loc_BEAC15
  loc_BEABC1: LitStr "        <td class=""Encabezado"" colspan=""8"">Proveedor: "
  loc_BEABC4: FLdPr Me
  loc_BEABC7: MemLdStr global_108
  loc_BEABCA: FLdPr Me
  loc_BEABCD: MemLdStr global_104
  loc_BEABD0: Ary1LdPr
  loc_BEABD1: MemLdStr global_44
  loc_BEABD4: ConcatStr
  loc_BEABD5: FStStrNoPop var_AC
  loc_BEABD8: LitStr " - "
  loc_BEABDB: ConcatStr
  loc_BEABDC: FStStrNoPop var_C0
  loc_BEABDF: FLdPr Me
  loc_BEABE2: MemLdStr global_108
  loc_BEABE5: FLdPr Me
  loc_BEABE8: MemLdStr global_104
  loc_BEABEB: Ary1LdPr
  loc_BEABEC: MemLdStr global_48
  loc_BEABEF: ConcatStr
  loc_BEABF0: FStStrNoPop var_C4
  loc_BEABF3: LitStr "</td>"
  loc_BEABF6: ConcatStr
  loc_BEABF7: CVarStr var_BC
  loc_BEABFA: PopAdLdVar
  loc_BEABFB: FLdPr Me
  loc_BEABFE: MemLdRfVar from_stack_1.htmFile
  loc_BEAC01: LdPrVar
  loc_BEAC03: LateMemCall
  loc_BEAC09: FFreeStr var_AC = "": var_C0 = ""
  loc_BEAC12: FFree1Var var_BC = ""
  loc_BEAC15: LitVarStr var_98, "      </tr>"
  loc_BEAC1A: PopAdLdVar
  loc_BEAC1B: FLdPr Me
  loc_BEAC1E: MemLdRfVar from_stack_1.htmFile
  loc_BEAC21: LdPrVar
  loc_BEAC23: LateMemCall
  loc_BEAC29: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BEAC2E: PopAdLdVar
  loc_BEAC2F: FLdPr Me
  loc_BEAC32: MemLdRfVar from_stack_1.htmFile
  loc_BEAC35: LdPrVar
  loc_BEAC37: LateMemCall
  loc_BEAC3D: LitStr "        <td colspan=""8"">Domicilio: "
  loc_BEAC40: FLdPr Me
  loc_BEAC43: MemLdStr global_108
  loc_BEAC46: FLdPr Me
  loc_BEAC49: MemLdStr global_104
  loc_BEAC4C: Ary1LdPr
  loc_BEAC4D: MemLdStr htmFile
  loc_BEAC50: ConcatStr
  loc_BEAC51: FStStrNoPop var_AC
  loc_BEAC54: LitStr "</td>"
  loc_BEAC57: ConcatStr
  loc_BEAC58: CVarStr var_BC
  loc_BEAC5B: PopAdLdVar
  loc_BEAC5C: FLdPr Me
  loc_BEAC5F: MemLdRfVar from_stack_1.htmFile
  loc_BEAC62: LdPrVar
  loc_BEAC64: LateMemCall
  loc_BEAC6A: FFree1Str var_AC
  loc_BEAC6D: FFree1Var var_BC = ""
  loc_BEAC70: LitVarStr var_98, "      </tr>"
  loc_BEAC75: PopAdLdVar
  loc_BEAC76: FLdPr Me
  loc_BEAC79: MemLdRfVar from_stack_1.htmFile
  loc_BEAC7C: LdPrVar
  loc_BEAC7E: LateMemCall
  loc_BEAC84: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BEAC89: PopAdLdVar
  loc_BEAC8A: FLdPr Me
  loc_BEAC8D: MemLdRfVar from_stack_1.htmFile
  loc_BEAC90: LdPrVar
  loc_BEAC92: LateMemCall
  loc_BEAC98: LitStr "        <td colspan=""8"">Teléfono: "
  loc_BEAC9B: FLdPr Me
  loc_BEAC9E: MemLdStr global_108
  loc_BEACA1: FLdPr Me
  loc_BEACA4: MemLdStr global_104
  loc_BEACA7: Ary1LdPr
  loc_BEACA8: MemLdStr global_56
  loc_BEACAB: ConcatStr
  loc_BEACAC: FStStrNoPop var_AC
  loc_BEACAF: LitStr "</td>"
  loc_BEACB2: ConcatStr
  loc_BEACB3: CVarStr var_BC
  loc_BEACB6: PopAdLdVar
  loc_BEACB7: FLdPr Me
  loc_BEACBA: MemLdRfVar from_stack_1.htmFile
  loc_BEACBD: LdPrVar
  loc_BEACBF: LateMemCall
  loc_BEACC5: FFree1Str var_AC
  loc_BEACC8: FFree1Var var_BC = ""
  loc_BEACCB: LitVarStr var_98, "      </tr>"
  loc_BEACD0: PopAdLdVar
  loc_BEACD1: FLdPr Me
  loc_BEACD4: MemLdRfVar from_stack_1.htmFile
  loc_BEACD7: LdPrVar
  loc_BEACD9: LateMemCall
  loc_BEACDF: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BEACE4: PopAdLdVar
  loc_BEACE5: FLdPr Me
  loc_BEACE8: MemLdRfVar from_stack_1.htmFile
  loc_BEACEB: LdPrVar
  loc_BEACED: LateMemCall
  loc_BEACF3: LitStr "        <td colspan=""8"">Detalle: "
  loc_BEACF6: FLdPr Me
  loc_BEACF9: MemLdStr global_108
  loc_BEACFC: FLdPr Me
  loc_BEACFF: MemLdStr global_104
  loc_BEAD02: Ary1LdPr
  loc_BEAD03: MemLdStr global_4
  loc_BEAD06: ConcatStr
  loc_BEAD07: FStStrNoPop var_AC
  loc_BEAD0A: LitStr "</td>"
  loc_BEAD0D: ConcatStr
  loc_BEAD0E: CVarStr var_BC
  loc_BEAD11: PopAdLdVar
  loc_BEAD12: FLdPr Me
  loc_BEAD15: MemLdRfVar from_stack_1.htmFile
  loc_BEAD18: LdPrVar
  loc_BEAD1A: LateMemCall
  loc_BEAD20: FFree1Str var_AC
  loc_BEAD23: FFree1Var var_BC = ""
  loc_BEAD26: LitVarStr var_98, "      </tr>"
  loc_BEAD2B: PopAdLdVar
  loc_BEAD2C: FLdPr Me
  loc_BEAD2F: MemLdRfVar from_stack_1.htmFile
  loc_BEAD32: LdPrVar
  loc_BEAD34: LateMemCall
  loc_BEAD3A: FLdPr Me
  loc_BEAD3D: MemLdStr global_108
  loc_BEAD40: FLdPr Me
  loc_BEAD43: MemLdStr global_104
  loc_BEAD46: Ary1LdPr
  loc_BEAD47: MemLdStr global_20
  loc_BEAD4A: LitStr vbNullString
  loc_BEAD4D: NeStr
  loc_BEAD4F: BranchF loc_BEAE46
  loc_BEAD52: LitVarStr var_98, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BEAD57: PopAdLdVar
  loc_BEAD58: FLdPr Me
  loc_BEAD5B: MemLdRfVar from_stack_1.htmFile
  loc_BEAD5E: LdPrVar
  loc_BEAD60: LateMemCall
  loc_BEAD66: LitVarStr var_114, "        <td colspan=""8"">Lugar de entrega: "
  loc_BEAD6B: LitVarStr var_A8, vbNullString
  loc_BEAD70: FStVarCopyObj var_D4
  loc_BEAD73: FLdRfVar var_D4
  loc_BEAD76: FLdPr Me
  loc_BEAD79: MemLdStr global_108
  loc_BEAD7C: FLdPr Me
  loc_BEAD7F: MemLdStr global_104
  loc_BEAD82: Ary1LdPr
  loc_BEAD83: MemLdStr global_16
  loc_BEAD86: LitStr " - "
  loc_BEAD89: ConcatStr
  loc_BEAD8A: CVarStr var_BC
  loc_BEAD8D: FLdPr Me
  loc_BEAD90: MemLdStr global_108
  loc_BEAD93: FLdPr Me
  loc_BEAD96: MemLdStr global_104
  loc_BEAD99: Ary1LdPr
  loc_BEAD9A: MemLdStr global_16
  loc_BEAD9D: LitStr "0"
  loc_BEADA0: NeStr
  loc_BEADA2: CVarBoolI2 var_98
  loc_BEADA6: FLdRfVar var_E4
  loc_BEADA9: ImpAdCallFPR4  = IIf(, , )
  loc_BEADAE: FLdRfVar var_E4
  loc_BEADB1: ConcatVar var_F4
  loc_BEADB5: LitVarStr var_158, vbNullString
  loc_BEADBA: FStVarCopyObj var_104
  loc_BEADBD: FLdRfVar var_104
  loc_BEADC0: FLdPr Me
  loc_BEADC3: MemLdStr global_108
  loc_BEADC6: FLdPr Me
  loc_BEADC9: MemLdStr global_104
  loc_BEADCC: AryLock
  loc_BEADCF: Ary1LdPr
  loc_BEADD0: MemLdRfVar from_stack_1.global_20
  loc_BEADD3: CVarRef
  loc_BEADD8: FLdPr Me
  loc_BEADDB: MemLdStr global_108
  loc_BEADDE: FLdPr Me
  loc_BEADE1: MemLdStr global_104
  loc_BEADE4: Ary1LdPr
  loc_BEADE5: MemLdStr global_20
  loc_BEADE8: LitStr vbNullString
  loc_BEADEB: NeStr
  loc_BEADED: CVarBoolI2 var_134
  loc_BEADF1: FLdRfVar var_124
  loc_BEADF4: ImpAdCallFPR4  = IIf(, , )
  loc_BEADF9: AryUnlock
  loc_BEADFC: FLdRfVar var_124
  loc_BEADFF: ConcatVar var_168
  loc_BEAE03: LitVarStr var_178, "</td>"
  loc_BEAE08: ConcatVar var_188
  loc_BEAE0C: PopAdLdVar
  loc_BEAE0D: FLdPr Me
  loc_BEAE10: MemLdRfVar from_stack_1.htmFile
  loc_BEAE13: LdPrVar
  loc_BEAE15: LateMemCall
  loc_BEAE1B: FFreeVar var_98 = "": var_BC = "": var_D4 = "": var_E4 = "": var_134 = "": var_104 = "": var_F4 = "": var_124 = "": var_168 = ""
  loc_BEAE32: LitVarStr var_98, "      </tr>"
  loc_BEAE37: PopAdLdVar
  loc_BEAE38: FLdPr Me
  loc_BEAE3B: MemLdRfVar from_stack_1.htmFile
  loc_BEAE3E: LdPrVar
  loc_BEAE40: LateMemCall
  loc_BEAE46: FLdPr Me
  loc_BEAE49: MemLdStr global_108
  loc_BEAE4C: FLdPr Me
  loc_BEAE4F: MemLdStr global_104
  loc_BEAE52: Ary1LdPr
  loc_BEAE53: MemLdStr global_84
  loc_BEAE56: LitStr vbNullString
  loc_BEAE59: NeStr
  loc_BEAE5B: BranchF loc_BEAEDA
  loc_BEAE5E: LitVarStr var_98, "      <tr valign=""top"" class=""Encabezado"">"
  loc_BEAE63: PopAdLdVar
  loc_BEAE64: FLdPr Me
  loc_BEAE67: MemLdRfVar from_stack_1.htmFile
  loc_BEAE6A: LdPrVar
  loc_BEAE6C: LateMemCall
  loc_BEAE72: LitStr "        <td colspan=""8"">ANULADA<br>Fecha: "
  loc_BEAE75: FLdPr Me
  loc_BEAE78: MemLdStr global_108
  loc_BEAE7B: FLdPr Me
  loc_BEAE7E: MemLdStr global_104
  loc_BEAE81: Ary1LdPr
  loc_BEAE82: MemLdStr global_84
  loc_BEAE85: ConcatStr
  loc_BEAE86: FStStrNoPop var_AC
  loc_BEAE89: LitStr "<br>Motivo: "
  loc_BEAE8C: ConcatStr
  loc_BEAE8D: FStStrNoPop var_C0
  loc_BEAE90: FLdPr Me
  loc_BEAE93: MemLdStr global_108
  loc_BEAE96: FLdPr Me
  loc_BEAE99: MemLdStr global_104
  loc_BEAE9C: Ary1LdPr
  loc_BEAE9D: MemLdStr global_88
  loc_BEAEA0: ConcatStr
  loc_BEAEA1: FStStrNoPop var_C4
  loc_BEAEA4: LitStr "</td>"
  loc_BEAEA7: ConcatStr
  loc_BEAEA8: CVarStr var_BC
  loc_BEAEAB: PopAdLdVar
  loc_BEAEAC: FLdPr Me
  loc_BEAEAF: MemLdRfVar from_stack_1.htmFile
  loc_BEAEB2: LdPrVar
  loc_BEAEB4: LateMemCall
  loc_BEAEBA: FFreeStr var_AC = "": var_C0 = ""
  loc_BEAEC3: FFree1Var var_BC = ""
  loc_BEAEC6: LitVarStr var_98, "      </tr>"
  loc_BEAECB: PopAdLdVar
  loc_BEAECC: FLdPr Me
  loc_BEAECF: MemLdRfVar from_stack_1.htmFile
  loc_BEAED2: LdPrVar
  loc_BEAED4: LateMemCall
  loc_BEAEDA: LitVarStr var_98, "    </table></th>"
  loc_BEAEDF: PopAdLdVar
  loc_BEAEE0: FLdPr Me
  loc_BEAEE3: MemLdRfVar from_stack_1.htmFile
  loc_BEAEE6: LdPrVar
  loc_BEAEE8: LateMemCall
  loc_BEAEEE: LitVarStr var_98, "  </tr>"
  loc_BEAEF3: PopAdLdVar
  loc_BEAEF4: FLdPr Me
  loc_BEAEF7: MemLdRfVar from_stack_1.htmFile
  loc_BEAEFA: LdPrVar
  loc_BEAEFC: LateMemCall
  loc_BEAF02: FLdRfVar var_19E
  loc_BEAF05: FLdPr Me
  loc_BEAF08: VCallAd Control_ID_SoloEncabezadosChk
  loc_BEAF0B: FStAdFunc var_19C
  loc_BEAF0E: FLdPr var_19C
  loc_BEAF11:  = Me.Value
  loc_BEAF16: FLdI2 var_19E
  loc_BEAF19: CI4UI1
  loc_BEAF1A: LitI4 0
  loc_BEAF1F: EqI4
  loc_BEAF20: FFree1Ad var_19C
  loc_BEAF23: BranchF loc_BEC419
  loc_BEAF26: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BEAF2B: PopAdLdVar
  loc_BEAF2C: FLdPr Me
  loc_BEAF2F: MemLdRfVar from_stack_1.htmFile
  loc_BEAF32: LdPrVar
  loc_BEAF34: LateMemCall
  loc_BEAF3A: LitVarStr var_98, "    <th>Item</th>"
  loc_BEAF3F: PopAdLdVar
  loc_BEAF40: FLdPr Me
  loc_BEAF43: MemLdRfVar from_stack_1.htmFile
  loc_BEAF46: LdPrVar
  loc_BEAF48: LateMemCall
  loc_BEAF4E: LitVarStr var_98, "    <th>Alt.</th>"
  loc_BEAF53: PopAdLdVar
  loc_BEAF54: FLdPr Me
  loc_BEAF57: MemLdRfVar from_stack_1.htmFile
  loc_BEAF5A: LdPrVar
  loc_BEAF5C: LateMemCall
  loc_BEAF62: LitVarStr var_98, "    <th>Cantidad</th>"
  loc_BEAF67: PopAdLdVar
  loc_BEAF68: FLdPr Me
  loc_BEAF6B: MemLdRfVar from_stack_1.htmFile
  loc_BEAF6E: LdPrVar
  loc_BEAF70: LateMemCall
  loc_BEAF76: LitVarStr var_98, "    <th>Insumo</th>"
  loc_BEAF7B: PopAdLdVar
  loc_BEAF7C: FLdPr Me
  loc_BEAF7F: MemLdRfVar from_stack_1.htmFile
  loc_BEAF82: LdPrVar
  loc_BEAF84: LateMemCall
  loc_BEAF8A: LitVarStr var_98, "    <th>Detalle</th>"
  loc_BEAF8F: PopAdLdVar
  loc_BEAF90: FLdPr Me
  loc_BEAF93: MemLdRfVar from_stack_1.htmFile
  loc_BEAF96: LdPrVar
  loc_BEAF98: LateMemCall
  loc_BEAF9E: LitVarStr var_98, "    <th>Características</th>"
  loc_BEAFA3: PopAdLdVar
  loc_BEAFA4: FLdPr Me
  loc_BEAFA7: MemLdRfVar from_stack_1.htmFile
  loc_BEAFAA: LdPrVar
  loc_BEAFAC: LateMemCall
  loc_BEAFB2: LitVarStr var_98, "    <th>Marca</th>"
  loc_BEAFB7: PopAdLdVar
  loc_BEAFB8: FLdPr Me
  loc_BEAFBB: MemLdRfVar from_stack_1.htmFile
  loc_BEAFBE: LdPrVar
  loc_BEAFC0: LateMemCall
  loc_BEAFC6: LitVarStr var_98, "    <th>Importe unitario</th>"
  loc_BEAFCB: PopAdLdVar
  loc_BEAFCC: FLdPr Me
  loc_BEAFCF: MemLdRfVar from_stack_1.htmFile
  loc_BEAFD2: LdPrVar
  loc_BEAFD4: LateMemCall
  loc_BEAFDA: LitVarStr var_98, "    <th>Total</th>"
  loc_BEAFDF: PopAdLdVar
  loc_BEAFE0: FLdPr Me
  loc_BEAFE3: MemLdRfVar from_stack_1.htmFile
  loc_BEAFE6: LdPrVar
  loc_BEAFE8: LateMemCall
  loc_BEAFEE: LitVarStr var_98, "  </tr>"
  loc_BEAFF3: PopAdLdVar
  loc_BEAFF4: FLdPr Me
  loc_BEAFF7: MemLdRfVar from_stack_1.htmFile
  loc_BEAFFA: LdPrVar
  loc_BEAFFC: LateMemCall
  loc_BEB002: LitI4 1
  loc_BEB007: FLdPr Me
  loc_BEB00A: MemLdRfVar from_stack_1.global_112
  loc_BEB00D: FLdPr Me
  loc_BEB010: MemLdStr global_108
  loc_BEB013: FLdPr Me
  loc_BEB016: MemLdStr global_104
  loc_BEB019: Ary1LdPr
  loc_BEB01A: MemLdStr global_96
  loc_BEB01D: LitI2_Byte 1
  loc_BEB01F: FnUBound
  loc_BEB021: ForI4 var_1A8
  loc_BEB027: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BEB02C: PopAdLdVar
  loc_BEB02D: FLdPr Me
  loc_BEB030: MemLdRfVar from_stack_1.htmFile
  loc_BEB033: LdPrVar
  loc_BEB035: LateMemCall
  loc_BEB03B: FLdPr Me
  loc_BEB03E: MemLdStr global_112
  loc_BEB041: FLdPr Me
  loc_BEB044: MemLdStr global_108
  loc_BEB047: FLdPr Me
  loc_BEB04A: MemLdStr global_104
  loc_BEB04D: AryLock
  loc_BEB050: Ary1LdPr
  loc_BEB051: MemLdStr global_96
  loc_BEB054: AryLock
  loc_BEB057: Ary1LdRf
  loc_BEB058: FStR4 var_1B4
  loc_BEB05B: LitI4 0
  loc_BEB060: LitI4 0
  loc_BEB065: LitI2_Byte 0
  loc_BEB067: LitStr "center"
  loc_BEB06A: FMemLdR4 var_1B4(0)
  loc_BEB06F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BEB074: CVarStr var_BC
  loc_BEB077: PopAdLdVar
  loc_BEB078: FLdPr Me
  loc_BEB07B: MemLdRfVar from_stack_1.htmFile
  loc_BEB07E: LdPrVar
  loc_BEB080: LateMemCall
  loc_BEB086: FFree1Var var_BC = ""
  loc_BEB089: LitI4 0
  loc_BEB08E: LitI4 0
  loc_BEB093: LitI2_Byte 0
  loc_BEB095: LitStr "center"
  loc_BEB098: FMemLdR4 var_1B4(4)
  loc_BEB09D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BEB0A2: CVarStr var_BC
  loc_BEB0A5: PopAdLdVar
  loc_BEB0A6: FLdPr Me
  loc_BEB0A9: MemLdRfVar from_stack_1.htmFile
  loc_BEB0AC: LdPrVar
  loc_BEB0AE: LateMemCall
  loc_BEB0B4: FFree1Var var_BC = ""
  loc_BEB0B7: LitI4 0
  loc_BEB0BC: LitI4 0
  loc_BEB0C1: LitI2_Byte 0
  loc_BEB0C3: LitStr "right"
  loc_BEB0C6: FMemLdR4 var_1B4(28)
  loc_BEB0CB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BEB0D0: CVarStr var_BC
  loc_BEB0D3: PopAdLdVar
  loc_BEB0D4: FLdPr Me
  loc_BEB0D7: MemLdRfVar from_stack_1.htmFile
  loc_BEB0DA: LdPrVar
  loc_BEB0DC: LateMemCall
  loc_BEB0E2: FFree1Var var_BC = ""
  loc_BEB0E5: LitI4 0
  loc_BEB0EA: LitI4 0
  loc_BEB0EF: LitI2_Byte 0
  loc_BEB0F1: LitStr "left"
  loc_BEB0F4: FMemLdR4 var_1B4(8)
  loc_BEB0F9: LitStr " - "
  loc_BEB0FC: ConcatStr
  loc_BEB0FD: FStStrNoPop var_AC
  loc_BEB100: FMemLdR4 var_1B4(12)
  loc_BEB105: ConcatStr
  loc_BEB106: FStStrNoPop var_C0
  loc_BEB109: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BEB10E: CVarStr var_BC
  loc_BEB111: PopAdLdVar
  loc_BEB112: FLdPr Me
  loc_BEB115: MemLdRfVar from_stack_1.htmFile
  loc_BEB118: LdPrVar
  loc_BEB11A: LateMemCall
  loc_BEB120: FFreeStr var_AC = ""
  loc_BEB127: FFree1Var var_BC = ""
  loc_BEB12A: LitI4 0
  loc_BEB12F: LitI4 0
  loc_BEB134: LitI2_Byte 0
  loc_BEB136: LitStr "left"
  loc_BEB139: FMemLdR4 var_1B4(16)
  loc_BEB13E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BEB143: CVarStr var_BC
  loc_BEB146: PopAdLdVar
  loc_BEB147: FLdPr Me
  loc_BEB14A: MemLdRfVar from_stack_1.htmFile
  loc_BEB14D: LdPrVar
  loc_BEB14F: LateMemCall
  loc_BEB155: FFree1Var var_BC = ""
  loc_BEB158: LitI4 0
  loc_BEB15D: LitI4 0
  loc_BEB162: LitI2_Byte 0
  loc_BEB164: LitStr "justify"
  loc_BEB167: FMemLdR4 var_1B4(24)
  loc_BEB16C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BEB171: CVarStr var_BC
  loc_BEB174: PopAdLdVar
  loc_BEB175: FLdPr Me
  loc_BEB178: MemLdRfVar from_stack_1.htmFile
  loc_BEB17B: LdPrVar
  loc_BEB17D: LateMemCall
  loc_BEB183: FFree1Var var_BC = ""
  loc_BEB186: LitI4 0
  loc_BEB18B: LitI4 0
  loc_BEB190: LitI2_Byte 0
  loc_BEB192: LitStr "left"
  loc_BEB195: FMemLdR4 var_1B4(20)
  loc_BEB19A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BEB19F: CVarStr var_BC
  loc_BEB1A2: PopAdLdVar
  loc_BEB1A3: FLdPr Me
  loc_BEB1A6: MemLdRfVar from_stack_1.htmFile
  loc_BEB1A9: LdPrVar
  loc_BEB1AB: LateMemCall
  loc_BEB1B1: FFree1Var var_BC = ""
  loc_BEB1B4: LitI4 0
  loc_BEB1B9: LitI4 0
  loc_BEB1BE: LitI2_Byte 0
  loc_BEB1C0: LitStr "right"
  loc_BEB1C3: FMemLdR4 var_1B4(32)
  loc_BEB1C8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BEB1CD: CVarStr var_BC
  loc_BEB1D0: PopAdLdVar
  loc_BEB1D1: FLdPr Me
  loc_BEB1D4: MemLdRfVar from_stack_1.htmFile
  loc_BEB1D7: LdPrVar
  loc_BEB1D9: LateMemCall
  loc_BEB1DF: FFree1Var var_BC = ""
  loc_BEB1E2: LitI4 0
  loc_BEB1E7: LitI4 0
  loc_BEB1EC: LitI2_Byte 0
  loc_BEB1EE: LitStr "right"
  loc_BEB1F1: FMemLdR4 var_1B4(36)
  loc_BEB1F6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BEB1FB: CVarStr var_BC
  loc_BEB1FE: PopAdLdVar
  loc_BEB1FF: FLdPr Me
  loc_BEB202: MemLdRfVar from_stack_1.htmFile
  loc_BEB205: LdPrVar
  loc_BEB207: LateMemCall
  loc_BEB20D: FFree1Var var_BC = ""
  loc_BEB210: LitI4 0
  loc_BEB215: FStR4 var_1B4
  loc_BEB218: AryUnlock
  loc_BEB21B: AryUnlock
  loc_BEB21E: LitVarStr var_98, "     </tr>"
  loc_BEB223: PopAdLdVar
  loc_BEB224: FLdPr Me
  loc_BEB227: MemLdRfVar from_stack_1.htmFile
  loc_BEB22A: LdPrVar
  loc_BEB22C: LateMemCall
  loc_BEB232: FLdPr Me
  loc_BEB235: MemLdRfVar from_stack_1.global_112
  loc_BEB238: NextI4 var_1A8, loc_BEB027
  loc_BEB23D: LitVarStr var_98, "    <tr align=""right"" valign=""top"" class=""Totales"">"
  loc_BEB242: PopAdLdVar
  loc_BEB243: FLdPr Me
  loc_BEB246: MemLdRfVar from_stack_1.htmFile
  loc_BEB249: LdPrVar
  loc_BEB24B: LateMemCall
  loc_BEB251: LitVarStr var_98, "       <td colspan=""8"">Total</td>"
  loc_BEB256: PopAdLdVar
  loc_BEB257: FLdPr Me
  loc_BEB25A: MemLdRfVar from_stack_1.htmFile
  loc_BEB25D: LdPrVar
  loc_BEB25F: LateMemCall
  loc_BEB265: LitStr "       <td>"
  loc_BEB268: FLdPr Me
  loc_BEB26B: MemLdStr global_108
  loc_BEB26E: FLdPr Me
  loc_BEB271: MemLdStr global_104
  loc_BEB274: Ary1LdPr
  loc_BEB275: MemLdStr global_100
  loc_BEB278: ConcatStr
  loc_BEB279: FStStrNoPop var_AC
  loc_BEB27C: LitStr "</td>"
  loc_BEB27F: ConcatStr
  loc_BEB280: CVarStr var_BC
  loc_BEB283: PopAdLdVar
  loc_BEB284: FLdPr Me
  loc_BEB287: MemLdRfVar from_stack_1.htmFile
  loc_BEB28A: LdPrVar
  loc_BEB28C: LateMemCall
  loc_BEB292: FFree1Str var_AC
  loc_BEB295: FFree1Var var_BC = ""
  loc_BEB298: LitVarStr var_98, "    </tr>"
  loc_BEB29D: PopAdLdVar
  loc_BEB29E: FLdPr Me
  loc_BEB2A1: MemLdRfVar from_stack_1.htmFile
  loc_BEB2A4: LdPrVar
  loc_BEB2A6: LateMemCall
  loc_BEB2AC: LitVarStr var_98, "    <tr valign=""top"">"
  loc_BEB2B1: PopAdLdVar
  loc_BEB2B2: FLdPr Me
  loc_BEB2B5: MemLdRfVar from_stack_1.htmFile
  loc_BEB2B8: LdPrVar
  loc_BEB2BA: LateMemCall
  loc_BEB2C0: LitVarStr var_98, "      <td colspan=""9""><p>&nbsp;</p>"
  loc_BEB2C5: PopAdLdVar
  loc_BEB2C6: FLdPr Me
  loc_BEB2C9: MemLdRfVar from_stack_1.htmFile
  loc_BEB2CC: LdPrVar
  loc_BEB2CE: LateMemCall
  loc_BEB2D4: FLdPr Me
  loc_BEB2D7: MemLdStr global_108
  loc_BEB2DA: FLdPr Me
  loc_BEB2DD: MemLdStr global_104
  loc_BEB2E0: Ary1LdPr
  loc_BEB2E1: MemLdStr global_104
  loc_BEB2E4: LitStr "0"
  loc_BEB2E7: NeStr
  loc_BEB2E9: BranchF loc_BEB78C
  loc_BEB2EC: LitVarStr var_98, "<table width=""50" & Chr(37) & """ border=""1"" align=""left"" cellpadding=""1"" cellspacing=""0"">"
  loc_BEB2F1: PopAdLdVar
  loc_BEB2F2: FLdPr Me
  loc_BEB2F5: MemLdRfVar from_stack_1.htmFile
  loc_BEB2F8: LdPrVar
  loc_BEB2FA: LateMemCall
  loc_BEB300: LitVarStr var_98, "  <tr valign=""top"" class=""LineaDato"">"
  loc_BEB305: PopAdLdVar
  loc_BEB306: FLdPr Me
  loc_BEB309: MemLdRfVar from_stack_1.htmFile
  loc_BEB30C: LdPrVar
  loc_BEB30E: LateMemCall
  loc_BEB314: LitVarStr var_98, "    <td class=""Encabezado"">RESOLUCIÓN DGR Nro 35/95</td>"
  loc_BEB319: PopAdLdVar
  loc_BEB31A: FLdPr Me
  loc_BEB31D: MemLdRfVar from_stack_1.htmFile
  loc_BEB320: LdPrVar
  loc_BEB322: LateMemCall
  loc_BEB328: LitVarStr var_98, "  </tr>"
  loc_BEB32D: PopAdLdVar
  loc_BEB32E: FLdPr Me
  loc_BEB331: MemLdRfVar from_stack_1.htmFile
  loc_BEB334: LdPrVar
  loc_BEB336: LateMemCall
  loc_BEB33C: LitVarStr var_98, "  <tr>"
  loc_BEB341: PopAdLdVar
  loc_BEB342: FLdPr Me
  loc_BEB345: MemLdRfVar from_stack_1.htmFile
  loc_BEB348: LdPrVar
  loc_BEB34A: LateMemCall
  loc_BEB350: LitVarStr var_98, "    <td valign=""top"" class=""LineaDato"">Condición del Proveedor frente al I.V.A.</td>"
  loc_BEB355: PopAdLdVar
  loc_BEB356: FLdPr Me
  loc_BEB359: MemLdRfVar from_stack_1.htmFile
  loc_BEB35C: LdPrVar
  loc_BEB35E: LateMemCall
  loc_BEB364: LitVarStr var_98, "  </tr>"
  loc_BEB369: PopAdLdVar
  loc_BEB36A: FLdPr Me
  loc_BEB36D: MemLdRfVar from_stack_1.htmFile
  loc_BEB370: LdPrVar
  loc_BEB372: LateMemCall
  loc_BEB378: LitVarStr var_98, "  <tr>"
  loc_BEB37D: PopAdLdVar
  loc_BEB37E: FLdPr Me
  loc_BEB381: MemLdRfVar from_stack_1.htmFile
  loc_BEB384: LdPrVar
  loc_BEB386: LateMemCall
  loc_BEB38C: LitVarStr var_134, "    <td valign=""top"" class=""LineaDato"">Responsable "
  loc_BEB391: LitVarStr var_114, "NO"
  loc_BEB396: FStVarCopyObj var_D4
  loc_BEB399: FLdRfVar var_D4
  loc_BEB39C: LitVarStr var_A8, vbNullString
  loc_BEB3A1: FStVarCopyObj var_BC
  loc_BEB3A4: FLdRfVar var_BC
  loc_BEB3A7: FLdPr Me
  loc_BEB3AA: MemLdStr global_108
  loc_BEB3AD: FLdPr Me
  loc_BEB3B0: MemLdStr global_104
  loc_BEB3B3: Ary1LdPr
  loc_BEB3B4: MemLdStr bGenerado
  loc_BEB3B7: LitStr "fca"
  loc_BEB3BA: EqStr
  loc_BEB3BC: FLdPr Me
  loc_BEB3BF: MemLdStr global_108
  loc_BEB3C2: FLdPr Me
  loc_BEB3C5: MemLdStr global_104
  loc_BEB3C8: Ary1LdPr
  loc_BEB3C9: MemLdStr bGenerado
  loc_BEB3CC: LitStr "fcb"
  loc_BEB3CF: EqStr
  loc_BEB3D1: OrI4
  loc_BEB3D2: CVarBoolI2 var_98
  loc_BEB3D6: FLdRfVar var_E4
  loc_BEB3D9: ImpAdCallFPR4  = IIf(, , )
  loc_BEB3DE: FLdRfVar var_E4
  loc_BEB3E1: ConcatVar var_F4
  loc_BEB3E5: LitVarStr var_144, " Inscripto</td>"
  loc_BEB3EA: ConcatVar var_104
  loc_BEB3EE: PopAdLdVar
  loc_BEB3EF: FLdPr Me
  loc_BEB3F2: MemLdRfVar from_stack_1.htmFile
  loc_BEB3F5: LdPrVar
  loc_BEB3F7: LateMemCall
  loc_BEB3FD: FFreeVar var_98 = "": var_BC = "": var_D4 = "": var_E4 = "": var_F4 = ""
  loc_BEB40C: LitVarStr var_98, "  </tr>"
  loc_BEB411: PopAdLdVar
  loc_BEB412: FLdPr Me
  loc_BEB415: MemLdRfVar from_stack_1.htmFile
  loc_BEB418: LdPrVar
  loc_BEB41A: LateMemCall
  loc_BEB420: LitVarStr var_98, "  <tr>"
  loc_BEB425: PopAdLdVar
  loc_BEB426: FLdPr Me
  loc_BEB429: MemLdRfVar from_stack_1.htmFile
  loc_BEB42C: LdPrVar
  loc_BEB42E: LateMemCall
  loc_BEB434: LitI4 2
  loc_BEB439: FLdPr Me
  loc_BEB43C: MemLdStr global_108
  loc_BEB43F: FLdPr Me
  loc_BEB442: MemLdStr global_104
  loc_BEB445: Ary1LdPr
  loc_BEB446: MemLdStr global_100
  loc_BEB449: CR8Str
  loc_BEB44B: LitI2_Byte 1
  loc_BEB44D: CR8I2
  loc_BEB44E: FLdPr Me
  loc_BEB451: MemLdStr global_108
  loc_BEB454: FLdPr Me
  loc_BEB457: MemLdStr global_104
  loc_BEB45A: Ary1LdPr
  loc_BEB45B: MemLdStr global_108
  loc_BEB45E: CR8Str
  loc_BEB460: LitI2_Byte &H64
  loc_BEB462: CR8I2
  loc_BEB463: DivR8
  loc_BEB464: AddR8
  loc_BEB465: FnCDblR8
  loc_BEB467: DivR8
  loc_BEB468: CVarR8
  loc_BEB46C: FLdRfVar var_D4
  loc_BEB46F: ImpAdCallFPR4  = Round(, )
  loc_BEB474: LitI4 1
  loc_BEB479: LitI4 1
  loc_BEB47E: LitVarStr var_A8, "currency"
  loc_BEB483: FStVarCopyObj var_E4
  loc_BEB486: FLdRfVar var_E4
  loc_BEB489: FLdRfVar var_D4
  loc_BEB48C: ImpAdCallI2 Format$(, )
  loc_BEB491: FStStr var_C0
  loc_BEB494: LitVarStr var_158, "    <td valign=""top"" class=""LineaDato"">Importe Neto sin IVA: "
  loc_BEB499: LitI4 1
  loc_BEB49E: LitI4 1
  loc_BEB4A3: LitVarStr var_134, "currency"
  loc_BEB4A8: FStVarCopyObj var_F4
  loc_BEB4AB: FLdRfVar var_F4
  loc_BEB4AE: FLdPr Me
  loc_BEB4B1: MemLdStr global_108
  loc_BEB4B4: FLdPr Me
  loc_BEB4B7: MemLdStr global_104
  loc_BEB4BA: AryLock
  loc_BEB4BD: Ary1LdPr
  loc_BEB4BE: MemLdRfVar from_stack_1.global_100
  loc_BEB4C1: CVarRef
  loc_BEB4C6: ImpAdCallI2 Format$(, )
  loc_BEB4CB: FStStr var_AC
  loc_BEB4CE: AryUnlock
  loc_BEB4D1: FLdZeroAd var_AC
  loc_BEB4D4: CVarStr var_124
  loc_BEB4D7: FLdZeroAd var_C0
  loc_BEB4DA: CVarStr var_104
  loc_BEB4DD: FLdPr Me
  loc_BEB4E0: MemLdStr global_108
  loc_BEB4E3: FLdPr Me
  loc_BEB4E6: MemLdStr global_104
  loc_BEB4E9: Ary1LdPr
  loc_BEB4EA: MemLdStr bGenerado
  loc_BEB4ED: LitStr "fca"
  loc_BEB4F0: EqStr
  loc_BEB4F2: FLdPr Me
  loc_BEB4F5: MemLdStr global_108
  loc_BEB4F8: FLdPr Me
  loc_BEB4FB: MemLdStr global_104
  loc_BEB4FE: Ary1LdPr
  loc_BEB4FF: MemLdStr bGenerado
  loc_BEB502: LitStr "fcb"
  loc_BEB505: EqStr
  loc_BEB507: OrI4
  loc_BEB508: CVarBoolI2 var_144
  loc_BEB50C: FLdRfVar var_168
  loc_BEB50F: ImpAdCallFPR4  = IIf(, , )
  loc_BEB514: FLdRfVar var_168
  loc_BEB517: ConcatVar var_188
  loc_BEB51B: LitVarStr var_178, "</td>"
  loc_BEB520: ConcatVar var_1C4
  loc_BEB524: PopAdLdVar
  loc_BEB525: FLdPr Me
  loc_BEB528: MemLdRfVar from_stack_1.htmFile
  loc_BEB52B: LdPrVar
  loc_BEB52D: LateMemCall
  loc_BEB533: FFree1Str var_C0
  loc_BEB536: FFreeVar var_BC = "": var_D4 = "": var_E4 = "": var_F4 = "": var_144 = "": var_104 = "": var_124 = "": var_168 = "": var_188 = ""
  loc_BEB54D: LitVarStr var_98, "  </tr>"
  loc_BEB552: PopAdLdVar
  loc_BEB553: FLdPr Me
  loc_BEB556: MemLdRfVar from_stack_1.htmFile
  loc_BEB559: LdPrVar
  loc_BEB55B: LateMemCall
  loc_BEB561: LitVarStr var_98, "  <tr>"
  loc_BEB566: PopAdLdVar
  loc_BEB567: FLdPr Me
  loc_BEB56A: MemLdRfVar from_stack_1.htmFile
  loc_BEB56D: LdPrVar
  loc_BEB56F: LateMemCall
  loc_BEB575: LitI4 2
  loc_BEB57A: FLdPr Me
  loc_BEB57D: MemLdStr global_108
  loc_BEB580: FLdPr Me
  loc_BEB583: MemLdStr global_104
  loc_BEB586: Ary1LdPr
  loc_BEB587: MemLdStr global_100
  loc_BEB58A: CR8Str
  loc_BEB58C: LitI2_Byte 1
  loc_BEB58E: CR8I2
  loc_BEB58F: FLdPr Me
  loc_BEB592: MemLdStr global_108
  loc_BEB595: FLdPr Me
  loc_BEB598: MemLdStr global_104
  loc_BEB59B: Ary1LdPr
  loc_BEB59C: MemLdStr global_108
  loc_BEB59F: CR8Str
  loc_BEB5A1: LitI2_Byte &H64
  loc_BEB5A3: CR8I2
  loc_BEB5A4: DivR8
  loc_BEB5A5: AddR8
  loc_BEB5A6: FnCDblR8
  loc_BEB5A8: DivR8
  loc_BEB5A9: CVarR8
  loc_BEB5AD: FLdRfVar var_D4
  loc_BEB5B0: ImpAdCallFPR4  = Round(, )
  loc_BEB5B5: LitI4 1
  loc_BEB5BA: LitI4 1
  loc_BEB5BF: LitVarStr var_114, "currency"
  loc_BEB5C4: FStVarCopyObj var_104
  loc_BEB5C7: FLdRfVar var_104
  loc_BEB5CA: FLdPr Me
  loc_BEB5CD: MemLdStr global_108
  loc_BEB5D0: FLdPr Me
  loc_BEB5D3: MemLdStr global_104
  loc_BEB5D6: Ary1LdPr
  loc_BEB5D7: MemLdStr global_100
  loc_BEB5DA: CVarStr var_A8
  loc_BEB5DD: FLdRfVar var_D4
  loc_BEB5E0: SubVar var_E4
  loc_BEB5E4: FStVar var_F4
  loc_BEB5E8: FLdRfVar var_F4
  loc_BEB5EB: ImpAdCallI2 Format$(, )
  loc_BEB5F0: FStStr var_AC
  loc_BEB5F3: LitVarStr var_178, "    <td valign=""top"" class=""LineaDato"">Importe IVA: "
  loc_BEB5F8: LitI4 1
  loc_BEB5FD: LitI4 1
  loc_BEB602: LitVarStr var_144, "currency"
  loc_BEB607: FStVarCopyObj var_168
  loc_BEB60A: FLdRfVar var_168
  loc_BEB60D: LitVarStr var_134, "0"
  loc_BEB612: FStVarCopyObj var_124
  loc_BEB615: FLdRfVar var_124
  loc_BEB618: ImpAdCallI2 Format$(, )
  loc_BEB61D: CVarStr var_1C4
  loc_BEB620: FLdZeroAd var_AC
  loc_BEB623: CVarStr var_188
  loc_BEB626: FLdPr Me
  loc_BEB629: MemLdStr global_108
  loc_BEB62C: FLdPr Me
  loc_BEB62F: MemLdStr global_104
  loc_BEB632: Ary1LdPr
  loc_BEB633: MemLdStr bGenerado
  loc_BEB636: LitStr "fca"
  loc_BEB639: EqStr
  loc_BEB63B: FLdPr Me
  loc_BEB63E: MemLdStr global_108
  loc_BEB641: FLdPr Me
  loc_BEB644: MemLdStr global_104
  loc_BEB647: Ary1LdPr
  loc_BEB648: MemLdStr bGenerado
  loc_BEB64B: LitStr "fcb"
  loc_BEB64E: EqStr
  loc_BEB650: OrI4
  loc_BEB651: CVarBoolI2 var_158
  loc_BEB655: FLdRfVar var_1D4
  loc_BEB658: ImpAdCallFPR4  = IIf(, , )
  loc_BEB65D: FLdRfVar var_1D4
  loc_BEB660: ConcatVar var_1E4
  loc_BEB664: LitVarStr var_198, "</td>"
  loc_BEB669: ConcatVar var_1F4
  loc_BEB66D: PopAdLdVar
  loc_BEB66E: FLdPr Me
  loc_BEB671: MemLdRfVar from_stack_1.htmFile
  loc_BEB674: LdPrVar
  loc_BEB676: LateMemCall
  loc_BEB67C: FFree1Str var_AC
  loc_BEB67F: FFreeVar var_BC = "": var_D4 = "": var_F4 = "": var_104 = "": var_124 = "": var_168 = "": var_158 = "": var_188 = "": var_1C4 = "": var_1D4 = "": var_1E4 = ""
  loc_BEB69A: LitVarStr var_98, "  </tr>"
  loc_BEB69F: PopAdLdVar
  loc_BEB6A0: FLdPr Me
  loc_BEB6A3: MemLdRfVar from_stack_1.htmFile
  loc_BEB6A6: LdPrVar
  loc_BEB6A8: LateMemCall
  loc_BEB6AE: LitVarStr var_98, "  <tr>"
  loc_BEB6B3: PopAdLdVar
  loc_BEB6B4: FLdPr Me
  loc_BEB6B7: MemLdRfVar from_stack_1.htmFile
  loc_BEB6BA: LdPrVar
  loc_BEB6BC: LateMemCall
  loc_BEB6C2: LitStr "    <td valign=""top"" class=""LineaDato"">IMPUESTO A LOS SELLOS: "
  loc_BEB6C5: LitI4 1
  loc_BEB6CA: LitI4 1
  loc_BEB6CF: LitVarStr var_A8, "currency"
  loc_BEB6D4: FStVarCopyObj var_BC
  loc_BEB6D7: FLdRfVar var_BC
  loc_BEB6DA: FLdPr Me
  loc_BEB6DD: MemLdStr global_108
  loc_BEB6E0: FLdPr Me
  loc_BEB6E3: MemLdStr global_104
  loc_BEB6E6: AryLock
  loc_BEB6E9: Ary1LdPr
  loc_BEB6EA: MemLdRfVar from_stack_1.global_104
  loc_BEB6ED: CVarRef
  loc_BEB6F2: ImpAdCallI2 Format$(, )
  loc_BEB6F7: FStStr var_AC
  loc_BEB6FA: AryUnlock
  loc_BEB6FD: ILdRf var_AC
  loc_BEB700: ConcatStr
  loc_BEB701: FStStrNoPop var_C0
  loc_BEB704: LitStr "</td>"
  loc_BEB707: ConcatStr
  loc_BEB708: CVarStr var_D4
  loc_BEB70B: PopAdLdVar
  loc_BEB70C: FLdPr Me
  loc_BEB70F: MemLdRfVar from_stack_1.htmFile
  loc_BEB712: LdPrVar
  loc_BEB714: LateMemCall
  loc_BEB71A: FFreeStr var_AC = ""
  loc_BEB721: FFreeVar var_BC = ""
  loc_BEB728: LitVarStr var_98, "  </tr>"
  loc_BEB72D: PopAdLdVar
  loc_BEB72E: FLdPr Me
  loc_BEB731: MemLdRfVar from_stack_1.htmFile
  loc_BEB734: LdPrVar
  loc_BEB736: LateMemCall
  loc_BEB73C: LitVarStr var_98, "</table>"
  loc_BEB741: PopAdLdVar
  loc_BEB742: FLdPr Me
  loc_BEB745: MemLdRfVar from_stack_1.htmFile
  loc_BEB748: LdPrVar
  loc_BEB74A: LateMemCall
  loc_BEB750: LitVarStr var_98, "    </td></tr>"
  loc_BEB755: PopAdLdVar
  loc_BEB756: FLdPr Me
  loc_BEB759: MemLdRfVar from_stack_1.htmFile
  loc_BEB75C: LdPrVar
  loc_BEB75E: LateMemCall
  loc_BEB764: LitVarStr var_98, "    <tr valign=""top"">"
  loc_BEB769: PopAdLdVar
  loc_BEB76A: FLdPr Me
  loc_BEB76D: MemLdRfVar from_stack_1.htmFile
  loc_BEB770: LdPrVar
  loc_BEB772: LateMemCall
  loc_BEB778: LitVarStr var_98, "      <td colspan=""9""><p>&nbsp;</p>"
  loc_BEB77D: PopAdLdVar
  loc_BEB77E: FLdPr Me
  loc_BEB781: MemLdRfVar from_stack_1.htmFile
  loc_BEB784: LdPrVar
  loc_BEB786: LateMemCall
  loc_BEB78C: LitStr "Municipalidad de Guaymallén"
  loc_BEB78F: FStStrCopy var_208
  loc_BEB792: ILdRf var_208
  loc_BEB795: LitStr "Municipalidad de Rivadavia"
  loc_BEB798: EqStr
  loc_BEB79A: BranchF loc_BEB941
  loc_BEB79D: LitI2_Byte &HFF
  loc_BEB79F: BranchF loc_BEB84E
  loc_BEB7A2: FLdRfVar var_AC
  loc_BEB7A5: FLdPr Me
  loc_BEB7A8: MemLdStr global_108
  loc_BEB7AB: FLdPr Me
  loc_BEB7AE: MemLdStr global_104
  loc_BEB7B1: Ary1LdPr
  loc_BEB7B2: MemLdStr global_44
  loc_BEB7B5: FLdPr Me
  loc_BEB7B8: MemLdRfVar from_stack_1.global_88
  loc_BEB7BB: NewIfNullPr clsordencompra
  loc_BEB7BE: from_stack_2v = clsordencompra.BuscaDeudaComercio(from_stack_1v)
  loc_BEB7C3: ILdRf var_AC
  loc_BEB7C6: FLdPr Me
  loc_BEB7C9: MemStStrCopy
  loc_BEB7CD: FFree1Str var_AC
  loc_BEB7D0: FLdPr Me
  loc_BEB7D3: MemLdStr global_120
  loc_BEB7D6: LitStr "0"
  loc_BEB7D9: NeStr
  loc_BEB7DB: FLdPr Me
  loc_BEB7DE: MemLdStr global_120
  loc_BEB7E1: LitStr vbNullString
  loc_BEB7E4: NeStr
  loc_BEB7E6: AndI4
  loc_BEB7E7: BranchF loc_BEB84E
  loc_BEB7EA: LitVarStr var_98, "Sr. Proveedor: RECUERDE que al "
  loc_BEB7EF: LitI2_Byte 0
  loc_BEB7F1: PopTmpLdAd2 var_19E
  loc_BEB7F4: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_BEB7F9: CVarDate var_A8
  loc_BEB7FD: ConcatVar var_BC
  loc_BEB801: LitVarStr var_114, " registra una deuda por comercio de $ "
  loc_BEB806: ConcatVar var_D4
  loc_BEB80A: FLdPr Me
  loc_BEB80D: MemLdStr global_120
  loc_BEB810: CVarStr var_134
  loc_BEB813: ConcatVar var_E4
  loc_BEB817: LitVarStr var_144, ".<br>"
  loc_BEB81C: ConcatVar var_F4
  loc_BEB820: PopAdLdVar
  loc_BEB821: FLdPr Me
  loc_BEB824: MemLdRfVar from_stack_1.htmFile
  loc_BEB827: LdPrVar
  loc_BEB829: LateMemCall
  loc_BEB82F: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_BEB83A: LitVarStr var_98, "Por favor, pase por Dirección de Inspección y Recaudación a regularizar su situación. Gracias..."
  loc_BEB83F: PopAdLdVar
  loc_BEB840: FLdPr Me
  loc_BEB843: MemLdRfVar from_stack_1.htmFile
  loc_BEB846: LdPrVar
  loc_BEB848: LateMemCall
  loc_BEB84E: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BEB853: PopAdLdVar
  loc_BEB854: FLdPr Me
  loc_BEB857: MemLdRfVar from_stack_1.htmFile
  loc_BEB85A: LdPrVar
  loc_BEB85C: LateMemCall
  loc_BEB862: LitVarStr var_98, "         <tr align=""center"">"
  loc_BEB867: PopAdLdVar
  loc_BEB868: FLdPr Me
  loc_BEB86B: MemLdRfVar from_stack_1.htmFile
  loc_BEB86E: LdPrVar
  loc_BEB870: LateMemCall
  loc_BEB876: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEB87B: PopAdLdVar
  loc_BEB87C: FLdPr Me
  loc_BEB87F: MemLdRfVar from_stack_1.htmFile
  loc_BEB882: LdPrVar
  loc_BEB884: LateMemCall
  loc_BEB88A: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEB88F: PopAdLdVar
  loc_BEB890: FLdPr Me
  loc_BEB893: MemLdRfVar from_stack_1.htmFile
  loc_BEB896: LdPrVar
  loc_BEB898: LateMemCall
  loc_BEB89E: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEB8A3: PopAdLdVar
  loc_BEB8A4: FLdPr Me
  loc_BEB8A7: MemLdRfVar from_stack_1.htmFile
  loc_BEB8AA: LdPrVar
  loc_BEB8AC: LateMemCall
  loc_BEB8B2: LitVarStr var_98, "         </tr>"
  loc_BEB8B7: PopAdLdVar
  loc_BEB8B8: FLdPr Me
  loc_BEB8BB: MemLdRfVar from_stack_1.htmFile
  loc_BEB8BE: LdPrVar
  loc_BEB8C0: LateMemCall
  loc_BEB8C6: LitVarStr var_98, "         <tr>"
  loc_BEB8CB: PopAdLdVar
  loc_BEB8CC: FLdPr Me
  loc_BEB8CF: MemLdRfVar from_stack_1.htmFile
  loc_BEB8D2: LdPrVar
  loc_BEB8D4: LateMemCall
  loc_BEB8DA: LitVarStr var_98, "           <td class=""Normal"" align=""center"">Firma<br></td>"
  loc_BEB8DF: PopAdLdVar
  loc_BEB8E0: FLdPr Me
  loc_BEB8E3: MemLdRfVar from_stack_1.htmFile
  loc_BEB8E6: LdPrVar
  loc_BEB8E8: LateMemCall
  loc_BEB8EE: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEB8F3: PopAdLdVar
  loc_BEB8F4: FLdPr Me
  loc_BEB8F7: MemLdRfVar from_stack_1.htmFile
  loc_BEB8FA: LdPrVar
  loc_BEB8FC: LateMemCall
  loc_BEB902: LitVarStr var_98, "           <td class=""Normal"" align=""center"">Firma<br></td>"
  loc_BEB907: PopAdLdVar
  loc_BEB908: FLdPr Me
  loc_BEB90B: MemLdRfVar from_stack_1.htmFile
  loc_BEB90E: LdPrVar
  loc_BEB910: LateMemCall
  loc_BEB916: LitVarStr var_98, "         </tr>"
  loc_BEB91B: PopAdLdVar
  loc_BEB91C: FLdPr Me
  loc_BEB91F: MemLdRfVar from_stack_1.htmFile
  loc_BEB922: LdPrVar
  loc_BEB924: LateMemCall
  loc_BEB92A: LitVarStr var_98, "        </table>"
  loc_BEB92F: PopAdLdVar
  loc_BEB930: FLdPr Me
  loc_BEB933: MemLdRfVar from_stack_1.htmFile
  loc_BEB936: LdPrVar
  loc_BEB938: LateMemCall
  loc_BEB93E: Branch loc_BEC2D0
  loc_BEB941: ILdRf var_208
  loc_BEB944: LitStr "Municipalidad de General Alvear"
  loc_BEB947: EqStr
  loc_BEB949: BranchF loc_BEBA3F
  loc_BEB94C: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BEB951: PopAdLdVar
  loc_BEB952: FLdPr Me
  loc_BEB955: MemLdRfVar from_stack_1.htmFile
  loc_BEB958: LdPrVar
  loc_BEB95A: LateMemCall
  loc_BEB960: LitVarStr var_98, "         <tr align=""center"">"
  loc_BEB965: PopAdLdVar
  loc_BEB966: FLdPr Me
  loc_BEB969: MemLdRfVar from_stack_1.htmFile
  loc_BEB96C: LdPrVar
  loc_BEB96E: LateMemCall
  loc_BEB974: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEB979: PopAdLdVar
  loc_BEB97A: FLdPr Me
  loc_BEB97D: MemLdRfVar from_stack_1.htmFile
  loc_BEB980: LdPrVar
  loc_BEB982: LateMemCall
  loc_BEB988: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEB98D: PopAdLdVar
  loc_BEB98E: FLdPr Me
  loc_BEB991: MemLdRfVar from_stack_1.htmFile
  loc_BEB994: LdPrVar
  loc_BEB996: LateMemCall
  loc_BEB99C: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEB9A1: PopAdLdVar
  loc_BEB9A2: FLdPr Me
  loc_BEB9A5: MemLdRfVar from_stack_1.htmFile
  loc_BEB9A8: LdPrVar
  loc_BEB9AA: LateMemCall
  loc_BEB9B0: LitVarStr var_98, "         </tr>"
  loc_BEB9B5: PopAdLdVar
  loc_BEB9B6: FLdPr Me
  loc_BEB9B9: MemLdRfVar from_stack_1.htmFile
  loc_BEB9BC: LdPrVar
  loc_BEB9BE: LateMemCall
  loc_BEB9C4: LitVarStr var_98, "         <tr>"
  loc_BEB9C9: PopAdLdVar
  loc_BEB9CA: FLdPr Me
  loc_BEB9CD: MemLdRfVar from_stack_1.htmFile
  loc_BEB9D0: LdPrVar
  loc_BEB9D2: LateMemCall
  loc_BEB9D8: LitVarStr var_98, "           <td class=""Normal"" align=""center"">Firma<br></td>"
  loc_BEB9DD: PopAdLdVar
  loc_BEB9DE: FLdPr Me
  loc_BEB9E1: MemLdRfVar from_stack_1.htmFile
  loc_BEB9E4: LdPrVar
  loc_BEB9E6: LateMemCall
  loc_BEB9EC: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEB9F1: PopAdLdVar
  loc_BEB9F2: FLdPr Me
  loc_BEB9F5: MemLdRfVar from_stack_1.htmFile
  loc_BEB9F8: LdPrVar
  loc_BEB9FA: LateMemCall
  loc_BEBA00: LitVarStr var_98, "           <td class=""Normal"" align=""center"">Firma<br></td>"
  loc_BEBA05: PopAdLdVar
  loc_BEBA06: FLdPr Me
  loc_BEBA09: MemLdRfVar from_stack_1.htmFile
  loc_BEBA0C: LdPrVar
  loc_BEBA0E: LateMemCall
  loc_BEBA14: LitVarStr var_98, "         </tr>"
  loc_BEBA19: PopAdLdVar
  loc_BEBA1A: FLdPr Me
  loc_BEBA1D: MemLdRfVar from_stack_1.htmFile
  loc_BEBA20: LdPrVar
  loc_BEBA22: LateMemCall
  loc_BEBA28: LitVarStr var_98, "        </table>"
  loc_BEBA2D: PopAdLdVar
  loc_BEBA2E: FLdPr Me
  loc_BEBA31: MemLdRfVar from_stack_1.htmFile
  loc_BEBA34: LdPrVar
  loc_BEBA36: LateMemCall
  loc_BEBA3C: Branch loc_BEC2D0
  loc_BEBA3F: ILdRf var_208
  loc_BEBA42: LitStr "Municipalidad de Guaymallén"
  loc_BEBA45: EqStr
  loc_BEBA47: BranchF loc_BEBB3D
  loc_BEBA4A: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BEBA4F: PopAdLdVar
  loc_BEBA50: FLdPr Me
  loc_BEBA53: MemLdRfVar from_stack_1.htmFile
  loc_BEBA56: LdPrVar
  loc_BEBA58: LateMemCall
  loc_BEBA5E: LitVarStr var_98, "         <br><br><br><br><br><tr align=""center"">"
  loc_BEBA63: PopAdLdVar
  loc_BEBA64: FLdPr Me
  loc_BEBA67: MemLdRfVar from_stack_1.htmFile
  loc_BEBA6A: LdPrVar
  loc_BEBA6C: LateMemCall
  loc_BEBA72: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEBA77: PopAdLdVar
  loc_BEBA78: FLdPr Me
  loc_BEBA7B: MemLdRfVar from_stack_1.htmFile
  loc_BEBA7E: LdPrVar
  loc_BEBA80: LateMemCall
  loc_BEBA86: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEBA8B: PopAdLdVar
  loc_BEBA8C: FLdPr Me
  loc_BEBA8F: MemLdRfVar from_stack_1.htmFile
  loc_BEBA92: LdPrVar
  loc_BEBA94: LateMemCall
  loc_BEBA9A: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEBA9F: PopAdLdVar
  loc_BEBAA0: FLdPr Me
  loc_BEBAA3: MemLdRfVar from_stack_1.htmFile
  loc_BEBAA6: LdPrVar
  loc_BEBAA8: LateMemCall
  loc_BEBAAE: LitVarStr var_98, "         </tr>"
  loc_BEBAB3: PopAdLdVar
  loc_BEBAB4: FLdPr Me
  loc_BEBAB7: MemLdRfVar from_stack_1.htmFile
  loc_BEBABA: LdPrVar
  loc_BEBABC: LateMemCall
  loc_BEBAC2: LitVarStr var_98, "         <tr>"
  loc_BEBAC7: PopAdLdVar
  loc_BEBAC8: FLdPr Me
  loc_BEBACB: MemLdRfVar from_stack_1.htmFile
  loc_BEBACE: LdPrVar
  loc_BEBAD0: LateMemCall
  loc_BEBAD6: LitVarStr var_98, "           <td class=""Normal"" align=""center"">Firma del Adjudicatario<br></td>"
  loc_BEBADB: PopAdLdVar
  loc_BEBADC: FLdPr Me
  loc_BEBADF: MemLdRfVar from_stack_1.htmFile
  loc_BEBAE2: LdPrVar
  loc_BEBAE4: LateMemCall
  loc_BEBAEA: LitVarStr var_98, "           <td class=""Normal"" align=""center"">Aclaración del Adjudicatario / Fecha<br></td>"
  loc_BEBAEF: PopAdLdVar
  loc_BEBAF0: FLdPr Me
  loc_BEBAF3: MemLdRfVar from_stack_1.htmFile
  loc_BEBAF6: LdPrVar
  loc_BEBAF8: LateMemCall
  loc_BEBAFE: LitVarStr var_98, "           <td class=""Normal"" align=""center"">P/MUNICIPALIDAD de GUAYMALLÉN<br></td>"
  loc_BEBB03: PopAdLdVar
  loc_BEBB04: FLdPr Me
  loc_BEBB07: MemLdRfVar from_stack_1.htmFile
  loc_BEBB0A: LdPrVar
  loc_BEBB0C: LateMemCall
  loc_BEBB12: LitVarStr var_98, "         </tr>"
  loc_BEBB17: PopAdLdVar
  loc_BEBB18: FLdPr Me
  loc_BEBB1B: MemLdRfVar from_stack_1.htmFile
  loc_BEBB1E: LdPrVar
  loc_BEBB20: LateMemCall
  loc_BEBB26: LitVarStr var_98, "        </table>"
  loc_BEBB2B: PopAdLdVar
  loc_BEBB2C: FLdPr Me
  loc_BEBB2F: MemLdRfVar from_stack_1.htmFile
  loc_BEBB32: LdPrVar
  loc_BEBB34: LateMemCall
  loc_BEBB3A: Branch loc_BEC2D0
  loc_BEBB3D: ILdRf var_208
  loc_BEBB40: LitStr "Municipalidad de Maipú"
  loc_BEBB43: EqStr
  loc_BEBB45: BranchF loc_BEBF12
  loc_BEBB48: FLdRfVar var_19E
  loc_BEBB4B: FLdPr Me
  loc_BEBB4E: VCallAd Control_ID_chkIncluyelafirma
  loc_BEBB51: FStAdFunc var_19C
  loc_BEBB54: FLdPr var_19C
  loc_BEBB57:  = Me.Value
  loc_BEBB5C: FLdI2 var_19E
  loc_BEBB5F: CI4UI1
  loc_BEBB60: LitI4 1
  loc_BEBB65: EqI4
  loc_BEBB66: ImpAdLdI4 MemVar_C3D03C
  loc_BEBB69: LitStr "Gustavo"
  loc_BEBB6C: EqStr
  loc_BEBB6E: ImpAdLdI4 MemVar_C3D03C
  loc_BEBB71: LitStr "dani"
  loc_BEBB74: EqStr
  loc_BEBB76: OrI4
  loc_BEBB77: ImpAdLdI4 MemVar_C3D03C
  loc_BEBB7A: LitStr "root"
  loc_BEBB7D: EqStr
  loc_BEBB7F: OrI4
  loc_BEBB80: AndI4
  loc_BEBB81: FFree1Ad var_19C
  loc_BEBB84: BranchF loc_BEBE00
  loc_BEBB87: LitStr "Gustavo"
  loc_BEBB8A: ImpAdCallI2 Proc_259_41_A4C348()
  loc_BEBB8F: FStAdFunc var_88
  loc_BEBB92: FLdPr Me
  loc_BEBB95: MemLdRfVar from_stack_1.global_80
  loc_BEBB98: NewIfNullRf
  loc_BEBB9C: LitStr "Gustavo"
  loc_BEBB9F: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_BEBBA4: ILdRf var_88
  loc_BEBBA7: LitNothing
  loc_BEBBA9: Is
  loc_BEBBAB: NotI4
  loc_BEBBAC: BranchF loc_BEBCEE
  loc_BEBBAF: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BEBBB4: PopAdLdVar
  loc_BEBBB5: FLdPr Me
  loc_BEBBB8: MemLdRfVar from_stack_1.htmFile
  loc_BEBBBB: LdPrVar
  loc_BEBBBD: LateMemCall
  loc_BEBBC3: LitVarStr var_98, "         <tr align=""center"">"
  loc_BEBBC8: PopAdLdVar
  loc_BEBBC9: FLdPr Me
  loc_BEBBCC: MemLdRfVar from_stack_1.htmFile
  loc_BEBBCF: LdPrVar
  loc_BEBBD1: LateMemCall
  loc_BEBBD7: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEBBDC: PopAdLdVar
  loc_BEBBDD: FLdPr Me
  loc_BEBBE0: MemLdRfVar from_stack_1.htmFile
  loc_BEBBE3: LdPrVar
  loc_BEBBE5: LateMemCall
  loc_BEBBEB: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEBBF0: PopAdLdVar
  loc_BEBBF1: FLdPr Me
  loc_BEBBF4: MemLdRfVar from_stack_1.htmFile
  loc_BEBBF7: LdPrVar
  loc_BEBBF9: LateMemCall
  loc_BEBBFF: LitVarStr var_98, "           <td><img src=""c:\temppic"" alt=""firma"" height=""88"" width=""167""><br><hr width=""80" & Chr(37) & """></td>"
  loc_BEBC04: PopAdLdVar
  loc_BEBC05: FLdPr Me
  loc_BEBC08: MemLdRfVar from_stack_1.htmFile
  loc_BEBC0B: LdPrVar
  loc_BEBC0D: LateMemCall
  loc_BEBC13: LitVarStr var_98, "         </tr>"
  loc_BEBC18: PopAdLdVar
  loc_BEBC19: FLdPr Me
  loc_BEBC1C: MemLdRfVar from_stack_1.htmFile
  loc_BEBC1F: LdPrVar
  loc_BEBC21: LateMemCall
  loc_BEBC27: LitVarStr var_98, "         <tr>"
  loc_BEBC2C: PopAdLdVar
  loc_BEBC2D: FLdPr Me
  loc_BEBC30: MemLdRfVar from_stack_1.htmFile
  loc_BEBC33: LdPrVar
  loc_BEBC35: LateMemCall
  loc_BEBC3B: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEBC40: PopAdLdVar
  loc_BEBC41: FLdPr Me
  loc_BEBC44: MemLdRfVar from_stack_1.htmFile
  loc_BEBC47: LdPrVar
  loc_BEBC49: LateMemCall
  loc_BEBC4F: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEBC54: PopAdLdVar
  loc_BEBC55: FLdPr Me
  loc_BEBC58: MemLdRfVar from_stack_1.htmFile
  loc_BEBC5B: LdPrVar
  loc_BEBC5D: LateMemCall
  loc_BEBC63: LitStr "           <td class=""Normal"" align=""center"">"
  loc_BEBC66: FLdRfVar var_AC
  loc_BEBC69: FLdPr Me
  loc_BEBC6C: MemLdRfVar from_stack_1.global_80
  loc_BEBC6F: NewIfNullPr tblusuario
  loc_BEBC72: from_stack_1v = tblusuario.DetaUsuaGet()
  loc_BEBC77: ILdRf var_AC
  loc_BEBC7A: ConcatStr
  loc_BEBC7B: FStStrNoPop var_C0
  loc_BEBC7E: LitStr "<br>"
  loc_BEBC81: ConcatStr
  loc_BEBC82: FStStrNoPop var_20C
  loc_BEBC85: FLdRfVar var_C4
  loc_BEBC88: FLdPr Me
  loc_BEBC8B: MemLdRfVar from_stack_1.global_80
  loc_BEBC8E: NewIfNullPr tblusuario
  loc_BEBC91: from_stack_1v = tblusuario.CargUsuaGet()
  loc_BEBC96: ILdRf var_C4
  loc_BEBC99: ConcatStr
  loc_BEBC9A: FStStrNoPop var_210
  loc_BEBC9D: LitStr " </td>"
  loc_BEBCA0: ConcatStr
  loc_BEBCA1: CVarStr var_BC
  loc_BEBCA4: PopAdLdVar
  loc_BEBCA5: FLdPr Me
  loc_BEBCA8: MemLdRfVar from_stack_1.htmFile
  loc_BEBCAB: LdPrVar
  loc_BEBCAD: LateMemCall
  loc_BEBCB3: FFreeStr var_AC = "": var_C0 = "": var_20C = "": var_C4 = ""
  loc_BEBCC0: FFree1Var var_BC = ""
  loc_BEBCC3: LitVarStr var_98, "         </tr>"
  loc_BEBCC8: PopAdLdVar
  loc_BEBCC9: FLdPr Me
  loc_BEBCCC: MemLdRfVar from_stack_1.htmFile
  loc_BEBCCF: LdPrVar
  loc_BEBCD1: LateMemCall
  loc_BEBCD7: LitVarStr var_98, "        </table>"
  loc_BEBCDC: PopAdLdVar
  loc_BEBCDD: FLdPr Me
  loc_BEBCE0: MemLdRfVar from_stack_1.htmFile
  loc_BEBCE3: LdPrVar
  loc_BEBCE5: LateMemCall
  loc_BEBCEB: Branch loc_BEBDFD
  loc_BEBCEE: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BEBCF3: PopAdLdVar
  loc_BEBCF4: FLdPr Me
  loc_BEBCF7: MemLdRfVar from_stack_1.htmFile
  loc_BEBCFA: LdPrVar
  loc_BEBCFC: LateMemCall
  loc_BEBD02: LitVarStr var_98, "         <tr align=""center"">"
  loc_BEBD07: PopAdLdVar
  loc_BEBD08: FLdPr Me
  loc_BEBD0B: MemLdRfVar from_stack_1.htmFile
  loc_BEBD0E: LdPrVar
  loc_BEBD10: LateMemCall
  loc_BEBD16: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEBD1B: PopAdLdVar
  loc_BEBD1C: FLdPr Me
  loc_BEBD1F: MemLdRfVar from_stack_1.htmFile
  loc_BEBD22: LdPrVar
  loc_BEBD24: LateMemCall
  loc_BEBD2A: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEBD2F: PopAdLdVar
  loc_BEBD30: FLdPr Me
  loc_BEBD33: MemLdRfVar from_stack_1.htmFile
  loc_BEBD36: LdPrVar
  loc_BEBD38: LateMemCall
  loc_BEBD3E: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEBD43: PopAdLdVar
  loc_BEBD44: FLdPr Me
  loc_BEBD47: MemLdRfVar from_stack_1.htmFile
  loc_BEBD4A: LdPrVar
  loc_BEBD4C: LateMemCall
  loc_BEBD52: LitVarStr var_98, "         </tr>"
  loc_BEBD57: PopAdLdVar
  loc_BEBD58: FLdPr Me
  loc_BEBD5B: MemLdRfVar from_stack_1.htmFile
  loc_BEBD5E: LdPrVar
  loc_BEBD60: LateMemCall
  loc_BEBD66: LitVarStr var_98, "         <tr>"
  loc_BEBD6B: PopAdLdVar
  loc_BEBD6C: FLdPr Me
  loc_BEBD6F: MemLdRfVar from_stack_1.htmFile
  loc_BEBD72: LdPrVar
  loc_BEBD74: LateMemCall
  loc_BEBD7A: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEBD7F: PopAdLdVar
  loc_BEBD80: FLdPr Me
  loc_BEBD83: MemLdRfVar from_stack_1.htmFile
  loc_BEBD86: LdPrVar
  loc_BEBD88: LateMemCall
  loc_BEBD8E: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEBD93: PopAdLdVar
  loc_BEBD94: FLdPr Me
  loc_BEBD97: MemLdRfVar from_stack_1.htmFile
  loc_BEBD9A: LdPrVar
  loc_BEBD9C: LateMemCall
  loc_BEBDA2: LitStr "           <td class=""Normal"" align=""center"">Firma<br>"
  loc_BEBDA5: FLdPr Me
  loc_BEBDA8: MemLdStr global_108
  loc_BEBDAB: FLdPr Me
  loc_BEBDAE: MemLdStr global_104
  loc_BEBDB1: Ary1LdPr
  loc_BEBDB2: MemLdStr global_40
  loc_BEBDB5: ConcatStr
  loc_BEBDB6: FStStrNoPop var_AC
  loc_BEBDB9: LitStr " </td>"
  loc_BEBDBC: ConcatStr
  loc_BEBDBD: CVarStr var_BC
  loc_BEBDC0: PopAdLdVar
  loc_BEBDC1: FLdPr Me
  loc_BEBDC4: MemLdRfVar from_stack_1.htmFile
  loc_BEBDC7: LdPrVar
  loc_BEBDC9: LateMemCall
  loc_BEBDCF: FFree1Str var_AC
  loc_BEBDD2: FFree1Var var_BC = ""
  loc_BEBDD5: LitVarStr var_98, "         </tr>"
  loc_BEBDDA: PopAdLdVar
  loc_BEBDDB: FLdPr Me
  loc_BEBDDE: MemLdRfVar from_stack_1.htmFile
  loc_BEBDE1: LdPrVar
  loc_BEBDE3: LateMemCall
  loc_BEBDE9: LitVarStr var_98, "        </table>"
  loc_BEBDEE: PopAdLdVar
  loc_BEBDEF: FLdPr Me
  loc_BEBDF2: MemLdRfVar from_stack_1.htmFile
  loc_BEBDF5: LdPrVar
  loc_BEBDF7: LateMemCall
  loc_BEBDFD: Branch loc_BEBF0F
  loc_BEBE00: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BEBE05: PopAdLdVar
  loc_BEBE06: FLdPr Me
  loc_BEBE09: MemLdRfVar from_stack_1.htmFile
  loc_BEBE0C: LdPrVar
  loc_BEBE0E: LateMemCall
  loc_BEBE14: LitVarStr var_98, "         <tr align=""center"">"
  loc_BEBE19: PopAdLdVar
  loc_BEBE1A: FLdPr Me
  loc_BEBE1D: MemLdRfVar from_stack_1.htmFile
  loc_BEBE20: LdPrVar
  loc_BEBE22: LateMemCall
  loc_BEBE28: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEBE2D: PopAdLdVar
  loc_BEBE2E: FLdPr Me
  loc_BEBE31: MemLdRfVar from_stack_1.htmFile
  loc_BEBE34: LdPrVar
  loc_BEBE36: LateMemCall
  loc_BEBE3C: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEBE41: PopAdLdVar
  loc_BEBE42: FLdPr Me
  loc_BEBE45: MemLdRfVar from_stack_1.htmFile
  loc_BEBE48: LdPrVar
  loc_BEBE4A: LateMemCall
  loc_BEBE50: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEBE55: PopAdLdVar
  loc_BEBE56: FLdPr Me
  loc_BEBE59: MemLdRfVar from_stack_1.htmFile
  loc_BEBE5C: LdPrVar
  loc_BEBE5E: LateMemCall
  loc_BEBE64: LitVarStr var_98, "         </tr>"
  loc_BEBE69: PopAdLdVar
  loc_BEBE6A: FLdPr Me
  loc_BEBE6D: MemLdRfVar from_stack_1.htmFile
  loc_BEBE70: LdPrVar
  loc_BEBE72: LateMemCall
  loc_BEBE78: LitVarStr var_98, "         <tr>"
  loc_BEBE7D: PopAdLdVar
  loc_BEBE7E: FLdPr Me
  loc_BEBE81: MemLdRfVar from_stack_1.htmFile
  loc_BEBE84: LdPrVar
  loc_BEBE86: LateMemCall
  loc_BEBE8C: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEBE91: PopAdLdVar
  loc_BEBE92: FLdPr Me
  loc_BEBE95: MemLdRfVar from_stack_1.htmFile
  loc_BEBE98: LdPrVar
  loc_BEBE9A: LateMemCall
  loc_BEBEA0: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEBEA5: PopAdLdVar
  loc_BEBEA6: FLdPr Me
  loc_BEBEA9: MemLdRfVar from_stack_1.htmFile
  loc_BEBEAC: LdPrVar
  loc_BEBEAE: LateMemCall
  loc_BEBEB4: LitStr "           <td class=""Normal"" align=""center"">Firma<br>"
  loc_BEBEB7: FLdPr Me
  loc_BEBEBA: MemLdStr global_108
  loc_BEBEBD: FLdPr Me
  loc_BEBEC0: MemLdStr global_104
  loc_BEBEC3: Ary1LdPr
  loc_BEBEC4: MemLdStr global_40
  loc_BEBEC7: ConcatStr
  loc_BEBEC8: FStStrNoPop var_AC
  loc_BEBECB: LitStr "<br> </td>"
  loc_BEBECE: ConcatStr
  loc_BEBECF: CVarStr var_BC
  loc_BEBED2: PopAdLdVar
  loc_BEBED3: FLdPr Me
  loc_BEBED6: MemLdRfVar from_stack_1.htmFile
  loc_BEBED9: LdPrVar
  loc_BEBEDB: LateMemCall
  loc_BEBEE1: FFree1Str var_AC
  loc_BEBEE4: FFree1Var var_BC = ""
  loc_BEBEE7: LitVarStr var_98, "         </tr>"
  loc_BEBEEC: PopAdLdVar
  loc_BEBEED: FLdPr Me
  loc_BEBEF0: MemLdRfVar from_stack_1.htmFile
  loc_BEBEF3: LdPrVar
  loc_BEBEF5: LateMemCall
  loc_BEBEFB: LitVarStr var_98, "        </table>"
  loc_BEBF00: PopAdLdVar
  loc_BEBF01: FLdPr Me
  loc_BEBF04: MemLdRfVar from_stack_1.htmFile
  loc_BEBF07: LdPrVar
  loc_BEBF09: LateMemCall
  loc_BEBF0F: Branch loc_BEC2D0
  loc_BEBF12: FLdRfVar var_19E
  loc_BEBF15: FLdPr Me
  loc_BEBF18: VCallAd Control_ID_chkIncluyelafirma
  loc_BEBF1B: FStAdFunc var_19C
  loc_BEBF1E: FLdPr var_19C
  loc_BEBF21:  = Me.Value
  loc_BEBF26: FLdI2 var_19E
  loc_BEBF29: CI4UI1
  loc_BEBF2A: LitI4 1
  loc_BEBF2F: EqI4
  loc_BEBF30: ImpAdLdI4 MemVar_C3D03C
  loc_BEBF33: LitStr "root"
  loc_BEBF36: EqStr
  loc_BEBF38: ImpAdLdI4 MemVar_C3D03C
  loc_BEBF3B: LitStr "root"
  loc_BEBF3E: EqStr
  loc_BEBF40: OrI4
  loc_BEBF41: AndI4
  loc_BEBF42: FFree1Ad var_19C
  loc_BEBF45: BranchF loc_BEC1C1
  loc_BEBF48: ImpAdLdI4 MemVar_C3D03C
  loc_BEBF4B: ImpAdCallI2 Proc_259_41_A4C348()
  loc_BEBF50: FStAdFunc var_88
  loc_BEBF53: FLdPr Me
  loc_BEBF56: MemLdRfVar from_stack_1.global_80
  loc_BEBF59: NewIfNullRf
  loc_BEBF5D: ImpAdLdI4 MemVar_C3D03C
  loc_BEBF60: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_BEBF65: ILdRf var_88
  loc_BEBF68: LitNothing
  loc_BEBF6A: Is
  loc_BEBF6C: NotI4
  loc_BEBF6D: BranchF loc_BEC0AF
  loc_BEBF70: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BEBF75: PopAdLdVar
  loc_BEBF76: FLdPr Me
  loc_BEBF79: MemLdRfVar from_stack_1.htmFile
  loc_BEBF7C: LdPrVar
  loc_BEBF7E: LateMemCall
  loc_BEBF84: LitVarStr var_98, "         <tr align=""center"">"
  loc_BEBF89: PopAdLdVar
  loc_BEBF8A: FLdPr Me
  loc_BEBF8D: MemLdRfVar from_stack_1.htmFile
  loc_BEBF90: LdPrVar
  loc_BEBF92: LateMemCall
  loc_BEBF98: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEBF9D: PopAdLdVar
  loc_BEBF9E: FLdPr Me
  loc_BEBFA1: MemLdRfVar from_stack_1.htmFile
  loc_BEBFA4: LdPrVar
  loc_BEBFA6: LateMemCall
  loc_BEBFAC: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEBFB1: PopAdLdVar
  loc_BEBFB2: FLdPr Me
  loc_BEBFB5: MemLdRfVar from_stack_1.htmFile
  loc_BEBFB8: LdPrVar
  loc_BEBFBA: LateMemCall
  loc_BEBFC0: LitVarStr var_98, "           <td><img src=""c:\temppic"" alt=""firma"" height=""88"" width=""167""><br><hr width=""80" & Chr(37) & """></td>"
  loc_BEBFC5: PopAdLdVar
  loc_BEBFC6: FLdPr Me
  loc_BEBFC9: MemLdRfVar from_stack_1.htmFile
  loc_BEBFCC: LdPrVar
  loc_BEBFCE: LateMemCall
  loc_BEBFD4: LitVarStr var_98, "         </tr>"
  loc_BEBFD9: PopAdLdVar
  loc_BEBFDA: FLdPr Me
  loc_BEBFDD: MemLdRfVar from_stack_1.htmFile
  loc_BEBFE0: LdPrVar
  loc_BEBFE2: LateMemCall
  loc_BEBFE8: LitVarStr var_98, "         <tr>"
  loc_BEBFED: PopAdLdVar
  loc_BEBFEE: FLdPr Me
  loc_BEBFF1: MemLdRfVar from_stack_1.htmFile
  loc_BEBFF4: LdPrVar
  loc_BEBFF6: LateMemCall
  loc_BEBFFC: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEC001: PopAdLdVar
  loc_BEC002: FLdPr Me
  loc_BEC005: MemLdRfVar from_stack_1.htmFile
  loc_BEC008: LdPrVar
  loc_BEC00A: LateMemCall
  loc_BEC010: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEC015: PopAdLdVar
  loc_BEC016: FLdPr Me
  loc_BEC019: MemLdRfVar from_stack_1.htmFile
  loc_BEC01C: LdPrVar
  loc_BEC01E: LateMemCall
  loc_BEC024: LitStr "           <td class=""Normal"" align=""center"">"
  loc_BEC027: FLdRfVar var_AC
  loc_BEC02A: FLdPr Me
  loc_BEC02D: MemLdRfVar from_stack_1.global_80
  loc_BEC030: NewIfNullPr tblusuario
  loc_BEC033: from_stack_1v = tblusuario.DetaUsuaGet()
  loc_BEC038: ILdRf var_AC
  loc_BEC03B: ConcatStr
  loc_BEC03C: FStStrNoPop var_C0
  loc_BEC03F: LitStr "<br>"
  loc_BEC042: ConcatStr
  loc_BEC043: FStStrNoPop var_20C
  loc_BEC046: FLdRfVar var_C4
  loc_BEC049: FLdPr Me
  loc_BEC04C: MemLdRfVar from_stack_1.global_80
  loc_BEC04F: NewIfNullPr tblusuario
  loc_BEC052: from_stack_1v = tblusuario.CargUsuaGet()
  loc_BEC057: ILdRf var_C4
  loc_BEC05A: ConcatStr
  loc_BEC05B: FStStrNoPop var_210
  loc_BEC05E: LitStr " </td>"
  loc_BEC061: ConcatStr
  loc_BEC062: CVarStr var_BC
  loc_BEC065: PopAdLdVar
  loc_BEC066: FLdPr Me
  loc_BEC069: MemLdRfVar from_stack_1.htmFile
  loc_BEC06C: LdPrVar
  loc_BEC06E: LateMemCall
  loc_BEC074: FFreeStr var_AC = "": var_C0 = "": var_20C = "": var_C4 = ""
  loc_BEC081: FFree1Var var_BC = ""
  loc_BEC084: LitVarStr var_98, "         </tr>"
  loc_BEC089: PopAdLdVar
  loc_BEC08A: FLdPr Me
  loc_BEC08D: MemLdRfVar from_stack_1.htmFile
  loc_BEC090: LdPrVar
  loc_BEC092: LateMemCall
  loc_BEC098: LitVarStr var_98, "        </table>"
  loc_BEC09D: PopAdLdVar
  loc_BEC09E: FLdPr Me
  loc_BEC0A1: MemLdRfVar from_stack_1.htmFile
  loc_BEC0A4: LdPrVar
  loc_BEC0A6: LateMemCall
  loc_BEC0AC: Branch loc_BEC1BE
  loc_BEC0AF: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BEC0B4: PopAdLdVar
  loc_BEC0B5: FLdPr Me
  loc_BEC0B8: MemLdRfVar from_stack_1.htmFile
  loc_BEC0BB: LdPrVar
  loc_BEC0BD: LateMemCall
  loc_BEC0C3: LitVarStr var_98, "         <tr align=""center"">"
  loc_BEC0C8: PopAdLdVar
  loc_BEC0C9: FLdPr Me
  loc_BEC0CC: MemLdRfVar from_stack_1.htmFile
  loc_BEC0CF: LdPrVar
  loc_BEC0D1: LateMemCall
  loc_BEC0D7: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEC0DC: PopAdLdVar
  loc_BEC0DD: FLdPr Me
  loc_BEC0E0: MemLdRfVar from_stack_1.htmFile
  loc_BEC0E3: LdPrVar
  loc_BEC0E5: LateMemCall
  loc_BEC0EB: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEC0F0: PopAdLdVar
  loc_BEC0F1: FLdPr Me
  loc_BEC0F4: MemLdRfVar from_stack_1.htmFile
  loc_BEC0F7: LdPrVar
  loc_BEC0F9: LateMemCall
  loc_BEC0FF: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEC104: PopAdLdVar
  loc_BEC105: FLdPr Me
  loc_BEC108: MemLdRfVar from_stack_1.htmFile
  loc_BEC10B: LdPrVar
  loc_BEC10D: LateMemCall
  loc_BEC113: LitVarStr var_98, "         </tr>"
  loc_BEC118: PopAdLdVar
  loc_BEC119: FLdPr Me
  loc_BEC11C: MemLdRfVar from_stack_1.htmFile
  loc_BEC11F: LdPrVar
  loc_BEC121: LateMemCall
  loc_BEC127: LitVarStr var_98, "         <tr>"
  loc_BEC12C: PopAdLdVar
  loc_BEC12D: FLdPr Me
  loc_BEC130: MemLdRfVar from_stack_1.htmFile
  loc_BEC133: LdPrVar
  loc_BEC135: LateMemCall
  loc_BEC13B: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEC140: PopAdLdVar
  loc_BEC141: FLdPr Me
  loc_BEC144: MemLdRfVar from_stack_1.htmFile
  loc_BEC147: LdPrVar
  loc_BEC149: LateMemCall
  loc_BEC14F: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEC154: PopAdLdVar
  loc_BEC155: FLdPr Me
  loc_BEC158: MemLdRfVar from_stack_1.htmFile
  loc_BEC15B: LdPrVar
  loc_BEC15D: LateMemCall
  loc_BEC163: LitStr "           <td class=""Normal"" align=""center"">Firma<br>"
  loc_BEC166: FLdPr Me
  loc_BEC169: MemLdStr global_108
  loc_BEC16C: FLdPr Me
  loc_BEC16F: MemLdStr global_104
  loc_BEC172: Ary1LdPr
  loc_BEC173: MemLdStr global_40
  loc_BEC176: ConcatStr
  loc_BEC177: FStStrNoPop var_AC
  loc_BEC17A: LitStr " </td>"
  loc_BEC17D: ConcatStr
  loc_BEC17E: CVarStr var_BC
  loc_BEC181: PopAdLdVar
  loc_BEC182: FLdPr Me
  loc_BEC185: MemLdRfVar from_stack_1.htmFile
  loc_BEC188: LdPrVar
  loc_BEC18A: LateMemCall
  loc_BEC190: FFree1Str var_AC
  loc_BEC193: FFree1Var var_BC = ""
  loc_BEC196: LitVarStr var_98, "         </tr>"
  loc_BEC19B: PopAdLdVar
  loc_BEC19C: FLdPr Me
  loc_BEC19F: MemLdRfVar from_stack_1.htmFile
  loc_BEC1A2: LdPrVar
  loc_BEC1A4: LateMemCall
  loc_BEC1AA: LitVarStr var_98, "        </table>"
  loc_BEC1AF: PopAdLdVar
  loc_BEC1B0: FLdPr Me
  loc_BEC1B3: MemLdRfVar from_stack_1.htmFile
  loc_BEC1B6: LdPrVar
  loc_BEC1B8: LateMemCall
  loc_BEC1BE: Branch loc_BEC2D0
  loc_BEC1C1: LitVarStr var_98, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BEC1C6: PopAdLdVar
  loc_BEC1C7: FLdPr Me
  loc_BEC1CA: MemLdRfVar from_stack_1.htmFile
  loc_BEC1CD: LdPrVar
  loc_BEC1CF: LateMemCall
  loc_BEC1D5: LitVarStr var_98, "         <tr align=""center"">"
  loc_BEC1DA: PopAdLdVar
  loc_BEC1DB: FLdPr Me
  loc_BEC1DE: MemLdRfVar from_stack_1.htmFile
  loc_BEC1E1: LdPrVar
  loc_BEC1E3: LateMemCall
  loc_BEC1E9: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEC1EE: PopAdLdVar
  loc_BEC1EF: FLdPr Me
  loc_BEC1F2: MemLdRfVar from_stack_1.htmFile
  loc_BEC1F5: LdPrVar
  loc_BEC1F7: LateMemCall
  loc_BEC1FD: LitVarStr var_98, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_BEC202: PopAdLdVar
  loc_BEC203: FLdPr Me
  loc_BEC206: MemLdRfVar from_stack_1.htmFile
  loc_BEC209: LdPrVar
  loc_BEC20B: LateMemCall
  loc_BEC211: LitVarStr var_98, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_BEC216: PopAdLdVar
  loc_BEC217: FLdPr Me
  loc_BEC21A: MemLdRfVar from_stack_1.htmFile
  loc_BEC21D: LdPrVar
  loc_BEC21F: LateMemCall
  loc_BEC225: LitVarStr var_98, "         </tr>"
  loc_BEC22A: PopAdLdVar
  loc_BEC22B: FLdPr Me
  loc_BEC22E: MemLdRfVar from_stack_1.htmFile
  loc_BEC231: LdPrVar
  loc_BEC233: LateMemCall
  loc_BEC239: LitVarStr var_98, "         <tr>"
  loc_BEC23E: PopAdLdVar
  loc_BEC23F: FLdPr Me
  loc_BEC242: MemLdRfVar from_stack_1.htmFile
  loc_BEC245: LdPrVar
  loc_BEC247: LateMemCall
  loc_BEC24D: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEC252: PopAdLdVar
  loc_BEC253: FLdPr Me
  loc_BEC256: MemLdRfVar from_stack_1.htmFile
  loc_BEC259: LdPrVar
  loc_BEC25B: LateMemCall
  loc_BEC261: LitVarStr var_98, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_BEC266: PopAdLdVar
  loc_BEC267: FLdPr Me
  loc_BEC26A: MemLdRfVar from_stack_1.htmFile
  loc_BEC26D: LdPrVar
  loc_BEC26F: LateMemCall
  loc_BEC275: LitStr "           <td class=""Normal"" align=""center"">Firma<br>"
  loc_BEC278: FLdPr Me
  loc_BEC27B: MemLdStr global_108
  loc_BEC27E: FLdPr Me
  loc_BEC281: MemLdStr global_104
  loc_BEC284: Ary1LdPr
  loc_BEC285: MemLdStr global_40
  loc_BEC288: ConcatStr
  loc_BEC289: FStStrNoPop var_AC
  loc_BEC28C: LitStr " </td>"
  loc_BEC28F: ConcatStr
  loc_BEC290: CVarStr var_BC
  loc_BEC293: PopAdLdVar
  loc_BEC294: FLdPr Me
  loc_BEC297: MemLdRfVar from_stack_1.htmFile
  loc_BEC29A: LdPrVar
  loc_BEC29C: LateMemCall
  loc_BEC2A2: FFree1Str var_AC
  loc_BEC2A5: FFree1Var var_BC = ""
  loc_BEC2A8: LitVarStr var_98, "         </tr>"
  loc_BEC2AD: PopAdLdVar
  loc_BEC2AE: FLdPr Me
  loc_BEC2B1: MemLdRfVar from_stack_1.htmFile
  loc_BEC2B4: LdPrVar
  loc_BEC2B6: LateMemCall
  loc_BEC2BC: LitVarStr var_98, "        </table>"
  loc_BEC2C1: PopAdLdVar
  loc_BEC2C2: FLdPr Me
  loc_BEC2C5: MemLdRfVar from_stack_1.htmFile
  loc_BEC2C8: LdPrVar
  loc_BEC2CA: LateMemCall
  loc_BEC2D0: LitVarStr var_98, "    </td></tr>"
  loc_BEC2D5: PopAdLdVar
  loc_BEC2D6: FLdPr Me
  loc_BEC2D9: MemLdRfVar from_stack_1.htmFile
  loc_BEC2DC: LdPrVar
  loc_BEC2DE: LateMemCall
  loc_BEC2E4: LitStr "Municipalidad de Guaymallén"
  loc_BEC2E7: FStStrCopy var_214
  loc_BEC2EA: ILdRf var_214
  loc_BEC2ED: LitStr "Municipalidad de Malargüe"
  loc_BEC2F0: EqStr
  loc_BEC2F2: BranchF loc_BEC328
  loc_BEC2F5: LitVarStr var_98, "    <tr><td align=""center"" colspan=""9"" class=""Titulo2"">Atención al Proveedor<br>Oficina de Compras y Suministros</td></tr>"
  loc_BEC2FA: PopAdLdVar
  loc_BEC2FB: FLdPr Me
  loc_BEC2FE: MemLdRfVar from_stack_1.htmFile
  loc_BEC301: LdPrVar
  loc_BEC303: LateMemCall
  loc_BEC309: LitStr "    <tr><td colspan=""9""><p align=""justify"" class=""LineaDato"">Sres. Proveedores, recuerden:<br>"
  loc_BEC30C: LitStr "- los días de recepción de facturas son LUNES, MIÉRCOLES Y VIERNES.</p></td></tr>"
  loc_BEC30F: ConcatStr
  loc_BEC310: CVarStr var_BC
  loc_BEC313: PopAdLdVar
  loc_BEC314: FLdPr Me
  loc_BEC317: MemLdRfVar from_stack_1.htmFile
  loc_BEC31A: LdPrVar
  loc_BEC31C: LateMemCall
  loc_BEC322: FFree1Var var_BC = ""
  loc_BEC325: Branch loc_BEC419
  loc_BEC328: ILdRf var_214
  loc_BEC32B: LitStr "Municipalidad de Maipú"
  loc_BEC32E: EqStr
  loc_BEC330: BranchF loc_BEC35C
  loc_BEC333: LitStr "<tr><td colspan=""9""><p align=""justify"" class=""LineaDato""><b>Sr. PROVEEDOR:</b> Ud. deberá entregar y facturar lo detallado en la presente Orden de Compra, la que ha sido confeccionada en base a presupuesto solicitado oportunamente a su firma. En caso de modificaciones <b>NO DEBERÁ</b> hacer entrega de los materiales o prestar el servicio, <b>caso contrario correrá por su cuenta y responsabilidad</b>. Este original deberá presentarse con la factura correspondiente <b>SIN EXCEPCIÓN</b>."
  loc_BEC336: LitStr "<br><b>Por disposición del Tribunal de Cuentas de la Provincia de Mendoza, a fin incrementar las medidas de control interno, entre los aspectos formales de la FACTURA, se deberá consignar el número y fecha de la ORDEN DE COMPRA y el número y fecha del REMITO OFICIAL R (impreso con C.A.I. emitida por la A.F.I.P.) respaldatorio de la entrega del bien o prestación del servicio. En los casos en que los fondos sean provenientes de convenios específicos además se deberá hacer referencia al mismo en la factura respectiva de la forma que ésta Dirección se lo indique. De no cumplirse con los requisitos solicitados no se podrá dar curso al expediente de pago respectivo."
  loc_BEC339: ConcatStr
  loc_BEC33A: FStStrNoPop var_AC
  loc_BEC33D: LitStr "<br>Si usted se encuentra beneficiado con Tasa Cero o Tasa Reducida según lo establecido por el art.185 del Código Fiscal de la Provincia de Mendoza, deberá presentar en forma mensual el correspondiente certificado.</p></td></tr>"
  loc_BEC340: ConcatStr
  loc_BEC341: CVarStr var_BC
  loc_BEC344: PopAdLdVar
  loc_BEC345: FLdPr Me
  loc_BEC348: MemLdRfVar from_stack_1.htmFile
  loc_BEC34B: LdPrVar
  loc_BEC34D: LateMemCall
  loc_BEC353: FFree1Str var_AC
  loc_BEC356: FFree1Var var_BC = ""
  loc_BEC359: Branch loc_BEC419
  loc_BEC35C: ILdRf var_214
  loc_BEC35F: LitStr "Municipalidad de Rivadavia"
  loc_BEC362: EqStr
  loc_BEC364: BranchF loc_BEC3E5
  loc_BEC367: LitStr "root"
  loc_BEC36A: ImpAdCallI2 Proc_259_42_A4BD80()
  loc_BEC36F: FStAdFunc var_88
  loc_BEC372: FLdPr Me
  loc_BEC375: MemLdRfVar from_stack_1.global_80
  loc_BEC378: NewIfNullRf
  loc_BEC37C: LitStr "root"
  loc_BEC37F: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_BEC384: ILdRf var_88
  loc_BEC387: LitNothing
  loc_BEC389: Is
  loc_BEC38B: NotI4
  loc_BEC38C: BranchF loc_BEC3CE
  loc_BEC38F: LitVarStr var_98, "<tr><td colspan=""9""><p class=""LineaDato"">A PARTIR de la fecha, Ud. podrá presentar las facturas de sus compras vía web. Solo debe escanear el siguiente QR</p></td></tr>"
  loc_BEC394: PopAdLdVar
  loc_BEC395: FLdPr Me
  loc_BEC398: MemLdRfVar from_stack_1.htmFile
  loc_BEC39B: LdPrVar
  loc_BEC39D: LateMemCall
  loc_BEC3A3: LitVarStr var_98, "           <td><img src=""c:\temppic"" alt=""firma"" height=""88"" width=""88""><br><hr width=""80" & Chr(37) & """></td>"
  loc_BEC3A8: PopAdLdVar
  loc_BEC3A9: FLdPr Me
  loc_BEC3AC: MemLdRfVar from_stack_1.htmFile
  loc_BEC3AF: LdPrVar
  loc_BEC3B1: LateMemCall
  loc_BEC3B7: LitVarStr var_98, "<tr><td colspan=""9""><p class=""LineaDato"">O ingresar al siguiente enlace: https//rivadavia.reclamos311.com.ar/incidents/62-presentacion-de-facturas-c</tr>"
  loc_BEC3BC: PopAdLdVar
  loc_BEC3BD: FLdPr Me
  loc_BEC3C0: MemLdRfVar from_stack_1.htmFile
  loc_BEC3C3: LdPrVar
  loc_BEC3C5: LateMemCall
  loc_BEC3CB: Branch loc_BEC3E2
  loc_BEC3CE: LitVarStr var_98, "<tr><td colspan=""9""><p class=""LineaDato"">A PARTIR de la fecha, Ud. podrá presentar las facturas de sus compras vía web. Solo debe escanear el siguiente QR</p></td></tr>"
  loc_BEC3D3: PopAdLdVar
  loc_BEC3D4: FLdPr Me
  loc_BEC3D7: MemLdRfVar from_stack_1.htmFile
  loc_BEC3DA: LdPrVar
  loc_BEC3DC: LateMemCall
  loc_BEC3E2: Branch loc_BEC419
  loc_BEC3E5: ILdRf var_214
  loc_BEC3E8: LitStr "Municipalidad de Guaymallén"
  loc_BEC3EB: EqStr
  loc_BEC3ED: BranchF loc_BEC419
  loc_BEC3F0: LitStr "<tr><td colspan=""9""><p class=""LineaDato"">NOTA: Al presentar la factura, es obligación referenciar el CUIT de la MUNICIPALIDAD ("
  loc_BEC3F3: LitStr "30-99914707-7"
  loc_BEC3F6: ConcatStr
  loc_BEC3F7: FStStrNoPop var_AC
  loc_BEC3FA: LitStr ") y las condiciones, iva EXENTO, y venta CONTADO, sin cuyos requisitos no se tramitará el pago.</p></td></tr>"
  loc_BEC3FD: ConcatStr
  loc_BEC3FE: CVarStr var_BC
  loc_BEC401: PopAdLdVar
  loc_BEC402: FLdPr Me
  loc_BEC405: MemLdRfVar from_stack_1.htmFile
  loc_BEC408: LdPrVar
  loc_BEC40A: LateMemCall
  loc_BEC410: FFree1Str var_AC
  loc_BEC413: FFree1Var var_BC = ""
  loc_BEC416: Branch loc_BEC419
  loc_BEC419: LitVarStr var_98, "</table>"
  loc_BEC41E: PopAdLdVar
  loc_BEC41F: FLdPr Me
  loc_BEC422: MemLdRfVar from_stack_1.htmFile
  loc_BEC425: LdPrVar
  loc_BEC427: LateMemCall
  loc_BEC42D: LitI2_Byte 0
  loc_BEC42F: BranchF loc_BEC475
  loc_BEC432: FLdPr Me
  loc_BEC435: MemLdI2 global_70
  loc_BEC438: LitI2_Byte 1
  loc_BEC43A: EqI2
  loc_BEC43B: BranchF loc_BEC455
  loc_BEC43E: LitVarStr var_98, "Original"
  loc_BEC443: PopAdLdVar
  loc_BEC444: FLdPr Me
  loc_BEC447: MemLdRfVar from_stack_1.htmFile
  loc_BEC44A: LdPrVar
  loc_BEC44C: LateMemCall
  loc_BEC452: Branch loc_BEC475
  loc_BEC455: FLdPr Me
  loc_BEC458: MemLdI2 global_70
  loc_BEC45B: LitI2_Byte 2
  loc_BEC45D: EqI2
  loc_BEC45E: BranchF loc_BEC475
  loc_BEC461: LitVarStr var_98, "Duplicado"
  loc_BEC466: PopAdLdVar
  loc_BEC467: FLdPr Me
  loc_BEC46A: MemLdRfVar from_stack_1.htmFile
  loc_BEC46D: LdPrVar
  loc_BEC46F: LateMemCall
  loc_BEC475: LitVarStr var_98, "<br>"
  loc_BEC47A: PopAdLdVar
  loc_BEC47B: FLdPr Me
  loc_BEC47E: MemLdRfVar from_stack_1.htmFile
  loc_BEC481: LdPrVar
  loc_BEC483: LateMemCall
  loc_BEC489: ExitProcHresult
End Function

Private Function Proc_199_42_9F8B40() '9F8B40
  'Data Table: 4E66BC
  loc_9F8A04: LitI2_Byte &HFF
  loc_9F8A06: ImpAdLdRf MemVar_C3D74C
  loc_9F8A09: NewIfNullPr bscProveedor
  loc_9F8A0C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_9F8A11: LitNothing
  loc_9F8A13: CastAd
  loc_9F8A16: FStAdFuncNoPop
  loc_9F8A19: ImpAdLdRf MemVar_C3D74C
  loc_9F8A1C: NewIfNullPr bscProveedor
  loc_9F8A1F: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_9F8A24: FFree1Ad var_88
  loc_9F8A27: LitVar_Missing var_A8
  loc_9F8A2A: PopAdLdVar
  loc_9F8A2B: LitVarI4
  loc_9F8A33: PopAdLdVar
  loc_9F8A34: ImpAdLdRf MemVar_C3D74C
  loc_9F8A37: NewIfNullPr bscProveedor
  loc_9F8A3A: bscProveedor.Show from_stack_1, from_stack_2
  loc_9F8A3F: FLdRfVar var_AC
  loc_9F8A42: FLdRfVar var_88
  loc_9F8A45: ImpAdLdRf MemVar_C3D74C
  loc_9F8A48: NewIfNullPr bscProveedor
  loc_9F8A4B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F8A50: FLdPr var_88
  loc_9F8A53: from_stack_1 = clsbase.RecordCount
  loc_9F8A58: ILdRf var_AC
  loc_9F8A5B: LitI4 0
  loc_9F8A60: GtI4
  loc_9F8A61: FFree1Ad var_88
  loc_9F8A64: BranchF loc_9F8B3D
  loc_9F8A67: FLdRfVar var_C8
  loc_9F8A6A: FLdRfVar var_B8
  loc_9F8A6D: LitVarStr var_98, "CucuPers"
  loc_9F8A72: PopAdLdVar
  loc_9F8A73: FLdRfVar var_B4
  loc_9F8A76: FLdRfVar var_B0
  loc_9F8A79: FLdRfVar var_88
  loc_9F8A7C: ImpAdLdRf MemVar_C3D74C
  loc_9F8A7F: NewIfNullPr bscProveedor
  loc_9F8A82: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F8A87: FLdPr var_88
  loc_9F8A8A: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8A8F: FLdPr var_B0
  loc_9F8A92:  = Me.Fields
  loc_9F8A97: FLdPr var_B4
  loc_9F8A9A: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8A9F: FLdPr var_B8
  loc_9F8AA2:  = Me.Value
  loc_9F8AA7: FLdRfVar var_C8
  loc_9F8AAA: CStrVarTmp
  loc_9F8AAB: FStStrNoPop var_CC
  loc_9F8AAE: FLdPr Me
  loc_9F8AB1: VCallAd Control_ID_CucuPersTxt
  loc_9F8AB4: FStAdFunc var_D0
  loc_9F8AB7: FLdPr var_D0
  loc_9F8ABA: Me.Text = from_stack_1
  loc_9F8ABF: FFree1Str var_CC
  loc_9F8AC2: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8ACF: FFree1Var var_C8 = ""
  loc_9F8AD2: FLdRfVar var_C8
  loc_9F8AD5: FLdRfVar var_B8
  loc_9F8AD8: LitVarStr var_98, "DetaProv"
  loc_9F8ADD: PopAdLdVar
  loc_9F8ADE: FLdRfVar var_B4
  loc_9F8AE1: FLdRfVar var_B0
  loc_9F8AE4: FLdRfVar var_88
  loc_9F8AE7: ImpAdLdRf MemVar_C3D74C
  loc_9F8AEA: NewIfNullPr bscProveedor
  loc_9F8AED: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F8AF2: FLdPr var_88
  loc_9F8AF5: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8AFA: FLdPr var_B0
  loc_9F8AFD:  = Me.Fields
  loc_9F8B02: FLdPr var_B4
  loc_9F8B05: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8B0A: FLdPr var_B8
  loc_9F8B0D:  = Me.Value
  loc_9F8B12: FLdRfVar var_C8
  loc_9F8B15: CStrVarTmp
  loc_9F8B16: FStStrNoPop var_CC
  loc_9F8B19: FLdPr Me
  loc_9F8B1C: VCallAd Control_ID_DetaProvLbl
  loc_9F8B1F: FStAdFunc var_D0
  loc_9F8B22: FLdPr var_D0
  loc_9F8B25: Me.Caption = from_stack_1
  loc_9F8B2A: FFree1Str var_CC
  loc_9F8B2D: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8B3A: FFree1Var var_C8 = ""
  loc_9F8B3D: ExitProcHresult
  loc_9F8B3E: Ary1LdRf
End Function

Private Function Proc_199_43_9BAA44() '9BAA44
  'Data Table: 4E66BC
  loc_9BA98C: LitVarStr var_94, "<html>"
  loc_9BA991: PopAdLdVar
  loc_9BA992: FLdPr Me
  loc_9BA995: MemLdRfVar from_stack_1.htmFile
  loc_9BA998: LdPrVar
  loc_9BA99A: LateMemCall
  loc_9BA9A0: LitVarStr var_94, "<head>"
  loc_9BA9A5: PopAdLdVar
  loc_9BA9A6: FLdPr Me
  loc_9BA9A9: MemLdRfVar from_stack_1.htmFile
  loc_9BA9AC: LdPrVar
  loc_9BA9AE: LateMemCall
  loc_9BA9B4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9BA9B9: PopAdLdVar
  loc_9BA9BA: FLdPr Me
  loc_9BA9BD: MemLdRfVar from_stack_1.htmFile
  loc_9BA9C0: LdPrVar
  loc_9BA9C2: LateMemCall
  loc_9BA9C8: LitStr "<title>"
  loc_9BA9CB: FLdRfVar var_A8
  loc_9BA9CE: FLdPr Me
  loc_9BA9D1:  = Me.Caption
  loc_9BA9D6: ILdRf var_A8
  loc_9BA9D9: ConcatStr
  loc_9BA9DA: FStStrNoPop var_AC
  loc_9BA9DD: LitStr "</title>"
  loc_9BA9E0: ConcatStr
  loc_9BA9E1: CVarStr var_BC
  loc_9BA9E4: PopAdLdVar
  loc_9BA9E5: FLdPr Me
  loc_9BA9E8: MemLdRfVar from_stack_1.htmFile
  loc_9BA9EB: LdPrVar
  loc_9BA9ED: LateMemCall
  loc_9BA9F3: FFreeStr var_A8 = ""
  loc_9BA9FA: FFree1Var var_BC = ""
  loc_9BA9FD: LitStr vbNullString
  loc_9BAA00: ILdRf Me
  loc_9BAA03: CastAd
  loc_9BAA06: FStAdFunc var_C0
  loc_9BAA09: FLdRfVar var_C0
  loc_9BAA0C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9BAA11: FFree1Ad var_C0
  loc_9BAA14: LitI4 0
  loc_9BAA19: FStStrCopy var_AC
  loc_9BAA1C: FLdRfVar var_AC
  loc_9BAA1F: LitI4 0
  loc_9BAA24: FStStrCopy var_A8
  loc_9BAA27: FLdRfVar var_A8
  loc_9BAA2A: LitI2_Byte 0
  loc_9BAA2C: PopTmpLdAd2 var_C2
  loc_9BAA2F: FLdPr Me
  loc_9BAA32: MemLdRfVar from_stack_1.htmFile
  loc_9BAA35: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9BAA3A: FFreeStr var_A8 = ""
  loc_9BAA41: ExitProcHresult
End Function

Private Function Proc_199_44_A4AC48() 'A4AC48
  'Data Table: 4E66BC
  loc_A4A9D0: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A4A9D5: PopAdLdVar
  loc_A4A9D6: FLdPr Me
  loc_A4A9D9: MemLdRfVar from_stack_1.htmFile
  loc_A4A9DC: LdPrVar
  loc_A4A9DE: LateMemCall
  loc_A4A9E4: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A4A9E9: PopAdLdVar
  loc_A4A9EA: FLdPr Me
  loc_A4A9ED: MemLdRfVar from_stack_1.htmFile
  loc_A4A9F0: LdPrVar
  loc_A4A9F2: LateMemCall
  loc_A4A9F8: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><img src=""l3.jpg"" alt=""Escudo"" align=""left""><img src=""l1.jpg"" alt=""Logo"" align=""right"">"
  loc_A4A9FD: PopAdLdVar
  loc_A4A9FE: FLdPr Me
  loc_A4AA01: MemLdRfVar from_stack_1.htmFile
  loc_A4AA04: LdPrVar
  loc_A4AA06: LateMemCall
  loc_A4AA0C: LitVarStr var_A4, "    <br><p>"
  loc_A4AA11: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A4AA16: FStVarCopyObj var_B4
  loc_A4AA19: FLdRfVar var_B4
  loc_A4AA1C: FLdRfVar var_C4
  loc_A4AA1F: ImpAdCallFPR4  = Ucase()
  loc_A4AA24: FLdRfVar var_C4
  loc_A4AA27: ConcatVar var_D4
  loc_A4AA2B: LitVarStr var_E4, "</p><p>"
  loc_A4AA30: ConcatVar var_F4
  loc_A4AA34: FLdRfVar var_F8
  loc_A4AA37: FLdPr Me
  loc_A4AA3A:  = Me.Caption
  loc_A4AA3F: FLdZeroAd var_F8
  loc_A4AA42: CVarStr var_108
  loc_A4AA45: FLdRfVar var_118
  loc_A4AA48: ImpAdCallFPR4  = Ucase()
  loc_A4AA4D: FLdRfVar var_118
  loc_A4AA50: ConcatVar var_128
  loc_A4AA54: LitVarStr var_138, " N&ordm;: "
  loc_A4AA59: ConcatVar var_148
  loc_A4AA5D: FLdPr Me
  loc_A4AA60: MemLdStr global_108
  loc_A4AA63: FLdPr Me
  loc_A4AA66: MemLdStr global_104
  loc_A4AA69: Ary1LdPr
  loc_A4AA6A: MemLdStr global_0
  loc_A4AA6D: CVarStr var_158
  loc_A4AA70: ConcatVar var_168
  loc_A4AA74: LitVarStr var_178, "</p>"
  loc_A4AA79: ConcatVar var_188
  loc_A4AA7D: PopAdLdVar
  loc_A4AA7E: FLdPr Me
  loc_A4AA81: MemLdRfVar from_stack_1.htmFile
  loc_A4AA84: LdPrVar
  loc_A4AA86: LateMemCall
  loc_A4AA8C: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_108 = "": var_F4 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_A4AAA3: LitVarStr var_94, "    <br>FO-DCS-27"
  loc_A4AAA8: PopAdLdVar
  loc_A4AAA9: FLdPr Me
  loc_A4AAAC: MemLdRfVar from_stack_1.htmFile
  loc_A4AAAF: LdPrVar
  loc_A4AAB1: LateMemCall
  loc_A4AAB7: LitVarStr var_94, "    </th>"
  loc_A4AABC: PopAdLdVar
  loc_A4AABD: FLdPr Me
  loc_A4AAC0: MemLdRfVar from_stack_1.htmFile
  loc_A4AAC3: LdPrVar
  loc_A4AAC5: LateMemCall
  loc_A4AACB: LitVarStr var_94, "  </tr>"
  loc_A4AAD0: PopAdLdVar
  loc_A4AAD1: FLdPr Me
  loc_A4AAD4: MemLdRfVar from_stack_1.htmFile
  loc_A4AAD7: LdPrVar
  loc_A4AAD9: LateMemCall
  loc_A4AADF: LitVarStr var_94, "  <tr><th colspan=""3""><br></th></tr>"
  loc_A4AAE4: PopAdLdVar
  loc_A4AAE5: FLdPr Me
  loc_A4AAE8: MemLdRfVar from_stack_1.htmFile
  loc_A4AAEB: LdPrVar
  loc_A4AAED: LateMemCall
  loc_A4AAF3: LitVarStr var_94, "  <tr class=""LineaDato"" valign=""top"">"
  loc_A4AAF8: PopAdLdVar
  loc_A4AAF9: FLdPr Me
  loc_A4AAFC: MemLdRfVar from_stack_1.htmFile
  loc_A4AAFF: LdPrVar
  loc_A4AB01: LateMemCall
  loc_A4AB07: LitStr "    <th align=""center"" nowrap=""nowrap"">"
  loc_A4AB0A: LitStr "Libertad Nº 720"
  loc_A4AB0D: ConcatStr
  loc_A4AB0E: FStStrNoPop var_F8
  loc_A4AB11: LitStr "</th>"
  loc_A4AB14: ConcatStr
  loc_A4AB15: CVarStr var_B4
  loc_A4AB18: PopAdLdVar
  loc_A4AB19: FLdPr Me
  loc_A4AB1C: MemLdRfVar from_stack_1.htmFile
  loc_A4AB1F: LdPrVar
  loc_A4AB21: LateMemCall
  loc_A4AB27: FFree1Str var_F8
  loc_A4AB2A: FFree1Var var_B4 = ""
  loc_A4AB2D: LitStr "    <th align=""right"">Tel. "
  loc_A4AB30: LitStr "(0261) 4498238"
  loc_A4AB33: ConcatStr
  loc_A4AB34: FStStrNoPop var_F8
  loc_A4AB37: LitStr "</th>"
  loc_A4AB3A: ConcatStr
  loc_A4AB3B: CVarStr var_B4
  loc_A4AB3E: PopAdLdVar
  loc_A4AB3F: FLdPr Me
  loc_A4AB42: MemLdRfVar from_stack_1.htmFile
  loc_A4AB45: LdPrVar
  loc_A4AB47: LateMemCall
  loc_A4AB4D: FFree1Str var_F8
  loc_A4AB50: FFree1Var var_B4 = ""
  loc_A4AB53: LitStr "    <th align=""right"">CUIT N° "
  loc_A4AB56: LitStr "30-99914707-7"
  loc_A4AB59: ConcatStr
  loc_A4AB5A: FStStrNoPop var_F8
  loc_A4AB5D: LitStr "</th>"
  loc_A4AB60: ConcatStr
  loc_A4AB61: CVarStr var_B4
  loc_A4AB64: PopAdLdVar
  loc_A4AB65: FLdPr Me
  loc_A4AB68: MemLdRfVar from_stack_1.htmFile
  loc_A4AB6B: LdPrVar
  loc_A4AB6D: LateMemCall
  loc_A4AB73: FFree1Str var_F8
  loc_A4AB76: FFree1Var var_B4 = ""
  loc_A4AB79: LitVarStr var_94, "  </tr>"
  loc_A4AB7E: PopAdLdVar
  loc_A4AB7F: FLdPr Me
  loc_A4AB82: MemLdRfVar from_stack_1.htmFile
  loc_A4AB85: LdPrVar
  loc_A4AB87: LateMemCall
  loc_A4AB8D: LitVarStr var_94, "  <tr>"
  loc_A4AB92: PopAdLdVar
  loc_A4AB93: FLdPr Me
  loc_A4AB96: MemLdRfVar from_stack_1.htmFile
  loc_A4AB99: LdPrVar
  loc_A4AB9B: LateMemCall
  loc_A4ABA1: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_A4ABA6: PopAdLdVar
  loc_A4ABA7: FLdPr Me
  loc_A4ABAA: MemLdRfVar from_stack_1.htmFile
  loc_A4ABAD: LdPrVar
  loc_A4ABAF: LateMemCall
  loc_A4ABB5: LitVarStr var_94, "  </tr>"
  loc_A4ABBA: PopAdLdVar
  loc_A4ABBB: FLdPr Me
  loc_A4ABBE: MemLdRfVar from_stack_1.htmFile
  loc_A4ABC1: LdPrVar
  loc_A4ABC3: LateMemCall
  loc_A4ABC9: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A4ABCE: PopAdLdVar
  loc_A4ABCF: FLdPr Me
  loc_A4ABD2: MemLdRfVar from_stack_1.htmFile
  loc_A4ABD5: LdPrVar
  loc_A4ABD7: LateMemCall
  loc_A4ABDD: LitStr "    <th width=""33" & Chr(37) & """ align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A4ABE0: FLdRfVar var_F8
  loc_A4ABE3: FLdPr Me
  loc_A4ABE6: VCallAd Control_ID_cboPeriodo
  loc_A4ABE9: FStAdFunc var_19C
  loc_A4ABEC: FLdPr var_19C
  loc_A4ABEF:  = Me.Text
  loc_A4ABF4: ILdRf var_F8
  loc_A4ABF7: ConcatStr
  loc_A4ABF8: FStStrNoPop var_1A0
  loc_A4ABFB: LitStr "</span></th>"
  loc_A4ABFE: ConcatStr
  loc_A4ABFF: CVarStr var_B4
  loc_A4AC02: PopAdLdVar
  loc_A4AC03: FLdPr Me
  loc_A4AC06: MemLdRfVar from_stack_1.htmFile
  loc_A4AC09: LdPrVar
  loc_A4AC0B: LateMemCall
  loc_A4AC11: FFreeStr var_F8 = ""
  loc_A4AC18: FFree1Ad var_19C
  loc_A4AC1B: FFree1Var var_B4 = ""
  loc_A4AC1E: LitVarStr var_94, "  </tr>"
  loc_A4AC23: PopAdLdVar
  loc_A4AC24: FLdPr Me
  loc_A4AC27: MemLdRfVar from_stack_1.htmFile
  loc_A4AC2A: LdPrVar
  loc_A4AC2C: LateMemCall
  loc_A4AC32: LitVarStr var_94, "</table>"
  loc_A4AC37: PopAdLdVar
  loc_A4AC38: FLdPr Me
  loc_A4AC3B: MemLdRfVar from_stack_1.htmFile
  loc_A4AC3E: LdPrVar
  loc_A4AC40: LateMemCall
  loc_A4AC46: ExitProcHresult
End Function

Private Function Proc_199_45_A41AD8() 'A41AD8
  'Data Table: 4E66BC
  loc_A4189C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A418A1: PopAdLdVar
  loc_A418A2: FLdPr Me
  loc_A418A5: MemLdRfVar from_stack_1.htmFile
  loc_A418A8: LdPrVar
  loc_A418AA: LateMemCall
  loc_A418B0: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A418B5: PopAdLdVar
  loc_A418B6: FLdPr Me
  loc_A418B9: MemLdRfVar from_stack_1.htmFile
  loc_A418BC: LdPrVar
  loc_A418BE: LateMemCall
  loc_A418C4: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><p>"
  loc_A418C9: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A418CE: FStVarCopyObj var_B4
  loc_A418D1: FLdRfVar var_B4
  loc_A418D4: FLdRfVar var_C4
  loc_A418D7: ImpAdCallFPR4  = Ucase()
  loc_A418DC: FLdRfVar var_C4
  loc_A418DF: ConcatVar var_D4
  loc_A418E3: LitVarStr var_E4, "</p><p>"
  loc_A418E8: ConcatVar var_F4
  loc_A418EC: FLdRfVar var_F8
  loc_A418EF: FLdPr Me
  loc_A418F2:  = Me.Caption
  loc_A418F7: FLdZeroAd var_F8
  loc_A418FA: CVarStr var_108
  loc_A418FD: FLdRfVar var_118
  loc_A41900: ImpAdCallFPR4  = Ucase()
  loc_A41905: FLdRfVar var_118
  loc_A41908: ConcatVar var_128
  loc_A4190C: LitVarStr var_138, " N&ordm;: "
  loc_A41911: ConcatVar var_148
  loc_A41915: FLdPr Me
  loc_A41918: MemLdStr global_108
  loc_A4191B: FLdPr Me
  loc_A4191E: MemLdStr global_104
  loc_A41921: Ary1LdPr
  loc_A41922: MemLdStr global_0
  loc_A41925: CVarStr var_158
  loc_A41928: ConcatVar var_168
  loc_A4192C: LitVarStr var_178, "</p></th>"
  loc_A41931: ConcatVar var_188
  loc_A41935: PopAdLdVar
  loc_A41936: FLdPr Me
  loc_A41939: MemLdRfVar from_stack_1.htmFile
  loc_A4193C: LdPrVar
  loc_A4193E: LateMemCall
  loc_A41944: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_108 = "": var_F4 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_A4195B: LitVarStr var_94, "  </tr>"
  loc_A41960: PopAdLdVar
  loc_A41961: FLdPr Me
  loc_A41964: MemLdRfVar from_stack_1.htmFile
  loc_A41967: LdPrVar
  loc_A41969: LateMemCall
  loc_A4196F: LitVarStr var_94, "  <tr><th colspan=""3""><br></th></tr>"
  loc_A41974: PopAdLdVar
  loc_A41975: FLdPr Me
  loc_A41978: MemLdRfVar from_stack_1.htmFile
  loc_A4197B: LdPrVar
  loc_A4197D: LateMemCall
  loc_A41983: LitVarStr var_94, "  <tr class=""LineaDato"" valign=""top"">"
  loc_A41988: PopAdLdVar
  loc_A41989: FLdPr Me
  loc_A4198C: MemLdRfVar from_stack_1.htmFile
  loc_A4198F: LdPrVar
  loc_A41991: LateMemCall
  loc_A41997: LitStr "    <th align=""center"" nowrap=""nowrap"">"
  loc_A4199A: LitStr "Libertad Nº 720"
  loc_A4199D: ConcatStr
  loc_A4199E: FStStrNoPop var_F8
  loc_A419A1: LitStr "</th>"
  loc_A419A4: ConcatStr
  loc_A419A5: CVarStr var_B4
  loc_A419A8: PopAdLdVar
  loc_A419A9: FLdPr Me
  loc_A419AC: MemLdRfVar from_stack_1.htmFile
  loc_A419AF: LdPrVar
  loc_A419B1: LateMemCall
  loc_A419B7: FFree1Str var_F8
  loc_A419BA: FFree1Var var_B4 = ""
  loc_A419BD: LitStr "    <th align=""right"">Tel. "
  loc_A419C0: LitStr "(0261) 4498238"
  loc_A419C3: ConcatStr
  loc_A419C4: FStStrNoPop var_F8
  loc_A419C7: LitStr "</th>"
  loc_A419CA: ConcatStr
  loc_A419CB: CVarStr var_B4
  loc_A419CE: PopAdLdVar
  loc_A419CF: FLdPr Me
  loc_A419D2: MemLdRfVar from_stack_1.htmFile
  loc_A419D5: LdPrVar
  loc_A419D7: LateMemCall
  loc_A419DD: FFree1Str var_F8
  loc_A419E0: FFree1Var var_B4 = ""
  loc_A419E3: LitStr "    <th align=""right"">CUIT N° "
  loc_A419E6: LitStr "30-99914707-7"
  loc_A419E9: ConcatStr
  loc_A419EA: FStStrNoPop var_F8
  loc_A419ED: LitStr "</th>"
  loc_A419F0: ConcatStr
  loc_A419F1: CVarStr var_B4
  loc_A419F4: PopAdLdVar
  loc_A419F5: FLdPr Me
  loc_A419F8: MemLdRfVar from_stack_1.htmFile
  loc_A419FB: LdPrVar
  loc_A419FD: LateMemCall
  loc_A41A03: FFree1Str var_F8
  loc_A41A06: FFree1Var var_B4 = ""
  loc_A41A09: LitVarStr var_94, "  </tr>"
  loc_A41A0E: PopAdLdVar
  loc_A41A0F: FLdPr Me
  loc_A41A12: MemLdRfVar from_stack_1.htmFile
  loc_A41A15: LdPrVar
  loc_A41A17: LateMemCall
  loc_A41A1D: LitVarStr var_94, "  <tr>"
  loc_A41A22: PopAdLdVar
  loc_A41A23: FLdPr Me
  loc_A41A26: MemLdRfVar from_stack_1.htmFile
  loc_A41A29: LdPrVar
  loc_A41A2B: LateMemCall
  loc_A41A31: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_A41A36: PopAdLdVar
  loc_A41A37: FLdPr Me
  loc_A41A3A: MemLdRfVar from_stack_1.htmFile
  loc_A41A3D: LdPrVar
  loc_A41A3F: LateMemCall
  loc_A41A45: LitVarStr var_94, "  </tr>"
  loc_A41A4A: PopAdLdVar
  loc_A41A4B: FLdPr Me
  loc_A41A4E: MemLdRfVar from_stack_1.htmFile
  loc_A41A51: LdPrVar
  loc_A41A53: LateMemCall
  loc_A41A59: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A41A5E: PopAdLdVar
  loc_A41A5F: FLdPr Me
  loc_A41A62: MemLdRfVar from_stack_1.htmFile
  loc_A41A65: LdPrVar
  loc_A41A67: LateMemCall
  loc_A41A6D: LitStr "    <th width=""33" & Chr(37) & """ align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A41A70: FLdRfVar var_F8
  loc_A41A73: FLdPr Me
  loc_A41A76: VCallAd Control_ID_cboPeriodo
  loc_A41A79: FStAdFunc var_19C
  loc_A41A7C: FLdPr var_19C
  loc_A41A7F:  = Me.Text
  loc_A41A84: ILdRf var_F8
  loc_A41A87: ConcatStr
  loc_A41A88: FStStrNoPop var_1A0
  loc_A41A8B: LitStr "</span></th>"
  loc_A41A8E: ConcatStr
  loc_A41A8F: CVarStr var_B4
  loc_A41A92: PopAdLdVar
  loc_A41A93: FLdPr Me
  loc_A41A96: MemLdRfVar from_stack_1.htmFile
  loc_A41A99: LdPrVar
  loc_A41A9B: LateMemCall
  loc_A41AA1: FFreeStr var_F8 = ""
  loc_A41AA8: FFree1Ad var_19C
  loc_A41AAB: FFree1Var var_B4 = ""
  loc_A41AAE: LitVarStr var_94, "  </tr>"
  loc_A41AB3: PopAdLdVar
  loc_A41AB4: FLdPr Me
  loc_A41AB7: MemLdRfVar from_stack_1.htmFile
  loc_A41ABA: LdPrVar
  loc_A41ABC: LateMemCall
  loc_A41AC2: LitVarStr var_94, "</table>"
  loc_A41AC7: PopAdLdVar
  loc_A41AC8: FLdPr Me
  loc_A41ACB: MemLdRfVar from_stack_1.htmFile
  loc_A41ACE: LdPrVar
  loc_A41AD0: LateMemCall
  loc_A41AD6: ExitProcHresult
  loc_A41AD7: Ary1LdPr
End Function

Private Function Proc_199_46_973388() '973388
  'Data Table: 4E66BC
  loc_97335C: LitVarStr var_94, "</body>"
  loc_973361: PopAdLdVar
  loc_973362: FLdPr Me
  loc_973365: MemLdRfVar from_stack_1.htmFile
  loc_973368: LdPrVar
  loc_97336A: LateMemCall
  loc_973370: LitVarStr var_94, "</html>"
  loc_973375: PopAdLdVar
  loc_973376: FLdPr Me
  loc_973379: MemLdRfVar from_stack_1.htmFile
  loc_97337C: LdPrVar
  loc_97337E: LateMemCall
  loc_973384: ExitProcHresult
  loc_973385: FLdPr var_7600
End Function

Private Function Proc_199_47_9A5FC0() '9A5FC0
  'Data Table: 4E66BC
  loc_9A5F30: LitI4 1
  loc_9A5F35: FLdPr Me
  loc_9A5F38: MemLdRfVar from_stack_1.global_108
  loc_9A5F3B: FLdPr Me
  loc_9A5F3E: MemLdStr global_104
  loc_9A5F41: LitI2_Byte 1
  loc_9A5F43: FnUBound
  loc_9A5F45: ForI4 var_8C
  loc_9A5F4B: FLdRfVar var_92
  loc_9A5F4E: FLdPr Me
  loc_9A5F51: VCallAd Control_ID_HojasSeparadasChk
  loc_9A5F54: FStAdFunc var_90
  loc_9A5F57: FLdPr var_90
  loc_9A5F5A:  = Me.Value
  loc_9A5F5F: FLdI2 var_92
  loc_9A5F62: CI4UI1
  loc_9A5F63: LitI4 1
  loc_9A5F68: EqI4
  loc_9A5F69: FFree1Ad var_90
  loc_9A5F6C: BranchF loc_9A5F9A
  loc_9A5F6F: FLdPr Me
  loc_9A5F72: MemLdStr global_108
  loc_9A5F75: LitI4 1
  loc_9A5F7A: NeI4
  loc_9A5F7B: BranchF loc_9A5F92
  loc_9A5F7E: LitVarStr var_A4, "<div style=""page-break-before:always""></div>"
  loc_9A5F83: PopAdLdVar
  loc_9A5F84: FLdPr Me
  loc_9A5F87: MemLdRfVar from_stack_1.htmFile
  loc_9A5F8A: LdPrVar
  loc_9A5F8C: LateMemCall
  loc_9A5F92: from_stack_1v = Proc_199_45_A41AD8()
  loc_9A5F97: Branch loc_9A5FAE
  loc_9A5F9A: FLdPr Me
  loc_9A5F9D: MemLdStr global_108
  loc_9A5FA0: LitI4 1
  loc_9A5FA5: EqI4
  loc_9A5FA6: BranchF loc_9A5FAE
  loc_9A5FA9: from_stack_1v = Proc_199_45_A41AD8()
  loc_9A5FAE: from_stack_1v = Proc_199_41_BEC48C()
  loc_9A5FB3: FLdPr Me
  loc_9A5FB6: MemLdRfVar from_stack_1.global_108
  loc_9A5FB9: NextI4 var_8C, loc_9A5F4B
  loc_9A5FBE: ExitProcHresult
End Function
