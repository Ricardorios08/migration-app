VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Begin VB.Form rptEmisionIndividualdeTasas
  Caption = "Emisión Masiva de Tasas "
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEmisionIndividualdeTasas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11640
  ClientHeight = 4680
  StartUpPosition = 2 'CenterScreen
  Begin VB.CommandButton cmdSalir
    Left = 10320
    Top = 3240
    Width = 855
    Height = 735
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptEmisionIndividualdeTasas.frx":08CA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame4
    Caption = "Exportar"
    Left = 3960
    Top = 3000
    Width = 3135
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
      Left = 840
      Top = 360
      Width = 1335
      Height = 615
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
    End
    Begin VB.CommandButton cmdPDFweb
      Caption = "PD&F para web"
      Left = 2280
      Top = 360
      Width = 615
      Height = 615
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
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4425
    Width = 11640
    Height = 255
    TabIndex = 14
    OleObjectBlob = "rptEmisionIndividualdeTasas.frx":0B1C
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEmisionIndividualdeTasas.frx":0B9C
    Left = 9240
    Top = 3000
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 240
    Top = 3000
    Width = 3495
    Height = 1215
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 840
      Top = 360
      Width = 2055
      Height = 615
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
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11415
    Height = 2655
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9720
      Top = 240
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
    Begin MSComctlLib.ProgressBar pbar
      Left = 10140
      Top = 960
      Width = 735
      Height = 1095
      Visible = 0   'False
      TabIndex = 4
      OleObjectBlob = "rptEmisionIndividualdeTasas.frx":0C00
    End
    Begin MSMask.MaskEdBox CuenCtctMsk
      Left = 4560
      Top = 1200
      Width = 1335
      Height = 360
      TabIndex = 3
      OleObjectBlob = "rptEmisionIndividualdeTasas.frx":0C68
    End
    Begin VB.Label Label2
      Caption = "Cuenta de INMUEBLE:"
      Left = 2040
      Top = 1200
      Width = 2475
      Height = 300
      TabIndex = 2
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
    Begin VB.Label ProgresoLbl
      Left = 9750
      Top = 2160
      Width = 1515
      Height = 300
      TabIndex = 5
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Left = 10440
    Top = 3600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptEmisionIndividualdeTasas.frx":0D00
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 9000
    Top = 3600
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptEmisionIndividualdeTasas.frx":0DB4
  End
End

Attribute VB_Name = "rptEmisionIndividualdeTasas"

Public bGenerado As Boolean

Private Type UDT_1_00672CF0
  bStruc(68) As Byte ' String fields: 16
End Type

Private Type UDT_2_006749D8
  bStruc(116) As Byte ' String fields: 29
End Type


Private Sub cmdNueva_Click() 'A7DC04
  'Data Table: 49CAEC
  loc_A7DB78: LitI2_Byte 0
  loc_A7DB7A: FLdPr Me
  loc_A7DB7D: MemStI2 bGenerado
  loc_A7DB80: LitI2_Byte &HFF
  loc_A7DB82: ILdRf Me
  loc_A7DB85: CastAd
  loc_A7DB88: FStAdFunc var_88
  loc_A7DB8B: FLdRfVar var_88
  loc_A7DB8E: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A7DB93: FFree1Ad var_88
  loc_A7DB96: LitVarStr var_98, "0"
  loc_A7DB9B: PopAdLdVar
  loc_A7DB9C: FLdPr Me
  loc_A7DB9F: VCallAd Control_ID_CuenCtctMsk
  loc_A7DBA2: FStAdFunc var_88
  loc_A7DBA5: FLdPr var_88
  loc_A7DBA8: LateIdSt
  loc_A7DBAD: FFree1Ad var_88
  loc_A7DBB0: LitStr vbNullString
  loc_A7DBB3: FLdPr Me
  loc_A7DBB6: VCallAd Control_ID_ProgresoLbl
  loc_A7DBB9: FStAdFunc var_88
  loc_A7DBBC: FLdPr var_88
  loc_A7DBBF: Me.Caption = from_stack_1
  loc_A7DBC4: FFree1Ad var_88
  loc_A7DBC7: LitStr vbNullString
  loc_A7DBCA: FLdPr Me
  loc_A7DBCD: Me.Tag = from_stack_1
  loc_A7DBD2: Call HabilitarCriterio()
  loc_A7DBD7: ILdRf Me
  loc_A7DBDA: CastAd
  loc_A7DBDD: FStAdFunc var_88
  loc_A7DBE0: FLdRfVar var_88
  loc_A7DBE3: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A7DBE8: FFree1Ad var_88
  loc_A7DBEB: LitI2_Byte 0
  loc_A7DBED: FLdPr Me
  loc_A7DBF0: VCallAd Control_ID_cmdPDFweb
  loc_A7DBF3: FStAdFunc var_88
  loc_A7DBF6: FLdPr var_88
  loc_A7DBF9: Me.Visible = from_stack_1b
  loc_A7DBFE: FFree1Ad var_88
  loc_A7DC01: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A0518C
  'Data Table: 49CAEC
  loc_A0515C: LitVarStr var_94, "Cerrando..."
  loc_A05161: PopAdLdVar
  loc_A05162: FLdPr Me
  loc_A05165: VCallAd Control_ID_statusBar
  loc_A05168: FStAdFunc var_A8
  loc_A0516B: FLdPr var_A8
  loc_A0516E: LateIdSt
  loc_A05173: FFree1Ad var_A8
  loc_A05176: ILdRf Me
  loc_A05179: FStAdNoPop
  loc_A0517D: ImpAdLdRf MemVar_D9C5D8
  loc_A05180: NewIfNullPr Global
  loc_A05183: Global.Unload from_stack_1
  loc_A05188: FFree1Ad var_A8
  loc_A0518B: ExitProcHresult
End Sub

Private Sub Form_Load() 'A6C054
  'Data Table: 49CAEC
  loc_A6BFE0: LitStr "PRIMER"
  loc_A6BFE3: LitI4 1
  loc_A6BFE8: FLdPr Me
  loc_A6BFEB: MemLdRfVar from_stack_1.global_124
  loc_A6BFEE: Ary1StStrCopy
  loc_A6BFEF: LitStr "SEGUNDO"
  loc_A6BFF2: LitI4 2
  loc_A6BFF7: FLdPr Me
  loc_A6BFFA: MemLdRfVar from_stack_1.global_124
  loc_A6BFFD: Ary1StStrCopy
  loc_A6BFFE: LitStr "TERCER"
  loc_A6C001: LitI4 3
  loc_A6C006: FLdPr Me
  loc_A6C009: MemLdRfVar from_stack_1.global_124
  loc_A6C00C: Ary1StStrCopy
  loc_A6C00D: LitStr "CUARTO"
  loc_A6C010: LitI4 4
  loc_A6C015: FLdPr Me
  loc_A6C018: MemLdRfVar from_stack_1.global_124
  loc_A6C01B: Ary1StStrCopy
  loc_A6C01C: LitStr "QUINTO"
  loc_A6C01F: LitI4 5
  loc_A6C024: FLdPr Me
  loc_A6C027: MemLdRfVar from_stack_1.global_124
  loc_A6C02A: Ary1StStrCopy
  loc_A6C02B: LitStr "SEXTO"
  loc_A6C02E: LitI4 6
  loc_A6C033: FLdPr Me
  loc_A6C036: MemLdRfVar from_stack_1.global_124
  loc_A6C039: Ary1StStrCopy
  loc_A6C03A: ILdRf Me
  loc_A6C03D: CastAd
  loc_A6C040: FStAdFunc var_88
  loc_A6C043: FLdRfVar var_88
  loc_A6C046: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A6C04B: FFree1Ad var_88
  loc_A6C04E: Call cmdNueva_Click()
  loc_A6C053: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CF74C
  'Data Table: 49CAEC
  loc_9CF734: FLdPr Me
  loc_9CF737: VCallAd Control_ID_wbbReporte
  loc_9CF73A: FStAdFunc var_88
  loc_9CF73D: FLdRfVar var_88
  loc_9CF740: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CF745: FFree1Ad var_88
  loc_9CF748: ExitProcHresult
  loc_9CF749: CopyBytes
End Sub

Private Sub CuenCtctMsk_UnknownEvent_0 '9C0170
  'Data Table: 49CAEC
  loc_9C015C: FLdPr Me
  loc_9C015F: VCallAd Control_ID_CuenCtctMsk
  loc_9C0162: CVarAd
  loc_9C0166: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C016B: FFree1Var var_94 = ""
  loc_9C016E: ExitProcHresult
End Sub

Private Sub CuenCtctMsk_UnknownEvent_8 'B41B6C
  'Data Table: 49CAEC
  loc_B418A4: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = 1 AND CodiTili = 1"
  loc_B418A7: FLdPr Me
  loc_B418AA: MemLdRfVar from_stack_1.global_80
  loc_B418AD: NewIfNullPr clstipoliqu
  loc_B418B0: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_B418B5: FLdRfVar var_88
  loc_B418B8: FLdPr Me
  loc_B418BB: MemLdRfVar from_stack_1.global_80
  loc_B418BE: NewIfNullPr clstipoliqu
  loc_B418C1: from_stack_1 = clstipoliqu.RecordCount
  loc_B418C6: ILdRf var_88
  loc_B418C9: LitI4 0
  loc_B418CE: GtI4
  loc_B418CF: BranchF loc_B41B6A
  loc_B418D2: LitStr "SELECT * FROM liqutasa"
  loc_B418D5: LitStr " WHERE PeriLiqu = "
  loc_B418D8: ConcatStr
  loc_B418D9: FStStrNoPop var_8C
  loc_B418DC: ImpAdLdI2 MemVar_D93034
  loc_B418DF: CStrUI1
  loc_B418E1: FStStrNoPop var_90
  loc_B418E4: ConcatStr
  loc_B418E5: FStStrNoPop var_94
  loc_B418E8: LitStr " AND CodiTili = "
  loc_B418EB: ConcatStr
  loc_B418EC: FStStrNoPop var_9C
  loc_B418EF: FLdRfVar var_96
  loc_B418F2: FLdPr Me
  loc_B418F5: MemLdRfVar from_stack_1.global_80
  loc_B418F8: NewIfNullPr clstipoliqu
  loc_B418FB: from_stack_1 = clstipoliqu.CodiTili
  loc_B41900: FLdUI1
  loc_B41904: CStrI2
  loc_B41906: FStStrNoPop var_A0
  loc_B41909: ConcatStr
  loc_B4190A: FStStrNoPop var_A4
  loc_B4190D: LitStr " AND CodiInmu = "
  loc_B41910: ConcatStr
  loc_B41911: FStStrNoPop var_BC
  loc_B41914: FLdPr Me
  loc_B41917: VCallAd Control_ID_CuenCtctMsk
  loc_B4191A: FStAdFunc var_A8
  loc_B4191D: FLdPr var_A8
  loc_B41920: LateIdLdVar var_B8 DispID_22 0
  loc_B41927: CStrVarTmp
  loc_B41928: FStStrNoPop var_C0
  loc_B4192B: ConcatStr
  loc_B4192C: FStStrNoPop var_C4
  loc_B4192F: LitStr " AND CodiConc = '"
  loc_B41932: ConcatStr
  loc_B41933: FStStrNoPop var_CC
  loc_B41936: FLdRfVar var_C8
  loc_B41939: FLdPr Me
  loc_B4193C: MemLdRfVar from_stack_1.global_80
  loc_B4193F: NewIfNullPr clstipoliqu
  loc_B41942: from_stack_1 = clstipoliqu.ConcTili
  loc_B41947: ILdRf var_C8
  loc_B4194A: ConcatStr
  loc_B4194B: FStStrNoPop var_D0
  loc_B4194E: LitStr "'"
  loc_B41951: ConcatStr
  loc_B41952: FStStrNoPop var_D4
  loc_B41955: LitStr " AND TipoVenc = 1"
  loc_B41958: ConcatStr
  loc_B41959: FStStrNoPop var_D8
  loc_B4195C: LitStr " AND ActuLita = 'Si'"
  loc_B4195F: ConcatStr
  loc_B41960: FStStrNoPop var_DC
  loc_B41963: LitStr " ORDER BY PeriLiqu, CodiTili, NumeLiqu, CodiInmu, OrdeLita"
  loc_B41966: ConcatStr
  loc_B41967: FStStrNoPop var_E0
  loc_B4196A: FLdPr Me
  loc_B4196D: MemLdRfVar from_stack_1.global_84
  loc_B41970: NewIfNullPr clsliquidacion
  loc_B41973: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_B41978: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_BC = "": var_C0 = "": var_C4 = "": var_CC = "": var_C8 = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B4199B: FFree1Ad var_A8
  loc_B4199E: FFree1Var var_B8 = ""
  loc_B419A1: FLdRfVar var_88
  loc_B419A4: FLdPr Me
  loc_B419A7: MemLdRfVar from_stack_1.global_84
  loc_B419AA: NewIfNullPr clsliquidacion
  loc_B419AD: from_stack_1 = clsliquidacion.RecordCount
  loc_B419B2: ILdRf var_88
  loc_B419B5: LitI4 0
  loc_B419BA: GtI4
  loc_B419BB: BranchF loc_B41B5F
  loc_B419BE: FLdPr Me
  loc_B419C1: MemLdRfVar from_stack_1.global_84
  loc_B419C4: NewIfNullPr clsliquidacion
  loc_B419C7: Call clsliquidacion.MoveLast()
  loc_B419CC: FLdRfVar var_17C
  loc_B419CF: FLdRfVar var_F8
  loc_B419D2: LitVarStr var_F4, "PeriLiqu"
  loc_B419D7: PopAdLdVar
  loc_B419D8: FLdRfVar var_E4
  loc_B419DB: FLdRfVar var_A8
  loc_B419DE: FLdPr Me
  loc_B419E1: MemLdRfVar from_stack_1.global_84
  loc_B419E4: NewIfNullPr clsliquidacion
  loc_B419E7: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B419EC: FLdPr var_A8
  loc_B419EF:  = Me.Fields
  loc_B419F4: FLdPr var_E4
  loc_B419F7: from_stack_2 = Me.Item(from_stack_1)
  loc_B419FC: FLdPr var_F8
  loc_B419FF:  = Me.Value
  loc_B41A04: FLdRfVar var_18C
  loc_B41A07: FLdRfVar var_114
  loc_B41A0A: LitVarStr var_110, "BimeLiqu"
  loc_B41A0F: PopAdLdVar
  loc_B41A10: FLdRfVar var_100
  loc_B41A13: FLdRfVar var_FC
  loc_B41A16: FLdPr Me
  loc_B41A19: MemLdRfVar from_stack_1.global_84
  loc_B41A1C: NewIfNullPr clsliquidacion
  loc_B41A1F: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B41A24: FLdPr var_FC
  loc_B41A27:  = Me.Fields
  loc_B41A2C: FLdPr var_100
  loc_B41A2F: from_stack_2 = Me.Item(from_stack_1)
  loc_B41A34: FLdPr var_114
  loc_B41A37:  = Me.Value
  loc_B41A3C: FLdRfVar var_19C
  loc_B41A3F: FLdRfVar var_130
  loc_B41A42: LitVarStr var_12C, "CodiTili"
  loc_B41A47: PopAdLdVar
  loc_B41A48: FLdRfVar var_11C
  loc_B41A4B: FLdRfVar var_118
  loc_B41A4E: FLdPr Me
  loc_B41A51: MemLdRfVar from_stack_1.global_84
  loc_B41A54: NewIfNullPr clsliquidacion
  loc_B41A57: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B41A5C: FLdPr var_118
  loc_B41A5F:  = Me.Fields
  loc_B41A64: FLdPr var_11C
  loc_B41A67: from_stack_2 = Me.Item(from_stack_1)
  loc_B41A6C: FLdPr var_130
  loc_B41A6F:  = Me.Value
  loc_B41A74: FLdRfVar var_1AC
  loc_B41A77: FLdRfVar var_14C
  loc_B41A7A: LitVarStr var_148, "NumeLiqu"
  loc_B41A7F: PopAdLdVar
  loc_B41A80: FLdRfVar var_138
  loc_B41A83: FLdRfVar var_134
  loc_B41A86: FLdPr Me
  loc_B41A89: MemLdRfVar from_stack_1.global_84
  loc_B41A8C: NewIfNullPr clsliquidacion
  loc_B41A8F: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B41A94: FLdPr var_134
  loc_B41A97:  = Me.Fields
  loc_B41A9C: FLdPr var_138
  loc_B41A9F: from_stack_2 = Me.Item(from_stack_1)
  loc_B41AA4: FLdPr var_14C
  loc_B41AA7:  = Me.Value
  loc_B41AAC: FLdPr Me
  loc_B41AAF: VCallAd Control_ID_CuenCtctMsk
  loc_B41AB2: FStAdFunc var_150
  loc_B41AB5: FLdPr var_150
  loc_B41AB8: LateIdLdVar var_B8 DispID_22 0
  loc_B41ABF: PopAd
  loc_B41AC1: FLdRfVar var_1BC
  loc_B41AC4: FLdRfVar var_16C
  loc_B41AC7: LitVarStr var_168, "CodiConc"
  loc_B41ACC: PopAdLdVar
  loc_B41ACD: FLdRfVar var_158
  loc_B41AD0: FLdRfVar var_154
  loc_B41AD3: FLdPr Me
  loc_B41AD6: MemLdRfVar from_stack_1.global_84
  loc_B41AD9: NewIfNullPr clsliquidacion
  loc_B41ADC: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_B41AE1: FLdPr var_154
  loc_B41AE4:  = Me.Fields
  loc_B41AE9: FLdPr var_158
  loc_B41AEC: from_stack_2 = Me.Item(from_stack_1)
  loc_B41AF1: FLdPr var_16C
  loc_B41AF4:  = Me.Value
  loc_B41AF9: FLdRfVar var_1BC
  loc_B41AFC: CStrVarTmp
  loc_B41AFD: FStStrNoPop var_90
  loc_B41B00: FLdRfVar var_B8
  loc_B41B03: CStrVarTmp
  loc_B41B04: FStStrNoPop var_8C
  loc_B41B07: CI4Str
  loc_B41B08: FLdRfVar var_1AC
  loc_B41B0B: CI2Var
  loc_B41B0C: FLdRfVar var_19C
  loc_B41B0F: CI2Var
  loc_B41B10: FLdRfVar var_18C
  loc_B41B13: CI2Var
  loc_B41B14: FLdRfVar var_17C
  loc_B41B17: CI2Var
  loc_B41B18: ImpAdCallI2 Proc_270_111_B11FC0(, , , , , )
  loc_B41B1D: FLdPr Me
  loc_B41B20: MemStI4 global_148
  loc_B41B23: FFreeStr var_8C = ""
  loc_B41B2A: FFreeAd var_A8 = "": var_E4 = "": var_FC = "": var_100 = "": var_118 = "": var_11C = "": var_134 = "": var_138 = "": var_150 = "": var_154 = "": var_158 = "": var_F8 = "": var_114 = "": var_130 = "": var_14C = ""
  loc_B41B4D: FFreeVar var_B8 = "": var_17C = "": var_18C = "": var_19C = "": var_1AC = ""
  loc_B41B5C: Branch loc_B41B6A
  loc_B41B5F: LitI4 0
  loc_B41B64: FLdPr Me
  loc_B41B67: MemStI4 global_148
  loc_B41B6A: ExitProcHresult
End Sub

