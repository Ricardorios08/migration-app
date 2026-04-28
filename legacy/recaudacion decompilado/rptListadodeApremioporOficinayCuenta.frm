VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeApremioporOficinayCuenta
  Caption = "Listado de Apremio por Oficina y Cuenta"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeApremioporOficinayCuenta.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10116
  ClientHeight = 3516
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame6
    Left = 120
    Top = 0
    Width = 9855
    Height = 1935
    TabIndex = 0
    Begin VB.TextBox NumeCtaTxt
      ForeColor = &HFF0000&
      Left = 4560
      Top = 600
      Width = 2175
      Height = 345
      TabIndex = 4
      MaxLength = 11
    End
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1200
      Top = 600
      Width = 2295
      Height = 396
      TabIndex = 2
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8040
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 5
    End
    Begin VB.Label Label3
      Caption = "Cuenta:"
      Left = 3600
      Top = 600
      Width = 840
      Height = 300
      TabIndex = 3
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
    Begin VB.Label Label5
      Caption = "Oficina:"
      Left = 360
      Top = 600
      Width = 795
      Height = 300
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3264
    Width = 10116
    Height = 252
    TabIndex = 14
    OleObjectBlob = "rptListadodeApremioporOficinayCuenta.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8520
    Top = 2280
    Width = 855
    Height = 735
    TabIndex = 12
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptListadodeApremioporOficinayCuenta.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeApremioporOficinayCuenta.frx":0B9C
    Left = 9120
    Top = 2040
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2040
    Width = 3495
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 11
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 4095
    Height = 1215
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 7
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8520
    Top = 2640
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptListadodeApremioporOficinayCuenta.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeApremioporOficinayCuenta"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1D140
  'Data Table: 46DA38
  loc_A1D108: FLdPr Me
  loc_A1D10B: VCallAd Control_ID_statusBar
  loc_A1D10E: FStAdFunc var_88
  loc_A1D111: FLdPr var_88
  loc_A1D114: LateIdLdVar var_98 DispID_1 0
  loc_A1D11B: CStrVarTmp
  loc_A1D11C: CVarStr var_A8
  loc_A1D11F: PopAdLdVar
  loc_A1D120: FLdPr Me
  loc_A1D123: VCallAd Control_ID_statusBar
  loc_A1D126: FStAdFunc var_BC
  loc_A1D129: FLdPr var_BC
  loc_A1D12C: LateIdSt
  loc_A1D131: FFreeAd var_88 = ""
  loc_A1D138: FFreeVar var_98 = ""
  loc_A1D13F: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E1A4C
  'Data Table: 46DA38
  loc_9E1A30: LitI2_Byte &HFF
  loc_9E1A32: LitI2_Byte 0
  loc_9E1A34: ILdRf Me
  loc_9E1A37: CastAd
  loc_9E1A3A: FStAdFunc var_88
  loc_9E1A3D: FLdRfVar var_88
  loc_9E1A40: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E1A45: FFree1Ad var_88
  loc_9E1A48: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() '9C49B8
  'Data Table: 46DA38
  loc_9C49A4: FLdPr Me
  loc_9C49A7: VCallAd Control_ID_NumeCtaTxt
  loc_9C49AA: CVarAd
  loc_9C49AE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C49B3: FFree1Var var_94 = ""
  loc_9C49B6: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'B21C74
  'Data Table: 46DA38
  loc_B219D4: ILdI2 KeyAscii
  loc_B219D7: CI4UI1
  loc_B219D8: LitI4 &H20
  loc_B219DD: EqI4
  loc_B219DE: BranchF loc_B21C70
  loc_B219E1: LitI2_Byte 0
  loc_B219E3: IStI2 KeyAscii
  loc_B219E6: FLdRfVar var_8A
  loc_B219E9: FLdPr Me
  loc_B219EC: VCallAd Control_ID_OficinaCbo
  loc_B219EF: FStAdFunc var_88
  loc_B219F2: FLdPr var_88
  loc_B219F5:  = Me.ListIndex
  loc_B219FA: FLdI2 var_8A
  loc_B219FD: FStI2 var_8C
  loc_B21A00: FFree1Ad var_88
  loc_B21A03: FLdI2 var_8C
  loc_B21A06: LitI2_Byte 0
  loc_B21A08: EqI2
  loc_B21A09: BranchF loc_B21A17
  loc_B21A0C: LitI2_Byte 1
  loc_B21A0E: CUI1I2
  loc_B21A10: ImpAdStUI1 MemVar_D93038
  loc_B21A14: Branch loc_B21A50
  loc_B21A17: FLdI2 var_8C
  loc_B21A1A: LitI2_Byte 1
  loc_B21A1C: EqI2
  loc_B21A1D: BranchF loc_B21A2B
  loc_B21A20: LitI2_Byte 2
  loc_B21A22: CUI1I2
  loc_B21A24: ImpAdStUI1 MemVar_D93038
  loc_B21A28: Branch loc_B21A50
  loc_B21A2B: FLdI2 var_8C
  loc_B21A2E: LitI2_Byte 2
  loc_B21A30: EqI2
  loc_B21A31: BranchF loc_B21A3F
  loc_B21A34: LitI2_Byte 3
  loc_B21A36: CUI1I2
  loc_B21A38: ImpAdStUI1 MemVar_D93038
  loc_B21A3C: Branch loc_B21A50
  loc_B21A3F: FLdI2 var_8C
  loc_B21A42: LitI2_Byte 3
  loc_B21A44: EqI2
  loc_B21A45: BranchF loc_B21A50
  loc_B21A48: LitI2_Byte 4
  loc_B21A4A: CUI1I2
  loc_B21A4C: ImpAdStUI1 MemVar_D93038
  loc_B21A50: LitVar_Missing var_AC
  loc_B21A53: PopAdLdVar
  loc_B21A54: LitVarI4
  loc_B21A5C: PopAdLdVar
  loc_B21A5D: ImpAdLdRf MemVar_D94034
  loc_B21A60: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21A63: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B21A68: FLdRfVar var_B0
  loc_B21A6B: FLdRfVar var_88
  loc_B21A6E: ImpAdLdRf MemVar_D94034
  loc_B21A71: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21A74: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B21A79: FLdPr var_88
  loc_B21A7C: from_stack_1 = clsbase.RecordCount
  loc_B21A81: ILdRf var_B0
  loc_B21A84: LitI4 0
  loc_B21A89: GtI4
  loc_B21A8A: FFree1Ad var_88
  loc_B21A8D: BranchF loc_B21C5E
  loc_B21A90: FLdRfVar var_CC
  loc_B21A93: FLdRfVar var_BC
  loc_B21A96: LitVarStr var_9C, "CodiOfic"
  loc_B21A9B: PopAdLdVar
  loc_B21A9C: FLdRfVar var_B8
  loc_B21A9F: FLdRfVar var_B4
  loc_B21AA2: FLdRfVar var_88
  loc_B21AA5: ImpAdLdRf MemVar_D94034
  loc_B21AA8: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21AAB: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B21AB0: FLdPr var_88
  loc_B21AB3: from_stack_1v = clsbase.RsFrmGet()
  loc_B21AB8: FLdPr var_B4
  loc_B21ABB:  = Me.Fields
  loc_B21AC0: FLdPr var_B8
  loc_B21AC3: from_stack_2 = Me.Item(from_stack_1)
  loc_B21AC8: FLdPr var_BC
  loc_B21ACB:  = Me.Value
  loc_B21AD0: FLdRfVar var_CC
  loc_B21AD3: FStVar var_DC
  loc_B21AD7: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B21AE2: FLdRfVar var_DC
  loc_B21AE5: LitVarI2 var_9C, 1
  loc_B21AEA: HardType
  loc_B21AEB: EqVarBool
  loc_B21AED: BranchF loc_B21B27
  loc_B21AF0: FLdRfVar var_E0
  loc_B21AF3: LitI2_Byte 0
  loc_B21AF5: FLdPr Me
  loc_B21AF8: VCallAd Control_ID_OficinaCbo
  loc_B21AFB: FStAdFunc var_88
  loc_B21AFE: FLdPr var_88
  loc_B21B01: from_stack_2 = Me.List(from_stack_1)
  loc_B21B06: ILdRf var_E0
  loc_B21B09: FLdPr Me
  loc_B21B0C: VCallAd Control_ID_OficinaCbo
  loc_B21B0F: FStAdFunc var_B4
  loc_B21B12: FLdPr var_B4
  loc_B21B15: Me.Text = from_stack_1
  loc_B21B1A: FFree1Str var_E0
  loc_B21B1D: FFreeAd var_88 = ""
  loc_B21B24: Branch loc_B21BF3
  loc_B21B27: FLdRfVar var_DC
  loc_B21B2A: LitVarI2 var_9C, 2
  loc_B21B2F: HardType
  loc_B21B30: EqVarBool
  loc_B21B32: BranchF loc_B21B6C
  loc_B21B35: FLdRfVar var_E0
  loc_B21B38: LitI2_Byte 1
  loc_B21B3A: FLdPr Me
  loc_B21B3D: VCallAd Control_ID_OficinaCbo
  loc_B21B40: FStAdFunc var_88
  loc_B21B43: FLdPr var_88
  loc_B21B46: from_stack_2 = Me.List(from_stack_1)
  loc_B21B4B: ILdRf var_E0
  loc_B21B4E: FLdPr Me
  loc_B21B51: VCallAd Control_ID_OficinaCbo
  loc_B21B54: FStAdFunc var_B4
  loc_B21B57: FLdPr var_B4
  loc_B21B5A: Me.Text = from_stack_1
  loc_B21B5F: FFree1Str var_E0
  loc_B21B62: FFreeAd var_88 = ""
  loc_B21B69: Branch loc_B21BF3
  loc_B21B6C: FLdRfVar var_DC
  loc_B21B6F: LitVarI2 var_9C, 3
  loc_B21B74: HardType
  loc_B21B75: EqVarBool
  loc_B21B77: BranchF loc_B21BB1
  loc_B21B7A: FLdRfVar var_E0
  loc_B21B7D: LitI2_Byte 2
  loc_B21B7F: FLdPr Me
  loc_B21B82: VCallAd Control_ID_OficinaCbo
  loc_B21B85: FStAdFunc var_88
  loc_B21B88: FLdPr var_88
  loc_B21B8B: from_stack_2 = Me.List(from_stack_1)
  loc_B21B90: ILdRf var_E0
  loc_B21B93: FLdPr Me
  loc_B21B96: VCallAd Control_ID_OficinaCbo
  loc_B21B99: FStAdFunc var_B4
  loc_B21B9C: FLdPr var_B4
  loc_B21B9F: Me.Text = from_stack_1
  loc_B21BA4: FFree1Str var_E0
  loc_B21BA7: FFreeAd var_88 = ""
  loc_B21BAE: Branch loc_B21BF3
  loc_B21BB1: FLdRfVar var_DC
  loc_B21BB4: LitVarI2 var_9C, 4
  loc_B21BB9: HardType
  loc_B21BBA: EqVarBool
  loc_B21BBC: BranchF loc_B21BF3
  loc_B21BBF: FLdRfVar var_E0
  loc_B21BC2: LitI2_Byte 3
  loc_B21BC4: FLdPr Me
  loc_B21BC7: VCallAd Control_ID_OficinaCbo
  loc_B21BCA: FStAdFunc var_88
  loc_B21BCD: FLdPr var_88
  loc_B21BD0: from_stack_2 = Me.List(from_stack_1)
  loc_B21BD5: ILdRf var_E0
  loc_B21BD8: FLdPr Me
  loc_B21BDB: VCallAd Control_ID_OficinaCbo
  loc_B21BDE: FStAdFunc var_B4
  loc_B21BE1: FLdPr var_B4
  loc_B21BE4: Me.Text = from_stack_1
  loc_B21BE9: FFree1Str var_E0
  loc_B21BEC: FFreeAd var_88 = ""
  loc_B21BF3: FLdRfVar var_CC
  loc_B21BF6: FLdRfVar var_BC
  loc_B21BF9: LitVarStr var_9C, "CuenCtct"
  loc_B21BFE: PopAdLdVar
  loc_B21BFF: FLdRfVar var_B8
  loc_B21C02: FLdRfVar var_B4
  loc_B21C05: FLdRfVar var_88
  loc_B21C08: ImpAdLdRf MemVar_D94034
  loc_B21C0B: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21C0E: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B21C13: FLdPr var_88
  loc_B21C16: from_stack_1v = clsbase.RsFrmGet()
  loc_B21C1B: FLdPr var_B4
  loc_B21C1E:  = Me.Fields
  loc_B21C23: FLdPr var_B8
  loc_B21C26: from_stack_2 = Me.Item(from_stack_1)
  loc_B21C2B: FLdPr var_BC
  loc_B21C2E:  = Me.Value
  loc_B21C33: FLdRfVar var_CC
  loc_B21C36: CStrVarTmp
  loc_B21C37: FStStrNoPop var_E0
  loc_B21C3A: FLdPr Me
  loc_B21C3D: VCallAd Control_ID_NumeCtaTxt
  loc_B21C40: FStAdFunc var_E4
  loc_B21C43: FLdPr var_E4
  loc_B21C46: Me.Text = from_stack_1
  loc_B21C4B: FFree1Str var_E0
  loc_B21C4E: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B21C5B: FFree1Var var_CC = ""
  loc_B21C5E: FLdPr Me
  loc_B21C61: VCallAd Control_ID_NumeCtaTxt
  loc_B21C64: CVarAd
  loc_B21C68: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B21C6D: FFree1Var var_CC = ""
  loc_B21C70: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'A64610
  'Data Table: 46DA38
  loc_A645A4: FLdRfVar var_8A
  loc_A645A7: FLdPr Me
  loc_A645AA: VCallAd Control_ID_OficinaCbo
  loc_A645AD: FStAdFunc var_88
  loc_A645B0: FLdPr var_88
  loc_A645B3:  = Me.ListIndex
  loc_A645B8: FLdI2 var_8A
  loc_A645BB: FStI2 var_8C
  loc_A645BE: FFree1Ad var_88
  loc_A645C1: FLdI2 var_8C
  loc_A645C4: LitI2_Byte 0
  loc_A645C6: EqI2
  loc_A645C7: BranchF loc_A645D5
  loc_A645CA: LitI2_Byte 1
  loc_A645CC: CUI1I2
  loc_A645CE: ImpAdStUI1 MemVar_D93038
  loc_A645D2: Branch loc_A6460E
  loc_A645D5: FLdI2 var_8C
  loc_A645D8: LitI2_Byte 1
  loc_A645DA: EqI2
  loc_A645DB: BranchF loc_A645E9
  loc_A645DE: LitI2_Byte 2
  loc_A645E0: CUI1I2
  loc_A645E2: ImpAdStUI1 MemVar_D93038
  loc_A645E6: Branch loc_A6460E
  loc_A645E9: FLdI2 var_8C
  loc_A645EC: LitI2_Byte 2
  loc_A645EE: EqI2
  loc_A645EF: BranchF loc_A645FD
  loc_A645F2: LitI2_Byte 3
  loc_A645F4: CUI1I2
  loc_A645F6: ImpAdStUI1 MemVar_D93038
  loc_A645FA: Branch loc_A6460E
  loc_A645FD: FLdI2 var_8C
  loc_A64600: LitI2_Byte 3
  loc_A64602: EqI2
  loc_A64603: BranchF loc_A6460E
  loc_A64606: LitI2_Byte 4
  loc_A64608: CUI1I2
  loc_A6460A: ImpAdStUI1 MemVar_D93038
  loc_A6460E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A097CC
  'Data Table: 46DA38
  loc_A09794: LitI2_Byte 0
  loc_A09796: FLdPr Me
  loc_A09799: MemStI2 bGenerado
  loc_A0979C: LitI2_Byte 0
  loc_A0979E: ILdRf Me
  loc_A097A1: CastAd
  loc_A097A4: FStAdFunc var_88
  loc_A097A7: FLdRfVar var_88
  loc_A097AA: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A097AF: FFree1Ad var_88
  loc_A097B2: Call HabilitarCriterio()
  loc_A097B7: ILdRf Me
  loc_A097BA: CastAd
  loc_A097BD: FStAdFunc var_88
  loc_A097C0: FLdRfVar var_88
  loc_A097C3: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A097C8: FFree1Ad var_88
  loc_A097CB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CDE5C
  'Data Table: 46DA38
  loc_9CDE44: ILdRf Me
  loc_9CDE47: CastAd
  loc_9CDE4A: FStAdFunc var_88
  loc_9CDE4D: FLdRfVar var_88
  loc_9CDE50: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CDE55: FFree1Ad var_88
  loc_9CDE58: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A02054
  'Data Table: 46DA38
  loc_A02024: LitVarStr var_94, "Cerrando..."
  loc_A02029: PopAdLdVar
  loc_A0202A: FLdPr Me
  loc_A0202D: VCallAd Control_ID_statusBar
  loc_A02030: FStAdFunc var_A8
  loc_A02033: FLdPr var_A8
  loc_A02036: LateIdSt
  loc_A0203B: FFree1Ad var_A8
  loc_A0203E: ILdRf Me
  loc_A02041: FStAdNoPop
  loc_A02045: ImpAdLdRf MemVar_D9C5D8
  loc_A02048: NewIfNullPr Global
  loc_A0204B: Global.Unload from_stack_1
  loc_A02050: FFree1Ad var_A8
  loc_A02053: ExitProcHresult
