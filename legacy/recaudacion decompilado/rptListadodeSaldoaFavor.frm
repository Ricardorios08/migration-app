VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeSaldoaFavor
  Caption = "Listado de Pagos Duplicados"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeSaldoaFavor.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9792
  ClientHeight = 3792
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
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3540
    Width = 9795
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptListadodeSaldoaFavor.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7320
    Top = 2400
    Width = 855
    Height = 735
    TabIndex = 11
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
    Picture = "rptListadodeSaldoaFavor.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeSaldoaFavor.frx":0B9C
    Left = 7800
    Top = 960
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4560
    Top = 2160
    Width = 1815
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 360
    Top = 2160
    Width = 4095
    Height = 1215
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9375
    Height = 1695
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CheckBox FacilidadChk
      Caption = "Solo pagos doble de facilidad"
      Left = 3480
      Top = 1080
      Width = 3495
      Height = 375
      TabIndex = 14
    End
    Begin VB.ComboBox CodiOficCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1230
      Top = 600
      Width = 3975
      Height = 420
      TabIndex = 3
      List = "rptListadodeSaldoaFavor.frx":0C00
      ItemData = "rptListadodeSaldoaFavor.frx":0C74
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7200
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox PeriInfoMsk
      Left = 1200
      Top = 1080
      Width = 735
      Height = 420
      TabIndex = 5
      OleObjectBlob = "rptListadodeSaldoaFavor.frx":0C87
    End
    Begin VB.Label Label
      Caption = "0 - Todos"
      Left = 2040
      Top = 1100
      Width = 1095
      Height = 255
      TabIndex = 15
    End
    Begin VB.Label Label2
      Caption = "Periodo:"
      Left = 240
      Top = 1080
      Width = 870
      Height = 300
      TabIndex = 4
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Oficina:"
      Left = 360
      Top = 600
      Width = 795
      Height = 300
      TabIndex = 2
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7560
    Top = 2400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptListadodeSaldoaFavor.frx":0CEF
  End
End

Attribute VB_Name = "rptListadodeSaldoaFavor"

Public bGenerado As Boolean

Private Type UDT_1_00562DC4
  bStruc(40) As Byte ' String fields: 10
End Type


Private Sub cmdPredeterminada_Click() '9D3098
  'Data Table: 476B9C
  loc_9D3080: LitI2_Byte 0
  loc_9D3082: ILdRf Me
  loc_9D3085: CastAd
  loc_9D3088: FStAdFunc var_88
  loc_9D308B: FLdRfVar var_88
  loc_9D308E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D3093: FFree1Ad var_88
  loc_9D3096: ExitProcHresult
End Sub

Private Sub PeriInfoMsk_UnknownEvent_0 '9C16D0
  'Data Table: 476B9C
  loc_9C16BC: FLdPr Me
  loc_9C16BF: VCallAd Control_ID_PeriInfoMsk
  loc_9C16C2: CVarAd
  loc_9C16C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C16CB: FFree1Var var_94 = ""
  loc_9C16CE: ExitProcHresult
End Sub

Private Function PeriInfoMsk_UnknownEvent_8(arg_C) 'A6E918
  'Data Table: 476B9C
  loc_A6E8B0: FLdPr Me
  loc_A6E8B3: VCallAd Control_ID_PeriInfoMsk
  loc_A6E8B6: FStAdFunc var_88
  loc_A6E8B9: FLdPr var_88
  loc_A6E8BC: LateIdLdVar var_98 DispID_22 0
  loc_A6E8C3: PopAd
  loc_A6E8C5: LitI2_Byte &HFF
  loc_A6E8C7: LitI2_Byte 0
  loc_A6E8C9: FLdRfVar var_98
  loc_A6E8CC: CStrVarTmp
  loc_A6E8CD: FStStrNoPop var_9C
  loc_A6E8D0: LitStr "Periodo"
  loc_A6E8D3: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A6E8D8: FStStrNoPop var_A0
  loc_A6E8DB: FLdPr Me
  loc_A6E8DE: MemStStrCopy
  loc_A6E8E2: FFreeStr var_9C = ""
  loc_A6E8E9: FFree1Ad var_88
  loc_A6E8EC: FFree1Var var_98 = ""
  loc_A6E8EF: FLdPr Me
  loc_A6E8F2: VCallAd Control_ID_PeriInfoMsk
  loc_A6E8F5: FStAdFuncNoPop
  loc_A6E8F8: CastAd
  loc_A6E8FB: FStAdFunc var_A4
  loc_A6E8FE: FLdRfVar var_A4
  loc_A6E901: FLdPr Me
  loc_A6E904: MemLdStr global_100
  loc_A6E907: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6E90C: IStI2 arg_C
  loc_A6E90F: FFreeAd var_88 = ""
  loc_A6E916: ExitProcHresult
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A12BC8
  'Data Table: 476B9C
  loc_A12B90: FLdPr Me
  loc_A12B93: VCallAd Control_ID_statusBar
  loc_A12B96: FStAdFunc var_88
  loc_A12B99: FLdPr var_88
  loc_A12B9C: LateIdLdVar var_98 DispID_1 0
  loc_A12BA3: CStrVarTmp
  loc_A12BA4: CVarStr var_A8
  loc_A12BA7: PopAdLdVar
  loc_A12BA8: FLdPr Me
  loc_A12BAB: VCallAd Control_ID_statusBar
  loc_A12BAE: FStAdFunc var_BC
  loc_A12BB1: FLdPr var_BC
  loc_A12BB4: LateIdSt
  loc_A12BB9: FFreeAd var_88 = ""
  loc_A12BC0: FFreeVar var_98 = ""
  loc_A12BC7: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D2DEC
  'Data Table: 476B9C
  loc_9D2DD4: ILdRf Me
  loc_9D2DD7: CastAd
  loc_9D2DDA: FStAdFunc var_88
  loc_9D2DDD: FLdRfVar var_88
  loc_9D2DE0: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D2DE5: FFree1Ad var_88
  loc_9D2DE8: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A76944
  'Data Table: 476B9C
  loc_A768D4: LitI2_Byte 0
  loc_A768D6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A768DB: CVarDate var_A4
  loc_A768DF: FLdRfVar var_B4
  loc_A768E2: ImpAdCallFPR4  = Year()
  loc_A768E7: FLdRfVar var_B4
  loc_A768EA: CStrVarTmp
  loc_A768EB: CVarStr var_C4
  loc_A768EE: PopAdLdVar
  loc_A768EF: FLdPr Me
  loc_A768F2: VCallAd Control_ID_PeriInfoMsk
  loc_A768F5: FStAdFunc var_D8
  loc_A768F8: FLdPr var_D8
  loc_A768FB: LateIdSt
  loc_A76900: FFree1Ad var_D8
  loc_A76903: FFreeVar var_A4 = "": var_B4 = ""
  loc_A7690C: LitI2_Byte 0
  loc_A7690E: FLdPr Me
  loc_A76911: MemStI2 bGenerado
  loc_A76914: LitI2_Byte 0
  loc_A76916: ILdRf Me
  loc_A76919: CastAd
  loc_A7691C: FStAdFunc var_D8
  loc_A7691F: FLdRfVar var_D8
  loc_A76922: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A76927: FFree1Ad var_D8
  loc_A7692A: Call HabilitarCriterio()
  loc_A7692F: ILdRf Me
  loc_A76932: CastAd
  loc_A76935: FStAdFunc var_D8
  loc_A76938: FLdRfVar var_D8
  loc_A7693B: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A76940: FFree1Ad var_D8
  loc_A76943: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB29F8
  'Data Table: 476B9C
  loc_AB291C: FLdRfVar var_88
  loc_AB291F: NewIfNullAd
  loc_AB2922: FStAd var_8C 
  loc_AB2926: LitStr "SELECT CodiOfic, DetaOfic FROM oficina ORDER BY CodiOfic"
  loc_AB2929: FLdPr var_8C
  loc_AB292C: Call clsoficina.RedefineRS(from_stack_1v)
  loc_AB2931: FLdPr var_8C
  loc_AB2934: Call clsoficina.MoveFirst()
  loc_AB2939: FLdPr Me
  loc_AB293C: VCallAd Control_ID_CodiOficCbo
  loc_AB293F: FStAdFunc var_90
  loc_AB2942: FLdPr var_90
  loc_AB2945: Me.Clear
  loc_AB294A: FFree1Ad var_90
  loc_AB294D: FLdRfVar var_92
  loc_AB2950: FLdPr var_8C
  loc_AB2953: from_stack_1 = clsoficina.EOF
  loc_AB2958: FLdI2 var_92
  loc_AB295B: NotI4
  loc_AB295C: BranchF loc_AB29D6
  loc_AB295F: LitVar_Missing var_A8
  loc_AB2962: PopAdLdVar
  loc_AB2963: FLdRfVar var_98
  loc_AB2966: FLdPr var_8C
  loc_AB2969: from_stack_1 = clsoficina.DetaOfic
  loc_AB296E: ILdRf var_98
  loc_AB2971: FLdPr Me
  loc_AB2974: VCallAd Control_ID_CodiOficCbo
  loc_AB2977: FStAdFunc var_90
  loc_AB297A: FLdPr var_90
  loc_AB297D: Me.AddItem from_stack_1, from_stack_2
  loc_AB2982: FFree1Str var_98
  loc_AB2985: FFree1Ad var_90
  loc_AB2988: FLdRfVar var_92
  loc_AB298B: FLdPr var_8C
  loc_AB298E: from_stack_1 = clsoficina.CodiOfic
  loc_AB2993: FLdI2 var_92
  loc_AB2996: CI4UI1
  loc_AB2997: FLdRfVar var_AA
  loc_AB299A: FLdPr Me
  loc_AB299D: VCallAd Control_ID_CodiOficCbo
  loc_AB29A0: FStAdFunc var_90
  loc_AB29A3: FLdPr var_90
  loc_AB29A6:  = Me.NewIndex
  loc_AB29AB: FLdI2 var_AA
  loc_AB29AE: FLdPr Me
  loc_AB29B1: VCallAd Control_ID_CodiOficCbo
  loc_AB29B4: FStAdFunc var_B0
  loc_AB29B7: FLdPr var_B0
  loc_AB29BA: Me.ItemData = from_stack_1
  loc_AB29BF: FFreeAd var_90 = ""
  loc_AB29C6: LitI2_Byte 1
  loc_AB29C8: PopTmpLdAd2 var_92
  loc_AB29CB: FLdPr var_8C
  loc_AB29CE: Call clsoficina.Move(from_stack_1v)
  loc_AB29D3: Branch loc_AB294D
  loc_AB29D6: LitNothing
  loc_AB29D8: FStAd var_8C 
  loc_AB29DC: ILdRf Me
  loc_AB29DF: CastAd
  loc_AB29E2: FStAdFunc var_90
  loc_AB29E5: FLdRfVar var_90
  loc_AB29E8: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AB29ED: FFree1Ad var_90
  loc_AB29F0: Call cmdNueva_Click()
  loc_AB29F5: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CA1CC
  'Data Table: 476B9C
  loc_9CA1B4: FLdPr Me
  loc_9CA1B7: VCallAd Control_ID_wbbReporte
  loc_9CA1BA: FStAdFunc var_88
  loc_9CA1BD: FLdRfVar var_88
  loc_9CA1C0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CA1C5: FFree1Ad var_88
  loc_9CA1C8: ExitProcHresult
  loc_9CA1CB: GtI4
End Sub

Private Sub cmdPdf_Click() '9E069C
  'Data Table: 476B9C
  loc_9E0680: LitI2_Byte 0
  loc_9E0682: PopTmpLdAd2 var_8A
  loc_9E0685: ILdRf Me
  loc_9E0688: CastAd
  loc_9E068B: FStAdFunc var_88
  loc_9E068E: FLdRfVar var_88
  loc_9E0691: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E0696: FFree1Ad var_88
  loc_9E0699: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A00EC0
  'Data Table: 476B9C
  loc_A00E90: LitVarStr var_94, "Cerrando..."
  loc_A00E95: PopAdLdVar
  loc_A00E96: FLdPr Me
  loc_A00E99: VCallAd Control_ID_statusBar
  loc_A00E9C: FStAdFunc var_A8
  loc_A00E9F: FLdPr var_A8
  loc_A00EA2: LateIdSt
  loc_A00EA7: FFree1Ad var_A8
  loc_A00EAA: ILdRf Me
  loc_A00EAD: FStAdNoPop
  loc_A00EB1: ImpAdLdRf MemVar_D9C5D8
  loc_A00EB4: NewIfNullPr Global
  loc_A00EB7: Global.Unload from_stack_1
  loc_A00EBC: FFree1Ad var_A8
  loc_A00EBF: ExitProcHresult
End Sub

