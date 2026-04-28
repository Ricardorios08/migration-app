VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeCobranzadeApremio
  Caption = "Listado de Cobranza de Apremio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeCobranzadeApremio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10740
  ClientHeight = 3840
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
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3585
    Width = 10740
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptListadodeCobranzadeApremio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 2400
    Width = 855
    Height = 735
    TabIndex = 13
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
    Picture = "rptListadodeCobranzadeApremio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeCobranzadeApremio.frx":0B9C
    Left = 9720
    Top = 2640
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 2160
    Width = 3495
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2160
    Width = 4095
    Height = 1215
    TabIndex = 7
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 1935
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame4
      Left = 120
      Top = 240
      Width = 6615
      Height = 1455
      TabIndex = 1
      Begin MSMask.MaskEdBox FealCtctDesdeMsk
        Left = 1680
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptListadodeCobranzadeApremio.frx":0C00
      End
      Begin MSMask.MaskEdBox FealCtctHastaMsk
        Left = 1680
        Top = 840
        Width = 1335
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptListadodeCobranzadeApremio.frx":0CB0
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 840
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 900
        Top = 840
        Width = 705
        Height = 300
        TabIndex = 4
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6840
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 6
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 2760
    Width = 615
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptListadodeCobranzadeApremio.frx":0D60
  End
End

Attribute VB_Name = "rptListadodeCobranzadeApremio"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00563A6C
  bStruc(68) As Byte ' String fields: 17
End Type


Private Sub cmdPredeterminada_Click() '9D13CC
  'Data Table: 478934
  loc_9D13B4: LitI2_Byte 0
  loc_9D13B6: ILdRf Me
  loc_9D13B9: CastAd
  loc_9D13BC: FStAdFunc var_88
  loc_9D13BF: FLdRfVar var_88
  loc_9D13C2: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D13C7: FFree1Ad var_88
  loc_9D13CA: ExitProcHresult
End Sub

Private Sub FealCtctDesdeMsk_UnknownEvent_0 '9C1208
  'Data Table: 478934
  loc_9C11F4: FLdPr Me
  loc_9C11F7: VCallAd Control_ID_FealCtctDesdeMsk
  loc_9C11FA: CVarAd
  loc_9C11FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1203: FFree1Var var_94 = ""
  loc_9C1206: ExitProcHresult
End Sub

Private Function FealCtctDesdeMsk_UnknownEvent_8(arg_C) 'A63200
  'Data Table: 478934
  loc_A631A4: FLdPr Me
  loc_A631A7: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A631AA: FStAdFunc var_88
  loc_A631AD: FLdPr var_88
  loc_A631B0: LateIdLdVar var_98 DispID_15 0
  loc_A631B7: CStrVarTmp
  loc_A631B8: FStStrNoPop var_9C
  loc_A631BB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A631C0: FStStrNoPop var_A0
  loc_A631C3: FLdPr Me
  loc_A631C6: MemStStrCopy
  loc_A631CA: FFreeStr var_9C = ""
  loc_A631D1: FFree1Ad var_88
  loc_A631D4: FFree1Var var_98 = ""
  loc_A631D7: FLdPr Me
  loc_A631DA: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A631DD: FStAdFuncNoPop
  loc_A631E0: CastAd
  loc_A631E3: FStAdFunc var_A4
  loc_A631E6: FLdRfVar var_A4
  loc_A631E9: FLdPr Me
  loc_A631EC: MemLdStr global_108
  loc_A631EF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A631F4: IStI2 arg_C
  loc_A631F7: FFreeAd var_88 = ""
  loc_A631FE: ExitProcHresult
End Function

Private Sub FealCtctDesdeMsk_KeyPress(KeyAscii As Integer) 'A2267C
  'Data Table: 478934
  loc_A22634: ILdI2 KeyAscii
  loc_A22637: CI4UI1
  loc_A22638: LitI4 &H20
  loc_A2263D: EqI4
  loc_A2263E: BranchF loc_A2267B
  loc_A22641: LitVar_Missing var_A4
  loc_A22644: PopAdLdVar
  loc_A22645: LitVarI4
  loc_A2264D: PopAdLdVar
  loc_A2264E: ImpAdLdRf MemVar_D930A4
  loc_A22651: NewIfNullPr frmCalendario
  loc_A22654: frmCalendario.Show from_stack_1, from_stack_2
  loc_A22659: ImpAdLdRf MemVar_D93028
  loc_A2265C: CDargRef
  loc_A22660: FLdPr Me
  loc_A22663: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A22666: FStAdFunc var_A8
  loc_A22669: FLdPr var_A8
  loc_A2266C: LateIdSt
  loc_A22671: FFree1Ad var_A8
  loc_A22674: LitStr vbNullString
  loc_A22677: ImpAdStStrCopy MemVar_D93028
  loc_A2267B: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DD62C
  'Data Table: 478934
  loc_9DD610: LitI2_Byte &HFF
  loc_9DD612: LitI2_Byte 0
  loc_9DD614: ILdRf Me
  loc_9DD617: CastAd
  loc_9DD61A: FStAdFunc var_88
  loc_9DD61D: FLdRfVar var_88
  loc_9DD620: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DD625: FFree1Ad var_88
  loc_9DD628: ExitProcHresult
  loc_9DD629: LtI2
  loc_9DD62A: FStStrNoPop var_4400
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_0 '9C1130
  'Data Table: 478934
  loc_9C111C: FLdPr Me
  loc_9C111F: VCallAd Control_ID_FealCtctHastaMsk
  loc_9C1122: CVarAd
  loc_9C1126: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C112B: FFree1Var var_94 = ""
  loc_9C112E: ExitProcHresult
End Sub

Private Function FealCtctHastaMsk_UnknownEvent_8(arg_C) 'A64920
  'Data Table: 478934
  loc_A648C4: FLdPr Me
  loc_A648C7: VCallAd Control_ID_FealCtctHastaMsk
  loc_A648CA: FStAdFunc var_88
  loc_A648CD: FLdPr var_88
  loc_A648D0: LateIdLdVar var_98 DispID_15 0
  loc_A648D7: CStrVarTmp
  loc_A648D8: FStStrNoPop var_9C
  loc_A648DB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A648E0: FStStrNoPop var_A0
  loc_A648E3: FLdPr Me
  loc_A648E6: MemStStrCopy
  loc_A648EA: FFreeStr var_9C = ""
  loc_A648F1: FFree1Ad var_88
  loc_A648F4: FFree1Var var_98 = ""
  loc_A648F7: FLdPr Me
  loc_A648FA: VCallAd Control_ID_FealCtctHastaMsk
  loc_A648FD: FStAdFuncNoPop
  loc_A64900: CastAd
  loc_A64903: FStAdFunc var_A4
  loc_A64906: FLdRfVar var_A4
  loc_A64909: FLdPr Me
  loc_A6490C: MemLdStr global_108
  loc_A6490F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64914: IStI2 arg_C
  loc_A64917: FFreeAd var_88 = ""
  loc_A6491E: ExitProcHresult
End Function

Private Sub FealCtctHastaMsk_KeyPress(KeyAscii As Integer) 'A21490
  'Data Table: 478934
  loc_A21448: ILdI2 KeyAscii
  loc_A2144B: CI4UI1
  loc_A2144C: LitI4 &H20
  loc_A21451: EqI4
  loc_A21452: BranchF loc_A2148F
  loc_A21455: LitVar_Missing var_A4
  loc_A21458: PopAdLdVar
  loc_A21459: LitVarI4
  loc_A21461: PopAdLdVar
  loc_A21462: ImpAdLdRf MemVar_D930A4
  loc_A21465: NewIfNullPr frmCalendario
  loc_A21468: frmCalendario.Show from_stack_1, from_stack_2
  loc_A2146D: ImpAdLdRf MemVar_D93028
  loc_A21470: CDargRef
  loc_A21474: FLdPr Me
  loc_A21477: VCallAd Control_ID_FealCtctHastaMsk
  loc_A2147A: FStAdFunc var_A8
  loc_A2147D: FLdPr var_A8
  loc_A21480: LateIdSt
  loc_A21485: FFree1Ad var_A8
  loc_A21488: LitStr vbNullString
  loc_A2148B: ImpAdStStrCopy MemVar_D93028
  loc_A2148F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D1418
  'Data Table: 478934
  loc_9D1400: ILdRf Me
  loc_9D1403: CastAd
  loc_9D1406: FStAdFunc var_88
  loc_9D1409: FLdRfVar var_88
  loc_9D140C: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D1411: FFree1Ad var_88
  loc_9D1414: ExitProcHresult
  loc_9D1415: ExitProcCy
  loc_9D1416: UMiR8
End Sub

Private Sub cmdNueva_Click() 'A7B0E0
  'Data Table: 478934
  loc_A7B060: LitI2_Byte 0
  loc_A7B062: FLdPr Me
  loc_A7B065: MemStI2 bGenerado
  loc_A7B068: LitI2_Byte 0
  loc_A7B06A: ILdRf Me
  loc_A7B06D: CastAd
  loc_A7B070: FStAdFunc var_88
  loc_A7B073: FLdRfVar var_88
  loc_A7B076: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A7B07B: FFree1Ad var_88
  loc_A7B07E: LitI2_Byte 0
  loc_A7B080: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A7B085: CStrDate
  loc_A7B087: CVarStr var_98
  loc_A7B08A: PopAdLdVar
  loc_A7B08B: FLdPr Me
  loc_A7B08E: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A7B091: FStAdFunc var_88
  loc_A7B094: FLdPr var_88
  loc_A7B097: LateIdSt
  loc_A7B09C: FFree1Ad var_88
  loc_A7B09F: FFree1Var var_98 = ""
  loc_A7B0A2: LitI2_Byte 0
  loc_A7B0A4: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A7B0A9: CStrDate
  loc_A7B0AB: CVarStr var_98
  loc_A7B0AE: PopAdLdVar
  loc_A7B0AF: FLdPr Me
  loc_A7B0B2: VCallAd Control_ID_FealCtctHastaMsk
  loc_A7B0B5: FStAdFunc var_88
  loc_A7B0B8: FLdPr var_88
  loc_A7B0BB: LateIdSt
  loc_A7B0C0: FFree1Ad var_88
  loc_A7B0C3: FFree1Var var_98 = ""
  loc_A7B0C6: Call HabilitarCriterio()
  loc_A7B0CB: ILdRf Me
  loc_A7B0CE: CastAd
  loc_A7B0D1: FStAdFunc var_88
  loc_A7B0D4: FLdRfVar var_88
  loc_A7B0D7: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A7B0DC: FFree1Ad var_88
  loc_A7B0DF: ExitProcHresult
End Sub

Private Sub Form_Load() '9DE1BC
  'Data Table: 478934
  loc_9DE1A0: ILdRf Me
  loc_9DE1A3: CastAd
  loc_9DE1A6: FStAdFunc var_88
  loc_9DE1A9: FLdRfVar var_88
  loc_9DE1AC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DE1B1: FFree1Ad var_88
  loc_9DE1B4: Call cmdNueva_Click()
  loc_9DE1B9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D01FC
  'Data Table: 478934
  loc_9D01E4: FLdPr Me
  loc_9D01E7: VCallAd Control_ID_wbbReporte
  loc_9D01EA: FStAdFunc var_88
  loc_9D01ED: FLdRfVar var_88
  loc_9D01F0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D01F5: FFree1Ad var_88
  loc_9D01F8: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9FF750
  'Data Table: 478934
  loc_9FF720: LitVarStr var_94, "Cerrando..."
  loc_9FF725: PopAdLdVar
  loc_9FF726: FLdPr Me
  loc_9FF729: VCallAd Control_ID_statusBar
  loc_9FF72C: FStAdFunc var_A8
  loc_9FF72F: FLdPr var_A8
  loc_9FF732: LateIdSt
  loc_9FF737: FFree1Ad var_A8
  loc_9FF73A: ILdRf Me
  loc_9FF73D: FStAdNoPop
  loc_9FF741: ImpAdLdRf MemVar_D9C5D8
  loc_9FF744: NewIfNullPr Global
  loc_9FF747: Global.Unload from_stack_1
  loc_9FF74C: FFree1Ad var_A8
  loc_9FF74F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE57C
  'Data Table: 478934
  loc_9DE560: LitI2_Byte 0
  loc_9DE562: PopTmpLdAd2 var_8A
  loc_9DE565: ILdRf Me
  loc_9DE568: CastAd
  loc_9DE56B: FStAdFunc var_88
  loc_9DE56E: FLdRfVar var_88
  loc_9DE571: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE576: FFree1Ad var_88
  loc_9DE579: ExitProcHresult
  loc_9DE57A: FFree1Ad var_43FD
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A155F8
  'Data Table: 478934
  loc_A155C0: FLdPr Me
  loc_A155C3: VCallAd Control_ID_statusBar
  loc_A155C6: FStAdFunc var_88
  loc_A155C9: FLdPr var_88
  loc_A155CC: LateIdLdVar var_98 DispID_1 0
  loc_A155D3: CStrVarTmp
  loc_A155D4: CVarStr var_A8
  loc_A155D7: PopAdLdVar
  loc_A155D8: FLdPr Me
  loc_A155DB: VCallAd Control_ID_statusBar
  loc_A155DE: FStAdFunc var_BC
  loc_A155E1: FLdPr var_BC
  loc_A155E4: LateIdSt
  loc_A155E9: FFreeAd var_88 = ""
  loc_A155F0: FFreeVar var_98 = ""
  loc_A155F7: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4795B0
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4795BF
  bGenerado = Value
