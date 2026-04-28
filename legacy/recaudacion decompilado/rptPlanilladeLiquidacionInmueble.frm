VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptPlanilladeLiquidacionInmueble
  Caption = "Planilla de Liquidación de Inmueble"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptPlanilladeLiquidacionInmueble.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11640
  ClientHeight = 6972
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
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 5400
    Width = 4095
    Height = 1215
    TabIndex = 16
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 3
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 5400
    Width = 1815
    Height = 1215
    TabIndex = 15
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 5
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6720
    Width = 11640
    Height = 255
    TabIndex = 10
    OleObjectBlob = "rptPlanilladeLiquidacionInmueble.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9960
    Top = 5640
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
    Picture = "rptPlanilladeLiquidacionInmueble.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptPlanilladeLiquidacionInmueble.frx":0B9C
    Left = 10560
    Top = 5400
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11415
    Height = 5295
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
    Begin VB.Frame Frame5
      Caption = "Orden"
      Left = 240
      Top = 4080
      Width = 9375
      Height = 975
      TabIndex = 11
      Begin MSMask.MaskEdBox OrdeLitaDesdeMsk
        Left = 2130
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptPlanilladeLiquidacionInmueble.frx":0C00
      End
      Begin MSMask.MaskEdBox OrdeLitaHastaMsk
        Left = 5970
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptPlanilladeLiquidacionInmueble.frx":0C98
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
    Begin MSComctlLib.ProgressBar pbar
      Left = 240
      Top = 3960
      Width = 9375
      Height = 135
      Visible = 0   'False
      TabIndex = 14
      OleObjectBlob = "rptPlanilladeLiquidacionInmueble.frx":0D30
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9720
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 6
    End
    Begin MSDataGridLib.DataGrid dgdLiquidacion
      Left = 240
      Top = 240
      Width = 9360
      Height = 3675
      TabIndex = 0
      OleObjectBlob = "rptPlanilladeLiquidacionInmueble.frx":0D98
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9960
    Top = 6000
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptPlanilladeLiquidacionInmueble.frx":1126
  End
End

Attribute VB_Name = "rptPlanilladeLiquidacionInmueble"

Public bGenerado As Boolean

Private Type UDT_1_00562DC4
  bStruc(40) As Byte ' String fields: 10
End Type


Private Sub cmdSalir_Click() '9FF0AC
  'Data Table: 473124
  loc_9FF07C: LitVarStr var_94, "Cerrando..."
  loc_9FF081: PopAdLdVar
  loc_9FF082: FLdPr Me
  loc_9FF085: VCallAd Control_ID_statusBar
  loc_9FF088: FStAdFunc var_A8
  loc_9FF08B: FLdPr var_A8
  loc_9FF08E: LateIdSt
  loc_9FF093: FFree1Ad var_A8
  loc_9FF096: ILdRf Me
  loc_9FF099: FStAdNoPop
  loc_9FF09D: ImpAdLdRf MemVar_D9C5D8
  loc_9FF0A0: NewIfNullPr Global
  loc_9FF0A3: Global.Unload from_stack_1
  loc_9FF0A8: FFree1Ad var_A8
  loc_9FF0AB: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9D0D90
  'Data Table: 473124
  loc_9D0D78: LitI2_Byte 0
  loc_9D0D7A: ILdRf Me
  loc_9D0D7D: CastAd
  loc_9D0D80: FStAdFunc var_88
  loc_9D0D83: FLdRfVar var_88
  loc_9D0D86: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D0D8B: FFree1Ad var_88
  loc_9D0D8E: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E25DC
  'Data Table: 473124
  loc_9E25C0: LitI2_Byte 0
  loc_9E25C2: PopTmpLdAd2 var_8A
  loc_9E25C5: ILdRf Me
  loc_9E25C8: CastAd
  loc_9E25CB: FStAdFunc var_88
  loc_9E25CE: FLdRfVar var_88
  loc_9E25D1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E25D6: FFree1Ad var_88
  loc_9E25D9: ExitProcHresult
End Sub

Private Sub OrdeLitaDesdeMsk_UnknownEvent_0 '9C2768
  'Data Table: 473124
  loc_9C2754: FLdPr Me
  loc_9C2757: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_9C275A: CVarAd
  loc_9C275E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2763: FFree1Var var_94 = ""
  loc_9C2766: ExitProcHresult
End Sub

Private Sub OrdeLitaHastaMsk_UnknownEvent_0 '9C2720
  'Data Table: 473124
  loc_9C270C: FLdPr Me
  loc_9C270F: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_9C2712: CVarAd
  loc_9C2716: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C271B: FFree1Var var_94 = ""
  loc_9C271E: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A196A8
  'Data Table: 473124
  loc_A19670: FLdPr Me
  loc_A19673: VCallAd Control_ID_statusBar
  loc_A19676: FStAdFunc var_88
  loc_A19679: FLdPr var_88
  loc_A1967C: LateIdLdVar var_98 DispID_1 0
  loc_A19683: CStrVarTmp
  loc_A19684: CVarStr var_A8
  loc_A19687: PopAdLdVar
  loc_A19688: FLdPr Me
  loc_A1968B: VCallAd Control_ID_statusBar
  loc_A1968E: FStAdFunc var_BC
  loc_A19691: FLdPr var_BC
  loc_A19694: LateIdSt
  loc_A19699: FFreeAd var_88 = ""
  loc_A196A0: FFreeVar var_98 = ""
  loc_A196A7: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ACEE94
  'Data Table: 473124
  loc_ACED70: LitI2_Byte 0
  loc_ACED72: FLdPr Me
  loc_ACED75: MemStI2 bGenerado
  loc_ACED78: LitI2_Byte 0
  loc_ACED7A: ILdRf Me
  loc_ACED7D: CastAd
  loc_ACED80: FStAdFunc var_88
  loc_ACED83: FLdRfVar var_88
  loc_ACED86: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_ACED8B: FFree1Ad var_88
  loc_ACED8E: FLdPr Me
  loc_ACED91: MemLdRfVar from_stack_1.global_76
  loc_ACED94: NewIfNullPr clsliquidacion
  loc_ACED97: Call clsliquidacion.Requery()
  loc_ACED9C: LitVarStr var_98, vbNullString
  loc_ACEDA1: PopAdLdVar
  loc_ACEDA2: FLdPr Me
  loc_ACEDA5: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_ACEDA8: FStAdFunc var_88
  loc_ACEDAB: FLdPr var_88
  loc_ACEDAE: LateIdSt
  loc_ACEDB3: FFree1Ad var_88
  loc_ACEDB6: LitVarStr var_98, vbNullString
  loc_ACEDBB: PopAdLdVar
  loc_ACEDBC: FLdPr Me
  loc_ACEDBF: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_ACEDC2: FStAdFunc var_88
  loc_ACEDC5: FLdPr var_88
  loc_ACEDC8: LateIdSt
  loc_ACEDCD: FFree1Ad var_88
  loc_ACEDD0: FLdRfVar var_AC
  loc_ACEDD3: FLdPr Me
  loc_ACEDD6: MemLdRfVar from_stack_1.global_76
  loc_ACEDD9: NewIfNullPr clsliquidacion
  loc_ACEDDC: from_stack_1 = clsliquidacion.RecordCount
  loc_ACEDE1: ILdRf var_AC
  loc_ACEDE4: LitI4 0
  loc_ACEDE9: GtI4
  loc_ACEDEA: BranchF loc_ACEE5C
  loc_ACEDED: LitI4 0
  loc_ACEDF2: LitI4 1
  loc_ACEDF7: FLdRfVar var_B0
  loc_ACEDFA: Redim
  loc_ACEE04: FLdPr Me
  loc_ACEE07: MemLdRfVar from_stack_1.global_76
  loc_ACEE0A: NewIfNullAd
  loc_ACEE0D: FStAd var_88 
  loc_ACEE11: FLdRfVar var_88
  loc_ACEE14: CVarRef
  loc_ACEE19: ParmAry1St
  loc_ACEE1F: FLdPr Me
  loc_ACEE22: VCallAd Control_ID_dgdLiquidacion
  loc_ACEE25: CVarAd
  loc_ACEE29: ParmAry1St
  loc_ACEE2F: FLdRfVar var_B0
  loc_ACEE32: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ACEE37: ILdRf var_88
  loc_ACEE3A: CastAd
  loc_ACEE3D: FLdPr Me
  loc_ACEE40: MemStAdFunc
  loc_ACEE44: FLdRfVar var_B0
  loc_ACEE47: Erase
  loc_ACEE48: FFree1Ad var_88
  loc_ACEE4B: FLdPr Me
  loc_ACEE4E: MemLdRfVar from_stack_1.global_76
  loc_ACEE51: NewIfNullPr clsliquidacion
  loc_ACEE54: Call clsliquidacion.MoveFirst()
  loc_ACEE59: Branch loc_ACEE78
  loc_ACEE5C: LitStr "No existen liquidaciones para listar"
  loc_ACEE5F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACEE64: ILdRf Me
  loc_ACEE67: CastAd
  loc_ACEE6A: FStAdFunc var_88
  loc_ACEE6D: FLdRfVar var_88
  loc_ACEE70: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_ACEE75: FFree1Ad var_88
  loc_ACEE78: Call HabilitarCriterio()
  loc_ACEE7D: ILdRf Me
  loc_ACEE80: CastAd
  loc_ACEE83: FStAdFunc var_88
  loc_ACEE86: FLdRfVar var_88
  loc_ACEE89: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ACEE8E: FFree1Ad var_88
  loc_ACEE91: ExitProcHresult
  loc_ACEE92: Ary1LdPr