End Sub

Private Sub Form_Load() 'A93B0C
  'Data Table: 46DA38
  loc_A93A58: ILdRf Me
  loc_A93A5B: CastAd
  loc_A93A5E: FStAdFunc var_88
  loc_A93A61: FLdRfVar var_88
  loc_A93A64: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A93A69: FFree1Ad var_88
  loc_A93A6C: Call cmdNueva_Click()
  loc_A93A71: LitVar_Missing var_98
  loc_A93A74: PopAdLdVar
  loc_A93A75: LitStr "Inmueble"
  loc_A93A78: FLdPr Me
  loc_A93A7B: VCallAd Control_ID_OficinaCbo
  loc_A93A7E: FStAdFunc var_88
  loc_A93A81: FLdPr var_88
  loc_A93A84: Me.AddItem from_stack_1, from_stack_2
  loc_A93A89: FFree1Ad var_88
  loc_A93A8C: LitVar_Missing var_98
  loc_A93A8F: PopAdLdVar
  loc_A93A90: LitStr "Comercio"
  loc_A93A93: FLdPr Me
  loc_A93A96: VCallAd Control_ID_OficinaCbo
  loc_A93A99: FStAdFunc var_88
  loc_A93A9C: FLdPr var_88
  loc_A93A9F: Me.AddItem from_stack_1, from_stack_2
  loc_A93AA4: FFree1Ad var_88
  loc_A93AA7: LitVar_Missing var_98
  loc_A93AAA: PopAdLdVar
  loc_A93AAB: LitStr "Deudores Varios"
  loc_A93AAE: FLdPr Me
  loc_A93AB1: VCallAd Control_ID_OficinaCbo
  loc_A93AB4: FStAdFunc var_88
  loc_A93AB7: FLdPr var_88
  loc_A93ABA: Me.AddItem from_stack_1, from_stack_2
  loc_A93ABF: FFree1Ad var_88
  loc_A93AC2: LitVar_Missing var_98
  loc_A93AC5: PopAdLdVar
  loc_A93AC6: LitStr "Cementerio"
  loc_A93AC9: FLdPr Me
  loc_A93ACC: VCallAd Control_ID_OficinaCbo
  loc_A93ACF: FStAdFunc var_88
  loc_A93AD2: FLdPr var_88
  loc_A93AD5: Me.AddItem from_stack_1, from_stack_2
  loc_A93ADA: FFree1Ad var_88
  loc_A93ADD: LitI2_Byte 0
  loc_A93ADF: FLdPr Me
  loc_A93AE2: VCallAd Control_ID_OficinaCbo
  loc_A93AE5: FStAdFunc var_88
  loc_A93AE8: FLdPr var_88
  loc_A93AEB: Me.ListIndex = from_stack_1
  loc_A93AF0: FFree1Ad var_88
  loc_A93AF3: LitStr "0"
  loc_A93AF6: FLdPr Me
  loc_A93AF9: VCallAd Control_ID_NumeCtaTxt
  loc_A93AFC: FStAdFunc var_88
  loc_A93AFF: FLdPr var_88
  loc_A93B02: Me.Text = from_stack_1
  loc_A93B07: FFree1Ad var_88
  loc_A93B0A: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CD7D4
  'Data Table: 46DA38
  loc_9CD7BC: FLdPr Me
  loc_9CD7BF: VCallAd Control_ID_wbbReporte
  loc_9CD7C2: FStAdFunc var_88
  loc_9CD7C5: FLdRfVar var_88
  loc_9CD7C8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CD7CD: FFree1Ad var_88
  loc_9CD7D0: ExitProcHresult
  loc_9CD7D1: FStI2 Form_UnloadCB
End Sub

Private Sub cmdPdf_Click() '9E1CCC
  'Data Table: 46DA38
  loc_9E1CB0: LitI2_Byte 0
  loc_9E1CB2: PopTmpLdAd2 var_8A
  loc_9E1CB5: ILdRf Me
  loc_9E1CB8: CastAd
  loc_9E1CBB: FStAdFunc var_88
  loc_9E1CBE: FLdRfVar var_88
  loc_9E1CC1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E1CC6: FFree1Ad var_88
  loc_9E1CC9: ExitProcHresult
  loc_9E1CCA: ConcatStr
End Sub

Private Sub cmdPredeterminada_Click() '9CDC48
  'Data Table: 46DA38
  loc_9CDC30: LitI2_Byte 0
  loc_9CDC32: ILdRf Me
  loc_9CDC35: CastAd
  loc_9CDC38: FStAdFunc var_88
  loc_9CDC3B: FLdRfVar var_88
  loc_9CDC3E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CDC43: FFree1Ad var_88
  loc_9CDC46: ExitProcHresult
End Sub

Public Function bLogosGet() '46E668
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '46E677
  bLogos = Value
End Sub

Public Function bGeneradoGet() '46E686
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46E695
  bGenerado = Value
End Sub

Public Sub GeneraXLS() '9C4A4C
  'Data Table: 46DA38
  loc_9C4A34: LitI2_Byte 0
  loc_9C4A36: FLdPr Me
  loc_9C4A39: MemStI2 bLogos
  loc_9C4A3C: Call GeneraHTML()
  loc_9C4A41: LitI2_Byte &HFF
  loc_9C4A43: FLdPr Me
  loc_9C4A46: MemStI2 bLogos
  loc_9C4A49: ExitProcHresult
  loc_9C4A4A: LitI2FP -16371
End Sub

