VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form rptControldelCalculodeLiquidaciondeTasasComparacion
  Caption = "Listado de control de liquidación de tasas. Comparación entre un periodo y liquidación seleccionada"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControldelCalculodeLiquidaciondeTasasComparacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11376
  ClientHeight = 8820
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame
    Caption = "Comparar con el Periodo: "
    Left = 120
    Top = 5760
    Width = 10695
    Height = 1335
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
    Begin VB.TextBox PorcentajeTxt
      ForeColor = &HFF0000&
      Left = 6960
      Top = 360
      Width = 1020
      Height = 345
      TabIndex = 13
      MaxLength = 13
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Metros de Frente"
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox PeriLiquTxt
      ForeColor = &HFF0000&
      Left = 1980
      Top = 360
      Width = 735
      Height = 420
      TabIndex = 9
      MaxLength = 4
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
    Begin VB.TextBox BimeLiquTxt
      ForeColor = &HFF0000&
      Left = 3960
      Top = 360
      Width = 375
      Height = 420
      TabIndex = 11
      MaxLength = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      CausesValidation = 0   'False
    End
    Begin MSMask.MaskEdBox CodiConcMsk
      Left = 1980
      Top = 840
      Width = 1455
      Height = 360
      TabIndex = 15
      OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasasComparacion.frx":08CA
    End
    Begin VB.Label Label4
      Caption = "Porcentaje:"
      Left = 5640
      Top = 360
      Width = 1200
      Height = 300
      TabIndex = 12
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
    Begin VB.Label Label1
      Caption = "Concepto:"
      Left = 840
      Top = 840
      Width = 1095
      Height = 300
      TabIndex = 14
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
    Begin VB.Label DetaConcLbl
      Caption = "Label4"
      ForeColor = &HFF0000&
      Left = 3480
      Top = 840
      Width = 6375
      Height = 360
      TabIndex = 16
      DataField = "DecoConc"
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
    Begin VB.Label Label13
      Caption = "Periodo:"
      Left = 1035
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 8
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
    Begin VB.Label Label6
      Caption = "Bimestre:"
      Left = 2880
      Top = 360
      Width = 1005
      Height = 300
      TabIndex = 10
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
  Begin VB.CommandButton cmdNueva
    Caption = "&Nueva búsqueda"
    Left = 9600
    Top = 360
    Width = 1575
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
  Begin VB.Frame Frame4
    Caption = "Cuenta"
    Left = 120
    Top = 4680
    Width = 9495
    Height = 975
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
    Begin MSMask.MaskEdBox CodiInmuDesdeMsk
      Left = 2610
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 4
      OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasasComparacion.frx":096A
    End
    Begin MSMask.MaskEdBox CodiInmuHastaMsk
      Left = 5730
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 6
      OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasasComparacion.frx":0A02
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 4965
      Top = 360
      Width = 705
      Height = 300
      TabIndex = 5
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
    Begin VB.Label Label2
      Caption = "Desde:"
      Left = 1800
      Top = 360
      Width = 765
      Height = 300
      TabIndex = 3
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
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 8568
    Width = 11376
    Height = 252
    TabIndex = 24
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasasComparacion.frx":0A9A
  End
  Begin VB.CommandButton cmdSalir
    Left = 8880
    Top = 7680
    Width = 855
    Height = 735
    TabIndex = 22
    Cancel = -1  'True
    Picture = "rptControldelCalculodeLiquidaciondeTasasComparacion.frx":0B1A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasasComparacion.frx":0D6C
    Left = 10680
    Top = 7680
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4800
    Top = 7200
    Width = 3252
    Height = 1215
    TabIndex = 20
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 25
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 21
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
    Top = 7200
    Width = 4095
    Height = 1215
    TabIndex = 17
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
      TabIndex = 19
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
      TabIndex = 18
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
    Left = 9120
    Top = 7920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 23
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasasComparacion.frx":0DD0
  End
  Begin MSDataGridLib.DataGrid dgdLiquidacion
    Left = 120
    Top = 360
    Width = 9360
    Height = 4275
    TabIndex = 0
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasasComparacion.frx":0E84
  End
End

Attribute VB_Name = "rptControldelCalculodeLiquidaciondeTasasComparacion"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdPrevia_Click() '9C8A58
  'Data Table: 4D4A94
  loc_9C8A40: ILdRf Me
  loc_9C8A43: CastAd
  loc_9C8A46: FStAdFunc var_88
  loc_9C8A49: FLdRfVar var_88
  loc_9C8A4C: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9C8A51: FFree1Ad var_88
  loc_9C8A54: ExitProcHresult
  loc_9C8A55: NewIfNullPr Me
End Sub

Private Sub cmdPdf_Click() '9DFA6C
  'Data Table: 4D4A94
  loc_9DFA50: LitI2_Byte 0
  loc_9DFA52: PopTmpLdAd2 var_8A
  loc_9DFA55: ILdRf Me
  loc_9DFA58: CastAd
  loc_9DFA5B: FStAdFunc var_88
  loc_9DFA5E: FLdRfVar var_88
  loc_9DFA61: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DFA66: FFree1Ad var_88
  loc_9DFA69: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DFD3C
  'Data Table: 4D4A94
  loc_9DFD20: LitI2_Byte &HFF
  loc_9DFD22: LitI2_Byte 0
  loc_9DFD24: ILdRf Me
  loc_9DFD27: CastAd
  loc_9DFD2A: FStAdFunc var_88
  loc_9DFD2D: FLdRfVar var_88
  loc_9DFD30: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DFD35: FFree1Ad var_88
  loc_9DFD38: ExitProcHresult
End Sub

Private Sub CodiInmuDesdeMsk_UnknownEvent_0 '9BCDF8
  'Data Table: 4D4A94
  loc_9BCDE4: FLdPr Me
  loc_9BCDE7: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_9BCDEA: CVarAd
  loc_9BCDEE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCDF3: FFree1Var var_94 = ""
  loc_9BCDF6: ExitProcHresult
End Sub

Private Sub CodiInmuHastaMsk_UnknownEvent_0 '9BCE40
  'Data Table: 4D4A94
  loc_9BCE2C: FLdPr Me
  loc_9BCE2F: VCallAd Control_ID_CodiInmuHastaMsk
  loc_9BCE32: CVarAd
  loc_9BCE36: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCE3B: FFree1Var var_94 = ""
  loc_9BCE3E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'B01708
  'Data Table: 4D4A94
  loc_B01524: LitI2_Byte 0
  loc_B01526: FLdPr Me
  loc_B01529: MemStI2 bGenerado
  loc_B0152C: LitI2_Byte &HFF
  loc_B0152E: FLdPr Me
  loc_B01531: MemStI2 bLogos
  loc_B01534: LitI2_Byte 0
  loc_B01536: ILdRf Me
  loc_B01539: CastAd
  loc_B0153C: FStAdFunc var_88
  loc_B0153F: FLdRfVar var_88
  loc_B01542: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_B01547: FFree1Ad var_88
  loc_B0154A: FLdPr Me
  loc_B0154D: MemLdRfVar from_stack_1.global_76
  loc_B01550: NewIfNullPr clsliquidacion
  loc_B01553: Call clsliquidacion.Requery()
  loc_B01558: LitVarStr var_98, vbNullString
  loc_B0155D: PopAdLdVar
  loc_B0155E: FLdPr Me
  loc_B01561: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_B01564: FStAdFunc var_88
  loc_B01567: FLdPr var_88
  loc_B0156A: LateIdSt
  loc_B0156F: FFree1Ad var_88
  loc_B01572: LitVarStr var_98, vbNullString
  loc_B01577: PopAdLdVar
  loc_B01578: FLdPr Me
  loc_B0157B: VCallAd Control_ID_CodiInmuHastaMsk
  loc_B0157E: FStAdFunc var_88
  loc_B01581: FLdPr var_88
  loc_B01584: LateIdSt
  loc_B01589: FFree1Ad var_88
  loc_B0158C: ImpAdLdI2 MemVar_D93034
  loc_B0158F: LitI2_Byte 1
  loc_B01591: SubI2
  loc_B01592: CStrUI1
  loc_B01594: FStStrNoPop var_AC
  loc_B01597: FLdPr Me
  loc_B0159A: VCallAd Control_ID_PeriLiquTxt
  loc_B0159D: FStAdFunc var_88
  loc_B015A0: FLdPr var_88
  loc_B015A3: Me.Text = from_stack_1
  loc_B015A8: FFree1Str var_AC
  loc_B015AB: FFree1Ad var_88
  loc_B015AE: LitI2_Byte 1
  loc_B015B0: CStrUI1
  loc_B015B2: FStStrNoPop var_AC
  loc_B015B5: FLdPr Me
  loc_B015B8: VCallAd Control_ID_BimeLiquTxt
  loc_B015BB: FStAdFunc var_88
  loc_B015BE: FLdPr var_88
  loc_B015C1: Me.Text = from_stack_1
  loc_B015C6: FFree1Str var_AC
  loc_B015C9: FFree1Ad var_88
  loc_B015CC: LitI4 1
  loc_B015D1: LitI4 1
  loc_B015D6: LitVarStr var_A8, "0.00"
  loc_B015DB: FStVarCopyObj var_CC
  loc_B015DE: FLdRfVar var_CC
  loc_B015E1: LitVarI2 var_BC, 10
  loc_B015E6: FLdRfVar var_DC
  loc_B015E9: ImpAdCallFPR4  = Format(, )
  loc_B015EE: FLdRfVar var_DC
  loc_B015F1: CStrVarVal var_AC
  loc_B015F5: FLdPr Me
  loc_B015F8: VCallAd Control_ID_PorcentajeTxt
  loc_B015FB: FStAdFunc var_88
  loc_B015FE: FLdPr var_88
  loc_B01601: Me.Text = from_stack_1
  loc_B01606: FFree1Str var_AC
  loc_B01609: FFree1Ad var_88
  loc_B0160C: FFreeVar var_BC = "": var_CC = ""
  loc_B01615: LitVarStr var_98, vbNullString
  loc_B0161A: PopAdLdVar
  loc_B0161B: FLdPr Me
  loc_B0161E: VCallAd Control_ID_CodiConcMsk
  loc_B01621: FStAdFunc var_88
  loc_B01624: FLdPr var_88
  loc_B01627: LateIdSt
  loc_B0162C: FFree1Ad var_88
  loc_B0162F: LitStr vbNullString
  loc_B01632: FLdPr Me
  loc_B01635: VCallAd Control_ID_DetaConcLbl
  loc_B01638: FStAdFunc var_88
  loc_B0163B: FLdPr var_88
  loc_B0163E: Me.Caption = from_stack_1
  loc_B01643: FFree1Ad var_88
  loc_B01646: FLdRfVar var_E0
  loc_B01649: FLdPr Me
  loc_B0164C: MemLdRfVar from_stack_1.global_76
  loc_B0164F: NewIfNullPr clsliquidacion
  loc_B01652: from_stack_1 = clsliquidacion.RecordCount
  loc_B01657: ILdRf var_E0
  loc_B0165A: LitI4 0
  loc_B0165F: GtI4
  loc_B01660: BranchF loc_B016D2
  loc_B01663: LitI4 0
  loc_B01668: LitI4 1
  loc_B0166D: FLdRfVar var_E4
  loc_B01670: Redim
  loc_B0167A: FLdPr Me
  loc_B0167D: MemLdRfVar from_stack_1.global_76
  loc_B01680: NewIfNullAd
  loc_B01683: FStAd var_88 
  loc_B01687: FLdRfVar var_88
  loc_B0168A: CVarRef
  loc_B0168F: ParmAry1St
  loc_B01695: FLdPr Me
  loc_B01698: VCallAd Control_ID_dgdLiquidacion
  loc_B0169B: CVarAd
  loc_B0169F: ParmAry1St
  loc_B016A5: FLdRfVar var_E4
  loc_B016A8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B016AD: ILdRf var_88
  loc_B016B0: CastAd
  loc_B016B3: FLdPr Me
  loc_B016B6: MemStAdFunc
  loc_B016BA: FLdRfVar var_E4
  loc_B016BD: Erase
  loc_B016BE: FFree1Ad var_88
  loc_B016C1: FLdPr Me
  loc_B016C4: MemLdRfVar from_stack_1.global_76
  loc_B016C7: NewIfNullPr clsliquidacion
  loc_B016CA: Call clsliquidacion.MoveLast()
  loc_B016CF: Branch loc_B016EE
  loc_B016D2: LitStr "No existen liquidaciones para listar"
  loc_B016D5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B016DA: ILdRf Me
  loc_B016DD: CastAd
  loc_B016E0: FStAdFunc var_88
  loc_B016E3: FLdRfVar var_88
  loc_B016E6: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B016EB: FFree1Ad var_88
  loc_B016EE: Call HabilitarCriterio()
  loc_B016F3: ILdRf Me
  loc_B016F6: CastAd
  loc_B016F9: FStAdFunc var_88
  loc_B016FC: FLdRfVar var_88
  loc_B016FF: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B01704: FFree1Ad var_88
  loc_B01707: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A19AE0
  'Data Table: 4D4A94
  loc_A19AA8: FLdPr Me
  loc_A19AAB: VCallAd Control_ID_statusBar
  loc_A19AAE: FStAdFunc var_88
  loc_A19AB1: FLdPr var_88
  loc_A19AB4: LateIdLdVar var_98 DispID_1 0
  loc_A19ABB: CStrVarTmp
  loc_A19ABC: CVarStr var_A8
  loc_A19ABF: PopAdLdVar
  loc_A19AC0: FLdPr Me
  loc_A19AC3: VCallAd Control_ID_statusBar
  loc_A19AC6: FStAdFunc var_BC
  loc_A19AC9: FLdPr var_BC
  loc_A19ACC: LateIdSt
  loc_A19AD1: FFreeAd var_88 = ""
  loc_A19AD8: FFreeVar var_98 = ""
  loc_A19ADF: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9BCBB8
  'Data Table: 4D4A94
  loc_9BCBA4: FLdPr Me
  loc_9BCBA7: VCallAd Control_ID_CodiConcMsk
  loc_9BCBAA: CVarAd
  loc_9BCBAE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCBB3: FFree1Var var_94 = ""
  loc_9BCBB6: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_8 'AB6B2C
  'Data Table: 4D4A94
  loc_AB6A48: FLdPr Me
  loc_AB6A4B: VCallAd Control_ID_CodiConcMsk
  loc_AB6A4E: FStAdFunc var_88
  loc_AB6A51: FLdPr var_88
  loc_AB6A54: LateIdLdVar var_98 DispID_13 -32767
  loc_AB6A5B: CBoolVar
  loc_AB6A5D: FFree1Ad var_88
  loc_AB6A60: FFree1Var var_98 = ""
  loc_AB6A63: BranchF loc_AB6B2A
  loc_AB6A66: FLdPr Me
  loc_AB6A69: VCallAd Control_ID_CodiConcMsk
  loc_AB6A6C: FStAdFunc var_88
  loc_AB6A6F: FLdPr var_88
  loc_AB6A72: LateIdLdVar var_98 DispID_22 0
  loc_AB6A79: PopAd
  loc_AB6A7B: LitI2_Byte 0
  loc_AB6A7D: LitI2_Byte 0
  loc_AB6A7F: LitI2_Byte &HFF
  loc_AB6A81: LitI2_Byte &HFF
  loc_AB6A83: LitI2_Byte &HFF
  loc_AB6A85: LitI2_Byte 0
  loc_AB6A87: LitI2_Byte 0
  loc_AB6A89: LitI2_Byte 0
  loc_AB6A8B: LitI2_Byte &HFF
  loc_AB6A8D: FLdRfVar var_98
  loc_AB6A90: CStrVarTmp
  loc_AB6A91: FStStrNoPop var_9C
  loc_AB6A94: ImpAdLdI2 MemVar_D93034
  loc_AB6A97: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AB6A9C: FStStrNoPop var_A0
  loc_AB6A9F: FLdPr Me
  loc_AB6AA2: MemStStrCopy
  loc_AB6AA6: FFreeStr var_9C = ""
  loc_AB6AAD: FFree1Ad var_88
  loc_AB6AB0: FFree1Var var_98 = ""
  loc_AB6AB3: FLdPr Me
  loc_AB6AB6: MemLdStr global_92
  loc_AB6AB9: LitStr vbNullString
  loc_AB6ABC: NeStr
  loc_AB6ABE: BranchF loc_AB6AE6
  loc_AB6AC1: FLdPr Me
  loc_AB6AC4: MemLdStr global_92
  loc_AB6AC7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB6ACC: FLdPr Me
  loc_AB6ACF: VCallAd Control_ID_CodiConcMsk
  loc_AB6AD2: CVarAd
  loc_AB6AD6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB6ADB: FFree1Var var_98 = ""
  loc_AB6ADE: LitI2_Byte &HFF
  loc_AB6AE0: IStI2 Button
  loc_AB6AE3: Branch loc_AB6B2A
  loc_AB6AE6: FLdPr Me
  loc_AB6AE9: VCallAd Control_ID_CodiConcMsk
  loc_AB6AEC: FStAdFunc var_88
  loc_AB6AEF: FLdPr var_88
  loc_AB6AF2: LateIdLdVar var_98 DispID_22 0
  loc_AB6AF9: CStrVarTmp
  loc_AB6AFA: FStStrNoPop var_9C
  loc_AB6AFD: ImpAdLdI2 MemVar_D93034
  loc_AB6B00: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AB6B05: FStStrNoPop var_A0
  loc_AB6B08: FLdPr Me
  loc_AB6B0B: VCallAd Control_ID_DetaConcLbl
  loc_AB6B0E: FStAdFunc var_A4
  loc_AB6B11: FLdPr var_A4
  loc_AB6B14: Me.Caption = from_stack_1
  loc_AB6B19: FFreeStr var_9C = ""
  loc_AB6B20: FFreeAd var_88 = ""
  loc_AB6B27: FFree1Var var_98 = ""
  loc_AB6B2A: ExitProcHresult