End Sub

Private Sub cmdPrevia_Click() '9D0CF8
  'Data Table: 473124
  loc_9D0CE0: ILdRf Me
  loc_9D0CE3: CastAd
  loc_9D0CE6: FStAdFunc var_88
  loc_9D0CE9: FLdRfVar var_88
  loc_9D0CEC: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D0CF1: FFree1Ad var_88
  loc_9D0CF4: ExitProcHresult
End Sub

Private Sub Form_Load() 'A25190
  'Data Table: 473124
  loc_A25150: ILdRf Me
  loc_A25153: CastAd
  loc_A25156: FStAdFunc var_88
  loc_A25159: FLdRfVar var_88
  loc_A2515C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A25161: FFree1Ad var_88
  loc_A25164: LitStr "SELECT PeriLiqu, BimeLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, LeyeTili"
  loc_A25167: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A2516A: ConcatStr
  loc_A2516B: FStStrNoPop var_8C
  loc_A2516E: LitStr " WHERE liquidacion.CodiOfic = 1 AND ActuLiqu = 'Si' ORDER BY PeriLiqu, BimeLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A25171: ConcatStr
  loc_A25172: FStStrNoPop var_90
  loc_A25175: FLdPr Me
  loc_A25178: MemLdRfVar from_stack_1.global_76
  loc_A2517B: NewIfNullPr clsliquidacion
  loc_A2517E: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A25183: FFreeStr var_8C = ""
  loc_A2518A: Call cmdNueva_Click()
  loc_A2518F: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D0FA4
  'Data Table: 473124
  loc_9D0F8C: FLdPr Me
  loc_9D0F8F: VCallAd Control_ID_wbbReporte
  loc_9D0F92: FStAdFunc var_88
  loc_9D0F95: FLdRfVar var_88
  loc_9D0F98: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D0F9D: FFree1Ad var_88
  loc_9D0FA0: ExitProcHresult
  loc_9D0FA1: CStr2Ansi
End Sub

