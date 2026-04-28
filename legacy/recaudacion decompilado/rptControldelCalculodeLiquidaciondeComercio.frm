VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptControldelCalculodeLiquidaciondeComercio
  Caption = "Control del Cálculo de Liquidación de Comercio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControldelCalculodeLiquidaciondeComercio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11640
  ClientHeight = 7920
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7665
    Width = 11640
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 10320
    Top = 6600
    Width = 855
    Height = 735
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptControldelCalculodeLiquidaciondeComercio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercio.frx":0B9C
    Left = 10920
    Top = 5280
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 6360
    Width = 1815
    Height = 1215
    TabIndex = 10
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
      TabIndex = 5
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
    Top = 6360
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11415
    Height = 6255
    TabIndex = 8
    Begin VB.Frame Frame4
      Caption = "Cuenta"
      Left = 240
      Top = 5160
      Width = 9495
      Height = 975
      TabIndex = 13
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin MSMask.MaskEdBox CodiComeDesdeMsk
        Left = 2610
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercio.frx":0C00
      End
      Begin MSMask.MaskEdBox CodiComeHastaMsk
        Left = 5730
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercio.frx":0C98
      End
      Begin VB.Label Label2
        Caption = "Desde:"
        Left = 1800
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 15
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
      Begin VB.Label Label3
        Caption = "Hasta:"
        Left = 4965
        Top = 360
        Width = 705
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
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9720
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 6
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
    Begin MSDataGridLib.DataGrid dgdLiquidacion
      Left = 240
      Top = 240
      Width = 9360
      Height = 4755
      TabIndex = 0
      OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercio.frx":0D30
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10440
    Top = 6840
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercio.frx":1036
  End
End

Attribute VB_Name = "rptControldelCalculodeLiquidaciondeComercio"

Public bGenerado As Boolean

Private Type UDT_1_00562720
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_00562720
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_3_00564F58
  bStruc(36) As Byte ' String fields: 5
End Type

Private Type UDT_4_00564FAC
  bStruc(36) As Byte ' String fields: 9
End Type


Private Sub CodiComeHastaMsk_UnknownEvent_0 '9C6668
  'Data Table: 47A71C
  loc_9C6654: FLdPr Me
  loc_9C6657: VCallAd Control_ID_CodiComeHastaMsk
  loc_9C665A: CVarAd
  loc_9C665E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6663: FFree1Var var_94 = ""
  loc_9C6666: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A62D10
  'Data Table: 47A71C
  loc_A62CA4: LitVar_FALSE
  loc_A62CA8: PopAdLdVar
  loc_A62CA9: FLdPr Me
  loc_A62CAC: VCallAd Control_ID_dgdLiquidacion
  loc_A62CAF: FStAdFunc var_A8
  loc_A62CB2: FLdPr var_A8
  loc_A62CB5: LateIdSt
  loc_A62CBA: FFree1Ad var_A8
  loc_A62CBD: LitI2_Byte 0
  loc_A62CBF: ILdRf Me
  loc_A62CC2: CastAd
  loc_A62CC5: FStAdFunc var_A8
  loc_A62CC8: FLdRfVar var_A8
  loc_A62CCB: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A62CD0: FFree1Ad var_A8
  loc_A62CD3: FLdRfVar var_AA
  loc_A62CD6: FLdPr Me
  loc_A62CD9: VCallAd Control_ID_cmdPredeterminada
  loc_A62CDC: FStAdFunc var_A8
  loc_A62CDF: FLdPr var_A8
  loc_A62CE2:  = Me.Enabled
  loc_A62CE7: FLdI2 var_AA
  loc_A62CEA: NotI4
  loc_A62CEB: FFree1Ad var_A8
  loc_A62CEE: BranchF loc_A62CF9
  loc_A62CF1: ImpAdCallFPR4 DoEvents()
  loc_A62CF6: Branch loc_A62CD3
  loc_A62CF9: ILdRf Me
  loc_A62CFC: FStAdNoPop
  loc_A62D00: ImpAdLdRf MemVar_D9C5D8
  loc_A62D03: NewIfNullPr Global
  loc_A62D06: Global.Unload from_stack_1
  loc_A62D0B: FFree1Ad var_A8
  loc_A62D0E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ACE084
  'Data Table: 47A71C
  loc_ACDF60: LitI2_Byte 0
  loc_ACDF62: FLdPr Me
  loc_ACDF65: MemStI2 bGenerado
  loc_ACDF68: LitI2_Byte 0
  loc_ACDF6A: ILdRf Me
  loc_ACDF6D: CastAd
  loc_ACDF70: FStAdFunc var_88
  loc_ACDF73: FLdRfVar var_88
  loc_ACDF76: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_ACDF7B: FFree1Ad var_88
  loc_ACDF7E: FLdPr Me
  loc_ACDF81: MemLdRfVar from_stack_1.global_76
  loc_ACDF84: NewIfNullPr clsliquidacion
  loc_ACDF87: Call clsliquidacion.Requery()
  loc_ACDF8C: LitVarStr var_98, vbNullString
  loc_ACDF91: PopAdLdVar
  loc_ACDF92: FLdPr Me
  loc_ACDF95: VCallAd Control_ID_CodiComeDesdeMsk
  loc_ACDF98: FStAdFunc var_88
  loc_ACDF9B: FLdPr var_88
  loc_ACDF9E: LateIdSt
  loc_ACDFA3: FFree1Ad var_88
  loc_ACDFA6: LitVarStr var_98, vbNullString
  loc_ACDFAB: PopAdLdVar
  loc_ACDFAC: FLdPr Me
  loc_ACDFAF: VCallAd Control_ID_CodiComeHastaMsk
  loc_ACDFB2: FStAdFunc var_88
  loc_ACDFB5: FLdPr var_88
  loc_ACDFB8: LateIdSt
  loc_ACDFBD: FFree1Ad var_88
  loc_ACDFC0: FLdRfVar var_AC
  loc_ACDFC3: FLdPr Me
  loc_ACDFC6: MemLdRfVar from_stack_1.global_76
  loc_ACDFC9: NewIfNullPr clsliquidacion
  loc_ACDFCC: from_stack_1 = clsliquidacion.RecordCount
  loc_ACDFD1: ILdRf var_AC
  loc_ACDFD4: LitI4 0
  loc_ACDFD9: GtI4
  loc_ACDFDA: BranchF loc_ACE04C
  loc_ACDFDD: LitI4 0
  loc_ACDFE2: LitI4 1
  loc_ACDFE7: FLdRfVar var_B0
  loc_ACDFEA: Redim
  loc_ACDFF4: FLdPr Me
  loc_ACDFF7: MemLdRfVar from_stack_1.global_76
  loc_ACDFFA: NewIfNullAd
  loc_ACDFFD: FStAd var_88 
  loc_ACE001: FLdRfVar var_88
  loc_ACE004: CVarRef
  loc_ACE009: ParmAry1St
  loc_ACE00F: FLdPr Me
  loc_ACE012: VCallAd Control_ID_dgdLiquidacion
  loc_ACE015: CVarAd
  loc_ACE019: ParmAry1St
  loc_ACE01F: FLdRfVar var_B0
  loc_ACE022: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ACE027: ILdRf var_88
  loc_ACE02A: CastAd
  loc_ACE02D: FLdPr Me
  loc_ACE030: MemStAdFunc
  loc_ACE034: FLdRfVar var_B0
  loc_ACE037: Erase
  loc_ACE038: FFree1Ad var_88
  loc_ACE03B: FLdPr Me
  loc_ACE03E: MemLdRfVar from_stack_1.global_76
  loc_ACE041: NewIfNullPr clsliquidacion
  loc_ACE044: Call clsliquidacion.MoveLast()
  loc_ACE049: Branch loc_ACE068
  loc_ACE04C: LitStr "No existen liquidaciones para listar"
  loc_ACE04F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACE054: ILdRf Me
  loc_ACE057: CastAd
  loc_ACE05A: FStAdFunc var_88
  loc_ACE05D: FLdRfVar var_88
  loc_ACE060: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_ACE065: FFree1Ad var_88
  loc_ACE068: Call HabilitarCriterio()
  loc_ACE06D: ILdRf Me
  loc_ACE070: CastAd
  loc_ACE073: FStAdFunc var_88
  loc_ACE076: FLdRfVar var_88
  loc_ACE079: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ACE07E: FFree1Ad var_88
  loc_ACE081: ExitProcHresult
End Sub

Private Sub CodiComeDesdeMsk_UnknownEvent_0 '9C6620
  'Data Table: 47A71C
  loc_9C660C: FLdPr Me
  loc_9C660F: VCallAd Control_ID_CodiComeDesdeMsk
  loc_9C6612: CVarAd
  loc_9C6616: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C661B: FFree1Var var_94 = ""
  loc_9C661E: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() 'A03314
  'Data Table: 47A71C
  loc_A032E4: LitVar_FALSE
  loc_A032E8: PopAdLdVar
  loc_A032E9: FLdPr Me
  loc_A032EC: VCallAd Control_ID_dgdLiquidacion
  loc_A032EF: FStAdFunc var_A8
  loc_A032F2: FLdPr var_A8
  loc_A032F5: LateIdSt
  loc_A032FA: FFree1Ad var_A8
  loc_A032FD: ILdRf Me
  loc_A03300: CastAd
  loc_A03303: FStAdFunc var_A8
  loc_A03306: FLdRfVar var_A8
  loc_A03309: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_A0330E: FFree1Ad var_A8
  loc_A03311: ExitProcHresult
End Sub

