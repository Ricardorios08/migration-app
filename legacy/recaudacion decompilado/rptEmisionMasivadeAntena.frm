VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Begin VB.Form rptEmisionMasivadeAntena
  Caption = "Emisión Masiva de Antena"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEmisionMasivadeAntena.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2448
  ClientTop = 2292
  ClientWidth = 11640
  ClientHeight = 7824
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame Frame4
    Caption = "Exportar"
    Left = 5040
    Top = 6240
    Width = 2775
    Height = 1215
    TabIndex = 17
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 840
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7572
    Width = 11640
    Height = 252
    TabIndex = 10
    OleObjectBlob = "rptEmisionMasivadeAntena.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 10320
    Top = 6480
    Width = 855
    Height = 735
    TabIndex = 6
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
    Picture = "rptEmisionMasivadeAntena.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEmisionMasivadeAntena.frx":0B9C
    Left = 10920
    Top = 6240
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 1200
    Top = 6240
    Width = 3495
    Height = 1215
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 840
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 3
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11415
    Height = 6135
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9720
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 5
    End
    Begin VB.Frame Frame5
      Caption = "Orden"
      Left = 240
      Top = 4920
      Width = 9375
      Height = 975
      TabIndex = 11
      Begin MSMask.MaskEdBox OrdeLianDesdeMsk
        Left = 2130
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptEmisionMasivadeAntena.frx":0C00
      End
      Begin MSMask.MaskEdBox OrdeLianHastaMsk
        Left = 5970
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptEmisionMasivadeAntena.frx":0C98
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 5205
        Top = 360
        Width = 705
        Height = 300
        TabIndex = 13
        AutoSize = -1  'True
      End
      Begin VB.Label Label1
        Caption = "Desde:"
        Left = 1320
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 12
        AutoSize = -1  'True
      End
    End
    Begin MSDataGridLib.DataGrid dgdLiquidacion
      Left = 240
      Top = 240
      Width = 9360
      Height = 4635
      TabIndex = 0
      OleObjectBlob = "rptEmisionMasivadeAntena.frx":0D30
    End
    Begin MSComctlLib.ProgressBar pbar
      Left = 10140
      Top = 960
      Width = 735
      Height = 4575
      Visible = 0   'False
      TabIndex = 15
      OleObjectBlob = "rptEmisionMasivadeAntena.frx":1036
    End
    Begin VB.Label ProgresoLbl
      Left = 9750
      Top = 5595
      Width = 1515
      Height = 300
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10560
    Top = 6720
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptEmisionMasivadeAntena.frx":109E
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 7680
    Top = 6360
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptEmisionMasivadeAntena.frx":1152
  End
End

Attribute VB_Name = "rptEmisionMasivadeAntena"

Public bGenerado As Boolean

Private Type UDT_1_0067B88C
  bStruc(48) As Byte ' String fields: 11
End Type

Private Type UDT_2_00560654
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_3_0067B958
  bStruc(116) As Byte ' String fields: 28
End Type


Private Sub OrdeLianHastaMsk_UnknownEvent_0 '9C0488
  'Data Table: 4BFD94
  loc_9C0474: FLdPr Me
  loc_9C0477: VCallAd Control_ID_OrdeLianHastaMsk
  loc_9C047A: CVarAd
  loc_9C047E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0483: FFree1Var var_94 = ""
  loc_9C0486: ExitProcHresult
End Sub

Private Sub OrdeLianHastaMsk_UnknownEvent_8 '9B057C
  'Data Table: 4BFD94
  loc_9B0574: LitI2_Byte &HFF
  loc_9B0576: Call Proc_320_19_AF4A40()
  loc_9B057B: ExitProcHresult
End Sub

Private Sub OrdeLianDesdeMsk_UnknownEvent_0 '9C03F8
  'Data Table: 4BFD94
  loc_9C03E4: FLdPr Me
  loc_9C03E7: VCallAd Control_ID_OrdeLianDesdeMsk
  loc_9C03EA: CVarAd
  loc_9C03EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C03F3: FFree1Var var_94 = ""
  loc_9C03F6: ExitProcHresult
End Sub

Private Sub OrdeLianDesdeMsk_UnknownEvent_8 '9B0544
  'Data Table: 4BFD94
  loc_9B053C: LitI2_Byte &HFF
  loc_9B053E: Call Proc_320_19_AF4A40()
  loc_9B0543: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ADB20C
  'Data Table: 4BFD94
  loc_ADB0C8: LitI2_Byte 0
  loc_ADB0CA: FLdPr Me
  loc_ADB0CD: MemStI2 bGenerado
  loc_ADB0D0: LitI2_Byte &HFF
  loc_ADB0D2: ILdRf Me
  loc_ADB0D5: CastAd
  loc_ADB0D8: FStAdFunc var_88
  loc_ADB0DB: FLdRfVar var_88
  loc_ADB0DE: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_ADB0E3: FFree1Ad var_88
  loc_ADB0E6: FLdPr Me
  loc_ADB0E9: MemLdRfVar from_stack_1.global_80
  loc_ADB0EC: NewIfNullPr clsliquidacion
  loc_ADB0EF: Call clsliquidacion.Requery()
  loc_ADB0F4: LitVarStr var_98, vbNullString
  loc_ADB0F9: PopAdLdVar
  loc_ADB0FA: FLdPr Me
  loc_ADB0FD: VCallAd Control_ID_OrdeLianDesdeMsk
  loc_ADB100: FStAdFunc var_88
  loc_ADB103: FLdPr var_88
  loc_ADB106: LateIdSt
  loc_ADB10B: FFree1Ad var_88
  loc_ADB10E: LitVarStr var_98, vbNullString
  loc_ADB113: PopAdLdVar
  loc_ADB114: FLdPr Me
  loc_ADB117: VCallAd Control_ID_OrdeLianHastaMsk
  loc_ADB11A: FStAdFunc var_88
  loc_ADB11D: FLdPr var_88
  loc_ADB120: LateIdSt
  loc_ADB125: FFree1Ad var_88
  loc_ADB128: LitStr vbNullString
  loc_ADB12B: FLdPr Me
  loc_ADB12E: VCallAd Control_ID_ProgresoLbl
  loc_ADB131: FStAdFunc var_88
  loc_ADB134: FLdPr var_88
  loc_ADB137: Me.Caption = from_stack_1
  loc_ADB13C: FFree1Ad var_88
  loc_ADB13F: FLdRfVar var_AC
  loc_ADB142: FLdPr Me
  loc_ADB145: MemLdRfVar from_stack_1.global_80
  loc_ADB148: NewIfNullPr clsliquidacion
  loc_ADB14B: from_stack_1 = clsliquidacion.RecordCount
  loc_ADB150: ILdRf var_AC
  loc_ADB153: LitI4 0
  loc_ADB158: GtI4
  loc_ADB159: BranchF loc_ADB1CB
  loc_ADB15C: LitI4 0
  loc_ADB161: LitI4 1
  loc_ADB166: FLdRfVar var_B0
  loc_ADB169: Redim
  loc_ADB173: FLdPr Me
  loc_ADB176: MemLdRfVar from_stack_1.global_80
  loc_ADB179: NewIfNullAd
  loc_ADB17C: FStAd var_88 
  loc_ADB180: FLdRfVar var_88
  loc_ADB183: CVarRef
  loc_ADB188: ParmAry1St
  loc_ADB18E: FLdPr Me
  loc_ADB191: VCallAd Control_ID_dgdLiquidacion
  loc_ADB194: CVarAd
  loc_ADB198: ParmAry1St
  loc_ADB19E: FLdRfVar var_B0
  loc_ADB1A1: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ADB1A6: ILdRf var_88
  loc_ADB1A9: CastAd
  loc_ADB1AC: FLdPr Me
  loc_ADB1AF: MemStAdFunc
  loc_ADB1B3: FLdRfVar var_B0
  loc_ADB1B6: Erase
  loc_ADB1B7: FFree1Ad var_88
  loc_ADB1BA: FLdPr Me
  loc_ADB1BD: MemLdRfVar from_stack_1.global_80
  loc_ADB1C0: NewIfNullPr clsliquidacion
  loc_ADB1C3: Call clsliquidacion.MoveLast()
  loc_ADB1C8: Branch loc_ADB1E7
  loc_ADB1CB: LitStr "No existen liquidaciones para listar"
  loc_ADB1CE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADB1D3: ILdRf Me
  loc_ADB1D6: CastAd
  loc_ADB1D9: FStAdFunc var_88
  loc_ADB1DC: FLdRfVar var_88
  loc_ADB1DF: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_ADB1E4: FFree1Ad var_88
  loc_ADB1E7: LitStr vbNullString
  loc_ADB1EA: FLdPr Me
  loc_ADB1ED: Me.Tag = from_stack_1
  loc_ADB1F2: Call HabilitarCriterio()
  loc_ADB1F7: ILdRf Me
  loc_ADB1FA: CastAd
  loc_ADB1FD: FStAdFunc var_88
  loc_ADB200: FLdRfVar var_88
  loc_ADB203: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ADB208: FFree1Ad var_88
  loc_ADB20B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'B0DBC8
  'Data Table: 4BFD94
  loc_B0D994: LitVarStr var_94, "Enviando a impresora predeterminada..."
  loc_B0D999: PopAdLdVar
  loc_B0D99A: FLdPr Me
  loc_B0D99D: VCallAd Control_ID_statusBar
  loc_B0D9A0: FStAdFunc var_A8
  loc_B0D9A3: FLdPr var_A8
  loc_B0D9A6: LateIdSt
  loc_B0D9AB: FFree1Ad var_A8
  loc_B0D9AE: ILdRf Me
  loc_B0D9B1: CastAd
  loc_B0D9B4: FStAdFunc var_A8
  loc_B0D9B7: FLdRfVar var_A8
  loc_B0D9BA: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B0D9BF: FFree1Ad var_A8
  loc_B0D9C2: LitVar_FALSE
  loc_B0D9C6: PopAdLdVar
  loc_B0D9C7: FLdPr Me
  loc_B0D9CA: VCallAd Control_ID_dgdLiquidacion
  loc_B0D9CD: FStAdFunc var_A8
  loc_B0D9D0: FLdPr var_A8
  loc_B0D9D3: LateIdSt
  loc_B0D9D8: FFree1Ad var_A8
  loc_B0D9DB: Call GeneraReporte()
  loc_B0D9E0: FLdPr Me
  loc_B0D9E3: MemLdI2 bGenerado
  loc_B0D9E6: BranchF loc_B0DB7D
  loc_B0D9E9: FLdPr Me
  loc_B0D9EC: MemLdStr global_92
  loc_B0D9EF: LitI2_Byte 1
  loc_B0D9F1: FnUBound
  loc_B0D9F3: CR8I4
  loc_B0D9F4: CVarR4
  loc_B0D9F8: PopAdLdVar
  loc_B0D9F9: FLdPr Me
  loc_B0D9FC: VCallAd Control_ID_pbar
  loc_B0D9FF: FStAdFunc var_A8
  loc_B0DA02: FLdPr var_A8
  loc_B0DA05: LateIdSt
  loc_B0DA0A: FFree1Ad var_A8
  loc_B0DA0D: LitVar_TRUE var_94
  loc_B0DA10: PopAdLdVar
  loc_B0DA11: FLdPr Me
  loc_B0DA14: VCallAd Control_ID_pbar
  loc_B0DA17: FStAdFunc var_A8
  loc_B0DA1A: FLdPr var_A8
  loc_B0DA1D: LateIdSt
  loc_B0DA22: FFree1Ad var_A8
  loc_B0DA25: LitI4 1
  loc_B0DA2A: FLdPr Me
  loc_B0DA2D: MemLdRfVar from_stack_1.global_96
  loc_B0DA30: FLdPr Me
  loc_B0DA33: MemLdStr global_92
  loc_B0DA36: LitI2_Byte 1
  loc_B0DA38: FnUBound
  loc_B0DA3A: ForI4 var_B0
  loc_B0DA40: LitStr " - "
  loc_B0DA43: FLdPr Me
  loc_B0DA46: MemLdStr global_96
  loc_B0DA49: FLdPr Me
  loc_B0DA4C: MemLdStr global_92
  loc_B0DA4F: Ary1LdPr
  loc_B0DA50: MemLdStr global_84
  loc_B0DA53: ConcatStr
  loc_B0DA54: FStStrNoPop var_B4
  loc_B0DA57: FLdPr Me
  loc_B0DA5A: Me.Tag = from_stack_1
  loc_B0DA5F: FFree1Str var_B4
  loc_B0DA62: ILdRf Me
  loc_B0DA65: CastAd
  loc_B0DA68: FStAdFunc var_A8
  loc_B0DA6B: FLdRfVar var_A8
  loc_B0DA6E: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_B0DA73: FFree1Ad var_A8
  loc_B0DA76: FLdPr Me
  loc_B0DA79: MemLdStr global_96
  loc_B0DA7C: CR8I4
  loc_B0DA7D: CVarR4
  loc_B0DA81: PopAdLdVar
  loc_B0DA82: FLdPr Me
  loc_B0DA85: VCallAd Control_ID_pbar
  loc_B0DA88: FStAdFunc var_A8
  loc_B0DA8B: FLdPr var_A8
  loc_B0DA8E: LateIdSt
  loc_B0DA93: FFree1Ad var_A8
  loc_B0DA96: FLdPr Me
  loc_B0DA99: MemLdStr global_96
  loc_B0DA9C: CStrI4
  loc_B0DA9E: FStStrNoPop var_B4
  loc_B0DAA1: LitStr "/"
  loc_B0DAA4: ConcatStr
  loc_B0DAA5: FStStrNoPop var_B8
  loc_B0DAA8: FLdPr Me
  loc_B0DAAB: MemLdStr global_92
  loc_B0DAAE: LitI2_Byte 1
  loc_B0DAB0: FnUBound
  loc_B0DAB2: CStrI4
  loc_B0DAB4: FStStrNoPop var_BC
  loc_B0DAB7: ConcatStr
  loc_B0DAB8: FStStrNoPop var_C0
  loc_B0DABB: FLdPr Me
  loc_B0DABE: VCallAd Control_ID_ProgresoLbl
  loc_B0DAC1: FStAdFunc var_A8
  loc_B0DAC4: FLdPr var_A8
  loc_B0DAC7: Me.Caption = from_stack_1
  loc_B0DACC: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_B0DAD7: FFree1Ad var_A8
  loc_B0DADA: Call GeneraHTML()
  loc_B0DADF: ImpAdLdRf MemVar_D93C84
  loc_B0DAE2: CDargRef
  loc_B0DAE6: FLdPr Me
  loc_B0DAE9: VCallAd Control_ID_wbbReporte
  loc_B0DAEC: FStAdFunc var_A8
  loc_B0DAEF: FLdPr var_A8
  loc_B0DAF2: LateIdCall
  loc_B0DAFA: FFree1Ad var_A8
  loc_B0DAFD: ImpAdCallFPR4 DoEvents()
  loc_B0DB02: FLdPr Me
  loc_B0DB05: VCallAd Control_ID_wbbReporte
  loc_B0DB08: FStAdFunc var_A8
  loc_B0DB0B: FLdPr var_A8
  loc_B0DB0E: LateIdLdVar var_D0 DispID_-525 -1
  loc_B0DB15: CI4Var
  loc_B0DB17: LitI4 4
  loc_B0DB1C: NeI4
  loc_B0DB1D: FFree1Ad var_A8
  loc_B0DB20: FFree1Var var_D0 = ""
  loc_B0DB23: BranchT loc_B0DAFD
  loc_B0DB26: LitVarI4
  loc_B0DB2E: PopAdLdVar
  loc_B0DB2F: LitVarI4
  loc_B0DB37: PopAdLdVar
  loc_B0DB38: LitVarI2 var_110, 2
  loc_B0DB3D: PopAdLdVar
  loc_B0DB3E: LitVar_NULL
  loc_B0DB42: PopAdLdVar
  loc_B0DB43: FLdPr Me
  loc_B0DB46: VCallAd Control_ID_wbbReporte
  loc_B0DB49: FStAdFunc var_A8
  loc_B0DB4C: FLdPr var_A8
  loc_B0DB4F: LateIdCall
  loc_B0DB57: FFree1Ad var_A8
  loc_B0DB5A: FLdPr Me
  loc_B0DB5D: MemLdRfVar from_stack_1.global_96
  loc_B0DB60: NextI4 var_B0, loc_B0DA40
  loc_B0DB65: LitVar_TRUE var_94
  loc_B0DB68: PopAdLdVar
  loc_B0DB69: FLdPr Me
  loc_B0DB6C: VCallAd Control_ID_pbar
  loc_B0DB6F: FStAdFunc var_A8
  loc_B0DB72: FLdPr var_A8
  loc_B0DB75: LateIdSt
  loc_B0DB7A: FFree1Ad var_A8
  loc_B0DB7D: ILdRf Me
  loc_B0DB80: CastAd
  loc_B0DB83: FStAdFunc var_A8
  loc_B0DB86: FLdRfVar var_A8
  loc_B0DB89: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B0DB8E: FFree1Ad var_A8
  loc_B0DB91: FLdPr Me
  loc_B0DB94: VCallAd Control_ID_dgdLiquidacion
  loc_B0DB97: FStAdFunc var_A8
  loc_B0DB9A: FLdPr var_A8
  loc_B0DB9D: LateIdLdVar var_D0 DispID_13 -32767
  loc_B0DBA4: CBoolVar
  loc_B0DBA6: FFree1Ad var_A8
  loc_B0DBA9: FFree1Var var_D0 = ""
  loc_B0DBAC: BranchF loc_B0DBC6
  loc_B0DBAF: FLdPr Me
  loc_B0DBB2: VCallAd Control_ID_dgdLiquidacion
  loc_B0DBB5: FStAdFunc var_A8
  loc_B0DBB8: FLdPr var_A8
  loc_B0DBBB: LateIdCall
  loc_B0DBC3: FFree1Ad var_A8
  loc_B0DBC6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A15B98
  'Data Table: 4BFD94
  loc_A15B60: FLdPr Me
  loc_A15B63: VCallAd Control_ID_statusBar
  loc_A15B66: FStAdFunc var_88
  loc_A15B69: FLdPr var_88
  loc_A15B6C: LateIdLdVar var_98 DispID_1 0
  loc_A15B73: CStrVarTmp
  loc_A15B74: CVarStr var_A8
  loc_A15B77: PopAdLdVar
  loc_A15B78: FLdPr Me
  loc_A15B7B: VCallAd Control_ID_statusBar
  loc_A15B7E: FStAdFunc var_BC
  loc_A15B81: FLdPr var_BC
  loc_A15B84: LateIdSt
  loc_A15B89: FFreeAd var_88 = ""
  loc_A15B90: FFreeVar var_98 = ""
  loc_A15B97: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8ACB8
  'Data Table: 4BFD94
  loc_A8AC1C: LitStr "PRIMER"
  loc_A8AC1F: LitI4 1
  loc_A8AC24: FLdPr Me
  loc_A8AC27: MemLdRfVar from_stack_1.global_124
  loc_A8AC2A: Ary1StStrCopy
  loc_A8AC2B: LitStr "SEGUNDO"
  loc_A8AC2E: LitI4 2
  loc_A8AC33: FLdPr Me
  loc_A8AC36: MemLdRfVar from_stack_1.global_124
  loc_A8AC39: Ary1StStrCopy
  loc_A8AC3A: LitStr "TERCER"
  loc_A8AC3D: LitI4 3
  loc_A8AC42: FLdPr Me
  loc_A8AC45: MemLdRfVar from_stack_1.global_124
  loc_A8AC48: Ary1StStrCopy
  loc_A8AC49: LitStr "CUARTO"
  loc_A8AC4C: LitI4 4
  loc_A8AC51: FLdPr Me
  loc_A8AC54: MemLdRfVar from_stack_1.global_124
  loc_A8AC57: Ary1StStrCopy
  loc_A8AC58: LitStr "QUINTO"
  loc_A8AC5B: LitI4 5
  loc_A8AC60: FLdPr Me
  loc_A8AC63: MemLdRfVar from_stack_1.global_124
  loc_A8AC66: Ary1StStrCopy
  loc_A8AC67: LitStr "SEXTO"
  loc_A8AC6A: LitI4 6
  loc_A8AC6F: FLdPr Me
  loc_A8AC72: MemLdRfVar from_stack_1.global_124
  loc_A8AC75: Ary1StStrCopy
  loc_A8AC76: ILdRf Me
  loc_A8AC79: CastAd
  loc_A8AC7C: FStAdFunc var_88
  loc_A8AC7F: FLdRfVar var_88
  loc_A8AC82: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A8AC87: FFree1Ad var_88
  loc_A8AC8A: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu, LeyeTili, FealLiqu"
  loc_A8AC8D: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A8AC90: ConcatStr
  loc_A8AC91: FStStrNoPop var_8C
  loc_A8AC94: LitStr " WHERE liquidacion.CodiOfic = 7 AND ActuLiqu = 'Si' ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A8AC97: ConcatStr
  loc_A8AC98: FStStrNoPop var_90
  loc_A8AC9B: FLdPr Me
  loc_A8AC9E: MemLdRfVar from_stack_1.global_80
  loc_A8ACA1: NewIfNullPr clsliquidacion
  loc_A8ACA4: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A8ACA9: FFreeStr var_8C = ""
  loc_A8ACB0: Call cmdNueva_Click()
  loc_A8ACB5: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CFD3C
  'Data Table: 4BFD94
  loc_9CFD24: FLdPr Me
  loc_9CFD27: VCallAd Control_ID_wbbReporte
  loc_9CFD2A: FStAdFunc var_88
  loc_9CFD2D: FLdRfVar var_88
  loc_9CFD30: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CFD35: FFree1Ad var_88
  loc_9CFD38: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'B82748
  'Data Table: 4BFD94
  loc_B82248: OnErrorGoto loc_B826BE
  loc_B8224B: FLdRfVar var_A0
  loc_B8224E: FLdPr Me
  loc_B82251:  = Me.hWnd
  loc_B82256: LitStr "Seleccione la carpeta de salida para los archivos generados"
  loc_B82259: FLdPr Me
  loc_B8225C: MemLdStr global_76
  loc_B8225F: ILdRf var_A0
  loc_B82262: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_B82267: FStStrNoPop var_A4
  loc_B8226A: FLdPr Me
  loc_B8226D: MemStStrCopy
  loc_B82271: FFree1Str var_A4
  loc_B82274: FLdPr Me
  loc_B82277: MemLdRfVar from_stack_1.global_76
  loc_B8227A: CVarRef
  loc_B8227F: FLdRfVar var_C4
  loc_B82282: ImpAdCallFPR4  = Trim()
  loc_B82287: FLdRfVar var_C4
  loc_B8228A: LitVarStr var_D4, vbNullString
  loc_B8228F: HardType
  loc_B82290: EqVarBool
  loc_B82292: FFree1Var var_C4 = ""
  loc_B82295: BranchF loc_B82299
  loc_B82298: ExitProcHresult
  loc_B82299: FLdRfVar var_A4
  loc_B8229C: LitStr "tmp"
  loc_B8229F: FLdPr Me
  loc_B822A2: MemLdStr global_76
  loc_B822A5: FLdRfVar var_88
  loc_B822A8: NewIfNullPr IFileSystem3
  loc_B822AB: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B822B0: ILdRf var_A4
  loc_B822B3: LitStr "\"
  loc_B822B6: ConcatStr
  loc_B822B7: FStStr var_9C
  loc_B822BA: FFree1Str var_A4
  loc_B822BD: FLdRfVar var_E6
  loc_B822C0: ILdRf var_9C
  loc_B822C3: FLdRfVar var_88
  loc_B822C6: NewIfNullPr IFileSystem3
  loc_B822C9: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B822CE: FLdI2 var_E6
  loc_B822D1: BranchF loc_B822E2
  loc_B822D4: LitStr "*.*"
  loc_B822D7: ILdRf var_9C
  loc_B822DA: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B822DF: Branch loc_B822EA
  loc_B822E2: ILdRf var_9C
  loc_B822E5: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_B822EA: ILdRf var_9C
  loc_B822ED: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B822F2: ILdRf Me
  loc_B822F5: CastAd
  loc_B822F8: FStAdFunc var_EC
  loc_B822FB: FLdRfVar var_EC
  loc_B822FE: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B82303: FFree1Ad var_EC
  loc_B82306: LitVar_FALSE
  loc_B8230A: PopAdLdVar
  loc_B8230B: FLdPr Me
  loc_B8230E: VCallAd Control_ID_dgdLiquidacion
  loc_B82311: FStAdFunc var_EC
  loc_B82314: FLdPr var_EC
  loc_B82317: LateIdSt
  loc_B8231C: FFree1Ad var_EC
  loc_B8231F: Call GeneraReporte()
  loc_B82324: FLdPr Me
  loc_B82327: MemLdI2 bGenerado
  loc_B8232A: BranchF loc_B8265A
  loc_B8232D: FLdPr Me
  loc_B82330: MemLdStr global_92
  loc_B82333: LitI2_Byte 1
  loc_B82335: FnUBound
  loc_B82337: CR8I4
  loc_B82338: CVarR4
  loc_B8233C: PopAdLdVar
  loc_B8233D: FLdPr Me
  loc_B82340: VCallAd Control_ID_pbar
  loc_B82343: FStAdFunc var_EC
  loc_B82346: FLdPr var_EC
  loc_B82349: LateIdSt
  loc_B8234E: FFree1Ad var_EC
  loc_B82351: LitVar_TRUE var_B4
  loc_B82354: PopAdLdVar
  loc_B82355: FLdPr Me
  loc_B82358: VCallAd Control_ID_pbar
  loc_B8235B: FStAdFunc var_EC
  loc_B8235E: FLdPr var_EC
  loc_B82361: LateIdSt
  loc_B82366: FFree1Ad var_EC
  loc_B82369: LitStr vbNullString
  loc_B8236C: FStStrCopy var_90
  loc_B8236F: LitI4 1
  loc_B82374: FLdPr Me
  loc_B82377: MemLdStr global_92
  loc_B8237A: Ary1LdPr
  loc_B8237B: MemLdStr global_84
  loc_B8237E: CI4Str
  loc_B8237F: FStR4 var_98
  loc_B82382: LitI4 1
  loc_B82387: FLdPr Me
  loc_B8238A: MemLdRfVar from_stack_1.global_96
  loc_B8238D: FLdPr Me
  loc_B82390: MemLdStr global_92
  loc_B82393: LitI2_Byte 1
  loc_B82395: FnUBound
  loc_B82397: ForI4 var_F4
  loc_B8239D: FLdPr Me
  loc_B823A0: MemLdStr global_96
  loc_B823A3: FLdPr Me
  loc_B823A6: MemLdStr global_92
  loc_B823A9: AryLock
  loc_B823AC: Ary1LdRf
  loc_B823AD: FStR4 var_FC
  loc_B823B0: FLdRfVar var_A4
  loc_B823B3: FLdPr Me
  loc_B823B6: MemLdStr global_96
  loc_B823B9: Call Proc_320_17_A15C14()
  loc_B823BE: FLdZeroAd var_A4
  loc_B823C1: FStStr var_8C
  loc_B823C4: ILdRf var_9C
  loc_B823C7: ILdRf var_8C
  loc_B823CA: ConcatStr
  loc_B823CB: FStStrNoPop var_A4
  loc_B823CE: LitStr ".html"
  loc_B823D1: ConcatStr
  loc_B823D2: ImpAdStStr MemVar_D93C84
  loc_B823D6: FFree1Str var_A4
  loc_B823D9: LitI4 0
  loc_B823DE: FStR4 var_FC
  loc_B823E1: AryUnlock
  loc_B823E4: FLdPr Me
  loc_B823E7: MemLdStr global_96
  loc_B823EA: CR8I4
  loc_B823EB: CVarR4
  loc_B823EF: PopAdLdVar
  loc_B823F0: FLdPr Me
  loc_B823F3: VCallAd Control_ID_pbar
  loc_B823F6: FStAdFunc var_EC
  loc_B823F9: FLdPr var_EC
  loc_B823FC: LateIdSt
  loc_B82401: FFree1Ad var_EC
  loc_B82404: FLdPr Me
  loc_B82407: MemLdStr global_96
  loc_B8240A: CStrI4
  loc_B8240C: FStStrNoPop var_A4
  loc_B8240F: LitStr "/"
  loc_B82412: ConcatStr
  loc_B82413: FStStrNoPop var_100
  loc_B82416: FLdPr Me
  loc_B82419: MemLdStr global_92
  loc_B8241C: LitI2_Byte 1
  loc_B8241E: FnUBound
  loc_B82420: CStrI4
  loc_B82422: FStStrNoPop var_104
  loc_B82425: ConcatStr
  loc_B82426: FStStrNoPop var_108
  loc_B82429: FLdPr Me
  loc_B8242C: VCallAd Control_ID_ProgresoLbl
  loc_B8242F: FStAdFunc var_EC
  loc_B82432: FLdPr var_EC
  loc_B82435: Me.Caption = from_stack_1
  loc_B8243A: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B82445: FFree1Ad var_EC
  loc_B82448: Call GeneraHTML()
  loc_B8244D: ILdRf var_90
  loc_B82450: LitStr """"
  loc_B82453: ConcatStr
  loc_B82454: FStStrNoPop var_A4
  loc_B82457: ImpAdLdI4 MemVar_D93C84
  loc_B8245A: ConcatStr
  loc_B8245B: FStStrNoPop var_100
  loc_B8245E: LitStr """ "
  loc_B82461: ConcatStr
  loc_B82462: FStStr var_90
  loc_B82465: FFreeStr var_A4 = ""
  loc_B8246C: FLdPr Me
  loc_B8246F: MemLdStr global_96
  loc_B82472: LitI4 &HFA
  loc_B82477: ModI4
  loc_B82478: LitI4 0
  loc_B8247D: EqI4
  loc_B8247E: FLdPr Me
  loc_B82481: MemLdStr global_96
  loc_B82484: FLdPr Me
  loc_B82487: MemLdStr global_92
  loc_B8248A: LitI2_Byte 1
  loc_B8248C: FnUBound
  loc_B8248E: EqI4
  loc_B8248F: OrI4
  loc_B82490: BranchF loc_B825F4
  loc_B82493: FLdPr Me
  loc_B82496: MemLdStr global_96
  loc_B82499: FLdPr Me
  loc_B8249C: MemLdStr global_92
  loc_B8249F: LitI2_Byte 1
  loc_B824A1: FnUBound
  loc_B824A3: EqI4
  loc_B824A4: BranchF loc_B824EA
  loc_B824A7: LitStr " ("
  loc_B824AA: ILdRf var_98
  loc_B824AD: CStrI4
  loc_B824AF: FStStrNoPop var_A4
  loc_B824B2: ConcatStr
  loc_B824B3: FStStrNoPop var_100
  loc_B824B6: LitStr "-"
  loc_B824B9: ConcatStr
  loc_B824BA: FStStrNoPop var_104
  loc_B824BD: FLdPr Me
  loc_B824C0: MemLdStr global_92
  loc_B824C3: LitI2_Byte 1
  loc_B824C5: FnUBound
  loc_B824C7: FLdPr Me
  loc_B824CA: MemLdStr global_92
  loc_B824CD: Ary1LdPr
  loc_B824CE: MemLdStr global_84
  loc_B824D1: ConcatStr
  loc_B824D2: FStStrNoPop var_108
  loc_B824D5: LitStr ")"
  loc_B824D8: ConcatStr
  loc_B824D9: FStStr var_94
  loc_B824DC: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B824E7: Branch loc_B82540
  loc_B824EA: LitStr " ("
  loc_B824ED: ILdRf var_98
  loc_B824F0: CStrI4
  loc_B824F2: FStStrNoPop var_A4
  loc_B824F5: ConcatStr
  loc_B824F6: FStStrNoPop var_100
  loc_B824F9: LitStr "-"
  loc_B824FC: ConcatStr
  loc_B824FD: FStStrNoPop var_104
  loc_B82500: FLdPr Me
  loc_B82503: MemLdStr global_96
  loc_B82506: FLdPr Me
  loc_B82509: MemLdStr global_92
  loc_B8250C: Ary1LdPr
  loc_B8250D: MemLdStr global_84
  loc_B82510: ConcatStr
  loc_B82511: FStStrNoPop var_108
  loc_B82514: LitStr ")"
  loc_B82517: ConcatStr
  loc_B82518: FStStr var_94
  loc_B8251B: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B82526: FLdPr Me
  loc_B82529: MemLdStr global_96
  loc_B8252C: LitI4 1
  loc_B82531: AddI4
  loc_B82532: FLdPr Me
  loc_B82535: MemLdStr global_92
  loc_B82538: Ary1LdPr
  loc_B82539: MemLdStr global_84
  loc_B8253C: CI4Str
  loc_B8253D: FStR4 var_98
  loc_B82540: FLdPr Me
  loc_B82543: MemLdStr global_76
  loc_B82546: LitStr "\antena"
  loc_B82549: ConcatStr
  loc_B8254A: FStStrNoPop var_A4
  loc_B8254D: ILdRf var_94
  loc_B82550: ConcatStr
  loc_B82551: FStStrNoPop var_100
  loc_B82554: LitStr ".pdf"
  loc_B82557: ConcatStr
  loc_B82558: ImpAdStStr MemVar_D93030
  loc_B8255C: FFreeStr var_A4 = ""
  loc_B82563: ILdRf var_90
  loc_B82566: FnLenStr
  loc_B82567: LitI4 3
  loc_B8256C: SubI4
  loc_B8256D: CVarI4
  loc_B82571: LitI4 2
  loc_B82576: FLdRfVar var_90
  loc_B82579: CVarRef
  loc_B8257E: FLdRfVar var_E4
  loc_B82581: ImpAdCallFPR4  = Mid(, , )
  loc_B82586: FLdRfVar var_E4
  loc_B82589: CStrVarTmp
  loc_B8258A: FStStr var_90
  loc_B8258D: FFreeVar var_C4 = ""
  loc_B82594: LitStr vbNullString
  loc_B82597: ImpAdLdI4 MemVar_D93030
  loc_B8259A: ILdRf var_90
  loc_B8259D: ImpAdCallFPR4 Proc_57_55_AE2160(, , )
  loc_B825A2: LitStr "Guardando PDF: '"
  loc_B825A5: ImpAdLdI4 MemVar_D93030
  loc_B825A8: ConcatStr
  loc_B825A9: FStStrNoPop var_A4
  loc_B825AC: LitStr "'"
  loc_B825AF: ConcatStr
  loc_B825B0: CVarStr var_C4
  loc_B825B3: PopAdLdVar
  loc_B825B4: FLdPr Me
  loc_B825B7: VCallAd Control_ID_statusBar
  loc_B825BA: FStAdFunc var_EC
  loc_B825BD: FLdPr var_EC
  loc_B825C0: LateIdSt
  loc_B825C5: FFree1Str var_A4
  loc_B825C8: FFree1Ad var_EC
  loc_B825CB: FFree1Var var_C4 = ""
  loc_B825CE: FLdRfVar var_E6
  loc_B825D1: ImpAdLdI4 MemVar_D93030
  loc_B825D4: FLdRfVar var_88
  loc_B825D7: NewIfNullPr IFileSystem3
  loc_B825DA: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B825DF: FLdI2 var_E6
  loc_B825E2: NotI4
  loc_B825E3: BranchF loc_B825EE
  loc_B825E6: ImpAdCallFPR4 DoEvents()
  loc_B825EB: Branch loc_B825CE
  loc_B825EE: LitStr vbNullString
  loc_B825F1: FStStrCopy var_90
  loc_B825F4: ImpAdCallFPR4 DoEvents()
  loc_B825F9: FLdPr Me
  loc_B825FC: MemLdRfVar from_stack_1.global_96
  loc_B825FF: NextI4 var_F4, loc_B8239D
  loc_B82604: LitStr "Proceso terminado."
  loc_B82607: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B8260C: FLdRfVar var_E6
  loc_B8260F: ILdRf var_9C
  loc_B82612: FLdRfVar var_88
  loc_B82615: NewIfNullPr IFileSystem3
  loc_B82618: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B8261D: FLdI2 var_E6
  loc_B82620: BranchF loc_B82636
  loc_B82623: LitStr "*.*"
  loc_B82626: ILdRf var_9C
  loc_B82629: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B8262E: ILdRf var_9C
  loc_B82631: ImpAdCallFPR4 RmDir 
  loc_B82636: LitVar_FALSE
  loc_B8263A: PopAdLdVar
  loc_B8263B: FLdPr Me
  loc_B8263E: VCallAd Control_ID_pbar
  loc_B82641: FStAdFunc var_EC
  loc_B82644: FLdPr var_EC
  loc_B82647: LateIdSt
  loc_B8264C: FFree1Ad var_EC
  loc_B8264F: FLdPr Me
  loc_B82652: MemLdStr global_76
  loc_B82655: ImpAdCallFPR4 Proc_272_64_A06738()
  loc_B8265A: ILdRf Me
  loc_B8265D: CastAd
  loc_B82660: FStAdFunc var_EC
  loc_B82663: FLdRfVar var_EC
  loc_B82666: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B8266B: FFree1Ad var_EC
  loc_B8266E: LitVarStr var_B4, vbNullString
  loc_B82673: PopAdLdVar
  loc_B82674: FLdPr Me
  loc_B82677: VCallAd Control_ID_statusBar
  loc_B8267A: FStAdFunc var_EC
  loc_B8267D: FLdPr var_EC
  loc_B82680: LateIdSt
  loc_B82685: FFree1Ad var_EC
  loc_B82688: FLdPr Me
  loc_B8268B: VCallAd Control_ID_dgdLiquidacion
  loc_B8268E: FStAdFunc var_EC
  loc_B82691: FLdPr var_EC
  loc_B82694: LateIdLdVar var_C4 DispID_13 -32767
  loc_B8269B: CBoolVar
  loc_B8269D: FFree1Ad var_EC
  loc_B826A0: FFree1Var var_C4 = ""
  loc_B826A3: BranchF loc_B826BD
  loc_B826A6: FLdPr Me
  loc_B826A9: VCallAd Control_ID_dgdLiquidacion
  loc_B826AC: FStAdFunc var_EC
  loc_B826AF: FLdPr var_EC
  loc_B826B2: LateIdCall
  loc_B826BA: FFree1Ad var_EC
  loc_B826BD: ExitProcHresult
  loc_B826BE: FLdRfVar var_A0
  loc_B826C1: ImpAdCallI2 Err 'rtcErrObj
  loc_B826C6: FStAdFunc var_EC
  loc_B826C9: FLdPr var_EC
  loc_B826CC:  = Err.Number
  loc_B826D1: ILdRf var_A0
  loc_B826D4: FStR4 var_10C
  loc_B826D7: FFree1Ad var_EC
  loc_B826DA: ILdRf var_10C
  loc_B826DD: LitI4 &H4C
  loc_B826E2: EqI4
  loc_B826E3: BranchF loc_B826E9
  loc_B826E6: Branch loc_B82745
  loc_B826E9: LitStr "Error "
  loc_B826EC: FLdRfVar var_A0
  loc_B826EF: ImpAdCallI2 Err 'rtcErrObj
  loc_B826F4: FStAdFunc var_EC
  loc_B826F7: FLdPr var_EC
  loc_B826FA:  = Err.Number
  loc_B826FF: ILdRf var_A0
  loc_B82702: CStrI4
  loc_B82704: FStStrNoPop var_A4
  loc_B82707: ConcatStr
  loc_B82708: FStStrNoPop var_100
  loc_B8270B: LitStr ": "
  loc_B8270E: ConcatStr
  loc_B8270F: FStStrNoPop var_108
  loc_B82712: FLdRfVar var_104
  loc_B82715: ImpAdCallI2 Err 'rtcErrObj
  loc_B8271A: FStAdFunc var_110
  loc_B8271D: FLdPr var_110
  loc_B82720:  = Err.Description
  loc_B82725: ILdRf var_104
  loc_B82728: ConcatStr
  loc_B82729: FStStrNoPop var_114
  loc_B8272C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B82731: FFreeStr var_A4 = "": var_100 = "": var_108 = "": var_104 = ""
  loc_B8273E: FFreeAd var_EC = ""
  loc_B82745: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A05F9C
  'Data Table: 4BFD94
  loc_A05F6C: LitVarStr var_94, "Cerrando..."
  loc_A05F71: PopAdLdVar
  loc_A05F72: FLdPr Me
  loc_A05F75: VCallAd Control_ID_statusBar
  loc_A05F78: FStAdFunc var_A8
  loc_A05F7B: FLdPr var_A8
  loc_A05F7E: LateIdSt
  loc_A05F83: FFree1Ad var_A8
  loc_A05F86: ILdRf Me
  loc_A05F89: FStAdNoPop
  loc_A05F8D: ImpAdLdRf MemVar_D9C5D8
  loc_A05F90: NewIfNullPr Global
  loc_A05F93: Global.Unload from_stack_1
  loc_A05F98: FFree1Ad var_A8
  loc_A05F9B: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4C0F00
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C0F0F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5EB38
  'Data Table: 4BFD94
  loc_A5EAE4: LitI4 0
  loc_A5EAE9: LitI4 2
  loc_A5EAEE: FLdRfVar var_88
  loc_A5EAF1: Redim
  loc_A5EAFB: FLdPr Me
  loc_A5EAFE: VCallAd Control_ID_dgdLiquidacion
  loc_A5EB01: CVarAd
  loc_A5EB05: ParmAry1St
  loc_A5EB0B: FLdPr Me
  loc_A5EB0E: VCallAd Control_ID_OrdeLianDesdeMsk
  loc_A5EB11: CVarAd
  loc_A5EB15: ParmAry1St
  loc_A5EB1B: FLdPr Me
  loc_A5EB1E: VCallAd Control_ID_OrdeLianHastaMsk
  loc_A5EB21: CVarAd
  loc_A5EB25: ParmAry1St
  loc_A5EB2B: FLdRfVar var_88
  loc_A5EB2E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5EB33: FLdRfVar var_88
  loc_A5EB36: Erase
  loc_A5EB37: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B54E00
  'Data Table: 4BFD94
  loc_B54A94: FLdPr Me
  loc_B54A97: MemLdI2 bGenerado
  loc_B54A9A: BranchF loc_B54A9E
  loc_B54A9D: ExitProcHresult
  loc_B54A9E: LitVarStr var_94, "Generando reporte..."
  loc_B54AA3: PopAdLdVar
  loc_B54AA4: FLdPr Me
  loc_B54AA7: VCallAd Control_ID_statusBar
  loc_B54AAA: FStAdFunc var_A8
  loc_B54AAD: FLdPr var_A8
  loc_B54AB0: LateIdSt
  loc_B54AB5: FFree1Ad var_A8
  loc_B54AB8: LitI4 &HB
  loc_B54ABD: CI2I4
  loc_B54ABE: FLdPr Me
  loc_B54AC1: Me.MousePointer = from_stack_1
  loc_B54AC6: FLdRfVar var_AC
  loc_B54AC9: FLdPr Me
  loc_B54ACC: MemLdRfVar from_stack_1.global_80
  loc_B54ACF: NewIfNullPr clsliquidacion
  loc_B54AD2: from_stack_1 = clsliquidacion.RecordCount
  loc_B54AD7: ILdRf var_AC
  loc_B54ADA: LitI4 1
  loc_B54ADF: LtI4
  loc_B54AE0: BranchF loc_B54AEE
  loc_B54AE3: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B54AE6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B54AEB: Branch loc_B54DD7
  loc_B54AEE: Call Proc_320_18_AD17BC()
  loc_B54AF3: FLdPr Me
  loc_B54AF6: MemLdRfVar from_stack_1.global_84
  loc_B54AF9: NewIfNullAd
  loc_B54AFC: FStAd var_B0 
  loc_B54B00: LitStr "SELECT liquante.CodiCome, liquante.TipoVenc, OrdeLian, liquante.FeacLian, liquante.BimeLiqu, sum(TotaLian) as TotaLian, boleto.PeriBole, boleto.NumeBole, SUM(if(liquante.CodiConc='13030202',TotaLian,0)) RecaBole,"
  loc_B54B03: LitStr " boleto.FeveBole as FeveLian, CAST(boleto.TotaBole AS DOUBLE(10,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, p1.DetaPers, ifnull(p2.DetaPers,'') as Vinculo, RazoCome, DeudLian, (IFNULL(ImpoLian,0)-IFNULL(TotaLade,0)) as ImpoLian, (ExenLian+DescLian) as DescLian, IFNULL(liandeta.TotaLade,0) as CEmision,"
  loc_B54B06: ConcatStr
  loc_B54B07: FStStrNoPop var_B4
  loc_B54B0A: LitStr " CallLian as DetaCall, NucaLian, BarrLian as DetaBarr, ManzLian, CasaLian, UbicLian, LocaLian as DetaLoca, CopoLian,"
  loc_B54B0D: ConcatStr
  loc_B54B0E: FStStrNoPop var_B8
  loc_B54B11: LitStr " IFNULL(domicilio.calle,'') as CallLianReal, IFNULL(domicilio.NumeCalle,'0') as NucaLianReal, IFNULL(domicilio.barrio,'') as BarrLianReal, IFNULL(domicilio.Manzana,'') as ManzLianReal, IFNULL(domicilio.Casa,'') as CasaLianReal,"
  loc_B54B14: ConcatStr
  loc_B54B15: FStStrNoPop var_BC
  loc_B54B18: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbicLianReal,"
  loc_B54B1B: ConcatStr
  loc_B54B1C: FStStrNoPop var_C0
  loc_B54B1F: LitStr " IFNULL(domicilio.Localidad,'') as LocaLianReal, IFNULL(domicilio.CodPostal,'0') as CopoLianReal,"
  loc_B54B22: ConcatStr
  loc_B54B23: FStStrNoPop var_C4
  loc_B54B26: LitStr " (SELECT cast(group_concat(DISTINCT if(lq2.TipoVenc=1,lq2.BimeLiqu,'anual') ORDER BY lq2.TipoVenc, lq2.BimeLiqu ASC SEPARATOR ', ') as CHAR) FROM liquante as lq2 WHERE lq2.TipoLian = liquante.TipoLian AND FeacLian is not null AND lq2.PeriLiqu = liquante.PeriLiqu AND lq2.CodiTili = liquante.CodiTili AND lq2.NumeLiqu = liquante.NumeLiqu AND lq2.OrdeLian = liquante.OrdeLian) as Bimestres"
  loc_B54B29: ConcatStr
  loc_B54B2A: FStStrNoPop var_C8
  loc_B54B2D: LitStr " FROM liquante"
  loc_B54B30: ConcatStr
  loc_B54B31: FStStrNoPop var_CC
  loc_B54B34: LitStr " INNER JOIN boleto ON boleto.CodiOfic = 7 AND boleto.CuenCtct = liquante.CodiCome AND boleto.PeriBole = liquante.PeriBole AND boleto.NumeBole = liquante.NumeBole"
  loc_B54B37: ConcatStr
  loc_B54B38: FStStrNoPop var_D0
  loc_B54B3B: LitStr " LEFT JOIN liandeta ON liandeta.PeriLiqu = liquante.PeriLiqu AND liandeta.CodiTili = liquante.CodiTili AND liandeta.NumeLiqu = liquante.NumeLiqu AND liandeta.BimeLiqu = liquante.BimeLiqu AND liandeta.CodiConc = '13020601' AND liandeta.CodiCome = liquante.CodiCome AND liandeta.TipoVenc = liquante.TipoVenc AND liandeta.CodiSubr=999"
  loc_B54B3E: ConcatStr
  loc_B54B3F: FStStrNoPop var_D4
  loc_B54B42: LitStr " LEFT JOIN antena ON antena.CodiCome = boleto.CuenCtct"
  loc_B54B45: ConcatStr
  loc_B54B46: FStStrNoPop var_D8
  loc_B54B49: LitStr " LEFT JOIN infogov.persona as p1 ON p1.CucuPers = liquante.CucuPers"
  loc_B54B4C: ConcatStr
  loc_B54B4D: FStStrNoPop var_DC
  loc_B54B50: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = 7 AND relacion.CuenCtct = antena.CodiCome AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_B54B53: ConcatStr
  loc_B54B54: FStStrNoPop var_E0
  loc_B54B57: LitStr " LEFT JOIN infogov.persona as p2 ON p2.CucuPers = relacion.CucuPers"
  loc_B54B5A: ConcatStr
  loc_B54B5B: FStStrNoPop var_E4
  loc_B54B5E: LitStr " LEFT JOIN domicilio ON domicilio.CodiCome = liquante.CodiCome AND domicilio.CodiOfic = 7 AND domicilio.Tipo = 'COMERCIAL'"
  loc_B54B61: ConcatStr
  loc_B54B62: FStStrNoPop var_E8
  loc_B54B65: LitStr " WHERE TipoLian = 'Aforo' AND FeacLian is not null"
  loc_B54B68: ConcatStr
  loc_B54B69: FStStrNoPop var_EC
  loc_B54B6C: LitStr " AND liquante.PeriLiqu = "
  loc_B54B6F: ConcatStr
  loc_B54B70: FStStrNoPop var_F4
  loc_B54B73: FLdRfVar var_EE
  loc_B54B76: FLdPr Me
  loc_B54B79: MemLdRfVar from_stack_1.global_80
  loc_B54B7C: NewIfNullPr clsliquidacion
  loc_B54B7F: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B54B84: FLdI2 var_EE
  loc_B54B87: CStrUI1
  loc_B54B89: FStStrNoPop var_F8
  loc_B54B8C: ConcatStr
  loc_B54B8D: FStStrNoPop var_FC
  loc_B54B90: LitStr " AND liquante.CodiTili = "
  loc_B54B93: ConcatStr
  loc_B54B94: FStStrNoPop var_104
  loc_B54B97: FLdRfVar var_FE
  loc_B54B9A: FLdPr Me
  loc_B54B9D: MemLdRfVar from_stack_1.global_80
  loc_B54BA0: NewIfNullPr clsliquidacion
  loc_B54BA3: from_stack_1 = clsliquidacion.CodiTili
  loc_B54BA8: FLdUI1
  loc_B54BAC: CStrI2
  loc_B54BAE: FStStrNoPop var_108
  loc_B54BB1: ConcatStr
  loc_B54BB2: FStStrNoPop var_10C
  loc_B54BB5: LitStr " AND liquante.NumeLiqu = "
  loc_B54BB8: ConcatStr
  loc_B54BB9: FStStrNoPop var_114
  loc_B54BBC: FLdRfVar var_10E
  loc_B54BBF: FLdPr Me
  loc_B54BC2: MemLdRfVar from_stack_1.global_80
  loc_B54BC5: NewIfNullPr clsliquidacion
  loc_B54BC8: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B54BCD: FLdI2 var_10E
  loc_B54BD0: CStrUI1
  loc_B54BD2: FStStrNoPop var_118
  loc_B54BD5: ConcatStr
  loc_B54BD6: FStStrNoPop var_11C
  loc_B54BD9: FLdPr Me
  loc_B54BDC: MemLdStr global_112
  loc_B54BDF: ConcatStr
  loc_B54BE0: FStStrNoPop var_120
  loc_B54BE3: FLdPr Me
  loc_B54BE6: MemLdStr global_116
  loc_B54BE9: ConcatStr
  loc_B54BEA: FStStrNoPop var_124
  loc_B54BED: LitStr " GROUP BY OrdeLian, TipoVenc,  BimeLiqu, liquante.PeriBole, liquante.NumeBole HAVING TotaLian <> 0 ORDER BY OrdeLian, BimeLiqu, liquante.PeriBole, liquante.NumeBole"
  loc_B54BF0: ConcatStr
  loc_B54BF1: FStStrNoPop var_128
  loc_B54BF4: FLdPr var_B0
  loc_B54BF7: Call clsliquante.RedefineRS(from_stack_1v)
  loc_B54BFC: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_B54C35: FLdRfVar var_AC
  loc_B54C38: FLdPr var_B0
  loc_B54C3B: from_stack_1 = clsliquante.RecordCount
  loc_B54C40: ILdRf var_AC
  loc_B54C43: LitI4 1
  loc_B54C48: LtI4
  loc_B54C49: BranchF loc_B54C57
  loc_B54C4C: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B54C4F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B54C54: Branch loc_B54DD7
  loc_B54C57: LitI4 0
  loc_B54C5C: LitI4 0
  loc_B54C61: FLdPr Me
  loc_B54C64: MemLdRfVar from_stack_1.global_92
  loc_B54C67: Redim
  loc_B54C71: LitI4 0
  loc_B54C76: FLdPr Me
  loc_B54C79: MemStI4 global_96
  loc_B54C7C: LitI2_Byte 0
  loc_B54C7E: FLdPr Me
  loc_B54C81: MemStI2 global_104
  loc_B54C84: FLdPr var_B0
  loc_B54C87: Call clsliquante.MoveFirst()
  loc_B54C8C: FLdRfVar var_AC
  loc_B54C8F: FLdPr var_B0
  loc_B54C92: from_stack_1 = clsliquante.RecordCount
  loc_B54C97: ILdRf var_AC
  loc_B54C9A: CR8I4
  loc_B54C9B: CVarR4
  loc_B54C9F: PopAdLdVar
  loc_B54CA0: FLdPr Me
  loc_B54CA3: VCallAd Control_ID_pbar
  loc_B54CA6: FStAdFunc var_A8
  loc_B54CA9: FLdPr var_A8
  loc_B54CAC: LateIdSt
  loc_B54CB1: FFree1Ad var_A8
  loc_B54CB4: LitVar_TRUE var_94
  loc_B54CB7: PopAdLdVar
  loc_B54CB8: FLdPr Me
  loc_B54CBB: VCallAd Control_ID_pbar
  loc_B54CBE: FStAdFunc var_A8
  loc_B54CC1: FLdPr var_A8
  loc_B54CC4: LateIdSt
  loc_B54CC9: FFree1Ad var_A8
  loc_B54CCC: FLdRfVar var_EE
  loc_B54CCF: FLdPr var_B0
  loc_B54CD2: from_stack_1 = clsliquante.EOF
  loc_B54CD7: FLdI2 var_EE
  loc_B54CDA: NotI4
  loc_B54CDB: BranchF loc_B54DB0
  loc_B54CDE: FLdRfVar var_AC
  loc_B54CE1: FLdPr var_B0
  loc_B54CE4: from_stack_1 = clsliquante.AbsolutePosition
  loc_B54CE9: ILdRf var_AC
  loc_B54CEC: CR8I4
  loc_B54CED: CVarR4
  loc_B54CF1: PopAdLdVar
  loc_B54CF2: FLdPr Me
  loc_B54CF5: VCallAd Control_ID_pbar
  loc_B54CF8: FStAdFunc var_A8
  loc_B54CFB: FLdPr var_A8
  loc_B54CFE: LateIdSt
  loc_B54D03: FFree1Ad var_A8
  loc_B54D06: FLdRfVar var_AC
  loc_B54D09: FLdPr var_B0
  loc_B54D0C: from_stack_1 = clsliquante.AbsolutePosition
  loc_B54D11: FLdRfVar var_12C
  loc_B54D14: FLdPr var_B0
  loc_B54D17: from_stack_1 = clsliquante.RecordCount
  loc_B54D1C: LitI4 1
  loc_B54D21: LitI4 1
  loc_B54D26: LitVarStr var_A4, "0" & Chr(37)
  loc_B54D2B: FStVarCopyObj var_14C
  loc_B54D2E: FLdRfVar var_14C
  loc_B54D31: ILdRf var_AC
  loc_B54D34: CR8I4
  loc_B54D35: ILdRf var_12C
  loc_B54D38: CR8I4
  loc_B54D39: DivR8
  loc_B54D3A: CVarR8
  loc_B54D3E: ImpAdCallI2 Format$(, )
  loc_B54D43: FStStrNoPop var_B4
  loc_B54D46: FLdPr Me
  loc_B54D49: VCallAd Control_ID_ProgresoLbl
  loc_B54D4C: FStAdFunc var_A8
  loc_B54D4F: FLdPr var_A8
  loc_B54D52: Me.Caption = from_stack_1
  loc_B54D57: FFree1Str var_B4
  loc_B54D5A: FFree1Ad var_A8
  loc_B54D5D: FFreeVar var_13C = ""
  loc_B54D64: FLdPr Me
  loc_B54D67: MemLdStr global_96
  loc_B54D6A: FLdPr Me
  loc_B54D6D: MemLdStr global_92
  loc_B54D70: Ary1LdPr
  loc_B54D71: MemLdStr global_76
  loc_B54D74: FLdRfVar var_AC
  loc_B54D77: FLdPr var_B0
  loc_B54D7A: from_stack_1 = clsliquante.CodiCome
  loc_B54D7F: ILdRf var_AC
  loc_B54D82: CStrI4
  loc_B54D84: FStStrNoPop var_B4
  loc_B54D87: NeStr
  loc_B54D89: FFree1Str var_B4
  loc_B54D8C: BranchF loc_B54D97
  loc_B54D8F: Call Proc_320_20_BBF508()
  loc_B54D94: Branch loc_B54D9C
  loc_B54D97: Call Proc_320_22_BD007C()
  loc_B54D9C: FLdPr Me
  loc_B54D9F: MemLdI2 global_104
  loc_B54DA2: BranchF loc_B54DA8
  loc_B54DA5: Branch loc_B54DD7
  loc_B54DA8: ImpAdCallFPR4 DoEvents()
  loc_B54DAD: Branch loc_B54CCC
  loc_B54DB0: LitVar_FALSE
  loc_B54DB4: PopAdLdVar
  loc_B54DB5: FLdPr Me
  loc_B54DB8: VCallAd Control_ID_pbar
  loc_B54DBB: FStAdFunc var_A8
  loc_B54DBE: FLdPr var_A8
  loc_B54DC1: LateIdSt
  loc_B54DC6: FFree1Ad var_A8
  loc_B54DC9: LitNothing
  loc_B54DCB: FStAd var_B0 
  loc_B54DCF: LitI2_Byte &HFF
  loc_B54DD1: FLdPr Me
  loc_B54DD4: MemStI2 bGenerado
  loc_B54DD7: LitI4 0
  loc_B54DDC: CI2I4
  loc_B54DDD: FLdPr Me
  loc_B54DE0: Me.MousePointer = from_stack_1
  loc_B54DE5: LitVarStr var_94, vbNullString
  loc_B54DEA: PopAdLdVar
  loc_B54DEB: FLdPr Me
  loc_B54DEE: VCallAd Control_ID_statusBar
  loc_B54DF1: FStAdFunc var_A8
  loc_B54DF4: FLdPr var_A8
  loc_B54DF7: LateIdSt
  loc_B54DFC: FFree1Ad var_A8
  loc_B54DFF: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A671A8
  'Data Table: 4BFD94
  loc_A67138: FLdRfVar var_88
  loc_A6713B: LitI2_Byte 0
  loc_A6713D: LitI2_Byte &HFF
  loc_A6713F: ImpAdLdI4 MemVar_D93C84
  loc_A67142: FLdPr Me
  loc_A67145: MemLdRfVar from_stack_1.global_56
  loc_A67148: NewIfNullPr IFileSystem3
  loc_A6714B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A67150: ILdRf var_88
  loc_A67153: FLdPr Me
  loc_A67156: MemStVarAd
  loc_A6715A: FFree1Ad var_88
  loc_A6715D: LitI2_Byte 0
  loc_A6715F: ImpAdStI2 MemVar_D93C8A
  loc_A67162: Call Proc_320_23_C3674C()
  loc_A67167: Call Proc_320_24_BE67E4()
  loc_A6716C: Call Proc_320_25_B7467C()
  loc_A67171: Call Proc_320_26_BB0A64()
  loc_A67176: Call Proc_320_27_B031B0()
  loc_A6717B: Call Proc_320_28_9F4150()
  loc_A67180: FLdPr Me
  loc_A67183: MemLdRfVar from_stack_1.global_60
  loc_A67186: LdPrVar
  loc_A67188: LateMemCall
  loc_A6718E: FLdPr Me
  loc_A67191: MemLdStr global_76
  loc_A67194: LitStr vbNullString
  loc_A67197: EqStr
  loc_A67199: BranchF loc_A671A4
  loc_A6719C: LitStr vbNullString
  loc_A6719F: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A671A4: ExitProcHresult
