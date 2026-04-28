VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConsultadeGastosyHonorarios
  Caption = "Listado de Gastos y Honorarios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConsultadeGastosyHonorarios.frx":0000
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
    OleObjectBlob = "rptConsultadeGastosyHonorarios.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6360
    Top = 1560
    Width = 735
    Height = 615
    TabIndex = 4
    Cancel = -1  'True
    Picture = "rptConsultadeGastosyHonorarios.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConsultadeGastosyHonorarios.frx":0B9C
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
    OleObjectBlob = "rptConsultadeGastosyHonorarios.frx":0C00
  End
End

Attribute VB_Name = "rptConsultadeGastosyHonorarios"

Public bGenerado As Boolean


Private Sub Form_Load() '9E2D5C
  'Data Table: 444C34
  loc_9E2D40: ILdRf Me
  loc_9E2D43: CastAd
  loc_9E2D46: FStAdFunc var_88
  loc_9E2D49: FLdRfVar var_88
  loc_9E2D4C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9E2D51: FFree1Ad var_88
  loc_9E2D54: Call cmdNueva_Click()
  loc_9E2D59: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CDA80
  'Data Table: 444C34
  loc_9CDA68: FLdPr Me
  loc_9CDA6B: VCallAd Control_ID_wbbReporte
  loc_9CDA6E: FStAdFunc var_88
  loc_9CDA71: FLdRfVar var_88
  loc_9CDA74: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CDA79: FFree1Ad var_88
  loc_9CDA7C: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9E2DFC
  'Data Table: 444C34
  loc_9E2DE0: LitI2_Byte 0
  loc_9E2DE2: ILdRf Me
  loc_9E2DE5: CastAd
  loc_9E2DE8: FStAdFunc var_88
  loc_9E2DEB: FLdRfVar var_88
  loc_9E2DEE: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9E2DF3: FFree1Ad var_88
  loc_9E2DF6: Call cmdSalir_Click()
  loc_9E2DFB: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A03C10
  'Data Table: 444C34
  loc_A03BE0: LitVarStr var_94, "Cerrando..."
  loc_A03BE5: PopAdLdVar
  loc_A03BE6: FLdPr Me
  loc_A03BE9: VCallAd Control_ID_statusBar
  loc_A03BEC: FStAdFunc var_A8
  loc_A03BEF: FLdPr var_A8
  loc_A03BF2: LateIdSt
  loc_A03BF7: FFree1Ad var_A8
  loc_A03BFA: ILdRf Me
  loc_A03BFD: FStAdNoPop
  loc_A03C01: ImpAdLdRf MemVar_D9C5D8
  loc_A03C04: NewIfNullPr Global
  loc_A03C07: Global.Unload from_stack_1
  loc_A03C0C: FFree1Ad var_A8
  loc_A03C0F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E2E4C
  'Data Table: 444C34
  loc_9E2E30: LitI2_Byte 0
  loc_9E2E32: PopTmpLdAd2 var_8A
  loc_9E2E35: ILdRf Me
  loc_9E2E38: CastAd
  loc_9E2E3B: FStAdFunc var_88
  loc_9E2E3E: FLdRfVar var_88
  loc_9E2E41: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2E46: FFree1Ad var_88
  loc_9E2E49: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A14860
  'Data Table: 444C34
  loc_A14828: FLdPr Me
  loc_A1482B: VCallAd Control_ID_statusBar
  loc_A1482E: FStAdFunc var_88
  loc_A14831: FLdPr var_88
  loc_A14834: LateIdLdVar var_98 DispID_1 0
  loc_A1483B: CStrVarTmp
  loc_A1483C: CVarStr var_A8
  loc_A1483F: PopAdLdVar
  loc_A14840: FLdPr Me
  loc_A14843: VCallAd Control_ID_statusBar
  loc_A14846: FStAdFunc var_BC
  loc_A14849: FLdPr var_BC
  loc_A1484C: LateIdSt
  loc_A14851: FFreeAd var_88 = ""
  loc_A14858: FFreeVar var_98 = ""
  loc_A1485F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CD3AC
  'Data Table: 444C34
  loc_9CD394: ILdRf Me
  loc_9CD397: CastAd
  loc_9CD39A: FStAdFunc var_88
  loc_9CD39D: FLdRfVar var_88
  loc_9CD3A0: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CD3A5: FFree1Ad var_88
  loc_9CD3A8: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9E56E4
  'Data Table: 444C34
  loc_9E56C4: LitI2_Byte 0
  loc_9E56C6: FLdPr Me
  loc_9E56C9: MemStI2 bGenerado
  loc_9E56CC: LitI2_Byte 0
  loc_9E56CE: ILdRf Me
  loc_9E56D1: CastAd
  loc_9E56D4: FStAdFunc var_88
  loc_9E56D7: FLdRfVar var_88
  loc_9E56DA: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_9E56DF: FFree1Ad var_88
  loc_9E56E2: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4454B4
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4454C3
  bGenerado = Value
End Sub

Public Sub GeneraReporte() 'A5AFA4
  'Data Table: 444C34
  loc_A5AF40: FLdPr Me
  loc_A5AF43: MemLdI2 bGenerado
  loc_A5AF46: BranchF loc_A5AF4A
  loc_A5AF49: ExitProcHresult
  loc_A5AF4A: LitVarStr var_94, "Generando reporte..."
  loc_A5AF4F: PopAdLdVar
  loc_A5AF50: FLdPr Me
  loc_A5AF53: VCallAd Control_ID_statusBar
  loc_A5AF56: FStAdFunc var_A8
  loc_A5AF59: FLdPr var_A8
  loc_A5AF5C: LateIdSt
  loc_A5AF61: FFree1Ad var_A8
  loc_A5AF64: LitI4 &HB
  loc_A5AF69: CI2I4
  loc_A5AF6A: FLdPr Me
  loc_A5AF6D: Me.MousePointer = from_stack_1
  loc_A5AF72: LitI2_Byte &HFF
  loc_A5AF74: FLdPr Me
  loc_A5AF77: MemStI2 bGenerado
  loc_A5AF7A: LitI4 0
  loc_A5AF7F: CI2I4
  loc_A5AF80: FLdPr Me
  loc_A5AF83: Me.MousePointer = from_stack_1
  loc_A5AF88: LitVarStr var_94, vbNullString
  loc_A5AF8D: PopAdLdVar
  loc_A5AF8E: FLdPr Me
  loc_A5AF91: VCallAd Control_ID_statusBar
  loc_A5AF94: FStAdFunc var_A8
  loc_A5AF97: FLdPr var_A8
  loc_A5AF9A: LateIdSt
  loc_A5AF9F: FFree1Ad var_A8
  loc_A5AFA2: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A2CCAC
  'Data Table: 444C34
  loc_A2CC60: FLdRfVar var_88
  loc_A2CC63: LitI2_Byte 0
  loc_A2CC65: LitI2_Byte &HFF
  loc_A2CC67: ImpAdLdI4 MemVar_D93C84
  loc_A2CC6A: FLdPr Me
  loc_A2CC6D: MemLdRfVar from_stack_1.global_56
  loc_A2CC70: NewIfNullPr IFileSystem3
  loc_A2CC73: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A2CC78: ILdRf var_88
  loc_A2CC7B: FLdPr Me
  loc_A2CC7E: MemStVarAd
  loc_A2CC82: FFree1Ad var_88
  loc_A2CC85: LitI2_Byte &HFF
  loc_A2CC87: ImpAdStI2 MemVar_D93C8A
  loc_A2CC8A: Call Proc_289_12_C76EA8()
  loc_A2CC8F: Call Proc_289_13_9F2998()
  loc_A2CC94: FLdPr Me
  loc_A2CC97: MemLdRfVar from_stack_1.global_60
  loc_A2CC9A: LdPrVar
  loc_A2CC9C: LateMemCall
  loc_A2CCA2: LitStr vbNullString
  loc_A2CCA5: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A2CCAA: ExitProcHresult
End Sub