End Sub

Private Sub CodiConcMsk_KeyPress(KeyAscii As Integer) 'AACA98
  'Data Table: 4D4A94
  loc_AAC9C8: ILdI2 KeyAscii
  loc_AAC9CB: LitI2_Byte &H20
  loc_AAC9CD: EqI2
  loc_AAC9CE: BranchF loc_AACA96
  loc_AAC9D1: LitI2_Byte 0
  loc_AAC9D3: IStI2 KeyAscii
  loc_AAC9D6: ImpAdLdI2 MemVar_D93034
  loc_AAC9D9: ImpAdLdRf MemVar_D947E0
  loc_AAC9DC: NewIfNullPr dlgBuscarConcepto
  loc_AAC9DF: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AAC9E4: LitVar_Missing var_A4
  loc_AAC9E7: PopAdLdVar
  loc_AAC9E8: LitVarI4
  loc_AAC9F0: PopAdLdVar
  loc_AAC9F1: ImpAdLdRf MemVar_D947E0
  loc_AAC9F4: NewIfNullPr dlgBuscarConcepto
  loc_AAC9F7: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AAC9FC: FLdRfVar var_AC
  loc_AAC9FF: FLdRfVar var_A8
  loc_AACA02: ImpAdLdRf MemVar_D947E0
  loc_AACA05: NewIfNullPr dlgBuscarConcepto
  loc_AACA08: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AACA0D: FLdPr var_A8
  loc_AACA10: from_stack_1 = clsconcepto.RecordCount
  loc_AACA15: ILdRf var_AC
  loc_AACA18: LitI4 0
  loc_AACA1D: NeI4
  loc_AACA1E: FFree1Ad var_A8
  loc_AACA21: BranchF loc_AACA96
  loc_AACA24: FLdRfVar var_B0
  loc_AACA27: FLdRfVar var_A8
  loc_AACA2A: ImpAdLdRf MemVar_D947E0
  loc_AACA2D: NewIfNullPr dlgBuscarConcepto
  loc_AACA30: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AACA35: FLdPr var_A8
  loc_AACA38: from_stack_1 = clsconcepto.CodiConc
  loc_AACA3D: FLdZeroAd var_B0
  loc_AACA40: CVarStr var_C0
  loc_AACA43: PopAdLdVar
  loc_AACA44: FLdPr Me
  loc_AACA47: VCallAd Control_ID_CodiConcMsk
  loc_AACA4A: FStAdFunc var_C4
  loc_AACA4D: FLdPr var_C4
  loc_AACA50: LateIdSt
  loc_AACA55: FFreeAd var_A8 = ""
  loc_AACA5C: FFree1Var var_C0 = ""
  loc_AACA5F: FLdRfVar var_B0
  loc_AACA62: FLdRfVar var_A8
  loc_AACA65: ImpAdLdRf MemVar_D947E0
  loc_AACA68: NewIfNullPr dlgBuscarConcepto
  loc_AACA6B: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AACA70: FLdPr var_A8
  loc_AACA73: from_stack_1 = clsconcepto.DetaConc
  loc_AACA78: ILdRf var_B0
  loc_AACA7B: FLdPr Me
  loc_AACA7E: VCallAd Control_ID_DetaConcLbl
  loc_AACA81: FStAdFunc var_C4
  loc_AACA84: FLdPr var_C4
  loc_AACA87: Me.Caption = from_stack_1
  loc_AACA8C: FFree1Str var_B0
  loc_AACA8F: FFreeAd var_A8 = ""
  loc_AACA96: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_GotFocus() '9BF1B0
  'Data Table: 4D4A94
  loc_9BF19C: FLdPr Me
  loc_9BF19F: VCallAd Control_ID_BimeLiquTxt
  loc_9BF1A2: CVarAd
  loc_9BF1A6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BF1AB: FFree1Var var_94 = ""
  loc_9BF1AE: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_KeyPress(KeyAscii As Integer) '9C88DC
  'Data Table: 4D4A94
  loc_9C88C4: LitStr "1234567890"
  loc_9C88C7: FStStrCopy var_88
  loc_9C88CA: FLdRfVar var_88
  loc_9C88CD: ILdRf KeyAscii
  loc_9C88D0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C88D5: IStI2 KeyAscii
  loc_9C88D8: FFree1Str var_88
  loc_9C88DB: ExitProcHresult
End Sub

Private Sub BimeLiquTxt_Validate(Cancel As Boolean) 'A82F04
  'Data Table: 4D4A94
  loc_A82E7C: FLdRfVar var_8A
  loc_A82E7F: FLdPr Me
  loc_A82E82: VCallAd Control_ID_BimeLiquTxt
  loc_A82E85: FStAdFunc var_88
  loc_A82E88: FLdPr var_88
  loc_A82E8B:  = Me.Enabled
  loc_A82E90: FLdI2 var_8A
  loc_A82E93: FFree1Ad var_88
  loc_A82E96: BranchF loc_A82F01
  loc_A82E99: FLdRfVar var_90
  loc_A82E9C: FLdPr Me
  loc_A82E9F: VCallAd Control_ID_BimeLiquTxt
  loc_A82EA2: FStAdFunc var_88
  loc_A82EA5: FLdPr var_88
  loc_A82EA8:  = Me.Text
  loc_A82EAD: LitI2_Byte 0
  loc_A82EAF: LitI2_Byte 0
  loc_A82EB1: ILdRf var_90
  loc_A82EB4: LitStr "bimestre"
  loc_A82EB7: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A82EBC: FStStrNoPop var_94
  loc_A82EBF: FLdPr Me
  loc_A82EC2: MemStStrCopy
  loc_A82EC6: FFreeStr var_90 = ""
  loc_A82ECD: FFree1Ad var_88
  loc_A82ED0: FLdPr Me
  loc_A82ED3: MemLdStr global_92
  loc_A82ED6: LitStr vbNullString
  loc_A82ED9: NeStr
  loc_A82EDB: BranchF loc_A82F01
  loc_A82EDE: FLdPr Me
  loc_A82EE1: MemLdStr global_92
  loc_A82EE4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A82EE9: FLdPr Me
  loc_A82EEC: VCallAd Control_ID_BimeLiquTxt
  loc_A82EEF: CVarAd
  loc_A82EF3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82EF8: FFree1Var var_A4 = ""
  loc_A82EFB: LitI2_Byte &HFF
  loc_A82EFD: IStI2 Cancel
  loc_A82F00: ExitProcHresult
  loc_A82F01: ExitProcHresult
End Sub

Private Sub Form_Load() 'A21124
  'Data Table: 4D4A94
  loc_A210E4: ILdRf Me
  loc_A210E7: CastAd
  loc_A210EA: FStAdFunc var_88
  loc_A210ED: FLdRfVar var_88
  loc_A210F0: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A210F5: FFree1Ad var_88
  loc_A210F8: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu"
  loc_A210FB: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A210FE: ConcatStr
  loc_A210FF: FStStrNoPop var_8C
  loc_A21102: LitStr " WHERE liquidacion.CodiOfic = 1 ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A21105: ConcatStr
  loc_A21106: FStStrNoPop var_90
  loc_A21109: FLdPr Me
  loc_A2110C: MemLdRfVar from_stack_1.global_76
  loc_A2110F: NewIfNullPr clsliquidacion
  loc_A21112: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A21117: FFreeStr var_8C = ""
  loc_A2111E: Call cmdNueva_Click()
  loc_A21123: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CC060
  'Data Table: 4D4A94
  loc_9CC048: FLdPr Me
  loc_9CC04B: VCallAd Control_ID_wbbReporte
  loc_9CC04E: FStAdFunc var_88
  loc_9CC051: FLdRfVar var_88
  loc_9CC054: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CC059: FFree1Ad var_88
  loc_9CC05C: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A02E00
  'Data Table: 4D4A94
  loc_A02DD0: LitVarStr var_94, "Cerrando..."
  loc_A02DD5: PopAdLdVar
  loc_A02DD6: FLdPr Me
  loc_A02DD9: VCallAd Control_ID_statusBar
  loc_A02DDC: FStAdFunc var_A8
  loc_A02DDF: FLdPr var_A8
  loc_A02DE2: LateIdSt
  loc_A02DE7: FFree1Ad var_A8
  loc_A02DEA: ILdRf Me
  loc_A02DED: FStAdNoPop
  loc_A02DF1: ImpAdLdRf MemVar_D9C5D8
  loc_A02DF4: NewIfNullPr Global
  loc_A02DF7: Global.Unload from_stack_1
  loc_A02DFC: FFree1Ad var_A8
  loc_A02DFF: ExitProcHresult
End Sub

Private Sub PorcentajeTxt_GotFocus() '9BCAE0
  'Data Table: 4D4A94
  loc_9BCACC: FLdPr Me
  loc_9BCACF: VCallAd Control_ID_PorcentajeTxt
  loc_9BCAD2: CVarAd
  loc_9BCAD6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCADB: FFree1Var var_94 = ""
  loc_9BCADE: ExitProcHresult