End Sub

Private Function Proc_320_16_9B04D4() '9B04D4
  'Data Table: 4BFD94
  loc_9B04CC: LitI2_Byte &HFF
  loc_9B04CE: Call Proc_320_19_AF4A40()
  loc_9B04D3: ExitProcHresult
End Function

Private Function Proc_320_17_A15C14(arg_C) 'A15C14
  'Data Table: 4BFD94
  loc_A15BD8: ZeroRetVal
  loc_A15BDA: LitI4 1
  loc_A15BDF: LitI4 1
  loc_A15BE4: LitVarStr var_A8, "000"
  loc_A15BE9: FStVarCopyObj var_B8
  loc_A15BEC: FLdRfVar var_B8
  loc_A15BEF: FLdRfVar arg_C
  loc_A15BF2: CVarRef
  loc_A15BF7: FLdRfVar var_C8
  loc_A15BFA: ImpAdCallFPR4  = Format(, )
  loc_A15BFF: FLdRfVar var_C8
  loc_A15C02: CStrVarTmp
  loc_A15C03: FStStr var_88
  loc_A15C06: FFreeVar var_B8 = ""
  loc_A15C0D: ExitProcCbHresult
End Function

Private Function Proc_320_18_AD17BC() 'AD17BC
  'Data Table: 4BFD94
  loc_AD16A8: FLdPr Me
  loc_AD16AB: VCallAd Control_ID_OrdeLianDesdeMsk
  loc_AD16AE: FStAdFunc var_88
  loc_AD16B1: FLdPr var_88
  loc_AD16B4: LateIdLdVar var_98 DispID_22 0
  loc_AD16BB: PopAd
  loc_AD16BD: FLdPr Me
  loc_AD16C0: VCallAd Control_ID_OrdeLianDesdeMsk
  loc_AD16C3: FStAdFunc var_A0
  loc_AD16C6: FLdPr var_A0
  loc_AD16C9: LateIdLdVar var_B0 DispID_22 0
  loc_AD16D0: PopAd
  loc_AD16D2: LitVarStr var_E4, vbNullString
  loc_AD16D7: FStVarCopyObj var_F4
  loc_AD16DA: FLdRfVar var_F4
  loc_AD16DD: LitStr " AND liquante.OrdeLian >= "
  loc_AD16E0: FLdRfVar var_B0
  loc_AD16E3: CStrVarTmp
  loc_AD16E4: FStStrNoPop var_B4
  loc_AD16E7: ConcatStr
  loc_AD16E8: CVarStr var_D4
  loc_AD16EB: FLdRfVar var_98
  loc_AD16EE: CStrVarTmp
  loc_AD16EF: FStStrNoPop var_9C
  loc_AD16F2: LitStr vbNullString
  loc_AD16F5: NeStr
  loc_AD16F7: CVarBoolI2 var_C4
  loc_AD16FB: FLdRfVar var_104
  loc_AD16FE: ImpAdCallFPR4  = IIf(, , )
  loc_AD1703: FLdRfVar var_104
  loc_AD1706: CStrVarTmp
  loc_AD1707: FStStrNoPop var_108
  loc_AD170A: FLdPr Me
  loc_AD170D: MemStStrCopy
  loc_AD1711: FFreeStr var_9C = "": var_B4 = ""
  loc_AD171A: FFreeAd var_88 = ""
  loc_AD1721: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_AD1730: FLdPr Me
  loc_AD1733: VCallAd Control_ID_OrdeLianHastaMsk
  loc_AD1736: FStAdFunc var_88
  loc_AD1739: FLdPr var_88
  loc_AD173C: LateIdLdVar var_98 DispID_22 0
  loc_AD1743: PopAd
  loc_AD1745: FLdPr Me
  loc_AD1748: VCallAd Control_ID_OrdeLianHastaMsk
  loc_AD174B: FStAdFunc var_A0
  loc_AD174E: FLdPr var_A0
  loc_AD1751: LateIdLdVar var_B0 DispID_22 0
  loc_AD1758: PopAd
  loc_AD175A: LitVarStr var_E4, vbNullString
  loc_AD175F: FStVarCopyObj var_F4
  loc_AD1762: FLdRfVar var_F4
  loc_AD1765: LitStr " AND liquante.OrdeLian <= "
  loc_AD1768: FLdRfVar var_B0
  loc_AD176B: CStrVarTmp
  loc_AD176C: FStStrNoPop var_B4
  loc_AD176F: ConcatStr
  loc_AD1770: CVarStr var_D4
  loc_AD1773: FLdRfVar var_98
  loc_AD1776: CStrVarTmp
  loc_AD1777: FStStrNoPop var_9C
  loc_AD177A: LitStr vbNullString
  loc_AD177D: NeStr
  loc_AD177F: CVarBoolI2 var_C4
  loc_AD1783: FLdRfVar var_104
  loc_AD1786: ImpAdCallFPR4  = IIf(, , )
  loc_AD178B: FLdRfVar var_104
  loc_AD178E: CStrVarTmp
  loc_AD178F: FStStrNoPop var_108
  loc_AD1792: FLdPr Me
  loc_AD1795: MemStStrCopy
  loc_AD1799: FFreeStr var_9C = "": var_B4 = ""
  loc_AD17A2: FFreeAd var_88 = ""
  loc_AD17A9: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_AD17B8: ExitProcHresult
  loc_AD17B9: LtCy
End Function

Private Function Proc_320_19_AF4A40(arg_C) 'AF4A40
  'Data Table: 4BFD94
  loc_AF48B8: from_stack_1v = Proc_320_18_AD17BC()
  loc_AF48BD: FLdPr Me
  loc_AF48C0: MemLdRfVar from_stack_1.global_84
  loc_AF48C3: NewIfNullAd
  loc_AF48C6: FStAd var_88 
  loc_AF48CA: LitStr "SELECT OrdeLian, sum(TotaLian) as TotaLian"
  loc_AF48CD: LitStr " FROM liquante"
  loc_AF48D0: ConcatStr
  loc_AF48D1: FStStrNoPop var_8C
  loc_AF48D4: LitStr " WHERE TipoLian = 'Aforo' AND FeacLian is not null"
  loc_AF48D7: ConcatStr
  loc_AF48D8: FStStrNoPop var_90
  loc_AF48DB: LitStr " AND liquante.PeriLiqu = "
  loc_AF48DE: ConcatStr
  loc_AF48DF: FStStrNoPop var_98
  loc_AF48E2: FLdRfVar var_92
  loc_AF48E5: FLdPr Me
  loc_AF48E8: MemLdRfVar from_stack_1.global_80
  loc_AF48EB: NewIfNullPr clsliquidacion
  loc_AF48EE: from_stack_1 = clsliquidacion.PeriLiqu
  loc_AF48F3: FLdI2 var_92
  loc_AF48F6: CStrUI1
  loc_AF48F8: FStStrNoPop var_9C
  loc_AF48FB: ConcatStr
  loc_AF48FC: FStStrNoPop var_A0
  loc_AF48FF: LitStr " AND liquante.CodiTili = "
  loc_AF4902: ConcatStr
  loc_AF4903: FStStrNoPop var_A8
  loc_AF4906: FLdRfVar var_A2
  loc_AF4909: FLdPr Me
  loc_AF490C: MemLdRfVar from_stack_1.global_80
  loc_AF490F: NewIfNullPr clsliquidacion
  loc_AF4912: from_stack_1 = clsliquidacion.CodiTili
  loc_AF4917: FLdUI1
  loc_AF491B: CStrI2
  loc_AF491D: FStStrNoPop var_AC
  loc_AF4920: ConcatStr
  loc_AF4921: FStStrNoPop var_B0
  loc_AF4924: LitStr " AND liquante.NumeLiqu = "
  loc_AF4927: ConcatStr
  loc_AF4928: FStStrNoPop var_B8
  loc_AF492B: FLdRfVar var_B2
  loc_AF492E: FLdPr Me
  loc_AF4931: MemLdRfVar from_stack_1.global_80
  loc_AF4934: NewIfNullPr clsliquidacion
  loc_AF4937: from_stack_1 = clsliquidacion.NumeLiqu
  loc_AF493C: FLdI2 var_B2
  loc_AF493F: CStrUI1
  loc_AF4941: FStStrNoPop var_BC
  loc_AF4944: ConcatStr
  loc_AF4945: FStStrNoPop var_C0
  loc_AF4948: FLdPr Me
  loc_AF494B: MemLdStr global_112
  loc_AF494E: ConcatStr
  loc_AF494F: FStStrNoPop var_C4
  loc_AF4952: FLdPr Me
  loc_AF4955: MemLdStr global_116
  loc_AF4958: ConcatStr
  loc_AF4959: FStStrNoPop var_C8
  loc_AF495C: LitStr " GROUP BY CodiCome HAVING TotaLian <> 0 AND OrdeLian > 0 ORDER BY OrdeLian"
  loc_AF495F: ConcatStr
  loc_AF4960: FStStrNoPop var_CC
  loc_AF4963: FLdPr var_88
  loc_AF4966: Call clsliquante.RedefineRS(from_stack_1v)
  loc_AF496B: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AF498A: FLdRfVar var_D0
  loc_AF498D: FLdPr var_88
  loc_AF4990: from_stack_1 = clsliquante.RecordCount
  loc_AF4995: ILdRf var_D0
  loc_AF4998: LitI4 0
  loc_AF499D: GtI4
  loc_AF499E: BranchF loc_AF4A0D
  loc_AF49A1: FLdI2 arg_C
  loc_AF49A4: BranchF loc_AF4A0D
  loc_AF49A7: FLdPr var_88
  loc_AF49AA: Call clsliquante.MoveFirst()
  loc_AF49AF: FLdRfVar var_D0
  loc_AF49B2: FLdPr var_88
  loc_AF49B5: from_stack_1 = clsliquante.OrdeLian
  loc_AF49BA: ILdRf var_D0
  loc_AF49BD: CStrI4
  loc_AF49BF: CVarStr var_E0
  loc_AF49C2: PopAdLdVar
  loc_AF49C3: FLdPr Me
  loc_AF49C6: VCallAd Control_ID_OrdeLianDesdeMsk
  loc_AF49C9: FStAdFunc var_F4
  loc_AF49CC: FLdPr var_F4
  loc_AF49CF: LateIdSt
  loc_AF49D4: FFree1Ad var_F4
  loc_AF49D7: FFree1Var var_E0 = ""
  loc_AF49DA: FLdPr var_88
  loc_AF49DD: Call clsliquante.MoveLast()
  loc_AF49E2: FLdRfVar var_D0
  loc_AF49E5: FLdPr var_88
  loc_AF49E8: from_stack_1 = clsliquante.OrdeLian
  loc_AF49ED: ILdRf var_D0
  loc_AF49F0: CStrI4
  loc_AF49F2: CVarStr var_E0
  loc_AF49F5: PopAdLdVar
  loc_AF49F6: FLdPr Me
  loc_AF49F9: VCallAd Control_ID_OrdeLianHastaMsk
  loc_AF49FC: FStAdFunc var_F4
  loc_AF49FF: FLdPr var_F4
  loc_AF4A02: LateIdSt
  loc_AF4A07: FFree1Ad var_F4
  loc_AF4A0A: FFree1Var var_E0 = ""
  loc_AF4A0D: FLdRfVar var_D0
  loc_AF4A10: FLdPr var_88
  loc_AF4A13: from_stack_1 = clsliquante.RecordCount
  loc_AF4A18: ILdRf var_D0
  loc_AF4A1B: CStrI4
  loc_AF4A1D: FStStrNoPop var_8C
  loc_AF4A20: FLdPr Me
  loc_AF4A23: VCallAd Control_ID_ProgresoLbl
  loc_AF4A26: FStAdFunc var_F4
  loc_AF4A29: FLdPr var_F4
  loc_AF4A2C: Me.Caption = from_stack_1
  loc_AF4A31: FFree1Str var_8C
  loc_AF4A34: FFree1Ad var_F4
  loc_AF4A37: LitNothing
  loc_AF4A39: FStAd var_88 
  loc_AF4A3D: ExitProcHresult
  loc_AF4A3E: IStDarg arg_1C03