Public Function bGeneradoGet() '473DDC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '473DEB
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5D680
  'Data Table: 473124
  loc_A5D62C: LitI4 0
  loc_A5D631: LitI4 2
  loc_A5D636: FLdRfVar var_88
  loc_A5D639: Redim
  loc_A5D643: FLdPr Me
  loc_A5D646: VCallAd Control_ID_dgdLiquidacion
  loc_A5D649: CVarAd
  loc_A5D64D: ParmAry1St
  loc_A5D653: FLdPr Me
  loc_A5D656: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_A5D659: CVarAd
  loc_A5D65D: ParmAry1St
  loc_A5D663: FLdPr Me
  loc_A5D666: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_A5D669: CVarAd
  loc_A5D66D: ParmAry1St
  loc_A5D673: FLdRfVar var_88
  loc_A5D676: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5D67B: FLdRfVar var_88
  loc_A5D67E: Erase
  loc_A5D67F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B6BFF8
  'Data Table: 473124
  loc_B6BBB4: FLdPr Me
  loc_B6BBB7: MemLdI2 bGenerado
  loc_B6BBBA: BranchF loc_B6BBBE
  loc_B6BBBD: ExitProcHresult
  loc_B6BBBE: LitVarStr var_94, "Generando reporte..."
  loc_B6BBC3: PopAdLdVar
  loc_B6BBC4: FLdPr Me
  loc_B6BBC7: VCallAd Control_ID_statusBar
  loc_B6BBCA: FStAdFunc var_A8
  loc_B6BBCD: FLdPr var_A8
  loc_B6BBD0: LateIdSt
  loc_B6BBD5: FFree1Ad var_A8
  loc_B6BBD8: LitI4 &HB
  loc_B6BBDD: CI2I4
  loc_B6BBDE: FLdPr Me
  loc_B6BBE1: Me.MousePointer = from_stack_1
  loc_B6BBE6: FLdRfVar var_AC
  loc_B6BBE9: FLdPr Me
  loc_B6BBEC: MemLdRfVar from_stack_1.global_76
  loc_B6BBEF: NewIfNullPr clsliquidacion
  loc_B6BBF2: from_stack_1 = clsliquidacion.RecordCount
  loc_B6BBF7: ILdRf var_AC
  loc_B6BBFA: LitI4 1
  loc_B6BBFF: LtI4
  loc_B6BC00: BranchF loc_B6BC0E
  loc_B6BC03: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B6BC06: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6BC0B: Branch loc_B6BFCD
  loc_B6BC0E: Call Proc_176_15_ACF708()
  loc_B6BC13: FLdPr Me
  loc_B6BC16: MemLdRfVar from_stack_1.global_80
  loc_B6BC19: NewIfNullAd
  loc_B6BC1C: FStAd var_B0 
  loc_B6BC20: LitStr "SELECT CuenCtct as CodiInmu, DetaPers, inmueble.DecpInmu as DecaPost, inmueble.NupoInmu as NumePost, inmueble.DebpInmu as DebaPost, inmueble.MapoInmu as ManzPost, inmueble.CapoInmu as CasaPost, inmueble.UbpoInmu as UbicPost, inmueble.DelpInmu as DeloPost, inmueble.CoppInmu as CopoPost, sum(TotaLita) as TotaLita"
  loc_B6BC23: LitStr " FROM liqutasa"
  loc_B6BC26: ConcatStr
  loc_B6BC27: FStStrNoPop var_B4
  loc_B6BC2A: LitStr " INNER JOIN boleto ON boleto.CodiOfic = 1 AND boleto.CuenCtct = liqutasa.CodiInmu AND boleto.FealBole = liqutasa.FeacLita"
  loc_B6BC2D: ConcatStr
  loc_B6BC2E: FStStrNoPop var_B8
  loc_B6BC31: LitStr "    AND boleto.CodiTili = liqutasa.CodiTili AND boleto.NumeLiqu = liqutasa.NumeLiqu AND boleto.TipoBole = liqutasa.TipoVenc"
  loc_B6BC34: ConcatStr
  loc_B6BC35: FStStrNoPop var_BC
  loc_B6BC38: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = liqutasa.CucuPers"
  loc_B6BC3B: ConcatStr
  loc_B6BC3C: FStStrNoPop var_C0
  loc_B6BC3F: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = liqutasa.CodiInmu"
  loc_B6BC42: ConcatStr
  loc_B6BC43: FStStrNoPop var_C4
  loc_B6BC46: LitStr " WHERE TipoLita = 'Aforo' AND FeacLita is not null"
  loc_B6BC49: ConcatStr
  loc_B6BC4A: FStStrNoPop var_C8
  loc_B6BC4D: LitStr " AND liqutasa.PeriLiqu = "
  loc_B6BC50: ConcatStr
  loc_B6BC51: FStStrNoPop var_D0
  loc_B6BC54: FLdRfVar var_CA
  loc_B6BC57: FLdPr Me
  loc_B6BC5A: MemLdRfVar from_stack_1.global_76
  loc_B6BC5D: NewIfNullPr clsliquidacion
  loc_B6BC60: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B6BC65: FLdI2 var_CA
  loc_B6BC68: CStrUI1
  loc_B6BC6A: FStStrNoPop var_D4
  loc_B6BC6D: ConcatStr
  loc_B6BC6E: FStStrNoPop var_D8
  loc_B6BC71: LitStr " AND liqutasa.BimeLiqu = "
  loc_B6BC74: ConcatStr
  loc_B6BC75: FStStrNoPop var_E0
  loc_B6BC78: FLdRfVar var_DA
  loc_B6BC7B: FLdPr Me
  loc_B6BC7E: MemLdRfVar from_stack_1.global_76
  loc_B6BC81: NewIfNullPr clsliquidacion
  loc_B6BC84: from_stack_1 = clsliquidacion.BimeLiqu
  loc_B6BC89: FLdUI1
  loc_B6BC8D: CStrI2
  loc_B6BC8F: FStStrNoPop var_E4
  loc_B6BC92: ConcatStr
  loc_B6BC93: FStStrNoPop var_E8
  loc_B6BC96: LitStr " AND liqutasa.CodiTili = "
  loc_B6BC99: ConcatStr
  loc_B6BC9A: FStStrNoPop var_F0
  loc_B6BC9D: FLdRfVar var_EA
  loc_B6BCA0: FLdPr Me
  loc_B6BCA3: MemLdRfVar from_stack_1.global_76
  loc_B6BCA6: NewIfNullPr clsliquidacion
  loc_B6BCA9: from_stack_1 = clsliquidacion.CodiTili
  loc_B6BCAE: FLdUI1
  loc_B6BCB2: CStrI2
  loc_B6BCB4: FStStrNoPop var_F4
  loc_B6BCB7: ConcatStr
  loc_B6BCB8: FStStrNoPop var_F8
  loc_B6BCBB: LitStr " AND liqutasa.NumeLiqu = "
  loc_B6BCBE: ConcatStr
  loc_B6BCBF: FStStrNoPop var_100
  loc_B6BCC2: FLdRfVar var_FA
  loc_B6BCC5: FLdPr Me
  loc_B6BCC8: MemLdRfVar from_stack_1.global_76
  loc_B6BCCB: NewIfNullPr clsliquidacion
  loc_B6BCCE: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B6BCD3: FLdI2 var_FA
  loc_B6BCD6: CStrUI1
  loc_B6BCD8: FStStrNoPop var_104
  loc_B6BCDB: ConcatStr
  loc_B6BCDC: FStStrNoPop var_108
  loc_B6BCDF: FLdPr Me
  loc_B6BCE2: MemLdStr global_92
  loc_B6BCE5: ConcatStr
  loc_B6BCE6: FStStrNoPop var_10C
  loc_B6BCE9: FLdPr Me
  loc_B6BCEC: MemLdStr global_96
  loc_B6BCEF: ConcatStr
  loc_B6BCF0: FStStrNoPop var_110
  loc_B6BCF3: LitStr " GROUP BY CodiInmu, TipoVenc HAVING TotaLita <> 0 ORDER BY OrdeLita, TipoVenc DESC"
  loc_B6BCF6: ConcatStr
  loc_B6BCF7: FStStrNoPop var_114
  loc_B6BCFA: FLdPr var_B0
  loc_B6BCFD: Call clsboleto.RedefineRS(from_stack_1v)
  loc_B6BD02: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_B6BD2F: FLdRfVar var_AC
  loc_B6BD32: FLdPr var_B0
  loc_B6BD35: from_stack_1 = clsboleto.RecordCount
  loc_B6BD3A: ILdRf var_AC
  loc_B6BD3D: LitI4 1
  loc_B6BD42: LtI4
  loc_B6BD43: BranchF loc_B6BD51
  loc_B6BD46: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B6BD49: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6BD4E: Branch loc_B6BFCD
  loc_B6BD51: LitI4 0
  loc_B6BD56: FLdRfVar var_AC
  loc_B6BD59: FLdPr var_B0
  loc_B6BD5C: from_stack_1 = clsboleto.RecordCount
  loc_B6BD61: ILdRf var_AC
  loc_B6BD64: FLdPr Me
  loc_B6BD67: MemLdRfVar from_stack_1.global_84
  loc_B6BD6A: Redim
  loc_B6BD74: FLdPr var_B0
  loc_B6BD77: Call clsboleto.MoveFirst()
  loc_B6BD7C: LitI4 1
  loc_B6BD81: FLdPr Me
  loc_B6BD84: MemLdRfVar from_stack_1.global_88
  loc_B6BD87: FLdPr Me
  loc_B6BD8A: MemLdStr global_84
  loc_B6BD8D: LitI2_Byte 1
  loc_B6BD8F: FnUBound
  loc_B6BD91: ForI4 var_11C
  loc_B6BD97: FLdRfVar var_12C
  loc_B6BD9A: FLdPr var_B0
  loc_B6BD9D: from_stack_1 = clsboleto.CodiInmu
  loc_B6BDA2: LitI2_Byte 0
  loc_B6BDA4: LitVar_Missing var_140
  loc_B6BDA7: LitI2_Byte 0
  loc_B6BDA9: FLdVar var_12C
  loc_B6BDAD: FLdPr Me
  loc_B6BDB0: MemLdStr global_88
  loc_B6BDB3: FLdPr Me
  loc_B6BDB6: MemLdStr global_84
  loc_B6BDB9: AryLock
  loc_B6BDBC: Ary1LdPr
  loc_B6BDBD: MemLdRfVar from_stack_1.global_0
  loc_B6BDC0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6BDC5: AryUnlock
  loc_B6BDC8: FFreeVar var_12C = ""
  loc_B6BDCF: FLdRfVar var_B4
  loc_B6BDD2: FLdPr var_B0
  loc_B6BDD5: from_stack_1 = clsboleto.DetaPers
  loc_B6BDDA: LitI2_Byte 0
  loc_B6BDDC: LitVar_Missing var_140
  loc_B6BDDF: LitI2_Byte 0
  loc_B6BDE1: FLdZeroAd var_B4
  loc_B6BDE4: CVarStr var_12C
  loc_B6BDE7: PopAdLdVar
  loc_B6BDE8: FLdPr Me
  loc_B6BDEB: MemLdStr global_88
  loc_B6BDEE: FLdPr Me
  loc_B6BDF1: MemLdStr global_84
  loc_B6BDF4: AryLock
  loc_B6BDF7: Ary1LdPr
  loc_B6BDF8: MemLdRfVar from_stack_1.global_4
  loc_B6BDFB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6BE00: AryUnlock
  loc_B6BE03: FFreeVar var_12C = ""
  loc_B6BE0A: FLdRfVar var_B4
  loc_B6BE0D: FLdPr var_B0
  loc_B6BE10: from_stack_1 = clsboleto.DecaPost
  loc_B6BE15: LitI2_Byte 0
  loc_B6BE17: LitVar_Missing var_140
  loc_B6BE1A: LitI2_Byte 0
  loc_B6BE1C: FLdZeroAd var_B4
  loc_B6BE1F: CVarStr var_12C
  loc_B6BE22: PopAdLdVar
  loc_B6BE23: FLdPr Me
  loc_B6BE26: MemLdStr global_88
  loc_B6BE29: FLdPr Me
  loc_B6BE2C: MemLdStr global_84
  loc_B6BE2F: AryLock
  loc_B6BE32: Ary1LdPr
  loc_B6BE33: MemLdRfVar from_stack_1.global_8
  loc_B6BE36: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6BE3B: AryUnlock
  loc_B6BE3E: FFreeVar var_12C = ""
  loc_B6BE45: FLdRfVar var_B4
  loc_B6BE48: FLdPr var_B0
  loc_B6BE4B: from_stack_1 = clsboleto.NumePost
  loc_B6BE50: LitI2_Byte 0
  loc_B6BE52: LitVar_Missing var_140
  loc_B6BE55: LitI2_Byte 0
  loc_B6BE57: FLdZeroAd var_B4
  loc_B6BE5A: CVarStr var_12C
  loc_B6BE5D: PopAdLdVar
  loc_B6BE5E: FLdPr Me
  loc_B6BE61: MemLdStr global_88
  loc_B6BE64: FLdPr Me
  loc_B6BE67: MemLdStr global_84
  loc_B6BE6A: AryLock
  loc_B6BE6D: Ary1LdPr
  loc_B6BE6E: MemLdRfVar from_stack_1.global_12
  loc_B6BE71: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6BE76: AryUnlock
  loc_B6BE79: FFreeVar var_12C = ""
  loc_B6BE80: FLdRfVar var_B4
  loc_B6BE83: FLdPr var_B0
  loc_B6BE86: from_stack_1 = clsboleto.DebaPost
  loc_B6BE8B: LitI2_Byte 0
  loc_B6BE8D: LitVar_Missing var_140
  loc_B6BE90: LitI2_Byte 0
  loc_B6BE92: FLdZeroAd var_B4
  loc_B6BE95: CVarStr var_12C
  loc_B6BE98: PopAdLdVar
  loc_B6BE99: FLdPr Me
  loc_B6BE9C: MemLdStr global_88
  loc_B6BE9F: FLdPr Me
  loc_B6BEA2: MemLdStr global_84
  loc_B6BEA5: AryLock
  loc_B6BEA8: Ary1LdPr
  loc_B6BEA9: MemLdRfVar from_stack_1.global_16
  loc_B6BEAC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6BEB1: AryUnlock
  loc_B6BEB4: FFreeVar var_12C = ""
  loc_B6BEBB: FLdRfVar var_B4
  loc_B6BEBE: FLdPr var_B0
  loc_B6BEC1: from_stack_1 = clsboleto.ManzPost
  loc_B6BEC6: LitI2_Byte 0
  loc_B6BEC8: LitVar_Missing var_140
  loc_B6BECB: LitI2_Byte 0
  loc_B6BECD: FLdZeroAd var_B4
  loc_B6BED0: CVarStr var_12C
  loc_B6BED3: PopAdLdVar
  loc_B6BED4: FLdPr Me
  loc_B6BED7: MemLdStr global_88
  loc_B6BEDA: FLdPr Me
  loc_B6BEDD: MemLdStr global_84
  loc_B6BEE0: AryLock
  loc_B6BEE3: Ary1LdPr
  loc_B6BEE4: MemLdRfVar from_stack_1.global_20
  loc_B6BEE7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6BEEC: AryUnlock
  loc_B6BEEF: FFreeVar var_12C = ""
  loc_B6BEF6: FLdRfVar var_B4
  loc_B6BEF9: FLdPr var_B0
  loc_B6BEFC: from_stack_1 = clsboleto.CasaPost
  loc_B6BF01: LitI2_Byte 0
  loc_B6BF03: LitVar_Missing var_140
  loc_B6BF06: LitI2_Byte 0
  loc_B6BF08: FLdZeroAd var_B4
  loc_B6BF0B: CVarStr var_12C
  loc_B6BF0E: PopAdLdVar
  loc_B6BF0F: FLdPr Me
  loc_B6BF12: MemLdStr global_88
  loc_B6BF15: FLdPr Me
  loc_B6BF18: MemLdStr global_84
  loc_B6BF1B: AryLock
  loc_B6BF1E: Ary1LdPr
  loc_B6BF1F: MemLdRfVar from_stack_1.global_24
  loc_B6BF22: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6BF27: AryUnlock
  loc_B6BF2A: FFreeVar var_12C = ""
  loc_B6BF31: FLdRfVar var_B4
  loc_B6BF34: FLdPr var_B0
  loc_B6BF37: from_stack_1 = clsboleto.UbicPost
  loc_B6BF3C: LitI2_Byte 0
  loc_B6BF3E: LitVar_Missing var_140
  loc_B6BF41: LitI2_Byte 0
  loc_B6BF43: FLdZeroAd var_B4
  loc_B6BF46: CVarStr var_12C
  loc_B6BF49: PopAdLdVar
  loc_B6BF4A: FLdPr Me
  loc_B6BF4D: MemLdStr global_88
  loc_B6BF50: FLdPr Me
  loc_B6BF53: MemLdStr global_84
  loc_B6BF56: AryLock
  loc_B6BF59: Ary1LdPr
  loc_B6BF5A: MemLdRfVar from_stack_1.global_28
  loc_B6BF5D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6BF62: AryUnlock
  loc_B6BF65: FFreeVar var_12C = ""
  loc_B6BF6C: FLdRfVar var_B4
  loc_B6BF6F: FLdPr var_B0
  loc_B6BF72: from_stack_1 = clsboleto.DeloPost
  loc_B6BF77: LitI2_Byte 0
  loc_B6BF79: LitVar_Missing var_140
  loc_B6BF7C: LitI2_Byte 0
  loc_B6BF7E: FLdZeroAd var_B4
  loc_B6BF81: CVarStr var_12C
  loc_B6BF84: PopAdLdVar
  loc_B6BF85: FLdPr Me
  loc_B6BF88: MemLdStr global_88
  loc_B6BF8B: FLdPr Me
  loc_B6BF8E: MemLdStr global_84
  loc_B6BF91: AryLock
  loc_B6BF94: Ary1LdPr
  loc_B6BF95: MemLdRfVar from_stack_1.global_32
  loc_B6BF98: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6BF9D: AryUnlock
  loc_B6BFA0: FFreeVar var_12C = ""
  loc_B6BFA7: LitI2_Byte 1
  loc_B6BFA9: PopTmpLdAd2 var_CA
  loc_B6BFAC: FLdPr var_B0
  loc_B6BFAF: Call clsboleto.Move(from_stack_1v)
  loc_B6BFB4: FLdPr Me
  loc_B6BFB7: MemLdRfVar from_stack_1.global_88
  loc_B6BFBA: NextI4 var_11C, loc_B6BD97
  loc_B6BFBF: LitNothing
  loc_B6BFC1: FStAd var_B0 
  loc_B6BFC5: LitI2_Byte &HFF
  loc_B6BFC7: FLdPr Me
  loc_B6BFCA: MemStI2 bGenerado
  loc_B6BFCD: LitI4 0
  loc_B6BFD2: CI2I4
  loc_B6BFD3: FLdPr Me
  loc_B6BFD6: Me.MousePointer = from_stack_1
  loc_B6BFDB: LitVarStr var_94, vbNullString
  loc_B6BFE0: PopAdLdVar
  loc_B6BFE1: FLdPr Me
  loc_B6BFE4: VCallAd Control_ID_statusBar
  loc_B6BFE7: FStAdFunc var_A8
  loc_B6BFEA: FLdPr var_A8
  loc_B6BFED: LateIdSt
  loc_B6BFF2: FFree1Ad var_A8
  loc_B6BFF5: ExitProcHresult
  loc_B6BFF6: AddCy
