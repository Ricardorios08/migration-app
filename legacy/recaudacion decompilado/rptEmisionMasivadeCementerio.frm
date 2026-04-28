VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Begin VB.Form rptEmisionMasivadeCementerio
  Caption = "Emisión Masiva de Cementerio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEmisionMasivadeCementerio.frx":0000
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
    OleObjectBlob = "rptEmisionMasivadeCementerio.frx":08CA
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
    Picture = "rptEmisionMasivadeCementerio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEmisionMasivadeCementerio.frx":0B9C
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
    Caption = "1"
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
      Begin MSMask.MaskEdBox OrdeLiceDesdeMsk
        Left = 2130
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptEmisionMasivadeCementerio.frx":0C00
      End
      Begin MSMask.MaskEdBox OrdeLiceHastaMsk
        Left = 5970
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptEmisionMasivadeCementerio.frx":0C98
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
      OleObjectBlob = "rptEmisionMasivadeCementerio.frx":0D30
    End
    Begin MSComctlLib.ProgressBar pbar
      Left = 10140
      Top = 960
      Width = 735
      Height = 4575
      Visible = 0   'False
      TabIndex = 15
      OleObjectBlob = "rptEmisionMasivadeCementerio.frx":1036
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
    OleObjectBlob = "rptEmisionMasivadeCementerio.frx":109E
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 7680
    Top = 6360
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptEmisionMasivadeCementerio.frx":1152
  End
End

Attribute VB_Name = "rptEmisionMasivadeCementerio"

Public bGenerado As Boolean

Private Type UDT_1_0056309C
  bStruc(48) As Byte ' String fields: 11
End Type

Private Type UDT_2_00560FDC
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_3_005630DC
  bStruc(120) As Byte ' String fields: 30
End Type


Private Sub cmdNueva_Click() 'AD9B14
  'Data Table: 4BADEC
  loc_AD99D0: LitI2_Byte 0
  loc_AD99D2: FLdPr Me
  loc_AD99D5: MemStI2 bGenerado
  loc_AD99D8: LitI2_Byte &HFF
  loc_AD99DA: ILdRf Me
  loc_AD99DD: CastAd
  loc_AD99E0: FStAdFunc var_88
  loc_AD99E3: FLdRfVar var_88
  loc_AD99E6: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AD99EB: FFree1Ad var_88
  loc_AD99EE: FLdPr Me
  loc_AD99F1: MemLdRfVar from_stack_1.global_80
  loc_AD99F4: NewIfNullPr clsliquidacion
  loc_AD99F7: Call clsliquidacion.Requery()
  loc_AD99FC: LitVarStr var_98, vbNullString
  loc_AD9A01: PopAdLdVar
  loc_AD9A02: FLdPr Me
  loc_AD9A05: VCallAd Control_ID_OrdeLiceDesdeMsk
  loc_AD9A08: FStAdFunc var_88
  loc_AD9A0B: FLdPr var_88
  loc_AD9A0E: LateIdSt
  loc_AD9A13: FFree1Ad var_88
  loc_AD9A16: LitVarStr var_98, vbNullString
  loc_AD9A1B: PopAdLdVar
  loc_AD9A1C: FLdPr Me
  loc_AD9A1F: VCallAd Control_ID_OrdeLiceHastaMsk
  loc_AD9A22: FStAdFunc var_88
  loc_AD9A25: FLdPr var_88
  loc_AD9A28: LateIdSt
  loc_AD9A2D: FFree1Ad var_88
  loc_AD9A30: LitStr vbNullString
  loc_AD9A33: FLdPr Me
  loc_AD9A36: VCallAd Control_ID_ProgresoLbl
  loc_AD9A39: FStAdFunc var_88
  loc_AD9A3C: FLdPr var_88
  loc_AD9A3F: Me.Caption = from_stack_1
  loc_AD9A44: FFree1Ad var_88
  loc_AD9A47: FLdRfVar var_AC
  loc_AD9A4A: FLdPr Me
  loc_AD9A4D: MemLdRfVar from_stack_1.global_80
  loc_AD9A50: NewIfNullPr clsliquidacion
  loc_AD9A53: from_stack_1 = clsliquidacion.RecordCount
  loc_AD9A58: ILdRf var_AC
  loc_AD9A5B: LitI4 0
  loc_AD9A60: GtI4
  loc_AD9A61: BranchF loc_AD9AD3
  loc_AD9A64: LitI4 0
  loc_AD9A69: LitI4 1
  loc_AD9A6E: FLdRfVar var_B0
  loc_AD9A71: Redim
  loc_AD9A7B: FLdPr Me
  loc_AD9A7E: MemLdRfVar from_stack_1.global_80
  loc_AD9A81: NewIfNullAd
  loc_AD9A84: FStAd var_88 
  loc_AD9A88: FLdRfVar var_88
  loc_AD9A8B: CVarRef
  loc_AD9A90: ParmAry1St
  loc_AD9A96: FLdPr Me
  loc_AD9A99: VCallAd Control_ID_dgdLiquidacion
  loc_AD9A9C: CVarAd
  loc_AD9AA0: ParmAry1St
  loc_AD9AA6: FLdRfVar var_B0
  loc_AD9AA9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AD9AAE: ILdRf var_88
  loc_AD9AB1: CastAd
  loc_AD9AB4: FLdPr Me
  loc_AD9AB7: MemStAdFunc
  loc_AD9ABB: FLdRfVar var_B0
  loc_AD9ABE: Erase
  loc_AD9ABF: FFree1Ad var_88
  loc_AD9AC2: FLdPr Me
  loc_AD9AC5: MemLdRfVar from_stack_1.global_80
  loc_AD9AC8: NewIfNullPr clsliquidacion
  loc_AD9ACB: Call clsliquidacion.MoveLast()
  loc_AD9AD0: Branch loc_AD9AEF
  loc_AD9AD3: LitStr "No existen liquidaciones para listar"
  loc_AD9AD6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD9ADB: ILdRf Me
  loc_AD9ADE: CastAd
  loc_AD9AE1: FStAdFunc var_88
  loc_AD9AE4: FLdRfVar var_88
  loc_AD9AE7: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_AD9AEC: FFree1Ad var_88
  loc_AD9AEF: LitStr vbNullString
  loc_AD9AF2: FLdPr Me
  loc_AD9AF5: Me.Tag = from_stack_1
  loc_AD9AFA: Call HabilitarCriterio()
  loc_AD9AFF: ILdRf Me
  loc_AD9B02: CastAd
  loc_AD9B05: FStAdFunc var_88
  loc_AD9B08: FLdRfVar var_88
  loc_AD9B0B: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AD9B10: FFree1Ad var_88
  loc_AD9B13: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'B0E33C
  'Data Table: 4BADEC
  loc_B0E108: LitVarStr var_94, "Enviando a impresora predeterminada..."
  loc_B0E10D: PopAdLdVar
  loc_B0E10E: FLdPr Me
  loc_B0E111: VCallAd Control_ID_statusBar
  loc_B0E114: FStAdFunc var_A8
  loc_B0E117: FLdPr var_A8
  loc_B0E11A: LateIdSt
  loc_B0E11F: FFree1Ad var_A8
  loc_B0E122: ILdRf Me
  loc_B0E125: CastAd
  loc_B0E128: FStAdFunc var_A8
  loc_B0E12B: FLdRfVar var_A8
  loc_B0E12E: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B0E133: FFree1Ad var_A8
  loc_B0E136: LitVar_FALSE
  loc_B0E13A: PopAdLdVar
  loc_B0E13B: FLdPr Me
  loc_B0E13E: VCallAd Control_ID_dgdLiquidacion
  loc_B0E141: FStAdFunc var_A8
  loc_B0E144: FLdPr var_A8
  loc_B0E147: LateIdSt
  loc_B0E14C: FFree1Ad var_A8
  loc_B0E14F: Call GeneraReporte()
  loc_B0E154: FLdPr Me
  loc_B0E157: MemLdI2 bGenerado
  loc_B0E15A: BranchF loc_B0E2F1
  loc_B0E15D: FLdPr Me
  loc_B0E160: MemLdStr global_92
  loc_B0E163: LitI2_Byte 1
  loc_B0E165: FnUBound
  loc_B0E167: CR8I4
  loc_B0E168: CVarR4
  loc_B0E16C: PopAdLdVar
  loc_B0E16D: FLdPr Me
  loc_B0E170: VCallAd Control_ID_pbar
  loc_B0E173: FStAdFunc var_A8
  loc_B0E176: FLdPr var_A8
  loc_B0E179: LateIdSt
  loc_B0E17E: FFree1Ad var_A8
  loc_B0E181: LitVar_TRUE var_94
  loc_B0E184: PopAdLdVar
  loc_B0E185: FLdPr Me
  loc_B0E188: VCallAd Control_ID_pbar
  loc_B0E18B: FStAdFunc var_A8
  loc_B0E18E: FLdPr var_A8
  loc_B0E191: LateIdSt
  loc_B0E196: FFree1Ad var_A8
  loc_B0E199: LitI4 1
  loc_B0E19E: FLdPr Me
  loc_B0E1A1: MemLdRfVar from_stack_1.global_96
  loc_B0E1A4: FLdPr Me
  loc_B0E1A7: MemLdStr global_92
  loc_B0E1AA: LitI2_Byte 1
  loc_B0E1AC: FnUBound
  loc_B0E1AE: ForI4 var_B0
  loc_B0E1B4: LitStr " - "
  loc_B0E1B7: FLdPr Me
  loc_B0E1BA: MemLdStr global_96
  loc_B0E1BD: FLdPr Me
  loc_B0E1C0: MemLdStr global_92
  loc_B0E1C3: Ary1LdPr
  loc_B0E1C4: MemLdStr global_92
  loc_B0E1C7: ConcatStr
  loc_B0E1C8: FStStrNoPop var_B4
  loc_B0E1CB: FLdPr Me
  loc_B0E1CE: Me.Tag = from_stack_1
  loc_B0E1D3: FFree1Str var_B4
  loc_B0E1D6: ILdRf Me
  loc_B0E1D9: CastAd
  loc_B0E1DC: FStAdFunc var_A8
  loc_B0E1DF: FLdRfVar var_A8
  loc_B0E1E2: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_B0E1E7: FFree1Ad var_A8
  loc_B0E1EA: FLdPr Me
  loc_B0E1ED: MemLdStr global_96
  loc_B0E1F0: CR8I4
  loc_B0E1F1: CVarR4
  loc_B0E1F5: PopAdLdVar
  loc_B0E1F6: FLdPr Me
  loc_B0E1F9: VCallAd Control_ID_pbar
  loc_B0E1FC: FStAdFunc var_A8
  loc_B0E1FF: FLdPr var_A8
  loc_B0E202: LateIdSt
  loc_B0E207: FFree1Ad var_A8
  loc_B0E20A: FLdPr Me
  loc_B0E20D: MemLdStr global_96
  loc_B0E210: CStrI4
  loc_B0E212: FStStrNoPop var_B4
  loc_B0E215: LitStr "/"
  loc_B0E218: ConcatStr
  loc_B0E219: FStStrNoPop var_B8
  loc_B0E21C: FLdPr Me
  loc_B0E21F: MemLdStr global_92
  loc_B0E222: LitI2_Byte 1
  loc_B0E224: FnUBound
  loc_B0E226: CStrI4
  loc_B0E228: FStStrNoPop var_BC
  loc_B0E22B: ConcatStr
  loc_B0E22C: FStStrNoPop var_C0
  loc_B0E22F: FLdPr Me
  loc_B0E232: VCallAd Control_ID_ProgresoLbl
  loc_B0E235: FStAdFunc var_A8
  loc_B0E238: FLdPr var_A8
  loc_B0E23B: Me.Caption = from_stack_1
  loc_B0E240: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_B0E24B: FFree1Ad var_A8
  loc_B0E24E: Call GeneraHTML()
  loc_B0E253: ImpAdLdRf MemVar_D93C84
  loc_B0E256: CDargRef
  loc_B0E25A: FLdPr Me
  loc_B0E25D: VCallAd Control_ID_wbbReporte
  loc_B0E260: FStAdFunc var_A8
  loc_B0E263: FLdPr var_A8
  loc_B0E266: LateIdCall
  loc_B0E26E: FFree1Ad var_A8
  loc_B0E271: ImpAdCallFPR4 DoEvents()
  loc_B0E276: FLdPr Me
  loc_B0E279: VCallAd Control_ID_wbbReporte
  loc_B0E27C: FStAdFunc var_A8
  loc_B0E27F: FLdPr var_A8
  loc_B0E282: LateIdLdVar var_D0 DispID_-525 -1
  loc_B0E289: CI4Var
  loc_B0E28B: LitI4 4
  loc_B0E290: NeI4
  loc_B0E291: FFree1Ad var_A8
  loc_B0E294: FFree1Var var_D0 = ""
  loc_B0E297: BranchT loc_B0E271
  loc_B0E29A: LitVarI4
  loc_B0E2A2: PopAdLdVar
  loc_B0E2A3: LitVarI4
  loc_B0E2AB: PopAdLdVar
  loc_B0E2AC: LitVarI2 var_110, 2
  loc_B0E2B1: PopAdLdVar
  loc_B0E2B2: LitVar_NULL
  loc_B0E2B6: PopAdLdVar
  loc_B0E2B7: FLdPr Me
  loc_B0E2BA: VCallAd Control_ID_wbbReporte
  loc_B0E2BD: FStAdFunc var_A8
  loc_B0E2C0: FLdPr var_A8
  loc_B0E2C3: LateIdCall
  loc_B0E2CB: FFree1Ad var_A8
  loc_B0E2CE: FLdPr Me
  loc_B0E2D1: MemLdRfVar from_stack_1.global_96
  loc_B0E2D4: NextI4 var_B0, loc_B0E1B4
  loc_B0E2D9: LitVar_TRUE var_94
  loc_B0E2DC: PopAdLdVar
  loc_B0E2DD: FLdPr Me
  loc_B0E2E0: VCallAd Control_ID_pbar
  loc_B0E2E3: FStAdFunc var_A8
  loc_B0E2E6: FLdPr var_A8
  loc_B0E2E9: LateIdSt
  loc_B0E2EE: FFree1Ad var_A8
  loc_B0E2F1: ILdRf Me
  loc_B0E2F4: CastAd
  loc_B0E2F7: FStAdFunc var_A8
  loc_B0E2FA: FLdRfVar var_A8
  loc_B0E2FD: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B0E302: FFree1Ad var_A8
  loc_B0E305: FLdPr Me
  loc_B0E308: VCallAd Control_ID_dgdLiquidacion
  loc_B0E30B: FStAdFunc var_A8
  loc_B0E30E: FLdPr var_A8
  loc_B0E311: LateIdLdVar var_D0 DispID_13 -32767
  loc_B0E318: CBoolVar
  loc_B0E31A: FFree1Ad var_A8
  loc_B0E31D: FFree1Var var_D0 = ""
  loc_B0E320: BranchF loc_B0E33A
  loc_B0E323: FLdPr Me
  loc_B0E326: VCallAd Control_ID_dgdLiquidacion
  loc_B0E329: FStAdFunc var_A8
  loc_B0E32C: FLdPr var_A8
  loc_B0E32F: LateIdCall
  loc_B0E337: FFree1Ad var_A8
  loc_B0E33A: ExitProcHresult
End Sub

Private Sub OrdeLiceDesdeMsk_UnknownEvent_0 '9BE628
  'Data Table: 4BADEC
  loc_9BE614: FLdPr Me
  loc_9BE617: VCallAd Control_ID_OrdeLiceDesdeMsk
  loc_9BE61A: CVarAd
  loc_9BE61E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE623: FFree1Var var_94 = ""
  loc_9BE626: ExitProcHresult
End Sub

Private Sub OrdeLiceDesdeMsk_UnknownEvent_8 '9AFE0C
  'Data Table: 4BADEC
  loc_9AFE04: LitI2_Byte &HFF
  loc_9AFE06: Call Proc_199_19_AF4C3C()
  loc_9AFE0B: ExitProcHresult
End Sub

Private Sub OrdeLiceHastaMsk_UnknownEvent_0 '9BE670
  'Data Table: 4BADEC
  loc_9BE65C: FLdPr Me
  loc_9BE65F: VCallAd Control_ID_OrdeLiceHastaMsk
  loc_9BE662: CVarAd
  loc_9BE666: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE66B: FFree1Var var_94 = ""
  loc_9BE66E: ExitProcHresult
End Sub

Private Sub OrdeLiceHastaMsk_UnknownEvent_8 '9AFDD4
  'Data Table: 4BADEC
  loc_9AFDCC: LitI2_Byte &HFF
  loc_9AFDCE: Call Proc_199_19_AF4C3C()
  loc_9AFDD3: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1BBB0
  'Data Table: 4BADEC
  loc_A1BB78: FLdPr Me
  loc_A1BB7B: VCallAd Control_ID_statusBar
  loc_A1BB7E: FStAdFunc var_88
  loc_A1BB81: FLdPr var_88
  loc_A1BB84: LateIdLdVar var_98 DispID_1 0
  loc_A1BB8B: CStrVarTmp
  loc_A1BB8C: CVarStr var_A8
  loc_A1BB8F: PopAdLdVar
  loc_A1BB90: FLdPr Me
  loc_A1BB93: VCallAd Control_ID_statusBar
  loc_A1BB96: FStAdFunc var_BC
  loc_A1BB99: FLdPr var_BC
  loc_A1BB9C: LateIdSt
  loc_A1BBA1: FFreeAd var_88 = ""
  loc_A1BBA8: FFreeVar var_98 = ""
  loc_A1BBAF: ExitProcHresult
End Sub

Private Sub Form_Load() 'A60440
  'Data Table: 4BADEC
  loc_A603E0: LitStr "PRIMER"
  loc_A603E3: LitI4 1
  loc_A603E8: FLdPr Me
  loc_A603EB: MemLdRfVar from_stack_1.global_124
  loc_A603EE: Ary1StStrCopy
  loc_A603EF: LitStr "SEGUNDO"
  loc_A603F2: LitI4 2
  loc_A603F7: FLdPr Me
  loc_A603FA: MemLdRfVar from_stack_1.global_124
  loc_A603FD: Ary1StStrCopy
  loc_A603FE: ILdRf Me
  loc_A60401: CastAd
  loc_A60404: FStAdFunc var_88
  loc_A60407: FLdRfVar var_88
  loc_A6040A: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A6040F: FFree1Ad var_88
  loc_A60412: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu, LeyeTili, FealLiqu"
  loc_A60415: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A60418: ConcatStr
  loc_A60419: FStStrNoPop var_8C
  loc_A6041C: LitStr " WHERE liquidacion.CodiOfic = 4 AND ActuLiqu = 'Si' ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A6041F: ConcatStr
  loc_A60420: FStStrNoPop var_90
  loc_A60423: FLdPr Me
  loc_A60426: MemLdRfVar from_stack_1.global_80
  loc_A60429: NewIfNullPr clsliquidacion
  loc_A6042C: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A60431: FFreeStr var_8C = ""
  loc_A60438: Call cmdNueva_Click()
  loc_A6043D: ExitProcHresult
  loc_A6043E: Ary1LdCy
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CE238
  'Data Table: 4BADEC
  loc_9CE220: FLdPr Me
  loc_9CE223: VCallAd Control_ID_wbbReporte
  loc_9CE226: FStAdFunc var_88
  loc_9CE229: FLdRfVar var_88
  loc_9CE22C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CE231: FFree1Ad var_88
  loc_9CE234: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A01884
  'Data Table: 4BADEC
  loc_A01854: LitVarStr var_94, "Cerrando..."
  loc_A01859: PopAdLdVar
  loc_A0185A: FLdPr Me
  loc_A0185D: VCallAd Control_ID_statusBar
  loc_A01860: FStAdFunc var_A8
  loc_A01863: FLdPr var_A8
  loc_A01866: LateIdSt
  loc_A0186B: FFree1Ad var_A8
  loc_A0186E: ILdRf Me
  loc_A01871: FStAdNoPop
  loc_A01875: ImpAdLdRf MemVar_D9C5D8
  loc_A01878: NewIfNullPr Global
  loc_A0187B: Global.Unload from_stack_1
  loc_A01880: FFree1Ad var_A8
  loc_A01883: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'B821DC
  'Data Table: 4BADEC
  loc_B81CDC: OnErrorGoto loc_B82152
  loc_B81CDF: FLdRfVar var_A0
  loc_B81CE2: FLdPr Me
  loc_B81CE5:  = Me.hWnd
  loc_B81CEA: LitStr "Seleccione la carpeta de salida para los archivos generados"
  loc_B81CED: FLdPr Me
  loc_B81CF0: MemLdStr global_76
  loc_B81CF3: ILdRf var_A0
  loc_B81CF6: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_B81CFB: FStStrNoPop var_A4
  loc_B81CFE: FLdPr Me
  loc_B81D01: MemStStrCopy
  loc_B81D05: FFree1Str var_A4
  loc_B81D08: FLdPr Me
  loc_B81D0B: MemLdRfVar from_stack_1.global_76
  loc_B81D0E: CVarRef
  loc_B81D13: FLdRfVar var_C4
  loc_B81D16: ImpAdCallFPR4  = Trim()
  loc_B81D1B: FLdRfVar var_C4
  loc_B81D1E: LitVarStr var_D4, vbNullString
  loc_B81D23: HardType
  loc_B81D24: EqVarBool
  loc_B81D26: FFree1Var var_C4 = ""
  loc_B81D29: BranchF loc_B81D2D
  loc_B81D2C: ExitProcHresult
  loc_B81D2D: FLdRfVar var_A4
  loc_B81D30: LitStr "tmp"
  loc_B81D33: FLdPr Me
  loc_B81D36: MemLdStr global_76
  loc_B81D39: FLdRfVar var_88
  loc_B81D3C: NewIfNullPr IFileSystem3
  loc_B81D3F: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B81D44: ILdRf var_A4
  loc_B81D47: LitStr "\"
  loc_B81D4A: ConcatStr
  loc_B81D4B: FStStr var_9C
  loc_B81D4E: FFree1Str var_A4
  loc_B81D51: FLdRfVar var_E6
  loc_B81D54: ILdRf var_9C
  loc_B81D57: FLdRfVar var_88
  loc_B81D5A: NewIfNullPr IFileSystem3
  loc_B81D5D: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B81D62: FLdI2 var_E6
  loc_B81D65: BranchF loc_B81D76
  loc_B81D68: LitStr "*.*"
  loc_B81D6B: ILdRf var_9C
  loc_B81D6E: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B81D73: Branch loc_B81D7E
  loc_B81D76: ILdRf var_9C
  loc_B81D79: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_B81D7E: ILdRf var_9C
  loc_B81D81: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B81D86: ILdRf Me
  loc_B81D89: CastAd
  loc_B81D8C: FStAdFunc var_EC
  loc_B81D8F: FLdRfVar var_EC
  loc_B81D92: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B81D97: FFree1Ad var_EC
  loc_B81D9A: LitVar_FALSE
  loc_B81D9E: PopAdLdVar
  loc_B81D9F: FLdPr Me
  loc_B81DA2: VCallAd Control_ID_dgdLiquidacion
  loc_B81DA5: FStAdFunc var_EC
  loc_B81DA8: FLdPr var_EC
  loc_B81DAB: LateIdSt
  loc_B81DB0: FFree1Ad var_EC
  loc_B81DB3: Call GeneraReporte()
  loc_B81DB8: FLdPr Me
  loc_B81DBB: MemLdI2 bGenerado
  loc_B81DBE: BranchF loc_B820EE
  loc_B81DC1: FLdPr Me
  loc_B81DC4: MemLdStr global_92
  loc_B81DC7: LitI2_Byte 1
  loc_B81DC9: FnUBound
  loc_B81DCB: CR8I4
  loc_B81DCC: CVarR4
  loc_B81DD0: PopAdLdVar
  loc_B81DD1: FLdPr Me
  loc_B81DD4: VCallAd Control_ID_pbar
  loc_B81DD7: FStAdFunc var_EC
  loc_B81DDA: FLdPr var_EC
  loc_B81DDD: LateIdSt
  loc_B81DE2: FFree1Ad var_EC
  loc_B81DE5: LitVar_TRUE var_B4
  loc_B81DE8: PopAdLdVar
  loc_B81DE9: FLdPr Me
  loc_B81DEC: VCallAd Control_ID_pbar
  loc_B81DEF: FStAdFunc var_EC
  loc_B81DF2: FLdPr var_EC
  loc_B81DF5: LateIdSt
  loc_B81DFA: FFree1Ad var_EC
  loc_B81DFD: LitStr vbNullString
  loc_B81E00: FStStrCopy var_90
  loc_B81E03: LitI4 1
  loc_B81E08: FLdPr Me
  loc_B81E0B: MemLdStr global_92
  loc_B81E0E: Ary1LdPr
  loc_B81E0F: MemLdStr global_92
  loc_B81E12: CI4Str
  loc_B81E13: FStR4 var_98
  loc_B81E16: LitI4 1
  loc_B81E1B: FLdPr Me
  loc_B81E1E: MemLdRfVar from_stack_1.global_96
  loc_B81E21: FLdPr Me
  loc_B81E24: MemLdStr global_92
  loc_B81E27: LitI2_Byte 1
  loc_B81E29: FnUBound
  loc_B81E2B: ForI4 var_F4
  loc_B81E31: FLdPr Me
  loc_B81E34: MemLdStr global_96
  loc_B81E37: FLdPr Me
  loc_B81E3A: MemLdStr global_92
  loc_B81E3D: AryLock
  loc_B81E40: Ary1LdRf
  loc_B81E41: FStR4 var_FC
  loc_B81E44: FLdRfVar var_A4
  loc_B81E47: FLdPr Me
  loc_B81E4A: MemLdStr global_96
  loc_B81E4D: Call Proc_199_17_A1F3F4()
  loc_B81E52: FLdZeroAd var_A4
  loc_B81E55: FStStr var_8C
  loc_B81E58: ILdRf var_9C
  loc_B81E5B: ILdRf var_8C
  loc_B81E5E: ConcatStr
  loc_B81E5F: FStStrNoPop var_A4
  loc_B81E62: LitStr ".html"
  loc_B81E65: ConcatStr
  loc_B81E66: ImpAdStStr MemVar_D93C84
  loc_B81E6A: FFree1Str var_A4
  loc_B81E6D: LitI4 0
  loc_B81E72: FStR4 var_FC
  loc_B81E75: AryUnlock
  loc_B81E78: FLdPr Me
  loc_B81E7B: MemLdStr global_96
  loc_B81E7E: CR8I4
  loc_B81E7F: CVarR4
  loc_B81E83: PopAdLdVar
  loc_B81E84: FLdPr Me
  loc_B81E87: VCallAd Control_ID_pbar
  loc_B81E8A: FStAdFunc var_EC
  loc_B81E8D: FLdPr var_EC
  loc_B81E90: LateIdSt
  loc_B81E95: FFree1Ad var_EC
  loc_B81E98: FLdPr Me
  loc_B81E9B: MemLdStr global_96
  loc_B81E9E: CStrI4
  loc_B81EA0: FStStrNoPop var_A4
  loc_B81EA3: LitStr "/"
  loc_B81EA6: ConcatStr
  loc_B81EA7: FStStrNoPop var_100
  loc_B81EAA: FLdPr Me
  loc_B81EAD: MemLdStr global_92
  loc_B81EB0: LitI2_Byte 1
  loc_B81EB2: FnUBound
  loc_B81EB4: CStrI4
  loc_B81EB6: FStStrNoPop var_104
  loc_B81EB9: ConcatStr
  loc_B81EBA: FStStrNoPop var_108
  loc_B81EBD: FLdPr Me
  loc_B81EC0: VCallAd Control_ID_ProgresoLbl
  loc_B81EC3: FStAdFunc var_EC
  loc_B81EC6: FLdPr var_EC
  loc_B81EC9: Me.Caption = from_stack_1
  loc_B81ECE: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B81ED9: FFree1Ad var_EC
  loc_B81EDC: Call GeneraHTML()
  loc_B81EE1: ILdRf var_90
  loc_B81EE4: LitStr """"
  loc_B81EE7: ConcatStr
  loc_B81EE8: FStStrNoPop var_A4
  loc_B81EEB: ImpAdLdI4 MemVar_D93C84
  loc_B81EEE: ConcatStr
  loc_B81EEF: FStStrNoPop var_100
  loc_B81EF2: LitStr """ "
  loc_B81EF5: ConcatStr
  loc_B81EF6: FStStr var_90
  loc_B81EF9: FFreeStr var_A4 = ""
  loc_B81F00: FLdPr Me
  loc_B81F03: MemLdStr global_96
  loc_B81F06: LitI4 &HFA
  loc_B81F0B: ModI4
  loc_B81F0C: LitI4 0
  loc_B81F11: EqI4
  loc_B81F12: FLdPr Me
  loc_B81F15: MemLdStr global_96
  loc_B81F18: FLdPr Me
  loc_B81F1B: MemLdStr global_92
  loc_B81F1E: LitI2_Byte 1
  loc_B81F20: FnUBound
  loc_B81F22: EqI4
  loc_B81F23: OrI4
  loc_B81F24: BranchF loc_B82088
  loc_B81F27: FLdPr Me
  loc_B81F2A: MemLdStr global_96
  loc_B81F2D: FLdPr Me
  loc_B81F30: MemLdStr global_92
  loc_B81F33: LitI2_Byte 1
  loc_B81F35: FnUBound
  loc_B81F37: EqI4
  loc_B81F38: BranchF loc_B81F7E
  loc_B81F3B: LitStr " ("
  loc_B81F3E: ILdRf var_98
  loc_B81F41: CStrI4
  loc_B81F43: FStStrNoPop var_A4
  loc_B81F46: ConcatStr
  loc_B81F47: FStStrNoPop var_100
  loc_B81F4A: LitStr "-"
  loc_B81F4D: ConcatStr
  loc_B81F4E: FStStrNoPop var_104
  loc_B81F51: FLdPr Me
  loc_B81F54: MemLdStr global_92
  loc_B81F57: LitI2_Byte 1
  loc_B81F59: FnUBound
  loc_B81F5B: FLdPr Me
  loc_B81F5E: MemLdStr global_92
  loc_B81F61: Ary1LdPr
  loc_B81F62: MemLdStr global_92
  loc_B81F65: ConcatStr
  loc_B81F66: FStStrNoPop var_108
  loc_B81F69: LitStr ")"
  loc_B81F6C: ConcatStr
  loc_B81F6D: FStStr var_94
  loc_B81F70: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B81F7B: Branch loc_B81FD4
  loc_B81F7E: LitStr " ("
  loc_B81F81: ILdRf var_98
  loc_B81F84: CStrI4
  loc_B81F86: FStStrNoPop var_A4
  loc_B81F89: ConcatStr
  loc_B81F8A: FStStrNoPop var_100
  loc_B81F8D: LitStr "-"
  loc_B81F90: ConcatStr
  loc_B81F91: FStStrNoPop var_104
  loc_B81F94: FLdPr Me
  loc_B81F97: MemLdStr global_96
  loc_B81F9A: FLdPr Me
  loc_B81F9D: MemLdStr global_92
  loc_B81FA0: Ary1LdPr
  loc_B81FA1: MemLdStr global_92
  loc_B81FA4: ConcatStr
  loc_B81FA5: FStStrNoPop var_108
  loc_B81FA8: LitStr ")"
  loc_B81FAB: ConcatStr
  loc_B81FAC: FStStr var_94
  loc_B81FAF: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B81FBA: FLdPr Me
  loc_B81FBD: MemLdStr global_96
  loc_B81FC0: LitI4 1
  loc_B81FC5: AddI4
  loc_B81FC6: FLdPr Me
  loc_B81FC9: MemLdStr global_92
  loc_B81FCC: Ary1LdPr
  loc_B81FCD: MemLdStr global_92
  loc_B81FD0: CI4Str
  loc_B81FD1: FStR4 var_98
  loc_B81FD4: FLdPr Me
  loc_B81FD7: MemLdStr global_76
  loc_B81FDA: LitStr "\cementerio"
  loc_B81FDD: ConcatStr
  loc_B81FDE: FStStrNoPop var_A4
  loc_B81FE1: ILdRf var_94
  loc_B81FE4: ConcatStr
  loc_B81FE5: FStStrNoPop var_100
  loc_B81FE8: LitStr ".pdf"
  loc_B81FEB: ConcatStr
  loc_B81FEC: ImpAdStStr MemVar_D93030
  loc_B81FF0: FFreeStr var_A4 = ""
  loc_B81FF7: ILdRf var_90
  loc_B81FFA: FnLenStr
  loc_B81FFB: LitI4 3
  loc_B82000: SubI4
  loc_B82001: CVarI4
  loc_B82005: LitI4 2
  loc_B8200A: FLdRfVar var_90
  loc_B8200D: CVarRef
  loc_B82012: FLdRfVar var_E4
  loc_B82015: ImpAdCallFPR4  = Mid(, , )
  loc_B8201A: FLdRfVar var_E4
  loc_B8201D: CStrVarTmp
  loc_B8201E: FStStr var_90
  loc_B82021: FFreeVar var_C4 = ""
  loc_B82028: LitStr vbNullString
  loc_B8202B: ImpAdLdI4 MemVar_D93030
  loc_B8202E: ILdRf var_90
  loc_B82031: ImpAdCallFPR4 Proc_57_55_AE2160(, , )
  loc_B82036: LitStr "Guardando PDF: '"
  loc_B82039: ImpAdLdI4 MemVar_D93030
  loc_B8203C: ConcatStr
  loc_B8203D: FStStrNoPop var_A4
  loc_B82040: LitStr "'"
  loc_B82043: ConcatStr
  loc_B82044: CVarStr var_C4
  loc_B82047: PopAdLdVar
  loc_B82048: FLdPr Me
  loc_B8204B: VCallAd Control_ID_statusBar
  loc_B8204E: FStAdFunc var_EC
  loc_B82051: FLdPr var_EC
  loc_B82054: LateIdSt
  loc_B82059: FFree1Str var_A4
  loc_B8205C: FFree1Ad var_EC
  loc_B8205F: FFree1Var var_C4 = ""
  loc_B82062: FLdRfVar var_E6
  loc_B82065: ImpAdLdI4 MemVar_D93030
  loc_B82068: FLdRfVar var_88
  loc_B8206B: NewIfNullPr IFileSystem3
  loc_B8206E: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B82073: FLdI2 var_E6
  loc_B82076: NotI4
  loc_B82077: BranchF loc_B82082
  loc_B8207A: ImpAdCallFPR4 DoEvents()
  loc_B8207F: Branch loc_B82062
  loc_B82082: LitStr vbNullString
  loc_B82085: FStStrCopy var_90
  loc_B82088: ImpAdCallFPR4 DoEvents()
  loc_B8208D: FLdPr Me
  loc_B82090: MemLdRfVar from_stack_1.global_96
  loc_B82093: NextI4 var_F4, loc_B81E31
  loc_B82098: LitStr "Proceso terminado."
  loc_B8209B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B820A0: FLdRfVar var_E6
  loc_B820A3: ILdRf var_9C
  loc_B820A6: FLdRfVar var_88
  loc_B820A9: NewIfNullPr IFileSystem3
  loc_B820AC: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B820B1: FLdI2 var_E6
  loc_B820B4: BranchF loc_B820CA
  loc_B820B7: LitStr "*.*"
  loc_B820BA: ILdRf var_9C
  loc_B820BD: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B820C2: ILdRf var_9C
  loc_B820C5: ImpAdCallFPR4 RmDir 
  loc_B820CA: LitVar_FALSE
  loc_B820CE: PopAdLdVar
  loc_B820CF: FLdPr Me
  loc_B820D2: VCallAd Control_ID_pbar
  loc_B820D5: FStAdFunc var_EC
  loc_B820D8: FLdPr var_EC
  loc_B820DB: LateIdSt
  loc_B820E0: FFree1Ad var_EC
  loc_B820E3: FLdPr Me
  loc_B820E6: MemLdStr global_76
  loc_B820E9: ImpAdCallFPR4 Proc_272_64_A06738()
  loc_B820EE: ILdRf Me
  loc_B820F1: CastAd
  loc_B820F4: FStAdFunc var_EC
  loc_B820F7: FLdRfVar var_EC
  loc_B820FA: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B820FF: FFree1Ad var_EC
  loc_B82102: LitVarStr var_B4, vbNullString
  loc_B82107: PopAdLdVar
  loc_B82108: FLdPr Me
  loc_B8210B: VCallAd Control_ID_statusBar
  loc_B8210E: FStAdFunc var_EC
  loc_B82111: FLdPr var_EC
  loc_B82114: LateIdSt
  loc_B82119: FFree1Ad var_EC
  loc_B8211C: FLdPr Me
  loc_B8211F: VCallAd Control_ID_dgdLiquidacion
  loc_B82122: FStAdFunc var_EC
  loc_B82125: FLdPr var_EC
  loc_B82128: LateIdLdVar var_C4 DispID_13 -32767
  loc_B8212F: CBoolVar
  loc_B82131: FFree1Ad var_EC
  loc_B82134: FFree1Var var_C4 = ""
  loc_B82137: BranchF loc_B82151
  loc_B8213A: FLdPr Me
  loc_B8213D: VCallAd Control_ID_dgdLiquidacion
  loc_B82140: FStAdFunc var_EC
  loc_B82143: FLdPr var_EC
  loc_B82146: LateIdCall
  loc_B8214E: FFree1Ad var_EC
  loc_B82151: ExitProcHresult
  loc_B82152: FLdRfVar var_A0
  loc_B82155: ImpAdCallI2 Err 'rtcErrObj
  loc_B8215A: FStAdFunc var_EC
  loc_B8215D: FLdPr var_EC
  loc_B82160:  = Err.Number
  loc_B82165: ILdRf var_A0
  loc_B82168: FStR4 var_10C
  loc_B8216B: FFree1Ad var_EC
  loc_B8216E: ILdRf var_10C
  loc_B82171: LitI4 &H4C
  loc_B82176: EqI4
  loc_B82177: BranchF loc_B8217D
  loc_B8217A: Branch loc_B821D9
  loc_B8217D: LitStr "Error "
  loc_B82180: FLdRfVar var_A0
  loc_B82183: ImpAdCallI2 Err 'rtcErrObj
  loc_B82188: FStAdFunc var_EC
  loc_B8218B: FLdPr var_EC
  loc_B8218E:  = Err.Number
  loc_B82193: ILdRf var_A0
  loc_B82196: CStrI4
  loc_B82198: FStStrNoPop var_A4
  loc_B8219B: ConcatStr
  loc_B8219C: FStStrNoPop var_100
  loc_B8219F: LitStr ": "
  loc_B821A2: ConcatStr
  loc_B821A3: FStStrNoPop var_108
  loc_B821A6: FLdRfVar var_104
  loc_B821A9: ImpAdCallI2 Err 'rtcErrObj
  loc_B821AE: FStAdFunc var_110
  loc_B821B1: FLdPr var_110
  loc_B821B4:  = Err.Description
  loc_B821B9: ILdRf var_104
  loc_B821BC: ConcatStr
  loc_B821BD: FStStrNoPop var_114
  loc_B821C0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B821C5: FFreeStr var_A4 = "": var_100 = "": var_108 = "": var_104 = ""
  loc_B821D2: FFreeAd var_EC = ""
  loc_B821D9: ExitProcHresult
  loc_B821DA: CopyBytes
