VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConsultadeFacilidaddePago
  Caption = "Consulta de Facilidad de Pago"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConsultadeFacilidaddePago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 7812
  ClientHeight = 2880
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2625
    Width = 7815
    Height = 255
    TabIndex = 10
    OleObjectBlob = "rptConsultadeFacilidaddePago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 1560
    Width = 855
    Height = 735
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptConsultadeFacilidaddePago.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConsultadeFacilidaddePago.frx":0B9C
    Left = 7200
    Top = 1320
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
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1320
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 1215
    TabIndex = 6
    Begin VB.TextBox CodiFapaTxt
      ForeColor = &HFF0000&
      Left = 1560
      Top = 480
      Width = 1695
      Height = 345
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5760
      Top = 360
      Width = 1575
      Height = 615
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
    Begin VB.Label Label1
      Caption = "Facilidad:"
      Left = 480
      Top = 480
      Width = 1005
      Height = 300
      TabIndex = 11
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
    Left = 6600
    Top = 1920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptConsultadeFacilidaddePago.frx":0C00
  End
End

Attribute VB_Name = "rptConsultadeFacilidaddePago"

Public bGenerado As Boolean

Private Type UDT_1_00560654
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub CodiFapaTxt_GotFocus() '9C4A90
  'Data Table: 4551A8
  loc_9C4A7C: FLdPr Me
  loc_9C4A7F: VCallAd Control_ID_CodiFapaTxt
  loc_9C4A82: CVarAd
  loc_9C4A86: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4A8B: FFree1Var var_94 = ""
  loc_9C4A8E: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_Validate(Cancel As Boolean) 'A6C240
  'Data Table: 4551A8
  loc_A6C1D8: FLdRfVar var_8C
  loc_A6C1DB: FLdPr Me
  loc_A6C1DE: VCallAd Control_ID_CodiFapaTxt
  loc_A6C1E1: FStAdFunc var_88
  loc_A6C1E4: FLdPr var_88
  loc_A6C1E7:  = Me.Text
  loc_A6C1EC: LitI2_Byte 0
  loc_A6C1EE: LitI2_Byte 0
  loc_A6C1F0: ILdRf var_8C
  loc_A6C1F3: LitStr "Facilidad"
  loc_A6C1F6: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A6C1FB: FStStrNoPop var_90
  loc_A6C1FE: FLdPr Me
  loc_A6C201: MemStStrCopy
  loc_A6C205: FFreeStr var_8C = ""
  loc_A6C20C: FFree1Ad var_88
  loc_A6C20F: FLdPr Me
  loc_A6C212: MemLdStr global_116
  loc_A6C215: LitStr vbNullString
  loc_A6C218: NeStr
  loc_A6C21A: BranchF loc_A6C23F
  loc_A6C21D: FLdPr Me
  loc_A6C220: MemLdStr global_116
  loc_A6C223: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6C228: FLdPr Me
  loc_A6C22B: VCallAd Control_ID_CodiFapaTxt
  loc_A6C22E: CVarAd
  loc_A6C232: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6C237: FFree1Var var_A0 = ""
  loc_A6C23A: LitI2_Byte &HFF
  loc_A6C23C: IStI2 Cancel
  loc_A6C23F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A3BC20
  'Data Table: 4551A8
  loc_A3BBD0: LitI2_Byte 0
  loc_A3BBD2: FLdPr Me
  loc_A3BBD5: MemStI2 bGenerado
  loc_A3BBD8: LitI2_Byte 0
  loc_A3BBDA: ILdRf Me
  loc_A3BBDD: CastAd
  loc_A3BBE0: FStAdFunc var_88
  loc_A3BBE3: FLdRfVar var_88
  loc_A3BBE6: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A3BBEB: FFree1Ad var_88
  loc_A3BBEE: LitStr vbNullString
  loc_A3BBF1: FLdPr Me
  loc_A3BBF4: VCallAd Control_ID_CodiFapaTxt
  loc_A3BBF7: FStAdFunc var_88
  loc_A3BBFA: FLdPr var_88
  loc_A3BBFD: Me.Text = from_stack_1
  loc_A3BC02: FFree1Ad var_88
  loc_A3BC05: Call HabilitarCriterio()
  loc_A3BC0A: ILdRf Me
  loc_A3BC0D: CastAd
  loc_A3BC10: FStAdFunc var_88
  loc_A3BC13: FLdRfVar var_88
  loc_A3BC16: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A3BC1B: FFree1Ad var_88
  loc_A3BC1E: ExitProcHresult
End Sub

