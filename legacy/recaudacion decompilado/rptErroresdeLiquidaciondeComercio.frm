VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptErroresdeLiquidaciondeComercio
  Caption = "Errores de Liquidación de Comercio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptErroresdeLiquidaciondeComercio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10836
  ClientHeight = 6852
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6600
    Width = 10830
    Height = 255
    TabIndex = 10
    OleObjectBlob = "rptErroresdeLiquidaciondeComercio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7560
    Top = 5400
    Width = 855
    Height = 735
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptErroresdeLiquidaciondeComercio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptErroresdeLiquidaciondeComercio.frx":0B9C
    Left = 8400
    Top = 5280
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 5280
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
    Top = 5280
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
    Width = 10575
    Height = 5175
    TabIndex = 6
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8880
      Top = 240
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
    Begin MSDataGridLib.DataGrid dgdLiquidacion
      Left = 240
      Top = 240
      Width = 8400
      Height = 4755
      TabIndex = 0
      OleObjectBlob = "rptErroresdeLiquidaciondeComercio.frx":0C00
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7800
    Top = 5760
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptErroresdeLiquidaciondeComercio.frx":0F06
  End
End

Attribute VB_Name = "rptErroresdeLiquidaciondeComercio"

Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdSalir_Click() 'A038F0
  'Data Table: 44B400
  loc_A038C0: LitVarStr var_94, "Cerrando..."
  loc_A038C5: PopAdLdVar
  loc_A038C6: FLdPr Me
  loc_A038C9: VCallAd Control_ID_statusBar
  loc_A038CC: FStAdFunc var_A8
  loc_A038CF: FLdPr var_A8
  loc_A038D2: LateIdSt
  loc_A038D7: FFree1Ad var_A8
  loc_A038DA: ILdRf Me
  loc_A038DD: FStAdNoPop
  loc_A038E1: ImpAdLdRf MemVar_D9C5D8
  loc_A038E4: NewIfNullPr Global
  loc_A038E7: Global.Unload from_stack_1
  loc_A038EC: FFree1Ad var_A8
  loc_A038EF: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DEDEC
  'Data Table: 44B400
  loc_9DEDD0: LitI2_Byte 0
  loc_9DEDD2: PopTmpLdAd2 var_8A
  loc_9DEDD5: ILdRf Me
  loc_9DEDD8: CastAd
  loc_9DEDDB: FStAdFunc var_88
  loc_9DEDDE: FLdRfVar var_88
  loc_9DEDE1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DEDE6: FFree1Ad var_88
  loc_9DEDE9: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9C8384
  'Data Table: 44B400
  loc_9C836C: ILdRf Me
  loc_9C836F: CastAd
  loc_9C8372: FStAdFunc var_88
  loc_9C8375: FLdRfVar var_88
  loc_9C8378: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9C837D: FFree1Ad var_88
  loc_9C8380: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A425F8
  'Data Table: 44B400
  loc_A425A4: LitI2_Byte 0
  loc_A425A6: ILdRf Me
  loc_A425A9: CastAd
  loc_A425AC: FStAdFunc var_88
  loc_A425AF: FLdRfVar var_88
  loc_A425B2: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A425B7: FFree1Ad var_88
  loc_A425BA: FLdRfVar var_8A
  loc_A425BD: FLdPr Me
  loc_A425C0: VCallAd Control_ID_cmdPredeterminada
  loc_A425C3: FStAdFunc var_88
  loc_A425C6: FLdPr var_88
  loc_A425C9:  = Me.Enabled
  loc_A425CE: FLdI2 var_8A
  loc_A425D1: NotI4
  loc_A425D2: FFree1Ad var_88
  loc_A425D5: BranchF loc_A425E0
  loc_A425D8: ImpAdCallFPR4 DoEvents()
  loc_A425DD: Branch loc_A425BA
  loc_A425E0: ILdRf Me
  loc_A425E3: FStAdNoPop
  loc_A425E7: ImpAdLdRf MemVar_D9C5D8
  loc_A425EA: NewIfNullPr Global
  loc_A425ED: Global.Unload from_stack_1
  loc_A425F2: FFree1Ad var_88
  loc_A425F5: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A16E58
  'Data Table: 44B400
  loc_A16E20: FLdPr Me
  loc_A16E23: VCallAd Control_ID_statusBar
  loc_A16E26: FStAdFunc var_88
  loc_A16E29: FLdPr var_88
  loc_A16E2C: LateIdLdVar var_98 DispID_1 0
  loc_A16E33: CStrVarTmp
  loc_A16E34: CVarStr var_A8
  loc_A16E37: PopAdLdVar
  loc_A16E38: FLdPr Me
  loc_A16E3B: VCallAd Control_ID_statusBar
  loc_A16E3E: FStAdFunc var_BC
  loc_A16E41: FLdPr var_BC
  loc_A16E44: LateIdSt
  loc_A16E49: FFreeAd var_88 = ""
  loc_A16E50: FFreeVar var_98 = ""
  loc_A16E57: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ABBCA4
  'Data Table: 44B400
  loc_ABBBB4: LitI2_Byte 0
  loc_ABBBB6: FLdPr Me
  loc_ABBBB9: MemStI2 bGenerado
  loc_ABBBBC: LitI2_Byte 0
  loc_ABBBBE: ILdRf Me
  loc_ABBBC1: CastAd
  loc_ABBBC4: FStAdFunc var_88
  loc_ABBBC7: FLdRfVar var_88
  loc_ABBBCA: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_ABBBCF: FFree1Ad var_88
  loc_ABBBD2: FLdPr Me
  loc_ABBBD5: MemLdRfVar from_stack_1.global_76
  loc_ABBBD8: NewIfNullPr clsliquidacion
  loc_ABBBDB: Call clsliquidacion.Requery()
  loc_ABBBE0: FLdRfVar var_8C
  loc_ABBBE3: FLdPr Me
  loc_ABBBE6: MemLdRfVar from_stack_1.global_76
  loc_ABBBE9: NewIfNullPr clsliquidacion
  loc_ABBBEC: from_stack_1 = clsliquidacion.RecordCount
  loc_ABBBF1: ILdRf var_8C
  loc_ABBBF4: LitI4 0
  loc_ABBBF9: GtI4
  loc_ABBBFA: BranchF loc_ABBC6C
  loc_ABBBFD: LitI4 0
  loc_ABBC02: LitI4 1
  loc_ABBC07: FLdRfVar var_90
  loc_ABBC0A: Redim
  loc_ABBC14: FLdPr Me
  loc_ABBC17: MemLdRfVar from_stack_1.global_76
  loc_ABBC1A: NewIfNullAd
  loc_ABBC1D: FStAd var_88 
  loc_ABBC21: FLdRfVar var_88
  loc_ABBC24: CVarRef
  loc_ABBC29: ParmAry1St
  loc_ABBC2F: FLdPr Me
  loc_ABBC32: VCallAd Control_ID_dgdLiquidacion
  loc_ABBC35: CVarAd
  loc_ABBC39: ParmAry1St
  loc_ABBC3F: FLdRfVar var_90
  loc_ABBC42: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ABBC47: ILdRf var_88
  loc_ABBC4A: CastAd
  loc_ABBC4D: FLdPr Me
  loc_ABBC50: MemStAdFunc
  loc_ABBC54: FLdRfVar var_90
  loc_ABBC57: Erase
  loc_ABBC58: FFree1Ad var_88
  loc_ABBC5B: FLdPr Me
  loc_ABBC5E: MemLdRfVar from_stack_1.global_76
  loc_ABBC61: NewIfNullPr clsliquidacion
  loc_ABBC64: Call clsliquidacion.MoveFirst()
  loc_ABBC69: Branch loc_ABBC88
  loc_ABBC6C: LitStr "No existen liquidaciones para listar"
  loc_ABBC6F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABBC74: ILdRf Me
  loc_ABBC77: CastAd
  loc_ABBC7A: FStAdFunc var_88
  loc_ABBC7D: FLdRfVar var_88
  loc_ABBC80: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_ABBC85: FFree1Ad var_88
  loc_ABBC88: Call HabilitarCriterio()
  loc_ABBC8D: ILdRf Me
  loc_ABBC90: CastAd
  loc_ABBC93: FStAdFunc var_88
  loc_ABBC96: FLdRfVar var_88
  loc_ABBC99: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ABBC9E: FFree1Ad var_88
  loc_ABBCA1: ExitProcHresult