End Sub

Public Function bGeneradoGet() '4BBF0C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4BBF1B
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5EBD4
  'Data Table: 4BADEC
  loc_A5EB80: LitI4 0
  loc_A5EB85: LitI4 2
  loc_A5EB8A: FLdRfVar var_88
  loc_A5EB8D: Redim
  loc_A5EB97: FLdPr Me
  loc_A5EB9A: VCallAd Control_ID_dgdLiquidacion
  loc_A5EB9D: CVarAd
  loc_A5EBA1: ParmAry1St
  loc_A5EBA7: FLdPr Me
  loc_A5EBAA: VCallAd Control_ID_OrdeLiceDesdeMsk
  loc_A5EBAD: CVarAd
  loc_A5EBB1: ParmAry1St
  loc_A5EBB7: FLdPr Me
  loc_A5EBBA: VCallAd Control_ID_OrdeLiceHastaMsk
  loc_A5EBBD: CVarAd
  loc_A5EBC1: ParmAry1St
  loc_A5EBC7: FLdRfVar var_88
  loc_A5EBCA: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5EBCF: FLdRfVar var_88
  loc_A5EBD2: Erase
  loc_A5EBD3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B71398
  'Data Table: 4BADEC
  loc_B70F54: FLdPr Me
  loc_B70F57: MemLdI2 bGenerado
  loc_B70F5A: BranchF loc_B70F5E
  loc_B70F5D: ExitProcHresult
  loc_B70F5E: LitVarStr var_94, "Generando reporte..."
  loc_B70F63: PopAdLdVar
  loc_B70F64: FLdPr Me
  loc_B70F67: VCallAd Control_ID_statusBar
  loc_B70F6A: FStAdFunc var_A8
  loc_B70F6D: FLdPr var_A8
  loc_B70F70: LateIdSt
  loc_B70F75: FFree1Ad var_A8
  loc_B70F78: LitI4 &HB
  loc_B70F7D: CI2I4
  loc_B70F7E: FLdPr Me
  loc_B70F81: Me.MousePointer = from_stack_1
  loc_B70F86: FLdRfVar var_AC
  loc_B70F89: FLdPr Me
  loc_B70F8C: MemLdRfVar from_stack_1.global_80
  loc_B70F8F: NewIfNullPr clsliquidacion
  loc_B70F92: from_stack_1 = clsliquidacion.RecordCount
  loc_B70F97: ILdRf var_AC
  loc_B70F9A: LitI4 1
  loc_B70F9F: LtI4
  loc_B70FA0: BranchF loc_B70FAE
  loc_B70FA3: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B70FA6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B70FAB: Branch loc_B7136F
  loc_B70FAE: Call Proc_199_18_ACFE24()
  loc_B70FB3: FLdPr Me
  loc_B70FB6: MemLdRfVar from_stack_1.global_84
  loc_B70FB9: NewIfNullAd
  loc_B70FBC: FStAd var_B0 
  loc_B70FC0: LitStr "SELECT liquceme.CodiDifu, DetaTise, liquceme.TipoVenc, OrdeLice, liquceme.FeacLice, liquceme.BimeLiqu, sum(TotaLice) as TotaLice, boleto.PeriBole, boleto.NumeBole, boleto.RecaBole,"
  loc_B70FC3: LitStr " DATE_FORMAT(boleto.FeveBole, '" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y') as FeveLice, boleto.TotaBole, boleto.CodiUsua, boleto.CucuPers, p1.DetaPers, ifnull(p2.DetaPers,'') as Vinculo, DeudLice, (IFNULL(ImpoLice,0)-IFNULL(TotaLcde,0)) as ImpoLice, (ExenLice+DescLice) as DescLice, IFNULL(licedeta.TotaLcde,0) as CEmision,"
  loc_B70FC6: ConcatStr
  loc_B70FC7: FStStrNoPop var_B4
  loc_B70FCA: LitStr " CallLice as DetaCall, NucaLice, BarrLice as DetaBarr, ManzLice, CasaLice, UbicLice, LocaLice as DetaLoca, CopoLice,"
  loc_B70FCD: ConcatStr
  loc_B70FCE: FStStrNoPop var_B8
  loc_B70FD1: LitStr " IFNULL(domicilio.calle,'') as CallLiceReal, IFNULL(domicilio.NumeCalle,'0') as NucaLiceReal, IFNULL(domicilio.barrio,'') as BarrLiceReal, IFNULL(domicilio.Manzana,'') as ManzLiceReal, IFNULL(domicilio.Casa,'') as CasaLiceReal,"
  loc_B70FD4: ConcatStr
  loc_B70FD5: FStStrNoPop var_BC
  loc_B70FD8: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbicLiceReal,"
  loc_B70FDB: ConcatStr
  loc_B70FDC: FStStrNoPop var_C0
  loc_B70FDF: LitStr " IFNULL(domicilio.Localidad,'') as LocaLiceReal, IFNULL(domicilio.CodPostal,'0') as CopoLiceReal,"
  loc_B70FE2: ConcatStr
  loc_B70FE3: FStStrNoPop var_C4
  loc_B70FE6: LitStr " (SELECT cast(group_concat(DISTINCT if(lq2.TipoVenc=1,lq2.BimeLiqu,'anual') ORDER BY lq2.TipoVenc, lq2.BimeLiqu ASC SEPARATOR ', ') as CHAR) FROM liquceme as lq2 WHERE lq2.TipoLice = liquceme.TipoLice AND FeacLice is not null AND lq2.PeriLiqu = liquceme.PeriLiqu AND lq2.CodiTili = liquceme.CodiTili AND lq2.NumeLiqu = liquceme.NumeLiqu AND lq2.OrdeLice = liquceme.OrdeLice) as Bimestres,"
  loc_B70FE9: ConcatStr
  loc_B70FEA: FStStrNoPop var_C8
  loc_B70FED: LitStr " CASE WHEN difunto.CodiTise IN('A', 'U', 'E', 'N') THEN CONCAT_WS(' ', 'Pabellón:', Nom1Difu, 'Nicho:', Nom2Difu, 'Nivel:', Nom3Difu, 'Fila:', Nom4Difu, 'Lápida:', Nom5difu)"
  loc_B70FF0: ConcatStr
  loc_B70FF1: FStStrNoPop var_CC
  loc_B70FF4: LitStr " WHEN difunto.CodiTise IN('P', 'S1', 'SP', 'M', 'S2', 'S3') THEN CONCAT_WS(' ', 'Cuadro:', Nom1Difu, 'Nro:', Nom2Difu, 'Nivel:',  Nom3Difu) END as UbicTise, difunto.FeveDifu"
  loc_B70FF7: ConcatStr
  loc_B70FF8: FStStrNoPop var_D0
  loc_B70FFB: LitStr " FROM liquceme"
  loc_B70FFE: ConcatStr
  loc_B70FFF: FStStrNoPop var_D4
  loc_B71002: LitStr " INNER JOIN boleto ON boleto.CodiOfic = 4 AND boleto.CuenCtct = liquceme.CodiDifu AND boleto.PeriBole = liquceme.PeriBole AND boleto.NumeBole = liquceme.NumeBole"
  loc_B71005: ConcatStr
  loc_B71006: FStStrNoPop var_D8
  loc_B71009: LitStr " LEFT JOIN licedeta ON licedeta.PeriLiqu = liquceme.PeriLiqu AND licedeta.CodiTili = liquceme.CodiTili AND licedeta.NumeLiqu = liquceme.NumeLiqu AND licedeta.BimeLiqu = liquceme.BimeLiqu AND licedeta.CodiConc = '13020301' AND licedeta.CodiDifu = liquceme.CodiDifu AND licedeta.CodiSece=999"
  loc_B7100C: ConcatStr
  loc_B7100D: FStStrNoPop var_DC
  loc_B71010: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = boleto.CuenCtct"
  loc_B71013: ConcatStr
  loc_B71014: FStStrNoPop var_E0
  loc_B71017: LitStr " LEFT JOIN infogov.persona as p1 ON p1.CucuPers = liquceme.CucuPers"
  loc_B7101A: ConcatStr
  loc_B7101B: FStStrNoPop var_E4
  loc_B7101E: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = 4 AND relacion.CuenCtct = liquceme.CodiDifu AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_B71021: ConcatStr
  loc_B71022: FStStrNoPop var_E8
  loc_B71025: LitStr " LEFT JOIN infogov.persona as p2 ON p2.CucuPers = relacion.CucuPers"
  loc_B71028: ConcatStr
  loc_B71029: FStStrNoPop var_EC
  loc_B7102C: LitStr " LEFT JOIN domicilio ON domicilio.CodiCome = liquceme.CodiDifu AND domicilio.CodiOfic = 4 AND domicilio.Tipo = 'REAL'"
  loc_B7102F: ConcatStr
  loc_B71030: FStStrNoPop var_F0
  loc_B71033: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_B71036: ConcatStr
  loc_B71037: FStStrNoPop var_F4
  loc_B7103A: LitStr " WHERE TipoLice = 'Aforo' AND FeacLice is not null"
  loc_B7103D: ConcatStr
  loc_B7103E: FStStrNoPop var_F8
  loc_B71041: LitStr " AND liquceme.PeriLiqu = "
  loc_B71044: ConcatStr
  loc_B71045: FStStrNoPop var_100
  loc_B71048: FLdRfVar var_FA
  loc_B7104B: FLdPr Me
  loc_B7104E: MemLdRfVar from_stack_1.global_80
  loc_B71051: NewIfNullPr clsliquidacion
  loc_B71054: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B71059: FLdI2 var_FA
  loc_B7105C: CStrUI1
  loc_B7105E: FStStrNoPop var_104
  loc_B71061: ConcatStr
  loc_B71062: FStStrNoPop var_108
  loc_B71065: LitStr " AND liquceme.CodiTili = "
  loc_B71068: ConcatStr
  loc_B71069: FStStrNoPop var_110
  loc_B7106C: FLdRfVar var_10A
  loc_B7106F: FLdPr Me
  loc_B71072: MemLdRfVar from_stack_1.global_80
  loc_B71075: NewIfNullPr clsliquidacion
  loc_B71078: from_stack_1 = clsliquidacion.CodiTili
  loc_B7107D: FLdUI1
  loc_B71081: CStrI2
  loc_B71083: FStStrNoPop var_114
  loc_B71086: ConcatStr
  loc_B71087: FStStrNoPop var_118
  loc_B7108A: LitStr " AND liquceme.NumeLiqu = "
  loc_B7108D: ConcatStr
  loc_B7108E: FStStrNoPop var_120
  loc_B71091: FLdRfVar var_11A
  loc_B71094: FLdPr Me
  loc_B71097: MemLdRfVar from_stack_1.global_80
  loc_B7109A: NewIfNullPr clsliquidacion
  loc_B7109D: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B710A2: FLdI2 var_11A
  loc_B710A5: CStrUI1
  loc_B710A7: FStStrNoPop var_124
  loc_B710AA: ConcatStr
  loc_B710AB: FStStrNoPop var_128
  loc_B710AE: FLdPr Me
  loc_B710B1: MemLdStr global_112
  loc_B710B4: ConcatStr
  loc_B710B5: FStStrNoPop var_12C
  loc_B710B8: FLdPr Me
  loc_B710BB: MemLdStr global_116
  loc_B710BE: ConcatStr
  loc_B710BF: FStStrNoPop var_130
  loc_B710C2: LitStr " GROUP BY OrdeLice, TipoVenc,  BimeLiqu, liquceme.PeriBole, liquceme.NumeBole HAVING TotaLice <> 0 ORDER BY OrdeLice, BimeLiqu, liquceme.PeriBole, liquceme.NumeBole"
  loc_B710C5: ConcatStr
  loc_B710C6: FStStrNoPop var_134
  loc_B710C9: FLdPr var_B0
  loc_B710CC: Call clsliquceme.RedefineRS(from_stack_1v)
  loc_B710D1: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_100 = "": var_104 = "": var_108 = "": var_110 = "": var_114 = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_B71110: FLdRfVar var_AC
  loc_B71113: FLdPr var_B0
  loc_B71116: from_stack_1 = clsliquceme.RecordCount
  loc_B7111B: ILdRf var_AC
  loc_B7111E: LitI4 1
  loc_B71123: LtI4
  loc_B71124: BranchF loc_B71132
  loc_B71127: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B7112A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7112F: Branch loc_B7136F
  loc_B71132: LitStr "SELECT OrdeLice, dd.CodiDifu, dd.DetaDedi DetaPers, ifnull( DATE_FORMAT(dd.FefaDedi, '" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y'),'' ) as FeveLice FROM detadifu dd INNER JOIN liquceme ON liquceme.CodiDifu = dd.CodiDifu"
  loc_B71135: LitStr " WHERE TipoLice = 'Aforo' AND FeacLice is not null"
  loc_B71138: ConcatStr
  loc_B71139: FStStrNoPop var_B4
  loc_B7113C: LitStr " AND liquceme.PeriLiqu = "
  loc_B7113F: ConcatStr
  loc_B71140: FStStrNoPop var_B8
  loc_B71143: FLdRfVar var_FA
  loc_B71146: FLdPr Me
  loc_B71149: MemLdRfVar from_stack_1.global_80
  loc_B7114C: NewIfNullPr clsliquidacion
  loc_B7114F: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B71154: FLdI2 var_FA
  loc_B71157: CStrUI1
  loc_B71159: FStStrNoPop var_BC
  loc_B7115C: ConcatStr
  loc_B7115D: FStStrNoPop var_C0
  loc_B71160: LitStr " AND liquceme.CodiTili = "
  loc_B71163: ConcatStr
  loc_B71164: FStStrNoPop var_C4
  loc_B71167: FLdRfVar var_10A
  loc_B7116A: FLdPr Me
  loc_B7116D: MemLdRfVar from_stack_1.global_80
  loc_B71170: NewIfNullPr clsliquidacion
  loc_B71173: from_stack_1 = clsliquidacion.CodiTili
  loc_B71178: FLdUI1
  loc_B7117C: CStrI2
  loc_B7117E: FStStrNoPop var_C8
  loc_B71181: ConcatStr
  loc_B71182: FStStrNoPop var_CC
  loc_B71185: LitStr " AND liquceme.NumeLiqu = "
  loc_B71188: ConcatStr
  loc_B71189: FStStrNoPop var_D0
  loc_B7118C: FLdRfVar var_11A
  loc_B7118F: FLdPr Me
  loc_B71192: MemLdRfVar from_stack_1.global_80
  loc_B71195: NewIfNullPr clsliquidacion
  loc_B71198: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B7119D: FLdI2 var_11A
  loc_B711A0: CStrUI1
  loc_B711A2: FStStrNoPop var_D4
  loc_B711A5: ConcatStr
  loc_B711A6: FStStrNoPop var_D8
  loc_B711A9: FLdPr Me
  loc_B711AC: MemLdStr global_112
  loc_B711AF: ConcatStr
  loc_B711B0: FStStrNoPop var_DC
  loc_B711B3: FLdPr Me
  loc_B711B6: MemLdStr global_116
  loc_B711B9: ConcatStr
  loc_B711BA: FStStrNoPop var_E0
  loc_B711BD: LitStr " ORDER BY OrdeLice, CodiDifu"
  loc_B711C0: ConcatStr
  loc_B711C1: FStStrNoPop var_E4
  loc_B711C4: FLdPr Me
  loc_B711C7: MemLdRfVar from_stack_1.global_88
  loc_B711CA: NewIfNullPr clsliquceme
  loc_B711CD: Call clsliquceme.RedefineRS(from_stack_1v)
  loc_B711D2: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_B711EF: LitI4 0
  loc_B711F4: LitI4 0
  loc_B711F9: FLdPr Me
  loc_B711FC: MemLdRfVar from_stack_1.global_92
  loc_B711FF: Redim
  loc_B71209: LitI4 0
  loc_B7120E: FLdPr Me
  loc_B71211: MemStI4 global_96
  loc_B71214: LitI2_Byte 0
  loc_B71216: FLdPr Me
  loc_B71219: MemStI2 global_104
  loc_B7121C: FLdPr var_B0
  loc_B7121F: Call clsliquceme.MoveFirst()
  loc_B71224: FLdRfVar var_AC
  loc_B71227: FLdPr var_B0
  loc_B7122A: from_stack_1 = clsliquceme.RecordCount
  loc_B7122F: ILdRf var_AC
  loc_B71232: CR8I4
  loc_B71233: CVarR4
  loc_B71237: PopAdLdVar
  loc_B71238: FLdPr Me
  loc_B7123B: VCallAd Control_ID_pbar
  loc_B7123E: FStAdFunc var_A8
  loc_B71241: FLdPr var_A8
  loc_B71244: LateIdSt
  loc_B71249: FFree1Ad var_A8
  loc_B7124C: LitVar_TRUE var_94
  loc_B7124F: PopAdLdVar
  loc_B71250: FLdPr Me
  loc_B71253: VCallAd Control_ID_pbar
  loc_B71256: FStAdFunc var_A8
  loc_B71259: FLdPr var_A8
  loc_B7125C: LateIdSt
  loc_B71261: FFree1Ad var_A8
  loc_B71264: FLdRfVar var_FA
  loc_B71267: FLdPr var_B0
  loc_B7126A: from_stack_1 = clsliquceme.EOF
  loc_B7126F: FLdI2 var_FA
  loc_B71272: NotI4
  loc_B71273: BranchF loc_B71348
  loc_B71276: FLdRfVar var_AC
  loc_B71279: FLdPr var_B0
  loc_B7127C: from_stack_1 = clsliquceme.AbsolutePosition
  loc_B71281: ILdRf var_AC
  loc_B71284: CR8I4
  loc_B71285: CVarR4
  loc_B71289: PopAdLdVar
  loc_B7128A: FLdPr Me
  loc_B7128D: VCallAd Control_ID_pbar
  loc_B71290: FStAdFunc var_A8
  loc_B71293: FLdPr var_A8
  loc_B71296: LateIdSt
  loc_B7129B: FFree1Ad var_A8
  loc_B7129E: FLdRfVar var_AC
  loc_B712A1: FLdPr var_B0
  loc_B712A4: from_stack_1 = clsliquceme.AbsolutePosition
  loc_B712A9: FLdRfVar var_138
  loc_B712AC: FLdPr var_B0
  loc_B712AF: from_stack_1 = clsliquceme.RecordCount
  loc_B712B4: LitI4 1
  loc_B712B9: LitI4 1
  loc_B712BE: LitVarStr var_A4, "0" & Chr(37)
  loc_B712C3: FStVarCopyObj var_158
  loc_B712C6: FLdRfVar var_158
  loc_B712C9: ILdRf var_AC
  loc_B712CC: CR8I4
  loc_B712CD: ILdRf var_138
  loc_B712D0: CR8I4
  loc_B712D1: DivR8
  loc_B712D2: CVarR8
  loc_B712D6: ImpAdCallI2 Format$(, )
  loc_B712DB: FStStrNoPop var_B4
  loc_B712DE: FLdPr Me
  loc_B712E1: VCallAd Control_ID_ProgresoLbl
  loc_B712E4: FStAdFunc var_A8
  loc_B712E7: FLdPr var_A8
  loc_B712EA: Me.Caption = from_stack_1
  loc_B712EF: FFree1Str var_B4
  loc_B712F2: FFree1Ad var_A8
  loc_B712F5: FFreeVar var_148 = ""
  loc_B712FC: FLdPr Me
  loc_B712FF: MemLdStr global_96
  loc_B71302: FLdPr Me
  loc_B71305: MemLdStr global_92
  loc_B71308: Ary1LdPr
  loc_B71309: MemLdStr global_76
  loc_B7130C: FLdRfVar var_AC
  loc_B7130F: FLdPr var_B0
  loc_B71312: from_stack_1 = clsliquceme.CodiDifu
  loc_B71317: ILdRf var_AC
  loc_B7131A: CStrI4
  loc_B7131C: FStStrNoPop var_B4
  loc_B7131F: NeStr
  loc_B71321: FFree1Str var_B4
  loc_B71324: BranchF loc_B7132F
  loc_B71327: Call Proc_199_20_BD6AB0()
  loc_B7132C: Branch loc_B71334
  loc_B7132F: Call Proc_199_22_B722E4()
  loc_B71334: FLdPr Me
  loc_B71337: MemLdI2 global_104
  loc_B7133A: BranchF loc_B71340
  loc_B7133D: Branch loc_B7136F
  loc_B71340: ImpAdCallFPR4 DoEvents()
  loc_B71345: Branch loc_B71264
  loc_B71348: LitVar_FALSE
  loc_B7134C: PopAdLdVar
  loc_B7134D: FLdPr Me
  loc_B71350: VCallAd Control_ID_pbar
  loc_B71353: FStAdFunc var_A8
  loc_B71356: FLdPr var_A8
  loc_B71359: LateIdSt
  loc_B7135E: FFree1Ad var_A8
  loc_B71361: LitNothing
  loc_B71363: FStAd var_B0 
  loc_B71367: LitI2_Byte &HFF
  loc_B71369: FLdPr Me
  loc_B7136C: MemStI2 bGenerado
  loc_B7136F: LitI4 0
  loc_B71374: CI2I4
  loc_B71375: FLdPr Me
  loc_B71378: Me.MousePointer = from_stack_1
  loc_B7137D: LitVarStr var_94, vbNullString
  loc_B71382: PopAdLdVar
  loc_B71383: FLdPr Me
  loc_B71386: VCallAd Control_ID_statusBar
  loc_B71389: FStAdFunc var_A8
  loc_B7138C: FLdPr var_A8
  loc_B7138F: LateIdSt
  loc_B71394: FFree1Ad var_A8
  loc_B71397: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A66434
  'Data Table: 4BADEC
  loc_A663C4: FLdRfVar var_88
  loc_A663C7: LitI2_Byte 0
  loc_A663C9: LitI2_Byte &HFF
  loc_A663CB: ImpAdLdI4 MemVar_D93C84
  loc_A663CE: FLdPr Me
  loc_A663D1: MemLdRfVar from_stack_1.global_56
  loc_A663D4: NewIfNullPr IFileSystem3
  loc_A663D7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A663DC: ILdRf var_88
  loc_A663DF: FLdPr Me
  loc_A663E2: MemStVarAd
  loc_A663E6: FFree1Ad var_88
  loc_A663E9: LitI2_Byte 0
  loc_A663EB: ImpAdStI2 MemVar_D93C8A
  loc_A663EE: Call Proc_199_23_C35B58()
  loc_A663F3: Call Proc_199_24_C00144()
  loc_A663F8: Call Proc_199_25_B52DEC()
  loc_A663FD: Call Proc_199_26_BA451C()
  loc_A66402: Call Proc_199_27_B02D38()
  loc_A66407: Call Proc_199_28_9F5F24()
  loc_A6640C: FLdPr Me
  loc_A6640F: MemLdRfVar from_stack_1.global_60
  loc_A66412: LdPrVar
  loc_A66414: LateMemCall
  loc_A6641A: FLdPr Me
  loc_A6641D: MemLdStr global_76
  loc_A66420: LitStr vbNullString
  loc_A66423: EqStr
  loc_A66425: BranchF loc_A66430
  loc_A66428: LitStr vbNullString
  loc_A6642B: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A66430: ExitProcHresult
  loc_A66431: LeI4
  loc_A66432: PopTmpLdAd2 arg_7403
End Sub

Private Function Proc_199_16_9AFE7C() '9AFE7C
  'Data Table: 4BADEC
  loc_9AFE74: LitI2_Byte &HFF
  loc_9AFE76: Call Proc_199_19_AF4C3C()
  loc_9AFE7B: ExitProcHresult
End Function

Private Function Proc_199_17_A1F3F4(arg_C) 'A1F3F4
  'Data Table: 4BADEC
  loc_A1F3B8: ZeroRetVal
  loc_A1F3BA: LitI4 1
  loc_A1F3BF: LitI4 1
  loc_A1F3C4: LitVarStr var_A8, "000000"
  loc_A1F3C9: FStVarCopyObj var_B8
  loc_A1F3CC: FLdRfVar var_B8
  loc_A1F3CF: FLdRfVar arg_C
  loc_A1F3D2: CVarRef
  loc_A1F3D7: FLdRfVar var_C8
  loc_A1F3DA: ImpAdCallFPR4  = Format(, )
  loc_A1F3DF: FLdRfVar var_C8
  loc_A1F3E2: CStrVarTmp
  loc_A1F3E3: FStStr var_88
  loc_A1F3E6: FFreeVar var_B8 = ""
  loc_A1F3ED: ExitProcCbHresult
End Function