Private Sub cmdPDFweb_Click() '9AF144
  'Data Table: 49CAEC
  loc_9AF140: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'B75AB8
  'Data Table: 49CAEC
  loc_B75608: OnErrorGoto loc_B75A30
  loc_B7560B: FLdRfVar var_A0
  loc_B7560E: FLdPr Me
  loc_B75611:  = Me.hWnd
  loc_B75616: LitStr "Seleccione la carpeta de salida para los archivos generados"
  loc_B75619: FLdPr Me
  loc_B7561C: MemLdStr global_76
  loc_B7561F: ILdRf var_A0
  loc_B75622: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_B75627: FStStrNoPop var_A4
  loc_B7562A: FLdPr Me
  loc_B7562D: MemStStrCopy
  loc_B75631: FFree1Str var_A4
  loc_B75634: FLdPr Me
  loc_B75637: MemLdRfVar from_stack_1.global_76
  loc_B7563A: CVarRef
  loc_B7563F: FLdRfVar var_C4
  loc_B75642: ImpAdCallFPR4  = Trim()
  loc_B75647: FLdRfVar var_C4
  loc_B7564A: LitVarStr var_D4, vbNullString
  loc_B7564F: HardType
  loc_B75650: EqVarBool
  loc_B75652: FFree1Var var_C4 = ""
  loc_B75655: BranchF loc_B75659
  loc_B75658: ExitProcHresult
  loc_B75659: FLdRfVar var_A4
  loc_B7565C: LitStr "tmp"
  loc_B7565F: FLdPr Me
  loc_B75662: MemLdStr global_76
  loc_B75665: FLdRfVar var_88
  loc_B75668: NewIfNullPr IFileSystem3
  loc_B7566B: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B75670: ILdRf var_A4
  loc_B75673: LitStr "\"
  loc_B75676: ConcatStr
  loc_B75677: FStStr var_9C
  loc_B7567A: FFree1Str var_A4
  loc_B7567D: FLdRfVar var_E6
  loc_B75680: ILdRf var_9C
  loc_B75683: FLdRfVar var_88
  loc_B75686: NewIfNullPr IFileSystem3
  loc_B75689: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B7568E: FLdI2 var_E6
  loc_B75691: BranchF loc_B756A2
  loc_B75694: LitStr "*.*"
  loc_B75697: ILdRf var_9C
  loc_B7569A: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B7569F: Branch loc_B756AA
  loc_B756A2: ILdRf var_9C
  loc_B756A5: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_B756AA: ILdRf var_9C
  loc_B756AD: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B756B2: ILdRf Me
  loc_B756B5: CastAd
  loc_B756B8: FStAdFunc var_EC
  loc_B756BB: FLdRfVar var_EC
  loc_B756BE: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B756C3: FFree1Ad var_EC
  loc_B756C6: Call GeneraReporte()
  loc_B756CB: FLdPr Me
  loc_B756CE: MemLdI2 bGenerado
  loc_B756D1: BranchF loc_B75A01
  loc_B756D4: FLdPr Me
  loc_B756D7: MemLdStr global_96
  loc_B756DA: LitI2_Byte 1
  loc_B756DC: FnUBound
  loc_B756DE: CR8I4
  loc_B756DF: CVarR4
  loc_B756E3: PopAdLdVar
  loc_B756E4: FLdPr Me
  loc_B756E7: VCallAd Control_ID_pbar
  loc_B756EA: FStAdFunc var_EC
  loc_B756ED: FLdPr var_EC
  loc_B756F0: LateIdSt
  loc_B756F5: FFree1Ad var_EC
  loc_B756F8: LitVar_TRUE var_B4
  loc_B756FB: PopAdLdVar
  loc_B756FC: FLdPr Me
  loc_B756FF: VCallAd Control_ID_pbar
  loc_B75702: FStAdFunc var_EC
  loc_B75705: FLdPr var_EC
  loc_B75708: LateIdSt
  loc_B7570D: FFree1Ad var_EC
  loc_B75710: LitStr vbNullString
  loc_B75713: FStStrCopy var_90
  loc_B75716: LitI4 1
  loc_B7571B: FLdPr Me
  loc_B7571E: MemLdStr global_96
  loc_B75721: Ary1LdPr
  loc_B75722: MemLdStr global_80
  loc_B75725: CI4Str
  loc_B75726: FStR4 var_98
  loc_B75729: LitI4 1
  loc_B7572E: FLdPr Me
  loc_B75731: MemLdRfVar from_stack_1.global_100
  loc_B75734: FLdPr Me
  loc_B75737: MemLdStr global_96
  loc_B7573A: LitI2_Byte 1
  loc_B7573C: FnUBound
  loc_B7573E: ForI4 var_F4
  loc_B75744: FLdPr Me
  loc_B75747: MemLdStr global_100
  loc_B7574A: FLdPr Me
  loc_B7574D: MemLdStr global_96
  loc_B75750: AryLock
  loc_B75753: Ary1LdRf
  loc_B75754: FStR4 var_FC
  loc_B75757: FLdRfVar var_A4
  loc_B7575A: FLdPr Me
  loc_B7575D: MemLdStr global_100
  loc_B75760: Call Proc_314_15_9BA218()
  loc_B75765: FLdZeroAd var_A4
  loc_B75768: FStStr var_8C
  loc_B7576B: ILdRf var_9C
  loc_B7576E: ILdRf var_8C
  loc_B75771: ConcatStr
  loc_B75772: FStStrNoPop var_A4
  loc_B75775: LitStr ".html"
  loc_B75778: ConcatStr
  loc_B75779: ImpAdStStr MemVar_D93C84
  loc_B7577D: FFree1Str var_A4
  loc_B75780: LitI4 0
  loc_B75785: FStR4 var_FC
  loc_B75788: AryUnlock
  loc_B7578B: FLdPr Me
  loc_B7578E: MemLdStr global_100
  loc_B75791: CR8I4
  loc_B75792: CVarR4
  loc_B75796: PopAdLdVar
  loc_B75797: FLdPr Me
  loc_B7579A: VCallAd Control_ID_pbar
  loc_B7579D: FStAdFunc var_EC
  loc_B757A0: FLdPr var_EC
  loc_B757A3: LateIdSt
  loc_B757A8: FFree1Ad var_EC
  loc_B757AB: FLdPr Me
  loc_B757AE: MemLdStr global_100
  loc_B757B1: CStrI4
  loc_B757B3: FStStrNoPop var_A4
  loc_B757B6: LitStr "/"
  loc_B757B9: ConcatStr
  loc_B757BA: FStStrNoPop var_100
  loc_B757BD: FLdPr Me
  loc_B757C0: MemLdStr global_96
  loc_B757C3: LitI2_Byte 1
  loc_B757C5: FnUBound
  loc_B757C7: CStrI4
  loc_B757C9: FStStrNoPop var_104
  loc_B757CC: ConcatStr
  loc_B757CD: FStStrNoPop var_108
  loc_B757D0: FLdPr Me
  loc_B757D3: VCallAd Control_ID_ProgresoLbl
  loc_B757D6: FStAdFunc var_EC
  loc_B757D9: FLdPr var_EC
  loc_B757DC: Me.Caption = from_stack_1
  loc_B757E1: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B757EC: FFree1Ad var_EC
  loc_B757EF: Call GeneraHTML()
  loc_B757F4: ILdRf var_90
  loc_B757F7: LitStr """"
  loc_B757FA: ConcatStr
  loc_B757FB: FStStrNoPop var_A4
  loc_B757FE: ImpAdLdI4 MemVar_D93C84
  loc_B75801: ConcatStr
  loc_B75802: FStStrNoPop var_100
  loc_B75805: LitStr """ "
  loc_B75808: ConcatStr
  loc_B75809: FStStr var_90
  loc_B7580C: FFreeStr var_A4 = ""
  loc_B75813: FLdPr Me
  loc_B75816: MemLdStr global_100
  loc_B75819: LitI4 &HFA
  loc_B7581E: ModI4
  loc_B7581F: LitI4 0
  loc_B75824: EqI4
  loc_B75825: FLdPr Me
  loc_B75828: MemLdStr global_100
  loc_B7582B: FLdPr Me
  loc_B7582E: MemLdStr global_96
  loc_B75831: LitI2_Byte 1
  loc_B75833: FnUBound
  loc_B75835: EqI4
  loc_B75836: OrI4
  loc_B75837: BranchF loc_B7599B
  loc_B7583A: FLdPr Me
  loc_B7583D: MemLdStr global_100
  loc_B75840: FLdPr Me
  loc_B75843: MemLdStr global_96
  loc_B75846: LitI2_Byte 1
  loc_B75848: FnUBound
  loc_B7584A: EqI4
  loc_B7584B: BranchF loc_B75891
  loc_B7584E: LitStr " ("
  loc_B75851: ILdRf var_98
  loc_B75854: CStrI4
  loc_B75856: FStStrNoPop var_A4
  loc_B75859: ConcatStr
  loc_B7585A: FStStrNoPop var_100
  loc_B7585D: LitStr "-"
  loc_B75860: ConcatStr
  loc_B75861: FStStrNoPop var_104
  loc_B75864: FLdPr Me
  loc_B75867: MemLdStr global_96
  loc_B7586A: LitI2_Byte 1
  loc_B7586C: FnUBound
  loc_B7586E: FLdPr Me
  loc_B75871: MemLdStr global_96
  loc_B75874: Ary1LdPr
  loc_B75875: MemLdStr global_80
  loc_B75878: ConcatStr
  loc_B75879: FStStrNoPop var_108
  loc_B7587C: LitStr ")"
  loc_B7587F: ConcatStr
  loc_B75880: FStStr var_94
  loc_B75883: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B7588E: Branch loc_B758E7
  loc_B75891: LitStr " ("
  loc_B75894: ILdRf var_98
  loc_B75897: CStrI4
  loc_B75899: FStStrNoPop var_A4
  loc_B7589C: ConcatStr
  loc_B7589D: FStStrNoPop var_100
  loc_B758A0: LitStr "-"
  loc_B758A3: ConcatStr
  loc_B758A4: FStStrNoPop var_104
  loc_B758A7: FLdPr Me
  loc_B758AA: MemLdStr global_100
  loc_B758AD: FLdPr Me
  loc_B758B0: MemLdStr global_96
  loc_B758B3: Ary1LdPr
  loc_B758B4: MemLdStr global_80
  loc_B758B7: ConcatStr
  loc_B758B8: FStStrNoPop var_108
  loc_B758BB: LitStr ")"
  loc_B758BE: ConcatStr
  loc_B758BF: FStStr var_94
  loc_B758C2: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B758CD: FLdPr Me
  loc_B758D0: MemLdStr global_100
  loc_B758D3: LitI4 1
  loc_B758D8: AddI4
  loc_B758D9: FLdPr Me
  loc_B758DC: MemLdStr global_96
  loc_B758DF: Ary1LdPr
  loc_B758E0: MemLdStr global_80
  loc_B758E3: CI4Str
  loc_B758E4: FStR4 var_98
  loc_B758E7: FLdPr Me
  loc_B758EA: MemLdStr global_76
  loc_B758ED: LitStr "\tasas"
  loc_B758F0: ConcatStr
  loc_B758F1: FStStrNoPop var_A4
  loc_B758F4: ILdRf var_94
  loc_B758F7: ConcatStr
  loc_B758F8: FStStrNoPop var_100
  loc_B758FB: LitStr ".pdf"
  loc_B758FE: ConcatStr
  loc_B758FF: ImpAdStStr MemVar_D93030
  loc_B75903: FFreeStr var_A4 = ""
  loc_B7590A: ILdRf var_90
  loc_B7590D: FnLenStr
  loc_B7590E: LitI4 3
  loc_B75913: SubI4
  loc_B75914: CVarI4
  loc_B75918: LitI4 2
  loc_B7591D: FLdRfVar var_90
  loc_B75920: CVarRef
  loc_B75925: FLdRfVar var_E4
  loc_B75928: ImpAdCallFPR4  = Mid(, , )
  loc_B7592D: FLdRfVar var_E4
  loc_B75930: CStrVarTmp
  loc_B75931: FStStr var_90
  loc_B75934: FFreeVar var_C4 = ""
  loc_B7593B: LitStr vbNullString
  loc_B7593E: ImpAdLdI4 MemVar_D93030
  loc_B75941: ILdRf var_90
  loc_B75944: ImpAdCallFPR4 Proc_57_55_AE2160(, , )
  loc_B75949: LitStr "Guardando PDF: '"
  loc_B7594C: ImpAdLdI4 MemVar_D93030
  loc_B7594F: ConcatStr
  loc_B75950: FStStrNoPop var_A4
  loc_B75953: LitStr "'"
  loc_B75956: ConcatStr
  loc_B75957: CVarStr var_C4
  loc_B7595A: PopAdLdVar
  loc_B7595B: FLdPr Me
  loc_B7595E: VCallAd Control_ID_statusBar
  loc_B75961: FStAdFunc var_EC
  loc_B75964: FLdPr var_EC
  loc_B75967: LateIdSt
  loc_B7596C: FFree1Str var_A4
  loc_B7596F: FFree1Ad var_EC
  loc_B75972: FFree1Var var_C4 = ""
  loc_B75975: FLdRfVar var_E6
  loc_B75978: ImpAdLdI4 MemVar_D93030
  loc_B7597B: FLdRfVar var_88
  loc_B7597E: NewIfNullPr IFileSystem3
  loc_B75981: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B75986: FLdI2 var_E6
  loc_B75989: NotI4
  loc_B7598A: BranchF loc_B75995
  loc_B7598D: ImpAdCallFPR4 DoEvents()
  loc_B75992: Branch loc_B75975
  loc_B75995: LitStr vbNullString
  loc_B75998: FStStrCopy var_90
  loc_B7599B: ImpAdCallFPR4 DoEvents()
  loc_B759A0: FLdPr Me
  loc_B759A3: MemLdRfVar from_stack_1.global_100
  loc_B759A6: NextI4 var_F4, loc_B75744
  loc_B759AB: LitStr "Proceso terminado."
  loc_B759AE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B759B3: FLdRfVar var_E6
  loc_B759B6: ILdRf var_9C
  loc_B759B9: FLdRfVar var_88
  loc_B759BC: NewIfNullPr IFileSystem3
  loc_B759BF: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B759C4: FLdI2 var_E6
  loc_B759C7: BranchF loc_B759DD
  loc_B759CA: LitStr "*.*"
  loc_B759CD: ILdRf var_9C
  loc_B759D0: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B759D5: ILdRf var_9C
  loc_B759D8: ImpAdCallFPR4 RmDir 
  loc_B759DD: LitVar_FALSE
  loc_B759E1: PopAdLdVar
  loc_B759E2: FLdPr Me
  loc_B759E5: VCallAd Control_ID_pbar
  loc_B759E8: FStAdFunc var_EC
  loc_B759EB: FLdPr var_EC
  loc_B759EE: LateIdSt
  loc_B759F3: FFree1Ad var_EC
  loc_B759F6: FLdPr Me
  loc_B759F9: MemLdStr global_76
  loc_B759FC: ImpAdCallFPR4 Proc_272_64_A06738()
  loc_B75A01: ILdRf Me
  loc_B75A04: CastAd
  loc_B75A07: FStAdFunc var_EC
  loc_B75A0A: FLdRfVar var_EC
  loc_B75A0D: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B75A12: FFree1Ad var_EC
  loc_B75A15: LitVarStr var_B4, vbNullString
  loc_B75A1A: PopAdLdVar
  loc_B75A1B: FLdPr Me
  loc_B75A1E: VCallAd Control_ID_statusBar
  loc_B75A21: FStAdFunc var_EC
  loc_B75A24: FLdPr var_EC
  loc_B75A27: LateIdSt
  loc_B75A2C: FFree1Ad var_EC
  loc_B75A2F: ExitProcHresult
  loc_B75A30: FLdRfVar var_A0
  loc_B75A33: ImpAdCallI2 Err 'rtcErrObj
  loc_B75A38: FStAdFunc var_EC
  loc_B75A3B: FLdPr var_EC
  loc_B75A3E:  = Err.Number
  loc_B75A43: ILdRf var_A0
  loc_B75A46: FStR4 var_10C
  loc_B75A49: FFree1Ad var_EC
  loc_B75A4C: ILdRf var_10C
  loc_B75A4F: LitI4 &H4C
  loc_B75A54: EqI4
  loc_B75A55: BranchF loc_B75A5B
  loc_B75A58: Branch loc_B75AB7
  loc_B75A5B: LitStr "Error "
  loc_B75A5E: FLdRfVar var_A0
  loc_B75A61: ImpAdCallI2 Err 'rtcErrObj
  loc_B75A66: FStAdFunc var_EC
  loc_B75A69: FLdPr var_EC
  loc_B75A6C:  = Err.Number
  loc_B75A71: ILdRf var_A0
  loc_B75A74: CStrI4
  loc_B75A76: FStStrNoPop var_A4
  loc_B75A79: ConcatStr
  loc_B75A7A: FStStrNoPop var_100
  loc_B75A7D: LitStr ": "
  loc_B75A80: ConcatStr
  loc_B75A81: FStStrNoPop var_108
  loc_B75A84: FLdRfVar var_104
  loc_B75A87: ImpAdCallI2 Err 'rtcErrObj
  loc_B75A8C: FStAdFunc var_110
  loc_B75A8F: FLdPr var_110
  loc_B75A92:  = Err.Description
  loc_B75A97: ILdRf var_104
  loc_B75A9A: ConcatStr
  loc_B75A9B: FStStrNoPop var_114
  loc_B75A9E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B75AA3: FFreeStr var_A4 = "": var_100 = "": var_108 = "": var_104 = ""
  loc_B75AB0: FFreeAd var_EC = ""
  loc_B75AB7: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'AFEB14
  'Data Table: 49CAEC
  loc_AFE92C: LitVarStr var_94, "Enviando a impresora predeterminada..."
  loc_AFE931: PopAdLdVar
  loc_AFE932: FLdPr Me
  loc_AFE935: VCallAd Control_ID_statusBar
  loc_AFE938: FStAdFunc var_A8
  loc_AFE93B: FLdPr var_A8
  loc_AFE93E: LateIdSt
  loc_AFE943: FFree1Ad var_A8
  loc_AFE946: ILdRf Me
  loc_AFE949: CastAd
  loc_AFE94C: FStAdFunc var_A8
  loc_AFE94F: FLdRfVar var_A8
  loc_AFE952: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_AFE957: FFree1Ad var_A8
  loc_AFE95A: Call GeneraReporte()
  loc_AFE95F: FLdPr Me
  loc_AFE962: MemLdI2 bGenerado
  loc_AFE965: BranchF loc_AFEAFC
  loc_AFE968: FLdPr Me
  loc_AFE96B: MemLdStr global_96
  loc_AFE96E: LitI2_Byte 1
  loc_AFE970: FnUBound
  loc_AFE972: CR8I4
  loc_AFE973: CVarR4
  loc_AFE977: PopAdLdVar
  loc_AFE978: FLdPr Me
  loc_AFE97B: VCallAd Control_ID_pbar
  loc_AFE97E: FStAdFunc var_A8
  loc_AFE981: FLdPr var_A8
  loc_AFE984: LateIdSt
  loc_AFE989: FFree1Ad var_A8
  loc_AFE98C: LitVar_TRUE var_94
  loc_AFE98F: PopAdLdVar
  loc_AFE990: FLdPr Me
  loc_AFE993: VCallAd Control_ID_pbar
  loc_AFE996: FStAdFunc var_A8
  loc_AFE999: FLdPr var_A8
  loc_AFE99C: LateIdSt
  loc_AFE9A1: FFree1Ad var_A8
  loc_AFE9A4: LitI4 1
  loc_AFE9A9: FLdPr Me
  loc_AFE9AC: MemLdRfVar from_stack_1.global_100
  loc_AFE9AF: FLdPr Me
  loc_AFE9B2: MemLdStr global_96
  loc_AFE9B5: LitI2_Byte 1
  loc_AFE9B7: FnUBound
  loc_AFE9B9: ForI4 var_B0
  loc_AFE9BF: LitStr " - "
  loc_AFE9C2: FLdPr Me
  loc_AFE9C5: MemLdStr global_100
  loc_AFE9C8: FLdPr Me
  loc_AFE9CB: MemLdStr global_96
  loc_AFE9CE: Ary1LdPr
  loc_AFE9CF: MemLdStr global_80
  loc_AFE9D2: ConcatStr
  loc_AFE9D3: FStStrNoPop var_B4
  loc_AFE9D6: FLdPr Me
  loc_AFE9D9: Me.Tag = from_stack_1
  loc_AFE9DE: FFree1Str var_B4
  loc_AFE9E1: ILdRf Me
  loc_AFE9E4: CastAd
  loc_AFE9E7: FStAdFunc var_A8
  loc_AFE9EA: FLdRfVar var_A8
  loc_AFE9ED: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_AFE9F2: FFree1Ad var_A8
  loc_AFE9F5: FLdPr Me
  loc_AFE9F8: MemLdStr global_100
  loc_AFE9FB: CR8I4
  loc_AFE9FC: CVarR4
  loc_AFEA00: PopAdLdVar
  loc_AFEA01: FLdPr Me
  loc_AFEA04: VCallAd Control_ID_pbar
  loc_AFEA07: FStAdFunc var_A8
  loc_AFEA0A: FLdPr var_A8
  loc_AFEA0D: LateIdSt
  loc_AFEA12: FFree1Ad var_A8
  loc_AFEA15: FLdPr Me
  loc_AFEA18: MemLdStr global_100
  loc_AFEA1B: CStrI4
  loc_AFEA1D: FStStrNoPop var_B4
  loc_AFEA20: LitStr "/"
  loc_AFEA23: ConcatStr
  loc_AFEA24: FStStrNoPop var_B8
  loc_AFEA27: FLdPr Me
  loc_AFEA2A: MemLdStr global_96
  loc_AFEA2D: LitI2_Byte 1
  loc_AFEA2F: FnUBound
  loc_AFEA31: CStrI4
  loc_AFEA33: FStStrNoPop var_BC
  loc_AFEA36: ConcatStr
  loc_AFEA37: FStStrNoPop var_C0
  loc_AFEA3A: FLdPr Me
  loc_AFEA3D: VCallAd Control_ID_ProgresoLbl
  loc_AFEA40: FStAdFunc var_A8
  loc_AFEA43: FLdPr var_A8
  loc_AFEA46: Me.Caption = from_stack_1
  loc_AFEA4B: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AFEA56: FFree1Ad var_A8
  loc_AFEA59: Call GeneraHTML()
  loc_AFEA5E: ImpAdLdRf MemVar_D93C84
  loc_AFEA61: CDargRef
  loc_AFEA65: FLdPr Me
  loc_AFEA68: VCallAd Control_ID_wbbReporte
  loc_AFEA6B: FStAdFunc var_A8
  loc_AFEA6E: FLdPr var_A8
  loc_AFEA71: LateIdCall
  loc_AFEA79: FFree1Ad var_A8
  loc_AFEA7C: ImpAdCallFPR4 DoEvents()
  loc_AFEA81: FLdPr Me
  loc_AFEA84: VCallAd Control_ID_wbbReporte
  loc_AFEA87: FStAdFunc var_A8
  loc_AFEA8A: FLdPr var_A8
  loc_AFEA8D: LateIdLdVar var_D0 DispID_-525 -1
  loc_AFEA94: CI4Var
  loc_AFEA96: LitI4 4
  loc_AFEA9B: NeI4
  loc_AFEA9C: FFree1Ad var_A8
  loc_AFEA9F: FFree1Var var_D0 = ""
  loc_AFEAA2: BranchT loc_AFEA7C
  loc_AFEAA5: LitVarI4
  loc_AFEAAD: PopAdLdVar
  loc_AFEAAE: LitVarI4
  loc_AFEAB6: PopAdLdVar
  loc_AFEAB7: LitVarI2 var_110, 2
  loc_AFEABC: PopAdLdVar
  loc_AFEABD: LitVar_NULL
  loc_AFEAC1: PopAdLdVar
  loc_AFEAC2: FLdPr Me
  loc_AFEAC5: VCallAd Control_ID_wbbReporte
  loc_AFEAC8: FStAdFunc var_A8
  loc_AFEACB: FLdPr var_A8
  loc_AFEACE: LateIdCall
  loc_AFEAD6: FFree1Ad var_A8
  loc_AFEAD9: FLdPr Me
  loc_AFEADC: MemLdRfVar from_stack_1.global_100
  loc_AFEADF: NextI4 var_B0, loc_AFE9BF
  loc_AFEAE4: LitVar_TRUE var_94
  loc_AFEAE7: PopAdLdVar
  loc_AFEAE8: FLdPr Me
  loc_AFEAEB: VCallAd Control_ID_pbar
  loc_AFEAEE: FStAdFunc var_A8
  loc_AFEAF1: FLdPr var_A8
  loc_AFEAF4: LateIdSt
  loc_AFEAF9: FFree1Ad var_A8
  loc_AFEAFC: ILdRf Me
  loc_AFEAFF: CastAd
  loc_AFEB02: FStAdFunc var_A8
  loc_AFEB05: FLdRfVar var_A8
  loc_AFEB08: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AFEB0D: FFree1Ad var_A8
  loc_AFEB10: ExitProcHresult
  loc_AFEB11: ImpAdLdI4 MemVar_675710
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A15850
  'Data Table: 49CAEC
  loc_A15818: FLdPr Me
  loc_A1581B: VCallAd Control_ID_statusBar
  loc_A1581E: FStAdFunc var_88
  loc_A15821: FLdPr var_88
  loc_A15824: LateIdLdVar var_98 DispID_1 0
  loc_A1582B: CStrVarTmp
  loc_A1582C: CVarStr var_A8
  loc_A1582F: PopAdLdVar
  loc_A15830: FLdPr Me
  loc_A15833: VCallAd Control_ID_statusBar
  loc_A15836: FStAdFunc var_BC
  loc_A15839: FLdPr var_BC
  loc_A1583C: LateIdSt
  loc_A15841: FFreeAd var_88 = ""
  loc_A15848: FFreeVar var_98 = ""
  loc_A1584F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '49DA28
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49DA37
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A10A1C
  'Data Table: 49CAEC
  loc_A109E8: LitI4 0
  loc_A109ED: LitI4 0
  loc_A109F2: FLdRfVar var_88
  loc_A109F5: Redim
  loc_A109FF: FLdPr Me
  loc_A10A02: VCallAd Control_ID_CuenCtctMsk
  loc_A10A05: CVarAd
  loc_A10A09: ParmAry1St
  loc_A10A0F: FLdRfVar var_88
  loc_A10A12: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A10A17: FLdRfVar var_88
  loc_A10A1A: Erase
  loc_A10A1B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B704C8
  'Data Table: 49CAEC
  loc_B7006C: FLdPr Me
  loc_B7006F: MemLdI2 bGenerado
  loc_B70072: BranchF loc_B70076
  loc_B70075: ExitProcHresult
  loc_B70076: LitVarStr var_94, "Generando reporte..."
  loc_B7007B: PopAdLdVar
  loc_B7007C: FLdPr Me
  loc_B7007F: VCallAd Control_ID_statusBar
  loc_B70082: FStAdFunc var_A8
  loc_B70085: FLdPr var_A8
  loc_B70088: LateIdSt
  loc_B7008D: FFree1Ad var_A8
  loc_B70090: LitI4 &HB
  loc_B70095: CI2I4
  loc_B70096: FLdPr Me
  loc_B70099: Me.MousePointer = from_stack_1
  loc_B7009E: FLdRfVar var_AC
  loc_B700A1: FLdPr Me
  loc_B700A4: MemLdRfVar from_stack_1.global_84
  loc_B700A7: NewIfNullPr clsliquidacion
  loc_B700AA: from_stack_1 = clsliquidacion.RecordCount
  loc_B700AF: ILdRf var_AC
  loc_B700B2: LitI4 1
  loc_B700B7: LtI4
  loc_B700B8: BranchF loc_B700C6
  loc_B700BB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B700BE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B700C3: Branch loc_B7049D
  loc_B700C6: Call Proc_314_16_9FCBD4()
  loc_B700CB: FLdPr Me
  loc_B700CE: MemLdRfVar from_stack_1.global_88
  loc_B700D1: NewIfNullAd
  loc_B700D4: FStAd var_B0 
  loc_B700D8: FLdPr Me
  loc_B700DB: MemLdStr global_116
  loc_B700DE: CR8Str
  loc_B700E0: LitI2_Byte 0
  loc_B700E2: CR8I2
  loc_B700E3: GtR4
  loc_B700E4: BranchF loc_B701E6
  loc_B700E7: LitStr "SELECT CodiInmu, TipoVenc, OrdeLita, FeacLita, BimeLiqu, sum(TotaLita) as TotaLita, boleto.PeriBole, boleto.NumeBole, "
  loc_B700EA: LitStr " boleto.FeveBole as FeveLita, cast(boleto.TotaBole as DOUBLE(10,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, liqutasa.DetaPers, CodiRyB, DetaRyB, truncate(AvalInmu,0) as AvalInmu, CallLita, "
  loc_B700ED: ConcatStr
  loc_B700EE: FStStrNoPop var_B4
  loc_B700F1: LitStr " NucaLita, BarrLita, ManzLita, CasaLita, UbicLita, LocaLita, CopoLita, CallLitaReal, NucaLitaReal, BarrLitaReal, ManzLitaReal, "
  loc_B700F4: ConcatStr
  loc_B700F5: FStStrNoPop var_B8
  loc_B700F8: LitStr " CasaLitaReal, UbicLitaReal, LocaLitaReal, CopoLitaReal, sum(if(CodiConc='13030202',TotaLita,0)) RecaBole, ifnull(p.DetaPers,'') as Vinculo, DptoLita, DistLita, SeccLita, MansLita, ParcLita, SubpLita, DigiLita, "
  loc_B700FB: ConcatStr
  loc_B700FC: FStStrNoPop var_BC
  loc_B700FF: LitStr " sum(if(CodiConc='13020101',(DescLita + ExenLita),0)) as DescLita, sum(if(CodiConc='13031500',TotaLita,0)) as BombLita, DeudLita"
  loc_B70102: ConcatStr
  loc_B70103: FStStrNoPop var_C0
  loc_B70106: LitStr " FROM liqutasa"
  loc_B70109: ConcatStr
  loc_B7010A: FStStrNoPop var_C4
  loc_B7010D: LitStr " INNER JOIN boleto ON boleto.PeriBole = liqutasa.PeriBole AND boleto.NumeBole = liqutasa.NumeBole"
  loc_B70110: ConcatStr
  loc_B70111: FStStrNoPop var_C8
  loc_B70114: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = 1 AND relacion.CuenCtct = liqutasa.CodiInmu AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_B70117: ConcatStr
  loc_B70118: FStStrNoPop var_CC
  loc_B7011B: LitStr " LEFT JOIN infogov.persona p ON p.CucuPers = relacion.CucuPers"
  loc_B7011E: ConcatStr
  loc_B7011F: FStStrNoPop var_D0
  loc_B70122: LitStr " WHERE TipoLita = 'Aforo' AND FeacLita is not null"
  loc_B70125: ConcatStr
  loc_B70126: FStStrNoPop var_D4
  loc_B70129: LitStr " AND liqutasa.PeriLiqu = "
  loc_B7012C: ConcatStr
  loc_B7012D: FStStrNoPop var_DC
  loc_B70130: FLdRfVar var_D6
  loc_B70133: FLdPr Me
  loc_B70136: MemLdRfVar from_stack_1.global_84
  loc_B70139: NewIfNullPr clsliquidacion
  loc_B7013C: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B70141: FLdI2 var_D6
  loc_B70144: CStrUI1
  loc_B70146: FStStrNoPop var_E0
  loc_B70149: ConcatStr
  loc_B7014A: FStStrNoPop var_E4
  loc_B7014D: LitStr " AND liqutasa.CodiTili = "
  loc_B70150: ConcatStr
  loc_B70151: FStStrNoPop var_EC
  loc_B70154: FLdRfVar var_E6
  loc_B70157: FLdPr Me
  loc_B7015A: MemLdRfVar from_stack_1.global_84
  loc_B7015D: NewIfNullPr clsliquidacion
  loc_B70160: from_stack_1 = clsliquidacion.CodiTili
  loc_B70165: FLdUI1
  loc_B70169: CStrI2
  loc_B7016B: FStStrNoPop var_F0
  loc_B7016E: ConcatStr
  loc_B7016F: FStStrNoPop var_F4
  loc_B70172: LitStr " AND liqutasa.NumeLiqu = "
  loc_B70175: ConcatStr
  loc_B70176: FStStrNoPop var_FC
  loc_B70179: FLdRfVar var_F6
  loc_B7017C: FLdPr Me
  loc_B7017F: MemLdRfVar from_stack_1.global_84
  loc_B70182: NewIfNullPr clsliquidacion
  loc_B70185: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B7018A: FLdI2 var_F6
  loc_B7018D: CStrUI1
  loc_B7018F: FStStrNoPop var_100
  loc_B70192: ConcatStr
  loc_B70193: FStStrNoPop var_104
  loc_B70196: LitStr " AND liqutasa.OrdeLita = "
  loc_B70199: ConcatStr
  loc_B7019A: FStStrNoPop var_108
  loc_B7019D: FLdPr Me
  loc_B701A0: MemLdStr global_116
  loc_B701A3: ConcatStr
  loc_B701A4: FStStrNoPop var_10C
  loc_B701A7: LitStr " GROUP BY OrdeLita, TipoVenc, BimeLiqu, PeriBole, NumeBole HAVING TotaLita <> 0 ORDER BY OrdeLita, PeriBole, NumeBole"
  loc_B701AA: ConcatStr
  loc_B701AB: FStStrNoPop var_110
  loc_B701AE: FLdPr var_B0
  loc_B701B1: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_B701B6: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_B701E3: Branch loc_B702FB
  loc_B701E6: LitStr "SELECT CodiInmu, TipoVenc, OrdeLita, FeacLita, BimeLiqu, sum(TotaLita) as TotaLita, boleto.PeriBole, boleto.NumeBole, "
  loc_B701E9: LitStr " boleto.FeveBole as FeveLita, cast(boleto.TotaBole as DOUBLE(10,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, liqutasa.DetaPers, CodiRyB, DetaRyB, truncate(AvalInmu,0) as AvalInmu, CallLita, "
  loc_B701EC: ConcatStr
  loc_B701ED: FStStrNoPop var_B4
  loc_B701F0: LitStr " NucaLita, BarrLita, ManzLita, CasaLita, UbicLita, LocaLita, CopoLita, CallLitaReal, NucaLitaReal, BarrLitaReal, ManzLitaReal, "
  loc_B701F3: ConcatStr
  loc_B701F4: FStStrNoPop var_B8
  loc_B701F7: LitStr " CasaLitaReal, UbicLitaReal, LocaLitaReal, CopoLitaReal, boleto.RecaBole, ifnull(p.DetaPers,'') as Vinculo, DptoLita, DistLita, SeccLita, MansLita, ParcLita, SubpLita, DigiLita, "
  loc_B701FA: ConcatStr
  loc_B701FB: FStStrNoPop var_BC
  loc_B701FE: LitStr " sum(if(CodiConc='13020101',(DescLita + ExenLita),0)) as DescLita, sum(if(CodiConc='13031500',TotaLita,0)) as BombLita, DeudLita"
  loc_B70201: ConcatStr
  loc_B70202: FStStrNoPop var_C0
  loc_B70205: LitStr " FROM liqutasa"
  loc_B70208: ConcatStr
  loc_B70209: FStStrNoPop var_C4
  loc_B7020C: LitStr " INNER JOIN boleto ON boleto.PeriBole = liqutasa.PeriBole AND boleto.NumeBole = liqutasa.NumeBole"
  loc_B7020F: ConcatStr
  loc_B70210: FStStrNoPop var_C8
  loc_B70213: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = 1 AND relacion.CuenCtct = liqutasa.CodiInmu AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_B70216: ConcatStr
  loc_B70217: FStStrNoPop var_CC
  loc_B7021A: LitStr " LEFT JOIN infogov.persona p ON p.CucuPers = relacion.CucuPers"
  loc_B7021D: ConcatStr
  loc_B7021E: FStStrNoPop var_D0
  loc_B70221: LitStr " WHERE TipoLita = 'Aforo' AND FeacLita is not null"
  loc_B70224: ConcatStr
  loc_B70225: FStStrNoPop var_D4
  loc_B70228: LitStr " AND liqutasa.PeriLiqu = "
  loc_B7022B: ConcatStr
  loc_B7022C: FStStrNoPop var_DC
  loc_B7022F: FLdRfVar var_D6
  loc_B70232: FLdPr Me
  loc_B70235: MemLdRfVar from_stack_1.global_84
  loc_B70238: NewIfNullPr clsliquidacion
  loc_B7023B: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B70240: FLdI2 var_D6
  loc_B70243: CStrUI1
  loc_B70245: FStStrNoPop var_E0
  loc_B70248: ConcatStr
  loc_B70249: FStStrNoPop var_E4
  loc_B7024C: LitStr " AND liqutasa.CodiTili = "
  loc_B7024F: ConcatStr
  loc_B70250: FStStrNoPop var_EC
  loc_B70253: FLdRfVar var_E6
  loc_B70256: FLdPr Me
  loc_B70259: MemLdRfVar from_stack_1.global_84
  loc_B7025C: NewIfNullPr clsliquidacion
  loc_B7025F: from_stack_1 = clsliquidacion.CodiTili
  loc_B70264: FLdUI1
  loc_B70268: CStrI2
  loc_B7026A: FStStrNoPop var_F0
  loc_B7026D: ConcatStr
  loc_B7026E: FStStrNoPop var_F4
  loc_B70271: LitStr " AND liqutasa.NumeLiqu = "
  loc_B70274: ConcatStr
  loc_B70275: FStStrNoPop var_FC
  loc_B70278: FLdRfVar var_F6
  loc_B7027B: FLdPr Me
  loc_B7027E: MemLdRfVar from_stack_1.global_84
  loc_B70281: NewIfNullPr clsliquidacion
  loc_B70284: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B70289: FLdI2 var_F6
  loc_B7028C: CStrUI1
  loc_B7028E: FStStrNoPop var_100
  loc_B70291: ConcatStr
  loc_B70292: FStStrNoPop var_104
  loc_B70295: LitStr " AND liqutasa.CodiInmu = "
  loc_B70298: ConcatStr
  loc_B70299: FStStrNoPop var_108
  loc_B7029C: FLdPr Me
  loc_B7029F: VCallAd Control_ID_CuenCtctMsk
  loc_B702A2: FStAdFunc var_A8
  loc_B702A5: FLdPr var_A8
  loc_B702A8: LateIdLdVar var_120 DispID_22 0
  loc_B702AF: CStrVarTmp
  loc_B702B0: FStStrNoPop var_10C
  loc_B702B3: ConcatStr
  loc_B702B4: FStStrNoPop var_110
  loc_B702B7: LitStr " GROUP BY OrdeLita, TipoVenc, BimeLiqu, PeriBole, NumeBole HAVING TotaLita <> 0 ORDER BY OrdeLita, PeriBole, NumeBole"
  loc_B702BA: ConcatStr
  loc_B702BB: FStStrNoPop var_124
  loc_B702BE: FLdPr var_B0
  loc_B702C1: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_B702C6: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_B702F5: FFree1Ad var_A8
  loc_B702F8: FFree1Var var_120 = ""
  loc_B702FB: FLdRfVar var_AC
  loc_B702FE: FLdPr var_B0
  loc_B70301: from_stack_1 = clsliqutasa.RecordCount
  loc_B70306: ILdRf var_AC
  loc_B70309: LitI4 1
  loc_B7030E: LtI4
  loc_B7030F: BranchF loc_B7031D
  loc_B70312: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B70315: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7031A: Branch loc_B7049D
  loc_B7031D: LitI4 0
  loc_B70322: LitI4 0
  loc_B70327: FLdPr Me
  loc_B7032A: MemLdRfVar from_stack_1.global_96
  loc_B7032D: Redim
  loc_B70337: LitI4 0
  loc_B7033C: FLdPr Me
  loc_B7033F: MemStI4 global_100
  loc_B70342: LitI2_Byte 0
  loc_B70344: FLdPr Me
  loc_B70347: MemStI2 global_106
  loc_B7034A: FLdPr var_B0
  loc_B7034D: Call clsliqutasa.MoveFirst()
  loc_B70352: FLdRfVar var_AC
  loc_B70355: FLdPr var_B0
  loc_B70358: from_stack_1 = clsliqutasa.RecordCount
  loc_B7035D: ILdRf var_AC
  loc_B70360: CR8I4
  loc_B70361: CVarR4
  loc_B70365: PopAdLdVar
  loc_B70366: FLdPr Me
  loc_B70369: VCallAd Control_ID_pbar
  loc_B7036C: FStAdFunc var_A8
  loc_B7036F: FLdPr var_A8
  loc_B70372: LateIdSt
  loc_B70377: FFree1Ad var_A8
  loc_B7037A: LitVar_TRUE var_94
  loc_B7037D: PopAdLdVar
  loc_B7037E: FLdPr Me
  loc_B70381: VCallAd Control_ID_pbar
  loc_B70384: FStAdFunc var_A8
  loc_B70387: FLdPr var_A8
  loc_B7038A: LateIdSt
  loc_B7038F: FFree1Ad var_A8
  loc_B70392: FLdRfVar var_D6
  loc_B70395: FLdPr var_B0
  loc_B70398: from_stack_1 = clsliqutasa.EOF
  loc_B7039D: FLdI2 var_D6
  loc_B703A0: NotI4
  loc_B703A1: BranchF loc_B70476
  loc_B703A4: FLdRfVar var_AC
  loc_B703A7: FLdPr var_B0
  loc_B703AA: from_stack_1 = clsliqutasa.AbsolutePosition
  loc_B703AF: ILdRf var_AC
  loc_B703B2: CR8I4
  loc_B703B3: CVarR4
  loc_B703B7: PopAdLdVar
  loc_B703B8: FLdPr Me
  loc_B703BB: VCallAd Control_ID_pbar
  loc_B703BE: FStAdFunc var_A8
  loc_B703C1: FLdPr var_A8
  loc_B703C4: LateIdSt
  loc_B703C9: FFree1Ad var_A8
  loc_B703CC: FLdRfVar var_AC
  loc_B703CF: FLdPr var_B0
  loc_B703D2: from_stack_1 = clsliqutasa.AbsolutePosition
  loc_B703D7: FLdRfVar var_128
  loc_B703DA: FLdPr var_B0
  loc_B703DD: from_stack_1 = clsliqutasa.RecordCount
  loc_B703E2: LitI4 1
  loc_B703E7: LitI4 1
  loc_B703EC: LitVarStr var_A4, "0" & Chr(37)
  loc_B703F1: FStVarCopyObj var_138
  loc_B703F4: FLdRfVar var_138
  loc_B703F7: ILdRf var_AC
  loc_B703FA: CR8I4
  loc_B703FB: ILdRf var_128
  loc_B703FE: CR8I4
  loc_B703FF: DivR8
  loc_B70400: CVarR8
  loc_B70404: ImpAdCallI2 Format$(, )
  loc_B70409: FStStrNoPop var_B4
  loc_B7040C: FLdPr Me
  loc_B7040F: VCallAd Control_ID_ProgresoLbl
  loc_B70412: FStAdFunc var_A8
  loc_B70415: FLdPr var_A8
  loc_B70418: Me.Caption = from_stack_1
  loc_B7041D: FFree1Str var_B4
  loc_B70420: FFree1Ad var_A8
  loc_B70423: FFreeVar var_120 = ""
  loc_B7042A: FLdPr Me
  loc_B7042D: MemLdStr global_100
  loc_B70430: FLdPr Me
  loc_B70433: MemLdStr global_96
  loc_B70436: Ary1LdPr
  loc_B70437: MemLdStr global_76
  loc_B7043A: FLdRfVar var_AC
  loc_B7043D: FLdPr var_B0
  loc_B70440: from_stack_1 = clsliqutasa.CodiInmu
  loc_B70445: ILdRf var_AC
  loc_B70448: CStrI4
  loc_B7044A: FStStrNoPop var_B4
  loc_B7044D: NeStr
  loc_B7044F: FFree1Str var_B4
  loc_B70452: BranchF loc_B7045D
  loc_B70455: Call Proc_314_17_BC0A50()
  loc_B7045A: Branch loc_B70462
  loc_B7045D: Call Proc_314_18_C41354()
  loc_B70462: FLdPr Me
  loc_B70465: MemLdI2 global_106
  loc_B70468: BranchF loc_B7046E
  loc_B7046B: Branch loc_B7049D
  loc_B7046E: ImpAdCallFPR4 DoEvents()
  loc_B70473: Branch loc_B70392
  loc_B70476: LitVar_FALSE
  loc_B7047A: PopAdLdVar
  loc_B7047B: FLdPr Me
  loc_B7047E: VCallAd Control_ID_pbar
  loc_B70481: FStAdFunc var_A8
  loc_B70484: FLdPr var_A8
  loc_B70487: LateIdSt
  loc_B7048C: FFree1Ad var_A8
  loc_B7048F: LitNothing
  loc_B70491: FStAd var_B0 
  loc_B70495: LitI2_Byte &HFF
  loc_B70497: FLdPr Me
  loc_B7049A: MemStI2 bGenerado
  loc_B7049D: LitI4 0
  loc_B704A2: CI2I4
  loc_B704A3: FLdPr Me
  loc_B704A6: Me.MousePointer = from_stack_1
  loc_B704AB: LitVarStr var_94, vbNullString
  loc_B704B0: PopAdLdVar
  loc_B704B1: FLdPr Me
  loc_B704B4: VCallAd Control_ID_statusBar
  loc_B704B7: FStAdFunc var_A8
  loc_B704BA: FLdPr var_A8
  loc_B704BD: LateIdSt
  loc_B704C2: FFree1Ad var_A8
  loc_B704C5: ExitProcHresult
  loc_B704C6: LitVar_TRUE arg_7403
End Sub

Public Sub GeneraHTML() 'A6724C
  'Data Table: 49CAEC
  loc_A671DC: FLdRfVar var_88
  loc_A671DF: LitI2_Byte 0
  loc_A671E1: LitI2_Byte &HFF
  loc_A671E3: ImpAdLdI4 MemVar_D93C84
  loc_A671E6: FLdPr Me
  loc_A671E9: MemLdRfVar from_stack_1.global_56
  loc_A671EC: NewIfNullPr IFileSystem3
  loc_A671EF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A671F4: ILdRf var_88
  loc_A671F7: FLdPr Me
  loc_A671FA: MemStVarAd
  loc_A671FE: FFree1Ad var_88
  loc_A67201: LitI2_Byte 0
  loc_A67203: ImpAdStI2 MemVar_D93C8A
  loc_A67206: Call Proc_314_19_C223A4()
  loc_A6720B: Call Proc_314_20_BE88C8()
  loc_A67210: Call Proc_314_21_B137A4()
  loc_A67215: Call Proc_314_22_BE2708()
  loc_A6721A: Call Proc_314_23_B0741C()
  loc_A6721F: Call Proc_314_24_9F3BEC()
  loc_A67224: FLdPr Me
  loc_A67227: MemLdRfVar from_stack_1.global_60
  loc_A6722A: LdPrVar
  loc_A6722C: LateMemCall
  loc_A67232: FLdPr Me
  loc_A67235: MemLdStr global_76
  loc_A67238: LitStr vbNullString
  loc_A6723B: EqStr
  loc_A6723D: BranchF loc_A67248
  loc_A67240: LitStr vbNullString
  loc_A67243: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A67248: ExitProcHresult
End Sub