End Sub

Public Sub GeneraHTML(arg_10) 'B09E9C
  'Data Table: 473124
  loc_B09CA4: LitStr " "
  loc_B09CA7: FStStrCopy var_88
  loc_B09CAA: FLdRfVar var_8C
  loc_B09CAD: LitI2_Byte 0
  loc_B09CAF: LitI2_Byte &HFF
  loc_B09CB1: ImpAdLdI4 MemVar_D93C84
  loc_B09CB4: FLdPr Me
  loc_B09CB7: MemLdRfVar from_stack_1.global_56
  loc_B09CBA: NewIfNullPr IFileSystem3
  loc_B09CBD: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B09CC2: ILdRf var_8C
  loc_B09CC5: FLdPr Me
  loc_B09CC8: MemStVarAd
  loc_B09CCC: FFree1Ad var_8C
  loc_B09CCF: LitI2_Byte &HFF
  loc_B09CD1: ImpAdStI2 MemVar_D93C8A
  loc_B09CD4: Call Proc_176_16_BF1874()
  loc_B09CD9: LitI4 1
  loc_B09CDE: FLdPr Me
  loc_B09CE1: MemLdRfVar from_stack_1.global_88
  loc_B09CE4: FLdPr Me
  loc_B09CE7: MemLdStr global_84
  loc_B09CEA: LitI2_Byte 1
  loc_B09CEC: FnUBound
  loc_B09CEE: ForI4 var_94
  loc_B09CF4: FLdPr Me
  loc_B09CF7: MemLdStr global_88
  loc_B09CFA: FLdPr Me
  loc_B09CFD: MemLdStr global_84
  loc_B09D00: AryLock
  loc_B09D03: Ary1LdRf
  loc_B09D04: FStR4 var_9C
  loc_B09D07: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B09D0C: PopAdLdVar
  loc_B09D0D: FLdPr Me
  loc_B09D10: MemLdRfVar from_stack_1.global_60
  loc_B09D13: LdPrVar
  loc_B09D15: LateMemCall
  loc_B09D1B: LitStr vbNullString
  loc_B09D1E: LitI2_Byte 0
  loc_B09D20: LitI2_Byte 0
  loc_B09D22: LitI2_Byte 0
  loc_B09D24: LitStr "right"
  loc_B09D27: FMemLdR4 var_9C(0)
  loc_B09D2C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B09D31: CVarStr var_CC
  loc_B09D34: PopAdLdVar
  loc_B09D35: FLdPr Me
  loc_B09D38: MemLdRfVar from_stack_1.global_60
  loc_B09D3B: LdPrVar
  loc_B09D3D: LateMemCall
  loc_B09D43: FFree1Var var_CC = ""
  loc_B09D46: LitStr vbNullString
  loc_B09D49: LitI2_Byte 0
  loc_B09D4B: LitI2_Byte 0
  loc_B09D4D: LitI2_Byte 0
  loc_B09D4F: LitStr "left"
  loc_B09D52: FMemLdR4 var_9C(4)
  loc_B09D57: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B09D5C: CVarStr var_CC
  loc_B09D5F: PopAdLdVar
  loc_B09D60: FLdPr Me
  loc_B09D63: MemLdRfVar from_stack_1.global_60
  loc_B09D66: LdPrVar
  loc_B09D68: LateMemCall
  loc_B09D6E: FFree1Var var_CC = ""
  loc_B09D71: LitStr vbNullString
  loc_B09D74: LitI2_Byte 0
  loc_B09D76: LitI2_Byte 0
  loc_B09D78: LitI2_Byte 0
  loc_B09D7A: LitStr "left"
  loc_B09D7D: FMemLdR4 var_9C(8)
  loc_B09D82: ILdRf var_88
  loc_B09D85: ConcatStr
  loc_B09D86: FStStrNoPop var_D0
  loc_B09D89: FMemLdR4 var_9C(12)
  loc_B09D8E: ConcatStr
  loc_B09D8F: FStStrNoPop var_D4
  loc_B09D92: ILdRf var_88
  loc_B09D95: ConcatStr
  loc_B09D96: FStStrNoPop var_D8
  loc_B09D99: FMemLdR4 var_9C(16)
  loc_B09D9E: ConcatStr
  loc_B09D9F: FStStrNoPop var_DC
  loc_B09DA2: ILdRf var_88
  loc_B09DA5: ConcatStr
  loc_B09DA6: FStStrNoPop var_E0
  loc_B09DA9: FMemLdR4 var_9C(20)
  loc_B09DAE: ConcatStr
  loc_B09DAF: FStStrNoPop var_E4
  loc_B09DB2: ILdRf var_88
  loc_B09DB5: ConcatStr
  loc_B09DB6: FStStrNoPop var_E8
  loc_B09DB9: FMemLdR4 var_9C(24)
  loc_B09DBE: ConcatStr
  loc_B09DBF: FStStrNoPop var_EC
  loc_B09DC2: ILdRf var_88
  loc_B09DC5: ConcatStr
  loc_B09DC6: FStStrNoPop var_F0
  loc_B09DC9: FMemLdR4 var_9C(28)
  loc_B09DCE: ConcatStr
  loc_B09DCF: FStStrNoPop var_F4
  loc_B09DD2: ILdRf var_88
  loc_B09DD5: ConcatStr
  loc_B09DD6: FStStrNoPop var_F8
  loc_B09DD9: FMemLdR4 var_9C(32)
  loc_B09DDE: ConcatStr
  loc_B09DDF: FStStrNoPop var_FC
  loc_B09DE2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B09DE7: CVarStr var_CC
  loc_B09DEA: PopAdLdVar
  loc_B09DEB: FLdPr Me
  loc_B09DEE: MemLdRfVar from_stack_1.global_60
  loc_B09DF1: LdPrVar
  loc_B09DF3: LateMemCall
  loc_B09DF9: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B09E14: FFree1Var var_CC = ""
  loc_B09E17: LitVarStr var_AC, "   <td height=""30"">&nbsp;</td>"
  loc_B09E1C: PopAdLdVar
  loc_B09E1D: FLdPr Me
  loc_B09E20: MemLdRfVar from_stack_1.global_60
  loc_B09E23: LdPrVar
  loc_B09E25: LateMemCall
  loc_B09E2B: LitVarStr var_AC, "   <td height=""30"">&nbsp;</td>"
  loc_B09E30: PopAdLdVar
  loc_B09E31: FLdPr Me
  loc_B09E34: MemLdRfVar from_stack_1.global_60
  loc_B09E37: LdPrVar
  loc_B09E39: LateMemCall
  loc_B09E3F: LitVarStr var_AC, "   <td height=""30"">&nbsp;</td>"
  loc_B09E44: PopAdLdVar
  loc_B09E45: FLdPr Me
  loc_B09E48: MemLdRfVar from_stack_1.global_60
  loc_B09E4B: LdPrVar
  loc_B09E4D: LateMemCall
  loc_B09E53: LitVarStr var_AC, "     </tr>"
  loc_B09E58: PopAdLdVar
  loc_B09E59: FLdPr Me
  loc_B09E5C: MemLdRfVar from_stack_1.global_60
  loc_B09E5F: LdPrVar
  loc_B09E61: LateMemCall
  loc_B09E67: LitI4 0
  loc_B09E6C: FStR4 var_9C
  loc_B09E6F: AryUnlock
  loc_B09E72: FLdPr Me
  loc_B09E75: MemLdRfVar from_stack_1.global_88
  loc_B09E78: NextI4 var_94, loc_B09CF4
  loc_B09E7D: Call Proc_176_17_A0B338()
  loc_B09E82: FLdPr Me
  loc_B09E85: MemLdRfVar from_stack_1.global_60
  loc_B09E88: LdPrVar
  loc_B09E8A: LateMemCall
  loc_B09E90: LitStr vbNullString
  loc_B09E93: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B09E98: ExitProcHresult
  loc_B09E99: CRec2Uni arg_101B