Private Function Proc_199_18_ACFE24() 'ACFE24
  'Data Table: 4BADEC
  loc_ACFD10: FLdPr Me
  loc_ACFD13: VCallAd Control_ID_OrdeLiceDesdeMsk
  loc_ACFD16: FStAdFunc var_88
  loc_ACFD19: FLdPr var_88
  loc_ACFD1C: LateIdLdVar var_98 DispID_22 0
  loc_ACFD23: PopAd
  loc_ACFD25: FLdPr Me
  loc_ACFD28: VCallAd Control_ID_OrdeLiceDesdeMsk
  loc_ACFD2B: FStAdFunc var_A0
  loc_ACFD2E: FLdPr var_A0
  loc_ACFD31: LateIdLdVar var_B0 DispID_22 0
  loc_ACFD38: PopAd
  loc_ACFD3A: LitVarStr var_E4, vbNullString
  loc_ACFD3F: FStVarCopyObj var_F4
  loc_ACFD42: FLdRfVar var_F4
  loc_ACFD45: LitStr " AND liquceme.OrdeLice >= "
  loc_ACFD48: FLdRfVar var_B0
  loc_ACFD4B: CStrVarTmp
  loc_ACFD4C: FStStrNoPop var_B4
  loc_ACFD4F: ConcatStr
  loc_ACFD50: CVarStr var_D4
  loc_ACFD53: FLdRfVar var_98
  loc_ACFD56: CStrVarTmp
  loc_ACFD57: FStStrNoPop var_9C
  loc_ACFD5A: LitStr vbNullString
  loc_ACFD5D: NeStr
  loc_ACFD5F: CVarBoolI2 var_C4
  loc_ACFD63: FLdRfVar var_104
  loc_ACFD66: ImpAdCallFPR4  = IIf(, , )
  loc_ACFD6B: FLdRfVar var_104
  loc_ACFD6E: CStrVarTmp
  loc_ACFD6F: FStStrNoPop var_108
  loc_ACFD72: FLdPr Me
  loc_ACFD75: MemStStrCopy
  loc_ACFD79: FFreeStr var_9C = "": var_B4 = ""
  loc_ACFD82: FFreeAd var_88 = ""
  loc_ACFD89: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_ACFD98: FLdPr Me
  loc_ACFD9B: VCallAd Control_ID_OrdeLiceHastaMsk
  loc_ACFD9E: FStAdFunc var_88
  loc_ACFDA1: FLdPr var_88
  loc_ACFDA4: LateIdLdVar var_98 DispID_22 0
  loc_ACFDAB: PopAd
  loc_ACFDAD: FLdPr Me
  loc_ACFDB0: VCallAd Control_ID_OrdeLiceHastaMsk
  loc_ACFDB3: FStAdFunc var_A0
  loc_ACFDB6: FLdPr var_A0
  loc_ACFDB9: LateIdLdVar var_B0 DispID_22 0
  loc_ACFDC0: PopAd
  loc_ACFDC2: LitVarStr var_E4, vbNullString
  loc_ACFDC7: FStVarCopyObj var_F4
  loc_ACFDCA: FLdRfVar var_F4
  loc_ACFDCD: LitStr " AND liquceme.OrdeLice <= "
  loc_ACFDD0: FLdRfVar var_B0
  loc_ACFDD3: CStrVarTmp
  loc_ACFDD4: FStStrNoPop var_B4
  loc_ACFDD7: ConcatStr
  loc_ACFDD8: CVarStr var_D4
  loc_ACFDDB: FLdRfVar var_98
  loc_ACFDDE: CStrVarTmp
  loc_ACFDDF: FStStrNoPop var_9C
  loc_ACFDE2: LitStr vbNullString
  loc_ACFDE5: NeStr
  loc_ACFDE7: CVarBoolI2 var_C4
  loc_ACFDEB: FLdRfVar var_104
  loc_ACFDEE: ImpAdCallFPR4  = IIf(, , )
  loc_ACFDF3: FLdRfVar var_104
  loc_ACFDF6: CStrVarTmp
  loc_ACFDF7: FStStrNoPop var_108
  loc_ACFDFA: FLdPr Me
  loc_ACFDFD: MemStStrCopy
  loc_ACFE01: FFreeStr var_9C = "": var_B4 = ""
  loc_ACFE0A: FFreeAd var_88 = ""
  loc_ACFE11: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_ACFE20: ExitProcHresult
  loc_ACFE21: StAryMove
End Function

Private Function Proc_199_19_AF4C3C(arg_C) 'AF4C3C
  'Data Table: 4BADEC
  loc_AF4AB4: from_stack_1v = Proc_199_18_ACFE24()
  loc_AF4AB9: FLdPr Me
  loc_AF4ABC: MemLdRfVar from_stack_1.global_84
  loc_AF4ABF: NewIfNullAd
  loc_AF4AC2: FStAd var_88 
  loc_AF4AC6: LitStr "SELECT OrdeLice, sum(TotaLice) as TotaLice"
  loc_AF4AC9: LitStr " FROM liquceme"
  loc_AF4ACC: ConcatStr
  loc_AF4ACD: FStStrNoPop var_8C
  loc_AF4AD0: LitStr " WHERE TipoLice = 'Aforo' AND FeacLice is not null"
  loc_AF4AD3: ConcatStr
  loc_AF4AD4: FStStrNoPop var_90
  loc_AF4AD7: LitStr " AND liquceme.PeriLiqu = "
  loc_AF4ADA: ConcatStr
  loc_AF4ADB: FStStrNoPop var_98
  loc_AF4ADE: FLdRfVar var_92
  loc_AF4AE1: FLdPr Me
  loc_AF4AE4: MemLdRfVar from_stack_1.global_80
  loc_AF4AE7: NewIfNullPr clsliquidacion
  loc_AF4AEA: from_stack_1 = clsliquidacion.PeriLiqu
  loc_AF4AEF: FLdI2 var_92
  loc_AF4AF2: CStrUI1
  loc_AF4AF4: FStStrNoPop var_9C
  loc_AF4AF7: ConcatStr
  loc_AF4AF8: FStStrNoPop var_A0
  loc_AF4AFB: LitStr " AND liquceme.CodiTili = "
  loc_AF4AFE: ConcatStr
  loc_AF4AFF: FStStrNoPop var_A8
  loc_AF4B02: FLdRfVar var_A2
  loc_AF4B05: FLdPr Me
  loc_AF4B08: MemLdRfVar from_stack_1.global_80
  loc_AF4B0B: NewIfNullPr clsliquidacion
  loc_AF4B0E: from_stack_1 = clsliquidacion.CodiTili
  loc_AF4B13: FLdUI1
  loc_AF4B17: CStrI2
  loc_AF4B19: FStStrNoPop var_AC
  loc_AF4B1C: ConcatStr
  loc_AF4B1D: FStStrNoPop var_B0
  loc_AF4B20: LitStr " AND liquceme.NumeLiqu = "
  loc_AF4B23: ConcatStr
  loc_AF4B24: FStStrNoPop var_B8
  loc_AF4B27: FLdRfVar var_B2
  loc_AF4B2A: FLdPr Me
  loc_AF4B2D: MemLdRfVar from_stack_1.global_80
  loc_AF4B30: NewIfNullPr clsliquidacion
  loc_AF4B33: from_stack_1 = clsliquidacion.NumeLiqu
  loc_AF4B38: FLdI2 var_B2
  loc_AF4B3B: CStrUI1
  loc_AF4B3D: FStStrNoPop var_BC
  loc_AF4B40: ConcatStr
  loc_AF4B41: FStStrNoPop var_C0
  loc_AF4B44: FLdPr Me
  loc_AF4B47: MemLdStr global_112
  loc_AF4B4A: ConcatStr
  loc_AF4B4B: FStStrNoPop var_C4
  loc_AF4B4E: FLdPr Me
  loc_AF4B51: MemLdStr global_116
  loc_AF4B54: ConcatStr
  loc_AF4B55: FStStrNoPop var_C8
  loc_AF4B58: LitStr " GROUP BY CodiDifu HAVING TotaLice <> 0 AND OrdeLice > 0 ORDER BY OrdeLice"
  loc_AF4B5B: ConcatStr
  loc_AF4B5C: FStStrNoPop var_CC
  loc_AF4B5F: FLdPr var_88
  loc_AF4B62: Call clsliquceme.RedefineRS(from_stack_1v)
  loc_AF4B67: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AF4B86: FLdRfVar var_D0
  loc_AF4B89: FLdPr var_88
  loc_AF4B8C: from_stack_1 = clsliquceme.RecordCount
  loc_AF4B91: ILdRf var_D0
  loc_AF4B94: LitI4 0
  loc_AF4B99: GtI4
  loc_AF4B9A: BranchF loc_AF4C09
  loc_AF4B9D: FLdI2 arg_C
  loc_AF4BA0: BranchF loc_AF4C09
  loc_AF4BA3: FLdPr var_88
  loc_AF4BA6: Call clsliquceme.MoveFirst()
  loc_AF4BAB: FLdRfVar var_D0
  loc_AF4BAE: FLdPr var_88
  loc_AF4BB1: from_stack_1 = clsliquceme.OrdeLice
  loc_AF4BB6: ILdRf var_D0
  loc_AF4BB9: CStrI4
  loc_AF4BBB: CVarStr var_E0
  loc_AF4BBE: PopAdLdVar
  loc_AF4BBF: FLdPr Me
  loc_AF4BC2: VCallAd Control_ID_OrdeLiceDesdeMsk
  loc_AF4BC5: FStAdFunc var_F4
  loc_AF4BC8: FLdPr var_F4
  loc_AF4BCB: LateIdSt
  loc_AF4BD0: FFree1Ad var_F4
  loc_AF4BD3: FFree1Var var_E0 = ""
  loc_AF4BD6: FLdPr var_88
  loc_AF4BD9: Call clsliquceme.MoveLast()
  loc_AF4BDE: FLdRfVar var_D0
  loc_AF4BE1: FLdPr var_88
  loc_AF4BE4: from_stack_1 = clsliquceme.OrdeLice
  loc_AF4BE9: ILdRf var_D0
  loc_AF4BEC: CStrI4
  loc_AF4BEE: CVarStr var_E0
  loc_AF4BF1: PopAdLdVar
  loc_AF4BF2: FLdPr Me
  loc_AF4BF5: VCallAd Control_ID_OrdeLiceHastaMsk
  loc_AF4BF8: FStAdFunc var_F4
  loc_AF4BFB: FLdPr var_F4
  loc_AF4BFE: LateIdSt
  loc_AF4C03: FFree1Ad var_F4
  loc_AF4C06: FFree1Var var_E0 = ""
  loc_AF4C09: FLdRfVar var_D0
  loc_AF4C0C: FLdPr var_88
  loc_AF4C0F: from_stack_1 = clsliquceme.RecordCount
  loc_AF4C14: ILdRf var_D0
  loc_AF4C17: CStrI4
  loc_AF4C19: FStStrNoPop var_8C
  loc_AF4C1C: FLdPr Me
  loc_AF4C1F: VCallAd Control_ID_ProgresoLbl
  loc_AF4C22: FStAdFunc var_F4
  loc_AF4C25: FLdPr var_F4
  loc_AF4C28: Me.Caption = from_stack_1
  loc_AF4C2D: FFree1Str var_8C
  loc_AF4C30: FFree1Ad var_F4
  loc_AF4C33: LitNothing
  loc_AF4C35: FStAd var_88 
  loc_AF4C39: ExitProcHresult
End Function

Private Function Proc_199_20_BD6AB0() 'BD6AB0
  'Data Table: 4BADEC
  loc_BD6384: FLdPr Me
  loc_BD6387: MemLdStr global_96
  loc_BD638A: LitI4 1
  loc_BD638F: AddI4
  loc_BD6390: FLdPr Me
  loc_BD6393: MemStI4 global_96
  loc_BD6396: LitI2_Byte 0
  loc_BD6398: CUI1I2
  loc_BD639A: FLdPr Me
  loc_BD639D: MemStUI1
  loc_BD63A1: LitI4 0
  loc_BD63A6: FLdPr Me
  loc_BD63A9: MemLdStr global_96
  loc_BD63AC: FLdPr Me
  loc_BD63AF: MemLdRfVar from_stack_1.global_92
  loc_BD63B2: RedimPreserve
  loc_BD63BC: FLdPr Me
  loc_BD63BF: MemLdRfVar from_stack_1.global_84
  loc_BD63C2: NewIfNullAd
  loc_BD63C5: FStAd var_88 
  loc_BD63C9: FLdRfVar var_8C
  loc_BD63CC: FLdPr var_88
  loc_BD63CF: from_stack_1 = clsliquceme.CucuPers
  loc_BD63D4: LitI2_Byte 0
  loc_BD63D6: LitVar_Missing var_C0
  loc_BD63D9: LitI2_Byte 0
  loc_BD63DB: FLdZeroAd var_8C
  loc_BD63DE: CVarStr var_A0
  loc_BD63E1: PopAdLdVar
  loc_BD63E2: FLdPr Me
  loc_BD63E5: MemLdStr global_96
  loc_BD63E8: FLdPr Me
  loc_BD63EB: MemLdStr global_92
  loc_BD63EE: AryLock
  loc_BD63F1: Ary1LdPr
  loc_BD63F2: MemLdRfVar from_stack_1.global_0
  loc_BD63F5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD63FA: AryUnlock
  loc_BD63FD: FFreeVar var_A0 = ""
  loc_BD6404: FLdRfVar var_A0
  loc_BD6407: FLdPr var_88
  loc_BD640A: from_stack_1 = clsliquceme.DetaPers
  loc_BD640F: LitI2_Byte 0
  loc_BD6411: LitVar_Missing var_C0
  loc_BD6414: LitI2_Byte 0
  loc_BD6416: FLdVar var_A0
  loc_BD641A: FLdPr Me
  loc_BD641D: MemLdStr global_96
  loc_BD6420: FLdPr Me
  loc_BD6423: MemLdStr global_92
  loc_BD6426: AryLock
  loc_BD6429: Ary1LdPr
  loc_BD642A: MemLdRfVar from_stack_1.global_4
  loc_BD642D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6432: AryUnlock
  loc_BD6435: FFreeVar var_A0 = ""
  loc_BD643C: FLdRfVar var_A0
  loc_BD643F: FLdPr var_88
  loc_BD6442: from_stack_1 = clsliquceme.Vinculo
  loc_BD6447: LitI2_Byte 0
  loc_BD6449: LitVar_Missing var_C0
  loc_BD644C: LitI2_Byte 0
  loc_BD644E: FLdVar var_A0
  loc_BD6452: FLdPr Me
  loc_BD6455: MemLdStr global_96
  loc_BD6458: FLdPr Me
  loc_BD645B: MemLdStr global_92
  loc_BD645E: AryLock
  loc_BD6461: Ary1LdPr
  loc_BD6462: MemLdRfVar from_stack_1.global_8
  loc_BD6465: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD646A: AryUnlock
  loc_BD646D: FFreeVar var_A0 = ""
  loc_BD6474: FLdRfVar var_A0
  loc_BD6477: FLdPr var_88
  loc_BD647A: from_stack_1 = clsliquceme.DetaCall
  loc_BD647F: LitI2_Byte 0
  loc_BD6481: LitVar_Missing var_C0
  loc_BD6484: LitI2_Byte 0
  loc_BD6486: FLdVar var_A0
  loc_BD648A: FLdPr Me
  loc_BD648D: MemLdStr global_96
  loc_BD6490: FLdPr Me
  loc_BD6493: MemLdStr global_92
  loc_BD6496: AryLock
  loc_BD6499: Ary1LdPr
  loc_BD649A: MemLdRfVar from_stack_1.global_12
  loc_BD649D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD64A2: AryUnlock
  loc_BD64A5: FFreeVar var_A0 = ""
  loc_BD64AC: FLdRfVar var_A0
  loc_BD64AF: FLdPr var_88
  loc_BD64B2: from_stack_1 = clsliquceme.NucaLice
  loc_BD64B7: LitI2_Byte 0
  loc_BD64B9: LitVar_Missing var_C0
  loc_BD64BC: LitI2_Byte 0
  loc_BD64BE: FLdVar var_A0
  loc_BD64C2: FLdPr Me
  loc_BD64C5: MemLdStr global_96
  loc_BD64C8: FLdPr Me
  loc_BD64CB: MemLdStr global_92
  loc_BD64CE: AryLock
  loc_BD64D1: Ary1LdPr
  loc_BD64D2: MemLdRfVar from_stack_1.global_16
  loc_BD64D5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD64DA: AryUnlock
  loc_BD64DD: FFreeVar var_A0 = ""
  loc_BD64E4: FLdRfVar var_A0
  loc_BD64E7: FLdPr var_88
  loc_BD64EA: from_stack_1 = clsliquceme.DetaBarr
  loc_BD64EF: LitI2_Byte 0
  loc_BD64F1: LitVar_Missing var_C0
  loc_BD64F4: LitI2_Byte 0
  loc_BD64F6: FLdVar var_A0
  loc_BD64FA: FLdPr Me
  loc_BD64FD: MemLdStr global_96
  loc_BD6500: FLdPr Me
  loc_BD6503: MemLdStr global_92
  loc_BD6506: AryLock
  loc_BD6509: Ary1LdPr
  loc_BD650A: MemLdRfVar from_stack_1.global_20
  loc_BD650D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6512: AryUnlock
  loc_BD6515: FFreeVar var_A0 = ""
  loc_BD651C: FLdRfVar var_8C
  loc_BD651F: FLdPr var_88
  loc_BD6522: from_stack_1 = clsliquceme.ManzLice
  loc_BD6527: LitI2_Byte 0
  loc_BD6529: LitVar_Missing var_C0
  loc_BD652C: LitI2_Byte 0
  loc_BD652E: FLdZeroAd var_8C
  loc_BD6531: CVarStr var_A0
  loc_BD6534: PopAdLdVar
  loc_BD6535: FLdPr Me
  loc_BD6538: MemLdStr global_96
  loc_BD653B: FLdPr Me
  loc_BD653E: MemLdStr global_92
  loc_BD6541: AryLock
  loc_BD6544: Ary1LdPr
  loc_BD6545: MemLdRfVar from_stack_1.global_24
  loc_BD6548: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD654D: AryUnlock
  loc_BD6550: FFreeVar var_A0 = ""
  loc_BD6557: FLdRfVar var_8C
  loc_BD655A: FLdPr var_88
  loc_BD655D: from_stack_1 = clsliquceme.CasaLice
  loc_BD6562: LitI2_Byte 0
  loc_BD6564: LitVar_Missing var_C0
  loc_BD6567: LitI2_Byte 0
  loc_BD6569: FLdZeroAd var_8C
  loc_BD656C: CVarStr var_A0
  loc_BD656F: PopAdLdVar
  loc_BD6570: FLdPr Me
  loc_BD6573: MemLdStr global_96
  loc_BD6576: FLdPr Me
  loc_BD6579: MemLdStr global_92
  loc_BD657C: AryLock
  loc_BD657F: Ary1LdPr
  loc_BD6580: MemLdRfVar from_stack_1.global_28
  loc_BD6583: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6588: AryUnlock
  loc_BD658B: FFreeVar var_A0 = ""
  loc_BD6592: FLdRfVar var_8C
  loc_BD6595: FLdPr var_88
  loc_BD6598: from_stack_1 = clsliquceme.UbicLice
  loc_BD659D: LitI2_Byte 0
  loc_BD659F: LitVar_Missing var_C0
  loc_BD65A2: LitI2_Byte 0
  loc_BD65A4: FLdZeroAd var_8C
  loc_BD65A7: CVarStr var_A0
  loc_BD65AA: PopAdLdVar
  loc_BD65AB: FLdPr Me
  loc_BD65AE: MemLdStr global_96
  loc_BD65B1: FLdPr Me
  loc_BD65B4: MemLdStr global_92
  loc_BD65B7: AryLock
  loc_BD65BA: Ary1LdPr
  loc_BD65BB: MemLdRfVar from_stack_1.global_32
  loc_BD65BE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD65C3: AryUnlock
  loc_BD65C6: FFreeVar var_A0 = ""
  loc_BD65CD: FLdRfVar var_A0
  loc_BD65D0: FLdPr var_88
  loc_BD65D3: from_stack_1 = clsliquceme.DetaLoca
  loc_BD65D8: LitI2_Byte 0
  loc_BD65DA: LitVar_Missing var_C0
  loc_BD65DD: LitI2_Byte 0
  loc_BD65DF: FLdVar var_A0
  loc_BD65E3: FLdPr Me
  loc_BD65E6: MemLdStr global_96
  loc_BD65E9: FLdPr Me
  loc_BD65EC: MemLdStr global_92
  loc_BD65EF: AryLock
  loc_BD65F2: Ary1LdPr
  loc_BD65F3: MemLdRfVar from_stack_1.global_36
  loc_BD65F6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD65FB: AryUnlock
  loc_BD65FE: FFreeVar var_A0 = ""
  loc_BD6605: FLdRfVar var_A0
  loc_BD6608: FLdPr var_88
  loc_BD660B: from_stack_1 = clsliquceme.CopoLice
  loc_BD6610: LitI2_Byte 0
  loc_BD6612: LitVar_Missing var_C0
  loc_BD6615: LitI2_Byte 0
  loc_BD6617: FLdVar var_A0
  loc_BD661B: FLdPr Me
  loc_BD661E: MemLdStr global_96
  loc_BD6621: FLdPr Me
  loc_BD6624: MemLdStr global_92
  loc_BD6627: AryLock
  loc_BD662A: Ary1LdPr
  loc_BD662B: MemLdRfVar from_stack_1.global_40
  loc_BD662E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6633: AryUnlock
  loc_BD6636: FFreeVar var_A0 = ""
  loc_BD663D: FLdRfVar var_A0
  loc_BD6640: FLdPr var_88
  loc_BD6643: from_stack_1 = clsliquceme.CallLiceReal
  loc_BD6648: LitI2_Byte 0
  loc_BD664A: LitVar_Missing var_C0
  loc_BD664D: LitI2_Byte 0
  loc_BD664F: FLdVar var_A0
  loc_BD6653: FLdPr Me
  loc_BD6656: MemLdStr global_96
  loc_BD6659: FLdPr Me
  loc_BD665C: MemLdStr global_92
  loc_BD665F: AryLock
  loc_BD6662: Ary1LdPr
  loc_BD6663: MemLdRfVar from_stack_1.global_44
  loc_BD6666: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD666B: AryUnlock
  loc_BD666E: FFreeVar var_A0 = ""
  loc_BD6675: FLdRfVar var_A0
  loc_BD6678: FLdPr var_88
  loc_BD667B: from_stack_1 = clsliquceme.NucaLiceReal
  loc_BD6680: LitI2_Byte 0
  loc_BD6682: LitVar_Missing var_C0
  loc_BD6685: LitI2_Byte 0
  loc_BD6687: FLdVar var_A0
  loc_BD668B: FLdPr Me
  loc_BD668E: MemLdStr global_96
  loc_BD6691: FLdPr Me
  loc_BD6694: MemLdStr global_92
  loc_BD6697: AryLock
  loc_BD669A: Ary1LdPr
  loc_BD669B: MemLdRfVar from_stack_1.global_48
  loc_BD669E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD66A3: AryUnlock
  loc_BD66A6: FFreeVar var_A0 = ""
  loc_BD66AD: FLdRfVar var_A0
  loc_BD66B0: FLdPr var_88
  loc_BD66B3: from_stack_1 = clsliquceme.BarrLiceReal
  loc_BD66B8: LitI2_Byte 0
  loc_BD66BA: LitVar_Missing var_C0
  loc_BD66BD: LitI2_Byte 0
  loc_BD66BF: FLdVar var_A0
  loc_BD66C3: FLdPr Me
  loc_BD66C6: MemLdStr global_96
  loc_BD66C9: FLdPr Me
  loc_BD66CC: MemLdStr global_92
  loc_BD66CF: AryLock
  loc_BD66D2: Ary1LdPr
  loc_BD66D3: MemLdRfVar from_stack_1.bGenerado
  loc_BD66D6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD66DB: AryUnlock
  loc_BD66DE: FFreeVar var_A0 = ""
  loc_BD66E5: FLdRfVar var_A0
  loc_BD66E8: FLdPr var_88
  loc_BD66EB: from_stack_1 = clsliquceme.ManzLiceReal
  loc_BD66F0: LitI2_Byte 0
  loc_BD66F2: LitVar_Missing var_C0
  loc_BD66F5: LitI2_Byte 0
  loc_BD66F7: FLdVar var_A0
  loc_BD66FB: FLdPr Me
  loc_BD66FE: MemLdStr global_96
  loc_BD6701: FLdPr Me
  loc_BD6704: MemLdStr global_92
  loc_BD6707: AryLock
  loc_BD670A: Ary1LdPr
  loc_BD670B: MemLdRfVar from_stack_1.global_56
  loc_BD670E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6713: AryUnlock
  loc_BD6716: FFreeVar var_A0 = ""
  loc_BD671D: FLdRfVar var_A0
  loc_BD6720: FLdPr var_88
  loc_BD6723: from_stack_1 = clsliquceme.CasaLiceReal
  loc_BD6728: LitI2_Byte 0
  loc_BD672A: LitVar_Missing var_C0
  loc_BD672D: LitI2_Byte 0
  loc_BD672F: FLdVar var_A0
  loc_BD6733: FLdPr Me
  loc_BD6736: MemLdStr global_96
  loc_BD6739: FLdPr Me
  loc_BD673C: MemLdStr global_92
  loc_BD673F: AryLock
  loc_BD6742: Ary1LdPr
  loc_BD6743: MemLdRfVar from_stack_1.global_60
  loc_BD6746: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD674B: AryUnlock
  loc_BD674E: FFreeVar var_A0 = ""
  loc_BD6755: FLdRfVar var_A0
  loc_BD6758: FLdPr var_88
  loc_BD675B: from_stack_1 = clsliquceme.UbicLiceReal
  loc_BD6760: LitI2_Byte 0
  loc_BD6762: LitVar_Missing var_C0
  loc_BD6765: LitI2_Byte 0
  loc_BD6767: FLdVar var_A0
  loc_BD676B: FLdPr Me
  loc_BD676E: MemLdStr global_96
  loc_BD6771: FLdPr Me
  loc_BD6774: MemLdStr global_92
  loc_BD6777: AryLock
  loc_BD677A: Ary1LdPr
  loc_BD677B: MemLdRfVar from_stack_1.global_64
  loc_BD677E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6783: AryUnlock
  loc_BD6786: FFreeVar var_A0 = ""
  loc_BD678D: FLdRfVar var_A0
  loc_BD6790: FLdPr var_88
  loc_BD6793: from_stack_1 = clsliquceme.LocaLiceReal
  loc_BD6798: LitI2_Byte 0
  loc_BD679A: LitVar_Missing var_C0
  loc_BD679D: LitI2_Byte 0
  loc_BD679F: FLdVar var_A0
  loc_BD67A3: FLdPr Me
  loc_BD67A6: MemLdStr global_96
  loc_BD67A9: FLdPr Me
  loc_BD67AC: MemLdStr global_92
  loc_BD67AF: AryLock
  loc_BD67B2: Ary1LdPr
  loc_BD67B3: MemLdRfVar from_stack_1.global_68
  loc_BD67B6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD67BB: AryUnlock
  loc_BD67BE: FFreeVar var_A0 = ""
  loc_BD67C5: FLdRfVar var_A0
  loc_BD67C8: FLdPr var_88
  loc_BD67CB: from_stack_1 = clsliquceme.CopoLiceReal
  loc_BD67D0: LitI2_Byte 0
  loc_BD67D2: LitVar_Missing var_C0
  loc_BD67D5: LitI2_Byte 0
  loc_BD67D7: FLdVar var_A0
  loc_BD67DB: FLdPr Me
  loc_BD67DE: MemLdStr global_96
  loc_BD67E1: FLdPr Me
  loc_BD67E4: MemLdStr global_92
  loc_BD67E7: AryLock
  loc_BD67EA: Ary1LdPr
  loc_BD67EB: MemLdRfVar from_stack_1.global_72
  loc_BD67EE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD67F3: AryUnlock
  loc_BD67F6: FFreeVar var_A0 = ""
  loc_BD67FD: FLdRfVar var_C4
  loc_BD6800: FLdPr var_88
  loc_BD6803: from_stack_1 = clsliquceme.CodiDifu
  loc_BD6808: LitI2_Byte 0
  loc_BD680A: LitVar_Missing var_A0
  loc_BD680D: LitI2_Byte 0
  loc_BD680F: ILdRf var_C4
  loc_BD6812: CVarI4
  loc_BD6816: PopAdLdVar
  loc_BD6817: FLdPr Me
  loc_BD681A: MemLdStr global_96
  loc_BD681D: FLdPr Me
  loc_BD6820: MemLdStr global_92
  loc_BD6823: AryLock
  loc_BD6826: Ary1LdPr
  loc_BD6827: MemLdRfVar from_stack_1.global_76
  loc_BD682A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD682F: AryUnlock
  loc_BD6832: FFree1Var var_A0 = ""
  loc_BD6835: FLdRfVar var_C4
  loc_BD6838: FLdPr var_88
  loc_BD683B: from_stack_1 = clsliquceme.OrdeLice
  loc_BD6840: LitI2_Byte 0
  loc_BD6842: LitVar_Missing var_A0
  loc_BD6845: LitI2_Byte 0
  loc_BD6847: ILdRf var_C4
  loc_BD684A: CVarI4
  loc_BD684E: PopAdLdVar
  loc_BD684F: FLdPr Me
  loc_BD6852: MemLdStr global_96
  loc_BD6855: FLdPr Me
  loc_BD6858: MemLdStr global_92
  loc_BD685B: AryLock
  loc_BD685E: Ary1LdPr
  loc_BD685F: MemLdRfVar from_stack_1.global_92
  loc_BD6862: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6867: AryUnlock
  loc_BD686A: FFree1Var var_A0 = ""
  loc_BD686D: FLdRfVar var_A0
  loc_BD6870: FLdPr var_88
  loc_BD6873: from_stack_1 = clsliquceme.CodiUsua
  loc_BD6878: LitI2_Byte 0
  loc_BD687A: LitVar_Missing var_C0
  loc_BD687D: LitI2_Byte 0
  loc_BD687F: FLdVar var_A0
  loc_BD6883: FLdPr Me
  loc_BD6886: MemLdStr global_96
  loc_BD6889: FLdPr Me
  loc_BD688C: MemLdStr global_92
  loc_BD688F: AryLock
  loc_BD6892: Ary1LdPr
  loc_BD6893: MemLdRfVar from_stack_1.global_96
  loc_BD6896: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD689B: AryUnlock
  loc_BD689E: FFreeVar var_A0 = ""
  loc_BD68A5: FLdRfVar var_A0
  loc_BD68A8: FLdPr var_88
  loc_BD68AB: from_stack_1 = clsliquceme.DetaTise
  loc_BD68B0: LitI2_Byte 0
  loc_BD68B2: LitVar_Missing var_C0
  loc_BD68B5: LitI2_Byte 0
  loc_BD68B7: FLdVar var_A0
  loc_BD68BB: FLdPr Me
  loc_BD68BE: MemLdStr global_96
  loc_BD68C1: FLdPr Me
  loc_BD68C4: MemLdStr global_92
  loc_BD68C7: AryLock
  loc_BD68CA: Ary1LdPr
  loc_BD68CB: MemLdRfVar from_stack_1.global_80
  loc_BD68CE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD68D3: AryUnlock
  loc_BD68D6: FFreeVar var_A0 = ""
  loc_BD68DD: FLdRfVar var_A0
  loc_BD68E0: FLdPr var_88
  loc_BD68E3: from_stack_1 = clsliquceme.UbicTise
  loc_BD68E8: LitI2_Byte 0
  loc_BD68EA: LitVar_Missing var_C0
  loc_BD68ED: LitI2_Byte 0
  loc_BD68EF: FLdVar var_A0
  loc_BD68F3: FLdPr Me
  loc_BD68F6: MemLdStr global_96
  loc_BD68F9: FLdPr Me
  loc_BD68FC: MemLdStr global_92
  loc_BD68FF: AryLock
  loc_BD6902: Ary1LdPr
  loc_BD6903: MemLdRfVar from_stack_1.global_84
  loc_BD6906: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD690B: AryUnlock
  loc_BD690E: FFreeVar var_A0 = ""
  loc_BD6915: FLdRfVar var_E0
  loc_BD6918: LitVarStr var_B0, "FeveDifu"
  loc_BD691D: PopAdLdVar
  loc_BD691E: FLdRfVar var_DC
  loc_BD6921: FLdRfVar var_D8
  loc_BD6924: FLdPr var_88
  loc_BD6927: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BD692C: FLdPr var_D8
  loc_BD692F:  = Me.Fields
  loc_BD6934: FLdPr var_DC
  loc_BD6937: from_stack_2 = Me.Item(from_stack_1)
  loc_BD693C: LitI2_Byte 0
  loc_BD693E: LitVar_Missing var_C0
  loc_BD6941: LitI2_Byte 0
  loc_BD6943: FLdZeroAd var_E0
  loc_BD6946: CVarAd
  loc_BD694A: PopAdLdVar
  loc_BD694B: FLdPr Me
  loc_BD694E: MemLdStr global_96
  loc_BD6951: FLdPr Me
  loc_BD6954: MemLdStr global_92
  loc_BD6957: AryLock
  loc_BD695A: Ary1LdPr
  loc_BD695B: MemLdRfVar from_stack_1.global_88
  loc_BD695E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6963: AryUnlock
  loc_BD6966: FFreeAd var_D8 = ""
  loc_BD696D: FFreeVar var_A0 = ""
  loc_BD6974: FLdRfVar var_E8
  loc_BD6977: FLdPr var_88
  loc_BD697A: from_stack_1 = clsliquceme.DeudLice
  loc_BD697F: LitI2_Byte 0
  loc_BD6981: LitVar_Missing var_A0
  loc_BD6984: LitI2_Byte &HFF
  loc_BD6986: FLdFPR8 var_E8
  loc_BD6989: CVarR8
  loc_BD698D: PopAdLdVar
  loc_BD698E: FLdPr Me
  loc_BD6991: MemLdStr global_96
  loc_BD6994: FLdPr Me
  loc_BD6997: MemLdStr global_92
  loc_BD699A: AryLock
  loc_BD699D: Ary1LdPr
  loc_BD699E: MemLdRfVar from_stack_1.global_100
  loc_BD69A1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD69A6: AryUnlock
  loc_BD69A9: FFree1Var var_A0 = ""
  loc_BD69AC: FLdRfVar var_A0
  loc_BD69AF: FLdPr var_88
  loc_BD69B2: from_stack_1 = clsliquceme.Bimestres
  loc_BD69B7: FLdRfVar var_A0
  loc_BD69BA: CStrVarVal var_8C
  loc_BD69BE: ImpAdCallI2 StrReverse()
  loc_BD69C3: FStStr var_10C
  loc_BD69C6: LitStr ","
  loc_BD69C9: ImpAdCallI2 StrReverse()
  loc_BD69CE: FStStr var_110
  loc_BD69D1: LitStr " y"
  loc_BD69D4: ImpAdCallI2 StrReverse()
  loc_BD69D9: FStStr var_114
  loc_BD69DC: LitI4 0
  loc_BD69E1: LitI4 1
  loc_BD69E6: LitI4 1
  loc_BD69EB: FLdZeroAd var_114
  loc_BD69EE: FStStrNoPop var_F4
  loc_BD69F1: FLdZeroAd var_110
  loc_BD69F4: FStStrNoPop var_F0
  loc_BD69F7: FLdZeroAd var_10C
  loc_BD69FA: FStStrNoPop var_EC
  loc_BD69FD: ImpAdCallI2 Replace(, , , , , )
  loc_BD6A02: FStStrNoPop var_F8
  loc_BD6A05: ImpAdCallI2 StrReverse()
  loc_BD6A0A: FStStr var_118
  loc_BD6A0D: LitI2_Byte 0
  loc_BD6A0F: LitVar_Missing var_108
  loc_BD6A12: LitI2_Byte 0
  loc_BD6A14: FLdZeroAd var_118
  loc_BD6A17: CVarStr var_C0
  loc_BD6A1A: PopAdLdVar
  loc_BD6A1B: FLdPr Me
  loc_BD6A1E: MemLdStr global_96
  loc_BD6A21: FLdPr Me
  loc_BD6A24: MemLdStr global_92
  loc_BD6A27: AryLock
  loc_BD6A2A: Ary1LdPr
  loc_BD6A2B: MemLdRfVar from_stack_1.global_104
  loc_BD6A2E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6A33: AryUnlock
  loc_BD6A36: FFreeStr var_8C = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_BD6A4B: FFreeVar var_A0 = "": var_C0 = ""
  loc_BD6A54: FLdRfVar var_C4
  loc_BD6A57: FLdPr var_88
  loc_BD6A5A: from_stack_1 = clsliquceme.CodiDifu
  loc_BD6A5F: FLdRfVar var_11C
  loc_BD6A62: FLdPr var_88
  loc_BD6A65: from_stack_1 = clsliquceme.OrdeLice
  loc_BD6A6A: ILdRf var_11C
  loc_BD6A6D: CStrI4
  loc_BD6A6F: FStStrNoPop var_EC
  loc_BD6A72: ILdRf var_C4
  loc_BD6A75: CStrI4
  loc_BD6A77: FStStrNoPop var_8C
  loc_BD6A7A: LitI2_Byte 4
  loc_BD6A7C: CUI1I2
  loc_BD6A7E: ImpAdCallI2  = Proc_57_40_AD4A10(, )
  loc_BD6A83: PopTmpLdAdStr var_124
  loc_BD6A86: FLdPr Me
  loc_BD6A89: MemLdStr global_96
  loc_BD6A8C: FLdPr Me
  loc_BD6A8F: MemLdStr global_92
  loc_BD6A92: Ary1LdPr
  loc_BD6A93: MemLdRfVar from_stack_1.global_108
  loc_BD6A96: StAryMove
  loc_BD6A98: FFreeStr var_8C = ""
  loc_BD6A9F: LitNothing
  loc_BD6AA1: FStAd var_88 
  loc_BD6AA5: Call Proc_199_21_AE93C8()
  loc_BD6AAA: Call Proc_199_22_B722E4()
  loc_BD6AAF: ExitProcHresult