End Function

Private Function Proc_320_20_BBF508() 'BBF508
  'Data Table: 4BFD94
  loc_BBEE70: FLdPr Me
  loc_BBEE73: MemLdStr global_96
  loc_BBEE76: LitI4 1
  loc_BBEE7B: AddI4
  loc_BBEE7C: FLdPr Me
  loc_BBEE7F: MemStI4 global_96
  loc_BBEE82: LitI2_Byte 0
  loc_BBEE84: CUI1I2
  loc_BBEE86: FLdPr Me
  loc_BBEE89: MemStUI1
  loc_BBEE8D: LitI4 0
  loc_BBEE92: FLdPr Me
  loc_BBEE95: MemLdStr global_96
  loc_BBEE98: FLdPr Me
  loc_BBEE9B: MemLdRfVar from_stack_1.global_92
  loc_BBEE9E: RedimPreserve
  loc_BBEEA8: FLdPr Me
  loc_BBEEAB: MemLdRfVar from_stack_1.global_84
  loc_BBEEAE: NewIfNullAd
  loc_BBEEB1: FStAd var_88 
  loc_BBEEB5: FLdRfVar var_8C
  loc_BBEEB8: FLdPr var_88
  loc_BBEEBB: from_stack_1 = clsliquante.CucuPers
  loc_BBEEC0: LitI2_Byte 0
  loc_BBEEC2: LitVar_Missing var_C0
  loc_BBEEC5: LitI2_Byte 0
  loc_BBEEC7: FLdZeroAd var_8C
  loc_BBEECA: CVarStr var_A0
  loc_BBEECD: PopAdLdVar
  loc_BBEECE: FLdPr Me
  loc_BBEED1: MemLdStr global_96
  loc_BBEED4: FLdPr Me
  loc_BBEED7: MemLdStr global_92
  loc_BBEEDA: AryLock
  loc_BBEEDD: Ary1LdPr
  loc_BBEEDE: MemLdRfVar from_stack_1.global_0
  loc_BBEEE1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBEEE6: AryUnlock
  loc_BBEEE9: FFreeVar var_A0 = ""
  loc_BBEEF0: FLdRfVar var_A0
  loc_BBEEF3: FLdPr var_88
  loc_BBEEF6: from_stack_1 = clsliquante.DetaPers
  loc_BBEEFB: LitI2_Byte 0
  loc_BBEEFD: LitVar_Missing var_C0
  loc_BBEF00: LitI2_Byte 0
  loc_BBEF02: FLdVar var_A0
  loc_BBEF06: FLdPr Me
  loc_BBEF09: MemLdStr global_96
  loc_BBEF0C: FLdPr Me
  loc_BBEF0F: MemLdStr global_92
  loc_BBEF12: AryLock
  loc_BBEF15: Ary1LdPr
  loc_BBEF16: MemLdRfVar from_stack_1.global_4
  loc_BBEF19: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBEF1E: AryUnlock
  loc_BBEF21: FFreeVar var_A0 = ""
  loc_BBEF28: FLdRfVar var_A0
  loc_BBEF2B: FLdPr var_88
  loc_BBEF2E: from_stack_1 = clsliquante.Vinculo
  loc_BBEF33: LitI2_Byte 0
  loc_BBEF35: LitVar_Missing var_C0
  loc_BBEF38: LitI2_Byte 0
  loc_BBEF3A: FLdVar var_A0
  loc_BBEF3E: FLdPr Me
  loc_BBEF41: MemLdStr global_96
  loc_BBEF44: FLdPr Me
  loc_BBEF47: MemLdStr global_92
  loc_BBEF4A: AryLock
  loc_BBEF4D: Ary1LdPr
  loc_BBEF4E: MemLdRfVar from_stack_1.global_8
  loc_BBEF51: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBEF56: AryUnlock
  loc_BBEF59: FFreeVar var_A0 = ""
  loc_BBEF60: FLdRfVar var_A0
  loc_BBEF63: FLdPr var_88
  loc_BBEF66: from_stack_1 = clsliquante.DetaCall
  loc_BBEF6B: LitI2_Byte 0
  loc_BBEF6D: LitVar_Missing var_C0
  loc_BBEF70: LitI2_Byte 0
  loc_BBEF72: FLdVar var_A0
  loc_BBEF76: FLdPr Me
  loc_BBEF79: MemLdStr global_96
  loc_BBEF7C: FLdPr Me
  loc_BBEF7F: MemLdStr global_92
  loc_BBEF82: AryLock
  loc_BBEF85: Ary1LdPr
  loc_BBEF86: MemLdRfVar from_stack_1.global_12
  loc_BBEF89: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBEF8E: AryUnlock
  loc_BBEF91: FFreeVar var_A0 = ""
  loc_BBEF98: FLdRfVar var_C4
  loc_BBEF9B: FLdPr var_88
  loc_BBEF9E: from_stack_1 = clsliquante.NucaLian
  loc_BBEFA3: LitI2_Byte 0
  loc_BBEFA5: LitVar_Missing var_A0
  loc_BBEFA8: LitI2_Byte 0
  loc_BBEFAA: ILdRf var_C4
  loc_BBEFAD: CVarI4
  loc_BBEFB1: PopAdLdVar
  loc_BBEFB2: FLdPr Me
  loc_BBEFB5: MemLdStr global_96
  loc_BBEFB8: FLdPr Me
  loc_BBEFBB: MemLdStr global_92
  loc_BBEFBE: AryLock
  loc_BBEFC1: Ary1LdPr
  loc_BBEFC2: MemLdRfVar from_stack_1.global_16
  loc_BBEFC5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBEFCA: AryUnlock
  loc_BBEFCD: FFree1Var var_A0 = ""
  loc_BBEFD0: FLdRfVar var_A0
  loc_BBEFD3: FLdPr var_88
  loc_BBEFD6: from_stack_1 = clsliquante.DetaBarr
  loc_BBEFDB: LitI2_Byte 0
  loc_BBEFDD: LitVar_Missing var_C0
  loc_BBEFE0: LitI2_Byte 0
  loc_BBEFE2: FLdVar var_A0
  loc_BBEFE6: FLdPr Me
  loc_BBEFE9: MemLdStr global_96
  loc_BBEFEC: FLdPr Me
  loc_BBEFEF: MemLdStr global_92
  loc_BBEFF2: AryLock
  loc_BBEFF5: Ary1LdPr
  loc_BBEFF6: MemLdRfVar from_stack_1.global_20
  loc_BBEFF9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBEFFE: AryUnlock
  loc_BBF001: FFreeVar var_A0 = ""
  loc_BBF008: FLdRfVar var_8C
  loc_BBF00B: FLdPr var_88
  loc_BBF00E: from_stack_1 = clsliquante.ManzLian
  loc_BBF013: LitI2_Byte 0
  loc_BBF015: LitVar_Missing var_C0
  loc_BBF018: LitI2_Byte 0
  loc_BBF01A: FLdZeroAd var_8C
  loc_BBF01D: CVarStr var_A0
  loc_BBF020: PopAdLdVar
  loc_BBF021: FLdPr Me
  loc_BBF024: MemLdStr global_96
  loc_BBF027: FLdPr Me
  loc_BBF02A: MemLdStr global_92
  loc_BBF02D: AryLock
  loc_BBF030: Ary1LdPr
  loc_BBF031: MemLdRfVar from_stack_1.global_24
  loc_BBF034: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF039: AryUnlock
  loc_BBF03C: FFreeVar var_A0 = ""
  loc_BBF043: FLdRfVar var_8C
  loc_BBF046: FLdPr var_88
  loc_BBF049: from_stack_1 = clsliquante.CasaLian
  loc_BBF04E: LitI2_Byte 0
  loc_BBF050: LitVar_Missing var_C0
  loc_BBF053: LitI2_Byte 0
  loc_BBF055: FLdZeroAd var_8C
  loc_BBF058: CVarStr var_A0
  loc_BBF05B: PopAdLdVar
  loc_BBF05C: FLdPr Me
  loc_BBF05F: MemLdStr global_96
  loc_BBF062: FLdPr Me
  loc_BBF065: MemLdStr global_92
  loc_BBF068: AryLock
  loc_BBF06B: Ary1LdPr
  loc_BBF06C: MemLdRfVar from_stack_1.global_28
  loc_BBF06F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF074: AryUnlock
  loc_BBF077: FFreeVar var_A0 = ""
  loc_BBF07E: FLdRfVar var_8C
  loc_BBF081: FLdPr var_88
  loc_BBF084: from_stack_1 = clsliquante.UbicLian
  loc_BBF089: LitI2_Byte 0
  loc_BBF08B: LitVar_Missing var_C0
  loc_BBF08E: LitI2_Byte 0
  loc_BBF090: FLdZeroAd var_8C
  loc_BBF093: CVarStr var_A0
  loc_BBF096: PopAdLdVar
  loc_BBF097: FLdPr Me
  loc_BBF09A: MemLdStr global_96
  loc_BBF09D: FLdPr Me
  loc_BBF0A0: MemLdStr global_92
  loc_BBF0A3: AryLock
  loc_BBF0A6: Ary1LdPr
  loc_BBF0A7: MemLdRfVar from_stack_1.global_32
  loc_BBF0AA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF0AF: AryUnlock
  loc_BBF0B2: FFreeVar var_A0 = ""
  loc_BBF0B9: FLdRfVar var_A0
  loc_BBF0BC: FLdPr var_88
  loc_BBF0BF: from_stack_1 = clsliquante.DetaLoca
  loc_BBF0C4: LitI2_Byte 0
  loc_BBF0C6: LitVar_Missing var_C0
  loc_BBF0C9: LitI2_Byte 0
  loc_BBF0CB: FLdVar var_A0
  loc_BBF0CF: FLdPr Me
  loc_BBF0D2: MemLdStr global_96
  loc_BBF0D5: FLdPr Me
  loc_BBF0D8: MemLdStr global_92
  loc_BBF0DB: AryLock
  loc_BBF0DE: Ary1LdPr
  loc_BBF0DF: MemLdRfVar from_stack_1.global_36
  loc_BBF0E2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF0E7: AryUnlock
  loc_BBF0EA: FFreeVar var_A0 = ""
  loc_BBF0F1: FLdRfVar var_A0
  loc_BBF0F4: FLdPr var_88
  loc_BBF0F7: from_stack_1 = clsliquante.CopoLian
  loc_BBF0FC: LitI2_Byte 0
  loc_BBF0FE: LitVar_Missing var_C0
  loc_BBF101: LitI2_Byte 0
  loc_BBF103: FLdVar var_A0
  loc_BBF107: FLdPr Me
  loc_BBF10A: MemLdStr global_96
  loc_BBF10D: FLdPr Me
  loc_BBF110: MemLdStr global_92
  loc_BBF113: AryLock
  loc_BBF116: Ary1LdPr
  loc_BBF117: MemLdRfVar from_stack_1.global_40
  loc_BBF11A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF11F: AryUnlock
  loc_BBF122: FFreeVar var_A0 = ""
  loc_BBF129: FLdRfVar var_A0
  loc_BBF12C: FLdPr var_88
  loc_BBF12F: from_stack_1 = clsliquante.CallLianReal
  loc_BBF134: LitI2_Byte 0
  loc_BBF136: LitVar_Missing var_C0
  loc_BBF139: LitI2_Byte 0
  loc_BBF13B: FLdVar var_A0
  loc_BBF13F: FLdPr Me
  loc_BBF142: MemLdStr global_96
  loc_BBF145: FLdPr Me
  loc_BBF148: MemLdStr global_92
  loc_BBF14B: AryLock
  loc_BBF14E: Ary1LdPr
  loc_BBF14F: MemLdRfVar from_stack_1.global_44
  loc_BBF152: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF157: AryUnlock
  loc_BBF15A: FFreeVar var_A0 = ""
  loc_BBF161: FLdRfVar var_A0
  loc_BBF164: FLdPr var_88
  loc_BBF167: from_stack_1 = clsliquante.NucaLianReal
  loc_BBF16C: LitI2_Byte 0
  loc_BBF16E: LitVar_Missing var_C0
  loc_BBF171: LitI2_Byte 0
  loc_BBF173: FLdVar var_A0
  loc_BBF177: FLdPr Me
  loc_BBF17A: MemLdStr global_96
  loc_BBF17D: FLdPr Me
  loc_BBF180: MemLdStr global_92
  loc_BBF183: AryLock
  loc_BBF186: Ary1LdPr
  loc_BBF187: MemLdRfVar from_stack_1.global_48
  loc_BBF18A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF18F: AryUnlock
  loc_BBF192: FFreeVar var_A0 = ""
  loc_BBF199: FLdRfVar var_A0
  loc_BBF19C: FLdPr var_88
  loc_BBF19F: from_stack_1 = clsliquante.BarrLianReal
  loc_BBF1A4: LitI2_Byte 0
  loc_BBF1A6: LitVar_Missing var_C0
  loc_BBF1A9: LitI2_Byte 0
  loc_BBF1AB: FLdVar var_A0
  loc_BBF1AF: FLdPr Me
  loc_BBF1B2: MemLdStr global_96
  loc_BBF1B5: FLdPr Me
  loc_BBF1B8: MemLdStr global_92
  loc_BBF1BB: AryLock
  loc_BBF1BE: Ary1LdPr
  loc_BBF1BF: MemLdRfVar from_stack_1.bGenerado
  loc_BBF1C2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF1C7: AryUnlock
  loc_BBF1CA: FFreeVar var_A0 = ""
  loc_BBF1D1: FLdRfVar var_A0
  loc_BBF1D4: FLdPr var_88
  loc_BBF1D7: from_stack_1 = clsliquante.ManzLianReal
  loc_BBF1DC: LitI2_Byte 0
  loc_BBF1DE: LitVar_Missing var_C0
  loc_BBF1E1: LitI2_Byte 0
  loc_BBF1E3: FLdVar var_A0
  loc_BBF1E7: FLdPr Me
  loc_BBF1EA: MemLdStr global_96
  loc_BBF1ED: FLdPr Me
  loc_BBF1F0: MemLdStr global_92
  loc_BBF1F3: AryLock
  loc_BBF1F6: Ary1LdPr
  loc_BBF1F7: MemLdRfVar from_stack_1.global_56
  loc_BBF1FA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF1FF: AryUnlock
  loc_BBF202: FFreeVar var_A0 = ""
  loc_BBF209: FLdRfVar var_A0
  loc_BBF20C: FLdPr var_88
  loc_BBF20F: from_stack_1 = clsliquante.CasaLianReal
  loc_BBF214: LitI2_Byte 0
  loc_BBF216: LitVar_Missing var_C0
  loc_BBF219: LitI2_Byte 0
  loc_BBF21B: FLdVar var_A0
  loc_BBF21F: FLdPr Me
  loc_BBF222: MemLdStr global_96
  loc_BBF225: FLdPr Me
  loc_BBF228: MemLdStr global_92
  loc_BBF22B: AryLock
  loc_BBF22E: Ary1LdPr
  loc_BBF22F: MemLdRfVar from_stack_1.global_60
  loc_BBF232: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF237: AryUnlock
  loc_BBF23A: FFreeVar var_A0 = ""
  loc_BBF241: FLdRfVar var_A0
  loc_BBF244: FLdPr var_88
  loc_BBF247: from_stack_1 = clsliquante.UbicLianReal
  loc_BBF24C: LitI2_Byte 0
  loc_BBF24E: LitVar_Missing var_C0
  loc_BBF251: LitI2_Byte 0
  loc_BBF253: FLdVar var_A0
  loc_BBF257: FLdPr Me
  loc_BBF25A: MemLdStr global_96
  loc_BBF25D: FLdPr Me
  loc_BBF260: MemLdStr global_92
  loc_BBF263: AryLock
  loc_BBF266: Ary1LdPr
  loc_BBF267: MemLdRfVar from_stack_1.global_64
  loc_BBF26A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF26F: AryUnlock
  loc_BBF272: FFreeVar var_A0 = ""
  loc_BBF279: FLdRfVar var_A0
  loc_BBF27C: FLdPr var_88
  loc_BBF27F: from_stack_1 = clsliquante.LocaLianReal
  loc_BBF284: LitI2_Byte 0
  loc_BBF286: LitVar_Missing var_C0
  loc_BBF289: LitI2_Byte 0
  loc_BBF28B: FLdVar var_A0
  loc_BBF28F: FLdPr Me
  loc_BBF292: MemLdStr global_96
  loc_BBF295: FLdPr Me
  loc_BBF298: MemLdStr global_92
  loc_BBF29B: AryLock
  loc_BBF29E: Ary1LdPr
  loc_BBF29F: MemLdRfVar from_stack_1.global_68
  loc_BBF2A2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF2A7: AryUnlock
  loc_BBF2AA: FFreeVar var_A0 = ""
  loc_BBF2B1: FLdRfVar var_A0
  loc_BBF2B4: FLdPr var_88
  loc_BBF2B7: from_stack_1 = clsliquante.CopoLianReal
  loc_BBF2BC: LitI2_Byte 0
  loc_BBF2BE: LitVar_Missing var_C0
  loc_BBF2C1: LitI2_Byte 0
  loc_BBF2C3: FLdVar var_A0
  loc_BBF2C7: FLdPr Me
  loc_BBF2CA: MemLdStr global_96
  loc_BBF2CD: FLdPr Me
  loc_BBF2D0: MemLdStr global_92
  loc_BBF2D3: AryLock
  loc_BBF2D6: Ary1LdPr
  loc_BBF2D7: MemLdRfVar from_stack_1.global_72
  loc_BBF2DA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF2DF: AryUnlock
  loc_BBF2E2: FFreeVar var_A0 = ""
  loc_BBF2E9: FLdRfVar var_C4
  loc_BBF2EC: FLdPr var_88
  loc_BBF2EF: from_stack_1 = clsliquante.CodiCome
  loc_BBF2F4: LitI2_Byte 0
  loc_BBF2F6: LitVar_Missing var_A0
  loc_BBF2F9: LitI2_Byte 0
  loc_BBF2FB: ILdRf var_C4
  loc_BBF2FE: CVarI4
  loc_BBF302: PopAdLdVar
  loc_BBF303: FLdPr Me
  loc_BBF306: MemLdStr global_96
  loc_BBF309: FLdPr Me
  loc_BBF30C: MemLdStr global_92
  loc_BBF30F: AryLock
  loc_BBF312: Ary1LdPr
  loc_BBF313: MemLdRfVar from_stack_1.global_76
  loc_BBF316: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF31B: AryUnlock
  loc_BBF31E: FFree1Var var_A0 = ""
  loc_BBF321: FLdRfVar var_C4
  loc_BBF324: FLdPr var_88
  loc_BBF327: from_stack_1 = clsliquante.OrdeLian
  loc_BBF32C: LitI2_Byte 0
  loc_BBF32E: LitVar_Missing var_A0
  loc_BBF331: LitI2_Byte 0
  loc_BBF333: ILdRf var_C4
  loc_BBF336: CVarI4
  loc_BBF33A: PopAdLdVar
  loc_BBF33B: FLdPr Me
  loc_BBF33E: MemLdStr global_96
  loc_BBF341: FLdPr Me
  loc_BBF344: MemLdStr global_92
  loc_BBF347: AryLock
  loc_BBF34A: Ary1LdPr
  loc_BBF34B: MemLdRfVar from_stack_1.global_84
  loc_BBF34E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF353: AryUnlock
  loc_BBF356: FFree1Var var_A0 = ""
  loc_BBF359: FLdRfVar var_A0
  loc_BBF35C: FLdPr var_88
  loc_BBF35F: from_stack_1 = clsliquante.CodiUsua
  loc_BBF364: LitI2_Byte 0
  loc_BBF366: LitVar_Missing var_C0
  loc_BBF369: LitI2_Byte 0
  loc_BBF36B: FLdVar var_A0
  loc_BBF36F: FLdPr Me
  loc_BBF372: MemLdStr global_96
  loc_BBF375: FLdPr Me
  loc_BBF378: MemLdStr global_92
  loc_BBF37B: AryLock
  loc_BBF37E: Ary1LdPr
  loc_BBF37F: MemLdRfVar from_stack_1.global_88
  loc_BBF382: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF387: AryUnlock
  loc_BBF38A: FFreeVar var_A0 = ""
  loc_BBF391: FLdRfVar var_A0
  loc_BBF394: FLdPr var_88
  loc_BBF397: from_stack_1 = clsliquante.RazoCome
  loc_BBF39C: LitI2_Byte 0
  loc_BBF39E: LitVar_Missing var_C0
  loc_BBF3A1: LitI2_Byte 0
  loc_BBF3A3: FLdVar var_A0
  loc_BBF3A7: FLdPr Me
  loc_BBF3AA: MemLdStr global_96
  loc_BBF3AD: FLdPr Me
  loc_BBF3B0: MemLdStr global_92
  loc_BBF3B3: AryLock
  loc_BBF3B6: Ary1LdPr
  loc_BBF3B7: MemLdRfVar from_stack_1.global_80
  loc_BBF3BA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF3BF: AryUnlock
  loc_BBF3C2: FFreeVar var_A0 = ""
  loc_BBF3C9: FLdRfVar var_DC
  loc_BBF3CC: FLdPr var_88
  loc_BBF3CF: from_stack_1 = clsliquante.DeudLian
  loc_BBF3D4: LitI2_Byte 0
  loc_BBF3D6: LitVar_Missing var_A0
  loc_BBF3D9: LitI2_Byte &HFF
  loc_BBF3DB: FLdFPR8 var_DC
  loc_BBF3DE: CVarR8
  loc_BBF3E2: PopAdLdVar
  loc_BBF3E3: FLdPr Me
  loc_BBF3E6: MemLdStr global_96
  loc_BBF3E9: FLdPr Me
  loc_BBF3EC: MemLdStr global_92
  loc_BBF3EF: AryLock
  loc_BBF3F2: Ary1LdPr
  loc_BBF3F3: MemLdRfVar from_stack_1.global_92
  loc_BBF3F6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF3FB: AryUnlock
  loc_BBF3FE: FFree1Var var_A0 = ""
  loc_BBF401: FLdRfVar var_A0
  loc_BBF404: FLdPr var_88
  loc_BBF407: from_stack_1 = clsliquante.Bimestres
  loc_BBF40C: FLdRfVar var_A0
  loc_BBF40F: CStrVarVal var_8C
  loc_BBF413: ImpAdCallI2 StrReverse()
  loc_BBF418: FStStr var_100
  loc_BBF41B: LitStr ","
  loc_BBF41E: ImpAdCallI2 StrReverse()
  loc_BBF423: FStStr var_104
  loc_BBF426: LitStr " y"
  loc_BBF429: ImpAdCallI2 StrReverse()
  loc_BBF42E: FStStr var_108
  loc_BBF431: LitI4 0
  loc_BBF436: LitI4 1
  loc_BBF43B: LitI4 1
  loc_BBF440: FLdZeroAd var_108
  loc_BBF443: FStStrNoPop var_E8
  loc_BBF446: FLdZeroAd var_104
  loc_BBF449: FStStrNoPop var_E4
  loc_BBF44C: FLdZeroAd var_100
  loc_BBF44F: FStStrNoPop var_E0
  loc_BBF452: ImpAdCallI2 Replace(, , , , , )
  loc_BBF457: FStStrNoPop var_EC
  loc_BBF45A: ImpAdCallI2 StrReverse()
  loc_BBF45F: FStStr var_10C
  loc_BBF462: LitI2_Byte 0
  loc_BBF464: LitVar_Missing var_FC
  loc_BBF467: LitI2_Byte 0
  loc_BBF469: FLdZeroAd var_10C
  loc_BBF46C: CVarStr var_C0
  loc_BBF46F: PopAdLdVar
  loc_BBF470: FLdPr Me
  loc_BBF473: MemLdStr global_96
  loc_BBF476: FLdPr Me
  loc_BBF479: MemLdStr global_92
  loc_BBF47C: AryLock
  loc_BBF47F: Ary1LdPr
  loc_BBF480: MemLdRfVar from_stack_1.global_96
  loc_BBF483: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF488: AryUnlock
  loc_BBF48B: FFreeStr var_8C = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_BBF4A0: FFreeVar var_A0 = "": var_C0 = ""
  loc_BBF4A9: FLdRfVar var_C4
  loc_BBF4AC: FLdPr var_88
  loc_BBF4AF: from_stack_1 = clsliquante.CodiCome
  loc_BBF4B4: FLdRfVar var_110
  loc_BBF4B7: FLdPr var_88
  loc_BBF4BA: from_stack_1 = clsliquante.OrdeLian
  loc_BBF4BF: ILdRf var_110
  loc_BBF4C2: CStrI4
  loc_BBF4C4: FStStrNoPop var_E0
  loc_BBF4C7: ILdRf var_C4
  loc_BBF4CA: CStrI4
  loc_BBF4CC: FStStrNoPop var_8C
  loc_BBF4CF: LitI2_Byte 2
  loc_BBF4D1: CUI1I2
  loc_BBF4D3: ImpAdCallI2  = Proc_57_40_AD4A10(, )
  loc_BBF4D8: PopTmpLdAdStr var_118
  loc_BBF4DB: FLdPr Me
  loc_BBF4DE: MemLdStr global_96
  loc_BBF4E1: FLdPr Me
  loc_BBF4E4: MemLdStr global_92
  loc_BBF4E7: Ary1LdPr
  loc_BBF4E8: MemLdRfVar from_stack_1.global_104
  loc_BBF4EB: StAryMove
  loc_BBF4ED: FFreeStr var_8C = ""
  loc_BBF4F4: LitNothing
  loc_BBF4F6: FStAd var_88 
  loc_BBF4FA: Call Proc_320_21_B6900C()
  loc_BBF4FF: Call Proc_320_22_BD007C()
  loc_BBF504: ExitProcHresult
  loc_BBF505: FStAdFunc arg_2500
End Function

