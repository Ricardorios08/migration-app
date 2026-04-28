VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptControldelCalculodeLiquidaciondeCementerio
  Caption = "Control del Cálculo de Liquidación de Cementerio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControldelCalculodeLiquidaciondeCementerio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10992
  ClientHeight = 7932
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7680
    Width = 10995
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeCementerio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9360
    Top = 6600
    Width = 855
    Height = 735
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptControldelCalculodeLiquidaciondeCementerio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeCementerio.frx":0B9C
    Left = 7200
    Top = 6360
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 6360
    Width = 4575
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
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1920
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 16
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
      Left = 360
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
    Width = 10695
    Height = 6255
    TabIndex = 8
    Begin VB.Frame Frame4
      Caption = "Cuenta"
      Left = 240
      Top = 5160
      Width = 8535
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
      Begin MSMask.MaskEdBox CodiDifuDesdeMsk
        Left = 2610
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptControldelCalculodeLiquidaciondeCementerio.frx":0C00
      End
      Begin MSMask.MaskEdBox CodiDifuHastaMsk
        Left = 5730
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptControldelCalculodeLiquidaciondeCementerio.frx":0C88
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
      Left = 8880
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
      Width = 8520
      Height = 4755
      TabIndex = 0
      OleObjectBlob = "rptControldelCalculodeLiquidaciondeCementerio.frx":0D10
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9480
    Top = 6840
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeCementerio.frx":1016
  End
End

Attribute VB_Name = "rptControldelCalculodeLiquidaciondeCementerio"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00562720
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_00562740
  bStruc(32) As Byte ' String fields: 4
End Type

Private Type UDT_3_00562774
  bStruc(32) As Byte ' String fields: 8
End Type


Private Sub cmdSalir_Click() 'A02AE0
  'Data Table: 487D20
  loc_A02AB0: LitVarStr var_94, "Cerrando..."
  loc_A02AB5: PopAdLdVar
  loc_A02AB6: FLdPr Me
  loc_A02AB9: VCallAd Control_ID_statusBar
  loc_A02ABC: FStAdFunc var_A8
  loc_A02ABF: FLdPr var_A8
  loc_A02AC2: LateIdSt
  loc_A02AC7: FFree1Ad var_A8
  loc_A02ACA: ILdRf Me
  loc_A02ACD: FStAdNoPop
  loc_A02AD1: ImpAdLdRf MemVar_D9C5D8
  loc_A02AD4: NewIfNullPr Global
  loc_A02AD7: Global.Unload from_stack_1
  loc_A02ADC: FFree1Ad var_A8
  loc_A02ADF: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A65C90
  'Data Table: 487D20
  loc_A65C24: LitVar_FALSE
  loc_A65C28: PopAdLdVar
  loc_A65C29: FLdPr Me
  loc_A65C2C: VCallAd Control_ID_dgdLiquidacion
  loc_A65C2F: FStAdFunc var_A8
  loc_A65C32: FLdPr var_A8
  loc_A65C35: LateIdSt
  loc_A65C3A: FFree1Ad var_A8
  loc_A65C3D: LitI2_Byte 0
  loc_A65C3F: ILdRf Me
  loc_A65C42: CastAd
  loc_A65C45: FStAdFunc var_A8
  loc_A65C48: FLdRfVar var_A8
  loc_A65C4B: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A65C50: FFree1Ad var_A8
  loc_A65C53: FLdRfVar var_AA
  loc_A65C56: FLdPr Me
  loc_A65C59: VCallAd Control_ID_cmdPredeterminada
  loc_A65C5C: FStAdFunc var_A8
  loc_A65C5F: FLdPr var_A8
  loc_A65C62:  = Me.Enabled
  loc_A65C67: FLdI2 var_AA
  loc_A65C6A: NotI4
  loc_A65C6B: FFree1Ad var_A8
  loc_A65C6E: BranchF loc_A65C79
  loc_A65C71: ImpAdCallFPR4 DoEvents()
  loc_A65C76: Branch loc_A65C53
  loc_A65C79: ILdRf Me
  loc_A65C7C: FStAdNoPop
  loc_A65C80: ImpAdLdRf MemVar_D9C5D8
  loc_A65C83: NewIfNullPr Global
  loc_A65C86: Global.Unload from_stack_1
  loc_A65C8B: FFree1Ad var_A8
  loc_A65C8E: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DF79C
  'Data Table: 487D20
  loc_9DF780: LitI2_Byte &HFF
  loc_9DF782: LitI2_Byte 0
  loc_9DF784: ILdRf Me
  loc_9DF787: CastAd
  loc_9DF78A: FStAdFunc var_88
  loc_9DF78D: FLdRfVar var_88
  loc_9DF790: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DF795: FFree1Ad var_88
  loc_9DF798: ExitProcHresult
  loc_9DF799: MemLdRfVar from_stack_1.global_56
End Sub

Private Sub CodiDifuHastaMsk_UnknownEvent_0 '9BD8F0
  'Data Table: 487D20
  loc_9BD8DC: FLdPr Me
  loc_9BD8DF: VCallAd Control_ID_CodiDifuHastaMsk
  loc_9BD8E2: CVarAd
  loc_9BD8E6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD8EB: FFree1Var var_94 = ""
  loc_9BD8EE: ExitProcHresult
  loc_9BD8EF: CStrVarTmp
End Sub

Private Sub cmdPdf_Click() 'A06810
  'Data Table: 487D20
  loc_A067DC: LitVar_FALSE
  loc_A067E0: PopAdLdVar
  loc_A067E1: FLdPr Me
  loc_A067E4: VCallAd Control_ID_dgdLiquidacion
  loc_A067E7: FStAdFunc var_A8
  loc_A067EA: FLdPr var_A8
  loc_A067ED: LateIdSt
  loc_A067F2: FFree1Ad var_A8
  loc_A067F5: LitI2_Byte 0
  loc_A067F7: PopTmpLdAd2 var_AA
  loc_A067FA: ILdRf Me
  loc_A067FD: CastAd
  loc_A06800: FStAdFunc var_A8
  loc_A06803: FLdRfVar var_A8
  loc_A06806: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_A0680B: FFree1Ad var_A8
  loc_A0680E: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1B070
  'Data Table: 487D20
  loc_A1B038: FLdPr Me
  loc_A1B03B: VCallAd Control_ID_statusBar
  loc_A1B03E: FStAdFunc var_88
  loc_A1B041: FLdPr var_88
  loc_A1B044: LateIdLdVar var_98 DispID_1 0
  loc_A1B04B: CStrVarTmp
  loc_A1B04C: CVarStr var_A8
  loc_A1B04F: PopAdLdVar
  loc_A1B050: FLdPr Me
  loc_A1B053: VCallAd Control_ID_statusBar
  loc_A1B056: FStAdFunc var_BC
  loc_A1B059: FLdPr var_BC
  loc_A1B05C: LateIdSt
  loc_A1B061: FFreeAd var_88 = ""
  loc_A1B068: FFreeVar var_98 = ""
  loc_A1B06F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AD1AB0
  'Data Table: 487D20
  loc_AD1984: LitI2_Byte 0
  loc_AD1986: FLdPr Me
  loc_AD1989: MemStI2 bGenerado
  loc_AD198C: LitI2_Byte &HFF
  loc_AD198E: FLdPr Me
  loc_AD1991: MemStI2 bLogos
  loc_AD1994: LitI2_Byte 0
  loc_AD1996: ILdRf Me
  loc_AD1999: CastAd
  loc_AD199C: FStAdFunc var_88
  loc_AD199F: FLdRfVar var_88
  loc_AD19A2: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AD19A7: FFree1Ad var_88
  loc_AD19AA: FLdPr Me
  loc_AD19AD: MemLdRfVar from_stack_1.global_76
  loc_AD19B0: NewIfNullPr clsliquidacion
  loc_AD19B3: Call clsliquidacion.Requery()
  loc_AD19B8: LitVarStr var_98, vbNullString
  loc_AD19BD: PopAdLdVar
  loc_AD19BE: FLdPr Me
  loc_AD19C1: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_AD19C4: FStAdFunc var_88
  loc_AD19C7: FLdPr var_88
  loc_AD19CA: LateIdSt
  loc_AD19CF: FFree1Ad var_88
  loc_AD19D2: LitVarStr var_98, vbNullString
  loc_AD19D7: PopAdLdVar
  loc_AD19D8: FLdPr Me
  loc_AD19DB: VCallAd Control_ID_CodiDifuHastaMsk
  loc_AD19DE: FStAdFunc var_88
  loc_AD19E1: FLdPr var_88
  loc_AD19E4: LateIdSt
  loc_AD19E9: FFree1Ad var_88
  loc_AD19EC: FLdRfVar var_AC
  loc_AD19EF: FLdPr Me
  loc_AD19F2: MemLdRfVar from_stack_1.global_76
  loc_AD19F5: NewIfNullPr clsliquidacion
  loc_AD19F8: from_stack_1 = clsliquidacion.RecordCount
  loc_AD19FD: ILdRf var_AC
  loc_AD1A00: LitI4 0
  loc_AD1A05: GtI4
  loc_AD1A06: BranchF loc_AD1A78
  loc_AD1A09: LitI4 0
  loc_AD1A0E: LitI4 1
  loc_AD1A13: FLdRfVar var_B0
  loc_AD1A16: Redim
  loc_AD1A20: FLdPr Me
  loc_AD1A23: MemLdRfVar from_stack_1.global_76
  loc_AD1A26: NewIfNullAd
  loc_AD1A29: FStAd var_88 
  loc_AD1A2D: FLdRfVar var_88
  loc_AD1A30: CVarRef
  loc_AD1A35: ParmAry1St
  loc_AD1A3B: FLdPr Me
  loc_AD1A3E: VCallAd Control_ID_dgdLiquidacion
  loc_AD1A41: CVarAd
  loc_AD1A45: ParmAry1St
  loc_AD1A4B: FLdRfVar var_B0
  loc_AD1A4E: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AD1A53: ILdRf var_88
  loc_AD1A56: CastAd
  loc_AD1A59: FLdPr Me
  loc_AD1A5C: MemStAdFunc
  loc_AD1A60: FLdRfVar var_B0
  loc_AD1A63: Erase
  loc_AD1A64: FFree1Ad var_88
  loc_AD1A67: FLdPr Me
  loc_AD1A6A: MemLdRfVar from_stack_1.global_76
  loc_AD1A6D: NewIfNullPr clsliquidacion
  loc_AD1A70: Call clsliquidacion.MoveFirst()
  loc_AD1A75: Branch loc_AD1A94
  loc_AD1A78: LitStr "No existen liquidaciones para listar"
  loc_AD1A7B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD1A80: ILdRf Me
  loc_AD1A83: CastAd
  loc_AD1A86: FStAdFunc var_88
  loc_AD1A89: FLdRfVar var_88
  loc_AD1A8C: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_AD1A91: FFree1Ad var_88
  loc_AD1A94: Call HabilitarCriterio()
  loc_AD1A99: ILdRf Me
  loc_AD1A9C: CastAd
  loc_AD1A9F: FStAdFunc var_88
  loc_AD1AA2: FLdRfVar var_88
  loc_AD1AA5: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AD1AAA: FFree1Ad var_88
  loc_AD1AAD: ExitProcHresult
  loc_AD1AAE: BranchF loc_ADC184
End Sub

Private Sub cmdPrevia_Click() 'A02C0C
  'Data Table: 487D20
  loc_A02BDC: LitVar_FALSE
  loc_A02BE0: PopAdLdVar
  loc_A02BE1: FLdPr Me
  loc_A02BE4: VCallAd Control_ID_dgdLiquidacion
  loc_A02BE7: FStAdFunc var_A8
  loc_A02BEA: FLdPr var_A8
  loc_A02BED: LateIdSt
  loc_A02BF2: FFree1Ad var_A8
  loc_A02BF5: ILdRf Me
  loc_A02BF8: CastAd
  loc_A02BFB: FStAdFunc var_A8
  loc_A02BFE: FLdRfVar var_A8
  loc_A02C01: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_A02C06: FFree1Ad var_A8
  loc_A02C09: ExitProcHresult
End Sub

Private Sub CodiDifuDesdeMsk_UnknownEvent_0 '9BD8A8
  'Data Table: 487D20
  loc_9BD894: FLdPr Me
  loc_9BD897: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_9BD89A: CVarAd
  loc_9BD89E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD8A3: FFree1Var var_94 = ""
  loc_9BD8A6: ExitProcHresult
End Sub

Private Sub Form_Load() 'A21CC4
  'Data Table: 487D20
  loc_A21C84: ILdRf Me
  loc_A21C87: CastAd
  loc_A21C8A: FStAdFunc var_88
  loc_A21C8D: FLdRfVar var_88
  loc_A21C90: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A21C95: FFree1Ad var_88
  loc_A21C98: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu"
  loc_A21C9B: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A21C9E: ConcatStr
  loc_A21C9F: FStStrNoPop var_8C
  loc_A21CA2: LitStr " WHERE liquidacion.CodiOfic = 4 ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A21CA5: ConcatStr
  loc_A21CA6: FStStrNoPop var_90
  loc_A21CA9: FLdPr Me
  loc_A21CAC: MemLdRfVar from_stack_1.global_76
  loc_A21CAF: NewIfNullPr clsliquidacion
  loc_A21CB2: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A21CB7: FFreeStr var_8C = ""
  loc_A21CBE: Call cmdNueva_Click()
  loc_A21CC3: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CCAC4
  'Data Table: 487D20
  loc_9CCAAC: FLdPr Me
  loc_9CCAAF: VCallAd Control_ID_wbbReporte
  loc_9CCAB2: FStAdFunc var_88
  loc_9CCAB5: FLdRfVar var_88
  loc_9CCAB8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CCABD: FFree1Ad var_88
  loc_9CCAC0: ExitProcHresult
End Sub

Public Function bGeneradoGet() '488A98
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '488AA7
  bGenerado = Value
End Sub

