VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949a18
  Caption = "Acuerdo 3949 Anexo 18"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949a18.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11172
  ClientHeight = 3492
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
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 1800
    Width = 9015
    Height = 150
    Visible = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptA3949a18.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3240
    Width = 11175
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptA3949a18.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 10080
    Top = 2160
    Width = 855
    Height = 735
    TabIndex = 7
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
    Picture = "rptA3949a18.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949a18.frx":0C04
    Left = 10320
    Top = 1920
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1920
    Width = 4815
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3360
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 16
    End
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1920
    Width = 4095
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 3
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9015
    Height = 1695
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSMask.MaskEdBox PeriInfoMsk
      Left = 3000
      Top = 360
      Width = 735
      Height = 420
      TabIndex = 0
      OleObjectBlob = "rptA3949a18.frx":0C68
    End
    Begin VB.ComboBox TrimestreCbo
      Style = 2
      Left = 3000
      Top = 840
      Width = 1815
      Height = 420
      TabIndex = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7200
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 6
    End
    Begin VB.Label Label2
      Caption = "Trimestre:"
      Left = 1860
      Top = 840
      Width = 1050
      Height = 300
      TabIndex = 15
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 2040
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 14
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10320
    Top = 2400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptA3949a18.frx":0CD0
  End
End

Attribute VB_Name = "rptA3949a18"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00560540
  bStruc(32) As Byte ' String fields: 8
End Type


Private Sub cmdSalir_Click() 'A0450C
  'Data Table: 482080
  loc_A044DC: LitVarStr var_94, "Cerrando..."
  loc_A044E1: PopAdLdVar
  loc_A044E2: FLdPr Me
  loc_A044E5: VCallAd Control_ID_statusBar
  loc_A044E8: FStAdFunc var_A8
  loc_A044EB: FLdPr var_A8
  loc_A044EE: LateIdSt
  loc_A044F3: FFree1Ad var_A8
  loc_A044F6: ILdRf Me
  loc_A044F9: FStAdNoPop
  loc_A044FD: ImpAdLdRf MemVar_D9C5D8
  loc_A04500: NewIfNullPr Global
  loc_A04503: Global.Unload from_stack_1
  loc_A04508: FFree1Ad var_A8
  loc_A0450B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CE57C
  'Data Table: 482080
  loc_9CE564: LitI2_Byte 0
  loc_9CE566: ILdRf Me
  loc_9CE569: CastAd
  loc_9CE56C: FStAdFunc var_88
  loc_9CE56F: FLdRfVar var_88
  loc_9CE572: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CE577: FFree1Ad var_88
  loc_9CE57A: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E39DC
  'Data Table: 482080
  loc_9E39C0: LitI2_Byte 0
  loc_9E39C2: PopTmpLdAd2 var_8A
  loc_9E39C5: ILdRf Me
  loc_9E39C8: CastAd
  loc_9E39CB: FStAdFunc var_88
  loc_9E39CE: FLdRfVar var_88
  loc_9E39D1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E39D6: FFree1Ad var_88
  loc_9E39D9: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E3C0C
  'Data Table: 482080
  loc_9E3BF0: LitI2_Byte &HFF
  loc_9E3BF2: LitI2_Byte 0
  loc_9E3BF4: ILdRf Me
  loc_9E3BF7: CastAd
  loc_9E3BFA: FStAdFunc var_88
  loc_9E3BFD: FLdRfVar var_88
  loc_9E3C00: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E3C05: FFree1Ad var_88
  loc_9E3C08: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AD2ED4
  'Data Table: 482080
  loc_AD2DA4: LitI2_Byte &HFF
  loc_AD2DA6: FLdPr Me
  loc_AD2DA9: MemStI2 bLogos
  loc_AD2DAC: LitI2_Byte 0
  loc_AD2DAE: FLdPr Me
  loc_AD2DB1: MemStI2 bGenerado
  loc_AD2DB4: LitI2_Byte 0
  loc_AD2DB6: ILdRf Me
  loc_AD2DB9: CastAd
  loc_AD2DBC: FStAdFunc var_88
  loc_AD2DBF: FLdRfVar var_88
  loc_AD2DC2: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AD2DC7: FFree1Ad var_88
  loc_AD2DCA: ImpAdLdI2 MemVar_D93034
  loc_AD2DCD: CStrUI1
  loc_AD2DCF: CVarStr var_98
  loc_AD2DD2: PopAdLdVar
  loc_AD2DD3: FLdPr Me
  loc_AD2DD6: VCallAd Control_ID_PeriInfoMsk
  loc_AD2DD9: FStAdFunc var_88
  loc_AD2DDC: FLdPr var_88
  loc_AD2DDF: LateIdSt
  loc_AD2DE4: FFree1Ad var_88
  loc_AD2DE7: FFree1Var var_98 = ""
  loc_AD2DEA: LitI2_Byte 0
  loc_AD2DEC: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD2DF1: CVarDate var_98
  loc_AD2DF5: FLdRfVar var_B8
  loc_AD2DF8: ImpAdCallFPR4  = Month()
  loc_AD2DFD: FLdRfVar var_B8
  loc_AD2E00: FStVar var_C8
  loc_AD2E04: FFree1Var var_98 = ""
  loc_AD2E07: FLdRfVar var_C8
  loc_AD2E0A: LitVarI2 var_D8, 1
  loc_AD2E0F: HardType
  loc_AD2E10: LitVarI2 var_A8, 3
  loc_AD2E15: HardType
  loc_AD2E16: BetweenVar
  loc_AD2E18: BranchF loc_AD2E34
  loc_AD2E1B: LitI2_Byte 0
  loc_AD2E1D: FLdPr Me
  loc_AD2E20: VCallAd Control_ID_TrimestreCbo
  loc_AD2E23: FStAdFunc var_88
  loc_AD2E26: FLdPr var_88
  loc_AD2E29: Me.ListIndex = from_stack_1
  loc_AD2E2E: FFree1Ad var_88
  loc_AD2E31: Branch loc_AD2EB8
  loc_AD2E34: FLdRfVar var_C8
  loc_AD2E37: LitVarI2 var_D8, 4
  loc_AD2E3C: HardType
  loc_AD2E3D: LitVarI2 var_A8, 6
  loc_AD2E42: HardType
  loc_AD2E43: BetweenVar
  loc_AD2E45: BranchF loc_AD2E61
  loc_AD2E48: LitI2_Byte 1
  loc_AD2E4A: FLdPr Me
  loc_AD2E4D: VCallAd Control_ID_TrimestreCbo
  loc_AD2E50: FStAdFunc var_88
  loc_AD2E53: FLdPr var_88
  loc_AD2E56: Me.ListIndex = from_stack_1
  loc_AD2E5B: FFree1Ad var_88
  loc_AD2E5E: Branch loc_AD2EB8
  loc_AD2E61: FLdRfVar var_C8
  loc_AD2E64: LitVarI2 var_D8, 7
  loc_AD2E69: HardType
  loc_AD2E6A: LitVarI2 var_A8, 9
  loc_AD2E6F: HardType
  loc_AD2E70: BetweenVar
  loc_AD2E72: BranchF loc_AD2E8E
  loc_AD2E75: LitI2_Byte 2
  loc_AD2E77: FLdPr Me
  loc_AD2E7A: VCallAd Control_ID_TrimestreCbo
  loc_AD2E7D: FStAdFunc var_88
  loc_AD2E80: FLdPr var_88
  loc_AD2E83: Me.ListIndex = from_stack_1
  loc_AD2E88: FFree1Ad var_88
  loc_AD2E8B: Branch loc_AD2EB8
  loc_AD2E8E: FLdRfVar var_C8
  loc_AD2E91: LitVarI2 var_D8, 10
  loc_AD2E96: HardType
  loc_AD2E97: LitVarI2 var_A8, 12
  loc_AD2E9C: HardType
  loc_AD2E9D: BetweenVar
  loc_AD2E9F: BranchF loc_AD2EB8
  loc_AD2EA2: LitI2_Byte 3
  loc_AD2EA4: FLdPr Me
  loc_AD2EA7: VCallAd Control_ID_TrimestreCbo
  loc_AD2EAA: FStAdFunc var_88
  loc_AD2EAD: FLdPr var_88
  loc_AD2EB0: Me.ListIndex = from_stack_1
  loc_AD2EB5: FFree1Ad var_88
  loc_AD2EB8: Call HabilitarCriterio()
  loc_AD2EBD: ILdRf Me
  loc_AD2EC0: CastAd
  loc_AD2EC3: FStAdFunc var_88
  loc_AD2EC6: FLdRfVar var_88
  loc_AD2EC9: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AD2ECE: FFree1Ad var_88
  loc_AD2ED1: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13960
  'Data Table: 482080
  loc_A13928: FLdPr Me
  loc_A1392B: VCallAd Control_ID_statusBar
  loc_A1392E: FStAdFunc var_88
  loc_A13931: FLdPr var_88
  loc_A13934: LateIdLdVar var_98 DispID_1 0
  loc_A1393B: CStrVarTmp
  loc_A1393C: CVarStr var_A8
  loc_A1393F: PopAdLdVar
  loc_A13940: FLdPr Me
  loc_A13943: VCallAd Control_ID_statusBar
  loc_A13946: FStAdFunc var_BC
  loc_A13949: FLdPr var_BC
  loc_A1394C: LateIdSt
  loc_A13951: FFreeAd var_88 = ""
  loc_A13958: FFreeVar var_98 = ""
  loc_A1395F: ExitProcHresult
End Sub

Private Sub Form_Load() 'AAAB1C
  'Data Table: 482080
  loc_AAAA48: ILdRf Me
  loc_AAAA4B: CastAd
  loc_AAAA4E: FStAdFunc var_88
  loc_AAAA51: FLdRfVar var_88
  loc_AAAA54: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_AAAA59: FFree1Ad var_88
  loc_AAAA5C: FLdPr Me
  loc_AAAA5F: VCallAd Control_ID_TrimestreCbo
  loc_AAAA62: FStAdFunc var_8C
  loc_AAAA65: LitVar_Missing var_9C
  loc_AAAA68: PopAdLdVar
  loc_AAAA69: LitStr "Primero"
  loc_AAAA6C: FLdPr var_8C
  loc_AAAA6F: Me.AddItem from_stack_1, from_stack_2
  loc_AAAA74: LitI4 3
  loc_AAAA79: FLdRfVar var_9E
  loc_AAAA7C: FLdPr var_8C
  loc_AAAA7F:  = Me.NewIndex
  loc_AAAA84: FLdI2 var_9E
  loc_AAAA87: FLdPr var_8C
  loc_AAAA8A: Me.ItemData = from_stack_1
  loc_AAAA8F: LitVar_Missing var_9C
  loc_AAAA92: PopAdLdVar
  loc_AAAA93: LitStr "Segundo"
  loc_AAAA96: FLdPr var_8C
  loc_AAAA99: Me.AddItem from_stack_1, from_stack_2
  loc_AAAA9E: LitI4 0
  loc_AAAAA3: FLdRfVar var_9E
  loc_AAAAA6: FLdPr var_8C
  loc_AAAAA9:  = Me.NewIndex
  loc_AAAAAE: FLdI2 var_9E
  loc_AAAAB1: FLdPr var_8C
  loc_AAAAB4: Me.ItemData = from_stack_1
  loc_AAAAB9: LitVar_Missing var_9C
  loc_AAAABC: PopAdLdVar
  loc_AAAABD: LitStr "Tercero"
  loc_AAAAC0: FLdPr var_8C
  loc_AAAAC3: Me.AddItem from_stack_1, from_stack_2
  loc_AAAAC8: LitI4 1
  loc_AAAACD: FLdRfVar var_9E
  loc_AAAAD0: FLdPr var_8C
  loc_AAAAD3:  = Me.NewIndex
  loc_AAAAD8: FLdI2 var_9E
  loc_AAAADB: FLdPr var_8C
  loc_AAAADE: Me.ItemData = from_stack_1
  loc_AAAAE3: LitVar_Missing var_9C
  loc_AAAAE6: PopAdLdVar
  loc_AAAAE7: LitStr "Cuarto"
  loc_AAAAEA: FLdPr var_8C
  loc_AAAAED: Me.AddItem from_stack_1, from_stack_2
  loc_AAAAF2: LitI4 2
  loc_AAAAF7: FLdRfVar var_9E
  loc_AAAAFA: FLdPr var_8C
  loc_AAAAFD:  = Me.NewIndex
  loc_AAAB02: FLdI2 var_9E
  loc_AAAB05: FLdPr var_8C
  loc_AAAB08: Me.ItemData = from_stack_1
  loc_AAAB0D: LitNothing
  loc_AAAB0F: FStAd var_8C 
  loc_AAAB13: Call cmdNueva_Click()
  loc_AAAB18: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CE368
  'Data Table: 482080
  loc_9CE350: FLdPr Me
  loc_9CE353: VCallAd Control_ID_wbbReporte
  loc_9CE356: FStAdFunc var_88
  loc_9CE359: FLdRfVar var_88
  loc_9CE35C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CE361: FFree1Ad var_88
  loc_9CE364: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CE3B4
  'Data Table: 482080
  loc_9CE39C: LitI2_Byte &HFF
  loc_9CE39E: ILdRf Me
  loc_9CE3A1: CastAd
  loc_9CE3A4: FStAdFunc var_88
  loc_9CE3A7: FLdRfVar var_88
  loc_9CE3AA: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CE3AF: FFree1Ad var_88
  loc_9CE3B2: ExitProcHresult