Private Function Proc_320_21_B6900C() 'B6900C
  'Data Table: 4BFD94
  loc_B68C04: FLdPr Me
  loc_B68C07: MemLdRfVar from_stack_1.global_88
  loc_B68C0A: NewIfNullAd
  loc_B68C0D: FStAd var_88 
  loc_B68C11: LitStr "SELECT liandeta.CodiRubr, liandeta.CodiSubr, IFNULL(DetaSubr,'') DetaSubr, IFNULL(servcome.CateSeco,'0') CateSeco,  IFNULL(servcome.CantSeco,'0') CantSeco, CAST(liandeta.TotaLade AS DOUBLE(10,2)) as TotaLian"
  loc_B68C14: LitStr " FROM  liandeta "
  loc_B68C17: ConcatStr
  loc_B68C18: FStStrNoPop var_8C
  loc_B68C1B: LitStr " LEFT JOIN subrubro ON subrubro.CodiRamo = liandeta.CodiRamo"
  loc_B68C1E: ConcatStr
  loc_B68C1F: FStStrNoPop var_90
  loc_B68C22: LitStr " AND subrubro.CodiRubr = liandeta.CodiRubr"
  loc_B68C25: ConcatStr
  loc_B68C26: FStStrNoPop var_94
  loc_B68C29: LitStr " AND subrubro.PeriOrde = "
  loc_B68C2C: ConcatStr
  loc_B68C2D: FStStrNoPop var_9C
  loc_B68C30: FLdRfVar var_96
  loc_B68C33: FLdPr Me
  loc_B68C36: MemLdRfVar from_stack_1.global_80
  loc_B68C39: NewIfNullPr clsliquidacion
  loc_B68C3C: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B68C41: FLdI2 var_96
  loc_B68C44: CStrUI1
  loc_B68C46: FStStrNoPop var_A0
  loc_B68C49: ConcatStr
  loc_B68C4A: FStStrNoPop var_A4
  loc_B68C4D: LitStr " AND subrubro.CodiSubr = liandeta.CodiSubr"
  loc_B68C50: ConcatStr
  loc_B68C51: FStStrNoPop var_A8
  loc_B68C54: LitStr " LEFT JOIN servcome ON servcome.CodiCome = liandeta.CodiCome"
  loc_B68C57: ConcatStr
  loc_B68C58: FStStrNoPop var_AC
  loc_B68C5B: LitStr " AND servcome.CodiRamo =  liandeta.CodiRamo"
  loc_B68C5E: ConcatStr
  loc_B68C5F: FStStrNoPop var_B0
  loc_B68C62: LitStr " AND servcome.CodiRubr =  liandeta.CodiRubr"
  loc_B68C65: ConcatStr
  loc_B68C66: FStStrNoPop var_B4
  loc_B68C69: LitStr " AND servcome.CodiSubr =  liandeta.CodiSubr"
  loc_B68C6C: ConcatStr
  loc_B68C6D: FStStrNoPop var_B8
  loc_B68C70: LitStr " AND servcome.PrioSeco =  liandeta.NumeLade"
  loc_B68C73: ConcatStr
  loc_B68C74: FStStrNoPop var_BC
  loc_B68C77: LitStr " WHERE liandeta.CodiSubr<>999 AND PeriLiqu = "
  loc_B68C7A: ConcatStr
  loc_B68C7B: FStStrNoPop var_C4
  loc_B68C7E: FLdRfVar var_BE
  loc_B68C81: FLdPr Me
  loc_B68C84: MemLdRfVar from_stack_1.global_80
  loc_B68C87: NewIfNullPr clsliquidacion
  loc_B68C8A: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B68C8F: FLdI2 var_BE
  loc_B68C92: CStrUI1
  loc_B68C94: FStStrNoPop var_C8
  loc_B68C97: ConcatStr
  loc_B68C98: FStStrNoPop var_CC
  loc_B68C9B: LitStr " AND CodiTili = "
  loc_B68C9E: ConcatStr
  loc_B68C9F: FStStrNoPop var_D4
  loc_B68CA2: FLdRfVar var_CE
  loc_B68CA5: FLdPr Me
  loc_B68CA8: MemLdRfVar from_stack_1.global_80
  loc_B68CAB: NewIfNullPr clsliquidacion
  loc_B68CAE: from_stack_1 = clsliquidacion.CodiTili
  loc_B68CB3: FLdUI1
  loc_B68CB7: CStrI2
  loc_B68CB9: FStStrNoPop var_D8
  loc_B68CBC: ConcatStr
  loc_B68CBD: FStStrNoPop var_DC
  loc_B68CC0: LitStr " AND NumeLiqu = "
  loc_B68CC3: ConcatStr
  loc_B68CC4: FStStrNoPop var_E4
  loc_B68CC7: FLdRfVar var_DE
  loc_B68CCA: FLdPr Me
  loc_B68CCD: MemLdRfVar from_stack_1.global_80
  loc_B68CD0: NewIfNullPr clsliquidacion
  loc_B68CD3: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B68CD8: FLdI2 var_DE
  loc_B68CDB: CStrUI1
  loc_B68CDD: FStStrNoPop var_E8
  loc_B68CE0: ConcatStr
  loc_B68CE1: FStStrNoPop var_EC
  loc_B68CE4: LitStr " AND BimeLiqu = "
  loc_B68CE7: ConcatStr
  loc_B68CE8: FStStrNoPop var_F4
  loc_B68CEB: FLdRfVar var_EE
  loc_B68CEE: FLdPr Me
  loc_B68CF1: MemLdRfVar from_stack_1.global_84
  loc_B68CF4: NewIfNullPr clsliquante
  loc_B68CF7: from_stack_1 = clsliquante.BimeLiqu
  loc_B68CFC: FLdUI1
  loc_B68D00: CStrI2
  loc_B68D02: FStStrNoPop var_F8
  loc_B68D05: ConcatStr
  loc_B68D06: FStStrNoPop var_FC
  loc_B68D09: LitStr "  AND CodiConc = '13020601' AND liandeta.TipoVenc = 1 AND liandeta.CodiCome = "
  loc_B68D0C: ConcatStr
  loc_B68D0D: FStStrNoPop var_100
  loc_B68D10: FLdPr Me
  loc_B68D13: MemLdStr global_96
  loc_B68D16: FLdPr Me
  loc_B68D19: MemLdStr global_92
  loc_B68D1C: Ary1LdPr
  loc_B68D1D: MemLdStr global_76
  loc_B68D20: ConcatStr
  loc_B68D21: FStStrNoPop var_104
  loc_B68D24: LitStr " ORDER BY TotaLian DESC LIMIT 11"
  loc_B68D27: ConcatStr
  loc_B68D28: FStStrNoPop var_108
  loc_B68D2B: FLdPr var_88
  loc_B68D2E: Call clsliquante.RedefineRS(from_stack_1v)
  loc_B68D33: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D4 = "": var_D8 = "": var_DC = "": var_E4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B68D6C: FLdRfVar var_10C
  loc_B68D6F: FLdPr var_88
  loc_B68D72: from_stack_1 = clsliquante.RecordCount
  loc_B68D77: ILdRf var_10C
  loc_B68D7A: LitI4 0
  loc_B68D7F: GtI4
  loc_B68D80: BranchF loc_B68FDE
  loc_B68D83: LitI2_Byte 0
  loc_B68D85: FLdPr Me
  loc_B68D88: MemStI2 global_100
  loc_B68D8B: FLdPr var_88
  loc_B68D8E: Call clsliquante.MoveFirst()
  loc_B68D93: FLdRfVar var_10C
  loc_B68D96: FLdPr var_88
  loc_B68D99: from_stack_1 = clsliquante.RecordCount
  loc_B68D9E: ILdRf var_10C
  loc_B68DA1: LitI4 &HA
  loc_B68DA6: GtI4
  loc_B68DA7: FLdPr Me
  loc_B68DAA: MemLdStr global_96
  loc_B68DAD: FLdPr Me
  loc_B68DB0: MemLdStr global_92
  loc_B68DB3: Ary1LdPr
  loc_B68DB4: MemStI2 global_100
  loc_B68DB7: FLdPr Me
  loc_B68DBA: MemLdI2 global_100
  loc_B68DBD: LitI2_Byte 1
  loc_B68DBF: AddI2
  loc_B68DC0: FLdPr Me
  loc_B68DC3: MemStI2 global_100
  loc_B68DC6: LitI4 0
  loc_B68DCB: FLdPr Me
  loc_B68DCE: MemLdI2 global_100
  loc_B68DD1: CI4UI1
  loc_B68DD2: FLdPr Me
  loc_B68DD5: MemLdStr global_96
  loc_B68DD8: FLdPr Me
  loc_B68DDB: MemLdStr global_92
  loc_B68DDE: Ary1LdPr
  loc_B68DDF: MemLdRfVar from_stack_1.global_108
  loc_B68DE2: RedimPreserve
  loc_B68DEC: FLdRfVar var_11C
  loc_B68DEF: FLdPr var_88
  loc_B68DF2: from_stack_1 = clsliquante.CodiRubr
  loc_B68DF7: LitI2_Byte 0
  loc_B68DF9: LitVar_Missing var_144
  loc_B68DFC: LitI2_Byte 0
  loc_B68DFE: FLdVar var_11C
  loc_B68E02: FLdPr Me
  loc_B68E05: MemLdI2 global_100
  loc_B68E08: CI4UI1
  loc_B68E09: FLdPr Me
  loc_B68E0C: MemLdStr global_96
  loc_B68E0F: FLdPr Me
  loc_B68E12: MemLdStr global_92
  loc_B68E15: AryLock
  loc_B68E18: Ary1LdPr
  loc_B68E19: MemLdStr global_108
  loc_B68E1C: AryLock
  loc_B68E1F: Ary1LdPr
  loc_B68E20: MemLdRfVar from_stack_1.global_0
  loc_B68E23: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B68E28: AryUnlock
  loc_B68E2B: AryUnlock
  loc_B68E2E: FFreeVar var_11C = ""
  loc_B68E35: FLdRfVar var_11C
  loc_B68E38: FLdPr var_88
  loc_B68E3B: from_stack_1 = clsliquante.CodiSubr
  loc_B68E40: LitI2_Byte 0
  loc_B68E42: LitVar_Missing var_144
  loc_B68E45: LitI2_Byte 0
  loc_B68E47: FLdVar var_11C
  loc_B68E4B: FLdPr Me
  loc_B68E4E: MemLdI2 global_100
  loc_B68E51: CI4UI1
  loc_B68E52: FLdPr Me
  loc_B68E55: MemLdStr global_96
  loc_B68E58: FLdPr Me
  loc_B68E5B: MemLdStr global_92
  loc_B68E5E: AryLock
  loc_B68E61: Ary1LdPr
  loc_B68E62: MemLdStr global_108
  loc_B68E65: AryLock
  loc_B68E68: Ary1LdPr
  loc_B68E69: MemLdRfVar from_stack_1.global_4
  loc_B68E6C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B68E71: AryUnlock
  loc_B68E74: AryUnlock
  loc_B68E77: FFreeVar var_11C = ""
  loc_B68E7E: FLdRfVar var_11C
  loc_B68E81: FLdPr var_88
  loc_B68E84: from_stack_1 = clsliquante.DetaSubr
  loc_B68E89: LitI2_Byte 0
  loc_B68E8B: LitVar_Missing var_144
  loc_B68E8E: LitI2_Byte 0
  loc_B68E90: FLdVar var_11C
  loc_B68E94: FLdPr Me
  loc_B68E97: MemLdI2 global_100
  loc_B68E9A: CI4UI1
  loc_B68E9B: FLdPr Me
  loc_B68E9E: MemLdStr global_96
  loc_B68EA1: FLdPr Me
  loc_B68EA4: MemLdStr global_92
  loc_B68EA7: AryLock
  loc_B68EAA: Ary1LdPr
  loc_B68EAB: MemLdStr global_108
  loc_B68EAE: AryLock
  loc_B68EB1: Ary1LdPr
  loc_B68EB2: MemLdRfVar from_stack_1.global_8
  loc_B68EB5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B68EBA: AryUnlock
  loc_B68EBD: AryUnlock
  loc_B68EC0: FFreeVar var_11C = ""
  loc_B68EC7: FLdRfVar var_11C
  loc_B68ECA: FLdPr var_88
  loc_B68ECD: from_stack_1 = clsliquante.CateSeco
  loc_B68ED2: LitI2_Byte 0
  loc_B68ED4: LitVar_Missing var_144
  loc_B68ED7: LitI2_Byte 0
  loc_B68ED9: FLdVar var_11C
  loc_B68EDD: FLdPr Me
  loc_B68EE0: MemLdI2 global_100
  loc_B68EE3: CI4UI1
  loc_B68EE4: FLdPr Me
  loc_B68EE7: MemLdStr global_96
  loc_B68EEA: FLdPr Me
  loc_B68EED: MemLdStr global_92
  loc_B68EF0: AryLock
  loc_B68EF3: Ary1LdPr
  loc_B68EF4: MemLdStr global_108
  loc_B68EF7: AryLock
  loc_B68EFA: Ary1LdPr
  loc_B68EFB: MemLdRfVar from_stack_1.global_12
  loc_B68EFE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B68F03: AryUnlock
  loc_B68F06: AryUnlock
  loc_B68F09: FFreeVar var_11C = ""
  loc_B68F10: FLdRfVar var_96
  loc_B68F13: FLdPr var_88
  loc_B68F16: from_stack_1 = clsliquante.CantSeco
  loc_B68F1B: LitI2_Byte 0
  loc_B68F1D: LitVar_Missing var_11C
  loc_B68F20: LitI2_Byte 0
  loc_B68F22: FLdI2 var_96
  loc_B68F25: CVarI2 var_134
  loc_B68F28: PopAdLdVar
  loc_B68F29: FLdPr Me
  loc_B68F2C: MemLdI2 global_100
  loc_B68F2F: CI4UI1
  loc_B68F30: FLdPr Me
  loc_B68F33: MemLdStr global_96
  loc_B68F36: FLdPr Me
  loc_B68F39: MemLdStr global_92
  loc_B68F3C: AryLock
  loc_B68F3F: Ary1LdPr
  loc_B68F40: MemLdStr global_108
  loc_B68F43: AryLock
  loc_B68F46: Ary1LdPr
  loc_B68F47: MemLdRfVar from_stack_1.global_16
  loc_B68F4A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B68F4F: AryUnlock
  loc_B68F52: AryUnlock
  loc_B68F55: FFree1Var var_11C = ""
  loc_B68F58: FLdRfVar var_15C
  loc_B68F5B: FLdPr var_88
  loc_B68F5E: from_stack_1 = clsliquante.TotaLian
  loc_B68F63: LitI2_Byte 0
  loc_B68F65: LitVar_Missing var_11C
  loc_B68F68: LitI2_Byte &HFF
  loc_B68F6A: FLdFPR8 var_15C
  loc_B68F6D: CVarR8
  loc_B68F71: PopAdLdVar
  loc_B68F72: FLdPr Me
  loc_B68F75: MemLdI2 global_100
  loc_B68F78: CI4UI1
  loc_B68F79: FLdPr Me
  loc_B68F7C: MemLdStr global_96
  loc_B68F7F: FLdPr Me
  loc_B68F82: MemLdStr global_92
  loc_B68F85: AryLock
  loc_B68F88: Ary1LdPr
  loc_B68F89: MemLdStr global_108
  loc_B68F8C: AryLock
  loc_B68F8F: Ary1LdPr
  loc_B68F90: MemLdRfVar from_stack_1.global_20
  loc_B68F93: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B68F98: AryUnlock
  loc_B68F9B: AryUnlock
  loc_B68F9E: FFree1Var var_11C = ""
  loc_B68FA1: LitI2_Byte 1
  loc_B68FA3: PopTmpLdAd2 var_96
  loc_B68FA6: FLdPr var_88
  loc_B68FA9: Call clsliquante.Move(from_stack_1v)
  loc_B68FAE: FLdRfVar var_96
  loc_B68FB1: FLdPr var_88
  loc_B68FB4: from_stack_1 = clsliquante.EOF
  loc_B68FB9: FLdI2 var_96
  loc_B68FBC: FLdPr Me
  loc_B68FBF: MemLdI2 global_100
  loc_B68FC2: LitI2_Byte &HA
  loc_B68FC4: EqI2
  loc_B68FC5: FLdPr Me
  loc_B68FC8: MemLdStr global_96
  loc_B68FCB: FLdPr Me
  loc_B68FCE: MemLdStr global_92
  loc_B68FD1: Ary1LdPr
  loc_B68FD2: MemLdI2 global_100
  loc_B68FD5: AndI4
  loc_B68FD6: OrI4
  loc_B68FD7: NotI4
  loc_B68FD8: BranchT loc_B68DB7
  loc_B68FDB: Branch loc_B69002
  loc_B68FDE: LitI4 0
  loc_B68FE3: LitI4 0
  loc_B68FE8: FLdPr Me
  loc_B68FEB: MemLdStr global_96
  loc_B68FEE: FLdPr Me
  loc_B68FF1: MemLdStr global_92
  loc_B68FF4: Ary1LdPr
  loc_B68FF5: MemLdRfVar from_stack_1.global_108
  loc_B68FF8: RedimPreserve
  loc_B69002: LitNothing
  loc_B69004: FStAd var_88 
  loc_B69008: ExitProcHresult
  loc_B69009: ILdRf arg_335
End Function

Private Function Proc_320_22_BD007C() 'BD007C
  'Data Table: 4BFD94
  loc_BCF998: FLdPr Me
  loc_BCF99B: MemLdRfVar from_stack_1.global_84
  loc_BCF99E: NewIfNullAd
  loc_BCF9A1: FStAd var_8C 
  loc_BCF9A5: FLdRfVar var_8E
  loc_BCF9A8: FLdPr var_8C
  loc_BCF9AB: from_stack_1 = clsliquante.TipoVenc
  loc_BCF9B0: FLdUI1
  loc_BCF9B4: CI2UI1
  loc_BCF9B6: LitI2_Byte 2
  loc_BCF9B8: EqI2
  loc_BCF9B9: BranchF loc_BCFC70
  loc_BCF9BC: FLdPr Me
  loc_BCF9BF: MemLdUI1 global_102
  loc_BCF9C3: CI2UI1
  loc_BCF9C5: FStI2 var_86
  loc_BCF9C8: LitI2_Byte 0
  loc_BCF9CA: CUI1I2
  loc_BCF9CC: FLdPr Me
  loc_BCF9CF: MemStUI1
  loc_BCF9D3: LitI2_Byte 0
  loc_BCF9D5: FLdPr Me
  loc_BCF9D8: MemLdUI1 global_102
  loc_BCF9DC: CI4UI1
  loc_BCF9DD: FLdPr Me
  loc_BCF9E0: MemLdStr global_96
  loc_BCF9E3: FLdPr Me
  loc_BCF9E6: MemLdStr global_92
  loc_BCF9E9: Ary1LdPr
  loc_BCF9EA: MemLdStr global_112
  loc_BCF9ED: Ary1LdPr
  loc_BCF9EE: MemStI2 global_0
  loc_BCF9F1: FLdRfVar var_8E
  loc_BCF9F4: FLdPr var_8C
  loc_BCF9F7: from_stack_1 = clsliquante.PeriBole
  loc_BCF9FC: FLdRfVar var_94
  loc_BCF9FF: FLdPr var_8C
  loc_BCFA02: from_stack_1 = clsliquante.NumeBole
  loc_BCFA07: FLdRfVar var_96
  loc_BCFA0A: FLdPr var_8C
  loc_BCFA0D: from_stack_1 = clsliquante.BimeLiqu
  loc_BCFA12: FLdRfVar var_9C
  loc_BCFA15: FLdPr var_8C
  loc_BCFA18: from_stack_1 = clsliquante.CodiCome
  loc_BCFA1D: FLdRfVar var_A4
  loc_BCFA20: FLdPr var_8C
  loc_BCFA23: from_stack_1 = clsliquante.TotaBole
  loc_BCFA28: LitStr "31/03/2024"
  loc_BCFA2B: FLdFPR8 var_A4
  loc_BCFA2E: CStrR8
  loc_BCFA30: FStStrNoPop var_B8
  loc_BCFA33: LitI2_Byte 2
  loc_BCFA35: CUI1I2
  loc_BCFA37: ILdRf var_9C
  loc_BCFA3A: CStrI4
  loc_BCFA3C: FStStrNoPop var_B4
  loc_BCFA3F: FLdUI1
  loc_BCFA43: CStrI2
  loc_BCFA45: FStStrNoPop var_B0
  loc_BCFA48: ILdRf var_94
  loc_BCFA4B: CStrI4
  loc_BCFA4D: FStStrNoPop var_AC
  loc_BCFA50: FLdI2 var_8E
  loc_BCFA53: CStrUI1
  loc_BCFA55: FStStrNoPop var_A8
  loc_BCFA58: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_BCFA5D: PopTmpLdAdStr var_C0
  loc_BCFA60: FLdPr Me
  loc_BCFA63: MemLdUI1 global_102
  loc_BCFA67: CI4UI1
  loc_BCFA68: FLdPr Me
  loc_BCFA6B: MemLdStr global_96
  loc_BCFA6E: FLdPr Me
  loc_BCFA71: MemLdStr global_92
  loc_BCFA74: Ary1LdPr
  loc_BCFA75: MemLdStr global_112
  loc_BCFA78: Ary1LdPr
  loc_BCFA79: MemLdRfVar from_stack_1.global_20
  loc_BCFA7C: StAryMove
  loc_BCFA7E: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BCFA8B: FLdPr Me
  loc_BCFA8E: MemLdRfVar from_stack_1.global_88
  loc_BCFA91: NewIfNullAd
  loc_BCFA94: FStAd var_C4 
  loc_BCFA98: LitStr "SELECT CAST(sum(if(CodiSubr <> 999,ImpoLade,0)) AS DOUBLE(10,2)) as ImpoLian,"
  loc_BCFA9B: LitStr " CAST(sum(if(CodiSubr <> 999,DecaLade+ExceLade,0)) AS DOUBLE(10,2)) as DescLian,"
  loc_BCFA9E: ConcatStr
  loc_BCFA9F: FStStrNoPop var_A8
  loc_BCFAA2: LitStr " CAST(SUM(IF(CodiSubr = 999,ImpoLade-DecaLade,0)) AS DOUBLE(10,2)) AS CEmision"
  loc_BCFAA5: ConcatStr
  loc_BCFAA6: FStStrNoPop var_AC
  loc_BCFAA9: LitStr " FROM liandeta"
  loc_BCFAAC: ConcatStr
  loc_BCFAAD: FStStrNoPop var_B0
  loc_BCFAB0: LitStr " WHERE PeriLiqu = "
  loc_BCFAB3: ConcatStr
  loc_BCFAB4: FStStrNoPop var_B4
  loc_BCFAB7: FLdRfVar var_8E
  loc_BCFABA: FLdPr Me
  loc_BCFABD: MemLdRfVar from_stack_1.global_80
  loc_BCFAC0: NewIfNullPr clsliquidacion
  loc_BCFAC3: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BCFAC8: FLdI2 var_8E
  loc_BCFACB: CStrUI1
  loc_BCFACD: FStStrNoPop var_B8
  loc_BCFAD0: ConcatStr
  loc_BCFAD1: FStStrNoPop var_C8
  loc_BCFAD4: LitStr " AND CodiTili = "
  loc_BCFAD7: ConcatStr
  loc_BCFAD8: FStStrNoPop var_CC
  loc_BCFADB: FLdRfVar var_96
  loc_BCFADE: FLdPr Me
  loc_BCFAE1: MemLdRfVar from_stack_1.global_80
  loc_BCFAE4: NewIfNullPr clsliquidacion
  loc_BCFAE7: from_stack_1 = clsliquidacion.CodiTili
  loc_BCFAEC: FLdUI1
  loc_BCFAF0: CStrI2
  loc_BCFAF2: FStStrNoPop var_D0
  loc_BCFAF5: ConcatStr
  loc_BCFAF6: FStStrNoPop var_D4
  loc_BCFAF9: LitStr " AND NumeLiqu = "
  loc_BCFAFC: ConcatStr
  loc_BCFAFD: FStStrNoPop var_DC
  loc_BCFB00: FLdRfVar var_D6
  loc_BCFB03: FLdPr Me
  loc_BCFB06: MemLdRfVar from_stack_1.global_80
  loc_BCFB09: NewIfNullPr clsliquidacion
  loc_BCFB0C: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BCFB11: FLdI2 var_D6
  loc_BCFB14: CStrUI1
  loc_BCFB16: FStStrNoPop var_E0
  loc_BCFB19: ConcatStr
  loc_BCFB1A: FStStrNoPop var_E4
  loc_BCFB1D: LitStr " AND TipoVenc = 2 AND CodiCome = "
  loc_BCFB20: ConcatStr
  loc_BCFB21: FStStrNoPop var_E8
  loc_BCFB24: FLdRfVar var_94
  loc_BCFB27: FLdPr Me
  loc_BCFB2A: MemLdRfVar from_stack_1.global_84
  loc_BCFB2D: NewIfNullPr clsliquante
  loc_BCFB30: from_stack_1 = clsliquante.CodiCome
  loc_BCFB35: ILdRf var_94
  loc_BCFB38: CStrI4
  loc_BCFB3A: FStStrNoPop var_EC
  loc_BCFB3D: ConcatStr
  loc_BCFB3E: FStStrNoPop var_F0
  loc_BCFB41: FLdPr var_C4
  loc_BCFB44: Call clsliquante.RedefineRS(from_stack_1v)
  loc_BCFB49: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_BCFB6A: FLdRfVar var_94
  loc_BCFB6D: FLdPr var_C4
  loc_BCFB70: from_stack_1 = clsliquante.RecordCount
  loc_BCFB75: ILdRf var_94
  loc_BCFB78: LitI4 0
  loc_BCFB7D: GtI4
  loc_BCFB7E: BranchF loc_BCFC67
  loc_BCFB81: FLdPr var_C4
  loc_BCFB84: Call clsliquante.MoveFirst()
  loc_BCFB89: FLdRfVar var_A4
  loc_BCFB8C: FLdPr var_C4
  loc_BCFB8F: from_stack_1 = clsliquante.ImpoLian
  loc_BCFB94: LitI2_Byte 0
  loc_BCFB96: LitVar_Missing var_128
  loc_BCFB99: LitI2_Byte &HFF
  loc_BCFB9B: FLdFPR8 var_A4
  loc_BCFB9E: CVarR8
  loc_BCFBA2: PopAdLdVar
  loc_BCFBA3: FLdPr Me
  loc_BCFBA6: MemLdUI1 global_102
  loc_BCFBAA: CI4UI1
  loc_BCFBAB: FLdPr Me
  loc_BCFBAE: MemLdStr global_96
  loc_BCFBB1: FLdPr Me
  loc_BCFBB4: MemLdStr global_92
  loc_BCFBB7: AryLock
  loc_BCFBBA: Ary1LdPr
  loc_BCFBBB: MemLdStr global_112
  loc_BCFBBE: AryLock
  loc_BCFBC1: Ary1LdPr
  loc_BCFBC2: MemLdRfVar from_stack_1.global_28
  loc_BCFBC5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFBCA: AryUnlock
  loc_BCFBCD: AryUnlock
  loc_BCFBD0: FFree1Var var_128 = ""
  loc_BCFBD3: FLdRfVar var_A4
  loc_BCFBD6: FLdPr var_C4
  loc_BCFBD9: from_stack_1 = clsliquante.DescLian
  loc_BCFBDE: LitI2_Byte 0
  loc_BCFBE0: LitVar_Missing var_128
  loc_BCFBE3: LitI2_Byte &HFF
  loc_BCFBE5: FLdFPR8 var_A4
  loc_BCFBE8: CVarR8
  loc_BCFBEC: PopAdLdVar
  loc_BCFBED: FLdPr Me
  loc_BCFBF0: MemLdUI1 global_102
  loc_BCFBF4: CI4UI1
  loc_BCFBF5: FLdPr Me
  loc_BCFBF8: MemLdStr global_96
  loc_BCFBFB: FLdPr Me
  loc_BCFBFE: MemLdStr global_92
  loc_BCFC01: AryLock
  loc_BCFC04: Ary1LdPr
  loc_BCFC05: MemLdStr global_112
  loc_BCFC08: AryLock
  loc_BCFC0B: Ary1LdPr
  loc_BCFC0C: MemLdRfVar from_stack_1.global_32
  loc_BCFC0F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFC14: AryUnlock
  loc_BCFC17: AryUnlock
  loc_BCFC1A: FFree1Var var_128 = ""
  loc_BCFC1D: FLdRfVar var_128
  loc_BCFC20: FLdPr var_C4
  loc_BCFC23: from_stack_1 = clsliquante.CEmision
  loc_BCFC28: LitI2_Byte 0
  loc_BCFC2A: LitVar_Missing var_138
  loc_BCFC2D: LitI2_Byte &HFF
  loc_BCFC2F: FLdVar var_128
  loc_BCFC33: FLdPr Me
  loc_BCFC36: MemLdUI1 global_102
  loc_BCFC3A: CI4UI1
  loc_BCFC3B: FLdPr Me
  loc_BCFC3E: MemLdStr global_96
  loc_BCFC41: FLdPr Me
  loc_BCFC44: MemLdStr global_92
  loc_BCFC47: AryLock
  loc_BCFC4A: Ary1LdPr
  loc_BCFC4B: MemLdStr global_112
  loc_BCFC4E: AryLock
  loc_BCFC51: Ary1LdPr
  loc_BCFC52: MemLdRfVar from_stack_1.global_40
  loc_BCFC55: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFC5A: AryUnlock
  loc_BCFC5D: AryUnlock
  loc_BCFC60: FFreeVar var_128 = ""
  loc_BCFC67: LitNothing
  loc_BCFC69: FStAd var_C4 
  loc_BCFC6D: Branch loc_BCFE42
  loc_BCFC70: FLdPr Me
  loc_BCFC73: MemLdUI1 global_102
  loc_BCFC77: CI2UI1
  loc_BCFC79: LitI2_Byte 1
  loc_BCFC7B: AddI2
  loc_BCFC7C: CUI1I2
  loc_BCFC7E: FLdPr Me
  loc_BCFC81: MemStUI1
  loc_BCFC85: LitI4 0
  loc_BCFC8A: FLdPr Me
  loc_BCFC8D: MemLdUI1 global_102
  loc_BCFC91: CI4UI1
  loc_BCFC92: FLdPr Me
  loc_BCFC95: MemLdStr global_96
  loc_BCFC98: FLdPr Me
  loc_BCFC9B: MemLdStr global_92
  loc_BCFC9E: Ary1LdPr
  loc_BCFC9F: MemLdRfVar from_stack_1.global_112
  loc_BCFCA2: RedimPreserve
  loc_BCFCAC: LitI2_Byte &HFF
  loc_BCFCAE: FLdPr Me
  loc_BCFCB1: MemLdUI1 global_102
  loc_BCFCB5: CI4UI1
  loc_BCFCB6: FLdPr Me
  loc_BCFCB9: MemLdStr global_96
  loc_BCFCBC: FLdPr Me
  loc_BCFCBF: MemLdStr global_92
  loc_BCFCC2: Ary1LdPr
  loc_BCFCC3: MemLdStr global_112
  loc_BCFCC6: Ary1LdPr
  loc_BCFCC7: MemStI2 global_0
  loc_BCFCCA: FLdRfVar var_8E
  loc_BCFCCD: FLdPr var_8C
  loc_BCFCD0: from_stack_1 = clsliquante.PeriBole
  loc_BCFCD5: FLdRfVar var_94
  loc_BCFCD8: FLdPr var_8C
  loc_BCFCDB: from_stack_1 = clsliquante.NumeBole
  loc_BCFCE0: FLdRfVar var_96
  loc_BCFCE3: FLdPr var_8C
  loc_BCFCE6: from_stack_1 = clsliquante.BimeLiqu
  loc_BCFCEB: FLdRfVar var_9C
  loc_BCFCEE: FLdPr var_8C
  loc_BCFCF1: from_stack_1 = clsliquante.CodiCome
  loc_BCFCF6: FLdRfVar var_A4
  loc_BCFCF9: FLdPr var_8C
  loc_BCFCFC: from_stack_1 = clsliquante.TotaBole
  loc_BCFD01: LitStr "31/12/2024"
  loc_BCFD04: FLdFPR8 var_A4
  loc_BCFD07: CStrR8
  loc_BCFD09: FStStrNoPop var_B8
  loc_BCFD0C: LitI2_Byte 2
  loc_BCFD0E: CUI1I2
  loc_BCFD10: ILdRf var_9C
  loc_BCFD13: CStrI4
  loc_BCFD15: FStStrNoPop var_B4
  loc_BCFD18: FLdUI1
  loc_BCFD1C: CStrI2
  loc_BCFD1E: FStStrNoPop var_B0
  loc_BCFD21: ILdRf var_94
  loc_BCFD24: CStrI4
  loc_BCFD26: FStStrNoPop var_AC
  loc_BCFD29: FLdI2 var_8E
  loc_BCFD2C: CStrUI1
  loc_BCFD2E: FStStrNoPop var_A8
  loc_BCFD31: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_BCFD36: PopTmpLdAdStr var_C0
  loc_BCFD39: FLdPr Me
  loc_BCFD3C: MemLdUI1 global_102
  loc_BCFD40: CI4UI1
  loc_BCFD41: FLdPr Me
  loc_BCFD44: MemLdStr global_96
  loc_BCFD47: FLdPr Me
  loc_BCFD4A: MemLdStr global_92
  loc_BCFD4D: Ary1LdPr
  loc_BCFD4E: MemLdStr global_112
  loc_BCFD51: Ary1LdPr
  loc_BCFD52: MemLdRfVar from_stack_1.global_20
  loc_BCFD55: StAryMove
  loc_BCFD57: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BCFD64: FLdRfVar var_A4
  loc_BCFD67: FLdPr var_8C
  loc_BCFD6A: from_stack_1 = clsliquante.ImpoLian
  loc_BCFD6F: LitI2_Byte 0
  loc_BCFD71: LitVar_Missing var_128
  loc_BCFD74: LitI2_Byte &HFF
  loc_BCFD76: FLdFPR8 var_A4
  loc_BCFD79: CVarR8
  loc_BCFD7D: PopAdLdVar
  loc_BCFD7E: FLdPr Me
  loc_BCFD81: MemLdUI1 global_102
  loc_BCFD85: CI4UI1
  loc_BCFD86: FLdPr Me
  loc_BCFD89: MemLdStr global_96
  loc_BCFD8C: FLdPr Me
  loc_BCFD8F: MemLdStr global_92
  loc_BCFD92: AryLock
  loc_BCFD95: Ary1LdPr
  loc_BCFD96: MemLdStr global_112
  loc_BCFD99: AryLock
  loc_BCFD9C: Ary1LdPr
  loc_BCFD9D: MemLdRfVar from_stack_1.global_28
  loc_BCFDA0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFDA5: AryUnlock
  loc_BCFDA8: AryUnlock
  loc_BCFDAB: FFree1Var var_128 = ""
  loc_BCFDAE: FLdRfVar var_A4
  loc_BCFDB1: FLdPr var_8C
  loc_BCFDB4: from_stack_1 = clsliquante.DescLian
  loc_BCFDB9: LitI2_Byte 0
  loc_BCFDBB: LitVar_Missing var_128
  loc_BCFDBE: LitI2_Byte &HFF
  loc_BCFDC0: FLdFPR8 var_A4
  loc_BCFDC3: CVarR8
  loc_BCFDC7: PopAdLdVar
  loc_BCFDC8: FLdPr Me
  loc_BCFDCB: MemLdUI1 global_102
  loc_BCFDCF: CI4UI1
  loc_BCFDD0: FLdPr Me
  loc_BCFDD3: MemLdStr global_96
  loc_BCFDD6: FLdPr Me
  loc_BCFDD9: MemLdStr global_92
  loc_BCFDDC: AryLock
  loc_BCFDDF: Ary1LdPr
  loc_BCFDE0: MemLdStr global_112
  loc_BCFDE3: AryLock
  loc_BCFDE6: Ary1LdPr
  loc_BCFDE7: MemLdRfVar from_stack_1.global_32
  loc_BCFDEA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFDEF: AryUnlock
  loc_BCFDF2: AryUnlock
  loc_BCFDF5: FFree1Var var_128 = ""
  loc_BCFDF8: FLdRfVar var_128
  loc_BCFDFB: FLdPr var_8C
  loc_BCFDFE: from_stack_1 = clsliquante.CEmision
  loc_BCFE03: LitI2_Byte 0
  loc_BCFE05: LitVar_Missing var_138
  loc_BCFE08: LitI2_Byte &HFF
  loc_BCFE0A: FLdVar var_128
  loc_BCFE0E: FLdPr Me
  loc_BCFE11: MemLdUI1 global_102
  loc_BCFE15: CI4UI1
  loc_BCFE16: FLdPr Me
  loc_BCFE19: MemLdStr global_96
  loc_BCFE1C: FLdPr Me
  loc_BCFE1F: MemLdStr global_92
  loc_BCFE22: AryLock
  loc_BCFE25: Ary1LdPr
  loc_BCFE26: MemLdStr global_112
  loc_BCFE29: AryLock
  loc_BCFE2C: Ary1LdPr
  loc_BCFE2D: MemLdRfVar from_stack_1.global_40
  loc_BCFE30: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFE35: AryUnlock
  loc_BCFE38: AryUnlock
  loc_BCFE3B: FFreeVar var_128 = ""
  loc_BCFE42: FLdRfVar var_8E
  loc_BCFE45: FLdPr var_8C
  loc_BCFE48: from_stack_1 = clsliquante.BimeLiqu
  loc_BCFE4D: LitI2_Byte 0
  loc_BCFE4F: LitVar_Missing var_128
  loc_BCFE52: LitI2_Byte 0
  loc_BCFE54: FLdUI1
  loc_BCFE58: CVarUI1
  loc_BCFE5C: PopAdLdVar
  loc_BCFE5D: FLdPr Me
  loc_BCFE60: MemLdUI1 global_102
  loc_BCFE64: CI4UI1
  loc_BCFE65: FLdPr Me
  loc_BCFE68: MemLdStr global_96
  loc_BCFE6B: FLdPr Me
  loc_BCFE6E: MemLdStr global_92
  loc_BCFE71: AryLock
  loc_BCFE74: Ary1LdPr
  loc_BCFE75: MemLdStr global_112
  loc_BCFE78: AryLock
  loc_BCFE7B: Ary1LdPr
  loc_BCFE7C: MemLdRfVar from_stack_1.global_4
  loc_BCFE7F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFE84: AryUnlock
  loc_BCFE87: AryUnlock
  loc_BCFE8A: FFree1Var var_128 = ""
  loc_BCFE8D: FLdRfVar var_8E
  loc_BCFE90: FLdPr var_8C
  loc_BCFE93: from_stack_1 = clsliquante.PeriBole
  loc_BCFE98: LitI2_Byte 0
  loc_BCFE9A: LitVar_Missing var_128
  loc_BCFE9D: LitI2_Byte 0
  loc_BCFE9F: FLdI2 var_8E
  loc_BCFEA2: CVarI2 var_108
  loc_BCFEA5: PopAdLdVar
  loc_BCFEA6: FLdPr Me
  loc_BCFEA9: MemLdUI1 global_102
  loc_BCFEAD: CI4UI1
  loc_BCFEAE: FLdPr Me
  loc_BCFEB1: MemLdStr global_96
  loc_BCFEB4: FLdPr Me
  loc_BCFEB7: MemLdStr global_92
  loc_BCFEBA: AryLock
  loc_BCFEBD: Ary1LdPr
  loc_BCFEBE: MemLdStr global_112
  loc_BCFEC1: AryLock
  loc_BCFEC4: Ary1LdPr
  loc_BCFEC5: MemLdRfVar from_stack_1.global_8
  loc_BCFEC8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFECD: AryUnlock
  loc_BCFED0: AryUnlock
  loc_BCFED3: FFree1Var var_128 = ""
  loc_BCFED6: FLdRfVar var_94
  loc_BCFED9: FLdPr var_8C
  loc_BCFEDC: from_stack_1 = clsliquante.NumeBole
  loc_BCFEE1: LitI2_Byte 0
  loc_BCFEE3: LitVar_Missing var_128
  loc_BCFEE6: LitI2_Byte 0
  loc_BCFEE8: ILdRf var_94
  loc_BCFEEB: CVarI4
  loc_BCFEEF: PopAdLdVar
  loc_BCFEF0: FLdPr Me
  loc_BCFEF3: MemLdUI1 global_102
  loc_BCFEF7: CI4UI1
  loc_BCFEF8: FLdPr Me
  loc_BCFEFB: MemLdStr global_96
  loc_BCFEFE: FLdPr Me
  loc_BCFF01: MemLdStr global_92
  loc_BCFF04: AryLock
  loc_BCFF07: Ary1LdPr
  loc_BCFF08: MemLdStr global_112
  loc_BCFF0B: AryLock
  loc_BCFF0E: Ary1LdPr
  loc_BCFF0F: MemLdRfVar from_stack_1.global_12
  loc_BCFF12: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFF17: AryUnlock
  loc_BCFF1A: AryUnlock
  loc_BCFF1D: FFree1Var var_128 = ""
  loc_BCFF20: FLdRfVar var_8E
  loc_BCFF23: FLdPr var_8C
  loc_BCFF26: from_stack_1 = clsliquante.TipoVenc
  loc_BCFF2B: LitI2_Byte 0
  loc_BCFF2D: LitVar_Missing var_128
  loc_BCFF30: LitI2_Byte 0
  loc_BCFF32: FLdUI1
  loc_BCFF36: CVarUI1
  loc_BCFF3A: PopAdLdVar
  loc_BCFF3B: FLdPr Me
  loc_BCFF3E: MemLdUI1 global_102
  loc_BCFF42: CI4UI1
  loc_BCFF43: FLdPr Me
  loc_BCFF46: MemLdStr global_96
  loc_BCFF49: FLdPr Me
  loc_BCFF4C: MemLdStr global_92
  loc_BCFF4F: AryLock
  loc_BCFF52: Ary1LdPr
  loc_BCFF53: MemLdStr global_112
  loc_BCFF56: AryLock
  loc_BCFF59: Ary1LdPr
  loc_BCFF5A: MemLdRfVar from_stack_1.global_24
  loc_BCFF5D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFF62: AryUnlock
  loc_BCFF65: AryUnlock
  loc_BCFF68: FFree1Var var_128 = ""
  loc_BCFF6B: FLdRfVar var_A8
  loc_BCFF6E: FLdPr var_8C
  loc_BCFF71: from_stack_1 = clsliquante.FeveLian
  loc_BCFF76: LitI2_Byte 0
  loc_BCFF78: LitVar_Missing var_138
  loc_BCFF7B: LitI2_Byte 0
  loc_BCFF7D: FLdZeroAd var_A8
  loc_BCFF80: CVarStr var_128
  loc_BCFF83: PopAdLdVar
  loc_BCFF84: FLdPr Me
  loc_BCFF87: MemLdUI1 global_102
  loc_BCFF8B: CI4UI1
  loc_BCFF8C: FLdPr Me
  loc_BCFF8F: MemLdStr global_96
  loc_BCFF92: FLdPr Me
  loc_BCFF95: MemLdStr global_92
  loc_BCFF98: AryLock
  loc_BCFF9B: Ary1LdPr
  loc_BCFF9C: MemLdStr global_112
  loc_BCFF9F: AryLock
  loc_BCFFA2: Ary1LdPr
  loc_BCFFA3: MemLdRfVar from_stack_1.global_16
  loc_BCFFA6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFFAB: AryUnlock
  loc_BCFFAE: AryUnlock
  loc_BCFFB1: FFreeVar var_128 = ""
  loc_BCFFB8: FLdRfVar var_128
  loc_BCFFBB: FLdPr var_8C
  loc_BCFFBE: from_stack_1 = clsliquante.RecaBole
  loc_BCFFC3: LitI2_Byte 0
  loc_BCFFC5: LitVar_Missing var_138
  loc_BCFFC8: LitI2_Byte &HFF
  loc_BCFFCA: FLdVar var_128
  loc_BCFFCE: FLdPr Me
  loc_BCFFD1: MemLdUI1 global_102
  loc_BCFFD5: CI4UI1
  loc_BCFFD6: FLdPr Me
  loc_BCFFD9: MemLdStr global_96
  loc_BCFFDC: FLdPr Me
  loc_BCFFDF: MemLdStr global_92
  loc_BCFFE2: AryLock
  loc_BCFFE5: Ary1LdPr
  loc_BCFFE6: MemLdStr global_112
  loc_BCFFE9: AryLock
  loc_BCFFEC: Ary1LdPr
  loc_BCFFED: MemLdRfVar from_stack_1.global_36
  loc_BCFFF0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BCFFF5: AryUnlock
  loc_BCFFF8: AryUnlock
  loc_BCFFFB: FFreeVar var_128 = ""
  loc_BD0002: FLdRfVar var_A4
  loc_BD0005: FLdPr var_8C
  loc_BD0008: from_stack_1 = clsliquante.TotaBole
  loc_BD000D: LitI2_Byte 0
  loc_BD000F: LitVar_Missing var_128
  loc_BD0012: LitI2_Byte &HFF
  loc_BD0014: FLdFPR8 var_A4
  loc_BD0017: CVarR8
  loc_BD001B: PopAdLdVar
  loc_BD001C: FLdPr Me
  loc_BD001F: MemLdUI1 global_102
  loc_BD0023: CI4UI1
  loc_BD0024: FLdPr Me
  loc_BD0027: MemLdStr global_96
  loc_BD002A: FLdPr Me
  loc_BD002D: MemLdStr global_92
  loc_BD0030: AryLock
  loc_BD0033: Ary1LdPr
  loc_BD0034: MemLdStr global_112
  loc_BD0037: AryLock
  loc_BD003A: Ary1LdPr
  loc_BD003B: MemLdRfVar from_stack_1.global_44
  loc_BD003E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0043: AryUnlock
  loc_BD0046: AryUnlock
  loc_BD0049: FFree1Var var_128 = ""
  loc_BD004C: LitI2_Byte 1
  loc_BD004E: PopTmpLdAd2 var_8E
  loc_BD0051: FLdPr var_8C
  loc_BD0054: Call clsliquante.Move(from_stack_1v)
  loc_BD0059: FLdPr Me
  loc_BD005C: MemLdUI1 global_102
  loc_BD0060: CI2UI1
  loc_BD0062: LitI2_Byte 0
  loc_BD0064: EqI2
  loc_BD0065: BranchF loc_BD0074
  loc_BD0068: FLdI2 var_86
  loc_BD006B: CUI1I2
  loc_BD006D: FLdPr Me
  loc_BD0070: MemStUI1
  loc_BD0074: LitNothing
  loc_BD0076: FStAd var_8C 
  loc_BD007A: ExitProcHresult