End Sub

Public Function bLogosGet() '4795CE
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4795DD
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A43908
  'Data Table: 478934
  loc_A438C4: LitI4 0
  loc_A438C9: LitI4 1
  loc_A438CE: FLdRfVar var_88
  loc_A438D1: Redim
  loc_A438DB: FLdPr Me
  loc_A438DE: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A438E1: CVarAd
  loc_A438E5: ParmAry1St
  loc_A438EB: FLdPr Me
  loc_A438EE: VCallAd Control_ID_FealCtctHastaMsk
  loc_A438F1: CVarAd
  loc_A438F5: ParmAry1St
  loc_A438FB: FLdRfVar var_88
  loc_A438FE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A43903: FLdRfVar var_88
  loc_A43906: Erase
  loc_A43907: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C0D8C
  'Data Table: 478934
  loc_9C0D74: LitI2_Byte 0
  loc_9C0D76: FLdPr Me
  loc_9C0D79: MemStI2 bLogos
  loc_9C0D7C: Call GeneraHTML()
  loc_9C0D81: LitI2_Byte &HFF
  loc_9C0D83: FLdPr Me
  loc_9C0D86: MemStI2 bLogos
  loc_9C0D89: ExitProcHresult
  loc_9C0D8A: AddR8
End Sub

Public Sub GeneraReporte() 'C12F50
  'Data Table: 478934
  loc_C125D0: FLdPr Me
  loc_C125D3: MemLdI2 bGenerado
  loc_C125D6: BranchF loc_C125DA
  loc_C125D9: ExitProcHresult
  loc_C125DA: LitVarStr var_94, "Generando reporte..."
  loc_C125DF: PopAdLdVar
  loc_C125E0: FLdPr Me
  loc_C125E3: VCallAd Control_ID_statusBar
  loc_C125E6: FStAdFunc var_A8
  loc_C125E9: FLdPr var_A8
  loc_C125EC: LateIdSt
  loc_C125F1: FFree1Ad var_A8
  loc_C125F4: LitI4 &HB
  loc_C125F9: CI2I4
  loc_C125FA: FLdPr Me
  loc_C125FD: Me.MousePointer = from_stack_1
  loc_C12602: LitI2_Byte 0
  loc_C12604: PopTmpLdAd2 var_AA
  loc_C12607: from_stack_2v = FealCtctDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C1260C: FLdPr Me
  loc_C1260F: MemLdStr global_108
  loc_C12612: LitStr vbNullString
  loc_C12615: NeStr
  loc_C12617: BranchF loc_C1261D
  loc_C1261A: Branch loc_C12F27
  loc_C1261D: LitI2_Byte 0
  loc_C1261F: PopTmpLdAd2 var_AA
  loc_C12622: from_stack_2v = FealCtctHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C12627: FLdPr Me
  loc_C1262A: MemLdStr global_108
  loc_C1262D: LitStr vbNullString
  loc_C12630: NeStr
  loc_C12632: BranchF loc_C12638
  loc_C12635: Branch loc_C12F27
  loc_C12638: FLdPr Me
  loc_C1263B: MemLdRfVar from_stack_1.global_92
  loc_C1263E: NewIfNullAd
  loc_C12641: FStAd var_B0 
  loc_C12645: LitStr "Municipalidad de Guaymallén"
  loc_C12648: LitStr "Municipalidad de Malargüe"
  loc_C1264B: EqStr
  loc_C1264D: BranchF loc_C12759
  loc_C12650: FLdPr Me
  loc_C12653: VCallAd Control_ID_FealCtctDesdeMsk
  loc_C12656: FStAdFunc var_A8
  loc_C12659: FLdPr var_A8
  loc_C1265C: LateIdLdVar var_D8 DispID_15 0
  loc_C12663: PopAd
  loc_C12665: FLdPr Me
  loc_C12668: VCallAd Control_ID_FealCtctHastaMsk
  loc_C1266B: FStAdFunc var_108
  loc_C1266E: FLdPr var_108
  loc_C12671: LateIdLdVar var_118 DispID_15 0
  loc_C12678: PopAd
  loc_C1267A: LitStr " SELECT boleapre.FeenAcpa, apremio.CodiOfic, apremio.CuenCtct, apremio.NumeApre, AutoApre, persona.DetaPers, apremio.CodiInju, (CapiApre + TotaApre) TotaApre,"
  loc_C1267D: LitStr " CoadBoap, ApleBoap, ReseBoap, DefiBoap, HoreBoap, MoreBoap, HoofBoap, MoofBoap, "
  loc_C12680: ConcatStr
  loc_C12681: FStStrNoPop var_B4
  loc_C12684: LitStr " CoadBoap + ApleBoap + ReseBoap + DefiBoap + HoreBoap + MoreBoap + HoofBoap + MoofBoap  AS TotaBoap"
  loc_C12687: ConcatStr
  loc_C12688: FStStrNoPop var_B8
  loc_C1268B: LitStr " FROM boleapre"
  loc_C1268E: ConcatStr
  loc_C1268F: FStStrNoPop var_BC
  loc_C12692: LitStr " INNER JOIN apremio ON apremio.NumeApre = boleapre.NumeApre"
  loc_C12695: ConcatStr
  loc_C12696: FStStrNoPop var_C0
  loc_C12699: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = apremio.CucuPers"
  loc_C1269C: ConcatStr
  loc_C1269D: FStStrNoPop var_C4
  loc_C126A0: LitStr " WHERE EstaBoap in ('Actualizado') AND boleapre.FeenAcpa"
  loc_C126A3: ConcatStr
  loc_C126A4: FStStrNoPop var_C8
  loc_C126A7: LitStr " BETWEEN '"
  loc_C126AA: ConcatStr
  loc_C126AB: FStStrNoPop var_FC
  loc_C126AE: LitI4 1
  loc_C126B3: LitI4 1
  loc_C126B8: LitVarStr var_94, "yyyy-mm-dd"
  loc_C126BD: FStVarCopyObj var_F8
  loc_C126C0: FLdRfVar var_F8
  loc_C126C3: FLdRfVar var_D8
  loc_C126C6: CStrVarTmp
  loc_C126C7: CVarStr var_E8
  loc_C126CA: ImpAdCallI2 Format$(, )
  loc_C126CF: FStStrNoPop var_100
  loc_C126D2: ConcatStr
  loc_C126D3: FStStrNoPop var_104
  loc_C126D6: LitStr "' AND '"
  loc_C126D9: ConcatStr
  loc_C126DA: FStStrNoPop var_13C
  loc_C126DD: LitI4 1
  loc_C126E2: LitI4 1
  loc_C126E7: LitVarStr var_A4, "yyyy-mm-dd"
  loc_C126EC: FStVarCopyObj var_138
  loc_C126EF: FLdRfVar var_138
  loc_C126F2: FLdRfVar var_118
  loc_C126F5: CStrVarTmp
  loc_C126F6: CVarStr var_128
  loc_C126F9: ImpAdCallI2 Format$(, )
  loc_C126FE: FStStrNoPop var_140
  loc_C12701: ConcatStr
  loc_C12702: FStStrNoPop var_144
  loc_C12705: LitStr "'"
  loc_C12708: ConcatStr
  loc_C12709: FStStrNoPop var_148
  loc_C1270C: LitStr " ORDER BY boleapre.FeenAcpa"
  loc_C1270F: ConcatStr
  loc_C12710: FStStrNoPop var_14C
  loc_C12713: FLdPr Me
  loc_C12716: MemLdRfVar from_stack_1.global_92
  loc_C12719: NewIfNullPr clsapremio
  loc_C1271C: Call clsapremio.RedefineRS(from_stack_1v)
  loc_C12721: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_FC = "": var_100 = "": var_104 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_C12740: FFreeAd var_A8 = ""
  loc_C12747: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_128 = ""
  loc_C12756: Branch loc_C12772
  loc_C12759: LitStr "Municipalidad de Guaymallén"
  loc_C1275C: LitStr "Municipalidad de General Alvear"
  loc_C1275F: EqStr
  loc_C12761: BranchF loc_C12767
  loc_C12764: Branch loc_C12772
  loc_C12767: LitStr "Municipalidad de Guaymallén"
  loc_C1276A: LitStr "Municipalidad de Guaymallén"
  loc_C1276D: EqStr
  loc_C1276F: BranchF loc_C12772
  loc_C12772: FLdRfVar var_150
  loc_C12775: FLdPr var_B0
  loc_C12778: from_stack_1 = clsapremio.RecordCount
  loc_C1277D: ILdRf var_150
  loc_C12780: LitI4 0
  loc_C12785: EqI4
  loc_C12786: BranchF loc_C12794
  loc_C12789: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C1278C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C12791: Branch loc_C12F27
  loc_C12794: LitI4 0
  loc_C12799: LitI4 1
  loc_C1279E: FLdPr Me
  loc_C127A1: MemLdRfVar from_stack_1.global_96
  loc_C127A4: Redim
  loc_C127AE: LitI4 0
  loc_C127B3: FLdRfVar var_150
  loc_C127B6: FLdPr var_B0
  loc_C127B9: from_stack_1 = clsapremio.RecordCount
  loc_C127BE: ILdRf var_150
  loc_C127C1: FLdPr Me
  loc_C127C4: MemLdRfVar from_stack_1.global_100
  loc_C127C7: Redim
  loc_C127D1: FLdPr var_B0
  loc_C127D4: Call clsapremio.MoveFirst()
  loc_C127D9: LitI4 1
  loc_C127DE: FLdPr Me
  loc_C127E1: MemLdRfVar from_stack_1.global_104
  loc_C127E4: FLdPr Me
  loc_C127E7: MemLdStr global_100
  loc_C127EA: LitI2_Byte 1
  loc_C127EC: FnUBound
  loc_C127EE: ForI4 var_158
  loc_C127F4: FLdRfVar var_15C
  loc_C127F7: LitVarStr var_94, "FeenAcpa"
  loc_C127FC: PopAdLdVar
  loc_C127FD: FLdRfVar var_108
  loc_C12800: FLdRfVar var_A8
  loc_C12803: FLdPr var_B0
  loc_C12806: from_stack_1v = clsapremio.RsFrmGet()
  loc_C1280B: FLdPr var_A8
  loc_C1280E:  = Me.Fields
  loc_C12813: FLdPr var_108
  loc_C12816: from_stack_2 = Me.Item(from_stack_1)
  loc_C1281B: LitI2_Byte 0
  loc_C1281D: LitVar_Missing var_E8
  loc_C12820: LitI2_Byte 0
  loc_C12822: FLdZeroAd var_15C
  loc_C12825: CVarAd
  loc_C12829: PopAdLdVar
  loc_C1282A: FLdPr Me
  loc_C1282D: MemLdStr global_104
  loc_C12830: FLdPr Me
  loc_C12833: MemLdStr global_100
  loc_C12836: AryLock
  loc_C12839: Ary1LdPr
  loc_C1283A: MemLdRfVar from_stack_1.global_0
  loc_C1283D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12842: AryUnlock
  loc_C12845: FFreeAd var_A8 = ""
  loc_C1284C: FFreeVar var_D8 = ""
  loc_C12853: FLdRfVar var_15C
  loc_C12856: LitVarStr var_94, "CodiOfic"
  loc_C1285B: PopAdLdVar
  loc_C1285C: FLdRfVar var_108
  loc_C1285F: FLdRfVar var_A8
  loc_C12862: FLdPr var_B0
  loc_C12865: from_stack_1v = clsapremio.RsFrmGet()
  loc_C1286A: FLdPr var_A8
  loc_C1286D:  = Me.Fields
  loc_C12872: FLdPr var_108
  loc_C12875: from_stack_2 = Me.Item(from_stack_1)
  loc_C1287A: LitI2_Byte 0
  loc_C1287C: LitVar_Missing var_E8
  loc_C1287F: LitI2_Byte 0
  loc_C12881: FLdZeroAd var_15C
  loc_C12884: CVarAd
  loc_C12888: PopAdLdVar
  loc_C12889: FLdPr Me
  loc_C1288C: MemLdStr global_104
  loc_C1288F: FLdPr Me
  loc_C12892: MemLdStr global_100
  loc_C12895: AryLock
  loc_C12898: Ary1LdPr
  loc_C12899: MemLdRfVar from_stack_1.global_4
  loc_C1289C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C128A1: AryUnlock
  loc_C128A4: FFreeAd var_A8 = ""
  loc_C128AB: FFreeVar var_D8 = ""
  loc_C128B2: FLdRfVar var_15C
  loc_C128B5: LitVarStr var_94, "CuenCtct"
  loc_C128BA: PopAdLdVar
  loc_C128BB: FLdRfVar var_108
  loc_C128BE: FLdRfVar var_A8
  loc_C128C1: FLdPr var_B0
  loc_C128C4: from_stack_1v = clsapremio.RsFrmGet()
  loc_C128C9: FLdPr var_A8
  loc_C128CC:  = Me.Fields
  loc_C128D1: FLdPr var_108
  loc_C128D4: from_stack_2 = Me.Item(from_stack_1)
  loc_C128D9: LitI2_Byte 0
  loc_C128DB: LitVar_Missing var_E8
  loc_C128DE: LitI2_Byte 0
  loc_C128E0: FLdZeroAd var_15C
  loc_C128E3: CVarAd
  loc_C128E7: PopAdLdVar
  loc_C128E8: FLdPr Me
  loc_C128EB: MemLdStr global_104
  loc_C128EE: FLdPr Me
  loc_C128F1: MemLdStr global_100
  loc_C128F4: AryLock
  loc_C128F7: Ary1LdPr
  loc_C128F8: MemLdRfVar from_stack_1.global_8
  loc_C128FB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12900: AryUnlock
  loc_C12903: FFreeAd var_A8 = ""
  loc_C1290A: FFreeVar var_D8 = ""
  loc_C12911: FLdRfVar var_15C
  loc_C12914: LitVarStr var_94, "NumeApre"
  loc_C12919: PopAdLdVar
  loc_C1291A: FLdRfVar var_108
  loc_C1291D: FLdRfVar var_A8
  loc_C12920: FLdPr var_B0
  loc_C12923: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12928: FLdPr var_A8
  loc_C1292B:  = Me.Fields
  loc_C12930: FLdPr var_108
  loc_C12933: from_stack_2 = Me.Item(from_stack_1)
  loc_C12938: LitI2_Byte 0
  loc_C1293A: LitVar_Missing var_E8
  loc_C1293D: LitI2_Byte 0
  loc_C1293F: FLdZeroAd var_15C
  loc_C12942: CVarAd
  loc_C12946: PopAdLdVar
  loc_C12947: FLdPr Me
  loc_C1294A: MemLdStr global_104
  loc_C1294D: FLdPr Me
  loc_C12950: MemLdStr global_100
  loc_C12953: AryLock
  loc_C12956: Ary1LdPr
  loc_C12957: MemLdRfVar from_stack_1.global_12
  loc_C1295A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1295F: AryUnlock
  loc_C12962: FFreeAd var_A8 = ""
  loc_C12969: FFreeVar var_D8 = ""
  loc_C12970: FLdRfVar var_15C
  loc_C12973: LitVarStr var_94, "AutoApre"
  loc_C12978: PopAdLdVar
  loc_C12979: FLdRfVar var_108
  loc_C1297C: FLdRfVar var_A8
  loc_C1297F: FLdPr var_B0
  loc_C12982: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12987: FLdPr var_A8
  loc_C1298A:  = Me.Fields
  loc_C1298F: FLdPr var_108
  loc_C12992: from_stack_2 = Me.Item(from_stack_1)
  loc_C12997: LitI2_Byte 0
  loc_C12999: LitVar_Missing var_E8
  loc_C1299C: LitI2_Byte 0
  loc_C1299E: FLdZeroAd var_15C
  loc_C129A1: CVarAd
  loc_C129A5: PopAdLdVar
  loc_C129A6: FLdPr Me
  loc_C129A9: MemLdStr global_104
  loc_C129AC: FLdPr Me
  loc_C129AF: MemLdStr global_100
  loc_C129B2: AryLock
  loc_C129B5: Ary1LdPr
  loc_C129B6: MemLdRfVar from_stack_1.global_16
  loc_C129B9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C129BE: AryUnlock
  loc_C129C1: FFreeAd var_A8 = ""
  loc_C129C8: FFreeVar var_D8 = ""
  loc_C129CF: FLdRfVar var_15C
  loc_C129D2: LitVarStr var_94, "DetaPers"
  loc_C129D7: PopAdLdVar
  loc_C129D8: FLdRfVar var_108
  loc_C129DB: FLdRfVar var_A8
  loc_C129DE: FLdPr var_B0
  loc_C129E1: from_stack_1v = clsapremio.RsFrmGet()
  loc_C129E6: FLdPr var_A8
  loc_C129E9:  = Me.Fields
  loc_C129EE: FLdPr var_108
  loc_C129F1: from_stack_2 = Me.Item(from_stack_1)
  loc_C129F6: LitI2_Byte 0
  loc_C129F8: LitVar_Missing var_E8
  loc_C129FB: LitI2_Byte 0
  loc_C129FD: FLdZeroAd var_15C
  loc_C12A00: CVarAd
  loc_C12A04: PopAdLdVar
  loc_C12A05: FLdPr Me
  loc_C12A08: MemLdStr global_104
  loc_C12A0B: FLdPr Me
  loc_C12A0E: MemLdStr global_100
  loc_C12A11: AryLock
  loc_C12A14: Ary1LdPr
  loc_C12A15: MemLdRfVar from_stack_1.global_20
  loc_C12A18: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12A1D: AryUnlock
  loc_C12A20: FFreeAd var_A8 = ""
  loc_C12A27: FFreeVar var_D8 = ""
  loc_C12A2E: FLdRfVar var_15C
  loc_C12A31: LitVarStr var_94, "CodiInju"
  loc_C12A36: PopAdLdVar
  loc_C12A37: FLdRfVar var_108
  loc_C12A3A: FLdRfVar var_A8
  loc_C12A3D: FLdPr var_B0
  loc_C12A40: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12A45: FLdPr var_A8
  loc_C12A48:  = Me.Fields
  loc_C12A4D: FLdPr var_108
  loc_C12A50: from_stack_2 = Me.Item(from_stack_1)
  loc_C12A55: LitI2_Byte 0
  loc_C12A57: LitVar_Missing var_E8
  loc_C12A5A: LitI2_Byte 0
  loc_C12A5C: FLdZeroAd var_15C
  loc_C12A5F: CVarAd
  loc_C12A63: PopAdLdVar
  loc_C12A64: FLdPr Me
  loc_C12A67: MemLdStr global_104
  loc_C12A6A: FLdPr Me
  loc_C12A6D: MemLdStr global_100
  loc_C12A70: AryLock
  loc_C12A73: Ary1LdPr
  loc_C12A74: MemLdRfVar from_stack_1.global_24
  loc_C12A77: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12A7C: AryUnlock
  loc_C12A7F: FFreeAd var_A8 = ""
  loc_C12A86: FFreeVar var_D8 = ""
  loc_C12A8D: FLdRfVar var_15C
  loc_C12A90: LitVarStr var_94, "TotaApre"
  loc_C12A95: PopAdLdVar
  loc_C12A96: FLdRfVar var_108
  loc_C12A99: FLdRfVar var_A8
  loc_C12A9C: FLdPr var_B0
  loc_C12A9F: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12AA4: FLdPr var_A8
  loc_C12AA7:  = Me.Fields
  loc_C12AAC: FLdPr var_108
  loc_C12AAF: from_stack_2 = Me.Item(from_stack_1)
  loc_C12AB4: LitI2_Byte 0
  loc_C12AB6: LitI4 1
  loc_C12ABB: FLdPr Me
  loc_C12ABE: MemLdStr global_96
  loc_C12AC1: AryLock
  loc_C12AC4: Ary1LdPr
  loc_C12AC5: MemLdRfVar from_stack_1.global_28
  loc_C12AC8: CVarRef
  loc_C12ACD: LitI2_Byte &HFF
  loc_C12ACF: FLdZeroAd var_15C
  loc_C12AD2: CVarAd
  loc_C12AD6: PopAdLdVar
  loc_C12AD7: FLdPr Me
  loc_C12ADA: MemLdStr global_104
  loc_C12ADD: FLdPr Me
  loc_C12AE0: MemLdStr global_100
  loc_C12AE3: AryLock
  loc_C12AE6: Ary1LdPr
  loc_C12AE7: MemLdRfVar from_stack_1.global_28
  loc_C12AEA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12AEF: AryUnlock
  loc_C12AF2: AryUnlock
  loc_C12AF5: FFreeAd var_A8 = ""
  loc_C12AFC: FFree1Var var_D8 = ""
  loc_C12AFF: FLdRfVar var_15C
  loc_C12B02: LitVarStr var_94, "CoadBoap"
  loc_C12B07: PopAdLdVar
  loc_C12B08: FLdRfVar var_108
  loc_C12B0B: FLdRfVar var_A8
  loc_C12B0E: FLdPr var_B0
  loc_C12B11: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12B16: FLdPr var_A8
  loc_C12B19:  = Me.Fields
  loc_C12B1E: FLdPr var_108
  loc_C12B21: from_stack_2 = Me.Item(from_stack_1)
  loc_C12B26: LitI2_Byte 0
  loc_C12B28: LitI4 1
  loc_C12B2D: FLdPr Me
  loc_C12B30: MemLdStr global_96
  loc_C12B33: AryLock
  loc_C12B36: Ary1LdPr
  loc_C12B37: MemLdRfVar from_stack_1.global_32
  loc_C12B3A: CVarRef
  loc_C12B3F: LitI2_Byte &HFF
  loc_C12B41: FLdZeroAd var_15C
  loc_C12B44: CVarAd
  loc_C12B48: PopAdLdVar
  loc_C12B49: FLdPr Me
  loc_C12B4C: MemLdStr global_104
  loc_C12B4F: FLdPr Me
  loc_C12B52: MemLdStr global_100
  loc_C12B55: AryLock
  loc_C12B58: Ary1LdPr
  loc_C12B59: MemLdRfVar from_stack_1.global_32
  loc_C12B5C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12B61: AryUnlock
  loc_C12B64: AryUnlock
  loc_C12B67: FFreeAd var_A8 = ""
  loc_C12B6E: FFree1Var var_D8 = ""
  loc_C12B71: FLdRfVar var_15C
  loc_C12B74: LitVarStr var_94, "ApleBoap"
  loc_C12B79: PopAdLdVar
  loc_C12B7A: FLdRfVar var_108
  loc_C12B7D: FLdRfVar var_A8
  loc_C12B80: FLdPr var_B0
  loc_C12B83: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12B88: FLdPr var_A8
  loc_C12B8B:  = Me.Fields
  loc_C12B90: FLdPr var_108
  loc_C12B93: from_stack_2 = Me.Item(from_stack_1)
  loc_C12B98: LitI2_Byte 0
  loc_C12B9A: LitI4 1
  loc_C12B9F: FLdPr Me
  loc_C12BA2: MemLdStr global_96
  loc_C12BA5: AryLock
  loc_C12BA8: Ary1LdPr
  loc_C12BA9: MemLdRfVar from_stack_1.global_36
  loc_C12BAC: CVarRef
  loc_C12BB1: LitI2_Byte &HFF
  loc_C12BB3: FLdZeroAd var_15C
  loc_C12BB6: CVarAd
  loc_C12BBA: PopAdLdVar
  loc_C12BBB: FLdPr Me
  loc_C12BBE: MemLdStr global_104
  loc_C12BC1: FLdPr Me
  loc_C12BC4: MemLdStr global_100
  loc_C12BC7: AryLock
  loc_C12BCA: Ary1LdPr
  loc_C12BCB: MemLdRfVar from_stack_1.global_36
  loc_C12BCE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12BD3: AryUnlock
  loc_C12BD6: AryUnlock
  loc_C12BD9: FFreeAd var_A8 = ""
  loc_C12BE0: FFree1Var var_D8 = ""
  loc_C12BE3: FLdRfVar var_15C
  loc_C12BE6: LitVarStr var_94, "ReseBoap"
  loc_C12BEB: PopAdLdVar
  loc_C12BEC: FLdRfVar var_108
  loc_C12BEF: FLdRfVar var_A8
  loc_C12BF2: FLdPr var_B0
  loc_C12BF5: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12BFA: FLdPr var_A8
  loc_C12BFD:  = Me.Fields
  loc_C12C02: FLdPr var_108
  loc_C12C05: from_stack_2 = Me.Item(from_stack_1)
  loc_C12C0A: LitI2_Byte 0
  loc_C12C0C: LitI4 1
  loc_C12C11: FLdPr Me
  loc_C12C14: MemLdStr global_96
  loc_C12C17: AryLock
  loc_C12C1A: Ary1LdPr
  loc_C12C1B: MemLdRfVar from_stack_1.global_40
  loc_C12C1E: CVarRef
  loc_C12C23: LitI2_Byte &HFF
  loc_C12C25: FLdZeroAd var_15C
  loc_C12C28: CVarAd
  loc_C12C2C: PopAdLdVar
  loc_C12C2D: FLdPr Me
  loc_C12C30: MemLdStr global_104
  loc_C12C33: FLdPr Me
  loc_C12C36: MemLdStr global_100
  loc_C12C39: AryLock
  loc_C12C3C: Ary1LdPr
  loc_C12C3D: MemLdRfVar from_stack_1.global_40
  loc_C12C40: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12C45: AryUnlock
  loc_C12C48: AryUnlock
  loc_C12C4B: FFreeAd var_A8 = ""
  loc_C12C52: FFree1Var var_D8 = ""
  loc_C12C55: FLdRfVar var_15C
  loc_C12C58: LitVarStr var_94, "DefiBoap"
  loc_C12C5D: PopAdLdVar
  loc_C12C5E: FLdRfVar var_108
  loc_C12C61: FLdRfVar var_A8
  loc_C12C64: FLdPr var_B0
  loc_C12C67: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12C6C: FLdPr var_A8
  loc_C12C6F:  = Me.Fields
  loc_C12C74: FLdPr var_108
  loc_C12C77: from_stack_2 = Me.Item(from_stack_1)
  loc_C12C7C: LitI2_Byte 0
  loc_C12C7E: LitI4 1
  loc_C12C83: FLdPr Me
  loc_C12C86: MemLdStr global_96
  loc_C12C89: AryLock
  loc_C12C8C: Ary1LdPr
  loc_C12C8D: MemLdRfVar from_stack_1.global_44
  loc_C12C90: CVarRef
  loc_C12C95: LitI2_Byte &HFF
  loc_C12C97: FLdZeroAd var_15C
  loc_C12C9A: CVarAd
  loc_C12C9E: PopAdLdVar
  loc_C12C9F: FLdPr Me
  loc_C12CA2: MemLdStr global_104
  loc_C12CA5: FLdPr Me
  loc_C12CA8: MemLdStr global_100
  loc_C12CAB: AryLock
  loc_C12CAE: Ary1LdPr
  loc_C12CAF: MemLdRfVar from_stack_1.global_44
  loc_C12CB2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12CB7: AryUnlock
  loc_C12CBA: AryUnlock
  loc_C12CBD: FFreeAd var_A8 = ""
  loc_C12CC4: FFree1Var var_D8 = ""
  loc_C12CC7: FLdRfVar var_15C
  loc_C12CCA: LitVarStr var_94, "HoreBoap"
  loc_C12CCF: PopAdLdVar
  loc_C12CD0: FLdRfVar var_108
  loc_C12CD3: FLdRfVar var_A8
  loc_C12CD6: FLdPr var_B0
  loc_C12CD9: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12CDE: FLdPr var_A8
  loc_C12CE1:  = Me.Fields
  loc_C12CE6: FLdPr var_108
  loc_C12CE9: from_stack_2 = Me.Item(from_stack_1)
  loc_C12CEE: LitI2_Byte 0
  loc_C12CF0: LitI4 1
  loc_C12CF5: FLdPr Me
  loc_C12CF8: MemLdStr global_96
  loc_C12CFB: AryLock
  loc_C12CFE: Ary1LdPr
  loc_C12CFF: MemLdRfVar from_stack_1.global_48
  loc_C12D02: CVarRef
  loc_C12D07: LitI2_Byte &HFF
  loc_C12D09: FLdZeroAd var_15C
  loc_C12D0C: CVarAd
  loc_C12D10: PopAdLdVar
  loc_C12D11: FLdPr Me
  loc_C12D14: MemLdStr global_104
  loc_C12D17: FLdPr Me
  loc_C12D1A: MemLdStr global_100
  loc_C12D1D: AryLock
  loc_C12D20: Ary1LdPr
  loc_C12D21: MemLdRfVar from_stack_1.global_48
  loc_C12D24: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12D29: AryUnlock
  loc_C12D2C: AryUnlock
  loc_C12D2F: FFreeAd var_A8 = ""
  loc_C12D36: FFree1Var var_D8 = ""
  loc_C12D39: FLdRfVar var_15C
  loc_C12D3C: LitVarStr var_94, "MoreBoap"
  loc_C12D41: PopAdLdVar
  loc_C12D42: FLdRfVar var_108
  loc_C12D45: FLdRfVar var_A8
  loc_C12D48: FLdPr var_B0
  loc_C12D4B: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12D50: FLdPr var_A8
  loc_C12D53:  = Me.Fields
  loc_C12D58: FLdPr var_108
  loc_C12D5B: from_stack_2 = Me.Item(from_stack_1)
  loc_C12D60: LitI2_Byte 0
  loc_C12D62: LitI4 1
  loc_C12D67: FLdPr Me
  loc_C12D6A: MemLdStr global_96
  loc_C12D6D: AryLock
  loc_C12D70: Ary1LdPr
  loc_C12D71: MemLdRfVar from_stack_1.bGenerado
  loc_C12D74: CVarRef
  loc_C12D79: LitI2_Byte &HFF
  loc_C12D7B: FLdZeroAd var_15C
  loc_C12D7E: CVarAd
  loc_C12D82: PopAdLdVar
  loc_C12D83: FLdPr Me
  loc_C12D86: MemLdStr global_104
  loc_C12D89: FLdPr Me
  loc_C12D8C: MemLdStr global_100
  loc_C12D8F: AryLock
  loc_C12D92: Ary1LdPr
  loc_C12D93: MemLdRfVar from_stack_1.bGenerado
  loc_C12D96: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12D9B: AryUnlock
  loc_C12D9E: AryUnlock
  loc_C12DA1: FFreeAd var_A8 = ""
  loc_C12DA8: FFree1Var var_D8 = ""
  loc_C12DAB: FLdRfVar var_15C
  loc_C12DAE: LitVarStr var_94, "HoofBoap"
  loc_C12DB3: PopAdLdVar
  loc_C12DB4: FLdRfVar var_108
  loc_C12DB7: FLdRfVar var_A8
  loc_C12DBA: FLdPr var_B0
  loc_C12DBD: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12DC2: FLdPr var_A8
  loc_C12DC5:  = Me.Fields
  loc_C12DCA: FLdPr var_108
  loc_C12DCD: from_stack_2 = Me.Item(from_stack_1)
  loc_C12DD2: LitI2_Byte 0
  loc_C12DD4: LitI4 1
  loc_C12DD9: FLdPr Me
  loc_C12DDC: MemLdStr global_96
  loc_C12DDF: AryLock
  loc_C12DE2: Ary1LdPr
  loc_C12DE3: MemLdRfVar from_stack_1.global_56
  loc_C12DE6: CVarRef
  loc_C12DEB: LitI2_Byte &HFF
  loc_C12DED: FLdZeroAd var_15C
  loc_C12DF0: CVarAd
  loc_C12DF4: PopAdLdVar
  loc_C12DF5: FLdPr Me
  loc_C12DF8: MemLdStr global_104
  loc_C12DFB: FLdPr Me
  loc_C12DFE: MemLdStr global_100
  loc_C12E01: AryLock
  loc_C12E04: Ary1LdPr
  loc_C12E05: MemLdRfVar from_stack_1.global_56
  loc_C12E08: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12E0D: AryUnlock
  loc_C12E10: AryUnlock
  loc_C12E13: FFreeAd var_A8 = ""
  loc_C12E1A: FFree1Var var_D8 = ""
  loc_C12E1D: FLdRfVar var_15C
  loc_C12E20: LitVarStr var_94, "MoofBoap"
  loc_C12E25: PopAdLdVar
  loc_C12E26: FLdRfVar var_108
  loc_C12E29: FLdRfVar var_A8
  loc_C12E2C: FLdPr var_B0
  loc_C12E2F: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12E34: FLdPr var_A8
  loc_C12E37:  = Me.Fields
  loc_C12E3C: FLdPr var_108
  loc_C12E3F: from_stack_2 = Me.Item(from_stack_1)
  loc_C12E44: LitI2_Byte 0
  loc_C12E46: LitI4 1
  loc_C12E4B: FLdPr Me
  loc_C12E4E: MemLdStr global_96
  loc_C12E51: AryLock
  loc_C12E54: Ary1LdPr
  loc_C12E55: MemLdRfVar from_stack_1.global_60
  loc_C12E58: CVarRef
  loc_C12E5D: LitI2_Byte &HFF
  loc_C12E5F: FLdZeroAd var_15C
  loc_C12E62: CVarAd
  loc_C12E66: PopAdLdVar
  loc_C12E67: FLdPr Me
  loc_C12E6A: MemLdStr global_104
  loc_C12E6D: FLdPr Me
  loc_C12E70: MemLdStr global_100
  loc_C12E73: AryLock
  loc_C12E76: Ary1LdPr
  loc_C12E77: MemLdRfVar from_stack_1.global_60
  loc_C12E7A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12E7F: AryUnlock
  loc_C12E82: AryUnlock
  loc_C12E85: FFreeAd var_A8 = ""
  loc_C12E8C: FFree1Var var_D8 = ""
  loc_C12E8F: FLdRfVar var_15C
  loc_C12E92: LitVarStr var_94, "TotaBoap"
  loc_C12E97: PopAdLdVar
  loc_C12E98: FLdRfVar var_108
  loc_C12E9B: FLdRfVar var_A8
  loc_C12E9E: FLdPr var_B0
  loc_C12EA1: from_stack_1v = clsapremio.RsFrmGet()
  loc_C12EA6: FLdPr var_A8
  loc_C12EA9:  = Me.Fields
  loc_C12EAE: FLdPr var_108
  loc_C12EB1: from_stack_2 = Me.Item(from_stack_1)
  loc_C12EB6: LitI2_Byte 0
  loc_C12EB8: LitI4 1
  loc_C12EBD: FLdPr Me
  loc_C12EC0: MemLdStr global_96
  loc_C12EC3: AryLock
  loc_C12EC6: Ary1LdPr
  loc_C12EC7: MemLdRfVar from_stack_1.global_64
  loc_C12ECA: CVarRef
  loc_C12ECF: LitI2_Byte &HFF
  loc_C12ED1: FLdZeroAd var_15C
  loc_C12ED4: CVarAd
  loc_C12ED8: PopAdLdVar
  loc_C12ED9: FLdPr Me
  loc_C12EDC: MemLdStr global_104
  loc_C12EDF: FLdPr Me
  loc_C12EE2: MemLdStr global_100
  loc_C12EE5: AryLock
  loc_C12EE8: Ary1LdPr
  loc_C12EE9: MemLdRfVar from_stack_1.global_64
  loc_C12EEC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C12EF1: AryUnlock
  loc_C12EF4: AryUnlock
  loc_C12EF7: FFreeAd var_A8 = ""
  loc_C12EFE: FFree1Var var_D8 = ""
  loc_C12F01: LitI2_Byte 1
  loc_C12F03: PopTmpLdAd2 var_AA
  loc_C12F06: FLdPr var_B0
  loc_C12F09: Call clsapremio.Move(from_stack_1v)
  loc_C12F0E: FLdPr Me
  loc_C12F11: MemLdRfVar from_stack_1.global_104
  loc_C12F14: NextI4 var_158, loc_C127F4
  loc_C12F19: LitNothing
  loc_C12F1B: FStAd var_B0 
  loc_C12F1F: LitI2_Byte &HFF
  loc_C12F21: FLdPr Me
  loc_C12F24: MemStI2 bGenerado
  loc_C12F27: LitI4 0
  loc_C12F2C: CI2I4
  loc_C12F2D: FLdPr Me
  loc_C12F30: Me.MousePointer = from_stack_1
  loc_C12F35: LitVarStr var_94, vbNullString
  loc_C12F3A: PopAdLdVar
  loc_C12F3B: FLdPr Me
  loc_C12F3E: VCallAd Control_ID_statusBar
  loc_C12F41: FStAdFunc var_A8
  loc_C12F44: FLdPr var_A8
  loc_C12F47: LateIdSt
  loc_C12F4C: FFree1Ad var_A8
  loc_C12F4F: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B963C4
  'Data Table: 478934
  loc_B95E28: FLdRfVar var_88
  loc_B95E2B: LitI2_Byte 0
  loc_B95E2D: LitI2_Byte &HFF
  loc_B95E2F: ImpAdLdI4 MemVar_D93C84
  loc_B95E32: FLdPr Me
  loc_B95E35: MemLdRfVar from_stack_1.global_56
  loc_B95E38: NewIfNullPr IFileSystem3
  loc_B95E3B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B95E40: ILdRf var_88
  loc_B95E43: FLdPr Me
  loc_B95E46: MemStVarAd
  loc_B95E4A: FFree1Ad var_88
  loc_B95E4D: LitI2_Byte &HFF
  loc_B95E4F: ImpAdStI2 MemVar_D93C8A
  loc_B95E52: Call Proc_338_24_BCD424()
  loc_B95E57: LitI4 1
  loc_B95E5C: FLdPr Me
  loc_B95E5F: MemLdRfVar from_stack_1.global_104
  loc_B95E62: FLdPr Me
  loc_B95E65: MemLdStr global_100
  loc_B95E68: LitI2_Byte 1
  loc_B95E6A: FnUBound
  loc_B95E6C: ForI4 var_90
  loc_B95E72: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B95E77: PopAdLdVar
  loc_B95E78: FLdPr Me
  loc_B95E7B: MemLdRfVar from_stack_1.global_60
  loc_B95E7E: LdPrVar
  loc_B95E80: LateMemCall
  loc_B95E86: FLdPr Me
  loc_B95E89: MemLdStr global_104
  loc_B95E8C: FLdPr Me
  loc_B95E8F: MemLdStr global_100
  loc_B95E92: AryLock
  loc_B95E95: Ary1LdRf
  loc_B95E96: FStR4 var_B8
  loc_B95E99: LitStr vbNullString
  loc_B95E9C: LitI2_Byte 0
  loc_B95E9E: LitI2_Byte 0
  loc_B95EA0: LitI2_Byte 0
  loc_B95EA2: LitStr "center"
  loc_B95EA5: FMemLdR4 var_B8(0)
  loc_B95EAA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B95EAF: CVarStr var_C8
  loc_B95EB2: PopAdLdVar
  loc_B95EB3: FLdPr Me
  loc_B95EB6: MemLdRfVar from_stack_1.global_60
  loc_B95EB9: LdPrVar
  loc_B95EBB: LateMemCall
  loc_B95EC1: FFree1Var var_C8 = ""
  loc_B95EC4: LitStr vbNullString
  loc_B95EC7: LitI2_Byte 0
  loc_B95EC9: LitI2_Byte 0
  loc_B95ECB: LitI2_Byte 0
  loc_B95ECD: LitStr "right"
  loc_B95ED0: FMemLdR4 var_B8(4)
  loc_B95ED5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B95EDA: CVarStr var_C8
  loc_B95EDD: PopAdLdVar
  loc_B95EDE: FLdPr Me
  loc_B95EE1: MemLdRfVar from_stack_1.global_60
  loc_B95EE4: LdPrVar
  loc_B95EE6: LateMemCall
  loc_B95EEC: FFree1Var var_C8 = ""
  loc_B95EEF: LitStr vbNullString
  loc_B95EF2: LitI2_Byte 0
  loc_B95EF4: LitI2_Byte 0
  loc_B95EF6: LitI2_Byte 0
  loc_B95EF8: LitStr "right"
  loc_B95EFB: FMemLdR4 var_B8(8)
  loc_B95F00: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B95F05: CVarStr var_C8
  loc_B95F08: PopAdLdVar
  loc_B95F09: FLdPr Me
  loc_B95F0C: MemLdRfVar from_stack_1.global_60
  loc_B95F0F: LdPrVar
  loc_B95F11: LateMemCall
  loc_B95F17: FFree1Var var_C8 = ""
  loc_B95F1A: LitStr vbNullString
  loc_B95F1D: LitI2_Byte 0
  loc_B95F1F: LitI2_Byte 0
  loc_B95F21: LitI2_Byte 0
  loc_B95F23: LitStr "right"
  loc_B95F26: FMemLdR4 var_B8(12)
  loc_B95F2B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B95F30: CVarStr var_C8
  loc_B95F33: PopAdLdVar
  loc_B95F34: FLdPr Me
  loc_B95F37: MemLdRfVar from_stack_1.global_60
  loc_B95F3A: LdPrVar
  loc_B95F3C: LateMemCall
  loc_B95F42: FFree1Var var_C8 = ""
  loc_B95F45: LitStr vbNullString
  loc_B95F48: LitI2_Byte 0
  loc_B95F4A: LitI2_Byte 0
  loc_B95F4C: LitI2_Byte 0
  loc_B95F4E: LitStr "right"
  loc_B95F51: FMemLdR4 var_B8(16)
  loc_B95F56: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B95F5B: CVarStr var_C8
  loc_B95F5E: PopAdLdVar
  loc_B95F5F: FLdPr Me
  loc_B95F62: MemLdRfVar from_stack_1.global_60
  loc_B95F65: LdPrVar
  loc_B95F67: LateMemCall
  loc_B95F6D: FFree1Var var_C8 = ""
  loc_B95F70: LitStr vbNullString
  loc_B95F73: LitI2_Byte 0
  loc_B95F75: LitI2_Byte 0
  loc_B95F77: LitI2_Byte 0
  loc_B95F79: LitStr "left"
  loc_B95F7C: FMemLdR4 var_B8(20)
  loc_B95F81: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B95F86: CVarStr var_C8
  loc_B95F89: PopAdLdVar
  loc_B95F8A: FLdPr Me
  loc_B95F8D: MemLdRfVar from_stack_1.global_60
  loc_B95F90: LdPrVar
  loc_B95F92: LateMemCall
  loc_B95F98: FFree1Var var_C8 = ""
  loc_B95F9B: LitStr vbNullString
  loc_B95F9E: LitI2_Byte 0
  loc_B95FA0: LitI2_Byte 0
  loc_B95FA2: LitI2_Byte 0
  loc_B95FA4: LitStr "left"
  loc_B95FA7: FMemLdR4 var_B8(24)
  loc_B95FAC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B95FB1: CVarStr var_C8
  loc_B95FB4: PopAdLdVar
  loc_B95FB5: FLdPr Me
  loc_B95FB8: MemLdRfVar from_stack_1.global_60
  loc_B95FBB: LdPrVar
  loc_B95FBD: LateMemCall
  loc_B95FC3: FFree1Var var_C8 = ""
  loc_B95FC6: LitStr vbNullString
  loc_B95FC9: LitI2_Byte 0
  loc_B95FCB: LitI2_Byte 0
  loc_B95FCD: LitI2_Byte 0
  loc_B95FCF: LitStr "right"
  loc_B95FD2: FMemLdR4 var_B8(28)
  loc_B95FD7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B95FDC: CVarStr var_C8
  loc_B95FDF: PopAdLdVar
  loc_B95FE0: FLdPr Me
  loc_B95FE3: MemLdRfVar from_stack_1.global_60
  loc_B95FE6: LdPrVar
  loc_B95FE8: LateMemCall
  loc_B95FEE: FFree1Var var_C8 = ""
  loc_B95FF1: LitStr vbNullString
  loc_B95FF4: LitI2_Byte 0
  loc_B95FF6: LitI2_Byte 0
  loc_B95FF8: LitI2_Byte 0
  loc_B95FFA: LitStr "right"
  loc_B95FFD: FMemLdR4 var_B8(32)
  loc_B96002: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B96007: CVarStr var_C8
  loc_B9600A: PopAdLdVar
  loc_B9600B: FLdPr Me
  loc_B9600E: MemLdRfVar from_stack_1.global_60
  loc_B96011: LdPrVar
  loc_B96013: LateMemCall
  loc_B96019: FFree1Var var_C8 = ""
  loc_B9601C: LitStr vbNullString
  loc_B9601F: LitI2_Byte 0
  loc_B96021: LitI2_Byte 0
  loc_B96023: LitI2_Byte 0
  loc_B96025: LitStr "right"
  loc_B96028: FMemLdR4 var_B8(36)
  loc_B9602D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B96032: CVarStr var_C8
  loc_B96035: PopAdLdVar
  loc_B96036: FLdPr Me
  loc_B96039: MemLdRfVar from_stack_1.global_60
  loc_B9603C: LdPrVar
  loc_B9603E: LateMemCall
  loc_B96044: FFree1Var var_C8 = ""
  loc_B96047: LitStr vbNullString
  loc_B9604A: LitI2_Byte 0
  loc_B9604C: LitI2_Byte 0
  loc_B9604E: LitI2_Byte 0
  loc_B96050: LitStr "right"
  loc_B96053: FMemLdR4 var_B8(40)
  loc_B96058: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9605D: CVarStr var_C8
  loc_B96060: PopAdLdVar
  loc_B96061: FLdPr Me
  loc_B96064: MemLdRfVar from_stack_1.global_60
  loc_B96067: LdPrVar
  loc_B96069: LateMemCall
  loc_B9606F: FFree1Var var_C8 = ""
  loc_B96072: LitStr vbNullString
  loc_B96075: LitI2_Byte 0
  loc_B96077: LitI2_Byte 0
  loc_B96079: LitI2_Byte 0
  loc_B9607B: LitStr "right"
  loc_B9607E: FMemLdR4 var_B8(44)
  loc_B96083: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B96088: CVarStr var_C8
  loc_B9608B: PopAdLdVar
  loc_B9608C: FLdPr Me
  loc_B9608F: MemLdRfVar from_stack_1.global_60
  loc_B96092: LdPrVar
  loc_B96094: LateMemCall
  loc_B9609A: FFree1Var var_C8 = ""
  loc_B9609D: LitStr vbNullString
  loc_B960A0: LitI2_Byte 0
  loc_B960A2: LitI2_Byte 0
  loc_B960A4: LitI2_Byte 0
  loc_B960A6: LitStr "right"
  loc_B960A9: FMemLdR4 var_B8(48)
  loc_B960AE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B960B3: CVarStr var_C8
  loc_B960B6: PopAdLdVar
  loc_B960B7: FLdPr Me
  loc_B960BA: MemLdRfVar from_stack_1.global_60
  loc_B960BD: LdPrVar
  loc_B960BF: LateMemCall
  loc_B960C5: FFree1Var var_C8 = ""
  loc_B960C8: LitStr vbNullString
  loc_B960CB: LitI2_Byte 0
  loc_B960CD: LitI2_Byte 0
  loc_B960CF: LitI2_Byte 0
  loc_B960D1: LitStr "right"
  loc_B960D4: FMemLdR4 var_B8(52)
  loc_B960D9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B960DE: CVarStr var_C8
  loc_B960E1: PopAdLdVar
  loc_B960E2: FLdPr Me
  loc_B960E5: MemLdRfVar from_stack_1.global_60
  loc_B960E8: LdPrVar
  loc_B960EA: LateMemCall
  loc_B960F0: FFree1Var var_C8 = ""
  loc_B960F3: LitStr vbNullString
  loc_B960F6: LitI2_Byte 0
  loc_B960F8: LitI2_Byte 0
  loc_B960FA: LitI2_Byte 0
  loc_B960FC: LitStr "right"
  loc_B960FF: FMemLdR4 var_B8(56)
  loc_B96104: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B96109: CVarStr var_C8
  loc_B9610C: PopAdLdVar
  loc_B9610D: FLdPr Me
  loc_B96110: MemLdRfVar from_stack_1.global_60
  loc_B96113: LdPrVar
  loc_B96115: LateMemCall
  loc_B9611B: FFree1Var var_C8 = ""
  loc_B9611E: LitStr vbNullString
  loc_B96121: LitI2_Byte 0
  loc_B96123: LitI2_Byte 0
  loc_B96125: LitI2_Byte 0
  loc_B96127: LitStr "right"
  loc_B9612A: FMemLdR4 var_B8(60)
  loc_B9612F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B96134: CVarStr var_C8
  loc_B96137: PopAdLdVar
  loc_B96138: FLdPr Me
  loc_B9613B: MemLdRfVar from_stack_1.global_60
  loc_B9613E: LdPrVar
  loc_B96140: LateMemCall
  loc_B96146: FFree1Var var_C8 = ""
  loc_B96149: LitStr vbNullString
  loc_B9614C: LitI2_Byte 0
  loc_B9614E: LitI2_Byte 0
  loc_B96150: LitI2_Byte 0
  loc_B96152: LitStr "right"
  loc_B96155: FMemLdR4 var_B8(64)
  loc_B9615A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9615F: CVarStr var_C8
  loc_B96162: PopAdLdVar
  loc_B96163: FLdPr Me
  loc_B96166: MemLdRfVar from_stack_1.global_60
  loc_B96169: LdPrVar
  loc_B9616B: LateMemCall
  loc_B96171: FFree1Var var_C8 = ""
  loc_B96174: LitI4 0
  loc_B96179: FStR4 var_B8
  loc_B9617C: AryUnlock
  loc_B9617F: LitVarStr var_A0, "     </tr>"
  loc_B96184: PopAdLdVar
  loc_B96185: FLdPr Me
  loc_B96188: MemLdRfVar from_stack_1.global_60
  loc_B9618B: LdPrVar
  loc_B9618D: LateMemCall
  loc_B96193: FLdPr Me
  loc_B96196: MemLdRfVar from_stack_1.global_104
  loc_B96199: NextI4 var_90, loc_B95E72
  loc_B9619E: LitVarStr var_A0, "  <tr valign=""top"" class=""Totales"">"
  loc_B961A3: PopAdLdVar
  loc_B961A4: FLdPr Me
  loc_B961A7: MemLdRfVar from_stack_1.global_60
  loc_B961AA: LdPrVar
  loc_B961AC: LateMemCall
  loc_B961B2: LitVarStr var_A0, "    <td colspan=""7"" align=""right"">Totales</td>"
  loc_B961B7: PopAdLdVar
  loc_B961B8: FLdPr Me
  loc_B961BB: MemLdRfVar from_stack_1.global_60
  loc_B961BE: LdPrVar
  loc_B961C0: LateMemCall
  loc_B961C6: LitI4 1
  loc_B961CB: FLdPr Me
  loc_B961CE: MemLdStr global_96
  loc_B961D1: AryLock
  loc_B961D4: Ary1LdRf
  loc_B961D5: FStR4 var_D0
  loc_B961D8: LitStr vbNullString
  loc_B961DB: LitI2_Byte 0
  loc_B961DD: LitI2_Byte 0
  loc_B961DF: LitI2_Byte 0
  loc_B961E1: LitStr "right"
  loc_B961E4: FMemLdR4 var_D0(28)
  loc_B961E9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B961EE: CVarStr var_C8
  loc_B961F1: PopAdLdVar
  loc_B961F2: FLdPr Me
  loc_B961F5: MemLdRfVar from_stack_1.global_60
  loc_B961F8: LdPrVar
  loc_B961FA: LateMemCall
  loc_B96200: FFree1Var var_C8 = ""
  loc_B96203: LitStr vbNullString
  loc_B96206: LitI2_Byte 0
  loc_B96208: LitI2_Byte 0
  loc_B9620A: LitI2_Byte 0
  loc_B9620C: LitStr "right"
  loc_B9620F: FMemLdR4 var_D0(32)
  loc_B96214: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B96219: CVarStr var_C8
  loc_B9621C: PopAdLdVar
  loc_B9621D: FLdPr Me
  loc_B96220: MemLdRfVar from_stack_1.global_60
  loc_B96223: LdPrVar
  loc_B96225: LateMemCall
  loc_B9622B: FFree1Var var_C8 = ""
  loc_B9622E: LitStr vbNullString
  loc_B96231: LitI2_Byte 0
  loc_B96233: LitI2_Byte 0
  loc_B96235: LitI2_Byte 0
  loc_B96237: LitStr "right"
  loc_B9623A: FMemLdR4 var_D0(36)
  loc_B9623F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B96244: CVarStr var_C8
  loc_B96247: PopAdLdVar
  loc_B96248: FLdPr Me
  loc_B9624B: MemLdRfVar from_stack_1.global_60
  loc_B9624E: LdPrVar
  loc_B96250: LateMemCall
  loc_B96256: FFree1Var var_C8 = ""
  loc_B96259: LitStr vbNullString
  loc_B9625C: LitI2_Byte 0
  loc_B9625E: LitI2_Byte 0
  loc_B96260: LitI2_Byte 0
  loc_B96262: LitStr "right"
  loc_B96265: FMemLdR4 var_D0(40)
  loc_B9626A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9626F: CVarStr var_C8
  loc_B96272: PopAdLdVar
  loc_B96273: FLdPr Me
  loc_B96276: MemLdRfVar from_stack_1.global_60
  loc_B96279: LdPrVar
  loc_B9627B: LateMemCall
  loc_B96281: FFree1Var var_C8 = ""
  loc_B96284: LitStr vbNullString
  loc_B96287: LitI2_Byte 0
  loc_B96289: LitI2_Byte 0
  loc_B9628B: LitI2_Byte 0
  loc_B9628D: LitStr "right"
  loc_B96290: FMemLdR4 var_D0(44)
  loc_B96295: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9629A: CVarStr var_C8
  loc_B9629D: PopAdLdVar
  loc_B9629E: FLdPr Me
  loc_B962A1: MemLdRfVar from_stack_1.global_60
  loc_B962A4: LdPrVar
  loc_B962A6: LateMemCall
  loc_B962AC: FFree1Var var_C8 = ""
  loc_B962AF: LitStr vbNullString
  loc_B962B2: LitI2_Byte 0
  loc_B962B4: LitI2_Byte 0
  loc_B962B6: LitI2_Byte 0
  loc_B962B8: LitStr "right"
  loc_B962BB: FMemLdR4 var_D0(48)
  loc_B962C0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B962C5: CVarStr var_C8
  loc_B962C8: PopAdLdVar
  loc_B962C9: FLdPr Me
  loc_B962CC: MemLdRfVar from_stack_1.global_60
  loc_B962CF: LdPrVar
  loc_B962D1: LateMemCall
  loc_B962D7: FFree1Var var_C8 = ""
  loc_B962DA: LitStr vbNullString
  loc_B962DD: LitI2_Byte 0
  loc_B962DF: LitI2_Byte 0
  loc_B962E1: LitI2_Byte 0
  loc_B962E3: LitStr "right"
  loc_B962E6: FMemLdR4 var_D0(52)
  loc_B962EB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B962F0: CVarStr var_C8
  loc_B962F3: PopAdLdVar
  loc_B962F4: FLdPr Me
  loc_B962F7: MemLdRfVar from_stack_1.global_60
  loc_B962FA: LdPrVar
  loc_B962FC: LateMemCall
  loc_B96302: FFree1Var var_C8 = ""
  loc_B96305: LitStr vbNullString
  loc_B96308: LitI2_Byte 0
  loc_B9630A: LitI2_Byte 0
  loc_B9630C: LitI2_Byte 0
  loc_B9630E: LitStr "right"
  loc_B96311: FMemLdR4 var_D0(56)
  loc_B96316: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9631B: CVarStr var_C8
  loc_B9631E: PopAdLdVar
  loc_B9631F: FLdPr Me
  loc_B96322: MemLdRfVar from_stack_1.global_60
  loc_B96325: LdPrVar
  loc_B96327: LateMemCall
  loc_B9632D: FFree1Var var_C8 = ""
  loc_B96330: LitStr vbNullString
  loc_B96333: LitI2_Byte 0
  loc_B96335: LitI2_Byte 0
  loc_B96337: LitI2_Byte 0
  loc_B96339: LitStr "right"
  loc_B9633C: FMemLdR4 var_D0(60)
  loc_B96341: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B96346: CVarStr var_C8
  loc_B96349: PopAdLdVar
  loc_B9634A: FLdPr Me
  loc_B9634D: MemLdRfVar from_stack_1.global_60
  loc_B96350: LdPrVar
  loc_B96352: LateMemCall
  loc_B96358: FFree1Var var_C8 = ""
  loc_B9635B: LitStr vbNullString
  loc_B9635E: LitI2_Byte 0
  loc_B96360: LitI2_Byte 0
  loc_B96362: LitI2_Byte 0
  loc_B96364: LitStr "right"
  loc_B96367: FMemLdR4 var_D0(64)
  loc_B9636C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B96371: CVarStr var_C8
  loc_B96374: PopAdLdVar
  loc_B96375: FLdPr Me
  loc_B96378: MemLdRfVar from_stack_1.global_60
  loc_B9637B: LdPrVar
  loc_B9637D: LateMemCall
  loc_B96383: FFree1Var var_C8 = ""
  loc_B96386: LitI4 0
  loc_B9638B: FStR4 var_D0
  loc_B9638E: AryUnlock
  loc_B96391: LitVarStr var_A0, "     </tr>"
  loc_B96396: PopAdLdVar
  loc_B96397: FLdPr Me
  loc_B9639A: MemLdRfVar from_stack_1.global_60
  loc_B9639D: LdPrVar
  loc_B9639F: LateMemCall
  loc_B963A5: Call Proc_338_25_A0E048()
  loc_B963AA: FLdPr Me
  loc_B963AD: MemLdRfVar from_stack_1.global_60
  loc_B963B0: LdPrVar
  loc_B963B2: LateMemCall
  loc_B963B8: LitStr vbNullString
  loc_B963BB: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B963C0: ExitProcHresult