End Function

Private Function Proc_199_21_AE93C8() 'AE93C8
  'Data Table: 4BADEC
  loc_AE924C: FLdPr Me
  loc_AE924F: MemLdRfVar from_stack_1.global_88
  loc_AE9252: NewIfNullAd
  loc_AE9255: FStAd var_88 
  loc_AE9259: LitStr "OrdeLice = "
  loc_AE925C: FLdPr Me
  loc_AE925F: MemLdStr global_96
  loc_AE9262: FLdPr Me
  loc_AE9265: MemLdStr global_92
  loc_AE9268: Ary1LdPr
  loc_AE9269: MemLdStr global_92
  loc_AE926C: ConcatStr
  loc_AE926D: PopTmpLdAdStr
  loc_AE9271: FLdPr var_88
  loc_AE9274: Call clsliquceme.Filter(from_stack_1v)
  loc_AE9279: FFree1Str var_8C
  loc_AE927C: FLdRfVar var_90
  loc_AE927F: FLdPr var_88
  loc_AE9282: from_stack_1 = clsliquceme.RecordCount
  loc_AE9287: ILdRf var_90
  loc_AE928A: LitI4 0
  loc_AE928F: GtI4
  loc_AE9290: BranchF loc_AE939B
  loc_AE9293: FLdRfVar var_90
  loc_AE9296: FLdPr var_88
  loc_AE9299: from_stack_1 = clsliquceme.RecordCount
  loc_AE929E: LitI4 0
  loc_AE92A3: ILdRf var_90
  loc_AE92A6: FLdPr Me
  loc_AE92A9: MemLdStr global_96
  loc_AE92AC: FLdPr Me
  loc_AE92AF: MemLdStr global_92
  loc_AE92B2: Ary1LdPr
  loc_AE92B3: MemLdRfVar from_stack_1.global_112
  loc_AE92B6: RedimPreserve
  loc_AE92C0: FLdPr var_88
  loc_AE92C3: Call clsliquceme.MoveFirst()
  loc_AE92C8: LitI2_Byte 1
  loc_AE92CA: FLdPr Me
  loc_AE92CD: MemLdRfVar from_stack_1.global_100
  loc_AE92D0: FLdPr Me
  loc_AE92D3: MemLdStr global_96
  loc_AE92D6: FLdPr Me
  loc_AE92D9: MemLdStr global_92
  loc_AE92DC: Ary1LdPr
  loc_AE92DD: MemLdStr global_112
  loc_AE92E0: LitI2_Byte 1
  loc_AE92E2: FnUBound
  loc_AE92E4: CI2I4
  loc_AE92E5: ForI2 var_94
  loc_AE92EB: FLdRfVar var_A4
  loc_AE92EE: FLdPr var_88
  loc_AE92F1: from_stack_1 = clsliquceme.DetaPers
  loc_AE92F6: LitI2_Byte 0
  loc_AE92F8: LitVar_Missing var_CC
  loc_AE92FB: LitI2_Byte 0
  loc_AE92FD: FLdVar var_A4
  loc_AE9301: FLdPr Me
  loc_AE9304: MemLdI2 global_100
  loc_AE9307: CI4UI1
  loc_AE9308: FLdPr Me
  loc_AE930B: MemLdStr global_96
  loc_AE930E: FLdPr Me
  loc_AE9311: MemLdStr global_92
  loc_AE9314: AryLock
  loc_AE9317: Ary1LdPr
  loc_AE9318: MemLdStr global_112
  loc_AE931B: AryLock
  loc_AE931E: Ary1LdPr
  loc_AE931F: MemLdRfVar from_stack_1.global_0
  loc_AE9322: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE9327: AryUnlock
  loc_AE932A: AryUnlock
  loc_AE932D: FFreeVar var_A4 = ""
  loc_AE9334: FLdRfVar var_8C
  loc_AE9337: FLdPr var_88
  loc_AE933A: from_stack_1 = clsliquceme.FeveLice
  loc_AE933F: LitI2_Byte 0
  loc_AE9341: LitVar_Missing var_CC
  loc_AE9344: LitI2_Byte 0
  loc_AE9346: FLdZeroAd var_8C
  loc_AE9349: CVarStr var_A4
  loc_AE934C: PopAdLdVar
  loc_AE934D: FLdPr Me
  loc_AE9350: MemLdI2 global_100
  loc_AE9353: CI4UI1
  loc_AE9354: FLdPr Me
  loc_AE9357: MemLdStr global_96
  loc_AE935A: FLdPr Me
  loc_AE935D: MemLdStr global_92
  loc_AE9360: AryLock
  loc_AE9363: Ary1LdPr
  loc_AE9364: MemLdStr global_112
  loc_AE9367: AryLock
  loc_AE936A: Ary1LdPr
  loc_AE936B: MemLdRfVar from_stack_1.global_4
  loc_AE936E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AE9373: AryUnlock
  loc_AE9376: AryUnlock
  loc_AE9379: FFreeVar var_A4 = ""
  loc_AE9380: LitI2_Byte 1
  loc_AE9382: PopTmpLdAd2 var_CE
  loc_AE9385: FLdPr var_88
  loc_AE9388: Call clsliquceme.Move(from_stack_1v)
  loc_AE938D: FLdPr Me
  loc_AE9390: MemLdRfVar from_stack_1.global_100
  loc_AE9393: NextI2 var_94, loc_AE92EB
  loc_AE9398: Branch loc_AE93BF
  loc_AE939B: LitI4 0
  loc_AE93A0: LitI4 0
  loc_AE93A5: FLdPr Me
  loc_AE93A8: MemLdStr global_96
  loc_AE93AB: FLdPr Me
  loc_AE93AE: MemLdStr global_92
  loc_AE93B1: Ary1LdPr
  loc_AE93B2: MemLdRfVar from_stack_1.global_112
  loc_AE93B5: RedimPreserve
  loc_AE93BF: LitNothing
  loc_AE93C1: FStAd var_88 
  loc_AE93C5: ExitProcHresult
End Function

Private Function Proc_199_22_B722E4() 'B722E4
  'Data Table: 4BADEC
  loc_B71E4C: FLdPr Me
  loc_B71E4F: MemLdRfVar from_stack_1.global_84
  loc_B71E52: NewIfNullAd
  loc_B71E55: FStAd var_8C 
  loc_B71E59: FLdRfVar var_8E
  loc_B71E5C: FLdPr var_8C
  loc_B71E5F: from_stack_1 = clsliquceme.TipoVenc
  loc_B71E64: FLdUI1
  loc_B71E68: CI2UI1
  loc_B71E6A: LitI2_Byte 2
  loc_B71E6C: EqI2
  loc_B71E6D: FLdRfVar var_90
  loc_B71E70: FLdPr var_8C
  loc_B71E73: from_stack_1 = clsliquceme.BimeLiqu
  loc_B71E78: FLdUI1
  loc_B71E7C: CI2UI1
  loc_B71E7E: LitI2_Byte 1
  loc_B71E80: GeI2
  loc_B71E81: AndI4
  loc_B71E82: BranchF loc_B71E9F
  loc_B71E85: FLdPr Me
  loc_B71E88: MemLdUI1 global_102
  loc_B71E8C: CI2UI1
  loc_B71E8E: FStI2 var_86
  loc_B71E91: LitI2_Byte 0
  loc_B71E93: CUI1I2
  loc_B71E95: FLdPr Me
  loc_B71E98: MemStUI1
  loc_B71E9C: Branch loc_B71EDB
  loc_B71E9F: FLdPr Me
  loc_B71EA2: MemLdUI1 global_102
  loc_B71EA6: CI2UI1
  loc_B71EA8: LitI2_Byte 1
  loc_B71EAA: AddI2
  loc_B71EAB: CUI1I2
  loc_B71EAD: FLdPr Me
  loc_B71EB0: MemStUI1
  loc_B71EB4: LitI4 0
  loc_B71EB9: FLdPr Me
  loc_B71EBC: MemLdUI1 global_102
  loc_B71EC0: CI4UI1
  loc_B71EC1: FLdPr Me
  loc_B71EC4: MemLdStr global_96
  loc_B71EC7: FLdPr Me
  loc_B71ECA: MemLdStr global_92
  loc_B71ECD: Ary1LdPr
  loc_B71ECE: MemLdRfVar from_stack_1.global_116
  loc_B71ED1: RedimPreserve
  loc_B71EDB: FLdRfVar var_8E
  loc_B71EDE: FLdPr var_8C
  loc_B71EE1: from_stack_1 = clsliquceme.TipoVenc
  loc_B71EE6: FLdUI1
  loc_B71EEA: CI2UI1
  loc_B71EEC: LitI2_Byte 1
  loc_B71EEE: EqI2
  loc_B71EEF: FLdPr Me
  loc_B71EF2: MemLdUI1 global_102
  loc_B71EF6: CI4UI1
  loc_B71EF7: FLdPr Me
  loc_B71EFA: MemLdStr global_96
  loc_B71EFD: FLdPr Me
  loc_B71F00: MemLdStr global_92
  loc_B71F03: Ary1LdPr
  loc_B71F04: MemLdStr global_116
  loc_B71F07: Ary1LdPr
  loc_B71F08: MemStI2 global_0
  loc_B71F0B: FLdRfVar var_8E
  loc_B71F0E: FLdPr var_8C
  loc_B71F11: from_stack_1 = clsliquceme.BimeLiqu
  loc_B71F16: LitI2_Byte 0
  loc_B71F18: LitVar_Missing var_C8
  loc_B71F1B: LitI2_Byte 0
  loc_B71F1D: FLdUI1
  loc_B71F21: CVarUI1
  loc_B71F25: PopAdLdVar
  loc_B71F26: FLdPr Me
  loc_B71F29: MemLdUI1 global_102
  loc_B71F2D: CI4UI1
  loc_B71F2E: FLdPr Me
  loc_B71F31: MemLdStr global_96
  loc_B71F34: FLdPr Me
  loc_B71F37: MemLdStr global_92
  loc_B71F3A: AryLock
  loc_B71F3D: Ary1LdPr
  loc_B71F3E: MemLdStr global_116
  loc_B71F41: AryLock
  loc_B71F44: Ary1LdPr
  loc_B71F45: MemLdRfVar from_stack_1.global_4
  loc_B71F48: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B71F4D: AryUnlock
  loc_B71F50: AryUnlock
  loc_B71F53: FFree1Var var_C8 = ""
  loc_B71F56: FLdRfVar var_C8
  loc_B71F59: FLdPr var_8C
  loc_B71F5C: from_stack_1 = clsliquceme.PeriBole
  loc_B71F61: LitI2_Byte 0
  loc_B71F63: LitVar_Missing var_D8
  loc_B71F66: LitI2_Byte 0
  loc_B71F68: FLdVar var_C8
  loc_B71F6C: FLdPr Me
  loc_B71F6F: MemLdUI1 global_102
  loc_B71F73: CI4UI1
  loc_B71F74: FLdPr Me
  loc_B71F77: MemLdStr global_96
  loc_B71F7A: FLdPr Me
  loc_B71F7D: MemLdStr global_92
  loc_B71F80: AryLock
  loc_B71F83: Ary1LdPr
  loc_B71F84: MemLdStr global_116
  loc_B71F87: AryLock
  loc_B71F8A: Ary1LdPr
  loc_B71F8B: MemLdRfVar from_stack_1.global_8
  loc_B71F8E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B71F93: AryUnlock
  loc_B71F96: AryUnlock
  loc_B71F99: FFreeVar var_C8 = ""
  loc_B71FA0: FLdRfVar var_C8
  loc_B71FA3: FLdPr var_8C
  loc_B71FA6: from_stack_1 = clsliquceme.NumeBole
  loc_B71FAB: LitI2_Byte 0
  loc_B71FAD: LitVar_Missing var_D8
  loc_B71FB0: LitI2_Byte 0
  loc_B71FB2: FLdVar var_C8
  loc_B71FB6: FLdPr Me
  loc_B71FB9: MemLdUI1 global_102
  loc_B71FBD: CI4UI1
  loc_B71FBE: FLdPr Me
  loc_B71FC1: MemLdStr global_96
  loc_B71FC4: FLdPr Me
  loc_B71FC7: MemLdStr global_92
  loc_B71FCA: AryLock
  loc_B71FCD: Ary1LdPr
  loc_B71FCE: MemLdStr global_116
  loc_B71FD1: AryLock
  loc_B71FD4: Ary1LdPr
  loc_B71FD5: MemLdRfVar from_stack_1.global_12
  loc_B71FD8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B71FDD: AryUnlock
  loc_B71FE0: AryUnlock
  loc_B71FE3: FFreeVar var_C8 = ""
  loc_B71FEA: FLdRfVar var_8E
  loc_B71FED: FLdPr var_8C
  loc_B71FF0: from_stack_1 = clsliquceme.TipoVenc
  loc_B71FF5: LitI2_Byte 0
  loc_B71FF7: LitVar_Missing var_C8
  loc_B71FFA: LitI2_Byte 0
  loc_B71FFC: FLdUI1
  loc_B72000: CVarUI1
  loc_B72004: PopAdLdVar
  loc_B72005: FLdPr Me
  loc_B72008: MemLdUI1 global_102
  loc_B7200C: CI4UI1
  loc_B7200D: FLdPr Me
  loc_B72010: MemLdStr global_96
  loc_B72013: FLdPr Me
  loc_B72016: MemLdStr global_92
  loc_B72019: AryLock
  loc_B7201C: Ary1LdPr
  loc_B7201D: MemLdStr global_116
  loc_B72020: AryLock
  loc_B72023: Ary1LdPr
  loc_B72024: MemLdRfVar from_stack_1.global_24
  loc_B72027: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7202C: AryUnlock
  loc_B7202F: AryUnlock
  loc_B72032: FFree1Var var_C8 = ""
  loc_B72035: FLdRfVar var_DC
  loc_B72038: FLdPr var_8C
  loc_B7203B: from_stack_1 = clsliquceme.FeveLice
  loc_B72040: LitI2_Byte 0
  loc_B72042: LitVar_Missing var_D8
  loc_B72045: LitI2_Byte 0
  loc_B72047: FLdZeroAd var_DC
  loc_B7204A: CVarStr var_C8
  loc_B7204D: PopAdLdVar
  loc_B7204E: FLdPr Me
  loc_B72051: MemLdUI1 global_102
  loc_B72055: CI4UI1
  loc_B72056: FLdPr Me
  loc_B72059: MemLdStr global_96
  loc_B7205C: FLdPr Me
  loc_B7205F: MemLdStr global_92
  loc_B72062: AryLock
  loc_B72065: Ary1LdPr
  loc_B72066: MemLdStr global_116
  loc_B72069: AryLock
  loc_B7206C: Ary1LdPr
  loc_B7206D: MemLdRfVar from_stack_1.global_16
  loc_B72070: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B72075: AryUnlock
  loc_B72078: AryUnlock
  loc_B7207B: FFreeVar var_C8 = ""
  loc_B72082: FLdRfVar var_C8
  loc_B72085: FLdPr var_8C
  loc_B72088: from_stack_1 = clsliquceme.PeriBole
  loc_B7208D: FLdRfVar var_D8
  loc_B72090: FLdPr var_8C
  loc_B72093: from_stack_1 = clsliquceme.NumeBole
  loc_B72098: FLdRfVar var_8E
  loc_B7209B: FLdPr var_8C
  loc_B7209E: from_stack_1 = clsliquceme.BimeLiqu
  loc_B720A3: FLdRfVar var_E0
  loc_B720A6: FLdPr var_8C
  loc_B720A9: from_stack_1 = clsliquceme.CodiDifu
  loc_B720AE: FLdRfVar var_E8
  loc_B720B1: FLdPr var_8C
  loc_B720B4: from_stack_1 = clsliquceme.TotaBole
  loc_B720B9: LitStr "16/05/"
  loc_B720BC: FLdRfVar var_90
  loc_B720BF: FLdPr Me
  loc_B720C2: MemLdRfVar from_stack_1.global_80
  loc_B720C5: NewIfNullPr clsliquidacion
  loc_B720C8: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B720CD: FLdI2 var_90
  loc_B720D0: CStrUI1
  loc_B720D2: FStStrNoPop var_DC
  loc_B720D5: ConcatStr
  loc_B720D6: FStStrNoPop var_100
  loc_B720D9: FLdFPR8 var_E8
  loc_B720DC: CStrR8
  loc_B720DE: FStStrNoPop var_FC
  loc_B720E1: LitI2_Byte 4
  loc_B720E3: CUI1I2
  loc_B720E5: ILdRf var_E0
  loc_B720E8: CStrI4
  loc_B720EA: FStStrNoPop var_F8
  loc_B720ED: FLdUI1
  loc_B720F1: CStrI2
  loc_B720F3: FStStrNoPop var_F4
  loc_B720F6: FLdRfVar var_D8
  loc_B720F9: CStrVarVal var_F0
  loc_B720FD: FLdRfVar var_C8
  loc_B72100: CStrVarVal var_EC
  loc_B72104: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_B72109: PopTmpLdAdStr var_108
  loc_B7210C: FLdPr Me
  loc_B7210F: MemLdUI1 global_102
  loc_B72113: CI4UI1
  loc_B72114: FLdPr Me
  loc_B72117: MemLdStr global_96
  loc_B7211A: FLdPr Me
  loc_B7211D: MemLdStr global_92
  loc_B72120: Ary1LdPr
  loc_B72121: MemLdStr global_116
  loc_B72124: Ary1LdPr
  loc_B72125: MemLdRfVar from_stack_1.global_20
  loc_B72128: StAryMove
  loc_B7212A: FFreeStr var_DC = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B7213B: FFreeVar var_C8 = ""
  loc_B72142: FLdRfVar var_E8
  loc_B72145: FLdPr var_8C
  loc_B72148: from_stack_1 = clsliquceme.ImpoLice
  loc_B7214D: LitI2_Byte 0
  loc_B7214F: LitVar_Missing var_C8
  loc_B72152: LitI2_Byte &HFF
  loc_B72154: FLdFPR8 var_E8
  loc_B72157: CVarR8
  loc_B7215B: PopAdLdVar
  loc_B7215C: FLdPr Me
  loc_B7215F: MemLdUI1 global_102
  loc_B72163: CI4UI1
  loc_B72164: FLdPr Me
  loc_B72167: MemLdStr global_96
  loc_B7216A: FLdPr Me
  loc_B7216D: MemLdStr global_92
  loc_B72170: AryLock
  loc_B72173: Ary1LdPr
  loc_B72174: MemLdStr global_116
  loc_B72177: AryLock
  loc_B7217A: Ary1LdPr
  loc_B7217B: MemLdRfVar from_stack_1.global_28
  loc_B7217E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B72183: AryUnlock
  loc_B72186: AryUnlock
  loc_B72189: FFree1Var var_C8 = ""
  loc_B7218C: FLdRfVar var_E8
  loc_B7218F: FLdPr var_8C
  loc_B72192: from_stack_1 = clsliquceme.DescLice
  loc_B72197: LitI2_Byte 0
  loc_B72199: LitVar_Missing var_C8
  loc_B7219C: LitI2_Byte &HFF
  loc_B7219E: FLdFPR8 var_E8
  loc_B721A1: CVarR8
  loc_B721A5: PopAdLdVar
  loc_B721A6: FLdPr Me
  loc_B721A9: MemLdUI1 global_102
  loc_B721AD: CI4UI1
  loc_B721AE: FLdPr Me
  loc_B721B1: MemLdStr global_96
  loc_B721B4: FLdPr Me
  loc_B721B7: MemLdStr global_92
  loc_B721BA: AryLock
  loc_B721BD: Ary1LdPr
  loc_B721BE: MemLdStr global_116
  loc_B721C1: AryLock
  loc_B721C4: Ary1LdPr
  loc_B721C5: MemLdRfVar from_stack_1.global_32
  loc_B721C8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B721CD: AryUnlock
  loc_B721D0: AryUnlock
  loc_B721D3: FFree1Var var_C8 = ""
  loc_B721D6: FLdRfVar var_C8
  loc_B721D9: FLdPr var_8C
  loc_B721DC: from_stack_1 = clsliquceme.RecaBole
  loc_B721E1: LitI2_Byte 0
  loc_B721E3: LitVar_Missing var_D8
  loc_B721E6: LitI2_Byte &HFF
  loc_B721E8: FLdVar var_C8
  loc_B721EC: FLdPr Me
  loc_B721EF: MemLdUI1 global_102
  loc_B721F3: CI4UI1
  loc_B721F4: FLdPr Me
  loc_B721F7: MemLdStr global_96
  loc_B721FA: FLdPr Me
  loc_B721FD: MemLdStr global_92
  loc_B72200: AryLock
  loc_B72203: Ary1LdPr
  loc_B72204: MemLdStr global_116
  loc_B72207: AryLock
  loc_B7220A: Ary1LdPr
  loc_B7220B: MemLdRfVar from_stack_1.global_36
  loc_B7220E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B72213: AryUnlock
  loc_B72216: AryUnlock
  loc_B72219: FFreeVar var_C8 = ""
  loc_B72220: FLdRfVar var_C8
  loc_B72223: FLdPr var_8C
  loc_B72226: from_stack_1 = clsliquceme.CEmision
  loc_B7222B: LitI2_Byte 0
  loc_B7222D: LitVar_Missing var_D8
  loc_B72230: LitI2_Byte &HFF
  loc_B72232: FLdVar var_C8
  loc_B72236: FLdPr Me
  loc_B72239: MemLdUI1 global_102
  loc_B7223D: CI4UI1
  loc_B7223E: FLdPr Me
  loc_B72241: MemLdStr global_96
  loc_B72244: FLdPr Me
  loc_B72247: MemLdStr global_92
  loc_B7224A: AryLock
  loc_B7224D: Ary1LdPr
  loc_B7224E: MemLdStr global_116
  loc_B72251: AryLock
  loc_B72254: Ary1LdPr
  loc_B72255: MemLdRfVar from_stack_1.global_40
  loc_B72258: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7225D: AryUnlock
  loc_B72260: AryUnlock
  loc_B72263: FFreeVar var_C8 = ""
  loc_B7226A: FLdRfVar var_E8
  loc_B7226D: FLdPr var_8C
  loc_B72270: from_stack_1 = clsliquceme.TotaBole
  loc_B72275: LitI2_Byte 0
  loc_B72277: LitVar_Missing var_C8
  loc_B7227A: LitI2_Byte &HFF
  loc_B7227C: FLdFPR8 var_E8
  loc_B7227F: CVarR8
  loc_B72283: PopAdLdVar
  loc_B72284: FLdPr Me
  loc_B72287: MemLdUI1 global_102
  loc_B7228B: CI4UI1
  loc_B7228C: FLdPr Me
  loc_B7228F: MemLdStr global_96
  loc_B72292: FLdPr Me
  loc_B72295: MemLdStr global_92
  loc_B72298: AryLock
  loc_B7229B: Ary1LdPr
  loc_B7229C: MemLdStr global_116
  loc_B7229F: AryLock
  loc_B722A2: Ary1LdPr
  loc_B722A3: MemLdRfVar from_stack_1.global_44
  loc_B722A6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B722AB: AryUnlock
  loc_B722AE: AryUnlock
  loc_B722B1: FFree1Var var_C8 = ""
  loc_B722B4: LitI2_Byte 1
  loc_B722B6: PopTmpLdAd2 var_8E
  loc_B722B9: FLdPr var_8C
  loc_B722BC: Call clsliquceme.Move(from_stack_1v)
  loc_B722C1: FLdPr Me
  loc_B722C4: MemLdUI1 global_102
  loc_B722C8: CI2UI1
  loc_B722CA: LitI2_Byte 0
  loc_B722CC: EqI2
  loc_B722CD: BranchF loc_B722DC
  loc_B722D0: FLdI2 var_86
  loc_B722D3: CUI1I2
  loc_B722D5: FLdPr Me
  loc_B722D8: MemStUI1
  loc_B722DC: LitNothing
  loc_B722DE: FStAd var_8C 
  loc_B722E2: ExitProcHresult
End Function

