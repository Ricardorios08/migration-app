VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeNotasdePedido
  Caption = "Nota de Pedido"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeNotasdePedido.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 11235
  ClientHeight = 6660
  StartUpPosition = 2 'CenterScreen
  Begin VB.ComboBox cboTipoCompra
    Style = 2
    Left = 1320
    Top = 3960
    Width = 2535
    Height = 315
    TabIndex = 24
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6405
    Width = 11235
    Height = 255
    TabIndex = 37
    OleObjectBlob = "rptListadodeNotasdePedido.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8760
    Top = 5400
    Width = 735
    Height = 615
    TabIndex = 35
    Cancel = -1  'True
    Picture = "rptListadodeNotasdePedido.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeNotasdePedido.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 5160
    Width = 3615
    Height = 1095
    TabIndex = 32
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1920
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 33
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
    Top = 5160
    Width = 3015
    Height = 1095
    TabIndex = 29
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 31
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 30
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10935
    Height = 5055
    TabIndex = 0
    Begin VB.TextBox TxtDetaNope
      Left = 1680
      Top = 1320
      Width = 6015
      Height = 315
      TabIndex = 8
      MaxLength = 400
      CausesValidation = 0   'False
    End
    Begin VB.CheckBox ChkOcultarOC
      Caption = "Ocultar OC"
      Left = 8400
      Top = 4560
      Width = 1695
      Height = 255
      TabIndex = 28
    End
    Begin VB.CheckBox ChkOcultarCotizacion
      Caption = "Ocultar Cotización"
      Left = 5640
      Top = 4560
      Width = 1695
      Height = 255
      TabIndex = 27
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 2265
      Top = 3360
      Width = 375
      Height = 375
      TabIndex = 20
      Picture = "rptListadodeNotasdePedido.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox TxtCodiNope
      Left = 1680
      Top = 840
      Width = 3615
      Height = 315
      TabIndex = 4
      MaxLength = 400
    End
    Begin VB.Frame Frame5
      Caption = "Fecha:"
      Left = 480
      Top = 2280
      Width = 5775
      Height = 855
      TabIndex = 11
      Begin VB.CommandButton cmdCalHasta
        Left = 4845
        Top = 240
        Width = 375
        Height = 375
        TabIndex = 17
        Picture = "rptListadodeNotasdePedido.frx":0CFA
        Style = 1
      End
      Begin VB.CommandButton cmdCalDesde
        Left = 2565
        Top = 240
        Width = 375
        Height = 375
        TabIndex = 14
        Picture = "rptListadodeNotasdePedido.frx":123C
        Style = 1
      End
      Begin MSMask.MaskEdBox DesdeFechNopeMsk
        Left = 1365
        Top = 240
        Width = 1095
        Height = 285
        TabIndex = 13
        OleObjectBlob = "rptListadodeNotasdePedido.frx":177E
      End
      Begin MSMask.MaskEdBox HastaFechNopeMsk
        Left = 3645
        Top = 240
        Width = 1095
        Height = 285
        TabIndex = 16
        OleObjectBlob = "rptListadodeNotasdePedido.frx":1806
      End
      Begin VB.Label Label6
        Caption = "Hasta:"
        Left = 3090
        Top = 240
        Width = 465
        Height = 195
        TabIndex = 15
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Desde:"
        Left = 765
        Top = 240
        Width = 510
        Height = 195
        TabIndex = 12
        AutoSize = -1  'True
      End
    End
    Begin VB.CheckBox ChkSoloEncabezados
      Caption = "Solo encabezados"
      Left = 2760
      Top = 4560
      Width = 1695
      Height = 255
      TabIndex = 26
    End
    Begin VB.ComboBox cboExpeImpu
      Left = 1680
      Top = 1800
      Width = 3375
      Height = 315
      TabIndex = 10
    End
    Begin VB.CheckBox ChkHojasSeparadas
      Caption = "Hojas separadas"
      Left = 240
      Top = 4560
      Width = 1575
      Height = 255
      TabIndex = 25
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1680
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9000
      Top = 2520
      Width = 1335
      Height = 495
      TabIndex = 34
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1185
      Top = 3360
      Width = 975
      Height = 315
      TabIndex = 19
      OleObjectBlob = "rptListadodeNotasdePedido.frx":188E
    End
    Begin VB.Label Label9
      Caption = "Detalle:"
      Left = 1110
      Top = 1320
      Width = 540
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Tipo Compra:"
      Left = 120
      Top = 3960
      Width = 975
      Height = 255
      TabIndex = 22
    End
    Begin VB.Label Label8
      Caption = "Organigrama:"
      Left = 120
      Top = 3360
      Width = 945
      Height = 195
      TabIndex = 18
    End
    Begin VB.Label CodiOrgaLbl
      Left = 2745
      Top = 3360
      Width = 5055
      Height = 375
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label7
      Caption = "(desde-hasta separar con guión; ejemplo: 18-21)"
      Left = 5520
      Top = 720
      Width = 3405
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "(intercalar distintas órdenes con coma; ejemplo: 18,21,25)"
      Left = 5520
      Top = 960
      Width = 4065
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Expediente:"
      Left = 810
      Top = 1800
      Width = 840
      Height = 195
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Nota de pedido:"
      Left = 510
      Top = 840
      Width = 1140
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 960
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8880
    Top = 5520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 36
    OleObjectBlob = "rptListadodeNotasdePedido.frx":18EE
  End
End

Attribute VB_Name = "rptListadodeNotasdePedido"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0059A190
  bStruc(68) As Byte ' String fields: 17
End Type

Private Type UDT_2_0059A1E0
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_3_0059A220
  bStruc(124) As Byte ' String fields: 31
End Type


Private Sub chkSoloEncabezados_Click() '96AEFC
  'Data Table: 4E2680
  loc_96AEE0: LitI4 0
  loc_96AEE5: CI2I4
  loc_96AEE6: FLdPr Me
  loc_96AEE9: VCallAd Control_ID_ChkHojasSeparadas
  loc_96AEEC: FStAdFunc var_88
  loc_96AEEF: FLdPr var_88
  loc_96AEF2: Me.Value = from_stack_1
  loc_96AEF7: FFree1Ad var_88
  loc_96AEFA: ExitProcHresult
End Sub

Private Sub TxtDetaNope_KeyPress(KeyAscii As Integer) '995C38
  'Data Table: 4E2680
  loc_995BD0: ILdI2 KeyAscii
  loc_995BD3: LitStr "."
  loc_995BD6: ImpAdCallI2 Asc()
  loc_995BDB: EqI2
  loc_995BDC: BranchF loc_995BE4
  loc_995BDF: LitI2_Byte 0
  loc_995BE1: IStI2 KeyAscii
  loc_995BE4: ILdI2 KeyAscii
  loc_995BE7: LitStr ","
  loc_995BEA: ImpAdCallI2 Asc()
  loc_995BEF: EqI2
  loc_995BF0: BranchF loc_995BF8
  loc_995BF3: LitI2_Byte 0
  loc_995BF5: IStI2 KeyAscii
  loc_995BF8: ILdI2 KeyAscii
  loc_995BFB: LitStr ";"
  loc_995BFE: ImpAdCallI2 Asc()
  loc_995C03: EqI2
  loc_995C04: BranchF loc_995C0C
  loc_995C07: LitI2_Byte 0
  loc_995C09: IStI2 KeyAscii
  loc_995C0C: ILdI2 KeyAscii
  loc_995C0F: LitStr "'"
  loc_995C12: ImpAdCallI2 Asc()
  loc_995C17: EqI2
  loc_995C18: BranchF loc_995C20
  loc_995C1B: LitI2_Byte 0
  loc_995C1D: IStI2 KeyAscii
  loc_995C20: ILdI2 KeyAscii
  loc_995C23: LitStr """"
  loc_995C26: ImpAdCallI2 Asc()
  loc_995C2B: EqI2
  loc_995C2C: BranchF loc_995C34
  loc_995C2F: LitI2_Byte 0
  loc_995C31: IStI2 KeyAscii
  loc_995C34: ExitProcHresult
  loc_995C35: CastAd
End Sub

Private Sub TxtDetaNope_Validate(Cancel As Boolean) '9BFDC8
  'Data Table: 4E2680
  loc_9BFD0C: FLdRfVar var_8A
  loc_9BFD0F: FLdPr Me
  loc_9BFD12: VCallAd Control_ID_cmdSalir
  loc_9BFD15: FStAdFunc var_88
  loc_9BFD18: FLdPr var_88
  loc_9BFD1B:  = Me.Value
  loc_9BFD20: FLdI2 var_8A
  loc_9BFD23: NotI4
  loc_9BFD24: FLdRfVar var_92
  loc_9BFD27: FLdPr Me
  loc_9BFD2A: VCallAd Control_ID_TxtDetaNope
  loc_9BFD2D: FStAdFunc var_90
  loc_9BFD30: FLdPr var_90
  loc_9BFD33:  = Me.Enabled
  loc_9BFD38: FLdI2 var_92
  loc_9BFD3B: AndI4
  loc_9BFD3C: FFreeAd var_88 = ""
  loc_9BFD43: BranchF loc_9BFDC4
  loc_9BFD46: FLdRfVar var_98
  loc_9BFD49: FLdPr Me
  loc_9BFD4C: VCallAd Control_ID_TxtDetaNope
  loc_9BFD4F: FStAdFunc var_88
  loc_9BFD52: FLdPr var_88
  loc_9BFD55:  = Me.Text
  loc_9BFD5A: LitI2_Byte 0
  loc_9BFD5C: PopTmpLdAd2 var_9A
  loc_9BFD5F: LitI2_Byte 0
  loc_9BFD61: PopTmpLdAd2 var_92
  loc_9BFD64: LitI2_Byte 0
  loc_9BFD66: PopTmpLdAd2 var_8A
  loc_9BFD69: ILdRf var_98
  loc_9BFD6C: LitStr "Detalle"
  loc_9BFD6F: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BFD74: FStStrNoPop var_A0
  loc_9BFD77: FLdPr Me
  loc_9BFD7A: MemStStrCopy
  loc_9BFD7E: FFreeStr var_98 = ""
  loc_9BFD85: FFree1Ad var_88
  loc_9BFD88: FLdPr Me
  loc_9BFD8B: VCallAd Control_ID_TxtDetaNope
  loc_9BFD8E: FStAdFunc var_A8
  loc_9BFD91: LitNothing
  loc_9BFD93: CastAd
  loc_9BFD96: FStAdFunc var_A4
  loc_9BFD99: FLdRfVar var_A4
  loc_9BFD9C: FLdZeroAd var_A8
  loc_9BFD9F: FStAdFuncNoPop
  loc_9BFDA2: CastAd
  loc_9BFDA5: FStAdFunc var_90
  loc_9BFDA8: FLdRfVar var_90
  loc_9BFDAB: FLdPr Me
  loc_9BFDAE: MemLdRfVar from_stack_1.global_100
  loc_9BFDB1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BFDB6: IStI2 Cancel
  loc_9BFDB9: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BFDC4: ExitProcHresult
  loc_9BFDC5: FLdPr Me
End Sub

Private Sub cmdCalDesde_Click() '97EE68
  'Data Table: 4E2680
  loc_97EE34: LitVar_Missing var_A4
  loc_97EE37: PopAdLdVar
  loc_97EE38: LitVarI4
  loc_97EE40: PopAdLdVar
  loc_97EE41: ImpAdLdRf MemVar_C3D9A8
  loc_97EE44: NewIfNullPr frmCalendario
  loc_97EE47: frmCalendario.Show from_stack_1, from_stack_2
  loc_97EE4C: ImpAdLdRf MemVar_C3D038
  loc_97EE4F: CDargRef
  loc_97EE53: FLdPr Me
  loc_97EE56: VCallAd Control_ID_DesdeFechNopeMsk
  loc_97EE59: FStAdFunc var_A8
  loc_97EE5C: FLdPr var_A8
  loc_97EE5F: LateIdSt
  loc_97EE64: FFree1Ad var_A8
  loc_97EE67: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97EF38
  'Data Table: 4E2680
  loc_97EF04: LitVar_Missing var_A4
  loc_97EF07: PopAdLdVar
  loc_97EF08: LitVarI4
  loc_97EF10: PopAdLdVar
  loc_97EF11: ImpAdLdRf MemVar_C3D9A8
  loc_97EF14: NewIfNullPr frmCalendario
  loc_97EF17: frmCalendario.Show from_stack_1, from_stack_2
  loc_97EF1C: ImpAdLdRf MemVar_C3D038
  loc_97EF1F: CDargRef
  loc_97EF23: FLdPr Me
  loc_97EF26: VCallAd Control_ID_HastaFechNopeMsk
  loc_97EF29: FStAdFunc var_A8
  loc_97EF2C: FLdPr var_A8
  loc_97EF2F: LateIdSt
  loc_97EF34: FFree1Ad var_A8
  loc_97EF37: ExitProcHresult
End Sub

Private Sub Form_Load() '9CEF20
  'Data Table: 4E2680
  loc_9CEE48: LitI2_Byte &HFF
  loc_9CEE4A: ImpAdStI2 MemVar_C3D840
  loc_9CEE4D: ILdRf Me
  loc_9CEE50: CastAd
  loc_9CEE53: FStAdFunc var_8C
  loc_9CEE56: FLdRfVar var_8C
  loc_9CEE59: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CEE5E: FFree1Ad var_8C
  loc_9CEE61: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CEE64: FLdRfVar var_88
  loc_9CEE67: NewIfNullPr clsperiodo
  loc_9CEE6A: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CEE6F: FLdRfVar var_90
  loc_9CEE72: FLdRfVar var_88
  loc_9CEE75: NewIfNullPr clsperiodo
  loc_9CEE78: from_stack_1 = clsperiodo.RecordCount
  loc_9CEE7D: ILdRf var_90
  loc_9CEE80: LitI4 0
  loc_9CEE85: GtI4
  loc_9CEE86: BranchF loc_9CEF19
  loc_9CEE89: FLdRfVar var_88
  loc_9CEE8C: NewIfNullPr clsperiodo
  loc_9CEE8F: Call clsperiodo.MoveFirst()
  loc_9CEE94: FLdRfVar var_92
  loc_9CEE97: FLdRfVar var_88
  loc_9CEE9A: NewIfNullPr clsperiodo
  loc_9CEE9D: from_stack_1 = clsperiodo.EOF
  loc_9CEEA2: FLdI2 var_92
  loc_9CEEA5: NotI4
  loc_9CEEA6: BranchF loc_9CEF19
  loc_9CEEA9: LitVar_Missing var_D0
  loc_9CEEAC: PopAdLdVar
  loc_9CEEAD: FLdRfVar var_BC
  loc_9CEEB0: FLdRfVar var_AC
  loc_9CEEB3: LitVarStr var_A8, "PeriInfo"
  loc_9CEEB8: PopAdLdVar
  loc_9CEEB9: FLdRfVar var_98
  loc_9CEEBC: FLdRfVar var_8C
  loc_9CEEBF: FLdRfVar var_88
  loc_9CEEC2: NewIfNullPr clsperiodo
  loc_9CEEC5: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CEECA: FLdPr var_8C
  loc_9CEECD:  = Me.Fields
  loc_9CEED2: FLdPr var_98
  loc_9CEED5: from_stack_2 = Me.Item(from_stack_1)
  loc_9CEEDA: FLdPr var_AC
  loc_9CEEDD:  = Me.Value
  loc_9CEEE2: FLdRfVar var_BC
  loc_9CEEE5: CStrVarTmp
  loc_9CEEE6: FStStrNoPop var_C0
  loc_9CEEE9: FLdPr Me
  loc_9CEEEC: VCallAd Control_ID_cboPeriodo
  loc_9CEEEF: FStAdFunc var_D4
  loc_9CEEF2: FLdPr var_D4
  loc_9CEEF5: Me.AddItem from_stack_1, from_stack_2
  loc_9CEEFA: FFree1Str var_C0
  loc_9CEEFD: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CEF08: FFree1Var var_BC = ""
  loc_9CEF0B: FLdRfVar var_88
  loc_9CEF0E: NewIfNullPr clsperiodo
  loc_9CEF11: Call clsperiodo.MoveSiguiente()
  loc_9CEF16: Branch loc_9CEE94
  loc_9CEF19: Call cmdNueva_Click()
  loc_9CEF1E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95E6F0
  'Data Table: 4E2680
  loc_95E6D8: FLdPr Me
  loc_95E6DB: VCallAd Control_ID_wbbReporte
  loc_95E6DE: FStAdFunc var_88
  loc_95E6E1: FLdRfVar var_88
  loc_95E6E4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95E6E9: FFree1Ad var_88
  loc_95E6EC: ExitProcHresult
  loc_95E6ED: FStStrNoPop var_8C
End Sub

Private Sub cmdPdf_Click() 'AD7F38
  'Data Table: 4E2680
  loc_AD7960: LitStr "Municipalidad de Guaymallén"
  loc_AD7963: LitStr "Municipalidad de General Alvear"
  loc_AD7966: EqStr
  loc_AD7968: BranchF loc_AD7EF6
  loc_AD796B: LitVarStr var_A4, "Generando reporte..."
  loc_AD7970: PopAdLdVar
  loc_AD7971: FLdPr Me
  loc_AD7974: VCallAd Control_ID_statusBar
  loc_AD7977: FStAdFunc var_B8
  loc_AD797A: FLdPr var_B8
  loc_AD797D: LateIdSt
  loc_AD7982: FFree1Ad var_B8
  loc_AD7985: LitI4 &HB
  loc_AD798A: CI2I4
  loc_AD798B: FLdPr Me
  loc_AD798E: Me.MousePointer = from_stack_1
  loc_AD7993: LitI2_Byte 0
  loc_AD7995: PopTmpLdAd2 var_BA
  loc_AD7998: Call TxtCodiNope_Validate(from_stack_1v)
  loc_AD799D: FLdPr Me
  loc_AD79A0: MemLdStr global_100
  loc_AD79A3: LitStr vbNullString
  loc_AD79A6: NeStr
  loc_AD79A8: BranchF loc_AD79C0
  loc_AD79AB: FLdPr Me
  loc_AD79AE: VCallAd Control_ID_TxtCodiNope
  loc_AD79B1: CVarAd
  loc_AD79B5: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_AD79BA: FFree1Var var_CC = ""
  loc_AD79BD: Branch loc_AD7F0C
  loc_AD79C0: FLdRfVar var_D0
  loc_AD79C3: FLdPr Me
  loc_AD79C6: VCallAd Control_ID_cboExpeImpu
  loc_AD79C9: FStAdFunc var_B8
  loc_AD79CC: FLdPr var_B8
  loc_AD79CF:  = Me.Text
  loc_AD79D4: FLdRfVar var_D8
  loc_AD79D7: FLdPr Me
  loc_AD79DA: VCallAd Control_ID_cboExpeImpu
  loc_AD79DD: FStAdFunc var_D4
  loc_AD79E0: FLdPr var_D4
  loc_AD79E3:  = Me.Text
  loc_AD79E8: LitVarStr var_B4, vbNullString
  loc_AD79ED: FStVarCopyObj var_EC
  loc_AD79F0: FLdRfVar var_EC
  loc_AD79F3: LitStr " AND np.ExpeImpu = '"
  loc_AD79F6: ILdRf var_D8
  loc_AD79F9: ConcatStr
  loc_AD79FA: FStStrNoPop var_DC
  loc_AD79FD: LitStr "'"
  loc_AD7A00: ConcatStr
  loc_AD7A01: CVarStr var_CC
  loc_AD7A04: ILdRf var_D0
  loc_AD7A07: LitStr vbNullString
  loc_AD7A0A: NeStr
  loc_AD7A0C: CVarBoolI2 var_A4
  loc_AD7A10: FLdRfVar var_FC
  loc_AD7A13: ImpAdCallFPR4  = IIf(, , )
  loc_AD7A18: FLdRfVar var_FC
  loc_AD7A1B: CStrVarTmp
  loc_AD7A1C: FStStr var_88
  loc_AD7A1F: FFreeStr var_D0 = "": var_D8 = ""
  loc_AD7A28: FFreeAd var_B8 = ""
  loc_AD7A2F: FFreeVar var_A4 = "": var_CC = "": var_EC = ""
  loc_AD7A3A: FLdPr Me
  loc_AD7A3D: VCallAd Control_ID_DesdeFechNopeMsk
  loc_AD7A40: FStAdFunc var_B8
  loc_AD7A43: FLdPr var_B8
  loc_AD7A46: LateIdLdVar var_CC DispID_15 0
  loc_AD7A4D: PopAd
  loc_AD7A4F: FLdPr Me
  loc_AD7A52: VCallAd Control_ID_HastaFechNopeMsk
  loc_AD7A55: FStAdFunc var_D4
  loc_AD7A58: FLdPr var_D4
  loc_AD7A5B: LateIdLdVar var_14C DispID_15 0
  loc_AD7A62: PopAd
  loc_AD7A64: LitVarStr var_B4, " AND FechNope BETWEEN "
  loc_AD7A69: LitI4 1
  loc_AD7A6E: LitI4 1
  loc_AD7A73: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_AD7A78: FStVarCopyObj var_FC
  loc_AD7A7B: FLdRfVar var_FC
  loc_AD7A7E: FLdRfVar var_CC
  loc_AD7A81: CStrVarTmp
  loc_AD7A82: CVarStr var_EC
  loc_AD7A85: FLdRfVar var_10C
  loc_AD7A88: ImpAdCallFPR4  = Format(, )
  loc_AD7A8D: FLdRfVar var_10C
  loc_AD7A90: ConcatVar var_11C
  loc_AD7A94: LitVarStr var_12C, " AND "
  loc_AD7A99: ConcatVar var_13C
  loc_AD7A9D: LitI4 1
  loc_AD7AA2: LitI4 1
  loc_AD7AA7: LitVarStr var_16C, "'yyyy-mm-dd'"
  loc_AD7AAC: FStVarCopyObj var_17C
  loc_AD7AAF: FLdRfVar var_17C
  loc_AD7AB2: FLdRfVar var_14C
  loc_AD7AB5: CStrVarTmp
  loc_AD7AB6: CVarStr var_15C
  loc_AD7AB9: FLdRfVar var_18C
  loc_AD7ABC: ImpAdCallFPR4  = Format(, )
  loc_AD7AC1: FLdRfVar var_18C
  loc_AD7AC4: ConcatVar var_19C
  loc_AD7AC8: CStrVarTmp
  loc_AD7AC9: FStStr var_8C
  loc_AD7ACC: FFreeAd var_B8 = ""
  loc_AD7AD3: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_14C = "": var_15C = "": var_17C = "": var_13C = "": var_18C = ""
  loc_AD7AEC: FLdPr Me
  loc_AD7AEF: VCallAd Control_ID_CodiOrgaMsk
  loc_AD7AF2: FStAdFunc var_B8
  loc_AD7AF5: FLdPr var_B8
  loc_AD7AF8: LateIdLdVar var_CC DispID_22 0
  loc_AD7AFF: PopAd
  loc_AD7B01: FLdPr Me
  loc_AD7B04: VCallAd Control_ID_CodiOrgaMsk
  loc_AD7B07: FStAdFunc var_D4
  loc_AD7B0A: FLdPr var_D4
  loc_AD7B0D: LateIdLdVar var_EC DispID_22 0
  loc_AD7B14: PopAd
  loc_AD7B16: LitVarStr var_B4, vbNullString
  loc_AD7B1B: FStVarCopyObj var_10C
  loc_AD7B1E: FLdRfVar var_10C
  loc_AD7B21: LitStr " AND np.CodiOrga LIKE '"
  loc_AD7B24: FLdRfVar var_EC
  loc_AD7B27: CStrVarTmp
  loc_AD7B28: FStStrNoPop var_D8
  loc_AD7B2B: ConcatStr
  loc_AD7B2C: FStStrNoPop var_DC
  loc_AD7B2F: LitStr Chr(37) & "'"
  loc_AD7B32: ConcatStr
  loc_AD7B33: CVarStr var_FC
  loc_AD7B36: FLdRfVar var_CC
  loc_AD7B39: CStrVarTmp
  loc_AD7B3A: FStStrNoPop var_D0
  loc_AD7B3D: LitStr vbNullString
  loc_AD7B40: NeStr
  loc_AD7B42: CVarBoolI2 var_A4
  loc_AD7B46: FLdRfVar var_11C
  loc_AD7B49: ImpAdCallFPR4  = IIf(, , )
  loc_AD7B4E: FLdRfVar var_11C
  loc_AD7B51: CStrVarTmp
  loc_AD7B52: FStStr var_90
  loc_AD7B55: FFreeStr var_D0 = "": var_D8 = ""
  loc_AD7B5E: FFreeAd var_B8 = ""
  loc_AD7B65: FFreeVar var_CC = "": var_EC = "": var_A4 = "": var_FC = "": var_10C = ""
  loc_AD7B74: FLdRfVar var_BA
  loc_AD7B77: FLdPr Me
  loc_AD7B7A: VCallAd Control_ID_cboTipoCompra
  loc_AD7B7D: FStAdFunc var_B8
  loc_AD7B80: FLdPr var_B8
  loc_AD7B83:  = Me.ListIndex
  loc_AD7B88: FLdRfVar var_19E
  loc_AD7B8B: FLdPr Me
  loc_AD7B8E: VCallAd Control_ID_cboTipoCompra
  loc_AD7B91: FStAdFunc var_D4
  loc_AD7B94: FLdPr var_D4
  loc_AD7B97:  = Me.ListIndex
  loc_AD7B9C: FLdRfVar var_1A8
  loc_AD7B9F: FLdI2 var_19E
  loc_AD7BA2: FLdPr Me
  loc_AD7BA5: VCallAd Control_ID_cboTipoCompra
  loc_AD7BA8: FStAdFunc var_1A4
  loc_AD7BAB: FLdPr var_1A4
  loc_AD7BAE:  = Me.ItemData
  loc_AD7BB3: LitVarStr var_B4, vbNullString
  loc_AD7BB8: FStVarCopyObj var_EC
  loc_AD7BBB: FLdRfVar var_EC
  loc_AD7BBE: LitStr " AND np.CodiTico = "
  loc_AD7BC1: ILdRf var_1A8
  loc_AD7BC4: CStrI4
  loc_AD7BC6: FStStrNoPop var_D0
  loc_AD7BC9: ConcatStr
  loc_AD7BCA: CVarStr var_CC
  loc_AD7BCD: FLdI2 var_BA
  loc_AD7BD0: LitI2_Byte 0
  loc_AD7BD2: NeI2
  loc_AD7BD3: CVarBoolI2 var_A4
  loc_AD7BD7: FLdRfVar var_FC
  loc_AD7BDA: ImpAdCallFPR4  = IIf(, , )
  loc_AD7BDF: FLdRfVar var_FC
  loc_AD7BE2: CStrVarTmp
  loc_AD7BE3: FStStr var_94
  loc_AD7BE6: FFree1Str var_D0
  loc_AD7BE9: FFreeAd var_B8 = "": var_D4 = ""
  loc_AD7BF2: FFreeVar var_A4 = "": var_CC = "": var_EC = ""
  loc_AD7BFD: LitStr "SELECT np.CodiNope, np.CoinNope, DetaNope, np.CodiTico, DetaTico, np.CodiOrga, DetaOrga, ExpeImpu, FechNope, IFNULL(FecoNope,'') FecoNope, FeliNope, FeanNope, np.BajaMoti, np.BajaUsua, np.AltaUsua"
  loc_AD7C00: LitStr ", IF(Count(itn.CodiItno)=Sum(IF(IdImpu=0,0,1)),'Si','No') Imputado"
  loc_AD7C03: ConcatStr
  loc_AD7C04: FStStrNoPop var_D0
  loc_AD7C07: LitStr ", IFNULL(r.IdRubro,0) IdRubro, IFNULL(DetaRubro,'') DetaRubro"
  loc_AD7C0A: ConcatStr
  loc_AD7C0B: FStStrNoPop var_D8
  loc_AD7C0E: LitStr ", np.IdUbfi, IFNULL(DienNope,'') DienNope"
  loc_AD7C11: ConcatStr
  loc_AD7C12: FStStrNoPop var_DC
  loc_AD7C15: LitStr " FROM notapedido np"
  loc_AD7C18: ConcatStr
  loc_AD7C19: FStStrNoPop var_1AC
  loc_AD7C1C: LitStr " INNER JOIN itemnota itn ON itn.PeriInfo = np.PeriInfo AND itn.CodiNope = np.CodiNope"
  loc_AD7C1F: ConcatStr
  loc_AD7C20: FStStrNoPop var_1B0
  loc_AD7C23: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_AD7C26: ConcatStr
  loc_AD7C27: FStStrNoPop var_1B4
  loc_AD7C2A: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = np.PeriInfo AND o.CodiOrga = np.CodiOrga"
  loc_AD7C2D: ConcatStr
  loc_AD7C2E: FStStrNoPop var_1B8
  loc_AD7C31: LitStr " LEFT JOIN rubro r ON r.IdRubro = np.IdRubro"
  loc_AD7C34: ConcatStr
  loc_AD7C35: FStStrNoPop var_1BC
  loc_AD7C38: LitStr " WHERE np.PeriInfo = "
  loc_AD7C3B: ConcatStr
  loc_AD7C3C: FStStrNoPop var_1C4
  loc_AD7C3F: FLdRfVar var_1C0
  loc_AD7C42: FLdPr Me
  loc_AD7C45: VCallAd Control_ID_cboPeriodo
  loc_AD7C48: FStAdFunc var_B8
  loc_AD7C4B: FLdPr var_B8
  loc_AD7C4E:  = Me.Text
  loc_AD7C53: ILdRf var_1C0
  loc_AD7C56: ConcatStr
  loc_AD7C57: FStStrNoPop var_1C8
  loc_AD7C5A: ILdRf var_88
  loc_AD7C5D: ConcatStr
  loc_AD7C5E: FStStrNoPop var_1CC
  loc_AD7C61: ILdRf var_8C
  loc_AD7C64: ConcatStr
  loc_AD7C65: FStStrNoPop var_1D0
  loc_AD7C68: FLdPr Me
  loc_AD7C6B: MemLdStr global_104
  loc_AD7C6E: ConcatStr
  loc_AD7C6F: FStStrNoPop var_1D4
  loc_AD7C72: ILdRf var_90
  loc_AD7C75: ConcatStr
  loc_AD7C76: FStStrNoPop var_1D8
  loc_AD7C79: ILdRf var_94
  loc_AD7C7C: ConcatStr
  loc_AD7C7D: FStStrNoPop var_1DC
  loc_AD7C80: LitStr " GROUP BY np.CodiNope"
  loc_AD7C83: ConcatStr
  loc_AD7C84: FStStrNoPop var_1E0
  loc_AD7C87: LitStr " ORDER BY np.CodiNope;"
  loc_AD7C8A: ConcatStr
  loc_AD7C8B: FStStrNoPop var_1E4
  loc_AD7C8E: FLdPr Me
  loc_AD7C91: MemLdRfVar from_stack_1.global_72
  loc_AD7C94: NewIfNullPr clsnotapedido
  loc_AD7C97: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_AD7C9C: FFreeStr var_D0 = "": var_D8 = "": var_DC = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C4 = "": var_1C0 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = ""
  loc_AD7CC3: FFree1Ad var_B8
  loc_AD7CC6: FLdRfVar var_1A8
  loc_AD7CC9: FLdPr Me
  loc_AD7CCC: MemLdRfVar from_stack_1.global_72
  loc_AD7CCF: NewIfNullPr clsnotapedido
  loc_AD7CD2: from_stack_1 = clsnotapedido.RecordCount
  loc_AD7CD7: ILdRf var_1A8
  loc_AD7CDA: LitI4 0
  loc_AD7CDF: EqI4
  loc_AD7CE0: BranchF loc_AD7CF6
  loc_AD7CE3: LitI4 0
  loc_AD7CE8: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AD7CEB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD7CF0: Branch loc_AD7F0C
  loc_AD7CF3: Branch loc_AD7EDD
  loc_AD7CF6: FLdPr Me
  loc_AD7CF9: MemLdRfVar from_stack_1.global_72
  loc_AD7CFC: NewIfNullPr clsnotapedido
  loc_AD7CFF: Call clsnotapedido.MoveFirst()
  loc_AD7D04: FLdRfVar var_BA
  loc_AD7D07: FLdPr Me
  loc_AD7D0A: MemLdRfVar from_stack_1.global_72
  loc_AD7D0D: NewIfNullPr clsnotapedido
  loc_AD7D10: from_stack_1 = clsnotapedido.EOF
  loc_AD7D15: FLdI2 var_BA
  loc_AD7D18: NotI4
  loc_AD7D19: BranchF loc_AD7EDD
  loc_AD7D1C: FLdRfVar var_D8
  loc_AD7D1F: FLdPr Me
  loc_AD7D22:  = Me.Tag
  loc_AD7D27: FLdRfVar var_18C
  loc_AD7D2A: FLdRfVar var_208
  loc_AD7D2D: LitVarStr var_204, "ExpeImpu"
  loc_AD7D32: PopAdLdVar
  loc_AD7D33: FLdRfVar var_1A4
  loc_AD7D36: FLdRfVar var_D4
  loc_AD7D39: FLdPr Me
  loc_AD7D3C: MemLdRfVar from_stack_1.global_72
  loc_AD7D3F: NewIfNullPr clsnotapedido
  loc_AD7D42: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AD7D47: FLdPr var_D4
  loc_AD7D4A:  = Me.Fields
  loc_AD7D4F: FLdPr var_1A4
  loc_AD7D52: from_stack_2 = Me.Item(from_stack_1)
  loc_AD7D57: FLdPr var_208
  loc_AD7D5A:  = Me.Value
  loc_AD7D5F: FLdRfVar var_234
  loc_AD7D62: LitVarStr var_230, "ExpeImpu"
  loc_AD7D67: PopAdLdVar
  loc_AD7D68: FLdRfVar var_220
  loc_AD7D6B: FLdRfVar var_21C
  loc_AD7D6E: FLdPr Me
  loc_AD7D71: MemLdRfVar from_stack_1.global_72
  loc_AD7D74: NewIfNullPr clsnotapedido
  loc_AD7D77: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AD7D7C: FLdPr var_21C
  loc_AD7D7F:  = Me.Fields
  loc_AD7D84: FLdPr var_220
  loc_AD7D87: from_stack_2 = Me.Item(from_stack_1)
  loc_AD7D8C: FLdRfVar var_D0
  loc_AD7D8F: FLdPr Me
  loc_AD7D92:  = Me.Tag
  loc_AD7D97: FLdZeroAd var_D0
  loc_AD7D9A: CVarStr var_10C
  loc_AD7D9D: LitVarStr var_12C, " - "
  loc_AD7DA2: FStVarCopyObj var_EC
  loc_AD7DA5: FLdRfVar var_EC
  loc_AD7DA8: LitVarStr var_B4, vbNullString
  loc_AD7DAD: FStVarCopyObj var_CC
  loc_AD7DB0: FLdRfVar var_CC
  loc_AD7DB3: ILdRf var_D8
  loc_AD7DB6: LitStr vbNullString
  loc_AD7DB9: EqStr
  loc_AD7DBB: CVarBoolI2 var_A4
  loc_AD7DBF: FLdRfVar var_FC
  loc_AD7DC2: ImpAdCallFPR4  = IIf(, , )
  loc_AD7DC7: FLdRfVar var_FC
  loc_AD7DCA: ConcatVar var_11C
  loc_AD7DCE: LitVarStr var_16C, "Expte "
  loc_AD7DD3: ConcatVar var_13C
  loc_AD7DD7: FLdRfVar var_DC
  loc_AD7DDA: FLdPr Me
  loc_AD7DDD: VCallAd Control_ID_cboPeriodo
  loc_AD7DE0: FStAdFunc var_B8
  loc_AD7DE3: FLdPr var_B8
  loc_AD7DE6:  = Me.Text
  loc_AD7DEB: FLdZeroAd var_DC
  loc_AD7DEE: CVarStr var_14C
  loc_AD7DF1: ConcatVar var_15C
  loc_AD7DF5: LitVarStr var_1F4, "-"
  loc_AD7DFA: ConcatVar var_17C
  loc_AD7DFE: LitVarStr var_264, "sin expdte"
  loc_AD7E03: FStVarCopyObj var_274
  loc_AD7E06: FLdRfVar var_274
  loc_AD7E09: FLdZeroAd var_234
  loc_AD7E0C: CVarAd
  loc_AD7E10: FLdRfVar var_18C
  loc_AD7E13: LitVarStr var_218, vbNullString
  loc_AD7E18: HardType
  loc_AD7E19: NeVar var_19C
  loc_AD7E1D: FStVar var_244
  loc_AD7E21: FLdRfVar var_244
  loc_AD7E24: FLdRfVar var_284
  loc_AD7E27: ImpAdCallFPR4  = IIf(, , )
  loc_AD7E2C: FLdRfVar var_284
  loc_AD7E2F: ConcatVar var_294
  loc_AD7E33: LitVarStr var_2A4, " - Nota de Pedido Nro "
  loc_AD7E38: ConcatVar var_2B4
  loc_AD7E3C: FLdRfVar var_2E0
  loc_AD7E3F: FLdRfVar var_2D0
  loc_AD7E42: LitVarStr var_2CC, "CodiNope"
  loc_AD7E47: PopAdLdVar
  loc_AD7E48: FLdRfVar var_2BC
  loc_AD7E4B: FLdRfVar var_2B8
  loc_AD7E4E: FLdPr Me
  loc_AD7E51: MemLdRfVar from_stack_1.global_72
  loc_AD7E54: NewIfNullPr clsnotapedido
  loc_AD7E57: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AD7E5C: FLdPr var_2B8
  loc_AD7E5F:  = Me.Fields
  loc_AD7E64: FLdPr var_2BC
  loc_AD7E67: from_stack_2 = Me.Item(from_stack_1)
  loc_AD7E6C: FLdPr var_2D0
  loc_AD7E6F:  = Me.Value
  loc_AD7E74: FLdRfVar var_2E0
  loc_AD7E77: ConcatVar var_2F0
  loc_AD7E7B: CStrVarVal var_1AC
  loc_AD7E7F: FLdPr Me
  loc_AD7E82: Me.Tag = from_stack_1
  loc_AD7E87: FFreeStr var_D8 = ""
  loc_AD7E8E: FFreeAd var_B8 = "": var_D4 = "": var_1A4 = "": var_208 = "": var_21C = "": var_220 = "": var_2B8 = "": var_2BC = ""
  loc_AD7EA3: FFreeVar var_A4 = "": var_CC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_13C = "": var_14C = "": var_15C = "": var_18C = "": var_244 = "": var_254 = "": var_274 = "": var_17C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2E0 = ""
  loc_AD7ECC: FLdPr Me
  loc_AD7ECF: MemLdRfVar from_stack_1.global_72
  loc_AD7ED2: NewIfNullPr clsnotapedido
  loc_AD7ED5: Call clsnotapedido.MoveSiguiente()
  loc_AD7EDA: Branch loc_AD7D04
  loc_AD7EDD: LitI2_Byte 0
  loc_AD7EDF: ILdRf Me
  loc_AD7EE2: CastAd
  loc_AD7EE5: FStAdFunc var_B8
  loc_AD7EE8: FLdRfVar var_B8
  loc_AD7EEB: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_AD7EF0: FFree1Ad var_B8
  loc_AD7EF3: Branch loc_AD7F0C
  loc_AD7EF6: LitI2_Byte 0
  loc_AD7EF8: ILdRf Me
  loc_AD7EFB: CastAd
  loc_AD7EFE: FStAdFunc var_B8
  loc_AD7F01: FLdRfVar var_B8
  loc_AD7F04: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_AD7F09: FFree1Ad var_B8
  loc_AD7F0C: LitI4 0
  loc_AD7F11: CI2I4
  loc_AD7F12: FLdPr Me
  loc_AD7F15: Me.MousePointer = from_stack_1
  loc_AD7F1A: LitVarStr var_A4, vbNullString
  loc_AD7F1F: PopAdLdVar
  loc_AD7F20: FLdPr Me
  loc_AD7F23: VCallAd Control_ID_statusBar
  loc_AD7F26: FStAdFunc var_B8
  loc_AD7F29: FLdPr var_B8
  loc_AD7F2C: LateIdSt
  loc_AD7F31: FFree1Ad var_B8
  loc_AD7F34: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '989A64
  'Data Table: 4E2680
  loc_989A2C: FLdPr Me
  loc_989A2F: VCallAd Control_ID_statusBar
  loc_989A32: FStAdFunc var_88
  loc_989A35: FLdPr var_88
  loc_989A38: LateIdLdVar var_98 DispID_1 0
  loc_989A3F: CStrVarTmp
  loc_989A40: CVarStr var_A8
  loc_989A43: PopAdLdVar
  loc_989A44: FLdPr Me
  loc_989A47: VCallAd Control_ID_statusBar
  loc_989A4A: FStAdFunc var_BC
  loc_989A4D: FLdPr var_BC
  loc_989A50: LateIdSt
  loc_989A55: FFreeAd var_88 = ""
  loc_989A5C: FFreeVar var_98 = ""
  loc_989A63: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94A790
  'Data Table: 4E2680
  loc_94A77C: FLdPr Me
  loc_94A77F: VCallAd Control_ID_CodiOrgaMsk
  loc_94A782: CVarAd
  loc_94A786: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A78B: FFree1Var var_94 = ""
  loc_94A78E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A08334
  'Data Table: 4E2680
  loc_A081E8: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A081EB: FLdRfVar var_90
  loc_A081EE: FLdPr Me
  loc_A081F1: VCallAd Control_ID_cboPeriodo
  loc_A081F4: FStAdFunc var_8C
  loc_A081F7: FLdPr var_8C
  loc_A081FA:  = Me.Text
  loc_A081FF: ILdRf var_90
  loc_A08202: ConcatStr
  loc_A08203: FStStrNoPop var_94
  loc_A08206: LitStr " AND CodiOrga LIKE '"
  loc_A08209: ConcatStr
  loc_A0820A: FStStrNoPop var_AC
  loc_A0820D: FLdPr Me
  loc_A08210: VCallAd Control_ID_CodiOrgaMsk
  loc_A08213: FStAdFunc var_98
  loc_A08216: FLdPr var_98
  loc_A08219: LateIdLdVar var_A8 DispID_22 0
  loc_A08220: CStrVarTmp
  loc_A08221: FStStrNoPop var_B0
  loc_A08224: ConcatStr
  loc_A08225: FStStrNoPop var_B4
  loc_A08228: LitStr Chr(37) & "'"
  loc_A0822B: ConcatStr
  loc_A0822C: FStStrNoPop var_B8
  loc_A0822F: FLdRfVar var_88
  loc_A08232: NewIfNullPr clsorganigrama
  loc_A08235: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A0823A: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A08249: FFreeAd var_8C = ""
  loc_A08250: FFree1Var var_A8 = ""
  loc_A08253: FLdRfVar var_BC
  loc_A08256: FLdRfVar var_88
  loc_A08259: NewIfNullPr clsorganigrama
  loc_A0825C: from_stack_1 = clsorganigrama.RecordCount
  loc_A08261: ILdRf var_BC
  loc_A08264: FStR4 var_C0
  loc_A08267: ILdRf var_C0
  loc_A0826A: LitI4 0
  loc_A0826F: EqI4
  loc_A08270: BranchF loc_A0828D
  loc_A08273: LitStr "0 registros encontrados"
  loc_A08276: FLdPr Me
  loc_A08279: VCallAd Control_ID_CodiOrgaLbl
  loc_A0827C: FStAdFunc var_8C
  loc_A0827F: FLdPr var_8C
  loc_A08282: Me.Caption = from_stack_1
  loc_A08287: FFree1Ad var_8C
  loc_A0828A: Branch loc_A08332
  loc_A0828D: ILdRf var_C0
  loc_A08290: LitI4 1
  loc_A08295: EqI4
  loc_A08296: BranchF loc_A082FA
  loc_A08299: FLdRfVar var_A8
  loc_A0829C: FLdRfVar var_D4
  loc_A0829F: LitVarStr var_D0, "DetaOrga"
  loc_A082A4: PopAdLdVar
  loc_A082A5: FLdRfVar var_98
  loc_A082A8: FLdRfVar var_8C
  loc_A082AB: FLdRfVar var_88
  loc_A082AE: NewIfNullPr clsorganigrama
  loc_A082B1: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A082B6: FLdPr var_8C
  loc_A082B9:  = Me.Fields
  loc_A082BE: FLdPr var_98
  loc_A082C1: from_stack_2 = Me.Item(from_stack_1)
  loc_A082C6: FLdPr var_D4
  loc_A082C9:  = Me.Value
  loc_A082CE: FLdRfVar var_A8
  loc_A082D1: CStrVarTmp
  loc_A082D2: FStStrNoPop var_90
  loc_A082D5: FLdPr Me
  loc_A082D8: VCallAd Control_ID_CodiOrgaLbl
  loc_A082DB: FStAdFunc var_D8
  loc_A082DE: FLdPr var_D8
  loc_A082E1: Me.Caption = from_stack_1
  loc_A082E6: FFree1Str var_90
  loc_A082E9: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A082F4: FFree1Var var_A8 = ""
  loc_A082F7: Branch loc_A08332
  loc_A082FA: FLdRfVar var_BC
  loc_A082FD: FLdRfVar var_88
  loc_A08300: NewIfNullPr clsorganigrama
  loc_A08303: from_stack_1 = clsorganigrama.RecordCount
  loc_A08308: ILdRf var_BC
  loc_A0830B: CStrI4
  loc_A0830D: FStStrNoPop var_90
  loc_A08310: LitStr " organigramas encontrados"
  loc_A08313: ConcatStr
  loc_A08314: FStStrNoPop var_94
  loc_A08317: FLdPr Me
  loc_A0831A: VCallAd Control_ID_CodiOrgaLbl
  loc_A0831D: FStAdFunc var_8C
  loc_A08320: FLdPr var_8C
  loc_A08323: Me.Caption = from_stack_1
  loc_A08328: FFreeStr var_90 = ""
  loc_A0832F: FFree1Ad var_8C
  loc_A08332: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '955EAC
  'Data Table: 4E2680
  loc_955E94: ILdRf Me
  loc_955E97: CastAd
  loc_955E9A: FStAdFunc var_88
  loc_955E9D: FLdRfVar var_88
  loc_955EA0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_955EA5: FFree1Ad var_88
  loc_955EA8: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96AE5C
  'Data Table: 4E2680
  loc_96AE40: LitI2_Byte &HFF
  loc_96AE42: LitI2_Byte 0
  loc_96AE44: ILdRf Me
  loc_96AE47: CastAd
  loc_96AE4A: FStAdFunc var_88
  loc_96AE4D: FLdRfVar var_88
  loc_96AE50: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96AE55: FFree1Ad var_88
  loc_96AE58: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C81A8
  'Data Table: 4E2680
  loc_9C80C8: LitI2_Byte 0
  loc_9C80CA: FLdPr Me
  loc_9C80CD: MemStI2 bGenerado
  loc_9C80D0: LitI2_Byte &HFF
  loc_9C80D2: FLdPr Me
  loc_9C80D5: MemStI2 bLogos
  loc_9C80D8: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C80DD: ImpAdLdI2 MemVar_C3D064
  loc_9C80E0: CStrUI1
  loc_9C80E2: FStStrNoPop var_88
  loc_9C80E5: FLdPr Me
  loc_9C80E8: VCallAd Control_ID_cboPeriodo
  loc_9C80EB: FStAdFunc var_8C
  loc_9C80EE: FLdPr var_8C
  loc_9C80F1: Me.Text = from_stack_1
  loc_9C80F6: FFree1Str var_88
  loc_9C80F9: FFree1Ad var_8C
  loc_9C80FC: LitStr vbNullString
  loc_9C80FF: FLdPr Me
  loc_9C8102: VCallAd Control_ID_TxtDetaNope
  loc_9C8105: FStAdFunc var_8C
  loc_9C8108: FLdPr var_8C
  loc_9C810B: Me.Text = from_stack_1
  loc_9C8110: FFree1Ad var_8C
  loc_9C8113: LitStr vbNullString
  loc_9C8116: FLdPr Me
  loc_9C8119: VCallAd Control_ID_cboExpeImpu
  loc_9C811C: FStAdFunc var_8C
  loc_9C811F: FLdPr var_8C
  loc_9C8122: Me.Text = from_stack_1
  loc_9C8127: FFree1Ad var_8C
  loc_9C812A: LitI2_Byte 0
  loc_9C812C: FLdPr Me
  loc_9C812F: VCallAd Control_ID_cboTipoCompra
  loc_9C8132: FStAdFunc var_8C
  loc_9C8135: FLdPr var_8C
  loc_9C8138: Me.ListIndex = from_stack_1
  loc_9C813D: FFree1Ad var_8C
  loc_9C8140: LitVarStr var_9C, vbNullString
  loc_9C8145: PopAdLdVar
  loc_9C8146: FLdPr Me
  loc_9C8149: VCallAd Control_ID_CodiOrgaMsk
  loc_9C814C: FStAdFunc var_8C
  loc_9C814F: FLdPr var_8C
  loc_9C8152: LateIdSt
  loc_9C8157: FFree1Ad var_8C
  loc_9C815A: LitI4 0
  loc_9C815F: CI2I4
  loc_9C8160: FLdPr Me
  loc_9C8163: VCallAd Control_ID_ChkSoloEncabezados
  loc_9C8166: FStAdFunc var_8C
  loc_9C8169: FLdPr var_8C
  loc_9C816C: Me.Value = from_stack_1
  loc_9C8171: FFree1Ad var_8C
  loc_9C8174: LitI4 1
  loc_9C8179: CI2I4
  loc_9C817A: FLdPr Me
  loc_9C817D: VCallAd Control_ID_ChkHojasSeparadas
  loc_9C8180: FStAdFunc var_8C
  loc_9C8183: FLdPr var_8C
  loc_9C8186: Me.Value = from_stack_1
  loc_9C818B: FFree1Ad var_8C
  loc_9C818E: Call HabilitarCriterio()
  loc_9C8193: ILdRf Me
  loc_9C8196: CastAd
  loc_9C8199: FStAdFunc var_8C
  loc_9C819C: FLdRfVar var_8C
  loc_9C819F: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C81A4: FFree1Ad var_8C
  loc_9C81A7: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B040
  'Data Table: 4E2680
  loc_97B010: LitVarStr var_94, "Cerrando..."
  loc_97B015: PopAdLdVar
  loc_97B016: FLdPr Me
  loc_97B019: VCallAd Control_ID_statusBar
  loc_97B01C: FStAdFunc var_A8
  loc_97B01F: FLdPr var_A8
  loc_97B022: LateIdSt
  loc_97B027: FFree1Ad var_A8
  loc_97B02A: ILdRf Me
  loc_97B02D: FStAdNoPop
  loc_97B031: ImpAdLdRf MemVar_C44F9C
  loc_97B034: NewIfNullPr Me
  loc_97B037: Me.Global.Unload from_stack_1
  loc_97B03C: FFree1Ad var_A8
  loc_97B03F: ExitProcHresult
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '975454
  'Data Table: 4E2680
  loc_97542C: FLdPr Me
  loc_97542F: VCallAd Control_ID_cboExpeImpu
  loc_975432: FStAdFunc var_8C
  loc_975435: ILdI2 KeyAscii
  loc_975438: FLdZeroAd var_8C
  loc_97543B: FStAdFunc var_88
  loc_97543E: FLdRfVar var_88
  loc_975441: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_975446: IStI2 KeyAscii
  loc_975449: FFreeAd var_88 = ""
  loc_975450: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9F8FE0
  'Data Table: 4E2680
  loc_9F8EA4: LitI2_Byte &HFF
  loc_9F8EA6: ImpAdLdRf MemVar_C3D710
  loc_9F8EA9: NewIfNullPr bscOrganigrama
  loc_9F8EAC: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9F8EB1: LitNothing
  loc_9F8EB3: CastAd
  loc_9F8EB6: FStAdFuncNoPop
  loc_9F8EB9: ImpAdLdRf MemVar_C3D710
  loc_9F8EBC: NewIfNullPr bscOrganigrama
  loc_9F8EBF: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9F8EC4: FFree1Ad var_88
  loc_9F8EC7: LitVar_Missing var_A8
  loc_9F8ECA: PopAdLdVar
  loc_9F8ECB: LitVarI4
  loc_9F8ED3: PopAdLdVar
  loc_9F8ED4: ImpAdLdRf MemVar_C3D710
  loc_9F8ED7: NewIfNullPr bscOrganigrama
  loc_9F8EDA: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9F8EDF: FLdRfVar var_AC
  loc_9F8EE2: FLdRfVar var_88
  loc_9F8EE5: ImpAdLdRf MemVar_C3D710
  loc_9F8EE8: NewIfNullPr bscOrganigrama
  loc_9F8EEB: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F8EF0: FLdPr var_88
  loc_9F8EF3: from_stack_1 = clsbase.RecordCount
  loc_9F8EF8: ILdRf var_AC
  loc_9F8EFB: LitI4 0
  loc_9F8F00: GtI4
  loc_9F8F01: FFree1Ad var_88
  loc_9F8F04: BranchF loc_9F8FDF
  loc_9F8F07: FLdRfVar var_C8
  loc_9F8F0A: FLdRfVar var_B8
  loc_9F8F0D: LitVarStr var_98, "CodiOrga"
  loc_9F8F12: PopAdLdVar
  loc_9F8F13: FLdRfVar var_B4
  loc_9F8F16: FLdRfVar var_B0
  loc_9F8F19: FLdRfVar var_88
  loc_9F8F1C: ImpAdLdRf MemVar_C3D710
  loc_9F8F1F: NewIfNullPr bscOrganigrama
  loc_9F8F22: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F8F27: FLdPr var_88
  loc_9F8F2A: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8F2F: FLdPr var_B0
  loc_9F8F32:  = Me.Fields
  loc_9F8F37: FLdPr var_B4
  loc_9F8F3A: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8F3F: FLdPr var_B8
  loc_9F8F42:  = Me.Value
  loc_9F8F47: FLdRfVar var_C8
  loc_9F8F4A: CStrVarTmp
  loc_9F8F4B: CVarStr var_D8
  loc_9F8F4E: PopAdLdVar
  loc_9F8F4F: FLdPr Me
  loc_9F8F52: VCallAd Control_ID_CodiOrgaMsk
  loc_9F8F55: FStAdFunc var_DC
  loc_9F8F58: FLdPr var_DC
  loc_9F8F5B: LateIdSt
  loc_9F8F60: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8F6D: FFreeVar var_C8 = ""
  loc_9F8F74: FLdRfVar var_C8
  loc_9F8F77: FLdRfVar var_B8
  loc_9F8F7A: LitVarStr var_98, "DetaOrga"
  loc_9F8F7F: PopAdLdVar
  loc_9F8F80: FLdRfVar var_B4
  loc_9F8F83: FLdRfVar var_B0
  loc_9F8F86: FLdRfVar var_88
  loc_9F8F89: ImpAdLdRf MemVar_C3D710
  loc_9F8F8C: NewIfNullPr bscOrganigrama
  loc_9F8F8F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F8F94: FLdPr var_88
  loc_9F8F97: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8F9C: FLdPr var_B0
  loc_9F8F9F:  = Me.Fields
  loc_9F8FA4: FLdPr var_B4
  loc_9F8FA7: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8FAC: FLdPr var_B8
  loc_9F8FAF:  = Me.Value
  loc_9F8FB4: FLdRfVar var_C8
  loc_9F8FB7: CStrVarTmp
  loc_9F8FB8: FStStrNoPop var_E0
  loc_9F8FBB: FLdPr Me
  loc_9F8FBE: VCallAd Control_ID_CodiOrgaLbl
  loc_9F8FC1: FStAdFunc var_DC
  loc_9F8FC4: FLdPr var_DC
  loc_9F8FC7: Me.Caption = from_stack_1
  loc_9F8FCC: FFree1Str var_E0
  loc_9F8FCF: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8FDC: FFree1Var var_C8 = ""
  loc_9F8FDF: ExitProcHresult
End Sub

Private Sub TxtCodiNope_GotFocus() '94B510
  'Data Table: 4E2680
  loc_94B4FC: FLdPr Me
  loc_94B4FF: VCallAd Control_ID_TxtCodiNope
  loc_94B502: CVarAd
  loc_94B506: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B50B: FFree1Var var_94 = ""
  loc_94B50E: ExitProcHresult
End Sub

Private Sub TxtCodiNope_KeyPress(KeyAscii As Integer) '97ED98
  'Data Table: 4E2680
  loc_97ED64: LitStr "1234567890-,."
  loc_97ED67: FStStrCopy var_88
  loc_97ED6A: FLdRfVar var_88
  loc_97ED6D: ILdRf KeyAscii
  loc_97ED70: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97ED75: IStI2 KeyAscii
  loc_97ED78: FFree1Str var_88
  loc_97ED7B: ILdI2 KeyAscii
  loc_97ED7E: LitStr "."
  loc_97ED81: ImpAdCallI2 Asc()
  loc_97ED86: EqI2
  loc_97ED87: BranchF loc_97ED95
  loc_97ED8A: LitStr ","
  loc_97ED8D: ImpAdCallI2 Asc()
  loc_97ED92: IStI2 KeyAscii
  loc_97ED95: ExitProcHresult
End Sub

Private Sub TxtCodiNope_Validate(Cancel As Boolean) 'A8C858
  'Data Table: 4E2680
  loc_A8C414: LitStr vbNullString
  loc_A8C417: FLdPr Me
  loc_A8C41A: MemStStrCopy
  loc_A8C41E: FLdRfVar var_8C
  loc_A8C421: FLdPr Me
  loc_A8C424: VCallAd Control_ID_TxtCodiNope
  loc_A8C427: FStAdFunc var_88
  loc_A8C42A: FLdPr var_88
  loc_A8C42D:  = Me.Text
  loc_A8C432: LitI2_Byte 0
  loc_A8C434: PopTmpLdAd2 var_92
  loc_A8C437: LitI2_Byte 0
  loc_A8C439: PopTmpLdAd2 var_90
  loc_A8C43C: LitI2_Byte 0
  loc_A8C43E: PopTmpLdAd2 var_8E
  loc_A8C441: ILdRf var_8C
  loc_A8C444: LitStr "Nota de pedido"
  loc_A8C447: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A8C44C: FStStrNoPop var_98
  loc_A8C44F: FLdPr Me
  loc_A8C452: MemStStrCopy
  loc_A8C456: FFreeStr var_8C = ""
  loc_A8C45D: FFree1Ad var_88
  loc_A8C460: FLdPr Me
  loc_A8C463: VCallAd Control_ID_TxtCodiNope
  loc_A8C466: FStAdFunc var_A4
  loc_A8C469: LitNothing
  loc_A8C46B: CastAd
  loc_A8C46E: FStAdFunc var_A0
  loc_A8C471: FLdRfVar var_A0
  loc_A8C474: FLdZeroAd var_A4
  loc_A8C477: FStAdFuncNoPop
  loc_A8C47A: CastAd
  loc_A8C47D: FStAdFunc var_9C
  loc_A8C480: FLdRfVar var_9C
  loc_A8C483: FLdPr Me
  loc_A8C486: MemLdRfVar from_stack_1.global_100
  loc_A8C489: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A8C48E: IStI2 Cancel
  loc_A8C491: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A8C49C: ILdI2 Cancel
  loc_A8C49F: NotI4
  loc_A8C4A0: BranchF loc_A8C856
  loc_A8C4A3: LitI4 1
  loc_A8C4A8: FLdRfVar var_8C
  loc_A8C4AB: FLdPr Me
  loc_A8C4AE: VCallAd Control_ID_TxtCodiNope
  loc_A8C4B1: FStAdFunc var_88
  loc_A8C4B4: FLdPr var_88
  loc_A8C4B7:  = Me.Text
  loc_A8C4BC: ILdRf var_8C
  loc_A8C4BF: LitStr "-"
  loc_A8C4C2: LitI4 0
  loc_A8C4C7: FnInStr4
  loc_A8C4C9: LitI4 0
  loc_A8C4CE: GtI4
  loc_A8C4CF: FFree1Str var_8C
  loc_A8C4D2: FFree1Ad var_88
  loc_A8C4D5: BranchF loc_A8C669
  loc_A8C4D8: LitI4 1
  loc_A8C4DD: FLdRfVar var_8C
  loc_A8C4E0: FLdPr Me
  loc_A8C4E3: VCallAd Control_ID_TxtCodiNope
  loc_A8C4E6: FStAdFunc var_88
  loc_A8C4E9: FLdPr var_88
  loc_A8C4EC:  = Me.Text
  loc_A8C4F1: ILdRf var_8C
  loc_A8C4F4: LitStr ","
  loc_A8C4F7: LitI4 0
  loc_A8C4FC: FnInStr4
  loc_A8C4FE: LitI4 0
  loc_A8C503: GtI4
  loc_A8C504: FFree1Str var_8C
  loc_A8C507: FFree1Ad var_88
  loc_A8C50A: BranchF loc_A8C51A
  loc_A8C50D: LitStr "primero un guión, y luego una coma..."
  loc_A8C510: FLdPr Me
  loc_A8C513: MemStStrCopy
  loc_A8C517: Branch loc_A8C666
  loc_A8C51A: FLdRfVar var_98
  loc_A8C51D: FLdPr Me
  loc_A8C520: VCallAd Control_ID_TxtCodiNope
  loc_A8C523: FStAdFunc var_9C
  loc_A8C526: FLdPr var_9C
  loc_A8C529:  = Me.Text
  loc_A8C52E: LitI4 1
  loc_A8C533: FLdRfVar var_8C
  loc_A8C536: FLdPr Me
  loc_A8C539: VCallAd Control_ID_TxtCodiNope
  loc_A8C53C: FStAdFunc var_88
  loc_A8C53F: FLdPr var_88
  loc_A8C542:  = Me.Text
  loc_A8C547: ILdRf var_8C
  loc_A8C54A: LitStr "-"
  loc_A8C54D: LitI4 0
  loc_A8C552: FnInStr4
  loc_A8C554: LitI4 0
  loc_A8C559: LitI4 -1
  loc_A8C55E: LitStr "-"
  loc_A8C561: ILdRf var_98
  loc_A8C564: ImpAdCallI2 InStrRev(, , , )
  loc_A8C569: NeI4
  loc_A8C56A: FFreeStr var_8C = ""
  loc_A8C571: FFreeAd var_88 = ""
  loc_A8C578: BranchF loc_A8C588
  loc_A8C57B: LitStr "tiene más de un guión..."
  loc_A8C57E: FLdPr Me
  loc_A8C581: MemStStrCopy
  loc_A8C585: Branch loc_A8C666
  loc_A8C588: FLdRfVar var_8C
  loc_A8C58B: FLdPr Me
  loc_A8C58E: VCallAd Control_ID_TxtCodiNope
  loc_A8C591: FStAdFunc var_88
  loc_A8C594: FLdPr var_88
  loc_A8C597:  = Me.Text
  loc_A8C59C: FLdRfVar var_B0
  loc_A8C59F: FLdPr Me
  loc_A8C5A2: VCallAd Control_ID_TxtCodiNope
  loc_A8C5A5: FStAdFunc var_A0
  loc_A8C5A8: FLdPr var_A0
  loc_A8C5AB:  = Me.Text
  loc_A8C5B0: FLdRfVar var_B4
  loc_A8C5B3: FLdPr Me
  loc_A8C5B6: VCallAd Control_ID_TxtCodiNope
  loc_A8C5B9: FStAdFunc var_A4
  loc_A8C5BC: FLdPr var_A4
  loc_A8C5BF:  = Me.Text
  loc_A8C5C4: LitStr " AND np.CodiNope >= '"
  loc_A8C5C7: LitI4 1
  loc_A8C5CC: FLdRfVar var_98
  loc_A8C5CF: FLdPr Me
  loc_A8C5D2: VCallAd Control_ID_TxtCodiNope
  loc_A8C5D5: FStAdFunc var_9C
  loc_A8C5D8: FLdPr var_9C
  loc_A8C5DB:  = Me.Text
  loc_A8C5E0: ILdRf var_98
  loc_A8C5E3: LitStr "-"
  loc_A8C5E6: LitI4 0
  loc_A8C5EB: FnInStr4
  loc_A8C5ED: LitI4 1
  loc_A8C5F2: SubI4
  loc_A8C5F3: ILdRf var_8C
  loc_A8C5F6: ImpAdCallI2 Left$(, )
  loc_A8C5FB: FStStrNoPop var_A8
  loc_A8C5FE: ConcatStr
  loc_A8C5FF: FStStrNoPop var_AC
  loc_A8C602: LitStr "' AND np.CodiNope <= '"
  loc_A8C605: ConcatStr
  loc_A8C606: FStStrNoPop var_D8
  loc_A8C609: LitVar_Missing var_D4
  loc_A8C60C: LitI4 1
  loc_A8C611: ILdRf var_B4
  loc_A8C614: LitStr "-"
  loc_A8C617: LitI4 0
  loc_A8C61C: FnInStr4
  loc_A8C61E: LitI4 1
  loc_A8C623: AddI4
  loc_A8C624: ILdRf var_B0
  loc_A8C627: ImpAdCallI2 Mid$(, , )
  loc_A8C62C: FStStrNoPop var_DC
  loc_A8C62F: ConcatStr
  loc_A8C630: FStStrNoPop var_E0
  loc_A8C633: LitStr "'"
  loc_A8C636: ConcatStr
  loc_A8C637: FStStrNoPop var_E4
  loc_A8C63A: FLdPr Me
  loc_A8C63D: MemStStrCopy
  loc_A8C641: FFreeStr var_98 = "": var_8C = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A8C658: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A8C663: FFree1Var var_D4 = ""
  loc_A8C666: Branch loc_A8C81A
  loc_A8C669: LitI4 1
  loc_A8C66E: FLdRfVar var_8C
  loc_A8C671: FLdPr Me
  loc_A8C674: VCallAd Control_ID_TxtCodiNope
  loc_A8C677: FStAdFunc var_88
  loc_A8C67A: FLdPr var_88
  loc_A8C67D:  = Me.Text
  loc_A8C682: ILdRf var_8C
  loc_A8C685: LitStr ","
  loc_A8C688: LitI4 0
  loc_A8C68D: FnInStr4
  loc_A8C68F: LitI4 0
  loc_A8C694: GtI4
  loc_A8C695: FFree1Str var_8C
  loc_A8C698: FFree1Ad var_88
  loc_A8C69B: BranchF loc_A8C73A
  loc_A8C69E: LitI4 1
  loc_A8C6A3: FLdRfVar var_8C
  loc_A8C6A6: FLdPr Me
  loc_A8C6A9: VCallAd Control_ID_TxtCodiNope
  loc_A8C6AC: FStAdFunc var_88
  loc_A8C6AF: FLdPr var_88
  loc_A8C6B2:  = Me.Text
  loc_A8C6B7: ILdRf var_8C
  loc_A8C6BA: LitStr "-"
  loc_A8C6BD: LitI4 0
  loc_A8C6C2: FnInStr4
  loc_A8C6C4: LitI4 0
  loc_A8C6C9: GtI4
  loc_A8C6CA: FFree1Str var_8C
  loc_A8C6CD: FFree1Ad var_88
  loc_A8C6D0: BranchF loc_A8C6E0
  loc_A8C6D3: LitStr "primero un coma, y luego un guión..."
  loc_A8C6D6: FLdPr Me
  loc_A8C6D9: MemStStrCopy
  loc_A8C6DD: Branch loc_A8C737
  loc_A8C6E0: FLdRfVar var_8C
  loc_A8C6E3: FLdPr Me
  loc_A8C6E6: VCallAd Control_ID_TxtCodiNope
  loc_A8C6E9: FStAdFunc var_88
  loc_A8C6EC: FLdPr var_88
  loc_A8C6EF:  = Me.Text
  loc_A8C6F4: LitStr " AND np.CodiNope IN ('"
  loc_A8C6F7: LitI4 0
  loc_A8C6FC: LitI4 -1
  loc_A8C701: LitI4 1
  loc_A8C706: LitStr "','"
  loc_A8C709: LitStr ","
  loc_A8C70C: ILdRf var_8C
  loc_A8C70F: ImpAdCallI2 Replace(, , , , , )
  loc_A8C714: FStStrNoPop var_98
  loc_A8C717: ConcatStr
  loc_A8C718: FStStrNoPop var_A8
  loc_A8C71B: LitStr "')"
  loc_A8C71E: ConcatStr
  loc_A8C71F: FStStrNoPop var_AC
  loc_A8C722: FLdPr Me
  loc_A8C725: MemStStrCopy
  loc_A8C729: FFreeStr var_8C = "": var_98 = "": var_A8 = ""
  loc_A8C734: FFree1Ad var_88
  loc_A8C737: Branch loc_A8C81A
  loc_A8C73A: FLdRfVar var_8C
  loc_A8C73D: FLdPr Me
  loc_A8C740: VCallAd Control_ID_TxtCodiNope
  loc_A8C743: FStAdFunc var_88
  loc_A8C746: FLdPr var_88
  loc_A8C749:  = Me.Text
  loc_A8C74E: FLdZeroAd var_8C
  loc_A8C751: CVarStr var_D4
  loc_A8C754: ImpAdCallI2 IsNumeric()
  loc_A8C759: NotI4
  loc_A8C75A: FFree1Ad var_88
  loc_A8C75D: FFree1Var var_D4 = ""
  loc_A8C760: BranchF loc_A8C770
  loc_A8C763: LitStr "no es un número..."
  loc_A8C766: FLdPr Me
  loc_A8C769: MemStStrCopy
  loc_A8C76D: Branch loc_A8C81A
  loc_A8C770: LitStr "Municipalidad de Guaymallén"
  loc_A8C773: LitStr "Municipalidad de Maipú"
  loc_A8C776: EqStr
  loc_A8C778: BranchF loc_A8C7E2
  loc_A8C77B: LitStr " AND (np.CodiNope = '"
  loc_A8C77E: FLdRfVar var_8C
  loc_A8C781: FLdPr Me
  loc_A8C784: VCallAd Control_ID_TxtCodiNope
  loc_A8C787: FStAdFunc var_88
  loc_A8C78A: FLdPr var_88
  loc_A8C78D:  = Me.Text
  loc_A8C792: ILdRf var_8C
  loc_A8C795: ConcatStr
  loc_A8C796: FStStrNoPop var_98
  loc_A8C799: LitStr "' OR np.CoinNope = '"
  loc_A8C79C: ConcatStr
  loc_A8C79D: FStStrNoPop var_AC
  loc_A8C7A0: FLdRfVar var_A8
  loc_A8C7A3: FLdPr Me
  loc_A8C7A6: VCallAd Control_ID_TxtCodiNope
  loc_A8C7A9: FStAdFunc var_9C
  loc_A8C7AC: FLdPr var_9C
  loc_A8C7AF:  = Me.Text
  loc_A8C7B4: ILdRf var_A8
  loc_A8C7B7: ConcatStr
  loc_A8C7B8: FStStrNoPop var_B0
  loc_A8C7BB: LitStr "')"
  loc_A8C7BE: ConcatStr
  loc_A8C7BF: FStStrNoPop var_B4
  loc_A8C7C2: FLdPr Me
  loc_A8C7C5: MemStStrCopy
  loc_A8C7C9: FFreeStr var_8C = "": var_98 = "": var_AC = "": var_A8 = "": var_B0 = ""
  loc_A8C7D8: FFreeAd var_88 = ""
  loc_A8C7DF: Branch loc_A8C81A
  loc_A8C7E2: LitStr " AND np.CodiNope = '"
  loc_A8C7E5: FLdRfVar var_8C
  loc_A8C7E8: FLdPr Me
  loc_A8C7EB: VCallAd Control_ID_TxtCodiNope
  loc_A8C7EE: FStAdFunc var_88
  loc_A8C7F1: FLdPr var_88
  loc_A8C7F4:  = Me.Text
  loc_A8C7F9: ILdRf var_8C
  loc_A8C7FC: ConcatStr
  loc_A8C7FD: FStStrNoPop var_98
  loc_A8C800: LitStr "'"
  loc_A8C803: ConcatStr
  loc_A8C804: FStStrNoPop var_A8
  loc_A8C807: FLdPr Me
  loc_A8C80A: MemStStrCopy
  loc_A8C80E: FFreeStr var_8C = "": var_98 = ""
  loc_A8C817: FFree1Ad var_88
  loc_A8C81A: FLdPr Me
  loc_A8C81D: VCallAd Control_ID_TxtCodiNope
  loc_A8C820: FStAdFunc var_A4
  loc_A8C823: LitNothing
  loc_A8C825: CastAd
  loc_A8C828: FStAdFunc var_A0
  loc_A8C82B: FLdRfVar var_A0
  loc_A8C82E: FLdZeroAd var_A4
  loc_A8C831: FStAdFuncNoPop
  loc_A8C834: CastAd
  loc_A8C837: FStAdFunc var_9C
  loc_A8C83A: FLdRfVar var_9C
  loc_A8C83D: FLdPr Me
  loc_A8C840: MemLdRfVar from_stack_1.global_100
  loc_A8C843: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A8C848: IStI2 Cancel
  loc_A8C84B: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A8C856: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() 'AAC4C8
  'Data Table: 4E2680
  loc_AABFC8: FLdPr Me
  loc_AABFCB: MemLdRfVar from_stack_1.global_72
  loc_AABFCE: NewIfNullAd
  loc_AABFD1: FStAd var_8C 
  loc_AABFD5: LitStr "SELECT IFNULL(Max(CodiNope),1) as CodiNope"
  loc_AABFD8: LitStr " FROM notapedido"
  loc_AABFDB: ConcatStr
  loc_AABFDC: FStStrNoPop var_90
  loc_AABFDF: LitStr " WHERE PeriInfo = "
  loc_AABFE2: ConcatStr
  loc_AABFE3: FStStrNoPop var_9C
  loc_AABFE6: FLdRfVar var_98
  loc_AABFE9: FLdPr Me
  loc_AABFEC: VCallAd Control_ID_cboPeriodo
  loc_AABFEF: FStAdFunc var_94
  loc_AABFF2: FLdPr var_94
  loc_AABFF5:  = Me.Text
  loc_AABFFA: ILdRf var_98
  loc_AABFFD: ConcatStr
  loc_AABFFE: FStStrNoPop var_A0
  loc_AAC001: LitStr " LIMIT 1"
  loc_AAC004: ConcatStr
  loc_AAC005: FStStrNoPop var_A4
  loc_AAC008: FLdPr var_8C
  loc_AAC00B: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_AAC010: FFreeStr var_90 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_AAC01D: FFree1Ad var_94
  loc_AAC020: LitStr vbNullString
  loc_AAC023: FLdPr Me
  loc_AAC026: VCallAd Control_ID_TxtCodiNope
  loc_AAC029: FStAdFunc var_94
  loc_AAC02C: FLdPr var_94
  loc_AAC02F: Me.Text = from_stack_1
  loc_AAC034: FFree1Ad var_94
  loc_AAC037: FLdRfVar var_A8
  loc_AAC03A: FLdPr var_8C
  loc_AAC03D: from_stack_1 = clsnotapedido.RecordCount
  loc_AAC042: ILdRf var_A8
  loc_AAC045: LitI4 0
  loc_AAC04A: GtI4
  loc_AAC04B: BranchF loc_AAC0A9
  loc_AAC04E: FLdRfVar var_D0
  loc_AAC051: FLdRfVar var_C0
  loc_AAC054: LitVarStr var_BC, "CodiNope"
  loc_AAC059: PopAdLdVar
  loc_AAC05A: FLdRfVar var_AC
  loc_AAC05D: FLdRfVar var_94
  loc_AAC060: FLdPr var_8C
  loc_AAC063: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AAC068: FLdPr var_94
  loc_AAC06B:  = Me.Fields
  loc_AAC070: FLdPr var_AC
  loc_AAC073: from_stack_2 = Me.Item(from_stack_1)
  loc_AAC078: FLdPr var_C0
  loc_AAC07B:  = Me.Value
  loc_AAC080: FLdRfVar var_D0
  loc_AAC083: CStrVarTmp
  loc_AAC084: FStStrNoPop var_90
  loc_AAC087: FLdPr Me
  loc_AAC08A: VCallAd Control_ID_TxtCodiNope
  loc_AAC08D: FStAdFunc var_D4
  loc_AAC090: FLdPr var_D4
  loc_AAC093: Me.Text = from_stack_1
  loc_AAC098: FFree1Str var_90
  loc_AAC09B: FFreeAd var_94 = "": var_AC = "": var_C0 = ""
  loc_AAC0A6: FFree1Var var_D0 = ""
  loc_AAC0A9: FLdRfVar var_90
  loc_AAC0AC: FLdPr Me
  loc_AAC0AF: VCallAd Control_ID_cboPeriodo
  loc_AAC0B2: FStAdFunc var_94
  loc_AAC0B5: FLdPr var_94
  loc_AAC0B8:  = Me.Text
  loc_AAC0BD: LitI2_Byte 1
  loc_AAC0BF: LitI2_Byte 1
  loc_AAC0C1: ILdRf var_90
  loc_AAC0C4: CI2Str
  loc_AAC0C6: FLdRfVar var_D0
  loc_AAC0C9: ImpAdCallFPR4  = DateSerial(, , )
  loc_AAC0CE: FLdRfVar var_D0
  loc_AAC0D1: CStrVarTmp
  loc_AAC0D2: CVarStr var_E4
  loc_AAC0D5: PopAdLdVar
  loc_AAC0D6: FLdPr Me
  loc_AAC0D9: VCallAd Control_ID_DesdeFechNopeMsk
  loc_AAC0DC: FStAdFunc var_AC
  loc_AAC0DF: FLdPr var_AC
  loc_AAC0E2: LateIdSt
  loc_AAC0E7: FFree1Str var_90
  loc_AAC0EA: FFreeAd var_94 = ""
  loc_AAC0F1: FFreeVar var_D0 = ""
  loc_AAC0F8: FLdRfVar var_90
  loc_AAC0FB: FLdPr Me
  loc_AAC0FE: VCallAd Control_ID_cboPeriodo
  loc_AAC101: FStAdFunc var_94
  loc_AAC104: FLdPr var_94
  loc_AAC107:  = Me.Text
  loc_AAC10C: ILdRf var_90
  loc_AAC10F: CI2Str
  loc_AAC111: ImpAdLdI2 MemVar_C3D064
  loc_AAC114: LtI2
  loc_AAC115: FFree1Str var_90
  loc_AAC118: FFree1Ad var_94
  loc_AAC11B: BranchF loc_AAC170
  loc_AAC11E: FLdRfVar var_90
  loc_AAC121: FLdPr Me
  loc_AAC124: VCallAd Control_ID_cboPeriodo
  loc_AAC127: FStAdFunc var_94
  loc_AAC12A: FLdPr var_94
  loc_AAC12D:  = Me.Text
  loc_AAC132: LitI2_Byte &H1F
  loc_AAC134: LitI2_Byte &HC
  loc_AAC136: ILdRf var_90
  loc_AAC139: CI2Str
  loc_AAC13B: FLdRfVar var_D0
  loc_AAC13E: ImpAdCallFPR4  = DateSerial(, , )
  loc_AAC143: FLdRfVar var_D0
  loc_AAC146: CStrVarTmp
  loc_AAC147: CVarStr var_E4
  loc_AAC14A: PopAdLdVar
  loc_AAC14B: FLdPr Me
  loc_AAC14E: VCallAd Control_ID_HastaFechNopeMsk
  loc_AAC151: FStAdFunc var_AC
  loc_AAC154: FLdPr var_AC
  loc_AAC157: LateIdSt
  loc_AAC15C: FFree1Str var_90
  loc_AAC15F: FFreeAd var_94 = ""
  loc_AAC166: FFreeVar var_D0 = ""
  loc_AAC16D: Branch loc_AAC1B7
  loc_AAC170: FLdRfVar var_98
  loc_AAC173: FLdRfVar var_90
  loc_AAC176: FLdPr Me
  loc_AAC179: VCallAd Control_ID_cboPeriodo
  loc_AAC17C: FStAdFunc var_94
  loc_AAC17F: FLdPr var_94
  loc_AAC182:  = Me.Text
  loc_AAC187: ILdRf var_90
  loc_AAC18A: FLdPr var_8C
  loc_AAC18D: from_stack_2v = clsnotapedido.UltimaFechNope(from_stack_1v)
  loc_AAC192: FLdZeroAd var_98
  loc_AAC195: CVarStr var_D0
  loc_AAC198: PopAdLdVar
  loc_AAC199: FLdPr Me
  loc_AAC19C: VCallAd Control_ID_HastaFechNopeMsk
  loc_AAC19F: FStAdFunc var_AC
  loc_AAC1A2: FLdPr var_AC
  loc_AAC1A5: LateIdSt
  loc_AAC1AA: FFree1Str var_90
  loc_AAC1AD: FFreeAd var_94 = ""
  loc_AAC1B4: FFree1Var var_D0 = ""
  loc_AAC1B7: LitNothing
  loc_AAC1B9: FStAd var_8C 
  loc_AAC1BD: FLdPr Me
  loc_AAC1C0: VCallAd Control_ID_cboExpeImpu
  loc_AAC1C3: FStAdFunc var_94
  loc_AAC1C6: FLdPr var_94
  loc_AAC1C9: Me.Clear
  loc_AAC1CE: FFree1Ad var_94
  loc_AAC1D1: FLdRfVar var_88
  loc_AAC1D4: NewIfNullAd
  loc_AAC1D7: FStAd var_E8 
  loc_AAC1DB: LitStr "SELECT DISTINCT ExpeImpu"
  loc_AAC1DE: LitStr " FROM notapedido"
  loc_AAC1E1: ConcatStr
  loc_AAC1E2: FStStrNoPop var_90
  loc_AAC1E5: LitStr " WHERE PeriInfo = "
  loc_AAC1E8: ConcatStr
  loc_AAC1E9: FStStrNoPop var_9C
  loc_AAC1EC: FLdRfVar var_98
  loc_AAC1EF: FLdPr Me
  loc_AAC1F2: VCallAd Control_ID_cboPeriodo
  loc_AAC1F5: FStAdFunc var_94
  loc_AAC1F8: FLdPr var_94
  loc_AAC1FB:  = Me.Text
  loc_AAC200: ILdRf var_98
  loc_AAC203: ConcatStr
  loc_AAC204: FStStrNoPop var_A0
  loc_AAC207: LitStr " ORDER BY ExpeImpu"
  loc_AAC20A: ConcatStr
  loc_AAC20B: FStStrNoPop var_A4
  loc_AAC20E: FLdPr var_E8
  loc_AAC211: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_AAC216: FFreeStr var_90 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_AAC223: FFree1Ad var_94
  loc_AAC226: FLdRfVar var_A8
  loc_AAC229: FLdPr var_E8
  loc_AAC22C: from_stack_1 = clsnotapedido.RecordCount
  loc_AAC231: ILdRf var_A8
  loc_AAC234: LitI4 0
  loc_AAC239: GtI4
  loc_AAC23A: BranchF loc_AAC2C1
  loc_AAC23D: FLdPr var_E8
  loc_AAC240: Call clsnotapedido.MoveFirst()
  loc_AAC245: FLdRfVar var_EA
  loc_AAC248: FLdPr var_E8
  loc_AAC24B: from_stack_1 = clsnotapedido.EOF
  loc_AAC250: FLdI2 var_EA
  loc_AAC253: NotI4
  loc_AAC254: BranchF loc_AAC2C1
  loc_AAC257: LitVar_Missing var_FC
  loc_AAC25A: PopAdLdVar
  loc_AAC25B: FLdRfVar var_D0
  loc_AAC25E: FLdRfVar var_C0
  loc_AAC261: LitVarStr var_BC, "ExpeImpu"
  loc_AAC266: PopAdLdVar
  loc_AAC267: FLdRfVar var_AC
  loc_AAC26A: FLdRfVar var_94
  loc_AAC26D: FLdPr var_E8
  loc_AAC270: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AAC275: FLdPr var_94
  loc_AAC278:  = Me.Fields
  loc_AAC27D: FLdPr var_AC
  loc_AAC280: from_stack_2 = Me.Item(from_stack_1)
  loc_AAC285: FLdPr var_C0
  loc_AAC288:  = Me.Value
  loc_AAC28D: FLdRfVar var_D0
  loc_AAC290: CStrVarTmp
  loc_AAC291: FStStrNoPop var_90
  loc_AAC294: FLdPr Me
  loc_AAC297: VCallAd Control_ID_cboExpeImpu
  loc_AAC29A: FStAdFunc var_D4
  loc_AAC29D: FLdPr var_D4
  loc_AAC2A0: Me.AddItem from_stack_1, from_stack_2
  loc_AAC2A5: FFree1Str var_90
  loc_AAC2A8: FFreeAd var_94 = "": var_AC = "": var_C0 = ""
  loc_AAC2B3: FFree1Var var_D0 = ""
  loc_AAC2B6: FLdPr var_E8
  loc_AAC2B9: Call clsnotapedido.MoveSiguiente()
  loc_AAC2BE: Branch loc_AAC245
  loc_AAC2C1: LitNothing
  loc_AAC2C3: FStAd var_E8 
  loc_AAC2C7: FLdPr Me
  loc_AAC2CA: VCallAd Control_ID_cboTipoCompra
  loc_AAC2CD: FStAdFunc var_94
  loc_AAC2D0: FLdPr var_94
  loc_AAC2D3: Me.Clear
  loc_AAC2D8: FFree1Ad var_94
  loc_AAC2DB: FLdRfVar var_88
  loc_AAC2DE: NewIfNullAd
  loc_AAC2E1: FStAd var_100 
  loc_AAC2E5: LitVar_Missing var_BC
  loc_AAC2E8: PopAdLdVar
  loc_AAC2E9: LitStr "TODOS"
  loc_AAC2EC: FLdPr Me
  loc_AAC2EF: VCallAd Control_ID_cboTipoCompra
  loc_AAC2F2: FStAdFunc var_94
  loc_AAC2F5: FLdPr var_94
  loc_AAC2F8: Me.AddItem from_stack_1, from_stack_2
  loc_AAC2FD: FFree1Ad var_94
  loc_AAC300: LitI4 0
  loc_AAC305: FLdRfVar var_EA
  loc_AAC308: FLdPr Me
  loc_AAC30B: VCallAd Control_ID_cboTipoCompra
  loc_AAC30E: FStAdFunc var_94
  loc_AAC311: FLdPr var_94
  loc_AAC314:  = Me.NewIndex
  loc_AAC319: FLdI2 var_EA
  loc_AAC31C: FLdPr Me
  loc_AAC31F: VCallAd Control_ID_cboTipoCompra
  loc_AAC322: FStAdFunc var_AC
  loc_AAC325: FLdPr var_AC
  loc_AAC328: Me.ItemData = from_stack_1
  loc_AAC32D: FFreeAd var_94 = ""
  loc_AAC334: LitStr "SELECT *"
  loc_AAC337: LitStr " FROM tipocompra;"
  loc_AAC33A: ConcatStr
  loc_AAC33B: FStStrNoPop var_90
  loc_AAC33E: FLdPr var_100
  loc_AAC341: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_AAC346: FFree1Str var_90
  loc_AAC349: FLdRfVar var_A8
  loc_AAC34C: FLdPr var_100
  loc_AAC34F: from_stack_1 = clsnotapedido.RecordCount
  loc_AAC354: ILdRf var_A8
  loc_AAC357: LitI4 0
  loc_AAC35C: GtI4
  loc_AAC35D: BranchF loc_AAC4A3
  loc_AAC360: FLdPr var_100
  loc_AAC363: Call clsnotapedido.MoveFirst()
  loc_AAC368: FLdRfVar var_EA
  loc_AAC36B: FLdPr var_100
  loc_AAC36E: from_stack_1 = clsnotapedido.EOF
  loc_AAC373: FLdI2 var_EA
  loc_AAC376: NotI4
  loc_AAC377: BranchF loc_AAC4A3
  loc_AAC37A: LitVar_Missing var_148
  loc_AAC37D: PopAdLdVar
  loc_AAC37E: FLdRfVar var_D0
  loc_AAC381: FLdRfVar var_C0
  loc_AAC384: LitVarStr var_BC, "CodiTico"
  loc_AAC389: PopAdLdVar
  loc_AAC38A: FLdRfVar var_AC
  loc_AAC38D: FLdRfVar var_94
  loc_AAC390: FLdPr var_100
  loc_AAC393: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AAC398: FLdPr var_94
  loc_AAC39B:  = Me.Fields
  loc_AAC3A0: FLdPr var_AC
  loc_AAC3A3: from_stack_2 = Me.Item(from_stack_1)
  loc_AAC3A8: FLdPr var_C0
  loc_AAC3AB:  = Me.Value
  loc_AAC3B0: FLdRfVar var_D0
  loc_AAC3B3: LitVarStr var_FC, " - "
  loc_AAC3B8: ConcatVar var_E4
  loc_AAC3BC: FLdRfVar var_128
  loc_AAC3BF: FLdRfVar var_118
  loc_AAC3C2: LitVarStr var_114, "DetaTico"
  loc_AAC3C7: PopAdLdVar
  loc_AAC3C8: FLdRfVar var_104
  loc_AAC3CB: FLdRfVar var_D4
  loc_AAC3CE: FLdPr var_100
  loc_AAC3D1: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AAC3D6: FLdPr var_D4
  loc_AAC3D9:  = Me.Fields
  loc_AAC3DE: FLdPr var_104
  loc_AAC3E1: from_stack_2 = Me.Item(from_stack_1)
  loc_AAC3E6: FLdPr var_118
  loc_AAC3E9:  = Me.Value
  loc_AAC3EE: FLdRfVar var_128
  loc_AAC3F1: ConcatVar var_138
  loc_AAC3F5: CStrVarVal var_90
  loc_AAC3F9: FLdPr Me
  loc_AAC3FC: VCallAd Control_ID_cboTipoCompra
  loc_AAC3FF: FStAdFunc var_14C
  loc_AAC402: FLdPr var_14C
  loc_AAC405: Me.AddItem from_stack_1, from_stack_2
  loc_AAC40A: FFree1Str var_90
  loc_AAC40D: FFreeAd var_94 = "": var_AC = "": var_C0 = "": var_D4 = "": var_104 = "": var_118 = ""
  loc_AAC41E: FFreeVar var_D0 = "": var_E4 = "": var_128 = ""
  loc_AAC429: FLdRfVar var_D0
  loc_AAC42C: FLdRfVar var_C0
  loc_AAC42F: LitVarStr var_BC, "CodiTico"
  loc_AAC434: PopAdLdVar
  loc_AAC435: FLdRfVar var_AC
  loc_AAC438: FLdRfVar var_94
  loc_AAC43B: FLdPr var_100
  loc_AAC43E: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AAC443: FLdPr var_94
  loc_AAC446:  = Me.Fields
  loc_AAC44B: FLdPr var_AC
  loc_AAC44E: from_stack_2 = Me.Item(from_stack_1)
  loc_AAC453: FLdPr var_C0
  loc_AAC456:  = Me.Value
  loc_AAC45B: FLdRfVar var_D0
  loc_AAC45E: CI4Var
  loc_AAC460: FLdRfVar var_EA
  loc_AAC463: FLdPr Me
  loc_AAC466: VCallAd Control_ID_cboTipoCompra
  loc_AAC469: FStAdFunc var_D4
  loc_AAC46C: FLdPr var_D4
  loc_AAC46F:  = Me.NewIndex
  loc_AAC474: FLdI2 var_EA
  loc_AAC477: FLdPr Me
  loc_AAC47A: VCallAd Control_ID_cboTipoCompra
  loc_AAC47D: FStAdFunc var_104
  loc_AAC480: FLdPr var_104
  loc_AAC483: Me.ItemData = from_stack_1
  loc_AAC488: FFreeAd var_94 = "": var_AC = "": var_D4 = "": var_C0 = ""
  loc_AAC495: FFree1Var var_D0 = ""
  loc_AAC498: FLdPr var_100
  loc_AAC49B: Call clsnotapedido.MoveSiguiente()
  loc_AAC4A0: Branch loc_AAC368
  loc_AAC4A3: LitNothing
  loc_AAC4A5: FStAd var_100 
  loc_AAC4A9: LitI2_Byte 0
  loc_AAC4AB: FLdPr Me
  loc_AAC4AE: VCallAd Control_ID_cboTipoCompra
  loc_AAC4B1: FStAdFunc var_94
  loc_AAC4B4: FLdPr var_94
  loc_AAC4B7: Me.ListIndex = from_stack_1
  loc_AAC4BC: FFree1Ad var_94
  loc_AAC4BF: LitNothing
  loc_AAC4C1: CastAd
  loc_AAC4C4: FStAdFunc var_88
  loc_AAC4C7: ExitProcHresult
End Sub

Private Sub DesdeFechNopeMsk_UnknownEvent_0 '94A598
  'Data Table: 4E2680
  loc_94A584: FLdPr Me
  loc_94A587: VCallAd Control_ID_DesdeFechNopeMsk
  loc_94A58A: CVarAd
  loc_94A58E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A593: FFree1Var var_94 = ""
  loc_94A596: ExitProcHresult
End Sub

Private Function DesdeFechNopeMsk_UnknownEvent_8(arg_C) 'A18B2C
  'Data Table: 4E2680
  loc_A189BC: FLdPr Me
  loc_A189BF: VCallAd Control_ID_DesdeFechNopeMsk
  loc_A189C2: FStAdFunc var_88
  loc_A189C5: FLdPr var_88
  loc_A189C8: LateIdLdVar var_98 DispID_15 0
  loc_A189CF: PopAd
  loc_A189D1: FLdRfVar var_A0
  loc_A189D4: FLdPr Me
  loc_A189D7: VCallAd Control_ID_cboPeriodo
  loc_A189DA: FStAdFunc var_9C
  loc_A189DD: FLdPr var_9C
  loc_A189E0:  = Me.Text
  loc_A189E5: LitI2_Byte 1
  loc_A189E7: LitI2_Byte 1
  loc_A189E9: ILdRf var_A0
  loc_A189EC: CI2Str
  loc_A189EE: FLdRfVar var_B0
  loc_A189F1: ImpAdCallFPR4  = DateSerial(, , )
  loc_A189F6: FLdPr Me
  loc_A189F9: VCallAd Control_ID_DesdeFechNopeMsk
  loc_A189FC: FStAdFunc var_C8
  loc_A189FF: LitI2_Byte 0
  loc_A18A01: PopTmpLdAd2 var_BE
  loc_A18A04: FLdZeroAd var_C8
  loc_A18A07: FStAdFunc var_BC
  loc_A18A0A: FLdRfVar var_BC
  loc_A18A0D: FLdRfVar var_B0
  loc_A18A10: CStrVarVal var_B8
  loc_A18A14: LitI2_Byte 0
  loc_A18A16: LitI2_Byte 0
  loc_A18A18: FLdRfVar var_98
  loc_A18A1B: CStrVarTmp
  loc_A18A1C: FStStrNoPop var_B4
  loc_A18A1F: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A18A24: FStStrNoPop var_C4
  loc_A18A27: FLdPr Me
  loc_A18A2A: MemStStrCopy
  loc_A18A2E: FFreeStr var_A0 = "": var_B4 = "": var_B8 = ""
  loc_A18A39: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_A18A44: FFreeVar var_98 = ""
  loc_A18A4B: FLdPr Me
  loc_A18A4E: VCallAd Control_ID_DesdeFechNopeMsk
  loc_A18A51: FStAdFunc var_C8
  loc_A18A54: LitNothing
  loc_A18A56: CastAd
  loc_A18A59: FStAdFunc var_BC
  loc_A18A5C: FLdRfVar var_BC
  loc_A18A5F: FLdZeroAd var_C8
  loc_A18A62: FStAdFuncNoPop
  loc_A18A65: CastAd
  loc_A18A68: FStAdFunc var_9C
  loc_A18A6B: FLdRfVar var_9C
  loc_A18A6E: FLdPr Me
  loc_A18A71: MemLdRfVar from_stack_1.global_100
  loc_A18A74: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A18A79: IStI2 arg_C
  loc_A18A7C: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_A18A87: ILdI2 arg_C
  loc_A18A8A: NotI4
  loc_A18A8B: BranchF loc_A18B28
  loc_A18A8E: FLdPr Me
  loc_A18A91: VCallAd Control_ID_DesdeFechNopeMsk
  loc_A18A94: FStAdFunc var_88
  loc_A18A97: FLdPr var_88
  loc_A18A9A: LateIdLdVar var_98 DispID_15 0
  loc_A18AA1: CStrVarTmp
  loc_A18AA2: CVarStr var_B0
  loc_A18AA5: FLdRfVar var_D8
  loc_A18AA8: ImpAdCallFPR4  = Year()
  loc_A18AAD: FLdRfVar var_D8
  loc_A18AB0: FLdRfVar var_A0
  loc_A18AB3: FLdPr Me
  loc_A18AB6: VCallAd Control_ID_cboPeriodo
  loc_A18AB9: FStAdFunc var_9C
  loc_A18ABC: FLdPr var_9C
  loc_A18ABF:  = Me.Text
  loc_A18AC4: FLdZeroAd var_A0
  loc_A18AC7: CVarStr var_E8
  loc_A18ACA: HardType
  loc_A18ACB: NeVarBool
  loc_A18ACD: FFreeAd var_88 = ""
  loc_A18AD4: FFreeVar var_98 = "": var_B0 = "": var_D8 = ""
  loc_A18ADF: BranchF loc_A18AEC
  loc_A18AE2: LitStr "La fecha debe corresponder al periodo seleccionado"
  loc_A18AE5: FLdPr Me
  loc_A18AE8: MemStStrCopy
  loc_A18AEC: FLdPr Me
  loc_A18AEF: VCallAd Control_ID_DesdeFechNopeMsk
  loc_A18AF2: FStAdFunc var_C8
  loc_A18AF5: LitNothing
  loc_A18AF7: CastAd
  loc_A18AFA: FStAdFunc var_BC
  loc_A18AFD: FLdRfVar var_BC
  loc_A18B00: FLdZeroAd var_C8
  loc_A18B03: FStAdFuncNoPop
  loc_A18B06: CastAd
  loc_A18B09: FStAdFunc var_9C
  loc_A18B0C: FLdRfVar var_9C
  loc_A18B0F: FLdPr Me
  loc_A18B12: MemLdRfVar from_stack_1.global_100
  loc_A18B15: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A18B1A: IStI2 arg_C
  loc_A18B1D: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_A18B28: ExitProcHresult
End Function

Private Sub HastaFechNopeMsk_UnknownEvent_0 '94B288
  'Data Table: 4E2680
  loc_94B274: FLdPr Me
  loc_94B277: VCallAd Control_ID_HastaFechNopeMsk
  loc_94B27A: CVarAd
  loc_94B27E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B283: FFree1Var var_94 = ""
  loc_94B286: ExitProcHresult
End Sub

Private Function HastaFechNopeMsk_UnknownEvent_8(arg_C) 'A18ED4
  'Data Table: 4E2680
  loc_A18D64: FLdPr Me
  loc_A18D67: VCallAd Control_ID_HastaFechNopeMsk
  loc_A18D6A: FStAdFunc var_88
  loc_A18D6D: FLdPr var_88
  loc_A18D70: LateIdLdVar var_98 DispID_15 0
  loc_A18D77: PopAd
  loc_A18D79: FLdRfVar var_A0
  loc_A18D7C: FLdPr Me
  loc_A18D7F: VCallAd Control_ID_cboPeriodo
  loc_A18D82: FStAdFunc var_9C
  loc_A18D85: FLdPr var_9C
  loc_A18D88:  = Me.Text
  loc_A18D8D: LitI2_Byte 1
  loc_A18D8F: LitI2_Byte 1
  loc_A18D91: ILdRf var_A0
  loc_A18D94: CI2Str
  loc_A18D96: FLdRfVar var_B0
  loc_A18D99: ImpAdCallFPR4  = DateSerial(, , )
  loc_A18D9E: FLdPr Me
  loc_A18DA1: VCallAd Control_ID_HastaFechNopeMsk
  loc_A18DA4: FStAdFunc var_C8
  loc_A18DA7: LitI2_Byte 0
  loc_A18DA9: PopTmpLdAd2 var_BE
  loc_A18DAC: FLdZeroAd var_C8
  loc_A18DAF: FStAdFunc var_BC
  loc_A18DB2: FLdRfVar var_BC
  loc_A18DB5: FLdRfVar var_B0
  loc_A18DB8: CStrVarVal var_B8
  loc_A18DBC: LitI2_Byte 0
  loc_A18DBE: LitI2_Byte 0
  loc_A18DC0: FLdRfVar var_98
  loc_A18DC3: CStrVarTmp
  loc_A18DC4: FStStrNoPop var_B4
  loc_A18DC7: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A18DCC: FStStrNoPop var_C4
  loc_A18DCF: FLdPr Me
  loc_A18DD2: MemStStrCopy
  loc_A18DD6: FFreeStr var_A0 = "": var_B4 = "": var_B8 = ""
  loc_A18DE1: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_A18DEC: FFreeVar var_98 = ""
  loc_A18DF3: FLdPr Me
  loc_A18DF6: VCallAd Control_ID_HastaFechNopeMsk
  loc_A18DF9: FStAdFunc var_C8
  loc_A18DFC: LitNothing
  loc_A18DFE: CastAd
  loc_A18E01: FStAdFunc var_BC
  loc_A18E04: FLdRfVar var_BC
  loc_A18E07: FLdZeroAd var_C8
  loc_A18E0A: FStAdFuncNoPop
  loc_A18E0D: CastAd
  loc_A18E10: FStAdFunc var_9C
  loc_A18E13: FLdRfVar var_9C
  loc_A18E16: FLdPr Me
  loc_A18E19: MemLdRfVar from_stack_1.global_100
  loc_A18E1C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A18E21: IStI2 arg_C
  loc_A18E24: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_A18E2F: ILdI2 arg_C
  loc_A18E32: NotI4
  loc_A18E33: BranchF loc_A18ED0
  loc_A18E36: FLdPr Me
  loc_A18E39: VCallAd Control_ID_HastaFechNopeMsk
  loc_A18E3C: FStAdFunc var_88
  loc_A18E3F: FLdPr var_88
  loc_A18E42: LateIdLdVar var_98 DispID_15 0
  loc_A18E49: CStrVarTmp
  loc_A18E4A: CVarStr var_B0
  loc_A18E4D: FLdRfVar var_D8
  loc_A18E50: ImpAdCallFPR4  = Year()
  loc_A18E55: FLdRfVar var_D8
  loc_A18E58: FLdRfVar var_A0
  loc_A18E5B: FLdPr Me
  loc_A18E5E: VCallAd Control_ID_cboPeriodo
  loc_A18E61: FStAdFunc var_9C
  loc_A18E64: FLdPr var_9C
  loc_A18E67:  = Me.Text
  loc_A18E6C: FLdZeroAd var_A0
  loc_A18E6F: CVarStr var_E8
  loc_A18E72: HardType
  loc_A18E73: NeVarBool
  loc_A18E75: FFreeAd var_88 = ""
  loc_A18E7C: FFreeVar var_98 = "": var_B0 = "": var_D8 = ""
  loc_A18E87: BranchF loc_A18E94
  loc_A18E8A: LitStr "La fecha debe corresponder al periodo seleccionado"
  loc_A18E8D: FLdPr Me
  loc_A18E90: MemStStrCopy
  loc_A18E94: FLdPr Me
  loc_A18E97: VCallAd Control_ID_HastaFechNopeMsk
  loc_A18E9A: FStAdFunc var_C8
  loc_A18E9D: LitNothing
  loc_A18E9F: CastAd
  loc_A18EA2: FStAdFunc var_BC
  loc_A18EA5: FLdRfVar var_BC
  loc_A18EA8: FLdZeroAd var_C8
  loc_A18EAB: FStAdFuncNoPop
  loc_A18EAE: CastAd
  loc_A18EB1: FStAdFunc var_9C
  loc_A18EB4: FLdRfVar var_9C
  loc_A18EB7: FLdPr Me
  loc_A18EBA: MemLdRfVar from_stack_1.global_100
  loc_A18EBD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A18EC2: IStI2 arg_C
  loc_A18EC5: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_A18ED0: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() '95CE98
  'Data Table: 4E2680
  loc_95CE80: ILdRf Me
  loc_95CE83: CastAd
  loc_95CE86: FStAdFunc var_88
  loc_95CE89: FLdRfVar var_88
  loc_95CE8C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95CE91: FFree1Ad var_88
  loc_95CE94: ExitProcHresult
End Sub

Private Sub cboTipoCompra_KeyPress(KeyAscii As Integer) '9754B4
  'Data Table: 4E2680
  loc_97548C: FLdPr Me
  loc_97548F: VCallAd Control_ID_cboTipoCompra
  loc_975492: FStAdFunc var_8C
  loc_975495: ILdI2 KeyAscii
  loc_975498: FLdZeroAd var_8C
  loc_97549B: FStAdFunc var_88
  loc_97549E: FLdRfVar var_88
  loc_9754A1: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_9754A6: IStI2 KeyAscii
  loc_9754A9: FFreeAd var_88 = ""
  loc_9754B0: ExitProcHresult
End Sub

Public Function htmFileGet() '4E4248
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4E4257
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4E4266
  htmFile = Value
End Sub

Public Function bLogosGet() '4E4275
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4E4284
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4E4293
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4E42A2
  bGenerado = Value
End Sub

Public Function GenerarPDF() '9BD774
  'Data Table: 4E2680
  loc_9BD6C0: LitStr " "
  loc_9BD6C3: FLdRfVar var_90
  loc_9BD6C6: FLdPr Me
  loc_9BD6C9: VCallAd Control_ID_cboPeriodo
  loc_9BD6CC: FStAdFunc var_8C
  loc_9BD6CF: FLdPr var_8C
  loc_9BD6D2:  = Me.Text
  loc_9BD6D7: ILdRf var_90
  loc_9BD6DA: ConcatStr
  loc_9BD6DB: FStStrNoPop GenerarPDF
  loc_9BD6DE: LitStr "-"
  loc_9BD6E1: ConcatStr
  loc_9BD6E2: FStStrNoPop var_A0
  loc_9BD6E5: FLdRfVar var_9C
  loc_9BD6E8: FLdPr Me
  loc_9BD6EB: VCallAd Control_ID_TxtCodiNope
  loc_9BD6EE: FStAdFunc var_98
  loc_9BD6F1: FLdPr var_98
  loc_9BD6F4:  = Me.Text
  loc_9BD6F9: ILdRf var_9C
  loc_9BD6FC: ConcatStr
  loc_9BD6FD: FStStrNoPop var_A4
  loc_9BD700: FLdPr Me
  loc_9BD703: Me.Tag = from_stack_1
  loc_9BD708: FFreeStr var_90 = "": GenerarPDF = "": var_A0 = "": var_9C = ""
  loc_9BD715: FFreeAd var_8C = ""
  loc_9BD71C: LitI2_Byte &HFF
  loc_9BD71E: ILdRf Me
  loc_9BD721: CastAd
  loc_9BD724: FStAdFunc var_8C
  loc_9BD727: FLdRfVar var_8C
  loc_9BD72A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9BD72F: FFree1Ad var_8C
  loc_9BD732: FLdPr Me
  loc_9BD735: MemLdI2 bGenerado
  loc_9BD738: BranchF loc_9BD766
  loc_9BD73B: ImpAdCallFPR4 DoEvents()
  loc_9BD740: FLdRfVar var_A6
  loc_9BD743: FLdPr Me
  loc_9BD746: VCallAd Control_ID_cmdNueva
  loc_9BD749: FStAdFunc var_8C
  loc_9BD74C: FLdPr var_8C
  loc_9BD74F:  = Me.Enabled
  loc_9BD754: FLdI2 var_A6
  loc_9BD757: NotI4
  loc_9BD758: FFree1Ad var_8C
  loc_9BD75B: BranchT loc_9BD73B
  loc_9BD75E: LitI2_Byte &HFF
  loc_9BD760: FStI2 var_86
  loc_9BD763: Branch loc_9BD76B
  loc_9BD766: LitI2_Byte 0
  loc_9BD768: FStI2 var_86
  loc_9BD76B: ExitProcCbHresult
End Function

Public Sub HabilitarCriterio() '9E0050
  'Data Table: 4E2680
  loc_9DFF6C: LitI4 0
  loc_9DFF71: LitI4 &HB
  loc_9DFF76: FLdRfVar var_88
  loc_9DFF79: Redim
  loc_9DFF83: FLdPr Me
  loc_9DFF86: VCallAd Control_ID_cboPeriodo
  loc_9DFF89: CVarAd
  loc_9DFF8D: ParmAry1St
  loc_9DFF93: FLdPr Me
  loc_9DFF96: VCallAd Control_ID_TxtCodiNope
  loc_9DFF99: CVarAd
  loc_9DFF9D: ParmAry1St
  loc_9DFFA3: FLdPr Me
  loc_9DFFA6: VCallAd Control_ID_TxtDetaNope
  loc_9DFFA9: CVarAd
  loc_9DFFAD: ParmAry1St
  loc_9DFFB3: FLdPr Me
  loc_9DFFB6: VCallAd Control_ID_cboExpeImpu
  loc_9DFFB9: CVarAd
  loc_9DFFBD: ParmAry1St
  loc_9DFFC3: FLdPr Me
  loc_9DFFC6: VCallAd Control_ID_cboTipoCompra
  loc_9DFFC9: CVarAd
  loc_9DFFCD: ParmAry1St
  loc_9DFFD3: FLdPr Me
  loc_9DFFD6: VCallAd Control_ID_DesdeFechNopeMsk
  loc_9DFFD9: CVarAd
  loc_9DFFDD: ParmAry1St
  loc_9DFFE3: FLdPr Me
  loc_9DFFE6: VCallAd Control_ID_HastaFechNopeMsk
  loc_9DFFE9: CVarAd
  loc_9DFFED: ParmAry1St
  loc_9DFFF3: FLdPr Me
  loc_9DFFF6: VCallAd Control_ID_CodiOrgaMsk
  loc_9DFFF9: CVarAd
  loc_9DFFFD: ParmAry1St
  loc_9E0003: FLdPr Me
  loc_9E0006: VCallAd Control_ID_ChkSoloEncabezados
  loc_9E0009: CVarAd
  loc_9E000D: ParmAry1St
  loc_9E0013: FLdPr Me
  loc_9E0016: VCallAd Control_ID_ChkHojasSeparadas
  loc_9E0019: CVarAd
  loc_9E001D: ParmAry1St
  loc_9E0023: FLdPr Me
  loc_9E0026: VCallAd Control_ID_CodiOrgaMsk
  loc_9E0029: CVarAd
  loc_9E002D: ParmAry1St
  loc_9E0033: FLdPr Me
  loc_9E0036: VCallAd Control_ID_cmdCodiOrga
  loc_9E0039: CVarAd
  loc_9E003D: ParmAry1St
  loc_9E0043: FLdRfVar var_88
  loc_9E0046: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E004B: FLdRfVar var_88
  loc_9E004E: Erase
  loc_9E004F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C006AC
  'Data Table: 4E2680
  loc_BFE548: FLdPr Me
  loc_BFE54B: MemLdI2 bGenerado
  loc_BFE54E: BranchF loc_BFE552
  loc_BFE551: ExitProcHresult
  loc_BFE552: LitVarStr var_B0, "Generando reporte..."
  loc_BFE557: PopAdLdVar
  loc_BFE558: FLdPr Me
  loc_BFE55B: VCallAd Control_ID_statusBar
  loc_BFE55E: FStAdFunc var_C4
  loc_BFE561: FLdPr var_C4
  loc_BFE564: LateIdSt
  loc_BFE569: FFree1Ad var_C4
  loc_BFE56C: LitI4 &HB
  loc_BFE571: CI2I4
  loc_BFE572: FLdPr Me
  loc_BFE575: Me.MousePointer = from_stack_1
  loc_BFE57A: LitI2_Byte 0
  loc_BFE57C: PopTmpLdAd2 var_C6
  loc_BFE57F: Call TxtCodiNope_Validate(from_stack_1v)
  loc_BFE584: FLdPr Me
  loc_BFE587: MemLdStr global_100
  loc_BFE58A: LitStr vbNullString
  loc_BFE58D: NeStr
  loc_BFE58F: BranchF loc_BFE5A7
  loc_BFE592: FLdPr Me
  loc_BFE595: VCallAd Control_ID_TxtCodiNope
  loc_BFE598: CVarAd
  loc_BFE59C: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BFE5A1: FFree1Var var_D8 = ""
  loc_BFE5A4: Branch loc_C00681
  loc_BFE5A7: LitI2_Byte 0
  loc_BFE5A9: PopTmpLdAd2 var_C6
  loc_BFE5AC: Call TxtDetaNope_Validate(from_stack_1v)
  loc_BFE5B1: FLdPr Me
  loc_BFE5B4: MemLdStr global_100
  loc_BFE5B7: LitStr vbNullString
  loc_BFE5BA: NeStr
  loc_BFE5BC: BranchF loc_BFE5D4
  loc_BFE5BF: FLdPr Me
  loc_BFE5C2: VCallAd Control_ID_TxtDetaNope
  loc_BFE5C5: CVarAd
  loc_BFE5C9: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BFE5CE: FFree1Var var_D8 = ""
  loc_BFE5D1: Branch loc_C00681
  loc_BFE5D4: LitI2_Byte 0
  loc_BFE5D6: PopTmpLdAd2 var_C6
  loc_BFE5D9: from_stack_2v = DesdeFechNopeMsk_UnknownEvent_8(from_stack_1v)
  loc_BFE5DE: FLdPr Me
  loc_BFE5E1: MemLdStr global_100
  loc_BFE5E4: LitStr vbNullString
  loc_BFE5E7: NeStr
  loc_BFE5E9: BranchF loc_BFE601
  loc_BFE5EC: FLdPr Me
  loc_BFE5EF: VCallAd Control_ID_DesdeFechNopeMsk
  loc_BFE5F2: CVarAd
  loc_BFE5F6: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BFE5FB: FFree1Var var_D8 = ""
  loc_BFE5FE: Branch loc_C00681
  loc_BFE601: LitI2_Byte 0
  loc_BFE603: PopTmpLdAd2 var_C6
  loc_BFE606: from_stack_2v = HastaFechNopeMsk_UnknownEvent_8(from_stack_1v)
  loc_BFE60B: FLdPr Me
  loc_BFE60E: MemLdStr global_100
  loc_BFE611: LitStr vbNullString
  loc_BFE614: NeStr
  loc_BFE616: BranchF loc_BFE62E
  loc_BFE619: FLdPr Me
  loc_BFE61C: VCallAd Control_ID_HastaFechNopeMsk
  loc_BFE61F: CVarAd
  loc_BFE623: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BFE628: FFree1Var var_D8 = ""
  loc_BFE62B: Branch loc_C00681
  loc_BFE62E: FLdRfVar var_DC
  loc_BFE631: FLdPr Me
  loc_BFE634: VCallAd Control_ID_cboExpeImpu
  loc_BFE637: FStAdFunc var_C4
  loc_BFE63A: FLdPr var_C4
  loc_BFE63D:  = Me.Text
  loc_BFE642: FLdRfVar var_E4
  loc_BFE645: FLdPr Me
  loc_BFE648: VCallAd Control_ID_cboExpeImpu
  loc_BFE64B: FStAdFunc var_E0
  loc_BFE64E: FLdPr var_E0
  loc_BFE651:  = Me.Text
  loc_BFE656: LitVarStr var_C0, vbNullString
  loc_BFE65B: FStVarCopyObj var_F8
  loc_BFE65E: FLdRfVar var_F8
  loc_BFE661: LitStr " AND np.ExpeImpu = '"
  loc_BFE664: ILdRf var_E4
  loc_BFE667: ConcatStr
  loc_BFE668: FStStrNoPop var_E8
  loc_BFE66B: LitStr "'"
  loc_BFE66E: ConcatStr
  loc_BFE66F: CVarStr var_D8
  loc_BFE672: ILdRf var_DC
  loc_BFE675: LitStr vbNullString
  loc_BFE678: NeStr
  loc_BFE67A: CVarBoolI2 var_B0
  loc_BFE67E: FLdRfVar var_108
  loc_BFE681: ImpAdCallFPR4  = IIf(, , )
  loc_BFE686: FLdRfVar var_108
  loc_BFE689: CStrVarTmp
  loc_BFE68A: FStStr var_8C
  loc_BFE68D: FFreeStr var_DC = "": var_E4 = ""
  loc_BFE696: FFreeAd var_C4 = ""
  loc_BFE69D: FFreeVar var_B0 = "": var_D8 = "": var_F8 = ""
  loc_BFE6A8: FLdPr Me
  loc_BFE6AB: VCallAd Control_ID_DesdeFechNopeMsk
  loc_BFE6AE: FStAdFunc var_C4
  loc_BFE6B1: FLdPr var_C4
  loc_BFE6B4: LateIdLdVar var_D8 DispID_15 0
  loc_BFE6BB: PopAd
  loc_BFE6BD: FLdPr Me
  loc_BFE6C0: VCallAd Control_ID_HastaFechNopeMsk
  loc_BFE6C3: FStAdFunc var_E0
  loc_BFE6C6: FLdPr var_E0
  loc_BFE6C9: LateIdLdVar var_158 DispID_15 0
  loc_BFE6D0: PopAd
  loc_BFE6D2: LitVarStr var_C0, " AND FechNope BETWEEN "
  loc_BFE6D7: LitI4 1
  loc_BFE6DC: LitI4 1
  loc_BFE6E1: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_BFE6E6: FStVarCopyObj var_108
  loc_BFE6E9: FLdRfVar var_108
  loc_BFE6EC: FLdRfVar var_D8
  loc_BFE6EF: CStrVarTmp
  loc_BFE6F0: CVarStr var_F8
  loc_BFE6F3: FLdRfVar var_118
  loc_BFE6F6: ImpAdCallFPR4  = Format(, )
  loc_BFE6FB: FLdRfVar var_118
  loc_BFE6FE: ConcatVar var_128
  loc_BFE702: LitVarStr var_138, " AND "
  loc_BFE707: ConcatVar var_148
  loc_BFE70B: LitI4 1
  loc_BFE710: LitI4 1
  loc_BFE715: LitVarStr var_178, "'yyyy-mm-dd'"
  loc_BFE71A: FStVarCopyObj var_188
  loc_BFE71D: FLdRfVar var_188
  loc_BFE720: FLdRfVar var_158
  loc_BFE723: CStrVarTmp
  loc_BFE724: CVarStr var_168
  loc_BFE727: FLdRfVar var_198
  loc_BFE72A: ImpAdCallFPR4  = Format(, )
  loc_BFE72F: FLdRfVar var_198
  loc_BFE732: ConcatVar var_1A8
  loc_BFE736: CStrVarTmp
  loc_BFE737: FStStr var_90
  loc_BFE73A: FFreeAd var_C4 = ""
  loc_BFE741: FFreeVar var_D8 = "": var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_158 = "": var_168 = "": var_188 = "": var_148 = "": var_198 = ""
  loc_BFE75A: FLdPr Me
  loc_BFE75D: VCallAd Control_ID_CodiOrgaMsk
  loc_BFE760: FStAdFunc var_C4
  loc_BFE763: FLdPr var_C4
  loc_BFE766: LateIdLdVar var_D8 DispID_22 0
  loc_BFE76D: PopAd
  loc_BFE76F: FLdPr Me
  loc_BFE772: VCallAd Control_ID_CodiOrgaMsk
  loc_BFE775: FStAdFunc var_E0
  loc_BFE778: FLdPr var_E0
  loc_BFE77B: LateIdLdVar var_F8 DispID_22 0
  loc_BFE782: PopAd
  loc_BFE784: LitVarStr var_C0, vbNullString
  loc_BFE789: FStVarCopyObj var_118
  loc_BFE78C: FLdRfVar var_118
  loc_BFE78F: LitStr " AND np.CodiOrga LIKE '"
  loc_BFE792: FLdRfVar var_F8
  loc_BFE795: CStrVarTmp
  loc_BFE796: FStStrNoPop var_E4
  loc_BFE799: ConcatStr
  loc_BFE79A: FStStrNoPop var_E8
  loc_BFE79D: LitStr Chr(37) & "'"
  loc_BFE7A0: ConcatStr
  loc_BFE7A1: CVarStr var_108
  loc_BFE7A4: FLdRfVar var_D8
  loc_BFE7A7: CStrVarTmp
  loc_BFE7A8: FStStrNoPop var_DC
  loc_BFE7AB: LitStr vbNullString
  loc_BFE7AE: NeStr
  loc_BFE7B0: CVarBoolI2 var_B0
  loc_BFE7B4: FLdRfVar var_128
  loc_BFE7B7: ImpAdCallFPR4  = IIf(, , )
  loc_BFE7BC: FLdRfVar var_128
  loc_BFE7BF: CStrVarTmp
  loc_BFE7C0: FStStr var_94
  loc_BFE7C3: FFreeStr var_DC = "": var_E4 = ""
  loc_BFE7CC: FFreeAd var_C4 = ""
  loc_BFE7D3: FFreeVar var_D8 = "": var_F8 = "": var_B0 = "": var_108 = "": var_118 = ""
  loc_BFE7E2: FLdRfVar var_C6
  loc_BFE7E5: FLdPr Me
  loc_BFE7E8: VCallAd Control_ID_cboTipoCompra
  loc_BFE7EB: FStAdFunc var_C4
  loc_BFE7EE: FLdPr var_C4
  loc_BFE7F1:  = Me.ListIndex
  loc_BFE7F6: FLdRfVar var_1AA
  loc_BFE7F9: FLdPr Me
  loc_BFE7FC: VCallAd Control_ID_cboTipoCompra
  loc_BFE7FF: FStAdFunc var_E0
  loc_BFE802: FLdPr var_E0
  loc_BFE805:  = Me.ListIndex
  loc_BFE80A: FLdRfVar var_1B4
  loc_BFE80D: FLdI2 var_1AA
  loc_BFE810: FLdPr Me
  loc_BFE813: VCallAd Control_ID_cboTipoCompra
  loc_BFE816: FStAdFunc var_1B0
  loc_BFE819: FLdPr var_1B0
  loc_BFE81C:  = Me.ItemData
  loc_BFE821: LitVarStr var_C0, vbNullString
  loc_BFE826: FStVarCopyObj var_F8
  loc_BFE829: FLdRfVar var_F8
  loc_BFE82C: LitStr " AND np.CodiTico = "
  loc_BFE82F: ILdRf var_1B4
  loc_BFE832: CStrI4
  loc_BFE834: FStStrNoPop var_DC
  loc_BFE837: ConcatStr
  loc_BFE838: CVarStr var_D8
  loc_BFE83B: FLdI2 var_C6
  loc_BFE83E: LitI2_Byte 0
  loc_BFE840: NeI2
  loc_BFE841: CVarBoolI2 var_B0
  loc_BFE845: FLdRfVar var_108
  loc_BFE848: ImpAdCallFPR4  = IIf(, , )
  loc_BFE84D: FLdRfVar var_108
  loc_BFE850: CStrVarTmp
  loc_BFE851: FStStr var_98
  loc_BFE854: FFree1Str var_DC
  loc_BFE857: FFreeAd var_C4 = "": var_E0 = ""
  loc_BFE860: FFreeVar var_B0 = "": var_D8 = "": var_F8 = ""
  loc_BFE86B: FLdRfVar var_DC
  loc_BFE86E: FLdPr Me
  loc_BFE871: VCallAd Control_ID_TxtDetaNope
  loc_BFE874: FStAdFunc var_C4
  loc_BFE877: FLdPr var_C4
  loc_BFE87A:  = Me.Text
  loc_BFE87F: FLdRfVar var_E4
  loc_BFE882: FLdPr Me
  loc_BFE885: VCallAd Control_ID_TxtDetaNope
  loc_BFE888: FStAdFunc var_E0
  loc_BFE88B: FLdPr var_E0
  loc_BFE88E:  = Me.Text
  loc_BFE893: LitVarStr var_C0, vbNullString
  loc_BFE898: FStVarCopyObj var_F8
  loc_BFE89B: FLdRfVar var_F8
  loc_BFE89E: LitStr " AND np.DetaNope LIKE '" & Chr(37)
  loc_BFE8A1: ILdRf var_E4
  loc_BFE8A4: ConcatStr
  loc_BFE8A5: FStStrNoPop var_E8
  loc_BFE8A8: LitStr Chr(37) & "'"
  loc_BFE8AB: ConcatStr
  loc_BFE8AC: CVarStr var_D8
  loc_BFE8AF: ILdRf var_DC
  loc_BFE8B2: LitStr vbNullString
  loc_BFE8B5: NeStr
  loc_BFE8B7: CVarBoolI2 var_B0
  loc_BFE8BB: FLdRfVar var_108
  loc_BFE8BE: ImpAdCallFPR4  = IIf(, , )
  loc_BFE8C3: FLdRfVar var_108
  loc_BFE8C6: CStrVarTmp
  loc_BFE8C7: FStStr var_9C
  loc_BFE8CA: FFreeStr var_DC = "": var_E4 = ""
  loc_BFE8D3: FFreeAd var_C4 = ""
  loc_BFE8DA: FFreeVar var_B0 = "": var_D8 = "": var_F8 = ""
  loc_BFE8E5: ILdRf var_8C
  loc_BFE8E8: LitStr vbNullString
  loc_BFE8EB: NeStr
  loc_BFE8ED: BranchF loc_BFE8FA
  loc_BFE8F0: LitStr vbNullString
  loc_BFE8F3: FLdPr Me
  loc_BFE8F6: MemStStrCopy
  loc_BFE8FA: LitStr "Municipalidad de Guaymallén"
  loc_BFE8FD: LitStr "Municipalidad de Guaymallén"
  loc_BFE900: EqStr
  loc_BFE902: BranchF loc_BFE90E
  loc_BFE905: LitStr "DetaNope2"
  loc_BFE908: FStStrCopy var_A0
  loc_BFE90B: Branch loc_BFE914
  loc_BFE90E: LitStr "DetaNope AS DetaNope2"
  loc_BFE911: FStStrCopy var_A0
  loc_BFE914: LitStr "SELECT IF(oxu.PeriInfo IS NULL,'No','Si') Mostrar, np.CodiNope, np.CoinNope, DetaNope, "
  loc_BFE917: ILdRf var_A0
  loc_BFE91A: ConcatStr
  loc_BFE91B: FStStrNoPop var_DC
  loc_BFE91E: LitStr ", np.CodiTico, DetaTico, np.CodiOrga, o.DetaOrga, ExpeImpu, FechNope, IFNULL(FecoNope,'') FecoNope, FeliNope, FeanNope, np.BajaMoti, np.BajaUsua, np.AltaUsua"
  loc_BFE921: ConcatStr
  loc_BFE922: FStStrNoPop var_E4
  loc_BFE925: LitStr ", IF(Count(itn.CodiItno)=Sum(IF(IdImpu=0,0,1)),'Si','No') Imputado"
  loc_BFE928: ConcatStr
  loc_BFE929: FStStrNoPop var_E8
  loc_BFE92C: LitStr ", IFNULL(r.IdRubro,0) IdRubro, IFNULL(DetaRubro,'') DetaRubro"
  loc_BFE92F: ConcatStr
  loc_BFE930: FStStrNoPop var_1B8
  loc_BFE933: LitStr ", np.IdUbfi, IFNULL(DienNope,'') DienNope"
  loc_BFE936: ConcatStr
  loc_BFE937: FStStrNoPop var_1BC
  loc_BFE93A: LitStr ", np.PlieNope"
  loc_BFE93D: ConcatStr
  loc_BFE93E: FStStrNoPop var_1C0
  loc_BFE941: LitStr ", IF(np.PlieNope>0,fnSellado(np.ExpeImpu) * (SELECT UntriPage FROM paragene pg WHERE pg.PeriInfo = np.PeriInfo),0) SelladoNope"
  loc_BFE944: ConcatStr
  loc_BFE945: FStStrNoPop var_1C4
  loc_BFE948: LitStr ", o.CodSupOrga, IFNULL(o2.DetaOrga,'') DetaSupOrga"
  loc_BFE94B: ConcatStr
  loc_BFE94C: FStStrNoPop var_1C8
  loc_BFE94F: LitStr " FROM notapedido np"
  loc_BFE952: ConcatStr
  loc_BFE953: FStStrNoPop var_1CC
  loc_BFE956: LitStr " LEFT JOIN orgaxusua oxu ON oxu.PeriInfo = np.PeriInfo AND oxu.CodiOrga = np.CodiOrga AND oxu.CodiUsua = '"
  loc_BFE959: ConcatStr
  loc_BFE95A: FStStrNoPop var_1D0
  loc_BFE95D: ImpAdLdI4 MemVar_C3D03C
  loc_BFE960: ConcatStr
  loc_BFE961: FStStrNoPop var_1D4
  loc_BFE964: LitStr "'"
  loc_BFE967: ConcatStr
  loc_BFE968: FStStrNoPop var_1D8
  loc_BFE96B: LitStr " INNER JOIN itemnota itn ON itn.PeriInfo = np.PeriInfo AND itn.CodiNope = np.CodiNope"
  loc_BFE96E: ConcatStr
  loc_BFE96F: FStStrNoPop var_1DC
  loc_BFE972: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_BFE975: ConcatStr
  loc_BFE976: FStStrNoPop var_1E0
  loc_BFE979: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = np.PeriInfo AND o.CodiOrga = np.CodiOrga"
  loc_BFE97C: ConcatStr
  loc_BFE97D: FStStrNoPop var_1E4
  loc_BFE980: LitStr " LEFT JOIN infogov.organigrama o2 ON o2.PeriInfo = o.PeriInfo AND o2.CodiOrga = o.CodSupOrga"
  loc_BFE983: ConcatStr
  loc_BFE984: FStStrNoPop var_1E8
  loc_BFE987: LitStr " LEFT JOIN rubro r ON r.IdRubro = np.IdRubro"
  loc_BFE98A: ConcatStr
  loc_BFE98B: FStStrNoPop var_1EC
  loc_BFE98E: LitStr " WHERE np.PeriInfo = "
  loc_BFE991: ConcatStr
  loc_BFE992: FStStrNoPop var_1F4
  loc_BFE995: FLdRfVar var_1F0
  loc_BFE998: FLdPr Me
  loc_BFE99B: VCallAd Control_ID_cboPeriodo
  loc_BFE99E: FStAdFunc var_C4
  loc_BFE9A1: FLdPr var_C4
  loc_BFE9A4:  = Me.Text
  loc_BFE9A9: ILdRf var_1F0
  loc_BFE9AC: ConcatStr
  loc_BFE9AD: FStStrNoPop var_1F8
  loc_BFE9B0: ILdRf var_8C
  loc_BFE9B3: ConcatStr
  loc_BFE9B4: FStStrNoPop var_1FC
  loc_BFE9B7: ILdRf var_90
  loc_BFE9BA: ConcatStr
  loc_BFE9BB: FStStrNoPop var_200
  loc_BFE9BE: FLdPr Me
  loc_BFE9C1: MemLdStr global_104
  loc_BFE9C4: ConcatStr
  loc_BFE9C5: FStStrNoPop var_204
  loc_BFE9C8: ILdRf var_94
  loc_BFE9CB: ConcatStr
  loc_BFE9CC: FStStrNoPop var_208
  loc_BFE9CF: ILdRf var_98
  loc_BFE9D2: ConcatStr
  loc_BFE9D3: FStStrNoPop var_20C
  loc_BFE9D6: ILdRf var_9C
  loc_BFE9D9: ConcatStr
  loc_BFE9DA: FStStrNoPop var_210
  loc_BFE9DD: LitStr " GROUP BY np.CodiNope"
  loc_BFE9E0: ConcatStr
  loc_BFE9E1: FStStrNoPop var_214
  loc_BFE9E4: LitStr " ORDER BY np.CodiNope;"
  loc_BFE9E7: ConcatStr
  loc_BFE9E8: FStStrNoPop var_218
  loc_BFE9EB: FLdPr Me
  loc_BFE9EE: MemLdRfVar from_stack_1.global_72
  loc_BFE9F1: NewIfNullPr clsnotapedido
  loc_BFE9F4: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_BFE9F9: FFreeStr var_DC = "": var_E4 = "": var_E8 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F4 = "": var_1F0 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = ""
  loc_BFEA34: FFree1Ad var_C4
  loc_BFEA37: FLdRfVar var_1B4
  loc_BFEA3A: FLdPr Me
  loc_BFEA3D: MemLdRfVar from_stack_1.global_72
  loc_BFEA40: NewIfNullPr clsnotapedido
  loc_BFEA43: from_stack_1 = clsnotapedido.RecordCount
  loc_BFEA48: ILdRf var_1B4
  loc_BFEA4B: LitI4 0
  loc_BFEA50: EqI4
  loc_BFEA51: BranchF loc_BFEA67
  loc_BFEA54: LitI4 0
  loc_BFEA59: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BFEA5C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFEA61: Branch loc_C00681
  loc_BFEA64: Branch loc_BFEBEE
  loc_BFEA67: FLdPr Me
  loc_BFEA6A: MemLdRfVar from_stack_1.global_72
  loc_BFEA6D: NewIfNullPr clsnotapedido
  loc_BFEA70: Call clsnotapedido.MoveFirst()
  loc_BFEA75: FLdRfVar var_C6
  loc_BFEA78: FLdPr Me
  loc_BFEA7B: MemLdRfVar from_stack_1.global_72
  loc_BFEA7E: NewIfNullPr clsnotapedido
  loc_BFEA81: from_stack_1 = clsnotapedido.EOF
  loc_BFEA86: FLdI2 var_C6
  loc_BFEA89: NotI4
  loc_BFEA8A: BranchF loc_BFEB4F
  loc_BFEA8D: FLdRfVar var_D8
  loc_BFEA90: FLdRfVar var_1B0
  loc_BFEA93: LitVarStr var_B0, "Mostrar"
  loc_BFEA98: PopAdLdVar
  loc_BFEA99: FLdRfVar var_E0
  loc_BFEA9C: FLdRfVar var_C4
  loc_BFEA9F: FLdPr Me
  loc_BFEAA2: MemLdRfVar from_stack_1.global_72
  loc_BFEAA5: NewIfNullPr clsnotapedido
  loc_BFEAA8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFEAAD: FLdPr var_C4
  loc_BFEAB0:  = Me.Fields
  loc_BFEAB5: FLdPr var_E0
  loc_BFEAB8: from_stack_2 = Me.Item(from_stack_1)
  loc_BFEABD: FLdPr var_1B0
  loc_BFEAC0:  = Me.Value
  loc_BFEAC5: FLdRfVar var_D8
  loc_BFEAC8: LitVarStr var_C0, "No"
  loc_BFEACD: HardType
  loc_BFEACE: EqVarBool
  loc_BFEAD0: FFreeAd var_C4 = "": var_E0 = ""
  loc_BFEAD9: FFree1Var var_D8 = ""
  loc_BFEADC: BranchF loc_BFEB3E
  loc_BFEADF: ILdRf var_21C
  loc_BFEAE2: LitStr " "
  loc_BFEAE5: ConcatStr
  loc_BFEAE6: CVarStr var_F8
  loc_BFEAE9: FLdRfVar var_D8
  loc_BFEAEC: FLdRfVar var_1B0
  loc_BFEAEF: LitVarStr var_B0, "CodiNope"
  loc_BFEAF4: PopAdLdVar
  loc_BFEAF5: FLdRfVar var_E0
  loc_BFEAF8: FLdRfVar var_C4
  loc_BFEAFB: FLdPr Me
  loc_BFEAFE: MemLdRfVar from_stack_1.global_72
  loc_BFEB01: NewIfNullPr clsnotapedido
  loc_BFEB04: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFEB09: FLdPr var_C4
  loc_BFEB0C:  = Me.Fields
  loc_BFEB11: FLdPr var_E0
  loc_BFEB14: from_stack_2 = Me.Item(from_stack_1)
  loc_BFEB19: FLdPr var_1B0
  loc_BFEB1C:  = Me.Value
  loc_BFEB21: FLdRfVar var_D8
  loc_BFEB24: ConcatVar var_108
  loc_BFEB28: CStrVarTmp
  loc_BFEB29: FStStr var_21C
  loc_BFEB2C: FFreeAd var_C4 = "": var_E0 = ""
  loc_BFEB35: FFreeVar var_F8 = "": var_D8 = ""
  loc_BFEB3E: FLdPr Me
  loc_BFEB41: MemLdRfVar from_stack_1.global_72
  loc_BFEB44: NewIfNullPr clsnotapedido
  loc_BFEB47: Call clsnotapedido.MoveSiguiente()
  loc_BFEB4C: Branch loc_BFEA75
  loc_BFEB4F: ILdRf var_21C
  loc_BFEB52: LitStr vbNullString
  loc_BFEB55: NeStr
  loc_BFEB57: BranchF loc_BFEBEE
  loc_BFEB5A: FLdRfVar var_21C
  loc_BFEB5D: CVarRef
  loc_BFEB62: FLdRfVar var_D8
  loc_BFEB65: ImpAdCallFPR4  = Trim()
  loc_BFEB6A: LitI4 0
  loc_BFEB6F: LitI4 -1
  loc_BFEB74: LitI4 1
  loc_BFEB79: LitStr ", "
  loc_BFEB7C: LitStr " "
  loc_BFEB7F: FLdRfVar var_D8
  loc_BFEB82: CStrVarVal var_DC
  loc_BFEB86: ImpAdCallI2 Replace(, , , , , )
  loc_BFEB8B: FStStr var_21C
  loc_BFEB8E: FFree1Str var_DC
  loc_BFEB91: FFree1Var var_D8 = ""
  loc_BFEB94: LitStr "Su Usuario no tiene Permiso para ver las Notas de pedido: "
  loc_BFEB97: ILdRf var_21C
  loc_BFEB9A: ConcatStr
  loc_BFEB9B: CVarStr var_F8
  loc_BFEB9E: LitStr "Su Usuario no tiene Permiso para ver la NP: "
  loc_BFEBA1: ILdRf var_21C
  loc_BFEBA4: ConcatStr
  loc_BFEBA5: CVarStr var_D8
  loc_BFEBA8: LitI4 1
  loc_BFEBAD: ILdRf var_21C
  loc_BFEBB0: LitStr ","
  loc_BFEBB3: LitI4 0
  loc_BFEBB8: FnInStr4
  loc_BFEBBA: LitI4 0
  loc_BFEBBF: EqI4
  loc_BFEBC0: CVarBoolI2 var_B0
  loc_BFEBC4: FLdRfVar var_108
  loc_BFEBC7: ImpAdCallFPR4  = IIf(, , )
  loc_BFEBCC: LitI4 0
  loc_BFEBD1: FLdRfVar var_108
  loc_BFEBD4: CStrVarVal var_DC
  loc_BFEBD8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BFEBDD: FFree1Str var_DC
  loc_BFEBE0: FFreeVar var_B0 = "": var_D8 = "": var_F8 = ""
  loc_BFEBEB: Branch loc_C00681
  loc_BFEBEE: LitI4 0
  loc_BFEBF3: FLdRfVar var_1B4
  loc_BFEBF6: FLdPr Me
  loc_BFEBF9: MemLdRfVar from_stack_1.global_72
  loc_BFEBFC: NewIfNullPr clsnotapedido
  loc_BFEBFF: from_stack_1 = clsnotapedido.RecordCount
  loc_BFEC04: ILdRf var_1B4
  loc_BFEC07: FLdPr Me
  loc_BFEC0A: MemLdRfVar from_stack_1.global_88
  loc_BFEC0D: Redim
  loc_BFEC17: FLdPr Me
  loc_BFEC1A: MemLdRfVar from_stack_1.global_72
  loc_BFEC1D: NewIfNullPr clsnotapedido
  loc_BFEC20: Call clsnotapedido.MoveFirst()
  loc_BFEC25: LitI2_Byte 1
  loc_BFEC27: FLdPr Me
  loc_BFEC2A: MemLdRfVar from_stack_1.global_92
  loc_BFEC2D: FLdPr Me
  loc_BFEC30: MemLdStr global_88
  loc_BFEC33: LitI2_Byte 1
  loc_BFEC35: FnUBound
  loc_BFEC37: CI2I4
  loc_BFEC38: ForI2 var_220
  loc_BFEC3E: FLdPr Me
  loc_BFEC41: MemLdRfVar from_stack_1.global_72
  loc_BFEC44: NewIfNullAd
  loc_BFEC47: FStAd var_224 
  loc_BFEC4B: FLdRfVar var_1B0
  loc_BFEC4E: LitVarStr var_B0, "CodiNope"
  loc_BFEC53: PopAdLdVar
  loc_BFEC54: FLdRfVar var_E0
  loc_BFEC57: FLdRfVar var_C4
  loc_BFEC5A: FLdPr var_224
  loc_BFEC5D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFEC62: FLdPr var_C4
  loc_BFEC65:  = Me.Fields
  loc_BFEC6A: FLdPr var_E0
  loc_BFEC6D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFEC72: LitI2_Byte 0
  loc_BFEC74: LitVar_Missing var_F8
  loc_BFEC77: LitI2_Byte 0
  loc_BFEC79: FLdZeroAd var_1B0
  loc_BFEC7C: CVarAd
  loc_BFEC80: PopAdLdVar
  loc_BFEC81: FLdPr Me
  loc_BFEC84: MemLdI2 global_92
  loc_BFEC87: CI4UI1
  loc_BFEC88: FLdPr Me
  loc_BFEC8B: MemLdStr global_88
  loc_BFEC8E: AryLock
  loc_BFEC91: Ary1LdPr
  loc_BFEC92: MemLdRfVar from_stack_1.global_0
  loc_BFEC95: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFEC9A: AryUnlock
  loc_BFEC9D: FFreeAd var_C4 = ""
  loc_BFECA4: FFreeVar var_D8 = ""
  loc_BFECAB: FLdRfVar var_1B0
  loc_BFECAE: LitVarStr var_B0, "IdRubro"
  loc_BFECB3: PopAdLdVar
  loc_BFECB4: FLdRfVar var_E0
  loc_BFECB7: FLdRfVar var_C4
  loc_BFECBA: FLdPr var_224
  loc_BFECBD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFECC2: FLdPr var_C4
  loc_BFECC5:  = Me.Fields
  loc_BFECCA: FLdPr var_E0
  loc_BFECCD: from_stack_2 = Me.Item(from_stack_1)
  loc_BFECD2: LitI2_Byte 0
  loc_BFECD4: LitVar_Missing var_F8
  loc_BFECD7: LitI2_Byte 0
  loc_BFECD9: FLdZeroAd var_1B0
  loc_BFECDC: CVarAd
  loc_BFECE0: PopAdLdVar
  loc_BFECE1: FLdPr Me
  loc_BFECE4: MemLdI2 global_92
  loc_BFECE7: CI4UI1
  loc_BFECE8: FLdPr Me
  loc_BFECEB: MemLdStr global_88
  loc_BFECEE: AryLock
  loc_BFECF1: Ary1LdPr
  loc_BFECF2: MemLdRfVar from_stack_1.global_4
  loc_BFECF5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFECFA: AryUnlock
  loc_BFECFD: FFreeAd var_C4 = ""
  loc_BFED04: FFreeVar var_D8 = ""
  loc_BFED0B: FLdRfVar var_1B0
  loc_BFED0E: LitVarStr var_B0, "DetaRubro"
  loc_BFED13: PopAdLdVar
  loc_BFED14: FLdRfVar var_E0
  loc_BFED17: FLdRfVar var_C4
  loc_BFED1A: FLdPr var_224
  loc_BFED1D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFED22: FLdPr var_C4
  loc_BFED25:  = Me.Fields
  loc_BFED2A: FLdPr var_E0
  loc_BFED2D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFED32: LitI2_Byte 0
  loc_BFED34: LitVar_Missing var_F8
  loc_BFED37: LitI2_Byte 0
  loc_BFED39: FLdZeroAd var_1B0
  loc_BFED3C: CVarAd
  loc_BFED40: PopAdLdVar
  loc_BFED41: FLdPr Me
  loc_BFED44: MemLdI2 global_92
  loc_BFED47: CI4UI1
  loc_BFED48: FLdPr Me
  loc_BFED4B: MemLdStr global_88
  loc_BFED4E: AryLock
  loc_BFED51: Ary1LdPr
  loc_BFED52: MemLdRfVar from_stack_1.global_8
  loc_BFED55: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFED5A: AryUnlock
  loc_BFED5D: FFreeAd var_C4 = ""
  loc_BFED64: FFreeVar var_D8 = ""
  loc_BFED6B: FLdRfVar var_1B0
  loc_BFED6E: LitVarStr var_B0, "CoinNope"
  loc_BFED73: PopAdLdVar
  loc_BFED74: FLdRfVar var_E0
  loc_BFED77: FLdRfVar var_C4
  loc_BFED7A: FLdPr var_224
  loc_BFED7D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFED82: FLdPr var_C4
  loc_BFED85:  = Me.Fields
  loc_BFED8A: FLdPr var_E0
  loc_BFED8D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFED92: LitI2_Byte 0
  loc_BFED94: LitVar_Missing var_F8
  loc_BFED97: LitI2_Byte 0
  loc_BFED99: FLdZeroAd var_1B0
  loc_BFED9C: CVarAd
  loc_BFEDA0: PopAdLdVar
  loc_BFEDA1: FLdPr Me
  loc_BFEDA4: MemLdI2 global_92
  loc_BFEDA7: CI4UI1
  loc_BFEDA8: FLdPr Me
  loc_BFEDAB: MemLdStr global_88
  loc_BFEDAE: AryLock
  loc_BFEDB1: Ary1LdPr
  loc_BFEDB2: MemLdRfVar from_stack_1.global_12
  loc_BFEDB5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFEDBA: AryUnlock
  loc_BFEDBD: FFreeAd var_C4 = ""
  loc_BFEDC4: FFreeVar var_D8 = ""
  loc_BFEDCB: FLdRfVar var_1B0
  loc_BFEDCE: LitVarStr var_B0, "DetaNope"
  loc_BFEDD3: PopAdLdVar
  loc_BFEDD4: FLdRfVar var_E0
  loc_BFEDD7: FLdRfVar var_C4
  loc_BFEDDA: FLdPr var_224
  loc_BFEDDD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFEDE2: FLdPr var_C4
  loc_BFEDE5:  = Me.Fields
  loc_BFEDEA: FLdPr var_E0
  loc_BFEDED: from_stack_2 = Me.Item(from_stack_1)
  loc_BFEDF2: LitI2_Byte 0
  loc_BFEDF4: LitVar_Missing var_F8
  loc_BFEDF7: LitI2_Byte 0
  loc_BFEDF9: FLdZeroAd var_1B0
  loc_BFEDFC: CVarAd
  loc_BFEE00: PopAdLdVar
  loc_BFEE01: FLdPr Me
  loc_BFEE04: MemLdI2 global_92
  loc_BFEE07: CI4UI1
  loc_BFEE08: FLdPr Me
  loc_BFEE0B: MemLdStr global_88
  loc_BFEE0E: AryLock
  loc_BFEE11: Ary1LdPr
  loc_BFEE12: MemLdRfVar from_stack_1.global_16
  loc_BFEE15: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFEE1A: AryUnlock
  loc_BFEE1D: FFreeAd var_C4 = ""
  loc_BFEE24: FFreeVar var_D8 = ""
  loc_BFEE2B: FLdRfVar var_1B0
  loc_BFEE2E: LitVarStr var_B0, "DetaNope2"
  loc_BFEE33: PopAdLdVar
  loc_BFEE34: FLdRfVar var_E0
  loc_BFEE37: FLdRfVar var_C4
  loc_BFEE3A: FLdPr var_224
  loc_BFEE3D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFEE42: FLdPr var_C4
  loc_BFEE45:  = Me.Fields
  loc_BFEE4A: FLdPr var_E0
  loc_BFEE4D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFEE52: LitI2_Byte 0
  loc_BFEE54: LitVar_Missing var_F8
  loc_BFEE57: LitI2_Byte 0
  loc_BFEE59: FLdZeroAd var_1B0
  loc_BFEE5C: CVarAd
  loc_BFEE60: PopAdLdVar
  loc_BFEE61: FLdPr Me
  loc_BFEE64: MemLdI2 global_92
  loc_BFEE67: CI4UI1
  loc_BFEE68: FLdPr Me
  loc_BFEE6B: MemLdStr global_88
  loc_BFEE6E: AryLock
  loc_BFEE71: Ary1LdPr
  loc_BFEE72: MemLdRfVar from_stack_1.global_20
  loc_BFEE75: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFEE7A: AryUnlock
  loc_BFEE7D: FFreeAd var_C4 = ""
  loc_BFEE84: FFreeVar var_D8 = ""
  loc_BFEE8B: FLdRfVar var_1B0
  loc_BFEE8E: LitVarStr var_B0, "CodiTico"
  loc_BFEE93: PopAdLdVar
  loc_BFEE94: FLdRfVar var_E0
  loc_BFEE97: FLdRfVar var_C4
  loc_BFEE9A: FLdPr var_224
  loc_BFEE9D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFEEA2: FLdPr var_C4
  loc_BFEEA5:  = Me.Fields
  loc_BFEEAA: FLdPr var_E0
  loc_BFEEAD: from_stack_2 = Me.Item(from_stack_1)
  loc_BFEEB2: LitI2_Byte 0
  loc_BFEEB4: LitVar_Missing var_F8
  loc_BFEEB7: LitI2_Byte 0
  loc_BFEEB9: FLdZeroAd var_1B0
  loc_BFEEBC: CVarAd
  loc_BFEEC0: PopAdLdVar
  loc_BFEEC1: FLdPr Me
  loc_BFEEC4: MemLdI2 global_92
  loc_BFEEC7: CI4UI1
  loc_BFEEC8: FLdPr Me
  loc_BFEECB: MemLdStr global_88
  loc_BFEECE: AryLock
  loc_BFEED1: Ary1LdPr
  loc_BFEED2: MemLdRfVar from_stack_1.global_24
  loc_BFEED5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFEEDA: AryUnlock
  loc_BFEEDD: FFreeAd var_C4 = ""
  loc_BFEEE4: FFreeVar var_D8 = ""
  loc_BFEEEB: FLdRfVar var_1B0
  loc_BFEEEE: LitVarStr var_B0, "DetaTico"
  loc_BFEEF3: PopAdLdVar
  loc_BFEEF4: FLdRfVar var_E0
  loc_BFEEF7: FLdRfVar var_C4
  loc_BFEEFA: FLdPr var_224
  loc_BFEEFD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFEF02: FLdPr var_C4
  loc_BFEF05:  = Me.Fields
  loc_BFEF0A: FLdPr var_E0
  loc_BFEF0D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFEF12: LitI2_Byte 0
  loc_BFEF14: LitVar_Missing var_F8
  loc_BFEF17: LitI2_Byte 0
  loc_BFEF19: FLdZeroAd var_1B0
  loc_BFEF1C: CVarAd
  loc_BFEF20: PopAdLdVar
  loc_BFEF21: FLdPr Me
  loc_BFEF24: MemLdI2 global_92
  loc_BFEF27: CI4UI1
  loc_BFEF28: FLdPr Me
  loc_BFEF2B: MemLdStr global_88
  loc_BFEF2E: AryLock
  loc_BFEF31: Ary1LdPr
  loc_BFEF32: MemLdRfVar from_stack_1.global_28
  loc_BFEF35: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFEF3A: AryUnlock
  loc_BFEF3D: FFreeAd var_C4 = ""
  loc_BFEF44: FFreeVar var_D8 = ""
  loc_BFEF4B: FLdRfVar var_1B0
  loc_BFEF4E: LitVarStr var_B0, "PlieNope"
  loc_BFEF53: PopAdLdVar
  loc_BFEF54: FLdRfVar var_E0
  loc_BFEF57: FLdRfVar var_C4
  loc_BFEF5A: FLdPr var_224
  loc_BFEF5D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFEF62: FLdPr var_C4
  loc_BFEF65:  = Me.Fields
  loc_BFEF6A: FLdPr var_E0
  loc_BFEF6D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFEF72: LitI2_Byte 0
  loc_BFEF74: LitVar_Missing var_F8
  loc_BFEF77: LitI2_Byte 0
  loc_BFEF79: FLdZeroAd var_1B0
  loc_BFEF7C: CVarAd
  loc_BFEF80: PopAdLdVar
  loc_BFEF81: FLdPr Me
  loc_BFEF84: MemLdI2 global_92
  loc_BFEF87: CI4UI1
  loc_BFEF88: FLdPr Me
  loc_BFEF8B: MemLdStr global_88
  loc_BFEF8E: AryLock
  loc_BFEF91: Ary1LdPr
  loc_BFEF92: MemLdRfVar from_stack_1.global_32
  loc_BFEF95: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFEF9A: AryUnlock
  loc_BFEF9D: FFreeAd var_C4 = ""
  loc_BFEFA4: FFreeVar var_D8 = ""
  loc_BFEFAB: FLdRfVar var_1B0
  loc_BFEFAE: LitVarStr var_B0, "SelladoNope"
  loc_BFEFB3: PopAdLdVar
  loc_BFEFB4: FLdRfVar var_E0
  loc_BFEFB7: FLdRfVar var_C4
  loc_BFEFBA: FLdPr var_224
  loc_BFEFBD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFEFC2: FLdPr var_C4
  loc_BFEFC5:  = Me.Fields
  loc_BFEFCA: FLdPr var_E0
  loc_BFEFCD: from_stack_2 = Me.Item(from_stack_1)
  loc_BFEFD2: LitI2_Byte 0
  loc_BFEFD4: LitVar_Missing var_F8
  loc_BFEFD7: LitI2_Byte 0
  loc_BFEFD9: FLdZeroAd var_1B0
  loc_BFEFDC: CVarAd
  loc_BFEFE0: PopAdLdVar
  loc_BFEFE1: FLdPr Me
  loc_BFEFE4: MemLdI2 global_92
  loc_BFEFE7: CI4UI1
  loc_BFEFE8: FLdPr Me
  loc_BFEFEB: MemLdStr global_88
  loc_BFEFEE: AryLock
  loc_BFEFF1: Ary1LdPr
  loc_BFEFF2: MemLdRfVar from_stack_1.global_36
  loc_BFEFF5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFEFFA: AryUnlock
  loc_BFEFFD: FFreeAd var_C4 = ""
  loc_BFF004: FFreeVar var_D8 = ""
  loc_BFF00B: FLdRfVar var_1B0
  loc_BFF00E: LitVarStr var_B0, "ExpeImpu"
  loc_BFF013: PopAdLdVar
  loc_BFF014: FLdRfVar var_E0
  loc_BFF017: FLdRfVar var_C4
  loc_BFF01A: FLdPr var_224
  loc_BFF01D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF022: FLdPr var_C4
  loc_BFF025:  = Me.Fields
  loc_BFF02A: FLdPr var_E0
  loc_BFF02D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF032: LitI2_Byte 0
  loc_BFF034: LitVar_Missing var_F8
  loc_BFF037: LitI2_Byte 0
  loc_BFF039: FLdZeroAd var_1B0
  loc_BFF03C: CVarAd
  loc_BFF040: PopAdLdVar
  loc_BFF041: FLdPr Me
  loc_BFF044: MemLdI2 global_92
  loc_BFF047: CI4UI1
  loc_BFF048: FLdPr Me
  loc_BFF04B: MemLdStr global_88
  loc_BFF04E: AryLock
  loc_BFF051: Ary1LdPr
  loc_BFF052: MemLdRfVar from_stack_1.global_40
  loc_BFF055: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF05A: AryUnlock
  loc_BFF05D: FFreeAd var_C4 = ""
  loc_BFF064: FFreeVar var_D8 = ""
  loc_BFF06B: FLdRfVar var_1B0
  loc_BFF06E: LitVarStr var_B0, "CodiOrga"
  loc_BFF073: PopAdLdVar
  loc_BFF074: FLdRfVar var_E0
  loc_BFF077: FLdRfVar var_C4
  loc_BFF07A: FLdPr var_224
  loc_BFF07D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF082: FLdPr var_C4
  loc_BFF085:  = Me.Fields
  loc_BFF08A: FLdPr var_E0
  loc_BFF08D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF092: LitI2_Byte 0
  loc_BFF094: LitVar_Missing var_F8
  loc_BFF097: LitI2_Byte 0
  loc_BFF099: FLdZeroAd var_1B0
  loc_BFF09C: CVarAd
  loc_BFF0A0: PopAdLdVar
  loc_BFF0A1: FLdPr Me
  loc_BFF0A4: MemLdI2 global_92
  loc_BFF0A7: CI4UI1
  loc_BFF0A8: FLdPr Me
  loc_BFF0AB: MemLdStr global_88
  loc_BFF0AE: AryLock
  loc_BFF0B1: Ary1LdPr
  loc_BFF0B2: MemLdRfVar from_stack_1.global_44
  loc_BFF0B5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF0BA: AryUnlock
  loc_BFF0BD: FFreeAd var_C4 = ""
  loc_BFF0C4: FFreeVar var_D8 = ""
  loc_BFF0CB: FLdRfVar var_1B0
  loc_BFF0CE: LitVarStr var_B0, "DetaOrga"
  loc_BFF0D3: PopAdLdVar
  loc_BFF0D4: FLdRfVar var_E0
  loc_BFF0D7: FLdRfVar var_C4
  loc_BFF0DA: FLdPr var_224
  loc_BFF0DD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF0E2: FLdPr var_C4
  loc_BFF0E5:  = Me.Fields
  loc_BFF0EA: FLdPr var_E0
  loc_BFF0ED: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF0F2: LitI2_Byte 0
  loc_BFF0F4: LitVar_Missing var_F8
  loc_BFF0F7: LitI2_Byte 0
  loc_BFF0F9: FLdZeroAd var_1B0
  loc_BFF0FC: CVarAd
  loc_BFF100: PopAdLdVar
  loc_BFF101: FLdPr Me
  loc_BFF104: MemLdI2 global_92
  loc_BFF107: CI4UI1
  loc_BFF108: FLdPr Me
  loc_BFF10B: MemLdStr global_88
  loc_BFF10E: AryLock
  loc_BFF111: Ary1LdPr
  loc_BFF112: MemLdRfVar from_stack_1.global_48
  loc_BFF115: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF11A: AryUnlock
  loc_BFF11D: FFreeAd var_C4 = ""
  loc_BFF124: FFreeVar var_D8 = ""
  loc_BFF12B: FLdRfVar var_1B0
  loc_BFF12E: LitVarStr var_B0, "CodSupOrga"
  loc_BFF133: PopAdLdVar
  loc_BFF134: FLdRfVar var_E0
  loc_BFF137: FLdRfVar var_C4
  loc_BFF13A: FLdPr var_224
  loc_BFF13D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF142: FLdPr var_C4
  loc_BFF145:  = Me.Fields
  loc_BFF14A: FLdPr var_E0
  loc_BFF14D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF152: LitI2_Byte 0
  loc_BFF154: LitVar_Missing var_F8
  loc_BFF157: LitI2_Byte 0
  loc_BFF159: FLdZeroAd var_1B0
  loc_BFF15C: CVarAd
  loc_BFF160: PopAdLdVar
  loc_BFF161: FLdPr Me
  loc_BFF164: MemLdI2 global_92
  loc_BFF167: CI4UI1
  loc_BFF168: FLdPr Me
  loc_BFF16B: MemLdStr global_88
  loc_BFF16E: AryLock
  loc_BFF171: Ary1LdPr
  loc_BFF172: MemLdRfVar from_stack_1.htmFile
  loc_BFF175: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF17A: AryUnlock
  loc_BFF17D: FFreeAd var_C4 = ""
  loc_BFF184: FFreeVar var_D8 = ""
  loc_BFF18B: FLdRfVar var_1B0
  loc_BFF18E: LitVarStr var_B0, "DetaSupOrga"
  loc_BFF193: PopAdLdVar
  loc_BFF194: FLdRfVar var_E0
  loc_BFF197: FLdRfVar var_C4
  loc_BFF19A: FLdPr var_224
  loc_BFF19D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF1A2: FLdPr var_C4
  loc_BFF1A5:  = Me.Fields
  loc_BFF1AA: FLdPr var_E0
  loc_BFF1AD: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF1B2: LitI2_Byte 0
  loc_BFF1B4: LitVar_Missing var_F8
  loc_BFF1B7: LitI2_Byte 0
  loc_BFF1B9: FLdZeroAd var_1B0
  loc_BFF1BC: CVarAd
  loc_BFF1C0: PopAdLdVar
  loc_BFF1C1: FLdPr Me
  loc_BFF1C4: MemLdI2 global_92
  loc_BFF1C7: CI4UI1
  loc_BFF1C8: FLdPr Me
  loc_BFF1CB: MemLdStr global_88
  loc_BFF1CE: AryLock
  loc_BFF1D1: Ary1LdPr
  loc_BFF1D2: MemLdRfVar from_stack_1.global_56
  loc_BFF1D5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF1DA: AryUnlock
  loc_BFF1DD: FFreeAd var_C4 = ""
  loc_BFF1E4: FFreeVar var_D8 = ""
  loc_BFF1EB: FLdRfVar var_1B0
  loc_BFF1EE: LitVarStr var_B0, "FechNope"
  loc_BFF1F3: PopAdLdVar
  loc_BFF1F4: FLdRfVar var_E0
  loc_BFF1F7: FLdRfVar var_C4
  loc_BFF1FA: FLdPr var_224
  loc_BFF1FD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF202: FLdPr var_C4
  loc_BFF205:  = Me.Fields
  loc_BFF20A: FLdPr var_E0
  loc_BFF20D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF212: LitI2_Byte 0
  loc_BFF214: LitVar_Missing var_F8
  loc_BFF217: LitI2_Byte 0
  loc_BFF219: FLdZeroAd var_1B0
  loc_BFF21C: CVarAd
  loc_BFF220: PopAdLdVar
  loc_BFF221: FLdPr Me
  loc_BFF224: MemLdI2 global_92
  loc_BFF227: CI4UI1
  loc_BFF228: FLdPr Me
  loc_BFF22B: MemLdStr global_88
  loc_BFF22E: AryLock
  loc_BFF231: Ary1LdPr
  loc_BFF232: MemLdRfVar from_stack_1.global_60
  loc_BFF235: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF23A: AryUnlock
  loc_BFF23D: FFreeAd var_C4 = ""
  loc_BFF244: FFreeVar var_D8 = ""
  loc_BFF24B: FLdRfVar var_1B0
  loc_BFF24E: LitVarStr var_B0, "FecoNope"
  loc_BFF253: PopAdLdVar
  loc_BFF254: FLdRfVar var_E0
  loc_BFF257: FLdRfVar var_C4
  loc_BFF25A: FLdPr var_224
  loc_BFF25D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF262: FLdPr var_C4
  loc_BFF265:  = Me.Fields
  loc_BFF26A: FLdPr var_E0
  loc_BFF26D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF272: LitI2_Byte 0
  loc_BFF274: LitVar_Missing var_F8
  loc_BFF277: LitI2_Byte 0
  loc_BFF279: FLdZeroAd var_1B0
  loc_BFF27C: CVarAd
  loc_BFF280: PopAdLdVar
  loc_BFF281: FLdPr Me
  loc_BFF284: MemLdI2 global_92
  loc_BFF287: CI4UI1
  loc_BFF288: FLdPr Me
  loc_BFF28B: MemLdStr global_88
  loc_BFF28E: AryLock
  loc_BFF291: Ary1LdPr
  loc_BFF292: MemLdRfVar from_stack_1.global_64
  loc_BFF295: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF29A: AryUnlock
  loc_BFF29D: FFreeAd var_C4 = ""
  loc_BFF2A4: FFreeVar var_D8 = ""
  loc_BFF2AB: FLdRfVar var_1B0
  loc_BFF2AE: LitVarStr var_B0, "FeliNope"
  loc_BFF2B3: PopAdLdVar
  loc_BFF2B4: FLdRfVar var_E0
  loc_BFF2B7: FLdRfVar var_C4
  loc_BFF2BA: FLdPr var_224
  loc_BFF2BD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF2C2: FLdPr var_C4
  loc_BFF2C5:  = Me.Fields
  loc_BFF2CA: FLdPr var_E0
  loc_BFF2CD: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF2D2: LitI2_Byte 0
  loc_BFF2D4: LitVar_Missing var_F8
  loc_BFF2D7: LitI2_Byte 0
  loc_BFF2D9: FLdZeroAd var_1B0
  loc_BFF2DC: CVarAd
  loc_BFF2E0: PopAdLdVar
  loc_BFF2E1: FLdPr Me
  loc_BFF2E4: MemLdI2 global_92
  loc_BFF2E7: CI4UI1
  loc_BFF2E8: FLdPr Me
  loc_BFF2EB: MemLdStr global_88
  loc_BFF2EE: AryLock
  loc_BFF2F1: Ary1LdPr
  loc_BFF2F2: MemLdRfVar from_stack_1.bLogos
  loc_BFF2F5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF2FA: AryUnlock
  loc_BFF2FD: FFreeAd var_C4 = ""
  loc_BFF304: FFreeVar var_D8 = ""
  loc_BFF30B: FLdRfVar var_1B0
  loc_BFF30E: LitVarStr var_B0, "FeanNope"
  loc_BFF313: PopAdLdVar
  loc_BFF314: FLdRfVar var_E0
  loc_BFF317: FLdRfVar var_C4
  loc_BFF31A: FLdPr var_224
  loc_BFF31D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF322: FLdPr var_C4
  loc_BFF325:  = Me.Fields
  loc_BFF32A: FLdPr var_E0
  loc_BFF32D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF332: LitI2_Byte 0
  loc_BFF334: LitVar_Missing var_F8
  loc_BFF337: LitI2_Byte 0
  loc_BFF339: FLdZeroAd var_1B0
  loc_BFF33C: CVarAd
  loc_BFF340: PopAdLdVar
  loc_BFF341: FLdPr Me
  loc_BFF344: MemLdI2 global_92
  loc_BFF347: CI4UI1
  loc_BFF348: FLdPr Me
  loc_BFF34B: MemLdStr global_88
  loc_BFF34E: AryLock
  loc_BFF351: Ary1LdPr
  loc_BFF352: MemLdRfVar from_stack_1.global_72
  loc_BFF355: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF35A: AryUnlock
  loc_BFF35D: FFreeAd var_C4 = ""
  loc_BFF364: FFreeVar var_D8 = ""
  loc_BFF36B: FLdRfVar var_1B0
  loc_BFF36E: LitVarStr var_B0, "BajaMoti"
  loc_BFF373: PopAdLdVar
  loc_BFF374: FLdRfVar var_E0
  loc_BFF377: FLdRfVar var_C4
  loc_BFF37A: FLdPr var_224
  loc_BFF37D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF382: FLdPr var_C4
  loc_BFF385:  = Me.Fields
  loc_BFF38A: FLdPr var_E0
  loc_BFF38D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF392: LitI2_Byte 0
  loc_BFF394: LitVar_Missing var_F8
  loc_BFF397: LitI2_Byte 0
  loc_BFF399: FLdZeroAd var_1B0
  loc_BFF39C: CVarAd
  loc_BFF3A0: PopAdLdVar
  loc_BFF3A1: FLdPr Me
  loc_BFF3A4: MemLdI2 global_92
  loc_BFF3A7: CI4UI1
  loc_BFF3A8: FLdPr Me
  loc_BFF3AB: MemLdStr global_88
  loc_BFF3AE: AryLock
  loc_BFF3B1: Ary1LdPr
  loc_BFF3B2: MemLdRfVar from_stack_1.global_76
  loc_BFF3B5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF3BA: AryUnlock
  loc_BFF3BD: FFreeAd var_C4 = ""
  loc_BFF3C4: FFreeVar var_D8 = ""
  loc_BFF3CB: FLdRfVar var_1B0
  loc_BFF3CE: LitVarStr var_B0, "BajaUsua"
  loc_BFF3D3: PopAdLdVar
  loc_BFF3D4: FLdRfVar var_E0
  loc_BFF3D7: FLdRfVar var_C4
  loc_BFF3DA: FLdPr var_224
  loc_BFF3DD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF3E2: FLdPr var_C4
  loc_BFF3E5:  = Me.Fields
  loc_BFF3EA: FLdPr var_E0
  loc_BFF3ED: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF3F2: LitI2_Byte 0
  loc_BFF3F4: LitVar_Missing var_F8
  loc_BFF3F7: LitI2_Byte 0
  loc_BFF3F9: FLdZeroAd var_1B0
  loc_BFF3FC: CVarAd
  loc_BFF400: PopAdLdVar
  loc_BFF401: FLdPr Me
  loc_BFF404: MemLdI2 global_92
  loc_BFF407: CI4UI1
  loc_BFF408: FLdPr Me
  loc_BFF40B: MemLdStr global_88
  loc_BFF40E: AryLock
  loc_BFF411: Ary1LdPr
  loc_BFF412: MemLdRfVar from_stack_1.global_80
  loc_BFF415: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF41A: AryUnlock
  loc_BFF41D: FFreeAd var_C4 = ""
  loc_BFF424: FFreeVar var_D8 = ""
  loc_BFF42B: FLdRfVar var_1B0
  loc_BFF42E: LitVarStr var_B0, "AltaUsua"
  loc_BFF433: PopAdLdVar
  loc_BFF434: FLdRfVar var_E0
  loc_BFF437: FLdRfVar var_C4
  loc_BFF43A: FLdPr var_224
  loc_BFF43D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF442: FLdPr var_C4
  loc_BFF445:  = Me.Fields
  loc_BFF44A: FLdPr var_E0
  loc_BFF44D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF452: LitI2_Byte 0
  loc_BFF454: LitVar_Missing var_F8
  loc_BFF457: LitI2_Byte 0
  loc_BFF459: FLdZeroAd var_1B0
  loc_BFF45C: CVarAd
  loc_BFF460: PopAdLdVar
  loc_BFF461: FLdPr Me
  loc_BFF464: MemLdI2 global_92
  loc_BFF467: CI4UI1
  loc_BFF468: FLdPr Me
  loc_BFF46B: MemLdStr global_88
  loc_BFF46E: AryLock
  loc_BFF471: Ary1LdPr
  loc_BFF472: MemLdRfVar from_stack_1.global_84
  loc_BFF475: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF47A: AryUnlock
  loc_BFF47D: FFreeAd var_C4 = ""
  loc_BFF484: FFreeVar var_D8 = ""
  loc_BFF48B: FLdRfVar var_1B0
  loc_BFF48E: LitVarStr var_B0, "IdUbfi"
  loc_BFF493: PopAdLdVar
  loc_BFF494: FLdRfVar var_E0
  loc_BFF497: FLdRfVar var_C4
  loc_BFF49A: FLdPr var_224
  loc_BFF49D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF4A2: FLdPr var_C4
  loc_BFF4A5:  = Me.Fields
  loc_BFF4AA: FLdPr var_E0
  loc_BFF4AD: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF4B2: LitI2_Byte 0
  loc_BFF4B4: LitVar_Missing var_F8
  loc_BFF4B7: LitI2_Byte 0
  loc_BFF4B9: FLdZeroAd var_1B0
  loc_BFF4BC: CVarAd
  loc_BFF4C0: PopAdLdVar
  loc_BFF4C1: FLdPr Me
  loc_BFF4C4: MemLdI2 global_92
  loc_BFF4C7: CI4UI1
  loc_BFF4C8: FLdPr Me
  loc_BFF4CB: MemLdStr global_88
  loc_BFF4CE: AryLock
  loc_BFF4D1: Ary1LdPr
  loc_BFF4D2: MemLdRfVar from_stack_1.global_88
  loc_BFF4D5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF4DA: AryUnlock
  loc_BFF4DD: FFreeAd var_C4 = ""
  loc_BFF4E4: FFreeVar var_D8 = ""
  loc_BFF4EB: FLdRfVar var_1B0
  loc_BFF4EE: LitVarStr var_B0, "DienNope"
  loc_BFF4F3: PopAdLdVar
  loc_BFF4F4: FLdRfVar var_E0
  loc_BFF4F7: FLdRfVar var_C4
  loc_BFF4FA: FLdPr var_224
  loc_BFF4FD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF502: FLdPr var_C4
  loc_BFF505:  = Me.Fields
  loc_BFF50A: FLdPr var_E0
  loc_BFF50D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF512: LitI2_Byte 0
  loc_BFF514: LitVar_Missing var_F8
  loc_BFF517: LitI2_Byte 0
  loc_BFF519: FLdZeroAd var_1B0
  loc_BFF51C: CVarAd
  loc_BFF520: PopAdLdVar
  loc_BFF521: FLdPr Me
  loc_BFF524: MemLdI2 global_92
  loc_BFF527: CI4UI1
  loc_BFF528: FLdPr Me
  loc_BFF52B: MemLdStr global_88
  loc_BFF52E: AryLock
  loc_BFF531: Ary1LdPr
  loc_BFF532: MemLdRfVar from_stack_1.global_92
  loc_BFF535: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF53A: AryUnlock
  loc_BFF53D: FFreeAd var_C4 = ""
  loc_BFF544: FFreeVar var_D8 = ""
  loc_BFF54B: FLdRfVar var_1B0
  loc_BFF54E: LitVarStr var_B0, "Imputado"
  loc_BFF553: PopAdLdVar
  loc_BFF554: FLdRfVar var_E0
  loc_BFF557: FLdRfVar var_C4
  loc_BFF55A: FLdPr var_224
  loc_BFF55D: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BFF562: FLdPr var_C4
  loc_BFF565:  = Me.Fields
  loc_BFF56A: FLdPr var_E0
  loc_BFF56D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF572: LitI2_Byte 0
  loc_BFF574: LitVar_Missing var_F8
  loc_BFF577: LitI2_Byte 0
  loc_BFF579: FLdZeroAd var_1B0
  loc_BFF57C: CVarAd
  loc_BFF580: PopAdLdVar
  loc_BFF581: FLdPr Me
  loc_BFF584: MemLdI2 global_92
  loc_BFF587: CI4UI1
  loc_BFF588: FLdPr Me
  loc_BFF58B: MemLdStr global_88
  loc_BFF58E: AryLock
  loc_BFF591: Ary1LdPr
  loc_BFF592: MemLdRfVar from_stack_1.global_120
  loc_BFF595: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF59A: AryUnlock
  loc_BFF59D: FFreeAd var_C4 = ""
  loc_BFF5A4: FFreeVar var_D8 = ""
  loc_BFF5AB: LitNothing
  loc_BFF5AD: FStAd var_224 
  loc_BFF5B1: FLdPr Me
  loc_BFF5B4: MemLdRfVar from_stack_1.global_80
  loc_BFF5B7: NewIfNullAd
  loc_BFF5BA: FStAd var_22C 
  loc_BFF5BE: LitStr "SELECT c.CucuPers, DetaProv"
  loc_BFF5C1: LitStr ", IF(FecoNope<Now() || FecoNope IS NULL,Group_concat(Distinct CodiItco),'') Items"
  loc_BFF5C4: ConcatStr
  loc_BFF5C5: FStStrNoPop var_DC
  loc_BFF5C8: LitStr ", Sum(IF(FecoNope<Now() || FecoNope IS NULL,CantItco*ImunItco,0)) Total"
  loc_BFF5CB: ConcatStr
  loc_BFF5CC: FStStrNoPop var_E4
  loc_BFF5CF: LitStr ", c.IdCoti"
  loc_BFF5D2: ConcatStr
  loc_BFF5D3: FStStrNoPop var_E8
  loc_BFF5D6: LitStr " FROM cotizacion c"
  loc_BFF5D9: ConcatStr
  loc_BFF5DA: FStStrNoPop var_1B8
  loc_BFF5DD: LitStr " INNER JOIN notapedido np ON np.PeriInfo = c.PeriInfo AND np.CodiNope = c.CodiNope"
  loc_BFF5E0: ConcatStr
  loc_BFF5E1: FStStrNoPop var_1BC
  loc_BFF5E4: LitStr " INNER JOIN itemcotizacion itc ON itc.IdCoti = c.IdCoti"
  loc_BFF5E7: ConcatStr
  loc_BFF5E8: FStStrNoPop var_1C0
  loc_BFF5EB: LitStr " INNER JOIN proveedor p ON p.CucuPers = c.CucuPers"
  loc_BFF5EE: ConcatStr
  loc_BFF5EF: FStStrNoPop var_1C4
  loc_BFF5F2: LitStr " WHERE c.PeriInfo = "
  loc_BFF5F5: ConcatStr
  loc_BFF5F6: FStStrNoPop var_1CC
  loc_BFF5F9: FLdRfVar var_1C8
  loc_BFF5FC: FLdPr Me
  loc_BFF5FF: VCallAd Control_ID_cboPeriodo
  loc_BFF602: FStAdFunc var_C4
  loc_BFF605: FLdPr var_C4
  loc_BFF608:  = Me.Text
  loc_BFF60D: ILdRf var_1C8
  loc_BFF610: ConcatStr
  loc_BFF611: FStStrNoPop var_1D0
  loc_BFF614: LitStr " AND c.CodiNope = "
  loc_BFF617: ConcatStr
  loc_BFF618: FStStrNoPop var_1D4
  loc_BFF61B: FLdPr Me
  loc_BFF61E: MemLdI2 global_92
  loc_BFF621: CI4UI1
  loc_BFF622: FLdPr Me
  loc_BFF625: MemLdStr global_88
  loc_BFF628: Ary1LdPr
  loc_BFF629: MemLdStr global_0
  loc_BFF62C: ConcatStr
  loc_BFF62D: FStStrNoPop var_1D8
  loc_BFF630: LitStr " AND c.BajaUsua = ''"
  loc_BFF633: ConcatStr
  loc_BFF634: FStStrNoPop var_1DC
  loc_BFF637: LitStr " GROUP BY CucuPers, c.IdCoti"
  loc_BFF63A: ConcatStr
  loc_BFF63B: FStStrNoPop var_1E0
  loc_BFF63E: LitStr " ORDER BY CucuPers, c.IdCoti;"
  loc_BFF641: ConcatStr
  loc_BFF642: FStStrNoPop var_1E4
  loc_BFF645: FLdPr var_22C
  loc_BFF648: Call clsbase.RedefineRS(from_stack_1v)
  loc_BFF64D: FFreeStr var_DC = "": var_E4 = "": var_E8 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1CC = "": var_1C8 = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = ""
  loc_BFF66E: FFree1Ad var_C4
  loc_BFF671: FLdRfVar var_1B4
  loc_BFF674: FLdPr var_22C
  loc_BFF677: from_stack_1 = clsbase.RecordCount
  loc_BFF67C: ILdRf var_1B4
  loc_BFF67F: LitI4 0
  loc_BFF684: GtI4
  loc_BFF685: BranchF loc_BFF96A
  loc_BFF688: FLdRfVar var_1B4
  loc_BFF68B: FLdPr var_22C
  loc_BFF68E: from_stack_1 = clsbase.RecordCount
  loc_BFF693: LitI4 0
  loc_BFF698: ILdRf var_1B4
  loc_BFF69B: FLdPr Me
  loc_BFF69E: MemLdI2 global_92
  loc_BFF6A1: CI4UI1
  loc_BFF6A2: FLdPr Me
  loc_BFF6A5: MemLdStr global_88
  loc_BFF6A8: Ary1LdPr
  loc_BFF6A9: MemLdRfVar from_stack_1.global_104
  loc_BFF6AC: Redim
  loc_BFF6B6: FLdPr var_22C
  loc_BFF6B9: Call clsbase.MoveFirst()
  loc_BFF6BE: LitI2_Byte 1
  loc_BFF6C0: FLdPr Me
  loc_BFF6C3: MemLdRfVar from_stack_1.global_94
  loc_BFF6C6: FLdPr Me
  loc_BFF6C9: MemLdI2 global_92
  loc_BFF6CC: CI4UI1
  loc_BFF6CD: FLdPr Me
  loc_BFF6D0: MemLdStr global_88
  loc_BFF6D3: Ary1LdPr
  loc_BFF6D4: MemLdStr global_104
  loc_BFF6D7: LitI2_Byte 1
  loc_BFF6D9: FnUBound
  loc_BFF6DB: CI2I4
  loc_BFF6DC: ForI2 var_230
  loc_BFF6E2: FLdRfVar var_1B0
  loc_BFF6E5: LitVarStr var_B0, "CucuPers"
  loc_BFF6EA: PopAdLdVar
  loc_BFF6EB: FLdRfVar var_E0
  loc_BFF6EE: FLdRfVar var_C4
  loc_BFF6F1: FLdPr var_22C
  loc_BFF6F4: from_stack_1v = clsbase.RsFrmGet()
  loc_BFF6F9: FLdPr var_C4
  loc_BFF6FC:  = Me.Fields
  loc_BFF701: FLdPr var_E0
  loc_BFF704: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF709: LitI2_Byte 0
  loc_BFF70B: LitVar_Missing var_F8
  loc_BFF70E: LitI2_Byte 0
  loc_BFF710: FLdZeroAd var_1B0
  loc_BFF713: CVarAd
  loc_BFF717: PopAdLdVar
  loc_BFF718: FLdPr Me
  loc_BFF71B: MemLdI2 global_94
  loc_BFF71E: CI4UI1
  loc_BFF71F: FLdPr Me
  loc_BFF722: MemLdI2 global_92
  loc_BFF725: CI4UI1
  loc_BFF726: FLdPr Me
  loc_BFF729: MemLdStr global_88
  loc_BFF72C: AryLock
  loc_BFF72F: Ary1LdPr
  loc_BFF730: MemLdStr global_104
  loc_BFF733: AryLock
  loc_BFF736: Ary1LdPr
  loc_BFF737: MemLdRfVar from_stack_1.global_0
  loc_BFF73A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF73F: AryUnlock
  loc_BFF742: AryUnlock
  loc_BFF745: FFreeAd var_C4 = ""
  loc_BFF74C: FFreeVar var_D8 = ""
  loc_BFF753: FLdRfVar var_1B0
  loc_BFF756: LitVarStr var_B0, "DetaProv"
  loc_BFF75B: PopAdLdVar
  loc_BFF75C: FLdRfVar var_E0
  loc_BFF75F: FLdRfVar var_C4
  loc_BFF762: FLdPr var_22C
  loc_BFF765: from_stack_1v = clsbase.RsFrmGet()
  loc_BFF76A: FLdPr var_C4
  loc_BFF76D:  = Me.Fields
  loc_BFF772: FLdPr var_E0
  loc_BFF775: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF77A: LitI2_Byte 0
  loc_BFF77C: LitVar_Missing var_F8
  loc_BFF77F: LitI2_Byte 0
  loc_BFF781: FLdZeroAd var_1B0
  loc_BFF784: CVarAd
  loc_BFF788: PopAdLdVar
  loc_BFF789: FLdPr Me
  loc_BFF78C: MemLdI2 global_94
  loc_BFF78F: CI4UI1
  loc_BFF790: FLdPr Me
  loc_BFF793: MemLdI2 global_92
  loc_BFF796: CI4UI1
  loc_BFF797: FLdPr Me
  loc_BFF79A: MemLdStr global_88
  loc_BFF79D: AryLock
  loc_BFF7A0: Ary1LdPr
  loc_BFF7A1: MemLdStr global_104
  loc_BFF7A4: AryLock
  loc_BFF7A7: Ary1LdPr
  loc_BFF7A8: MemLdRfVar from_stack_1.global_4
  loc_BFF7AB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF7B0: AryUnlock
  loc_BFF7B3: AryUnlock
  loc_BFF7B6: FFreeAd var_C4 = ""
  loc_BFF7BD: FFreeVar var_D8 = ""
  loc_BFF7C4: FLdRfVar var_1B0
  loc_BFF7C7: LitVarStr var_B0, "Items"
  loc_BFF7CC: PopAdLdVar
  loc_BFF7CD: FLdRfVar var_E0
  loc_BFF7D0: FLdRfVar var_C4
  loc_BFF7D3: FLdPr var_22C
  loc_BFF7D6: from_stack_1v = clsbase.RsFrmGet()
  loc_BFF7DB: FLdPr var_C4
  loc_BFF7DE:  = Me.Fields
  loc_BFF7E3: FLdPr var_E0
  loc_BFF7E6: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF7EB: LitI2_Byte 0
  loc_BFF7ED: LitVar_Missing var_F8
  loc_BFF7F0: LitI2_Byte 0
  loc_BFF7F2: FLdZeroAd var_1B0
  loc_BFF7F5: CVarAd
  loc_BFF7F9: PopAdLdVar
  loc_BFF7FA: FLdPr Me
  loc_BFF7FD: MemLdI2 global_94
  loc_BFF800: CI4UI1
  loc_BFF801: FLdPr Me
  loc_BFF804: MemLdI2 global_92
  loc_BFF807: CI4UI1
  loc_BFF808: FLdPr Me
  loc_BFF80B: MemLdStr global_88
  loc_BFF80E: AryLock
  loc_BFF811: Ary1LdPr
  loc_BFF812: MemLdStr global_104
  loc_BFF815: AryLock
  loc_BFF818: Ary1LdPr
  loc_BFF819: MemLdRfVar from_stack_1.global_8
  loc_BFF81C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF821: AryUnlock
  loc_BFF824: AryUnlock
  loc_BFF827: FFreeAd var_C4 = ""
  loc_BFF82E: FFreeVar var_D8 = ""
  loc_BFF835: FLdRfVar var_1B0
  loc_BFF838: LitVarStr var_B0, "Total"
  loc_BFF83D: PopAdLdVar
  loc_BFF83E: FLdRfVar var_E0
  loc_BFF841: FLdRfVar var_C4
  loc_BFF844: FLdPr var_22C
  loc_BFF847: from_stack_1v = clsbase.RsFrmGet()
  loc_BFF84C: FLdPr var_C4
  loc_BFF84F:  = Me.Fields
  loc_BFF854: FLdPr var_E0
  loc_BFF857: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF85C: LitI4 1
  loc_BFF861: LitI4 1
  loc_BFF866: LitVarStr var_C0, "currency"
  loc_BFF86B: FStVarCopyObj var_F8
  loc_BFF86E: FLdRfVar var_F8
  loc_BFF871: FLdZeroAd var_1B0
  loc_BFF874: CVarAd
  loc_BFF878: ImpAdCallI2 Format$(, )
  loc_BFF87D: FStStr var_DC
  loc_BFF880: LitI2_Byte 0
  loc_BFF882: LitVar_Missing var_118
  loc_BFF885: LitI2_Byte 0
  loc_BFF887: FLdZeroAd var_DC
  loc_BFF88A: CVarStr var_108
  loc_BFF88D: PopAdLdVar
  loc_BFF88E: FLdPr Me
  loc_BFF891: MemLdI2 global_94
  loc_BFF894: CI4UI1
  loc_BFF895: FLdPr Me
  loc_BFF898: MemLdI2 global_92
  loc_BFF89B: CI4UI1
  loc_BFF89C: FLdPr Me
  loc_BFF89F: MemLdStr global_88
  loc_BFF8A2: AryLock
  loc_BFF8A5: Ary1LdPr
  loc_BFF8A6: MemLdStr global_104
  loc_BFF8A9: AryLock
  loc_BFF8AC: Ary1LdPr
  loc_BFF8AD: MemLdRfVar from_stack_1.global_12
  loc_BFF8B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF8B5: AryUnlock
  loc_BFF8B8: AryUnlock
  loc_BFF8BB: FFree1Str var_DC
  loc_BFF8BE: FFreeAd var_C4 = ""
  loc_BFF8C5: FFreeVar var_D8 = "": var_F8 = "": var_108 = ""
  loc_BFF8D0: FLdRfVar var_1B0
  loc_BFF8D3: LitVarStr var_B0, "IdCoti"
  loc_BFF8D8: PopAdLdVar
  loc_BFF8D9: FLdRfVar var_E0
  loc_BFF8DC: FLdRfVar var_C4
  loc_BFF8DF: FLdPr var_22C
  loc_BFF8E2: from_stack_1v = clsbase.RsFrmGet()
  loc_BFF8E7: FLdPr var_C4
  loc_BFF8EA:  = Me.Fields
  loc_BFF8EF: FLdPr var_E0
  loc_BFF8F2: from_stack_2 = Me.Item(from_stack_1)
  loc_BFF8F7: LitI2_Byte 0
  loc_BFF8F9: LitVar_Missing var_F8
  loc_BFF8FC: LitI2_Byte 0
  loc_BFF8FE: FLdZeroAd var_1B0
  loc_BFF901: CVarAd
  loc_BFF905: PopAdLdVar
  loc_BFF906: FLdPr Me
  loc_BFF909: MemLdI2 global_94
  loc_BFF90C: CI4UI1
  loc_BFF90D: FLdPr Me
  loc_BFF910: MemLdI2 global_92
  loc_BFF913: CI4UI1
  loc_BFF914: FLdPr Me
  loc_BFF917: MemLdStr global_88
  loc_BFF91A: AryLock
  loc_BFF91D: Ary1LdPr
  loc_BFF91E: MemLdStr global_104
  loc_BFF921: AryLock
  loc_BFF924: Ary1LdPr
  loc_BFF925: MemLdRfVar from_stack_1.global_16
  loc_BFF928: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFF92D: AryUnlock
  loc_BFF930: AryUnlock
  loc_BFF933: FFreeAd var_C4 = ""
  loc_BFF93A: FFreeVar var_D8 = ""
  loc_BFF941: FLdPr var_22C
  loc_BFF944: Call clsbase.MoveSiguiente()
  loc_BFF949: FLdPr Me
  loc_BFF94C: MemLdRfVar from_stack_1.global_94
  loc_BFF94F: NextI2 var_230, loc_BFF6E2
  loc_BFF954: LitI2_Byte &HFF
  loc_BFF956: FLdPr Me
  loc_BFF959: MemLdI2 global_92
  loc_BFF95C: CI4UI1
  loc_BFF95D: FLdPr Me
  loc_BFF960: MemLdStr global_88
  loc_BFF963: Ary1LdPr
  loc_BFF964: MemStI2 global_100
  loc_BFF967: Branch loc_BFF97D
  loc_BFF96A: LitI2_Byte 0
  loc_BFF96C: FLdPr Me
  loc_BFF96F: MemLdI2 global_92
  loc_BFF972: CI4UI1
  loc_BFF973: FLdPr Me
  loc_BFF976: MemLdStr global_88
  loc_BFF979: Ary1LdPr
  loc_BFF97A: MemStI2 global_100
  loc_BFF97D: LitNothing
  loc_BFF97F: FStAd var_22C 
  loc_BFF983: FLdPr Me
  loc_BFF986: MemLdRfVar from_stack_1.global_80
  loc_BFF989: NewIfNullAd
  loc_BFF98C: FStAd var_238 
  loc_BFF990: LitStr "SELECT oc.CodiOrco, oc.CucuPers, DetaProv, Group_concat(Distinct CodiItco) Items, Sum(CantItco*ImunItco) Total"
  loc_BFF993: LitStr " FROM ordencompra oc"
  loc_BFF996: ConcatStr
  loc_BFF997: FStStrNoPop var_DC
  loc_BFF99A: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco"
  loc_BFF99D: ConcatStr
  loc_BFF99E: FStStrNoPop var_E4
  loc_BFF9A1: LitStr " INNER JOIN notapedido np ON np.PeriInfo = oc.PeriInfo AND np.CodiNope = oc.CodiNope"
  loc_BFF9A4: ConcatStr
  loc_BFF9A5: FStStrNoPop var_E8
  loc_BFF9A8: LitStr " INNER JOIN proveedor p ON p.CucuPers = oc.CucuPers"
  loc_BFF9AB: ConcatStr
  loc_BFF9AC: FStStrNoPop var_1B8
  loc_BFF9AF: LitStr " WHERE oc.PeriInfo = "
  loc_BFF9B2: ConcatStr
  loc_BFF9B3: FStStrNoPop var_1C0
  loc_BFF9B6: FLdRfVar var_1BC
  loc_BFF9B9: FLdPr Me
  loc_BFF9BC: VCallAd Control_ID_cboPeriodo
  loc_BFF9BF: FStAdFunc var_C4
  loc_BFF9C2: FLdPr var_C4
  loc_BFF9C5:  = Me.Text
  loc_BFF9CA: ILdRf var_1BC
  loc_BFF9CD: ConcatStr
  loc_BFF9CE: FStStrNoPop var_1C4
  loc_BFF9D1: LitStr " AND oc.CodiNope = "
  loc_BFF9D4: ConcatStr
  loc_BFF9D5: FStStrNoPop var_1C8
  loc_BFF9D8: FLdPr Me
  loc_BFF9DB: MemLdI2 global_92
  loc_BFF9DE: CI4UI1
  loc_BFF9DF: FLdPr Me
  loc_BFF9E2: MemLdStr global_88
  loc_BFF9E5: Ary1LdPr
  loc_BFF9E6: MemLdStr global_0
  loc_BFF9E9: ConcatStr
  loc_BFF9EA: FStStrNoPop var_1CC
  loc_BFF9ED: LitStr " AND oc.FeanOrco IS NULL"
  loc_BFF9F0: ConcatStr
  loc_BFF9F1: FStStrNoPop var_1D0
  loc_BFF9F4: LitStr " GROUP BY oc.CucuPers, oc.CodiOrco"
  loc_BFF9F7: ConcatStr
  loc_BFF9F8: FStStrNoPop var_1D4
  loc_BFF9FB: LitStr " ORDER BY oc.CucuPers, oc.IdCoti;"
  loc_BFF9FE: ConcatStr
  loc_BFF9FF: FStStrNoPop var_1D8
  loc_BFFA02: FLdPr var_238
  loc_BFFA05: Call clsbase.RedefineRS(from_stack_1v)
  loc_BFFA0A: FFreeStr var_DC = "": var_E4 = "": var_E8 = "": var_1B8 = "": var_1C0 = "": var_1BC = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_BFFA25: FFree1Ad var_C4
  loc_BFFA28: FLdRfVar var_1B4
  loc_BFFA2B: FLdPr var_238
  loc_BFFA2E: from_stack_1 = clsbase.RecordCount
  loc_BFFA33: ILdRf var_1B4
  loc_BFFA36: LitI4 0
  loc_BFFA3B: GtI4
  loc_BFFA3C: BranchF loc_BFFD21
  loc_BFFA3F: FLdRfVar var_1B4
  loc_BFFA42: FLdPr var_238
  loc_BFFA45: from_stack_1 = clsbase.RecordCount
  loc_BFFA4A: LitI4 0
  loc_BFFA4F: ILdRf var_1B4
  loc_BFFA52: FLdPr Me
  loc_BFFA55: MemLdI2 global_92
  loc_BFFA58: CI4UI1
  loc_BFFA59: FLdPr Me
  loc_BFFA5C: MemLdStr global_88
  loc_BFFA5F: Ary1LdPr
  loc_BFFA60: MemLdRfVar from_stack_1.global_112
  loc_BFFA63: Redim
  loc_BFFA6D: FLdPr var_238
  loc_BFFA70: Call clsbase.MoveFirst()
  loc_BFFA75: LitI2_Byte 1
  loc_BFFA77: FLdPr Me
  loc_BFFA7A: MemLdRfVar from_stack_1.global_94
  loc_BFFA7D: FLdPr Me
  loc_BFFA80: MemLdI2 global_92
  loc_BFFA83: CI4UI1
  loc_BFFA84: FLdPr Me
  loc_BFFA87: MemLdStr global_88
  loc_BFFA8A: Ary1LdPr
  loc_BFFA8B: MemLdStr global_112
  loc_BFFA8E: LitI2_Byte 1
  loc_BFFA90: FnUBound
  loc_BFFA92: CI2I4
  loc_BFFA93: ForI2 var_23C
  loc_BFFA99: FLdRfVar var_1B0
  loc_BFFA9C: LitVarStr var_B0, "CucuPers"
  loc_BFFAA1: PopAdLdVar
  loc_BFFAA2: FLdRfVar var_E0
  loc_BFFAA5: FLdRfVar var_C4
  loc_BFFAA8: FLdPr var_238
  loc_BFFAAB: from_stack_1v = clsbase.RsFrmGet()
  loc_BFFAB0: FLdPr var_C4
  loc_BFFAB3:  = Me.Fields
  loc_BFFAB8: FLdPr var_E0
  loc_BFFABB: from_stack_2 = Me.Item(from_stack_1)
  loc_BFFAC0: LitI2_Byte 0
  loc_BFFAC2: LitVar_Missing var_F8
  loc_BFFAC5: LitI2_Byte 0
  loc_BFFAC7: FLdZeroAd var_1B0
  loc_BFFACA: CVarAd
  loc_BFFACE: PopAdLdVar
  loc_BFFACF: FLdPr Me
  loc_BFFAD2: MemLdI2 global_94
  loc_BFFAD5: CI4UI1
  loc_BFFAD6: FLdPr Me
  loc_BFFAD9: MemLdI2 global_92
  loc_BFFADC: CI4UI1
  loc_BFFADD: FLdPr Me
  loc_BFFAE0: MemLdStr global_88
  loc_BFFAE3: AryLock
  loc_BFFAE6: Ary1LdPr
  loc_BFFAE7: MemLdStr global_112
  loc_BFFAEA: AryLock
  loc_BFFAED: Ary1LdPr
  loc_BFFAEE: MemLdRfVar from_stack_1.global_0
  loc_BFFAF1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFFAF6: AryUnlock
  loc_BFFAF9: AryUnlock
  loc_BFFAFC: FFreeAd var_C4 = ""
  loc_BFFB03: FFreeVar var_D8 = ""
  loc_BFFB0A: FLdRfVar var_1B0
  loc_BFFB0D: LitVarStr var_B0, "DetaProv"
  loc_BFFB12: PopAdLdVar
  loc_BFFB13: FLdRfVar var_E0
  loc_BFFB16: FLdRfVar var_C4
  loc_BFFB19: FLdPr var_238
  loc_BFFB1C: from_stack_1v = clsbase.RsFrmGet()
  loc_BFFB21: FLdPr var_C4
  loc_BFFB24:  = Me.Fields
  loc_BFFB29: FLdPr var_E0
  loc_BFFB2C: from_stack_2 = Me.Item(from_stack_1)
  loc_BFFB31: LitI2_Byte 0
  loc_BFFB33: LitVar_Missing var_F8
  loc_BFFB36: LitI2_Byte 0
  loc_BFFB38: FLdZeroAd var_1B0
  loc_BFFB3B: CVarAd
  loc_BFFB3F: PopAdLdVar
  loc_BFFB40: FLdPr Me
  loc_BFFB43: MemLdI2 global_94
  loc_BFFB46: CI4UI1
  loc_BFFB47: FLdPr Me
  loc_BFFB4A: MemLdI2 global_92
  loc_BFFB4D: CI4UI1
  loc_BFFB4E: FLdPr Me
  loc_BFFB51: MemLdStr global_88
  loc_BFFB54: AryLock
  loc_BFFB57: Ary1LdPr
  loc_BFFB58: MemLdStr global_112
  loc_BFFB5B: AryLock
  loc_BFFB5E: Ary1LdPr
  loc_BFFB5F: MemLdRfVar from_stack_1.global_4
  loc_BFFB62: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFFB67: AryUnlock
  loc_BFFB6A: AryUnlock
  loc_BFFB6D: FFreeAd var_C4 = ""
  loc_BFFB74: FFreeVar var_D8 = ""
  loc_BFFB7B: FLdRfVar var_1B0
  loc_BFFB7E: LitVarStr var_B0, "Items"
  loc_BFFB83: PopAdLdVar
  loc_BFFB84: FLdRfVar var_E0
  loc_BFFB87: FLdRfVar var_C4
  loc_BFFB8A: FLdPr var_238
  loc_BFFB8D: from_stack_1v = clsbase.RsFrmGet()
  loc_BFFB92: FLdPr var_C4
  loc_BFFB95:  = Me.Fields
  loc_BFFB9A: FLdPr var_E0
  loc_BFFB9D: from_stack_2 = Me.Item(from_stack_1)
  loc_BFFBA2: LitI2_Byte 0
  loc_BFFBA4: LitVar_Missing var_F8
  loc_BFFBA7: LitI2_Byte 0
  loc_BFFBA9: FLdZeroAd var_1B0
  loc_BFFBAC: CVarAd
  loc_BFFBB0: PopAdLdVar
  loc_BFFBB1: FLdPr Me
  loc_BFFBB4: MemLdI2 global_94
  loc_BFFBB7: CI4UI1
  loc_BFFBB8: FLdPr Me
  loc_BFFBBB: MemLdI2 global_92
  loc_BFFBBE: CI4UI1
  loc_BFFBBF: FLdPr Me
  loc_BFFBC2: MemLdStr global_88
  loc_BFFBC5: AryLock
  loc_BFFBC8: Ary1LdPr
  loc_BFFBC9: MemLdStr global_112
  loc_BFFBCC: AryLock
  loc_BFFBCF: Ary1LdPr
  loc_BFFBD0: MemLdRfVar from_stack_1.global_8
  loc_BFFBD3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFFBD8: AryUnlock
  loc_BFFBDB: AryUnlock
  loc_BFFBDE: FFreeAd var_C4 = ""
  loc_BFFBE5: FFreeVar var_D8 = ""
  loc_BFFBEC: FLdRfVar var_1B0
  loc_BFFBEF: LitVarStr var_B0, "Total"
  loc_BFFBF4: PopAdLdVar
  loc_BFFBF5: FLdRfVar var_E0
  loc_BFFBF8: FLdRfVar var_C4
  loc_BFFBFB: FLdPr var_238
  loc_BFFBFE: from_stack_1v = clsbase.RsFrmGet()
  loc_BFFC03: FLdPr var_C4
  loc_BFFC06:  = Me.Fields
  loc_BFFC0B: FLdPr var_E0
  loc_BFFC0E: from_stack_2 = Me.Item(from_stack_1)
  loc_BFFC13: LitI4 1
  loc_BFFC18: LitI4 1
  loc_BFFC1D: LitVarStr var_C0, "currency"
  loc_BFFC22: FStVarCopyObj var_F8
  loc_BFFC25: FLdRfVar var_F8
  loc_BFFC28: FLdZeroAd var_1B0
  loc_BFFC2B: CVarAd
  loc_BFFC2F: ImpAdCallI2 Format$(, )
  loc_BFFC34: FStStr var_DC
  loc_BFFC37: LitI2_Byte 0
  loc_BFFC39: LitVar_Missing var_118
  loc_BFFC3C: LitI2_Byte 0
  loc_BFFC3E: FLdZeroAd var_DC
  loc_BFFC41: CVarStr var_108
  loc_BFFC44: PopAdLdVar
  loc_BFFC45: FLdPr Me
  loc_BFFC48: MemLdI2 global_94
  loc_BFFC4B: CI4UI1
  loc_BFFC4C: FLdPr Me
  loc_BFFC4F: MemLdI2 global_92
  loc_BFFC52: CI4UI1
  loc_BFFC53: FLdPr Me
  loc_BFFC56: MemLdStr global_88
  loc_BFFC59: AryLock
  loc_BFFC5C: Ary1LdPr
  loc_BFFC5D: MemLdStr global_112
  loc_BFFC60: AryLock
  loc_BFFC63: Ary1LdPr
  loc_BFFC64: MemLdRfVar from_stack_1.global_12
  loc_BFFC67: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFFC6C: AryUnlock
  loc_BFFC6F: AryUnlock
  loc_BFFC72: FFree1Str var_DC
  loc_BFFC75: FFreeAd var_C4 = ""
  loc_BFFC7C: FFreeVar var_D8 = "": var_F8 = "": var_108 = ""
  loc_BFFC87: FLdRfVar var_1B0
  loc_BFFC8A: LitVarStr var_B0, "CodiOrco"
  loc_BFFC8F: PopAdLdVar
  loc_BFFC90: FLdRfVar var_E0
  loc_BFFC93: FLdRfVar var_C4
  loc_BFFC96: FLdPr var_238
  loc_BFFC99: from_stack_1v = clsbase.RsFrmGet()
  loc_BFFC9E: FLdPr var_C4
  loc_BFFCA1:  = Me.Fields
  loc_BFFCA6: FLdPr var_E0
  loc_BFFCA9: from_stack_2 = Me.Item(from_stack_1)
  loc_BFFCAE: LitI2_Byte 0
  loc_BFFCB0: LitVar_Missing var_F8
  loc_BFFCB3: LitI2_Byte 0
  loc_BFFCB5: FLdZeroAd var_1B0
  loc_BFFCB8: CVarAd
  loc_BFFCBC: PopAdLdVar
  loc_BFFCBD: FLdPr Me
  loc_BFFCC0: MemLdI2 global_94
  loc_BFFCC3: CI4UI1
  loc_BFFCC4: FLdPr Me
  loc_BFFCC7: MemLdI2 global_92
  loc_BFFCCA: CI4UI1
  loc_BFFCCB: FLdPr Me
  loc_BFFCCE: MemLdStr global_88
  loc_BFFCD1: AryLock
  loc_BFFCD4: Ary1LdPr
  loc_BFFCD5: MemLdStr global_112
  loc_BFFCD8: AryLock
  loc_BFFCDB: Ary1LdPr
  loc_BFFCDC: MemLdRfVar from_stack_1.global_16
  loc_BFFCDF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFFCE4: AryUnlock
  loc_BFFCE7: AryUnlock
  loc_BFFCEA: FFreeAd var_C4 = ""
  loc_BFFCF1: FFreeVar var_D8 = ""
  loc_BFFCF8: FLdPr var_238
  loc_BFFCFB: Call clsbase.MoveSiguiente()
  loc_BFFD00: FLdPr Me
  loc_BFFD03: MemLdRfVar from_stack_1.global_94
  loc_BFFD06: NextI2 var_23C, loc_BFFA99
  loc_BFFD0B: LitI2_Byte &HFF
  loc_BFFD0D: FLdPr Me
  loc_BFFD10: MemLdI2 global_92
  loc_BFFD13: CI4UI1
  loc_BFFD14: FLdPr Me
  loc_BFFD17: MemLdStr global_88
  loc_BFFD1A: Ary1LdPr
  loc_BFFD1B: MemStI2 global_108
  loc_BFFD1E: Branch loc_BFFD34
  loc_BFFD21: LitI2_Byte 0
  loc_BFFD23: FLdPr Me
  loc_BFFD26: MemLdI2 global_92
  loc_BFFD29: CI4UI1
  loc_BFFD2A: FLdPr Me
  loc_BFFD2D: MemLdStr global_88
  loc_BFFD30: Ary1LdPr
  loc_BFFD31: MemStI2 global_108
  loc_BFFD34: LitNothing
  loc_BFFD36: FStAd var_238 
  loc_BFFD3A: LitStr "SELECT CodiItno, itemnota.CodiInsu, DetaInsu, DetaItno, CaraItno, CantItno, ImunItno, round((CantItno * ImunItno),3) as Total,"
  loc_BFFD3D: LitStr " itemnota.CodiPart, DetaPart, itemnota.CodiOrga, DetaOrga, itemnota.CodiUnga, DetaUnga, IdImpu, itemnota.CodiFifu, Detafifu"
  loc_BFFD40: ConcatStr
  loc_BFFD41: FStStrNoPop var_DC
  loc_BFFD44: LitStr " FROM itemnota"
  loc_BFFD47: ConcatStr
  loc_BFFD48: FStStrNoPop var_E4
  loc_BFFD4B: LitStr " LEFT JOIN infogov.insumo ON insumo.CodiInsu = itemnota.CodiInsu"
  loc_BFFD4E: ConcatStr
  loc_BFFD4F: FStStrNoPop var_E8
  loc_BFFD52: LitStr " LEFT JOIN partida ON partida.PeriInfo = itemnota.PeriInfo AND partida.CodiPart = itemnota.CodiPart"
  loc_BFFD55: ConcatStr
  loc_BFFD56: FStStrNoPop var_1B8
  loc_BFFD59: LitStr " LEFT JOIN infogov.organigrama ON organigrama.PeriInfo = itemnota.PeriInfo AND organigrama.CodiOrga = itemnota.CodiOrga"
  loc_BFFD5C: ConcatStr
  loc_BFFD5D: FStStrNoPop var_1BC
  loc_BFFD60: LitStr " INNER JOIN unidadgasto ON unidadgasto.CodiUnga = itemnota.CodiUnga"
  loc_BFFD63: ConcatStr
  loc_BFFD64: FStStrNoPop var_1C0
  loc_BFFD67: LitStr " LEFT JOIN finalidad ON finalidad.PeriInfo = itemnota.PeriInfo AND finalidad.CodiFifu = itemnota.CodiFifu"
  loc_BFFD6A: ConcatStr
  loc_BFFD6B: FStStrNoPop var_1C4
  loc_BFFD6E: LitStr " WHERE itemnota.PeriInfo = "
  loc_BFFD71: ConcatStr
  loc_BFFD72: FStStrNoPop var_1CC
  loc_BFFD75: FLdRfVar var_1C8
  loc_BFFD78: FLdPr Me
  loc_BFFD7B: VCallAd Control_ID_cboPeriodo
  loc_BFFD7E: FStAdFunc var_C4
  loc_BFFD81: FLdPr var_C4
  loc_BFFD84:  = Me.Text
  loc_BFFD89: ILdRf var_1C8
  loc_BFFD8C: ConcatStr
  loc_BFFD8D: FStStrNoPop var_1D0
  loc_BFFD90: LitStr " AND CodiNope = "
  loc_BFFD93: ConcatStr
  loc_BFFD94: FStStrNoPop var_1D4
  loc_BFFD97: FLdPr Me
  loc_BFFD9A: MemLdI2 global_92
  loc_BFFD9D: CI4UI1
  loc_BFFD9E: FLdPr Me
  loc_BFFDA1: MemLdStr global_88
  loc_BFFDA4: Ary1LdPr
  loc_BFFDA5: MemLdStr global_0
  loc_BFFDA8: ConcatStr
  loc_BFFDA9: FStStrNoPop var_1D8
  loc_BFFDAC: LitStr " ORDER BY CodiItno"
  loc_BFFDAF: ConcatStr
  loc_BFFDB0: FStStrNoPop var_1DC
  loc_BFFDB3: FLdPr Me
  loc_BFFDB6: MemLdRfVar from_stack_1.global_76
  loc_BFFDB9: NewIfNullPr clsbase
  loc_BFFDBC: Call clsbase.RedefineRS(from_stack_1v)
  loc_BFFDC1: FFreeStr var_DC = "": var_E4 = "": var_E8 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1CC = "": var_1C8 = "": var_1D0 = "": var_1D4 = "": var_1D8 = ""
  loc_BFFDDE: FFree1Ad var_C4
  loc_BFFDE1: FLdRfVar var_1B4
  loc_BFFDE4: FLdPr Me
  loc_BFFDE7: MemLdRfVar from_stack_1.global_76
  loc_BFFDEA: NewIfNullPr clsbase
  loc_BFFDED: from_stack_1 = clsbase.RecordCount
  loc_BFFDF2: LitI4 0
  loc_BFFDF7: ILdRf var_1B4
  loc_BFFDFA: FLdPr Me
  loc_BFFDFD: MemLdI2 global_92
  loc_BFFE00: CI4UI1
  loc_BFFE01: FLdPr Me
  loc_BFFE04: MemLdStr global_88
  loc_BFFE07: Ary1LdPr
  loc_BFFE08: MemLdRfVar from_stack_1.global_96
  loc_BFFE0B: Redim
  loc_BFFE15: FLdPr Me
  loc_BFFE18: MemLdRfVar from_stack_1.global_76
  loc_BFFE1B: NewIfNullPr clsbase
  loc_BFFE1E: Call clsbase.MoveFirst()
  loc_BFFE23: LitI2_Byte 1
  loc_BFFE25: FLdPr Me
  loc_BFFE28: MemLdRfVar from_stack_1.global_96
  loc_BFFE2B: FLdPr Me
  loc_BFFE2E: MemLdI2 global_92
  loc_BFFE31: CI4UI1
  loc_BFFE32: FLdPr Me
  loc_BFFE35: MemLdStr global_88
  loc_BFFE38: Ary1LdPr
  loc_BFFE39: MemLdStr global_96
  loc_BFFE3C: LitI2_Byte 1
  loc_BFFE3E: FnUBound
  loc_BFFE40: CI2I4
  loc_BFFE41: ForI2 var_240
  loc_BFFE47: FLdPr Me
  loc_BFFE4A: MemLdRfVar from_stack_1.global_76
  loc_BFFE4D: NewIfNullAd
  loc_BFFE50: FStAd var_244 
  loc_BFFE54: FLdRfVar var_1B0
  loc_BFFE57: LitVarStr var_B0, "CodiItno"
  loc_BFFE5C: PopAdLdVar
  loc_BFFE5D: FLdRfVar var_E0
  loc_BFFE60: FLdRfVar var_C4
  loc_BFFE63: FLdPr var_244
  loc_BFFE66: from_stack_1v = clsbase.RsFrmGet()
  loc_BFFE6B: FLdPr var_C4
  loc_BFFE6E:  = Me.Fields
  loc_BFFE73: FLdPr var_E0
  loc_BFFE76: from_stack_2 = Me.Item(from_stack_1)
  loc_BFFE7B: LitI2_Byte 0
  loc_BFFE7D: LitVar_Missing var_F8
  loc_BFFE80: LitI2_Byte 0
  loc_BFFE82: FLdZeroAd var_1B0
  loc_BFFE85: CVarAd
  loc_BFFE89: PopAdLdVar
  loc_BFFE8A: FLdPr Me
  loc_BFFE8D: MemLdI2 global_96
  loc_BFFE90: CI4UI1
  loc_BFFE91: FLdPr Me
  loc_BFFE94: MemLdI2 global_92
  loc_BFFE97: CI4UI1
  loc_BFFE98: FLdPr Me
  loc_BFFE9B: MemLdStr global_88
  loc_BFFE9E: AryLock
  loc_BFFEA1: Ary1LdPr
  loc_BFFEA2: MemLdStr global_96
  loc_BFFEA5: AryLock
  loc_BFFEA8: Ary1LdPr
  loc_BFFEA9: MemLdRfVar from_stack_1.global_0
  loc_BFFEAC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFFEB1: AryUnlock
  loc_BFFEB4: AryUnlock
  loc_BFFEB7: FFreeAd var_C4 = ""
  loc_BFFEBE: FFreeVar var_D8 = ""
  loc_BFFEC5: FLdRfVar var_1B0
  loc_BFFEC8: LitVarStr var_B0, "CodiInsu"
  loc_BFFECD: PopAdLdVar
  loc_BFFECE: FLdRfVar var_E0
  loc_BFFED1: FLdRfVar var_C4
  loc_BFFED4: FLdPr var_244
  loc_BFFED7: from_stack_1v = clsbase.RsFrmGet()
  loc_BFFEDC: FLdPr var_C4
  loc_BFFEDF:  = Me.Fields
  loc_BFFEE4: FLdPr var_E0
  loc_BFFEE7: from_stack_2 = Me.Item(from_stack_1)
  loc_BFFEEC: LitI2_Byte 0
  loc_BFFEEE: LitVar_Missing var_F8
  loc_BFFEF1: LitI2_Byte 0
  loc_BFFEF3: FLdZeroAd var_1B0
  loc_BFFEF6: CVarAd
  loc_BFFEFA: PopAdLdVar
  loc_BFFEFB: FLdPr Me
  loc_BFFEFE: MemLdI2 global_96
  loc_BFFF01: CI4UI1
  loc_BFFF02: FLdPr Me
  loc_BFFF05: MemLdI2 global_92
  loc_BFFF08: CI4UI1
  loc_BFFF09: FLdPr Me
  loc_BFFF0C: MemLdStr global_88
  loc_BFFF0F: AryLock
  loc_BFFF12: Ary1LdPr
  loc_BFFF13: MemLdStr global_96
  loc_BFFF16: AryLock
  loc_BFFF19: Ary1LdPr
  loc_BFFF1A: MemLdRfVar from_stack_1.global_4
  loc_BFFF1D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFFF22: AryUnlock
  loc_BFFF25: AryUnlock
  loc_BFFF28: FFreeAd var_C4 = ""
  loc_BFFF2F: FFreeVar var_D8 = ""
  loc_BFFF36: FLdRfVar var_1B0
  loc_BFFF39: LitVarStr var_B0, "DetaInsu"
  loc_BFFF3E: PopAdLdVar
  loc_BFFF3F: FLdRfVar var_E0
  loc_BFFF42: FLdRfVar var_C4
  loc_BFFF45: FLdPr var_244
  loc_BFFF48: from_stack_1v = clsbase.RsFrmGet()
  loc_BFFF4D: FLdPr var_C4
  loc_BFFF50:  = Me.Fields
  loc_BFFF55: FLdPr var_E0
  loc_BFFF58: from_stack_2 = Me.Item(from_stack_1)
  loc_BFFF5D: LitI2_Byte 0
  loc_BFFF5F: LitVar_Missing var_F8
  loc_BFFF62: LitI2_Byte 0
  loc_BFFF64: FLdZeroAd var_1B0
  loc_BFFF67: CVarAd
  loc_BFFF6B: PopAdLdVar
  loc_BFFF6C: FLdPr Me
  loc_BFFF6F: MemLdI2 global_96
  loc_BFFF72: CI4UI1
  loc_BFFF73: FLdPr Me
  loc_BFFF76: MemLdI2 global_92
  loc_BFFF79: CI4UI1
  loc_BFFF7A: FLdPr Me
  loc_BFFF7D: MemLdStr global_88
  loc_BFFF80: AryLock
  loc_BFFF83: Ary1LdPr
  loc_BFFF84: MemLdStr global_96
  loc_BFFF87: AryLock
  loc_BFFF8A: Ary1LdPr
  loc_BFFF8B: MemLdRfVar from_stack_1.global_8
  loc_BFFF8E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BFFF93: AryUnlock
  loc_BFFF96: AryUnlock
  loc_BFFF99: FFreeAd var_C4 = ""
  loc_BFFFA0: FFreeVar var_D8 = ""
  loc_BFFFA7: FLdRfVar var_1B0
  loc_BFFFAA: LitVarStr var_B0, "DetaItno"
  loc_BFFFAF: PopAdLdVar
  loc_BFFFB0: FLdRfVar var_E0
  loc_BFFFB3: FLdRfVar var_C4
  loc_BFFFB6: FLdPr var_244
  loc_BFFFB9: from_stack_1v = clsbase.RsFrmGet()
  loc_BFFFBE: FLdPr var_C4
  loc_BFFFC1:  = Me.Fields
  loc_BFFFC6: FLdPr var_E0
  loc_BFFFC9: from_stack_2 = Me.Item(from_stack_1)
  loc_BFFFCE: LitI2_Byte 0
  loc_BFFFD0: LitVar_Missing var_F8
  loc_BFFFD3: LitI2_Byte 0
  loc_BFFFD5: FLdZeroAd var_1B0
  loc_BFFFD8: CVarAd
  loc_BFFFDC: PopAdLdVar
  loc_BFFFDD: FLdPr Me
  loc_BFFFE0: MemLdI2 global_96
  loc_BFFFE3: CI4UI1
  loc_BFFFE4: FLdPr Me
  loc_BFFFE7: MemLdI2 global_92
  loc_BFFFEA: CI4UI1
  loc_BFFFEB: FLdPr Me
  loc_BFFFEE: MemLdStr global_88
  loc_BFFFF1: AryLock
  loc_BFFFF4: Ary1LdPr
  loc_BFFFF5: MemLdStr global_96
  loc_BFFFF8: AryLock
  loc_BFFFFB: Ary1LdPr
  loc_BFFFFC: MemLdRfVar from_stack_1.global_12
  loc_BFFFFF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00004: AryUnlock
  loc_C00007: AryUnlock
  loc_C0000A: FFreeAd var_C4 = ""
  loc_C00011: FFreeVar var_D8 = ""
  loc_C00018: FLdRfVar var_1B0
  loc_C0001B: LitVarStr var_B0, "CaraItno"
  loc_C00020: PopAdLdVar
  loc_C00021: FLdRfVar var_E0
  loc_C00024: FLdRfVar var_C4
  loc_C00027: FLdPr var_244
  loc_C0002A: from_stack_1v = clsbase.RsFrmGet()
  loc_C0002F: FLdPr var_C4
  loc_C00032:  = Me.Fields
  loc_C00037: FLdPr var_E0
  loc_C0003A: from_stack_2 = Me.Item(from_stack_1)
  loc_C0003F: LitI2_Byte 0
  loc_C00041: LitVar_Missing var_F8
  loc_C00044: LitI2_Byte 0
  loc_C00046: FLdZeroAd var_1B0
  loc_C00049: CVarAd
  loc_C0004D: PopAdLdVar
  loc_C0004E: FLdPr Me
  loc_C00051: MemLdI2 global_96
  loc_C00054: CI4UI1
  loc_C00055: FLdPr Me
  loc_C00058: MemLdI2 global_92
  loc_C0005B: CI4UI1
  loc_C0005C: FLdPr Me
  loc_C0005F: MemLdStr global_88
  loc_C00062: AryLock
  loc_C00065: Ary1LdPr
  loc_C00066: MemLdStr global_96
  loc_C00069: AryLock
  loc_C0006C: Ary1LdPr
  loc_C0006D: MemLdRfVar from_stack_1.global_16
  loc_C00070: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00075: AryUnlock
  loc_C00078: AryUnlock
  loc_C0007B: FFreeAd var_C4 = ""
  loc_C00082: FFreeVar var_D8 = ""
  loc_C00089: FLdRfVar var_1B0
  loc_C0008C: LitVarStr var_B0, "CantItno"
  loc_C00091: PopAdLdVar
  loc_C00092: FLdRfVar var_E0
  loc_C00095: FLdRfVar var_C4
  loc_C00098: FLdPr var_244
  loc_C0009B: from_stack_1v = clsbase.RsFrmGet()
  loc_C000A0: FLdPr var_C4
  loc_C000A3:  = Me.Fields
  loc_C000A8: FLdPr var_E0
  loc_C000AB: from_stack_2 = Me.Item(from_stack_1)
  loc_C000B0: LitI2_Byte 0
  loc_C000B2: LitVar_Missing var_F8
  loc_C000B5: LitI2_Byte 0
  loc_C000B7: FLdZeroAd var_1B0
  loc_C000BA: CVarAd
  loc_C000BE: PopAdLdVar
  loc_C000BF: FLdPr Me
  loc_C000C2: MemLdI2 global_96
  loc_C000C5: CI4UI1
  loc_C000C6: FLdPr Me
  loc_C000C9: MemLdI2 global_92
  loc_C000CC: CI4UI1
  loc_C000CD: FLdPr Me
  loc_C000D0: MemLdStr global_88
  loc_C000D3: AryLock
  loc_C000D6: Ary1LdPr
  loc_C000D7: MemLdStr global_96
  loc_C000DA: AryLock
  loc_C000DD: Ary1LdPr
  loc_C000DE: MemLdRfVar from_stack_1.global_20
  loc_C000E1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C000E6: AryUnlock
  loc_C000E9: AryUnlock
  loc_C000EC: FFreeAd var_C4 = ""
  loc_C000F3: FFreeVar var_D8 = ""
  loc_C000FA: FLdRfVar var_1B0
  loc_C000FD: LitVarStr var_B0, "ImunItno"
  loc_C00102: PopAdLdVar
  loc_C00103: FLdRfVar var_E0
  loc_C00106: FLdRfVar var_C4
  loc_C00109: FLdPr var_244
  loc_C0010C: from_stack_1v = clsbase.RsFrmGet()
  loc_C00111: FLdPr var_C4
  loc_C00114:  = Me.Fields
  loc_C00119: FLdPr var_E0
  loc_C0011C: from_stack_2 = Me.Item(from_stack_1)
  loc_C00121: LitI4 -1
  loc_C00126: LitI4 0
  loc_C0012B: LitI4 -1
  loc_C00130: LitI4 3
  loc_C00135: FLdZeroAd var_1B0
  loc_C00138: CVarAd
  loc_C0013C: ImpAdCallI2 FormatNumber(, , , , )
  loc_C00141: FStStr var_DC
  loc_C00144: LitI2_Byte 0
  loc_C00146: LitVar_Missing var_108
  loc_C00149: LitI2_Byte 0
  loc_C0014B: FLdZeroAd var_DC
  loc_C0014E: CVarStr var_F8
  loc_C00151: PopAdLdVar
  loc_C00152: FLdPr Me
  loc_C00155: MemLdI2 global_96
  loc_C00158: CI4UI1
  loc_C00159: FLdPr Me
  loc_C0015C: MemLdI2 global_92
  loc_C0015F: CI4UI1
  loc_C00160: FLdPr Me
  loc_C00163: MemLdStr global_88
  loc_C00166: AryLock
  loc_C00169: Ary1LdPr
  loc_C0016A: MemLdStr global_96
  loc_C0016D: AryLock
  loc_C00170: Ary1LdPr
  loc_C00171: MemLdRfVar from_stack_1.global_24
  loc_C00174: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00179: AryUnlock
  loc_C0017C: AryUnlock
  loc_C0017F: FFree1Str var_DC
  loc_C00182: FFreeAd var_C4 = ""
  loc_C00189: FFreeVar var_D8 = "": var_F8 = ""
  loc_C00192: FLdRfVar var_1B0
  loc_C00195: LitVarStr var_B0, "Total"
  loc_C0019A: PopAdLdVar
  loc_C0019B: FLdRfVar var_E0
  loc_C0019E: FLdRfVar var_C4
  loc_C001A1: FLdPr var_244
  loc_C001A4: from_stack_1v = clsbase.RsFrmGet()
  loc_C001A9: FLdPr var_C4
  loc_C001AC:  = Me.Fields
  loc_C001B1: FLdPr var_E0
  loc_C001B4: from_stack_2 = Me.Item(from_stack_1)
  loc_C001B9: LitI2_Byte 3
  loc_C001BB: CUI1I2
  loc_C001BD: FLdPr Me
  loc_C001C0: MemLdI2 global_92
  loc_C001C3: CI4UI1
  loc_C001C4: FLdPr Me
  loc_C001C7: MemLdStr global_88
  loc_C001CA: AryLock
  loc_C001CD: Ary1LdPr
  loc_C001CE: MemLdRfVar from_stack_1.global_116
  loc_C001D1: CVarRef
  loc_C001D6: LitI2_Byte &HFF
  loc_C001D8: FLdZeroAd var_1B0
  loc_C001DB: CVarAd
  loc_C001DF: PopAdLdVar
  loc_C001E0: FLdPr Me
  loc_C001E3: MemLdI2 global_96
  loc_C001E6: CI4UI1
  loc_C001E7: FLdPr Me
  loc_C001EA: MemLdI2 global_92
  loc_C001ED: CI4UI1
  loc_C001EE: FLdPr Me
  loc_C001F1: MemLdStr global_88
  loc_C001F4: AryLock
  loc_C001F7: Ary1LdPr
  loc_C001F8: MemLdStr global_96
  loc_C001FB: AryLock
  loc_C001FE: Ary1LdPr
  loc_C001FF: MemLdRfVar from_stack_1.global_28
  loc_C00202: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00207: AryUnlock
  loc_C0020A: AryUnlock
  loc_C0020D: AryUnlock
  loc_C00210: FFreeAd var_C4 = ""
  loc_C00217: FFree1Var var_D8 = ""
  loc_C0021A: FLdRfVar var_1B0
  loc_C0021D: LitVarStr var_B0, "CodiPart"
  loc_C00222: PopAdLdVar
  loc_C00223: FLdRfVar var_E0
  loc_C00226: FLdRfVar var_C4
  loc_C00229: FLdPr var_244
  loc_C0022C: from_stack_1v = clsbase.RsFrmGet()
  loc_C00231: FLdPr var_C4
  loc_C00234:  = Me.Fields
  loc_C00239: FLdPr var_E0
  loc_C0023C: from_stack_2 = Me.Item(from_stack_1)
  loc_C00241: LitI2_Byte 0
  loc_C00243: LitVar_Missing var_F8
  loc_C00246: LitI2_Byte 0
  loc_C00248: FLdZeroAd var_1B0
  loc_C0024B: CVarAd
  loc_C0024F: PopAdLdVar
  loc_C00250: FLdPr Me
  loc_C00253: MemLdI2 global_96
  loc_C00256: CI4UI1
  loc_C00257: FLdPr Me
  loc_C0025A: MemLdI2 global_92
  loc_C0025D: CI4UI1
  loc_C0025E: FLdPr Me
  loc_C00261: MemLdStr global_88
  loc_C00264: AryLock
  loc_C00267: Ary1LdPr
  loc_C00268: MemLdStr global_96
  loc_C0026B: AryLock
  loc_C0026E: Ary1LdPr
  loc_C0026F: MemLdRfVar from_stack_1.global_32
  loc_C00272: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00277: AryUnlock
  loc_C0027A: AryUnlock
  loc_C0027D: FFreeAd var_C4 = ""
  loc_C00284: FFreeVar var_D8 = ""
  loc_C0028B: FLdRfVar var_1B0
  loc_C0028E: LitVarStr var_B0, "DetaPart"
  loc_C00293: PopAdLdVar
  loc_C00294: FLdRfVar var_E0
  loc_C00297: FLdRfVar var_C4
  loc_C0029A: FLdPr var_244
  loc_C0029D: from_stack_1v = clsbase.RsFrmGet()
  loc_C002A2: FLdPr var_C4
  loc_C002A5:  = Me.Fields
  loc_C002AA: FLdPr var_E0
  loc_C002AD: from_stack_2 = Me.Item(from_stack_1)
  loc_C002B2: LitI2_Byte 0
  loc_C002B4: LitVar_Missing var_F8
  loc_C002B7: LitI2_Byte 0
  loc_C002B9: FLdZeroAd var_1B0
  loc_C002BC: CVarAd
  loc_C002C0: PopAdLdVar
  loc_C002C1: FLdPr Me
  loc_C002C4: MemLdI2 global_96
  loc_C002C7: CI4UI1
  loc_C002C8: FLdPr Me
  loc_C002CB: MemLdI2 global_92
  loc_C002CE: CI4UI1
  loc_C002CF: FLdPr Me
  loc_C002D2: MemLdStr global_88
  loc_C002D5: AryLock
  loc_C002D8: Ary1LdPr
  loc_C002D9: MemLdStr global_96
  loc_C002DC: AryLock
  loc_C002DF: Ary1LdPr
  loc_C002E0: MemLdRfVar from_stack_1.global_36
  loc_C002E3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C002E8: AryUnlock
  loc_C002EB: AryUnlock
  loc_C002EE: FFreeAd var_C4 = ""
  loc_C002F5: FFreeVar var_D8 = ""
  loc_C002FC: FLdRfVar var_1B0
  loc_C002FF: LitVarStr var_B0, "CodiOrga"
  loc_C00304: PopAdLdVar
  loc_C00305: FLdRfVar var_E0
  loc_C00308: FLdRfVar var_C4
  loc_C0030B: FLdPr var_244
  loc_C0030E: from_stack_1v = clsbase.RsFrmGet()
  loc_C00313: FLdPr var_C4
  loc_C00316:  = Me.Fields
  loc_C0031B: FLdPr var_E0
  loc_C0031E: from_stack_2 = Me.Item(from_stack_1)
  loc_C00323: LitI2_Byte 0
  loc_C00325: LitVar_Missing var_F8
  loc_C00328: LitI2_Byte 0
  loc_C0032A: FLdZeroAd var_1B0
  loc_C0032D: CVarAd
  loc_C00331: PopAdLdVar
  loc_C00332: FLdPr Me
  loc_C00335: MemLdI2 global_96
  loc_C00338: CI4UI1
  loc_C00339: FLdPr Me
  loc_C0033C: MemLdI2 global_92
  loc_C0033F: CI4UI1
  loc_C00340: FLdPr Me
  loc_C00343: MemLdStr global_88
  loc_C00346: AryLock
  loc_C00349: Ary1LdPr
  loc_C0034A: MemLdStr global_96
  loc_C0034D: AryLock
  loc_C00350: Ary1LdPr
  loc_C00351: MemLdRfVar from_stack_1.global_40
  loc_C00354: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00359: AryUnlock
  loc_C0035C: AryUnlock
  loc_C0035F: FFreeAd var_C4 = ""
  loc_C00366: FFreeVar var_D8 = ""
  loc_C0036D: FLdRfVar var_1B0
  loc_C00370: LitVarStr var_B0, "DetaOrga"
  loc_C00375: PopAdLdVar
  loc_C00376: FLdRfVar var_E0
  loc_C00379: FLdRfVar var_C4
  loc_C0037C: FLdPr var_244
  loc_C0037F: from_stack_1v = clsbase.RsFrmGet()
  loc_C00384: FLdPr var_C4
  loc_C00387:  = Me.Fields
  loc_C0038C: FLdPr var_E0
  loc_C0038F: from_stack_2 = Me.Item(from_stack_1)
  loc_C00394: LitI2_Byte 0
  loc_C00396: LitVar_Missing var_F8
  loc_C00399: LitI2_Byte 0
  loc_C0039B: FLdZeroAd var_1B0
  loc_C0039E: CVarAd
  loc_C003A2: PopAdLdVar
  loc_C003A3: FLdPr Me
  loc_C003A6: MemLdI2 global_96
  loc_C003A9: CI4UI1
  loc_C003AA: FLdPr Me
  loc_C003AD: MemLdI2 global_92
  loc_C003B0: CI4UI1
  loc_C003B1: FLdPr Me
  loc_C003B4: MemLdStr global_88
  loc_C003B7: AryLock
  loc_C003BA: Ary1LdPr
  loc_C003BB: MemLdStr global_96
  loc_C003BE: AryLock
  loc_C003C1: Ary1LdPr
  loc_C003C2: MemLdRfVar from_stack_1.global_44
  loc_C003C5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C003CA: AryUnlock
  loc_C003CD: AryUnlock
  loc_C003D0: FFreeAd var_C4 = ""
  loc_C003D7: FFreeVar var_D8 = ""
  loc_C003DE: FLdRfVar var_1B0
  loc_C003E1: LitVarStr var_B0, "CodiUnga"
  loc_C003E6: PopAdLdVar
  loc_C003E7: FLdRfVar var_E0
  loc_C003EA: FLdRfVar var_C4
  loc_C003ED: FLdPr var_244
  loc_C003F0: from_stack_1v = clsbase.RsFrmGet()
  loc_C003F5: FLdPr var_C4
  loc_C003F8:  = Me.Fields
  loc_C003FD: FLdPr var_E0
  loc_C00400: from_stack_2 = Me.Item(from_stack_1)
  loc_C00405: LitI2_Byte 0
  loc_C00407: LitVar_Missing var_F8
  loc_C0040A: LitI2_Byte 0
  loc_C0040C: FLdZeroAd var_1B0
  loc_C0040F: CVarAd
  loc_C00413: PopAdLdVar
  loc_C00414: FLdPr Me
  loc_C00417: MemLdI2 global_96
  loc_C0041A: CI4UI1
  loc_C0041B: FLdPr Me
  loc_C0041E: MemLdI2 global_92
  loc_C00421: CI4UI1
  loc_C00422: FLdPr Me
  loc_C00425: MemLdStr global_88
  loc_C00428: AryLock
  loc_C0042B: Ary1LdPr
  loc_C0042C: MemLdStr global_96
  loc_C0042F: AryLock
  loc_C00432: Ary1LdPr
  loc_C00433: MemLdRfVar from_stack_1.global_48
  loc_C00436: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0043B: AryUnlock
  loc_C0043E: AryUnlock
  loc_C00441: FFreeAd var_C4 = ""
  loc_C00448: FFreeVar var_D8 = ""
  loc_C0044F: FLdRfVar var_1B0
  loc_C00452: LitVarStr var_B0, "DetaUnga"
  loc_C00457: PopAdLdVar
  loc_C00458: FLdRfVar var_E0
  loc_C0045B: FLdRfVar var_C4
  loc_C0045E: FLdPr var_244
  loc_C00461: from_stack_1v = clsbase.RsFrmGet()
  loc_C00466: FLdPr var_C4
  loc_C00469:  = Me.Fields
  loc_C0046E: FLdPr var_E0
  loc_C00471: from_stack_2 = Me.Item(from_stack_1)
  loc_C00476: LitI2_Byte 0
  loc_C00478: LitVar_Missing var_F8
  loc_C0047B: LitI2_Byte 0
  loc_C0047D: FLdZeroAd var_1B0
  loc_C00480: CVarAd
  loc_C00484: PopAdLdVar
  loc_C00485: FLdPr Me
  loc_C00488: MemLdI2 global_96
  loc_C0048B: CI4UI1
  loc_C0048C: FLdPr Me
  loc_C0048F: MemLdI2 global_92
  loc_C00492: CI4UI1
  loc_C00493: FLdPr Me
  loc_C00496: MemLdStr global_88
  loc_C00499: AryLock
  loc_C0049C: Ary1LdPr
  loc_C0049D: MemLdStr global_96
  loc_C004A0: AryLock
  loc_C004A3: Ary1LdPr
  loc_C004A4: MemLdRfVar from_stack_1.htmFile
  loc_C004A7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C004AC: AryUnlock
  loc_C004AF: AryUnlock
  loc_C004B2: FFreeAd var_C4 = ""
  loc_C004B9: FFreeVar var_D8 = ""
  loc_C004C0: FLdRfVar var_1B0
  loc_C004C3: LitVarStr var_B0, "IdImpu"
  loc_C004C8: PopAdLdVar
  loc_C004C9: FLdRfVar var_E0
  loc_C004CC: FLdRfVar var_C4
  loc_C004CF: FLdPr var_244
  loc_C004D2: from_stack_1v = clsbase.RsFrmGet()
  loc_C004D7: FLdPr var_C4
  loc_C004DA:  = Me.Fields
  loc_C004DF: FLdPr var_E0
  loc_C004E2: from_stack_2 = Me.Item(from_stack_1)
  loc_C004E7: LitI2_Byte 0
  loc_C004E9: LitVar_Missing var_F8
  loc_C004EC: LitI2_Byte 0
  loc_C004EE: FLdZeroAd var_1B0
  loc_C004F1: CVarAd
  loc_C004F5: PopAdLdVar
  loc_C004F6: FLdPr Me
  loc_C004F9: MemLdI2 global_96
  loc_C004FC: CI4UI1
  loc_C004FD: FLdPr Me
  loc_C00500: MemLdI2 global_92
  loc_C00503: CI4UI1
  loc_C00504: FLdPr Me
  loc_C00507: MemLdStr global_88
  loc_C0050A: AryLock
  loc_C0050D: Ary1LdPr
  loc_C0050E: MemLdStr global_96
  loc_C00511: AryLock
  loc_C00514: Ary1LdPr
  loc_C00515: MemLdRfVar from_stack_1.global_56
  loc_C00518: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0051D: AryUnlock
  loc_C00520: AryUnlock
  loc_C00523: FFreeAd var_C4 = ""
  loc_C0052A: FFreeVar var_D8 = ""
  loc_C00531: FLdRfVar var_1B0
  loc_C00534: LitVarStr var_B0, "CodiFifu"
  loc_C00539: PopAdLdVar
  loc_C0053A: FLdRfVar var_E0
  loc_C0053D: FLdRfVar var_C4
  loc_C00540: FLdPr var_244
  loc_C00543: from_stack_1v = clsbase.RsFrmGet()
  loc_C00548: FLdPr var_C4
  loc_C0054B:  = Me.Fields
  loc_C00550: FLdPr var_E0
  loc_C00553: from_stack_2 = Me.Item(from_stack_1)
  loc_C00558: LitI2_Byte 0
  loc_C0055A: LitVar_Missing var_F8
  loc_C0055D: LitI2_Byte 0
  loc_C0055F: FLdZeroAd var_1B0
  loc_C00562: CVarAd
  loc_C00566: PopAdLdVar
  loc_C00567: FLdPr Me
  loc_C0056A: MemLdI2 global_96
  loc_C0056D: CI4UI1
  loc_C0056E: FLdPr Me
  loc_C00571: MemLdI2 global_92
  loc_C00574: CI4UI1
  loc_C00575: FLdPr Me
  loc_C00578: MemLdStr global_88
  loc_C0057B: AryLock
  loc_C0057E: Ary1LdPr
  loc_C0057F: MemLdStr global_96
  loc_C00582: AryLock
  loc_C00585: Ary1LdPr
  loc_C00586: MemLdRfVar from_stack_1.global_60
  loc_C00589: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0058E: AryUnlock
  loc_C00591: AryUnlock
  loc_C00594: FFreeAd var_C4 = ""
  loc_C0059B: FFreeVar var_D8 = ""
  loc_C005A2: FLdRfVar var_1B0
  loc_C005A5: LitVarStr var_B0, "DetaFifu"
  loc_C005AA: PopAdLdVar
  loc_C005AB: FLdRfVar var_E0
  loc_C005AE: FLdRfVar var_C4
  loc_C005B1: FLdPr var_244
  loc_C005B4: from_stack_1v = clsbase.RsFrmGet()
  loc_C005B9: FLdPr var_C4
  loc_C005BC:  = Me.Fields
  loc_C005C1: FLdPr var_E0
  loc_C005C4: from_stack_2 = Me.Item(from_stack_1)
  loc_C005C9: LitI2_Byte 0
  loc_C005CB: LitVar_Missing var_F8
  loc_C005CE: LitI2_Byte 0
  loc_C005D0: FLdZeroAd var_1B0
  loc_C005D3: CVarAd
  loc_C005D7: PopAdLdVar
  loc_C005D8: FLdPr Me
  loc_C005DB: MemLdI2 global_96
  loc_C005DE: CI4UI1
  loc_C005DF: FLdPr Me
  loc_C005E2: MemLdI2 global_92
  loc_C005E5: CI4UI1
  loc_C005E6: FLdPr Me
  loc_C005E9: MemLdStr global_88
  loc_C005EC: AryLock
  loc_C005EF: Ary1LdPr
  loc_C005F0: MemLdStr global_96
  loc_C005F3: AryLock
  loc_C005F6: Ary1LdPr
  loc_C005F7: MemLdRfVar from_stack_1.global_64
  loc_C005FA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C005FF: AryUnlock
  loc_C00602: AryUnlock
  loc_C00605: FFreeAd var_C4 = ""
  loc_C0060C: FFreeVar var_D8 = ""
  loc_C00613: LitNothing
  loc_C00615: FStAd var_244 
  loc_C00619: FLdPr Me
  loc_C0061C: MemLdRfVar from_stack_1.global_76
  loc_C0061F: NewIfNullPr clsbase
  loc_C00622: Call clsbase.MoveSiguiente()
  loc_C00627: FLdPr Me
  loc_C0062A: MemLdRfVar from_stack_1.global_96
  loc_C0062D: NextI2 var_240, loc_BFFE47
  loc_C00632: FLdPr Me
  loc_C00635: MemLdRfVar from_stack_1.global_72
  loc_C00638: NewIfNullPr clsnotapedido
  loc_C0063B: Call clsnotapedido.MoveSiguiente()
  loc_C00640: LitI2_Byte 0
  loc_C00642: FLdPr Me
  loc_C00645: MemLdI2 global_92
  loc_C00648: CI4UI1
  loc_C00649: FLdPr Me
  loc_C0064C: MemLdStr global_88
  loc_C0064F: AryLock
  loc_C00652: Ary1LdPr
  loc_C00653: MemLdRfVar from_stack_1.global_116
  loc_C00656: CVarRef
  loc_C0065B: LitI2_Byte &HFF
  loc_C0065D: LitVarI2 var_B0, 0
  loc_C00662: PopAdLdVar
  loc_C00663: FLdRfVar var_88
  loc_C00666: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0066B: AryUnlock
  loc_C0066E: FLdPr Me
  loc_C00671: MemLdRfVar from_stack_1.global_92
  loc_C00674: NextI2 var_220, loc_BFEC3E
  loc_C00679: LitI2_Byte &HFF
  loc_C0067B: FLdPr Me
  loc_C0067E: MemStI2 bGenerado
  loc_C00681: LitI4 0
  loc_C00686: CI2I4
  loc_C00687: FLdPr Me
  loc_C0068A: Me.MousePointer = from_stack_1
  loc_C0068F: LitVarStr var_B0, vbNullString
  loc_C00694: PopAdLdVar
  loc_C00695: FLdPr Me
  loc_C00698: VCallAd Control_ID_statusBar
  loc_C0069B: FStAdFunc var_C4
  loc_C0069E: FLdPr var_C4
  loc_C006A1: LateIdSt
  loc_C006A6: FFree1Ad var_C4
  loc_C006A9: ExitProcHresult
End Sub

Public Sub GeneraHTML() '9BE08C
  'Data Table: 4E2680
  loc_9BDFC0: FLdRfVar var_88
  loc_9BDFC3: LitI2_Byte 0
  loc_9BDFC5: LitI2_Byte &HFF
  loc_9BDFC7: ImpAdLdI4 MemVar_C3D83C
  loc_9BDFCA: FLdPr Me
  loc_9BDFCD: MemLdRfVar from_stack_1.global_84
  loc_9BDFD0: NewIfNullPr IFileSystem3
  loc_9BDFD3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9BDFD8: ILdRf var_88
  loc_9BDFDB: FLdPr Me
  loc_9BDFDE: MemStVarAd
  loc_9BDFE2: FFree1Ad var_88
  loc_9BDFE5: Call Proc_198_39_9C7D40()
  loc_9BDFEA: LitI2_Byte 1
  loc_9BDFEC: FLdPr Me
  loc_9BDFEF: MemLdRfVar from_stack_1.global_92
  loc_9BDFF2: FLdPr Me
  loc_9BDFF5: MemLdStr global_88
  loc_9BDFF8: LitI2_Byte 1
  loc_9BDFFA: FnUBound
  loc_9BDFFC: CI2I4
  loc_9BDFFD: ForI2 var_8C
  loc_9BE003: FLdRfVar var_8E
  loc_9BE006: FLdPr Me
  loc_9BE009: VCallAd Control_ID_ChkHojasSeparadas
  loc_9BE00C: FStAdFunc var_88
  loc_9BE00F: FLdPr var_88
  loc_9BE012:  = Me.Value
  loc_9BE017: FLdI2 var_8E
  loc_9BE01A: CI4UI1
  loc_9BE01B: LitI4 1
  loc_9BE020: EqI4
  loc_9BE021: FFree1Ad var_88
  loc_9BE024: BranchF loc_9BE04F
  loc_9BE027: FLdPr Me
  loc_9BE02A: MemLdI2 global_92
  loc_9BE02D: LitI2_Byte 1
  loc_9BE02F: NeI2
  loc_9BE030: BranchF loc_9BE047
  loc_9BE033: LitVarStr var_A0, "<div style=""page-break-before:always""></div>"
  loc_9BE038: PopAdLdVar
  loc_9BE039: FLdPr Me
  loc_9BE03C: MemLdRfVar from_stack_1.htmFile
  loc_9BE03F: LdPrVar
  loc_9BE041: LateMemCall
  loc_9BE047: Call Proc_198_40_A2985C()
  loc_9BE04C: Branch loc_9BE060
  loc_9BE04F: FLdPr Me
  loc_9BE052: MemLdI2 global_92
  loc_9BE055: LitI2_Byte 1
  loc_9BE057: EqI2
  loc_9BE058: BranchF loc_9BE060
  loc_9BE05B: Call Proc_198_40_A2985C()
  loc_9BE060: Call Proc_198_41_BC56BC()
  loc_9BE065: FLdPr Me
  loc_9BE068: MemLdRfVar from_stack_1.global_92
  loc_9BE06B: NextI2 var_8C, loc_9BE003
  loc_9BE070: Call Proc_198_42_973B70()
  loc_9BE075: FLdPr Me
  loc_9BE078: MemLdRfVar from_stack_1.htmFile
  loc_9BE07B: LdPrVar
  loc_9BE07D: LateMemCall
  loc_9BE083: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9BE088: ExitProcHresult
  loc_9BE089: LitStr vbNullString
End Sub

Public Sub GeneraXLS() '94A044
  'Data Table: 4E2680
  loc_94A02C: LitI2_Byte 0
  loc_94A02E: FLdPr Me
  loc_94A031: MemStI2 bLogos
  loc_94A034: Call GeneraHTML()
  loc_94A039: LitI2_Byte &HFF
  loc_94A03B: FLdPr Me
  loc_94A03E: MemStI2 bLogos
  loc_94A041: ExitProcHresult
End Sub

Private Function Proc_198_39_9C7D40() '9C7D40
  'Data Table: 4E2680
  loc_9C7C68: LitVarStr var_94, "<html>"
  loc_9C7C6D: PopAdLdVar
  loc_9C7C6E: FLdPr Me
  loc_9C7C71: MemLdRfVar from_stack_1.htmFile
  loc_9C7C74: LdPrVar
  loc_9C7C76: LateMemCall
  loc_9C7C7C: LitVarStr var_94, "<head>"
  loc_9C7C81: PopAdLdVar
  loc_9C7C82: FLdPr Me
  loc_9C7C85: MemLdRfVar from_stack_1.htmFile
  loc_9C7C88: LdPrVar
  loc_9C7C8A: LateMemCall
  loc_9C7C90: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9C7C95: PopAdLdVar
  loc_9C7C96: FLdPr Me
  loc_9C7C99: MemLdRfVar from_stack_1.htmFile
  loc_9C7C9C: LdPrVar
  loc_9C7C9E: LateMemCall
  loc_9C7CA4: LitStr "Municipalidad de Guaymallén"
  loc_9C7CA7: LitStr "Municipalidad de Guaymallén"
  loc_9C7CAA: EqStr
  loc_9C7CAC: BranchF loc_9C7CC6
  loc_9C7CAF: LitVarStr var_94, "<title>Formulario Oficial</title>"
  loc_9C7CB4: PopAdLdVar
  loc_9C7CB5: FLdPr Me
  loc_9C7CB8: MemLdRfVar from_stack_1.htmFile
  loc_9C7CBB: LdPrVar
  loc_9C7CBD: LateMemCall
  loc_9C7CC3: Branch loc_9C7CFB
  loc_9C7CC6: LitStr "<title>"
  loc_9C7CC9: FLdRfVar var_A8
  loc_9C7CCC: FLdPr Me
  loc_9C7CCF:  = Me.Caption
  loc_9C7CD4: ILdRf var_A8
  loc_9C7CD7: ConcatStr
  loc_9C7CD8: FStStrNoPop var_AC
  loc_9C7CDB: LitStr "</title>"
  loc_9C7CDE: ConcatStr
  loc_9C7CDF: CVarStr var_BC
  loc_9C7CE2: PopAdLdVar
  loc_9C7CE3: FLdPr Me
  loc_9C7CE6: MemLdRfVar from_stack_1.htmFile
  loc_9C7CE9: LdPrVar
  loc_9C7CEB: LateMemCall
  loc_9C7CF1: FFreeStr var_A8 = ""
  loc_9C7CF8: FFree1Var var_BC = ""
  loc_9C7CFB: LitStr vbNullString
  loc_9C7CFE: ILdRf Me
  loc_9C7D01: CastAd
  loc_9C7D04: FStAdFunc var_C0
  loc_9C7D07: FLdRfVar var_C0
  loc_9C7D0A: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9C7D0F: FFree1Ad var_C0
  loc_9C7D12: LitI4 0
  loc_9C7D17: FStStrCopy var_AC
  loc_9C7D1A: FLdRfVar var_AC
  loc_9C7D1D: LitI4 0
  loc_9C7D22: FStStrCopy var_A8
  loc_9C7D25: FLdRfVar var_A8
  loc_9C7D28: LitI2_Byte &HFF
  loc_9C7D2A: PopTmpLdAd2 var_C2
  loc_9C7D2D: FLdPr Me
  loc_9C7D30: MemLdRfVar from_stack_1.htmFile
  loc_9C7D33: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9C7D38: FFreeStr var_A8 = ""
  loc_9C7D3F: ExitProcHresult
End Function

Private Function Proc_198_40_A2985C() 'A2985C
  'Data Table: 4E2680
  loc_A2969C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A296A1: PopAdLdVar
  loc_A296A2: FLdPr Me
  loc_A296A5: MemLdRfVar from_stack_1.htmFile
  loc_A296A8: LdPrVar
  loc_A296AA: LateMemCall
  loc_A296B0: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A296B5: PopAdLdVar
  loc_A296B6: FLdPr Me
  loc_A296B9: MemLdRfVar from_stack_1.htmFile
  loc_A296BC: LdPrVar
  loc_A296BE: LateMemCall
  loc_A296C4: LitStr "Municipalidad de Guaymallén"
  loc_A296C7: LitStr "Municipalidad de Guaymallén"
  loc_A296CA: EqStr
  loc_A296CC: BranchF loc_A2971D
  loc_A296CF: FLdPr Me
  loc_A296D2: MemLdI2 bLogos
  loc_A296D5: BranchF loc_A2971A
  loc_A296D8: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><p>"
  loc_A296DD: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A296E2: FStVarCopyObj var_B4
  loc_A296E5: FLdRfVar var_B4
  loc_A296E8: FLdRfVar var_C4
  loc_A296EB: ImpAdCallFPR4  = Ucase()
  loc_A296F0: FLdRfVar var_C4
  loc_A296F3: ConcatVar var_D4
  loc_A296F7: LitVarStr var_E4, "</p><p>Formulario Oficial</p></th>"
  loc_A296FC: ConcatVar var_F4
  loc_A29700: PopAdLdVar
  loc_A29701: FLdPr Me
  loc_A29704: MemLdRfVar from_stack_1.htmFile
  loc_A29707: LdPrVar
  loc_A29709: LateMemCall
  loc_A2970F: FFreeVar var_B4 = "": var_C4 = "": var_D4 = ""
  loc_A2971A: Branch loc_A2978C
  loc_A2971D: FLdPr Me
  loc_A29720: MemLdI2 bLogos
  loc_A29723: BranchF loc_A2978C
  loc_A29726: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><p>"
  loc_A2972B: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A29730: FStVarCopyObj var_B4
  loc_A29733: FLdRfVar var_B4
  loc_A29736: FLdRfVar var_C4
  loc_A29739: ImpAdCallFPR4  = Ucase()
  loc_A2973E: FLdRfVar var_C4
  loc_A29741: ConcatVar var_D4
  loc_A29745: LitVarStr var_E4, "</p><p>"
  loc_A2974A: ConcatVar var_F4
  loc_A2974E: FLdRfVar var_108
  loc_A29751: FLdPr Me
  loc_A29754:  = Me.Caption
  loc_A29759: FLdZeroAd var_108
  loc_A2975C: CVarStr var_118
  loc_A2975F: ConcatVar var_128
  loc_A29763: LitVarStr var_104, "</p></th>"
  loc_A29768: ConcatVar var_138
  loc_A2976C: PopAdLdVar
  loc_A2976D: FLdPr Me
  loc_A29770: MemLdRfVar from_stack_1.htmFile
  loc_A29773: LdPrVar
  loc_A29775: LateMemCall
  loc_A2977B: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_F4 = "": var_118 = "": var_128 = ""
  loc_A2978C: LitVarStr var_94, "  </tr>"
  loc_A29791: PopAdLdVar
  loc_A29792: FLdPr Me
  loc_A29795: MemLdRfVar from_stack_1.htmFile
  loc_A29798: LdPrVar
  loc_A2979A: LateMemCall
  loc_A297A0: LitVarStr var_94, "  <tr>"
  loc_A297A5: PopAdLdVar
  loc_A297A6: FLdPr Me
  loc_A297A9: MemLdRfVar from_stack_1.htmFile
  loc_A297AC: LdPrVar
  loc_A297AE: LateMemCall
  loc_A297B4: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_A297B9: PopAdLdVar
  loc_A297BA: FLdPr Me
  loc_A297BD: MemLdRfVar from_stack_1.htmFile
  loc_A297C0: LdPrVar
  loc_A297C2: LateMemCall
  loc_A297C8: LitVarStr var_94, "  </tr>"
  loc_A297CD: PopAdLdVar
  loc_A297CE: FLdPr Me
  loc_A297D1: MemLdRfVar from_stack_1.htmFile
  loc_A297D4: LdPrVar
  loc_A297D6: LateMemCall
  loc_A297DC: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A297E1: PopAdLdVar
  loc_A297E2: FLdPr Me
  loc_A297E5: MemLdRfVar from_stack_1.htmFile
  loc_A297E8: LdPrVar
  loc_A297EA: LateMemCall
  loc_A297F0: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A297F3: FLdRfVar var_108
  loc_A297F6: FLdPr Me
  loc_A297F9: VCallAd Control_ID_cboPeriodo
  loc_A297FC: FStAdFunc var_14C
  loc_A297FF: FLdPr var_14C
  loc_A29802:  = Me.Text
  loc_A29807: ILdRf var_108
  loc_A2980A: ConcatStr
  loc_A2980B: FStStrNoPop var_150
  loc_A2980E: LitStr "</span></th>"
  loc_A29811: ConcatStr
  loc_A29812: CVarStr var_B4
  loc_A29815: PopAdLdVar
  loc_A29816: FLdPr Me
  loc_A29819: MemLdRfVar from_stack_1.htmFile
  loc_A2981C: LdPrVar
  loc_A2981E: LateMemCall
  loc_A29824: FFreeStr var_108 = ""
  loc_A2982B: FFree1Ad var_14C
  loc_A2982E: FFree1Var var_B4 = ""
  loc_A29831: LitVarStr var_94, "  </tr>"
  loc_A29836: PopAdLdVar
  loc_A29837: FLdPr Me
  loc_A2983A: MemLdRfVar from_stack_1.htmFile
  loc_A2983D: LdPrVar
  loc_A2983F: LateMemCall
  loc_A29845: LitVarStr var_94, "</table>"
  loc_A2984A: PopAdLdVar
  loc_A2984B: FLdPr Me
  loc_A2984E: MemLdRfVar from_stack_1.htmFile
  loc_A29851: LdPrVar
  loc_A29853: LateMemCall
  loc_A29859: ExitProcHresult
End Function

Private Function Proc_198_41_BC56BC() 'BC56BC
  'Data Table: 4E2680
  loc_BC4448: FLdPr Me
  loc_BC444B: MemLdI2 global_92
  loc_BC444E: CI4UI1
  loc_BC444F: FLdPr Me
  loc_BC4452: MemLdStr global_88
  loc_BC4455: Ary1LdPr
  loc_BC4456: MemLdStr global_24
  loc_BC4459: LitStr " - "
  loc_BC445C: ConcatStr
  loc_BC445D: FStStrNoPop var_8C
  loc_BC4460: FLdPr Me
  loc_BC4463: MemLdI2 global_92
  loc_BC4466: CI4UI1
  loc_BC4467: FLdPr Me
  loc_BC446A: MemLdStr global_88
  loc_BC446D: Ary1LdPr
  loc_BC446E: MemLdStr global_28
  loc_BC4471: ConcatStr
  loc_BC4472: FStStr var_88
  loc_BC4475: FFree1Str var_8C
  loc_BC4478: LitI4 1
  loc_BC447D: FLdPr Me
  loc_BC4480: MemLdI2 global_92
  loc_BC4483: CI4UI1
  loc_BC4484: FLdPr Me
  loc_BC4487: MemLdStr global_88
  loc_BC448A: AryLock
  loc_BC448D: Ary1LdPr
  loc_BC448E: MemLdRfVar from_stack_1.global_28
  loc_BC4491: CVarRef
  loc_BC4496: FLdRfVar var_B0
  loc_BC4499: ImpAdCallFPR4  = LCase()
  loc_BC449E: AryUnlock
  loc_BC44A1: FLdRfVar var_B0
  loc_BC44A4: LitVarStr var_C0, "licita"
  loc_BC44A9: LitI4 0
  loc_BC44AE: FnInStr4Var
  loc_BC44B2: LitVarI2 var_E0, 0
  loc_BC44B7: HardType
  loc_BC44B8: GtVar var_F0
  loc_BC44BC: FLdPr Me
  loc_BC44BF: MemLdI2 global_92
  loc_BC44C2: CI4UI1
  loc_BC44C3: FLdPr Me
  loc_BC44C6: MemLdStr global_88
  loc_BC44C9: Ary1LdPr
  loc_BC44CA: MemLdStr global_36
  loc_BC44CD: LitStr "0"
  loc_BC44D0: NeStr
  loc_BC44D2: CVarBoolI2 var_100
  loc_BC44D6: AndVar var_110
  loc_BC44DA: CBoolVarNull
  loc_BC44DC: FFreeVar var_B0 = "": var_D0 = ""
  loc_BC44E5: BranchF loc_BC453C
  loc_BC44E8: ILdRf var_88
  loc_BC44EB: LitStr "<br> Sellado: "
  loc_BC44EE: ConcatStr
  loc_BC44EF: FStStrNoPop var_114
  loc_BC44F2: LitI4 1
  loc_BC44F7: LitI4 1
  loc_BC44FC: LitVarStr var_C0, "currency"
  loc_BC4501: FStVarCopyObj var_B0
  loc_BC4504: FLdRfVar var_B0
  loc_BC4507: FLdPr Me
  loc_BC450A: MemLdI2 global_92
  loc_BC450D: CI4UI1
  loc_BC450E: FLdPr Me
  loc_BC4511: MemLdStr global_88
  loc_BC4514: AryLock
  loc_BC4517: Ary1LdPr
  loc_BC4518: MemLdRfVar from_stack_1.global_36
  loc_BC451B: CVarRef
  loc_BC4520: ImpAdCallI2 Format$(, )
  loc_BC4525: FStStr var_8C
  loc_BC4528: AryUnlock
  loc_BC452B: ILdRf var_8C
  loc_BC452E: ConcatStr
  loc_BC452F: FStStr var_88
  loc_BC4532: FFreeStr var_114 = ""
  loc_BC4539: FFree1Var var_B0 = ""
  loc_BC453C: LitI4 1
  loc_BC4541: FLdPr Me
  loc_BC4544: MemLdI2 global_92
  loc_BC4547: CI4UI1
  loc_BC4548: FLdPr Me
  loc_BC454B: MemLdStr global_88
  loc_BC454E: AryLock
  loc_BC4551: Ary1LdPr
  loc_BC4552: MemLdRfVar from_stack_1.global_28
  loc_BC4555: CVarRef
  loc_BC455A: FLdRfVar var_B0
  loc_BC455D: ImpAdCallFPR4  = LCase()
  loc_BC4562: AryUnlock
  loc_BC4565: FLdRfVar var_B0
  loc_BC4568: LitVarStr var_C0, "licita"
  loc_BC456D: LitI4 0
  loc_BC4572: FnInStr4Var
  loc_BC4576: LitVarI2 var_E0, 0
  loc_BC457B: HardType
  loc_BC457C: GtVar var_F0
  loc_BC4580: FLdPr Me
  loc_BC4583: MemLdI2 global_92
  loc_BC4586: CI4UI1
  loc_BC4587: FLdPr Me
  loc_BC458A: MemLdStr global_88
  loc_BC458D: Ary1LdPr
  loc_BC458E: MemLdStr global_32
  loc_BC4591: LitStr "0"
  loc_BC4594: NeStr
  loc_BC4596: CVarBoolI2 var_100
  loc_BC459A: AndVar var_110
  loc_BC459E: CBoolVarNull
  loc_BC45A0: FFreeVar var_B0 = "": var_D0 = ""
  loc_BC45A9: BranchF loc_BC4600
  loc_BC45AC: ILdRf var_88
  loc_BC45AF: LitStr "<br> Valor del Pliego: "
  loc_BC45B2: ConcatStr
  loc_BC45B3: FStStrNoPop var_114
  loc_BC45B6: LitI4 1
  loc_BC45BB: LitI4 1
  loc_BC45C0: LitVarStr var_C0, "currency"
  loc_BC45C5: FStVarCopyObj var_B0
  loc_BC45C8: FLdRfVar var_B0
  loc_BC45CB: FLdPr Me
  loc_BC45CE: MemLdI2 global_92
  loc_BC45D1: CI4UI1
  loc_BC45D2: FLdPr Me
  loc_BC45D5: MemLdStr global_88
  loc_BC45D8: AryLock
  loc_BC45DB: Ary1LdPr
  loc_BC45DC: MemLdRfVar from_stack_1.global_32
  loc_BC45DF: CVarRef
  loc_BC45E4: ImpAdCallI2 Format$(, )
  loc_BC45E9: FStStr var_8C
  loc_BC45EC: AryUnlock
  loc_BC45EF: ILdRf var_8C
  loc_BC45F2: ConcatStr
  loc_BC45F3: FStStr var_88
  loc_BC45F6: FFreeStr var_114 = ""
  loc_BC45FD: FFree1Var var_B0 = ""
  loc_BC4600: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC4605: PopAdLdVar
  loc_BC4606: FLdPr Me
  loc_BC4609: MemLdRfVar from_stack_1.htmFile
  loc_BC460C: LdPrVar
  loc_BC460E: LateMemCall
  loc_BC4614: LitVarStr var_9C, "  <tr align=""left"" valign=""top"" class=""Normal"" nowrap=""nowrap"">"
  loc_BC4619: PopAdLdVar
  loc_BC461A: FLdPr Me
  loc_BC461D: MemLdRfVar from_stack_1.htmFile
  loc_BC4620: LdPrVar
  loc_BC4622: LateMemCall
  loc_BC4628: LitVarStr var_9C, "    <th colspan=""11"" class=""LineaDato"" >"
  loc_BC462D: PopAdLdVar
  loc_BC462E: FLdPr Me
  loc_BC4631: MemLdRfVar from_stack_1.htmFile
  loc_BC4634: LdPrVar
  loc_BC4636: LateMemCall
  loc_BC463C: LitVarStr var_9C, "  <table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_BC4641: PopAdLdVar
  loc_BC4642: FLdPr Me
  loc_BC4645: MemLdRfVar from_stack_1.htmFile
  loc_BC4648: LdPrVar
  loc_BC464A: LateMemCall
  loc_BC4650: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BC4655: PopAdLdVar
  loc_BC4656: FLdPr Me
  loc_BC4659: MemLdRfVar from_stack_1.htmFile
  loc_BC465C: LdPrVar
  loc_BC465E: LateMemCall
  loc_BC4664: LitStr "        <td align=""center"" rowspan=""2"" class=""Encabezado"">Nota de Pedido N&ordm;<br>"
  loc_BC4667: FLdPr Me
  loc_BC466A: MemLdI2 global_92
  loc_BC466D: CI4UI1
  loc_BC466E: FLdPr Me
  loc_BC4671: MemLdStr global_88
  loc_BC4674: Ary1LdPr
  loc_BC4675: MemLdStr global_0
  loc_BC4678: ConcatStr
  loc_BC4679: CVarStr var_110
  loc_BC467C: LitVarStr var_C0, vbNullString
  loc_BC4681: FStVarCopyObj var_D0
  loc_BC4684: FLdRfVar var_D0
  loc_BC4687: LitStr "<br>("
  loc_BC468A: FLdPr Me
  loc_BC468D: MemLdI2 global_92
  loc_BC4690: CI4UI1
  loc_BC4691: FLdPr Me
  loc_BC4694: MemLdStr global_88
  loc_BC4697: Ary1LdPr
  loc_BC4698: MemLdStr global_12
  loc_BC469B: ConcatStr
  loc_BC469C: FStStrNoPop var_8C
  loc_BC469F: LitStr ")"
  loc_BC46A2: ConcatStr
  loc_BC46A3: CVarStr var_B0
  loc_BC46A6: FLdPr Me
  loc_BC46A9: MemLdI2 global_92
  loc_BC46AC: CI4UI1
  loc_BC46AD: FLdPr Me
  loc_BC46B0: MemLdStr global_88
  loc_BC46B3: Ary1LdPr
  loc_BC46B4: MemLdStr global_12
  loc_BC46B7: LitStr "0"
  loc_BC46BA: NeStr
  loc_BC46BC: CVarBoolI2 var_9C
  loc_BC46C0: FLdRfVar var_F0
  loc_BC46C3: ImpAdCallFPR4  = IIf(, , )
  loc_BC46C8: FLdRfVar var_F0
  loc_BC46CB: ConcatVar var_124
  loc_BC46CF: LitVarStr var_E0, "</td>"
  loc_BC46D4: ConcatVar var_134
  loc_BC46D8: PopAdLdVar
  loc_BC46D9: FLdPr Me
  loc_BC46DC: MemLdRfVar from_stack_1.htmFile
  loc_BC46DF: LdPrVar
  loc_BC46E1: LateMemCall
  loc_BC46E7: FFree1Str var_8C
  loc_BC46EA: FFreeVar var_9C = "": var_B0 = "": var_D0 = "": var_110 = "": var_F0 = "": var_124 = ""
  loc_BC46FB: LitStr "        <td rowspan=""2"">Fecha de Emisión:<br>"
  loc_BC46FE: FLdPr Me
  loc_BC4701: MemLdI2 global_92
  loc_BC4704: CI4UI1
  loc_BC4705: FLdPr Me
  loc_BC4708: MemLdStr global_88
  loc_BC470B: Ary1LdPr
  loc_BC470C: MemLdStr global_60
  loc_BC470F: ConcatStr
  loc_BC4710: FStStrNoPop var_8C
  loc_BC4713: LitStr "</td>"
  loc_BC4716: ConcatStr
  loc_BC4717: CVarStr var_B0
  loc_BC471A: PopAdLdVar
  loc_BC471B: FLdPr Me
  loc_BC471E: MemLdRfVar from_stack_1.htmFile
  loc_BC4721: LdPrVar
  loc_BC4723: LateMemCall
  loc_BC4729: FFree1Str var_8C
  loc_BC472C: FFree1Var var_B0 = ""
  loc_BC472F: LitStr "        <td rowspan=""2"">Tipo de compra:<br>"
  loc_BC4732: ILdRf var_88
  loc_BC4735: ConcatStr
  loc_BC4736: FStStrNoPop var_8C
  loc_BC4739: LitStr "</td>"
  loc_BC473C: ConcatStr
  loc_BC473D: CVarStr var_B0
  loc_BC4740: PopAdLdVar
  loc_BC4741: FLdPr Me
  loc_BC4744: MemLdRfVar from_stack_1.htmFile
  loc_BC4747: LdPrVar
  loc_BC4749: LateMemCall
  loc_BC474F: FFree1Str var_8C
  loc_BC4752: FFree1Var var_B0 = ""
  loc_BC4755: LitStr "        <td rowspan=""2"">Expediente:<br>"
  loc_BC4758: FLdPr Me
  loc_BC475B: MemLdI2 global_92
  loc_BC475E: CI4UI1
  loc_BC475F: FLdPr Me
  loc_BC4762: MemLdStr global_88
  loc_BC4765: Ary1LdPr
  loc_BC4766: MemLdStr global_40
  loc_BC4769: ConcatStr
  loc_BC476A: FStStrNoPop var_8C
  loc_BC476D: LitStr "</td>"
  loc_BC4770: ConcatStr
  loc_BC4771: CVarStr var_B0
  loc_BC4774: PopAdLdVar
  loc_BC4775: FLdPr Me
  loc_BC4778: MemLdRfVar from_stack_1.htmFile
  loc_BC477B: LdPrVar
  loc_BC477D: LateMemCall
  loc_BC4783: FFree1Str var_8C
  loc_BC4786: FFree1Var var_B0 = ""
  loc_BC4789: LitStr "        <td rowspan=""2"">Usuario:<br>"
  loc_BC478C: FLdPr Me
  loc_BC478F: MemLdI2 global_92
  loc_BC4792: CI4UI1
  loc_BC4793: FLdPr Me
  loc_BC4796: MemLdStr global_88
  loc_BC4799: Ary1LdPr
  loc_BC479A: MemLdStr global_84
  loc_BC479D: ConcatStr
  loc_BC479E: FStStrNoPop var_8C
  loc_BC47A1: LitStr "</td>"
  loc_BC47A4: ConcatStr
  loc_BC47A5: CVarStr var_B0
  loc_BC47A8: PopAdLdVar
  loc_BC47A9: FLdPr Me
  loc_BC47AC: MemLdRfVar from_stack_1.htmFile
  loc_BC47AF: LdPrVar
  loc_BC47B1: LateMemCall
  loc_BC47B7: FFree1Str var_8C
  loc_BC47BA: FFree1Var var_B0 = ""
  loc_BC47BD: LitStr "        <td rowspan=""2"" class=""Totales"">Total:<br>"
  loc_BC47C0: LitI4 1
  loc_BC47C5: LitI4 1
  loc_BC47CA: LitVarStr var_C0, "currency"
  loc_BC47CF: FStVarCopyObj var_B0
  loc_BC47D2: FLdRfVar var_B0
  loc_BC47D5: FLdPr Me
  loc_BC47D8: MemLdI2 global_92
  loc_BC47DB: CI4UI1
  loc_BC47DC: FLdPr Me
  loc_BC47DF: MemLdStr global_88
  loc_BC47E2: AryLock
  loc_BC47E5: Ary1LdPr
  loc_BC47E6: MemLdRfVar from_stack_1.global_116
  loc_BC47E9: CVarRef
  loc_BC47EE: ImpAdCallI2 Format$(, )
  loc_BC47F3: FStStr var_8C
  loc_BC47F6: AryUnlock
  loc_BC47F9: ILdRf var_8C
  loc_BC47FC: ConcatStr
  loc_BC47FD: FStStrNoPop var_114
  loc_BC4800: LitStr "</td>"
  loc_BC4803: ConcatStr
  loc_BC4804: CVarStr var_D0
  loc_BC4807: PopAdLdVar
  loc_BC4808: FLdPr Me
  loc_BC480B: MemLdRfVar from_stack_1.htmFile
  loc_BC480E: LdPrVar
  loc_BC4810: LateMemCall
  loc_BC4816: FFreeStr var_8C = ""
  loc_BC481D: FFreeVar var_B0 = ""
  loc_BC4824: LitVarStr var_9C, "      </tr>"
  loc_BC4829: PopAdLdVar
  loc_BC482A: FLdPr Me
  loc_BC482D: MemLdRfVar from_stack_1.htmFile
  loc_BC4830: LdPrVar
  loc_BC4832: LateMemCall
  loc_BC4838: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BC483D: PopAdLdVar
  loc_BC483E: FLdPr Me
  loc_BC4841: MemLdRfVar from_stack_1.htmFile
  loc_BC4844: LdPrVar
  loc_BC4846: LateMemCall
  loc_BC484C: LitVarStr var_9C, "        </tr>"
  loc_BC4851: PopAdLdVar
  loc_BC4852: FLdPr Me
  loc_BC4855: MemLdRfVar from_stack_1.htmFile
  loc_BC4858: LdPrVar
  loc_BC485A: LateMemCall
  loc_BC4860: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BC4865: PopAdLdVar
  loc_BC4866: FLdPr Me
  loc_BC4869: MemLdRfVar from_stack_1.htmFile
  loc_BC486C: LdPrVar
  loc_BC486E: LateMemCall
  loc_BC4874: FLdPr Me
  loc_BC4877: MemLdI2 global_92
  loc_BC487A: CI4UI1
  loc_BC487B: FLdPr Me
  loc_BC487E: MemLdStr global_88
  loc_BC4881: Ary1LdPr
  loc_BC4882: MemLdStr global_60
  loc_BC4885: CDateStr
  loc_BC4887: LitStr "2024-01-01"
  loc_BC488A: CDateStr
  loc_BC488C: GeR8
  loc_BC488D: BranchF loc_BC4932
  loc_BC4890: LitStr "        <td colspan=""8"">Área solicitante: "
  loc_BC4893: FLdPr Me
  loc_BC4896: MemLdI2 global_92
  loc_BC4899: CI4UI1
  loc_BC489A: FLdPr Me
  loc_BC489D: MemLdStr global_88
  loc_BC48A0: Ary1LdPr
  loc_BC48A1: MemLdStr global_44
  loc_BC48A4: ConcatStr
  loc_BC48A5: FStStrNoPop var_8C
  loc_BC48A8: LitStr " - "
  loc_BC48AB: ConcatStr
  loc_BC48AC: FStStrNoPop var_114
  loc_BC48AF: FLdPr Me
  loc_BC48B2: MemLdI2 global_92
  loc_BC48B5: CI4UI1
  loc_BC48B6: FLdPr Me
  loc_BC48B9: MemLdStr global_88
  loc_BC48BC: Ary1LdPr
  loc_BC48BD: MemLdStr global_48
  loc_BC48C0: ConcatStr
  loc_BC48C1: FStStrNoPop var_138
  loc_BC48C4: LitStr " ("
  loc_BC48C7: ConcatStr
  loc_BC48C8: FStStrNoPop var_13C
  loc_BC48CB: FLdPr Me
  loc_BC48CE: MemLdI2 global_92
  loc_BC48D1: CI4UI1
  loc_BC48D2: FLdPr Me
  loc_BC48D5: MemLdStr global_88
  loc_BC48D8: Ary1LdPr
  loc_BC48D9: MemLdStr htmFile
  loc_BC48DC: ConcatStr
  loc_BC48DD: FStStrNoPop var_140
  loc_BC48E0: LitStr " "
  loc_BC48E3: ConcatStr
  loc_BC48E4: FStStrNoPop var_144
  loc_BC48E7: FLdPr Me
  loc_BC48EA: MemLdI2 global_92
  loc_BC48ED: CI4UI1
  loc_BC48EE: FLdPr Me
  loc_BC48F1: MemLdStr global_88
  loc_BC48F4: Ary1LdPr
  loc_BC48F5: MemLdStr global_56
  loc_BC48F8: ConcatStr
  loc_BC48F9: FStStrNoPop var_148
  loc_BC48FC: LitStr ")"
  loc_BC48FF: ConcatStr
  loc_BC4900: FStStrNoPop var_14C
  loc_BC4903: LitStr "</td>"
  loc_BC4906: ConcatStr
  loc_BC4907: CVarStr var_B0
  loc_BC490A: PopAdLdVar
  loc_BC490B: FLdPr Me
  loc_BC490E: MemLdRfVar from_stack_1.htmFile
  loc_BC4911: LdPrVar
  loc_BC4913: LateMemCall
  loc_BC4919: FFreeStr var_8C = "": var_114 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BC492C: FFree1Var var_B0 = ""
  loc_BC492F: Branch loc_BC4988
  loc_BC4932: LitStr "        <td colspan=""8"">Área solicitante: "
  loc_BC4935: FLdPr Me
  loc_BC4938: MemLdI2 global_92
  loc_BC493B: CI4UI1
  loc_BC493C: FLdPr Me
  loc_BC493F: MemLdStr global_88
  loc_BC4942: Ary1LdPr
  loc_BC4943: MemLdStr global_44
  loc_BC4946: ConcatStr
  loc_BC4947: FStStrNoPop var_8C
  loc_BC494A: LitStr " - "
  loc_BC494D: ConcatStr
  loc_BC494E: FStStrNoPop var_114
  loc_BC4951: FLdPr Me
  loc_BC4954: MemLdI2 global_92
  loc_BC4957: CI4UI1
  loc_BC4958: FLdPr Me
  loc_BC495B: MemLdStr global_88
  loc_BC495E: Ary1LdPr
  loc_BC495F: MemLdStr global_48
  loc_BC4962: ConcatStr
  loc_BC4963: FStStrNoPop var_138
  loc_BC4966: LitStr "</td>"
  loc_BC4969: ConcatStr
  loc_BC496A: CVarStr var_B0
  loc_BC496D: PopAdLdVar
  loc_BC496E: FLdPr Me
  loc_BC4971: MemLdRfVar from_stack_1.htmFile
  loc_BC4974: LdPrVar
  loc_BC4976: LateMemCall
  loc_BC497C: FFreeStr var_8C = "": var_114 = ""
  loc_BC4985: FFree1Var var_B0 = ""
  loc_BC4988: LitVarStr var_9C, "      </tr>"
  loc_BC498D: PopAdLdVar
  loc_BC498E: FLdPr Me
  loc_BC4991: MemLdRfVar from_stack_1.htmFile
  loc_BC4994: LdPrVar
  loc_BC4996: LateMemCall
  loc_BC499C: FLdPr Me
  loc_BC499F: MemLdI2 global_92
  loc_BC49A2: CI4UI1
  loc_BC49A3: FLdPr Me
  loc_BC49A6: MemLdStr global_88
  loc_BC49A9: Ary1LdPr
  loc_BC49AA: MemLdStr global_4
  loc_BC49AD: LitStr "0"
  loc_BC49B0: NeStr
  loc_BC49B2: BranchF loc_BC4A11
  loc_BC49B5: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BC49BA: PopAdLdVar
  loc_BC49BB: FLdPr Me
  loc_BC49BE: MemLdRfVar from_stack_1.htmFile
  loc_BC49C1: LdPrVar
  loc_BC49C3: LateMemCall
  loc_BC49C9: LitStr "        <td colspan=""8"">Rubro: "
  loc_BC49CC: FLdPr Me
  loc_BC49CF: MemLdI2 global_92
  loc_BC49D2: CI4UI1
  loc_BC49D3: FLdPr Me
  loc_BC49D6: MemLdStr global_88
  loc_BC49D9: Ary1LdPr
  loc_BC49DA: MemLdStr global_8
  loc_BC49DD: ConcatStr
  loc_BC49DE: FStStrNoPop var_8C
  loc_BC49E1: LitStr "</td>"
  loc_BC49E4: ConcatStr
  loc_BC49E5: CVarStr var_B0
  loc_BC49E8: PopAdLdVar
  loc_BC49E9: FLdPr Me
  loc_BC49EC: MemLdRfVar from_stack_1.htmFile
  loc_BC49EF: LdPrVar
  loc_BC49F1: LateMemCall
  loc_BC49F7: FFree1Str var_8C
  loc_BC49FA: FFree1Var var_B0 = ""
  loc_BC49FD: LitVarStr var_9C, "      </tr>"
  loc_BC4A02: PopAdLdVar
  loc_BC4A03: FLdPr Me
  loc_BC4A06: MemLdRfVar from_stack_1.htmFile
  loc_BC4A09: LdPrVar
  loc_BC4A0B: LateMemCall
  loc_BC4A11: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BC4A16: PopAdLdVar
  loc_BC4A17: FLdPr Me
  loc_BC4A1A: MemLdRfVar from_stack_1.htmFile
  loc_BC4A1D: LdPrVar
  loc_BC4A1F: LateMemCall
  loc_BC4A25: LitStr "        <td colspan=""8"">Detalle: "
  loc_BC4A28: FLdPr Me
  loc_BC4A2B: MemLdI2 global_92
  loc_BC4A2E: CI4UI1
  loc_BC4A2F: FLdPr Me
  loc_BC4A32: MemLdStr global_88
  loc_BC4A35: Ary1LdPr
  loc_BC4A36: MemLdStr global_16
  loc_BC4A39: ConcatStr
  loc_BC4A3A: FStStrNoPop var_8C
  loc_BC4A3D: LitStr "</td>"
  loc_BC4A40: ConcatStr
  loc_BC4A41: CVarStr var_B0
  loc_BC4A44: PopAdLdVar
  loc_BC4A45: FLdPr Me
  loc_BC4A48: MemLdRfVar from_stack_1.htmFile
  loc_BC4A4B: LdPrVar
  loc_BC4A4D: LateMemCall
  loc_BC4A53: FFree1Str var_8C
  loc_BC4A56: FFree1Var var_B0 = ""
  loc_BC4A59: LitVarStr var_9C, "      </tr>"
  loc_BC4A5E: PopAdLdVar
  loc_BC4A5F: FLdPr Me
  loc_BC4A62: MemLdRfVar from_stack_1.htmFile
  loc_BC4A65: LdPrVar
  loc_BC4A67: LateMemCall
  loc_BC4A6D: FLdPr Me
  loc_BC4A70: MemLdI2 global_92
  loc_BC4A73: CI4UI1
  loc_BC4A74: FLdPr Me
  loc_BC4A77: MemLdStr global_88
  loc_BC4A7A: Ary1LdPr
  loc_BC4A7B: MemLdStr global_20
  loc_BC4A7E: LitStr vbNullString
  loc_BC4A81: NeStr
  loc_BC4A83: BranchF loc_BC4AE2
  loc_BC4A86: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BC4A8B: PopAdLdVar
  loc_BC4A8C: FLdPr Me
  loc_BC4A8F: MemLdRfVar from_stack_1.htmFile
  loc_BC4A92: LdPrVar
  loc_BC4A94: LateMemCall
  loc_BC4A9A: LitStr "        <td colspan=""8"">Cotiza según especificaciones técnicas adjuntas "
  loc_BC4A9D: FLdPr Me
  loc_BC4AA0: MemLdI2 global_92
  loc_BC4AA3: CI4UI1
  loc_BC4AA4: FLdPr Me
  loc_BC4AA7: MemLdStr global_88
  loc_BC4AAA: Ary1LdPr
  loc_BC4AAB: MemLdStr global_20
  loc_BC4AAE: ConcatStr
  loc_BC4AAF: FStStrNoPop var_8C
  loc_BC4AB2: LitStr "</td>"
  loc_BC4AB5: ConcatStr
  loc_BC4AB6: CVarStr var_B0
  loc_BC4AB9: PopAdLdVar
  loc_BC4ABA: FLdPr Me
  loc_BC4ABD: MemLdRfVar from_stack_1.htmFile
  loc_BC4AC0: LdPrVar
  loc_BC4AC2: LateMemCall
  loc_BC4AC8: FFree1Str var_8C
  loc_BC4ACB: FFree1Var var_B0 = ""
  loc_BC4ACE: LitVarStr var_9C, "      </tr>"
  loc_BC4AD3: PopAdLdVar
  loc_BC4AD4: FLdPr Me
  loc_BC4AD7: MemLdRfVar from_stack_1.htmFile
  loc_BC4ADA: LdPrVar
  loc_BC4ADC: LateMemCall
  loc_BC4AE2: FLdPr Me
  loc_BC4AE5: MemLdI2 global_92
  loc_BC4AE8: CI4UI1
  loc_BC4AE9: FLdPr Me
  loc_BC4AEC: MemLdStr global_88
  loc_BC4AEF: Ary1LdPr
  loc_BC4AF0: MemLdStr global_64
  loc_BC4AF3: LitStr vbNullString
  loc_BC4AF6: NeStr
  loc_BC4AF8: BranchF loc_BC4B57
  loc_BC4AFB: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BC4B00: PopAdLdVar
  loc_BC4B01: FLdPr Me
  loc_BC4B04: MemLdRfVar from_stack_1.htmFile
  loc_BC4B07: LdPrVar
  loc_BC4B09: LateMemCall
  loc_BC4B0F: LitStr "        <td colspan=""8"">Cotización Web hasta: "
  loc_BC4B12: FLdPr Me
  loc_BC4B15: MemLdI2 global_92
  loc_BC4B18: CI4UI1
  loc_BC4B19: FLdPr Me
  loc_BC4B1C: MemLdStr global_88
  loc_BC4B1F: Ary1LdPr
  loc_BC4B20: MemLdStr global_64
  loc_BC4B23: ConcatStr
  loc_BC4B24: FStStrNoPop var_8C
  loc_BC4B27: LitStr "</td>"
  loc_BC4B2A: ConcatStr
  loc_BC4B2B: CVarStr var_B0
  loc_BC4B2E: PopAdLdVar
  loc_BC4B2F: FLdPr Me
  loc_BC4B32: MemLdRfVar from_stack_1.htmFile
  loc_BC4B35: LdPrVar
  loc_BC4B37: LateMemCall
  loc_BC4B3D: FFree1Str var_8C
  loc_BC4B40: FFree1Var var_B0 = ""
  loc_BC4B43: LitVarStr var_9C, "      </tr>"
  loc_BC4B48: PopAdLdVar
  loc_BC4B49: FLdPr Me
  loc_BC4B4C: MemLdRfVar from_stack_1.htmFile
  loc_BC4B4F: LdPrVar
  loc_BC4B51: LateMemCall
  loc_BC4B57: FLdPr Me
  loc_BC4B5A: MemLdI2 global_92
  loc_BC4B5D: CI4UI1
  loc_BC4B5E: FLdPr Me
  loc_BC4B61: MemLdStr global_88
  loc_BC4B64: Ary1LdPr
  loc_BC4B65: MemLdStr global_72
  loc_BC4B68: LitStr vbNullString
  loc_BC4B6B: NeStr
  loc_BC4B6D: BranchF loc_BC4C0E
  loc_BC4B70: LitVarStr var_9C, "      <tr valign=""top"" class=""Encabezado"">"
  loc_BC4B75: PopAdLdVar
  loc_BC4B76: FLdPr Me
  loc_BC4B79: MemLdRfVar from_stack_1.htmFile
  loc_BC4B7C: LdPrVar
  loc_BC4B7E: LateMemCall
  loc_BC4B84: LitStr "        <td colspan=""8"">ANULADA - Fecha: "
  loc_BC4B87: FLdPr Me
  loc_BC4B8A: MemLdI2 global_92
  loc_BC4B8D: CI4UI1
  loc_BC4B8E: FLdPr Me
  loc_BC4B91: MemLdStr global_88
  loc_BC4B94: Ary1LdPr
  loc_BC4B95: MemLdStr global_72
  loc_BC4B98: ConcatStr
  loc_BC4B99: FStStrNoPop var_8C
  loc_BC4B9C: LitStr " - Usuario: "
  loc_BC4B9F: ConcatStr
  loc_BC4BA0: FStStrNoPop var_114
  loc_BC4BA3: FLdPr Me
  loc_BC4BA6: MemLdI2 global_92
  loc_BC4BA9: CI4UI1
  loc_BC4BAA: FLdPr Me
  loc_BC4BAD: MemLdStr global_88
  loc_BC4BB0: Ary1LdPr
  loc_BC4BB1: MemLdStr global_80
  loc_BC4BB4: ConcatStr
  loc_BC4BB5: FStStrNoPop var_138
  loc_BC4BB8: LitStr "<br>Motivo: "
  loc_BC4BBB: ConcatStr
  loc_BC4BBC: FStStrNoPop var_13C
  loc_BC4BBF: FLdPr Me
  loc_BC4BC2: MemLdI2 global_92
  loc_BC4BC5: CI4UI1
  loc_BC4BC6: FLdPr Me
  loc_BC4BC9: MemLdStr global_88
  loc_BC4BCC: Ary1LdPr
  loc_BC4BCD: MemLdStr global_76
  loc_BC4BD0: ConcatStr
  loc_BC4BD1: FStStrNoPop var_140
  loc_BC4BD4: LitStr "</td>"
  loc_BC4BD7: ConcatStr
  loc_BC4BD8: CVarStr var_B0
  loc_BC4BDB: PopAdLdVar
  loc_BC4BDC: FLdPr Me
  loc_BC4BDF: MemLdRfVar from_stack_1.htmFile
  loc_BC4BE2: LdPrVar
  loc_BC4BE4: LateMemCall
  loc_BC4BEA: FFreeStr var_8C = "": var_114 = "": var_138 = "": var_13C = ""
  loc_BC4BF7: FFree1Var var_B0 = ""
  loc_BC4BFA: LitVarStr var_9C, "      </tr>"
  loc_BC4BFF: PopAdLdVar
  loc_BC4C00: FLdPr Me
  loc_BC4C03: MemLdRfVar from_stack_1.htmFile
  loc_BC4C06: LdPrVar
  loc_BC4C08: LateMemCall
  loc_BC4C0E: LitVarStr var_9C, "    </table></th>"
  loc_BC4C13: PopAdLdVar
  loc_BC4C14: FLdPr Me
  loc_BC4C17: MemLdRfVar from_stack_1.htmFile
  loc_BC4C1A: LdPrVar
  loc_BC4C1C: LateMemCall
  loc_BC4C22: LitVarStr var_9C, "  </tr>"
  loc_BC4C27: PopAdLdVar
  loc_BC4C28: FLdPr Me
  loc_BC4C2B: MemLdRfVar from_stack_1.htmFile
  loc_BC4C2E: LdPrVar
  loc_BC4C30: LateMemCall
  loc_BC4C36: FLdRfVar var_152
  loc_BC4C39: FLdPr Me
  loc_BC4C3C: VCallAd Control_ID_ChkSoloEncabezados
  loc_BC4C3F: FStAdFunc var_150
  loc_BC4C42: FLdPr var_150
  loc_BC4C45:  = Me.Value
  loc_BC4C4A: FLdI2 var_152
  loc_BC4C4D: CI4UI1
  loc_BC4C4E: LitI4 0
  loc_BC4C53: EqI4
  loc_BC4C54: FFree1Ad var_150
  loc_BC4C57: BranchF loc_BC50BC
  loc_BC4C5A: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC4C5F: PopAdLdVar
  loc_BC4C60: FLdPr Me
  loc_BC4C63: MemLdRfVar from_stack_1.htmFile
  loc_BC4C66: LdPrVar
  loc_BC4C68: LateMemCall
  loc_BC4C6E: LitVarStr var_9C, "    <th>Item</th>"
  loc_BC4C73: PopAdLdVar
  loc_BC4C74: FLdPr Me
  loc_BC4C77: MemLdRfVar from_stack_1.htmFile
  loc_BC4C7A: LdPrVar
  loc_BC4C7C: LateMemCall
  loc_BC4C82: LitVarStr var_9C, "    <th>Insumo</th>"
  loc_BC4C87: PopAdLdVar
  loc_BC4C88: FLdPr Me
  loc_BC4C8B: MemLdRfVar from_stack_1.htmFile
  loc_BC4C8E: LdPrVar
  loc_BC4C90: LateMemCall
  loc_BC4C96: LitVarStr var_9C, "    <th>Cant.</th>"
  loc_BC4C9B: PopAdLdVar
  loc_BC4C9C: FLdPr Me
  loc_BC4C9F: MemLdRfVar from_stack_1.htmFile
  loc_BC4CA2: LdPrVar
  loc_BC4CA4: LateMemCall
  loc_BC4CAA: LitVarStr var_9C, "    <th>Detalle</th>"
  loc_BC4CAF: PopAdLdVar
  loc_BC4CB0: FLdPr Me
  loc_BC4CB3: MemLdRfVar from_stack_1.htmFile
  loc_BC4CB6: LdPrVar
  loc_BC4CB8: LateMemCall
  loc_BC4CBE: LitVarStr var_9C, "    <th>Importe unit.</th>"
  loc_BC4CC3: PopAdLdVar
  loc_BC4CC4: FLdPr Me
  loc_BC4CC7: MemLdRfVar from_stack_1.htmFile
  loc_BC4CCA: LdPrVar
  loc_BC4CCC: LateMemCall
  loc_BC4CD2: LitVarStr var_9C, "    <th>Total</th>"
  loc_BC4CD7: PopAdLdVar
  loc_BC4CD8: FLdPr Me
  loc_BC4CDB: MemLdRfVar from_stack_1.htmFile
  loc_BC4CDE: LdPrVar
  loc_BC4CE0: LateMemCall
  loc_BC4CE6: LitVarStr var_9C, "    <th>Partida</th>"
  loc_BC4CEB: PopAdLdVar
  loc_BC4CEC: FLdPr Me
  loc_BC4CEF: MemLdRfVar from_stack_1.htmFile
  loc_BC4CF2: LdPrVar
  loc_BC4CF4: LateMemCall
  loc_BC4CFA: LitVarStr var_9C, "    <th>Organigrama</th>"
  loc_BC4CFF: PopAdLdVar
  loc_BC4D00: FLdPr Me
  loc_BC4D03: MemLdRfVar from_stack_1.htmFile
  loc_BC4D06: LdPrVar
  loc_BC4D08: LateMemCall
  loc_BC4D0E: LitVarStr var_9C, "    <th>Unidad Gasto</th>"
  loc_BC4D13: PopAdLdVar
  loc_BC4D14: FLdPr Me
  loc_BC4D17: MemLdRfVar from_stack_1.htmFile
  loc_BC4D1A: LdPrVar
  loc_BC4D1C: LateMemCall
  loc_BC4D22: LitVarStr var_9C, "    <th>Imp.</th>"
  loc_BC4D27: PopAdLdVar
  loc_BC4D28: FLdPr Me
  loc_BC4D2B: MemLdRfVar from_stack_1.htmFile
  loc_BC4D2E: LdPrVar
  loc_BC4D30: LateMemCall
  loc_BC4D36: LitVarStr var_9C, "    <th>Finalidad</th>"
  loc_BC4D3B: PopAdLdVar
  loc_BC4D3C: FLdPr Me
  loc_BC4D3F: MemLdRfVar from_stack_1.htmFile
  loc_BC4D42: LdPrVar
  loc_BC4D44: LateMemCall
  loc_BC4D4A: LitVarStr var_9C, "  </tr>"
  loc_BC4D4F: PopAdLdVar
  loc_BC4D50: FLdPr Me
  loc_BC4D53: MemLdRfVar from_stack_1.htmFile
  loc_BC4D56: LdPrVar
  loc_BC4D58: LateMemCall
  loc_BC4D5E: LitI2_Byte 1
  loc_BC4D60: FLdPr Me
  loc_BC4D63: MemLdRfVar from_stack_1.global_96
  loc_BC4D66: FLdPr Me
  loc_BC4D69: MemLdI2 global_92
  loc_BC4D6C: CI4UI1
  loc_BC4D6D: FLdPr Me
  loc_BC4D70: MemLdStr global_88
  loc_BC4D73: Ary1LdPr
  loc_BC4D74: MemLdStr global_96
  loc_BC4D77: LitI2_Byte 1
  loc_BC4D79: FnUBound
  loc_BC4D7B: CI2I4
  loc_BC4D7C: ForI2 var_156
  loc_BC4D82: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BC4D87: PopAdLdVar
  loc_BC4D88: FLdPr Me
  loc_BC4D8B: MemLdRfVar from_stack_1.htmFile
  loc_BC4D8E: LdPrVar
  loc_BC4D90: LateMemCall
  loc_BC4D96: FLdPr Me
  loc_BC4D99: MemLdI2 global_96
  loc_BC4D9C: CI4UI1
  loc_BC4D9D: FLdPr Me
  loc_BC4DA0: MemLdI2 global_92
  loc_BC4DA3: CI4UI1
  loc_BC4DA4: FLdPr Me
  loc_BC4DA7: MemLdStr global_88
  loc_BC4DAA: AryLock
  loc_BC4DAD: Ary1LdPr
  loc_BC4DAE: MemLdStr global_96
  loc_BC4DB1: AryLock
  loc_BC4DB4: Ary1LdRf
  loc_BC4DB5: FStR4 var_164
  loc_BC4DB8: LitI4 0
  loc_BC4DBD: LitI4 0
  loc_BC4DC2: LitI2_Byte 0
  loc_BC4DC4: LitStr "center"
  loc_BC4DC7: FMemLdR4 var_164(0)
  loc_BC4DCC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC4DD1: CVarStr var_B0
  loc_BC4DD4: PopAdLdVar
  loc_BC4DD5: FLdPr Me
  loc_BC4DD8: MemLdRfVar from_stack_1.htmFile
  loc_BC4DDB: LdPrVar
  loc_BC4DDD: LateMemCall
  loc_BC4DE3: FFree1Var var_B0 = ""
  loc_BC4DE6: LitI4 0
  loc_BC4DEB: LitI4 0
  loc_BC4DF0: LitI2_Byte 0
  loc_BC4DF2: LitStr "left"
  loc_BC4DF5: FMemLdR4 var_164(4)
  loc_BC4DFA: LitStr " - "
  loc_BC4DFD: ConcatStr
  loc_BC4DFE: FStStrNoPop var_8C
  loc_BC4E01: FMemLdR4 var_164(8)
  loc_BC4E06: ConcatStr
  loc_BC4E07: FStStrNoPop var_114
  loc_BC4E0A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC4E0F: CVarStr var_B0
  loc_BC4E12: PopAdLdVar
  loc_BC4E13: FLdPr Me
  loc_BC4E16: MemLdRfVar from_stack_1.htmFile
  loc_BC4E19: LdPrVar
  loc_BC4E1B: LateMemCall
  loc_BC4E21: FFreeStr var_8C = ""
  loc_BC4E28: FFree1Var var_B0 = ""
  loc_BC4E2B: LitI4 0
  loc_BC4E30: LitI4 0
  loc_BC4E35: LitI2_Byte 0
  loc_BC4E37: LitStr "right"
  loc_BC4E3A: FMemLdR4 var_164(20)
  loc_BC4E3F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC4E44: CVarStr var_B0
  loc_BC4E47: PopAdLdVar
  loc_BC4E48: FLdPr Me
  loc_BC4E4B: MemLdRfVar from_stack_1.htmFile
  loc_BC4E4E: LdPrVar
  loc_BC4E50: LateMemCall
  loc_BC4E56: FFree1Var var_B0 = ""
  loc_BC4E59: LitStr "       <td align=""left"">"
  loc_BC4E5C: FMemLdR4 var_164(12)
  loc_BC4E61: ConcatStr
  loc_BC4E62: FStStrNoPop var_8C
  loc_BC4E65: LitStr "<br>"
  loc_BC4E68: ConcatStr
  loc_BC4E69: FStStrNoPop var_114
  loc_BC4E6C: LitI4 0
  loc_BC4E71: LitI4 -1
  loc_BC4E76: LitI4 1
  loc_BC4E7B: LitStr "<br>"
  loc_BC4E7E: LitStr vbCrLf
  loc_BC4E81: FMemLdR4 var_164(16)
  loc_BC4E86: ImpAdCallI2 Replace(, , , , , )
  loc_BC4E8B: FStStrNoPop var_138
  loc_BC4E8E: ConcatStr
  loc_BC4E8F: FStStrNoPop var_13C
  loc_BC4E92: LitStr "</td>"
  loc_BC4E95: ConcatStr
  loc_BC4E96: CVarStr var_B0
  loc_BC4E99: PopAdLdVar
  loc_BC4E9A: FLdPr Me
  loc_BC4E9D: MemLdRfVar from_stack_1.htmFile
  loc_BC4EA0: LdPrVar
  loc_BC4EA2: LateMemCall
  loc_BC4EA8: FFreeStr var_8C = "": var_114 = "": var_138 = ""
  loc_BC4EB3: FFree1Var var_B0 = ""
  loc_BC4EB6: LitI4 0
  loc_BC4EBB: LitI4 0
  loc_BC4EC0: LitI2_Byte 0
  loc_BC4EC2: LitStr "right"
  loc_BC4EC5: FMemLdR4 var_164(24)
  loc_BC4ECA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC4ECF: CVarStr var_B0
  loc_BC4ED2: PopAdLdVar
  loc_BC4ED3: FLdPr Me
  loc_BC4ED6: MemLdRfVar from_stack_1.htmFile
  loc_BC4ED9: LdPrVar
  loc_BC4EDB: LateMemCall
  loc_BC4EE1: FFree1Var var_B0 = ""
  loc_BC4EE4: LitI4 0
  loc_BC4EE9: LitI4 0
  loc_BC4EEE: LitI2_Byte 0
  loc_BC4EF0: LitStr "right"
  loc_BC4EF3: FMemLdR4 var_164(28)
  loc_BC4EF8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC4EFD: CVarStr var_B0
  loc_BC4F00: PopAdLdVar
  loc_BC4F01: FLdPr Me
  loc_BC4F04: MemLdRfVar from_stack_1.htmFile
  loc_BC4F07: LdPrVar
  loc_BC4F09: LateMemCall
  loc_BC4F0F: FFree1Var var_B0 = ""
  loc_BC4F12: LitI4 0
  loc_BC4F17: LitI4 0
  loc_BC4F1C: LitI2_Byte 0
  loc_BC4F1E: LitStr "left"
  loc_BC4F21: FMemLdR4 var_164(32)
  loc_BC4F26: LitStr "<br>"
  loc_BC4F29: ConcatStr
  loc_BC4F2A: FStStrNoPop var_8C
  loc_BC4F2D: FMemLdR4 var_164(36)
  loc_BC4F32: ConcatStr
  loc_BC4F33: FStStrNoPop var_114
  loc_BC4F36: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC4F3B: CVarStr var_B0
  loc_BC4F3E: PopAdLdVar
  loc_BC4F3F: FLdPr Me
  loc_BC4F42: MemLdRfVar from_stack_1.htmFile
  loc_BC4F45: LdPrVar
  loc_BC4F47: LateMemCall
  loc_BC4F4D: FFreeStr var_8C = ""
  loc_BC4F54: FFree1Var var_B0 = ""
  loc_BC4F57: LitI4 0
  loc_BC4F5C: LitI4 0
  loc_BC4F61: LitI2_Byte 0
  loc_BC4F63: LitStr "left"
  loc_BC4F66: FMemLdR4 var_164(40)
  loc_BC4F6B: LitStr "<br>"
  loc_BC4F6E: ConcatStr
  loc_BC4F6F: FStStrNoPop var_8C
  loc_BC4F72: FMemLdR4 var_164(44)
  loc_BC4F77: ConcatStr
  loc_BC4F78: FStStrNoPop var_114
  loc_BC4F7B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC4F80: CVarStr var_B0
  loc_BC4F83: PopAdLdVar
  loc_BC4F84: FLdPr Me
  loc_BC4F87: MemLdRfVar from_stack_1.htmFile
  loc_BC4F8A: LdPrVar
  loc_BC4F8C: LateMemCall
  loc_BC4F92: FFreeStr var_8C = ""
  loc_BC4F99: FFree1Var var_B0 = ""
  loc_BC4F9C: LitI4 0
  loc_BC4FA1: LitI4 0
  loc_BC4FA6: LitI2_Byte 0
  loc_BC4FA8: LitStr "left"
  loc_BC4FAB: FMemLdR4 var_164(48)
  loc_BC4FB0: LitStr "<br>"
  loc_BC4FB3: ConcatStr
  loc_BC4FB4: FStStrNoPop var_8C
  loc_BC4FB7: FMemLdR4 var_164(52)
  loc_BC4FBC: ConcatStr
  loc_BC4FBD: FStStrNoPop var_114
  loc_BC4FC0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC4FC5: CVarStr var_B0
  loc_BC4FC8: PopAdLdVar
  loc_BC4FC9: FLdPr Me
  loc_BC4FCC: MemLdRfVar from_stack_1.htmFile
  loc_BC4FCF: LdPrVar
  loc_BC4FD1: LateMemCall
  loc_BC4FD7: FFreeStr var_8C = ""
  loc_BC4FDE: FFree1Var var_B0 = ""
  loc_BC4FE1: LitVarStr var_E0, "Si"
  loc_BC4FE6: FStVarCopyObj var_D0
  loc_BC4FE9: FLdRfVar var_D0
  loc_BC4FEC: LitVarStr var_C0, "No"
  loc_BC4FF1: FStVarCopyObj var_B0
  loc_BC4FF4: FLdRfVar var_B0
  loc_BC4FF7: FMemLdR4 var_164(56)
  loc_BC4FFC: LitStr "0"
  loc_BC4FFF: EqStr
  loc_BC5001: CVarBoolI2 var_9C
  loc_BC5005: FLdRfVar var_F0
  loc_BC5008: ImpAdCallFPR4  = IIf(, , )
  loc_BC500D: LitI4 0
  loc_BC5012: LitI4 0
  loc_BC5017: LitI2_Byte 0
  loc_BC5019: LitStr "right"
  loc_BC501C: FLdRfVar var_F0
  loc_BC501F: CStrVarVal var_8C
  loc_BC5023: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC5028: CVarStr var_110
  loc_BC502B: PopAdLdVar
  loc_BC502C: FLdPr Me
  loc_BC502F: MemLdRfVar from_stack_1.htmFile
  loc_BC5032: LdPrVar
  loc_BC5034: LateMemCall
  loc_BC503A: FFree1Str var_8C
  loc_BC503D: FFreeVar var_9C = "": var_B0 = "": var_D0 = "": var_F0 = ""
  loc_BC504A: LitI4 0
  loc_BC504F: LitI4 0
  loc_BC5054: LitI2_Byte 0
  loc_BC5056: LitStr "left"
  loc_BC5059: FMemLdR4 var_164(60)
  loc_BC505E: LitStr "<br>"
  loc_BC5061: ConcatStr
  loc_BC5062: FStStrNoPop var_8C
  loc_BC5065: FMemLdR4 var_164(64)
  loc_BC506A: ConcatStr
  loc_BC506B: FStStrNoPop var_114
  loc_BC506E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC5073: CVarStr var_B0
  loc_BC5076: PopAdLdVar
  loc_BC5077: FLdPr Me
  loc_BC507A: MemLdRfVar from_stack_1.htmFile
  loc_BC507D: LdPrVar
  loc_BC507F: LateMemCall
  loc_BC5085: FFreeStr var_8C = ""
  loc_BC508C: FFree1Var var_B0 = ""
  loc_BC508F: LitVarStr var_9C, "     </tr>"
  loc_BC5094: PopAdLdVar
  loc_BC5095: FLdPr Me
  loc_BC5098: MemLdRfVar from_stack_1.htmFile
  loc_BC509B: LdPrVar
  loc_BC509D: LateMemCall
  loc_BC50A3: LitI4 0
  loc_BC50A8: FStR4 var_164
  loc_BC50AB: AryUnlock
  loc_BC50AE: AryUnlock
  loc_BC50B1: FLdPr Me
  loc_BC50B4: MemLdRfVar from_stack_1.global_96
  loc_BC50B7: NextI2 var_156, loc_BC4D82
  loc_BC50BC: FLdPr Me
  loc_BC50BF: MemLdI2 global_92
  loc_BC50C2: CI4UI1
  loc_BC50C3: FLdPr Me
  loc_BC50C6: MemLdStr global_88
  loc_BC50C9: Ary1LdPr
  loc_BC50CA: MemLdI2 global_100
  loc_BC50CD: FLdRfVar var_152
  loc_BC50D0: FLdPr Me
  loc_BC50D3: VCallAd Control_ID_ChkOcultarCotizacion
  loc_BC50D6: FStAdFunc var_150
  loc_BC50D9: FLdPr var_150
  loc_BC50DC:  = Me.Value
  loc_BC50E1: FLdI2 var_152
  loc_BC50E4: CI4UI1
  loc_BC50E5: LitI4 0
  loc_BC50EA: EqI4
  loc_BC50EB: AndI4
  loc_BC50EC: FFree1Ad var_150
  loc_BC50EF: BranchF loc_BC5326
  loc_BC50F2: LitVarStr var_9C, "    <tr><td colspan=""11""><table class=""LineaDato"" border=""0"" align=""center"">"
  loc_BC50F7: PopAdLdVar
  loc_BC50F8: FLdPr Me
  loc_BC50FB: MemLdRfVar from_stack_1.htmFile
  loc_BC50FE: LdPrVar
  loc_BC5100: LateMemCall
  loc_BC5106: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_BC510B: PopAdLdVar
  loc_BC510C: FLdPr Me
  loc_BC510F: MemLdRfVar from_stack_1.htmFile
  loc_BC5112: LdPrVar
  loc_BC5114: LateMemCall
  loc_BC511A: LitVarStr var_9C, "        <td>Tiene la/s siguiente/s COTIZACIÓN:</td>"
  loc_BC511F: PopAdLdVar
  loc_BC5120: FLdPr Me
  loc_BC5123: MemLdRfVar from_stack_1.htmFile
  loc_BC5126: LdPrVar
  loc_BC5128: LateMemCall
  loc_BC512E: LitVarStr var_9C, "      </tr>"
  loc_BC5133: PopAdLdVar
  loc_BC5134: FLdPr Me
  loc_BC5137: MemLdRfVar from_stack_1.htmFile
  loc_BC513A: LdPrVar
  loc_BC513C: LateMemCall
  loc_BC5142: LitVarStr var_9C, "      <tr>"
  loc_BC5147: PopAdLdVar
  loc_BC5148: FLdPr Me
  loc_BC514B: MemLdRfVar from_stack_1.htmFile
  loc_BC514E: LdPrVar
  loc_BC5150: LateMemCall
  loc_BC5156: LitVarStr var_9C, "        <td>"
  loc_BC515B: PopAdLdVar
  loc_BC515C: FLdPr Me
  loc_BC515F: MemLdRfVar from_stack_1.htmFile
  loc_BC5162: LdPrVar
  loc_BC5164: LateMemCall
  loc_BC516A: LitI2_Byte 1
  loc_BC516C: FLdPr Me
  loc_BC516F: MemLdRfVar from_stack_1.global_94
  loc_BC5172: FLdPr Me
  loc_BC5175: MemLdI2 global_92
  loc_BC5178: CI4UI1
  loc_BC5179: FLdPr Me
  loc_BC517C: MemLdStr global_88
  loc_BC517F: Ary1LdPr
  loc_BC5180: MemLdStr global_104
  loc_BC5183: LitI2_Byte 1
  loc_BC5185: FnUBound
  loc_BC5187: CI2I4
  loc_BC5188: ForI2 var_168
  loc_BC518E: LitStr "Cotiz. "
  loc_BC5191: FLdPr Me
  loc_BC5194: MemLdI2 global_94
  loc_BC5197: CI4UI1
  loc_BC5198: FLdPr Me
  loc_BC519B: MemLdI2 global_92
  loc_BC519E: CI4UI1
  loc_BC519F: FLdPr Me
  loc_BC51A2: MemLdStr global_88
  loc_BC51A5: Ary1LdPr
  loc_BC51A6: MemLdStr global_104
  loc_BC51A9: Ary1LdPr
  loc_BC51AA: MemLdStr global_16
  loc_BC51AD: ConcatStr
  loc_BC51AE: FStStrNoPop var_8C
  loc_BC51B1: LitStr " - "
  loc_BC51B4: ConcatStr
  loc_BC51B5: FStStrNoPop var_114
  loc_BC51B8: FLdPr Me
  loc_BC51BB: MemLdI2 global_94
  loc_BC51BE: CI4UI1
  loc_BC51BF: FLdPr Me
  loc_BC51C2: MemLdI2 global_92
  loc_BC51C5: CI4UI1
  loc_BC51C6: FLdPr Me
  loc_BC51C9: MemLdStr global_88
  loc_BC51CC: Ary1LdPr
  loc_BC51CD: MemLdStr global_104
  loc_BC51D0: Ary1LdPr
  loc_BC51D1: MemLdStr global_0
  loc_BC51D4: ConcatStr
  loc_BC51D5: FStStrNoPop var_138
  loc_BC51D8: LitStr " - "
  loc_BC51DB: ConcatStr
  loc_BC51DC: FStStrNoPop var_13C
  loc_BC51DF: FLdPr Me
  loc_BC51E2: MemLdI2 global_94
  loc_BC51E5: CI4UI1
  loc_BC51E6: FLdPr Me
  loc_BC51E9: MemLdI2 global_92
  loc_BC51EC: CI4UI1
  loc_BC51ED: FLdPr Me
  loc_BC51F0: MemLdStr global_88
  loc_BC51F3: Ary1LdPr
  loc_BC51F4: MemLdStr global_104
  loc_BC51F7: Ary1LdPr
  loc_BC51F8: MemLdStr global_4
  loc_BC51FB: ConcatStr
  loc_BC51FC: FStStrNoPop var_140
  loc_BC51FF: LitStr " - Item: "
  loc_BC5202: ConcatStr
  loc_BC5203: CVarStr var_D0
  loc_BC5206: LitI4 &HFA
  loc_BC520B: FLdPr Me
  loc_BC520E: MemLdI2 global_94
  loc_BC5211: CI4UI1
  loc_BC5212: FLdPr Me
  loc_BC5215: MemLdI2 global_92
  loc_BC5218: CI4UI1
  loc_BC5219: FLdPr Me
  loc_BC521C: MemLdStr global_88
  loc_BC521F: AryLock
  loc_BC5222: Ary1LdPr
  loc_BC5223: MemLdStr global_104
  loc_BC5226: AryLock
  loc_BC5229: Ary1LdPr
  loc_BC522A: MemLdRfVar from_stack_1.global_8
  loc_BC522D: CVarRef
  loc_BC5232: FLdRfVar var_B0
  loc_BC5235: ImpAdCallFPR4  = Left(, )
  loc_BC523A: AryUnlock
  loc_BC523D: AryUnlock
  loc_BC5240: FLdRfVar var_B0
  loc_BC5243: ConcatVar var_F0
  loc_BC5247: LitVarStr var_C0, " - Total: "
  loc_BC524C: ConcatVar var_110
  loc_BC5250: FLdPr Me
  loc_BC5253: MemLdI2 global_94
  loc_BC5256: CI4UI1
  loc_BC5257: FLdPr Me
  loc_BC525A: MemLdI2 global_92
  loc_BC525D: CI4UI1
  loc_BC525E: FLdPr Me
  loc_BC5261: MemLdStr global_88
  loc_BC5264: Ary1LdPr
  loc_BC5265: MemLdStr global_104
  loc_BC5268: Ary1LdPr
  loc_BC5269: MemLdStr global_12
  loc_BC526C: CVarStr var_E0
  loc_BC526F: ConcatVar var_124
  loc_BC5273: LitVarStr var_100, "<br>"
  loc_BC5278: ConcatVar var_134
  loc_BC527C: PopAdLdVar
  loc_BC527D: FLdPr Me
  loc_BC5280: MemLdRfVar from_stack_1.htmFile
  loc_BC5283: LdPrVar
  loc_BC5285: LateMemCall
  loc_BC528B: FFreeStr var_8C = "": var_114 = "": var_138 = "": var_13C = ""
  loc_BC5298: FFreeVar var_D0 = "": var_B0 = "": var_F0 = "": var_110 = "": var_124 = ""
  loc_BC52A7: FLdPr Me
  loc_BC52AA: MemLdRfVar from_stack_1.global_94
  loc_BC52AD: NextI2 var_168, loc_BC518E
  loc_BC52B2: FLdRfVar var_152
  loc_BC52B5: FLdPr Me
  loc_BC52B8: VCallAd Control_ID_ChkSoloEncabezados
  loc_BC52BB: FStAdFunc var_150
  loc_BC52BE: FLdPr var_150
  loc_BC52C1:  = Me.Value
  loc_BC52C6: FLdI2 var_152
  loc_BC52C9: CI4UI1
  loc_BC52CA: LitI4 1
  loc_BC52CF: EqI4
  loc_BC52D0: FFree1Ad var_150
  loc_BC52D3: BranchF loc_BC52EA
  loc_BC52D6: LitVarStr var_9C, "        <br>"
  loc_BC52DB: PopAdLdVar
  loc_BC52DC: FLdPr Me
  loc_BC52DF: MemLdRfVar from_stack_1.htmFile
  loc_BC52E2: LdPrVar
  loc_BC52E4: LateMemCall
  loc_BC52EA: LitVarStr var_9C, "        </td>"
  loc_BC52EF: PopAdLdVar
  loc_BC52F0: FLdPr Me
  loc_BC52F3: MemLdRfVar from_stack_1.htmFile
  loc_BC52F6: LdPrVar
  loc_BC52F8: LateMemCall
  loc_BC52FE: LitVarStr var_9C, "      </tr>"
  loc_BC5303: PopAdLdVar
  loc_BC5304: FLdPr Me
  loc_BC5307: MemLdRfVar from_stack_1.htmFile
  loc_BC530A: LdPrVar
  loc_BC530C: LateMemCall
  loc_BC5312: LitVarStr var_9C, "    </table></td></tr>"
  loc_BC5317: PopAdLdVar
  loc_BC5318: FLdPr Me
  loc_BC531B: MemLdRfVar from_stack_1.htmFile
  loc_BC531E: LdPrVar
  loc_BC5320: LateMemCall
  loc_BC5326: FLdPr Me
  loc_BC5329: MemLdI2 global_92
  loc_BC532C: CI4UI1
  loc_BC532D: FLdPr Me
  loc_BC5330: MemLdStr global_88
  loc_BC5333: Ary1LdPr
  loc_BC5334: MemLdI2 global_108
  loc_BC5337: FLdRfVar var_152
  loc_BC533A: FLdPr Me
  loc_BC533D: VCallAd Control_ID_ChkOcultarOC
  loc_BC5340: FStAdFunc var_150
  loc_BC5343: FLdPr var_150
  loc_BC5346:  = Me.Value
  loc_BC534B: FLdI2 var_152
  loc_BC534E: CI4UI1
  loc_BC534F: LitI4 0
  loc_BC5354: EqI4
  loc_BC5355: AndI4
  loc_BC5356: FFree1Ad var_150
  loc_BC5359: BranchF loc_BC5590
  loc_BC535C: LitVarStr var_9C, "    <tr><td colspan=""11""><table class=""LineaDato"" border=""0"" align=""center"">"
  loc_BC5361: PopAdLdVar
  loc_BC5362: FLdPr Me
  loc_BC5365: MemLdRfVar from_stack_1.htmFile
  loc_BC5368: LdPrVar
  loc_BC536A: LateMemCall
  loc_BC5370: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_BC5375: PopAdLdVar
  loc_BC5376: FLdPr Me
  loc_BC5379: MemLdRfVar from_stack_1.htmFile
  loc_BC537C: LdPrVar
  loc_BC537E: LateMemCall
  loc_BC5384: LitVarStr var_9C, "        <td>Tiene la/s siguiente/s ORDEN DE COMPRA:</td>"
  loc_BC5389: PopAdLdVar
  loc_BC538A: FLdPr Me
  loc_BC538D: MemLdRfVar from_stack_1.htmFile
  loc_BC5390: LdPrVar
  loc_BC5392: LateMemCall
  loc_BC5398: LitVarStr var_9C, "      </tr>"
  loc_BC539D: PopAdLdVar
  loc_BC539E: FLdPr Me
  loc_BC53A1: MemLdRfVar from_stack_1.htmFile
  loc_BC53A4: LdPrVar
  loc_BC53A6: LateMemCall
  loc_BC53AC: LitVarStr var_9C, "      <tr>"
  loc_BC53B1: PopAdLdVar
  loc_BC53B2: FLdPr Me
  loc_BC53B5: MemLdRfVar from_stack_1.htmFile
  loc_BC53B8: LdPrVar
  loc_BC53BA: LateMemCall
  loc_BC53C0: LitVarStr var_9C, "        <td>"
  loc_BC53C5: PopAdLdVar
  loc_BC53C6: FLdPr Me
  loc_BC53C9: MemLdRfVar from_stack_1.htmFile
  loc_BC53CC: LdPrVar
  loc_BC53CE: LateMemCall
  loc_BC53D4: LitI2_Byte 1
  loc_BC53D6: FLdPr Me
  loc_BC53D9: MemLdRfVar from_stack_1.global_94
  loc_BC53DC: FLdPr Me
  loc_BC53DF: MemLdI2 global_92
  loc_BC53E2: CI4UI1
  loc_BC53E3: FLdPr Me
  loc_BC53E6: MemLdStr global_88
  loc_BC53E9: Ary1LdPr
  loc_BC53EA: MemLdStr global_112
  loc_BC53ED: LitI2_Byte 1
  loc_BC53EF: FnUBound
  loc_BC53F1: CI2I4
  loc_BC53F2: ForI2 var_180
  loc_BC53F8: LitStr "O.C. "
  loc_BC53FB: FLdPr Me
  loc_BC53FE: MemLdI2 global_94
  loc_BC5401: CI4UI1
  loc_BC5402: FLdPr Me
  loc_BC5405: MemLdI2 global_92
  loc_BC5408: CI4UI1
  loc_BC5409: FLdPr Me
  loc_BC540C: MemLdStr global_88
  loc_BC540F: Ary1LdPr
  loc_BC5410: MemLdStr global_112
  loc_BC5413: Ary1LdPr
  loc_BC5414: MemLdStr global_16
  loc_BC5417: ConcatStr
  loc_BC5418: FStStrNoPop var_8C
  loc_BC541B: LitStr " - "
  loc_BC541E: ConcatStr
  loc_BC541F: FStStrNoPop var_114
  loc_BC5422: FLdPr Me
  loc_BC5425: MemLdI2 global_94
  loc_BC5428: CI4UI1
  loc_BC5429: FLdPr Me
  loc_BC542C: MemLdI2 global_92
  loc_BC542F: CI4UI1
  loc_BC5430: FLdPr Me
  loc_BC5433: MemLdStr global_88
  loc_BC5436: Ary1LdPr
  loc_BC5437: MemLdStr global_112
  loc_BC543A: Ary1LdPr
  loc_BC543B: MemLdStr global_0
  loc_BC543E: ConcatStr
  loc_BC543F: FStStrNoPop var_138
  loc_BC5442: LitStr " - "
  loc_BC5445: ConcatStr
  loc_BC5446: FStStrNoPop var_13C
  loc_BC5449: FLdPr Me
  loc_BC544C: MemLdI2 global_94
  loc_BC544F: CI4UI1
  loc_BC5450: FLdPr Me
  loc_BC5453: MemLdI2 global_92
  loc_BC5456: CI4UI1
  loc_BC5457: FLdPr Me
  loc_BC545A: MemLdStr global_88
  loc_BC545D: Ary1LdPr
  loc_BC545E: MemLdStr global_112
  loc_BC5461: Ary1LdPr
  loc_BC5462: MemLdStr global_4
  loc_BC5465: ConcatStr
  loc_BC5466: FStStrNoPop var_140
  loc_BC5469: LitStr " - Item: "
  loc_BC546C: ConcatStr
  loc_BC546D: CVarStr var_D0
  loc_BC5470: LitI4 &HFA
  loc_BC5475: FLdPr Me
  loc_BC5478: MemLdI2 global_94
  loc_BC547B: CI4UI1
  loc_BC547C: FLdPr Me
  loc_BC547F: MemLdI2 global_92
  loc_BC5482: CI4UI1
  loc_BC5483: FLdPr Me
  loc_BC5486: MemLdStr global_88
  loc_BC5489: AryLock
  loc_BC548C: Ary1LdPr
  loc_BC548D: MemLdStr global_112
  loc_BC5490: AryLock
  loc_BC5493: Ary1LdPr
  loc_BC5494: MemLdRfVar from_stack_1.global_8
  loc_BC5497: CVarRef
  loc_BC549C: FLdRfVar var_B0
  loc_BC549F: ImpAdCallFPR4  = Left(, )
  loc_BC54A4: AryUnlock
  loc_BC54A7: AryUnlock
  loc_BC54AA: FLdRfVar var_B0
  loc_BC54AD: ConcatVar var_F0
  loc_BC54B1: LitVarStr var_C0, " - Total: "
  loc_BC54B6: ConcatVar var_110
  loc_BC54BA: FLdPr Me
  loc_BC54BD: MemLdI2 global_94
  loc_BC54C0: CI4UI1
  loc_BC54C1: FLdPr Me
  loc_BC54C4: MemLdI2 global_92
  loc_BC54C7: CI4UI1
  loc_BC54C8: FLdPr Me
  loc_BC54CB: MemLdStr global_88
  loc_BC54CE: Ary1LdPr
  loc_BC54CF: MemLdStr global_112
  loc_BC54D2: Ary1LdPr
  loc_BC54D3: MemLdStr global_12
  loc_BC54D6: CVarStr var_E0
  loc_BC54D9: ConcatVar var_124
  loc_BC54DD: LitVarStr var_100, "<br>"
  loc_BC54E2: ConcatVar var_134
  loc_BC54E6: PopAdLdVar
  loc_BC54E7: FLdPr Me
  loc_BC54EA: MemLdRfVar from_stack_1.htmFile
  loc_BC54ED: LdPrVar
  loc_BC54EF: LateMemCall
  loc_BC54F5: FFreeStr var_8C = "": var_114 = "": var_138 = "": var_13C = ""
  loc_BC5502: FFreeVar var_D0 = "": var_B0 = "": var_F0 = "": var_110 = "": var_124 = ""
  loc_BC5511: FLdPr Me
  loc_BC5514: MemLdRfVar from_stack_1.global_94
  loc_BC5517: NextI2 var_180, loc_BC53F8
  loc_BC551C: FLdRfVar var_152
  loc_BC551F: FLdPr Me
  loc_BC5522: VCallAd Control_ID_ChkSoloEncabezados
  loc_BC5525: FStAdFunc var_150
  loc_BC5528: FLdPr var_150
  loc_BC552B:  = Me.Value
  loc_BC5530: FLdI2 var_152
  loc_BC5533: CI4UI1
  loc_BC5534: LitI4 1
  loc_BC5539: EqI4
  loc_BC553A: FFree1Ad var_150
  loc_BC553D: BranchF loc_BC5554
  loc_BC5540: LitVarStr var_9C, "        <br>"
  loc_BC5545: PopAdLdVar
  loc_BC5546: FLdPr Me
  loc_BC5549: MemLdRfVar from_stack_1.htmFile
  loc_BC554C: LdPrVar
  loc_BC554E: LateMemCall
  loc_BC5554: LitVarStr var_9C, "        </td>"
  loc_BC5559: PopAdLdVar
  loc_BC555A: FLdPr Me
  loc_BC555D: MemLdRfVar from_stack_1.htmFile
  loc_BC5560: LdPrVar
  loc_BC5562: LateMemCall
  loc_BC5568: LitVarStr var_9C, "      </tr>"
  loc_BC556D: PopAdLdVar
  loc_BC556E: FLdPr Me
  loc_BC5571: MemLdRfVar from_stack_1.htmFile
  loc_BC5574: LdPrVar
  loc_BC5576: LateMemCall
  loc_BC557C: LitVarStr var_9C, "    </table></td></tr>"
  loc_BC5581: PopAdLdVar
  loc_BC5582: FLdPr Me
  loc_BC5585: MemLdRfVar from_stack_1.htmFile
  loc_BC5588: LdPrVar
  loc_BC558A: LateMemCall
  loc_BC5590: FLdRfVar var_152
  loc_BC5593: FLdPr Me
  loc_BC5596: VCallAd Control_ID_ChkSoloEncabezados
  loc_BC5599: FStAdFunc var_150
  loc_BC559C: FLdPr var_150
  loc_BC559F:  = Me.Value
  loc_BC55A4: FLdI2 var_152
  loc_BC55A7: CI4UI1
  loc_BC55A8: LitI4 0
  loc_BC55AD: EqI4
  loc_BC55AE: FFree1Ad var_150
  loc_BC55B1: BranchF loc_BC56A4
  loc_BC55B4: LitVarStr var_9C, "    <tr valign=""top"">"
  loc_BC55B9: PopAdLdVar
  loc_BC55BA: FLdPr Me
  loc_BC55BD: MemLdRfVar from_stack_1.htmFile
  loc_BC55C0: LdPrVar
  loc_BC55C2: LateMemCall
  loc_BC55C8: LitVarStr var_9C, "      <td colspan=""12""><p>&nbsp;</p>"
  loc_BC55CD: PopAdLdVar
  loc_BC55CE: FLdPr Me
  loc_BC55D1: MemLdRfVar from_stack_1.htmFile
  loc_BC55D4: LdPrVar
  loc_BC55D6: LateMemCall
  loc_BC55DC: LitVarStr var_9C, "        <p>&nbsp;</p>"
  loc_BC55E1: PopAdLdVar
  loc_BC55E2: FLdPr Me
  loc_BC55E5: MemLdRfVar from_stack_1.htmFile
  loc_BC55E8: LdPrVar
  loc_BC55EA: LateMemCall
  loc_BC55F0: LitVarStr var_9C, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_BC55F5: PopAdLdVar
  loc_BC55F6: FLdPr Me
  loc_BC55F9: MemLdRfVar from_stack_1.htmFile
  loc_BC55FC: LdPrVar
  loc_BC55FE: LateMemCall
  loc_BC5604: LitVarStr var_9C, "         <tr align=""center"">"
  loc_BC5609: PopAdLdVar
  loc_BC560A: FLdPr Me
  loc_BC560D: MemLdRfVar from_stack_1.htmFile
  loc_BC5610: LdPrVar
  loc_BC5612: LateMemCall
  loc_BC5618: LitVarStr var_9C, "         </tr>"
  loc_BC561D: PopAdLdVar
  loc_BC561E: FLdPr Me
  loc_BC5621: MemLdRfVar from_stack_1.htmFile
  loc_BC5624: LdPrVar
  loc_BC5626: LateMemCall
  loc_BC562C: LitVarStr var_9C, "         <tr>"
  loc_BC5631: PopAdLdVar
  loc_BC5632: FLdPr Me
  loc_BC5635: MemLdRfVar from_stack_1.htmFile
  loc_BC5638: LdPrVar
  loc_BC563A: LateMemCall
  loc_BC5640: LitVarStr var_9C, "         </tr>"
  loc_BC5645: PopAdLdVar
  loc_BC5646: FLdPr Me
  loc_BC5649: MemLdRfVar from_stack_1.htmFile
  loc_BC564C: LdPrVar
  loc_BC564E: LateMemCall
  loc_BC5654: LitVarStr var_9C, "         <tr>"
  loc_BC5659: PopAdLdVar
  loc_BC565A: FLdPr Me
  loc_BC565D: MemLdRfVar from_stack_1.htmFile
  loc_BC5660: LdPrVar
  loc_BC5662: LateMemCall
  loc_BC5668: LitVarStr var_9C, "         </tr>"
  loc_BC566D: PopAdLdVar
  loc_BC566E: FLdPr Me
  loc_BC5671: MemLdRfVar from_stack_1.htmFile
  loc_BC5674: LdPrVar
  loc_BC5676: LateMemCall
  loc_BC567C: LitVarStr var_9C, "        </table></td>"
  loc_BC5681: PopAdLdVar
  loc_BC5682: FLdPr Me
  loc_BC5685: MemLdRfVar from_stack_1.htmFile
  loc_BC5688: LdPrVar
  loc_BC568A: LateMemCall
  loc_BC5690: LitVarStr var_9C, "</table>"
  loc_BC5695: PopAdLdVar
  loc_BC5696: FLdPr Me
  loc_BC5699: MemLdRfVar from_stack_1.htmFile
  loc_BC569C: LdPrVar
  loc_BC569E: LateMemCall
  loc_BC56A4: LitVarStr var_9C, "</table>"
  loc_BC56A9: PopAdLdVar
  loc_BC56AA: FLdPr Me
  loc_BC56AD: MemLdRfVar from_stack_1.htmFile
  loc_BC56B0: LdPrVar
  loc_BC56B2: LateMemCall
  loc_BC56B8: ExitProcHresult
  loc_BC56B9: SetLastSystemError
  loc_BC56BA: DOC
End Function

Private Function Proc_198_42_973B70() '973B70
  'Data Table: 4E2680
  loc_973B44: LitVarStr var_94, "</body>"
  loc_973B49: PopAdLdVar
  loc_973B4A: FLdPr Me
  loc_973B4D: MemLdRfVar from_stack_1.htmFile
  loc_973B50: LdPrVar
  loc_973B52: LateMemCall
  loc_973B58: LitVarStr var_94, "</html>"
  loc_973B5D: PopAdLdVar
  loc_973B5E: FLdPr Me
  loc_973B61: MemLdRfVar from_stack_1.htmFile
  loc_973B64: LdPrVar
  loc_973B66: LateMemCall
  loc_973B6C: ExitProcHresult
  loc_973B6D: ConcatStr
  loc_973B6E: FStStr Me78
End Function