Public Function bLogosGet() '488AB6
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '488AC5
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A5D104
  'Data Table: 487D20
  loc_A5D0B0: LitI4 0
  loc_A5D0B5: LitI4 2
  loc_A5D0BA: FLdRfVar var_88
  loc_A5D0BD: Redim
  loc_A5D0C7: FLdPr Me
  loc_A5D0CA: VCallAd Control_ID_dgdLiquidacion
  loc_A5D0CD: CVarAd
  loc_A5D0D1: ParmAry1St
  loc_A5D0D7: FLdPr Me
  loc_A5D0DA: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_A5D0DD: CVarAd
  loc_A5D0E1: ParmAry1St
  loc_A5D0E7: FLdPr Me
  loc_A5D0EA: VCallAd Control_ID_CodiDifuHastaMsk
  loc_A5D0ED: CVarAd
  loc_A5D0F1: ParmAry1St
  loc_A5D0F7: FLdRfVar var_88
  loc_A5D0FA: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5D0FF: FLdRfVar var_88
  loc_A5D102: Erase
  loc_A5D103: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B4E9B8
  'Data Table: 487D20
  loc_B4E66C: FLdPr Me
  loc_B4E66F: MemLdI2 bGenerado
  loc_B4E672: BranchF loc_B4E676
  loc_B4E675: ExitProcHresult
  loc_B4E676: LitVarStr var_9C, "Generando reporte..."
  loc_B4E67B: PopAdLdVar
  loc_B4E67C: FLdPr Me
  loc_B4E67F: VCallAd Control_ID_statusBar
  loc_B4E682: FStAdFunc var_B0
  loc_B4E685: FLdPr var_B0
  loc_B4E688: LateIdSt
  loc_B4E68D: FFree1Ad var_B0
  loc_B4E690: LitI4 &HB
  loc_B4E695: CI2I4
  loc_B4E696: FLdPr Me
  loc_B4E699: Me.MousePointer = from_stack_1
  loc_B4E69E: FLdRfVar var_B4
  loc_B4E6A1: FLdPr Me
  loc_B4E6A4: MemLdRfVar from_stack_1.global_76
  loc_B4E6A7: NewIfNullPr clsliquidacion
  loc_B4E6AA: from_stack_1 = clsliquidacion.RecordCount
  loc_B4E6AF: ILdRf var_B4
  loc_B4E6B2: LitI4 1
  loc_B4E6B7: LtI4
  loc_B4E6B8: BranchF loc_B4E6C6
  loc_B4E6BB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B4E6BE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4E6C3: Branch loc_B4E98D
  loc_B4E6C6: FLdPr Me
  loc_B4E6C9: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_B4E6CC: FStAdFunc var_B0
  loc_B4E6CF: FLdPr var_B0
  loc_B4E6D2: LateIdLdVar var_C4 DispID_22 0
  loc_B4E6D9: PopAd
  loc_B4E6DB: FLdPr Me
  loc_B4E6DE: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_B4E6E1: FStAdFunc var_CC
  loc_B4E6E4: FLdPr var_CC
  loc_B4E6E7: LateIdLdVar var_DC DispID_22 0
  loc_B4E6EE: PopAd
  loc_B4E6F0: LitVarStr var_AC, vbNullString
  loc_B4E6F5: FStVarCopyObj var_104
  loc_B4E6F8: FLdRfVar var_104
  loc_B4E6FB: LitStr " AND liquceme.CodiDifu >= '"
  loc_B4E6FE: FLdRfVar var_DC
  loc_B4E701: CStrVarTmp
  loc_B4E702: FStStrNoPop var_E0
  loc_B4E705: ConcatStr
  loc_B4E706: FStStrNoPop var_E4
  loc_B4E709: LitStr "'"
  loc_B4E70C: ConcatStr
  loc_B4E70D: CVarStr var_F4
  loc_B4E710: FLdRfVar var_C4
  loc_B4E713: CStrVarTmp
  loc_B4E714: FStStrNoPop var_C8
  loc_B4E717: LitStr vbNullString
  loc_B4E71A: NeStr
  loc_B4E71C: CVarBoolI2 var_9C
  loc_B4E720: FLdRfVar var_114
  loc_B4E723: ImpAdCallFPR4  = IIf(, , )
  loc_B4E728: FLdRfVar var_114
  loc_B4E72B: CStrVarTmp
  loc_B4E72C: FStStr var_88
  loc_B4E72F: FFreeStr var_C8 = "": var_E0 = ""
  loc_B4E738: FFreeAd var_B0 = ""
  loc_B4E73F: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F4 = "": var_104 = ""
  loc_B4E74E: FLdPr Me
  loc_B4E751: VCallAd Control_ID_CodiDifuHastaMsk
  loc_B4E754: FStAdFunc var_B0
  loc_B4E757: FLdPr var_B0
  loc_B4E75A: LateIdLdVar var_C4 DispID_22 0
  loc_B4E761: PopAd
  loc_B4E763: FLdPr Me
  loc_B4E766: VCallAd Control_ID_CodiDifuHastaMsk
  loc_B4E769: FStAdFunc var_CC
  loc_B4E76C: FLdPr var_CC
  loc_B4E76F: LateIdLdVar var_DC DispID_22 0
  loc_B4E776: PopAd
  loc_B4E778: LitVarStr var_AC, vbNullString
  loc_B4E77D: FStVarCopyObj var_104
  loc_B4E780: FLdRfVar var_104
  loc_B4E783: LitStr " AND liquceme.CodiDifu <= '"
  loc_B4E786: FLdRfVar var_DC
  loc_B4E789: CStrVarTmp
  loc_B4E78A: FStStrNoPop var_E0
  loc_B4E78D: ConcatStr
  loc_B4E78E: FStStrNoPop var_E4
  loc_B4E791: LitStr "'"
  loc_B4E794: ConcatStr
  loc_B4E795: CVarStr var_F4
  loc_B4E798: FLdRfVar var_C4
  loc_B4E79B: CStrVarTmp
  loc_B4E79C: FStStrNoPop var_C8
  loc_B4E79F: LitStr vbNullString
  loc_B4E7A2: NeStr
  loc_B4E7A4: CVarBoolI2 var_9C
  loc_B4E7A8: FLdRfVar var_114
  loc_B4E7AB: ImpAdCallFPR4  = IIf(, , )
  loc_B4E7B0: FLdRfVar var_114
  loc_B4E7B3: CStrVarTmp
  loc_B4E7B4: FStStr var_8C
  loc_B4E7B7: FFreeStr var_C8 = "": var_E0 = ""
  loc_B4E7C0: FFreeAd var_B0 = ""
  loc_B4E7C7: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F4 = "": var_104 = ""
  loc_B4E7D6: FLdPr Me
  loc_B4E7D9: MemLdRfVar from_stack_1.global_80
  loc_B4E7DC: NewIfNullAd
  loc_B4E7DF: FStAd var_118 
  loc_B4E7E3: LitStr "SELECT liquceme.CodiDifu, DetaPers, liquceme.CodiLoca, DeudLice, DetaTise,"
  loc_B4E7E6: LitStr " OrdeLice, liquceme.CodiConc, DetaConc, ImpoLice, ExenLice, DescLice, CrafLice, TotaLice, TipoLice, TipoVenc"
  loc_B4E7E9: ConcatStr
  loc_B4E7EA: FStStrNoPop var_C8
  loc_B4E7ED: LitStr " FROM liquceme"
  loc_B4E7F0: ConcatStr
  loc_B4E7F1: FStStrNoPop var_E0
  loc_B4E7F4: LitStr " INNER JOIN difunto ON difunto.CodiDifu = liquceme.CodiDifu"
  loc_B4E7F7: ConcatStr
  loc_B4E7F8: FStStrNoPop var_E4
  loc_B4E7FB: LitStr " INNER JOIN relacion ON relacion.CodiOfic = 4 AND relacion.CuenCtct = difunto.CodiDifu AND relacion.TipoRela = 'Titular'"
  loc_B4E7FE: ConcatStr
  loc_B4E7FF: FStStrNoPop var_11C
  loc_B4E802: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_B4E805: ConcatStr
  loc_B4E806: FStStrNoPop var_120
  loc_B4E809: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = liquceme.PeriLiqu AND concepto.CodiConc = liquceme.CodiConc"
  loc_B4E80C: ConcatStr
  loc_B4E80D: FStStrNoPop var_124
  loc_B4E810: LitStr " LEFT JOIN tiposepu on tiposepu.CodiTise = difunto.CodiTise"
  loc_B4E813: ConcatStr
  loc_B4E814: FStStrNoPop var_128
  loc_B4E817: LitStr " WHERE liquceme.PeriLiqu = "
  loc_B4E81A: ConcatStr
  loc_B4E81B: FStStrNoPop var_130
  loc_B4E81E: FLdRfVar var_12A
  loc_B4E821: FLdPr Me
  loc_B4E824: MemLdRfVar from_stack_1.global_76
  loc_B4E827: NewIfNullPr clsliquidacion
  loc_B4E82A: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B4E82F: FLdI2 var_12A
  loc_B4E832: CStrUI1
  loc_B4E834: FStStrNoPop var_134
  loc_B4E837: ConcatStr
  loc_B4E838: FStStrNoPop var_138
  loc_B4E83B: LitStr " AND liquceme.CodiTili = "
  loc_B4E83E: ConcatStr
  loc_B4E83F: FStStrNoPop var_140
  loc_B4E842: FLdRfVar var_13A
  loc_B4E845: FLdPr Me
  loc_B4E848: MemLdRfVar from_stack_1.global_76
  loc_B4E84B: NewIfNullPr clsliquidacion
  loc_B4E84E: from_stack_1 = clsliquidacion.CodiTili
  loc_B4E853: FLdUI1
  loc_B4E857: CStrI2
  loc_B4E859: FStStrNoPop var_144
  loc_B4E85C: ConcatStr
  loc_B4E85D: FStStrNoPop var_148
  loc_B4E860: LitStr " AND liquceme.NumeLiqu = "
  loc_B4E863: ConcatStr
  loc_B4E864: FStStrNoPop var_150
  loc_B4E867: FLdRfVar var_14A
  loc_B4E86A: FLdPr Me
  loc_B4E86D: MemLdRfVar from_stack_1.global_76
  loc_B4E870: NewIfNullPr clsliquidacion
  loc_B4E873: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B4E878: FLdI2 var_14A
  loc_B4E87B: CStrUI1
  loc_B4E87D: FStStrNoPop var_154
  loc_B4E880: ConcatStr
  loc_B4E881: FStStrNoPop var_158
  loc_B4E884: ILdRf var_88
  loc_B4E887: ConcatStr
  loc_B4E888: FStStrNoPop var_15C
  loc_B4E88B: ILdRf var_8C
  loc_B4E88E: ConcatStr
  loc_B4E88F: FStStrNoPop var_160
  loc_B4E892: LitStr " ORDER BY liquceme.CodiDifu, liquceme.PeriLiqu, liquceme.BimeLiqu, liquceme.CodiTili, liquceme.NumeLiqu, liquceme.CodiConc"
  loc_B4E895: ConcatStr
  loc_B4E896: FStStrNoPop var_164
  loc_B4E899: FLdPr var_118
  loc_B4E89C: Call clsliquceme.RedefineRS(from_stack_1v)
  loc_B4E8A1: FFreeStr var_C8 = "": var_E0 = "": var_E4 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_B4E8CA: FLdRfVar var_B4
  loc_B4E8CD: FLdPr var_118
  loc_B4E8D0: from_stack_1 = clsliquceme.RecordCount
  loc_B4E8D5: ILdRf var_B4
  loc_B4E8D8: LitI4 1
  loc_B4E8DD: LtI4
  loc_B4E8DE: BranchF loc_B4E8EC
  loc_B4E8E1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B4E8E4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4E8E9: Branch loc_B4E98D
  loc_B4E8EC: LitI4 0
  loc_B4E8F1: FLdPr Me
  loc_B4E8F4: MemStI4 global_88
  loc_B4E8F7: LitI4 0
  loc_B4E8FC: LitI4 1
  loc_B4E901: FLdPr Me
  loc_B4E904: MemLdRfVar from_stack_1.global_96
  loc_B4E907: Redim
  loc_B4E911: LitI4 0
  loc_B4E916: LitI4 1
  loc_B4E91B: FLdPr Me
  loc_B4E91E: MemLdRfVar from_stack_1.global_84
  loc_B4E921: Redim
  loc_B4E92B: FLdPr var_118
  loc_B4E92E: Call clsliquceme.MoveFirst()
  loc_B4E933: Call Proc_236_19_B31F8C()
  loc_B4E938: FLdRfVar var_12A
  loc_B4E93B: FLdPr var_118
  loc_B4E93E: from_stack_1 = clsliquceme.EOF
  loc_B4E943: FLdI2 var_12A
  loc_B4E946: NotI4
  loc_B4E947: BranchF loc_B4E97F
  loc_B4E94A: FLdRfVar var_B4
  loc_B4E94D: FLdPr var_118
  loc_B4E950: from_stack_1 = clsliquceme.CodiDifu
  loc_B4E955: ILdRf var_B4
  loc_B4E958: CR8I4
  loc_B4E959: FLdPr Me
  loc_B4E95C: MemLdStr global_88
  loc_B4E95F: FLdPr Me
  loc_B4E962: MemLdStr global_84
  loc_B4E965: Ary1LdPr
  loc_B4E966: MemLdStr global_0
  loc_B4E969: CR8Str
  loc_B4E96B: NeR8
  loc_B4E96C: BranchF loc_B4E977
  loc_B4E96F: Call Proc_236_19_B31F8C()
  loc_B4E974: Branch loc_B4E97C
  loc_B4E977: Call Proc_236_20_BB9A54()
  loc_B4E97C: Branch loc_B4E938
  loc_B4E97F: LitNothing
  loc_B4E981: FStAd var_118 
  loc_B4E985: LitI2_Byte &HFF
  loc_B4E987: FLdPr Me
  loc_B4E98A: MemStI2 bGenerado
  loc_B4E98D: LitI4 0
  loc_B4E992: CI2I4
  loc_B4E993: FLdPr Me
  loc_B4E996: Me.MousePointer = from_stack_1
  loc_B4E99B: LitVarStr var_9C, vbNullString
  loc_B4E9A0: PopAdLdVar
  loc_B4E9A1: FLdPr Me
  loc_B4E9A4: VCallAd Control_ID_statusBar
  loc_B4E9A7: FStAdFunc var_B0
  loc_B4E9AA: FLdPr var_B0
  loc_B4E9AD: LateIdSt
  loc_B4E9B2: FFree1Ad var_B0
  loc_B4E9B5: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B9DAF0
  'Data Table: 487D20
  loc_B9D534: FLdRfVar var_88
  loc_B9D537: LitI2_Byte 0
  loc_B9D539: LitI2_Byte &HFF
  loc_B9D53B: ImpAdLdI4 MemVar_D93C84
  loc_B9D53E: FLdPr Me
  loc_B9D541: MemLdRfVar from_stack_1.global_56
  loc_B9D544: NewIfNullPr IFileSystem3
  loc_B9D547: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B9D54C: ILdRf var_88
  loc_B9D54F: FLdPr Me
  loc_B9D552: MemStVarAd
  loc_B9D556: FFree1Ad var_88
  loc_B9D559: LitI2_Byte &HFF
  loc_B9D55B: ImpAdStI2 MemVar_D93C8A
  loc_B9D55E: Call Proc_236_21_C05700()
  loc_B9D563: LitI4 1
  loc_B9D568: FLdPr Me
  loc_B9D56B: MemLdRfVar from_stack_1.global_88
  loc_B9D56E: FLdPr Me
  loc_B9D571: MemLdStr global_84
  loc_B9D574: LitI2_Byte 1
  loc_B9D576: FnUBound
  loc_B9D578: ForI4 var_90
  loc_B9D57E: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B9D583: PopAdLdVar
  loc_B9D584: FLdPr Me
  loc_B9D587: MemLdRfVar from_stack_1.global_60
  loc_B9D58A: LdPrVar
  loc_B9D58C: LateMemCall
  loc_B9D592: FLdPr Me
  loc_B9D595: MemLdStr global_88
  loc_B9D598: FLdPr Me
  loc_B9D59B: MemLdStr global_84
  loc_B9D59E: AryLock
  loc_B9D5A1: Ary1LdRf
  loc_B9D5A2: FStR4 var_B8
  loc_B9D5A5: LitStr "   <td rowspan="""
  loc_B9D5A8: FMemLdR4 var_B8(28)
  loc_B9D5AD: LitI2_Byte 1
  loc_B9D5AF: FnUBound
  loc_B9D5B1: CStrI4
  loc_B9D5B3: FStStrNoPop var_BC
  loc_B9D5B6: ConcatStr
  loc_B9D5B7: FStStrNoPop var_C0
  loc_B9D5BA: LitStr """ align=""right"">"
  loc_B9D5BD: ConcatStr
  loc_B9D5BE: FStStrNoPop var_C4
  loc_B9D5C1: FMemLdR4 var_B8(0)
  loc_B9D5C6: ConcatStr
  loc_B9D5C7: FStStrNoPop var_C8
  loc_B9D5CA: LitStr "</td>"
  loc_B9D5CD: ConcatStr
  loc_B9D5CE: CVarStr var_D8
  loc_B9D5D1: PopAdLdVar
  loc_B9D5D2: FLdPr Me
  loc_B9D5D5: MemLdRfVar from_stack_1.global_60
  loc_B9D5D8: LdPrVar
  loc_B9D5DA: LateMemCall
  loc_B9D5E0: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9D5EB: FFree1Var var_D8 = ""
  loc_B9D5EE: LitStr "   <td rowspan="""
  loc_B9D5F1: FMemLdR4 var_B8(28)
  loc_B9D5F6: LitI2_Byte 1
  loc_B9D5F8: FnUBound
  loc_B9D5FA: CStrI4
  loc_B9D5FC: FStStrNoPop var_BC
  loc_B9D5FF: ConcatStr
  loc_B9D600: FStStrNoPop var_C0
  loc_B9D603: LitStr """ align=""left"">"
  loc_B9D606: ConcatStr
  loc_B9D607: FStStrNoPop var_C4
  loc_B9D60A: FMemLdR4 var_B8(4)
  loc_B9D60F: ConcatStr
  loc_B9D610: FStStrNoPop var_C8
  loc_B9D613: LitStr "</td>"
  loc_B9D616: ConcatStr
  loc_B9D617: CVarStr var_D8
  loc_B9D61A: PopAdLdVar
  loc_B9D61B: FLdPr Me
  loc_B9D61E: MemLdRfVar from_stack_1.global_60
  loc_B9D621: LdPrVar
  loc_B9D623: LateMemCall
  loc_B9D629: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9D634: FFree1Var var_D8 = ""
  loc_B9D637: LitStr "   <td rowspan="""
  loc_B9D63A: FMemLdR4 var_B8(28)
  loc_B9D63F: LitI2_Byte 1
  loc_B9D641: FnUBound
  loc_B9D643: CStrI4
  loc_B9D645: FStStrNoPop var_BC
  loc_B9D648: ConcatStr
  loc_B9D649: FStStrNoPop var_C0
  loc_B9D64C: LitStr """ align=""left"">"
  loc_B9D64F: ConcatStr
  loc_B9D650: FStStrNoPop var_C4
  loc_B9D653: FMemLdR4 var_B8(12)
  loc_B9D658: ConcatStr
  loc_B9D659: FStStrNoPop var_C8
  loc_B9D65C: LitStr "</td>"
  loc_B9D65F: ConcatStr
  loc_B9D660: CVarStr var_D8
  loc_B9D663: PopAdLdVar
  loc_B9D664: FLdPr Me
  loc_B9D667: MemLdRfVar from_stack_1.global_60
  loc_B9D66A: LdPrVar
  loc_B9D66C: LateMemCall
  loc_B9D672: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9D67D: FFree1Var var_D8 = ""
  loc_B9D680: LitStr "   <td rowspan="""
  loc_B9D683: FMemLdR4 var_B8(28)
  loc_B9D688: LitI2_Byte 1
  loc_B9D68A: FnUBound
  loc_B9D68C: CStrI4
  loc_B9D68E: FStStrNoPop var_BC
  loc_B9D691: ConcatStr
  loc_B9D692: FStStrNoPop var_C0
  loc_B9D695: LitStr """ align=""right"">"
  loc_B9D698: ConcatStr
  loc_B9D699: FStStrNoPop var_C4
  loc_B9D69C: FMemLdR4 var_B8(8)
  loc_B9D6A1: ConcatStr
  loc_B9D6A2: FStStrNoPop var_C8
  loc_B9D6A5: LitStr "</td>"
  loc_B9D6A8: ConcatStr
  loc_B9D6A9: CVarStr var_D8
  loc_B9D6AC: PopAdLdVar
  loc_B9D6AD: FLdPr Me
  loc_B9D6B0: MemLdRfVar from_stack_1.global_60
  loc_B9D6B3: LdPrVar
  loc_B9D6B5: LateMemCall
  loc_B9D6BB: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9D6C6: FFree1Var var_D8 = ""
  loc_B9D6C9: LitStr "   <td rowspan="""
  loc_B9D6CC: FMemLdR4 var_B8(28)
  loc_B9D6D1: LitI2_Byte 1
  loc_B9D6D3: FnUBound
  loc_B9D6D5: CStrI4
  loc_B9D6D7: FStStrNoPop var_BC
  loc_B9D6DA: ConcatStr
  loc_B9D6DB: FStStrNoPop var_C0
  loc_B9D6DE: LitStr """ align=""right"">"
  loc_B9D6E1: ConcatStr
  loc_B9D6E2: FStStrNoPop var_C4
  loc_B9D6E5: FMemLdR4 var_B8(16)
  loc_B9D6EA: ConcatStr
  loc_B9D6EB: FStStrNoPop var_C8
  loc_B9D6EE: LitStr "</td>"
  loc_B9D6F1: ConcatStr
  loc_B9D6F2: CVarStr var_D8
  loc_B9D6F5: PopAdLdVar
  loc_B9D6F6: FLdPr Me
  loc_B9D6F9: MemLdRfVar from_stack_1.global_60
  loc_B9D6FC: LdPrVar
  loc_B9D6FE: LateMemCall
  loc_B9D704: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9D70F: FFree1Var var_D8 = ""
  loc_B9D712: LitStr "   <td rowspan="""
  loc_B9D715: FMemLdR4 var_B8(28)
  loc_B9D71A: LitI2_Byte 1
  loc_B9D71C: FnUBound
  loc_B9D71E: CStrI4
  loc_B9D720: FStStrNoPop var_BC
  loc_B9D723: ConcatStr
  loc_B9D724: FStStrNoPop var_C0
  loc_B9D727: LitStr """ align=""left"" nowrap=""nowrap"">"
  loc_B9D72A: ConcatStr
  loc_B9D72B: FStStrNoPop var_C4
  loc_B9D72E: FMemLdR4 var_B8(20)
  loc_B9D733: ConcatStr
  loc_B9D734: FStStrNoPop var_C8
  loc_B9D737: LitStr "</td>"
  loc_B9D73A: ConcatStr
  loc_B9D73B: CVarStr var_D8
  loc_B9D73E: PopAdLdVar
  loc_B9D73F: FLdPr Me
  loc_B9D742: MemLdRfVar from_stack_1.global_60
  loc_B9D745: LdPrVar
  loc_B9D747: LateMemCall
  loc_B9D74D: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9D758: FFree1Var var_D8 = ""
  loc_B9D75B: LitStr "   <td rowspan="""
  loc_B9D75E: FMemLdR4 var_B8(28)
  loc_B9D763: LitI2_Byte 1
  loc_B9D765: FnUBound
  loc_B9D767: CStrI4
  loc_B9D769: FStStrNoPop var_BC
  loc_B9D76C: ConcatStr
  loc_B9D76D: FStStrNoPop var_C0
  loc_B9D770: LitStr """ align=""right"">"
  loc_B9D773: ConcatStr
  loc_B9D774: FStStrNoPop var_C4
  loc_B9D777: FMemLdR4 var_B8(24)
  loc_B9D77C: ConcatStr
  loc_B9D77D: FStStrNoPop var_C8
  loc_B9D780: LitStr "</td>"
  loc_B9D783: ConcatStr
  loc_B9D784: CVarStr var_D8
  loc_B9D787: PopAdLdVar
  loc_B9D788: FLdPr Me
  loc_B9D78B: MemLdRfVar from_stack_1.global_60
  loc_B9D78E: LdPrVar
  loc_B9D790: LateMemCall
  loc_B9D796: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9D7A1: FFree1Var var_D8 = ""
  loc_B9D7A4: LitI2_Byte 1
  loc_B9D7A6: CUI1I2
  loc_B9D7A8: FLdPr Me
  loc_B9D7AB: MemLdRfVar from_stack_1.global_92
  loc_B9D7AE: FMemLdR4 var_B8(28)
  loc_B9D7B3: LitI2_Byte 1
  loc_B9D7B5: FnUBound
  loc_B9D7B7: CUI1I4
  loc_B9D7B9: ForUI1 var_DC
  loc_B9D7BF: FLdPr Me
  loc_B9D7C2: MemLdUI1 global_92
  loc_B9D7C6: CI2UI1
  loc_B9D7C8: LitI2_Byte 1
  loc_B9D7CA: GtI2
  loc_B9D7CB: BranchF loc_B9D7E2
  loc_B9D7CE: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B9D7D3: PopAdLdVar
  loc_B9D7D4: FLdPr Me
  loc_B9D7D7: MemLdRfVar from_stack_1.global_60
  loc_B9D7DA: LdPrVar
  loc_B9D7DC: LateMemCall
  loc_B9D7E2: FLdPr Me
  loc_B9D7E5: MemLdUI1 global_92
  loc_B9D7E9: CI4UI1
  loc_B9D7EA: FMemLdR4 var_B8(28)
  loc_B9D7EF: AryLock
  loc_B9D7F2: Ary1LdRf
  loc_B9D7F3: FStR4 var_E4
  loc_B9D7F6: LitI4 3
  loc_B9D7FB: FMemLdR4 var_E4(8)
  loc_B9D800: ImpAdCallI2 Left$(, )
  loc_B9D805: FStStr var_E8
  loc_B9D808: LitStr vbNullString
  loc_B9D80B: LitI2_Byte 0
  loc_B9D80D: LitI2_Byte 0
  loc_B9D80F: LitI2_Byte 0
  loc_B9D811: LitStr "left"
  loc_B9D814: FMemLdR4 var_E4(0)
  loc_B9D819: LitStr "&nbsp;("
  loc_B9D81C: ConcatStr
  loc_B9D81D: FStStrNoPop var_BC
  loc_B9D820: FLdZeroAd var_E8
  loc_B9D823: FStStrNoPop var_C0
  loc_B9D826: ConcatStr
  loc_B9D827: FStStrNoPop var_C4
  loc_B9D82A: LitStr ")"
  loc_B9D82D: ConcatStr
  loc_B9D82E: FStStrNoPop var_C8
  loc_B9D831: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9D836: CVarStr var_D8
  loc_B9D839: PopAdLdVar
  loc_B9D83A: FLdPr Me
  loc_B9D83D: MemLdRfVar from_stack_1.global_60
  loc_B9D840: LdPrVar
  loc_B9D842: LateMemCall
  loc_B9D848: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B9D855: FFree1Var var_D8 = ""
  loc_B9D858: FMemLdRf 0
  loc_B9D85D: FStR4 var_EC
  loc_B9D860: LitStr vbNullString
  loc_B9D863: LitI2_Byte 0
  loc_B9D865: LitI2_Byte 0
  loc_B9D867: LitI2_Byte 0
  loc_B9D869: LitStr "right"
  loc_B9D86C: FMemLdR4 var_EC(0)
  loc_B9D871: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9D876: CVarStr var_D8
  loc_B9D879: PopAdLdVar
  loc_B9D87A: FLdPr Me
  loc_B9D87D: MemLdRfVar from_stack_1.global_60
  loc_B9D880: LdPrVar
  loc_B9D882: LateMemCall
  loc_B9D888: FFree1Var var_D8 = ""
  loc_B9D88B: LitStr vbNullString
  loc_B9D88E: LitI2_Byte 0
  loc_B9D890: LitI2_Byte 0
  loc_B9D892: LitI2_Byte 0
  loc_B9D894: LitStr "right"
  loc_B9D897: FMemLdR4 var_EC(4)
  loc_B9D89C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9D8A1: CVarStr var_D8
  loc_B9D8A4: PopAdLdVar
  loc_B9D8A5: FLdPr Me
  loc_B9D8A8: MemLdRfVar from_stack_1.global_60
  loc_B9D8AB: LdPrVar
  loc_B9D8AD: LateMemCall
  loc_B9D8B3: FFree1Var var_D8 = ""
  loc_B9D8B6: LitStr vbNullString
  loc_B9D8B9: LitI2_Byte 0
  loc_B9D8BB: LitI2_Byte 0
  loc_B9D8BD: LitI2_Byte 0
  loc_B9D8BF: LitStr "right"
  loc_B9D8C2: FMemLdR4 var_EC(8)
  loc_B9D8C7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9D8CC: CVarStr var_D8
  loc_B9D8CF: PopAdLdVar
  loc_B9D8D0: FLdPr Me
  loc_B9D8D3: MemLdRfVar from_stack_1.global_60
  loc_B9D8D6: LdPrVar
  loc_B9D8D8: LateMemCall
  loc_B9D8DE: FFree1Var var_D8 = ""
  loc_B9D8E1: LitStr vbNullString
  loc_B9D8E4: LitI2_Byte 0
  loc_B9D8E6: LitI2_Byte 0
  loc_B9D8E8: LitI2_Byte 0
  loc_B9D8EA: LitStr "right"
  loc_B9D8ED: FMemLdR4 var_EC(12)
  loc_B9D8F2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9D8F7: CVarStr var_D8
  loc_B9D8FA: PopAdLdVar
  loc_B9D8FB: FLdPr Me
  loc_B9D8FE: MemLdRfVar from_stack_1.global_60
  loc_B9D901: LdPrVar
  loc_B9D903: LateMemCall
  loc_B9D909: FFree1Var var_D8 = ""
  loc_B9D90C: LitStr vbNullString
  loc_B9D90F: LitI2_Byte 0
  loc_B9D911: LitI2_Byte 0
  loc_B9D913: LitI2_Byte 0
  loc_B9D915: LitStr "right"
  loc_B9D918: FMemLdR4 var_EC(16)
  loc_B9D91D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9D922: CVarStr var_D8
  loc_B9D925: PopAdLdVar
  loc_B9D926: FLdPr Me
  loc_B9D929: MemLdRfVar from_stack_1.global_60
  loc_B9D92C: LdPrVar
  loc_B9D92E: LateMemCall
  loc_B9D934: FFree1Var var_D8 = ""
  loc_B9D937: LitVarStr var_A0, "     </tr>"
  loc_B9D93C: PopAdLdVar
  loc_B9D93D: FLdPr Me
  loc_B9D940: MemLdRfVar from_stack_1.global_60
  loc_B9D943: LdPrVar
  loc_B9D945: LateMemCall
  loc_B9D94B: LitI4 0
  loc_B9D950: FStR4 var_EC
  loc_B9D953: LitI4 0
  loc_B9D958: FStR4 var_E4
  loc_B9D95B: AryUnlock
  loc_B9D95E: FLdPr Me
  loc_B9D961: MemLdRfVar from_stack_1.global_92
  loc_B9D964: NextUI1
  loc_B9D96A: LitI4 0
  loc_B9D96F: FStR4 var_B8
  loc_B9D972: AryUnlock
  loc_B9D975: FLdPr Me
  loc_B9D978: MemLdRfVar from_stack_1.global_88
  loc_B9D97B: NextI4 var_90, loc_B9D57E
  loc_B9D980: LitVarStr var_A0, "  <tr valign=""top"" class=""Totales"" align=""right"">"
  loc_B9D985: PopAdLdVar
  loc_B9D986: FLdPr Me
  loc_B9D989: MemLdRfVar from_stack_1.global_60
  loc_B9D98C: LdPrVar
  loc_B9D98E: LateMemCall
  loc_B9D994: LitStr "    <td colspan=""8"">Total ("
  loc_B9D997: FLdPr Me
  loc_B9D99A: MemLdStr global_84
  loc_B9D99D: LitI2_Byte 1
  loc_B9D99F: FnUBound
  loc_B9D9A1: CStrI4
  loc_B9D9A3: FStStrNoPop var_BC
  loc_B9D9A6: ConcatStr
  loc_B9D9A7: FStStrNoPop var_C0
  loc_B9D9AA: LitStr " cuentas)</td>"
  loc_B9D9AD: ConcatStr
  loc_B9D9AE: CVarStr var_D8
  loc_B9D9B1: PopAdLdVar
  loc_B9D9B2: FLdPr Me
  loc_B9D9B5: MemLdRfVar from_stack_1.global_60
  loc_B9D9B8: LdPrVar
  loc_B9D9BA: LateMemCall
  loc_B9D9C0: FFreeStr var_BC = ""
  loc_B9D9C7: FFree1Var var_D8 = ""
  loc_B9D9CA: LitI4 1
  loc_B9D9CF: FLdPr Me
  loc_B9D9D2: MemLdStr global_96
  loc_B9D9D5: AryLock
  loc_B9D9D8: Ary1LdRf
  loc_B9D9D9: FStR4 var_F4
  loc_B9D9DC: LitStr vbNullString
  loc_B9D9DF: LitI2_Byte 0
  loc_B9D9E1: LitI2_Byte 0
  loc_B9D9E3: LitI2_Byte 0
  loc_B9D9E5: LitStr "right"
  loc_B9D9E8: FMemLdR4 var_F4(0)
  loc_B9D9ED: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9D9F2: CVarStr var_D8
  loc_B9D9F5: PopAdLdVar
  loc_B9D9F6: FLdPr Me
  loc_B9D9F9: MemLdRfVar from_stack_1.global_60
  loc_B9D9FC: LdPrVar
  loc_B9D9FE: LateMemCall
  loc_B9DA04: FFree1Var var_D8 = ""
  loc_B9DA07: LitStr vbNullString
  loc_B9DA0A: LitI2_Byte 0
  loc_B9DA0C: LitI2_Byte 0
  loc_B9DA0E: LitI2_Byte 0
  loc_B9DA10: LitStr "right"
  loc_B9DA13: FMemLdR4 var_F4(4)
  loc_B9DA18: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DA1D: CVarStr var_D8
  loc_B9DA20: PopAdLdVar
  loc_B9DA21: FLdPr Me
  loc_B9DA24: MemLdRfVar from_stack_1.global_60
  loc_B9DA27: LdPrVar
  loc_B9DA29: LateMemCall
  loc_B9DA2F: FFree1Var var_D8 = ""
  loc_B9DA32: LitStr vbNullString
  loc_B9DA35: LitI2_Byte 0
  loc_B9DA37: LitI2_Byte 0
  loc_B9DA39: LitI2_Byte 0
  loc_B9DA3B: LitStr "right"
  loc_B9DA3E: FMemLdR4 var_F4(8)
  loc_B9DA43: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DA48: CVarStr var_D8
  loc_B9DA4B: PopAdLdVar
  loc_B9DA4C: FLdPr Me
  loc_B9DA4F: MemLdRfVar from_stack_1.global_60
  loc_B9DA52: LdPrVar
  loc_B9DA54: LateMemCall
  loc_B9DA5A: FFree1Var var_D8 = ""
  loc_B9DA5D: LitStr vbNullString
  loc_B9DA60: LitI2_Byte 0
  loc_B9DA62: LitI2_Byte 0
  loc_B9DA64: LitI2_Byte 0
  loc_B9DA66: LitStr "right"
  loc_B9DA69: FMemLdR4 var_F4(12)
  loc_B9DA6E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DA73: CVarStr var_D8
  loc_B9DA76: PopAdLdVar
  loc_B9DA77: FLdPr Me
  loc_B9DA7A: MemLdRfVar from_stack_1.global_60
  loc_B9DA7D: LdPrVar
  loc_B9DA7F: LateMemCall
  loc_B9DA85: FFree1Var var_D8 = ""
  loc_B9DA88: LitStr vbNullString
  loc_B9DA8B: LitI2_Byte 0
  loc_B9DA8D: LitI2_Byte 0
  loc_B9DA8F: LitI2_Byte 0
  loc_B9DA91: LitStr "right"
  loc_B9DA94: FMemLdR4 var_F4(16)
  loc_B9DA99: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DA9E: CVarStr var_D8
  loc_B9DAA1: PopAdLdVar
  loc_B9DAA2: FLdPr Me
  loc_B9DAA5: MemLdRfVar from_stack_1.global_60
  loc_B9DAA8: LdPrVar
  loc_B9DAAA: LateMemCall
  loc_B9DAB0: FFree1Var var_D8 = ""
  loc_B9DAB3: LitI4 0
  loc_B9DAB8: FStR4 var_F4
  loc_B9DABB: AryUnlock
  loc_B9DABE: LitVarStr var_A0, "     </tr>"
  loc_B9DAC3: PopAdLdVar
  loc_B9DAC4: FLdPr Me
  loc_B9DAC7: MemLdRfVar from_stack_1.global_60
  loc_B9DACA: LdPrVar
  loc_B9DACC: LateMemCall
  loc_B9DAD2: Call Proc_236_22_A0B178()
  loc_B9DAD7: FLdPr Me
  loc_B9DADA: MemLdRfVar from_stack_1.global_60
  loc_B9DADD: LdPrVar
  loc_B9DADF: LateMemCall
  loc_B9DAE5: LitStr vbNullString
  loc_B9DAE8: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B9DAED: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9BD984
  'Data Table: 487D20
  loc_9BD96C: LitI2_Byte 0
  loc_9BD96E: FLdPr Me
  loc_9BD971: MemStI2 bLogos
  loc_9BD974: Call GeneraHTML()
  loc_9BD979: LitI2_Byte &HFF
  loc_9BD97B: FLdPr Me
  loc_9BD97E: MemStI2 bLogos
  loc_9BD981: ExitProcHresult
  loc_9BD982: CStr2Ansi
End Sub

Private Function Proc_236_19_B31F8C() 'B31F8C
  'Data Table: 487D20
  loc_B31CA0: FLdPr Me
  loc_B31CA3: MemLdStr global_88
  loc_B31CA6: LitI4 1
  loc_B31CAB: AddI4
  loc_B31CAC: FLdPr Me
  loc_B31CAF: MemStI4 global_88
  loc_B31CB2: LitI2_Byte 0
  loc_B31CB4: CUI1I2
  loc_B31CB6: FLdPr Me
  loc_B31CB9: MemStUI1
  loc_B31CBD: LitI4 0
  loc_B31CC2: FLdPr Me
  loc_B31CC5: MemLdStr global_88
  loc_B31CC8: FLdPr Me
  loc_B31CCB: MemLdRfVar from_stack_1.global_84
  loc_B31CCE: RedimPreserve
  loc_B31CD8: FLdPr Me
  loc_B31CDB: MemLdRfVar from_stack_1.global_80
  loc_B31CDE: NewIfNullAd
  loc_B31CE1: FStAd var_88 
  loc_B31CE5: FLdRfVar var_A4
  loc_B31CE8: LitVarStr var_A0, "CodiDifu"
  loc_B31CED: PopAdLdVar
  loc_B31CEE: FLdRfVar var_90
  loc_B31CF1: FLdRfVar var_8C
  loc_B31CF4: FLdPr var_88
  loc_B31CF7: from_stack_1v = clsliquceme.RsFrmGet()
  loc_B31CFC: FLdPr var_8C
  loc_B31CFF:  = Me.Fields
  loc_B31D04: FLdPr var_90
  loc_B31D07: from_stack_2 = Me.Item(from_stack_1)
  loc_B31D0C: LitI2_Byte 0
  loc_B31D0E: LitVar_Missing var_D8
  loc_B31D11: LitI2_Byte 0
  loc_B31D13: FLdZeroAd var_A4
  loc_B31D16: CVarAd
  loc_B31D1A: PopAdLdVar
  loc_B31D1B: FLdPr Me
  loc_B31D1E: MemLdStr global_88
  loc_B31D21: FLdPr Me
  loc_B31D24: MemLdStr global_84
  loc_B31D27: AryLock
  loc_B31D2A: Ary1LdPr
  loc_B31D2B: MemLdRfVar from_stack_1.global_0
  loc_B31D2E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B31D33: AryUnlock
  loc_B31D36: FFreeAd var_8C = ""
  loc_B31D3D: FFreeVar var_B8 = ""
  loc_B31D44: FLdRfVar var_A4
  loc_B31D47: LitVarStr var_A0, "DetaPers"
  loc_B31D4C: PopAdLdVar
  loc_B31D4D: FLdRfVar var_90
  loc_B31D50: FLdRfVar var_8C
  loc_B31D53: FLdPr var_88
  loc_B31D56: from_stack_1v = clsliquceme.RsFrmGet()
  loc_B31D5B: FLdPr var_8C
  loc_B31D5E:  = Me.Fields
  loc_B31D63: FLdPr var_90
  loc_B31D66: from_stack_2 = Me.Item(from_stack_1)
  loc_B31D6B: LitI2_Byte 0
  loc_B31D6D: LitVar_Missing var_D8
  loc_B31D70: LitI2_Byte 0
  loc_B31D72: FLdZeroAd var_A4
  loc_B31D75: CVarAd
  loc_B31D79: PopAdLdVar
  loc_B31D7A: FLdPr Me
  loc_B31D7D: MemLdStr global_88
  loc_B31D80: FLdPr Me
  loc_B31D83: MemLdStr global_84
  loc_B31D86: AryLock
  loc_B31D89: Ary1LdPr
  loc_B31D8A: MemLdRfVar from_stack_1.global_4
  loc_B31D8D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B31D92: AryUnlock
  loc_B31D95: FFreeAd var_8C = ""
  loc_B31D9C: FFreeVar var_B8 = ""
  loc_B31DA3: FLdRfVar var_A4
  loc_B31DA6: LitVarStr var_A0, "CodiLoca"
  loc_B31DAB: PopAdLdVar
  loc_B31DAC: FLdRfVar var_90
  loc_B31DAF: FLdRfVar var_8C
  loc_B31DB2: FLdPr var_88
  loc_B31DB5: from_stack_1v = clsliquceme.RsFrmGet()
  loc_B31DBA: FLdPr var_8C
  loc_B31DBD:  = Me.Fields
  loc_B31DC2: FLdPr var_90
  loc_B31DC5: from_stack_2 = Me.Item(from_stack_1)
  loc_B31DCA: LitI2_Byte 0
  loc_B31DCC: LitVar_Missing var_D8
  loc_B31DCF: LitI2_Byte 0
  loc_B31DD1: FLdZeroAd var_A4
  loc_B31DD4: CVarAd
  loc_B31DD8: PopAdLdVar
  loc_B31DD9: FLdPr Me
  loc_B31DDC: MemLdStr global_88
  loc_B31DDF: FLdPr Me
  loc_B31DE2: MemLdStr global_84
  loc_B31DE5: AryLock
  loc_B31DE8: Ary1LdPr
  loc_B31DE9: MemLdRfVar from_stack_1.global_8
  loc_B31DEC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B31DF1: AryUnlock
  loc_B31DF4: FFreeAd var_8C = ""
  loc_B31DFB: FFreeVar var_B8 = ""
  loc_B31E02: FLdRfVar var_A4
  loc_B31E05: LitVarStr var_A0, "DetaTise"
  loc_B31E0A: PopAdLdVar
  loc_B31E0B: FLdRfVar var_90
  loc_B31E0E: FLdRfVar var_8C
  loc_B31E11: FLdPr var_88
  loc_B31E14: from_stack_1v = clsliquceme.RsFrmGet()
  loc_B31E19: FLdPr var_8C
  loc_B31E1C:  = Me.Fields
  loc_B31E21: FLdPr var_90
  loc_B31E24: from_stack_2 = Me.Item(from_stack_1)
  loc_B31E29: LitI2_Byte 0
  loc_B31E2B: LitVar_Missing var_D8
  loc_B31E2E: LitI2_Byte 0
  loc_B31E30: FLdZeroAd var_A4
  loc_B31E33: CVarAd
  loc_B31E37: PopAdLdVar
  loc_B31E38: FLdPr Me
  loc_B31E3B: MemLdStr global_88
  loc_B31E3E: FLdPr Me
  loc_B31E41: MemLdStr global_84
  loc_B31E44: AryLock
  loc_B31E47: Ary1LdPr
  loc_B31E48: MemLdRfVar from_stack_1.global_12
  loc_B31E4B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B31E50: AryUnlock
  loc_B31E53: FFreeAd var_8C = ""
  loc_B31E5A: FFreeVar var_B8 = ""
  loc_B31E61: FLdRfVar var_A4
  loc_B31E64: LitVarStr var_A0, "DeudLice"
  loc_B31E69: PopAdLdVar
  loc_B31E6A: FLdRfVar var_90
  loc_B31E6D: FLdRfVar var_8C
  loc_B31E70: FLdPr var_88
  loc_B31E73: from_stack_1v = clsliquceme.RsFrmGet()
  loc_B31E78: FLdPr var_8C
  loc_B31E7B:  = Me.Fields
  loc_B31E80: FLdPr var_90
  loc_B31E83: from_stack_2 = Me.Item(from_stack_1)
  loc_B31E88: LitI2_Byte 0
  loc_B31E8A: LitVar_Missing var_D8
  loc_B31E8D: LitI2_Byte &HFF
  loc_B31E8F: FLdZeroAd var_A4
  loc_B31E92: CVarAd
  loc_B31E96: PopAdLdVar
  loc_B31E97: FLdPr Me
  loc_B31E9A: MemLdStr global_88
  loc_B31E9D: FLdPr Me
  loc_B31EA0: MemLdStr global_84
  loc_B31EA3: AryLock
  loc_B31EA6: Ary1LdPr
  loc_B31EA7: MemLdRfVar from_stack_1.global_16
  loc_B31EAA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B31EAF: AryUnlock
  loc_B31EB2: FFreeAd var_8C = ""
  loc_B31EB9: FFreeVar var_B8 = ""
  loc_B31EC0: FLdRfVar var_A4
  loc_B31EC3: LitVarStr var_A0, "TipoLice"
  loc_B31EC8: PopAdLdVar
  loc_B31EC9: FLdRfVar var_90
  loc_B31ECC: FLdRfVar var_8C
  loc_B31ECF: FLdPr var_88
  loc_B31ED2: from_stack_1v = clsliquceme.RsFrmGet()
  loc_B31ED7: FLdPr var_8C
  loc_B31EDA:  = Me.Fields
  loc_B31EDF: FLdPr var_90
  loc_B31EE2: from_stack_2 = Me.Item(from_stack_1)
  loc_B31EE7: LitI2_Byte 0
  loc_B31EE9: LitVar_Missing var_D8
  loc_B31EEC: LitI2_Byte 0
  loc_B31EEE: FLdZeroAd var_A4
  loc_B31EF1: CVarAd
  loc_B31EF5: PopAdLdVar
  loc_B31EF6: FLdPr Me
  loc_B31EF9: MemLdStr global_88
  loc_B31EFC: FLdPr Me
  loc_B31EFF: MemLdStr global_84
  loc_B31F02: AryLock
  loc_B31F05: Ary1LdPr
  loc_B31F06: MemLdRfVar from_stack_1.global_20
  loc_B31F09: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B31F0E: AryUnlock
  loc_B31F11: FFreeAd var_8C = ""
  loc_B31F18: FFreeVar var_B8 = ""
  loc_B31F1F: FLdRfVar var_A4
  loc_B31F22: LitVarStr var_A0, "OrdeLice"
  loc_B31F27: PopAdLdVar
  loc_B31F28: FLdRfVar var_90
  loc_B31F2B: FLdRfVar var_8C
  loc_B31F2E: FLdPr var_88
  loc_B31F31: from_stack_1v = clsliquceme.RsFrmGet()
  loc_B31F36: FLdPr var_8C
  loc_B31F39:  = Me.Fields
  loc_B31F3E: FLdPr var_90
  loc_B31F41: from_stack_2 = Me.Item(from_stack_1)
  loc_B31F46: LitI2_Byte 0
  loc_B31F48: LitVar_Missing var_D8
  loc_B31F4B: LitI2_Byte 0
  loc_B31F4D: FLdZeroAd var_A4
  loc_B31F50: CVarAd
  loc_B31F54: PopAdLdVar
  loc_B31F55: FLdPr Me
  loc_B31F58: MemLdStr global_88
  loc_B31F5B: FLdPr Me
  loc_B31F5E: MemLdStr global_84
  loc_B31F61: AryLock
  loc_B31F64: Ary1LdPr
  loc_B31F65: MemLdRfVar from_stack_1.global_24
  loc_B31F68: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B31F6D: AryUnlock
  loc_B31F70: FFreeAd var_8C = ""
  loc_B31F77: FFreeVar var_B8 = ""
  loc_B31F7E: LitNothing
  loc_B31F80: FStAd var_88 
  loc_B31F84: Call Proc_236_20_BB9A54()
  loc_B31F89: ExitProcHresult
  loc_B31F8A: GeCyR8
End Function

Private Function Proc_236_20_BB9A54() 'BB9A54
  'Data Table: 487D20
  loc_BB93BC: FLdPr Me
  loc_BB93BF: MemLdUI1 global_92
  loc_BB93C3: CI2UI1
  loc_BB93C5: LitI2_Byte 1
  loc_BB93C7: AddI2
  loc_BB93C8: CUI1I2
  loc_BB93CA: FLdPr Me
  loc_BB93CD: MemStUI1
  loc_BB93D1: LitI4 0
  loc_BB93D6: FLdPr Me
  loc_BB93D9: MemLdUI1 global_92
  loc_BB93DD: CI4UI1
  loc_BB93DE: FLdPr Me
  loc_BB93E1: MemLdStr global_88
  loc_BB93E4: FLdPr Me
  loc_BB93E7: MemLdStr global_84
  loc_BB93EA: Ary1LdPr
  loc_BB93EB: MemLdRfVar from_stack_1.global_28
  loc_BB93EE: RedimPreserve
  loc_BB93F8: FLdPr Me
  loc_BB93FB: MemLdRfVar from_stack_1.global_80
  loc_BB93FE: NewIfNullAd
  loc_BB9401: FStAd var_88 
  loc_BB9405: FLdRfVar var_A4
  loc_BB9408: LitVarStr var_A0, "CodiConc"
  loc_BB940D: PopAdLdVar
  loc_BB940E: FLdRfVar var_90
  loc_BB9411: FLdRfVar var_8C
  loc_BB9414: FLdPr var_88
  loc_BB9417: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB941C: FLdPr var_8C
  loc_BB941F:  = Me.Fields
  loc_BB9424: FLdPr var_90
  loc_BB9427: from_stack_2 = Me.Item(from_stack_1)
  loc_BB942C: LitI2_Byte 0
  loc_BB942E: LitVar_Missing var_DC
  loc_BB9431: LitI2_Byte 0
  loc_BB9433: FLdZeroAd var_A4
  loc_BB9436: CVarAd
  loc_BB943A: PopAdLdVar
  loc_BB943B: FLdPr Me
  loc_BB943E: MemLdUI1 global_92
  loc_BB9442: CI4UI1
  loc_BB9443: FLdPr Me
  loc_BB9446: MemLdStr global_88
  loc_BB9449: FLdPr Me
  loc_BB944C: MemLdStr global_84
  loc_BB944F: AryLock
  loc_BB9452: Ary1LdPr
  loc_BB9453: MemLdStr global_28
  loc_BB9456: AryLock
  loc_BB9459: Ary1LdPr
  loc_BB945A: MemLdRfVar from_stack_1.global_0
  loc_BB945D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB9462: AryUnlock
  loc_BB9465: AryUnlock
  loc_BB9468: FFreeAd var_8C = ""
  loc_BB946F: FFreeVar var_BC = ""
  loc_BB9476: FLdRfVar var_A4
  loc_BB9479: LitVarStr var_A0, "DetaConc"
  loc_BB947E: PopAdLdVar
  loc_BB947F: FLdRfVar var_90
  loc_BB9482: FLdRfVar var_8C
  loc_BB9485: FLdPr var_88
  loc_BB9488: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB948D: FLdPr var_8C
  loc_BB9490:  = Me.Fields
  loc_BB9495: FLdPr var_90
  loc_BB9498: from_stack_2 = Me.Item(from_stack_1)
  loc_BB949D: LitI2_Byte 0
  loc_BB949F: LitVar_Missing var_DC
  loc_BB94A2: LitI2_Byte 0
  loc_BB94A4: FLdZeroAd var_A4
  loc_BB94A7: CVarAd
  loc_BB94AB: PopAdLdVar
  loc_BB94AC: FLdPr Me
  loc_BB94AF: MemLdUI1 global_92
  loc_BB94B3: CI4UI1
  loc_BB94B4: FLdPr Me
  loc_BB94B7: MemLdStr global_88
  loc_BB94BA: FLdPr Me
  loc_BB94BD: MemLdStr global_84
  loc_BB94C0: AryLock
  loc_BB94C3: Ary1LdPr
  loc_BB94C4: MemLdStr global_28
  loc_BB94C7: AryLock
  loc_BB94CA: Ary1LdPr
  loc_BB94CB: MemLdRfVar from_stack_1.global_4
  loc_BB94CE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB94D3: AryUnlock
  loc_BB94D6: AryUnlock
  loc_BB94D9: FFreeAd var_8C = ""
  loc_BB94E0: FFreeVar var_BC = ""
  loc_BB94E7: FLdRfVar var_A4
  loc_BB94EA: LitVarStr var_A0, "TipoVenc"
  loc_BB94EF: PopAdLdVar
  loc_BB94F0: FLdRfVar var_90
  loc_BB94F3: FLdRfVar var_8C
  loc_BB94F6: FLdPr var_88
  loc_BB94F9: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB94FE: FLdPr var_8C
  loc_BB9501:  = Me.Fields
  loc_BB9506: FLdPr var_90
  loc_BB9509: from_stack_2 = Me.Item(from_stack_1)
  loc_BB950E: LitI2_Byte 0
  loc_BB9510: LitVar_Missing var_DC
  loc_BB9513: LitI2_Byte 0
  loc_BB9515: FLdZeroAd var_A4
  loc_BB9518: CVarAd
  loc_BB951C: PopAdLdVar
  loc_BB951D: FLdPr Me
  loc_BB9520: MemLdUI1 global_92
  loc_BB9524: CI4UI1
  loc_BB9525: FLdPr Me
  loc_BB9528: MemLdStr global_88
  loc_BB952B: FLdPr Me
  loc_BB952E: MemLdStr global_84
  loc_BB9531: AryLock
  loc_BB9534: Ary1LdPr
  loc_BB9535: MemLdStr global_28
  loc_BB9538: AryLock
  loc_BB953B: Ary1LdPr
  loc_BB953C: MemLdRfVar from_stack_1.global_8
  loc_BB953F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB9544: AryUnlock
  loc_BB9547: AryUnlock
  loc_BB954A: FFreeAd var_8C = ""
  loc_BB9551: FFreeVar var_BC = ""
  loc_BB9558: FLdRfVar var_DE
  loc_BB955B: FLdPr var_88
  loc_BB955E: from_stack_1 = clsliquceme.TipoVenc
  loc_BB9563: FLdUI1
  loc_BB9567: CR8I2
  loc_BB9568: LitStr "Bimestral"
  loc_BB956B: CR8Str
  loc_BB956D: EqR4
  loc_BB956E: BranchF loc_BB9808
  loc_BB9571: FLdRfVar var_A4
  loc_BB9574: LitVarStr var_A0, "ImpoLice"
  loc_BB9579: PopAdLdVar
  loc_BB957A: FLdRfVar var_90
  loc_BB957D: FLdRfVar var_8C
  loc_BB9580: FLdPr var_88
  loc_BB9583: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB9588: FLdPr var_8C
  loc_BB958B:  = Me.Fields
  loc_BB9590: FLdPr var_90
  loc_BB9593: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9598: LitI2_Byte 0
  loc_BB959A: LitI4 1
  loc_BB959F: FLdPr Me
  loc_BB95A2: MemLdStr global_96
  loc_BB95A5: AryLock
  loc_BB95A8: Ary1LdPr
  loc_BB95A9: MemLdRfVar from_stack_1.global_0
  loc_BB95AC: CVarRef
  loc_BB95B1: LitI2_Byte &HFF
  loc_BB95B3: FLdZeroAd var_A4
  loc_BB95B6: CVarAd
  loc_BB95BA: PopAdLdVar
  loc_BB95BB: FLdPr Me
  loc_BB95BE: MemLdUI1 global_92
  loc_BB95C2: CI4UI1
  loc_BB95C3: FLdPr Me
  loc_BB95C6: MemLdStr global_88
  loc_BB95C9: FLdPr Me
  loc_BB95CC: MemLdStr global_84
  loc_BB95CF: AryLock
  loc_BB95D2: Ary1LdPr
  loc_BB95D3: MemLdStr global_28
  loc_BB95D6: AryLock
  loc_BB95D9: Ary1LdPr
  loc_BB95DA: MemLdRfVar from_stack_1.global_12
  loc_BB95DD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB95E2: AryUnlock
  loc_BB95E5: AryUnlock
  loc_BB95E8: AryUnlock
  loc_BB95EB: FFreeAd var_8C = ""
  loc_BB95F2: FFree1Var var_BC = ""
  loc_BB95F5: FLdRfVar var_A4
  loc_BB95F8: LitVarStr var_A0, "ExenLice"
  loc_BB95FD: PopAdLdVar
  loc_BB95FE: FLdRfVar var_90
  loc_BB9601: FLdRfVar var_8C
  loc_BB9604: FLdPr var_88
  loc_BB9607: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB960C: FLdPr var_8C
  loc_BB960F:  = Me.Fields
  loc_BB9614: FLdPr var_90
  loc_BB9617: from_stack_2 = Me.Item(from_stack_1)
  loc_BB961C: LitI2_Byte 0
  loc_BB961E: LitI4 1
  loc_BB9623: FLdPr Me
  loc_BB9626: MemLdStr global_96
  loc_BB9629: AryLock
  loc_BB962C: Ary1LdPr
  loc_BB962D: MemLdRfVar from_stack_1.global_4
  loc_BB9630: CVarRef
  loc_BB9635: LitI2_Byte &HFF
  loc_BB9637: FLdZeroAd var_A4
  loc_BB963A: CVarAd
  loc_BB963E: PopAdLdVar
  loc_BB963F: FLdPr Me
  loc_BB9642: MemLdUI1 global_92
  loc_BB9646: CI4UI1
  loc_BB9647: FLdPr Me
  loc_BB964A: MemLdStr global_88
  loc_BB964D: FLdPr Me
  loc_BB9650: MemLdStr global_84
  loc_BB9653: AryLock
  loc_BB9656: Ary1LdPr
  loc_BB9657: MemLdStr global_28
  loc_BB965A: AryLock
  loc_BB965D: Ary1LdPr
  loc_BB965E: MemLdRfVar from_stack_1.global_16
  loc_BB9661: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB9666: AryUnlock
  loc_BB9669: AryUnlock
  loc_BB966C: AryUnlock
  loc_BB966F: FFreeAd var_8C = ""
  loc_BB9676: FFree1Var var_BC = ""
  loc_BB9679: FLdRfVar var_A4
  loc_BB967C: LitVarStr var_A0, "DescLice"
  loc_BB9681: PopAdLdVar
  loc_BB9682: FLdRfVar var_90
  loc_BB9685: FLdRfVar var_8C
  loc_BB9688: FLdPr var_88
  loc_BB968B: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB9690: FLdPr var_8C
  loc_BB9693:  = Me.Fields
  loc_BB9698: FLdPr var_90
  loc_BB969B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB96A0: LitI2_Byte 0
  loc_BB96A2: LitI4 1
  loc_BB96A7: FLdPr Me
  loc_BB96AA: MemLdStr global_96
  loc_BB96AD: AryLock
  loc_BB96B0: Ary1LdPr
  loc_BB96B1: MemLdRfVar from_stack_1.global_8
  loc_BB96B4: CVarRef
  loc_BB96B9: LitI2_Byte &HFF
  loc_BB96BB: FLdZeroAd var_A4
  loc_BB96BE: CVarAd
  loc_BB96C2: PopAdLdVar
  loc_BB96C3: FLdPr Me
  loc_BB96C6: MemLdUI1 global_92
  loc_BB96CA: CI4UI1
  loc_BB96CB: FLdPr Me
  loc_BB96CE: MemLdStr global_88
  loc_BB96D1: FLdPr Me
  loc_BB96D4: MemLdStr global_84
  loc_BB96D7: AryLock
  loc_BB96DA: Ary1LdPr
  loc_BB96DB: MemLdStr global_28
  loc_BB96DE: AryLock
  loc_BB96E1: Ary1LdPr
  loc_BB96E2: MemLdRfVar from_stack_1.global_20
  loc_BB96E5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB96EA: AryUnlock
  loc_BB96ED: AryUnlock
  loc_BB96F0: AryUnlock
  loc_BB96F3: FFreeAd var_8C = ""
  loc_BB96FA: FFree1Var var_BC = ""
  loc_BB96FD: FLdRfVar var_A4
  loc_BB9700: LitVarStr var_A0, "CrafLice"
  loc_BB9705: PopAdLdVar
  loc_BB9706: FLdRfVar var_90
  loc_BB9709: FLdRfVar var_8C
  loc_BB970C: FLdPr var_88
  loc_BB970F: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB9714: FLdPr var_8C
  loc_BB9717:  = Me.Fields
  loc_BB971C: FLdPr var_90
  loc_BB971F: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9724: LitI2_Byte 0
  loc_BB9726: LitI4 1
  loc_BB972B: FLdPr Me
  loc_BB972E: MemLdStr global_96
  loc_BB9731: AryLock
  loc_BB9734: Ary1LdPr
  loc_BB9735: MemLdRfVar from_stack_1.global_12
  loc_BB9738: CVarRef
  loc_BB973D: LitI2_Byte &HFF
  loc_BB973F: FLdZeroAd var_A4
  loc_BB9742: CVarAd
  loc_BB9746: PopAdLdVar
  loc_BB9747: FLdPr Me
  loc_BB974A: MemLdUI1 global_92
  loc_BB974E: CI4UI1
  loc_BB974F: FLdPr Me
  loc_BB9752: MemLdStr global_88
  loc_BB9755: FLdPr Me
  loc_BB9758: MemLdStr global_84
  loc_BB975B: AryLock
  loc_BB975E: Ary1LdPr
  loc_BB975F: MemLdStr global_28
  loc_BB9762: AryLock
  loc_BB9765: Ary1LdPr
  loc_BB9766: MemLdRfVar from_stack_1.global_24
  loc_BB9769: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB976E: AryUnlock
  loc_BB9771: AryUnlock
  loc_BB9774: AryUnlock
  loc_BB9777: FFreeAd var_8C = ""
  loc_BB977E: FFree1Var var_BC = ""
  loc_BB9781: FLdRfVar var_A4
  loc_BB9784: LitVarStr var_A0, "TotaLice"
  loc_BB9789: PopAdLdVar
  loc_BB978A: FLdRfVar var_90
  loc_BB978D: FLdRfVar var_8C
  loc_BB9790: FLdPr var_88
  loc_BB9793: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB9798: FLdPr var_8C
  loc_BB979B:  = Me.Fields
  loc_BB97A0: FLdPr var_90
  loc_BB97A3: from_stack_2 = Me.Item(from_stack_1)
  loc_BB97A8: LitI2_Byte 0
  loc_BB97AA: LitI4 1
  loc_BB97AF: FLdPr Me
  loc_BB97B2: MemLdStr global_96
  loc_BB97B5: AryLock
  loc_BB97B8: Ary1LdPr
  loc_BB97B9: MemLdRfVar from_stack_1.global_16
  loc_BB97BC: CVarRef
  loc_BB97C1: LitI2_Byte &HFF
  loc_BB97C3: FLdZeroAd var_A4
  loc_BB97C6: CVarAd
  loc_BB97CA: PopAdLdVar
  loc_BB97CB: FLdPr Me
  loc_BB97CE: MemLdUI1 global_92
  loc_BB97D2: CI4UI1
  loc_BB97D3: FLdPr Me
  loc_BB97D6: MemLdStr global_88
  loc_BB97D9: FLdPr Me
  loc_BB97DC: MemLdStr global_84
  loc_BB97DF: AryLock
  loc_BB97E2: Ary1LdPr
  loc_BB97E3: MemLdStr global_28
  loc_BB97E6: AryLock
  loc_BB97E9: Ary1LdPr
  loc_BB97EA: MemLdRfVar from_stack_1.global_28
  loc_BB97ED: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB97F2: AryUnlock
  loc_BB97F5: AryUnlock
  loc_BB97F8: AryUnlock
  loc_BB97FB: FFreeAd var_8C = ""
  loc_BB9802: FFree1Var var_BC = ""
  loc_BB9805: Branch loc_BB9A3D
  loc_BB9808: FLdRfVar var_A4
  loc_BB980B: LitVarStr var_A0, "ImpoLice"
  loc_BB9810: PopAdLdVar
  loc_BB9811: FLdRfVar var_90
  loc_BB9814: FLdRfVar var_8C
  loc_BB9817: FLdPr var_88
  loc_BB981A: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB981F: FLdPr var_8C
  loc_BB9822:  = Me.Fields
  loc_BB9827: FLdPr var_90
  loc_BB982A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB982F: LitI2_Byte 0
  loc_BB9831: LitVar_Missing var_DC
  loc_BB9834: LitI2_Byte &HFF
  loc_BB9836: FLdZeroAd var_A4
  loc_BB9839: CVarAd
  loc_BB983D: PopAdLdVar
  loc_BB983E: FLdPr Me
  loc_BB9841: MemLdUI1 global_92
  loc_BB9845: CI4UI1
  loc_BB9846: FLdPr Me
  loc_BB9849: MemLdStr global_88
  loc_BB984C: FLdPr Me
  loc_BB984F: MemLdStr global_84
  loc_BB9852: AryLock
  loc_BB9855: Ary1LdPr
  loc_BB9856: MemLdStr global_28
  loc_BB9859: AryLock
  loc_BB985C: Ary1LdPr
  loc_BB985D: MemLdRfVar from_stack_1.global_12
  loc_BB9860: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB9865: AryUnlock
  loc_BB9868: AryUnlock
  loc_BB986B: FFreeAd var_8C = ""
  loc_BB9872: FFreeVar var_BC = ""
  loc_BB9879: FLdRfVar var_A4
  loc_BB987C: LitVarStr var_A0, "ExenLice"
  loc_BB9881: PopAdLdVar
  loc_BB9882: FLdRfVar var_90
  loc_BB9885: FLdRfVar var_8C
  loc_BB9888: FLdPr var_88
  loc_BB988B: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB9890: FLdPr var_8C
  loc_BB9893:  = Me.Fields
  loc_BB9898: FLdPr var_90
  loc_BB989B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB98A0: LitI2_Byte 0
  loc_BB98A2: LitVar_Missing var_DC
  loc_BB98A5: LitI2_Byte &HFF
  loc_BB98A7: FLdZeroAd var_A4
  loc_BB98AA: CVarAd
  loc_BB98AE: PopAdLdVar
  loc_BB98AF: FLdPr Me
  loc_BB98B2: MemLdUI1 global_92
  loc_BB98B6: CI4UI1
  loc_BB98B7: FLdPr Me
  loc_BB98BA: MemLdStr global_88
  loc_BB98BD: FLdPr Me
  loc_BB98C0: MemLdStr global_84
  loc_BB98C3: AryLock
  loc_BB98C6: Ary1LdPr
  loc_BB98C7: MemLdStr global_28
  loc_BB98CA: AryLock
  loc_BB98CD: Ary1LdPr
  loc_BB98CE: MemLdRfVar from_stack_1.global_16
  loc_BB98D1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB98D6: AryUnlock
  loc_BB98D9: AryUnlock
  loc_BB98DC: FFreeAd var_8C = ""
  loc_BB98E3: FFreeVar var_BC = ""
  loc_BB98EA: FLdRfVar var_A4
  loc_BB98ED: LitVarStr var_A0, "DescLice"
  loc_BB98F2: PopAdLdVar
  loc_BB98F3: FLdRfVar var_90
  loc_BB98F6: FLdRfVar var_8C
  loc_BB98F9: FLdPr var_88
  loc_BB98FC: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB9901: FLdPr var_8C
  loc_BB9904:  = Me.Fields
  loc_BB9909: FLdPr var_90
  loc_BB990C: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9911: LitI2_Byte 0
  loc_BB9913: LitVar_Missing var_DC
  loc_BB9916: LitI2_Byte &HFF
  loc_BB9918: FLdZeroAd var_A4
  loc_BB991B: CVarAd
  loc_BB991F: PopAdLdVar
  loc_BB9920: FLdPr Me
  loc_BB9923: MemLdUI1 global_92
  loc_BB9927: CI4UI1
  loc_BB9928: FLdPr Me
  loc_BB992B: MemLdStr global_88
  loc_BB992E: FLdPr Me
  loc_BB9931: MemLdStr global_84
  loc_BB9934: AryLock
  loc_BB9937: Ary1LdPr
  loc_BB9938: MemLdStr global_28
  loc_BB993B: AryLock
  loc_BB993E: Ary1LdPr
  loc_BB993F: MemLdRfVar from_stack_1.global_20
  loc_BB9942: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB9947: AryUnlock
  loc_BB994A: AryUnlock
  loc_BB994D: FFreeAd var_8C = ""
  loc_BB9954: FFreeVar var_BC = ""
  loc_BB995B: FLdRfVar var_A4
  loc_BB995E: LitVarStr var_A0, "CrafLice"
  loc_BB9963: PopAdLdVar
  loc_BB9964: FLdRfVar var_90
  loc_BB9967: FLdRfVar var_8C
  loc_BB996A: FLdPr var_88
  loc_BB996D: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB9972: FLdPr var_8C
  loc_BB9975:  = Me.Fields
  loc_BB997A: FLdPr var_90
  loc_BB997D: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9982: LitI2_Byte 0
  loc_BB9984: LitVar_Missing var_DC
  loc_BB9987: LitI2_Byte &HFF
  loc_BB9989: FLdZeroAd var_A4
  loc_BB998C: CVarAd
  loc_BB9990: PopAdLdVar
  loc_BB9991: FLdPr Me
  loc_BB9994: MemLdUI1 global_92
  loc_BB9998: CI4UI1
  loc_BB9999: FLdPr Me
  loc_BB999C: MemLdStr global_88
  loc_BB999F: FLdPr Me
  loc_BB99A2: MemLdStr global_84
  loc_BB99A5: AryLock
  loc_BB99A8: Ary1LdPr
  loc_BB99A9: MemLdStr global_28
  loc_BB99AC: AryLock
  loc_BB99AF: Ary1LdPr
  loc_BB99B0: MemLdRfVar from_stack_1.global_24
  loc_BB99B3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB99B8: AryUnlock
  loc_BB99BB: AryUnlock
  loc_BB99BE: FFreeAd var_8C = ""
  loc_BB99C5: FFreeVar var_BC = ""
  loc_BB99CC: FLdRfVar var_A4
  loc_BB99CF: LitVarStr var_A0, "TotaLice"
  loc_BB99D4: PopAdLdVar
  loc_BB99D5: FLdRfVar var_90
  loc_BB99D8: FLdRfVar var_8C
  loc_BB99DB: FLdPr var_88
  loc_BB99DE: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BB99E3: FLdPr var_8C
  loc_BB99E6:  = Me.Fields
  loc_BB99EB: FLdPr var_90
  loc_BB99EE: from_stack_2 = Me.Item(from_stack_1)
  loc_BB99F3: LitI2_Byte 0
  loc_BB99F5: LitVar_Missing var_DC
  loc_BB99F8: LitI2_Byte &HFF
  loc_BB99FA: FLdZeroAd var_A4
  loc_BB99FD: CVarAd
  loc_BB9A01: PopAdLdVar
  loc_BB9A02: FLdPr Me
  loc_BB9A05: MemLdUI1 global_92
  loc_BB9A09: CI4UI1
  loc_BB9A0A: FLdPr Me
  loc_BB9A0D: MemLdStr global_88
  loc_BB9A10: FLdPr Me
  loc_BB9A13: MemLdStr global_84
  loc_BB9A16: AryLock
  loc_BB9A19: Ary1LdPr
  loc_BB9A1A: MemLdStr global_28
  loc_BB9A1D: AryLock
  loc_BB9A20: Ary1LdPr
  loc_BB9A21: MemLdRfVar from_stack_1.global_28
  loc_BB9A24: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB9A29: AryUnlock
  loc_BB9A2C: AryUnlock
  loc_BB9A2F: FFreeAd var_8C = ""
  loc_BB9A36: FFreeVar var_BC = ""
  loc_BB9A3D: LitI2_Byte 1
  loc_BB9A3F: PopTmpLdAd2 var_DE
  loc_BB9A42: FLdPr var_88
  loc_BB9A45: Call clsliquceme.Move(from_stack_1v)
  loc_BB9A4A: LitNothing
  loc_BB9A4C: FStAd var_88 
  loc_BB9A50: ExitProcHresult
End Function

Private Function Proc_236_21_C05700() 'C05700
  'Data Table: 487D20
  loc_C04DD8: LitVarStr var_98, "<html>"
  loc_C04DDD: PopAdLdVar
  loc_C04DDE: FLdPr Me
  loc_C04DE1: MemLdRfVar from_stack_1.global_60
  loc_C04DE4: LdPrVar
  loc_C04DE6: LateMemCall
  loc_C04DEC: LitVarStr var_98, "<head>"
  loc_C04DF1: PopAdLdVar
  loc_C04DF2: FLdPr Me
  loc_C04DF5: MemLdRfVar from_stack_1.global_60
  loc_C04DF8: LdPrVar
  loc_C04DFA: LateMemCall
  loc_C04E00: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C04E05: PopAdLdVar
  loc_C04E06: FLdPr Me
  loc_C04E09: MemLdRfVar from_stack_1.global_60
  loc_C04E0C: LdPrVar
  loc_C04E0E: LateMemCall
  loc_C04E14: LitStr "<title>"
  loc_C04E17: FLdRfVar var_AC
  loc_C04E1A: FLdPr Me
  loc_C04E1D:  = Me.Caption
  loc_C04E22: ILdRf var_AC
  loc_C04E25: ConcatStr
  loc_C04E26: FStStrNoPop var_B0
  loc_C04E29: LitStr "</title>"
  loc_C04E2C: ConcatStr
  loc_C04E2D: CVarStr var_C0
  loc_C04E30: PopAdLdVar
  loc_C04E31: FLdPr Me
  loc_C04E34: MemLdRfVar from_stack_1.global_60
  loc_C04E37: LdPrVar
  loc_C04E39: LateMemCall
  loc_C04E3F: FFreeStr var_AC = ""
  loc_C04E46: FFree1Var var_C0 = ""
  loc_C04E49: LitVarStr var_98, "<style type=""text/css"">"
  loc_C04E4E: PopAdLdVar
  loc_C04E4F: FLdPr Me
  loc_C04E52: MemLdRfVar from_stack_1.global_60
  loc_C04E55: LdPrVar
  loc_C04E57: LateMemCall
  loc_C04E5D: LitVarStr var_98, ".Titulo1 {"
  loc_C04E62: PopAdLdVar
  loc_C04E63: FLdPr Me
  loc_C04E66: MemLdRfVar from_stack_1.global_60
  loc_C04E69: LdPrVar
  loc_C04E6B: LateMemCall
  loc_C04E71: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C04E76: PopAdLdVar
  loc_C04E77: FLdPr Me
  loc_C04E7A: MemLdRfVar from_stack_1.global_60
  loc_C04E7D: LdPrVar
  loc_C04E7F: LateMemCall
  loc_C04E85: LitVarStr var_98, " font-size: 18px;"
  loc_C04E8A: PopAdLdVar
  loc_C04E8B: FLdPr Me
  loc_C04E8E: MemLdRfVar from_stack_1.global_60
  loc_C04E91: LdPrVar
  loc_C04E93: LateMemCall
  loc_C04E99: LitVarStr var_98, " font-weight: bold;"
  loc_C04E9E: PopAdLdVar
  loc_C04E9F: FLdPr Me
  loc_C04EA2: MemLdRfVar from_stack_1.global_60
  loc_C04EA5: LdPrVar
  loc_C04EA7: LateMemCall
  loc_C04EAD: LitVarStr var_98, "}"
  loc_C04EB2: PopAdLdVar
  loc_C04EB3: FLdPr Me
  loc_C04EB6: MemLdRfVar from_stack_1.global_60
  loc_C04EB9: LdPrVar
  loc_C04EBB: LateMemCall
  loc_C04EC1: LitVarStr var_98, ".Titulo2 {"
  loc_C04EC6: PopAdLdVar
  loc_C04EC7: FLdPr Me
  loc_C04ECA: MemLdRfVar from_stack_1.global_60
  loc_C04ECD: LdPrVar
  loc_C04ECF: LateMemCall
  loc_C04ED5: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C04EDA: PopAdLdVar
  loc_C04EDB: FLdPr Me
  loc_C04EDE: MemLdRfVar from_stack_1.global_60
  loc_C04EE1: LdPrVar
  loc_C04EE3: LateMemCall
  loc_C04EE9: LitVarStr var_98, " font-size: 14px;"
  loc_C04EEE: PopAdLdVar
  loc_C04EEF: FLdPr Me
  loc_C04EF2: MemLdRfVar from_stack_1.global_60
  loc_C04EF5: LdPrVar
  loc_C04EF7: LateMemCall
  loc_C04EFD: LitVarStr var_98, " font-weight: bold;"
  loc_C04F02: PopAdLdVar
  loc_C04F03: FLdPr Me
  loc_C04F06: MemLdRfVar from_stack_1.global_60
  loc_C04F09: LdPrVar
  loc_C04F0B: LateMemCall
  loc_C04F11: LitVarStr var_98, "}"
  loc_C04F16: PopAdLdVar
  loc_C04F17: FLdPr Me
  loc_C04F1A: MemLdRfVar from_stack_1.global_60
  loc_C04F1D: LdPrVar
  loc_C04F1F: LateMemCall
  loc_C04F25: LitVarStr var_98, ".Normal {"
  loc_C04F2A: PopAdLdVar
  loc_C04F2B: FLdPr Me
  loc_C04F2E: MemLdRfVar from_stack_1.global_60
  loc_C04F31: LdPrVar
  loc_C04F33: LateMemCall
  loc_C04F39: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C04F3E: PopAdLdVar
  loc_C04F3F: FLdPr Me
  loc_C04F42: MemLdRfVar from_stack_1.global_60
  loc_C04F45: LdPrVar
  loc_C04F47: LateMemCall
  loc_C04F4D: LitVarStr var_98, " font-size: 12px;"
  loc_C04F52: PopAdLdVar
  loc_C04F53: FLdPr Me
  loc_C04F56: MemLdRfVar from_stack_1.global_60
  loc_C04F59: LdPrVar
  loc_C04F5B: LateMemCall
  loc_C04F61: LitVarStr var_98, " font-style: normal;"
  loc_C04F66: PopAdLdVar
  loc_C04F67: FLdPr Me
  loc_C04F6A: MemLdRfVar from_stack_1.global_60
  loc_C04F6D: LdPrVar
  loc_C04F6F: LateMemCall
  loc_C04F75: LitVarStr var_98, " font-weight: normal;"
  loc_C04F7A: PopAdLdVar
  loc_C04F7B: FLdPr Me
  loc_C04F7E: MemLdRfVar from_stack_1.global_60
  loc_C04F81: LdPrVar
  loc_C04F83: LateMemCall
  loc_C04F89: LitVarStr var_98, " font-variant: normal;"
  loc_C04F8E: PopAdLdVar
  loc_C04F8F: FLdPr Me
  loc_C04F92: MemLdRfVar from_stack_1.global_60
  loc_C04F95: LdPrVar
  loc_C04F97: LateMemCall
  loc_C04F9D: LitVarStr var_98, "}"
  loc_C04FA2: PopAdLdVar
  loc_C04FA3: FLdPr Me
  loc_C04FA6: MemLdRfVar from_stack_1.global_60
  loc_C04FA9: LdPrVar
  loc_C04FAB: LateMemCall
  loc_C04FB1: LitVarStr var_98, ".Encabezado {"
  loc_C04FB6: PopAdLdVar
  loc_C04FB7: FLdPr Me
  loc_C04FBA: MemLdRfVar from_stack_1.global_60
  loc_C04FBD: LdPrVar
  loc_C04FBF: LateMemCall
  loc_C04FC5: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_C04FCA: PopAdLdVar
  loc_C04FCB: FLdPr Me
  loc_C04FCE: MemLdRfVar from_stack_1.global_60
  loc_C04FD1: LdPrVar
  loc_C04FD3: LateMemCall
  loc_C04FD9: LitVarStr var_98, " font-size: 11px;"
  loc_C04FDE: PopAdLdVar
  loc_C04FDF: FLdPr Me
  loc_C04FE2: MemLdRfVar from_stack_1.global_60
  loc_C04FE5: LdPrVar
  loc_C04FE7: LateMemCall
  loc_C04FED: LitVarStr var_98, " font-weight: bold;"
  loc_C04FF2: PopAdLdVar
  loc_C04FF3: FLdPr Me
  loc_C04FF6: MemLdRfVar from_stack_1.global_60
  loc_C04FF9: LdPrVar
  loc_C04FFB: LateMemCall
  loc_C05001: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_C05006: PopAdLdVar
  loc_C05007: FLdPr Me
  loc_C0500A: MemLdRfVar from_stack_1.global_60
  loc_C0500D: LdPrVar
  loc_C0500F: LateMemCall
  loc_C05015: LitVarStr var_98, "}"
  loc_C0501A: PopAdLdVar
  loc_C0501B: FLdPr Me
  loc_C0501E: MemLdRfVar from_stack_1.global_60
  loc_C05021: LdPrVar
  loc_C05023: LateMemCall
  loc_C05029: LitVarStr var_98, ".LineaDato {"
  loc_C0502E: PopAdLdVar
  loc_C0502F: FLdPr Me
  loc_C05032: MemLdRfVar from_stack_1.global_60
  loc_C05035: LdPrVar
  loc_C05037: LateMemCall
  loc_C0503D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C05042: PopAdLdVar
  loc_C05043: FLdPr Me
  loc_C05046: MemLdRfVar from_stack_1.global_60
  loc_C05049: LdPrVar
  loc_C0504B: LateMemCall
  loc_C05051: LitVarStr var_98, " font-size: 10px;"
  loc_C05056: PopAdLdVar
  loc_C05057: FLdPr Me
  loc_C0505A: MemLdRfVar from_stack_1.global_60
  loc_C0505D: LdPrVar
  loc_C0505F: LateMemCall
  loc_C05065: LitVarStr var_98, "}"
  loc_C0506A: PopAdLdVar
  loc_C0506B: FLdPr Me
  loc_C0506E: MemLdRfVar from_stack_1.global_60
  loc_C05071: LdPrVar
  loc_C05073: LateMemCall
  loc_C05079: LitVarStr var_98, ".Totales {"
  loc_C0507E: PopAdLdVar
  loc_C0507F: FLdPr Me
  loc_C05082: MemLdRfVar from_stack_1.global_60
  loc_C05085: LdPrVar
  loc_C05087: LateMemCall
  loc_C0508D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C05092: PopAdLdVar
  loc_C05093: FLdPr Me
  loc_C05096: MemLdRfVar from_stack_1.global_60
  loc_C05099: LdPrVar
  loc_C0509B: LateMemCall
  loc_C050A1: LitVarStr var_98, " font-size: 12px;"
  loc_C050A6: PopAdLdVar
  loc_C050A7: FLdPr Me
  loc_C050AA: MemLdRfVar from_stack_1.global_60
  loc_C050AD: LdPrVar
  loc_C050AF: LateMemCall
  loc_C050B5: LitVarStr var_98, " font-weight: bold;"
  loc_C050BA: PopAdLdVar
  loc_C050BB: FLdPr Me
  loc_C050BE: MemLdRfVar from_stack_1.global_60
  loc_C050C1: LdPrVar
  loc_C050C3: LateMemCall
  loc_C050C9: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C050CE: PopAdLdVar
  loc_C050CF: FLdPr Me
  loc_C050D2: MemLdRfVar from_stack_1.global_60
  loc_C050D5: LdPrVar
  loc_C050D7: LateMemCall
  loc_C050DD: LitVarStr var_98, "}"
  loc_C050E2: PopAdLdVar
  loc_C050E3: FLdPr Me
  loc_C050E6: MemLdRfVar from_stack_1.global_60
  loc_C050E9: LdPrVar
  loc_C050EB: LateMemCall
  loc_C050F1: LitVarStr var_98, ".SubTotales {"
  loc_C050F6: PopAdLdVar
  loc_C050F7: FLdPr Me
  loc_C050FA: MemLdRfVar from_stack_1.global_60
  loc_C050FD: LdPrVar
  loc_C050FF: LateMemCall
  loc_C05105: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C0510A: PopAdLdVar
  loc_C0510B: FLdPr Me
  loc_C0510E: MemLdRfVar from_stack_1.global_60
  loc_C05111: LdPrVar
  loc_C05113: LateMemCall
  loc_C05119: LitVarStr var_98, " font-size: 10px;"
  loc_C0511E: PopAdLdVar
  loc_C0511F: FLdPr Me
  loc_C05122: MemLdRfVar from_stack_1.global_60
  loc_C05125: LdPrVar
  loc_C05127: LateMemCall
  loc_C0512D: LitVarStr var_98, " font-weight: bold;"
  loc_C05132: PopAdLdVar
  loc_C05133: FLdPr Me
  loc_C05136: MemLdRfVar from_stack_1.global_60
  loc_C05139: LdPrVar
  loc_C0513B: LateMemCall
  loc_C05141: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C05146: PopAdLdVar
  loc_C05147: FLdPr Me
  loc_C0514A: MemLdRfVar from_stack_1.global_60
  loc_C0514D: LdPrVar
  loc_C0514F: LateMemCall
  loc_C05155: LitVarStr var_98, "}"
  loc_C0515A: PopAdLdVar
  loc_C0515B: FLdPr Me
  loc_C0515E: MemLdRfVar from_stack_1.global_60
  loc_C05161: LdPrVar
  loc_C05163: LateMemCall
  loc_C05169: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_C0516E: PopAdLdVar
  loc_C0516F: FLdPr Me
  loc_C05172: MemLdRfVar from_stack_1.global_60
  loc_C05175: LdPrVar
  loc_C05177: LateMemCall
  loc_C0517D: LitVarStr var_98, "</style>"
  loc_C05182: PopAdLdVar
  loc_C05183: FLdPr Me
  loc_C05186: MemLdRfVar from_stack_1.global_60
  loc_C05189: LdPrVar
  loc_C0518B: LateMemCall
  loc_C05191: LitI4 0
  loc_C05196: FStStrCopy var_B0
  loc_C05199: FLdRfVar var_B0
  loc_C0519C: LitI4 0
  loc_C051A1: FStStrCopy var_AC
  loc_C051A4: FLdRfVar var_AC
  loc_C051A7: LitI2_Byte &HFF
  loc_C051A9: PopTmpLdAd2 var_C2
  loc_C051AC: FLdPr Me
  loc_C051AF: MemLdRfVar from_stack_1.global_60
  loc_C051B2: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C051B7: FFreeStr var_AC = ""
  loc_C051BE: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C051C3: PopAdLdVar
  loc_C051C4: FLdPr Me
  loc_C051C7: MemLdRfVar from_stack_1.global_60
  loc_C051CA: LdPrVar
  loc_C051CC: LateMemCall
  loc_C051D2: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_C051D7: PopAdLdVar
  loc_C051D8: FLdPr Me
  loc_C051DB: MemLdRfVar from_stack_1.global_60
  loc_C051DE: LdPrVar
  loc_C051E0: LateMemCall
  loc_C051E6: LitVarStr var_98, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p> "
  loc_C051EB: PopAdLdVar
  loc_C051EC: FLdPr Me
  loc_C051EF: MemLdRfVar from_stack_1.global_60
  loc_C051F2: LdPrVar
  loc_C051F4: LateMemCall
  loc_C051FA: FLdPr Me
  loc_C051FD: MemLdI2 bLogos
  loc_C05200: BranchF loc_C0525B
  loc_C05203: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C05206: LitI2_Byte &H5F
  loc_C05208: CStrUI1
  loc_C0520A: FStStrNoPop var_AC
  loc_C0520D: ConcatStr
  loc_C0520E: FStStrNoPop var_B0
  loc_C05211: LitStr """ height="""
  loc_C05214: ConcatStr
  loc_C05215: FStStrNoPop var_C8
  loc_C05218: LitI2_Byte &H3C
  loc_C0521A: CStrUI1
  loc_C0521C: FStStrNoPop var_CC
  loc_C0521F: ConcatStr
  loc_C05220: FStStrNoPop var_D0
  loc_C05223: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C05226: ConcatStr
  loc_C05227: FStStrNoPop var_D4
  loc_C0522A: LitStr "Municipalidad de Guaymallén"
  loc_C0522D: ConcatStr
  loc_C0522E: FStStrNoPop var_D8
  loc_C05231: LitStr "</p>"
  loc_C05234: ConcatStr
  loc_C05235: CVarStr var_C0
  loc_C05238: PopAdLdVar
  loc_C05239: FLdPr Me
  loc_C0523C: MemLdRfVar from_stack_1.global_60
  loc_C0523F: LdPrVar
  loc_C05241: LateMemCall
  loc_C05247: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_C05258: FFree1Var var_C0 = ""
  loc_C0525B: LitStr "    <p>"
  loc_C0525E: FLdRfVar var_AC
  loc_C05261: FLdPr Me
  loc_C05264:  = Me.Caption
  loc_C05269: ILdRf var_AC
  loc_C0526C: ConcatStr
  loc_C0526D: FStStrNoPop var_B0
  loc_C05270: LitStr "</p></th>"
  loc_C05273: ConcatStr
  loc_C05274: CVarStr var_C0
  loc_C05277: PopAdLdVar
  loc_C05278: FLdPr Me
  loc_C0527B: MemLdRfVar from_stack_1.global_60
  loc_C0527E: LdPrVar
  loc_C05280: LateMemCall
  loc_C05286: FFreeStr var_AC = ""
  loc_C0528D: FFree1Var var_C0 = ""
  loc_C05290: LitVarStr var_98, "  </tr>"
  loc_C05295: PopAdLdVar
  loc_C05296: FLdPr Me
  loc_C05299: MemLdRfVar from_stack_1.global_60
  loc_C0529C: LdPrVar
  loc_C0529E: LateMemCall
  loc_C052A4: LitVarStr var_98, "  <tr>"
  loc_C052A9: PopAdLdVar
  loc_C052AA: FLdPr Me
  loc_C052AD: MemLdRfVar from_stack_1.global_60
  loc_C052B0: LdPrVar
  loc_C052B2: LateMemCall
  loc_C052B8: FLdPr Me
  loc_C052BB: MemLdRfVar from_stack_1.global_76
  loc_C052BE: NewIfNullAd
  loc_C052C1: FStAd var_DC 
  loc_C052C5: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C052CA: PopAdLdVar
  loc_C052CB: FLdPr Me
  loc_C052CE: MemLdRfVar from_stack_1.global_60
  loc_C052D1: LdPrVar
  loc_C052D3: LateMemCall
  loc_C052D9: LitStr "    <td width=""50" & Chr(37) & """><strong>Periodo: </strong>"
  loc_C052DC: FLdRfVar var_C2
  loc_C052DF: FLdPr var_DC
  loc_C052E2: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C052E7: FLdI2 var_C2
  loc_C052EA: CStrUI1
  loc_C052EC: FStStrNoPop var_AC
  loc_C052EF: ConcatStr
  loc_C052F0: FStStrNoPop var_B0
  loc_C052F3: LitStr "</td>"
  loc_C052F6: ConcatStr
  loc_C052F7: CVarStr var_C0
  loc_C052FA: PopAdLdVar
  loc_C052FB: FLdPr Me
  loc_C052FE: MemLdRfVar from_stack_1.global_60
  loc_C05301: LdPrVar
  loc_C05303: LateMemCall
  loc_C05309: FFreeStr var_AC = ""
  loc_C05310: FFree1Var var_C0 = ""
  loc_C05313: LitVarStr var_98, "    <td width=""50" & Chr(37) & """><strong>Tipo de Liquidación: </strong>"
  loc_C05318: FLdRfVar var_C0
  loc_C0531B: FLdPr var_DC
  loc_C0531E: from_stack_1 = clsliquidacion.DetaTili
  loc_C05323: FLdRfVar var_C0
  loc_C05326: ConcatVar var_EC
  loc_C0532A: LitVarStr var_A8, "</td>"
  loc_C0532F: ConcatVar var_FC
  loc_C05333: PopAdLdVar
  loc_C05334: FLdPr Me
  loc_C05337: MemLdRfVar from_stack_1.global_60
  loc_C0533A: LdPrVar
  loc_C0533C: LateMemCall
  loc_C05342: FFreeVar var_C0 = "": var_EC = ""
  loc_C0534B: LitVarStr var_98, "  </tr>"
  loc_C05350: PopAdLdVar
  loc_C05351: FLdPr Me
  loc_C05354: MemLdRfVar from_stack_1.global_60
  loc_C05357: LdPrVar
  loc_C05359: LateMemCall
  loc_C0535F: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C05364: PopAdLdVar
  loc_C05365: FLdPr Me
  loc_C05368: MemLdRfVar from_stack_1.global_60
  loc_C0536B: LdPrVar
  loc_C0536D: LateMemCall
  loc_C05373: LitStr "    <td><strong>Número: </strong>"
  loc_C05376: FLdRfVar var_C2
  loc_C05379: FLdPr var_DC
  loc_C0537C: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C05381: FLdI2 var_C2
  loc_C05384: CStrUI1
  loc_C05386: FStStrNoPop var_AC
  loc_C05389: ConcatStr
  loc_C0538A: FStStrNoPop var_B0
  loc_C0538D: LitStr "</td>"
  loc_C05390: ConcatStr
  loc_C05391: CVarStr var_C0
  loc_C05394: PopAdLdVar
  loc_C05395: FLdPr Me
  loc_C05398: MemLdRfVar from_stack_1.global_60
  loc_C0539B: LdPrVar
  loc_C0539D: LateMemCall
  loc_C053A3: FFreeStr var_AC = ""
  loc_C053AA: FFree1Var var_C0 = ""
  loc_C053AD: LitVarStr var_98, "  </tr>"
  loc_C053B2: PopAdLdVar
  loc_C053B3: FLdPr Me
  loc_C053B6: MemLdRfVar from_stack_1.global_60
  loc_C053B9: LdPrVar
  loc_C053BB: LateMemCall
  loc_C053C1: FLdPr Me
  loc_C053C4: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_C053C7: FStAdFunc var_110
  loc_C053CA: FLdPr var_110
  loc_C053CD: LateIdLdVar var_C0 DispID_22 0
  loc_C053D4: CStrVarTmp
  loc_C053D5: FStStrNoPop var_AC
  loc_C053D8: LitStr vbNullString
  loc_C053DB: NeStr
  loc_C053DD: FLdPr Me
  loc_C053E0: VCallAd Control_ID_CodiDifuHastaMsk
  loc_C053E3: FStAdFunc var_114
  loc_C053E6: FLdPr var_114
  loc_C053E9: LateIdLdVar var_EC DispID_22 0
  loc_C053F0: CStrVarTmp
  loc_C053F1: FStStrNoPop var_B0
  loc_C053F4: LitStr vbNullString
  loc_C053F7: NeStr
  loc_C053F9: OrI4
  loc_C053FA: FFreeStr var_AC = ""
  loc_C05401: FFreeAd var_110 = ""
  loc_C05408: FFreeVar var_C0 = ""
  loc_C0540F: BranchF loc_C0557A
  loc_C05412: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C05417: PopAdLdVar
  loc_C05418: FLdPr Me
  loc_C0541B: MemLdRfVar from_stack_1.global_60
  loc_C0541E: LdPrVar
  loc_C05420: LateMemCall
  loc_C05426: FLdPr Me
  loc_C05429: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_C0542C: FStAdFunc var_110
  loc_C0542F: FLdPr var_110
  loc_C05432: LateIdLdVar var_C0 DispID_22 0
  loc_C05439: PopAd
  loc_C0543B: FLdPr Me
  loc_C0543E: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_C05441: FStAdFunc var_114
  loc_C05444: FLdPr var_114
  loc_C05447: LateIdLdVar var_EC DispID_22 0
  loc_C0544E: PopAd
  loc_C05450: LitVarStr var_10C, "    <td><strong>"
  loc_C05455: LitVarStr var_A8, "&nbsp;"
  loc_C0545A: FStVarCopyObj var_124
  loc_C0545D: FLdRfVar var_124
  loc_C05460: LitStr "Desde Cuenta: </strong>"
  loc_C05463: FLdRfVar var_EC
  loc_C05466: CStrVarTmp
  loc_C05467: FStStrNoPop var_B0
  loc_C0546A: ConcatStr
  loc_C0546B: CVarStr var_FC
  loc_C0546E: FLdRfVar var_C0
  loc_C05471: CStrVarTmp
  loc_C05472: FStStrNoPop var_AC
  loc_C05475: LitStr vbNullString
  loc_C05478: NeStr
  loc_C0547A: CVarBoolI2 var_98
  loc_C0547E: FLdRfVar var_134
  loc_C05481: ImpAdCallFPR4  = IIf(, , )
  loc_C05486: FLdRfVar var_134
  loc_C05489: ConcatVar var_144
  loc_C0548D: LitVarStr var_154, "</td>"
  loc_C05492: ConcatVar var_164
  loc_C05496: PopAdLdVar
  loc_C05497: FLdPr Me
  loc_C0549A: MemLdRfVar from_stack_1.global_60
  loc_C0549D: LdPrVar
  loc_C0549F: LateMemCall
  loc_C054A5: FFreeStr var_AC = ""
  loc_C054AC: FFreeAd var_110 = ""
  loc_C054B3: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_FC = "": var_124 = "": var_134 = "": var_144 = ""
  loc_C054C6: FLdPr Me
  loc_C054C9: VCallAd Control_ID_CodiDifuHastaMsk
  loc_C054CC: FStAdFunc var_110
  loc_C054CF: FLdPr var_110
  loc_C054D2: LateIdLdVar var_C0 DispID_22 0
  loc_C054D9: PopAd
  loc_C054DB: FLdPr Me
  loc_C054DE: VCallAd Control_ID_CodiDifuHastaMsk
  loc_C054E1: FStAdFunc var_114
  loc_C054E4: FLdPr var_114
  loc_C054E7: LateIdLdVar var_EC DispID_22 0
  loc_C054EE: PopAd
  loc_C054F0: LitVarStr var_10C, "    <td><strong>"
  loc_C054F5: LitVarStr var_A8, "&nbsp;"
  loc_C054FA: FStVarCopyObj var_124
  loc_C054FD: FLdRfVar var_124
  loc_C05500: LitStr "Hasta Cuenta: </strong>"
  loc_C05503: FLdRfVar var_EC
  loc_C05506: CStrVarTmp
  loc_C05507: FStStrNoPop var_B0
  loc_C0550A: ConcatStr
  loc_C0550B: CVarStr var_FC
  loc_C0550E: FLdRfVar var_C0
  loc_C05511: CStrVarTmp
  loc_C05512: FStStrNoPop var_AC
  loc_C05515: LitStr vbNullString
  loc_C05518: NeStr
  loc_C0551A: CVarBoolI2 var_98
  loc_C0551E: FLdRfVar var_134
  loc_C05521: ImpAdCallFPR4  = IIf(, , )
  loc_C05526: FLdRfVar var_134
  loc_C05529: ConcatVar var_144
  loc_C0552D: LitVarStr var_154, "</td>"
  loc_C05532: ConcatVar var_164
  loc_C05536: PopAdLdVar
  loc_C05537: FLdPr Me
  loc_C0553A: MemLdRfVar from_stack_1.global_60
  loc_C0553D: LdPrVar
  loc_C0553F: LateMemCall
  loc_C05545: FFreeStr var_AC = ""
  loc_C0554C: FFreeAd var_110 = ""
  loc_C05553: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_FC = "": var_124 = "": var_134 = "": var_144 = ""
  loc_C05566: LitVarStr var_98, "  </tr>"
  loc_C0556B: PopAdLdVar
  loc_C0556C: FLdPr Me
  loc_C0556F: MemLdRfVar from_stack_1.global_60
  loc_C05572: LdPrVar
  loc_C05574: LateMemCall
  loc_C0557A: LitNothing
  loc_C0557C: FStAd var_DC 
  loc_C05580: LitVarStr var_98, "</table>"
  loc_C05585: PopAdLdVar
  loc_C05586: FLdPr Me
  loc_C05589: MemLdRfVar from_stack_1.global_60
  loc_C0558C: LdPrVar
  loc_C0558E: LateMemCall
  loc_C05594: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C05599: PopAdLdVar
  loc_C0559A: FLdPr Me
  loc_C0559D: MemLdRfVar from_stack_1.global_60
  loc_C055A0: LdPrVar
  loc_C055A2: LateMemCall
  loc_C055A8: LitVarStr var_98, "  <thead>"
  loc_C055AD: PopAdLdVar
  loc_C055AE: FLdPr Me
  loc_C055B1: MemLdRfVar from_stack_1.global_60
  loc_C055B4: LdPrVar
  loc_C055B6: LateMemCall
  loc_C055BC: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C055C1: PopAdLdVar
  loc_C055C2: FLdPr Me
  loc_C055C5: MemLdRfVar from_stack_1.global_60
  loc_C055C8: LdPrVar
  loc_C055CA: LateMemCall
  loc_C055D0: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_C055D5: PopAdLdVar
  loc_C055D6: FLdPr Me
  loc_C055D9: MemLdRfVar from_stack_1.global_60
  loc_C055DC: LdPrVar
  loc_C055DE: LateMemCall
  loc_C055E4: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_C055E9: PopAdLdVar
  loc_C055EA: FLdPr Me
  loc_C055ED: MemLdRfVar from_stack_1.global_60
  loc_C055F0: LdPrVar
  loc_C055F2: LateMemCall
  loc_C055F8: LitVarStr var_98, "    <th>Tipo de Sepultura</th>"
  loc_C055FD: PopAdLdVar
  loc_C055FE: FLdPr Me
  loc_C05601: MemLdRfVar from_stack_1.global_60
  loc_C05604: LdPrVar
  loc_C05606: LateMemCall
  loc_C0560C: LitVarStr var_98, "    <th>Local.</th>"
  loc_C05611: PopAdLdVar
  loc_C05612: FLdPr Me
  loc_C05615: MemLdRfVar from_stack_1.global_60
  loc_C05618: LdPrVar
  loc_C0561A: LateMemCall
  loc_C05620: LitVarStr var_98, "    <th>Deuda</th>"
  loc_C05625: PopAdLdVar
  loc_C05626: FLdPr Me
  loc_C05629: MemLdRfVar from_stack_1.global_60
  loc_C0562C: LdPrVar
  loc_C0562E: LateMemCall
  loc_C05634: LitVarStr var_98, "    <th>Tipo</th>"
  loc_C05639: PopAdLdVar
  loc_C0563A: FLdPr Me
  loc_C0563D: MemLdRfVar from_stack_1.global_60
  loc_C05640: LdPrVar
  loc_C05642: LateMemCall
  loc_C05648: LitVarStr var_98, "    <th>Orden</th>"
  loc_C0564D: PopAdLdVar
  loc_C0564E: FLdPr Me
  loc_C05651: MemLdRfVar from_stack_1.global_60
  loc_C05654: LdPrVar
  loc_C05656: LateMemCall
  loc_C0565C: LitVarStr var_98, "    <th>Concepto</th>"
  loc_C05661: PopAdLdVar
  loc_C05662: FLdPr Me
  loc_C05665: MemLdRfVar from_stack_1.global_60
  loc_C05668: LdPrVar
  loc_C0566A: LateMemCall
  loc_C05670: LitVarStr var_98, "    <th>Importe</th>"
  loc_C05675: PopAdLdVar
  loc_C05676: FLdPr Me
  loc_C05679: MemLdRfVar from_stack_1.global_60
  loc_C0567C: LdPrVar
  loc_C0567E: LateMemCall
  loc_C05684: LitVarStr var_98, "    <th>Exen.</th>"
  loc_C05689: PopAdLdVar
  loc_C0568A: FLdPr Me
  loc_C0568D: MemLdRfVar from_stack_1.global_60
  loc_C05690: LdPrVar
  loc_C05692: LateMemCall
  loc_C05698: LitVarStr var_98, "    <th>Desc.</th>"
  loc_C0569D: PopAdLdVar
  loc_C0569E: FLdPr Me
  loc_C056A1: MemLdRfVar from_stack_1.global_60
  loc_C056A4: LdPrVar
  loc_C056A6: LateMemCall
  loc_C056AC: LitVarStr var_98, "    <th>Cred.</th>"
  loc_C056B1: PopAdLdVar
  loc_C056B2: FLdPr Me
  loc_C056B5: MemLdRfVar from_stack_1.global_60
  loc_C056B8: LdPrVar
  loc_C056BA: LateMemCall
  loc_C056C0: LitVarStr var_98, "    <th>Total</th>"
  loc_C056C5: PopAdLdVar
  loc_C056C6: FLdPr Me
  loc_C056C9: MemLdRfVar from_stack_1.global_60
  loc_C056CC: LdPrVar
  loc_C056CE: LateMemCall
  loc_C056D4: LitVarStr var_98, "    </tr>"
  loc_C056D9: PopAdLdVar
  loc_C056DA: FLdPr Me
  loc_C056DD: MemLdRfVar from_stack_1.global_60
  loc_C056E0: LdPrVar
  loc_C056E2: LateMemCall
  loc_C056E8: LitVarStr var_98, "  </thead>"
  loc_C056ED: PopAdLdVar
  loc_C056EE: FLdPr Me
  loc_C056F1: MemLdRfVar from_stack_1.global_60
  loc_C056F4: LdPrVar
  loc_C056F6: LateMemCall
  loc_C056FC: ExitProcHresult
End Function

Private Function Proc_236_22_A0B178() 'A0B178
  'Data Table: 487D20
  loc_A0B138: LitVarStr var_94, "</table>"
  loc_A0B13D: PopAdLdVar
  loc_A0B13E: FLdPr Me
  loc_A0B141: MemLdRfVar from_stack_1.global_60
  loc_A0B144: LdPrVar
  loc_A0B146: LateMemCall
  loc_A0B14C: LitVarStr var_94, "</body>"
  loc_A0B151: PopAdLdVar
  loc_A0B152: FLdPr Me
  loc_A0B155: MemLdRfVar from_stack_1.global_60
  loc_A0B158: LdPrVar
  loc_A0B15A: LateMemCall
  loc_A0B160: LitVarStr var_94, "</html>"
  loc_A0B165: PopAdLdVar
  loc_A0B166: FLdPr Me
  loc_A0B169: MemLdRfVar from_stack_1.global_60
  loc_A0B16C: LdPrVar
  loc_A0B16E: LateMemCall
  loc_A0B174: ExitProcHresult
End Function