Private Function Proc_199_23_C35B58() 'C35B58
  'Data Table: 4BADEC
  loc_C34FA0: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C34FA5: PopAdLdVar
  loc_C34FA6: FLdPr Me
  loc_C34FA9: MemLdRfVar from_stack_1.global_60
  loc_C34FAC: LdPrVar
  loc_C34FAE: LateMemCall
  loc_C34FB4: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C34FB9: PopAdLdVar
  loc_C34FBA: FLdPr Me
  loc_C34FBD: MemLdRfVar from_stack_1.global_60
  loc_C34FC0: LdPrVar
  loc_C34FC2: LateMemCall
  loc_C34FC8: LitVarStr var_94, "<head>"
  loc_C34FCD: PopAdLdVar
  loc_C34FCE: FLdPr Me
  loc_C34FD1: MemLdRfVar from_stack_1.global_60
  loc_C34FD4: LdPrVar
  loc_C34FD6: LateMemCall
  loc_C34FDC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C34FE1: PopAdLdVar
  loc_C34FE2: FLdPr Me
  loc_C34FE5: MemLdRfVar from_stack_1.global_60
  loc_C34FE8: LdPrVar
  loc_C34FEA: LateMemCall
  loc_C34FF0: LitStr "<title>"
  loc_C34FF3: FLdRfVar var_A8
  loc_C34FF6: FLdPr Me
  loc_C34FF9:  = Me.Caption
  loc_C34FFE: ILdRf var_A8
  loc_C35001: ConcatStr
  loc_C35002: FStStrNoPop var_AC
  loc_C35005: LitStr "</title>"
  loc_C35008: ConcatStr
  loc_C35009: CVarStr var_BC
  loc_C3500C: PopAdLdVar
  loc_C3500D: FLdPr Me
  loc_C35010: MemLdRfVar from_stack_1.global_60
  loc_C35013: LdPrVar
  loc_C35015: LateMemCall
  loc_C3501B: FFreeStr var_A8 = ""
  loc_C35022: FFree1Var var_BC = ""
  loc_C35025: LitVarStr var_94, "<style type=""text/css"">"
  loc_C3502A: PopAdLdVar
  loc_C3502B: FLdPr Me
  loc_C3502E: MemLdRfVar from_stack_1.global_60
  loc_C35031: LdPrVar
  loc_C35033: LateMemCall
  loc_C35039: LitVarStr var_94, "<!--"
  loc_C3503E: PopAdLdVar
  loc_C3503F: FLdPr Me
  loc_C35042: MemLdRfVar from_stack_1.global_60
  loc_C35045: LdPrVar
  loc_C35047: LateMemCall
  loc_C3504D: LitVarStr var_94, ".Encabezado {"
  loc_C35052: PopAdLdVar
  loc_C35053: FLdPr Me
  loc_C35056: MemLdRfVar from_stack_1.global_60
  loc_C35059: LdPrVar
  loc_C3505B: LateMemCall
  loc_C35061: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C35066: PopAdLdVar
  loc_C35067: FLdPr Me
  loc_C3506A: MemLdRfVar from_stack_1.global_60
  loc_C3506D: LdPrVar
  loc_C3506F: LateMemCall
  loc_C35075: LitVarStr var_94, " font-size: 10px;"
  loc_C3507A: PopAdLdVar
  loc_C3507B: FLdPr Me
  loc_C3507E: MemLdRfVar from_stack_1.global_60
  loc_C35081: LdPrVar
  loc_C35083: LateMemCall
  loc_C35089: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C3508E: PopAdLdVar
  loc_C3508F: FLdPr Me
  loc_C35092: MemLdRfVar from_stack_1.global_60
  loc_C35095: LdPrVar
  loc_C35097: LateMemCall
  loc_C3509D: LitVarStr var_94, "}"
  loc_C350A2: PopAdLdVar
  loc_C350A3: FLdPr Me
  loc_C350A6: MemLdRfVar from_stack_1.global_60
  loc_C350A9: LdPrVar
  loc_C350AB: LateMemCall
  loc_C350B1: LitVarStr var_94, ".EncabezadoDifuntos {"
  loc_C350B6: PopAdLdVar
  loc_C350B7: FLdPr Me
  loc_C350BA: MemLdRfVar from_stack_1.global_60
  loc_C350BD: LdPrVar
  loc_C350BF: LateMemCall
  loc_C350C5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C350CA: PopAdLdVar
  loc_C350CB: FLdPr Me
  loc_C350CE: MemLdRfVar from_stack_1.global_60
  loc_C350D1: LdPrVar
  loc_C350D3: LateMemCall
  loc_C350D9: LitVarStr var_94, " font-size: 9px;"
  loc_C350DE: PopAdLdVar
  loc_C350DF: FLdPr Me
  loc_C350E2: MemLdRfVar from_stack_1.global_60
  loc_C350E5: LdPrVar
  loc_C350E7: LateMemCall
  loc_C350ED: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C350F2: PopAdLdVar
  loc_C350F3: FLdPr Me
  loc_C350F6: MemLdRfVar from_stack_1.global_60
  loc_C350F9: LdPrVar
  loc_C350FB: LateMemCall
  loc_C35101: LitVarStr var_94, "}"
  loc_C35106: PopAdLdVar
  loc_C35107: FLdPr Me
  loc_C3510A: MemLdRfVar from_stack_1.global_60
  loc_C3510D: LdPrVar
  loc_C3510F: LateMemCall
  loc_C35115: LitVarStr var_94, ".Normal {"
  loc_C3511A: PopAdLdVar
  loc_C3511B: FLdPr Me
  loc_C3511E: MemLdRfVar from_stack_1.global_60
  loc_C35121: LdPrVar
  loc_C35123: LateMemCall
  loc_C35129: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3512E: PopAdLdVar
  loc_C3512F: FLdPr Me
  loc_C35132: MemLdRfVar from_stack_1.global_60
  loc_C35135: LdPrVar
  loc_C35137: LateMemCall
  loc_C3513D: LitVarStr var_94, " font-size: 10px;"
  loc_C35142: PopAdLdVar
  loc_C35143: FLdPr Me
  loc_C35146: MemLdRfVar from_stack_1.global_60
  loc_C35149: LdPrVar
  loc_C3514B: LateMemCall
  loc_C35151: LitVarStr var_94, " vertical-align: top;"
  loc_C35156: PopAdLdVar
  loc_C35157: FLdPr Me
  loc_C3515A: MemLdRfVar from_stack_1.global_60
  loc_C3515D: LdPrVar
  loc_C3515F: LateMemCall
  loc_C35165: LitVarStr var_94, "}"
  loc_C3516A: PopAdLdVar
  loc_C3516B: FLdPr Me
  loc_C3516E: MemLdRfVar from_stack_1.global_60
  loc_C35171: LdPrVar
  loc_C35173: LateMemCall
  loc_C35179: LitVarStr var_94, ".Difuntos {"
  loc_C3517E: PopAdLdVar
  loc_C3517F: FLdPr Me
  loc_C35182: MemLdRfVar from_stack_1.global_60
  loc_C35185: LdPrVar
  loc_C35187: LateMemCall
  loc_C3518D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C35192: PopAdLdVar
  loc_C35193: FLdPr Me
  loc_C35196: MemLdRfVar from_stack_1.global_60
  loc_C35199: LdPrVar
  loc_C3519B: LateMemCall
  loc_C351A1: LitVarStr var_94, " font-size: 9px;"
  loc_C351A6: PopAdLdVar
  loc_C351A7: FLdPr Me
  loc_C351AA: MemLdRfVar from_stack_1.global_60
  loc_C351AD: LdPrVar
  loc_C351AF: LateMemCall
  loc_C351B5: LitVarStr var_94, " vertical-align: top;"
  loc_C351BA: PopAdLdVar
  loc_C351BB: FLdPr Me
  loc_C351BE: MemLdRfVar from_stack_1.global_60
  loc_C351C1: LdPrVar
  loc_C351C3: LateMemCall
  loc_C351C9: LitVarStr var_94, " padding-left: 4px;"
  loc_C351CE: PopAdLdVar
  loc_C351CF: FLdPr Me
  loc_C351D2: MemLdRfVar from_stack_1.global_60
  loc_C351D5: LdPrVar
  loc_C351D7: LateMemCall
  loc_C351DD: LitVarStr var_94, " padding-right: 4px;"
  loc_C351E2: PopAdLdVar
  loc_C351E3: FLdPr Me
  loc_C351E6: MemLdRfVar from_stack_1.global_60
  loc_C351E9: LdPrVar
  loc_C351EB: LateMemCall
  loc_C351F1: LitVarStr var_94, "}"
  loc_C351F6: PopAdLdVar
  loc_C351F7: FLdPr Me
  loc_C351FA: MemLdRfVar from_stack_1.global_60
  loc_C351FD: LdPrVar
  loc_C351FF: LateMemCall
  loc_C35205: LitVarStr var_94, ".DomiPostal {"
  loc_C3520A: PopAdLdVar
  loc_C3520B: FLdPr Me
  loc_C3520E: MemLdRfVar from_stack_1.global_60
  loc_C35211: LdPrVar
  loc_C35213: LateMemCall
  loc_C35219: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C3521E: PopAdLdVar
  loc_C3521F: FLdPr Me
  loc_C35222: MemLdRfVar from_stack_1.global_60
  loc_C35225: LdPrVar
  loc_C35227: LateMemCall
  loc_C3522D: LitVarStr var_94, "  font-size: 14px;"
  loc_C35232: PopAdLdVar
  loc_C35233: FLdPr Me
  loc_C35236: MemLdRfVar from_stack_1.global_60
  loc_C35239: LdPrVar
  loc_C3523B: LateMemCall
  loc_C35241: LitVarStr var_94, "  vertical-align: top;"
  loc_C35246: PopAdLdVar
  loc_C35247: FLdPr Me
  loc_C3524A: MemLdRfVar from_stack_1.global_60
  loc_C3524D: LdPrVar
  loc_C3524F: LateMemCall
  loc_C35255: LitVarStr var_94, "  font-weight: bold;"
  loc_C3525A: PopAdLdVar
  loc_C3525B: FLdPr Me
  loc_C3525E: MemLdRfVar from_stack_1.global_60
  loc_C35261: LdPrVar
  loc_C35263: LateMemCall
  loc_C35269: LitVarStr var_94, "  padding-top: 1px;"
  loc_C3526E: PopAdLdVar
  loc_C3526F: FLdPr Me
  loc_C35272: MemLdRfVar from_stack_1.global_60
  loc_C35275: LdPrVar
  loc_C35277: LateMemCall
  loc_C3527D: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C35282: PopAdLdVar
  loc_C35283: FLdPr Me
  loc_C35286: MemLdRfVar from_stack_1.global_60
  loc_C35289: LdPrVar
  loc_C3528B: LateMemCall
  loc_C35291: LitVarStr var_94, "  padding-left: 5px;"
  loc_C35296: PopAdLdVar
  loc_C35297: FLdPr Me
  loc_C3529A: MemLdRfVar from_stack_1.global_60
  loc_C3529D: LdPrVar
  loc_C3529F: LateMemCall
  loc_C352A5: LitVarStr var_94, "  padding-right: 5px;"
  loc_C352AA: PopAdLdVar
  loc_C352AB: FLdPr Me
  loc_C352AE: MemLdRfVar from_stack_1.global_60
  loc_C352B1: LdPrVar
  loc_C352B3: LateMemCall
  loc_C352B9: LitVarStr var_94, "}"
  loc_C352BE: PopAdLdVar
  loc_C352BF: FLdPr Me
  loc_C352C2: MemLdRfVar from_stack_1.global_60
  loc_C352C5: LdPrVar
  loc_C352C7: LateMemCall
  loc_C352CD: LitVarStr var_94, ".DomiReal {"
  loc_C352D2: PopAdLdVar
  loc_C352D3: FLdPr Me
  loc_C352D6: MemLdRfVar from_stack_1.global_60
  loc_C352D9: LdPrVar
  loc_C352DB: LateMemCall
  loc_C352E1: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C352E6: PopAdLdVar
  loc_C352E7: FLdPr Me
  loc_C352EA: MemLdRfVar from_stack_1.global_60
  loc_C352ED: LdPrVar
  loc_C352EF: LateMemCall
  loc_C352F5: LitVarStr var_94, "  font-size: 14px;"
  loc_C352FA: PopAdLdVar
  loc_C352FB: FLdPr Me
  loc_C352FE: MemLdRfVar from_stack_1.global_60
  loc_C35301: LdPrVar
  loc_C35303: LateMemCall
  loc_C35309: LitVarStr var_94, "  vertical-align: top;"
  loc_C3530E: PopAdLdVar
  loc_C3530F: FLdPr Me
  loc_C35312: MemLdRfVar from_stack_1.global_60
  loc_C35315: LdPrVar
  loc_C35317: LateMemCall
  loc_C3531D: LitVarStr var_94, "  padding-top: 1px;"
  loc_C35322: PopAdLdVar
  loc_C35323: FLdPr Me
  loc_C35326: MemLdRfVar from_stack_1.global_60
  loc_C35329: LdPrVar
  loc_C3532B: LateMemCall
  loc_C35331: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C35336: PopAdLdVar
  loc_C35337: FLdPr Me
  loc_C3533A: MemLdRfVar from_stack_1.global_60
  loc_C3533D: LdPrVar
  loc_C3533F: LateMemCall
  loc_C35345: LitVarStr var_94, "  padding-left: 5px;"
  loc_C3534A: PopAdLdVar
  loc_C3534B: FLdPr Me
  loc_C3534E: MemLdRfVar from_stack_1.global_60
  loc_C35351: LdPrVar
  loc_C35353: LateMemCall
  loc_C35359: LitVarStr var_94, "  padding-right: 5px;"
  loc_C3535E: PopAdLdVar
  loc_C3535F: FLdPr Me
  loc_C35362: MemLdRfVar from_stack_1.global_60
  loc_C35365: LdPrVar
  loc_C35367: LateMemCall
  loc_C3536D: LitVarStr var_94, "}"
  loc_C35372: PopAdLdVar
  loc_C35373: FLdPr Me
  loc_C35376: MemLdRfVar from_stack_1.global_60
  loc_C35379: LdPrVar
  loc_C3537B: LateMemCall
  loc_C35381: LitVarStr var_94, ".MargIzq {"
  loc_C35386: PopAdLdVar
  loc_C35387: FLdPr Me
  loc_C3538A: MemLdRfVar from_stack_1.global_60
  loc_C3538D: LdPrVar
  loc_C3538F: LateMemCall
  loc_C35395: LitVarStr var_94, "  padding-left:5px"
  loc_C3539A: PopAdLdVar
  loc_C3539B: FLdPr Me
  loc_C3539E: MemLdRfVar from_stack_1.global_60
  loc_C353A1: LdPrVar
  loc_C353A3: LateMemCall
  loc_C353A9: LitVarStr var_94, "}"
  loc_C353AE: PopAdLdVar
  loc_C353AF: FLdPr Me
  loc_C353B2: MemLdRfVar from_stack_1.global_60
  loc_C353B5: LdPrVar
  loc_C353B7: LateMemCall
  loc_C353BD: LitVarStr var_94, ".MargDer {"
  loc_C353C2: PopAdLdVar
  loc_C353C3: FLdPr Me
  loc_C353C6: MemLdRfVar from_stack_1.global_60
  loc_C353C9: LdPrVar
  loc_C353CB: LateMemCall
  loc_C353D1: LitVarStr var_94, "  padding-right:5px"
  loc_C353D6: PopAdLdVar
  loc_C353D7: FLdPr Me
  loc_C353DA: MemLdRfVar from_stack_1.global_60
  loc_C353DD: LdPrVar
  loc_C353DF: LateMemCall
  loc_C353E5: LitVarStr var_94, "}"
  loc_C353EA: PopAdLdVar
  loc_C353EB: FLdPr Me
  loc_C353EE: MemLdRfVar from_stack_1.global_60
  loc_C353F1: LdPrVar
  loc_C353F3: LateMemCall
  loc_C353F9: LitVarStr var_94, ".NormalAbajo {"
  loc_C353FE: PopAdLdVar
  loc_C353FF: FLdPr Me
  loc_C35402: MemLdRfVar from_stack_1.global_60
  loc_C35405: LdPrVar
  loc_C35407: LateMemCall
  loc_C3540D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C35412: PopAdLdVar
  loc_C35413: FLdPr Me
  loc_C35416: MemLdRfVar from_stack_1.global_60
  loc_C35419: LdPrVar
  loc_C3541B: LateMemCall
  loc_C35421: LitVarStr var_94, " font-size: 11px;"
  loc_C35426: PopAdLdVar
  loc_C35427: FLdPr Me
  loc_C3542A: MemLdRfVar from_stack_1.global_60
  loc_C3542D: LdPrVar
  loc_C3542F: LateMemCall
  loc_C35435: LitVarStr var_94, " vertical-align:bottom;"
  loc_C3543A: PopAdLdVar
  loc_C3543B: FLdPr Me
  loc_C3543E: MemLdRfVar from_stack_1.global_60
  loc_C35441: LdPrVar
  loc_C35443: LateMemCall
  loc_C35449: LitVarStr var_94, "}"
  loc_C3544E: PopAdLdVar
  loc_C3544F: FLdPr Me
  loc_C35452: MemLdRfVar from_stack_1.global_60
  loc_C35455: LdPrVar
  loc_C35457: LateMemCall
  loc_C3545D: LitVarStr var_94, ".NormalDetalle {"
  loc_C35462: PopAdLdVar
  loc_C35463: FLdPr Me
  loc_C35466: MemLdRfVar from_stack_1.global_60
  loc_C35469: LdPrVar
  loc_C3546B: LateMemCall
  loc_C35471: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C35476: PopAdLdVar
  loc_C35477: FLdPr Me
  loc_C3547A: MemLdRfVar from_stack_1.global_60
  loc_C3547D: LdPrVar
  loc_C3547F: LateMemCall
  loc_C35485: LitVarStr var_94, " font-size: 10px;"
  loc_C3548A: PopAdLdVar
  loc_C3548B: FLdPr Me
  loc_C3548E: MemLdRfVar from_stack_1.global_60
  loc_C35491: LdPrVar
  loc_C35493: LateMemCall
  loc_C35499: LitVarStr var_94, " vertical-align: top;"
  loc_C3549E: PopAdLdVar
  loc_C3549F: FLdPr Me
  loc_C354A2: MemLdRfVar from_stack_1.global_60
  loc_C354A5: LdPrVar
  loc_C354A7: LateMemCall
  loc_C354AD: LitVarStr var_94, "}"
  loc_C354B2: PopAdLdVar
  loc_C354B3: FLdPr Me
  loc_C354B6: MemLdRfVar from_stack_1.global_60
  loc_C354B9: LdPrVar
  loc_C354BB: LateMemCall
  loc_C354C1: LitVarStr var_94, ".NormalBloqueFin {"
  loc_C354C6: PopAdLdVar
  loc_C354C7: FLdPr Me
  loc_C354CA: MemLdRfVar from_stack_1.global_60
  loc_C354CD: LdPrVar
  loc_C354CF: LateMemCall
  loc_C354D5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C354DA: PopAdLdVar
  loc_C354DB: FLdPr Me
  loc_C354DE: MemLdRfVar from_stack_1.global_60
  loc_C354E1: LdPrVar
  loc_C354E3: LateMemCall
  loc_C354E9: LitVarStr var_94, " font-size: 10px;"
  loc_C354EE: PopAdLdVar
  loc_C354EF: FLdPr Me
  loc_C354F2: MemLdRfVar from_stack_1.global_60
  loc_C354F5: LdPrVar
  loc_C354F7: LateMemCall
  loc_C354FD: LitVarStr var_94, " vertical-align: top;"
  loc_C35502: PopAdLdVar
  loc_C35503: FLdPr Me
  loc_C35506: MemLdRfVar from_stack_1.global_60
  loc_C35509: LdPrVar
  loc_C3550B: LateMemCall
  loc_C35511: LitVarStr var_94, " padding-right: 1px;"
  loc_C35516: PopAdLdVar
  loc_C35517: FLdPr Me
  loc_C3551A: MemLdRfVar from_stack_1.global_60
  loc_C3551D: LdPrVar
  loc_C3551F: LateMemCall
  loc_C35525: LitVarStr var_94, "}"
  loc_C3552A: PopAdLdVar
  loc_C3552B: FLdPr Me
  loc_C3552E: MemLdRfVar from_stack_1.global_60
  loc_C35531: LdPrVar
  loc_C35533: LateMemCall
  loc_C35539: LitVarStr var_94, ".NormalBloqueFinGrande {"
  loc_C3553E: PopAdLdVar
  loc_C3553F: FLdPr Me
  loc_C35542: MemLdRfVar from_stack_1.global_60
  loc_C35545: LdPrVar
  loc_C35547: LateMemCall
  loc_C3554D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C35552: PopAdLdVar
  loc_C35553: FLdPr Me
  loc_C35556: MemLdRfVar from_stack_1.global_60
  loc_C35559: LdPrVar
  loc_C3555B: LateMemCall
  loc_C35561: LitVarStr var_94, " font-size: 14px;"
  loc_C35566: PopAdLdVar
  loc_C35567: FLdPr Me
  loc_C3556A: MemLdRfVar from_stack_1.global_60
  loc_C3556D: LdPrVar
  loc_C3556F: LateMemCall
  loc_C35575: LitVarStr var_94, " vertical-align: top;"
  loc_C3557A: PopAdLdVar
  loc_C3557B: FLdPr Me
  loc_C3557E: MemLdRfVar from_stack_1.global_60
  loc_C35581: LdPrVar
  loc_C35583: LateMemCall
  loc_C35589: LitVarStr var_94, "}"
  loc_C3558E: PopAdLdVar
  loc_C3558F: FLdPr Me
  loc_C35592: MemLdRfVar from_stack_1.global_60
  loc_C35595: LdPrVar
  loc_C35597: LateMemCall
  loc_C3559D: LitVarStr var_94, ".NombreMunicipio {"
  loc_C355A2: PopAdLdVar
  loc_C355A3: FLdPr Me
  loc_C355A6: MemLdRfVar from_stack_1.global_60
  loc_C355A9: LdPrVar
  loc_C355AB: LateMemCall
  loc_C355B1: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C355B6: PopAdLdVar
  loc_C355B7: FLdPr Me
  loc_C355BA: MemLdRfVar from_stack_1.global_60
  loc_C355BD: LdPrVar
  loc_C355BF: LateMemCall
  loc_C355C5: LitVarStr var_94, " font-size: 14px;"
  loc_C355CA: PopAdLdVar
  loc_C355CB: FLdPr Me
  loc_C355CE: MemLdRfVar from_stack_1.global_60
  loc_C355D1: LdPrVar
  loc_C355D3: LateMemCall
  loc_C355D9: LitVarStr var_94, " font-weight: bold;"
  loc_C355DE: PopAdLdVar
  loc_C355DF: FLdPr Me
  loc_C355E2: MemLdRfVar from_stack_1.global_60
  loc_C355E5: LdPrVar
  loc_C355E7: LateMemCall
  loc_C355ED: LitVarStr var_94, "}"
  loc_C355F2: PopAdLdVar
  loc_C355F3: FLdPr Me
  loc_C355F6: MemLdRfVar from_stack_1.global_60
  loc_C355F9: LdPrVar
  loc_C355FB: LateMemCall
  loc_C35601: LitVarStr var_94, ".DatosMunicipio {"
  loc_C35606: PopAdLdVar
  loc_C35607: FLdPr Me
  loc_C3560A: MemLdRfVar from_stack_1.global_60
  loc_C3560D: LdPrVar
  loc_C3560F: LateMemCall
  loc_C35615: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C3561A: PopAdLdVar
  loc_C3561B: FLdPr Me
  loc_C3561E: MemLdRfVar from_stack_1.global_60
  loc_C35621: LdPrVar
  loc_C35623: LateMemCall
  loc_C35629: LitVarStr var_94, " font-size: 9px;"
  loc_C3562E: PopAdLdVar
  loc_C3562F: FLdPr Me
  loc_C35632: MemLdRfVar from_stack_1.global_60
  loc_C35635: LdPrVar
  loc_C35637: LateMemCall
  loc_C3563D: LitVarStr var_94, "}"
  loc_C35642: PopAdLdVar
  loc_C35643: FLdPr Me
  loc_C35646: MemLdRfVar from_stack_1.global_60
  loc_C35649: LdPrVar
  loc_C3564B: LateMemCall
  loc_C35651: LitVarStr var_94, ".Totales {"
  loc_C35656: PopAdLdVar
  loc_C35657: FLdPr Me
  loc_C3565A: MemLdRfVar from_stack_1.global_60
  loc_C3565D: LdPrVar
  loc_C3565F: LateMemCall
  loc_C35665: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3566A: PopAdLdVar
  loc_C3566B: FLdPr Me
  loc_C3566E: MemLdRfVar from_stack_1.global_60
  loc_C35671: LdPrVar
  loc_C35673: LateMemCall
  loc_C35679: LitVarStr var_94, " font-size: 13px;"
  loc_C3567E: PopAdLdVar
  loc_C3567F: FLdPr Me
  loc_C35682: MemLdRfVar from_stack_1.global_60
  loc_C35685: LdPrVar
  loc_C35687: LateMemCall
  loc_C3568D: LitVarStr var_94, " vertical-align: top;"
  loc_C35692: PopAdLdVar
  loc_C35693: FLdPr Me
  loc_C35696: MemLdRfVar from_stack_1.global_60
  loc_C35699: LdPrVar
  loc_C3569B: LateMemCall
  loc_C356A1: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C356A6: PopAdLdVar
  loc_C356A7: FLdPr Me
  loc_C356AA: MemLdRfVar from_stack_1.global_60
  loc_C356AD: LdPrVar
  loc_C356AF: LateMemCall
  loc_C356B5: LitVarStr var_94, " font-weight: bold;"
  loc_C356BA: PopAdLdVar
  loc_C356BB: FLdPr Me
  loc_C356BE: MemLdRfVar from_stack_1.global_60
  loc_C356C1: LdPrVar
  loc_C356C3: LateMemCall
  loc_C356C9: LitVarStr var_94, " padding-right: 1px;"
  loc_C356CE: PopAdLdVar
  loc_C356CF: FLdPr Me
  loc_C356D2: MemLdRfVar from_stack_1.global_60
  loc_C356D5: LdPrVar
  loc_C356D7: LateMemCall
  loc_C356DD: LitVarStr var_94, "}"
  loc_C356E2: PopAdLdVar
  loc_C356E3: FLdPr Me
  loc_C356E6: MemLdRfVar from_stack_1.global_60
  loc_C356E9: LdPrVar
  loc_C356EB: LateMemCall
  loc_C356F1: LitVarStr var_94, ".Total {"
  loc_C356F6: PopAdLdVar
  loc_C356F7: FLdPr Me
  loc_C356FA: MemLdRfVar from_stack_1.global_60
  loc_C356FD: LdPrVar
  loc_C356FF: LateMemCall
  loc_C35705: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3570A: PopAdLdVar
  loc_C3570B: FLdPr Me
  loc_C3570E: MemLdRfVar from_stack_1.global_60
  loc_C35711: LdPrVar
  loc_C35713: LateMemCall
  loc_C35719: LitVarStr var_94, " font-size: 14px;"
  loc_C3571E: PopAdLdVar
  loc_C3571F: FLdPr Me
  loc_C35722: MemLdRfVar from_stack_1.global_60
  loc_C35725: LdPrVar
  loc_C35727: LateMemCall
  loc_C3572D: LitVarStr var_94, " vertical-align: top;"
  loc_C35732: PopAdLdVar
  loc_C35733: FLdPr Me
  loc_C35736: MemLdRfVar from_stack_1.global_60
  loc_C35739: LdPrVar
  loc_C3573B: LateMemCall
  loc_C35741: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C35746: PopAdLdVar
  loc_C35747: FLdPr Me
  loc_C3574A: MemLdRfVar from_stack_1.global_60
  loc_C3574D: LdPrVar
  loc_C3574F: LateMemCall
  loc_C35755: LitVarStr var_94, " font-weight: bold;"
  loc_C3575A: PopAdLdVar
  loc_C3575B: FLdPr Me
  loc_C3575E: MemLdRfVar from_stack_1.global_60
  loc_C35761: LdPrVar
  loc_C35763: LateMemCall
  loc_C35769: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C3576E: PopAdLdVar
  loc_C3576F: FLdPr Me
  loc_C35772: MemLdRfVar from_stack_1.global_60
  loc_C35775: LdPrVar
  loc_C35777: LateMemCall
  loc_C3577D: LitVarStr var_94, "}"
  loc_C35782: PopAdLdVar
  loc_C35783: FLdPr Me
  loc_C35786: MemLdRfVar from_stack_1.global_60
  loc_C35789: LdPrVar
  loc_C3578B: LateMemCall
  loc_C35791: LitVarStr var_94, ".CodBar {"
  loc_C35796: PopAdLdVar
  loc_C35797: FLdPr Me
  loc_C3579A: MemLdRfVar from_stack_1.global_60
  loc_C3579D: LdPrVar
  loc_C3579F: LateMemCall
  loc_C357A5: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C357AA: PopAdLdVar
  loc_C357AB: FLdPr Me
  loc_C357AE: MemLdRfVar from_stack_1.global_60
  loc_C357B1: LdPrVar
  loc_C357B3: LateMemCall
  loc_C357B9: LitVarStr var_94, " font-size: 48px;"
  loc_C357BE: PopAdLdVar
  loc_C357BF: FLdPr Me
  loc_C357C2: MemLdRfVar from_stack_1.global_60
  loc_C357C5: LdPrVar
  loc_C357C7: LateMemCall
  loc_C357CD: LitVarStr var_94, " font-style: normal;"
  loc_C357D2: PopAdLdVar
  loc_C357D3: FLdPr Me
  loc_C357D6: MemLdRfVar from_stack_1.global_60
  loc_C357D9: LdPrVar
  loc_C357DB: LateMemCall
  loc_C357E1: LitVarStr var_94, " line-height: normal;"
  loc_C357E6: PopAdLdVar
  loc_C357E7: FLdPr Me
  loc_C357EA: MemLdRfVar from_stack_1.global_60
  loc_C357ED: LdPrVar
  loc_C357EF: LateMemCall
  loc_C357F5: LitVarStr var_94, " font-weight: normal;"
  loc_C357FA: PopAdLdVar
  loc_C357FB: FLdPr Me
  loc_C357FE: MemLdRfVar from_stack_1.global_60
  loc_C35801: LdPrVar
  loc_C35803: LateMemCall
  loc_C35809: LitVarStr var_94, "}"
  loc_C3580E: PopAdLdVar
  loc_C3580F: FLdPr Me
  loc_C35812: MemLdRfVar from_stack_1.global_60
  loc_C35815: LdPrVar
  loc_C35817: LateMemCall
  loc_C3581D: LitVarStr var_94, ".CodBarChica {"
  loc_C35822: PopAdLdVar
  loc_C35823: FLdPr Me
  loc_C35826: MemLdRfVar from_stack_1.global_60
  loc_C35829: LdPrVar
  loc_C3582B: LateMemCall
  loc_C35831: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C35836: PopAdLdVar
  loc_C35837: FLdPr Me
  loc_C3583A: MemLdRfVar from_stack_1.global_60
  loc_C3583D: LdPrVar
  loc_C3583F: LateMemCall
  loc_C35845: LitVarStr var_94, " font-size: 38px;"
  loc_C3584A: PopAdLdVar
  loc_C3584B: FLdPr Me
  loc_C3584E: MemLdRfVar from_stack_1.global_60
  loc_C35851: LdPrVar
  loc_C35853: LateMemCall
  loc_C35859: LitVarStr var_94, " font-style: normal;"
  loc_C3585E: PopAdLdVar
  loc_C3585F: FLdPr Me
  loc_C35862: MemLdRfVar from_stack_1.global_60
  loc_C35865: LdPrVar
  loc_C35867: LateMemCall
  loc_C3586D: LitVarStr var_94, " line-height: normal;"
  loc_C35872: PopAdLdVar
  loc_C35873: FLdPr Me
  loc_C35876: MemLdRfVar from_stack_1.global_60
  loc_C35879: LdPrVar
  loc_C3587B: LateMemCall
  loc_C35881: LitVarStr var_94, " font-weight: normal;"
  loc_C35886: PopAdLdVar
  loc_C35887: FLdPr Me
  loc_C3588A: MemLdRfVar from_stack_1.global_60
  loc_C3588D: LdPrVar
  loc_C3588F: LateMemCall
  loc_C35895: LitVarStr var_94, "}"
  loc_C3589A: PopAdLdVar
  loc_C3589B: FLdPr Me
  loc_C3589E: MemLdRfVar from_stack_1.global_60
  loc_C358A1: LdPrVar
  loc_C358A3: LateMemCall
  loc_C358A9: LitVarStr var_94, ".CorreoCelda {"
  loc_C358AE: PopAdLdVar
  loc_C358AF: FLdPr Me
  loc_C358B2: MemLdRfVar from_stack_1.global_60
  loc_C358B5: LdPrVar
  loc_C358B7: LateMemCall
  loc_C358BD: LitVarStr var_94, " border: 1px solid black;"
  loc_C358C2: PopAdLdVar
  loc_C358C3: FLdPr Me
  loc_C358C6: MemLdRfVar from_stack_1.global_60
  loc_C358C9: LdPrVar
  loc_C358CB: LateMemCall
  loc_C358D1: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C358D6: PopAdLdVar
  loc_C358D7: FLdPr Me
  loc_C358DA: MemLdRfVar from_stack_1.global_60
  loc_C358DD: LdPrVar
  loc_C358DF: LateMemCall
  loc_C358E5: LitVarStr var_94, " font-size: 6px;"
  loc_C358EA: PopAdLdVar
  loc_C358EB: FLdPr Me
  loc_C358EE: MemLdRfVar from_stack_1.global_60
  loc_C358F1: LdPrVar
  loc_C358F3: LateMemCall
  loc_C358F9: LitVarStr var_94, " text-align:center;"
  loc_C358FE: PopAdLdVar
  loc_C358FF: FLdPr Me
  loc_C35902: MemLdRfVar from_stack_1.global_60
  loc_C35905: LdPrVar
  loc_C35907: LateMemCall
  loc_C3590D: LitVarStr var_94, " vertical-align: middle;"
  loc_C35912: PopAdLdVar
  loc_C35913: FLdPr Me
  loc_C35916: MemLdRfVar from_stack_1.global_60
  loc_C35919: LdPrVar
  loc_C3591B: LateMemCall
  loc_C35921: LitVarStr var_94, "}"
  loc_C35926: PopAdLdVar
  loc_C35927: FLdPr Me
  loc_C3592A: MemLdRfVar from_stack_1.global_60
  loc_C3592D: LdPrVar
  loc_C3592F: LateMemCall
  loc_C35935: LitVarStr var_94, ".CorreoCeldaFinal {"
  loc_C3593A: PopAdLdVar
  loc_C3593B: FLdPr Me
  loc_C3593E: MemLdRfVar from_stack_1.global_60
  loc_C35941: LdPrVar
  loc_C35943: LateMemCall
  loc_C35949: LitVarStr var_94, " border:none;"
  loc_C3594E: PopAdLdVar
  loc_C3594F: FLdPr Me
  loc_C35952: MemLdRfVar from_stack_1.global_60
  loc_C35955: LdPrVar
  loc_C35957: LateMemCall
  loc_C3595D: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C35962: PopAdLdVar
  loc_C35963: FLdPr Me
  loc_C35966: MemLdRfVar from_stack_1.global_60
  loc_C35969: LdPrVar
  loc_C3596B: LateMemCall
  loc_C35971: LitVarStr var_94, " font-size: 6px;"
  loc_C35976: PopAdLdVar
  loc_C35977: FLdPr Me
  loc_C3597A: MemLdRfVar from_stack_1.global_60
  loc_C3597D: LdPrVar
  loc_C3597F: LateMemCall
  loc_C35985: LitVarStr var_94, " text-align:center;"
  loc_C3598A: PopAdLdVar
  loc_C3598B: FLdPr Me
  loc_C3598E: MemLdRfVar from_stack_1.global_60
  loc_C35991: LdPrVar
  loc_C35993: LateMemCall
  loc_C35999: LitVarStr var_94, " vertical-align: middle;"
  loc_C3599E: PopAdLdVar
  loc_C3599F: FLdPr Me
  loc_C359A2: MemLdRfVar from_stack_1.global_60
  loc_C359A5: LdPrVar
  loc_C359A7: LateMemCall
  loc_C359AD: LitVarStr var_94, "}"
  loc_C359B2: PopAdLdVar
  loc_C359B3: FLdPr Me
  loc_C359B6: MemLdRfVar from_stack_1.global_60
  loc_C359B9: LdPrVar
  loc_C359BB: LateMemCall
  loc_C359C1: LitVarStr var_94, ".CorreoTabla {"
  loc_C359C6: PopAdLdVar
  loc_C359C7: FLdPr Me
  loc_C359CA: MemLdRfVar from_stack_1.global_60
  loc_C359CD: LdPrVar
  loc_C359CF: LateMemCall
  loc_C359D5: LitVarStr var_94, " border:none;"
  loc_C359DA: PopAdLdVar
  loc_C359DB: FLdPr Me
  loc_C359DE: MemLdRfVar from_stack_1.global_60
  loc_C359E1: LdPrVar
  loc_C359E3: LateMemCall
  loc_C359E9: LitVarStr var_94, " border-collapse:collapse;"
  loc_C359EE: PopAdLdVar
  loc_C359EF: FLdPr Me
  loc_C359F2: MemLdRfVar from_stack_1.global_60
  loc_C359F5: LdPrVar
  loc_C359F7: LateMemCall
  loc_C359FD: LitVarStr var_94, "}"
  loc_C35A02: PopAdLdVar
  loc_C35A03: FLdPr Me
  loc_C35A06: MemLdRfVar from_stack_1.global_60
  loc_C35A09: LdPrVar
  loc_C35A0B: LateMemCall
  loc_C35A11: LitVarStr var_94, ".MissChild {"
  loc_C35A16: PopAdLdVar
  loc_C35A17: FLdPr Me
  loc_C35A1A: MemLdRfVar from_stack_1.global_60
  loc_C35A1D: LdPrVar
  loc_C35A1F: LateMemCall
  loc_C35A25: LitVarStr var_94, " float:right;"
  loc_C35A2A: PopAdLdVar
  loc_C35A2B: FLdPr Me
  loc_C35A2E: MemLdRfVar from_stack_1.global_60
  loc_C35A31: LdPrVar
  loc_C35A33: LateMemCall
  loc_C35A39: LitVarStr var_94, " clear:right;"
  loc_C35A3E: PopAdLdVar
  loc_C35A3F: FLdPr Me
  loc_C35A42: MemLdRfVar from_stack_1.global_60
  loc_C35A45: LdPrVar
  loc_C35A47: LateMemCall
  loc_C35A4D: LitVarStr var_94, " margin:10px;"
  loc_C35A52: PopAdLdVar
  loc_C35A53: FLdPr Me
  loc_C35A56: MemLdRfVar from_stack_1.global_60
  loc_C35A59: LdPrVar
  loc_C35A5B: LateMemCall
  loc_C35A61: LitVarStr var_94, " vertical-align:bottom"
  loc_C35A66: PopAdLdVar
  loc_C35A67: FLdPr Me
  loc_C35A6A: MemLdRfVar from_stack_1.global_60
  loc_C35A6D: LdPrVar
  loc_C35A6F: LateMemCall
  loc_C35A75: LitVarStr var_94, "}"
  loc_C35A7A: PopAdLdVar
  loc_C35A7B: FLdPr Me
  loc_C35A7E: MemLdRfVar from_stack_1.global_60
  loc_C35A81: LdPrVar
  loc_C35A83: LateMemCall
  loc_C35A89: LitVarStr var_94, ".NoBordeAbajo {"
  loc_C35A8E: PopAdLdVar
  loc_C35A8F: FLdPr Me
  loc_C35A92: MemLdRfVar from_stack_1.global_60
  loc_C35A95: LdPrVar
  loc_C35A97: LateMemCall
  loc_C35A9D: LitVarStr var_94, " border-bottom:none"
  loc_C35AA2: PopAdLdVar
  loc_C35AA3: FLdPr Me
  loc_C35AA6: MemLdRfVar from_stack_1.global_60
  loc_C35AA9: LdPrVar
  loc_C35AAB: LateMemCall
  loc_C35AB1: LitVarStr var_94, "}"
  loc_C35AB6: PopAdLdVar
  loc_C35AB7: FLdPr Me
  loc_C35ABA: MemLdRfVar from_stack_1.global_60
  loc_C35ABD: LdPrVar
  loc_C35ABF: LateMemCall
  loc_C35AC5: LitVarStr var_94, ".NoBordeArriba {"
  loc_C35ACA: PopAdLdVar
  loc_C35ACB: FLdPr Me
  loc_C35ACE: MemLdRfVar from_stack_1.global_60
  loc_C35AD1: LdPrVar
  loc_C35AD3: LateMemCall
  loc_C35AD9: LitVarStr var_94, " border-top:none"
  loc_C35ADE: PopAdLdVar
  loc_C35ADF: FLdPr Me
  loc_C35AE2: MemLdRfVar from_stack_1.global_60
  loc_C35AE5: LdPrVar
  loc_C35AE7: LateMemCall
  loc_C35AED: LitVarStr var_94, "}"
  loc_C35AF2: PopAdLdVar
  loc_C35AF3: FLdPr Me
  loc_C35AF6: MemLdRfVar from_stack_1.global_60
  loc_C35AF9: LdPrVar
  loc_C35AFB: LateMemCall
  loc_C35B01: LitVarStr var_94, "-->"
  loc_C35B06: PopAdLdVar
  loc_C35B07: FLdPr Me
  loc_C35B0A: MemLdRfVar from_stack_1.global_60
  loc_C35B0D: LdPrVar
  loc_C35B0F: LateMemCall
  loc_C35B15: LitVarStr var_94, "</style>"
  loc_C35B1A: PopAdLdVar
  loc_C35B1B: FLdPr Me
  loc_C35B1E: MemLdRfVar from_stack_1.global_60
  loc_C35B21: LdPrVar
  loc_C35B23: LateMemCall
  loc_C35B29: LitI4 0
  loc_C35B2E: FStStrCopy var_AC
  loc_C35B31: FLdRfVar var_AC
  loc_C35B34: LitI4 0
  loc_C35B39: FStStrCopy var_A8
  loc_C35B3C: FLdRfVar var_A8
  loc_C35B3F: LitI2_Byte 0
  loc_C35B41: PopTmpLdAd2 var_BE
  loc_C35B44: FLdPr Me
  loc_C35B47: MemLdRfVar from_stack_1.global_60
  loc_C35B4A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C35B4F: FFreeStr var_A8 = ""
  loc_C35B56: ExitProcHresult