End Sub

Private Sub Form_Load() 'A25668
  'Data Table: 44B400
  loc_A25628: ILdRf Me
  loc_A2562B: CastAd
  loc_A2562E: FStAdFunc var_88
  loc_A25631: FLdRfVar var_88
  loc_A25634: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A25639: FFree1Ad var_88
  loc_A2563C: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu"
  loc_A2563F: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A25642: ConcatStr
  loc_A25643: FStStrNoPop var_8C
  loc_A25646: LitStr " WHERE liquidacion.CodiOfic = 2 ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A25649: ConcatStr
  loc_A2564A: FStStrNoPop var_90
  loc_A2564D: FLdPr Me
  loc_A25650: MemLdRfVar from_stack_1.global_76
  loc_A25653: NewIfNullPr clsliquidacion
  loc_A25656: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A2565B: FFreeStr var_8C = ""
  loc_A25662: Call cmdNueva_Click()
  loc_A25667: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9C9C28
  'Data Table: 44B400
  loc_9C9C10: FLdPr Me
  loc_9C9C13: VCallAd Control_ID_wbbReporte
  loc_9C9C16: FStAdFunc var_88
  loc_9C9C19: FLdRfVar var_88
  loc_9C9C1C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9C9C21: FFree1Ad var_88
  loc_9C9C24: ExitProcHresult
End Sub