End Sub

Private Sub PeriInfoMsk_UnknownEvent_0 '9BF990
  'Data Table: 482080
  loc_9BF97C: FLdPr Me
  loc_9BF97F: VCallAd Control_ID_PeriInfoMsk
  loc_9BF982: CVarAd
  loc_9BF986: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF98B: FFree1Var var_94 = ""
  loc_9BF98E: ExitProcHresult
End Sub

Private Function PeriInfoMsk_UnknownEvent_8(arg_C) 'A72A44
  'Data Table: 482080
  loc_A729DC: FLdPr Me
  loc_A729DF: VCallAd Control_ID_PeriInfoMsk
  loc_A729E2: FStAdFunc var_88
  loc_A729E5: FLdPr var_88
  loc_A729E8: LateIdLdVar var_98 DispID_22 0
  loc_A729EF: PopAd
  loc_A729F1: LitI2_Byte 0
  loc_A729F3: FLdRfVar var_98
  loc_A729F6: CStrVarTmp
  loc_A729F7: FStStrNoPop var_9C
  loc_A729FA: LitStr "Periodo"
  loc_A729FD: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A72A02: FStStrNoPop var_A0
  loc_A72A05: FLdPr Me
  loc_A72A08: MemStStrCopy
  loc_A72A0C: FFreeStr var_9C = ""
  loc_A72A13: FFree1Ad var_88
  loc_A72A16: FFree1Var var_98 = ""
  loc_A72A19: FLdPr Me
  loc_A72A1C: VCallAd Control_ID_PeriInfoMsk
  loc_A72A1F: FStAdFuncNoPop
  loc_A72A22: CastAd
  loc_A72A25: FStAdFunc var_A4
  loc_A72A28: FLdRfVar var_A4
  loc_A72A2B: FLdPr Me
  loc_A72A2E: MemLdStr global_104
  loc_A72A31: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A72A36: IStI2 arg_C
  loc_A72A39: FFreeAd var_88 = ""
  loc_A72A40: ExitProcHresult
End Function

Private Sub cmdPrevia_Click() '9CE660
  'Data Table: 482080
  loc_9CE648: ILdRf Me
  loc_9CE64B: CastAd
  loc_9CE64E: FStAdFunc var_88
  loc_9CE651: FLdRfVar var_88
  loc_9CE654: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CE659: FFree1Ad var_88
  loc_9CE65C: ExitProcHresult
End Sub

Public Function bGeneradoGet() '482DA8
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '482DB7
  bGenerado = Value
End Sub

Public Function bLogosGet() '482DC6
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '482DD5
  bLogos = Value
End Sub

