VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptControldelCalculodeLiquidaciondeComercioSintetico
  Caption = "Control del Cálculo de Liquidación de Comercio Sintético"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControldelCalculodeLiquidaciondeComercioSintetico.frx":0000
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
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercioSintetico.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 6600
    Width = 855
    Height = 735
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptControldelCalculodeLiquidaciondeComercioSintetico.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercioSintetico.frx":0B9C
    Left = 7200
    Top = 6360
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
      Begin MSMask.MaskEdBox CodiComeDesdeMsk
        Left = 2610
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercioSintetico.frx":0C00
      End
      Begin MSMask.MaskEdBox CodiComeHastaMsk
        Left = 5730
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercioSintetico.frx":0C98
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
      OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercioSintetico.frx":0D30
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 6840
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeComercioSintetico.frx":1036
  End
End

Attribute VB_Name = "rptControldelCalculodeLiquidaciondeComercioSintetico"

Public bGenerado As Boolean

Private Type UDT_1_00562720
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_00562888
  bStruc(36) As Byte ' String fields: 5
End Type

Private Type UDT_3_005628EC
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub CodiComeHastaMsk_UnknownEvent_0 '9BDA58
  'Data Table: 474E44
  loc_9BDA44: FLdPr Me
  loc_9BDA47: VCallAd Control_ID_CodiComeHastaMsk
  loc_9BDA4A: CVarAd
  loc_9BDA4E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDA53: FFree1Var var_94 = ""
  loc_9BDA56: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A62090
  'Data Table: 474E44
  loc_A62024: LitVar_FALSE
  loc_A62028: PopAdLdVar
  loc_A62029: FLdPr Me
  loc_A6202C: VCallAd Control_ID_dgdLiquidacion
  loc_A6202F: FStAdFunc var_A8
  loc_A62032: FLdPr var_A8
  loc_A62035: LateIdSt
  loc_A6203A: FFree1Ad var_A8
  loc_A6203D: LitI2_Byte 0
  loc_A6203F: ILdRf Me
  loc_A62042: CastAd
  loc_A62045: FStAdFunc var_A8
  loc_A62048: FLdRfVar var_A8
  loc_A6204B: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A62050: FFree1Ad var_A8
  loc_A62053: FLdRfVar var_AA
  loc_A62056: FLdPr Me
  loc_A62059: VCallAd Control_ID_cmdPredeterminada
  loc_A6205C: FStAdFunc var_A8
  loc_A6205F: FLdPr var_A8
  loc_A62062:  = Me.Enabled
  loc_A62067: FLdI2 var_AA
  loc_A6206A: NotI4
  loc_A6206B: FFree1Ad var_A8
  loc_A6206E: BranchF loc_A62079
  loc_A62071: ImpAdCallFPR4 DoEvents()
  loc_A62076: Branch loc_A62053
  loc_A62079: ILdRf Me
  loc_A6207C: FStAdNoPop
  loc_A62080: ImpAdLdRf MemVar_D9C5D8
  loc_A62083: NewIfNullPr Global
  loc_A62086: Global.Unload from_stack_1
  loc_A6208B: FFree1Ad var_A8
  loc_A6208E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ACDDB4
  'Data Table: 474E44
  loc_ACDC90: LitI2_Byte 0
  loc_ACDC92: FLdPr Me
  loc_ACDC95: MemStI2 bGenerado
  loc_ACDC98: LitI2_Byte 0
  loc_ACDC9A: ILdRf Me
  loc_ACDC9D: CastAd
  loc_ACDCA0: FStAdFunc var_88
  loc_ACDCA3: FLdRfVar var_88
  loc_ACDCA6: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_ACDCAB: FFree1Ad var_88
  loc_ACDCAE: FLdPr Me
  loc_ACDCB1: MemLdRfVar from_stack_1.global_76
  loc_ACDCB4: NewIfNullPr clsliquidacion
  loc_ACDCB7: Call clsliquidacion.Requery()
  loc_ACDCBC: LitVarStr var_98, vbNullString
  loc_ACDCC1: PopAdLdVar
  loc_ACDCC2: FLdPr Me
  loc_ACDCC5: VCallAd Control_ID_CodiComeDesdeMsk
  loc_ACDCC8: FStAdFunc var_88
  loc_ACDCCB: FLdPr var_88
  loc_ACDCCE: LateIdSt
  loc_ACDCD3: FFree1Ad var_88
  loc_ACDCD6: LitVarStr var_98, vbNullString
  loc_ACDCDB: PopAdLdVar
  loc_ACDCDC: FLdPr Me
  loc_ACDCDF: VCallAd Control_ID_CodiComeHastaMsk
  loc_ACDCE2: FStAdFunc var_88
  loc_ACDCE5: FLdPr var_88
  loc_ACDCE8: LateIdSt
  loc_ACDCED: FFree1Ad var_88
  loc_ACDCF0: FLdRfVar var_AC
  loc_ACDCF3: FLdPr Me
  loc_ACDCF6: MemLdRfVar from_stack_1.global_76
  loc_ACDCF9: NewIfNullPr clsliquidacion
  loc_ACDCFC: from_stack_1 = clsliquidacion.RecordCount
  loc_ACDD01: ILdRf var_AC
  loc_ACDD04: LitI4 0
  loc_ACDD09: GtI4
  loc_ACDD0A: BranchF loc_ACDD7C
  loc_ACDD0D: LitI4 0
  loc_ACDD12: LitI4 1
  loc_ACDD17: FLdRfVar var_B0
  loc_ACDD1A: Redim
  loc_ACDD24: FLdPr Me
  loc_ACDD27: MemLdRfVar from_stack_1.global_76
  loc_ACDD2A: NewIfNullAd
  loc_ACDD2D: FStAd var_88 
  loc_ACDD31: FLdRfVar var_88
  loc_ACDD34: CVarRef
  loc_ACDD39: ParmAry1St
  loc_ACDD3F: FLdPr Me
  loc_ACDD42: VCallAd Control_ID_dgdLiquidacion
  loc_ACDD45: CVarAd
  loc_ACDD49: ParmAry1St
  loc_ACDD4F: FLdRfVar var_B0
  loc_ACDD52: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ACDD57: ILdRf var_88
  loc_ACDD5A: CastAd
  loc_ACDD5D: FLdPr Me
  loc_ACDD60: MemStAdFunc
  loc_ACDD64: FLdRfVar var_B0
  loc_ACDD67: Erase
  loc_ACDD68: FFree1Ad var_88
  loc_ACDD6B: FLdPr Me
  loc_ACDD6E: MemLdRfVar from_stack_1.global_76
  loc_ACDD71: NewIfNullPr clsliquidacion
  loc_ACDD74: Call clsliquidacion.MoveLast()
  loc_ACDD79: Branch loc_ACDD98
  loc_ACDD7C: LitStr "No existen liquidaciones para listar"
  loc_ACDD7F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACDD84: ILdRf Me
  loc_ACDD87: CastAd
  loc_ACDD8A: FStAdFunc var_88
  loc_ACDD8D: FLdRfVar var_88
  loc_ACDD90: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_ACDD95: FFree1Ad var_88
  loc_ACDD98: Call HabilitarCriterio()
  loc_ACDD9D: ILdRf Me
  loc_ACDDA0: CastAd
  loc_ACDDA3: FStAdFunc var_88
  loc_ACDDA6: FLdRfVar var_88
  loc_ACDDA9: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ACDDAE: FFree1Ad var_88
  loc_ACDDB1: ExitProcHresult
  loc_ACDDB2: SubI4
End Sub

Private Sub CodiComeDesdeMsk_UnknownEvent_0 '9C08C0
  'Data Table: 474E44
  loc_9C08AC: FLdPr Me
  loc_9C08AF: VCallAd Control_ID_CodiComeDesdeMsk
  loc_9C08B2: CVarAd
  loc_9C08B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C08BB: FFree1Var var_94 = ""
  loc_9C08BE: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() 'A02824
  'Data Table: 474E44
  loc_A027F4: LitVar_FALSE
  loc_A027F8: PopAdLdVar
  loc_A027F9: FLdPr Me
  loc_A027FC: VCallAd Control_ID_dgdLiquidacion
  loc_A027FF: FStAdFunc var_A8
  loc_A02802: FLdPr var_A8
  loc_A02805: LateIdSt
  loc_A0280A: FFree1Ad var_A8
  loc_A0280D: ILdRf Me
  loc_A02810: CastAd
  loc_A02813: FStAdFunc var_A8
  loc_A02816: FLdRfVar var_A8
  loc_A02819: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_A0281E: FFree1Ad var_A8
  loc_A02821: ExitProcHresult
End Sub

Private Sub Form_Load() 'A22028
  'Data Table: 474E44
  loc_A21FE8: ILdRf Me
  loc_A21FEB: CastAd
  loc_A21FEE: FStAdFunc var_88
  loc_A21FF1: FLdRfVar var_88
  loc_A21FF4: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A21FF9: FFree1Ad var_88
  loc_A21FFC: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu"
  loc_A21FFF: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A22002: ConcatStr
  loc_A22003: FStStrNoPop var_8C
  loc_A22006: LitStr " WHERE liquidacion.CodiOfic = 2 ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A22009: ConcatStr
  loc_A2200A: FStStrNoPop var_90
  loc_A2200D: FLdPr Me
  loc_A22010: MemLdRfVar from_stack_1.global_76
  loc_A22013: NewIfNullPr clsliquidacion
  loc_A22016: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A2201B: FFreeStr var_8C = ""
  loc_A22022: Call cmdNueva_Click()
  loc_A22027: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9C8F18
  'Data Table: 474E44
  loc_9C8F00: FLdPr Me
  loc_9C8F03: VCallAd Control_ID_wbbReporte
  loc_9C8F06: FStAdFunc var_88
  loc_9C8F09: FLdRfVar var_88
  loc_9C8F0C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9C8F11: FFree1Ad var_88
  loc_9C8F14: ExitProcHresult
  loc_9C8F15: CR4Var
End Sub

Private Sub cmdPdf_Click() 'A06878
  'Data Table: 474E44
  loc_A06844: LitVar_FALSE
  loc_A06848: PopAdLdVar
  loc_A06849: FLdPr Me
  loc_A0684C: VCallAd Control_ID_dgdLiquidacion
  loc_A0684F: FStAdFunc var_A8
  loc_A06852: FLdPr var_A8
  loc_A06855: LateIdSt
  loc_A0685A: FFree1Ad var_A8
  loc_A0685D: LitI2_Byte 0
  loc_A0685F: PopTmpLdAd2 var_AA
  loc_A06862: ILdRf Me
  loc_A06865: CastAd
  loc_A06868: FStAdFunc var_A8
  loc_A0686B: FLdRfVar var_A8
  loc_A0686E: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_A06873: FFree1Ad var_A8
  loc_A06876: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1BE08
  'Data Table: 474E44
  loc_A1BDD0: FLdPr Me
  loc_A1BDD3: VCallAd Control_ID_statusBar
  loc_A1BDD6: FStAdFunc var_88
  loc_A1BDD9: FLdPr var_88
  loc_A1BDDC: LateIdLdVar var_98 DispID_1 0
  loc_A1BDE3: CStrVarTmp
  loc_A1BDE4: CVarStr var_A8
  loc_A1BDE7: PopAdLdVar
  loc_A1BDE8: FLdPr Me
  loc_A1BDEB: VCallAd Control_ID_statusBar
  loc_A1BDEE: FStAdFunc var_BC
  loc_A1BDF1: FLdPr var_BC
  loc_A1BDF4: LateIdSt
  loc_A1BDF9: FFreeAd var_88 = ""
  loc_A1BE00: FFreeVar var_98 = ""
  loc_A1BE07: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A0275C
  'Data Table: 474E44
  loc_A0272C: LitVarStr var_94, "Cerrando..."
  loc_A02731: PopAdLdVar
  loc_A02732: FLdPr Me
  loc_A02735: VCallAd Control_ID_statusBar
  loc_A02738: FStAdFunc var_A8
  loc_A0273B: FLdPr var_A8
  loc_A0273E: LateIdSt
  loc_A02743: FFree1Ad var_A8
  loc_A02746: ILdRf Me
  loc_A02749: FStAdNoPop
  loc_A0274D: ImpAdLdRf MemVar_D9C5D8
  loc_A02750: NewIfNullPr Global
  loc_A02753: Global.Unload from_stack_1
  loc_A02758: FFree1Ad var_A8
  loc_A0275B: ExitProcHresult
End Sub