Private Sub Form_Load() '9DE6BC
  'Data Table: 4551A8
  loc_9DE6A0: ILdRf Me
  loc_9DE6A3: CastAd
  loc_9DE6A6: FStAdFunc var_88
  loc_9DE6A9: FLdRfVar var_88
  loc_9DE6AC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DE6B1: FFree1Ad var_88
  loc_9DE6B4: Call cmdNueva_Click()
  loc_9DE6B9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D5D20
  'Data Table: 4551A8
  loc_9D5D08: FLdPr Me
  loc_9D5D0B: VCallAd Control_ID_wbbReporte
  loc_9D5D0E: FStAdFunc var_88
  loc_9D5D11: FLdRfVar var_88
  loc_9D5D14: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D5D19: FFree1Ad var_88
  loc_9D5D1C: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A41AD0
  'Data Table: 4551A8
  loc_A41A7C: LitI2_Byte 0
  loc_A41A7E: ILdRf Me
  loc_A41A81: CastAd
  loc_A41A84: FStAdFunc var_88
  loc_A41A87: FLdRfVar var_88
  loc_A41A8A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A41A8F: FFree1Ad var_88
  loc_A41A92: FLdRfVar var_8A
  loc_A41A95: FLdPr Me
  loc_A41A98: VCallAd Control_ID_cmdPredeterminada
  loc_A41A9B: FStAdFunc var_88
  loc_A41A9E: FLdPr var_88
  loc_A41AA1:  = Me.Enabled
  loc_A41AA6: FLdI2 var_8A
  loc_A41AA9: NotI4
  loc_A41AAA: FFree1Ad var_88
  loc_A41AAD: BranchF loc_A41AB8
  loc_A41AB0: ImpAdCallFPR4 DoEvents()
  loc_A41AB5: Branch loc_A41A92
  loc_A41AB8: ILdRf Me
  loc_A41ABB: FStAdNoPop
  loc_A41ABF: ImpAdLdRf MemVar_D9C5D8
  loc_A41AC2: NewIfNullPr Global
  loc_A41AC5: Global.Unload from_stack_1
  loc_A41ACA: FFree1Ad var_88
  loc_A41ACD: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9FEC60
  'Data Table: 4551A8
  loc_9FEC30: LitVarStr var_94, "Cerrando..."
  loc_9FEC35: PopAdLdVar
  loc_9FEC36: FLdPr Me
  loc_9FEC39: VCallAd Control_ID_statusBar
  loc_9FEC3C: FStAdFunc var_A8
  loc_9FEC3F: FLdPr var_A8
  loc_9FEC42: LateIdSt
  loc_9FEC47: FFree1Ad var_A8
  loc_9FEC4A: ILdRf Me
  loc_9FEC4D: FStAdNoPop
  loc_9FEC51: ImpAdLdRf MemVar_D9C5D8
  loc_9FEC54: NewIfNullPr Global
  loc_9FEC57: Global.Unload from_stack_1
  loc_9FEC5C: FFree1Ad var_A8
  loc_9FEC5F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D6064
  'Data Table: 4551A8
  loc_9D604C: ILdRf Me
  loc_9D604F: CastAd
  loc_9D6052: FStAdFunc var_88
  loc_9D6055: FLdRfVar var_88
  loc_9D6058: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D605D: FFree1Ad var_88
  loc_9D6060: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E19AC
  'Data Table: 4551A8
  loc_9E1990: LitI2_Byte 0
  loc_9E1992: PopTmpLdAd2 var_8A
  loc_9E1995: ILdRf Me
  loc_9E1998: CastAd
  loc_9E199B: FStAdFunc var_88
  loc_9E199E: FLdRfVar var_88
  loc_9E19A1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E19A6: FFree1Ad var_88
  loc_9E19A9: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A20A70
  'Data Table: 4551A8
  loc_A20A38: FLdPr Me
  loc_A20A3B: VCallAd Control_ID_statusBar
  loc_A20A3E: FStAdFunc var_88
  loc_A20A41: FLdPr var_88
  loc_A20A44: LateIdLdVar var_98 DispID_1 0
  loc_A20A4B: CStrVarTmp
  loc_A20A4C: CVarStr var_A8
  loc_A20A4F: PopAdLdVar
  loc_A20A50: FLdPr Me
  loc_A20A53: VCallAd Control_ID_statusBar
  loc_A20A56: FStAdFunc var_BC
  loc_A20A59: FLdPr var_BC
  loc_A20A5C: LateIdSt
  loc_A20A61: FFreeAd var_88 = ""
  loc_A20A68: FFreeVar var_98 = ""
  loc_A20A6F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '455B90
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '455B9F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A11FDC
  'Data Table: 4551A8
  loc_A11FA8: LitI4 0
  loc_A11FAD: LitI4 0
  loc_A11FB2: FLdRfVar var_88
  loc_A11FB5: Redim
  loc_A11FBF: FLdPr Me
  loc_A11FC2: VCallAd Control_ID_CodiFapaTxt
  loc_A11FC5: CVarAd
  loc_A11FC9: ParmAry1St
  loc_A11FCF: FLdRfVar var_88
  loc_A11FD2: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A11FD7: FLdRfVar var_88
  loc_A11FDA: Erase
  loc_A11FDB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B645B0
  'Data Table: 4551A8
  loc_B6419C: FLdPr Me
  loc_B6419F: MemLdI2 bGenerado
  loc_B641A2: BranchF loc_B641A6
  loc_B641A5: ExitProcHresult
  loc_B641A6: LitVarStr var_94, "Generando reporte..."
  loc_B641AB: PopAdLdVar
  loc_B641AC: FLdPr Me
  loc_B641AF: VCallAd Control_ID_statusBar
  loc_B641B2: FStAdFunc var_A8
  loc_B641B5: FLdPr var_A8
  loc_B641B8: LateIdSt
  loc_B641BD: FFree1Ad var_A8
  loc_B641C0: LitI4 &HB
  loc_B641C5: CI2I4
  loc_B641C6: FLdPr Me
  loc_B641C9: Me.MousePointer = from_stack_1
  loc_B641CE: FLdPr Me
  loc_B641D1: MemLdRfVar from_stack_1.global_76
  loc_B641D4: NewIfNullAd
  loc_B641D7: FStAd var_AC 
  loc_B641DB: LitStr "SELECT fc.CodiOfic, DetaOfic, fc.CuenCtct, fc.CuotDefa, fc.PeriCtct,"
  loc_B641DE: LitStr " fc.BimeCtct, fc.CodiConc, DetaConc, CapiFacc, facipago.CucuPers, infogov.persona.DetaPers, facipago.CufiFapa, facipago.FirmFapa  "
  loc_B641E1: ConcatStr
  loc_B641E2: FStStrNoPop var_B0
  loc_B641E5: LitStr " FROM facictacte fc"
  loc_B641E8: ConcatStr
  loc_B641E9: FStStrNoPop var_B4
  loc_B641EC: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = fc.CodiOfic"
  loc_B641EF: ConcatStr
  loc_B641F0: FStStrNoPop var_B8
  loc_B641F3: LitStr " AND ctacte.CuenCtct = fc.CuenCtct"
  loc_B641F6: ConcatStr
  loc_B641F7: FStStrNoPop var_BC
  loc_B641FA: LitStr " AND ctacte.PeriCtct = fc.PeriCtct"
  loc_B641FD: ConcatStr
  loc_B641FE: FStStrNoPop var_C0
  loc_B64201: LitStr " AND ctacte.BimeCtct = fc.BimeCtct"
  loc_B64204: ConcatStr
  loc_B64205: FStStrNoPop var_C4
  loc_B64208: LitStr " AND ctacte.NumeCtct = fc.NumeCtct"
  loc_B6420B: ConcatStr
  loc_B6420C: FStStrNoPop var_C8
  loc_B6420F: LitStr " AND ctacte.MoviCtct = fc.MoviCtct"
  loc_B64212: ConcatStr
  loc_B64213: FStStrNoPop var_CC
  loc_B64216: LitStr " INNER JOIN concepto ON concepto.PeriInfo = ctacte.PeriInfo"
  loc_B64219: ConcatStr
  loc_B6421A: FStStrNoPop var_D0
  loc_B6421D: LitStr " AND concepto.CodiConc = ctacte.CodiConc"
  loc_B64220: ConcatStr
  loc_B64221: FStStrNoPop var_D4
  loc_B64224: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = fc.CodiOfic"
  loc_B64227: ConcatStr
  loc_B64228: FStStrNoPop var_D8
  loc_B6422B: LitStr " INNER JOIN facipago ON facipago.CodiFapa = fc.CodiFapa"
  loc_B6422E: ConcatStr
  loc_B6422F: FStStrNoPop var_DC
  loc_B64232: LitStr " INNER JOIN infogov.persona ON  infogov.persona.CucuPers = facipago.CucuPers"
  loc_B64235: ConcatStr
  loc_B64236: FStStrNoPop var_E0
  loc_B64239: LitStr " WHERE fc.CodiFapa = "
  loc_B6423C: ConcatStr
  loc_B6423D: FStStrNoPop var_E8
  loc_B64240: FLdRfVar var_E4
  loc_B64243: FLdPr Me
  loc_B64246: VCallAd Control_ID_CodiFapaTxt
  loc_B64249: FStAdFunc var_A8
  loc_B6424C: FLdPr var_A8
  loc_B6424F:  = Me.Text
  loc_B64254: ILdRf var_E4
  loc_B64257: ConcatStr
  loc_B64258: FStStrNoPop var_EC
  loc_B6425B: LitStr " ORDER BY fc.CodiFapa, fc.CuotDefa, fc.CuenCtct, fc.PeriCtct, fc.BimeCtct, fc.NumeCtct"
  loc_B6425E: ConcatStr
  loc_B6425F: FStStrNoPop var_F0
  loc_B64262: FLdPr var_AC
  loc_B64265: Call clsfacictacte.RedefineRS(from_stack_1v)
  loc_B6426A: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E8 = "": var_E4 = "": var_EC = ""
  loc_B6428F: FFree1Ad var_A8
  loc_B64292: FLdRfVar var_F4
  loc_B64295: FLdPr var_AC
  loc_B64298: from_stack_1 = clsfacictacte.RecordCount
  loc_B6429D: ILdRf var_F4
  loc_B642A0: LitI4 0
  loc_B642A5: EqI4
  loc_B642A6: BranchF loc_B642B4
  loc_B642A9: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B642AC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B642B1: Branch loc_B64587
  loc_B642B4: LitI4 1
  loc_B642B9: FLdRfVar var_F4
  loc_B642BC: FLdPr var_AC
  loc_B642BF: from_stack_1 = clsfacictacte.RecordCount
  loc_B642C4: ILdRf var_F4
  loc_B642C7: FLdPr Me
  loc_B642CA: MemLdRfVar from_stack_1.global_104
  loc_B642CD: Redim
  loc_B642D7: FLdPr var_AC
  loc_B642DA: Call clsfacictacte.MoveFirst()
  loc_B642DF: FLdRfVar var_104
  loc_B642E2: FLdPr var_AC
  loc_B642E5: from_stack_1 = clsfacictacte.DetaOfic
  loc_B642EA: LitI2_Byte 0
  loc_B642EC: LitVar_Missing var_114
  loc_B642EF: LitI2_Byte 0
  loc_B642F1: FLdVar var_104
  loc_B642F5: FLdPr Me
  loc_B642F8: MemLdRfVar from_stack_1.global_80
  loc_B642FB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64300: FFreeVar var_104 = ""
  loc_B64307: FLdRfVar var_B0
  loc_B6430A: FLdPr var_AC
  loc_B6430D: from_stack_1 = clsfacictacte.CuenCtct
  loc_B64312: LitI2_Byte 0
  loc_B64314: LitVar_Missing var_114
  loc_B64317: LitI2_Byte 0
  loc_B64319: FLdZeroAd var_B0
  loc_B6431C: CVarStr var_104
  loc_B6431F: PopAdLdVar
  loc_B64320: FLdPr Me
  loc_B64323: MemLdRfVar from_stack_1.global_84
  loc_B64326: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B6432B: FFreeVar var_104 = ""
  loc_B64332: FLdRfVar var_104
  loc_B64335: FLdPr var_AC
  loc_B64338: from_stack_1 = clsfacictacte.CucuPers
  loc_B6433D: LitI2_Byte 0
  loc_B6433F: LitVar_Missing var_114
  loc_B64342: LitI2_Byte 0
  loc_B64344: FLdVar var_104
  loc_B64348: FLdPr Me
  loc_B6434B: MemLdRfVar from_stack_1.global_88
  loc_B6434E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64353: FFreeVar var_104 = ""
  loc_B6435A: FLdRfVar var_104
  loc_B6435D: FLdPr var_AC
  loc_B64360: from_stack_1 = clsfacictacte.DetaPers
  loc_B64365: LitI2_Byte 0
  loc_B64367: LitVar_Missing var_114
  loc_B6436A: LitI2_Byte 0
  loc_B6436C: FLdVar var_104
  loc_B64370: FLdPr Me
  loc_B64373: MemLdRfVar from_stack_1.global_92
  loc_B64376: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B6437B: FFreeVar var_104 = ""
  loc_B64382: FLdRfVar var_104
  loc_B64385: FLdPr var_AC
  loc_B64388: from_stack_1 = clsfacictacte.CufiFapa
  loc_B6438D: LitI2_Byte 0
  loc_B6438F: LitVar_Missing var_114
  loc_B64392: LitI2_Byte 0
  loc_B64394: FLdVar var_104
  loc_B64398: FLdPr Me
  loc_B6439B: MemLdRfVar from_stack_1.global_96
  loc_B6439E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B643A3: FFreeVar var_104 = ""
  loc_B643AA: FLdRfVar var_104
  loc_B643AD: FLdPr var_AC
  loc_B643B0: from_stack_1 = clsfacictacte.FirmFapa
  loc_B643B5: LitI2_Byte 0
  loc_B643B7: LitVar_Missing var_114
  loc_B643BA: LitI2_Byte 0
  loc_B643BC: FLdVar var_104
  loc_B643C0: FLdPr Me
  loc_B643C3: MemLdRfVar from_stack_1.global_100
  loc_B643C6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B643CB: FFreeVar var_104 = ""
  loc_B643D2: LitI2_Byte 0
  loc_B643D4: LitVar_Missing var_104
  loc_B643D7: LitI2_Byte 0
  loc_B643D9: LitVarI2 var_94, 0
  loc_B643DE: PopAdLdVar
  loc_B643DF: FLdPr Me
  loc_B643E2: MemLdRfVar from_stack_1.global_112
  loc_B643E5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B643EA: FFree1Var var_104 = ""
  loc_B643ED: LitI2_Byte 1
  loc_B643EF: FLdPr Me
  loc_B643F2: MemLdRfVar from_stack_1.global_108
  loc_B643F5: FLdPr Me
  loc_B643F8: MemLdStr global_104
  loc_B643FB: LitI2_Byte 1
  loc_B643FD: FnUBound
  loc_B643FF: CI2I4
  loc_B64400: ForI2 var_118
  loc_B64406: FLdRfVar var_11A
  loc_B64409: FLdPr var_AC
  loc_B6440C: from_stack_1 = clsfacictacte.CuotDefa
  loc_B64411: LitI2_Byte 0
  loc_B64413: LitVar_Missing var_104
  loc_B64416: LitI2_Byte 0
  loc_B64418: FLdI2 var_11A
  loc_B6441B: CVarI2 var_94
  loc_B6441E: PopAdLdVar
  loc_B6441F: FLdPr Me
  loc_B64422: MemLdI2 global_108
  loc_B64425: CI4UI1
  loc_B64426: FLdPr Me
  loc_B64429: MemLdStr global_104
  loc_B6442C: AryLock
  loc_B6442F: Ary1LdPr
  loc_B64430: MemLdRfVar from_stack_1.global_0
  loc_B64433: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64438: AryUnlock
  loc_B6443B: FFree1Var var_104 = ""
  loc_B6443E: FLdRfVar var_11A
  loc_B64441: FLdPr var_AC
  loc_B64444: from_stack_1 = clsfacictacte.PeriCtct
  loc_B64449: LitI2_Byte 0
  loc_B6444B: LitVar_Missing var_104
  loc_B6444E: LitI2_Byte 0
  loc_B64450: FLdI2 var_11A
  loc_B64453: CVarI2 var_94
  loc_B64456: PopAdLdVar
  loc_B64457: FLdPr Me
  loc_B6445A: MemLdI2 global_108
  loc_B6445D: CI4UI1
  loc_B6445E: FLdPr Me
  loc_B64461: MemLdStr global_104
  loc_B64464: AryLock
  loc_B64467: Ary1LdPr
  loc_B64468: MemLdRfVar from_stack_1.global_4
  loc_B6446B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64470: AryUnlock
  loc_B64473: FFree1Var var_104 = ""
  loc_B64476: FLdRfVar var_11A
  loc_B64479: FLdPr var_AC
  loc_B6447C: from_stack_1 = clsfacictacte.BimeCtct
  loc_B64481: LitI2_Byte 0
  loc_B64483: LitVar_Missing var_104
  loc_B64486: LitI2_Byte 0
  loc_B64488: FLdI2 var_11A
  loc_B6448B: CVarI2 var_94
  loc_B6448E: PopAdLdVar
  loc_B6448F: FLdPr Me
  loc_B64492: MemLdI2 global_108
  loc_B64495: CI4UI1
  loc_B64496: FLdPr Me
  loc_B64499: MemLdStr global_104
  loc_B6449C: AryLock
  loc_B6449F: Ary1LdPr
  loc_B644A0: MemLdRfVar from_stack_1.global_8
  loc_B644A3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B644A8: AryUnlock
  loc_B644AB: FFree1Var var_104 = ""
  loc_B644AE: FLdRfVar var_B0
  loc_B644B1: FLdPr var_AC
  loc_B644B4: from_stack_1 = clsfacictacte.CodiConc
  loc_B644B9: LitI2_Byte 0
  loc_B644BB: LitVar_Missing var_114
  loc_B644BE: LitI2_Byte 0
  loc_B644C0: FLdZeroAd var_B0
  loc_B644C3: CVarStr var_104
  loc_B644C6: PopAdLdVar
  loc_B644C7: FLdPr Me
  loc_B644CA: MemLdI2 global_108
  loc_B644CD: CI4UI1
  loc_B644CE: FLdPr Me
  loc_B644D1: MemLdStr global_104
  loc_B644D4: AryLock
  loc_B644D7: Ary1LdPr
  loc_B644D8: MemLdRfVar from_stack_1.global_12
  loc_B644DB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B644E0: AryUnlock
  loc_B644E3: FFreeVar var_104 = ""
  loc_B644EA: FLdRfVar var_104
  loc_B644ED: FLdPr var_AC
  loc_B644F0: from_stack_1 = clsfacictacte.DetaConc
  loc_B644F5: LitI2_Byte 0
  loc_B644F7: LitVar_Missing var_114
  loc_B644FA: LitI2_Byte 0
  loc_B644FC: FLdVar var_104
  loc_B64500: FLdPr Me
  loc_B64503: MemLdI2 global_108
  loc_B64506: CI4UI1
  loc_B64507: FLdPr Me
  loc_B6450A: MemLdStr global_104
  loc_B6450D: AryLock
  loc_B64510: Ary1LdPr
  loc_B64511: MemLdRfVar from_stack_1.global_16
  loc_B64514: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64519: AryUnlock
  loc_B6451C: FFreeVar var_104 = ""
  loc_B64523: FLdRfVar var_128
  loc_B64526: FLdPr var_AC
  loc_B64529: from_stack_1 = clsfacictacte.CapiFacc
  loc_B6452E: LitI2_Byte 0
  loc_B64530: FLdPr Me
  loc_B64533: MemLdRfVar from_stack_1.global_112
  loc_B64536: CVarRef
  loc_B6453B: LitI2_Byte &HFF
  loc_B6453D: FLdFPR8 var_128
  loc_B64540: CVarR8
  loc_B64544: PopAdLdVar
  loc_B64545: FLdPr Me
  loc_B64548: MemLdI2 global_108
  loc_B6454B: CI4UI1
  loc_B6454C: FLdPr Me
  loc_B6454F: MemLdStr global_104
  loc_B64552: AryLock
  loc_B64555: Ary1LdPr
  loc_B64556: MemLdRfVar from_stack_1.global_20
  loc_B64559: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B6455E: AryUnlock
  loc_B64561: LitI2_Byte 1
  loc_B64563: PopTmpLdAd2 var_11A
  loc_B64566: FLdPr var_AC
  loc_B64569: Call clsfacictacte.Move(from_stack_1v)
  loc_B6456E: FLdPr Me
  loc_B64571: MemLdRfVar from_stack_1.global_108
  loc_B64574: NextI2 var_118, loc_B64406
  loc_B64579: LitNothing
  loc_B6457B: FStAd var_AC 
  loc_B6457F: LitI2_Byte &HFF
  loc_B64581: FLdPr Me
  loc_B64584: MemStI2 bGenerado
  loc_B64587: LitI4 0
  loc_B6458C: CI2I4
  loc_B6458D: FLdPr Me
  loc_B64590: Me.MousePointer = from_stack_1
  loc_B64595: LitVarStr var_94, vbNullString
  loc_B6459A: PopAdLdVar
  loc_B6459B: FLdPr Me
  loc_B6459E: VCallAd Control_ID_statusBar
  loc_B645A1: FStAdFunc var_A8
  loc_B645A4: FLdPr var_A8
  loc_B645A7: LateIdSt
  loc_B645AC: FFree1Ad var_A8
  loc_B645AF: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A3BB9C
  'Data Table: 4551A8
  loc_A3BB4C: FLdRfVar var_88
  loc_A3BB4F: LitI2_Byte 0
  loc_A3BB51: LitI2_Byte &HFF
  loc_A3BB53: ImpAdLdI4 MemVar_D93C84
  loc_A3BB56: FLdPr Me
  loc_A3BB59: MemLdRfVar from_stack_1.global_56
  loc_A3BB5C: NewIfNullPr IFileSystem3
  loc_A3BB5F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A3BB64: ILdRf var_88
  loc_A3BB67: FLdPr Me
  loc_A3BB6A: MemStVarAd
  loc_A3BB6E: FFree1Ad var_88
  loc_A3BB71: LitI2_Byte &HFF
  loc_A3BB73: ImpAdStI2 MemVar_D93C8A
  loc_A3BB76: Call Proc_356_15_BDCFB4()
  loc_A3BB7B: Call Proc_356_16_B1A730()
  loc_A3BB80: Call Proc_356_17_A0ABC8()
  loc_A3BB85: FLdPr Me
  loc_A3BB88: MemLdRfVar from_stack_1.global_60
  loc_A3BB8B: LdPrVar
  loc_A3BB8D: LateMemCall
  loc_A3BB93: LitStr vbNullString
  loc_A3BB96: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A3BB9B: ExitProcHresult