Public Function bGeneradoGet() '477890
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47789F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5DF08
  'Data Table: 476B9C
  loc_A5DEB4: LitI4 0
  loc_A5DEB9: LitI4 2
  loc_A5DEBE: FLdRfVar var_88
  loc_A5DEC1: Redim
  loc_A5DECB: FLdPr Me
  loc_A5DECE: VCallAd Control_ID_CodiOficCbo
  loc_A5DED1: CVarAd
  loc_A5DED5: ParmAry1St
  loc_A5DEDB: FLdPr Me
  loc_A5DEDE: VCallAd Control_ID_PeriInfoMsk
  loc_A5DEE1: CVarAd
  loc_A5DEE5: ParmAry1St
  loc_A5DEEB: FLdPr Me
  loc_A5DEEE: VCallAd Control_ID_FacilidadChk
  loc_A5DEF1: CVarAd
  loc_A5DEF5: ParmAry1St
  loc_A5DEFB: FLdRfVar var_88
  loc_A5DEFE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5DF03: FLdRfVar var_88
  loc_A5DF06: Erase
  loc_A5DF07: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C734A0
  'Data Table: 476B9C
  loc_C72400: FLdPr Me
  loc_C72403: MemLdI2 bGenerado
  loc_C72406: BranchF loc_C7240A
  loc_C72409: ExitProcHresult
  loc_C7240A: LitVarStr var_A4, "Generando reporte..."
  loc_C7240F: PopAdLdVar
  loc_C72410: FLdPr Me
  loc_C72413: VCallAd Control_ID_statusBar
  loc_C72416: FStAdFunc var_B8
  loc_C72419: FLdPr var_B8
  loc_C7241C: LateIdSt
  loc_C72421: FFree1Ad var_B8
  loc_C72424: LitI4 &HB
  loc_C72429: CI2I4
  loc_C7242A: FLdPr Me
  loc_C7242D: Me.MousePointer = from_stack_1
  loc_C72432: FLdRfVar var_BA
  loc_C72435: FLdPr Me
  loc_C72438: VCallAd Control_ID_CodiOficCbo
  loc_C7243B: FStAdFunc var_B8
  loc_C7243E: FLdPr var_B8
  loc_C72441:  = Me.ListIndex
  loc_C72446: FLdI2 var_BA
  loc_C72449: LitI2_Byte 0
  loc_C7244B: LtI2
  loc_C7244C: FFree1Ad var_B8
  loc_C7244F: BranchF loc_C7245D
  loc_C72452: LitStr "Debe seleccionar la oficina"
  loc_C72455: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C7245A: Branch loc_C73476
  loc_C7245D: FLdPr Me
  loc_C72460: VCallAd Control_ID_PeriInfoMsk
  loc_C72463: FStAdFunc var_B8
  loc_C72466: FLdPr var_B8
  loc_C72469: LateIdLdVar var_CC DispID_22 0
  loc_C72470: PopAd
  loc_C72472: FLdPr Me
  loc_C72475: VCallAd Control_ID_PeriInfoMsk
  loc_C72478: FStAdFunc var_D4
  loc_C7247B: FLdPr var_D4
  loc_C7247E: LateIdLdVar var_E4 DispID_22 0
  loc_C72485: PopAd
  loc_C72487: LitVarStr var_B4, vbNullString
  loc_C7248C: FStVarCopyObj var_108
  loc_C7248F: FLdRfVar var_108
  loc_C72492: LitStr " AND ctacte.PeriCtct = "
  loc_C72495: FLdRfVar var_E4
  loc_C72498: CStrVarTmp
  loc_C72499: FStStrNoPop var_E8
  loc_C7249C: ConcatStr
  loc_C7249D: CVarStr var_F8
  loc_C724A0: FLdRfVar var_CC
  loc_C724A3: CStrVarTmp
  loc_C724A4: FStStrNoPop var_D0
  loc_C724A7: CR8Str
  loc_C724A9: LitI2_Byte 0
  loc_C724AB: CR8I2
  loc_C724AC: NeR8
  loc_C724AD: CVarBoolI2 var_A4
  loc_C724B1: FLdRfVar var_118
  loc_C724B4: ImpAdCallFPR4  = IIf(, , )
  loc_C724B9: FLdRfVar var_118
  loc_C724BC: CStrVarTmp
  loc_C724BD: FStStr var_88
  loc_C724C0: FFreeStr var_D0 = ""
  loc_C724C7: FFreeAd var_B8 = ""
  loc_C724CE: FFreeVar var_CC = "": var_E4 = "": var_A4 = "": var_F8 = "": var_108 = ""
  loc_C724DD: FLdRfVar var_BA
  loc_C724E0: FLdPr Me
  loc_C724E3: VCallAd Control_ID_FacilidadChk
  loc_C724E6: FStAdFunc var_B8
  loc_C724E9: FLdPr var_B8
  loc_C724EC:  = Me.Value
  loc_C724F1: LitVarStr var_128, vbNullString
  loc_C724F6: FStVarCopyObj var_E4
  loc_C724F9: FLdRfVar var_E4
  loc_C724FC: LitVarStr var_B4, " WHERE CodiFapa <> 0"
  loc_C72501: FStVarCopyObj var_CC
  loc_C72504: FLdRfVar var_CC
  loc_C72507: FLdI2 var_BA
  loc_C7250A: LitI2_Byte 1
  loc_C7250C: EqI2
  loc_C7250D: CVarBoolI2 var_A4
  loc_C72511: FLdRfVar var_F8
  loc_C72514: ImpAdCallFPR4  = IIf(, , )
  loc_C72519: FLdRfVar var_F8
  loc_C7251C: CStrVarTmp
  loc_C7251D: FStStr var_8C
  loc_C72520: FFree1Ad var_B8
  loc_C72523: FFreeVar var_A4 = "": var_CC = "": var_E4 = ""
  loc_C7252E: LitStr "DROP TEMPORARY TABLE IF EXISTS ctactetmp; "
  loc_C72531: LitStr "CREATE TEMPORARY TABLE ctactetmp ("
  loc_C72534: ConcatStr
  loc_C72535: FStStrNoPop var_D0
  loc_C72538: LitStr "odiOfic` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_C7253B: ConcatStr
  loc_C7253C: FStStrNoPop var_E8
  loc_C7253F: LitStr "uenCtct` char(11) NOT NULL DEFAULT '',"
  loc_C72542: ConcatStr
  loc_C72543: FStStrNoPop var_12C
  loc_C72546: LitStr "eriCtct` year(4) NOT NULL DEFAULT '0000',"
  loc_C72549: ConcatStr
  loc_C7254A: FStStrNoPop var_130
  loc_C7254D: LitStr "imeCtct` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_C72550: ConcatStr
  loc_C72551: FStStrNoPop var_134
  loc_C72554: LitStr "umeCtct` int(10) unsigned NOT NULL DEFAULT '0',"
  loc_C72557: ConcatStr
  loc_C72558: FStStrNoPop var_138
  loc_C7255B: LitStr "oviCtct` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_C7255E: ConcatStr
  loc_C7255F: FStStrNoPop var_13C
  loc_C72562: LitStr "eriBole` year(4) NOT NULL DEFAULT '0000',"
  loc_C72565: ConcatStr
  loc_C72566: FStStrNoPop var_140
  loc_C72569: LitStr "umeBole` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_C7256C: ConcatStr
  loc_C7256D: FStStrNoPop var_144
  loc_C72570: LitStr "eveCtct` date DEFAULT NULL,"
  loc_C72573: ConcatStr
  loc_C72574: FStStrNoPop var_148
  loc_C72577: LitStr "eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_C7257A: ConcatStr
  loc_C7257B: FStStrNoPop var_14C
  loc_C7257E: LitStr "odiConc` char(8) NOT NULL DEFAULT '',"
  loc_C72581: ConcatStr
  loc_C72582: FStStrNoPop var_150
  loc_C72585: LitStr "odiFapa` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_C72588: ConcatStr
  loc_C72589: FStStrNoPop var_154
  loc_C7258C: LitStr "uotDefa` smallint(4) unsigned NOT NULL DEFAULT '0',"
  loc_C7258F: ConcatStr
  loc_C72590: FStStrNoPop var_158
  loc_C72593: LitStr "mpoCtct` decimal(10,2) NOT NULL DEFAULT '0.00')"
  loc_C72596: ConcatStr
  loc_C72597: FStStrNoPop var_15C
  loc_C7259A: LitStr " ENGINE=InnoDB DEFAULT CHARSET=latin1"
  loc_C7259D: ConcatStr
  loc_C7259E: FStStrNoPop var_160
  loc_C725A1: FLdPr Me
  loc_C725A4: MemLdRfVar from_stack_1.global_84
  loc_C725A7: NewIfNullPr clsctacte
  loc_C725AA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C725AF: FFreeStr var_D0 = "": var_E8 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_C725D2: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte;"
  loc_C725D5: LitStr " CREATE TEMPORARY TABLE tmp_ctacte"
  loc_C725D8: ConcatStr
  loc_C725D9: FStStrNoPop var_D0
  loc_C725DC: LitStr " SELECT ctacte.CodiOfic, ctacte.CuenCtct, DetaPers, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, SUM(DebeCtct)-SUM(CredCtct) as SaldCtct FROM ctacte "
  loc_C725DF: ConcatStr
  loc_C725E0: FStStrNoPop var_E8
  loc_C725E3: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = ctacte.CodiOfic AND relacion.CuenCtct = ctacte.CuenCtct AND TipoRela = 'Titular'"
  loc_C725E6: ConcatStr
  loc_C725E7: FStStrNoPop var_12C
  loc_C725EA: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = relacion.CucuPers"
  loc_C725ED: ConcatStr
  loc_C725EE: FStStrNoPop var_130
  loc_C725F1: LitStr " WHERE ctacte.CodiOfic = "
  loc_C725F4: ConcatStr
  loc_C725F5: FStStrNoPop var_134
  loc_C725F8: FLdRfVar var_164
  loc_C725FB: FLdRfVar var_BA
  loc_C725FE: FLdPr Me
  loc_C72601: VCallAd Control_ID_CodiOficCbo
  loc_C72604: FStAdFunc var_B8
  loc_C72607: FLdPr var_B8
  loc_C7260A:  = Me.ListIndex
  loc_C7260F: FLdI2 var_BA
  loc_C72612: FLdPr Me
  loc_C72615: VCallAd Control_ID_CodiOficCbo
  loc_C72618: FStAdFunc var_D4
  loc_C7261B: FLdPr var_D4
  loc_C7261E:  = Me.ItemData
  loc_C72623: ILdRf var_164
  loc_C72626: CStrI4
  loc_C72628: FStStrNoPop var_138
  loc_C7262B: ConcatStr
  loc_C7262C: FStStrNoPop var_13C
  loc_C7262F: ILdRf var_88
  loc_C72632: ConcatStr
  loc_C72633: FStStrNoPop var_140
  loc_C72636: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct"
  loc_C72639: ConcatStr
  loc_C7263A: FStStrNoPop var_144
  loc_C7263D: LitStr " Having SaldCtct < 0"
  loc_C72640: ConcatStr
  loc_C72641: FStStrNoPop var_148
  loc_C72644: FLdPr Me
  loc_C72647: MemLdRfVar from_stack_1.global_76
  loc_C7264A: NewIfNullPr clsctacte
  loc_C7264D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C72652: FFreeStr var_D0 = "": var_E8 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_C72669: FFreeAd var_B8 = ""
  loc_C72670: LitStr "SELECT * FROM tmp_ctacte"
  loc_C72673: FLdPr Me
  loc_C72676: MemLdRfVar from_stack_1.global_76
  loc_C72679: NewIfNullPr clsctacte
  loc_C7267C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C72681: FLdRfVar var_164
  loc_C72684: FLdRfVar var_B8
  loc_C72687: FLdPr Me
  loc_C7268A: MemLdRfVar from_stack_1.global_76
  loc_C7268D: NewIfNullPr clsctacte
  loc_C72690: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72695: FLdPr var_B8
  loc_C72698:  = Me.RecordCount
  loc_C7269D: ILdRf var_164
  loc_C726A0: LitI4 0
  loc_C726A5: GtI4
  loc_C726A6: FFree1Ad var_B8
  loc_C726A9: BranchF loc_C72F80
  loc_C726AC: FLdRfVar var_B8
  loc_C726AF: FLdPr Me
  loc_C726B2: MemLdRfVar from_stack_1.global_76
  loc_C726B5: NewIfNullPr clsctacte
  loc_C726B8: from_stack_1v = clsctacte.RsFrmGet()
  loc_C726BD: FLdPr var_B8
  loc_C726C0: Me.MoveFirst
  loc_C726C5: FFree1Ad var_B8
  loc_C726C8: FLdRfVar var_BA
  loc_C726CB: FLdRfVar var_B8
  loc_C726CE: FLdPr Me
  loc_C726D1: MemLdRfVar from_stack_1.global_76
  loc_C726D4: NewIfNullPr clsctacte
  loc_C726D7: from_stack_1v = clsctacte.RsFrmGet()
  loc_C726DC: FLdPr var_B8
  loc_C726DF:  = Me.EOF
  loc_C726E4: FLdI2 var_BA
  loc_C726E7: NotI4
  loc_C726E8: FFree1Ad var_B8
  loc_C726EB: BranchF loc_C72F80
  loc_C726EE: LitI2_Byte 0
  loc_C726F0: CR8I2
  loc_C726F1: FStFPR8 var_94
  loc_C726F4: LitStr "SELECT ctacte.* FROM tmp_ctacte"
  loc_C726F7: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = tmp_ctacte.CodiOfic"
  loc_C726FA: ConcatStr
  loc_C726FB: FStStrNoPop var_D0
  loc_C726FE: LitStr " AND ctacte.CuenCtct = tmp_ctacte.CuenCtct"
  loc_C72701: ConcatStr
  loc_C72702: FStStrNoPop var_E8
  loc_C72705: LitStr " AND ctacte.PeriCtct = tmp_ctacte.PeriCtct"
  loc_C72708: ConcatStr
  loc_C72709: FStStrNoPop var_12C
  loc_C7270C: LitStr " AND ctacte.BimeCtct = tmp_ctacte.BimeCtct"
  loc_C7270F: ConcatStr
  loc_C72710: FStStrNoPop var_130
  loc_C72713: LitStr " AND ctacte.NumeCtct = tmp_ctacte.NumeCtct"
  loc_C72716: ConcatStr
  loc_C72717: FStStrNoPop var_134
  loc_C7271A: LitStr " INNER JOIN tipomovi ON tipomovi.CodiTimo = ctacte.CodiTimo"
  loc_C7271D: ConcatStr
  loc_C7271E: FStStrNoPop var_138
  loc_C72721: LitStr " WHERE tmp_ctacte.CodiOfic = "
  loc_C72724: ConcatStr
  loc_C72725: CVarStr var_E4
  loc_C72728: FLdRfVar var_CC
  loc_C7272B: FLdRfVar var_168
  loc_C7272E: LitVarStr var_A4, "CodiOfic"
  loc_C72733: PopAdLdVar
  loc_C72734: FLdRfVar var_D4
  loc_C72737: FLdRfVar var_B8
  loc_C7273A: FLdPr Me
  loc_C7273D: MemLdRfVar from_stack_1.global_76
  loc_C72740: NewIfNullPr clsctacte
  loc_C72743: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72748: FLdPr var_B8
  loc_C7274B:  = Me.Fields
  loc_C72750: FLdPr var_D4
  loc_C72753: from_stack_2 = Me.Item(from_stack_1)
  loc_C72758: FLdPr var_168
  loc_C7275B:  = Me.Value
  loc_C72760: FLdRfVar var_CC
  loc_C72763: ConcatVar var_F8
  loc_C72767: LitVarStr var_B4, " AND tmp_ctacte.CuenCtct = '"
  loc_C7276C: ConcatVar var_108
  loc_C72770: FLdRfVar var_118
  loc_C72773: FLdRfVar var_174
  loc_C72776: LitVarStr var_128, "CuenCtct"
  loc_C7277B: PopAdLdVar
  loc_C7277C: FLdRfVar var_170
  loc_C7277F: FLdRfVar var_16C
  loc_C72782: FLdPr Me
  loc_C72785: MemLdRfVar from_stack_1.global_76
  loc_C72788: NewIfNullPr clsctacte
  loc_C7278B: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72790: FLdPr var_16C
  loc_C72793:  = Me.Fields
  loc_C72798: FLdPr var_170
  loc_C7279B: from_stack_2 = Me.Item(from_stack_1)
  loc_C727A0: FLdPr var_174
  loc_C727A3:  = Me.Value
  loc_C727A8: FLdRfVar var_118
  loc_C727AB: ConcatVar var_184
  loc_C727AF: LitVarStr var_194, "'"
  loc_C727B4: ConcatVar var_1A4
  loc_C727B8: LitVarStr var_1B4, " AND tmp_ctacte.PeriCtct = "
  loc_C727BD: ConcatVar var_1C4
  loc_C727C1: FLdRfVar var_1F0
  loc_C727C4: FLdRfVar var_1E0
  loc_C727C7: LitVarStr var_1DC, "PeriCtct"
  loc_C727CC: PopAdLdVar
  loc_C727CD: FLdRfVar var_1CC
  loc_C727D0: FLdRfVar var_1C8
  loc_C727D3: FLdPr Me
  loc_C727D6: MemLdRfVar from_stack_1.global_76
  loc_C727D9: NewIfNullPr clsctacte
  loc_C727DC: from_stack_1v = clsctacte.RsFrmGet()
  loc_C727E1: FLdPr var_1C8
  loc_C727E4:  = Me.Fields
  loc_C727E9: FLdPr var_1CC
  loc_C727EC: from_stack_2 = Me.Item(from_stack_1)
  loc_C727F1: FLdPr var_1E0
  loc_C727F4:  = Me.Value
  loc_C727F9: FLdRfVar var_1F0
  loc_C727FC: ConcatVar var_200
  loc_C72800: LitVarStr var_210, " AND tmp_ctacte.BimeCtct = "
  loc_C72805: ConcatVar var_220
  loc_C72809: FLdRfVar var_24C
  loc_C7280C: FLdRfVar var_23C
  loc_C7280F: LitVarStr var_238, "BimeCtct"
  loc_C72814: PopAdLdVar
  loc_C72815: FLdRfVar var_228
  loc_C72818: FLdRfVar var_224
  loc_C7281B: FLdPr Me
  loc_C7281E: MemLdRfVar from_stack_1.global_76
  loc_C72821: NewIfNullPr clsctacte
  loc_C72824: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72829: FLdPr var_224
  loc_C7282C:  = Me.Fields
  loc_C72831: FLdPr var_228
  loc_C72834: from_stack_2 = Me.Item(from_stack_1)
  loc_C72839: FLdPr var_23C
  loc_C7283C:  = Me.Value
  loc_C72841: FLdRfVar var_24C
  loc_C72844: ConcatVar var_25C
  loc_C72848: LitVarStr var_26C, " AND tmp_ctacte.NumeCtct = "
  loc_C7284D: ConcatVar var_27C
  loc_C72851: FLdRfVar var_2A8
  loc_C72854: FLdRfVar var_298
  loc_C72857: LitVarStr var_294, "NumeCtct"
  loc_C7285C: PopAdLdVar
  loc_C7285D: FLdRfVar var_284
  loc_C72860: FLdRfVar var_280
  loc_C72863: FLdPr Me
  loc_C72866: MemLdRfVar from_stack_1.global_76
  loc_C72869: NewIfNullPr clsctacte
  loc_C7286C: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72871: FLdPr var_280
  loc_C72874:  = Me.Fields
  loc_C72879: FLdPr var_284
  loc_C7287C: from_stack_2 = Me.Item(from_stack_1)
  loc_C72881: FLdPr var_298
  loc_C72884:  = Me.Value
  loc_C72889: FLdRfVar var_2A8
  loc_C7288C: ConcatVar var_2B8
  loc_C72890: LitVarStr var_2C8, " ORDER BY tipomovi.DecrTimo, ctacte.MoviCtct"
  loc_C72895: ConcatVar var_2D8
  loc_C72899: CStrVarVal var_13C
  loc_C7289D: FLdPr Me
  loc_C728A0: MemLdRfVar from_stack_1.global_80
  loc_C728A3: NewIfNullPr clsctacte
  loc_C728A6: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C728AB: FFreeStr var_D0 = "": var_E8 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_C728BC: FFreeAd var_B8 = "": var_D4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_1C8 = "": var_1CC = "": var_1E0 = "": var_224 = "": var_228 = "": var_23C = "": var_280 = "": var_284 = ""
  loc_C728DD: FFreeVar var_E4 = "": var_CC = "": var_F8 = "": var_108 = "": var_118 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1F0 = "": var_200 = "": var_220 = "": var_24C = "": var_25C = "": var_27C = "": var_2A8 = "": var_2B8 = ""
  loc_C72902: FLdRfVar var_164
  loc_C72905: FLdPr Me
  loc_C72908: MemLdRfVar from_stack_1.global_80
  loc_C7290B: NewIfNullPr clsctacte
  loc_C7290E: from_stack_1 = clsctacte.RecordCount
  loc_C72913: ILdRf var_164
  loc_C72916: LitI4 0
  loc_C7291B: GtI4
  loc_C7291C: BranchF loc_C72F61
  loc_C7291F: FLdRfVar var_B8
  loc_C72922: FLdPr Me
  loc_C72925: MemLdRfVar from_stack_1.global_80
  loc_C72928: NewIfNullPr clsctacte
  loc_C7292B: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72930: FLdPr var_B8
  loc_C72933: Me.MoveFirst
  loc_C72938: FFree1Ad var_B8
  loc_C7293B: FLdRfVar var_BA
  loc_C7293E: FLdRfVar var_B8
  loc_C72941: FLdPr Me
  loc_C72944: MemLdRfVar from_stack_1.global_80
  loc_C72947: NewIfNullPr clsctacte
  loc_C7294A: from_stack_1v = clsctacte.RsFrmGet()
  loc_C7294F: FLdPr var_B8
  loc_C72952:  = Me.EOF
  loc_C72957: FLdI2 var_BA
  loc_C7295A: NotI4
  loc_C7295B: FFree1Ad var_B8
  loc_C7295E: BranchF loc_C72F61
  loc_C72961: FLdRfVar var_CC
  loc_C72964: FLdRfVar var_168
  loc_C72967: LitVarStr var_A4, "DebeCtct"
  loc_C7296C: PopAdLdVar
  loc_C7296D: FLdRfVar var_D4
  loc_C72970: FLdRfVar var_B8
  loc_C72973: FLdPr Me
  loc_C72976: MemLdRfVar from_stack_1.global_80
  loc_C72979: NewIfNullPr clsctacte
  loc_C7297C: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72981: FLdPr var_B8
  loc_C72984:  = Me.Fields
  loc_C72989: FLdPr var_D4
  loc_C7298C: from_stack_2 = Me.Item(from_stack_1)
  loc_C72991: FLdPr var_168
  loc_C72994:  = Me.Value
  loc_C72999: LitI4 2
  loc_C7299E: FLdFPR8 var_94
  loc_C729A1: FLdRfVar var_CC
  loc_C729A4: FnCDblVar
  loc_C729A6: AddR8
  loc_C729A7: CVarR8
  loc_C729AB: FLdRfVar var_F8
  loc_C729AE: ImpAdCallFPR4  = Round(, )
  loc_C729B3: FLdRfVar var_F8
  loc_C729B6: CR4Var
  loc_C729B7: FStFPR8 var_94
  loc_C729BA: FFreeAd var_B8 = "": var_D4 = ""
  loc_C729C3: FFreeVar var_CC = "": var_E4 = ""
  loc_C729CC: FLdRfVar var_CC
  loc_C729CF: FLdRfVar var_168
  loc_C729D2: LitVarStr var_A4, "CredCtct"
  loc_C729D7: PopAdLdVar
  loc_C729D8: FLdRfVar var_D4
  loc_C729DB: FLdRfVar var_B8
  loc_C729DE: FLdPr Me
  loc_C729E1: MemLdRfVar from_stack_1.global_80
  loc_C729E4: NewIfNullPr clsctacte
  loc_C729E7: from_stack_1v = clsctacte.RsFrmGet()
  loc_C729EC: FLdPr var_B8
  loc_C729EF:  = Me.Fields
  loc_C729F4: FLdPr var_D4
  loc_C729F7: from_stack_2 = Me.Item(from_stack_1)
  loc_C729FC: FLdPr var_168
  loc_C729FF:  = Me.Value
  loc_C72A04: LitI4 2
  loc_C72A09: FLdFPR8 var_94
  loc_C72A0C: FLdRfVar var_CC
  loc_C72A0F: FnCDblVar
  loc_C72A11: SubR4
  loc_C72A12: CVarR8
  loc_C72A16: FLdRfVar var_F8
  loc_C72A19: ImpAdCallFPR4  = Round(, )
  loc_C72A1E: FLdRfVar var_F8
  loc_C72A21: CR4Var
  loc_C72A22: FStFPR8 var_94
  loc_C72A25: FFreeAd var_B8 = "": var_D4 = ""
  loc_C72A2E: FFreeVar var_CC = "": var_E4 = ""
  loc_C72A37: FLdFPR8 var_94
  loc_C72A3A: LitI2_Byte 0
  loc_C72A3C: CR8I2
  loc_C72A3D: LtR8
  loc_C72A3E: BranchF loc_C72F42
  loc_C72A41: FLdRfVar var_3E8
  loc_C72A44: LitVarStr var_3E4, "FeveCtct"
  loc_C72A49: PopAdLdVar
  loc_C72A4A: FLdRfVar var_3D4
  loc_C72A4D: FLdRfVar var_3D0
  loc_C72A50: FLdPr Me
  loc_C72A53: MemLdRfVar from_stack_1.global_80
  loc_C72A56: NewIfNullPr clsctacte
  loc_C72A59: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72A5E: FLdPr var_3D0
  loc_C72A61:  = Me.Fields
  loc_C72A66: FLdPr var_3D4
  loc_C72A69: from_stack_2 = Me.Item(from_stack_1)
  loc_C72A6E: FLdRfVar var_5F4
  loc_C72A71: FLdRfVar var_5E4
  loc_C72A74: LitVarStr var_5E0, "CredCtct"
  loc_C72A79: PopAdLdVar
  loc_C72A7A: FLdRfVar var_5D0
  loc_C72A7D: FLdRfVar var_5CC
  loc_C72A80: FLdPr Me
  loc_C72A83: MemLdRfVar from_stack_1.global_80
  loc_C72A86: NewIfNullPr clsctacte
  loc_C72A89: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72A8E: FLdPr var_5CC
  loc_C72A91:  = Me.Fields
  loc_C72A96: FLdPr var_5D0
  loc_C72A99: from_stack_2 = Me.Item(from_stack_1)
  loc_C72A9E: FLdPr var_5E4
  loc_C72AA1:  = Me.Value
  loc_C72AA6: LitStr "INSERT INTO ctactetmp (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriBole, NumeBole, FeveCtct, PeriInfo, CodiConc, CodiFapa, CuotDefa, ImpoCtct)"
  loc_C72AA9: LitStr " VALUE ("
  loc_C72AAC: ConcatStr
  loc_C72AAD: CVarStr var_E4
  loc_C72AB0: FLdRfVar var_CC
  loc_C72AB3: FLdRfVar var_168
  loc_C72AB6: LitVarStr var_A4, "CodiOfic"
  loc_C72ABB: PopAdLdVar
  loc_C72ABC: FLdRfVar var_D4
  loc_C72ABF: FLdRfVar var_B8
  loc_C72AC2: FLdPr Me
  loc_C72AC5: MemLdRfVar from_stack_1.global_80
  loc_C72AC8: NewIfNullPr clsctacte
  loc_C72ACB: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72AD0: FLdPr var_B8
  loc_C72AD3:  = Me.Fields
  loc_C72AD8: FLdPr var_D4
  loc_C72ADB: from_stack_2 = Me.Item(from_stack_1)
  loc_C72AE0: FLdPr var_168
  loc_C72AE3:  = Me.Value
  loc_C72AE8: FLdRfVar var_CC
  loc_C72AEB: ConcatVar var_F8
  loc_C72AEF: LitVarStr var_B4, ",'"
  loc_C72AF4: ConcatVar var_108
  loc_C72AF8: FLdRfVar var_118
  loc_C72AFB: FLdRfVar var_174
  loc_C72AFE: LitVarStr var_128, "CuenCtct"
  loc_C72B03: PopAdLdVar
  loc_C72B04: FLdRfVar var_170
  loc_C72B07: FLdRfVar var_16C
  loc_C72B0A: FLdPr Me
  loc_C72B0D: MemLdRfVar from_stack_1.global_80
  loc_C72B10: NewIfNullPr clsctacte
  loc_C72B13: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72B18: FLdPr var_16C
  loc_C72B1B:  = Me.Fields
  loc_C72B20: FLdPr var_170
  loc_C72B23: from_stack_2 = Me.Item(from_stack_1)
  loc_C72B28: FLdPr var_174
  loc_C72B2B:  = Me.Value
  loc_C72B30: FLdRfVar var_118
  loc_C72B33: ConcatVar var_184
  loc_C72B37: LitVarStr var_194, "',"
  loc_C72B3C: ConcatVar var_1A4
  loc_C72B40: FLdRfVar var_1C4
  loc_C72B43: FLdRfVar var_1E0
  loc_C72B46: LitVarStr var_1B4, "PeriCtct"
  loc_C72B4B: PopAdLdVar
  loc_C72B4C: FLdRfVar var_1CC
  loc_C72B4F: FLdRfVar var_1C8
  loc_C72B52: FLdPr Me
  loc_C72B55: MemLdRfVar from_stack_1.global_80
  loc_C72B58: NewIfNullPr clsctacte
  loc_C72B5B: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72B60: FLdPr var_1C8
  loc_C72B63:  = Me.Fields
  loc_C72B68: FLdPr var_1CC
  loc_C72B6B: from_stack_2 = Me.Item(from_stack_1)
  loc_C72B70: FLdPr var_1E0
  loc_C72B73:  = Me.Value
  loc_C72B78: FLdRfVar var_1C4
  loc_C72B7B: ConcatVar var_1F0
  loc_C72B7F: LitVarStr var_1DC, ","
  loc_C72B84: ConcatVar var_200
  loc_C72B88: FLdRfVar var_220
  loc_C72B8B: FLdRfVar var_23C
  loc_C72B8E: LitVarStr var_210, "BimeCtct"
  loc_C72B93: PopAdLdVar
  loc_C72B94: FLdRfVar var_228
  loc_C72B97: FLdRfVar var_224
  loc_C72B9A: FLdPr Me
  loc_C72B9D: MemLdRfVar from_stack_1.global_80
  loc_C72BA0: NewIfNullPr clsctacte
  loc_C72BA3: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72BA8: FLdPr var_224
  loc_C72BAB:  = Me.Fields
  loc_C72BB0: FLdPr var_228
  loc_C72BB3: from_stack_2 = Me.Item(from_stack_1)
  loc_C72BB8: FLdPr var_23C
  loc_C72BBB:  = Me.Value
  loc_C72BC0: FLdRfVar var_220
  loc_C72BC3: ConcatVar var_24C
  loc_C72BC7: LitVarStr var_238, ","
  loc_C72BCC: ConcatVar var_25C
  loc_C72BD0: FLdRfVar var_27C
  loc_C72BD3: FLdRfVar var_298
  loc_C72BD6: LitVarStr var_26C, "NumeCtct"
  loc_C72BDB: PopAdLdVar
  loc_C72BDC: FLdRfVar var_284
  loc_C72BDF: FLdRfVar var_280
  loc_C72BE2: FLdPr Me
  loc_C72BE5: MemLdRfVar from_stack_1.global_80
  loc_C72BE8: NewIfNullPr clsctacte
  loc_C72BEB: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72BF0: FLdPr var_280
  loc_C72BF3:  = Me.Fields
  loc_C72BF8: FLdPr var_284
  loc_C72BFB: from_stack_2 = Me.Item(from_stack_1)
  loc_C72C00: FLdPr var_298
  loc_C72C03:  = Me.Value
  loc_C72C08: FLdRfVar var_27C
  loc_C72C0B: ConcatVar var_2A8
  loc_C72C0F: LitVarStr var_294, ","
  loc_C72C14: ConcatVar var_2B8
  loc_C72C18: FLdRfVar var_2D8
  loc_C72C1B: FLdRfVar var_2E4
  loc_C72C1E: LitVarStr var_2C8, "MoviCtct"
  loc_C72C23: PopAdLdVar
  loc_C72C24: FLdRfVar var_2E0
  loc_C72C27: FLdRfVar var_2DC
  loc_C72C2A: FLdPr Me
  loc_C72C2D: MemLdRfVar from_stack_1.global_80
  loc_C72C30: NewIfNullPr clsctacte
  loc_C72C33: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72C38: FLdPr var_2DC
  loc_C72C3B:  = Me.Fields
  loc_C72C40: FLdPr var_2E0
  loc_C72C43: from_stack_2 = Me.Item(from_stack_1)
  loc_C72C48: FLdPr var_2E4
  loc_C72C4B:  = Me.Value
  loc_C72C50: FLdRfVar var_2D8
  loc_C72C53: ConcatVar var_2F4
  loc_C72C57: LitVarStr var_304, ","
  loc_C72C5C: ConcatVar var_314
  loc_C72C60: FLdRfVar var_340
  loc_C72C63: FLdRfVar var_330
  loc_C72C66: LitVarStr var_32C, "PeriBole"
  loc_C72C6B: PopAdLdVar
  loc_C72C6C: FLdRfVar var_31C
  loc_C72C6F: FLdRfVar var_318
  loc_C72C72: FLdPr Me
  loc_C72C75: MemLdRfVar from_stack_1.global_80
  loc_C72C78: NewIfNullPr clsctacte
  loc_C72C7B: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72C80: FLdPr var_318
  loc_C72C83:  = Me.Fields
  loc_C72C88: FLdPr var_31C
  loc_C72C8B: from_stack_2 = Me.Item(from_stack_1)
  loc_C72C90: FLdPr var_330
  loc_C72C93:  = Me.Value
  loc_C72C98: FLdRfVar var_340
  loc_C72C9B: ConcatVar var_350
  loc_C72C9F: LitVarStr var_360, ","
  loc_C72CA4: ConcatVar var_370
  loc_C72CA8: FLdRfVar var_39C
  loc_C72CAB: FLdRfVar var_38C
  loc_C72CAE: LitVarStr var_388, "NumeBole"
  loc_C72CB3: PopAdLdVar
  loc_C72CB4: FLdRfVar var_378
  loc_C72CB7: FLdRfVar var_374
  loc_C72CBA: FLdPr Me
  loc_C72CBD: MemLdRfVar from_stack_1.global_80
  loc_C72CC0: NewIfNullPr clsctacte
  loc_C72CC3: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72CC8: FLdPr var_374
  loc_C72CCB:  = Me.Fields
  loc_C72CD0: FLdPr var_378
  loc_C72CD3: from_stack_2 = Me.Item(from_stack_1)
  loc_C72CD8: FLdPr var_38C
  loc_C72CDB:  = Me.Value
  loc_C72CE0: FLdRfVar var_39C
  loc_C72CE3: ConcatVar var_3AC
  loc_C72CE7: LitVarStr var_3BC, ","
  loc_C72CEC: ConcatVar var_3CC
  loc_C72CF0: LitI4 1
  loc_C72CF5: LitI4 1
  loc_C72CFA: LitVarStr var_408, "'yyyy-mm-dd'"
  loc_C72CFF: FStVarCopyObj var_418
  loc_C72D02: FLdRfVar var_418
  loc_C72D05: FLdZeroAd var_3E8
  loc_C72D08: CVarAd
  loc_C72D0C: FLdRfVar var_428
  loc_C72D0F: ImpAdCallFPR4  = Format(, )
  loc_C72D14: FLdRfVar var_428
  loc_C72D17: ConcatVar var_438
  loc_C72D1B: LitVarStr var_448, ","
  loc_C72D20: ConcatVar var_458
  loc_C72D24: FLdRfVar var_484
  loc_C72D27: FLdRfVar var_474
  loc_C72D2A: LitVarStr var_470, "PeriInfo"
  loc_C72D2F: PopAdLdVar
  loc_C72D30: FLdRfVar var_460
  loc_C72D33: FLdRfVar var_45C
  loc_C72D36: FLdPr Me
  loc_C72D39: MemLdRfVar from_stack_1.global_80
  loc_C72D3C: NewIfNullPr clsctacte
  loc_C72D3F: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72D44: FLdPr var_45C
  loc_C72D47:  = Me.Fields
  loc_C72D4C: FLdPr var_460
  loc_C72D4F: from_stack_2 = Me.Item(from_stack_1)
  loc_C72D54: FLdPr var_474
  loc_C72D57:  = Me.Value
  loc_C72D5C: FLdRfVar var_484
  loc_C72D5F: ConcatVar var_494
  loc_C72D63: LitVarStr var_4A4, ",'"
  loc_C72D68: ConcatVar var_4B4
  loc_C72D6C: FLdRfVar var_4E0
  loc_C72D6F: FLdRfVar var_4D0
  loc_C72D72: LitVarStr var_4CC, "CodiConc"
  loc_C72D77: PopAdLdVar
  loc_C72D78: FLdRfVar var_4BC
  loc_C72D7B: FLdRfVar var_4B8
  loc_C72D7E: FLdPr Me
  loc_C72D81: MemLdRfVar from_stack_1.global_80
  loc_C72D84: NewIfNullPr clsctacte
  loc_C72D87: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72D8C: FLdPr var_4B8
  loc_C72D8F:  = Me.Fields
  loc_C72D94: FLdPr var_4BC
  loc_C72D97: from_stack_2 = Me.Item(from_stack_1)
  loc_C72D9C: FLdPr var_4D0
  loc_C72D9F:  = Me.Value
  loc_C72DA4: FLdRfVar var_4E0
  loc_C72DA7: ConcatVar var_4F0
  loc_C72DAB: LitVarStr var_500, "',"
  loc_C72DB0: ConcatVar var_510
  loc_C72DB4: FLdRfVar var_53C
  loc_C72DB7: FLdRfVar var_52C
  loc_C72DBA: LitVarStr var_528, "CodiFapa"
  loc_C72DBF: PopAdLdVar
  loc_C72DC0: FLdRfVar var_518
  loc_C72DC3: FLdRfVar var_514
  loc_C72DC6: FLdPr Me
  loc_C72DC9: MemLdRfVar from_stack_1.global_80
  loc_C72DCC: NewIfNullPr clsctacte
  loc_C72DCF: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72DD4: FLdPr var_514
  loc_C72DD7:  = Me.Fields
  loc_C72DDC: FLdPr var_518
  loc_C72DDF: from_stack_2 = Me.Item(from_stack_1)
  loc_C72DE4: FLdPr var_52C
  loc_C72DE7:  = Me.Value
  loc_C72DEC: FLdRfVar var_53C
  loc_C72DEF: ConcatVar var_54C
  loc_C72DF3: LitVarStr var_55C, ","
  loc_C72DF8: ConcatVar var_56C
  loc_C72DFC: FLdRfVar var_598
  loc_C72DFF: FLdRfVar var_588
  loc_C72E02: LitVarStr var_584, "CuotDefa"
  loc_C72E07: PopAdLdVar
  loc_C72E08: FLdRfVar var_574
  loc_C72E0B: FLdRfVar var_570
  loc_C72E0E: FLdPr Me
  loc_C72E11: MemLdRfVar from_stack_1.global_80
  loc_C72E14: NewIfNullPr clsctacte
  loc_C72E17: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72E1C: FLdPr var_570
  loc_C72E1F:  = Me.Fields
  loc_C72E24: FLdPr var_574
  loc_C72E27: from_stack_2 = Me.Item(from_stack_1)
  loc_C72E2C: FLdPr var_588
  loc_C72E2F:  = Me.Value
  loc_C72E34: FLdRfVar var_598
  loc_C72E37: ConcatVar var_5A8
  loc_C72E3B: LitVarStr var_5B8, ","
  loc_C72E40: ConcatVar var_5C8
  loc_C72E44: LitI4 0
  loc_C72E49: LitI4 -1
  loc_C72E4E: LitI4 1
  loc_C72E53: LitStr "."
  loc_C72E56: LitStr ","
  loc_C72E59: FLdRfVar var_5F4
  loc_C72E5C: CStrVarTmp
  loc_C72E5D: FStStrNoPop var_D0
  loc_C72E60: ImpAdCallI2 Replace(, , , , , )
  loc_C72E65: CVarStr var_604
  loc_C72E68: ConcatVar var_614
  loc_C72E6C: LitVarStr var_624, ")"
  loc_C72E71: ConcatVar var_634
  loc_C72E75: CStrVarVal var_E8
  loc_C72E79: FLdPr Me
  loc_C72E7C: MemLdRfVar from_stack_1.global_84
  loc_C72E7F: NewIfNullPr clsctacte
  loc_C72E82: Call clsctacte.EjecutarRsCls2(from_stack_1v)
  loc_C72E87: FFreeStr var_D0 = ""
  loc_C72E8E: FFreeAd var_4BC = "": var_4D0 = "": var_514 = "": var_518 = "": var_52C = "": var_570 = "": var_574 = "": var_588 = "": var_5CC = "": var_5D0 = "": var_5E4 = "": var_B8 = "": var_D4 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_1C8 = "": var_1CC = "": var_1E0 = "": var_224 = "": var_228 = "": var_23C = "": var_280 = "": var_284 = "": var_298 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_318 = "": var_31C = "": var_330 = "": var_374 = "": var_378 = "": var_38C = "": var_3D0 = "": var_3D4 = "": var_45C = "": var_460 = "": var_474 = ""
  loc_C72EE3: FFreeVar var_484 = "": var_494 = "": var_4B4 = "": var_4E0 = "": var_4F0 = "": var_510 = "": var_53C = "": var_54C = "": var_56C = "": var_598 = "": var_5A8 = "": var_5F4 = "": var_5C8 = "": var_604 = "": var_614 = "": var_634 = "": var_E4 = "": var_CC = "": var_F8 = "": var_108 = "": var_118 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1F0 = "": var_200 = "": var_220 = "": var_24C = "": var_25C = "": var_27C = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_2F4 = "": var_314 = "": var_340 = "": var_350 = "": var_370 = "": var_39C = "": var_3AC = "": var_3F8 = "": var_418 = "": var_3CC = "": var_428 = "": var_438 = ""
  loc_C72F42: FLdRfVar var_B8
  loc_C72F45: FLdPr Me
  loc_C72F48: MemLdRfVar from_stack_1.global_80
  loc_C72F4B: NewIfNullPr clsctacte
  loc_C72F4E: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72F53: FLdPr var_B8
  loc_C72F56: Me.MoveNext
  loc_C72F5B: FFree1Ad var_B8
  loc_C72F5E: Branch loc_C7293B
  loc_C72F61: FLdRfVar var_B8
  loc_C72F64: FLdPr Me
  loc_C72F67: MemLdRfVar from_stack_1.global_76
  loc_C72F6A: NewIfNullPr clsctacte
  loc_C72F6D: from_stack_1v = clsctacte.RsFrmGet()
  loc_C72F72: FLdPr var_B8
  loc_C72F75: Me.MoveNext
  loc_C72F7A: FFree1Ad var_B8
  loc_C72F7D: Branch loc_C726C8
  loc_C72F80: FLdPr Me
  loc_C72F83: MemLdRfVar from_stack_1.global_84
  loc_C72F86: NewIfNullAd
  loc_C72F89: FStAd var_638 
  loc_C72F8D: LitStr "SELECT ctactetmp.*, DetaPers FROM ctactetmp "
  loc_C72F90: LitStr " INNER JOIN relacion ON relacion.Codiofic = ctactetmp.CodiOfic AND relacion.CuenCtct = ctactetmp.CuenCtct AND relacion.TipoRela = 'Titular' "
  loc_C72F93: ConcatStr
  loc_C72F94: FStStrNoPop var_D0
  loc_C72F97: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = relacion.CucuPers "
  loc_C72F9A: ConcatStr
  loc_C72F9B: FStStrNoPop var_E8
  loc_C72F9E: ILdRf var_8C
  loc_C72FA1: ConcatStr
  loc_C72FA2: FStStrNoPop var_12C
  loc_C72FA5: FLdPr var_638
  loc_C72FA8: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C72FAD: FFreeStr var_D0 = "": var_E8 = ""
  loc_C72FB6: FLdRfVar var_164
  loc_C72FB9: FLdPr var_638
  loc_C72FBC: from_stack_1 = clsctacte.RecordCount
  loc_C72FC1: ILdRf var_164
  loc_C72FC4: LitI4 0
  loc_C72FC9: EqI4
  loc_C72FCA: BranchF loc_C72FD8
  loc_C72FCD: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C72FD0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C72FD5: Branch loc_C73476
  loc_C72FD8: LitI4 0
  loc_C72FDD: FLdRfVar var_164
  loc_C72FE0: FLdPr var_638
  loc_C72FE3: from_stack_1 = clsctacte.RecordCount
  loc_C72FE8: ILdRf var_164
  loc_C72FEB: FLdPr Me
  loc_C72FEE: MemLdRfVar from_stack_1.global_88
  loc_C72FF1: Redim
  loc_C72FFB: LitI4 0
  loc_C73000: LitI4 1
  loc_C73005: FLdPr Me
  loc_C73008: MemLdRfVar from_stack_1.global_92
  loc_C7300B: Redim
  loc_C73015: LitI4 1
  loc_C7301A: FLdPr Me
  loc_C7301D: MemLdRfVar from_stack_1.global_96
  loc_C73020: FLdPr Me
  loc_C73023: MemLdStr global_88
  loc_C73026: LitI2_Byte 1
  loc_C73028: FnUBound
  loc_C7302A: ForI4 var_640
  loc_C73030: FLdRfVar var_168
  loc_C73033: LitVarStr var_A4, "CuenCtct"
  loc_C73038: PopAdLdVar
  loc_C73039: FLdRfVar var_D4
  loc_C7303C: FLdRfVar var_B8
  loc_C7303F: FLdPr var_638
  loc_C73042: from_stack_1v = clsctacte.RsFrmGet()
  loc_C73047: FLdPr var_B8
  loc_C7304A:  = Me.Fields
  loc_C7304F: FLdPr var_D4
  loc_C73052: from_stack_2 = Me.Item(from_stack_1)
  loc_C73057: LitI2_Byte 0
  loc_C73059: LitVar_Missing var_E4
  loc_C7305C: LitI2_Byte 0
  loc_C7305E: FLdZeroAd var_168
  loc_C73061: CVarAd
  loc_C73065: PopAdLdVar
  loc_C73066: FLdPr Me
  loc_C73069: MemLdStr global_96
  loc_C7306C: FLdPr Me
  loc_C7306F: MemLdStr global_88
  loc_C73072: AryLock
  loc_C73075: Ary1LdPr
  loc_C73076: MemLdRfVar from_stack_1.global_0
  loc_C73079: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C7307E: AryUnlock
  loc_C73081: FFreeAd var_B8 = ""
  loc_C73088: FFreeVar var_CC = ""
  loc_C7308F: FLdRfVar var_168
  loc_C73092: LitVarStr var_A4, "DetaPers"
  loc_C73097: PopAdLdVar
  loc_C73098: FLdRfVar var_D4
  loc_C7309B: FLdRfVar var_B8
  loc_C7309E: FLdPr var_638
  loc_C730A1: from_stack_1v = clsctacte.RsFrmGet()
  loc_C730A6: FLdPr var_B8
  loc_C730A9:  = Me.Fields
  loc_C730AE: FLdPr var_D4
  loc_C730B1: from_stack_2 = Me.Item(from_stack_1)
  loc_C730B6: LitI2_Byte 0
  loc_C730B8: LitVar_Missing var_E4
  loc_C730BB: LitI2_Byte 0
  loc_C730BD: FLdZeroAd var_168
  loc_C730C0: CVarAd
  loc_C730C4: PopAdLdVar
  loc_C730C5: FLdPr Me
  loc_C730C8: MemLdStr global_96
  loc_C730CB: FLdPr Me
  loc_C730CE: MemLdStr global_88
  loc_C730D1: AryLock
  loc_C730D4: Ary1LdPr
  loc_C730D5: MemLdRfVar from_stack_1.global_4
  loc_C730D8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C730DD: AryUnlock
  loc_C730E0: FFreeAd var_B8 = ""
  loc_C730E7: FFreeVar var_CC = ""
  loc_C730EE: FLdRfVar var_168
  loc_C730F1: LitVarStr var_A4, "PeriCtct"
  loc_C730F6: PopAdLdVar
  loc_C730F7: FLdRfVar var_D4
  loc_C730FA: FLdRfVar var_B8
  loc_C730FD: FLdPr var_638
  loc_C73100: from_stack_1v = clsctacte.RsFrmGet()
  loc_C73105: FLdPr var_B8
  loc_C73108:  = Me.Fields
  loc_C7310D: FLdPr var_D4
  loc_C73110: from_stack_2 = Me.Item(from_stack_1)
  loc_C73115: LitI2_Byte 0
  loc_C73117: LitVar_Missing var_E4
  loc_C7311A: LitI2_Byte 0
  loc_C7311C: FLdZeroAd var_168
  loc_C7311F: CVarAd
  loc_C73123: PopAdLdVar
  loc_C73124: FLdPr Me
  loc_C73127: MemLdStr global_96
  loc_C7312A: FLdPr Me
  loc_C7312D: MemLdStr global_88
  loc_C73130: AryLock
  loc_C73133: Ary1LdPr
  loc_C73134: MemLdRfVar from_stack_1.global_8
  loc_C73137: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C7313C: AryUnlock
  loc_C7313F: FFreeAd var_B8 = ""
  loc_C73146: FFreeVar var_CC = ""
  loc_C7314D: FLdRfVar var_168
  loc_C73150: LitVarStr var_A4, "BimeCtct"
  loc_C73155: PopAdLdVar
  loc_C73156: FLdRfVar var_D4
  loc_C73159: FLdRfVar var_B8
  loc_C7315C: FLdPr var_638
  loc_C7315F: from_stack_1v = clsctacte.RsFrmGet()
  loc_C73164: FLdPr var_B8
  loc_C73167:  = Me.Fields
  loc_C7316C: FLdPr var_D4
  loc_C7316F: from_stack_2 = Me.Item(from_stack_1)
  loc_C73174: LitI2_Byte 0
  loc_C73176: LitVar_Missing var_E4
  loc_C73179: LitI2_Byte 0
  loc_C7317B: FLdZeroAd var_168
  loc_C7317E: CVarAd
  loc_C73182: PopAdLdVar
  loc_C73183: FLdPr Me
  loc_C73186: MemLdStr global_96
  loc_C73189: FLdPr Me
  loc_C7318C: MemLdStr global_88
  loc_C7318F: AryLock
  loc_C73192: Ary1LdPr
  loc_C73193: MemLdRfVar from_stack_1.global_12
  loc_C73196: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C7319B: AryUnlock
  loc_C7319E: FFreeAd var_B8 = ""
  loc_C731A5: FFreeVar var_CC = ""
  loc_C731AC: FLdRfVar var_CC
  loc_C731AF: FLdRfVar var_168
  loc_C731B2: LitVarStr var_A4, "PeriBole"
  loc_C731B7: PopAdLdVar
  loc_C731B8: FLdRfVar var_D4
  loc_C731BB: FLdRfVar var_B8
  loc_C731BE: FLdPr var_638
  loc_C731C1: from_stack_1v = clsctacte.RsFrmGet()
  loc_C731C6: FLdPr var_B8
  loc_C731C9:  = Me.Fields
  loc_C731CE: FLdPr var_D4
  loc_C731D1: from_stack_2 = Me.Item(from_stack_1)
  loc_C731D6: FLdPr var_168
  loc_C731D9:  = Me.Value
  loc_C731DE: FLdRfVar var_F8
  loc_C731E1: FLdRfVar var_174
  loc_C731E4: LitVarStr var_128, "NumeBole"
  loc_C731E9: PopAdLdVar
  loc_C731EA: FLdRfVar var_170
  loc_C731ED: FLdRfVar var_16C
  loc_C731F0: FLdPr var_638
  loc_C731F3: from_stack_1v = clsctacte.RsFrmGet()
  loc_C731F8: FLdPr var_16C
  loc_C731FB:  = Me.Fields
  loc_C73200: FLdPr var_170
  loc_C73203: from_stack_2 = Me.Item(from_stack_1)
  loc_C73208: FLdPr var_174
  loc_C7320B:  = Me.Value
  loc_C73210: LitI2_Byte 0
  loc_C73212: LitVar_Missing var_118
  loc_C73215: LitI2_Byte 0
  loc_C73217: FLdRfVar var_CC
  loc_C7321A: LitVarStr var_B4, "-"
  loc_C7321F: ConcatVar var_E4
  loc_C73223: FLdRfVar var_F8
  loc_C73226: ConcatVar var_108
  loc_C7322A: PopAdLdVar
  loc_C7322B: FLdPr Me
  loc_C7322E: MemLdStr global_96
  loc_C73231: FLdPr Me
  loc_C73234: MemLdStr global_88
  loc_C73237: AryLock
  loc_C7323A: Ary1LdPr
  loc_C7323B: MemLdRfVar from_stack_1.global_16
  loc_C7323E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C73243: AryUnlock
  loc_C73246: FFreeAd var_B8 = "": var_D4 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_C73255: FFreeVar var_CC = "": var_E4 = "": var_F8 = "": var_108 = ""
  loc_C73262: FLdRfVar var_168
  loc_C73265: LitVarStr var_A4, "FeveCtct"
  loc_C7326A: PopAdLdVar
  loc_C7326B: FLdRfVar var_D4
  loc_C7326E: FLdRfVar var_B8
  loc_C73271: FLdPr var_638
  loc_C73274: from_stack_1v = clsctacte.RsFrmGet()
  loc_C73279: FLdPr var_B8
  loc_C7327C:  = Me.Fields
  loc_C73281: FLdPr var_D4
  loc_C73284: from_stack_2 = Me.Item(from_stack_1)
  loc_C73289: LitI2_Byte 0
  loc_C7328B: LitVar_Missing var_E4
  loc_C7328E: LitI2_Byte 0
  loc_C73290: FLdZeroAd var_168
  loc_C73293: CVarAd
  loc_C73297: PopAdLdVar
  loc_C73298: FLdPr Me
  loc_C7329B: MemLdStr global_96
  loc_C7329E: FLdPr Me
  loc_C732A1: MemLdStr global_88
  loc_C732A4: AryLock
  loc_C732A7: Ary1LdPr
  loc_C732A8: MemLdRfVar from_stack_1.global_20
  loc_C732AB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C732B0: AryUnlock
  loc_C732B3: FFreeAd var_B8 = ""
  loc_C732BA: FFreeVar var_CC = ""
  loc_C732C1: FLdRfVar var_168
  loc_C732C4: LitVarStr var_A4, "CodiConc"
  loc_C732C9: PopAdLdVar
  loc_C732CA: FLdRfVar var_D4
  loc_C732CD: FLdRfVar var_B8
  loc_C732D0: FLdPr var_638
  loc_C732D3: from_stack_1v = clsctacte.RsFrmGet()
  loc_C732D8: FLdPr var_B8
  loc_C732DB:  = Me.Fields
  loc_C732E0: FLdPr var_D4
  loc_C732E3: from_stack_2 = Me.Item(from_stack_1)
  loc_C732E8: LitI2_Byte 0
  loc_C732EA: LitVar_Missing var_E4
  loc_C732ED: LitI2_Byte 0
  loc_C732EF: FLdZeroAd var_168
  loc_C732F2: CVarAd
  loc_C732F6: PopAdLdVar
  loc_C732F7: FLdPr Me
  loc_C732FA: MemLdStr global_96
  loc_C732FD: FLdPr Me
  loc_C73300: MemLdStr global_88
  loc_C73303: AryLock
  loc_C73306: Ary1LdPr
  loc_C73307: MemLdRfVar from_stack_1.global_24
  loc_C7330A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C7330F: AryUnlock
  loc_C73312: FFreeAd var_B8 = ""
  loc_C73319: FFreeVar var_CC = ""
  loc_C73320: FLdRfVar var_168
  loc_C73323: LitVarStr var_A4, "CodiFapa"
  loc_C73328: PopAdLdVar
  loc_C73329: FLdRfVar var_D4
  loc_C7332C: FLdRfVar var_B8
  loc_C7332F: FLdPr var_638
  loc_C73332: from_stack_1v = clsctacte.RsFrmGet()
  loc_C73337: FLdPr var_B8
  loc_C7333A:  = Me.Fields
  loc_C7333F: FLdPr var_D4
  loc_C73342: from_stack_2 = Me.Item(from_stack_1)
  loc_C73347: LitI2_Byte 0
  loc_C73349: LitVar_Missing var_E4
  loc_C7334C: LitI2_Byte 0
  loc_C7334E: FLdZeroAd var_168
  loc_C73351: CVarAd
  loc_C73355: PopAdLdVar
  loc_C73356: FLdPr Me
  loc_C73359: MemLdStr global_96
  loc_C7335C: FLdPr Me
  loc_C7335F: MemLdStr global_88
  loc_C73362: AryLock
  loc_C73365: Ary1LdPr
  loc_C73366: MemLdRfVar from_stack_1.global_28
  loc_C73369: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C7336E: AryUnlock
  loc_C73371: FFreeAd var_B8 = ""
  loc_C73378: FFreeVar var_CC = ""
  loc_C7337F: FLdRfVar var_168
  loc_C73382: LitVarStr var_A4, "CuotDefa"
  loc_C73387: PopAdLdVar
  loc_C73388: FLdRfVar var_D4
  loc_C7338B: FLdRfVar var_B8
  loc_C7338E: FLdPr var_638
  loc_C73391: from_stack_1v = clsctacte.RsFrmGet()
  loc_C73396: FLdPr var_B8
  loc_C73399:  = Me.Fields
  loc_C7339E: FLdPr var_D4
  loc_C733A1: from_stack_2 = Me.Item(from_stack_1)
  loc_C733A6: LitI2_Byte 0
  loc_C733A8: LitVar_Missing var_E4
  loc_C733AB: LitI2_Byte 0
  loc_C733AD: FLdZeroAd var_168
  loc_C733B0: CVarAd
  loc_C733B4: PopAdLdVar
  loc_C733B5: FLdPr Me
  loc_C733B8: MemLdStr global_96
  loc_C733BB: FLdPr Me
  loc_C733BE: MemLdStr global_88
  loc_C733C1: AryLock
  loc_C733C4: Ary1LdPr
  loc_C733C5: MemLdRfVar from_stack_1.global_32
  loc_C733C8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C733CD: AryUnlock
  loc_C733D0: FFreeAd var_B8 = ""
  loc_C733D7: FFreeVar var_CC = ""
  loc_C733DE: FLdRfVar var_168
  loc_C733E1: LitVarStr var_A4, "ImpoCtct"
  loc_C733E6: PopAdLdVar
  loc_C733E7: FLdRfVar var_D4
  loc_C733EA: FLdRfVar var_B8
  loc_C733ED: FLdPr var_638
  loc_C733F0: from_stack_1v = clsctacte.RsFrmGet()
  loc_C733F5: FLdPr var_B8
  loc_C733F8:  = Me.Fields
  loc_C733FD: FLdPr var_D4
  loc_C73400: from_stack_2 = Me.Item(from_stack_1)
  loc_C73405: LitI2_Byte 0
  loc_C73407: LitI4 1
  loc_C7340C: FLdPr Me
  loc_C7340F: MemLdStr global_92
  loc_C73412: AryLock
  loc_C73415: Ary1LdPr
  loc_C73416: MemLdRfVar from_stack_1.global_36
  loc_C73419: CVarRef
  loc_C7341E: LitI2_Byte &HFF
  loc_C73420: FLdZeroAd var_168
  loc_C73423: CVarAd
  loc_C73427: PopAdLdVar
  loc_C73428: FLdPr Me
  loc_C7342B: MemLdStr global_96
  loc_C7342E: FLdPr Me
  loc_C73431: MemLdStr global_88
  loc_C73434: AryLock
  loc_C73437: Ary1LdPr
  loc_C73438: MemLdRfVar from_stack_1.global_36
  loc_C7343B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C73440: AryUnlock
  loc_C73443: AryUnlock
  loc_C73446: FFreeAd var_B8 = ""
  loc_C7344D: FFree1Var var_CC = ""
  loc_C73450: LitI2_Byte 1
  loc_C73452: PopTmpLdAd2 var_BA
  loc_C73455: FLdPr var_638
  loc_C73458: Call clsctacte.Move(from_stack_1v)
  loc_C7345D: FLdPr Me
  loc_C73460: MemLdRfVar from_stack_1.global_96
  loc_C73463: NextI4 var_640, loc_C73030
  loc_C73468: LitNothing
  loc_C7346A: FStAd var_638 
  loc_C7346E: LitI2_Byte &HFF
  loc_C73470: FLdPr Me
  loc_C73473: MemStI2 bGenerado
  loc_C73476: LitI4 0
  loc_C7347B: CI2I4
  loc_C7347C: FLdPr Me
  loc_C7347F: Me.MousePointer = from_stack_1
  loc_C73484: LitVarStr var_A4, vbNullString
  loc_C73489: PopAdLdVar
  loc_C7348A: FLdPr Me
  loc_C7348D: VCallAd Control_ID_statusBar
  loc_C73490: FStAdFunc var_B8
  loc_C73493: FLdPr var_B8
  loc_C73496: LateIdSt
  loc_C7349B: FFree1Ad var_B8
  loc_C7349E: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B3EAD8
  'Data Table: 476B9C
  loc_B3E7AC: FLdRfVar var_88
  loc_B3E7AF: LitI2_Byte 0
  loc_B3E7B1: LitI2_Byte &HFF
  loc_B3E7B3: ImpAdLdI4 MemVar_D93C84
  loc_B3E7B6: FLdPr Me
  loc_B3E7B9: MemLdRfVar from_stack_1.global_56
  loc_B3E7BC: NewIfNullPr IFileSystem3
  loc_B3E7BF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B3E7C4: ILdRf var_88
  loc_B3E7C7: FLdPr Me
  loc_B3E7CA: MemStVarAd
  loc_B3E7CE: FFree1Ad var_88
  loc_B3E7D1: LitI2_Byte &HFF
  loc_B3E7D3: ImpAdStI2 MemVar_D93C8A
  loc_B3E7D6: Call Proc_201_15_BC34C0()
  loc_B3E7DB: LitI4 1
  loc_B3E7E0: FLdPr Me
  loc_B3E7E3: MemLdRfVar from_stack_1.global_96
  loc_B3E7E6: FLdPr Me
  loc_B3E7E9: MemLdStr global_88
  loc_B3E7EC: LitI2_Byte 1
  loc_B3E7EE: FnUBound
  loc_B3E7F0: ForI4 var_90
  loc_B3E7F6: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3E7FB: PopAdLdVar
  loc_B3E7FC: FLdPr Me
  loc_B3E7FF: MemLdRfVar from_stack_1.global_60
  loc_B3E802: LdPrVar
  loc_B3E804: LateMemCall
  loc_B3E80A: FLdPr Me
  loc_B3E80D: MemLdStr global_96
  loc_B3E810: FLdPr Me
  loc_B3E813: MemLdStr global_88
  loc_B3E816: AryLock
  loc_B3E819: Ary1LdRf
  loc_B3E81A: FStR4 var_B8
  loc_B3E81D: LitStr vbNullString
  loc_B3E820: LitI2_Byte 0
  loc_B3E822: LitI2_Byte 0
  loc_B3E824: LitI2_Byte 0
  loc_B3E826: LitStr "left"
  loc_B3E829: FMemLdR4 var_B8(0)
  loc_B3E82E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E833: CVarStr var_C8
  loc_B3E836: PopAdLdVar
  loc_B3E837: FLdPr Me
  loc_B3E83A: MemLdRfVar from_stack_1.global_60
  loc_B3E83D: LdPrVar
  loc_B3E83F: LateMemCall
  loc_B3E845: FFree1Var var_C8 = ""
  loc_B3E848: LitStr vbNullString
  loc_B3E84B: LitI2_Byte 0
  loc_B3E84D: LitI2_Byte 0
  loc_B3E84F: LitI2_Byte 0
  loc_B3E851: LitStr "left"
  loc_B3E854: FMemLdR4 var_B8(4)
  loc_B3E859: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E85E: CVarStr var_C8
  loc_B3E861: PopAdLdVar
  loc_B3E862: FLdPr Me
  loc_B3E865: MemLdRfVar from_stack_1.global_60
  loc_B3E868: LdPrVar
  loc_B3E86A: LateMemCall
  loc_B3E870: FFree1Var var_C8 = ""
  loc_B3E873: LitStr vbNullString
  loc_B3E876: LitI2_Byte 0
  loc_B3E878: LitI2_Byte 0
  loc_B3E87A: LitI2_Byte 0
  loc_B3E87C: LitStr "left"
  loc_B3E87F: FMemLdR4 var_B8(8)
  loc_B3E884: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E889: CVarStr var_C8
  loc_B3E88C: PopAdLdVar
  loc_B3E88D: FLdPr Me
  loc_B3E890: MemLdRfVar from_stack_1.global_60
  loc_B3E893: LdPrVar
  loc_B3E895: LateMemCall
  loc_B3E89B: FFree1Var var_C8 = ""
  loc_B3E89E: LitStr vbNullString
  loc_B3E8A1: LitI2_Byte 0
  loc_B3E8A3: LitI2_Byte 0
  loc_B3E8A5: LitI2_Byte 0
  loc_B3E8A7: LitStr "left"
  loc_B3E8AA: FMemLdR4 var_B8(12)
  loc_B3E8AF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E8B4: CVarStr var_C8
  loc_B3E8B7: PopAdLdVar
  loc_B3E8B8: FLdPr Me
  loc_B3E8BB: MemLdRfVar from_stack_1.global_60
  loc_B3E8BE: LdPrVar
  loc_B3E8C0: LateMemCall
  loc_B3E8C6: FFree1Var var_C8 = ""
  loc_B3E8C9: LitStr vbNullString
  loc_B3E8CC: LitI2_Byte 0
  loc_B3E8CE: LitI2_Byte 0
  loc_B3E8D0: LitI2_Byte 0
  loc_B3E8D2: LitStr "left"
  loc_B3E8D5: FMemLdR4 var_B8(16)
  loc_B3E8DA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E8DF: CVarStr var_C8
  loc_B3E8E2: PopAdLdVar
  loc_B3E8E3: FLdPr Me
  loc_B3E8E6: MemLdRfVar from_stack_1.global_60
  loc_B3E8E9: LdPrVar
  loc_B3E8EB: LateMemCall
  loc_B3E8F1: FFree1Var var_C8 = ""
  loc_B3E8F4: LitStr vbNullString
  loc_B3E8F7: LitI2_Byte 0
  loc_B3E8F9: LitI2_Byte 0
  loc_B3E8FB: LitI2_Byte 0
  loc_B3E8FD: LitStr "left"
  loc_B3E900: FMemLdR4 var_B8(20)
  loc_B3E905: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E90A: CVarStr var_C8
  loc_B3E90D: PopAdLdVar
  loc_B3E90E: FLdPr Me
  loc_B3E911: MemLdRfVar from_stack_1.global_60
  loc_B3E914: LdPrVar
  loc_B3E916: LateMemCall
  loc_B3E91C: FFree1Var var_C8 = ""
  loc_B3E91F: LitStr vbNullString
  loc_B3E922: LitI2_Byte 0
  loc_B3E924: LitI2_Byte 0
  loc_B3E926: LitI2_Byte 0
  loc_B3E928: LitStr "left"
  loc_B3E92B: FMemLdR4 var_B8(24)
  loc_B3E930: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E935: CVarStr var_C8
  loc_B3E938: PopAdLdVar
  loc_B3E939: FLdPr Me
  loc_B3E93C: MemLdRfVar from_stack_1.global_60
  loc_B3E93F: LdPrVar
  loc_B3E941: LateMemCall
  loc_B3E947: FFree1Var var_C8 = ""
  loc_B3E94A: LitStr vbNullString
  loc_B3E94D: LitI2_Byte 0
  loc_B3E94F: LitI2_Byte 0
  loc_B3E951: LitI2_Byte 0
  loc_B3E953: LitStr "left"
  loc_B3E956: FMemLdR4 var_B8(28)
  loc_B3E95B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E960: CVarStr var_C8
  loc_B3E963: PopAdLdVar
  loc_B3E964: FLdPr Me
  loc_B3E967: MemLdRfVar from_stack_1.global_60
  loc_B3E96A: LdPrVar
  loc_B3E96C: LateMemCall
  loc_B3E972: FFree1Var var_C8 = ""
  loc_B3E975: LitStr vbNullString
  loc_B3E978: LitI2_Byte 0
  loc_B3E97A: LitI2_Byte 0
  loc_B3E97C: LitI2_Byte 0
  loc_B3E97E: LitStr "left"
  loc_B3E981: FMemLdR4 var_B8(32)
  loc_B3E986: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E98B: CVarStr var_C8
  loc_B3E98E: PopAdLdVar
  loc_B3E98F: FLdPr Me
  loc_B3E992: MemLdRfVar from_stack_1.global_60
  loc_B3E995: LdPrVar
  loc_B3E997: LateMemCall
  loc_B3E99D: FFree1Var var_C8 = ""
  loc_B3E9A0: LitStr vbNullString
  loc_B3E9A3: LitI2_Byte 0
  loc_B3E9A5: LitI2_Byte 0
  loc_B3E9A7: LitI2_Byte 0
  loc_B3E9A9: LitStr "right"
  loc_B3E9AC: FMemLdR4 var_B8(36)
  loc_B3E9B1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E9B6: CVarStr var_C8
  loc_B3E9B9: PopAdLdVar
  loc_B3E9BA: FLdPr Me
  loc_B3E9BD: MemLdRfVar from_stack_1.global_60
  loc_B3E9C0: LdPrVar
  loc_B3E9C2: LateMemCall
  loc_B3E9C8: FFree1Var var_C8 = ""
  loc_B3E9CB: LitI4 0
  loc_B3E9D0: FStR4 var_B8
  loc_B3E9D3: AryUnlock
  loc_B3E9D6: LitVarStr var_A0, "     </tr>"
  loc_B3E9DB: PopAdLdVar
  loc_B3E9DC: FLdPr Me
  loc_B3E9DF: MemLdRfVar from_stack_1.global_60
  loc_B3E9E2: LdPrVar
  loc_B3E9E4: LateMemCall
  loc_B3E9EA: FLdPr Me
  loc_B3E9ED: MemLdRfVar from_stack_1.global_96
  loc_B3E9F0: NextI4 var_90, loc_B3E7F6
  loc_B3E9F5: LitVarStr var_A0, "  <tr class=""Totales"" align=""right"">"
  loc_B3E9FA: PopAdLdVar
  loc_B3E9FB: FLdPr Me
  loc_B3E9FE: MemLdRfVar from_stack_1.global_60
  loc_B3EA01: LdPrVar
  loc_B3EA03: LateMemCall
  loc_B3EA09: LitStr "   <td colspan=""9"" align=""center"">Cantidad de Registros: "
  loc_B3EA0C: LitI4 -1
  loc_B3EA11: LitI4 0
  loc_B3EA16: LitI4 -1
  loc_B3EA1B: LitI4 0
  loc_B3EA20: FLdPr Me
  loc_B3EA23: MemLdStr global_88
  loc_B3EA26: LitI2_Byte 1
  loc_B3EA28: FnUBound
  loc_B3EA2A: CVarI4
  loc_B3EA2E: ImpAdCallI2 FormatNumber(, , , , )
  loc_B3EA33: FStStrNoPop var_CC
  loc_B3EA36: ConcatStr
  loc_B3EA37: FStStrNoPop var_D0
  loc_B3EA3A: LitStr "</td>"
  loc_B3EA3D: ConcatStr
  loc_B3EA3E: CVarStr var_E0
  loc_B3EA41: PopAdLdVar
  loc_B3EA42: FLdPr Me
  loc_B3EA45: MemLdRfVar from_stack_1.global_60
  loc_B3EA48: LdPrVar
  loc_B3EA4A: LateMemCall
  loc_B3EA50: FFreeStr var_CC = ""
  loc_B3EA57: FFreeVar var_C8 = ""
  loc_B3EA5E: LitI4 1
  loc_B3EA63: FLdPr Me
  loc_B3EA66: MemLdStr global_92
  loc_B3EA69: AryLock
  loc_B3EA6C: Ary1LdRf
  loc_B3EA6D: FStR4 var_E8
  loc_B3EA70: LitStr vbNullString
  loc_B3EA73: LitI2_Byte 0
  loc_B3EA75: LitI2_Byte 0
  loc_B3EA77: LitI2_Byte 0
  loc_B3EA79: LitStr "right"
  loc_B3EA7C: FMemLdR4 var_E8(36)
  loc_B3EA81: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3EA86: CVarStr var_C8
  loc_B3EA89: PopAdLdVar
  loc_B3EA8A: FLdPr Me
  loc_B3EA8D: MemLdRfVar from_stack_1.global_60
  loc_B3EA90: LdPrVar
  loc_B3EA92: LateMemCall
  loc_B3EA98: FFree1Var var_C8 = ""
  loc_B3EA9B: LitI4 0
  loc_B3EAA0: FStR4 var_E8
  loc_B3EAA3: AryUnlock
  loc_B3EAA6: LitVarStr var_A0, "     </tr>"
  loc_B3EAAB: PopAdLdVar
  loc_B3EAAC: FLdPr Me
  loc_B3EAAF: MemLdRfVar from_stack_1.global_60
  loc_B3EAB2: LdPrVar
  loc_B3EAB4: LateMemCall
  loc_B3EABA: Call Proc_201_16_9FB228()
  loc_B3EABF: FLdPr Me
  loc_B3EAC2: MemLdRfVar from_stack_1.global_60
  loc_B3EAC5: LdPrVar
  loc_B3EAC7: LateMemCall
  loc_B3EACD: LitStr vbNullString
  loc_B3EAD0: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B3EAD5: ExitProcHresult