Public Function bGeneradoGet() '44BD44
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44BD53
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A11AE0
  'Data Table: 44B400
  loc_A11AAC: LitI4 0
  loc_A11AB1: LitI4 0
  loc_A11AB6: FLdRfVar var_88
  loc_A11AB9: Redim
  loc_A11AC3: FLdPr Me
  loc_A11AC6: VCallAd Control_ID_dgdLiquidacion
  loc_A11AC9: CVarAd
  loc_A11ACD: ParmAry1St
  loc_A11AD3: FLdRfVar var_88
  loc_A11AD6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A11ADB: FLdRfVar var_88
  loc_A11ADE: Erase
  loc_A11ADF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B2829C
  'Data Table: 44B400
  loc_B27FFC: FLdPr Me
  loc_B27FFF: MemLdI2 bGenerado
  loc_B28002: BranchF loc_B28006
  loc_B28005: ExitProcHresult
  loc_B28006: LitVarStr var_94, "Generando reporte..."
  loc_B2800B: PopAdLdVar
  loc_B2800C: FLdPr Me
  loc_B2800F: VCallAd Control_ID_statusBar
  loc_B28012: FStAdFunc var_A8
  loc_B28015: FLdPr var_A8
  loc_B28018: LateIdSt
  loc_B2801D: FFree1Ad var_A8
  loc_B28020: LitI4 &HB
  loc_B28025: CI2I4
  loc_B28026: FLdPr Me
  loc_B28029: Me.MousePointer = from_stack_1
  loc_B2802E: FLdRfVar var_AC
  loc_B28031: FLdPr Me
  loc_B28034: MemLdRfVar from_stack_1.global_76
  loc_B28037: NewIfNullPr clsliquidacion
  loc_B2803A: from_stack_1 = clsliquidacion.RecordCount
  loc_B2803F: ILdRf var_AC
  loc_B28042: LitI4 1
  loc_B28047: LtI4
  loc_B28048: BranchF loc_B28056
  loc_B2804B: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B2804E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B28053: Branch loc_B28272
  loc_B28056: FLdPr Me
  loc_B28059: MemLdRfVar from_stack_1.global_80
  loc_B2805C: NewIfNullAd
  loc_B2805F: FStAd var_B0 
  loc_B28063: LitStr "SELECT CuenCtct, NumeErli, FealErli, DetaErli FROM erroliqu"
  loc_B28066: LitStr " WHERE CodiOfic = 2 "
  loc_B28069: ConcatStr
  loc_B2806A: FStStrNoPop var_B4
  loc_B2806D: LitStr " AND erroliqu.PeriLiqu = "
  loc_B28070: ConcatStr
  loc_B28071: FStStrNoPop var_BC
  loc_B28074: FLdRfVar var_B6
  loc_B28077: FLdPr Me
  loc_B2807A: MemLdRfVar from_stack_1.global_76
  loc_B2807D: NewIfNullPr clsliquidacion
  loc_B28080: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B28085: FLdI2 var_B6
  loc_B28088: CStrUI1
  loc_B2808A: FStStrNoPop var_C0
  loc_B2808D: ConcatStr
  loc_B2808E: FStStrNoPop var_C4
  loc_B28091: LitStr " AND erroliqu.CodiTili = "
  loc_B28094: ConcatStr
  loc_B28095: FStStrNoPop var_CC
  loc_B28098: FLdRfVar var_C6
  loc_B2809B: FLdPr Me
  loc_B2809E: MemLdRfVar from_stack_1.global_76
  loc_B280A1: NewIfNullPr clsliquidacion
  loc_B280A4: from_stack_1 = clsliquidacion.CodiTili
  loc_B280A9: FLdUI1
  loc_B280AD: CStrI2
  loc_B280AF: FStStrNoPop var_D0
  loc_B280B2: ConcatStr
  loc_B280B3: FStStrNoPop var_D4
  loc_B280B6: LitStr " AND erroliqu.NumeLiqu = "
  loc_B280B9: ConcatStr
  loc_B280BA: FStStrNoPop var_DC
  loc_B280BD: FLdRfVar var_D6
  loc_B280C0: FLdPr Me
  loc_B280C3: MemLdRfVar from_stack_1.global_76
  loc_B280C6: NewIfNullPr clsliquidacion
  loc_B280C9: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B280CE: FLdI2 var_D6
  loc_B280D1: CStrUI1
  loc_B280D3: FStStrNoPop var_E0
  loc_B280D6: ConcatStr
  loc_B280D7: FStStrNoPop var_E4
  loc_B280DA: LitStr " ORDER BY CuenCtct, NumeErli"
  loc_B280DD: ConcatStr
  loc_B280DE: FStStrNoPop var_E8
  loc_B280E1: FLdPr var_B0
  loc_B280E4: Call clserroliqu.RedefineRS(from_stack_1v)
  loc_B280E9: FFreeStr var_B4 = "": var_BC = "": var_C0 = "": var_C4 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B28102: FLdRfVar var_AC
  loc_B28105: FLdPr var_B0
  loc_B28108: from_stack_1 = clserroliqu.RecordCount
  loc_B2810D: ILdRf var_AC
  loc_B28110: LitI4 1
  loc_B28115: LtI4
  loc_B28116: BranchF loc_B28124
  loc_B28119: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B2811C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B28121: Branch loc_B28272
  loc_B28124: LitI4 0
  loc_B28129: FLdRfVar var_AC
  loc_B2812C: FLdPr var_B0
  loc_B2812F: from_stack_1 = clserroliqu.RecordCount
  loc_B28134: ILdRf var_AC
  loc_B28137: FLdPr Me
  loc_B2813A: MemLdRfVar from_stack_1.global_84
  loc_B2813D: Redim
  loc_B28147: LitI4 1
  loc_B2814C: FLdPr Me
  loc_B2814F: MemLdRfVar from_stack_1.global_88
  loc_B28152: FLdPr Me
  loc_B28155: MemLdStr global_84
  loc_B28158: LitI2_Byte 1
  loc_B2815A: FnUBound
  loc_B2815C: ForI4 var_F0
  loc_B28162: FLdRfVar var_B4
  loc_B28165: FLdPr var_B0
  loc_B28168: from_stack_1 = clserroliqu.CuenCtct
  loc_B2816D: LitI2_Byte 0
  loc_B2816F: LitVar_Missing var_114
  loc_B28172: LitI2_Byte 0
  loc_B28174: FLdZeroAd var_B4
  loc_B28177: CVarStr var_104
  loc_B2817A: PopAdLdVar
  loc_B2817B: FLdPr Me
  loc_B2817E: MemLdStr global_88
  loc_B28181: FLdPr Me
  loc_B28184: MemLdStr global_84
  loc_B28187: AryLock
  loc_B2818A: Ary1LdPr
  loc_B2818B: MemLdRfVar from_stack_1.global_0
  loc_B2818E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B28193: AryUnlock
  loc_B28196: FFreeVar var_104 = ""
  loc_B2819D: FLdRfVar var_B6
  loc_B281A0: FLdPr var_B0
  loc_B281A3: from_stack_1 = clserroliqu.NumeErli
  loc_B281A8: LitI2_Byte 0
  loc_B281AA: LitVar_Missing var_104
  loc_B281AD: LitI2_Byte 0
  loc_B281AF: FLdUI1
  loc_B281B3: CVarUI1
  loc_B281B7: PopAdLdVar
  loc_B281B8: FLdPr Me
  loc_B281BB: MemLdStr global_88
  loc_B281BE: FLdPr Me
  loc_B281C1: MemLdStr global_84
  loc_B281C4: AryLock
  loc_B281C7: Ary1LdPr
  loc_B281C8: MemLdRfVar from_stack_1.global_4
  loc_B281CB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B281D0: AryUnlock
  loc_B281D3: FFree1Var var_104 = ""
  loc_B281D6: FLdRfVar var_B4
  loc_B281D9: FLdPr var_B0
  loc_B281DC: from_stack_1 = clserroliqu.FealErli
  loc_B281E1: LitI2_Byte 0
  loc_B281E3: LitVar_Missing var_114
  loc_B281E6: LitI2_Byte 0
  loc_B281E8: FLdZeroAd var_B4
  loc_B281EB: CVarStr var_104
  loc_B281EE: PopAdLdVar
  loc_B281EF: FLdPr Me
  loc_B281F2: MemLdStr global_88
  loc_B281F5: FLdPr Me
  loc_B281F8: MemLdStr global_84
  loc_B281FB: AryLock
  loc_B281FE: Ary1LdPr
  loc_B281FF: MemLdRfVar from_stack_1.global_8
  loc_B28202: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B28207: AryUnlock
  loc_B2820A: FFreeVar var_104 = ""
  loc_B28211: FLdRfVar var_B4
  loc_B28214: FLdPr var_B0
  loc_B28217: from_stack_1 = clserroliqu.DetaErli
  loc_B2821C: LitI2_Byte 0
  loc_B2821E: LitVar_Missing var_114
  loc_B28221: LitI2_Byte 0
  loc_B28223: FLdZeroAd var_B4
  loc_B28226: CVarStr var_104
  loc_B28229: PopAdLdVar
  loc_B2822A: FLdPr Me
  loc_B2822D: MemLdStr global_88
  loc_B28230: FLdPr Me
  loc_B28233: MemLdStr global_84
  loc_B28236: AryLock
  loc_B28239: Ary1LdPr
  loc_B2823A: MemLdRfVar from_stack_1.global_12
  loc_B2823D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B28242: AryUnlock
  loc_B28245: FFreeVar var_104 = ""
  loc_B2824C: LitI2_Byte 1
  loc_B2824E: PopTmpLdAd2 var_B6
  loc_B28251: FLdPr var_B0
  loc_B28254: Call clserroliqu.Move(from_stack_1v)
  loc_B28259: FLdPr Me
  loc_B2825C: MemLdRfVar from_stack_1.global_88
  loc_B2825F: NextI4 var_F0, loc_B28162
  loc_B28264: LitNothing
  loc_B28266: FStAd var_B0 
  loc_B2826A: LitI2_Byte &HFF
  loc_B2826C: FLdPr Me
  loc_B2826F: MemStI2 bGenerado
  loc_B28272: LitI4 0
  loc_B28277: CI2I4
  loc_B28278: FLdPr Me
  loc_B2827B: Me.MousePointer = from_stack_1
  loc_B28280: LitVarStr var_94, vbNullString
  loc_B28285: PopAdLdVar
  loc_B28286: FLdPr Me
  loc_B28289: VCallAd Control_ID_statusBar
  loc_B2828C: FStAdFunc var_A8
  loc_B2828F: FLdPr var_A8
  loc_B28292: LateIdSt
  loc_B28297: FFree1Ad var_A8
  loc_B2829A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AE1624
  'Data Table: 44B400
  loc_AE14C0: FLdRfVar var_88
  loc_AE14C3: LitI2_Byte 0
  loc_AE14C5: LitI2_Byte &HFF
  loc_AE14C7: ImpAdLdI4 MemVar_D93C84
  loc_AE14CA: FLdPr Me
  loc_AE14CD: MemLdRfVar from_stack_1.global_56
  loc_AE14D0: NewIfNullPr IFileSystem3
  loc_AE14D3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE14D8: ILdRf var_88
  loc_AE14DB: FLdPr Me
  loc_AE14DE: MemStVarAd
  loc_AE14E2: FFree1Ad var_88
  loc_AE14E5: LitI2_Byte &HFF
  loc_AE14E7: ImpAdStI2 MemVar_D93C8A
  loc_AE14EA: Call Proc_219_13_BCCCB4()
  loc_AE14EF: LitI4 1
  loc_AE14F4: FLdPr Me
  loc_AE14F7: MemLdRfVar from_stack_1.global_88
  loc_AE14FA: FLdPr Me
  loc_AE14FD: MemLdStr global_84
  loc_AE1500: LitI2_Byte 1
  loc_AE1502: FnUBound
  loc_AE1504: ForI4 var_90
  loc_AE150A: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE150F: PopAdLdVar
  loc_AE1510: FLdPr Me
  loc_AE1513: MemLdRfVar from_stack_1.global_60
  loc_AE1516: LdPrVar
  loc_AE1518: LateMemCall
  loc_AE151E: FLdPr Me
  loc_AE1521: MemLdStr global_88
  loc_AE1524: FLdPr Me
  loc_AE1527: MemLdStr global_84
  loc_AE152A: AryLock
  loc_AE152D: Ary1LdRf
  loc_AE152E: FStR4 var_B8
  loc_AE1531: LitStr vbNullString
  loc_AE1534: LitI2_Byte 0
  loc_AE1536: LitI2_Byte 0
  loc_AE1538: LitI2_Byte 0
  loc_AE153A: LitStr "right"
  loc_AE153D: FMemLdR4 var_B8(0)
  loc_AE1542: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE1547: CVarStr var_C8
  loc_AE154A: PopAdLdVar
  loc_AE154B: FLdPr Me
  loc_AE154E: MemLdRfVar from_stack_1.global_60
  loc_AE1551: LdPrVar
  loc_AE1553: LateMemCall
  loc_AE1559: FFree1Var var_C8 = ""
  loc_AE155C: LitStr vbNullString
  loc_AE155F: LitI2_Byte 0
  loc_AE1561: LitI2_Byte 0
  loc_AE1563: LitI2_Byte 0
  loc_AE1565: LitStr "right"
  loc_AE1568: FMemLdR4 var_B8(4)
  loc_AE156D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE1572: CVarStr var_C8
  loc_AE1575: PopAdLdVar
  loc_AE1576: FLdPr Me
  loc_AE1579: MemLdRfVar from_stack_1.global_60
  loc_AE157C: LdPrVar
  loc_AE157E: LateMemCall
  loc_AE1584: FFree1Var var_C8 = ""
  loc_AE1587: LitStr vbNullString
  loc_AE158A: LitI2_Byte 0
  loc_AE158C: LitI2_Byte 0
  loc_AE158E: LitI2_Byte 0
  loc_AE1590: LitStr "center"
  loc_AE1593: FMemLdR4 var_B8(8)
  loc_AE1598: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE159D: CVarStr var_C8
  loc_AE15A0: PopAdLdVar
  loc_AE15A1: FLdPr Me
  loc_AE15A4: MemLdRfVar from_stack_1.global_60
  loc_AE15A7: LdPrVar
  loc_AE15A9: LateMemCall
  loc_AE15AF: FFree1Var var_C8 = ""
  loc_AE15B2: LitStr vbNullString
  loc_AE15B5: LitI2_Byte 0
  loc_AE15B7: LitI2_Byte 0
  loc_AE15B9: LitI2_Byte 0
  loc_AE15BB: LitStr "justify"
  loc_AE15BE: FMemLdR4 var_B8(12)
  loc_AE15C3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE15C8: CVarStr var_C8
  loc_AE15CB: PopAdLdVar
  loc_AE15CC: FLdPr Me
  loc_AE15CF: MemLdRfVar from_stack_1.global_60
  loc_AE15D2: LdPrVar
  loc_AE15D4: LateMemCall
  loc_AE15DA: FFree1Var var_C8 = ""
  loc_AE15DD: LitI4 0
  loc_AE15E2: FStR4 var_B8
  loc_AE15E5: AryUnlock
  loc_AE15E8: LitVarStr var_A0, "     </tr>"
  loc_AE15ED: PopAdLdVar
  loc_AE15EE: FLdPr Me
  loc_AE15F1: MemLdRfVar from_stack_1.global_60
  loc_AE15F4: LdPrVar
  loc_AE15F6: LateMemCall
  loc_AE15FC: FLdPr Me
  loc_AE15FF: MemLdRfVar from_stack_1.global_88
  loc_AE1602: NextI4 var_90, loc_AE150A
  loc_AE1607: Call Proc_219_14_A0C1A8()
  loc_AE160C: FLdPr Me
  loc_AE160F: MemLdRfVar from_stack_1.global_60
  loc_AE1612: LdPrVar
  loc_AE1614: LateMemCall
  loc_AE161A: LitStr vbNullString
  loc_AE161D: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_AE1622: ExitProcHresult