End Sub

Private Function Proc_356_15_BDCFB4() 'BDCFB4
  'Data Table: 4551A8
  loc_BDC838: LitVarStr var_98, "<html>"
  loc_BDC83D: PopAdLdVar
  loc_BDC83E: FLdPr Me
  loc_BDC841: MemLdRfVar from_stack_1.global_60
  loc_BDC844: LdPrVar
  loc_BDC846: LateMemCall
  loc_BDC84C: LitVarStr var_98, "<head>"
  loc_BDC851: PopAdLdVar
  loc_BDC852: FLdPr Me
  loc_BDC855: MemLdRfVar from_stack_1.global_60
  loc_BDC858: LdPrVar
  loc_BDC85A: LateMemCall
  loc_BDC860: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BDC865: PopAdLdVar
  loc_BDC866: FLdPr Me
  loc_BDC869: MemLdRfVar from_stack_1.global_60
  loc_BDC86C: LdPrVar
  loc_BDC86E: LateMemCall
  loc_BDC874: LitStr "<title>"
  loc_BDC877: FLdRfVar var_AC
  loc_BDC87A: FLdPr Me
  loc_BDC87D:  = Me.Caption
  loc_BDC882: ILdRf var_AC
  loc_BDC885: ConcatStr
  loc_BDC886: FStStrNoPop var_B0
  loc_BDC889: LitStr "</title>"
  loc_BDC88C: ConcatStr
  loc_BDC88D: CVarStr var_C0
  loc_BDC890: PopAdLdVar
  loc_BDC891: FLdPr Me
  loc_BDC894: MemLdRfVar from_stack_1.global_60
  loc_BDC897: LdPrVar
  loc_BDC899: LateMemCall
  loc_BDC89F: FFreeStr var_AC = ""
  loc_BDC8A6: FFree1Var var_C0 = ""
  loc_BDC8A9: LitVarStr var_98, "<style type=""text/css"">"
  loc_BDC8AE: PopAdLdVar
  loc_BDC8AF: FLdPr Me
  loc_BDC8B2: MemLdRfVar from_stack_1.global_60
  loc_BDC8B5: LdPrVar
  loc_BDC8B7: LateMemCall
  loc_BDC8BD: LitVarStr var_98, ".Titulo1 {"
  loc_BDC8C2: PopAdLdVar
  loc_BDC8C3: FLdPr Me
  loc_BDC8C6: MemLdRfVar from_stack_1.global_60
  loc_BDC8C9: LdPrVar
  loc_BDC8CB: LateMemCall
  loc_BDC8D1: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDC8D6: PopAdLdVar
  loc_BDC8D7: FLdPr Me
  loc_BDC8DA: MemLdRfVar from_stack_1.global_60
  loc_BDC8DD: LdPrVar
  loc_BDC8DF: LateMemCall
  loc_BDC8E5: LitVarStr var_98, " font-size: 18px;"
  loc_BDC8EA: PopAdLdVar
  loc_BDC8EB: FLdPr Me
  loc_BDC8EE: MemLdRfVar from_stack_1.global_60
  loc_BDC8F1: LdPrVar
  loc_BDC8F3: LateMemCall
  loc_BDC8F9: LitVarStr var_98, " font-weight: bold;"
  loc_BDC8FE: PopAdLdVar
  loc_BDC8FF: FLdPr Me
  loc_BDC902: MemLdRfVar from_stack_1.global_60
  loc_BDC905: LdPrVar
  loc_BDC907: LateMemCall
  loc_BDC90D: LitVarStr var_98, "}"
  loc_BDC912: PopAdLdVar
  loc_BDC913: FLdPr Me
  loc_BDC916: MemLdRfVar from_stack_1.global_60
  loc_BDC919: LdPrVar
  loc_BDC91B: LateMemCall
  loc_BDC921: LitVarStr var_98, ".Titulo2 {"
  loc_BDC926: PopAdLdVar
  loc_BDC927: FLdPr Me
  loc_BDC92A: MemLdRfVar from_stack_1.global_60
  loc_BDC92D: LdPrVar
  loc_BDC92F: LateMemCall
  loc_BDC935: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDC93A: PopAdLdVar
  loc_BDC93B: FLdPr Me
  loc_BDC93E: MemLdRfVar from_stack_1.global_60
  loc_BDC941: LdPrVar
  loc_BDC943: LateMemCall
  loc_BDC949: LitVarStr var_98, " font-size: 14px;"
  loc_BDC94E: PopAdLdVar
  loc_BDC94F: FLdPr Me
  loc_BDC952: MemLdRfVar from_stack_1.global_60
  loc_BDC955: LdPrVar
  loc_BDC957: LateMemCall
  loc_BDC95D: LitVarStr var_98, " font-weight: bold;"
  loc_BDC962: PopAdLdVar
  loc_BDC963: FLdPr Me
  loc_BDC966: MemLdRfVar from_stack_1.global_60
  loc_BDC969: LdPrVar
  loc_BDC96B: LateMemCall
  loc_BDC971: LitVarStr var_98, "}"
  loc_BDC976: PopAdLdVar
  loc_BDC977: FLdPr Me
  loc_BDC97A: MemLdRfVar from_stack_1.global_60
  loc_BDC97D: LdPrVar
  loc_BDC97F: LateMemCall
  loc_BDC985: LitVarStr var_98, ".Normal {"
  loc_BDC98A: PopAdLdVar
  loc_BDC98B: FLdPr Me
  loc_BDC98E: MemLdRfVar from_stack_1.global_60
  loc_BDC991: LdPrVar
  loc_BDC993: LateMemCall
  loc_BDC999: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDC99E: PopAdLdVar
  loc_BDC99F: FLdPr Me
  loc_BDC9A2: MemLdRfVar from_stack_1.global_60
  loc_BDC9A5: LdPrVar
  loc_BDC9A7: LateMemCall
  loc_BDC9AD: LitVarStr var_98, " font-size: 12px;"
  loc_BDC9B2: PopAdLdVar
  loc_BDC9B3: FLdPr Me
  loc_BDC9B6: MemLdRfVar from_stack_1.global_60
  loc_BDC9B9: LdPrVar
  loc_BDC9BB: LateMemCall
  loc_BDC9C1: LitVarStr var_98, " font-style: normal;"
  loc_BDC9C6: PopAdLdVar
  loc_BDC9C7: FLdPr Me
  loc_BDC9CA: MemLdRfVar from_stack_1.global_60
  loc_BDC9CD: LdPrVar
  loc_BDC9CF: LateMemCall
  loc_BDC9D5: LitVarStr var_98, " font-weight: normal;"
  loc_BDC9DA: PopAdLdVar
  loc_BDC9DB: FLdPr Me
  loc_BDC9DE: MemLdRfVar from_stack_1.global_60
  loc_BDC9E1: LdPrVar
  loc_BDC9E3: LateMemCall
  loc_BDC9E9: LitVarStr var_98, " font-variant: normal;"
  loc_BDC9EE: PopAdLdVar
  loc_BDC9EF: FLdPr Me
  loc_BDC9F2: MemLdRfVar from_stack_1.global_60
  loc_BDC9F5: LdPrVar
  loc_BDC9F7: LateMemCall
  loc_BDC9FD: LitVarStr var_98, "}"
  loc_BDCA02: PopAdLdVar
  loc_BDCA03: FLdPr Me
  loc_BDCA06: MemLdRfVar from_stack_1.global_60
  loc_BDCA09: LdPrVar
  loc_BDCA0B: LateMemCall
  loc_BDCA11: LitVarStr var_98, ".Encabezado {"
  loc_BDCA16: PopAdLdVar
  loc_BDCA17: FLdPr Me
  loc_BDCA1A: MemLdRfVar from_stack_1.global_60
  loc_BDCA1D: LdPrVar
  loc_BDCA1F: LateMemCall
  loc_BDCA25: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BDCA2A: PopAdLdVar
  loc_BDCA2B: FLdPr Me
  loc_BDCA2E: MemLdRfVar from_stack_1.global_60
  loc_BDCA31: LdPrVar
  loc_BDCA33: LateMemCall
  loc_BDCA39: LitVarStr var_98, " font-size: 11px;"
  loc_BDCA3E: PopAdLdVar
  loc_BDCA3F: FLdPr Me
  loc_BDCA42: MemLdRfVar from_stack_1.global_60
  loc_BDCA45: LdPrVar
  loc_BDCA47: LateMemCall
  loc_BDCA4D: LitVarStr var_98, " font-weight: bold;"
  loc_BDCA52: PopAdLdVar
  loc_BDCA53: FLdPr Me
  loc_BDCA56: MemLdRfVar from_stack_1.global_60
  loc_BDCA59: LdPrVar
  loc_BDCA5B: LateMemCall
  loc_BDCA61: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BDCA66: PopAdLdVar
  loc_BDCA67: FLdPr Me
  loc_BDCA6A: MemLdRfVar from_stack_1.global_60
  loc_BDCA6D: LdPrVar
  loc_BDCA6F: LateMemCall
  loc_BDCA75: LitVarStr var_98, "}"
  loc_BDCA7A: PopAdLdVar
  loc_BDCA7B: FLdPr Me
  loc_BDCA7E: MemLdRfVar from_stack_1.global_60
  loc_BDCA81: LdPrVar
  loc_BDCA83: LateMemCall
  loc_BDCA89: LitVarStr var_98, ".LineaDato {"
  loc_BDCA8E: PopAdLdVar
  loc_BDCA8F: FLdPr Me
  loc_BDCA92: MemLdRfVar from_stack_1.global_60
  loc_BDCA95: LdPrVar
  loc_BDCA97: LateMemCall
  loc_BDCA9D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDCAA2: PopAdLdVar
  loc_BDCAA3: FLdPr Me
  loc_BDCAA6: MemLdRfVar from_stack_1.global_60
  loc_BDCAA9: LdPrVar
  loc_BDCAAB: LateMemCall
  loc_BDCAB1: LitVarStr var_98, " font-size: 10px;"
  loc_BDCAB6: PopAdLdVar
  loc_BDCAB7: FLdPr Me
  loc_BDCABA: MemLdRfVar from_stack_1.global_60
  loc_BDCABD: LdPrVar
  loc_BDCABF: LateMemCall
  loc_BDCAC5: LitVarStr var_98, "}"
  loc_BDCACA: PopAdLdVar
  loc_BDCACB: FLdPr Me
  loc_BDCACE: MemLdRfVar from_stack_1.global_60
  loc_BDCAD1: LdPrVar
  loc_BDCAD3: LateMemCall
  loc_BDCAD9: LitVarStr var_98, ".Totales {"
  loc_BDCADE: PopAdLdVar
  loc_BDCADF: FLdPr Me
  loc_BDCAE2: MemLdRfVar from_stack_1.global_60
  loc_BDCAE5: LdPrVar
  loc_BDCAE7: LateMemCall
  loc_BDCAED: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDCAF2: PopAdLdVar
  loc_BDCAF3: FLdPr Me
  loc_BDCAF6: MemLdRfVar from_stack_1.global_60
  loc_BDCAF9: LdPrVar
  loc_BDCAFB: LateMemCall
  loc_BDCB01: LitVarStr var_98, " font-size: 12px;"
  loc_BDCB06: PopAdLdVar
  loc_BDCB07: FLdPr Me
  loc_BDCB0A: MemLdRfVar from_stack_1.global_60
  loc_BDCB0D: LdPrVar
  loc_BDCB0F: LateMemCall
  loc_BDCB15: LitVarStr var_98, " font-weight: bold;"
  loc_BDCB1A: PopAdLdVar
  loc_BDCB1B: FLdPr Me
  loc_BDCB1E: MemLdRfVar from_stack_1.global_60
  loc_BDCB21: LdPrVar
  loc_BDCB23: LateMemCall
  loc_BDCB29: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BDCB2E: PopAdLdVar
  loc_BDCB2F: FLdPr Me
  loc_BDCB32: MemLdRfVar from_stack_1.global_60
  loc_BDCB35: LdPrVar
  loc_BDCB37: LateMemCall
  loc_BDCB3D: LitVarStr var_98, "}"
  loc_BDCB42: PopAdLdVar
  loc_BDCB43: FLdPr Me
  loc_BDCB46: MemLdRfVar from_stack_1.global_60
  loc_BDCB49: LdPrVar
  loc_BDCB4B: LateMemCall
  loc_BDCB51: LitVarStr var_98, ".SubTotales {"
  loc_BDCB56: PopAdLdVar
  loc_BDCB57: FLdPr Me
  loc_BDCB5A: MemLdRfVar from_stack_1.global_60
  loc_BDCB5D: LdPrVar
  loc_BDCB5F: LateMemCall
  loc_BDCB65: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDCB6A: PopAdLdVar
  loc_BDCB6B: FLdPr Me
  loc_BDCB6E: MemLdRfVar from_stack_1.global_60
  loc_BDCB71: LdPrVar
  loc_BDCB73: LateMemCall
  loc_BDCB79: LitVarStr var_98, " font-size: 10px;"
  loc_BDCB7E: PopAdLdVar
  loc_BDCB7F: FLdPr Me
  loc_BDCB82: MemLdRfVar from_stack_1.global_60
  loc_BDCB85: LdPrVar
  loc_BDCB87: LateMemCall
  loc_BDCB8D: LitVarStr var_98, " font-weight: bold;"
  loc_BDCB92: PopAdLdVar
  loc_BDCB93: FLdPr Me
  loc_BDCB96: MemLdRfVar from_stack_1.global_60
  loc_BDCB99: LdPrVar
  loc_BDCB9B: LateMemCall
  loc_BDCBA1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BDCBA6: PopAdLdVar
  loc_BDCBA7: FLdPr Me
  loc_BDCBAA: MemLdRfVar from_stack_1.global_60
  loc_BDCBAD: LdPrVar
  loc_BDCBAF: LateMemCall
  loc_BDCBB5: LitVarStr var_98, "}"
  loc_BDCBBA: PopAdLdVar
  loc_BDCBBB: FLdPr Me
  loc_BDCBBE: MemLdRfVar from_stack_1.global_60
  loc_BDCBC1: LdPrVar
  loc_BDCBC3: LateMemCall
  loc_BDCBC9: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BDCBCE: PopAdLdVar
  loc_BDCBCF: FLdPr Me
  loc_BDCBD2: MemLdRfVar from_stack_1.global_60
  loc_BDCBD5: LdPrVar
  loc_BDCBD7: LateMemCall
  loc_BDCBDD: LitVarStr var_98, "</style>"
  loc_BDCBE2: PopAdLdVar
  loc_BDCBE3: FLdPr Me
  loc_BDCBE6: MemLdRfVar from_stack_1.global_60
  loc_BDCBE9: LdPrVar
  loc_BDCBEB: LateMemCall
  loc_BDCBF1: LitI4 0
  loc_BDCBF6: FStStrCopy var_B0
  loc_BDCBF9: FLdRfVar var_B0
  loc_BDCBFC: LitI4 0
  loc_BDCC01: FStStrCopy var_AC
  loc_BDCC04: FLdRfVar var_AC
  loc_BDCC07: LitI2_Byte 0
  loc_BDCC09: PopTmpLdAd2 var_C2
  loc_BDCC0C: FLdPr Me
  loc_BDCC0F: MemLdRfVar from_stack_1.global_60
  loc_BDCC12: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BDCC17: FFreeStr var_AC = ""
  loc_BDCC1E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BDCC23: PopAdLdVar
  loc_BDCC24: FLdPr Me
  loc_BDCC27: MemLdRfVar from_stack_1.global_60
  loc_BDCC2A: LdPrVar
  loc_BDCC2C: LateMemCall
  loc_BDCC32: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BDCC37: PopAdLdVar
  loc_BDCC38: FLdPr Me
  loc_BDCC3B: MemLdRfVar from_stack_1.global_60
  loc_BDCC3E: LdPrVar
  loc_BDCC40: LateMemCall
  loc_BDCC46: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BDCC49: LitI2_Byte &H5F
  loc_BDCC4B: CStrUI1
  loc_BDCC4D: FStStrNoPop var_AC
  loc_BDCC50: ConcatStr
  loc_BDCC51: FStStrNoPop var_B0
  loc_BDCC54: LitStr """ height="""
  loc_BDCC57: ConcatStr
  loc_BDCC58: FStStrNoPop var_C8
  loc_BDCC5B: LitI2_Byte &H3C
  loc_BDCC5D: CStrUI1
  loc_BDCC5F: FStStrNoPop var_CC
  loc_BDCC62: ConcatStr
  loc_BDCC63: FStStrNoPop var_D0
  loc_BDCC66: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BDCC69: ConcatStr
  loc_BDCC6A: FStStrNoPop var_D4
  loc_BDCC6D: LitStr "Municipalidad de Guaymallén"
  loc_BDCC70: ConcatStr
  loc_BDCC71: FStStrNoPop var_D8
  loc_BDCC74: LitStr "</p>"
  loc_BDCC77: ConcatStr
  loc_BDCC78: CVarStr var_C0
  loc_BDCC7B: PopAdLdVar
  loc_BDCC7C: FLdPr Me
  loc_BDCC7F: MemLdRfVar from_stack_1.global_60
  loc_BDCC82: LdPrVar
  loc_BDCC84: LateMemCall
  loc_BDCC8A: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BDCC9B: FFree1Var var_C0 = ""
  loc_BDCC9E: LitStr "    <p>"
  loc_BDCCA1: FLdRfVar var_AC
  loc_BDCCA4: FLdPr Me
  loc_BDCCA7:  = Me.Caption
  loc_BDCCAC: ILdRf var_AC
  loc_BDCCAF: ConcatStr
  loc_BDCCB0: FStStrNoPop var_B0
  loc_BDCCB3: LitStr "</p></th>"
  loc_BDCCB6: ConcatStr
  loc_BDCCB7: CVarStr var_C0
  loc_BDCCBA: PopAdLdVar
  loc_BDCCBB: FLdPr Me
  loc_BDCCBE: MemLdRfVar from_stack_1.global_60
  loc_BDCCC1: LdPrVar
  loc_BDCCC3: LateMemCall
  loc_BDCCC9: FFreeStr var_AC = ""
  loc_BDCCD0: FFree1Var var_C0 = ""
  loc_BDCCD3: LitVarStr var_98, "  </tr>"
  loc_BDCCD8: PopAdLdVar
  loc_BDCCD9: FLdPr Me
  loc_BDCCDC: MemLdRfVar from_stack_1.global_60
  loc_BDCCDF: LdPrVar
  loc_BDCCE1: LateMemCall
  loc_BDCCE7: LitVarStr var_98, "  <tr>"
  loc_BDCCEC: PopAdLdVar
  loc_BDCCED: FLdPr Me
  loc_BDCCF0: MemLdRfVar from_stack_1.global_60
  loc_BDCCF3: LdPrVar
  loc_BDCCF5: LateMemCall
  loc_BDCCFB: LitVarStr var_98, "    <th><hr></th>"
  loc_BDCD00: PopAdLdVar
  loc_BDCD01: FLdPr Me
  loc_BDCD04: MemLdRfVar from_stack_1.global_60
  loc_BDCD07: LdPrVar
  loc_BDCD09: LateMemCall
  loc_BDCD0F: LitVarStr var_98, "  </tr>"
  loc_BDCD14: PopAdLdVar
  loc_BDCD15: FLdPr Me
  loc_BDCD18: MemLdRfVar from_stack_1.global_60
  loc_BDCD1B: LdPrVar
  loc_BDCD1D: LateMemCall
  loc_BDCD23: LitVarStr var_98, " <tr><td><table border=0 align=""center"" width=""80" & Chr(37) & """>"
  loc_BDCD28: PopAdLdVar
  loc_BDCD29: FLdPr Me
  loc_BDCD2C: MemLdRfVar from_stack_1.global_60
  loc_BDCD2F: LdPrVar
  loc_BDCD31: LateMemCall
  loc_BDCD37: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""center"">"
  loc_BDCD3C: PopAdLdVar
  loc_BDCD3D: FLdPr Me
  loc_BDCD40: MemLdRfVar from_stack_1.global_60
  loc_BDCD43: LdPrVar
  loc_BDCD45: LateMemCall
  loc_BDCD4B: LitStr "    <td>Facilidad: <strong>"
  loc_BDCD4E: FLdRfVar var_AC
  loc_BDCD51: FLdPr Me
  loc_BDCD54: VCallAd Control_ID_CodiFapaTxt
  loc_BDCD57: FStAdFunc var_DC
  loc_BDCD5A: FLdPr var_DC
  loc_BDCD5D:  = Me.Text
  loc_BDCD62: ILdRf var_AC
  loc_BDCD65: ConcatStr
  loc_BDCD66: FStStrNoPop var_B0
  loc_BDCD69: LitStr "</strong></td>"
  loc_BDCD6C: ConcatStr
  loc_BDCD6D: CVarStr var_C0
  loc_BDCD70: PopAdLdVar
  loc_BDCD71: FLdPr Me
  loc_BDCD74: MemLdRfVar from_stack_1.global_60
  loc_BDCD77: LdPrVar
  loc_BDCD79: LateMemCall
  loc_BDCD7F: FFreeStr var_AC = ""
  loc_BDCD86: FFree1Ad var_DC
  loc_BDCD89: FFree1Var var_C0 = ""
  loc_BDCD8C: LitStr "    <td>Oficina: <strong>"
  loc_BDCD8F: FLdPr Me
  loc_BDCD92: MemLdStr global_80
  loc_BDCD95: ConcatStr
  loc_BDCD96: FStStrNoPop var_AC
  loc_BDCD99: LitStr "</strong></td>"
  loc_BDCD9C: ConcatStr
  loc_BDCD9D: CVarStr var_C0
  loc_BDCDA0: PopAdLdVar
  loc_BDCDA1: FLdPr Me
  loc_BDCDA4: MemLdRfVar from_stack_1.global_60
  loc_BDCDA7: LdPrVar
  loc_BDCDA9: LateMemCall
  loc_BDCDAF: FFree1Str var_AC
  loc_BDCDB2: FFree1Var var_C0 = ""
  loc_BDCDB5: LitStr "    <td>Cuenta: <strong>"
  loc_BDCDB8: FLdPr Me
  loc_BDCDBB: MemLdStr global_84
  loc_BDCDBE: ConcatStr
  loc_BDCDBF: FStStrNoPop var_AC
  loc_BDCDC2: LitStr "</strong></td>"
  loc_BDCDC5: ConcatStr
  loc_BDCDC6: CVarStr var_C0
  loc_BDCDC9: PopAdLdVar
  loc_BDCDCA: FLdPr Me
  loc_BDCDCD: MemLdRfVar from_stack_1.global_60
  loc_BDCDD0: LdPrVar
  loc_BDCDD2: LateMemCall
  loc_BDCDD8: FFree1Str var_AC
  loc_BDCDDB: FFree1Var var_C0 = ""
  loc_BDCDDE: LitVarStr var_98, "  </tr>"
  loc_BDCDE3: PopAdLdVar
  loc_BDCDE4: FLdPr Me
  loc_BDCDE7: MemLdRfVar from_stack_1.global_60
  loc_BDCDEA: LdPrVar
  loc_BDCDEC: LateMemCall
  loc_BDCDF2: LitVarStr var_98, " </table></td></tr>"
  loc_BDCDF7: PopAdLdVar
  loc_BDCDF8: FLdPr Me
  loc_BDCDFB: MemLdRfVar from_stack_1.global_60
  loc_BDCDFE: LdPrVar
  loc_BDCE00: LateMemCall
  loc_BDCE06: LitVarStr var_98, " <tr><td><table border=0 align=""center"" width=""80" & Chr(37) & """>"
  loc_BDCE0B: PopAdLdVar
  loc_BDCE0C: FLdPr Me
  loc_BDCE0F: MemLdRfVar from_stack_1.global_60
  loc_BDCE12: LdPrVar
  loc_BDCE14: LateMemCall
  loc_BDCE1A: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""center"">"
  loc_BDCE1F: PopAdLdVar
  loc_BDCE20: FLdPr Me
  loc_BDCE23: MemLdRfVar from_stack_1.global_60
  loc_BDCE26: LdPrVar
  loc_BDCE28: LateMemCall
  loc_BDCE2E: LitStr "    <td>CUIL/CUIT Titular: <strong>"
  loc_BDCE31: LitI4 1
  loc_BDCE36: LitI4 1
  loc_BDCE3B: LitVarStr var_A8, "##-########-#"
  loc_BDCE40: FStVarCopyObj var_C0
  loc_BDCE43: FLdRfVar var_C0
  loc_BDCE46: FLdPr Me
  loc_BDCE49: MemLdRfVar from_stack_1.global_88
  loc_BDCE4C: CVarRef
  loc_BDCE51: ImpAdCallI2 Format$(, )
  loc_BDCE56: FStStrNoPop var_AC
  loc_BDCE59: ConcatStr
  loc_BDCE5A: FStStrNoPop var_B0
  loc_BDCE5D: LitStr "</strong></td>"
  loc_BDCE60: ConcatStr
  loc_BDCE61: CVarStr var_EC
  loc_BDCE64: PopAdLdVar
  loc_BDCE65: FLdPr Me
  loc_BDCE68: MemLdRfVar from_stack_1.global_60
  loc_BDCE6B: LdPrVar
  loc_BDCE6D: LateMemCall
  loc_BDCE73: FFreeStr var_AC = ""
  loc_BDCE7A: FFreeVar var_C0 = ""
  loc_BDCE81: LitStr "    <td>Apellido y Nombre del Titular: <strong>"
  loc_BDCE84: FLdPr Me
  loc_BDCE87: MemLdStr global_92
  loc_BDCE8A: ConcatStr
  loc_BDCE8B: FStStrNoPop var_AC
  loc_BDCE8E: LitStr "</strong></td>"
  loc_BDCE91: ConcatStr
  loc_BDCE92: CVarStr var_C0
  loc_BDCE95: PopAdLdVar
  loc_BDCE96: FLdPr Me
  loc_BDCE99: MemLdRfVar from_stack_1.global_60
  loc_BDCE9C: LdPrVar
  loc_BDCE9E: LateMemCall
  loc_BDCEA4: FFree1Str var_AC
  loc_BDCEA7: FFree1Var var_C0 = ""
  loc_BDCEAA: LitVarStr var_98, "  </tr>"
  loc_BDCEAF: PopAdLdVar
  loc_BDCEB0: FLdPr Me
  loc_BDCEB3: MemLdRfVar from_stack_1.global_60
  loc_BDCEB6: LdPrVar
  loc_BDCEB8: LateMemCall
  loc_BDCEBE: LitVarStr var_98, " </table></td></tr>"
  loc_BDCEC3: PopAdLdVar
  loc_BDCEC4: FLdPr Me
  loc_BDCEC7: MemLdRfVar from_stack_1.global_60
  loc_BDCECA: LdPrVar
  loc_BDCECC: LateMemCall
  loc_BDCED2: LitVarStr var_98, " <tr><td><table border=0 align=""center"" width=""80" & Chr(37) & """>"
  loc_BDCED7: PopAdLdVar
  loc_BDCED8: FLdPr Me
  loc_BDCEDB: MemLdRfVar from_stack_1.global_60
  loc_BDCEDE: LdPrVar
  loc_BDCEE0: LateMemCall
  loc_BDCEE6: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""center"">"
  loc_BDCEEB: PopAdLdVar
  loc_BDCEEC: FLdPr Me
  loc_BDCEEF: MemLdRfVar from_stack_1.global_60
  loc_BDCEF2: LdPrVar
  loc_BDCEF4: LateMemCall
  loc_BDCEFA: LitStr "    <td>CUIL/CUIT Firmante: <strong>"
  loc_BDCEFD: LitI4 1
  loc_BDCF02: LitI4 1
  loc_BDCF07: LitVarStr var_A8, "##-########-#"
  loc_BDCF0C: FStVarCopyObj var_C0
  loc_BDCF0F: FLdRfVar var_C0
  loc_BDCF12: FLdPr Me
  loc_BDCF15: MemLdRfVar from_stack_1.global_96
  loc_BDCF18: CVarRef
  loc_BDCF1D: ImpAdCallI2 Format$(, )
  loc_BDCF22: FStStrNoPop var_AC
  loc_BDCF25: ConcatStr
  loc_BDCF26: FStStrNoPop var_B0
  loc_BDCF29: LitStr "</strong></td>"
  loc_BDCF2C: ConcatStr
  loc_BDCF2D: CVarStr var_EC
  loc_BDCF30: PopAdLdVar
  loc_BDCF31: FLdPr Me
  loc_BDCF34: MemLdRfVar from_stack_1.global_60
  loc_BDCF37: LdPrVar
  loc_BDCF39: LateMemCall
  loc_BDCF3F: FFreeStr var_AC = ""
  loc_BDCF46: FFreeVar var_C0 = ""
  loc_BDCF4D: LitStr "    <td>Apellido y Nombre del Firmante: <strong>"
  loc_BDCF50: FLdPr Me
  loc_BDCF53: MemLdStr global_100
  loc_BDCF56: ConcatStr
  loc_BDCF57: FStStrNoPop var_AC
  loc_BDCF5A: LitStr "</strong></td>"
  loc_BDCF5D: ConcatStr
  loc_BDCF5E: CVarStr var_C0
  loc_BDCF61: PopAdLdVar
  loc_BDCF62: FLdPr Me
  loc_BDCF65: MemLdRfVar from_stack_1.global_60
  loc_BDCF68: LdPrVar
  loc_BDCF6A: LateMemCall
  loc_BDCF70: FFree1Str var_AC
  loc_BDCF73: FFree1Var var_C0 = ""
  loc_BDCF76: LitVarStr var_98, "  </tr>"
  loc_BDCF7B: PopAdLdVar
  loc_BDCF7C: FLdPr Me
  loc_BDCF7F: MemLdRfVar from_stack_1.global_60
  loc_BDCF82: LdPrVar
  loc_BDCF84: LateMemCall
  loc_BDCF8A: LitVarStr var_98, " </table></td></tr>"
  loc_BDCF8F: PopAdLdVar
  loc_BDCF90: FLdPr Me
  loc_BDCF93: MemLdRfVar from_stack_1.global_60
  loc_BDCF96: LdPrVar
  loc_BDCF98: LateMemCall
  loc_BDCF9E: LitVarStr var_98, "</table>"
  loc_BDCFA3: PopAdLdVar
  loc_BDCFA4: FLdPr Me
  loc_BDCFA7: MemLdRfVar from_stack_1.global_60
  loc_BDCFAA: LdPrVar
  loc_BDCFAC: LateMemCall
  loc_BDCFB2: ExitProcHresult
End Function

Private Function Proc_356_16_B1A730() 'B1A730
  'Data Table: 4551A8
  loc_B1A4A4: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B1A4A9: PopAdLdVar
  loc_B1A4AA: FLdPr Me
  loc_B1A4AD: MemLdRfVar from_stack_1.global_60
  loc_B1A4B0: LdPrVar
  loc_B1A4B2: LateMemCall
  loc_B1A4B8: LitVarStr var_94, "  <thead>"
  loc_B1A4BD: PopAdLdVar
  loc_B1A4BE: FLdPr Me
  loc_B1A4C1: MemLdRfVar from_stack_1.global_60
  loc_B1A4C4: LdPrVar
  loc_B1A4C6: LateMemCall
  loc_B1A4CC: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B1A4D1: PopAdLdVar
  loc_B1A4D2: FLdPr Me
  loc_B1A4D5: MemLdRfVar from_stack_1.global_60
  loc_B1A4D8: LdPrVar
  loc_B1A4DA: LateMemCall
  loc_B1A4E0: LitVarStr var_94, "    <th>Cuota</th>"
  loc_B1A4E5: PopAdLdVar
  loc_B1A4E6: FLdPr Me
  loc_B1A4E9: MemLdRfVar from_stack_1.global_60
  loc_B1A4EC: LdPrVar
  loc_B1A4EE: LateMemCall
  loc_B1A4F4: LitVarStr var_94, "    <th>Periodo</th>"
  loc_B1A4F9: PopAdLdVar
  loc_B1A4FA: FLdPr Me
  loc_B1A4FD: MemLdRfVar from_stack_1.global_60
  loc_B1A500: LdPrVar
  loc_B1A502: LateMemCall
  loc_B1A508: LitVarStr var_94, "    <th>Bimestre</th>"
  loc_B1A50D: PopAdLdVar
  loc_B1A50E: FLdPr Me
  loc_B1A511: MemLdRfVar from_stack_1.global_60
  loc_B1A514: LdPrVar
  loc_B1A516: LateMemCall
  loc_B1A51C: LitVarStr var_94, "    <th>Concepto</th>"
  loc_B1A521: PopAdLdVar
  loc_B1A522: FLdPr Me
  loc_B1A525: MemLdRfVar from_stack_1.global_60
  loc_B1A528: LdPrVar
  loc_B1A52A: LateMemCall
  loc_B1A530: LitVarStr var_94, "    <th>Importe</th>"
  loc_B1A535: PopAdLdVar
  loc_B1A536: FLdPr Me
  loc_B1A539: MemLdRfVar from_stack_1.global_60
  loc_B1A53C: LdPrVar
  loc_B1A53E: LateMemCall
  loc_B1A544: LitVarStr var_94, "  </tr>"
  loc_B1A549: PopAdLdVar
  loc_B1A54A: FLdPr Me
  loc_B1A54D: MemLdRfVar from_stack_1.global_60
  loc_B1A550: LdPrVar
  loc_B1A552: LateMemCall
  loc_B1A558: LitVarStr var_94, "  </thead>"
  loc_B1A55D: PopAdLdVar
  loc_B1A55E: FLdPr Me
  loc_B1A561: MemLdRfVar from_stack_1.global_60
  loc_B1A564: LdPrVar
  loc_B1A566: LateMemCall
  loc_B1A56C: LitI2_Byte 1
  loc_B1A56E: FLdPr Me
  loc_B1A571: MemLdRfVar from_stack_1.global_108
  loc_B1A574: FLdPr Me
  loc_B1A577: MemLdStr global_104
  loc_B1A57A: LitI2_Byte 1
  loc_B1A57C: FnUBound
  loc_B1A57E: CI2I4
  loc_B1A57F: ForI2 var_A8
  loc_B1A585: FLdPr Me
  loc_B1A588: MemLdI2 global_108
  loc_B1A58B: CI4UI1
  loc_B1A58C: FLdPr Me
  loc_B1A58F: MemLdStr global_104
  loc_B1A592: AryLock
  loc_B1A595: Ary1LdRf
  loc_B1A596: FStR4 var_B0
  loc_B1A599: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B1A59E: PopAdLdVar
  loc_B1A59F: FLdPr Me
  loc_B1A5A2: MemLdRfVar from_stack_1.global_60
  loc_B1A5A5: LdPrVar
  loc_B1A5A7: LateMemCall
  loc_B1A5AD: LitStr vbNullString
  loc_B1A5B0: LitI2_Byte 0
  loc_B1A5B2: LitI2_Byte 0
  loc_B1A5B4: LitI2_Byte 0
  loc_B1A5B6: LitStr "right"
  loc_B1A5B9: FMemLdR4 var_B0(0)
  loc_B1A5BE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1A5C3: CVarStr var_C0
  loc_B1A5C6: PopAdLdVar
  loc_B1A5C7: FLdPr Me
  loc_B1A5CA: MemLdRfVar from_stack_1.global_60
  loc_B1A5CD: LdPrVar
  loc_B1A5CF: LateMemCall
  loc_B1A5D5: FFree1Var var_C0 = ""
  loc_B1A5D8: LitStr vbNullString
  loc_B1A5DB: LitI2_Byte 0
  loc_B1A5DD: LitI2_Byte 0
  loc_B1A5DF: LitI2_Byte 0
  loc_B1A5E1: LitStr "right"
  loc_B1A5E4: FMemLdR4 var_B0(4)
  loc_B1A5E9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1A5EE: CVarStr var_C0
  loc_B1A5F1: PopAdLdVar
  loc_B1A5F2: FLdPr Me
  loc_B1A5F5: MemLdRfVar from_stack_1.global_60
  loc_B1A5F8: LdPrVar
  loc_B1A5FA: LateMemCall
  loc_B1A600: FFree1Var var_C0 = ""
  loc_B1A603: LitStr vbNullString
  loc_B1A606: LitI2_Byte 0
  loc_B1A608: LitI2_Byte 0
  loc_B1A60A: LitI2_Byte 0
  loc_B1A60C: LitStr "right"
  loc_B1A60F: FMemLdR4 var_B0(8)
  loc_B1A614: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1A619: CVarStr var_C0
  loc_B1A61C: PopAdLdVar
  loc_B1A61D: FLdPr Me
  loc_B1A620: MemLdRfVar from_stack_1.global_60
  loc_B1A623: LdPrVar
  loc_B1A625: LateMemCall
  loc_B1A62B: FFree1Var var_C0 = ""
  loc_B1A62E: LitStr vbNullString
  loc_B1A631: LitI2_Byte 0
  loc_B1A633: LitI2_Byte 0
  loc_B1A635: LitI2_Byte 0
  loc_B1A637: LitStr "left"
  loc_B1A63A: FMemLdR4 var_B0(12)
  loc_B1A63F: LitStr " - "
  loc_B1A642: ConcatStr
  loc_B1A643: FStStrNoPop var_C4
  loc_B1A646: FMemLdR4 var_B0(16)
  loc_B1A64B: ConcatStr
  loc_B1A64C: FStStrNoPop var_C8
  loc_B1A64F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1A654: CVarStr var_C0
  loc_B1A657: PopAdLdVar
  loc_B1A658: FLdPr Me
  loc_B1A65B: MemLdRfVar from_stack_1.global_60
  loc_B1A65E: LdPrVar
  loc_B1A660: LateMemCall
  loc_B1A666: FFreeStr var_C4 = ""
  loc_B1A66D: FFree1Var var_C0 = ""
  loc_B1A670: LitStr vbNullString
  loc_B1A673: LitI2_Byte 0
  loc_B1A675: LitI2_Byte 0
  loc_B1A677: LitI2_Byte 0
  loc_B1A679: LitStr "right"
  loc_B1A67C: FMemLdR4 var_B0(20)
  loc_B1A681: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1A686: CVarStr var_C0
  loc_B1A689: PopAdLdVar
  loc_B1A68A: FLdPr Me
  loc_B1A68D: MemLdRfVar from_stack_1.global_60
  loc_B1A690: LdPrVar
  loc_B1A692: LateMemCall
  loc_B1A698: FFree1Var var_C0 = ""
  loc_B1A69B: LitVarStr var_94, "     </tr>"
  loc_B1A6A0: PopAdLdVar
  loc_B1A6A1: FLdPr Me
  loc_B1A6A4: MemLdRfVar from_stack_1.global_60
  loc_B1A6A7: LdPrVar
  loc_B1A6A9: LateMemCall
  loc_B1A6AF: LitI4 0
  loc_B1A6B4: FStR4 var_B0
  loc_B1A6B7: AryUnlock
  loc_B1A6BA: FLdPr Me
  loc_B1A6BD: MemLdRfVar from_stack_1.global_108
  loc_B1A6C0: NextI2 var_A8, loc_B1A585
  loc_B1A6C5: LitVarStr var_94, "  <tr valign=""top"" class=""Totales"">"
  loc_B1A6CA: PopAdLdVar
  loc_B1A6CB: FLdPr Me
  loc_B1A6CE: MemLdRfVar from_stack_1.global_60
  loc_B1A6D1: LdPrVar
  loc_B1A6D3: LateMemCall
  loc_B1A6D9: LitVarStr var_94, "    <td colspan=""4"" align=""right"">Total</td>"
  loc_B1A6DE: PopAdLdVar
  loc_B1A6DF: FLdPr Me
  loc_B1A6E2: MemLdRfVar from_stack_1.global_60
  loc_B1A6E5: LdPrVar
  loc_B1A6E7: LateMemCall
  loc_B1A6ED: LitStr vbNullString
  loc_B1A6F0: LitI2_Byte 0
  loc_B1A6F2: LitI2_Byte 0
  loc_B1A6F4: LitI2_Byte 0
  loc_B1A6F6: LitStr "right"
  loc_B1A6F9: FLdPr Me
  loc_B1A6FC: MemLdStr global_112
  loc_B1A6FF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1A704: CVarStr var_C0
  loc_B1A707: PopAdLdVar
  loc_B1A708: FLdPr Me
  loc_B1A70B: MemLdRfVar from_stack_1.global_60
  loc_B1A70E: LdPrVar
  loc_B1A710: LateMemCall
  loc_B1A716: FFree1Var var_C0 = ""
  loc_B1A719: LitVarStr var_94, "     </tr>"
  loc_B1A71E: PopAdLdVar
  loc_B1A71F: FLdPr Me
  loc_B1A722: MemLdRfVar from_stack_1.global_60
  loc_B1A725: LdPrVar
  loc_B1A727: LateMemCall
  loc_B1A72D: ExitProcHresult
End Function

Private Function Proc_356_17_A0ABC8() 'A0ABC8
  'Data Table: 4551A8
  loc_A0AB88: LitVarStr var_94, "</table>"
  loc_A0AB8D: PopAdLdVar
  loc_A0AB8E: FLdPr Me
  loc_A0AB91: MemLdRfVar from_stack_1.global_60
  loc_A0AB94: LdPrVar
  loc_A0AB96: LateMemCall
  loc_A0AB9C: LitVarStr var_94, "</body>"
  loc_A0ABA1: PopAdLdVar
  loc_A0ABA2: FLdPr Me
  loc_A0ABA5: MemLdRfVar from_stack_1.global_60
  loc_A0ABA8: LdPrVar
  loc_A0ABAA: LateMemCall
  loc_A0ABB0: LitVarStr var_94, "</html>"
  loc_A0ABB5: PopAdLdVar
  loc_A0ABB6: FLdPr Me
  loc_A0ABB9: MemLdRfVar from_stack_1.global_60
  loc_A0ABBC: LdPrVar
  loc_A0ABBE: LateMemCall
  loc_A0ABC4: ExitProcHresult
End Function