End Function

Private Function Proc_199_24_C00144() 'C00144
  'Data Table: 4BADEC
  loc_BFF840: LitVarStr var_94, "<table align=""center"" height=""350"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_BFF845: PopAdLdVar
  loc_BFF846: FLdPr Me
  loc_BFF849: MemLdRfVar from_stack_1.global_60
  loc_BFF84C: LdPrVar
  loc_BFF84E: LateMemCall
  loc_BFF854: LitVarStr var_94, "  <tr valign=""top""><td height=""350"">"
  loc_BFF859: PopAdLdVar
  loc_BFF85A: FLdPr Me
  loc_BFF85D: MemLdRfVar from_stack_1.global_60
  loc_BFF860: LdPrVar
  loc_BFF862: LateMemCall
  loc_BFF868: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_BFF86D: PopAdLdVar
  loc_BFF86E: FLdPr Me
  loc_BFF871: MemLdRfVar from_stack_1.global_60
  loc_BFF874: LdPrVar
  loc_BFF876: LateMemCall
  loc_BFF87C: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BFF881: PopAdLdVar
  loc_BFF882: FLdPr Me
  loc_BFF885: MemLdRfVar from_stack_1.global_60
  loc_BFF888: LdPrVar
  loc_BFF88A: LateMemCall
  loc_BFF890: LitStr "        <td colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio MargIzq"" style=""padding-top: 1px;padding-bottom: 1px""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BFF893: LitI2_Byte &H5F
  loc_BFF895: CStrUI1
  loc_BFF897: FStStrNoPop var_A8
  loc_BFF89A: ConcatStr
  loc_BFF89B: FStStrNoPop var_AC
  loc_BFF89E: LitStr """ height="""
  loc_BFF8A1: ConcatStr
  loc_BFF8A2: FStStrNoPop var_B0
  loc_BFF8A5: LitI2_Byte &H3C
  loc_BFF8A7: CStrUI1
  loc_BFF8A9: FStStrNoPop var_B4
  loc_BFF8AC: ConcatStr
  loc_BFF8AD: FStStrNoPop var_B8
  loc_BFF8B0: LitStr """ align=""left""><span class=""NombreMunicipio"">"
  loc_BFF8B3: ConcatStr
  loc_BFF8B4: FStStrNoPop var_BC
  loc_BFF8B7: LitStr "Municipalidad de Guaymallén"
  loc_BFF8BA: ConcatStr
  loc_BFF8BB: FStStrNoPop var_C0
  loc_BFF8BE: LitStr "</span><br>"
  loc_BFF8C1: ConcatStr
  loc_BFF8C2: CVarStr var_D0
  loc_BFF8C5: PopAdLdVar
  loc_BFF8C6: FLdPr Me
  loc_BFF8C9: MemLdRfVar from_stack_1.global_60
  loc_BFF8CC: LdPrVar
  loc_BFF8CE: LateMemCall
  loc_BFF8D4: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BFF8E5: FFree1Var var_D0 = ""
  loc_BFF8E8: LitStr "          "
  loc_BFF8EB: LitStr "Dirección de Rentas"
  loc_BFF8EE: ConcatStr
  loc_BFF8EF: FStStrNoPop var_A8
  loc_BFF8F2: LitStr "<br>"
  loc_BFF8F5: ConcatStr
  loc_BFF8F6: CVarStr var_D0
  loc_BFF8F9: PopAdLdVar
  loc_BFF8FA: FLdPr Me
  loc_BFF8FD: MemLdRfVar from_stack_1.global_60
  loc_BFF900: LdPrVar
  loc_BFF902: LateMemCall
  loc_BFF908: FFree1Str var_A8
  loc_BFF90B: FFree1Var var_D0 = ""
  loc_BFF90E: LitStr "          "
  loc_BFF911: LitStr "Libertad 720 - Villa Nueva"
  loc_BFF914: ConcatStr
  loc_BFF915: FStStrNoPop var_A8
  loc_BFF918: LitStr "<br>"
  loc_BFF91B: ConcatStr
  loc_BFF91C: CVarStr var_D0
  loc_BFF91F: PopAdLdVar
  loc_BFF920: FLdPr Me
  loc_BFF923: MemLdRfVar from_stack_1.global_60
  loc_BFF926: LdPrVar
  loc_BFF928: LateMemCall
  loc_BFF92E: FFree1Str var_A8
  loc_BFF931: FFree1Var var_D0 = ""
  loc_BFF934: LitStr "          "
  loc_BFF937: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_BFF93A: ConcatStr
  loc_BFF93B: FStStrNoPop var_A8
  loc_BFF93E: LitStr "<br>"
  loc_BFF941: ConcatStr
  loc_BFF942: CVarStr var_D0
  loc_BFF945: PopAdLdVar
  loc_BFF946: FLdPr Me
  loc_BFF949: MemLdRfVar from_stack_1.global_60
  loc_BFF94C: LdPrVar
  loc_BFF94E: LateMemCall
  loc_BFF954: FFree1Str var_A8
  loc_BFF957: FFree1Var var_D0 = ""
  loc_BFF95A: LitStr "          "
  loc_BFF95D: LitStr "C.U.I.T.: "
  loc_BFF960: ConcatStr
  loc_BFF961: FStStrNoPop var_A8
  loc_BFF964: LitStr "30-99914707-7"
  loc_BFF967: ConcatStr
  loc_BFF968: FStStrNoPop var_AC
  loc_BFF96B: LitStr "</td>"
  loc_BFF96E: ConcatStr
  loc_BFF96F: CVarStr var_D0
  loc_BFF972: PopAdLdVar
  loc_BFF973: FLdPr Me
  loc_BFF976: MemLdRfVar from_stack_1.global_60
  loc_BFF979: LdPrVar
  loc_BFF97B: LateMemCall
  loc_BFF981: FFreeStr var_A8 = ""
  loc_BFF988: FFree1Var var_D0 = ""
  loc_BFF98B: LitVarStr var_94, "        <td class=""NoBordeAbajo"" width=""200"" height=""31"" align=""center"" valign=""middle"">"
  loc_BFF990: PopAdLdVar
  loc_BFF991: FLdPr Me
  loc_BFF994: MemLdRfVar from_stack_1.global_60
  loc_BFF997: LdPrVar
  loc_BFF999: LateMemCall
  loc_BFF99F: LitVarStr var_94, "        <div>&nbsp;</div>"
  loc_BFF9A4: PopAdLdVar
  loc_BFF9A5: FLdPr Me
  loc_BFF9A8: MemLdRfVar from_stack_1.global_60
  loc_BFF9AB: LdPrVar
  loc_BFF9AD: LateMemCall
  loc_BFF9B3: LitVarStr var_94, "        <table width=""42" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""0"" class=""CorreoTabla"" >"
  loc_BFF9B8: PopAdLdVar
  loc_BFF9B9: FLdPr Me
  loc_BFF9BC: MemLdRfVar from_stack_1.global_60
  loc_BFF9BF: LdPrVar
  loc_BFF9C1: LateMemCall
  loc_BFF9C7: LitVarStr var_94, "          <tr>"
  loc_BFF9CC: PopAdLdVar
  loc_BFF9CD: FLdPr Me
  loc_BFF9D0: MemLdRfVar from_stack_1.global_60
  loc_BFF9D3: LdPrVar
  loc_BFF9D5: LateMemCall
  loc_BFF9DB: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-right:none"">C<br>O<br>R<br>R</td>"
  loc_BFF9E0: PopAdLdVar
  loc_BFF9E1: FLdPr Me
  loc_BFF9E4: MemLdRfVar from_stack_1.global_60
  loc_BFF9E7: LdPrVar
  loc_BFF9E9: LateMemCall
  loc_BFF9EF: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-left:none"">O<br>F<br>I<br>C</td>"
  loc_BFF9F4: PopAdLdVar
  loc_BFF9F5: FLdPr Me
  loc_BFF9F8: MemLdRfVar from_stack_1.global_60
  loc_BFF9FB: LdPrVar
  loc_BFF9FD: LateMemCall
  loc_BFFA03: LitVarStr var_94, "            <td class=""CorreoCelda"">FRANQUEO A PAGAR</td>"
  loc_BFFA08: PopAdLdVar
  loc_BFFA09: FLdPr Me
  loc_BFFA0C: MemLdRfVar from_stack_1.global_60
  loc_BFFA0F: LdPrVar
  loc_BFFA11: LateMemCall
  loc_BFFA17: LitVarStr var_94, "          </tr>"
  loc_BFFA1C: PopAdLdVar
  loc_BFFA1D: FLdPr Me
  loc_BFFA20: MemLdRfVar from_stack_1.global_60
  loc_BFFA23: LdPrVar
  loc_BFFA25: LateMemCall
  loc_BFFA2B: LitVarStr var_94, "          <tr>"
  loc_BFFA30: PopAdLdVar
  loc_BFFA31: FLdPr Me
  loc_BFFA34: MemLdRfVar from_stack_1.global_60
  loc_BFFA37: LdPrVar
  loc_BFFA39: LateMemCall
  loc_BFFA3F: LitVarStr var_94, "            <td class=""CorreoCelda"">CTA CTE N&deg; 17438</td>"
  loc_BFFA44: PopAdLdVar
  loc_BFFA45: FLdPr Me
  loc_BFFA48: MemLdRfVar from_stack_1.global_60
  loc_BFFA4B: LdPrVar
  loc_BFFA4D: LateMemCall
  loc_BFFA53: LitVarStr var_94, "          </tr>"
  loc_BFFA58: PopAdLdVar
  loc_BFFA59: FLdPr Me
  loc_BFFA5C: MemLdRfVar from_stack_1.global_60
  loc_BFFA5F: LdPrVar
  loc_BFFA61: LateMemCall
  loc_BFFA67: LitVarStr var_94, "          <tr>"
  loc_BFFA6C: PopAdLdVar
  loc_BFFA6D: FLdPr Me
  loc_BFFA70: MemLdRfVar from_stack_1.global_60
  loc_BFFA73: LdPrVar
  loc_BFFA75: LateMemCall
  loc_BFFA7B: LitStr "            <td class=""CorreoCelda"">CUIT: "
  loc_BFFA7E: LitStr "30-99914707-7"
  loc_BFFA81: ConcatStr
  loc_BFFA82: FStStrNoPop var_A8
  loc_BFFA85: LitStr "</td>"
  loc_BFFA88: ConcatStr
  loc_BFFA89: CVarStr var_D0
  loc_BFFA8C: PopAdLdVar
  loc_BFFA8D: FLdPr Me
  loc_BFFA90: MemLdRfVar from_stack_1.global_60
  loc_BFFA93: LdPrVar
  loc_BFFA95: LateMemCall
  loc_BFFA9B: FFree1Str var_A8
  loc_BFFA9E: FFree1Var var_D0 = ""
  loc_BFFAA1: LitVarStr var_94, "          </tr>"
  loc_BFFAA6: PopAdLdVar
  loc_BFFAA7: FLdPr Me
  loc_BFFAAA: MemLdRfVar from_stack_1.global_60
  loc_BFFAAD: LdPrVar
  loc_BFFAAF: LateMemCall
  loc_BFFAB5: LitVarStr var_94, "          <tr>"
  loc_BFFABA: PopAdLdVar
  loc_BFFABB: FLdPr Me
  loc_BFFABE: MemLdRfVar from_stack_1.global_60
  loc_BFFAC1: LdPrVar
  loc_BFFAC3: LateMemCall
  loc_BFFAC9: LitVarStr var_94, "            <td colspan=""3"" class=""CorreoCeldaFinal"">Devolver a Admisi&oacute;n Mendoza</td>"
  loc_BFFACE: PopAdLdVar
  loc_BFFACF: FLdPr Me
  loc_BFFAD2: MemLdRfVar from_stack_1.global_60
  loc_BFFAD5: LdPrVar
  loc_BFFAD7: LateMemCall
  loc_BFFADD: LitVarStr var_94, "            </tr>"
  loc_BFFAE2: PopAdLdVar
  loc_BFFAE3: FLdPr Me
  loc_BFFAE6: MemLdRfVar from_stack_1.global_60
  loc_BFFAE9: LdPrVar
  loc_BFFAEB: LateMemCall
  loc_BFFAF1: LitVarStr var_94, "        </table>"
  loc_BFFAF6: PopAdLdVar
  loc_BFFAF7: FLdPr Me
  loc_BFFAFA: MemLdRfVar from_stack_1.global_60
  loc_BFFAFD: LdPrVar
  loc_BFFAFF: LateMemCall
  loc_BFFB05: LitVarStr var_94, "        </td>"
  loc_BFFB0A: PopAdLdVar
  loc_BFFB0B: FLdPr Me
  loc_BFFB0E: MemLdRfVar from_stack_1.global_60
  loc_BFFB11: LdPrVar
  loc_BFFB13: LateMemCall
  loc_BFFB19: LitVarStr var_94, "      </tr>"
  loc_BFFB1E: PopAdLdVar
  loc_BFFB1F: FLdPr Me
  loc_BFFB22: MemLdRfVar from_stack_1.global_60
  loc_BFFB25: LdPrVar
  loc_BFFB27: LateMemCall
  loc_BFFB2D: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BFFB32: PopAdLdVar
  loc_BFFB33: FLdPr Me
  loc_BFFB36: MemLdRfVar from_stack_1.global_60
  loc_BFFB39: LdPrVar
  loc_BFFB3B: LateMemCall
  loc_BFFB41: LitVarStr var_94, "        <td colspan=""4"" align=""center"" valign=""middle"" class=""NombreMunicipio"">MANTENIMIENTO DE CEMENTERIO</td>"
  loc_BFFB46: PopAdLdVar
  loc_BFFB47: FLdPr Me
  loc_BFFB4A: MemLdRfVar from_stack_1.global_60
  loc_BFFB4D: LdPrVar
  loc_BFFB4F: LateMemCall
  loc_BFFB55: LitVarStr var_94, "        <td width=""24"" align=""right"" class=""Encabezado MargDer""><strong>Orden:</strong></td>"
  loc_BFFB5A: PopAdLdVar
  loc_BFFB5B: FLdPr Me
  loc_BFFB5E: MemLdRfVar from_stack_1.global_60
  loc_BFFB61: LdPrVar
  loc_BFFB63: LateMemCall
  loc_BFFB69: FLdPr Me
  loc_BFFB6C: MemLdStr global_96
  loc_BFFB6F: FLdPr Me
  loc_BFFB72: MemLdStr global_92
  loc_BFFB75: AryLock
  loc_BFFB78: Ary1LdRf
  loc_BFFB79: FStR4 var_D8
  loc_BFFB7C: LitStr "        <td width=""28"" align=""left"" valign=""top"" class=""Normal MargIzq"">"
  loc_BFFB7F: FMemLdR4 var_D8(92)
  loc_BFFB84: ConcatStr
  loc_BFFB85: FStStrNoPop var_A8
  loc_BFFB88: LitStr "</td>"
  loc_BFFB8B: ConcatStr
  loc_BFFB8C: CVarStr var_D0
  loc_BFFB8F: PopAdLdVar
  loc_BFFB90: FLdPr Me
  loc_BFFB93: MemLdRfVar from_stack_1.global_60
  loc_BFFB96: LdPrVar
  loc_BFFB98: LateMemCall
  loc_BFFB9E: FFree1Str var_A8
  loc_BFFBA1: FFree1Var var_D0 = ""
  loc_BFFBA4: LitVarStr var_94, "        <td rowspan=""2"" class=""NoBordeArriba"">"
  loc_BFFBA9: PopAdLdVar
  loc_BFFBAA: FLdPr Me
  loc_BFFBAD: MemLdRfVar from_stack_1.global_60
  loc_BFFBB0: LdPrVar
  loc_BFFBB2: LateMemCall
  loc_BFFBB8: LitVarStr var_94, "         <table align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BFFBBD: PopAdLdVar
  loc_BFFBBE: FLdPr Me
  loc_BFFBC1: MemLdRfVar from_stack_1.global_60
  loc_BFFBC4: LdPrVar
  loc_BFFBC6: LateMemCall
  loc_BFFBCC: LitStr "          <tr><td valign=""bottom"" align=""center"" class=""CodBarChica"">"
  loc_BFFBCF: LitI4 1
  loc_BFFBD4: FMemLdR4 var_D8(108)
  loc_BFFBD9: Ary1LdI4
  loc_BFFBDA: ConcatStr
  loc_BFFBDB: FStStrNoPop var_A8
  loc_BFFBDE: LitStr "</td></tr>"
  loc_BFFBE1: ConcatStr
  loc_BFFBE2: CVarStr var_D0
  loc_BFFBE5: PopAdLdVar
  loc_BFFBE6: FLdPr Me
  loc_BFFBE9: MemLdRfVar from_stack_1.global_60
  loc_BFFBEC: LdPrVar
  loc_BFFBEE: LateMemCall
  loc_BFFBF4: FFree1Str var_A8
  loc_BFFBF7: FFree1Var var_D0 = ""
  loc_BFFBFA: LitStr "          <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BFFBFD: LitI4 0
  loc_BFFC02: FMemLdR4 var_D8(108)
  loc_BFFC07: Ary1LdI4
  loc_BFFC08: ConcatStr
  loc_BFFC09: FStStrNoPop var_A8
  loc_BFFC0C: LitStr "</td></tr>"
  loc_BFFC0F: ConcatStr
  loc_BFFC10: CVarStr var_D0
  loc_BFFC13: PopAdLdVar
  loc_BFFC14: FLdPr Me
  loc_BFFC17: MemLdRfVar from_stack_1.global_60
  loc_BFFC1A: LdPrVar
  loc_BFFC1C: LateMemCall
  loc_BFFC22: FFree1Str var_A8
  loc_BFFC25: FFree1Var var_D0 = ""
  loc_BFFC28: LitVarStr var_94, "        </table></td>"
  loc_BFFC2D: PopAdLdVar
  loc_BFFC2E: FLdPr Me
  loc_BFFC31: MemLdRfVar from_stack_1.global_60
  loc_BFFC34: LdPrVar
  loc_BFFC36: LateMemCall
  loc_BFFC3C: LitVarStr var_94, "      </tr>"
  loc_BFFC41: PopAdLdVar
  loc_BFFC42: FLdPr Me
  loc_BFFC45: MemLdRfVar from_stack_1.global_60
  loc_BFFC48: LdPrVar
  loc_BFFC4A: LateMemCall
  loc_BFFC50: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BFFC55: PopAdLdVar
  loc_BFFC56: FLdPr Me
  loc_BFFC59: MemLdRfVar from_stack_1.global_60
  loc_BFFC5C: LdPrVar
  loc_BFFC5E: LateMemCall
  loc_BFFC64: LitVarStr var_94, "        <td width=""51"" align=""right"" class=""Encabezado MargDer""><strong>CUENTA:</strong></td>"
  loc_BFFC69: PopAdLdVar
  loc_BFFC6A: FLdPr Me
  loc_BFFC6D: MemLdRfVar from_stack_1.global_60
  loc_BFFC70: LdPrVar
  loc_BFFC72: LateMemCall
  loc_BFFC78: LitStr "        <td width=""40"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BFFC7B: FMemLdR4 var_D8(76)
  loc_BFFC80: ConcatStr
  loc_BFFC81: FStStrNoPop var_A8
  loc_BFFC84: LitStr "</strong></td>"
  loc_BFFC87: ConcatStr
  loc_BFFC88: CVarStr var_D0
  loc_BFFC8B: PopAdLdVar
  loc_BFFC8C: FLdPr Me
  loc_BFFC8F: MemLdRfVar from_stack_1.global_60
  loc_BFFC92: LdPrVar
  loc_BFFC94: LateMemCall
  loc_BFFC9A: FFree1Str var_A8
  loc_BFFC9D: FFree1Var var_D0 = ""
  loc_BFFCA0: LitVarStr var_94, "        <td width=""43"" align=""right"" class=""Encabezado MargDer""><strong>Titular:</strong></td>"
  loc_BFFCA5: PopAdLdVar
  loc_BFFCA6: FLdPr Me
  loc_BFFCA9: MemLdRfVar from_stack_1.global_60
  loc_BFFCAC: LdPrVar
  loc_BFFCAE: LateMemCall
  loc_BFFCB4: LitStr "        <td height=""18"" colspan=""3"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BFFCB7: FMemLdR4 var_D8(4)
  loc_BFFCBC: ConcatStr
  loc_BFFCBD: FStStrNoPop var_A8
  loc_BFFCC0: LitStr "</strong>"
  loc_BFFCC3: ConcatStr
  loc_BFFCC4: CVarStr var_D0
  loc_BFFCC7: PopAdLdVar
  loc_BFFCC8: FLdPr Me
  loc_BFFCCB: MemLdRfVar from_stack_1.global_60
  loc_BFFCCE: LdPrVar
  loc_BFFCD0: LateMemCall
  loc_BFFCD6: FFree1Str var_A8
  loc_BFFCD9: FFree1Var var_D0 = ""
  loc_BFFCDC: FMemLdRf 0
  loc_BFFCE1: CVarRef
  loc_BFFCE6: FLdRfVar var_D0
  loc_BFFCE9: ImpAdCallFPR4  = Trim()
  loc_BFFCEE: FLdRfVar var_D0
  loc_BFFCF1: LitVarStr var_A4, vbNullString
  loc_BFFCF6: HardType
  loc_BFFCF7: NeVarBool
  loc_BFFCF9: FFree1Var var_D0 = ""
  loc_BFFCFC: BranchF loc_BFFD27
  loc_BFFCFF: LitStr "        <br>(Poseedor: "
  loc_BFFD02: FMemLdR4 var_D8(8)
  loc_BFFD07: ConcatStr
  loc_BFFD08: FStStrNoPop var_A8
  loc_BFFD0B: LitStr ")"
  loc_BFFD0E: ConcatStr
  loc_BFFD0F: CVarStr var_D0
  loc_BFFD12: PopAdLdVar
  loc_BFFD13: FLdPr Me
  loc_BFFD16: MemLdRfVar from_stack_1.global_60
  loc_BFFD19: LdPrVar
  loc_BFFD1B: LateMemCall
  loc_BFFD21: FFree1Str var_A8
  loc_BFFD24: FFree1Var var_D0 = ""
  loc_BFFD27: LitVarStr var_94, "        </td>"
  loc_BFFD2C: PopAdLdVar
  loc_BFFD2D: FLdPr Me
  loc_BFFD30: MemLdRfVar from_stack_1.global_60
  loc_BFFD33: LdPrVar
  loc_BFFD35: LateMemCall
  loc_BFFD3B: LitVarStr var_94, "      </tr>"
  loc_BFFD40: PopAdLdVar
  loc_BFFD41: FLdPr Me
  loc_BFFD44: MemLdRfVar from_stack_1.global_60
  loc_BFFD47: LdPrVar
  loc_BFFD49: LateMemCall
  loc_BFFD4F: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BFFD54: PopAdLdVar
  loc_BFFD55: FLdPr Me
  loc_BFFD58: MemLdRfVar from_stack_1.global_60
  loc_BFFD5B: LdPrVar
  loc_BFFD5D: LateMemCall
  loc_BFFD63: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Postal:</strong></td>"
  loc_BFFD68: PopAdLdVar
  loc_BFFD69: FLdPr Me
  loc_BFFD6C: MemLdRfVar from_stack_1.global_60
  loc_BFFD6F: LdPrVar
  loc_BFFD71: LateMemCall
  loc_BFFD77: LitStr "        <td colspan=""6"" class=""DomiPostal"">Calle: "
  loc_BFFD7A: FMemLdR4 var_D8(12)
  loc_BFFD7F: ConcatStr
  loc_BFFD80: FStStrNoPop var_A8
  loc_BFFD83: LitStr " Nro: "
  loc_BFFD86: ConcatStr
  loc_BFFD87: FStStrNoPop var_AC
  loc_BFFD8A: FMemLdR4 var_D8(16)
  loc_BFFD8F: ConcatStr
  loc_BFFD90: CVarStr var_D0
  loc_BFFD93: PopAdLdVar
  loc_BFFD94: FLdPr Me
  loc_BFFD97: MemLdRfVar from_stack_1.global_60
  loc_BFFD9A: LdPrVar
  loc_BFFD9C: LateMemCall
  loc_BFFDA2: FFreeStr var_A8 = ""
  loc_BFFDA9: FFree1Var var_D0 = ""
  loc_BFFDAC: FMemLdR4 var_D8(20)
  loc_BFFDB1: LitStr vbNullString
  loc_BFFDB4: NeStr
  loc_BFFDB6: BranchF loc_BFFDD7
  loc_BFFDB9: LitStr " Barrio: "
  loc_BFFDBC: FMemLdR4 var_D8(20)
  loc_BFFDC1: ConcatStr
  loc_BFFDC2: CVarStr var_D0
  loc_BFFDC5: PopAdLdVar
  loc_BFFDC6: FLdPr Me
  loc_BFFDC9: MemLdRfVar from_stack_1.global_60
  loc_BFFDCC: LdPrVar
  loc_BFFDCE: LateMemCall
  loc_BFFDD4: FFree1Var var_D0 = ""
  loc_BFFDD7: FMemLdR4 var_D8(24)
  loc_BFFDDC: LitStr vbNullString
  loc_BFFDDF: NeStr
  loc_BFFDE1: BranchF loc_BFFE02
  loc_BFFDE4: LitStr " Mza: "
  loc_BFFDE7: FMemLdR4 var_D8(24)
  loc_BFFDEC: ConcatStr
  loc_BFFDED: CVarStr var_D0
  loc_BFFDF0: PopAdLdVar
  loc_BFFDF1: FLdPr Me
  loc_BFFDF4: MemLdRfVar from_stack_1.global_60
  loc_BFFDF7: LdPrVar
  loc_BFFDF9: LateMemCall
  loc_BFFDFF: FFree1Var var_D0 = ""
  loc_BFFE02: FMemLdR4 var_D8(28)
  loc_BFFE07: LitStr vbNullString
  loc_BFFE0A: NeStr
  loc_BFFE0C: BranchF loc_BFFE2D
  loc_BFFE0F: LitStr " Casa: "
  loc_BFFE12: FMemLdR4 var_D8(28)
  loc_BFFE17: ConcatStr
  loc_BFFE18: CVarStr var_D0
  loc_BFFE1B: PopAdLdVar
  loc_BFFE1C: FLdPr Me
  loc_BFFE1F: MemLdRfVar from_stack_1.global_60
  loc_BFFE22: LdPrVar
  loc_BFFE24: LateMemCall
  loc_BFFE2A: FFree1Var var_D0 = ""
  loc_BFFE2D: FMemLdR4 var_D8(32)
  loc_BFFE32: LitStr vbNullString
  loc_BFFE35: NeStr
  loc_BFFE37: BranchF loc_BFFE51
  loc_BFFE3A: FMemLdRf 0
  loc_BFFE3F: CDargRef
  loc_BFFE43: FLdPr Me
  loc_BFFE46: MemLdRfVar from_stack_1.global_60
  loc_BFFE49: LdPrVar
  loc_BFFE4B: LateMemCall
  loc_BFFE51: LitStr "         <br>Loc: "
  loc_BFFE54: FMemLdR4 var_D8(36)
  loc_BFFE59: ConcatStr
  loc_BFFE5A: FStStrNoPop var_A8
  loc_BFFE5D: LitStr " CP: "
  loc_BFFE60: ConcatStr
  loc_BFFE61: FStStrNoPop var_AC
  loc_BFFE64: FMemLdR4 var_D8(40)
  loc_BFFE69: ConcatStr
  loc_BFFE6A: FStStrNoPop var_B0
  loc_BFFE6D: LitStr "</td>"
  loc_BFFE70: ConcatStr
  loc_BFFE71: CVarStr var_D0
  loc_BFFE74: PopAdLdVar
  loc_BFFE75: FLdPr Me
  loc_BFFE78: MemLdRfVar from_stack_1.global_60
  loc_BFFE7B: LdPrVar
  loc_BFFE7D: LateMemCall
  loc_BFFE83: FFreeStr var_A8 = "": var_AC = ""
  loc_BFFE8C: FFree1Var var_D0 = ""
  loc_BFFE8F: LitVarStr var_94, "      </tr>"
  loc_BFFE94: PopAdLdVar
  loc_BFFE95: FLdPr Me
  loc_BFFE98: MemLdRfVar from_stack_1.global_60
  loc_BFFE9B: LdPrVar
  loc_BFFE9D: LateMemCall
  loc_BFFEA3: LitVarStr var_94, "        <tr valign=""top"">"
  loc_BFFEA8: PopAdLdVar
  loc_BFFEA9: FLdPr Me
  loc_BFFEAC: MemLdRfVar from_stack_1.global_60
  loc_BFFEAF: LdPrVar
  loc_BFFEB1: LateMemCall
  loc_BFFEB7: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Real:</strong></td>"
  loc_BFFEBC: PopAdLdVar
  loc_BFFEBD: FLdPr Me
  loc_BFFEC0: MemLdRfVar from_stack_1.global_60
  loc_BFFEC3: LdPrVar
  loc_BFFEC5: LateMemCall
  loc_BFFECB: LitStr "        <td colspan=""6"" class=""DomiReal"">Calle: "
  loc_BFFECE: FMemLdR4 var_D8(44)
  loc_BFFED3: ConcatStr
  loc_BFFED4: FStStrNoPop var_A8
  loc_BFFED7: LitStr " Nro: "
  loc_BFFEDA: ConcatStr
  loc_BFFEDB: FStStrNoPop var_AC
  loc_BFFEDE: FMemLdR4 var_D8(48)
  loc_BFFEE3: ConcatStr
  loc_BFFEE4: CVarStr var_D0
  loc_BFFEE7: PopAdLdVar
  loc_BFFEE8: FLdPr Me
  loc_BFFEEB: MemLdRfVar from_stack_1.global_60
  loc_BFFEEE: LdPrVar
  loc_BFFEF0: LateMemCall
  loc_BFFEF6: FFreeStr var_A8 = ""
  loc_BFFEFD: FFree1Var var_D0 = ""
  loc_BFFF00: FMemLdR4 var_D8(52)
  loc_BFFF05: LitStr vbNullString
  loc_BFFF08: NeStr
  loc_BFFF0A: BranchF loc_BFFF2B
  loc_BFFF0D: LitStr " Barrio: "
  loc_BFFF10: FMemLdR4 var_D8(52)
  loc_BFFF15: ConcatStr
  loc_BFFF16: CVarStr var_D0
  loc_BFFF19: PopAdLdVar
  loc_BFFF1A: FLdPr Me
  loc_BFFF1D: MemLdRfVar from_stack_1.global_60
  loc_BFFF20: LdPrVar
  loc_BFFF22: LateMemCall
  loc_BFFF28: FFree1Var var_D0 = ""
  loc_BFFF2B: FMemLdR4 var_D8(56)
  loc_BFFF30: LitStr vbNullString
  loc_BFFF33: NeStr
  loc_BFFF35: BranchF loc_BFFF56
  loc_BFFF38: LitStr " Mza: "
  loc_BFFF3B: FMemLdR4 var_D8(56)
  loc_BFFF40: ConcatStr
  loc_BFFF41: CVarStr var_D0
  loc_BFFF44: PopAdLdVar
  loc_BFFF45: FLdPr Me
  loc_BFFF48: MemLdRfVar from_stack_1.global_60
  loc_BFFF4B: LdPrVar
  loc_BFFF4D: LateMemCall
  loc_BFFF53: FFree1Var var_D0 = ""
  loc_BFFF56: FMemLdR4 var_D8(60)
  loc_BFFF5B: LitStr vbNullString
  loc_BFFF5E: NeStr
  loc_BFFF60: BranchF loc_BFFF81
  loc_BFFF63: LitStr " Casa: "
  loc_BFFF66: FMemLdR4 var_D8(60)
  loc_BFFF6B: ConcatStr
  loc_BFFF6C: CVarStr var_D0
  loc_BFFF6F: PopAdLdVar
  loc_BFFF70: FLdPr Me
  loc_BFFF73: MemLdRfVar from_stack_1.global_60
  loc_BFFF76: LdPrVar
  loc_BFFF78: LateMemCall
  loc_BFFF7E: FFree1Var var_D0 = ""
  loc_BFFF81: FMemLdR4 var_D8(64)
  loc_BFFF86: LitStr vbNullString
  loc_BFFF89: NeStr
  loc_BFFF8B: BranchF loc_BFFFA5
  loc_BFFF8E: FMemLdRf 0
  loc_BFFF93: CDargRef
  loc_BFFF97: FLdPr Me
  loc_BFFF9A: MemLdRfVar from_stack_1.global_60
  loc_BFFF9D: LdPrVar
  loc_BFFF9F: LateMemCall
  loc_BFFFA5: LitStr "         <br>Loc: "
  loc_BFFFA8: FMemLdR4 var_D8(68)
  loc_BFFFAD: ConcatStr
  loc_BFFFAE: FStStrNoPop var_A8
  loc_BFFFB1: LitStr " CP: "
  loc_BFFFB4: ConcatStr
  loc_BFFFB5: FStStrNoPop var_AC
  loc_BFFFB8: FMemLdR4 var_D8(72)
  loc_BFFFBD: ConcatStr
  loc_BFFFBE: FStStrNoPop var_B0
  loc_BFFFC1: LitStr "</td>"
  loc_BFFFC4: ConcatStr
  loc_BFFFC5: CVarStr var_D0
  loc_BFFFC8: PopAdLdVar
  loc_BFFFC9: FLdPr Me
  loc_BFFFCC: MemLdRfVar from_stack_1.global_60
  loc_BFFFCF: LdPrVar
  loc_BFFFD1: LateMemCall
  loc_BFFFD7: FFreeStr var_A8 = "": var_AC = ""
  loc_BFFFE0: FFree1Var var_D0 = ""
  loc_BFFFE3: LitVarStr var_94, "      </tr>"
  loc_BFFFE8: PopAdLdVar
  loc_BFFFE9: FLdPr Me
  loc_BFFFEC: MemLdRfVar from_stack_1.global_60
  loc_BFFFEF: LdPrVar
  loc_BFFFF1: LateMemCall
  loc_BFFFF7: LitVarStr var_94, "    </table>"
  loc_BFFFFC: PopAdLdVar
  loc_BFFFFD: FLdPr Me
  loc_C00000: MemLdRfVar from_stack_1.global_60
  loc_C00003: LdPrVar
  loc_C00005: LateMemCall
  loc_C0000B: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_C00010: PopAdLdVar
  loc_C00011: FLdPr Me
  loc_C00014: MemLdRfVar from_stack_1.global_60
  loc_C00017: LdPrVar
  loc_C00019: LateMemCall
  loc_C0001F: LitVarStr var_94, "      <tr class=""Encabezado"" valign=""top"" align=""center"">"
  loc_C00024: PopAdLdVar
  loc_C00025: FLdPr Me
  loc_C00028: MemLdRfVar from_stack_1.global_60
  loc_C0002B: LdPrVar
  loc_C0002D: LateMemCall
  loc_C00033: LitVarStr var_94, "        <td width=""22" & Chr(37) & """><strong>Tipo de Sepultura</strong></td>"
  loc_C00038: PopAdLdVar
  loc_C00039: FLdPr Me
  loc_C0003C: MemLdRfVar from_stack_1.global_60
  loc_C0003F: LdPrVar
  loc_C00041: LateMemCall
  loc_C00047: LitVarStr var_94, "        <td width=""66" & Chr(37) & """><strong>Ubicación de la concesión</strong></td>"
  loc_C0004C: PopAdLdVar
  loc_C0004D: FLdPr Me
  loc_C00050: MemLdRfVar from_stack_1.global_60
  loc_C00053: LdPrVar
  loc_C00055: LateMemCall
  loc_C0005B: LitVarStr var_94, "        <td width=""12" & Chr(37) & """><strong>Vencimiento de la concesión</strong></td>"
  loc_C00060: PopAdLdVar
  loc_C00061: FLdPr Me
  loc_C00064: MemLdRfVar from_stack_1.global_60
  loc_C00067: LdPrVar
  loc_C00069: LateMemCall
  loc_C0006F: LitVarStr var_94, "      </tr>"
  loc_C00074: PopAdLdVar
  loc_C00075: FLdPr Me
  loc_C00078: MemLdRfVar from_stack_1.global_60
  loc_C0007B: LdPrVar
  loc_C0007D: LateMemCall
  loc_C00083: LitVarStr var_94, "      <tr valign=""top"" align=""left"">"
  loc_C00088: PopAdLdVar
  loc_C00089: FLdPr Me
  loc_C0008C: MemLdRfVar from_stack_1.global_60
  loc_C0008F: LdPrVar
  loc_C00091: LateMemCall
  loc_C00097: LitStr "        <td class=""DomiReal"">"
  loc_C0009A: FMemLdR4 var_D8(80)
  loc_C0009F: ConcatStr
  loc_C000A0: FStStrNoPop var_A8
  loc_C000A3: LitStr "</td>"
  loc_C000A6: ConcatStr
  loc_C000A7: CVarStr var_D0
  loc_C000AA: PopAdLdVar
  loc_C000AB: FLdPr Me
  loc_C000AE: MemLdRfVar from_stack_1.global_60
  loc_C000B1: LdPrVar
  loc_C000B3: LateMemCall
  loc_C000B9: FFree1Str var_A8
  loc_C000BC: FFree1Var var_D0 = ""
  loc_C000BF: LitStr "        <td class=""DomiReal"">"
  loc_C000C2: FMemLdR4 var_D8(84)
  loc_C000C7: ConcatStr
  loc_C000C8: FStStrNoPop var_A8
  loc_C000CB: LitStr "</td>"
  loc_C000CE: ConcatStr
  loc_C000CF: CVarStr var_D0
  loc_C000D2: PopAdLdVar
  loc_C000D3: FLdPr Me
  loc_C000D6: MemLdRfVar from_stack_1.global_60
  loc_C000D9: LdPrVar
  loc_C000DB: LateMemCall
  loc_C000E1: FFree1Str var_A8
  loc_C000E4: FFree1Var var_D0 = ""
  loc_C000E7: LitStr "        <td class=""DomiReal"">"
  loc_C000EA: FMemLdR4 var_D8(88)
  loc_C000EF: ConcatStr
  loc_C000F0: FStStrNoPop var_A8
  loc_C000F3: LitStr "</td>"
  loc_C000F6: ConcatStr
  loc_C000F7: CVarStr var_D0
  loc_C000FA: PopAdLdVar
  loc_C000FB: FLdPr Me
  loc_C000FE: MemLdRfVar from_stack_1.global_60
  loc_C00101: LdPrVar
  loc_C00103: LateMemCall
  loc_C00109: FFree1Str var_A8
  loc_C0010C: FFree1Var var_D0 = ""
  loc_C0010F: LitVarStr var_94, "      </tr>"
  loc_C00114: PopAdLdVar
  loc_C00115: FLdPr Me
  loc_C00118: MemLdRfVar from_stack_1.global_60
  loc_C0011B: LdPrVar
  loc_C0011D: LateMemCall
  loc_C00123: LitVarStr var_94, "    </table>"
  loc_C00128: PopAdLdVar
  loc_C00129: FLdPr Me
  loc_C0012C: MemLdRfVar from_stack_1.global_60
  loc_C0012F: LdPrVar
  loc_C00131: LateMemCall
  loc_C00137: LitI4 0
  loc_C0013C: FStR4 var_D8
  loc_C0013F: AryUnlock
  loc_C00142: ExitProcHresult