End Sub

Private Function Proc_176_15_ACF708() 'ACF708
  'Data Table: 473124
  loc_ACF5F4: FLdPr Me
  loc_ACF5F7: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_ACF5FA: FStAdFunc var_88
  loc_ACF5FD: FLdPr var_88
  loc_ACF600: LateIdLdVar var_98 DispID_22 0
  loc_ACF607: PopAd
  loc_ACF609: FLdPr Me
  loc_ACF60C: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_ACF60F: FStAdFunc var_A0
  loc_ACF612: FLdPr var_A0
  loc_ACF615: LateIdLdVar var_B0 DispID_22 0
  loc_ACF61C: PopAd
  loc_ACF61E: LitVarStr var_E4, vbNullString
  loc_ACF623: FStVarCopyObj var_F4
  loc_ACF626: FLdRfVar var_F4
  loc_ACF629: LitStr " AND liqutasa.OrdeLita >= "
  loc_ACF62C: FLdRfVar var_B0
  loc_ACF62F: CStrVarTmp
  loc_ACF630: FStStrNoPop var_B4
  loc_ACF633: ConcatStr
  loc_ACF634: CVarStr var_D4
  loc_ACF637: FLdRfVar var_98
  loc_ACF63A: CStrVarTmp
  loc_ACF63B: FStStrNoPop var_9C
  loc_ACF63E: LitStr vbNullString
  loc_ACF641: NeStr
  loc_ACF643: CVarBoolI2 var_C4
  loc_ACF647: FLdRfVar var_104
  loc_ACF64A: ImpAdCallFPR4  = IIf(, , )
  loc_ACF64F: FLdRfVar var_104
  loc_ACF652: CStrVarTmp
  loc_ACF653: FStStrNoPop var_108
  loc_ACF656: FLdPr Me
  loc_ACF659: MemStStrCopy
  loc_ACF65D: FFreeStr var_9C = "": var_B4 = ""
  loc_ACF666: FFreeAd var_88 = ""
  loc_ACF66D: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_ACF67C: FLdPr Me
  loc_ACF67F: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_ACF682: FStAdFunc var_88
  loc_ACF685: FLdPr var_88
  loc_ACF688: LateIdLdVar var_98 DispID_22 0
  loc_ACF68F: PopAd
  loc_ACF691: FLdPr Me
  loc_ACF694: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_ACF697: FStAdFunc var_A0
  loc_ACF69A: FLdPr var_A0
  loc_ACF69D: LateIdLdVar var_B0 DispID_22 0
  loc_ACF6A4: PopAd
  loc_ACF6A6: LitVarStr var_E4, vbNullString
  loc_ACF6AB: FStVarCopyObj var_F4
  loc_ACF6AE: FLdRfVar var_F4
  loc_ACF6B1: LitStr " AND liqutasa.OrdeLita <= "
  loc_ACF6B4: FLdRfVar var_B0
  loc_ACF6B7: CStrVarTmp
  loc_ACF6B8: FStStrNoPop var_B4
  loc_ACF6BB: ConcatStr
  loc_ACF6BC: CVarStr var_D4
  loc_ACF6BF: FLdRfVar var_98
  loc_ACF6C2: CStrVarTmp
  loc_ACF6C3: FStStrNoPop var_9C
  loc_ACF6C6: LitStr vbNullString
  loc_ACF6C9: NeStr
  loc_ACF6CB: CVarBoolI2 var_C4
  loc_ACF6CF: FLdRfVar var_104
  loc_ACF6D2: ImpAdCallFPR4  = IIf(, , )
  loc_ACF6D7: FLdRfVar var_104
  loc_ACF6DA: CStrVarTmp
  loc_ACF6DB: FStStrNoPop var_108
  loc_ACF6DE: FLdPr Me
  loc_ACF6E1: MemStStrCopy
  loc_ACF6E5: FFreeStr var_9C = "": var_B4 = ""
  loc_ACF6EE: FFreeAd var_88 = ""
  loc_ACF6F5: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_ACF704: ExitProcHresult
End Function