Private Function Proc_314_15_9BA218(arg_C) '9BA218
  'Data Table: 49CAEC
  loc_9BA208: ZeroRetVal
  loc_9BA20A: ILdRf arg_C
  loc_9BA20D: CStrI4
  loc_9BA20F: FStStr var_88
  loc_9BA212: ExitProcCbHresult
End Function

Private Function Proc_314_16_9FCBD4() '9FCBD4
  'Data Table: 49CAEC
  loc_9FCBA8: FLdPr Me
  loc_9FCBAB: MemLdStr global_148
  loc_9FCBAE: CStrI4
  loc_9FCBB0: FStStrNoPop var_88
  loc_9FCBB3: FLdPr Me
  loc_9FCBB6: MemStStrCopy
  loc_9FCBBA: FFree1Str var_88
  loc_9FCBBD: FLdPr Me
  loc_9FCBC0: MemLdStr global_148
  loc_9FCBC3: CStrI4
  loc_9FCBC5: FStStrNoPop var_88
  loc_9FCBC8: FLdPr Me
  loc_9FCBCB: MemStStrCopy
  loc_9FCBCF: FFree1Str var_88
  loc_9FCBD2: ExitProcHresult
End Function

Private Function Proc_314_17_BC0A50() 'BC0A50
  'Data Table: 49CAEC
  loc_BC0394: FLdPr Me
  loc_BC0397: MemLdStr global_100
  loc_BC039A: LitI4 1
  loc_BC039F: AddI4
  loc_BC03A0: FLdPr Me
  loc_BC03A3: MemStI4 global_100
  loc_BC03A6: LitI2_Byte 0
  loc_BC03A8: CUI1I2
  loc_BC03AA: FLdPr Me
  loc_BC03AD: MemStUI1
  loc_BC03B1: LitI4 0
  loc_BC03B6: FLdPr Me
  loc_BC03B9: MemLdStr global_100
  loc_BC03BC: FLdPr Me
  loc_BC03BF: MemLdRfVar from_stack_1.global_96
  loc_BC03C2: RedimPreserve
  loc_BC03CC: FLdPr Me
  loc_BC03CF: MemLdRfVar from_stack_1.global_88
  loc_BC03D2: NewIfNullAd
  loc_BC03D5: FStAd var_88 
  loc_BC03D9: FLdRfVar var_8C
  loc_BC03DC: FLdPr var_88
  loc_BC03DF: from_stack_1 = clsliqutasa.CucuPers
  loc_BC03E4: LitI2_Byte 0
  loc_BC03E6: LitVar_Missing var_C0
  loc_BC03E9: LitI2_Byte 0
  loc_BC03EB: FLdZeroAd var_8C
  loc_BC03EE: CVarStr var_A0
  loc_BC03F1: PopAdLdVar
  loc_BC03F2: FLdPr Me
  loc_BC03F5: MemLdStr global_100
  loc_BC03F8: FLdPr Me
  loc_BC03FB: MemLdStr global_96
  loc_BC03FE: AryLock
  loc_BC0401: Ary1LdPr
  loc_BC0402: MemLdRfVar from_stack_1.global_0
  loc_BC0405: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC040A: AryUnlock
  loc_BC040D: FFreeVar var_A0 = ""
  loc_BC0414: FLdRfVar var_A0
  loc_BC0417: FLdPr var_88
  loc_BC041A: from_stack_1 = clsliqutasa.DetaPers
  loc_BC041F: LitI2_Byte 0
  loc_BC0421: LitVar_Missing var_C0
  loc_BC0424: LitI2_Byte 0
  loc_BC0426: FLdVar var_A0
  loc_BC042A: FLdPr Me
  loc_BC042D: MemLdStr global_100
  loc_BC0430: FLdPr Me
  loc_BC0433: MemLdStr global_96
  loc_BC0436: AryLock
  loc_BC0439: Ary1LdPr
  loc_BC043A: MemLdRfVar from_stack_1.global_4
  loc_BC043D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0442: AryUnlock
  loc_BC0445: FFreeVar var_A0 = ""
  loc_BC044C: FLdRfVar var_A0
  loc_BC044F: FLdPr var_88
  loc_BC0452: from_stack_1 = clsliqutasa.Vinculo
  loc_BC0457: LitI2_Byte 0
  loc_BC0459: LitVar_Missing var_C0
  loc_BC045C: LitI2_Byte 0
  loc_BC045E: FLdVar var_A0
  loc_BC0462: FLdPr Me
  loc_BC0465: MemLdStr global_100
  loc_BC0468: FLdPr Me
  loc_BC046B: MemLdStr global_96
  loc_BC046E: AryLock
  loc_BC0471: Ary1LdPr
  loc_BC0472: MemLdRfVar from_stack_1.global_8
  loc_BC0475: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC047A: AryUnlock
  loc_BC047D: FFreeVar var_A0 = ""
  loc_BC0484: FLdRfVar var_8C
  loc_BC0487: FLdPr var_88
  loc_BC048A: from_stack_1 = clsliqutasa.CallLita
  loc_BC048F: LitI2_Byte 0
  loc_BC0491: LitVar_Missing var_C0
  loc_BC0494: LitI2_Byte 0
  loc_BC0496: FLdZeroAd var_8C
  loc_BC0499: CVarStr var_A0
  loc_BC049C: PopAdLdVar
  loc_BC049D: FLdPr Me
  loc_BC04A0: MemLdStr global_100
  loc_BC04A3: FLdPr Me
  loc_BC04A6: MemLdStr global_96
  loc_BC04A9: AryLock
  loc_BC04AC: Ary1LdPr
  loc_BC04AD: MemLdRfVar from_stack_1.global_12
  loc_BC04B0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC04B5: AryUnlock
  loc_BC04B8: FFreeVar var_A0 = ""
  loc_BC04BF: FLdRfVar var_C4
  loc_BC04C2: FLdPr var_88
  loc_BC04C5: from_stack_1 = clsliqutasa.NucaLita
  loc_BC04CA: LitI2_Byte 0
  loc_BC04CC: LitVar_Missing var_A0
  loc_BC04CF: LitI2_Byte 0
  loc_BC04D1: ILdRf var_C4
  loc_BC04D4: CVarI4
  loc_BC04D8: PopAdLdVar
  loc_BC04D9: FLdPr Me
  loc_BC04DC: MemLdStr global_100
  loc_BC04DF: FLdPr Me
  loc_BC04E2: MemLdStr global_96
  loc_BC04E5: AryLock
  loc_BC04E8: Ary1LdPr
  loc_BC04E9: MemLdRfVar from_stack_1.global_16
  loc_BC04EC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC04F1: AryUnlock
  loc_BC04F4: FFree1Var var_A0 = ""
  loc_BC04F7: FLdRfVar var_8C
  loc_BC04FA: FLdPr var_88
  loc_BC04FD: from_stack_1 = clsliqutasa.BarrLita
  loc_BC0502: LitI2_Byte 0
  loc_BC0504: LitVar_Missing var_C0
  loc_BC0507: LitI2_Byte 0
  loc_BC0509: FLdZeroAd var_8C
  loc_BC050C: CVarStr var_A0
  loc_BC050F: PopAdLdVar
  loc_BC0510: FLdPr Me
  loc_BC0513: MemLdStr global_100
  loc_BC0516: FLdPr Me
  loc_BC0519: MemLdStr global_96
  loc_BC051C: AryLock
  loc_BC051F: Ary1LdPr
  loc_BC0520: MemLdRfVar from_stack_1.global_20
  loc_BC0523: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0528: AryUnlock
  loc_BC052B: FFreeVar var_A0 = ""
  loc_BC0532: FLdRfVar var_8C
  loc_BC0535: FLdPr var_88
  loc_BC0538: from_stack_1 = clsliqutasa.ManzLita
  loc_BC053D: LitI2_Byte 0
  loc_BC053F: LitVar_Missing var_C0
  loc_BC0542: LitI2_Byte 0
  loc_BC0544: FLdZeroAd var_8C
  loc_BC0547: CVarStr var_A0
  loc_BC054A: PopAdLdVar
  loc_BC054B: FLdPr Me
  loc_BC054E: MemLdStr global_100
  loc_BC0551: FLdPr Me
  loc_BC0554: MemLdStr global_96
  loc_BC0557: AryLock
  loc_BC055A: Ary1LdPr
  loc_BC055B: MemLdRfVar from_stack_1.global_24
  loc_BC055E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0563: AryUnlock
  loc_BC0566: FFreeVar var_A0 = ""
  loc_BC056D: FLdRfVar var_8C
  loc_BC0570: FLdPr var_88
  loc_BC0573: from_stack_1 = clsliqutasa.CasaLita
  loc_BC0578: LitI2_Byte 0
  loc_BC057A: LitVar_Missing var_C0
  loc_BC057D: LitI2_Byte 0
  loc_BC057F: FLdZeroAd var_8C
  loc_BC0582: CVarStr var_A0
  loc_BC0585: PopAdLdVar
  loc_BC0586: FLdPr Me
  loc_BC0589: MemLdStr global_100
  loc_BC058C: FLdPr Me
  loc_BC058F: MemLdStr global_96
  loc_BC0592: AryLock
  loc_BC0595: Ary1LdPr
  loc_BC0596: MemLdRfVar from_stack_1.global_28
  loc_BC0599: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC059E: AryUnlock
  loc_BC05A1: FFreeVar var_A0 = ""
  loc_BC05A8: FLdRfVar var_8C
  loc_BC05AB: FLdPr var_88
  loc_BC05AE: from_stack_1 = clsliqutasa.UbicLita
  loc_BC05B3: LitI2_Byte 0
  loc_BC05B5: LitVar_Missing var_C0
  loc_BC05B8: LitI2_Byte 0
  loc_BC05BA: FLdZeroAd var_8C
  loc_BC05BD: CVarStr var_A0
  loc_BC05C0: PopAdLdVar
  loc_BC05C1: FLdPr Me
  loc_BC05C4: MemLdStr global_100
  loc_BC05C7: FLdPr Me
  loc_BC05CA: MemLdStr global_96
  loc_BC05CD: AryLock
  loc_BC05D0: Ary1LdPr
  loc_BC05D1: MemLdRfVar from_stack_1.global_32
  loc_BC05D4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC05D9: AryUnlock
  loc_BC05DC: FFreeVar var_A0 = ""
  loc_BC05E3: FLdRfVar var_8C
  loc_BC05E6: FLdPr var_88
  loc_BC05E9: from_stack_1 = clsliqutasa.LocaLita
  loc_BC05EE: LitI2_Byte 0
  loc_BC05F0: LitVar_Missing var_C0
  loc_BC05F3: LitI2_Byte 0
  loc_BC05F5: FLdZeroAd var_8C
  loc_BC05F8: CVarStr var_A0
  loc_BC05FB: PopAdLdVar
  loc_BC05FC: FLdPr Me
  loc_BC05FF: MemLdStr global_100
  loc_BC0602: FLdPr Me
  loc_BC0605: MemLdStr global_96
  loc_BC0608: AryLock
  loc_BC060B: Ary1LdPr
  loc_BC060C: MemLdRfVar from_stack_1.global_36
  loc_BC060F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0614: AryUnlock
  loc_BC0617: FFreeVar var_A0 = ""
  loc_BC061E: FLdRfVar var_8C
  loc_BC0621: FLdPr var_88
  loc_BC0624: from_stack_1 = clsliqutasa.CopoLita
  loc_BC0629: LitI2_Byte 0
  loc_BC062B: LitVar_Missing var_C0
  loc_BC062E: LitI2_Byte 0
  loc_BC0630: FLdZeroAd var_8C
  loc_BC0633: CVarStr var_A0
  loc_BC0636: PopAdLdVar
  loc_BC0637: FLdPr Me
  loc_BC063A: MemLdStr global_100
  loc_BC063D: FLdPr Me
  loc_BC0640: MemLdStr global_96
  loc_BC0643: AryLock
  loc_BC0646: Ary1LdPr
  loc_BC0647: MemLdRfVar from_stack_1.global_40
  loc_BC064A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC064F: AryUnlock
  loc_BC0652: FFreeVar var_A0 = ""
  loc_BC0659: FLdRfVar var_A0
  loc_BC065C: FLdPr var_88
  loc_BC065F: from_stack_1 = clsliqutasa.CallLitaReal
  loc_BC0664: LitI2_Byte 0
  loc_BC0666: LitVar_Missing var_C0
  loc_BC0669: LitI2_Byte 0
  loc_BC066B: FLdVar var_A0
  loc_BC066F: FLdPr Me
  loc_BC0672: MemLdStr global_100
  loc_BC0675: FLdPr Me
  loc_BC0678: MemLdStr global_96
  loc_BC067B: AryLock
  loc_BC067E: Ary1LdPr
  loc_BC067F: MemLdRfVar from_stack_1.global_44
  loc_BC0682: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0687: AryUnlock
  loc_BC068A: FFreeVar var_A0 = ""
  loc_BC0691: FLdRfVar var_8C
  loc_BC0694: FLdPr var_88
  loc_BC0697: from_stack_1 = clsliqutasa.NucaLitaReal
  loc_BC069C: LitI2_Byte 0
  loc_BC069E: LitVar_Missing var_C0
  loc_BC06A1: LitI2_Byte 0
  loc_BC06A3: FLdZeroAd var_8C
  loc_BC06A6: CVarStr var_A0
  loc_BC06A9: PopAdLdVar
  loc_BC06AA: FLdPr Me
  loc_BC06AD: MemLdStr global_100
  loc_BC06B0: FLdPr Me
  loc_BC06B3: MemLdStr global_96
  loc_BC06B6: AryLock
  loc_BC06B9: Ary1LdPr
  loc_BC06BA: MemLdRfVar from_stack_1.global_48
  loc_BC06BD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC06C2: AryUnlock
  loc_BC06C5: FFreeVar var_A0 = ""
  loc_BC06CC: FLdRfVar var_8C
  loc_BC06CF: FLdPr var_88
  loc_BC06D2: from_stack_1 = clsliqutasa.BarrLitaReal
  loc_BC06D7: LitI2_Byte 0
  loc_BC06D9: LitVar_Missing var_C0
  loc_BC06DC: LitI2_Byte 0
  loc_BC06DE: FLdZeroAd var_8C
  loc_BC06E1: CVarStr var_A0
  loc_BC06E4: PopAdLdVar
  loc_BC06E5: FLdPr Me
  loc_BC06E8: MemLdStr global_100
  loc_BC06EB: FLdPr Me
  loc_BC06EE: MemLdStr global_96
  loc_BC06F1: AryLock
  loc_BC06F4: Ary1LdPr
  loc_BC06F5: MemLdRfVar from_stack_1.bGenerado
  loc_BC06F8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC06FD: AryUnlock
  loc_BC0700: FFreeVar var_A0 = ""
  loc_BC0707: FLdRfVar var_8C
  loc_BC070A: FLdPr var_88
  loc_BC070D: from_stack_1 = clsliqutasa.ManzLitaReal
  loc_BC0712: LitI2_Byte 0
  loc_BC0714: LitVar_Missing var_C0
  loc_BC0717: LitI2_Byte 0
  loc_BC0719: FLdZeroAd var_8C
  loc_BC071C: CVarStr var_A0
  loc_BC071F: PopAdLdVar
  loc_BC0720: FLdPr Me
  loc_BC0723: MemLdStr global_100
  loc_BC0726: FLdPr Me
  loc_BC0729: MemLdStr global_96
  loc_BC072C: AryLock
  loc_BC072F: Ary1LdPr
  loc_BC0730: MemLdRfVar from_stack_1.global_56
  loc_BC0733: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0738: AryUnlock
  loc_BC073B: FFreeVar var_A0 = ""
  loc_BC0742: FLdRfVar var_8C
  loc_BC0745: FLdPr var_88
  loc_BC0748: from_stack_1 = clsliqutasa.CasaLitaReal
  loc_BC074D: LitI2_Byte 0
  loc_BC074F: LitVar_Missing var_C0
  loc_BC0752: LitI2_Byte 0
  loc_BC0754: FLdZeroAd var_8C
  loc_BC0757: CVarStr var_A0
  loc_BC075A: PopAdLdVar
  loc_BC075B: FLdPr Me
  loc_BC075E: MemLdStr global_100
  loc_BC0761: FLdPr Me
  loc_BC0764: MemLdStr global_96
  loc_BC0767: AryLock
  loc_BC076A: Ary1LdPr
  loc_BC076B: MemLdRfVar from_stack_1.global_60
  loc_BC076E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0773: AryUnlock
  loc_BC0776: FFreeVar var_A0 = ""
  loc_BC077D: FLdRfVar var_8C
  loc_BC0780: FLdPr var_88
  loc_BC0783: from_stack_1 = clsliqutasa.UbicLitaReal
  loc_BC0788: LitI2_Byte 0
  loc_BC078A: LitVar_Missing var_C0
  loc_BC078D: LitI2_Byte 0
  loc_BC078F: FLdZeroAd var_8C
  loc_BC0792: CVarStr var_A0
  loc_BC0795: PopAdLdVar
  loc_BC0796: FLdPr Me
  loc_BC0799: MemLdStr global_100
  loc_BC079C: FLdPr Me
  loc_BC079F: MemLdStr global_96
  loc_BC07A2: AryLock
  loc_BC07A5: Ary1LdPr
  loc_BC07A6: MemLdRfVar from_stack_1.global_64
  loc_BC07A9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC07AE: AryUnlock
  loc_BC07B1: FFreeVar var_A0 = ""
  loc_BC07B8: FLdRfVar var_8C
  loc_BC07BB: FLdPr var_88
  loc_BC07BE: from_stack_1 = clsliqutasa.LocaLitaReal
  loc_BC07C3: LitI2_Byte 0
  loc_BC07C5: LitVar_Missing var_C0
  loc_BC07C8: LitI2_Byte 0
  loc_BC07CA: FLdZeroAd var_8C
  loc_BC07CD: CVarStr var_A0
  loc_BC07D0: PopAdLdVar
  loc_BC07D1: FLdPr Me
  loc_BC07D4: MemLdStr global_100
  loc_BC07D7: FLdPr Me
  loc_BC07DA: MemLdStr global_96
  loc_BC07DD: AryLock
  loc_BC07E0: Ary1LdPr
  loc_BC07E1: MemLdRfVar from_stack_1.global_68
  loc_BC07E4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC07E9: AryUnlock
  loc_BC07EC: FFreeVar var_A0 = ""
  loc_BC07F3: FLdRfVar var_8C
  loc_BC07F6: FLdPr var_88
  loc_BC07F9: from_stack_1 = clsliqutasa.CopoLitaReal
  loc_BC07FE: LitI2_Byte 0
  loc_BC0800: LitVar_Missing var_C0
  loc_BC0803: LitI2_Byte 0
  loc_BC0805: FLdZeroAd var_8C
  loc_BC0808: CVarStr var_A0
  loc_BC080B: PopAdLdVar
  loc_BC080C: FLdPr Me
  loc_BC080F: MemLdStr global_100
  loc_BC0812: FLdPr Me
  loc_BC0815: MemLdStr global_96
  loc_BC0818: AryLock
  loc_BC081B: Ary1LdPr
  loc_BC081C: MemLdRfVar from_stack_1.global_72
  loc_BC081F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0824: AryUnlock
  loc_BC0827: FFreeVar var_A0 = ""
  loc_BC082E: FLdRfVar var_C4
  loc_BC0831: FLdPr var_88
  loc_BC0834: from_stack_1 = clsliqutasa.CodiInmu
  loc_BC0839: LitI2_Byte 0
  loc_BC083B: LitVar_Missing var_A0
  loc_BC083E: LitI2_Byte 0
  loc_BC0840: ILdRf var_C4
  loc_BC0843: CVarI4
  loc_BC0847: PopAdLdVar
  loc_BC0848: FLdPr Me
  loc_BC084B: MemLdStr global_100
  loc_BC084E: FLdPr Me
  loc_BC0851: MemLdStr global_96
  loc_BC0854: AryLock
  loc_BC0857: Ary1LdPr
  loc_BC0858: MemLdRfVar from_stack_1.global_76
  loc_BC085B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0860: AryUnlock
  loc_BC0863: FFree1Var var_A0 = ""
  loc_BC0866: FLdRfVar var_C4
  loc_BC0869: FLdPr var_88
  loc_BC086C: from_stack_1 = clsliqutasa.OrdeLita
  loc_BC0871: LitI2_Byte 0
  loc_BC0873: LitVar_Missing var_A0
  loc_BC0876: LitI2_Byte 0
  loc_BC0878: ILdRf var_C4
  loc_BC087B: CVarI4
  loc_BC087F: PopAdLdVar
  loc_BC0880: FLdPr Me
  loc_BC0883: MemLdStr global_100
  loc_BC0886: FLdPr Me
  loc_BC0889: MemLdStr global_96
  loc_BC088C: AryLock
  loc_BC088F: Ary1LdPr
  loc_BC0890: MemLdRfVar from_stack_1.global_80
  loc_BC0893: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0898: AryUnlock
  loc_BC089B: FFree1Var var_A0 = ""
  loc_BC089E: FLdRfVar var_A0
  loc_BC08A1: FLdPr var_88
  loc_BC08A4: from_stack_1 = clsliqutasa.CodiUsua
  loc_BC08A9: LitI2_Byte 0
  loc_BC08AB: LitVar_Missing var_C0
  loc_BC08AE: LitI2_Byte 0
  loc_BC08B0: FLdVar var_A0
  loc_BC08B4: FLdPr Me
  loc_BC08B7: MemLdStr global_100
  loc_BC08BA: FLdPr Me
  loc_BC08BD: MemLdStr global_96
  loc_BC08C0: AryLock
  loc_BC08C3: Ary1LdPr
  loc_BC08C4: MemLdRfVar from_stack_1.global_84
  loc_BC08C7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC08CC: AryUnlock
  loc_BC08CF: FFreeVar var_A0 = ""
  loc_BC08D6: FLdRfVar var_8C
  loc_BC08D9: FLdPr var_88
  loc_BC08DC: from_stack_1 = clsliqutasa.CodiRyB
  loc_BC08E1: LitI2_Byte 0
  loc_BC08E3: LitVar_Missing var_C0
  loc_BC08E6: LitI2_Byte 0
  loc_BC08E8: FLdZeroAd var_8C
  loc_BC08EB: CVarStr var_A0
  loc_BC08EE: PopAdLdVar
  loc_BC08EF: FLdPr Me
  loc_BC08F2: MemLdStr global_100
  loc_BC08F5: FLdPr Me
  loc_BC08F8: MemLdStr global_96
  loc_BC08FB: AryLock
  loc_BC08FE: Ary1LdPr
  loc_BC08FF: MemLdRfVar from_stack_1.global_88
  loc_BC0902: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0907: AryUnlock
  loc_BC090A: FFreeVar var_A0 = ""
  loc_BC0911: FLdRfVar var_8C
  loc_BC0914: FLdPr var_88
  loc_BC0917: from_stack_1 = clsliqutasa.DetaRyB
  loc_BC091C: LitI2_Byte 0
  loc_BC091E: LitVar_Missing var_C0
  loc_BC0921: LitI2_Byte 0
  loc_BC0923: FLdZeroAd var_8C
  loc_BC0926: CVarStr var_A0
  loc_BC0929: PopAdLdVar
  loc_BC092A: FLdPr Me
  loc_BC092D: MemLdStr global_100
  loc_BC0930: FLdPr Me
  loc_BC0933: MemLdStr global_96
  loc_BC0936: AryLock
  loc_BC0939: Ary1LdPr
  loc_BC093A: MemLdRfVar from_stack_1.global_92
  loc_BC093D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0942: AryUnlock
  loc_BC0945: FFreeVar var_A0 = ""
  loc_BC094C: FLdRfVar var_8C
  loc_BC094F: FLdPr var_88
  loc_BC0952: from_stack_1 = clsliqutasa.AvalInmu
  loc_BC0957: LitI2_Byte 0
  loc_BC0959: LitVar_Missing var_C0
  loc_BC095C: LitI2_Byte 0
  loc_BC095E: FLdZeroAd var_8C
  loc_BC0961: CVarStr var_A0
  loc_BC0964: PopAdLdVar
  loc_BC0965: FLdPr Me
  loc_BC0968: MemLdStr global_100
  loc_BC096B: FLdPr Me
  loc_BC096E: MemLdStr global_96
  loc_BC0971: AryLock
  loc_BC0974: Ary1LdPr
  loc_BC0975: MemLdRfVar from_stack_1.global_96
  loc_BC0978: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC097D: AryUnlock
  loc_BC0980: FFreeVar var_A0 = ""
  loc_BC0987: FLdRfVar var_A0
  loc_BC098A: FLdPr var_88
  loc_BC098D: from_stack_1 = clsliqutasa.NomeLita
  loc_BC0992: LitI2_Byte 0
  loc_BC0994: LitVar_Missing var_C0
  loc_BC0997: LitI2_Byte 0
  loc_BC0999: FLdVar var_A0
  loc_BC099D: FLdPr Me
  loc_BC09A0: MemLdStr global_100
  loc_BC09A3: FLdPr Me
  loc_BC09A6: MemLdStr global_96
  loc_BC09A9: AryLock
  loc_BC09AC: Ary1LdPr
  loc_BC09AD: MemLdRfVar from_stack_1.global_100
  loc_BC09B0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC09B5: AryUnlock
  loc_BC09B8: FFreeVar var_A0 = ""
  loc_BC09BF: FLdRfVar var_DC
  loc_BC09C2: FLdPr var_88
  loc_BC09C5: from_stack_1 = clsliqutasa.DeudLita
  loc_BC09CA: LitI2_Byte 0
  loc_BC09CC: LitVar_Missing var_A0
  loc_BC09CF: LitI2_Byte &HFF
  loc_BC09D1: FLdFPR8 var_DC
  loc_BC09D4: CVarR8
  loc_BC09D8: PopAdLdVar
  loc_BC09D9: FLdPr Me
  loc_BC09DC: MemLdStr global_100
  loc_BC09DF: FLdPr Me
  loc_BC09E2: MemLdStr global_96
  loc_BC09E5: AryLock
  loc_BC09E8: Ary1LdPr
  loc_BC09E9: MemLdRfVar from_stack_1.global_104
  loc_BC09EC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC09F1: AryUnlock
  loc_BC09F4: FFree1Var var_A0 = ""
  loc_BC09F7: FLdRfVar var_C4
  loc_BC09FA: FLdPr var_88
  loc_BC09FD: from_stack_1 = clsliqutasa.CodiInmu
  loc_BC0A02: FLdRfVar var_E0
  loc_BC0A05: FLdPr var_88
  loc_BC0A08: from_stack_1 = clsliqutasa.OrdeLita
  loc_BC0A0D: ILdRf var_E0
  loc_BC0A10: CStrI4
  loc_BC0A12: FStStrNoPop var_E4
  loc_BC0A15: ILdRf var_C4
  loc_BC0A18: CStrI4
  loc_BC0A1A: FStStrNoPop var_8C
  loc_BC0A1D: LitI2_Byte 1
  loc_BC0A1F: CUI1I2
  loc_BC0A21: ImpAdCallI2  = Proc_57_40_AD4A10(, )
  loc_BC0A26: PopTmpLdAdStr var_EC
  loc_BC0A29: FLdPr Me
  loc_BC0A2C: MemLdStr global_100
  loc_BC0A2F: FLdPr Me
  loc_BC0A32: MemLdStr global_96
  loc_BC0A35: Ary1LdPr
  loc_BC0A36: MemLdRfVar from_stack_1.global_108
  loc_BC0A39: StAryMove
  loc_BC0A3B: FFreeStr var_8C = ""
  loc_BC0A42: LitNothing
  loc_BC0A44: FStAd var_88 
  loc_BC0A48: Call Proc_314_18_C41354()
  loc_BC0A4D: ExitProcHresult
End Function

