VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptControldelCalculodeLiquidaciondeTasas
  Caption = "Control del Cálculo de Liquidación de Tasas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControldelCalculodeLiquidaciondeTasas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11640
  ClientHeight = 7932
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7680
    Width = 11640
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasas.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 10320
    Top = 6600
    Width = 855
    Height = 735
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptControldelCalculodeLiquidaciondeTasas.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasas.frx":0B9C
    Left = 10920
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
      Begin MSMask.MaskEdBox CodiInmuDesdeMsk
        Left = 2610
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasas.frx":0C00
      End
      Begin MSMask.MaskEdBox CodiInmuHastaMsk
        Left = 5730
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasas.frx":0C98
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
      OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasas.frx":0D30
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10320
    Top = 6960
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptControldelCalculodeLiquidaciondeTasas.frx":1036
  End
End

Attribute VB_Name = "rptControldelCalculodeLiquidaciondeTasas"

Public bGenerado As Boolean

Private Type UDT_1_00562720
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_005650A0
  bStruc(32) As Byte ' String fields: 4
End Type

Private Type UDT_3_005650E4
  bStruc(44) As Byte ' String fields: 11
End Type


Private Sub cmdPredeterminada_Click() 'A85A70
  'Data Table: 473FB4
  loc_A859E8: LitI4 0
  loc_A859ED: LitI4 0
  loc_A859F2: FLdRfVar var_88
  loc_A859F5: Redim
  loc_A859FF: FLdPr Me
  loc_A85A02: VCallAd Control_ID_dgdLiquidacion
  loc_A85A05: CVarAd
  loc_A85A09: ParmAry1St
  loc_A85A0F: FLdRfVar var_88
  loc_A85A12: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A85A17: FLdRfVar var_88
  loc_A85A1A: Erase
  loc_A85A1B: LitI2_Byte 0
  loc_A85A1D: ILdRf Me
  loc_A85A20: CastAd
  loc_A85A23: FStAdFunc var_9C
  loc_A85A26: FLdRfVar var_9C
  loc_A85A29: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A85A2E: FFree1Ad var_9C
  loc_A85A31: FLdRfVar var_9E
  loc_A85A34: FLdPr Me
  loc_A85A37: VCallAd Control_ID_cmdPredeterminada
  loc_A85A3A: FStAdFunc var_9C
  loc_A85A3D: FLdPr var_9C
  loc_A85A40:  = Me.Enabled
  loc_A85A45: FLdI2 var_9E
  loc_A85A48: NotI4
  loc_A85A49: FFree1Ad var_9C
  loc_A85A4C: BranchF loc_A85A57
  loc_A85A4F: ImpAdCallFPR4 DoEvents()
  loc_A85A54: Branch loc_A85A31
  loc_A85A57: ILdRf Me
  loc_A85A5A: FStAdNoPop
  loc_A85A5E: ImpAdLdRf MemVar_D9C5D8
  loc_A85A61: NewIfNullPr Global
  loc_A85A64: Global.Unload from_stack_1
  loc_A85A69: FFree1Ad var_9C
  loc_A85A6C: ExitProcHresult
End Sub

Private Sub CodiInmuDesdeMsk_UnknownEvent_0 '9C6740
  'Data Table: 473FB4
  loc_9C672C: FLdPr Me
  loc_9C672F: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_9C6732: CVarAd
  loc_9C6736: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C673B: FFree1Var var_94 = ""
  loc_9C673E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ACE4BC
  'Data Table: 473FB4
  loc_ACE398: LitI2_Byte 0
  loc_ACE39A: FLdPr Me
  loc_ACE39D: MemStI2 bGenerado
  loc_ACE3A0: LitI2_Byte 0
  loc_ACE3A2: ILdRf Me
  loc_ACE3A5: CastAd
  loc_ACE3A8: FStAdFunc var_88
  loc_ACE3AB: FLdRfVar var_88
  loc_ACE3AE: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_ACE3B3: FFree1Ad var_88
  loc_ACE3B6: FLdPr Me
  loc_ACE3B9: MemLdRfVar from_stack_1.global_76
  loc_ACE3BC: NewIfNullPr clsliquidacion
  loc_ACE3BF: Call clsliquidacion.Requery()
  loc_ACE3C4: LitVarStr var_98, vbNullString
  loc_ACE3C9: PopAdLdVar
  loc_ACE3CA: FLdPr Me
  loc_ACE3CD: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_ACE3D0: FStAdFunc var_88
  loc_ACE3D3: FLdPr var_88
  loc_ACE3D6: LateIdSt
  loc_ACE3DB: FFree1Ad var_88
  loc_ACE3DE: LitVarStr var_98, vbNullString
  loc_ACE3E3: PopAdLdVar
  loc_ACE3E4: FLdPr Me
  loc_ACE3E7: VCallAd Control_ID_CodiInmuHastaMsk
  loc_ACE3EA: FStAdFunc var_88
  loc_ACE3ED: FLdPr var_88
  loc_ACE3F0: LateIdSt
  loc_ACE3F5: FFree1Ad var_88
  loc_ACE3F8: FLdRfVar var_AC
  loc_ACE3FB: FLdPr Me
  loc_ACE3FE: MemLdRfVar from_stack_1.global_76
  loc_ACE401: NewIfNullPr clsliquidacion
  loc_ACE404: from_stack_1 = clsliquidacion.RecordCount
  loc_ACE409: ILdRf var_AC
  loc_ACE40C: LitI4 0
  loc_ACE411: GtI4
  loc_ACE412: BranchF loc_ACE484
  loc_ACE415: LitI4 0
  loc_ACE41A: LitI4 1
  loc_ACE41F: FLdRfVar var_B0
  loc_ACE422: Redim
  loc_ACE42C: FLdPr Me
  loc_ACE42F: MemLdRfVar from_stack_1.global_76
  loc_ACE432: NewIfNullAd
  loc_ACE435: FStAd var_88 
  loc_ACE439: FLdRfVar var_88
  loc_ACE43C: CVarRef
  loc_ACE441: ParmAry1St
  loc_ACE447: FLdPr Me
  loc_ACE44A: VCallAd Control_ID_dgdLiquidacion
  loc_ACE44D: CVarAd
  loc_ACE451: ParmAry1St
  loc_ACE457: FLdRfVar var_B0
  loc_ACE45A: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ACE45F: ILdRf var_88
  loc_ACE462: CastAd
  loc_ACE465: FLdPr Me
  loc_ACE468: MemStAdFunc
  loc_ACE46C: FLdRfVar var_B0
  loc_ACE46F: Erase
  loc_ACE470: FFree1Ad var_88
  loc_ACE473: FLdPr Me
  loc_ACE476: MemLdRfVar from_stack_1.global_76
  loc_ACE479: NewIfNullPr clsliquidacion
  loc_ACE47C: Call clsliquidacion.MoveLast()
  loc_ACE481: Branch loc_ACE4A0
  loc_ACE484: LitStr "No existen liquidaciones para listar"
  loc_ACE487: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACE48C: ILdRf Me
  loc_ACE48F: CastAd
  loc_ACE492: FStAdFunc var_88
  loc_ACE495: FLdRfVar var_88
  loc_ACE498: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_ACE49D: FFree1Ad var_88
  loc_ACE4A0: Call HabilitarCriterio()
  loc_ACE4A5: ILdRf Me
  loc_ACE4A8: CastAd
  loc_ACE4AB: FStAdFunc var_88
  loc_ACE4AE: FLdRfVar var_88
  loc_ACE4B1: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ACE4B6: FFree1Ad var_88
  loc_ACE4B9: ExitProcHresult
End Sub

Private Sub CodiInmuHastaMsk_UnknownEvent_0 '9C6788
  'Data Table: 473FB4
  loc_9C6774: FLdPr Me
  loc_9C6777: VCallAd Control_ID_CodiInmuHastaMsk
  loc_9C677A: CVarAd
  loc_9C677E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6783: FFree1Var var_94 = ""
  loc_9C6786: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() 'A4E034
  'Data Table: 473FB4
  loc_A4DFEC: LitI4 0
  loc_A4DFF1: LitI4 0
  loc_A4DFF6: FLdRfVar var_88
  loc_A4DFF9: Redim
  loc_A4E003: FLdPr Me
  loc_A4E006: VCallAd Control_ID_dgdLiquidacion
  loc_A4E009: CVarAd
  loc_A4E00D: ParmAry1St
  loc_A4E013: FLdRfVar var_88
  loc_A4E016: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A4E01B: FLdRfVar var_88
  loc_A4E01E: Erase
  loc_A4E01F: ILdRf Me
  loc_A4E022: CastAd
  loc_A4E025: FStAdFunc var_9C
  loc_A4E028: FLdRfVar var_9C
  loc_A4E02B: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_A4E030: FFree1Ad var_9C
  loc_A4E033: ExitProcHresult
End Sub

Private Sub Form_Load() 'A247E0
  'Data Table: 473FB4
  loc_A247A0: ILdRf Me
  loc_A247A3: CastAd
  loc_A247A6: FStAdFunc var_88
  loc_A247A9: FLdRfVar var_88
  loc_A247AC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A247B1: FFree1Ad var_88
  loc_A247B4: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu"
  loc_A247B7: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A247BA: ConcatStr
  loc_A247BB: FStStrNoPop var_8C
  loc_A247BE: LitStr " WHERE liquidacion.CodiOfic = 1 ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A247C1: ConcatStr
  loc_A247C2: FStStrNoPop var_90
  loc_A247C5: FLdPr Me
  loc_A247C8: MemLdRfVar from_stack_1.global_76
  loc_A247CB: NewIfNullPr clsliquidacion
  loc_A247CE: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A247D3: FFreeStr var_8C = ""
  loc_A247DA: Call cmdNueva_Click()
  loc_A247DF: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CA0E8
  'Data Table: 473FB4
  loc_9CA0D0: FLdPr Me
  loc_9CA0D3: VCallAd Control_ID_wbbReporte
  loc_9CA0D6: FStAdFunc var_88
  loc_9CA0D9: FLdRfVar var_88
  loc_9CA0DC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CA0E1: FFree1Ad var_88
  loc_9CA0E4: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'A57928
  'Data Table: 473FB4
  loc_A578D8: LitI4 0
  loc_A578DD: LitI4 0
  loc_A578E2: FLdRfVar var_88
  loc_A578E5: Redim
  loc_A578EF: FLdPr Me
  loc_A578F2: VCallAd Control_ID_dgdLiquidacion
  loc_A578F5: CVarAd
  loc_A578F9: ParmAry1St
  loc_A578FF: FLdRfVar var_88
  loc_A57902: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A57907: FLdRfVar var_88
  loc_A5790A: Erase
  loc_A5790B: LitI2_Byte 0
  loc_A5790D: PopTmpLdAd2 var_9E
  loc_A57910: ILdRf Me
  loc_A57913: CastAd
  loc_A57916: FStAdFunc var_9C
  loc_A57919: FLdRfVar var_9C
  loc_A5791C: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_A57921: FFree1Ad var_9C
  loc_A57924: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A17470
  'Data Table: 473FB4
  loc_A17438: FLdPr Me
  loc_A1743B: VCallAd Control_ID_statusBar
  loc_A1743E: FStAdFunc var_88
  loc_A17441: FLdPr var_88
  loc_A17444: LateIdLdVar var_98 DispID_1 0
  loc_A1744B: CStrVarTmp
  loc_A1744C: CVarStr var_A8
  loc_A1744F: PopAdLdVar
  loc_A17450: FLdPr Me
  loc_A17453: VCallAd Control_ID_statusBar
  loc_A17456: FStAdFunc var_BC
  loc_A17459: FLdPr var_BC
  loc_A1745C: LateIdSt
  loc_A17461: FFreeAd var_88 = ""
  loc_A17468: FFreeVar var_98 = ""
  loc_A1746F: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A03698
  'Data Table: 473FB4
  loc_A03668: LitVarStr var_94, "Cerrando..."
  loc_A0366D: PopAdLdVar
  loc_A0366E: FLdPr Me
  loc_A03671: VCallAd Control_ID_statusBar
  loc_A03674: FStAdFunc var_A8
  loc_A03677: FLdPr var_A8
  loc_A0367A: LateIdSt
  loc_A0367F: FFree1Ad var_A8
  loc_A03682: ILdRf Me
  loc_A03685: FStAdNoPop
  loc_A03689: ImpAdLdRf MemVar_D9C5D8
  loc_A0368C: NewIfNullPr Global
  loc_A0368F: Global.Unload from_stack_1
  loc_A03694: FFree1Ad var_A8
  loc_A03697: ExitProcHresult
End Sub