End Sub

Public Sub GeneraTXT() '9AF178
  'Data Table: 478934
  loc_9AF174: ExitProcHresult
  loc_9AF175: AryLdPr
End Sub

Private Function Proc_338_24_BCD424() 'BCD424
  'Data Table: 478934
  loc_BCCD10: LitVarStr var_94, "<html>"
  loc_BCCD15: PopAdLdVar
  loc_BCCD16: FLdPr Me
  loc_BCCD19: MemLdRfVar from_stack_1.global_60
  loc_BCCD1C: LdPrVar
  loc_BCCD1E: LateMemCall
  loc_BCCD24: LitVarStr var_94, "<head>"
  loc_BCCD29: PopAdLdVar
  loc_BCCD2A: FLdPr Me
  loc_BCCD2D: MemLdRfVar from_stack_1.global_60
  loc_BCCD30: LdPrVar
  loc_BCCD32: LateMemCall
  loc_BCCD38: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BCCD3D: PopAdLdVar
  loc_BCCD3E: FLdPr Me
  loc_BCCD41: MemLdRfVar from_stack_1.global_60
  loc_BCCD44: LdPrVar
  loc_BCCD46: LateMemCall
  loc_BCCD4C: LitStr "<title>"
  loc_BCCD4F: FLdRfVar var_A8
  loc_BCCD52: FLdPr Me
  loc_BCCD55:  = Me.Caption
  loc_BCCD5A: ILdRf var_A8
  loc_BCCD5D: ConcatStr
  loc_BCCD5E: FStStrNoPop var_AC
  loc_BCCD61: LitStr "</title>"
  loc_BCCD64: ConcatStr
  loc_BCCD65: CVarStr var_BC
  loc_BCCD68: PopAdLdVar
  loc_BCCD69: FLdPr Me
  loc_BCCD6C: MemLdRfVar from_stack_1.global_60
  loc_BCCD6F: LdPrVar
  loc_BCCD71: LateMemCall
  loc_BCCD77: FFreeStr var_A8 = ""
  loc_BCCD7E: FFree1Var var_BC = ""
  loc_BCCD81: LitVarStr var_94, "<style type=""text/css"">"
  loc_BCCD86: PopAdLdVar
  loc_BCCD87: FLdPr Me
  loc_BCCD8A: MemLdRfVar from_stack_1.global_60
  loc_BCCD8D: LdPrVar
  loc_BCCD8F: LateMemCall
  loc_BCCD95: LitVarStr var_94, ".Titulo1 {"
  loc_BCCD9A: PopAdLdVar
  loc_BCCD9B: FLdPr Me
  loc_BCCD9E: MemLdRfVar from_stack_1.global_60
  loc_BCCDA1: LdPrVar
  loc_BCCDA3: LateMemCall
  loc_BCCDA9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCCDAE: PopAdLdVar
  loc_BCCDAF: FLdPr Me
  loc_BCCDB2: MemLdRfVar from_stack_1.global_60
  loc_BCCDB5: LdPrVar
  loc_BCCDB7: LateMemCall
  loc_BCCDBD: LitVarStr var_94, " font-size: 18px;"
  loc_BCCDC2: PopAdLdVar
  loc_BCCDC3: FLdPr Me
  loc_BCCDC6: MemLdRfVar from_stack_1.global_60
  loc_BCCDC9: LdPrVar
  loc_BCCDCB: LateMemCall
  loc_BCCDD1: LitVarStr var_94, " font-weight: bold;"
  loc_BCCDD6: PopAdLdVar
  loc_BCCDD7: FLdPr Me
  loc_BCCDDA: MemLdRfVar from_stack_1.global_60
  loc_BCCDDD: LdPrVar
  loc_BCCDDF: LateMemCall
  loc_BCCDE5: LitVarStr var_94, "}"
  loc_BCCDEA: PopAdLdVar
  loc_BCCDEB: FLdPr Me
  loc_BCCDEE: MemLdRfVar from_stack_1.global_60
  loc_BCCDF1: LdPrVar
  loc_BCCDF3: LateMemCall
  loc_BCCDF9: LitVarStr var_94, ".Titulo2 {"
  loc_BCCDFE: PopAdLdVar
  loc_BCCDFF: FLdPr Me
  loc_BCCE02: MemLdRfVar from_stack_1.global_60
  loc_BCCE05: LdPrVar
  loc_BCCE07: LateMemCall
  loc_BCCE0D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCCE12: PopAdLdVar
  loc_BCCE13: FLdPr Me
  loc_BCCE16: MemLdRfVar from_stack_1.global_60
  loc_BCCE19: LdPrVar
  loc_BCCE1B: LateMemCall
  loc_BCCE21: LitVarStr var_94, " font-size: 14px;"
  loc_BCCE26: PopAdLdVar
  loc_BCCE27: FLdPr Me
  loc_BCCE2A: MemLdRfVar from_stack_1.global_60
  loc_BCCE2D: LdPrVar
  loc_BCCE2F: LateMemCall
  loc_BCCE35: LitVarStr var_94, " font-weight: bold;"
  loc_BCCE3A: PopAdLdVar
  loc_BCCE3B: FLdPr Me
  loc_BCCE3E: MemLdRfVar from_stack_1.global_60
  loc_BCCE41: LdPrVar
  loc_BCCE43: LateMemCall
  loc_BCCE49: LitVarStr var_94, "}"
  loc_BCCE4E: PopAdLdVar
  loc_BCCE4F: FLdPr Me
  loc_BCCE52: MemLdRfVar from_stack_1.global_60
  loc_BCCE55: LdPrVar
  loc_BCCE57: LateMemCall
  loc_BCCE5D: LitVarStr var_94, ".Normal {"
  loc_BCCE62: PopAdLdVar
  loc_BCCE63: FLdPr Me
  loc_BCCE66: MemLdRfVar from_stack_1.global_60
  loc_BCCE69: LdPrVar
  loc_BCCE6B: LateMemCall
  loc_BCCE71: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCCE76: PopAdLdVar
  loc_BCCE77: FLdPr Me
  loc_BCCE7A: MemLdRfVar from_stack_1.global_60
  loc_BCCE7D: LdPrVar
  loc_BCCE7F: LateMemCall
  loc_BCCE85: LitVarStr var_94, " font-size: 12px;"
  loc_BCCE8A: PopAdLdVar
  loc_BCCE8B: FLdPr Me
  loc_BCCE8E: MemLdRfVar from_stack_1.global_60
  loc_BCCE91: LdPrVar
  loc_BCCE93: LateMemCall
  loc_BCCE99: LitVarStr var_94, " font-style: normal;"
  loc_BCCE9E: PopAdLdVar
  loc_BCCE9F: FLdPr Me
  loc_BCCEA2: MemLdRfVar from_stack_1.global_60
  loc_BCCEA5: LdPrVar
  loc_BCCEA7: LateMemCall
  loc_BCCEAD: LitVarStr var_94, " font-weight: normal;"
  loc_BCCEB2: PopAdLdVar
  loc_BCCEB3: FLdPr Me
  loc_BCCEB6: MemLdRfVar from_stack_1.global_60
  loc_BCCEB9: LdPrVar
  loc_BCCEBB: LateMemCall
  loc_BCCEC1: LitVarStr var_94, " font-variant: normal;"
  loc_BCCEC6: PopAdLdVar
  loc_BCCEC7: FLdPr Me
  loc_BCCECA: MemLdRfVar from_stack_1.global_60
  loc_BCCECD: LdPrVar
  loc_BCCECF: LateMemCall
  loc_BCCED5: LitVarStr var_94, "}"
  loc_BCCEDA: PopAdLdVar
  loc_BCCEDB: FLdPr Me
  loc_BCCEDE: MemLdRfVar from_stack_1.global_60
  loc_BCCEE1: LdPrVar
  loc_BCCEE3: LateMemCall
  loc_BCCEE9: LitVarStr var_94, ".Encabezado {"
  loc_BCCEEE: PopAdLdVar
  loc_BCCEEF: FLdPr Me
  loc_BCCEF2: MemLdRfVar from_stack_1.global_60
  loc_BCCEF5: LdPrVar
  loc_BCCEF7: LateMemCall
  loc_BCCEFD: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BCCF02: PopAdLdVar
  loc_BCCF03: FLdPr Me
  loc_BCCF06: MemLdRfVar from_stack_1.global_60
  loc_BCCF09: LdPrVar
  loc_BCCF0B: LateMemCall
  loc_BCCF11: LitVarStr var_94, " font-size: 11px;"
  loc_BCCF16: PopAdLdVar
  loc_BCCF17: FLdPr Me
  loc_BCCF1A: MemLdRfVar from_stack_1.global_60
  loc_BCCF1D: LdPrVar
  loc_BCCF1F: LateMemCall
  loc_BCCF25: LitVarStr var_94, " font-weight: bold;"
  loc_BCCF2A: PopAdLdVar
  loc_BCCF2B: FLdPr Me
  loc_BCCF2E: MemLdRfVar from_stack_1.global_60
  loc_BCCF31: LdPrVar
  loc_BCCF33: LateMemCall
  loc_BCCF39: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BCCF3E: PopAdLdVar
  loc_BCCF3F: FLdPr Me
  loc_BCCF42: MemLdRfVar from_stack_1.global_60
  loc_BCCF45: LdPrVar
  loc_BCCF47: LateMemCall
  loc_BCCF4D: LitVarStr var_94, "}"
  loc_BCCF52: PopAdLdVar
  loc_BCCF53: FLdPr Me
  loc_BCCF56: MemLdRfVar from_stack_1.global_60
  loc_BCCF59: LdPrVar
  loc_BCCF5B: LateMemCall
  loc_BCCF61: LitVarStr var_94, ".LineaDato {"
  loc_BCCF66: PopAdLdVar
  loc_BCCF67: FLdPr Me
  loc_BCCF6A: MemLdRfVar from_stack_1.global_60
  loc_BCCF6D: LdPrVar
  loc_BCCF6F: LateMemCall
  loc_BCCF75: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCCF7A: PopAdLdVar
  loc_BCCF7B: FLdPr Me
  loc_BCCF7E: MemLdRfVar from_stack_1.global_60
  loc_BCCF81: LdPrVar
  loc_BCCF83: LateMemCall
  loc_BCCF89: LitVarStr var_94, " font-size: 10px;"
  loc_BCCF8E: PopAdLdVar
  loc_BCCF8F: FLdPr Me
  loc_BCCF92: MemLdRfVar from_stack_1.global_60
  loc_BCCF95: LdPrVar
  loc_BCCF97: LateMemCall
  loc_BCCF9D: LitVarStr var_94, "}"
  loc_BCCFA2: PopAdLdVar
  loc_BCCFA3: FLdPr Me
  loc_BCCFA6: MemLdRfVar from_stack_1.global_60
  loc_BCCFA9: LdPrVar
  loc_BCCFAB: LateMemCall
  loc_BCCFB1: LitVarStr var_94, ".Totales {"
  loc_BCCFB6: PopAdLdVar
  loc_BCCFB7: FLdPr Me
  loc_BCCFBA: MemLdRfVar from_stack_1.global_60
  loc_BCCFBD: LdPrVar
  loc_BCCFBF: LateMemCall
  loc_BCCFC5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCCFCA: PopAdLdVar
  loc_BCCFCB: FLdPr Me
  loc_BCCFCE: MemLdRfVar from_stack_1.global_60
  loc_BCCFD1: LdPrVar
  loc_BCCFD3: LateMemCall
  loc_BCCFD9: LitVarStr var_94, " font-size: 12px;"
  loc_BCCFDE: PopAdLdVar
  loc_BCCFDF: FLdPr Me
  loc_BCCFE2: MemLdRfVar from_stack_1.global_60
  loc_BCCFE5: LdPrVar
  loc_BCCFE7: LateMemCall
  loc_BCCFED: LitVarStr var_94, " font-weight: bold;"
  loc_BCCFF2: PopAdLdVar
  loc_BCCFF3: FLdPr Me
  loc_BCCFF6: MemLdRfVar from_stack_1.global_60
  loc_BCCFF9: LdPrVar
  loc_BCCFFB: LateMemCall
  loc_BCD001: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCD006: PopAdLdVar
  loc_BCD007: FLdPr Me
  loc_BCD00A: MemLdRfVar from_stack_1.global_60
  loc_BCD00D: LdPrVar
  loc_BCD00F: LateMemCall
  loc_BCD015: LitVarStr var_94, "}"
  loc_BCD01A: PopAdLdVar
  loc_BCD01B: FLdPr Me
  loc_BCD01E: MemLdRfVar from_stack_1.global_60
  loc_BCD021: LdPrVar
  loc_BCD023: LateMemCall
  loc_BCD029: LitVarStr var_94, ".SubTotales {"
  loc_BCD02E: PopAdLdVar
  loc_BCD02F: FLdPr Me
  loc_BCD032: MemLdRfVar from_stack_1.global_60
  loc_BCD035: LdPrVar
  loc_BCD037: LateMemCall
  loc_BCD03D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCD042: PopAdLdVar
  loc_BCD043: FLdPr Me
  loc_BCD046: MemLdRfVar from_stack_1.global_60
  loc_BCD049: LdPrVar
  loc_BCD04B: LateMemCall
  loc_BCD051: LitVarStr var_94, " font-size: 10px;"
  loc_BCD056: PopAdLdVar
  loc_BCD057: FLdPr Me
  loc_BCD05A: MemLdRfVar from_stack_1.global_60
  loc_BCD05D: LdPrVar
  loc_BCD05F: LateMemCall
  loc_BCD065: LitVarStr var_94, " font-weight: bold;"
  loc_BCD06A: PopAdLdVar
  loc_BCD06B: FLdPr Me
  loc_BCD06E: MemLdRfVar from_stack_1.global_60
  loc_BCD071: LdPrVar
  loc_BCD073: LateMemCall
  loc_BCD079: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCD07E: PopAdLdVar
  loc_BCD07F: FLdPr Me
  loc_BCD082: MemLdRfVar from_stack_1.global_60
  loc_BCD085: LdPrVar
  loc_BCD087: LateMemCall
  loc_BCD08D: LitVarStr var_94, "}"
  loc_BCD092: PopAdLdVar
  loc_BCD093: FLdPr Me
  loc_BCD096: MemLdRfVar from_stack_1.global_60
  loc_BCD099: LdPrVar
  loc_BCD09B: LateMemCall
  loc_BCD0A1: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BCD0A6: PopAdLdVar
  loc_BCD0A7: FLdPr Me
  loc_BCD0AA: MemLdRfVar from_stack_1.global_60
  loc_BCD0AD: LdPrVar
  loc_BCD0AF: LateMemCall
  loc_BCD0B5: LitVarStr var_94, "</style>"
  loc_BCD0BA: PopAdLdVar
  loc_BCD0BB: FLdPr Me
  loc_BCD0BE: MemLdRfVar from_stack_1.global_60
  loc_BCD0C1: LdPrVar
  loc_BCD0C3: LateMemCall
  loc_BCD0C9: LitI4 0
  loc_BCD0CE: FStStrCopy var_AC
  loc_BCD0D1: FLdRfVar var_AC
  loc_BCD0D4: LitI4 0
  loc_BCD0D9: FStStrCopy var_A8
  loc_BCD0DC: FLdRfVar var_A8
  loc_BCD0DF: LitI2_Byte &HFF
  loc_BCD0E1: PopTmpLdAd2 var_BE
  loc_BCD0E4: FLdPr Me
  loc_BCD0E7: MemLdRfVar from_stack_1.global_60
  loc_BCD0EA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BCD0EF: FFreeStr var_A8 = ""
  loc_BCD0F6: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BCD0FB: PopAdLdVar
  loc_BCD0FC: FLdPr Me
  loc_BCD0FF: MemLdRfVar from_stack_1.global_60
  loc_BCD102: LdPrVar
  loc_BCD104: LateMemCall
  loc_BCD10A: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BCD10F: PopAdLdVar
  loc_BCD110: FLdPr Me
  loc_BCD113: MemLdRfVar from_stack_1.global_60
  loc_BCD116: LdPrVar
  loc_BCD118: LateMemCall
  loc_BCD11E: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BCD123: PopAdLdVar
  loc_BCD124: FLdPr Me
  loc_BCD127: MemLdRfVar from_stack_1.global_60
  loc_BCD12A: LdPrVar
  loc_BCD12C: LateMemCall
  loc_BCD132: FLdPr Me
  loc_BCD135: MemLdI2 bLogos
  loc_BCD138: BranchF loc_BCD181
  loc_BCD13B: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BCD13E: LitI2_Byte &H5F
  loc_BCD140: CStrUI1
  loc_BCD142: FStStrNoPop var_A8
  loc_BCD145: ConcatStr
  loc_BCD146: FStStrNoPop var_AC
  loc_BCD149: LitStr """ height="""
  loc_BCD14C: ConcatStr
  loc_BCD14D: FStStrNoPop var_C4
  loc_BCD150: LitI2_Byte &H3C
  loc_BCD152: CStrUI1
  loc_BCD154: FStStrNoPop var_C8
  loc_BCD157: ConcatStr
  loc_BCD158: FStStrNoPop var_CC
  loc_BCD15B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BCD15E: ConcatStr
  loc_BCD15F: CVarStr var_BC
  loc_BCD162: PopAdLdVar
  loc_BCD163: FLdPr Me
  loc_BCD166: MemLdRfVar from_stack_1.global_60
  loc_BCD169: LdPrVar
  loc_BCD16B: LateMemCall
  loc_BCD171: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BCD17E: FFree1Var var_BC = ""
  loc_BCD181: LitStr "     <br>"
  loc_BCD184: LitStr "Municipalidad de Guaymallén"
  loc_BCD187: ConcatStr
  loc_BCD188: FStStrNoPop var_A8
  loc_BCD18B: LitStr "</p>"
  loc_BCD18E: ConcatStr
  loc_BCD18F: CVarStr var_BC
  loc_BCD192: PopAdLdVar
  loc_BCD193: FLdPr Me
  loc_BCD196: MemLdRfVar from_stack_1.global_60
  loc_BCD199: LdPrVar
  loc_BCD19B: LateMemCall
  loc_BCD1A1: FFree1Str var_A8
  loc_BCD1A4: FFree1Var var_BC = ""
  loc_BCD1A7: LitStr "    <p>"
  loc_BCD1AA: FLdRfVar var_A8
  loc_BCD1AD: FLdPr Me
  loc_BCD1B0:  = Me.Caption
  loc_BCD1B5: ILdRf var_A8
  loc_BCD1B8: ConcatStr
  loc_BCD1B9: FStStrNoPop var_AC
  loc_BCD1BC: LitStr "</p></th>"
  loc_BCD1BF: ConcatStr
  loc_BCD1C0: CVarStr var_BC
  loc_BCD1C3: PopAdLdVar
  loc_BCD1C4: FLdPr Me
  loc_BCD1C7: MemLdRfVar from_stack_1.global_60
  loc_BCD1CA: LdPrVar
  loc_BCD1CC: LateMemCall
  loc_BCD1D2: FFreeStr var_A8 = ""
  loc_BCD1D9: FFree1Var var_BC = ""
  loc_BCD1DC: LitVarStr var_94, "  </tr>"
  loc_BCD1E1: PopAdLdVar
  loc_BCD1E2: FLdPr Me
  loc_BCD1E5: MemLdRfVar from_stack_1.global_60
  loc_BCD1E8: LdPrVar
  loc_BCD1EA: LateMemCall
  loc_BCD1F0: LitVarStr var_94, "  <tr>"
  loc_BCD1F5: PopAdLdVar
  loc_BCD1F6: FLdPr Me
  loc_BCD1F9: MemLdRfVar from_stack_1.global_60
  loc_BCD1FC: LdPrVar
  loc_BCD1FE: LateMemCall
  loc_BCD204: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_BCD209: PopAdLdVar
  loc_BCD20A: FLdPr Me
  loc_BCD20D: MemLdRfVar from_stack_1.global_60
  loc_BCD210: LdPrVar
  loc_BCD212: LateMemCall
  loc_BCD218: LitVarStr var_94, "  </tr>"
  loc_BCD21D: PopAdLdVar
  loc_BCD21E: FLdPr Me
  loc_BCD221: MemLdRfVar from_stack_1.global_60
  loc_BCD224: LdPrVar
  loc_BCD226: LateMemCall
  loc_BCD22C: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BCD231: PopAdLdVar
  loc_BCD232: FLdPr Me
  loc_BCD235: MemLdRfVar from_stack_1.global_60
  loc_BCD238: LdPrVar
  loc_BCD23A: LateMemCall
  loc_BCD240: LitVarStr var_94, "  </tr>"
  loc_BCD245: PopAdLdVar
  loc_BCD246: FLdPr Me
  loc_BCD249: MemLdRfVar from_stack_1.global_60
  loc_BCD24C: LdPrVar
  loc_BCD24E: LateMemCall
  loc_BCD254: LitVarStr var_94, "</table>"
  loc_BCD259: PopAdLdVar
  loc_BCD25A: FLdPr Me
  loc_BCD25D: MemLdRfVar from_stack_1.global_60
  loc_BCD260: LdPrVar
  loc_BCD262: LateMemCall
  loc_BCD268: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BCD26D: PopAdLdVar
  loc_BCD26E: FLdPr Me
  loc_BCD271: MemLdRfVar from_stack_1.global_60
  loc_BCD274: LdPrVar
  loc_BCD276: LateMemCall
  loc_BCD27C: LitVarStr var_94, "  <thead>"
  loc_BCD281: PopAdLdVar
  loc_BCD282: FLdPr Me
  loc_BCD285: MemLdRfVar from_stack_1.global_60
  loc_BCD288: LdPrVar
  loc_BCD28A: LateMemCall
  loc_BCD290: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BCD295: PopAdLdVar
  loc_BCD296: FLdPr Me
  loc_BCD299: MemLdRfVar from_stack_1.global_60
  loc_BCD29C: LdPrVar
  loc_BCD29E: LateMemCall
  loc_BCD2A4: LitVarStr var_94, "    <th>Fecha de<br>envio</th>"
  loc_BCD2A9: PopAdLdVar
  loc_BCD2AA: FLdPr Me
  loc_BCD2AD: MemLdRfVar from_stack_1.global_60
  loc_BCD2B0: LdPrVar
  loc_BCD2B2: LateMemCall
  loc_BCD2B8: LitVarStr var_94, "    <th>Ofic.</th>"
  loc_BCD2BD: PopAdLdVar
  loc_BCD2BE: FLdPr Me
  loc_BCD2C1: MemLdRfVar from_stack_1.global_60
  loc_BCD2C4: LdPrVar
  loc_BCD2C6: LateMemCall
  loc_BCD2CC: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BCD2D1: PopAdLdVar
  loc_BCD2D2: FLdPr Me
  loc_BCD2D5: MemLdRfVar from_stack_1.global_60
  loc_BCD2D8: LdPrVar
  loc_BCD2DA: LateMemCall
  loc_BCD2E0: LitVarStr var_94, "    <th>Nro de Apremio</th>"
  loc_BCD2E5: PopAdLdVar
  loc_BCD2E6: FLdPr Me
  loc_BCD2E9: MemLdRfVar from_stack_1.global_60
  loc_BCD2EC: LdPrVar
  loc_BCD2EE: LateMemCall
  loc_BCD2F4: LitVarStr var_94, "    <th>Nro de Auto</th>"
  loc_BCD2F9: PopAdLdVar
  loc_BCD2FA: FLdPr Me
  loc_BCD2FD: MemLdRfVar from_stack_1.global_60
  loc_BCD300: LdPrVar
  loc_BCD302: LateMemCall
  loc_BCD308: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_BCD30D: PopAdLdVar
  loc_BCD30E: FLdPr Me
  loc_BCD311: MemLdRfVar from_stack_1.global_60
  loc_BCD314: LdPrVar
  loc_BCD316: LateMemCall
  loc_BCD31C: LitVarStr var_94, "    <th>Inst.</th>"
  loc_BCD321: PopAdLdVar
  loc_BCD322: FLdPr Me
  loc_BCD325: MemLdRfVar from_stack_1.global_60
  loc_BCD328: LdPrVar
  loc_BCD32A: LateMemCall
  loc_BCD330: LitVarStr var_94, "    <th>Deuda Ap.</th>"
  loc_BCD335: PopAdLdVar
  loc_BCD336: FLdPr Me
  loc_BCD339: MemLdRfVar from_stack_1.global_60
  loc_BCD33C: LdPrVar
  loc_BCD33E: LateMemCall
  loc_BCD344: LitVarStr var_94, "    <th>Com. Adm.</th>"
  loc_BCD349: PopAdLdVar
  loc_BCD34A: FLdPr Me
  loc_BCD34D: MemLdRfVar from_stack_1.global_60
  loc_BCD350: LdPrVar
  loc_BCD352: LateMemCall
  loc_BCD358: LitVarStr var_94, "    <th>Aporte Ley</th>"
  loc_BCD35D: PopAdLdVar
  loc_BCD35E: FLdPr Me
  loc_BCD361: MemLdRfVar from_stack_1.global_60
  loc_BCD364: LdPrVar
  loc_BCD366: LateMemCall
  loc_BCD36C: LitVarStr var_94, "    <th>Rep. Sellado</th>"
  loc_BCD371: PopAdLdVar
  loc_BCD372: FLdPr Me
  loc_BCD375: MemLdRfVar from_stack_1.global_60
  loc_BCD378: LdPrVar
  loc_BCD37A: LateMemCall
  loc_BCD380: LitVarStr var_94, "    <th>Dere. Fijo</th>"
  loc_BCD385: PopAdLdVar
  loc_BCD386: FLdPr Me
  loc_BCD389: MemLdRfVar from_stack_1.global_60
  loc_BCD38C: LdPrVar
  loc_BCD38E: LateMemCall
  loc_BCD394: LitVarStr var_94, "    <th>Hon. Rec.</th>"
  loc_BCD399: PopAdLdVar
  loc_BCD39A: FLdPr Me
  loc_BCD39D: MemLdRfVar from_stack_1.global_60
  loc_BCD3A0: LdPrVar
  loc_BCD3A2: LateMemCall
  loc_BCD3A8: LitVarStr var_94, "    <th>Mov. Rec.</th>"
  loc_BCD3AD: PopAdLdVar
  loc_BCD3AE: FLdPr Me
  loc_BCD3B1: MemLdRfVar from_stack_1.global_60
  loc_BCD3B4: LdPrVar
  loc_BCD3B6: LateMemCall
  loc_BCD3BC: LitVarStr var_94, "    <th>Hon. Ofic.</th>"
  loc_BCD3C1: PopAdLdVar
  loc_BCD3C2: FLdPr Me
  loc_BCD3C5: MemLdRfVar from_stack_1.global_60
  loc_BCD3C8: LdPrVar
  loc_BCD3CA: LateMemCall
  loc_BCD3D0: LitVarStr var_94, "    <th>Mov. Ofic.</th>"
  loc_BCD3D5: PopAdLdVar
  loc_BCD3D6: FLdPr Me
  loc_BCD3D9: MemLdRfVar from_stack_1.global_60
  loc_BCD3DC: LdPrVar
  loc_BCD3DE: LateMemCall
  loc_BCD3E4: LitVarStr var_94, "    <th>Total</th>"
  loc_BCD3E9: PopAdLdVar
  loc_BCD3EA: FLdPr Me
  loc_BCD3ED: MemLdRfVar from_stack_1.global_60
  loc_BCD3F0: LdPrVar
  loc_BCD3F2: LateMemCall
  loc_BCD3F8: LitVarStr var_94, "  </tr>"
  loc_BCD3FD: PopAdLdVar
  loc_BCD3FE: FLdPr Me
  loc_BCD401: MemLdRfVar from_stack_1.global_60
  loc_BCD404: LdPrVar
  loc_BCD406: LateMemCall
  loc_BCD40C: LitVarStr var_94, "  </thead>"
  loc_BCD411: PopAdLdVar
  loc_BCD412: FLdPr Me
  loc_BCD415: MemLdRfVar from_stack_1.global_60
  loc_BCD418: LdPrVar
  loc_BCD41A: LateMemCall
  loc_BCD420: ExitProcHresult
  loc_BCD421: ILdRf arg_3B8
End Function

Private Function Proc_338_25_A0E048() 'A0E048
  'Data Table: 478934
  loc_A0E008: LitVarStr var_94, "</table>"
  loc_A0E00D: PopAdLdVar
  loc_A0E00E: FLdPr Me
  loc_A0E011: MemLdRfVar from_stack_1.global_60
  loc_A0E014: LdPrVar
  loc_A0E016: LateMemCall
  loc_A0E01C: LitVarStr var_94, "</body>"
  loc_A0E021: PopAdLdVar
  loc_A0E022: FLdPr Me
  loc_A0E025: MemLdRfVar from_stack_1.global_60
  loc_A0E028: LdPrVar
  loc_A0E02A: LateMemCall
  loc_A0E030: LitVarStr var_94, "</html>"
  loc_A0E035: PopAdLdVar
  loc_A0E036: FLdPr Me
  loc_A0E039: MemLdRfVar from_stack_1.global_60
  loc_A0E03C: LdPrVar
  loc_A0E03E: LateMemCall
  loc_A0E044: ExitProcHresult
End Function