Private Function Proc_314_18_C41354() 'C41354
  'Data Table: 49CAEC
  loc_C40764: FLdPr Me
  loc_C40767: MemLdRfVar from_stack_1.global_88
  loc_C4076A: NewIfNullAd
  loc_C4076D: FStAd var_90 
  loc_C40771: FLdRfVar var_92
  loc_C40774: FLdPr var_90
  loc_C40777: from_stack_1 = clsliqutasa.TipoVenc
  loc_C4077C: FLdI2 var_92
  loc_C4077F: LitI2_Byte 2
  loc_C40781: EqI2
  loc_C40782: BranchF loc_C407BD
  loc_C40785: FLdPr Me
  loc_C40788: MemLdUI1 global_104
  loc_C4078C: CI2UI1
  loc_C4078E: FStI2 var_86
  loc_C40791: LitI2_Byte 0
  loc_C40793: CUI1I2
  loc_C40795: FLdPr Me
  loc_C40798: MemStUI1
  loc_C4079C: LitI2_Byte 0
  loc_C4079E: FLdPr Me
  loc_C407A1: MemLdUI1 global_104
  loc_C407A5: CI4UI1
  loc_C407A6: FLdPr Me
  loc_C407A9: MemLdStr global_100
  loc_C407AC: FLdPr Me
  loc_C407AF: MemLdStr global_96
  loc_C407B2: Ary1LdPr
  loc_C407B3: MemLdStr global_112
  loc_C407B6: Ary1LdPr
  loc_C407B7: MemStI2 global_0
  loc_C407BA: Branch loc_C40817
  loc_C407BD: FLdPr Me
  loc_C407C0: MemLdUI1 global_104
  loc_C407C4: CI2UI1
  loc_C407C6: LitI2_Byte 1
  loc_C407C8: AddI2
  loc_C407C9: CUI1I2
  loc_C407CB: FLdPr Me
  loc_C407CE: MemStUI1
  loc_C407D2: LitI4 0
  loc_C407D7: FLdPr Me
  loc_C407DA: MemLdUI1 global_104
  loc_C407DE: CI4UI1
  loc_C407DF: FLdPr Me
  loc_C407E2: MemLdStr global_100
  loc_C407E5: FLdPr Me
  loc_C407E8: MemLdStr global_96
  loc_C407EB: Ary1LdPr
  loc_C407EC: MemLdRfVar from_stack_1.global_112
  loc_C407EF: RedimPreserve
  loc_C407F9: LitI2_Byte &HFF
  loc_C407FB: FLdPr Me
  loc_C407FE: MemLdUI1 global_104
  loc_C40802: CI4UI1
  loc_C40803: FLdPr Me
  loc_C40806: MemLdStr global_100
  loc_C40809: FLdPr Me
  loc_C4080C: MemLdStr global_96
  loc_C4080F: Ary1LdPr
  loc_C40810: MemLdStr global_112
  loc_C40813: Ary1LdPr
  loc_C40814: MemStI2 global_0
  loc_C40817: FLdRfVar var_92
  loc_C4081A: FLdPr var_90
  loc_C4081D: from_stack_1 = clsliqutasa.BimeLiqu
  loc_C40822: LitI2_Byte 0
  loc_C40824: LitVar_Missing var_CC
  loc_C40827: LitI2_Byte 0
  loc_C40829: FLdUI1
  loc_C4082D: CVarUI1
  loc_C40831: PopAdLdVar
  loc_C40832: FLdPr Me
  loc_C40835: MemLdUI1 global_104
  loc_C40839: CI4UI1
  loc_C4083A: FLdPr Me
  loc_C4083D: MemLdStr global_100
  loc_C40840: FLdPr Me
  loc_C40843: MemLdStr global_96
  loc_C40846: AryLock
  loc_C40849: Ary1LdPr
  loc_C4084A: MemLdStr global_112
  loc_C4084D: AryLock
  loc_C40850: Ary1LdPr
  loc_C40851: MemLdRfVar from_stack_1.global_4
  loc_C40854: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C40859: AryUnlock
  loc_C4085C: AryUnlock
  loc_C4085F: FFree1Var var_CC = ""
  loc_C40862: FLdRfVar var_92
  loc_C40865: FLdPr var_90
  loc_C40868: from_stack_1 = clsliqutasa.PeriBole
  loc_C4086D: LitI2_Byte 0
  loc_C4086F: LitVar_Missing var_CC
  loc_C40872: LitI2_Byte 0
  loc_C40874: FLdI2 var_92
  loc_C40877: CVarI2 var_AC
  loc_C4087A: PopAdLdVar
  loc_C4087B: FLdPr Me
  loc_C4087E: MemLdUI1 global_104
  loc_C40882: CI4UI1
  loc_C40883: FLdPr Me
  loc_C40886: MemLdStr global_100
  loc_C40889: FLdPr Me
  loc_C4088C: MemLdStr global_96
  loc_C4088F: AryLock
  loc_C40892: Ary1LdPr
  loc_C40893: MemLdStr global_112
  loc_C40896: AryLock
  loc_C40899: Ary1LdPr
  loc_C4089A: MemLdRfVar from_stack_1.global_8
  loc_C4089D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C408A2: AryUnlock
  loc_C408A5: AryUnlock
  loc_C408A8: FFree1Var var_CC = ""
  loc_C408AB: FLdRfVar var_D0
  loc_C408AE: FLdPr var_90
  loc_C408B1: from_stack_1 = clsliqutasa.NumeBole
  loc_C408B6: LitI2_Byte 0
  loc_C408B8: LitVar_Missing var_CC
  loc_C408BB: LitI2_Byte 0
  loc_C408BD: ILdRf var_D0
  loc_C408C0: CVarI4
  loc_C408C4: PopAdLdVar
  loc_C408C5: FLdPr Me
  loc_C408C8: MemLdUI1 global_104
  loc_C408CC: CI4UI1
  loc_C408CD: FLdPr Me
  loc_C408D0: MemLdStr global_100
  loc_C408D3: FLdPr Me
  loc_C408D6: MemLdStr global_96
  loc_C408D9: AryLock
  loc_C408DC: Ary1LdPr
  loc_C408DD: MemLdStr global_112
  loc_C408E0: AryLock
  loc_C408E3: Ary1LdPr
  loc_C408E4: MemLdRfVar from_stack_1.global_12
  loc_C408E7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C408EC: AryUnlock
  loc_C408EF: AryUnlock
  loc_C408F2: FFree1Var var_CC = ""
  loc_C408F5: FLdRfVar var_92
  loc_C408F8: FLdPr var_90
  loc_C408FB: from_stack_1 = clsliqutasa.TipoVenc
  loc_C40900: LitI2_Byte 0
  loc_C40902: LitVar_Missing var_CC
  loc_C40905: LitI2_Byte 0
  loc_C40907: FLdI2 var_92
  loc_C4090A: CVarI2 var_AC
  loc_C4090D: PopAdLdVar
  loc_C4090E: FLdPr Me
  loc_C40911: MemLdUI1 global_104
  loc_C40915: CI4UI1
  loc_C40916: FLdPr Me
  loc_C40919: MemLdStr global_100
  loc_C4091C: FLdPr Me
  loc_C4091F: MemLdStr global_96
  loc_C40922: AryLock
  loc_C40925: Ary1LdPr
  loc_C40926: MemLdStr global_112
  loc_C40929: AryLock
  loc_C4092C: Ary1LdPr
  loc_C4092D: MemLdRfVar from_stack_1.global_24
  loc_C40930: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C40935: AryUnlock
  loc_C40938: AryUnlock
  loc_C4093B: FFree1Var var_CC = ""
  loc_C4093E: FLdRfVar var_D4
  loc_C40941: FLdPr var_90
  loc_C40944: from_stack_1 = clsliqutasa.FeveLita
  loc_C40949: LitI2_Byte 0
  loc_C4094B: LitVar_Missing var_E4
  loc_C4094E: LitI2_Byte 0
  loc_C40950: FLdZeroAd var_D4
  loc_C40953: CVarStr var_CC
  loc_C40956: PopAdLdVar
  loc_C40957: FLdPr Me
  loc_C4095A: MemLdUI1 global_104
  loc_C4095E: CI4UI1
  loc_C4095F: FLdPr Me
  loc_C40962: MemLdStr global_100
  loc_C40965: FLdPr Me
  loc_C40968: MemLdStr global_96
  loc_C4096B: AryLock
  loc_C4096E: Ary1LdPr
  loc_C4096F: MemLdStr global_112
  loc_C40972: AryLock
  loc_C40975: Ary1LdPr
  loc_C40976: MemLdRfVar from_stack_1.global_16
  loc_C40979: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4097E: AryUnlock
  loc_C40981: AryUnlock
  loc_C40984: FFreeVar var_CC = ""
  loc_C4098B: FLdRfVar var_92
  loc_C4098E: FLdPr var_90
  loc_C40991: from_stack_1 = clsliqutasa.TipoVenc
  loc_C40996: FLdI2 var_92
  loc_C40999: LitI2_Byte 2
  loc_C4099B: EqI2
  loc_C4099C: BranchF loc_C40A3C
  loc_C4099F: FLdRfVar var_92
  loc_C409A2: FLdPr var_90
  loc_C409A5: from_stack_1 = clsliqutasa.PeriBole
  loc_C409AA: FLdRfVar var_D0
  loc_C409AD: FLdPr var_90
  loc_C409B0: from_stack_1 = clsliqutasa.NumeBole
  loc_C409B5: FLdRfVar var_E6
  loc_C409B8: FLdPr var_90
  loc_C409BB: from_stack_1 = clsliqutasa.BimeLiqu
  loc_C409C0: FLdRfVar var_EC
  loc_C409C3: FLdPr var_90
  loc_C409C6: from_stack_1 = clsliqutasa.CodiInmu
  loc_C409CB: FLdRfVar var_F4
  loc_C409CE: FLdPr var_90
  loc_C409D1: from_stack_1 = clsliqutasa.TotaBole
  loc_C409D6: LitStr "31/03/2024"
  loc_C409D9: FLdFPR8 var_F4
  loc_C409DC: CStrR8
  loc_C409DE: FStStrNoPop var_104
  loc_C409E1: LitI2_Byte 1
  loc_C409E3: CUI1I2
  loc_C409E5: ILdRf var_EC
  loc_C409E8: CStrI4
  loc_C409EA: FStStrNoPop var_100
  loc_C409ED: FLdUI1
  loc_C409F1: CStrI2
  loc_C409F3: FStStrNoPop var_FC
  loc_C409F6: ILdRf var_D0
  loc_C409F9: CStrI4
  loc_C409FB: FStStrNoPop var_F8
  loc_C409FE: FLdI2 var_92
  loc_C40A01: CStrUI1
  loc_C40A03: FStStrNoPop var_D4
  loc_C40A06: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_C40A0B: PopTmpLdAdStr var_10C
  loc_C40A0E: FLdPr Me
  loc_C40A11: MemLdUI1 global_104
  loc_C40A15: CI4UI1
  loc_C40A16: FLdPr Me
  loc_C40A19: MemLdStr global_100
  loc_C40A1C: FLdPr Me
  loc_C40A1F: MemLdStr global_96
  loc_C40A22: Ary1LdPr
  loc_C40A23: MemLdStr global_112
  loc_C40A26: Ary1LdPr
  loc_C40A27: MemLdRfVar from_stack_1.global_20
  loc_C40A2A: StAryMove
  loc_C40A2C: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C40A39: Branch loc_C40AD6
  loc_C40A3C: FLdRfVar var_92
  loc_C40A3F: FLdPr var_90
  loc_C40A42: from_stack_1 = clsliqutasa.PeriBole
  loc_C40A47: FLdRfVar var_D0
  loc_C40A4A: FLdPr var_90
  loc_C40A4D: from_stack_1 = clsliqutasa.NumeBole
  loc_C40A52: FLdRfVar var_E6
  loc_C40A55: FLdPr var_90
  loc_C40A58: from_stack_1 = clsliqutasa.BimeLiqu
  loc_C40A5D: FLdRfVar var_EC
  loc_C40A60: FLdPr var_90
  loc_C40A63: from_stack_1 = clsliqutasa.CodiInmu
  loc_C40A68: FLdRfVar var_F4
  loc_C40A6B: FLdPr var_90
  loc_C40A6E: from_stack_1 = clsliqutasa.TotaBole
  loc_C40A73: LitStr "31/12/2024"
  loc_C40A76: FLdFPR8 var_F4
  loc_C40A79: CStrR8
  loc_C40A7B: FStStrNoPop var_104
  loc_C40A7E: LitI2_Byte 1
  loc_C40A80: CUI1I2
  loc_C40A82: ILdRf var_EC
  loc_C40A85: CStrI4
  loc_C40A87: FStStrNoPop var_100
  loc_C40A8A: FLdUI1
  loc_C40A8E: CStrI2
  loc_C40A90: FStStrNoPop var_FC
  loc_C40A93: ILdRf var_D0
  loc_C40A96: CStrI4
  loc_C40A98: FStStrNoPop var_F8
  loc_C40A9B: FLdI2 var_92
  loc_C40A9E: CStrUI1
  loc_C40AA0: FStStrNoPop var_D4
  loc_C40AA3: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_C40AA8: PopTmpLdAdStr var_10C
  loc_C40AAB: FLdPr Me
  loc_C40AAE: MemLdUI1 global_104
  loc_C40AB2: CI4UI1
  loc_C40AB3: FLdPr Me
  loc_C40AB6: MemLdStr global_100
  loc_C40AB9: FLdPr Me
  loc_C40ABC: MemLdStr global_96
  loc_C40ABF: Ary1LdPr
  loc_C40AC0: MemLdStr global_112
  loc_C40AC3: Ary1LdPr
  loc_C40AC4: MemLdRfVar from_stack_1.global_20
  loc_C40AC7: StAryMove
  loc_C40AC9: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C40AD6: FLdRfVar var_CC
  loc_C40AD9: FLdPr var_90
  loc_C40ADC: from_stack_1 = clsliqutasa.RecaBole
  loc_C40AE1: LitI2_Byte 0
  loc_C40AE3: LitVar_Missing var_E4
  loc_C40AE6: LitI2_Byte &HFF
  loc_C40AE8: FLdVar var_CC
  loc_C40AEC: FLdPr Me
  loc_C40AEF: MemLdUI1 global_104
  loc_C40AF3: CI4UI1
  loc_C40AF4: FLdPr Me
  loc_C40AF7: MemLdStr global_100
  loc_C40AFA: FLdPr Me
  loc_C40AFD: MemLdStr global_96
  loc_C40B00: AryLock
  loc_C40B03: Ary1LdPr
  loc_C40B04: MemLdStr global_112
  loc_C40B07: AryLock
  loc_C40B0A: Ary1LdPr
  loc_C40B0B: MemLdRfVar from_stack_1.global_56
  loc_C40B0E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C40B13: AryUnlock
  loc_C40B16: AryUnlock
  loc_C40B19: FFreeVar var_CC = ""
  loc_C40B20: FLdRfVar var_CC
  loc_C40B23: FLdPr var_90
  loc_C40B26: from_stack_1 = clsliqutasa.BombLita
  loc_C40B2B: LitI2_Byte 0
  loc_C40B2D: LitVar_Missing var_E4
  loc_C40B30: LitI2_Byte &HFF
  loc_C40B32: FLdVar var_CC
  loc_C40B36: FLdPr Me
  loc_C40B39: MemLdUI1 global_104
  loc_C40B3D: CI4UI1
  loc_C40B3E: FLdPr Me
  loc_C40B41: MemLdStr global_100
  loc_C40B44: FLdPr Me
  loc_C40B47: MemLdStr global_96
  loc_C40B4A: AryLock
  loc_C40B4D: Ary1LdPr
  loc_C40B4E: MemLdStr global_112
  loc_C40B51: AryLock
  loc_C40B54: Ary1LdPr
  loc_C40B55: MemLdRfVar from_stack_1.global_48
  loc_C40B58: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C40B5D: AryUnlock
  loc_C40B60: AryUnlock
  loc_C40B63: FFreeVar var_CC = ""
  loc_C40B6A: FLdRfVar var_F4
  loc_C40B6D: FLdPr var_90
  loc_C40B70: from_stack_1 = clsliqutasa.TotaBole
  loc_C40B75: LitI2_Byte 0
  loc_C40B77: LitVar_Missing var_CC
  loc_C40B7A: LitI2_Byte &HFF
  loc_C40B7C: FLdFPR8 var_F4
  loc_C40B7F: CVarR8
  loc_C40B83: PopAdLdVar
  loc_C40B84: FLdPr Me
  loc_C40B87: MemLdUI1 global_104
  loc_C40B8B: CI4UI1
  loc_C40B8C: FLdPr Me
  loc_C40B8F: MemLdStr global_100
  loc_C40B92: FLdPr Me
  loc_C40B95: MemLdStr global_96
  loc_C40B98: AryLock
  loc_C40B9B: Ary1LdPr
  loc_C40B9C: MemLdStr global_112
  loc_C40B9F: AryLock
  loc_C40BA2: Ary1LdPr
  loc_C40BA3: MemLdRfVar from_stack_1.global_64
  loc_C40BA6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C40BAB: AryUnlock
  loc_C40BAE: AryUnlock
  loc_C40BB1: FFree1Var var_CC = ""
  loc_C40BB4: FLdRfVar var_8C
  loc_C40BB7: NewIfNullAd
  loc_C40BBA: FStAd var_114 
  loc_C40BBE: FLdPr Me
  loc_C40BC1: MemLdUI1 global_104
  loc_C40BC5: CI4UI1
  loc_C40BC6: FLdPr Me
  loc_C40BC9: MemLdStr global_100
  loc_C40BCC: FLdPr Me
  loc_C40BCF: MemLdStr global_96
  loc_C40BD2: Ary1LdPr
  loc_C40BD3: MemLdStr global_112
  loc_C40BD6: Ary1LdPr
  loc_C40BD7: MemLdI2 global_0
  loc_C40BDA: BranchF loc_C40D34
  loc_C40BDD: LitStr "SELECT"
  loc_C40BE0: LitStr " CAST(sum(if(CodiSeca in(1,21,22,23),ImpoLtde,0)) AS DECIMAL(11,2)) as TasaGral,"
  loc_C40BE3: ConcatStr
  loc_C40BE4: FStStrNoPop var_D4
  loc_C40BE7: LitStr " sum(if(CodiSeca = 2,ImpoLtde,0)) as InfUrbana,"
  loc_C40BEA: ConcatStr
  loc_C40BEB: FStStrNoPop var_F8
  loc_C40BEE: LitStr " sum(if(CodiSeca = 3,ImpoLtde,0)) as AlPublico,"
  loc_C40BF1: ConcatStr
  loc_C40BF2: FStStrNoPop var_FC
  loc_C40BF5: LitStr " sum(if(CodiSeca = 4,ImpoLtde,0)) as ServAgua,"
  loc_C40BF8: ConcatStr
  loc_C40BF9: FStStrNoPop var_100
  loc_C40BFC: LitStr " sum(if(CodiSeca = 15,ImpoLtde,0)) as SobrAntena,"
  loc_C40BFF: ConcatStr
  loc_C40C00: FStStrNoPop var_104
  loc_C40C03: LitStr " sum(if(CodiSeca = 999,ImpoLtde,0)) as CEmision"
  loc_C40C06: ConcatStr
  loc_C40C07: FStStrNoPop var_118
  loc_C40C0A: LitStr " FROM litadeta"
  loc_C40C0D: ConcatStr
  loc_C40C0E: FStStrNoPop var_11C
  loc_C40C11: LitStr " WHERE CodiConc = '13020101' AND PeriLiqu = "
  loc_C40C14: ConcatStr
  loc_C40C15: FStStrNoPop var_120
  loc_C40C18: FLdRfVar var_92
  loc_C40C1B: FLdPr Me
  loc_C40C1E: MemLdRfVar from_stack_1.global_84
  loc_C40C21: NewIfNullPr clsliquidacion
  loc_C40C24: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C40C29: FLdI2 var_92
  loc_C40C2C: CStrUI1
  loc_C40C2E: FStStrNoPop var_124
  loc_C40C31: ConcatStr
  loc_C40C32: FStStrNoPop var_128
  loc_C40C35: LitStr " AND CodiTili = "
  loc_C40C38: ConcatStr
  loc_C40C39: FStStrNoPop var_12C
  loc_C40C3C: FLdRfVar var_E6
  loc_C40C3F: FLdPr Me
  loc_C40C42: MemLdRfVar from_stack_1.global_84
  loc_C40C45: NewIfNullPr clsliquidacion
  loc_C40C48: from_stack_1 = clsliquidacion.CodiTili
  loc_C40C4D: FLdUI1
  loc_C40C51: CStrI2
  loc_C40C53: FStStrNoPop var_130
  loc_C40C56: ConcatStr
  loc_C40C57: FStStrNoPop var_134
  loc_C40C5A: LitStr " AND NumeLiqu = "
  loc_C40C5D: ConcatStr
  loc_C40C5E: FStStrNoPop var_13C
  loc_C40C61: FLdRfVar var_136
  loc_C40C64: FLdPr Me
  loc_C40C67: MemLdRfVar from_stack_1.global_84
  loc_C40C6A: NewIfNullPr clsliquidacion
  loc_C40C6D: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C40C72: FLdI2 var_136
  loc_C40C75: CStrUI1
  loc_C40C77: FStStrNoPop var_140
  loc_C40C7A: ConcatStr
  loc_C40C7B: FStStrNoPop var_144
  loc_C40C7E: LitStr " AND BimeLiqu = "
  loc_C40C81: ConcatStr
  loc_C40C82: FStStrNoPop var_14C
  loc_C40C85: FLdRfVar var_146
  loc_C40C88: FLdPr Me
  loc_C40C8B: MemLdRfVar from_stack_1.global_88
  loc_C40C8E: NewIfNullPr clsliqutasa
  loc_C40C91: from_stack_1 = clsliqutasa.BimeLiqu
  loc_C40C96: FLdUI1
  loc_C40C9A: CStrI2
  loc_C40C9C: FStStrNoPop var_150
  loc_C40C9F: ConcatStr
  loc_C40CA0: FStStrNoPop var_154
  loc_C40CA3: LitStr " AND TipoVenc = "
  loc_C40CA6: ConcatStr
  loc_C40CA7: FStStrNoPop var_15C
  loc_C40CAA: FLdRfVar var_156
  loc_C40CAD: FLdPr Me
  loc_C40CB0: MemLdRfVar from_stack_1.global_88
  loc_C40CB3: NewIfNullPr clsliqutasa
  loc_C40CB6: from_stack_1 = clsliqutasa.TipoVenc
  loc_C40CBB: FLdI2 var_156
  loc_C40CBE: CStrUI1
  loc_C40CC0: FStStrNoPop var_160
  loc_C40CC3: ConcatStr
  loc_C40CC4: FStStrNoPop var_164
  loc_C40CC7: LitStr " AND CodiInmu = '"
  loc_C40CCA: ConcatStr
  loc_C40CCB: FStStrNoPop var_168
  loc_C40CCE: FLdRfVar var_D0
  loc_C40CD1: FLdPr Me
  loc_C40CD4: MemLdRfVar from_stack_1.global_88
  loc_C40CD7: NewIfNullPr clsliqutasa
  loc_C40CDA: from_stack_1 = clsliqutasa.CodiInmu
  loc_C40CDF: ILdRf var_D0
  loc_C40CE2: CStrI4
  loc_C40CE4: FStStrNoPop var_16C
  loc_C40CE7: ConcatStr
  loc_C40CE8: FStStrNoPop var_170
  loc_C40CEB: LitStr "'"
  loc_C40CEE: ConcatStr
  loc_C40CEF: FStStrNoPop var_174
  loc_C40CF2: FLdPr var_114
  loc_C40CF5: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_C40CFA: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_13C = "": var_140 = "": var_144 = "": var_14C = "": var_150 = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_C40D31: Branch loc_C40F12
  loc_C40D34: LitStr "SELECT cast(sum(TasaGral) as double(10,2)) as TasaGral, cast(sum(InfUrbana) as double(10,2)) as InfUrbana, cast(sum(AlPublico) as double(10,2)) as AlPublico, cast(sum(ServAgua) as double(10,2)) as ServAgua, cast(sum(SobrAntena) as double(10,2)) as SobrAntena, cast(sum(DescLita) as double(10,2)) as DescLita, cast(sum(CEmision) as double(10,2)) as CEmision FROM"
  loc_C40D37: LitStr "((SELECT"
  loc_C40D3A: ConcatStr
  loc_C40D3B: FStStrNoPop var_D4
  loc_C40D3E: LitStr " sum(if(CodiSeca in(1,21,22,23),ImpoLtde,0)) TasaGral,"
  loc_C40D41: ConcatStr
  loc_C40D42: FStStrNoPop var_F8
  loc_C40D45: LitStr " sum(if(CodiSeca = 2,ImpoLtde,0)) as InfUrbana,"
  loc_C40D48: ConcatStr
  loc_C40D49: FStStrNoPop var_FC
  loc_C40D4C: LitStr " sum(if(CodiSeca = 3,ImpoLtde,0)) as AlPublico,"
  loc_C40D4F: ConcatStr
  loc_C40D50: FStStrNoPop var_100
  loc_C40D53: LitStr " sum(if(CodiSeca = 4,ImpoLtde,0)) as ServAgua,"
  loc_C40D56: ConcatStr
  loc_C40D57: FStStrNoPop var_104
  loc_C40D5A: LitStr " sum(if(CodiSeca = 15,ImpoLtde,0)) as SobrAntena,"
  loc_C40D5D: ConcatStr
  loc_C40D5E: FStStrNoPop var_118
  loc_C40D61: LitStr " sum(if(CodiSeca in(1),DecaLtde+ExenLtde,0)) DescLita,"
  loc_C40D64: ConcatStr
  loc_C40D65: FStStrNoPop var_11C
  loc_C40D68: LitStr " sum(if(CodiSeca = 999,ImpoLtde-DecaLtde,0)) as CEmision"
  loc_C40D6B: ConcatStr
  loc_C40D6C: FStStrNoPop var_120
  loc_C40D6F: LitStr " FROM litadeta"
  loc_C40D72: ConcatStr
  loc_C40D73: FStStrNoPop var_124
  loc_C40D76: LitStr " WHERE CodiConc = '13020101' AND PeriLiqu = "
  loc_C40D79: ConcatStr
  loc_C40D7A: FStStrNoPop var_128
  loc_C40D7D: FLdRfVar var_92
  loc_C40D80: FLdPr Me
  loc_C40D83: MemLdRfVar from_stack_1.global_84
  loc_C40D86: NewIfNullPr clsliquidacion
  loc_C40D89: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C40D8E: FLdI2 var_92
  loc_C40D91: CStrUI1
  loc_C40D93: FStStrNoPop var_12C
  loc_C40D96: ConcatStr
  loc_C40D97: FStStrNoPop var_130
  loc_C40D9A: LitStr " AND CodiTili = "
  loc_C40D9D: ConcatStr
  loc_C40D9E: FStStrNoPop var_134
  loc_C40DA1: FLdRfVar var_E6
  loc_C40DA4: FLdPr Me
  loc_C40DA7: MemLdRfVar from_stack_1.global_84
  loc_C40DAA: NewIfNullPr clsliquidacion
  loc_C40DAD: from_stack_1 = clsliquidacion.CodiTili
  loc_C40DB2: FLdUI1
  loc_C40DB6: CStrI2
  loc_C40DB8: FStStrNoPop var_13C
  loc_C40DBB: ConcatStr
  loc_C40DBC: FStStrNoPop var_140
  loc_C40DBF: LitStr " AND NumeLiqu = "
  loc_C40DC2: ConcatStr
  loc_C40DC3: FStStrNoPop var_144
  loc_C40DC6: FLdRfVar var_136
  loc_C40DC9: FLdPr Me
  loc_C40DCC: MemLdRfVar from_stack_1.global_84
  loc_C40DCF: NewIfNullPr clsliquidacion
  loc_C40DD2: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C40DD7: FLdI2 var_136
  loc_C40DDA: CStrUI1
  loc_C40DDC: FStStrNoPop var_14C
  loc_C40DDF: ConcatStr
  loc_C40DE0: FStStrNoPop var_150
  loc_C40DE3: LitStr " AND TipoVenc = 2 AND CodiInmu = '"
  loc_C40DE6: ConcatStr
  loc_C40DE7: FStStrNoPop var_154
  loc_C40DEA: FLdRfVar var_D0
  loc_C40DED: FLdPr Me
  loc_C40DF0: MemLdRfVar from_stack_1.global_88
  loc_C40DF3: NewIfNullPr clsliqutasa
  loc_C40DF6: from_stack_1 = clsliqutasa.CodiInmu
  loc_C40DFB: ILdRf var_D0
  loc_C40DFE: CStrI4
  loc_C40E00: FStStrNoPop var_15C
  loc_C40E03: ConcatStr
  loc_C40E04: FStStrNoPop var_160
  loc_C40E07: LitStr "')"
  loc_C40E0A: ConcatStr
  loc_C40E0B: FStStrNoPop var_164
  loc_C40E0E: LitStr " UNION (SELECT 0 AS TasaGral, 0 as InfUrbana, 0 as AlPublico, 0 as ServAgua, 0 as SobrAntena, sum(if(CodiSeca in(1),DecaLtde+ExenLtde,0)) as DescLita, 0 as CEmision"
  loc_C40E11: ConcatStr
  loc_C40E12: FStStrNoPop var_168
  loc_C40E15: LitStr " FROM litadeta"
  loc_C40E18: ConcatStr
  loc_C40E19: FStStrNoPop var_16C
  loc_C40E1C: LitStr " WHERE CodiConc = '13020101' AND PeriLiqu = "
  loc_C40E1F: ConcatStr
  loc_C40E20: FStStrNoPop var_170
  loc_C40E23: FLdRfVar var_146
  loc_C40E26: FLdPr Me
  loc_C40E29: MemLdRfVar from_stack_1.global_84
  loc_C40E2C: NewIfNullPr clsliquidacion
  loc_C40E2F: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C40E34: FLdI2 var_146
  loc_C40E37: CStrUI1
  loc_C40E39: FStStrNoPop var_174
  loc_C40E3C: ConcatStr
  loc_C40E3D: FStStrNoPop var_178
  loc_C40E40: LitStr " AND CodiTili = "
  loc_C40E43: ConcatStr
  loc_C40E44: FStStrNoPop var_17C
  loc_C40E47: FLdRfVar var_156
  loc_C40E4A: FLdPr Me
  loc_C40E4D: MemLdRfVar from_stack_1.global_84
  loc_C40E50: NewIfNullPr clsliquidacion
  loc_C40E53: from_stack_1 = clsliquidacion.CodiTili
  loc_C40E58: FLdUI1
  loc_C40E5C: CStrI2
  loc_C40E5E: FStStrNoPop var_180
  loc_C40E61: ConcatStr
  loc_C40E62: FStStrNoPop var_184
  loc_C40E65: LitStr " AND NumeLiqu = "
  loc_C40E68: ConcatStr
  loc_C40E69: FStStrNoPop var_18C
  loc_C40E6C: FLdRfVar var_186
  loc_C40E6F: FLdPr Me
  loc_C40E72: MemLdRfVar from_stack_1.global_84
  loc_C40E75: NewIfNullPr clsliquidacion
  loc_C40E78: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C40E7D: FLdI2 var_186
  loc_C40E80: CStrUI1
  loc_C40E82: FStStrNoPop var_190
  loc_C40E85: ConcatStr
  loc_C40E86: FStStrNoPop var_194
  loc_C40E89: LitStr " AND TipoVenc = 1 AND BimeLiqu in (1,2) AND CodiInmu = '"
  loc_C40E8C: ConcatStr
  loc_C40E8D: FStStrNoPop var_198
  loc_C40E90: FLdRfVar var_EC
  loc_C40E93: FLdPr Me
  loc_C40E96: MemLdRfVar from_stack_1.global_88
  loc_C40E99: NewIfNullPr clsliqutasa
  loc_C40E9C: from_stack_1 = clsliqutasa.CodiInmu
  loc_C40EA1: ILdRf var_EC
  loc_C40EA4: CStrI4
  loc_C40EA6: FStStrNoPop var_19C
  loc_C40EA9: ConcatStr
  loc_C40EAA: FStStrNoPop var_1A0
  loc_C40EAD: LitStr "'))"
  loc_C40EB0: ConcatStr
  loc_C40EB1: FStStrNoPop var_1A4
  loc_C40EB4: LitStr " as tmp_litadeta"
  loc_C40EB7: ConcatStr
  loc_C40EB8: FStStrNoPop var_1A8
  loc_C40EBB: FLdPr var_114
  loc_C40EBE: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_C40EC3: FFreeStr var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_D4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_13C = "": var_140 = "": var_144 = "": var_14C = "": var_150 = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_C40F12: FLdRfVar var_D0
  loc_C40F15: FLdPr var_114
  loc_C40F18: from_stack_1 = clsliqutasa.RecordCount
  loc_C40F1D: ILdRf var_D0
  loc_C40F20: LitI4 0
  loc_C40F25: GtI4
  loc_C40F26: BranchF loc_C411AF
  loc_C40F29: FLdPr var_114
  loc_C40F2C: Call clsliqutasa.MoveFirst()
  loc_C40F31: FLdRfVar var_CC
  loc_C40F34: FLdPr var_114
  loc_C40F37: from_stack_1 = clsliqutasa.TasaGral
  loc_C40F3C: LitI2_Byte 0
  loc_C40F3E: LitVar_Missing var_E4
  loc_C40F41: LitI2_Byte &HFF
  loc_C40F43: FLdVar var_CC
  loc_C40F47: FLdPr Me
  loc_C40F4A: MemLdUI1 global_104
  loc_C40F4E: CI4UI1
  loc_C40F4F: FLdPr Me
  loc_C40F52: MemLdStr global_100
  loc_C40F55: FLdPr Me
  loc_C40F58: MemLdStr global_96
  loc_C40F5B: AryLock
  loc_C40F5E: Ary1LdPr
  loc_C40F5F: MemLdStr global_112
  loc_C40F62: AryLock
  loc_C40F65: Ary1LdPr
  loc_C40F66: MemLdRfVar from_stack_1.global_28
  loc_C40F69: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C40F6E: AryUnlock
  loc_C40F71: AryUnlock
  loc_C40F74: FFreeVar var_CC = ""
  loc_C40F7B: FLdRfVar var_CC
  loc_C40F7E: FLdPr var_114
  loc_C40F81: from_stack_1 = clsliqutasa.InfUrbana
  loc_C40F86: LitI2_Byte 0
  loc_C40F88: LitVar_Missing var_E4
  loc_C40F8B: LitI2_Byte &HFF
  loc_C40F8D: FLdVar var_CC
  loc_C40F91: FLdPr Me
  loc_C40F94: MemLdUI1 global_104
  loc_C40F98: CI4UI1
  loc_C40F99: FLdPr Me
  loc_C40F9C: MemLdStr global_100
  loc_C40F9F: FLdPr Me
  loc_C40FA2: MemLdStr global_96
  loc_C40FA5: AryLock
  loc_C40FA8: Ary1LdPr
  loc_C40FA9: MemLdStr global_112
  loc_C40FAC: AryLock
  loc_C40FAF: Ary1LdPr
  loc_C40FB0: MemLdRfVar from_stack_1.global_32
  loc_C40FB3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C40FB8: AryUnlock
  loc_C40FBB: AryUnlock
  loc_C40FBE: FFreeVar var_CC = ""
  loc_C40FC5: FLdRfVar var_CC
  loc_C40FC8: FLdPr var_114
  loc_C40FCB: from_stack_1 = clsliqutasa.AlPublico
  loc_C40FD0: LitI2_Byte 0
  loc_C40FD2: LitVar_Missing var_E4
  loc_C40FD5: LitI2_Byte &HFF
  loc_C40FD7: FLdVar var_CC
  loc_C40FDB: FLdPr Me
  loc_C40FDE: MemLdUI1 global_104
  loc_C40FE2: CI4UI1
  loc_C40FE3: FLdPr Me
  loc_C40FE6: MemLdStr global_100
  loc_C40FE9: FLdPr Me
  loc_C40FEC: MemLdStr global_96
  loc_C40FEF: AryLock
  loc_C40FF2: Ary1LdPr
  loc_C40FF3: MemLdStr global_112
  loc_C40FF6: AryLock
  loc_C40FF9: Ary1LdPr
  loc_C40FFA: MemLdRfVar from_stack_1.global_36
  loc_C40FFD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C41002: AryUnlock
  loc_C41005: AryUnlock
  loc_C41008: FFreeVar var_CC = ""
  loc_C4100F: FLdRfVar var_CC
  loc_C41012: FLdPr var_114
  loc_C41015: from_stack_1 = clsliqutasa.ServAgua
  loc_C4101A: LitI2_Byte 0
  loc_C4101C: LitVar_Missing var_E4
  loc_C4101F: LitI2_Byte &HFF
  loc_C41021: FLdVar var_CC
  loc_C41025: FLdPr Me
  loc_C41028: MemLdUI1 global_104
  loc_C4102C: CI4UI1
  loc_C4102D: FLdPr Me
  loc_C41030: MemLdStr global_100
  loc_C41033: FLdPr Me
  loc_C41036: MemLdStr global_96
  loc_C41039: AryLock
  loc_C4103C: Ary1LdPr
  loc_C4103D: MemLdStr global_112
  loc_C41040: AryLock
  loc_C41043: Ary1LdPr
  loc_C41044: MemLdRfVar from_stack_1.global_40
  loc_C41047: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4104C: AryUnlock
  loc_C4104F: AryUnlock
  loc_C41052: FFreeVar var_CC = ""
  loc_C41059: FLdRfVar var_CC
  loc_C4105C: FLdPr var_114
  loc_C4105F: from_stack_1 = clsliqutasa.SobrAntena
  loc_C41064: LitI2_Byte 0
  loc_C41066: LitVar_Missing var_E4
  loc_C41069: LitI2_Byte &HFF
  loc_C4106B: FLdVar var_CC
  loc_C4106F: FLdPr Me
  loc_C41072: MemLdUI1 global_104
  loc_C41076: CI4UI1
  loc_C41077: FLdPr Me
  loc_C4107A: MemLdStr global_100
  loc_C4107D: FLdPr Me
  loc_C41080: MemLdStr global_96
  loc_C41083: AryLock
  loc_C41086: Ary1LdPr
  loc_C41087: MemLdStr global_112
  loc_C4108A: AryLock
  loc_C4108D: Ary1LdPr
  loc_C4108E: MemLdRfVar from_stack_1.global_44
  loc_C41091: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C41096: AryUnlock
  loc_C41099: AryUnlock
  loc_C4109C: FFreeVar var_CC = ""
  loc_C410A3: FLdRfVar var_CC
  loc_C410A6: FLdPr var_114
  loc_C410A9: from_stack_1 = clsliqutasa.CEmision
  loc_C410AE: LitI2_Byte 0
  loc_C410B0: LitVar_Missing var_E4
  loc_C410B3: LitI2_Byte &HFF
  loc_C410B5: FLdVar var_CC
  loc_C410B9: FLdPr Me
  loc_C410BC: MemLdUI1 global_104
  loc_C410C0: CI4UI1
  loc_C410C1: FLdPr Me
  loc_C410C4: MemLdStr global_100
  loc_C410C7: FLdPr Me
  loc_C410CA: MemLdStr global_96
  loc_C410CD: AryLock
  loc_C410D0: Ary1LdPr
  loc_C410D1: MemLdStr global_112
  loc_C410D4: AryLock
  loc_C410D7: Ary1LdPr
  loc_C410D8: MemLdRfVar from_stack_1.global_60
  loc_C410DB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C410E0: AryUnlock
  loc_C410E3: AryUnlock
  loc_C410E6: FFreeVar var_CC = ""
  loc_C410ED: FLdPr Me
  loc_C410F0: MemLdUI1 global_104
  loc_C410F4: CI4UI1
  loc_C410F5: FLdPr Me
  loc_C410F8: MemLdStr global_100
  loc_C410FB: FLdPr Me
  loc_C410FE: MemLdStr global_96
  loc_C41101: Ary1LdPr
  loc_C41102: MemLdStr global_112
  loc_C41105: Ary1LdPr
  loc_C41106: MemLdI2 global_0
  loc_C41109: BranchF loc_C4115F
  loc_C4110C: FLdRfVar var_F4
  loc_C4110F: FLdPr Me
  loc_C41112: MemLdRfVar from_stack_1.global_88
  loc_C41115: NewIfNullPr clsliqutasa
  loc_C41118: from_stack_1 = clsliqutasa.DescLita
  loc_C4111D: LitI2_Byte 0
  loc_C4111F: LitVar_Missing var_CC
  loc_C41122: LitI2_Byte &HFF
  loc_C41124: FLdFPR8 var_F4
  loc_C41127: CVarR8
  loc_C4112B: PopAdLdVar
  loc_C4112C: FLdPr Me
  loc_C4112F: MemLdUI1 global_104
  loc_C41133: CI4UI1
  loc_C41134: FLdPr Me
  loc_C41137: MemLdStr global_100
  loc_C4113A: FLdPr Me
  loc_C4113D: MemLdStr global_96
  loc_C41140: AryLock
  loc_C41143: Ary1LdPr
  loc_C41144: MemLdStr global_112
  loc_C41147: AryLock
  loc_C4114A: Ary1LdPr
  loc_C4114B: MemLdRfVar from_stack_1.bGenerado
  loc_C4114E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C41153: AryUnlock
  loc_C41156: AryUnlock
  loc_C41159: FFree1Var var_CC = ""
  loc_C4115C: Branch loc_C411AC
  loc_C4115F: FLdRfVar var_F4
  loc_C41162: FLdRfVar var_8C
  loc_C41165: NewIfNullPr clsliqutasa
  loc_C41168: from_stack_1 = clsliqutasa.DescLita
  loc_C4116D: LitI2_Byte 0
  loc_C4116F: LitVar_Missing var_CC
  loc_C41172: LitI2_Byte &HFF
  loc_C41174: FLdFPR8 var_F4
  loc_C41177: CVarR8
  loc_C4117B: PopAdLdVar
  loc_C4117C: FLdPr Me
  loc_C4117F: MemLdUI1 global_104
  loc_C41183: CI4UI1
  loc_C41184: FLdPr Me
  loc_C41187: MemLdStr global_100
  loc_C4118A: FLdPr Me
  loc_C4118D: MemLdStr global_96
  loc_C41190: AryLock
  loc_C41193: Ary1LdPr
  loc_C41194: MemLdStr global_112
  loc_C41197: AryLock
  loc_C4119A: Ary1LdPr
  loc_C4119B: MemLdRfVar from_stack_1.bGenerado
  loc_C4119E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C411A3: AryUnlock
  loc_C411A6: AryUnlock
  loc_C411A9: FFree1Var var_CC = ""
  loc_C411AC: Branch loc_C4131D
  loc_C411AF: LitI2_Byte 0
  loc_C411B1: LitVar_Missing var_CC
  loc_C411B4: LitI2_Byte &HFF
  loc_C411B6: LitVarI2 var_AC, 0
  loc_C411BB: PopAdLdVar
  loc_C411BC: FLdPr Me
  loc_C411BF: MemLdUI1 global_104
  loc_C411C3: CI4UI1
  loc_C411C4: FLdPr Me
  loc_C411C7: MemLdStr global_100
  loc_C411CA: FLdPr Me
  loc_C411CD: MemLdStr global_96
  loc_C411D0: AryLock
  loc_C411D3: Ary1LdPr
  loc_C411D4: MemLdStr global_112
  loc_C411D7: AryLock
  loc_C411DA: Ary1LdPr
  loc_C411DB: MemLdRfVar from_stack_1.global_28
  loc_C411DE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C411E3: AryUnlock
  loc_C411E6: AryUnlock
  loc_C411E9: FFree1Var var_CC = ""
  loc_C411EC: LitI2_Byte 0
  loc_C411EE: LitVar_Missing var_CC
  loc_C411F1: LitI2_Byte &HFF
  loc_C411F3: LitVarI2 var_AC, 0
  loc_C411F8: PopAdLdVar
  loc_C411F9: FLdPr Me
  loc_C411FC: MemLdUI1 global_104
  loc_C41200: CI4UI1
  loc_C41201: FLdPr Me
  loc_C41204: MemLdStr global_100
  loc_C41207: FLdPr Me
  loc_C4120A: MemLdStr global_96
  loc_C4120D: AryLock
  loc_C41210: Ary1LdPr
  loc_C41211: MemLdStr global_112
  loc_C41214: AryLock
  loc_C41217: Ary1LdPr
  loc_C41218: MemLdRfVar from_stack_1.global_32
  loc_C4121B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C41220: AryUnlock
  loc_C41223: AryUnlock
  loc_C41226: FFree1Var var_CC = ""
  loc_C41229: LitI2_Byte 0
  loc_C4122B: LitVar_Missing var_CC
  loc_C4122E: LitI2_Byte &HFF
  loc_C41230: LitVarI2 var_AC, 0
  loc_C41235: PopAdLdVar
  loc_C41236: FLdPr Me
  loc_C41239: MemLdUI1 global_104
  loc_C4123D: CI4UI1
  loc_C4123E: FLdPr Me
  loc_C41241: MemLdStr global_100
  loc_C41244: FLdPr Me
  loc_C41247: MemLdStr global_96
  loc_C4124A: AryLock
  loc_C4124D: Ary1LdPr
  loc_C4124E: MemLdStr global_112
  loc_C41251: AryLock
  loc_C41254: Ary1LdPr
  loc_C41255: MemLdRfVar from_stack_1.global_36
  loc_C41258: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4125D: AryUnlock
  loc_C41260: AryUnlock
  loc_C41263: FFree1Var var_CC = ""
  loc_C41266: LitI2_Byte 0
  loc_C41268: LitVar_Missing var_CC
  loc_C4126B: LitI2_Byte &HFF
  loc_C4126D: LitVarI2 var_AC, 0
  loc_C41272: PopAdLdVar
  loc_C41273: FLdPr Me
  loc_C41276: MemLdUI1 global_104
  loc_C4127A: CI4UI1
  loc_C4127B: FLdPr Me
  loc_C4127E: MemLdStr global_100
  loc_C41281: FLdPr Me
  loc_C41284: MemLdStr global_96
  loc_C41287: AryLock
  loc_C4128A: Ary1LdPr
  loc_C4128B: MemLdStr global_112
  loc_C4128E: AryLock
  loc_C41291: Ary1LdPr
  loc_C41292: MemLdRfVar from_stack_1.global_40
  loc_C41295: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4129A: AryUnlock
  loc_C4129D: AryUnlock
  loc_C412A0: FFree1Var var_CC = ""
  loc_C412A3: LitI2_Byte 0
  loc_C412A5: LitVar_Missing var_CC
  loc_C412A8: LitI2_Byte &HFF
  loc_C412AA: LitVarI2 var_AC, 0
  loc_C412AF: PopAdLdVar
  loc_C412B0: FLdPr Me
  loc_C412B3: MemLdUI1 global_104
  loc_C412B7: CI4UI1
  loc_C412B8: FLdPr Me
  loc_C412BB: MemLdStr global_100
  loc_C412BE: FLdPr Me
  loc_C412C1: MemLdStr global_96
  loc_C412C4: AryLock
  loc_C412C7: Ary1LdPr
  loc_C412C8: MemLdStr global_112
  loc_C412CB: AryLock
  loc_C412CE: Ary1LdPr
  loc_C412CF: MemLdRfVar from_stack_1.global_44
  loc_C412D2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C412D7: AryUnlock
  loc_C412DA: AryUnlock
  loc_C412DD: FFree1Var var_CC = ""
  loc_C412E0: LitI2_Byte 0
  loc_C412E2: LitVar_Missing var_CC
  loc_C412E5: LitI2_Byte &HFF
  loc_C412E7: LitVarI2 var_AC, 0
  loc_C412EC: PopAdLdVar
  loc_C412ED: FLdPr Me
  loc_C412F0: MemLdUI1 global_104
  loc_C412F4: CI4UI1
  loc_C412F5: FLdPr Me
  loc_C412F8: MemLdStr global_100
  loc_C412FB: FLdPr Me
  loc_C412FE: MemLdStr global_96
  loc_C41301: AryLock
  loc_C41304: Ary1LdPr
  loc_C41305: MemLdStr global_112
  loc_C41308: AryLock
  loc_C4130B: Ary1LdPr
  loc_C4130C: MemLdRfVar from_stack_1.global_60
  loc_C4130F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C41314: AryUnlock
  loc_C41317: AryUnlock
  loc_C4131A: FFree1Var var_CC = ""
  loc_C4131D: LitNothing
  loc_C4131F: FStAd var_114 
  loc_C41323: LitI2_Byte 1
  loc_C41325: PopTmpLdAd2 var_92
  loc_C41328: FLdPr var_90
  loc_C4132B: Call clsliqutasa.Move(from_stack_1v)
  loc_C41330: FLdPr Me
  loc_C41333: MemLdUI1 global_104
  loc_C41337: CI2UI1
  loc_C41339: LitI2_Byte 0
  loc_C4133B: EqI2
  loc_C4133C: BranchF loc_C4134B
  loc_C4133F: FLdI2 var_86
  loc_C41342: CUI1I2
  loc_C41344: FLdPr Me
  loc_C41347: MemStUI1
  loc_C4134B: LitNothing
  loc_C4134D: FStAd var_90 
  loc_C41351: ExitProcHresult