Public Sub HabilitarCriterio() 'A41240
  'Data Table: 46DA38
  loc_A411FC: LitI4 0
  loc_A41201: LitI4 1
  loc_A41206: FLdRfVar var_88
  loc_A41209: Redim
  loc_A41213: FLdPr Me
  loc_A41216: VCallAd Control_ID_OficinaCbo
  loc_A41219: CVarAd
  loc_A4121D: ParmAry1St
  loc_A41223: FLdPr Me
  loc_A41226: VCallAd Control_ID_NumeCtaTxt
  loc_A41229: CVarAd
  loc_A4122D: ParmAry1St
  loc_A41233: FLdRfVar var_88
  loc_A41236: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A4123B: FLdRfVar var_88
  loc_A4123E: Erase
  loc_A4123F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C18178
  'Data Table: 46DA38
  loc_C177E0: FLdPr Me
  loc_C177E3: MemLdI2 bGenerado
  loc_C177E6: BranchF loc_C177EA
  loc_C177E9: ExitProcHresult
  loc_C177EA: LitVarStr var_AC, "Generando reporte..."
  loc_C177EF: PopAdLdVar
  loc_C177F0: FLdPr Me
  loc_C177F3: VCallAd Control_ID_statusBar
  loc_C177F6: FStAdFunc var_C0
  loc_C177F9: FLdPr var_C0
  loc_C177FC: LateIdSt
  loc_C17801: FFree1Ad var_C0
  loc_C17804: LitI4 &HB
  loc_C17809: CI2I4
  loc_C1780A: FLdPr Me
  loc_C1780D: Me.MousePointer = from_stack_1
  loc_C17812: FLdPr Me
  loc_C17815: MemLdRfVar from_stack_1.global_76
  loc_C17818: NewIfNullAd
  loc_C1781B: FStAd var_C4 
  loc_C1781F: LitI2_Byte 0
  loc_C17821: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C17826: FStFPR8 var_154
  loc_C17829: LitStr "CALL nDeuda`('"
  loc_C1782C: ImpAdLdUI1
  loc_C17830: CStrI2
  loc_C17832: FStStrNoPop var_C8
  loc_C17835: ConcatStr
  loc_C17836: FStStrNoPop var_CC
  loc_C17839: LitStr "', '"
  loc_C1783C: ConcatStr
  loc_C1783D: FStStrNoPop var_D4
  loc_C17840: FLdRfVar var_D0
  loc_C17843: FLdPr Me
  loc_C17846: VCallAd Control_ID_NumeCtaTxt
  loc_C17849: FStAdFunc var_C0
  loc_C1784C: FLdPr var_C0
  loc_C1784F:  = Me.Text
  loc_C17854: ILdRf var_D0
  loc_C17857: ConcatStr
  loc_C17858: FStStrNoPop var_D8
  loc_C1785B: LitStr "', '"
  loc_C1785E: ConcatStr
  loc_C1785F: CVarStr var_118
  loc_C17862: LitI4 1
  loc_C17867: LitI4 1
  loc_C1786C: LitVarStr var_BC, "yyyy-mm-dd"
  loc_C17871: FStVarCopyObj var_F8
  loc_C17874: FLdRfVar var_F8
  loc_C17877: FLdFPR8 var_154
  loc_C1787A: CVarDate var_E8
  loc_C1787E: FLdRfVar var_108
  loc_C17881: ImpAdCallFPR4  = Format(, )
  loc_C17886: FLdRfVar var_108
  loc_C17889: ConcatVar var_128
  loc_C1788D: LitVarStr var_138, "')"
  loc_C17892: ConcatVar var_148
  loc_C17896: CStrVarVal var_14C
  loc_C1789A: FLdPr var_C4
  loc_C1789D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C178A2: FFreeStr var_C8 = "": var_CC = "": var_D4 = "": var_D0 = "": var_D8 = ""
  loc_C178B1: FFree1Ad var_C0
  loc_C178B4: FFreeVar var_E8 = "": var_F8 = "": var_118 = "": var_108 = "": var_128 = ""
  loc_C178C3: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_ctacteapre; CREATE TEMPORARY TABLE tmp_ctacteapre"
  loc_C178C6: LitStr " SELECT CodiOfic, CuenCtct, NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct "
  loc_C178C9: ConcatStr
  loc_C178CA: FStStrNoPop var_C8
  loc_C178CD: LitStr " FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 "
  loc_C178D0: ConcatStr
  loc_C178D1: FStStrNoPop var_CC
  loc_C178D4: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C178D7: ConcatStr
  loc_C178D8: FStStrNoPop var_D0
  loc_C178DB: FLdPr var_C4
  loc_C178DE: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C178E3: FFreeStr var_C8 = "": var_CC = ""
  loc_C178EC: LitStr " SELECT a.NumeApre,a.AutoApre,a.SecrInap,a.JuzgInap,a.CodiReca,a.CodiOfju,a.CodiOfic,a.FealApre,a.EstaApre,IFNULL(tmp_ctacteapre.SaldCtct,a.CapiApre) CapiApre, IFNULL(tmp_ctacteapre.RecaCtct,a.RecaApre) RecaApre, IFNULL(tmp_ctacteapre.SaldCtct,0) + IFNULL(tmp_ctacteapre.RecaCtct,0) TotaApre  "
  loc_C178EF: LitStr " ,IF(a.EstaApre IN (1,8,10,11,12), (SELECT fnGastos(a.NumeApre,a.CodiInju,i.FealInap,IFNULL(tmp_ctacteapre.SaldCtct,a.CapiApre),IFNULL(tmp_ctacteapre.RecaCtct,a.RecaApre),a.CodiReca,a.CodiOfju) ),0 ) AS Gastos, a.EstaApre "
  loc_C178F2: ConcatStr
  loc_C178F3: FStStrNoPop var_C8
  loc_C178F6: LitStr " FROM recaudacion.apremio a "
  loc_C178F9: ConcatStr
  loc_C178FA: FStStrNoPop var_CC
  loc_C178FD: LitStr " LEFT JOIN recaudacion.instapre i  ON i.NumeApre = a.NumeApre AND i.CodiInju = a.CodiInju "
  loc_C17900: ConcatStr
  loc_C17901: FStStrNoPop var_D0
  loc_C17904: LitStr " LEFT JOIN tmp_ctacteapre ON tmp_ctacteapre.CodiOfic = a.CodiOfic "
  loc_C17907: ConcatStr
  loc_C17908: FStStrNoPop var_D4
  loc_C1790B: LitStr " AND tmp_ctacteapre.CuenCtct = a.CuenCtct "
  loc_C1790E: ConcatStr
  loc_C1790F: FStStrNoPop var_D8
  loc_C17912: LitStr " AND tmp_ctacteapre.NumeApre = a.NumeApre "
  loc_C17915: ConcatStr
  loc_C17916: FStStrNoPop var_14C
  loc_C17919: LitStr " WHERE a.CuenCtct = '"
  loc_C1791C: ConcatStr
  loc_C1791D: FStStrNoPop var_15C
  loc_C17920: FLdRfVar var_158
  loc_C17923: FLdPr Me
  loc_C17926: VCallAd Control_ID_NumeCtaTxt
  loc_C17929: FStAdFunc var_C0
  loc_C1792C: FLdPr var_C0
  loc_C1792F:  = Me.Text
  loc_C17934: ILdRf var_158
  loc_C17937: ConcatStr
  loc_C17938: FStStrNoPop var_160
  loc_C1793B: LitStr "' AND a.CodiOfic = "
  loc_C1793E: ConcatStr
  loc_C1793F: FStStrNoPop var_164
  loc_C17942: ImpAdLdUI1
  loc_C17946: CStrI2
  loc_C17948: FStStrNoPop var_168
  loc_C1794B: ConcatStr
  loc_C1794C: FStStrNoPop var_16C
  loc_C1794F: LitStr ";"
  loc_C17952: ConcatStr
  loc_C17953: FStStrNoPop var_170
  loc_C17956: FLdPr var_C4
  loc_C17959: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C1795E: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_14C = "": var_15C = "": var_158 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_C1797B: FFree1Ad var_C0
  loc_C1797E: FLdRfVar var_174
  loc_C17981: FLdPr var_C4
  loc_C17984: from_stack_1 = clsctacte.RecordCount
  loc_C17989: ILdRf var_174
  loc_C1798C: LitI4 0
  loc_C17991: EqI4
  loc_C17992: BranchF loc_C179A0
  loc_C17995: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C17998: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C1799D: Branch loc_C1814F
  loc_C179A0: LitI4 0
  loc_C179A5: FLdRfVar var_174
  loc_C179A8: FLdPr var_C4
  loc_C179AB: from_stack_1 = clsctacte.RecordCount
  loc_C179B0: ILdRf var_174
  loc_C179B3: FLdPr Me
  loc_C179B6: MemLdRfVar from_stack_1.global_80
  loc_C179B9: Redim
  loc_C179C3: LitI4 0
  loc_C179C8: LitI4 1
  loc_C179CD: FLdPr Me
  loc_C179D0: MemLdRfVar from_stack_1.global_88
  loc_C179D3: Redim
  loc_C179DD: FLdPr var_C4
  loc_C179E0: Call clsctacte.MoveFirst()
  loc_C179E5: LitI4 1
  loc_C179EA: FLdPr Me
  loc_C179ED: MemLdRfVar from_stack_1.global_84
  loc_C179F0: FLdPr Me
  loc_C179F3: MemLdStr global_80
  loc_C179F6: LitI2_Byte 1
  loc_C179F8: FnUBound
  loc_C179FA: ForI4 var_17C
  loc_C17A00: LitI2_Byte 0
  loc_C17A02: CR8I2
  loc_C17A03: FStFPR8 var_9C
  loc_C17A06: FLdRfVar var_E8
  loc_C17A09: FLdRfVar var_184
  loc_C17A0C: LitVarStr var_AC, "EstaApre"
  loc_C17A11: PopAdLdVar
  loc_C17A12: FLdRfVar var_180
  loc_C17A15: FLdRfVar var_C0
  loc_C17A18: FLdPr var_C4
  loc_C17A1B: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17A20: FLdPr var_C0
  loc_C17A23:  = Me.Fields
  loc_C17A28: FLdPr var_180
  loc_C17A2B: from_stack_2 = Me.Item(from_stack_1)
  loc_C17A30: FLdPr var_184
  loc_C17A33:  = Me.Value
  loc_C17A38: FLdRfVar var_E8
  loc_C17A3B: FnCIntVar
  loc_C17A3D: LitI2_Byte 1
  loc_C17A3F: EqI2
  loc_C17A40: FLdRfVar var_F8
  loc_C17A43: FLdRfVar var_190
  loc_C17A46: LitVarStr var_BC, "EstaApre"
  loc_C17A4B: PopAdLdVar
  loc_C17A4C: FLdRfVar var_18C
  loc_C17A4F: FLdRfVar var_188
  loc_C17A52: FLdPr var_C4
  loc_C17A55: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17A5A: FLdPr var_188
  loc_C17A5D:  = Me.Fields
  loc_C17A62: FLdPr var_18C
  loc_C17A65: from_stack_2 = Me.Item(from_stack_1)
  loc_C17A6A: FLdPr var_190
  loc_C17A6D:  = Me.Value
  loc_C17A72: FLdRfVar var_F8
  loc_C17A75: FnCIntVar
  loc_C17A77: LitI2_Byte 8
  loc_C17A79: EqI2
  loc_C17A7A: OrI4
  loc_C17A7B: FLdRfVar var_108
  loc_C17A7E: FLdRfVar var_19C
  loc_C17A81: LitVarStr var_138, "EstaApre"
  loc_C17A86: PopAdLdVar
  loc_C17A87: FLdRfVar var_198
  loc_C17A8A: FLdRfVar var_194
  loc_C17A8D: FLdPr var_C4
  loc_C17A90: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17A95: FLdPr var_194
  loc_C17A98:  = Me.Fields
  loc_C17A9D: FLdPr var_198
  loc_C17AA0: from_stack_2 = Me.Item(from_stack_1)
  loc_C17AA5: FLdPr var_19C
  loc_C17AA8:  = Me.Value
  loc_C17AAD: FLdRfVar var_108
  loc_C17AB0: FnCIntVar
  loc_C17AB2: LitI2_Byte &HA
  loc_C17AB4: EqI2
  loc_C17AB5: OrI4
  loc_C17AB6: FLdRfVar var_118
  loc_C17AB9: FLdRfVar var_1B8
  loc_C17ABC: LitVarStr var_1B4, "EstaApre"
  loc_C17AC1: PopAdLdVar
  loc_C17AC2: FLdRfVar var_1A4
  loc_C17AC5: FLdRfVar var_1A0
  loc_C17AC8: FLdPr var_C4
  loc_C17ACB: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17AD0: FLdPr var_1A0
  loc_C17AD3:  = Me.Fields
  loc_C17AD8: FLdPr var_1A4
  loc_C17ADB: from_stack_2 = Me.Item(from_stack_1)
  loc_C17AE0: FLdPr var_1B8
  loc_C17AE3:  = Me.Value
  loc_C17AE8: FLdRfVar var_118
  loc_C17AEB: FnCIntVar
  loc_C17AED: LitI2_Byte &HB
  loc_C17AEF: EqI2
  loc_C17AF0: OrI4
  loc_C17AF1: FFreeAd var_C0 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = ""
  loc_C17B0C: FFreeVar var_E8 = "": var_F8 = "": var_108 = ""
  loc_C17B17: BranchF loc_C17C50
  loc_C17B1A: FLdRfVar var_E8
  loc_C17B1D: FLdRfVar var_184
  loc_C17B20: LitVarStr var_AC, "NumeApre"
  loc_C17B25: PopAdLdVar
  loc_C17B26: FLdRfVar var_180
  loc_C17B29: FLdRfVar var_C0
  loc_C17B2C: FLdPr var_C4
  loc_C17B2F: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17B34: FLdPr var_C0
  loc_C17B37:  = Me.Fields
  loc_C17B3C: FLdPr var_180
  loc_C17B3F: from_stack_2 = Me.Item(from_stack_1)
  loc_C17B44: FLdPr var_184
  loc_C17B47:  = Me.Value
  loc_C17B4C: FLdRfVar var_E8
  loc_C17B4F: CI4Var
  loc_C17B51: FLdRfVar var_F8
  loc_C17B54: ImpAdCallFPR4  = Proc_270_154_B625BC()
  loc_C17B59: FLdRfVar var_F8
  loc_C17B5C: FStVar var_94
  loc_C17B60: FFreeAd var_C0 = "": var_180 = ""
  loc_C17B69: FFree1Var var_E8 = ""
  loc_C17B6C: LitVarI2 var_AC, 1
  loc_C17B71: PopAdLdVar
  loc_C17B72: FLdRfVar var_94
  loc_C17B75: VarIndexLdVar
  loc_C17B7B: FnCDblVar
  loc_C17B7D: LitVarI2 var_138, 2
  loc_C17B82: PopAdLdVar
  loc_C17B83: FLdRfVar var_94
  loc_C17B86: VarIndexLdVar
  loc_C17B8C: FnCDblVar
  loc_C17B8E: AddR8
  loc_C17B8F: LitVarI2 var_1C8, 3
  loc_C17B94: PopAdLdVar
  loc_C17B95: FLdRfVar var_94
  loc_C17B98: VarIndexLdVar
  loc_C17B9E: FnCDblVar
  loc_C17BA0: AddR8
  loc_C17BA1: LitVarI2 var_1E8, 4
  loc_C17BA6: PopAdLdVar
  loc_C17BA7: FLdRfVar var_94
  loc_C17BAA: VarIndexLdVar
  loc_C17BB0: FnCDblVar
  loc_C17BB2: AddR8
  loc_C17BB3: LitVarI2 var_208, 5
  loc_C17BB8: PopAdLdVar
  loc_C17BB9: FLdRfVar var_94
  loc_C17BBC: VarIndexLdVar
  loc_C17BC2: FnCDblVar
  loc_C17BC4: AddR8
  loc_C17BC5: LitVarI2 var_228, 6
  loc_C17BCA: PopAdLdVar
  loc_C17BCB: FLdRfVar var_94
  loc_C17BCE: VarIndexLdVar
  loc_C17BD4: FnCDblVar
  loc_C17BD6: AddR8
  loc_C17BD7: LitVarI2 var_248, 7
  loc_C17BDC: PopAdLdVar
  loc_C17BDD: FLdRfVar var_94
  loc_C17BE0: VarIndexLdVar
  loc_C17BE6: FnCDblVar
  loc_C17BE8: AddR8
  loc_C17BE9: LitVarI2 var_278, 8
  loc_C17BEE: PopAdLdVar
  loc_C17BEF: FLdRfVar var_94
  loc_C17BF2: VarIndexLdVar
  loc_C17BF8: FnCDblVar
  loc_C17BFA: AddR8
  loc_C17BFB: LitVarI2 var_2A8, 9
  loc_C17C00: PopAdLdVar
  loc_C17C01: FLdRfVar var_94
  loc_C17C04: VarIndexLdVar
  loc_C17C0A: FnCDblVar
  loc_C17C0C: AddR8
  loc_C17C0D: LitVarI2 var_2D8, 10
  loc_C17C12: PopAdLdVar
  loc_C17C13: FLdRfVar var_94
  loc_C17C16: VarIndexLdVar
  loc_C17C1C: FnCDblVar
  loc_C17C1E: AddR8
  loc_C17C1F: LitVarI2 var_308, 11
  loc_C17C24: PopAdLdVar
  loc_C17C25: FLdRfVar var_94
  loc_C17C28: VarIndexLdVar
  loc_C17C2E: FnCDblVar
  loc_C17C30: AddR8
  loc_C17C31: FStFPR8 var_9C
  loc_C17C34: FFreeVar var_E8 = "": var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_148 = "": var_268 = "": var_298 = "": var_2C8 = "": var_2F8 = ""
  loc_C17C4D: Branch loc_C17C56
  loc_C17C50: LitI2_Byte 0
  loc_C17C52: CR8I2
  loc_C17C53: FStFPR8 var_9C
  loc_C17C56: FLdRfVar var_184
  loc_C17C59: LitVarStr var_AC, "EstaApre"
  loc_C17C5E: PopAdLdVar
  loc_C17C5F: FLdRfVar var_180
  loc_C17C62: FLdRfVar var_C0
  loc_C17C65: FLdPr var_C4
  loc_C17C68: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17C6D: FLdPr var_C0
  loc_C17C70:  = Me.Fields
  loc_C17C75: FLdPr var_180
  loc_C17C78: from_stack_2 = Me.Item(from_stack_1)
  loc_C17C7D: LitI2_Byte 0
  loc_C17C7F: LitVar_Missing var_F8
  loc_C17C82: LitI2_Byte 0
  loc_C17C84: FLdZeroAd var_184
  loc_C17C87: CVarAd
  loc_C17C8B: PopAdLdVar
  loc_C17C8C: FLdPr Me
  loc_C17C8F: MemLdStr global_84
  loc_C17C92: FLdPr Me
  loc_C17C95: MemLdStr global_80
  loc_C17C98: AryLock
  loc_C17C9B: Ary1LdPr
  loc_C17C9C: MemLdRfVar from_stack_1.global_0
  loc_C17C9F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C17CA4: AryUnlock
  loc_C17CA7: FFreeAd var_C0 = ""
  loc_C17CAE: FFreeVar var_E8 = ""
  loc_C17CB5: FLdRfVar var_184
  loc_C17CB8: LitVarStr var_AC, "FealApre"
  loc_C17CBD: PopAdLdVar
  loc_C17CBE: FLdRfVar var_180
  loc_C17CC1: FLdRfVar var_C0
  loc_C17CC4: FLdPr var_C4
  loc_C17CC7: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17CCC: FLdPr var_C0
  loc_C17CCF:  = Me.Fields
  loc_C17CD4: FLdPr var_180
  loc_C17CD7: from_stack_2 = Me.Item(from_stack_1)
  loc_C17CDC: LitI2_Byte 0
  loc_C17CDE: LitVar_Missing var_F8
  loc_C17CE1: LitI2_Byte 0
  loc_C17CE3: FLdZeroAd var_184
  loc_C17CE6: CVarAd
  loc_C17CEA: PopAdLdVar
  loc_C17CEB: FLdPr Me
  loc_C17CEE: MemLdStr global_84
  loc_C17CF1: FLdPr Me
  loc_C17CF4: MemLdStr global_80
  loc_C17CF7: AryLock
  loc_C17CFA: Ary1LdPr
  loc_C17CFB: MemLdRfVar from_stack_1.global_4
  loc_C17CFE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C17D03: AryUnlock
  loc_C17D06: FFreeAd var_C0 = ""
  loc_C17D0D: FFreeVar var_E8 = ""
  loc_C17D14: FLdRfVar var_184
  loc_C17D17: LitVarStr var_AC, "NumeApre"
  loc_C17D1C: PopAdLdVar
  loc_C17D1D: FLdRfVar var_180
  loc_C17D20: FLdRfVar var_C0
  loc_C17D23: FLdPr var_C4
  loc_C17D26: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17D2B: FLdPr var_C0
  loc_C17D2E:  = Me.Fields
  loc_C17D33: FLdPr var_180
  loc_C17D36: from_stack_2 = Me.Item(from_stack_1)
  loc_C17D3B: LitI2_Byte 0
  loc_C17D3D: LitVar_Missing var_F8
  loc_C17D40: LitI2_Byte 0
  loc_C17D42: FLdZeroAd var_184
  loc_C17D45: CVarAd
  loc_C17D49: PopAdLdVar
  loc_C17D4A: FLdPr Me
  loc_C17D4D: MemLdStr global_84
  loc_C17D50: FLdPr Me
  loc_C17D53: MemLdStr global_80
  loc_C17D56: AryLock
  loc_C17D59: Ary1LdPr
  loc_C17D5A: MemLdRfVar from_stack_1.global_8
  loc_C17D5D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C17D62: AryUnlock
  loc_C17D65: FFreeAd var_C0 = ""
  loc_C17D6C: FFreeVar var_E8 = ""
  loc_C17D73: FLdRfVar var_184
  loc_C17D76: LitVarStr var_AC, "AutoApre"
  loc_C17D7B: PopAdLdVar
  loc_C17D7C: FLdRfVar var_180
  loc_C17D7F: FLdRfVar var_C0
  loc_C17D82: FLdPr var_C4
  loc_C17D85: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17D8A: FLdPr var_C0
  loc_C17D8D:  = Me.Fields
  loc_C17D92: FLdPr var_180
  loc_C17D95: from_stack_2 = Me.Item(from_stack_1)
  loc_C17D9A: LitI2_Byte 0
  loc_C17D9C: LitVar_Missing var_F8
  loc_C17D9F: LitI2_Byte 0
  loc_C17DA1: FLdZeroAd var_184
  loc_C17DA4: CVarAd
  loc_C17DA8: PopAdLdVar
  loc_C17DA9: FLdPr Me
  loc_C17DAC: MemLdStr global_84
  loc_C17DAF: FLdPr Me
  loc_C17DB2: MemLdStr global_80
  loc_C17DB5: AryLock
  loc_C17DB8: Ary1LdPr
  loc_C17DB9: MemLdRfVar from_stack_1.global_12
  loc_C17DBC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C17DC1: AryUnlock
  loc_C17DC4: FFreeAd var_C0 = ""
  loc_C17DCB: FFreeVar var_E8 = ""
  loc_C17DD2: FLdRfVar var_184
  loc_C17DD5: LitVarStr var_AC, "CodiReca"
  loc_C17DDA: PopAdLdVar
  loc_C17DDB: FLdRfVar var_180
  loc_C17DDE: FLdRfVar var_C0
  loc_C17DE1: FLdPr var_C4
  loc_C17DE4: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17DE9: FLdPr var_C0
  loc_C17DEC:  = Me.Fields
  loc_C17DF1: FLdPr var_180
  loc_C17DF4: from_stack_2 = Me.Item(from_stack_1)
  loc_C17DF9: LitI2_Byte 0
  loc_C17DFB: LitVar_Missing var_F8
  loc_C17DFE: LitI2_Byte 0
  loc_C17E00: FLdZeroAd var_184
  loc_C17E03: CVarAd
  loc_C17E07: PopAdLdVar
  loc_C17E08: FLdPr Me
  loc_C17E0B: MemLdStr global_84
  loc_C17E0E: FLdPr Me
  loc_C17E11: MemLdStr global_80
  loc_C17E14: AryLock
  loc_C17E17: Ary1LdPr
  loc_C17E18: MemLdRfVar from_stack_1.global_16
  loc_C17E1B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C17E20: AryUnlock
  loc_C17E23: FFreeAd var_C0 = ""
  loc_C17E2A: FFreeVar var_E8 = ""
  loc_C17E31: FLdRfVar var_184
  loc_C17E34: LitVarStr var_AC, "CodiOfju"
  loc_C17E39: PopAdLdVar
  loc_C17E3A: FLdRfVar var_180
  loc_C17E3D: FLdRfVar var_C0
  loc_C17E40: FLdPr var_C4
  loc_C17E43: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17E48: FLdPr var_C0
  loc_C17E4B:  = Me.Fields
  loc_C17E50: FLdPr var_180
  loc_C17E53: from_stack_2 = Me.Item(from_stack_1)
  loc_C17E58: LitI2_Byte 0
  loc_C17E5A: LitVar_Missing var_F8
  loc_C17E5D: LitI2_Byte 0
  loc_C17E5F: FLdZeroAd var_184
  loc_C17E62: CVarAd
  loc_C17E66: PopAdLdVar
  loc_C17E67: FLdPr Me
  loc_C17E6A: MemLdStr global_84
  loc_C17E6D: FLdPr Me
  loc_C17E70: MemLdStr global_80
  loc_C17E73: AryLock
  loc_C17E76: Ary1LdPr
  loc_C17E77: MemLdRfVar from_stack_1.global_20
  loc_C17E7A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C17E7F: AryUnlock
  loc_C17E82: FFreeAd var_C0 = ""
  loc_C17E89: FFreeVar var_E8 = ""
  loc_C17E90: FLdRfVar var_184
  loc_C17E93: LitVarStr var_AC, "SecrInap"
  loc_C17E98: PopAdLdVar
  loc_C17E99: FLdRfVar var_180
  loc_C17E9C: FLdRfVar var_C0
  loc_C17E9F: FLdPr var_C4
  loc_C17EA2: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17EA7: FLdPr var_C0
  loc_C17EAA:  = Me.Fields
  loc_C17EAF: FLdPr var_180
  loc_C17EB2: from_stack_2 = Me.Item(from_stack_1)
  loc_C17EB7: LitI2_Byte 0
  loc_C17EB9: LitVar_Missing var_F8
  loc_C17EBC: LitI2_Byte 0
  loc_C17EBE: FLdZeroAd var_184
  loc_C17EC1: CVarAd
  loc_C17EC5: PopAdLdVar
  loc_C17EC6: FLdPr Me
  loc_C17EC9: MemLdStr global_84
  loc_C17ECC: FLdPr Me
  loc_C17ECF: MemLdStr global_80
  loc_C17ED2: AryLock
  loc_C17ED5: Ary1LdPr
  loc_C17ED6: MemLdRfVar from_stack_1.global_24
  loc_C17ED9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C17EDE: AryUnlock
  loc_C17EE1: FFreeAd var_C0 = ""
  loc_C17EE8: FFreeVar var_E8 = ""
  loc_C17EEF: FLdRfVar var_184
  loc_C17EF2: LitVarStr var_AC, "JuzgInap"
  loc_C17EF7: PopAdLdVar
  loc_C17EF8: FLdRfVar var_180
  loc_C17EFB: FLdRfVar var_C0
  loc_C17EFE: FLdPr var_C4
  loc_C17F01: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17F06: FLdPr var_C0
  loc_C17F09:  = Me.Fields
  loc_C17F0E: FLdPr var_180
  loc_C17F11: from_stack_2 = Me.Item(from_stack_1)
  loc_C17F16: LitI2_Byte 0
  loc_C17F18: LitVar_Missing var_F8
  loc_C17F1B: LitI2_Byte 0
  loc_C17F1D: FLdZeroAd var_184
  loc_C17F20: CVarAd
  loc_C17F24: PopAdLdVar
  loc_C17F25: FLdPr Me
  loc_C17F28: MemLdStr global_84
  loc_C17F2B: FLdPr Me
  loc_C17F2E: MemLdStr global_80
  loc_C17F31: AryLock
  loc_C17F34: Ary1LdPr
  loc_C17F35: MemLdRfVar from_stack_1.global_28
  loc_C17F38: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C17F3D: AryUnlock
  loc_C17F40: FFreeAd var_C0 = ""
  loc_C17F47: FFreeVar var_E8 = ""
  loc_C17F4E: FLdRfVar var_184
  loc_C17F51: LitVarStr var_AC, "CapiApre"
  loc_C17F56: PopAdLdVar
  loc_C17F57: FLdRfVar var_180
  loc_C17F5A: FLdRfVar var_C0
  loc_C17F5D: FLdPr var_C4
  loc_C17F60: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17F65: FLdPr var_C0
  loc_C17F68:  = Me.Fields
  loc_C17F6D: FLdPr var_180
  loc_C17F70: from_stack_2 = Me.Item(from_stack_1)
  loc_C17F75: LitI2_Byte 0
  loc_C17F77: LitI4 1
  loc_C17F7C: FLdPr Me
  loc_C17F7F: MemLdStr global_88
  loc_C17F82: AryLock
  loc_C17F85: Ary1LdPr
  loc_C17F86: MemLdRfVar from_stack_1.global_32
  loc_C17F89: CVarRef
  loc_C17F8E: LitI2_Byte &HFF
  loc_C17F90: FLdZeroAd var_184
  loc_C17F93: CVarAd
  loc_C17F97: PopAdLdVar
  loc_C17F98: FLdPr Me
  loc_C17F9B: MemLdStr global_84
  loc_C17F9E: FLdPr Me
  loc_C17FA1: MemLdStr global_80
  loc_C17FA4: AryLock
  loc_C17FA7: Ary1LdPr
  loc_C17FA8: MemLdRfVar from_stack_1.global_32
  loc_C17FAB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C17FB0: AryUnlock
  loc_C17FB3: AryUnlock
  loc_C17FB6: FFreeAd var_C0 = ""
  loc_C17FBD: FFree1Var var_E8 = ""
  loc_C17FC0: FLdRfVar var_184
  loc_C17FC3: LitVarStr var_AC, "RecaApre"
  loc_C17FC8: PopAdLdVar
  loc_C17FC9: FLdRfVar var_180
  loc_C17FCC: FLdRfVar var_C0
  loc_C17FCF: FLdPr var_C4
  loc_C17FD2: from_stack_1v = clsctacte.RsFrmGet()
  loc_C17FD7: FLdPr var_C0
  loc_C17FDA:  = Me.Fields
  loc_C17FDF: FLdPr var_180
  loc_C17FE2: from_stack_2 = Me.Item(from_stack_1)
  loc_C17FE7: LitI2_Byte 0
  loc_C17FE9: LitI4 1
  loc_C17FEE: FLdPr Me
  loc_C17FF1: MemLdStr global_88
  loc_C17FF4: AryLock
  loc_C17FF7: Ary1LdPr
  loc_C17FF8: MemLdRfVar from_stack_1.global_36
  loc_C17FFB: CVarRef
  loc_C18000: LitI2_Byte &HFF
  loc_C18002: FLdZeroAd var_184
  loc_C18005: CVarAd
  loc_C18009: PopAdLdVar
  loc_C1800A: FLdPr Me
  loc_C1800D: MemLdStr global_84
  loc_C18010: FLdPr Me
  loc_C18013: MemLdStr global_80
  loc_C18016: AryLock
  loc_C18019: Ary1LdPr
  loc_C1801A: MemLdRfVar from_stack_1.global_36
  loc_C1801D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C18022: AryUnlock
  loc_C18025: AryUnlock
  loc_C18028: FFreeAd var_C0 = ""
  loc_C1802F: FFree1Var var_E8 = ""
  loc_C18032: FLdRfVar var_184
  loc_C18035: LitVarStr var_AC, "TotaApre"
  loc_C1803A: PopAdLdVar
  loc_C1803B: FLdRfVar var_180
  loc_C1803E: FLdRfVar var_C0
  loc_C18041: FLdPr var_C4
  loc_C18044: from_stack_1v = clsctacte.RsFrmGet()
  loc_C18049: FLdPr var_C0
  loc_C1804C:  = Me.Fields
  loc_C18051: FLdPr var_180
  loc_C18054: from_stack_2 = Me.Item(from_stack_1)
  loc_C18059: LitI2_Byte 0
  loc_C1805B: LitI4 1
  loc_C18060: FLdPr Me
  loc_C18063: MemLdStr global_88
  loc_C18066: AryLock
  loc_C18069: Ary1LdPr
  loc_C1806A: MemLdRfVar from_stack_1.global_40
  loc_C1806D: CVarRef
  loc_C18072: LitI2_Byte &HFF
  loc_C18074: FLdZeroAd var_184
  loc_C18077: CVarAd
  loc_C1807B: PopAdLdVar
  loc_C1807C: FLdPr Me
  loc_C1807F: MemLdStr global_84
  loc_C18082: FLdPr Me
  loc_C18085: MemLdStr global_80
  loc_C18088: AryLock
  loc_C1808B: Ary1LdPr
  loc_C1808C: MemLdRfVar from_stack_1.global_40
  loc_C1808F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C18094: AryUnlock
  loc_C18097: AryUnlock
  loc_C1809A: FFreeAd var_C0 = ""
  loc_C180A1: FFree1Var var_E8 = ""
  loc_C180A4: FLdRfVar var_E8
  loc_C180A7: FLdRfVar var_184
  loc_C180AA: LitVarStr var_AC, "Gastos"
  loc_C180AF: PopAdLdVar
  loc_C180B0: FLdRfVar var_180
  loc_C180B3: FLdRfVar var_C0
  loc_C180B6: FLdPr var_C4
  loc_C180B9: from_stack_1v = clsctacte.RsFrmGet()
  loc_C180BE: FLdPr var_C0
  loc_C180C1:  = Me.Fields
  loc_C180C6: FLdPr var_180
  loc_C180C9: from_stack_2 = Me.Item(from_stack_1)
  loc_C180CE: FLdPr var_184
  loc_C180D1:  = Me.Value
  loc_C180D6: LitI2_Byte 0
  loc_C180D8: LitI4 1
  loc_C180DD: FLdPr Me
  loc_C180E0: MemLdStr global_88
  loc_C180E3: AryLock
  loc_C180E6: Ary1LdPr
  loc_C180E7: MemLdRfVar from_stack_1.global_44
  loc_C180EA: CVarRef
  loc_C180EF: LitI2_Byte &HFF
  loc_C180F1: FLdRfVar var_E8
  loc_C180F4: FnCDblVar
  loc_C180F6: FLdFPR8 var_9C
  loc_C180F9: SubR4
  loc_C180FA: CVarR8
  loc_C180FE: PopAdLdVar
  loc_C180FF: FLdPr Me
  loc_C18102: MemLdStr global_84
  loc_C18105: FLdPr Me
  loc_C18108: MemLdStr global_80
  loc_C1810B: AryLock
  loc_C1810E: Ary1LdPr
  loc_C1810F: MemLdRfVar from_stack_1.global_44
  loc_C18112: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C18117: AryUnlock
  loc_C1811A: AryUnlock
  loc_C1811D: FFreeAd var_C0 = "": var_180 = ""
  loc_C18126: FFree1Var var_E8 = ""
  loc_C18129: LitI2_Byte 1
  loc_C1812B: PopTmpLdAd2 var_332
  loc_C1812E: FLdPr var_C4
  loc_C18131: Call clsctacte.Move(from_stack_1v)
  loc_C18136: FLdPr Me
  loc_C18139: MemLdRfVar from_stack_1.global_84
  loc_C1813C: NextI4 var_17C, loc_C17A00
  loc_C18141: LitNothing
  loc_C18143: FStAd var_C4 
  loc_C18147: LitI2_Byte &HFF
  loc_C18149: FLdPr Me
  loc_C1814C: MemStI2 bGenerado
  loc_C1814F: LitI4 0
  loc_C18154: CI2I4
  loc_C18155: FLdPr Me
  loc_C18158: Me.MousePointer = from_stack_1
  loc_C1815D: LitVarStr var_AC, vbNullString
  loc_C18162: PopAdLdVar
  loc_C18163: FLdPr Me
  loc_C18166: VCallAd Control_ID_statusBar
  loc_C18169: FStAdFunc var_C0
  loc_C1816C: FLdPr var_C0
  loc_C1816F: LateIdSt
  loc_C18174: FFree1Ad var_C0
  loc_C18177: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B6D3B4
  'Data Table: 46DA38
  loc_B6CF34: FLdRfVar var_88
  loc_B6CF37: LitI2_Byte 0
  loc_B6CF39: LitI2_Byte &HFF
  loc_B6CF3B: ImpAdLdI4 MemVar_D93C84
  loc_B6CF3E: FLdPr Me
  loc_B6CF41: MemLdRfVar from_stack_1.global_56
  loc_B6CF44: NewIfNullPr IFileSystem3
  loc_B6CF47: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B6CF4C: ILdRf var_88
  loc_B6CF4F: FLdPr Me
  loc_B6CF52: MemStVarAd
  loc_B6CF56: FFree1Ad var_88
  loc_B6CF59: LitI2_Byte &HFF
  loc_B6CF5B: ImpAdStI2 MemVar_D93C8A
  loc_B6CF5E: Call Proc_282_20_BDB848()
  loc_B6CF63: LitI4 1
  loc_B6CF68: FLdPr Me
  loc_B6CF6B: MemLdRfVar from_stack_1.global_84
  loc_B6CF6E: FLdPr Me
  loc_B6CF71: MemLdStr global_80
  loc_B6CF74: LitI2_Byte 1
  loc_B6CF76: FnUBound
  loc_B6CF78: ForI4 var_90
  loc_B6CF7E: FLdPr Me
  loc_B6CF81: MemLdStr global_84
  loc_B6CF84: FLdPr Me
  loc_B6CF87: MemLdStr global_80
  loc_B6CF8A: AryLock
  loc_B6CF8D: Ary1LdRf
  loc_B6CF8E: FStR4 var_98
  loc_B6CF91: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B6CF96: PopAdLdVar
  loc_B6CF97: FLdPr Me
  loc_B6CF9A: MemLdRfVar from_stack_1.global_60
  loc_B6CF9D: LdPrVar
  loc_B6CF9F: LateMemCall
  loc_B6CFA5: LitStr vbNullString
  loc_B6CFA8: LitI2_Byte 0
  loc_B6CFAA: LitI2_Byte 0
  loc_B6CFAC: LitI2_Byte 0
  loc_B6CFAE: LitStr "right"
  loc_B6CFB1: FMemLdR4 var_98(0)
  loc_B6CFB6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6CFBB: CVarStr var_C8
  loc_B6CFBE: PopAdLdVar
  loc_B6CFBF: FLdPr Me
  loc_B6CFC2: MemLdRfVar from_stack_1.global_60
  loc_B6CFC5: LdPrVar
  loc_B6CFC7: LateMemCall
  loc_B6CFCD: FFree1Var var_C8 = ""
  loc_B6CFD0: LitStr vbNullString
  loc_B6CFD3: LitI2_Byte 0
  loc_B6CFD5: LitI2_Byte 0
  loc_B6CFD7: LitI2_Byte 0
  loc_B6CFD9: LitStr "center"
  loc_B6CFDC: FMemLdR4 var_98(4)
  loc_B6CFE1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6CFE6: CVarStr var_C8
  loc_B6CFE9: PopAdLdVar
  loc_B6CFEA: FLdPr Me
  loc_B6CFED: MemLdRfVar from_stack_1.global_60
  loc_B6CFF0: LdPrVar
  loc_B6CFF2: LateMemCall
  loc_B6CFF8: FFree1Var var_C8 = ""
  loc_B6CFFB: LitStr vbNullString
  loc_B6CFFE: LitI2_Byte 0
  loc_B6D000: LitI2_Byte 0
  loc_B6D002: LitI2_Byte 0
  loc_B6D004: LitStr "right"
  loc_B6D007: FMemLdR4 var_98(8)
  loc_B6D00C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D011: CVarStr var_C8
  loc_B6D014: PopAdLdVar
  loc_B6D015: FLdPr Me
  loc_B6D018: MemLdRfVar from_stack_1.global_60
  loc_B6D01B: LdPrVar
  loc_B6D01D: LateMemCall
  loc_B6D023: FFree1Var var_C8 = ""
  loc_B6D026: LitStr vbNullString
  loc_B6D029: LitI2_Byte 0
  loc_B6D02B: LitI2_Byte 0
  loc_B6D02D: LitI2_Byte 0
  loc_B6D02F: LitStr "right"
  loc_B6D032: FMemLdR4 var_98(12)
  loc_B6D037: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D03C: CVarStr var_C8
  loc_B6D03F: PopAdLdVar
  loc_B6D040: FLdPr Me
  loc_B6D043: MemLdRfVar from_stack_1.global_60
  loc_B6D046: LdPrVar
  loc_B6D048: LateMemCall
  loc_B6D04E: FFree1Var var_C8 = ""
  loc_B6D051: LitStr vbNullString
  loc_B6D054: LitI2_Byte 0
  loc_B6D056: LitI2_Byte 0
  loc_B6D058: LitI2_Byte 0
  loc_B6D05A: LitStr "right"
  loc_B6D05D: FMemLdR4 var_98(16)
  loc_B6D062: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D067: CVarStr var_C8
  loc_B6D06A: PopAdLdVar
  loc_B6D06B: FLdPr Me
  loc_B6D06E: MemLdRfVar from_stack_1.global_60
  loc_B6D071: LdPrVar
  loc_B6D073: LateMemCall
  loc_B6D079: FFree1Var var_C8 = ""
  loc_B6D07C: LitStr vbNullString
  loc_B6D07F: LitI2_Byte 0
  loc_B6D081: LitI2_Byte 0
  loc_B6D083: LitI2_Byte 0
  loc_B6D085: LitStr "right"
  loc_B6D088: FMemLdR4 var_98(20)
  loc_B6D08D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D092: CVarStr var_C8
  loc_B6D095: PopAdLdVar
  loc_B6D096: FLdPr Me
  loc_B6D099: MemLdRfVar from_stack_1.global_60
  loc_B6D09C: LdPrVar
  loc_B6D09E: LateMemCall
  loc_B6D0A4: FFree1Var var_C8 = ""
  loc_B6D0A7: LitStr vbNullString
  loc_B6D0AA: LitI2_Byte 0
  loc_B6D0AC: LitI2_Byte 0
  loc_B6D0AE: LitI2_Byte 0
  loc_B6D0B0: LitStr "right"
  loc_B6D0B3: FMemLdR4 var_98(24)
  loc_B6D0B8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D0BD: CVarStr var_C8
  loc_B6D0C0: PopAdLdVar
  loc_B6D0C1: FLdPr Me
  loc_B6D0C4: MemLdRfVar from_stack_1.global_60
  loc_B6D0C7: LdPrVar
  loc_B6D0C9: LateMemCall
  loc_B6D0CF: FFree1Var var_C8 = ""
  loc_B6D0D2: LitStr vbNullString
  loc_B6D0D5: LitI2_Byte 0
  loc_B6D0D7: LitI2_Byte 0
  loc_B6D0D9: LitI2_Byte 0
  loc_B6D0DB: LitStr "right"
  loc_B6D0DE: FMemLdR4 var_98(28)
  loc_B6D0E3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D0E8: CVarStr var_C8
  loc_B6D0EB: PopAdLdVar
  loc_B6D0EC: FLdPr Me
  loc_B6D0EF: MemLdRfVar from_stack_1.global_60
  loc_B6D0F2: LdPrVar
  loc_B6D0F4: LateMemCall
  loc_B6D0FA: FFree1Var var_C8 = ""
  loc_B6D0FD: LitStr vbNullString
  loc_B6D100: LitI2_Byte 0
  loc_B6D102: LitI2_Byte 0
  loc_B6D104: LitI2_Byte 0
  loc_B6D106: LitStr "right"
  loc_B6D109: FMemLdR4 var_98(32)
  loc_B6D10E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D113: CVarStr var_C8
  loc_B6D116: PopAdLdVar
  loc_B6D117: FLdPr Me
  loc_B6D11A: MemLdRfVar from_stack_1.global_60
  loc_B6D11D: LdPrVar
  loc_B6D11F: LateMemCall
  loc_B6D125: FFree1Var var_C8 = ""
  loc_B6D128: LitStr vbNullString
  loc_B6D12B: LitI2_Byte 0
  loc_B6D12D: LitI2_Byte 0
  loc_B6D12F: LitI2_Byte 0
  loc_B6D131: LitStr "right"
  loc_B6D134: FMemLdR4 var_98(36)
  loc_B6D139: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D13E: CVarStr var_C8
  loc_B6D141: PopAdLdVar
  loc_B6D142: FLdPr Me
  loc_B6D145: MemLdRfVar from_stack_1.global_60
  loc_B6D148: LdPrVar
  loc_B6D14A: LateMemCall
  loc_B6D150: FFree1Var var_C8 = ""
  loc_B6D153: LitStr vbNullString
  loc_B6D156: LitI2_Byte 0
  loc_B6D158: LitI2_Byte 0
  loc_B6D15A: LitI2_Byte 0
  loc_B6D15C: LitStr "right"
  loc_B6D15F: FMemLdR4 var_98(40)
  loc_B6D164: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D169: CVarStr var_C8
  loc_B6D16C: PopAdLdVar
  loc_B6D16D: FLdPr Me
  loc_B6D170: MemLdRfVar from_stack_1.global_60
  loc_B6D173: LdPrVar
  loc_B6D175: LateMemCall
  loc_B6D17B: FFree1Var var_C8 = ""
  loc_B6D17E: LitStr vbNullString
  loc_B6D181: LitI2_Byte 0
  loc_B6D183: LitI2_Byte 0
  loc_B6D185: LitI2_Byte 0
  loc_B6D187: LitStr "right"
  loc_B6D18A: FMemLdR4 var_98(44)
  loc_B6D18F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D194: CVarStr var_C8
  loc_B6D197: PopAdLdVar
  loc_B6D198: FLdPr Me
  loc_B6D19B: MemLdRfVar from_stack_1.global_60
  loc_B6D19E: LdPrVar
  loc_B6D1A0: LateMemCall
  loc_B6D1A6: FFree1Var var_C8 = ""
  loc_B6D1A9: LitVarStr var_A8, "     </tr>"
  loc_B6D1AE: PopAdLdVar
  loc_B6D1AF: FLdPr Me
  loc_B6D1B2: MemLdRfVar from_stack_1.global_60
  loc_B6D1B5: LdPrVar
  loc_B6D1B7: LateMemCall
  loc_B6D1BD: LitI4 0
  loc_B6D1C2: FStR4 var_98
  loc_B6D1C5: AryUnlock
  loc_B6D1C8: FLdPr Me
  loc_B6D1CB: MemLdRfVar from_stack_1.global_84
  loc_B6D1CE: NextI4 var_90, loc_B6CF7E
  loc_B6D1D3: LitVarStr var_A8, "  <tr align=""center"" class=""Totales"">"
  loc_B6D1D8: PopAdLdVar
  loc_B6D1D9: FLdPr Me
  loc_B6D1DC: MemLdRfVar from_stack_1.global_60
  loc_B6D1DF: LdPrVar
  loc_B6D1E1: LateMemCall
  loc_B6D1E7: FLdRfVar var_CC
  loc_B6D1EA: FLdRfVar var_88
  loc_B6D1ED: FLdPr Me
  loc_B6D1F0: MemLdRfVar from_stack_1.global_76
  loc_B6D1F3: NewIfNullPr clsctacte
  loc_B6D1F6: from_stack_1v = clsctacte.RsFrmGet()
  loc_B6D1FB: FLdPr var_88
  loc_B6D1FE:  = Me.RecordCount
  loc_B6D203: FLdRfVar var_DC
  loc_B6D206: FLdRfVar var_D8
  loc_B6D209: FLdPr Me
  loc_B6D20C: MemLdRfVar from_stack_1.global_76
  loc_B6D20F: NewIfNullPr clsctacte
  loc_B6D212: from_stack_1v = clsctacte.RsFrmGet()
  loc_B6D217: FLdPr var_D8
  loc_B6D21A:  = Me.RecordCount
  loc_B6D21F: LitStr "    <th colspan=""8"">"
  loc_B6D222: LitI4 -1
  loc_B6D227: LitI4 0
  loc_B6D22C: LitI4 -1
  loc_B6D231: LitI4 0
  loc_B6D236: ILdRf var_CC
  loc_B6D239: CVarI4
  loc_B6D23D: ImpAdCallI2 FormatNumber(, , , , )
  loc_B6D242: FStStrNoPop var_D0
  loc_B6D245: ConcatStr
  loc_B6D246: FStStrNoPop var_D4
  loc_B6D249: LitStr " Cuenta"
  loc_B6D24C: ConcatStr
  loc_B6D24D: CVarStr var_13C
  loc_B6D250: LitVarStr var_10C, vbNullString
  loc_B6D255: FStVarCopyObj var_11C
  loc_B6D258: FLdRfVar var_11C
  loc_B6D25B: LitVarStr var_EC, "s"
  loc_B6D260: FStVarCopyObj var_FC
  loc_B6D263: FLdRfVar var_FC
  loc_B6D266: ILdRf var_DC
  loc_B6D269: LitI4 1
  loc_B6D26E: GtI4
  loc_B6D26F: CVarBoolI2 var_B8
  loc_B6D273: FLdRfVar var_12C
  loc_B6D276: ImpAdCallFPR4  = IIf(, , )
  loc_B6D27B: FLdRfVar var_12C
  loc_B6D27E: ConcatVar var_14C
  loc_B6D282: LitVarStr var_15C, ".</th>"
  loc_B6D287: ConcatVar var_16C
  loc_B6D28B: PopAdLdVar
  loc_B6D28C: FLdPr Me
  loc_B6D28F: MemLdRfVar from_stack_1.global_60
  loc_B6D292: LdPrVar
  loc_B6D294: LateMemCall
  loc_B6D29A: FFreeStr var_D0 = ""
  loc_B6D2A1: FFreeAd var_88 = ""
  loc_B6D2A8: FFreeVar var_C8 = "": var_B8 = "": var_FC = "": var_11C = "": var_13C = "": var_12C = "": var_14C = ""
  loc_B6D2BB: LitI4 1
  loc_B6D2C0: FLdPr Me
  loc_B6D2C3: MemLdStr global_88
  loc_B6D2C6: AryLock
  loc_B6D2C9: Ary1LdRf
  loc_B6D2CA: FStR4 var_184
  loc_B6D2CD: LitStr vbNullString
  loc_B6D2D0: LitI2_Byte 0
  loc_B6D2D2: LitI2_Byte 0
  loc_B6D2D4: LitI2_Byte 0
  loc_B6D2D6: LitStr "right"
  loc_B6D2D9: FMemLdR4 var_184(32)
  loc_B6D2DE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D2E3: CVarStr var_C8
  loc_B6D2E6: PopAdLdVar
  loc_B6D2E7: FLdPr Me
  loc_B6D2EA: MemLdRfVar from_stack_1.global_60
  loc_B6D2ED: LdPrVar
  loc_B6D2EF: LateMemCall
  loc_B6D2F5: FFree1Var var_C8 = ""
  loc_B6D2F8: LitStr vbNullString
  loc_B6D2FB: LitI2_Byte 0
  loc_B6D2FD: LitI2_Byte 0
  loc_B6D2FF: LitI2_Byte 0
  loc_B6D301: LitStr "right"
  loc_B6D304: FMemLdR4 var_184(36)
  loc_B6D309: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D30E: CVarStr var_C8
  loc_B6D311: PopAdLdVar
  loc_B6D312: FLdPr Me
  loc_B6D315: MemLdRfVar from_stack_1.global_60
  loc_B6D318: LdPrVar
  loc_B6D31A: LateMemCall
  loc_B6D320: FFree1Var var_C8 = ""
  loc_B6D323: LitStr vbNullString
  loc_B6D326: LitI2_Byte 0
  loc_B6D328: LitI2_Byte 0
  loc_B6D32A: LitI2_Byte 0
  loc_B6D32C: LitStr "right"
  loc_B6D32F: FMemLdR4 var_184(40)
  loc_B6D334: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D339: CVarStr var_C8
  loc_B6D33C: PopAdLdVar
  loc_B6D33D: FLdPr Me
  loc_B6D340: MemLdRfVar from_stack_1.global_60
  loc_B6D343: LdPrVar
  loc_B6D345: LateMemCall
  loc_B6D34B: FFree1Var var_C8 = ""
  loc_B6D34E: LitStr vbNullString
  loc_B6D351: LitI2_Byte 0
  loc_B6D353: LitI2_Byte 0
  loc_B6D355: LitI2_Byte 0
  loc_B6D357: LitStr "right"
  loc_B6D35A: FMemLdR4 var_184(44)
  loc_B6D35F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6D364: CVarStr var_C8
  loc_B6D367: PopAdLdVar
  loc_B6D368: FLdPr Me
  loc_B6D36B: MemLdRfVar from_stack_1.global_60
  loc_B6D36E: LdPrVar
  loc_B6D370: LateMemCall
  loc_B6D376: FFree1Var var_C8 = ""
  loc_B6D379: LitI4 0
  loc_B6D37E: FStR4 var_184
  loc_B6D381: AryUnlock
  loc_B6D384: LitVarStr var_A8, "     </tr>"
  loc_B6D389: PopAdLdVar
  loc_B6D38A: FLdPr Me
  loc_B6D38D: MemLdRfVar from_stack_1.global_60
  loc_B6D390: LdPrVar
  loc_B6D392: LateMemCall
  loc_B6D398: Call Proc_282_21_A0D558()
  loc_B6D39D: FLdPr Me
  loc_B6D3A0: MemLdRfVar from_stack_1.global_60
  loc_B6D3A3: LdPrVar
  loc_B6D3A5: LateMemCall
  loc_B6D3AB: LitStr vbNullString
  loc_B6D3AE: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B6D3B3: ExitProcHresult