Public Function bGeneradoGet() '474C58
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '474C67
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5E520
  'Data Table: 473FB4
  loc_A5E4CC: LitI4 0
  loc_A5E4D1: LitI4 2
  loc_A5E4D6: FLdRfVar var_88
  loc_A5E4D9: Redim
  loc_A5E4E3: FLdPr Me
  loc_A5E4E6: VCallAd Control_ID_dgdLiquidacion
  loc_A5E4E9: CVarAd
  loc_A5E4ED: ParmAry1St
  loc_A5E4F3: FLdPr Me
  loc_A5E4F6: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_A5E4F9: CVarAd
  loc_A5E4FD: ParmAry1St
  loc_A5E503: FLdPr Me
  loc_A5E506: VCallAd Control_ID_CodiInmuHastaMsk
  loc_A5E509: CVarAd
  loc_A5E50D: ParmAry1St
  loc_A5E513: FLdRfVar var_88
  loc_A5E516: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5E51B: FLdRfVar var_88
  loc_A5E51E: Erase
  loc_A5E51F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B4F198
  'Data Table: 473FB4
  loc_B4EE50: FLdPr Me
  loc_B4EE53: MemLdI2 bGenerado
  loc_B4EE56: BranchF loc_B4EE5A
  loc_B4EE59: ExitProcHresult
  loc_B4EE5A: LitVarStr var_9C, "Generando reporte..."
  loc_B4EE5F: PopAdLdVar
  loc_B4EE60: FLdPr Me
  loc_B4EE63: VCallAd Control_ID_statusBar
  loc_B4EE66: FStAdFunc var_B0
  loc_B4EE69: FLdPr var_B0
  loc_B4EE6C: LateIdSt
  loc_B4EE71: FFree1Ad var_B0
  loc_B4EE74: LitI4 &HB
  loc_B4EE79: CI2I4
  loc_B4EE7A: FLdPr Me
  loc_B4EE7D: Me.MousePointer = from_stack_1
  loc_B4EE82: FLdRfVar var_B4
  loc_B4EE85: FLdPr Me
  loc_B4EE88: MemLdRfVar from_stack_1.global_76
  loc_B4EE8B: NewIfNullPr clsliquidacion
  loc_B4EE8E: from_stack_1 = clsliquidacion.RecordCount
  loc_B4EE93: ILdRf var_B4
  loc_B4EE96: LitI4 1
  loc_B4EE9B: LtI4
  loc_B4EE9C: BranchF loc_B4EEAA
  loc_B4EE9F: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B4EEA2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4EEA7: Branch loc_B4F16F
  loc_B4EEAA: FLdPr Me
  loc_B4EEAD: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_B4EEB0: FStAdFunc var_B0
  loc_B4EEB3: FLdPr var_B0
  loc_B4EEB6: LateIdLdVar var_C4 DispID_22 0
  loc_B4EEBD: PopAd
  loc_B4EEBF: FLdPr Me
  loc_B4EEC2: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_B4EEC5: FStAdFunc var_CC
  loc_B4EEC8: FLdPr var_CC
  loc_B4EECB: LateIdLdVar var_DC DispID_22 0
  loc_B4EED2: PopAd
  loc_B4EED4: LitVarStr var_AC, vbNullString
  loc_B4EED9: FStVarCopyObj var_100
  loc_B4EEDC: FLdRfVar var_100
  loc_B4EEDF: LitStr " AND liqutasa.CodiInmu >= "
  loc_B4EEE2: FLdRfVar var_DC
  loc_B4EEE5: CStrVarTmp
  loc_B4EEE6: FStStrNoPop var_E0
  loc_B4EEE9: ConcatStr
  loc_B4EEEA: CVarStr var_F0
  loc_B4EEED: FLdRfVar var_C4
  loc_B4EEF0: CStrVarTmp
  loc_B4EEF1: FStStrNoPop var_C8
  loc_B4EEF4: LitStr vbNullString
  loc_B4EEF7: NeStr
  loc_B4EEF9: CVarBoolI2 var_9C
  loc_B4EEFD: FLdRfVar var_110
  loc_B4EF00: ImpAdCallFPR4  = IIf(, , )
  loc_B4EF05: FLdRfVar var_110
  loc_B4EF08: CStrVarTmp
  loc_B4EF09: FStStr var_88
  loc_B4EF0C: FFreeStr var_C8 = ""
  loc_B4EF13: FFreeAd var_B0 = ""
  loc_B4EF1A: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F0 = "": var_100 = ""
  loc_B4EF29: FLdPr Me
  loc_B4EF2C: VCallAd Control_ID_CodiInmuHastaMsk
  loc_B4EF2F: FStAdFunc var_B0
  loc_B4EF32: FLdPr var_B0
  loc_B4EF35: LateIdLdVar var_C4 DispID_22 0
  loc_B4EF3C: PopAd
  loc_B4EF3E: FLdPr Me
  loc_B4EF41: VCallAd Control_ID_CodiInmuHastaMsk
  loc_B4EF44: FStAdFunc var_CC
  loc_B4EF47: FLdPr var_CC
  loc_B4EF4A: LateIdLdVar var_DC DispID_22 0
  loc_B4EF51: PopAd
  loc_B4EF53: LitVarStr var_AC, vbNullString
  loc_B4EF58: FStVarCopyObj var_100
  loc_B4EF5B: FLdRfVar var_100
  loc_B4EF5E: LitStr " AND liqutasa.CodiInmu <= "
  loc_B4EF61: FLdRfVar var_DC
  loc_B4EF64: CStrVarTmp
  loc_B4EF65: FStStrNoPop var_E0
  loc_B4EF68: ConcatStr
  loc_B4EF69: CVarStr var_F0
  loc_B4EF6C: FLdRfVar var_C4
  loc_B4EF6F: CStrVarTmp
  loc_B4EF70: FStStrNoPop var_C8
  loc_B4EF73: LitStr vbNullString
  loc_B4EF76: NeStr
  loc_B4EF78: CVarBoolI2 var_9C
  loc_B4EF7C: FLdRfVar var_110
  loc_B4EF7F: ImpAdCallFPR4  = IIf(, , )
  loc_B4EF84: FLdRfVar var_110
  loc_B4EF87: CStrVarTmp
  loc_B4EF88: FStStr var_8C
  loc_B4EF8B: FFreeStr var_C8 = ""
  loc_B4EF92: FFreeAd var_B0 = ""
  loc_B4EF99: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F0 = "": var_100 = ""
  loc_B4EFA8: FLdPr Me
  loc_B4EFAB: MemLdRfVar from_stack_1.global_80
  loc_B4EFAE: NewIfNullAd
  loc_B4EFB1: FStAd var_114 
  loc_B4EFB5: LitStr "SELECT liqutasa.BimeLiqu, liqutasa.CodiInmu, liqutasa.DetaPers, CodiRyB, AvalInmu, ifnull(DetaExce,'') as DetaExce,"
  loc_B4EFB8: LitStr " cast(if(PorcExce is null,'',concat('(',PorcExce,'" & Chr(37) & ")')) AS CHAR) as PorcExce, inmurentas.FfexInmu, liqutasa.CodiLoca, DeudLita,"
  loc_B4EFBB: ConcatStr
  loc_B4EFBC: FStStrNoPop var_C8
  loc_B4EFBF: LitStr " OrdeLita, liqutasa.CodiConc, DetaConc, ImpoLita, ExenLita, DescLita, CrafLita, TotaLita, TipoLita, TipoVenc"
  loc_B4EFC2: ConcatStr
  loc_B4EFC3: FStStrNoPop var_E0
  loc_B4EFC6: LitStr " FROM liqutasa"
  loc_B4EFC9: ConcatStr
  loc_B4EFCA: FStStrNoPop var_118
  loc_B4EFCD: LitStr " INNER JOIN inmurentas ON inmurentas.CodiInmu = liqutasa.CodiInmu"
  loc_B4EFD0: ConcatStr
  loc_B4EFD1: FStStrNoPop var_11C
  loc_B4EFD4: LitStr " LEFT JOIN eximicion ON eximicion.CodiExce = inmurentas.CodiExce"
  loc_B4EFD7: ConcatStr
  loc_B4EFD8: FStStrNoPop var_120
  loc_B4EFDB: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_B4EFDE: ConcatStr
  loc_B4EFDF: FStStrNoPop var_124
  loc_B4EFE2: ImpAdLdI2 MemVar_D93034
  loc_B4EFE5: CStrUI1
  loc_B4EFE7: FStStrNoPop var_128
  loc_B4EFEA: ConcatStr
  loc_B4EFEB: FStStrNoPop var_12C
  loc_B4EFEE: LitStr " AND concepto.CodiConc = liqutasa.CodiConc"
  loc_B4EFF1: ConcatStr
  loc_B4EFF2: FStStrNoPop var_130
  loc_B4EFF5: LitStr " WHERE liqutasa.PeriLiqu = "
  loc_B4EFF8: ConcatStr
  loc_B4EFF9: FStStrNoPop var_138
  loc_B4EFFC: FLdRfVar var_132
  loc_B4EFFF: FLdPr Me
  loc_B4F002: MemLdRfVar from_stack_1.global_76
  loc_B4F005: NewIfNullPr clsliquidacion
  loc_B4F008: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B4F00D: FLdI2 var_132
  loc_B4F010: CStrUI1
  loc_B4F012: FStStrNoPop var_13C
  loc_B4F015: ConcatStr
  loc_B4F016: FStStrNoPop var_140
  loc_B4F019: LitStr " AND liqutasa.CodiTili = "
  loc_B4F01C: ConcatStr
  loc_B4F01D: FStStrNoPop var_148
  loc_B4F020: FLdRfVar var_142
  loc_B4F023: FLdPr Me
  loc_B4F026: MemLdRfVar from_stack_1.global_76
  loc_B4F029: NewIfNullPr clsliquidacion
  loc_B4F02C: from_stack_1 = clsliquidacion.CodiTili
  loc_B4F031: FLdUI1
  loc_B4F035: CStrI2
  loc_B4F037: FStStrNoPop var_14C
  loc_B4F03A: ConcatStr
  loc_B4F03B: FStStrNoPop var_150
  loc_B4F03E: LitStr " AND liqutasa.NumeLiqu = "
  loc_B4F041: ConcatStr
  loc_B4F042: FStStrNoPop var_158
  loc_B4F045: FLdRfVar var_152
  loc_B4F048: FLdPr Me
  loc_B4F04B: MemLdRfVar from_stack_1.global_76
  loc_B4F04E: NewIfNullPr clsliquidacion
  loc_B4F051: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B4F056: FLdI2 var_152
  loc_B4F059: CStrUI1
  loc_B4F05B: FStStrNoPop var_15C
  loc_B4F05E: ConcatStr
  loc_B4F05F: FStStrNoPop var_160
  loc_B4F062: ILdRf var_88
  loc_B4F065: ConcatStr
  loc_B4F066: FStStrNoPop var_164
  loc_B4F069: ILdRf var_8C
  loc_B4F06C: ConcatStr
  loc_B4F06D: FStStrNoPop var_168
  loc_B4F070: LitStr " ORDER BY liqutasa.CodiInmu, liqutasa.PeriLiqu, liqutasa.BimeLiqu, liqutasa.CodiTili, liqutasa.NumeLiqu, liqutasa.CodiConc"
  loc_B4F073: ConcatStr
  loc_B4F074: FStStrNoPop var_16C
  loc_B4F077: FLdPr var_114
  loc_B4F07A: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_B4F07F: FFreeStr var_C8 = "": var_E0 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = "": var_140 = "": var_148 = "": var_14C = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_B4F0AC: FLdRfVar var_B4
  loc_B4F0AF: FLdPr var_114
  loc_B4F0B2: from_stack_1 = clsliqutasa.RecordCount
  loc_B4F0B7: ILdRf var_B4
  loc_B4F0BA: LitI4 1
  loc_B4F0BF: LtI4
  loc_B4F0C0: BranchF loc_B4F0CE
  loc_B4F0C3: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B4F0C6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4F0CB: Branch loc_B4F16F
  loc_B4F0CE: LitI4 0
  loc_B4F0D3: FLdPr Me
  loc_B4F0D6: MemStI4 global_88
  loc_B4F0D9: LitI4 0
  loc_B4F0DE: LitI4 1
  loc_B4F0E3: FLdPr Me
  loc_B4F0E6: MemLdRfVar from_stack_1.global_96
  loc_B4F0E9: Redim
  loc_B4F0F3: LitI4 0
  loc_B4F0F8: LitI4 1
  loc_B4F0FD: FLdPr Me
  loc_B4F100: MemLdRfVar from_stack_1.global_84
  loc_B4F103: Redim
  loc_B4F10D: FLdPr var_114
  loc_B4F110: Call clsliqutasa.MoveFirst()
  loc_B4F115: Call Proc_168_15_B1ACC4()
  loc_B4F11A: FLdRfVar var_132
  loc_B4F11D: FLdPr var_114
  loc_B4F120: from_stack_1 = clsliqutasa.EOF
  loc_B4F125: FLdI2 var_132
  loc_B4F128: NotI4
  loc_B4F129: BranchF loc_B4F161
  loc_B4F12C: FLdRfVar var_B4
  loc_B4F12F: FLdPr var_114
  loc_B4F132: from_stack_1 = clsliqutasa.CodiInmu
  loc_B4F137: ILdRf var_B4
  loc_B4F13A: CR8I4
  loc_B4F13B: FLdPr Me
  loc_B4F13E: MemLdStr global_88
  loc_B4F141: FLdPr Me
  loc_B4F144: MemLdStr global_84
  loc_B4F147: Ary1LdPr
  loc_B4F148: MemLdStr global_0
  loc_B4F14B: CR8Str
  loc_B4F14D: NeR8
  loc_B4F14E: BranchF loc_B4F159
  loc_B4F151: Call Proc_168_15_B1ACC4()
  loc_B4F156: Branch loc_B4F15E
  loc_B4F159: Call Proc_168_16_B7B29C()
  loc_B4F15E: Branch loc_B4F11A
  loc_B4F161: LitNothing
  loc_B4F163: FStAd var_114 
  loc_B4F167: LitI2_Byte &HFF
  loc_B4F169: FLdPr Me
  loc_B4F16C: MemStI2 bGenerado
  loc_B4F16F: LitI4 0
  loc_B4F174: CI2I4
  loc_B4F175: FLdPr Me
  loc_B4F178: Me.MousePointer = from_stack_1
  loc_B4F17D: LitVarStr var_9C, vbNullString
  loc_B4F182: PopAdLdVar
  loc_B4F183: FLdPr Me
  loc_B4F186: VCallAd Control_ID_statusBar
  loc_B4F189: FStAdFunc var_B0
  loc_B4F18C: FLdPr var_B0
  loc_B4F18F: LateIdSt
  loc_B4F194: FFree1Ad var_B0
  loc_B4F197: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BB2554
  'Data Table: 473FB4
  loc_BB1EF8: FLdRfVar var_88
  loc_BB1EFB: LitI2_Byte 0
  loc_BB1EFD: LitI2_Byte &HFF
  loc_BB1EFF: ImpAdLdI4 MemVar_D93C84
  loc_BB1F02: FLdPr Me
  loc_BB1F05: MemLdRfVar from_stack_1.global_56
  loc_BB1F08: NewIfNullPr IFileSystem3
  loc_BB1F0B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BB1F10: ILdRf var_88
  loc_BB1F13: FLdPr Me
  loc_BB1F16: MemStVarAd
  loc_BB1F1A: FFree1Ad var_88
  loc_BB1F1D: LitI2_Byte &HFF
  loc_BB1F1F: ImpAdStI2 MemVar_D93C8A
  loc_BB1F22: Call Proc_168_17_C07DB0()
  loc_BB1F27: LitI4 1
  loc_BB1F2C: FLdPr Me
  loc_BB1F2F: MemLdRfVar from_stack_1.global_88
  loc_BB1F32: FLdPr Me
  loc_BB1F35: MemLdStr global_84
  loc_BB1F38: LitI2_Byte 1
  loc_BB1F3A: FnUBound
  loc_BB1F3C: ForI4 var_90
  loc_BB1F42: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BB1F47: PopAdLdVar
  loc_BB1F48: FLdPr Me
  loc_BB1F4B: MemLdRfVar from_stack_1.global_60
  loc_BB1F4E: LdPrVar
  loc_BB1F50: LateMemCall
  loc_BB1F56: FLdPr Me
  loc_BB1F59: MemLdStr global_88
  loc_BB1F5C: FLdPr Me
  loc_BB1F5F: MemLdStr global_84
  loc_BB1F62: AryLock
  loc_BB1F65: Ary1LdRf
  loc_BB1F66: FStR4 var_B8
  loc_BB1F69: LitStr "   <td rowspan="""
  loc_BB1F6C: FMemLdR4 var_B8(40)
  loc_BB1F71: LitI2_Byte 1
  loc_BB1F73: FnUBound
  loc_BB1F75: CStrI4
  loc_BB1F77: FStStrNoPop var_BC
  loc_BB1F7A: ConcatStr
  loc_BB1F7B: FStStrNoPop var_C0
  loc_BB1F7E: LitStr """ align=""right"">"
  loc_BB1F81: ConcatStr
  loc_BB1F82: FStStrNoPop var_C4
  loc_BB1F85: FMemLdR4 var_B8(0)
  loc_BB1F8A: ConcatStr
  loc_BB1F8B: FStStrNoPop var_C8
  loc_BB1F8E: LitStr "</td>"
  loc_BB1F91: ConcatStr
  loc_BB1F92: CVarStr var_D8
  loc_BB1F95: PopAdLdVar
  loc_BB1F96: FLdPr Me
  loc_BB1F99: MemLdRfVar from_stack_1.global_60
  loc_BB1F9C: LdPrVar
  loc_BB1F9E: LateMemCall
  loc_BB1FA4: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB1FAF: FFree1Var var_D8 = ""
  loc_BB1FB2: LitStr "   <td rowspan="""
  loc_BB1FB5: FMemLdR4 var_B8(40)
  loc_BB1FBA: LitI2_Byte 1
  loc_BB1FBC: FnUBound
  loc_BB1FBE: CStrI4
  loc_BB1FC0: FStStrNoPop var_BC
  loc_BB1FC3: ConcatStr
  loc_BB1FC4: FStStrNoPop var_C0
  loc_BB1FC7: LitStr """ align=""left"">"
  loc_BB1FCA: ConcatStr
  loc_BB1FCB: FStStrNoPop var_C4
  loc_BB1FCE: FMemLdR4 var_B8(4)
  loc_BB1FD3: ConcatStr
  loc_BB1FD4: FStStrNoPop var_C8
  loc_BB1FD7: LitStr "</td>"
  loc_BB1FDA: ConcatStr
  loc_BB1FDB: CVarStr var_D8
  loc_BB1FDE: PopAdLdVar
  loc_BB1FDF: FLdPr Me
  loc_BB1FE2: MemLdRfVar from_stack_1.global_60
  loc_BB1FE5: LdPrVar
  loc_BB1FE7: LateMemCall
  loc_BB1FED: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB1FF8: FFree1Var var_D8 = ""
  loc_BB1FFB: LitStr "   <td rowspan="""
  loc_BB1FFE: FMemLdR4 var_B8(40)
  loc_BB2003: LitI2_Byte 1
  loc_BB2005: FnUBound
  loc_BB2007: CStrI4
  loc_BB2009: FStStrNoPop var_BC
  loc_BB200C: ConcatStr
  loc_BB200D: FStStrNoPop var_C0
  loc_BB2010: LitStr """ align=""left"">"
  loc_BB2013: ConcatStr
  loc_BB2014: FStStrNoPop var_C4
  loc_BB2017: FMemLdR4 var_B8(8)
  loc_BB201C: ConcatStr
  loc_BB201D: FStStrNoPop var_C8
  loc_BB2020: LitStr "</td>"
  loc_BB2023: ConcatStr
  loc_BB2024: CVarStr var_D8
  loc_BB2027: PopAdLdVar
  loc_BB2028: FLdPr Me
  loc_BB202B: MemLdRfVar from_stack_1.global_60
  loc_BB202E: LdPrVar
  loc_BB2030: LateMemCall
  loc_BB2036: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB2041: FFree1Var var_D8 = ""
  loc_BB2044: LitStr "   <td rowspan="""
  loc_BB2047: FMemLdR4 var_B8(40)
  loc_BB204C: LitI2_Byte 1
  loc_BB204E: FnUBound
  loc_BB2050: CStrI4
  loc_BB2052: FStStrNoPop var_BC
  loc_BB2055: ConcatStr
  loc_BB2056: FStStrNoPop var_C0
  loc_BB2059: LitStr """ align=""left"">"
  loc_BB205C: ConcatStr
  loc_BB205D: FStStrNoPop var_C4
  loc_BB2060: FMemLdR4 var_B8(12)
  loc_BB2065: ConcatStr
  loc_BB2066: FStStrNoPop var_C8
  loc_BB2069: LitStr "</td>"
  loc_BB206C: ConcatStr
  loc_BB206D: CVarStr var_D8
  loc_BB2070: PopAdLdVar
  loc_BB2071: FLdPr Me
  loc_BB2074: MemLdRfVar from_stack_1.global_60
  loc_BB2077: LdPrVar
  loc_BB2079: LateMemCall
  loc_BB207F: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB208A: FFree1Var var_D8 = ""
  loc_BB208D: LitStr "   <td rowspan="""
  loc_BB2090: FMemLdR4 var_B8(40)
  loc_BB2095: LitI2_Byte 1
  loc_BB2097: FnUBound
  loc_BB2099: CStrI4
  loc_BB209B: FStStrNoPop var_BC
  loc_BB209E: ConcatStr
  loc_BB209F: FStStrNoPop var_C0
  loc_BB20A2: LitStr """ align=""left"">"
  loc_BB20A5: ConcatStr
  loc_BB20A6: CVarStr var_10C
  loc_BB20A9: LitVarStr var_B0, "&nbsp;"
  loc_BB20AE: FStVarCopyObj var_EC
  loc_BB20B1: FLdRfVar var_EC
  loc_BB20B4: FMemLdR4 var_B8(16)
  loc_BB20B9: LitStr " "
  loc_BB20BC: ConcatStr
  loc_BB20BD: FStStrNoPop var_C4
  loc_BB20C0: FMemLdR4 var_B8(20)
  loc_BB20C5: ConcatStr
  loc_BB20C6: FStStrNoPop var_C8
  loc_BB20C9: LitStr " Fecha Fin.: "
  loc_BB20CC: ConcatStr
  loc_BB20CD: FStStrNoPop var_DC
  loc_BB20D0: FMemLdR4 var_B8(24)
  loc_BB20D5: ConcatStr
  loc_BB20D6: CVarStr var_D8
  loc_BB20D9: FMemLdR4 var_B8(16)
  loc_BB20DE: LitStr vbNullString
  loc_BB20E1: NeStr
  loc_BB20E3: CVarBoolI2 var_A0
  loc_BB20E7: FLdRfVar var_FC
  loc_BB20EA: ImpAdCallFPR4  = IIf(, , )
  loc_BB20EF: FLdRfVar var_FC
  loc_BB20F2: ConcatVar var_11C
  loc_BB20F6: LitVarStr var_12C, "</td>"
  loc_BB20FB: ConcatVar var_13C
  loc_BB20FF: PopAdLdVar
  loc_BB2100: FLdPr Me
  loc_BB2103: MemLdRfVar from_stack_1.global_60
  loc_BB2106: LdPrVar
  loc_BB2108: LateMemCall
  loc_BB210E: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_BB211B: FFreeVar var_A0 = "": var_D8 = "": var_EC = "": var_10C = "": var_FC = "": var_11C = ""
  loc_BB212C: LitStr "   <td rowspan="""
  loc_BB212F: FMemLdR4 var_B8(40)
  loc_BB2134: LitI2_Byte 1
  loc_BB2136: FnUBound
  loc_BB2138: CStrI4
  loc_BB213A: FStStrNoPop var_BC
  loc_BB213D: ConcatStr
  loc_BB213E: FStStrNoPop var_C0
  loc_BB2141: LitStr """ align=""right"">"
  loc_BB2144: ConcatStr
  loc_BB2145: FStStrNoPop var_C4
  loc_BB2148: FMemLdR4 var_B8(28)
  loc_BB214D: ConcatStr
  loc_BB214E: FStStrNoPop var_C8
  loc_BB2151: LitStr "</td>"
  loc_BB2154: ConcatStr
  loc_BB2155: CVarStr var_D8
  loc_BB2158: PopAdLdVar
  loc_BB2159: FLdPr Me
  loc_BB215C: MemLdRfVar from_stack_1.global_60
  loc_BB215F: LdPrVar
  loc_BB2161: LateMemCall
  loc_BB2167: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB2172: FFree1Var var_D8 = ""
  loc_BB2175: LitStr "   <td rowspan="""
  loc_BB2178: FMemLdR4 var_B8(40)
  loc_BB217D: LitI2_Byte 1
  loc_BB217F: FnUBound
  loc_BB2181: CStrI4
  loc_BB2183: FStStrNoPop var_BC
  loc_BB2186: ConcatStr
  loc_BB2187: FStStrNoPop var_C0
  loc_BB218A: LitStr """ align=""right"">"
  loc_BB218D: ConcatStr
  loc_BB218E: FStStrNoPop var_C4
  loc_BB2191: FMemLdR4 var_B8(32)
  loc_BB2196: ConcatStr
  loc_BB2197: FStStrNoPop var_C8
  loc_BB219A: LitStr "</td>"
  loc_BB219D: ConcatStr
  loc_BB219E: CVarStr var_D8
  loc_BB21A1: PopAdLdVar
  loc_BB21A2: FLdPr Me
  loc_BB21A5: MemLdRfVar from_stack_1.global_60
  loc_BB21A8: LdPrVar
  loc_BB21AA: LateMemCall
  loc_BB21B0: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB21BB: FFree1Var var_D8 = ""
  loc_BB21BE: LitStr "   <td rowspan="""
  loc_BB21C1: FMemLdR4 var_B8(40)
  loc_BB21C6: LitI2_Byte 1
  loc_BB21C8: FnUBound
  loc_BB21CA: CStrI4
  loc_BB21CC: FStStrNoPop var_BC
  loc_BB21CF: ConcatStr
  loc_BB21D0: FStStrNoPop var_C0
  loc_BB21D3: LitStr """ align=""right"">"
  loc_BB21D6: ConcatStr
  loc_BB21D7: FStStrNoPop var_C4
  loc_BB21DA: FMemLdR4 var_B8(36)
  loc_BB21DF: ConcatStr
  loc_BB21E0: FStStrNoPop var_C8
  loc_BB21E3: LitStr "</td>"
  loc_BB21E6: ConcatStr
  loc_BB21E7: CVarStr var_D8
  loc_BB21EA: PopAdLdVar
  loc_BB21EB: FLdPr Me
  loc_BB21EE: MemLdRfVar from_stack_1.global_60
  loc_BB21F1: LdPrVar
  loc_BB21F3: LateMemCall
  loc_BB21F9: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB2204: FFree1Var var_D8 = ""
  loc_BB2207: LitI2_Byte 1
  loc_BB2209: CUI1I2
  loc_BB220B: FLdPr Me
  loc_BB220E: MemLdRfVar from_stack_1.global_92
  loc_BB2211: FMemLdR4 var_B8(40)
  loc_BB2216: LitI2_Byte 1
  loc_BB2218: FnUBound
  loc_BB221A: CUI1I4
  loc_BB221C: ForUI1 var_150
  loc_BB2222: FLdPr Me
  loc_BB2225: MemLdUI1 global_92
  loc_BB2229: CI2UI1
  loc_BB222B: LitI2_Byte 1
  loc_BB222D: GtI2
  loc_BB222E: BranchF loc_BB2245
  loc_BB2231: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BB2236: PopAdLdVar
  loc_BB2237: FLdPr Me
  loc_BB223A: MemLdRfVar from_stack_1.global_60
  loc_BB223D: LdPrVar
  loc_BB223F: LateMemCall
  loc_BB2245: FLdPr Me
  loc_BB2248: MemLdUI1 global_92
  loc_BB224C: CI4UI1
  loc_BB224D: FMemLdR4 var_B8(40)
  loc_BB2252: AryLock
  loc_BB2255: Ary1LdRf
  loc_BB2256: FStR4 var_158
  loc_BB2259: LitI4 5
  loc_BB225E: FMemLdR4 var_158(8)
  loc_BB2263: ImpAdCallI2 Left$(, )
  loc_BB2268: FStStr var_DC
  loc_BB226B: LitStr vbNullString
  loc_BB226E: LitI2_Byte 0
  loc_BB2270: LitI2_Byte 0
  loc_BB2272: LitI2_Byte 0
  loc_BB2274: LitStr "left"
  loc_BB2277: FMemLdR4 var_158(0)
  loc_BB227C: LitStr "&nbsp;("
  loc_BB227F: ConcatStr
  loc_BB2280: FStStrNoPop var_BC
  loc_BB2283: FLdZeroAd var_DC
  loc_BB2286: FStStrNoPop var_C0
  loc_BB2289: ConcatStr
  loc_BB228A: FStStrNoPop var_C4
  loc_BB228D: LitStr ")"
  loc_BB2290: ConcatStr
  loc_BB2291: FStStrNoPop var_C8
  loc_BB2294: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB2299: CVarStr var_D8
  loc_BB229C: PopAdLdVar
  loc_BB229D: FLdPr Me
  loc_BB22A0: MemLdRfVar from_stack_1.global_60
  loc_BB22A3: LdPrVar
  loc_BB22A5: LateMemCall
  loc_BB22AB: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_BB22B8: FFree1Var var_D8 = ""
  loc_BB22BB: FMemLdRf 0
  loc_BB22C0: FStR4 var_15C
  loc_BB22C3: LitStr vbNullString
  loc_BB22C6: LitI2_Byte 0
  loc_BB22C8: LitI2_Byte 0
  loc_BB22CA: LitI2_Byte 0
  loc_BB22CC: LitStr "right"
  loc_BB22CF: FMemLdR4 var_15C(0)
  loc_BB22D4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB22D9: CVarStr var_D8
  loc_BB22DC: PopAdLdVar
  loc_BB22DD: FLdPr Me
  loc_BB22E0: MemLdRfVar from_stack_1.global_60
  loc_BB22E3: LdPrVar
  loc_BB22E5: LateMemCall
  loc_BB22EB: FFree1Var var_D8 = ""
  loc_BB22EE: LitStr vbNullString
  loc_BB22F1: LitI2_Byte 0
  loc_BB22F3: LitI2_Byte 0
  loc_BB22F5: LitI2_Byte 0
  loc_BB22F7: LitStr "right"
  loc_BB22FA: FMemLdR4 var_15C(4)
  loc_BB22FF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB2304: CVarStr var_D8
  loc_BB2307: PopAdLdVar
  loc_BB2308: FLdPr Me
  loc_BB230B: MemLdRfVar from_stack_1.global_60
  loc_BB230E: LdPrVar
  loc_BB2310: LateMemCall
  loc_BB2316: FFree1Var var_D8 = ""
  loc_BB2319: LitStr vbNullString
  loc_BB231C: LitI2_Byte 0
  loc_BB231E: LitI2_Byte 0
  loc_BB2320: LitI2_Byte 0
  loc_BB2322: LitStr "right"
  loc_BB2325: FMemLdR4 var_15C(8)
  loc_BB232A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB232F: CVarStr var_D8
  loc_BB2332: PopAdLdVar
  loc_BB2333: FLdPr Me
  loc_BB2336: MemLdRfVar from_stack_1.global_60
  loc_BB2339: LdPrVar
  loc_BB233B: LateMemCall
  loc_BB2341: FFree1Var var_D8 = ""
  loc_BB2344: LitStr vbNullString
  loc_BB2347: LitI2_Byte 0
  loc_BB2349: LitI2_Byte 0
  loc_BB234B: LitI2_Byte 0
  loc_BB234D: LitStr "right"
  loc_BB2350: FMemLdR4 var_15C(12)
  loc_BB2355: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB235A: CVarStr var_D8
  loc_BB235D: PopAdLdVar
  loc_BB235E: FLdPr Me
  loc_BB2361: MemLdRfVar from_stack_1.global_60
  loc_BB2364: LdPrVar
  loc_BB2366: LateMemCall
  loc_BB236C: FFree1Var var_D8 = ""
  loc_BB236F: LitStr vbNullString
  loc_BB2372: LitI2_Byte 0
  loc_BB2374: LitI2_Byte 0
  loc_BB2376: LitI2_Byte 0
  loc_BB2378: LitStr "right"
  loc_BB237B: FMemLdR4 var_15C(16)
  loc_BB2380: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB2385: CVarStr var_D8
  loc_BB2388: PopAdLdVar
  loc_BB2389: FLdPr Me
  loc_BB238C: MemLdRfVar from_stack_1.global_60
  loc_BB238F: LdPrVar
  loc_BB2391: LateMemCall
  loc_BB2397: FFree1Var var_D8 = ""
  loc_BB239A: LitVarStr var_A0, "     </tr>"
  loc_BB239F: PopAdLdVar
  loc_BB23A0: FLdPr Me
  loc_BB23A3: MemLdRfVar from_stack_1.global_60
  loc_BB23A6: LdPrVar
  loc_BB23A8: LateMemCall
  loc_BB23AE: LitI4 0
  loc_BB23B3: FStR4 var_15C
  loc_BB23B6: LitI4 0
  loc_BB23BB: FStR4 var_158
  loc_BB23BE: AryUnlock
  loc_BB23C1: FLdPr Me
  loc_BB23C4: MemLdRfVar from_stack_1.global_92
  loc_BB23C7: NextUI1
  loc_BB23CD: LitI4 0
  loc_BB23D2: FStR4 var_B8
  loc_BB23D5: AryUnlock
  loc_BB23D8: FLdPr Me
  loc_BB23DB: MemLdRfVar from_stack_1.global_88
  loc_BB23DE: NextI4 var_90, loc_BB1F42
  loc_BB23E3: LitVarStr var_A0, "  <tr valign=""top"" class=""Totales"" align=""right"">"
  loc_BB23E8: PopAdLdVar
  loc_BB23E9: FLdPr Me
  loc_BB23EC: MemLdRfVar from_stack_1.global_60
  loc_BB23EF: LdPrVar
  loc_BB23F1: LateMemCall
  loc_BB23F7: LitStr "    <td colspan=""9"">Total ("
  loc_BB23FA: FLdPr Me
  loc_BB23FD: MemLdStr global_84
  loc_BB2400: LitI2_Byte 1
  loc_BB2402: FnUBound
  loc_BB2404: CStrI4
  loc_BB2406: FStStrNoPop var_BC
  loc_BB2409: ConcatStr
  loc_BB240A: FStStrNoPop var_C0
  loc_BB240D: LitStr " inmuebles)</td>"
  loc_BB2410: ConcatStr
  loc_BB2411: CVarStr var_D8
  loc_BB2414: PopAdLdVar
  loc_BB2415: FLdPr Me
  loc_BB2418: MemLdRfVar from_stack_1.global_60
  loc_BB241B: LdPrVar
  loc_BB241D: LateMemCall
  loc_BB2423: FFreeStr var_BC = ""
  loc_BB242A: FFree1Var var_D8 = ""
  loc_BB242D: LitI4 1
  loc_BB2432: FLdPr Me
  loc_BB2435: MemLdStr global_96
  loc_BB2438: AryLock
  loc_BB243B: Ary1LdRf
  loc_BB243C: FStR4 var_164
  loc_BB243F: LitStr vbNullString
  loc_BB2442: LitI2_Byte 0
  loc_BB2444: LitI2_Byte 0
  loc_BB2446: LitI2_Byte 0
  loc_BB2448: LitStr "right"
  loc_BB244B: FMemLdR4 var_164(0)
  loc_BB2450: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB2455: CVarStr var_D8
  loc_BB2458: PopAdLdVar
  loc_BB2459: FLdPr Me
  loc_BB245C: MemLdRfVar from_stack_1.global_60
  loc_BB245F: LdPrVar
  loc_BB2461: LateMemCall
  loc_BB2467: FFree1Var var_D8 = ""
  loc_BB246A: LitStr vbNullString
  loc_BB246D: LitI2_Byte 0
  loc_BB246F: LitI2_Byte 0
  loc_BB2471: LitI2_Byte 0
  loc_BB2473: LitStr "right"
  loc_BB2476: FMemLdR4 var_164(4)
  loc_BB247B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB2480: CVarStr var_D8
  loc_BB2483: PopAdLdVar
  loc_BB2484: FLdPr Me
  loc_BB2487: MemLdRfVar from_stack_1.global_60
  loc_BB248A: LdPrVar
  loc_BB248C: LateMemCall
  loc_BB2492: FFree1Var var_D8 = ""
  loc_BB2495: LitStr vbNullString
  loc_BB2498: LitI2_Byte 0
  loc_BB249A: LitI2_Byte 0
  loc_BB249C: LitI2_Byte 0
  loc_BB249E: LitStr "right"
  loc_BB24A1: FMemLdR4 var_164(8)
  loc_BB24A6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB24AB: CVarStr var_D8
  loc_BB24AE: PopAdLdVar
  loc_BB24AF: FLdPr Me
  loc_BB24B2: MemLdRfVar from_stack_1.global_60
  loc_BB24B5: LdPrVar
  loc_BB24B7: LateMemCall
  loc_BB24BD: FFree1Var var_D8 = ""
  loc_BB24C0: LitStr vbNullString
  loc_BB24C3: LitI2_Byte 0
  loc_BB24C5: LitI2_Byte 0
  loc_BB24C7: LitI2_Byte 0
  loc_BB24C9: LitStr "right"
  loc_BB24CC: FMemLdR4 var_164(12)
  loc_BB24D1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB24D6: CVarStr var_D8
  loc_BB24D9: PopAdLdVar
  loc_BB24DA: FLdPr Me
  loc_BB24DD: MemLdRfVar from_stack_1.global_60
  loc_BB24E0: LdPrVar
  loc_BB24E2: LateMemCall
  loc_BB24E8: FFree1Var var_D8 = ""
  loc_BB24EB: LitStr vbNullString
  loc_BB24EE: LitI2_Byte 0
  loc_BB24F0: LitI2_Byte 0
  loc_BB24F2: LitI2_Byte 0
  loc_BB24F4: LitStr "right"
  loc_BB24F7: FMemLdR4 var_164(16)
  loc_BB24FC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB2501: CVarStr var_D8
  loc_BB2504: PopAdLdVar
  loc_BB2505: FLdPr Me
  loc_BB2508: MemLdRfVar from_stack_1.global_60
  loc_BB250B: LdPrVar
  loc_BB250D: LateMemCall
  loc_BB2513: FFree1Var var_D8 = ""
  loc_BB2516: LitI4 0
  loc_BB251B: FStR4 var_164
  loc_BB251E: AryUnlock
  loc_BB2521: LitVarStr var_A0, "     </tr>"
  loc_BB2526: PopAdLdVar
  loc_BB2527: FLdPr Me
  loc_BB252A: MemLdRfVar from_stack_1.global_60
  loc_BB252D: LdPrVar
  loc_BB252F: LateMemCall
  loc_BB2535: Call Proc_168_18_A0C0C8()
  loc_BB253A: FLdPr Me
  loc_BB253D: MemLdRfVar from_stack_1.global_60
  loc_BB2540: LdPrVar
  loc_BB2542: LateMemCall
  loc_BB2548: LitStr vbNullString
  loc_BB254B: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BB2550: ExitProcHresult
End Sub

Private Function Proc_168_15_B1ACC4() 'B1ACC4
  'Data Table: 473FB4
  loc_B1AA3C: FLdPr Me
  loc_B1AA3F: MemLdStr global_88
  loc_B1AA42: LitI4 1
  loc_B1AA47: AddI4
  loc_B1AA48: FLdPr Me
  loc_B1AA4B: MemStI4 global_88
  loc_B1AA4E: LitI2_Byte 0
  loc_B1AA50: CUI1I2
  loc_B1AA52: FLdPr Me
  loc_B1AA55: MemStUI1
  loc_B1AA59: LitI4 0
  loc_B1AA5E: FLdPr Me
  loc_B1AA61: MemLdStr global_88
  loc_B1AA64: FLdPr Me
  loc_B1AA67: MemLdRfVar from_stack_1.global_84
  loc_B1AA6A: RedimPreserve
  loc_B1AA74: FLdPr Me
  loc_B1AA77: MemLdRfVar from_stack_1.global_80
  loc_B1AA7A: NewIfNullAd
  loc_B1AA7D: FStAd var_88 
  loc_B1AA81: FLdRfVar var_8C
  loc_B1AA84: FLdPr var_88
  loc_B1AA87: from_stack_1 = clsliqutasa.CodiInmu
  loc_B1AA8C: LitI2_Byte 0
  loc_B1AA8E: LitVar_Missing var_C0
  loc_B1AA91: LitI2_Byte 0
  loc_B1AA93: ILdRf var_8C
  loc_B1AA96: CVarI4
  loc_B1AA9A: PopAdLdVar
  loc_B1AA9B: FLdPr Me
  loc_B1AA9E: MemLdStr global_88
  loc_B1AAA1: FLdPr Me
  loc_B1AAA4: MemLdStr global_84
  loc_B1AAA7: AryLock
  loc_B1AAAA: Ary1LdPr
  loc_B1AAAB: MemLdRfVar from_stack_1.global_0
  loc_B1AAAE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1AAB3: AryUnlock
  loc_B1AAB6: FFree1Var var_C0 = ""
  loc_B1AAB9: FLdRfVar var_C0
  loc_B1AABC: FLdPr var_88
  loc_B1AABF: from_stack_1 = clsliqutasa.DetaPers
  loc_B1AAC4: LitI2_Byte 0
  loc_B1AAC6: LitVar_Missing var_D0
  loc_B1AAC9: LitI2_Byte 0
  loc_B1AACB: FLdVar var_C0
  loc_B1AACF: FLdPr Me
  loc_B1AAD2: MemLdStr global_88
  loc_B1AAD5: FLdPr Me
  loc_B1AAD8: MemLdStr global_84
  loc_B1AADB: AryLock
  loc_B1AADE: Ary1LdPr
  loc_B1AADF: MemLdRfVar from_stack_1.global_4
  loc_B1AAE2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1AAE7: AryUnlock
  loc_B1AAEA: FFreeVar var_C0 = ""
  loc_B1AAF1: FLdRfVar var_D4
  loc_B1AAF4: FLdPr var_88
  loc_B1AAF7: from_stack_1 = clsliqutasa.CodiRyB
  loc_B1AAFC: LitI2_Byte 0
  loc_B1AAFE: LitVar_Missing var_D0
  loc_B1AB01: LitI2_Byte 0
  loc_B1AB03: FLdZeroAd var_D4
  loc_B1AB06: CVarStr var_C0
  loc_B1AB09: PopAdLdVar
  loc_B1AB0A: FLdPr Me
  loc_B1AB0D: MemLdStr global_88
  loc_B1AB10: FLdPr Me
  loc_B1AB13: MemLdStr global_84
  loc_B1AB16: AryLock
  loc_B1AB19: Ary1LdPr
  loc_B1AB1A: MemLdRfVar from_stack_1.global_8
  loc_B1AB1D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1AB22: AryUnlock
  loc_B1AB25: FFreeVar var_C0 = ""
  loc_B1AB2C: FLdRfVar var_D4
  loc_B1AB2F: FLdPr var_88
  loc_B1AB32: from_stack_1 = clsliqutasa.AvalInmu
  loc_B1AB37: LitI2_Byte 0
  loc_B1AB39: LitVar_Missing var_D0
  loc_B1AB3C: LitI2_Byte 0
  loc_B1AB3E: FLdZeroAd var_D4
  loc_B1AB41: CVarStr var_C0
  loc_B1AB44: PopAdLdVar
  loc_B1AB45: FLdPr Me
  loc_B1AB48: MemLdStr global_88
  loc_B1AB4B: FLdPr Me
  loc_B1AB4E: MemLdStr global_84
  loc_B1AB51: AryLock
  loc_B1AB54: Ary1LdPr
  loc_B1AB55: MemLdRfVar from_stack_1.global_12
  loc_B1AB58: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1AB5D: AryUnlock
  loc_B1AB60: FFreeVar var_C0 = ""
  loc_B1AB67: FLdRfVar var_C0
  loc_B1AB6A: FLdPr var_88
  loc_B1AB6D: from_stack_1 = clsliqutasa.DetaExce
  loc_B1AB72: LitI2_Byte 0
  loc_B1AB74: LitVar_Missing var_D0
  loc_B1AB77: LitI2_Byte 0
  loc_B1AB79: FLdVar var_C0
  loc_B1AB7D: FLdPr Me
  loc_B1AB80: MemLdStr global_88
  loc_B1AB83: FLdPr Me
  loc_B1AB86: MemLdStr global_84
  loc_B1AB89: AryLock
  loc_B1AB8C: Ary1LdPr
  loc_B1AB8D: MemLdRfVar from_stack_1.global_16
  loc_B1AB90: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1AB95: AryUnlock
  loc_B1AB98: FFreeVar var_C0 = ""
  loc_B1AB9F: FLdRfVar var_C0
  loc_B1ABA2: FLdPr var_88
  loc_B1ABA5: from_stack_1 = clsliqutasa.PorcExce
  loc_B1ABAA: LitI2_Byte 0
  loc_B1ABAC: LitVar_Missing var_D0
  loc_B1ABAF: LitI2_Byte 0
  loc_B1ABB1: FLdVar var_C0
  loc_B1ABB5: FLdPr Me
  loc_B1ABB8: MemLdStr global_88
  loc_B1ABBB: FLdPr Me
  loc_B1ABBE: MemLdStr global_84
  loc_B1ABC1: AryLock
  loc_B1ABC4: Ary1LdPr
  loc_B1ABC5: MemLdRfVar from_stack_1.global_20
  loc_B1ABC8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1ABCD: AryUnlock
  loc_B1ABD0: FFreeVar var_C0 = ""
  loc_B1ABD7: FLdRfVar var_C0
  loc_B1ABDA: FLdPr var_88
  loc_B1ABDD: from_stack_1 = clsliqutasa.FfexInmu
  loc_B1ABE2: LitI2_Byte 0
  loc_B1ABE4: LitVar_Missing var_D0
  loc_B1ABE7: LitI2_Byte 0
  loc_B1ABE9: FLdVar var_C0
  loc_B1ABED: FLdPr Me
  loc_B1ABF0: MemLdStr global_88
  loc_B1ABF3: FLdPr Me
  loc_B1ABF6: MemLdStr global_84
  loc_B1ABF9: AryLock
  loc_B1ABFC: Ary1LdPr
  loc_B1ABFD: MemLdRfVar from_stack_1.global_24
  loc_B1AC00: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1AC05: AryUnlock
  loc_B1AC08: FFreeVar var_C0 = ""
  loc_B1AC0F: FLdRfVar var_D6
  loc_B1AC12: FLdPr var_88
  loc_B1AC15: from_stack_1 = clsliqutasa.CodiLoca
  loc_B1AC1A: LitI2_Byte 0
  loc_B1AC1C: LitVar_Missing var_C0
  loc_B1AC1F: LitI2_Byte 0
  loc_B1AC21: FLdI2 var_D6
  loc_B1AC24: CVarI2 var_A0
  loc_B1AC27: PopAdLdVar
  loc_B1AC28: FLdPr Me
  loc_B1AC2B: MemLdStr global_88
  loc_B1AC2E: FLdPr Me
  loc_B1AC31: MemLdStr global_84
  loc_B1AC34: AryLock
  loc_B1AC37: Ary1LdPr
  loc_B1AC38: MemLdRfVar from_stack_1.global_28
  loc_B1AC3B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1AC40: AryUnlock
  loc_B1AC43: FFree1Var var_C0 = ""
  loc_B1AC46: FLdRfVar var_E0
  loc_B1AC49: FLdPr var_88
  loc_B1AC4C: from_stack_1 = clsliqutasa.DeudLita
  loc_B1AC51: LitI2_Byte 0
  loc_B1AC53: LitVar_Missing var_C0
  loc_B1AC56: LitI2_Byte &HFF
  loc_B1AC58: FLdFPR8 var_E0
  loc_B1AC5B: CVarR8
  loc_B1AC5F: PopAdLdVar
  loc_B1AC60: FLdPr Me
  loc_B1AC63: MemLdStr global_88
  loc_B1AC66: FLdPr Me
  loc_B1AC69: MemLdStr global_84
  loc_B1AC6C: AryLock
  loc_B1AC6F: Ary1LdPr
  loc_B1AC70: MemLdRfVar from_stack_1.global_32
  loc_B1AC73: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1AC78: AryUnlock
  loc_B1AC7B: FFree1Var var_C0 = ""
  loc_B1AC7E: FLdRfVar var_8C
  loc_B1AC81: FLdPr var_88
  loc_B1AC84: from_stack_1 = clsliqutasa.OrdeLita
  loc_B1AC89: LitI2_Byte 0
  loc_B1AC8B: LitVar_Missing var_C0
  loc_B1AC8E: LitI2_Byte 0
  loc_B1AC90: ILdRf var_8C
  loc_B1AC93: CVarI4
  loc_B1AC97: PopAdLdVar
  loc_B1AC98: FLdPr Me
  loc_B1AC9B: MemLdStr global_88
  loc_B1AC9E: FLdPr Me
  loc_B1ACA1: MemLdStr global_84
  loc_B1ACA4: AryLock
  loc_B1ACA7: Ary1LdPr
  loc_B1ACA8: MemLdRfVar from_stack_1.global_36
  loc_B1ACAB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1ACB0: AryUnlock
  loc_B1ACB3: FFree1Var var_C0 = ""
  loc_B1ACB6: LitNothing
  loc_B1ACB8: FStAd var_88 
  loc_B1ACBC: Call Proc_168_16_B7B29C()
  loc_B1ACC1: ExitProcHresult
End Function

Private Function Proc_168_16_B7B29C() 'B7B29C
  'Data Table: 473FB4
  loc_B7ADBC: FLdPr Me
  loc_B7ADBF: MemLdUI1 global_92
  loc_B7ADC3: CI2UI1
  loc_B7ADC5: LitI2_Byte 1
  loc_B7ADC7: AddI2
  loc_B7ADC8: CUI1I2
  loc_B7ADCA: FLdPr Me
  loc_B7ADCD: MemStUI1
  loc_B7ADD1: LitI4 0
  loc_B7ADD6: FLdPr Me
  loc_B7ADD9: MemLdUI1 global_92
  loc_B7ADDD: CI4UI1
  loc_B7ADDE: FLdPr Me
  loc_B7ADE1: MemLdStr global_88
  loc_B7ADE4: FLdPr Me
  loc_B7ADE7: MemLdStr global_84
  loc_B7ADEA: Ary1LdPr
  loc_B7ADEB: MemLdRfVar from_stack_1.global_40
  loc_B7ADEE: RedimPreserve
  loc_B7ADF8: FLdPr Me
  loc_B7ADFB: MemLdRfVar from_stack_1.global_80
  loc_B7ADFE: NewIfNullAd
  loc_B7AE01: FStAd var_88 
  loc_B7AE05: FLdRfVar var_8C
  loc_B7AE08: FLdPr var_88
  loc_B7AE0B: from_stack_1 = clsliqutasa.CodiConc
  loc_B7AE10: LitI2_Byte 0
  loc_B7AE12: LitVar_Missing var_C4
  loc_B7AE15: LitI2_Byte 0
  loc_B7AE17: FLdZeroAd var_8C
  loc_B7AE1A: CVarStr var_A4
  loc_B7AE1D: PopAdLdVar
  loc_B7AE1E: FLdPr Me
  loc_B7AE21: MemLdUI1 global_92
  loc_B7AE25: CI4UI1
  loc_B7AE26: FLdPr Me
  loc_B7AE29: MemLdStr global_88
  loc_B7AE2C: FLdPr Me
  loc_B7AE2F: MemLdStr global_84
  loc_B7AE32: AryLock
  loc_B7AE35: Ary1LdPr
  loc_B7AE36: MemLdStr global_40
  loc_B7AE39: AryLock
  loc_B7AE3C: Ary1LdPr
  loc_B7AE3D: MemLdRfVar from_stack_1.global_0
  loc_B7AE40: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7AE45: AryUnlock
  loc_B7AE48: AryUnlock
  loc_B7AE4B: FFreeVar var_A4 = ""
  loc_B7AE52: FLdRfVar var_A4
  loc_B7AE55: FLdPr var_88
  loc_B7AE58: from_stack_1 = clsliqutasa.DetaConc
  loc_B7AE5D: LitI2_Byte 0
  loc_B7AE5F: LitVar_Missing var_C4
  loc_B7AE62: LitI2_Byte 0
  loc_B7AE64: FLdVar var_A4
  loc_B7AE68: FLdPr Me
  loc_B7AE6B: MemLdUI1 global_92
  loc_B7AE6F: CI4UI1
  loc_B7AE70: FLdPr Me
  loc_B7AE73: MemLdStr global_88
  loc_B7AE76: FLdPr Me
  loc_B7AE79: MemLdStr global_84
  loc_B7AE7C: AryLock
  loc_B7AE7F: Ary1LdPr
  loc_B7AE80: MemLdStr global_40
  loc_B7AE83: AryLock
  loc_B7AE86: Ary1LdPr
  loc_B7AE87: MemLdRfVar from_stack_1.global_4
  loc_B7AE8A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7AE8F: AryUnlock
  loc_B7AE92: AryUnlock
  loc_B7AE95: FFreeVar var_A4 = ""
  loc_B7AE9C: FLdRfVar var_C6
  loc_B7AE9F: FLdPr var_88
  loc_B7AEA2: from_stack_1 = clsliqutasa.TipoVenc
  loc_B7AEA7: FLdRfVar var_C8
  loc_B7AEAA: FLdPr var_88
  loc_B7AEAD: from_stack_1 = clsliqutasa.BimeLiqu
  loc_B7AEB2: LitVarStr var_D8, "Semestral"
  loc_B7AEB7: FStVarCopyObj var_C4
  loc_B7AEBA: FLdRfVar var_C4
  loc_B7AEBD: LitStr "Mes "
  loc_B7AEC0: FLdUI1
  loc_B7AEC4: CStrI2
  loc_B7AEC6: FStStrNoPop var_8C
  loc_B7AEC9: ConcatStr
  loc_B7AECA: CVarStr var_A4
  loc_B7AECD: FLdI2 var_C6
  loc_B7AED0: LitI2_Byte 1
  loc_B7AED2: EqI2
  loc_B7AED3: CVarBoolI2 var_B4
  loc_B7AED7: FLdRfVar var_E8
  loc_B7AEDA: ImpAdCallFPR4  = IIf(, , )
  loc_B7AEDF: LitI2_Byte 0
  loc_B7AEE1: LitVar_Missing var_108
  loc_B7AEE4: LitI2_Byte 0
  loc_B7AEE6: FLdVar var_E8
  loc_B7AEEA: FLdPr Me
  loc_B7AEED: MemLdUI1 global_92
  loc_B7AEF1: CI4UI1
  loc_B7AEF2: FLdPr Me
  loc_B7AEF5: MemLdStr global_88
  loc_B7AEF8: FLdPr Me
  loc_B7AEFB: MemLdStr global_84
  loc_B7AEFE: AryLock
  loc_B7AF01: Ary1LdPr
  loc_B7AF02: MemLdStr global_40
  loc_B7AF05: AryLock
  loc_B7AF08: Ary1LdPr
  loc_B7AF09: MemLdRfVar from_stack_1.global_8
  loc_B7AF0C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7AF11: AryUnlock
  loc_B7AF14: AryUnlock
  loc_B7AF17: FFree1Str var_8C
  loc_B7AF1A: FFreeVar var_B4 = "": var_A4 = "": var_C4 = "": var_E8 = ""
  loc_B7AF27: FLdRfVar var_C6
  loc_B7AF2A: FLdPr var_88
  loc_B7AF2D: from_stack_1 = clsliqutasa.TipoVenc
  loc_B7AF32: FLdI2 var_C6
  loc_B7AF35: LitI2_Byte 1
  loc_B7AF37: EqI2
  loc_B7AF38: BranchF loc_B7B114
  loc_B7AF3B: FLdRfVar var_110
  loc_B7AF3E: FLdPr var_88
  loc_B7AF41: from_stack_1 = clsliqutasa.ImpoLita
  loc_B7AF46: LitI2_Byte 0
  loc_B7AF48: LitI4 1
  loc_B7AF4D: FLdPr Me
  loc_B7AF50: MemLdStr global_96
  loc_B7AF53: AryLock
  loc_B7AF56: Ary1LdPr
  loc_B7AF57: MemLdRfVar from_stack_1.global_0
  loc_B7AF5A: CVarRef
  loc_B7AF5F: LitI2_Byte &HFF
  loc_B7AF61: FLdFPR8 var_110
  loc_B7AF64: CVarR8
  loc_B7AF68: PopAdLdVar
  loc_B7AF69: FLdPr Me
  loc_B7AF6C: MemLdUI1 global_92
  loc_B7AF70: CI4UI1
  loc_B7AF71: FLdPr Me
  loc_B7AF74: MemLdStr global_88
  loc_B7AF77: FLdPr Me
  loc_B7AF7A: MemLdStr global_84
  loc_B7AF7D: AryLock
  loc_B7AF80: Ary1LdPr
  loc_B7AF81: MemLdStr global_40
  loc_B7AF84: AryLock
  loc_B7AF87: Ary1LdPr
  loc_B7AF88: MemLdRfVar from_stack_1.global_12
  loc_B7AF8B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7AF90: AryUnlock
  loc_B7AF93: AryUnlock
  loc_B7AF96: AryUnlock
  loc_B7AF99: FLdRfVar var_110
  loc_B7AF9C: FLdPr var_88
  loc_B7AF9F: from_stack_1 = clsliqutasa.ExenLita
  loc_B7AFA4: LitI2_Byte 0
  loc_B7AFA6: LitI4 1
  loc_B7AFAB: FLdPr Me
  loc_B7AFAE: MemLdStr global_96
  loc_B7AFB1: AryLock
  loc_B7AFB4: Ary1LdPr
  loc_B7AFB5: MemLdRfVar from_stack_1.global_4
  loc_B7AFB8: CVarRef
  loc_B7AFBD: LitI2_Byte &HFF
  loc_B7AFBF: FLdFPR8 var_110
  loc_B7AFC2: CVarR8
  loc_B7AFC6: PopAdLdVar
  loc_B7AFC7: FLdPr Me
  loc_B7AFCA: MemLdUI1 global_92
  loc_B7AFCE: CI4UI1
  loc_B7AFCF: FLdPr Me
  loc_B7AFD2: MemLdStr global_88
  loc_B7AFD5: FLdPr Me
  loc_B7AFD8: MemLdStr global_84
  loc_B7AFDB: AryLock
  loc_B7AFDE: Ary1LdPr
  loc_B7AFDF: MemLdStr global_40
  loc_B7AFE2: AryLock
  loc_B7AFE5: Ary1LdPr
  loc_B7AFE6: MemLdRfVar from_stack_1.global_16
  loc_B7AFE9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7AFEE: AryUnlock
  loc_B7AFF1: AryUnlock
  loc_B7AFF4: AryUnlock
  loc_B7AFF7: FLdRfVar var_110
  loc_B7AFFA: FLdPr var_88
  loc_B7AFFD: from_stack_1 = clsliqutasa.DescLita
  loc_B7B002: LitI2_Byte 0
  loc_B7B004: LitI4 1
  loc_B7B009: FLdPr Me
  loc_B7B00C: MemLdStr global_96
  loc_B7B00F: AryLock
  loc_B7B012: Ary1LdPr
  loc_B7B013: MemLdRfVar from_stack_1.global_8
  loc_B7B016: CVarRef
  loc_B7B01B: LitI2_Byte &HFF
  loc_B7B01D: FLdFPR8 var_110
  loc_B7B020: CVarR8
  loc_B7B024: PopAdLdVar
  loc_B7B025: FLdPr Me
  loc_B7B028: MemLdUI1 global_92
  loc_B7B02C: CI4UI1
  loc_B7B02D: FLdPr Me
  loc_B7B030: MemLdStr global_88
  loc_B7B033: FLdPr Me
  loc_B7B036: MemLdStr global_84
  loc_B7B039: AryLock
  loc_B7B03C: Ary1LdPr
  loc_B7B03D: MemLdStr global_40
  loc_B7B040: AryLock
  loc_B7B043: Ary1LdPr
  loc_B7B044: MemLdRfVar from_stack_1.global_20
  loc_B7B047: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7B04C: AryUnlock
  loc_B7B04F: AryUnlock
  loc_B7B052: AryUnlock
  loc_B7B055: FLdRfVar var_110
  loc_B7B058: FLdPr var_88
  loc_B7B05B: from_stack_1 = clsliqutasa.CrafLita
  loc_B7B060: LitI2_Byte 0
  loc_B7B062: LitI4 1
  loc_B7B067: FLdPr Me
  loc_B7B06A: MemLdStr global_96
  loc_B7B06D: AryLock
  loc_B7B070: Ary1LdPr
  loc_B7B071: MemLdRfVar from_stack_1.global_12
  loc_B7B074: CVarRef
  loc_B7B079: LitI2_Byte &HFF
  loc_B7B07B: FLdFPR8 var_110
  loc_B7B07E: CVarR8
  loc_B7B082: PopAdLdVar
  loc_B7B083: FLdPr Me
  loc_B7B086: MemLdUI1 global_92
  loc_B7B08A: CI4UI1
  loc_B7B08B: FLdPr Me
  loc_B7B08E: MemLdStr global_88
  loc_B7B091: FLdPr Me
  loc_B7B094: MemLdStr global_84
  loc_B7B097: AryLock
  loc_B7B09A: Ary1LdPr
  loc_B7B09B: MemLdStr global_40
  loc_B7B09E: AryLock
  loc_B7B0A1: Ary1LdPr
  loc_B7B0A2: MemLdRfVar from_stack_1.global_24
  loc_B7B0A5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7B0AA: AryUnlock
  loc_B7B0AD: AryUnlock
  loc_B7B0B0: AryUnlock
  loc_B7B0B3: FLdRfVar var_110
  loc_B7B0B6: FLdPr var_88
  loc_B7B0B9: from_stack_1 = clsliqutasa.TotaLita
  loc_B7B0BE: LitI2_Byte 0
  loc_B7B0C0: LitI4 1
  loc_B7B0C5: FLdPr Me
  loc_B7B0C8: MemLdStr global_96
  loc_B7B0CB: AryLock
  loc_B7B0CE: Ary1LdPr
  loc_B7B0CF: MemLdRfVar from_stack_1.global_16
  loc_B7B0D2: CVarRef
  loc_B7B0D7: LitI2_Byte &HFF
  loc_B7B0D9: FLdFPR8 var_110
  loc_B7B0DC: CVarR8
  loc_B7B0E0: PopAdLdVar
  loc_B7B0E1: FLdPr Me
  loc_B7B0E4: MemLdUI1 global_92
  loc_B7B0E8: CI4UI1
  loc_B7B0E9: FLdPr Me
  loc_B7B0EC: MemLdStr global_88
  loc_B7B0EF: FLdPr Me
  loc_B7B0F2: MemLdStr global_84
  loc_B7B0F5: AryLock
  loc_B7B0F8: Ary1LdPr
  loc_B7B0F9: MemLdStr global_40
  loc_B7B0FC: AryLock
  loc_B7B0FF: Ary1LdPr
  loc_B7B100: MemLdRfVar from_stack_1.global_28
  loc_B7B103: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7B108: AryUnlock
  loc_B7B10B: AryUnlock
  loc_B7B10E: AryUnlock
  loc_B7B111: Branch loc_B7B286
  loc_B7B114: FLdRfVar var_110
  loc_B7B117: FLdPr var_88
  loc_B7B11A: from_stack_1 = clsliqutasa.ImpoLita
  loc_B7B11F: LitI2_Byte 0
  loc_B7B121: LitVar_Missing var_A4
  loc_B7B124: LitI2_Byte &HFF
  loc_B7B126: FLdFPR8 var_110
  loc_B7B129: CVarR8
  loc_B7B12D: PopAdLdVar
  loc_B7B12E: FLdPr Me
  loc_B7B131: MemLdUI1 global_92
  loc_B7B135: CI4UI1
  loc_B7B136: FLdPr Me
  loc_B7B139: MemLdStr global_88
  loc_B7B13C: FLdPr Me
  loc_B7B13F: MemLdStr global_84
  loc_B7B142: AryLock
  loc_B7B145: Ary1LdPr
  loc_B7B146: MemLdStr global_40
  loc_B7B149: AryLock
  loc_B7B14C: Ary1LdPr
  loc_B7B14D: MemLdRfVar from_stack_1.global_12
  loc_B7B150: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7B155: AryUnlock
  loc_B7B158: AryUnlock
  loc_B7B15B: FFree1Var var_A4 = ""
  loc_B7B15E: FLdRfVar var_110
  loc_B7B161: FLdPr var_88
  loc_B7B164: from_stack_1 = clsliqutasa.ExenLita
  loc_B7B169: LitI2_Byte 0
  loc_B7B16B: LitVar_Missing var_A4
  loc_B7B16E: LitI2_Byte &HFF
  loc_B7B170: FLdFPR8 var_110
  loc_B7B173: CVarR8
  loc_B7B177: PopAdLdVar
  loc_B7B178: FLdPr Me
  loc_B7B17B: MemLdUI1 global_92
  loc_B7B17F: CI4UI1
  loc_B7B180: FLdPr Me
  loc_B7B183: MemLdStr global_88
  loc_B7B186: FLdPr Me
  loc_B7B189: MemLdStr global_84
  loc_B7B18C: AryLock
  loc_B7B18F: Ary1LdPr
  loc_B7B190: MemLdStr global_40
  loc_B7B193: AryLock
  loc_B7B196: Ary1LdPr
  loc_B7B197: MemLdRfVar from_stack_1.global_16
  loc_B7B19A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7B19F: AryUnlock
  loc_B7B1A2: AryUnlock
  loc_B7B1A5: FFree1Var var_A4 = ""
  loc_B7B1A8: FLdRfVar var_110
  loc_B7B1AB: FLdPr var_88
  loc_B7B1AE: from_stack_1 = clsliqutasa.DescLita
  loc_B7B1B3: LitI2_Byte 0
  loc_B7B1B5: LitVar_Missing var_A4
  loc_B7B1B8: LitI2_Byte &HFF
  loc_B7B1BA: FLdFPR8 var_110
  loc_B7B1BD: CVarR8
  loc_B7B1C1: PopAdLdVar
  loc_B7B1C2: FLdPr Me
  loc_B7B1C5: MemLdUI1 global_92
  loc_B7B1C9: CI4UI1
  loc_B7B1CA: FLdPr Me
  loc_B7B1CD: MemLdStr global_88
  loc_B7B1D0: FLdPr Me
  loc_B7B1D3: MemLdStr global_84
  loc_B7B1D6: AryLock
  loc_B7B1D9: Ary1LdPr
  loc_B7B1DA: MemLdStr global_40
  loc_B7B1DD: AryLock
  loc_B7B1E0: Ary1LdPr
  loc_B7B1E1: MemLdRfVar from_stack_1.global_20
  loc_B7B1E4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7B1E9: AryUnlock
  loc_B7B1EC: AryUnlock
  loc_B7B1EF: FFree1Var var_A4 = ""
  loc_B7B1F2: FLdRfVar var_110
  loc_B7B1F5: FLdPr var_88
  loc_B7B1F8: from_stack_1 = clsliqutasa.CrafLita
  loc_B7B1FD: LitI2_Byte 0
  loc_B7B1FF: LitVar_Missing var_A4
  loc_B7B202: LitI2_Byte &HFF
  loc_B7B204: FLdFPR8 var_110
  loc_B7B207: CVarR8
  loc_B7B20B: PopAdLdVar
  loc_B7B20C: FLdPr Me
  loc_B7B20F: MemLdUI1 global_92
  loc_B7B213: CI4UI1
  loc_B7B214: FLdPr Me
  loc_B7B217: MemLdStr global_88
  loc_B7B21A: FLdPr Me
  loc_B7B21D: MemLdStr global_84
  loc_B7B220: AryLock
  loc_B7B223: Ary1LdPr
  loc_B7B224: MemLdStr global_40
  loc_B7B227: AryLock
  loc_B7B22A: Ary1LdPr
  loc_B7B22B: MemLdRfVar from_stack_1.global_24
  loc_B7B22E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7B233: AryUnlock
  loc_B7B236: AryUnlock
  loc_B7B239: FFree1Var var_A4 = ""
  loc_B7B23C: FLdRfVar var_110
  loc_B7B23F: FLdPr var_88
  loc_B7B242: from_stack_1 = clsliqutasa.TotaLita
  loc_B7B247: LitI2_Byte 0
  loc_B7B249: LitVar_Missing var_A4
  loc_B7B24C: LitI2_Byte &HFF
  loc_B7B24E: FLdFPR8 var_110
  loc_B7B251: CVarR8
  loc_B7B255: PopAdLdVar
  loc_B7B256: FLdPr Me
  loc_B7B259: MemLdUI1 global_92
  loc_B7B25D: CI4UI1
  loc_B7B25E: FLdPr Me
  loc_B7B261: MemLdStr global_88
  loc_B7B264: FLdPr Me
  loc_B7B267: MemLdStr global_84
  loc_B7B26A: AryLock
  loc_B7B26D: Ary1LdPr
  loc_B7B26E: MemLdStr global_40
  loc_B7B271: AryLock
  loc_B7B274: Ary1LdPr
  loc_B7B275: MemLdRfVar from_stack_1.global_28
  loc_B7B278: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7B27D: AryUnlock
  loc_B7B280: AryUnlock
  loc_B7B283: FFree1Var var_A4 = ""
  loc_B7B286: LitI2_Byte 1
  loc_B7B288: PopTmpLdAd2 var_C6
  loc_B7B28B: FLdPr var_88
  loc_B7B28E: Call clsliqutasa.Move(from_stack_1v)
  loc_B7B293: LitNothing
  loc_B7B295: FStAd var_88 
  loc_B7B299: ExitProcHresult
  loc_B7B29A: DOC
End Function

Private Function Proc_168_17_C07DB0() 'C07DB0
  'Data Table: 473FB4
  loc_C0746C: LitVarStr var_98, "<html>"
  loc_C07471: PopAdLdVar
  loc_C07472: FLdPr Me
  loc_C07475: MemLdRfVar from_stack_1.global_60
  loc_C07478: LdPrVar
  loc_C0747A: LateMemCall
  loc_C07480: LitVarStr var_98, "<head>"
  loc_C07485: PopAdLdVar
  loc_C07486: FLdPr Me
  loc_C07489: MemLdRfVar from_stack_1.global_60
  loc_C0748C: LdPrVar
  loc_C0748E: LateMemCall
  loc_C07494: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C07499: PopAdLdVar
  loc_C0749A: FLdPr Me
  loc_C0749D: MemLdRfVar from_stack_1.global_60
  loc_C074A0: LdPrVar
  loc_C074A2: LateMemCall
  loc_C074A8: LitStr "<title>"
  loc_C074AB: FLdRfVar var_AC
  loc_C074AE: FLdPr Me
  loc_C074B1:  = Me.Caption
  loc_C074B6: ILdRf var_AC
  loc_C074B9: ConcatStr
  loc_C074BA: FStStrNoPop var_B0
  loc_C074BD: LitStr "</title>"
  loc_C074C0: ConcatStr
  loc_C074C1: CVarStr var_C0
  loc_C074C4: PopAdLdVar
  loc_C074C5: FLdPr Me
  loc_C074C8: MemLdRfVar from_stack_1.global_60
  loc_C074CB: LdPrVar
  loc_C074CD: LateMemCall
  loc_C074D3: FFreeStr var_AC = ""
  loc_C074DA: FFree1Var var_C0 = ""
  loc_C074DD: LitVarStr var_98, "<style type=""text/css"">"
  loc_C074E2: PopAdLdVar
  loc_C074E3: FLdPr Me
  loc_C074E6: MemLdRfVar from_stack_1.global_60
  loc_C074E9: LdPrVar
  loc_C074EB: LateMemCall
  loc_C074F1: LitVarStr var_98, ".Titulo1 {"
  loc_C074F6: PopAdLdVar
  loc_C074F7: FLdPr Me
  loc_C074FA: MemLdRfVar from_stack_1.global_60
  loc_C074FD: LdPrVar
  loc_C074FF: LateMemCall
  loc_C07505: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C0750A: PopAdLdVar
  loc_C0750B: FLdPr Me
  loc_C0750E: MemLdRfVar from_stack_1.global_60
  loc_C07511: LdPrVar
  loc_C07513: LateMemCall
  loc_C07519: LitVarStr var_98, " font-size: 18px;"
  loc_C0751E: PopAdLdVar
  loc_C0751F: FLdPr Me
  loc_C07522: MemLdRfVar from_stack_1.global_60
  loc_C07525: LdPrVar
  loc_C07527: LateMemCall
  loc_C0752D: LitVarStr var_98, " font-weight: bold;"
  loc_C07532: PopAdLdVar
  loc_C07533: FLdPr Me
  loc_C07536: MemLdRfVar from_stack_1.global_60
  loc_C07539: LdPrVar
  loc_C0753B: LateMemCall
  loc_C07541: LitVarStr var_98, "}"
  loc_C07546: PopAdLdVar
  loc_C07547: FLdPr Me
  loc_C0754A: MemLdRfVar from_stack_1.global_60
  loc_C0754D: LdPrVar
  loc_C0754F: LateMemCall
  loc_C07555: LitVarStr var_98, ".Titulo2 {"
  loc_C0755A: PopAdLdVar
  loc_C0755B: FLdPr Me
  loc_C0755E: MemLdRfVar from_stack_1.global_60
  loc_C07561: LdPrVar
  loc_C07563: LateMemCall
  loc_C07569: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C0756E: PopAdLdVar
  loc_C0756F: FLdPr Me
  loc_C07572: MemLdRfVar from_stack_1.global_60
  loc_C07575: LdPrVar
  loc_C07577: LateMemCall
  loc_C0757D: LitVarStr var_98, " font-size: 14px;"
  loc_C07582: PopAdLdVar
  loc_C07583: FLdPr Me
  loc_C07586: MemLdRfVar from_stack_1.global_60
  loc_C07589: LdPrVar
  loc_C0758B: LateMemCall
  loc_C07591: LitVarStr var_98, " font-weight: bold;"
  loc_C07596: PopAdLdVar
  loc_C07597: FLdPr Me
  loc_C0759A: MemLdRfVar from_stack_1.global_60
  loc_C0759D: LdPrVar
  loc_C0759F: LateMemCall
  loc_C075A5: LitVarStr var_98, "}"
  loc_C075AA: PopAdLdVar
  loc_C075AB: FLdPr Me
  loc_C075AE: MemLdRfVar from_stack_1.global_60
  loc_C075B1: LdPrVar
  loc_C075B3: LateMemCall
  loc_C075B9: LitVarStr var_98, ".Normal {"
  loc_C075BE: PopAdLdVar
  loc_C075BF: FLdPr Me
  loc_C075C2: MemLdRfVar from_stack_1.global_60
  loc_C075C5: LdPrVar
  loc_C075C7: LateMemCall
  loc_C075CD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C075D2: PopAdLdVar
  loc_C075D3: FLdPr Me
  loc_C075D6: MemLdRfVar from_stack_1.global_60
  loc_C075D9: LdPrVar
  loc_C075DB: LateMemCall
  loc_C075E1: LitVarStr var_98, " font-size: 12px;"
  loc_C075E6: PopAdLdVar
  loc_C075E7: FLdPr Me
  loc_C075EA: MemLdRfVar from_stack_1.global_60
  loc_C075ED: LdPrVar
  loc_C075EF: LateMemCall
  loc_C075F5: LitVarStr var_98, " font-style: normal;"
  loc_C075FA: PopAdLdVar
  loc_C075FB: FLdPr Me
  loc_C075FE: MemLdRfVar from_stack_1.global_60
  loc_C07601: LdPrVar
  loc_C07603: LateMemCall
  loc_C07609: LitVarStr var_98, " font-weight: normal;"
  loc_C0760E: PopAdLdVar
  loc_C0760F: FLdPr Me
  loc_C07612: MemLdRfVar from_stack_1.global_60
  loc_C07615: LdPrVar
  loc_C07617: LateMemCall
  loc_C0761D: LitVarStr var_98, " font-variant: normal;"
  loc_C07622: PopAdLdVar
  loc_C07623: FLdPr Me
  loc_C07626: MemLdRfVar from_stack_1.global_60
  loc_C07629: LdPrVar
  loc_C0762B: LateMemCall
  loc_C07631: LitVarStr var_98, "}"
  loc_C07636: PopAdLdVar
  loc_C07637: FLdPr Me
  loc_C0763A: MemLdRfVar from_stack_1.global_60
  loc_C0763D: LdPrVar
  loc_C0763F: LateMemCall
  loc_C07645: LitVarStr var_98, ".Encabezado {"
  loc_C0764A: PopAdLdVar
  loc_C0764B: FLdPr Me
  loc_C0764E: MemLdRfVar from_stack_1.global_60
  loc_C07651: LdPrVar
  loc_C07653: LateMemCall
  loc_C07659: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_C0765E: PopAdLdVar
  loc_C0765F: FLdPr Me
  loc_C07662: MemLdRfVar from_stack_1.global_60
  loc_C07665: LdPrVar
  loc_C07667: LateMemCall
  loc_C0766D: LitVarStr var_98, " font-size: 11px;"
  loc_C07672: PopAdLdVar
  loc_C07673: FLdPr Me
  loc_C07676: MemLdRfVar from_stack_1.global_60
  loc_C07679: LdPrVar
  loc_C0767B: LateMemCall
  loc_C07681: LitVarStr var_98, " font-weight: bold;"
  loc_C07686: PopAdLdVar
  loc_C07687: FLdPr Me
  loc_C0768A: MemLdRfVar from_stack_1.global_60
  loc_C0768D: LdPrVar
  loc_C0768F: LateMemCall
  loc_C07695: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_C0769A: PopAdLdVar
  loc_C0769B: FLdPr Me
  loc_C0769E: MemLdRfVar from_stack_1.global_60
  loc_C076A1: LdPrVar
  loc_C076A3: LateMemCall
  loc_C076A9: LitVarStr var_98, "}"
  loc_C076AE: PopAdLdVar
  loc_C076AF: FLdPr Me
  loc_C076B2: MemLdRfVar from_stack_1.global_60
  loc_C076B5: LdPrVar
  loc_C076B7: LateMemCall
  loc_C076BD: LitVarStr var_98, ".LineaDato {"
  loc_C076C2: PopAdLdVar
  loc_C076C3: FLdPr Me
  loc_C076C6: MemLdRfVar from_stack_1.global_60
  loc_C076C9: LdPrVar
  loc_C076CB: LateMemCall
  loc_C076D1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C076D6: PopAdLdVar
  loc_C076D7: FLdPr Me
  loc_C076DA: MemLdRfVar from_stack_1.global_60
  loc_C076DD: LdPrVar
  loc_C076DF: LateMemCall
  loc_C076E5: LitVarStr var_98, " font-size: 10px;"
  loc_C076EA: PopAdLdVar
  loc_C076EB: FLdPr Me
  loc_C076EE: MemLdRfVar from_stack_1.global_60
  loc_C076F1: LdPrVar
  loc_C076F3: LateMemCall
  loc_C076F9: LitVarStr var_98, "}"
  loc_C076FE: PopAdLdVar
  loc_C076FF: FLdPr Me
  loc_C07702: MemLdRfVar from_stack_1.global_60
  loc_C07705: LdPrVar
  loc_C07707: LateMemCall
  loc_C0770D: LitVarStr var_98, ".Totales {"
  loc_C07712: PopAdLdVar
  loc_C07713: FLdPr Me
  loc_C07716: MemLdRfVar from_stack_1.global_60
  loc_C07719: LdPrVar
  loc_C0771B: LateMemCall
  loc_C07721: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C07726: PopAdLdVar
  loc_C07727: FLdPr Me
  loc_C0772A: MemLdRfVar from_stack_1.global_60
  loc_C0772D: LdPrVar
  loc_C0772F: LateMemCall
  loc_C07735: LitVarStr var_98, " font-size: 12px;"
  loc_C0773A: PopAdLdVar
  loc_C0773B: FLdPr Me
  loc_C0773E: MemLdRfVar from_stack_1.global_60
  loc_C07741: LdPrVar
  loc_C07743: LateMemCall
  loc_C07749: LitVarStr var_98, " font-weight: bold;"
  loc_C0774E: PopAdLdVar
  loc_C0774F: FLdPr Me
  loc_C07752: MemLdRfVar from_stack_1.global_60
  loc_C07755: LdPrVar
  loc_C07757: LateMemCall
  loc_C0775D: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C07762: PopAdLdVar
  loc_C07763: FLdPr Me
  loc_C07766: MemLdRfVar from_stack_1.global_60
  loc_C07769: LdPrVar
  loc_C0776B: LateMemCall
  loc_C07771: LitVarStr var_98, "}"
  loc_C07776: PopAdLdVar
  loc_C07777: FLdPr Me
  loc_C0777A: MemLdRfVar from_stack_1.global_60
  loc_C0777D: LdPrVar
  loc_C0777F: LateMemCall
  loc_C07785: LitVarStr var_98, ".SubTotales {"
  loc_C0778A: PopAdLdVar
  loc_C0778B: FLdPr Me
  loc_C0778E: MemLdRfVar from_stack_1.global_60
  loc_C07791: LdPrVar
  loc_C07793: LateMemCall
  loc_C07799: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C0779E: PopAdLdVar
  loc_C0779F: FLdPr Me
  loc_C077A2: MemLdRfVar from_stack_1.global_60
  loc_C077A5: LdPrVar
  loc_C077A7: LateMemCall
  loc_C077AD: LitVarStr var_98, " font-size: 10px;"
  loc_C077B2: PopAdLdVar
  loc_C077B3: FLdPr Me
  loc_C077B6: MemLdRfVar from_stack_1.global_60
  loc_C077B9: LdPrVar
  loc_C077BB: LateMemCall
  loc_C077C1: LitVarStr var_98, " font-weight: bold;"
  loc_C077C6: PopAdLdVar
  loc_C077C7: FLdPr Me
  loc_C077CA: MemLdRfVar from_stack_1.global_60
  loc_C077CD: LdPrVar
  loc_C077CF: LateMemCall
  loc_C077D5: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C077DA: PopAdLdVar
  loc_C077DB: FLdPr Me
  loc_C077DE: MemLdRfVar from_stack_1.global_60
  loc_C077E1: LdPrVar
  loc_C077E3: LateMemCall
  loc_C077E9: LitVarStr var_98, "}"
  loc_C077EE: PopAdLdVar
  loc_C077EF: FLdPr Me
  loc_C077F2: MemLdRfVar from_stack_1.global_60
  loc_C077F5: LdPrVar
  loc_C077F7: LateMemCall
  loc_C077FD: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_C07802: PopAdLdVar
  loc_C07803: FLdPr Me
  loc_C07806: MemLdRfVar from_stack_1.global_60
  loc_C07809: LdPrVar
  loc_C0780B: LateMemCall
  loc_C07811: LitVarStr var_98, "</style>"
  loc_C07816: PopAdLdVar
  loc_C07817: FLdPr Me
  loc_C0781A: MemLdRfVar from_stack_1.global_60
  loc_C0781D: LdPrVar
  loc_C0781F: LateMemCall
  loc_C07825: LitI4 0
  loc_C0782A: FStStrCopy var_B0
  loc_C0782D: FLdRfVar var_B0
  loc_C07830: LitI4 0
  loc_C07835: FStStrCopy var_AC
  loc_C07838: FLdRfVar var_AC
  loc_C0783B: LitI2_Byte &HFF
  loc_C0783D: PopTmpLdAd2 var_C2
  loc_C07840: FLdPr Me
  loc_C07843: MemLdRfVar from_stack_1.global_60
  loc_C07846: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C0784B: FFreeStr var_AC = ""
  loc_C07852: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C07857: PopAdLdVar
  loc_C07858: FLdPr Me
  loc_C0785B: MemLdRfVar from_stack_1.global_60
  loc_C0785E: LdPrVar
  loc_C07860: LateMemCall
  loc_C07866: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_C0786B: PopAdLdVar
  loc_C0786C: FLdPr Me
  loc_C0786F: MemLdRfVar from_stack_1.global_60
  loc_C07872: LdPrVar
  loc_C07874: LateMemCall
  loc_C0787A: LitStr "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C0787D: LitI2_Byte &H5F
  loc_C0787F: CStrUI1
  loc_C07881: FStStrNoPop var_AC
  loc_C07884: ConcatStr
  loc_C07885: FStStrNoPop var_B0
  loc_C07888: LitStr """ height="""
  loc_C0788B: ConcatStr
  loc_C0788C: FStStrNoPop var_C8
  loc_C0788F: LitI2_Byte &H3C
  loc_C07891: CStrUI1
  loc_C07893: FStStrNoPop var_CC
  loc_C07896: ConcatStr
  loc_C07897: FStStrNoPop var_D0
  loc_C0789A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C0789D: ConcatStr
  loc_C0789E: FStStrNoPop var_D4
  loc_C078A1: LitStr "Municipalidad de Guaymallén"
  loc_C078A4: ConcatStr
  loc_C078A5: FStStrNoPop var_D8
  loc_C078A8: LitStr "</p>"
  loc_C078AB: ConcatStr
  loc_C078AC: CVarStr var_C0
  loc_C078AF: PopAdLdVar
  loc_C078B0: FLdPr Me
  loc_C078B3: MemLdRfVar from_stack_1.global_60
  loc_C078B6: LdPrVar
  loc_C078B8: LateMemCall
  loc_C078BE: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_C078CF: FFree1Var var_C0 = ""
  loc_C078D2: LitStr "    <p>"
  loc_C078D5: FLdRfVar var_AC
  loc_C078D8: FLdPr Me
  loc_C078DB:  = Me.Caption
  loc_C078E0: ILdRf var_AC
  loc_C078E3: ConcatStr
  loc_C078E4: FStStrNoPop var_B0
  loc_C078E7: LitStr "</p></th>"
  loc_C078EA: ConcatStr
  loc_C078EB: CVarStr var_C0
  loc_C078EE: PopAdLdVar
  loc_C078EF: FLdPr Me
  loc_C078F2: MemLdRfVar from_stack_1.global_60
  loc_C078F5: LdPrVar
  loc_C078F7: LateMemCall
  loc_C078FD: FFreeStr var_AC = ""
  loc_C07904: FFree1Var var_C0 = ""
  loc_C07907: LitVarStr var_98, "  </tr>"
  loc_C0790C: PopAdLdVar
  loc_C0790D: FLdPr Me
  loc_C07910: MemLdRfVar from_stack_1.global_60
  loc_C07913: LdPrVar
  loc_C07915: LateMemCall
  loc_C0791B: LitVarStr var_98, "  <tr>"
  loc_C07920: PopAdLdVar
  loc_C07921: FLdPr Me
  loc_C07924: MemLdRfVar from_stack_1.global_60
  loc_C07927: LdPrVar
  loc_C07929: LateMemCall
  loc_C0792F: LitVarStr var_98, "    <th colspan=""2""><hr></th>"
  loc_C07934: PopAdLdVar
  loc_C07935: FLdPr Me
  loc_C07938: MemLdRfVar from_stack_1.global_60
  loc_C0793B: LdPrVar
  loc_C0793D: LateMemCall
  loc_C07943: LitVarStr var_98, "  </tr>"
  loc_C07948: PopAdLdVar
  loc_C07949: FLdPr Me
  loc_C0794C: MemLdRfVar from_stack_1.global_60
  loc_C0794F: LdPrVar
  loc_C07951: LateMemCall
  loc_C07957: FLdPr Me
  loc_C0795A: MemLdRfVar from_stack_1.global_76
  loc_C0795D: NewIfNullAd
  loc_C07960: FStAd var_DC 
  loc_C07964: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C07969: PopAdLdVar
  loc_C0796A: FLdPr Me
  loc_C0796D: MemLdRfVar from_stack_1.global_60
  loc_C07970: LdPrVar
  loc_C07972: LateMemCall
  loc_C07978: LitStr "    <td width=""50" & Chr(37) & """><strong>Periodo: </strong>"
  loc_C0797B: FLdRfVar var_C2
  loc_C0797E: FLdPr var_DC
  loc_C07981: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C07986: FLdI2 var_C2
  loc_C07989: CStrUI1
  loc_C0798B: FStStrNoPop var_AC
  loc_C0798E: ConcatStr
  loc_C0798F: FStStrNoPop var_B0
  loc_C07992: LitStr "</td>"
  loc_C07995: ConcatStr
  loc_C07996: CVarStr var_C0
  loc_C07999: PopAdLdVar
  loc_C0799A: FLdPr Me
  loc_C0799D: MemLdRfVar from_stack_1.global_60
  loc_C079A0: LdPrVar
  loc_C079A2: LateMemCall
  loc_C079A8: FFreeStr var_AC = ""
  loc_C079AF: FFree1Var var_C0 = ""
  loc_C079B2: LitVarStr var_98, "    <td width=""50" & Chr(37) & """><strong>Tipo de Liquidación: </strong>"
  loc_C079B7: FLdRfVar var_C0
  loc_C079BA: FLdPr var_DC
  loc_C079BD: from_stack_1 = clsliquidacion.DetaTili
  loc_C079C2: FLdRfVar var_C0
  loc_C079C5: ConcatVar var_EC
  loc_C079C9: LitVarStr var_A8, "</td>"
  loc_C079CE: ConcatVar var_FC
  loc_C079D2: PopAdLdVar
  loc_C079D3: FLdPr Me
  loc_C079D6: MemLdRfVar from_stack_1.global_60
  loc_C079D9: LdPrVar
  loc_C079DB: LateMemCall
  loc_C079E1: FFreeVar var_C0 = "": var_EC = ""
  loc_C079EA: LitVarStr var_98, "  </tr>"
  loc_C079EF: PopAdLdVar
  loc_C079F0: FLdPr Me
  loc_C079F3: MemLdRfVar from_stack_1.global_60
  loc_C079F6: LdPrVar
  loc_C079F8: LateMemCall
  loc_C079FE: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C07A03: PopAdLdVar
  loc_C07A04: FLdPr Me
  loc_C07A07: MemLdRfVar from_stack_1.global_60
  loc_C07A0A: LdPrVar
  loc_C07A0C: LateMemCall
  loc_C07A12: LitStr "    <td><strong>Número: </strong>"
  loc_C07A15: FLdRfVar var_C2
  loc_C07A18: FLdPr var_DC
  loc_C07A1B: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C07A20: FLdI2 var_C2
  loc_C07A23: CStrUI1
  loc_C07A25: FStStrNoPop var_AC
  loc_C07A28: ConcatStr
  loc_C07A29: FStStrNoPop var_B0
  loc_C07A2C: LitStr "</td>"
  loc_C07A2F: ConcatStr
  loc_C07A30: CVarStr var_C0
  loc_C07A33: PopAdLdVar
  loc_C07A34: FLdPr Me
  loc_C07A37: MemLdRfVar from_stack_1.global_60
  loc_C07A3A: LdPrVar
  loc_C07A3C: LateMemCall
  loc_C07A42: FFreeStr var_AC = ""
  loc_C07A49: FFree1Var var_C0 = ""
  loc_C07A4C: LitVarStr var_98, "  </tr>"
  loc_C07A51: PopAdLdVar
  loc_C07A52: FLdPr Me
  loc_C07A55: MemLdRfVar from_stack_1.global_60
  loc_C07A58: LdPrVar
  loc_C07A5A: LateMemCall
  loc_C07A60: FLdPr Me
  loc_C07A63: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_C07A66: FStAdFunc var_110
  loc_C07A69: FLdPr var_110
  loc_C07A6C: LateIdLdVar var_C0 DispID_22 0
  loc_C07A73: CStrVarTmp
  loc_C07A74: FStStrNoPop var_AC
  loc_C07A77: LitStr vbNullString
  loc_C07A7A: NeStr
  loc_C07A7C: FLdPr Me
  loc_C07A7F: VCallAd Control_ID_CodiInmuHastaMsk
  loc_C07A82: FStAdFunc var_114
  loc_C07A85: FLdPr var_114
  loc_C07A88: LateIdLdVar var_EC DispID_22 0
  loc_C07A8F: CStrVarTmp
  loc_C07A90: FStStrNoPop var_B0
  loc_C07A93: LitStr vbNullString
  loc_C07A96: NeStr
  loc_C07A98: OrI4
  loc_C07A99: FFreeStr var_AC = ""
  loc_C07AA0: FFreeAd var_110 = ""
  loc_C07AA7: FFreeVar var_C0 = ""
  loc_C07AAE: BranchF loc_C07C19
  loc_C07AB1: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"" align=""left"">"
  loc_C07AB6: PopAdLdVar
  loc_C07AB7: FLdPr Me
  loc_C07ABA: MemLdRfVar from_stack_1.global_60
  loc_C07ABD: LdPrVar
  loc_C07ABF: LateMemCall
  loc_C07AC5: FLdPr Me
  loc_C07AC8: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_C07ACB: FStAdFunc var_110
  loc_C07ACE: FLdPr var_110
  loc_C07AD1: LateIdLdVar var_C0 DispID_22 0
  loc_C07AD8: PopAd
  loc_C07ADA: FLdPr Me
  loc_C07ADD: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_C07AE0: FStAdFunc var_114
  loc_C07AE3: FLdPr var_114
  loc_C07AE6: LateIdLdVar var_EC DispID_22 0
  loc_C07AED: PopAd
  loc_C07AEF: LitVarStr var_10C, "    <td><strong>"
  loc_C07AF4: LitVarStr var_A8, "&nbsp;"
  loc_C07AF9: FStVarCopyObj var_124
  loc_C07AFC: FLdRfVar var_124
  loc_C07AFF: LitStr "Desde Cuenta: </strong>"
  loc_C07B02: FLdRfVar var_EC
  loc_C07B05: CStrVarTmp
  loc_C07B06: FStStrNoPop var_B0
  loc_C07B09: ConcatStr
  loc_C07B0A: CVarStr var_FC
  loc_C07B0D: FLdRfVar var_C0
  loc_C07B10: CStrVarTmp
  loc_C07B11: FStStrNoPop var_AC
  loc_C07B14: LitStr vbNullString
  loc_C07B17: NeStr
  loc_C07B19: CVarBoolI2 var_98
  loc_C07B1D: FLdRfVar var_134
  loc_C07B20: ImpAdCallFPR4  = IIf(, , )
  loc_C07B25: FLdRfVar var_134
  loc_C07B28: ConcatVar var_144
  loc_C07B2C: LitVarStr var_154, "</td>"
  loc_C07B31: ConcatVar var_164
  loc_C07B35: PopAdLdVar
  loc_C07B36: FLdPr Me
  loc_C07B39: MemLdRfVar from_stack_1.global_60
  loc_C07B3C: LdPrVar
  loc_C07B3E: LateMemCall
  loc_C07B44: FFreeStr var_AC = ""
  loc_C07B4B: FFreeAd var_110 = ""
  loc_C07B52: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_FC = "": var_124 = "": var_134 = "": var_144 = ""
  loc_C07B65: FLdPr Me
  loc_C07B68: VCallAd Control_ID_CodiInmuHastaMsk
  loc_C07B6B: FStAdFunc var_110
  loc_C07B6E: FLdPr var_110
  loc_C07B71: LateIdLdVar var_C0 DispID_22 0
  loc_C07B78: PopAd
  loc_C07B7A: FLdPr Me
  loc_C07B7D: VCallAd Control_ID_CodiInmuHastaMsk
  loc_C07B80: FStAdFunc var_114
  loc_C07B83: FLdPr var_114
  loc_C07B86: LateIdLdVar var_EC DispID_22 0
  loc_C07B8D: PopAd
  loc_C07B8F: LitVarStr var_10C, "    <td><strong>"
  loc_C07B94: LitVarStr var_A8, "&nbsp;"
  loc_C07B99: FStVarCopyObj var_124
  loc_C07B9C: FLdRfVar var_124
  loc_C07B9F: LitStr "Hasta Cuenta: </strong>"
  loc_C07BA2: FLdRfVar var_EC
  loc_C07BA5: CStrVarTmp
  loc_C07BA6: FStStrNoPop var_B0
  loc_C07BA9: ConcatStr
  loc_C07BAA: CVarStr var_FC
  loc_C07BAD: FLdRfVar var_C0
  loc_C07BB0: CStrVarTmp
  loc_C07BB1: FStStrNoPop var_AC
  loc_C07BB4: LitStr vbNullString
  loc_C07BB7: NeStr
  loc_C07BB9: CVarBoolI2 var_98
  loc_C07BBD: FLdRfVar var_134
  loc_C07BC0: ImpAdCallFPR4  = IIf(, , )
  loc_C07BC5: FLdRfVar var_134
  loc_C07BC8: ConcatVar var_144
  loc_C07BCC: LitVarStr var_154, "</td>"
  loc_C07BD1: ConcatVar var_164
  loc_C07BD5: PopAdLdVar
  loc_C07BD6: FLdPr Me
  loc_C07BD9: MemLdRfVar from_stack_1.global_60
  loc_C07BDC: LdPrVar
  loc_C07BDE: LateMemCall
  loc_C07BE4: FFreeStr var_AC = ""
  loc_C07BEB: FFreeAd var_110 = ""
  loc_C07BF2: FFreeVar var_C0 = "": var_EC = "": var_98 = "": var_FC = "": var_124 = "": var_134 = "": var_144 = ""
  loc_C07C05: LitVarStr var_98, "  </tr>"
  loc_C07C0A: PopAdLdVar
  loc_C07C0B: FLdPr Me
  loc_C07C0E: MemLdRfVar from_stack_1.global_60
  loc_C07C11: LdPrVar
  loc_C07C13: LateMemCall
  loc_C07C19: LitNothing
  loc_C07C1B: FStAd var_DC 
  loc_C07C1F: LitVarStr var_98, "</table>"
  loc_C07C24: PopAdLdVar
  loc_C07C25: FLdPr Me
  loc_C07C28: MemLdRfVar from_stack_1.global_60
  loc_C07C2B: LdPrVar
  loc_C07C2D: LateMemCall
  loc_C07C33: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C07C38: PopAdLdVar
  loc_C07C39: FLdPr Me
  loc_C07C3C: MemLdRfVar from_stack_1.global_60
  loc_C07C3F: LdPrVar
  loc_C07C41: LateMemCall
  loc_C07C47: LitVarStr var_98, "  <thead>"
  loc_C07C4C: PopAdLdVar
  loc_C07C4D: FLdPr Me
  loc_C07C50: MemLdRfVar from_stack_1.global_60
  loc_C07C53: LdPrVar
  loc_C07C55: LateMemCall
  loc_C07C5B: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C07C60: PopAdLdVar
  loc_C07C61: FLdPr Me
  loc_C07C64: MemLdRfVar from_stack_1.global_60
  loc_C07C67: LdPrVar
  loc_C07C69: LateMemCall
  loc_C07C6F: LitVarStr var_98, "    <th>Inmueble</th>"
  loc_C07C74: PopAdLdVar
  loc_C07C75: FLdPr Me
  loc_C07C78: MemLdRfVar from_stack_1.global_60
  loc_C07C7B: LdPrVar
  loc_C07C7D: LateMemCall
  loc_C07C83: LitVarStr var_98, "    <th>Titular</th>"
  loc_C07C88: PopAdLdVar
  loc_C07C89: FLdPr Me
  loc_C07C8C: MemLdRfVar from_stack_1.global_60
  loc_C07C8F: LdPrVar
  loc_C07C91: LateMemCall
  loc_C07C97: LitVarStr var_98, "    <th>Cod. R y B</th>"
  loc_C07C9C: PopAdLdVar
  loc_C07C9D: FLdPr Me
  loc_C07CA0: MemLdRfVar from_stack_1.global_60
  loc_C07CA3: LdPrVar
  loc_C07CA5: LateMemCall
  loc_C07CAB: LitVarStr var_98, "    <th>Avaluo</th>"
  loc_C07CB0: PopAdLdVar
  loc_C07CB1: FLdPr Me
  loc_C07CB4: MemLdRfVar from_stack_1.global_60
  loc_C07CB7: LdPrVar
  loc_C07CB9: LateMemCall
  loc_C07CBF: LitVarStr var_98, "    <th width=""12" & Chr(37) & """>Exen.</th>"
  loc_C07CC4: PopAdLdVar
  loc_C07CC5: FLdPr Me
  loc_C07CC8: MemLdRfVar from_stack_1.global_60
  loc_C07CCB: LdPrVar
  loc_C07CCD: LateMemCall
  loc_C07CD3: LitVarStr var_98, "    <th>Local.</th>"
  loc_C07CD8: PopAdLdVar
  loc_C07CD9: FLdPr Me
  loc_C07CDC: MemLdRfVar from_stack_1.global_60
  loc_C07CDF: LdPrVar
  loc_C07CE1: LateMemCall
  loc_C07CE7: LitVarStr var_98, "    <th>Deuda</th>"
  loc_C07CEC: PopAdLdVar
  loc_C07CED: FLdPr Me
  loc_C07CF0: MemLdRfVar from_stack_1.global_60
  loc_C07CF3: LdPrVar
  loc_C07CF5: LateMemCall
  loc_C07CFB: LitVarStr var_98, "    <th>Orden</th>"
  loc_C07D00: PopAdLdVar
  loc_C07D01: FLdPr Me
  loc_C07D04: MemLdRfVar from_stack_1.global_60
  loc_C07D07: LdPrVar
  loc_C07D09: LateMemCall
  loc_C07D0F: LitVarStr var_98, "    <th>Concepto</th>"
  loc_C07D14: PopAdLdVar
  loc_C07D15: FLdPr Me
  loc_C07D18: MemLdRfVar from_stack_1.global_60
  loc_C07D1B: LdPrVar
  loc_C07D1D: LateMemCall
  loc_C07D23: LitVarStr var_98, "    <th>Importe</th>"
  loc_C07D28: PopAdLdVar
  loc_C07D29: FLdPr Me
  loc_C07D2C: MemLdRfVar from_stack_1.global_60
  loc_C07D2F: LdPrVar
  loc_C07D31: LateMemCall
  loc_C07D37: LitVarStr var_98, "    <th>Exen.</th>"
  loc_C07D3C: PopAdLdVar
  loc_C07D3D: FLdPr Me
  loc_C07D40: MemLdRfVar from_stack_1.global_60
  loc_C07D43: LdPrVar
  loc_C07D45: LateMemCall
  loc_C07D4B: LitVarStr var_98, "    <th>Desc.</th>"
  loc_C07D50: PopAdLdVar
  loc_C07D51: FLdPr Me
  loc_C07D54: MemLdRfVar from_stack_1.global_60
  loc_C07D57: LdPrVar
  loc_C07D59: LateMemCall
  loc_C07D5F: LitVarStr var_98, "    <th>Cred.</th>"
  loc_C07D64: PopAdLdVar
  loc_C07D65: FLdPr Me
  loc_C07D68: MemLdRfVar from_stack_1.global_60
  loc_C07D6B: LdPrVar
  loc_C07D6D: LateMemCall
  loc_C07D73: LitVarStr var_98, "    <th>Total</th>"
  loc_C07D78: PopAdLdVar
  loc_C07D79: FLdPr Me
  loc_C07D7C: MemLdRfVar from_stack_1.global_60
  loc_C07D7F: LdPrVar
  loc_C07D81: LateMemCall
  loc_C07D87: LitVarStr var_98, "    </tr>"
  loc_C07D8C: PopAdLdVar
  loc_C07D8D: FLdPr Me
  loc_C07D90: MemLdRfVar from_stack_1.global_60
  loc_C07D93: LdPrVar
  loc_C07D95: LateMemCall
  loc_C07D9B: LitVarStr var_98, "  </thead>"
  loc_C07DA0: PopAdLdVar
  loc_C07DA1: FLdPr Me
  loc_C07DA4: MemLdRfVar from_stack_1.global_60
  loc_C07DA7: LdPrVar
  loc_C07DA9: LateMemCall
  loc_C07DAF: ExitProcHresult
End Function

Private Function Proc_168_18_A0C0C8() 'A0C0C8
  'Data Table: 473FB4
  loc_A0C088: LitVarStr var_94, "</table>"
  loc_A0C08D: PopAdLdVar
  loc_A0C08E: FLdPr Me
  loc_A0C091: MemLdRfVar from_stack_1.global_60
  loc_A0C094: LdPrVar
  loc_A0C096: LateMemCall
  loc_A0C09C: LitVarStr var_94, "</body>"
  loc_A0C0A1: PopAdLdVar
  loc_A0C0A2: FLdPr Me
  loc_A0C0A5: MemLdRfVar from_stack_1.global_60
  loc_A0C0A8: LdPrVar
  loc_A0C0AA: LateMemCall
  loc_A0C0B0: LitVarStr var_94, "</html>"
  loc_A0C0B5: PopAdLdVar
  loc_A0C0B6: FLdPr Me
  loc_A0C0B9: MemLdRfVar from_stack_1.global_60
  loc_A0C0BC: LdPrVar
  loc_A0C0BE: LateMemCall
  loc_A0C0C4: ExitProcHresult
End Function