Private Sub Form_Load() 'A25B40
  'Data Table: 47A71C
  loc_A25B00: ILdRf Me
  loc_A25B03: CastAd
  loc_A25B06: FStAdFunc var_88
  loc_A25B09: FLdRfVar var_88
  loc_A25B0C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A25B11: FFree1Ad var_88
  loc_A25B14: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, BimeLiqu, TipoLiqu, FealLiqu"
  loc_A25B17: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A25B1A: ConcatStr
  loc_A25B1B: FStStrNoPop var_8C
  loc_A25B1E: LitStr " WHERE liquidacion.CodiOfic = 2 ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A25B21: ConcatStr
  loc_A25B22: FStStrNoPop var_90
  loc_A25B25: FLdPr Me
  loc_A25B28: MemLdRfVar from_stack_1.global_76
  loc_A25B2B: NewIfNullPr clsliquidacion
  loc_A25B2E: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A25B33: FFreeStr var_8C = ""
  loc_A25B3A: Call cmdNueva_Click()
  loc_A25B3F: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CA134
  'Data Table: 47A71C
  loc_9CA11C: FLdPr Me
  loc_9CA11F: VCallAd Control_ID_wbbReporte
  loc_9CA122: FStAdFunc var_88
  loc_9CA125: FLdRfVar var_88
  loc_9CA128: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CA12D: FFree1Ad var_88
  loc_9CA130: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'A066D8
  'Data Table: 47A71C
  loc_A066A4: LitVar_FALSE
  loc_A066A8: PopAdLdVar
  loc_A066A9: FLdPr Me
  loc_A066AC: VCallAd Control_ID_dgdLiquidacion
  loc_A066AF: FStAdFunc var_A8
  loc_A066B2: FLdPr var_A8
  loc_A066B5: LateIdSt
  loc_A066BA: FFree1Ad var_A8
  loc_A066BD: LitI2_Byte 0
  loc_A066BF: PopTmpLdAd2 var_AA
  loc_A066C2: ILdRf Me
  loc_A066C5: CastAd
  loc_A066C8: FStAdFunc var_A8
  loc_A066CB: FLdRfVar var_A8
  loc_A066CE: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_A066D3: FFree1Ad var_A8
  loc_A066D6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A17A10
  'Data Table: 47A71C
  loc_A179D8: FLdPr Me
  loc_A179DB: VCallAd Control_ID_statusBar
  loc_A179DE: FStAdFunc var_88
  loc_A179E1: FLdPr var_88
  loc_A179E4: LateIdLdVar var_98 DispID_1 0
  loc_A179EB: CStrVarTmp
  loc_A179EC: CVarStr var_A8
  loc_A179EF: PopAdLdVar
  loc_A179F0: FLdPr Me
  loc_A179F3: VCallAd Control_ID_statusBar
  loc_A179F6: FStAdFunc var_BC
  loc_A179F9: FLdPr var_BC
  loc_A179FC: LateIdSt
  loc_A17A01: FFreeAd var_88 = ""
  loc_A17A08: FFreeVar var_98 = ""
  loc_A17A0F: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A03440
  'Data Table: 47A71C
  loc_A03410: LitVarStr var_94, "Cerrando..."
  loc_A03415: PopAdLdVar
  loc_A03416: FLdPr Me
  loc_A03419: VCallAd Control_ID_statusBar
  loc_A0341C: FStAdFunc var_A8
  loc_A0341F: FLdPr var_A8
  loc_A03422: LateIdSt
  loc_A03427: FFree1Ad var_A8
  loc_A0342A: ILdRf Me
  loc_A0342D: FStAdNoPop
  loc_A03431: ImpAdLdRf MemVar_D9C5D8
  loc_A03434: NewIfNullPr Global
  loc_A03437: Global.Unload from_stack_1
  loc_A0343C: FFree1Ad var_A8
  loc_A0343F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '47B41C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47B42B
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5DDD0
  'Data Table: 47A71C
  loc_A5DD7C: LitI4 0
  loc_A5DD81: LitI4 2
  loc_A5DD86: FLdRfVar var_88
  loc_A5DD89: Redim
  loc_A5DD93: FLdPr Me
  loc_A5DD96: VCallAd Control_ID_dgdLiquidacion
  loc_A5DD99: CVarAd
  loc_A5DD9D: ParmAry1St
  loc_A5DDA3: FLdPr Me
  loc_A5DDA6: VCallAd Control_ID_CodiComeDesdeMsk
  loc_A5DDA9: CVarAd
  loc_A5DDAD: ParmAry1St
  loc_A5DDB3: FLdPr Me
  loc_A5DDB6: VCallAd Control_ID_CodiComeHastaMsk
  loc_A5DDB9: CVarAd
  loc_A5DDBD: ParmAry1St
  loc_A5DDC3: FLdRfVar var_88
  loc_A5DDC6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5DDCB: FLdRfVar var_88
  loc_A5DDCE: Erase
  loc_A5DDCF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B84214
  'Data Table: 47A71C
  loc_B83D6C: FLdPr Me
  loc_B83D6F: MemLdI2 bGenerado
  loc_B83D72: BranchF loc_B83D76
  loc_B83D75: ExitProcHresult
  loc_B83D76: LitVarStr var_9C, "Generando reporte..."
  loc_B83D7B: PopAdLdVar
  loc_B83D7C: FLdPr Me
  loc_B83D7F: VCallAd Control_ID_statusBar
  loc_B83D82: FStAdFunc var_B0
  loc_B83D85: FLdPr var_B0
  loc_B83D88: LateIdSt
  loc_B83D8D: FFree1Ad var_B0
  loc_B83D90: LitI4 &HB
  loc_B83D95: CI2I4
  loc_B83D96: FLdPr Me
  loc_B83D99: Me.MousePointer = from_stack_1
  loc_B83D9E: FLdRfVar var_B4
  loc_B83DA1: FLdPr Me
  loc_B83DA4: MemLdRfVar from_stack_1.global_76
  loc_B83DA7: NewIfNullPr clsliquidacion
  loc_B83DAA: from_stack_1 = clsliquidacion.RecordCount
  loc_B83DAF: ILdRf var_B4
  loc_B83DB2: LitI4 1
  loc_B83DB7: LtI4
  loc_B83DB8: BranchF loc_B83DC6
  loc_B83DBB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B83DBE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B83DC3: Branch loc_B841E8
  loc_B83DC6: FLdPr Me
  loc_B83DC9: VCallAd Control_ID_CodiComeDesdeMsk
  loc_B83DCC: FStAdFunc var_B0
  loc_B83DCF: FLdPr var_B0
  loc_B83DD2: LateIdLdVar var_C4 DispID_22 0
  loc_B83DD9: PopAd
  loc_B83DDB: FLdPr Me
  loc_B83DDE: VCallAd Control_ID_CodiComeDesdeMsk
  loc_B83DE1: FStAdFunc var_CC
  loc_B83DE4: FLdPr var_CC
  loc_B83DE7: LateIdLdVar var_DC DispID_22 0
  loc_B83DEE: PopAd
  loc_B83DF0: LitVarStr var_AC, vbNullString
  loc_B83DF5: FStVarCopyObj var_100
  loc_B83DF8: FLdRfVar var_100
  loc_B83DFB: LitStr " AND liqucome.CodiCome >= "
  loc_B83DFE: FLdRfVar var_DC
  loc_B83E01: CStrVarTmp
  loc_B83E02: FStStrNoPop var_E0
  loc_B83E05: ConcatStr
  loc_B83E06: CVarStr var_F0
  loc_B83E09: FLdRfVar var_C4
  loc_B83E0C: CStrVarTmp
  loc_B83E0D: FStStrNoPop var_C8
  loc_B83E10: LitStr vbNullString
  loc_B83E13: NeStr
  loc_B83E15: CVarBoolI2 var_9C
  loc_B83E19: FLdRfVar var_110
  loc_B83E1C: ImpAdCallFPR4  = IIf(, , )
  loc_B83E21: FLdRfVar var_110
  loc_B83E24: CStrVarTmp
  loc_B83E25: FStStr var_88
  loc_B83E28: FFreeStr var_C8 = ""
  loc_B83E2F: FFreeAd var_B0 = ""
  loc_B83E36: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F0 = "": var_100 = ""
  loc_B83E45: FLdPr Me
  loc_B83E48: VCallAd Control_ID_CodiComeHastaMsk
  loc_B83E4B: FStAdFunc var_B0
  loc_B83E4E: FLdPr var_B0
  loc_B83E51: LateIdLdVar var_C4 DispID_22 0
  loc_B83E58: PopAd
  loc_B83E5A: FLdPr Me
  loc_B83E5D: VCallAd Control_ID_CodiComeHastaMsk
  loc_B83E60: FStAdFunc var_CC
  loc_B83E63: FLdPr var_CC
  loc_B83E66: LateIdLdVar var_DC DispID_22 0
  loc_B83E6D: PopAd
  loc_B83E6F: LitVarStr var_AC, vbNullString
  loc_B83E74: FStVarCopyObj var_100
  loc_B83E77: FLdRfVar var_100
  loc_B83E7A: LitStr " AND liqucome.CodiCome <= "
  loc_B83E7D: FLdRfVar var_DC
  loc_B83E80: CStrVarTmp
  loc_B83E81: FStStrNoPop var_E0
  loc_B83E84: ConcatStr
  loc_B83E85: CVarStr var_F0
  loc_B83E88: FLdRfVar var_C4
  loc_B83E8B: CStrVarTmp
  loc_B83E8C: FStStrNoPop var_C8
  loc_B83E8F: LitStr vbNullString
  loc_B83E92: NeStr
  loc_B83E94: CVarBoolI2 var_9C
  loc_B83E98: FLdRfVar var_110
  loc_B83E9B: ImpAdCallFPR4  = IIf(, , )
  loc_B83EA0: FLdRfVar var_110
  loc_B83EA3: CStrVarTmp
  loc_B83EA4: FStStr var_8C
  loc_B83EA7: FFreeStr var_C8 = ""
  loc_B83EAE: FFreeAd var_B0 = ""
  loc_B83EB5: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F0 = "": var_100 = ""
  loc_B83EC4: FLdPr Me
  loc_B83EC7: MemLdRfVar from_stack_1.global_80
  loc_B83ECA: NewIfNullAd
  loc_B83ECD: FStAd var_114 
  loc_B83ED1: LitStr "SELECT comercio.CodiCome, liqucome.TipoVenc, DetaPers, DecpCome, NupoCome, OrdeLico, DeudLico, liqucome.CodiConc, DetaConc,"
  loc_B83ED4: LitStr " licodeta.CodiRubr, DetaRubr, licodeta.CodiSubr, DetaSubr, cast(ifnull(ImpoLcde,0) as DECIMAL(10,2)) as ImpoLcde,"
  loc_B83ED7: ConcatStr
  loc_B83ED8: FStStrNoPop var_C8
  loc_B83EDB: LitStr " ImpoLico, ExenLico, DescLico, CrafLico, TotaLico, TipoLico FROM liqucome"
  loc_B83EDE: ConcatStr
  loc_B83EDF: FStStrNoPop var_E0
  loc_B83EE2: LitStr " INNER JOIN comercio ON comercio.CodiCome = liqucome.CodiCome"
  loc_B83EE5: ConcatStr
  loc_B83EE6: FStStrNoPop var_118
  loc_B83EE9: LitStr " INNER JOIN relacion ON relacion.CodiOfic = 2 AND relacion.CuenCtct = comercio.CodiCome AND relacion.TipoRela = 'Titular'"
  loc_B83EEC: ConcatStr
  loc_B83EED: FStStrNoPop var_11C
  loc_B83EF0: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_B83EF3: ConcatStr
  loc_B83EF4: FStStrNoPop var_120
  loc_B83EF7: LitStr " LEFT JOIN infogov.calle ON infogov.calle.CodiCall = liqucome.CodiCall"
  loc_B83EFA: ConcatStr
  loc_B83EFB: FStStrNoPop var_124
  loc_B83EFE: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_B83F01: ConcatStr
  loc_B83F02: FStStrNoPop var_128
  loc_B83F05: ImpAdLdI2 MemVar_D93034
  loc_B83F08: CStrUI1
  loc_B83F0A: FStStrNoPop var_12C
  loc_B83F0D: ConcatStr
  loc_B83F0E: FStStrNoPop var_130
  loc_B83F11: LitStr " AND concepto.CodiConc = liqucome.CodiConc"
  loc_B83F14: ConcatStr
  loc_B83F15: FStStrNoPop var_134
  loc_B83F18: LitStr " LEFT JOIN licodeta ON licodeta.PeriLiqu = liqucome.PeriLiqu AND licodeta.BimeLiqu = liqucome.BimeLiqu AND licodeta.CodiTili = liqucome.CodiTili AND licodeta.NumeLiqu = liqucome.NumeLiqu AND licodeta.CodiCome = liqucome.CodiCome  AND licodeta.CodiConc = liqucome.CodiConc AND licodeta.TipoVenc = liqucome.TipoVenc"
  loc_B83F1B: ConcatStr
  loc_B83F1C: FStStrNoPop var_138
  loc_B83F1F: LitStr " LEFT JOIN rubro ON rubro.CodiRamo = licodeta.CodiRamo AND rubro.CodiRubr = licodeta.CodiRubr"
  loc_B83F22: ConcatStr
  loc_B83F23: FStStrNoPop var_13C
  loc_B83F26: LitStr " LEFT JOIN subrubro ON subrubro.CodiRamo = licodeta.CodiRamo AND subrubro.CodiRubr = licodeta.CodiRubr AND subrubro.PeriOrde = licodeta.PeriOrde AND subrubro.CodiSubr = licodeta.CodiSubr"
  loc_B83F29: ConcatStr
  loc_B83F2A: FStStrNoPop var_140
  loc_B83F2D: LitStr " LEFT JOIN taricome ON taricome.CodiRamo = licodeta.CodiRamo AND taricome.CodiRubr = licodeta.CodiRubr"
  loc_B83F30: ConcatStr
  loc_B83F31: FStStrNoPop var_144
  loc_B83F34: LitStr " WHERE liqucome.PeriLiqu = "
  loc_B83F37: ConcatStr
  loc_B83F38: FStStrNoPop var_14C
  loc_B83F3B: FLdRfVar var_146
  loc_B83F3E: FLdPr Me
  loc_B83F41: MemLdRfVar from_stack_1.global_76
  loc_B83F44: NewIfNullPr clsliquidacion
  loc_B83F47: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B83F4C: FLdI2 var_146
  loc_B83F4F: CStrUI1
  loc_B83F51: FStStrNoPop var_150
  loc_B83F54: ConcatStr
  loc_B83F55: FStStrNoPop var_154
  loc_B83F58: LitStr " AND liqucome.CodiTili = "
  loc_B83F5B: ConcatStr
  loc_B83F5C: FStStrNoPop var_15C
  loc_B83F5F: FLdRfVar var_156
  loc_B83F62: FLdPr Me
  loc_B83F65: MemLdRfVar from_stack_1.global_76
  loc_B83F68: NewIfNullPr clsliquidacion
  loc_B83F6B: from_stack_1 = clsliquidacion.CodiTili
  loc_B83F70: FLdUI1
  loc_B83F74: CStrI2
  loc_B83F76: FStStrNoPop var_160
  loc_B83F79: ConcatStr
  loc_B83F7A: FStStrNoPop var_164
  loc_B83F7D: LitStr " AND liqucome.NumeLiqu = "
  loc_B83F80: ConcatStr
  loc_B83F81: FStStrNoPop var_16C
  loc_B83F84: FLdRfVar var_166
  loc_B83F87: FLdPr Me
  loc_B83F8A: MemLdRfVar from_stack_1.global_76
  loc_B83F8D: NewIfNullPr clsliquidacion
  loc_B83F90: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B83F95: FLdI2 var_166
  loc_B83F98: CStrUI1
  loc_B83F9A: FStStrNoPop var_170
  loc_B83F9D: ConcatStr
  loc_B83F9E: FStStrNoPop var_174
  loc_B83FA1: ILdRf var_88
  loc_B83FA4: ConcatStr
  loc_B83FA5: FStStrNoPop var_178
  loc_B83FA8: ILdRf var_8C
  loc_B83FAB: ConcatStr
  loc_B83FAC: FStStrNoPop var_17C
  loc_B83FAF: LitStr " GROUP BY liqucome.PeriLiqu, liqucome.CodiTili, liqucome.NumeLiqu, liqucome.CodiCome, liqucome.CodiConc, liqucome.TipoVenc, licodeta.CodiRubr, licodeta.CodiSubr"
  loc_B83FB2: ConcatStr
  loc_B83FB3: FStStrNoPop var_180
  loc_B83FB6: LitStr " ORDER BY liqucome.PeriLiqu, liqucome.BimeLiqu, liqucome.CodiTili, liqucome.NumeLiqu, liqucome.CodiCome, "
  loc_B83FB9: ConcatStr
  loc_B83FBA: FStStrNoPop var_184
  loc_B83FBD: LitStr " liqucome.CodiConc, TipoVenc, licodeta.CodiRubr, licodeta.CodiSubr"
  loc_B83FC0: ConcatStr
  loc_B83FC1: FStStrNoPop var_188
  loc_B83FC4: FLdPr var_114
  loc_B83FC7: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_B83FCC: FFreeStr var_C8 = "": var_E0 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_14C = "": var_150 = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_B84007: FLdRfVar var_B4
  loc_B8400A: FLdPr var_114
  loc_B8400D: from_stack_1 = clsliqucome.RecordCount
  loc_B84012: ILdRf var_B4
  loc_B84015: LitI4 1
  loc_B8401A: LtI4
  loc_B8401B: BranchF loc_B84029
  loc_B8401E: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B84021: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B84026: Branch loc_B841E8
  loc_B84029: LitI4 0
  loc_B8402E: FLdPr Me
  loc_B84031: MemStI4 global_88
  loc_B84034: LitI4 0
  loc_B84039: LitI4 1
  loc_B8403E: FLdPr Me
  loc_B84041: MemLdRfVar from_stack_1.global_96
  loc_B84044: Redim
  loc_B8404E: LitI4 0
  loc_B84053: LitI4 1
  loc_B84058: FLdPr Me
  loc_B8405B: MemLdRfVar from_stack_1.global_84
  loc_B8405E: Redim
  loc_B84068: FLdPr var_114
  loc_B8406B: Call clsliqucome.MoveFirst()
  loc_B84070: Call Proc_171_15_B0DE3C()
  loc_B84075: FLdRfVar var_146
  loc_B84078: FLdPr var_114
  loc_B8407B: from_stack_1 = clsliqucome.EOF
  loc_B84080: FLdI2 var_146
  loc_B84083: NotI4
  loc_B84084: BranchF loc_B84126
  loc_B84087: FLdRfVar var_B4
  loc_B8408A: FLdPr var_114
  loc_B8408D: from_stack_1 = clsliqucome.CodiCome
  loc_B84092: ILdRf var_B4
  loc_B84095: CR8I4
  loc_B84096: FLdPr Me
  loc_B84099: MemLdStr global_88
  loc_B8409C: FLdPr Me
  loc_B8409F: MemLdStr global_84
  loc_B840A2: Ary1LdPr
  loc_B840A3: MemLdStr global_0
  loc_B840A6: CR8Str
  loc_B840A8: NeR8
  loc_B840A9: BranchF loc_B840B4
  loc_B840AC: Call Proc_171_15_B0DE3C()
  loc_B840B1: Branch loc_B84123
  loc_B840B4: FLdRfVar var_C8
  loc_B840B7: FLdPr var_114
  loc_B840BA: from_stack_1 = clsliqucome.CodiConc
  loc_B840BF: ILdRf var_C8
  loc_B840C2: FLdPr Me
  loc_B840C5: MemLdUI1 global_92
  loc_B840C9: CI4UI1
  loc_B840CA: FLdPr Me
  loc_B840CD: MemLdStr global_88
  loc_B840D0: FLdPr Me
  loc_B840D3: MemLdStr global_84
  loc_B840D6: Ary1LdPr
  loc_B840D7: MemLdStr global_28
  loc_B840DA: Ary1LdPr
  loc_B840DB: MemLdStr global_0
  loc_B840DE: NeStr
  loc_B840E0: FLdRfVar var_146
  loc_B840E3: FLdPr var_114
  loc_B840E6: from_stack_1 = clsliqucome.TipoVenc
  loc_B840EB: FLdUI1
  loc_B840EF: CR8I2
  loc_B840F0: FLdPr Me
  loc_B840F3: MemLdUI1 global_92
  loc_B840F7: CI4UI1
  loc_B840F8: FLdPr Me
  loc_B840FB: MemLdStr global_88
  loc_B840FE: FLdPr Me
  loc_B84101: MemLdStr global_84
  loc_B84104: Ary1LdPr
  loc_B84105: MemLdStr global_28
  loc_B84108: Ary1LdPr
  loc_B84109: MemLdStr global_8
  loc_B8410C: CR8Str
  loc_B8410E: NeR8
  loc_B8410F: OrI4
  loc_B84110: FFree1Str var_C8
  loc_B84113: BranchF loc_B8411E
  loc_B84116: Call Proc_171_16_B13A44()
  loc_B8411B: Branch loc_B84123
  loc_B8411E: Call Proc_171_17_AF918C()
  loc_B84123: Branch loc_B84075
  loc_B84126: LitNothing
  loc_B84128: FStAd var_114 
  loc_B8412C: LitI4 1
  loc_B84131: FLdPr Me
  loc_B84134: MemLdRfVar from_stack_1.global_88
  loc_B84137: FLdPr Me
  loc_B8413A: MemLdStr global_84
  loc_B8413D: LitI2_Byte 1
  loc_B8413F: FnUBound
  loc_B84141: ForI4 var_190
  loc_B84147: FLdPr Me
  loc_B8414A: MemLdStr global_88
  loc_B8414D: FLdPr Me
  loc_B84150: MemLdStr global_84
  loc_B84153: AryLock
  loc_B84156: Ary1LdRf
  loc_B84157: FStR4 var_198
  loc_B8415A: LitI2_Byte 1
  loc_B8415C: CUI1I2
  loc_B8415E: FLdPr Me
  loc_B84161: MemLdRfVar from_stack_1.global_92
  loc_B84164: FLdPr Me
  loc_B84167: MemLdStr global_88
  loc_B8416A: FLdPr Me
  loc_B8416D: MemLdStr global_84
  loc_B84170: Ary1LdPr
  loc_B84171: MemLdStr global_28
  loc_B84174: LitI2_Byte 1
  loc_B84176: FnUBound
  loc_B84178: CUI1I4
  loc_B8417A: ForUI1 var_19C
  loc_B84180: FMemLdI2 var_198(32)
  loc_B84185: CI4UI1
  loc_B84186: FLdPr Me
  loc_B84189: MemLdUI1 global_92
  loc_B8418D: CI4UI1
  loc_B8418E: FMemLdR4 var_198(28)
  loc_B84193: Ary1LdPr
  loc_B84194: MemLdStr global_32
  loc_B84197: LitI2_Byte 1
  loc_B84199: FnUBound
  loc_B8419B: AddI4
  loc_B8419C: CI2I4
  loc_B8419D: FMemStI2 var_198(32)
  loc_B841A2: FLdPr Me
  loc_B841A5: MemLdRfVar from_stack_1.global_92
  loc_B841A8: NextUI1
  loc_B841AE: FMemLdI2 var_198(32)
  loc_B841B3: CI4UI1
  loc_B841B4: FMemLdR4 var_198(28)
  loc_B841B9: LitI2_Byte 1
  loc_B841BB: FnUBound
  loc_B841BD: AddI4
  loc_B841BE: LitI4 1
  loc_B841C3: AddI4
  loc_B841C4: CI2I4
  loc_B841C5: FMemStI2 var_198(32)
  loc_B841CA: LitI4 0
  loc_B841CF: FStR4 var_198
  loc_B841D2: AryUnlock
  loc_B841D5: FLdPr Me
  loc_B841D8: MemLdRfVar from_stack_1.global_88
  loc_B841DB: NextI4 var_190, loc_B84147
  loc_B841E0: LitI2_Byte &HFF
  loc_B841E2: FLdPr Me
  loc_B841E5: MemStI2 bGenerado
  loc_B841E8: LitI4 0
  loc_B841ED: CI2I4
  loc_B841EE: FLdPr Me
  loc_B841F1: Me.MousePointer = from_stack_1
  loc_B841F6: LitVarStr var_9C, vbNullString
  loc_B841FB: PopAdLdVar
  loc_B841FC: FLdPr Me
  loc_B841FF: VCallAd Control_ID_statusBar
  loc_B84202: FStAdFunc var_B0
  loc_B84205: FLdPr var_B0
  loc_B84208: LateIdSt
  loc_B8420D: FFree1Ad var_B0
  loc_B84210: ExitProcHresult
  loc_B84211: CRec2Ansi GeneraReporte87