End Function

Private Function Proc_199_25_B52DEC() 'B52DEC
  'Data Table: 4BADEC
  loc_B52A1C: FLdPr Me
  loc_B52A1F: MemLdStr global_96
  loc_B52A22: FLdPr Me
  loc_B52A25: MemLdStr global_92
  loc_B52A28: AryLock
  loc_B52A2B: Ary1LdRf
  loc_B52A2C: FStR4 var_8C
  loc_B52A2F: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B52A34: PopAdLdVar
  loc_B52A35: FLdPr Me
  loc_B52A38: MemLdRfVar from_stack_1.global_60
  loc_B52A3B: LdPrVar
  loc_B52A3D: LateMemCall
  loc_B52A43: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B52A48: PopAdLdVar
  loc_B52A49: FLdPr Me
  loc_B52A4C: MemLdRfVar from_stack_1.global_60
  loc_B52A4F: LdPrVar
  loc_B52A51: LateMemCall
  loc_B52A57: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B52A5C: PopAdLdVar
  loc_B52A5D: FLdPr Me
  loc_B52A60: MemLdRfVar from_stack_1.global_60
  loc_B52A63: LdPrVar
  loc_B52A65: LateMemCall
  loc_B52A6B: FMemLdR4 var_8C(100)
  loc_B52A70: CR8Str
  loc_B52A72: LitI2_Byte 0
  loc_B52A74: CR8I2
  loc_B52A75: GtR4
  loc_B52A76: BranchF loc_B52A8D
  loc_B52A79: LitVarStr var_9C, "      <p><strong>Seg&uacute;n nuestros registros esta cuenta registra deuda. Existen convenientes planes de pago.<br>Evite cobro por v&iacute;a judicial!!!</strong></p>"
  loc_B52A7E: PopAdLdVar
  loc_B52A7F: FLdPr Me
  loc_B52A82: MemLdRfVar from_stack_1.global_60
  loc_B52A85: LdPrVar
  loc_B52A87: LateMemCall
  loc_B52A8D: LitVarStr var_9C, "      <p>Si Ud. Adeuda Derechos de Mantenimiento anteriores al año vigente y/u otros conceptos de Defunciones, por favor regularice su deuda.<br>"
  loc_B52A92: PopAdLdVar
  loc_B52A93: FLdPr Me
  loc_B52A96: MemLdRfVar from_stack_1.global_60
  loc_B52A99: LdPrVar
  loc_B52A9B: LateMemCall
  loc_B52AA1: LitVarStr var_9C, "        Aproveche convenientes Planes de Facilidades de Pago.<br>"
  loc_B52AA6: PopAdLdVar
  loc_B52AA7: FLdPr Me
  loc_B52AAA: MemLdRfVar from_stack_1.global_60
  loc_B52AAD: LdPrVar
  loc_B52AAF: LateMemCall
  loc_B52AB5: LitVarStr var_9C, "        Evite el cobro por vía de Apremios.<br>"
  loc_B52ABA: PopAdLdVar
  loc_B52ABB: FLdPr Me
  loc_B52ABE: MemLdRfVar from_stack_1.global_60
  loc_B52AC1: LdPrVar
  loc_B52AC3: LateMemCall
  loc_B52AC9: LitVarStr var_9C, "        Pagar este boleto no lo libera de deuda anterior.<br>"
  loc_B52ACE: PopAdLdVar
  loc_B52ACF: FLdPr Me
  loc_B52AD2: MemLdRfVar from_stack_1.global_60
  loc_B52AD5: LdPrVar
  loc_B52AD7: LateMemCall
  loc_B52ADD: LitVarStr var_9C, "        Sin Ticket caja No Acredita pago del periodo correspondiente.<br>"
  loc_B52AE2: PopAdLdVar
  loc_B52AE3: FLdPr Me
  loc_B52AE6: MemLdRfVar from_stack_1.global_60
  loc_B52AE9: LdPrVar
  loc_B52AEB: LateMemCall
  loc_B52AF1: LitVarStr var_9C, "        El periodo facturado podrá pagarse en Entidades autorizadas.<br>"
  loc_B52AF6: PopAdLdVar
  loc_B52AF7: FLdPr Me
  loc_B52AFA: MemLdRfVar from_stack_1.global_60
  loc_B52AFD: LdPrVar
  loc_B52AFF: LateMemCall
  loc_B52B05: LitVarStr var_9C, "        Morosidad se liquidará en el próximo periodo.<br>"
  loc_B52B0A: PopAdLdVar
  loc_B52B0B: FLdPr Me
  loc_B52B0E: MemLdRfVar from_stack_1.global_60
  loc_B52B11: LdPrVar
  loc_B52B13: LateMemCall
  loc_B52B19: LitVarStr var_9C, "        Los recargos y apremios ser&aacute;n actualizados al momento del pago.<br>"
  loc_B52B1E: PopAdLdVar
  loc_B52B1F: FLdPr Me
  loc_B52B22: MemLdRfVar from_stack_1.global_60
  loc_B52B25: LdPrVar
  loc_B52B27: LateMemCall
  loc_B52B2D: LitVarStr var_9C, "      </p>"
  loc_B52B32: PopAdLdVar
  loc_B52B33: FLdPr Me
  loc_B52B36: MemLdRfVar from_stack_1.global_60
  loc_B52B39: LdPrVar
  loc_B52B3B: LateMemCall
  loc_B52B41: LitVarStr var_9C, "    </td>"
  loc_B52B46: PopAdLdVar
  loc_B52B47: FLdPr Me
  loc_B52B4A: MemLdRfVar from_stack_1.global_60
  loc_B52B4D: LdPrVar
  loc_B52B4F: LateMemCall
  loc_B52B55: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B52B5A: PopAdLdVar
  loc_B52B5B: FLdPr Me
  loc_B52B5E: MemLdRfVar from_stack_1.global_60
  loc_B52B61: LdPrVar
  loc_B52B63: LateMemCall
  loc_B52B69: FMemLdR4 var_8C(112)
  loc_B52B6E: LitI2_Byte 1
  loc_B52B70: FnUBound
  loc_B52B72: LitI4 0
  loc_B52B77: GtI4
  loc_B52B78: BranchF loc_B52CC6
  loc_B52B7B: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""0"" cellspacing=""2"" cellpadding=""0"">"
  loc_B52B80: PopAdLdVar
  loc_B52B81: FLdPr Me
  loc_B52B84: MemLdRfVar from_stack_1.global_60
  loc_B52B87: LdPrVar
  loc_B52B89: LateMemCall
  loc_B52B8F: LitVarStr var_9C, "       <caption class=""Difuntos""><strong>Detalle de Difuntos a Cargo</strong></caption>"
  loc_B52B94: PopAdLdVar
  loc_B52B95: FLdPr Me
  loc_B52B98: MemLdRfVar from_stack_1.global_60
  loc_B52B9B: LdPrVar
  loc_B52B9D: LateMemCall
  loc_B52BA3: LitVarStr var_9C, "        <tr class=""EncabezadoDifuntos"" align=""center"">"
  loc_B52BA8: PopAdLdVar
  loc_B52BA9: FLdPr Me
  loc_B52BAC: MemLdRfVar from_stack_1.global_60
  loc_B52BAF: LdPrVar
  loc_B52BB1: LateMemCall
  loc_B52BB7: LitVarStr var_9C, "          <td>Fallecido</td>"
  loc_B52BBC: PopAdLdVar
  loc_B52BBD: FLdPr Me
  loc_B52BC0: MemLdRfVar from_stack_1.global_60
  loc_B52BC3: LdPrVar
  loc_B52BC5: LateMemCall
  loc_B52BCB: LitVarStr var_9C, "          <td>Fecha</td>"
  loc_B52BD0: PopAdLdVar
  loc_B52BD1: FLdPr Me
  loc_B52BD4: MemLdRfVar from_stack_1.global_60
  loc_B52BD7: LdPrVar
  loc_B52BD9: LateMemCall
  loc_B52BDF: LitVarStr var_9C, "        </tr>"
  loc_B52BE4: PopAdLdVar
  loc_B52BE5: FLdPr Me
  loc_B52BE8: MemLdRfVar from_stack_1.global_60
  loc_B52BEB: LdPrVar
  loc_B52BED: LateMemCall
  loc_B52BF3: LitI2_Byte 1
  loc_B52BF5: FLdPr Me
  loc_B52BF8: MemLdRfVar from_stack_1.global_100
  loc_B52BFB: FMemLdR4 var_8C(112)
  loc_B52C00: LitI2_Byte 1
  loc_B52C02: FnUBound
  loc_B52C04: CI2I4
  loc_B52C05: ForI2 var_B0
  loc_B52C0B: FLdPr Me
  loc_B52C0E: MemLdI2 global_100
  loc_B52C11: CI4UI1
  loc_B52C12: FMemLdR4 var_8C(112)
  loc_B52C17: AryLock
  loc_B52C1A: Ary1LdRf
  loc_B52C1B: FStR4 var_B8
  loc_B52C1E: LitVarStr var_9C, "        <tr align=""right"">"
  loc_B52C23: PopAdLdVar
  loc_B52C24: FLdPr Me
  loc_B52C27: MemLdRfVar from_stack_1.global_60
  loc_B52C2A: LdPrVar
  loc_B52C2C: LateMemCall
  loc_B52C32: LitStr "Difuntos"
  loc_B52C35: LitI2_Byte 0
  loc_B52C37: LitI2_Byte 0
  loc_B52C39: LitI2_Byte 0
  loc_B52C3B: LitStr "left"
  loc_B52C3E: FMemLdR4 var_B8(0)
  loc_B52C43: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B52C48: CVarStr var_C8
  loc_B52C4B: PopAdLdVar
  loc_B52C4C: FLdPr Me
  loc_B52C4F: MemLdRfVar from_stack_1.global_60
  loc_B52C52: LdPrVar
  loc_B52C54: LateMemCall
  loc_B52C5A: FFree1Var var_C8 = ""
  loc_B52C5D: LitStr "Difuntos"
  loc_B52C60: LitI2_Byte 0
  loc_B52C62: LitI2_Byte 0
  loc_B52C64: LitI2_Byte 0
  loc_B52C66: LitStr "center"
  loc_B52C69: FMemLdR4 var_B8(4)
  loc_B52C6E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B52C73: CVarStr var_C8
  loc_B52C76: PopAdLdVar
  loc_B52C77: FLdPr Me
  loc_B52C7A: MemLdRfVar from_stack_1.global_60
  loc_B52C7D: LdPrVar
  loc_B52C7F: LateMemCall
  loc_B52C85: FFree1Var var_C8 = ""
  loc_B52C88: LitVarStr var_9C, "        </tr>"
  loc_B52C8D: PopAdLdVar
  loc_B52C8E: FLdPr Me
  loc_B52C91: MemLdRfVar from_stack_1.global_60
  loc_B52C94: LdPrVar
  loc_B52C96: LateMemCall
  loc_B52C9C: LitI4 0
  loc_B52CA1: FStR4 var_B8
  loc_B52CA4: AryUnlock
  loc_B52CA7: FLdPr Me
  loc_B52CAA: MemLdRfVar from_stack_1.global_100
  loc_B52CAD: NextI2 var_B0, loc_B52C0B
  loc_B52CB2: LitVarStr var_9C, "      </table>"
  loc_B52CB7: PopAdLdVar
  loc_B52CB8: FLdPr Me
  loc_B52CBB: MemLdRfVar from_stack_1.global_60
  loc_B52CBE: LdPrVar
  loc_B52CC0: LateMemCall
  loc_B52CC6: LitVarStr var_9C, "      <hr>"
  loc_B52CCB: PopAdLdVar
  loc_B52CCC: FLdPr Me
  loc_B52CCF: MemLdRfVar from_stack_1.global_60
  loc_B52CD2: LdPrVar
  loc_B52CD4: LateMemCall
  loc_B52CDA: LitVarStr var_9C, "      <p>ENTIDADES AUTORIZADAS PARA EL COBRO:<br>"
  loc_B52CDF: PopAdLdVar
  loc_B52CE0: FLdPr Me
  loc_B52CE3: MemLdRfVar from_stack_1.global_60
  loc_B52CE6: LdPrVar
  loc_B52CE8: LateMemCall
  loc_B52CEE: LitVarStr var_9C, "        Bancos: Supervielle/Macro/Credicoop/Nación<br>"
  loc_B52CF3: PopAdLdVar
  loc_B52CF4: FLdPr Me
  loc_B52CF7: MemLdRfVar from_stack_1.global_60
  loc_B52CFA: LdPrVar
  loc_B52CFC: LateMemCall
  loc_B52D02: LitVarStr var_9C, "        Rapipago - Montemar C&iacute;a. Fiananc. - Pago F&aacute;cil<br>"
  loc_B52D07: PopAdLdVar
  loc_B52D08: FLdPr Me
  loc_B52D0B: MemLdRfVar from_stack_1.global_60
  loc_B52D0E: LdPrVar
  loc_B52D10: LateMemCall
  loc_B52D16: LitVarStr var_9C, "        Pague en www.pagomiscuentas.com o ingresando a Banelco en pagomiscuentas.com.ar.<br>"
  loc_B52D1B: PopAdLdVar
  loc_B52D1C: FLdPr Me
  loc_B52D1F: MemLdRfVar from_stack_1.global_60
  loc_B52D22: LdPrVar
  loc_B52D24: LateMemCall
  loc_B52D2A: LitVarStr var_9C, "        Link Pagos: Pague ingresando a www.linkpagos.com.ar desde un cajero LINK, las 24hs todos los d&iacute;as del a&ntilde;o.<br>"
  loc_B52D2F: PopAdLdVar
  loc_B52D30: FLdPr Me
  loc_B52D33: MemLdRfVar from_stack_1.global_60
  loc_B52D36: LdPrVar
  loc_B52D38: LateMemCall
  loc_B52D3E: LitVarStr var_9C, "        Puede pagar con E-pagos mediante la página www.guaymallen.gob.ar opción rentas/Impresión boletos online y/o pago electrónico"
  loc_B52D43: PopAdLdVar
  loc_B52D44: FLdPr Me
  loc_B52D47: MemLdRfVar from_stack_1.global_60
  loc_B52D4A: LdPrVar
  loc_B52D4C: LateMemCall
  loc_B52D52: LitVarStr var_9C, "      </p>"
  loc_B52D57: PopAdLdVar
  loc_B52D58: FLdPr Me
  loc_B52D5B: MemLdRfVar from_stack_1.global_60
  loc_B52D5E: LdPrVar
  loc_B52D60: LateMemCall
  loc_B52D66: LitVarStr var_9C, "    </td>"
  loc_B52D6B: PopAdLdVar
  loc_B52D6C: FLdPr Me
  loc_B52D6F: MemLdRfVar from_stack_1.global_60
  loc_B52D72: LdPrVar
  loc_B52D74: LateMemCall
  loc_B52D7A: LitVarStr var_9C, "  </tr>"
  loc_B52D7F: PopAdLdVar
  loc_B52D80: FLdPr Me
  loc_B52D83: MemLdRfVar from_stack_1.global_60
  loc_B52D86: LdPrVar
  loc_B52D88: LateMemCall
  loc_B52D8E: LitVarStr var_9C, "  </table>"
  loc_B52D93: PopAdLdVar
  loc_B52D94: FLdPr Me
  loc_B52D97: MemLdRfVar from_stack_1.global_60
  loc_B52D9A: LdPrVar
  loc_B52D9C: LateMemCall
  loc_B52DA2: LitVarStr var_9C, "  </td>"
  loc_B52DA7: PopAdLdVar
  loc_B52DA8: FLdPr Me
  loc_B52DAB: MemLdRfVar from_stack_1.global_60
  loc_B52DAE: LdPrVar
  loc_B52DB0: LateMemCall
  loc_B52DB6: LitVarStr var_9C, "  </tr>"
  loc_B52DBB: PopAdLdVar
  loc_B52DBC: FLdPr Me
  loc_B52DBF: MemLdRfVar from_stack_1.global_60
  loc_B52DC2: LdPrVar
  loc_B52DC4: LateMemCall
  loc_B52DCA: LitVarStr var_9C, "</table>"
  loc_B52DCF: PopAdLdVar
  loc_B52DD0: FLdPr Me
  loc_B52DD3: MemLdRfVar from_stack_1.global_60
  loc_B52DD6: LdPrVar
  loc_B52DD8: LateMemCall
  loc_B52DDE: LitI4 0
  loc_B52DE3: FStR4 var_8C
  loc_B52DE6: AryUnlock
  loc_B52DE9: ExitProcHresult
End Function