End Sub

Private Function Proc_282_20_BDB848() 'BDB848
  'Data Table: 46DA38
  loc_BDB0C8: LitVarStr var_98, "<html>"
  loc_BDB0CD: PopAdLdVar
  loc_BDB0CE: FLdPr Me
  loc_BDB0D1: MemLdRfVar from_stack_1.global_60
  loc_BDB0D4: LdPrVar
  loc_BDB0D6: LateMemCall
  loc_BDB0DC: LitVarStr var_98, "<head>"
  loc_BDB0E1: PopAdLdVar
  loc_BDB0E2: FLdPr Me
  loc_BDB0E5: MemLdRfVar from_stack_1.global_60
  loc_BDB0E8: LdPrVar
  loc_BDB0EA: LateMemCall
  loc_BDB0F0: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BDB0F5: PopAdLdVar
  loc_BDB0F6: FLdPr Me
  loc_BDB0F9: MemLdRfVar from_stack_1.global_60
  loc_BDB0FC: LdPrVar
  loc_BDB0FE: LateMemCall
  loc_BDB104: LitStr "<title>"
  loc_BDB107: FLdRfVar var_AC
  loc_BDB10A: FLdPr Me
  loc_BDB10D:  = Me.Caption
  loc_BDB112: ILdRf var_AC
  loc_BDB115: ConcatStr
  loc_BDB116: FStStrNoPop var_B0
  loc_BDB119: LitStr "</title>"
  loc_BDB11C: ConcatStr
  loc_BDB11D: CVarStr var_C0
  loc_BDB120: PopAdLdVar
  loc_BDB121: FLdPr Me
  loc_BDB124: MemLdRfVar from_stack_1.global_60
  loc_BDB127: LdPrVar
  loc_BDB129: LateMemCall
  loc_BDB12F: FFreeStr var_AC = ""
  loc_BDB136: FFree1Var var_C0 = ""
  loc_BDB139: LitVarStr var_98, "<style type=""text/css"">"
  loc_BDB13E: PopAdLdVar
  loc_BDB13F: FLdPr Me
  loc_BDB142: MemLdRfVar from_stack_1.global_60
  loc_BDB145: LdPrVar
  loc_BDB147: LateMemCall
  loc_BDB14D: LitVarStr var_98, ".Titulo1 {"
  loc_BDB152: PopAdLdVar
  loc_BDB153: FLdPr Me
  loc_BDB156: MemLdRfVar from_stack_1.global_60
  loc_BDB159: LdPrVar
  loc_BDB15B: LateMemCall
  loc_BDB161: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDB166: PopAdLdVar
  loc_BDB167: FLdPr Me
  loc_BDB16A: MemLdRfVar from_stack_1.global_60
  loc_BDB16D: LdPrVar
  loc_BDB16F: LateMemCall
  loc_BDB175: LitVarStr var_98, " font-size: 18px;"
  loc_BDB17A: PopAdLdVar
  loc_BDB17B: FLdPr Me
  loc_BDB17E: MemLdRfVar from_stack_1.global_60
  loc_BDB181: LdPrVar
  loc_BDB183: LateMemCall
  loc_BDB189: LitVarStr var_98, " font-weight: bold;"
  loc_BDB18E: PopAdLdVar
  loc_BDB18F: FLdPr Me
  loc_BDB192: MemLdRfVar from_stack_1.global_60
  loc_BDB195: LdPrVar
  loc_BDB197: LateMemCall
  loc_BDB19D: LitVarStr var_98, "}"
  loc_BDB1A2: PopAdLdVar
  loc_BDB1A3: FLdPr Me
  loc_BDB1A6: MemLdRfVar from_stack_1.global_60
  loc_BDB1A9: LdPrVar
  loc_BDB1AB: LateMemCall
  loc_BDB1B1: LitVarStr var_98, ".Titulo2 {"
  loc_BDB1B6: PopAdLdVar
  loc_BDB1B7: FLdPr Me
  loc_BDB1BA: MemLdRfVar from_stack_1.global_60
  loc_BDB1BD: LdPrVar
  loc_BDB1BF: LateMemCall
  loc_BDB1C5: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDB1CA: PopAdLdVar
  loc_BDB1CB: FLdPr Me
  loc_BDB1CE: MemLdRfVar from_stack_1.global_60
  loc_BDB1D1: LdPrVar
  loc_BDB1D3: LateMemCall
  loc_BDB1D9: LitVarStr var_98, " font-size: 14px;"
  loc_BDB1DE: PopAdLdVar
  loc_BDB1DF: FLdPr Me
  loc_BDB1E2: MemLdRfVar from_stack_1.global_60
  loc_BDB1E5: LdPrVar
  loc_BDB1E7: LateMemCall
  loc_BDB1ED: LitVarStr var_98, " font-weight: bold;"
  loc_BDB1F2: PopAdLdVar
  loc_BDB1F3: FLdPr Me
  loc_BDB1F6: MemLdRfVar from_stack_1.global_60
  loc_BDB1F9: LdPrVar
  loc_BDB1FB: LateMemCall
  loc_BDB201: LitVarStr var_98, "}"
  loc_BDB206: PopAdLdVar
  loc_BDB207: FLdPr Me
  loc_BDB20A: MemLdRfVar from_stack_1.global_60
  loc_BDB20D: LdPrVar
  loc_BDB20F: LateMemCall
  loc_BDB215: LitVarStr var_98, ".Normal {"
  loc_BDB21A: PopAdLdVar
  loc_BDB21B: FLdPr Me
  loc_BDB21E: MemLdRfVar from_stack_1.global_60
  loc_BDB221: LdPrVar
  loc_BDB223: LateMemCall
  loc_BDB229: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDB22E: PopAdLdVar
  loc_BDB22F: FLdPr Me
  loc_BDB232: MemLdRfVar from_stack_1.global_60
  loc_BDB235: LdPrVar
  loc_BDB237: LateMemCall
  loc_BDB23D: LitVarStr var_98, " font-size: 12px;"
  loc_BDB242: PopAdLdVar
  loc_BDB243: FLdPr Me
  loc_BDB246: MemLdRfVar from_stack_1.global_60
  loc_BDB249: LdPrVar
  loc_BDB24B: LateMemCall
  loc_BDB251: LitVarStr var_98, " font-style: normal;"
  loc_BDB256: PopAdLdVar
  loc_BDB257: FLdPr Me
  loc_BDB25A: MemLdRfVar from_stack_1.global_60
  loc_BDB25D: LdPrVar
  loc_BDB25F: LateMemCall
  loc_BDB265: LitVarStr var_98, " font-weight: normal;"
  loc_BDB26A: PopAdLdVar
  loc_BDB26B: FLdPr Me
  loc_BDB26E: MemLdRfVar from_stack_1.global_60
  loc_BDB271: LdPrVar
  loc_BDB273: LateMemCall
  loc_BDB279: LitVarStr var_98, " font-variant: normal;"
  loc_BDB27E: PopAdLdVar
  loc_BDB27F: FLdPr Me
  loc_BDB282: MemLdRfVar from_stack_1.global_60
  loc_BDB285: LdPrVar
  loc_BDB287: LateMemCall
  loc_BDB28D: LitVarStr var_98, "}"
  loc_BDB292: PopAdLdVar
  loc_BDB293: FLdPr Me
  loc_BDB296: MemLdRfVar from_stack_1.global_60
  loc_BDB299: LdPrVar
  loc_BDB29B: LateMemCall
  loc_BDB2A1: LitVarStr var_98, ".Encabezado {"
  loc_BDB2A6: PopAdLdVar
  loc_BDB2A7: FLdPr Me
  loc_BDB2AA: MemLdRfVar from_stack_1.global_60
  loc_BDB2AD: LdPrVar
  loc_BDB2AF: LateMemCall
  loc_BDB2B5: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BDB2BA: PopAdLdVar
  loc_BDB2BB: FLdPr Me
  loc_BDB2BE: MemLdRfVar from_stack_1.global_60
  loc_BDB2C1: LdPrVar
  loc_BDB2C3: LateMemCall
  loc_BDB2C9: LitVarStr var_98, " font-size: 11px;"
  loc_BDB2CE: PopAdLdVar
  loc_BDB2CF: FLdPr Me
  loc_BDB2D2: MemLdRfVar from_stack_1.global_60
  loc_BDB2D5: LdPrVar
  loc_BDB2D7: LateMemCall
  loc_BDB2DD: LitVarStr var_98, " font-weight: bold;"
  loc_BDB2E2: PopAdLdVar
  loc_BDB2E3: FLdPr Me
  loc_BDB2E6: MemLdRfVar from_stack_1.global_60
  loc_BDB2E9: LdPrVar
  loc_BDB2EB: LateMemCall
  loc_BDB2F1: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BDB2F6: PopAdLdVar
  loc_BDB2F7: FLdPr Me
  loc_BDB2FA: MemLdRfVar from_stack_1.global_60
  loc_BDB2FD: LdPrVar
  loc_BDB2FF: LateMemCall
  loc_BDB305: LitVarStr var_98, "}"
  loc_BDB30A: PopAdLdVar
  loc_BDB30B: FLdPr Me
  loc_BDB30E: MemLdRfVar from_stack_1.global_60
  loc_BDB311: LdPrVar
  loc_BDB313: LateMemCall
  loc_BDB319: LitVarStr var_98, ".LineaDato {"
  loc_BDB31E: PopAdLdVar
  loc_BDB31F: FLdPr Me
  loc_BDB322: MemLdRfVar from_stack_1.global_60
  loc_BDB325: LdPrVar
  loc_BDB327: LateMemCall
  loc_BDB32D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDB332: PopAdLdVar
  loc_BDB333: FLdPr Me
  loc_BDB336: MemLdRfVar from_stack_1.global_60
  loc_BDB339: LdPrVar
  loc_BDB33B: LateMemCall
  loc_BDB341: LitVarStr var_98, " font-size: 10px;"
  loc_BDB346: PopAdLdVar
  loc_BDB347: FLdPr Me
  loc_BDB34A: MemLdRfVar from_stack_1.global_60
  loc_BDB34D: LdPrVar
  loc_BDB34F: LateMemCall
  loc_BDB355: LitVarStr var_98, "}"
  loc_BDB35A: PopAdLdVar
  loc_BDB35B: FLdPr Me
  loc_BDB35E: MemLdRfVar from_stack_1.global_60
  loc_BDB361: LdPrVar
  loc_BDB363: LateMemCall
  loc_BDB369: LitVarStr var_98, ".Totales {"
  loc_BDB36E: PopAdLdVar
  loc_BDB36F: FLdPr Me
  loc_BDB372: MemLdRfVar from_stack_1.global_60
  loc_BDB375: LdPrVar
  loc_BDB377: LateMemCall
  loc_BDB37D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDB382: PopAdLdVar
  loc_BDB383: FLdPr Me
  loc_BDB386: MemLdRfVar from_stack_1.global_60
  loc_BDB389: LdPrVar
  loc_BDB38B: LateMemCall
  loc_BDB391: LitVarStr var_98, " font-size: 12px;"
  loc_BDB396: PopAdLdVar
  loc_BDB397: FLdPr Me
  loc_BDB39A: MemLdRfVar from_stack_1.global_60
  loc_BDB39D: LdPrVar
  loc_BDB39F: LateMemCall
  loc_BDB3A5: LitVarStr var_98, " font-weight: bold;"
  loc_BDB3AA: PopAdLdVar
  loc_BDB3AB: FLdPr Me
  loc_BDB3AE: MemLdRfVar from_stack_1.global_60
  loc_BDB3B1: LdPrVar
  loc_BDB3B3: LateMemCall
  loc_BDB3B9: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BDB3BE: PopAdLdVar
  loc_BDB3BF: FLdPr Me
  loc_BDB3C2: MemLdRfVar from_stack_1.global_60
  loc_BDB3C5: LdPrVar
  loc_BDB3C7: LateMemCall
  loc_BDB3CD: LitVarStr var_98, "}"
  loc_BDB3D2: PopAdLdVar
  loc_BDB3D3: FLdPr Me
  loc_BDB3D6: MemLdRfVar from_stack_1.global_60
  loc_BDB3D9: LdPrVar
  loc_BDB3DB: LateMemCall
  loc_BDB3E1: LitVarStr var_98, ".SubTotales {"
  loc_BDB3E6: PopAdLdVar
  loc_BDB3E7: FLdPr Me
  loc_BDB3EA: MemLdRfVar from_stack_1.global_60
  loc_BDB3ED: LdPrVar
  loc_BDB3EF: LateMemCall
  loc_BDB3F5: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDB3FA: PopAdLdVar
  loc_BDB3FB: FLdPr Me
  loc_BDB3FE: MemLdRfVar from_stack_1.global_60
  loc_BDB401: LdPrVar
  loc_BDB403: LateMemCall
  loc_BDB409: LitVarStr var_98, " font-size: 10px;"
  loc_BDB40E: PopAdLdVar
  loc_BDB40F: FLdPr Me
  loc_BDB412: MemLdRfVar from_stack_1.global_60
  loc_BDB415: LdPrVar
  loc_BDB417: LateMemCall
  loc_BDB41D: LitVarStr var_98, " font-weight: bold;"
  loc_BDB422: PopAdLdVar
  loc_BDB423: FLdPr Me
  loc_BDB426: MemLdRfVar from_stack_1.global_60
  loc_BDB429: LdPrVar
  loc_BDB42B: LateMemCall
  loc_BDB431: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BDB436: PopAdLdVar
  loc_BDB437: FLdPr Me
  loc_BDB43A: MemLdRfVar from_stack_1.global_60
  loc_BDB43D: LdPrVar
  loc_BDB43F: LateMemCall
  loc_BDB445: LitVarStr var_98, "}"
  loc_BDB44A: PopAdLdVar
  loc_BDB44B: FLdPr Me
  loc_BDB44E: MemLdRfVar from_stack_1.global_60
  loc_BDB451: LdPrVar
  loc_BDB453: LateMemCall
  loc_BDB459: LitVarStr var_98, ".Tilde {"
  loc_BDB45E: PopAdLdVar
  loc_BDB45F: FLdPr Me
  loc_BDB462: MemLdRfVar from_stack_1.global_60
  loc_BDB465: LdPrVar
  loc_BDB467: LateMemCall
  loc_BDB46D: LitVarStr var_98, " font-family: Wingdings;"
  loc_BDB472: PopAdLdVar
  loc_BDB473: FLdPr Me
  loc_BDB476: MemLdRfVar from_stack_1.global_60
  loc_BDB479: LdPrVar
  loc_BDB47B: LateMemCall
  loc_BDB481: LitVarStr var_98, " font-size: 12px;"
  loc_BDB486: PopAdLdVar
  loc_BDB487: FLdPr Me
  loc_BDB48A: MemLdRfVar from_stack_1.global_60
  loc_BDB48D: LdPrVar
  loc_BDB48F: LateMemCall
  loc_BDB495: LitVarStr var_98, "}"
  loc_BDB49A: PopAdLdVar
  loc_BDB49B: FLdPr Me
  loc_BDB49E: MemLdRfVar from_stack_1.global_60
  loc_BDB4A1: LdPrVar
  loc_BDB4A3: LateMemCall
  loc_BDB4A9: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BDB4AE: PopAdLdVar
  loc_BDB4AF: FLdPr Me
  loc_BDB4B2: MemLdRfVar from_stack_1.global_60
  loc_BDB4B5: LdPrVar
  loc_BDB4B7: LateMemCall
  loc_BDB4BD: LitVarStr var_98, "</style>"
  loc_BDB4C2: PopAdLdVar
  loc_BDB4C3: FLdPr Me
  loc_BDB4C6: MemLdRfVar from_stack_1.global_60
  loc_BDB4C9: LdPrVar
  loc_BDB4CB: LateMemCall
  loc_BDB4D1: LitI4 0
  loc_BDB4D6: FStStrCopy var_B0
  loc_BDB4D9: FLdRfVar var_B0
  loc_BDB4DC: LitI4 0
  loc_BDB4E1: FStStrCopy var_AC
  loc_BDB4E4: FLdRfVar var_AC
  loc_BDB4E7: LitI2_Byte 0
  loc_BDB4E9: PopTmpLdAd2 var_C2
  loc_BDB4EC: FLdPr Me
  loc_BDB4EF: MemLdRfVar from_stack_1.global_60
  loc_BDB4F2: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BDB4F7: FFreeStr var_AC = ""
  loc_BDB4FE: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BDB503: PopAdLdVar
  loc_BDB504: FLdPr Me
  loc_BDB507: MemLdRfVar from_stack_1.global_60
  loc_BDB50A: LdPrVar
  loc_BDB50C: LateMemCall
  loc_BDB512: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BDB517: PopAdLdVar
  loc_BDB518: FLdPr Me
  loc_BDB51B: MemLdRfVar from_stack_1.global_60
  loc_BDB51E: LdPrVar
  loc_BDB520: LateMemCall
  loc_BDB526: LitVarStr var_98, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BDB52B: PopAdLdVar
  loc_BDB52C: FLdPr Me
  loc_BDB52F: MemLdRfVar from_stack_1.global_60
  loc_BDB532: LdPrVar
  loc_BDB534: LateMemCall
  loc_BDB53A: FLdPr Me
  loc_BDB53D: MemLdI2 bLogos
  loc_BDB540: BranchF loc_BDB589
  loc_BDB543: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BDB546: LitI2_Byte &H5F
  loc_BDB548: CStrUI1
  loc_BDB54A: FStStrNoPop var_AC
  loc_BDB54D: ConcatStr
  loc_BDB54E: FStStrNoPop var_B0
  loc_BDB551: LitStr """ height="""
  loc_BDB554: ConcatStr
  loc_BDB555: FStStrNoPop var_C8
  loc_BDB558: LitI2_Byte &H3C
  loc_BDB55A: CStrUI1
  loc_BDB55C: FStStrNoPop var_CC
  loc_BDB55F: ConcatStr
  loc_BDB560: FStStrNoPop var_D0
  loc_BDB563: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BDB566: ConcatStr
  loc_BDB567: CVarStr var_C0
  loc_BDB56A: PopAdLdVar
  loc_BDB56B: FLdPr Me
  loc_BDB56E: MemLdRfVar from_stack_1.global_60
  loc_BDB571: LdPrVar
  loc_BDB573: LateMemCall
  loc_BDB579: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = ""
  loc_BDB586: FFree1Var var_C0 = ""
  loc_BDB589: LitStr "    <br>"
  loc_BDB58C: LitStr "Municipalidad de Guaymallén"
  loc_BDB58F: ConcatStr
  loc_BDB590: FStStrNoPop var_AC
  loc_BDB593: LitStr "</p>"
  loc_BDB596: ConcatStr
  loc_BDB597: CVarStr var_C0
  loc_BDB59A: PopAdLdVar
  loc_BDB59B: FLdPr Me
  loc_BDB59E: MemLdRfVar from_stack_1.global_60
  loc_BDB5A1: LdPrVar
  loc_BDB5A3: LateMemCall
  loc_BDB5A9: FFree1Str var_AC
  loc_BDB5AC: FFree1Var var_C0 = ""
  loc_BDB5AF: LitStr "    <p>"
  loc_BDB5B2: FLdRfVar var_AC
  loc_BDB5B5: FLdPr Me
  loc_BDB5B8:  = Me.Caption
  loc_BDB5BD: ILdRf var_AC
  loc_BDB5C0: ConcatStr
  loc_BDB5C1: FStStrNoPop var_B0
  loc_BDB5C4: LitStr "</p></th>"
  loc_BDB5C7: ConcatStr
  loc_BDB5C8: CVarStr var_C0
  loc_BDB5CB: PopAdLdVar
  loc_BDB5CC: FLdPr Me
  loc_BDB5CF: MemLdRfVar from_stack_1.global_60
  loc_BDB5D2: LdPrVar
  loc_BDB5D4: LateMemCall
  loc_BDB5DA: FFreeStr var_AC = ""
  loc_BDB5E1: FFree1Var var_C0 = ""
  loc_BDB5E4: LitVarStr var_98, "  </tr>"
  loc_BDB5E9: PopAdLdVar
  loc_BDB5EA: FLdPr Me
  loc_BDB5ED: MemLdRfVar from_stack_1.global_60
  loc_BDB5F0: LdPrVar
  loc_BDB5F2: LateMemCall
  loc_BDB5F8: LitVarStr var_98, "  <tr>"
  loc_BDB5FD: PopAdLdVar
  loc_BDB5FE: FLdPr Me
  loc_BDB601: MemLdRfVar from_stack_1.global_60
  loc_BDB604: LdPrVar
  loc_BDB606: LateMemCall
  loc_BDB60C: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BDB611: PopAdLdVar
  loc_BDB612: FLdPr Me
  loc_BDB615: MemLdRfVar from_stack_1.global_60
  loc_BDB618: LdPrVar
  loc_BDB61A: LateMemCall
  loc_BDB620: LitVarStr var_98, "  </tr>"
  loc_BDB625: PopAdLdVar
  loc_BDB626: FLdPr Me
  loc_BDB629: MemLdRfVar from_stack_1.global_60
  loc_BDB62C: LdPrVar
  loc_BDB62E: LateMemCall
  loc_BDB634: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BDB639: PopAdLdVar
  loc_BDB63A: FLdPr Me
  loc_BDB63D: MemLdRfVar from_stack_1.global_60
  loc_BDB640: LdPrVar
  loc_BDB642: LateMemCall
  loc_BDB648: LitStr "    <td align=""left""><strong> Oficina: "
  loc_BDB64B: FLdRfVar var_AC
  loc_BDB64E: FLdPr Me
  loc_BDB651: VCallAd Control_ID_OficinaCbo
  loc_BDB654: FStAdFunc var_D4
  loc_BDB657: FLdPr var_D4
  loc_BDB65A:  = Me.Text
  loc_BDB65F: ILdRf var_AC
  loc_BDB662: ConcatStr
  loc_BDB663: FStStrNoPop var_B0
  loc_BDB666: LitStr "</strong><br>"
  loc_BDB669: ConcatStr
  loc_BDB66A: CVarStr var_C0
  loc_BDB66D: PopAdLdVar
  loc_BDB66E: FLdPr Me
  loc_BDB671: MemLdRfVar from_stack_1.global_60
  loc_BDB674: LdPrVar
  loc_BDB676: LateMemCall
  loc_BDB67C: FFreeStr var_AC = ""
  loc_BDB683: FFree1Ad var_D4
  loc_BDB686: FFree1Var var_C0 = ""
  loc_BDB689: LitStr "                       <strong> Cuenta: "
  loc_BDB68C: FLdRfVar var_AC
  loc_BDB68F: FLdPr Me
  loc_BDB692: VCallAd Control_ID_NumeCtaTxt
  loc_BDB695: FStAdFunc var_D4
  loc_BDB698: FLdPr var_D4
  loc_BDB69B:  = Me.Text
  loc_BDB6A0: ILdRf var_AC
  loc_BDB6A3: ConcatStr
  loc_BDB6A4: FStStrNoPop var_B0
  loc_BDB6A7: LitStr "</strong></td>"
  loc_BDB6AA: ConcatStr
  loc_BDB6AB: CVarStr var_C0
  loc_BDB6AE: PopAdLdVar
  loc_BDB6AF: FLdPr Me
  loc_BDB6B2: MemLdRfVar from_stack_1.global_60
  loc_BDB6B5: LdPrVar
  loc_BDB6B7: LateMemCall
  loc_BDB6BD: FFreeStr var_AC = ""
  loc_BDB6C4: FFree1Ad var_D4
  loc_BDB6C7: FFree1Var var_C0 = ""
  loc_BDB6CA: LitVarStr var_98, "  </tr>"
  loc_BDB6CF: PopAdLdVar
  loc_BDB6D0: FLdPr Me
  loc_BDB6D3: MemLdRfVar from_stack_1.global_60
  loc_BDB6D6: LdPrVar
  loc_BDB6D8: LateMemCall
  loc_BDB6DE: LitVarStr var_98, "</table>"
  loc_BDB6E3: PopAdLdVar
  loc_BDB6E4: FLdPr Me
  loc_BDB6E7: MemLdRfVar from_stack_1.global_60
  loc_BDB6EA: LdPrVar
  loc_BDB6EC: LateMemCall
  loc_BDB6F2: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BDB6F7: PopAdLdVar
  loc_BDB6F8: FLdPr Me
  loc_BDB6FB: MemLdRfVar from_stack_1.global_60
  loc_BDB6FE: LdPrVar
  loc_BDB700: LateMemCall
  loc_BDB706: LitVarStr var_98, "  <thead>"
  loc_BDB70B: PopAdLdVar
  loc_BDB70C: FLdPr Me
  loc_BDB70F: MemLdRfVar from_stack_1.global_60
  loc_BDB712: LdPrVar
  loc_BDB714: LateMemCall
  loc_BDB71A: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BDB71F: PopAdLdVar
  loc_BDB720: FLdPr Me
  loc_BDB723: MemLdRfVar from_stack_1.global_60
  loc_BDB726: LdPrVar
  loc_BDB728: LateMemCall
  loc_BDB72E: LitVarStr var_98, "    <th>Estado</th>"
  loc_BDB733: PopAdLdVar
  loc_BDB734: FLdPr Me
  loc_BDB737: MemLdRfVar from_stack_1.global_60
  loc_BDB73A: LdPrVar
  loc_BDB73C: LateMemCall
  loc_BDB742: LitVarStr var_98, "    <th>Fecha de Alta</th>"
  loc_BDB747: PopAdLdVar
  loc_BDB748: FLdPr Me
  loc_BDB74B: MemLdRfVar from_stack_1.global_60
  loc_BDB74E: LdPrVar
  loc_BDB750: LateMemCall
  loc_BDB756: LitVarStr var_98, "    <th>Apremio</th>"
  loc_BDB75B: PopAdLdVar
  loc_BDB75C: FLdPr Me
  loc_BDB75F: MemLdRfVar from_stack_1.global_60
  loc_BDB762: LdPrVar
  loc_BDB764: LateMemCall
  loc_BDB76A: LitVarStr var_98, "    <th>Auto</th>"
  loc_BDB76F: PopAdLdVar
  loc_BDB770: FLdPr Me
  loc_BDB773: MemLdRfVar from_stack_1.global_60
  loc_BDB776: LdPrVar
  loc_BDB778: LateMemCall
  loc_BDB77E: LitVarStr var_98, "    <th>Rec.</th>"
  loc_BDB783: PopAdLdVar
  loc_BDB784: FLdPr Me
  loc_BDB787: MemLdRfVar from_stack_1.global_60
  loc_BDB78A: LdPrVar
  loc_BDB78C: LateMemCall
  loc_BDB792: LitVarStr var_98, "    <th>Ofi.</th>"
  loc_BDB797: PopAdLdVar
  loc_BDB798: FLdPr Me
  loc_BDB79B: MemLdRfVar from_stack_1.global_60
  loc_BDB79E: LdPrVar
  loc_BDB7A0: LateMemCall
  loc_BDB7A6: LitVarStr var_98, "    <th>Secr.</th>"
  loc_BDB7AB: PopAdLdVar
  loc_BDB7AC: FLdPr Me
  loc_BDB7AF: MemLdRfVar from_stack_1.global_60
  loc_BDB7B2: LdPrVar
  loc_BDB7B4: LateMemCall
  loc_BDB7BA: LitVarStr var_98, "    <th>Juzg.</th>"
  loc_BDB7BF: PopAdLdVar
  loc_BDB7C0: FLdPr Me
  loc_BDB7C3: MemLdRfVar from_stack_1.global_60
  loc_BDB7C6: LdPrVar
  loc_BDB7C8: LateMemCall
  loc_BDB7CE: LitVarStr var_98, "    <th>Capital</th>"
  loc_BDB7D3: PopAdLdVar
  loc_BDB7D4: FLdPr Me
  loc_BDB7D7: MemLdRfVar from_stack_1.global_60
  loc_BDB7DA: LdPrVar
  loc_BDB7DC: LateMemCall
  loc_BDB7E2: LitVarStr var_98, "    <th>Recargo</th>"
  loc_BDB7E7: PopAdLdVar
  loc_BDB7E8: FLdPr Me
  loc_BDB7EB: MemLdRfVar from_stack_1.global_60
  loc_BDB7EE: LdPrVar
  loc_BDB7F0: LateMemCall
  loc_BDB7F6: LitVarStr var_98, "    <th>Total</th>"
  loc_BDB7FB: PopAdLdVar
  loc_BDB7FC: FLdPr Me
  loc_BDB7FF: MemLdRfVar from_stack_1.global_60
  loc_BDB802: LdPrVar
  loc_BDB804: LateMemCall
  loc_BDB80A: LitVarStr var_98, "    <th>Gastos</th>"
  loc_BDB80F: PopAdLdVar
  loc_BDB810: FLdPr Me
  loc_BDB813: MemLdRfVar from_stack_1.global_60
  loc_BDB816: LdPrVar
  loc_BDB818: LateMemCall
  loc_BDB81E: LitVarStr var_98, "  </tr>"
  loc_BDB823: PopAdLdVar
  loc_BDB824: FLdPr Me
  loc_BDB827: MemLdRfVar from_stack_1.global_60
  loc_BDB82A: LdPrVar
  loc_BDB82C: LateMemCall
  loc_BDB832: LitVarStr var_98, "  </thead>"
  loc_BDB837: PopAdLdVar
  loc_BDB838: FLdPr Me
  loc_BDB83B: MemLdRfVar from_stack_1.global_60
  loc_BDB83E: LdPrVar
  loc_BDB840: LateMemCall
  loc_BDB846: ExitProcHresult
End Function

Private Function Proc_282_21_A0D558() 'A0D558
  'Data Table: 46DA38
  loc_A0D518: LitVarStr var_94, "</table>"
  loc_A0D51D: PopAdLdVar
  loc_A0D51E: FLdPr Me
  loc_A0D521: MemLdRfVar from_stack_1.global_60
  loc_A0D524: LdPrVar
  loc_A0D526: LateMemCall
  loc_A0D52C: LitVarStr var_94, "</body>"
  loc_A0D531: PopAdLdVar
  loc_A0D532: FLdPr Me
  loc_A0D535: MemLdRfVar from_stack_1.global_60
  loc_A0D538: LdPrVar
  loc_A0D53A: LateMemCall
  loc_A0D540: LitVarStr var_94, "</html>"
  loc_A0D545: PopAdLdVar
  loc_A0D546: FLdPr Me
  loc_A0D549: MemLdRfVar from_stack_1.global_60
  loc_A0D54C: LdPrVar
  loc_A0D54E: LateMemCall
  loc_A0D554: ExitProcHresult
End Function