Private Function Proc_176_16_BF1874() 'BF1874
  'Data Table: 473124
  loc_BF1044: LitVarStr var_98, "<html>"
  loc_BF1049: PopAdLdVar
  loc_BF104A: FLdPr Me
  loc_BF104D: MemLdRfVar from_stack_1.global_60
  loc_BF1050: LdPrVar
  loc_BF1052: LateMemCall
  loc_BF1058: LitVarStr var_98, "<head>"
  loc_BF105D: PopAdLdVar
  loc_BF105E: FLdPr Me
  loc_BF1061: MemLdRfVar from_stack_1.global_60
  loc_BF1064: LdPrVar
  loc_BF1066: LateMemCall
  loc_BF106C: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BF1071: PopAdLdVar
  loc_BF1072: FLdPr Me
  loc_BF1075: MemLdRfVar from_stack_1.global_60
  loc_BF1078: LdPrVar
  loc_BF107A: LateMemCall
  loc_BF1080: LitStr "<title>"
  loc_BF1083: FLdRfVar var_AC
  loc_BF1086: FLdPr Me
  loc_BF1089:  = Me.Caption
  loc_BF108E: ILdRf var_AC
  loc_BF1091: ConcatStr
  loc_BF1092: FStStrNoPop var_B0
  loc_BF1095: LitStr "</title>"
  loc_BF1098: ConcatStr
  loc_BF1099: CVarStr var_C0
  loc_BF109C: PopAdLdVar
  loc_BF109D: FLdPr Me
  loc_BF10A0: MemLdRfVar from_stack_1.global_60
  loc_BF10A3: LdPrVar
  loc_BF10A5: LateMemCall
  loc_BF10AB: FFreeStr var_AC = ""
  loc_BF10B2: FFree1Var var_C0 = ""
  loc_BF10B5: LitVarStr var_98, "<style type=""text/css"">"
  loc_BF10BA: PopAdLdVar
  loc_BF10BB: FLdPr Me
  loc_BF10BE: MemLdRfVar from_stack_1.global_60
  loc_BF10C1: LdPrVar
  loc_BF10C3: LateMemCall
  loc_BF10C9: LitVarStr var_98, ".Titulo1 {"
  loc_BF10CE: PopAdLdVar
  loc_BF10CF: FLdPr Me
  loc_BF10D2: MemLdRfVar from_stack_1.global_60
  loc_BF10D5: LdPrVar
  loc_BF10D7: LateMemCall
  loc_BF10DD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BF10E2: PopAdLdVar
  loc_BF10E3: FLdPr Me
  loc_BF10E6: MemLdRfVar from_stack_1.global_60
  loc_BF10E9: LdPrVar
  loc_BF10EB: LateMemCall
  loc_BF10F1: LitVarStr var_98, " font-size: 18px;"
  loc_BF10F6: PopAdLdVar
  loc_BF10F7: FLdPr Me
  loc_BF10FA: MemLdRfVar from_stack_1.global_60
  loc_BF10FD: LdPrVar
  loc_BF10FF: LateMemCall
  loc_BF1105: LitVarStr var_98, " font-weight: bold;"
  loc_BF110A: PopAdLdVar
  loc_BF110B: FLdPr Me
  loc_BF110E: MemLdRfVar from_stack_1.global_60
  loc_BF1111: LdPrVar
  loc_BF1113: LateMemCall
  loc_BF1119: LitVarStr var_98, "}"
  loc_BF111E: PopAdLdVar
  loc_BF111F: FLdPr Me
  loc_BF1122: MemLdRfVar from_stack_1.global_60
  loc_BF1125: LdPrVar
  loc_BF1127: LateMemCall
  loc_BF112D: LitVarStr var_98, ".Titulo2 {"
  loc_BF1132: PopAdLdVar
  loc_BF1133: FLdPr Me
  loc_BF1136: MemLdRfVar from_stack_1.global_60
  loc_BF1139: LdPrVar
  loc_BF113B: LateMemCall
  loc_BF1141: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BF1146: PopAdLdVar
  loc_BF1147: FLdPr Me
  loc_BF114A: MemLdRfVar from_stack_1.global_60
  loc_BF114D: LdPrVar
  loc_BF114F: LateMemCall
  loc_BF1155: LitVarStr var_98, " font-size: 14px;"
  loc_BF115A: PopAdLdVar
  loc_BF115B: FLdPr Me
  loc_BF115E: MemLdRfVar from_stack_1.global_60
  loc_BF1161: LdPrVar
  loc_BF1163: LateMemCall
  loc_BF1169: LitVarStr var_98, " font-weight: bold;"
  loc_BF116E: PopAdLdVar
  loc_BF116F: FLdPr Me
  loc_BF1172: MemLdRfVar from_stack_1.global_60
  loc_BF1175: LdPrVar
  loc_BF1177: LateMemCall
  loc_BF117D: LitVarStr var_98, "}"
  loc_BF1182: PopAdLdVar
  loc_BF1183: FLdPr Me
  loc_BF1186: MemLdRfVar from_stack_1.global_60
  loc_BF1189: LdPrVar
  loc_BF118B: LateMemCall
  loc_BF1191: LitVarStr var_98, ".Normal {"
  loc_BF1196: PopAdLdVar
  loc_BF1197: FLdPr Me
  loc_BF119A: MemLdRfVar from_stack_1.global_60
  loc_BF119D: LdPrVar
  loc_BF119F: LateMemCall
  loc_BF11A5: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BF11AA: PopAdLdVar
  loc_BF11AB: FLdPr Me
  loc_BF11AE: MemLdRfVar from_stack_1.global_60
  loc_BF11B1: LdPrVar
  loc_BF11B3: LateMemCall
  loc_BF11B9: LitVarStr var_98, " font-size: 12px;"
  loc_BF11BE: PopAdLdVar
  loc_BF11BF: FLdPr Me
  loc_BF11C2: MemLdRfVar from_stack_1.global_60
  loc_BF11C5: LdPrVar
  loc_BF11C7: LateMemCall
  loc_BF11CD: LitVarStr var_98, " font-style: normal;"
  loc_BF11D2: PopAdLdVar
  loc_BF11D3: FLdPr Me
  loc_BF11D6: MemLdRfVar from_stack_1.global_60
  loc_BF11D9: LdPrVar
  loc_BF11DB: LateMemCall
  loc_BF11E1: LitVarStr var_98, " font-weight: normal;"
  loc_BF11E6: PopAdLdVar
  loc_BF11E7: FLdPr Me
  loc_BF11EA: MemLdRfVar from_stack_1.global_60
  loc_BF11ED: LdPrVar
  loc_BF11EF: LateMemCall
  loc_BF11F5: LitVarStr var_98, " font-variant: normal;"
  loc_BF11FA: PopAdLdVar
  loc_BF11FB: FLdPr Me
  loc_BF11FE: MemLdRfVar from_stack_1.global_60
  loc_BF1201: LdPrVar
  loc_BF1203: LateMemCall
  loc_BF1209: LitVarStr var_98, "}"
  loc_BF120E: PopAdLdVar
  loc_BF120F: FLdPr Me
  loc_BF1212: MemLdRfVar from_stack_1.global_60
  loc_BF1215: LdPrVar
  loc_BF1217: LateMemCall
  loc_BF121D: LitVarStr var_98, ".Encabezado {"
  loc_BF1222: PopAdLdVar
  loc_BF1223: FLdPr Me
  loc_BF1226: MemLdRfVar from_stack_1.global_60
  loc_BF1229: LdPrVar
  loc_BF122B: LateMemCall
  loc_BF1231: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BF1236: PopAdLdVar
  loc_BF1237: FLdPr Me
  loc_BF123A: MemLdRfVar from_stack_1.global_60
  loc_BF123D: LdPrVar
  loc_BF123F: LateMemCall
  loc_BF1245: LitVarStr var_98, " font-size: 11px;"
  loc_BF124A: PopAdLdVar
  loc_BF124B: FLdPr Me
  loc_BF124E: MemLdRfVar from_stack_1.global_60
  loc_BF1251: LdPrVar
  loc_BF1253: LateMemCall
  loc_BF1259: LitVarStr var_98, " font-weight: bold;"
  loc_BF125E: PopAdLdVar
  loc_BF125F: FLdPr Me
  loc_BF1262: MemLdRfVar from_stack_1.global_60
  loc_BF1265: LdPrVar
  loc_BF1267: LateMemCall
  loc_BF126D: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BF1272: PopAdLdVar
  loc_BF1273: FLdPr Me
  loc_BF1276: MemLdRfVar from_stack_1.global_60
  loc_BF1279: LdPrVar
  loc_BF127B: LateMemCall
  loc_BF1281: LitVarStr var_98, "}"
  loc_BF1286: PopAdLdVar
  loc_BF1287: FLdPr Me
  loc_BF128A: MemLdRfVar from_stack_1.global_60
  loc_BF128D: LdPrVar
  loc_BF128F: LateMemCall
  loc_BF1295: LitVarStr var_98, ".LineaDato {"
  loc_BF129A: PopAdLdVar
  loc_BF129B: FLdPr Me
  loc_BF129E: MemLdRfVar from_stack_1.global_60
  loc_BF12A1: LdPrVar
  loc_BF12A3: LateMemCall
  loc_BF12A9: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF12AE: PopAdLdVar
  loc_BF12AF: FLdPr Me
  loc_BF12B2: MemLdRfVar from_stack_1.global_60
  loc_BF12B5: LdPrVar
  loc_BF12B7: LateMemCall
  loc_BF12BD: LitVarStr var_98, " font-size: 10px;"
  loc_BF12C2: PopAdLdVar
  loc_BF12C3: FLdPr Me
  loc_BF12C6: MemLdRfVar from_stack_1.global_60
  loc_BF12C9: LdPrVar
  loc_BF12CB: LateMemCall
  loc_BF12D1: LitVarStr var_98, "}"
  loc_BF12D6: PopAdLdVar
  loc_BF12D7: FLdPr Me
  loc_BF12DA: MemLdRfVar from_stack_1.global_60
  loc_BF12DD: LdPrVar
  loc_BF12DF: LateMemCall
  loc_BF12E5: LitVarStr var_98, ".Totales {"
  loc_BF12EA: PopAdLdVar
  loc_BF12EB: FLdPr Me
  loc_BF12EE: MemLdRfVar from_stack_1.global_60
  loc_BF12F1: LdPrVar
  loc_BF12F3: LateMemCall
  loc_BF12F9: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF12FE: PopAdLdVar
  loc_BF12FF: FLdPr Me
  loc_BF1302: MemLdRfVar from_stack_1.global_60
  loc_BF1305: LdPrVar
  loc_BF1307: LateMemCall
  loc_BF130D: LitVarStr var_98, " font-size: 12px;"
  loc_BF1312: PopAdLdVar
  loc_BF1313: FLdPr Me
  loc_BF1316: MemLdRfVar from_stack_1.global_60
  loc_BF1319: LdPrVar
  loc_BF131B: LateMemCall
  loc_BF1321: LitVarStr var_98, " font-weight: bold;"
  loc_BF1326: PopAdLdVar
  loc_BF1327: FLdPr Me
  loc_BF132A: MemLdRfVar from_stack_1.global_60
  loc_BF132D: LdPrVar
  loc_BF132F: LateMemCall
  loc_BF1335: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BF133A: PopAdLdVar
  loc_BF133B: FLdPr Me
  loc_BF133E: MemLdRfVar from_stack_1.global_60
  loc_BF1341: LdPrVar
  loc_BF1343: LateMemCall
  loc_BF1349: LitVarStr var_98, "}"
  loc_BF134E: PopAdLdVar
  loc_BF134F: FLdPr Me
  loc_BF1352: MemLdRfVar from_stack_1.global_60
  loc_BF1355: LdPrVar
  loc_BF1357: LateMemCall
  loc_BF135D: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BF1362: PopAdLdVar
  loc_BF1363: FLdPr Me
  loc_BF1366: MemLdRfVar from_stack_1.global_60
  loc_BF1369: LdPrVar
  loc_BF136B: LateMemCall
  loc_BF1371: LitVarStr var_98, "</style>"
  loc_BF1376: PopAdLdVar
  loc_BF1377: FLdPr Me
  loc_BF137A: MemLdRfVar from_stack_1.global_60
  loc_BF137D: LdPrVar
  loc_BF137F: LateMemCall
  loc_BF1385: LitI4 0
  loc_BF138A: FStStrCopy var_B0
  loc_BF138D: FLdRfVar var_B0
  loc_BF1390: LitI4 0
  loc_BF1395: FStStrCopy var_AC
  loc_BF1398: FLdRfVar var_AC
  loc_BF139B: LitI2_Byte 0
  loc_BF139D: PopTmpLdAd2 var_C2
  loc_BF13A0: FLdPr Me
  loc_BF13A3: MemLdRfVar from_stack_1.global_60
  loc_BF13A6: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BF13AB: FFreeStr var_AC = ""
  loc_BF13B2: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BF13B7: PopAdLdVar
  loc_BF13B8: FLdPr Me
  loc_BF13BB: MemLdRfVar from_stack_1.global_60
  loc_BF13BE: LdPrVar
  loc_BF13C0: LateMemCall
  loc_BF13C6: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BF13CB: PopAdLdVar
  loc_BF13CC: FLdPr Me
  loc_BF13CF: MemLdRfVar from_stack_1.global_60
  loc_BF13D2: LdPrVar
  loc_BF13D4: LateMemCall
  loc_BF13DA: LitStr "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BF13DD: LitI2_Byte &H5F
  loc_BF13DF: CStrUI1
  loc_BF13E1: FStStrNoPop var_AC
  loc_BF13E4: ConcatStr
  loc_BF13E5: FStStrNoPop var_B0
  loc_BF13E8: LitStr """ height="""
  loc_BF13EB: ConcatStr
  loc_BF13EC: FStStrNoPop var_C8
  loc_BF13EF: LitI2_Byte &H3C
  loc_BF13F1: CStrUI1
  loc_BF13F3: FStStrNoPop var_CC
  loc_BF13F6: ConcatStr
  loc_BF13F7: FStStrNoPop var_D0
  loc_BF13FA: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BF13FD: ConcatStr
  loc_BF13FE: FStStrNoPop var_D4
  loc_BF1401: LitStr "Municipalidad de Guaymallén"
  loc_BF1404: ConcatStr
  loc_BF1405: FStStrNoPop var_D8
  loc_BF1408: LitStr "</p>"
  loc_BF140B: ConcatStr
  loc_BF140C: CVarStr var_C0
  loc_BF140F: PopAdLdVar
  loc_BF1410: FLdPr Me
  loc_BF1413: MemLdRfVar from_stack_1.global_60
  loc_BF1416: LdPrVar
  loc_BF1418: LateMemCall
  loc_BF141E: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BF142F: FFree1Var var_C0 = ""
  loc_BF1432: LitStr "    <p>"
  loc_BF1435: FLdRfVar var_AC
  loc_BF1438: FLdPr Me
  loc_BF143B:  = Me.Caption
  loc_BF1440: ILdRf var_AC
  loc_BF1443: ConcatStr
  loc_BF1444: FStStrNoPop var_B0
  loc_BF1447: LitStr "</p></th>"
  loc_BF144A: ConcatStr
  loc_BF144B: CVarStr var_C0
  loc_BF144E: PopAdLdVar
  loc_BF144F: FLdPr Me
  loc_BF1452: MemLdRfVar from_stack_1.global_60
  loc_BF1455: LdPrVar
  loc_BF1457: LateMemCall
  loc_BF145D: FFreeStr var_AC = ""
  loc_BF1464: FFree1Var var_C0 = ""
  loc_BF1467: LitVarStr var_98, "  </tr>"
  loc_BF146C: PopAdLdVar
  loc_BF146D: FLdPr Me
  loc_BF1470: MemLdRfVar from_stack_1.global_60
  loc_BF1473: LdPrVar
  loc_BF1475: LateMemCall
  loc_BF147B: LitVarStr var_98, "  <tr>"
  loc_BF1480: PopAdLdVar
  loc_BF1481: FLdPr Me
  loc_BF1484: MemLdRfVar from_stack_1.global_60
  loc_BF1487: LdPrVar
  loc_BF1489: LateMemCall
  loc_BF148F: LitVarStr var_98, "    <th colspan=""2""><hr></th>"
  loc_BF1494: PopAdLdVar
  loc_BF1495: FLdPr Me
  loc_BF1498: MemLdRfVar from_stack_1.global_60
  loc_BF149B: LdPrVar
  loc_BF149D: LateMemCall
  loc_BF14A3: LitVarStr var_98, "  </tr>"
  loc_BF14A8: PopAdLdVar
  loc_BF14A9: FLdPr Me
  loc_BF14AC: MemLdRfVar from_stack_1.global_60
  loc_BF14AF: LdPrVar
  loc_BF14B1: LateMemCall
  loc_BF14B7: FLdPr Me
  loc_BF14BA: MemLdRfVar from_stack_1.global_76
  loc_BF14BD: NewIfNullAd
  loc_BF14C0: FStAd var_DC 
  loc_BF14C4: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_BF14C9: PopAdLdVar
  loc_BF14CA: FLdPr Me
  loc_BF14CD: MemLdRfVar from_stack_1.global_60
  loc_BF14D0: LdPrVar
  loc_BF14D2: LateMemCall
  loc_BF14D8: LitStr "    <td width=""50" & Chr(37) & """><strong>Periodo: </strong>"
  loc_BF14DB: FLdRfVar var_C2
  loc_BF14DE: FLdPr var_DC
  loc_BF14E1: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BF14E6: FLdI2 var_C2
  loc_BF14E9: CStrUI1
  loc_BF14EB: FStStrNoPop var_AC
  loc_BF14EE: ConcatStr
  loc_BF14EF: FStStrNoPop var_B0
  loc_BF14F2: LitStr "</td>"
  loc_BF14F5: ConcatStr
  loc_BF14F6: CVarStr var_C0
  loc_BF14F9: PopAdLdVar
  loc_BF14FA: FLdPr Me
  loc_BF14FD: MemLdRfVar from_stack_1.global_60
  loc_BF1500: LdPrVar
  loc_BF1502: LateMemCall
  loc_BF1508: FFreeStr var_AC = ""
  loc_BF150F: FFree1Var var_C0 = ""
  loc_BF1512: LitVarStr var_98, "    <td width=""50" & Chr(37) & """><strong>Tipo de Liquidación: </strong>"
  loc_BF1517: FLdRfVar var_C0
  loc_BF151A: FLdPr var_DC
  loc_BF151D: from_stack_1 = clsliquidacion.DetaTili
  loc_BF1522: FLdRfVar var_C0
  loc_BF1525: ConcatVar var_EC
  loc_BF1529: LitVarStr var_A8, "</td>"
  loc_BF152E: ConcatVar var_FC
  loc_BF1532: PopAdLdVar
  loc_BF1533: FLdPr Me
  loc_BF1536: MemLdRfVar from_stack_1.global_60
  loc_BF1539: LdPrVar
  loc_BF153B: LateMemCall
  loc_BF1541: FFreeVar var_C0 = "": var_EC = ""
  loc_BF154A: LitVarStr var_98, "  </tr>"
  loc_BF154F: PopAdLdVar
  loc_BF1550: FLdPr Me
  loc_BF1553: MemLdRfVar from_stack_1.global_60
  loc_BF1556: LdPrVar
  loc_BF1558: LateMemCall
  loc_BF155E: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_BF1563: PopAdLdVar
  loc_BF1564: FLdPr Me
  loc_BF1567: MemLdRfVar from_stack_1.global_60
  loc_BF156A: LdPrVar
  loc_BF156C: LateMemCall
  loc_BF1572: LitStr "    <td><strong>Bimestre: </strong>"
  loc_BF1575: FLdRfVar var_C2
  loc_BF1578: FLdPr var_DC
  loc_BF157B: from_stack_1 = clsliquidacion.BimeLiqu
  loc_BF1580: FLdUI1
  loc_BF1584: CStrI2
  loc_BF1586: FStStrNoPop var_AC
  loc_BF1589: ConcatStr
  loc_BF158A: FStStrNoPop var_B0
  loc_BF158D: LitStr "</td>"
  loc_BF1590: ConcatStr
  loc_BF1591: CVarStr var_C0
  loc_BF1594: PopAdLdVar
  loc_BF1595: FLdPr Me
  loc_BF1598: MemLdRfVar from_stack_1.global_60
  loc_BF159B: LdPrVar
  loc_BF159D: LateMemCall
  loc_BF15A3: FFreeStr var_AC = ""
  loc_BF15AA: FFree1Var var_C0 = ""
  loc_BF15AD: LitStr "    <td><strong>Número: </strong>"
  loc_BF15B0: FLdRfVar var_C2
  loc_BF15B3: FLdPr var_DC
  loc_BF15B6: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BF15BB: FLdI2 var_C2
  loc_BF15BE: CStrUI1
  loc_BF15C0: FStStrNoPop var_AC
  loc_BF15C3: ConcatStr
  loc_BF15C4: FStStrNoPop var_B0
  loc_BF15C7: LitStr "</td>"
  loc_BF15CA: ConcatStr
  loc_BF15CB: CVarStr var_C0
  loc_BF15CE: PopAdLdVar
  loc_BF15CF: FLdPr Me
  loc_BF15D2: MemLdRfVar from_stack_1.global_60
  loc_BF15D5: LdPrVar
  loc_BF15D7: LateMemCall
  loc_BF15DD: FFreeStr var_AC = ""
  loc_BF15E4: FFree1Var var_C0 = ""
  loc_BF15E7: LitVarStr var_98, "  </tr>"
  loc_BF15EC: PopAdLdVar
  loc_BF15ED: FLdPr Me
  loc_BF15F0: MemLdRfVar from_stack_1.global_60
  loc_BF15F3: LdPrVar
  loc_BF15F5: LateMemCall
  loc_BF15FB: LitNothing
  loc_BF15FD: FStAd var_DC 
  loc_BF1601: FLdPr Me
  loc_BF1604: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_BF1607: FStAdFunc var_110
  loc_BF160A: FLdPr var_110
  loc_BF160D: LateIdLdVar var_C0 DispID_22 0
  loc_BF1614: CStrVarTmp
  loc_BF1615: FStStrNoPop var_AC
  loc_BF1618: LitStr vbNullString
  loc_BF161B: NeStr
  loc_BF161D: FLdPr Me
  loc_BF1620: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_BF1623: FStAdFunc var_114
  loc_BF1626: FLdPr var_114
  loc_BF1629: LateIdLdVar var_EC DispID_22 0
  loc_BF1630: CStrVarTmp
  loc_BF1631: FStStrNoPop var_B0
  loc_BF1634: LitStr vbNullString
  loc_BF1637: NeStr
  loc_BF1639: OrI4
  loc_BF163A: FFreeStr var_AC = ""
  loc_BF1641: FFreeAd var_110 = ""
  loc_BF1648: FFreeVar var_C0 = ""
  loc_BF164F: BranchF loc_BF1782
  loc_BF1652: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_BF1657: PopAdLdVar
  loc_BF1658: FLdPr Me
  loc_BF165B: MemLdRfVar from_stack_1.global_60
  loc_BF165E: LdPrVar
  loc_BF1660: LateMemCall
  loc_BF1666: FLdPr Me
  loc_BF1669: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_BF166C: FStAdFunc var_110
  loc_BF166F: FLdPr var_110
  loc_BF1672: LateIdLdVar var_C0 DispID_22 0
  loc_BF1679: CStrVarTmp
  loc_BF167A: FStStrNoPop var_AC
  loc_BF167D: LitStr vbNullString
  loc_BF1680: NeStr
  loc_BF1682: FFree1Str var_AC
  loc_BF1685: FFree1Ad var_110
  loc_BF1688: FFree1Var var_C0 = ""
  loc_BF168B: BranchF loc_BF16D6
  loc_BF168E: LitStr "    <td width=""50" & Chr(37) & """><strong>Desde: </strong>"
  loc_BF1691: FLdPr Me
  loc_BF1694: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_BF1697: FStAdFunc var_110
  loc_BF169A: FLdPr var_110
  loc_BF169D: LateIdLdVar var_C0 DispID_22 0
  loc_BF16A4: CStrVarTmp
  loc_BF16A5: FStStrNoPop var_AC
  loc_BF16A8: ConcatStr
  loc_BF16A9: FStStrNoPop var_B0
  loc_BF16AC: LitStr "</td>"
  loc_BF16AF: ConcatStr
  loc_BF16B0: CVarStr var_EC
  loc_BF16B3: PopAdLdVar
  loc_BF16B4: FLdPr Me
  loc_BF16B7: MemLdRfVar from_stack_1.global_60
  loc_BF16BA: LdPrVar
  loc_BF16BC: LateMemCall
  loc_BF16C2: FFreeStr var_AC = ""
  loc_BF16C9: FFree1Ad var_110
  loc_BF16CC: FFreeVar var_C0 = ""
  loc_BF16D3: Branch loc_BF16EA
  loc_BF16D6: LitVarStr var_98, "    <td width=""50" & Chr(37) & """>&nbsp;</td>"
  loc_BF16DB: PopAdLdVar
  loc_BF16DC: FLdPr Me
  loc_BF16DF: MemLdRfVar from_stack_1.global_60
  loc_BF16E2: LdPrVar
  loc_BF16E4: LateMemCall
  loc_BF16EA: FLdPr Me
  loc_BF16ED: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_BF16F0: FStAdFunc var_110
  loc_BF16F3: FLdPr var_110
  loc_BF16F6: LateIdLdVar var_C0 DispID_22 0
  loc_BF16FD: CStrVarTmp
  loc_BF16FE: FStStrNoPop var_AC
  loc_BF1701: LitStr vbNullString
  loc_BF1704: NeStr
  loc_BF1706: FFree1Str var_AC
  loc_BF1709: FFree1Ad var_110
  loc_BF170C: FFree1Var var_C0 = ""
  loc_BF170F: BranchF loc_BF175A
  loc_BF1712: LitStr "    <td width=""50" & Chr(37) & """><strong>Desde: </strong>"
  loc_BF1715: FLdPr Me
  loc_BF1718: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_BF171B: FStAdFunc var_110
  loc_BF171E: FLdPr var_110
  loc_BF1721: LateIdLdVar var_C0 DispID_22 0
  loc_BF1728: CStrVarTmp
  loc_BF1729: FStStrNoPop var_AC
  loc_BF172C: ConcatStr
  loc_BF172D: FStStrNoPop var_B0
  loc_BF1730: LitStr "</td>"
  loc_BF1733: ConcatStr
  loc_BF1734: CVarStr var_EC
  loc_BF1737: PopAdLdVar
  loc_BF1738: FLdPr Me
  loc_BF173B: MemLdRfVar from_stack_1.global_60
  loc_BF173E: LdPrVar
  loc_BF1740: LateMemCall
  loc_BF1746: FFreeStr var_AC = ""
  loc_BF174D: FFree1Ad var_110
  loc_BF1750: FFreeVar var_C0 = ""
  loc_BF1757: Branch loc_BF176E
  loc_BF175A: LitVarStr var_98, "    <td width=""50" & Chr(37) & """>&nbsp;</td>"
  loc_BF175F: PopAdLdVar
  loc_BF1760: FLdPr Me
  loc_BF1763: MemLdRfVar from_stack_1.global_60
  loc_BF1766: LdPrVar
  loc_BF1768: LateMemCall
  loc_BF176E: LitVarStr var_98, "  </tr>"
  loc_BF1773: PopAdLdVar
  loc_BF1774: FLdPr Me
  loc_BF1777: MemLdRfVar from_stack_1.global_60
  loc_BF177A: LdPrVar
  loc_BF177C: LateMemCall
  loc_BF1782: LitVarStr var_98, "</table>"
  loc_BF1787: PopAdLdVar
  loc_BF1788: FLdPr Me
  loc_BF178B: MemLdRfVar from_stack_1.global_60
  loc_BF178E: LdPrVar
  loc_BF1790: LateMemCall
  loc_BF1796: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BF179B: PopAdLdVar
  loc_BF179C: FLdPr Me
  loc_BF179F: MemLdRfVar from_stack_1.global_60
  loc_BF17A2: LdPrVar
  loc_BF17A4: LateMemCall
  loc_BF17AA: LitVarStr var_98, "  <thead>"
  loc_BF17AF: PopAdLdVar
  loc_BF17B0: FLdPr Me
  loc_BF17B3: MemLdRfVar from_stack_1.global_60
  loc_BF17B6: LdPrVar
  loc_BF17B8: LateMemCall
  loc_BF17BE: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BF17C3: PopAdLdVar
  loc_BF17C4: FLdPr Me
  loc_BF17C7: MemLdRfVar from_stack_1.global_60
  loc_BF17CA: LdPrVar
  loc_BF17CC: LateMemCall
  loc_BF17D2: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_BF17D7: PopAdLdVar
  loc_BF17D8: FLdPr Me
  loc_BF17DB: MemLdRfVar from_stack_1.global_60
  loc_BF17DE: LdPrVar
  loc_BF17E0: LateMemCall
  loc_BF17E6: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_BF17EB: PopAdLdVar
  loc_BF17EC: FLdPr Me
  loc_BF17EF: MemLdRfVar from_stack_1.global_60
  loc_BF17F2: LdPrVar
  loc_BF17F4: LateMemCall
  loc_BF17FA: LitVarStr var_98, "    <th>Domicilio</th>"
  loc_BF17FF: PopAdLdVar
  loc_BF1800: FLdPr Me
  loc_BF1803: MemLdRfVar from_stack_1.global_60
  loc_BF1806: LdPrVar
  loc_BF1808: LateMemCall
  loc_BF180E: LitVarStr var_98, "    <th width=""40"">Fecha</th>"
  loc_BF1813: PopAdLdVar
  loc_BF1814: FLdPr Me
  loc_BF1817: MemLdRfVar from_stack_1.global_60
  loc_BF181A: LdPrVar
  loc_BF181C: LateMemCall
  loc_BF1822: LitVarStr var_98, "    <th width=""60"">Firma</th>"
  loc_BF1827: PopAdLdVar
  loc_BF1828: FLdPr Me
  loc_BF182B: MemLdRfVar from_stack_1.global_60
  loc_BF182E: LdPrVar
  loc_BF1830: LateMemCall
  loc_BF1836: LitVarStr var_98, "    <th width=""80"">Aclaración</th>"
  loc_BF183B: PopAdLdVar
  loc_BF183C: FLdPr Me
  loc_BF183F: MemLdRfVar from_stack_1.global_60
  loc_BF1842: LdPrVar
  loc_BF1844: LateMemCall
  loc_BF184A: LitVarStr var_98, "  </tr>"
  loc_BF184F: PopAdLdVar
  loc_BF1850: FLdPr Me
  loc_BF1853: MemLdRfVar from_stack_1.global_60
  loc_BF1856: LdPrVar
  loc_BF1858: LateMemCall
  loc_BF185E: LitVarStr var_98, "  </thead>"
  loc_BF1863: PopAdLdVar
  loc_BF1864: FLdPr Me
  loc_BF1867: MemLdRfVar from_stack_1.global_60
  loc_BF186A: LdPrVar
  loc_BF186C: LateMemCall
  loc_BF1872: ExitProcHresult
End Function

Private Function Proc_176_17_A0B338() 'A0B338
  'Data Table: 473124
  loc_A0B2F8: LitVarStr var_94, "</table>"
  loc_A0B2FD: PopAdLdVar
  loc_A0B2FE: FLdPr Me
  loc_A0B301: MemLdRfVar from_stack_1.global_60
  loc_A0B304: LdPrVar
  loc_A0B306: LateMemCall
  loc_A0B30C: LitVarStr var_94, "</body>"
  loc_A0B311: PopAdLdVar
  loc_A0B312: FLdPr Me
  loc_A0B315: MemLdRfVar from_stack_1.global_60
  loc_A0B318: LdPrVar
  loc_A0B31A: LateMemCall
  loc_A0B320: LitVarStr var_94, "</html>"
  loc_A0B325: PopAdLdVar
  loc_A0B326: FLdPr Me
  loc_A0B329: MemLdRfVar from_stack_1.global_60
  loc_A0B32C: LdPrVar
  loc_A0B32E: LateMemCall
  loc_A0B334: ExitProcHresult
  loc_A0B335: CVarCy Proc_176_17_A0B33800
End Function