Public Function bGeneradoGet() '475B00
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '475B0F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5D1A0
  'Data Table: 474E44
  loc_A5D14C: LitI4 0
  loc_A5D151: LitI4 2
  loc_A5D156: FLdRfVar var_88
  loc_A5D159: Redim
  loc_A5D163: FLdPr Me
  loc_A5D166: VCallAd Control_ID_dgdLiquidacion
  loc_A5D169: CVarAd
  loc_A5D16D: ParmAry1St
  loc_A5D173: FLdPr Me
  loc_A5D176: VCallAd Control_ID_CodiComeDesdeMsk
  loc_A5D179: CVarAd
  loc_A5D17D: ParmAry1St
  loc_A5D183: FLdPr Me
  loc_A5D186: VCallAd Control_ID_CodiComeHastaMsk
  loc_A5D189: CVarAd
  loc_A5D18D: ParmAry1St
  loc_A5D193: FLdRfVar var_88
  loc_A5D196: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5D19B: FLdRfVar var_88
  loc_A5D19E: Erase
  loc_A5D19F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B4A008
  'Data Table: 474E44
  loc_B49CD8: FLdPr Me
  loc_B49CDB: MemLdI2 bGenerado
  loc_B49CDE: BranchF loc_B49CE2
  loc_B49CE1: ExitProcHresult
  loc_B49CE2: LitVarStr var_9C, "Generando reporte..."
  loc_B49CE7: PopAdLdVar
  loc_B49CE8: FLdPr Me
  loc_B49CEB: VCallAd Control_ID_statusBar
  loc_B49CEE: FStAdFunc var_B0
  loc_B49CF1: FLdPr var_B0
  loc_B49CF4: LateIdSt
  loc_B49CF9: FFree1Ad var_B0
  loc_B49CFC: LitI4 &HB
  loc_B49D01: CI2I4
  loc_B49D02: FLdPr Me
  loc_B49D05: Me.MousePointer = from_stack_1
  loc_B49D0A: FLdRfVar var_B4
  loc_B49D0D: FLdPr Me
  loc_B49D10: MemLdRfVar from_stack_1.global_76
  loc_B49D13: NewIfNullPr clsliquidacion
  loc_B49D16: from_stack_1 = clsliquidacion.RecordCount
  loc_B49D1B: ILdRf var_B4
  loc_B49D1E: LitI4 1
  loc_B49D23: LtI4
  loc_B49D24: BranchF loc_B49D32
  loc_B49D27: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B49D2A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B49D2F: Branch loc_B49FDE
  loc_B49D32: FLdPr Me
  loc_B49D35: VCallAd Control_ID_CodiComeDesdeMsk
  loc_B49D38: FStAdFunc var_B0
  loc_B49D3B: FLdPr var_B0
  loc_B49D3E: LateIdLdVar var_C4 DispID_22 0
  loc_B49D45: PopAd
  loc_B49D47: FLdPr Me
  loc_B49D4A: VCallAd Control_ID_CodiComeDesdeMsk
  loc_B49D4D: FStAdFunc var_CC
  loc_B49D50: FLdPr var_CC
  loc_B49D53: LateIdLdVar var_DC DispID_22 0
  loc_B49D5A: PopAd
  loc_B49D5C: LitVarStr var_AC, vbNullString
  loc_B49D61: FStVarCopyObj var_100
  loc_B49D64: FLdRfVar var_100
  loc_B49D67: LitStr " AND liqucome.CodiCome >= "
  loc_B49D6A: FLdRfVar var_DC
  loc_B49D6D: CStrVarTmp
  loc_B49D6E: FStStrNoPop var_E0
  loc_B49D71: ConcatStr
  loc_B49D72: CVarStr var_F0
  loc_B49D75: FLdRfVar var_C4
  loc_B49D78: CStrVarTmp
  loc_B49D79: FStStrNoPop var_C8
  loc_B49D7C: LitStr vbNullString
  loc_B49D7F: NeStr
  loc_B49D81: CVarBoolI2 var_9C
  loc_B49D85: FLdRfVar var_110
  loc_B49D88: ImpAdCallFPR4  = IIf(, , )
  loc_B49D8D: FLdRfVar var_110
  loc_B49D90: CStrVarTmp
  loc_B49D91: FStStr var_88
  loc_B49D94: FFreeStr var_C8 = ""
  loc_B49D9B: FFreeAd var_B0 = ""
  loc_B49DA2: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F0 = "": var_100 = ""
  loc_B49DB1: FLdPr Me
  loc_B49DB4: VCallAd Control_ID_CodiComeHastaMsk
  loc_B49DB7: FStAdFunc var_B0
  loc_B49DBA: FLdPr var_B0
  loc_B49DBD: LateIdLdVar var_C4 DispID_22 0
  loc_B49DC4: PopAd
  loc_B49DC6: FLdPr Me
  loc_B49DC9: VCallAd Control_ID_CodiComeHastaMsk
  loc_B49DCC: FStAdFunc var_CC
  loc_B49DCF: FLdPr var_CC
  loc_B49DD2: LateIdLdVar var_DC DispID_22 0
  loc_B49DD9: PopAd
  loc_B49DDB: LitVarStr var_AC, vbNullString
  loc_B49DE0: FStVarCopyObj var_100
  loc_B49DE3: FLdRfVar var_100
  loc_B49DE6: LitStr " AND liqucome.CodiCome <= "
  loc_B49DE9: FLdRfVar var_DC
  loc_B49DEC: CStrVarTmp
  loc_B49DED: FStStrNoPop var_E0
  loc_B49DF0: ConcatStr
  loc_B49DF1: CVarStr var_F0
  loc_B49DF4: FLdRfVar var_C4
  loc_B49DF7: CStrVarTmp
  loc_B49DF8: FStStrNoPop var_C8
  loc_B49DFB: LitStr vbNullString
  loc_B49DFE: NeStr
  loc_B49E00: CVarBoolI2 var_9C
  loc_B49E04: FLdRfVar var_110
  loc_B49E07: ImpAdCallFPR4  = IIf(, , )
  loc_B49E0C: FLdRfVar var_110
  loc_B49E0F: CStrVarTmp
  loc_B49E10: FStStr var_8C
  loc_B49E13: FFreeStr var_C8 = ""
  loc_B49E1A: FFreeAd var_B0 = ""
  loc_B49E21: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F0 = "": var_100 = ""
  loc_B49E30: FLdPr Me
  loc_B49E33: MemLdRfVar from_stack_1.global_80
  loc_B49E36: NewIfNullAd
  loc_B49E39: FStAd var_114 
  loc_B49E3D: LitStr "SELECT liqucome.CodiCome, DetaPers, liqucome.CodiLoca, DeudLico, RazoCome,"
  loc_B49E40: LitStr " OrdeLico, liqucome.CodiConc, DetaConc, BimeLiqu, ImpoLico, ExenLico, DescLico, CrafLico, TotaLico, TipoLico, TipoVenc"
  loc_B49E43: ConcatStr
  loc_B49E44: FStStrNoPop var_C8
  loc_B49E47: LitStr " FROM liqucome"
  loc_B49E4A: ConcatStr
  loc_B49E4B: FStStrNoPop var_E0
  loc_B49E4E: LitStr " INNER JOIN comercio ON comercio.CodiCome = liqucome.CodiCome"
  loc_B49E51: ConcatStr
  loc_B49E52: FStStrNoPop var_118
  loc_B49E55: LitStr " INNER JOIN relacion ON relacion.CodiOfic = 2 AND relacion.CuenCtct = comercio.CodiCome AND relacion.TipoRela = 'Titular'"
  loc_B49E58: ConcatStr
  loc_B49E59: FStStrNoPop var_11C
  loc_B49E5C: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_B49E5F: ConcatStr
  loc_B49E60: FStStrNoPop var_120
  loc_B49E63: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = liqucome.PeriLiqu AND concepto.CodiConc = liqucome.CodiConc"
  loc_B49E66: ConcatStr
  loc_B49E67: FStStrNoPop var_124
  loc_B49E6A: LitStr " WHERE liqucome.PeriLiqu = "
  loc_B49E6D: ConcatStr
  loc_B49E6E: FStStrNoPop var_12C
  loc_B49E71: FLdRfVar var_126
  loc_B49E74: FLdPr Me
  loc_B49E77: MemLdRfVar from_stack_1.global_76
  loc_B49E7A: NewIfNullPr clsliquidacion
  loc_B49E7D: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B49E82: FLdI2 var_126
  loc_B49E85: CStrUI1
  loc_B49E87: FStStrNoPop var_130
  loc_B49E8A: ConcatStr
  loc_B49E8B: FStStrNoPop var_134
  loc_B49E8E: LitStr " AND liqucome.CodiTili = "
  loc_B49E91: ConcatStr
  loc_B49E92: FStStrNoPop var_13C
  loc_B49E95: FLdRfVar var_136
  loc_B49E98: FLdPr Me
  loc_B49E9B: MemLdRfVar from_stack_1.global_76
  loc_B49E9E: NewIfNullPr clsliquidacion
  loc_B49EA1: from_stack_1 = clsliquidacion.CodiTili
  loc_B49EA6: FLdUI1
  loc_B49EAA: CStrI2
  loc_B49EAC: FStStrNoPop var_140
  loc_B49EAF: ConcatStr
  loc_B49EB0: FStStrNoPop var_144
  loc_B49EB3: LitStr " AND liqucome.NumeLiqu = "
  loc_B49EB6: ConcatStr
  loc_B49EB7: FStStrNoPop var_14C
  loc_B49EBA: FLdRfVar var_146
  loc_B49EBD: FLdPr Me
  loc_B49EC0: MemLdRfVar from_stack_1.global_76
  loc_B49EC3: NewIfNullPr clsliquidacion
  loc_B49EC6: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B49ECB: FLdI2 var_146
  loc_B49ECE: CStrUI1
  loc_B49ED0: FStStrNoPop var_150
  loc_B49ED3: ConcatStr
  loc_B49ED4: FStStrNoPop var_154
  loc_B49ED7: ILdRf var_88
  loc_B49EDA: ConcatStr
  loc_B49EDB: FStStrNoPop var_158
  loc_B49EDE: ILdRf var_8C
  loc_B49EE1: ConcatStr
  loc_B49EE2: FStStrNoPop var_15C
  loc_B49EE5: LitStr " ORDER BY liqucome.CodiCome, liqucome.PeriLiqu, liqucome.BimeLiqu, liqucome.CodiTili, liqucome.NumeLiqu, liqucome.CodiConc"
  loc_B49EE8: ConcatStr
  loc_B49EE9: FStStrNoPop var_160
  loc_B49EEC: FLdPr var_114
  loc_B49EEF: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_B49EF4: FFreeStr var_C8 = "": var_E0 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_13C = "": var_140 = "": var_144 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_B49F1B: FLdRfVar var_B4
  loc_B49F1E: FLdPr var_114
  loc_B49F21: from_stack_1 = clsliqucome.RecordCount
  loc_B49F26: ILdRf var_B4
  loc_B49F29: LitI4 1
  loc_B49F2E: LtI4
  loc_B49F2F: BranchF loc_B49F3D
  loc_B49F32: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B49F35: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B49F3A: Branch loc_B49FDE
  loc_B49F3D: LitI4 0
  loc_B49F42: FLdPr Me
  loc_B49F45: MemStI4 global_88
  loc_B49F48: LitI4 0
  loc_B49F4D: LitI4 1
  loc_B49F52: FLdPr Me
  loc_B49F55: MemLdRfVar from_stack_1.global_96
  loc_B49F58: Redim
  loc_B49F62: LitI4 0
  loc_B49F67: LitI4 1
  loc_B49F6C: FLdPr Me
  loc_B49F6F: MemLdRfVar from_stack_1.global_84
  loc_B49F72: Redim
  loc_B49F7C: FLdPr var_114
  loc_B49F7F: Call clsliqucome.MoveFirst()
  loc_B49F84: Call Proc_198_15_B1DFAC()
  loc_B49F89: FLdRfVar var_126
  loc_B49F8C: FLdPr var_114
  loc_B49F8F: from_stack_1 = clsliqucome.EOF
  loc_B49F94: FLdI2 var_126
  loc_B49F97: NotI4
  loc_B49F98: BranchF loc_B49FD0
  loc_B49F9B: FLdRfVar var_B4
  loc_B49F9E: FLdPr var_114
  loc_B49FA1: from_stack_1 = clsliqucome.CodiCome
  loc_B49FA6: ILdRf var_B4
  loc_B49FA9: CR8I4
  loc_B49FAA: FLdPr Me
  loc_B49FAD: MemLdStr global_88
  loc_B49FB0: FLdPr Me
  loc_B49FB3: MemLdStr global_84
  loc_B49FB6: Ary1LdPr
  loc_B49FB7: MemLdStr global_0
  loc_B49FBA: CR8Str
  loc_B49FBC: NeR8
  loc_B49FBD: BranchF loc_B49FC8
  loc_B49FC0: Call Proc_198_15_B1DFAC()
  loc_B49FC5: Branch loc_B49FCD
  loc_B49FC8: Call Proc_198_16_B95220()
  loc_B49FCD: Branch loc_B49F89
  loc_B49FD0: LitNothing
  loc_B49FD2: FStAd var_114 
  loc_B49FD6: LitI2_Byte &HFF
  loc_B49FD8: FLdPr Me
  loc_B49FDB: MemStI2 bGenerado
  loc_B49FDE: LitI4 0
  loc_B49FE3: CI2I4
  loc_B49FE4: FLdPr Me
  loc_B49FE7: Me.MousePointer = from_stack_1
  loc_B49FEC: LitVarStr var_9C, vbNullString
  loc_B49FF1: PopAdLdVar
  loc_B49FF2: FLdPr Me
  loc_B49FF5: VCallAd Control_ID_statusBar
  loc_B49FF8: FStAdFunc var_B0
  loc_B49FFB: FLdPr var_B0
  loc_B49FFE: LateIdSt
  loc_B4A003: FFree1Ad var_B0
  loc_B4A006: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B9F968
  'Data Table: 474E44
  loc_B9F3A8: FLdRfVar var_88
  loc_B9F3AB: LitI2_Byte 0
  loc_B9F3AD: LitI2_Byte &HFF
  loc_B9F3AF: ImpAdLdI4 MemVar_D93C84
  loc_B9F3B2: FLdPr Me
  loc_B9F3B5: MemLdRfVar from_stack_1.global_56
  loc_B9F3B8: NewIfNullPr IFileSystem3
  loc_B9F3BB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B9F3C0: ILdRf var_88
  loc_B9F3C3: FLdPr Me
  loc_B9F3C6: MemStVarAd
  loc_B9F3CA: FFree1Ad var_88
  loc_B9F3CD: LitI2_Byte &HFF
  loc_B9F3CF: ImpAdStI2 MemVar_D93C8A
  loc_B9F3D2: Call Proc_198_17_C060A4()
  loc_B9F3D7: LitI4 1
  loc_B9F3DC: FLdPr Me
  loc_B9F3DF: MemLdRfVar from_stack_1.global_88
  loc_B9F3E2: FLdPr Me
  loc_B9F3E5: MemLdStr global_84
  loc_B9F3E8: LitI2_Byte 1
  loc_B9F3EA: FnUBound
  loc_B9F3EC: ForI4 var_90
  loc_B9F3F2: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B9F3F7: PopAdLdVar
  loc_B9F3F8: FLdPr Me
  loc_B9F3FB: MemLdRfVar from_stack_1.global_60
  loc_B9F3FE: LdPrVar
  loc_B9F400: LateMemCall
  loc_B9F406: FLdPr Me
  loc_B9F409: MemLdStr global_88
  loc_B9F40C: FLdPr Me
  loc_B9F40F: MemLdStr global_84
  loc_B9F412: AryLock
  loc_B9F415: Ary1LdRf
  loc_B9F416: FStR4 var_B8
  loc_B9F419: LitStr "   <td rowspan="""
  loc_B9F41C: FMemLdR4 var_B8(24)
  loc_B9F421: LitI2_Byte 1
  loc_B9F423: FnUBound
  loc_B9F425: CStrI4
  loc_B9F427: FStStrNoPop var_BC
  loc_B9F42A: ConcatStr
  loc_B9F42B: FStStrNoPop var_C0
  loc_B9F42E: LitStr """ align=""right"">"
  loc_B9F431: ConcatStr
  loc_B9F432: FStStrNoPop var_C4
  loc_B9F435: FMemLdR4 var_B8(0)
  loc_B9F43A: ConcatStr
  loc_B9F43B: FStStrNoPop var_C8
  loc_B9F43E: LitStr "</td>"
  loc_B9F441: ConcatStr
  loc_B9F442: CVarStr var_D8
  loc_B9F445: PopAdLdVar
  loc_B9F446: FLdPr Me
  loc_B9F449: MemLdRfVar from_stack_1.global_60
  loc_B9F44C: LdPrVar
  loc_B9F44E: LateMemCall
  loc_B9F454: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9F45F: FFree1Var var_D8 = ""
  loc_B9F462: LitStr "   <td rowspan="""
  loc_B9F465: FMemLdR4 var_B8(24)
  loc_B9F46A: LitI2_Byte 1
  loc_B9F46C: FnUBound
  loc_B9F46E: CStrI4
  loc_B9F470: FStStrNoPop var_BC
  loc_B9F473: ConcatStr
  loc_B9F474: FStStrNoPop var_C0
  loc_B9F477: LitStr """ align=""left"">"
  loc_B9F47A: ConcatStr
  loc_B9F47B: FStStrNoPop var_C4
  loc_B9F47E: FMemLdR4 var_B8(4)
  loc_B9F483: ConcatStr
  loc_B9F484: FStStrNoPop var_C8
  loc_B9F487: LitStr "</td>"
  loc_B9F48A: ConcatStr
  loc_B9F48B: CVarStr var_D8
  loc_B9F48E: PopAdLdVar
  loc_B9F48F: FLdPr Me
  loc_B9F492: MemLdRfVar from_stack_1.global_60
  loc_B9F495: LdPrVar
  loc_B9F497: LateMemCall
  loc_B9F49D: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9F4A8: FFree1Var var_D8 = ""
  loc_B9F4AB: LitStr "   <td rowspan="""
  loc_B9F4AE: FMemLdR4 var_B8(24)
  loc_B9F4B3: LitI2_Byte 1
  loc_B9F4B5: FnUBound
  loc_B9F4B7: CStrI4
  loc_B9F4B9: FStStrNoPop var_BC
  loc_B9F4BC: ConcatStr
  loc_B9F4BD: FStStrNoPop var_C0
  loc_B9F4C0: LitStr """ align=""left"">"
  loc_B9F4C3: ConcatStr
  loc_B9F4C4: FStStrNoPop var_C4
  loc_B9F4C7: FMemLdR4 var_B8(8)
  loc_B9F4CC: ConcatStr
  loc_B9F4CD: FStStrNoPop var_C8
  loc_B9F4D0: LitStr "</td>"
  loc_B9F4D3: ConcatStr
  loc_B9F4D4: CVarStr var_D8
  loc_B9F4D7: PopAdLdVar
  loc_B9F4D8: FLdPr Me
  loc_B9F4DB: MemLdRfVar from_stack_1.global_60
  loc_B9F4DE: LdPrVar
  loc_B9F4E0: LateMemCall
  loc_B9F4E6: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9F4F1: FFree1Var var_D8 = ""
  loc_B9F4F4: LitStr "   <td rowspan="""
  loc_B9F4F7: FMemLdR4 var_B8(24)
  loc_B9F4FC: LitI2_Byte 1
  loc_B9F4FE: FnUBound
  loc_B9F500: CStrI4
  loc_B9F502: FStStrNoPop var_BC
  loc_B9F505: ConcatStr
  loc_B9F506: FStStrNoPop var_C0
  loc_B9F509: LitStr """ align=""right"">"
  loc_B9F50C: ConcatStr
  loc_B9F50D: FStStrNoPop var_C4
  loc_B9F510: FMemLdR4 var_B8(12)
  loc_B9F515: ConcatStr
  loc_B9F516: FStStrNoPop var_C8
  loc_B9F519: LitStr "</td>"
  loc_B9F51C: ConcatStr
  loc_B9F51D: CVarStr var_D8
  loc_B9F520: PopAdLdVar
  loc_B9F521: FLdPr Me
  loc_B9F524: MemLdRfVar from_stack_1.global_60
  loc_B9F527: LdPrVar
  loc_B9F529: LateMemCall
  loc_B9F52F: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9F53A: FFree1Var var_D8 = ""
  loc_B9F53D: LitStr "   <td rowspan="""
  loc_B9F540: FMemLdR4 var_B8(24)
  loc_B9F545: LitI2_Byte 1
  loc_B9F547: FnUBound
  loc_B9F549: CStrI4
  loc_B9F54B: FStStrNoPop var_BC
  loc_B9F54E: ConcatStr
  loc_B9F54F: FStStrNoPop var_C0
  loc_B9F552: LitStr """ align=""left"" nowrap=""nowrap"">"
  loc_B9F555: ConcatStr
  loc_B9F556: FStStrNoPop var_C4
  loc_B9F559: FMemLdR4 var_B8(16)
  loc_B9F55E: ConcatStr
  loc_B9F55F: FStStrNoPop var_C8
  loc_B9F562: LitStr "</td>"
  loc_B9F565: ConcatStr
  loc_B9F566: CVarStr var_D8
  loc_B9F569: PopAdLdVar
  loc_B9F56A: FLdPr Me
  loc_B9F56D: MemLdRfVar from_stack_1.global_60
  loc_B9F570: LdPrVar
  loc_B9F572: LateMemCall
  loc_B9F578: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9F583: FFree1Var var_D8 = ""
  loc_B9F586: LitStr "   <td rowspan="""
  loc_B9F589: FMemLdR4 var_B8(24)
  loc_B9F58E: LitI2_Byte 1
  loc_B9F590: FnUBound
  loc_B9F592: CStrI4
  loc_B9F594: FStStrNoPop var_BC
  loc_B9F597: ConcatStr
  loc_B9F598: FStStrNoPop var_C0
  loc_B9F59B: LitStr """ align=""right"">"
  loc_B9F59E: ConcatStr
  loc_B9F59F: FStStrNoPop var_C4
  loc_B9F5A2: FMemLdR4 var_B8(20)
  loc_B9F5A7: ConcatStr
  loc_B9F5A8: FStStrNoPop var_C8
  loc_B9F5AB: LitStr "</td>"
  loc_B9F5AE: ConcatStr
  loc_B9F5AF: CVarStr var_D8
  loc_B9F5B2: PopAdLdVar
  loc_B9F5B3: FLdPr Me
  loc_B9F5B6: MemLdRfVar from_stack_1.global_60
  loc_B9F5B9: LdPrVar
  loc_B9F5BB: LateMemCall
  loc_B9F5C1: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B9F5CC: FFree1Var var_D8 = ""
  loc_B9F5CF: LitI2_Byte 1
  loc_B9F5D1: CUI1I2
  loc_B9F5D3: FLdPr Me
  loc_B9F5D6: MemLdRfVar from_stack_1.global_92
  loc_B9F5D9: FMemLdR4 var_B8(24)
  loc_B9F5DE: LitI2_Byte 1
  loc_B9F5E0: FnUBound
  loc_B9F5E2: CUI1I4
  loc_B9F5E4: ForUI1 var_DC
  loc_B9F5EA: FLdPr Me
  loc_B9F5ED: MemLdUI1 global_92
  loc_B9F5F1: CI2UI1
  loc_B9F5F3: LitI2_Byte 1
  loc_B9F5F5: GtI2
  loc_B9F5F6: BranchF loc_B9F60D
  loc_B9F5F9: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B9F5FE: PopAdLdVar
  loc_B9F5FF: FLdPr Me
  loc_B9F602: MemLdRfVar from_stack_1.global_60
  loc_B9F605: LdPrVar
  loc_B9F607: LateMemCall
  loc_B9F60D: FLdPr Me
  loc_B9F610: MemLdUI1 global_92
  loc_B9F614: CI4UI1
  loc_B9F615: FMemLdR4 var_B8(24)
  loc_B9F61A: AryLock
  loc_B9F61D: Ary1LdRf
  loc_B9F61E: FStR4 var_E4
  loc_B9F621: LitStr vbNullString
  loc_B9F624: LitI2_Byte 0
  loc_B9F626: LitI2_Byte 0
  loc_B9F628: LitI2_Byte 0
  loc_B9F62A: LitStr "left"
  loc_B9F62D: FMemLdR4 var_E4(0)
  loc_B9F632: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F637: CVarStr var_D8
  loc_B9F63A: PopAdLdVar
  loc_B9F63B: FLdPr Me
  loc_B9F63E: MemLdRfVar from_stack_1.global_60
  loc_B9F641: LdPrVar
  loc_B9F643: LateMemCall
  loc_B9F649: FFree1Var var_D8 = ""
  loc_B9F64C: LitVarStr var_F4, "Semestral"
  loc_B9F651: FStVarCopyObj var_104
  loc_B9F654: FLdRfVar var_104
  loc_B9F657: LitVarStr var_B0, "Mes"
  loc_B9F65C: FStVarCopyObj var_D8
  loc_B9F65F: FLdRfVar var_D8
  loc_B9F662: FMemLdR4 var_E4(12)
  loc_B9F667: CR8Str
  loc_B9F669: LitI2_Byte 1
  loc_B9F66B: CR8I2
  loc_B9F66C: EqR4
  loc_B9F66D: CVarBoolI2 var_A0
  loc_B9F671: FLdRfVar var_114
  loc_B9F674: ImpAdCallFPR4  = IIf(, , )
  loc_B9F679: LitStr vbNullString
  loc_B9F67C: LitI2_Byte 0
  loc_B9F67E: LitI2_Byte 0
  loc_B9F680: LitI2_Byte 0
  loc_B9F682: LitStr "left"
  loc_B9F685: FMemLdR4 var_E4(4)
  loc_B9F68A: LitStr "&nbsp;("
  loc_B9F68D: ConcatStr
  loc_B9F68E: CVarStr var_124
  loc_B9F691: FLdRfVar var_114
  loc_B9F694: ConcatVar var_134
  loc_B9F698: LitVarStr var_144, ")"
  loc_B9F69D: ConcatVar var_154
  loc_B9F6A1: CStrVarVal var_BC
  loc_B9F6A5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F6AA: CVarStr var_164
  loc_B9F6AD: PopAdLdVar
  loc_B9F6AE: FLdPr Me
  loc_B9F6B1: MemLdRfVar from_stack_1.global_60
  loc_B9F6B4: LdPrVar
  loc_B9F6B6: LateMemCall
  loc_B9F6BC: FFree1Str var_BC
  loc_B9F6BF: FFreeVar var_A0 = "": var_D8 = "": var_104 = "": var_124 = "": var_114 = "": var_134 = "": var_154 = ""
  loc_B9F6D2: FMemLdRf 0
  loc_B9F6D7: FStR4 var_178
  loc_B9F6DA: LitStr vbNullString
  loc_B9F6DD: LitI2_Byte 0
  loc_B9F6DF: LitI2_Byte 0
  loc_B9F6E1: LitI2_Byte 0
  loc_B9F6E3: LitStr "right"
  loc_B9F6E6: FMemLdR4 var_178(0)
  loc_B9F6EB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F6F0: CVarStr var_D8
  loc_B9F6F3: PopAdLdVar
  loc_B9F6F4: FLdPr Me
  loc_B9F6F7: MemLdRfVar from_stack_1.global_60
  loc_B9F6FA: LdPrVar
  loc_B9F6FC: LateMemCall
  loc_B9F702: FFree1Var var_D8 = ""
  loc_B9F705: LitStr vbNullString
  loc_B9F708: LitI2_Byte 0
  loc_B9F70A: LitI2_Byte 0
  loc_B9F70C: LitI2_Byte 0
  loc_B9F70E: LitStr "right"
  loc_B9F711: FMemLdR4 var_178(4)
  loc_B9F716: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F71B: CVarStr var_D8
  loc_B9F71E: PopAdLdVar
  loc_B9F71F: FLdPr Me
  loc_B9F722: MemLdRfVar from_stack_1.global_60
  loc_B9F725: LdPrVar
  loc_B9F727: LateMemCall
  loc_B9F72D: FFree1Var var_D8 = ""
  loc_B9F730: LitStr vbNullString
  loc_B9F733: LitI2_Byte 0
  loc_B9F735: LitI2_Byte 0
  loc_B9F737: LitI2_Byte 0
  loc_B9F739: LitStr "right"
  loc_B9F73C: FMemLdR4 var_178(8)
  loc_B9F741: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F746: CVarStr var_D8
  loc_B9F749: PopAdLdVar
  loc_B9F74A: FLdPr Me
  loc_B9F74D: MemLdRfVar from_stack_1.global_60
  loc_B9F750: LdPrVar
  loc_B9F752: LateMemCall
  loc_B9F758: FFree1Var var_D8 = ""
  loc_B9F75B: LitStr vbNullString
  loc_B9F75E: LitI2_Byte 0
  loc_B9F760: LitI2_Byte 0
  loc_B9F762: LitI2_Byte 0
  loc_B9F764: LitStr "right"
  loc_B9F767: FMemLdR4 var_178(12)
  loc_B9F76C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F771: CVarStr var_D8
  loc_B9F774: PopAdLdVar
  loc_B9F775: FLdPr Me
  loc_B9F778: MemLdRfVar from_stack_1.global_60
  loc_B9F77B: LdPrVar
  loc_B9F77D: LateMemCall
  loc_B9F783: FFree1Var var_D8 = ""
  loc_B9F786: LitStr vbNullString
  loc_B9F789: LitI2_Byte 0
  loc_B9F78B: LitI2_Byte 0
  loc_B9F78D: LitI2_Byte 0
  loc_B9F78F: LitStr "right"
  loc_B9F792: FMemLdR4 var_178(16)
  loc_B9F797: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F79C: CVarStr var_D8
  loc_B9F79F: PopAdLdVar
  loc_B9F7A0: FLdPr Me
  loc_B9F7A3: MemLdRfVar from_stack_1.global_60
  loc_B9F7A6: LdPrVar
  loc_B9F7A8: LateMemCall
  loc_B9F7AE: FFree1Var var_D8 = ""
  loc_B9F7B1: LitVarStr var_A0, "     </tr>"
  loc_B9F7B6: PopAdLdVar
  loc_B9F7B7: FLdPr Me
  loc_B9F7BA: MemLdRfVar from_stack_1.global_60
  loc_B9F7BD: LdPrVar
  loc_B9F7BF: LateMemCall
  loc_B9F7C5: LitI4 0
  loc_B9F7CA: FStR4 var_178
  loc_B9F7CD: LitI4 0
  loc_B9F7D2: FStR4 var_E4
  loc_B9F7D5: AryUnlock
  loc_B9F7D8: FLdPr Me
  loc_B9F7DB: MemLdRfVar from_stack_1.global_92
  loc_B9F7DE: NextUI1
  loc_B9F7E4: LitI4 0
  loc_B9F7E9: FStR4 var_B8
  loc_B9F7EC: AryUnlock
  loc_B9F7EF: FLdPr Me
  loc_B9F7F2: MemLdRfVar from_stack_1.global_88
  loc_B9F7F5: NextI4 var_90, loc_B9F3F2
  loc_B9F7FA: LitVarStr var_A0, "  <tr valign=""top"" class=""Totales"" align=""right"">"
  loc_B9F7FF: PopAdLdVar
  loc_B9F800: FLdPr Me
  loc_B9F803: MemLdRfVar from_stack_1.global_60
  loc_B9F806: LdPrVar
  loc_B9F808: LateMemCall
  loc_B9F80E: LitStr "    <td colspan=""8"">Total ("
  loc_B9F811: FLdPr Me
  loc_B9F814: MemLdStr global_84
  loc_B9F817: LitI2_Byte 1
  loc_B9F819: FnUBound
  loc_B9F81B: CStrI4
  loc_B9F81D: FStStrNoPop var_BC
  loc_B9F820: ConcatStr
  loc_B9F821: FStStrNoPop var_C0
  loc_B9F824: LitStr " cuentas)</td>"
  loc_B9F827: ConcatStr
  loc_B9F828: CVarStr var_D8
  loc_B9F82B: PopAdLdVar
  loc_B9F82C: FLdPr Me
  loc_B9F82F: MemLdRfVar from_stack_1.global_60
  loc_B9F832: LdPrVar
  loc_B9F834: LateMemCall
  loc_B9F83A: FFreeStr var_BC = ""
  loc_B9F841: FFree1Var var_D8 = ""
  loc_B9F844: LitI4 1
  loc_B9F849: FLdPr Me
  loc_B9F84C: MemLdStr global_96
  loc_B9F84F: AryLock
  loc_B9F852: Ary1LdRf
  loc_B9F853: FStR4 var_180
  loc_B9F856: LitStr vbNullString
  loc_B9F859: LitI2_Byte 0
  loc_B9F85B: LitI2_Byte 0
  loc_B9F85D: LitI2_Byte 0
  loc_B9F85F: LitStr "right"
  loc_B9F862: FMemLdR4 var_180(0)
  loc_B9F867: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F86C: CVarStr var_D8
  loc_B9F86F: PopAdLdVar
  loc_B9F870: FLdPr Me
  loc_B9F873: MemLdRfVar from_stack_1.global_60
  loc_B9F876: LdPrVar
  loc_B9F878: LateMemCall
  loc_B9F87E: FFree1Var var_D8 = ""
  loc_B9F881: LitStr vbNullString
  loc_B9F884: LitI2_Byte 0
  loc_B9F886: LitI2_Byte 0
  loc_B9F888: LitI2_Byte 0
  loc_B9F88A: LitStr "right"
  loc_B9F88D: FMemLdR4 var_180(4)
  loc_B9F892: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F897: CVarStr var_D8
  loc_B9F89A: PopAdLdVar
  loc_B9F89B: FLdPr Me
  loc_B9F89E: MemLdRfVar from_stack_1.global_60
  loc_B9F8A1: LdPrVar
  loc_B9F8A3: LateMemCall
  loc_B9F8A9: FFree1Var var_D8 = ""
  loc_B9F8AC: LitStr vbNullString
  loc_B9F8AF: LitI2_Byte 0
  loc_B9F8B1: LitI2_Byte 0
  loc_B9F8B3: LitI2_Byte 0
  loc_B9F8B5: LitStr "right"
  loc_B9F8B8: FMemLdR4 var_180(8)
  loc_B9F8BD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F8C2: CVarStr var_D8
  loc_B9F8C5: PopAdLdVar
  loc_B9F8C6: FLdPr Me
  loc_B9F8C9: MemLdRfVar from_stack_1.global_60
  loc_B9F8CC: LdPrVar
  loc_B9F8CE: LateMemCall
  loc_B9F8D4: FFree1Var var_D8 = ""
  loc_B9F8D7: LitStr vbNullString
  loc_B9F8DA: LitI2_Byte 0
  loc_B9F8DC: LitI2_Byte 0
  loc_B9F8DE: LitI2_Byte 0
  loc_B9F8E0: LitStr "right"
  loc_B9F8E3: FMemLdR4 var_180(12)
  loc_B9F8E8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F8ED: CVarStr var_D8
  loc_B9F8F0: PopAdLdVar
  loc_B9F8F1: FLdPr Me
  loc_B9F8F4: MemLdRfVar from_stack_1.global_60
  loc_B9F8F7: LdPrVar
  loc_B9F8F9: LateMemCall
  loc_B9F8FF: FFree1Var var_D8 = ""
  loc_B9F902: LitStr vbNullString
  loc_B9F905: LitI2_Byte 0
  loc_B9F907: LitI2_Byte 0
  loc_B9F909: LitI2_Byte 0
  loc_B9F90B: LitStr "right"
  loc_B9F90E: FMemLdR4 var_180(16)
  loc_B9F913: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9F918: CVarStr var_D8
  loc_B9F91B: PopAdLdVar
  loc_B9F91C: FLdPr Me
  loc_B9F91F: MemLdRfVar from_stack_1.global_60
  loc_B9F922: LdPrVar
  loc_B9F924: LateMemCall
  loc_B9F92A: FFree1Var var_D8 = ""
  loc_B9F92D: LitI4 0
  loc_B9F932: FStR4 var_180
  loc_B9F935: AryUnlock
  loc_B9F938: LitVarStr var_A0, "     </tr>"
  loc_B9F93D: PopAdLdVar
  loc_B9F93E: FLdPr Me
  loc_B9F941: MemLdRfVar from_stack_1.global_60
  loc_B9F944: LdPrVar
  loc_B9F946: LateMemCall
  loc_B9F94C: Call Proc_198_18_A0B798()
  loc_B9F951: FLdPr Me
  loc_B9F954: MemLdRfVar from_stack_1.global_60
  loc_B9F957: LdPrVar
  loc_B9F959: LateMemCall
  loc_B9F95F: LitStr vbNullString
  loc_B9F962: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B9F967: ExitProcHresult
End Sub

Private Function Proc_198_15_B1DFAC() 'B1DFAC
  'Data Table: 474E44
  loc_B1DD20: FLdPr Me
  loc_B1DD23: MemLdStr global_88
  loc_B1DD26: LitI4 1
  loc_B1DD2B: AddI4
  loc_B1DD2C: FLdPr Me
  loc_B1DD2F: MemStI4 global_88
  loc_B1DD32: LitI2_Byte 0
  loc_B1DD34: CUI1I2
  loc_B1DD36: FLdPr Me
  loc_B1DD39: MemStUI1
  loc_B1DD3D: LitI4 0
  loc_B1DD42: FLdPr Me
  loc_B1DD45: MemLdStr global_88
  loc_B1DD48: FLdPr Me
  loc_B1DD4B: MemLdRfVar from_stack_1.global_84
  loc_B1DD4E: RedimPreserve
  loc_B1DD58: FLdPr Me
  loc_B1DD5B: MemLdRfVar from_stack_1.global_80
  loc_B1DD5E: NewIfNullAd
  loc_B1DD61: FStAd var_88 
  loc_B1DD65: FLdRfVar var_A4
  loc_B1DD68: LitVarStr var_A0, "CodiCome"
  loc_B1DD6D: PopAdLdVar
  loc_B1DD6E: FLdRfVar var_90
  loc_B1DD71: FLdRfVar var_8C
  loc_B1DD74: FLdPr var_88
  loc_B1DD77: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B1DD7C: FLdPr var_8C
  loc_B1DD7F:  = Me.Fields
  loc_B1DD84: FLdPr var_90
  loc_B1DD87: from_stack_2 = Me.Item(from_stack_1)
  loc_B1DD8C: LitI2_Byte 0
  loc_B1DD8E: LitVar_Missing var_D8
  loc_B1DD91: LitI2_Byte 0
  loc_B1DD93: FLdZeroAd var_A4
  loc_B1DD96: CVarAd
  loc_B1DD9A: PopAdLdVar
  loc_B1DD9B: FLdPr Me
  loc_B1DD9E: MemLdStr global_88
  loc_B1DDA1: FLdPr Me
  loc_B1DDA4: MemLdStr global_84
  loc_B1DDA7: AryLock
  loc_B1DDAA: Ary1LdPr
  loc_B1DDAB: MemLdRfVar from_stack_1.global_0
  loc_B1DDAE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1DDB3: AryUnlock
  loc_B1DDB6: FFreeAd var_8C = ""
  loc_B1DDBD: FFreeVar var_B8 = ""
  loc_B1DDC4: FLdRfVar var_A4
  loc_B1DDC7: LitVarStr var_A0, "DetaPers"
  loc_B1DDCC: PopAdLdVar
  loc_B1DDCD: FLdRfVar var_90
  loc_B1DDD0: FLdRfVar var_8C
  loc_B1DDD3: FLdPr var_88
  loc_B1DDD6: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B1DDDB: FLdPr var_8C
  loc_B1DDDE:  = Me.Fields
  loc_B1DDE3: FLdPr var_90
  loc_B1DDE6: from_stack_2 = Me.Item(from_stack_1)
  loc_B1DDEB: LitI2_Byte 0
  loc_B1DDED: LitVar_Missing var_D8
  loc_B1DDF0: LitI2_Byte 0
  loc_B1DDF2: FLdZeroAd var_A4
  loc_B1DDF5: CVarAd
  loc_B1DDF9: PopAdLdVar
  loc_B1DDFA: FLdPr Me
  loc_B1DDFD: MemLdStr global_88
  loc_B1DE00: FLdPr Me
  loc_B1DE03: MemLdStr global_84
  loc_B1DE06: AryLock
  loc_B1DE09: Ary1LdPr
  loc_B1DE0A: MemLdRfVar from_stack_1.global_4
  loc_B1DE0D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1DE12: AryUnlock
  loc_B1DE15: FFreeAd var_8C = ""
  loc_B1DE1C: FFreeVar var_B8 = ""
  loc_B1DE23: FLdRfVar var_A4
  loc_B1DE26: LitVarStr var_A0, "RazoCome"
  loc_B1DE2B: PopAdLdVar
  loc_B1DE2C: FLdRfVar var_90
  loc_B1DE2F: FLdRfVar var_8C
  loc_B1DE32: FLdPr var_88
  loc_B1DE35: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B1DE3A: FLdPr var_8C
  loc_B1DE3D:  = Me.Fields
  loc_B1DE42: FLdPr var_90
  loc_B1DE45: from_stack_2 = Me.Item(from_stack_1)
  loc_B1DE4A: LitI2_Byte 0
  loc_B1DE4C: LitVar_Missing var_D8
  loc_B1DE4F: LitI2_Byte 0
  loc_B1DE51: FLdZeroAd var_A4
  loc_B1DE54: CVarAd
  loc_B1DE58: PopAdLdVar
  loc_B1DE59: FLdPr Me
  loc_B1DE5C: MemLdStr global_88
  loc_B1DE5F: FLdPr Me
  loc_B1DE62: MemLdStr global_84
  loc_B1DE65: AryLock
  loc_B1DE68: Ary1LdPr
  loc_B1DE69: MemLdRfVar from_stack_1.global_8
  loc_B1DE6C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1DE71: AryUnlock
  loc_B1DE74: FFreeAd var_8C = ""
  loc_B1DE7B: FFreeVar var_B8 = ""
  loc_B1DE82: FLdRfVar var_A4
  loc_B1DE85: LitVarStr var_A0, "DeudLico"
  loc_B1DE8A: PopAdLdVar
  loc_B1DE8B: FLdRfVar var_90
  loc_B1DE8E: FLdRfVar var_8C
  loc_B1DE91: FLdPr var_88
  loc_B1DE94: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B1DE99: FLdPr var_8C
  loc_B1DE9C:  = Me.Fields
  loc_B1DEA1: FLdPr var_90
  loc_B1DEA4: from_stack_2 = Me.Item(from_stack_1)
  loc_B1DEA9: LitI2_Byte 0
  loc_B1DEAB: LitVar_Missing var_D8
  loc_B1DEAE: LitI2_Byte &HFF
  loc_B1DEB0: FLdZeroAd var_A4
  loc_B1DEB3: CVarAd
  loc_B1DEB7: PopAdLdVar
  loc_B1DEB8: FLdPr Me
  loc_B1DEBB: MemLdStr global_88
  loc_B1DEBE: FLdPr Me
  loc_B1DEC1: MemLdStr global_84
  loc_B1DEC4: AryLock
  loc_B1DEC7: Ary1LdPr
  loc_B1DEC8: MemLdRfVar from_stack_1.global_12
  loc_B1DECB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1DED0: AryUnlock
  loc_B1DED3: FFreeAd var_8C = ""
  loc_B1DEDA: FFreeVar var_B8 = ""
  loc_B1DEE1: FLdRfVar var_A4
  loc_B1DEE4: LitVarStr var_A0, "TipoLico"
  loc_B1DEE9: PopAdLdVar
  loc_B1DEEA: FLdRfVar var_90
  loc_B1DEED: FLdRfVar var_8C
  loc_B1DEF0: FLdPr var_88
  loc_B1DEF3: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B1DEF8: FLdPr var_8C
  loc_B1DEFB:  = Me.Fields
  loc_B1DF00: FLdPr var_90
  loc_B1DF03: from_stack_2 = Me.Item(from_stack_1)
  loc_B1DF08: LitI2_Byte 0
  loc_B1DF0A: LitVar_Missing var_D8
  loc_B1DF0D: LitI2_Byte 0
  loc_B1DF0F: FLdZeroAd var_A4
  loc_B1DF12: CVarAd
  loc_B1DF16: PopAdLdVar
  loc_B1DF17: FLdPr Me
  loc_B1DF1A: MemLdStr global_88
  loc_B1DF1D: FLdPr Me
  loc_B1DF20: MemLdStr global_84
  loc_B1DF23: AryLock
  loc_B1DF26: Ary1LdPr
  loc_B1DF27: MemLdRfVar from_stack_1.global_16
  loc_B1DF2A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1DF2F: AryUnlock
  loc_B1DF32: FFreeAd var_8C = ""
  loc_B1DF39: FFreeVar var_B8 = ""
  loc_B1DF40: FLdRfVar var_A4
  loc_B1DF43: LitVarStr var_A0, "OrdeLico"
  loc_B1DF48: PopAdLdVar
  loc_B1DF49: FLdRfVar var_90
  loc_B1DF4C: FLdRfVar var_8C
  loc_B1DF4F: FLdPr var_88
  loc_B1DF52: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B1DF57: FLdPr var_8C
  loc_B1DF5A:  = Me.Fields
  loc_B1DF5F: FLdPr var_90
  loc_B1DF62: from_stack_2 = Me.Item(from_stack_1)
  loc_B1DF67: LitI2_Byte 0
  loc_B1DF69: LitVar_Missing var_D8
  loc_B1DF6C: LitI2_Byte 0
  loc_B1DF6E: FLdZeroAd var_A4
  loc_B1DF71: CVarAd
  loc_B1DF75: PopAdLdVar
  loc_B1DF76: FLdPr Me
  loc_B1DF79: MemLdStr global_88
  loc_B1DF7C: FLdPr Me
  loc_B1DF7F: MemLdStr global_84
  loc_B1DF82: AryLock
  loc_B1DF85: Ary1LdPr
  loc_B1DF86: MemLdRfVar from_stack_1.global_20
  loc_B1DF89: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1DF8E: AryUnlock
  loc_B1DF91: FFreeAd var_8C = ""
  loc_B1DF98: FFreeVar var_B8 = ""
  loc_B1DF9F: LitNothing
  loc_B1DFA1: FStAd var_88 
  loc_B1DFA5: Call Proc_198_16_B95220()
  loc_B1DFAA: ExitProcHresult
End Function

Private Function Proc_198_16_B95220() 'B95220
  'Data Table: 474E44
  loc_B94C9C: FLdPr Me
  loc_B94C9F: MemLdUI1 global_92
  loc_B94CA3: CI2UI1
  loc_B94CA5: LitI2_Byte 1
  loc_B94CA7: AddI2
  loc_B94CA8: CUI1I2
  loc_B94CAA: FLdPr Me
  loc_B94CAD: MemStUI1
  loc_B94CB1: LitI4 0
  loc_B94CB6: FLdPr Me
  loc_B94CB9: MemLdUI1 global_92
  loc_B94CBD: CI4UI1
  loc_B94CBE: FLdPr Me
  loc_B94CC1: MemLdStr global_88
  loc_B94CC4: FLdPr Me
  loc_B94CC7: MemLdStr global_84
  loc_B94CCA: Ary1LdPr
  loc_B94CCB: MemLdRfVar from_stack_1.global_24
  loc_B94CCE: RedimPreserve
  loc_B94CD8: FLdPr Me
  loc_B94CDB: MemLdRfVar from_stack_1.global_80
  loc_B94CDE: NewIfNullAd
  loc_B94CE1: FStAd var_88 
  loc_B94CE5: FLdRfVar var_A4
  loc_B94CE8: LitVarStr var_A0, "BimeLiqu"
  loc_B94CED: PopAdLdVar
  loc_B94CEE: FLdRfVar var_90
  loc_B94CF1: FLdRfVar var_8C
  loc_B94CF4: FLdPr var_88
  loc_B94CF7: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B94CFC: FLdPr var_8C
  loc_B94CFF:  = Me.Fields
  loc_B94D04: FLdPr var_90
  loc_B94D07: from_stack_2 = Me.Item(from_stack_1)
  loc_B94D0C: LitI2_Byte 0
  loc_B94D0E: LitVar_Missing var_DC
  loc_B94D11: LitI2_Byte 0
  loc_B94D13: FLdZeroAd var_A4
  loc_B94D16: CVarAd
  loc_B94D1A: PopAdLdVar
  loc_B94D1B: FLdPr Me
  loc_B94D1E: MemLdUI1 global_92
  loc_B94D22: CI4UI1
  loc_B94D23: FLdPr Me
  loc_B94D26: MemLdStr global_88
  loc_B94D29: FLdPr Me
  loc_B94D2C: MemLdStr global_84
  loc_B94D2F: AryLock
  loc_B94D32: Ary1LdPr
  loc_B94D33: MemLdStr global_24
  loc_B94D36: AryLock
  loc_B94D39: Ary1LdPr
  loc_B94D3A: MemLdRfVar from_stack_1.global_0
  loc_B94D3D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B94D42: AryUnlock
  loc_B94D45: AryUnlock
  loc_B94D48: FFreeAd var_8C = ""
  loc_B94D4F: FFreeVar var_BC = ""
  loc_B94D56: FLdRfVar var_A4
  loc_B94D59: LitVarStr var_A0, "CodiConc"
  loc_B94D5E: PopAdLdVar
  loc_B94D5F: FLdRfVar var_90
  loc_B94D62: FLdRfVar var_8C
  loc_B94D65: FLdPr var_88
  loc_B94D68: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B94D6D: FLdPr var_8C
  loc_B94D70:  = Me.Fields
  loc_B94D75: FLdPr var_90
  loc_B94D78: from_stack_2 = Me.Item(from_stack_1)
  loc_B94D7D: LitI2_Byte 0
  loc_B94D7F: LitVar_Missing var_DC
  loc_B94D82: LitI2_Byte 0
  loc_B94D84: FLdZeroAd var_A4
  loc_B94D87: CVarAd
  loc_B94D8B: PopAdLdVar
  loc_B94D8C: FLdPr Me
  loc_B94D8F: MemLdUI1 global_92
  loc_B94D93: CI4UI1
  loc_B94D94: FLdPr Me
  loc_B94D97: MemLdStr global_88
  loc_B94D9A: FLdPr Me
  loc_B94D9D: MemLdStr global_84
  loc_B94DA0: AryLock
  loc_B94DA3: Ary1LdPr
  loc_B94DA4: MemLdStr global_24
  loc_B94DA7: AryLock
  loc_B94DAA: Ary1LdPr
  loc_B94DAB: MemLdRfVar from_stack_1.global_4
  loc_B94DAE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B94DB3: AryUnlock
  loc_B94DB6: AryUnlock
  loc_B94DB9: FFreeAd var_8C = ""
  loc_B94DC0: FFreeVar var_BC = ""
  loc_B94DC7: FLdRfVar var_A4
  loc_B94DCA: LitVarStr var_A0, "DetaConc"
  loc_B94DCF: PopAdLdVar
  loc_B94DD0: FLdRfVar var_90
  loc_B94DD3: FLdRfVar var_8C
  loc_B94DD6: FLdPr var_88
  loc_B94DD9: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B94DDE: FLdPr var_8C
  loc_B94DE1:  = Me.Fields
  loc_B94DE6: FLdPr var_90
  loc_B94DE9: from_stack_2 = Me.Item(from_stack_1)
  loc_B94DEE: LitI2_Byte 0
  loc_B94DF0: LitVar_Missing var_DC
  loc_B94DF3: LitI2_Byte 0
  loc_B94DF5: FLdZeroAd var_A4
  loc_B94DF8: CVarAd
  loc_B94DFC: PopAdLdVar
  loc_B94DFD: FLdPr Me
  loc_B94E00: MemLdUI1 global_92
  loc_B94E04: CI4UI1
  loc_B94E05: FLdPr Me
  loc_B94E08: MemLdStr global_88
  loc_B94E0B: FLdPr Me
  loc_B94E0E: MemLdStr global_84
  loc_B94E11: AryLock
  loc_B94E14: Ary1LdPr
  loc_B94E15: MemLdStr global_24
  loc_B94E18: AryLock
  loc_B94E1B: Ary1LdPr
  loc_B94E1C: MemLdRfVar from_stack_1.global_8
  loc_B94E1F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B94E24: AryUnlock
  loc_B94E27: AryUnlock
  loc_B94E2A: FFreeAd var_8C = ""
  loc_B94E31: FFreeVar var_BC = ""
  loc_B94E38: FLdRfVar var_A4
  loc_B94E3B: LitVarStr var_A0, "TipoVenc"
  loc_B94E40: PopAdLdVar
  loc_B94E41: FLdRfVar var_90
  loc_B94E44: FLdRfVar var_8C
  loc_B94E47: FLdPr var_88
  loc_B94E4A: from_stack_1v = clsliqucome.RsFrmGet()
  loc_B94E4F: FLdPr var_8C
  loc_B94E52:  = Me.Fields
  loc_B94E57: FLdPr var_90
  loc_B94E5A: from_stack_2 = Me.Item(from_stack_1)
  loc_B94E5F: LitI2_Byte 0
  loc_B94E61: LitVar_Missing var_DC
  loc_B94E64: LitI2_Byte 0
  loc_B94E66: FLdZeroAd var_A4
  loc_B94E69: CVarAd
  loc_B94E6D: PopAdLdVar
  loc_B94E6E: FLdPr Me
  loc_B94E71: MemLdUI1 global_92
  loc_B94E75: CI4UI1
  loc_B94E76: FLdPr Me
  loc_B94E79: MemLdStr global_88
  loc_B94E7C: FLdPr Me
  loc_B94E7F: MemLdStr global_84
  loc_B94E82: AryLock
  loc_B94E85: Ary1LdPr
  loc_B94E86: MemLdStr global_24
  loc_B94E89: AryLock
  loc_B94E8C: Ary1LdPr
  loc_B94E8D: MemLdRfVar from_stack_1.global_12
  loc_B94E90: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B94E95: AryUnlock
  loc_B94E98: AryUnlock
  loc_B94E9B: FFreeAd var_8C = ""
  loc_B94EA2: FFreeVar var_BC = ""
  loc_B94EA9: FLdRfVar var_DE
  loc_B94EAC: FLdPr var_88
  loc_B94EAF: from_stack_1 = clsliqucome.TipoVenc
  loc_B94EB4: FLdUI1
  loc_B94EB8: CI2UI1
  loc_B94EBA: LitI2_Byte 1
  loc_B94EBC: EqI2
  loc_B94EBD: BranchF loc_B95099
  loc_B94EC0: FLdRfVar var_E8
  loc_B94EC3: FLdPr var_88
  loc_B94EC6: from_stack_1 = clsliqucome.ImpoLico
  loc_B94ECB: LitI2_Byte 0
  loc_B94ECD: LitI4 1
  loc_B94ED2: FLdPr Me
  loc_B94ED5: MemLdStr global_96
  loc_B94ED8: AryLock
  loc_B94EDB: Ary1LdPr
  loc_B94EDC: MemLdRfVar from_stack_1.global_0
  loc_B94EDF: CVarRef
  loc_B94EE4: LitI2_Byte &HFF
  loc_B94EE6: FLdFPR8 var_E8
  loc_B94EE9: CVarR8
  loc_B94EED: PopAdLdVar
  loc_B94EEE: FLdPr Me
  loc_B94EF1: MemLdUI1 global_92
  loc_B94EF5: CI4UI1
  loc_B94EF6: FLdPr Me
  loc_B94EF9: MemLdStr global_88
  loc_B94EFC: FLdPr Me
  loc_B94EFF: MemLdStr global_84
  loc_B94F02: AryLock
  loc_B94F05: Ary1LdPr
  loc_B94F06: MemLdStr global_24
  loc_B94F09: AryLock
  loc_B94F0C: Ary1LdPr
  loc_B94F0D: MemLdRfVar from_stack_1.global_16
  loc_B94F10: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B94F15: AryUnlock
  loc_B94F18: AryUnlock
  loc_B94F1B: AryUnlock
  loc_B94F1E: FLdRfVar var_E8
  loc_B94F21: FLdPr var_88
  loc_B94F24: from_stack_1 = clsliqucome.ExenLico
  loc_B94F29: LitI2_Byte 0
  loc_B94F2B: LitI4 1
  loc_B94F30: FLdPr Me
  loc_B94F33: MemLdStr global_96
  loc_B94F36: AryLock
  loc_B94F39: Ary1LdPr
  loc_B94F3A: MemLdRfVar from_stack_1.global_4
  loc_B94F3D: CVarRef
  loc_B94F42: LitI2_Byte &HFF
  loc_B94F44: FLdFPR8 var_E8
  loc_B94F47: CVarR8
  loc_B94F4B: PopAdLdVar
  loc_B94F4C: FLdPr Me
  loc_B94F4F: MemLdUI1 global_92
  loc_B94F53: CI4UI1
  loc_B94F54: FLdPr Me
  loc_B94F57: MemLdStr global_88
  loc_B94F5A: FLdPr Me
  loc_B94F5D: MemLdStr global_84
  loc_B94F60: AryLock
  loc_B94F63: Ary1LdPr
  loc_B94F64: MemLdStr global_24
  loc_B94F67: AryLock
  loc_B94F6A: Ary1LdPr
  loc_B94F6B: MemLdRfVar from_stack_1.global_20
  loc_B94F6E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B94F73: AryUnlock
  loc_B94F76: AryUnlock
  loc_B94F79: AryUnlock
  loc_B94F7C: FLdRfVar var_E8
  loc_B94F7F: FLdPr var_88
  loc_B94F82: from_stack_1 = clsliqucome.DescLico
  loc_B94F87: LitI2_Byte 0
  loc_B94F89: LitI4 1
  loc_B94F8E: FLdPr Me
  loc_B94F91: MemLdStr global_96
  loc_B94F94: AryLock
  loc_B94F97: Ary1LdPr
  loc_B94F98: MemLdRfVar from_stack_1.global_8
  loc_B94F9B: CVarRef
  loc_B94FA0: LitI2_Byte &HFF
  loc_B94FA2: FLdFPR8 var_E8
  loc_B94FA5: CVarR8
  loc_B94FA9: PopAdLdVar
  loc_B94FAA: FLdPr Me
  loc_B94FAD: MemLdUI1 global_92
  loc_B94FB1: CI4UI1
  loc_B94FB2: FLdPr Me
  loc_B94FB5: MemLdStr global_88
  loc_B94FB8: FLdPr Me
  loc_B94FBB: MemLdStr global_84
  loc_B94FBE: AryLock
  loc_B94FC1: Ary1LdPr
  loc_B94FC2: MemLdStr global_24
  loc_B94FC5: AryLock
  loc_B94FC8: Ary1LdPr
  loc_B94FC9: MemLdRfVar from_stack_1.global_24
  loc_B94FCC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B94FD1: AryUnlock
  loc_B94FD4: AryUnlock
  loc_B94FD7: AryUnlock
  loc_B94FDA: FLdRfVar var_E8
  loc_B94FDD: FLdPr var_88
  loc_B94FE0: from_stack_1 = clsliqucome.CrafLico
  loc_B94FE5: LitI2_Byte 0
  loc_B94FE7: LitI4 1
  loc_B94FEC: FLdPr Me
  loc_B94FEF: MemLdStr global_96
  loc_B94FF2: AryLock
  loc_B94FF5: Ary1LdPr
  loc_B94FF6: MemLdRfVar from_stack_1.global_12
  loc_B94FF9: CVarRef
  loc_B94FFE: LitI2_Byte &HFF
  loc_B95000: FLdFPR8 var_E8
  loc_B95003: CVarR8
  loc_B95007: PopAdLdVar
  loc_B95008: FLdPr Me
  loc_B9500B: MemLdUI1 global_92
  loc_B9500F: CI4UI1
  loc_B95010: FLdPr Me
  loc_B95013: MemLdStr global_88
  loc_B95016: FLdPr Me
  loc_B95019: MemLdStr global_84
  loc_B9501C: AryLock
  loc_B9501F: Ary1LdPr
  loc_B95020: MemLdStr global_24
  loc_B95023: AryLock
  loc_B95026: Ary1LdPr
  loc_B95027: MemLdRfVar from_stack_1.global_28
  loc_B9502A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B9502F: AryUnlock
  loc_B95032: AryUnlock
  loc_B95035: AryUnlock
  loc_B95038: FLdRfVar var_E8
  loc_B9503B: FLdPr var_88
  loc_B9503E: from_stack_1 = clsliqucome.TotaLico
  loc_B95043: LitI2_Byte 0
  loc_B95045: LitI4 1
  loc_B9504A: FLdPr Me
  loc_B9504D: MemLdStr global_96
  loc_B95050: AryLock
  loc_B95053: Ary1LdPr
  loc_B95054: MemLdRfVar from_stack_1.global_16
  loc_B95057: CVarRef
  loc_B9505C: LitI2_Byte &HFF
  loc_B9505E: FLdFPR8 var_E8
  loc_B95061: CVarR8
  loc_B95065: PopAdLdVar
  loc_B95066: FLdPr Me
  loc_B95069: MemLdUI1 global_92
  loc_B9506D: CI4UI1
  loc_B9506E: FLdPr Me
  loc_B95071: MemLdStr global_88
  loc_B95074: FLdPr Me
  loc_B95077: MemLdStr global_84
  loc_B9507A: AryLock
  loc_B9507D: Ary1LdPr
  loc_B9507E: MemLdStr global_24
  loc_B95081: AryLock
  loc_B95084: Ary1LdPr
  loc_B95085: MemLdRfVar from_stack_1.global_32
  loc_B95088: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B9508D: AryUnlock
  loc_B95090: AryUnlock
  loc_B95093: AryUnlock
  loc_B95096: Branch loc_B9520B
  loc_B95099: FLdRfVar var_E8
  loc_B9509C: FLdPr var_88
  loc_B9509F: from_stack_1 = clsliqucome.ImpoLico
  loc_B950A4: LitI2_Byte 0
  loc_B950A6: LitVar_Missing var_BC
  loc_B950A9: LitI2_Byte &HFF
  loc_B950AB: FLdFPR8 var_E8
  loc_B950AE: CVarR8
  loc_B950B2: PopAdLdVar
  loc_B950B3: FLdPr Me
  loc_B950B6: MemLdUI1 global_92
  loc_B950BA: CI4UI1
  loc_B950BB: FLdPr Me
  loc_B950BE: MemLdStr global_88
  loc_B950C1: FLdPr Me
  loc_B950C4: MemLdStr global_84
  loc_B950C7: AryLock
  loc_B950CA: Ary1LdPr
  loc_B950CB: MemLdStr global_24
  loc_B950CE: AryLock
  loc_B950D1: Ary1LdPr
  loc_B950D2: MemLdRfVar from_stack_1.global_16
  loc_B950D5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B950DA: AryUnlock
  loc_B950DD: AryUnlock
  loc_B950E0: FFree1Var var_BC = ""
  loc_B950E3: FLdRfVar var_E8
  loc_B950E6: FLdPr var_88
  loc_B950E9: from_stack_1 = clsliqucome.ExenLico
  loc_B950EE: LitI2_Byte 0
  loc_B950F0: LitVar_Missing var_BC
  loc_B950F3: LitI2_Byte &HFF
  loc_B950F5: FLdFPR8 var_E8
  loc_B950F8: CVarR8
  loc_B950FC: PopAdLdVar
  loc_B950FD: FLdPr Me
  loc_B95100: MemLdUI1 global_92
  loc_B95104: CI4UI1
  loc_B95105: FLdPr Me
  loc_B95108: MemLdStr global_88
  loc_B9510B: FLdPr Me
  loc_B9510E: MemLdStr global_84
  loc_B95111: AryLock
  loc_B95114: Ary1LdPr
  loc_B95115: MemLdStr global_24
  loc_B95118: AryLock
  loc_B9511B: Ary1LdPr
  loc_B9511C: MemLdRfVar from_stack_1.global_20
  loc_B9511F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B95124: AryUnlock
  loc_B95127: AryUnlock
  loc_B9512A: FFree1Var var_BC = ""
  loc_B9512D: FLdRfVar var_E8
  loc_B95130: FLdPr var_88
  loc_B95133: from_stack_1 = clsliqucome.DescLico
  loc_B95138: LitI2_Byte 0
  loc_B9513A: LitVar_Missing var_BC
  loc_B9513D: LitI2_Byte &HFF
  loc_B9513F: FLdFPR8 var_E8
  loc_B95142: CVarR8
  loc_B95146: PopAdLdVar
  loc_B95147: FLdPr Me
  loc_B9514A: MemLdUI1 global_92
  loc_B9514E: CI4UI1
  loc_B9514F: FLdPr Me
  loc_B95152: MemLdStr global_88
  loc_B95155: FLdPr Me
  loc_B95158: MemLdStr global_84
  loc_B9515B: AryLock
  loc_B9515E: Ary1LdPr
  loc_B9515F: MemLdStr global_24
  loc_B95162: AryLock
  loc_B95165: Ary1LdPr
  loc_B95166: MemLdRfVar from_stack_1.global_24
  loc_B95169: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B9516E: AryUnlock
  loc_B95171: AryUnlock
  loc_B95174: FFree1Var var_BC = ""
  loc_B95177: FLdRfVar var_E8
  loc_B9517A: FLdPr var_88
  loc_B9517D: from_stack_1 = clsliqucome.CrafLico
  loc_B95182: LitI2_Byte 0
  loc_B95184: LitVar_Missing var_BC
  loc_B95187: LitI2_Byte &HFF
  loc_B95189: FLdFPR8 var_E8
  loc_B9518C: CVarR8
  loc_B95190: PopAdLdVar
  loc_B95191: FLdPr Me
  loc_B95194: MemLdUI1 global_92
  loc_B95198: CI4UI1
  loc_B95199: FLdPr Me
  loc_B9519C: MemLdStr global_88
  loc_B9519F: FLdPr Me
  loc_B951A2: MemLdStr global_84
  loc_B951A5: AryLock
  loc_B951A8: Ary1LdPr
  loc_B951A9: MemLdStr global_24
  loc_B951AC: AryLock
  loc_B951AF: Ary1LdPr
  loc_B951B0: MemLdRfVar from_stack_1.global_28
  loc_B951B3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B951B8: AryUnlock
  loc_B951BB: AryUnlock
  loc_B951BE: FFree1Var var_BC = ""
  loc_B951C1: FLdRfVar var_E8
  loc_B951C4: FLdPr var_88
  loc_B951C7: from_stack_1 = clsliqucome.TotaLico
  loc_B951CC: LitI2_Byte 0
  loc_B951CE: LitVar_Missing var_BC
  loc_B951D1: LitI2_Byte &HFF
  loc_B951D3: FLdFPR8 var_E8
  loc_B951D6: CVarR8
  loc_B951DA: PopAdLdVar
  loc_B951DB: FLdPr Me
  loc_B951DE: MemLdUI1 global_92
  loc_B951E2: CI4UI1
  loc_B951E3: FLdPr Me
  loc_B951E6: MemLdStr global_88
  loc_B951E9: FLdPr Me
  loc_B951EC: MemLdStr global_84
  loc_B951EF: AryLock
  loc_B951F2: Ary1LdPr
  loc_B951F3: MemLdStr global_24
  loc_B951F6: AryLock
  loc_B951F9: Ary1LdPr
  loc_B951FA: MemLdRfVar from_stack_1.global_32
  loc_B951FD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B95202: AryUnlock
  loc_B95205: AryUnlock
  loc_B95208: FFree1Var var_BC = ""
  loc_B9520B: LitI2_Byte 1
  loc_B9520D: PopTmpLdAd2 var_DE
  loc_B95210: FLdPr var_88
  loc_B95213: Call clsliqucome.Move(from_stack_1v)
  loc_B95218: LitNothing
  loc_B9521A: FStAd var_88 
  loc_B9521E: ExitProcHresult
  loc_B9521F: SetLastSystemError
End Function

Private Function Proc_198_17_C060A4() 'C060A4
  'Data Table: 474E44
  loc_C05774: LitVarStr var_98, "<html>"
  loc_C05779: PopAdLdVar
  loc_C0577A: FLdPr Me
  loc_C0577D: MemLdRfVar from_stack_1.global_60
  loc_C05780: LdPrVar
  loc_C05782: LateMemCall
  loc_C05788: LitVarStr var_98, "<head>"
  loc_C0578D: PopAdLdVar
  loc_C0578E: FLdPr Me
  loc_C05791: MemLdRfVar from_stack_1.global_60
  loc_C05794: LdPrVar
  loc_C05796: LateMemCall
  loc_C0579C: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C057A1: PopAdLdVar
  loc_C057A2: FLdPr Me
  loc_C057A5: MemLdRfVar from_stack_1.global_60
  loc_C057A8: LdPrVar
  loc_C057AA: LateMemCall
  loc_C057B0: LitStr "<title>"
  loc_C057B3: FLdRfVar var_AC
  loc_C057B6: FLdPr Me
  loc_C057B9:  = Me.Caption
  loc_C057BE: ILdRf var_AC
  loc_C057C1: ConcatStr
  loc_C057C2: FStStrNoPop var_B0
  loc_C057C5: LitStr "</title>"
  loc_C057C8: ConcatStr
  loc_C057C9: CVarStr var_C0
  loc_C057CC: PopAdLdVar
  loc_C057CD: FLdPr Me
  loc_C057D0: MemLdRfVar from_stack_1.global_60
  loc_C057D3: LdPrVar
  loc_C057D5: LateMemCall
  loc_C057DB: FFreeStr var_AC = ""
  loc_C057E2: FFree1Var var_C0 = ""
  loc_C057E5: LitVarStr var_98, "<style type=""text/css"">"
  loc_C057EA: PopAdLdVar
  loc_C057EB: FLdPr Me
  loc_C057EE: MemLdRfVar from_stack_1.global_60
  loc_C057F1: LdPrVar
  loc_C057F3: LateMemCall
  loc_C057F9: LitVarStr var_98, ".Titulo1 {"
  loc_C057FE: PopAdLdVar
  loc_C057FF: FLdPr Me
  loc_C05802: MemLdRfVar from_stack_1.global_60
  loc_C05805: LdPrVar
  loc_C05807: LateMemCall
  loc_C0580D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C05812: PopAdLdVar
  loc_C05813: FLdPr Me
  loc_C05816: MemLdRfVar from_stack_1.global_60
  loc_C05819: LdPrVar
  loc_C0581B: LateMemCall
  loc_C05821: LitVarStr var_98, " font-size: 18px;"
  loc_C05826: PopAdLdVar
  loc_C05827: FLdPr Me
  loc_C0582A: MemLdRfVar from_stack_1.global_60
  loc_C0582D: LdPrVar
  loc_C0582F: LateMemCall
  loc_C05835: LitVarStr var_98, " font-weight: bold;"
  loc_C0583A: PopAdLdVar
  loc_C0583B: FLdPr Me
  loc_C0583E: MemLdRfVar from_stack_1.global_60
  loc_C05841: LdPrVar
  loc_C05843: LateMemCall
  loc_C05849: LitVarStr var_98, "}"
  loc_C0584E: PopAdLdVar
  loc_C0584F: FLdPr Me
  loc_C05852: MemLdRfVar from_stack_1.global_60
  loc_C05855: LdPrVar
  loc_C05857: LateMemCall
  loc_C0585D: LitVarStr var_98, ".Titulo2 {"
  loc_C05862: PopAdLdVar
  loc_C05863: FLdPr Me
  loc_C05866: MemLdRfVar from_stack_1.global_60
  loc_C05869: LdPrVar
  loc_C0586B: LateMemCall
  loc_C05871: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C05876: PopAdLdVar
  loc_C05877: FLdPr Me
  loc_C0587A: MemLdRfVar from_stack_1.global_60
  loc_C0587D: LdPrVar
  loc_C0587F: LateMemCall
  loc_C05885: LitVarStr var_98, " font-size: 14px;"
  loc_C0588A: PopAdLdVar
  loc_C0588B: FLdPr Me
  loc_C0588E: MemLdRfVar from_stack_1.global_60
  loc_C05891: LdPrVar
  loc_C05893: LateMemCall
  loc_C05899: LitVarStr var_98, " font-weight: bold;"
  loc_C0589E: PopAdLdVar
  loc_C0589F: FLdPr Me
  loc_C058A2: MemLdRfVar from_stack_1.global_60
  loc_C058A5: LdPrVar
  loc_C058A7: LateMemCall
  loc_C058AD: LitVarStr var_98, "}"
  loc_C058B2: PopAdLdVar
  loc_C058B3: FLdPr Me
  loc_C058B6: MemLdRfVar from_stack_1.global_60
  loc_C058B9: LdPrVar
  loc_C058BB: LateMemCall
  loc_C058C1: LitVarStr var_98, ".Normal {"
  loc_C058C6: PopAdLdVar
  loc_C058C7: FLdPr Me
  loc_C058CA: MemLdRfVar from_stack_1.global_60
  loc_C058CD: LdPrVar
  loc_C058CF: LateMemCall
  loc_C058D5: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C058DA: PopAdLdVar
  loc_C058DB: FLdPr Me
  loc_C058DE: MemLdRfVar from_stack_1.global_60
  loc_C058E1: LdPrVar
  loc_C058E3: LateMemCall
  loc_C058E9: LitVarStr var_98, " font-size: 12px;"
  loc_C058EE: PopAdLdVar
  loc_C058EF: FLdPr Me
  loc_C058F2: MemLdRfVar from_stack_1.global_60
  loc_C058F5: LdPrVar
  loc_C058F7: LateMemCall
  loc_C058FD: LitVarStr var_98, " font-style: normal;"
  loc_C05902: PopAdLdVar
  loc_C05903: FLdPr Me
  loc_C05906: MemLdRfVar from_stack_1.global_60
  loc_C05909: LdPrVar
  loc_C0590B: LateMemCall
  loc_C05911: LitVarStr var_98, " font-weight: normal;"
  loc_C05916: PopAdLdVar
  loc_C05917: FLdPr Me
  loc_C0591A: MemLdRfVar from_stack_1.global_60
  loc_C0591D: LdPrVar
  loc_C0591F: LateMemCall
  loc_C05925: LitVarStr var_98, " font-variant: normal;"
  loc_C0592A: PopAdLdVar
  loc_C0592B: FLdPr Me
  loc_C0592E: MemLdRfVar from_stack_1.global_60
  loc_C05931: LdPrVar
  loc_C05933: LateMemCall
  loc_C05939: LitVarStr var_98, "}"
  loc_C0593E: PopAdLdVar
  loc_C0593F: FLdPr Me
  loc_C05942: MemLdRfVar from_stack_1.global_60
  loc_C05945: LdPrVar
  loc_C05947: LateMemCall
  loc_C0594D: LitVarStr var_98, ".Encabezado {"
  loc_C05952: PopAdLdVar
  loc_C05953: FLdPr Me
  loc_C05956: MemLdRfVar from_stack_1.global_60
  loc_C05959: LdPrVar
  loc_C0595B: LateMemCall
  loc_C05961: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_C05966: PopAdLdVar
  loc_C05967: FLdPr Me
  loc_C0596A: MemLdRfVar from_stack_1.global_60
  loc_C0596D: LdPrVar
  loc_C0596F: LateMemCall
  loc_C05975: LitVarStr var_98, " font-size: 11px;"
  loc_C0597A: PopAdLdVar
  loc_C0597B: FLdPr Me
  loc_C0597E: MemLdRfVar from_stack_1.global_60
  loc_C05981: LdPrVar
  loc_C05983: LateMemCall
  loc_C05989: LitVarStr var_98, " font-weight: bold;"
  loc_C0598E: PopAdLdVar
  loc_C0598F: FLdPr Me
  loc_C05992: MemLdRfVar from_stack_1.global_60
  loc_C05995: LdPrVar
  loc_C05997: LateMemCall
  loc_C0599D: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_C059A2: PopAdLdVar
  loc_C059A3: FLdPr Me
  loc_C059A6: MemLdRfVar from_stack_1.global_60
  loc_C059A9: LdPrVar
  loc_C059AB: LateMemCall
  loc_C059B1: LitVarStr var_98, "}"
  loc_C059B6: PopAdLdVar
  loc_C059B7: FLdPr Me
  loc_C059BA: MemLdRfVar from_stack_1.global_60
  loc_C059BD: LdPrVar
  loc_C059BF: LateMemCall
  loc_C059C5: LitVarStr var_98, ".LineaDato {"
  loc_C059CA: PopAdLdVar
  loc_C059CB: FLdPr Me
  loc_C059CE: MemLdRfVar from_stack_1.global_60
  loc_C059D1: LdPrVar
  loc_C059D3: LateMemCall
  loc_C059D9: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C059DE: PopAdLdVar
  loc_C059DF: FLdPr Me
  loc_C059E2: MemLdRfVar from_stack_1.global_60
  loc_C059E5: LdPrVar
  loc_C059E7: LateMemCall
  loc_C059ED: LitVarStr var_98, " font-size: 10px;"
  loc_C059F2: PopAdLdVar
  loc_C059F3: FLdPr Me
  loc_C059F6: MemLdRfVar from_stack_1.global_60
  loc_C059F9: LdPrVar
  loc_C059FB: LateMemCall
  loc_C05A01: LitVarStr var_98, "}"
  loc_C05A06: PopAdLdVar
  loc_C05A07: FLdPr Me
  loc_C05A0A: MemLdRfVar from_stack_1.global_60
  loc_C05A0D: LdPrVar
  loc_C05A0F: LateMemCall
  loc_C05A15: LitVarStr var_98, ".Totales {"
  loc_C05A1A: PopAdLdVar
  loc_C05A1B: FLdPr Me
  loc_C05A1E: MemLdRfVar from_stack_1.global_60
  loc_C05A21: LdPrVar
  loc_C05A23: LateMemCall
  loc_C05A29: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C05A2E: PopAdLdVar
  loc_C05A2F: FLdPr Me
  loc_C05A32: MemLdRfVar from_stack_1.global_60
  loc_C05A35: LdPrVar
  loc_C05A37: LateMemCall
  loc_C05A3D: LitVarStr var_98, " font-size: 12px;"
  loc_C05A42: PopAdLdVar
  loc_C05A43: FLdPr Me
  loc_C05A46: MemLdRfVar from_stack_1.global_60
  loc_C05A49: LdPrVar
  loc_C05A4B: LateMemCall
  loc_C05A51: LitVarStr var_98, " font-weight: bold;"
  loc_C05A56: PopAdLdVar
  loc_C05A57: FLdPr Me
  loc_C05A5A: MemLdRfVar from_stack_1.global_60
  loc_C05A5D: LdPrVar
  loc_C05A5F: LateMemCall
  loc_C05A65: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C05A6A: PopAdLdVar
  loc_C05A6B: FLdPr Me
  loc_C05A6E: MemLdRfVar from_stack_1.global_60
  loc_C05A71: LdPrVar
  loc_C05A73: LateMemCall
  loc_C05A79: LitVarStr var_98, "}"
  loc_C05A7E: PopAdLdVar
  loc_C05A7F: FLdPr Me
  loc_C05A82: MemLdRfVar from_stack_1.global_60
  loc_C05A85: LdPrVar
  loc_C05A87: LateMemCall
  loc_C05A8D: LitVarStr var_98, ".SubTotales {"
  loc_C05A92: PopAdLdVar
  loc_C05A93: FLdPr Me
  loc_C05A96: MemLdRfVar from_stack_1.global_60
  loc_C05A99: LdPrVar
  loc_C05A9B: LateMemCall
  loc_C05AA1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C05AA6: PopAdLdVar
  loc_C05AA7: FLdPr Me
  loc_C05AAA: MemLdRfVar from_stack_1.global_60
  loc_C05AAD: LdPrVar
  loc_C05AAF: LateMemCall
  loc_C05AB5: LitVarStr var_98, " font-size: 10px;"
  loc_C05ABA: PopAdLdVar
  loc_C05ABB: FLdPr Me
  loc_C05ABE: MemLdRfVar from_stack_1.global_60
  loc_C05AC1: LdPrVar
  loc_C05AC3: LateMemCall
  loc_C05AC9: LitVarStr var_98, " font-weight: bold;"
  loc_C05ACE: PopAdLdVar
  loc_C05ACF: FLdPr Me
  loc_C05AD2: MemLdRfVar from_stack_1.global_60
  loc_C05AD5: LdPrVar
  loc_C05AD7: LateMemCall
  loc_C05ADD: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C05AE2: PopAdLdVar
  loc_C05AE3: FLdPr Me
  loc_C05AE6: MemLdRfVar from_stack_1.global_60
  loc_C05AE9: LdPrVar
  loc_C05AEB: LateMemCall
  loc_C05AF1: LitVarStr var_98, "}"
  loc_C05AF6: PopAdLdVar
  loc_C05AF7: FLdPr Me
  loc_C05AFA: MemLdRfVar from_stack_1.global_60
  loc_C05AFD: LdPrVar
  loc_C05AFF: LateMemCall
  loc_C05B05: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_C05B0A: PopAdLdVar
  loc_C05B0B: FLdPr Me
  loc_C05B0E: MemLdRfVar from_stack_1.global_60
  loc_C05B11: LdPrVar
  loc_C05B13: LateMemCall
  loc_C05B19: LitVarStr var_98, "</style>"
  loc_C05B1E: PopAdLdVar
  loc_C05B1F: FLdPr Me
  loc_C05B22: MemLdRfVar from_stack_1.global_60
  loc_C05B25: LdPrVar
  loc_C05B27: LateMemCall
  loc_C05B2D: LitI4 0
  loc_C05B32: FStStrCopy var_B0
  loc_C05B35: FLdRfVar var_B0
  loc_C05B38: LitI4 0
  loc_C05B3D: FStStrCopy var_AC
  loc_C05B40: FLdRfVar var_AC
  loc_C05B43: LitI2_Byte &HFF
  loc_C05B45: PopTmpLdAd2 var_C2
  loc_C05B48: FLdPr Me
  loc_C05B4B: MemLdRfVar from_stack_1.global_60
  loc_C05B4E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C05B53: FFreeStr var_AC = ""
  loc_C05B5A: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C05B5F: PopAdLdVar
  loc_C05B60: FLdPr Me
  loc_C05B63: MemLdRfVar from_stack_1.global_60
  loc_C05B66: LdPrVar
  loc_C05B68: LateMemCall
  loc_C05B6E: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_C05B73: PopAdLdVar
  loc_C05B74: FLdPr Me
  loc_C05B77: MemLdRfVar from_stack_1.global_60
  loc_C05B7A: LdPrVar
  loc_C05B7C: LateMemCall
  loc_C05B82: LitStr "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C05B85: LitI2_Byte &H5F
  loc_C05B87: CStrUI1
  loc_C05B89: FStStrNoPop var_AC
  loc_C05B8C: ConcatStr
  loc_C05B8D: FStStrNoPop var_B0
  loc_C05B90: LitStr """ height="""
  loc_C05B93: ConcatStr
  loc_C05B94: FStStrNoPop var_C8
  loc_C05B97: LitI2_Byte &H3C
  loc_C05B99: CStrUI1
  loc_C05B9B: FStStrNoPop var_CC
  loc_C05B9E: ConcatStr
  loc_C05B9F: FStStrNoPop var_D0
  loc_C05BA2: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C05BA5: ConcatStr
  loc_C05BA6: FStStrNoPop var_D4
  loc_C05BA9: LitStr "Municipalidad de Guaymallén"
  loc_C05BAC: ConcatStr
  loc_C05BAD: FStStrNoPop var_D8
  loc_C05BB0: LitStr "</p>"
  loc_C05BB3: ConcatStr
  loc_C05BB4: CVarStr var_C0
  loc_C05BB7: PopAdLdVar
  loc_C05BB8: FLdPr Me
  loc_C05BBB: MemLdRfVar from_stack_1.global_60
  loc_C05BBE: LdPrVar
  loc_C05BC0: LateMemCall
  loc_C05BC6: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_C05BD7: FFree1Var var_C0 = ""
  loc_C05BDA: LitStr "    <p>"
  loc_C05BDD: FLdRfVar var_AC
  loc_C05BE0: FLdPr Me
  loc_C05BE3:  = Me.Caption
  loc_C05BE8: ILdRf var_AC
  loc_C05BEB: ConcatStr
  loc_C05BEC: FStStrNoPop var_B0
  loc_C05BEF: LitStr "</p></th>"
  loc_C05BF2: ConcatStr
  loc_C05BF3: CVarStr var_C0
  loc_C05BF6: PopAdLdVar
  loc_C05BF7: FLdPr Me
  loc_C05BFA: MemLdRfVar from_stack_1.global_60
  loc_C05BFD: LdPrVar
  loc_C05BFF: LateMemCall
  loc_C05C05: FFreeStr var_AC = ""
  loc_C05C0C: FFree1Var var_C0 = ""
  loc_C05C0F: LitVarStr var_98, "  </tr>"
  loc_C05C14: PopAdLdVar
  loc_C05C15: FLdPr Me
  loc_C05C18: MemLdRfVar from_stack_1.global_60
  loc_C05C1B: LdPrVar
  loc_C05C1D: LateMemCall
  loc_C05C23: LitVarStr var_98, "  <tr>"
  loc_C05C28: PopAdLdVar
  loc_C05C29: FLdPr Me
  loc_C05C2C: MemLdRfVar from_stack_1.global_60
  loc_C05C2F: LdPrVar
  loc_C05C31: LateMemCall
  loc_C05C37: LitVarStr var_98, "    <th colspan=""2""><hr></th>"
  loc_C05C3C: PopAdLdVar
  loc_C05C3D: FLdPr Me
  loc_C05C40: MemLdRfVar from_stack_1.global_60
  loc_C05C43: LdPrVar
  loc_C05C45: LateMemCall
  loc_C05C4B: LitVarStr var_98, "  </tr>"
  loc_C05C50: PopAdLdVar
  loc_C05C51: FLdPr Me
  loc_C05C54: MemLdRfVar from_stack_1.global_60
  loc_C05C57: LdPrVar
  loc_C05C59: LateMemCall
  loc_C05C5F: FLdPr Me
  loc_C05C62: MemLdRfVar from_stack_1.global_76
  loc_C05C65: NewIfNullAd
  loc_C05C68: FStAd var_DC 
  loc_C05C6C: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C05C71: PopAdLdVar
  loc_C05C72: FLdPr Me
  loc_C05C75: MemLdRfVar from_stack_1.global_60
  loc_C05C78: LdPrVar
  loc_C05C7A: LateMemCall
  loc_C05C80: LitStr "    <td width=""50" & Chr(37) & """><strong>Periodo: </strong>"
  loc_C05C83: FLdRfVar var_C2
  loc_C05C86: FLdPr var_DC
  loc_C05C89: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C05C8E: FLdI2 var_C2
  loc_C05C91: CStrUI1
  loc_C05C93: FStStrNoPop var_AC
  loc_C05C96: ConcatStr
  loc_C05C97: FStStrNoPop var_B0
  loc_C05C9A: LitStr "</td>"
  loc_C05C9D: ConcatStr
  loc_C05C9E: CVarStr var_C0
  loc_C05CA1: PopAdLdVar
  loc_C05CA2: FLdPr Me
  loc_C05CA5: MemLdRfVar from_stack_1.global_60
  loc_C05CA8: LdPrVar
  loc_C05CAA: LateMemCall
  loc_C05CB0: FFreeStr var_AC = ""
  loc_C05CB7: FFree1Var var_C0 = ""
  loc_C05CBA: LitVarStr var_98, "    <td width=""50" & Chr(37) & """><strong>Tipo de Liquidación: </strong>"
  loc_C05CBF: FLdRfVar var_C0
  loc_C05CC2: FLdPr var_DC
  loc_C05CC5: from_stack_1 = clsliquidacion.DetaTili
  loc_C05CCA: FLdRfVar var_C0
  loc_C05CCD: ConcatVar var_EC
  loc_C05CD1: LitVarStr var_A8, "</td>"
  loc_C05CD6: ConcatVar var_FC
  loc_C05CDA: PopAdLdVar
  loc_C05CDB: FLdPr Me
  loc_C05CDE: MemLdRfVar from_stack_1.global_60
  loc_C05CE1: LdPrVar
  loc_C05CE3: LateMemCall
  loc_C05CE9: FFreeVar var_C0 = "": var_EC = ""
  loc_C05CF2: LitVarStr var_98, "  </tr>"
  loc_C05CF7: PopAdLdVar
  loc_C05CF8: FLdPr Me
  loc_C05CFB: MemLdRfVar from_stack_1.global_60
  loc_C05CFE: LdPrVar
  loc_C05D00: LateMemCall
  loc_C05D06: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C05D0B: PopAdLdVar
  loc_C05D0C: FLdPr Me
  loc_C05D0F: MemLdRfVar from_stack_1.global_60
  loc_C05D12: LdPrVar
  loc_C05D14: LateMemCall
  loc_C05D1A: LitStr "    <td><strong>Número: </strong>"
  loc_C05D1D: FLdRfVar var_C2
  loc_C05D20: FLdPr var_DC
  loc_C05D23: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C05D28: FLdI2 var_C2
  loc_C05D2B: CStrUI1
  loc_C05D2D: FStStrNoPop var_AC
  loc_C05D30: ConcatStr
  loc_C05D31: FStStrNoPop var_B0
  loc_C05D34: LitStr "</td>"
  loc_C05D37: ConcatStr
  loc_C05D38: CVarStr var_C0
  loc_C05D3B: PopAdLdVar
  loc_C05D3C: FLdPr Me
  loc_C05D3F: MemLdRfVar from_stack_1.global_60
  loc_C05D42: LdPrVar
  loc_C05D44: LateMemCall
  loc_C05D4A: FFreeStr var_AC = ""
  loc_C05D51: FFree1Var var_C0 = ""
  loc_C05D54: LitVarStr var_98, "  </tr>"
  loc_C05D59: PopAdLdVar
  loc_C05D5A: FLdPr Me
  loc_C05D5D: MemLdRfVar from_stack_1.global_60
  loc_C05D60: LdPrVar
  loc_C05D62: LateMemCall
  loc_C05D68: FLdPr Me
  loc_C05D6B: VCallAd Control_ID_CodiComeDesdeMsk
  loc_C05D6E: FStAdFunc var_110
  loc_C05D71: FLdPr var_110
  loc_C05D74: LateIdLdVar var_C0 DispID_22 0
  loc_C05D7B: CStrVarTmp
  loc_C05D7C: FStStrNoPop var_AC
  loc_C05D7F: LitStr vbNullString
  loc_C05D82: NeStr
  loc_C05D84: FLdPr Me
  loc_C05D87: VCallAd Control_ID_CodiComeHastaMsk
  loc_C05D8A: FStAdFunc var_114
  loc_C05D8D: FLdPr var_114
  loc_C05D90: LateIdLdVar var_EC DispID_22 0
  loc_C05D97: CStrVarTmp
  loc_C05D98: FStStrNoPop var_B0
  loc_C05D9B: LitStr vbNullString
  loc_C05D9E: NeStr
  loc_C05DA0: OrI4
  loc_C05DA1: FFreeStr var_AC = ""
  loc_C05DA8: FFreeAd var_110 = ""
  loc_C05DAF: FFreeVar var_C0 = ""
  loc_C05DB6: BranchF loc_C05F21
  loc_C05DB9: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C05DBE: PopAdLdVar
  loc_C05DBF: FLdPr Me
  loc_C05DC2: MemLdRfVar from_stack_1.global_60
  loc_C05DC5: LdPrVar
  loc_C05DC7: LateMemCall
  loc_C05DCD: FLdPr Me
  loc_C05DD0: VCallAd Control_ID_CodiComeDesdeMsk
  loc_C05DD3: FStAdFunc var_110
  loc_C05DD6: FLdPr var_110
  loc_C05DD9: LateIdLdVar var_C0 DispID_22 0
  loc_C05DE0: PopAd
  loc_C05DE2: FLdPr Me
  loc_C05DE5: VCallAd Control_ID_CodiComeDesdeMsk
  loc_C05DE8: FStAdFunc var_114
  loc_C05DEB: FLdPr var_114
  loc_C05DEE: LateIdLdVar var_EC DispID_22 0
  loc_C05DF5: PopAd
  loc_C05DF7: LitVarStr var_10C, "    <td><strong>"
  loc_C05DFC: LitVarStr var_A8, "&nbsp;"
  loc_C05E01: FStVarCopyObj var_124
  loc_C05E04: FLdRfVar var_124
  loc_C05E07: LitStr "Desde Cuenta: </strong>"
  loc_C05E0A: FLdRfVar var_EC
  loc_C05E0D: CStrVarTmp
  loc_C05E0E: FStStrNoPop var_B0
  loc_C05E11: ConcatStr
  loc_C05E12: CVarStr var_FC
  loc_C05E15: FLdRfVar var_C0
  loc_C05E18: CStrVarTmp
  loc_C05E19: FStStrNoPop var_AC
  loc_C05E1C: LitStr vbNullString
  loc_C05E1F: NeStr
  loc_C05E21: CVarBoolI2 var_98
  loc_C05E25: FLdRfVar var_134
  loc_C05E28: ImpAdCallFPR4  = IIf(, , )
  loc_C05E2D: FLdRfVar var_134
  loc_C05E30: ConcatVar var_144
  loc_C05E34: LitVarStr var_154, "</td>"
  loc_C05E39: ConcatVar var_164
  loc_C05E3D: PopAdLdVar
  loc_C05E3E: FLdPr Me
  loc_C05E41: MemLdRfVar from_stack_1.global_60
  loc_C05E44: LdPrVar
  loc_C05E46: LateMemCall
  loc_C05E4C: FFreeStr var_AC = ""
  loc_C05E53: FFreeAd var_110 = ""
  loc_C05E5A: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_FC = "": var_124 = "": var_134 = "": var_144 = ""
  loc_C05E6D: FLdPr Me
  loc_C05E70: VCallAd Control_ID_CodiComeHastaMsk
  loc_C05E73: FStAdFunc var_110
  loc_C05E76: FLdPr var_110
  loc_C05E79: LateIdLdVar var_C0 DispID_22 0
  loc_C05E80: PopAd
  loc_C05E82: FLdPr Me
  loc_C05E85: VCallAd Control_ID_CodiComeHastaMsk
  loc_C05E88: FStAdFunc var_114
  loc_C05E8B: FLdPr var_114
  loc_C05E8E: LateIdLdVar var_EC DispID_22 0
  loc_C05E95: PopAd
  loc_C05E97: LitVarStr var_10C, "    <td><strong>"
  loc_C05E9C: LitVarStr var_A8, "&nbsp;"
  loc_C05EA1: FStVarCopyObj var_124
  loc_C05EA4: FLdRfVar var_124
  loc_C05EA7: LitStr "Hasta Cuenta: </strong>"
  loc_C05EAA: FLdRfVar var_EC
  loc_C05EAD: CStrVarTmp
  loc_C05EAE: FStStrNoPop var_B0
  loc_C05EB1: ConcatStr
  loc_C05EB2: CVarStr var_FC
  loc_C05EB5: FLdRfVar var_C0
  loc_C05EB8: CStrVarTmp
  loc_C05EB9: FStStrNoPop var_AC
  loc_C05EBC: LitStr vbNullString
  loc_C05EBF: NeStr
  loc_C05EC1: CVarBoolI2 var_98
  loc_C05EC5: FLdRfVar var_134
  loc_C05EC8: ImpAdCallFPR4  = IIf(, , )
  loc_C05ECD: FLdRfVar var_134
  loc_C05ED0: ConcatVar var_144
  loc_C05ED4: LitVarStr var_154, "</td>"
  loc_C05ED9: ConcatVar var_164
  loc_C05EDD: PopAdLdVar
  loc_C05EDE: FLdPr Me
  loc_C05EE1: MemLdRfVar from_stack_1.global_60
  loc_C05EE4: LdPrVar
  loc_C05EE6: LateMemCall
  loc_C05EEC: FFreeStr var_AC = ""
  loc_C05EF3: FFreeAd var_110 = ""
  loc_C05EFA: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_FC = "": var_124 = "": var_134 = "": var_144 = ""
  loc_C05F0D: LitVarStr var_98, "  </tr>"
  loc_C05F12: PopAdLdVar
  loc_C05F13: FLdPr Me
  loc_C05F16: MemLdRfVar from_stack_1.global_60
  loc_C05F19: LdPrVar
  loc_C05F1B: LateMemCall
  loc_C05F21: LitNothing
  loc_C05F23: FStAd var_DC 
  loc_C05F27: LitVarStr var_98, "</table>"
  loc_C05F2C: PopAdLdVar
  loc_C05F2D: FLdPr Me
  loc_C05F30: MemLdRfVar from_stack_1.global_60
  loc_C05F33: LdPrVar
  loc_C05F35: LateMemCall
  loc_C05F3B: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C05F40: PopAdLdVar
  loc_C05F41: FLdPr Me
  loc_C05F44: MemLdRfVar from_stack_1.global_60
  loc_C05F47: LdPrVar
  loc_C05F49: LateMemCall
  loc_C05F4F: LitVarStr var_98, "  <thead>"
  loc_C05F54: PopAdLdVar
  loc_C05F55: FLdPr Me
  loc_C05F58: MemLdRfVar from_stack_1.global_60
  loc_C05F5B: LdPrVar
  loc_C05F5D: LateMemCall
  loc_C05F63: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C05F68: PopAdLdVar
  loc_C05F69: FLdPr Me
  loc_C05F6C: MemLdRfVar from_stack_1.global_60
  loc_C05F6F: LdPrVar
  loc_C05F71: LateMemCall
  loc_C05F77: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_C05F7C: PopAdLdVar
  loc_C05F7D: FLdPr Me
  loc_C05F80: MemLdRfVar from_stack_1.global_60
  loc_C05F83: LdPrVar
  loc_C05F85: LateMemCall
  loc_C05F8B: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_C05F90: PopAdLdVar
  loc_C05F91: FLdPr Me
  loc_C05F94: MemLdRfVar from_stack_1.global_60
  loc_C05F97: LdPrVar
  loc_C05F99: LateMemCall
  loc_C05F9F: LitVarStr var_98, "    <th>Nombre de Fantasía</th>"
  loc_C05FA4: PopAdLdVar
  loc_C05FA5: FLdPr Me
  loc_C05FA8: MemLdRfVar from_stack_1.global_60
  loc_C05FAB: LdPrVar
  loc_C05FAD: LateMemCall
  loc_C05FB3: LitVarStr var_98, "    <th>Deuda</th>"
  loc_C05FB8: PopAdLdVar
  loc_C05FB9: FLdPr Me
  loc_C05FBC: MemLdRfVar from_stack_1.global_60
  loc_C05FBF: LdPrVar
  loc_C05FC1: LateMemCall
  loc_C05FC7: LitVarStr var_98, "    <th>Tipo</th>"
  loc_C05FCC: PopAdLdVar
  loc_C05FCD: FLdPr Me
  loc_C05FD0: MemLdRfVar from_stack_1.global_60
  loc_C05FD3: LdPrVar
  loc_C05FD5: LateMemCall
  loc_C05FDB: LitVarStr var_98, "    <th>Orden</th>"
  loc_C05FE0: PopAdLdVar
  loc_C05FE1: FLdPr Me
  loc_C05FE4: MemLdRfVar from_stack_1.global_60
  loc_C05FE7: LdPrVar
  loc_C05FE9: LateMemCall
  loc_C05FEF: LitVarStr var_98, "    <th>Bim</th>"
  loc_C05FF4: PopAdLdVar
  loc_C05FF5: FLdPr Me
  loc_C05FF8: MemLdRfVar from_stack_1.global_60
  loc_C05FFB: LdPrVar
  loc_C05FFD: LateMemCall
  loc_C06003: LitVarStr var_98, "    <th>Concepto</th>"
  loc_C06008: PopAdLdVar
  loc_C06009: FLdPr Me
  loc_C0600C: MemLdRfVar from_stack_1.global_60
  loc_C0600F: LdPrVar
  loc_C06011: LateMemCall
  loc_C06017: LitVarStr var_98, "    <th>Importe</th>"
  loc_C0601C: PopAdLdVar
  loc_C0601D: FLdPr Me
  loc_C06020: MemLdRfVar from_stack_1.global_60
  loc_C06023: LdPrVar
  loc_C06025: LateMemCall
  loc_C0602B: LitVarStr var_98, "    <th>Exen.</th>"
  loc_C06030: PopAdLdVar
  loc_C06031: FLdPr Me
  loc_C06034: MemLdRfVar from_stack_1.global_60
  loc_C06037: LdPrVar
  loc_C06039: LateMemCall
  loc_C0603F: LitVarStr var_98, "    <th>Desc.</th>"
  loc_C06044: PopAdLdVar
  loc_C06045: FLdPr Me
  loc_C06048: MemLdRfVar from_stack_1.global_60
  loc_C0604B: LdPrVar
  loc_C0604D: LateMemCall
  loc_C06053: LitVarStr var_98, "    <th>Cred.</th>"
  loc_C06058: PopAdLdVar
  loc_C06059: FLdPr Me
  loc_C0605C: MemLdRfVar from_stack_1.global_60
  loc_C0605F: LdPrVar
  loc_C06061: LateMemCall
  loc_C06067: LitVarStr var_98, "    <th>Total</th>"
  loc_C0606C: PopAdLdVar
  loc_C0606D: FLdPr Me
  loc_C06070: MemLdRfVar from_stack_1.global_60
  loc_C06073: LdPrVar
  loc_C06075: LateMemCall
  loc_C0607B: LitVarStr var_98, "    </tr>"
  loc_C06080: PopAdLdVar
  loc_C06081: FLdPr Me
  loc_C06084: MemLdRfVar from_stack_1.global_60
  loc_C06087: LdPrVar
  loc_C06089: LateMemCall
  loc_C0608F: LitVarStr var_98, "  </thead>"
  loc_C06094: PopAdLdVar
  loc_C06095: FLdPr Me
  loc_C06098: MemLdRfVar from_stack_1.global_60
  loc_C0609B: LdPrVar
  loc_C0609D: LateMemCall
  loc_C060A3: ExitProcHresult
End Function

Private Function Proc_198_18_A0B798() 'A0B798
  'Data Table: 474E44
  loc_A0B758: LitVarStr var_94, "</table>"
  loc_A0B75D: PopAdLdVar
  loc_A0B75E: FLdPr Me
  loc_A0B761: MemLdRfVar from_stack_1.global_60
  loc_A0B764: LdPrVar
  loc_A0B766: LateMemCall
  loc_A0B76C: LitVarStr var_94, "</body>"
  loc_A0B771: PopAdLdVar
  loc_A0B772: FLdPr Me
  loc_A0B775: MemLdRfVar from_stack_1.global_60
  loc_A0B778: LdPrVar
  loc_A0B77A: LateMemCall
  loc_A0B780: LitVarStr var_94, "</html>"
  loc_A0B785: PopAdLdVar
  loc_A0B786: FLdPr Me
  loc_A0B789: MemLdRfVar from_stack_1.global_60
  loc_A0B78C: LdPrVar
  loc_A0B78E: LateMemCall
  loc_A0B794: ExitProcHresult
  loc_A0B795: MemLdPr global_1024
End Function