End Sub

Private Sub PorcentajeTxt_KeyPress(KeyAscii As Integer) 'A067A8
  'Data Table: 4D4A94
  loc_A06774: LitStr "1234567890,."
  loc_A06777: FStStrCopy var_88
  loc_A0677A: FLdRfVar var_88
  loc_A0677D: ILdRf KeyAscii
  loc_A06780: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06785: IStI2 KeyAscii
  loc_A06788: FFree1Str var_88
  loc_A0678B: ILdI2 KeyAscii
  loc_A0678E: LitStr "."
  loc_A06791: ImpAdCallI2 Asc()
  loc_A06796: EqI2
  loc_A06797: BranchF loc_A067A5
  loc_A0679A: LitStr ","
  loc_A0679D: ImpAdCallI2 Asc()
  loc_A067A2: IStI2 KeyAscii
  loc_A067A5: ExitProcHresult
End Sub

Private Sub PorcentajeTxt_LostFocus() 'A73F48
  'Data Table: 4D4A94
  loc_A73EE4: FLdRfVar var_8C
  loc_A73EE7: FLdPr Me
  loc_A73EEA: VCallAd Control_ID_PorcentajeTxt
  loc_A73EED: FStAdFunc var_88
  loc_A73EF0: FLdPr var_88
  loc_A73EF3:  = Me.Text
  loc_A73EF8: LitI4 1
  loc_A73EFD: LitI4 1
  loc_A73F02: LitVarStr var_AC, "0.00"
  loc_A73F07: FStVarCopyObj var_BC
  loc_A73F0A: FLdRfVar var_BC
  loc_A73F0D: FLdZeroAd var_8C
  loc_A73F10: CVarStr var_9C
  loc_A73F13: FLdRfVar var_CC
  loc_A73F16: ImpAdCallFPR4  = Format(, )
  loc_A73F1B: FLdRfVar var_CC
  loc_A73F1E: CStrVarVal var_D0
  loc_A73F22: FLdPr Me
  loc_A73F25: VCallAd Control_ID_PorcentajeTxt
  loc_A73F28: FStAdFunc var_D4
  loc_A73F2B: FLdPr var_D4
  loc_A73F2E: Me.Text = from_stack_1
  loc_A73F33: FFree1Str var_D0
  loc_A73F36: FFreeAd var_88 = ""
  loc_A73F3D: FFreeVar var_9C = "": var_BC = ""
  loc_A73F46: ExitProcHresult
End Sub

Private Sub PorcentajeTxt_Validate(Cancel As Boolean) 'ACB034
  'Data Table: 4D4A94
  loc_ACAF18: FLdRfVar var_8A
  loc_ACAF1B: FLdPr Me
  loc_ACAF1E: VCallAd Control_ID_PorcentajeTxt
  loc_ACAF21: FStAdFunc var_88
  loc_ACAF24: FLdPr var_88
  loc_ACAF27:  = Me.Enabled
  loc_ACAF2C: FLdI2 var_8A
  loc_ACAF2F: LitI2_Byte &HFF
  loc_ACAF31: EqI2
  loc_ACAF32: FFree1Ad var_88
  loc_ACAF35: BranchF loc_ACB033
  loc_ACAF38: FLdRfVar var_90
  loc_ACAF3B: FLdPr Me
  loc_ACAF3E: VCallAd Control_ID_PorcentajeTxt
  loc_ACAF41: FStAdFunc var_88
  loc_ACAF44: FLdPr var_88
  loc_ACAF47:  = Me.Text
  loc_ACAF4C: FLdZeroAd var_90
  loc_ACAF4F: CVarStr var_A0
  loc_ACAF52: ImpAdCallI2 IsNumeric()
  loc_ACAF57: NotI4
  loc_ACAF58: FFree1Ad var_88
  loc_ACAF5B: FFree1Var var_A0 = ""
  loc_ACAF5E: BranchF loc_ACAF78
  loc_ACAF61: LitStr "0"
  loc_ACAF64: FLdPr Me
  loc_ACAF67: VCallAd Control_ID_PorcentajeTxt
  loc_ACAF6A: FStAdFunc var_88
  loc_ACAF6D: FLdPr var_88
  loc_ACAF70: Me.Text = from_stack_1
  loc_ACAF75: FFree1Ad var_88
  loc_ACAF78: FLdRfVar var_90
  loc_ACAF7B: FLdPr Me
  loc_ACAF7E: VCallAd Control_ID_PorcentajeTxt
  loc_ACAF81: FStAdFunc var_88
  loc_ACAF84: FLdPr var_88
  loc_ACAF87:  = Me.Text
  loc_ACAF8C: LitI2_Byte &HFF
  loc_ACAF8E: LitI2_Byte 0
  loc_ACAF90: ILdRf var_90
  loc_ACAF93: LitStr "Porcentaje"
  loc_ACAF96: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_ACAF9B: FStStrNoPop var_A4
  loc_ACAF9E: FLdPr Me
  loc_ACAFA1: MemStStrCopy
  loc_ACAFA5: FFreeStr var_90 = ""
  loc_ACAFAC: FFree1Ad var_88
  loc_ACAFAF: FLdPr Me
  loc_ACAFB2: MemLdStr global_92
  loc_ACAFB5: LitStr vbNullString
  loc_ACAFB8: NeStr
  loc_ACAFBA: BranchF loc_ACAFE0
  loc_ACAFBD: FLdPr Me
  loc_ACAFC0: MemLdStr global_92
  loc_ACAFC3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACAFC8: FLdPr Me
  loc_ACAFCB: VCallAd Control_ID_PorcentajeTxt
  loc_ACAFCE: CVarAd
  loc_ACAFD2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACAFD7: FFree1Var var_A0 = ""
  loc_ACAFDA: LitI2_Byte &HFF
  loc_ACAFDC: IStI2 Cancel
  loc_ACAFDF: ExitProcHresult
  loc_ACAFE0: FLdRfVar var_90
  loc_ACAFE3: FLdPr Me
  loc_ACAFE6: VCallAd Control_ID_PorcentajeTxt
  loc_ACAFE9: FStAdFunc var_88
  loc_ACAFEC: FLdPr var_88
  loc_ACAFEF:  = Me.Text
  loc_ACAFF4: ILdRf var_90
  loc_ACAFF7: CR8Str
  loc_ACAFF9: LitI2_Byte &H64
  loc_ACAFFB: CR8I2
  loc_ACAFFC: GtR4
  loc_ACAFFD: FFree1Str var_90
  loc_ACB000: FFree1Ad var_88
  loc_ACB003: BranchF loc_ACB033
  loc_ACB006: LitStr "El porcentaje no puede ser mayor a 100"
  loc_ACB009: FLdPr Me
  loc_ACB00C: MemStStrCopy
  loc_ACB010: FLdPr Me
  loc_ACB013: MemLdStr global_92
  loc_ACB016: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACB01B: FLdPr Me
  loc_ACB01E: VCallAd Control_ID_PorcentajeTxt
  loc_ACB021: CVarAd
  loc_ACB025: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACB02A: FFree1Var var_A0 = ""
  loc_ACB02D: LitI2_Byte &HFF
  loc_ACB02F: IStI2 Cancel
  loc_ACB032: ExitProcHresult
  loc_ACB033: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9C8AA4
  'Data Table: 4D4A94
  loc_9C8A8C: LitI2_Byte 0
  loc_9C8A8E: ILdRf Me
  loc_9C8A91: CastAd
  loc_9C8A94: FStAdFunc var_88
  loc_9C8A97: FLdRfVar var_88
  loc_9C8A9A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C8A9F: FFree1Ad var_88
  loc_9C8AA2: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_GotFocus() '9BCCD8
  'Data Table: 4D4A94
  loc_9BCCC4: FLdPr Me
  loc_9BCCC7: VCallAd Control_ID_PeriLiquTxt
  loc_9BCCCA: CVarAd
  loc_9BCCCE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BCCD3: FFree1Var var_94 = ""
  loc_9BCCD6: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_KeyPress(KeyAscii As Integer) '9CB518
  'Data Table: 4D4A94
  loc_9CB500: LitStr "1234567890"
  loc_9CB503: FStStrCopy var_88
  loc_9CB506: FLdRfVar var_88
  loc_9CB509: ILdRf KeyAscii
  loc_9CB50C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CB511: IStI2 KeyAscii
  loc_9CB514: FFree1Str var_88
  loc_9CB517: ExitProcHresult
End Sub

Private Sub PeriLiquTxt_Validate(Cancel As Boolean) 'A6A950
  'Data Table: 4D4A94
  loc_A6A8E8: FLdRfVar var_8C
  loc_A6A8EB: FLdPr Me
  loc_A6A8EE: VCallAd Control_ID_PeriLiquTxt
  loc_A6A8F1: FStAdFunc var_88
  loc_A6A8F4: FLdPr var_88
  loc_A6A8F7:  = Me.Text
  loc_A6A8FC: LitI2_Byte 0
  loc_A6A8FE: ILdRf var_8C
  loc_A6A901: LitStr "el Año"
  loc_A6A904: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6A909: FStStrNoPop var_90
  loc_A6A90C: FLdPr Me
  loc_A6A90F: MemStStrCopy
  loc_A6A913: FFreeStr var_8C = ""
  loc_A6A91A: FFree1Ad var_88
  loc_A6A91D: FLdPr Me
  loc_A6A920: MemLdStr global_92
  loc_A6A923: LitStr vbNullString
  loc_A6A926: NeStr
  loc_A6A928: BranchF loc_A6A94E
  loc_A6A92B: FLdPr Me
  loc_A6A92E: MemLdStr global_92
  loc_A6A931: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6A936: FLdPr Me
  loc_A6A939: VCallAd Control_ID_PeriLiquTxt
  loc_A6A93C: CVarAd
  loc_A6A940: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6A945: FFree1Var var_A0 = ""
  loc_A6A948: LitI2_Byte &HFF
  loc_A6A94A: IStI2 Cancel
  loc_A6A94D: ExitProcHresult
  loc_A6A94E: ExitProcHresult
End Sub