End Sub

Public Sub GeneraHTML() 'BA31F8
  'Data Table: 47A71C
  loc_BA2BF8: FLdRfVar var_88
  loc_BA2BFB: LitI2_Byte 0
  loc_BA2BFD: LitI2_Byte &HFF
  loc_BA2BFF: ImpAdLdI4 MemVar_D93C84
  loc_BA2C02: FLdPr Me
  loc_BA2C05: MemLdRfVar from_stack_1.global_56
  loc_BA2C08: NewIfNullPr IFileSystem3
  loc_BA2C0B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BA2C10: ILdRf var_88
  loc_BA2C13: FLdPr Me
  loc_BA2C16: MemStVarAd
  loc_BA2C1A: FFree1Ad var_88
  loc_BA2C1D: LitI2_Byte &HFF
  loc_BA2C1F: ImpAdStI2 MemVar_D93C8A
  loc_BA2C22: Call Proc_171_18_C20D68()
  loc_BA2C27: LitI4 1
  loc_BA2C2C: FLdPr Me
  loc_BA2C2F: MemLdRfVar from_stack_1.global_88
  loc_BA2C32: FLdPr Me
  loc_BA2C35: MemLdStr global_84
  loc_BA2C38: LitI2_Byte 1
  loc_BA2C3A: FnUBound
  loc_BA2C3C: ForI4 var_90
  loc_BA2C42: FLdPr Me
  loc_BA2C45: MemLdStr global_88
  loc_BA2C48: FLdPr Me
  loc_BA2C4B: MemLdStr global_84
  loc_BA2C4E: AryLock
  loc_BA2C51: Ary1LdRf
  loc_BA2C52: FStR4 var_98
  loc_BA2C55: LitVarStr var_A8, "  <tr align=""left"" valign=""top"" class=""LineaDato"">"
  loc_BA2C5A: PopAdLdVar
  loc_BA2C5B: FLdPr Me
  loc_BA2C5E: MemLdRfVar from_stack_1.global_60
  loc_BA2C61: LdPrVar
  loc_BA2C63: LateMemCall
  loc_BA2C69: LitStr "    <td rowspan="""
  loc_BA2C6C: FMemLdI2 var_98(32)
  loc_BA2C71: CStrUI1
  loc_BA2C73: FStStrNoPop var_BC
  loc_BA2C76: ConcatStr
  loc_BA2C77: FStStrNoPop var_C0
  loc_BA2C7A: LitStr """>"
  loc_BA2C7D: ConcatStr
  loc_BA2C7E: FStStrNoPop var_C4
  loc_BA2C81: FMemLdR4 var_98(0)
  loc_BA2C86: ConcatStr
  loc_BA2C87: FStStrNoPop var_C8
  loc_BA2C8A: LitStr "</td>"
  loc_BA2C8D: ConcatStr
  loc_BA2C8E: CVarStr var_D8
  loc_BA2C91: PopAdLdVar
  loc_BA2C92: FLdPr Me
  loc_BA2C95: MemLdRfVar from_stack_1.global_60
  loc_BA2C98: LdPrVar
  loc_BA2C9A: LateMemCall
  loc_BA2CA0: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BA2CAB: FFree1Var var_D8 = ""
  loc_BA2CAE: LitStr "    <td>"
  loc_BA2CB1: FMemLdR4 var_98(4)
  loc_BA2CB6: ConcatStr
  loc_BA2CB7: FStStrNoPop var_BC
  loc_BA2CBA: LitStr "</td>"
  loc_BA2CBD: ConcatStr
  loc_BA2CBE: CVarStr var_D8
  loc_BA2CC1: PopAdLdVar
  loc_BA2CC2: FLdPr Me
  loc_BA2CC5: MemLdRfVar from_stack_1.global_60
  loc_BA2CC8: LdPrVar
  loc_BA2CCA: LateMemCall
  loc_BA2CD0: FFree1Str var_BC
  loc_BA2CD3: FFree1Var var_D8 = ""
  loc_BA2CD6: LitStr "    <td colspan=""6"">"
  loc_BA2CD9: FMemLdR4 var_98(8)
  loc_BA2CDE: ConcatStr
  loc_BA2CDF: FStStrNoPop var_BC
  loc_BA2CE2: LitStr " "
  loc_BA2CE5: ConcatStr
  loc_BA2CE6: FStStrNoPop var_C0
  loc_BA2CE9: FMemLdR4 var_98(12)
  loc_BA2CEE: ConcatStr
  loc_BA2CEF: FStStrNoPop var_C4
  loc_BA2CF2: LitStr "</td>"
  loc_BA2CF5: ConcatStr
  loc_BA2CF6: CVarStr var_D8
  loc_BA2CF9: PopAdLdVar
  loc_BA2CFA: FLdPr Me
  loc_BA2CFD: MemLdRfVar from_stack_1.global_60
  loc_BA2D00: LdPrVar
  loc_BA2D02: LateMemCall
  loc_BA2D08: FFreeStr var_BC = "": var_C0 = ""
  loc_BA2D11: FFree1Var var_D8 = ""
  loc_BA2D14: LitStr "    <td align=""right"">"
  loc_BA2D17: FMemLdR4 var_98(16)
  loc_BA2D1C: ConcatStr
  loc_BA2D1D: FStStrNoPop var_BC
  loc_BA2D20: LitStr "</td>"
  loc_BA2D23: ConcatStr
  loc_BA2D24: CVarStr var_D8
  loc_BA2D27: PopAdLdVar
  loc_BA2D28: FLdPr Me
  loc_BA2D2B: MemLdRfVar from_stack_1.global_60
  loc_BA2D2E: LdPrVar
  loc_BA2D30: LateMemCall
  loc_BA2D36: FFree1Str var_BC
  loc_BA2D39: FFree1Var var_D8 = ""
  loc_BA2D3C: LitStr "    <td colspan=""2"" align=""center"" nowrap=""nowrap"">"
  loc_BA2D3F: FMemLdR4 var_98(20)
  loc_BA2D44: ConcatStr
  loc_BA2D45: FStStrNoPop var_BC
  loc_BA2D48: LitStr "</td>"
  loc_BA2D4B: ConcatStr
  loc_BA2D4C: CVarStr var_D8
  loc_BA2D4F: PopAdLdVar
  loc_BA2D50: FLdPr Me
  loc_BA2D53: MemLdRfVar from_stack_1.global_60
  loc_BA2D56: LdPrVar
  loc_BA2D58: LateMemCall
  loc_BA2D5E: FFree1Str var_BC
  loc_BA2D61: FFree1Var var_D8 = ""
  loc_BA2D64: LitStr "    <td align=""right"">"
  loc_BA2D67: FMemLdR4 var_98(24)
  loc_BA2D6C: ConcatStr
  loc_BA2D6D: FStStrNoPop var_BC
  loc_BA2D70: LitStr "</td>"
  loc_BA2D73: ConcatStr
  loc_BA2D74: CVarStr var_D8
  loc_BA2D77: PopAdLdVar
  loc_BA2D78: FLdPr Me
  loc_BA2D7B: MemLdRfVar from_stack_1.global_60
  loc_BA2D7E: LdPrVar
  loc_BA2D80: LateMemCall
  loc_BA2D86: FFree1Str var_BC
  loc_BA2D89: FFree1Var var_D8 = ""
  loc_BA2D8C: LitVarStr var_A8, "  </tr>"
  loc_BA2D91: PopAdLdVar
  loc_BA2D92: FLdPr Me
  loc_BA2D95: MemLdRfVar from_stack_1.global_60
  loc_BA2D98: LdPrVar
  loc_BA2D9A: LateMemCall
  loc_BA2DA0: LitI2_Byte 1
  loc_BA2DA2: CUI1I2
  loc_BA2DA4: FLdPr Me
  loc_BA2DA7: MemLdRfVar from_stack_1.global_92
  loc_BA2DAA: FMemLdR4 var_98(28)
  loc_BA2DAF: LitI2_Byte 1
  loc_BA2DB1: FnUBound
  loc_BA2DB3: CUI1I4
  loc_BA2DB5: ForUI1 var_DC
  loc_BA2DBB: FLdPr Me
  loc_BA2DBE: MemLdUI1 global_92
  loc_BA2DC2: CI4UI1
  loc_BA2DC3: FMemLdR4 var_98(28)
  loc_BA2DC8: AryLock
  loc_BA2DCB: Ary1LdRf
  loc_BA2DCC: FStR4 var_E4
  loc_BA2DCF: LitVarStr var_A8, "  <tr align=""right"" valign=""top"" class=""LineaDato"">"
  loc_BA2DD4: PopAdLdVar
  loc_BA2DD5: FLdPr Me
  loc_BA2DD8: MemLdRfVar from_stack_1.global_60
  loc_BA2DDB: LdPrVar
  loc_BA2DDD: LateMemCall
  loc_BA2DE3: LitStr "    <td colspan=""4"" align=""left"">"
  loc_BA2DE6: FMemLdR4 var_E4(0)
  loc_BA2DEB: ConcatStr
  loc_BA2DEC: FStStrNoPop var_BC
  loc_BA2DEF: LitStr " - "
  loc_BA2DF2: ConcatStr
  loc_BA2DF3: FStStrNoPop var_C0
  loc_BA2DF6: FMemLdR4 var_E4(4)
  loc_BA2DFB: ConcatStr
  loc_BA2DFC: FStStrNoPop var_C4
  loc_BA2DFF: LitStr " <strong>("
  loc_BA2E02: ConcatStr
  loc_BA2E03: FStStrNoPop var_C8
  loc_BA2E06: FMemLdR4 var_E4(8)
  loc_BA2E0B: ConcatStr
  loc_BA2E0C: FStStrNoPop var_E8
  loc_BA2E0F: LitStr ")</strong></td>"
  loc_BA2E12: ConcatStr
  loc_BA2E13: CVarStr var_D8
  loc_BA2E16: PopAdLdVar
  loc_BA2E17: FLdPr Me
  loc_BA2E1A: MemLdRfVar from_stack_1.global_60
  loc_BA2E1D: LdPrVar
  loc_BA2E1F: LateMemCall
  loc_BA2E25: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_BA2E32: FFree1Var var_D8 = ""
  loc_BA2E35: FMemLdRf 0
  loc_BA2E3A: FStR4 var_EC
  loc_BA2E3D: LitStr "    <td>"
  loc_BA2E40: FMemLdR4 var_EC(0)
  loc_BA2E45: ConcatStr
  loc_BA2E46: FStStrNoPop var_BC
  loc_BA2E49: LitStr "</td>"
  loc_BA2E4C: ConcatStr
  loc_BA2E4D: CVarStr var_D8
  loc_BA2E50: PopAdLdVar
  loc_BA2E51: FLdPr Me
  loc_BA2E54: MemLdRfVar from_stack_1.global_60
  loc_BA2E57: LdPrVar
  loc_BA2E59: LateMemCall
  loc_BA2E5F: FFree1Str var_BC
  loc_BA2E62: FFree1Var var_D8 = ""
  loc_BA2E65: LitStr "    <td>"
  loc_BA2E68: FMemLdR4 var_EC(4)
  loc_BA2E6D: ConcatStr
  loc_BA2E6E: FStStrNoPop var_BC
  loc_BA2E71: LitStr "</td>"
  loc_BA2E74: ConcatStr
  loc_BA2E75: CVarStr var_D8
  loc_BA2E78: PopAdLdVar
  loc_BA2E79: FLdPr Me
  loc_BA2E7C: MemLdRfVar from_stack_1.global_60
  loc_BA2E7F: LdPrVar
  loc_BA2E81: LateMemCall
  loc_BA2E87: FFree1Str var_BC
  loc_BA2E8A: FFree1Var var_D8 = ""
  loc_BA2E8D: LitStr "    <td>"
  loc_BA2E90: FMemLdR4 var_EC(8)
  loc_BA2E95: ConcatStr
  loc_BA2E96: FStStrNoPop var_BC
  loc_BA2E99: LitStr "</td>"
  loc_BA2E9C: ConcatStr
  loc_BA2E9D: CVarStr var_D8
  loc_BA2EA0: PopAdLdVar
  loc_BA2EA1: FLdPr Me
  loc_BA2EA4: MemLdRfVar from_stack_1.global_60
  loc_BA2EA7: LdPrVar
  loc_BA2EA9: LateMemCall
  loc_BA2EAF: FFree1Str var_BC
  loc_BA2EB2: FFree1Var var_D8 = ""
  loc_BA2EB5: LitStr "    <td>"
  loc_BA2EB8: FMemLdR4 var_EC(12)
  loc_BA2EBD: ConcatStr
  loc_BA2EBE: FStStrNoPop var_BC
  loc_BA2EC1: LitStr "</td>"
  loc_BA2EC4: ConcatStr
  loc_BA2EC5: CVarStr var_D8
  loc_BA2EC8: PopAdLdVar
  loc_BA2EC9: FLdPr Me
  loc_BA2ECC: MemLdRfVar from_stack_1.global_60
  loc_BA2ECF: LdPrVar
  loc_BA2ED1: LateMemCall
  loc_BA2ED7: FFree1Str var_BC
  loc_BA2EDA: FFree1Var var_D8 = ""
  loc_BA2EDD: LitStr "    <td colspan=""3""><strong>"
  loc_BA2EE0: FMemLdR4 var_EC(16)
  loc_BA2EE5: ConcatStr
  loc_BA2EE6: FStStrNoPop var_BC
  loc_BA2EE9: LitStr "</strong></td>"
  loc_BA2EEC: ConcatStr
  loc_BA2EED: CVarStr var_D8
  loc_BA2EF0: PopAdLdVar
  loc_BA2EF1: FLdPr Me
  loc_BA2EF4: MemLdRfVar from_stack_1.global_60
  loc_BA2EF7: LdPrVar
  loc_BA2EF9: LateMemCall
  loc_BA2EFF: FFree1Str var_BC
  loc_BA2F02: FFree1Var var_D8 = ""
  loc_BA2F05: LitVarStr var_A8, "  </tr>"
  loc_BA2F0A: PopAdLdVar
  loc_BA2F0B: FLdPr Me
  loc_BA2F0E: MemLdRfVar from_stack_1.global_60
  loc_BA2F11: LdPrVar
  loc_BA2F13: LateMemCall
  loc_BA2F19: LitI4 0
  loc_BA2F1E: FStR4 var_EC
  loc_BA2F21: LitI2_Byte 1
  loc_BA2F23: FLdPr Me
  loc_BA2F26: MemLdRfVar from_stack_1.global_94
  loc_BA2F29: FMemLdR4 var_E4(32)
  loc_BA2F2E: LitI2_Byte 1
  loc_BA2F30: FnUBound
  loc_BA2F32: CI2I4
  loc_BA2F33: ForI2 var_F0
  loc_BA2F39: FLdPr Me
  loc_BA2F3C: MemLdI2 global_94
  loc_BA2F3F: CI4UI1
  loc_BA2F40: FMemLdR4 var_E4(32)
  loc_BA2F45: AryLock
  loc_BA2F48: Ary1LdRf
  loc_BA2F49: FStR4 var_F8
  loc_BA2F4C: LitVarStr var_A8, "  <tr align=""left"" valign=""top"" class=""LineaDato"">"
  loc_BA2F51: PopAdLdVar
  loc_BA2F52: FLdPr Me
  loc_BA2F55: MemLdRfVar from_stack_1.global_60
  loc_BA2F58: LdPrVar
  loc_BA2F5A: LateMemCall
  loc_BA2F60: LitStr "    <td colspan=""4"">&#9632; "
  loc_BA2F63: FMemLdR4 var_F8(0)
  loc_BA2F68: ConcatStr
  loc_BA2F69: FStStrNoPop var_BC
  loc_BA2F6C: LitStr " - "
  loc_BA2F6F: ConcatStr
  loc_BA2F70: FStStrNoPop var_C0
  loc_BA2F73: FMemLdR4 var_F8(4)
  loc_BA2F78: ConcatStr
  loc_BA2F79: FStStrNoPop var_C4
  loc_BA2F7C: LitStr "</td>"
  loc_BA2F7F: ConcatStr
  loc_BA2F80: CVarStr var_D8
  loc_BA2F83: PopAdLdVar
  loc_BA2F84: FLdPr Me
  loc_BA2F87: MemLdRfVar from_stack_1.global_60
  loc_BA2F8A: LdPrVar
  loc_BA2F8C: LateMemCall
  loc_BA2F92: FFreeStr var_BC = "": var_C0 = ""
  loc_BA2F9B: FFree1Var var_D8 = ""
  loc_BA2F9E: LitStr "    <td colspan=""5"">"
  loc_BA2FA1: FMemLdR4 var_F8(8)
  loc_BA2FA6: ConcatStr
  loc_BA2FA7: FStStrNoPop var_BC
  loc_BA2FAA: LitStr " - "
  loc_BA2FAD: ConcatStr
  loc_BA2FAE: FStStrNoPop var_C0
  loc_BA2FB1: FMemLdR4 var_F8(12)
  loc_BA2FB6: ConcatStr
  loc_BA2FB7: FStStrNoPop var_C4
  loc_BA2FBA: LitStr "</td>"
  loc_BA2FBD: ConcatStr
  loc_BA2FBE: CVarStr var_D8
  loc_BA2FC1: PopAdLdVar
  loc_BA2FC2: FLdPr Me
  loc_BA2FC5: MemLdRfVar from_stack_1.global_60
  loc_BA2FC8: LdPrVar
  loc_BA2FCA: LateMemCall
  loc_BA2FD0: FFreeStr var_BC = "": var_C0 = ""
  loc_BA2FD9: FFree1Var var_D8 = ""
  loc_BA2FDC: LitStr "    <td colspan=""2"" align=""right""><em>"
  loc_BA2FDF: FMemLdR4 var_F8(16)
  loc_BA2FE4: ConcatStr
  loc_BA2FE5: FStStrNoPop var_BC
  loc_BA2FE8: LitStr "</em></td>"
  loc_BA2FEB: ConcatStr
  loc_BA2FEC: CVarStr var_D8
  loc_BA2FEF: PopAdLdVar
  loc_BA2FF0: FLdPr Me
  loc_BA2FF3: MemLdRfVar from_stack_1.global_60
  loc_BA2FF6: LdPrVar
  loc_BA2FF8: LateMemCall
  loc_BA2FFE: FFree1Str var_BC
  loc_BA3001: FFree1Var var_D8 = ""
  loc_BA3004: LitVarStr var_A8, "  </tr>"
  loc_BA3009: PopAdLdVar
  loc_BA300A: FLdPr Me
  loc_BA300D: MemLdRfVar from_stack_1.global_60
  loc_BA3010: LdPrVar
  loc_BA3012: LateMemCall
  loc_BA3018: LitI4 0
  loc_BA301D: FStR4 var_F8
  loc_BA3020: AryUnlock
  loc_BA3023: FLdPr Me
  loc_BA3026: MemLdRfVar from_stack_1.global_94
  loc_BA3029: NextI2 var_F0, loc_BA2F39
  loc_BA302E: LitI4 0
  loc_BA3033: FStR4 var_E4
  loc_BA3036: AryUnlock
  loc_BA3039: FLdPr Me
  loc_BA303C: MemLdRfVar from_stack_1.global_92
  loc_BA303F: NextUI1
  loc_BA3045: LitI4 0
  loc_BA304A: FStR4 var_98
  loc_BA304D: AryUnlock
  loc_BA3050: LitVarStr var_A8, "  <tr>"
  loc_BA3055: PopAdLdVar
  loc_BA3056: FLdPr Me
  loc_BA3059: MemLdRfVar from_stack_1.global_60
  loc_BA305C: LdPrVar
  loc_BA305E: LateMemCall
  loc_BA3064: LitVarStr var_A8, "    <td colspan=""12"">&nbsp;</td>"
  loc_BA3069: PopAdLdVar
  loc_BA306A: FLdPr Me
  loc_BA306D: MemLdRfVar from_stack_1.global_60
  loc_BA3070: LdPrVar
  loc_BA3072: LateMemCall
  loc_BA3078: LitVarStr var_A8, "  </tr>"
  loc_BA307D: PopAdLdVar
  loc_BA307E: FLdPr Me
  loc_BA3081: MemLdRfVar from_stack_1.global_60
  loc_BA3084: LdPrVar
  loc_BA3086: LateMemCall
  loc_BA308C: FLdPr Me
  loc_BA308F: MemLdRfVar from_stack_1.global_88
  loc_BA3092: NextI4 var_90, loc_BA2C42
  loc_BA3097: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"" align=""right"">"
  loc_BA309C: PopAdLdVar
  loc_BA309D: FLdPr Me
  loc_BA30A0: MemLdRfVar from_stack_1.global_60
  loc_BA30A3: LdPrVar
  loc_BA30A5: LateMemCall
  loc_BA30AB: LitStr "    <td colspan=""5"">Total ("
  loc_BA30AE: FLdPr Me
  loc_BA30B1: MemLdStr global_84
  loc_BA30B4: LitI2_Byte 1
  loc_BA30B6: FnUBound
  loc_BA30B8: CStrI4
  loc_BA30BA: FStStrNoPop var_BC
  loc_BA30BD: ConcatStr
  loc_BA30BE: FStStrNoPop var_C0
  loc_BA30C1: LitStr " comercios)</td>"
  loc_BA30C4: ConcatStr
  loc_BA30C5: CVarStr var_D8
  loc_BA30C8: PopAdLdVar
  loc_BA30C9: FLdPr Me
  loc_BA30CC: MemLdRfVar from_stack_1.global_60
  loc_BA30CF: LdPrVar
  loc_BA30D1: LateMemCall
  loc_BA30D7: FFreeStr var_BC = ""
  loc_BA30DE: FFree1Var var_D8 = ""
  loc_BA30E1: LitI4 1
  loc_BA30E6: FLdPr Me
  loc_BA30E9: MemLdStr global_96
  loc_BA30EC: AryLock
  loc_BA30EF: Ary1LdRf
  loc_BA30F0: FStR4 var_100
  loc_BA30F3: LitStr "    <td>"
  loc_BA30F6: FMemLdR4 var_100(0)
  loc_BA30FB: ConcatStr
  loc_BA30FC: FStStrNoPop var_BC
  loc_BA30FF: LitStr "</td>"
  loc_BA3102: ConcatStr
  loc_BA3103: CVarStr var_D8
  loc_BA3106: PopAdLdVar
  loc_BA3107: FLdPr Me
  loc_BA310A: MemLdRfVar from_stack_1.global_60
  loc_BA310D: LdPrVar
  loc_BA310F: LateMemCall
  loc_BA3115: FFree1Str var_BC
  loc_BA3118: FFree1Var var_D8 = ""
  loc_BA311B: LitStr "    <td>"
  loc_BA311E: FMemLdR4 var_100(4)
  loc_BA3123: ConcatStr
  loc_BA3124: FStStrNoPop var_BC
  loc_BA3127: LitStr "</td>"
  loc_BA312A: ConcatStr
  loc_BA312B: CVarStr var_D8
  loc_BA312E: PopAdLdVar
  loc_BA312F: FLdPr Me
  loc_BA3132: MemLdRfVar from_stack_1.global_60
  loc_BA3135: LdPrVar
  loc_BA3137: LateMemCall
  loc_BA313D: FFree1Str var_BC
  loc_BA3140: FFree1Var var_D8 = ""
  loc_BA3143: LitStr "    <td>"
  loc_BA3146: FMemLdR4 var_100(8)
  loc_BA314B: ConcatStr
  loc_BA314C: FStStrNoPop var_BC
  loc_BA314F: LitStr "</td>"
  loc_BA3152: ConcatStr
  loc_BA3153: CVarStr var_D8
  loc_BA3156: PopAdLdVar
  loc_BA3157: FLdPr Me
  loc_BA315A: MemLdRfVar from_stack_1.global_60
  loc_BA315D: LdPrVar
  loc_BA315F: LateMemCall
  loc_BA3165: FFree1Str var_BC
  loc_BA3168: FFree1Var var_D8 = ""
  loc_BA316B: LitStr "    <td>"
  loc_BA316E: FMemLdR4 var_100(12)
  loc_BA3173: ConcatStr
  loc_BA3174: FStStrNoPop var_BC
  loc_BA3177: LitStr "</td>"
  loc_BA317A: ConcatStr
  loc_BA317B: CVarStr var_D8
  loc_BA317E: PopAdLdVar
  loc_BA317F: FLdPr Me
  loc_BA3182: MemLdRfVar from_stack_1.global_60
  loc_BA3185: LdPrVar
  loc_BA3187: LateMemCall
  loc_BA318D: FFree1Str var_BC
  loc_BA3190: FFree1Var var_D8 = ""
  loc_BA3193: LitStr "    <td colspan=""3"">"
  loc_BA3196: FMemLdR4 var_100(16)
  loc_BA319B: ConcatStr
  loc_BA319C: FStStrNoPop var_BC
  loc_BA319F: LitStr "</td>"
  loc_BA31A2: ConcatStr
  loc_BA31A3: CVarStr var_D8
  loc_BA31A6: PopAdLdVar
  loc_BA31A7: FLdPr Me
  loc_BA31AA: MemLdRfVar from_stack_1.global_60
  loc_BA31AD: LdPrVar
  loc_BA31AF: LateMemCall
  loc_BA31B5: FFree1Str var_BC
  loc_BA31B8: FFree1Var var_D8 = ""
  loc_BA31BB: LitI4 0
  loc_BA31C0: FStR4 var_100
  loc_BA31C3: AryUnlock
  loc_BA31C6: LitVarStr var_A8, "     </tr>"
  loc_BA31CB: PopAdLdVar
  loc_BA31CC: FLdPr Me
  loc_BA31CF: MemLdRfVar from_stack_1.global_60
  loc_BA31D2: LdPrVar
  loc_BA31D4: LateMemCall
  loc_BA31DA: Call Proc_171_19_A0C058()
  loc_BA31DF: FLdPr Me
  loc_BA31E2: MemLdRfVar from_stack_1.global_60
  loc_BA31E5: LdPrVar
  loc_BA31E7: LateMemCall
  loc_BA31ED: LitStr vbNullString
  loc_BA31F0: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BA31F5: ExitProcHresult
End Sub

Private Function Proc_171_15_B0DE3C() 'B0DE3C
  'Data Table: 47A71C
  loc_B0DC10: FLdPr Me
  loc_B0DC13: MemLdStr global_88
  loc_B0DC16: LitI4 1
  loc_B0DC1B: AddI4
  loc_B0DC1C: FLdPr Me
  loc_B0DC1F: MemStI4 global_88
  loc_B0DC22: LitI2_Byte 0
  loc_B0DC24: CUI1I2
  loc_B0DC26: FLdPr Me
  loc_B0DC29: MemStUI1
  loc_B0DC2D: LitI4 0
  loc_B0DC32: FLdPr Me
  loc_B0DC35: MemLdStr global_88
  loc_B0DC38: FLdPr Me
  loc_B0DC3B: MemLdRfVar from_stack_1.global_84
  loc_B0DC3E: RedimPreserve
  loc_B0DC48: FLdPr Me
  loc_B0DC4B: MemLdRfVar from_stack_1.global_80
  loc_B0DC4E: NewIfNullAd
  loc_B0DC51: FStAd var_88 
  loc_B0DC55: FLdRfVar var_8C
  loc_B0DC58: FLdPr var_88
  loc_B0DC5B: from_stack_1 = clsliqucome.CodiCome
  loc_B0DC60: LitI2_Byte 0
  loc_B0DC62: LitVar_Missing var_C0
  loc_B0DC65: LitI2_Byte 0
  loc_B0DC67: ILdRf var_8C
  loc_B0DC6A: CVarI4
  loc_B0DC6E: PopAdLdVar
  loc_B0DC6F: FLdPr Me
  loc_B0DC72: MemLdStr global_88
  loc_B0DC75: FLdPr Me
  loc_B0DC78: MemLdStr global_84
  loc_B0DC7B: AryLock
  loc_B0DC7E: Ary1LdPr
  loc_B0DC7F: MemLdRfVar from_stack_1.global_0
  loc_B0DC82: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0DC87: AryUnlock
  loc_B0DC8A: FFree1Var var_C0 = ""
  loc_B0DC8D: FLdRfVar var_C0
  loc_B0DC90: FLdPr var_88
  loc_B0DC93: from_stack_1 = clsliqucome.DetaPers
  loc_B0DC98: LitI2_Byte 0
  loc_B0DC9A: LitVar_Missing var_D0
  loc_B0DC9D: LitI2_Byte 0
  loc_B0DC9F: FLdVar var_C0
  loc_B0DCA3: FLdPr Me
  loc_B0DCA6: MemLdStr global_88
  loc_B0DCA9: FLdPr Me
  loc_B0DCAC: MemLdStr global_84
  loc_B0DCAF: AryLock
  loc_B0DCB2: Ary1LdPr
  loc_B0DCB3: MemLdRfVar from_stack_1.global_4
  loc_B0DCB6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0DCBB: AryUnlock
  loc_B0DCBE: FFreeVar var_C0 = ""
  loc_B0DCC5: FLdRfVar var_DC
  loc_B0DCC8: LitVarStr var_A0, "DecpCome"
  loc_B0DCCD: PopAdLdVar
  loc_B0DCCE: FLdRfVar var_D8
  loc_B0DCD1: FLdRfVar var_D4
  loc_B0DCD4: FLdPr var_88
  loc_B0DCD7: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B0DCDC: FLdPr var_D4
  loc_B0DCDF:  = Me.Fields
  loc_B0DCE4: FLdPr var_D8
  loc_B0DCE7: from_stack_2 = Me.Item(from_stack_1)
  loc_B0DCEC: LitI2_Byte 0
  loc_B0DCEE: LitVar_Missing var_D0
  loc_B0DCF1: LitI2_Byte 0
  loc_B0DCF3: FLdZeroAd var_DC
  loc_B0DCF6: CVarAd
  loc_B0DCFA: PopAdLdVar
  loc_B0DCFB: FLdPr Me
  loc_B0DCFE: MemLdStr global_88
  loc_B0DD01: FLdPr Me
  loc_B0DD04: MemLdStr global_84
  loc_B0DD07: AryLock
  loc_B0DD0A: Ary1LdPr
  loc_B0DD0B: MemLdRfVar from_stack_1.global_8
  loc_B0DD0E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0DD13: AryUnlock
  loc_B0DD16: FFreeAd var_D4 = ""
  loc_B0DD1D: FFreeVar var_C0 = ""
  loc_B0DD24: FLdRfVar var_DC
  loc_B0DD27: LitVarStr var_A0, "NupoCome"
  loc_B0DD2C: PopAdLdVar
  loc_B0DD2D: FLdRfVar var_D8
  loc_B0DD30: FLdRfVar var_D4
  loc_B0DD33: FLdPr var_88
  loc_B0DD36: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B0DD3B: FLdPr var_D4
  loc_B0DD3E:  = Me.Fields
  loc_B0DD43: FLdPr var_D8
  loc_B0DD46: from_stack_2 = Me.Item(from_stack_1)
  loc_B0DD4B: LitI2_Byte 0
  loc_B0DD4D: LitVar_Missing var_D0
  loc_B0DD50: LitI2_Byte 0
  loc_B0DD52: FLdZeroAd var_DC
  loc_B0DD55: CVarAd
  loc_B0DD59: PopAdLdVar
  loc_B0DD5A: FLdPr Me
  loc_B0DD5D: MemLdStr global_88
  loc_B0DD60: FLdPr Me
  loc_B0DD63: MemLdStr global_84
  loc_B0DD66: AryLock
  loc_B0DD69: Ary1LdPr
  loc_B0DD6A: MemLdRfVar from_stack_1.global_12
  loc_B0DD6D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0DD72: AryUnlock
  loc_B0DD75: FFreeAd var_D4 = ""
  loc_B0DD7C: FFreeVar var_C0 = ""
  loc_B0DD83: FLdRfVar var_8C
  loc_B0DD86: FLdPr var_88
  loc_B0DD89: from_stack_1 = clsliqucome.OrdeLico
  loc_B0DD8E: LitI2_Byte 0
  loc_B0DD90: LitVar_Missing var_C0
  loc_B0DD93: LitI2_Byte 0
  loc_B0DD95: ILdRf var_8C
  loc_B0DD98: CVarI4
  loc_B0DD9C: PopAdLdVar
  loc_B0DD9D: FLdPr Me
  loc_B0DDA0: MemLdStr global_88
  loc_B0DDA3: FLdPr Me
  loc_B0DDA6: MemLdStr global_84
  loc_B0DDA9: AryLock
  loc_B0DDAC: Ary1LdPr
  loc_B0DDAD: MemLdRfVar from_stack_1.global_24
  loc_B0DDB0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0DDB5: AryUnlock
  loc_B0DDB8: FFree1Var var_C0 = ""
  loc_B0DDBB: FLdRfVar var_E0
  loc_B0DDBE: FLdPr var_88
  loc_B0DDC1: from_stack_1 = clsliqucome.TipoLico
  loc_B0DDC6: LitI2_Byte 0
  loc_B0DDC8: LitVar_Missing var_D0
  loc_B0DDCB: LitI2_Byte 0
  loc_B0DDCD: FLdZeroAd var_E0
  loc_B0DDD0: CVarStr var_C0
  loc_B0DDD3: PopAdLdVar
  loc_B0DDD4: FLdPr Me
  loc_B0DDD7: MemLdStr global_88
  loc_B0DDDA: FLdPr Me
  loc_B0DDDD: MemLdStr global_84
  loc_B0DDE0: AryLock
  loc_B0DDE3: Ary1LdPr
  loc_B0DDE4: MemLdRfVar from_stack_1.global_20
  loc_B0DDE7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0DDEC: AryUnlock
  loc_B0DDEF: FFreeVar var_C0 = ""
  loc_B0DDF6: FLdRfVar var_E8
  loc_B0DDF9: FLdPr var_88
  loc_B0DDFC: from_stack_1 = clsliqucome.DeudLico
  loc_B0DE01: LitI2_Byte 0
  loc_B0DE03: LitVar_Missing var_C0
  loc_B0DE06: LitI2_Byte 0
  loc_B0DE08: FLdFPR8 var_E8
  loc_B0DE0B: CVarR8
  loc_B0DE0F: PopAdLdVar
  loc_B0DE10: FLdPr Me
  loc_B0DE13: MemLdStr global_88
  loc_B0DE16: FLdPr Me
  loc_B0DE19: MemLdStr global_84
  loc_B0DE1C: AryLock
  loc_B0DE1F: Ary1LdPr
  loc_B0DE20: MemLdRfVar from_stack_1.global_16
  loc_B0DE23: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0DE28: AryUnlock
  loc_B0DE2B: FFree1Var var_C0 = ""
  loc_B0DE2E: LitNothing
  loc_B0DE30: FStAd var_88 
  loc_B0DE34: Call Proc_171_16_B13A44()
  loc_B0DE39: ExitProcHresult
End Function

Private Function Proc_171_16_B13A44() 'B13A44
  'Data Table: 47A71C
  loc_B137E8: FLdPr Me
  loc_B137EB: MemLdUI1 global_92
  loc_B137EF: CI2UI1
  loc_B137F1: LitI2_Byte 1
  loc_B137F3: AddI2
  loc_B137F4: CUI1I2
  loc_B137F6: FLdPr Me
  loc_B137F9: MemStUI1
  loc_B137FD: LitI2_Byte 0
  loc_B137FF: FLdPr Me
  loc_B13802: MemStI2 global_94
  loc_B13805: LitI4 0
  loc_B1380A: FLdPr Me
  loc_B1380D: MemLdUI1 global_92
  loc_B13811: CI4UI1
  loc_B13812: FLdPr Me
  loc_B13815: MemLdStr global_88
  loc_B13818: FLdPr Me
  loc_B1381B: MemLdStr global_84
  loc_B1381E: Ary1LdPr
  loc_B1381F: MemLdRfVar from_stack_1.global_28
  loc_B13822: RedimPreserve
  loc_B1382C: FLdPr Me
  loc_B1382F: MemLdUI1 global_92
  loc_B13833: CI4UI1
  loc_B13834: FLdPr Me
  loc_B13837: MemLdStr global_88
  loc_B1383A: FLdPr Me
  loc_B1383D: MemLdStr global_84
  loc_B13840: AryLock
  loc_B13843: Ary1LdPr
  loc_B13844: MemLdStr global_28
  loc_B13847: AryLock
  loc_B1384A: Ary1LdRf
  loc_B1384B: FStR4 var_90
  loc_B1384E: FLdRfVar var_94
  loc_B13851: FLdPr Me
  loc_B13854: MemLdRfVar from_stack_1.global_80
  loc_B13857: NewIfNullPr clsliqucome
  loc_B1385A: from_stack_1 = clsliqucome.CodiConc
  loc_B1385F: LitI2_Byte 0
  loc_B13861: LitVar_Missing var_C4
  loc_B13864: LitI2_Byte 0
  loc_B13866: FLdZeroAd var_94
  loc_B13869: CVarStr var_A4
  loc_B1386C: PopAdLdVar
  loc_B1386D: FMemLdRf %S_eax_S = PutMem2(, ) 'PutMem
  loc_B13872: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B13877: FFreeVar var_A4 = ""
  loc_B1387E: FLdRfVar var_A4
  loc_B13881: FLdPr Me
  loc_B13884: MemLdRfVar from_stack_1.global_80
  loc_B13887: NewIfNullPr clsliqucome
  loc_B1388A: from_stack_1 = clsliqucome.DetaConc
  loc_B1388F: LitI2_Byte 0
  loc_B13891: LitVar_Missing var_C4
  loc_B13894: LitI2_Byte 0
  loc_B13896: FLdVar var_A4
  loc_B1389A: FMemLdRf %S_eax_S = PutMem2(, ) 'PutMem
  loc_B1389F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B138A4: FFreeVar var_A4 = ""
  loc_B138AB: FLdRfVar var_C6
  loc_B138AE: FLdPr Me
  loc_B138B1: MemLdRfVar from_stack_1.global_80
  loc_B138B4: NewIfNullPr clsliqucome
  loc_B138B7: from_stack_1 = clsliqucome.TipoVenc
  loc_B138BC: LitI2_Byte 0
  loc_B138BE: LitVar_Missing var_A4
  loc_B138C1: LitI2_Byte 0
  loc_B138C3: FLdUI1
  loc_B138C7: CVarUI1
  loc_B138CB: PopAdLdVar
  loc_B138CC: FMemLdRf %S_eax_S = PutMem2(, ) 'PutMem
  loc_B138D1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B138D6: FFree1Var var_A4 = ""
  loc_B138D9: FMemLdRf %S_eax_S = PutMem2(, ) 'PutMem
  loc_B138DE: FStR4 var_DC
  loc_B138E1: FLdRfVar var_E4
  loc_B138E4: FLdPr Me
  loc_B138E7: MemLdRfVar from_stack_1.global_80
  loc_B138EA: NewIfNullPr clsliqucome
  loc_B138ED: from_stack_1 = clsliqucome.ImpoLico
  loc_B138F2: LitI2_Byte 0
  loc_B138F4: LitI4 1
  loc_B138F9: FLdPr Me
  loc_B138FC: MemLdStr global_96
  loc_B138FF: AryLock
  loc_B13902: Ary1LdPr
  loc_B13903: MemLdRfVar from_stack_1.global_0
  loc_B13906: CVarRef
  loc_B1390B: LitI2_Byte &HFF
  loc_B1390D: FLdFPR8 var_E4
  loc_B13910: CVarR8
  loc_B13914: PopAdLdVar
  loc_B13915: FMemLdRf 0
  loc_B1391A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1391F: AryUnlock
  loc_B13922: FLdRfVar var_E4
  loc_B13925: FLdPr Me
  loc_B13928: MemLdRfVar from_stack_1.global_80
  loc_B1392B: NewIfNullPr clsliqucome
  loc_B1392E: from_stack_1 = clsliqucome.ExenLico
  loc_B13933: LitI2_Byte 0
  loc_B13935: LitI4 1
  loc_B1393A: FLdPr Me
  loc_B1393D: MemLdStr global_96
  loc_B13940: AryLock
  loc_B13943: Ary1LdPr
  loc_B13944: MemLdRfVar from_stack_1.global_4
  loc_B13947: CVarRef
  loc_B1394C: LitI2_Byte &HFF
  loc_B1394E: FLdFPR8 var_E4
  loc_B13951: CVarR8
  loc_B13955: PopAdLdVar
  loc_B13956: FMemLdRf 0
  loc_B1395B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B13960: AryUnlock
  loc_B13963: FLdRfVar var_E4
  loc_B13966: FLdPr Me
  loc_B13969: MemLdRfVar from_stack_1.global_80
  loc_B1396C: NewIfNullPr clsliqucome
  loc_B1396F: from_stack_1 = clsliqucome.DescLico
  loc_B13974: LitI2_Byte 0
  loc_B13976: LitI4 1
  loc_B1397B: FLdPr Me
  loc_B1397E: MemLdStr global_96
  loc_B13981: AryLock
  loc_B13984: Ary1LdPr
  loc_B13985: MemLdRfVar from_stack_1.global_8
  loc_B13988: CVarRef
  loc_B1398D: LitI2_Byte &HFF
  loc_B1398F: FLdFPR8 var_E4
  loc_B13992: CVarR8
  loc_B13996: PopAdLdVar
  loc_B13997: FMemLdRf 0
  loc_B1399C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B139A1: AryUnlock
  loc_B139A4: FLdRfVar var_E4
  loc_B139A7: FLdPr Me
  loc_B139AA: MemLdRfVar from_stack_1.global_80
  loc_B139AD: NewIfNullPr clsliqucome
  loc_B139B0: from_stack_1 = clsliqucome.CrafLico
  loc_B139B5: LitI2_Byte 0
  loc_B139B7: LitI4 1
  loc_B139BC: FLdPr Me
  loc_B139BF: MemLdStr global_96
  loc_B139C2: AryLock
  loc_B139C5: Ary1LdPr
  loc_B139C6: MemLdRfVar from_stack_1.global_12
  loc_B139C9: CVarRef
  loc_B139CE: LitI2_Byte &HFF
  loc_B139D0: FLdFPR8 var_E4
  loc_B139D3: CVarR8
  loc_B139D7: PopAdLdVar
  loc_B139D8: FMemLdRf 0
  loc_B139DD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B139E2: AryUnlock
  loc_B139E5: FLdRfVar var_E4
  loc_B139E8: FLdPr Me
  loc_B139EB: MemLdRfVar from_stack_1.global_80
  loc_B139EE: NewIfNullPr clsliqucome
  loc_B139F1: from_stack_1 = clsliqucome.TotaLico
  loc_B139F6: LitI2_Byte 0
  loc_B139F8: LitI4 1
  loc_B139FD: FLdPr Me
  loc_B13A00: MemLdStr global_96
  loc_B13A03: AryLock
  loc_B13A06: Ary1LdPr
  loc_B13A07: MemLdRfVar from_stack_1.global_16
  loc_B13A0A: CVarRef
  loc_B13A0F: LitI2_Byte &HFF
  loc_B13A11: FLdFPR8 var_E4
  loc_B13A14: CVarR8
  loc_B13A18: PopAdLdVar
  loc_B13A19: FMemLdRf 0
  loc_B13A1E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B13A23: AryUnlock
  loc_B13A26: LitI4 0
  loc_B13A2B: FStR4 var_DC
  loc_B13A2E: LitI4 0
  loc_B13A33: FStR4 var_90
  loc_B13A36: AryUnlock
  loc_B13A39: AryUnlock
  loc_B13A3C: Call Proc_171_17_AF918C()
  loc_B13A41: ExitProcHresult
End Function

Private Function Proc_171_17_AF918C() 'AF918C
  'Data Table: 47A71C
  loc_AF8FBC: FLdRfVar var_88
  loc_AF8FBF: FLdPr Me
  loc_AF8FC2: MemLdRfVar from_stack_1.global_80
  loc_AF8FC5: NewIfNullPr clsliqucome
  loc_AF8FC8: from_stack_1 = clsliqucome.CodiConc
  loc_AF8FCD: ILdRf var_88
  loc_AF8FD0: CR8Str
  loc_AF8FD2: LitI2 750
  loc_AF8FD5: CR8I2
  loc_AF8FD6: NeR8
  loc_AF8FD7: FFree1Str var_88
  loc_AF8FDA: BranchF loc_AF9143
  loc_AF8FDD: FLdPr Me
  loc_AF8FE0: MemLdI2 global_94
  loc_AF8FE3: LitI2_Byte 1
  loc_AF8FE5: AddI2
  loc_AF8FE6: FLdPr Me
  loc_AF8FE9: MemStI2 global_94
  loc_AF8FEC: LitI4 0
  loc_AF8FF1: FLdPr Me
  loc_AF8FF4: MemLdI2 global_94
  loc_AF8FF7: CI4UI1
  loc_AF8FF8: FLdPr Me
  loc_AF8FFB: MemLdUI1 global_92
  loc_AF8FFF: CI4UI1
  loc_AF9000: FLdPr Me
  loc_AF9003: MemLdStr global_88
  loc_AF9006: FLdPr Me
  loc_AF9009: MemLdStr global_84
  loc_AF900C: Ary1LdPr
  loc_AF900D: MemLdStr global_28
  loc_AF9010: Ary1LdPr
  loc_AF9011: MemLdRfVar from_stack_1.global_32
  loc_AF9014: RedimPreserve
  loc_AF901E: FLdPr Me
  loc_AF9021: MemLdI2 global_94
  loc_AF9024: CI4UI1
  loc_AF9025: FLdPr Me
  loc_AF9028: MemLdUI1 global_92
  loc_AF902C: CI4UI1
  loc_AF902D: FLdPr Me
  loc_AF9030: MemLdStr global_88
  loc_AF9033: FLdPr Me
  loc_AF9036: MemLdStr global_84
  loc_AF9039: AryLock
  loc_AF903C: Ary1LdPr
  loc_AF903D: MemLdStr global_28
  loc_AF9040: AryLock
  loc_AF9043: Ary1LdPr
  loc_AF9044: MemLdStr global_32
  loc_AF9047: AryLock
  loc_AF904A: Ary1LdRf
  loc_AF904B: FStR4 var_98
  loc_AF904E: FLdRfVar var_A8
  loc_AF9051: FLdPr Me
  loc_AF9054: MemLdRfVar from_stack_1.global_80
  loc_AF9057: NewIfNullPr clsliqucome
  loc_AF905A: from_stack_1 = clsliqucome.CodiRubr
  loc_AF905F: LitI2_Byte 0
  loc_AF9061: LitVar_Missing var_C8
  loc_AF9064: LitI2_Byte 0
  loc_AF9066: FLdVar var_A8
  loc_AF906A: FMemLdRf 0
  loc_AF906F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AF9074: FFreeVar var_A8 = ""
  loc_AF907B: FLdRfVar var_A8
  loc_AF907E: FLdPr Me
  loc_AF9081: MemLdRfVar from_stack_1.global_80
  loc_AF9084: NewIfNullPr clsliqucome
  loc_AF9087: from_stack_1 = clsliqucome.DetaRubr
  loc_AF908C: LitI2_Byte 0
  loc_AF908E: LitVar_Missing var_C8
  loc_AF9091: LitI2_Byte 0
  loc_AF9093: FLdVar var_A8
  loc_AF9097: FMemLdRf 0
  loc_AF909C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AF90A1: FFreeVar var_A8 = ""
  loc_AF90A8: FLdRfVar var_A8
  loc_AF90AB: FLdPr Me
  loc_AF90AE: MemLdRfVar from_stack_1.global_80
  loc_AF90B1: NewIfNullPr clsliqucome
  loc_AF90B4: from_stack_1 = clsliqucome.CodiSubr
  loc_AF90B9: LitI2_Byte 0
  loc_AF90BB: LitVar_Missing var_C8
  loc_AF90BE: LitI2_Byte 0
  loc_AF90C0: FLdVar var_A8
  loc_AF90C4: FMemLdRf 0
  loc_AF90C9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AF90CE: FFreeVar var_A8 = ""
  loc_AF90D5: FLdRfVar var_A8
  loc_AF90D8: FLdPr Me
  loc_AF90DB: MemLdRfVar from_stack_1.global_80
  loc_AF90DE: NewIfNullPr clsliqucome
  loc_AF90E1: from_stack_1 = clsliqucome.DetaSubr
  loc_AF90E6: LitI2_Byte 0
  loc_AF90E8: LitVar_Missing var_C8
  loc_AF90EB: LitI2_Byte 0
  loc_AF90ED: FLdVar var_A8
  loc_AF90F1: FMemLdRf 0
  loc_AF90F6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AF90FB: FFreeVar var_A8 = ""
  loc_AF9102: FLdRfVar var_D0
  loc_AF9105: FLdPr Me
  loc_AF9108: MemLdRfVar from_stack_1.global_80
  loc_AF910B: NewIfNullPr clsliqucome
  loc_AF910E: from_stack_1 = clsliqucome.ImpoLcde
  loc_AF9113: LitI2_Byte 0
  loc_AF9115: LitVar_Missing var_A8
  loc_AF9118: LitI2_Byte &HFF
  loc_AF911A: FLdFPR8 var_D0
  loc_AF911D: CVarR8
  loc_AF9121: PopAdLdVar
  loc_AF9122: FMemLdRf 0
  loc_AF9127: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AF912C: FFree1Var var_A8 = ""
  loc_AF912F: LitI4 0
  loc_AF9134: FStR4 var_98
  loc_AF9137: AryUnlock
  loc_AF913A: AryUnlock
  loc_AF913D: AryUnlock
  loc_AF9140: Branch loc_AF9175
  loc_AF9143: LitI4 0
  loc_AF9148: FLdPr Me
  loc_AF914B: MemLdI2 global_94
  loc_AF914E: CI4UI1
  loc_AF914F: FLdPr Me
  loc_AF9152: MemLdUI1 global_92
  loc_AF9156: CI4UI1
  loc_AF9157: FLdPr Me
  loc_AF915A: MemLdStr global_88
  loc_AF915D: FLdPr Me
  loc_AF9160: MemLdStr global_84
  loc_AF9163: Ary1LdPr
  loc_AF9164: MemLdStr global_28
  loc_AF9167: Ary1LdPr
  loc_AF9168: MemLdRfVar from_stack_1.global_32
  loc_AF916B: RedimPreserve
  loc_AF9175: LitI2_Byte 1
  loc_AF9177: PopTmpLdAd2 var_E2
  loc_AF917A: FLdPr Me
  loc_AF917D: MemLdRfVar from_stack_1.global_80
  loc_AF9180: NewIfNullPr clsliqucome
  loc_AF9183: Call clsliqucome.Move(from_stack_1v)
  loc_AF9188: ExitProcHresult
End Function

Private Function Proc_171_18_C20D68() 'C20D68
  'Data Table: 47A71C
  loc_C202E0: LitVarStr var_98, "<html>"
  loc_C202E5: PopAdLdVar
  loc_C202E6: FLdPr Me
  loc_C202E9: MemLdRfVar from_stack_1.global_60
  loc_C202EC: LdPrVar
  loc_C202EE: LateMemCall
  loc_C202F4: LitVarStr var_98, "<head>"
  loc_C202F9: PopAdLdVar
  loc_C202FA: FLdPr Me
  loc_C202FD: MemLdRfVar from_stack_1.global_60
  loc_C20300: LdPrVar
  loc_C20302: LateMemCall
  loc_C20308: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C2030D: PopAdLdVar
  loc_C2030E: FLdPr Me
  loc_C20311: MemLdRfVar from_stack_1.global_60
  loc_C20314: LdPrVar
  loc_C20316: LateMemCall
  loc_C2031C: LitStr "<title>"
  loc_C2031F: FLdRfVar var_AC
  loc_C20322: FLdPr Me
  loc_C20325:  = Me.Caption
  loc_C2032A: ILdRf var_AC
  loc_C2032D: ConcatStr
  loc_C2032E: FStStrNoPop var_B0
  loc_C20331: LitStr "</title>"
  loc_C20334: ConcatStr
  loc_C20335: CVarStr var_C0
  loc_C20338: PopAdLdVar
  loc_C20339: FLdPr Me
  loc_C2033C: MemLdRfVar from_stack_1.global_60
  loc_C2033F: LdPrVar
  loc_C20341: LateMemCall
  loc_C20347: FFreeStr var_AC = ""
  loc_C2034E: FFree1Var var_C0 = ""
  loc_C20351: LitVarStr var_98, "<style type=""text/css"">"
  loc_C20356: PopAdLdVar
  loc_C20357: FLdPr Me
  loc_C2035A: MemLdRfVar from_stack_1.global_60
  loc_C2035D: LdPrVar
  loc_C2035F: LateMemCall
  loc_C20365: LitVarStr var_98, ".Titulo1 {"
  loc_C2036A: PopAdLdVar
  loc_C2036B: FLdPr Me
  loc_C2036E: MemLdRfVar from_stack_1.global_60
  loc_C20371: LdPrVar
  loc_C20373: LateMemCall
  loc_C20379: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C2037E: PopAdLdVar
  loc_C2037F: FLdPr Me
  loc_C20382: MemLdRfVar from_stack_1.global_60
  loc_C20385: LdPrVar
  loc_C20387: LateMemCall
  loc_C2038D: LitVarStr var_98, " font-size: 18px;"
  loc_C20392: PopAdLdVar
  loc_C20393: FLdPr Me
  loc_C20396: MemLdRfVar from_stack_1.global_60
  loc_C20399: LdPrVar
  loc_C2039B: LateMemCall
  loc_C203A1: LitVarStr var_98, " font-weight: bold;"
  loc_C203A6: PopAdLdVar
  loc_C203A7: FLdPr Me
  loc_C203AA: MemLdRfVar from_stack_1.global_60
  loc_C203AD: LdPrVar
  loc_C203AF: LateMemCall
  loc_C203B5: LitVarStr var_98, "}"
  loc_C203BA: PopAdLdVar
  loc_C203BB: FLdPr Me
  loc_C203BE: MemLdRfVar from_stack_1.global_60
  loc_C203C1: LdPrVar
  loc_C203C3: LateMemCall
  loc_C203C9: LitVarStr var_98, ".Titulo2 {"
  loc_C203CE: PopAdLdVar
  loc_C203CF: FLdPr Me
  loc_C203D2: MemLdRfVar from_stack_1.global_60
  loc_C203D5: LdPrVar
  loc_C203D7: LateMemCall
  loc_C203DD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C203E2: PopAdLdVar
  loc_C203E3: FLdPr Me
  loc_C203E6: MemLdRfVar from_stack_1.global_60
  loc_C203E9: LdPrVar
  loc_C203EB: LateMemCall
  loc_C203F1: LitVarStr var_98, " font-size: 14px;"
  loc_C203F6: PopAdLdVar
  loc_C203F7: FLdPr Me
  loc_C203FA: MemLdRfVar from_stack_1.global_60
  loc_C203FD: LdPrVar
  loc_C203FF: LateMemCall
  loc_C20405: LitVarStr var_98, " font-weight: bold;"
  loc_C2040A: PopAdLdVar
  loc_C2040B: FLdPr Me
  loc_C2040E: MemLdRfVar from_stack_1.global_60
  loc_C20411: LdPrVar
  loc_C20413: LateMemCall
  loc_C20419: LitVarStr var_98, "}"
  loc_C2041E: PopAdLdVar
  loc_C2041F: FLdPr Me
  loc_C20422: MemLdRfVar from_stack_1.global_60
  loc_C20425: LdPrVar
  loc_C20427: LateMemCall
  loc_C2042D: LitVarStr var_98, ".Normal {"
  loc_C20432: PopAdLdVar
  loc_C20433: FLdPr Me
  loc_C20436: MemLdRfVar from_stack_1.global_60
  loc_C20439: LdPrVar
  loc_C2043B: LateMemCall
  loc_C20441: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C20446: PopAdLdVar
  loc_C20447: FLdPr Me
  loc_C2044A: MemLdRfVar from_stack_1.global_60
  loc_C2044D: LdPrVar
  loc_C2044F: LateMemCall
  loc_C20455: LitVarStr var_98, " font-size: 12px;"
  loc_C2045A: PopAdLdVar
  loc_C2045B: FLdPr Me
  loc_C2045E: MemLdRfVar from_stack_1.global_60
  loc_C20461: LdPrVar
  loc_C20463: LateMemCall
  loc_C20469: LitVarStr var_98, " font-style: normal;"
  loc_C2046E: PopAdLdVar
  loc_C2046F: FLdPr Me
  loc_C20472: MemLdRfVar from_stack_1.global_60
  loc_C20475: LdPrVar
  loc_C20477: LateMemCall
  loc_C2047D: LitVarStr var_98, " font-weight: normal;"
  loc_C20482: PopAdLdVar
  loc_C20483: FLdPr Me
  loc_C20486: MemLdRfVar from_stack_1.global_60
  loc_C20489: LdPrVar
  loc_C2048B: LateMemCall
  loc_C20491: LitVarStr var_98, " font-variant: normal;"
  loc_C20496: PopAdLdVar
  loc_C20497: FLdPr Me
  loc_C2049A: MemLdRfVar from_stack_1.global_60
  loc_C2049D: LdPrVar
  loc_C2049F: LateMemCall
  loc_C204A5: LitVarStr var_98, "}"
  loc_C204AA: PopAdLdVar
  loc_C204AB: FLdPr Me
  loc_C204AE: MemLdRfVar from_stack_1.global_60
  loc_C204B1: LdPrVar
  loc_C204B3: LateMemCall
  loc_C204B9: LitVarStr var_98, ".Encabezado {"
  loc_C204BE: PopAdLdVar
  loc_C204BF: FLdPr Me
  loc_C204C2: MemLdRfVar from_stack_1.global_60
  loc_C204C5: LdPrVar
  loc_C204C7: LateMemCall
  loc_C204CD: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_C204D2: PopAdLdVar
  loc_C204D3: FLdPr Me
  loc_C204D6: MemLdRfVar from_stack_1.global_60
  loc_C204D9: LdPrVar
  loc_C204DB: LateMemCall
  loc_C204E1: LitVarStr var_98, " font-size: 11px;"
  loc_C204E6: PopAdLdVar
  loc_C204E7: FLdPr Me
  loc_C204EA: MemLdRfVar from_stack_1.global_60
  loc_C204ED: LdPrVar
  loc_C204EF: LateMemCall
  loc_C204F5: LitVarStr var_98, " font-weight: bold;"
  loc_C204FA: PopAdLdVar
  loc_C204FB: FLdPr Me
  loc_C204FE: MemLdRfVar from_stack_1.global_60
  loc_C20501: LdPrVar
  loc_C20503: LateMemCall
  loc_C20509: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_C2050E: PopAdLdVar
  loc_C2050F: FLdPr Me
  loc_C20512: MemLdRfVar from_stack_1.global_60
  loc_C20515: LdPrVar
  loc_C20517: LateMemCall
  loc_C2051D: LitVarStr var_98, "}"
  loc_C20522: PopAdLdVar
  loc_C20523: FLdPr Me
  loc_C20526: MemLdRfVar from_stack_1.global_60
  loc_C20529: LdPrVar
  loc_C2052B: LateMemCall
  loc_C20531: LitVarStr var_98, ".LineaDato {"
  loc_C20536: PopAdLdVar
  loc_C20537: FLdPr Me
  loc_C2053A: MemLdRfVar from_stack_1.global_60
  loc_C2053D: LdPrVar
  loc_C2053F: LateMemCall
  loc_C20545: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2054A: PopAdLdVar
  loc_C2054B: FLdPr Me
  loc_C2054E: MemLdRfVar from_stack_1.global_60
  loc_C20551: LdPrVar
  loc_C20553: LateMemCall
  loc_C20559: LitVarStr var_98, " font-size: 10px;"
  loc_C2055E: PopAdLdVar
  loc_C2055F: FLdPr Me
  loc_C20562: MemLdRfVar from_stack_1.global_60
  loc_C20565: LdPrVar
  loc_C20567: LateMemCall
  loc_C2056D: LitVarStr var_98, "}"
  loc_C20572: PopAdLdVar
  loc_C20573: FLdPr Me
  loc_C20576: MemLdRfVar from_stack_1.global_60
  loc_C20579: LdPrVar
  loc_C2057B: LateMemCall
  loc_C20581: LitVarStr var_98, ".Totales {"
  loc_C20586: PopAdLdVar
  loc_C20587: FLdPr Me
  loc_C2058A: MemLdRfVar from_stack_1.global_60
  loc_C2058D: LdPrVar
  loc_C2058F: LateMemCall
  loc_C20595: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2059A: PopAdLdVar
  loc_C2059B: FLdPr Me
  loc_C2059E: MemLdRfVar from_stack_1.global_60
  loc_C205A1: LdPrVar
  loc_C205A3: LateMemCall
  loc_C205A9: LitVarStr var_98, " font-size: 12px;"
  loc_C205AE: PopAdLdVar
  loc_C205AF: FLdPr Me
  loc_C205B2: MemLdRfVar from_stack_1.global_60
  loc_C205B5: LdPrVar
  loc_C205B7: LateMemCall
  loc_C205BD: LitVarStr var_98, " font-weight: bold;"
  loc_C205C2: PopAdLdVar
  loc_C205C3: FLdPr Me
  loc_C205C6: MemLdRfVar from_stack_1.global_60
  loc_C205C9: LdPrVar
  loc_C205CB: LateMemCall
  loc_C205D1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C205D6: PopAdLdVar
  loc_C205D7: FLdPr Me
  loc_C205DA: MemLdRfVar from_stack_1.global_60
  loc_C205DD: LdPrVar
  loc_C205DF: LateMemCall
  loc_C205E5: LitVarStr var_98, "}"
  loc_C205EA: PopAdLdVar
  loc_C205EB: FLdPr Me
  loc_C205EE: MemLdRfVar from_stack_1.global_60
  loc_C205F1: LdPrVar
  loc_C205F3: LateMemCall
  loc_C205F9: LitVarStr var_98, ".SubTotales {"
  loc_C205FE: PopAdLdVar
  loc_C205FF: FLdPr Me
  loc_C20602: MemLdRfVar from_stack_1.global_60
  loc_C20605: LdPrVar
  loc_C20607: LateMemCall
  loc_C2060D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C20612: PopAdLdVar
  loc_C20613: FLdPr Me
  loc_C20616: MemLdRfVar from_stack_1.global_60
  loc_C20619: LdPrVar
  loc_C2061B: LateMemCall
  loc_C20621: LitVarStr var_98, " font-size: 10px;"
  loc_C20626: PopAdLdVar
  loc_C20627: FLdPr Me
  loc_C2062A: MemLdRfVar from_stack_1.global_60
  loc_C2062D: LdPrVar
  loc_C2062F: LateMemCall
  loc_C20635: LitVarStr var_98, " font-weight: bold;"
  loc_C2063A: PopAdLdVar
  loc_C2063B: FLdPr Me
  loc_C2063E: MemLdRfVar from_stack_1.global_60
  loc_C20641: LdPrVar
  loc_C20643: LateMemCall
  loc_C20649: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C2064E: PopAdLdVar
  loc_C2064F: FLdPr Me
  loc_C20652: MemLdRfVar from_stack_1.global_60
  loc_C20655: LdPrVar
  loc_C20657: LateMemCall
  loc_C2065D: LitVarStr var_98, "}"
  loc_C20662: PopAdLdVar
  loc_C20663: FLdPr Me
  loc_C20666: MemLdRfVar from_stack_1.global_60
  loc_C20669: LdPrVar
  loc_C2066B: LateMemCall
  loc_C20671: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_C20676: PopAdLdVar
  loc_C20677: FLdPr Me
  loc_C2067A: MemLdRfVar from_stack_1.global_60
  loc_C2067D: LdPrVar
  loc_C2067F: LateMemCall
  loc_C20685: LitVarStr var_98, "</style>"
  loc_C2068A: PopAdLdVar
  loc_C2068B: FLdPr Me
  loc_C2068E: MemLdRfVar from_stack_1.global_60
  loc_C20691: LdPrVar
  loc_C20693: LateMemCall
  loc_C20699: LitI4 0
  loc_C2069E: FStStrCopy var_B0
  loc_C206A1: FLdRfVar var_B0
  loc_C206A4: LitI4 0
  loc_C206A9: FStStrCopy var_AC
  loc_C206AC: FLdRfVar var_AC
  loc_C206AF: LitI2_Byte 0
  loc_C206B1: PopTmpLdAd2 var_C2
  loc_C206B4: FLdPr Me
  loc_C206B7: MemLdRfVar from_stack_1.global_60
  loc_C206BA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C206BF: FFreeStr var_AC = ""
  loc_C206C6: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C206CB: PopAdLdVar
  loc_C206CC: FLdPr Me
  loc_C206CF: MemLdRfVar from_stack_1.global_60
  loc_C206D2: LdPrVar
  loc_C206D4: LateMemCall
  loc_C206DA: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_C206DF: PopAdLdVar
  loc_C206E0: FLdPr Me
  loc_C206E3: MemLdRfVar from_stack_1.global_60
  loc_C206E6: LdPrVar
  loc_C206E8: LateMemCall
  loc_C206EE: LitStr "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C206F1: LitI2_Byte &H5F
  loc_C206F3: CStrUI1
  loc_C206F5: FStStrNoPop var_AC
  loc_C206F8: ConcatStr
  loc_C206F9: FStStrNoPop var_B0
  loc_C206FC: LitStr """ height="""
  loc_C206FF: ConcatStr
  loc_C20700: FStStrNoPop var_C8
  loc_C20703: LitI2_Byte &H3C
  loc_C20705: CStrUI1
  loc_C20707: FStStrNoPop var_CC
  loc_C2070A: ConcatStr
  loc_C2070B: FStStrNoPop var_D0
  loc_C2070E: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C20711: ConcatStr
  loc_C20712: FStStrNoPop var_D4
  loc_C20715: LitStr "Municipalidad de Guaymallén"
  loc_C20718: ConcatStr
  loc_C20719: FStStrNoPop var_D8
  loc_C2071C: LitStr "</p>"
  loc_C2071F: ConcatStr
  loc_C20720: CVarStr var_C0
  loc_C20723: PopAdLdVar
  loc_C20724: FLdPr Me
  loc_C20727: MemLdRfVar from_stack_1.global_60
  loc_C2072A: LdPrVar
  loc_C2072C: LateMemCall
  loc_C20732: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_C20743: FFree1Var var_C0 = ""
  loc_C20746: LitStr "    <p>"
  loc_C20749: FLdRfVar var_AC
  loc_C2074C: FLdPr Me
  loc_C2074F:  = Me.Caption
  loc_C20754: ILdRf var_AC
  loc_C20757: ConcatStr
  loc_C20758: FStStrNoPop var_B0
  loc_C2075B: LitStr "</p></th>"
  loc_C2075E: ConcatStr
  loc_C2075F: CVarStr var_C0
  loc_C20762: PopAdLdVar
  loc_C20763: FLdPr Me
  loc_C20766: MemLdRfVar from_stack_1.global_60
  loc_C20769: LdPrVar
  loc_C2076B: LateMemCall
  loc_C20771: FFreeStr var_AC = ""
  loc_C20778: FFree1Var var_C0 = ""
  loc_C2077B: LitVarStr var_98, "  </tr>"
  loc_C20780: PopAdLdVar
  loc_C20781: FLdPr Me
  loc_C20784: MemLdRfVar from_stack_1.global_60
  loc_C20787: LdPrVar
  loc_C20789: LateMemCall
  loc_C2078F: LitVarStr var_98, "  <tr>"
  loc_C20794: PopAdLdVar
  loc_C20795: FLdPr Me
  loc_C20798: MemLdRfVar from_stack_1.global_60
  loc_C2079B: LdPrVar
  loc_C2079D: LateMemCall
  loc_C207A3: LitVarStr var_98, "    <th colspan=""2""><hr></th>"
  loc_C207A8: PopAdLdVar
  loc_C207A9: FLdPr Me
  loc_C207AC: MemLdRfVar from_stack_1.global_60
  loc_C207AF: LdPrVar
  loc_C207B1: LateMemCall
  loc_C207B7: LitVarStr var_98, "  </tr>"
  loc_C207BC: PopAdLdVar
  loc_C207BD: FLdPr Me
  loc_C207C0: MemLdRfVar from_stack_1.global_60
  loc_C207C3: LdPrVar
  loc_C207C5: LateMemCall
  loc_C207CB: FLdPr Me
  loc_C207CE: MemLdRfVar from_stack_1.global_76
  loc_C207D1: NewIfNullAd
  loc_C207D4: FStAd var_DC 
  loc_C207D8: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C207DD: PopAdLdVar
  loc_C207DE: FLdPr Me
  loc_C207E1: MemLdRfVar from_stack_1.global_60
  loc_C207E4: LdPrVar
  loc_C207E6: LateMemCall
  loc_C207EC: LitStr "    <td width=""50" & Chr(37) & """><strong>Periodo: </strong>"
  loc_C207EF: FLdRfVar var_C2
  loc_C207F2: FLdPr var_DC
  loc_C207F5: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C207FA: FLdI2 var_C2
  loc_C207FD: CStrUI1
  loc_C207FF: FStStrNoPop var_AC
  loc_C20802: ConcatStr
  loc_C20803: FStStrNoPop var_B0
  loc_C20806: LitStr "</td>"
  loc_C20809: ConcatStr
  loc_C2080A: CVarStr var_C0
  loc_C2080D: PopAdLdVar
  loc_C2080E: FLdPr Me
  loc_C20811: MemLdRfVar from_stack_1.global_60
  loc_C20814: LdPrVar
  loc_C20816: LateMemCall
  loc_C2081C: FFreeStr var_AC = ""
  loc_C20823: FFree1Var var_C0 = ""
  loc_C20826: LitVarStr var_98, "    <td width=""50" & Chr(37) & """><strong>Tipo de Liquidación: </strong>"
  loc_C2082B: FLdRfVar var_C0
  loc_C2082E: FLdPr var_DC
  loc_C20831: from_stack_1 = clsliquidacion.DetaTili
  loc_C20836: FLdRfVar var_C0
  loc_C20839: ConcatVar var_EC
  loc_C2083D: LitVarStr var_A8, "</td>"
  loc_C20842: ConcatVar var_FC
  loc_C20846: PopAdLdVar
  loc_C20847: FLdPr Me
  loc_C2084A: MemLdRfVar from_stack_1.global_60
  loc_C2084D: LdPrVar
  loc_C2084F: LateMemCall
  loc_C20855: FFreeVar var_C0 = "": var_EC = ""
  loc_C2085E: LitVarStr var_98, "  </tr>"
  loc_C20863: PopAdLdVar
  loc_C20864: FLdPr Me
  loc_C20867: MemLdRfVar from_stack_1.global_60
  loc_C2086A: LdPrVar
  loc_C2086C: LateMemCall
  loc_C20872: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C20877: PopAdLdVar
  loc_C20878: FLdPr Me
  loc_C2087B: MemLdRfVar from_stack_1.global_60
  loc_C2087E: LdPrVar
  loc_C20880: LateMemCall
  loc_C20886: FLdRfVar var_C2
  loc_C20889: FLdPr var_DC
  loc_C2088C: from_stack_1 = clsliquidacion.TipoLiqu
  loc_C20891: LitVarStr var_11C, "    <td><strong> Tipo: </strong>"
  loc_C20896: LitVarStr var_10C, "Parcial"
  loc_C2089B: FStVarCopyObj var_EC
  loc_C2089E: FLdRfVar var_EC
  loc_C208A1: LitVarStr var_A8, "Completa"
  loc_C208A6: FStVarCopyObj var_C0
  loc_C208A9: FLdRfVar var_C0
  loc_C208AC: FLdUI1
  loc_C208B0: CI2UI1
  loc_C208B2: LitI2_Byte 0
  loc_C208B4: EqI2
  loc_C208B5: CVarBoolI2 var_98
  loc_C208B9: FLdRfVar var_FC
  loc_C208BC: ImpAdCallFPR4  = IIf(, , )
  loc_C208C1: FLdRfVar var_FC
  loc_C208C4: ConcatVar var_12C
  loc_C208C8: LitVarStr var_13C, "</td>"
  loc_C208CD: ConcatVar var_14C
  loc_C208D1: PopAdLdVar
  loc_C208D2: FLdPr Me
  loc_C208D5: MemLdRfVar from_stack_1.global_60
  loc_C208D8: LdPrVar
  loc_C208DA: LateMemCall
  loc_C208E0: FFreeVar var_98 = "": var_C0 = "": var_EC = "": var_FC = "": var_12C = ""
  loc_C208EF: LitStr "    <td><strong> Desde Bimestre: </strong>"
  loc_C208F2: FLdRfVar var_C2
  loc_C208F5: FLdPr var_DC
  loc_C208F8: from_stack_1 = clsliquidacion.BimeLiqu
  loc_C208FD: FLdUI1
  loc_C20901: CStrI2
  loc_C20903: FStStrNoPop var_AC
  loc_C20906: ConcatStr
  loc_C20907: FStStrNoPop var_B0
  loc_C2090A: LitStr "</td>"
  loc_C2090D: ConcatStr
  loc_C2090E: CVarStr var_C0
  loc_C20911: PopAdLdVar
  loc_C20912: FLdPr Me
  loc_C20915: MemLdRfVar from_stack_1.global_60
  loc_C20918: LdPrVar
  loc_C2091A: LateMemCall
  loc_C20920: FFreeStr var_AC = ""
  loc_C20927: FFree1Var var_C0 = ""
  loc_C2092A: LitVarStr var_98, "  </tr>"
  loc_C2092F: PopAdLdVar
  loc_C20930: FLdPr Me
  loc_C20933: MemLdRfVar from_stack_1.global_60
  loc_C20936: LdPrVar
  loc_C20938: LateMemCall
  loc_C2093E: LitVarStr var_98, "  </tr>"
  loc_C20943: PopAdLdVar
  loc_C20944: FLdPr Me
  loc_C20947: MemLdRfVar from_stack_1.global_60
  loc_C2094A: LdPrVar
  loc_C2094C: LateMemCall
  loc_C20952: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C20957: PopAdLdVar
  loc_C20958: FLdPr Me
  loc_C2095B: MemLdRfVar from_stack_1.global_60
  loc_C2095E: LdPrVar
  loc_C20960: LateMemCall
  loc_C20966: LitStr "    <td><strong>Número: </strong>"
  loc_C20969: FLdRfVar var_C2
  loc_C2096C: FLdPr var_DC
  loc_C2096F: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C20974: FLdI2 var_C2
  loc_C20977: CStrUI1
  loc_C20979: FStStrNoPop var_AC
  loc_C2097C: ConcatStr
  loc_C2097D: FStStrNoPop var_B0
  loc_C20980: LitStr "</td>"
  loc_C20983: ConcatStr
  loc_C20984: CVarStr var_C0
  loc_C20987: PopAdLdVar
  loc_C20988: FLdPr Me
  loc_C2098B: MemLdRfVar from_stack_1.global_60
  loc_C2098E: LdPrVar
  loc_C20990: LateMemCall
  loc_C20996: FFreeStr var_AC = ""
  loc_C2099D: FFree1Var var_C0 = ""
  loc_C209A0: LitVarStr var_98, "  </tr>"
  loc_C209A5: PopAdLdVar
  loc_C209A6: FLdPr Me
  loc_C209A9: MemLdRfVar from_stack_1.global_60
  loc_C209AC: LdPrVar
  loc_C209AE: LateMemCall
  loc_C209B4: FLdPr Me
  loc_C209B7: VCallAd Control_ID_CodiComeDesdeMsk
  loc_C209BA: FStAdFunc var_160
  loc_C209BD: FLdPr var_160
  loc_C209C0: LateIdLdVar var_C0 DispID_22 0
  loc_C209C7: CStrVarTmp
  loc_C209C8: FStStrNoPop var_AC
  loc_C209CB: LitStr vbNullString
  loc_C209CE: NeStr
  loc_C209D0: FLdPr Me
  loc_C209D3: VCallAd Control_ID_CodiComeHastaMsk
  loc_C209D6: FStAdFunc var_164
  loc_C209D9: FLdPr var_164
  loc_C209DC: LateIdLdVar var_EC DispID_22 0
  loc_C209E3: CStrVarTmp
  loc_C209E4: FStStrNoPop var_B0
  loc_C209E7: LitStr vbNullString
  loc_C209EA: NeStr
  loc_C209EC: OrI4
  loc_C209ED: FFreeStr var_AC = ""
  loc_C209F4: FFreeAd var_160 = ""
  loc_C209FB: FFreeVar var_C0 = ""
  loc_C20A02: BranchF loc_C20B6D
  loc_C20A05: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C20A0A: PopAdLdVar
  loc_C20A0B: FLdPr Me
  loc_C20A0E: MemLdRfVar from_stack_1.global_60
  loc_C20A11: LdPrVar
  loc_C20A13: LateMemCall
  loc_C20A19: FLdPr Me
  loc_C20A1C: VCallAd Control_ID_CodiComeDesdeMsk
  loc_C20A1F: FStAdFunc var_160
  loc_C20A22: FLdPr var_160
  loc_C20A25: LateIdLdVar var_C0 DispID_22 0
  loc_C20A2C: PopAd
  loc_C20A2E: FLdPr Me
  loc_C20A31: VCallAd Control_ID_CodiComeDesdeMsk
  loc_C20A34: FStAdFunc var_164
  loc_C20A37: FLdPr var_164
  loc_C20A3A: LateIdLdVar var_EC DispID_22 0
  loc_C20A41: PopAd
  loc_C20A43: LitVarStr var_10C, "    <td><strong>"
  loc_C20A48: LitVarStr var_A8, "&nbsp;"
  loc_C20A4D: FStVarCopyObj var_12C
  loc_C20A50: FLdRfVar var_12C
  loc_C20A53: LitStr "Desde Cuenta: </strong>"
  loc_C20A56: FLdRfVar var_EC
  loc_C20A59: CStrVarTmp
  loc_C20A5A: FStStrNoPop var_B0
  loc_C20A5D: ConcatStr
  loc_C20A5E: CVarStr var_FC
  loc_C20A61: FLdRfVar var_C0
  loc_C20A64: CStrVarTmp
  loc_C20A65: FStStrNoPop var_AC
  loc_C20A68: LitStr vbNullString
  loc_C20A6B: NeStr
  loc_C20A6D: CVarBoolI2 var_98
  loc_C20A71: FLdRfVar var_14C
  loc_C20A74: ImpAdCallFPR4  = IIf(, , )
  loc_C20A79: FLdRfVar var_14C
  loc_C20A7C: ConcatVar var_174
  loc_C20A80: LitVarStr var_11C, "</td>"
  loc_C20A85: ConcatVar var_184
  loc_C20A89: PopAdLdVar
  loc_C20A8A: FLdPr Me
  loc_C20A8D: MemLdRfVar from_stack_1.global_60
  loc_C20A90: LdPrVar
  loc_C20A92: LateMemCall
  loc_C20A98: FFreeStr var_AC = ""
  loc_C20A9F: FFreeAd var_160 = ""
  loc_C20AA6: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_FC = "": var_12C = "": var_14C = "": var_174 = ""
  loc_C20AB9: FLdPr Me
  loc_C20ABC: VCallAd Control_ID_CodiComeHastaMsk
  loc_C20ABF: FStAdFunc var_160
  loc_C20AC2: FLdPr var_160
  loc_C20AC5: LateIdLdVar var_C0 DispID_22 0
  loc_C20ACC: PopAd
  loc_C20ACE: FLdPr Me
  loc_C20AD1: VCallAd Control_ID_CodiComeHastaMsk
  loc_C20AD4: FStAdFunc var_164
  loc_C20AD7: FLdPr var_164
  loc_C20ADA: LateIdLdVar var_EC DispID_22 0
  loc_C20AE1: PopAd
  loc_C20AE3: LitVarStr var_10C, "    <td><strong>"
  loc_C20AE8: LitVarStr var_A8, "&nbsp;"
  loc_C20AED: FStVarCopyObj var_12C
  loc_C20AF0: FLdRfVar var_12C
  loc_C20AF3: LitStr "Hasta Cuenta: </strong>"
  loc_C20AF6: FLdRfVar var_EC
  loc_C20AF9: CStrVarTmp
  loc_C20AFA: FStStrNoPop var_B0
  loc_C20AFD: ConcatStr
  loc_C20AFE: CVarStr var_FC
  loc_C20B01: FLdRfVar var_C0
  loc_C20B04: CStrVarTmp
  loc_C20B05: FStStrNoPop var_AC
  loc_C20B08: LitStr vbNullString
  loc_C20B0B: NeStr
  loc_C20B0D: CVarBoolI2 var_98
  loc_C20B11: FLdRfVar var_14C
  loc_C20B14: ImpAdCallFPR4  = IIf(, , )
  loc_C20B19: FLdRfVar var_14C
  loc_C20B1C: ConcatVar var_174
  loc_C20B20: LitVarStr var_11C, "</td>"
  loc_C20B25: ConcatVar var_184
  loc_C20B29: PopAdLdVar
  loc_C20B2A: FLdPr Me
  loc_C20B2D: MemLdRfVar from_stack_1.global_60
  loc_C20B30: LdPrVar
  loc_C20B32: LateMemCall
  loc_C20B38: FFreeStr var_AC = ""
  loc_C20B3F: FFreeAd var_160 = ""
  loc_C20B46: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_FC = "": var_12C = "": var_14C = "": var_174 = ""
  loc_C20B59: LitVarStr var_98, "  </tr>"
  loc_C20B5E: PopAdLdVar
  loc_C20B5F: FLdPr Me
  loc_C20B62: MemLdRfVar from_stack_1.global_60
  loc_C20B65: LdPrVar
  loc_C20B67: LateMemCall
  loc_C20B6D: LitNothing
  loc_C20B6F: FStAd var_DC 
  loc_C20B73: LitVarStr var_98, "</table>"
  loc_C20B78: PopAdLdVar
  loc_C20B79: FLdPr Me
  loc_C20B7C: MemLdRfVar from_stack_1.global_60
  loc_C20B7F: LdPrVar
  loc_C20B81: LateMemCall
  loc_C20B87: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C20B8C: PopAdLdVar
  loc_C20B8D: FLdPr Me
  loc_C20B90: MemLdRfVar from_stack_1.global_60
  loc_C20B93: LdPrVar
  loc_C20B95: LateMemCall
  loc_C20B9B: LitVarStr var_98, "  <thead>"
  loc_C20BA0: PopAdLdVar
  loc_C20BA1: FLdPr Me
  loc_C20BA4: MemLdRfVar from_stack_1.global_60
  loc_C20BA7: LdPrVar
  loc_C20BA9: LateMemCall
  loc_C20BAF: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C20BB4: PopAdLdVar
  loc_C20BB5: FLdPr Me
  loc_C20BB8: MemLdRfVar from_stack_1.global_60
  loc_C20BBB: LdPrVar
  loc_C20BBD: LateMemCall
  loc_C20BC3: LitVarStr var_98, "    <th rowspan=""3"">Comercio</th>"
  loc_C20BC8: PopAdLdVar
  loc_C20BC9: FLdPr Me
  loc_C20BCC: MemLdRfVar from_stack_1.global_60
  loc_C20BCF: LdPrVar
  loc_C20BD1: LateMemCall
  loc_C20BD7: LitVarStr var_98, "    <th>Titular</th>"
  loc_C20BDC: PopAdLdVar
  loc_C20BDD: FLdPr Me
  loc_C20BE0: MemLdRfVar from_stack_1.global_60
  loc_C20BE3: LdPrVar
  loc_C20BE5: LateMemCall
  loc_C20BEB: LitVarStr var_98, "    <th colspan=""6"">Domicilio</th>"
  loc_C20BF0: PopAdLdVar
  loc_C20BF1: FLdPr Me
  loc_C20BF4: MemLdRfVar from_stack_1.global_60
  loc_C20BF7: LdPrVar
  loc_C20BF9: LateMemCall
  loc_C20BFF: LitVarStr var_98, "    <th>Deuda</th>"
  loc_C20C04: PopAdLdVar
  loc_C20C05: FLdPr Me
  loc_C20C08: MemLdRfVar from_stack_1.global_60
  loc_C20C0B: LdPrVar
  loc_C20C0D: LateMemCall
  loc_C20C13: LitVarStr var_98, "    <th colspan=""2"">Tipo</th>"
  loc_C20C18: PopAdLdVar
  loc_C20C19: FLdPr Me
  loc_C20C1C: MemLdRfVar from_stack_1.global_60
  loc_C20C1F: LdPrVar
  loc_C20C21: LateMemCall
  loc_C20C27: LitVarStr var_98, "    <th>Orden</th>"
  loc_C20C2C: PopAdLdVar
  loc_C20C2D: FLdPr Me
  loc_C20C30: MemLdRfVar from_stack_1.global_60
  loc_C20C33: LdPrVar
  loc_C20C35: LateMemCall
  loc_C20C3B: LitVarStr var_98, "  </tr>"
  loc_C20C40: PopAdLdVar
  loc_C20C41: FLdPr Me
  loc_C20C44: MemLdRfVar from_stack_1.global_60
  loc_C20C47: LdPrVar
  loc_C20C49: LateMemCall
  loc_C20C4F: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C20C54: PopAdLdVar
  loc_C20C55: FLdPr Me
  loc_C20C58: MemLdRfVar from_stack_1.global_60
  loc_C20C5B: LdPrVar
  loc_C20C5D: LateMemCall
  loc_C20C63: LitVarStr var_98, "    <th colspan=""4"">Concepto</th>"
  loc_C20C68: PopAdLdVar
  loc_C20C69: FLdPr Me
  loc_C20C6C: MemLdRfVar from_stack_1.global_60
  loc_C20C6F: LdPrVar
  loc_C20C71: LateMemCall
  loc_C20C77: LitVarStr var_98, "    <th width=""11" & Chr(37) & """>Importe</th>"
  loc_C20C7C: PopAdLdVar
  loc_C20C7D: FLdPr Me
  loc_C20C80: MemLdRfVar from_stack_1.global_60
  loc_C20C83: LdPrVar
  loc_C20C85: LateMemCall
  loc_C20C8B: LitVarStr var_98, "    <th width=""11" & Chr(37) & """>Exen.</th>"
  loc_C20C90: PopAdLdVar
  loc_C20C91: FLdPr Me
  loc_C20C94: MemLdRfVar from_stack_1.global_60
  loc_C20C97: LdPrVar
  loc_C20C99: LateMemCall
  loc_C20C9F: LitVarStr var_98, "    <th width=""11" & Chr(37) & """>Desc.</th>"
  loc_C20CA4: PopAdLdVar
  loc_C20CA5: FLdPr Me
  loc_C20CA8: MemLdRfVar from_stack_1.global_60
  loc_C20CAB: LdPrVar
  loc_C20CAD: LateMemCall
  loc_C20CB3: LitVarStr var_98, "    <th width=""11" & Chr(37) & """>Cred.</th>"
  loc_C20CB8: PopAdLdVar
  loc_C20CB9: FLdPr Me
  loc_C20CBC: MemLdRfVar from_stack_1.global_60
  loc_C20CBF: LdPrVar
  loc_C20CC1: LateMemCall
  loc_C20CC7: LitVarStr var_98, "    <th width=""11" & Chr(37) & """ colspan=""3"">Total</th>"
  loc_C20CCC: PopAdLdVar
  loc_C20CCD: FLdPr Me
  loc_C20CD0: MemLdRfVar from_stack_1.global_60
  loc_C20CD3: LdPrVar
  loc_C20CD5: LateMemCall
  loc_C20CDB: LitVarStr var_98, "  </tr>"
  loc_C20CE0: PopAdLdVar
  loc_C20CE1: FLdPr Me
  loc_C20CE4: MemLdRfVar from_stack_1.global_60
  loc_C20CE7: LdPrVar
  loc_C20CE9: LateMemCall
  loc_C20CEF: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C20CF4: PopAdLdVar
  loc_C20CF5: FLdPr Me
  loc_C20CF8: MemLdRfVar from_stack_1.global_60
  loc_C20CFB: LdPrVar
  loc_C20CFD: LateMemCall
  loc_C20D03: LitVarStr var_98, "    <th colspan=""4"">Rubro</th>"
  loc_C20D08: PopAdLdVar
  loc_C20D09: FLdPr Me
  loc_C20D0C: MemLdRfVar from_stack_1.global_60
  loc_C20D0F: LdPrVar
  loc_C20D11: LateMemCall
  loc_C20D17: LitVarStr var_98, "    <th colspan=""5"">Subrubro</th>"
  loc_C20D1C: PopAdLdVar
  loc_C20D1D: FLdPr Me
  loc_C20D20: MemLdRfVar from_stack_1.global_60
  loc_C20D23: LdPrVar
  loc_C20D25: LateMemCall
  loc_C20D2B: LitVarStr var_98, "    <th colspan=""2"">Importe</th>"
  loc_C20D30: PopAdLdVar
  loc_C20D31: FLdPr Me
  loc_C20D34: MemLdRfVar from_stack_1.global_60
  loc_C20D37: LdPrVar
  loc_C20D39: LateMemCall
  loc_C20D3F: LitVarStr var_98, "  </tr>"
  loc_C20D44: PopAdLdVar
  loc_C20D45: FLdPr Me
  loc_C20D48: MemLdRfVar from_stack_1.global_60
  loc_C20D4B: LdPrVar
  loc_C20D4D: LateMemCall
  loc_C20D53: LitVarStr var_98, "  </thead>"
  loc_C20D58: PopAdLdVar
  loc_C20D59: FLdPr Me
  loc_C20D5C: MemLdRfVar from_stack_1.global_60
  loc_C20D5F: LdPrVar
  loc_C20D61: LateMemCall
  loc_C20D67: ExitProcHresult
End Function

Private Function Proc_171_19_A0C058() 'A0C058
  'Data Table: 47A71C
  loc_A0C018: LitVarStr var_94, "</table>"
  loc_A0C01D: PopAdLdVar
  loc_A0C01E: FLdPr Me
  loc_A0C021: MemLdRfVar from_stack_1.global_60
  loc_A0C024: LdPrVar
  loc_A0C026: LateMemCall
  loc_A0C02C: LitVarStr var_94, "</body>"
  loc_A0C031: PopAdLdVar
  loc_A0C032: FLdPr Me
  loc_A0C035: MemLdRfVar from_stack_1.global_60
  loc_A0C038: LdPrVar
  loc_A0C03A: LateMemCall
  loc_A0C040: LitVarStr var_94, "</html>"
  loc_A0C045: PopAdLdVar
  loc_A0C046: FLdPr Me
  loc_A0C049: MemLdRfVar from_stack_1.global_60
  loc_A0C04C: LdPrVar
  loc_A0C04E: LateMemCall
  loc_A0C054: ExitProcHresult
  loc_A0C055: HardType
End Function