End Function

Private Function Proc_320_23_C3674C() 'C3674C
  'Data Table: 4BFD94
  loc_C35B94: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C35B99: PopAdLdVar
  loc_C35B9A: FLdPr Me
  loc_C35B9D: MemLdRfVar from_stack_1.global_60
  loc_C35BA0: LdPrVar
  loc_C35BA2: LateMemCall
  loc_C35BA8: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C35BAD: PopAdLdVar
  loc_C35BAE: FLdPr Me
  loc_C35BB1: MemLdRfVar from_stack_1.global_60
  loc_C35BB4: LdPrVar
  loc_C35BB6: LateMemCall
  loc_C35BBC: LitVarStr var_94, "<head>"
  loc_C35BC1: PopAdLdVar
  loc_C35BC2: FLdPr Me
  loc_C35BC5: MemLdRfVar from_stack_1.global_60
  loc_C35BC8: LdPrVar
  loc_C35BCA: LateMemCall
  loc_C35BD0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C35BD5: PopAdLdVar
  loc_C35BD6: FLdPr Me
  loc_C35BD9: MemLdRfVar from_stack_1.global_60
  loc_C35BDC: LdPrVar
  loc_C35BDE: LateMemCall
  loc_C35BE4: LitStr "<title>"
  loc_C35BE7: FLdRfVar var_A8
  loc_C35BEA: FLdPr Me
  loc_C35BED:  = Me.Caption
  loc_C35BF2: ILdRf var_A8
  loc_C35BF5: ConcatStr
  loc_C35BF6: FStStrNoPop var_AC
  loc_C35BF9: LitStr "</title>"
  loc_C35BFC: ConcatStr
  loc_C35BFD: CVarStr var_BC
  loc_C35C00: PopAdLdVar
  loc_C35C01: FLdPr Me
  loc_C35C04: MemLdRfVar from_stack_1.global_60
  loc_C35C07: LdPrVar
  loc_C35C09: LateMemCall
  loc_C35C0F: FFreeStr var_A8 = ""
  loc_C35C16: FFree1Var var_BC = ""
  loc_C35C19: LitVarStr var_94, "<style type=""text/css"">"
  loc_C35C1E: PopAdLdVar
  loc_C35C1F: FLdPr Me
  loc_C35C22: MemLdRfVar from_stack_1.global_60
  loc_C35C25: LdPrVar
  loc_C35C27: LateMemCall
  loc_C35C2D: LitVarStr var_94, "<!--"
  loc_C35C32: PopAdLdVar
  loc_C35C33: FLdPr Me
  loc_C35C36: MemLdRfVar from_stack_1.global_60
  loc_C35C39: LdPrVar
  loc_C35C3B: LateMemCall
  loc_C35C41: LitVarStr var_94, ".Encabezado {"
  loc_C35C46: PopAdLdVar
  loc_C35C47: FLdPr Me
  loc_C35C4A: MemLdRfVar from_stack_1.global_60
  loc_C35C4D: LdPrVar
  loc_C35C4F: LateMemCall
  loc_C35C55: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C35C5A: PopAdLdVar
  loc_C35C5B: FLdPr Me
  loc_C35C5E: MemLdRfVar from_stack_1.global_60
  loc_C35C61: LdPrVar
  loc_C35C63: LateMemCall
  loc_C35C69: LitVarStr var_94, " font-size: 10px;"
  loc_C35C6E: PopAdLdVar
  loc_C35C6F: FLdPr Me
  loc_C35C72: MemLdRfVar from_stack_1.global_60
  loc_C35C75: LdPrVar
  loc_C35C77: LateMemCall
  loc_C35C7D: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C35C82: PopAdLdVar
  loc_C35C83: FLdPr Me
  loc_C35C86: MemLdRfVar from_stack_1.global_60
  loc_C35C89: LdPrVar
  loc_C35C8B: LateMemCall
  loc_C35C91: LitVarStr var_94, "}"
  loc_C35C96: PopAdLdVar
  loc_C35C97: FLdPr Me
  loc_C35C9A: MemLdRfVar from_stack_1.global_60
  loc_C35C9D: LdPrVar
  loc_C35C9F: LateMemCall
  loc_C35CA5: LitVarStr var_94, ".EncabezadoRubros {"
  loc_C35CAA: PopAdLdVar
  loc_C35CAB: FLdPr Me
  loc_C35CAE: MemLdRfVar from_stack_1.global_60
  loc_C35CB1: LdPrVar
  loc_C35CB3: LateMemCall
  loc_C35CB9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C35CBE: PopAdLdVar
  loc_C35CBF: FLdPr Me
  loc_C35CC2: MemLdRfVar from_stack_1.global_60
  loc_C35CC5: LdPrVar
  loc_C35CC7: LateMemCall
  loc_C35CCD: LitVarStr var_94, " font-size: 9px;"
  loc_C35CD2: PopAdLdVar
  loc_C35CD3: FLdPr Me
  loc_C35CD6: MemLdRfVar from_stack_1.global_60
  loc_C35CD9: LdPrVar
  loc_C35CDB: LateMemCall
  loc_C35CE1: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C35CE6: PopAdLdVar
  loc_C35CE7: FLdPr Me
  loc_C35CEA: MemLdRfVar from_stack_1.global_60
  loc_C35CED: LdPrVar
  loc_C35CEF: LateMemCall
  loc_C35CF5: LitVarStr var_94, "}"
  loc_C35CFA: PopAdLdVar
  loc_C35CFB: FLdPr Me
  loc_C35CFE: MemLdRfVar from_stack_1.global_60
  loc_C35D01: LdPrVar
  loc_C35D03: LateMemCall
  loc_C35D09: LitVarStr var_94, ".Normal {"
  loc_C35D0E: PopAdLdVar
  loc_C35D0F: FLdPr Me
  loc_C35D12: MemLdRfVar from_stack_1.global_60
  loc_C35D15: LdPrVar
  loc_C35D17: LateMemCall
  loc_C35D1D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C35D22: PopAdLdVar
  loc_C35D23: FLdPr Me
  loc_C35D26: MemLdRfVar from_stack_1.global_60
  loc_C35D29: LdPrVar
  loc_C35D2B: LateMemCall
  loc_C35D31: LitVarStr var_94, " font-size: 10px;"
  loc_C35D36: PopAdLdVar
  loc_C35D37: FLdPr Me
  loc_C35D3A: MemLdRfVar from_stack_1.global_60
  loc_C35D3D: LdPrVar
  loc_C35D3F: LateMemCall
  loc_C35D45: LitVarStr var_94, " vertical-align: top;"
  loc_C35D4A: PopAdLdVar
  loc_C35D4B: FLdPr Me
  loc_C35D4E: MemLdRfVar from_stack_1.global_60
  loc_C35D51: LdPrVar
  loc_C35D53: LateMemCall
  loc_C35D59: LitVarStr var_94, "}"
  loc_C35D5E: PopAdLdVar
  loc_C35D5F: FLdPr Me
  loc_C35D62: MemLdRfVar from_stack_1.global_60
  loc_C35D65: LdPrVar
  loc_C35D67: LateMemCall
  loc_C35D6D: LitVarStr var_94, ".Rubros {"
  loc_C35D72: PopAdLdVar
  loc_C35D73: FLdPr Me
  loc_C35D76: MemLdRfVar from_stack_1.global_60
  loc_C35D79: LdPrVar
  loc_C35D7B: LateMemCall
  loc_C35D81: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C35D86: PopAdLdVar
  loc_C35D87: FLdPr Me
  loc_C35D8A: MemLdRfVar from_stack_1.global_60
  loc_C35D8D: LdPrVar
  loc_C35D8F: LateMemCall
  loc_C35D95: LitVarStr var_94, " font-size: 9px;"
  loc_C35D9A: PopAdLdVar
  loc_C35D9B: FLdPr Me
  loc_C35D9E: MemLdRfVar from_stack_1.global_60
  loc_C35DA1: LdPrVar
  loc_C35DA3: LateMemCall
  loc_C35DA9: LitVarStr var_94, " vertical-align: top;"
  loc_C35DAE: PopAdLdVar
  loc_C35DAF: FLdPr Me
  loc_C35DB2: MemLdRfVar from_stack_1.global_60
  loc_C35DB5: LdPrVar
  loc_C35DB7: LateMemCall
  loc_C35DBD: LitVarStr var_94, " padding-left: 4px;"
  loc_C35DC2: PopAdLdVar
  loc_C35DC3: FLdPr Me
  loc_C35DC6: MemLdRfVar from_stack_1.global_60
  loc_C35DC9: LdPrVar
  loc_C35DCB: LateMemCall
  loc_C35DD1: LitVarStr var_94, " padding-right: 4px;"
  loc_C35DD6: PopAdLdVar
  loc_C35DD7: FLdPr Me
  loc_C35DDA: MemLdRfVar from_stack_1.global_60
  loc_C35DDD: LdPrVar
  loc_C35DDF: LateMemCall
  loc_C35DE5: LitVarStr var_94, "}"
  loc_C35DEA: PopAdLdVar
  loc_C35DEB: FLdPr Me
  loc_C35DEE: MemLdRfVar from_stack_1.global_60
  loc_C35DF1: LdPrVar
  loc_C35DF3: LateMemCall
  loc_C35DF9: LitVarStr var_94, ".DomiPostal {"
  loc_C35DFE: PopAdLdVar
  loc_C35DFF: FLdPr Me
  loc_C35E02: MemLdRfVar from_stack_1.global_60
  loc_C35E05: LdPrVar
  loc_C35E07: LateMemCall
  loc_C35E0D: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C35E12: PopAdLdVar
  loc_C35E13: FLdPr Me
  loc_C35E16: MemLdRfVar from_stack_1.global_60
  loc_C35E19: LdPrVar
  loc_C35E1B: LateMemCall
  loc_C35E21: LitVarStr var_94, "  font-size: 14px;"
  loc_C35E26: PopAdLdVar
  loc_C35E27: FLdPr Me
  loc_C35E2A: MemLdRfVar from_stack_1.global_60
  loc_C35E2D: LdPrVar
  loc_C35E2F: LateMemCall
  loc_C35E35: LitVarStr var_94, "  vertical-align: top;"
  loc_C35E3A: PopAdLdVar
  loc_C35E3B: FLdPr Me
  loc_C35E3E: MemLdRfVar from_stack_1.global_60
  loc_C35E41: LdPrVar
  loc_C35E43: LateMemCall
  loc_C35E49: LitVarStr var_94, "  font-weight: bold;"
  loc_C35E4E: PopAdLdVar
  loc_C35E4F: FLdPr Me
  loc_C35E52: MemLdRfVar from_stack_1.global_60
  loc_C35E55: LdPrVar
  loc_C35E57: LateMemCall
  loc_C35E5D: LitVarStr var_94, "  padding-top: 1px;"
  loc_C35E62: PopAdLdVar
  loc_C35E63: FLdPr Me
  loc_C35E66: MemLdRfVar from_stack_1.global_60
  loc_C35E69: LdPrVar
  loc_C35E6B: LateMemCall
  loc_C35E71: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C35E76: PopAdLdVar
  loc_C35E77: FLdPr Me
  loc_C35E7A: MemLdRfVar from_stack_1.global_60
  loc_C35E7D: LdPrVar
  loc_C35E7F: LateMemCall
  loc_C35E85: LitVarStr var_94, "  padding-left: 5px;"
  loc_C35E8A: PopAdLdVar
  loc_C35E8B: FLdPr Me
  loc_C35E8E: MemLdRfVar from_stack_1.global_60
  loc_C35E91: LdPrVar
  loc_C35E93: LateMemCall
  loc_C35E99: LitVarStr var_94, "  padding-right: 5px;"
  loc_C35E9E: PopAdLdVar
  loc_C35E9F: FLdPr Me
  loc_C35EA2: MemLdRfVar from_stack_1.global_60
  loc_C35EA5: LdPrVar
  loc_C35EA7: LateMemCall
  loc_C35EAD: LitVarStr var_94, "}"
  loc_C35EB2: PopAdLdVar
  loc_C35EB3: FLdPr Me
  loc_C35EB6: MemLdRfVar from_stack_1.global_60
  loc_C35EB9: LdPrVar
  loc_C35EBB: LateMemCall
  loc_C35EC1: LitVarStr var_94, ".DomiReal {"
  loc_C35EC6: PopAdLdVar
  loc_C35EC7: FLdPr Me
  loc_C35ECA: MemLdRfVar from_stack_1.global_60
  loc_C35ECD: LdPrVar
  loc_C35ECF: LateMemCall
  loc_C35ED5: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C35EDA: PopAdLdVar
  loc_C35EDB: FLdPr Me
  loc_C35EDE: MemLdRfVar from_stack_1.global_60
  loc_C35EE1: LdPrVar
  loc_C35EE3: LateMemCall
  loc_C35EE9: LitVarStr var_94, "  font-size: 14px;"
  loc_C35EEE: PopAdLdVar
  loc_C35EEF: FLdPr Me
  loc_C35EF2: MemLdRfVar from_stack_1.global_60
  loc_C35EF5: LdPrVar
  loc_C35EF7: LateMemCall
  loc_C35EFD: LitVarStr var_94, "  vertical-align: top;"
  loc_C35F02: PopAdLdVar
  loc_C35F03: FLdPr Me
  loc_C35F06: MemLdRfVar from_stack_1.global_60
  loc_C35F09: LdPrVar
  loc_C35F0B: LateMemCall
  loc_C35F11: LitVarStr var_94, "  padding-top: 1px;"
  loc_C35F16: PopAdLdVar
  loc_C35F17: FLdPr Me
  loc_C35F1A: MemLdRfVar from_stack_1.global_60
  loc_C35F1D: LdPrVar
  loc_C35F1F: LateMemCall
  loc_C35F25: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C35F2A: PopAdLdVar
  loc_C35F2B: FLdPr Me
  loc_C35F2E: MemLdRfVar from_stack_1.global_60
  loc_C35F31: LdPrVar
  loc_C35F33: LateMemCall
  loc_C35F39: LitVarStr var_94, "  padding-left: 5px;"
  loc_C35F3E: PopAdLdVar
  loc_C35F3F: FLdPr Me
  loc_C35F42: MemLdRfVar from_stack_1.global_60
  loc_C35F45: LdPrVar
  loc_C35F47: LateMemCall
  loc_C35F4D: LitVarStr var_94, "  padding-right: 5px;"
  loc_C35F52: PopAdLdVar
  loc_C35F53: FLdPr Me
  loc_C35F56: MemLdRfVar from_stack_1.global_60
  loc_C35F59: LdPrVar
  loc_C35F5B: LateMemCall
  loc_C35F61: LitVarStr var_94, "}"
  loc_C35F66: PopAdLdVar
  loc_C35F67: FLdPr Me
  loc_C35F6A: MemLdRfVar from_stack_1.global_60
  loc_C35F6D: LdPrVar
  loc_C35F6F: LateMemCall
  loc_C35F75: LitVarStr var_94, ".MargIzq {"
  loc_C35F7A: PopAdLdVar
  loc_C35F7B: FLdPr Me
  loc_C35F7E: MemLdRfVar from_stack_1.global_60
  loc_C35F81: LdPrVar
  loc_C35F83: LateMemCall
  loc_C35F89: LitVarStr var_94, "  padding-left:5px"
  loc_C35F8E: PopAdLdVar
  loc_C35F8F: FLdPr Me
  loc_C35F92: MemLdRfVar from_stack_1.global_60
  loc_C35F95: LdPrVar
  loc_C35F97: LateMemCall
  loc_C35F9D: LitVarStr var_94, "}"
  loc_C35FA2: PopAdLdVar
  loc_C35FA3: FLdPr Me
  loc_C35FA6: MemLdRfVar from_stack_1.global_60
  loc_C35FA9: LdPrVar
  loc_C35FAB: LateMemCall
  loc_C35FB1: LitVarStr var_94, ".MargDer {"
  loc_C35FB6: PopAdLdVar
  loc_C35FB7: FLdPr Me
  loc_C35FBA: MemLdRfVar from_stack_1.global_60
  loc_C35FBD: LdPrVar
  loc_C35FBF: LateMemCall
  loc_C35FC5: LitVarStr var_94, "  padding-right:5px"
  loc_C35FCA: PopAdLdVar
  loc_C35FCB: FLdPr Me
  loc_C35FCE: MemLdRfVar from_stack_1.global_60
  loc_C35FD1: LdPrVar
  loc_C35FD3: LateMemCall
  loc_C35FD9: LitVarStr var_94, "}"
  loc_C35FDE: PopAdLdVar
  loc_C35FDF: FLdPr Me
  loc_C35FE2: MemLdRfVar from_stack_1.global_60
  loc_C35FE5: LdPrVar
  loc_C35FE7: LateMemCall
  loc_C35FED: LitVarStr var_94, ".NormalAbajo {"
  loc_C35FF2: PopAdLdVar
  loc_C35FF3: FLdPr Me
  loc_C35FF6: MemLdRfVar from_stack_1.global_60
  loc_C35FF9: LdPrVar
  loc_C35FFB: LateMemCall
  loc_C36001: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C36006: PopAdLdVar
  loc_C36007: FLdPr Me
  loc_C3600A: MemLdRfVar from_stack_1.global_60
  loc_C3600D: LdPrVar
  loc_C3600F: LateMemCall
  loc_C36015: LitVarStr var_94, " font-size: 11px;"
  loc_C3601A: PopAdLdVar
  loc_C3601B: FLdPr Me
  loc_C3601E: MemLdRfVar from_stack_1.global_60
  loc_C36021: LdPrVar
  loc_C36023: LateMemCall
  loc_C36029: LitVarStr var_94, " vertical-align:bottom;"
  loc_C3602E: PopAdLdVar
  loc_C3602F: FLdPr Me
  loc_C36032: MemLdRfVar from_stack_1.global_60
  loc_C36035: LdPrVar
  loc_C36037: LateMemCall
  loc_C3603D: LitVarStr var_94, "}"
  loc_C36042: PopAdLdVar
  loc_C36043: FLdPr Me
  loc_C36046: MemLdRfVar from_stack_1.global_60
  loc_C36049: LdPrVar
  loc_C3604B: LateMemCall
  loc_C36051: LitVarStr var_94, ".NormalDetalle {"
  loc_C36056: PopAdLdVar
  loc_C36057: FLdPr Me
  loc_C3605A: MemLdRfVar from_stack_1.global_60
  loc_C3605D: LdPrVar
  loc_C3605F: LateMemCall
  loc_C36065: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3606A: PopAdLdVar
  loc_C3606B: FLdPr Me
  loc_C3606E: MemLdRfVar from_stack_1.global_60
  loc_C36071: LdPrVar
  loc_C36073: LateMemCall
  loc_C36079: LitVarStr var_94, " font-size: 10px;"
  loc_C3607E: PopAdLdVar
  loc_C3607F: FLdPr Me
  loc_C36082: MemLdRfVar from_stack_1.global_60
  loc_C36085: LdPrVar
  loc_C36087: LateMemCall
  loc_C3608D: LitVarStr var_94, " vertical-align: top;"
  loc_C36092: PopAdLdVar
  loc_C36093: FLdPr Me
  loc_C36096: MemLdRfVar from_stack_1.global_60
  loc_C36099: LdPrVar
  loc_C3609B: LateMemCall
  loc_C360A1: LitVarStr var_94, "}"
  loc_C360A6: PopAdLdVar
  loc_C360A7: FLdPr Me
  loc_C360AA: MemLdRfVar from_stack_1.global_60
  loc_C360AD: LdPrVar
  loc_C360AF: LateMemCall
  loc_C360B5: LitVarStr var_94, ".NormalBloqueFin {"
  loc_C360BA: PopAdLdVar
  loc_C360BB: FLdPr Me
  loc_C360BE: MemLdRfVar from_stack_1.global_60
  loc_C360C1: LdPrVar
  loc_C360C3: LateMemCall
  loc_C360C9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C360CE: PopAdLdVar
  loc_C360CF: FLdPr Me
  loc_C360D2: MemLdRfVar from_stack_1.global_60
  loc_C360D5: LdPrVar
  loc_C360D7: LateMemCall
  loc_C360DD: LitVarStr var_94, " font-size: 10px;"
  loc_C360E2: PopAdLdVar
  loc_C360E3: FLdPr Me
  loc_C360E6: MemLdRfVar from_stack_1.global_60
  loc_C360E9: LdPrVar
  loc_C360EB: LateMemCall
  loc_C360F1: LitVarStr var_94, " vertical-align: top;"
  loc_C360F6: PopAdLdVar
  loc_C360F7: FLdPr Me
  loc_C360FA: MemLdRfVar from_stack_1.global_60
  loc_C360FD: LdPrVar
  loc_C360FF: LateMemCall
  loc_C36105: LitVarStr var_94, " padding-right: 1px;"
  loc_C3610A: PopAdLdVar
  loc_C3610B: FLdPr Me
  loc_C3610E: MemLdRfVar from_stack_1.global_60
  loc_C36111: LdPrVar
  loc_C36113: LateMemCall
  loc_C36119: LitVarStr var_94, "}"
  loc_C3611E: PopAdLdVar
  loc_C3611F: FLdPr Me
  loc_C36122: MemLdRfVar from_stack_1.global_60
  loc_C36125: LdPrVar
  loc_C36127: LateMemCall
  loc_C3612D: LitVarStr var_94, ".NormalBloqueFinGrande {"
  loc_C36132: PopAdLdVar
  loc_C36133: FLdPr Me
  loc_C36136: MemLdRfVar from_stack_1.global_60
  loc_C36139: LdPrVar
  loc_C3613B: LateMemCall
  loc_C36141: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C36146: PopAdLdVar
  loc_C36147: FLdPr Me
  loc_C3614A: MemLdRfVar from_stack_1.global_60
  loc_C3614D: LdPrVar
  loc_C3614F: LateMemCall
  loc_C36155: LitVarStr var_94, " font-size: 14px;"
  loc_C3615A: PopAdLdVar
  loc_C3615B: FLdPr Me
  loc_C3615E: MemLdRfVar from_stack_1.global_60
  loc_C36161: LdPrVar
  loc_C36163: LateMemCall
  loc_C36169: LitVarStr var_94, " vertical-align: top;"
  loc_C3616E: PopAdLdVar
  loc_C3616F: FLdPr Me
  loc_C36172: MemLdRfVar from_stack_1.global_60
  loc_C36175: LdPrVar
  loc_C36177: LateMemCall
  loc_C3617D: LitVarStr var_94, "}"
  loc_C36182: PopAdLdVar
  loc_C36183: FLdPr Me
  loc_C36186: MemLdRfVar from_stack_1.global_60
  loc_C36189: LdPrVar
  loc_C3618B: LateMemCall
  loc_C36191: LitVarStr var_94, ".NombreMunicipio {"
  loc_C36196: PopAdLdVar
  loc_C36197: FLdPr Me
  loc_C3619A: MemLdRfVar from_stack_1.global_60
  loc_C3619D: LdPrVar
  loc_C3619F: LateMemCall
  loc_C361A5: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C361AA: PopAdLdVar
  loc_C361AB: FLdPr Me
  loc_C361AE: MemLdRfVar from_stack_1.global_60
  loc_C361B1: LdPrVar
  loc_C361B3: LateMemCall
  loc_C361B9: LitVarStr var_94, " font-size: 14px;"
  loc_C361BE: PopAdLdVar
  loc_C361BF: FLdPr Me
  loc_C361C2: MemLdRfVar from_stack_1.global_60
  loc_C361C5: LdPrVar
  loc_C361C7: LateMemCall
  loc_C361CD: LitVarStr var_94, " font-weight: bold;"
  loc_C361D2: PopAdLdVar
  loc_C361D3: FLdPr Me
  loc_C361D6: MemLdRfVar from_stack_1.global_60
  loc_C361D9: LdPrVar
  loc_C361DB: LateMemCall
  loc_C361E1: LitVarStr var_94, "}"
  loc_C361E6: PopAdLdVar
  loc_C361E7: FLdPr Me
  loc_C361EA: MemLdRfVar from_stack_1.global_60
  loc_C361ED: LdPrVar
  loc_C361EF: LateMemCall
  loc_C361F5: LitVarStr var_94, ".DatosMunicipio {"
  loc_C361FA: PopAdLdVar
  loc_C361FB: FLdPr Me
  loc_C361FE: MemLdRfVar from_stack_1.global_60
  loc_C36201: LdPrVar
  loc_C36203: LateMemCall
  loc_C36209: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C3620E: PopAdLdVar
  loc_C3620F: FLdPr Me
  loc_C36212: MemLdRfVar from_stack_1.global_60
  loc_C36215: LdPrVar
  loc_C36217: LateMemCall
  loc_C3621D: LitVarStr var_94, " font-size: 9px;"
  loc_C36222: PopAdLdVar
  loc_C36223: FLdPr Me
  loc_C36226: MemLdRfVar from_stack_1.global_60
  loc_C36229: LdPrVar
  loc_C3622B: LateMemCall
  loc_C36231: LitVarStr var_94, "}"
  loc_C36236: PopAdLdVar
  loc_C36237: FLdPr Me
  loc_C3623A: MemLdRfVar from_stack_1.global_60
  loc_C3623D: LdPrVar
  loc_C3623F: LateMemCall
  loc_C36245: LitVarStr var_94, ".Totales {"
  loc_C3624A: PopAdLdVar
  loc_C3624B: FLdPr Me
  loc_C3624E: MemLdRfVar from_stack_1.global_60
  loc_C36251: LdPrVar
  loc_C36253: LateMemCall
  loc_C36259: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3625E: PopAdLdVar
  loc_C3625F: FLdPr Me
  loc_C36262: MemLdRfVar from_stack_1.global_60
  loc_C36265: LdPrVar
  loc_C36267: LateMemCall
  loc_C3626D: LitVarStr var_94, " font-size: 13px;"
  loc_C36272: PopAdLdVar
  loc_C36273: FLdPr Me
  loc_C36276: MemLdRfVar from_stack_1.global_60
  loc_C36279: LdPrVar
  loc_C3627B: LateMemCall
  loc_C36281: LitVarStr var_94, " vertical-align: top;"
  loc_C36286: PopAdLdVar
  loc_C36287: FLdPr Me
  loc_C3628A: MemLdRfVar from_stack_1.global_60
  loc_C3628D: LdPrVar
  loc_C3628F: LateMemCall
  loc_C36295: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C3629A: PopAdLdVar
  loc_C3629B: FLdPr Me
  loc_C3629E: MemLdRfVar from_stack_1.global_60
  loc_C362A1: LdPrVar
  loc_C362A3: LateMemCall
  loc_C362A9: LitVarStr var_94, " font-weight: bold;"
  loc_C362AE: PopAdLdVar
  loc_C362AF: FLdPr Me
  loc_C362B2: MemLdRfVar from_stack_1.global_60
  loc_C362B5: LdPrVar
  loc_C362B7: LateMemCall
  loc_C362BD: LitVarStr var_94, " padding-right: 1px;"
  loc_C362C2: PopAdLdVar
  loc_C362C3: FLdPr Me
  loc_C362C6: MemLdRfVar from_stack_1.global_60
  loc_C362C9: LdPrVar
  loc_C362CB: LateMemCall
  loc_C362D1: LitVarStr var_94, "}"
  loc_C362D6: PopAdLdVar
  loc_C362D7: FLdPr Me
  loc_C362DA: MemLdRfVar from_stack_1.global_60
  loc_C362DD: LdPrVar
  loc_C362DF: LateMemCall
  loc_C362E5: LitVarStr var_94, ".Total {"
  loc_C362EA: PopAdLdVar
  loc_C362EB: FLdPr Me
  loc_C362EE: MemLdRfVar from_stack_1.global_60
  loc_C362F1: LdPrVar
  loc_C362F3: LateMemCall
  loc_C362F9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C362FE: PopAdLdVar
  loc_C362FF: FLdPr Me
  loc_C36302: MemLdRfVar from_stack_1.global_60
  loc_C36305: LdPrVar
  loc_C36307: LateMemCall
  loc_C3630D: LitVarStr var_94, " font-size: 14px;"
  loc_C36312: PopAdLdVar
  loc_C36313: FLdPr Me
  loc_C36316: MemLdRfVar from_stack_1.global_60
  loc_C36319: LdPrVar
  loc_C3631B: LateMemCall
  loc_C36321: LitVarStr var_94, " vertical-align: top;"
  loc_C36326: PopAdLdVar
  loc_C36327: FLdPr Me
  loc_C3632A: MemLdRfVar from_stack_1.global_60
  loc_C3632D: LdPrVar
  loc_C3632F: LateMemCall
  loc_C36335: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C3633A: PopAdLdVar
  loc_C3633B: FLdPr Me
  loc_C3633E: MemLdRfVar from_stack_1.global_60
  loc_C36341: LdPrVar
  loc_C36343: LateMemCall
  loc_C36349: LitVarStr var_94, " font-weight: bold;"
  loc_C3634E: PopAdLdVar
  loc_C3634F: FLdPr Me
  loc_C36352: MemLdRfVar from_stack_1.global_60
  loc_C36355: LdPrVar
  loc_C36357: LateMemCall
  loc_C3635D: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C36362: PopAdLdVar
  loc_C36363: FLdPr Me
  loc_C36366: MemLdRfVar from_stack_1.global_60
  loc_C36369: LdPrVar
  loc_C3636B: LateMemCall
  loc_C36371: LitVarStr var_94, "}"
  loc_C36376: PopAdLdVar
  loc_C36377: FLdPr Me
  loc_C3637A: MemLdRfVar from_stack_1.global_60
  loc_C3637D: LdPrVar
  loc_C3637F: LateMemCall
  loc_C36385: LitVarStr var_94, ".CodBar {"
  loc_C3638A: PopAdLdVar
  loc_C3638B: FLdPr Me
  loc_C3638E: MemLdRfVar from_stack_1.global_60
  loc_C36391: LdPrVar
  loc_C36393: LateMemCall
  loc_C36399: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C3639E: PopAdLdVar
  loc_C3639F: FLdPr Me
  loc_C363A2: MemLdRfVar from_stack_1.global_60
  loc_C363A5: LdPrVar
  loc_C363A7: LateMemCall
  loc_C363AD: LitVarStr var_94, " font-size: 48px;"
  loc_C363B2: PopAdLdVar
  loc_C363B3: FLdPr Me
  loc_C363B6: MemLdRfVar from_stack_1.global_60
  loc_C363B9: LdPrVar
  loc_C363BB: LateMemCall
  loc_C363C1: LitVarStr var_94, " font-style: normal;"
  loc_C363C6: PopAdLdVar
  loc_C363C7: FLdPr Me
  loc_C363CA: MemLdRfVar from_stack_1.global_60
  loc_C363CD: LdPrVar
  loc_C363CF: LateMemCall
  loc_C363D5: LitVarStr var_94, " line-height: normal;"
  loc_C363DA: PopAdLdVar
  loc_C363DB: FLdPr Me
  loc_C363DE: MemLdRfVar from_stack_1.global_60
  loc_C363E1: LdPrVar
  loc_C363E3: LateMemCall
  loc_C363E9: LitVarStr var_94, " font-weight: normal;"
  loc_C363EE: PopAdLdVar
  loc_C363EF: FLdPr Me
  loc_C363F2: MemLdRfVar from_stack_1.global_60
  loc_C363F5: LdPrVar
  loc_C363F7: LateMemCall
  loc_C363FD: LitVarStr var_94, "}"
  loc_C36402: PopAdLdVar
  loc_C36403: FLdPr Me
  loc_C36406: MemLdRfVar from_stack_1.global_60
  loc_C36409: LdPrVar
  loc_C3640B: LateMemCall
  loc_C36411: LitVarStr var_94, ".CodBarChica {"
  loc_C36416: PopAdLdVar
  loc_C36417: FLdPr Me
  loc_C3641A: MemLdRfVar from_stack_1.global_60
  loc_C3641D: LdPrVar
  loc_C3641F: LateMemCall
  loc_C36425: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C3642A: PopAdLdVar
  loc_C3642B: FLdPr Me
  loc_C3642E: MemLdRfVar from_stack_1.global_60
  loc_C36431: LdPrVar
  loc_C36433: LateMemCall
  loc_C36439: LitVarStr var_94, " font-size: 38px;"
  loc_C3643E: PopAdLdVar
  loc_C3643F: FLdPr Me
  loc_C36442: MemLdRfVar from_stack_1.global_60
  loc_C36445: LdPrVar
  loc_C36447: LateMemCall
  loc_C3644D: LitVarStr var_94, " font-style: normal;"
  loc_C36452: PopAdLdVar
  loc_C36453: FLdPr Me
  loc_C36456: MemLdRfVar from_stack_1.global_60
  loc_C36459: LdPrVar
  loc_C3645B: LateMemCall
  loc_C36461: LitVarStr var_94, " line-height: normal;"
  loc_C36466: PopAdLdVar
  loc_C36467: FLdPr Me
  loc_C3646A: MemLdRfVar from_stack_1.global_60
  loc_C3646D: LdPrVar
  loc_C3646F: LateMemCall
  loc_C36475: LitVarStr var_94, " font-weight: normal;"
  loc_C3647A: PopAdLdVar
  loc_C3647B: FLdPr Me
  loc_C3647E: MemLdRfVar from_stack_1.global_60
  loc_C36481: LdPrVar
  loc_C36483: LateMemCall
  loc_C36489: LitVarStr var_94, "}"
  loc_C3648E: PopAdLdVar
  loc_C3648F: FLdPr Me
  loc_C36492: MemLdRfVar from_stack_1.global_60
  loc_C36495: LdPrVar
  loc_C36497: LateMemCall
  loc_C3649D: LitVarStr var_94, ".CorreoCelda {"
  loc_C364A2: PopAdLdVar
  loc_C364A3: FLdPr Me
  loc_C364A6: MemLdRfVar from_stack_1.global_60
  loc_C364A9: LdPrVar
  loc_C364AB: LateMemCall
  loc_C364B1: LitVarStr var_94, " border: 1px solid black;"
  loc_C364B6: PopAdLdVar
  loc_C364B7: FLdPr Me
  loc_C364BA: MemLdRfVar from_stack_1.global_60
  loc_C364BD: LdPrVar
  loc_C364BF: LateMemCall
  loc_C364C5: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C364CA: PopAdLdVar
  loc_C364CB: FLdPr Me
  loc_C364CE: MemLdRfVar from_stack_1.global_60
  loc_C364D1: LdPrVar
  loc_C364D3: LateMemCall
  loc_C364D9: LitVarStr var_94, " font-size: 6px;"
  loc_C364DE: PopAdLdVar
  loc_C364DF: FLdPr Me
  loc_C364E2: MemLdRfVar from_stack_1.global_60
  loc_C364E5: LdPrVar
  loc_C364E7: LateMemCall
  loc_C364ED: LitVarStr var_94, " text-align:center;"
  loc_C364F2: PopAdLdVar
  loc_C364F3: FLdPr Me
  loc_C364F6: MemLdRfVar from_stack_1.global_60
  loc_C364F9: LdPrVar
  loc_C364FB: LateMemCall
  loc_C36501: LitVarStr var_94, " vertical-align: middle;"
  loc_C36506: PopAdLdVar
  loc_C36507: FLdPr Me
  loc_C3650A: MemLdRfVar from_stack_1.global_60
  loc_C3650D: LdPrVar
  loc_C3650F: LateMemCall
  loc_C36515: LitVarStr var_94, "}"
  loc_C3651A: PopAdLdVar
  loc_C3651B: FLdPr Me
  loc_C3651E: MemLdRfVar from_stack_1.global_60
  loc_C36521: LdPrVar
  loc_C36523: LateMemCall
  loc_C36529: LitVarStr var_94, ".CorreoCeldaFinal {"
  loc_C3652E: PopAdLdVar
  loc_C3652F: FLdPr Me
  loc_C36532: MemLdRfVar from_stack_1.global_60
  loc_C36535: LdPrVar
  loc_C36537: LateMemCall
  loc_C3653D: LitVarStr var_94, " border:none;"
  loc_C36542: PopAdLdVar
  loc_C36543: FLdPr Me
  loc_C36546: MemLdRfVar from_stack_1.global_60
  loc_C36549: LdPrVar
  loc_C3654B: LateMemCall
  loc_C36551: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C36556: PopAdLdVar
  loc_C36557: FLdPr Me
  loc_C3655A: MemLdRfVar from_stack_1.global_60
  loc_C3655D: LdPrVar
  loc_C3655F: LateMemCall
  loc_C36565: LitVarStr var_94, " font-size: 6px;"
  loc_C3656A: PopAdLdVar
  loc_C3656B: FLdPr Me
  loc_C3656E: MemLdRfVar from_stack_1.global_60
  loc_C36571: LdPrVar
  loc_C36573: LateMemCall
  loc_C36579: LitVarStr var_94, " text-align:center;"
  loc_C3657E: PopAdLdVar
  loc_C3657F: FLdPr Me
  loc_C36582: MemLdRfVar from_stack_1.global_60
  loc_C36585: LdPrVar
  loc_C36587: LateMemCall
  loc_C3658D: LitVarStr var_94, " vertical-align: middle;"
  loc_C36592: PopAdLdVar
  loc_C36593: FLdPr Me
  loc_C36596: MemLdRfVar from_stack_1.global_60
  loc_C36599: LdPrVar
  loc_C3659B: LateMemCall
  loc_C365A1: LitVarStr var_94, "}"
  loc_C365A6: PopAdLdVar
  loc_C365A7: FLdPr Me
  loc_C365AA: MemLdRfVar from_stack_1.global_60
  loc_C365AD: LdPrVar
  loc_C365AF: LateMemCall
  loc_C365B5: LitVarStr var_94, ".CorreoTabla {"
  loc_C365BA: PopAdLdVar
  loc_C365BB: FLdPr Me
  loc_C365BE: MemLdRfVar from_stack_1.global_60
  loc_C365C1: LdPrVar
  loc_C365C3: LateMemCall
  loc_C365C9: LitVarStr var_94, " border:none;"
  loc_C365CE: PopAdLdVar
  loc_C365CF: FLdPr Me
  loc_C365D2: MemLdRfVar from_stack_1.global_60
  loc_C365D5: LdPrVar
  loc_C365D7: LateMemCall
  loc_C365DD: LitVarStr var_94, " border-collapse:collapse;"
  loc_C365E2: PopAdLdVar
  loc_C365E3: FLdPr Me
  loc_C365E6: MemLdRfVar from_stack_1.global_60
  loc_C365E9: LdPrVar
  loc_C365EB: LateMemCall
  loc_C365F1: LitVarStr var_94, "}"
  loc_C365F6: PopAdLdVar
  loc_C365F7: FLdPr Me
  loc_C365FA: MemLdRfVar from_stack_1.global_60
  loc_C365FD: LdPrVar
  loc_C365FF: LateMemCall
  loc_C36605: LitVarStr var_94, ".Gina {"
  loc_C3660A: PopAdLdVar
  loc_C3660B: FLdPr Me
  loc_C3660E: MemLdRfVar from_stack_1.global_60
  loc_C36611: LdPrVar
  loc_C36613: LateMemCall
  loc_C36619: LitVarStr var_94, " float:right;"
  loc_C3661E: PopAdLdVar
  loc_C3661F: FLdPr Me
  loc_C36622: MemLdRfVar from_stack_1.global_60
  loc_C36625: LdPrVar
  loc_C36627: LateMemCall
  loc_C3662D: LitVarStr var_94, " clear:right;"
  loc_C36632: PopAdLdVar
  loc_C36633: FLdPr Me
  loc_C36636: MemLdRfVar from_stack_1.global_60
  loc_C36639: LdPrVar
  loc_C3663B: LateMemCall
  loc_C36641: LitVarStr var_94, " margin:10px;"
  loc_C36646: PopAdLdVar
  loc_C36647: FLdPr Me
  loc_C3664A: MemLdRfVar from_stack_1.global_60
  loc_C3664D: LdPrVar
  loc_C3664F: LateMemCall
  loc_C36655: LitVarStr var_94, " vertical-align:bottom"
  loc_C3665A: PopAdLdVar
  loc_C3665B: FLdPr Me
  loc_C3665E: MemLdRfVar from_stack_1.global_60
  loc_C36661: LdPrVar
  loc_C36663: LateMemCall
  loc_C36669: LitVarStr var_94, "}"
  loc_C3666E: PopAdLdVar
  loc_C3666F: FLdPr Me
  loc_C36672: MemLdRfVar from_stack_1.global_60
  loc_C36675: LdPrVar
  loc_C36677: LateMemCall
  loc_C3667D: LitVarStr var_94, ".NoBordeAbajo {"
  loc_C36682: PopAdLdVar
  loc_C36683: FLdPr Me
  loc_C36686: MemLdRfVar from_stack_1.global_60
  loc_C36689: LdPrVar
  loc_C3668B: LateMemCall
  loc_C36691: LitVarStr var_94, " border-bottom:none"
  loc_C36696: PopAdLdVar
  loc_C36697: FLdPr Me
  loc_C3669A: MemLdRfVar from_stack_1.global_60
  loc_C3669D: LdPrVar
  loc_C3669F: LateMemCall
  loc_C366A5: LitVarStr var_94, "}"
  loc_C366AA: PopAdLdVar
  loc_C366AB: FLdPr Me
  loc_C366AE: MemLdRfVar from_stack_1.global_60
  loc_C366B1: LdPrVar
  loc_C366B3: LateMemCall
  loc_C366B9: LitVarStr var_94, ".NoBordeArriba {"
  loc_C366BE: PopAdLdVar
  loc_C366BF: FLdPr Me
  loc_C366C2: MemLdRfVar from_stack_1.global_60
  loc_C366C5: LdPrVar
  loc_C366C7: LateMemCall
  loc_C366CD: LitVarStr var_94, " border-top:none"
  loc_C366D2: PopAdLdVar
  loc_C366D3: FLdPr Me
  loc_C366D6: MemLdRfVar from_stack_1.global_60
  loc_C366D9: LdPrVar
  loc_C366DB: LateMemCall
  loc_C366E1: LitVarStr var_94, "}"
  loc_C366E6: PopAdLdVar
  loc_C366E7: FLdPr Me
  loc_C366EA: MemLdRfVar from_stack_1.global_60
  loc_C366ED: LdPrVar
  loc_C366EF: LateMemCall
  loc_C366F5: LitVarStr var_94, "-->"
  loc_C366FA: PopAdLdVar
  loc_C366FB: FLdPr Me
  loc_C366FE: MemLdRfVar from_stack_1.global_60
  loc_C36701: LdPrVar
  loc_C36703: LateMemCall
  loc_C36709: LitVarStr var_94, "</style>"
  loc_C3670E: PopAdLdVar
  loc_C3670F: FLdPr Me
  loc_C36712: MemLdRfVar from_stack_1.global_60
  loc_C36715: LdPrVar
  loc_C36717: LateMemCall
  loc_C3671D: LitI4 0
  loc_C36722: FStStrCopy var_AC
  loc_C36725: FLdRfVar var_AC
  loc_C36728: LitI4 0
  loc_C3672D: FStStrCopy var_A8
  loc_C36730: FLdRfVar var_A8
  loc_C36733: LitI2_Byte 0
  loc_C36735: PopTmpLdAd2 var_BE
  loc_C36738: FLdPr Me
  loc_C3673B: MemLdRfVar from_stack_1.global_60
  loc_C3673E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C36743: FFreeStr var_A8 = ""
  loc_C3674A: ExitProcHresult