Public Function bLogosGet() '4D5D90
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4D5D9F
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4D5DAE
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4D5DBD
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A946CC
  'Data Table: 4D4A94
  loc_A94638: LitI4 0
  loc_A9463D: LitI4 6
  loc_A94642: FLdRfVar var_88
  loc_A94645: Redim
  loc_A9464F: FLdPr Me
  loc_A94652: VCallAd Control_ID_dgdLiquidacion
  loc_A94655: CVarAd
  loc_A94659: ParmAry1St
  loc_A9465F: FLdPr Me
  loc_A94662: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_A94665: CVarAd
  loc_A94669: ParmAry1St
  loc_A9466F: FLdPr Me
  loc_A94672: VCallAd Control_ID_CodiInmuHastaMsk
  loc_A94675: CVarAd
  loc_A94679: ParmAry1St
  loc_A9467F: FLdPr Me
  loc_A94682: VCallAd Control_ID_PeriLiquTxt
  loc_A94685: CVarAd
  loc_A94689: ParmAry1St
  loc_A9468F: FLdPr Me
  loc_A94692: VCallAd Control_ID_BimeLiquTxt
  loc_A94695: CVarAd
  loc_A94699: ParmAry1St
  loc_A9469F: FLdPr Me
  loc_A946A2: VCallAd Control_ID_CodiConcMsk
  loc_A946A5: CVarAd
  loc_A946A9: ParmAry1St
  loc_A946AF: FLdPr Me
  loc_A946B2: VCallAd Control_ID_PorcentajeTxt
  loc_A946B5: CVarAd
  loc_A946B9: ParmAry1St
  loc_A946BF: FLdRfVar var_88
  loc_A946C2: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A946C7: FLdRfVar var_88
  loc_A946CA: Erase
  loc_A946CB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BAAC28
  'Data Table: 4D4A94
  loc_BAA6A0: LitI2_Byte 0
  loc_BAA6A2: PopTmpLdAd2 var_8E
  loc_BAA6A5: Call PeriLiquTxt_Validate(from_stack_1v)
  loc_BAA6AA: FLdPr Me
  loc_BAA6AD: MemLdStr global_92
  loc_BAA6B0: LitStr vbNullString
  loc_BAA6B3: NeStr
  loc_BAA6B5: BranchF loc_BAA6BB
  loc_BAA6B8: Branch loc_BAABFC
  loc_BAA6BB: LitI2_Byte 0
  loc_BAA6BD: PopTmpLdAd2 var_8E
  loc_BAA6C0: Call BimeLiquTxt_Validate(from_stack_1v)
  loc_BAA6C5: FLdPr Me
  loc_BAA6C8: MemLdStr global_92
  loc_BAA6CB: LitStr vbNullString
  loc_BAA6CE: NeStr
  loc_BAA6D0: BranchF loc_BAA6D6
  loc_BAA6D3: Branch loc_BAABFC
  loc_BAA6D6: LitI2_Byte 0
  loc_BAA6D8: PopTmpLdAd2 var_8E
  loc_BAA6DB: Call PorcentajeTxt_Validate(from_stack_1v)
  loc_BAA6E0: FLdPr Me
  loc_BAA6E3: MemLdStr global_92
  loc_BAA6E6: LitStr vbNullString
  loc_BAA6E9: NeStr
  loc_BAA6EB: BranchF loc_BAA6F1
  loc_BAA6EE: Branch loc_BAABFC
  loc_BAA6F1: LitI2_Byte 0
  loc_BAA6F3: PopTmpLdAd2 var_8E
  loc_BAA6F6: Call CodiConcMsk_UnknownEvent_8()
  loc_BAA6FB: FLdPr Me
  loc_BAA6FE: MemLdStr global_92
  loc_BAA701: LitStr vbNullString
  loc_BAA704: NeStr
  loc_BAA706: BranchF loc_BAA70C
  loc_BAA709: Branch loc_BAABFC
  loc_BAA70C: FLdPr Me
  loc_BAA70F: MemLdI2 bGenerado
  loc_BAA712: BranchF loc_BAA716
  loc_BAA715: ExitProcHresult
  loc_BAA716: LitVarStr var_A0, "Generando reporte..."
  loc_BAA71B: PopAdLdVar
  loc_BAA71C: FLdPr Me
  loc_BAA71F: VCallAd Control_ID_statusBar
  loc_BAA722: FStAdFunc var_B4
  loc_BAA725: FLdPr var_B4
  loc_BAA728: LateIdSt
  loc_BAA72D: FFree1Ad var_B4
  loc_BAA730: LitI4 &HB
  loc_BAA735: CI2I4
  loc_BAA736: FLdPr Me
  loc_BAA739: Me.MousePointer = from_stack_1
  loc_BAA73E: FLdRfVar var_B8
  loc_BAA741: FLdPr Me
  loc_BAA744: MemLdRfVar from_stack_1.global_76
  loc_BAA747: NewIfNullPr clsliquidacion
  loc_BAA74A: from_stack_1 = clsliquidacion.RecordCount
  loc_BAA74F: ILdRf var_B8
  loc_BAA752: LitI4 1
  loc_BAA757: LtI4
  loc_BAA758: BranchF loc_BAA766
  loc_BAA75B: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BAA75E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BAA763: Branch loc_BAABFC
  loc_BAA766: FLdPr Me
  loc_BAA769: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_BAA76C: FStAdFunc var_B4
  loc_BAA76F: FLdPr var_B4
  loc_BAA772: LateIdLdVar var_C8 DispID_22 0
  loc_BAA779: PopAd
  loc_BAA77B: FLdPr Me
  loc_BAA77E: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_BAA781: FStAdFunc var_D0
  loc_BAA784: FLdPr var_D0
  loc_BAA787: LateIdLdVar var_E0 DispID_22 0
  loc_BAA78E: PopAd
  loc_BAA790: LitVarStr var_B0, vbNullString
  loc_BAA795: FStVarCopyObj var_104
  loc_BAA798: FLdRfVar var_104
  loc_BAA79B: LitStr " AND liqutasa.CodiInmu >= "
  loc_BAA79E: FLdRfVar var_E0
  loc_BAA7A1: CStrVarTmp
  loc_BAA7A2: FStStrNoPop var_E4
  loc_BAA7A5: ConcatStr
  loc_BAA7A6: CVarStr var_F4
  loc_BAA7A9: FLdRfVar var_C8
  loc_BAA7AC: CStrVarTmp
  loc_BAA7AD: FStStrNoPop var_CC
  loc_BAA7B0: LitStr vbNullString
  loc_BAA7B3: NeStr
  loc_BAA7B5: CVarBoolI2 var_A0
  loc_BAA7B9: FLdRfVar var_114
  loc_BAA7BC: ImpAdCallFPR4  = IIf(, , )
  loc_BAA7C1: FLdRfVar var_114
  loc_BAA7C4: CStrVarTmp
  loc_BAA7C5: FStStr var_88
  loc_BAA7C8: FFreeStr var_CC = ""
  loc_BAA7CF: FFreeAd var_B4 = ""
  loc_BAA7D6: FFreeVar var_C8 = "": var_E0 = "": var_A0 = "": var_F4 = "": var_104 = ""
  loc_BAA7E5: FLdPr Me
  loc_BAA7E8: VCallAd Control_ID_CodiInmuHastaMsk
  loc_BAA7EB: FStAdFunc var_B4
  loc_BAA7EE: FLdPr var_B4
  loc_BAA7F1: LateIdLdVar var_C8 DispID_22 0
  loc_BAA7F8: PopAd
  loc_BAA7FA: FLdPr Me
  loc_BAA7FD: VCallAd Control_ID_CodiInmuHastaMsk
  loc_BAA800: FStAdFunc var_D0
  loc_BAA803: FLdPr var_D0
  loc_BAA806: LateIdLdVar var_E0 DispID_22 0
  loc_BAA80D: PopAd
  loc_BAA80F: LitVarStr var_B0, vbNullString
  loc_BAA814: FStVarCopyObj var_104
  loc_BAA817: FLdRfVar var_104
  loc_BAA81A: LitStr " AND liqutasa.CodiInmu <= "
  loc_BAA81D: FLdRfVar var_E0
  loc_BAA820: CStrVarTmp
  loc_BAA821: FStStrNoPop var_E4
  loc_BAA824: ConcatStr
  loc_BAA825: CVarStr var_F4
  loc_BAA828: FLdRfVar var_C8
  loc_BAA82B: CStrVarTmp
  loc_BAA82C: FStStrNoPop var_CC
  loc_BAA82F: LitStr vbNullString
  loc_BAA832: NeStr
  loc_BAA834: CVarBoolI2 var_A0
  loc_BAA838: FLdRfVar var_114
  loc_BAA83B: ImpAdCallFPR4  = IIf(, , )
  loc_BAA840: FLdRfVar var_114
  loc_BAA843: CStrVarTmp
  loc_BAA844: FStStr var_8C
  loc_BAA847: FFreeStr var_CC = ""
  loc_BAA84E: FFreeAd var_B4 = ""
  loc_BAA855: FFreeVar var_C8 = "": var_E0 = "": var_A0 = "": var_F4 = "": var_104 = ""
  loc_BAA864: FLdPr Me
  loc_BAA867: MemLdRfVar from_stack_1.global_80
  loc_BAA86A: NewIfNullAd
  loc_BAA86D: FStAd var_118 
  loc_BAA871: FLdRfVar var_CC
  loc_BAA874: FLdPr Me
  loc_BAA877: VCallAd Control_ID_PorcentajeTxt
  loc_BAA87A: FStAdFunc var_B4
  loc_BAA87D: FLdPr var_B4
  loc_BAA880:  = Me.Text
  loc_BAA885: LitStr " SELECT ctacte.CuenCtct, DetaPers, liqutasa.TotaLita, liqutasa.ImpoLita as ImpoCtct, ImpoLita * "
  loc_BAA888: LitI4 0
  loc_BAA88D: LitI4 -1
  loc_BAA892: LitI4 1
  loc_BAA897: LitStr "."
  loc_BAA89A: LitStr ","
  loc_BAA89D: ILdRf var_CC
  loc_BAA8A0: CR8Str
  loc_BAA8A2: LitI2_Byte &H64
  loc_BAA8A4: CR8I2
  loc_BAA8A5: DivR8
  loc_BAA8A6: CStrR8
  loc_BAA8A8: FStStrNoPop var_E4
  loc_BAA8AB: ImpAdCallI2 Replace(, , , , , )
  loc_BAA8B0: FStStrNoPop var_11C
  loc_BAA8B3: ConcatStr
  loc_BAA8B4: FStStrNoPop var_120
  loc_BAA8B7: LitStr " as Porcentaje"
  loc_BAA8BA: ConcatStr
  loc_BAA8BB: FStStrNoPop var_124
  loc_BAA8BE: LitStr " ,IF(liqutasa.ImpoLita>=ctacte.DebeCtct,liqutasa.ImpoLita-ctacte.DebeCtct,ctacte.DebeCtct-liqutasa.ImpoLita) as Resta, DebeCtct"
  loc_BAA8C1: ConcatStr
  loc_BAA8C2: FStStrNoPop var_128
  loc_BAA8C5: LitStr " FROM ctacte"
  loc_BAA8C8: ConcatStr
  loc_BAA8C9: FStStrNoPop var_12C
  loc_BAA8CC: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = ctacte.CodiOfic"
  loc_BAA8CF: ConcatStr
  loc_BAA8D0: FStStrNoPop var_130
  loc_BAA8D3: LitStr " AND relacion.CuenCtct = ctacte.CuenCtct"
  loc_BAA8D6: ConcatStr
  loc_BAA8D7: FStStrNoPop var_134
  loc_BAA8DA: LitStr " AND relacion.TipoRela = 'Titular'"
  loc_BAA8DD: ConcatStr
  loc_BAA8DE: FStStrNoPop var_138
  loc_BAA8E1: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = relacion.CucuPers"
  loc_BAA8E4: ConcatStr
  loc_BAA8E5: FStStrNoPop var_13C
  loc_BAA8E8: LitStr " INNER JOIN liqutasa ON liqutasa.PeriLiqu = "
  loc_BAA8EB: ConcatStr
  loc_BAA8EC: FStStrNoPop var_140
  loc_BAA8EF: FLdRfVar var_8E
  loc_BAA8F2: FLdPr Me
  loc_BAA8F5: MemLdRfVar from_stack_1.global_76
  loc_BAA8F8: NewIfNullPr clsliquidacion
  loc_BAA8FB: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BAA900: FLdI2 var_8E
  loc_BAA903: CStrUI1
  loc_BAA905: FStStrNoPop var_144
  loc_BAA908: ConcatStr
  loc_BAA909: FStStrNoPop var_148
  loc_BAA90C: LitStr " AND liqutasa.BimeLiqu = "
  loc_BAA90F: ConcatStr
  loc_BAA910: FStStrNoPop var_150
  loc_BAA913: FLdRfVar var_14C
  loc_BAA916: FLdPr Me
  loc_BAA919: VCallAd Control_ID_BimeLiquTxt
  loc_BAA91C: FStAdFunc var_D0
  loc_BAA91F: FLdPr var_D0
  loc_BAA922:  = Me.Text
  loc_BAA927: ILdRf var_14C
  loc_BAA92A: ConcatStr
  loc_BAA92B: FStStrNoPop var_154
  loc_BAA92E: LitStr " AND liqutasa.CodiTili = "
  loc_BAA931: ConcatStr
  loc_BAA932: FStStrNoPop var_15C
  loc_BAA935: FLdRfVar var_156
  loc_BAA938: FLdPr Me
  loc_BAA93B: MemLdRfVar from_stack_1.global_76
  loc_BAA93E: NewIfNullPr clsliquidacion
  loc_BAA941: from_stack_1 = clsliquidacion.CodiTili
  loc_BAA946: FLdUI1
  loc_BAA94A: CStrI2
  loc_BAA94C: FStStrNoPop var_160
  loc_BAA94F: ConcatStr
  loc_BAA950: FStStrNoPop var_164
  loc_BAA953: LitStr " AND liqutasa.NumeLiqu = "
  loc_BAA956: ConcatStr
  loc_BAA957: FStStrNoPop var_16C
  loc_BAA95A: FLdRfVar var_166
  loc_BAA95D: FLdPr Me
  loc_BAA960: MemLdRfVar from_stack_1.global_76
  loc_BAA963: NewIfNullPr clsliquidacion
  loc_BAA966: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BAA96B: FLdI2 var_166
  loc_BAA96E: CStrUI1
  loc_BAA970: FStStrNoPop var_170
  loc_BAA973: ConcatStr
  loc_BAA974: FStStrNoPop var_174
  loc_BAA977: LitStr " AND liqutasa.CodiInmu = ctacte.CuenCtct"
  loc_BAA97A: ConcatStr
  loc_BAA97B: FStStrNoPop var_178
  loc_BAA97E: LitStr " AND liqutasa.CodiConc = ctacte.CodiConc"
  loc_BAA981: ConcatStr
  loc_BAA982: FStStrNoPop var_17C
  loc_BAA985: LitStr " WHERE ctacte.CodiOfic = 1"
  loc_BAA988: ConcatStr
  loc_BAA989: FStStrNoPop var_180
  loc_BAA98C: LitStr " AND ctacte.PeriCtct = "
  loc_BAA98F: ConcatStr
  loc_BAA990: FStStrNoPop var_18C
  loc_BAA993: FLdRfVar var_188
  loc_BAA996: FLdPr Me
  loc_BAA999: VCallAd Control_ID_PeriLiquTxt
  loc_BAA99C: FStAdFunc var_184
  loc_BAA99F: FLdPr var_184
  loc_BAA9A2:  = Me.Text
  loc_BAA9A7: ILdRf var_188
  loc_BAA9AA: ConcatStr
  loc_BAA9AB: FStStrNoPop var_190
  loc_BAA9AE: LitStr " AND ctacte.BimeCtct = "
  loc_BAA9B1: ConcatStr
  loc_BAA9B2: FStStrNoPop var_19C
  loc_BAA9B5: FLdRfVar var_198
  loc_BAA9B8: FLdPr Me
  loc_BAA9BB: VCallAd Control_ID_BimeLiquTxt
  loc_BAA9BE: FStAdFunc var_194
  loc_BAA9C1: FLdPr var_194
  loc_BAA9C4:  = Me.Text
  loc_BAA9C9: ILdRf var_198
  loc_BAA9CC: ConcatStr
  loc_BAA9CD: FStStrNoPop var_1A0
  loc_BAA9D0: LitStr " AND ctacte.MoviCtct = 1"
  loc_BAA9D3: ConcatStr
  loc_BAA9D4: FStStrNoPop var_1A4
  loc_BAA9D7: LitStr " AND ctacte.CodiConc = '"
  loc_BAA9DA: ConcatStr
  loc_BAA9DB: FStStrNoPop var_1AC
  loc_BAA9DE: FLdPr Me
  loc_BAA9E1: VCallAd Control_ID_CodiConcMsk
  loc_BAA9E4: FStAdFunc var_1A8
  loc_BAA9E7: FLdPr var_1A8
  loc_BAA9EA: LateIdLdVar var_C8 DispID_22 0
  loc_BAA9F1: CStrVarTmp
  loc_BAA9F2: FStStrNoPop var_1B0
  loc_BAA9F5: ConcatStr
  loc_BAA9F6: FStStrNoPop var_1B4
  loc_BAA9F9: LitStr "'"
  loc_BAA9FC: ConcatStr
  loc_BAA9FD: FStStrNoPop var_1B8
  loc_BAAA00: ILdRf var_88
  loc_BAAA03: ConcatStr
  loc_BAAA04: FStStrNoPop var_1BC
  loc_BAAA07: ILdRf var_8C
  loc_BAAA0A: ConcatStr
  loc_BAAA0B: FStStrNoPop var_1C0
  loc_BAAA0E: LitStr " HAVING Resta > Porcentaje"
  loc_BAAA11: ConcatStr
  loc_BAAA12: FStStrNoPop var_1C4
  loc_BAAA15: LitStr " ORDER BY liqutasa.CodiInmu"
  loc_BAAA18: ConcatStr
  loc_BAAA19: FStStrNoPop var_1C8
  loc_BAAA1C: FLdPr var_118
  loc_BAAA1F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BAAA24: FFreeStr var_198 = "": var_1A0 = "": var_1A4 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_CC = "": var_E4 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_14C = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_18C = "": var_188 = "": var_190 = ""
  loc_BAAA79: FFreeAd var_B4 = "": var_D0 = "": var_184 = "": var_194 = ""
  loc_BAAA86: FFree1Var var_C8 = ""
  loc_BAAA89: FLdRfVar var_B8
  loc_BAAA8C: FLdPr var_118
  loc_BAAA8F: from_stack_1 = clsctacte.RecordCount
  loc_BAAA94: ILdRf var_B8
  loc_BAAA97: LitI4 1
  loc_BAAA9C: LtI4
  loc_BAAA9D: BranchF loc_BAAAAB
  loc_BAAAA0: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BAAAA3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BAAAA8: Branch loc_BAABFC
  loc_BAAAAB: LitI4 0
  loc_BAAAB0: FLdRfVar var_B8
  loc_BAAAB3: FLdPr var_118
  loc_BAAAB6: from_stack_1 = clsctacte.RecordCount
  loc_BAAABB: ILdRf var_B8
  loc_BAAABE: FLdPr Me
  loc_BAAAC1: MemLdRfVar from_stack_1.global_84
  loc_BAAAC4: Redim
  loc_BAAACE: FLdPr var_118
  loc_BAAAD1: Call clsctacte.MoveFirst()
  loc_BAAAD6: LitI2_Byte 1
  loc_BAAAD8: FLdPr Me
  loc_BAAADB: MemLdRfVar from_stack_1.global_88
  loc_BAAADE: FLdPr Me
  loc_BAAAE1: MemLdStr global_84
  loc_BAAAE4: LitI2_Byte 1
  loc_BAAAE6: FnUBound
  loc_BAAAE8: CI2I4
  loc_BAAAE9: ForI2 var_1CC
  loc_BAAAEF: FLdRfVar var_CC
  loc_BAAAF2: FLdPr var_118
  loc_BAAAF5: from_stack_1 = clsctacte.CuenCtct
  loc_BAAAFA: LitI2_Byte 0
  loc_BAAAFC: LitVar_Missing var_E0
  loc_BAAAFF: LitI2_Byte 0
  loc_BAAB01: FLdZeroAd var_CC
  loc_BAAB04: CVarStr var_C8
  loc_BAAB07: PopAdLdVar
  loc_BAAB08: FLdPr Me
  loc_BAAB0B: MemLdI2 global_88
  loc_BAAB0E: CI4UI1
  loc_BAAB0F: FLdPr Me
  loc_BAAB12: MemLdStr global_84
  loc_BAAB15: AryLock
  loc_BAAB18: Ary1LdPr
  loc_BAAB19: MemLdRfVar from_stack_1.global_0
  loc_BAAB1C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAAB21: AryUnlock
  loc_BAAB24: FFreeVar var_C8 = ""
  loc_BAAB2B: FLdRfVar var_C8
  loc_BAAB2E: FLdPr var_118
  loc_BAAB31: from_stack_1 = clsctacte.DetaPers
  loc_BAAB36: LitI2_Byte 0
  loc_BAAB38: LitVar_Missing var_E0
  loc_BAAB3B: LitI2_Byte 0
  loc_BAAB3D: FLdVar var_C8
  loc_BAAB41: FLdPr Me
  loc_BAAB44: MemLdI2 global_88
  loc_BAAB47: CI4UI1
  loc_BAAB48: FLdPr Me
  loc_BAAB4B: MemLdStr global_84
  loc_BAAB4E: AryLock
  loc_BAAB51: Ary1LdPr
  loc_BAAB52: MemLdRfVar from_stack_1.global_4
  loc_BAAB55: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAAB5A: AryUnlock
  loc_BAAB5D: FFreeVar var_C8 = ""
  loc_BAAB64: FLdRfVar var_C8
  loc_BAAB67: FLdPr var_118
  loc_BAAB6A: from_stack_1 = clsctacte.ImpoCtct
  loc_BAAB6F: LitI2_Byte 0
  loc_BAAB71: LitVar_Missing var_E0
  loc_BAAB74: LitI2_Byte &HFF
  loc_BAAB76: FLdVar var_C8
  loc_BAAB7A: FLdPr Me
  loc_BAAB7D: MemLdI2 global_88
  loc_BAAB80: CI4UI1
  loc_BAAB81: FLdPr Me
  loc_BAAB84: MemLdStr global_84
  loc_BAAB87: AryLock
  loc_BAAB8A: Ary1LdPr
  loc_BAAB8B: MemLdRfVar from_stack_1.global_8
  loc_BAAB8E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAAB93: AryUnlock
  loc_BAAB96: FFreeVar var_C8 = ""
  loc_BAAB9D: FLdRfVar var_1D8
  loc_BAABA0: FLdPr var_118
  loc_BAABA3: from_stack_1 = clsctacte.DebeCtct
  loc_BAABA8: LitI2_Byte 0
  loc_BAABAA: LitVar_Missing var_C8
  loc_BAABAD: LitI2_Byte &HFF
  loc_BAABAF: FLdFPR8 var_1D8
  loc_BAABB2: CVarR8
  loc_BAABB6: PopAdLdVar
  loc_BAABB7: FLdPr Me
  loc_BAABBA: MemLdI2 global_88
  loc_BAABBD: CI4UI1
  loc_BAABBE: FLdPr Me
  loc_BAABC1: MemLdStr global_84
  loc_BAABC4: AryLock
  loc_BAABC7: Ary1LdPr
  loc_BAABC8: MemLdRfVar from_stack_1.global_12
  loc_BAABCB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAABD0: AryUnlock
  loc_BAABD3: FFree1Var var_C8 = ""
  loc_BAABD6: LitI2_Byte 1
  loc_BAABD8: PopTmpLdAd2 var_8E
  loc_BAABDB: FLdPr var_118
  loc_BAABDE: Call clsctacte.Move(from_stack_1v)
  loc_BAABE3: FLdPr Me
  loc_BAABE6: MemLdRfVar from_stack_1.global_88
  loc_BAABE9: NextI2 var_1CC, loc_BAAAEF
  loc_BAABEE: LitNothing
  loc_BAABF0: FStAd var_118 
  loc_BAABF4: LitI2_Byte &HFF
  loc_BAABF6: FLdPr Me
  loc_BAABF9: MemStI2 bGenerado
  loc_BAABFC: LitI4 0
  loc_BAAC01: CI2I4
  loc_BAAC02: FLdPr Me
  loc_BAAC05: Me.MousePointer = from_stack_1
  loc_BAAC0A: LitVarStr var_A0, vbNullString
  loc_BAAC0F: PopAdLdVar
  loc_BAAC10: FLdPr Me
  loc_BAAC13: VCallAd Control_ID_statusBar
  loc_BAAC16: FStAdFunc var_B4
  loc_BAAC19: FLdPr var_B4
  loc_BAAC1C: LateIdSt
  loc_BAAC21: FFree1Ad var_B4
  loc_BAAC24: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AF646C
  'Data Table: 4D4A94
  loc_AF62AC: FLdRfVar var_88
  loc_AF62AF: LitI2_Byte 0
  loc_AF62B1: LitI2_Byte &HFF
  loc_AF62B3: ImpAdLdI4 MemVar_D93C84
  loc_AF62B6: FLdPr Me
  loc_AF62B9: MemLdRfVar from_stack_1.global_56
  loc_AF62BC: NewIfNullPr IFileSystem3
  loc_AF62BF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AF62C4: ILdRf var_88
  loc_AF62C7: FLdPr Me
  loc_AF62CA: MemStVarAd
  loc_AF62CE: FFree1Ad var_88
  loc_AF62D1: LitI2_Byte &HFF
  loc_AF62D3: ImpAdStI2 MemVar_D93C8A
  loc_AF62D6: Call Proc_229_32_C0B86C()
  loc_AF62DB: LitI2_Byte 1
  loc_AF62DD: FLdPr Me
  loc_AF62E0: MemLdRfVar from_stack_1.global_88
  loc_AF62E3: FLdPr Me
  loc_AF62E6: MemLdStr global_84
  loc_AF62E9: LitI2_Byte 1
  loc_AF62EB: FnUBound
  loc_AF62ED: CI2I4
  loc_AF62EE: ForI2 var_8C
  loc_AF62F4: FLdPr Me
  loc_AF62F7: MemLdI2 global_88
  loc_AF62FA: CI4UI1
  loc_AF62FB: FLdPr Me
  loc_AF62FE: MemLdStr global_84
  loc_AF6301: AryLock
  loc_AF6304: Ary1LdRf
  loc_AF6305: FStR4 var_94
  loc_AF6308: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AF630D: PopAdLdVar
  loc_AF630E: FLdPr Me
  loc_AF6311: MemLdRfVar from_stack_1.global_60
  loc_AF6314: LdPrVar
  loc_AF6316: LateMemCall
  loc_AF631C: LitStr vbNullString
  loc_AF631F: LitI2_Byte 0
  loc_AF6321: LitI2_Byte 0
  loc_AF6323: LitI2_Byte 0
  loc_AF6325: LitStr "left"
  loc_AF6328: FMemLdR4 var_94(0)
  loc_AF632D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AF6332: CVarStr var_C4
  loc_AF6335: PopAdLdVar
  loc_AF6336: FLdPr Me
  loc_AF6339: MemLdRfVar from_stack_1.global_60
  loc_AF633C: LdPrVar
  loc_AF633E: LateMemCall
  loc_AF6344: FFree1Var var_C4 = ""
  loc_AF6347: LitStr vbNullString
  loc_AF634A: LitI2_Byte 0
  loc_AF634C: LitI2_Byte 0
  loc_AF634E: LitI2_Byte 0
  loc_AF6350: LitStr "left"
  loc_AF6353: FMemLdR4 var_94(4)
  loc_AF6358: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AF635D: CVarStr var_C4
  loc_AF6360: PopAdLdVar
  loc_AF6361: FLdPr Me
  loc_AF6364: MemLdRfVar from_stack_1.global_60
  loc_AF6367: LdPrVar
  loc_AF6369: LateMemCall
  loc_AF636F: FFree1Var var_C4 = ""
  loc_AF6372: LitStr vbNullString
  loc_AF6375: LitI2_Byte 0
  loc_AF6377: LitI2_Byte 0
  loc_AF6379: LitI2_Byte 0
  loc_AF637B: LitStr "right"
  loc_AF637E: FMemLdR4 var_94(8)
  loc_AF6383: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AF6388: CVarStr var_C4
  loc_AF638B: PopAdLdVar
  loc_AF638C: FLdPr Me
  loc_AF638F: MemLdRfVar from_stack_1.global_60
  loc_AF6392: LdPrVar
  loc_AF6394: LateMemCall
  loc_AF639A: FFree1Var var_C4 = ""
  loc_AF639D: LitStr vbNullString
  loc_AF63A0: LitI2_Byte 0
  loc_AF63A2: LitI2_Byte 0
  loc_AF63A4: LitI2_Byte 0
  loc_AF63A6: LitStr "right"
  loc_AF63A9: FMemLdR4 var_94(12)
  loc_AF63AE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AF63B3: CVarStr var_C4
  loc_AF63B6: PopAdLdVar
  loc_AF63B7: FLdPr Me
  loc_AF63BA: MemLdRfVar from_stack_1.global_60
  loc_AF63BD: LdPrVar
  loc_AF63BF: LateMemCall
  loc_AF63C5: FFree1Var var_C4 = ""
  loc_AF63C8: LitVarStr var_A4, "     </tr>"
  loc_AF63CD: PopAdLdVar
  loc_AF63CE: FLdPr Me
  loc_AF63D1: MemLdRfVar from_stack_1.global_60
  loc_AF63D4: LdPrVar
  loc_AF63D6: LateMemCall
  loc_AF63DC: LitI4 0
  loc_AF63E1: FStR4 var_94
  loc_AF63E4: AryUnlock
  loc_AF63E7: FLdPr Me
  loc_AF63EA: MemLdRfVar from_stack_1.global_88
  loc_AF63ED: NextI2 var_8C, loc_AF62F4
  loc_AF63F2: LitVarStr var_A4, "  <tr valign=""top"" class=""Totales"" align=""center"">"
  loc_AF63F7: PopAdLdVar
  loc_AF63F8: FLdPr Me
  loc_AF63FB: MemLdRfVar from_stack_1.global_60
  loc_AF63FE: LdPrVar
  loc_AF6400: LateMemCall
  loc_AF6406: LitStr "    <td colspan=""8"">Total ("
  loc_AF6409: FLdPr Me
  loc_AF640C: MemLdStr global_84
  loc_AF640F: LitI2_Byte 1
  loc_AF6411: FnUBound
  loc_AF6413: CStrI4
  loc_AF6415: FStStrNoPop var_C8
  loc_AF6418: ConcatStr
  loc_AF6419: FStStrNoPop var_CC
  loc_AF641C: LitStr " Registros)</td>"
  loc_AF641F: ConcatStr
  loc_AF6420: CVarStr var_C4
  loc_AF6423: PopAdLdVar
  loc_AF6424: FLdPr Me
  loc_AF6427: MemLdRfVar from_stack_1.global_60
  loc_AF642A: LdPrVar
  loc_AF642C: LateMemCall
  loc_AF6432: FFreeStr var_C8 = ""
  loc_AF6439: FFree1Var var_C4 = ""
  loc_AF643C: LitVarStr var_A4, "     </tr>"
  loc_AF6441: PopAdLdVar
  loc_AF6442: FLdPr Me
  loc_AF6445: MemLdRfVar from_stack_1.global_60
  loc_AF6448: LdPrVar
  loc_AF644A: LateMemCall
  loc_AF6450: Call Proc_229_33_A0B5D8()
  loc_AF6455: FLdPr Me
  loc_AF6458: MemLdRfVar from_stack_1.global_60
  loc_AF645B: LdPrVar
  loc_AF645D: LateMemCall
  loc_AF6463: LitStr vbNullString
  loc_AF6466: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_AF646B: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9BD1EC
  'Data Table: 4D4A94
  loc_9BD1D4: LitI2_Byte 0
  loc_9BD1D6: FLdPr Me
  loc_9BD1D9: MemStI2 bLogos
  loc_9BD1DC: Call GeneraHTML()
  loc_9BD1E1: LitI2_Byte &HFF
  loc_9BD1E3: FLdPr Me
  loc_9BD1E6: MemStI2 bLogos
  loc_9BD1E9: ExitProcHresult