End Function

Private Function Proc_314_19_C223A4() 'C223A4
  'Data Table: 49CAEC
  loc_C218DC: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C218E1: PopAdLdVar
  loc_C218E2: FLdPr Me
  loc_C218E5: MemLdRfVar from_stack_1.global_60
  loc_C218E8: LdPrVar
  loc_C218EA: LateMemCall
  loc_C218F0: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C218F5: PopAdLdVar
  loc_C218F6: FLdPr Me
  loc_C218F9: MemLdRfVar from_stack_1.global_60
  loc_C218FC: LdPrVar
  loc_C218FE: LateMemCall
  loc_C21904: LitVarStr var_94, "<head>"
  loc_C21909: PopAdLdVar
  loc_C2190A: FLdPr Me
  loc_C2190D: MemLdRfVar from_stack_1.global_60
  loc_C21910: LdPrVar
  loc_C21912: LateMemCall
  loc_C21918: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C2191D: PopAdLdVar
  loc_C2191E: FLdPr Me
  loc_C21921: MemLdRfVar from_stack_1.global_60
  loc_C21924: LdPrVar
  loc_C21926: LateMemCall
  loc_C2192C: LitStr "<title>"
  loc_C2192F: FLdRfVar var_A8
  loc_C21932: FLdPr Me
  loc_C21935:  = Me.Caption
  loc_C2193A: ILdRf var_A8
  loc_C2193D: ConcatStr
  loc_C2193E: FStStrNoPop var_AC
  loc_C21941: LitStr "</title>"
  loc_C21944: ConcatStr
  loc_C21945: CVarStr var_BC
  loc_C21948: PopAdLdVar
  loc_C21949: FLdPr Me
  loc_C2194C: MemLdRfVar from_stack_1.global_60
  loc_C2194F: LdPrVar
  loc_C21951: LateMemCall
  loc_C21957: FFreeStr var_A8 = ""
  loc_C2195E: FFree1Var var_BC = ""
  loc_C21961: LitVarStr var_94, "<style type=""text/css"">"
  loc_C21966: PopAdLdVar
  loc_C21967: FLdPr Me
  loc_C2196A: MemLdRfVar from_stack_1.global_60
  loc_C2196D: LdPrVar
  loc_C2196F: LateMemCall
  loc_C21975: LitVarStr var_94, "<!--"
  loc_C2197A: PopAdLdVar
  loc_C2197B: FLdPr Me
  loc_C2197E: MemLdRfVar from_stack_1.global_60
  loc_C21981: LdPrVar
  loc_C21983: LateMemCall
  loc_C21989: LitVarStr var_94, ".Encabezado {"
  loc_C2198E: PopAdLdVar
  loc_C2198F: FLdPr Me
  loc_C21992: MemLdRfVar from_stack_1.global_60
  loc_C21995: LdPrVar
  loc_C21997: LateMemCall
  loc_C2199D: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C219A2: PopAdLdVar
  loc_C219A3: FLdPr Me
  loc_C219A6: MemLdRfVar from_stack_1.global_60
  loc_C219A9: LdPrVar
  loc_C219AB: LateMemCall
  loc_C219B1: LitVarStr var_94, " font-size: 10px;"
  loc_C219B6: PopAdLdVar
  loc_C219B7: FLdPr Me
  loc_C219BA: MemLdRfVar from_stack_1.global_60
  loc_C219BD: LdPrVar
  loc_C219BF: LateMemCall
  loc_C219C5: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C219CA: PopAdLdVar
  loc_C219CB: FLdPr Me
  loc_C219CE: MemLdRfVar from_stack_1.global_60
  loc_C219D1: LdPrVar
  loc_C219D3: LateMemCall
  loc_C219D9: LitVarStr var_94, "}"
  loc_C219DE: PopAdLdVar
  loc_C219DF: FLdPr Me
  loc_C219E2: MemLdRfVar from_stack_1.global_60
  loc_C219E5: LdPrVar
  loc_C219E7: LateMemCall
  loc_C219ED: LitVarStr var_94, ".Normal {"
  loc_C219F2: PopAdLdVar
  loc_C219F3: FLdPr Me
  loc_C219F6: MemLdRfVar from_stack_1.global_60
  loc_C219F9: LdPrVar
  loc_C219FB: LateMemCall
  loc_C21A01: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C21A06: PopAdLdVar
  loc_C21A07: FLdPr Me
  loc_C21A0A: MemLdRfVar from_stack_1.global_60
  loc_C21A0D: LdPrVar
  loc_C21A0F: LateMemCall
  loc_C21A15: LitVarStr var_94, " font-size: 10px;"
  loc_C21A1A: PopAdLdVar
  loc_C21A1B: FLdPr Me
  loc_C21A1E: MemLdRfVar from_stack_1.global_60
  loc_C21A21: LdPrVar
  loc_C21A23: LateMemCall
  loc_C21A29: LitVarStr var_94, " vertical-align: top;"
  loc_C21A2E: PopAdLdVar
  loc_C21A2F: FLdPr Me
  loc_C21A32: MemLdRfVar from_stack_1.global_60
  loc_C21A35: LdPrVar
  loc_C21A37: LateMemCall
  loc_C21A3D: LitVarStr var_94, "}"
  loc_C21A42: PopAdLdVar
  loc_C21A43: FLdPr Me
  loc_C21A46: MemLdRfVar from_stack_1.global_60
  loc_C21A49: LdPrVar
  loc_C21A4B: LateMemCall
  loc_C21A51: LitVarStr var_94, ".DomiPostal {"
  loc_C21A56: PopAdLdVar
  loc_C21A57: FLdPr Me
  loc_C21A5A: MemLdRfVar from_stack_1.global_60
  loc_C21A5D: LdPrVar
  loc_C21A5F: LateMemCall
  loc_C21A65: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C21A6A: PopAdLdVar
  loc_C21A6B: FLdPr Me
  loc_C21A6E: MemLdRfVar from_stack_1.global_60
  loc_C21A71: LdPrVar
  loc_C21A73: LateMemCall
  loc_C21A79: LitVarStr var_94, "  font-size: 14px;"
  loc_C21A7E: PopAdLdVar
  loc_C21A7F: FLdPr Me
  loc_C21A82: MemLdRfVar from_stack_1.global_60
  loc_C21A85: LdPrVar
  loc_C21A87: LateMemCall
  loc_C21A8D: LitVarStr var_94, "  vertical-align: top;"
  loc_C21A92: PopAdLdVar
  loc_C21A93: FLdPr Me
  loc_C21A96: MemLdRfVar from_stack_1.global_60
  loc_C21A99: LdPrVar
  loc_C21A9B: LateMemCall
  loc_C21AA1: LitVarStr var_94, "  font-weight: bold;"
  loc_C21AA6: PopAdLdVar
  loc_C21AA7: FLdPr Me
  loc_C21AAA: MemLdRfVar from_stack_1.global_60
  loc_C21AAD: LdPrVar
  loc_C21AAF: LateMemCall
  loc_C21AB5: LitVarStr var_94, "  padding-top: 1px;"
  loc_C21ABA: PopAdLdVar
  loc_C21ABB: FLdPr Me
  loc_C21ABE: MemLdRfVar from_stack_1.global_60
  loc_C21AC1: LdPrVar
  loc_C21AC3: LateMemCall
  loc_C21AC9: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C21ACE: PopAdLdVar
  loc_C21ACF: FLdPr Me
  loc_C21AD2: MemLdRfVar from_stack_1.global_60
  loc_C21AD5: LdPrVar
  loc_C21AD7: LateMemCall
  loc_C21ADD: LitVarStr var_94, "  padding-left: 5px;"
  loc_C21AE2: PopAdLdVar
  loc_C21AE3: FLdPr Me
  loc_C21AE6: MemLdRfVar from_stack_1.global_60
  loc_C21AE9: LdPrVar
  loc_C21AEB: LateMemCall
  loc_C21AF1: LitVarStr var_94, "  padding-right: 5px;"
  loc_C21AF6: PopAdLdVar
  loc_C21AF7: FLdPr Me
  loc_C21AFA: MemLdRfVar from_stack_1.global_60
  loc_C21AFD: LdPrVar
  loc_C21AFF: LateMemCall
  loc_C21B05: LitVarStr var_94, "}"
  loc_C21B0A: PopAdLdVar
  loc_C21B0B: FLdPr Me
  loc_C21B0E: MemLdRfVar from_stack_1.global_60
  loc_C21B11: LdPrVar
  loc_C21B13: LateMemCall
  loc_C21B19: LitVarStr var_94, ".DomiReal {"
  loc_C21B1E: PopAdLdVar
  loc_C21B1F: FLdPr Me
  loc_C21B22: MemLdRfVar from_stack_1.global_60
  loc_C21B25: LdPrVar
  loc_C21B27: LateMemCall
  loc_C21B2D: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C21B32: PopAdLdVar
  loc_C21B33: FLdPr Me
  loc_C21B36: MemLdRfVar from_stack_1.global_60
  loc_C21B39: LdPrVar
  loc_C21B3B: LateMemCall
  loc_C21B41: LitVarStr var_94, "  font-size: 14px;"
  loc_C21B46: PopAdLdVar
  loc_C21B47: FLdPr Me
  loc_C21B4A: MemLdRfVar from_stack_1.global_60
  loc_C21B4D: LdPrVar
  loc_C21B4F: LateMemCall
  loc_C21B55: LitVarStr var_94, "  vertical-align: top;"
  loc_C21B5A: PopAdLdVar
  loc_C21B5B: FLdPr Me
  loc_C21B5E: MemLdRfVar from_stack_1.global_60
  loc_C21B61: LdPrVar
  loc_C21B63: LateMemCall
  loc_C21B69: LitVarStr var_94, "  padding-top: 1px;"
  loc_C21B6E: PopAdLdVar
  loc_C21B6F: FLdPr Me
  loc_C21B72: MemLdRfVar from_stack_1.global_60
  loc_C21B75: LdPrVar
  loc_C21B77: LateMemCall
  loc_C21B7D: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C21B82: PopAdLdVar
  loc_C21B83: FLdPr Me
  loc_C21B86: MemLdRfVar from_stack_1.global_60
  loc_C21B89: LdPrVar
  loc_C21B8B: LateMemCall
  loc_C21B91: LitVarStr var_94, "  padding-left: 5px;"
  loc_C21B96: PopAdLdVar
  loc_C21B97: FLdPr Me
  loc_C21B9A: MemLdRfVar from_stack_1.global_60
  loc_C21B9D: LdPrVar
  loc_C21B9F: LateMemCall
  loc_C21BA5: LitVarStr var_94, "  padding-right: 5px;"
  loc_C21BAA: PopAdLdVar
  loc_C21BAB: FLdPr Me
  loc_C21BAE: MemLdRfVar from_stack_1.global_60
  loc_C21BB1: LdPrVar
  loc_C21BB3: LateMemCall
  loc_C21BB9: LitVarStr var_94, "}"
  loc_C21BBE: PopAdLdVar
  loc_C21BBF: FLdPr Me
  loc_C21BC2: MemLdRfVar from_stack_1.global_60
  loc_C21BC5: LdPrVar
  loc_C21BC7: LateMemCall
  loc_C21BCD: LitVarStr var_94, ".MargIzq {"
  loc_C21BD2: PopAdLdVar
  loc_C21BD3: FLdPr Me
  loc_C21BD6: MemLdRfVar from_stack_1.global_60
  loc_C21BD9: LdPrVar
  loc_C21BDB: LateMemCall
  loc_C21BE1: LitVarStr var_94, "  padding-left:5px"
  loc_C21BE6: PopAdLdVar
  loc_C21BE7: FLdPr Me
  loc_C21BEA: MemLdRfVar from_stack_1.global_60
  loc_C21BED: LdPrVar
  loc_C21BEF: LateMemCall
  loc_C21BF5: LitVarStr var_94, "}"
  loc_C21BFA: PopAdLdVar
  loc_C21BFB: FLdPr Me
  loc_C21BFE: MemLdRfVar from_stack_1.global_60
  loc_C21C01: LdPrVar
  loc_C21C03: LateMemCall
  loc_C21C09: LitVarStr var_94, ".MargDer {"
  loc_C21C0E: PopAdLdVar
  loc_C21C0F: FLdPr Me
  loc_C21C12: MemLdRfVar from_stack_1.global_60
  loc_C21C15: LdPrVar
  loc_C21C17: LateMemCall
  loc_C21C1D: LitVarStr var_94, "  padding-right:5px"
  loc_C21C22: PopAdLdVar
  loc_C21C23: FLdPr Me
  loc_C21C26: MemLdRfVar from_stack_1.global_60
  loc_C21C29: LdPrVar
  loc_C21C2B: LateMemCall
  loc_C21C31: LitVarStr var_94, "}"
  loc_C21C36: PopAdLdVar
  loc_C21C37: FLdPr Me
  loc_C21C3A: MemLdRfVar from_stack_1.global_60
  loc_C21C3D: LdPrVar
  loc_C21C3F: LateMemCall
  loc_C21C45: LitVarStr var_94, ".NormalAbajo {"
  loc_C21C4A: PopAdLdVar
  loc_C21C4B: FLdPr Me
  loc_C21C4E: MemLdRfVar from_stack_1.global_60
  loc_C21C51: LdPrVar
  loc_C21C53: LateMemCall
  loc_C21C59: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C21C5E: PopAdLdVar
  loc_C21C5F: FLdPr Me
  loc_C21C62: MemLdRfVar from_stack_1.global_60
  loc_C21C65: LdPrVar
  loc_C21C67: LateMemCall
  loc_C21C6D: LitVarStr var_94, " font-size: 11px;"
  loc_C21C72: PopAdLdVar
  loc_C21C73: FLdPr Me
  loc_C21C76: MemLdRfVar from_stack_1.global_60
  loc_C21C79: LdPrVar
  loc_C21C7B: LateMemCall
  loc_C21C81: LitVarStr var_94, " vertical-align:bottom;"
  loc_C21C86: PopAdLdVar
  loc_C21C87: FLdPr Me
  loc_C21C8A: MemLdRfVar from_stack_1.global_60
  loc_C21C8D: LdPrVar
  loc_C21C8F: LateMemCall
  loc_C21C95: LitVarStr var_94, "}"
  loc_C21C9A: PopAdLdVar
  loc_C21C9B: FLdPr Me
  loc_C21C9E: MemLdRfVar from_stack_1.global_60
  loc_C21CA1: LdPrVar
  loc_C21CA3: LateMemCall
  loc_C21CA9: LitVarStr var_94, ".NormalDetalle {"
  loc_C21CAE: PopAdLdVar
  loc_C21CAF: FLdPr Me
  loc_C21CB2: MemLdRfVar from_stack_1.global_60
  loc_C21CB5: LdPrVar
  loc_C21CB7: LateMemCall
  loc_C21CBD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C21CC2: PopAdLdVar
  loc_C21CC3: FLdPr Me
  loc_C21CC6: MemLdRfVar from_stack_1.global_60
  loc_C21CC9: LdPrVar
  loc_C21CCB: LateMemCall
  loc_C21CD1: LitVarStr var_94, " font-size: 10px;"
  loc_C21CD6: PopAdLdVar
  loc_C21CD7: FLdPr Me
  loc_C21CDA: MemLdRfVar from_stack_1.global_60
  loc_C21CDD: LdPrVar
  loc_C21CDF: LateMemCall
  loc_C21CE5: LitVarStr var_94, " vertical-align: top;"
  loc_C21CEA: PopAdLdVar
  loc_C21CEB: FLdPr Me
  loc_C21CEE: MemLdRfVar from_stack_1.global_60
  loc_C21CF1: LdPrVar
  loc_C21CF3: LateMemCall
  loc_C21CF9: LitVarStr var_94, "}"
  loc_C21CFE: PopAdLdVar
  loc_C21CFF: FLdPr Me
  loc_C21D02: MemLdRfVar from_stack_1.global_60
  loc_C21D05: LdPrVar
  loc_C21D07: LateMemCall
  loc_C21D0D: LitVarStr var_94, ".NormalBloqueFin {"
  loc_C21D12: PopAdLdVar
  loc_C21D13: FLdPr Me
  loc_C21D16: MemLdRfVar from_stack_1.global_60
  loc_C21D19: LdPrVar
  loc_C21D1B: LateMemCall
  loc_C21D21: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C21D26: PopAdLdVar
  loc_C21D27: FLdPr Me
  loc_C21D2A: MemLdRfVar from_stack_1.global_60
  loc_C21D2D: LdPrVar
  loc_C21D2F: LateMemCall
  loc_C21D35: LitVarStr var_94, " font-size: 10px;"
  loc_C21D3A: PopAdLdVar
  loc_C21D3B: FLdPr Me
  loc_C21D3E: MemLdRfVar from_stack_1.global_60
  loc_C21D41: LdPrVar
  loc_C21D43: LateMemCall
  loc_C21D49: LitVarStr var_94, " vertical-align: top;"
  loc_C21D4E: PopAdLdVar
  loc_C21D4F: FLdPr Me
  loc_C21D52: MemLdRfVar from_stack_1.global_60
  loc_C21D55: LdPrVar
  loc_C21D57: LateMemCall
  loc_C21D5D: LitVarStr var_94, " padding-right: 1px;"
  loc_C21D62: PopAdLdVar
  loc_C21D63: FLdPr Me
  loc_C21D66: MemLdRfVar from_stack_1.global_60
  loc_C21D69: LdPrVar
  loc_C21D6B: LateMemCall
  loc_C21D71: LitVarStr var_94, "}"
  loc_C21D76: PopAdLdVar
  loc_C21D77: FLdPr Me
  loc_C21D7A: MemLdRfVar from_stack_1.global_60
  loc_C21D7D: LdPrVar
  loc_C21D7F: LateMemCall
  loc_C21D85: LitVarStr var_94, ".NormalBloqueFinGrande {"
  loc_C21D8A: PopAdLdVar
  loc_C21D8B: FLdPr Me
  loc_C21D8E: MemLdRfVar from_stack_1.global_60
  loc_C21D91: LdPrVar
  loc_C21D93: LateMemCall
  loc_C21D99: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C21D9E: PopAdLdVar
  loc_C21D9F: FLdPr Me
  loc_C21DA2: MemLdRfVar from_stack_1.global_60
  loc_C21DA5: LdPrVar
  loc_C21DA7: LateMemCall
  loc_C21DAD: LitVarStr var_94, " font-size: 14px;"
  loc_C21DB2: PopAdLdVar
  loc_C21DB3: FLdPr Me
  loc_C21DB6: MemLdRfVar from_stack_1.global_60
  loc_C21DB9: LdPrVar
  loc_C21DBB: LateMemCall
  loc_C21DC1: LitVarStr var_94, " vertical-align: top;"
  loc_C21DC6: PopAdLdVar
  loc_C21DC7: FLdPr Me
  loc_C21DCA: MemLdRfVar from_stack_1.global_60
  loc_C21DCD: LdPrVar
  loc_C21DCF: LateMemCall
  loc_C21DD5: LitVarStr var_94, "}"
  loc_C21DDA: PopAdLdVar
  loc_C21DDB: FLdPr Me
  loc_C21DDE: MemLdRfVar from_stack_1.global_60
  loc_C21DE1: LdPrVar
  loc_C21DE3: LateMemCall
  loc_C21DE9: LitVarStr var_94, ".NombreMunicipio {"
  loc_C21DEE: PopAdLdVar
  loc_C21DEF: FLdPr Me
  loc_C21DF2: MemLdRfVar from_stack_1.global_60
  loc_C21DF5: LdPrVar
  loc_C21DF7: LateMemCall
  loc_C21DFD: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C21E02: PopAdLdVar
  loc_C21E03: FLdPr Me
  loc_C21E06: MemLdRfVar from_stack_1.global_60
  loc_C21E09: LdPrVar
  loc_C21E0B: LateMemCall
  loc_C21E11: LitVarStr var_94, " font-size: 14px;"
  loc_C21E16: PopAdLdVar
  loc_C21E17: FLdPr Me
  loc_C21E1A: MemLdRfVar from_stack_1.global_60
  loc_C21E1D: LdPrVar
  loc_C21E1F: LateMemCall
  loc_C21E25: LitVarStr var_94, " font-weight: bold;"
  loc_C21E2A: PopAdLdVar
  loc_C21E2B: FLdPr Me
  loc_C21E2E: MemLdRfVar from_stack_1.global_60
  loc_C21E31: LdPrVar
  loc_C21E33: LateMemCall
  loc_C21E39: LitVarStr var_94, "}"
  loc_C21E3E: PopAdLdVar
  loc_C21E3F: FLdPr Me
  loc_C21E42: MemLdRfVar from_stack_1.global_60
  loc_C21E45: LdPrVar
  loc_C21E47: LateMemCall
  loc_C21E4D: LitVarStr var_94, ".DatosMunicipio {"
  loc_C21E52: PopAdLdVar
  loc_C21E53: FLdPr Me
  loc_C21E56: MemLdRfVar from_stack_1.global_60
  loc_C21E59: LdPrVar
  loc_C21E5B: LateMemCall
  loc_C21E61: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C21E66: PopAdLdVar
  loc_C21E67: FLdPr Me
  loc_C21E6A: MemLdRfVar from_stack_1.global_60
  loc_C21E6D: LdPrVar
  loc_C21E6F: LateMemCall
  loc_C21E75: LitVarStr var_94, " font-size: 9px;"
  loc_C21E7A: PopAdLdVar
  loc_C21E7B: FLdPr Me
  loc_C21E7E: MemLdRfVar from_stack_1.global_60
  loc_C21E81: LdPrVar
  loc_C21E83: LateMemCall
  loc_C21E89: LitVarStr var_94, "}"
  loc_C21E8E: PopAdLdVar
  loc_C21E8F: FLdPr Me
  loc_C21E92: MemLdRfVar from_stack_1.global_60
  loc_C21E95: LdPrVar
  loc_C21E97: LateMemCall
  loc_C21E9D: LitVarStr var_94, ".Totales {"
  loc_C21EA2: PopAdLdVar
  loc_C21EA3: FLdPr Me
  loc_C21EA6: MemLdRfVar from_stack_1.global_60
  loc_C21EA9: LdPrVar
  loc_C21EAB: LateMemCall
  loc_C21EB1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C21EB6: PopAdLdVar
  loc_C21EB7: FLdPr Me
  loc_C21EBA: MemLdRfVar from_stack_1.global_60
  loc_C21EBD: LdPrVar
  loc_C21EBF: LateMemCall
  loc_C21EC5: LitVarStr var_94, " font-size: 13px;"
  loc_C21ECA: PopAdLdVar
  loc_C21ECB: FLdPr Me
  loc_C21ECE: MemLdRfVar from_stack_1.global_60
  loc_C21ED1: LdPrVar
  loc_C21ED3: LateMemCall
  loc_C21ED9: LitVarStr var_94, " vertical-align: top;"
  loc_C21EDE: PopAdLdVar
  loc_C21EDF: FLdPr Me
  loc_C21EE2: MemLdRfVar from_stack_1.global_60
  loc_C21EE5: LdPrVar
  loc_C21EE7: LateMemCall
  loc_C21EED: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C21EF2: PopAdLdVar
  loc_C21EF3: FLdPr Me
  loc_C21EF6: MemLdRfVar from_stack_1.global_60
  loc_C21EF9: LdPrVar
  loc_C21EFB: LateMemCall
  loc_C21F01: LitVarStr var_94, " font-weight: bold;"
  loc_C21F06: PopAdLdVar
  loc_C21F07: FLdPr Me
  loc_C21F0A: MemLdRfVar from_stack_1.global_60
  loc_C21F0D: LdPrVar
  loc_C21F0F: LateMemCall
  loc_C21F15: LitVarStr var_94, " padding-right: 1px;"
  loc_C21F1A: PopAdLdVar
  loc_C21F1B: FLdPr Me
  loc_C21F1E: MemLdRfVar from_stack_1.global_60
  loc_C21F21: LdPrVar
  loc_C21F23: LateMemCall
  loc_C21F29: LitVarStr var_94, "}"
  loc_C21F2E: PopAdLdVar
  loc_C21F2F: FLdPr Me
  loc_C21F32: MemLdRfVar from_stack_1.global_60
  loc_C21F35: LdPrVar
  loc_C21F37: LateMemCall
  loc_C21F3D: LitVarStr var_94, ".Total {"
  loc_C21F42: PopAdLdVar
  loc_C21F43: FLdPr Me
  loc_C21F46: MemLdRfVar from_stack_1.global_60
  loc_C21F49: LdPrVar
  loc_C21F4B: LateMemCall
  loc_C21F51: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C21F56: PopAdLdVar
  loc_C21F57: FLdPr Me
  loc_C21F5A: MemLdRfVar from_stack_1.global_60
  loc_C21F5D: LdPrVar
  loc_C21F5F: LateMemCall
  loc_C21F65: LitVarStr var_94, " font-size: 14px;"
  loc_C21F6A: PopAdLdVar
  loc_C21F6B: FLdPr Me
  loc_C21F6E: MemLdRfVar from_stack_1.global_60
  loc_C21F71: LdPrVar
  loc_C21F73: LateMemCall
  loc_C21F79: LitVarStr var_94, " vertical-align: top;"
  loc_C21F7E: PopAdLdVar
  loc_C21F7F: FLdPr Me
  loc_C21F82: MemLdRfVar from_stack_1.global_60
  loc_C21F85: LdPrVar
  loc_C21F87: LateMemCall
  loc_C21F8D: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C21F92: PopAdLdVar
  loc_C21F93: FLdPr Me
  loc_C21F96: MemLdRfVar from_stack_1.global_60
  loc_C21F99: LdPrVar
  loc_C21F9B: LateMemCall
  loc_C21FA1: LitVarStr var_94, " font-weight: bold;"
  loc_C21FA6: PopAdLdVar
  loc_C21FA7: FLdPr Me
  loc_C21FAA: MemLdRfVar from_stack_1.global_60
  loc_C21FAD: LdPrVar
  loc_C21FAF: LateMemCall
  loc_C21FB5: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C21FBA: PopAdLdVar
  loc_C21FBB: FLdPr Me
  loc_C21FBE: MemLdRfVar from_stack_1.global_60
  loc_C21FC1: LdPrVar
  loc_C21FC3: LateMemCall
  loc_C21FC9: LitVarStr var_94, "}"
  loc_C21FCE: PopAdLdVar
  loc_C21FCF: FLdPr Me
  loc_C21FD2: MemLdRfVar from_stack_1.global_60
  loc_C21FD5: LdPrVar
  loc_C21FD7: LateMemCall
  loc_C21FDD: LitVarStr var_94, ".CodBar {"
  loc_C21FE2: PopAdLdVar
  loc_C21FE3: FLdPr Me
  loc_C21FE6: MemLdRfVar from_stack_1.global_60
  loc_C21FE9: LdPrVar
  loc_C21FEB: LateMemCall
  loc_C21FF1: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C21FF6: PopAdLdVar
  loc_C21FF7: FLdPr Me
  loc_C21FFA: MemLdRfVar from_stack_1.global_60
  loc_C21FFD: LdPrVar
  loc_C21FFF: LateMemCall
  loc_C22005: LitVarStr var_94, " font-size: 48px;"
  loc_C2200A: PopAdLdVar
  loc_C2200B: FLdPr Me
  loc_C2200E: MemLdRfVar from_stack_1.global_60
  loc_C22011: LdPrVar
  loc_C22013: LateMemCall
  loc_C22019: LitVarStr var_94, " font-style: normal;"
  loc_C2201E: PopAdLdVar
  loc_C2201F: FLdPr Me
  loc_C22022: MemLdRfVar from_stack_1.global_60
  loc_C22025: LdPrVar
  loc_C22027: LateMemCall
  loc_C2202D: LitVarStr var_94, " line-height: normal;"
  loc_C22032: PopAdLdVar
  loc_C22033: FLdPr Me
  loc_C22036: MemLdRfVar from_stack_1.global_60
  loc_C22039: LdPrVar
  loc_C2203B: LateMemCall
  loc_C22041: LitVarStr var_94, " font-weight: normal;"
  loc_C22046: PopAdLdVar
  loc_C22047: FLdPr Me
  loc_C2204A: MemLdRfVar from_stack_1.global_60
  loc_C2204D: LdPrVar
  loc_C2204F: LateMemCall
  loc_C22055: LitVarStr var_94, "}"
  loc_C2205A: PopAdLdVar
  loc_C2205B: FLdPr Me
  loc_C2205E: MemLdRfVar from_stack_1.global_60
  loc_C22061: LdPrVar
  loc_C22063: LateMemCall
  loc_C22069: LitVarStr var_94, ".CodBarChica {"
  loc_C2206E: PopAdLdVar
  loc_C2206F: FLdPr Me
  loc_C22072: MemLdRfVar from_stack_1.global_60
  loc_C22075: LdPrVar
  loc_C22077: LateMemCall
  loc_C2207D: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C22082: PopAdLdVar
  loc_C22083: FLdPr Me
  loc_C22086: MemLdRfVar from_stack_1.global_60
  loc_C22089: LdPrVar
  loc_C2208B: LateMemCall
  loc_C22091: LitVarStr var_94, " font-size: 38px;"
  loc_C22096: PopAdLdVar
  loc_C22097: FLdPr Me
  loc_C2209A: MemLdRfVar from_stack_1.global_60
  loc_C2209D: LdPrVar
  loc_C2209F: LateMemCall
  loc_C220A5: LitVarStr var_94, " font-style: normal;"
  loc_C220AA: PopAdLdVar
  loc_C220AB: FLdPr Me
  loc_C220AE: MemLdRfVar from_stack_1.global_60
  loc_C220B1: LdPrVar
  loc_C220B3: LateMemCall
  loc_C220B9: LitVarStr var_94, " line-height: normal;"
  loc_C220BE: PopAdLdVar
  loc_C220BF: FLdPr Me
  loc_C220C2: MemLdRfVar from_stack_1.global_60
  loc_C220C5: LdPrVar
  loc_C220C7: LateMemCall
  loc_C220CD: LitVarStr var_94, " font-weight: normal;"
  loc_C220D2: PopAdLdVar
  loc_C220D3: FLdPr Me
  loc_C220D6: MemLdRfVar from_stack_1.global_60
  loc_C220D9: LdPrVar
  loc_C220DB: LateMemCall
  loc_C220E1: LitVarStr var_94, "}"
  loc_C220E6: PopAdLdVar
  loc_C220E7: FLdPr Me
  loc_C220EA: MemLdRfVar from_stack_1.global_60
  loc_C220ED: LdPrVar
  loc_C220EF: LateMemCall
  loc_C220F5: LitVarStr var_94, ".CorreoCelda {"
  loc_C220FA: PopAdLdVar
  loc_C220FB: FLdPr Me
  loc_C220FE: MemLdRfVar from_stack_1.global_60
  loc_C22101: LdPrVar
  loc_C22103: LateMemCall
  loc_C22109: LitVarStr var_94, " border: 1px solid black;"
  loc_C2210E: PopAdLdVar
  loc_C2210F: FLdPr Me
  loc_C22112: MemLdRfVar from_stack_1.global_60
  loc_C22115: LdPrVar
  loc_C22117: LateMemCall
  loc_C2211D: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C22122: PopAdLdVar
  loc_C22123: FLdPr Me
  loc_C22126: MemLdRfVar from_stack_1.global_60
  loc_C22129: LdPrVar
  loc_C2212B: LateMemCall
  loc_C22131: LitVarStr var_94, " font-size: 6px;"
  loc_C22136: PopAdLdVar
  loc_C22137: FLdPr Me
  loc_C2213A: MemLdRfVar from_stack_1.global_60
  loc_C2213D: LdPrVar
  loc_C2213F: LateMemCall
  loc_C22145: LitVarStr var_94, " text-align:center;"
  loc_C2214A: PopAdLdVar
  loc_C2214B: FLdPr Me
  loc_C2214E: MemLdRfVar from_stack_1.global_60
  loc_C22151: LdPrVar
  loc_C22153: LateMemCall
  loc_C22159: LitVarStr var_94, " vertical-align: middle;"
  loc_C2215E: PopAdLdVar
  loc_C2215F: FLdPr Me
  loc_C22162: MemLdRfVar from_stack_1.global_60
  loc_C22165: LdPrVar
  loc_C22167: LateMemCall
  loc_C2216D: LitVarStr var_94, "}"
  loc_C22172: PopAdLdVar
  loc_C22173: FLdPr Me
  loc_C22176: MemLdRfVar from_stack_1.global_60
  loc_C22179: LdPrVar
  loc_C2217B: LateMemCall
  loc_C22181: LitVarStr var_94, ".CorreoCeldaFinal {"
  loc_C22186: PopAdLdVar
  loc_C22187: FLdPr Me
  loc_C2218A: MemLdRfVar from_stack_1.global_60
  loc_C2218D: LdPrVar
  loc_C2218F: LateMemCall
  loc_C22195: LitVarStr var_94, " border:none;"
  loc_C2219A: PopAdLdVar
  loc_C2219B: FLdPr Me
  loc_C2219E: MemLdRfVar from_stack_1.global_60
  loc_C221A1: LdPrVar
  loc_C221A3: LateMemCall
  loc_C221A9: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C221AE: PopAdLdVar
  loc_C221AF: FLdPr Me
  loc_C221B2: MemLdRfVar from_stack_1.global_60
  loc_C221B5: LdPrVar
  loc_C221B7: LateMemCall
  loc_C221BD: LitVarStr var_94, " font-size: 6px;"
  loc_C221C2: PopAdLdVar
  loc_C221C3: FLdPr Me
  loc_C221C6: MemLdRfVar from_stack_1.global_60
  loc_C221C9: LdPrVar
  loc_C221CB: LateMemCall
  loc_C221D1: LitVarStr var_94, " text-align:center;"
  loc_C221D6: PopAdLdVar
  loc_C221D7: FLdPr Me
  loc_C221DA: MemLdRfVar from_stack_1.global_60
  loc_C221DD: LdPrVar
  loc_C221DF: LateMemCall
  loc_C221E5: LitVarStr var_94, " vertical-align: middle;"
  loc_C221EA: PopAdLdVar
  loc_C221EB: FLdPr Me
  loc_C221EE: MemLdRfVar from_stack_1.global_60
  loc_C221F1: LdPrVar
  loc_C221F3: LateMemCall
  loc_C221F9: LitVarStr var_94, "}"
  loc_C221FE: PopAdLdVar
  loc_C221FF: FLdPr Me
  loc_C22202: MemLdRfVar from_stack_1.global_60
  loc_C22205: LdPrVar
  loc_C22207: LateMemCall
  loc_C2220D: LitVarStr var_94, ".CorreoTabla {"
  loc_C22212: PopAdLdVar
  loc_C22213: FLdPr Me
  loc_C22216: MemLdRfVar from_stack_1.global_60
  loc_C22219: LdPrVar
  loc_C2221B: LateMemCall
  loc_C22221: LitVarStr var_94, " border:none;"
  loc_C22226: PopAdLdVar
  loc_C22227: FLdPr Me
  loc_C2222A: MemLdRfVar from_stack_1.global_60
  loc_C2222D: LdPrVar
  loc_C2222F: LateMemCall
  loc_C22235: LitVarStr var_94, " border-collapse:collapse;"
  loc_C2223A: PopAdLdVar
  loc_C2223B: FLdPr Me
  loc_C2223E: MemLdRfVar from_stack_1.global_60
  loc_C22241: LdPrVar
  loc_C22243: LateMemCall
  loc_C22249: LitVarStr var_94, "}"
  loc_C2224E: PopAdLdVar
  loc_C2224F: FLdPr Me
  loc_C22252: MemLdRfVar from_stack_1.global_60
  loc_C22255: LdPrVar
  loc_C22257: LateMemCall
  loc_C2225D: LitVarStr var_94, ".MissChild {"
  loc_C22262: PopAdLdVar
  loc_C22263: FLdPr Me
  loc_C22266: MemLdRfVar from_stack_1.global_60
  loc_C22269: LdPrVar
  loc_C2226B: LateMemCall
  loc_C22271: LitVarStr var_94, " float:right;"
  loc_C22276: PopAdLdVar
  loc_C22277: FLdPr Me
  loc_C2227A: MemLdRfVar from_stack_1.global_60
  loc_C2227D: LdPrVar
  loc_C2227F: LateMemCall
  loc_C22285: LitVarStr var_94, " clear:right;"
  loc_C2228A: PopAdLdVar
  loc_C2228B: FLdPr Me
  loc_C2228E: MemLdRfVar from_stack_1.global_60
  loc_C22291: LdPrVar
  loc_C22293: LateMemCall
  loc_C22299: LitVarStr var_94, " margin:10px;"
  loc_C2229E: PopAdLdVar
  loc_C2229F: FLdPr Me
  loc_C222A2: MemLdRfVar from_stack_1.global_60
  loc_C222A5: LdPrVar
  loc_C222A7: LateMemCall
  loc_C222AD: LitVarStr var_94, " vertical-align:bottom"
  loc_C222B2: PopAdLdVar
  loc_C222B3: FLdPr Me
  loc_C222B6: MemLdRfVar from_stack_1.global_60
  loc_C222B9: LdPrVar
  loc_C222BB: LateMemCall
  loc_C222C1: LitVarStr var_94, "}"
  loc_C222C6: PopAdLdVar
  loc_C222C7: FLdPr Me
  loc_C222CA: MemLdRfVar from_stack_1.global_60
  loc_C222CD: LdPrVar
  loc_C222CF: LateMemCall
  loc_C222D5: LitVarStr var_94, ".NoBordeAbajo {"
  loc_C222DA: PopAdLdVar
  loc_C222DB: FLdPr Me
  loc_C222DE: MemLdRfVar from_stack_1.global_60
  loc_C222E1: LdPrVar
  loc_C222E3: LateMemCall
  loc_C222E9: LitVarStr var_94, " border-bottom:none"
  loc_C222EE: PopAdLdVar
  loc_C222EF: FLdPr Me
  loc_C222F2: MemLdRfVar from_stack_1.global_60
  loc_C222F5: LdPrVar
  loc_C222F7: LateMemCall
  loc_C222FD: LitVarStr var_94, "}"
  loc_C22302: PopAdLdVar
  loc_C22303: FLdPr Me
  loc_C22306: MemLdRfVar from_stack_1.global_60
  loc_C22309: LdPrVar
  loc_C2230B: LateMemCall
  loc_C22311: LitVarStr var_94, ".NoBordeArriba {"
  loc_C22316: PopAdLdVar
  loc_C22317: FLdPr Me
  loc_C2231A: MemLdRfVar from_stack_1.global_60
  loc_C2231D: LdPrVar
  loc_C2231F: LateMemCall
  loc_C22325: LitVarStr var_94, " border-top:none"
  loc_C2232A: PopAdLdVar
  loc_C2232B: FLdPr Me
  loc_C2232E: MemLdRfVar from_stack_1.global_60
  loc_C22331: LdPrVar
  loc_C22333: LateMemCall
  loc_C22339: LitVarStr var_94, "}"
  loc_C2233E: PopAdLdVar
  loc_C2233F: FLdPr Me
  loc_C22342: MemLdRfVar from_stack_1.global_60
  loc_C22345: LdPrVar
  loc_C22347: LateMemCall
  loc_C2234D: LitVarStr var_94, "-->"
  loc_C22352: PopAdLdVar
  loc_C22353: FLdPr Me
  loc_C22356: MemLdRfVar from_stack_1.global_60
  loc_C22359: LdPrVar
  loc_C2235B: LateMemCall
  loc_C22361: LitVarStr var_94, "</style>"
  loc_C22366: PopAdLdVar
  loc_C22367: FLdPr Me
  loc_C2236A: MemLdRfVar from_stack_1.global_60
  loc_C2236D: LdPrVar
  loc_C2236F: LateMemCall
  loc_C22375: LitI4 0
  loc_C2237A: FStStrCopy var_AC
  loc_C2237D: FLdRfVar var_AC
  loc_C22380: LitI4 0
  loc_C22385: FStStrCopy var_A8
  loc_C22388: FLdRfVar var_A8
  loc_C2238B: LitI2_Byte 0
  loc_C2238D: PopTmpLdAd2 var_BE
  loc_C22390: FLdPr Me
  loc_C22393: MemLdRfVar from_stack_1.global_60
  loc_C22396: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C2239B: FFreeStr var_A8 = ""
  loc_C223A2: ExitProcHresult