End Sub

Private Function Proc_219_13_BCCCB4() 'BCCCB4
  'Data Table: 44B400
  loc_BCC5B4: LitVarStr var_98, "<html>"
  loc_BCC5B9: PopAdLdVar
  loc_BCC5BA: FLdPr Me
  loc_BCC5BD: MemLdRfVar from_stack_1.global_60
  loc_BCC5C0: LdPrVar
  loc_BCC5C2: LateMemCall
  loc_BCC5C8: LitVarStr var_98, "<head>"
  loc_BCC5CD: PopAdLdVar
  loc_BCC5CE: FLdPr Me
  loc_BCC5D1: MemLdRfVar from_stack_1.global_60
  loc_BCC5D4: LdPrVar
  loc_BCC5D6: LateMemCall
  loc_BCC5DC: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BCC5E1: PopAdLdVar
  loc_BCC5E2: FLdPr Me
  loc_BCC5E5: MemLdRfVar from_stack_1.global_60
  loc_BCC5E8: LdPrVar
  loc_BCC5EA: LateMemCall
  loc_BCC5F0: LitStr "<title>"
  loc_BCC5F3: FLdRfVar var_AC
  loc_BCC5F6: FLdPr Me
  loc_BCC5F9:  = Me.Caption
  loc_BCC5FE: ILdRf var_AC
  loc_BCC601: ConcatStr
  loc_BCC602: FStStrNoPop var_B0
  loc_BCC605: LitStr "</title>"
  loc_BCC608: ConcatStr
  loc_BCC609: CVarStr var_C0
  loc_BCC60C: PopAdLdVar
  loc_BCC60D: FLdPr Me
  loc_BCC610: MemLdRfVar from_stack_1.global_60
  loc_BCC613: LdPrVar
  loc_BCC615: LateMemCall
  loc_BCC61B: FFreeStr var_AC = ""
  loc_BCC622: FFree1Var var_C0 = ""
  loc_BCC625: LitVarStr var_98, "<style type=""text/css"">"
  loc_BCC62A: PopAdLdVar
  loc_BCC62B: FLdPr Me
  loc_BCC62E: MemLdRfVar from_stack_1.global_60
  loc_BCC631: LdPrVar
  loc_BCC633: LateMemCall
  loc_BCC639: LitVarStr var_98, ".Titulo1 {"
  loc_BCC63E: PopAdLdVar
  loc_BCC63F: FLdPr Me
  loc_BCC642: MemLdRfVar from_stack_1.global_60
  loc_BCC645: LdPrVar
  loc_BCC647: LateMemCall
  loc_BCC64D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCC652: PopAdLdVar
  loc_BCC653: FLdPr Me
  loc_BCC656: MemLdRfVar from_stack_1.global_60
  loc_BCC659: LdPrVar
  loc_BCC65B: LateMemCall
  loc_BCC661: LitVarStr var_98, " font-size: 18px;"
  loc_BCC666: PopAdLdVar
  loc_BCC667: FLdPr Me
  loc_BCC66A: MemLdRfVar from_stack_1.global_60
  loc_BCC66D: LdPrVar
  loc_BCC66F: LateMemCall
  loc_BCC675: LitVarStr var_98, " font-weight: bold;"
  loc_BCC67A: PopAdLdVar
  loc_BCC67B: FLdPr Me
  loc_BCC67E: MemLdRfVar from_stack_1.global_60
  loc_BCC681: LdPrVar
  loc_BCC683: LateMemCall
  loc_BCC689: LitVarStr var_98, "}"
  loc_BCC68E: PopAdLdVar
  loc_BCC68F: FLdPr Me
  loc_BCC692: MemLdRfVar from_stack_1.global_60
  loc_BCC695: LdPrVar
  loc_BCC697: LateMemCall
  loc_BCC69D: LitVarStr var_98, ".Titulo2 {"
  loc_BCC6A2: PopAdLdVar
  loc_BCC6A3: FLdPr Me
  loc_BCC6A6: MemLdRfVar from_stack_1.global_60
  loc_BCC6A9: LdPrVar
  loc_BCC6AB: LateMemCall
  loc_BCC6B1: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCC6B6: PopAdLdVar
  loc_BCC6B7: FLdPr Me
  loc_BCC6BA: MemLdRfVar from_stack_1.global_60
  loc_BCC6BD: LdPrVar
  loc_BCC6BF: LateMemCall
  loc_BCC6C5: LitVarStr var_98, " font-size: 14px;"
  loc_BCC6CA: PopAdLdVar
  loc_BCC6CB: FLdPr Me
  loc_BCC6CE: MemLdRfVar from_stack_1.global_60
  loc_BCC6D1: LdPrVar
  loc_BCC6D3: LateMemCall
  loc_BCC6D9: LitVarStr var_98, " font-weight: bold;"
  loc_BCC6DE: PopAdLdVar
  loc_BCC6DF: FLdPr Me
  loc_BCC6E2: MemLdRfVar from_stack_1.global_60
  loc_BCC6E5: LdPrVar
  loc_BCC6E7: LateMemCall
  loc_BCC6ED: LitVarStr var_98, "}"
  loc_BCC6F2: PopAdLdVar
  loc_BCC6F3: FLdPr Me
  loc_BCC6F6: MemLdRfVar from_stack_1.global_60
  loc_BCC6F9: LdPrVar
  loc_BCC6FB: LateMemCall
  loc_BCC701: LitVarStr var_98, ".Normal {"
  loc_BCC706: PopAdLdVar
  loc_BCC707: FLdPr Me
  loc_BCC70A: MemLdRfVar from_stack_1.global_60
  loc_BCC70D: LdPrVar
  loc_BCC70F: LateMemCall
  loc_BCC715: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCC71A: PopAdLdVar
  loc_BCC71B: FLdPr Me
  loc_BCC71E: MemLdRfVar from_stack_1.global_60
  loc_BCC721: LdPrVar
  loc_BCC723: LateMemCall
  loc_BCC729: LitVarStr var_98, " font-size: 12px;"
  loc_BCC72E: PopAdLdVar
  loc_BCC72F: FLdPr Me
  loc_BCC732: MemLdRfVar from_stack_1.global_60
  loc_BCC735: LdPrVar
  loc_BCC737: LateMemCall
  loc_BCC73D: LitVarStr var_98, " font-style: normal;"
  loc_BCC742: PopAdLdVar
  loc_BCC743: FLdPr Me
  loc_BCC746: MemLdRfVar from_stack_1.global_60
  loc_BCC749: LdPrVar
  loc_BCC74B: LateMemCall
  loc_BCC751: LitVarStr var_98, " font-weight: normal;"
  loc_BCC756: PopAdLdVar
  loc_BCC757: FLdPr Me
  loc_BCC75A: MemLdRfVar from_stack_1.global_60
  loc_BCC75D: LdPrVar
  loc_BCC75F: LateMemCall
  loc_BCC765: LitVarStr var_98, " font-variant: normal;"
  loc_BCC76A: PopAdLdVar
  loc_BCC76B: FLdPr Me
  loc_BCC76E: MemLdRfVar from_stack_1.global_60
  loc_BCC771: LdPrVar
  loc_BCC773: LateMemCall
  loc_BCC779: LitVarStr var_98, "}"
  loc_BCC77E: PopAdLdVar
  loc_BCC77F: FLdPr Me
  loc_BCC782: MemLdRfVar from_stack_1.global_60
  loc_BCC785: LdPrVar
  loc_BCC787: LateMemCall
  loc_BCC78D: LitVarStr var_98, ".Encabezado {"
  loc_BCC792: PopAdLdVar
  loc_BCC793: FLdPr Me
  loc_BCC796: MemLdRfVar from_stack_1.global_60
  loc_BCC799: LdPrVar
  loc_BCC79B: LateMemCall
  loc_BCC7A1: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BCC7A6: PopAdLdVar
  loc_BCC7A7: FLdPr Me
  loc_BCC7AA: MemLdRfVar from_stack_1.global_60
  loc_BCC7AD: LdPrVar
  loc_BCC7AF: LateMemCall
  loc_BCC7B5: LitVarStr var_98, " font-size: 11px;"
  loc_BCC7BA: PopAdLdVar
  loc_BCC7BB: FLdPr Me
  loc_BCC7BE: MemLdRfVar from_stack_1.global_60
  loc_BCC7C1: LdPrVar
  loc_BCC7C3: LateMemCall
  loc_BCC7C9: LitVarStr var_98, " font-weight: bold;"
  loc_BCC7CE: PopAdLdVar
  loc_BCC7CF: FLdPr Me
  loc_BCC7D2: MemLdRfVar from_stack_1.global_60
  loc_BCC7D5: LdPrVar
  loc_BCC7D7: LateMemCall
  loc_BCC7DD: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BCC7E2: PopAdLdVar
  loc_BCC7E3: FLdPr Me
  loc_BCC7E6: MemLdRfVar from_stack_1.global_60
  loc_BCC7E9: LdPrVar
  loc_BCC7EB: LateMemCall
  loc_BCC7F1: LitVarStr var_98, "}"
  loc_BCC7F6: PopAdLdVar
  loc_BCC7F7: FLdPr Me
  loc_BCC7FA: MemLdRfVar from_stack_1.global_60
  loc_BCC7FD: LdPrVar
  loc_BCC7FF: LateMemCall
  loc_BCC805: LitVarStr var_98, ".LineaDato {"
  loc_BCC80A: PopAdLdVar
  loc_BCC80B: FLdPr Me
  loc_BCC80E: MemLdRfVar from_stack_1.global_60
  loc_BCC811: LdPrVar
  loc_BCC813: LateMemCall
  loc_BCC819: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCC81E: PopAdLdVar
  loc_BCC81F: FLdPr Me
  loc_BCC822: MemLdRfVar from_stack_1.global_60
  loc_BCC825: LdPrVar
  loc_BCC827: LateMemCall
  loc_BCC82D: LitVarStr var_98, " font-size: 10px;"
  loc_BCC832: PopAdLdVar
  loc_BCC833: FLdPr Me
  loc_BCC836: MemLdRfVar from_stack_1.global_60
  loc_BCC839: LdPrVar
  loc_BCC83B: LateMemCall
  loc_BCC841: LitVarStr var_98, "}"
  loc_BCC846: PopAdLdVar
  loc_BCC847: FLdPr Me
  loc_BCC84A: MemLdRfVar from_stack_1.global_60
  loc_BCC84D: LdPrVar
  loc_BCC84F: LateMemCall
  loc_BCC855: LitVarStr var_98, ".Totales {"
  loc_BCC85A: PopAdLdVar
  loc_BCC85B: FLdPr Me
  loc_BCC85E: MemLdRfVar from_stack_1.global_60
  loc_BCC861: LdPrVar
  loc_BCC863: LateMemCall
  loc_BCC869: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCC86E: PopAdLdVar
  loc_BCC86F: FLdPr Me
  loc_BCC872: MemLdRfVar from_stack_1.global_60
  loc_BCC875: LdPrVar
  loc_BCC877: LateMemCall
  loc_BCC87D: LitVarStr var_98, " font-size: 12px;"
  loc_BCC882: PopAdLdVar
  loc_BCC883: FLdPr Me
  loc_BCC886: MemLdRfVar from_stack_1.global_60
  loc_BCC889: LdPrVar
  loc_BCC88B: LateMemCall
  loc_BCC891: LitVarStr var_98, " font-weight: bold;"
  loc_BCC896: PopAdLdVar
  loc_BCC897: FLdPr Me
  loc_BCC89A: MemLdRfVar from_stack_1.global_60
  loc_BCC89D: LdPrVar
  loc_BCC89F: LateMemCall
  loc_BCC8A5: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BCC8AA: PopAdLdVar
  loc_BCC8AB: FLdPr Me
  loc_BCC8AE: MemLdRfVar from_stack_1.global_60
  loc_BCC8B1: LdPrVar
  loc_BCC8B3: LateMemCall
  loc_BCC8B9: LitVarStr var_98, "}"
  loc_BCC8BE: PopAdLdVar
  loc_BCC8BF: FLdPr Me
  loc_BCC8C2: MemLdRfVar from_stack_1.global_60
  loc_BCC8C5: LdPrVar
  loc_BCC8C7: LateMemCall
  loc_BCC8CD: LitVarStr var_98, ".SubTotales {"
  loc_BCC8D2: PopAdLdVar
  loc_BCC8D3: FLdPr Me
  loc_BCC8D6: MemLdRfVar from_stack_1.global_60
  loc_BCC8D9: LdPrVar
  loc_BCC8DB: LateMemCall
  loc_BCC8E1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCC8E6: PopAdLdVar
  loc_BCC8E7: FLdPr Me
  loc_BCC8EA: MemLdRfVar from_stack_1.global_60
  loc_BCC8ED: LdPrVar
  loc_BCC8EF: LateMemCall
  loc_BCC8F5: LitVarStr var_98, " font-size: 10px;"
  loc_BCC8FA: PopAdLdVar
  loc_BCC8FB: FLdPr Me
  loc_BCC8FE: MemLdRfVar from_stack_1.global_60
  loc_BCC901: LdPrVar
  loc_BCC903: LateMemCall
  loc_BCC909: LitVarStr var_98, " font-weight: bold;"
  loc_BCC90E: PopAdLdVar
  loc_BCC90F: FLdPr Me
  loc_BCC912: MemLdRfVar from_stack_1.global_60
  loc_BCC915: LdPrVar
  loc_BCC917: LateMemCall
  loc_BCC91D: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BCC922: PopAdLdVar
  loc_BCC923: FLdPr Me
  loc_BCC926: MemLdRfVar from_stack_1.global_60
  loc_BCC929: LdPrVar
  loc_BCC92B: LateMemCall
  loc_BCC931: LitVarStr var_98, "}"
  loc_BCC936: PopAdLdVar
  loc_BCC937: FLdPr Me
  loc_BCC93A: MemLdRfVar from_stack_1.global_60
  loc_BCC93D: LdPrVar
  loc_BCC93F: LateMemCall
  loc_BCC945: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BCC94A: PopAdLdVar
  loc_BCC94B: FLdPr Me
  loc_BCC94E: MemLdRfVar from_stack_1.global_60
  loc_BCC951: LdPrVar
  loc_BCC953: LateMemCall
  loc_BCC959: LitVarStr var_98, "</style>"
  loc_BCC95E: PopAdLdVar
  loc_BCC95F: FLdPr Me
  loc_BCC962: MemLdRfVar from_stack_1.global_60
  loc_BCC965: LdPrVar
  loc_BCC967: LateMemCall
  loc_BCC96D: LitI4 0
  loc_BCC972: FStStrCopy var_B0
  loc_BCC975: FLdRfVar var_B0
  loc_BCC978: LitI4 0
  loc_BCC97D: FStStrCopy var_AC
  loc_BCC980: FLdRfVar var_AC
  loc_BCC983: LitI2_Byte 0
  loc_BCC985: PopTmpLdAd2 var_C2
  loc_BCC988: FLdPr Me
  loc_BCC98B: MemLdRfVar from_stack_1.global_60
  loc_BCC98E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BCC993: FFreeStr var_AC = ""
  loc_BCC99A: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BCC99F: PopAdLdVar
  loc_BCC9A0: FLdPr Me
  loc_BCC9A3: MemLdRfVar from_stack_1.global_60
  loc_BCC9A6: LdPrVar
  loc_BCC9A8: LateMemCall
  loc_BCC9AE: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BCC9B3: PopAdLdVar
  loc_BCC9B4: FLdPr Me
  loc_BCC9B7: MemLdRfVar from_stack_1.global_60
  loc_BCC9BA: LdPrVar
  loc_BCC9BC: LateMemCall
  loc_BCC9C2: LitStr "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BCC9C5: LitI2_Byte &H5F
  loc_BCC9C7: CStrUI1
  loc_BCC9C9: FStStrNoPop var_AC
  loc_BCC9CC: ConcatStr
  loc_BCC9CD: FStStrNoPop var_B0
  loc_BCC9D0: LitStr """ height="""
  loc_BCC9D3: ConcatStr
  loc_BCC9D4: FStStrNoPop var_C8
  loc_BCC9D7: LitI2_Byte &H3C
  loc_BCC9D9: CStrUI1
  loc_BCC9DB: FStStrNoPop var_CC
  loc_BCC9DE: ConcatStr
  loc_BCC9DF: FStStrNoPop var_D0
  loc_BCC9E2: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BCC9E5: ConcatStr
  loc_BCC9E6: FStStrNoPop var_D4
  loc_BCC9E9: LitStr "Municipalidad de Guaymallén"
  loc_BCC9EC: ConcatStr
  loc_BCC9ED: FStStrNoPop var_D8
  loc_BCC9F0: LitStr "</p>"
  loc_BCC9F3: ConcatStr
  loc_BCC9F4: CVarStr var_C0
  loc_BCC9F7: PopAdLdVar
  loc_BCC9F8: FLdPr Me
  loc_BCC9FB: MemLdRfVar from_stack_1.global_60
  loc_BCC9FE: LdPrVar
  loc_BCCA00: LateMemCall
  loc_BCCA06: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BCCA17: FFree1Var var_C0 = ""
  loc_BCCA1A: LitStr "    <p>"
  loc_BCCA1D: FLdRfVar var_AC
  loc_BCCA20: FLdPr Me
  loc_BCCA23:  = Me.Caption
  loc_BCCA28: ILdRf var_AC
  loc_BCCA2B: ConcatStr
  loc_BCCA2C: FStStrNoPop var_B0
  loc_BCCA2F: LitStr "</p></th>"
  loc_BCCA32: ConcatStr
  loc_BCCA33: CVarStr var_C0
  loc_BCCA36: PopAdLdVar
  loc_BCCA37: FLdPr Me
  loc_BCCA3A: MemLdRfVar from_stack_1.global_60
  loc_BCCA3D: LdPrVar
  loc_BCCA3F: LateMemCall
  loc_BCCA45: FFreeStr var_AC = ""
  loc_BCCA4C: FFree1Var var_C0 = ""
  loc_BCCA4F: LitVarStr var_98, "  </tr>"
  loc_BCCA54: PopAdLdVar
  loc_BCCA55: FLdPr Me
  loc_BCCA58: MemLdRfVar from_stack_1.global_60
  loc_BCCA5B: LdPrVar
  loc_BCCA5D: LateMemCall
  loc_BCCA63: LitVarStr var_98, "  <tr>"
  loc_BCCA68: PopAdLdVar
  loc_BCCA69: FLdPr Me
  loc_BCCA6C: MemLdRfVar from_stack_1.global_60
  loc_BCCA6F: LdPrVar
  loc_BCCA71: LateMemCall
  loc_BCCA77: LitVarStr var_98, "    <th colspan=""2""><hr></th>"
  loc_BCCA7C: PopAdLdVar
  loc_BCCA7D: FLdPr Me
  loc_BCCA80: MemLdRfVar from_stack_1.global_60
  loc_BCCA83: LdPrVar
  loc_BCCA85: LateMemCall
  loc_BCCA8B: LitVarStr var_98, "  </tr>"
  loc_BCCA90: PopAdLdVar
  loc_BCCA91: FLdPr Me
  loc_BCCA94: MemLdRfVar from_stack_1.global_60
  loc_BCCA97: LdPrVar
  loc_BCCA99: LateMemCall
  loc_BCCA9F: FLdPr Me
  loc_BCCAA2: MemLdRfVar from_stack_1.global_76
  loc_BCCAA5: NewIfNullAd
  loc_BCCAA8: FStAd var_DC 
  loc_BCCAAC: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_BCCAB1: PopAdLdVar
  loc_BCCAB2: FLdPr Me
  loc_BCCAB5: MemLdRfVar from_stack_1.global_60
  loc_BCCAB8: LdPrVar
  loc_BCCABA: LateMemCall
  loc_BCCAC0: LitStr "    <td width=""50" & Chr(37) & """><strong>Periodo: </strong>"
  loc_BCCAC3: FLdRfVar var_C2
  loc_BCCAC6: FLdPr var_DC
  loc_BCCAC9: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BCCACE: FLdI2 var_C2
  loc_BCCAD1: CStrUI1
  loc_BCCAD3: FStStrNoPop var_AC
  loc_BCCAD6: ConcatStr
  loc_BCCAD7: FStStrNoPop var_B0
  loc_BCCADA: LitStr "</td>"
  loc_BCCADD: ConcatStr
  loc_BCCADE: CVarStr var_C0
  loc_BCCAE1: PopAdLdVar
  loc_BCCAE2: FLdPr Me
  loc_BCCAE5: MemLdRfVar from_stack_1.global_60
  loc_BCCAE8: LdPrVar
  loc_BCCAEA: LateMemCall
  loc_BCCAF0: FFreeStr var_AC = ""
  loc_BCCAF7: FFree1Var var_C0 = ""
  loc_BCCAFA: LitVarStr var_98, "    <td width=""50" & Chr(37) & """><strong>Tipo de Liquidación: </strong>"
  loc_BCCAFF: FLdRfVar var_C0
  loc_BCCB02: FLdPr var_DC
  loc_BCCB05: from_stack_1 = clsliquidacion.DetaTili
  loc_BCCB0A: FLdRfVar var_C0
  loc_BCCB0D: ConcatVar var_EC
  loc_BCCB11: LitVarStr var_A8, "</td>"
  loc_BCCB16: ConcatVar var_FC
  loc_BCCB1A: PopAdLdVar
  loc_BCCB1B: FLdPr Me
  loc_BCCB1E: MemLdRfVar from_stack_1.global_60
  loc_BCCB21: LdPrVar
  loc_BCCB23: LateMemCall
  loc_BCCB29: FFreeVar var_C0 = "": var_EC = ""
  loc_BCCB32: LitVarStr var_98, "  </tr>"
  loc_BCCB37: PopAdLdVar
  loc_BCCB38: FLdPr Me
  loc_BCCB3B: MemLdRfVar from_stack_1.global_60
  loc_BCCB3E: LdPrVar
  loc_BCCB40: LateMemCall
  loc_BCCB46: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_BCCB4B: PopAdLdVar
  loc_BCCB4C: FLdPr Me
  loc_BCCB4F: MemLdRfVar from_stack_1.global_60
  loc_BCCB52: LdPrVar
  loc_BCCB54: LateMemCall
  loc_BCCB5A: LitStr "    <td><strong>Bimestre: </strong>"
  loc_BCCB5D: FLdRfVar var_C2
  loc_BCCB60: FLdPr var_DC
  loc_BCCB63: from_stack_1 = clsliquidacion.BimeLiqu
  loc_BCCB68: FLdUI1
  loc_BCCB6C: CStrI2
  loc_BCCB6E: FStStrNoPop var_AC
  loc_BCCB71: ConcatStr
  loc_BCCB72: FStStrNoPop var_B0
  loc_BCCB75: LitStr "</td>"
  loc_BCCB78: ConcatStr
  loc_BCCB79: CVarStr var_C0
  loc_BCCB7C: PopAdLdVar
  loc_BCCB7D: FLdPr Me
  loc_BCCB80: MemLdRfVar from_stack_1.global_60
  loc_BCCB83: LdPrVar
  loc_BCCB85: LateMemCall
  loc_BCCB8B: FFreeStr var_AC = ""
  loc_BCCB92: FFree1Var var_C0 = ""
  loc_BCCB95: LitStr "    <td><strong>Número: </strong>"
  loc_BCCB98: FLdRfVar var_C2
  loc_BCCB9B: FLdPr var_DC
  loc_BCCB9E: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BCCBA3: FLdI2 var_C2
  loc_BCCBA6: CStrUI1
  loc_BCCBA8: FStStrNoPop var_AC
  loc_BCCBAB: ConcatStr
  loc_BCCBAC: FStStrNoPop var_B0
  loc_BCCBAF: LitStr "</td>"
  loc_BCCBB2: ConcatStr
  loc_BCCBB3: CVarStr var_C0
  loc_BCCBB6: PopAdLdVar
  loc_BCCBB7: FLdPr Me
  loc_BCCBBA: MemLdRfVar from_stack_1.global_60
  loc_BCCBBD: LdPrVar
  loc_BCCBBF: LateMemCall
  loc_BCCBC5: FFreeStr var_AC = ""
  loc_BCCBCC: FFree1Var var_C0 = ""
  loc_BCCBCF: LitVarStr var_98, "  </tr>"
  loc_BCCBD4: PopAdLdVar
  loc_BCCBD5: FLdPr Me
  loc_BCCBD8: MemLdRfVar from_stack_1.global_60
  loc_BCCBDB: LdPrVar
  loc_BCCBDD: LateMemCall
  loc_BCCBE3: LitNothing
  loc_BCCBE5: FStAd var_DC 
  loc_BCCBE9: LitVarStr var_98, "</table>"
  loc_BCCBEE: PopAdLdVar
  loc_BCCBEF: FLdPr Me
  loc_BCCBF2: MemLdRfVar from_stack_1.global_60
  loc_BCCBF5: LdPrVar
  loc_BCCBF7: LateMemCall
  loc_BCCBFD: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BCCC02: PopAdLdVar
  loc_BCCC03: FLdPr Me
  loc_BCCC06: MemLdRfVar from_stack_1.global_60
  loc_BCCC09: LdPrVar
  loc_BCCC0B: LateMemCall
  loc_BCCC11: LitVarStr var_98, "  <thead>"
  loc_BCCC16: PopAdLdVar
  loc_BCCC17: FLdPr Me
  loc_BCCC1A: MemLdRfVar from_stack_1.global_60
  loc_BCCC1D: LdPrVar
  loc_BCCC1F: LateMemCall
  loc_BCCC25: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BCCC2A: PopAdLdVar
  loc_BCCC2B: FLdPr Me
  loc_BCCC2E: MemLdRfVar from_stack_1.global_60
  loc_BCCC31: LdPrVar
  loc_BCCC33: LateMemCall
  loc_BCCC39: LitVarStr var_98, "    <th>Comercio</th>"
  loc_BCCC3E: PopAdLdVar
  loc_BCCC3F: FLdPr Me
  loc_BCCC42: MemLdRfVar from_stack_1.global_60
  loc_BCCC45: LdPrVar
  loc_BCCC47: LateMemCall
  loc_BCCC4D: LitVarStr var_98, "    <th>Error</th>"
  loc_BCCC52: PopAdLdVar
  loc_BCCC53: FLdPr Me
  loc_BCCC56: MemLdRfVar from_stack_1.global_60
  loc_BCCC59: LdPrVar
  loc_BCCC5B: LateMemCall
  loc_BCCC61: LitVarStr var_98, "    <th>Fecha</sup></th>"
  loc_BCCC66: PopAdLdVar
  loc_BCCC67: FLdPr Me
  loc_BCCC6A: MemLdRfVar from_stack_1.global_60
  loc_BCCC6D: LdPrVar
  loc_BCCC6F: LateMemCall
  loc_BCCC75: LitVarStr var_98, "    <th>Detalle</th>"
  loc_BCCC7A: PopAdLdVar
  loc_BCCC7B: FLdPr Me
  loc_BCCC7E: MemLdRfVar from_stack_1.global_60
  loc_BCCC81: LdPrVar
  loc_BCCC83: LateMemCall
  loc_BCCC89: LitVarStr var_98, "    </tr>"
  loc_BCCC8E: PopAdLdVar
  loc_BCCC8F: FLdPr Me
  loc_BCCC92: MemLdRfVar from_stack_1.global_60
  loc_BCCC95: LdPrVar
  loc_BCCC97: LateMemCall
  loc_BCCC9D: LitVarStr var_98, "  </thead>"
  loc_BCCCA2: PopAdLdVar
  loc_BCCCA3: FLdPr Me
  loc_BCCCA6: MemLdRfVar from_stack_1.global_60
  loc_BCCCA9: LdPrVar
  loc_BCCCAB: LateMemCall
  loc_BCCCB1: ExitProcHresult
  loc_BCCCB2: FLdFPR8 var_77FD
End Function

Private Function Proc_219_14_A0C1A8() 'A0C1A8
  'Data Table: 44B400
  loc_A0C168: LitVarStr var_94, "</table>"
  loc_A0C16D: PopAdLdVar
  loc_A0C16E: FLdPr Me
  loc_A0C171: MemLdRfVar from_stack_1.global_60
  loc_A0C174: LdPrVar
  loc_A0C176: LateMemCall
  loc_A0C17C: LitVarStr var_94, "</body>"
  loc_A0C181: PopAdLdVar
  loc_A0C182: FLdPr Me
  loc_A0C185: MemLdRfVar from_stack_1.global_60
  loc_A0C188: LdPrVar
  loc_A0C18A: LateMemCall
  loc_A0C190: LitVarStr var_94, "</html>"
  loc_A0C195: PopAdLdVar
  loc_A0C196: FLdPr Me
  loc_A0C199: MemLdRfVar from_stack_1.global_60
  loc_A0C19C: LdPrVar
  loc_A0C19E: LateMemCall
  loc_A0C1A4: ExitProcHresult
End Function