End Sub

Private Function Proc_229_32_C0B86C() 'C0B86C
  'Data Table: 4D4A94
  loc_C0AF10: LitVarStr var_94, "<html>"
  loc_C0AF15: PopAdLdVar
  loc_C0AF16: FLdPr Me
  loc_C0AF19: MemLdRfVar from_stack_1.global_60
  loc_C0AF1C: LdPrVar
  loc_C0AF1E: LateMemCall
  loc_C0AF24: LitVarStr var_94, "<head>"
  loc_C0AF29: PopAdLdVar
  loc_C0AF2A: FLdPr Me
  loc_C0AF2D: MemLdRfVar from_stack_1.global_60
  loc_C0AF30: LdPrVar
  loc_C0AF32: LateMemCall
  loc_C0AF38: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C0AF3D: PopAdLdVar
  loc_C0AF3E: FLdPr Me
  loc_C0AF41: MemLdRfVar from_stack_1.global_60
  loc_C0AF44: LdPrVar
  loc_C0AF46: LateMemCall
  loc_C0AF4C: LitStr "<title>"
  loc_C0AF4F: FLdRfVar var_A8
  loc_C0AF52: FLdPr Me
  loc_C0AF55:  = Me.Caption
  loc_C0AF5A: ILdRf var_A8
  loc_C0AF5D: ConcatStr
  loc_C0AF5E: FStStrNoPop var_AC
  loc_C0AF61: LitStr "</title>"
  loc_C0AF64: ConcatStr
  loc_C0AF65: CVarStr var_BC
  loc_C0AF68: PopAdLdVar
  loc_C0AF69: FLdPr Me
  loc_C0AF6C: MemLdRfVar from_stack_1.global_60
  loc_C0AF6F: LdPrVar
  loc_C0AF71: LateMemCall
  loc_C0AF77: FFreeStr var_A8 = ""
  loc_C0AF7E: FFree1Var var_BC = ""
  loc_C0AF81: LitVarStr var_94, "<style type=""text/css"">"
  loc_C0AF86: PopAdLdVar
  loc_C0AF87: FLdPr Me
  loc_C0AF8A: MemLdRfVar from_stack_1.global_60
  loc_C0AF8D: LdPrVar
  loc_C0AF8F: LateMemCall
  loc_C0AF95: LitVarStr var_94, ".Titulo1 {"
  loc_C0AF9A: PopAdLdVar
  loc_C0AF9B: FLdPr Me
  loc_C0AF9E: MemLdRfVar from_stack_1.global_60
  loc_C0AFA1: LdPrVar
  loc_C0AFA3: LateMemCall
  loc_C0AFA9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C0AFAE: PopAdLdVar
  loc_C0AFAF: FLdPr Me
  loc_C0AFB2: MemLdRfVar from_stack_1.global_60
  loc_C0AFB5: LdPrVar
  loc_C0AFB7: LateMemCall
  loc_C0AFBD: LitVarStr var_94, " font-size: 18px;"
  loc_C0AFC2: PopAdLdVar
  loc_C0AFC3: FLdPr Me
  loc_C0AFC6: MemLdRfVar from_stack_1.global_60
  loc_C0AFC9: LdPrVar
  loc_C0AFCB: LateMemCall
  loc_C0AFD1: LitVarStr var_94, " font-weight: bold;"
  loc_C0AFD6: PopAdLdVar
  loc_C0AFD7: FLdPr Me
  loc_C0AFDA: MemLdRfVar from_stack_1.global_60
  loc_C0AFDD: LdPrVar
  loc_C0AFDF: LateMemCall
  loc_C0AFE5: LitVarStr var_94, "}"
  loc_C0AFEA: PopAdLdVar
  loc_C0AFEB: FLdPr Me
  loc_C0AFEE: MemLdRfVar from_stack_1.global_60
  loc_C0AFF1: LdPrVar
  loc_C0AFF3: LateMemCall
  loc_C0AFF9: LitVarStr var_94, ".Titulo2 {"
  loc_C0AFFE: PopAdLdVar
  loc_C0AFFF: FLdPr Me
  loc_C0B002: MemLdRfVar from_stack_1.global_60
  loc_C0B005: LdPrVar
  loc_C0B007: LateMemCall
  loc_C0B00D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C0B012: PopAdLdVar
  loc_C0B013: FLdPr Me
  loc_C0B016: MemLdRfVar from_stack_1.global_60
  loc_C0B019: LdPrVar
  loc_C0B01B: LateMemCall
  loc_C0B021: LitVarStr var_94, " font-size: 14px;"
  loc_C0B026: PopAdLdVar
  loc_C0B027: FLdPr Me
  loc_C0B02A: MemLdRfVar from_stack_1.global_60
  loc_C0B02D: LdPrVar
  loc_C0B02F: LateMemCall
  loc_C0B035: LitVarStr var_94, " font-weight: bold;"
  loc_C0B03A: PopAdLdVar
  loc_C0B03B: FLdPr Me
  loc_C0B03E: MemLdRfVar from_stack_1.global_60
  loc_C0B041: LdPrVar
  loc_C0B043: LateMemCall
  loc_C0B049: LitVarStr var_94, "}"
  loc_C0B04E: PopAdLdVar
  loc_C0B04F: FLdPr Me
  loc_C0B052: MemLdRfVar from_stack_1.global_60
  loc_C0B055: LdPrVar
  loc_C0B057: LateMemCall
  loc_C0B05D: LitVarStr var_94, ".Normal {"
  loc_C0B062: PopAdLdVar
  loc_C0B063: FLdPr Me
  loc_C0B066: MemLdRfVar from_stack_1.global_60
  loc_C0B069: LdPrVar
  loc_C0B06B: LateMemCall
  loc_C0B071: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C0B076: PopAdLdVar
  loc_C0B077: FLdPr Me
  loc_C0B07A: MemLdRfVar from_stack_1.global_60
  loc_C0B07D: LdPrVar
  loc_C0B07F: LateMemCall
  loc_C0B085: LitVarStr var_94, " font-size: 12px;"
  loc_C0B08A: PopAdLdVar
  loc_C0B08B: FLdPr Me
  loc_C0B08E: MemLdRfVar from_stack_1.global_60
  loc_C0B091: LdPrVar
  loc_C0B093: LateMemCall
  loc_C0B099: LitVarStr var_94, " font-style: normal;"
  loc_C0B09E: PopAdLdVar
  loc_C0B09F: FLdPr Me
  loc_C0B0A2: MemLdRfVar from_stack_1.global_60
  loc_C0B0A5: LdPrVar
  loc_C0B0A7: LateMemCall
  loc_C0B0AD: LitVarStr var_94, " font-weight: normal;"
  loc_C0B0B2: PopAdLdVar
  loc_C0B0B3: FLdPr Me
  loc_C0B0B6: MemLdRfVar from_stack_1.global_60
  loc_C0B0B9: LdPrVar
  loc_C0B0BB: LateMemCall
  loc_C0B0C1: LitVarStr var_94, " font-variant: normal;"
  loc_C0B0C6: PopAdLdVar
  loc_C0B0C7: FLdPr Me
  loc_C0B0CA: MemLdRfVar from_stack_1.global_60
  loc_C0B0CD: LdPrVar
  loc_C0B0CF: LateMemCall
  loc_C0B0D5: LitVarStr var_94, "}"
  loc_C0B0DA: PopAdLdVar
  loc_C0B0DB: FLdPr Me
  loc_C0B0DE: MemLdRfVar from_stack_1.global_60
  loc_C0B0E1: LdPrVar
  loc_C0B0E3: LateMemCall
  loc_C0B0E9: LitVarStr var_94, ".Encabezado {"
  loc_C0B0EE: PopAdLdVar
  loc_C0B0EF: FLdPr Me
  loc_C0B0F2: MemLdRfVar from_stack_1.global_60
  loc_C0B0F5: LdPrVar
  loc_C0B0F7: LateMemCall
  loc_C0B0FD: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C0B102: PopAdLdVar
  loc_C0B103: FLdPr Me
  loc_C0B106: MemLdRfVar from_stack_1.global_60
  loc_C0B109: LdPrVar
  loc_C0B10B: LateMemCall
  loc_C0B111: LitVarStr var_94, " font-size: 11px;"
  loc_C0B116: PopAdLdVar
  loc_C0B117: FLdPr Me
  loc_C0B11A: MemLdRfVar from_stack_1.global_60
  loc_C0B11D: LdPrVar
  loc_C0B11F: LateMemCall
  loc_C0B125: LitVarStr var_94, " font-weight: bold;"
  loc_C0B12A: PopAdLdVar
  loc_C0B12B: FLdPr Me
  loc_C0B12E: MemLdRfVar from_stack_1.global_60
  loc_C0B131: LdPrVar
  loc_C0B133: LateMemCall
  loc_C0B139: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C0B13E: PopAdLdVar
  loc_C0B13F: FLdPr Me
  loc_C0B142: MemLdRfVar from_stack_1.global_60
  loc_C0B145: LdPrVar
  loc_C0B147: LateMemCall
  loc_C0B14D: LitVarStr var_94, "}"
  loc_C0B152: PopAdLdVar
  loc_C0B153: FLdPr Me
  loc_C0B156: MemLdRfVar from_stack_1.global_60
  loc_C0B159: LdPrVar
  loc_C0B15B: LateMemCall
  loc_C0B161: LitVarStr var_94, ".LineaDato {"
  loc_C0B166: PopAdLdVar
  loc_C0B167: FLdPr Me
  loc_C0B16A: MemLdRfVar from_stack_1.global_60
  loc_C0B16D: LdPrVar
  loc_C0B16F: LateMemCall
  loc_C0B175: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C0B17A: PopAdLdVar
  loc_C0B17B: FLdPr Me
  loc_C0B17E: MemLdRfVar from_stack_1.global_60
  loc_C0B181: LdPrVar
  loc_C0B183: LateMemCall
  loc_C0B189: LitVarStr var_94, " font-size: 10px;"
  loc_C0B18E: PopAdLdVar
  loc_C0B18F: FLdPr Me
  loc_C0B192: MemLdRfVar from_stack_1.global_60
  loc_C0B195: LdPrVar
  loc_C0B197: LateMemCall
  loc_C0B19D: LitVarStr var_94, "}"
  loc_C0B1A2: PopAdLdVar
  loc_C0B1A3: FLdPr Me
  loc_C0B1A6: MemLdRfVar from_stack_1.global_60
  loc_C0B1A9: LdPrVar
  loc_C0B1AB: LateMemCall
  loc_C0B1B1: LitVarStr var_94, ".Totales {"
  loc_C0B1B6: PopAdLdVar
  loc_C0B1B7: FLdPr Me
  loc_C0B1BA: MemLdRfVar from_stack_1.global_60
  loc_C0B1BD: LdPrVar
  loc_C0B1BF: LateMemCall
  loc_C0B1C5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C0B1CA: PopAdLdVar
  loc_C0B1CB: FLdPr Me
  loc_C0B1CE: MemLdRfVar from_stack_1.global_60
  loc_C0B1D1: LdPrVar
  loc_C0B1D3: LateMemCall
  loc_C0B1D9: LitVarStr var_94, " font-size: 12px;"
  loc_C0B1DE: PopAdLdVar
  loc_C0B1DF: FLdPr Me
  loc_C0B1E2: MemLdRfVar from_stack_1.global_60
  loc_C0B1E5: LdPrVar
  loc_C0B1E7: LateMemCall
  loc_C0B1ED: LitVarStr var_94, " font-weight: bold;"
  loc_C0B1F2: PopAdLdVar
  loc_C0B1F3: FLdPr Me
  loc_C0B1F6: MemLdRfVar from_stack_1.global_60
  loc_C0B1F9: LdPrVar
  loc_C0B1FB: LateMemCall
  loc_C0B201: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C0B206: PopAdLdVar
  loc_C0B207: FLdPr Me
  loc_C0B20A: MemLdRfVar from_stack_1.global_60
  loc_C0B20D: LdPrVar
  loc_C0B20F: LateMemCall
  loc_C0B215: LitVarStr var_94, "}"
  loc_C0B21A: PopAdLdVar
  loc_C0B21B: FLdPr Me
  loc_C0B21E: MemLdRfVar from_stack_1.global_60
  loc_C0B221: LdPrVar
  loc_C0B223: LateMemCall
  loc_C0B229: LitVarStr var_94, ".SubTotales {"
  loc_C0B22E: PopAdLdVar
  loc_C0B22F: FLdPr Me
  loc_C0B232: MemLdRfVar from_stack_1.global_60
  loc_C0B235: LdPrVar
  loc_C0B237: LateMemCall
  loc_C0B23D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C0B242: PopAdLdVar
  loc_C0B243: FLdPr Me
  loc_C0B246: MemLdRfVar from_stack_1.global_60
  loc_C0B249: LdPrVar
  loc_C0B24B: LateMemCall
  loc_C0B251: LitVarStr var_94, " font-size: 10px;"
  loc_C0B256: PopAdLdVar
  loc_C0B257: FLdPr Me
  loc_C0B25A: MemLdRfVar from_stack_1.global_60
  loc_C0B25D: LdPrVar
  loc_C0B25F: LateMemCall
  loc_C0B265: LitVarStr var_94, " font-weight: bold;"
  loc_C0B26A: PopAdLdVar
  loc_C0B26B: FLdPr Me
  loc_C0B26E: MemLdRfVar from_stack_1.global_60
  loc_C0B271: LdPrVar
  loc_C0B273: LateMemCall
  loc_C0B279: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C0B27E: PopAdLdVar
  loc_C0B27F: FLdPr Me
  loc_C0B282: MemLdRfVar from_stack_1.global_60
  loc_C0B285: LdPrVar
  loc_C0B287: LateMemCall
  loc_C0B28D: LitVarStr var_94, "}"
  loc_C0B292: PopAdLdVar
  loc_C0B293: FLdPr Me
  loc_C0B296: MemLdRfVar from_stack_1.global_60
  loc_C0B299: LdPrVar
  loc_C0B29B: LateMemCall
  loc_C0B2A1: LitVarStr var_94, ".Tilde {"
  loc_C0B2A6: PopAdLdVar
  loc_C0B2A7: FLdPr Me
  loc_C0B2AA: MemLdRfVar from_stack_1.global_60
  loc_C0B2AD: LdPrVar
  loc_C0B2AF: LateMemCall
  loc_C0B2B5: LitVarStr var_94, " font-family: Wingdings;"
  loc_C0B2BA: PopAdLdVar
  loc_C0B2BB: FLdPr Me
  loc_C0B2BE: MemLdRfVar from_stack_1.global_60
  loc_C0B2C1: LdPrVar
  loc_C0B2C3: LateMemCall
  loc_C0B2C9: LitVarStr var_94, " font-size: 16px;"
  loc_C0B2CE: PopAdLdVar
  loc_C0B2CF: FLdPr Me
  loc_C0B2D2: MemLdRfVar from_stack_1.global_60
  loc_C0B2D5: LdPrVar
  loc_C0B2D7: LateMemCall
  loc_C0B2DD: LitVarStr var_94, "}"
  loc_C0B2E2: PopAdLdVar
  loc_C0B2E3: FLdPr Me
  loc_C0B2E6: MemLdRfVar from_stack_1.global_60
  loc_C0B2E9: LdPrVar
  loc_C0B2EB: LateMemCall
  loc_C0B2F1: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C0B2F6: PopAdLdVar
  loc_C0B2F7: FLdPr Me
  loc_C0B2FA: MemLdRfVar from_stack_1.global_60
  loc_C0B2FD: LdPrVar
  loc_C0B2FF: LateMemCall
  loc_C0B305: LitVarStr var_94, "</style>"
  loc_C0B30A: PopAdLdVar
  loc_C0B30B: FLdPr Me
  loc_C0B30E: MemLdRfVar from_stack_1.global_60
  loc_C0B311: LdPrVar
  loc_C0B313: LateMemCall
  loc_C0B319: LitI4 0
  loc_C0B31E: FStStrCopy var_AC
  loc_C0B321: FLdRfVar var_AC
  loc_C0B324: LitI4 0
  loc_C0B329: FStStrCopy var_A8
  loc_C0B32C: FLdRfVar var_A8
  loc_C0B32F: LitI2_Byte 0
  loc_C0B331: PopTmpLdAd2 var_BE
  loc_C0B334: FLdPr Me
  loc_C0B337: MemLdRfVar from_stack_1.global_60
  loc_C0B33A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C0B33F: FFreeStr var_A8 = ""
  loc_C0B346: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C0B34B: PopAdLdVar
  loc_C0B34C: FLdPr Me
  loc_C0B34F: MemLdRfVar from_stack_1.global_60
  loc_C0B352: LdPrVar
  loc_C0B354: LateMemCall
  loc_C0B35A: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C0B35F: PopAdLdVar
  loc_C0B360: FLdPr Me
  loc_C0B363: MemLdRfVar from_stack_1.global_60
  loc_C0B366: LdPrVar
  loc_C0B368: LateMemCall
  loc_C0B36E: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_C0B373: PopAdLdVar
  loc_C0B374: FLdPr Me
  loc_C0B377: MemLdRfVar from_stack_1.global_60
  loc_C0B37A: LdPrVar
  loc_C0B37C: LateMemCall
  loc_C0B382: FLdPr Me
  loc_C0B385: MemLdI2 bLogos
  loc_C0B388: BranchF loc_C0B3E3
  loc_C0B38B: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C0B38E: LitI2_Byte &H5F
  loc_C0B390: CStrUI1
  loc_C0B392: FStStrNoPop var_A8
  loc_C0B395: ConcatStr
  loc_C0B396: FStStrNoPop var_AC
  loc_C0B399: LitStr """ height="""
  loc_C0B39C: ConcatStr
  loc_C0B39D: FStStrNoPop var_C4
  loc_C0B3A0: LitI2_Byte &H3C
  loc_C0B3A2: CStrUI1
  loc_C0B3A4: FStStrNoPop var_C8
  loc_C0B3A7: ConcatStr
  loc_C0B3A8: FStStrNoPop var_CC
  loc_C0B3AB: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C0B3AE: ConcatStr
  loc_C0B3AF: FStStrNoPop var_D0
  loc_C0B3B2: LitStr "Municipalidad de Guaymallén"
  loc_C0B3B5: ConcatStr
  loc_C0B3B6: FStStrNoPop var_D4
  loc_C0B3B9: LitStr "</p>"
  loc_C0B3BC: ConcatStr
  loc_C0B3BD: CVarStr var_BC
  loc_C0B3C0: PopAdLdVar
  loc_C0B3C1: FLdPr Me
  loc_C0B3C4: MemLdRfVar from_stack_1.global_60
  loc_C0B3C7: LdPrVar
  loc_C0B3C9: LateMemCall
  loc_C0B3CF: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C0B3E0: FFree1Var var_BC = ""
  loc_C0B3E3: LitStr "    <p>"
  loc_C0B3E6: FLdRfVar var_A8
  loc_C0B3E9: FLdPr Me
  loc_C0B3EC:  = Me.Caption
  loc_C0B3F1: ILdRf var_A8
  loc_C0B3F4: ConcatStr
  loc_C0B3F5: FStStrNoPop var_AC
  loc_C0B3F8: LitStr "</p></th>"
  loc_C0B3FB: ConcatStr
  loc_C0B3FC: CVarStr var_BC
  loc_C0B3FF: PopAdLdVar
  loc_C0B400: FLdPr Me
  loc_C0B403: MemLdRfVar from_stack_1.global_60
  loc_C0B406: LdPrVar
  loc_C0B408: LateMemCall
  loc_C0B40E: FFreeStr var_A8 = ""
  loc_C0B415: FFree1Var var_BC = ""
  loc_C0B418: LitVarStr var_94, "  </tr>"
  loc_C0B41D: PopAdLdVar
  loc_C0B41E: FLdPr Me
  loc_C0B421: MemLdRfVar from_stack_1.global_60
  loc_C0B424: LdPrVar
  loc_C0B426: LateMemCall
  loc_C0B42C: LitVarStr var_94, "  <tr>"
  loc_C0B431: PopAdLdVar
  loc_C0B432: FLdPr Me
  loc_C0B435: MemLdRfVar from_stack_1.global_60
  loc_C0B438: LdPrVar
  loc_C0B43A: LateMemCall
  loc_C0B440: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_C0B445: PopAdLdVar
  loc_C0B446: FLdPr Me
  loc_C0B449: MemLdRfVar from_stack_1.global_60
  loc_C0B44C: LdPrVar
  loc_C0B44E: LateMemCall
  loc_C0B454: LitVarStr var_94, "  </tr>"
  loc_C0B459: PopAdLdVar
  loc_C0B45A: FLdPr Me
  loc_C0B45D: MemLdRfVar from_stack_1.global_60
  loc_C0B460: LdPrVar
  loc_C0B462: LateMemCall
  loc_C0B468: FLdPr Me
  loc_C0B46B: MemLdRfVar from_stack_1.global_76
  loc_C0B46E: NewIfNullAd
  loc_C0B471: FStAd var_D8 
  loc_C0B475: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C0B47A: PopAdLdVar
  loc_C0B47B: FLdPr Me
  loc_C0B47E: MemLdRfVar from_stack_1.global_60
  loc_C0B481: LdPrVar
  loc_C0B483: LateMemCall
  loc_C0B489: LitStr "    <td width=""50" & Chr(37) & """><strong>Periodo: </strong>"
  loc_C0B48C: FLdRfVar var_BE
  loc_C0B48F: FLdPr var_D8
  loc_C0B492: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C0B497: FLdI2 var_BE
  loc_C0B49A: CStrUI1
  loc_C0B49C: FStStrNoPop var_A8
  loc_C0B49F: ConcatStr
  loc_C0B4A0: FStStrNoPop var_AC
  loc_C0B4A3: LitStr "</td>"
  loc_C0B4A6: ConcatStr
  loc_C0B4A7: CVarStr var_BC
  loc_C0B4AA: PopAdLdVar
  loc_C0B4AB: FLdPr Me
  loc_C0B4AE: MemLdRfVar from_stack_1.global_60
  loc_C0B4B1: LdPrVar
  loc_C0B4B3: LateMemCall
  loc_C0B4B9: FFreeStr var_A8 = ""
  loc_C0B4C0: FFree1Var var_BC = ""
  loc_C0B4C3: LitVarStr var_94, "    <td width=""50" & Chr(37) & """><strong>Tipo de Liquidación: </strong>"
  loc_C0B4C8: FLdRfVar var_BC
  loc_C0B4CB: FLdPr var_D8
  loc_C0B4CE: from_stack_1 = clsliquidacion.DetaTili
  loc_C0B4D3: FLdRfVar var_BC
  loc_C0B4D6: ConcatVar var_E8
  loc_C0B4DA: LitVarStr var_A4, "</td>"
  loc_C0B4DF: ConcatVar var_F8
  loc_C0B4E3: PopAdLdVar
  loc_C0B4E4: FLdPr Me
  loc_C0B4E7: MemLdRfVar from_stack_1.global_60
  loc_C0B4EA: LdPrVar
  loc_C0B4EC: LateMemCall
  loc_C0B4F2: FFreeVar var_BC = "": var_E8 = ""
  loc_C0B4FB: LitVarStr var_94, "  </tr>"
  loc_C0B500: PopAdLdVar
  loc_C0B501: FLdPr Me
  loc_C0B504: MemLdRfVar from_stack_1.global_60
  loc_C0B507: LdPrVar
  loc_C0B509: LateMemCall
  loc_C0B50F: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C0B514: PopAdLdVar
  loc_C0B515: FLdPr Me
  loc_C0B518: MemLdRfVar from_stack_1.global_60
  loc_C0B51B: LdPrVar
  loc_C0B51D: LateMemCall
  loc_C0B523: LitStr "    <td><strong>Número: </strong>"
  loc_C0B526: FLdRfVar var_BE
  loc_C0B529: FLdPr var_D8
  loc_C0B52C: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C0B531: FLdI2 var_BE
  loc_C0B534: CStrUI1
  loc_C0B536: FStStrNoPop var_A8
  loc_C0B539: ConcatStr
  loc_C0B53A: FStStrNoPop var_AC
  loc_C0B53D: LitStr "</td>"
  loc_C0B540: ConcatStr
  loc_C0B541: CVarStr var_BC
  loc_C0B544: PopAdLdVar
  loc_C0B545: FLdPr Me
  loc_C0B548: MemLdRfVar from_stack_1.global_60
  loc_C0B54B: LdPrVar
  loc_C0B54D: LateMemCall
  loc_C0B553: FFreeStr var_A8 = ""
  loc_C0B55A: FFree1Var var_BC = ""
  loc_C0B55D: FLdRfVar var_A8
  loc_C0B560: FLdPr Me
  loc_C0B563: VCallAd Control_ID_PorcentajeTxt
  loc_C0B566: FStAdFunc var_10C
  loc_C0B569: FLdPr var_10C
  loc_C0B56C:  = Me.Text
  loc_C0B571: LitVarStr var_A4, "    <td><strong>Porcentaje de Comparación: </strong>"
  loc_C0B576: LitI4 1
  loc_C0B57B: LitI4 1
  loc_C0B580: LitVarStr var_94, "0.00"
  loc_C0B585: FStVarCopyObj var_E8
  loc_C0B588: FLdRfVar var_E8
  loc_C0B58B: FLdZeroAd var_A8
  loc_C0B58E: CVarStr var_BC
  loc_C0B591: FLdRfVar var_F8
  loc_C0B594: ImpAdCallFPR4  = Format(, )
  loc_C0B599: FLdRfVar var_F8
  loc_C0B59C: ConcatVar var_11C
  loc_C0B5A0: LitVarStr var_108, "</td>"
  loc_C0B5A5: ConcatVar var_12C
  loc_C0B5A9: PopAdLdVar
  loc_C0B5AA: FLdPr Me
  loc_C0B5AD: MemLdRfVar from_stack_1.global_60
  loc_C0B5B0: LdPrVar
  loc_C0B5B2: LateMemCall
  loc_C0B5B8: FFree1Ad var_10C
  loc_C0B5BB: FFreeVar var_BC = "": var_E8 = "": var_F8 = "": var_11C = ""
  loc_C0B5C8: LitVarStr var_94, "  </tr>"
  loc_C0B5CD: PopAdLdVar
  loc_C0B5CE: FLdPr Me
  loc_C0B5D1: MemLdRfVar from_stack_1.global_60
  loc_C0B5D4: LdPrVar
  loc_C0B5D6: LateMemCall
  loc_C0B5DC: FLdPr Me
  loc_C0B5DF: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_C0B5E2: FStAdFunc var_10C
  loc_C0B5E5: FLdPr var_10C
  loc_C0B5E8: LateIdLdVar var_BC DispID_22 0
  loc_C0B5EF: CStrVarTmp
  loc_C0B5F0: FStStrNoPop var_A8
  loc_C0B5F3: LitStr vbNullString
  loc_C0B5F6: NeStr
  loc_C0B5F8: FLdPr Me
  loc_C0B5FB: VCallAd Control_ID_CodiInmuHastaMsk
  loc_C0B5FE: FStAdFunc var_140
  loc_C0B601: FLdPr var_140
  loc_C0B604: LateIdLdVar var_E8 DispID_22 0
  loc_C0B60B: CStrVarTmp
  loc_C0B60C: FStStrNoPop var_AC
  loc_C0B60F: LitStr vbNullString
  loc_C0B612: NeStr
  loc_C0B614: OrI4
  loc_C0B615: FFreeStr var_A8 = ""
  loc_C0B61C: FFreeAd var_10C = ""
  loc_C0B623: FFreeVar var_BC = ""
  loc_C0B62A: BranchF loc_C0B795
  loc_C0B62D: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C0B632: PopAdLdVar
  loc_C0B633: FLdPr Me
  loc_C0B636: MemLdRfVar from_stack_1.global_60
  loc_C0B639: LdPrVar
  loc_C0B63B: LateMemCall
  loc_C0B641: FLdPr Me
  loc_C0B644: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_C0B647: FStAdFunc var_10C
  loc_C0B64A: FLdPr var_10C
  loc_C0B64D: LateIdLdVar var_BC DispID_22 0
  loc_C0B654: PopAd
  loc_C0B656: FLdPr Me
  loc_C0B659: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_C0B65C: FStAdFunc var_140
  loc_C0B65F: FLdPr var_140
  loc_C0B662: LateIdLdVar var_E8 DispID_22 0
  loc_C0B669: PopAd
  loc_C0B66B: LitVarStr var_108, "    <td><strong>"
  loc_C0B670: LitVarStr var_A4, "&nbsp;"
  loc_C0B675: FStVarCopyObj var_11C
  loc_C0B678: FLdRfVar var_11C
  loc_C0B67B: LitStr "Desde Cuenta: </strong>"
  loc_C0B67E: FLdRfVar var_E8
  loc_C0B681: CStrVarTmp
  loc_C0B682: FStStrNoPop var_AC
  loc_C0B685: ConcatStr
  loc_C0B686: CVarStr var_F8
  loc_C0B689: FLdRfVar var_BC
  loc_C0B68C: CStrVarTmp
  loc_C0B68D: FStStrNoPop var_A8
  loc_C0B690: LitStr vbNullString
  loc_C0B693: NeStr
  loc_C0B695: CVarBoolI2 var_94
  loc_C0B699: FLdRfVar var_12C
  loc_C0B69C: ImpAdCallFPR4  = IIf(, , )
  loc_C0B6A1: FLdRfVar var_12C
  loc_C0B6A4: ConcatVar var_150
  loc_C0B6A8: LitVarStr var_13C, "</td>"
  loc_C0B6AD: ConcatVar var_160
  loc_C0B6B1: PopAdLdVar
  loc_C0B6B2: FLdPr Me
  loc_C0B6B5: MemLdRfVar from_stack_1.global_60
  loc_C0B6B8: LdPrVar
  loc_C0B6BA: LateMemCall
  loc_C0B6C0: FFreeStr var_A8 = ""
  loc_C0B6C7: FFreeAd var_10C = ""
  loc_C0B6CE: FFreeVar var_BC = "": var_E8 = "": var_94 = "": var_F8 = "": var_11C = "": var_12C = "": var_150 = ""
  loc_C0B6E1: FLdPr Me
  loc_C0B6E4: VCallAd Control_ID_CodiInmuHastaMsk
  loc_C0B6E7: FStAdFunc var_10C
  loc_C0B6EA: FLdPr var_10C
  loc_C0B6ED: LateIdLdVar var_BC DispID_22 0
  loc_C0B6F4: PopAd
  loc_C0B6F6: FLdPr Me
  loc_C0B6F9: VCallAd Control_ID_CodiInmuHastaMsk
  loc_C0B6FC: FStAdFunc var_140
  loc_C0B6FF: FLdPr var_140
  loc_C0B702: LateIdLdVar var_E8 DispID_22 0
  loc_C0B709: PopAd
  loc_C0B70B: LitVarStr var_108, "    <td><strong>"
  loc_C0B710: LitVarStr var_A4, "&nbsp;"
  loc_C0B715: FStVarCopyObj var_11C
  loc_C0B718: FLdRfVar var_11C
  loc_C0B71B: LitStr "Hasta Cuenta: </strong>"
  loc_C0B71E: FLdRfVar var_E8
  loc_C0B721: CStrVarTmp
  loc_C0B722: FStStrNoPop var_AC
  loc_C0B725: ConcatStr
  loc_C0B726: CVarStr var_F8
  loc_C0B729: FLdRfVar var_BC
  loc_C0B72C: CStrVarTmp
  loc_C0B72D: FStStrNoPop var_A8
  loc_C0B730: LitStr vbNullString
  loc_C0B733: NeStr
  loc_C0B735: CVarBoolI2 var_94
  loc_C0B739: FLdRfVar var_12C
  loc_C0B73C: ImpAdCallFPR4  = IIf(, , )
  loc_C0B741: FLdRfVar var_12C
  loc_C0B744: ConcatVar var_150
  loc_C0B748: LitVarStr var_13C, "</td>"
  loc_C0B74D: ConcatVar var_160
  loc_C0B751: PopAdLdVar
  loc_C0B752: FLdPr Me
  loc_C0B755: MemLdRfVar from_stack_1.global_60
  loc_C0B758: LdPrVar
  loc_C0B75A: LateMemCall
  loc_C0B760: FFreeStr var_A8 = ""
  loc_C0B767: FFreeAd var_10C = ""
  loc_C0B76E: FFreeVar var_BC = "": var_E8 = "": var_94 = "": var_F8 = "": var_11C = "": var_12C = "": var_150 = ""
  loc_C0B781: LitVarStr var_94, "  </tr>"
  loc_C0B786: PopAdLdVar
  loc_C0B787: FLdPr Me
  loc_C0B78A: MemLdRfVar from_stack_1.global_60
  loc_C0B78D: LdPrVar
  loc_C0B78F: LateMemCall
  loc_C0B795: LitNothing
  loc_C0B797: FStAd var_D8 
  loc_C0B79B: LitVarStr var_94, "</table>"
  loc_C0B7A0: PopAdLdVar
  loc_C0B7A1: FLdPr Me
  loc_C0B7A4: MemLdRfVar from_stack_1.global_60
  loc_C0B7A7: LdPrVar
  loc_C0B7A9: LateMemCall
  loc_C0B7AF: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C0B7B4: PopAdLdVar
  loc_C0B7B5: FLdPr Me
  loc_C0B7B8: MemLdRfVar from_stack_1.global_60
  loc_C0B7BB: LdPrVar
  loc_C0B7BD: LateMemCall
  loc_C0B7C3: LitVarStr var_94, "  <thead>"
  loc_C0B7C8: PopAdLdVar
  loc_C0B7C9: FLdPr Me
  loc_C0B7CC: MemLdRfVar from_stack_1.global_60
  loc_C0B7CF: LdPrVar
  loc_C0B7D1: LateMemCall
  loc_C0B7D7: LitI2_Byte &HFF
  loc_C0B7D9: ImpAdStI2 MemVar_D93C88
  loc_C0B7DC: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C0B7E1: PopAdLdVar
  loc_C0B7E2: FLdPr Me
  loc_C0B7E5: MemLdRfVar from_stack_1.global_60
  loc_C0B7E8: LdPrVar
  loc_C0B7EA: LateMemCall
  loc_C0B7F0: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_C0B7F5: PopAdLdVar
  loc_C0B7F6: FLdPr Me
  loc_C0B7F9: MemLdRfVar from_stack_1.global_60
  loc_C0B7FC: LdPrVar
  loc_C0B7FE: LateMemCall
  loc_C0B804: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_C0B809: PopAdLdVar
  loc_C0B80A: FLdPr Me
  loc_C0B80D: MemLdRfVar from_stack_1.global_60
  loc_C0B810: LdPrVar
  loc_C0B812: LateMemCall
  loc_C0B818: LitVarStr var_94, "    <th>Importe Liquidación</th>"
  loc_C0B81D: PopAdLdVar
  loc_C0B81E: FLdPr Me
  loc_C0B821: MemLdRfVar from_stack_1.global_60
  loc_C0B824: LdPrVar
  loc_C0B826: LateMemCall
  loc_C0B82C: LitVarStr var_94, "    <th>Importe CtaCte</th>"
  loc_C0B831: PopAdLdVar
  loc_C0B832: FLdPr Me
  loc_C0B835: MemLdRfVar from_stack_1.global_60
  loc_C0B838: LdPrVar
  loc_C0B83A: LateMemCall
  loc_C0B840: LitVarStr var_94, "  </tr>"
  loc_C0B845: PopAdLdVar
  loc_C0B846: FLdPr Me
  loc_C0B849: MemLdRfVar from_stack_1.global_60
  loc_C0B84C: LdPrVar
  loc_C0B84E: LateMemCall
  loc_C0B854: LitVarStr var_94, "  </thead>"
  loc_C0B859: PopAdLdVar
  loc_C0B85A: FLdPr Me
  loc_C0B85D: MemLdRfVar from_stack_1.global_60
  loc_C0B860: LdPrVar
  loc_C0B862: LateMemCall
  loc_C0B868: ExitProcHresult
  loc_C0B869: EqI2
  loc_C0B86A: NeR8
End Function

Private Function Proc_229_33_A0B5D8() 'A0B5D8
  'Data Table: 4D4A94
  loc_A0B598: LitVarStr var_94, "</table>"
  loc_A0B59D: PopAdLdVar
  loc_A0B59E: FLdPr Me
  loc_A0B5A1: MemLdRfVar from_stack_1.global_60
  loc_A0B5A4: LdPrVar
  loc_A0B5A6: LateMemCall
  loc_A0B5AC: LitVarStr var_94, "</body>"
  loc_A0B5B1: PopAdLdVar
  loc_A0B5B2: FLdPr Me
  loc_A0B5B5: MemLdRfVar from_stack_1.global_60
  loc_A0B5B8: LdPrVar
  loc_A0B5BA: LateMemCall
  loc_A0B5C0: LitVarStr var_94, "</html>"
  loc_A0B5C5: PopAdLdVar
  loc_A0B5C6: FLdPr Me
  loc_A0B5C9: MemLdRfVar from_stack_1.global_60
  loc_A0B5CC: LdPrVar
  loc_A0B5CE: LateMemCall
  loc_A0B5D4: ExitProcHresult
End Function