Public Sub GeneraXLS() '9BF9DC
  'Data Table: 482080
  loc_9BF9C4: LitI2_Byte 0
  loc_9BF9C6: FLdPr Me
  loc_9BF9C9: MemStI2 bLogos
  loc_9BF9CC: Call GeneraHTML()
  loc_9BF9D1: LitI2_Byte &HFF
  loc_9BF9D3: FLdPr Me
  loc_9BF9D6: MemStI2 bLogos
  loc_9BF9D9: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() 'A43B28
  'Data Table: 482080
  loc_A43AE4: LitI4 0
  loc_A43AE9: LitI4 1
  loc_A43AEE: FLdRfVar var_88
  loc_A43AF1: Redim
  loc_A43AFB: FLdPr Me
  loc_A43AFE: VCallAd Control_ID_PeriInfoMsk
  loc_A43B01: CVarAd
  loc_A43B05: ParmAry1St
  loc_A43B0B: FLdPr Me
  loc_A43B0E: VCallAd Control_ID_TrimestreCbo
  loc_A43B11: CVarAd
  loc_A43B15: ParmAry1St
  loc_A43B1B: FLdRfVar var_88
  loc_A43B1E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A43B23: FLdRfVar var_88
  loc_A43B26: Erase
  loc_A43B27: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B88F70
  'Data Table: 482080
  loc_B88A74: FLdPr Me
  loc_B88A77: MemLdI2 bGenerado
  loc_B88A7A: BranchF loc_B88A7E
  loc_B88A7D: ExitProcHresult
  loc_B88A7E: LitVarStr var_9C, "Generando reporte..."
  loc_B88A83: PopAdLdVar
  loc_B88A84: FLdPr Me
  loc_B88A87: VCallAd Control_ID_statusBar
  loc_B88A8A: FStAdFunc var_B0
  loc_B88A8D: FLdPr var_B0
  loc_B88A90: LateIdSt
  loc_B88A95: FFree1Ad var_B0
  loc_B88A98: LitI4 &HB
  loc_B88A9D: CI2I4
  loc_B88A9E: FLdPr Me
  loc_B88AA1: Me.MousePointer = from_stack_1
  loc_B88AA6: FLdPr Me
  loc_B88AA9: VCallAd Control_ID_PeriInfoMsk
  loc_B88AAC: FStAdFunc var_B0
  loc_B88AAF: FLdPr var_B0
  loc_B88AB2: LateIdLdVar var_C0 DispID_22 0
  loc_B88AB9: PopAd
  loc_B88ABB: FLdRfVar var_C6
  loc_B88ABE: FLdPr Me
  loc_B88AC1: VCallAd Control_ID_TrimestreCbo
  loc_B88AC4: FStAdFunc var_C4
  loc_B88AC7: FLdPr var_C4
  loc_B88ACA:  = Me.ListIndex
  loc_B88ACF: LitI2_Byte 1
  loc_B88AD1: FLdI2 var_C6
  loc_B88AD4: LitI2_Byte 1
  loc_B88AD6: AddI2
  loc_B88AD7: LitI2_Byte 3
  loc_B88AD9: MulI2
  loc_B88ADA: LitI2_Byte 2
  loc_B88ADC: SubI2
  loc_B88ADD: FLdRfVar var_C0
  loc_B88AE0: CStrVarTmp
  loc_B88AE1: FStStrNoPop var_CC
  loc_B88AE4: CI2Str
  loc_B88AE6: FLdRfVar var_DC
  loc_B88AE9: ImpAdCallFPR4  = DateSerial(, , )
  loc_B88AEE: LitI4 1
  loc_B88AF3: LitI4 1
  loc_B88AF8: LitVarStr var_9C, "yyyy-mm-dd"
  loc_B88AFD: FStVarCopyObj var_EC
  loc_B88B00: FLdRfVar var_EC
  loc_B88B03: FLdRfVar var_DC
  loc_B88B06: ImpAdCallI2 Format$(, )
  loc_B88B0B: FStStr var_88
  loc_B88B0E: FFree1Str var_CC
  loc_B88B11: FFreeAd var_B0 = ""
  loc_B88B18: FFreeVar var_C0 = "": var_DC = ""
  loc_B88B21: FLdPr Me
  loc_B88B24: VCallAd Control_ID_PeriInfoMsk
  loc_B88B27: FStAdFunc var_B0
  loc_B88B2A: FLdPr var_B0
  loc_B88B2D: LateIdLdVar var_C0 DispID_22 0
  loc_B88B34: PopAd
  loc_B88B36: FLdRfVar var_C6
  loc_B88B39: FLdPr Me
  loc_B88B3C: VCallAd Control_ID_TrimestreCbo
  loc_B88B3F: FStAdFunc var_C4
  loc_B88B42: FLdPr var_C4
  loc_B88B45:  = Me.ListIndex
  loc_B88B4A: LitI2_Byte 1
  loc_B88B4C: FLdI2 var_C6
  loc_B88B4F: LitI2_Byte 1
  loc_B88B51: AddI2
  loc_B88B52: LitI2_Byte 3
  loc_B88B54: MulI2
  loc_B88B55: LitI2_Byte 1
  loc_B88B57: AddI2
  loc_B88B58: FLdRfVar var_C0
  loc_B88B5B: CStrVarTmp
  loc_B88B5C: FStStrNoPop var_CC
  loc_B88B5F: CI2Str
  loc_B88B61: FLdRfVar var_DC
  loc_B88B64: ImpAdCallFPR4  = DateSerial(, , )
  loc_B88B69: LitI4 1
  loc_B88B6E: LitI4 1
  loc_B88B73: LitVarStr var_AC, "yyyy-mm-dd"
  loc_B88B78: FStVarCopyObj var_10C
  loc_B88B7B: FLdRfVar var_10C
  loc_B88B7E: FLdRfVar var_DC
  loc_B88B81: LitVarI2 var_9C, 1
  loc_B88B86: SubVar var_EC
  loc_B88B8A: FStVar var_FC
  loc_B88B8E: FLdRfVar var_FC
  loc_B88B91: ImpAdCallI2 Format$(, )
  loc_B88B96: FStStr var_8C
  loc_B88B99: FFree1Str var_CC
  loc_B88B9C: FFreeAd var_B0 = ""
  loc_B88BA3: FFreeVar var_C0 = "": var_DC = "": var_FC = ""
  loc_B88BAE: FLdPr Me
  loc_B88BB1: MemLdRfVar from_stack_1.global_92
  loc_B88BB4: NewIfNullAd
  loc_B88BB7: FStAd var_110 
  loc_B88BBB: LitStr " SELECT apremio.NumeApre, apremio.AutoApre, concat('"
  loc_B88BBE: LitStr "Municipalidad de Guaymallén"
  loc_B88BC1: ConcatStr
  loc_B88BC2: FStStrNoPop var_CC
  loc_B88BC5: LitStr " C/',TituApre,' /P Apremio') AS expcar,"
  loc_B88BC8: ConcatStr
  loc_B88BC9: FStStrNoPop var_114
  loc_B88BCC: LitStr " apremio.CapiApre + apremio.RecaApre as mondem, FealInap, apremio.CapiApre + apremio.RecaApre AS monSen,"
  loc_B88BCF: ConcatStr
  loc_B88BD0: FStStrNoPop var_118
  loc_B88BD3: LitStr " cast(MAX(FealCtct) as char) as FechaPago, SUM(CredCtct) as ImpoCobr FROM ctacte"
  loc_B88BD6: ConcatStr
  loc_B88BD7: FStStrNoPop var_11C
  loc_B88BDA: LitStr " INNER JOIN apremio ON apremio.NumeApre = ctacte.NumeApre"
  loc_B88BDD: ConcatStr
  loc_B88BDE: FStStrNoPop var_120
  loc_B88BE1: LitStr " INNER JOIN instapre  ON instapre.NumeApre = ctacte.NumeApre AND instapre.CodiInju = apremio.CodiInju"
  loc_B88BE4: ConcatStr
  loc_B88BE5: FStStrNoPop var_124
  loc_B88BE8: LitStr " WHERE FealCtct BETWEEN '"
  loc_B88BEB: ConcatStr
  loc_B88BEC: FStStrNoPop var_128
  loc_B88BEF: ILdRf var_88
  loc_B88BF2: ConcatStr
  loc_B88BF3: FStStrNoPop var_12C
  loc_B88BF6: LitStr "' AND '"
  loc_B88BF9: ConcatStr
  loc_B88BFA: FStStrNoPop var_130
  loc_B88BFD: ILdRf var_8C
  loc_B88C00: ConcatStr
  loc_B88C01: FStStrNoPop var_134
  loc_B88C04: LitStr "' AND ctacte.NumeApre <> 0 AND CodiTimo IN (2,4,5,21,25)"
  loc_B88C07: ConcatStr
  loc_B88C08: FStStrNoPop var_138
  loc_B88C0B: LitStr " AND apremio.CodiInju >= 4 AND apremio.CodiInju <= 5"
  loc_B88C0E: ConcatStr
  loc_B88C0F: FStStrNoPop var_13C
  loc_B88C12: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.NumeApre"
  loc_B88C15: ConcatStr
  loc_B88C16: FStStrNoPop var_140
  loc_B88C19: FLdPr var_110
  loc_B88C1C: Call clsinstapre.RedefineRS(from_stack_1v)
  loc_B88C21: FFreeStr var_CC = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_B88C3E: FLdRfVar var_144
  loc_B88C41: FLdPr var_110
  loc_B88C44: from_stack_1 = clsinstapre.RecordCount
  loc_B88C49: ILdRf var_144
  loc_B88C4C: LitI4 0
  loc_B88C51: EqI4
  loc_B88C52: BranchF loc_B88C72
  loc_B88C55: LitI4 0
  loc_B88C5A: LitI4 0
  loc_B88C5F: FLdPr Me
  loc_B88C62: MemLdRfVar from_stack_1.global_96
  loc_B88C65: Redim
  loc_B88C6F: Branch loc_B88F37
  loc_B88C72: LitI4 0
  loc_B88C77: FLdRfVar var_144
  loc_B88C7A: FLdPr var_110
  loc_B88C7D: from_stack_1 = clsinstapre.RecordCount
  loc_B88C82: ILdRf var_144
  loc_B88C85: FLdPr Me
  loc_B88C88: MemLdRfVar from_stack_1.global_96
  loc_B88C8B: Redim
  loc_B88C95: FLdPr var_110
  loc_B88C98: Call clsinstapre.MoveFirst()
  loc_B88C9D: FLdRfVar var_144
  loc_B88CA0: FLdPr var_110
  loc_B88CA3: from_stack_1 = clsinstapre.RecordCount
  loc_B88CA8: ILdRf var_144
  loc_B88CAB: CR8I4
  loc_B88CAC: CVarR4
  loc_B88CB0: PopAdLdVar
  loc_B88CB1: FLdPrThis
  loc_B88CB2: VCallAd Control_ID_Pbar
  loc_B88CB5: FStAdFunc var_B0
  loc_B88CB8: FLdPr var_B0
  loc_B88CBB: LateIdSt
  loc_B88CC0: FFree1Ad var_B0
  loc_B88CC3: LitVar_TRUE var_9C
  loc_B88CC6: PopAdLdVar
  loc_B88CC7: FLdPrThis
  loc_B88CC8: VCallAd Control_ID_Pbar
  loc_B88CCB: FStAdFunc var_B0
  loc_B88CCE: FLdPr var_B0
  loc_B88CD1: LateIdSt
  loc_B88CD6: FFree1Ad var_B0
  loc_B88CD9: LitI4 1
  loc_B88CDE: FLdPr Me
  loc_B88CE1: MemLdRfVar from_stack_1.global_100
  loc_B88CE4: FLdPr Me
  loc_B88CE7: MemLdStr global_96
  loc_B88CEA: LitI2_Byte 1
  loc_B88CEC: FnUBound
  loc_B88CEE: ForI4 var_14C
  loc_B88CF4: FLdPr Me
  loc_B88CF7: MemLdStr global_100
  loc_B88CFA: CR8I4
  loc_B88CFB: CVarR4
  loc_B88CFF: PopAdLdVar
  loc_B88D00: FLdPrThis
  loc_B88D01: VCallAd Control_ID_Pbar
  loc_B88D04: FStAdFunc var_B0
  loc_B88D07: FLdPr var_B0
  loc_B88D0A: LateIdSt
  loc_B88D0F: FFree1Ad var_B0
  loc_B88D12: FLdRfVar var_CC
  loc_B88D15: FLdPr var_110
  loc_B88D18: from_stack_1 = clsinstapre.AutoApre
  loc_B88D1D: LitI2_Byte 0
  loc_B88D1F: LitVar_Missing var_DC
  loc_B88D22: LitI2_Byte 0
  loc_B88D24: FLdZeroAd var_CC
  loc_B88D27: CVarStr var_C0
  loc_B88D2A: PopAdLdVar
  loc_B88D2B: FLdPr Me
  loc_B88D2E: MemLdStr global_100
  loc_B88D31: FLdPr Me
  loc_B88D34: MemLdStr global_96
  loc_B88D37: AryLock
  loc_B88D3A: Ary1LdPr
  loc_B88D3B: MemLdRfVar from_stack_1.global_0
  loc_B88D3E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B88D43: AryUnlock
  loc_B88D46: FFreeVar var_C0 = ""
  loc_B88D4D: FLdRfVar var_CC
  loc_B88D50: FLdPr var_110
  loc_B88D53: from_stack_1 = clsinstapre.expcar
  loc_B88D58: LitI2_Byte 0
  loc_B88D5A: LitVar_Missing var_DC
  loc_B88D5D: LitI2_Byte 0
  loc_B88D5F: FLdZeroAd var_CC
  loc_B88D62: CVarStr var_C0
  loc_B88D65: PopAdLdVar
  loc_B88D66: FLdPr Me
  loc_B88D69: MemLdStr global_100
  loc_B88D6C: FLdPr Me
  loc_B88D6F: MemLdStr global_96
  loc_B88D72: AryLock
  loc_B88D75: Ary1LdPr
  loc_B88D76: MemLdRfVar from_stack_1.global_4
  loc_B88D79: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B88D7E: AryUnlock
  loc_B88D81: FFreeVar var_C0 = ""
  loc_B88D88: FLdRfVar var_158
  loc_B88D8B: FLdPr var_110
  loc_B88D8E: from_stack_1 = clsinstapre.mondem
  loc_B88D93: LitI2_Byte 0
  loc_B88D95: LitVar_Missing var_C0
  loc_B88D98: LitI2_Byte &HFF
  loc_B88D9A: FLdFPR8 var_158
  loc_B88D9D: CVarR8
  loc_B88DA1: PopAdLdVar
  loc_B88DA2: FLdPr Me
  loc_B88DA5: MemLdStr global_100
  loc_B88DA8: FLdPr Me
  loc_B88DAB: MemLdStr global_96
  loc_B88DAE: AryLock
  loc_B88DB1: Ary1LdPr
  loc_B88DB2: MemLdRfVar from_stack_1.global_8
  loc_B88DB5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B88DBA: AryUnlock
  loc_B88DBD: FFree1Var var_C0 = ""
  loc_B88DC0: FLdRfVar var_CC
  loc_B88DC3: FLdPr var_110
  loc_B88DC6: from_stack_1 = clsinstapre.FealInap
  loc_B88DCB: LitI2_Byte 0
  loc_B88DCD: LitVar_Missing var_DC
  loc_B88DD0: LitI2_Byte 0
  loc_B88DD2: FLdZeroAd var_CC
  loc_B88DD5: CVarStr var_C0
  loc_B88DD8: PopAdLdVar
  loc_B88DD9: FLdPr Me
  loc_B88DDC: MemLdStr global_100
  loc_B88DDF: FLdPr Me
  loc_B88DE2: MemLdStr global_96
  loc_B88DE5: AryLock
  loc_B88DE8: Ary1LdPr
  loc_B88DE9: MemLdRfVar from_stack_1.global_12
  loc_B88DEC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B88DF1: AryUnlock
  loc_B88DF4: FFreeVar var_C0 = ""
  loc_B88DFB: FLdRfVar var_158
  loc_B88DFE: FLdPr var_110
  loc_B88E01: from_stack_1 = clsinstapre.MonSen
  loc_B88E06: LitI2_Byte 0
  loc_B88E08: LitVar_Missing var_C0
  loc_B88E0B: LitI2_Byte &HFF
  loc_B88E0D: FLdFPR8 var_158
  loc_B88E10: CVarR8
  loc_B88E14: PopAdLdVar
  loc_B88E15: FLdPr Me
  loc_B88E18: MemLdStr global_100
  loc_B88E1B: FLdPr Me
  loc_B88E1E: MemLdStr global_96
  loc_B88E21: AryLock
  loc_B88E24: Ary1LdPr
  loc_B88E25: MemLdRfVar from_stack_1.global_16
  loc_B88E28: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B88E2D: AryUnlock
  loc_B88E30: FFree1Var var_C0 = ""
  loc_B88E33: FLdRfVar var_CC
  loc_B88E36: FLdPr var_110
  loc_B88E39: from_stack_1 = clsinstapre.FechaPago
  loc_B88E3E: LitI4 1
  loc_B88E43: LitI4 1
  loc_B88E48: LitVarStr var_9C, "dd/mm/yyyy"
  loc_B88E4D: FStVarCopyObj var_DC
  loc_B88E50: FLdRfVar var_DC
  loc_B88E53: FLdZeroAd var_CC
  loc_B88E56: CVarStr var_C0
  loc_B88E59: ImpAdCallI2 Format$(, )
  loc_B88E5E: FStStr var_114
  loc_B88E61: LitI2_Byte 0
  loc_B88E63: LitVar_Missing var_FC
  loc_B88E66: LitI2_Byte 0
  loc_B88E68: FLdZeroAd var_114
  loc_B88E6B: CVarStr var_EC
  loc_B88E6E: PopAdLdVar
  loc_B88E6F: FLdPr Me
  loc_B88E72: MemLdStr global_100
  loc_B88E75: FLdPr Me
  loc_B88E78: MemLdStr global_96
  loc_B88E7B: AryLock
  loc_B88E7E: Ary1LdPr
  loc_B88E7F: MemLdRfVar from_stack_1.global_20
  loc_B88E82: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B88E87: AryUnlock
  loc_B88E8A: FFree1Str var_114
  loc_B88E8D: FFreeVar var_C0 = "": var_DC = "": var_EC = ""
  loc_B88E98: FLdRfVar var_158
  loc_B88E9B: FLdPr var_110
  loc_B88E9E: from_stack_1 = clsinstapre.ImpoCobr
  loc_B88EA3: LitI2_Byte 0
  loc_B88EA5: LitVar_Missing var_C0
  loc_B88EA8: LitI2_Byte &HFF
  loc_B88EAA: FLdFPR8 var_158
  loc_B88EAD: CVarR8
  loc_B88EB1: PopAdLdVar
  loc_B88EB2: FLdPr Me
  loc_B88EB5: MemLdStr global_100
  loc_B88EB8: FLdPr Me
  loc_B88EBB: MemLdStr global_96
  loc_B88EBE: AryLock
  loc_B88EC1: Ary1LdPr
  loc_B88EC2: MemLdRfVar from_stack_1.global_24
  loc_B88EC5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B88ECA: AryUnlock
  loc_B88ECD: FFree1Var var_C0 = ""
  loc_B88ED0: FLdRfVar var_144
  loc_B88ED3: FLdPr var_110
  loc_B88ED6: from_stack_1 = clsinstapre.NumeApre
  loc_B88EDB: LitI2_Byte 0
  loc_B88EDD: LitVar_Missing var_C0
  loc_B88EE0: LitI2_Byte 0
  loc_B88EE2: ILdRf var_144
  loc_B88EE5: CVarI4
  loc_B88EE9: PopAdLdVar
  loc_B88EEA: FLdPr Me
  loc_B88EED: MemLdStr global_100
  loc_B88EF0: FLdPr Me
  loc_B88EF3: MemLdStr global_96
  loc_B88EF6: AryLock
  loc_B88EF9: Ary1LdPr
  loc_B88EFA: MemLdRfVar from_stack_1.global_28
  loc_B88EFD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B88F02: AryUnlock
  loc_B88F05: FFree1Var var_C0 = ""
  loc_B88F08: LitI2_Byte 1
  loc_B88F0A: PopTmpLdAd2 var_C6
  loc_B88F0D: FLdPr var_110
  loc_B88F10: Call clsinstapre.Move(from_stack_1v)
  loc_B88F15: FLdPr Me
  loc_B88F18: MemLdRfVar from_stack_1.global_100
  loc_B88F1B: NextI4 var_14C, loc_B88CF4
  loc_B88F20: LitVar_FALSE
  loc_B88F24: PopAdLdVar
  loc_B88F25: FLdPrThis
  loc_B88F26: VCallAd Control_ID_Pbar
  loc_B88F29: FStAdFunc var_B0
  loc_B88F2C: FLdPr var_B0
  loc_B88F2F: LateIdSt
  loc_B88F34: FFree1Ad var_B0
  loc_B88F37: LitNothing
  loc_B88F39: FStAd var_110 
  loc_B88F3D: LitI2_Byte &HFF
  loc_B88F3F: FLdPr Me
  loc_B88F42: MemStI2 bGenerado
  loc_B88F45: LitI4 0
  loc_B88F4A: CI2I4
  loc_B88F4B: FLdPr Me
  loc_B88F4E: Me.MousePointer = from_stack_1
  loc_B88F53: LitVarStr var_9C, vbNullString
  loc_B88F58: PopAdLdVar
  loc_B88F59: FLdPr Me
  loc_B88F5C: VCallAd Control_ID_statusBar
  loc_B88F5F: FStAdFunc var_B0
  loc_B88F62: FLdPr var_B0
  loc_B88F65: LateIdSt
  loc_B88F6A: FFree1Ad var_B0
  loc_B88F6D: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B6C9BC
  'Data Table: 482080
  loc_B6C570: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B6C575: FStStrNoPop var_88
  loc_B6C578: LitStr "\Acuerdo 3949\"
  loc_B6C57B: ConcatStr
  loc_B6C57C: FStStrNoPop var_A0
  loc_B6C57F: FLdPr Me
  loc_B6C582: VCallAd Control_ID_PeriInfoMsk
  loc_B6C585: FStAdFunc var_8C
  loc_B6C588: FLdPr var_8C
  loc_B6C58B: LateIdLdVar var_9C DispID_22 0
  loc_B6C592: CStrVarTmp
  loc_B6C593: FStStrNoPop var_A4
  loc_B6C596: ConcatStr
  loc_B6C597: FStStrNoPop var_A8
  loc_B6C59A: LitStr "\Trimestre "
  loc_B6C59D: ConcatStr
  loc_B6C59E: FStStrNoPop var_B4
  loc_B6C5A1: FLdRfVar var_AE
  loc_B6C5A4: FLdPr Me
  loc_B6C5A7: VCallAd Control_ID_TrimestreCbo
  loc_B6C5AA: FStAdFunc var_AC
  loc_B6C5AD: FLdPr var_AC
  loc_B6C5B0:  = Me.ListIndex
  loc_B6C5B5: FLdI2 var_AE
  loc_B6C5B8: LitI2_Byte 1
  loc_B6C5BA: AddI2
  loc_B6C5BB: CStrUI1
  loc_B6C5BD: FStStrNoPop var_B8
  loc_B6C5C0: ConcatStr
  loc_B6C5C1: FStStrNoPop var_BC
  loc_B6C5C4: LitStr "\DetJuiSenDef.txt"
  loc_B6C5C7: ConcatStr
  loc_B6C5C8: ImpAdStStr MemVar_D93030
  loc_B6C5CC: FFreeStr var_88 = "": var_A0 = "": var_A4 = "": var_A8 = "": var_B4 = "": var_B8 = ""
  loc_B6C5DD: FFreeAd var_8C = ""
  loc_B6C5E4: FFree1Var var_9C = ""
  loc_B6C5E7: ImpAdLdI4 MemVar_D93030
  loc_B6C5EA: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B6C5EF: LitStr "|"
  loc_B6C5F2: FStStrCopy var_C4
  loc_B6C5F5: FLdRfVar var_8C
  loc_B6C5F8: LitI2_Byte 0
  loc_B6C5FA: LitI2_Byte &HFF
  loc_B6C5FC: ImpAdLdI4 MemVar_D93030
  loc_B6C5FF: FLdPr Me
  loc_B6C602: MemLdRfVar from_stack_1.global_56
  loc_B6C605: NewIfNullPr IFileSystem3
  loc_B6C608: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B6C60D: ILdRf var_8C
  loc_B6C610: FLdPr Me
  loc_B6C613: MemStVarAd
  loc_B6C617: FFree1Ad var_8C
  loc_B6C61A: FLdPr Me
  loc_B6C61D: MemLdStr global_96
  loc_B6C620: LitI2_Byte 1
  loc_B6C622: FnUBound
  loc_B6C624: LitI4 0
  loc_B6C629: EqI4
  loc_B6C62A: BranchF loc_B6C68C
  loc_B6C62D: LitI4 0
  loc_B6C632: LitI4 1
  loc_B6C637: FLdRfVar var_C8
  loc_B6C63A: Redim
  loc_B6C644: LitVarStr var_D8, "|"
  loc_B6C649: LitI4 0
  loc_B6C64E: ILdRf var_C8
  loc_B6C651: Ary1StVarCopy
  loc_B6C653: LitVarStr var_E8, "SIN MOVIMIENTO"
  loc_B6C658: LitI4 1
  loc_B6C65D: ILdRf var_C8
  loc_B6C660: Ary1StVarCopy
  loc_B6C662: FLdRfVar var_C8
  loc_B6C665: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B6C66A: FStStr var_88
  loc_B6C66D: FLdRfVar var_C8
  loc_B6C670: Erase
  loc_B6C671: FLdZeroAd var_88
  loc_B6C674: CVarStr var_9C
  loc_B6C677: PopAdLdVar
  loc_B6C678: FLdPr Me
  loc_B6C67B: MemLdRfVar from_stack_1.global_76
  loc_B6C67E: LdPrVar
  loc_B6C680: LateMemCall
  loc_B6C686: FFree1Var var_9C = ""
  loc_B6C689: Branch loc_B6C9AB
  loc_B6C68C: LitI4 0
  loc_B6C691: LitI4 &HF
  loc_B6C696: FLdRfVar var_C8
  loc_B6C699: Redim
  loc_B6C6A3: LitVarStr var_D8, "|"
  loc_B6C6A8: LitI4 0
  loc_B6C6AD: ILdRf var_C8
  loc_B6C6B0: Ary1StVarCopy
  loc_B6C6B2: LitVarStr var_E8, "Ejercicio"
  loc_B6C6B7: LitI4 1
  loc_B6C6BC: ILdRf var_C8
  loc_B6C6BF: Ary1StVarCopy
  loc_B6C6C1: LitVarStr var_F8, "Trimestre"
  loc_B6C6C6: LitI4 2
  loc_B6C6CB: ILdRf var_C8
  loc_B6C6CE: Ary1StVarCopy
  loc_B6C6D0: LitVarStr var_108, "Nomenclador"
  loc_B6C6D5: LitI4 3
  loc_B6C6DA: ILdRf var_C8
  loc_B6C6DD: Ary1StVarCopy
  loc_B6C6DF: LitVarStr var_118, "TpoLit"
  loc_B6C6E4: LitI4 4
  loc_B6C6E9: ILdRf var_C8
  loc_B6C6EC: Ary1StVarCopy
  loc_B6C6EE: LitVarStr var_128, "NomencladorLit"
  loc_B6C6F3: LitI4 5
  loc_B6C6F8: ILdRf var_C8
  loc_B6C6FB: Ary1StVarCopy
  loc_B6C6FD: LitVarStr var_138, "ExpNro"
  loc_B6C702: LitI4 6
  loc_B6C707: ILdRf var_C8
  loc_B6C70A: Ary1StVarCopy
  loc_B6C70C: LitVarStr var_148, "ExpCar"
  loc_B6C711: LitI4 7
  loc_B6C716: ILdRf var_C8
  loc_B6C719: Ary1StVarCopy
  loc_B6C71B: LitVarStr var_158, "Apremio"
  loc_B6C720: LitI4 8
  loc_B6C725: ILdRf var_C8
  loc_B6C728: Ary1StVarCopy
  loc_B6C72A: LitVarStr var_168, "MonDem"
  loc_B6C72F: LitI4 9
  loc_B6C734: ILdRf var_C8
  loc_B6C737: Ary1StVarCopy
  loc_B6C739: LitVarStr var_178, "TriRad"
  loc_B6C73E: LitI4 &HA
  loc_B6C743: ILdRf var_C8
  loc_B6C746: Ary1StVarCopy
  loc_B6C748: LitVarStr var_188, "Circun"
  loc_B6C74D: LitI4 &HB
  loc_B6C752: ILdRf var_C8
  loc_B6C755: Ary1StVarCopy
  loc_B6C757: LitVarStr var_198, "SenFec"
  loc_B6C75C: LitI4 &HC
  loc_B6C761: ILdRf var_C8
  loc_B6C764: Ary1StVarCopy
  loc_B6C766: LitVarStr var_1A8, "SenImp"
  loc_B6C76B: LitI4 &HD
  loc_B6C770: ILdRf var_C8
  loc_B6C773: Ary1StVarCopy
  loc_B6C775: LitVarStr var_1B8, "CobFec"
  loc_B6C77A: LitI4 &HE
  loc_B6C77F: ILdRf var_C8
  loc_B6C782: Ary1StVarCopy
  loc_B6C784: LitVarStr var_1C8, "CobImp"
  loc_B6C789: LitI4 &HF
  loc_B6C78E: ILdRf var_C8
  loc_B6C791: Ary1StVarCopy
  loc_B6C793: FLdRfVar var_C8
  loc_B6C796: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B6C79B: FStStr var_88
  loc_B6C79E: FLdRfVar var_C8
  loc_B6C7A1: Erase
  loc_B6C7A2: FLdZeroAd var_88
  loc_B6C7A5: CVarStr var_9C
  loc_B6C7A8: PopAdLdVar
  loc_B6C7A9: FLdPr Me
  loc_B6C7AC: MemLdRfVar from_stack_1.global_76
  loc_B6C7AF: LdPrVar
  loc_B6C7B1: LateMemCall
  loc_B6C7B7: FFree1Var var_9C = ""
  loc_B6C7BA: LitI4 1
  loc_B6C7BF: FLdPr Me
  loc_B6C7C2: MemLdRfVar from_stack_1.global_100
  loc_B6C7C5: FLdPr Me
  loc_B6C7C8: MemLdStr global_96
  loc_B6C7CB: LitI2_Byte 1
  loc_B6C7CD: FnUBound
  loc_B6C7CF: ForI4 var_1E0
  loc_B6C7D5: FLdPr Me
  loc_B6C7D8: MemLdStr global_100
  loc_B6C7DB: FLdPr Me
  loc_B6C7DE: MemLdStr global_96
  loc_B6C7E1: AryLock
  loc_B6C7E4: Ary1LdRf
  loc_B6C7E5: FStR4 var_1E8
  loc_B6C7E8: LitI4 0
  loc_B6C7ED: LitI4 &HF
  loc_B6C7F2: FLdRfVar var_C8
  loc_B6C7F5: Redim
  loc_B6C7FF: LitVarStr var_118, "|"
  loc_B6C804: LitI4 0
  loc_B6C809: ILdRf var_C8
  loc_B6C80C: Ary1StVarCopy
  loc_B6C80E: FLdPr Me
  loc_B6C811: VCallAd Control_ID_PeriInfoMsk
  loc_B6C814: FStAdFunc var_8C
  loc_B6C817: FLdPr var_8C
  loc_B6C81A: LateIdLdVar var_9C DispID_22 0
  loc_B6C821: CStrVarTmp
  loc_B6C822: CVarStr var_218
  loc_B6C825: ParmAry1St
  loc_B6C82B: FLdRfVar var_AE
  loc_B6C82E: FLdPr Me
  loc_B6C831: VCallAd Control_ID_TrimestreCbo
  loc_B6C834: FStAdFunc var_AC
  loc_B6C837: FLdPr var_AC
  loc_B6C83A:  = Me.ListIndex
  loc_B6C83F: FLdI2 var_AE
  loc_B6C842: LitI2_Byte 1
  loc_B6C844: AddI2
  loc_B6C845: CVarI2 var_128
  loc_B6C848: LitI4 2
  loc_B6C84D: ILdRf var_C8
  loc_B6C850: Ary1StVar
  loc_B6C851: LitVarStr var_138, "060204"
  loc_B6C856: LitI4 3
  loc_B6C85B: ILdRf var_C8
  loc_B6C85E: Ary1StVarCopy
  loc_B6C860: LitVarStr var_148, "1"
  loc_B6C865: LitI4 4
  loc_B6C86A: ILdRf var_C8
  loc_B6C86D: Ary1StVarCopy
  loc_B6C86F: LitVarStr var_158, "060204"
  loc_B6C874: LitI4 5
  loc_B6C879: ILdRf var_C8
  loc_B6C87C: Ary1StVarCopy
  loc_B6C87E: FMemLdRf 0
  loc_B6C883: CVarRef
  loc_B6C888: ParmAry1St
  loc_B6C88E: FMemLdRf 0
  loc_B6C893: CVarRef
  loc_B6C898: ParmAry1St
  loc_B6C89E: FMemLdRf 0
  loc_B6C8A3: CVarRef
  loc_B6C8A8: ParmAry1St
  loc_B6C8AE: FMemLdR4 var_1E8(8)
  loc_B6C8B3: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B6C8B8: CVarStr var_228
  loc_B6C8BB: ParmAry1St
  loc_B6C8C1: LitVarStr var_198, "Juzgado Paz Letrado de Guaymallén"
  loc_B6C8C6: LitI4 &HA
  loc_B6C8CB: ILdRf var_C8
  loc_B6C8CE: Ary1StVarCopy
  loc_B6C8D0: LitVarStr var_1A8, "Primera"
  loc_B6C8D5: LitI4 &HB
  loc_B6C8DA: ILdRf var_C8
  loc_B6C8DD: Ary1StVarCopy
  loc_B6C8DF: LitI4 1
  loc_B6C8E4: LitI4 1
  loc_B6C8E9: LitVarStr var_E8, "yyyymmdd"
  loc_B6C8EE: FStVarCopyObj var_1F8
  loc_B6C8F1: FLdRfVar var_1F8
  loc_B6C8F4: FMemLdRf 0
  loc_B6C8F9: CVarRef
  loc_B6C8FE: ImpAdCallI2 Format$(, )
  loc_B6C903: CVarStr var_238
  loc_B6C906: ParmAry1St
  loc_B6C90C: FMemLdR4 var_1E8(16)
  loc_B6C911: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B6C916: CVarStr var_248
  loc_B6C919: ParmAry1St
  loc_B6C91F: LitI4 1
  loc_B6C924: LitI4 1
  loc_B6C929: LitVarStr var_108, "yyyymmdd"
  loc_B6C92E: FStVarCopyObj var_208
  loc_B6C931: FLdRfVar var_208
  loc_B6C934: FMemLdRf 0
  loc_B6C939: CVarRef
  loc_B6C93E: ImpAdCallI2 Format$(, )
  loc_B6C943: CVarStr var_258
  loc_B6C946: ParmAry1St
  loc_B6C94C: FMemLdR4 var_1E8(24)
  loc_B6C951: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B6C956: CVarStr var_268
  loc_B6C959: ParmAry1St
  loc_B6C95F: FLdRfVar var_C8
  loc_B6C962: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B6C967: FStStr var_88
  loc_B6C96A: FLdRfVar var_C8
  loc_B6C96D: Erase
  loc_B6C96E: FLdZeroAd var_88
  loc_B6C971: CVarStr var_278
  loc_B6C974: PopAdLdVar
  loc_B6C975: FLdPr Me
  loc_B6C978: MemLdRfVar from_stack_1.global_76
  loc_B6C97B: LdPrVar
  loc_B6C97D: LateMemCall
  loc_B6C983: FFreeAd var_8C = ""
  loc_B6C98A: FFreeVar var_9C = "": var_1F8 = "": var_208 = ""
  loc_B6C995: LitI4 0
  loc_B6C99A: FStR4 var_1E8
  loc_B6C99D: AryUnlock
  loc_B6C9A0: FLdPr Me
  loc_B6C9A3: MemLdRfVar from_stack_1.global_100
  loc_B6C9A6: NextI4 var_1E0, loc_B6C7D5
  loc_B6C9AB: FLdPr Me
  loc_B6C9AE: MemLdRfVar from_stack_1.global_76
  loc_B6C9B1: LdPrVar
  loc_B6C9B3: LateMemCall
  loc_B6C9B9: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B22268
  'Data Table: 482080
  loc_B21FB4: FLdRfVar var_88
  loc_B21FB7: LitI2_Byte 0
  loc_B21FB9: LitI2_Byte &HFF
  loc_B21FBB: ImpAdLdI4 MemVar_D93C84
  loc_B21FBE: FLdPr Me
  loc_B21FC1: MemLdRfVar from_stack_1.global_56
  loc_B21FC4: NewIfNullPr IFileSystem3
  loc_B21FC7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B21FCC: ILdRf var_88
  loc_B21FCF: FLdPr Me
  loc_B21FD2: MemStVarAd
  loc_B21FD6: FFree1Ad var_88
  loc_B21FD9: LitI2_Byte &HFF
  loc_B21FDB: ImpAdStI2 MemVar_D93C8A
  loc_B21FDE: Call Proc_340_21_BDFF04()
  loc_B21FE3: FLdPr Me
  loc_B21FE6: MemLdStr global_96
  loc_B21FE9: LitI2_Byte 1
  loc_B21FEB: FnUBound
  loc_B21FED: LitI4 0
  loc_B21FF2: EqI4
  loc_B21FF3: BranchF loc_B22035
  loc_B21FF6: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B21FFB: PopAdLdVar
  loc_B21FFC: FLdPr Me
  loc_B21FFF: MemLdRfVar from_stack_1.global_60
  loc_B22002: LdPrVar
  loc_B22004: LateMemCall
  loc_B2200A: LitVarStr var_98, "   <td colspan=""9"" align=""center""><strong>SIN MOVIMIENTO</strong></td>"
  loc_B2200F: PopAdLdVar
  loc_B22010: FLdPr Me
  loc_B22013: MemLdRfVar from_stack_1.global_60
  loc_B22016: LdPrVar
  loc_B22018: LateMemCall
  loc_B2201E: LitVarStr var_98, "     </tr>"
  loc_B22023: PopAdLdVar
  loc_B22024: FLdPr Me
  loc_B22027: MemLdRfVar from_stack_1.global_60
  loc_B2202A: LdPrVar
  loc_B2202C: LateMemCall
  loc_B22032: Branch loc_B2224B
  loc_B22035: LitI4 1
  loc_B2203A: FLdPr Me
  loc_B2203D: MemLdRfVar from_stack_1.global_100
  loc_B22040: FLdPr Me
  loc_B22043: MemLdStr global_96
  loc_B22046: LitI2_Byte 1
  loc_B22048: FnUBound
  loc_B2204A: ForI4 var_B0
  loc_B22050: FLdPr Me
  loc_B22053: MemLdStr global_100
  loc_B22056: FLdPr Me
  loc_B22059: MemLdStr global_96
  loc_B2205C: AryLock
  loc_B2205F: Ary1LdRf
  loc_B22060: FStR4 var_B8
  loc_B22063: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B22068: PopAdLdVar
  loc_B22069: FLdPr Me
  loc_B2206C: MemLdRfVar from_stack_1.global_60
  loc_B2206F: LdPrVar
  loc_B22071: LateMemCall
  loc_B22077: LitStr vbNullString
  loc_B2207A: LitI2_Byte 0
  loc_B2207C: LitI2_Byte 0
  loc_B2207E: LitI2_Byte 0
  loc_B22080: LitStr "right"
  loc_B22083: FMemLdR4 var_B8(0)
  loc_B22088: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2208D: CVarStr var_C8
  loc_B22090: PopAdLdVar
  loc_B22091: FLdPr Me
  loc_B22094: MemLdRfVar from_stack_1.global_60
  loc_B22097: LdPrVar
  loc_B22099: LateMemCall
  loc_B2209F: FFree1Var var_C8 = ""
  loc_B220A2: LitStr vbNullString
  loc_B220A5: LitI2_Byte 0
  loc_B220A7: LitI2_Byte 0
  loc_B220A9: LitI2_Byte 0
  loc_B220AB: LitStr "left"
  loc_B220AE: FMemLdR4 var_B8(4)
  loc_B220B3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B220B8: CVarStr var_C8
  loc_B220BB: PopAdLdVar
  loc_B220BC: FLdPr Me
  loc_B220BF: MemLdRfVar from_stack_1.global_60
  loc_B220C2: LdPrVar
  loc_B220C4: LateMemCall
  loc_B220CA: FFree1Var var_C8 = ""
  loc_B220CD: LitStr vbNullString
  loc_B220D0: LitI2_Byte 0
  loc_B220D2: LitI2_Byte 0
  loc_B220D4: LitI2_Byte 0
  loc_B220D6: LitStr "right"
  loc_B220D9: FMemLdR4 var_B8(28)
  loc_B220DE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B220E3: CVarStr var_C8
  loc_B220E6: PopAdLdVar
  loc_B220E7: FLdPr Me
  loc_B220EA: MemLdRfVar from_stack_1.global_60
  loc_B220ED: LdPrVar
  loc_B220EF: LateMemCall
  loc_B220F5: FFree1Var var_C8 = ""
  loc_B220F8: LitStr vbNullString
  loc_B220FB: LitI2_Byte 0
  loc_B220FD: LitI2_Byte 0
  loc_B220FF: LitI2_Byte 0
  loc_B22101: LitStr "right"
  loc_B22104: FMemLdR4 var_B8(8)
  loc_B22109: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2210E: CVarStr var_C8
  loc_B22111: PopAdLdVar
  loc_B22112: FLdPr Me
  loc_B22115: MemLdRfVar from_stack_1.global_60
  loc_B22118: LdPrVar
  loc_B2211A: LateMemCall
  loc_B22120: FFree1Var var_C8 = ""
  loc_B22123: LitStr vbNullString
  loc_B22126: LitI2_Byte 0
  loc_B22128: LitI2_Byte 0
  loc_B2212A: LitI2_Byte 0
  loc_B2212C: LitStr "left"
  loc_B2212F: LitStr "Juzgado Paz Letrado de Guaymallén"
  loc_B22132: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B22137: CVarStr var_C8
  loc_B2213A: PopAdLdVar
  loc_B2213B: FLdPr Me
  loc_B2213E: MemLdRfVar from_stack_1.global_60
  loc_B22141: LdPrVar
  loc_B22143: LateMemCall
  loc_B22149: FFree1Var var_C8 = ""
  loc_B2214C: LitStr vbNullString
  loc_B2214F: LitI2_Byte 0
  loc_B22151: LitI2_Byte 0
  loc_B22153: LitI2_Byte 0
  loc_B22155: LitStr "left"
  loc_B22158: LitStr "Primera"
  loc_B2215B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B22160: CVarStr var_C8
  loc_B22163: PopAdLdVar
  loc_B22164: FLdPr Me
  loc_B22167: MemLdRfVar from_stack_1.global_60
  loc_B2216A: LdPrVar
  loc_B2216C: LateMemCall
  loc_B22172: FFree1Var var_C8 = ""
  loc_B22175: LitStr vbNullString
  loc_B22178: LitI2_Byte 0
  loc_B2217A: LitI2_Byte 0
  loc_B2217C: LitI2_Byte 0
  loc_B2217E: LitStr "center"
  loc_B22181: FMemLdR4 var_B8(12)
  loc_B22186: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2218B: CVarStr var_C8
  loc_B2218E: PopAdLdVar
  loc_B2218F: FLdPr Me
  loc_B22192: MemLdRfVar from_stack_1.global_60
  loc_B22195: LdPrVar
  loc_B22197: LateMemCall
  loc_B2219D: FFree1Var var_C8 = ""
  loc_B221A0: LitStr vbNullString
  loc_B221A3: LitI2_Byte 0
  loc_B221A5: LitI2_Byte 0
  loc_B221A7: LitI2_Byte 0
  loc_B221A9: LitStr "right"
  loc_B221AC: FMemLdR4 var_B8(16)
  loc_B221B1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B221B6: CVarStr var_C8
  loc_B221B9: PopAdLdVar
  loc_B221BA: FLdPr Me
  loc_B221BD: MemLdRfVar from_stack_1.global_60
  loc_B221C0: LdPrVar
  loc_B221C2: LateMemCall
  loc_B221C8: FFree1Var var_C8 = ""
  loc_B221CB: LitStr vbNullString
  loc_B221CE: LitI2_Byte 0
  loc_B221D0: LitI2_Byte 0
  loc_B221D2: LitI2_Byte 0
  loc_B221D4: LitStr "center"
  loc_B221D7: FMemLdR4 var_B8(20)
  loc_B221DC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B221E1: CVarStr var_C8
  loc_B221E4: PopAdLdVar
  loc_B221E5: FLdPr Me
  loc_B221E8: MemLdRfVar from_stack_1.global_60
  loc_B221EB: LdPrVar
  loc_B221ED: LateMemCall
  loc_B221F3: FFree1Var var_C8 = ""
  loc_B221F6: LitStr vbNullString
  loc_B221F9: LitI2_Byte 0
  loc_B221FB: LitI2_Byte 0
  loc_B221FD: LitI2_Byte 0
  loc_B221FF: LitStr "right"
  loc_B22202: FMemLdR4 var_B8(24)
  loc_B22207: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2220C: CVarStr var_C8
  loc_B2220F: PopAdLdVar
  loc_B22210: FLdPr Me
  loc_B22213: MemLdRfVar from_stack_1.global_60
  loc_B22216: LdPrVar
  loc_B22218: LateMemCall
  loc_B2221E: FFree1Var var_C8 = ""
  loc_B22221: LitVarStr var_98, "     </tr>"
  loc_B22226: PopAdLdVar
  loc_B22227: FLdPr Me
  loc_B2222A: MemLdRfVar from_stack_1.global_60
  loc_B2222D: LdPrVar
  loc_B2222F: LateMemCall
  loc_B22235: LitI4 0
  loc_B2223A: FStR4 var_B8
  loc_B2223D: AryUnlock
  loc_B22240: FLdPr Me
  loc_B22243: MemLdRfVar from_stack_1.global_100
  loc_B22246: NextI4 var_B0, loc_B22050
  loc_B2224B: Call Proc_340_22_A0EDD8()
  loc_B22250: FLdPr Me
  loc_B22253: MemLdRfVar from_stack_1.global_60
  loc_B22256: LdPrVar
  loc_B22258: LateMemCall
  loc_B2225E: LitStr vbNullString
  loc_B22261: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B22266: ExitProcHresult