End Sub

Private Function Proc_201_15_BC34C0() 'BC34C0
  'Data Table: 476B9C
  loc_BC2E00: LitVarStr var_94, "<html>"
  loc_BC2E05: PopAdLdVar
  loc_BC2E06: FLdPr Me
  loc_BC2E09: MemLdRfVar from_stack_1.global_60
  loc_BC2E0C: LdPrVar
  loc_BC2E0E: LateMemCall
  loc_BC2E14: LitVarStr var_94, "<head>"
  loc_BC2E19: PopAdLdVar
  loc_BC2E1A: FLdPr Me
  loc_BC2E1D: MemLdRfVar from_stack_1.global_60
  loc_BC2E20: LdPrVar
  loc_BC2E22: LateMemCall
  loc_BC2E28: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BC2E2D: PopAdLdVar
  loc_BC2E2E: FLdPr Me
  loc_BC2E31: MemLdRfVar from_stack_1.global_60
  loc_BC2E34: LdPrVar
  loc_BC2E36: LateMemCall
  loc_BC2E3C: LitStr "<title>"
  loc_BC2E3F: FLdRfVar var_A8
  loc_BC2E42: FLdPr Me
  loc_BC2E45:  = Me.Caption
  loc_BC2E4A: ILdRf var_A8
  loc_BC2E4D: ConcatStr
  loc_BC2E4E: FStStrNoPop var_AC
  loc_BC2E51: LitStr "</title>"
  loc_BC2E54: ConcatStr
  loc_BC2E55: CVarStr var_BC
  loc_BC2E58: PopAdLdVar
  loc_BC2E59: FLdPr Me
  loc_BC2E5C: MemLdRfVar from_stack_1.global_60
  loc_BC2E5F: LdPrVar
  loc_BC2E61: LateMemCall
  loc_BC2E67: FFreeStr var_A8 = ""
  loc_BC2E6E: FFree1Var var_BC = ""
  loc_BC2E71: LitVarStr var_94, "<style type=""text/css"">"
  loc_BC2E76: PopAdLdVar
  loc_BC2E77: FLdPr Me
  loc_BC2E7A: MemLdRfVar from_stack_1.global_60
  loc_BC2E7D: LdPrVar
  loc_BC2E7F: LateMemCall
  loc_BC2E85: LitVarStr var_94, ".Titulo1 {"
  loc_BC2E8A: PopAdLdVar
  loc_BC2E8B: FLdPr Me
  loc_BC2E8E: MemLdRfVar from_stack_1.global_60
  loc_BC2E91: LdPrVar
  loc_BC2E93: LateMemCall
  loc_BC2E99: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC2E9E: PopAdLdVar
  loc_BC2E9F: FLdPr Me
  loc_BC2EA2: MemLdRfVar from_stack_1.global_60
  loc_BC2EA5: LdPrVar
  loc_BC2EA7: LateMemCall
  loc_BC2EAD: LitVarStr var_94, " font-size: 18px;"
  loc_BC2EB2: PopAdLdVar
  loc_BC2EB3: FLdPr Me
  loc_BC2EB6: MemLdRfVar from_stack_1.global_60
  loc_BC2EB9: LdPrVar
  loc_BC2EBB: LateMemCall
  loc_BC2EC1: LitVarStr var_94, " font-weight: bold;"
  loc_BC2EC6: PopAdLdVar
  loc_BC2EC7: FLdPr Me
  loc_BC2ECA: MemLdRfVar from_stack_1.global_60
  loc_BC2ECD: LdPrVar
  loc_BC2ECF: LateMemCall
  loc_BC2ED5: LitVarStr var_94, "}"
  loc_BC2EDA: PopAdLdVar
  loc_BC2EDB: FLdPr Me
  loc_BC2EDE: MemLdRfVar from_stack_1.global_60
  loc_BC2EE1: LdPrVar
  loc_BC2EE3: LateMemCall
  loc_BC2EE9: LitVarStr var_94, ".Titulo2 {"
  loc_BC2EEE: PopAdLdVar
  loc_BC2EEF: FLdPr Me
  loc_BC2EF2: MemLdRfVar from_stack_1.global_60
  loc_BC2EF5: LdPrVar
  loc_BC2EF7: LateMemCall
  loc_BC2EFD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC2F02: PopAdLdVar
  loc_BC2F03: FLdPr Me
  loc_BC2F06: MemLdRfVar from_stack_1.global_60
  loc_BC2F09: LdPrVar
  loc_BC2F0B: LateMemCall
  loc_BC2F11: LitVarStr var_94, " font-size: 14px;"
  loc_BC2F16: PopAdLdVar
  loc_BC2F17: FLdPr Me
  loc_BC2F1A: MemLdRfVar from_stack_1.global_60
  loc_BC2F1D: LdPrVar
  loc_BC2F1F: LateMemCall
  loc_BC2F25: LitVarStr var_94, " font-weight: bold;"
  loc_BC2F2A: PopAdLdVar
  loc_BC2F2B: FLdPr Me
  loc_BC2F2E: MemLdRfVar from_stack_1.global_60
  loc_BC2F31: LdPrVar
  loc_BC2F33: LateMemCall
  loc_BC2F39: LitVarStr var_94, "}"
  loc_BC2F3E: PopAdLdVar
  loc_BC2F3F: FLdPr Me
  loc_BC2F42: MemLdRfVar from_stack_1.global_60
  loc_BC2F45: LdPrVar
  loc_BC2F47: LateMemCall
  loc_BC2F4D: LitVarStr var_94, ".Normal {"
  loc_BC2F52: PopAdLdVar
  loc_BC2F53: FLdPr Me
  loc_BC2F56: MemLdRfVar from_stack_1.global_60
  loc_BC2F59: LdPrVar
  loc_BC2F5B: LateMemCall
  loc_BC2F61: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC2F66: PopAdLdVar
  loc_BC2F67: FLdPr Me
  loc_BC2F6A: MemLdRfVar from_stack_1.global_60
  loc_BC2F6D: LdPrVar
  loc_BC2F6F: LateMemCall
  loc_BC2F75: LitVarStr var_94, " font-size: 12px;"
  loc_BC2F7A: PopAdLdVar
  loc_BC2F7B: FLdPr Me
  loc_BC2F7E: MemLdRfVar from_stack_1.global_60
  loc_BC2F81: LdPrVar
  loc_BC2F83: LateMemCall
  loc_BC2F89: LitVarStr var_94, " font-style: normal;"
  loc_BC2F8E: PopAdLdVar
  loc_BC2F8F: FLdPr Me
  loc_BC2F92: MemLdRfVar from_stack_1.global_60
  loc_BC2F95: LdPrVar
  loc_BC2F97: LateMemCall
  loc_BC2F9D: LitVarStr var_94, " font-weight: normal;"
  loc_BC2FA2: PopAdLdVar
  loc_BC2FA3: FLdPr Me
  loc_BC2FA6: MemLdRfVar from_stack_1.global_60
  loc_BC2FA9: LdPrVar
  loc_BC2FAB: LateMemCall
  loc_BC2FB1: LitVarStr var_94, " font-variant: normal;"
  loc_BC2FB6: PopAdLdVar
  loc_BC2FB7: FLdPr Me
  loc_BC2FBA: MemLdRfVar from_stack_1.global_60
  loc_BC2FBD: LdPrVar
  loc_BC2FBF: LateMemCall
  loc_BC2FC5: LitVarStr var_94, "}"
  loc_BC2FCA: PopAdLdVar
  loc_BC2FCB: FLdPr Me
  loc_BC2FCE: MemLdRfVar from_stack_1.global_60
  loc_BC2FD1: LdPrVar
  loc_BC2FD3: LateMemCall
  loc_BC2FD9: LitVarStr var_94, ".Encabezado {"
  loc_BC2FDE: PopAdLdVar
  loc_BC2FDF: FLdPr Me
  loc_BC2FE2: MemLdRfVar from_stack_1.global_60
  loc_BC2FE5: LdPrVar
  loc_BC2FE7: LateMemCall
  loc_BC2FED: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BC2FF2: PopAdLdVar
  loc_BC2FF3: FLdPr Me
  loc_BC2FF6: MemLdRfVar from_stack_1.global_60
  loc_BC2FF9: LdPrVar
  loc_BC2FFB: LateMemCall
  loc_BC3001: LitVarStr var_94, " font-size: 11px;"
  loc_BC3006: PopAdLdVar
  loc_BC3007: FLdPr Me
  loc_BC300A: MemLdRfVar from_stack_1.global_60
  loc_BC300D: LdPrVar
  loc_BC300F: LateMemCall
  loc_BC3015: LitVarStr var_94, " font-weight: bold;"
  loc_BC301A: PopAdLdVar
  loc_BC301B: FLdPr Me
  loc_BC301E: MemLdRfVar from_stack_1.global_60
  loc_BC3021: LdPrVar
  loc_BC3023: LateMemCall
  loc_BC3029: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BC302E: PopAdLdVar
  loc_BC302F: FLdPr Me
  loc_BC3032: MemLdRfVar from_stack_1.global_60
  loc_BC3035: LdPrVar
  loc_BC3037: LateMemCall
  loc_BC303D: LitVarStr var_94, "}"
  loc_BC3042: PopAdLdVar
  loc_BC3043: FLdPr Me
  loc_BC3046: MemLdRfVar from_stack_1.global_60
  loc_BC3049: LdPrVar
  loc_BC304B: LateMemCall
  loc_BC3051: LitVarStr var_94, ".LineaDato {"
  loc_BC3056: PopAdLdVar
  loc_BC3057: FLdPr Me
  loc_BC305A: MemLdRfVar from_stack_1.global_60
  loc_BC305D: LdPrVar
  loc_BC305F: LateMemCall
  loc_BC3065: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC306A: PopAdLdVar
  loc_BC306B: FLdPr Me
  loc_BC306E: MemLdRfVar from_stack_1.global_60
  loc_BC3071: LdPrVar
  loc_BC3073: LateMemCall
  loc_BC3079: LitVarStr var_94, " font-size: 10px;"
  loc_BC307E: PopAdLdVar
  loc_BC307F: FLdPr Me
  loc_BC3082: MemLdRfVar from_stack_1.global_60
  loc_BC3085: LdPrVar
  loc_BC3087: LateMemCall
  loc_BC308D: LitVarStr var_94, "}"
  loc_BC3092: PopAdLdVar
  loc_BC3093: FLdPr Me
  loc_BC3096: MemLdRfVar from_stack_1.global_60
  loc_BC3099: LdPrVar
  loc_BC309B: LateMemCall
  loc_BC30A1: LitVarStr var_94, ".Totales {"
  loc_BC30A6: PopAdLdVar
  loc_BC30A7: FLdPr Me
  loc_BC30AA: MemLdRfVar from_stack_1.global_60
  loc_BC30AD: LdPrVar
  loc_BC30AF: LateMemCall
  loc_BC30B5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC30BA: PopAdLdVar
  loc_BC30BB: FLdPr Me
  loc_BC30BE: MemLdRfVar from_stack_1.global_60
  loc_BC30C1: LdPrVar
  loc_BC30C3: LateMemCall
  loc_BC30C9: LitVarStr var_94, " font-size: 12px;"
  loc_BC30CE: PopAdLdVar
  loc_BC30CF: FLdPr Me
  loc_BC30D2: MemLdRfVar from_stack_1.global_60
  loc_BC30D5: LdPrVar
  loc_BC30D7: LateMemCall
  loc_BC30DD: LitVarStr var_94, " font-weight: bold;"
  loc_BC30E2: PopAdLdVar
  loc_BC30E3: FLdPr Me
  loc_BC30E6: MemLdRfVar from_stack_1.global_60
  loc_BC30E9: LdPrVar
  loc_BC30EB: LateMemCall
  loc_BC30F1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BC30F6: PopAdLdVar
  loc_BC30F7: FLdPr Me
  loc_BC30FA: MemLdRfVar from_stack_1.global_60
  loc_BC30FD: LdPrVar
  loc_BC30FF: LateMemCall
  loc_BC3105: LitVarStr var_94, "}"
  loc_BC310A: PopAdLdVar
  loc_BC310B: FLdPr Me
  loc_BC310E: MemLdRfVar from_stack_1.global_60
  loc_BC3111: LdPrVar
  loc_BC3113: LateMemCall
  loc_BC3119: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BC311E: PopAdLdVar
  loc_BC311F: FLdPr Me
  loc_BC3122: MemLdRfVar from_stack_1.global_60
  loc_BC3125: LdPrVar
  loc_BC3127: LateMemCall
  loc_BC312D: LitVarStr var_94, "</style>"
  loc_BC3132: PopAdLdVar
  loc_BC3133: FLdPr Me
  loc_BC3136: MemLdRfVar from_stack_1.global_60
  loc_BC3139: LdPrVar
  loc_BC313B: LateMemCall
  loc_BC3141: LitI4 0
  loc_BC3146: FStStrCopy var_AC
  loc_BC3149: FLdRfVar var_AC
  loc_BC314C: LitI4 0
  loc_BC3151: FStStrCopy var_A8
  loc_BC3154: FLdRfVar var_A8
  loc_BC3157: LitI2_Byte 0
  loc_BC3159: PopTmpLdAd2 var_BE
  loc_BC315C: FLdPr Me
  loc_BC315F: MemLdRfVar from_stack_1.global_60
  loc_BC3162: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BC3167: FFreeStr var_A8 = ""
  loc_BC316E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BC3173: PopAdLdVar
  loc_BC3174: FLdPr Me
  loc_BC3177: MemLdRfVar from_stack_1.global_60
  loc_BC317A: LdPrVar
  loc_BC317C: LateMemCall
  loc_BC3182: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BC3187: PopAdLdVar
  loc_BC3188: FLdPr Me
  loc_BC318B: MemLdRfVar from_stack_1.global_60
  loc_BC318E: LdPrVar
  loc_BC3190: LateMemCall
  loc_BC3196: LitStr "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BC3199: LitI2_Byte &H5F
  loc_BC319B: CStrUI1
  loc_BC319D: FStStrNoPop var_A8
  loc_BC31A0: ConcatStr
  loc_BC31A1: FStStrNoPop var_AC
  loc_BC31A4: LitStr """ height="""
  loc_BC31A7: ConcatStr
  loc_BC31A8: FStStrNoPop var_C4
  loc_BC31AB: LitI2_Byte &H3C
  loc_BC31AD: CStrUI1
  loc_BC31AF: FStStrNoPop var_C8
  loc_BC31B2: ConcatStr
  loc_BC31B3: FStStrNoPop var_CC
  loc_BC31B6: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BC31B9: ConcatStr
  loc_BC31BA: FStStrNoPop var_D0
  loc_BC31BD: LitStr "Municipalidad de Guaymallén"
  loc_BC31C0: ConcatStr
  loc_BC31C1: FStStrNoPop var_D4
  loc_BC31C4: LitStr "</p>"
  loc_BC31C7: ConcatStr
  loc_BC31C8: CVarStr var_BC
  loc_BC31CB: PopAdLdVar
  loc_BC31CC: FLdPr Me
  loc_BC31CF: MemLdRfVar from_stack_1.global_60
  loc_BC31D2: LdPrVar
  loc_BC31D4: LateMemCall
  loc_BC31DA: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BC31EB: FFree1Var var_BC = ""
  loc_BC31EE: LitStr "    <p>"
  loc_BC31F1: FLdRfVar var_A8
  loc_BC31F4: FLdPr Me
  loc_BC31F7:  = Me.Caption
  loc_BC31FC: ILdRf var_A8
  loc_BC31FF: ConcatStr
  loc_BC3200: FStStrNoPop var_AC
  loc_BC3203: LitStr "</p></th>"
  loc_BC3206: ConcatStr
  loc_BC3207: CVarStr var_BC
  loc_BC320A: PopAdLdVar
  loc_BC320B: FLdPr Me
  loc_BC320E: MemLdRfVar from_stack_1.global_60
  loc_BC3211: LdPrVar
  loc_BC3213: LateMemCall
  loc_BC3219: FFreeStr var_A8 = ""
  loc_BC3220: FFree1Var var_BC = ""
  loc_BC3223: LitVarStr var_94, "  </tr>"
  loc_BC3228: PopAdLdVar
  loc_BC3229: FLdPr Me
  loc_BC322C: MemLdRfVar from_stack_1.global_60
  loc_BC322F: LdPrVar
  loc_BC3231: LateMemCall
  loc_BC3237: LitVarStr var_94, "  <tr>"
  loc_BC323C: PopAdLdVar
  loc_BC323D: FLdPr Me
  loc_BC3240: MemLdRfVar from_stack_1.global_60
  loc_BC3243: LdPrVar
  loc_BC3245: LateMemCall
  loc_BC324B: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><hr></th>"
  loc_BC3250: PopAdLdVar
  loc_BC3251: FLdPr Me
  loc_BC3254: MemLdRfVar from_stack_1.global_60
  loc_BC3257: LdPrVar
  loc_BC3259: LateMemCall
  loc_BC325F: LitVarStr var_94, "  </tr>"
  loc_BC3264: PopAdLdVar
  loc_BC3265: FLdPr Me
  loc_BC3268: MemLdRfVar from_stack_1.global_60
  loc_BC326B: LdPrVar
  loc_BC326D: LateMemCall
  loc_BC3273: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BC3278: PopAdLdVar
  loc_BC3279: FLdPr Me
  loc_BC327C: MemLdRfVar from_stack_1.global_60
  loc_BC327F: LdPrVar
  loc_BC3281: LateMemCall
  loc_BC3287: LitStr "    <td align=""left""><strong>Oficina: </strong>"
  loc_BC328A: FLdRfVar var_A8
  loc_BC328D: FLdPr Me
  loc_BC3290: VCallAd Control_ID_CodiOficCbo
  loc_BC3293: FStAdFunc var_D8
  loc_BC3296: FLdPr var_D8
  loc_BC3299:  = Me.Text
  loc_BC329E: ILdRf var_A8
  loc_BC32A1: ConcatStr
  loc_BC32A2: FStStrNoPop var_AC
  loc_BC32A5: LitStr "</td>"
  loc_BC32A8: ConcatStr
  loc_BC32A9: CVarStr var_BC
  loc_BC32AC: PopAdLdVar
  loc_BC32AD: FLdPr Me
  loc_BC32B0: MemLdRfVar from_stack_1.global_60
  loc_BC32B3: LdPrVar
  loc_BC32B5: LateMemCall
  loc_BC32BB: FFreeStr var_A8 = ""
  loc_BC32C2: FFree1Ad var_D8
  loc_BC32C5: FFree1Var var_BC = ""
  loc_BC32C8: FLdPr Me
  loc_BC32CB: VCallAd Control_ID_PeriInfoMsk
  loc_BC32CE: FStAdFunc var_D8
  loc_BC32D1: FLdPr var_D8
  loc_BC32D4: LateIdLdVar var_BC DispID_22 0
  loc_BC32DB: CStrVarTmp
  loc_BC32DC: FStStrNoPop var_A8
  loc_BC32DF: CR8Str
  loc_BC32E1: LitI2_Byte 0
  loc_BC32E3: CR8I2
  loc_BC32E4: NeR8
  loc_BC32E5: FFree1Str var_A8
  loc_BC32E8: FFree1Ad var_D8
  loc_BC32EB: FFree1Var var_BC = ""
  loc_BC32EE: BranchF loc_BC3336
  loc_BC32F1: LitStr "    <td align=""left""><strong>Periodo: </strong>"
  loc_BC32F4: FLdPr Me
  loc_BC32F7: VCallAd Control_ID_PeriInfoMsk
  loc_BC32FA: FStAdFunc var_D8
  loc_BC32FD: FLdPr var_D8
  loc_BC3300: LateIdLdVar var_BC DispID_22 0
  loc_BC3307: CStrVarTmp
  loc_BC3308: FStStrNoPop var_A8
  loc_BC330B: ConcatStr
  loc_BC330C: FStStrNoPop var_AC
  loc_BC330F: LitStr "</td>"
  loc_BC3312: ConcatStr
  loc_BC3313: CVarStr var_E8
  loc_BC3316: PopAdLdVar
  loc_BC3317: FLdPr Me
  loc_BC331A: MemLdRfVar from_stack_1.global_60
  loc_BC331D: LdPrVar
  loc_BC331F: LateMemCall
  loc_BC3325: FFreeStr var_A8 = ""
  loc_BC332C: FFree1Ad var_D8
  loc_BC332F: FFreeVar var_BC = ""
  loc_BC3336: FLdRfVar var_BE
  loc_BC3339: FLdPr Me
  loc_BC333C: VCallAd Control_ID_FacilidadChk
  loc_BC333F: FStAdFunc var_D8
  loc_BC3342: FLdPr var_D8
  loc_BC3345:  = Me.Value
  loc_BC334A: FLdI2 var_BE
  loc_BC334D: LitI2_Byte 1
  loc_BC334F: EqI2
  loc_BC3350: FFree1Ad var_D8
  loc_BC3353: BranchF loc_BC336A
  loc_BC3356: LitVarStr var_94, "    <td align=""left""><strong>Solo pagos duplicados de cuotas de facilidad </strong></td>"
  loc_BC335B: PopAdLdVar
  loc_BC335C: FLdPr Me
  loc_BC335F: MemLdRfVar from_stack_1.global_60
  loc_BC3362: LdPrVar
  loc_BC3364: LateMemCall
  loc_BC336A: LitVarStr var_94, "  </tr>"
  loc_BC336F: PopAdLdVar
  loc_BC3370: FLdPr Me
  loc_BC3373: MemLdRfVar from_stack_1.global_60
  loc_BC3376: LdPrVar
  loc_BC3378: LateMemCall
  loc_BC337E: LitVarStr var_94, "</table>"
  loc_BC3383: PopAdLdVar
  loc_BC3384: FLdPr Me
  loc_BC3387: MemLdRfVar from_stack_1.global_60
  loc_BC338A: LdPrVar
  loc_BC338C: LateMemCall
  loc_BC3392: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC3397: PopAdLdVar
  loc_BC3398: FLdPr Me
  loc_BC339B: MemLdRfVar from_stack_1.global_60
  loc_BC339E: LdPrVar
  loc_BC33A0: LateMemCall
  loc_BC33A6: LitVarStr var_94, "  <thead>"
  loc_BC33AB: PopAdLdVar
  loc_BC33AC: FLdPr Me
  loc_BC33AF: MemLdRfVar from_stack_1.global_60
  loc_BC33B2: LdPrVar
  loc_BC33B4: LateMemCall
  loc_BC33BA: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC33BF: PopAdLdVar
  loc_BC33C0: FLdPr Me
  loc_BC33C3: MemLdRfVar from_stack_1.global_60
  loc_BC33C6: LdPrVar
  loc_BC33C8: LateMemCall
  loc_BC33CE: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BC33D3: PopAdLdVar
  loc_BC33D4: FLdPr Me
  loc_BC33D7: MemLdRfVar from_stack_1.global_60
  loc_BC33DA: LdPrVar
  loc_BC33DC: LateMemCall
  loc_BC33E2: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_BC33E7: PopAdLdVar
  loc_BC33E8: FLdPr Me
  loc_BC33EB: MemLdRfVar from_stack_1.global_60
  loc_BC33EE: LdPrVar
  loc_BC33F0: LateMemCall
  loc_BC33F6: LitVarStr var_94, "    <th>Periodo</th>"
  loc_BC33FB: PopAdLdVar
  loc_BC33FC: FLdPr Me
  loc_BC33FF: MemLdRfVar from_stack_1.global_60
  loc_BC3402: LdPrVar
  loc_BC3404: LateMemCall
  loc_BC340A: LitVarStr var_94, "    <th>Bimestre</th>"
  loc_BC340F: PopAdLdVar
  loc_BC3410: FLdPr Me
  loc_BC3413: MemLdRfVar from_stack_1.global_60
  loc_BC3416: LdPrVar
  loc_BC3418: LateMemCall
  loc_BC341E: LitVarStr var_94, "    <th>Nro. de Boleto</th>"
  loc_BC3423: PopAdLdVar
  loc_BC3424: FLdPr Me
  loc_BC3427: MemLdRfVar from_stack_1.global_60
  loc_BC342A: LdPrVar
  loc_BC342C: LateMemCall
  loc_BC3432: LitVarStr var_94, "    <th>Fecha de Pago</th>"
  loc_BC3437: PopAdLdVar
  loc_BC3438: FLdPr Me
  loc_BC343B: MemLdRfVar from_stack_1.global_60
  loc_BC343E: LdPrVar
  loc_BC3440: LateMemCall
  loc_BC3446: LitVarStr var_94, "    <th>Concepto</th>"
  loc_BC344B: PopAdLdVar
  loc_BC344C: FLdPr Me
  loc_BC344F: MemLdRfVar from_stack_1.global_60
  loc_BC3452: LdPrVar
  loc_BC3454: LateMemCall
  loc_BC345A: LitVarStr var_94, "    <th>Facilidad</th>"
  loc_BC345F: PopAdLdVar
  loc_BC3460: FLdPr Me
  loc_BC3463: MemLdRfVar from_stack_1.global_60
  loc_BC3466: LdPrVar
  loc_BC3468: LateMemCall
  loc_BC346E: LitVarStr var_94, "    <th>Cuota</th>"
  loc_BC3473: PopAdLdVar
  loc_BC3474: FLdPr Me
  loc_BC3477: MemLdRfVar from_stack_1.global_60
  loc_BC347A: LdPrVar
  loc_BC347C: LateMemCall
  loc_BC3482: LitVarStr var_94, "    <th>Importe</th>"
  loc_BC3487: PopAdLdVar
  loc_BC3488: FLdPr Me
  loc_BC348B: MemLdRfVar from_stack_1.global_60
  loc_BC348E: LdPrVar
  loc_BC3490: LateMemCall
  loc_BC3496: LitVarStr var_94, "  </tr>"
  loc_BC349B: PopAdLdVar
  loc_BC349C: FLdPr Me
  loc_BC349F: MemLdRfVar from_stack_1.global_60
  loc_BC34A2: LdPrVar
  loc_BC34A4: LateMemCall
  loc_BC34AA: LitVarStr var_94, "  </thead>"
  loc_BC34AF: PopAdLdVar
  loc_BC34B0: FLdPr Me
  loc_BC34B3: MemLdRfVar from_stack_1.global_60
  loc_BC34B6: LdPrVar
  loc_BC34B8: LateMemCall
  loc_BC34BE: ExitProcHresult
End Function

Private Function Proc_201_16_9FB228() '9FB228
  'Data Table: 476B9C
  loc_9FB1FC: LitVarStr var_94, "</body>"
  loc_9FB201: PopAdLdVar
  loc_9FB202: FLdPr Me
  loc_9FB205: MemLdRfVar from_stack_1.global_60
  loc_9FB208: LdPrVar
  loc_9FB20A: LateMemCall
  loc_9FB210: LitVarStr var_94, "</html>"
  loc_9FB215: PopAdLdVar
  loc_9FB216: FLdPr Me
  loc_9FB219: MemLdRfVar from_stack_1.global_60
  loc_9FB21C: LdPrVar
  loc_9FB21E: LateMemCall
  loc_9FB224: ExitProcHresult
  loc_9FB225: FLdPr arg_F00
End Function
