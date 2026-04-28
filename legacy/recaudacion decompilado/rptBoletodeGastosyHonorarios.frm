VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptBoletodeGastosyHonorarios
  Caption = "Boleto de Gastos y Honorarios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptBoletodeGastosyHonorarios.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 7560
  ClientHeight = 2976
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1320
    Width = 4095
    Height = 1215
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 0
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
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
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1320
    Width = 1815
    Height = 1215
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
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
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2724
    Width = 7560
    Height = 252
    TabIndex = 7
    OleObjectBlob = "rptBoletodeGastosyHonorarios.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6360
    Top = 1560
    Width = 735
    Height = 615
    TabIndex = 4
    Cancel = -1  'True
    Picture = "rptBoletodeGastosyHonorarios.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptBoletodeGastosyHonorarios.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7335
    Height = 1215
    TabIndex = 5
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5400
      Top = 360
      Width = 1695
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
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6600
    Top = 1800
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptBoletodeGastosyHonorarios.frx":0C00
  End
End

Attribute VB_Name = "rptBoletodeGastosyHonorarios"

Public bGenerado As Boolean
Public PeriBole As String
Public NumeBole As String
Public FeveApre As String
Public BimeCtct As String


Private Sub Form_Load() '9E31BC
  'Data Table: 45234C
  loc_9E31A0: ILdRf Me
  loc_9E31A3: CastAd
  loc_9E31A6: FStAdFunc var_88
  loc_9E31A9: FLdRfVar var_88
  loc_9E31AC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9E31B1: FFree1Ad var_88
  loc_9E31B4: Call cmdNueva_Click()
  loc_9E31B9: ExitProcHresult
  loc_9E31BA: BranchF loc_9F069F
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CDDC4
  'Data Table: 45234C
  loc_9CDDAC: FLdPr Me
  loc_9CDDAF: VCallAd Control_ID_wbbReporte
  loc_9CDDB2: FStAdFunc var_88
  loc_9CDDB5: FLdRfVar var_88
  loc_9CDDB8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CDDBD: FFree1Ad var_88
  loc_9CDDC0: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9E334C
  'Data Table: 45234C
  loc_9E3330: LitI2_Byte 0
  loc_9E3332: ILdRf Me
  loc_9E3335: CastAd
  loc_9E3338: FStAdFunc var_88
  loc_9E333B: FLdRfVar var_88
  loc_9E333E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9E3343: FFree1Ad var_88
  loc_9E3346: Call cmdSalir_Click()
  loc_9E334B: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A03DA0
  'Data Table: 45234C
  loc_A03D70: LitVarStr var_94, "Cerrando..."
  loc_A03D75: PopAdLdVar
  loc_A03D76: FLdPr Me
  loc_A03D79: VCallAd Control_ID_statusBar
  loc_A03D7C: FStAdFunc var_A8
  loc_A03D7F: FLdPr var_A8
  loc_A03D82: LateIdSt
  loc_A03D87: FFree1Ad var_A8
  loc_A03D8A: ILdRf Me
  loc_A03D8D: FStAdNoPop
  loc_A03D91: ImpAdLdRf MemVar_D9C5D8
  loc_A03D94: NewIfNullPr Global
  loc_A03D97: Global.Unload from_stack_1
  loc_A03D9C: FFree1Ad var_A8
  loc_A03D9F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E33EC
  'Data Table: 45234C
  loc_9E33D0: LitI2_Byte 0
  loc_9E33D2: PopTmpLdAd2 var_8A
  loc_9E33D5: ILdRf Me
  loc_9E33D8: CastAd
  loc_9E33DB: FStAdFunc var_88
  loc_9E33DE: FLdRfVar var_88
  loc_9E33E1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E33E6: FFree1Ad var_88
  loc_9E33E9: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13708
  'Data Table: 45234C
  loc_A136D0: FLdPr Me
  loc_A136D3: VCallAd Control_ID_statusBar
  loc_A136D6: FStAdFunc var_88
  loc_A136D9: FLdPr var_88
  loc_A136DC: LateIdLdVar var_98 DispID_1 0
  loc_A136E3: CStrVarTmp
  loc_A136E4: CVarStr var_A8
  loc_A136E7: PopAdLdVar
  loc_A136E8: FLdPr Me
  loc_A136EB: VCallAd Control_ID_statusBar
  loc_A136EE: FStAdFunc var_BC
  loc_A136F1: FLdPr var_BC
  loc_A136F4: LateIdSt
  loc_A136F9: FFreeAd var_88 = ""
  loc_A13700: FFreeVar var_98 = ""
  loc_A13707: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CDCE0
  'Data Table: 45234C
  loc_9CDCC8: ILdRf Me
  loc_9CDCCB: CastAd
  loc_9CDCCE: FStAdFunc var_88
  loc_9CDCD1: FLdRfVar var_88
  loc_9CDCD4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CDCD9: FFree1Ad var_88
  loc_9CDCDC: ExitProcHresult
  loc_9CDCDD: FLdPr arg_F00
End Sub

Private Sub cmdNueva_Click() '9E731C
  'Data Table: 45234C
  loc_9E72FC: LitI2_Byte 0
  loc_9E72FE: FLdPr Me
  loc_9E7301: MemStI2 bGenerado
  loc_9E7304: LitI2_Byte 0
  loc_9E7306: ILdRf Me
  loc_9E7309: CastAd
  loc_9E730C: FStAdFunc var_88
  loc_9E730F: FLdRfVar var_88
  loc_9E7312: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_9E7317: FFree1Ad var_88
  loc_9E731A: ExitProcHresult
  loc_9E731B: GeI4
End Sub

Public Function bGeneradoGet() '452CD0
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '452CDF
  bGenerado = Value
End Sub

Public Function PeriBoleGet() '452CEE
  PeriBoleGet = PeriBole
End Function

Public Sub PeriBolePut(Value) '452CFD
  PeriBole = Value
End Sub

Public Function NumeBoleGet() '452D0C
  NumeBoleGet = NumeBole
End Function

Public Sub NumeBolePut(Value) '452D1B
  NumeBole = Value
End Sub

Public Function FeveApreGet() '452D2A
  FeveApreGet = FeveApre
End Function

Public Sub FeveAprePut(Value) '452D39
  FeveApre = Value
End Sub

Public Function BimeCtctGet() '452D48
  BimeCtctGet = BimeCtct
End Function

Public Sub BimeCtctPut(Value) '452D57
  BimeCtct = Value
End Sub

Public Sub GeneraReporte() 'A5B03C
  'Data Table: 45234C
  loc_A5AFD8: FLdPr Me
  loc_A5AFDB: MemLdI2 bGenerado
  loc_A5AFDE: BranchF loc_A5AFE2
  loc_A5AFE1: ExitProcHresult
  loc_A5AFE2: LitVarStr var_94, "Generando reporte..."
  loc_A5AFE7: PopAdLdVar
  loc_A5AFE8: FLdPr Me
  loc_A5AFEB: VCallAd Control_ID_statusBar
  loc_A5AFEE: FStAdFunc var_A8
  loc_A5AFF1: FLdPr var_A8
  loc_A5AFF4: LateIdSt
  loc_A5AFF9: FFree1Ad var_A8
  loc_A5AFFC: LitI4 &HB
  loc_A5B001: CI2I4
  loc_A5B002: FLdPr Me
  loc_A5B005: Me.MousePointer = from_stack_1
  loc_A5B00A: LitI2_Byte &HFF
  loc_A5B00C: FLdPr Me
  loc_A5B00F: MemStI2 bGenerado
  loc_A5B012: LitI4 0
  loc_A5B017: CI2I4
  loc_A5B018: FLdPr Me
  loc_A5B01B: Me.MousePointer = from_stack_1
  loc_A5B020: LitVarStr var_94, vbNullString
  loc_A5B025: PopAdLdVar
  loc_A5B026: FLdPr Me
  loc_A5B029: VCallAd Control_ID_statusBar
  loc_A5B02C: FStAdFunc var_A8
  loc_A5B02F: FLdPr var_A8
  loc_A5B032: LateIdSt
  loc_A5B037: FFree1Ad var_A8
  loc_A5B03A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A2CD2C
  'Data Table: 45234C
  loc_A2CCE0: FLdRfVar var_88
  loc_A2CCE3: LitI2_Byte 0
  loc_A2CCE5: LitI2_Byte &HFF
  loc_A2CCE7: ImpAdLdI4 MemVar_D93C84
  loc_A2CCEA: FLdPr Me
  loc_A2CCED: MemLdRfVar from_stack_1.global_72
  loc_A2CCF0: NewIfNullPr IFileSystem3
  loc_A2CCF3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A2CCF8: ILdRf var_88
  loc_A2CCFB: FLdPr Me
  loc_A2CCFE: MemStVarAd
  loc_A2CD02: FFree1Ad var_88
  loc_A2CD05: LitI2_Byte &HFF
  loc_A2CD07: ImpAdStI2 MemVar_D93C8A
  loc_A2CD0A: Call Proc_288_20_C976B0()
  loc_A2CD0F: Call Proc_288_21_9F2FB4()
  loc_A2CD14: FLdPr Me
  loc_A2CD17: MemLdRfVar from_stack_1.global_76
  loc_A2CD1A: LdPrVar
  loc_A2CD1C: LateMemCall
  loc_A2CD22: LitStr vbNullString
  loc_A2CD25: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A2CD2A: ExitProcHresult
End Sub