End Sub

Private Function Proc_340_21_BDFF04() 'BDFF04
  'Data Table: 482080
  loc_BDF76C: LitVarStr var_98, "<html>"
  loc_BDF771: PopAdLdVar
  loc_BDF772: FLdPr Me
  loc_BDF775: MemLdRfVar from_stack_1.global_60
  loc_BDF778: LdPrVar
  loc_BDF77A: LateMemCall
  loc_BDF780: LitVarStr var_98, "<head>"
  loc_BDF785: PopAdLdVar
  loc_BDF786: FLdPr Me
  loc_BDF789: MemLdRfVar from_stack_1.global_60
  loc_BDF78C: LdPrVar
  loc_BDF78E: LateMemCall
  loc_BDF794: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BDF799: PopAdLdVar
  loc_BDF79A: FLdPr Me
  loc_BDF79D: MemLdRfVar from_stack_1.global_60
  loc_BDF7A0: LdPrVar
  loc_BDF7A2: LateMemCall
  loc_BDF7A8: LitStr "<title>"
  loc_BDF7AB: FLdRfVar var_AC
  loc_BDF7AE: FLdPr Me
  loc_BDF7B1:  = Me.Caption
  loc_BDF7B6: ILdRf var_AC
  loc_BDF7B9: ConcatStr
  loc_BDF7BA: FStStrNoPop var_B0
  loc_BDF7BD: LitStr "</title>"
  loc_BDF7C0: ConcatStr
  loc_BDF7C1: CVarStr var_C0
  loc_BDF7C4: PopAdLdVar
  loc_BDF7C5: FLdPr Me
  loc_BDF7C8: MemLdRfVar from_stack_1.global_60
  loc_BDF7CB: LdPrVar
  loc_BDF7CD: LateMemCall
  loc_BDF7D3: FFreeStr var_AC = ""
  loc_BDF7DA: FFree1Var var_C0 = ""
  loc_BDF7DD: LitVarStr var_98, "<style type=""text/css"">"
  loc_BDF7E2: PopAdLdVar
  loc_BDF7E3: FLdPr Me
  loc_BDF7E6: MemLdRfVar from_stack_1.global_60
  loc_BDF7E9: LdPrVar
  loc_BDF7EB: LateMemCall
  loc_BDF7F1: LitVarStr var_98, ".Titulo1 {"
  loc_BDF7F6: PopAdLdVar
  loc_BDF7F7: FLdPr Me
  loc_BDF7FA: MemLdRfVar from_stack_1.global_60
  loc_BDF7FD: LdPrVar
  loc_BDF7FF: LateMemCall
  loc_BDF805: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDF80A: PopAdLdVar
  loc_BDF80B: FLdPr Me
  loc_BDF80E: MemLdRfVar from_stack_1.global_60
  loc_BDF811: LdPrVar
  loc_BDF813: LateMemCall
  loc_BDF819: LitVarStr var_98, " font-size: 18px;"
  loc_BDF81E: PopAdLdVar
  loc_BDF81F: FLdPr Me
  loc_BDF822: MemLdRfVar from_stack_1.global_60
  loc_BDF825: LdPrVar
  loc_BDF827: LateMemCall
  loc_BDF82D: LitVarStr var_98, " font-weight: bold;"
  loc_BDF832: PopAdLdVar
  loc_BDF833: FLdPr Me
  loc_BDF836: MemLdRfVar from_stack_1.global_60
  loc_BDF839: LdPrVar
  loc_BDF83B: LateMemCall
  loc_BDF841: LitVarStr var_98, "}"
  loc_BDF846: PopAdLdVar
  loc_BDF847: FLdPr Me
  loc_BDF84A: MemLdRfVar from_stack_1.global_60
  loc_BDF84D: LdPrVar
  loc_BDF84F: LateMemCall
  loc_BDF855: LitVarStr var_98, ".Titulo2 {"
  loc_BDF85A: PopAdLdVar
  loc_BDF85B: FLdPr Me
  loc_BDF85E: MemLdRfVar from_stack_1.global_60
  loc_BDF861: LdPrVar
  loc_BDF863: LateMemCall
  loc_BDF869: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDF86E: PopAdLdVar
  loc_BDF86F: FLdPr Me
  loc_BDF872: MemLdRfVar from_stack_1.global_60
  loc_BDF875: LdPrVar
  loc_BDF877: LateMemCall
  loc_BDF87D: LitVarStr var_98, " font-size: 14px;"
  loc_BDF882: PopAdLdVar
  loc_BDF883: FLdPr Me
  loc_BDF886: MemLdRfVar from_stack_1.global_60
  loc_BDF889: LdPrVar
  loc_BDF88B: LateMemCall
  loc_BDF891: LitVarStr var_98, " font-weight: bold;"
  loc_BDF896: PopAdLdVar
  loc_BDF897: FLdPr Me
  loc_BDF89A: MemLdRfVar from_stack_1.global_60
  loc_BDF89D: LdPrVar
  loc_BDF89F: LateMemCall
  loc_BDF8A5: LitVarStr var_98, "}"
  loc_BDF8AA: PopAdLdVar
  loc_BDF8AB: FLdPr Me
  loc_BDF8AE: MemLdRfVar from_stack_1.global_60
  loc_BDF8B1: LdPrVar
  loc_BDF8B3: LateMemCall
  loc_BDF8B9: LitVarStr var_98, ".Normal {"
  loc_BDF8BE: PopAdLdVar
  loc_BDF8BF: FLdPr Me
  loc_BDF8C2: MemLdRfVar from_stack_1.global_60
  loc_BDF8C5: LdPrVar
  loc_BDF8C7: LateMemCall
  loc_BDF8CD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BDF8D2: PopAdLdVar
  loc_BDF8D3: FLdPr Me
  loc_BDF8D6: MemLdRfVar from_stack_1.global_60
  loc_BDF8D9: LdPrVar
  loc_BDF8DB: LateMemCall
  loc_BDF8E1: LitVarStr var_98, " font-size: 12px;"
  loc_BDF8E6: PopAdLdVar
  loc_BDF8E7: FLdPr Me
  loc_BDF8EA: MemLdRfVar from_stack_1.global_60
  loc_BDF8ED: LdPrVar
  loc_BDF8EF: LateMemCall
  loc_BDF8F5: LitVarStr var_98, " font-style: normal;"
  loc_BDF8FA: PopAdLdVar
  loc_BDF8FB: FLdPr Me
  loc_BDF8FE: MemLdRfVar from_stack_1.global_60
  loc_BDF901: LdPrVar
  loc_BDF903: LateMemCall
  loc_BDF909: LitVarStr var_98, " font-weight: normal;"
  loc_BDF90E: PopAdLdVar
  loc_BDF90F: FLdPr Me
  loc_BDF912: MemLdRfVar from_stack_1.global_60
  loc_BDF915: LdPrVar
  loc_BDF917: LateMemCall
  loc_BDF91D: LitVarStr var_98, " font-variant: normal;"
  loc_BDF922: PopAdLdVar
  loc_BDF923: FLdPr Me
  loc_BDF926: MemLdRfVar from_stack_1.global_60
  loc_BDF929: LdPrVar
  loc_BDF92B: LateMemCall
  loc_BDF931: LitVarStr var_98, "}"
  loc_BDF936: PopAdLdVar
  loc_BDF937: FLdPr Me
  loc_BDF93A: MemLdRfVar from_stack_1.global_60
  loc_BDF93D: LdPrVar
  loc_BDF93F: LateMemCall
  loc_BDF945: LitVarStr var_98, ".Encabezado {"
  loc_BDF94A: PopAdLdVar
  loc_BDF94B: FLdPr Me
  loc_BDF94E: MemLdRfVar from_stack_1.global_60
  loc_BDF951: LdPrVar
  loc_BDF953: LateMemCall
  loc_BDF959: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BDF95E: PopAdLdVar
  loc_BDF95F: FLdPr Me
  loc_BDF962: MemLdRfVar from_stack_1.global_60
  loc_BDF965: LdPrVar
  loc_BDF967: LateMemCall
  loc_BDF96D: LitVarStr var_98, " font-size: 11px;"
  loc_BDF972: PopAdLdVar
  loc_BDF973: FLdPr Me
  loc_BDF976: MemLdRfVar from_stack_1.global_60
  loc_BDF979: LdPrVar
  loc_BDF97B: LateMemCall
  loc_BDF981: LitVarStr var_98, " font-weight: bold;"
  loc_BDF986: PopAdLdVar
  loc_BDF987: FLdPr Me
  loc_BDF98A: MemLdRfVar from_stack_1.global_60
  loc_BDF98D: LdPrVar
  loc_BDF98F: LateMemCall
  loc_BDF995: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BDF99A: PopAdLdVar
  loc_BDF99B: FLdPr Me
  loc_BDF99E: MemLdRfVar from_stack_1.global_60
  loc_BDF9A1: LdPrVar
  loc_BDF9A3: LateMemCall
  loc_BDF9A9: LitVarStr var_98, "}"
  loc_BDF9AE: PopAdLdVar
  loc_BDF9AF: FLdPr Me
  loc_BDF9B2: MemLdRfVar from_stack_1.global_60
  loc_BDF9B5: LdPrVar
  loc_BDF9B7: LateMemCall
  loc_BDF9BD: LitVarStr var_98, ".LineaDato {"
  loc_BDF9C2: PopAdLdVar
  loc_BDF9C3: FLdPr Me
  loc_BDF9C6: MemLdRfVar from_stack_1.global_60
  loc_BDF9C9: LdPrVar
  loc_BDF9CB: LateMemCall
  loc_BDF9D1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDF9D6: PopAdLdVar
  loc_BDF9D7: FLdPr Me
  loc_BDF9DA: MemLdRfVar from_stack_1.global_60
  loc_BDF9DD: LdPrVar
  loc_BDF9DF: LateMemCall
  loc_BDF9E5: LitVarStr var_98, " font-size: 10px;"
  loc_BDF9EA: PopAdLdVar
  loc_BDF9EB: FLdPr Me
  loc_BDF9EE: MemLdRfVar from_stack_1.global_60
  loc_BDF9F1: LdPrVar
  loc_BDF9F3: LateMemCall
  loc_BDF9F9: LitVarStr var_98, "}"
  loc_BDF9FE: PopAdLdVar
  loc_BDF9FF: FLdPr Me
  loc_BDFA02: MemLdRfVar from_stack_1.global_60
  loc_BDFA05: LdPrVar
  loc_BDFA07: LateMemCall
  loc_BDFA0D: LitVarStr var_98, ".Totales {"
  loc_BDFA12: PopAdLdVar
  loc_BDFA13: FLdPr Me
  loc_BDFA16: MemLdRfVar from_stack_1.global_60
  loc_BDFA19: LdPrVar
  loc_BDFA1B: LateMemCall
  loc_BDFA21: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDFA26: PopAdLdVar
  loc_BDFA27: FLdPr Me
  loc_BDFA2A: MemLdRfVar from_stack_1.global_60
  loc_BDFA2D: LdPrVar
  loc_BDFA2F: LateMemCall
  loc_BDFA35: LitVarStr var_98, " font-size: 12px;"
  loc_BDFA3A: PopAdLdVar
  loc_BDFA3B: FLdPr Me
  loc_BDFA3E: MemLdRfVar from_stack_1.global_60
  loc_BDFA41: LdPrVar
  loc_BDFA43: LateMemCall
  loc_BDFA49: LitVarStr var_98, " font-weight: bold;"
  loc_BDFA4E: PopAdLdVar
  loc_BDFA4F: FLdPr Me
  loc_BDFA52: MemLdRfVar from_stack_1.global_60
  loc_BDFA55: LdPrVar
  loc_BDFA57: LateMemCall
  loc_BDFA5D: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BDFA62: PopAdLdVar
  loc_BDFA63: FLdPr Me
  loc_BDFA66: MemLdRfVar from_stack_1.global_60
  loc_BDFA69: LdPrVar
  loc_BDFA6B: LateMemCall
  loc_BDFA71: LitVarStr var_98, "}"
  loc_BDFA76: PopAdLdVar
  loc_BDFA77: FLdPr Me
  loc_BDFA7A: MemLdRfVar from_stack_1.global_60
  loc_BDFA7D: LdPrVar
  loc_BDFA7F: LateMemCall
  loc_BDFA85: LitVarStr var_98, ".SubTotales {"
  loc_BDFA8A: PopAdLdVar
  loc_BDFA8B: FLdPr Me
  loc_BDFA8E: MemLdRfVar from_stack_1.global_60
  loc_BDFA91: LdPrVar
  loc_BDFA93: LateMemCall
  loc_BDFA99: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BDFA9E: PopAdLdVar
  loc_BDFA9F: FLdPr Me
  loc_BDFAA2: MemLdRfVar from_stack_1.global_60
  loc_BDFAA5: LdPrVar
  loc_BDFAA7: LateMemCall
  loc_BDFAAD: LitVarStr var_98, " font-size: 10px;"
  loc_BDFAB2: PopAdLdVar
  loc_BDFAB3: FLdPr Me
  loc_BDFAB6: MemLdRfVar from_stack_1.global_60
  loc_BDFAB9: LdPrVar
  loc_BDFABB: LateMemCall
  loc_BDFAC1: LitVarStr var_98, " font-weight: bold;"
  loc_BDFAC6: PopAdLdVar
  loc_BDFAC7: FLdPr Me
  loc_BDFACA: MemLdRfVar from_stack_1.global_60
  loc_BDFACD: LdPrVar
  loc_BDFACF: LateMemCall
  loc_BDFAD5: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BDFADA: PopAdLdVar
  loc_BDFADB: FLdPr Me
  loc_BDFADE: MemLdRfVar from_stack_1.global_60
  loc_BDFAE1: LdPrVar
  loc_BDFAE3: LateMemCall
  loc_BDFAE9: LitVarStr var_98, "}"
  loc_BDFAEE: PopAdLdVar
  loc_BDFAEF: FLdPr Me
  loc_BDFAF2: MemLdRfVar from_stack_1.global_60
  loc_BDFAF5: LdPrVar
  loc_BDFAF7: LateMemCall
  loc_BDFAFD: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BDFB02: PopAdLdVar
  loc_BDFB03: FLdPr Me
  loc_BDFB06: MemLdRfVar from_stack_1.global_60
  loc_BDFB09: LdPrVar
  loc_BDFB0B: LateMemCall
  loc_BDFB11: LitVarStr var_98, "</style>"
  loc_BDFB16: PopAdLdVar
  loc_BDFB17: FLdPr Me
  loc_BDFB1A: MemLdRfVar from_stack_1.global_60
  loc_BDFB1D: LdPrVar
  loc_BDFB1F: LateMemCall
  loc_BDFB25: LitI4 0
  loc_BDFB2A: FStStrCopy var_B0
  loc_BDFB2D: FLdRfVar var_B0
  loc_BDFB30: LitI4 0
  loc_BDFB35: FStStrCopy var_AC
  loc_BDFB38: FLdRfVar var_AC
  loc_BDFB3B: LitI2_Byte &HFF
  loc_BDFB3D: PopTmpLdAd2 var_C2
  loc_BDFB40: FLdPr Me
  loc_BDFB43: MemLdRfVar from_stack_1.global_60
  loc_BDFB46: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BDFB4B: FFreeStr var_AC = ""
  loc_BDFB52: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BDFB57: PopAdLdVar
  loc_BDFB58: FLdPr Me
  loc_BDFB5B: MemLdRfVar from_stack_1.global_60
  loc_BDFB5E: LdPrVar
  loc_BDFB60: LateMemCall
  loc_BDFB66: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BDFB6B: PopAdLdVar
  loc_BDFB6C: FLdPr Me
  loc_BDFB6F: MemLdRfVar from_stack_1.global_60
  loc_BDFB72: LdPrVar
  loc_BDFB74: LateMemCall
  loc_BDFB7A: LitVarStr var_98, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BDFB7F: PopAdLdVar
  loc_BDFB80: FLdPr Me
  loc_BDFB83: MemLdRfVar from_stack_1.global_60
  loc_BDFB86: LdPrVar
  loc_BDFB88: LateMemCall
  loc_BDFB8E: FLdPr Me
  loc_BDFB91: MemLdI2 bLogos
  loc_BDFB94: BranchF loc_BDFBDD
  loc_BDFB97: LitStr "  <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BDFB9A: LitI2_Byte &H5F
  loc_BDFB9C: CStrUI1
  loc_BDFB9E: FStStrNoPop var_AC
  loc_BDFBA1: ConcatStr
  loc_BDFBA2: FStStrNoPop var_B0
  loc_BDFBA5: LitStr """ height="""
  loc_BDFBA8: ConcatStr
  loc_BDFBA9: FStStrNoPop var_C8
  loc_BDFBAC: LitI2_Byte &H3C
  loc_BDFBAE: CStrUI1
  loc_BDFBB0: FStStrNoPop var_CC
  loc_BDFBB3: ConcatStr
  loc_BDFBB4: FStStrNoPop var_D0
  loc_BDFBB7: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BDFBBA: ConcatStr
  loc_BDFBBB: CVarStr var_C0
  loc_BDFBBE: PopAdLdVar
  loc_BDFBBF: FLdPr Me
  loc_BDFBC2: MemLdRfVar from_stack_1.global_60
  loc_BDFBC5: LdPrVar
  loc_BDFBC7: LateMemCall
  loc_BDFBCD: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = ""
  loc_BDFBDA: FFree1Var var_C0 = ""
  loc_BDFBDD: LitStr "     <br>"
  loc_BDFBE0: LitStr "Municipalidad de Guaymallén"
  loc_BDFBE3: ConcatStr
  loc_BDFBE4: FStStrNoPop var_AC
  loc_BDFBE7: LitStr "</p>"
  loc_BDFBEA: ConcatStr
  loc_BDFBEB: CVarStr var_C0
  loc_BDFBEE: PopAdLdVar
  loc_BDFBEF: FLdPr Me
  loc_BDFBF2: MemLdRfVar from_stack_1.global_60
  loc_BDFBF5: LdPrVar
  loc_BDFBF7: LateMemCall
  loc_BDFBFD: FFree1Str var_AC
  loc_BDFC00: FFree1Var var_C0 = ""
  loc_BDFC03: LitStr "    <p>"
  loc_BDFC06: FLdRfVar var_AC
  loc_BDFC09: FLdPr Me
  loc_BDFC0C:  = Me.Caption
  loc_BDFC11: ILdRf var_AC
  loc_BDFC14: ConcatStr
  loc_BDFC15: FStStrNoPop var_B0
  loc_BDFC18: LitStr "</p></th>"
  loc_BDFC1B: ConcatStr
  loc_BDFC1C: CVarStr var_C0
  loc_BDFC1F: PopAdLdVar
  loc_BDFC20: FLdPr Me
  loc_BDFC23: MemLdRfVar from_stack_1.global_60
  loc_BDFC26: LdPrVar
  loc_BDFC28: LateMemCall
  loc_BDFC2E: FFreeStr var_AC = ""
  loc_BDFC35: FFree1Var var_C0 = ""
  loc_BDFC38: LitVarStr var_98, "  </tr>"
  loc_BDFC3D: PopAdLdVar
  loc_BDFC3E: FLdPr Me
  loc_BDFC41: MemLdRfVar from_stack_1.global_60
  loc_BDFC44: LdPrVar
  loc_BDFC46: LateMemCall
  loc_BDFC4C: LitVarStr var_98, "  <tr>"
  loc_BDFC51: PopAdLdVar
  loc_BDFC52: FLdPr Me
  loc_BDFC55: MemLdRfVar from_stack_1.global_60
  loc_BDFC58: LdPrVar
  loc_BDFC5A: LateMemCall
  loc_BDFC60: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BDFC65: PopAdLdVar
  loc_BDFC66: FLdPr Me
  loc_BDFC69: MemLdRfVar from_stack_1.global_60
  loc_BDFC6C: LdPrVar
  loc_BDFC6E: LateMemCall
  loc_BDFC74: LitVarStr var_98, "  </tr>"
  loc_BDFC79: PopAdLdVar
  loc_BDFC7A: FLdPr Me
  loc_BDFC7D: MemLdRfVar from_stack_1.global_60
  loc_BDFC80: LdPrVar
  loc_BDFC82: LateMemCall
  loc_BDFC88: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BDFC8D: PopAdLdVar
  loc_BDFC8E: FLdPr Me
  loc_BDFC91: MemLdRfVar from_stack_1.global_60
  loc_BDFC94: LdPrVar
  loc_BDFC96: LateMemCall
  loc_BDFC9C: LitStr "    <td align=""left"" valign=""top""><strong>Periodo: </strong>"
  loc_BDFC9F: FLdPr Me
  loc_BDFCA2: VCallAd Control_ID_PeriInfoMsk
  loc_BDFCA5: FStAdFunc var_D4
  loc_BDFCA8: FLdPr var_D4
  loc_BDFCAB: LateIdLdVar var_C0 DispID_22 0
  loc_BDFCB2: CStrVarTmp
  loc_BDFCB3: FStStrNoPop var_AC
  loc_BDFCB6: ConcatStr
  loc_BDFCB7: FStStrNoPop var_B0
  loc_BDFCBA: LitStr "</td>"
  loc_BDFCBD: ConcatStr
  loc_BDFCBE: CVarStr var_E4
  loc_BDFCC1: PopAdLdVar
  loc_BDFCC2: FLdPr Me
  loc_BDFCC5: MemLdRfVar from_stack_1.global_60
  loc_BDFCC8: LdPrVar
  loc_BDFCCA: LateMemCall
  loc_BDFCD0: FFreeStr var_AC = ""
  loc_BDFCD7: FFree1Ad var_D4
  loc_BDFCDA: FFreeVar var_C0 = ""
  loc_BDFCE1: LitStr "    <td align=""center"" valign=""top""><strong>Trimestre: </strong>"
  loc_BDFCE4: FLdRfVar var_AC
  loc_BDFCE7: FLdPr Me
  loc_BDFCEA: VCallAd Control_ID_TrimestreCbo
  loc_BDFCED: FStAdFunc var_D4
  loc_BDFCF0: FLdPr var_D4
  loc_BDFCF3:  = Me.Text
  loc_BDFCF8: ILdRf var_AC
  loc_BDFCFB: ConcatStr
  loc_BDFCFC: FStStrNoPop var_B0
  loc_BDFCFF: LitStr "</td>"
  loc_BDFD02: ConcatStr
  loc_BDFD03: CVarStr var_C0
  loc_BDFD06: PopAdLdVar
  loc_BDFD07: FLdPr Me
  loc_BDFD0A: MemLdRfVar from_stack_1.global_60
  loc_BDFD0D: LdPrVar
  loc_BDFD0F: LateMemCall
  loc_BDFD15: FFreeStr var_AC = ""
  loc_BDFD1C: FFree1Ad var_D4
  loc_BDFD1F: FFree1Var var_C0 = ""
  loc_BDFD22: LitStr "    <td align=""right"" valign=""top""><strong>Nomenclador: </strong>"
  loc_BDFD25: LitStr "060204"
  loc_BDFD28: ConcatStr
  loc_BDFD29: FStStrNoPop var_AC
  loc_BDFD2C: LitStr "</td>"
  loc_BDFD2F: ConcatStr
  loc_BDFD30: CVarStr var_C0
  loc_BDFD33: PopAdLdVar
  loc_BDFD34: FLdPr Me
  loc_BDFD37: MemLdRfVar from_stack_1.global_60
  loc_BDFD3A: LdPrVar
  loc_BDFD3C: LateMemCall
  loc_BDFD42: FFree1Str var_AC
  loc_BDFD45: FFree1Var var_C0 = ""
  loc_BDFD48: LitVarStr var_98, "  </tr>"
  loc_BDFD4D: PopAdLdVar
  loc_BDFD4E: FLdPr Me
  loc_BDFD51: MemLdRfVar from_stack_1.global_60
  loc_BDFD54: LdPrVar
  loc_BDFD56: LateMemCall
  loc_BDFD5C: LitVarStr var_98, "</table>"
  loc_BDFD61: PopAdLdVar
  loc_BDFD62: FLdPr Me
  loc_BDFD65: MemLdRfVar from_stack_1.global_60
  loc_BDFD68: LdPrVar
  loc_BDFD6A: LateMemCall
  loc_BDFD70: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BDFD75: PopAdLdVar
  loc_BDFD76: FLdPr Me
  loc_BDFD79: MemLdRfVar from_stack_1.global_60
  loc_BDFD7C: LdPrVar
  loc_BDFD7E: LateMemCall
  loc_BDFD84: LitVarStr var_98, "  <thead>"
  loc_BDFD89: PopAdLdVar
  loc_BDFD8A: FLdPr Me
  loc_BDFD8D: MemLdRfVar from_stack_1.global_60
  loc_BDFD90: LdPrVar
  loc_BDFD92: LateMemCall
  loc_BDFD98: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BDFD9D: PopAdLdVar
  loc_BDFD9E: FLdPr Me
  loc_BDFDA1: MemLdRfVar from_stack_1.global_60
  loc_BDFDA4: LdPrVar
  loc_BDFDA6: LateMemCall
  loc_BDFDAC: LitVarStr var_98, "    <th colspan=""3"">Expediente</th>"
  loc_BDFDB1: PopAdLdVar
  loc_BDFDB2: FLdPr Me
  loc_BDFDB5: MemLdRfVar from_stack_1.global_60
  loc_BDFDB8: LdPrVar
  loc_BDFDBA: LateMemCall
  loc_BDFDC0: LitVarStr var_98, "    <th rowspan=""2"">Monto Demandado</th>"
  loc_BDFDC5: PopAdLdVar
  loc_BDFDC6: FLdPr Me
  loc_BDFDC9: MemLdRfVar from_stack_1.global_60
  loc_BDFDCC: LdPrVar
  loc_BDFDCE: LateMemCall
  loc_BDFDD4: LitVarStr var_98, "    <th rowspan=""2"">Tribunal de Radicación</th>"
  loc_BDFDD9: PopAdLdVar
  loc_BDFDDA: FLdPr Me
  loc_BDFDDD: MemLdRfVar from_stack_1.global_60
  loc_BDFDE0: LdPrVar
  loc_BDFDE2: LateMemCall
  loc_BDFDE8: LitVarStr var_98, "    <th rowspan=""2"">Circunscripción</th>"
  loc_BDFDED: PopAdLdVar
  loc_BDFDEE: FLdPr Me
  loc_BDFDF1: MemLdRfVar from_stack_1.global_60
  loc_BDFDF4: LdPrVar
  loc_BDFDF6: LateMemCall
  loc_BDFDFC: LitVarStr var_98, "    <th colspan=""2"">Sentencia</th>"
  loc_BDFE01: PopAdLdVar
  loc_BDFE02: FLdPr Me
  loc_BDFE05: MemLdRfVar from_stack_1.global_60
  loc_BDFE08: LdPrVar
  loc_BDFE0A: LateMemCall
  loc_BDFE10: LitVarStr var_98, "    <th colspan=""2"">Cobrado</th>"
  loc_BDFE15: PopAdLdVar
  loc_BDFE16: FLdPr Me
  loc_BDFE19: MemLdRfVar from_stack_1.global_60
  loc_BDFE1C: LdPrVar
  loc_BDFE1E: LateMemCall
  loc_BDFE24: LitVarStr var_98, "  </tr>"
  loc_BDFE29: PopAdLdVar
  loc_BDFE2A: FLdPr Me
  loc_BDFE2D: MemLdRfVar from_stack_1.global_60
  loc_BDFE30: LdPrVar
  loc_BDFE32: LateMemCall
  loc_BDFE38: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BDFE3D: PopAdLdVar
  loc_BDFE3E: FLdPr Me
  loc_BDFE41: MemLdRfVar from_stack_1.global_60
  loc_BDFE44: LdPrVar
  loc_BDFE46: LateMemCall
  loc_BDFE4C: LitVarStr var_98, "    <th>N&ordm;</th>"
  loc_BDFE51: PopAdLdVar
  loc_BDFE52: FLdPr Me
  loc_BDFE55: MemLdRfVar from_stack_1.global_60
  loc_BDFE58: LdPrVar
  loc_BDFE5A: LateMemCall
  loc_BDFE60: LitVarStr var_98, "    <th>Carátula</th>"
  loc_BDFE65: PopAdLdVar
  loc_BDFE66: FLdPr Me
  loc_BDFE69: MemLdRfVar from_stack_1.global_60
  loc_BDFE6C: LdPrVar
  loc_BDFE6E: LateMemCall
  loc_BDFE74: LitVarStr var_98, "    <th>Apremio</th>"
  loc_BDFE79: PopAdLdVar
  loc_BDFE7A: FLdPr Me
  loc_BDFE7D: MemLdRfVar from_stack_1.global_60
  loc_BDFE80: LdPrVar
  loc_BDFE82: LateMemCall
  loc_BDFE88: LitVarStr var_98, "    <th>Fecha</th>"
  loc_BDFE8D: PopAdLdVar
  loc_BDFE8E: FLdPr Me
  loc_BDFE91: MemLdRfVar from_stack_1.global_60
  loc_BDFE94: LdPrVar
  loc_BDFE96: LateMemCall
  loc_BDFE9C: LitVarStr var_98, "    <th>Importe</th>"
  loc_BDFEA1: PopAdLdVar
  loc_BDFEA2: FLdPr Me
  loc_BDFEA5: MemLdRfVar from_stack_1.global_60
  loc_BDFEA8: LdPrVar
  loc_BDFEAA: LateMemCall
  loc_BDFEB0: LitVarStr var_98, "    <th>Fecha</th>"
  loc_BDFEB5: PopAdLdVar
  loc_BDFEB6: FLdPr Me
  loc_BDFEB9: MemLdRfVar from_stack_1.global_60
  loc_BDFEBC: LdPrVar
  loc_BDFEBE: LateMemCall
  loc_BDFEC4: LitVarStr var_98, "    <th>Importe</th>"
  loc_BDFEC9: PopAdLdVar
  loc_BDFECA: FLdPr Me
  loc_BDFECD: MemLdRfVar from_stack_1.global_60
  loc_BDFED0: LdPrVar
  loc_BDFED2: LateMemCall
  loc_BDFED8: LitVarStr var_98, "  </tr>"
  loc_BDFEDD: PopAdLdVar
  loc_BDFEDE: FLdPr Me
  loc_BDFEE1: MemLdRfVar from_stack_1.global_60
  loc_BDFEE4: LdPrVar
  loc_BDFEE6: LateMemCall
  loc_BDFEEC: LitVarStr var_98, "  </thead>"
  loc_BDFEF1: PopAdLdVar
  loc_BDFEF2: FLdPr Me
  loc_BDFEF5: MemLdRfVar from_stack_1.global_60
  loc_BDFEF8: LdPrVar
  loc_BDFEFA: LateMemCall
  loc_BDFF00: ExitProcHresult
End Function

Private Function Proc_340_22_A0EDD8() 'A0EDD8
  'Data Table: 482080
  loc_A0ED98: LitVarStr var_94, "</table>"
  loc_A0ED9D: PopAdLdVar
  loc_A0ED9E: FLdPr Me
  loc_A0EDA1: MemLdRfVar from_stack_1.global_60
  loc_A0EDA4: LdPrVar
  loc_A0EDA6: LateMemCall
  loc_A0EDAC: LitVarStr var_94, "</body>"
  loc_A0EDB1: PopAdLdVar
  loc_A0EDB2: FLdPr Me
  loc_A0EDB5: MemLdRfVar from_stack_1.global_60
  loc_A0EDB8: LdPrVar
  loc_A0EDBA: LateMemCall
  loc_A0EDC0: LitVarStr var_94, "</html>"
  loc_A0EDC5: PopAdLdVar
  loc_A0EDC6: FLdPr Me
  loc_A0EDC9: MemLdRfVar from_stack_1.global_60
  loc_A0EDCC: LdPrVar
  loc_A0EDCE: LateMemCall
  loc_A0EDD4: ExitProcHresult
End Function