End Function

Private Function Proc_314_20_BE88C8() 'BE88C8
  'Data Table: 49CAEC
  loc_BE80DC: LitVarStr var_94, "<table align=""center"" height=""350"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_BE80E1: PopAdLdVar
  loc_BE80E2: FLdPr Me
  loc_BE80E5: MemLdRfVar from_stack_1.global_60
  loc_BE80E8: LdPrVar
  loc_BE80EA: LateMemCall
  loc_BE80F0: LitVarStr var_94, "  <tr valign=""top""><td height=""350"">"
  loc_BE80F5: PopAdLdVar
  loc_BE80F6: FLdPr Me
  loc_BE80F9: MemLdRfVar from_stack_1.global_60
  loc_BE80FC: LdPrVar
  loc_BE80FE: LateMemCall
  loc_BE8104: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_BE8109: PopAdLdVar
  loc_BE810A: FLdPr Me
  loc_BE810D: MemLdRfVar from_stack_1.global_60
  loc_BE8110: LdPrVar
  loc_BE8112: LateMemCall
  loc_BE8118: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE811D: PopAdLdVar
  loc_BE811E: FLdPr Me
  loc_BE8121: MemLdRfVar from_stack_1.global_60
  loc_BE8124: LdPrVar
  loc_BE8126: LateMemCall
  loc_BE812C: LitStr "        <td colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio MargIzq""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE812F: LitI2_Byte &H5F
  loc_BE8131: CStrUI1
  loc_BE8133: FStStrNoPop var_A8
  loc_BE8136: ConcatStr
  loc_BE8137: FStStrNoPop var_AC
  loc_BE813A: LitStr """ height="""
  loc_BE813D: ConcatStr
  loc_BE813E: FStStrNoPop var_B0
  loc_BE8141: LitI2_Byte &H3C
  loc_BE8143: CStrUI1
  loc_BE8145: FStStrNoPop var_B4
  loc_BE8148: ConcatStr
  loc_BE8149: FStStrNoPop var_B8
  loc_BE814C: LitStr """ align=""left""><span class=""NombreMunicipio"">"
  loc_BE814F: ConcatStr
  loc_BE8150: FStStrNoPop var_BC
  loc_BE8153: LitStr "Municipalidad de Guaymallén"
  loc_BE8156: ConcatStr
  loc_BE8157: FStStrNoPop var_C0
  loc_BE815A: LitStr "</span><br>"
  loc_BE815D: ConcatStr
  loc_BE815E: CVarStr var_D0
  loc_BE8161: PopAdLdVar
  loc_BE8162: FLdPr Me
  loc_BE8165: MemLdRfVar from_stack_1.global_60
  loc_BE8168: LdPrVar
  loc_BE816A: LateMemCall
  loc_BE8170: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BE8181: FFree1Var var_D0 = ""
  loc_BE8184: LitStr "          "
  loc_BE8187: LitStr "Dirección de Rentas"
  loc_BE818A: ConcatStr
  loc_BE818B: FStStrNoPop var_A8
  loc_BE818E: LitStr "<br>"
  loc_BE8191: ConcatStr
  loc_BE8192: CVarStr var_D0
  loc_BE8195: PopAdLdVar
  loc_BE8196: FLdPr Me
  loc_BE8199: MemLdRfVar from_stack_1.global_60
  loc_BE819C: LdPrVar
  loc_BE819E: LateMemCall
  loc_BE81A4: FFree1Str var_A8
  loc_BE81A7: FFree1Var var_D0 = ""
  loc_BE81AA: LitStr "          "
  loc_BE81AD: LitStr "Libertad 720 - Villa Nueva"
  loc_BE81B0: ConcatStr
  loc_BE81B1: FStStrNoPop var_A8
  loc_BE81B4: LitStr "<br>"
  loc_BE81B7: ConcatStr
  loc_BE81B8: CVarStr var_D0
  loc_BE81BB: PopAdLdVar
  loc_BE81BC: FLdPr Me
  loc_BE81BF: MemLdRfVar from_stack_1.global_60
  loc_BE81C2: LdPrVar
  loc_BE81C4: LateMemCall
  loc_BE81CA: FFree1Str var_A8
  loc_BE81CD: FFree1Var var_D0 = ""
  loc_BE81D0: LitStr "          "
  loc_BE81D3: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_BE81D6: ConcatStr
  loc_BE81D7: FStStrNoPop var_A8
  loc_BE81DA: LitStr "<br>"
  loc_BE81DD: ConcatStr
  loc_BE81DE: CVarStr var_D0
  loc_BE81E1: PopAdLdVar
  loc_BE81E2: FLdPr Me
  loc_BE81E5: MemLdRfVar from_stack_1.global_60
  loc_BE81E8: LdPrVar
  loc_BE81EA: LateMemCall
  loc_BE81F0: FFree1Str var_A8
  loc_BE81F3: FFree1Var var_D0 = ""
  loc_BE81F6: LitStr "          "
  loc_BE81F9: LitStr "C.U.I.T.: "
  loc_BE81FC: ConcatStr
  loc_BE81FD: FStStrNoPop var_A8
  loc_BE8200: LitStr "30-99914707-7"
  loc_BE8203: ConcatStr
  loc_BE8204: FStStrNoPop var_AC
  loc_BE8207: LitStr "</td>"
  loc_BE820A: ConcatStr
  loc_BE820B: CVarStr var_D0
  loc_BE820E: PopAdLdVar
  loc_BE820F: FLdPr Me
  loc_BE8212: MemLdRfVar from_stack_1.global_60
  loc_BE8215: LdPrVar
  loc_BE8217: LateMemCall
  loc_BE821D: FFreeStr var_A8 = ""
  loc_BE8224: FFree1Var var_D0 = ""
  loc_BE8227: LitVarStr var_94, "        <td class=""NoBordeAbajo"" width=""205"" height=""31"" align=""center"" valign=""middle"">"
  loc_BE822C: PopAdLdVar
  loc_BE822D: FLdPr Me
  loc_BE8230: MemLdRfVar from_stack_1.global_60
  loc_BE8233: LdPrVar
  loc_BE8235: LateMemCall
  loc_BE823B: LitVarStr var_94, "        <div>&nbsp;</div>"
  loc_BE8240: PopAdLdVar
  loc_BE8241: FLdPr Me
  loc_BE8244: MemLdRfVar from_stack_1.global_60
  loc_BE8247: LdPrVar
  loc_BE8249: LateMemCall
  loc_BE824F: LitVarStr var_94, "        <table width=""42" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""0"" class=""CorreoTabla"" >"
  loc_BE8254: PopAdLdVar
  loc_BE8255: FLdPr Me
  loc_BE8258: MemLdRfVar from_stack_1.global_60
  loc_BE825B: LdPrVar
  loc_BE825D: LateMemCall
  loc_BE8263: LitVarStr var_94, "          <tr>"
  loc_BE8268: PopAdLdVar
  loc_BE8269: FLdPr Me
  loc_BE826C: MemLdRfVar from_stack_1.global_60
  loc_BE826F: LdPrVar
  loc_BE8271: LateMemCall
  loc_BE8277: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-right:none"">C<br>O<br>R<br>R</td>"
  loc_BE827C: PopAdLdVar
  loc_BE827D: FLdPr Me
  loc_BE8280: MemLdRfVar from_stack_1.global_60
  loc_BE8283: LdPrVar
  loc_BE8285: LateMemCall
  loc_BE828B: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-left:none"">O<br>F<br>I<br>C</td>"
  loc_BE8290: PopAdLdVar
  loc_BE8291: FLdPr Me
  loc_BE8294: MemLdRfVar from_stack_1.global_60
  loc_BE8297: LdPrVar
  loc_BE8299: LateMemCall
  loc_BE829F: LitVarStr var_94, "            <td class=""CorreoCelda"">FRANQUEO A PAGAR</td>"
  loc_BE82A4: PopAdLdVar
  loc_BE82A5: FLdPr Me
  loc_BE82A8: MemLdRfVar from_stack_1.global_60
  loc_BE82AB: LdPrVar
  loc_BE82AD: LateMemCall
  loc_BE82B3: LitVarStr var_94, "          </tr>"
  loc_BE82B8: PopAdLdVar
  loc_BE82B9: FLdPr Me
  loc_BE82BC: MemLdRfVar from_stack_1.global_60
  loc_BE82BF: LdPrVar
  loc_BE82C1: LateMemCall
  loc_BE82C7: LitVarStr var_94, "          <tr>"
  loc_BE82CC: PopAdLdVar
  loc_BE82CD: FLdPr Me
  loc_BE82D0: MemLdRfVar from_stack_1.global_60
  loc_BE82D3: LdPrVar
  loc_BE82D5: LateMemCall
  loc_BE82DB: LitVarStr var_94, "            <td class=""CorreoCelda"">CTA CTE N&deg; 17438</td>"
  loc_BE82E0: PopAdLdVar
  loc_BE82E1: FLdPr Me
  loc_BE82E4: MemLdRfVar from_stack_1.global_60
  loc_BE82E7: LdPrVar
  loc_BE82E9: LateMemCall
  loc_BE82EF: LitVarStr var_94, "          </tr>"
  loc_BE82F4: PopAdLdVar
  loc_BE82F5: FLdPr Me
  loc_BE82F8: MemLdRfVar from_stack_1.global_60
  loc_BE82FB: LdPrVar
  loc_BE82FD: LateMemCall
  loc_BE8303: LitVarStr var_94, "          <tr>"
  loc_BE8308: PopAdLdVar
  loc_BE8309: FLdPr Me
  loc_BE830C: MemLdRfVar from_stack_1.global_60
  loc_BE830F: LdPrVar
  loc_BE8311: LateMemCall
  loc_BE8317: LitStr "            <td class=""CorreoCelda"">CUIT: "
  loc_BE831A: LitStr "30-99914707-7"
  loc_BE831D: ConcatStr
  loc_BE831E: FStStrNoPop var_A8
  loc_BE8321: LitStr "</td>"
  loc_BE8324: ConcatStr
  loc_BE8325: CVarStr var_D0
  loc_BE8328: PopAdLdVar
  loc_BE8329: FLdPr Me
  loc_BE832C: MemLdRfVar from_stack_1.global_60
  loc_BE832F: LdPrVar
  loc_BE8331: LateMemCall
  loc_BE8337: FFree1Str var_A8
  loc_BE833A: FFree1Var var_D0 = ""
  loc_BE833D: LitVarStr var_94, "          </tr>"
  loc_BE8342: PopAdLdVar
  loc_BE8343: FLdPr Me
  loc_BE8346: MemLdRfVar from_stack_1.global_60
  loc_BE8349: LdPrVar
  loc_BE834B: LateMemCall
  loc_BE8351: LitVarStr var_94, "          <tr>"
  loc_BE8356: PopAdLdVar
  loc_BE8357: FLdPr Me
  loc_BE835A: MemLdRfVar from_stack_1.global_60
  loc_BE835D: LdPrVar
  loc_BE835F: LateMemCall
  loc_BE8365: LitVarStr var_94, "            <td colspan=""3"" class=""CorreoCeldaFinal"">Devolver a Admisi&oacute;n Mendoza</td>"
  loc_BE836A: PopAdLdVar
  loc_BE836B: FLdPr Me
  loc_BE836E: MemLdRfVar from_stack_1.global_60
  loc_BE8371: LdPrVar
  loc_BE8373: LateMemCall
  loc_BE8379: LitVarStr var_94, "            </tr>"
  loc_BE837E: PopAdLdVar
  loc_BE837F: FLdPr Me
  loc_BE8382: MemLdRfVar from_stack_1.global_60
  loc_BE8385: LdPrVar
  loc_BE8387: LateMemCall
  loc_BE838D: LitVarStr var_94, "        </table>"
  loc_BE8392: PopAdLdVar
  loc_BE8393: FLdPr Me
  loc_BE8396: MemLdRfVar from_stack_1.global_60
  loc_BE8399: LdPrVar
  loc_BE839B: LateMemCall
  loc_BE83A1: LitVarStr var_94, "        </td>"
  loc_BE83A6: PopAdLdVar
  loc_BE83A7: FLdPr Me
  loc_BE83AA: MemLdRfVar from_stack_1.global_60
  loc_BE83AD: LdPrVar
  loc_BE83AF: LateMemCall
  loc_BE83B5: LitVarStr var_94, "      </tr>"
  loc_BE83BA: PopAdLdVar
  loc_BE83BB: FLdPr Me
  loc_BE83BE: MemLdRfVar from_stack_1.global_60
  loc_BE83C1: LdPrVar
  loc_BE83C3: LateMemCall
  loc_BE83C9: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE83CE: PopAdLdVar
  loc_BE83CF: FLdPr Me
  loc_BE83D2: MemLdRfVar from_stack_1.global_60
  loc_BE83D5: LdPrVar
  loc_BE83D7: LateMemCall
  loc_BE83DD: LitVarStr var_94, "        <td colspan=""4"" align=""center"" valign=""middle"" class=""NombreMunicipio"">TASAS POR SERVICIOS</td>"
  loc_BE83E2: PopAdLdVar
  loc_BE83E3: FLdPr Me
  loc_BE83E6: MemLdRfVar from_stack_1.global_60
  loc_BE83E9: LdPrVar
  loc_BE83EB: LateMemCall
  loc_BE83F1: LitVarStr var_94, "        <td width=""44"" align=""right"" class=""Encabezado MargDer""><strong>Orden:</strong></td>"
  loc_BE83F6: PopAdLdVar
  loc_BE83F7: FLdPr Me
  loc_BE83FA: MemLdRfVar from_stack_1.global_60
  loc_BE83FD: LdPrVar
  loc_BE83FF: LateMemCall
  loc_BE8405: FLdPr Me
  loc_BE8408: MemLdStr global_100
  loc_BE840B: FLdPr Me
  loc_BE840E: MemLdStr global_96
  loc_BE8411: AryLock
  loc_BE8414: Ary1LdRf
  loc_BE8415: FStR4 var_D8
  loc_BE8418: LitStr "        <td width=""48"" align=""left"" class=""Normal MargIzq"">"
  loc_BE841B: FMemLdR4 var_D8(80)
  loc_BE8420: ConcatStr
  loc_BE8421: FStStrNoPop var_A8
  loc_BE8424: LitStr "</td>"
  loc_BE8427: ConcatStr
  loc_BE8428: CVarStr var_D0
  loc_BE842B: PopAdLdVar
  loc_BE842C: FLdPr Me
  loc_BE842F: MemLdRfVar from_stack_1.global_60
  loc_BE8432: LdPrVar
  loc_BE8434: LateMemCall
  loc_BE843A: FFree1Str var_A8
  loc_BE843D: FFree1Var var_D0 = ""
  loc_BE8440: LitVarStr var_94, "        <td rowspan=""2"" class=""NoBordeArriba"">"
  loc_BE8445: PopAdLdVar
  loc_BE8446: FLdPr Me
  loc_BE8449: MemLdRfVar from_stack_1.global_60
  loc_BE844C: LdPrVar
  loc_BE844E: LateMemCall
  loc_BE8454: LitVarStr var_94, "         <table align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BE8459: PopAdLdVar
  loc_BE845A: FLdPr Me
  loc_BE845D: MemLdRfVar from_stack_1.global_60
  loc_BE8460: LdPrVar
  loc_BE8462: LateMemCall
  loc_BE8468: LitStr "          <tr><td valign=""bottom"" align=""center"" class=""CodBarChica"">"
  loc_BE846B: LitI4 1
  loc_BE8470: FMemLdR4 var_D8(108)
  loc_BE8475: Ary1LdI4
  loc_BE8476: ConcatStr
  loc_BE8477: FStStrNoPop var_A8
  loc_BE847A: LitStr "</td></tr>"
  loc_BE847D: ConcatStr
  loc_BE847E: CVarStr var_D0
  loc_BE8481: PopAdLdVar
  loc_BE8482: FLdPr Me
  loc_BE8485: MemLdRfVar from_stack_1.global_60
  loc_BE8488: LdPrVar
  loc_BE848A: LateMemCall
  loc_BE8490: FFree1Str var_A8
  loc_BE8493: FFree1Var var_D0 = ""
  loc_BE8496: LitStr "          <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BE8499: LitI4 0
  loc_BE849E: FMemLdR4 var_D8(108)
  loc_BE84A3: Ary1LdI4
  loc_BE84A4: ConcatStr
  loc_BE84A5: FStStrNoPop var_A8
  loc_BE84A8: LitStr "</td></tr>"
  loc_BE84AB: ConcatStr
  loc_BE84AC: CVarStr var_D0
  loc_BE84AF: PopAdLdVar
  loc_BE84B0: FLdPr Me
  loc_BE84B3: MemLdRfVar from_stack_1.global_60
  loc_BE84B6: LdPrVar
  loc_BE84B8: LateMemCall
  loc_BE84BE: FFree1Str var_A8
  loc_BE84C1: FFree1Var var_D0 = ""
  loc_BE84C4: LitVarStr var_94, "        </table></td>"
  loc_BE84C9: PopAdLdVar
  loc_BE84CA: FLdPr Me
  loc_BE84CD: MemLdRfVar from_stack_1.global_60
  loc_BE84D0: LdPrVar
  loc_BE84D2: LateMemCall
  loc_BE84D8: LitVarStr var_94, "      </tr>"
  loc_BE84DD: PopAdLdVar
  loc_BE84DE: FLdPr Me
  loc_BE84E1: MemLdRfVar from_stack_1.global_60
  loc_BE84E4: LdPrVar
  loc_BE84E6: LateMemCall
  loc_BE84EC: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE84F1: PopAdLdVar
  loc_BE84F2: FLdPr Me
  loc_BE84F5: MemLdRfVar from_stack_1.global_60
  loc_BE84F8: LdPrVar
  loc_BE84FA: LateMemCall
  loc_BE8500: LitVarStr var_94, "        <td width=""59"" align=""right"" class=""Encabezado MargDer""><strong>Padr&oacute;n:</strong></td>"
  loc_BE8505: PopAdLdVar
  loc_BE8506: FLdPr Me
  loc_BE8509: MemLdRfVar from_stack_1.global_60
  loc_BE850C: LdPrVar
  loc_BE850E: LateMemCall
  loc_BE8514: LitStr "        <td width=""53"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE8517: FMemLdR4 var_D8(76)
  loc_BE851C: ConcatStr
  loc_BE851D: FStStrNoPop var_A8
  loc_BE8520: LitStr "</strong></td>"
  loc_BE8523: ConcatStr
  loc_BE8524: CVarStr var_D0
  loc_BE8527: PopAdLdVar
  loc_BE8528: FLdPr Me
  loc_BE852B: MemLdRfVar from_stack_1.global_60
  loc_BE852E: LdPrVar
  loc_BE8530: LateMemCall
  loc_BE8536: FFree1Str var_A8
  loc_BE8539: FFree1Var var_D0 = ""
  loc_BE853C: LitVarStr var_94, "        <td width=""43"" align=""right"" class=""Encabezado MargDer""><strong>Titular:</strong></td>"
  loc_BE8541: PopAdLdVar
  loc_BE8542: FLdPr Me
  loc_BE8545: MemLdRfVar from_stack_1.global_60
  loc_BE8548: LdPrVar
  loc_BE854A: LateMemCall
  loc_BE8550: LitStr "        <td height=""18"" colspan=""3"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE8553: FMemLdR4 var_D8(4)
  loc_BE8558: ConcatStr
  loc_BE8559: FStStrNoPop var_A8
  loc_BE855C: LitStr "</strong>"
  loc_BE855F: ConcatStr
  loc_BE8560: CVarStr var_D0
  loc_BE8563: PopAdLdVar
  loc_BE8564: FLdPr Me
  loc_BE8567: MemLdRfVar from_stack_1.global_60
  loc_BE856A: LdPrVar
  loc_BE856C: LateMemCall
  loc_BE8572: FFree1Str var_A8
  loc_BE8575: FFree1Var var_D0 = ""
  loc_BE8578: FMemLdRf 0
  loc_BE857D: CVarRef
  loc_BE8582: FLdRfVar var_D0
  loc_BE8585: ImpAdCallFPR4  = Trim()
  loc_BE858A: FLdRfVar var_D0
  loc_BE858D: LitVarStr var_A4, vbNullString
  loc_BE8592: HardType
  loc_BE8593: NeVarBool
  loc_BE8595: FFree1Var var_D0 = ""
  loc_BE8598: BranchF loc_BE85C3
  loc_BE859B: LitStr "        (Poseedor: "
  loc_BE859E: FMemLdR4 var_D8(8)
  loc_BE85A3: ConcatStr
  loc_BE85A4: FStStrNoPop var_A8
  loc_BE85A7: LitStr ")"
  loc_BE85AA: ConcatStr
  loc_BE85AB: CVarStr var_D0
  loc_BE85AE: PopAdLdVar
  loc_BE85AF: FLdPr Me
  loc_BE85B2: MemLdRfVar from_stack_1.global_60
  loc_BE85B5: LdPrVar
  loc_BE85B7: LateMemCall
  loc_BE85BD: FFree1Str var_A8
  loc_BE85C0: FFree1Var var_D0 = ""
  loc_BE85C3: LitVarStr var_94, "        </td>"
  loc_BE85C8: PopAdLdVar
  loc_BE85C9: FLdPr Me
  loc_BE85CC: MemLdRfVar from_stack_1.global_60
  loc_BE85CF: LdPrVar
  loc_BE85D1: LateMemCall
  loc_BE85D7: LitVarStr var_94, "      </tr>"
  loc_BE85DC: PopAdLdVar
  loc_BE85DD: FLdPr Me
  loc_BE85E0: MemLdRfVar from_stack_1.global_60
  loc_BE85E3: LdPrVar
  loc_BE85E5: LateMemCall
  loc_BE85EB: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE85F0: PopAdLdVar
  loc_BE85F1: FLdPr Me
  loc_BE85F4: MemLdRfVar from_stack_1.global_60
  loc_BE85F7: LdPrVar
  loc_BE85F9: LateMemCall
  loc_BE85FF: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Postal:</strong></td>"
  loc_BE8604: PopAdLdVar
  loc_BE8605: FLdPr Me
  loc_BE8608: MemLdRfVar from_stack_1.global_60
  loc_BE860B: LdPrVar
  loc_BE860D: LateMemCall
  loc_BE8613: LitStr "        <td colspan=""6"" class=""DomiPostal"">Calle: "
  loc_BE8616: FMemLdR4 var_D8(12)
  loc_BE861B: ConcatStr
  loc_BE861C: FStStrNoPop var_A8
  loc_BE861F: LitStr " Nro: "
  loc_BE8622: ConcatStr
  loc_BE8623: FStStrNoPop var_AC
  loc_BE8626: FMemLdR4 var_D8(16)
  loc_BE862B: ConcatStr
  loc_BE862C: CVarStr var_D0
  loc_BE862F: PopAdLdVar
  loc_BE8630: FLdPr Me
  loc_BE8633: MemLdRfVar from_stack_1.global_60
  loc_BE8636: LdPrVar
  loc_BE8638: LateMemCall
  loc_BE863E: FFreeStr var_A8 = ""
  loc_BE8645: FFree1Var var_D0 = ""
  loc_BE8648: FMemLdR4 var_D8(20)
  loc_BE864D: LitStr vbNullString
  loc_BE8650: NeStr
  loc_BE8652: BranchF loc_BE8673
  loc_BE8655: LitStr " Barrio: "
  loc_BE8658: FMemLdR4 var_D8(20)
  loc_BE865D: ConcatStr
  loc_BE865E: CVarStr var_D0
  loc_BE8661: PopAdLdVar
  loc_BE8662: FLdPr Me
  loc_BE8665: MemLdRfVar from_stack_1.global_60
  loc_BE8668: LdPrVar
  loc_BE866A: LateMemCall
  loc_BE8670: FFree1Var var_D0 = ""
  loc_BE8673: FMemLdR4 var_D8(24)
  loc_BE8678: LitStr vbNullString
  loc_BE867B: NeStr
  loc_BE867D: BranchF loc_BE869E
  loc_BE8680: LitStr " Mza: "
  loc_BE8683: FMemLdR4 var_D8(24)
  loc_BE8688: ConcatStr
  loc_BE8689: CVarStr var_D0
  loc_BE868C: PopAdLdVar
  loc_BE868D: FLdPr Me
  loc_BE8690: MemLdRfVar from_stack_1.global_60
  loc_BE8693: LdPrVar
  loc_BE8695: LateMemCall
  loc_BE869B: FFree1Var var_D0 = ""
  loc_BE869E: FMemLdR4 var_D8(28)
  loc_BE86A3: LitStr vbNullString
  loc_BE86A6: NeStr
  loc_BE86A8: BranchF loc_BE86C9
  loc_BE86AB: LitStr " Casa: "
  loc_BE86AE: FMemLdR4 var_D8(28)
  loc_BE86B3: ConcatStr
  loc_BE86B4: CVarStr var_D0
  loc_BE86B7: PopAdLdVar
  loc_BE86B8: FLdPr Me
  loc_BE86BB: MemLdRfVar from_stack_1.global_60
  loc_BE86BE: LdPrVar
  loc_BE86C0: LateMemCall
  loc_BE86C6: FFree1Var var_D0 = ""
  loc_BE86C9: FMemLdR4 var_D8(32)
  loc_BE86CE: LitStr vbNullString
  loc_BE86D1: NeStr
  loc_BE86D3: BranchF loc_BE86ED
  loc_BE86D6: FMemLdRf 0
  loc_BE86DB: CDargRef
  loc_BE86DF: FLdPr Me
  loc_BE86E2: MemLdRfVar from_stack_1.global_60
  loc_BE86E5: LdPrVar
  loc_BE86E7: LateMemCall
  loc_BE86ED: LitStr "         <br>Loc: "
  loc_BE86F0: FMemLdR4 var_D8(36)
  loc_BE86F5: ConcatStr
  loc_BE86F6: FStStrNoPop var_A8
  loc_BE86F9: LitStr " CP: "
  loc_BE86FC: ConcatStr
  loc_BE86FD: FStStrNoPop var_AC
  loc_BE8700: FMemLdR4 var_D8(40)
  loc_BE8705: ConcatStr
  loc_BE8706: FStStrNoPop var_B0
  loc_BE8709: LitStr "</td>"
  loc_BE870C: ConcatStr
  loc_BE870D: CVarStr var_D0
  loc_BE8710: PopAdLdVar
  loc_BE8711: FLdPr Me
  loc_BE8714: MemLdRfVar from_stack_1.global_60
  loc_BE8717: LdPrVar
  loc_BE8719: LateMemCall
  loc_BE871F: FFreeStr var_A8 = "": var_AC = ""
  loc_BE8728: FFree1Var var_D0 = ""
  loc_BE872B: LitVarStr var_94, "      </tr>"
  loc_BE8730: PopAdLdVar
  loc_BE8731: FLdPr Me
  loc_BE8734: MemLdRfVar from_stack_1.global_60
  loc_BE8737: LdPrVar
  loc_BE8739: LateMemCall
  loc_BE873F: LitVarStr var_94, "        <tr valign=""top"">"
  loc_BE8744: PopAdLdVar
  loc_BE8745: FLdPr Me
  loc_BE8748: MemLdRfVar from_stack_1.global_60
  loc_BE874B: LdPrVar
  loc_BE874D: LateMemCall
  loc_BE8753: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Real:</strong></td>"
  loc_BE8758: PopAdLdVar
  loc_BE8759: FLdPr Me
  loc_BE875C: MemLdRfVar from_stack_1.global_60
  loc_BE875F: LdPrVar
  loc_BE8761: LateMemCall
  loc_BE8767: LitStr "        <td colspan=""6"" class=""DomiReal"">Calle: "
  loc_BE876A: FMemLdR4 var_D8(44)
  loc_BE876F: ConcatStr
  loc_BE8770: FStStrNoPop var_A8
  loc_BE8773: LitStr " Nro: "
  loc_BE8776: ConcatStr
  loc_BE8777: FStStrNoPop var_AC
  loc_BE877A: FMemLdR4 var_D8(48)
  loc_BE877F: ConcatStr
  loc_BE8780: CVarStr var_D0
  loc_BE8783: PopAdLdVar
  loc_BE8784: FLdPr Me
  loc_BE8787: MemLdRfVar from_stack_1.global_60
  loc_BE878A: LdPrVar
  loc_BE878C: LateMemCall
  loc_BE8792: FFreeStr var_A8 = ""
  loc_BE8799: FFree1Var var_D0 = ""
  loc_BE879C: FMemLdR4 var_D8(52)
  loc_BE87A1: LitStr vbNullString
  loc_BE87A4: NeStr
  loc_BE87A6: BranchF loc_BE87C7
  loc_BE87A9: LitStr " Barrio: "
  loc_BE87AC: FMemLdR4 var_D8(52)
  loc_BE87B1: ConcatStr
  loc_BE87B2: CVarStr var_D0
  loc_BE87B5: PopAdLdVar
  loc_BE87B6: FLdPr Me
  loc_BE87B9: MemLdRfVar from_stack_1.global_60
  loc_BE87BC: LdPrVar
  loc_BE87BE: LateMemCall
  loc_BE87C4: FFree1Var var_D0 = ""
  loc_BE87C7: FMemLdR4 var_D8(56)
  loc_BE87CC: LitStr vbNullString
  loc_BE87CF: NeStr
  loc_BE87D1: BranchF loc_BE87F2
  loc_BE87D4: LitStr " Mza: "
  loc_BE87D7: FMemLdR4 var_D8(56)
  loc_BE87DC: ConcatStr
  loc_BE87DD: CVarStr var_D0
  loc_BE87E0: PopAdLdVar
  loc_BE87E1: FLdPr Me
  loc_BE87E4: MemLdRfVar from_stack_1.global_60
  loc_BE87E7: LdPrVar
  loc_BE87E9: LateMemCall
  loc_BE87EF: FFree1Var var_D0 = ""
  loc_BE87F2: FMemLdR4 var_D8(60)
  loc_BE87F7: LitStr vbNullString
  loc_BE87FA: NeStr
  loc_BE87FC: BranchF loc_BE881D
  loc_BE87FF: LitStr " Casa: "
  loc_BE8802: FMemLdR4 var_D8(60)
  loc_BE8807: ConcatStr
  loc_BE8808: CVarStr var_D0
  loc_BE880B: PopAdLdVar
  loc_BE880C: FLdPr Me
  loc_BE880F: MemLdRfVar from_stack_1.global_60
  loc_BE8812: LdPrVar
  loc_BE8814: LateMemCall
  loc_BE881A: FFree1Var var_D0 = ""
  loc_BE881D: FMemLdR4 var_D8(64)
  loc_BE8822: LitStr vbNullString
  loc_BE8825: NeStr
  loc_BE8827: BranchF loc_BE8841
  loc_BE882A: FMemLdRf 0
  loc_BE882F: CDargRef
  loc_BE8833: FLdPr Me
  loc_BE8836: MemLdRfVar from_stack_1.global_60
  loc_BE8839: LdPrVar
  loc_BE883B: LateMemCall
  loc_BE8841: LitStr "         <br>Loc: "
  loc_BE8844: FMemLdR4 var_D8(68)
  loc_BE8849: ConcatStr
  loc_BE884A: FStStrNoPop var_A8
  loc_BE884D: LitStr " CP: "
  loc_BE8850: ConcatStr
  loc_BE8851: FStStrNoPop var_AC
  loc_BE8854: FMemLdR4 var_D8(72)
  loc_BE8859: ConcatStr
  loc_BE885A: FStStrNoPop var_B0
  loc_BE885D: LitStr "<br>Nomenclatura catastral: "
  loc_BE8860: ConcatStr
  loc_BE8861: FStStrNoPop var_B4
  loc_BE8864: FMemLdR4 var_D8(100)
  loc_BE8869: ConcatStr
  loc_BE886A: FStStrNoPop var_B8
  loc_BE886D: LitStr "</td>"
  loc_BE8870: ConcatStr
  loc_BE8871: CVarStr var_D0
  loc_BE8874: PopAdLdVar
  loc_BE8875: FLdPr Me
  loc_BE8878: MemLdRfVar from_stack_1.global_60
  loc_BE887B: LdPrVar
  loc_BE887D: LateMemCall
  loc_BE8883: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BE8890: FFree1Var var_D0 = ""
  loc_BE8893: LitVarStr var_94, "      </tr>"
  loc_BE8898: PopAdLdVar
  loc_BE8899: FLdPr Me
  loc_BE889C: MemLdRfVar from_stack_1.global_60
  loc_BE889F: LdPrVar
  loc_BE88A1: LateMemCall
  loc_BE88A7: LitVarStr var_94, "    </table>"
  loc_BE88AC: PopAdLdVar
  loc_BE88AD: FLdPr Me
  loc_BE88B0: MemLdRfVar from_stack_1.global_60
  loc_BE88B3: LdPrVar
  loc_BE88B5: LateMemCall
  loc_BE88BB: LitI4 0
  loc_BE88C0: FStR4 var_D8
  loc_BE88C3: AryUnlock
  loc_BE88C6: ExitProcHresult
End Function

Private Function Proc_314_21_B137A4() 'B137A4
  'Data Table: 49CAEC
  loc_B13544: FLdPr Me
  loc_B13547: MemLdStr global_100
  loc_B1354A: FLdPr Me
  loc_B1354D: MemLdStr global_96
  loc_B13550: AryLock
  loc_B13553: Ary1LdRf
  loc_B13554: FStR4 var_8C
  loc_B13557: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B1355C: PopAdLdVar
  loc_B1355D: FLdPr Me
  loc_B13560: MemLdRfVar from_stack_1.global_60
  loc_B13563: LdPrVar
  loc_B13565: LateMemCall
  loc_B1356B: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B13570: PopAdLdVar
  loc_B13571: FLdPr Me
  loc_B13574: MemLdRfVar from_stack_1.global_60
  loc_B13577: LdPrVar
  loc_B13579: LateMemCall
  loc_B1357F: LitVarStr var_9C, "    <td width=""36" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B13584: PopAdLdVar
  loc_B13585: FLdPr Me
  loc_B13588: MemLdRfVar from_stack_1.global_60
  loc_B1358B: LdPrVar
  loc_B1358D: LateMemCall
  loc_B13593: FMemLdR4 var_8C(104)
  loc_B13598: CR8Str
  loc_B1359A: LitI2_Byte 0
  loc_B1359C: CR8I2
  loc_B1359D: GtR4
  loc_B1359E: BranchF loc_B135B5
  loc_B135A1: LitVarStr var_9C, "      <p>Seg&uacute;n nuestros registros esta cuenta registra deuda. Existen convenientes planes de pago.<br>Evite cobro por v&iacute;a judicial!!!</p>"
  loc_B135A6: PopAdLdVar
  loc_B135A7: FLdPr Me
  loc_B135AA: MemLdRfVar from_stack_1.global_60
  loc_B135AD: LdPrVar
  loc_B135AF: LateMemCall
  loc_B135B5: LitVarStr var_9C, "      <p><strong>SOLO SU PAGO EN T&Eacute;RMINO NOS PERMITE CUMPLIR</strong><br />"
  loc_B135BA: PopAdLdVar
  loc_B135BB: FLdPr Me
  loc_B135BE: MemLdRfVar from_stack_1.global_60
  loc_B135C1: LdPrVar
  loc_B135C3: LateMemCall
  loc_B135C9: LitVarStr var_9C, "        SR. CAJERO:<br /><strong>NO COBRAR BOLETO BIMESTRAL DESPU&Eacute;S DEL 31/12/2024.</strong></p>"
  loc_B135CE: PopAdLdVar
  loc_B135CF: FLdPr Me
  loc_B135D2: MemLdRfVar from_stack_1.global_60
  loc_B135D5: LdPrVar
  loc_B135D7: LateMemCall
  loc_B135DD: LitVarStr var_9C, "      <p>Los periodos bimestrales podr&aacute;n pagarse en las Entidades autorizadas hasta la fecha arriba indicada, luego de su vencimiento.<br>"
  loc_B135E2: PopAdLdVar
  loc_B135E3: FLdPr Me
  loc_B135E6: MemLdRfVar from_stack_1.global_60
  loc_B135E9: LdPrVar
  loc_B135EB: LateMemCall
  loc_B135F1: LitVarStr var_9C, "        El recargo por morosidad se liquidar&aacute; en el pr&oacute;ximo periodo.</p>"
  loc_B135F6: PopAdLdVar
  loc_B135F7: FLdPr Me
  loc_B135FA: MemLdRfVar from_stack_1.global_60
  loc_B135FD: LdPrVar
  loc_B135FF: LateMemCall
  loc_B13605: LitVarStr var_9C, "      <p><strong>SIN TICKET DE CAJA NO ACREDITA PAGO del periodo correspondiente.</p>"
  loc_B1360A: PopAdLdVar
  loc_B1360B: FLdPr Me
  loc_B1360E: MemLdRfVar from_stack_1.global_60
  loc_B13611: LdPrVar
  loc_B13613: LateMemCall
  loc_B13619: LitVarStr var_9C, "    </td>"
  loc_B1361E: PopAdLdVar
  loc_B1361F: FLdPr Me
  loc_B13622: MemLdRfVar from_stack_1.global_60
  loc_B13625: LdPrVar
  loc_B13627: LateMemCall
  loc_B1362D: LitVarStr var_9C, "    <td width=""37" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B13632: PopAdLdVar
  loc_B13633: FLdPr Me
  loc_B13636: MemLdRfVar from_stack_1.global_60
  loc_B13639: LdPrVar
  loc_B1363B: LateMemCall
  loc_B13641: LitStr "      <p>C&Oacute;DIGO DE R Y B: <strong>"
  loc_B13644: FMemLdR4 var_8C(88)
  loc_B13649: ConcatStr
  loc_B1364A: FStStrNoPop var_B0
  loc_B1364D: LitStr " - "
  loc_B13650: ConcatStr
  loc_B13651: FStStrNoPop var_B4
  loc_B13654: FMemLdR4 var_8C(92)
  loc_B13659: ConcatStr
  loc_B1365A: FStStrNoPop var_B8
  loc_B1365D: LitStr "</strong></p>"
  loc_B13660: ConcatStr
  loc_B13661: CVarStr var_C8
  loc_B13664: PopAdLdVar
  loc_B13665: FLdPr Me
  loc_B13668: MemLdRfVar from_stack_1.global_60
  loc_B1366B: LdPrVar
  loc_B1366D: LateMemCall
  loc_B13673: FFreeStr var_B0 = "": var_B4 = ""
  loc_B1367C: FFree1Var var_C8 = ""
  loc_B1367F: LitStr "      <p>AVAL&Uacute;O MUNICIPAL: <strong>"
  loc_B13682: FMemLdR4 var_8C(96)
  loc_B13687: ConcatStr
  loc_B13688: FStStrNoPop var_B0
  loc_B1368B: LitStr "</strong></p>"
  loc_B1368E: ConcatStr
  loc_B1368F: CVarStr var_C8
  loc_B13692: PopAdLdVar
  loc_B13693: FLdPr Me
  loc_B13696: MemLdRfVar from_stack_1.global_60
  loc_B13699: LdPrVar
  loc_B1369B: LateMemCall
  loc_B136A1: FFree1Str var_B0
  loc_B136A4: FFree1Var var_C8 = ""
  loc_B136A7: LitVarStr var_9C, "      <p>ENTIDADES AUTORIZADAS PARA EL COBRO:<br>"
  loc_B136AC: PopAdLdVar
  loc_B136AD: FLdPr Me
  loc_B136B0: MemLdRfVar from_stack_1.global_60
  loc_B136B3: LdPrVar
  loc_B136B5: LateMemCall
  loc_B136BB: LitVarStr var_9C, "        Bancos: Supervielle/Macro/Credicoop/Nación<br>"
  loc_B136C0: PopAdLdVar
  loc_B136C1: FLdPr Me
  loc_B136C4: MemLdRfVar from_stack_1.global_60
  loc_B136C7: LdPrVar
  loc_B136C9: LateMemCall
  loc_B136CF: LitVarStr var_9C, "        Rapipago - Montemar C&iacute;a. Fiananc. - Pago F&aacute;cil<br>"
  loc_B136D4: PopAdLdVar
  loc_B136D5: FLdPr Me
  loc_B136D8: MemLdRfVar from_stack_1.global_60
  loc_B136DB: LdPrVar
  loc_B136DD: LateMemCall
  loc_B136E3: LitVarStr var_9C, "        Pague en www.pagomiscuentas.com o ingresando a Banelco en pagomiscuentas.com.ar.<br>"
  loc_B136E8: PopAdLdVar
  loc_B136E9: FLdPr Me
  loc_B136EC: MemLdRfVar from_stack_1.global_60
  loc_B136EF: LdPrVar
  loc_B136F1: LateMemCall
  loc_B136F7: LitVarStr var_9C, "        Link Pagos: Pague ingresando a www.linkpagos.com.ar desde un cajero LINK, las 24hs todos los d&iacute;as del a&ntilde;o."
  loc_B136FC: PopAdLdVar
  loc_B136FD: FLdPr Me
  loc_B13700: MemLdRfVar from_stack_1.global_60
  loc_B13703: LdPrVar
  loc_B13705: LateMemCall
  loc_B1370B: LitVarStr var_9C, "      </p>"
  loc_B13710: PopAdLdVar
  loc_B13711: FLdPr Me
  loc_B13714: MemLdRfVar from_stack_1.global_60
  loc_B13717: LdPrVar
  loc_B13719: LateMemCall
  loc_B1371F: LitVarStr var_9C, "    </td>"
  loc_B13724: PopAdLdVar
  loc_B13725: FLdPr Me
  loc_B13728: MemLdRfVar from_stack_1.global_60
  loc_B1372B: LdPrVar
  loc_B1372D: LateMemCall
  loc_B13733: LitVarStr var_9C, "  </tr>"
  loc_B13738: PopAdLdVar
  loc_B13739: FLdPr Me
  loc_B1373C: MemLdRfVar from_stack_1.global_60
  loc_B1373F: LdPrVar
  loc_B13741: LateMemCall
  loc_B13747: LitVarStr var_9C, "  </table>"
  loc_B1374C: PopAdLdVar
  loc_B1374D: FLdPr Me
  loc_B13750: MemLdRfVar from_stack_1.global_60
  loc_B13753: LdPrVar
  loc_B13755: LateMemCall
  loc_B1375B: LitVarStr var_9C, "  </td>"
  loc_B13760: PopAdLdVar
  loc_B13761: FLdPr Me
  loc_B13764: MemLdRfVar from_stack_1.global_60
  loc_B13767: LdPrVar
  loc_B13769: LateMemCall
  loc_B1376F: LitVarStr var_9C, "  </tr>"
  loc_B13774: PopAdLdVar
  loc_B13775: FLdPr Me
  loc_B13778: MemLdRfVar from_stack_1.global_60
  loc_B1377B: LdPrVar
  loc_B1377D: LateMemCall
  loc_B13783: LitVarStr var_9C, "</table>"
  loc_B13788: PopAdLdVar
  loc_B13789: FLdPr Me
  loc_B1378C: MemLdRfVar from_stack_1.global_60
  loc_B1378F: LdPrVar
  loc_B13791: LateMemCall
  loc_B13797: LitI4 0
  loc_B1379C: FStR4 var_8C
  loc_B1379F: AryUnlock
  loc_B137A2: ExitProcHresult
End Function

Private Function Proc_314_22_BE2708() 'BE2708
  'Data Table: 49CAEC
  loc_BE1F4C: LitVarStr var_94, "<table align=""center"" height=""500"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_BE1F51: PopAdLdVar
  loc_BE1F52: FLdPr Me
  loc_BE1F55: MemLdRfVar from_stack_1.global_60
  loc_BE1F58: LdPrVar
  loc_BE1F5A: LateMemCall
  loc_BE1F60: FLdPr Me
  loc_BE1F63: MemLdStr global_100
  loc_BE1F66: FLdPr Me
  loc_BE1F69: MemLdStr global_96
  loc_BE1F6C: AryLock
  loc_BE1F6F: Ary1LdRf
  loc_BE1F70: FStR4 var_AC
  loc_BE1F73: LitI2_Byte 0
  loc_BE1F75: CUI1I2
  loc_BE1F77: FLdPr Me
  loc_BE1F7A: MemLdRfVar from_stack_1.global_104
  loc_BE1F7D: FMemLdR4 var_AC(112)
  loc_BE1F82: LitI2_Byte 1
  loc_BE1F84: FnUBound
  loc_BE1F86: CUI1I4
  loc_BE1F88: ForUI1 var_B0
  loc_BE1F8E: FLdPr Me
  loc_BE1F91: MemLdUI1 global_104
  loc_BE1F95: CI2UI1
  loc_BE1F97: LitI2_Byte 0
  loc_BE1F99: EqI2
  loc_BE1F9A: FLdPr Me
  loc_BE1F9D: MemLdUI1 global_104
  loc_BE1FA1: CI4UI1
  loc_BE1FA2: FMemLdR4 var_AC(112)
  loc_BE1FA7: Ary1LdPr
  loc_BE1FA8: MemLdStr global_12
  loc_BE1FAB: LitStr vbNullString
  loc_BE1FAE: EqStr
  loc_BE1FB0: AndI4
  loc_BE1FB1: BranchF loc_BE1FB7
  loc_BE1FB4: Branch loc_BE26EE
  loc_BE1FB7: LitVarStr var_94, "  <tr>"
  loc_BE1FBC: PopAdLdVar
  loc_BE1FBD: FLdPr Me
  loc_BE1FC0: MemLdRfVar from_stack_1.global_60
  loc_BE1FC3: LdPrVar
  loc_BE1FC5: LateMemCall
  loc_BE1FCB: LitVarStr var_94, "    <td valign=""top"" height=""111"">"
  loc_BE1FD0: PopAdLdVar
  loc_BE1FD1: FLdPr Me
  loc_BE1FD4: MemLdRfVar from_stack_1.global_60
  loc_BE1FD7: LdPrVar
  loc_BE1FD9: LateMemCall
  loc_BE1FDF: FLdPr Me
  loc_BE1FE2: MemLdUI1 global_104
  loc_BE1FE6: CI4UI1
  loc_BE1FE7: FMemLdR4 var_AC(112)
  loc_BE1FEC: Ary1LdPr
  loc_BE1FED: MemLdI2 global_0
  loc_BE1FF0: BranchF loc_BE200A
  loc_BE1FF3: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BE1FF8: PopAdLdVar
  loc_BE1FF9: FLdPr Me
  loc_BE1FFC: MemLdRfVar from_stack_1.global_60
  loc_BE1FFF: LdPrVar
  loc_BE2001: LateMemCall
  loc_BE2007: Branch loc_BE2032
  loc_BE200A: LitVarStr var_94, "    <br>"
  loc_BE200F: PopAdLdVar
  loc_BE2010: FLdPr Me
  loc_BE2013: MemLdRfVar from_stack_1.global_60
  loc_BE2016: LdPrVar
  loc_BE2018: LateMemCall
  loc_BE201E: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" style=""border:2px solid black"" >"
  loc_BE2023: PopAdLdVar
  loc_BE2024: FLdPr Me
  loc_BE2027: MemLdRfVar from_stack_1.global_60
  loc_BE202A: LdPrVar
  loc_BE202C: LateMemCall
  loc_BE2032: LitVarStr var_94, "      <tr align=""center"" class=""Encabezado"">"
  loc_BE2037: PopAdLdVar
  loc_BE2038: FLdPr Me
  loc_BE203B: MemLdRfVar from_stack_1.global_60
  loc_BE203E: LdPrVar
  loc_BE2040: LateMemCall
  loc_BE2046: LitVarStr var_94, "        <td>TASA GRAL.</td>"
  loc_BE204B: PopAdLdVar
  loc_BE204C: FLdPr Me
  loc_BE204F: MemLdRfVar from_stack_1.global_60
  loc_BE2052: LdPrVar
  loc_BE2054: LateMemCall
  loc_BE205A: LitVarStr var_94, "        <td>INF. URBANA</td>"
  loc_BE205F: PopAdLdVar
  loc_BE2060: FLdPr Me
  loc_BE2063: MemLdRfVar from_stack_1.global_60
  loc_BE2066: LdPrVar
  loc_BE2068: LateMemCall
  loc_BE206E: LitVarStr var_94, "        <td>AL. P&Uacute;BLICO</td>"
  loc_BE2073: PopAdLdVar
  loc_BE2074: FLdPr Me
  loc_BE2077: MemLdRfVar from_stack_1.global_60
  loc_BE207A: LdPrVar
  loc_BE207C: LateMemCall
  loc_BE2082: LitVarStr var_94, "        <td>SERV. AGUA</td>"
  loc_BE2087: PopAdLdVar
  loc_BE2088: FLdPr Me
  loc_BE208B: MemLdRfVar from_stack_1.global_60
  loc_BE208E: LdPrVar
  loc_BE2090: LateMemCall
  loc_BE2096: LitVarStr var_94, "        <td>SOBR. ANTENA</td>"
  loc_BE209B: PopAdLdVar
  loc_BE209C: FLdPr Me
  loc_BE209F: MemLdRfVar from_stack_1.global_60
  loc_BE20A2: LdPrVar
  loc_BE20A4: LateMemCall
  loc_BE20AA: LitVarStr var_94, "        <td>BOMB. GLLEN.</td>"
  loc_BE20AF: PopAdLdVar
  loc_BE20B0: FLdPr Me
  loc_BE20B3: MemLdRfVar from_stack_1.global_60
  loc_BE20B6: LdPrVar
  loc_BE20B8: LateMemCall
  loc_BE20BE: LitVarStr var_94, "        <td>BONIF./DESC.</td>"
  loc_BE20C3: PopAdLdVar
  loc_BE20C4: FLdPr Me
  loc_BE20C7: MemLdRfVar from_stack_1.global_60
  loc_BE20CA: LdPrVar
  loc_BE20CC: LateMemCall
  loc_BE20D2: LitVarStr var_94, "        <td>RECARGOS</td>"
  loc_BE20D7: PopAdLdVar
  loc_BE20D8: FLdPr Me
  loc_BE20DB: MemLdRfVar from_stack_1.global_60
  loc_BE20DE: LdPrVar
  loc_BE20E0: LateMemCall
  loc_BE20E6: LitVarStr var_94, "        <td>C. EMISI&Oacute;N</td>"
  loc_BE20EB: PopAdLdVar
  loc_BE20EC: FLdPr Me
  loc_BE20EF: MemLdRfVar from_stack_1.global_60
  loc_BE20F2: LdPrVar
  loc_BE20F4: LateMemCall
  loc_BE20FA: LitVarStr var_94, "        <td>TOTAL A PAGAR</td>"
  loc_BE20FF: PopAdLdVar
  loc_BE2100: FLdPr Me
  loc_BE2103: MemLdRfVar from_stack_1.global_60
  loc_BE2106: LdPrVar
  loc_BE2108: LateMemCall
  loc_BE210E: LitVarStr var_94, "      </tr>"
  loc_BE2113: PopAdLdVar
  loc_BE2114: FLdPr Me
  loc_BE2117: MemLdRfVar from_stack_1.global_60
  loc_BE211A: LdPrVar
  loc_BE211C: LateMemCall
  loc_BE2122: LitVarStr var_94, "      <tr class=""NormalBloqueFin"" valign=""top"" align=""right"">"
  loc_BE2127: PopAdLdVar
  loc_BE2128: FLdPr Me
  loc_BE212B: MemLdRfVar from_stack_1.global_60
  loc_BE212E: LdPrVar
  loc_BE2130: LateMemCall
  loc_BE2136: FLdPr Me
  loc_BE2139: MemLdUI1 global_104
  loc_BE213D: CI4UI1
  loc_BE213E: FMemLdR4 var_AC(112)
  loc_BE2143: AryLock
  loc_BE2146: Ary1LdRf
  loc_BE2147: FStR4 var_B8
  loc_BE214A: LitStr vbNullString
  loc_BE214D: LitI2_Byte 0
  loc_BE214F: LitI2_Byte 0
  loc_BE2151: LitI2_Byte 0
  loc_BE2153: LitI4 0
  loc_BE2158: FMemLdR4 var_B8(28)
  loc_BE215D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE2162: CVarStr var_C8
  loc_BE2165: PopAdLdVar
  loc_BE2166: FLdPr Me
  loc_BE2169: MemLdRfVar from_stack_1.global_60
  loc_BE216C: LdPrVar
  loc_BE216E: LateMemCall
  loc_BE2174: FFree1Var var_C8 = ""
  loc_BE2177: LitStr vbNullString
  loc_BE217A: LitI2_Byte 0
  loc_BE217C: LitI2_Byte 0
  loc_BE217E: LitI2_Byte 0
  loc_BE2180: LitI4 0
  loc_BE2185: FMemLdR4 var_B8(32)
  loc_BE218A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE218F: CVarStr var_C8
  loc_BE2192: PopAdLdVar
  loc_BE2193: FLdPr Me
  loc_BE2196: MemLdRfVar from_stack_1.global_60
  loc_BE2199: LdPrVar
  loc_BE219B: LateMemCall
  loc_BE21A1: FFree1Var var_C8 = ""
  loc_BE21A4: LitStr vbNullString
  loc_BE21A7: LitI2_Byte 0
  loc_BE21A9: LitI2_Byte 0
  loc_BE21AB: LitI2_Byte 0
  loc_BE21AD: LitI4 0
  loc_BE21B2: FMemLdR4 var_B8(36)
  loc_BE21B7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE21BC: CVarStr var_C8
  loc_BE21BF: PopAdLdVar
  loc_BE21C0: FLdPr Me
  loc_BE21C3: MemLdRfVar from_stack_1.global_60
  loc_BE21C6: LdPrVar
  loc_BE21C8: LateMemCall
  loc_BE21CE: FFree1Var var_C8 = ""
  loc_BE21D1: LitStr vbNullString
  loc_BE21D4: LitI2_Byte 0
  loc_BE21D6: LitI2_Byte 0
  loc_BE21D8: LitI2_Byte 0
  loc_BE21DA: LitI4 0
  loc_BE21DF: FMemLdR4 var_B8(40)
  loc_BE21E4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE21E9: CVarStr var_C8
  loc_BE21EC: PopAdLdVar
  loc_BE21ED: FLdPr Me
  loc_BE21F0: MemLdRfVar from_stack_1.global_60
  loc_BE21F3: LdPrVar
  loc_BE21F5: LateMemCall
  loc_BE21FB: FFree1Var var_C8 = ""
  loc_BE21FE: LitStr vbNullString
  loc_BE2201: LitI2_Byte 0
  loc_BE2203: LitI2_Byte 0
  loc_BE2205: LitI2_Byte 0
  loc_BE2207: LitI4 0
  loc_BE220C: FMemLdR4 var_B8(44)
  loc_BE2211: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE2216: CVarStr var_C8
  loc_BE2219: PopAdLdVar
  loc_BE221A: FLdPr Me
  loc_BE221D: MemLdRfVar from_stack_1.global_60
  loc_BE2220: LdPrVar
  loc_BE2222: LateMemCall
  loc_BE2228: FFree1Var var_C8 = ""
  loc_BE222B: LitStr vbNullString
  loc_BE222E: LitI2_Byte 0
  loc_BE2230: LitI2_Byte 0
  loc_BE2232: LitI2_Byte 0
  loc_BE2234: LitI4 0
  loc_BE2239: FMemLdR4 var_B8(48)
  loc_BE223E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE2243: CVarStr var_C8
  loc_BE2246: PopAdLdVar
  loc_BE2247: FLdPr Me
  loc_BE224A: MemLdRfVar from_stack_1.global_60
  loc_BE224D: LdPrVar
  loc_BE224F: LateMemCall
  loc_BE2255: FFree1Var var_C8 = ""
  loc_BE2258: LitStr vbNullString
  loc_BE225B: LitI2_Byte 0
  loc_BE225D: LitI2_Byte 0
  loc_BE225F: LitI2_Byte 0
  loc_BE2261: LitI4 0
  loc_BE2266: FMemLdR4 var_B8(52)
  loc_BE226B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE2270: CVarStr var_C8
  loc_BE2273: PopAdLdVar
  loc_BE2274: FLdPr Me
  loc_BE2277: MemLdRfVar from_stack_1.global_60
  loc_BE227A: LdPrVar
  loc_BE227C: LateMemCall
  loc_BE2282: FFree1Var var_C8 = ""
  loc_BE2285: LitStr vbNullString
  loc_BE2288: LitI2_Byte 0
  loc_BE228A: LitI2_Byte 0
  loc_BE228C: LitI2_Byte 0
  loc_BE228E: LitI4 0
  loc_BE2293: FMemLdR4 var_B8(56)
  loc_BE2298: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE229D: CVarStr var_C8
  loc_BE22A0: PopAdLdVar
  loc_BE22A1: FLdPr Me
  loc_BE22A4: MemLdRfVar from_stack_1.global_60
  loc_BE22A7: LdPrVar
  loc_BE22A9: LateMemCall
  loc_BE22AF: FFree1Var var_C8 = ""
  loc_BE22B2: LitStr vbNullString
  loc_BE22B5: LitI2_Byte 0
  loc_BE22B7: LitI2_Byte 0
  loc_BE22B9: LitI2_Byte 0
  loc_BE22BB: LitI4 0
  loc_BE22C0: FMemLdR4 var_B8(60)
  loc_BE22C5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE22CA: CVarStr var_C8
  loc_BE22CD: PopAdLdVar
  loc_BE22CE: FLdPr Me
  loc_BE22D1: MemLdRfVar from_stack_1.global_60
  loc_BE22D4: LdPrVar
  loc_BE22D6: LateMemCall
  loc_BE22DC: FFree1Var var_C8 = ""
  loc_BE22DF: LitStr "Totales"
  loc_BE22E2: LitI2_Byte 0
  loc_BE22E4: LitI2_Byte 0
  loc_BE22E6: LitI2_Byte 0
  loc_BE22E8: LitI4 0
  loc_BE22ED: FMemLdR4 var_B8(64)
  loc_BE22F2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE22F7: CVarStr var_C8
  loc_BE22FA: PopAdLdVar
  loc_BE22FB: FLdPr Me
  loc_BE22FE: MemLdRfVar from_stack_1.global_60
  loc_BE2301: LdPrVar
  loc_BE2303: LateMemCall
  loc_BE2309: FFree1Var var_C8 = ""
  loc_BE230C: LitVarStr var_94, "      </tr>"
  loc_BE2311: PopAdLdVar
  loc_BE2312: FLdPr Me
  loc_BE2315: MemLdRfVar from_stack_1.global_60
  loc_BE2318: LdPrVar
  loc_BE231A: LateMemCall
  loc_BE2320: LitVarStr var_94, "      <tr align=""left"">"
  loc_BE2325: PopAdLdVar
  loc_BE2326: FLdPr Me
  loc_BE2329: MemLdRfVar from_stack_1.global_60
  loc_BE232C: LdPrVar
  loc_BE232E: LateMemCall
  loc_BE2334: LitVarStr var_94, "          <td height=""42"" colspan=""3"" align=""center"" class=""Normal"" style=""border-right:none; border-bottom:none"">"
  loc_BE2339: PopAdLdVar
  loc_BE233A: FLdPr Me
  loc_BE233D: MemLdRfVar from_stack_1.global_60
  loc_BE2340: LdPrVar
  loc_BE2342: LateMemCall
  loc_BE2348: FMemLdI2 var_B8(0)
  loc_BE234D: BranchF loc_BE23AF
  loc_BE2350: LitStr "            <strong class=""NombreMunicipio"">"
  loc_BE2353: FMemLdR4 var_B8(4)
  loc_BE2358: CI4Str
  loc_BE2359: FLdPr Me
  loc_BE235C: MemLdRfVar from_stack_1.global_124
  loc_BE235F: Ary1LdI4
  loc_BE2360: ConcatStr
  loc_BE2361: FStStrNoPop var_CC
  loc_BE2364: LitStr "<br>BIMESTRE "
  loc_BE2367: ConcatStr
  loc_BE2368: FStStrNoPop var_D4
  loc_BE236B: FLdRfVar var_CE
  loc_BE236E: FLdPr Me
  loc_BE2371: MemLdRfVar from_stack_1.global_84
  loc_BE2374: NewIfNullPr clsliquidacion
  loc_BE2377: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BE237C: FLdI2 var_CE
  loc_BE237F: CStrUI1
  loc_BE2381: FStStrNoPop var_D8
  loc_BE2384: ConcatStr
  loc_BE2385: FStStrNoPop var_DC
  loc_BE2388: LitStr "</strong></td>"
  loc_BE238B: ConcatStr
  loc_BE238C: CVarStr var_C8
  loc_BE238F: PopAdLdVar
  loc_BE2390: FLdPr Me
  loc_BE2393: MemLdRfVar from_stack_1.global_60
  loc_BE2396: LdPrVar
  loc_BE2398: LateMemCall
  loc_BE239E: FFreeStr var_CC = "": var_D4 = "": var_D8 = ""
  loc_BE23A9: FFree1Var var_C8 = ""
  loc_BE23AC: Branch loc_BE23EF
  loc_BE23AF: LitStr "            <strong class=""NombreMunicipio"">ANUAL<br>"
  loc_BE23B2: FLdRfVar var_CE
  loc_BE23B5: FLdPr Me
  loc_BE23B8: MemLdRfVar from_stack_1.global_84
  loc_BE23BB: NewIfNullPr clsliquidacion
  loc_BE23BE: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BE23C3: FLdI2 var_CE
  loc_BE23C6: CStrUI1
  loc_BE23C8: FStStrNoPop var_CC
  loc_BE23CB: ConcatStr
  loc_BE23CC: FStStrNoPop var_D4
  loc_BE23CF: LitStr "</strong></td>"
  loc_BE23D2: ConcatStr
  loc_BE23D3: CVarStr var_C8
  loc_BE23D6: PopAdLdVar
  loc_BE23D7: FLdPr Me
  loc_BE23DA: MemLdRfVar from_stack_1.global_60
  loc_BE23DD: LdPrVar
  loc_BE23DF: LateMemCall
  loc_BE23E5: FFreeStr var_CC = ""
  loc_BE23EC: FFree1Var var_C8 = ""
  loc_BE23EF: LitVarStr var_94, "          <td align=""center"" colspan=""6"" rowspan=""2"" class=""Normal"" style=""border-left:none"">"
  loc_BE23F4: PopAdLdVar
  loc_BE23F5: FLdPr Me
  loc_BE23F8: MemLdRfVar from_stack_1.global_60
  loc_BE23FB: LdPrVar
  loc_BE23FD: LateMemCall
  loc_BE2403: LitVarStr var_94, "            <table align=""center"">"
  loc_BE2408: PopAdLdVar
  loc_BE2409: FLdPr Me
  loc_BE240C: MemLdRfVar from_stack_1.global_60
  loc_BE240F: LdPrVar
  loc_BE2411: LateMemCall
  loc_BE2417: LitStr "              <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_BE241A: LitI4 1
  loc_BE241F: FMemLdR4 var_B8(20)
  loc_BE2424: Ary1LdI4
  loc_BE2425: ConcatStr
  loc_BE2426: FStStrNoPop var_CC
  loc_BE2429: LitStr "</td></tr>"
  loc_BE242C: ConcatStr
  loc_BE242D: CVarStr var_C8
  loc_BE2430: PopAdLdVar
  loc_BE2431: FLdPr Me
  loc_BE2434: MemLdRfVar from_stack_1.global_60
  loc_BE2437: LdPrVar
  loc_BE2439: LateMemCall
  loc_BE243F: FFree1Str var_CC
  loc_BE2442: FFree1Var var_C8 = ""
  loc_BE2445: LitStr "              <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BE2448: LitI4 0
  loc_BE244D: FMemLdR4 var_B8(20)
  loc_BE2452: Ary1LdI4
  loc_BE2453: ConcatStr
  loc_BE2454: FStStrNoPop var_CC
  loc_BE2457: LitStr "</td></tr>"
  loc_BE245A: ConcatStr
  loc_BE245B: CVarStr var_C8
  loc_BE245E: PopAdLdVar
  loc_BE245F: FLdPr Me
  loc_BE2462: MemLdRfVar from_stack_1.global_60
  loc_BE2465: LdPrVar
  loc_BE2467: LateMemCall
  loc_BE246D: FFree1Str var_CC
  loc_BE2470: FFree1Var var_C8 = ""
  loc_BE2473: LitVarStr var_94, "            </table>"
  loc_BE2478: PopAdLdVar
  loc_BE2479: FLdPr Me
  loc_BE247C: MemLdRfVar from_stack_1.global_60
  loc_BE247F: LdPrVar
  loc_BE2481: LateMemCall
  loc_BE2487: LitVarStr var_94, "          </td>"
  loc_BE248C: PopAdLdVar
  loc_BE248D: FLdPr Me
  loc_BE2490: MemLdRfVar from_stack_1.global_60
  loc_BE2493: LdPrVar
  loc_BE2495: LateMemCall
  loc_BE249B: LitVarStr var_94, "      </tr>"
  loc_BE24A0: PopAdLdVar
  loc_BE24A1: FLdPr Me
  loc_BE24A4: MemLdRfVar from_stack_1.global_60
  loc_BE24A7: LdPrVar
  loc_BE24A9: LateMemCall
  loc_BE24AF: LitVarStr var_94, "      <tr align=""left"">"
  loc_BE24B4: PopAdLdVar
  loc_BE24B5: FLdPr Me
  loc_BE24B8: MemLdRfVar from_stack_1.global_60
  loc_BE24BB: LdPrVar
  loc_BE24BD: LateMemCall
  loc_BE24C3: LitVarStr var_94, "        <td style=""border-right:none; border-top:none"" colspan=""3"" class=""Normal"" valign=""bottom"">"
  loc_BE24C8: PopAdLdVar
  loc_BE24C9: FLdPr Me
  loc_BE24CC: MemLdRfVar from_stack_1.global_60
  loc_BE24CF: LdPrVar
  loc_BE24D1: LateMemCall
  loc_BE24D7: LitVarStr var_94, "          <table border=""1"" cellpadding=""0"" cellspacing=""0"" width=""100" & Chr(37) & """>"
  loc_BE24DC: PopAdLdVar
  loc_BE24DD: FLdPr Me
  loc_BE24E0: MemLdRfVar from_stack_1.global_60
  loc_BE24E3: LdPrVar
  loc_BE24E5: LateMemCall
  loc_BE24EB: LitVarStr var_94, "              <tr align=""center"" class=""Encabezado"">"
  loc_BE24F0: PopAdLdVar
  loc_BE24F1: FLdPr Me
  loc_BE24F4: MemLdRfVar from_stack_1.global_60
  loc_BE24F7: LdPrVar
  loc_BE24F9: LateMemCall
  loc_BE24FF: FMemLdI2 var_B8(0)
  loc_BE2504: BranchF loc_BE25D6
  loc_BE2507: LitVarStr var_94, "                <td>PERIODO</td>"
  loc_BE250C: PopAdLdVar
  loc_BE250D: FLdPr Me
  loc_BE2510: MemLdRfVar from_stack_1.global_60
  loc_BE2513: LdPrVar
  loc_BE2515: LateMemCall
  loc_BE251B: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BE2520: PopAdLdVar
  loc_BE2521: FLdPr Me
  loc_BE2524: MemLdRfVar from_stack_1.global_60
  loc_BE2527: LdPrVar
  loc_BE2529: LateMemCall
  loc_BE252F: LitVarStr var_94, "              </tr>"
  loc_BE2534: PopAdLdVar
  loc_BE2535: FLdPr Me
  loc_BE2538: MemLdRfVar from_stack_1.global_60
  loc_BE253B: LdPrVar
  loc_BE253D: LateMemCall
  loc_BE2543: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BE2548: PopAdLdVar
  loc_BE2549: FLdPr Me
  loc_BE254C: MemLdRfVar from_stack_1.global_60
  loc_BE254F: LdPrVar
  loc_BE2551: LateMemCall
  loc_BE2557: LitStr "                <td>"
  loc_BE255A: FMemLdR4 var_B8(4)
  loc_BE255F: ConcatStr
  loc_BE2560: FStStrNoPop var_CC
  loc_BE2563: LitStr "/"
  loc_BE2566: ConcatStr
  loc_BE2567: FStStrNoPop var_D4
  loc_BE256A: FLdRfVar var_CE
  loc_BE256D: FLdPr Me
  loc_BE2570: MemLdRfVar from_stack_1.global_84
  loc_BE2573: NewIfNullPr clsliquidacion
  loc_BE2576: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BE257B: FLdI2 var_CE
  loc_BE257E: CStrUI1
  loc_BE2580: FStStrNoPop var_D8
  loc_BE2583: ConcatStr
  loc_BE2584: FStStrNoPop var_DC
  loc_BE2587: LitStr "</td>"
  loc_BE258A: ConcatStr
  loc_BE258B: CVarStr var_C8
  loc_BE258E: PopAdLdVar
  loc_BE258F: FLdPr Me
  loc_BE2592: MemLdRfVar from_stack_1.global_60
  loc_BE2595: LdPrVar
  loc_BE2597: LateMemCall
  loc_BE259D: FFreeStr var_CC = "": var_D4 = "": var_D8 = ""
  loc_BE25A8: FFree1Var var_C8 = ""
  loc_BE25AB: LitStr "                <td>"
  loc_BE25AE: FMemLdR4 var_B8(16)
  loc_BE25B3: ConcatStr
  loc_BE25B4: FStStrNoPop var_CC
  loc_BE25B7: LitStr "</td>"
  loc_BE25BA: ConcatStr
  loc_BE25BB: CVarStr var_C8
  loc_BE25BE: PopAdLdVar
  loc_BE25BF: FLdPr Me
  loc_BE25C2: MemLdRfVar from_stack_1.global_60
  loc_BE25C5: LdPrVar
  loc_BE25C7: LateMemCall
  loc_BE25CD: FFree1Str var_CC
  loc_BE25D0: FFree1Var var_C8 = ""
  loc_BE25D3: Branch loc_BE263A
  loc_BE25D6: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BE25DB: PopAdLdVar
  loc_BE25DC: FLdPr Me
  loc_BE25DF: MemLdRfVar from_stack_1.global_60
  loc_BE25E2: LdPrVar
  loc_BE25E4: LateMemCall
  loc_BE25EA: LitVarStr var_94, "              </tr>"
  loc_BE25EF: PopAdLdVar
  loc_BE25F0: FLdPr Me
  loc_BE25F3: MemLdRfVar from_stack_1.global_60
  loc_BE25F6: LdPrVar
  loc_BE25F8: LateMemCall
  loc_BE25FE: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BE2603: PopAdLdVar
  loc_BE2604: FLdPr Me
  loc_BE2607: MemLdRfVar from_stack_1.global_60
  loc_BE260A: LdPrVar
  loc_BE260C: LateMemCall
  loc_BE2612: LitStr "                <td>"
  loc_BE2615: FMemLdR4 var_B8(16)
  loc_BE261A: ConcatStr
  loc_BE261B: FStStrNoPop var_CC
  loc_BE261E: LitStr "</td>"
  loc_BE2621: ConcatStr
  loc_BE2622: CVarStr var_C8
  loc_BE2625: PopAdLdVar
  loc_BE2626: FLdPr Me
  loc_BE2629: MemLdRfVar from_stack_1.global_60
  loc_BE262C: LdPrVar
  loc_BE262E: LateMemCall
  loc_BE2634: FFree1Str var_CC
  loc_BE2637: FFree1Var var_C8 = ""
  loc_BE263A: LitVarStr var_94, "              </tr>"
  loc_BE263F: PopAdLdVar
  loc_BE2640: FLdPr Me
  loc_BE2643: MemLdRfVar from_stack_1.global_60
  loc_BE2646: LdPrVar
  loc_BE2648: LateMemCall
  loc_BE264E: LitVarStr var_94, "          </table>"
  loc_BE2653: PopAdLdVar
  loc_BE2654: FLdPr Me
  loc_BE2657: MemLdRfVar from_stack_1.global_60
  loc_BE265A: LdPrVar
  loc_BE265C: LateMemCall
  loc_BE2662: LitVarStr var_94, "        </td>"
  loc_BE2667: PopAdLdVar
  loc_BE2668: FLdPr Me
  loc_BE266B: MemLdRfVar from_stack_1.global_60
  loc_BE266E: LdPrVar
  loc_BE2670: LateMemCall
  loc_BE2676: LitVarStr var_94, "      </tr>"
  loc_BE267B: PopAdLdVar
  loc_BE267C: FLdPr Me
  loc_BE267F: MemLdRfVar from_stack_1.global_60
  loc_BE2682: LdPrVar
  loc_BE2684: LateMemCall
  loc_BE268A: LitVarStr var_94, "    </table>"
  loc_BE268F: PopAdLdVar
  loc_BE2690: FLdPr Me
  loc_BE2693: MemLdRfVar from_stack_1.global_60
  loc_BE2696: LdPrVar
  loc_BE2698: LateMemCall
  loc_BE269E: FMemLdI2 var_B8(0)
  loc_BE26A3: NotI4
  loc_BE26A4: BranchF loc_BE26BB
  loc_BE26A7: LitVarStr var_94, "    <br>"
  loc_BE26AC: PopAdLdVar
  loc_BE26AD: FLdPr Me
  loc_BE26B0: MemLdRfVar from_stack_1.global_60
  loc_BE26B3: LdPrVar
  loc_BE26B5: LateMemCall
  loc_BE26BB: LitVarStr var_94, "  </td>"
  loc_BE26C0: PopAdLdVar
  loc_BE26C1: FLdPr Me
  loc_BE26C4: MemLdRfVar from_stack_1.global_60
  loc_BE26C7: LdPrVar
  loc_BE26C9: LateMemCall
  loc_BE26CF: LitVarStr var_94, "  </tr>"
  loc_BE26D4: PopAdLdVar
  loc_BE26D5: FLdPr Me
  loc_BE26D8: MemLdRfVar from_stack_1.global_60
  loc_BE26DB: LdPrVar
  loc_BE26DD: LateMemCall
  loc_BE26E3: LitI4 0
  loc_BE26E8: FStR4 var_B8
  loc_BE26EB: AryUnlock
  loc_BE26EE: FLdPr Me
  loc_BE26F1: MemLdRfVar from_stack_1.global_104
  loc_BE26F4: NextUI1
  loc_BE26FA: LitI4 0
  loc_BE26FF: FStR4 var_AC
  loc_BE2702: AryUnlock
  loc_BE2705: ExitProcHresult