Private Function Proc_288_20_C976B0() 'C976B0
  'Data Table: 45234C
  loc_C95D1C: LitVarStr var_98, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C95D21: PopAdLdVar
  loc_C95D22: FLdPr Me
  loc_C95D25: MemLdRfVar from_stack_1.global_76
  loc_C95D28: LdPrVar
  loc_C95D2A: LateMemCall
  loc_C95D30: LitVarStr var_98, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C95D35: PopAdLdVar
  loc_C95D36: FLdPr Me
  loc_C95D39: MemLdRfVar from_stack_1.global_76
  loc_C95D3C: LdPrVar
  loc_C95D3E: LateMemCall
  loc_C95D44: LitVarStr var_98, "<head>"
  loc_C95D49: PopAdLdVar
  loc_C95D4A: FLdPr Me
  loc_C95D4D: MemLdRfVar from_stack_1.global_76
  loc_C95D50: LdPrVar
  loc_C95D52: LateMemCall
  loc_C95D58: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C95D5D: PopAdLdVar
  loc_C95D5E: FLdPr Me
  loc_C95D61: MemLdRfVar from_stack_1.global_76
  loc_C95D64: LdPrVar
  loc_C95D66: LateMemCall
  loc_C95D6C: LitVarStr var_98, "<title>Emisión de Boleto</title>"
  loc_C95D71: PopAdLdVar
  loc_C95D72: FLdPr Me
  loc_C95D75: MemLdRfVar from_stack_1.global_76
  loc_C95D78: LdPrVar
  loc_C95D7A: LateMemCall
  loc_C95D80: LitVarStr var_98, "<style type=""text/css"">"
  loc_C95D85: PopAdLdVar
  loc_C95D86: FLdPr Me
  loc_C95D89: MemLdRfVar from_stack_1.global_76
  loc_C95D8C: LdPrVar
  loc_C95D8E: LateMemCall
  loc_C95D94: LitVarStr var_98, "<!--"
  loc_C95D99: PopAdLdVar
  loc_C95D9A: FLdPr Me
  loc_C95D9D: MemLdRfVar from_stack_1.global_76
  loc_C95DA0: LdPrVar
  loc_C95DA2: LateMemCall
  loc_C95DA8: LitVarStr var_98, ".Encabezado {"
  loc_C95DAD: PopAdLdVar
  loc_C95DAE: FLdPr Me
  loc_C95DB1: MemLdRfVar from_stack_1.global_76
  loc_C95DB4: LdPrVar
  loc_C95DB6: LateMemCall
  loc_C95DBC: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_C95DC1: PopAdLdVar
  loc_C95DC2: FLdPr Me
  loc_C95DC5: MemLdRfVar from_stack_1.global_76
  loc_C95DC8: LdPrVar
  loc_C95DCA: LateMemCall
  loc_C95DD0: LitVarStr var_98, " font-size: 10px;"
  loc_C95DD5: PopAdLdVar
  loc_C95DD6: FLdPr Me
  loc_C95DD9: MemLdRfVar from_stack_1.global_76
  loc_C95DDC: LdPrVar
  loc_C95DDE: LateMemCall
  loc_C95DE4: LitVarStr var_98, " background-color: #F0F0F0;"
  loc_C95DE9: PopAdLdVar
  loc_C95DEA: FLdPr Me
  loc_C95DED: MemLdRfVar from_stack_1.global_76
  loc_C95DF0: LdPrVar
  loc_C95DF2: LateMemCall
  loc_C95DF8: LitVarStr var_98, "}"
  loc_C95DFD: PopAdLdVar
  loc_C95DFE: FLdPr Me
  loc_C95E01: MemLdRfVar from_stack_1.global_76
  loc_C95E04: LdPrVar
  loc_C95E06: LateMemCall
  loc_C95E0C: LitVarStr var_98, ".Normal {"
  loc_C95E11: PopAdLdVar
  loc_C95E12: FLdPr Me
  loc_C95E15: MemLdRfVar from_stack_1.global_76
  loc_C95E18: LdPrVar
  loc_C95E1A: LateMemCall
  loc_C95E20: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C95E25: PopAdLdVar
  loc_C95E26: FLdPr Me
  loc_C95E29: MemLdRfVar from_stack_1.global_76
  loc_C95E2C: LdPrVar
  loc_C95E2E: LateMemCall
  loc_C95E34: LitVarStr var_98, " font-size: 11px;"
  loc_C95E39: PopAdLdVar
  loc_C95E3A: FLdPr Me
  loc_C95E3D: MemLdRfVar from_stack_1.global_76
  loc_C95E40: LdPrVar
  loc_C95E42: LateMemCall
  loc_C95E48: LitVarStr var_98, " vertical-align: top;"
  loc_C95E4D: PopAdLdVar
  loc_C95E4E: FLdPr Me
  loc_C95E51: MemLdRfVar from_stack_1.global_76
  loc_C95E54: LdPrVar
  loc_C95E56: LateMemCall
  loc_C95E5C: LitVarStr var_98, "}"
  loc_C95E61: PopAdLdVar
  loc_C95E62: FLdPr Me
  loc_C95E65: MemLdRfVar from_stack_1.global_76
  loc_C95E68: LdPrVar
  loc_C95E6A: LateMemCall
  loc_C95E70: LitVarStr var_98, ".NormalDetalle {"
  loc_C95E75: PopAdLdVar
  loc_C95E76: FLdPr Me
  loc_C95E79: MemLdRfVar from_stack_1.global_76
  loc_C95E7C: LdPrVar
  loc_C95E7E: LateMemCall
  loc_C95E84: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C95E89: PopAdLdVar
  loc_C95E8A: FLdPr Me
  loc_C95E8D: MemLdRfVar from_stack_1.global_76
  loc_C95E90: LdPrVar
  loc_C95E92: LateMemCall
  loc_C95E98: LitVarStr var_98, " font-size: 9px;"
  loc_C95E9D: PopAdLdVar
  loc_C95E9E: FLdPr Me
  loc_C95EA1: MemLdRfVar from_stack_1.global_76
  loc_C95EA4: LdPrVar
  loc_C95EA6: LateMemCall
  loc_C95EAC: LitVarStr var_98, " vertical-align: top;"
  loc_C95EB1: PopAdLdVar
  loc_C95EB2: FLdPr Me
  loc_C95EB5: MemLdRfVar from_stack_1.global_76
  loc_C95EB8: LdPrVar
  loc_C95EBA: LateMemCall
  loc_C95EC0: LitVarStr var_98, "}"
  loc_C95EC5: PopAdLdVar
  loc_C95EC6: FLdPr Me
  loc_C95EC9: MemLdRfVar from_stack_1.global_76
  loc_C95ECC: LdPrVar
  loc_C95ECE: LateMemCall
  loc_C95ED4: LitVarStr var_98, ".NormalBloqueFin {"
  loc_C95ED9: PopAdLdVar
  loc_C95EDA: FLdPr Me
  loc_C95EDD: MemLdRfVar from_stack_1.global_76
  loc_C95EE0: LdPrVar
  loc_C95EE2: LateMemCall
  loc_C95EE8: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C95EED: PopAdLdVar
  loc_C95EEE: FLdPr Me
  loc_C95EF1: MemLdRfVar from_stack_1.global_76
  loc_C95EF4: LdPrVar
  loc_C95EF6: LateMemCall
  loc_C95EFC: LitVarStr var_98, " font-size: 12px;"
  loc_C95F01: PopAdLdVar
  loc_C95F02: FLdPr Me
  loc_C95F05: MemLdRfVar from_stack_1.global_76
  loc_C95F08: LdPrVar
  loc_C95F0A: LateMemCall
  loc_C95F10: LitVarStr var_98, " vertical-align: top;"
  loc_C95F15: PopAdLdVar
  loc_C95F16: FLdPr Me
  loc_C95F19: MemLdRfVar from_stack_1.global_76
  loc_C95F1C: LdPrVar
  loc_C95F1E: LateMemCall
  loc_C95F24: LitVarStr var_98, "}"
  loc_C95F29: PopAdLdVar
  loc_C95F2A: FLdPr Me
  loc_C95F2D: MemLdRfVar from_stack_1.global_76
  loc_C95F30: LdPrVar
  loc_C95F32: LateMemCall
  loc_C95F38: LitVarStr var_98, ".NombreMunicipio {"
  loc_C95F3D: PopAdLdVar
  loc_C95F3E: FLdPr Me
  loc_C95F41: MemLdRfVar from_stack_1.global_76
  loc_C95F44: LdPrVar
  loc_C95F46: LateMemCall
  loc_C95F4C: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_C95F51: PopAdLdVar
  loc_C95F52: FLdPr Me
  loc_C95F55: MemLdRfVar from_stack_1.global_76
  loc_C95F58: LdPrVar
  loc_C95F5A: LateMemCall
  loc_C95F60: LitVarStr var_98, " font-size: 14px;"
  loc_C95F65: PopAdLdVar
  loc_C95F66: FLdPr Me
  loc_C95F69: MemLdRfVar from_stack_1.global_76
  loc_C95F6C: LdPrVar
  loc_C95F6E: LateMemCall
  loc_C95F74: LitVarStr var_98, " font-weight: bold;"
  loc_C95F79: PopAdLdVar
  loc_C95F7A: FLdPr Me
  loc_C95F7D: MemLdRfVar from_stack_1.global_76
  loc_C95F80: LdPrVar
  loc_C95F82: LateMemCall
  loc_C95F88: LitVarStr var_98, "}"
  loc_C95F8D: PopAdLdVar
  loc_C95F8E: FLdPr Me
  loc_C95F91: MemLdRfVar from_stack_1.global_76
  loc_C95F94: LdPrVar
  loc_C95F96: LateMemCall
  loc_C95F9C: LitVarStr var_98, ".NombreMunicipioBloqueFin {"
  loc_C95FA1: PopAdLdVar
  loc_C95FA2: FLdPr Me
  loc_C95FA5: MemLdRfVar from_stack_1.global_76
  loc_C95FA8: LdPrVar
  loc_C95FAA: LateMemCall
  loc_C95FB0: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_C95FB5: PopAdLdVar
  loc_C95FB6: FLdPr Me
  loc_C95FB9: MemLdRfVar from_stack_1.global_76
  loc_C95FBC: LdPrVar
  loc_C95FBE: LateMemCall
  loc_C95FC4: LitVarStr var_98, " font-size: 10px;"
  loc_C95FC9: PopAdLdVar
  loc_C95FCA: FLdPr Me
  loc_C95FCD: MemLdRfVar from_stack_1.global_76
  loc_C95FD0: LdPrVar
  loc_C95FD2: LateMemCall
  loc_C95FD8: LitVarStr var_98, "}"
  loc_C95FDD: PopAdLdVar
  loc_C95FDE: FLdPr Me
  loc_C95FE1: MemLdRfVar from_stack_1.global_76
  loc_C95FE4: LdPrVar
  loc_C95FE6: LateMemCall
  loc_C95FEC: LitVarStr var_98, ".DatosMunicipio {"
  loc_C95FF1: PopAdLdVar
  loc_C95FF2: FLdPr Me
  loc_C95FF5: MemLdRfVar from_stack_1.global_76
  loc_C95FF8: LdPrVar
  loc_C95FFA: LateMemCall
  loc_C96000: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_C96005: PopAdLdVar
  loc_C96006: FLdPr Me
  loc_C96009: MemLdRfVar from_stack_1.global_76
  loc_C9600C: LdPrVar
  loc_C9600E: LateMemCall
  loc_C96014: LitVarStr var_98, " font-size: 12px;"
  loc_C96019: PopAdLdVar
  loc_C9601A: FLdPr Me
  loc_C9601D: MemLdRfVar from_stack_1.global_76
  loc_C96020: LdPrVar
  loc_C96022: LateMemCall
  loc_C96028: LitVarStr var_98, "}"
  loc_C9602D: PopAdLdVar
  loc_C9602E: FLdPr Me
  loc_C96031: MemLdRfVar from_stack_1.global_76
  loc_C96034: LdPrVar
  loc_C96036: LateMemCall
  loc_C9603C: LitVarStr var_98, ".Totales {"
  loc_C96041: PopAdLdVar
  loc_C96042: FLdPr Me
  loc_C96045: MemLdRfVar from_stack_1.global_76
  loc_C96048: LdPrVar
  loc_C9604A: LateMemCall
  loc_C96050: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C96055: PopAdLdVar
  loc_C96056: FLdPr Me
  loc_C96059: MemLdRfVar from_stack_1.global_76
  loc_C9605C: LdPrVar
  loc_C9605E: LateMemCall
  loc_C96064: LitVarStr var_98, " font-size: 13px;"
  loc_C96069: PopAdLdVar
  loc_C9606A: FLdPr Me
  loc_C9606D: MemLdRfVar from_stack_1.global_76
  loc_C96070: LdPrVar
  loc_C96072: LateMemCall
  loc_C96078: LitVarStr var_98, " vertical-align: top;"
  loc_C9607D: PopAdLdVar
  loc_C9607E: FLdPr Me
  loc_C96081: MemLdRfVar from_stack_1.global_76
  loc_C96084: LdPrVar
  loc_C96086: LateMemCall
  loc_C9608C: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_C96091: PopAdLdVar
  loc_C96092: FLdPr Me
  loc_C96095: MemLdRfVar from_stack_1.global_76
  loc_C96098: LdPrVar
  loc_C9609A: LateMemCall
  loc_C960A0: LitVarStr var_98, " font-weight: bold;"
  loc_C960A5: PopAdLdVar
  loc_C960A6: FLdPr Me
  loc_C960A9: MemLdRfVar from_stack_1.global_76
  loc_C960AC: LdPrVar
  loc_C960AE: LateMemCall
  loc_C960B4: LitVarStr var_98, "}"
  loc_C960B9: PopAdLdVar
  loc_C960BA: FLdPr Me
  loc_C960BD: MemLdRfVar from_stack_1.global_76
  loc_C960C0: LdPrVar
  loc_C960C2: LateMemCall
  loc_C960C8: LitVarStr var_98, ".Total {"
  loc_C960CD: PopAdLdVar
  loc_C960CE: FLdPr Me
  loc_C960D1: MemLdRfVar from_stack_1.global_76
  loc_C960D4: LdPrVar
  loc_C960D6: LateMemCall
  loc_C960DC: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C960E1: PopAdLdVar
  loc_C960E2: FLdPr Me
  loc_C960E5: MemLdRfVar from_stack_1.global_76
  loc_C960E8: LdPrVar
  loc_C960EA: LateMemCall
  loc_C960F0: LitVarStr var_98, " font-size: 14px;"
  loc_C960F5: PopAdLdVar
  loc_C960F6: FLdPr Me
  loc_C960F9: MemLdRfVar from_stack_1.global_76
  loc_C960FC: LdPrVar
  loc_C960FE: LateMemCall
  loc_C96104: LitVarStr var_98, " vertical-align: top;"
  loc_C96109: PopAdLdVar
  loc_C9610A: FLdPr Me
  loc_C9610D: MemLdRfVar from_stack_1.global_76
  loc_C96110: LdPrVar
  loc_C96112: LateMemCall
  loc_C96118: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_C9611D: PopAdLdVar
  loc_C9611E: FLdPr Me
  loc_C96121: MemLdRfVar from_stack_1.global_76
  loc_C96124: LdPrVar
  loc_C96126: LateMemCall
  loc_C9612C: LitVarStr var_98, " font-weight: bold;"
  loc_C96131: PopAdLdVar
  loc_C96132: FLdPr Me
  loc_C96135: MemLdRfVar from_stack_1.global_76
  loc_C96138: LdPrVar
  loc_C9613A: LateMemCall
  loc_C96140: LitVarStr var_98, " border: 1px solid #000000;"
  loc_C96145: PopAdLdVar
  loc_C96146: FLdPr Me
  loc_C96149: MemLdRfVar from_stack_1.global_76
  loc_C9614C: LdPrVar
  loc_C9614E: LateMemCall
  loc_C96154: LitVarStr var_98, "}"
  loc_C96159: PopAdLdVar
  loc_C9615A: FLdPr Me
  loc_C9615D: MemLdRfVar from_stack_1.global_76
  loc_C96160: LdPrVar
  loc_C96162: LateMemCall
  loc_C96168: LitVarStr var_98, ".Vencimiento {"
  loc_C9616D: PopAdLdVar
  loc_C9616E: FLdPr Me
  loc_C96171: MemLdRfVar from_stack_1.global_76
  loc_C96174: LdPrVar
  loc_C96176: LateMemCall
  loc_C9617C: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C96181: PopAdLdVar
  loc_C96182: FLdPr Me
  loc_C96185: MemLdRfVar from_stack_1.global_76
  loc_C96188: LdPrVar
  loc_C9618A: LateMemCall
  loc_C96190: LitVarStr var_98, " font-size: 12px;"
  loc_C96195: PopAdLdVar
  loc_C96196: FLdPr Me
  loc_C96199: MemLdRfVar from_stack_1.global_76
  loc_C9619C: LdPrVar
  loc_C9619E: LateMemCall
  loc_C961A4: LitVarStr var_98, " vertical-align: top;"
  loc_C961A9: PopAdLdVar
  loc_C961AA: FLdPr Me
  loc_C961AD: MemLdRfVar from_stack_1.global_76
  loc_C961B0: LdPrVar
  loc_C961B2: LateMemCall
  loc_C961B8: LitVarStr var_98, " font-weight: bold;"
  loc_C961BD: PopAdLdVar
  loc_C961BE: FLdPr Me
  loc_C961C1: MemLdRfVar from_stack_1.global_76
  loc_C961C4: LdPrVar
  loc_C961C6: LateMemCall
  loc_C961CC: LitVarStr var_98, " border: 1px solid #000000;"
  loc_C961D1: PopAdLdVar
  loc_C961D2: FLdPr Me
  loc_C961D5: MemLdRfVar from_stack_1.global_76
  loc_C961D8: LdPrVar
  loc_C961DA: LateMemCall
  loc_C961E0: LitVarStr var_98, "}"
  loc_C961E5: PopAdLdVar
  loc_C961E6: FLdPr Me
  loc_C961E9: MemLdRfVar from_stack_1.global_76
  loc_C961EC: LdPrVar
  loc_C961EE: LateMemCall
  loc_C961F4: LitVarStr var_98, ".Resaltado {"
  loc_C961F9: PopAdLdVar
  loc_C961FA: FLdPr Me
  loc_C961FD: MemLdRfVar from_stack_1.global_76
  loc_C96200: LdPrVar
  loc_C96202: LateMemCall
  loc_C96208: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C9620D: PopAdLdVar
  loc_C9620E: FLdPr Me
  loc_C96211: MemLdRfVar from_stack_1.global_76
  loc_C96214: LdPrVar
  loc_C96216: LateMemCall
  loc_C9621C: LitVarStr var_98, " font-size: 11px;"
  loc_C96221: PopAdLdVar
  loc_C96222: FLdPr Me
  loc_C96225: MemLdRfVar from_stack_1.global_76
  loc_C96228: LdPrVar
  loc_C9622A: LateMemCall
  loc_C96230: LitVarStr var_98, " vertical-align: top;"
  loc_C96235: PopAdLdVar
  loc_C96236: FLdPr Me
  loc_C96239: MemLdRfVar from_stack_1.global_76
  loc_C9623C: LdPrVar
  loc_C9623E: LateMemCall
  loc_C96244: LitVarStr var_98, " font-weight: bold;"
  loc_C96249: PopAdLdVar
  loc_C9624A: FLdPr Me
  loc_C9624D: MemLdRfVar from_stack_1.global_76
  loc_C96250: LdPrVar
  loc_C96252: LateMemCall
  loc_C96258: LitVarStr var_98, " border: 1px solid #000000;"
  loc_C9625D: PopAdLdVar
  loc_C9625E: FLdPr Me
  loc_C96261: MemLdRfVar from_stack_1.global_76
  loc_C96264: LdPrVar
  loc_C96266: LateMemCall
  loc_C9626C: LitVarStr var_98, "}"
  loc_C96271: PopAdLdVar
  loc_C96272: FLdPr Me
  loc_C96275: MemLdRfVar from_stack_1.global_76
  loc_C96278: LdPrVar
  loc_C9627A: LateMemCall
  loc_C96280: LitVarStr var_98, ".CodBar {"
  loc_C96285: PopAdLdVar
  loc_C96286: FLdPr Me
  loc_C96289: MemLdRfVar from_stack_1.global_76
  loc_C9628C: LdPrVar
  loc_C9628E: LateMemCall
  loc_C96294: LitVarStr var_98, " font-family: ""Code 128"";"
  loc_C96299: PopAdLdVar
  loc_C9629A: FLdPr Me
  loc_C9629D: MemLdRfVar from_stack_1.global_76
  loc_C962A0: LdPrVar
  loc_C962A2: LateMemCall
  loc_C962A8: LitVarStr var_98, " font-size: 48px;"
  loc_C962AD: PopAdLdVar
  loc_C962AE: FLdPr Me
  loc_C962B1: MemLdRfVar from_stack_1.global_76
  loc_C962B4: LdPrVar
  loc_C962B6: LateMemCall
  loc_C962BC: LitVarStr var_98, " font-style: normal;"
  loc_C962C1: PopAdLdVar
  loc_C962C2: FLdPr Me
  loc_C962C5: MemLdRfVar from_stack_1.global_76
  loc_C962C8: LdPrVar
  loc_C962CA: LateMemCall
  loc_C962D0: LitVarStr var_98, " line-height: normal;"
  loc_C962D5: PopAdLdVar
  loc_C962D6: FLdPr Me
  loc_C962D9: MemLdRfVar from_stack_1.global_76
  loc_C962DC: LdPrVar
  loc_C962DE: LateMemCall
  loc_C962E4: LitVarStr var_98, " font-weight: normal;"
  loc_C962E9: PopAdLdVar
  loc_C962EA: FLdPr Me
  loc_C962ED: MemLdRfVar from_stack_1.global_76
  loc_C962F0: LdPrVar
  loc_C962F2: LateMemCall
  loc_C962F8: LitVarStr var_98, "}"
  loc_C962FD: PopAdLdVar
  loc_C962FE: FLdPr Me
  loc_C96301: MemLdRfVar from_stack_1.global_76
  loc_C96304: LdPrVar
  loc_C96306: LateMemCall
  loc_C9630C: LitVarStr var_98, "-->"
  loc_C96311: PopAdLdVar
  loc_C96312: FLdPr Me
  loc_C96315: MemLdRfVar from_stack_1.global_76
  loc_C96318: LdPrVar
  loc_C9631A: LateMemCall
  loc_C96320: LitVarStr var_98, "</style>"
  loc_C96325: PopAdLdVar
  loc_C96326: FLdPr Me
  loc_C96329: MemLdRfVar from_stack_1.global_76
  loc_C9632C: LdPrVar
  loc_C9632E: LateMemCall
  loc_C96334: LitI4 0
  loc_C96339: FStStrCopy var_B4
  loc_C9633C: FLdRfVar var_B4
  loc_C9633F: LitI4 0
  loc_C96344: FStStrCopy var_B0
  loc_C96347: FLdRfVar var_B0
  loc_C9634A: LitI2_Byte 0
  loc_C9634C: PopTmpLdAd2 var_AA
  loc_C9634F: FLdPr Me
  loc_C96352: MemLdRfVar from_stack_1.global_76
  loc_C96355: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C9635A: FFreeStr var_B0 = ""
  loc_C96361: ImpAdLdRf MemVar_D93540
  loc_C96364: NewIfNullAd
  loc_C96367: FStAd var_B8 
  loc_C9636B: LitVarStr var_98, "<table align=""center"" height=""780"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_C96370: PopAdLdVar
  loc_C96371: FLdPr Me
  loc_C96374: MemLdRfVar from_stack_1.global_76
  loc_C96377: LdPrVar
  loc_C96379: LateMemCall
  loc_C9637F: LitVarStr var_98, "  <tr valign=""top""><td>"
  loc_C96384: PopAdLdVar
  loc_C96385: FLdPr Me
  loc_C96388: MemLdRfVar from_stack_1.global_76
  loc_C9638B: LdPrVar
  loc_C9638D: LateMemCall
  loc_C96393: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_C96398: PopAdLdVar
  loc_C96399: FLdPr Me
  loc_C9639C: MemLdRfVar from_stack_1.global_76
  loc_C9639F: LdPrVar
  loc_C963A1: LateMemCall
  loc_C963A7: LitVarStr var_98, "  <tr valign=""top"">"
  loc_C963AC: PopAdLdVar
  loc_C963AD: FLdPr Me
  loc_C963B0: MemLdRfVar from_stack_1.global_76
  loc_C963B3: LdPrVar
  loc_C963B5: LateMemCall
  loc_C963BB: LitStr "    <td height=""63"" colspan=""8"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C963BE: LitI2_Byte &H5F
  loc_C963C0: CStrUI1
  loc_C963C2: FStStrNoPop var_B0
  loc_C963C5: ConcatStr
  loc_C963C6: FStStrNoPop var_B4
  loc_C963C9: LitStr """ height="""
  loc_C963CC: ConcatStr
  loc_C963CD: FStStrNoPop var_BC
  loc_C963D0: LitI2_Byte &H3C
  loc_C963D2: CStrUI1
  loc_C963D4: FStStrNoPop var_C0
  loc_C963D7: ConcatStr
  loc_C963D8: FStStrNoPop var_C4
  loc_C963DB: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_C963DE: ConcatStr
  loc_C963DF: FStStrNoPop var_C8
  loc_C963E2: LitI2_Byte &H3C
  loc_C963E4: CStrUI1
  loc_C963E6: FStStrNoPop var_CC
  loc_C963E9: ConcatStr
  loc_C963EA: FStStrNoPop var_D0
  loc_C963ED: LitStr """ height="""
  loc_C963F0: ConcatStr
  loc_C963F1: FStStrNoPop var_D4
  loc_C963F4: LitI2_Byte &H3C
  loc_C963F6: CStrUI1
  loc_C963F8: FStStrNoPop var_D8
  loc_C963FB: ConcatStr
  loc_C963FC: FStStrNoPop var_DC
  loc_C963FF: LitStr """ align=""right"" /><span class=""NombreMunicipio"">Municipalidad de Guaymallén</span><br />"
  loc_C96402: ConcatStr
  loc_C96403: CVarStr var_EC
  loc_C96406: PopAdLdVar
  loc_C96407: FLdPr Me
  loc_C9640A: MemLdRfVar from_stack_1.global_76
  loc_C9640D: LdPrVar
  loc_C9640F: LateMemCall
  loc_C96415: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_C9642E: FFree1Var var_EC = ""
  loc_C96431: LitStr "    "
  loc_C96434: LitStr "Dirección de Rentas"
  loc_C96437: ConcatStr
  loc_C96438: FStStrNoPop var_B0
  loc_C9643B: LitStr "<br>"
  loc_C9643E: ConcatStr
  loc_C9643F: CVarStr var_EC
  loc_C96442: PopAdLdVar
  loc_C96443: FLdPr Me
  loc_C96446: MemLdRfVar from_stack_1.global_76
  loc_C96449: LdPrVar
  loc_C9644B: LateMemCall
  loc_C96451: FFree1Str var_B0
  loc_C96454: FFree1Var var_EC = ""
  loc_C96457: LitStr "    "
  loc_C9645A: LitStr "Libertad 720 - Villa Nueva"
  loc_C9645D: ConcatStr
  loc_C9645E: FStStrNoPop var_B0
  loc_C96461: LitStr "<br>"
  loc_C96464: ConcatStr
  loc_C96465: CVarStr var_EC
  loc_C96468: PopAdLdVar
  loc_C96469: FLdPr Me
  loc_C9646C: MemLdRfVar from_stack_1.global_76
  loc_C9646F: LdPrVar
  loc_C96471: LateMemCall
  loc_C96477: FFree1Str var_B0
  loc_C9647A: FFree1Var var_EC = ""
  loc_C9647D: LitStr "    "
  loc_C96480: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_C96483: ConcatStr
  loc_C96484: FStStrNoPop var_B0
  loc_C96487: LitStr "<br>"
  loc_C9648A: ConcatStr
  loc_C9648B: CVarStr var_EC
  loc_C9648E: PopAdLdVar
  loc_C9648F: FLdPr Me
  loc_C96492: MemLdRfVar from_stack_1.global_76
  loc_C96495: LdPrVar
  loc_C96497: LateMemCall
  loc_C9649D: FFree1Str var_B0
  loc_C964A0: FFree1Var var_EC = ""
  loc_C964A3: LitStr "    "
  loc_C964A6: LitStr "C.U.I.T.: "
  loc_C964A9: ConcatStr
  loc_C964AA: FStStrNoPop var_B0
  loc_C964AD: LitStr "30-99914707-7"
  loc_C964B0: ConcatStr
  loc_C964B1: FStStrNoPop var_B4
  loc_C964B4: LitStr "<br>"
  loc_C964B7: ConcatStr
  loc_C964B8: CVarStr var_EC
  loc_C964BB: PopAdLdVar
  loc_C964BC: FLdPr Me
  loc_C964BF: MemLdRfVar from_stack_1.global_76
  loc_C964C2: LdPrVar
  loc_C964C4: LateMemCall
  loc_C964CA: FFreeStr var_B0 = ""
  loc_C964D1: FFree1Var var_EC = ""
  loc_C964D4: LitStr " <div align=""right""><em>"
  loc_C964D7: LitStr "&nbsp;"
  loc_C964DA: ConcatStr
  loc_C964DB: FStStrNoPop var_B0
  loc_C964DE: LitStr "</em></div></td>"
  loc_C964E1: ConcatStr
  loc_C964E2: CVarStr var_EC
  loc_C964E5: PopAdLdVar
  loc_C964E6: FLdPr Me
  loc_C964E9: MemLdRfVar from_stack_1.global_76
  loc_C964EC: LdPrVar
  loc_C964EE: LateMemCall
  loc_C964F4: FFree1Str var_B0
  loc_C964F7: FFree1Var var_EC = ""
  loc_C964FA: LitVarStr var_98, "  </tr>"
  loc_C964FF: PopAdLdVar
  loc_C96500: FLdPr Me
  loc_C96503: MemLdRfVar from_stack_1.global_76
  loc_C96506: LdPrVar
  loc_C96508: LateMemCall
  loc_C9650E: LitVarStr var_98, "  <tr valign=""top"">"
  loc_C96513: PopAdLdVar
  loc_C96514: FLdPr Me
  loc_C96517: MemLdRfVar from_stack_1.global_76
  loc_C9651A: LdPrVar
  loc_C9651C: LateMemCall
  loc_C96522: LitVarStr var_98, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_C96527: PopAdLdVar
  loc_C96528: FLdPr Me
  loc_C9652B: MemLdRfVar from_stack_1.global_76
  loc_C9652E: LdPrVar
  loc_C96530: LateMemCall
  loc_C96536: LitVarStr var_98, "    <td width=""30" & Chr(37) & """><strong>Gastos y honorarios de apremio</strong></td>"
  loc_C9653B: PopAdLdVar
  loc_C9653C: FLdPr Me
  loc_C9653F: MemLdRfVar from_stack_1.global_76
  loc_C96542: LdPrVar
  loc_C96544: LateMemCall
  loc_C9654A: LitVarStr var_98, "    <td width=""9" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleta Nro.:</strong></td>"
  loc_C9654F: PopAdLdVar
  loc_C96550: FLdPr Me
  loc_C96553: MemLdRfVar from_stack_1.global_76
  loc_C96556: LdPrVar
  loc_C96558: LateMemCall
  loc_C9655E: LitStr "    <td width=""12" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_C96561: FLdRfVar var_B0
  loc_C96564: FLdPr var_B8
  loc_C96567: VCallAd Control_ID_cmdPdf
  loc_C9656A: FStAdFunc var_F0
  loc_C9656D: FLdPr var_F0
  loc_C96570:  = Me.Text
  loc_C96575: ILdRf var_B0
  loc_C96578: ConcatStr
  loc_C96579: FStStrNoPop var_B4
  loc_C9657C: LitStr "</strong></td>"
  loc_C9657F: ConcatStr
  loc_C96580: CVarStr var_EC
  loc_C96583: PopAdLdVar
  loc_C96584: FLdPr Me
  loc_C96587: MemLdRfVar from_stack_1.global_76
  loc_C9658A: LdPrVar
  loc_C9658C: LateMemCall
  loc_C96592: FFreeStr var_B0 = ""
  loc_C96599: FFree1Ad var_F0
  loc_C9659C: FFree1Var var_EC = ""
  loc_C9659F: LitVarStr var_98, "    <td width=""8" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Oficina:</strong></td>"
  loc_C965A4: PopAdLdVar
  loc_C965A5: FLdPr Me
  loc_C965A8: MemLdRfVar from_stack_1.global_76
  loc_C965AB: LdPrVar
  loc_C965AD: LateMemCall
  loc_C965B3: LitStr "    <td width=""13" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_C965B6: FLdRfVar var_B0
  loc_C965B9: FLdPr var_B8
  loc_C965BC: VCallAd Control_ID_
  loc_C965BF: FStAdFunc var_F0
  loc_C965C2: FLdPr var_F0
  loc_C965C5:  = Me.Caption
  loc_C965CA: ILdRf var_B0
  loc_C965CD: ConcatStr
  loc_C965CE: FStStrNoPop var_B4
  loc_C965D1: LitStr "</strong></td>"
  loc_C965D4: ConcatStr
  loc_C965D5: CVarStr var_EC
  loc_C965D8: PopAdLdVar
  loc_C965D9: FLdPr Me
  loc_C965DC: MemLdRfVar from_stack_1.global_76
  loc_C965DF: LdPrVar
  loc_C965E1: LateMemCall
  loc_C965E7: FFreeStr var_B0 = ""
  loc_C965EE: FFree1Ad var_F0
  loc_C965F1: FFree1Var var_EC = ""
  loc_C965F4: LitVarStr var_98, "    <td width=""8" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Cuenta:</strong></td>"
  loc_C965F9: PopAdLdVar
  loc_C965FA: FLdPr Me
  loc_C965FD: MemLdRfVar from_stack_1.global_76
  loc_C96600: LdPrVar
  loc_C96602: LateMemCall
  loc_C96608: LitStr "    <td width=""10" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_C9660B: FLdRfVar var_B0
  loc_C9660E: FLdPr var_B8
  loc_C96611: VCallAd Control_ID_
  loc_C96614: FStAdFunc var_F0
  loc_C96617: FLdPr var_F0
  loc_C9661A:  = Me.Caption
  loc_C9661F: ILdRf var_B0
  loc_C96622: ConcatStr
  loc_C96623: FStStrNoPop var_B4
  loc_C96626: LitStr "</strong></td>"
  loc_C96629: ConcatStr
  loc_C9662A: CVarStr var_EC
  loc_C9662D: PopAdLdVar
  loc_C9662E: FLdPr Me
  loc_C96631: MemLdRfVar from_stack_1.global_76
  loc_C96634: LdPrVar
  loc_C96636: LateMemCall
  loc_C9663C: FFreeStr var_B0 = ""
  loc_C96643: FFree1Ad var_F0
  loc_C96646: FFree1Var var_EC = ""
  loc_C96649: LitVarStr var_98, "    </tr>"
  loc_C9664E: PopAdLdVar
  loc_C9664F: FLdPr Me
  loc_C96652: MemLdRfVar from_stack_1.global_76
  loc_C96655: LdPrVar
  loc_C96657: LateMemCall
  loc_C9665D: LitVarStr var_98, "  <tr valign=""top"">"
  loc_C96662: PopAdLdVar
  loc_C96663: FLdPr Me
  loc_C96666: MemLdRfVar from_stack_1.global_76
  loc_C96669: LdPrVar
  loc_C9666B: LateMemCall
  loc_C96671: LitVarStr var_98, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_C96676: PopAdLdVar
  loc_C96677: FLdPr Me
  loc_C9667A: MemLdRfVar from_stack_1.global_76
  loc_C9667D: LdPrVar
  loc_C9667F: LateMemCall
  loc_C96685: LitVarStr var_98, "    <td><strong>"
  loc_C9668A: PopAdLdVar
  loc_C9668B: FLdPr Me
  loc_C9668E: MemLdRfVar from_stack_1.global_76
  loc_C96691: LdPrVar
  loc_C96693: LateMemCall
  loc_C96699: FLdRfVar var_B0
  loc_C9669C: FLdPr var_B8
  loc_C9669F: VCallAd Control_ID_
  loc_C966A2: FStAdFunc var_F0
  loc_C966A5: FLdPr var_F0
  loc_C966A8:  = Me.Caption
  loc_C966AD: FLdZeroAd var_B0
  loc_C966B0: CVarStr var_EC
  loc_C966B3: FLdRfVar var_100
  loc_C966B6: ImpAdCallFPR4  = Trim()
  loc_C966BB: FLdRfVar var_B4
  loc_C966BE: FLdPr var_B8
  loc_C966C1: VCallAd Control_ID_
  loc_C966C4: FStAdFunc var_114
  loc_C966C7: FLdPr var_114
  loc_C966CA:  = Me.Caption
  loc_C966CF: LitVarStr var_164, "        "
  loc_C966D4: LitVarStr var_A8, vbNullString
  loc_C966D9: FStVarCopyObj var_144
  loc_C966DC: FLdRfVar var_144
  loc_C966DF: ILdRf var_B4
  loc_C966E2: LitStr "<br>"
  loc_C966E5: ConcatStr
  loc_C966E6: CVarStr var_134
  loc_C966E9: FLdRfVar var_100
  loc_C966EC: LitVarStr var_98, vbNullString
  loc_C966F1: HardType
  loc_C966F2: NeVar var_110
  loc_C966F6: FStVar var_124
  loc_C966FA: FLdRfVar var_124
  loc_C966FD: FLdRfVar var_154
  loc_C96700: ImpAdCallFPR4  = IIf(, , )
  loc_C96705: FLdRfVar var_154
  loc_C96708: ConcatVar var_174
  loc_C9670C: PopAdLdVar
  loc_C9670D: FLdPr Me
  loc_C96710: MemLdRfVar from_stack_1.global_76
  loc_C96713: LdPrVar
  loc_C96715: LateMemCall
  loc_C9671B: FFree1Str var_B4
  loc_C9671E: FFreeAd var_F0 = ""
  loc_C96725: FFreeVar var_EC = "": var_100 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = ""
  loc_C96736: LitStr "             "
  loc_C96739: FLdRfVar var_B0
  loc_C9673C: FLdPr var_B8
  loc_C9673F: VCallAd Control_ID_
  loc_C96742: FStAdFunc var_F0
  loc_C96745: FLdPr var_F0
  loc_C96748:  = Me.Caption
  loc_C9674D: ILdRf var_B0
  loc_C96750: ConcatStr
  loc_C96751: FStStrNoPop var_B4
  loc_C96754: LitStr "<br>"
  loc_C96757: ConcatStr
  loc_C96758: FStStrNoPop var_C0
  loc_C9675B: FLdRfVar var_BC
  loc_C9675E: FLdPr var_B8
  loc_C96761: VCallAd Control_ID_
  loc_C96764: FStAdFunc var_114
  loc_C96767: FLdPr var_114
  loc_C9676A:  = Me.Caption
  loc_C9676F: ILdRf var_BC
  loc_C96772: ConcatStr
  loc_C96773: FStStrNoPop var_C4
  loc_C96776: LitStr "</strong></td>"
  loc_C96779: ConcatStr
  loc_C9677A: CVarStr var_EC
  loc_C9677D: PopAdLdVar
  loc_C9677E: FLdPr Me
  loc_C96781: MemLdRfVar from_stack_1.global_76
  loc_C96784: LdPrVar
  loc_C96786: LateMemCall
  loc_C9678C: FFreeStr var_B0 = "": var_B4 = "": var_C0 = "": var_BC = ""
  loc_C96799: FFreeAd var_F0 = ""
  loc_C967A0: FFree1Var var_EC = ""
  loc_C967A3: LitVarStr var_98, "    <td align=""right"" class=""Encabezado""><strong>Nro. de Juicio</strong></td>"
  loc_C967A8: PopAdLdVar
  loc_C967A9: FLdPr Me
  loc_C967AC: MemLdRfVar from_stack_1.global_76
  loc_C967AF: LdPrVar
  loc_C967B1: LateMemCall
  loc_C967B7: LitStr "    <td align=""center"" class=""Resaltado"">"
  loc_C967BA: FLdRfVar var_B0
  loc_C967BD: FLdPr var_B8
  loc_C967C0: VCallAd Control_ID_
  loc_C967C3: FStAdFunc var_F0
  loc_C967C6: FLdPr var_F0
  loc_C967C9:  = Me.Caption
  loc_C967CE: ILdRf var_B0
  loc_C967D1: ConcatStr
  loc_C967D2: FStStrNoPop var_B4
  loc_C967D5: LitStr "</td>"
  loc_C967D8: ConcatStr
  loc_C967D9: CVarStr var_EC
  loc_C967DC: PopAdLdVar
  loc_C967DD: FLdPr Me
  loc_C967E0: MemLdRfVar from_stack_1.global_76
  loc_C967E3: LdPrVar
  loc_C967E5: LateMemCall
  loc_C967EB: FFreeStr var_B0 = ""
  loc_C967F2: FFree1Ad var_F0
  loc_C967F5: FFree1Var var_EC = ""
  loc_C967F8: LitVarStr var_98, "    <td align=""right"" class=""Encabezado""><strong>Instancia:</strong></td>"
  loc_C967FD: PopAdLdVar
  loc_C967FE: FLdPr Me
  loc_C96801: MemLdRfVar from_stack_1.global_76
  loc_C96804: LdPrVar
  loc_C96806: LateMemCall
  loc_C9680C: FLdRfVar var_B0
  loc_C9680F: FLdPr var_B8
  loc_C96812: VCallAd Control_ID_
  loc_C96815: FStAdFunc var_F0
  loc_C96818: FLdPr var_F0
  loc_C9681B:  = Me.Caption
  loc_C96820: FLdRfVar var_B4
  loc_C96823: FLdPr var_B8
  loc_C96826: VCallAd Control_ID_
  loc_C96829: FStAdFunc var_114
  loc_C9682C: FLdPr var_114
  loc_C9682F:  = Me.Caption
  loc_C96834: LitVarStr var_164, "    <td align=""left"" class=""Resaltado""><strong>"
  loc_C96839: LitVarStr var_A8, "&nbsp;"
  loc_C9683E: FStVarCopyObj var_100
  loc_C96841: FLdRfVar var_100
  loc_C96844: FLdZeroAd var_B4
  loc_C96847: CVarStr var_EC
  loc_C9684A: ILdRf var_B0
  loc_C9684D: LitStr vbNullString
  loc_C96850: NeStr
  loc_C96852: CVarBoolI2 var_98
  loc_C96856: FLdRfVar var_110
  loc_C96859: ImpAdCallFPR4  = IIf(, , )
  loc_C9685E: FLdRfVar var_110
  loc_C96861: ConcatVar var_124
  loc_C96865: LitVarStr var_184, "</strong></td>"
  loc_C9686A: ConcatVar var_134
  loc_C9686E: PopAdLdVar
  loc_C9686F: FLdPr Me
  loc_C96872: MemLdRfVar from_stack_1.global_76
  loc_C96875: LdPrVar
  loc_C96877: LateMemCall
  loc_C9687D: FFree1Str var_B0
  loc_C96880: FFreeAd var_F0 = ""
  loc_C96887: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_110 = "": var_124 = ""
  loc_C96896: LitVarStr var_98, "    <td width=""7" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Estado:</strong></td>"
  loc_C9689B: PopAdLdVar
  loc_C9689C: FLdPr Me
  loc_C9689F: MemLdRfVar from_stack_1.global_76
  loc_C968A2: LdPrVar
  loc_C968A4: LateMemCall
  loc_C968AA: LitStr "    <td width=""10" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_C968AD: FLdRfVar var_B0
  loc_C968B0: FLdPr var_B8
  loc_C968B3: VCallAd Control_ID_
  loc_C968B6: FStAdFunc var_F0
  loc_C968B9: FLdPr var_F0
  loc_C968BC:  = Me.Caption
  loc_C968C1: ILdRf var_B0
  loc_C968C4: ConcatStr
  loc_C968C5: FStStrNoPop var_B4
  loc_C968C8: LitStr "</strong></td>"
  loc_C968CB: ConcatStr
  loc_C968CC: CVarStr var_EC
  loc_C968CF: PopAdLdVar
  loc_C968D0: FLdPr Me
  loc_C968D3: MemLdRfVar from_stack_1.global_76
  loc_C968D6: LdPrVar
  loc_C968D8: LateMemCall
  loc_C968DE: FFreeStr var_B0 = ""
  loc_C968E5: FFree1Ad var_F0
  loc_C968E8: FFree1Var var_EC = ""
  loc_C968EB: LitVarStr var_98, "    </tr>"
  loc_C968F0: PopAdLdVar
  loc_C968F1: FLdPr Me
  loc_C968F4: MemLdRfVar from_stack_1.global_76
  loc_C968F7: LdPrVar
  loc_C968F9: LateMemCall
  loc_C968FF: LitVarStr var_98, "</table>"
  loc_C96904: PopAdLdVar
  loc_C96905: FLdPr Me
  loc_C96908: MemLdRfVar from_stack_1.global_76
  loc_C9690B: LdPrVar
  loc_C9690D: LateMemCall
  loc_C96913: LitVarStr var_98, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_C96918: PopAdLdVar
  loc_C96919: FLdPr Me
  loc_C9691C: MemLdRfVar from_stack_1.global_76
  loc_C9691F: LdPrVar
  loc_C96921: LateMemCall
  loc_C96927: LitVarStr var_98, "  <tr valign=""top"">"
  loc_C9692C: PopAdLdVar
  loc_C9692D: FLdPr Me
  loc_C96930: MemLdRfVar from_stack_1.global_76
  loc_C96933: LdPrVar
  loc_C96935: LateMemCall
  loc_C9693B: LitStr "    <td style=""border-top:none"" colspan=""5"" align=""left"">SECTOR: "
  loc_C9693E: FLdRfVar var_B0
  loc_C96941: FLdPr var_B8
  loc_C96944: VCallAd Control_ID_
  loc_C96947: FStAdFunc var_F0
  loc_C9694A: FLdPr var_F0
  loc_C9694D:  = Me.Caption
  loc_C96952: ILdRf var_B0
  loc_C96955: ConcatStr
  loc_C96956: FStStrNoPop var_B4
  loc_C96959: LitStr " - REFERENCIA: "
  loc_C9695C: ConcatStr
  loc_C9695D: FStStrNoPop var_C0
  loc_C96960: FLdRfVar var_BC
  loc_C96963: FLdPr var_B8
  loc_C96966: VCallAd Control_ID_
  loc_C96969: FStAdFunc var_114
  loc_C9696C: FLdPr var_114
  loc_C9696F:  = Me.Caption
  loc_C96974: ILdRf var_BC
  loc_C96977: ConcatStr
  loc_C96978: FStStrNoPop var_C4
  loc_C9697B: LitStr "</td>"
  loc_C9697E: ConcatStr
  loc_C9697F: CVarStr var_EC
  loc_C96982: PopAdLdVar
  loc_C96983: FLdPr Me
  loc_C96986: MemLdRfVar from_stack_1.global_76
  loc_C96989: LdPrVar
  loc_C9698B: LateMemCall
  loc_C96991: FFreeStr var_B0 = "": var_B4 = "": var_C0 = "": var_BC = ""
  loc_C9699E: FFreeAd var_F0 = ""
  loc_C969A5: FFree1Var var_EC = ""
  loc_C969A8: LitVarStr var_98, "  </tr>"
  loc_C969AD: PopAdLdVar
  loc_C969AE: FLdPr Me
  loc_C969B1: MemLdRfVar from_stack_1.global_76
  loc_C969B4: LdPrVar
  loc_C969B6: LateMemCall
  loc_C969BC: LitVarStr var_98, "  <tr align=""right"" valign=""top"">"
  loc_C969C1: PopAdLdVar
  loc_C969C2: FLdPr Me
  loc_C969C5: MemLdRfVar from_stack_1.global_76
  loc_C969C8: LdPrVar
  loc_C969CA: LateMemCall
  loc_C969D0: LitVarStr var_98, "    <td width=""32" & Chr(37) & """ height=""18"" class=""Encabezado"">Capital:</td>"
  loc_C969D5: PopAdLdVar
  loc_C969D6: FLdPr Me
  loc_C969D9: MemLdRfVar from_stack_1.global_76
  loc_C969DC: LdPrVar
  loc_C969DE: LateMemCall
  loc_C969E4: FLdRfVar var_B0
  loc_C969E7: FLdPr var_B8
  loc_C969EA: VCallAd Control_ID_
  loc_C969ED: FStAdFunc var_F0
  loc_C969F0: FLdPr var_F0
  loc_C969F3:  = Me.Caption
  loc_C969F8: LitStr "    <td width=""13" & Chr(37) & """>"
  loc_C969FB: LitI4 -1
  loc_C96A00: LitI4 0
  loc_C96A05: LitI4 -1
  loc_C96A0A: LitI4 2
  loc_C96A0F: FLdZeroAd var_B0
  loc_C96A12: CVarStr var_EC
  loc_C96A15: ImpAdCallI2 FormatNumber(, , , , )
  loc_C96A1A: FStStrNoPop var_B4
  loc_C96A1D: ConcatStr
  loc_C96A1E: FStStrNoPop var_BC
  loc_C96A21: LitStr "</td>"
  loc_C96A24: ConcatStr
  loc_C96A25: CVarStr var_100
  loc_C96A28: PopAdLdVar
  loc_C96A29: FLdPr Me
  loc_C96A2C: MemLdRfVar from_stack_1.global_76
  loc_C96A2F: LdPrVar
  loc_C96A31: LateMemCall
  loc_C96A37: FFreeStr var_B4 = ""
  loc_C96A3E: FFree1Ad var_F0
  loc_C96A41: FFreeVar var_EC = ""
  loc_C96A48: LitVarStr var_98, "    <td rowspan=""3"">&nbsp;</td>"
  loc_C96A4D: PopAdLdVar
  loc_C96A4E: FLdPr Me
  loc_C96A51: MemLdRfVar from_stack_1.global_76
  loc_C96A54: LdPrVar
  loc_C96A56: LateMemCall
  loc_C96A5C: LitVarStr var_98, "    <td width=""25" & Chr(37) & """ class=""Encabezado"">Comisi&oacute;n Administrativa:</td>"
  loc_C96A61: PopAdLdVar
  loc_C96A62: FLdPr Me
  loc_C96A65: MemLdRfVar from_stack_1.global_76
  loc_C96A68: LdPrVar
  loc_C96A6A: LateMemCall
  loc_C96A70: FLdRfVar var_B0
  loc_C96A73: FLdPr var_B8
  loc_C96A76: VCallAd Control_ID_
  loc_C96A79: FStAdFunc var_F0
  loc_C96A7C: FLdPr var_F0
  loc_C96A7F:  = Me.Text
  loc_C96A84: LitStr "    <td>"
  loc_C96A87: LitI4 -1
  loc_C96A8C: LitI4 0
  loc_C96A91: LitI4 -1
  loc_C96A96: LitI4 2
  loc_C96A9B: FLdZeroAd var_B0
  loc_C96A9E: CVarStr var_EC
  loc_C96AA1: ImpAdCallI2 FormatNumber(, , , , )
  loc_C96AA6: FStStrNoPop var_B4
  loc_C96AA9: ConcatStr
  loc_C96AAA: FStStrNoPop var_BC
  loc_C96AAD: LitStr "</td>"
  loc_C96AB0: ConcatStr
  loc_C96AB1: CVarStr var_100
  loc_C96AB4: PopAdLdVar
  loc_C96AB5: FLdPr Me
  loc_C96AB8: MemLdRfVar from_stack_1.global_76
  loc_C96ABB: LdPrVar
  loc_C96ABD: LateMemCall
  loc_C96AC3: FFreeStr var_B4 = ""
  loc_C96ACA: FFree1Ad var_F0
  loc_C96ACD: FFreeVar var_EC = ""
  loc_C96AD4: LitVarStr var_98, "  </tr>"
  loc_C96AD9: PopAdLdVar
  loc_C96ADA: FLdPr Me
  loc_C96ADD: MemLdRfVar from_stack_1.global_76
  loc_C96AE0: LdPrVar
  loc_C96AE2: LateMemCall
  loc_C96AE8: LitVarStr var_98, "  <tr align=""right"" valign=""top"">"
  loc_C96AED: PopAdLdVar
  loc_C96AEE: FLdPr Me
  loc_C96AF1: MemLdRfVar from_stack_1.global_76
  loc_C96AF4: LdPrVar
  loc_C96AF6: LateMemCall
  loc_C96AFC: LitVarStr var_98, "    <td class=""Encabezado"">Recargo:</td>"
  loc_C96B01: PopAdLdVar
  loc_C96B02: FLdPr Me
  loc_C96B05: MemLdRfVar from_stack_1.global_76
  loc_C96B08: LdPrVar
  loc_C96B0A: LateMemCall
  loc_C96B10: FLdRfVar var_B0
  loc_C96B13: FLdPr var_B8
  loc_C96B16: VCallAd Control_ID_
  loc_C96B19: FStAdFunc var_F0
  loc_C96B1C: FLdPr var_F0
  loc_C96B1F:  = Me.Caption
  loc_C96B24: LitStr "    <td>"
  loc_C96B27: LitI4 -1
  loc_C96B2C: LitI4 0
  loc_C96B31: LitI4 -1
  loc_C96B36: LitI4 2
  loc_C96B3B: FLdZeroAd var_B0
  loc_C96B3E: CVarStr var_EC
  loc_C96B41: ImpAdCallI2 FormatNumber(, , , , )
  loc_C96B46: FStStrNoPop var_B4
  loc_C96B49: ConcatStr
  loc_C96B4A: FStStrNoPop var_BC
  loc_C96B4D: LitStr "</td>"
  loc_C96B50: ConcatStr
  loc_C96B51: CVarStr var_100
  loc_C96B54: PopAdLdVar
  loc_C96B55: FLdPr Me
  loc_C96B58: MemLdRfVar from_stack_1.global_76
  loc_C96B5B: LdPrVar
  loc_C96B5D: LateMemCall
  loc_C96B63: FFreeStr var_B4 = ""
  loc_C96B6A: FFree1Ad var_F0
  loc_C96B6D: FFreeVar var_EC = ""
  loc_C96B74: LitVarStr var_98, "    <td class=""Encabezado"">Tasa de Justicia:</td>"
  loc_C96B79: PopAdLdVar
  loc_C96B7A: FLdPr Me
  loc_C96B7D: MemLdRfVar from_stack_1.global_76
  loc_C96B80: LdPrVar
  loc_C96B82: LateMemCall
  loc_C96B88: LitStr "    <td>"
  loc_C96B8B: FLdRfVar var_B0
  loc_C96B8E: FLdPr var_B8
  loc_C96B91: VCallAd Control_ID_
  loc_C96B94: FStAdFunc var_F0
  loc_C96B97: FLdPr var_F0
  loc_C96B9A:  = Me.Text
  loc_C96B9F: ILdRf var_B0
  loc_C96BA2: ConcatStr
  loc_C96BA3: FStStrNoPop var_B4
  loc_C96BA6: LitStr "</td>"
  loc_C96BA9: ConcatStr
  loc_C96BAA: CVarStr var_EC
  loc_C96BAD: PopAdLdVar
  loc_C96BAE: FLdPr Me
  loc_C96BB1: MemLdRfVar from_stack_1.global_76
  loc_C96BB4: LdPrVar
  loc_C96BB6: LateMemCall
  loc_C96BBC: FFreeStr var_B0 = ""
  loc_C96BC3: FFree1Ad var_F0
  loc_C96BC6: FFree1Var var_EC = ""
  loc_C96BC9: LitVarStr var_98, "  </tr>"
  loc_C96BCE: PopAdLdVar
  loc_C96BCF: FLdPr Me
  loc_C96BD2: MemLdRfVar from_stack_1.global_76
  loc_C96BD5: LdPrVar
  loc_C96BD7: LateMemCall
  loc_C96BDD: LitVarStr var_98, "  <tr align=""right"" valign=""top"">"
  loc_C96BE2: PopAdLdVar
  loc_C96BE3: FLdPr Me
  loc_C96BE6: MemLdRfVar from_stack_1.global_76
  loc_C96BE9: LdPrVar
  loc_C96BEB: LateMemCall
  loc_C96BF1: LitVarStr var_98, "    <td class=""Totales"">Total de deuda de apremio:</td>"
  loc_C96BF6: PopAdLdVar
  loc_C96BF7: FLdPr Me
  loc_C96BFA: MemLdRfVar from_stack_1.global_76
  loc_C96BFD: LdPrVar
  loc_C96BFF: LateMemCall
  loc_C96C05: FLdRfVar var_B0
  loc_C96C08: FLdPr var_B8
  loc_C96C0B: VCallAd Control_ID_
  loc_C96C0E: FStAdFunc var_F0
  loc_C96C11: FLdPr var_F0
  loc_C96C14:  = Me.Caption
  loc_C96C19: LitStr "    <td class=""Totales"">"
  loc_C96C1C: LitI4 -1
  loc_C96C21: LitI4 0
  loc_C96C26: LitI4 -1
  loc_C96C2B: LitI4 2
  loc_C96C30: FLdZeroAd var_B0
  loc_C96C33: CVarStr var_EC
  loc_C96C36: ImpAdCallI2 FormatNumber(, , , , )
  loc_C96C3B: FStStrNoPop var_B4
  loc_C96C3E: ConcatStr
  loc_C96C3F: FStStrNoPop var_BC
  loc_C96C42: LitStr "</td>"
  loc_C96C45: ConcatStr
  loc_C96C46: CVarStr var_100
  loc_C96C49: PopAdLdVar
  loc_C96C4A: FLdPr Me
  loc_C96C4D: MemLdRfVar from_stack_1.global_76
  loc_C96C50: LdPrVar
  loc_C96C52: LateMemCall
  loc_C96C58: FFreeStr var_B4 = ""
  loc_C96C5F: FFree1Ad var_F0
  loc_C96C62: FFreeVar var_EC = ""
  loc_C96C69: LitVarStr var_98, "    <td class=""Encabezado"">Aporte de Ley:</td>"
  loc_C96C6E: PopAdLdVar
  loc_C96C6F: FLdPr Me
  loc_C96C72: MemLdRfVar from_stack_1.global_76
  loc_C96C75: LdPrVar
  loc_C96C77: LateMemCall
  loc_C96C7D: LitStr "    <td>"
  loc_C96C80: FLdRfVar var_B0
  loc_C96C83: FLdPr var_B8
  loc_C96C86: VCallAd Control_ID_
  loc_C96C89: FStAdFunc var_F0
  loc_C96C8C: FLdPr var_F0
  loc_C96C8F:  = Me.Text
  loc_C96C94: ILdRf var_B0
  loc_C96C97: ConcatStr
  loc_C96C98: FStStrNoPop var_B4
  loc_C96C9B: LitStr "</td>"
  loc_C96C9E: ConcatStr
  loc_C96C9F: CVarStr var_EC
  loc_C96CA2: PopAdLdVar
  loc_C96CA3: FLdPr Me
  loc_C96CA6: MemLdRfVar from_stack_1.global_76
  loc_C96CA9: LdPrVar
  loc_C96CAB: LateMemCall
  loc_C96CB1: FFreeStr var_B0 = ""
  loc_C96CB8: FFree1Ad var_F0
  loc_C96CBB: FFree1Var var_EC = ""
  loc_C96CBE: LitVarStr var_98, "  </tr>"
  loc_C96CC3: PopAdLdVar
  loc_C96CC4: FLdPr Me
  loc_C96CC7: MemLdRfVar from_stack_1.global_76
  loc_C96CCA: LdPrVar
  loc_C96CCC: LateMemCall
  loc_C96CD2: LitVarStr var_98, "  <tr align=""right"" valign=""top"">"
  loc_C96CD7: PopAdLdVar
  loc_C96CD8: FLdPr Me
  loc_C96CDB: MemLdRfVar from_stack_1.global_76
  loc_C96CDE: LdPrVar
  loc_C96CE0: LateMemCall
  loc_C96CE6: LitStr "    <td valign=""middle"" align=""left"" colspan=""3"" rowspan=""6""><div align=""justify"">"
  loc_C96CE9: LitStr "SR. CAJERO: NO COBRAR BOLETO DESPU&Eacute;S DE LA FECHA DE VENCIMIENTO"
  loc_C96CEC: ConcatStr
  loc_C96CED: FStStrNoPop var_B0
  loc_C96CF0: LitStr "</div></td>"
  loc_C96CF3: ConcatStr
  loc_C96CF4: CVarStr var_EC
  loc_C96CF7: PopAdLdVar
  loc_C96CF8: FLdPr Me
  loc_C96CFB: MemLdRfVar from_stack_1.global_76
  loc_C96CFE: LdPrVar
  loc_C96D00: LateMemCall
  loc_C96D06: FFree1Str var_B0
  loc_C96D09: FFree1Var var_EC = ""
  loc_C96D0C: LitVarStr var_98, "    <td width=""25" & Chr(37) & """ height=""18"" class=""Encabezado"">Derecho Fijo:</td>"
  loc_C96D11: PopAdLdVar
  loc_C96D12: FLdPr Me
  loc_C96D15: MemLdRfVar from_stack_1.global_76
  loc_C96D18: LdPrVar
  loc_C96D1A: LateMemCall
  loc_C96D20: LitStr "    <td width=""11" & Chr(37) & """>"
  loc_C96D23: FLdRfVar var_B0
  loc_C96D26: FLdPr var_B8
  loc_C96D29: VCallAd Control_ID_
  loc_C96D2C: FStAdFunc var_F0
  loc_C96D2F: FLdPr var_F0
  loc_C96D32:  = Me.Text
  loc_C96D37: ILdRf var_B0
  loc_C96D3A: ConcatStr
  loc_C96D3B: FStStrNoPop var_B4
  loc_C96D3E: LitStr "</td>"
  loc_C96D41: ConcatStr
  loc_C96D42: CVarStr var_EC
  loc_C96D45: PopAdLdVar
  loc_C96D46: FLdPr Me
  loc_C96D49: MemLdRfVar from_stack_1.global_76
  loc_C96D4C: LdPrVar
  loc_C96D4E: LateMemCall
  loc_C96D54: FFreeStr var_B0 = ""
  loc_C96D5B: FFree1Ad var_F0
  loc_C96D5E: FFree1Var var_EC = ""
  loc_C96D61: LitVarStr var_98, "  </tr>"
  loc_C96D66: PopAdLdVar
  loc_C96D67: FLdPr Me
  loc_C96D6A: MemLdRfVar from_stack_1.global_76
  loc_C96D6D: LdPrVar
  loc_C96D6F: LateMemCall
  loc_C96D75: LitVarStr var_98, "  <tr align=""right"" valign=""top"">"
  loc_C96D7A: PopAdLdVar
  loc_C96D7B: FLdPr Me
  loc_C96D7E: MemLdRfVar from_stack_1.global_76
  loc_C96D81: LdPrVar
  loc_C96D83: LateMemCall
  loc_C96D89: LitVarStr var_98, "    <td width=""25" & Chr(37) & """ height=""18"" class=""Encabezado"">Honorario del Recaudador:</td>"
  loc_C96D8E: PopAdLdVar
  loc_C96D8F: FLdPr Me
  loc_C96D92: MemLdRfVar from_stack_1.global_76
  loc_C96D95: LdPrVar
  loc_C96D97: LateMemCall
  loc_C96D9D: LitStr "    <td width=""11" & Chr(37) & """>"
  loc_C96DA0: FLdRfVar var_B0
  loc_C96DA3: FLdPr var_B8
  loc_C96DA6: VCallAd Control_ID_wbbReporte
  loc_C96DA9: FStAdFunc var_F0
  loc_C96DAC: FLdPr var_F0
  loc_C96DAF:  = Me.Text
  loc_C96DB4: ILdRf var_B0
  loc_C96DB7: ConcatStr
  loc_C96DB8: FStStrNoPop var_B4
  loc_C96DBB: LitStr "</td>"
  loc_C96DBE: ConcatStr
  loc_C96DBF: CVarStr var_EC
  loc_C96DC2: PopAdLdVar
  loc_C96DC3: FLdPr Me
  loc_C96DC6: MemLdRfVar from_stack_1.global_76
  loc_C96DC9: LdPrVar
  loc_C96DCB: LateMemCall
  loc_C96DD1: FFreeStr var_B0 = ""
  loc_C96DD8: FFree1Ad var_F0
  loc_C96DDB: FFree1Var var_EC = ""
  loc_C96DDE: LitVarStr var_98, "  </tr>"
  loc_C96DE3: PopAdLdVar
  loc_C96DE4: FLdPr Me
  loc_C96DE7: MemLdRfVar from_stack_1.global_76
  loc_C96DEA: LdPrVar
  loc_C96DEC: LateMemCall
  loc_C96DF2: LitVarStr var_98, "  <tr align=""right"" valign=""top"">"
  loc_C96DF7: PopAdLdVar
  loc_C96DF8: FLdPr Me
  loc_C96DFB: MemLdRfVar from_stack_1.global_76
  loc_C96DFE: LdPrVar
  loc_C96E00: LateMemCall
  loc_C96E06: LitVarStr var_98, "    <td width=""25" & Chr(37) & """ height=""18"" class=""Encabezado"">Honorario del Oficial de Justicia:</td>"
  loc_C96E0B: PopAdLdVar
  loc_C96E0C: FLdPr Me
  loc_C96E0F: MemLdRfVar from_stack_1.global_76
  loc_C96E12: LdPrVar
  loc_C96E14: LateMemCall
  loc_C96E1A: LitStr "    <td width=""11" & Chr(37) & """>"
  loc_C96E1D: FLdRfVar var_B0
  loc_C96E20: FLdPr var_B8
  loc_C96E23: VCallAd Control_ID_statusBar
  loc_C96E26: FStAdFunc var_F0
  loc_C96E29: FLdPr var_F0
  loc_C96E2C:  = Me.Text
  loc_C96E31: ILdRf var_B0
  loc_C96E34: ConcatStr
  loc_C96E35: FStStrNoPop var_B4
  loc_C96E38: LitStr "</td>"
  loc_C96E3B: ConcatStr
  loc_C96E3C: CVarStr var_EC
  loc_C96E3F: PopAdLdVar
  loc_C96E40: FLdPr Me
  loc_C96E43: MemLdRfVar from_stack_1.global_76
  loc_C96E46: LdPrVar
  loc_C96E48: LateMemCall
  loc_C96E4E: FFreeStr var_B0 = ""
  loc_C96E55: FFree1Ad var_F0
  loc_C96E58: FFree1Var var_EC = ""
  loc_C96E5B: LitVarStr var_98, "  </tr>"
  loc_C96E60: PopAdLdVar
  loc_C96E61: FLdPr Me
  loc_C96E64: MemLdRfVar from_stack_1.global_76
  loc_C96E67: LdPrVar
  loc_C96E69: LateMemCall
  loc_C96E6F: LitVarStr var_98, "  <tr align=""right"" valign=""top"">"
  loc_C96E74: PopAdLdVar
  loc_C96E75: FLdPr Me
  loc_C96E78: MemLdRfVar from_stack_1.global_76
  loc_C96E7B: LdPrVar
  loc_C96E7D: LateMemCall
  loc_C96E83: LitVarStr var_98, "    <td width=""25" & Chr(37) & """ height=""18"" class=""Encabezado"">Movilidad del Recaudador:</td>"
  loc_C96E88: PopAdLdVar
  loc_C96E89: FLdPr Me
  loc_C96E8C: MemLdRfVar from_stack_1.global_76
  loc_C96E8F: LdPrVar
  loc_C96E91: LateMemCall
  loc_C96E97: LitStr "    <td width=""11" & Chr(37) & """>"
  loc_C96E9A: FLdRfVar var_B0
  loc_C96E9D: FLdPr var_B8
  loc_C96EA0: VCallAd Control_ID_cmdNueva
  loc_C96EA3: FStAdFunc var_F0
  loc_C96EA6: FLdPr var_F0
  loc_C96EA9:  = Me.Text
  loc_C96EAE: ILdRf var_B0
  loc_C96EB1: ConcatStr
  loc_C96EB2: FStStrNoPop var_B4
  loc_C96EB5: LitStr "</td>"
  loc_C96EB8: ConcatStr
  loc_C96EB9: CVarStr var_EC
  loc_C96EBC: PopAdLdVar
  loc_C96EBD: FLdPr Me
  loc_C96EC0: MemLdRfVar from_stack_1.global_76
  loc_C96EC3: LdPrVar
  loc_C96EC5: LateMemCall
  loc_C96ECB: FFreeStr var_B0 = ""
  loc_C96ED2: FFree1Ad var_F0
  loc_C96ED5: FFree1Var var_EC = ""
  loc_C96ED8: LitVarStr var_98, "  </tr>"
  loc_C96EDD: PopAdLdVar
  loc_C96EDE: FLdPr Me
  loc_C96EE1: MemLdRfVar from_stack_1.global_76
  loc_C96EE4: LdPrVar
  loc_C96EE6: LateMemCall
  loc_C96EEC: LitVarStr var_98, "  <tr align=""right"" valign=""top"">"
  loc_C96EF1: PopAdLdVar
  loc_C96EF2: FLdPr Me
  loc_C96EF5: MemLdRfVar from_stack_1.global_76
  loc_C96EF8: LdPrVar
  loc_C96EFA: LateMemCall
  loc_C96F00: LitVarStr var_98, "    <td width=""25" & Chr(37) & """ height=""18"" class=""Encabezado"">Movilidad del Oficial de Justicia:</td>"
  loc_C96F05: PopAdLdVar
  loc_C96F06: FLdPr Me
  loc_C96F09: MemLdRfVar from_stack_1.global_76
  loc_C96F0C: LdPrVar
  loc_C96F0E: LateMemCall
  loc_C96F14: LitStr "    <td width=""11" & Chr(37) & """>"
  loc_C96F17: FLdRfVar var_B0
  loc_C96F1A: FLdPr var_B8
  loc_C96F1D: VCallAd Control_ID_Frame1
  loc_C96F20: FStAdFunc var_F0
  loc_C96F23: FLdPr var_F0
  loc_C96F26:  = Me.Text
  loc_C96F2B: ILdRf var_B0
  loc_C96F2E: ConcatStr
  loc_C96F2F: FStStrNoPop var_B4
  loc_C96F32: LitStr "</td>"
  loc_C96F35: ConcatStr
  loc_C96F36: CVarStr var_EC
  loc_C96F39: PopAdLdVar
  loc_C96F3A: FLdPr Me
  loc_C96F3D: MemLdRfVar from_stack_1.global_76
  loc_C96F40: LdPrVar
  loc_C96F42: LateMemCall
  loc_C96F48: FFreeStr var_B0 = ""
  loc_C96F4F: FFree1Ad var_F0
  loc_C96F52: FFree1Var var_EC = ""
  loc_C96F55: LitVarStr var_98, "  </tr>"
  loc_C96F5A: PopAdLdVar
  loc_C96F5B: FLdPr Me
  loc_C96F5E: MemLdRfVar from_stack_1.global_76
  loc_C96F61: LdPrVar
  loc_C96F63: LateMemCall
  loc_C96F69: LitVarStr var_98, "  <tr align=""right"" valign=""top"" class=""Total"">"
  loc_C96F6E: PopAdLdVar
  loc_C96F6F: FLdPr Me
  loc_C96F72: MemLdRfVar from_stack_1.global_76
  loc_C96F75: LdPrVar
  loc_C96F77: LateMemCall
  loc_C96F7D: LitVarStr var_98, "    <td width=""25" & Chr(37) & """ height=""18"" class=""Totales"">TOTAL A PAGAR:</td>"
  loc_C96F82: PopAdLdVar
  loc_C96F83: FLdPr Me
  loc_C96F86: MemLdRfVar from_stack_1.global_76
  loc_C96F89: LdPrVar
  loc_C96F8B: LateMemCall
  loc_C96F91: LitStr "    <td width=""11" & Chr(37) & """ class=""Totales"">"
  loc_C96F94: FLdRfVar var_B0
  loc_C96F97: FLdPr var_B8
  loc_C96F9A: VCallAd Control_ID_
  loc_C96F9D: FStAdFunc var_F0
  loc_C96FA0: FLdPr var_F0
  loc_C96FA3:  = Me.Caption
  loc_C96FA8: ILdRf var_B0
  loc_C96FAB: ConcatStr
  loc_C96FAC: FStStrNoPop var_B4
  loc_C96FAF: LitStr "</td>"
  loc_C96FB2: ConcatStr
  loc_C96FB3: CVarStr var_EC
  loc_C96FB6: PopAdLdVar
  loc_C96FB7: FLdPr Me
  loc_C96FBA: MemLdRfVar from_stack_1.global_76
  loc_C96FBD: LdPrVar
  loc_C96FBF: LateMemCall
  loc_C96FC5: FFreeStr var_B0 = ""
  loc_C96FCC: FFree1Ad var_F0
  loc_C96FCF: FFree1Var var_EC = ""
  loc_C96FD2: LitVarStr var_98, "  </tr>"
  loc_C96FD7: PopAdLdVar
  loc_C96FD8: FLdPr Me
  loc_C96FDB: MemLdRfVar from_stack_1.global_76
  loc_C96FDE: LdPrVar
  loc_C96FE0: LateMemCall
  loc_C96FE6: LitVarStr var_98, "  <tr>"
  loc_C96FEB: PopAdLdVar
  loc_C96FEC: FLdPr Me
  loc_C96FEF: MemLdRfVar from_stack_1.global_76
  loc_C96FF2: LdPrVar
  loc_C96FF4: LateMemCall
  loc_C96FFA: LitStr "    <td colspan=""5"" valign=""top"">SON PESOS: <strong>"
  loc_C96FFD: FLdRfVar var_B0
  loc_C97000: FLdPr var_B8
  loc_C97003: VCallAd Control_ID_
  loc_C97006: FStAdFunc var_F0
  loc_C97009: FLdPr var_F0
  loc_C9700C:  = Me.Caption
  loc_C97011: ILdRf var_B0
  loc_C97014: CR8Str
  loc_C97016: PopFPR8
  loc_C97017: ImpAdCallI2  = Proc_272_28_AB2798()
  loc_C9701C: FStStrNoPop var_B4
  loc_C9701F: ConcatStr
  loc_C97020: FStStrNoPop var_BC
  loc_C97023: LitStr ".---</strong></td>"
  loc_C97026: ConcatStr
  loc_C97027: CVarStr var_EC
  loc_C9702A: PopAdLdVar
  loc_C9702B: FLdPr Me
  loc_C9702E: MemLdRfVar from_stack_1.global_76
  loc_C97031: LdPrVar
  loc_C97033: LateMemCall
  loc_C97039: FFreeStr var_B0 = "": var_B4 = ""
  loc_C97042: FFree1Ad var_F0
  loc_C97045: FFree1Var var_EC = ""
  loc_C97048: LitVarStr var_98, "  </tr>"
  loc_C9704D: PopAdLdVar
  loc_C9704E: FLdPr Me
  loc_C97051: MemLdRfVar from_stack_1.global_76
  loc_C97054: LdPrVar
  loc_C97056: LateMemCall
  loc_C9705C: LitVarStr var_98, "</table>"
  loc_C97061: PopAdLdVar
  loc_C97062: FLdPr Me
  loc_C97065: MemLdRfVar from_stack_1.global_76
  loc_C97068: LdPrVar
  loc_C9706A: LateMemCall
  loc_C97070: LitVarStr var_98, "</td>"
  loc_C97075: PopAdLdVar
  loc_C97076: FLdPr Me
  loc_C97079: MemLdRfVar from_stack_1.global_76
  loc_C9707C: LdPrVar
  loc_C9707E: LateMemCall
  loc_C97084: LitVarStr var_98, "</tr></table><hr>"
  loc_C97089: PopAdLdVar
  loc_C9708A: FLdPr Me
  loc_C9708D: MemLdRfVar from_stack_1.global_76
  loc_C97090: LdPrVar
  loc_C97092: LateMemCall
  loc_C97098: LitVarStr var_98, "<table align=""center"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_C9709D: PopAdLdVar
  loc_C9709E: FLdPr Me
  loc_C970A1: MemLdRfVar from_stack_1.global_76
  loc_C970A4: LdPrVar
  loc_C970A6: LateMemCall
  loc_C970AC: LitVarStr var_98, "  <tr>"
  loc_C970B1: PopAdLdVar
  loc_C970B2: FLdPr Me
  loc_C970B5: MemLdRfVar from_stack_1.global_76
  loc_C970B8: LdPrVar
  loc_C970BA: LateMemCall
  loc_C970C0: LitVarStr var_98, "    <th valign=""top"">"
  loc_C970C5: PopAdLdVar
  loc_C970C6: FLdPr Me
  loc_C970C9: MemLdRfVar from_stack_1.global_76
  loc_C970CC: LdPrVar
  loc_C970CE: LateMemCall
  loc_C970D4: LitVarStr var_98, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_C970D9: PopAdLdVar
  loc_C970DA: FLdPr Me
  loc_C970DD: MemLdRfVar from_stack_1.global_76
  loc_C970E0: LdPrVar
  loc_C970E2: LateMemCall
  loc_C970E8: LitVarStr var_98, "      <tr>"
  loc_C970ED: PopAdLdVar
  loc_C970EE: FLdPr Me
  loc_C970F1: MemLdRfVar from_stack_1.global_76
  loc_C970F4: LdPrVar
  loc_C970F6: LateMemCall
  loc_C970FC: LitVarStr var_A8, "        <td colspan=""7"" align=""center"" class=""NombreMunicipioBloqueFin"">"
  loc_C97101: LitVarStr var_98, "Municipalidad de Guaymallén"
  loc_C97106: FStVarCopyObj var_EC
  loc_C97109: FLdRfVar var_EC
  loc_C9710C: FLdRfVar var_100
  loc_C9710F: ImpAdCallFPR4  = Ucase()
  loc_C97114: FLdRfVar var_100
  loc_C97117: ConcatVar var_110
  loc_C9711B: LitVarStr var_164, " - "
  loc_C97120: ConcatVar var_124
  loc_C97124: LitVarStr var_184, "Dirección de Rentas"
  loc_C97129: ConcatVar var_134
  loc_C9712D: LitVarStr var_194, "</td>"
  loc_C97132: ConcatVar var_144
  loc_C97136: PopAdLdVar
  loc_C97137: FLdPr Me
  loc_C9713A: MemLdRfVar from_stack_1.global_76
  loc_C9713D: LdPrVar
  loc_C9713F: LateMemCall
  loc_C97145: FFreeVar var_EC = "": var_100 = "": var_110 = "": var_124 = "": var_134 = ""
  loc_C97154: LitVarStr var_98, "        </tr>"
  loc_C97159: PopAdLdVar
  loc_C9715A: FLdPr Me
  loc_C9715D: MemLdRfVar from_stack_1.global_76
  loc_C97160: LdPrVar
  loc_C97162: LateMemCall
  loc_C97168: LitVarStr var_98, "      <tr align=""center"" class=""Encabezado"">"
  loc_C9716D: PopAdLdVar
  loc_C9716E: FLdPr Me
  loc_C97171: MemLdRfVar from_stack_1.global_76
  loc_C97174: LdPrVar
  loc_C97176: LateMemCall
  loc_C9717C: LitVarStr var_98, "        <td colspan=""7"">APELLIDO Y NOMBRE</td>"
  loc_C97181: PopAdLdVar
  loc_C97182: FLdPr Me
  loc_C97185: MemLdRfVar from_stack_1.global_76
  loc_C97188: LdPrVar
  loc_C9718A: LateMemCall
  loc_C97190: LitVarStr var_98, "        </tr>"
  loc_C97195: PopAdLdVar
  loc_C97196: FLdPr Me
  loc_C97199: MemLdRfVar from_stack_1.global_76
  loc_C9719C: LdPrVar
  loc_C9719E: LateMemCall
  loc_C971A4: LitVarStr var_98, "      <tr>"
  loc_C971A9: PopAdLdVar
  loc_C971AA: FLdPr Me
  loc_C971AD: MemLdRfVar from_stack_1.global_76
  loc_C971B0: LdPrVar
  loc_C971B2: LateMemCall
  loc_C971B8: LitStr "        <td align=""center"" colspan=""7"">"
  loc_C971BB: FLdRfVar var_B0
  loc_C971BE: FLdPr var_B8
  loc_C971C1: VCallAd Control_ID_
  loc_C971C4: FStAdFunc var_F0
  loc_C971C7: FLdPr var_F0
  loc_C971CA:  = Me.Caption
  loc_C971CF: ILdRf var_B0
  loc_C971D2: ConcatStr
  loc_C971D3: FStStrNoPop var_B4
  loc_C971D6: LitStr "</td>"
  loc_C971D9: ConcatStr
  loc_C971DA: CVarStr var_EC
  loc_C971DD: PopAdLdVar
  loc_C971DE: FLdPr Me
  loc_C971E1: MemLdRfVar from_stack_1.global_76
  loc_C971E4: LdPrVar
  loc_C971E6: LateMemCall
  loc_C971EC: FFreeStr var_B0 = ""
  loc_C971F3: FFree1Ad var_F0
  loc_C971F6: FFree1Var var_EC = ""
  loc_C971F9: LitVarStr var_98, "        </tr>"
  loc_C971FE: PopAdLdVar
  loc_C971FF: FLdPr Me
  loc_C97202: MemLdRfVar from_stack_1.global_76
  loc_C97205: LdPrVar
  loc_C97207: LateMemCall
  loc_C9720D: LitVarStr var_98, "      <tr align=""center"" class=""Encabezado"">"
  loc_C97212: PopAdLdVar
  loc_C97213: FLdPr Me
  loc_C97216: MemLdRfVar from_stack_1.global_76
  loc_C97219: LdPrVar
  loc_C9721B: LateMemCall
  loc_C97221: LitVarStr var_98, "        <td width=""14" & Chr(37) & """>BOLETA</td>"
  loc_C97226: PopAdLdVar
  loc_C97227: FLdPr Me
  loc_C9722A: MemLdRfVar from_stack_1.global_76
  loc_C9722D: LdPrVar
  loc_C9722F: LateMemCall
  loc_C97235: LitVarStr var_98, "        <td width=""14" & Chr(37) & """>OFICINA</td>"
  loc_C9723A: PopAdLdVar
  loc_C9723B: FLdPr Me
  loc_C9723E: MemLdRfVar from_stack_1.global_76
  loc_C97241: LdPrVar
  loc_C97243: LateMemCall
  loc_C97249: LitVarStr var_98, "        <td width=""14" & Chr(37) & """>CUENTA</td>"
  loc_C9724E: PopAdLdVar
  loc_C9724F: FLdPr Me
  loc_C97252: MemLdRfVar from_stack_1.global_76
  loc_C97255: LdPrVar
  loc_C97257: LateMemCall
  loc_C9725D: LitVarStr var_98, "        <td width=""14" & Chr(37) & """>JUICIO</td>"
  loc_C97262: PopAdLdVar
  loc_C97263: FLdPr Me
  loc_C97266: MemLdRfVar from_stack_1.global_76
  loc_C97269: LdPrVar
  loc_C9726B: LateMemCall
  loc_C97271: LitVarStr var_98, "        <td width=""14" & Chr(37) & """>INSTANCIA</td>"
  loc_C97276: PopAdLdVar
  loc_C97277: FLdPr Me
  loc_C9727A: MemLdRfVar from_stack_1.global_76
  loc_C9727D: LdPrVar
  loc_C9727F: LateMemCall
  loc_C97285: LitVarStr var_98, "        <td width=""14" & Chr(37) & """>VENCIMIENTO</td>"
  loc_C9728A: PopAdLdVar
  loc_C9728B: FLdPr Me
  loc_C9728E: MemLdRfVar from_stack_1.global_76
  loc_C97291: LdPrVar
  loc_C97293: LateMemCall
  loc_C97299: LitVarStr var_98, "        <td>IMPORTE</td>"
  loc_C9729E: PopAdLdVar
  loc_C9729F: FLdPr Me
  loc_C972A2: MemLdRfVar from_stack_1.global_76
  loc_C972A5: LdPrVar
  loc_C972A7: LateMemCall
  loc_C972AD: LitVarStr var_98, "      </tr>"
  loc_C972B2: PopAdLdVar
  loc_C972B3: FLdPr Me
  loc_C972B6: MemLdRfVar from_stack_1.global_76
  loc_C972B9: LdPrVar
  loc_C972BB: LateMemCall
  loc_C972C1: LitVarStr var_98, "      <tr valign=""top"">"
  loc_C972C6: PopAdLdVar
  loc_C972C7: FLdPr Me
  loc_C972CA: MemLdRfVar from_stack_1.global_76
  loc_C972CD: LdPrVar
  loc_C972CF: LateMemCall
  loc_C972D5: LitStr "        <td align=""right"">"
  loc_C972D8: FLdRfVar var_B0
  loc_C972DB: FLdPr var_B8
  loc_C972DE: VCallAd Control_ID_cmdPdf
  loc_C972E1: FStAdFunc var_F0
  loc_C972E4: FLdPr var_F0
  loc_C972E7:  = Me.Text
  loc_C972EC: ILdRf var_B0
  loc_C972EF: ConcatStr
  loc_C972F0: FStStrNoPop var_B4
  loc_C972F3: LitStr "</td>"
  loc_C972F6: ConcatStr
  loc_C972F7: CVarStr var_EC
  loc_C972FA: PopAdLdVar
  loc_C972FB: FLdPr Me
  loc_C972FE: MemLdRfVar from_stack_1.global_76
  loc_C97301: LdPrVar
  loc_C97303: LateMemCall
  loc_C97309: FFreeStr var_B0 = ""
  loc_C97310: FFree1Ad var_F0
  loc_C97313: FFree1Var var_EC = ""
  loc_C97316: LitStr "        <td align=""right"">"
  loc_C97319: FLdRfVar var_B0
  loc_C9731C: FLdPr var_B8
  loc_C9731F: VCallAd Control_ID_
  loc_C97322: FStAdFunc var_F0
  loc_C97325: FLdPr var_F0
  loc_C97328:  = Me.Caption
  loc_C9732D: ILdRf var_B0
  loc_C97330: ConcatStr
  loc_C97331: FStStrNoPop var_B4
  loc_C97334: LitStr "</td>"
  loc_C97337: ConcatStr
  loc_C97338: CVarStr var_EC
  loc_C9733B: PopAdLdVar
  loc_C9733C: FLdPr Me
  loc_C9733F: MemLdRfVar from_stack_1.global_76
  loc_C97342: LdPrVar
  loc_C97344: LateMemCall
  loc_C9734A: FFreeStr var_B0 = ""
  loc_C97351: FFree1Ad var_F0
  loc_C97354: FFree1Var var_EC = ""
  loc_C97357: LitStr "        <td align=""right"">"
  loc_C9735A: FLdRfVar var_B0
  loc_C9735D: FLdPr var_B8
  loc_C97360: VCallAd Control_ID_
  loc_C97363: FStAdFunc var_F0
  loc_C97366: FLdPr var_F0
  loc_C97369:  = Me.Caption
  loc_C9736E: ILdRf var_B0
  loc_C97371: ConcatStr
  loc_C97372: FStStrNoPop var_B4
  loc_C97375: LitStr "</td>"
  loc_C97378: ConcatStr
  loc_C97379: CVarStr var_EC
  loc_C9737C: PopAdLdVar
  loc_C9737D: FLdPr Me
  loc_C97380: MemLdRfVar from_stack_1.global_76
  loc_C97383: LdPrVar
  loc_C97385: LateMemCall
  loc_C9738B: FFreeStr var_B0 = ""
  loc_C97392: FFree1Ad var_F0
  loc_C97395: FFree1Var var_EC = ""
  loc_C97398: LitStr "        <td align=""right"">"
  loc_C9739B: FLdRfVar var_B0
  loc_C9739E: FLdPr var_B8
  loc_C973A1: VCallAd Control_ID_
  loc_C973A4: FStAdFunc var_F0
  loc_C973A7: FLdPr var_F0
  loc_C973AA:  = Me.Caption
  loc_C973AF: ILdRf var_B0
  loc_C973B2: ConcatStr
  loc_C973B3: FStStrNoPop var_B4
  loc_C973B6: LitStr "</td>"
  loc_C973B9: ConcatStr
  loc_C973BA: CVarStr var_EC
  loc_C973BD: PopAdLdVar
  loc_C973BE: FLdPr Me
  loc_C973C1: MemLdRfVar from_stack_1.global_76
  loc_C973C4: LdPrVar
  loc_C973C6: LateMemCall
  loc_C973CC: FFreeStr var_B0 = ""
  loc_C973D3: FFree1Ad var_F0
  loc_C973D6: FFree1Var var_EC = ""
  loc_C973D9: FLdRfVar var_B0
  loc_C973DC: FLdPr var_B8
  loc_C973DF: VCallAd Control_ID_
  loc_C973E2: FStAdFunc var_F0
  loc_C973E5: FLdPr var_F0
  loc_C973E8:  = Me.Caption
  loc_C973ED: FLdRfVar var_B4
  loc_C973F0: FLdPr var_B8
  loc_C973F3: VCallAd Control_ID_
  loc_C973F6: FStAdFunc var_114
  loc_C973F9: FLdPr var_114
  loc_C973FC:  = Me.Caption
  loc_C97401: LitVarStr var_164, "        <td align=""center"">"
  loc_C97406: LitVarStr var_A8, "&nbsp;"
  loc_C9740B: FStVarCopyObj var_100
  loc_C9740E: FLdRfVar var_100
  loc_C97411: FLdZeroAd var_B4
  loc_C97414: CVarStr var_EC
  loc_C97417: ILdRf var_B0
  loc_C9741A: LitStr vbNullString
  loc_C9741D: NeStr
  loc_C9741F: CVarBoolI2 var_98
  loc_C97423: FLdRfVar var_110
  loc_C97426: ImpAdCallFPR4  = IIf(, , )
  loc_C9742B: FLdRfVar var_110
  loc_C9742E: ConcatVar var_124
  loc_C97432: LitVarStr var_184, "</td>"
  loc_C97437: ConcatVar var_134
  loc_C9743B: PopAdLdVar
  loc_C9743C: FLdPr Me
  loc_C9743F: MemLdRfVar from_stack_1.global_76
  loc_C97442: LdPrVar
  loc_C97444: LateMemCall
  loc_C9744A: FFree1Str var_B0
  loc_C9744D: FFreeAd var_F0 = ""
  loc_C97454: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_110 = "": var_124 = ""
  loc_C97463: LitStr "        <td align=""center"">"
  loc_C97466: FLdPr Me
  loc_C97469: MemLdStr FeveApre
  loc_C9746C: ConcatStr
  loc_C9746D: FStStrNoPop var_B0
  loc_C97470: LitStr "</td>"
  loc_C97473: ConcatStr
  loc_C97474: CVarStr var_EC
  loc_C97477: PopAdLdVar
  loc_C97478: FLdPr Me
  loc_C9747B: MemLdRfVar from_stack_1.global_76
  loc_C9747E: LdPrVar
  loc_C97480: LateMemCall
  loc_C97486: FFree1Str var_B0
  loc_C97489: FFree1Var var_EC = ""
  loc_C9748C: LitStr "        <td align=""right"">"
  loc_C9748F: FLdRfVar var_B0
  loc_C97492: FLdPr var_B8
  loc_C97495: VCallAd Control_ID_
  loc_C97498: FStAdFunc var_F0
  loc_C9749B: FLdPr var_F0
  loc_C9749E:  = Me.Caption
  loc_C974A3: ILdRf var_B0
  loc_C974A6: ConcatStr
  loc_C974A7: FStStrNoPop var_B4
  loc_C974AA: LitStr "</td>"
  loc_C974AD: ConcatStr
  loc_C974AE: CVarStr var_EC
  loc_C974B1: PopAdLdVar
  loc_C974B2: FLdPr Me
  loc_C974B5: MemLdRfVar from_stack_1.global_76
  loc_C974B8: LdPrVar
  loc_C974BA: LateMemCall
  loc_C974C0: FFreeStr var_B0 = ""
  loc_C974C7: FFree1Ad var_F0
  loc_C974CA: FFree1Var var_EC = ""
  loc_C974CD: LitVarStr var_98, "      </tr>"
  loc_C974D2: PopAdLdVar
  loc_C974D3: FLdPr Me
  loc_C974D6: MemLdRfVar from_stack_1.global_76
  loc_C974D9: LdPrVar
  loc_C974DB: LateMemCall
  loc_C974E1: LitVarStr var_98, "      <tr align=""left"">"
  loc_C974E6: PopAdLdVar
  loc_C974E7: FLdPr Me
  loc_C974EA: MemLdRfVar from_stack_1.global_76
  loc_C974ED: LdPrVar
  loc_C974EF: LateMemCall
  loc_C974F5: LitVarStr var_98, "          <td height=""85"" colspan=""7"" class=""Normal"">"
  loc_C974FA: PopAdLdVar
  loc_C974FB: FLdPr Me
  loc_C974FE: MemLdRfVar from_stack_1.global_76
  loc_C97501: LdPrVar
  loc_C97503: LateMemCall
  loc_C97509: LitVarStr var_98, "           <table valign=""middle"" align=""center"">"
  loc_C9750E: PopAdLdVar
  loc_C9750F: FLdPr Me
  loc_C97512: MemLdRfVar from_stack_1.global_76
  loc_C97515: LdPrVar
  loc_C97517: LateMemCall
  loc_C9751D: FLdRfVar var_B0
  loc_C97520: FLdPr var_B8
  loc_C97523: VCallAd Control_ID_
  loc_C97526: FStAdFunc var_F0
  loc_C97529: FLdPr var_F0
  loc_C9752C:  = Me.Caption
  loc_C97531: FLdRfVar var_B4
  loc_C97534: FLdPr var_B8
  loc_C97537: VCallAd Control_ID_
  loc_C9753A: FStAdFunc var_114
  loc_C9753D: FLdPr var_114
  loc_C97540:  = Me.Caption
  loc_C97545: FLdRfVar var_BC
  loc_C97548: FLdPr var_B8
  loc_C9754B: VCallAd Control_ID_
  loc_C9754E: FStAdFunc var_1A8
  loc_C97551: FLdPr var_1A8
  loc_C97554:  = Me.Caption
  loc_C97559: FLdPr Me
  loc_C9755C: MemLdStr FeveApre
  loc_C9755F: ILdRf var_BC
  loc_C97562: ILdRf var_B4
  loc_C97565: CUI1Str
  loc_C97567: ILdRf var_B0
  loc_C9756A: FLdPr Me
  loc_C9756D: MemLdStr BimeCtct
  loc_C97570: FLdPr Me
  loc_C97573: MemLdStr NumeBole
  loc_C97576: FLdPr Me
  loc_C97579: MemLdStr PeriBole
  loc_C9757C: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_C97581: PopTmpLdAdStr var_1B0
  loc_C97584: FLdRfVar var_88
  loc_C97587: StAryMove
  loc_C97589: FFreeStr var_B0 = "": var_B4 = ""
  loc_C97592: FFreeAd var_F0 = "": var_114 = ""
  loc_C9759B: LitStr "             <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_C9759E: LitI4 1
  loc_C975A3: ILdRf var_88
  loc_C975A6: Ary1LdI4
  loc_C975A7: ConcatStr
  loc_C975A8: FStStrNoPop var_B0
  loc_C975AB: LitStr "</td><tr>"
  loc_C975AE: ConcatStr
  loc_C975AF: CVarStr var_EC
  loc_C975B2: PopAdLdVar
  loc_C975B3: FLdPr Me
  loc_C975B6: MemLdRfVar from_stack_1.global_76
  loc_C975B9: LdPrVar
  loc_C975BB: LateMemCall
  loc_C975C1: FFree1Str var_B0
  loc_C975C4: FFree1Var var_EC = ""
  loc_C975C7: LitStr "             <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_C975CA: LitI4 0
  loc_C975CF: ILdRf var_88
  loc_C975D2: Ary1LdI4
  loc_C975D3: ConcatStr
  loc_C975D4: FStStrNoPop var_B0
  loc_C975D7: LitStr "</td><tr>"
  loc_C975DA: ConcatStr
  loc_C975DB: CVarStr var_EC
  loc_C975DE: PopAdLdVar
  loc_C975DF: FLdPr Me
  loc_C975E2: MemLdRfVar from_stack_1.global_76
  loc_C975E5: LdPrVar
  loc_C975E7: LateMemCall
  loc_C975ED: FFree1Str var_B0
  loc_C975F0: FFree1Var var_EC = ""
  loc_C975F3: LitVarStr var_98, "           </table>"
  loc_C975F8: PopAdLdVar
  loc_C975F9: FLdPr Me
  loc_C975FC: MemLdRfVar from_stack_1.global_76
  loc_C975FF: LdPrVar
  loc_C97601: LateMemCall
  loc_C97607: LitVarStr var_98, "          <br><div align=""right"">Sellar al dorso</div></td>"
  loc_C9760C: PopAdLdVar
  loc_C9760D: FLdPr Me
  loc_C97610: MemLdRfVar from_stack_1.global_76
  loc_C97613: LdPrVar
  loc_C97615: LateMemCall
  loc_C9761B: LitVarStr var_98, "      </tr>"
  loc_C97620: PopAdLdVar
  loc_C97621: FLdPr Me
  loc_C97624: MemLdRfVar from_stack_1.global_76
  loc_C97627: LdPrVar
  loc_C97629: LateMemCall
  loc_C9762F: LitVarStr var_98, "    </table>"
  loc_C97634: PopAdLdVar
  loc_C97635: FLdPr Me
  loc_C97638: MemLdRfVar from_stack_1.global_76
  loc_C9763B: LdPrVar
  loc_C9763D: LateMemCall
  loc_C97643: LitVarStr var_98, "  </th></tr>"
  loc_C97648: PopAdLdVar
  loc_C97649: FLdPr Me
  loc_C9764C: MemLdRfVar from_stack_1.global_76
  loc_C9764F: LdPrVar
  loc_C97651: LateMemCall
  loc_C97657: LitVarStr var_98, "  <tr>"
  loc_C9765C: PopAdLdVar
  loc_C9765D: FLdPr Me
  loc_C97660: MemLdRfVar from_stack_1.global_76
  loc_C97663: LdPrVar
  loc_C97665: LateMemCall
  loc_C9766B: LitVarStr var_98, "    <td align=""left"" valign=""top"" class=""Normal"">www.infogov.com.ar</td>"
  loc_C97670: PopAdLdVar
  loc_C97671: FLdPr Me
  loc_C97674: MemLdRfVar from_stack_1.global_76
  loc_C97677: LdPrVar
  loc_C97679: LateMemCall
  loc_C9767F: LitVarStr var_98, "  </tr>"
  loc_C97684: PopAdLdVar
  loc_C97685: FLdPr Me
  loc_C97688: MemLdRfVar from_stack_1.global_76
  loc_C9768B: LdPrVar
  loc_C9768D: LateMemCall
  loc_C97693: LitVarStr var_98, "</table>"
  loc_C97698: PopAdLdVar
  loc_C97699: FLdPr Me
  loc_C9769C: MemLdRfVar from_stack_1.global_76
  loc_C9769F: LdPrVar
  loc_C976A1: LateMemCall
  loc_C976A7: LitNothing
  loc_C976A9: FStAd var_B8 
  loc_C976AD: ExitProcHresult
End Function

Private Function Proc_288_21_9F2FB4() '9F2FB4
  'Data Table: 45234C
  loc_9F2F88: LitVarStr var_94, "</body>"
  loc_9F2F8D: PopAdLdVar
  loc_9F2F8E: FLdPr Me
  loc_9F2F91: MemLdRfVar from_stack_1.global_76
  loc_9F2F94: LdPrVar
  loc_9F2F96: LateMemCall
  loc_9F2F9C: LitVarStr var_94, "</html>"
  loc_9F2FA1: PopAdLdVar
  loc_9F2FA2: FLdPr Me
  loc_9F2FA5: MemLdRfVar from_stack_1.global_76
  loc_9F2FA8: LdPrVar
  loc_9F2FAA: LateMemCall
  loc_9F2FB0: ExitProcHresult
End Function