End Function

Private Function Proc_320_24_BE67E4() 'BE67E4
  'Data Table: 4BFD94
  loc_BE600C: LitVarStr var_94, "<table align=""center"" height=""350"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_BE6011: PopAdLdVar
  loc_BE6012: FLdPr Me
  loc_BE6015: MemLdRfVar from_stack_1.global_60
  loc_BE6018: LdPrVar
  loc_BE601A: LateMemCall
  loc_BE6020: LitVarStr var_94, "  <tr valign=""top""><td height=""350"">"
  loc_BE6025: PopAdLdVar
  loc_BE6026: FLdPr Me
  loc_BE6029: MemLdRfVar from_stack_1.global_60
  loc_BE602C: LdPrVar
  loc_BE602E: LateMemCall
  loc_BE6034: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_BE6039: PopAdLdVar
  loc_BE603A: FLdPr Me
  loc_BE603D: MemLdRfVar from_stack_1.global_60
  loc_BE6040: LdPrVar
  loc_BE6042: LateMemCall
  loc_BE6048: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE604D: PopAdLdVar
  loc_BE604E: FLdPr Me
  loc_BE6051: MemLdRfVar from_stack_1.global_60
  loc_BE6054: LdPrVar
  loc_BE6056: LateMemCall
  loc_BE605C: LitStr "        <td colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio MargIzq"" style=""padding-top: 1px;padding-bottom: 1px""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE605F: LitI2_Byte &H5F
  loc_BE6061: CStrUI1
  loc_BE6063: FStStrNoPop var_A8
  loc_BE6066: ConcatStr
  loc_BE6067: FStStrNoPop var_AC
  loc_BE606A: LitStr """ height="""
  loc_BE606D: ConcatStr
  loc_BE606E: FStStrNoPop var_B0
  loc_BE6071: LitI2_Byte &H3C
  loc_BE6073: CStrUI1
  loc_BE6075: FStStrNoPop var_B4
  loc_BE6078: ConcatStr
  loc_BE6079: FStStrNoPop var_B8
  loc_BE607C: LitStr """ align=""left""><span class=""NombreMunicipio"">"
  loc_BE607F: ConcatStr
  loc_BE6080: FStStrNoPop var_BC
  loc_BE6083: LitStr "Municipalidad de Guaymallén"
  loc_BE6086: ConcatStr
  loc_BE6087: FStStrNoPop var_C0
  loc_BE608A: LitStr "</span><br>"
  loc_BE608D: ConcatStr
  loc_BE608E: CVarStr var_D0
  loc_BE6091: PopAdLdVar
  loc_BE6092: FLdPr Me
  loc_BE6095: MemLdRfVar from_stack_1.global_60
  loc_BE6098: LdPrVar
  loc_BE609A: LateMemCall
  loc_BE60A0: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BE60B1: FFree1Var var_D0 = ""
  loc_BE60B4: LitStr "          "
  loc_BE60B7: LitStr "Dirección de Rentas"
  loc_BE60BA: ConcatStr
  loc_BE60BB: FStStrNoPop var_A8
  loc_BE60BE: LitStr "<br>"
  loc_BE60C1: ConcatStr
  loc_BE60C2: CVarStr var_D0
  loc_BE60C5: PopAdLdVar
  loc_BE60C6: FLdPr Me
  loc_BE60C9: MemLdRfVar from_stack_1.global_60
  loc_BE60CC: LdPrVar
  loc_BE60CE: LateMemCall
  loc_BE60D4: FFree1Str var_A8
  loc_BE60D7: FFree1Var var_D0 = ""
  loc_BE60DA: LitStr "          "
  loc_BE60DD: LitStr "Libertad 720 - Villa Nueva"
  loc_BE60E0: ConcatStr
  loc_BE60E1: FStStrNoPop var_A8
  loc_BE60E4: LitStr "<br>"
  loc_BE60E7: ConcatStr
  loc_BE60E8: CVarStr var_D0
  loc_BE60EB: PopAdLdVar
  loc_BE60EC: FLdPr Me
  loc_BE60EF: MemLdRfVar from_stack_1.global_60
  loc_BE60F2: LdPrVar
  loc_BE60F4: LateMemCall
  loc_BE60FA: FFree1Str var_A8
  loc_BE60FD: FFree1Var var_D0 = ""
  loc_BE6100: LitStr "          "
  loc_BE6103: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_BE6106: ConcatStr
  loc_BE6107: FStStrNoPop var_A8
  loc_BE610A: LitStr "<br>"
  loc_BE610D: ConcatStr
  loc_BE610E: CVarStr var_D0
  loc_BE6111: PopAdLdVar
  loc_BE6112: FLdPr Me
  loc_BE6115: MemLdRfVar from_stack_1.global_60
  loc_BE6118: LdPrVar
  loc_BE611A: LateMemCall
  loc_BE6120: FFree1Str var_A8
  loc_BE6123: FFree1Var var_D0 = ""
  loc_BE6126: LitStr "          "
  loc_BE6129: LitStr "C.U.I.T.: "
  loc_BE612C: ConcatStr
  loc_BE612D: FStStrNoPop var_A8
  loc_BE6130: LitStr "30-99914707-7"
  loc_BE6133: ConcatStr
  loc_BE6134: FStStrNoPop var_AC
  loc_BE6137: LitStr "</td>"
  loc_BE613A: ConcatStr
  loc_BE613B: CVarStr var_D0
  loc_BE613E: PopAdLdVar
  loc_BE613F: FLdPr Me
  loc_BE6142: MemLdRfVar from_stack_1.global_60
  loc_BE6145: LdPrVar
  loc_BE6147: LateMemCall
  loc_BE614D: FFreeStr var_A8 = ""
  loc_BE6154: FFree1Var var_D0 = ""
  loc_BE6157: LitVarStr var_94, "        <td class=""NoBordeAbajo"" width=""200"" height=""31"" align=""center"" valign=""middle"">"
  loc_BE615C: PopAdLdVar
  loc_BE615D: FLdPr Me
  loc_BE6160: MemLdRfVar from_stack_1.global_60
  loc_BE6163: LdPrVar
  loc_BE6165: LateMemCall
  loc_BE616B: LitVarStr var_94, "        <div>&nbsp;</div>"
  loc_BE6170: PopAdLdVar
  loc_BE6171: FLdPr Me
  loc_BE6174: MemLdRfVar from_stack_1.global_60
  loc_BE6177: LdPrVar
  loc_BE6179: LateMemCall
  loc_BE617F: LitVarStr var_94, "        <table width=""42" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""0"" class=""CorreoTabla"" >"
  loc_BE6184: PopAdLdVar
  loc_BE6185: FLdPr Me
  loc_BE6188: MemLdRfVar from_stack_1.global_60
  loc_BE618B: LdPrVar
  loc_BE618D: LateMemCall
  loc_BE6193: LitVarStr var_94, "          <tr>"
  loc_BE6198: PopAdLdVar
  loc_BE6199: FLdPr Me
  loc_BE619C: MemLdRfVar from_stack_1.global_60
  loc_BE619F: LdPrVar
  loc_BE61A1: LateMemCall
  loc_BE61A7: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-right:none"">C<br>O<br>R<br>R</td>"
  loc_BE61AC: PopAdLdVar
  loc_BE61AD: FLdPr Me
  loc_BE61B0: MemLdRfVar from_stack_1.global_60
  loc_BE61B3: LdPrVar
  loc_BE61B5: LateMemCall
  loc_BE61BB: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-left:none"">O<br>F<br>I<br>C</td>"
  loc_BE61C0: PopAdLdVar
  loc_BE61C1: FLdPr Me
  loc_BE61C4: MemLdRfVar from_stack_1.global_60
  loc_BE61C7: LdPrVar
  loc_BE61C9: LateMemCall
  loc_BE61CF: LitVarStr var_94, "            <td class=""CorreoCelda"">FRANQUEO A PAGAR</td>"
  loc_BE61D4: PopAdLdVar
  loc_BE61D5: FLdPr Me
  loc_BE61D8: MemLdRfVar from_stack_1.global_60
  loc_BE61DB: LdPrVar
  loc_BE61DD: LateMemCall
  loc_BE61E3: LitVarStr var_94, "          </tr>"
  loc_BE61E8: PopAdLdVar
  loc_BE61E9: FLdPr Me
  loc_BE61EC: MemLdRfVar from_stack_1.global_60
  loc_BE61EF: LdPrVar
  loc_BE61F1: LateMemCall
  loc_BE61F7: LitVarStr var_94, "          <tr>"
  loc_BE61FC: PopAdLdVar
  loc_BE61FD: FLdPr Me
  loc_BE6200: MemLdRfVar from_stack_1.global_60
  loc_BE6203: LdPrVar
  loc_BE6205: LateMemCall
  loc_BE620B: LitVarStr var_94, "            <td class=""CorreoCelda"">CTA CTE N&deg; 17438</td>"
  loc_BE6210: PopAdLdVar
  loc_BE6211: FLdPr Me
  loc_BE6214: MemLdRfVar from_stack_1.global_60
  loc_BE6217: LdPrVar
  loc_BE6219: LateMemCall
  loc_BE621F: LitVarStr var_94, "          </tr>"
  loc_BE6224: PopAdLdVar
  loc_BE6225: FLdPr Me
  loc_BE6228: MemLdRfVar from_stack_1.global_60
  loc_BE622B: LdPrVar
  loc_BE622D: LateMemCall
  loc_BE6233: LitVarStr var_94, "          <tr>"
  loc_BE6238: PopAdLdVar
  loc_BE6239: FLdPr Me
  loc_BE623C: MemLdRfVar from_stack_1.global_60
  loc_BE623F: LdPrVar
  loc_BE6241: LateMemCall
  loc_BE6247: LitStr "            <td class=""CorreoCelda"">CUIT: "
  loc_BE624A: LitStr "30-99914707-7"
  loc_BE624D: ConcatStr
  loc_BE624E: FStStrNoPop var_A8
  loc_BE6251: LitStr "</td>"
  loc_BE6254: ConcatStr
  loc_BE6255: CVarStr var_D0
  loc_BE6258: PopAdLdVar
  loc_BE6259: FLdPr Me
  loc_BE625C: MemLdRfVar from_stack_1.global_60
  loc_BE625F: LdPrVar
  loc_BE6261: LateMemCall
  loc_BE6267: FFree1Str var_A8
  loc_BE626A: FFree1Var var_D0 = ""
  loc_BE626D: LitVarStr var_94, "          </tr>"
  loc_BE6272: PopAdLdVar
  loc_BE6273: FLdPr Me
  loc_BE6276: MemLdRfVar from_stack_1.global_60
  loc_BE6279: LdPrVar
  loc_BE627B: LateMemCall
  loc_BE6281: LitVarStr var_94, "          <tr>"
  loc_BE6286: PopAdLdVar
  loc_BE6287: FLdPr Me
  loc_BE628A: MemLdRfVar from_stack_1.global_60
  loc_BE628D: LdPrVar
  loc_BE628F: LateMemCall
  loc_BE6295: LitVarStr var_94, "            <td colspan=""3"" class=""CorreoCeldaFinal"">Devolver a Admisi&oacute;n Mendoza</td>"
  loc_BE629A: PopAdLdVar
  loc_BE629B: FLdPr Me
  loc_BE629E: MemLdRfVar from_stack_1.global_60
  loc_BE62A1: LdPrVar
  loc_BE62A3: LateMemCall
  loc_BE62A9: LitVarStr var_94, "            </tr>"
  loc_BE62AE: PopAdLdVar
  loc_BE62AF: FLdPr Me
  loc_BE62B2: MemLdRfVar from_stack_1.global_60
  loc_BE62B5: LdPrVar
  loc_BE62B7: LateMemCall
  loc_BE62BD: LitVarStr var_94, "        </table>"
  loc_BE62C2: PopAdLdVar
  loc_BE62C3: FLdPr Me
  loc_BE62C6: MemLdRfVar from_stack_1.global_60
  loc_BE62C9: LdPrVar
  loc_BE62CB: LateMemCall
  loc_BE62D1: LitVarStr var_94, "        </td>"
  loc_BE62D6: PopAdLdVar
  loc_BE62D7: FLdPr Me
  loc_BE62DA: MemLdRfVar from_stack_1.global_60
  loc_BE62DD: LdPrVar
  loc_BE62DF: LateMemCall
  loc_BE62E5: LitVarStr var_94, "      </tr>"
  loc_BE62EA: PopAdLdVar
  loc_BE62EB: FLdPr Me
  loc_BE62EE: MemLdRfVar from_stack_1.global_60
  loc_BE62F1: LdPrVar
  loc_BE62F3: LateMemCall
  loc_BE62F9: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE62FE: PopAdLdVar
  loc_BE62FF: FLdPr Me
  loc_BE6302: MemLdRfVar from_stack_1.global_60
  loc_BE6305: LdPrVar
  loc_BE6307: LateMemCall
  loc_BE630D: LitVarStr var_94, "        <td colspan=""4"" align=""center"" valign=""middle"" class=""NombreMunicipio"">TASAS DE ESTRUCTURAS DE ANTENA Y SUS EQUIPOS COMPLEMENTARIOS</td>"
  loc_BE6312: PopAdLdVar
  loc_BE6313: FLdPr Me
  loc_BE6316: MemLdRfVar from_stack_1.global_60
  loc_BE6319: LdPrVar
  loc_BE631B: LateMemCall
  loc_BE6321: LitVarStr var_94, "        <td width=""24"" align=""right"" class=""Encabezado MargDer""><strong>Orden:</strong></td>"
  loc_BE6326: PopAdLdVar
  loc_BE6327: FLdPr Me
  loc_BE632A: MemLdRfVar from_stack_1.global_60
  loc_BE632D: LdPrVar
  loc_BE632F: LateMemCall
  loc_BE6335: FLdPr Me
  loc_BE6338: MemLdStr global_96
  loc_BE633B: FLdPr Me
  loc_BE633E: MemLdStr global_92
  loc_BE6341: AryLock
  loc_BE6344: Ary1LdRf
  loc_BE6345: FStR4 var_D8
  loc_BE6348: LitStr "        <td width=""28"" align=""left"" valign=""top"" class=""Normal MargIzq"">"
  loc_BE634B: FMemLdR4 var_D8(84)
  loc_BE6350: ConcatStr
  loc_BE6351: FStStrNoPop var_A8
  loc_BE6354: LitStr "</td>"
  loc_BE6357: ConcatStr
  loc_BE6358: CVarStr var_D0
  loc_BE635B: PopAdLdVar
  loc_BE635C: FLdPr Me
  loc_BE635F: MemLdRfVar from_stack_1.global_60
  loc_BE6362: LdPrVar
  loc_BE6364: LateMemCall
  loc_BE636A: FFree1Str var_A8
  loc_BE636D: FFree1Var var_D0 = ""
  loc_BE6370: LitVarStr var_94, "        <td rowspan=""2"" class=""NoBordeArriba"">"
  loc_BE6375: PopAdLdVar
  loc_BE6376: FLdPr Me
  loc_BE6379: MemLdRfVar from_stack_1.global_60
  loc_BE637C: LdPrVar
  loc_BE637E: LateMemCall
  loc_BE6384: LitVarStr var_94, "         <table align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BE6389: PopAdLdVar
  loc_BE638A: FLdPr Me
  loc_BE638D: MemLdRfVar from_stack_1.global_60
  loc_BE6390: LdPrVar
  loc_BE6392: LateMemCall
  loc_BE6398: LitStr "          <tr><td valign=""bottom"" align=""center"" class=""CodBarChica"">"
  loc_BE639B: LitI4 1
  loc_BE63A0: FMemLdR4 var_D8(104)
  loc_BE63A5: Ary1LdI4
  loc_BE63A6: ConcatStr
  loc_BE63A7: FStStrNoPop var_A8
  loc_BE63AA: LitStr "</td></tr>"
  loc_BE63AD: ConcatStr
  loc_BE63AE: CVarStr var_D0
  loc_BE63B1: PopAdLdVar
  loc_BE63B2: FLdPr Me
  loc_BE63B5: MemLdRfVar from_stack_1.global_60
  loc_BE63B8: LdPrVar
  loc_BE63BA: LateMemCall
  loc_BE63C0: FFree1Str var_A8
  loc_BE63C3: FFree1Var var_D0 = ""
  loc_BE63C6: LitStr "          <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BE63C9: LitI4 0
  loc_BE63CE: FMemLdR4 var_D8(104)
  loc_BE63D3: Ary1LdI4
  loc_BE63D4: ConcatStr
  loc_BE63D5: FStStrNoPop var_A8
  loc_BE63D8: LitStr "</td></tr>"
  loc_BE63DB: ConcatStr
  loc_BE63DC: CVarStr var_D0
  loc_BE63DF: PopAdLdVar
  loc_BE63E0: FLdPr Me
  loc_BE63E3: MemLdRfVar from_stack_1.global_60
  loc_BE63E6: LdPrVar
  loc_BE63E8: LateMemCall
  loc_BE63EE: FFree1Str var_A8
  loc_BE63F1: FFree1Var var_D0 = ""
  loc_BE63F4: LitVarStr var_94, "        </table></td>"
  loc_BE63F9: PopAdLdVar
  loc_BE63FA: FLdPr Me
  loc_BE63FD: MemLdRfVar from_stack_1.global_60
  loc_BE6400: LdPrVar
  loc_BE6402: LateMemCall
  loc_BE6408: LitVarStr var_94, "      </tr>"
  loc_BE640D: PopAdLdVar
  loc_BE640E: FLdPr Me
  loc_BE6411: MemLdRfVar from_stack_1.global_60
  loc_BE6414: LdPrVar
  loc_BE6416: LateMemCall
  loc_BE641C: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE6421: PopAdLdVar
  loc_BE6422: FLdPr Me
  loc_BE6425: MemLdRfVar from_stack_1.global_60
  loc_BE6428: LdPrVar
  loc_BE642A: LateMemCall
  loc_BE6430: LitVarStr var_94, "        <td width=""51"" align=""right"" class=""Encabezado MargDer""><strong>CUENTA:</strong></td>"
  loc_BE6435: PopAdLdVar
  loc_BE6436: FLdPr Me
  loc_BE6439: MemLdRfVar from_stack_1.global_60
  loc_BE643C: LdPrVar
  loc_BE643E: LateMemCall
  loc_BE6444: LitStr "        <td width=""40"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE6447: FMemLdR4 var_D8(76)
  loc_BE644C: ConcatStr
  loc_BE644D: FStStrNoPop var_A8
  loc_BE6450: LitStr "</strong></td>"
  loc_BE6453: ConcatStr
  loc_BE6454: CVarStr var_D0
  loc_BE6457: PopAdLdVar
  loc_BE6458: FLdPr Me
  loc_BE645B: MemLdRfVar from_stack_1.global_60
  loc_BE645E: LdPrVar
  loc_BE6460: LateMemCall
  loc_BE6466: FFree1Str var_A8
  loc_BE6469: FFree1Var var_D0 = ""
  loc_BE646C: LitVarStr var_94, "        <td width=""43"" align=""right"" class=""Encabezado MargDer""><strong>Titular:</strong></td>"
  loc_BE6471: PopAdLdVar
  loc_BE6472: FLdPr Me
  loc_BE6475: MemLdRfVar from_stack_1.global_60
  loc_BE6478: LdPrVar
  loc_BE647A: LateMemCall
  loc_BE6480: LitStr "        <td height=""18"" colspan=""3"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE6483: FMemLdR4 var_D8(4)
  loc_BE6488: ConcatStr
  loc_BE6489: FStStrNoPop var_A8
  loc_BE648C: LitStr "</strong>"
  loc_BE648F: ConcatStr
  loc_BE6490: CVarStr var_D0
  loc_BE6493: PopAdLdVar
  loc_BE6494: FLdPr Me
  loc_BE6497: MemLdRfVar from_stack_1.global_60
  loc_BE649A: LdPrVar
  loc_BE649C: LateMemCall
  loc_BE64A2: FFree1Str var_A8
  loc_BE64A5: FFree1Var var_D0 = ""
  loc_BE64A8: FMemLdRf unk_4BFCBD
  loc_BE64AD: CVarRef
  loc_BE64B2: FLdRfVar var_D0
  loc_BE64B5: ImpAdCallFPR4  = Trim()
  loc_BE64BA: FLdRfVar var_D0
  loc_BE64BD: LitVarStr var_A4, vbNullString
  loc_BE64C2: HardType
  loc_BE64C3: NeVarBool
  loc_BE64C5: FFree1Var var_D0 = ""
  loc_BE64C8: BranchF loc_BE64F3
  loc_BE64CB: LitStr "        <br>(Poseedor: "
  loc_BE64CE: FMemLdR4 var_D8(8)
  loc_BE64D3: ConcatStr
  loc_BE64D4: FStStrNoPop var_A8
  loc_BE64D7: LitStr ")"
  loc_BE64DA: ConcatStr
  loc_BE64DB: CVarStr var_D0
  loc_BE64DE: PopAdLdVar
  loc_BE64DF: FLdPr Me
  loc_BE64E2: MemLdRfVar from_stack_1.global_60
  loc_BE64E5: LdPrVar
  loc_BE64E7: LateMemCall
  loc_BE64ED: FFree1Str var_A8
  loc_BE64F0: FFree1Var var_D0 = ""
  loc_BE64F3: LitVarStr var_94, "        </td>"
  loc_BE64F8: PopAdLdVar
  loc_BE64F9: FLdPr Me
  loc_BE64FC: MemLdRfVar from_stack_1.global_60
  loc_BE64FF: LdPrVar
  loc_BE6501: LateMemCall
  loc_BE6507: LitVarStr var_94, "      </tr>"
  loc_BE650C: PopAdLdVar
  loc_BE650D: FLdPr Me
  loc_BE6510: MemLdRfVar from_stack_1.global_60
  loc_BE6513: LdPrVar
  loc_BE6515: LateMemCall
  loc_BE651B: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE6520: PopAdLdVar
  loc_BE6521: FLdPr Me
  loc_BE6524: MemLdRfVar from_stack_1.global_60
  loc_BE6527: LdPrVar
  loc_BE6529: LateMemCall
  loc_BE652F: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Postal:</strong></td>"
  loc_BE6534: PopAdLdVar
  loc_BE6535: FLdPr Me
  loc_BE6538: MemLdRfVar from_stack_1.global_60
  loc_BE653B: LdPrVar
  loc_BE653D: LateMemCall
  loc_BE6543: LitStr "        <td colspan=""6"" class=""DomiPostal"">Calle: "
  loc_BE6546: FMemLdR4 var_D8(12)
  loc_BE654B: ConcatStr
  loc_BE654C: FStStrNoPop var_A8
  loc_BE654F: LitStr " Nro: "
  loc_BE6552: ConcatStr
  loc_BE6553: FStStrNoPop var_AC
  loc_BE6556: FMemLdR4 var_D8(16)
  loc_BE655B: ConcatStr
  loc_BE655C: CVarStr var_D0
  loc_BE655F: PopAdLdVar
  loc_BE6560: FLdPr Me
  loc_BE6563: MemLdRfVar from_stack_1.global_60
  loc_BE6566: LdPrVar
  loc_BE6568: LateMemCall
  loc_BE656E: FFreeStr var_A8 = ""
  loc_BE6575: FFree1Var var_D0 = ""
  loc_BE6578: FMemLdR4 var_D8(20)
  loc_BE657D: LitStr vbNullString
  loc_BE6580: NeStr
  loc_BE6582: BranchF loc_BE65A3
  loc_BE6585: LitStr " Barrio: "
  loc_BE6588: FMemLdR4 var_D8(20)
  loc_BE658D: ConcatStr
  loc_BE658E: CVarStr var_D0
  loc_BE6591: PopAdLdVar
  loc_BE6592: FLdPr Me
  loc_BE6595: MemLdRfVar from_stack_1.global_60
  loc_BE6598: LdPrVar
  loc_BE659A: LateMemCall
  loc_BE65A0: FFree1Var var_D0 = ""
  loc_BE65A3: FMemLdR4 var_D8(24)
  loc_BE65A8: LitStr vbNullString
  loc_BE65AB: NeStr
  loc_BE65AD: BranchF loc_BE65CE
  loc_BE65B0: LitStr " Mza: "
  loc_BE65B3: FMemLdR4 var_D8(24)
  loc_BE65B8: ConcatStr
  loc_BE65B9: CVarStr var_D0
  loc_BE65BC: PopAdLdVar
  loc_BE65BD: FLdPr Me
  loc_BE65C0: MemLdRfVar from_stack_1.global_60
  loc_BE65C3: LdPrVar
  loc_BE65C5: LateMemCall
  loc_BE65CB: FFree1Var var_D0 = ""
  loc_BE65CE: FMemLdR4 var_D8(28)
  loc_BE65D3: LitStr vbNullString
  loc_BE65D6: NeStr
  loc_BE65D8: BranchF loc_BE65F9
  loc_BE65DB: LitStr " Casa: "
  loc_BE65DE: FMemLdR4 var_D8(28)
  loc_BE65E3: ConcatStr
  loc_BE65E4: CVarStr var_D0
  loc_BE65E7: PopAdLdVar
  loc_BE65E8: FLdPr Me
  loc_BE65EB: MemLdRfVar from_stack_1.global_60
  loc_BE65EE: LdPrVar
  loc_BE65F0: LateMemCall
  loc_BE65F6: FFree1Var var_D0 = ""
  loc_BE65F9: FMemLdR4 var_D8(32)
  loc_BE65FE: LitStr vbNullString
  loc_BE6601: NeStr
  loc_BE6603: BranchF loc_BE661D
  loc_BE6606: FMemLdRf unk_4BFCBD
  loc_BE660B: CDargRef
  loc_BE660F: FLdPr Me
  loc_BE6612: MemLdRfVar from_stack_1.global_60
  loc_BE6615: LdPrVar
  loc_BE6617: LateMemCall
  loc_BE661D: LitStr "         <br>Loc: "
  loc_BE6620: FMemLdR4 var_D8(36)
  loc_BE6625: ConcatStr
  loc_BE6626: FStStrNoPop var_A8
  loc_BE6629: LitStr " CP: "
  loc_BE662C: ConcatStr
  loc_BE662D: FStStrNoPop var_AC
  loc_BE6630: FMemLdR4 var_D8(40)
  loc_BE6635: ConcatStr
  loc_BE6636: FStStrNoPop var_B0
  loc_BE6639: LitStr "</td>"
  loc_BE663C: ConcatStr
  loc_BE663D: CVarStr var_D0
  loc_BE6640: PopAdLdVar
  loc_BE6641: FLdPr Me
  loc_BE6644: MemLdRfVar from_stack_1.global_60
  loc_BE6647: LdPrVar
  loc_BE6649: LateMemCall
  loc_BE664F: FFreeStr var_A8 = "": var_AC = ""
  loc_BE6658: FFree1Var var_D0 = ""
  loc_BE665B: LitVarStr var_94, "      </tr>"
  loc_BE6660: PopAdLdVar
  loc_BE6661: FLdPr Me
  loc_BE6664: MemLdRfVar from_stack_1.global_60
  loc_BE6667: LdPrVar
  loc_BE6669: LateMemCall
  loc_BE666F: LitVarStr var_94, "        <tr valign=""top"">"
  loc_BE6674: PopAdLdVar
  loc_BE6675: FLdPr Me
  loc_BE6678: MemLdRfVar from_stack_1.global_60
  loc_BE667B: LdPrVar
  loc_BE667D: LateMemCall
  loc_BE6683: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Real:</strong></td>"
  loc_BE6688: PopAdLdVar
  loc_BE6689: FLdPr Me
  loc_BE668C: MemLdRfVar from_stack_1.global_60
  loc_BE668F: LdPrVar
  loc_BE6691: LateMemCall
  loc_BE6697: LitStr "        <td colspan=""6"" class=""DomiReal"">Calle: "
  loc_BE669A: FMemLdR4 var_D8(44)
  loc_BE669F: ConcatStr
  loc_BE66A0: FStStrNoPop var_A8
  loc_BE66A3: LitStr " Nro: "
  loc_BE66A6: ConcatStr
  loc_BE66A7: FStStrNoPop var_AC
  loc_BE66AA: FMemLdR4 var_D8(48)
  loc_BE66AF: ConcatStr
  loc_BE66B0: CVarStr var_D0
  loc_BE66B3: PopAdLdVar
  loc_BE66B4: FLdPr Me
  loc_BE66B7: MemLdRfVar from_stack_1.global_60
  loc_BE66BA: LdPrVar
  loc_BE66BC: LateMemCall
  loc_BE66C2: FFreeStr var_A8 = ""
  loc_BE66C9: FFree1Var var_D0 = ""
  loc_BE66CC: FMemLdR4 var_D8(52)
  loc_BE66D1: LitStr vbNullString
  loc_BE66D4: NeStr
  loc_BE66D6: BranchF loc_BE66F7
  loc_BE66D9: LitStr " Barrio: "
  loc_BE66DC: FMemLdR4 var_D8(52)
  loc_BE66E1: ConcatStr
  loc_BE66E2: CVarStr var_D0
  loc_BE66E5: PopAdLdVar
  loc_BE66E6: FLdPr Me
  loc_BE66E9: MemLdRfVar from_stack_1.global_60
  loc_BE66EC: LdPrVar
  loc_BE66EE: LateMemCall
  loc_BE66F4: FFree1Var var_D0 = ""
  loc_BE66F7: FMemLdR4 var_D8(56)
  loc_BE66FC: LitStr vbNullString
  loc_BE66FF: NeStr
  loc_BE6701: BranchF loc_BE6722
  loc_BE6704: LitStr " Mza: "
  loc_BE6707: FMemLdR4 var_D8(56)
  loc_BE670C: ConcatStr
  loc_BE670D: CVarStr var_D0
  loc_BE6710: PopAdLdVar
  loc_BE6711: FLdPr Me
  loc_BE6714: MemLdRfVar from_stack_1.global_60
  loc_BE6717: LdPrVar
  loc_BE6719: LateMemCall
  loc_BE671F: FFree1Var var_D0 = ""
  loc_BE6722: FMemLdR4 var_D8(60)
  loc_BE6727: LitStr vbNullString
  loc_BE672A: NeStr
  loc_BE672C: BranchF loc_BE674D
  loc_BE672F: LitStr " Casa: "
  loc_BE6732: FMemLdR4 var_D8(60)
  loc_BE6737: ConcatStr
  loc_BE6738: CVarStr var_D0
  loc_BE673B: PopAdLdVar
  loc_BE673C: FLdPr Me
  loc_BE673F: MemLdRfVar from_stack_1.global_60
  loc_BE6742: LdPrVar
  loc_BE6744: LateMemCall
  loc_BE674A: FFree1Var var_D0 = ""
  loc_BE674D: FMemLdR4 var_D8(64)
  loc_BE6752: LitStr vbNullString
  loc_BE6755: NeStr
  loc_BE6757: BranchF loc_BE6771
  loc_BE675A: FMemLdRf unk_4BFCBD
  loc_BE675F: CDargRef
  loc_BE6763: FLdPr Me
  loc_BE6766: MemLdRfVar from_stack_1.global_60
  loc_BE6769: LdPrVar
  loc_BE676B: LateMemCall
  loc_BE6771: LitStr "         <br>Loc: "
  loc_BE6774: FMemLdR4 var_D8(68)
  loc_BE6779: ConcatStr
  loc_BE677A: FStStrNoPop var_A8
  loc_BE677D: LitStr " CP: "
  loc_BE6780: ConcatStr
  loc_BE6781: FStStrNoPop var_AC
  loc_BE6784: FMemLdR4 var_D8(72)
  loc_BE6789: ConcatStr
  loc_BE678A: FStStrNoPop var_B0
  loc_BE678D: LitStr "</td>"
  loc_BE6790: ConcatStr
  loc_BE6791: CVarStr var_D0
  loc_BE6794: PopAdLdVar
  loc_BE6795: FLdPr Me
  loc_BE6798: MemLdRfVar from_stack_1.global_60
  loc_BE679B: LdPrVar
  loc_BE679D: LateMemCall
  loc_BE67A3: FFreeStr var_A8 = "": var_AC = ""
  loc_BE67AC: FFree1Var var_D0 = ""
  loc_BE67AF: LitVarStr var_94, "      </tr>"
  loc_BE67B4: PopAdLdVar
  loc_BE67B5: FLdPr Me
  loc_BE67B8: MemLdRfVar from_stack_1.global_60
  loc_BE67BB: LdPrVar
  loc_BE67BD: LateMemCall
  loc_BE67C3: LitVarStr var_94, "    </table>"
  loc_BE67C8: PopAdLdVar
  loc_BE67C9: FLdPr Me
  loc_BE67CC: MemLdRfVar from_stack_1.global_60
  loc_BE67CF: LdPrVar
  loc_BE67D1: LateMemCall
  loc_BE67D7: LitI4 0
  loc_BE67DC: FStR4 var_D8
  loc_BE67DF: AryUnlock
  loc_BE67E2: ExitProcHresult
End Function

Private Function Proc_320_25_B7467C() 'B7467C
  'Data Table: 4BFD94
  loc_B741A8: FLdPr Me
  loc_B741AB: MemLdStr global_96
  loc_B741AE: FLdPr Me
  loc_B741B1: MemLdStr global_92
  loc_B741B4: AryLock
  loc_B741B7: Ary1LdRf
  loc_B741B8: FStR4 var_8C
  loc_B741BB: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B741C0: PopAdLdVar
  loc_B741C1: FLdPr Me
  loc_B741C4: MemLdRfVar from_stack_1.global_60
  loc_B741C7: LdPrVar
  loc_B741C9: LateMemCall
  loc_B741CF: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B741D4: PopAdLdVar
  loc_B741D5: FLdPr Me
  loc_B741D8: MemLdRfVar from_stack_1.global_60
  loc_B741DB: LdPrVar
  loc_B741DD: LateMemCall
  loc_B741E3: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B741E8: PopAdLdVar
  loc_B741E9: FLdPr Me
  loc_B741EC: MemLdRfVar from_stack_1.global_60
  loc_B741EF: LdPrVar
  loc_B741F1: LateMemCall
  loc_B741F7: FMemLdR4 var_8C(92)
  loc_B741FC: CR8Str
  loc_B741FE: LitI2_Byte 0
  loc_B74200: CR8I2
  loc_B74201: GtR4
  loc_B74202: BranchF loc_B74219
  loc_B74205: LitVarStr var_9C, "      <p>Seg&uacute;n nuestros registros esta cuenta registra deuda. Existen convenientes planes de pago.<br>Evite cobro por v&iacute;a judicial!!!</p>"
  loc_B7420A: PopAdLdVar
  loc_B7420B: FLdPr Me
  loc_B7420E: MemLdRfVar from_stack_1.global_60
  loc_B74211: LdPrVar
  loc_B74213: LateMemCall
  loc_B74219: LitVarStr var_9C, "      <p><strong>SOLO SU PAGO EN T&Eacute;RMINO NOS PERMITE CUMPLIR</strong><br>"
  loc_B7421E: PopAdLdVar
  loc_B7421F: FLdPr Me
  loc_B74222: MemLdRfVar from_stack_1.global_60
  loc_B74225: LdPrVar
  loc_B74227: LateMemCall
  loc_B7422D: LitStr "        SR. CAJERO:<br><strong>NO COBRAR BOLETO BIMESTRAL DESPU&Eacute;S DEL 31/12/"
  loc_B74230: FLdRfVar var_AE
  loc_B74233: FLdPr Me
  loc_B74236: MemLdRfVar from_stack_1.global_80
  loc_B74239: NewIfNullPr clsliquidacion
  loc_B7423C: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B74241: FLdI2 var_AE
  loc_B74244: CStrUI1
  loc_B74246: FStStrNoPop var_B4
  loc_B74249: ConcatStr
  loc_B7424A: FStStrNoPop var_B8
  loc_B7424D: LitStr ".<br>"
  loc_B74250: ConcatStr
  loc_B74251: CVarStr var_C8
  loc_B74254: PopAdLdVar
  loc_B74255: FLdPr Me
  loc_B74258: MemLdRfVar from_stack_1.global_60
  loc_B7425B: LdPrVar
  loc_B7425D: LateMemCall
  loc_B74263: FFreeStr var_B4 = ""
  loc_B7426A: FFree1Var var_C8 = ""
  loc_B7426D: LitVarStr var_9C, "      <p>Los periodos bimestrales podr&aacute;n pagarse en las Entidades autorizadas hasta la fecha arriba indicada, luego de su vencimiento.<br>"
  loc_B74272: PopAdLdVar
  loc_B74273: FLdPr Me
  loc_B74276: MemLdRfVar from_stack_1.global_60
  loc_B74279: LdPrVar
  loc_B7427B: LateMemCall
  loc_B74281: LitVarStr var_9C, "        El recargo por morosidad se liquidar&aacute; en el pr&oacute;ximo periodo.</p>"
  loc_B74286: PopAdLdVar
  loc_B74287: FLdPr Me
  loc_B7428A: MemLdRfVar from_stack_1.global_60
  loc_B7428D: LdPrVar
  loc_B7428F: LateMemCall
  loc_B74295: LitVarStr var_9C, "      <p><strong>SIN TICKET DE CAJA NO ACREDITA PAGO del periodo correspondiente.</strong></p>"
  loc_B7429A: PopAdLdVar
  loc_B7429B: FLdPr Me
  loc_B7429E: MemLdRfVar from_stack_1.global_60
  loc_B742A1: LdPrVar
  loc_B742A3: LateMemCall
  loc_B742A9: LitVarStr var_9C, "    </td>"
  loc_B742AE: PopAdLdVar
  loc_B742AF: FLdPr Me
  loc_B742B2: MemLdRfVar from_stack_1.global_60
  loc_B742B5: LdPrVar
  loc_B742B7: LateMemCall
  loc_B742BD: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B742C2: PopAdLdVar
  loc_B742C3: FLdPr Me
  loc_B742C6: MemLdRfVar from_stack_1.global_60
  loc_B742C9: LdPrVar
  loc_B742CB: LateMemCall
  loc_B742D1: FMemLdR4 var_8C(108)
  loc_B742D6: LitI2_Byte 1
  loc_B742D8: FnUBound
  loc_B742DA: LitI4 0
  loc_B742DF: GtI4
  loc_B742E0: BranchF loc_B7452F
  loc_B742E3: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""0"" cellspacing=""2"" cellpadding=""0"">"
  loc_B742E8: PopAdLdVar
  loc_B742E9: FLdPr Me
  loc_B742EC: MemLdRfVar from_stack_1.global_60
  loc_B742EF: LdPrVar
  loc_B742F1: LateMemCall
  loc_B742F7: LitVarStr var_9C, "       <caption class=""Rubros""><strong>Detalle de Actividades y Rubros</strong></caption>"
  loc_B742FC: PopAdLdVar
  loc_B742FD: FLdPr Me
  loc_B74300: MemLdRfVar from_stack_1.global_60
  loc_B74303: LdPrVar
  loc_B74305: LateMemCall
  loc_B7430B: LitVarStr var_9C, "        <tr class=""EncabezadoRubros"" align=""center"">"
  loc_B74310: PopAdLdVar
  loc_B74311: FLdPr Me
  loc_B74314: MemLdRfVar from_stack_1.global_60
  loc_B74317: LdPrVar
  loc_B74319: LateMemCall
  loc_B7431F: LitVarStr var_9C, "          <td>Rubro</td>"
  loc_B74324: PopAdLdVar
  loc_B74325: FLdPr Me
  loc_B74328: MemLdRfVar from_stack_1.global_60
  loc_B7432B: LdPrVar
  loc_B7432D: LateMemCall
  loc_B74333: LitVarStr var_9C, "          <td>Subrubro</td>"
  loc_B74338: PopAdLdVar
  loc_B74339: FLdPr Me
  loc_B7433C: MemLdRfVar from_stack_1.global_60
  loc_B7433F: LdPrVar
  loc_B74341: LateMemCall
  loc_B74347: LitVarStr var_9C, "          <td>Categor&iacute;a</td>"
  loc_B7434C: PopAdLdVar
  loc_B7434D: FLdPr Me
  loc_B74350: MemLdRfVar from_stack_1.global_60
  loc_B74353: LdPrVar
  loc_B74355: LateMemCall
  loc_B7435B: LitVarStr var_9C, "          <td>Cantidad</td>"
  loc_B74360: PopAdLdVar
  loc_B74361: FLdPr Me
  loc_B74364: MemLdRfVar from_stack_1.global_60
  loc_B74367: LdPrVar
  loc_B74369: LateMemCall
  loc_B7436F: LitVarStr var_9C, "          <td>Importe</td>"
  loc_B74374: PopAdLdVar
  loc_B74375: FLdPr Me
  loc_B74378: MemLdRfVar from_stack_1.global_60
  loc_B7437B: LdPrVar
  loc_B7437D: LateMemCall
  loc_B74383: LitVarStr var_9C, "        </tr>"
  loc_B74388: PopAdLdVar
  loc_B74389: FLdPr Me
  loc_B7438C: MemLdRfVar from_stack_1.global_60
  loc_B7438F: LdPrVar
  loc_B74391: LateMemCall
  loc_B74397: LitI2_Byte 1
  loc_B74399: FLdPr Me
  loc_B7439C: MemLdRfVar from_stack_1.global_100
  loc_B7439F: FMemLdR4 var_8C(108)
  loc_B743A4: LitI2_Byte 1
  loc_B743A6: FnUBound
  loc_B743A8: CI2I4
  loc_B743A9: ForI2 var_CC
  loc_B743AF: FLdPr Me
  loc_B743B2: MemLdI2 global_100
  loc_B743B5: CI4UI1
  loc_B743B6: FMemLdR4 var_8C(108)
  loc_B743BB: AryLock
  loc_B743BE: Ary1LdRf
  loc_B743BF: FStR4 var_D4
  loc_B743C2: LitVarStr var_9C, "        <tr align=""right"">"
  loc_B743C7: PopAdLdVar
  loc_B743C8: FLdPr Me
  loc_B743CB: MemLdRfVar from_stack_1.global_60
  loc_B743CE: LdPrVar
  loc_B743D0: LateMemCall
  loc_B743D6: LitStr "Rubros"
  loc_B743D9: LitI2_Byte 0
  loc_B743DB: LitI2_Byte 0
  loc_B743DD: LitI2_Byte 0
  loc_B743DF: LitStr "right"
  loc_B743E2: FMemLdR4 var_D4(0)
  loc_B743E7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B743EC: CVarStr var_C8
  loc_B743EF: PopAdLdVar
  loc_B743F0: FLdPr Me
  loc_B743F3: MemLdRfVar from_stack_1.global_60
  loc_B743F6: LdPrVar
  loc_B743F8: LateMemCall
  loc_B743FE: FFree1Var var_C8 = ""
  loc_B74401: LitStr "Rubros"
  loc_B74404: LitI2_Byte 0
  loc_B74406: LitI2_Byte 0
  loc_B74408: LitI2_Byte 0
  loc_B7440A: LitStr "right"
  loc_B7440D: FMemLdR4 var_D4(4)
  loc_B74412: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74417: CVarStr var_C8
  loc_B7441A: PopAdLdVar
  loc_B7441B: FLdPr Me
  loc_B7441E: MemLdRfVar from_stack_1.global_60
  loc_B74421: LdPrVar
  loc_B74423: LateMemCall
  loc_B74429: FFree1Var var_C8 = ""
  loc_B7442C: LitStr "Rubros"
  loc_B7442F: LitI2_Byte 0
  loc_B74431: LitI2_Byte 0
  loc_B74433: LitI2_Byte 0
  loc_B74435: LitStr "right"
  loc_B74438: FMemLdR4 var_D4(12)
  loc_B7443D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74442: CVarStr var_C8
  loc_B74445: PopAdLdVar
  loc_B74446: FLdPr Me
  loc_B74449: MemLdRfVar from_stack_1.global_60
  loc_B7444C: LdPrVar
  loc_B7444E: LateMemCall
  loc_B74454: FFree1Var var_C8 = ""
  loc_B74457: LitStr "Rubros"
  loc_B7445A: LitI2_Byte 0
  loc_B7445C: LitI2_Byte 0
  loc_B7445E: LitI2_Byte 0
  loc_B74460: LitStr "right"
  loc_B74463: FMemLdR4 var_D4(16)
  loc_B74468: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B7446D: CVarStr var_C8
  loc_B74470: PopAdLdVar
  loc_B74471: FLdPr Me
  loc_B74474: MemLdRfVar from_stack_1.global_60
  loc_B74477: LdPrVar
  loc_B74479: LateMemCall
  loc_B7447F: FFree1Var var_C8 = ""
  loc_B74482: LitStr "Rubros"
  loc_B74485: LitI2_Byte 0
  loc_B74487: LitI2_Byte 0
  loc_B74489: LitI2_Byte 0
  loc_B7448B: LitStr "right"
  loc_B7448E: FMemLdR4 var_D4(20)
  loc_B74493: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74498: CVarStr var_C8
  loc_B7449B: PopAdLdVar
  loc_B7449C: FLdPr Me
  loc_B7449F: MemLdRfVar from_stack_1.global_60
  loc_B744A2: LdPrVar
  loc_B744A4: LateMemCall
  loc_B744AA: FFree1Var var_C8 = ""
  loc_B744AD: LitVarStr var_9C, "        </tr>"
  loc_B744B2: PopAdLdVar
  loc_B744B3: FLdPr Me
  loc_B744B6: MemLdRfVar from_stack_1.global_60
  loc_B744B9: LdPrVar
  loc_B744BB: LateMemCall
  loc_B744C1: LitI4 0
  loc_B744C6: FStR4 var_D4
  loc_B744C9: AryUnlock
  loc_B744CC: FLdPr Me
  loc_B744CF: MemLdRfVar from_stack_1.global_100
  loc_B744D2: NextI2 var_CC, loc_B743AF
  loc_B744D7: FMemLdI2 var_8C(100)
  loc_B744DC: BranchF loc_B7451B
  loc_B744DF: LitVarStr var_9C, "        <tr align=""right"">"
  loc_B744E4: PopAdLdVar
  loc_B744E5: FLdPr Me
  loc_B744E8: MemLdRfVar from_stack_1.global_60
  loc_B744EB: LdPrVar
  loc_B744ED: LateMemCall
  loc_B744F3: LitVarStr var_9C, "          <td colspan=""5"" align=""center"" class=""EncabezadoRubros"">Se muestran sólo los 10 primeros.</td>"
  loc_B744F8: PopAdLdVar
  loc_B744F9: FLdPr Me
  loc_B744FC: MemLdRfVar from_stack_1.global_60
  loc_B744FF: LdPrVar
  loc_B74501: LateMemCall
  loc_B74507: LitVarStr var_9C, "        </tr>"
  loc_B7450C: PopAdLdVar
  loc_B7450D: FLdPr Me
  loc_B74510: MemLdRfVar from_stack_1.global_60
  loc_B74513: LdPrVar
  loc_B74515: LateMemCall
  loc_B7451B: LitVarStr var_9C, "      </table>"
  loc_B74520: PopAdLdVar
  loc_B74521: FLdPr Me
  loc_B74524: MemLdRfVar from_stack_1.global_60
  loc_B74527: LdPrVar
  loc_B74529: LateMemCall
  loc_B7452F: LitVarStr var_9C, "      <hr>"
  loc_B74534: PopAdLdVar
  loc_B74535: FLdPr Me
  loc_B74538: MemLdRfVar from_stack_1.global_60
  loc_B7453B: LdPrVar
  loc_B7453D: LateMemCall
  loc_B74543: LitStr "      <p>Razón Social: <strong>"
  loc_B74546: FMemLdR4 var_8C(80)
  loc_B7454B: ConcatStr
  loc_B7454C: FStStrNoPop var_B4
  loc_B7454F: LitStr "</strong></p>"
  loc_B74552: ConcatStr
  loc_B74553: CVarStr var_C8
  loc_B74556: PopAdLdVar
  loc_B74557: FLdPr Me
  loc_B7455A: MemLdRfVar from_stack_1.global_60
  loc_B7455D: LdPrVar
  loc_B7455F: LateMemCall
  loc_B74565: FFree1Str var_B4
  loc_B74568: FFree1Var var_C8 = ""
  loc_B7456B: LitVarStr var_9C, "      <p>ENTIDADES AUTORIZADAS PARA EL COBRO:<br>"
  loc_B74570: PopAdLdVar
  loc_B74571: FLdPr Me
  loc_B74574: MemLdRfVar from_stack_1.global_60
  loc_B74577: LdPrVar
  loc_B74579: LateMemCall
  loc_B7457F: LitVarStr var_9C, "        Bancos: Supervielle/Macro/Credicoop/Nación<br>"
  loc_B74584: PopAdLdVar
  loc_B74585: FLdPr Me
  loc_B74588: MemLdRfVar from_stack_1.global_60
  loc_B7458B: LdPrVar
  loc_B7458D: LateMemCall
  loc_B74593: LitVarStr var_9C, "        Rapipago - Montemar C&iacute;a. Fiananc. - Pago F&aacute;cil<br>"
  loc_B74598: PopAdLdVar
  loc_B74599: FLdPr Me
  loc_B7459C: MemLdRfVar from_stack_1.global_60
  loc_B7459F: LdPrVar
  loc_B745A1: LateMemCall
  loc_B745A7: LitVarStr var_9C, "        Pague en www.pagomiscuentas.com o ingresando a Banelco en pagomiscuentas.com.ar.<br>"
  loc_B745AC: PopAdLdVar
  loc_B745AD: FLdPr Me
  loc_B745B0: MemLdRfVar from_stack_1.global_60
  loc_B745B3: LdPrVar
  loc_B745B5: LateMemCall
  loc_B745BB: LitVarStr var_9C, "        Link Pagos: Pague ingresando a www.linkpagos.com.ar desde un cajero LINK, las 24hs todos los d&iacute;as del a&ntilde;o."
  loc_B745C0: PopAdLdVar
  loc_B745C1: FLdPr Me
  loc_B745C4: MemLdRfVar from_stack_1.global_60
  loc_B745C7: LdPrVar
  loc_B745C9: LateMemCall
  loc_B745CF: LitVarStr var_9C, "        También se puede abonar en E-PAGOS y/o MACRO CLICK ingresando en la pagina web del municipio."
  loc_B745D4: PopAdLdVar
  loc_B745D5: FLdPr Me
  loc_B745D8: MemLdRfVar from_stack_1.global_60
  loc_B745DB: LdPrVar
  loc_B745DD: LateMemCall
  loc_B745E3: LitVarStr var_9C, "      </p>"
  loc_B745E8: PopAdLdVar
  loc_B745E9: FLdPr Me
  loc_B745EC: MemLdRfVar from_stack_1.global_60
  loc_B745EF: LdPrVar
  loc_B745F1: LateMemCall
  loc_B745F7: LitVarStr var_9C, "    </td>"
  loc_B745FC: PopAdLdVar
  loc_B745FD: FLdPr Me
  loc_B74600: MemLdRfVar from_stack_1.global_60
  loc_B74603: LdPrVar
  loc_B74605: LateMemCall
  loc_B7460B: LitVarStr var_9C, "  </tr>"
  loc_B74610: PopAdLdVar
  loc_B74611: FLdPr Me
  loc_B74614: MemLdRfVar from_stack_1.global_60
  loc_B74617: LdPrVar
  loc_B74619: LateMemCall
  loc_B7461F: LitVarStr var_9C, "  </table>"
  loc_B74624: PopAdLdVar
  loc_B74625: FLdPr Me
  loc_B74628: MemLdRfVar from_stack_1.global_60
  loc_B7462B: LdPrVar
  loc_B7462D: LateMemCall
  loc_B74633: LitVarStr var_9C, "  </td>"
  loc_B74638: PopAdLdVar
  loc_B74639: FLdPr Me
  loc_B7463C: MemLdRfVar from_stack_1.global_60
  loc_B7463F: LdPrVar
  loc_B74641: LateMemCall
  loc_B74647: LitVarStr var_9C, "  </tr>"
  loc_B7464C: PopAdLdVar
  loc_B7464D: FLdPr Me
  loc_B74650: MemLdRfVar from_stack_1.global_60
  loc_B74653: LdPrVar
  loc_B74655: LateMemCall
  loc_B7465B: LitVarStr var_9C, "</table>"
  loc_B74660: PopAdLdVar
  loc_B74661: FLdPr Me
  loc_B74664: MemLdRfVar from_stack_1.global_60
  loc_B74667: LdPrVar
  loc_B74669: LateMemCall
  loc_B7466F: LitI4 0
  loc_B74674: FStR4 var_8C
  loc_B74677: AryUnlock
  loc_B7467A: ExitProcHresult
End Function

Private Function Proc_320_26_BB0A64() 'BB0A64
  'Data Table: 4BFD94
  loc_BB03F0: LitVarStr var_94, "<table align=""center"" height=""500"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_BB03F5: PopAdLdVar
  loc_BB03F6: FLdPr Me
  loc_BB03F9: MemLdRfVar from_stack_1.global_60
  loc_BB03FC: LdPrVar
  loc_BB03FE: LateMemCall
  loc_BB0404: FLdPr Me
  loc_BB0407: MemLdStr global_96
  loc_BB040A: FLdPr Me
  loc_BB040D: MemLdStr global_92
  loc_BB0410: AryLock
  loc_BB0413: Ary1LdRf
  loc_BB0414: FStR4 var_AC
  loc_BB0417: LitI2_Byte 0
  loc_BB0419: CUI1I2
  loc_BB041B: FLdPr Me
  loc_BB041E: MemLdRfVar from_stack_1.global_102
  loc_BB0421: FMemLdR4 var_AC(112)
  loc_BB0426: LitI2_Byte 1
  loc_BB0428: FnUBound
  loc_BB042A: CUI1I4
  loc_BB042C: ForUI1 var_B0
  loc_BB0432: FLdPr Me
  loc_BB0435: MemLdUI1 global_102
  loc_BB0439: CI2UI1
  loc_BB043B: LitI2_Byte 0
  loc_BB043D: EqI2
  loc_BB043E: FLdPr Me
  loc_BB0441: MemLdUI1 global_102
  loc_BB0445: CI4UI1
  loc_BB0446: FMemLdR4 var_AC(112)
  loc_BB044B: Ary1LdPr
  loc_BB044C: MemLdStr global_12
  loc_BB044F: LitStr vbNullString
  loc_BB0452: EqStr
  loc_BB0454: AndI4
  loc_BB0455: BranchF loc_BB045B
  loc_BB0458: Branch loc_BB0A49
  loc_BB045B: LitVarStr var_94, "  <tr>"
  loc_BB0460: PopAdLdVar
  loc_BB0461: FLdPr Me
  loc_BB0464: MemLdRfVar from_stack_1.global_60
  loc_BB0467: LdPrVar
  loc_BB0469: LateMemCall
  loc_BB046F: LitVarStr var_94, "    <td valign=""top"" height=""111"">"
  loc_BB0474: PopAdLdVar
  loc_BB0475: FLdPr Me
  loc_BB0478: MemLdRfVar from_stack_1.global_60
  loc_BB047B: LdPrVar
  loc_BB047D: LateMemCall
  loc_BB0483: FLdPr Me
  loc_BB0486: MemLdUI1 global_102
  loc_BB048A: CI4UI1
  loc_BB048B: FMemLdR4 var_AC(112)
  loc_BB0490: Ary1LdPr
  loc_BB0491: MemLdI2 global_0
  loc_BB0494: BranchF loc_BB04AE
  loc_BB0497: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BB049C: PopAdLdVar
  loc_BB049D: FLdPr Me
  loc_BB04A0: MemLdRfVar from_stack_1.global_60
  loc_BB04A3: LdPrVar
  loc_BB04A5: LateMemCall
  loc_BB04AB: Branch loc_BB04D6
  loc_BB04AE: LitVarStr var_94, "    <br>"
  loc_BB04B3: PopAdLdVar
  loc_BB04B4: FLdPr Me
  loc_BB04B7: MemLdRfVar from_stack_1.global_60
  loc_BB04BA: LdPrVar
  loc_BB04BC: LateMemCall
  loc_BB04C2: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" style=""border:2px solid black"" >"
  loc_BB04C7: PopAdLdVar
  loc_BB04C8: FLdPr Me
  loc_BB04CB: MemLdRfVar from_stack_1.global_60
  loc_BB04CE: LdPrVar
  loc_BB04D0: LateMemCall
  loc_BB04D6: FLdPr Me
  loc_BB04D9: MemLdUI1 global_102
  loc_BB04DD: CI4UI1
  loc_BB04DE: FMemLdR4 var_AC(112)
  loc_BB04E3: AryLock
  loc_BB04E6: Ary1LdRf
  loc_BB04E7: FStR4 var_B8
  loc_BB04EA: LitVarStr var_94, "      <tr align=""center"">"
  loc_BB04EF: PopAdLdVar
  loc_BB04F0: FLdPr Me
  loc_BB04F3: MemLdRfVar from_stack_1.global_60
  loc_BB04F6: LdPrVar
  loc_BB04F8: LateMemCall
  loc_BB04FE: FMemLdI2 var_B8(0)
  loc_BB0503: BranchF loc_BB0539
  loc_BB0506: LitStr "        <td width=""46" & Chr(37) & """ colspan=""3"" rowspan=""2"" class=""NombreMunicipio NoBordeAbajo""><strong>"
  loc_BB0509: FMemLdR4 var_B8(4)
  loc_BB050E: CI4Str
  loc_BB050F: FLdPr Me
  loc_BB0512: MemLdRfVar from_stack_1.global_124
  loc_BB0515: Ary1LdI4
  loc_BB0516: ConcatStr
  loc_BB0517: FStStrNoPop var_BC
  loc_BB051A: LitStr " BIMESTRE</strong></td>"
  loc_BB051D: ConcatStr
  loc_BB051E: CVarStr var_CC
  loc_BB0521: PopAdLdVar
  loc_BB0522: FLdPr Me
  loc_BB0525: MemLdRfVar from_stack_1.global_60
  loc_BB0528: LdPrVar
  loc_BB052A: LateMemCall
  loc_BB0530: FFree1Str var_BC
  loc_BB0533: FFree1Var var_CC = ""
  loc_BB0536: Branch loc_BB054D
  loc_BB0539: LitVarStr var_94, "        <td width=""46" & Chr(37) & """ colspan=""3"" rowspan=""2"" class=""NombreMunicipio NoBordeAbajo""><strong>ANUAL</strong></td>"
  loc_BB053E: PopAdLdVar
  loc_BB053F: FLdPr Me
  loc_BB0542: MemLdRfVar from_stack_1.global_60
  loc_BB0545: LdPrVar
  loc_BB0547: LateMemCall
  loc_BB054D: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">DERECHOS</td>"
  loc_BB0552: PopAdLdVar
  loc_BB0553: FLdPr Me
  loc_BB0556: MemLdRfVar from_stack_1.global_60
  loc_BB0559: LdPrVar
  loc_BB055B: LateMemCall
  loc_BB0561: LitVarStr var_94, "        <td width=""15" & Chr(37) & """ class=""Encabezado"">DESCUENTOS</td>"
  loc_BB0566: PopAdLdVar
  loc_BB0567: FLdPr Me
  loc_BB056A: MemLdRfVar from_stack_1.global_60
  loc_BB056D: LdPrVar
  loc_BB056F: LateMemCall
  loc_BB0575: LitVarStr var_94, "        <td width=""15" & Chr(37) & """ class=""Encabezado"">RECARGO</td>"
  loc_BB057A: PopAdLdVar
  loc_BB057B: FLdPr Me
  loc_BB057E: MemLdRfVar from_stack_1.global_60
  loc_BB0581: LdPrVar
  loc_BB0583: LateMemCall
  loc_BB0589: LitVarStr var_94, "        <td width=""17" & Chr(37) & """ class=""Encabezado"" nowrap>&nbsp;C. GENERACI&Oacute;N&nbsp;</td>"
  loc_BB058E: PopAdLdVar
  loc_BB058F: FLdPr Me
  loc_BB0592: MemLdRfVar from_stack_1.global_60
  loc_BB0595: LdPrVar
  loc_BB0597: LateMemCall
  loc_BB059D: LitVarStr var_94, "        <td class=""Encabezado"" nowrap>&nbsp;TOTAL A PAGAR&nbsp;</td>"
  loc_BB05A2: PopAdLdVar
  loc_BB05A3: FLdPr Me
  loc_BB05A6: MemLdRfVar from_stack_1.global_60
  loc_BB05A9: LdPrVar
  loc_BB05AB: LateMemCall
  loc_BB05B1: LitVarStr var_94, "      </tr>"
  loc_BB05B6: PopAdLdVar
  loc_BB05B7: FLdPr Me
  loc_BB05BA: MemLdRfVar from_stack_1.global_60
  loc_BB05BD: LdPrVar
  loc_BB05BF: LateMemCall
  loc_BB05C5: LitVarStr var_94, "      <tr class=""NormalBloqueFin"" valign=""top"" align=""right"">"
  loc_BB05CA: PopAdLdVar
  loc_BB05CB: FLdPr Me
  loc_BB05CE: MemLdRfVar from_stack_1.global_60
  loc_BB05D1: LdPrVar
  loc_BB05D3: LateMemCall
  loc_BB05D9: LitStr vbNullString
  loc_BB05DC: LitI2_Byte 0
  loc_BB05DE: LitI2_Byte 0
  loc_BB05E0: LitI2_Byte 0
  loc_BB05E2: LitI4 0
  loc_BB05E7: FMemLdR4 var_B8(28)
  loc_BB05EC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB05F1: CVarStr var_CC
  loc_BB05F4: PopAdLdVar
  loc_BB05F5: FLdPr Me
  loc_BB05F8: MemLdRfVar from_stack_1.global_60
  loc_BB05FB: LdPrVar
  loc_BB05FD: LateMemCall
  loc_BB0603: FFree1Var var_CC = ""
  loc_BB0606: LitStr vbNullString
  loc_BB0609: LitI2_Byte 0
  loc_BB060B: LitI2_Byte 0
  loc_BB060D: LitI2_Byte 0
  loc_BB060F: LitI4 0
  loc_BB0614: FMemLdR4 var_B8(32)
  loc_BB0619: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB061E: CVarStr var_CC
  loc_BB0621: PopAdLdVar
  loc_BB0622: FLdPr Me
  loc_BB0625: MemLdRfVar from_stack_1.global_60
  loc_BB0628: LdPrVar
  loc_BB062A: LateMemCall
  loc_BB0630: FFree1Var var_CC = ""
  loc_BB0633: LitStr vbNullString
  loc_BB0636: LitI2_Byte 0
  loc_BB0638: LitI2_Byte 0
  loc_BB063A: LitI2_Byte 0
  loc_BB063C: LitI4 0
  loc_BB0641: FMemLdR4 var_B8(36)
  loc_BB0646: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB064B: CVarStr var_CC
  loc_BB064E: PopAdLdVar
  loc_BB064F: FLdPr Me
  loc_BB0652: MemLdRfVar from_stack_1.global_60
  loc_BB0655: LdPrVar
  loc_BB0657: LateMemCall
  loc_BB065D: FFree1Var var_CC = ""
  loc_BB0660: LitStr vbNullString
  loc_BB0663: LitI2_Byte 0
  loc_BB0665: LitI2_Byte 0
  loc_BB0667: LitI2_Byte 0
  loc_BB0669: LitI4 0
  loc_BB066E: FMemLdR4 var_B8(40)
  loc_BB0673: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB0678: CVarStr var_CC
  loc_BB067B: PopAdLdVar
  loc_BB067C: FLdPr Me
  loc_BB067F: MemLdRfVar from_stack_1.global_60
  loc_BB0682: LdPrVar
  loc_BB0684: LateMemCall
  loc_BB068A: FFree1Var var_CC = ""
  loc_BB068D: LitStr "Totales"
  loc_BB0690: LitI2_Byte 0
  loc_BB0692: LitI2_Byte 0
  loc_BB0694: LitI2_Byte 0
  loc_BB0696: LitI4 0
  loc_BB069B: FMemLdR4 var_B8(44)
  loc_BB06A0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB06A5: CVarStr var_CC
  loc_BB06A8: PopAdLdVar
  loc_BB06A9: FLdPr Me
  loc_BB06AC: MemLdRfVar from_stack_1.global_60
  loc_BB06AF: LdPrVar
  loc_BB06B1: LateMemCall
  loc_BB06B7: FFree1Var var_CC = ""
  loc_BB06BA: LitVarStr var_94, "      </tr>"
  loc_BB06BF: PopAdLdVar
  loc_BB06C0: FLdPr Me
  loc_BB06C3: MemLdRfVar from_stack_1.global_60
  loc_BB06C6: LdPrVar
  loc_BB06C8: LateMemCall
  loc_BB06CE: LitVarStr var_94, "      <tr align=""left"">"
  loc_BB06D3: PopAdLdVar
  loc_BB06D4: FLdPr Me
  loc_BB06D7: MemLdRfVar from_stack_1.global_60
  loc_BB06DA: LdPrVar
  loc_BB06DC: LateMemCall
  loc_BB06E2: LitVarStr var_94, "          <td height=""42"" colspan=""3"" align=""center"" class=""Normal NoBordeArriba"" style=""border-right:none; border-bottom:none"">"
  loc_BB06E7: PopAdLdVar
  loc_BB06E8: FLdPr Me
  loc_BB06EB: MemLdRfVar from_stack_1.global_60
  loc_BB06EE: LdPrVar
  loc_BB06F0: LateMemCall
  loc_BB06F6: LitStr "                  <strong class=""NombreMunicipio"">"
  loc_BB06F9: FLdRfVar var_CE
  loc_BB06FC: FLdPr Me
  loc_BB06FF: MemLdRfVar from_stack_1.global_80
  loc_BB0702: NewIfNullPr clsliquidacion
  loc_BB0705: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BB070A: FLdI2 var_CE
  loc_BB070D: CStrUI1
  loc_BB070F: FStStrNoPop var_BC
  loc_BB0712: ConcatStr
  loc_BB0713: FStStrNoPop var_D4
  loc_BB0716: LitStr "</strong>"
  loc_BB0719: ConcatStr
  loc_BB071A: CVarStr var_CC
  loc_BB071D: PopAdLdVar
  loc_BB071E: FLdPr Me
  loc_BB0721: MemLdRfVar from_stack_1.global_60
  loc_BB0724: LdPrVar
  loc_BB0726: LateMemCall
  loc_BB072C: FFreeStr var_BC = ""
  loc_BB0733: FFree1Var var_CC = ""
  loc_BB0736: LitVarStr var_94, "            </td>"
  loc_BB073B: PopAdLdVar
  loc_BB073C: FLdPr Me
  loc_BB073F: MemLdRfVar from_stack_1.global_60
  loc_BB0742: LdPrVar
  loc_BB0744: LateMemCall
  loc_BB074A: LitVarStr var_94, "          <td align=""center"" colspan=""9"" rowspan=""2"" class=""Normal"" style=""border-left:none"">"
  loc_BB074F: PopAdLdVar
  loc_BB0750: FLdPr Me
  loc_BB0753: MemLdRfVar from_stack_1.global_60
  loc_BB0756: LdPrVar
  loc_BB0758: LateMemCall
  loc_BB075E: LitVarStr var_94, "            <table align=""center"">"
  loc_BB0763: PopAdLdVar
  loc_BB0764: FLdPr Me
  loc_BB0767: MemLdRfVar from_stack_1.global_60
  loc_BB076A: LdPrVar
  loc_BB076C: LateMemCall
  loc_BB0772: LitStr "              <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_BB0775: LitI4 1
  loc_BB077A: FMemLdR4 var_B8(20)
  loc_BB077F: Ary1LdI4
  loc_BB0780: ConcatStr
  loc_BB0781: FStStrNoPop var_BC
  loc_BB0784: LitStr "</td></tr>"
  loc_BB0787: ConcatStr
  loc_BB0788: CVarStr var_CC
  loc_BB078B: PopAdLdVar
  loc_BB078C: FLdPr Me
  loc_BB078F: MemLdRfVar from_stack_1.global_60
  loc_BB0792: LdPrVar
  loc_BB0794: LateMemCall
  loc_BB079A: FFree1Str var_BC
  loc_BB079D: FFree1Var var_CC = ""
  loc_BB07A0: LitStr "              <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BB07A3: LitI4 0
  loc_BB07A8: FMemLdR4 var_B8(20)
  loc_BB07AD: Ary1LdI4
  loc_BB07AE: ConcatStr
  loc_BB07AF: FStStrNoPop var_BC
  loc_BB07B2: LitStr "</td></tr>"
  loc_BB07B5: ConcatStr
  loc_BB07B6: CVarStr var_CC
  loc_BB07B9: PopAdLdVar
  loc_BB07BA: FLdPr Me
  loc_BB07BD: MemLdRfVar from_stack_1.global_60
  loc_BB07C0: LdPrVar
  loc_BB07C2: LateMemCall
  loc_BB07C8: FFree1Str var_BC
  loc_BB07CB: FFree1Var var_CC = ""
  loc_BB07CE: LitVarStr var_94, "            </table>"
  loc_BB07D3: PopAdLdVar
  loc_BB07D4: FLdPr Me
  loc_BB07D7: MemLdRfVar from_stack_1.global_60
  loc_BB07DA: LdPrVar
  loc_BB07DC: LateMemCall
  loc_BB07E2: LitVarStr var_94, "          </td>"
  loc_BB07E7: PopAdLdVar
  loc_BB07E8: FLdPr Me
  loc_BB07EB: MemLdRfVar from_stack_1.global_60
  loc_BB07EE: LdPrVar
  loc_BB07F0: LateMemCall
  loc_BB07F6: LitVarStr var_94, "      </tr>"
  loc_BB07FB: PopAdLdVar
  loc_BB07FC: FLdPr Me
  loc_BB07FF: MemLdRfVar from_stack_1.global_60
  loc_BB0802: LdPrVar
  loc_BB0804: LateMemCall
  loc_BB080A: LitVarStr var_94, "      <tr align=""left"">"
  loc_BB080F: PopAdLdVar
  loc_BB0810: FLdPr Me
  loc_BB0813: MemLdRfVar from_stack_1.global_60
  loc_BB0816: LdPrVar
  loc_BB0818: LateMemCall
  loc_BB081E: LitVarStr var_94, "        <td style=""border-right:none; border-top:none"" colspan=""3"" class=""Normal"" valign=""bottom"">"
  loc_BB0823: PopAdLdVar
  loc_BB0824: FLdPr Me
  loc_BB0827: MemLdRfVar from_stack_1.global_60
  loc_BB082A: LdPrVar
  loc_BB082C: LateMemCall
  loc_BB0832: LitVarStr var_94, "          <table border=""1"" cellpadding=""0"" cellspacing=""0"" width=""100" & Chr(37) & """>"
  loc_BB0837: PopAdLdVar
  loc_BB0838: FLdPr Me
  loc_BB083B: MemLdRfVar from_stack_1.global_60
  loc_BB083E: LdPrVar
  loc_BB0840: LateMemCall
  loc_BB0846: LitVarStr var_94, "              <tr align=""center"" class=""Encabezado"">"
  loc_BB084B: PopAdLdVar
  loc_BB084C: FLdPr Me
  loc_BB084F: MemLdRfVar from_stack_1.global_60
  loc_BB0852: LdPrVar
  loc_BB0854: LateMemCall
  loc_BB085A: FMemLdI2 var_B8(0)
  loc_BB085F: BranchF loc_BB0931
  loc_BB0862: LitVarStr var_94, "                <td>PERIODO</td>"
  loc_BB0867: PopAdLdVar
  loc_BB0868: FLdPr Me
  loc_BB086B: MemLdRfVar from_stack_1.global_60
  loc_BB086E: LdPrVar
  loc_BB0870: LateMemCall
  loc_BB0876: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BB087B: PopAdLdVar
  loc_BB087C: FLdPr Me
  loc_BB087F: MemLdRfVar from_stack_1.global_60
  loc_BB0882: LdPrVar
  loc_BB0884: LateMemCall
  loc_BB088A: LitVarStr var_94, "              </tr>"
  loc_BB088F: PopAdLdVar
  loc_BB0890: FLdPr Me
  loc_BB0893: MemLdRfVar from_stack_1.global_60
  loc_BB0896: LdPrVar
  loc_BB0898: LateMemCall
  loc_BB089E: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BB08A3: PopAdLdVar
  loc_BB08A4: FLdPr Me
  loc_BB08A7: MemLdRfVar from_stack_1.global_60
  loc_BB08AA: LdPrVar
  loc_BB08AC: LateMemCall
  loc_BB08B2: LitStr "                <td>"
  loc_BB08B5: FMemLdR4 var_B8(4)
  loc_BB08BA: ConcatStr
  loc_BB08BB: FStStrNoPop var_BC
  loc_BB08BE: LitStr "/"
  loc_BB08C1: ConcatStr
  loc_BB08C2: FStStrNoPop var_D4
  loc_BB08C5: FLdRfVar var_CE
  loc_BB08C8: FLdPr Me
  loc_BB08CB: MemLdRfVar from_stack_1.global_80
  loc_BB08CE: NewIfNullPr clsliquidacion
  loc_BB08D1: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BB08D6: FLdI2 var_CE
  loc_BB08D9: CStrUI1
  loc_BB08DB: FStStrNoPop var_D8
  loc_BB08DE: ConcatStr
  loc_BB08DF: FStStrNoPop var_DC
  loc_BB08E2: LitStr "</td>"
  loc_BB08E5: ConcatStr
  loc_BB08E6: CVarStr var_CC
  loc_BB08E9: PopAdLdVar
  loc_BB08EA: FLdPr Me
  loc_BB08ED: MemLdRfVar from_stack_1.global_60
  loc_BB08F0: LdPrVar
  loc_BB08F2: LateMemCall
  loc_BB08F8: FFreeStr var_BC = "": var_D4 = "": var_D8 = ""
  loc_BB0903: FFree1Var var_CC = ""
  loc_BB0906: LitStr "                <td>"
  loc_BB0909: FMemLdR4 var_B8(16)
  loc_BB090E: ConcatStr
  loc_BB090F: FStStrNoPop var_BC
  loc_BB0912: LitStr "</td>"
  loc_BB0915: ConcatStr
  loc_BB0916: CVarStr var_CC
  loc_BB0919: PopAdLdVar
  loc_BB091A: FLdPr Me
  loc_BB091D: MemLdRfVar from_stack_1.global_60
  loc_BB0920: LdPrVar
  loc_BB0922: LateMemCall
  loc_BB0928: FFree1Str var_BC
  loc_BB092B: FFree1Var var_CC = ""
  loc_BB092E: Branch loc_BB0995
  loc_BB0931: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BB0936: PopAdLdVar
  loc_BB0937: FLdPr Me
  loc_BB093A: MemLdRfVar from_stack_1.global_60
  loc_BB093D: LdPrVar
  loc_BB093F: LateMemCall
  loc_BB0945: LitVarStr var_94, "              </tr>"
  loc_BB094A: PopAdLdVar
  loc_BB094B: FLdPr Me
  loc_BB094E: MemLdRfVar from_stack_1.global_60
  loc_BB0951: LdPrVar
  loc_BB0953: LateMemCall
  loc_BB0959: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BB095E: PopAdLdVar
  loc_BB095F: FLdPr Me
  loc_BB0962: MemLdRfVar from_stack_1.global_60
  loc_BB0965: LdPrVar
  loc_BB0967: LateMemCall
  loc_BB096D: LitStr "                <td>"
  loc_BB0970: FMemLdR4 var_B8(16)
  loc_BB0975: ConcatStr
  loc_BB0976: FStStrNoPop var_BC
  loc_BB0979: LitStr "</td>"
  loc_BB097C: ConcatStr
  loc_BB097D: CVarStr var_CC
  loc_BB0980: PopAdLdVar
  loc_BB0981: FLdPr Me
  loc_BB0984: MemLdRfVar from_stack_1.global_60
  loc_BB0987: LdPrVar
  loc_BB0989: LateMemCall
  loc_BB098F: FFree1Str var_BC
  loc_BB0992: FFree1Var var_CC = ""
  loc_BB0995: LitVarStr var_94, "              </tr>"
  loc_BB099A: PopAdLdVar
  loc_BB099B: FLdPr Me
  loc_BB099E: MemLdRfVar from_stack_1.global_60
  loc_BB09A1: LdPrVar
  loc_BB09A3: LateMemCall
  loc_BB09A9: LitVarStr var_94, "          </table>"
  loc_BB09AE: PopAdLdVar
  loc_BB09AF: FLdPr Me
  loc_BB09B2: MemLdRfVar from_stack_1.global_60
  loc_BB09B5: LdPrVar
  loc_BB09B7: LateMemCall
  loc_BB09BD: LitVarStr var_94, "        </td>"
  loc_BB09C2: PopAdLdVar
  loc_BB09C3: FLdPr Me
  loc_BB09C6: MemLdRfVar from_stack_1.global_60
  loc_BB09C9: LdPrVar
  loc_BB09CB: LateMemCall
  loc_BB09D1: LitVarStr var_94, "      </tr>"
  loc_BB09D6: PopAdLdVar
  loc_BB09D7: FLdPr Me
  loc_BB09DA: MemLdRfVar from_stack_1.global_60
  loc_BB09DD: LdPrVar
  loc_BB09DF: LateMemCall
  loc_BB09E5: LitVarStr var_94, "    </table>"
  loc_BB09EA: PopAdLdVar
  loc_BB09EB: FLdPr Me
  loc_BB09EE: MemLdRfVar from_stack_1.global_60
  loc_BB09F1: LdPrVar
  loc_BB09F3: LateMemCall
  loc_BB09F9: FMemLdI2 var_B8(0)
  loc_BB09FE: NotI4
  loc_BB09FF: BranchF loc_BB0A16
  loc_BB0A02: LitVarStr var_94, "    <br>"
  loc_BB0A07: PopAdLdVar
  loc_BB0A08: FLdPr Me
  loc_BB0A0B: MemLdRfVar from_stack_1.global_60
  loc_BB0A0E: LdPrVar
  loc_BB0A10: LateMemCall
  loc_BB0A16: LitVarStr var_94, "  </td>"
  loc_BB0A1B: PopAdLdVar
  loc_BB0A1C: FLdPr Me
  loc_BB0A1F: MemLdRfVar from_stack_1.global_60
  loc_BB0A22: LdPrVar
  loc_BB0A24: LateMemCall
  loc_BB0A2A: LitVarStr var_94, "  </tr>"
  loc_BB0A2F: PopAdLdVar
  loc_BB0A30: FLdPr Me
  loc_BB0A33: MemLdRfVar from_stack_1.global_60
  loc_BB0A36: LdPrVar
  loc_BB0A38: LateMemCall
  loc_BB0A3E: LitI4 0
  loc_BB0A43: FStR4 var_B8
  loc_BB0A46: AryUnlock
  loc_BB0A49: FLdPr Me
  loc_BB0A4C: MemLdRfVar from_stack_1.global_102
  loc_BB0A4F: NextUI1
  loc_BB0A55: LitI4 0
  loc_BB0A5A: FStR4 var_AC
  loc_BB0A5D: AryUnlock
  loc_BB0A60: ExitProcHresult
End Function

Private Function Proc_320_27_B031B0() 'B031B0
  'Data Table: 4BFD94
  loc_B02FBC: FLdPr Me
  loc_B02FBF: MemLdStr global_96
  loc_B02FC2: FLdPr Me
  loc_B02FC5: MemLdStr global_92
  loc_B02FC8: AryLock
  loc_B02FCB: Ary1LdRf
  loc_B02FCC: FStR4 var_8C
  loc_B02FCF: LitVarStr var_9C, "  <tr><td><br></td></tr>"
  loc_B02FD4: PopAdLdVar
  loc_B02FD5: FLdPr Me
  loc_B02FD8: MemLdRfVar from_stack_1.global_60
  loc_B02FDB: LdPrVar
  loc_B02FDD: LateMemCall
  loc_B02FE3: LitVarStr var_9C, "  <tr>"
  loc_B02FE8: PopAdLdVar
  loc_B02FE9: FLdPr Me
  loc_B02FEC: MemLdRfVar from_stack_1.global_60
  loc_B02FEF: LdPrVar
  loc_B02FF1: LateMemCall
  loc_B02FF7: LitVarStr var_9C, "    <td valign=""bottom"">"
  loc_B02FFC: PopAdLdVar
  loc_B02FFD: FLdPr Me
  loc_B03000: MemLdRfVar from_stack_1.global_60
  loc_B03003: LdPrVar
  loc_B03005: LateMemCall
  loc_B0300B: LitVarStr var_9C, "     <table align=""center"" height=""100" & Chr(37) & """ width=""99" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0""><tr>"
  loc_B03010: PopAdLdVar
  loc_B03011: FLdPr Me
  loc_B03014: MemLdRfVar from_stack_1.global_60
  loc_B03017: LdPrVar
  loc_B03019: LateMemCall
  loc_B0301F: LitVarStr var_9C, "        <td height=""100" & Chr(37) & """ class=""NormalAbajo MargIzq"">"
  loc_B03024: PopAdLdVar
  loc_B03025: FLdPr Me
  loc_B03028: MemLdRfVar from_stack_1.global_60
  loc_B0302B: LdPrVar
  loc_B0302D: LateMemCall
  loc_B03033: LitVarStr var_9C, "        <img src=""l6.jpg"" width=""166"" height=""131"" class=""Gina"">"
  loc_B03038: PopAdLdVar
  loc_B03039: FLdPr Me
  loc_B0303C: MemLdRfVar from_stack_1.global_60
  loc_B0303F: LdPrVar
  loc_B03041: LateMemCall
  loc_B03047: LitVarStr var_9C, "        Estimado Vecino: Para informes comunicarse al tel. 4498134 o e-mail patentes_generales@guaymallen.gob.ar<br><br>"
  loc_B0304C: PopAdLdVar
  loc_B0304D: FLdPr Me
  loc_B03050: MemLdRfVar from_stack_1.global_60
  loc_B03053: LdPrVar
  loc_B03055: LateMemCall
  loc_B0305B: LitVarStr var_9C, "        <strong>¡REGISTRÁ TU DOMICILIO FISCAL ELECTRÓNICO!</strong> Podés hacerlo al e-mail patentes_generales@guaymallen.gob.ar<br><br><br>"
  loc_B03060: PopAdLdVar
  loc_B03061: FLdPr Me
  loc_B03064: MemLdRfVar from_stack_1.global_60
  loc_B03067: LdPrVar
  loc_B03069: LateMemCall
  loc_B0306F: LitVarStr var_9C, "0"
  loc_B03074: FStVarCopyObj var_BC
  loc_B03077: FLdRfVar var_BC
  loc_B0307A: LitI4 6
  loc_B0307F: FLdRfVar var_CC
  loc_B03082: ImpAdCallFPR4  = String(, )
  loc_B03087: LitVarStr var_EC, "        C&oacute;digo pagomiscuentas.com: <strong>7"
  loc_B0308C: LitI4 1
  loc_B03091: LitI4 1
  loc_B03096: FLdRfVar var_CC
  loc_B03099: FMemLdRf B8
  loc_B0309E: CVarRef
  loc_B030A3: FLdRfVar var_DC
  loc_B030A6: ImpAdCallFPR4  = Format(, )
  loc_B030AB: FLdRfVar var_DC
  loc_B030AE: ConcatVar var_FC
  loc_B030B2: LitVarStr var_10C, "</strong><br>"
  loc_B030B7: ConcatVar var_11C
  loc_B030BB: PopAdLdVar
  loc_B030BC: FLdPr Me
  loc_B030BF: MemLdRfVar from_stack_1.global_60
  loc_B030C2: LdPrVar
  loc_B030C4: LateMemCall
  loc_B030CA: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B030D7: LitVarStr var_9C, "0"
  loc_B030DC: FStVarCopyObj var_BC
  loc_B030DF: FLdRfVar var_BC
  loc_B030E2: LitI4 &HC
  loc_B030E7: FLdRfVar var_CC
  loc_B030EA: ImpAdCallFPR4  = String(, )
  loc_B030EF: LitVarStr var_EC, "        C&oacute;digo RED LINK: <strong>7"
  loc_B030F4: LitI4 1
  loc_B030F9: LitI4 1
  loc_B030FE: FLdRfVar var_CC
  loc_B03101: FMemLdRf B8
  loc_B03106: CVarRef
  loc_B0310B: FLdRfVar var_DC
  loc_B0310E: ImpAdCallFPR4  = Format(, )
  loc_B03113: FLdRfVar var_DC
  loc_B03116: ConcatVar var_FC
  loc_B0311A: LitVarStr var_10C, "</strong><br><br>"
  loc_B0311F: ConcatVar var_11C
  loc_B03123: PopAdLdVar
  loc_B03124: FLdPr Me
  loc_B03127: MemLdRfVar from_stack_1.global_60
  loc_B0312A: LdPrVar
  loc_B0312C: LateMemCall
  loc_B03132: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B0313F: LitVarStr var_9C, "        <strong>&iexcl;Apoye a SU MUNICIPIO pagando en t&eacute;rmino!</strong>"
  loc_B03144: PopAdLdVar
  loc_B03145: FLdPr Me
  loc_B03148: MemLdRfVar from_stack_1.global_60
  loc_B0314B: LdPrVar
  loc_B0314D: LateMemCall
  loc_B03153: LitVarStr var_9C, "      </td></tr></table>"
  loc_B03158: PopAdLdVar
  loc_B03159: FLdPr Me
  loc_B0315C: MemLdRfVar from_stack_1.global_60
  loc_B0315F: LdPrVar
  loc_B03161: LateMemCall
  loc_B03167: LitVarStr var_9C, "    </td>"
  loc_B0316C: PopAdLdVar
  loc_B0316D: FLdPr Me
  loc_B03170: MemLdRfVar from_stack_1.global_60
  loc_B03173: LdPrVar
  loc_B03175: LateMemCall
  loc_B0317B: LitVarStr var_9C, "  </tr>"
  loc_B03180: PopAdLdVar
  loc_B03181: FLdPr Me
  loc_B03184: MemLdRfVar from_stack_1.global_60
  loc_B03187: LdPrVar
  loc_B03189: LateMemCall
  loc_B0318F: LitVarStr var_9C, "</table>"
  loc_B03194: PopAdLdVar
  loc_B03195: FLdPr Me
  loc_B03198: MemLdRfVar from_stack_1.global_60
  loc_B0319B: LdPrVar
  loc_B0319D: LateMemCall
  loc_B031A3: LitI4 0
  loc_B031A8: FStR4 var_8C
  loc_B031AB: AryUnlock
  loc_B031AE: ExitProcHresult
End Function

Private Function Proc_320_28_9F4150() '9F4150
  'Data Table: 4BFD94
  loc_9F4124: LitVarStr var_94, "</body>"
  loc_9F4129: PopAdLdVar
  loc_9F412A: FLdPr Me
  loc_9F412D: MemLdRfVar from_stack_1.global_60
  loc_9F4130: LdPrVar
  loc_9F4132: LateMemCall
  loc_9F4138: LitVarStr var_94, "</html>"
  loc_9F413D: PopAdLdVar
  loc_9F413E: FLdPr Me
  loc_9F4141: MemLdRfVar from_stack_1.global_60
  loc_9F4144: LdPrVar
  loc_9F4146: LateMemCall
  loc_9F414C: ExitProcHresult
End Function