End Function

Private Function Proc_314_23_B0741C() 'B0741C
  'Data Table: 49CAEC
  loc_B07210: LitVarStr var_94, "  <tr><td><br></td></tr>"
  loc_B07215: PopAdLdVar
  loc_B07216: FLdPr Me
  loc_B07219: MemLdRfVar from_stack_1.global_60
  loc_B0721C: LdPrVar
  loc_B0721E: LateMemCall
  loc_B07224: LitVarStr var_94, "  <tr>"
  loc_B07229: PopAdLdVar
  loc_B0722A: FLdPr Me
  loc_B0722D: MemLdRfVar from_stack_1.global_60
  loc_B07230: LdPrVar
  loc_B07232: LateMemCall
  loc_B07238: LitVarStr var_94, "    <td valign=""bottom"">"
  loc_B0723D: PopAdLdVar
  loc_B0723E: FLdPr Me
  loc_B07241: MemLdRfVar from_stack_1.global_60
  loc_B07244: LdPrVar
  loc_B07246: LateMemCall
  loc_B0724C: LitVarStr var_94, "     <table align=""center"" height=""100" & Chr(37) & """ width=""99" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0""><tr>"
  loc_B07251: PopAdLdVar
  loc_B07252: FLdPr Me
  loc_B07255: MemLdRfVar from_stack_1.global_60
  loc_B07258: LdPrVar
  loc_B0725A: LateMemCall
  loc_B07260: LitVarStr var_94, "        <td height=""100" & Chr(37) & """ class=""NormalAbajo MargIzq"">"
  loc_B07265: PopAdLdVar
  loc_B07266: FLdPr Me
  loc_B07269: MemLdRfVar from_stack_1.global_60
  loc_B0726C: LdPrVar
  loc_B0726E: LateMemCall
  loc_B07274: LitVarStr var_94, "        <img src=""l6.jpg"" width=""184"" height=""92"" class=""MissChild"">"
  loc_B07279: PopAdLdVar
  loc_B0727A: FLdPr Me
  loc_B0727D: MemLdRfVar from_stack_1.global_60
  loc_B07280: LdPrVar
  loc_B07282: LateMemCall
  loc_B07288: LitVarStr var_94, "        ESTIMADO VECINO, PARA QUE SU DINERO RINDA, LE PEDIMOS QUE COLABORE CON LA LIMPIEZA DEL DEPARTAMENTO, POR FAVOR NO ARROJE RESIDUOS NI ESCOMBROS EN LOS LUGARES EN LOS QUE NO CORRESPONDE HACERLO.<br>"
  loc_B0728D: PopAdLdVar
  loc_B0728E: FLdPr Me
  loc_B07291: MemLdRfVar from_stack_1.global_60
  loc_B07294: LdPrVar
  loc_B07296: LateMemCall
  loc_B0729C: LitVarStr var_94, "        MUCHAS GRACIAS POR SU COLABORACI&Oacute;N.<br>"
  loc_B072A1: PopAdLdVar
  loc_B072A2: FLdPr Me
  loc_B072A5: MemLdRfVar from_stack_1.global_60
  loc_B072A8: LdPrVar
  loc_B072AA: LateMemCall
  loc_B072B0: LitVarStr var_94, "        Sr. VECINO DE GUAYMALL&Eacute;N: Este Boleto incluye la opci&oacute;n de los bimestres 5 y 6 del presente ejercicio.<br><br>"
  loc_B072B5: PopAdLdVar
  loc_B072B6: FLdPr Me
  loc_B072B9: MemLdRfVar from_stack_1.global_60
  loc_B072BC: LdPrVar
  loc_B072BE: LateMemCall
  loc_B072C4: LitVarStr var_94, "0"
  loc_B072C9: FStVarCopyObj var_B4
  loc_B072CC: FLdRfVar var_B4
  loc_B072CF: LitI4 6
  loc_B072D4: FLdRfVar var_C4
  loc_B072D7: ImpAdCallFPR4  = String(, )
  loc_B072DC: LitVarStr var_E8, "        C&oacute;digo pagomiscuentas.com: <strong>1"
  loc_B072E1: LitI4 1
  loc_B072E6: LitI4 1
  loc_B072EB: FLdRfVar var_C4
  loc_B072EE: FLdPr Me
  loc_B072F1: MemLdStr global_100
  loc_B072F4: FLdPr Me
  loc_B072F7: MemLdStr global_96
  loc_B072FA: AryLock
  loc_B072FD: Ary1LdPr
  loc_B072FE: MemLdRfVar from_stack_1.global_76
  loc_B07301: CVarRef
  loc_B07306: FLdRfVar var_D8
  loc_B07309: ImpAdCallFPR4  = Format(, )
  loc_B0730E: AryUnlock
  loc_B07311: FLdRfVar var_D8
  loc_B07314: ConcatVar var_F8
  loc_B07318: LitVarStr var_108, "</strong><br>"
  loc_B0731D: ConcatVar var_118
  loc_B07321: PopAdLdVar
  loc_B07322: FLdPr Me
  loc_B07325: MemLdRfVar from_stack_1.global_60
  loc_B07328: LdPrVar
  loc_B0732A: LateMemCall
  loc_B07330: FFreeVar var_B4 = "": var_C4 = "": var_D8 = "": var_F8 = ""
  loc_B0733D: LitVarStr var_94, "0"
  loc_B07342: FStVarCopyObj var_B4
  loc_B07345: FLdRfVar var_B4
  loc_B07348: LitI4 &HC
  loc_B0734D: FLdRfVar var_C4
  loc_B07350: ImpAdCallFPR4  = String(, )
  loc_B07355: LitVarStr var_E8, "        C&oacute;digo RED LINK: <strong>1"
  loc_B0735A: LitI4 1
  loc_B0735F: LitI4 1
  loc_B07364: FLdRfVar var_C4
  loc_B07367: FLdPr Me
  loc_B0736A: MemLdStr global_100
  loc_B0736D: FLdPr Me
  loc_B07370: MemLdStr global_96
  loc_B07373: AryLock
  loc_B07376: Ary1LdPr
  loc_B07377: MemLdRfVar from_stack_1.global_76
  loc_B0737A: CVarRef
  loc_B0737F: FLdRfVar var_D8
  loc_B07382: ImpAdCallFPR4  = Format(, )
  loc_B07387: AryUnlock
  loc_B0738A: FLdRfVar var_D8
  loc_B0738D: ConcatVar var_F8
  loc_B07391: LitVarStr var_108, "</strong><br><br>"
  loc_B07396: ConcatVar var_118
  loc_B0739A: PopAdLdVar
  loc_B0739B: FLdPr Me
  loc_B0739E: MemLdRfVar from_stack_1.global_60
  loc_B073A1: LdPrVar
  loc_B073A3: LateMemCall
  loc_B073A9: FFreeVar var_B4 = "": var_C4 = "": var_D8 = "": var_F8 = ""
  loc_B073B6: LitVarStr var_94, "        <strong>&iexcl;Apoye a SU MUNICIPIO pagando en t&eacute;rmino!</strong>"
  loc_B073BB: PopAdLdVar
  loc_B073BC: FLdPr Me
  loc_B073BF: MemLdRfVar from_stack_1.global_60
  loc_B073C2: LdPrVar
  loc_B073C4: LateMemCall
  loc_B073CA: LitVarStr var_94, "      </td></tr></table>"
  loc_B073CF: PopAdLdVar
  loc_B073D0: FLdPr Me
  loc_B073D3: MemLdRfVar from_stack_1.global_60
  loc_B073D6: LdPrVar
  loc_B073D8: LateMemCall
  loc_B073DE: LitVarStr var_94, "    </td>"
  loc_B073E3: PopAdLdVar
  loc_B073E4: FLdPr Me
  loc_B073E7: MemLdRfVar from_stack_1.global_60
  loc_B073EA: LdPrVar
  loc_B073EC: LateMemCall
  loc_B073F2: LitVarStr var_94, "  </tr>"
  loc_B073F7: PopAdLdVar
  loc_B073F8: FLdPr Me
  loc_B073FB: MemLdRfVar from_stack_1.global_60
  loc_B073FE: LdPrVar
  loc_B07400: LateMemCall
  loc_B07406: LitVarStr var_94, "</table>"
  loc_B0740B: PopAdLdVar
  loc_B0740C: FLdPr Me
  loc_B0740F: MemLdRfVar from_stack_1.global_60
  loc_B07412: LdPrVar
  loc_B07414: LateMemCall
  loc_B0741A: ExitProcHresult
End Function

Private Function Proc_314_24_9F3BEC() '9F3BEC
  'Data Table: 49CAEC
  loc_9F3BC0: LitVarStr var_94, "</body>"
  loc_9F3BC5: PopAdLdVar
  loc_9F3BC6: FLdPr Me
  loc_9F3BC9: MemLdRfVar from_stack_1.global_60
  loc_9F3BCC: LdPrVar
  loc_9F3BCE: LateMemCall
  loc_9F3BD4: LitVarStr var_94, "</html>"
  loc_9F3BD9: PopAdLdVar
  loc_9F3BDA: FLdPr Me
  loc_9F3BDD: MemLdRfVar from_stack_1.global_60
  loc_9F3BE0: LdPrVar
  loc_9F3BE2: LateMemCall
  loc_9F3BE8: ExitProcHresult
End Function