Private Function Proc_289_12_C76EA8() 'C76EA8
  'Data Table: 444C34
  loc_C75BDC: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C75BE1: PopAdLdVar
  loc_C75BE2: FLdPr Me
  loc_C75BE5: MemLdRfVar from_stack_1.global_60
  loc_C75BE8: LdPrVar
  loc_C75BEA: LateMemCall
  loc_C75BF0: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C75BF5: PopAdLdVar
  loc_C75BF6: FLdPr Me
  loc_C75BF9: MemLdRfVar from_stack_1.global_60
  loc_C75BFC: LdPrVar
  loc_C75BFE: LateMemCall
  loc_C75C04: LitVarStr var_94, "<head>"
  loc_C75C09: PopAdLdVar
  loc_C75C0A: FLdPr Me
  loc_C75C0D: MemLdRfVar from_stack_1.global_60
  loc_C75C10: LdPrVar
  loc_C75C12: LateMemCall
  loc_C75C18: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C75C1D: PopAdLdVar
  loc_C75C1E: FLdPr Me
  loc_C75C21: MemLdRfVar from_stack_1.global_60
  loc_C75C24: LdPrVar
  loc_C75C26: LateMemCall
  loc_C75C2C: LitStr "<title>"
  loc_C75C2F: FLdRfVar var_A8
  loc_C75C32: FLdPr Me
  loc_C75C35:  = Me.Caption
  loc_C75C3A: ILdRf var_A8
  loc_C75C3D: ConcatStr
  loc_C75C3E: FStStrNoPop var_AC
  loc_C75C41: LitStr "</title>"
  loc_C75C44: ConcatStr
  loc_C75C45: CVarStr var_BC
  loc_C75C48: PopAdLdVar
  loc_C75C49: FLdPr Me
  loc_C75C4C: MemLdRfVar from_stack_1.global_60
  loc_C75C4F: LdPrVar
  loc_C75C51: LateMemCall
  loc_C75C57: FFreeStr var_A8 = ""
  loc_C75C5E: FFree1Var var_BC = ""
  loc_C75C61: LitVarStr var_94, "<style type=""text/css"">"
  loc_C75C66: PopAdLdVar
  loc_C75C67: FLdPr Me
  loc_C75C6A: MemLdRfVar from_stack_1.global_60
  loc_C75C6D: LdPrVar
  loc_C75C6F: LateMemCall
  loc_C75C75: LitVarStr var_94, ".Titulo1 {"
  loc_C75C7A: PopAdLdVar
  loc_C75C7B: FLdPr Me
  loc_C75C7E: MemLdRfVar from_stack_1.global_60
  loc_C75C81: LdPrVar
  loc_C75C83: LateMemCall
  loc_C75C89: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C75C8E: PopAdLdVar
  loc_C75C8F: FLdPr Me
  loc_C75C92: MemLdRfVar from_stack_1.global_60
  loc_C75C95: LdPrVar
  loc_C75C97: LateMemCall
  loc_C75C9D: LitVarStr var_94, " font-size: 18px;"
  loc_C75CA2: PopAdLdVar
  loc_C75CA3: FLdPr Me
  loc_C75CA6: MemLdRfVar from_stack_1.global_60
  loc_C75CA9: LdPrVar
  loc_C75CAB: LateMemCall
  loc_C75CB1: LitVarStr var_94, " font-weight: bold;"
  loc_C75CB6: PopAdLdVar
  loc_C75CB7: FLdPr Me
  loc_C75CBA: MemLdRfVar from_stack_1.global_60
  loc_C75CBD: LdPrVar
  loc_C75CBF: LateMemCall
  loc_C75CC5: LitVarStr var_94, "}"
  loc_C75CCA: PopAdLdVar
  loc_C75CCB: FLdPr Me
  loc_C75CCE: MemLdRfVar from_stack_1.global_60
  loc_C75CD1: LdPrVar
  loc_C75CD3: LateMemCall
  loc_C75CD9: LitVarStr var_94, ".Titulo2 {"
  loc_C75CDE: PopAdLdVar
  loc_C75CDF: FLdPr Me
  loc_C75CE2: MemLdRfVar from_stack_1.global_60
  loc_C75CE5: LdPrVar
  loc_C75CE7: LateMemCall
  loc_C75CED: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C75CF2: PopAdLdVar
  loc_C75CF3: FLdPr Me
  loc_C75CF6: MemLdRfVar from_stack_1.global_60
  loc_C75CF9: LdPrVar
  loc_C75CFB: LateMemCall
  loc_C75D01: LitVarStr var_94, " font-size: 14px;"
  loc_C75D06: PopAdLdVar
  loc_C75D07: FLdPr Me
  loc_C75D0A: MemLdRfVar from_stack_1.global_60
  loc_C75D0D: LdPrVar
  loc_C75D0F: LateMemCall
  loc_C75D15: LitVarStr var_94, " font-weight: bold;"
  loc_C75D1A: PopAdLdVar
  loc_C75D1B: FLdPr Me
  loc_C75D1E: MemLdRfVar from_stack_1.global_60
  loc_C75D21: LdPrVar
  loc_C75D23: LateMemCall
  loc_C75D29: LitVarStr var_94, "}"
  loc_C75D2E: PopAdLdVar
  loc_C75D2F: FLdPr Me
  loc_C75D32: MemLdRfVar from_stack_1.global_60
  loc_C75D35: LdPrVar
  loc_C75D37: LateMemCall
  loc_C75D3D: LitVarStr var_94, ".Normal {"
  loc_C75D42: PopAdLdVar
  loc_C75D43: FLdPr Me
  loc_C75D46: MemLdRfVar from_stack_1.global_60
  loc_C75D49: LdPrVar
  loc_C75D4B: LateMemCall
  loc_C75D51: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C75D56: PopAdLdVar
  loc_C75D57: FLdPr Me
  loc_C75D5A: MemLdRfVar from_stack_1.global_60
  loc_C75D5D: LdPrVar
  loc_C75D5F: LateMemCall
  loc_C75D65: LitVarStr var_94, " font-size: 11px;"
  loc_C75D6A: PopAdLdVar
  loc_C75D6B: FLdPr Me
  loc_C75D6E: MemLdRfVar from_stack_1.global_60
  loc_C75D71: LdPrVar
  loc_C75D73: LateMemCall
  loc_C75D79: LitVarStr var_94, " vertical-align: top;"
  loc_C75D7E: PopAdLdVar
  loc_C75D7F: FLdPr Me
  loc_C75D82: MemLdRfVar from_stack_1.global_60
  loc_C75D85: LdPrVar
  loc_C75D87: LateMemCall
  loc_C75D8D: LitVarStr var_94, "}"
  loc_C75D92: PopAdLdVar
  loc_C75D93: FLdPr Me
  loc_C75D96: MemLdRfVar from_stack_1.global_60
  loc_C75D99: LdPrVar
  loc_C75D9B: LateMemCall
  loc_C75DA1: LitVarStr var_94, ".Encabezado {"
  loc_C75DA6: PopAdLdVar
  loc_C75DA7: FLdPr Me
  loc_C75DAA: MemLdRfVar from_stack_1.global_60
  loc_C75DAD: LdPrVar
  loc_C75DAF: LateMemCall
  loc_C75DB5: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C75DBA: PopAdLdVar
  loc_C75DBB: FLdPr Me
  loc_C75DBE: MemLdRfVar from_stack_1.global_60
  loc_C75DC1: LdPrVar
  loc_C75DC3: LateMemCall
  loc_C75DC9: LitVarStr var_94, " font-size: 11px;"
  loc_C75DCE: PopAdLdVar
  loc_C75DCF: FLdPr Me
  loc_C75DD2: MemLdRfVar from_stack_1.global_60
  loc_C75DD5: LdPrVar
  loc_C75DD7: LateMemCall
  loc_C75DDD: LitVarStr var_94, " font-weight: bold;"
  loc_C75DE2: PopAdLdVar
  loc_C75DE3: FLdPr Me
  loc_C75DE6: MemLdRfVar from_stack_1.global_60
  loc_C75DE9: LdPrVar
  loc_C75DEB: LateMemCall
  loc_C75DF1: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C75DF6: PopAdLdVar
  loc_C75DF7: FLdPr Me
  loc_C75DFA: MemLdRfVar from_stack_1.global_60
  loc_C75DFD: LdPrVar
  loc_C75DFF: LateMemCall
  loc_C75E05: LitVarStr var_94, "}"
  loc_C75E0A: PopAdLdVar
  loc_C75E0B: FLdPr Me
  loc_C75E0E: MemLdRfVar from_stack_1.global_60
  loc_C75E11: LdPrVar
  loc_C75E13: LateMemCall
  loc_C75E19: LitVarStr var_94, ".LineaDato {"
  loc_C75E1E: PopAdLdVar
  loc_C75E1F: FLdPr Me
  loc_C75E22: MemLdRfVar from_stack_1.global_60
  loc_C75E25: LdPrVar
  loc_C75E27: LateMemCall
  loc_C75E2D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C75E32: PopAdLdVar
  loc_C75E33: FLdPr Me
  loc_C75E36: MemLdRfVar from_stack_1.global_60
  loc_C75E39: LdPrVar
  loc_C75E3B: LateMemCall
  loc_C75E41: LitVarStr var_94, " font-size: 10px;"
  loc_C75E46: PopAdLdVar
  loc_C75E47: FLdPr Me
  loc_C75E4A: MemLdRfVar from_stack_1.global_60
  loc_C75E4D: LdPrVar
  loc_C75E4F: LateMemCall
  loc_C75E55: LitVarStr var_94, "}"
  loc_C75E5A: PopAdLdVar
  loc_C75E5B: FLdPr Me
  loc_C75E5E: MemLdRfVar from_stack_1.global_60
  loc_C75E61: LdPrVar
  loc_C75E63: LateMemCall
  loc_C75E69: LitVarStr var_94, ".Totales {"
  loc_C75E6E: PopAdLdVar
  loc_C75E6F: FLdPr Me
  loc_C75E72: MemLdRfVar from_stack_1.global_60
  loc_C75E75: LdPrVar
  loc_C75E77: LateMemCall
  loc_C75E7D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C75E82: PopAdLdVar
  loc_C75E83: FLdPr Me
  loc_C75E86: MemLdRfVar from_stack_1.global_60
  loc_C75E89: LdPrVar
  loc_C75E8B: LateMemCall
  loc_C75E91: LitVarStr var_94, " font-size: 12px;"
  loc_C75E96: PopAdLdVar
  loc_C75E97: FLdPr Me
  loc_C75E9A: MemLdRfVar from_stack_1.global_60
  loc_C75E9D: LdPrVar
  loc_C75E9F: LateMemCall
  loc_C75EA5: LitVarStr var_94, " font-weight: bold;"
  loc_C75EAA: PopAdLdVar
  loc_C75EAB: FLdPr Me
  loc_C75EAE: MemLdRfVar from_stack_1.global_60
  loc_C75EB1: LdPrVar
  loc_C75EB3: LateMemCall
  loc_C75EB9: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C75EBE: PopAdLdVar
  loc_C75EBF: FLdPr Me
  loc_C75EC2: MemLdRfVar from_stack_1.global_60
  loc_C75EC5: LdPrVar
  loc_C75EC7: LateMemCall
  loc_C75ECD: LitVarStr var_94, "}"
  loc_C75ED2: PopAdLdVar
  loc_C75ED3: FLdPr Me
  loc_C75ED6: MemLdRfVar from_stack_1.global_60
  loc_C75ED9: LdPrVar
  loc_C75EDB: LateMemCall
  loc_C75EE1: LitVarStr var_94, ".Total {"
  loc_C75EE6: PopAdLdVar
  loc_C75EE7: FLdPr Me
  loc_C75EEA: MemLdRfVar from_stack_1.global_60
  loc_C75EED: LdPrVar
  loc_C75EEF: LateMemCall
  loc_C75EF5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C75EFA: PopAdLdVar
  loc_C75EFB: FLdPr Me
  loc_C75EFE: MemLdRfVar from_stack_1.global_60
  loc_C75F01: LdPrVar
  loc_C75F03: LateMemCall
  loc_C75F09: LitVarStr var_94, " font-size: 14px;"
  loc_C75F0E: PopAdLdVar
  loc_C75F0F: FLdPr Me
  loc_C75F12: MemLdRfVar from_stack_1.global_60
  loc_C75F15: LdPrVar
  loc_C75F17: LateMemCall
  loc_C75F1D: LitVarStr var_94, " vertical-align: top;"
  loc_C75F22: PopAdLdVar
  loc_C75F23: FLdPr Me
  loc_C75F26: MemLdRfVar from_stack_1.global_60
  loc_C75F29: LdPrVar
  loc_C75F2B: LateMemCall
  loc_C75F31: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C75F36: PopAdLdVar
  loc_C75F37: FLdPr Me
  loc_C75F3A: MemLdRfVar from_stack_1.global_60
  loc_C75F3D: LdPrVar
  loc_C75F3F: LateMemCall
  loc_C75F45: LitVarStr var_94, " font-weight: bold;"
  loc_C75F4A: PopAdLdVar
  loc_C75F4B: FLdPr Me
  loc_C75F4E: MemLdRfVar from_stack_1.global_60
  loc_C75F51: LdPrVar
  loc_C75F53: LateMemCall
  loc_C75F59: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C75F5E: PopAdLdVar
  loc_C75F5F: FLdPr Me
  loc_C75F62: MemLdRfVar from_stack_1.global_60
  loc_C75F65: LdPrVar
  loc_C75F67: LateMemCall
  loc_C75F6D: LitVarStr var_94, "}"
  loc_C75F72: PopAdLdVar
  loc_C75F73: FLdPr Me
  loc_C75F76: MemLdRfVar from_stack_1.global_60
  loc_C75F79: LdPrVar
  loc_C75F7B: LateMemCall
  loc_C75F81: LitVarStr var_94, ".SubTotales {"
  loc_C75F86: PopAdLdVar
  loc_C75F87: FLdPr Me
  loc_C75F8A: MemLdRfVar from_stack_1.global_60
  loc_C75F8D: LdPrVar
  loc_C75F8F: LateMemCall
  loc_C75F95: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C75F9A: PopAdLdVar
  loc_C75F9B: FLdPr Me
  loc_C75F9E: MemLdRfVar from_stack_1.global_60
  loc_C75FA1: LdPrVar
  loc_C75FA3: LateMemCall
  loc_C75FA9: LitVarStr var_94, " font-size: 10px;"
  loc_C75FAE: PopAdLdVar
  loc_C75FAF: FLdPr Me
  loc_C75FB2: MemLdRfVar from_stack_1.global_60
  loc_C75FB5: LdPrVar
  loc_C75FB7: LateMemCall
  loc_C75FBD: LitVarStr var_94, " font-weight: bold;"
  loc_C75FC2: PopAdLdVar
  loc_C75FC3: FLdPr Me
  loc_C75FC6: MemLdRfVar from_stack_1.global_60
  loc_C75FC9: LdPrVar
  loc_C75FCB: LateMemCall
  loc_C75FD1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C75FD6: PopAdLdVar
  loc_C75FD7: FLdPr Me
  loc_C75FDA: MemLdRfVar from_stack_1.global_60
  loc_C75FDD: LdPrVar
  loc_C75FDF: LateMemCall
  loc_C75FE5: LitVarStr var_94, "}"
  loc_C75FEA: PopAdLdVar
  loc_C75FEB: FLdPr Me
  loc_C75FEE: MemLdRfVar from_stack_1.global_60
  loc_C75FF1: LdPrVar
  loc_C75FF3: LateMemCall
  loc_C75FF9: LitVarStr var_94, ".Encabezado1 {font-family: ""Times New Roman"", Times, serif;"
  loc_C75FFE: PopAdLdVar
  loc_C75FFF: FLdPr Me
  loc_C76002: MemLdRfVar from_stack_1.global_60
  loc_C76005: LdPrVar
  loc_C76007: LateMemCall
  loc_C7600D: LitVarStr var_94, " font-size: 13px;"
  loc_C76012: PopAdLdVar
  loc_C76013: FLdPr Me
  loc_C76016: MemLdRfVar from_stack_1.global_60
  loc_C76019: LdPrVar
  loc_C7601B: LateMemCall
  loc_C76021: LitVarStr var_94, " font-weight: bold;"
  loc_C76026: PopAdLdVar
  loc_C76027: FLdPr Me
  loc_C7602A: MemLdRfVar from_stack_1.global_60
  loc_C7602D: LdPrVar
  loc_C7602F: LateMemCall
  loc_C76035: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C7603A: PopAdLdVar
  loc_C7603B: FLdPr Me
  loc_C7603E: MemLdRfVar from_stack_1.global_60
  loc_C76041: LdPrVar
  loc_C76043: LateMemCall
  loc_C76049: LitVarStr var_94, " vertical-align:top;"
  loc_C7604E: PopAdLdVar
  loc_C7604F: FLdPr Me
  loc_C76052: MemLdRfVar from_stack_1.global_60
  loc_C76055: LdPrVar
  loc_C76057: LateMemCall
  loc_C7605D: LitVarStr var_94, "}"
  loc_C76062: PopAdLdVar
  loc_C76063: FLdPr Me
  loc_C76066: MemLdRfVar from_stack_1.global_60
  loc_C76069: LdPrVar
  loc_C7606B: LateMemCall
  loc_C76071: LitVarStr var_94, ".Normal1 { font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C76076: PopAdLdVar
  loc_C76077: FLdPr Me
  loc_C7607A: MemLdRfVar from_stack_1.global_60
  loc_C7607D: LdPrVar
  loc_C7607F: LateMemCall
  loc_C76085: LitVarStr var_94, " font-size: 11px;"
  loc_C7608A: PopAdLdVar
  loc_C7608B: FLdPr Me
  loc_C7608E: MemLdRfVar from_stack_1.global_60
  loc_C76091: LdPrVar
  loc_C76093: LateMemCall
  loc_C76099: LitVarStr var_94, " font-style: normal;"
  loc_C7609E: PopAdLdVar
  loc_C7609F: FLdPr Me
  loc_C760A2: MemLdRfVar from_stack_1.global_60
  loc_C760A5: LdPrVar
  loc_C760A7: LateMemCall
  loc_C760AD: LitVarStr var_94, " font-weight: normal;"
  loc_C760B2: PopAdLdVar
  loc_C760B3: FLdPr Me
  loc_C760B6: MemLdRfVar from_stack_1.global_60
  loc_C760B9: LdPrVar
  loc_C760BB: LateMemCall
  loc_C760C1: LitVarStr var_94, " font-variant: normal;"
  loc_C760C6: PopAdLdVar
  loc_C760C7: FLdPr Me
  loc_C760CA: MemLdRfVar from_stack_1.global_60
  loc_C760CD: LdPrVar
  loc_C760CF: LateMemCall
  loc_C760D5: LitVarStr var_94, " vertical-align:top;"
  loc_C760DA: PopAdLdVar
  loc_C760DB: FLdPr Me
  loc_C760DE: MemLdRfVar from_stack_1.global_60
  loc_C760E1: LdPrVar
  loc_C760E3: LateMemCall
  loc_C760E9: LitVarStr var_94, "}"
  loc_C760EE: PopAdLdVar
  loc_C760EF: FLdPr Me
  loc_C760F2: MemLdRfVar from_stack_1.global_60
  loc_C760F5: LdPrVar
  loc_C760F7: LateMemCall
  loc_C760FD: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C76102: PopAdLdVar
  loc_C76103: FLdPr Me
  loc_C76106: MemLdRfVar from_stack_1.global_60
  loc_C76109: LdPrVar
  loc_C7610B: LateMemCall
  loc_C76111: LitVarStr var_94, "</style>"
  loc_C76116: PopAdLdVar
  loc_C76117: FLdPr Me
  loc_C7611A: MemLdRfVar from_stack_1.global_60
  loc_C7611D: LdPrVar
  loc_C7611F: LateMemCall
  loc_C76125: LitI4 0
  loc_C7612A: FStStrCopy var_AC
  loc_C7612D: FLdRfVar var_AC
  loc_C76130: LitI4 0
  loc_C76135: FStStrCopy var_A8
  loc_C76138: FLdRfVar var_A8
  loc_C7613B: LitI2_Byte 0
  loc_C7613D: PopTmpLdAd2 var_BE
  loc_C76140: FLdPr Me
  loc_C76143: MemLdRfVar from_stack_1.global_60
  loc_C76146: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C7614B: FFreeStr var_A8 = ""
  loc_C76152: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C76157: PopAdLdVar
  loc_C76158: FLdPr Me
  loc_C7615B: MemLdRfVar from_stack_1.global_60
  loc_C7615E: LdPrVar
  loc_C76160: LateMemCall
  loc_C76166: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C7616B: PopAdLdVar
  loc_C7616C: FLdPr Me
  loc_C7616F: MemLdRfVar from_stack_1.global_60
  loc_C76172: LdPrVar
  loc_C76174: LateMemCall
  loc_C7617A: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C7617D: LitI2_Byte &H5F
  loc_C7617F: CStrUI1
  loc_C76181: FStStrNoPop var_A8
  loc_C76184: ConcatStr
  loc_C76185: FStStrNoPop var_AC
  loc_C76188: LitStr """ height="""
  loc_C7618B: ConcatStr
  loc_C7618C: FStStrNoPop var_C4
  loc_C7618F: LitI2_Byte &H3C
  loc_C76191: CStrUI1
  loc_C76193: FStStrNoPop var_C8
  loc_C76196: ConcatStr
  loc_C76197: FStStrNoPop var_CC
  loc_C7619A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C7619D: ConcatStr
  loc_C7619E: FStStrNoPop var_D0
  loc_C761A1: LitStr "Municipalidad de Guaymallén"
  loc_C761A4: ConcatStr
  loc_C761A5: FStStrNoPop var_D4
  loc_C761A8: LitStr "</p>"
  loc_C761AB: ConcatStr
  loc_C761AC: CVarStr var_BC
  loc_C761AF: PopAdLdVar
  loc_C761B0: FLdPr Me
  loc_C761B3: MemLdRfVar from_stack_1.global_60
  loc_C761B6: LdPrVar
  loc_C761B8: LateMemCall
  loc_C761BE: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C761CF: FFree1Var var_BC = ""
  loc_C761D2: LitStr "    <p>"
  loc_C761D5: FLdRfVar var_A8
  loc_C761D8: FLdPr Me
  loc_C761DB:  = Me.Caption
  loc_C761E0: ILdRf var_A8
  loc_C761E3: ConcatStr
  loc_C761E4: FStStrNoPop var_AC
  loc_C761E7: LitStr "</p></th>"
  loc_C761EA: ConcatStr
  loc_C761EB: CVarStr var_BC
  loc_C761EE: PopAdLdVar
  loc_C761EF: FLdPr Me
  loc_C761F2: MemLdRfVar from_stack_1.global_60
  loc_C761F5: LdPrVar
  loc_C761F7: LateMemCall
  loc_C761FD: FFreeStr var_A8 = ""
  loc_C76204: FFree1Var var_BC = ""
  loc_C76207: LitVarStr var_94, "  </tr>"
  loc_C7620C: PopAdLdVar
  loc_C7620D: FLdPr Me
  loc_C76210: MemLdRfVar from_stack_1.global_60
  loc_C76213: LdPrVar
  loc_C76215: LateMemCall
  loc_C7621B: LitVarStr var_94, "  <tr>"
  loc_C76220: PopAdLdVar
  loc_C76221: FLdPr Me
  loc_C76224: MemLdRfVar from_stack_1.global_60
  loc_C76227: LdPrVar
  loc_C76229: LateMemCall
  loc_C7622F: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_C76234: PopAdLdVar
  loc_C76235: FLdPr Me
  loc_C76238: MemLdRfVar from_stack_1.global_60
  loc_C7623B: LdPrVar
  loc_C7623D: LateMemCall
  loc_C76243: LitVarStr var_94, "  </tr>"
  loc_C76248: PopAdLdVar
  loc_C76249: FLdPr Me
  loc_C7624C: MemLdRfVar from_stack_1.global_60
  loc_C7624F: LdPrVar
  loc_C76251: LateMemCall
  loc_C76257: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C7625C: PopAdLdVar
  loc_C7625D: FLdPr Me
  loc_C76260: MemLdRfVar from_stack_1.global_60
  loc_C76263: LdPrVar
  loc_C76265: LateMemCall
  loc_C7626B: LitVarStr var_94, "    <td align=""left"" valign=""top""><table border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_C76270: PopAdLdVar
  loc_C76271: FLdPr Me
  loc_C76274: MemLdRfVar from_stack_1.global_60
  loc_C76277: LdPrVar
  loc_C76279: LateMemCall
  loc_C7627F: ImpAdLdRf MemVar_D93540
  loc_C76282: NewIfNullAd
  loc_C76285: FStAd var_D8 
  loc_C76289: LitVarStr var_94, "      <tr>"
  loc_C7628E: PopAdLdVar
  loc_C7628F: FLdPr Me
  loc_C76292: MemLdRfVar from_stack_1.global_60
  loc_C76295: LdPrVar
  loc_C76297: LateMemCall
  loc_C7629D: LitVarStr var_94, "        <td align=""right"" class=""Encabezado1"">Nro. de Boleta:</td>"
  loc_C762A2: PopAdLdVar
  loc_C762A3: FLdPr Me
  loc_C762A6: MemLdRfVar from_stack_1.global_60
  loc_C762A9: LdPrVar
  loc_C762AB: LateMemCall
  loc_C762B1: LitStr "        <td colspan=""2"" align=""left"" class=""Normal1"">"
  loc_C762B4: FLdRfVar var_A8
  loc_C762B7: FLdPr var_D8
  loc_C762BA: VCallAd Control_ID_cmdPdf
  loc_C762BD: FStAdFunc var_DC
  loc_C762C0: FLdPr var_DC
  loc_C762C3:  = Me.Text
  loc_C762C8: ILdRf var_A8
  loc_C762CB: ConcatStr
  loc_C762CC: FStStrNoPop var_AC
  loc_C762CF: LitStr "</td>"
  loc_C762D2: ConcatStr
  loc_C762D3: CVarStr var_BC
  loc_C762D6: PopAdLdVar
  loc_C762D7: FLdPr Me
  loc_C762DA: MemLdRfVar from_stack_1.global_60
  loc_C762DD: LdPrVar
  loc_C762DF: LateMemCall
  loc_C762E5: FFreeStr var_A8 = ""
  loc_C762EC: FFree1Ad var_DC
  loc_C762EF: FFree1Var var_BC = ""
  loc_C762F2: LitVarStr var_94, "      </tr>"
  loc_C762F7: PopAdLdVar
  loc_C762F8: FLdPr Me
  loc_C762FB: MemLdRfVar from_stack_1.global_60
  loc_C762FE: LdPrVar
  loc_C76300: LateMemCall
  loc_C76306: LitVarStr var_94, "      <tr>"
  loc_C7630B: PopAdLdVar
  loc_C7630C: FLdPr Me
  loc_C7630F: MemLdRfVar from_stack_1.global_60
  loc_C76312: LdPrVar
  loc_C76314: LateMemCall
  loc_C7631A: LitVarStr var_94, "        <td align=""right"" class=""Encabezado1"">C.U.I.T:</td>"
  loc_C7631F: PopAdLdVar
  loc_C76320: FLdPr Me
  loc_C76323: MemLdRfVar from_stack_1.global_60
  loc_C76326: LdPrVar
  loc_C76328: LateMemCall
  loc_C7632E: LitStr "        <td colspan=""2"" align=""left"" class=""Normal1"">"
  loc_C76331: FLdRfVar var_A8
  loc_C76334: FLdPr var_D8
  loc_C76337: VCallAd Control_ID_
  loc_C7633A: FStAdFunc var_DC
  loc_C7633D: FLdPr var_DC
  loc_C76340:  = Me.Caption
  loc_C76345: ILdRf var_A8
  loc_C76348: ConcatStr
  loc_C76349: FStStrNoPop var_AC
  loc_C7634C: LitStr "</td>"
  loc_C7634F: ConcatStr
  loc_C76350: CVarStr var_BC
  loc_C76353: PopAdLdVar
  loc_C76354: FLdPr Me
  loc_C76357: MemLdRfVar from_stack_1.global_60
  loc_C7635A: LdPrVar
  loc_C7635C: LateMemCall
  loc_C76362: FFreeStr var_A8 = ""
  loc_C76369: FFree1Ad var_DC
  loc_C7636C: FFree1Var var_BC = ""
  loc_C7636F: LitVarStr var_94, "      </tr>"
  loc_C76374: PopAdLdVar
  loc_C76375: FLdPr Me
  loc_C76378: MemLdRfVar from_stack_1.global_60
  loc_C7637B: LdPrVar
  loc_C7637D: LateMemCall
  loc_C76383: LitVarStr var_94, "      <tr>"
  loc_C76388: PopAdLdVar
  loc_C76389: FLdPr Me
  loc_C7638C: MemLdRfVar from_stack_1.global_60
  loc_C7638F: LdPrVar
  loc_C76391: LateMemCall
  loc_C76397: LitVarStr var_94, "        <td align=""right"" class=""Encabezado1"">Apellido y Nombre:</td>"
  loc_C7639C: PopAdLdVar
  loc_C7639D: FLdPr Me
  loc_C763A0: MemLdRfVar from_stack_1.global_60
  loc_C763A3: LdPrVar
  loc_C763A5: LateMemCall
  loc_C763AB: LitStr "        <td colspan=""2"" align=""left"" class=""Normal1"">"
  loc_C763AE: FLdRfVar var_A8
  loc_C763B1: FLdPr var_D8
  loc_C763B4: VCallAd Control_ID_
  loc_C763B7: FStAdFunc var_DC
  loc_C763BA: FLdPr var_DC
  loc_C763BD:  = Me.Caption
  loc_C763C2: ILdRf var_A8
  loc_C763C5: ConcatStr
  loc_C763C6: FStStrNoPop var_AC
  loc_C763C9: LitStr "</td>"
  loc_C763CC: ConcatStr
  loc_C763CD: CVarStr var_BC
  loc_C763D0: PopAdLdVar
  loc_C763D1: FLdPr Me
  loc_C763D4: MemLdRfVar from_stack_1.global_60
  loc_C763D7: LdPrVar
  loc_C763D9: LateMemCall
  loc_C763DF: FFreeStr var_A8 = ""
  loc_C763E6: FFree1Ad var_DC
  loc_C763E9: FFree1Var var_BC = ""
  loc_C763EC: LitVarStr var_94, "      </tr>"
  loc_C763F1: PopAdLdVar
  loc_C763F2: FLdPr Me
  loc_C763F5: MemLdRfVar from_stack_1.global_60
  loc_C763F8: LdPrVar
  loc_C763FA: LateMemCall
  loc_C76400: LitVarStr var_94, "      <tr>"
  loc_C76405: PopAdLdVar
  loc_C76406: FLdPr Me
  loc_C76409: MemLdRfVar from_stack_1.global_60
  loc_C7640C: LdPrVar
  loc_C7640E: LateMemCall
  loc_C76414: LitVarStr var_94, "        <td align=""right"" class=""Encabezado1"">Domicilio:</td>"
  loc_C76419: PopAdLdVar
  loc_C7641A: FLdPr Me
  loc_C7641D: MemLdRfVar from_stack_1.global_60
  loc_C76420: LdPrVar
  loc_C76422: LateMemCall
  loc_C76428: LitStr "        <td colspan=""2"" align=""left"" class=""Normal1"">"
  loc_C7642B: FLdRfVar var_A8
  loc_C7642E: FLdPr var_D8
  loc_C76431: VCallAd Control_ID_
  loc_C76434: FStAdFunc var_DC
  loc_C76437: FLdPr var_DC
  loc_C7643A:  = Me.Caption
  loc_C7643F: ILdRf var_A8
  loc_C76442: ConcatStr
  loc_C76443: FStStrNoPop var_AC
  loc_C76446: LitStr "</td>"
  loc_C76449: ConcatStr
  loc_C7644A: CVarStr var_BC
  loc_C7644D: PopAdLdVar
  loc_C7644E: FLdPr Me
  loc_C76451: MemLdRfVar from_stack_1.global_60
  loc_C76454: LdPrVar
  loc_C76456: LateMemCall
  loc_C7645C: FFreeStr var_A8 = ""
  loc_C76463: FFree1Ad var_DC
  loc_C76466: FFree1Var var_BC = ""
  loc_C76469: LitVarStr var_94, "      </tr>"
  loc_C7646E: PopAdLdVar
  loc_C7646F: FLdPr Me
  loc_C76472: MemLdRfVar from_stack_1.global_60
  loc_C76475: LdPrVar
  loc_C76477: LateMemCall
  loc_C7647D: LitVarStr var_94, "      <tr>"
  loc_C76482: PopAdLdVar
  loc_C76483: FLdPr Me
  loc_C76486: MemLdRfVar from_stack_1.global_60
  loc_C76489: LdPrVar
  loc_C7648B: LateMemCall
  loc_C76491: LitVarStr var_94, "        <td align=""right"" class=""Encabezado1"">Oficina:</td>"
  loc_C76496: PopAdLdVar
  loc_C76497: FLdPr Me
  loc_C7649A: MemLdRfVar from_stack_1.global_60
  loc_C7649D: LdPrVar
  loc_C7649F: LateMemCall
  loc_C764A5: LitStr "        <td colspan=""2"" align=""left"" class=""Normal1"">"
  loc_C764A8: FLdRfVar var_A8
  loc_C764AB: FLdPr var_D8
  loc_C764AE: VCallAd Control_ID_
  loc_C764B1: FStAdFunc var_DC
  loc_C764B4: FLdPr var_DC
  loc_C764B7:  = Me.Caption
  loc_C764BC: ILdRf var_A8
  loc_C764BF: ConcatStr
  loc_C764C0: FStStrNoPop var_AC
  loc_C764C3: LitStr " - "
  loc_C764C6: ConcatStr
  loc_C764C7: FStStrNoPop var_C8
  loc_C764CA: FLdRfVar var_C4
  loc_C764CD: FLdPr var_D8
  loc_C764D0: VCallAd Control_ID_
  loc_C764D3: FStAdFunc var_E0
  loc_C764D6: FLdPr var_E0
  loc_C764D9:  = Me.Caption
  loc_C764DE: ILdRf var_C4
  loc_C764E1: ConcatStr
  loc_C764E2: FStStrNoPop var_CC
  loc_C764E5: LitStr "</td>"
  loc_C764E8: ConcatStr
  loc_C764E9: CVarStr var_BC
  loc_C764EC: PopAdLdVar
  loc_C764ED: FLdPr Me
  loc_C764F0: MemLdRfVar from_stack_1.global_60
  loc_C764F3: LdPrVar
  loc_C764F5: LateMemCall
  loc_C764FB: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_C76508: FFreeAd var_DC = ""
  loc_C7650F: FFree1Var var_BC = ""
  loc_C76512: LitVarStr var_94, "      </tr>"
  loc_C76517: PopAdLdVar
  loc_C76518: FLdPr Me
  loc_C7651B: MemLdRfVar from_stack_1.global_60
  loc_C7651E: LdPrVar
  loc_C76520: LateMemCall
  loc_C76526: LitVarStr var_94, "      <tr>"
  loc_C7652B: PopAdLdVar
  loc_C7652C: FLdPr Me
  loc_C7652F: MemLdRfVar from_stack_1.global_60
  loc_C76532: LdPrVar
  loc_C76534: LateMemCall
  loc_C7653A: LitVarStr var_94, "        <td align=""right"" class=""Encabezado1"">Cuenta:</td>"
  loc_C7653F: PopAdLdVar
  loc_C76540: FLdPr Me
  loc_C76543: MemLdRfVar from_stack_1.global_60
  loc_C76546: LdPrVar
  loc_C76548: LateMemCall
  loc_C7654E: LitStr "        <td colspan=""2"" align=""left"" class=""Normal1"">"
  loc_C76551: FLdRfVar var_A8
  loc_C76554: FLdPr var_D8
  loc_C76557: VCallAd Control_ID_
  loc_C7655A: FStAdFunc var_DC
  loc_C7655D: FLdPr var_DC
  loc_C76560:  = Me.Caption
  loc_C76565: ILdRf var_A8
  loc_C76568: ConcatStr
  loc_C76569: FStStrNoPop var_AC
  loc_C7656C: LitStr "</td>"
  loc_C7656F: ConcatStr
  loc_C76570: CVarStr var_BC
  loc_C76573: PopAdLdVar
  loc_C76574: FLdPr Me
  loc_C76577: MemLdRfVar from_stack_1.global_60
  loc_C7657A: LdPrVar
  loc_C7657C: LateMemCall
  loc_C76582: FFreeStr var_A8 = ""
  loc_C76589: FFree1Ad var_DC
  loc_C7658C: FFree1Var var_BC = ""
  loc_C7658F: LitVarStr var_94, "      </tr>"
  loc_C76594: PopAdLdVar
  loc_C76595: FLdPr Me
  loc_C76598: MemLdRfVar from_stack_1.global_60
  loc_C7659B: LdPrVar
  loc_C7659D: LateMemCall
  loc_C765A3: LitVarStr var_94, "      <tr>"
  loc_C765A8: PopAdLdVar
  loc_C765A9: FLdPr Me
  loc_C765AC: MemLdRfVar from_stack_1.global_60
  loc_C765AF: LdPrVar
  loc_C765B1: LateMemCall
  loc_C765B7: LitVarStr var_94, "        <td align=""right"" class=""Encabezado1"">Nro de Juicio:</td>"
  loc_C765BC: PopAdLdVar
  loc_C765BD: FLdPr Me
  loc_C765C0: MemLdRfVar from_stack_1.global_60
  loc_C765C3: LdPrVar
  loc_C765C5: LateMemCall
  loc_C765CB: LitStr "        <td colspan=""2"" align=""left"" class=""Normal1"">"
  loc_C765CE: FLdRfVar var_A8
  loc_C765D1: FLdPr var_D8
  loc_C765D4: VCallAd Control_ID_
  loc_C765D7: FStAdFunc var_DC
  loc_C765DA: FLdPr var_DC
  loc_C765DD:  = Me.Caption
  loc_C765E2: ILdRf var_A8
  loc_C765E5: ConcatStr
  loc_C765E6: FStStrNoPop var_AC
  loc_C765E9: LitStr "</td>"
  loc_C765EC: ConcatStr
  loc_C765ED: CVarStr var_BC
  loc_C765F0: PopAdLdVar
  loc_C765F1: FLdPr Me
  loc_C765F4: MemLdRfVar from_stack_1.global_60
  loc_C765F7: LdPrVar
  loc_C765F9: LateMemCall
  loc_C765FF: FFreeStr var_A8 = ""
  loc_C76606: FFree1Ad var_DC
  loc_C76609: FFree1Var var_BC = ""
  loc_C7660C: LitVarStr var_94, "      </tr>"
  loc_C76611: PopAdLdVar
  loc_C76612: FLdPr Me
  loc_C76615: MemLdRfVar from_stack_1.global_60
  loc_C76618: LdPrVar
  loc_C7661A: LateMemCall
  loc_C76620: LitVarStr var_94, "      <tr>"
  loc_C76625: PopAdLdVar
  loc_C76626: FLdPr Me
  loc_C76629: MemLdRfVar from_stack_1.global_60
  loc_C7662C: LdPrVar
  loc_C7662E: LateMemCall
  loc_C76634: LitVarStr var_94, "        <td align=""right"" class=""Encabezado1"">Instancia:</td>"
  loc_C76639: PopAdLdVar
  loc_C7663A: FLdPr Me
  loc_C7663D: MemLdRfVar from_stack_1.global_60
  loc_C76640: LdPrVar
  loc_C76642: LateMemCall
  loc_C76648: LitStr "        <td colspan=""2"" align=""left"" class=""Normal1"">"
  loc_C7664B: FLdRfVar var_A8
  loc_C7664E: FLdPr var_D8
  loc_C76651: VCallAd Control_ID_
  loc_C76654: FStAdFunc var_DC
  loc_C76657: FLdPr var_DC
  loc_C7665A:  = Me.Caption
  loc_C7665F: ILdRf var_A8
  loc_C76662: ConcatStr
  loc_C76663: FStStrNoPop var_AC
  loc_C76666: LitStr "</td>"
  loc_C76669: ConcatStr
  loc_C7666A: CVarStr var_BC
  loc_C7666D: PopAdLdVar
  loc_C7666E: FLdPr Me
  loc_C76671: MemLdRfVar from_stack_1.global_60
  loc_C76674: LdPrVar
  loc_C76676: LateMemCall
  loc_C7667C: FFreeStr var_A8 = ""
  loc_C76683: FFree1Ad var_DC
  loc_C76686: FFree1Var var_BC = ""
  loc_C76689: LitVarStr var_94, "      </tr>"
  loc_C7668E: PopAdLdVar
  loc_C7668F: FLdPr Me
  loc_C76692: MemLdRfVar from_stack_1.global_60
  loc_C76695: LdPrVar
  loc_C76697: LateMemCall
  loc_C7669D: LitVarStr var_94, "      <tr>"
  loc_C766A2: PopAdLdVar
  loc_C766A3: FLdPr Me
  loc_C766A6: MemLdRfVar from_stack_1.global_60
  loc_C766A9: LdPrVar
  loc_C766AB: LateMemCall
  loc_C766B1: LitVarStr var_94, "        <td align=""right"" class=""Encabezado1"">Estado:</td>"
  loc_C766B6: PopAdLdVar
  loc_C766B7: FLdPr Me
  loc_C766BA: MemLdRfVar from_stack_1.global_60
  loc_C766BD: LdPrVar
  loc_C766BF: LateMemCall
  loc_C766C5: LitStr "        <td colspan=""2"" align=""left"" class=""Normal1"">"
  loc_C766C8: FLdRfVar var_A8
  loc_C766CB: FLdPr var_D8
  loc_C766CE: VCallAd Control_ID_
  loc_C766D1: FStAdFunc var_DC
  loc_C766D4: FLdPr var_DC
  loc_C766D7:  = Me.Caption
  loc_C766DC: ILdRf var_A8
  loc_C766DF: ConcatStr
  loc_C766E0: FStStrNoPop var_AC
  loc_C766E3: LitStr "</td>"
  loc_C766E6: ConcatStr
  loc_C766E7: CVarStr var_BC
  loc_C766EA: PopAdLdVar
  loc_C766EB: FLdPr Me
  loc_C766EE: MemLdRfVar from_stack_1.global_60
  loc_C766F1: LdPrVar
  loc_C766F3: LateMemCall
  loc_C766F9: FFreeStr var_A8 = ""
  loc_C76700: FFree1Ad var_DC
  loc_C76703: FFree1Var var_BC = ""
  loc_C76706: LitVarStr var_94, "      </tr>"
  loc_C7670B: PopAdLdVar
  loc_C7670C: FLdPr Me
  loc_C7670F: MemLdRfVar from_stack_1.global_60
  loc_C76712: LdPrVar
  loc_C76714: LateMemCall
  loc_C7671A: LitVarStr var_94, "      <tr align=""right"">"
  loc_C7671F: PopAdLdVar
  loc_C76720: FLdPr Me
  loc_C76723: MemLdRfVar from_stack_1.global_60
  loc_C76726: LdPrVar
  loc_C76728: LateMemCall
  loc_C7672E: LitVarStr var_94, "        <td class=""Encabezado1"">Capital:</td>"
  loc_C76733: PopAdLdVar
  loc_C76734: FLdPr Me
  loc_C76737: MemLdRfVar from_stack_1.global_60
  loc_C7673A: LdPrVar
  loc_C7673C: LateMemCall
  loc_C76742: LitStr "        <td width=""40"" class=""Normal1"">"
  loc_C76745: FLdRfVar var_A8
  loc_C76748: FLdPr var_D8
  loc_C7674B: VCallAd Control_ID_
  loc_C7674E: FStAdFunc var_DC
  loc_C76751: FLdPr var_DC
  loc_C76754:  = Me.Caption
  loc_C76759: ILdRf var_A8
  loc_C7675C: ConcatStr
  loc_C7675D: FStStrNoPop var_AC
  loc_C76760: LitStr "</td>"
  loc_C76763: ConcatStr
  loc_C76764: CVarStr var_BC
  loc_C76767: PopAdLdVar
  loc_C76768: FLdPr Me
  loc_C7676B: MemLdRfVar from_stack_1.global_60
  loc_C7676E: LdPrVar
  loc_C76770: LateMemCall
  loc_C76776: FFreeStr var_A8 = ""
  loc_C7677D: FFree1Ad var_DC
  loc_C76780: FFree1Var var_BC = ""
  loc_C76783: LitVarStr var_94, "        <td>&nbsp</td>"
  loc_C76788: PopAdLdVar
  loc_C76789: FLdPr Me
  loc_C7678C: MemLdRfVar from_stack_1.global_60
  loc_C7678F: LdPrVar
  loc_C76791: LateMemCall
  loc_C76797: LitVarStr var_94, "      </tr>"
  loc_C7679C: PopAdLdVar
  loc_C7679D: FLdPr Me
  loc_C767A0: MemLdRfVar from_stack_1.global_60
  loc_C767A3: LdPrVar
  loc_C767A5: LateMemCall
  loc_C767AB: LitVarStr var_94, "      <tr align=""right"">"
  loc_C767B0: PopAdLdVar
  loc_C767B1: FLdPr Me
  loc_C767B4: MemLdRfVar from_stack_1.global_60
  loc_C767B7: LdPrVar
  loc_C767B9: LateMemCall
  loc_C767BF: LitVarStr var_94, "        <td class=""Encabezado1"">Recargo:</td>"
  loc_C767C4: PopAdLdVar
  loc_C767C5: FLdPr Me
  loc_C767C8: MemLdRfVar from_stack_1.global_60
  loc_C767CB: LdPrVar
  loc_C767CD: LateMemCall
  loc_C767D3: LitStr "        <td width=""40"" class=""Normal1"">"
  loc_C767D6: FLdRfVar var_A8
  loc_C767D9: FLdPr var_D8
  loc_C767DC: VCallAd Control_ID_
  loc_C767DF: FStAdFunc var_DC
  loc_C767E2: FLdPr var_DC
  loc_C767E5:  = Me.Caption
  loc_C767EA: ILdRf var_A8
  loc_C767ED: ConcatStr
  loc_C767EE: FStStrNoPop var_AC
  loc_C767F1: LitStr "</td>"
  loc_C767F4: ConcatStr
  loc_C767F5: CVarStr var_BC
  loc_C767F8: PopAdLdVar
  loc_C767F9: FLdPr Me
  loc_C767FC: MemLdRfVar from_stack_1.global_60
  loc_C767FF: LdPrVar
  loc_C76801: LateMemCall
  loc_C76807: FFreeStr var_A8 = ""
  loc_C7680E: FFree1Ad var_DC
  loc_C76811: FFree1Var var_BC = ""
  loc_C76814: LitVarStr var_94, "        <td>&nbsp</td>"
  loc_C76819: PopAdLdVar
  loc_C7681A: FLdPr Me
  loc_C7681D: MemLdRfVar from_stack_1.global_60
  loc_C76820: LdPrVar
  loc_C76822: LateMemCall
  loc_C76828: LitVarStr var_94, "      </tr>"
  loc_C7682D: PopAdLdVar
  loc_C7682E: FLdPr Me
  loc_C76831: MemLdRfVar from_stack_1.global_60
  loc_C76834: LdPrVar
  loc_C76836: LateMemCall
  loc_C7683C: LitVarStr var_94, "      <tr align=""right"">"
  loc_C76841: PopAdLdVar
  loc_C76842: FLdPr Me
  loc_C76845: MemLdRfVar from_stack_1.global_60
  loc_C76848: LdPrVar
  loc_C7684A: LateMemCall
  loc_C76850: LitVarStr var_94, "        <td class=""Encabezado1"">Recargo Actualizado:</td>"
  loc_C76855: PopAdLdVar
  loc_C76856: FLdPr Me
  loc_C76859: MemLdRfVar from_stack_1.global_60
  loc_C7685C: LdPrVar
  loc_C7685E: LateMemCall
  loc_C76864: LitStr "        <td width=""40"" class=""Normal1"">"
  loc_C76867: FLdRfVar var_A8
  loc_C7686A: FLdPr var_D8
  loc_C7686D: VCallAd Control_ID_
  loc_C76870: FStAdFunc var_DC
  loc_C76873: FLdPr var_DC
  loc_C76876:  = Me.Caption
  loc_C7687B: ILdRf var_A8
  loc_C7687E: ConcatStr
  loc_C7687F: FStStrNoPop var_AC
  loc_C76882: LitStr "</td>"
  loc_C76885: ConcatStr
  loc_C76886: CVarStr var_BC
  loc_C76889: PopAdLdVar
  loc_C7688A: FLdPr Me
  loc_C7688D: MemLdRfVar from_stack_1.global_60
  loc_C76890: LdPrVar
  loc_C76892: LateMemCall
  loc_C76898: FFreeStr var_A8 = ""
  loc_C7689F: FFree1Ad var_DC
  loc_C768A2: FFree1Var var_BC = ""
  loc_C768A5: LitVarStr var_94, "        <td>&nbsp</td>"
  loc_C768AA: PopAdLdVar
  loc_C768AB: FLdPr Me
  loc_C768AE: MemLdRfVar from_stack_1.global_60
  loc_C768B1: LdPrVar
  loc_C768B3: LateMemCall
  loc_C768B9: LitVarStr var_94, "      </tr>"
  loc_C768BE: PopAdLdVar
  loc_C768BF: FLdPr Me
  loc_C768C2: MemLdRfVar from_stack_1.global_60
  loc_C768C5: LdPrVar
  loc_C768C7: LateMemCall
  loc_C768CD: LitVarStr var_94, "      <tr align=""right"">"
  loc_C768D2: PopAdLdVar
  loc_C768D3: FLdPr Me
  loc_C768D6: MemLdRfVar from_stack_1.global_60
  loc_C768D9: LdPrVar
  loc_C768DB: LateMemCall
  loc_C768E1: LitVarStr var_94, "        <td class=""Encabezado1"">Total de la Deuda del Apremio :</td>"
  loc_C768E6: PopAdLdVar
  loc_C768E7: FLdPr Me
  loc_C768EA: MemLdRfVar from_stack_1.global_60
  loc_C768ED: LdPrVar
  loc_C768EF: LateMemCall
  loc_C768F5: FLdRfVar var_AC
  loc_C768F8: FLdPr var_D8
  loc_C768FB: VCallAd Control_ID_
  loc_C768FE: FStAdFunc var_E0
  loc_C76901: FLdPr var_E0
  loc_C76904:  = Me.Caption
  loc_C76909: LitStr "        <td width=""40"" class=""Normal1"">"
  loc_C7690C: FLdRfVar var_A8
  loc_C7690F: FLdPr var_D8
  loc_C76912: VCallAd Control_ID_
  loc_C76915: FStAdFunc var_DC
  loc_C76918: FLdPr var_DC
  loc_C7691B:  = Me.Caption
  loc_C76920: ILdRf var_A8
  loc_C76923: CR8Str
  loc_C76925: ILdRf var_AC
  loc_C76928: CR8Str
  loc_C7692A: AddR8
  loc_C7692B: CStrR8
  loc_C7692D: FStStrNoPop var_C4
  loc_C76930: ConcatStr
  loc_C76931: FStStrNoPop var_C8
  loc_C76934: LitStr "</td>"
  loc_C76937: ConcatStr
  loc_C76938: CVarStr var_BC
  loc_C7693B: PopAdLdVar
  loc_C7693C: FLdPr Me
  loc_C7693F: MemLdRfVar from_stack_1.global_60
  loc_C76942: LdPrVar
  loc_C76944: LateMemCall
  loc_C7694A: FFreeStr var_A8 = "": var_AC = "": var_C4 = ""
  loc_C76955: FFreeAd var_DC = ""
  loc_C7695C: FFree1Var var_BC = ""
  loc_C7695F: LitVarStr var_94, "        <td>&nbsp</td>"
  loc_C76964: PopAdLdVar
  loc_C76965: FLdPr Me
  loc_C76968: MemLdRfVar from_stack_1.global_60
  loc_C7696B: LdPrVar
  loc_C7696D: LateMemCall
  loc_C76973: LitVarStr var_94, "      </tr>"
  loc_C76978: PopAdLdVar
  loc_C76979: FLdPr Me
  loc_C7697C: MemLdRfVar from_stack_1.global_60
  loc_C7697F: LdPrVar
  loc_C76981: LateMemCall
  loc_C76987: LitVarStr var_94, "    </table></td>"
  loc_C7698C: PopAdLdVar
  loc_C7698D: FLdPr Me
  loc_C76990: MemLdRfVar from_stack_1.global_60
  loc_C76993: LdPrVar
  loc_C76995: LateMemCall
  loc_C7699B: LitVarStr var_94, "     <td style=""border-left: 1px solid gray;"">&nbsp;</td>"
  loc_C769A0: PopAdLdVar
  loc_C769A1: FLdPr Me
  loc_C769A4: MemLdRfVar from_stack_1.global_60
  loc_C769A7: LdPrVar
  loc_C769A9: LateMemCall
  loc_C769AF: LitVarStr var_94, "     <td><table border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_C769B4: PopAdLdVar
  loc_C769B5: FLdPr Me
  loc_C769B8: MemLdRfVar from_stack_1.global_60
  loc_C769BB: LdPrVar
  loc_C769BD: LateMemCall
  loc_C769C3: LitVarStr var_94, "        <tr align=""right"">"
  loc_C769C8: PopAdLdVar
  loc_C769C9: FLdPr Me
  loc_C769CC: MemLdRfVar from_stack_1.global_60
  loc_C769CF: LdPrVar
  loc_C769D1: LateMemCall
  loc_C769D7: LitVarStr var_94, "          <td class=""Encabezado1"">Comisión Administrativa:</td>"
  loc_C769DC: PopAdLdVar
  loc_C769DD: FLdPr Me
  loc_C769E0: MemLdRfVar from_stack_1.global_60
  loc_C769E3: LdPrVar
  loc_C769E5: LateMemCall
  loc_C769EB: LitStr "          <td class=""Normal1"">"
  loc_C769EE: FLdRfVar var_A8
  loc_C769F1: FLdPr var_D8
  loc_C769F4: VCallAd Control_ID_
  loc_C769F7: FStAdFunc var_DC
  loc_C769FA: FLdPr var_DC
  loc_C769FD:  = Me.Text
  loc_C76A02: ILdRf var_A8
  loc_C76A05: ConcatStr
  loc_C76A06: FStStrNoPop var_AC
  loc_C76A09: LitStr "</td>"
  loc_C76A0C: ConcatStr
  loc_C76A0D: CVarStr var_BC
  loc_C76A10: PopAdLdVar
  loc_C76A11: FLdPr Me
  loc_C76A14: MemLdRfVar from_stack_1.global_60
  loc_C76A17: LdPrVar
  loc_C76A19: LateMemCall
  loc_C76A1F: FFreeStr var_A8 = ""
  loc_C76A26: FFree1Ad var_DC
  loc_C76A29: FFree1Var var_BC = ""
  loc_C76A2C: LitVarStr var_94, "        </tr>"
  loc_C76A31: PopAdLdVar
  loc_C76A32: FLdPr Me
  loc_C76A35: MemLdRfVar from_stack_1.global_60
  loc_C76A38: LdPrVar
  loc_C76A3A: LateMemCall
  loc_C76A40: LitVarStr var_94, "        <tr align=""right"">"
  loc_C76A45: PopAdLdVar
  loc_C76A46: FLdPr Me
  loc_C76A49: MemLdRfVar from_stack_1.global_60
  loc_C76A4C: LdPrVar
  loc_C76A4E: LateMemCall
  loc_C76A54: LitVarStr var_94, "          <td class=""Encabezado1"">Tasa de Justicia:</td>"
  loc_C76A59: PopAdLdVar
  loc_C76A5A: FLdPr Me
  loc_C76A5D: MemLdRfVar from_stack_1.global_60
  loc_C76A60: LdPrVar
  loc_C76A62: LateMemCall
  loc_C76A68: LitStr "          <td class=""Normal1"">"
  loc_C76A6B: FLdRfVar var_A8
  loc_C76A6E: FLdPr var_D8
  loc_C76A71: VCallAd Control_ID_
  loc_C76A74: FStAdFunc var_DC
  loc_C76A77: FLdPr var_DC
  loc_C76A7A:  = Me.Text
  loc_C76A7F: ILdRf var_A8
  loc_C76A82: ConcatStr
  loc_C76A83: FStStrNoPop var_AC
  loc_C76A86: LitStr "</td>"
  loc_C76A89: ConcatStr
  loc_C76A8A: CVarStr var_BC
  loc_C76A8D: PopAdLdVar
  loc_C76A8E: FLdPr Me
  loc_C76A91: MemLdRfVar from_stack_1.global_60
  loc_C76A94: LdPrVar
  loc_C76A96: LateMemCall
  loc_C76A9C: FFreeStr var_A8 = ""
  loc_C76AA3: FFree1Ad var_DC
  loc_C76AA6: FFree1Var var_BC = ""
  loc_C76AA9: LitVarStr var_94, "        </tr>"
  loc_C76AAE: PopAdLdVar
  loc_C76AAF: FLdPr Me
  loc_C76AB2: MemLdRfVar from_stack_1.global_60
  loc_C76AB5: LdPrVar
  loc_C76AB7: LateMemCall
  loc_C76ABD: LitVarStr var_94, "        <tr align=""right"">"
  loc_C76AC2: PopAdLdVar
  loc_C76AC3: FLdPr Me
  loc_C76AC6: MemLdRfVar from_stack_1.global_60
  loc_C76AC9: LdPrVar
  loc_C76ACB: LateMemCall
  loc_C76AD1: LitVarStr var_94, "          <td class=""Encabezado1"">Aporte de Ley:</td>"
  loc_C76AD6: PopAdLdVar
  loc_C76AD7: FLdPr Me
  loc_C76ADA: MemLdRfVar from_stack_1.global_60
  loc_C76ADD: LdPrVar
  loc_C76ADF: LateMemCall
  loc_C76AE5: LitStr "          <td class=""Normal1"">"
  loc_C76AE8: FLdRfVar var_A8
  loc_C76AEB: FLdPr var_D8
  loc_C76AEE: VCallAd Control_ID_
  loc_C76AF1: FStAdFunc var_DC
  loc_C76AF4: FLdPr var_DC
  loc_C76AF7:  = Me.Text
  loc_C76AFC: ILdRf var_A8
  loc_C76AFF: ConcatStr
  loc_C76B00: FStStrNoPop var_AC
  loc_C76B03: LitStr "</td>"
  loc_C76B06: ConcatStr
  loc_C76B07: CVarStr var_BC
  loc_C76B0A: PopAdLdVar
  loc_C76B0B: FLdPr Me
  loc_C76B0E: MemLdRfVar from_stack_1.global_60
  loc_C76B11: LdPrVar
  loc_C76B13: LateMemCall
  loc_C76B19: FFreeStr var_A8 = ""
  loc_C76B20: FFree1Ad var_DC
  loc_C76B23: FFree1Var var_BC = ""
  loc_C76B26: LitVarStr var_94, "        </tr>"
  loc_C76B2B: PopAdLdVar
  loc_C76B2C: FLdPr Me
  loc_C76B2F: MemLdRfVar from_stack_1.global_60
  loc_C76B32: LdPrVar
  loc_C76B34: LateMemCall
  loc_C76B3A: LitVarStr var_94, "        <tr align=""right"">"
  loc_C76B3F: PopAdLdVar
  loc_C76B40: FLdPr Me
  loc_C76B43: MemLdRfVar from_stack_1.global_60
  loc_C76B46: LdPrVar
  loc_C76B48: LateMemCall
  loc_C76B4E: LitVarStr var_94, "          <td class=""Encabezado1"">Derecho Fijo:</td>"
  loc_C76B53: PopAdLdVar
  loc_C76B54: FLdPr Me
  loc_C76B57: MemLdRfVar from_stack_1.global_60
  loc_C76B5A: LdPrVar
  loc_C76B5C: LateMemCall
  loc_C76B62: LitStr "          <td class=""Normal1"">"
  loc_C76B65: FLdRfVar var_A8
  loc_C76B68: FLdPr var_D8
  loc_C76B6B: VCallAd Control_ID_
  loc_C76B6E: FStAdFunc var_DC
  loc_C76B71: FLdPr var_DC
  loc_C76B74:  = Me.Text
  loc_C76B79: ILdRf var_A8
  loc_C76B7C: ConcatStr
  loc_C76B7D: FStStrNoPop var_AC
  loc_C76B80: LitStr "</td>"
  loc_C76B83: ConcatStr
  loc_C76B84: CVarStr var_BC
  loc_C76B87: PopAdLdVar
  loc_C76B88: FLdPr Me
  loc_C76B8B: MemLdRfVar from_stack_1.global_60
  loc_C76B8E: LdPrVar
  loc_C76B90: LateMemCall
  loc_C76B96: FFreeStr var_A8 = ""
  loc_C76B9D: FFree1Ad var_DC
  loc_C76BA0: FFree1Var var_BC = ""
  loc_C76BA3: LitVarStr var_94, "        </tr>"
  loc_C76BA8: PopAdLdVar
  loc_C76BA9: FLdPr Me
  loc_C76BAC: MemLdRfVar from_stack_1.global_60
  loc_C76BAF: LdPrVar
  loc_C76BB1: LateMemCall
  loc_C76BB7: LitVarStr var_94, "        <tr align=""right"">"
  loc_C76BBC: PopAdLdVar
  loc_C76BBD: FLdPr Me
  loc_C76BC0: MemLdRfVar from_stack_1.global_60
  loc_C76BC3: LdPrVar
  loc_C76BC5: LateMemCall
  loc_C76BCB: LitVarStr var_94, "          <td class=""Encabezado1"">Honorario del Recaudador:</td>"
  loc_C76BD0: PopAdLdVar
  loc_C76BD1: FLdPr Me
  loc_C76BD4: MemLdRfVar from_stack_1.global_60
  loc_C76BD7: LdPrVar
  loc_C76BD9: LateMemCall
  loc_C76BDF: LitStr "          <td class=""Normal1"">"
  loc_C76BE2: FLdRfVar var_A8
  loc_C76BE5: FLdPr var_D8
  loc_C76BE8: VCallAd Control_ID_wbbReporte
  loc_C76BEB: FStAdFunc var_DC
  loc_C76BEE: FLdPr var_DC
  loc_C76BF1:  = Me.Text
  loc_C76BF6: ILdRf var_A8
  loc_C76BF9: ConcatStr
  loc_C76BFA: FStStrNoPop var_AC
  loc_C76BFD: LitStr "</td>"
  loc_C76C00: ConcatStr
  loc_C76C01: CVarStr var_BC
  loc_C76C04: PopAdLdVar
  loc_C76C05: FLdPr Me
  loc_C76C08: MemLdRfVar from_stack_1.global_60
  loc_C76C0B: LdPrVar
  loc_C76C0D: LateMemCall
  loc_C76C13: FFreeStr var_A8 = ""
  loc_C76C1A: FFree1Ad var_DC
  loc_C76C1D: FFree1Var var_BC = ""
  loc_C76C20: LitVarStr var_94, "        </tr>"
  loc_C76C25: PopAdLdVar
  loc_C76C26: FLdPr Me
  loc_C76C29: MemLdRfVar from_stack_1.global_60
  loc_C76C2C: LdPrVar
  loc_C76C2E: LateMemCall
  loc_C76C34: LitVarStr var_94, "        <tr align=""right"">"
  loc_C76C39: PopAdLdVar
  loc_C76C3A: FLdPr Me
  loc_C76C3D: MemLdRfVar from_stack_1.global_60
  loc_C76C40: LdPrVar
  loc_C76C42: LateMemCall
  loc_C76C48: LitVarStr var_94, "          <td class=""Encabezado1"">Honorario del Oficial de Justicia:</td>"
  loc_C76C4D: PopAdLdVar
  loc_C76C4E: FLdPr Me
  loc_C76C51: MemLdRfVar from_stack_1.global_60
  loc_C76C54: LdPrVar
  loc_C76C56: LateMemCall
  loc_C76C5C: LitStr "          <td class=""Normal1"">"
  loc_C76C5F: FLdRfVar var_A8
  loc_C76C62: FLdPr var_D8
  loc_C76C65: VCallAd Control_ID_statusBar
  loc_C76C68: FStAdFunc var_DC
  loc_C76C6B: FLdPr var_DC
  loc_C76C6E:  = Me.Text
  loc_C76C73: ILdRf var_A8
  loc_C76C76: ConcatStr
  loc_C76C77: FStStrNoPop var_AC
  loc_C76C7A: LitStr "</td>"
  loc_C76C7D: ConcatStr
  loc_C76C7E: CVarStr var_BC
  loc_C76C81: PopAdLdVar
  loc_C76C82: FLdPr Me
  loc_C76C85: MemLdRfVar from_stack_1.global_60
  loc_C76C88: LdPrVar
  loc_C76C8A: LateMemCall
  loc_C76C90: FFreeStr var_A8 = ""
  loc_C76C97: FFree1Ad var_DC
  loc_C76C9A: FFree1Var var_BC = ""
  loc_C76C9D: LitVarStr var_94, "        </tr>"
  loc_C76CA2: PopAdLdVar
  loc_C76CA3: FLdPr Me
  loc_C76CA6: MemLdRfVar from_stack_1.global_60
  loc_C76CA9: LdPrVar
  loc_C76CAB: LateMemCall
  loc_C76CB1: LitVarStr var_94, "        <tr align=""right"">"
  loc_C76CB6: PopAdLdVar
  loc_C76CB7: FLdPr Me
  loc_C76CBA: MemLdRfVar from_stack_1.global_60
  loc_C76CBD: LdPrVar
  loc_C76CBF: LateMemCall
  loc_C76CC5: LitVarStr var_94, "          <td class=""Encabezado1"">Movilidad del Recaudador:</td>"
  loc_C76CCA: PopAdLdVar
  loc_C76CCB: FLdPr Me
  loc_C76CCE: MemLdRfVar from_stack_1.global_60
  loc_C76CD1: LdPrVar
  loc_C76CD3: LateMemCall
  loc_C76CD9: LitStr "          <td class=""Normal1"">"
  loc_C76CDC: FLdRfVar var_A8
  loc_C76CDF: FLdPr var_D8
  loc_C76CE2: VCallAd Control_ID_cmdNueva
  loc_C76CE5: FStAdFunc var_DC
  loc_C76CE8: FLdPr var_DC
  loc_C76CEB:  = Me.Text
  loc_C76CF0: ILdRf var_A8
  loc_C76CF3: ConcatStr
  loc_C76CF4: FStStrNoPop var_AC
  loc_C76CF7: LitStr "</td>"
  loc_C76CFA: ConcatStr
  loc_C76CFB: CVarStr var_BC
  loc_C76CFE: PopAdLdVar
  loc_C76CFF: FLdPr Me
  loc_C76D02: MemLdRfVar from_stack_1.global_60
  loc_C76D05: LdPrVar
  loc_C76D07: LateMemCall
  loc_C76D0D: FFreeStr var_A8 = ""
  loc_C76D14: FFree1Ad var_DC
  loc_C76D17: FFree1Var var_BC = ""
  loc_C76D1A: LitVarStr var_94, "        </tr>"
  loc_C76D1F: PopAdLdVar
  loc_C76D20: FLdPr Me
  loc_C76D23: MemLdRfVar from_stack_1.global_60
  loc_C76D26: LdPrVar
  loc_C76D28: LateMemCall
  loc_C76D2E: LitVarStr var_94, "        <tr align=""right"">"
  loc_C76D33: PopAdLdVar
  loc_C76D34: FLdPr Me
  loc_C76D37: MemLdRfVar from_stack_1.global_60
  loc_C76D3A: LdPrVar
  loc_C76D3C: LateMemCall
  loc_C76D42: LitVarStr var_94, "          <td class=""Encabezado1"">Movilidad del Oficial de Justicia:</td>"
  loc_C76D47: PopAdLdVar
  loc_C76D48: FLdPr Me
  loc_C76D4B: MemLdRfVar from_stack_1.global_60
  loc_C76D4E: LdPrVar
  loc_C76D50: LateMemCall
  loc_C76D56: LitStr "          <td class=""Normal1"">"
  loc_C76D59: FLdRfVar var_A8
  loc_C76D5C: FLdPr var_D8
  loc_C76D5F: VCallAd Control_ID_Frame1
  loc_C76D62: FStAdFunc var_DC
  loc_C76D65: FLdPr var_DC
  loc_C76D68:  = Me.Text
  loc_C76D6D: ILdRf var_A8
  loc_C76D70: ConcatStr
  loc_C76D71: FStStrNoPop var_AC
  loc_C76D74: LitStr "</td>"
  loc_C76D77: ConcatStr
  loc_C76D78: CVarStr var_BC
  loc_C76D7B: PopAdLdVar
  loc_C76D7C: FLdPr Me
  loc_C76D7F: MemLdRfVar from_stack_1.global_60
  loc_C76D82: LdPrVar
  loc_C76D84: LateMemCall
  loc_C76D8A: FFreeStr var_A8 = ""
  loc_C76D91: FFree1Ad var_DC
  loc_C76D94: FFree1Var var_BC = ""
  loc_C76D97: LitVarStr var_94, "        </tr>"
  loc_C76D9C: PopAdLdVar
  loc_C76D9D: FLdPr Me
  loc_C76DA0: MemLdRfVar from_stack_1.global_60
  loc_C76DA3: LdPrVar
  loc_C76DA5: LateMemCall
  loc_C76DAB: LitVarStr var_94, "        <tr align=""right"">"
  loc_C76DB0: PopAdLdVar
  loc_C76DB1: FLdPr Me
  loc_C76DB4: MemLdRfVar from_stack_1.global_60
  loc_C76DB7: LdPrVar
  loc_C76DB9: LateMemCall
  loc_C76DBF: LitVarStr var_94, "          <td class=""Encabezado1"">Total a pagar:</td>"
  loc_C76DC4: PopAdLdVar
  loc_C76DC5: FLdPr Me
  loc_C76DC8: MemLdRfVar from_stack_1.global_60
  loc_C76DCB: LdPrVar
  loc_C76DCD: LateMemCall
  loc_C76DD3: LitStr "          <td class=""Normal1"">"
  loc_C76DD6: FLdRfVar var_A8
  loc_C76DD9: FLdPr var_D8
  loc_C76DDC: VCallAd Control_ID_
  loc_C76DDF: FStAdFunc var_DC
  loc_C76DE2: FLdPr var_DC
  loc_C76DE5:  = Me.Caption
  loc_C76DEA: ILdRf var_A8
  loc_C76DED: ConcatStr
  loc_C76DEE: FStStrNoPop var_AC
  loc_C76DF1: LitStr "</td>"
  loc_C76DF4: ConcatStr
  loc_C76DF5: CVarStr var_BC
  loc_C76DF8: PopAdLdVar
  loc_C76DF9: FLdPr Me
  loc_C76DFC: MemLdRfVar from_stack_1.global_60
  loc_C76DFF: LdPrVar
  loc_C76E01: LateMemCall
  loc_C76E07: FFreeStr var_A8 = ""
  loc_C76E0E: FFree1Ad var_DC
  loc_C76E11: FFree1Var var_BC = ""
  loc_C76E14: LitVarStr var_94, "        </tr>"
  loc_C76E19: PopAdLdVar
  loc_C76E1A: FLdPr Me
  loc_C76E1D: MemLdRfVar from_stack_1.global_60
  loc_C76E20: LdPrVar
  loc_C76E22: LateMemCall
  loc_C76E28: LitVarStr var_94, "      </table></td>"
  loc_C76E2D: PopAdLdVar
  loc_C76E2E: FLdPr Me
  loc_C76E31: MemLdRfVar from_stack_1.global_60
  loc_C76E34: LdPrVar
  loc_C76E36: LateMemCall
  loc_C76E3C: LitVarStr var_94, "  </tr>"
  loc_C76E41: PopAdLdVar
  loc_C76E42: FLdPr Me
  loc_C76E45: MemLdRfVar from_stack_1.global_60
  loc_C76E48: LdPrVar
  loc_C76E4A: LateMemCall
  loc_C76E50: LitNothing
  loc_C76E52: FStAd var_D8 
  loc_C76E56: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C76E5B: PopAdLdVar
  loc_C76E5C: FLdPr Me
  loc_C76E5F: MemLdRfVar from_stack_1.global_60
  loc_C76E62: LdPrVar
  loc_C76E64: LateMemCall
  loc_C76E6A: LitVarStr var_94, "    <td colspan=""3"" align=""left"" valign=""top""><hr></td>"
  loc_C76E6F: PopAdLdVar
  loc_C76E70: FLdPr Me
  loc_C76E73: MemLdRfVar from_stack_1.global_60
  loc_C76E76: LdPrVar
  loc_C76E78: LateMemCall
  loc_C76E7E: LitVarStr var_94, "  </tr>"
  loc_C76E83: PopAdLdVar
  loc_C76E84: FLdPr Me
  loc_C76E87: MemLdRfVar from_stack_1.global_60
  loc_C76E8A: LdPrVar
  loc_C76E8C: LateMemCall
  loc_C76E92: LitVarStr var_94, "</table>"
  loc_C76E97: PopAdLdVar
  loc_C76E98: FLdPr Me
  loc_C76E9B: MemLdRfVar from_stack_1.global_60
  loc_C76E9E: LdPrVar
  loc_C76EA0: LateMemCall
  loc_C76EA6: ExitProcHresult
End Function

Private Function Proc_289_13_9F2998() '9F2998
  'Data Table: 444C34
  loc_9F296C: LitVarStr var_94, "</body>"
  loc_9F2971: PopAdLdVar
  loc_9F2972: FLdPr Me
  loc_9F2975: MemLdRfVar from_stack_1.global_60
  loc_9F2978: LdPrVar
  loc_9F297A: LateMemCall
  loc_9F2980: LitVarStr var_94, "</html>"
  loc_9F2985: PopAdLdVar
  loc_9F2986: FLdPr Me
  loc_9F2989: MemLdRfVar from_stack_1.global_60
  loc_9F298C: LdPrVar
  loc_9F298E: LateMemCall
  loc_9F2994: ExitProcHresult
  loc_9F2995: ILdRf arg_17FF
End Function