Private Function Proc_199_26_BA451C() 'BA451C
  'Data Table: 4BADEC
  loc_BA3F0C: LitVarStr var_94, "<table align=""center"" height=""500"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_BA3F11: PopAdLdVar
  loc_BA3F12: FLdPr Me
  loc_BA3F15: MemLdRfVar from_stack_1.global_60
  loc_BA3F18: LdPrVar
  loc_BA3F1A: LateMemCall
  loc_BA3F20: FLdPr Me
  loc_BA3F23: MemLdStr global_96
  loc_BA3F26: FLdPr Me
  loc_BA3F29: MemLdStr global_92
  loc_BA3F2C: AryLock
  loc_BA3F2F: Ary1LdRf
  loc_BA3F30: FStR4 var_AC
  loc_BA3F33: LitI2_Byte 1
  loc_BA3F35: CUI1I2
  loc_BA3F37: FLdPr Me
  loc_BA3F3A: MemLdRfVar from_stack_1.global_102
  loc_BA3F3D: FMemLdR4 var_AC(116)
  loc_BA3F42: LitI2_Byte 1
  loc_BA3F44: FnUBound
  loc_BA3F46: CUI1I4
  loc_BA3F48: ForUI1 var_B0
  loc_BA3F4E: LitVarStr var_94, "  <tr>"
  loc_BA3F53: PopAdLdVar
  loc_BA3F54: FLdPr Me
  loc_BA3F57: MemLdRfVar from_stack_1.global_60
  loc_BA3F5A: LdPrVar
  loc_BA3F5C: LateMemCall
  loc_BA3F62: LitVarStr var_94, "    <td valign=""top"" height=""111"">"
  loc_BA3F67: PopAdLdVar
  loc_BA3F68: FLdPr Me
  loc_BA3F6B: MemLdRfVar from_stack_1.global_60
  loc_BA3F6E: LdPrVar
  loc_BA3F70: LateMemCall
  loc_BA3F76: FLdPr Me
  loc_BA3F79: MemLdUI1 global_102
  loc_BA3F7D: CI4UI1
  loc_BA3F7E: FMemLdR4 var_AC(116)
  loc_BA3F83: Ary1LdPr
  loc_BA3F84: MemLdI2 global_0
  loc_BA3F87: BranchF loc_BA3FA1
  loc_BA3F8A: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BA3F8F: PopAdLdVar
  loc_BA3F90: FLdPr Me
  loc_BA3F93: MemLdRfVar from_stack_1.global_60
  loc_BA3F96: LdPrVar
  loc_BA3F98: LateMemCall
  loc_BA3F9E: Branch loc_BA3FC9
  loc_BA3FA1: LitVarStr var_94, "    <br>"
  loc_BA3FA6: PopAdLdVar
  loc_BA3FA7: FLdPr Me
  loc_BA3FAA: MemLdRfVar from_stack_1.global_60
  loc_BA3FAD: LdPrVar
  loc_BA3FAF: LateMemCall
  loc_BA3FB5: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" style=""border:2px solid black"" >"
  loc_BA3FBA: PopAdLdVar
  loc_BA3FBB: FLdPr Me
  loc_BA3FBE: MemLdRfVar from_stack_1.global_60
  loc_BA3FC1: LdPrVar
  loc_BA3FC3: LateMemCall
  loc_BA3FC9: FLdPr Me
  loc_BA3FCC: MemLdUI1 global_102
  loc_BA3FD0: CI4UI1
  loc_BA3FD1: FMemLdR4 var_AC(116)
  loc_BA3FD6: AryLock
  loc_BA3FD9: Ary1LdRf
  loc_BA3FDA: FStR4 var_B8
  loc_BA3FDD: LitVarStr var_94, "      <tr align=""center"">"
  loc_BA3FE2: PopAdLdVar
  loc_BA3FE3: FLdPr Me
  loc_BA3FE6: MemLdRfVar from_stack_1.global_60
  loc_BA3FE9: LdPrVar
  loc_BA3FEB: LateMemCall
  loc_BA3FF1: LitVarStr var_94, "        <td width=""46" & Chr(37) & """ colspan=""3"" rowspan=""2"" class=""NombreMunicipio NoBordeAbajo""><strong>DERECHO ANUAL</strong></td>"
  loc_BA3FF6: PopAdLdVar
  loc_BA3FF7: FLdPr Me
  loc_BA3FFA: MemLdRfVar from_stack_1.global_60
  loc_BA3FFD: LdPrVar
  loc_BA3FFF: LateMemCall
  loc_BA4005: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">DERECHOS</td>"
  loc_BA400A: PopAdLdVar
  loc_BA400B: FLdPr Me
  loc_BA400E: MemLdRfVar from_stack_1.global_60
  loc_BA4011: LdPrVar
  loc_BA4013: LateMemCall
  loc_BA4019: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">DESCUENTOS</td>"
  loc_BA401E: PopAdLdVar
  loc_BA401F: FLdPr Me
  loc_BA4022: MemLdRfVar from_stack_1.global_60
  loc_BA4025: LdPrVar
  loc_BA4027: LateMemCall
  loc_BA402D: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">RECARGO</td>"
  loc_BA4032: PopAdLdVar
  loc_BA4033: FLdPr Me
  loc_BA4036: MemLdRfVar from_stack_1.global_60
  loc_BA4039: LdPrVar
  loc_BA403B: LateMemCall
  loc_BA4041: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">C. EMISI&Oacute;N</td>"
  loc_BA4046: PopAdLdVar
  loc_BA4047: FLdPr Me
  loc_BA404A: MemLdRfVar from_stack_1.global_60
  loc_BA404D: LdPrVar
  loc_BA404F: LateMemCall
  loc_BA4055: LitVarStr var_94, "        <td class=""Encabezado"">TOTAL A PAGAR</td>"
  loc_BA405A: PopAdLdVar
  loc_BA405B: FLdPr Me
  loc_BA405E: MemLdRfVar from_stack_1.global_60
  loc_BA4061: LdPrVar
  loc_BA4063: LateMemCall
  loc_BA4069: LitVarStr var_94, "      </tr>"
  loc_BA406E: PopAdLdVar
  loc_BA406F: FLdPr Me
  loc_BA4072: MemLdRfVar from_stack_1.global_60
  loc_BA4075: LdPrVar
  loc_BA4077: LateMemCall
  loc_BA407D: LitVarStr var_94, "      <tr class=""NormalBloqueFin"" valign=""top"" align=""right"">"
  loc_BA4082: PopAdLdVar
  loc_BA4083: FLdPr Me
  loc_BA4086: MemLdRfVar from_stack_1.global_60
  loc_BA4089: LdPrVar
  loc_BA408B: LateMemCall
  loc_BA4091: LitStr vbNullString
  loc_BA4094: LitI2_Byte 0
  loc_BA4096: LitI2_Byte 0
  loc_BA4098: LitI2_Byte 0
  loc_BA409A: LitI4 0
  loc_BA409F: FMemLdR4 var_B8(28)
  loc_BA40A4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA40A9: CVarStr var_C8
  loc_BA40AC: PopAdLdVar
  loc_BA40AD: FLdPr Me
  loc_BA40B0: MemLdRfVar from_stack_1.global_60
  loc_BA40B3: LdPrVar
  loc_BA40B5: LateMemCall
  loc_BA40BB: FFree1Var var_C8 = ""
  loc_BA40BE: LitStr vbNullString
  loc_BA40C1: LitI2_Byte 0
  loc_BA40C3: LitI2_Byte 0
  loc_BA40C5: LitI2_Byte 0
  loc_BA40C7: LitI4 0
  loc_BA40CC: FMemLdR4 var_B8(32)
  loc_BA40D1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA40D6: CVarStr var_C8
  loc_BA40D9: PopAdLdVar
  loc_BA40DA: FLdPr Me
  loc_BA40DD: MemLdRfVar from_stack_1.global_60
  loc_BA40E0: LdPrVar
  loc_BA40E2: LateMemCall
  loc_BA40E8: FFree1Var var_C8 = ""
  loc_BA40EB: LitStr vbNullString
  loc_BA40EE: LitI2_Byte 0
  loc_BA40F0: LitI2_Byte 0
  loc_BA40F2: LitI2_Byte 0
  loc_BA40F4: LitI4 0
  loc_BA40F9: FMemLdR4 var_B8(36)
  loc_BA40FE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA4103: CVarStr var_C8
  loc_BA4106: PopAdLdVar
  loc_BA4107: FLdPr Me
  loc_BA410A: MemLdRfVar from_stack_1.global_60
  loc_BA410D: LdPrVar
  loc_BA410F: LateMemCall
  loc_BA4115: FFree1Var var_C8 = ""
  loc_BA4118: LitStr vbNullString
  loc_BA411B: LitI2_Byte 0
  loc_BA411D: LitI2_Byte 0
  loc_BA411F: LitI2_Byte 0
  loc_BA4121: LitI4 0
  loc_BA4126: FMemLdR4 var_B8(40)
  loc_BA412B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA4130: CVarStr var_C8
  loc_BA4133: PopAdLdVar
  loc_BA4134: FLdPr Me
  loc_BA4137: MemLdRfVar from_stack_1.global_60
  loc_BA413A: LdPrVar
  loc_BA413C: LateMemCall
  loc_BA4142: FFree1Var var_C8 = ""
  loc_BA4145: LitStr "Totales"
  loc_BA4148: LitI2_Byte 0
  loc_BA414A: LitI2_Byte 0
  loc_BA414C: LitI2_Byte 0
  loc_BA414E: LitI4 0
  loc_BA4153: FMemLdR4 var_B8(44)
  loc_BA4158: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA415D: CVarStr var_C8
  loc_BA4160: PopAdLdVar
  loc_BA4161: FLdPr Me
  loc_BA4164: MemLdRfVar from_stack_1.global_60
  loc_BA4167: LdPrVar
  loc_BA4169: LateMemCall
  loc_BA416F: FFree1Var var_C8 = ""
  loc_BA4172: LitVarStr var_94, "      </tr>"
  loc_BA4177: PopAdLdVar
  loc_BA4178: FLdPr Me
  loc_BA417B: MemLdRfVar from_stack_1.global_60
  loc_BA417E: LdPrVar
  loc_BA4180: LateMemCall
  loc_BA4186: LitVarStr var_94, "      <tr align=""left"">"
  loc_BA418B: PopAdLdVar
  loc_BA418C: FLdPr Me
  loc_BA418F: MemLdRfVar from_stack_1.global_60
  loc_BA4192: LdPrVar
  loc_BA4194: LateMemCall
  loc_BA419A: LitVarStr var_94, "          <td height=""42"" colspan=""3"" align=""center"" class=""Normal NoBordeArriba"" style=""border-right:none; border-bottom:none"">"
  loc_BA419F: PopAdLdVar
  loc_BA41A0: FLdPr Me
  loc_BA41A3: MemLdRfVar from_stack_1.global_60
  loc_BA41A6: LdPrVar
  loc_BA41A8: LateMemCall
  loc_BA41AE: LitStr "                  <strong class=""NombreMunicipio"">"
  loc_BA41B1: FLdRfVar var_CA
  loc_BA41B4: FLdPr Me
  loc_BA41B7: MemLdRfVar from_stack_1.global_80
  loc_BA41BA: NewIfNullPr clsliquidacion
  loc_BA41BD: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BA41C2: FLdI2 var_CA
  loc_BA41C5: CStrUI1
  loc_BA41C7: FStStrNoPop var_D0
  loc_BA41CA: ConcatStr
  loc_BA41CB: FStStrNoPop var_D4
  loc_BA41CE: LitStr "</strong>"
  loc_BA41D1: ConcatStr
  loc_BA41D2: CVarStr var_C8
  loc_BA41D5: PopAdLdVar
  loc_BA41D6: FLdPr Me
  loc_BA41D9: MemLdRfVar from_stack_1.global_60
  loc_BA41DC: LdPrVar
  loc_BA41DE: LateMemCall
  loc_BA41E4: FFreeStr var_D0 = ""
  loc_BA41EB: FFree1Var var_C8 = ""
  loc_BA41EE: LitVarStr var_94, "            </td>"
  loc_BA41F3: PopAdLdVar
  loc_BA41F4: FLdPr Me
  loc_BA41F7: MemLdRfVar from_stack_1.global_60
  loc_BA41FA: LdPrVar
  loc_BA41FC: LateMemCall
  loc_BA4202: LitVarStr var_94, "          <td align=""center"" colspan=""9"" rowspan=""2"" class=""Normal"" style=""border-left:none"">"
  loc_BA4207: PopAdLdVar
  loc_BA4208: FLdPr Me
  loc_BA420B: MemLdRfVar from_stack_1.global_60
  loc_BA420E: LdPrVar
  loc_BA4210: LateMemCall
  loc_BA4216: LitVarStr var_94, "            <table align=""center"">"
  loc_BA421B: PopAdLdVar
  loc_BA421C: FLdPr Me
  loc_BA421F: MemLdRfVar from_stack_1.global_60
  loc_BA4222: LdPrVar
  loc_BA4224: LateMemCall
  loc_BA422A: LitStr "              <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_BA422D: LitI4 1
  loc_BA4232: FMemLdR4 var_B8(20)
  loc_BA4237: Ary1LdI4
  loc_BA4238: ConcatStr
  loc_BA4239: FStStrNoPop var_D0
  loc_BA423C: LitStr "</td></tr>"
  loc_BA423F: ConcatStr
  loc_BA4240: CVarStr var_C8
  loc_BA4243: PopAdLdVar
  loc_BA4244: FLdPr Me
  loc_BA4247: MemLdRfVar from_stack_1.global_60
  loc_BA424A: LdPrVar
  loc_BA424C: LateMemCall
  loc_BA4252: FFree1Str var_D0
  loc_BA4255: FFree1Var var_C8 = ""
  loc_BA4258: LitStr "              <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BA425B: LitI4 0
  loc_BA4260: FMemLdR4 var_B8(20)
  loc_BA4265: Ary1LdI4
  loc_BA4266: ConcatStr
  loc_BA4267: FStStrNoPop var_D0
  loc_BA426A: LitStr "</td></tr>"
  loc_BA426D: ConcatStr
  loc_BA426E: CVarStr var_C8
  loc_BA4271: PopAdLdVar
  loc_BA4272: FLdPr Me
  loc_BA4275: MemLdRfVar from_stack_1.global_60
  loc_BA4278: LdPrVar
  loc_BA427A: LateMemCall
  loc_BA4280: FFree1Str var_D0
  loc_BA4283: FFree1Var var_C8 = ""
  loc_BA4286: LitVarStr var_94, "            </table>"
  loc_BA428B: PopAdLdVar
  loc_BA428C: FLdPr Me
  loc_BA428F: MemLdRfVar from_stack_1.global_60
  loc_BA4292: LdPrVar
  loc_BA4294: LateMemCall
  loc_BA429A: LitVarStr var_94, "          </td>"
  loc_BA429F: PopAdLdVar
  loc_BA42A0: FLdPr Me
  loc_BA42A3: MemLdRfVar from_stack_1.global_60
  loc_BA42A6: LdPrVar
  loc_BA42A8: LateMemCall
  loc_BA42AE: LitVarStr var_94, "      </tr>"
  loc_BA42B3: PopAdLdVar
  loc_BA42B4: FLdPr Me
  loc_BA42B7: MemLdRfVar from_stack_1.global_60
  loc_BA42BA: LdPrVar
  loc_BA42BC: LateMemCall
  loc_BA42C2: LitVarStr var_94, "      <tr align=""left"">"
  loc_BA42C7: PopAdLdVar
  loc_BA42C8: FLdPr Me
  loc_BA42CB: MemLdRfVar from_stack_1.global_60
  loc_BA42CE: LdPrVar
  loc_BA42D0: LateMemCall
  loc_BA42D6: LitVarStr var_94, "        <td style=""border-right:none; border-top:none"" colspan=""3"" class=""Normal"" valign=""bottom"">"
  loc_BA42DB: PopAdLdVar
  loc_BA42DC: FLdPr Me
  loc_BA42DF: MemLdRfVar from_stack_1.global_60
  loc_BA42E2: LdPrVar
  loc_BA42E4: LateMemCall
  loc_BA42EA: LitVarStr var_94, "          <table border=""1"" cellpadding=""0"" cellspacing=""0"" width=""100" & Chr(37) & """>"
  loc_BA42EF: PopAdLdVar
  loc_BA42F0: FLdPr Me
  loc_BA42F3: MemLdRfVar from_stack_1.global_60
  loc_BA42F6: LdPrVar
  loc_BA42F8: LateMemCall
  loc_BA42FE: LitVarStr var_94, "              <tr align=""center"" class=""Encabezado"">"
  loc_BA4303: PopAdLdVar
  loc_BA4304: FLdPr Me
  loc_BA4307: MemLdRfVar from_stack_1.global_60
  loc_BA430A: LdPrVar
  loc_BA430C: LateMemCall
  loc_BA4312: FMemLdI2 var_B8(0)
  loc_BA4317: BranchF loc_BA43E9
  loc_BA431A: LitVarStr var_94, "                <td>PERIODO</td>"
  loc_BA431F: PopAdLdVar
  loc_BA4320: FLdPr Me
  loc_BA4323: MemLdRfVar from_stack_1.global_60
  loc_BA4326: LdPrVar
  loc_BA4328: LateMemCall
  loc_BA432E: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BA4333: PopAdLdVar
  loc_BA4334: FLdPr Me
  loc_BA4337: MemLdRfVar from_stack_1.global_60
  loc_BA433A: LdPrVar
  loc_BA433C: LateMemCall
  loc_BA4342: LitVarStr var_94, "              </tr>"
  loc_BA4347: PopAdLdVar
  loc_BA4348: FLdPr Me
  loc_BA434B: MemLdRfVar from_stack_1.global_60
  loc_BA434E: LdPrVar
  loc_BA4350: LateMemCall
  loc_BA4356: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BA435B: PopAdLdVar
  loc_BA435C: FLdPr Me
  loc_BA435F: MemLdRfVar from_stack_1.global_60
  loc_BA4362: LdPrVar
  loc_BA4364: LateMemCall
  loc_BA436A: LitStr "                <td>"
  loc_BA436D: FMemLdR4 var_B8(4)
  loc_BA4372: ConcatStr
  loc_BA4373: FStStrNoPop var_D0
  loc_BA4376: LitStr "/"
  loc_BA4379: ConcatStr
  loc_BA437A: FStStrNoPop var_D4
  loc_BA437D: FLdRfVar var_CA
  loc_BA4380: FLdPr Me
  loc_BA4383: MemLdRfVar from_stack_1.global_80
  loc_BA4386: NewIfNullPr clsliquidacion
  loc_BA4389: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BA438E: FLdI2 var_CA
  loc_BA4391: CStrUI1
  loc_BA4393: FStStrNoPop var_D8
  loc_BA4396: ConcatStr
  loc_BA4397: FStStrNoPop var_DC
  loc_BA439A: LitStr "</td>"
  loc_BA439D: ConcatStr
  loc_BA439E: CVarStr var_C8
  loc_BA43A1: PopAdLdVar
  loc_BA43A2: FLdPr Me
  loc_BA43A5: MemLdRfVar from_stack_1.global_60
  loc_BA43A8: LdPrVar
  loc_BA43AA: LateMemCall
  loc_BA43B0: FFreeStr var_D0 = "": var_D4 = "": var_D8 = ""
  loc_BA43BB: FFree1Var var_C8 = ""
  loc_BA43BE: LitStr "                <td>"
  loc_BA43C1: FMemLdR4 var_B8(16)
  loc_BA43C6: ConcatStr
  loc_BA43C7: FStStrNoPop var_D0
  loc_BA43CA: LitStr "</td>"
  loc_BA43CD: ConcatStr
  loc_BA43CE: CVarStr var_C8
  loc_BA43D1: PopAdLdVar
  loc_BA43D2: FLdPr Me
  loc_BA43D5: MemLdRfVar from_stack_1.global_60
  loc_BA43D8: LdPrVar
  loc_BA43DA: LateMemCall
  loc_BA43E0: FFree1Str var_D0
  loc_BA43E3: FFree1Var var_C8 = ""
  loc_BA43E6: Branch loc_BA444D
  loc_BA43E9: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BA43EE: PopAdLdVar
  loc_BA43EF: FLdPr Me
  loc_BA43F2: MemLdRfVar from_stack_1.global_60
  loc_BA43F5: LdPrVar
  loc_BA43F7: LateMemCall
  loc_BA43FD: LitVarStr var_94, "              </tr>"
  loc_BA4402: PopAdLdVar
  loc_BA4403: FLdPr Me
  loc_BA4406: MemLdRfVar from_stack_1.global_60
  loc_BA4409: LdPrVar
  loc_BA440B: LateMemCall
  loc_BA4411: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BA4416: PopAdLdVar
  loc_BA4417: FLdPr Me
  loc_BA441A: MemLdRfVar from_stack_1.global_60
  loc_BA441D: LdPrVar
  loc_BA441F: LateMemCall
  loc_BA4425: LitStr "                <td>"
  loc_BA4428: FMemLdR4 var_B8(16)
  loc_BA442D: ConcatStr
  loc_BA442E: FStStrNoPop var_D0
  loc_BA4431: LitStr "</td>"
  loc_BA4434: ConcatStr
  loc_BA4435: CVarStr var_C8
  loc_BA4438: PopAdLdVar
  loc_BA4439: FLdPr Me
  loc_BA443C: MemLdRfVar from_stack_1.global_60
  loc_BA443F: LdPrVar
  loc_BA4441: LateMemCall
  loc_BA4447: FFree1Str var_D0
  loc_BA444A: FFree1Var var_C8 = ""
  loc_BA444D: LitVarStr var_94, "              </tr>"
  loc_BA4452: PopAdLdVar
  loc_BA4453: FLdPr Me
  loc_BA4456: MemLdRfVar from_stack_1.global_60
  loc_BA4459: LdPrVar
  loc_BA445B: LateMemCall
  loc_BA4461: LitVarStr var_94, "          </table>"
  loc_BA4466: PopAdLdVar
  loc_BA4467: FLdPr Me
  loc_BA446A: MemLdRfVar from_stack_1.global_60
  loc_BA446D: LdPrVar
  loc_BA446F: LateMemCall
  loc_BA4475: LitVarStr var_94, "        </td>"
  loc_BA447A: PopAdLdVar
  loc_BA447B: FLdPr Me
  loc_BA447E: MemLdRfVar from_stack_1.global_60
  loc_BA4481: LdPrVar
  loc_BA4483: LateMemCall
  loc_BA4489: LitVarStr var_94, "      </tr>"
  loc_BA448E: PopAdLdVar
  loc_BA448F: FLdPr Me
  loc_BA4492: MemLdRfVar from_stack_1.global_60
  loc_BA4495: LdPrVar
  loc_BA4497: LateMemCall
  loc_BA449D: LitVarStr var_94, "    </table>"
  loc_BA44A2: PopAdLdVar
  loc_BA44A3: FLdPr Me
  loc_BA44A6: MemLdRfVar from_stack_1.global_60
  loc_BA44A9: LdPrVar
  loc_BA44AB: LateMemCall
  loc_BA44B1: FMemLdI2 var_B8(0)
  loc_BA44B6: NotI4
  loc_BA44B7: BranchF loc_BA44CE
  loc_BA44BA: LitVarStr var_94, "    <br>"
  loc_BA44BF: PopAdLdVar
  loc_BA44C0: FLdPr Me
  loc_BA44C3: MemLdRfVar from_stack_1.global_60
  loc_BA44C6: LdPrVar
  loc_BA44C8: LateMemCall
  loc_BA44CE: LitVarStr var_94, "  </td>"
  loc_BA44D3: PopAdLdVar
  loc_BA44D4: FLdPr Me
  loc_BA44D7: MemLdRfVar from_stack_1.global_60
  loc_BA44DA: LdPrVar
  loc_BA44DC: LateMemCall
  loc_BA44E2: LitVarStr var_94, "  </tr>"
  loc_BA44E7: PopAdLdVar
  loc_BA44E8: FLdPr Me
  loc_BA44EB: MemLdRfVar from_stack_1.global_60
  loc_BA44EE: LdPrVar
  loc_BA44F0: LateMemCall
  loc_BA44F6: LitI4 0
  loc_BA44FB: FStR4 var_B8
  loc_BA44FE: AryUnlock
  loc_BA4501: FLdPr Me
  loc_BA4504: MemLdRfVar from_stack_1.global_102
  loc_BA4507: NextUI1
  loc_BA450D: LitI4 0
  loc_BA4512: FStR4 var_AC
  loc_BA4515: AryUnlock
  loc_BA4518: ExitProcHresult
End Function

Private Function Proc_199_27_B02D38() 'B02D38
  'Data Table: 4BADEC
  loc_B02B44: FLdPr Me
  loc_B02B47: MemLdStr global_96
  loc_B02B4A: FLdPr Me
  loc_B02B4D: MemLdStr global_92
  loc_B02B50: AryLock
  loc_B02B53: Ary1LdRf
  loc_B02B54: FStR4 var_8C
  loc_B02B57: LitVarStr var_9C, "  <tr><td><br></td></tr>"
  loc_B02B5C: PopAdLdVar
  loc_B02B5D: FLdPr Me
  loc_B02B60: MemLdRfVar from_stack_1.global_60
  loc_B02B63: LdPrVar
  loc_B02B65: LateMemCall
  loc_B02B6B: LitVarStr var_9C, "  <tr>"
  loc_B02B70: PopAdLdVar
  loc_B02B71: FLdPr Me
  loc_B02B74: MemLdRfVar from_stack_1.global_60
  loc_B02B77: LdPrVar
  loc_B02B79: LateMemCall
  loc_B02B7F: LitVarStr var_9C, "    <td valign=""bottom"">"
  loc_B02B84: PopAdLdVar
  loc_B02B85: FLdPr Me
  loc_B02B88: MemLdRfVar from_stack_1.global_60
  loc_B02B8B: LdPrVar
  loc_B02B8D: LateMemCall
  loc_B02B93: LitVarStr var_9C, "     <table align=""center"" height=""120"" width=""99" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0""><tr>"
  loc_B02B98: PopAdLdVar
  loc_B02B99: FLdPr Me
  loc_B02B9C: MemLdRfVar from_stack_1.global_60
  loc_B02B9F: LdPrVar
  loc_B02BA1: LateMemCall
  loc_B02BA7: LitVarStr var_9C, "        <td height=""100" & Chr(37) & """ class=""NormalAbajo MargIzq"">"
  loc_B02BAC: PopAdLdVar
  loc_B02BAD: FLdPr Me
  loc_B02BB0: MemLdRfVar from_stack_1.global_60
  loc_B02BB3: LdPrVar
  loc_B02BB5: LateMemCall
  loc_B02BBB: LitVarStr var_9C, "        <img src=""l6.jpg"" width=""184"" height=""92"" class=""MissChild"">"
  loc_B02BC0: PopAdLdVar
  loc_B02BC1: FLdPr Me
  loc_B02BC4: MemLdRfVar from_stack_1.global_60
  loc_B02BC7: LdPrVar
  loc_B02BC9: LateMemCall
  loc_B02BCF: LitVarStr var_9C, "        <p>Estimado Vecino:<br>"
  loc_B02BD4: PopAdLdVar
  loc_B02BD5: FLdPr Me
  loc_B02BD8: MemLdRfVar from_stack_1.global_60
  loc_B02BDB: LdPrVar
  loc_B02BDD: LateMemCall
  loc_B02BE3: LitVarStr var_9C, "        &nbsp;&nbsp;&nbsp<strong>Para informes comunicarse al tel. 4498266 o e-mail defunciones@guaymallen.gob.ar.</strong><br>"
  loc_B02BE8: PopAdLdVar
  loc_B02BE9: FLdPr Me
  loc_B02BEC: MemLdRfVar from_stack_1.global_60
  loc_B02BEF: LdPrVar
  loc_B02BF1: LateMemCall
  loc_B02BF7: LitVarStr var_9C, "        &nbsp;&nbsp;&nbsp<strong>¡REGISTR&Aacute; TU DOMICILIO FISCAL ELECTR&Oacute;NICO! Pod&eacute;s hacerlo al e-mail defunciones@guaymallen.gob.ar.</strong></p>"
  loc_B02BFC: PopAdLdVar
  loc_B02BFD: FLdPr Me
  loc_B02C00: MemLdRfVar from_stack_1.global_60
  loc_B02C03: LdPrVar
  loc_B02C05: LateMemCall
  loc_B02C0B: LitVarStr var_9C, "0"
  loc_B02C10: FStVarCopyObj var_BC
  loc_B02C13: FLdRfVar var_BC
  loc_B02C16: LitI4 6
  loc_B02C1B: FLdRfVar var_CC
  loc_B02C1E: ImpAdCallFPR4  = String(, )
  loc_B02C23: LitVarStr var_EC, "        C&oacute;digo pagomiscuentas.com: <strong>4"
  loc_B02C28: LitI4 1
  loc_B02C2D: LitI4 1
  loc_B02C32: FLdRfVar var_CC
  loc_B02C35: FMemLdRf B0B8
  loc_B02C3A: CVarRef
  loc_B02C3F: FLdRfVar var_DC
  loc_B02C42: ImpAdCallFPR4  = Format(, )
  loc_B02C47: FLdRfVar var_DC
  loc_B02C4A: ConcatVar var_FC
  loc_B02C4E: LitVarStr var_10C, "</strong><br>"
  loc_B02C53: ConcatVar var_11C
  loc_B02C57: PopAdLdVar
  loc_B02C58: FLdPr Me
  loc_B02C5B: MemLdRfVar from_stack_1.global_60
  loc_B02C5E: LdPrVar
  loc_B02C60: LateMemCall
  loc_B02C66: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B02C73: LitVarStr var_9C, "0"
  loc_B02C78: FStVarCopyObj var_BC
  loc_B02C7B: FLdRfVar var_BC
  loc_B02C7E: LitI4 &HC
  loc_B02C83: FLdRfVar var_CC
  loc_B02C86: ImpAdCallFPR4  = String(, )
  loc_B02C8B: LitVarStr var_EC, "        C&oacute;digo RED LINK: <strong>4"
  loc_B02C90: LitI4 1
  loc_B02C95: LitI4 1
  loc_B02C9A: FLdRfVar var_CC
  loc_B02C9D: FMemLdRf B0B8
  loc_B02CA2: CVarRef
  loc_B02CA7: FLdRfVar var_DC
  loc_B02CAA: ImpAdCallFPR4  = Format(, )
  loc_B02CAF: FLdRfVar var_DC
  loc_B02CB2: ConcatVar var_FC
  loc_B02CB6: LitVarStr var_10C, "</strong><br>"
  loc_B02CBB: ConcatVar var_11C
  loc_B02CBF: PopAdLdVar
  loc_B02CC0: FLdPr Me
  loc_B02CC3: MemLdRfVar from_stack_1.global_60
  loc_B02CC6: LdPrVar
  loc_B02CC8: LateMemCall
  loc_B02CCE: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B02CDB: LitVarStr var_9C, "      </td></tr></table>"
  loc_B02CE0: PopAdLdVar
  loc_B02CE1: FLdPr Me
  loc_B02CE4: MemLdRfVar from_stack_1.global_60
  loc_B02CE7: LdPrVar
  loc_B02CE9: LateMemCall
  loc_B02CEF: LitVarStr var_9C, "    </td>"
  loc_B02CF4: PopAdLdVar
  loc_B02CF5: FLdPr Me
  loc_B02CF8: MemLdRfVar from_stack_1.global_60
  loc_B02CFB: LdPrVar
  loc_B02CFD: LateMemCall
  loc_B02D03: LitVarStr var_9C, "  </tr>"
  loc_B02D08: PopAdLdVar
  loc_B02D09: FLdPr Me
  loc_B02D0C: MemLdRfVar from_stack_1.global_60
  loc_B02D0F: LdPrVar
  loc_B02D11: LateMemCall
  loc_B02D17: LitVarStr var_9C, "</table>"
  loc_B02D1C: PopAdLdVar
  loc_B02D1D: FLdPr Me
  loc_B02D20: MemLdRfVar from_stack_1.global_60
  loc_B02D23: LdPrVar
  loc_B02D25: LateMemCall
  loc_B02D2B: LitI4 0
  loc_B02D30: FStR4 var_8C
  loc_B02D33: AryUnlock
  loc_B02D36: ExitProcHresult
End Function

Private Function Proc_199_28_9F5F24() '9F5F24
  'Data Table: 4BADEC
  loc_9F5EF8: LitVarStr var_94, "</body>"
  loc_9F5EFD: PopAdLdVar
  loc_9F5EFE: FLdPr Me
  loc_9F5F01: MemLdRfVar from_stack_1.global_60
  loc_9F5F04: LdPrVar
  loc_9F5F06: LateMemCall
  loc_9F5F0C: LitVarStr var_94, "</html>"
  loc_9F5F11: PopAdLdVar
  loc_9F5F12: FLdPr Me
  loc_9F5F15: MemLdRfVar from_stack_1.global_60
  loc_9F5F18: LdPrVar
  loc_9F5F1A: LateMemCall
  loc_9F5F20: ExitProcHresult
  loc_9F5F21: FLdRfVar var_8C
End Function
