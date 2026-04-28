VERSION 5.00
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptEmisionBoletoPorRango
  Caption = "Emisión de Boleto por Rango"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEmisionBoletoPorRango.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8280
  ClientHeight = 3552
  StartUpPosition = 2 'CenterScreen
  Begin ABC128Lib.Abc128 BarCode
    Left = 240
    Top = 240
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptEmisionBoletoPorRango.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3300
    Width = 8280
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptEmisionBoletoPorRango.frx":099C
  End
  Begin VB.CommandButton cmdSalir
    Left = 7200
    Top = 2160
    Width = 735
    Height = 615
    TabIndex = 9
    Cancel = -1  'True
    Picture = "rptEmisionBoletoPorRango.frx":0A1C
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEmisionBoletoPorRango.frx":0C6E
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 2880
    Top = 2040
    Width = 2655
    Height = 1095
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 720
      Top = 480
      Width = 1335
      Height = 495
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
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 240
    Top = 2040
    Width = 2655
    Height = 1095
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 480
      Top = 360
      Width = 1812
      Height = 612
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8055
    Height = 1935
    TabIndex = 11
    Begin VB.Frame Frame4
      Caption = "Boleto n°"
      Left = 1200
      Top = 840
      Width = 4692
      Height = 975
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
      Begin MSMask.MaskEdBox NumeBoleHastaMsk
        Left = 3240
        Top = 360
        Width = 1332
        Height = 312
        TabIndex = 3
        OleObjectBlob = "rptEmisionBoletoPorRango.frx":0CD2
      End
      Begin MSMask.MaskEdBox NumeBoleDesdeMsk
        Left = 1080
        Top = 360
        Width = 1212
        Height = 312
        TabIndex = 2
        OleObjectBlob = "rptEmisionBoletoPorRango.frx":0D6A
      End
      Begin VB.Label Label4
        Caption = "Desde:"
        Left = 120
        Top = 360
        Width = 756
        Height = 300
        TabIndex = 17
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
        Caption = "Hasta:"
        Left = 2520
        Top = 360
        Width = 684
        Height = 300
        TabIndex = 16
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
    Begin VB.CheckBox BancoChk
      Caption = "Paga en Banco"
      Left = 6000
      Top = 1320
      Width = 1935
      Height = 255
      Visible = 0   'False
      TabIndex = 10
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 360
      Width = 1335
      Height = 495
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
    End
    Begin MSMask.MaskEdBox PeriBoleMsk
      Left = 2280
      Top = 360
      Width = 972
      Height = 312
      TabIndex = 0
      OleObjectBlob = "rptEmisionBoletoPorRango.frx":0E02
    End
    Begin VB.Label Label2
      Caption = "Periodo:"
      Left = 1356
      Top = 360
      Width = 876
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
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7320
    Top = 2400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptEmisionBoletoPorRango.frx":0E92
  End
  Begin MSComctlLib.ProgressBar pbar
    Left = 5640
    Top = 2880
    Width = 2535
    Height = 255
    Visible = 0   'False
    TabIndex = 18
    OleObjectBlob = "rptEmisionBoletoPorRango.frx":0F46
  End
  Begin VB.Label ProgresoLbl
    Left = 6000
    Top = 2280
    Width = 915
    Height = 300
    TabIndex = 19
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

Attribute VB_Name = "rptEmisionBoletoPorRango"

Public DetaDeva As String
Public Imprimiendo As Boolean
Public bGenerado As Boolean
Public sImprimirApremioPendiente As String
Public sImprimirApremioInhibido As String

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_005632C4
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_3_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_4_00563310
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_5_00563348
  bStruc(16) As Byte ' String fields: 3
End Type

Private Type UDT_6_00563390
  bStruc(36) As Byte ' String fields: 2
End Type

Private Type UDT_7_005633D8
  bStruc(196) As Byte ' String fields: 49
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1FDC8
  'Data Table: 4E16A8
  loc_A1FD90: FLdPr Me
  loc_A1FD93: VCallAd Control_ID_statusBar
  loc_A1FD96: FStAdFunc var_88
  loc_A1FD99: FLdPr var_88
  loc_A1FD9C: LateIdLdVar var_98 DispID_1 0
  loc_A1FDA3: CStrVarTmp
  loc_A1FDA4: CVarStr var_A8
  loc_A1FDA7: PopAdLdVar
  loc_A1FDA8: FLdPr Me
  loc_A1FDAB: VCallAd Control_ID_statusBar
  loc_A1FDAE: FStAdFunc var_BC
  loc_A1FDB1: FLdPr var_BC
  loc_A1FDB4: LateIdSt
  loc_A1FDB9: FFreeAd var_88 = ""
  loc_A1FDC0: FFreeVar var_98 = ""
  loc_A1FDC7: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'B25E34
  'Data Table: 4E16A8
  loc_B25B80: LitVarStr var_94, "Enviando a impresora predeterminada..."
  loc_B25B85: PopAdLdVar
  loc_B25B86: FLdPr Me
  loc_B25B89: VCallAd Control_ID_statusBar
  loc_B25B8C: FStAdFunc var_A8
  loc_B25B8F: FLdPr var_A8
  loc_B25B92: LateIdSt
  loc_B25B97: FFree1Ad var_A8
  loc_B25B9A: ILdRf Me
  loc_B25B9D: CastAd
  loc_B25BA0: FStAdFunc var_A8
  loc_B25BA3: FLdRfVar var_A8
  loc_B25BA6: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B25BAB: FFree1Ad var_A8
  loc_B25BAE: Call GeneraReporte()
  loc_B25BB3: FLdPr Me
  loc_B25BB6: MemLdI2 bGenerado
  loc_B25BB9: BranchF loc_B25E19
  loc_B25BBC: LitStr vbNullString
  loc_B25BBF: FLdPr Me
  loc_B25BC2: MemStStrCopy
  loc_B25BC6: FLdPr Me
  loc_B25BC9: MemLdStr global_116
  loc_B25BCC: LitI2_Byte 1
  loc_B25BCE: FnUBound
  loc_B25BD0: CR8I4
  loc_B25BD1: CVarR4
  loc_B25BD5: PopAdLdVar
  loc_B25BD6: FLdPr Me
  loc_B25BD9: VCallAd Control_ID_pbar
  loc_B25BDC: FStAdFunc var_A8
  loc_B25BDF: FLdPr var_A8
  loc_B25BE2: LateIdSt
  loc_B25BE7: FFree1Ad var_A8
  loc_B25BEA: LitVar_TRUE var_94
  loc_B25BED: PopAdLdVar
  loc_B25BEE: FLdPr Me
  loc_B25BF1: VCallAd Control_ID_pbar
  loc_B25BF4: FStAdFunc var_A8
  loc_B25BF7: FLdPr var_A8
  loc_B25BFA: LateIdSt
  loc_B25BFF: FFree1Ad var_A8
  loc_B25C02: LitI2_Byte &HFF
  loc_B25C04: FLdPr Me
  loc_B25C07: VCallAd Control_ID_ProgresoLbl
  loc_B25C0A: FStAdFunc var_A8
  loc_B25C0D: FLdPr var_A8
  loc_B25C10: Me.Visible = from_stack_1b
  loc_B25C15: FFree1Ad var_A8
  loc_B25C18: LitI4 1
  loc_B25C1D: FLdPr Me
  loc_B25C20: MemLdRfVar from_stack_1.global_124
  loc_B25C23: FLdPr Me
  loc_B25C26: MemLdStr global_116
  loc_B25C29: LitI2_Byte 1
  loc_B25C2B: FnUBound
  loc_B25C2D: ForI4 var_B0
  loc_B25C33: LitStr " - "
  loc_B25C36: FLdPr Me
  loc_B25C39: VCallAd Control_ID_PeriBoleMsk
  loc_B25C3C: FStAdFunc var_A8
  loc_B25C3F: FLdPr var_A8
  loc_B25C42: LateIdLdVar var_C0 DispID_22 0
  loc_B25C49: CStrVarTmp
  loc_B25C4A: FStStrNoPop var_C4
  loc_B25C4D: ConcatStr
  loc_B25C4E: FStStrNoPop var_C8
  loc_B25C51: LitStr "-"
  loc_B25C54: ConcatStr
  loc_B25C55: FStStrNoPop var_CC
  loc_B25C58: FLdPr Me
  loc_B25C5B: MemLdStr global_124
  loc_B25C5E: FLdPr Me
  loc_B25C61: MemLdStr global_116
  loc_B25C64: Ary1LdPr
  loc_B25C65: MemLdStr global_108
  loc_B25C68: ConcatStr
  loc_B25C69: FStStrNoPop var_D0
  loc_B25C6C: FLdPr Me
  loc_B25C6F: Me.Tag = from_stack_1
  loc_B25C74: FFreeStr var_C4 = "": var_C8 = "": var_CC = ""
  loc_B25C7F: FFree1Ad var_A8
  loc_B25C82: FFree1Var var_C0 = ""
  loc_B25C85: ILdRf Me
  loc_B25C88: CastAd
  loc_B25C8B: FStAdFunc var_A8
  loc_B25C8E: FLdRfVar var_A8
  loc_B25C91: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_B25C96: FFree1Ad var_A8
  loc_B25C99: FLdPr Me
  loc_B25C9C: MemLdStr global_124
  loc_B25C9F: CR8I4
  loc_B25CA0: CVarR4
  loc_B25CA4: PopAdLdVar
  loc_B25CA5: FLdPr Me
  loc_B25CA8: VCallAd Control_ID_pbar
  loc_B25CAB: FStAdFunc var_A8
  loc_B25CAE: FLdPr var_A8
  loc_B25CB1: LateIdSt
  loc_B25CB6: FFree1Ad var_A8
  loc_B25CB9: FLdPr Me
  loc_B25CBC: MemLdStr global_124
  loc_B25CBF: CStrI4
  loc_B25CC1: FStStrNoPop var_C4
  loc_B25CC4: LitStr "/"
  loc_B25CC7: ConcatStr
  loc_B25CC8: FStStrNoPop var_C8
  loc_B25CCB: FLdPr Me
  loc_B25CCE: MemLdStr global_116
  loc_B25CD1: LitI2_Byte 1
  loc_B25CD3: FnUBound
  loc_B25CD5: CStrI4
  loc_B25CD7: FStStrNoPop var_CC
  loc_B25CDA: ConcatStr
  loc_B25CDB: FStStrNoPop var_D0
  loc_B25CDE: FLdPr Me
  loc_B25CE1: VCallAd Control_ID_ProgresoLbl
  loc_B25CE4: FStAdFunc var_A8
  loc_B25CE7: FLdPr var_A8
  loc_B25CEA: Me.Caption = from_stack_1
  loc_B25CEF: FFreeStr var_C4 = "": var_C8 = "": var_CC = ""
  loc_B25CFA: FFree1Ad var_A8
  loc_B25CFD: LitStr "Imprimiendo boleto "
  loc_B25D00: FLdPr Me
  loc_B25D03: VCallAd Control_ID_PeriBoleMsk
  loc_B25D06: FStAdFunc var_A8
  loc_B25D09: FLdPr var_A8
  loc_B25D0C: LateIdLdVar var_C0 DispID_22 0
  loc_B25D13: CStrVarTmp
  loc_B25D14: FStStrNoPop var_C4
  loc_B25D17: ConcatStr
  loc_B25D18: FStStrNoPop var_C8
  loc_B25D1B: LitStr "/"
  loc_B25D1E: ConcatStr
  loc_B25D1F: FStStrNoPop var_CC
  loc_B25D22: FLdPr Me
  loc_B25D25: MemLdStr global_124
  loc_B25D28: FLdPr Me
  loc_B25D2B: MemLdStr global_116
  loc_B25D2E: Ary1LdPr
  loc_B25D2F: MemLdStr global_108
  loc_B25D32: ConcatStr
  loc_B25D33: CVarStr var_E0
  loc_B25D36: PopAdLdVar
  loc_B25D37: FLdPr Me
  loc_B25D3A: VCallAd Control_ID_statusBar
  loc_B25D3D: FStAdFunc var_E4
  loc_B25D40: FLdPr var_E4
  loc_B25D43: LateIdSt
  loc_B25D48: FFreeStr var_C4 = "": var_C8 = ""
  loc_B25D51: FFreeAd var_A8 = ""
  loc_B25D58: FFreeVar var_C0 = ""
  loc_B25D5F: Call GeneraHTML()
  loc_B25D64: ImpAdLdRf MemVar_D93C84
  loc_B25D67: CDargRef
  loc_B25D6B: FLdPr Me
  loc_B25D6E: VCallAd Control_ID_wbbReporte
  loc_B25D71: FStAdFunc var_A8
  loc_B25D74: FLdPr var_A8
  loc_B25D77: LateIdCall
  loc_B25D7F: FFree1Ad var_A8
  loc_B25D82: ImpAdCallFPR4 DoEvents()
  loc_B25D87: FLdPr Me
  loc_B25D8A: VCallAd Control_ID_wbbReporte
  loc_B25D8D: FStAdFunc var_A8
  loc_B25D90: FLdPr var_A8
  loc_B25D93: LateIdLdVar var_C0 DispID_-525 -1
  loc_B25D9A: CI4Var
  loc_B25D9C: LitI4 4
  loc_B25DA1: NeI4
  loc_B25DA2: FFree1Ad var_A8
  loc_B25DA5: FFree1Var var_C0 = ""
  loc_B25DA8: BranchT loc_B25D82
  loc_B25DAB: LitVarI4
  loc_B25DB3: PopAdLdVar
  loc_B25DB4: LitVarI4
  loc_B25DBC: PopAdLdVar
  loc_B25DBD: LitVarI2 var_124, 2
  loc_B25DC2: PopAdLdVar
  loc_B25DC3: LitVar_NULL
  loc_B25DC7: PopAdLdVar
  loc_B25DC8: FLdPr Me
  loc_B25DCB: VCallAd Control_ID_wbbReporte
  loc_B25DCE: FStAdFunc var_A8
  loc_B25DD1: FLdPr var_A8
  loc_B25DD4: LateIdCall
  loc_B25DDC: FFree1Ad var_A8
  loc_B25DDF: FLdPr Me
  loc_B25DE2: MemLdRfVar from_stack_1.global_124
  loc_B25DE5: NextI4 var_B0, loc_B25C33
  loc_B25DEA: LitVar_FALSE
  loc_B25DEE: PopAdLdVar
  loc_B25DEF: FLdPr Me
  loc_B25DF2: VCallAd Control_ID_pbar
  loc_B25DF5: FStAdFunc var_A8
  loc_B25DF8: FLdPr var_A8
  loc_B25DFB: LateIdSt
  loc_B25E00: FFree1Ad var_A8
  loc_B25E03: LitI2_Byte 0
  loc_B25E05: FLdPr Me
  loc_B25E08: VCallAd Control_ID_ProgresoLbl
  loc_B25E0B: FStAdFunc var_A8
  loc_B25E0E: FLdPr var_A8
  loc_B25E11: Me.Visible = from_stack_1b
  loc_B25E16: FFree1Ad var_A8
  loc_B25E19: ILdRf Me
  loc_B25E1C: CastAd
  loc_B25E1F: FStAdFunc var_A8
  loc_B25E22: FLdRfVar var_A8
  loc_B25E25: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B25E2A: FFree1Ad var_A8
  loc_B25E2D: Call HabilitarCriterio()
  loc_B25E32: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A017BC
  'Data Table: 4E16A8
  loc_A0178C: LitVarStr var_94, "Cerrando..."
  loc_A01791: PopAdLdVar
  loc_A01792: FLdPr Me
  loc_A01795: VCallAd Control_ID_statusBar
  loc_A01798: FStAdFunc var_A8
  loc_A0179B: FLdPr var_A8
  loc_A0179E: LateIdSt
  loc_A017A3: FFree1Ad var_A8
  loc_A017A6: ILdRf Me
  loc_A017A9: FStAdNoPop
  loc_A017AD: ImpAdLdRf MemVar_D9C5D8
  loc_A017B0: NewIfNullPr Global
  loc_A017B3: Global.Unload from_stack_1
  loc_A017B8: FFree1Ad var_A8
  loc_A017BB: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'BA1894
  'Data Table: 4E16A8
  loc_BA12B4: OnErrorGoto loc_BA180B
  loc_BA12B7: FLdRfVar var_9E
  loc_BA12BA: LitI2_Byte 0
  loc_BA12BC: Call Proc_355_27_B0E804()
  loc_BA12C1: FLdI2 var_9E
  loc_BA12C4: NotI4
  loc_BA12C5: BranchF loc_BA12CB
  loc_BA12C8: Branch loc_BA17D7
  loc_BA12CB: FLdRfVar var_A4
  loc_BA12CE: FLdPr Me
  loc_BA12D1:  = Me.hWnd
  loc_BA12D6: ImpAdCallI2 Proc_272_19_A53E30()
  loc_BA12DB: FStStr var_B8
  loc_BA12DE: LitStr "Seleccione la carpeta de salida para los archivos generados."
  loc_BA12E1: LitStr vbCrLf
  loc_BA12E4: ConcatStr
  loc_BA12E5: FStStrNoPop var_A8
  loc_BA12E8: LitStr "Se reescribirán los archivos basados en el mismo criterio."
  loc_BA12EB: ConcatStr
  loc_BA12EC: FStStrNoPop var_B0
  loc_BA12EF: FLdZeroAd var_B8
  loc_BA12F2: FStStrNoPop var_AC
  loc_BA12F5: ILdRf var_A4
  loc_BA12F8: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_BA12FD: FStStrNoPop var_B4
  loc_BA1300: FLdPr Me
  loc_BA1303: MemStStrCopy
  loc_BA1307: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BA1314: FLdPr Me
  loc_BA1317: MemLdRfVar from_stack_1.global_88
  loc_BA131A: CVarRef
  loc_BA131F: FLdRfVar var_D8
  loc_BA1322: ImpAdCallFPR4  = Trim()
  loc_BA1327: FLdRfVar var_D8
  loc_BA132A: LitVarStr var_E8, vbNullString
  loc_BA132F: HardType
  loc_BA1330: EqVarBool
  loc_BA1332: FFree1Var var_D8 = ""
  loc_BA1335: BranchF loc_BA133B
  loc_BA1338: Branch loc_BA17D7
  loc_BA133B: FLdRfVar var_A8
  loc_BA133E: LitStr "tmp"
  loc_BA1341: FLdPr Me
  loc_BA1344: MemLdStr global_88
  loc_BA1347: FLdRfVar var_88
  loc_BA134A: NewIfNullPr IFileSystem3
  loc_BA134D: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BA1352: ILdRf var_A8
  loc_BA1355: LitStr "\"
  loc_BA1358: ConcatStr
  loc_BA1359: FStStr var_9C
  loc_BA135C: FFree1Str var_A8
  loc_BA135F: FLdRfVar var_9E
  loc_BA1362: ILdRf var_9C
  loc_BA1365: FLdRfVar var_88
  loc_BA1368: NewIfNullPr IFileSystem3
  loc_BA136B: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_BA1370: FLdI2 var_9E
  loc_BA1373: BranchF loc_BA1379
  loc_BA1376: Branch loc_BA1381
  loc_BA1379: ILdRf var_9C
  loc_BA137C: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_BA1381: ILdRf Me
  loc_BA1384: CastAd
  loc_BA1387: FStAdFunc var_FC
  loc_BA138A: FLdRfVar var_FC
  loc_BA138D: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_BA1392: FFree1Ad var_FC
  loc_BA1395: ImpAdCallFPR4 DoEvents()
  loc_BA139A: Call GeneraReporte()
  loc_BA139F: FLdPr Me
  loc_BA13A2: MemLdI2 bGenerado
  loc_BA13A5: BranchF loc_BA17D7
  loc_BA13A8: FLdPr Me
  loc_BA13AB: MemLdStr global_116
  loc_BA13AE: LitI2_Byte 1
  loc_BA13B0: FnUBound
  loc_BA13B2: CR8I4
  loc_BA13B3: CVarR4
  loc_BA13B7: PopAdLdVar
  loc_BA13B8: FLdPr Me
  loc_BA13BB: VCallAd Control_ID_pbar
  loc_BA13BE: FStAdFunc var_FC
  loc_BA13C1: FLdPr var_FC
  loc_BA13C4: LateIdSt
  loc_BA13C9: FFree1Ad var_FC
  loc_BA13CC: LitVar_TRUE var_C8
  loc_BA13CF: PopAdLdVar
  loc_BA13D0: FLdPr Me
  loc_BA13D3: VCallAd Control_ID_pbar
  loc_BA13D6: FStAdFunc var_FC
  loc_BA13D9: FLdPr var_FC
  loc_BA13DC: LateIdSt
  loc_BA13E1: FFree1Ad var_FC
  loc_BA13E4: LitI2_Byte &HFF
  loc_BA13E6: FLdPr Me
  loc_BA13E9: VCallAd Control_ID_ProgresoLbl
  loc_BA13EC: FStAdFunc var_FC
  loc_BA13EF: FLdPr var_FC
  loc_BA13F2: Me.Visible = from_stack_1b
  loc_BA13F7: FFree1Ad var_FC
  loc_BA13FA: LitStr vbNullString
  loc_BA13FD: FStStrCopy var_90
  loc_BA1400: LitI4 1
  loc_BA1405: FLdPr Me
  loc_BA1408: MemLdStr global_116
  loc_BA140B: Ary1LdPr
  loc_BA140C: MemLdStr global_108
  loc_BA140F: CI4Str
  loc_BA1410: FStR4 var_98
  loc_BA1413: ILdRf var_9C
  loc_BA1416: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BA141B: LitI4 1
  loc_BA1420: FLdPr Me
  loc_BA1423: MemLdRfVar from_stack_1.global_124
  loc_BA1426: FLdPr Me
  loc_BA1429: MemLdStr global_116
  loc_BA142C: LitI2_Byte 1
  loc_BA142E: FnUBound
  loc_BA1430: ForI4 var_104
  loc_BA1436: FLdPr Me
  loc_BA1439: MemLdStr global_124
  loc_BA143C: FLdPr Me
  loc_BA143F: MemLdStr global_116
  loc_BA1442: AryLock
  loc_BA1445: Ary1LdRf
  loc_BA1446: FStR4 var_10C
  loc_BA1449: FLdPr Me
  loc_BA144C: VCallAd Control_ID_PeriBoleMsk
  loc_BA144F: FStAdFunc var_FC
  loc_BA1452: FLdPr var_FC
  loc_BA1455: LateIdLdVar var_D8 DispID_22 0
  loc_BA145C: CStrVarTmp
  loc_BA145D: FStStrNoPop var_A8
  loc_BA1460: LitStr "-"
  loc_BA1463: ConcatStr
  loc_BA1464: FStStrNoPop var_AC
  loc_BA1467: FLdPr Me
  loc_BA146A: MemLdStr global_124
  loc_BA146D: FLdPr Me
  loc_BA1470: MemLdStr global_116
  loc_BA1473: Ary1LdPr
  loc_BA1474: MemLdStr global_108
  loc_BA1477: ConcatStr
  loc_BA1478: FStStr var_8C
  loc_BA147B: FFreeStr var_A8 = ""
  loc_BA1482: FFree1Ad var_FC
  loc_BA1485: FFree1Var var_D8 = ""
  loc_BA1488: ILdRf var_9C
  loc_BA148B: ILdRf var_8C
  loc_BA148E: ConcatStr
  loc_BA148F: FStStrNoPop var_A8
  loc_BA1492: LitStr ".html"
  loc_BA1495: ConcatStr
  loc_BA1496: ImpAdStStr MemVar_D93C84
  loc_BA149A: FFree1Str var_A8
  loc_BA149D: LitI4 0
  loc_BA14A2: FStR4 var_10C
  loc_BA14A5: AryUnlock
  loc_BA14A8: FLdPr Me
  loc_BA14AB: MemLdStr global_124
  loc_BA14AE: CR8I4
  loc_BA14AF: CVarR4
  loc_BA14B3: PopAdLdVar
  loc_BA14B4: FLdPr Me
  loc_BA14B7: VCallAd Control_ID_pbar
  loc_BA14BA: FStAdFunc var_FC
  loc_BA14BD: FLdPr var_FC
  loc_BA14C0: LateIdSt
  loc_BA14C5: FFree1Ad var_FC
  loc_BA14C8: FLdPr Me
  loc_BA14CB: MemLdStr global_124
  loc_BA14CE: CStrI4
  loc_BA14D0: FStStrNoPop var_A8
  loc_BA14D3: LitStr "/"
  loc_BA14D6: ConcatStr
  loc_BA14D7: FStStrNoPop var_AC
  loc_BA14DA: FLdPr Me
  loc_BA14DD: MemLdStr global_116
  loc_BA14E0: LitI2_Byte 1
  loc_BA14E2: FnUBound
  loc_BA14E4: CStrI4
  loc_BA14E6: FStStrNoPop var_B0
  loc_BA14E9: ConcatStr
  loc_BA14EA: FStStrNoPop var_B4
  loc_BA14ED: FLdPr Me
  loc_BA14F0: VCallAd Control_ID_ProgresoLbl
  loc_BA14F3: FStAdFunc var_FC
  loc_BA14F6: FLdPr var_FC
  loc_BA14F9: Me.Caption = from_stack_1
  loc_BA14FE: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_BA1509: FFree1Ad var_FC
  loc_BA150C: LitStr "Preparando boleto "
  loc_BA150F: FLdPr Me
  loc_BA1512: VCallAd Control_ID_PeriBoleMsk
  loc_BA1515: FStAdFunc var_FC
  loc_BA1518: FLdPr var_FC
  loc_BA151B: LateIdLdVar var_D8 DispID_22 0
  loc_BA1522: CStrVarTmp
  loc_BA1523: FStStrNoPop var_A8
  loc_BA1526: ConcatStr
  loc_BA1527: FStStrNoPop var_AC
  loc_BA152A: LitStr "/"
  loc_BA152D: ConcatStr
  loc_BA152E: FStStrNoPop var_B0
  loc_BA1531: FLdPr Me
  loc_BA1534: MemLdStr global_124
  loc_BA1537: FLdPr Me
  loc_BA153A: MemLdStr global_116
  loc_BA153D: Ary1LdPr
  loc_BA153E: MemLdStr global_108
  loc_BA1541: ConcatStr
  loc_BA1542: CVarStr var_F8
  loc_BA1545: PopAdLdVar
  loc_BA1546: FLdPr Me
  loc_BA1549: VCallAd Control_ID_statusBar
  loc_BA154C: FStAdFunc var_110
  loc_BA154F: FLdPr var_110
  loc_BA1552: LateIdSt
  loc_BA1557: FFreeStr var_A8 = "": var_AC = ""
  loc_BA1560: FFreeAd var_FC = ""
  loc_BA1567: FFreeVar var_D8 = ""
  loc_BA156E: Call GeneraHTML()
  loc_BA1573: ILdRf var_90
  loc_BA1576: LitStr """"
  loc_BA1579: ConcatStr
  loc_BA157A: FStStrNoPop var_A8
  loc_BA157D: ImpAdLdI4 MemVar_D93C84
  loc_BA1580: ConcatStr
  loc_BA1581: FStStrNoPop var_AC
  loc_BA1584: LitStr """ "
  loc_BA1587: ConcatStr
  loc_BA1588: FStStr var_90
  loc_BA158B: FFreeStr var_A8 = ""
  loc_BA1592: FLdPr Me
  loc_BA1595: MemLdStr global_124
  loc_BA1598: LitI4 &HFA
  loc_BA159D: ModI4
  loc_BA159E: LitI4 0
  loc_BA15A3: EqI4
  loc_BA15A4: FLdPr Me
  loc_BA15A7: MemLdStr global_124
  loc_BA15AA: FLdPr Me
  loc_BA15AD: MemLdStr global_116
  loc_BA15B0: LitI2_Byte 1
  loc_BA15B2: FnUBound
  loc_BA15B4: EqI4
  loc_BA15B5: OrI4
  loc_BA15B6: BranchF loc_BA175E
  loc_BA15B9: FLdPr Me
  loc_BA15BC: MemLdStr global_124
  loc_BA15BF: FLdPr Me
  loc_BA15C2: MemLdStr global_116
  loc_BA15C5: LitI2_Byte 1
  loc_BA15C7: FnUBound
  loc_BA15C9: EqI4
  loc_BA15CA: BranchF loc_BA1610
  loc_BA15CD: LitStr " ("
  loc_BA15D0: ILdRf var_98
  loc_BA15D3: CStrI4
  loc_BA15D5: FStStrNoPop var_A8
  loc_BA15D8: ConcatStr
  loc_BA15D9: FStStrNoPop var_AC
  loc_BA15DC: LitStr "-"
  loc_BA15DF: ConcatStr
  loc_BA15E0: FStStrNoPop var_B0
  loc_BA15E3: FLdPr Me
  loc_BA15E6: MemLdStr global_116
  loc_BA15E9: LitI2_Byte 1
  loc_BA15EB: FnUBound
  loc_BA15ED: FLdPr Me
  loc_BA15F0: MemLdStr global_116
  loc_BA15F3: Ary1LdPr
  loc_BA15F4: MemLdStr global_108
  loc_BA15F7: ConcatStr
  loc_BA15F8: FStStrNoPop var_B4
  loc_BA15FB: LitStr ")"
  loc_BA15FE: ConcatStr
  loc_BA15FF: FStStr var_94
  loc_BA1602: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_BA160D: Branch loc_BA1666
  loc_BA1610: LitStr " ("
  loc_BA1613: ILdRf var_98
  loc_BA1616: CStrI4
  loc_BA1618: FStStrNoPop var_A8
  loc_BA161B: ConcatStr
  loc_BA161C: FStStrNoPop var_AC
  loc_BA161F: LitStr "-"
  loc_BA1622: ConcatStr
  loc_BA1623: FStStrNoPop var_B0
  loc_BA1626: FLdPr Me
  loc_BA1629: MemLdStr global_124
  loc_BA162C: FLdPr Me
  loc_BA162F: MemLdStr global_116
  loc_BA1632: Ary1LdPr
  loc_BA1633: MemLdStr global_108
  loc_BA1636: ConcatStr
  loc_BA1637: FStStrNoPop var_B4
  loc_BA163A: LitStr ")"
  loc_BA163D: ConcatStr
  loc_BA163E: FStStr var_94
  loc_BA1641: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_BA164C: FLdPr Me
  loc_BA164F: MemLdStr global_124
  loc_BA1652: LitI4 1
  loc_BA1657: AddI4
  loc_BA1658: FLdPr Me
  loc_BA165B: MemLdStr global_116
  loc_BA165E: Ary1LdPr
  loc_BA165F: MemLdStr global_108
  loc_BA1662: CI4Str
  loc_BA1663: FStR4 var_98
  loc_BA1666: LitStr "\Boletos por rango "
  loc_BA1669: FLdPr Me
  loc_BA166C: VCallAd Control_ID_PeriBoleMsk
  loc_BA166F: FStAdFunc var_FC
  loc_BA1672: FLdPr var_FC
  loc_BA1675: LateIdLdVar var_D8 DispID_22 0
  loc_BA167C: CStrVarTmp
  loc_BA167D: FStStrNoPop var_A8
  loc_BA1680: ConcatStr
  loc_BA1681: FStStrNoPop var_AC
  loc_BA1684: ILdRf var_94
  loc_BA1687: ConcatStr
  loc_BA1688: FStStrNoPop var_B0
  loc_BA168B: LitStr ".pdf"
  loc_BA168E: ConcatStr
  loc_BA168F: FStStr var_8C
  loc_BA1692: FFreeStr var_A8 = "": var_AC = ""
  loc_BA169B: FFree1Ad var_FC
  loc_BA169E: FFree1Var var_D8 = ""
  loc_BA16A1: FLdRfVar var_A8
  loc_BA16A4: ILdRf var_8C
  loc_BA16A7: FLdPr Me
  loc_BA16AA: MemLdStr global_88
  loc_BA16AD: FLdRfVar var_88
  loc_BA16B0: NewIfNullPr IFileSystem3
  loc_BA16B3: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_BA16B8: FLdZeroAd var_A8
  loc_BA16BB: ImpAdStStr MemVar_D93030
  loc_BA16BF: ILdRf var_8C
  loc_BA16C2: FLdPr Me
  loc_BA16C5: MemLdStr global_88
  loc_BA16C8: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_BA16CD: ILdRf var_90
  loc_BA16D0: FnLenStr
  loc_BA16D1: LitI4 3
  loc_BA16D6: SubI4
  loc_BA16D7: CVarI4
  loc_BA16DB: LitI4 2
  loc_BA16E0: FLdRfVar var_90
  loc_BA16E3: CVarRef
  loc_BA16E8: FLdRfVar var_F8
  loc_BA16EB: ImpAdCallFPR4  = Mid(, , )
  loc_BA16F0: FLdRfVar var_F8
  loc_BA16F3: CStrVarTmp
  loc_BA16F4: FStStr var_90
  loc_BA16F7: FFreeVar var_D8 = ""
  loc_BA16FE: LitStr vbNullString
  loc_BA1701: ImpAdLdI4 MemVar_D93030
  loc_BA1704: ILdRf var_90
  loc_BA1707: ImpAdCallFPR4 Proc_57_55_AE2160(, , )
  loc_BA170C: LitStr "Guardando PDF: '"
  loc_BA170F: ImpAdLdI4 MemVar_D93030
  loc_BA1712: ConcatStr
  loc_BA1713: FStStrNoPop var_A8
  loc_BA1716: LitStr "'"
  loc_BA1719: ConcatStr
  loc_BA171A: CVarStr var_D8
  loc_BA171D: PopAdLdVar
  loc_BA171E: FLdPr Me
  loc_BA1721: VCallAd Control_ID_statusBar
  loc_BA1724: FStAdFunc var_FC
  loc_BA1727: FLdPr var_FC
  loc_BA172A: LateIdSt
  loc_BA172F: FFree1Str var_A8
  loc_BA1732: FFree1Ad var_FC
  loc_BA1735: FFree1Var var_D8 = ""
  loc_BA1738: FLdRfVar var_9E
  loc_BA173B: ImpAdLdI4 MemVar_D93030
  loc_BA173E: FLdRfVar var_88
  loc_BA1741: NewIfNullPr IFileSystem3
  loc_BA1744: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_BA1749: FLdI2 var_9E
  loc_BA174C: NotI4
  loc_BA174D: BranchF loc_BA1758
  loc_BA1750: ImpAdCallFPR4 DoEvents()
  loc_BA1755: Branch loc_BA1738
  loc_BA1758: LitStr vbNullString
  loc_BA175B: FStStrCopy var_90
  loc_BA175E: ImpAdCallFPR4 DoEvents()
  loc_BA1763: FLdPr Me
  loc_BA1766: MemLdRfVar from_stack_1.global_124
  loc_BA1769: NextI4 var_104, loc_BA1436
  loc_BA176E: LitStr "Proceso terminado."
  loc_BA1771: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA1776: FLdRfVar var_9E
  loc_BA1779: ILdRf var_9C
  loc_BA177C: FLdRfVar var_88
  loc_BA177F: NewIfNullPr IFileSystem3
  loc_BA1782: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_BA1787: FLdI2 var_9E
  loc_BA178A: BranchF loc_BA17A0
  loc_BA178D: LitStr "*.*"
  loc_BA1790: ILdRf var_9C
  loc_BA1793: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_BA1798: ILdRf var_9C
  loc_BA179B: ImpAdCallFPR4 RmDir 
  loc_BA17A0: LitVar_FALSE
  loc_BA17A4: PopAdLdVar
  loc_BA17A5: FLdPr Me
  loc_BA17A8: VCallAd Control_ID_pbar
  loc_BA17AB: FStAdFunc var_FC
  loc_BA17AE: FLdPr var_FC
  loc_BA17B1: LateIdSt
  loc_BA17B6: FFree1Ad var_FC
  loc_BA17B9: LitI2_Byte 0
  loc_BA17BB: FLdPr Me
  loc_BA17BE: VCallAd Control_ID_ProgresoLbl
  loc_BA17C1: FStAdFunc var_FC
  loc_BA17C4: FLdPr var_FC
  loc_BA17C7: Me.Visible = from_stack_1b
  loc_BA17CC: FFree1Ad var_FC
  loc_BA17CF: ImpAdLdI4 MemVar_D93030
  loc_BA17D2: ImpAdCallFPR4 Proc_272_64_A06738()
  loc_BA17D7: ILdRf Me
  loc_BA17DA: CastAd
  loc_BA17DD: FStAdFunc var_FC
  loc_BA17E0: FLdRfVar var_FC
  loc_BA17E3: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_BA17E8: FFree1Ad var_FC
  loc_BA17EB: Call HabilitarCriterio()
  loc_BA17F0: LitVarStr var_C8, vbNullString
  loc_BA17F5: PopAdLdVar
  loc_BA17F6: FLdPr Me
  loc_BA17F9: VCallAd Control_ID_statusBar
  loc_BA17FC: FStAdFunc var_FC
  loc_BA17FF: FLdPr var_FC
  loc_BA1802: LateIdSt
  loc_BA1807: FFree1Ad var_FC
  loc_BA180A: ExitProcHresult
  loc_BA180B: FLdRfVar var_A4
  loc_BA180E: ImpAdCallI2 Err 'rtcErrObj
  loc_BA1813: FStAdFunc var_FC
  loc_BA1816: FLdPr var_FC
  loc_BA1819:  = Err.Number
  loc_BA181E: ILdRf var_A4
  loc_BA1821: FStR4 var_114
  loc_BA1824: FFree1Ad var_FC
  loc_BA1827: ILdRf var_114
  loc_BA182A: LitI4 &H4C
  loc_BA182F: EqI4
  loc_BA1830: BranchF loc_BA1836
  loc_BA1833: Branch loc_BA1892
  loc_BA1836: LitStr "Error "
  loc_BA1839: FLdRfVar var_A4
  loc_BA183C: ImpAdCallI2 Err 'rtcErrObj
  loc_BA1841: FStAdFunc var_FC
  loc_BA1844: FLdPr var_FC
  loc_BA1847:  = Err.Number
  loc_BA184C: ILdRf var_A4
  loc_BA184F: CStrI4
  loc_BA1851: FStStrNoPop var_A8
  loc_BA1854: ConcatStr
  loc_BA1855: FStStrNoPop var_AC
  loc_BA1858: LitStr ": "
  loc_BA185B: ConcatStr
  loc_BA185C: FStStrNoPop var_B4
  loc_BA185F: FLdRfVar var_B0
  loc_BA1862: ImpAdCallI2 Err 'rtcErrObj
  loc_BA1867: FStAdFunc var_110
  loc_BA186A: FLdPr var_110
  loc_BA186D:  = Err.Description
  loc_BA1872: ILdRf var_B0
  loc_BA1875: ConcatStr
  loc_BA1876: FStStrNoPop var_B8
  loc_BA1879: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA187E: FFreeStr var_A8 = "": var_AC = "": var_B4 = "": var_B0 = ""
  loc_BA188B: FFreeAd var_FC = ""
  loc_BA1892: ExitProcHresult
End Sub

Private Sub NumeBoleDesdeMsk_UnknownEvent_0 '9BE868
  'Data Table: 4E16A8
  loc_9BE854: FLdPr Me
  loc_9BE857: VCallAd Control_ID_NumeBoleDesdeMsk
  loc_9BE85A: CVarAd
  loc_9BE85E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE863: FFree1Var var_94 = ""
  loc_9BE866: ExitProcHresult
End Sub

Private Function NumeBoleDesdeMsk_UnknownEvent_8(arg_C) 'A6F88C
  'Data Table: 4E16A8
  loc_A6F824: FLdPr Me
  loc_A6F827: VCallAd Control_ID_NumeBoleDesdeMsk
  loc_A6F82A: FStAdFunc var_88
  loc_A6F82D: FLdPr var_88
  loc_A6F830: LateIdLdVar var_98 DispID_0 0
  loc_A6F837: PopAd
  loc_A6F839: LitI2_Byte 0
  loc_A6F83B: LitI2_Byte 0
  loc_A6F83D: FLdRfVar var_98
  loc_A6F840: CStrVarTmp
  loc_A6F841: FStStrNoPop var_9C
  loc_A6F844: LitStr "boleto"
  loc_A6F847: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A6F84C: FStStrNoPop var_A0
  loc_A6F84F: FLdPr Me
  loc_A6F852: MemStStrCopy
  loc_A6F856: FFreeStr var_9C = ""
  loc_A6F85D: FFree1Ad var_88
  loc_A6F860: FFree1Var var_98 = ""
  loc_A6F863: FLdPr Me
  loc_A6F866: VCallAd Control_ID_NumeBoleDesdeMsk
  loc_A6F869: FStAdFuncNoPop
  loc_A6F86C: CastAd
  loc_A6F86F: FStAdFunc var_A4
  loc_A6F872: FLdRfVar var_A4
  loc_A6F875: FLdPr Me
  loc_A6F878: MemLdStr global_156
  loc_A6F87B: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6F880: IStI2 arg_C
  loc_A6F883: FFreeAd var_88 = ""
  loc_A6F88A: ExitProcHresult
End Function

Private Sub Form_Load() '9DF4CC
  'Data Table: 4E16A8
  loc_9DF4B0: ILdRf Me
  loc_9DF4B3: CastAd
  loc_9DF4B6: FStAdFunc var_88
  loc_9DF4B9: FLdRfVar var_88
  loc_9DF4BC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DF4C1: FFree1Ad var_88
  loc_9DF4C4: Call cmdNueva_Click()
  loc_9DF4C9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9C9470
  'Data Table: 4E16A8
  loc_9C9458: FLdPr Me
  loc_9C945B: VCallAd Control_ID_wbbReporte
  loc_9C945E: FStAdFunc var_88
  loc_9C9461: FLdRfVar var_88
  loc_9C9464: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9C9469: FFree1Ad var_88
  loc_9C946C: ExitProcHresult
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) '9F5E68
  'Data Table: 4E16A8
  loc_9F5E40: FLdRfVar var_8A
  loc_9F5E43: FLdPr Me
  loc_9F5E46: VCallAd Control_ID_cmdPredeterminada
  loc_9F5E49: FStAdFunc var_88
  loc_9F5E4C: FLdPr var_88
  loc_9F5E4F:  = Me.Enabled
  loc_9F5E54: FLdI2 var_8A
  loc_9F5E57: NotI4
  loc_9F5E58: FFree1Ad var_88
  loc_9F5E5B: BranchF loc_9F5E66
  loc_9F5E5E: ImpAdCallFPR4 DoEvents()
  loc_9F5E63: Branch loc_9F5E40
  loc_9F5E66: ExitProcHresult
End Sub

Private Sub PeriBoleMsk_UnknownEvent_0 '9BE820
  'Data Table: 4E16A8
  loc_9BE80C: FLdPr Me
  loc_9BE80F: VCallAd Control_ID_PeriBoleMsk
  loc_9BE812: CVarAd
  loc_9BE816: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE81B: FFree1Var var_94 = ""
  loc_9BE81E: ExitProcHresult
End Sub

Private Sub PeriBoleMsk_UnknownEvent_8 'A6F9E4
  'Data Table: 4E16A8
  loc_A6F97C: FLdPr Me
  loc_A6F97F: VCallAd Control_ID_PeriBoleMsk
  loc_A6F982: FStAdFunc var_88
  loc_A6F985: FLdPr var_88
  loc_A6F988: LateIdLdVar var_98 DispID_22 0
  loc_A6F98F: PopAd
  loc_A6F991: LitI2_Byte 0
  loc_A6F993: FLdRfVar var_98
  loc_A6F996: CStrVarTmp
  loc_A6F997: FStStrNoPop var_9C
  loc_A6F99A: LitStr "Periodo"
  loc_A6F99D: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6F9A2: FStStrNoPop var_A0
  loc_A6F9A5: FLdPr Me
  loc_A6F9A8: MemStStrCopy
  loc_A6F9AC: FFreeStr var_9C = ""
  loc_A6F9B3: FFree1Ad var_88
  loc_A6F9B6: FFree1Var var_98 = ""
  loc_A6F9B9: FLdPr Me
  loc_A6F9BC: VCallAd Control_ID_PeriBoleMsk
  loc_A6F9BF: FStAdFuncNoPop
  loc_A6F9C2: CastAd
  loc_A6F9C5: FStAdFunc var_A4
  loc_A6F9C8: FLdRfVar var_A4
  loc_A6F9CB: FLdPr Me
  loc_A6F9CE: MemLdStr global_156
  loc_A6F9D1: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6F9D6: IStI2 Cancel
  loc_A6F9D9: FFreeAd var_88 = ""
  loc_A6F9E0: ExitProcHresult
  loc_A6F9E1: PopTmpLdAd2 arg_334
End Sub

Private Sub NumeBoleHastaMsk_UnknownEvent_0 '9BE8B0
  'Data Table: 4E16A8
  loc_9BE89C: FLdPr Me
  loc_9BE89F: VCallAd Control_ID_NumeBoleHastaMsk
  loc_9BE8A2: CVarAd
  loc_9BE8A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE8AB: FFree1Var var_94 = ""
  loc_9BE8AE: ExitProcHresult
End Sub

Private Sub NumeBoleHastaMsk_UnknownEvent_8 'A71D80
  'Data Table: 4E16A8
  loc_A71D18: FLdPr Me
  loc_A71D1B: VCallAd Control_ID_NumeBoleHastaMsk
  loc_A71D1E: FStAdFunc var_88
  loc_A71D21: FLdPr var_88
  loc_A71D24: LateIdLdVar var_98 DispID_0 0
  loc_A71D2B: PopAd
  loc_A71D2D: LitI2_Byte 0
  loc_A71D2F: LitI2_Byte 0
  loc_A71D31: FLdRfVar var_98
  loc_A71D34: CStrVarTmp
  loc_A71D35: FStStrNoPop var_9C
  loc_A71D38: LitStr "boleto"
  loc_A71D3B: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A71D40: FStStrNoPop var_A0
  loc_A71D43: FLdPr Me
  loc_A71D46: MemStStrCopy
  loc_A71D4A: FFreeStr var_9C = ""
  loc_A71D51: FFree1Ad var_88
  loc_A71D54: FFree1Var var_98 = ""
  loc_A71D57: FLdPr Me
  loc_A71D5A: VCallAd Control_ID_NumeBoleHastaMsk
  loc_A71D5D: FStAdFuncNoPop
  loc_A71D60: CastAd
  loc_A71D63: FStAdFunc var_A4
  loc_A71D66: FLdRfVar var_A4
  loc_A71D69: FLdPr Me
  loc_A71D6C: MemLdStr global_156
  loc_A71D6F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A71D74: IStI2 Cancel
  loc_A71D77: FFreeAd var_88 = ""
  loc_A71D7E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A8CF04
  'Data Table: 4E16A8
  loc_A8CE60: LitI2_Byte 0
  loc_A8CE62: FLdPr Me
  loc_A8CE65: MemStI2 bGenerado
  loc_A8CE68: ImpAdLdI2 MemVar_D93034
  loc_A8CE6B: CStrUI1
  loc_A8CE6D: CVarStr var_94
  loc_A8CE70: PopAdLdVar
  loc_A8CE71: FLdPr Me
  loc_A8CE74: VCallAd Control_ID_PeriBoleMsk
  loc_A8CE77: FStAdFunc var_A8
  loc_A8CE7A: FLdPr var_A8
  loc_A8CE7D: LateIdSt
  loc_A8CE82: FFree1Ad var_A8
  loc_A8CE85: FFree1Var var_94 = ""
  loc_A8CE88: LitVarStr var_A4, vbNullString
  loc_A8CE8D: PopAdLdVar
  loc_A8CE8E: FLdPr Me
  loc_A8CE91: VCallAd Control_ID_NumeBoleDesdeMsk
  loc_A8CE94: FStAdFunc var_A8
  loc_A8CE97: FLdPr var_A8
  loc_A8CE9A: LateIdSt
  loc_A8CE9F: FFree1Ad var_A8
  loc_A8CEA2: LitVarStr var_A4, vbNullString
  loc_A8CEA7: PopAdLdVar
  loc_A8CEA8: FLdPr Me
  loc_A8CEAB: VCallAd Control_ID_NumeBoleHastaMsk
  loc_A8CEAE: FStAdFunc var_A8
  loc_A8CEB1: FLdPr var_A8
  loc_A8CEB4: LateIdSt
  loc_A8CEB9: FFree1Ad var_A8
  loc_A8CEBC: LitStr "Emisión de Boleto por Rango"
  loc_A8CEBF: FLdPr Me
  loc_A8CEC2: Me.Caption = from_stack_1
  loc_A8CEC7: LitStr vbNullString
  loc_A8CECA: FLdPr Me
  loc_A8CECD: Me.Tag = from_stack_1
  loc_A8CED2: LitI2_Byte 0
  loc_A8CED4: ILdRf Me
  loc_A8CED7: CastAd
  loc_A8CEDA: FStAdFunc var_A8
  loc_A8CEDD: FLdRfVar var_A8
  loc_A8CEE0: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A8CEE5: FFree1Ad var_A8
  loc_A8CEE8: Call HabilitarCriterio()
  loc_A8CEED: ILdRf Me
  loc_A8CEF0: CastAd
  loc_A8CEF3: FStAdFunc var_A8
  loc_A8CEF6: FLdRfVar var_A8
  loc_A8CEF9: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A8CEFE: FFree1Ad var_A8
  loc_A8CF01: ExitProcHresult
End Sub

Public Function DetaDevaGet() '4E2A6C
  DetaDevaGet = DetaDeva
End Function

Public Sub DetaDevaPut(Value) '4E2A7B
  DetaDeva = Value
End Sub

Public Function ImprimiendoGet() '4E2A8A
  ImprimiendoGet = Imprimiendo
End Function

Public Sub ImprimiendoPut(Value) '4E2A99
  Imprimiendo = Value
End Sub

Public Function bGeneradoGet() '4E2AA8
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4E2AB7
  bGenerado = Value
End Sub

Public Function sImprimirApremioPendienteGet() '4E2AC6
  sImprimirApremioPendienteGet = sImprimirApremioPendiente
End Function

Public Sub sImprimirApremioPendientePut(Value) '4E2AD5
  sImprimirApremioPendiente = Value
End Sub

Public Function sImprimirApremioInhibidoGet() '4E2AE4
  sImprimirApremioInhibidoGet = sImprimirApremioInhibido
End Function

Public Sub sImprimirApremioInhibidoPut(Value) '4E2AF3
  sImprimirApremioInhibido = Value
End Sub

Public Sub HabilitarCriterio() 'A61100
  'Data Table: 4E16A8
  loc_A610AC: LitI4 0
  loc_A610B1: LitI4 2
  loc_A610B6: FLdRfVar var_88
  loc_A610B9: Redim
  loc_A610C3: FLdPr Me
  loc_A610C6: VCallAd Control_ID_PeriBoleMsk
  loc_A610C9: CVarAd
  loc_A610CD: ParmAry1St
  loc_A610D3: FLdPr Me
  loc_A610D6: VCallAd Control_ID_NumeBoleDesdeMsk
  loc_A610D9: CVarAd
  loc_A610DD: ParmAry1St
  loc_A610E3: FLdPr Me
  loc_A610E6: VCallAd Control_ID_NumeBoleHastaMsk
  loc_A610E9: CVarAd
  loc_A610ED: ParmAry1St
  loc_A610F3: FLdRfVar var_88
  loc_A610F6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A610FB: FLdRfVar var_88
  loc_A610FE: Erase
  loc_A610FF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'CC7674
  'Data Table: 4E16A8
  loc_CC5080: FLdPr Me
  loc_CC5083: MemLdI2 bGenerado
  loc_CC5086: BranchF loc_CC508A
  loc_CC5089: ExitProcHresult
  loc_CC508A: LitVarStr var_A4, "Generando reporte..."
  loc_CC508F: PopAdLdVar
  loc_CC5090: FLdPr Me
  loc_CC5093: VCallAd Control_ID_statusBar
  loc_CC5096: FStAdFunc var_B8
  loc_CC5099: FLdPr var_B8
  loc_CC509C: LateIdSt
  loc_CC50A1: FFree1Ad var_B8
  loc_CC50A4: LitI4 &HB
  loc_CC50A9: CI2I4
  loc_CC50AA: FLdPr Me
  loc_CC50AD: Me.MousePointer = from_stack_1
  loc_CC50B2: FLdRfVar var_BA
  loc_CC50B5: LitI2_Byte &HFF
  loc_CC50B7: Call Proc_355_27_B0E804()
  loc_CC50BC: FLdI2 var_BA
  loc_CC50BF: NotI4
  loc_CC50C0: BranchF loc_CC50C6
  loc_CC50C3: Branch loc_CC764B
  loc_CC50C6: LitI4 1
  loc_CC50CB: FLdPr Me
  loc_CC50CE: MemLdRfVar from_stack_1.global_124
  loc_CC50D1: FLdPr Me
  loc_CC50D4: MemLdStr global_116
  loc_CC50D7: LitI2_Byte 1
  loc_CC50D9: FnUBound
  loc_CC50DB: ForI4 var_C4
  loc_CC50E1: FLdPr Me
  loc_CC50E4: MemLdStr global_124
  loc_CC50E7: FLdPr Me
  loc_CC50EA: MemLdStr global_116
  loc_CC50ED: Ary1LdPr
  loc_CC50EE: MemLdStr global_124
  loc_CC50F1: FStStrCopy var_C8
  loc_CC50F4: ILdRf var_C8
  loc_CC50F7: LitI2_Byte 1
  loc_CC50F9: CStrUI1
  loc_CC50FB: FStStrNoPop var_CC
  loc_CC50FE: EqStr
  loc_CC5100: FFree1Str var_CC
  loc_CC5103: BranchF loc_CC5109
  loc_CC5106: Branch loc_CC5274
  loc_CC5109: ILdRf var_C8
  loc_CC510C: LitI2_Byte 2
  loc_CC510E: CStrUI1
  loc_CC5110: FStStrNoPop var_CC
  loc_CC5113: EqStr
  loc_CC5115: FFree1Str var_CC
  loc_CC5118: BranchF loc_CC5151
  loc_CC511B: LitStr " IFNULL(domipostal.calle,'') as DecaPost, IFNULL(domipostal.NumeCalle,'') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost, "
  loc_CC511E: LitStr " IFNULL(concat(domipostal.Monoblock,IF(domipostal.Dpto<>'',' - ',''),domipostal.Dpto,IF(domipostal.Planta<>'',' - ',''),domipostal.Planta,IF(domipostal.NroLocal<>'',' - ',''), domipostal.NroLocal),'')  as UbicPost, IFNULL(domipostal.Localidad,'') as DeloPost, IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_CC5121: ConcatStr
  loc_CC5122: FStStrNoPop var_CC
  loc_CC5125: LitStr " IFNULL(domireal.calle,'') as DetaCall, IFNULL(cast(domireal.NumeCalle as UNSIGNED),'') as NucaCome,  IFNULL(concat(domireal.Monoblock,IF(domireal.Dpto <>'',' - ',''),domireal.Dpto,IF(domireal.Planta<>'',' - ',''),domireal.Planta,IF(domireal.NroLocal<>'',' - ',''), domireal.NroLocal),'') UbicCome,"
  loc_CC5128: ConcatStr
  loc_CC5129: FStStrNoPop var_D0
  loc_CC512C: LitStr " IFNULL(domireal.CodiBarrio,'') as CodiBarr, IFNULL(domireal.barrio,'') as DetaBarr, IFNULL(domireal.Manzana,'') as MansBole, IFNULL(domireal.Casa,'') as CasaBole, IFNULL(concat(domireal.Localidad,' - C.P: ', domireal.CodPostal),'') as DetaLoca,"
  loc_CC512F: ConcatStr
  loc_CC5130: FStStr var_88
  loc_CC5133: FFreeStr var_CC = ""
  loc_CC513A: LitStr " LEFT JOIN comercio ON comercio.CodiCome = boleto.CuenCtct"
  loc_CC513D: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 2 AND domipostal.CodiCome = comercio.CodiCome AND domipostal.Tipo = 'Postal'"
  loc_CC5140: ConcatStr
  loc_CC5141: FStStrNoPop var_CC
  loc_CC5144: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 2 AND domireal.CodiCome = comercio.CodiCome AND domireal.Tipo = 'Comercial'"
  loc_CC5147: ConcatStr
  loc_CC5148: FStStr var_8C
  loc_CC514B: FFree1Str var_CC
  loc_CC514E: Branch loc_CC5274
  loc_CC5151: ILdRf var_C8
  loc_CC5154: LitI2_Byte 3
  loc_CC5156: CStrUI1
  loc_CC5158: FStStrNoPop var_CC
  loc_CC515B: EqStr
  loc_CC515D: FFree1Str var_CC
  loc_CC5160: BranchF loc_CC5172
  loc_CC5163: LitStr " p1.DecrPers as DecaPost, p1.NurePers as NumePost, p1.DebrPers as DebaPost, p1.MarePers as ManzPost, p1.CarePers as CasaPost, p1.UbrePers as UbicPost, p1.DelrPers as DeloPost, p1.CoprPers as CopoPost, "
  loc_CC5166: FStStrCopy var_88
  loc_CC5169: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = boleto.CuenCtct"
  loc_CC516C: FStStrCopy var_8C
  loc_CC516F: Branch loc_CC5274
  loc_CC5172: ILdRf var_C8
  loc_CC5175: LitI2_Byte 4
  loc_CC5177: CStrUI1
  loc_CC5179: FStStrNoPop var_CC
  loc_CC517C: EqStr
  loc_CC517E: FFree1Str var_CC
  loc_CC5181: BranchF loc_CC51AB
  loc_CC5184: LitStr " DetaTise, Nom1Difu NumeDifu, Nom2Difu FilaDifu, Nom3Difu NoseDifu, Nom4Difu SeccDifu, Nom5Difu, DetaDedi, FeveDifu, DetaCeme,"
  loc_CC5187: LitStr " IFNULL(domipostal.calle,'') as DecaPost, IFNULL(domipostal.NumeCalle,'') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost,"
  loc_CC518A: ConcatStr
  loc_CC518B: FStStrNoPop var_CC
  loc_CC518E: LitStr " IFNULL(concat(domipostal.Monoblock,IF(domipostal.Dpto<>'',' - ',''),domipostal.Dpto,IF(domipostal.Planta<>'',' - ',''),domipostal.Planta,IF(domipostal.NroLocal<>'',' - ',''), domipostal.NroLocal),'') as UbicPost, IFNULL(domipostal.Localidad,'') as DeloPost, IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_CC5191: ConcatStr
  loc_CC5192: FStStr var_88
  loc_CC5195: FFree1Str var_CC
  loc_CC5198: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = boleto.CuenCtct LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu AND detadifu.BajaFeho IS NULL AND detadifu.FetrDedi IS NULL LEFT JOIN cementerio ON cementerio.CodiCeme = difunto.CodiCeme"
  loc_CC519B: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 4 AND domipostal.CodiCome = difunto.CodiDifu AND domipostal.Tipo = 'Postal'"
  loc_CC519E: ConcatStr
  loc_CC519F: FStStr var_8C
  loc_CC51A2: LitStr " ORDER BY NumeDedi LIMIT 1"
  loc_CC51A5: FStStrCopy var_90
  loc_CC51A8: Branch loc_CC5274
  loc_CC51AB: ILdRf var_C8
  loc_CC51AE: LitI2_Byte 5
  loc_CC51B0: CStrUI1
  loc_CC51B2: FStStrNoPop var_CC
  loc_CC51B5: EqStr
  loc_CC51B7: FFree1Str var_CC
  loc_CC51BA: BranchF loc_CC51CC
  loc_CC51BD: LitStr " p1.DecrPers as DecaPost, p1.NurePers as NumePost, p1.DebrPers as DebaPost, p1.MarePers as ManzPost, p1.CarePers as CasaPost, p1.UbrePers as UbicPost, p1.DelrPers as DeloPost, p1.CoprPers as CopoPost, "
  loc_CC51C0: FStStrCopy var_88
  loc_CC51C3: LitStr " LEFT JOIN transito ON transito.CodiTran = boleto.CuenCtct"
  loc_CC51C6: FStStrCopy var_8C
  loc_CC51C9: Branch loc_CC5274
  loc_CC51CC: ILdRf var_C8
  loc_CC51CF: LitI2_Byte 6
  loc_CC51D1: CStrUI1
  loc_CC51D3: FStStrNoPop var_CC
  loc_CC51D6: EqStr
  loc_CC51D8: FFree1Str var_CC
  loc_CC51DB: BranchF loc_CC5214
  loc_CC51DE: LitStr " IFNULL(domipostal.calle,'') as DecaPost, IFNULL(domipostal.NumeCalle,'') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost, "
  loc_CC51E1: LitStr " IFNULL(concat(domipostal.Monoblock,IF(domipostal.Dpto<>'',' - ',''),domipostal.Dpto,IF(domipostal.Planta<>'',' - ',''),domipostal.Planta,IF(domipostal.NroLocal<>'',' - ',''), domipostal.NroLocal),'')  as UbicPost, IFNULL(domipostal.Localidad,'') as DeloPost, IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_CC51E4: ConcatStr
  loc_CC51E5: FStStrNoPop var_CC
  loc_CC51E8: LitStr " IFNULL(domireal.calle,'') as DetaCall, IFNULL(cast(domireal.NumeCalle as UNSIGNED),'') as NucaCome,  IFNULL(concat(domireal.Monoblock,IF(domireal.Dpto <>'',' - ',''),domireal.Dpto,IF(domireal.Planta<>'',' - ',''),domireal.Planta,IF(domireal.NroLocal<>'',' - ',''), domireal.NroLocal),'') UbicCome,"
  loc_CC51EB: ConcatStr
  loc_CC51EC: FStStrNoPop var_D0
  loc_CC51EF: LitStr " IFNULL(domireal.CodiBarrio,'') as CodiBarr, IFNULL(domireal.barrio,'') as DetaBarr, IFNULL(domireal.Manzana,'') as MansBole, IFNULL(domireal.Casa,'') as CasaBole, IFNULL(concat(domireal.Localidad,' - C.P: ', domireal.CodPostal),'') as DetaLoca,"
  loc_CC51F2: ConcatStr
  loc_CC51F3: FStStr var_88
  loc_CC51F6: FFreeStr var_CC = ""
  loc_CC51FD: LitStr " LEFT JOIN publicidad ON publicidad.CodiCome = boleto.CuenCtct"
  loc_CC5200: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 6 AND domipostal.CodiCome = publicidad.CodiCome AND domipostal.Tipo = 'Postal'"
  loc_CC5203: ConcatStr
  loc_CC5204: FStStrNoPop var_CC
  loc_CC5207: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 6 AND domireal.CodiCome = publicidad.CodiCome AND domireal.Tipo = 'Comercial'"
  loc_CC520A: ConcatStr
  loc_CC520B: FStStr var_8C
  loc_CC520E: FFree1Str var_CC
  loc_CC5211: Branch loc_CC5274
  loc_CC5214: ILdRf var_C8
  loc_CC5217: LitI2_Byte 7
  loc_CC5219: CStrUI1
  loc_CC521B: FStStrNoPop var_CC
  loc_CC521E: EqStr
  loc_CC5220: FFree1Str var_CC
  loc_CC5223: BranchF loc_CC525C
  loc_CC5226: LitStr " IFNULL(domipostal.calle,'') as DecaPost, IFNULL(domipostal.NumeCalle,'') as NumePost, IFNULL(domipostal.barrio,'') as DebaPost, IFNULL(domipostal.Manzana,'') as ManzPost, IFNULL(domipostal.Casa,'') as CasaPost, "
  loc_CC5229: LitStr " IFNULL(concat(domipostal.Monoblock,IF(domipostal.Dpto<>'',' - ',''),domipostal.Dpto,IF(domipostal.Planta<>'',' - ',''),domipostal.Planta,IF(domipostal.NroLocal<>'',' - ',''), domipostal.NroLocal),'')  as UbicPost, IFNULL(domipostal.Localidad,'') as DeloPost, IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_CC522C: ConcatStr
  loc_CC522D: FStStrNoPop var_CC
  loc_CC5230: LitStr " IFNULL(domireal.calle,'') as DetaCall, IFNULL(cast(domireal.NumeCalle as UNSIGNED),'') as NucaCome,  IFNULL(concat(domireal.Monoblock,IF(domireal.Dpto <>'',' - ',''),domireal.Dpto,IF(domireal.Planta<>'',' - ',''),domireal.Planta,IF(domireal.NroLocal<>'',' - ',''), domireal.NroLocal),'') UbicCome,"
  loc_CC5233: ConcatStr
  loc_CC5234: FStStrNoPop var_D0
  loc_CC5237: LitStr " IFNULL(domireal.CodiBarrio,'') as CodiBarr, IFNULL(domireal.barrio,'') as DetaBarr, IFNULL(domireal.Manzana,'') as MansBole, IFNULL(domireal.Casa,'') as CasaBole, IFNULL(concat(domireal.Localidad,' - C.P: ', domireal.CodPostal),'') as DetaLoca,"
  loc_CC523A: ConcatStr
  loc_CC523B: FStStr var_88
  loc_CC523E: FFreeStr var_CC = ""
  loc_CC5245: LitStr " LEFT JOIN antena ON antena.CodiCome = boleto.CuenCtct"
  loc_CC5248: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 7 AND domipostal.CodiCome = antena.CodiCome AND domipostal.Tipo = 'Postal'"
  loc_CC524B: ConcatStr
  loc_CC524C: FStStrNoPop var_CC
  loc_CC524F: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 7 AND domireal.CodiCome = antena.CodiCome AND domireal.Tipo = 'Comercial'"
  loc_CC5252: ConcatStr
  loc_CC5253: FStStr var_8C
  loc_CC5256: FFree1Str var_CC
  loc_CC5259: Branch loc_CC5274
  loc_CC525C: ILdRf var_C8
  loc_CC525F: LitI2_Byte 8
  loc_CC5261: CStrUI1
  loc_CC5263: FStStrNoPop var_CC
  loc_CC5266: EqStr
  loc_CC5268: FFree1Str var_CC
  loc_CC526B: BranchF loc_CC5274
  loc_CC526E: LitStr " p1.DecrPers as DecaPost, p1.NurePers as NumePost, p1.DebrPers as DebaPost, p1.MarePers as ManzPost, p1.CarePers as CasaPost, p1.UbrePers as UbicPost, p1.DelrPers as DeloPost, p1.CoprPers as CopoPost, ExpeBole, boleto.FealBole, "
  loc_CC5271: FStStrCopy var_88
  loc_CC5274: FLdPr Me
  loc_CC5277: MemLdRfVar from_stack_1.global_92
  loc_CC527A: NewIfNullAd
  loc_CC527D: FStAd var_D4 
  loc_CC5281: FLdPr Me
  loc_CC5284: MemLdStr global_124
  loc_CC5287: FLdPr Me
  loc_CC528A: MemLdStr global_116
  loc_CC528D: Ary1LdPr
  loc_CC528E: MemLdStr global_124
  loc_CC5291: CR8Str
  loc_CC5293: LitI2_Byte 1
  loc_CC5295: CR8I2
  loc_CC5296: EqR4
  loc_CC5297: BranchF loc_CC5313
  loc_CC529A: LitStr "SELECT ObseBole, boleto.CuenCtct, "
  loc_CC529D: LitStr " boleto.CodiUsua , boleto.CodiFapa, boleto.CuotDefa, boleto.CodiOfic, boleto.FeveBole, boleto.TotaBole, ApreBole"
  loc_CC52A0: ConcatStr
  loc_CC52A1: FStStrNoPop var_CC
  loc_CC52A4: LitStr " FROM boleto"
  loc_CC52A7: ConcatStr
  loc_CC52A8: FStStrNoPop var_D0
  loc_CC52AB: LitStr " WHERE boleto.PeriBole = '"
  loc_CC52AE: ConcatStr
  loc_CC52AF: FStStrNoPop var_E8
  loc_CC52B2: FLdPr Me
  loc_CC52B5: VCallAd Control_ID_PeriBoleMsk
  loc_CC52B8: FStAdFunc var_B8
  loc_CC52BB: FLdPr var_B8
  loc_CC52BE: LateIdLdVar var_E4 DispID_22 0
  loc_CC52C5: CStrVarTmp
  loc_CC52C6: FStStrNoPop var_EC
  loc_CC52C9: ConcatStr
  loc_CC52CA: FStStrNoPop var_F0
  loc_CC52CD: LitStr "' AND boleto.NumeBole = '"
  loc_CC52D0: ConcatStr
  loc_CC52D1: FStStrNoPop var_F4
  loc_CC52D4: FLdPr Me
  loc_CC52D7: MemLdStr global_124
  loc_CC52DA: FLdPr Me
  loc_CC52DD: MemLdStr global_116
  loc_CC52E0: Ary1LdPr
  loc_CC52E1: MemLdStr global_108
  loc_CC52E4: ConcatStr
  loc_CC52E5: FStStrNoPop var_F8
  loc_CC52E8: LitStr "'"
  loc_CC52EB: ConcatStr
  loc_CC52EC: FStStrNoPop var_FC
  loc_CC52EF: FLdPr var_D4
  loc_CC52F2: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CC52F7: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_CC530A: FFree1Ad var_B8
  loc_CC530D: FFree1Var var_E4 = ""
  loc_CC5310: Branch loc_CC53BF
  loc_CC5313: LitStr "SELECT"
  loc_CC5316: LitStr " boleto.CucuPers, ifnull(p1.DetaPers,'') as DetaPers, ObseBole, boleto.CuenCtct, ifnull(p2.DetaPers,'') as Vinculo,"
  loc_CC5319: ConcatStr
  loc_CC531A: FStStrNoPop var_CC
  loc_CC531D: ILdRf var_88
  loc_CC5320: ConcatStr
  loc_CC5321: FStStrNoPop var_D0
  loc_CC5324: LitStr " boleto.CodiUsua , boleto.CodiFapa, boleto.CuotDefa, boleto.CodiOfic, boleto.FeveBole, boleto.TotaBole, ApreBole"
  loc_CC5327: ConcatStr
  loc_CC5328: FStStrNoPop var_E8
  loc_CC532B: LitStr " FROM boleto"
  loc_CC532E: ConcatStr
  loc_CC532F: FStStrNoPop var_EC
  loc_CC5332: LitStr " LEFT JOIN infogov.persona as p1 ON p1.CucuPers = boleto.CucuPers"
  loc_CC5335: ConcatStr
  loc_CC5336: FStStrNoPop var_F0
  loc_CC5339: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = boleto.CodiOfic AND relacion.CuenCtct = boleto.CuenCtct AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_CC533C: ConcatStr
  loc_CC533D: FStStrNoPop var_F4
  loc_CC5340: LitStr " LEFT JOIN infogov.persona as p2 ON p2.CucuPers = relacion.CucuPers"
  loc_CC5343: ConcatStr
  loc_CC5344: FStStrNoPop var_F8
  loc_CC5347: ILdRf var_8C
  loc_CC534A: ConcatStr
  loc_CC534B: FStStrNoPop var_FC
  loc_CC534E: LitStr " WHERE boleto.PeriBole = '"
  loc_CC5351: ConcatStr
  loc_CC5352: FStStrNoPop var_100
  loc_CC5355: FLdPr Me
  loc_CC5358: VCallAd Control_ID_PeriBoleMsk
  loc_CC535B: FStAdFunc var_B8
  loc_CC535E: FLdPr var_B8
  loc_CC5361: LateIdLdVar var_E4 DispID_22 0
  loc_CC5368: CStrVarTmp
  loc_CC5369: FStStrNoPop var_104
  loc_CC536C: ConcatStr
  loc_CC536D: FStStrNoPop var_108
  loc_CC5370: LitStr "' AND boleto.NumeBole = '"
  loc_CC5373: ConcatStr
  loc_CC5374: FStStrNoPop var_10C
  loc_CC5377: FLdPr Me
  loc_CC537A: MemLdStr global_124
  loc_CC537D: FLdPr Me
  loc_CC5380: MemLdStr global_116
  loc_CC5383: Ary1LdPr
  loc_CC5384: MemLdStr global_108
  loc_CC5387: ConcatStr
  loc_CC5388: FStStrNoPop var_110
  loc_CC538B: LitStr "'"
  loc_CC538E: ConcatStr
  loc_CC538F: FStStrNoPop var_114
  loc_CC5392: FLdPr var_D4
  loc_CC5395: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CC539A: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_CC53B9: FFree1Ad var_B8
  loc_CC53BC: FFree1Var var_E4 = ""
  loc_CC53BF: FLdRfVar var_118
  loc_CC53C2: FLdPr var_D4
  loc_CC53C5: from_stack_1 = clsboleto.RecordCount
  loc_CC53CA: ILdRf var_118
  loc_CC53CD: LitI4 0
  loc_CC53D2: EqI4
  loc_CC53D3: BranchF loc_CC53E1
  loc_CC53D6: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CC53D9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC53DE: Branch loc_CC764B
  loc_CC53E1: LitI2_Byte 0
  loc_CC53E3: FLdPr Me
  loc_CC53E6: MemStI2 global_128
  loc_CC53E9: FLdPr var_D4
  loc_CC53EC: Call clsboleto.MoveFirst()
  loc_CC53F1: FLdPr Me
  loc_CC53F4: MemLdStr global_124
  loc_CC53F7: FLdPr Me
  loc_CC53FA: MemLdStr global_116
  loc_CC53FD: Ary1LdPr
  loc_CC53FE: MemLdStr global_124
  loc_CC5401: CR8Str
  loc_CC5403: LitI2_Byte 1
  loc_CC5405: CR8I2
  loc_CC5406: EqR4
  loc_CC5407: BranchF loc_CC6059
  loc_CC540A: FLdRfVar var_CC
  loc_CC540D: FLdPr var_D4
  loc_CC5410: from_stack_1 = clsboleto.CuenCtct
  loc_CC5415: FLdPr Me
  loc_CC5418: MemLdRfVar from_stack_1.global_164
  loc_CC541B: NewIfNullRf
  loc_CC541F: ILdRf var_CC
  loc_CC5422: ImpAdCallI2  = Proc_270_13_C86920()
  loc_CC5427: FFree1Str var_CC
  loc_CC542A: BranchF loc_CC5B0D
  loc_CC542D: FLdRfVar var_CC
  loc_CC5430: FLdPr Me
  loc_CC5433: MemLdRfVar from_stack_1.global_164
  loc_CC5436: NewIfNullPr tblPersonaGIS
  loc_CC5439: from_stack_1v = tblPersonaGIS.CucuPersGet()
  loc_CC543E: LitI2_Byte 0
  loc_CC5440: LitVar_Missing var_12C
  loc_CC5443: LitI2_Byte 0
  loc_CC5445: FLdZeroAd var_CC
  loc_CC5448: CVarStr var_E4
  loc_CC544B: PopAdLdVar
  loc_CC544C: FLdPr Me
  loc_CC544F: MemLdStr global_124
  loc_CC5452: FLdPr Me
  loc_CC5455: MemLdStr global_116
  loc_CC5458: AryLock
  loc_CC545B: Ary1LdPr
  loc_CC545C: MemLdRfVar from_stack_1.global_0
  loc_CC545F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5464: AryUnlock
  loc_CC5467: FFreeVar var_E4 = ""
  loc_CC546E: FLdRfVar var_CC
  loc_CC5471: FLdPr Me
  loc_CC5474: MemLdRfVar from_stack_1.global_164
  loc_CC5477: NewIfNullPr tblPersonaGIS
  loc_CC547A: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_CC547F: LitI2_Byte 0
  loc_CC5481: LitVar_Missing var_12C
  loc_CC5484: LitI2_Byte 0
  loc_CC5486: FLdZeroAd var_CC
  loc_CC5489: CVarStr var_E4
  loc_CC548C: PopAdLdVar
  loc_CC548D: FLdPr Me
  loc_CC5490: MemLdStr global_124
  loc_CC5493: FLdPr Me
  loc_CC5496: MemLdStr global_116
  loc_CC5499: AryLock
  loc_CC549C: Ary1LdPr
  loc_CC549D: MemLdRfVar from_stack_1.global_4
  loc_CC54A0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC54A5: AryUnlock
  loc_CC54A8: FFreeVar var_E4 = ""
  loc_CC54AF: FLdRfVar var_CC
  loc_CC54B2: FLdPr var_D4
  loc_CC54B5: from_stack_1 = clsboleto.CuenCtct
  loc_CC54BA: FLdRfVar var_D0
  loc_CC54BD: FLdPr var_D4
  loc_CC54C0: from_stack_1 = clsboleto.CuenCtct
  loc_CC54C5: LitVarStr var_B4, "&nbsp;"
  loc_CC54CA: FStVarCopyObj var_12C
  loc_CC54CD: FLdRfVar var_12C
  loc_CC54D0: FLdZeroAd var_D0
  loc_CC54D3: CVarStr var_E4
  loc_CC54D6: ILdRf var_CC
  loc_CC54D9: LitStr vbNullString
  loc_CC54DC: NeStr
  loc_CC54DE: CVarBoolI2 var_A4
  loc_CC54E2: FLdRfVar var_13C
  loc_CC54E5: ImpAdCallFPR4  = IIf(, , )
  loc_CC54EA: LitI2_Byte 0
  loc_CC54EC: LitVar_Missing var_15C
  loc_CC54EF: LitI2_Byte 0
  loc_CC54F1: FLdVar var_13C
  loc_CC54F5: FLdPr Me
  loc_CC54F8: MemLdStr global_124
  loc_CC54FB: FLdPr Me
  loc_CC54FE: MemLdStr global_116
  loc_CC5501: AryLock
  loc_CC5504: Ary1LdPr
  loc_CC5505: MemLdRfVar from_stack_1.global_40
  loc_CC5508: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC550D: AryUnlock
  loc_CC5510: FFree1Str var_CC
  loc_CC5513: FFreeVar var_A4 = "": var_E4 = "": var_12C = "": var_13C = ""
  loc_CC5520: FLdRfVar var_CC
  loc_CC5523: FLdPr var_D4
  loc_CC5526: from_stack_1 = clsboleto.CuenCtct
  loc_CC552B: ILdRf var_CC
  loc_CC552E: LitI2_Byte 1
  loc_CC5530: ImpAdCallI2 Proc_270_138_AC2750(, )
  loc_CC5535: FStStr var_D0
  loc_CC5538: LitI2_Byte 0
  loc_CC553A: LitVar_Missing var_12C
  loc_CC553D: LitI2_Byte 0
  loc_CC553F: FLdZeroAd var_D0
  loc_CC5542: CVarStr var_E4
  loc_CC5545: PopAdLdVar
  loc_CC5546: FLdPr Me
  loc_CC5549: MemLdStr global_124
  loc_CC554C: FLdPr Me
  loc_CC554F: MemLdStr global_116
  loc_CC5552: AryLock
  loc_CC5555: Ary1LdPr
  loc_CC5556: MemLdRfVar from_stack_1.global_44
  loc_CC5559: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC555E: AryUnlock
  loc_CC5561: FFreeStr var_CC = ""
  loc_CC5568: FFreeVar var_E4 = ""
  loc_CC556F: FLdRfVar var_CC
  loc_CC5572: FLdPr var_D4
  loc_CC5575: from_stack_1 = clsboleto.CodiUsua
  loc_CC557A: LitI2_Byte 0
  loc_CC557C: LitVar_Missing var_12C
  loc_CC557F: LitI2_Byte 0
  loc_CC5581: FLdZeroAd var_CC
  loc_CC5584: CVarStr var_E4
  loc_CC5587: PopAdLdVar
  loc_CC5588: FLdPr Me
  loc_CC558B: MemLdStr global_124
  loc_CC558E: FLdPr Me
  loc_CC5591: MemLdStr global_116
  loc_CC5594: AryLock
  loc_CC5597: Ary1LdPr
  loc_CC5598: MemLdRfVar from_stack_1.global_112
  loc_CC559B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC55A0: AryUnlock
  loc_CC55A3: FFreeVar var_E4 = ""
  loc_CC55AA: FLdRfVar var_118
  loc_CC55AD: FLdPr var_D4
  loc_CC55B0: from_stack_1 = clsboleto.CodiFapa
  loc_CC55B5: LitI2_Byte 0
  loc_CC55B7: LitVar_Missing var_E4
  loc_CC55BA: LitI2_Byte 0
  loc_CC55BC: ILdRf var_118
  loc_CC55BF: CVarI4
  loc_CC55C3: PopAdLdVar
  loc_CC55C4: FLdPr Me
  loc_CC55C7: MemLdStr global_124
  loc_CC55CA: FLdPr Me
  loc_CC55CD: MemLdStr global_116
  loc_CC55D0: AryLock
  loc_CC55D3: Ary1LdPr
  loc_CC55D4: MemLdRfVar from_stack_1.global_116
  loc_CC55D7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC55DC: AryUnlock
  loc_CC55DF: FFree1Var var_E4 = ""
  loc_CC55E2: FLdRfVar var_BA
  loc_CC55E5: FLdPr var_D4
  loc_CC55E8: from_stack_1 = clsboleto.CuotDefa
  loc_CC55ED: LitI2_Byte 0
  loc_CC55EF: LitVar_Missing var_E4
  loc_CC55F2: LitI2_Byte 0
  loc_CC55F4: FLdI2 var_BA
  loc_CC55F7: CVarI2 var_A4
  loc_CC55FA: PopAdLdVar
  loc_CC55FB: FLdPr Me
  loc_CC55FE: MemLdStr global_124
  loc_CC5601: FLdPr Me
  loc_CC5604: MemLdStr global_116
  loc_CC5607: AryLock
  loc_CC560A: Ary1LdPr
  loc_CC560B: MemLdRfVar from_stack_1.global_120
  loc_CC560E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5613: AryUnlock
  loc_CC5616: FFree1Var var_E4 = ""
  loc_CC5619: FLdRfVar var_BA
  loc_CC561C: FLdPr var_D4
  loc_CC561F: from_stack_1 = clsboleto.CodiOfic
  loc_CC5624: LitI2_Byte 0
  loc_CC5626: LitVar_Missing var_E4
  loc_CC5629: LitI2_Byte 0
  loc_CC562B: FLdI2 var_BA
  loc_CC562E: CVarI2 var_A4
  loc_CC5631: PopAdLdVar
  loc_CC5632: FLdPr Me
  loc_CC5635: MemLdStr global_124
  loc_CC5638: FLdPr Me
  loc_CC563B: MemLdStr global_116
  loc_CC563E: AryLock
  loc_CC5641: Ary1LdPr
  loc_CC5642: MemLdRfVar from_stack_1.global_124
  loc_CC5645: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC564A: AryUnlock
  loc_CC564D: FFree1Var var_E4 = ""
  loc_CC5650: FLdRfVar var_E4
  loc_CC5653: FLdPr var_D4
  loc_CC5656: from_stack_1 = clsboleto.FeveBole
  loc_CC565B: LitI2_Byte 0
  loc_CC565D: LitVar_Missing var_12C
  loc_CC5660: LitI2_Byte 0
  loc_CC5662: FLdVar var_E4
  loc_CC5666: FLdPr Me
  loc_CC5669: MemLdStr global_124
  loc_CC566C: FLdPr Me
  loc_CC566F: MemLdStr global_116
  loc_CC5672: AryLock
  loc_CC5675: Ary1LdPr
  loc_CC5676: MemLdRfVar from_stack_1.global_128
  loc_CC5679: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC567E: AryUnlock
  loc_CC5681: FFreeVar var_E4 = ""
  loc_CC5688: FLdRfVar var_164
  loc_CC568B: FLdPr var_D4
  loc_CC568E: from_stack_1 = clsboleto.TotaBole
  loc_CC5693: LitI2_Byte 0
  loc_CC5695: LitVar_Missing var_E4
  loc_CC5698: LitI2_Byte &HFF
  loc_CC569A: FLdFPR8 var_164
  loc_CC569D: CVarR8
  loc_CC56A1: PopAdLdVar
  loc_CC56A2: FLdPr Me
  loc_CC56A5: MemLdStr global_124
  loc_CC56A8: FLdPr Me
  loc_CC56AB: MemLdStr global_116
  loc_CC56AE: AryLock
  loc_CC56B1: Ary1LdPr
  loc_CC56B2: MemLdRfVar from_stack_1.global_152
  loc_CC56B5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC56BA: AryUnlock
  loc_CC56BD: FFree1Var var_E4 = ""
  loc_CC56C0: FLdRfVar var_CC
  loc_CC56C3: FLdPr var_D4
  loc_CC56C6: from_stack_1 = clsboleto.ObseBole
  loc_CC56CB: LitI2_Byte 0
  loc_CC56CD: LitVar_Missing var_12C
  loc_CC56D0: LitI2_Byte 0
  loc_CC56D2: FLdZeroAd var_CC
  loc_CC56D5: CVarStr var_E4
  loc_CC56D8: PopAdLdVar
  loc_CC56D9: FLdPr Me
  loc_CC56DC: MemLdStr global_124
  loc_CC56DF: FLdPr Me
  loc_CC56E2: MemLdStr global_116
  loc_CC56E5: AryLock
  loc_CC56E8: Ary1LdPr
  loc_CC56E9: MemLdRfVar from_stack_1.global_156
  loc_CC56EC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC56F1: AryUnlock
  loc_CC56F4: FFreeVar var_E4 = ""
  loc_CC56FB: FLdRfVar var_164
  loc_CC56FE: FLdPr var_D4
  loc_CC5701: from_stack_1 = clsboleto.ApreBole
  loc_CC5706: FLdFPR8 var_164
  loc_CC5709: LitI2_Byte 0
  loc_CC570B: CR8I2
  loc_CC570C: NeR8
  loc_CC570D: BranchF loc_CC5748
  loc_CC5710: FLdRfVar var_164
  loc_CC5713: FLdPr var_D4
  loc_CC5716: from_stack_1 = clsboleto.ApreBole
  loc_CC571B: LitI2_Byte 0
  loc_CC571D: LitVar_Missing var_E4
  loc_CC5720: LitI2_Byte &HFF
  loc_CC5722: FLdFPR8 var_164
  loc_CC5725: CVarR8
  loc_CC5729: PopAdLdVar
  loc_CC572A: FLdPr Me
  loc_CC572D: MemLdStr global_124
  loc_CC5730: FLdPr Me
  loc_CC5733: MemLdStr global_116
  loc_CC5736: AryLock
  loc_CC5739: Ary1LdPr
  loc_CC573A: MemLdRfVar from_stack_1.global_144
  loc_CC573D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5742: AryUnlock
  loc_CC5745: FFree1Var var_E4 = ""
  loc_CC5748: FLdRfVar var_CC
  loc_CC574B: Call Proc_355_32_AACDAC()
  loc_CC5750: LitI2_Byte 0
  loc_CC5752: LitVar_Missing var_12C
  loc_CC5755: LitI2_Byte 0
  loc_CC5757: FLdZeroAd var_CC
  loc_CC575A: CVarStr var_E4
  loc_CC575D: PopAdLdVar
  loc_CC575E: FLdPr Me
  loc_CC5761: MemLdStr global_124
  loc_CC5764: FLdPr Me
  loc_CC5767: MemLdStr global_116
  loc_CC576A: AryLock
  loc_CC576D: Ary1LdPr
  loc_CC576E: MemLdRfVar from_stack_1.global_148
  loc_CC5771: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5776: AryUnlock
  loc_CC5779: FFreeVar var_E4 = ""
  loc_CC5780: LitI2_Byte 0
  loc_CC5782: LitVar_Missing var_E4
  loc_CC5785: LitI2_Byte 0
  loc_CC5787: LitVarStr var_A4, vbNullString
  loc_CC578C: PopAdLdVar
  loc_CC578D: FLdPr Me
  loc_CC5790: MemLdStr global_124
  loc_CC5793: FLdPr Me
  loc_CC5796: MemLdStr global_116
  loc_CC5799: AryLock
  loc_CC579C: Ary1LdPr
  loc_CC579D: MemLdRfVar from_stack_1.global_48
  loc_CC57A0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC57A5: AryUnlock
  loc_CC57A8: FFree1Var var_E4 = ""
  loc_CC57AB: FLdRfVar var_CC
  loc_CC57AE: FLdPr Me
  loc_CC57B1: MemLdRfVar from_stack_1.global_164
  loc_CC57B4: NewIfNullPr tblPersonaGIS
  loc_CC57B7: from_stack_1v = tblPersonaGIS.DependenciaGet()
  loc_CC57BC: FLdRfVar var_D0
  loc_CC57BF: FLdPr Me
  loc_CC57C2: MemLdRfVar from_stack_1.global_164
  loc_CC57C5: NewIfNullPr tblPersonaGIS
  loc_CC57C8: from_stack_1v = tblPersonaGIS.DistritoGet()
  loc_CC57CD: FLdRfVar var_F0
  loc_CC57D0: FLdPr Me
  loc_CC57D3: MemLdRfVar from_stack_1.global_164
  loc_CC57D6: NewIfNullPr tblPersonaGIS
  loc_CC57D9: from_stack_1v = tblPersonaGIS.SeccionGet()
  loc_CC57DE: FLdRfVar var_FC
  loc_CC57E1: FLdPr Me
  loc_CC57E4: MemLdRfVar from_stack_1.global_164
  loc_CC57E7: NewIfNullPr tblPersonaGIS
  loc_CC57EA: from_stack_1v = tblPersonaGIS.ManzanaGet()
  loc_CC57EF: FLdRfVar var_108
  loc_CC57F2: FLdPr Me
  loc_CC57F5: MemLdRfVar from_stack_1.global_164
  loc_CC57F8: NewIfNullPr tblPersonaGIS
  loc_CC57FB: from_stack_1v = tblPersonaGIS.ParcelaGet()
  loc_CC5800: FLdRfVar var_114
  loc_CC5803: FLdPr Me
  loc_CC5806: MemLdRfVar from_stack_1.global_164
  loc_CC5809: NewIfNullPr tblPersonaGIS
  loc_CC580C: from_stack_1v = tblPersonaGIS.SubparcelaGet()
  loc_CC5811: FLdRfVar var_170
  loc_CC5814: FLdPr Me
  loc_CC5817: MemLdRfVar from_stack_1.global_164
  loc_CC581A: NewIfNullPr tblPersonaGIS
  loc_CC581D: from_stack_1v = tblPersonaGIS.DigiVeriGet()
  loc_CC5822: LitI2_Byte 0
  loc_CC5824: LitVar_Missing var_12C
  loc_CC5827: LitI2_Byte 0
  loc_CC5829: ILdRf var_CC
  loc_CC582C: LitStr "-"
  loc_CC582F: ConcatStr
  loc_CC5830: FStStrNoPop var_E8
  loc_CC5833: ILdRf var_D0
  loc_CC5836: ConcatStr
  loc_CC5837: FStStrNoPop var_EC
  loc_CC583A: LitStr "-"
  loc_CC583D: ConcatStr
  loc_CC583E: FStStrNoPop var_F4
  loc_CC5841: ILdRf var_F0
  loc_CC5844: ConcatStr
  loc_CC5845: FStStrNoPop var_F8
  loc_CC5848: LitStr "-"
  loc_CC584B: ConcatStr
  loc_CC584C: FStStrNoPop var_100
  loc_CC584F: ILdRf var_FC
  loc_CC5852: ConcatStr
  loc_CC5853: FStStrNoPop var_104
  loc_CC5856: LitStr "-"
  loc_CC5859: ConcatStr
  loc_CC585A: FStStrNoPop var_10C
  loc_CC585D: ILdRf var_108
  loc_CC5860: ConcatStr
  loc_CC5861: FStStrNoPop var_110
  loc_CC5864: LitStr "-"
  loc_CC5867: ConcatStr
  loc_CC5868: FStStrNoPop var_168
  loc_CC586B: ILdRf var_114
  loc_CC586E: ConcatStr
  loc_CC586F: FStStrNoPop var_16C
  loc_CC5872: LitStr "-"
  loc_CC5875: ConcatStr
  loc_CC5876: FStStrNoPop var_174
  loc_CC5879: ILdRf var_170
  loc_CC587C: ConcatStr
  loc_CC587D: CVarStr var_E4
  loc_CC5880: PopAdLdVar
  loc_CC5881: FLdPr Me
  loc_CC5884: MemLdStr global_124
  loc_CC5887: FLdPr Me
  loc_CC588A: MemLdStr global_116
  loc_CC588D: AryLock
  loc_CC5890: Ary1LdPr
  loc_CC5891: MemLdRfVar from_stack_1.DetaDeva
  loc_CC5894: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5899: AryUnlock
  loc_CC589C: FFreeStr var_CC = "": var_E8 = "": var_D0 = "": var_EC = "": var_F4 = "": var_F0 = "": var_F8 = "": var_100 = "": var_FC = "": var_104 = "": var_10C = "": var_108 = "": var_110 = "": var_168 = "": var_114 = "": var_16C = "": var_174 = ""
  loc_CC58C3: FFreeVar var_E4 = ""
  loc_CC58CA: LitI2_Byte 0
  loc_CC58CC: LitVar_Missing var_E4
  loc_CC58CF: LitI2_Byte 0
  loc_CC58D1: LitVarStr var_A4, vbNullString
  loc_CC58D6: PopAdLdVar
  loc_CC58D7: FLdPr Me
  loc_CC58DA: MemLdStr global_124
  loc_CC58DD: FLdPr Me
  loc_CC58E0: MemLdStr global_116
  loc_CC58E3: AryLock
  loc_CC58E6: Ary1LdPr
  loc_CC58E7: MemLdRfVar from_stack_1.Imprimiendo
  loc_CC58EA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC58EF: AryUnlock
  loc_CC58F2: FFree1Var var_E4 = ""
  loc_CC58F5: FLdRfVar var_CC
  loc_CC58F8: FLdPr Me
  loc_CC58FB: MemLdRfVar from_stack_1.global_164
  loc_CC58FE: NewIfNullPr tblPersonaGIS
  loc_CC5901: from_stack_1v = tblPersonaGIS.DetaCallGet()
  loc_CC5906: LitI2_Byte 0
  loc_CC5908: LitVar_Missing var_12C
  loc_CC590B: LitI2_Byte 0
  loc_CC590D: FLdZeroAd var_CC
  loc_CC5910: CVarStr var_E4
  loc_CC5913: PopAdLdVar
  loc_CC5914: FLdPr Me
  loc_CC5917: MemLdStr global_124
  loc_CC591A: FLdPr Me
  loc_CC591D: MemLdStr global_116
  loc_CC5920: AryLock
  loc_CC5923: Ary1LdPr
  loc_CC5924: MemLdRfVar from_stack_1.global_160
  loc_CC5927: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC592C: AryUnlock
  loc_CC592F: FFreeVar var_E4 = ""
  loc_CC5936: FLdRfVar var_CC
  loc_CC5939: FLdPr Me
  loc_CC593C: MemLdRfVar from_stack_1.global_164
  loc_CC593F: NewIfNullPr tblPersonaGIS
  loc_CC5942: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_CC5947: FLdRfVar var_D0
  loc_CC594A: FLdPr Me
  loc_CC594D: MemLdRfVar from_stack_1.global_164
  loc_CC5950: NewIfNullPr tblPersonaGIS
  loc_CC5953: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_CC5958: FLdZeroAd var_D0
  loc_CC595B: CVarStr var_12C
  loc_CC595E: LitVarStr var_B4, vbNullString
  loc_CC5963: FStVarCopyObj var_E4
  loc_CC5966: FLdRfVar var_E4
  loc_CC5969: ILdRf var_CC
  loc_CC596C: LitStr "0"
  loc_CC596F: EqStr
  loc_CC5971: CVarBoolI2 var_A4
  loc_CC5975: FLdRfVar var_13C
  loc_CC5978: ImpAdCallFPR4  = IIf(, , )
  loc_CC597D: LitI2_Byte 0
  loc_CC597F: LitVar_Missing var_15C
  loc_CC5982: LitI2_Byte 0
  loc_CC5984: FLdVar var_13C
  loc_CC5988: FLdPr Me
  loc_CC598B: MemLdStr global_124
  loc_CC598E: FLdPr Me
  loc_CC5991: MemLdStr global_116
  loc_CC5994: AryLock
  loc_CC5997: Ary1LdPr
  loc_CC5998: MemLdRfVar from_stack_1.global_164
  loc_CC599B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC59A0: AryUnlock
  loc_CC59A3: FFree1Str var_CC
  loc_CC59A6: FFreeVar var_A4 = "": var_E4 = "": var_12C = "": var_13C = ""
  loc_CC59B3: LitI2_Byte 0
  loc_CC59B5: LitVar_Missing var_E4
  loc_CC59B8: LitI2_Byte 0
  loc_CC59BA: LitVarStr var_A4, vbNullString
  loc_CC59BF: PopAdLdVar
  loc_CC59C0: FLdPr Me
  loc_CC59C3: MemLdStr global_124
  loc_CC59C6: FLdPr Me
  loc_CC59C9: MemLdStr global_116
  loc_CC59CC: AryLock
  loc_CC59CF: Ary1LdPr
  loc_CC59D0: MemLdRfVar from_stack_1.global_168
  loc_CC59D3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC59D8: AryUnlock
  loc_CC59DB: FFree1Var var_E4 = ""
  loc_CC59DE: LitI2_Byte 0
  loc_CC59E0: LitVar_Missing var_E4
  loc_CC59E3: LitI2_Byte 0
  loc_CC59E5: LitVarStr var_A4, vbNullString
  loc_CC59EA: PopAdLdVar
  loc_CC59EB: FLdPr Me
  loc_CC59EE: MemLdStr global_124
  loc_CC59F1: FLdPr Me
  loc_CC59F4: MemLdStr global_116
  loc_CC59F7: AryLock
  loc_CC59FA: Ary1LdPr
  loc_CC59FB: MemLdRfVar from_stack_1.global_172
  loc_CC59FE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5A03: AryUnlock
  loc_CC5A06: FFree1Var var_E4 = ""
  loc_CC5A09: FLdRfVar var_CC
  loc_CC5A0C: FLdPr Me
  loc_CC5A0F: MemLdRfVar from_stack_1.global_164
  loc_CC5A12: NewIfNullPr tblPersonaGIS
  loc_CC5A15: from_stack_1v = tblPersonaGIS.DetaBarrGet()
  loc_CC5A1A: LitI2_Byte 0
  loc_CC5A1C: LitVar_Missing var_12C
  loc_CC5A1F: LitI2_Byte 0
  loc_CC5A21: FLdZeroAd var_CC
  loc_CC5A24: CVarStr var_E4
  loc_CC5A27: PopAdLdVar
  loc_CC5A28: FLdPr Me
  loc_CC5A2B: MemLdStr global_124
  loc_CC5A2E: FLdPr Me
  loc_CC5A31: MemLdStr global_116
  loc_CC5A34: AryLock
  loc_CC5A37: Ary1LdPr
  loc_CC5A38: MemLdRfVar from_stack_1.global_176
  loc_CC5A3B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5A40: AryUnlock
  loc_CC5A43: FFreeVar var_E4 = ""
  loc_CC5A4A: FLdRfVar var_CC
  loc_CC5A4D: FLdPr Me
  loc_CC5A50: MemLdRfVar from_stack_1.global_164
  loc_CC5A53: NewIfNullPr tblPersonaGIS
  loc_CC5A56: from_stack_1v = tblPersonaGIS.ManzInmuGet()
  loc_CC5A5B: LitI2_Byte 0
  loc_CC5A5D: LitVar_Missing var_12C
  loc_CC5A60: LitI2_Byte 0
  loc_CC5A62: FLdZeroAd var_CC
  loc_CC5A65: CVarStr var_E4
  loc_CC5A68: PopAdLdVar
  loc_CC5A69: FLdPr Me
  loc_CC5A6C: MemLdStr global_124
  loc_CC5A6F: FLdPr Me
  loc_CC5A72: MemLdStr global_116
  loc_CC5A75: AryLock
  loc_CC5A78: Ary1LdPr
  loc_CC5A79: MemLdRfVar from_stack_1.global_180
  loc_CC5A7C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5A81: AryUnlock
  loc_CC5A84: FFreeVar var_E4 = ""
  loc_CC5A8B: FLdRfVar var_CC
  loc_CC5A8E: FLdPr Me
  loc_CC5A91: MemLdRfVar from_stack_1.global_164
  loc_CC5A94: NewIfNullPr tblPersonaGIS
  loc_CC5A97: from_stack_1v = tblPersonaGIS.CasaInmuGet()
  loc_CC5A9C: LitI2_Byte 0
  loc_CC5A9E: LitVar_Missing var_12C
  loc_CC5AA1: LitI2_Byte 0
  loc_CC5AA3: FLdZeroAd var_CC
  loc_CC5AA6: CVarStr var_E4
  loc_CC5AA9: PopAdLdVar
  loc_CC5AAA: FLdPr Me
  loc_CC5AAD: MemLdStr global_124
  loc_CC5AB0: FLdPr Me
  loc_CC5AB3: MemLdStr global_116
  loc_CC5AB6: AryLock
  loc_CC5AB9: Ary1LdPr
  loc_CC5ABA: MemLdRfVar from_stack_1.global_184
  loc_CC5ABD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5AC2: AryUnlock
  loc_CC5AC5: FFreeVar var_E4 = ""
  loc_CC5ACC: FLdRfVar var_CC
  loc_CC5ACF: FLdPr Me
  loc_CC5AD2: MemLdRfVar from_stack_1.global_164
  loc_CC5AD5: NewIfNullPr tblPersonaGIS
  loc_CC5AD8: from_stack_1v = tblPersonaGIS.DetaLocaGet()
  loc_CC5ADD: LitI2_Byte 0
  loc_CC5ADF: LitVar_Missing var_12C
  loc_CC5AE2: LitI2_Byte 0
  loc_CC5AE4: FLdZeroAd var_CC
  loc_CC5AE7: CVarStr var_E4
  loc_CC5AEA: PopAdLdVar
  loc_CC5AEB: FLdPr Me
  loc_CC5AEE: MemLdStr global_124
  loc_CC5AF1: FLdPr Me
  loc_CC5AF4: MemLdStr global_116
  loc_CC5AF7: AryLock
  loc_CC5AFA: Ary1LdPr
  loc_CC5AFB: MemLdRfVar from_stack_1.global_188
  loc_CC5AFE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5B03: AryUnlock
  loc_CC5B06: FFreeVar var_E4 = ""
  loc_CC5B0D: LitStr " SELECT domicilio.calle as DecaPost, domicilio.NumeCalle as NumePost, domicilio.barrio as DebaPost, domicilio.Manzana as ManzPost, domicilio.Casa as CasaPost, "
  loc_CC5B10: LitStr " concat(domicilio.Monoblock,"
  loc_CC5B13: ConcatStr
  loc_CC5B14: FStStrNoPop var_CC
  loc_CC5B17: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_CC5B1A: ConcatStr
  loc_CC5B1B: FStStrNoPop var_D0
  loc_CC5B1E: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_CC5B21: ConcatStr
  loc_CC5B22: FStStrNoPop var_E8
  loc_CC5B25: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_CC5B28: ConcatStr
  loc_CC5B29: FStStrNoPop var_EC
  loc_CC5B2C: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_CC5B2F: ConcatStr
  loc_CC5B30: FStStrNoPop var_F0
  loc_CC5B33: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta)  as UbicPost,"
  loc_CC5B36: ConcatStr
  loc_CC5B37: FStStrNoPop var_F4
  loc_CC5B3A: LitStr " domicilio.Localidad as DeloPost, domicilio.CodPostal as CopoPost"
  loc_CC5B3D: ConcatStr
  loc_CC5B3E: FStStrNoPop var_F8
  loc_CC5B41: LitStr " FROM domicilio"
  loc_CC5B44: ConcatStr
  loc_CC5B45: FStStrNoPop var_FC
  loc_CC5B48: LitStr " WHERE CodiOfic = 1"
  loc_CC5B4B: ConcatStr
  loc_CC5B4C: FStStrNoPop var_100
  loc_CC5B4F: LitStr " AND CodiCome = "
  loc_CC5B52: ConcatStr
  loc_CC5B53: FStStrNoPop var_108
  loc_CC5B56: FLdRfVar var_104
  loc_CC5B59: FLdPr var_D4
  loc_CC5B5C: from_stack_1 = clsboleto.CuenCtct
  loc_CC5B61: ILdRf var_104
  loc_CC5B64: ConcatStr
  loc_CC5B65: FStStrNoPop var_10C
  loc_CC5B68: LitStr " AND Tipo = 'RENTAS'"
  loc_CC5B6B: ConcatStr
  loc_CC5B6C: FStStrNoPop var_110
  loc_CC5B6F: FLdPr Me
  loc_CC5B72: MemLdRfVar from_stack_1.global_96
  loc_CC5B75: NewIfNullPr clsboleto
  loc_CC5B78: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CC5B7D: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_108 = "": var_104 = "": var_10C = ""
  loc_CC5B9A: FLdRfVar var_118
  loc_CC5B9D: FLdPr Me
  loc_CC5BA0: MemLdRfVar from_stack_1.global_96
  loc_CC5BA3: NewIfNullPr clsboleto
  loc_CC5BA6: from_stack_1 = clsboleto.RecordCount
  loc_CC5BAB: ILdRf var_118
  loc_CC5BAE: LitI4 1
  loc_CC5BB3: GeI4
  loc_CC5BB4: BranchF loc_CC5EFE
  loc_CC5BB7: FLdRfVar var_B8
  loc_CC5BBA: FLdPr Me
  loc_CC5BBD: MemLdRfVar from_stack_1.global_96
  loc_CC5BC0: NewIfNullPr clsboleto
  loc_CC5BC3: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC5BC8: FLdPr var_B8
  loc_CC5BCB: Me.MoveFirst
  loc_CC5BD0: FFree1Ad var_B8
  loc_CC5BD3: FLdRfVar var_17C
  loc_CC5BD6: LitVarStr var_A4, "DecaPost"
  loc_CC5BDB: PopAdLdVar
  loc_CC5BDC: FLdRfVar var_178
  loc_CC5BDF: FLdRfVar var_B8
  loc_CC5BE2: FLdPr Me
  loc_CC5BE5: MemLdRfVar from_stack_1.global_96
  loc_CC5BE8: NewIfNullPr clsboleto
  loc_CC5BEB: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC5BF0: FLdPr var_B8
  loc_CC5BF3:  = Me.Fields
  loc_CC5BF8: FLdPr var_178
  loc_CC5BFB: from_stack_2 = Me.Item(from_stack_1)
  loc_CC5C00: LitI2_Byte 0
  loc_CC5C02: LitVar_Missing var_12C
  loc_CC5C05: LitI2_Byte 0
  loc_CC5C07: FLdZeroAd var_17C
  loc_CC5C0A: CVarAd
  loc_CC5C0E: PopAdLdVar
  loc_CC5C0F: FLdPr Me
  loc_CC5C12: MemLdStr global_124
  loc_CC5C15: FLdPr Me
  loc_CC5C18: MemLdStr global_116
  loc_CC5C1B: AryLock
  loc_CC5C1E: Ary1LdPr
  loc_CC5C1F: MemLdRfVar from_stack_1.global_8
  loc_CC5C22: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5C27: AryUnlock
  loc_CC5C2A: FFreeAd var_B8 = ""
  loc_CC5C31: FFreeVar var_E4 = ""
  loc_CC5C38: FLdRfVar var_17C
  loc_CC5C3B: LitVarStr var_A4, "NumePost"
  loc_CC5C40: PopAdLdVar
  loc_CC5C41: FLdRfVar var_178
  loc_CC5C44: FLdRfVar var_B8
  loc_CC5C47: FLdPr Me
  loc_CC5C4A: MemLdRfVar from_stack_1.global_96
  loc_CC5C4D: NewIfNullPr clsboleto
  loc_CC5C50: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC5C55: FLdPr var_B8
  loc_CC5C58:  = Me.Fields
  loc_CC5C5D: FLdPr var_178
  loc_CC5C60: from_stack_2 = Me.Item(from_stack_1)
  loc_CC5C65: LitI2_Byte 0
  loc_CC5C67: LitVar_Missing var_12C
  loc_CC5C6A: LitI2_Byte 0
  loc_CC5C6C: FLdZeroAd var_17C
  loc_CC5C6F: CVarAd
  loc_CC5C73: PopAdLdVar
  loc_CC5C74: FLdPr Me
  loc_CC5C77: MemLdStr global_124
  loc_CC5C7A: FLdPr Me
  loc_CC5C7D: MemLdStr global_116
  loc_CC5C80: AryLock
  loc_CC5C83: Ary1LdPr
  loc_CC5C84: MemLdRfVar from_stack_1.global_12
  loc_CC5C87: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5C8C: AryUnlock
  loc_CC5C8F: FFreeAd var_B8 = ""
  loc_CC5C96: FFreeVar var_E4 = ""
  loc_CC5C9D: FLdRfVar var_17C
  loc_CC5CA0: LitVarStr var_A4, "DebaPost"
  loc_CC5CA5: PopAdLdVar
  loc_CC5CA6: FLdRfVar var_178
  loc_CC5CA9: FLdRfVar var_B8
  loc_CC5CAC: FLdPr Me
  loc_CC5CAF: MemLdRfVar from_stack_1.global_96
  loc_CC5CB2: NewIfNullPr clsboleto
  loc_CC5CB5: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC5CBA: FLdPr var_B8
  loc_CC5CBD:  = Me.Fields
  loc_CC5CC2: FLdPr var_178
  loc_CC5CC5: from_stack_2 = Me.Item(from_stack_1)
  loc_CC5CCA: LitI2_Byte 0
  loc_CC5CCC: LitVar_Missing var_12C
  loc_CC5CCF: LitI2_Byte 0
  loc_CC5CD1: FLdZeroAd var_17C
  loc_CC5CD4: CVarAd
  loc_CC5CD8: PopAdLdVar
  loc_CC5CD9: FLdPr Me
  loc_CC5CDC: MemLdStr global_124
  loc_CC5CDF: FLdPr Me
  loc_CC5CE2: MemLdStr global_116
  loc_CC5CE5: AryLock
  loc_CC5CE8: Ary1LdPr
  loc_CC5CE9: MemLdRfVar from_stack_1.global_16
  loc_CC5CEC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5CF1: AryUnlock
  loc_CC5CF4: FFreeAd var_B8 = ""
  loc_CC5CFB: FFreeVar var_E4 = ""
  loc_CC5D02: FLdRfVar var_17C
  loc_CC5D05: LitVarStr var_A4, "ManzPost"
  loc_CC5D0A: PopAdLdVar
  loc_CC5D0B: FLdRfVar var_178
  loc_CC5D0E: FLdRfVar var_B8
  loc_CC5D11: FLdPr Me
  loc_CC5D14: MemLdRfVar from_stack_1.global_96
  loc_CC5D17: NewIfNullPr clsboleto
  loc_CC5D1A: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC5D1F: FLdPr var_B8
  loc_CC5D22:  = Me.Fields
  loc_CC5D27: FLdPr var_178
  loc_CC5D2A: from_stack_2 = Me.Item(from_stack_1)
  loc_CC5D2F: LitI2_Byte 0
  loc_CC5D31: LitVar_Missing var_12C
  loc_CC5D34: LitI2_Byte 0
  loc_CC5D36: FLdZeroAd var_17C
  loc_CC5D39: CVarAd
  loc_CC5D3D: PopAdLdVar
  loc_CC5D3E: FLdPr Me
  loc_CC5D41: MemLdStr global_124
  loc_CC5D44: FLdPr Me
  loc_CC5D47: MemLdStr global_116
  loc_CC5D4A: AryLock
  loc_CC5D4D: Ary1LdPr
  loc_CC5D4E: MemLdRfVar from_stack_1.global_20
  loc_CC5D51: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5D56: AryUnlock
  loc_CC5D59: FFreeAd var_B8 = ""
  loc_CC5D60: FFreeVar var_E4 = ""
  loc_CC5D67: FLdRfVar var_17C
  loc_CC5D6A: LitVarStr var_A4, "CasaPost"
  loc_CC5D6F: PopAdLdVar
  loc_CC5D70: FLdRfVar var_178
  loc_CC5D73: FLdRfVar var_B8
  loc_CC5D76: FLdPr Me
  loc_CC5D79: MemLdRfVar from_stack_1.global_96
  loc_CC5D7C: NewIfNullPr clsboleto
  loc_CC5D7F: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC5D84: FLdPr var_B8
  loc_CC5D87:  = Me.Fields
  loc_CC5D8C: FLdPr var_178
  loc_CC5D8F: from_stack_2 = Me.Item(from_stack_1)
  loc_CC5D94: LitI2_Byte 0
  loc_CC5D96: LitVar_Missing var_12C
  loc_CC5D99: LitI2_Byte 0
  loc_CC5D9B: FLdZeroAd var_17C
  loc_CC5D9E: CVarAd
  loc_CC5DA2: PopAdLdVar
  loc_CC5DA3: FLdPr Me
  loc_CC5DA6: MemLdStr global_124
  loc_CC5DA9: FLdPr Me
  loc_CC5DAC: MemLdStr global_116
  loc_CC5DAF: AryLock
  loc_CC5DB2: Ary1LdPr
  loc_CC5DB3: MemLdRfVar from_stack_1.global_24
  loc_CC5DB6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5DBB: AryUnlock
  loc_CC5DBE: FFreeAd var_B8 = ""
  loc_CC5DC5: FFreeVar var_E4 = ""
  loc_CC5DCC: FLdRfVar var_17C
  loc_CC5DCF: LitVarStr var_A4, "UbicPost"
  loc_CC5DD4: PopAdLdVar
  loc_CC5DD5: FLdRfVar var_178
  loc_CC5DD8: FLdRfVar var_B8
  loc_CC5DDB: FLdPr Me
  loc_CC5DDE: MemLdRfVar from_stack_1.global_96
  loc_CC5DE1: NewIfNullPr clsboleto
  loc_CC5DE4: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC5DE9: FLdPr var_B8
  loc_CC5DEC:  = Me.Fields
  loc_CC5DF1: FLdPr var_178
  loc_CC5DF4: from_stack_2 = Me.Item(from_stack_1)
  loc_CC5DF9: LitI2_Byte 0
  loc_CC5DFB: LitVar_Missing var_12C
  loc_CC5DFE: LitI2_Byte 0
  loc_CC5E00: FLdZeroAd var_17C
  loc_CC5E03: CVarAd
  loc_CC5E07: PopAdLdVar
  loc_CC5E08: FLdPr Me
  loc_CC5E0B: MemLdStr global_124
  loc_CC5E0E: FLdPr Me
  loc_CC5E11: MemLdStr global_116
  loc_CC5E14: AryLock
  loc_CC5E17: Ary1LdPr
  loc_CC5E18: MemLdRfVar from_stack_1.global_28
  loc_CC5E1B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5E20: AryUnlock
  loc_CC5E23: FFreeAd var_B8 = ""
  loc_CC5E2A: FFreeVar var_E4 = ""
  loc_CC5E31: FLdRfVar var_17C
  loc_CC5E34: LitVarStr var_A4, "DeloPost"
  loc_CC5E39: PopAdLdVar
  loc_CC5E3A: FLdRfVar var_178
  loc_CC5E3D: FLdRfVar var_B8
  loc_CC5E40: FLdPr Me
  loc_CC5E43: MemLdRfVar from_stack_1.global_96
  loc_CC5E46: NewIfNullPr clsboleto
  loc_CC5E49: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC5E4E: FLdPr var_B8
  loc_CC5E51:  = Me.Fields
  loc_CC5E56: FLdPr var_178
  loc_CC5E59: from_stack_2 = Me.Item(from_stack_1)
  loc_CC5E5E: LitI2_Byte 0
  loc_CC5E60: LitVar_Missing var_12C
  loc_CC5E63: LitI2_Byte 0
  loc_CC5E65: FLdZeroAd var_17C
  loc_CC5E68: CVarAd
  loc_CC5E6C: PopAdLdVar
  loc_CC5E6D: FLdPr Me
  loc_CC5E70: MemLdStr global_124
  loc_CC5E73: FLdPr Me
  loc_CC5E76: MemLdStr global_116
  loc_CC5E79: AryLock
  loc_CC5E7C: Ary1LdPr
  loc_CC5E7D: MemLdRfVar from_stack_1.global_32
  loc_CC5E80: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5E85: AryUnlock
  loc_CC5E88: FFreeAd var_B8 = ""
  loc_CC5E8F: FFreeVar var_E4 = ""
  loc_CC5E96: FLdRfVar var_17C
  loc_CC5E99: LitVarStr var_A4, "CopoPost"
  loc_CC5E9E: PopAdLdVar
  loc_CC5E9F: FLdRfVar var_178
  loc_CC5EA2: FLdRfVar var_B8
  loc_CC5EA5: FLdPr Me
  loc_CC5EA8: MemLdRfVar from_stack_1.global_96
  loc_CC5EAB: NewIfNullPr clsboleto
  loc_CC5EAE: from_stack_1v = clsboleto.RsFrmGet()
  loc_CC5EB3: FLdPr var_B8
  loc_CC5EB6:  = Me.Fields
  loc_CC5EBB: FLdPr var_178
  loc_CC5EBE: from_stack_2 = Me.Item(from_stack_1)
  loc_CC5EC3: LitI2_Byte 0
  loc_CC5EC5: LitVar_Missing var_12C
  loc_CC5EC8: LitI2_Byte 0
  loc_CC5ECA: FLdZeroAd var_17C
  loc_CC5ECD: CVarAd
  loc_CC5ED1: PopAdLdVar
  loc_CC5ED2: FLdPr Me
  loc_CC5ED5: MemLdStr global_124
  loc_CC5ED8: FLdPr Me
  loc_CC5EDB: MemLdStr global_116
  loc_CC5EDE: AryLock
  loc_CC5EE1: Ary1LdPr
  loc_CC5EE2: MemLdRfVar from_stack_1.global_36
  loc_CC5EE5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5EEA: AryUnlock
  loc_CC5EED: FFreeAd var_B8 = ""
  loc_CC5EF4: FFreeVar var_E4 = ""
  loc_CC5EFB: Branch loc_CC6056
  loc_CC5EFE: LitI2_Byte 0
  loc_CC5F00: LitVar_Missing var_E4
  loc_CC5F03: LitI2_Byte 0
  loc_CC5F05: LitVarStr var_A4, vbNullString
  loc_CC5F0A: PopAdLdVar
  loc_CC5F0B: FLdPr Me
  loc_CC5F0E: MemLdStr global_124
  loc_CC5F11: FLdPr Me
  loc_CC5F14: MemLdStr global_116
  loc_CC5F17: AryLock
  loc_CC5F1A: Ary1LdPr
  loc_CC5F1B: MemLdRfVar from_stack_1.global_8
  loc_CC5F1E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5F23: AryUnlock
  loc_CC5F26: FFree1Var var_E4 = ""
  loc_CC5F29: LitI2_Byte 0
  loc_CC5F2B: LitVar_Missing var_E4
  loc_CC5F2E: LitI2_Byte 0
  loc_CC5F30: LitVarStr var_A4, vbNullString
  loc_CC5F35: PopAdLdVar
  loc_CC5F36: FLdPr Me
  loc_CC5F39: MemLdStr global_124
  loc_CC5F3C: FLdPr Me
  loc_CC5F3F: MemLdStr global_116
  loc_CC5F42: AryLock
  loc_CC5F45: Ary1LdPr
  loc_CC5F46: MemLdRfVar from_stack_1.global_12
  loc_CC5F49: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5F4E: AryUnlock
  loc_CC5F51: FFree1Var var_E4 = ""
  loc_CC5F54: LitI2_Byte 0
  loc_CC5F56: LitVar_Missing var_E4
  loc_CC5F59: LitI2_Byte 0
  loc_CC5F5B: LitVarStr var_A4, vbNullString
  loc_CC5F60: PopAdLdVar
  loc_CC5F61: FLdPr Me
  loc_CC5F64: MemLdStr global_124
  loc_CC5F67: FLdPr Me
  loc_CC5F6A: MemLdStr global_116
  loc_CC5F6D: AryLock
  loc_CC5F70: Ary1LdPr
  loc_CC5F71: MemLdRfVar from_stack_1.global_16
  loc_CC5F74: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5F79: AryUnlock
  loc_CC5F7C: FFree1Var var_E4 = ""
  loc_CC5F7F: LitI2_Byte 0
  loc_CC5F81: LitVar_Missing var_E4
  loc_CC5F84: LitI2_Byte 0
  loc_CC5F86: LitVarStr var_A4, vbNullString
  loc_CC5F8B: PopAdLdVar
  loc_CC5F8C: FLdPr Me
  loc_CC5F8F: MemLdStr global_124
  loc_CC5F92: FLdPr Me
  loc_CC5F95: MemLdStr global_116
  loc_CC5F98: AryLock
  loc_CC5F9B: Ary1LdPr
  loc_CC5F9C: MemLdRfVar from_stack_1.global_20
  loc_CC5F9F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5FA4: AryUnlock
  loc_CC5FA7: FFree1Var var_E4 = ""
  loc_CC5FAA: LitI2_Byte 0
  loc_CC5FAC: LitVar_Missing var_E4
  loc_CC5FAF: LitI2_Byte 0
  loc_CC5FB1: LitVarStr var_A4, vbNullString
  loc_CC5FB6: PopAdLdVar
  loc_CC5FB7: FLdPr Me
  loc_CC5FBA: MemLdStr global_124
  loc_CC5FBD: FLdPr Me
  loc_CC5FC0: MemLdStr global_116
  loc_CC5FC3: AryLock
  loc_CC5FC6: Ary1LdPr
  loc_CC5FC7: MemLdRfVar from_stack_1.global_24
  loc_CC5FCA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5FCF: AryUnlock
  loc_CC5FD2: FFree1Var var_E4 = ""
  loc_CC5FD5: LitI2_Byte 0
  loc_CC5FD7: LitVar_Missing var_E4
  loc_CC5FDA: LitI2_Byte 0
  loc_CC5FDC: LitVarStr var_A4, vbNullString
  loc_CC5FE1: PopAdLdVar
  loc_CC5FE2: FLdPr Me
  loc_CC5FE5: MemLdStr global_124
  loc_CC5FE8: FLdPr Me
  loc_CC5FEB: MemLdStr global_116
  loc_CC5FEE: AryLock
  loc_CC5FF1: Ary1LdPr
  loc_CC5FF2: MemLdRfVar from_stack_1.global_28
  loc_CC5FF5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC5FFA: AryUnlock
  loc_CC5FFD: FFree1Var var_E4 = ""
  loc_CC6000: LitI2_Byte 0
  loc_CC6002: LitVar_Missing var_E4
  loc_CC6005: LitI2_Byte 0
  loc_CC6007: LitVarStr var_A4, vbNullString
  loc_CC600C: PopAdLdVar
  loc_CC600D: FLdPr Me
  loc_CC6010: MemLdStr global_124
  loc_CC6013: FLdPr Me
  loc_CC6016: MemLdStr global_116
  loc_CC6019: AryLock
  loc_CC601C: Ary1LdPr
  loc_CC601D: MemLdRfVar from_stack_1.global_32
  loc_CC6020: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6025: AryUnlock
  loc_CC6028: FFree1Var var_E4 = ""
  loc_CC602B: LitI2_Byte 0
  loc_CC602D: LitVar_Missing var_E4
  loc_CC6030: LitI2_Byte 0
  loc_CC6032: LitVarStr var_A4, vbNullString
  loc_CC6037: PopAdLdVar
  loc_CC6038: FLdPr Me
  loc_CC603B: MemLdStr global_124
  loc_CC603E: FLdPr Me
  loc_CC6041: MemLdStr global_116
  loc_CC6044: AryLock
  loc_CC6047: Ary1LdPr
  loc_CC6048: MemLdRfVar from_stack_1.global_36
  loc_CC604B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6050: AryUnlock
  loc_CC6053: FFree1Var var_E4 = ""
  loc_CC6056: Branch loc_CC6D62
  loc_CC6059: FLdRfVar var_CC
  loc_CC605C: FLdPr var_D4
  loc_CC605F: from_stack_1 = clsboleto.CucuPers
  loc_CC6064: LitI2_Byte 0
  loc_CC6066: LitVar_Missing var_12C
  loc_CC6069: LitI2_Byte 0
  loc_CC606B: FLdZeroAd var_CC
  loc_CC606E: CVarStr var_E4
  loc_CC6071: PopAdLdVar
  loc_CC6072: FLdPr Me
  loc_CC6075: MemLdStr global_124
  loc_CC6078: FLdPr Me
  loc_CC607B: MemLdStr global_116
  loc_CC607E: AryLock
  loc_CC6081: Ary1LdPr
  loc_CC6082: MemLdRfVar from_stack_1.global_0
  loc_CC6085: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC608A: AryUnlock
  loc_CC608D: FFreeVar var_E4 = ""
  loc_CC6094: FLdRfVar var_CC
  loc_CC6097: FLdPr var_D4
  loc_CC609A: from_stack_1 = clsboleto.DetaPers
  loc_CC609F: LitI2_Byte 0
  loc_CC60A1: LitVar_Missing var_12C
  loc_CC60A4: LitI2_Byte 0
  loc_CC60A6: FLdZeroAd var_CC
  loc_CC60A9: CVarStr var_E4
  loc_CC60AC: PopAdLdVar
  loc_CC60AD: FLdPr Me
  loc_CC60B0: MemLdStr global_124
  loc_CC60B3: FLdPr Me
  loc_CC60B6: MemLdStr global_116
  loc_CC60B9: AryLock
  loc_CC60BC: Ary1LdPr
  loc_CC60BD: MemLdRfVar from_stack_1.global_4
  loc_CC60C0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC60C5: AryUnlock
  loc_CC60C8: FFreeVar var_E4 = ""
  loc_CC60CF: FLdRfVar var_CC
  loc_CC60D2: FLdPr var_D4
  loc_CC60D5: from_stack_1 = clsboleto.DecaPost
  loc_CC60DA: LitI2_Byte 0
  loc_CC60DC: LitVar_Missing var_12C
  loc_CC60DF: LitI2_Byte 0
  loc_CC60E1: FLdZeroAd var_CC
  loc_CC60E4: CVarStr var_E4
  loc_CC60E7: PopAdLdVar
  loc_CC60E8: FLdPr Me
  loc_CC60EB: MemLdStr global_124
  loc_CC60EE: FLdPr Me
  loc_CC60F1: MemLdStr global_116
  loc_CC60F4: AryLock
  loc_CC60F7: Ary1LdPr
  loc_CC60F8: MemLdRfVar from_stack_1.global_8
  loc_CC60FB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6100: AryUnlock
  loc_CC6103: FFreeVar var_E4 = ""
  loc_CC610A: FLdRfVar var_CC
  loc_CC610D: FLdPr var_D4
  loc_CC6110: from_stack_1 = clsboleto.NumePost
  loc_CC6115: LitI2_Byte 0
  loc_CC6117: LitVar_Missing var_12C
  loc_CC611A: LitI2_Byte 0
  loc_CC611C: FLdZeroAd var_CC
  loc_CC611F: CVarStr var_E4
  loc_CC6122: PopAdLdVar
  loc_CC6123: FLdPr Me
  loc_CC6126: MemLdStr global_124
  loc_CC6129: FLdPr Me
  loc_CC612C: MemLdStr global_116
  loc_CC612F: AryLock
  loc_CC6132: Ary1LdPr
  loc_CC6133: MemLdRfVar from_stack_1.global_12
  loc_CC6136: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC613B: AryUnlock
  loc_CC613E: FFreeVar var_E4 = ""
  loc_CC6145: FLdRfVar var_CC
  loc_CC6148: FLdPr var_D4
  loc_CC614B: from_stack_1 = clsboleto.DebaPost
  loc_CC6150: LitI2_Byte 0
  loc_CC6152: LitVar_Missing var_12C
  loc_CC6155: LitI2_Byte 0
  loc_CC6157: FLdZeroAd var_CC
  loc_CC615A: CVarStr var_E4
  loc_CC615D: PopAdLdVar
  loc_CC615E: FLdPr Me
  loc_CC6161: MemLdStr global_124
  loc_CC6164: FLdPr Me
  loc_CC6167: MemLdStr global_116
  loc_CC616A: AryLock
  loc_CC616D: Ary1LdPr
  loc_CC616E: MemLdRfVar from_stack_1.global_16
  loc_CC6171: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6176: AryUnlock
  loc_CC6179: FFreeVar var_E4 = ""
  loc_CC6180: FLdRfVar var_CC
  loc_CC6183: FLdPr var_D4
  loc_CC6186: from_stack_1 = clsboleto.ManzPost
  loc_CC618B: LitI2_Byte 0
  loc_CC618D: LitVar_Missing var_12C
  loc_CC6190: LitI2_Byte 0
  loc_CC6192: FLdZeroAd var_CC
  loc_CC6195: CVarStr var_E4
  loc_CC6198: PopAdLdVar
  loc_CC6199: FLdPr Me
  loc_CC619C: MemLdStr global_124
  loc_CC619F: FLdPr Me
  loc_CC61A2: MemLdStr global_116
  loc_CC61A5: AryLock
  loc_CC61A8: Ary1LdPr
  loc_CC61A9: MemLdRfVar from_stack_1.global_20
  loc_CC61AC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC61B1: AryUnlock
  loc_CC61B4: FFreeVar var_E4 = ""
  loc_CC61BB: FLdRfVar var_CC
  loc_CC61BE: FLdPr var_D4
  loc_CC61C1: from_stack_1 = clsboleto.CasaPost
  loc_CC61C6: LitI2_Byte 0
  loc_CC61C8: LitVar_Missing var_12C
  loc_CC61CB: LitI2_Byte 0
  loc_CC61CD: FLdZeroAd var_CC
  loc_CC61D0: CVarStr var_E4
  loc_CC61D3: PopAdLdVar
  loc_CC61D4: FLdPr Me
  loc_CC61D7: MemLdStr global_124
  loc_CC61DA: FLdPr Me
  loc_CC61DD: MemLdStr global_116
  loc_CC61E0: AryLock
  loc_CC61E3: Ary1LdPr
  loc_CC61E4: MemLdRfVar from_stack_1.global_24
  loc_CC61E7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC61EC: AryUnlock
  loc_CC61EF: FFreeVar var_E4 = ""
  loc_CC61F6: FLdRfVar var_CC
  loc_CC61F9: FLdPr var_D4
  loc_CC61FC: from_stack_1 = clsboleto.UbicPost
  loc_CC6201: LitI2_Byte 0
  loc_CC6203: LitVar_Missing var_12C
  loc_CC6206: LitI2_Byte 0
  loc_CC6208: FLdZeroAd var_CC
  loc_CC620B: CVarStr var_E4
  loc_CC620E: PopAdLdVar
  loc_CC620F: FLdPr Me
  loc_CC6212: MemLdStr global_124
  loc_CC6215: FLdPr Me
  loc_CC6218: MemLdStr global_116
  loc_CC621B: AryLock
  loc_CC621E: Ary1LdPr
  loc_CC621F: MemLdRfVar from_stack_1.global_28
  loc_CC6222: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6227: AryUnlock
  loc_CC622A: FFreeVar var_E4 = ""
  loc_CC6231: FLdRfVar var_CC
  loc_CC6234: FLdPr var_D4
  loc_CC6237: from_stack_1 = clsboleto.DeloPost
  loc_CC623C: LitI2_Byte 0
  loc_CC623E: LitVar_Missing var_12C
  loc_CC6241: LitI2_Byte 0
  loc_CC6243: FLdZeroAd var_CC
  loc_CC6246: CVarStr var_E4
  loc_CC6249: PopAdLdVar
  loc_CC624A: FLdPr Me
  loc_CC624D: MemLdStr global_124
  loc_CC6250: FLdPr Me
  loc_CC6253: MemLdStr global_116
  loc_CC6256: AryLock
  loc_CC6259: Ary1LdPr
  loc_CC625A: MemLdRfVar from_stack_1.global_32
  loc_CC625D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6262: AryUnlock
  loc_CC6265: FFreeVar var_E4 = ""
  loc_CC626C: FLdRfVar var_CC
  loc_CC626F: FLdPr var_D4
  loc_CC6272: from_stack_1 = clsboleto.CopoPost
  loc_CC6277: LitI2_Byte 0
  loc_CC6279: LitVar_Missing var_12C
  loc_CC627C: LitI2_Byte 0
  loc_CC627E: FLdZeroAd var_CC
  loc_CC6281: CVarStr var_E4
  loc_CC6284: PopAdLdVar
  loc_CC6285: FLdPr Me
  loc_CC6288: MemLdStr global_124
  loc_CC628B: FLdPr Me
  loc_CC628E: MemLdStr global_116
  loc_CC6291: AryLock
  loc_CC6294: Ary1LdPr
  loc_CC6295: MemLdRfVar from_stack_1.global_36
  loc_CC6298: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC629D: AryUnlock
  loc_CC62A0: FFreeVar var_E4 = ""
  loc_CC62A7: FLdRfVar var_CC
  loc_CC62AA: FLdPr var_D4
  loc_CC62AD: from_stack_1 = clsboleto.CuenCtct
  loc_CC62B2: FLdRfVar var_D0
  loc_CC62B5: FLdPr var_D4
  loc_CC62B8: from_stack_1 = clsboleto.CuenCtct
  loc_CC62BD: LitVarStr var_B4, "&nbsp;"
  loc_CC62C2: FStVarCopyObj var_12C
  loc_CC62C5: FLdRfVar var_12C
  loc_CC62C8: FLdZeroAd var_D0
  loc_CC62CB: CVarStr var_E4
  loc_CC62CE: ILdRf var_CC
  loc_CC62D1: LitStr vbNullString
  loc_CC62D4: NeStr
  loc_CC62D6: CVarBoolI2 var_A4
  loc_CC62DA: FLdRfVar var_13C
  loc_CC62DD: ImpAdCallFPR4  = IIf(, , )
  loc_CC62E2: LitI2_Byte 0
  loc_CC62E4: LitVar_Missing var_15C
  loc_CC62E7: LitI2_Byte 0
  loc_CC62E9: FLdVar var_13C
  loc_CC62ED: FLdPr Me
  loc_CC62F0: MemLdStr global_124
  loc_CC62F3: FLdPr Me
  loc_CC62F6: MemLdStr global_116
  loc_CC62F9: AryLock
  loc_CC62FC: Ary1LdPr
  loc_CC62FD: MemLdRfVar from_stack_1.global_40
  loc_CC6300: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6305: AryUnlock
  loc_CC6308: FFree1Str var_CC
  loc_CC630B: FFreeVar var_A4 = "": var_E4 = "": var_12C = "": var_13C = ""
  loc_CC6318: FLdRfVar var_E4
  loc_CC631B: FLdPr var_D4
  loc_CC631E: from_stack_1 = clsboleto.Vinculo
  loc_CC6323: LitI2_Byte 0
  loc_CC6325: LitVar_Missing var_12C
  loc_CC6328: LitI2_Byte 0
  loc_CC632A: FLdVar var_E4
  loc_CC632E: FLdPr Me
  loc_CC6331: MemLdStr global_124
  loc_CC6334: FLdPr Me
  loc_CC6337: MemLdStr global_116
  loc_CC633A: AryLock
  loc_CC633D: Ary1LdPr
  loc_CC633E: MemLdRfVar from_stack_1.global_44
  loc_CC6341: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6346: AryUnlock
  loc_CC6349: FFreeVar var_E4 = ""
  loc_CC6350: FLdRfVar var_CC
  loc_CC6353: FLdPr var_D4
  loc_CC6356: from_stack_1 = clsboleto.CodiUsua
  loc_CC635B: LitI2_Byte 0
  loc_CC635D: LitVar_Missing var_12C
  loc_CC6360: LitI2_Byte 0
  loc_CC6362: FLdZeroAd var_CC
  loc_CC6365: CVarStr var_E4
  loc_CC6368: PopAdLdVar
  loc_CC6369: FLdPr Me
  loc_CC636C: MemLdStr global_124
  loc_CC636F: FLdPr Me
  loc_CC6372: MemLdStr global_116
  loc_CC6375: AryLock
  loc_CC6378: Ary1LdPr
  loc_CC6379: MemLdRfVar from_stack_1.global_112
  loc_CC637C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6381: AryUnlock
  loc_CC6384: FFreeVar var_E4 = ""
  loc_CC638B: FLdRfVar var_118
  loc_CC638E: FLdPr var_D4
  loc_CC6391: from_stack_1 = clsboleto.CodiFapa
  loc_CC6396: LitI2_Byte 0
  loc_CC6398: LitVar_Missing var_E4
  loc_CC639B: LitI2_Byte 0
  loc_CC639D: ILdRf var_118
  loc_CC63A0: CVarI4
  loc_CC63A4: PopAdLdVar
  loc_CC63A5: FLdPr Me
  loc_CC63A8: MemLdStr global_124
  loc_CC63AB: FLdPr Me
  loc_CC63AE: MemLdStr global_116
  loc_CC63B1: AryLock
  loc_CC63B4: Ary1LdPr
  loc_CC63B5: MemLdRfVar from_stack_1.global_116
  loc_CC63B8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC63BD: AryUnlock
  loc_CC63C0: FFree1Var var_E4 = ""
  loc_CC63C3: FLdRfVar var_BA
  loc_CC63C6: FLdPr var_D4
  loc_CC63C9: from_stack_1 = clsboleto.CuotDefa
  loc_CC63CE: LitI2_Byte 0
  loc_CC63D0: LitVar_Missing var_E4
  loc_CC63D3: LitI2_Byte 0
  loc_CC63D5: FLdI2 var_BA
  loc_CC63D8: CVarI2 var_A4
  loc_CC63DB: PopAdLdVar
  loc_CC63DC: FLdPr Me
  loc_CC63DF: MemLdStr global_124
  loc_CC63E2: FLdPr Me
  loc_CC63E5: MemLdStr global_116
  loc_CC63E8: AryLock
  loc_CC63EB: Ary1LdPr
  loc_CC63EC: MemLdRfVar from_stack_1.global_120
  loc_CC63EF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC63F4: AryUnlock
  loc_CC63F7: FFree1Var var_E4 = ""
  loc_CC63FA: FLdRfVar var_BA
  loc_CC63FD: FLdPr var_D4
  loc_CC6400: from_stack_1 = clsboleto.CodiOfic
  loc_CC6405: LitI2_Byte 0
  loc_CC6407: LitVar_Missing var_E4
  loc_CC640A: LitI2_Byte 0
  loc_CC640C: FLdI2 var_BA
  loc_CC640F: CVarI2 var_A4
  loc_CC6412: PopAdLdVar
  loc_CC6413: FLdPr Me
  loc_CC6416: MemLdStr global_124
  loc_CC6419: FLdPr Me
  loc_CC641C: MemLdStr global_116
  loc_CC641F: AryLock
  loc_CC6422: Ary1LdPr
  loc_CC6423: MemLdRfVar from_stack_1.global_124
  loc_CC6426: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC642B: AryUnlock
  loc_CC642E: FFree1Var var_E4 = ""
  loc_CC6431: FLdRfVar var_E4
  loc_CC6434: FLdPr var_D4
  loc_CC6437: from_stack_1 = clsboleto.FeveBole
  loc_CC643C: LitI2_Byte 0
  loc_CC643E: LitVar_Missing var_12C
  loc_CC6441: LitI2_Byte 0
  loc_CC6443: FLdVar var_E4
  loc_CC6447: FLdPr Me
  loc_CC644A: MemLdStr global_124
  loc_CC644D: FLdPr Me
  loc_CC6450: MemLdStr global_116
  loc_CC6453: AryLock
  loc_CC6456: Ary1LdPr
  loc_CC6457: MemLdRfVar from_stack_1.global_128
  loc_CC645A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC645F: AryUnlock
  loc_CC6462: FFreeVar var_E4 = ""
  loc_CC6469: FLdRfVar var_164
  loc_CC646C: FLdPr var_D4
  loc_CC646F: from_stack_1 = clsboleto.TotaBole
  loc_CC6474: LitI2_Byte 0
  loc_CC6476: LitVar_Missing var_E4
  loc_CC6479: LitI2_Byte &HFF
  loc_CC647B: FLdFPR8 var_164
  loc_CC647E: CVarR8
  loc_CC6482: PopAdLdVar
  loc_CC6483: FLdPr Me
  loc_CC6486: MemLdStr global_124
  loc_CC6489: FLdPr Me
  loc_CC648C: MemLdStr global_116
  loc_CC648F: AryLock
  loc_CC6492: Ary1LdPr
  loc_CC6493: MemLdRfVar from_stack_1.global_152
  loc_CC6496: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC649B: AryUnlock
  loc_CC649E: FFree1Var var_E4 = ""
  loc_CC64A1: FLdRfVar var_CC
  loc_CC64A4: FLdPr var_D4
  loc_CC64A7: from_stack_1 = clsboleto.ObseBole
  loc_CC64AC: LitI2_Byte 0
  loc_CC64AE: LitVar_Missing var_12C
  loc_CC64B1: LitI2_Byte 0
  loc_CC64B3: FLdZeroAd var_CC
  loc_CC64B6: CVarStr var_E4
  loc_CC64B9: PopAdLdVar
  loc_CC64BA: FLdPr Me
  loc_CC64BD: MemLdStr global_124
  loc_CC64C0: FLdPr Me
  loc_CC64C3: MemLdStr global_116
  loc_CC64C6: AryLock
  loc_CC64C9: Ary1LdPr
  loc_CC64CA: MemLdRfVar from_stack_1.global_156
  loc_CC64CD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC64D2: AryUnlock
  loc_CC64D5: FFreeVar var_E4 = ""
  loc_CC64DC: FLdRfVar var_164
  loc_CC64DF: FLdPr var_D4
  loc_CC64E2: from_stack_1 = clsboleto.ApreBole
  loc_CC64E7: FLdFPR8 var_164
  loc_CC64EA: LitI2_Byte 0
  loc_CC64EC: CR8I2
  loc_CC64ED: NeR8
  loc_CC64EE: BranchF loc_CC6529
  loc_CC64F1: FLdRfVar var_164
  loc_CC64F4: FLdPr var_D4
  loc_CC64F7: from_stack_1 = clsboleto.ApreBole
  loc_CC64FC: LitI2_Byte 0
  loc_CC64FE: LitVar_Missing var_E4
  loc_CC6501: LitI2_Byte &HFF
  loc_CC6503: FLdFPR8 var_164
  loc_CC6506: CVarR8
  loc_CC650A: PopAdLdVar
  loc_CC650B: FLdPr Me
  loc_CC650E: MemLdStr global_124
  loc_CC6511: FLdPr Me
  loc_CC6514: MemLdStr global_116
  loc_CC6517: AryLock
  loc_CC651A: Ary1LdPr
  loc_CC651B: MemLdRfVar from_stack_1.global_144
  loc_CC651E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6523: AryUnlock
  loc_CC6526: FFree1Var var_E4 = ""
  loc_CC6529: FLdRfVar var_CC
  loc_CC652C: Call Proc_355_32_AACDAC()
  loc_CC6531: LitI2_Byte 0
  loc_CC6533: LitVar_Missing var_12C
  loc_CC6536: LitI2_Byte 0
  loc_CC6538: FLdZeroAd var_CC
  loc_CC653B: CVarStr var_E4
  loc_CC653E: PopAdLdVar
  loc_CC653F: FLdPr Me
  loc_CC6542: MemLdStr global_124
  loc_CC6545: FLdPr Me
  loc_CC6548: MemLdStr global_116
  loc_CC654B: AryLock
  loc_CC654E: Ary1LdPr
  loc_CC654F: MemLdRfVar from_stack_1.global_148
  loc_CC6552: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6557: AryUnlock
  loc_CC655A: FFreeVar var_E4 = ""
  loc_CC6561: FLdPr Me
  loc_CC6564: MemLdStr global_124
  loc_CC6567: FLdPr Me
  loc_CC656A: MemLdStr global_116
  loc_CC656D: Ary1LdPr
  loc_CC656E: MemLdStr global_124
  loc_CC6571: FStStrCopy var_180
  loc_CC6574: ILdRf var_180
  loc_CC6577: LitI2_Byte 2
  loc_CC6579: CStrUI1
  loc_CC657B: FStStrNoPop var_CC
  loc_CC657E: EqStr
  loc_CC6580: FFree1Str var_CC
  loc_CC6583: BranchF loc_CC6749
  loc_CC6586: FLdRfVar var_E4
  loc_CC6589: FLdPr var_D4
  loc_CC658C: from_stack_1 = clsboleto.DetaCall
  loc_CC6591: LitI2_Byte 0
  loc_CC6593: LitVar_Missing var_12C
  loc_CC6596: LitI2_Byte 0
  loc_CC6598: FLdVar var_E4
  loc_CC659C: FLdPr Me
  loc_CC659F: MemLdStr global_124
  loc_CC65A2: FLdPr Me
  loc_CC65A5: MemLdStr global_116
  loc_CC65A8: AryLock
  loc_CC65AB: Ary1LdPr
  loc_CC65AC: MemLdRfVar from_stack_1.global_160
  loc_CC65AF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC65B4: AryUnlock
  loc_CC65B7: FFreeVar var_E4 = ""
  loc_CC65BE: FLdRfVar var_E4
  loc_CC65C1: FLdPr var_D4
  loc_CC65C4: from_stack_1 = clsboleto.NucaCome
  loc_CC65C9: LitI2_Byte 0
  loc_CC65CB: LitVar_Missing var_12C
  loc_CC65CE: LitI2_Byte 0
  loc_CC65D0: FLdVar var_E4
  loc_CC65D4: FLdPr Me
  loc_CC65D7: MemLdStr global_124
  loc_CC65DA: FLdPr Me
  loc_CC65DD: MemLdStr global_116
  loc_CC65E0: AryLock
  loc_CC65E3: Ary1LdPr
  loc_CC65E4: MemLdRfVar from_stack_1.global_164
  loc_CC65E7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC65EC: AryUnlock
  loc_CC65EF: FFreeVar var_E4 = ""
  loc_CC65F6: FLdRfVar var_E4
  loc_CC65F9: FLdPr var_D4
  loc_CC65FC: from_stack_1 = clsboleto.UbicCome
  loc_CC6601: LitI2_Byte 0
  loc_CC6603: LitVar_Missing var_12C
  loc_CC6606: LitI2_Byte 0
  loc_CC6608: FLdVar var_E4
  loc_CC660C: FLdPr Me
  loc_CC660F: MemLdStr global_124
  loc_CC6612: FLdPr Me
  loc_CC6615: MemLdStr global_116
  loc_CC6618: AryLock
  loc_CC661B: Ary1LdPr
  loc_CC661C: MemLdRfVar from_stack_1.global_168
  loc_CC661F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6624: AryUnlock
  loc_CC6627: FFreeVar var_E4 = ""
  loc_CC662E: FLdRfVar var_E4
  loc_CC6631: FLdPr var_D4
  loc_CC6634: from_stack_1 = clsboleto.CodiBarr
  loc_CC6639: LitI2_Byte 0
  loc_CC663B: LitVar_Missing var_12C
  loc_CC663E: LitI2_Byte 0
  loc_CC6640: FLdVar var_E4
  loc_CC6644: FLdPr Me
  loc_CC6647: MemLdStr global_124
  loc_CC664A: FLdPr Me
  loc_CC664D: MemLdStr global_116
  loc_CC6650: AryLock
  loc_CC6653: Ary1LdPr
  loc_CC6654: MemLdRfVar from_stack_1.global_172
  loc_CC6657: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC665C: AryUnlock
  loc_CC665F: FFreeVar var_E4 = ""
  loc_CC6666: FLdRfVar var_E4
  loc_CC6669: FLdPr var_D4
  loc_CC666C: from_stack_1 = clsboleto.DetaBarr
  loc_CC6671: LitI2_Byte 0
  loc_CC6673: LitVar_Missing var_12C
  loc_CC6676: LitI2_Byte 0
  loc_CC6678: FLdVar var_E4
  loc_CC667C: FLdPr Me
  loc_CC667F: MemLdStr global_124
  loc_CC6682: FLdPr Me
  loc_CC6685: MemLdStr global_116
  loc_CC6688: AryLock
  loc_CC668B: Ary1LdPr
  loc_CC668C: MemLdRfVar from_stack_1.global_176
  loc_CC668F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6694: AryUnlock
  loc_CC6697: FFreeVar var_E4 = ""
  loc_CC669E: FLdRfVar var_E4
  loc_CC66A1: FLdPr var_D4
  loc_CC66A4: from_stack_1 = clsboleto.MansBole
  loc_CC66A9: LitI2_Byte 0
  loc_CC66AB: LitVar_Missing var_12C
  loc_CC66AE: LitI2_Byte 0
  loc_CC66B0: FLdVar var_E4
  loc_CC66B4: FLdPr Me
  loc_CC66B7: MemLdStr global_124
  loc_CC66BA: FLdPr Me
  loc_CC66BD: MemLdStr global_116
  loc_CC66C0: AryLock
  loc_CC66C3: Ary1LdPr
  loc_CC66C4: MemLdRfVar from_stack_1.global_180
  loc_CC66C7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC66CC: AryUnlock
  loc_CC66CF: FFreeVar var_E4 = ""
  loc_CC66D6: FLdRfVar var_E4
  loc_CC66D9: FLdPr var_D4
  loc_CC66DC: from_stack_1 = clsboleto.CasaBole
  loc_CC66E1: LitI2_Byte 0
  loc_CC66E3: LitVar_Missing var_12C
  loc_CC66E6: LitI2_Byte 0
  loc_CC66E8: FLdVar var_E4
  loc_CC66EC: FLdPr Me
  loc_CC66EF: MemLdStr global_124
  loc_CC66F2: FLdPr Me
  loc_CC66F5: MemLdStr global_116
  loc_CC66F8: AryLock
  loc_CC66FB: Ary1LdPr
  loc_CC66FC: MemLdRfVar from_stack_1.global_184
  loc_CC66FF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6704: AryUnlock
  loc_CC6707: FFreeVar var_E4 = ""
  loc_CC670E: FLdRfVar var_E4
  loc_CC6711: FLdPr var_D4
  loc_CC6714: from_stack_1 = clsboleto.DetaLoca
  loc_CC6719: LitI2_Byte 0
  loc_CC671B: LitVar_Missing var_12C
  loc_CC671E: LitI2_Byte 0
  loc_CC6720: FLdVar var_E4
  loc_CC6724: FLdPr Me
  loc_CC6727: MemLdStr global_124
  loc_CC672A: FLdPr Me
  loc_CC672D: MemLdStr global_116
  loc_CC6730: AryLock
  loc_CC6733: Ary1LdPr
  loc_CC6734: MemLdRfVar from_stack_1.global_188
  loc_CC6737: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC673C: AryUnlock
  loc_CC673F: FFreeVar var_E4 = ""
  loc_CC6746: Branch loc_CC6D62
  loc_CC6749: ILdRf var_180
  loc_CC674C: LitI2_Byte 3
  loc_CC674E: CStrUI1
  loc_CC6750: FStStrNoPop var_CC
  loc_CC6753: EqStr
  loc_CC6755: FFree1Str var_CC
  loc_CC6758: BranchF loc_CC675E
  loc_CC675B: Branch loc_CC6D62
  loc_CC675E: ILdRf var_180
  loc_CC6761: LitI2_Byte 4
  loc_CC6763: CStrUI1
  loc_CC6765: FStStrNoPop var_CC
  loc_CC6768: EqStr
  loc_CC676A: FFree1Str var_CC
  loc_CC676D: BranchF loc_CC6933
  loc_CC6770: FLdRfVar var_E4
  loc_CC6773: FLdPr var_D4
  loc_CC6776: from_stack_1 = clsboleto.DetaCeme
  loc_CC677B: LitI2_Byte 0
  loc_CC677D: LitVar_Missing var_12C
  loc_CC6780: LitI2_Byte 0
  loc_CC6782: FLdVar var_E4
  loc_CC6786: FLdPr Me
  loc_CC6789: MemLdStr global_124
  loc_CC678C: FLdPr Me
  loc_CC678F: MemLdStr global_116
  loc_CC6792: AryLock
  loc_CC6795: Ary1LdPr
  loc_CC6796: MemLdRfVar from_stack_1.sImprimirApremioInhibido
  loc_CC6799: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC679E: AryUnlock
  loc_CC67A1: FFreeVar var_E4 = ""
  loc_CC67A8: FLdRfVar var_E4
  loc_CC67AB: FLdPr var_D4
  loc_CC67AE: from_stack_1 = clsboleto.DetaTise
  loc_CC67B3: LitI2_Byte 0
  loc_CC67B5: LitVar_Missing var_12C
  loc_CC67B8: LitI2_Byte 0
  loc_CC67BA: FLdVar var_E4
  loc_CC67BE: FLdPr Me
  loc_CC67C1: MemLdStr global_124
  loc_CC67C4: FLdPr Me
  loc_CC67C7: MemLdStr global_116
  loc_CC67CA: AryLock
  loc_CC67CD: Ary1LdPr
  loc_CC67CE: MemLdRfVar from_stack_1.global_68
  loc_CC67D1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC67D6: AryUnlock
  loc_CC67D9: FFreeVar var_E4 = ""
  loc_CC67E0: FLdRfVar var_E4
  loc_CC67E3: FLdPr var_D4
  loc_CC67E6: from_stack_1 = clsboleto.NumeDifu
  loc_CC67EB: LitI2_Byte 0
  loc_CC67ED: LitVar_Missing var_12C
  loc_CC67F0: LitI2_Byte 0
  loc_CC67F2: FLdVar var_E4
  loc_CC67F6: FLdPr Me
  loc_CC67F9: MemLdStr global_124
  loc_CC67FC: FLdPr Me
  loc_CC67FF: MemLdStr global_116
  loc_CC6802: AryLock
  loc_CC6805: Ary1LdPr
  loc_CC6806: MemLdRfVar from_stack_1.global_72
  loc_CC6809: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC680E: AryUnlock
  loc_CC6811: FFreeVar var_E4 = ""
  loc_CC6818: FLdRfVar var_E4
  loc_CC681B: FLdPr var_D4
  loc_CC681E: from_stack_1 = clsboleto.FilaDifu
  loc_CC6823: LitI2_Byte 0
  loc_CC6825: LitVar_Missing var_12C
  loc_CC6828: LitI2_Byte 0
  loc_CC682A: FLdVar var_E4
  loc_CC682E: FLdPr Me
  loc_CC6831: MemLdStr global_124
  loc_CC6834: FLdPr Me
  loc_CC6837: MemLdStr global_116
  loc_CC683A: AryLock
  loc_CC683D: Ary1LdPr
  loc_CC683E: MemLdRfVar from_stack_1.global_76
  loc_CC6841: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6846: AryUnlock
  loc_CC6849: FFreeVar var_E4 = ""
  loc_CC6850: FLdRfVar var_E4
  loc_CC6853: FLdPr var_D4
  loc_CC6856: from_stack_1 = clsboleto.NoseDifu
  loc_CC685B: LitI2_Byte 0
  loc_CC685D: LitVar_Missing var_12C
  loc_CC6860: LitI2_Byte 0
  loc_CC6862: FLdVar var_E4
  loc_CC6866: FLdPr Me
  loc_CC6869: MemLdStr global_124
  loc_CC686C: FLdPr Me
  loc_CC686F: MemLdStr global_116
  loc_CC6872: AryLock
  loc_CC6875: Ary1LdPr
  loc_CC6876: MemLdRfVar from_stack_1.global_80
  loc_CC6879: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC687E: AryUnlock
  loc_CC6881: FFreeVar var_E4 = ""
  loc_CC6888: FLdRfVar var_E4
  loc_CC688B: FLdPr var_D4
  loc_CC688E: from_stack_1 = clsboleto.SeccDifu
  loc_CC6893: LitI2_Byte 0
  loc_CC6895: LitVar_Missing var_12C
  loc_CC6898: LitI2_Byte 0
  loc_CC689A: FLdVar var_E4
  loc_CC689E: FLdPr Me
  loc_CC68A1: MemLdStr global_124
  loc_CC68A4: FLdPr Me
  loc_CC68A7: MemLdStr global_116
  loc_CC68AA: AryLock
  loc_CC68AD: Ary1LdPr
  loc_CC68AE: MemLdRfVar from_stack_1.global_84
  loc_CC68B1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC68B6: AryUnlock
  loc_CC68B9: FFreeVar var_E4 = ""
  loc_CC68C0: FLdRfVar var_E4
  loc_CC68C3: FLdPr var_D4
  loc_CC68C6: from_stack_1 = clsboleto.DetaDedi
  loc_CC68CB: LitI2_Byte 0
  loc_CC68CD: LitVar_Missing var_12C
  loc_CC68D0: LitI2_Byte 0
  loc_CC68D2: FLdVar var_E4
  loc_CC68D6: FLdPr Me
  loc_CC68D9: MemLdStr global_124
  loc_CC68DC: FLdPr Me
  loc_CC68DF: MemLdStr global_116
  loc_CC68E2: AryLock
  loc_CC68E5: Ary1LdPr
  loc_CC68E6: MemLdRfVar from_stack_1.global_88
  loc_CC68E9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC68EE: AryUnlock
  loc_CC68F1: FFreeVar var_E4 = ""
  loc_CC68F8: FLdRfVar var_E4
  loc_CC68FB: FLdPr var_D4
  loc_CC68FE: from_stack_1 = clsboleto.FeveDifu
  loc_CC6903: LitI2_Byte 0
  loc_CC6905: LitVar_Missing var_12C
  loc_CC6908: LitI2_Byte 0
  loc_CC690A: FLdVar var_E4
  loc_CC690E: FLdPr Me
  loc_CC6911: MemLdStr global_124
  loc_CC6914: FLdPr Me
  loc_CC6917: MemLdStr global_116
  loc_CC691A: AryLock
  loc_CC691D: Ary1LdPr
  loc_CC691E: MemLdRfVar from_stack_1.global_92
  loc_CC6921: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6926: AryUnlock
  loc_CC6929: FFreeVar var_E4 = ""
  loc_CC6930: Branch loc_CC6D62
  loc_CC6933: ILdRf var_180
  loc_CC6936: LitI2_Byte 6
  loc_CC6938: CStrUI1
  loc_CC693A: FStStrNoPop var_CC
  loc_CC693D: EqStr
  loc_CC693F: FFree1Str var_CC
  loc_CC6942: BranchF loc_CC6B08
  loc_CC6945: FLdRfVar var_E4
  loc_CC6948: FLdPr var_D4
  loc_CC694B: from_stack_1 = clsboleto.DetaCall
  loc_CC6950: LitI2_Byte 0
  loc_CC6952: LitVar_Missing var_12C
  loc_CC6955: LitI2_Byte 0
  loc_CC6957: FLdVar var_E4
  loc_CC695B: FLdPr Me
  loc_CC695E: MemLdStr global_124
  loc_CC6961: FLdPr Me
  loc_CC6964: MemLdStr global_116
  loc_CC6967: AryLock
  loc_CC696A: Ary1LdPr
  loc_CC696B: MemLdRfVar from_stack_1.global_160
  loc_CC696E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6973: AryUnlock
  loc_CC6976: FFreeVar var_E4 = ""
  loc_CC697D: FLdRfVar var_E4
  loc_CC6980: FLdPr var_D4
  loc_CC6983: from_stack_1 = clsboleto.NucaCome
  loc_CC6988: LitI2_Byte 0
  loc_CC698A: LitVar_Missing var_12C
  loc_CC698D: LitI2_Byte 0
  loc_CC698F: FLdVar var_E4
  loc_CC6993: FLdPr Me
  loc_CC6996: MemLdStr global_124
  loc_CC6999: FLdPr Me
  loc_CC699C: MemLdStr global_116
  loc_CC699F: AryLock
  loc_CC69A2: Ary1LdPr
  loc_CC69A3: MemLdRfVar from_stack_1.global_164
  loc_CC69A6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC69AB: AryUnlock
  loc_CC69AE: FFreeVar var_E4 = ""
  loc_CC69B5: FLdRfVar var_E4
  loc_CC69B8: FLdPr var_D4
  loc_CC69BB: from_stack_1 = clsboleto.UbicCome
  loc_CC69C0: LitI2_Byte 0
  loc_CC69C2: LitVar_Missing var_12C
  loc_CC69C5: LitI2_Byte 0
  loc_CC69C7: FLdVar var_E4
  loc_CC69CB: FLdPr Me
  loc_CC69CE: MemLdStr global_124
  loc_CC69D1: FLdPr Me
  loc_CC69D4: MemLdStr global_116
  loc_CC69D7: AryLock
  loc_CC69DA: Ary1LdPr
  loc_CC69DB: MemLdRfVar from_stack_1.global_168
  loc_CC69DE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC69E3: AryUnlock
  loc_CC69E6: FFreeVar var_E4 = ""
  loc_CC69ED: FLdRfVar var_E4
  loc_CC69F0: FLdPr var_D4
  loc_CC69F3: from_stack_1 = clsboleto.CodiBarr
  loc_CC69F8: LitI2_Byte 0
  loc_CC69FA: LitVar_Missing var_12C
  loc_CC69FD: LitI2_Byte 0
  loc_CC69FF: FLdVar var_E4
  loc_CC6A03: FLdPr Me
  loc_CC6A06: MemLdStr global_124
  loc_CC6A09: FLdPr Me
  loc_CC6A0C: MemLdStr global_116
  loc_CC6A0F: AryLock
  loc_CC6A12: Ary1LdPr
  loc_CC6A13: MemLdRfVar from_stack_1.global_172
  loc_CC6A16: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6A1B: AryUnlock
  loc_CC6A1E: FFreeVar var_E4 = ""
  loc_CC6A25: FLdRfVar var_E4
  loc_CC6A28: FLdPr var_D4
  loc_CC6A2B: from_stack_1 = clsboleto.DetaBarr
  loc_CC6A30: LitI2_Byte 0
  loc_CC6A32: LitVar_Missing var_12C
  loc_CC6A35: LitI2_Byte 0
  loc_CC6A37: FLdVar var_E4
  loc_CC6A3B: FLdPr Me
  loc_CC6A3E: MemLdStr global_124
  loc_CC6A41: FLdPr Me
  loc_CC6A44: MemLdStr global_116
  loc_CC6A47: AryLock
  loc_CC6A4A: Ary1LdPr
  loc_CC6A4B: MemLdRfVar from_stack_1.global_176
  loc_CC6A4E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6A53: AryUnlock
  loc_CC6A56: FFreeVar var_E4 = ""
  loc_CC6A5D: FLdRfVar var_E4
  loc_CC6A60: FLdPr var_D4
  loc_CC6A63: from_stack_1 = clsboleto.MansBole
  loc_CC6A68: LitI2_Byte 0
  loc_CC6A6A: LitVar_Missing var_12C
  loc_CC6A6D: LitI2_Byte 0
  loc_CC6A6F: FLdVar var_E4
  loc_CC6A73: FLdPr Me
  loc_CC6A76: MemLdStr global_124
  loc_CC6A79: FLdPr Me
  loc_CC6A7C: MemLdStr global_116
  loc_CC6A7F: AryLock
  loc_CC6A82: Ary1LdPr
  loc_CC6A83: MemLdRfVar from_stack_1.global_180
  loc_CC6A86: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6A8B: AryUnlock
  loc_CC6A8E: FFreeVar var_E4 = ""
  loc_CC6A95: FLdRfVar var_E4
  loc_CC6A98: FLdPr var_D4
  loc_CC6A9B: from_stack_1 = clsboleto.CasaBole
  loc_CC6AA0: LitI2_Byte 0
  loc_CC6AA2: LitVar_Missing var_12C
  loc_CC6AA5: LitI2_Byte 0
  loc_CC6AA7: FLdVar var_E4
  loc_CC6AAB: FLdPr Me
  loc_CC6AAE: MemLdStr global_124
  loc_CC6AB1: FLdPr Me
  loc_CC6AB4: MemLdStr global_116
  loc_CC6AB7: AryLock
  loc_CC6ABA: Ary1LdPr
  loc_CC6ABB: MemLdRfVar from_stack_1.global_184
  loc_CC6ABE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6AC3: AryUnlock
  loc_CC6AC6: FFreeVar var_E4 = ""
  loc_CC6ACD: FLdRfVar var_E4
  loc_CC6AD0: FLdPr var_D4
  loc_CC6AD3: from_stack_1 = clsboleto.DetaLoca
  loc_CC6AD8: LitI2_Byte 0
  loc_CC6ADA: LitVar_Missing var_12C
  loc_CC6ADD: LitI2_Byte 0
  loc_CC6ADF: FLdVar var_E4
  loc_CC6AE3: FLdPr Me
  loc_CC6AE6: MemLdStr global_124
  loc_CC6AE9: FLdPr Me
  loc_CC6AEC: MemLdStr global_116
  loc_CC6AEF: AryLock
  loc_CC6AF2: Ary1LdPr
  loc_CC6AF3: MemLdRfVar from_stack_1.global_188
  loc_CC6AF6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6AFB: AryUnlock
  loc_CC6AFE: FFreeVar var_E4 = ""
  loc_CC6B05: Branch loc_CC6D62
  loc_CC6B08: ILdRf var_180
  loc_CC6B0B: LitI2_Byte 7
  loc_CC6B0D: CStrUI1
  loc_CC6B0F: FStStrNoPop var_CC
  loc_CC6B12: EqStr
  loc_CC6B14: FFree1Str var_CC
  loc_CC6B17: BranchF loc_CC6CDD
  loc_CC6B1A: FLdRfVar var_E4
  loc_CC6B1D: FLdPr var_D4
  loc_CC6B20: from_stack_1 = clsboleto.DetaCall
  loc_CC6B25: LitI2_Byte 0
  loc_CC6B27: LitVar_Missing var_12C
  loc_CC6B2A: LitI2_Byte 0
  loc_CC6B2C: FLdVar var_E4
  loc_CC6B30: FLdPr Me
  loc_CC6B33: MemLdStr global_124
  loc_CC6B36: FLdPr Me
  loc_CC6B39: MemLdStr global_116
  loc_CC6B3C: AryLock
  loc_CC6B3F: Ary1LdPr
  loc_CC6B40: MemLdRfVar from_stack_1.global_160
  loc_CC6B43: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6B48: AryUnlock
  loc_CC6B4B: FFreeVar var_E4 = ""
  loc_CC6B52: FLdRfVar var_E4
  loc_CC6B55: FLdPr var_D4
  loc_CC6B58: from_stack_1 = clsboleto.NucaCome
  loc_CC6B5D: LitI2_Byte 0
  loc_CC6B5F: LitVar_Missing var_12C
  loc_CC6B62: LitI2_Byte 0
  loc_CC6B64: FLdVar var_E4
  loc_CC6B68: FLdPr Me
  loc_CC6B6B: MemLdStr global_124
  loc_CC6B6E: FLdPr Me
  loc_CC6B71: MemLdStr global_116
  loc_CC6B74: AryLock
  loc_CC6B77: Ary1LdPr
  loc_CC6B78: MemLdRfVar from_stack_1.global_164
  loc_CC6B7B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6B80: AryUnlock
  loc_CC6B83: FFreeVar var_E4 = ""
  loc_CC6B8A: FLdRfVar var_E4
  loc_CC6B8D: FLdPr var_D4
  loc_CC6B90: from_stack_1 = clsboleto.UbicCome
  loc_CC6B95: LitI2_Byte 0
  loc_CC6B97: LitVar_Missing var_12C
  loc_CC6B9A: LitI2_Byte 0
  loc_CC6B9C: FLdVar var_E4
  loc_CC6BA0: FLdPr Me
  loc_CC6BA3: MemLdStr global_124
  loc_CC6BA6: FLdPr Me
  loc_CC6BA9: MemLdStr global_116
  loc_CC6BAC: AryLock
  loc_CC6BAF: Ary1LdPr
  loc_CC6BB0: MemLdRfVar from_stack_1.global_168
  loc_CC6BB3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6BB8: AryUnlock
  loc_CC6BBB: FFreeVar var_E4 = ""
  loc_CC6BC2: FLdRfVar var_E4
  loc_CC6BC5: FLdPr var_D4
  loc_CC6BC8: from_stack_1 = clsboleto.CodiBarr
  loc_CC6BCD: LitI2_Byte 0
  loc_CC6BCF: LitVar_Missing var_12C
  loc_CC6BD2: LitI2_Byte 0
  loc_CC6BD4: FLdVar var_E4
  loc_CC6BD8: FLdPr Me
  loc_CC6BDB: MemLdStr global_124
  loc_CC6BDE: FLdPr Me
  loc_CC6BE1: MemLdStr global_116
  loc_CC6BE4: AryLock
  loc_CC6BE7: Ary1LdPr
  loc_CC6BE8: MemLdRfVar from_stack_1.global_172
  loc_CC6BEB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6BF0: AryUnlock
  loc_CC6BF3: FFreeVar var_E4 = ""
  loc_CC6BFA: FLdRfVar var_E4
  loc_CC6BFD: FLdPr var_D4
  loc_CC6C00: from_stack_1 = clsboleto.DetaBarr
  loc_CC6C05: LitI2_Byte 0
  loc_CC6C07: LitVar_Missing var_12C
  loc_CC6C0A: LitI2_Byte 0
  loc_CC6C0C: FLdVar var_E4
  loc_CC6C10: FLdPr Me
  loc_CC6C13: MemLdStr global_124
  loc_CC6C16: FLdPr Me
  loc_CC6C19: MemLdStr global_116
  loc_CC6C1C: AryLock
  loc_CC6C1F: Ary1LdPr
  loc_CC6C20: MemLdRfVar from_stack_1.global_176
  loc_CC6C23: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6C28: AryUnlock
  loc_CC6C2B: FFreeVar var_E4 = ""
  loc_CC6C32: FLdRfVar var_E4
  loc_CC6C35: FLdPr var_D4
  loc_CC6C38: from_stack_1 = clsboleto.MansBole
  loc_CC6C3D: LitI2_Byte 0
  loc_CC6C3F: LitVar_Missing var_12C
  loc_CC6C42: LitI2_Byte 0
  loc_CC6C44: FLdVar var_E4
  loc_CC6C48: FLdPr Me
  loc_CC6C4B: MemLdStr global_124
  loc_CC6C4E: FLdPr Me
  loc_CC6C51: MemLdStr global_116
  loc_CC6C54: AryLock
  loc_CC6C57: Ary1LdPr
  loc_CC6C58: MemLdRfVar from_stack_1.global_180
  loc_CC6C5B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6C60: AryUnlock
  loc_CC6C63: FFreeVar var_E4 = ""
  loc_CC6C6A: FLdRfVar var_E4
  loc_CC6C6D: FLdPr var_D4
  loc_CC6C70: from_stack_1 = clsboleto.CasaBole
  loc_CC6C75: LitI2_Byte 0
  loc_CC6C77: LitVar_Missing var_12C
  loc_CC6C7A: LitI2_Byte 0
  loc_CC6C7C: FLdVar var_E4
  loc_CC6C80: FLdPr Me
  loc_CC6C83: MemLdStr global_124
  loc_CC6C86: FLdPr Me
  loc_CC6C89: MemLdStr global_116
  loc_CC6C8C: AryLock
  loc_CC6C8F: Ary1LdPr
  loc_CC6C90: MemLdRfVar from_stack_1.global_184
  loc_CC6C93: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6C98: AryUnlock
  loc_CC6C9B: FFreeVar var_E4 = ""
  loc_CC6CA2: FLdRfVar var_E4
  loc_CC6CA5: FLdPr var_D4
  loc_CC6CA8: from_stack_1 = clsboleto.DetaLoca
  loc_CC6CAD: LitI2_Byte 0
  loc_CC6CAF: LitVar_Missing var_12C
  loc_CC6CB2: LitI2_Byte 0
  loc_CC6CB4: FLdVar var_E4
  loc_CC6CB8: FLdPr Me
  loc_CC6CBB: MemLdStr global_124
  loc_CC6CBE: FLdPr Me
  loc_CC6CC1: MemLdStr global_116
  loc_CC6CC4: AryLock
  loc_CC6CC7: Ary1LdPr
  loc_CC6CC8: MemLdRfVar from_stack_1.global_188
  loc_CC6CCB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6CD0: AryUnlock
  loc_CC6CD3: FFreeVar var_E4 = ""
  loc_CC6CDA: Branch loc_CC6D62
  loc_CC6CDD: ILdRf var_180
  loc_CC6CE0: LitI2_Byte 8
  loc_CC6CE2: CStrUI1
  loc_CC6CE4: FStStrNoPop var_CC
  loc_CC6CE7: EqStr
  loc_CC6CE9: FFree1Str var_CC
  loc_CC6CEC: BranchF loc_CC6D62
  loc_CC6CEF: FLdRfVar var_CC
  loc_CC6CF2: FLdPr var_D4
  loc_CC6CF5: from_stack_1 = clsboleto.ExpeBole
  loc_CC6CFA: LitI2_Byte 0
  loc_CC6CFC: LitVar_Missing var_12C
  loc_CC6CFF: LitI2_Byte 0
  loc_CC6D01: FLdZeroAd var_CC
  loc_CC6D04: CVarStr var_E4
  loc_CC6D07: PopAdLdVar
  loc_CC6D08: FLdPr Me
  loc_CC6D0B: MemLdStr global_124
  loc_CC6D0E: FLdPr Me
  loc_CC6D11: MemLdStr global_116
  loc_CC6D14: AryLock
  loc_CC6D17: Ary1LdPr
  loc_CC6D18: MemLdRfVar from_stack_1.global_100
  loc_CC6D1B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6D20: AryUnlock
  loc_CC6D23: FFreeVar var_E4 = ""
  loc_CC6D2A: FLdRfVar var_E4
  loc_CC6D2D: FLdPr var_D4
  loc_CC6D30: from_stack_1 = clsboleto.FealBole
  loc_CC6D35: LitI2_Byte 0
  loc_CC6D37: LitVar_Missing var_12C
  loc_CC6D3A: LitI2_Byte 0
  loc_CC6D3C: FLdVar var_E4
  loc_CC6D40: FLdPr Me
  loc_CC6D43: MemLdStr global_124
  loc_CC6D46: FLdPr Me
  loc_CC6D49: MemLdStr global_116
  loc_CC6D4C: AryLock
  loc_CC6D4F: Ary1LdPr
  loc_CC6D50: MemLdRfVar from_stack_1.global_104
  loc_CC6D53: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6D58: AryUnlock
  loc_CC6D5B: FFreeVar var_E4 = ""
  loc_CC6D62: LitNothing
  loc_CC6D64: FStAd var_D4 
  loc_CC6D68: FLdPr Me
  loc_CC6D6B: MemLdRfVar from_stack_1.global_100
  loc_CC6D6E: NewIfNullAd
  loc_CC6D71: FStAd var_184 
  loc_CC6D75: FLdPr Me
  loc_CC6D78: MemLdStr global_124
  loc_CC6D7B: FLdPr Me
  loc_CC6D7E: MemLdStr global_116
  loc_CC6D81: Ary1LdPr
  loc_CC6D82: MemLdStr global_124
  loc_CC6D85: CR8Str
  loc_CC6D87: LitI2_Byte 8
  loc_CC6D89: CR8I2
  loc_CC6D8A: EqR4
  loc_CC6D8B: BranchF loc_CC71B0
  loc_CC6D8E: LitStr "SELECT CantDede, devadeta.CodiSede, DetaSede, PrunDede, SubtDede, DescDede, TotaDede"
  loc_CC6D91: LitStr " FROM devadeta"
  loc_CC6D94: ConcatStr
  loc_CC6D95: FStStrNoPop var_CC
  loc_CC6D98: LitStr " LEFT JOIN servdeva ON servdeva.PeriOrde = devadeta.PeriOrde AND servdeva.CodiSede = devadeta.CodiSede"
  loc_CC6D9B: ConcatStr
  loc_CC6D9C: FStStrNoPop var_D0
  loc_CC6D9F: LitStr " WHERE PeriBole = "
  loc_CC6DA2: ConcatStr
  loc_CC6DA3: FStStrNoPop var_E8
  loc_CC6DA6: FLdPr Me
  loc_CC6DA9: VCallAd Control_ID_PeriBoleMsk
  loc_CC6DAC: FStAdFunc var_B8
  loc_CC6DAF: FLdPr var_B8
  loc_CC6DB2: LateIdLdVar var_E4 DispID_22 0
  loc_CC6DB9: CStrVarTmp
  loc_CC6DBA: FStStrNoPop var_EC
  loc_CC6DBD: ConcatStr
  loc_CC6DBE: FStStrNoPop var_F0
  loc_CC6DC1: LitStr " AND devadeta.NumeBole = "
  loc_CC6DC4: ConcatStr
  loc_CC6DC5: FStStrNoPop var_F4
  loc_CC6DC8: FLdPr Me
  loc_CC6DCB: MemLdStr global_124
  loc_CC6DCE: FLdPr Me
  loc_CC6DD1: MemLdStr global_116
  loc_CC6DD4: Ary1LdPr
  loc_CC6DD5: MemLdStr global_108
  loc_CC6DD8: ConcatStr
  loc_CC6DD9: FStStrNoPop var_F8
  loc_CC6DDC: LitStr " ORDER BY PeriCtct, BimeCtct"
  loc_CC6DDF: ConcatStr
  loc_CC6DE0: FStStrNoPop var_FC
  loc_CC6DE3: FLdPr var_184
  loc_CC6DE6: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC6DEB: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_CC6DFE: FFree1Ad var_B8
  loc_CC6E01: FFree1Var var_E4 = ""
  loc_CC6E04: FLdRfVar var_118
  loc_CC6E07: FLdPr var_184
  loc_CC6E0A: from_stack_1 = clsdetabole.RecordCount
  loc_CC6E0F: ILdRf var_118
  loc_CC6E12: LitI4 0
  loc_CC6E17: EqI4
  loc_CC6E18: BranchF loc_CC6E26
  loc_CC6E1B: LitStr "No se ha generado detalle para el boleto"
  loc_CC6E1E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC6E23: Branch loc_CC764B
  loc_CC6E26: FLdPr var_184
  loc_CC6E29: Call clsdetabole.MoveFirst()
  loc_CC6E2E: FLdRfVar var_118
  loc_CC6E31: FLdPr var_184
  loc_CC6E34: from_stack_1 = clsdetabole.RecordCount
  loc_CC6E39: LitI4 0
  loc_CC6E3E: ILdRf var_118
  loc_CC6E41: FLdPr Me
  loc_CC6E44: MemLdStr global_124
  loc_CC6E47: FLdPr Me
  loc_CC6E4A: MemLdStr global_116
  loc_CC6E4D: Ary1LdPr
  loc_CC6E4E: MemLdRfVar from_stack_1.global_96
  loc_CC6E51: Redim
  loc_CC6E5B: LitI2_Byte 1
  loc_CC6E5D: FLdPr Me
  loc_CC6E60: MemLdRfVar from_stack_1.global_134
  loc_CC6E63: FLdPr Me
  loc_CC6E66: MemLdStr global_124
  loc_CC6E69: FLdPr Me
  loc_CC6E6C: MemLdStr global_116
  loc_CC6E6F: Ary1LdPr
  loc_CC6E70: MemLdStr global_96
  loc_CC6E73: LitI2_Byte 1
  loc_CC6E75: FnUBound
  loc_CC6E77: CI2I4
  loc_CC6E78: ForI2 var_188
  loc_CC6E7E: FLdRfVar var_164
  loc_CC6E81: FLdPr var_184
  loc_CC6E84: from_stack_1 = clsdetabole.CantDede
  loc_CC6E89: LitI2_Byte 0
  loc_CC6E8B: LitVar_Missing var_E4
  loc_CC6E8E: LitI2_Byte 0
  loc_CC6E90: FLdFPR8 var_164
  loc_CC6E93: CVarR8
  loc_CC6E97: PopAdLdVar
  loc_CC6E98: FLdPr Me
  loc_CC6E9B: MemLdI2 global_134
  loc_CC6E9E: CI4UI1
  loc_CC6E9F: FLdPr Me
  loc_CC6EA2: MemLdStr global_124
  loc_CC6EA5: FLdPr Me
  loc_CC6EA8: MemLdStr global_116
  loc_CC6EAB: AryLock
  loc_CC6EAE: Ary1LdPr
  loc_CC6EAF: MemLdStr global_96
  loc_CC6EB2: AryLock
  loc_CC6EB5: Ary1LdPr
  loc_CC6EB6: MemLdRfVar from_stack_1.global_0
  loc_CC6EB9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6EBE: AryUnlock
  loc_CC6EC1: AryUnlock
  loc_CC6EC4: FFree1Var var_E4 = ""
  loc_CC6EC7: FLdRfVar var_118
  loc_CC6ECA: FLdPr var_184
  loc_CC6ECD: from_stack_1 = clsdetabole.CodiSede
  loc_CC6ED2: LitI2_Byte 0
  loc_CC6ED4: LitVar_Missing var_E4
  loc_CC6ED7: LitI2_Byte 0
  loc_CC6ED9: ILdRf var_118
  loc_CC6EDC: CVarI4
  loc_CC6EE0: PopAdLdVar
  loc_CC6EE1: FLdPr Me
  loc_CC6EE4: MemLdI2 global_134
  loc_CC6EE7: CI4UI1
  loc_CC6EE8: FLdPr Me
  loc_CC6EEB: MemLdStr global_124
  loc_CC6EEE: FLdPr Me
  loc_CC6EF1: MemLdStr global_116
  loc_CC6EF4: AryLock
  loc_CC6EF7: Ary1LdPr
  loc_CC6EF8: MemLdStr global_96
  loc_CC6EFB: AryLock
  loc_CC6EFE: Ary1LdPr
  loc_CC6EFF: MemLdRfVar from_stack_1.global_4
  loc_CC6F02: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6F07: AryUnlock
  loc_CC6F0A: AryUnlock
  loc_CC6F0D: FFree1Var var_E4 = ""
  loc_CC6F10: FLdRfVar var_E4
  loc_CC6F13: FLdPr var_184
  loc_CC6F16: from_stack_1 = clsdetabole.DetaSede
  loc_CC6F1B: LitI2_Byte 0
  loc_CC6F1D: LitVar_Missing var_12C
  loc_CC6F20: LitI2_Byte 0
  loc_CC6F22: FLdVar var_E4
  loc_CC6F26: FLdPr Me
  loc_CC6F29: MemLdI2 global_134
  loc_CC6F2C: CI4UI1
  loc_CC6F2D: FLdPr Me
  loc_CC6F30: MemLdStr global_124
  loc_CC6F33: FLdPr Me
  loc_CC6F36: MemLdStr global_116
  loc_CC6F39: AryLock
  loc_CC6F3C: Ary1LdPr
  loc_CC6F3D: MemLdStr global_96
  loc_CC6F40: AryLock
  loc_CC6F43: Ary1LdPr
  loc_CC6F44: MemLdRfVar from_stack_1.global_8
  loc_CC6F47: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6F4C: AryUnlock
  loc_CC6F4F: AryUnlock
  loc_CC6F52: FFreeVar var_E4 = ""
  loc_CC6F59: FLdRfVar var_164
  loc_CC6F5C: FLdPr var_184
  loc_CC6F5F: from_stack_1 = clsdetabole.PrunDede
  loc_CC6F64: LitI2_Byte 0
  loc_CC6F66: LitI4 1
  loc_CC6F6B: FLdPr Me
  loc_CC6F6E: MemLdStr global_144
  loc_CC6F71: AryLock
  loc_CC6F74: Ary1LdPr
  loc_CC6F75: MemLdRfVar from_stack_1.global_12
  loc_CC6F78: CVarRef
  loc_CC6F7D: LitI2_Byte &HFF
  loc_CC6F7F: FLdFPR8 var_164
  loc_CC6F82: CVarR8
  loc_CC6F86: PopAdLdVar
  loc_CC6F87: FLdPr Me
  loc_CC6F8A: MemLdI2 global_134
  loc_CC6F8D: CI4UI1
  loc_CC6F8E: FLdPr Me
  loc_CC6F91: MemLdStr global_124
  loc_CC6F94: FLdPr Me
  loc_CC6F97: MemLdStr global_116
  loc_CC6F9A: AryLock
  loc_CC6F9D: Ary1LdPr
  loc_CC6F9E: MemLdStr global_96
  loc_CC6FA1: AryLock
  loc_CC6FA4: Ary1LdPr
  loc_CC6FA5: MemLdRfVar from_stack_1.global_12
  loc_CC6FA8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC6FAD: AryUnlock
  loc_CC6FB0: AryUnlock
  loc_CC6FB3: AryUnlock
  loc_CC6FB6: FLdRfVar var_164
  loc_CC6FB9: FLdPr var_184
  loc_CC6FBC: from_stack_1 = clsdetabole.SubtDede
  loc_CC6FC1: LitI2_Byte 0
  loc_CC6FC3: LitI4 1
  loc_CC6FC8: FLdPr Me
  loc_CC6FCB: MemLdStr global_144
  loc_CC6FCE: AryLock
  loc_CC6FD1: Ary1LdPr
  loc_CC6FD2: MemLdRfVar from_stack_1.global_16
  loc_CC6FD5: CVarRef
  loc_CC6FDA: LitI2_Byte &HFF
  loc_CC6FDC: FLdFPR8 var_164
  loc_CC6FDF: CVarR8
  loc_CC6FE3: PopAdLdVar
  loc_CC6FE4: FLdPr Me
  loc_CC6FE7: MemLdI2 global_134
  loc_CC6FEA: CI4UI1
  loc_CC6FEB: FLdPr Me
  loc_CC6FEE: MemLdStr global_124
  loc_CC6FF1: FLdPr Me
  loc_CC6FF4: MemLdStr global_116
  loc_CC6FF7: AryLock
  loc_CC6FFA: Ary1LdPr
  loc_CC6FFB: MemLdStr global_96
  loc_CC6FFE: AryLock
  loc_CC7001: Ary1LdPr
  loc_CC7002: MemLdRfVar from_stack_1.global_16
  loc_CC7005: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC700A: AryUnlock
  loc_CC700D: AryUnlock
  loc_CC7010: AryUnlock
  loc_CC7013: FLdRfVar var_164
  loc_CC7016: FLdPr var_184
  loc_CC7019: from_stack_1 = clsdetabole.DescDede
  loc_CC701E: LitI2_Byte 0
  loc_CC7020: LitI4 1
  loc_CC7025: FLdPr Me
  loc_CC7028: MemLdStr global_144
  loc_CC702B: AryLock
  loc_CC702E: Ary1LdPr
  loc_CC702F: MemLdRfVar from_stack_1.global_20
  loc_CC7032: CVarRef
  loc_CC7037: LitI2_Byte &HFF
  loc_CC7039: FLdFPR8 var_164
  loc_CC703C: CVarR8
  loc_CC7040: PopAdLdVar
  loc_CC7041: FLdPr Me
  loc_CC7044: MemLdI2 global_134
  loc_CC7047: CI4UI1
  loc_CC7048: FLdPr Me
  loc_CC704B: MemLdStr global_124
  loc_CC704E: FLdPr Me
  loc_CC7051: MemLdStr global_116
  loc_CC7054: AryLock
  loc_CC7057: Ary1LdPr
  loc_CC7058: MemLdStr global_96
  loc_CC705B: AryLock
  loc_CC705E: Ary1LdPr
  loc_CC705F: MemLdRfVar from_stack_1.global_20
  loc_CC7062: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC7067: AryUnlock
  loc_CC706A: AryUnlock
  loc_CC706D: AryUnlock
  loc_CC7070: FLdRfVar var_164
  loc_CC7073: FLdPr var_184
  loc_CC7076: from_stack_1 = clsdetabole.TotaDede
  loc_CC707B: LitI2_Byte 0
  loc_CC707D: LitI4 1
  loc_CC7082: FLdPr Me
  loc_CC7085: MemLdStr global_144
  loc_CC7088: AryLock
  loc_CC708B: Ary1LdPr
  loc_CC708C: MemLdRfVar from_stack_1.global_24
  loc_CC708F: CVarRef
  loc_CC7094: LitI2_Byte &HFF
  loc_CC7096: FLdFPR8 var_164
  loc_CC7099: CVarR8
  loc_CC709D: PopAdLdVar
  loc_CC709E: FLdPr Me
  loc_CC70A1: MemLdI2 global_134
  loc_CC70A4: CI4UI1
  loc_CC70A5: FLdPr Me
  loc_CC70A8: MemLdStr global_124
  loc_CC70AB: FLdPr Me
  loc_CC70AE: MemLdStr global_116
  loc_CC70B1: AryLock
  loc_CC70B4: Ary1LdPr
  loc_CC70B5: MemLdStr global_96
  loc_CC70B8: AryLock
  loc_CC70BB: Ary1LdPr
  loc_CC70BC: MemLdRfVar from_stack_1.global_24
  loc_CC70BF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC70C4: AryUnlock
  loc_CC70C7: AryUnlock
  loc_CC70CA: AryUnlock
  loc_CC70CD: LitI2_Byte 1
  loc_CC70CF: PopTmpLdAd2 var_BA
  loc_CC70D2: FLdPr var_184
  loc_CC70D5: Call clsdetabole.Move(from_stack_1v)
  loc_CC70DA: FLdPr Me
  loc_CC70DD: MemLdRfVar from_stack_1.global_134
  loc_CC70E0: NextI2 var_188, loc_CC6E7E
  loc_CC70E5: FLdPr Me
  loc_CC70E8: VCallAd Control_ID_PeriBoleMsk
  loc_CC70EB: FStAdFunc var_B8
  loc_CC70EE: FLdPr var_B8
  loc_CC70F1: LateIdLdVar var_E4 DispID_22 0
  loc_CC70F8: PopAd
  loc_CC70FA: FLdRfVar var_12C
  loc_CC70FD: FLdPr Me
  loc_CC7100: MemLdRfVar from_stack_1.global_92
  loc_CC7103: NewIfNullPr clsboleto
  loc_CC7106: from_stack_1 = clsboleto.FealBole
  loc_CC710B: FLdRfVar var_12C
  loc_CC710E: FLdRfVar var_13C
  loc_CC7111: ImpAdCallFPR4  = Month()
  loc_CC7116: FLdRfVar var_164
  loc_CC7119: FLdPr Me
  loc_CC711C: MemLdRfVar from_stack_1.global_92
  loc_CC711F: NewIfNullPr clsboleto
  loc_CC7122: from_stack_1 = clsboleto.TotaBole
  loc_CC7127: FLdRfVar var_15C
  loc_CC712A: FLdPr Me
  loc_CC712D: MemLdRfVar from_stack_1.global_92
  loc_CC7130: NewIfNullPr clsboleto
  loc_CC7133: from_stack_1 = clsboleto.FeveBole
  loc_CC7138: FLdRfVar var_15C
  loc_CC713B: CStrVarVal var_EC
  loc_CC713F: FLdFPR8 var_164
  loc_CC7142: CStrR8
  loc_CC7144: FStStrNoPop var_E8
  loc_CC7147: FLdPr Me
  loc_CC714A: MemLdStr global_124
  loc_CC714D: FLdPr Me
  loc_CC7150: MemLdStr global_116
  loc_CC7153: Ary1LdPr
  loc_CC7154: MemLdStr global_124
  loc_CC7157: CUI1Str
  loc_CC7159: LitStr "0000000000000"
  loc_CC715C: FLdRfVar var_13C
  loc_CC715F: CStrVarVal var_D0
  loc_CC7163: FLdPr Me
  loc_CC7166: MemLdStr global_124
  loc_CC7169: FLdPr Me
  loc_CC716C: MemLdStr global_116
  loc_CC716F: Ary1LdPr
  loc_CC7170: MemLdStr global_108
  loc_CC7173: FLdRfVar var_E4
  loc_CC7176: CStrVarTmp
  loc_CC7177: FStStrNoPop var_CC
  loc_CC717A: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_CC717F: PopTmpLdAdStr var_118
  loc_CC7182: FLdPr Me
  loc_CC7185: MemLdStr global_124
  loc_CC7188: FLdPr Me
  loc_CC718B: MemLdStr global_116
  loc_CC718E: Ary1LdPr
  loc_CC718F: MemLdRfVar from_stack_1.global_140
  loc_CC7192: StAryMove
  loc_CC7194: FFreeStr var_CC = "": var_D0 = "": var_E8 = ""
  loc_CC719F: FFree1Ad var_B8
  loc_CC71A2: FFreeVar var_E4 = "": var_12C = "": var_13C = ""
  loc_CC71AD: Branch loc_CC74E2
  loc_CC71B0: FLdPr Me
  loc_CC71B3: MemLdStr global_124
  loc_CC71B6: FLdPr Me
  loc_CC71B9: MemLdStr global_116
  loc_CC71BC: Ary1LdPr
  loc_CC71BD: MemLdStr global_124
  loc_CC71C0: CR8Str
  loc_CC71C2: LitI2_Byte 5
  loc_CC71C4: CR8I2
  loc_CC71C5: EqR4
  loc_CC71C6: BranchF loc_CC7266
  loc_CC71C9: LitStr "SELECT detabole.PeriCtct, detabole.BimeCtct, cast(group_concat(DISTINCT detabole.BimeCtct ORDER BY detabole.BimeCtct ASC SEPARATOR ',') as CHAR) as Bimestres,"
  loc_CC71CC: LitStr " detabole.PeriInfo, detabole.CodiConc, DetaConc, sum(CapiDebo) as CapiDebo, sum(RecaDebo) as RecaDebo, sum(InteDebo) as InteDebo,"
  loc_CC71CF: ConcatStr
  loc_CC71D0: FStStrNoPop var_CC
  loc_CC71D3: LitStr " sum(DecaDebo+DereDebo) as DescDebo, sum(TotaDebo) TotaDebo, detabole.PeriBole, detabole.NumeBole, detabole.NumeCtct, detabole.MoviCtct, detabole.CodiFapa, detabole.CuotDefa, ctacte.ExpeCtct"
  loc_CC71D6: ConcatStr
  loc_CC71D7: FStStrNoPop var_D0
  loc_CC71DA: LitStr " FROM detabole LEFT JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc"
  loc_CC71DD: ConcatStr
  loc_CC71DE: FStStrNoPop var_E8
  loc_CC71E1: LitStr " LEFT JOIN ctacte ON ctacte.CodiOfic = 5 AND ctacte.CuenCtct = detabole.CuenCtct AND ctacte.PeriCtct = detabole.PeriCtct AND ctacte.BimeCtct = detabole.BimeCtct AND ctacte.NumeCtct = detabole.NumeCtct AND ctacte.MoviCtct = 1"
  loc_CC71E4: ConcatStr
  loc_CC71E5: FStStrNoPop var_EC
  loc_CC71E8: LitStr " WHERE detabole.PeriBole = '"
  loc_CC71EB: ConcatStr
  loc_CC71EC: FStStrNoPop var_F0
  loc_CC71EF: FLdPr Me
  loc_CC71F2: VCallAd Control_ID_PeriBoleMsk
  loc_CC71F5: FStAdFunc var_B8
  loc_CC71F8: FLdPr var_B8
  loc_CC71FB: LateIdLdVar var_E4 DispID_22 0
  loc_CC7202: CStrVarTmp
  loc_CC7203: FStStrNoPop var_F4
  loc_CC7206: ConcatStr
  loc_CC7207: FStStrNoPop var_F8
  loc_CC720A: LitStr "' AND detabole.NumeBole = '"
  loc_CC720D: ConcatStr
  loc_CC720E: FStStrNoPop var_FC
  loc_CC7211: FLdPr Me
  loc_CC7214: MemLdStr global_124
  loc_CC7217: FLdPr Me
  loc_CC721A: MemLdStr global_116
  loc_CC721D: Ary1LdPr
  loc_CC721E: MemLdStr global_108
  loc_CC7221: ConcatStr
  loc_CC7222: FStStrNoPop var_100
  loc_CC7225: LitStr "'"
  loc_CC7228: ConcatStr
  loc_CC7229: FStStrNoPop var_104
  loc_CC722C: LitStr " GROUP BY CodiFapa, CuotDefa, CodiConc, PeriCtct, BimeCtct, NumeCtct"
  loc_CC722F: ConcatStr
  loc_CC7230: FStStrNoPop var_108
  loc_CC7233: LitStr " ORDER BY CodiFapa, CodiConc, PeriCtct, BimeCtct"
  loc_CC7236: ConcatStr
  loc_CC7237: FStStrNoPop var_10C
  loc_CC723A: FLdPr var_184
  loc_CC723D: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC7242: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_CC725D: FFree1Ad var_B8
  loc_CC7260: FFree1Var var_E4 = ""
  loc_CC7263: Branch loc_CC72F7
  loc_CC7266: LitStr "SELECT detabole.PeriCtct, BimeCtct, cast(group_concat(DISTINCT BimeCtct ORDER BY BimeCtct ASC SEPARATOR ',') as CHAR) as Bimestres,"
  loc_CC7269: LitStr " detabole.PeriInfo, detabole.CodiConc, DetaConc, sum(CapiDebo) as CapiDebo, sum(RecaDebo) as RecaDebo, sum(InteDebo) as InteDebo,"
  loc_CC726C: ConcatStr
  loc_CC726D: FStStrNoPop var_CC
  loc_CC7270: LitStr " sum(DecaDebo+DereDebo) as DescDebo, sum(TotaDebo) TotaDebo, detabole.PeriBole, detabole.NumeBole, NumeCtct, MoviCtct, CodiFapa, CuotDefa"
  loc_CC7273: ConcatStr
  loc_CC7274: FStStrNoPop var_D0
  loc_CC7277: LitStr " FROM detabole LEFT JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc"
  loc_CC727A: ConcatStr
  loc_CC727B: FStStrNoPop var_E8
  loc_CC727E: LitStr " WHERE detabole.PeriBole = '"
  loc_CC7281: ConcatStr
  loc_CC7282: FStStrNoPop var_EC
  loc_CC7285: FLdPr Me
  loc_CC7288: VCallAd Control_ID_PeriBoleMsk
  loc_CC728B: FStAdFunc var_B8
  loc_CC728E: FLdPr var_B8
  loc_CC7291: LateIdLdVar var_E4 DispID_22 0
  loc_CC7298: CStrVarTmp
  loc_CC7299: FStStrNoPop var_F0
  loc_CC729C: ConcatStr
  loc_CC729D: FStStrNoPop var_F4
  loc_CC72A0: LitStr "' AND detabole.NumeBole = '"
  loc_CC72A3: ConcatStr
  loc_CC72A4: FStStrNoPop var_F8
  loc_CC72A7: FLdPr Me
  loc_CC72AA: MemLdStr global_124
  loc_CC72AD: FLdPr Me
  loc_CC72B0: MemLdStr global_116
  loc_CC72B3: Ary1LdPr
  loc_CC72B4: MemLdStr global_108
  loc_CC72B7: ConcatStr
  loc_CC72B8: FStStrNoPop var_FC
  loc_CC72BB: LitStr "'"
  loc_CC72BE: ConcatStr
  loc_CC72BF: FStStrNoPop var_100
  loc_CC72C2: LitStr " GROUP BY CodiFapa, CuotDefa, CodiConc, PeriCtct"
  loc_CC72C5: ConcatStr
  loc_CC72C6: FStStrNoPop var_104
  loc_CC72C9: LitStr " ORDER BY CodiFapa, CodiConc, PeriCtct, BimeCtct"
  loc_CC72CC: ConcatStr
  loc_CC72CD: FStStrNoPop var_108
  loc_CC72D0: FLdPr var_184
  loc_CC72D3: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC72D8: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_CC72F1: FFree1Ad var_B8
  loc_CC72F4: FFree1Var var_E4 = ""
  loc_CC72F7: FLdRfVar var_118
  loc_CC72FA: FLdPr var_184
  loc_CC72FD: from_stack_1 = clsdetabole.RecordCount
  loc_CC7302: ILdRf var_118
  loc_CC7305: LitI4 0
  loc_CC730A: EqI4
  loc_CC730B: BranchF loc_CC7319
  loc_CC730E: LitStr "No se ha generado detalle para el boleto"
  loc_CC7311: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC7316: Branch loc_CC764B
  loc_CC7319: FLdPr var_184
  loc_CC731C: Call clsdetabole.MoveFirst()
  loc_CC7321: Call Proc_355_28_ADC194()
  loc_CC7326: FLdRfVar var_BA
  loc_CC7329: FLdPr var_184
  loc_CC732C: from_stack_1 = clsdetabole.EOF
  loc_CC7331: FLdI2 var_BA
  loc_CC7334: NotI4
  loc_CC7335: BranchF loc_CC743B
  loc_CC7338: FLdRfVar var_CC
  loc_CC733B: FLdPr var_184
  loc_CC733E: from_stack_1 = clsdetabole.CodiConc
  loc_CC7343: ILdRf var_CC
  loc_CC7346: FLdPr Me
  loc_CC7349: MemLdI2 global_130
  loc_CC734C: CI4UI1
  loc_CC734D: FLdPr Me
  loc_CC7350: MemLdI2 global_128
  loc_CC7353: CI4UI1
  loc_CC7354: FLdPr Me
  loc_CC7357: MemLdStr global_124
  loc_CC735A: FLdPr Me
  loc_CC735D: MemLdStr global_116
  loc_CC7360: Ary1LdPr
  loc_CC7361: MemLdStr global_192
  loc_CC7364: Ary1LdPr
  loc_CC7365: MemLdStr global_0
  loc_CC7368: Ary1LdPr
  loc_CC7369: MemLdStr global_0
  loc_CC736C: NeStr
  loc_CC736E: FFree1Str var_CC
  loc_CC7371: BranchF loc_CC737C
  loc_CC7374: Call Proc_355_29_AE7438()
  loc_CC7379: Branch loc_CC7438
  loc_CC737C: FLdRfVar var_118
  loc_CC737F: FLdPr var_184
  loc_CC7382: from_stack_1 = clsdetabole.CodiFapa
  loc_CC7387: FLdRfVar var_198
  loc_CC738A: FLdPr var_184
  loc_CC738D: from_stack_1 = clsdetabole.PeriCtct
  loc_CC7392: ILdRf var_198
  loc_CC7395: CVarI4
  loc_CC7399: ILdRf var_118
  loc_CC739C: CVarI4
  loc_CC73A0: FLdPr Me
  loc_CC73A3: MemLdI2 global_130
  loc_CC73A6: CI4UI1
  loc_CC73A7: FLdPr Me
  loc_CC73AA: MemLdI2 global_128
  loc_CC73AD: CI4UI1
  loc_CC73AE: FLdPr Me
  loc_CC73B1: MemLdStr global_124
  loc_CC73B4: FLdPr Me
  loc_CC73B7: MemLdStr global_116
  loc_CC73BA: AryLock
  loc_CC73BD: Ary1LdPr
  loc_CC73BE: MemLdStr global_192
  loc_CC73C1: AryLock
  loc_CC73C4: Ary1LdPr
  loc_CC73C5: MemLdStr global_0
  loc_CC73C8: AryLock
  loc_CC73CB: Ary1LdPr
  loc_CC73CC: MemLdRfVar from_stack_1.global_8
  loc_CC73CF: CVarRef
  loc_CC73D4: FLdRfVar var_13C
  loc_CC73D7: ImpAdCallFPR4  = IIf(, , )
  loc_CC73DC: AryUnlock
  loc_CC73DF: AryUnlock
  loc_CC73E2: AryUnlock
  loc_CC73E5: FLdRfVar var_13C
  loc_CC73E8: FLdPr Me
  loc_CC73EB: MemLdI2 global_132
  loc_CC73EE: CI4UI1
  loc_CC73EF: FLdPr Me
  loc_CC73F2: MemLdI2 global_130
  loc_CC73F5: CI4UI1
  loc_CC73F6: FLdPr Me
  loc_CC73F9: MemLdI2 global_128
  loc_CC73FC: CI4UI1
  loc_CC73FD: FLdPr Me
  loc_CC7400: MemLdStr global_124
  loc_CC7403: FLdPr Me
  loc_CC7406: MemLdStr global_116
  loc_CC7409: Ary1LdPr
  loc_CC740A: MemLdStr global_192
  loc_CC740D: Ary1LdPr
  loc_CC740E: MemLdStr global_0
  loc_CC7411: Ary1LdPr
  loc_CC7412: MemLdStr global_12
  loc_CC7415: Ary1LdPr
  loc_CC7416: MemLdStr global_0
  loc_CC7419: CVarStr var_1A8
  loc_CC741C: HardType
  loc_CC741D: NeVarBool
  loc_CC741F: FFreeVar var_E4 = "": var_12C = ""
  loc_CC7428: BranchF loc_CC7433
  loc_CC742B: Call Proc_355_30_AF5C60()
  loc_CC7430: Branch loc_CC7438
  loc_CC7433: Call Proc_355_31_C1EC4C()
  loc_CC7438: Branch loc_CC7326
  loc_CC743B: FLdPr Me
  loc_CC743E: VCallAd Control_ID_PeriBoleMsk
  loc_CC7441: FStAdFunc var_B8
  loc_CC7444: FLdPr var_B8
  loc_CC7447: LateIdLdVar var_E4 DispID_22 0
  loc_CC744E: PopAd
  loc_CC7450: FLdRfVar var_CC
  loc_CC7453: FLdPr Me
  loc_CC7456: MemLdRfVar from_stack_1.global_92
  loc_CC7459: NewIfNullPr clsboleto
  loc_CC745C: from_stack_1 = clsboleto.CuenCtct
  loc_CC7461: FLdRfVar var_164
  loc_CC7464: FLdPr Me
  loc_CC7467: MemLdRfVar from_stack_1.global_92
  loc_CC746A: NewIfNullPr clsboleto
  loc_CC746D: from_stack_1 = clsboleto.TotaBole
  loc_CC7472: LitStr "20/04    /2026"
  loc_CC7475: FLdFPR8 var_164
  loc_CC7478: CStrR8
  loc_CC747A: FStStrNoPop var_E8
  loc_CC747D: FLdPr Me
  loc_CC7480: MemLdStr global_124
  loc_CC7483: FLdPr Me
  loc_CC7486: MemLdStr global_116
  loc_CC7489: Ary1LdPr
  loc_CC748A: MemLdStr global_124
  loc_CC748D: CUI1Str
  loc_CC748F: ILdRf var_CC
  loc_CC7492: FLdPr Me
  loc_CC7495: MemLdStr global_124
  loc_CC7498: FLdPr Me
  loc_CC749B: MemLdStr global_116
  loc_CC749E: Ary1LdPr
  loc_CC749F: MemLdStr global_132
  loc_CC74A2: FLdPr Me
  loc_CC74A5: MemLdStr global_124
  loc_CC74A8: FLdPr Me
  loc_CC74AB: MemLdStr global_116
  loc_CC74AE: Ary1LdPr
  loc_CC74AF: MemLdStr global_108
  loc_CC74B2: FLdRfVar var_E4
  loc_CC74B5: CStrVarTmp
  loc_CC74B6: FStStrNoPop var_D0
  loc_CC74B9: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_CC74BE: PopTmpLdAdStr var_118
  loc_CC74C1: FLdPr Me
  loc_CC74C4: MemLdStr global_124
  loc_CC74C7: FLdPr Me
  loc_CC74CA: MemLdStr global_116
  loc_CC74CD: Ary1LdPr
  loc_CC74CE: MemLdRfVar from_stack_1.global_140
  loc_CC74D1: StAryMove
  loc_CC74D3: FFreeStr var_D0 = "": var_CC = ""
  loc_CC74DC: FFree1Ad var_B8
  loc_CC74DF: FFree1Var var_E4 = ""
  loc_CC74E2: FLdPr Me
  loc_CC74E5: MemLdStr global_124
  loc_CC74E8: FLdPr Me
  loc_CC74EB: MemLdStr global_116
  loc_CC74EE: Ary1LdPr
  loc_CC74EF: MemLdStr global_144
  loc_CC74F2: LitStr vbNullString
  loc_CC74F5: NeStr
  loc_CC74F7: BranchF loc_CC7535
  loc_CC74FA: LitI2_Byte 0
  loc_CC74FC: FLdPr Me
  loc_CC74FF: MemLdStr global_124
  loc_CC7502: FLdPr Me
  loc_CC7505: MemLdStr global_140
  loc_CC7508: AryLock
  loc_CC750B: Ary1LdPr
  loc_CC750C: MemLdRfVar from_stack_1.global_20
  loc_CC750F: CVarRef
  loc_CC7514: LitI2_Byte &HFF
  loc_CC7516: FLdPr Me
  loc_CC7519: MemLdStr global_124
  loc_CC751C: FLdPr Me
  loc_CC751F: MemLdStr global_116
  loc_CC7522: Ary1LdPr
  loc_CC7523: MemLdStr global_144
  loc_CC7526: CVarStr var_A4
  loc_CC7529: PopAdLdVar
  loc_CC752A: FLdRfVar var_94
  loc_CC752D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CC7532: AryUnlock
  loc_CC7535: LitStr "SELECT count(DISTINCT CodiConc) as CodiConc FROM detabole"
  loc_CC7538: LitStr " WHERE detabole.PeriBole = '"
  loc_CC753B: ConcatStr
  loc_CC753C: FStStrNoPop var_CC
  loc_CC753F: FLdPr Me
  loc_CC7542: VCallAd Control_ID_PeriBoleMsk
  loc_CC7545: FStAdFunc var_B8
  loc_CC7548: FLdPr var_B8
  loc_CC754B: LateIdLdVar var_E4 DispID_22 0
  loc_CC7552: CStrVarTmp
  loc_CC7553: FStStrNoPop var_D0
  loc_CC7556: ConcatStr
  loc_CC7557: FStStrNoPop var_E8
  loc_CC755A: LitStr "' AND detabole.NumeBole = '"
  loc_CC755D: ConcatStr
  loc_CC755E: FStStrNoPop var_EC
  loc_CC7561: FLdPr Me
  loc_CC7564: MemLdStr global_124
  loc_CC7567: FLdPr Me
  loc_CC756A: MemLdStr global_116
  loc_CC756D: Ary1LdPr
  loc_CC756E: MemLdStr global_108
  loc_CC7571: ConcatStr
  loc_CC7572: FStStrNoPop var_F0
  loc_CC7575: LitStr "'"
  loc_CC7578: ConcatStr
  loc_CC7579: FStStrNoPop var_F4
  loc_CC757C: LitStr " GROUP BY PeriBole, NumeBole"
  loc_CC757F: ConcatStr
  loc_CC7580: FStStrNoPop var_F8
  loc_CC7583: FLdPr var_184
  loc_CC7586: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC758B: FFreeStr var_CC = "": var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_CC759C: FFree1Ad var_B8
  loc_CC759F: FFree1Var var_E4 = ""
  loc_CC75A2: FLdRfVar var_CC
  loc_CC75A5: FLdPr var_184
  loc_CC75A8: from_stack_1 = clsdetabole.CodiConc
  loc_CC75AD: ILdRf var_CC
  loc_CC75B0: CI2Str
  loc_CC75B2: FLdPr Me
  loc_CC75B5: MemStI2 global_120
  loc_CC75B8: FFree1Str var_CC
  loc_CC75BB: LitStr "CALL fnDeuda('"
  loc_CC75BE: FLdPr Me
  loc_CC75C1: MemLdStr global_124
  loc_CC75C4: FLdPr Me
  loc_CC75C7: MemLdStr global_116
  loc_CC75CA: Ary1LdPr
  loc_CC75CB: MemLdStr global_124
  loc_CC75CE: ConcatStr
  loc_CC75CF: FStStrNoPop var_CC
  loc_CC75D2: LitStr "', '"
  loc_CC75D5: ConcatStr
  loc_CC75D6: FStStrNoPop var_D0
  loc_CC75D9: FLdPr Me
  loc_CC75DC: MemLdStr global_124
  loc_CC75DF: FLdPr Me
  loc_CC75E2: MemLdStr global_116
  loc_CC75E5: Ary1LdPr
  loc_CC75E6: MemLdStr global_40
  loc_CC75E9: ConcatStr
  loc_CC75EA: FStStrNoPop var_E8
  loc_CC75ED: LitStr "', CURRENT_DATE);"
  loc_CC75F0: ConcatStr
  loc_CC75F1: FStStrNoPop var_EC
  loc_CC75F4: FLdPr var_184
  loc_CC75F7: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC75FC: FFreeStr var_CC = "": var_D0 = "": var_E8 = ""
  loc_CC7607: LitStr " SELECT SaldCtct FROM tmp_ctacteboleto WHERE FeveCtct < CURRENT_DATE;"
  loc_CC760A: FLdPr var_184
  loc_CC760D: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CC7612: FLdRfVar var_118
  loc_CC7615: FLdPr var_184
  loc_CC7618: from_stack_1 = clsdetabole.RecordCount
  loc_CC761D: ILdRf var_118
  loc_CC7620: CBoolI4
  loc_CC7622: FLdPr Me
  loc_CC7625: MemLdStr global_124
  loc_CC7628: FLdPr Me
  loc_CC762B: MemLdStr global_116
  loc_CC762E: Ary1LdPr
  loc_CC762F: MemStI2 global_136
  loc_CC7632: LitNothing
  loc_CC7634: FStAd var_184 
  loc_CC7638: FLdPr Me
  loc_CC763B: MemLdRfVar from_stack_1.global_124
  loc_CC763E: NextI4 var_C4, loc_CC50E1
  loc_CC7643: LitI2_Byte &HFF
  loc_CC7645: FLdPr Me
  loc_CC7648: MemStI2 bGenerado
  loc_CC764B: LitI4 0
  loc_CC7650: CI2I4
  loc_CC7651: FLdPr Me
  loc_CC7654: Me.MousePointer = from_stack_1
  loc_CC7659: LitVarStr var_A4, vbNullString
  loc_CC765E: PopAdLdVar
  loc_CC765F: FLdPr Me
  loc_CC7662: VCallAd Control_ID_statusBar
  loc_CC7665: FStAdFunc var_B8
  loc_CC7668: FLdPr var_B8
  loc_CC766B: LateIdSt
  loc_CC7670: FFree1Ad var_B8
  loc_CC7673: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B3D2BC
  'Data Table: 4E16A8
  loc_B3CF88: FLdRfVar var_88
  loc_B3CF8B: LitI2_Byte 0
  loc_B3CF8D: LitI2_Byte &HFF
  loc_B3CF8F: ImpAdLdI4 MemVar_D93C84
  loc_B3CF92: FLdPr Me
  loc_B3CF95: MemLdRfVar from_stack_1.global_68
  loc_B3CF98: NewIfNullPr IFileSystem3
  loc_B3CF9B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B3CFA0: ILdRf var_88
  loc_B3CFA3: FLdPr Me
  loc_B3CFA6: MemStVarAd
  loc_B3CFAA: FFree1Ad var_88
  loc_B3CFAD: LitI2_Byte &HFF
  loc_B3CFAF: ImpAdStI2 MemVar_D93C8A
  loc_B3CFB2: Call Proc_355_33_BD8208()
  loc_B3CFB7: FLdPr Me
  loc_B3CFBA: MemLdStr global_124
  loc_B3CFBD: FLdPr Me
  loc_B3CFC0: MemLdStr global_116
  loc_B3CFC3: Ary1LdPr
  loc_B3CFC4: MemLdStr global_124
  loc_B3CFC7: CR8Str
  loc_B3CFC9: LitI2_Byte 8
  loc_B3CFCB: CR8I2
  loc_B3CFCC: NeR8
  loc_B3CFCD: BranchF loc_B3D276
  loc_B3CFD0: LitI2_Byte 1
  loc_B3CFD2: FLdPr Me
  loc_B3CFD5: MemLdRfVar from_stack_1.global_128
  loc_B3CFD8: FLdPr Me
  loc_B3CFDB: MemLdStr global_124
  loc_B3CFDE: FLdPr Me
  loc_B3CFE1: MemLdStr global_116
  loc_B3CFE4: Ary1LdPr
  loc_B3CFE5: MemLdStr global_192
  loc_B3CFE8: LitI2_Byte 1
  loc_B3CFEA: FnUBound
  loc_B3CFEC: CI2I4
  loc_B3CFED: ForI2 var_8C
  loc_B3CFF3: FLdPr Me
  loc_B3CFF6: MemLdI2 global_128
  loc_B3CFF9: LitI2_Byte 1
  loc_B3CFFB: NeI2
  loc_B3CFFC: BranchF loc_B3D013
  loc_B3CFFF: LitVarStr var_9C, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_B3D004: PopAdLdVar
  loc_B3D005: FLdPr Me
  loc_B3D008: MemLdRfVar from_stack_1.global_72
  loc_B3D00B: LdPrVar
  loc_B3D00D: LateMemCall
  loc_B3D013: Call Proc_355_34_AFC208()
  loc_B3D018: FLdPr Me
  loc_B3D01B: MemLdStr global_124
  loc_B3D01E: FLdPr Me
  loc_B3D021: MemLdStr global_116
  loc_B3D024: Ary1LdPr
  loc_B3D025: MemLdStr global_124
  loc_B3D028: FStStrCopy var_B0
  loc_B3D02B: ILdRf var_B0
  loc_B3D02E: LitI2_Byte 1
  loc_B3D030: CStrUI1
  loc_B3D032: FStStrNoPop var_B4
  loc_B3D035: EqStr
  loc_B3D037: FFree1Str var_B4
  loc_B3D03A: BranchF loc_B3D073
  loc_B3D03D: Call Proc_355_35_B96EF4()
  loc_B3D042: Call Proc_355_41_C24FF0()
  loc_B3D047: FLdPr Me
  loc_B3D04A: MemLdI2 global_128
  loc_B3D04D: CI4UI1
  loc_B3D04E: FLdPr Me
  loc_B3D051: MemLdStr global_124
  loc_B3D054: FLdPr Me
  loc_B3D057: MemLdStr global_116
  loc_B3D05A: Ary1LdPr
  loc_B3D05B: MemLdStr global_192
  loc_B3D05E: LitI2_Byte 1
  loc_B3D060: FnUBound
  loc_B3D062: EqI4
  loc_B3D063: BranchF loc_B3D070
  loc_B3D066: Call Proc_355_43_B79368()
  loc_B3D06B: Call Proc_355_45_B95DC8()
  loc_B3D070: Branch loc_B3D268
  loc_B3D073: ILdRf var_B0
  loc_B3D076: LitI2_Byte 2
  loc_B3D078: CStrUI1
  loc_B3D07A: FStStrNoPop var_B4
  loc_B3D07D: EqStr
  loc_B3D07F: FFree1Str var_B4
  loc_B3D082: BranchF loc_B3D0BB
  loc_B3D085: Call Proc_355_36_B9ECC4()
  loc_B3D08A: Call Proc_355_41_C24FF0()
  loc_B3D08F: FLdPr Me
  loc_B3D092: MemLdI2 global_128
  loc_B3D095: CI4UI1
  loc_B3D096: FLdPr Me
  loc_B3D099: MemLdStr global_124
  loc_B3D09C: FLdPr Me
  loc_B3D09F: MemLdStr global_116
  loc_B3D0A2: Ary1LdPr
  loc_B3D0A3: MemLdStr global_192
  loc_B3D0A6: LitI2_Byte 1
  loc_B3D0A8: FnUBound
  loc_B3D0AA: EqI4
  loc_B3D0AB: BranchF loc_B3D0B8
  loc_B3D0AE: Call Proc_355_43_B79368()
  loc_B3D0B3: Call Proc_355_45_B95DC8()
  loc_B3D0B8: Branch loc_B3D268
  loc_B3D0BB: ILdRf var_B0
  loc_B3D0BE: LitI2_Byte 3
  loc_B3D0C0: CStrUI1
  loc_B3D0C2: FStStrNoPop var_B4
  loc_B3D0C5: EqStr
  loc_B3D0C7: FFree1Str var_B4
  loc_B3D0CA: BranchF loc_B3D103
  loc_B3D0CD: Call Proc_355_37_B5B2A4()
  loc_B3D0D2: Call Proc_355_41_C24FF0()
  loc_B3D0D7: FLdPr Me
  loc_B3D0DA: MemLdI2 global_128
  loc_B3D0DD: CI4UI1
  loc_B3D0DE: FLdPr Me
  loc_B3D0E1: MemLdStr global_124
  loc_B3D0E4: FLdPr Me
  loc_B3D0E7: MemLdStr global_116
  loc_B3D0EA: Ary1LdPr
  loc_B3D0EB: MemLdStr global_192
  loc_B3D0EE: LitI2_Byte 1
  loc_B3D0F0: FnUBound
  loc_B3D0F2: EqI4
  loc_B3D0F3: BranchF loc_B3D100
  loc_B3D0F6: Call Proc_355_43_B79368()
  loc_B3D0FB: Call Proc_355_45_B95DC8()
  loc_B3D100: Branch loc_B3D268
  loc_B3D103: ILdRf var_B0
  loc_B3D106: LitI2_Byte 4
  loc_B3D108: CStrUI1
  loc_B3D10A: FStStrNoPop var_B4
  loc_B3D10D: EqStr
  loc_B3D10F: FFree1Str var_B4
  loc_B3D112: BranchF loc_B3D14B
  loc_B3D115: Call Proc_355_38_B8BBE0()
  loc_B3D11A: Call Proc_355_41_C24FF0()
  loc_B3D11F: FLdPr Me
  loc_B3D122: MemLdI2 global_128
  loc_B3D125: CI4UI1
  loc_B3D126: FLdPr Me
  loc_B3D129: MemLdStr global_124
  loc_B3D12C: FLdPr Me
  loc_B3D12F: MemLdStr global_116
  loc_B3D132: Ary1LdPr
  loc_B3D133: MemLdStr global_192
  loc_B3D136: LitI2_Byte 1
  loc_B3D138: FnUBound
  loc_B3D13A: EqI4
  loc_B3D13B: BranchF loc_B3D148
  loc_B3D13E: Call Proc_355_43_B79368()
  loc_B3D143: Call Proc_355_45_B95DC8()
  loc_B3D148: Branch loc_B3D268
  loc_B3D14B: ILdRf var_B0
  loc_B3D14E: LitI2_Byte 5
  loc_B3D150: CStrUI1
  loc_B3D152: FStStrNoPop var_B4
  loc_B3D155: EqStr
  loc_B3D157: FFree1Str var_B4
  loc_B3D15A: BranchF loc_B3D193
  loc_B3D15D: Call Proc_355_39_B5AE58()
  loc_B3D162: Call Proc_355_41_C24FF0()
  loc_B3D167: FLdPr Me
  loc_B3D16A: MemLdI2 global_128
  loc_B3D16D: CI4UI1
  loc_B3D16E: FLdPr Me
  loc_B3D171: MemLdStr global_124
  loc_B3D174: FLdPr Me
  loc_B3D177: MemLdStr global_116
  loc_B3D17A: Ary1LdPr
  loc_B3D17B: MemLdStr global_192
  loc_B3D17E: LitI2_Byte 1
  loc_B3D180: FnUBound
  loc_B3D182: EqI4
  loc_B3D183: BranchF loc_B3D190
  loc_B3D186: Call Proc_355_43_B79368()
  loc_B3D18B: Call Proc_355_45_B95DC8()
  loc_B3D190: Branch loc_B3D268
  loc_B3D193: ILdRf var_B0
  loc_B3D196: LitI2_Byte 6
  loc_B3D198: CStrUI1
  loc_B3D19A: FStStrNoPop var_B4
  loc_B3D19D: EqStr
  loc_B3D19F: FFree1Str var_B4
  loc_B3D1A2: BranchF loc_B3D1DB
  loc_B3D1A5: Call Proc_355_36_B9ECC4()
  loc_B3D1AA: Call Proc_355_41_C24FF0()
  loc_B3D1AF: FLdPr Me
  loc_B3D1B2: MemLdI2 global_128
  loc_B3D1B5: CI4UI1
  loc_B3D1B6: FLdPr Me
  loc_B3D1B9: MemLdStr global_124
  loc_B3D1BC: FLdPr Me
  loc_B3D1BF: MemLdStr global_116
  loc_B3D1C2: Ary1LdPr
  loc_B3D1C3: MemLdStr global_192
  loc_B3D1C6: LitI2_Byte 1
  loc_B3D1C8: FnUBound
  loc_B3D1CA: EqI4
  loc_B3D1CB: BranchF loc_B3D1D8
  loc_B3D1CE: Call Proc_355_43_B79368()
  loc_B3D1D3: Call Proc_355_45_B95DC8()
  loc_B3D1D8: Branch loc_B3D268
  loc_B3D1DB: ILdRf var_B0
  loc_B3D1DE: LitI2_Byte 7
  loc_B3D1E0: CStrUI1
  loc_B3D1E2: FStStrNoPop var_B4
  loc_B3D1E5: EqStr
  loc_B3D1E7: FFree1Str var_B4
  loc_B3D1EA: BranchF loc_B3D223
  loc_B3D1ED: Call Proc_355_36_B9ECC4()
  loc_B3D1F2: Call Proc_355_41_C24FF0()
  loc_B3D1F7: FLdPr Me
  loc_B3D1FA: MemLdI2 global_128
  loc_B3D1FD: CI4UI1
  loc_B3D1FE: FLdPr Me
  loc_B3D201: MemLdStr global_124
  loc_B3D204: FLdPr Me
  loc_B3D207: MemLdStr global_116
  loc_B3D20A: Ary1LdPr
  loc_B3D20B: MemLdStr global_192
  loc_B3D20E: LitI2_Byte 1
  loc_B3D210: FnUBound
  loc_B3D212: EqI4
  loc_B3D213: BranchF loc_B3D220
  loc_B3D216: Call Proc_355_43_B79368()
  loc_B3D21B: Call Proc_355_45_B95DC8()
  loc_B3D220: Branch loc_B3D268
  loc_B3D223: ILdRf var_B0
  loc_B3D226: LitI2_Byte 8
  loc_B3D228: CStrUI1
  loc_B3D22A: FStStrNoPop var_B4
  loc_B3D22D: EqStr
  loc_B3D22F: FFree1Str var_B4
  loc_B3D232: BranchF loc_B3D268
  loc_B3D235: Call Proc_355_40_B3DCDC()
  loc_B3D23A: Call Proc_355_42_B11594()
  loc_B3D23F: FLdPr Me
  loc_B3D242: MemLdI2 global_128
  loc_B3D245: CI4UI1
  loc_B3D246: FLdPr Me
  loc_B3D249: MemLdStr global_124
  loc_B3D24C: FLdPr Me
  loc_B3D24F: MemLdStr global_116
  loc_B3D252: Ary1LdPr
  loc_B3D253: MemLdStr global_192
  loc_B3D256: LitI2_Byte 1
  loc_B3D258: FnUBound
  loc_B3D25A: EqI4
  loc_B3D25B: BranchF loc_B3D268
  loc_B3D25E: Call Proc_355_44_B3C198()
  loc_B3D263: Call Proc_355_46_B68238()
  loc_B3D268: FLdPr Me
  loc_B3D26B: MemLdRfVar from_stack_1.global_128
  loc_B3D26E: NextI2 var_8C, loc_B3CFF3
  loc_B3D273: Branch loc_B3D28F
  loc_B3D276: Call Proc_355_34_AFC208()
  loc_B3D27B: Call Proc_355_40_B3DCDC()
  loc_B3D280: Call Proc_355_42_B11594()
  loc_B3D285: Call Proc_355_44_B3C198()
  loc_B3D28A: Call Proc_355_46_B68238()
  loc_B3D28F: Call Proc_355_47_9F5EC8()
  loc_B3D294: FLdPr Me
  loc_B3D297: MemLdRfVar from_stack_1.global_72
  loc_B3D29A: LdPrVar
  loc_B3D29C: LateMemCall
  loc_B3D2A2: FLdPr Me
  loc_B3D2A5: MemLdStr global_88
  loc_B3D2A8: LitStr vbNullString
  loc_B3D2AB: EqStr
  loc_B3D2AD: BranchF loc_B3D2B8
  loc_B3D2B0: LitStr vbNullString
  loc_B3D2B3: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B3D2B8: ExitProcHresult
End Sub

Private Function Proc_355_27_B0E804(arg_C) 'B0E804
  'Data Table: 4E16A8
  loc_B0E600: LitI2_Byte 0
  loc_B0E602: FStI2 var_86
  loc_B0E605: FLdPr Me
  loc_B0E608: MemLdRfVar from_stack_1.global_92
  loc_B0E60B: NewIfNullAd
  loc_B0E60E: FStAd var_8C 
  loc_B0E612: LitStr "SELECT NumeBole, CodiOfic FROM boleto WHERE "
  loc_B0E615: LitStr " PeriBole = "
  loc_B0E618: ConcatStr
  loc_B0E619: FStStrNoPop var_A4
  loc_B0E61C: FLdPr Me
  loc_B0E61F: VCallAd Control_ID_PeriBoleMsk
  loc_B0E622: FStAdFunc var_90
  loc_B0E625: FLdPr var_90
  loc_B0E628: LateIdLdVar var_A0 DispID_22 0
  loc_B0E62F: CStrVarTmp
  loc_B0E630: FStStrNoPop var_A8
  loc_B0E633: ConcatStr
  loc_B0E634: FStStrNoPop var_AC
  loc_B0E637: LitStr " AND ExpeBole = 'BoleAuto2026' AND ObseBole = 'AFOROS AUTOMATICOS: PUBLICIDAD COMERCIO' AND CodiUsua = 'root'"
  loc_B0E63A: ConcatStr
  loc_B0E63B: FStStrNoPop var_B0
  loc_B0E63E: LitStr " AND NumeBole BETWEEN "
  loc_B0E641: ConcatStr
  loc_B0E642: FStStrNoPop var_C8
  loc_B0E645: FLdPr Me
  loc_B0E648: VCallAd Control_ID_NumeBoleDesdeMsk
  loc_B0E64B: FStAdFunc var_B4
  loc_B0E64E: FLdPr var_B4
  loc_B0E651: LateIdLdVar var_C4 DispID_22 0
  loc_B0E658: CStrVarTmp
  loc_B0E659: FStStrNoPop var_CC
  loc_B0E65C: ConcatStr
  loc_B0E65D: FStStrNoPop var_D0
  loc_B0E660: LitStr " AND "
  loc_B0E663: ConcatStr
  loc_B0E664: FStStrNoPop var_E8
  loc_B0E667: FLdPr Me
  loc_B0E66A: VCallAd Control_ID_NumeBoleHastaMsk
  loc_B0E66D: FStAdFunc var_D4
  loc_B0E670: FLdPr var_D4
  loc_B0E673: LateIdLdVar var_E4 DispID_22 0
  loc_B0E67A: CStrVarTmp
  loc_B0E67B: FStStrNoPop var_EC
  loc_B0E67E: ConcatStr
  loc_B0E67F: FStStrNoPop var_F0
  loc_B0E682: FLdPr Me
  loc_B0E685: MemLdRfVar from_stack_1.global_92
  loc_B0E688: NewIfNullPr clsboleto
  loc_B0E68B: Call clsboleto.RedefineRS(from_stack_1v)
  loc_B0E690: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_E8 = "": var_EC = ""
  loc_B0E6A7: FFreeAd var_90 = "": var_B4 = ""
  loc_B0E6B0: FFreeVar var_A0 = "": var_C4 = ""
  loc_B0E6B9: FLdRfVar var_F4
  loc_B0E6BC: FLdPr var_8C
  loc_B0E6BF: from_stack_1 = clsboleto.RecordCount
  loc_B0E6C4: ILdRf var_F4
  loc_B0E6C7: LitI4 0
  loc_B0E6CC: EqI4
  loc_B0E6CD: BranchF loc_B0E6DE
  loc_B0E6D0: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B0E6D3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B0E6D8: ExitProcCbHresult
  loc_B0E6DE: FLdI2 arg_C
  loc_B0E6E1: BranchF loc_B0E7F3
  loc_B0E6E4: LitI4 0
  loc_B0E6E9: FLdRfVar var_F4
  loc_B0E6EC: FLdPr var_8C
  loc_B0E6EF: from_stack_1 = clsboleto.RecordCount
  loc_B0E6F4: ILdRf var_F4
  loc_B0E6F7: FLdPr Me
  loc_B0E6FA: MemLdRfVar from_stack_1.global_116
  loc_B0E6FD: Redim
  loc_B0E707: LitI4 0
  loc_B0E70C: FLdPr Me
  loc_B0E70F: MemLdStr global_116
  loc_B0E712: LitI2_Byte 1
  loc_B0E714: FnUBound
  loc_B0E716: FLdPr Me
  loc_B0E719: MemLdRfVar from_stack_1.global_140
  loc_B0E71C: Redim
  loc_B0E726: LitI4 0
  loc_B0E72B: FLdPr Me
  loc_B0E72E: MemLdStr global_116
  loc_B0E731: LitI2_Byte 1
  loc_B0E733: FnUBound
  loc_B0E735: FLdPr Me
  loc_B0E738: MemLdRfVar from_stack_1.global_144
  loc_B0E73B: Redim
  loc_B0E745: FLdPr var_8C
  loc_B0E748: Call clsboleto.MoveFirst()
  loc_B0E74D: LitI4 1
  loc_B0E752: FLdPr Me
  loc_B0E755: MemLdRfVar from_stack_1.global_124
  loc_B0E758: FLdRfVar var_F4
  loc_B0E75B: FLdPr var_8C
  loc_B0E75E: from_stack_1 = clsboleto.RecordCount
  loc_B0E763: ILdRf var_F4
  loc_B0E766: ForI4 var_FC
  loc_B0E76C: FLdRfVar var_F4
  loc_B0E76F: FLdPr var_8C
  loc_B0E772: from_stack_1 = clsboleto.NumeBole
  loc_B0E777: LitI2_Byte 0
  loc_B0E779: LitVar_Missing var_A0
  loc_B0E77C: LitI2_Byte 0
  loc_B0E77E: ILdRf var_F4
  loc_B0E781: CVarI4
  loc_B0E785: PopAdLdVar
  loc_B0E786: FLdPr Me
  loc_B0E789: MemLdStr global_124
  loc_B0E78C: FLdPr Me
  loc_B0E78F: MemLdStr global_116
  loc_B0E792: AryLock
  loc_B0E795: Ary1LdPr
  loc_B0E796: MemLdRfVar from_stack_1.global_108
  loc_B0E799: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B0E79E: AryUnlock
  loc_B0E7A1: FFree1Var var_A0 = ""
  loc_B0E7A4: FLdRfVar var_122
  loc_B0E7A7: FLdPr var_8C
  loc_B0E7AA: from_stack_1 = clsboleto.CodiOfic
  loc_B0E7AF: LitI2_Byte 0
  loc_B0E7B1: LitVar_Missing var_A0
  loc_B0E7B4: LitI2_Byte 0
  loc_B0E7B6: FLdI2 var_122
  loc_B0E7B9: CVarI2 var_110
  loc_B0E7BC: PopAdLdVar
  loc_B0E7BD: FLdPr Me
  loc_B0E7C0: MemLdStr global_124
  loc_B0E7C3: FLdPr Me
  loc_B0E7C6: MemLdStr global_116
  loc_B0E7C9: AryLock
  loc_B0E7CC: Ary1LdPr
  loc_B0E7CD: MemLdRfVar from_stack_1.global_124
  loc_B0E7D0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B0E7D5: AryUnlock
  loc_B0E7D8: FFree1Var var_A0 = ""
  loc_B0E7DB: LitI2_Byte 1
  loc_B0E7DD: PopTmpLdAd2 var_122
  loc_B0E7E0: FLdPr var_8C
  loc_B0E7E3: Call clsboleto.Move(from_stack_1v)
  loc_B0E7E8: FLdPr Me
  loc_B0E7EB: MemLdRfVar from_stack_1.global_124
  loc_B0E7EE: NextI4 var_FC, loc_B0E76C
  loc_B0E7F3: LitNothing
  loc_B0E7F5: FStAd var_8C 
  loc_B0E7F9: LitI2_Byte &HFF
  loc_B0E7FB: FStI2 var_86
  loc_B0E7FE: ExitProcCbHresult
End Function

Private Function Proc_355_28_ADC194() 'ADC194
  'Data Table: 4E16A8
  loc_ADC040: LitI2_Byte 0
  loc_ADC042: FLdPr Me
  loc_ADC045: MemStI2 global_138
  loc_ADC048: LitI2_Byte 0
  loc_ADC04A: FLdPr Me
  loc_ADC04D: MemStI2 global_130
  loc_ADC050: FLdPr Me
  loc_ADC053: MemLdI2 global_128
  loc_ADC056: LitI2_Byte 0
  loc_ADC058: GtI2
  loc_ADC059: BranchF loc_ADC156
  loc_ADC05C: FLdPr Me
  loc_ADC05F: MemLdI2 global_128
  loc_ADC062: CI4UI1
  loc_ADC063: FLdPr Me
  loc_ADC066: MemLdStr global_124
  loc_ADC069: FLdPr Me
  loc_ADC06C: MemLdStr global_116
  loc_ADC06F: AryLock
  loc_ADC072: Ary1LdPr
  loc_ADC073: MemLdStr global_192
  loc_ADC076: AryLock
  loc_ADC079: Ary1LdPr
  loc_ADC07A: MemLdRfVar from_stack_1.global_4
  loc_ADC07D: FStR4 var_90
  loc_ADC080: LitI2_Byte 0
  loc_ADC082: LitVar_Missing var_C0
  loc_ADC085: LitI2_Byte 0
  loc_ADC087: FLdPr Me
  loc_ADC08A: MemLdStr global_124
  loc_ADC08D: FLdPr Me
  loc_ADC090: MemLdStr global_140
  loc_ADC093: Ary1LdPr
  loc_ADC094: MemLdStr global_4
  loc_ADC097: CVarStr var_A0
  loc_ADC09A: PopAdLdVar
  loc_ADC09B: FMemLdRf unk_4E1619
  loc_ADC0A0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_ADC0A5: FFree1Var var_C0 = ""
  loc_ADC0A8: LitI2_Byte 0
  loc_ADC0AA: LitVar_Missing var_C0
  loc_ADC0AD: LitI2_Byte 0
  loc_ADC0AF: FLdPr Me
  loc_ADC0B2: MemLdStr global_124
  loc_ADC0B5: FLdPr Me
  loc_ADC0B8: MemLdStr global_140
  loc_ADC0BB: Ary1LdPr
  loc_ADC0BC: MemLdStr global_8
  loc_ADC0BF: CVarStr var_A0
  loc_ADC0C2: PopAdLdVar
  loc_ADC0C3: FMemLdRf unk_4E1619
  loc_ADC0C8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_ADC0CD: FFree1Var var_C0 = ""
  loc_ADC0D0: LitI2_Byte 0
  loc_ADC0D2: LitVar_Missing var_C0
  loc_ADC0D5: LitI2_Byte 0
  loc_ADC0D7: FLdPr Me
  loc_ADC0DA: MemLdStr global_124
  loc_ADC0DD: FLdPr Me
  loc_ADC0E0: MemLdStr global_140
  loc_ADC0E3: Ary1LdPr
  loc_ADC0E4: MemLdStr global_12
  loc_ADC0E7: CVarStr var_A0
  loc_ADC0EA: PopAdLdVar
  loc_ADC0EB: FMemLdRf unk_4E1619
  loc_ADC0F0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_ADC0F5: FFree1Var var_C0 = ""
  loc_ADC0F8: LitI2_Byte 0
  loc_ADC0FA: LitVar_Missing var_C0
  loc_ADC0FD: LitI2_Byte 0
  loc_ADC0FF: FLdPr Me
  loc_ADC102: MemLdStr global_124
  loc_ADC105: FLdPr Me
  loc_ADC108: MemLdStr global_140
  loc_ADC10B: Ary1LdPr
  loc_ADC10C: MemLdStr global_16
  loc_ADC10F: CVarStr var_A0
  loc_ADC112: PopAdLdVar
  loc_ADC113: FMemLdRf unk_4E1619
  loc_ADC118: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_ADC11D: FFree1Var var_C0 = ""
  loc_ADC120: LitI2_Byte 0
  loc_ADC122: LitVar_Missing var_C0
  loc_ADC125: LitI2_Byte 0
  loc_ADC127: FLdPr Me
  loc_ADC12A: MemLdStr global_124
  loc_ADC12D: FLdPr Me
  loc_ADC130: MemLdStr global_140
  loc_ADC133: Ary1LdPr
  loc_ADC134: MemLdStr global_20
  loc_ADC137: CVarStr var_A0
  loc_ADC13A: PopAdLdVar
  loc_ADC13B: FMemLdRf unk_4E1619
  loc_ADC140: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_ADC145: FFree1Var var_C0 = ""
  loc_ADC148: LitI4 0
  loc_ADC14D: FStR4 var_90
  loc_ADC150: AryUnlock
  loc_ADC153: AryUnlock
  loc_ADC156: FLdPr Me
  loc_ADC159: MemLdI2 global_128
  loc_ADC15C: LitI2_Byte 1
  loc_ADC15E: AddI2
  loc_ADC15F: FLdPr Me
  loc_ADC162: MemStI2 global_128
  loc_ADC165: LitI4 0
  loc_ADC16A: FLdPr Me
  loc_ADC16D: MemLdI2 global_128
  loc_ADC170: CI4UI1
  loc_ADC171: FLdPr Me
  loc_ADC174: MemLdStr global_124
  loc_ADC177: FLdPr Me
  loc_ADC17A: MemLdStr global_116
  loc_ADC17D: Ary1LdPr
  loc_ADC17E: MemLdRfVar from_stack_1.global_192
  loc_ADC181: RedimPreserve
  loc_ADC18B: Call Proc_355_29_AE7438()
  loc_ADC190: ExitProcHresult
End Function

Private Function Proc_355_29_AE7438() 'AE7438
  'Data Table: 4E16A8
  loc_AE72C4: FLdPr Me
  loc_AE72C7: MemLdI2 global_138
  loc_AE72CA: LitI2_Byte &H1E
  loc_AE72CC: GeI2
  loc_AE72CD: BranchF loc_AE72D6
  loc_AE72D0: from_stack_1v = Proc_355_28_ADC194()
  loc_AE72D5: ExitProcHresult
  loc_AE72D6: FLdPr Me
  loc_AE72D9: MemLdI2 global_130
  loc_AE72DC: LitI2_Byte 1
  loc_AE72DE: AddI2
  loc_AE72DF: FLdPr Me
  loc_AE72E2: MemStI2 global_130
  loc_AE72E5: LitI2_Byte 0
  loc_AE72E7: FLdPr Me
  loc_AE72EA: MemStI2 global_132
  loc_AE72ED: FLdPr Me
  loc_AE72F0: MemLdI2 global_138
  loc_AE72F3: LitI2_Byte 1
  loc_AE72F5: AddI2
  loc_AE72F6: FLdPr Me
  loc_AE72F9: MemStI2 global_138
  loc_AE72FC: LitI4 0
  loc_AE7301: FLdPr Me
  loc_AE7304: MemLdI2 global_130
  loc_AE7307: CI4UI1
  loc_AE7308: FLdPr Me
  loc_AE730B: MemLdI2 global_128
  loc_AE730E: CI4UI1
  loc_AE730F: FLdPr Me
  loc_AE7312: MemLdStr global_124
  loc_AE7315: FLdPr Me
  loc_AE7318: MemLdStr global_116
  loc_AE731B: Ary1LdPr
  loc_AE731C: MemLdStr global_192
  loc_AE731F: Ary1LdPr
  loc_AE7320: MemLdRfVar from_stack_1.global_0
  loc_AE7323: RedimPreserve
  loc_AE732D: FLdRfVar var_88
  loc_AE7330: FLdPr Me
  loc_AE7333: MemLdRfVar from_stack_1.global_100
  loc_AE7336: NewIfNullPr clsdetabole
  loc_AE7339: from_stack_1 = clsdetabole.CodiConc
  loc_AE733E: LitI2_Byte 0
  loc_AE7340: LitVar_Missing var_C4
  loc_AE7343: LitI2_Byte 0
  loc_AE7345: FLdZeroAd var_88
  loc_AE7348: CVarStr var_A4
  loc_AE734B: PopAdLdVar
  loc_AE734C: FLdPr Me
  loc_AE734F: MemLdI2 global_130
  loc_AE7352: CI4UI1
  loc_AE7353: FLdPr Me
  loc_AE7356: MemLdI2 global_128
  loc_AE7359: CI4UI1
  loc_AE735A: FLdPr Me
  loc_AE735D: MemLdStr global_124
  loc_AE7360: FLdPr Me
  loc_AE7363: MemLdStr global_116
  loc_AE7366: AryLock
  loc_AE7369: Ary1LdPr
  loc_AE736A: MemLdStr global_192
  loc_AE736D: AryLock
  loc_AE7370: Ary1LdPr
  loc_AE7371: MemLdStr global_0
  loc_AE7374: AryLock
  loc_AE7377: Ary1LdPr
  loc_AE7378: MemLdRfVar from_stack_1.global_0
  loc_AE737B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AE7380: AryUnlock
  loc_AE7383: AryUnlock
  loc_AE7386: AryUnlock
  loc_AE7389: FFreeVar var_A4 = ""
  loc_AE7390: FLdRfVar var_A4
  loc_AE7393: FLdPr Me
  loc_AE7396: MemLdRfVar from_stack_1.global_100
  loc_AE7399: NewIfNullPr clsdetabole
  loc_AE739C: from_stack_1 = clsdetabole.DetaConc
  loc_AE73A1: LitI2_Byte 0
  loc_AE73A3: LitVar_Missing var_C4
  loc_AE73A6: LitI2_Byte 0
  loc_AE73A8: FLdVar var_A4
  loc_AE73AC: FLdPr Me
  loc_AE73AF: MemLdI2 global_130
  loc_AE73B2: CI4UI1
  loc_AE73B3: FLdPr Me
  loc_AE73B6: MemLdI2 global_128
  loc_AE73B9: CI4UI1
  loc_AE73BA: FLdPr Me
  loc_AE73BD: MemLdStr global_124
  loc_AE73C0: FLdPr Me
  loc_AE73C3: MemLdStr global_116
  loc_AE73C6: AryLock
  loc_AE73C9: Ary1LdPr
  loc_AE73CA: MemLdStr global_192
  loc_AE73CD: AryLock
  loc_AE73D0: Ary1LdPr
  loc_AE73D1: MemLdStr global_0
  loc_AE73D4: AryLock
  loc_AE73D7: Ary1LdPr
  loc_AE73D8: MemLdRfVar from_stack_1.global_4
  loc_AE73DB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AE73E0: AryUnlock
  loc_AE73E3: AryUnlock
  loc_AE73E6: AryUnlock
  loc_AE73E9: FFreeVar var_A4 = ""
  loc_AE73F0: FLdRfVar var_C8
  loc_AE73F3: FLdPr Me
  loc_AE73F6: MemLdRfVar from_stack_1.global_100
  loc_AE73F9: NewIfNullPr clsdetabole
  loc_AE73FC: from_stack_1 = clsdetabole.CodiFapa
  loc_AE7401: ILdRf var_C8
  loc_AE7404: LitI4 0
  loc_AE7409: NeI4
  loc_AE740A: FLdPr Me
  loc_AE740D: MemLdI2 global_130
  loc_AE7410: CI4UI1
  loc_AE7411: FLdPr Me
  loc_AE7414: MemLdI2 global_128
  loc_AE7417: CI4UI1
  loc_AE7418: FLdPr Me
  loc_AE741B: MemLdStr global_124
  loc_AE741E: FLdPr Me
  loc_AE7421: MemLdStr global_116
  loc_AE7424: Ary1LdPr
  loc_AE7425: MemLdStr global_192
  loc_AE7428: Ary1LdPr
  loc_AE7429: MemLdStr global_0
  loc_AE742C: Ary1LdPr
  loc_AE742D: MemStI2 global_8
  loc_AE7430: Call Proc_355_30_AF5C60()
  loc_AE7435: ExitProcHresult
  loc_AE7436: LeR8
End Function

Private Function Proc_355_30_AF5C60() 'AF5C60
  'Data Table: 4E16A8
  loc_AF5AA4: FLdPr Me
  loc_AF5AA7: MemLdI2 global_138
  loc_AF5AAA: LitI2_Byte &H1E
  loc_AF5AAC: GeI2
  loc_AF5AAD: BranchF loc_AF5AF6
  loc_AF5AB0: FLdPr Me
  loc_AF5AB3: MemLdI2 global_132
  loc_AF5AB6: LitI2_Byte 0
  loc_AF5AB8: EqI2
  loc_AF5AB9: BranchF loc_AF5AF0
  loc_AF5ABC: LitI4 0
  loc_AF5AC1: FLdPr Me
  loc_AF5AC4: MemLdI2 global_130
  loc_AF5AC7: LitI2_Byte 1
  loc_AF5AC9: SubI2
  loc_AF5ACA: CI4UI1
  loc_AF5ACB: FLdPr Me
  loc_AF5ACE: MemLdI2 global_128
  loc_AF5AD1: CI4UI1
  loc_AF5AD2: FLdPr Me
  loc_AF5AD5: MemLdStr global_124
  loc_AF5AD8: FLdPr Me
  loc_AF5ADB: MemLdStr global_116
  loc_AF5ADE: Ary1LdPr
  loc_AF5ADF: MemLdStr global_192
  loc_AF5AE2: Ary1LdPr
  loc_AF5AE3: MemLdRfVar from_stack_1.global_0
  loc_AF5AE6: RedimPreserve
  loc_AF5AF0: from_stack_1v = Proc_355_28_ADC194()
  loc_AF5AF5: ExitProcHresult
  loc_AF5AF6: FLdPr Me
  loc_AF5AF9: MemLdI2 global_132
  loc_AF5AFC: LitI2_Byte 1
  loc_AF5AFE: AddI2
  loc_AF5AFF: FLdPr Me
  loc_AF5B02: MemStI2 global_132
  loc_AF5B05: LitI2_Byte 0
  loc_AF5B07: FLdPr Me
  loc_AF5B0A: MemStI2 global_134
  loc_AF5B0D: LitI4 0
  loc_AF5B12: FLdPr Me
  loc_AF5B15: MemLdI2 global_132
  loc_AF5B18: CI4UI1
  loc_AF5B19: FLdPr Me
  loc_AF5B1C: MemLdI2 global_130
  loc_AF5B1F: CI4UI1
  loc_AF5B20: FLdPr Me
  loc_AF5B23: MemLdI2 global_128
  loc_AF5B26: CI4UI1
  loc_AF5B27: FLdPr Me
  loc_AF5B2A: MemLdStr global_124
  loc_AF5B2D: FLdPr Me
  loc_AF5B30: MemLdStr global_116
  loc_AF5B33: Ary1LdPr
  loc_AF5B34: MemLdStr global_192
  loc_AF5B37: Ary1LdPr
  loc_AF5B38: MemLdStr global_0
  loc_AF5B3B: Ary1LdPr
  loc_AF5B3C: MemLdRfVar from_stack_1.global_12
  loc_AF5B3F: RedimPreserve
  loc_AF5B49: FLdPr Me
  loc_AF5B4C: MemLdI2 global_130
  loc_AF5B4F: CI4UI1
  loc_AF5B50: FLdPr Me
  loc_AF5B53: MemLdI2 global_128
  loc_AF5B56: CI4UI1
  loc_AF5B57: FLdPr Me
  loc_AF5B5A: MemLdStr global_124
  loc_AF5B5D: FLdPr Me
  loc_AF5B60: MemLdStr global_116
  loc_AF5B63: Ary1LdPr
  loc_AF5B64: MemLdStr global_192
  loc_AF5B67: Ary1LdPr
  loc_AF5B68: MemLdStr global_0
  loc_AF5B6B: Ary1LdPr
  loc_AF5B6C: MemLdI2 global_8
  loc_AF5B6F: BranchF loc_AF5BE6
  loc_AF5B72: FLdRfVar var_88
  loc_AF5B75: FLdPr Me
  loc_AF5B78: MemLdRfVar from_stack_1.global_100
  loc_AF5B7B: NewIfNullPr clsdetabole
  loc_AF5B7E: from_stack_1 = clsdetabole.CodiFapa
  loc_AF5B83: LitI2_Byte 0
  loc_AF5B85: LitVar_Missing var_C8
  loc_AF5B88: LitI2_Byte 0
  loc_AF5B8A: ILdRf var_88
  loc_AF5B8D: CVarI4
  loc_AF5B91: PopAdLdVar
  loc_AF5B92: FLdPr Me
  loc_AF5B95: MemLdI2 global_132
  loc_AF5B98: CI4UI1
  loc_AF5B99: FLdPr Me
  loc_AF5B9C: MemLdI2 global_130
  loc_AF5B9F: CI4UI1
  loc_AF5BA0: FLdPr Me
  loc_AF5BA3: MemLdI2 global_128
  loc_AF5BA6: CI4UI1
  loc_AF5BA7: FLdPr Me
  loc_AF5BAA: MemLdStr global_124
  loc_AF5BAD: FLdPr Me
  loc_AF5BB0: MemLdStr global_116
  loc_AF5BB3: AryLock
  loc_AF5BB6: Ary1LdPr
  loc_AF5BB7: MemLdStr global_192
  loc_AF5BBA: AryLock
  loc_AF5BBD: Ary1LdPr
  loc_AF5BBE: MemLdStr global_0
  loc_AF5BC1: AryLock
  loc_AF5BC4: Ary1LdPr
  loc_AF5BC5: MemLdStr global_12
  loc_AF5BC8: AryLock
  loc_AF5BCB: Ary1LdPr
  loc_AF5BCC: MemLdRfVar from_stack_1.global_0
  loc_AF5BCF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AF5BD4: AryUnlock
  loc_AF5BD7: AryUnlock
  loc_AF5BDA: AryUnlock
  loc_AF5BDD: AryUnlock
  loc_AF5BE0: FFree1Var var_C8 = ""
  loc_AF5BE3: Branch loc_AF5C57
  loc_AF5BE6: FLdRfVar var_88
  loc_AF5BE9: FLdPr Me
  loc_AF5BEC: MemLdRfVar from_stack_1.global_100
  loc_AF5BEF: NewIfNullPr clsdetabole
  loc_AF5BF2: from_stack_1 = clsdetabole.PeriCtct
  loc_AF5BF7: LitI2_Byte 0
  loc_AF5BF9: LitVar_Missing var_C8
  loc_AF5BFC: LitI2_Byte 0
  loc_AF5BFE: ILdRf var_88
  loc_AF5C01: CVarI4
  loc_AF5C05: PopAdLdVar
  loc_AF5C06: FLdPr Me
  loc_AF5C09: MemLdI2 global_132
  loc_AF5C0C: CI4UI1
  loc_AF5C0D: FLdPr Me
  loc_AF5C10: MemLdI2 global_130
  loc_AF5C13: CI4UI1
  loc_AF5C14: FLdPr Me
  loc_AF5C17: MemLdI2 global_128
  loc_AF5C1A: CI4UI1
  loc_AF5C1B: FLdPr Me
  loc_AF5C1E: MemLdStr global_124
  loc_AF5C21: FLdPr Me
  loc_AF5C24: MemLdStr global_116
  loc_AF5C27: AryLock
  loc_AF5C2A: Ary1LdPr
  loc_AF5C2B: MemLdStr global_192
  loc_AF5C2E: AryLock
  loc_AF5C31: Ary1LdPr
  loc_AF5C32: MemLdStr global_0
  loc_AF5C35: AryLock
  loc_AF5C38: Ary1LdPr
  loc_AF5C39: MemLdStr global_12
  loc_AF5C3C: AryLock
  loc_AF5C3F: Ary1LdPr
  loc_AF5C40: MemLdRfVar from_stack_1.global_0
  loc_AF5C43: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AF5C48: AryUnlock
  loc_AF5C4B: AryUnlock
  loc_AF5C4E: AryUnlock
  loc_AF5C51: AryUnlock
  loc_AF5C54: FFree1Var var_C8 = ""
  loc_AF5C57: Call Proc_355_31_C1EC4C()
  loc_AF5C5C: ExitProcHresult
  loc_AF5C5D: FnAbsR4
  loc_AF5C5E: GtI4
End Function

Private Function Proc_355_31_C1EC4C() 'C1EC4C
  'Data Table: 4E16A8
  loc_C1E210: FLdPr Me
  loc_C1E213: MemLdI2 global_138
  loc_C1E216: LitI2_Byte &H1E
  loc_C1E218: GeI2
  loc_C1E219: BranchF loc_C1E222
  loc_C1E21C: from_stack_1v = Proc_355_28_ADC194()
  loc_C1E221: ExitProcHresult
  loc_C1E222: FLdPr Me
  loc_C1E225: MemLdI2 global_134
  loc_C1E228: LitI2_Byte 1
  loc_C1E22A: AddI2
  loc_C1E22B: FLdPr Me
  loc_C1E22E: MemStI2 global_134
  loc_C1E231: FLdPr Me
  loc_C1E234: MemLdI2 global_138
  loc_C1E237: LitI2_Byte 1
  loc_C1E239: AddI2
  loc_C1E23A: FLdPr Me
  loc_C1E23D: MemStI2 global_138
  loc_C1E240: LitI4 0
  loc_C1E245: FLdPr Me
  loc_C1E248: MemLdI2 global_134
  loc_C1E24B: CI4UI1
  loc_C1E24C: FLdPr Me
  loc_C1E24F: MemLdI2 global_132
  loc_C1E252: CI4UI1
  loc_C1E253: FLdPr Me
  loc_C1E256: MemLdI2 global_130
  loc_C1E259: CI4UI1
  loc_C1E25A: FLdPr Me
  loc_C1E25D: MemLdI2 global_128
  loc_C1E260: CI4UI1
  loc_C1E261: FLdPr Me
  loc_C1E264: MemLdStr global_124
  loc_C1E267: FLdPr Me
  loc_C1E26A: MemLdStr global_116
  loc_C1E26D: Ary1LdPr
  loc_C1E26E: MemLdStr global_192
  loc_C1E271: Ary1LdPr
  loc_C1E272: MemLdStr global_0
  loc_C1E275: Ary1LdPr
  loc_C1E276: MemLdStr global_12
  loc_C1E279: Ary1LdPr
  loc_C1E27A: MemLdRfVar from_stack_1.global_4
  loc_C1E27D: RedimPreserve
  loc_C1E287: FLdPr Me
  loc_C1E28A: MemLdI2 global_134
  loc_C1E28D: CI4UI1
  loc_C1E28E: FLdPr Me
  loc_C1E291: MemLdI2 global_132
  loc_C1E294: CI4UI1
  loc_C1E295: FLdPr Me
  loc_C1E298: MemLdI2 global_130
  loc_C1E29B: CI4UI1
  loc_C1E29C: FLdPr Me
  loc_C1E29F: MemLdI2 global_128
  loc_C1E2A2: CI4UI1
  loc_C1E2A3: FLdPr Me
  loc_C1E2A6: MemLdStr global_124
  loc_C1E2A9: FLdPr Me
  loc_C1E2AC: MemLdStr global_116
  loc_C1E2AF: AryLock
  loc_C1E2B2: Ary1LdPr
  loc_C1E2B3: MemLdStr global_192
  loc_C1E2B6: AryLock
  loc_C1E2B9: Ary1LdPr
  loc_C1E2BA: MemLdStr global_0
  loc_C1E2BD: AryLock
  loc_C1E2C0: Ary1LdPr
  loc_C1E2C1: MemLdStr global_12
  loc_C1E2C4: AryLock
  loc_C1E2C7: Ary1LdPr
  loc_C1E2C8: MemLdStr global_4
  loc_C1E2CB: AryLock
  loc_C1E2CE: Ary1LdRf
  loc_C1E2CF: FStR4 var_9C
  loc_C1E2D2: FLdPr Me
  loc_C1E2D5: MemLdI2 global_130
  loc_C1E2D8: CI4UI1
  loc_C1E2D9: FLdPr Me
  loc_C1E2DC: MemLdI2 global_128
  loc_C1E2DF: CI4UI1
  loc_C1E2E0: FLdPr Me
  loc_C1E2E3: MemLdStr global_124
  loc_C1E2E6: FLdPr Me
  loc_C1E2E9: MemLdStr global_116
  loc_C1E2EC: Ary1LdPr
  loc_C1E2ED: MemLdStr global_192
  loc_C1E2F0: Ary1LdPr
  loc_C1E2F1: MemLdStr global_0
  loc_C1E2F4: Ary1LdPr
  loc_C1E2F5: MemLdI2 global_8
  loc_C1E2F8: BranchF loc_C1E32A
  loc_C1E2FB: FLdRfVar var_9E
  loc_C1E2FE: FLdPr Me
  loc_C1E301: MemLdRfVar from_stack_1.global_100
  loc_C1E304: NewIfNullPr clsdetabole
  loc_C1E307: from_stack_1 = clsdetabole.CuotDefa
  loc_C1E30C: LitI2_Byte 0
  loc_C1E30E: LitVar_Missing var_D0
  loc_C1E311: LitI2_Byte 0
  loc_C1E313: FLdI2 var_9E
  loc_C1E316: CVarI2 var_B0
  loc_C1E319: PopAdLdVar
  loc_C1E31A: FMemLdRf unk_4E160D
  loc_C1E31F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1E324: FFree1Var var_D0 = ""
  loc_C1E327: Branch loc_C1E35A
  loc_C1E32A: FLdRfVar var_D4
  loc_C1E32D: FLdPr Me
  loc_C1E330: MemLdRfVar from_stack_1.global_100
  loc_C1E333: NewIfNullPr clsdetabole
  loc_C1E336: from_stack_1 = clsdetabole.Bimestres
  loc_C1E33B: LitI2_Byte 0
  loc_C1E33D: LitVar_Missing var_E4
  loc_C1E340: LitI2_Byte 0
  loc_C1E342: FLdZeroAd var_D4
  loc_C1E345: CVarStr var_D0
  loc_C1E348: PopAdLdVar
  loc_C1E349: FMemLdRf unk_4E160D
  loc_C1E34E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1E353: FFreeVar var_D0 = ""
  loc_C1E35A: FLdPr Me
  loc_C1E35D: MemLdStr global_124
  loc_C1E360: FLdPr Me
  loc_C1E363: MemLdStr global_116
  loc_C1E366: Ary1LdPr
  loc_C1E367: MemLdStr global_132
  loc_C1E36A: LitStr vbNullString
  loc_C1E36D: EqStr
  loc_C1E36F: BranchF loc_C1E3AF
  loc_C1E372: FLdRfVar var_9E
  loc_C1E375: FLdPr Me
  loc_C1E378: MemLdRfVar from_stack_1.global_100
  loc_C1E37B: NewIfNullPr clsdetabole
  loc_C1E37E: from_stack_1 = clsdetabole.BimeCtct
  loc_C1E383: LitI2_Byte 0
  loc_C1E385: LitVar_Missing var_D0
  loc_C1E388: LitI2_Byte 0
  loc_C1E38A: FLdI2 var_9E
  loc_C1E38D: CVarI2 var_B0
  loc_C1E390: PopAdLdVar
  loc_C1E391: FLdPr Me
  loc_C1E394: MemLdStr global_124
  loc_C1E397: FLdPr Me
  loc_C1E39A: MemLdStr global_116
  loc_C1E39D: AryLock
  loc_C1E3A0: Ary1LdPr
  loc_C1E3A1: MemLdRfVar from_stack_1.global_132
  loc_C1E3A4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1E3A9: AryUnlock
  loc_C1E3AC: FFree1Var var_D0 = ""
  loc_C1E3AF: FLdRfVar var_F0
  loc_C1E3B2: FLdPr Me
  loc_C1E3B5: MemLdRfVar from_stack_1.global_100
  loc_C1E3B8: NewIfNullPr clsdetabole
  loc_C1E3BB: from_stack_1 = clsdetabole.CapiDebo
  loc_C1E3C0: LitI2_Byte 0
  loc_C1E3C2: FLdPr Me
  loc_C1E3C5: MemLdStr global_124
  loc_C1E3C8: FLdPr Me
  loc_C1E3CB: MemLdStr global_140
  loc_C1E3CE: AryLock
  loc_C1E3D1: Ary1LdPr
  loc_C1E3D2: MemLdRfVar from_stack_1.global_4
  loc_C1E3D5: CVarRef
  loc_C1E3DA: LitI2_Byte &HFF
  loc_C1E3DC: FLdFPR8 var_F0
  loc_C1E3DF: CVarR8
  loc_C1E3E3: PopAdLdVar
  loc_C1E3E4: FMemLdRf unk_4E160D
  loc_C1E3E9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1E3EE: AryUnlock
  loc_C1E3F1: FLdRfVar var_F0
  loc_C1E3F4: FLdPr Me
  loc_C1E3F7: MemLdRfVar from_stack_1.global_100
  loc_C1E3FA: NewIfNullPr clsdetabole
  loc_C1E3FD: from_stack_1 = clsdetabole.RecaDebo
  loc_C1E402: LitI2_Byte 0
  loc_C1E404: FLdPr Me
  loc_C1E407: MemLdStr global_124
  loc_C1E40A: FLdPr Me
  loc_C1E40D: MemLdStr global_140
  loc_C1E410: AryLock
  loc_C1E413: Ary1LdPr
  loc_C1E414: MemLdRfVar from_stack_1.global_8
  loc_C1E417: CVarRef
  loc_C1E41C: LitI2_Byte &HFF
  loc_C1E41E: FLdFPR8 var_F0
  loc_C1E421: CVarR8
  loc_C1E425: PopAdLdVar
  loc_C1E426: FMemLdRf unk_4E160D
  loc_C1E42B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1E430: AryUnlock
  loc_C1E433: FLdRfVar var_F0
  loc_C1E436: FLdPr Me
  loc_C1E439: MemLdRfVar from_stack_1.global_100
  loc_C1E43C: NewIfNullPr clsdetabole
  loc_C1E43F: from_stack_1 = clsdetabole.InteDebo
  loc_C1E444: LitI2_Byte 0
  loc_C1E446: FLdPr Me
  loc_C1E449: MemLdStr global_124
  loc_C1E44C: FLdPr Me
  loc_C1E44F: MemLdStr global_140
  loc_C1E452: AryLock
  loc_C1E455: Ary1LdPr
  loc_C1E456: MemLdRfVar from_stack_1.global_12
  loc_C1E459: CVarRef
  loc_C1E45E: LitI2_Byte &HFF
  loc_C1E460: FLdFPR8 var_F0
  loc_C1E463: CVarR8
  loc_C1E467: PopAdLdVar
  loc_C1E468: FMemLdRf unk_4E160D
  loc_C1E46D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1E472: AryUnlock
  loc_C1E475: FLdRfVar var_F0
  loc_C1E478: FLdPr Me
  loc_C1E47B: MemLdRfVar from_stack_1.global_100
  loc_C1E47E: NewIfNullPr clsdetabole
  loc_C1E481: from_stack_1 = clsdetabole.DescDebo
  loc_C1E486: LitI2_Byte 0
  loc_C1E488: FLdPr Me
  loc_C1E48B: MemLdStr global_124
  loc_C1E48E: FLdPr Me
  loc_C1E491: MemLdStr global_140
  loc_C1E494: AryLock
  loc_C1E497: Ary1LdPr
  loc_C1E498: MemLdRfVar from_stack_1.global_16
  loc_C1E49B: CVarRef
  loc_C1E4A0: LitI2_Byte &HFF
  loc_C1E4A2: FLdFPR8 var_F0
  loc_C1E4A5: CVarR8
  loc_C1E4A9: PopAdLdVar
  loc_C1E4AA: FMemLdRf unk_4E160D
  loc_C1E4AF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1E4B4: AryUnlock
  loc_C1E4B7: FLdRfVar var_F0
  loc_C1E4BA: FLdPr Me
  loc_C1E4BD: MemLdRfVar from_stack_1.global_100
  loc_C1E4C0: NewIfNullPr clsdetabole
  loc_C1E4C3: from_stack_1 = clsdetabole.TotaDebo
  loc_C1E4C8: LitI2_Byte 0
  loc_C1E4CA: FLdPr Me
  loc_C1E4CD: MemLdStr global_124
  loc_C1E4D0: FLdPr Me
  loc_C1E4D3: MemLdStr global_140
  loc_C1E4D6: AryLock
  loc_C1E4D9: Ary1LdPr
  loc_C1E4DA: MemLdRfVar from_stack_1.global_20
  loc_C1E4DD: CVarRef
  loc_C1E4E2: LitI2_Byte &HFF
  loc_C1E4E4: FLdFPR8 var_F0
  loc_C1E4E7: CVarR8
  loc_C1E4EB: PopAdLdVar
  loc_C1E4EC: FMemLdRf unk_4E160D
  loc_C1E4F1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1E4F6: AryUnlock
  loc_C1E4F9: FLdPr Me
  loc_C1E4FC: MemLdStr global_124
  loc_C1E4FF: FLdPr Me
  loc_C1E502: MemLdStr global_116
  loc_C1E505: Ary1LdPr
  loc_C1E506: MemLdStr global_124
  loc_C1E509: FStStrCopy var_F4
  loc_C1E50C: ILdRf var_F4
  loc_C1E50F: LitI2_Byte 1
  loc_C1E511: CStrUI1
  loc_C1E513: FStStrNoPop var_D4
  loc_C1E516: EqStr
  loc_C1E518: FFree1Str var_D4
  loc_C1E51B: BranchF loc_C1E53C
  loc_C1E51E: LitStr "SELECT CodiCtde FROM boledeta WHERE boledeta.PeriBole = 0 AND boledeta.NumeBole = 0"
  loc_C1E521: LitStr " AND PeriCtct = 0 AND BimeCtct = 0 AND NumeCtct = 0 AND MoviCtct = 0"
  loc_C1E524: ConcatStr
  loc_C1E525: FStStrNoPop var_D4
  loc_C1E528: FLdPr Me
  loc_C1E52B: MemLdRfVar from_stack_1.global_104
  loc_C1E52E: NewIfNullPr clsdetabole
  loc_C1E531: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1E536: FFree1Str var_D4
  loc_C1E539: Branch loc_C1E98C
  loc_C1E53C: ILdRf var_F4
  loc_C1E53F: LitI2_Byte 2
  loc_C1E541: CStrUI1
  loc_C1E543: FStStrNoPop var_D4
  loc_C1E546: EqStr
  loc_C1E548: FFree1Str var_D4
  loc_C1E54B: BranchF loc_C1E56C
  loc_C1E54E: LitStr "SELECT CodiCtde FROM boledeta WHERE boledeta.PeriBole = 0 AND boledeta.NumeBole = 0"
  loc_C1E551: LitStr " AND PeriCtct = 0 AND BimeCtct = 0 AND NumeCtct = 0 AND MoviCtct = 0"
  loc_C1E554: ConcatStr
  loc_C1E555: FStStrNoPop var_D4
  loc_C1E558: FLdPr Me
  loc_C1E55B: MemLdRfVar from_stack_1.global_104
  loc_C1E55E: NewIfNullPr clsdetabole
  loc_C1E561: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1E566: FFree1Str var_D4
  loc_C1E569: Branch loc_C1E98C
  loc_C1E56C: ILdRf var_F4
  loc_C1E56F: LitI2_Byte 3
  loc_C1E571: CStrUI1
  loc_C1E573: FStStrNoPop var_D4
  loc_C1E576: EqStr
  loc_C1E578: FFree1Str var_D4
  loc_C1E57B: BranchF loc_C1E69A
  loc_C1E57E: LitStr "SELECT CodiCtde, '' as DetaBode, ImpoBode, DecaBode, TotaBode FROM boledeta"
  loc_C1E581: LitStr " WHERE boledeta.PeriBole = "
  loc_C1E584: ConcatStr
  loc_C1E585: FStStrNoPop var_D4
  loc_C1E588: FLdRfVar var_9E
  loc_C1E58B: FLdPr Me
  loc_C1E58E: MemLdRfVar from_stack_1.global_100
  loc_C1E591: NewIfNullPr clsdetabole
  loc_C1E594: from_stack_1 = clsdetabole.PeriBole
  loc_C1E599: FLdI2 var_9E
  loc_C1E59C: CStrUI1
  loc_C1E59E: FStStrNoPop var_F8
  loc_C1E5A1: ConcatStr
  loc_C1E5A2: FStStrNoPop var_FC
  loc_C1E5A5: LitStr " AND boledeta.NumeBole = "
  loc_C1E5A8: ConcatStr
  loc_C1E5A9: FStStrNoPop var_104
  loc_C1E5AC: FLdRfVar var_100
  loc_C1E5AF: FLdPr Me
  loc_C1E5B2: MemLdRfVar from_stack_1.global_100
  loc_C1E5B5: NewIfNullPr clsdetabole
  loc_C1E5B8: from_stack_1 = clsdetabole.NumeBole
  loc_C1E5BD: ILdRf var_100
  loc_C1E5C0: CStrI4
  loc_C1E5C2: FStStrNoPop var_108
  loc_C1E5C5: ConcatStr
  loc_C1E5C6: FStStrNoPop var_10C
  loc_C1E5C9: LitStr " AND PeriCtct = "
  loc_C1E5CC: ConcatStr
  loc_C1E5CD: FStStrNoPop var_114
  loc_C1E5D0: FLdRfVar var_110
  loc_C1E5D3: FLdPr Me
  loc_C1E5D6: MemLdRfVar from_stack_1.global_100
  loc_C1E5D9: NewIfNullPr clsdetabole
  loc_C1E5DC: from_stack_1 = clsdetabole.PeriCtct
  loc_C1E5E1: ILdRf var_110
  loc_C1E5E4: CStrI4
  loc_C1E5E6: FStStrNoPop var_118
  loc_C1E5E9: ConcatStr
  loc_C1E5EA: FStStrNoPop var_11C
  loc_C1E5ED: LitStr " AND BimeCtct = "
  loc_C1E5F0: ConcatStr
  loc_C1E5F1: FStStrNoPop var_124
  loc_C1E5F4: FLdRfVar var_11E
  loc_C1E5F7: FLdPr Me
  loc_C1E5FA: MemLdRfVar from_stack_1.global_100
  loc_C1E5FD: NewIfNullPr clsdetabole
  loc_C1E600: from_stack_1 = clsdetabole.BimeCtct
  loc_C1E605: FLdI2 var_11E
  loc_C1E608: CStrUI1
  loc_C1E60A: FStStrNoPop var_128
  loc_C1E60D: ConcatStr
  loc_C1E60E: FStStrNoPop var_12C
  loc_C1E611: LitStr " AND NumeCtct = "
  loc_C1E614: ConcatStr
  loc_C1E615: FStStrNoPop var_134
  loc_C1E618: FLdRfVar var_130
  loc_C1E61B: FLdPr Me
  loc_C1E61E: MemLdRfVar from_stack_1.global_100
  loc_C1E621: NewIfNullPr clsdetabole
  loc_C1E624: from_stack_1 = clsdetabole.NumeCtct
  loc_C1E629: ILdRf var_130
  loc_C1E62C: CStrI4
  loc_C1E62E: FStStrNoPop var_138
  loc_C1E631: ConcatStr
  loc_C1E632: FStStrNoPop var_13C
  loc_C1E635: LitStr " AND MoviCtct = "
  loc_C1E638: ConcatStr
  loc_C1E639: FStStrNoPop var_144
  loc_C1E63C: FLdRfVar var_13E
  loc_C1E63F: FLdPr Me
  loc_C1E642: MemLdRfVar from_stack_1.global_100
  loc_C1E645: NewIfNullPr clsdetabole
  loc_C1E648: from_stack_1 = clsdetabole.MoviCtct
  loc_C1E64D: FLdI2 var_13E
  loc_C1E650: CStrUI1
  loc_C1E652: FStStrNoPop var_148
  loc_C1E655: ConcatStr
  loc_C1E656: FStStrNoPop var_14C
  loc_C1E659: LitStr " ORDER BY PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_C1E65C: ConcatStr
  loc_C1E65D: FStStrNoPop var_150
  loc_C1E660: FLdPr Me
  loc_C1E663: MemLdRfVar from_stack_1.global_104
  loc_C1E666: NewIfNullPr clsdetabole
  loc_C1E669: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1E66E: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_148 = "": var_14C = ""
  loc_C1E697: Branch loc_C1E98C
  loc_C1E69A: ILdRf var_F4
  loc_C1E69D: LitI2_Byte 4
  loc_C1E69F: CStrUI1
  loc_C1E6A1: FStStrNoPop var_D4
  loc_C1E6A4: EqStr
  loc_C1E6A6: FFree1Str var_D4
  loc_C1E6A9: BranchF loc_C1E7D1
  loc_C1E6AC: LitStr "SELECT CodiCtde, DetaSece as DetaBode, ImpoBode, DecaBode, TotaBode FROM boledeta"
  loc_C1E6AF: LitStr " LEFT JOIN servceme ON servceme.PeriOrde = boledeta.PeriOrde AND servceme.CodiSece = CodiCtde"
  loc_C1E6B2: ConcatStr
  loc_C1E6B3: FStStrNoPop var_D4
  loc_C1E6B6: LitStr " WHERE boledeta.PeriBole = "
  loc_C1E6B9: ConcatStr
  loc_C1E6BA: FStStrNoPop var_F8
  loc_C1E6BD: FLdRfVar var_9E
  loc_C1E6C0: FLdPr Me
  loc_C1E6C3: MemLdRfVar from_stack_1.global_100
  loc_C1E6C6: NewIfNullPr clsdetabole
  loc_C1E6C9: from_stack_1 = clsdetabole.PeriBole
  loc_C1E6CE: FLdI2 var_9E
  loc_C1E6D1: CStrUI1
  loc_C1E6D3: FStStrNoPop var_FC
  loc_C1E6D6: ConcatStr
  loc_C1E6D7: FStStrNoPop var_104
  loc_C1E6DA: LitStr " AND boledeta.NumeBole = "
  loc_C1E6DD: ConcatStr
  loc_C1E6DE: FStStrNoPop var_108
  loc_C1E6E1: FLdRfVar var_100
  loc_C1E6E4: FLdPr Me
  loc_C1E6E7: MemLdRfVar from_stack_1.global_100
  loc_C1E6EA: NewIfNullPr clsdetabole
  loc_C1E6ED: from_stack_1 = clsdetabole.NumeBole
  loc_C1E6F2: ILdRf var_100
  loc_C1E6F5: CStrI4
  loc_C1E6F7: FStStrNoPop var_10C
  loc_C1E6FA: ConcatStr
  loc_C1E6FB: FStStrNoPop var_114
  loc_C1E6FE: LitStr " AND PeriCtct = "
  loc_C1E701: ConcatStr
  loc_C1E702: FStStrNoPop var_118
  loc_C1E705: FLdRfVar var_110
  loc_C1E708: FLdPr Me
  loc_C1E70B: MemLdRfVar from_stack_1.global_100
  loc_C1E70E: NewIfNullPr clsdetabole
  loc_C1E711: from_stack_1 = clsdetabole.PeriCtct
  loc_C1E716: ILdRf var_110
  loc_C1E719: CStrI4
  loc_C1E71B: FStStrNoPop var_11C
  loc_C1E71E: ConcatStr
  loc_C1E71F: FStStrNoPop var_124
  loc_C1E722: LitStr " AND BimeCtct = "
  loc_C1E725: ConcatStr
  loc_C1E726: FStStrNoPop var_128
  loc_C1E729: FLdRfVar var_11E
  loc_C1E72C: FLdPr Me
  loc_C1E72F: MemLdRfVar from_stack_1.global_100
  loc_C1E732: NewIfNullPr clsdetabole
  loc_C1E735: from_stack_1 = clsdetabole.BimeCtct
  loc_C1E73A: FLdI2 var_11E
  loc_C1E73D: CStrUI1
  loc_C1E73F: FStStrNoPop var_12C
  loc_C1E742: ConcatStr
  loc_C1E743: FStStrNoPop var_134
  loc_C1E746: LitStr " AND NumeCtct = "
  loc_C1E749: ConcatStr
  loc_C1E74A: FStStrNoPop var_138
  loc_C1E74D: FLdRfVar var_130
  loc_C1E750: FLdPr Me
  loc_C1E753: MemLdRfVar from_stack_1.global_100
  loc_C1E756: NewIfNullPr clsdetabole
  loc_C1E759: from_stack_1 = clsdetabole.NumeCtct
  loc_C1E75E: ILdRf var_130
  loc_C1E761: CStrI4
  loc_C1E763: FStStrNoPop var_13C
  loc_C1E766: ConcatStr
  loc_C1E767: FStStrNoPop var_144
  loc_C1E76A: LitStr " AND MoviCtct = "
  loc_C1E76D: ConcatStr
  loc_C1E76E: FStStrNoPop var_148
  loc_C1E771: FLdRfVar var_13E
  loc_C1E774: FLdPr Me
  loc_C1E777: MemLdRfVar from_stack_1.global_100
  loc_C1E77A: NewIfNullPr clsdetabole
  loc_C1E77D: from_stack_1 = clsdetabole.MoviCtct
  loc_C1E782: FLdI2 var_13E
  loc_C1E785: CStrUI1
  loc_C1E787: FStStrNoPop var_14C
  loc_C1E78A: ConcatStr
  loc_C1E78B: FStStrNoPop var_150
  loc_C1E78E: LitStr " ORDER BY PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_C1E791: ConcatStr
  loc_C1E792: FStStrNoPop var_154
  loc_C1E795: FLdPr Me
  loc_C1E798: MemLdRfVar from_stack_1.global_104
  loc_C1E79B: NewIfNullPr clsdetabole
  loc_C1E79E: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1E7A3: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_C1E7CE: Branch loc_C1E98C
  loc_C1E7D1: ILdRf var_F4
  loc_C1E7D4: LitI2_Byte 5
  loc_C1E7D6: CStrUI1
  loc_C1E7D8: FStStrNoPop var_D4
  loc_C1E7DB: EqStr
  loc_C1E7DD: FFree1Str var_D4
  loc_C1E7E0: BranchF loc_C1E92F
  loc_C1E7E3: LitStr "SELECT CodiCtde, '' as DetaBode, ImpoBode, DecaBode, TotaBode FROM boledeta"
  loc_C1E7E6: LitStr " WHERE boledeta.PeriBole = "
  loc_C1E7E9: ConcatStr
  loc_C1E7EA: FStStrNoPop var_D4
  loc_C1E7ED: FLdRfVar var_9E
  loc_C1E7F0: FLdPr Me
  loc_C1E7F3: MemLdRfVar from_stack_1.global_100
  loc_C1E7F6: NewIfNullPr clsdetabole
  loc_C1E7F9: from_stack_1 = clsdetabole.PeriBole
  loc_C1E7FE: FLdI2 var_9E
  loc_C1E801: CStrUI1
  loc_C1E803: FStStrNoPop var_F8
  loc_C1E806: ConcatStr
  loc_C1E807: FStStrNoPop var_FC
  loc_C1E80A: LitStr " AND boledeta.NumeBole = "
  loc_C1E80D: ConcatStr
  loc_C1E80E: FStStrNoPop var_104
  loc_C1E811: FLdRfVar var_100
  loc_C1E814: FLdPr Me
  loc_C1E817: MemLdRfVar from_stack_1.global_100
  loc_C1E81A: NewIfNullPr clsdetabole
  loc_C1E81D: from_stack_1 = clsdetabole.NumeBole
  loc_C1E822: ILdRf var_100
  loc_C1E825: CStrI4
  loc_C1E827: FStStrNoPop var_108
  loc_C1E82A: ConcatStr
  loc_C1E82B: FStStrNoPop var_10C
  loc_C1E82E: LitStr " AND PeriCtct = "
  loc_C1E831: ConcatStr
  loc_C1E832: FStStrNoPop var_114
  loc_C1E835: FLdRfVar var_110
  loc_C1E838: FLdPr Me
  loc_C1E83B: MemLdRfVar from_stack_1.global_100
  loc_C1E83E: NewIfNullPr clsdetabole
  loc_C1E841: from_stack_1 = clsdetabole.PeriCtct
  loc_C1E846: ILdRf var_110
  loc_C1E849: CStrI4
  loc_C1E84B: FStStrNoPop var_118
  loc_C1E84E: ConcatStr
  loc_C1E84F: FStStrNoPop var_11C
  loc_C1E852: LitStr " AND BimeCtct = "
  loc_C1E855: ConcatStr
  loc_C1E856: FStStrNoPop var_124
  loc_C1E859: FLdRfVar var_11E
  loc_C1E85C: FLdPr Me
  loc_C1E85F: MemLdRfVar from_stack_1.global_100
  loc_C1E862: NewIfNullPr clsdetabole
  loc_C1E865: from_stack_1 = clsdetabole.BimeCtct
  loc_C1E86A: FLdI2 var_11E
  loc_C1E86D: CStrUI1
  loc_C1E86F: FStStrNoPop var_128
  loc_C1E872: ConcatStr
  loc_C1E873: FStStrNoPop var_12C
  loc_C1E876: LitStr " AND NumeCtct = "
  loc_C1E879: ConcatStr
  loc_C1E87A: FStStrNoPop var_134
  loc_C1E87D: FLdRfVar var_130
  loc_C1E880: FLdPr Me
  loc_C1E883: MemLdRfVar from_stack_1.global_100
  loc_C1E886: NewIfNullPr clsdetabole
  loc_C1E889: from_stack_1 = clsdetabole.NumeCtct
  loc_C1E88E: ILdRf var_130
  loc_C1E891: CStrI4
  loc_C1E893: FStStrNoPop var_138
  loc_C1E896: ConcatStr
  loc_C1E897: FStStrNoPop var_13C
  loc_C1E89A: LitStr " AND MoviCtct = "
  loc_C1E89D: ConcatStr
  loc_C1E89E: FStStrNoPop var_144
  loc_C1E8A1: FLdRfVar var_13E
  loc_C1E8A4: FLdPr Me
  loc_C1E8A7: MemLdRfVar from_stack_1.global_100
  loc_C1E8AA: NewIfNullPr clsdetabole
  loc_C1E8AD: from_stack_1 = clsdetabole.MoviCtct
  loc_C1E8B2: FLdI2 var_13E
  loc_C1E8B5: CStrUI1
  loc_C1E8B7: FStStrNoPop var_148
  loc_C1E8BA: ConcatStr
  loc_C1E8BB: FStStrNoPop var_14C
  loc_C1E8BE: LitStr " ORDER BY PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_C1E8C1: ConcatStr
  loc_C1E8C2: FStStrNoPop var_150
  loc_C1E8C5: FLdPr Me
  loc_C1E8C8: MemLdRfVar from_stack_1.global_104
  loc_C1E8CB: NewIfNullPr clsdetabole
  loc_C1E8CE: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1E8D3: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_148 = "": var_14C = ""
  loc_C1E8FC: FLdRfVar var_D4
  loc_C1E8FF: FLdPr Me
  loc_C1E902: MemLdRfVar from_stack_1.global_100
  loc_C1E905: NewIfNullPr clsdetabole
  loc_C1E908: from_stack_1 = clsdetabole.ExpeCtct
  loc_C1E90D: LitI2_Byte 0
  loc_C1E90F: LitVar_Missing var_E4
  loc_C1E912: LitI2_Byte 0
  loc_C1E914: FLdZeroAd var_D4
  loc_C1E917: CVarStr var_D0
  loc_C1E91A: PopAdLdVar
  loc_C1E91B: FMemLdRf unk_4E160D
  loc_C1E920: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1E925: FFreeVar var_D0 = ""
  loc_C1E92C: Branch loc_C1E98C
  loc_C1E92F: ILdRf var_F4
  loc_C1E932: LitI2_Byte 6
  loc_C1E934: CStrUI1
  loc_C1E936: FStStrNoPop var_D4
  loc_C1E939: EqStr
  loc_C1E93B: FFree1Str var_D4
  loc_C1E93E: BranchF loc_C1E95F
  loc_C1E941: LitStr "SELECT CodiCtde FROM boledeta WHERE boledeta.PeriBole = 0 AND boledeta.NumeBole = 0"
  loc_C1E944: LitStr " AND PeriCtct = 0 AND BimeCtct = 0 AND NumeCtct = 0 AND MoviCtct = 0"
  loc_C1E947: ConcatStr
  loc_C1E948: FStStrNoPop var_D4
  loc_C1E94B: FLdPr Me
  loc_C1E94E: MemLdRfVar from_stack_1.global_104
  loc_C1E951: NewIfNullPr clsdetabole
  loc_C1E954: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1E959: FFree1Str var_D4
  loc_C1E95C: Branch loc_C1E98C
  loc_C1E95F: ILdRf var_F4
  loc_C1E962: LitI2_Byte 7
  loc_C1E964: CStrUI1
  loc_C1E966: FStStrNoPop var_D4
  loc_C1E969: EqStr
  loc_C1E96B: FFree1Str var_D4
  loc_C1E96E: BranchF loc_C1E98C
  loc_C1E971: LitStr "SELECT CodiCtde FROM boledeta WHERE boledeta.PeriBole = 0 AND boledeta.NumeBole = 0"
  loc_C1E974: LitStr " AND PeriCtct = 0 AND BimeCtct = 0 AND NumeCtct = 0 AND MoviCtct = 0"
  loc_C1E977: ConcatStr
  loc_C1E978: FStStrNoPop var_D4
  loc_C1E97B: FLdPr Me
  loc_C1E97E: MemLdRfVar from_stack_1.global_104
  loc_C1E981: NewIfNullPr clsdetabole
  loc_C1E984: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C1E989: FFree1Str var_D4
  loc_C1E98C: FLdRfVar var_100
  loc_C1E98F: FLdPr Me
  loc_C1E992: MemLdRfVar from_stack_1.global_104
  loc_C1E995: NewIfNullPr clsdetabole
  loc_C1E998: from_stack_1 = clsdetabole.RecordCount
  loc_C1E99D: ILdRf var_100
  loc_C1E9A0: LitI4 0
  loc_C1E9A5: GtI4
  loc_C1E9A6: BranchF loc_C1EB26
  loc_C1E9A9: LitI4 0
  loc_C1E9AE: FLdRfVar var_100
  loc_C1E9B1: FLdPr Me
  loc_C1E9B4: MemLdRfVar from_stack_1.global_104
  loc_C1E9B7: NewIfNullPr clsdetabole
  loc_C1E9BA: from_stack_1 = clsdetabole.RecordCount
  loc_C1E9BF: ILdRf var_100
  loc_C1E9C2: FMemLdRf unk_4E160D
  loc_C1E9C7: RedimPreserve
  loc_C1E9D1: FMemLdR4 var_9C(24)
  loc_C1E9D6: LitI2_Byte 1
  loc_C1E9D8: FnUBound
  loc_C1E9DA: CI2I4
  loc_C1E9DB: FMemStI2 var_9C(28)
  loc_C1E9E0: FLdPr Me
  loc_C1E9E3: MemLdI2 global_132
  loc_C1E9E6: CI4UI1
  loc_C1E9E7: FLdPr Me
  loc_C1E9EA: MemLdI2 global_130
  loc_C1E9ED: CI4UI1
  loc_C1E9EE: FLdPr Me
  loc_C1E9F1: MemLdI2 global_128
  loc_C1E9F4: CI4UI1
  loc_C1E9F5: FLdPr Me
  loc_C1E9F8: MemLdStr global_124
  loc_C1E9FB: FLdPr Me
  loc_C1E9FE: MemLdStr global_116
  loc_C1EA01: Ary1LdPr
  loc_C1EA02: MemLdStr global_192
  loc_C1EA05: Ary1LdPr
  loc_C1EA06: MemLdStr global_0
  loc_C1EA09: Ary1LdPr
  loc_C1EA0A: MemLdStr global_12
  loc_C1EA0D: Ary1LdPr
  loc_C1EA0E: MemLdI2 global_8
  loc_C1EA11: FMemLdI2 var_9C(28)
  loc_C1EA16: AddI2
  loc_C1EA17: FLdPr Me
  loc_C1EA1A: MemLdI2 global_132
  loc_C1EA1D: CI4UI1
  loc_C1EA1E: FLdPr Me
  loc_C1EA21: MemLdI2 global_130
  loc_C1EA24: CI4UI1
  loc_C1EA25: FLdPr Me
  loc_C1EA28: MemLdI2 global_128
  loc_C1EA2B: CI4UI1
  loc_C1EA2C: FLdPr Me
  loc_C1EA2F: MemLdStr global_124
  loc_C1EA32: FLdPr Me
  loc_C1EA35: MemLdStr global_116
  loc_C1EA38: Ary1LdPr
  loc_C1EA39: MemLdStr global_192
  loc_C1EA3C: Ary1LdPr
  loc_C1EA3D: MemLdStr global_0
  loc_C1EA40: Ary1LdPr
  loc_C1EA41: MemLdStr global_12
  loc_C1EA44: Ary1LdPr
  loc_C1EA45: MemStI2 global_8
  loc_C1EA48: LitI2_Byte 1
  loc_C1EA4A: FLdPr Me
  loc_C1EA4D: MemLdRfVar from_stack_1.global_136
  loc_C1EA50: FMemLdR4 var_9C(24)
  loc_C1EA55: LitI2_Byte 1
  loc_C1EA57: FnUBound
  loc_C1EA59: CI2I4
  loc_C1EA5A: ForI2 var_158
  loc_C1EA60: FLdPr Me
  loc_C1EA63: MemLdI2 global_136
  loc_C1EA66: CI4UI1
  loc_C1EA67: FMemLdR4 var_9C(24)
  loc_C1EA6C: AryLock
  loc_C1EA6F: Ary1LdRf
  loc_C1EA70: FStR4 var_160
  loc_C1EA73: FLdRfVar var_D0
  loc_C1EA76: FLdPr Me
  loc_C1EA79: MemLdRfVar from_stack_1.global_104
  loc_C1EA7C: NewIfNullPr clsdetabole
  loc_C1EA7F: from_stack_1 = clsdetabole.DetaBode
  loc_C1EA84: LitI2_Byte 0
  loc_C1EA86: LitVar_Missing var_E4
  loc_C1EA89: LitI2_Byte 0
  loc_C1EA8B: FLdVar var_D0
  loc_C1EA8F: FMemLdRf 0
  loc_C1EA94: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1EA99: FFreeVar var_D0 = ""
  loc_C1EAA0: FLdRfVar var_F0
  loc_C1EAA3: FLdPr Me
  loc_C1EAA6: MemLdRfVar from_stack_1.global_104
  loc_C1EAA9: NewIfNullPr clsdetabole
  loc_C1EAAC: from_stack_1 = clsdetabole.ImpoBode
  loc_C1EAB1: LitI2_Byte 0
  loc_C1EAB3: LitVar_Missing var_D0
  loc_C1EAB6: LitI2_Byte &HFF
  loc_C1EAB8: FLdFPR8 var_F0
  loc_C1EABB: CVarR8
  loc_C1EABF: PopAdLdVar
  loc_C1EAC0: FMemLdRf 0
  loc_C1EAC5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1EACA: FFree1Var var_D0 = ""
  loc_C1EACD: FLdRfVar var_F0
  loc_C1EAD0: FLdPr Me
  loc_C1EAD3: MemLdRfVar from_stack_1.global_104
  loc_C1EAD6: NewIfNullPr clsdetabole
  loc_C1EAD9: from_stack_1 = clsdetabole.DecaBode
  loc_C1EADE: LitI2_Byte 0
  loc_C1EAE0: LitVar_Missing var_D0
  loc_C1EAE3: LitI2_Byte &HFF
  loc_C1EAE5: FLdFPR8 var_F0
  loc_C1EAE8: CVarR8
  loc_C1EAEC: PopAdLdVar
  loc_C1EAED: FMemLdRf 0
  loc_C1EAF2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1EAF7: FFree1Var var_D0 = ""
  loc_C1EAFA: LitI2_Byte 1
  loc_C1EAFC: PopTmpLdAd2 var_9E
  loc_C1EAFF: FLdPr Me
  loc_C1EB02: MemLdRfVar from_stack_1.global_104
  loc_C1EB05: NewIfNullPr clsdetabole
  loc_C1EB08: Call clsdetabole.Move(from_stack_1v)
  loc_C1EB0D: LitI4 0
  loc_C1EB12: FStR4 var_160
  loc_C1EB15: AryUnlock
  loc_C1EB18: FLdPr Me
  loc_C1EB1B: MemLdRfVar from_stack_1.global_136
  loc_C1EB1E: NextI2 var_158, loc_C1EA60
  loc_C1EB23: Branch loc_C1EC20
  loc_C1EB26: LitI4 0
  loc_C1EB2B: LitI4 1
  loc_C1EB30: FMemLdRf unk_4E160D
  loc_C1EB35: RedimPreserve
  loc_C1EB3F: FMemLdR4 var_9C(24)
  loc_C1EB44: LitI2_Byte 1
  loc_C1EB46: FnUBound
  loc_C1EB48: CI2I4
  loc_C1EB49: FMemStI2 var_9C(28)
  loc_C1EB4E: FLdPr Me
  loc_C1EB51: MemLdI2 global_132
  loc_C1EB54: CI4UI1
  loc_C1EB55: FLdPr Me
  loc_C1EB58: MemLdI2 global_130
  loc_C1EB5B: CI4UI1
  loc_C1EB5C: FLdPr Me
  loc_C1EB5F: MemLdI2 global_128
  loc_C1EB62: CI4UI1
  loc_C1EB63: FLdPr Me
  loc_C1EB66: MemLdStr global_124
  loc_C1EB69: FLdPr Me
  loc_C1EB6C: MemLdStr global_116
  loc_C1EB6F: Ary1LdPr
  loc_C1EB70: MemLdStr global_192
  loc_C1EB73: Ary1LdPr
  loc_C1EB74: MemLdStr global_0
  loc_C1EB77: Ary1LdPr
  loc_C1EB78: MemLdStr global_12
  loc_C1EB7B: Ary1LdPr
  loc_C1EB7C: MemLdI2 global_8
  loc_C1EB7F: FMemLdI2 var_9C(28)
  loc_C1EB84: AddI2
  loc_C1EB85: FLdPr Me
  loc_C1EB88: MemLdI2 global_132
  loc_C1EB8B: CI4UI1
  loc_C1EB8C: FLdPr Me
  loc_C1EB8F: MemLdI2 global_130
  loc_C1EB92: CI4UI1
  loc_C1EB93: FLdPr Me
  loc_C1EB96: MemLdI2 global_128
  loc_C1EB99: CI4UI1
  loc_C1EB9A: FLdPr Me
  loc_C1EB9D: MemLdStr global_124
  loc_C1EBA0: FLdPr Me
  loc_C1EBA3: MemLdStr global_116
  loc_C1EBA6: Ary1LdPr
  loc_C1EBA7: MemLdStr global_192
  loc_C1EBAA: Ary1LdPr
  loc_C1EBAB: MemLdStr global_0
  loc_C1EBAE: Ary1LdPr
  loc_C1EBAF: MemLdStr global_12
  loc_C1EBB2: Ary1LdPr
  loc_C1EBB3: MemStI2 global_8
  loc_C1EBB6: LitI4 1
  loc_C1EBBB: FMemLdR4 var_9C(24)
  loc_C1EBC0: AryLock
  loc_C1EBC3: Ary1LdRf
  loc_C1EBC4: FStR4 var_168
  loc_C1EBC7: LitI2_Byte 0
  loc_C1EBC9: LitVar_Missing var_D0
  loc_C1EBCC: LitI2_Byte 0
  loc_C1EBCE: LitVarStr var_B0, "&nbsp;"
  loc_C1EBD3: PopAdLdVar
  loc_C1EBD4: FMemLdRf 0
  loc_C1EBD9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1EBDE: FFree1Var var_D0 = ""
  loc_C1EBE1: LitI2_Byte 0
  loc_C1EBE3: LitVar_Missing var_D0
  loc_C1EBE6: LitI2_Byte 0
  loc_C1EBE8: LitVarI2 var_B0, 0
  loc_C1EBED: PopAdLdVar
  loc_C1EBEE: FMemLdRf 0
  loc_C1EBF3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1EBF8: FFree1Var var_D0 = ""
  loc_C1EBFB: LitI2_Byte 0
  loc_C1EBFD: LitVar_Missing var_D0
  loc_C1EC00: LitI2_Byte 0
  loc_C1EC02: LitVarI2 var_B0, 0
  loc_C1EC07: PopAdLdVar
  loc_C1EC08: FMemLdRf 0
  loc_C1EC0D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C1EC12: FFree1Var var_D0 = ""
  loc_C1EC15: LitI4 0
  loc_C1EC1A: FStR4 var_168
  loc_C1EC1D: AryUnlock
  loc_C1EC20: LitI4 0
  loc_C1EC25: FStR4 var_9C
  loc_C1EC28: AryUnlock
  loc_C1EC2B: AryUnlock
  loc_C1EC2E: AryUnlock
  loc_C1EC31: AryUnlock
  loc_C1EC34: AryUnlock
  loc_C1EC37: LitI2_Byte 1
  loc_C1EC39: PopTmpLdAd2 var_9E
  loc_C1EC3C: FLdPr Me
  loc_C1EC3F: MemLdRfVar from_stack_1.global_100
  loc_C1EC42: NewIfNullPr clsdetabole
  loc_C1EC45: Call clsdetabole.Move(from_stack_1v)
  loc_C1EC4A: ExitProcHresult
  loc_C1EC4B: UMiI4
End Function

Private Function Proc_355_32_AACDAC() 'AACDAC
  'Data Table: 4E16A8
  loc_AACCF8: ZeroRetVal
  loc_AACCFA: FLdRfVar var_8C
  loc_AACCFD: NewIfNullAd
  loc_AACD00: FStAd var_90 
  loc_AACD04: LitStr "SELECT cast(group_concat(DISTINCT NumeApre ORDER BY NumeApre ASC SEPARATOR ', ') as CHAR) as AutoApre"
  loc_AACD07: LitStr " FROM boleapre WHERE PeriBole = "
  loc_AACD0A: ConcatStr
  loc_AACD0B: FStStrNoPop var_A8
  loc_AACD0E: FLdPr Me
  loc_AACD11: VCallAd Control_ID_PeriBoleMsk
  loc_AACD14: FStAdFunc var_94
  loc_AACD17: FLdPr var_94
  loc_AACD1A: LateIdLdVar var_A4 DispID_22 0
  loc_AACD21: CStrVarTmp
  loc_AACD22: FStStrNoPop var_AC
  loc_AACD25: ConcatStr
  loc_AACD26: FStStrNoPop var_B0
  loc_AACD29: LitStr " AND NumeBole = "
  loc_AACD2C: ConcatStr
  loc_AACD2D: FStStrNoPop var_B4
  loc_AACD30: FLdPr Me
  loc_AACD33: MemLdStr global_124
  loc_AACD36: FLdPr Me
  loc_AACD39: MemLdStr global_116
  loc_AACD3C: Ary1LdPr
  loc_AACD3D: MemLdStr global_108
  loc_AACD40: ConcatStr
  loc_AACD41: FStStrNoPop var_B8
  loc_AACD44: LitStr " GROUP BY PeriBole, NumeBole"
  loc_AACD47: ConcatStr
  loc_AACD48: FStStrNoPop var_BC
  loc_AACD4B: FLdPr var_90
  loc_AACD4E: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_AACD53: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AACD62: FFree1Ad var_94
  loc_AACD65: FFree1Var var_A4 = ""
  loc_AACD68: FLdRfVar var_C0
  loc_AACD6B: FLdPr var_90
  loc_AACD6E: from_stack_1 = clsboleapre.RecordCount
  loc_AACD73: ILdRf var_C0
  loc_AACD76: LitI4 0
  loc_AACD7B: GtI4
  loc_AACD7C: BranchF loc_AACD97
  loc_AACD7F: FLdRfVar var_A4
  loc_AACD82: FLdPr var_90
  loc_AACD85: from_stack_1 = clsboleapre.AutoApre
  loc_AACD8A: FLdRfVar var_A4
  loc_AACD8D: CStrVarTmp
  loc_AACD8E: FStStr var_88
  loc_AACD91: FFree1Var var_A4 = ""
  loc_AACD94: Branch loc_AACD9D
  loc_AACD97: LitStr vbNullString
  loc_AACD9A: FStStrCopy var_88
  loc_AACD9D: LitNothing
  loc_AACD9F: FStAd var_90 
  loc_AACDA3: ExitProcCbHresult
End Function

Private Function Proc_355_33_BD8208() 'BD8208
  'Data Table: 4E16A8
  loc_BD7A90: LitVarI2 var_D8, 12
  loc_BD7A95: LitVarI2 var_B8, 10
  loc_BD7A9A: FLdPr Me
  loc_BD7A9D: MemLdStr global_124
  loc_BD7AA0: FLdPr Me
  loc_BD7AA3: MemLdStr global_116
  loc_BD7AA6: Ary1LdPr
  loc_BD7AA7: MemLdStr global_152
  loc_BD7AAA: FnLenStr
  loc_BD7AAB: LitI4 9
  loc_BD7AB0: GeI4
  loc_BD7AB1: CVarBoolI2 var_98
  loc_BD7AB5: FLdRfVar var_E8
  loc_BD7AB8: ImpAdCallFPR4  = IIf(, , )
  loc_BD7ABD: FLdRfVar var_E8
  loc_BD7AC0: CI2Var
  loc_BD7AC1: FStI2 var_86
  loc_BD7AC4: FFreeVar var_98 = "": var_B8 = "": var_D8 = ""
  loc_BD7ACF: LitVarStr var_98, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_BD7AD4: PopAdLdVar
  loc_BD7AD5: FLdPr Me
  loc_BD7AD8: MemLdRfVar from_stack_1.global_72
  loc_BD7ADB: LdPrVar
  loc_BD7ADD: LateMemCall
  loc_BD7AE3: LitVarStr var_98, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_BD7AE8: PopAdLdVar
  loc_BD7AE9: FLdPr Me
  loc_BD7AEC: MemLdRfVar from_stack_1.global_72
  loc_BD7AEF: LdPrVar
  loc_BD7AF1: LateMemCall
  loc_BD7AF7: LitVarStr var_98, "<head>"
  loc_BD7AFC: PopAdLdVar
  loc_BD7AFD: FLdPr Me
  loc_BD7B00: MemLdRfVar from_stack_1.global_72
  loc_BD7B03: LdPrVar
  loc_BD7B05: LateMemCall
  loc_BD7B0B: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BD7B10: PopAdLdVar
  loc_BD7B11: FLdPr Me
  loc_BD7B14: MemLdRfVar from_stack_1.global_72
  loc_BD7B17: LdPrVar
  loc_BD7B19: LateMemCall
  loc_BD7B1F: LitStr "<title>"
  loc_BD7B22: FLdRfVar var_EC
  loc_BD7B25: FLdPr Me
  loc_BD7B28:  = Me.Caption
  loc_BD7B2D: ILdRf var_EC
  loc_BD7B30: ConcatStr
  loc_BD7B31: FStStrNoPop var_F0
  loc_BD7B34: LitStr "</title>"
  loc_BD7B37: ConcatStr
  loc_BD7B38: CVarStr var_B8
  loc_BD7B3B: PopAdLdVar
  loc_BD7B3C: FLdPr Me
  loc_BD7B3F: MemLdRfVar from_stack_1.global_72
  loc_BD7B42: LdPrVar
  loc_BD7B44: LateMemCall
  loc_BD7B4A: FFreeStr var_EC = ""
  loc_BD7B51: FFree1Var var_B8 = ""
  loc_BD7B54: LitVarStr var_98, "<style type=""text/css"">"
  loc_BD7B59: PopAdLdVar
  loc_BD7B5A: FLdPr Me
  loc_BD7B5D: MemLdRfVar from_stack_1.global_72
  loc_BD7B60: LdPrVar
  loc_BD7B62: LateMemCall
  loc_BD7B68: LitVarStr var_98, "<!--"
  loc_BD7B6D: PopAdLdVar
  loc_BD7B6E: FLdPr Me
  loc_BD7B71: MemLdRfVar from_stack_1.global_72
  loc_BD7B74: LdPrVar
  loc_BD7B76: LateMemCall
  loc_BD7B7C: LitVarStr var_98, ".Encabezado {"
  loc_BD7B81: PopAdLdVar
  loc_BD7B82: FLdPr Me
  loc_BD7B85: MemLdRfVar from_stack_1.global_72
  loc_BD7B88: LdPrVar
  loc_BD7B8A: LateMemCall
  loc_BD7B90: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BD7B95: PopAdLdVar
  loc_BD7B96: FLdPr Me
  loc_BD7B99: MemLdRfVar from_stack_1.global_72
  loc_BD7B9C: LdPrVar
  loc_BD7B9E: LateMemCall
  loc_BD7BA4: LitVarStr var_98, " font-size: 10px;"
  loc_BD7BA9: PopAdLdVar
  loc_BD7BAA: FLdPr Me
  loc_BD7BAD: MemLdRfVar from_stack_1.global_72
  loc_BD7BB0: LdPrVar
  loc_BD7BB2: LateMemCall
  loc_BD7BB8: LitVarStr var_98, " background-color: #F0F0F0;"
  loc_BD7BBD: PopAdLdVar
  loc_BD7BBE: FLdPr Me
  loc_BD7BC1: MemLdRfVar from_stack_1.global_72
  loc_BD7BC4: LdPrVar
  loc_BD7BC6: LateMemCall
  loc_BD7BCC: LitVarStr var_98, "}"
  loc_BD7BD1: PopAdLdVar
  loc_BD7BD2: FLdPr Me
  loc_BD7BD5: MemLdRfVar from_stack_1.global_72
  loc_BD7BD8: LdPrVar
  loc_BD7BDA: LateMemCall
  loc_BD7BE0: LitVarStr var_98, ".Normal {"
  loc_BD7BE5: PopAdLdVar
  loc_BD7BE6: FLdPr Me
  loc_BD7BE9: MemLdRfVar from_stack_1.global_72
  loc_BD7BEC: LdPrVar
  loc_BD7BEE: LateMemCall
  loc_BD7BF4: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD7BF9: PopAdLdVar
  loc_BD7BFA: FLdPr Me
  loc_BD7BFD: MemLdRfVar from_stack_1.global_72
  loc_BD7C00: LdPrVar
  loc_BD7C02: LateMemCall
  loc_BD7C08: LitVarStr var_98, " font-size: 11px;"
  loc_BD7C0D: PopAdLdVar
  loc_BD7C0E: FLdPr Me
  loc_BD7C11: MemLdRfVar from_stack_1.global_72
  loc_BD7C14: LdPrVar
  loc_BD7C16: LateMemCall
  loc_BD7C1C: LitVarStr var_98, " vertical-align: top;"
  loc_BD7C21: PopAdLdVar
  loc_BD7C22: FLdPr Me
  loc_BD7C25: MemLdRfVar from_stack_1.global_72
  loc_BD7C28: LdPrVar
  loc_BD7C2A: LateMemCall
  loc_BD7C30: LitVarStr var_98, "}"
  loc_BD7C35: PopAdLdVar
  loc_BD7C36: FLdPr Me
  loc_BD7C39: MemLdRfVar from_stack_1.global_72
  loc_BD7C3C: LdPrVar
  loc_BD7C3E: LateMemCall
  loc_BD7C44: LitVarStr var_98, ".NormalDetalle {"
  loc_BD7C49: PopAdLdVar
  loc_BD7C4A: FLdPr Me
  loc_BD7C4D: MemLdRfVar from_stack_1.global_72
  loc_BD7C50: LdPrVar
  loc_BD7C52: LateMemCall
  loc_BD7C58: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD7C5D: PopAdLdVar
  loc_BD7C5E: FLdPr Me
  loc_BD7C61: MemLdRfVar from_stack_1.global_72
  loc_BD7C64: LdPrVar
  loc_BD7C66: LateMemCall
  loc_BD7C6C: LitVarStr var_98, " font-size: 9px;"
  loc_BD7C71: PopAdLdVar
  loc_BD7C72: FLdPr Me
  loc_BD7C75: MemLdRfVar from_stack_1.global_72
  loc_BD7C78: LdPrVar
  loc_BD7C7A: LateMemCall
  loc_BD7C80: LitVarStr var_98, " vertical-align: top;"
  loc_BD7C85: PopAdLdVar
  loc_BD7C86: FLdPr Me
  loc_BD7C89: MemLdRfVar from_stack_1.global_72
  loc_BD7C8C: LdPrVar
  loc_BD7C8E: LateMemCall
  loc_BD7C94: LitVarStr var_98, "}"
  loc_BD7C99: PopAdLdVar
  loc_BD7C9A: FLdPr Me
  loc_BD7C9D: MemLdRfVar from_stack_1.global_72
  loc_BD7CA0: LdPrVar
  loc_BD7CA2: LateMemCall
  loc_BD7CA8: LitVarStr var_98, ".NormalBloqueFin {"
  loc_BD7CAD: PopAdLdVar
  loc_BD7CAE: FLdPr Me
  loc_BD7CB1: MemLdRfVar from_stack_1.global_72
  loc_BD7CB4: LdPrVar
  loc_BD7CB6: LateMemCall
  loc_BD7CBC: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD7CC1: PopAdLdVar
  loc_BD7CC2: FLdPr Me
  loc_BD7CC5: MemLdRfVar from_stack_1.global_72
  loc_BD7CC8: LdPrVar
  loc_BD7CCA: LateMemCall
  loc_BD7CD0: LitStr " font-size: "
  loc_BD7CD3: FLdI2 var_86
  loc_BD7CD6: CStrUI1
  loc_BD7CD8: FStStrNoPop var_EC
  loc_BD7CDB: ConcatStr
  loc_BD7CDC: FStStrNoPop var_F0
  loc_BD7CDF: LitStr "px;"
  loc_BD7CE2: ConcatStr
  loc_BD7CE3: CVarStr var_B8
  loc_BD7CE6: PopAdLdVar
  loc_BD7CE7: FLdPr Me
  loc_BD7CEA: MemLdRfVar from_stack_1.global_72
  loc_BD7CED: LdPrVar
  loc_BD7CEF: LateMemCall
  loc_BD7CF5: FFreeStr var_EC = ""
  loc_BD7CFC: FFree1Var var_B8 = ""
  loc_BD7CFF: LitVarStr var_98, " vertical-align: top;"
  loc_BD7D04: PopAdLdVar
  loc_BD7D05: FLdPr Me
  loc_BD7D08: MemLdRfVar from_stack_1.global_72
  loc_BD7D0B: LdPrVar
  loc_BD7D0D: LateMemCall
  loc_BD7D13: LitVarStr var_98, "}"
  loc_BD7D18: PopAdLdVar
  loc_BD7D19: FLdPr Me
  loc_BD7D1C: MemLdRfVar from_stack_1.global_72
  loc_BD7D1F: LdPrVar
  loc_BD7D21: LateMemCall
  loc_BD7D27: LitVarStr var_98, ".NormalBloqueFinGrande {"
  loc_BD7D2C: PopAdLdVar
  loc_BD7D2D: FLdPr Me
  loc_BD7D30: MemLdRfVar from_stack_1.global_72
  loc_BD7D33: LdPrVar
  loc_BD7D35: LateMemCall
  loc_BD7D3B: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD7D40: PopAdLdVar
  loc_BD7D41: FLdPr Me
  loc_BD7D44: MemLdRfVar from_stack_1.global_72
  loc_BD7D47: LdPrVar
  loc_BD7D49: LateMemCall
  loc_BD7D4F: LitStr " font-size: "
  loc_BD7D52: FLdI2 var_86
  loc_BD7D55: LitI2_Byte 4
  loc_BD7D57: AddI2
  loc_BD7D58: CStrUI1
  loc_BD7D5A: FStStrNoPop var_EC
  loc_BD7D5D: ConcatStr
  loc_BD7D5E: FStStrNoPop var_F0
  loc_BD7D61: LitStr "px;"
  loc_BD7D64: ConcatStr
  loc_BD7D65: CVarStr var_B8
  loc_BD7D68: PopAdLdVar
  loc_BD7D69: FLdPr Me
  loc_BD7D6C: MemLdRfVar from_stack_1.global_72
  loc_BD7D6F: LdPrVar
  loc_BD7D71: LateMemCall
  loc_BD7D77: FFreeStr var_EC = ""
  loc_BD7D7E: FFree1Var var_B8 = ""
  loc_BD7D81: LitVarStr var_98, " vertical-align: top;"
  loc_BD7D86: PopAdLdVar
  loc_BD7D87: FLdPr Me
  loc_BD7D8A: MemLdRfVar from_stack_1.global_72
  loc_BD7D8D: LdPrVar
  loc_BD7D8F: LateMemCall
  loc_BD7D95: LitVarStr var_98, "}"
  loc_BD7D9A: PopAdLdVar
  loc_BD7D9B: FLdPr Me
  loc_BD7D9E: MemLdRfVar from_stack_1.global_72
  loc_BD7DA1: LdPrVar
  loc_BD7DA3: LateMemCall
  loc_BD7DA9: LitVarStr var_98, ".NombreMunicipio {"
  loc_BD7DAE: PopAdLdVar
  loc_BD7DAF: FLdPr Me
  loc_BD7DB2: MemLdRfVar from_stack_1.global_72
  loc_BD7DB5: LdPrVar
  loc_BD7DB7: LateMemCall
  loc_BD7DBD: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BD7DC2: PopAdLdVar
  loc_BD7DC3: FLdPr Me
  loc_BD7DC6: MemLdRfVar from_stack_1.global_72
  loc_BD7DC9: LdPrVar
  loc_BD7DCB: LateMemCall
  loc_BD7DD1: LitVarStr var_98, " font-size: 14px;"
  loc_BD7DD6: PopAdLdVar
  loc_BD7DD7: FLdPr Me
  loc_BD7DDA: MemLdRfVar from_stack_1.global_72
  loc_BD7DDD: LdPrVar
  loc_BD7DDF: LateMemCall
  loc_BD7DE5: LitVarStr var_98, " font-weight: bold;"
  loc_BD7DEA: PopAdLdVar
  loc_BD7DEB: FLdPr Me
  loc_BD7DEE: MemLdRfVar from_stack_1.global_72
  loc_BD7DF1: LdPrVar
  loc_BD7DF3: LateMemCall
  loc_BD7DF9: LitVarStr var_98, "}"
  loc_BD7DFE: PopAdLdVar
  loc_BD7DFF: FLdPr Me
  loc_BD7E02: MemLdRfVar from_stack_1.global_72
  loc_BD7E05: LdPrVar
  loc_BD7E07: LateMemCall
  loc_BD7E0D: LitVarStr var_98, ".NombreMunicipioBloqueFin {"
  loc_BD7E12: PopAdLdVar
  loc_BD7E13: FLdPr Me
  loc_BD7E16: MemLdRfVar from_stack_1.global_72
  loc_BD7E19: LdPrVar
  loc_BD7E1B: LateMemCall
  loc_BD7E21: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BD7E26: PopAdLdVar
  loc_BD7E27: FLdPr Me
  loc_BD7E2A: MemLdRfVar from_stack_1.global_72
  loc_BD7E2D: LdPrVar
  loc_BD7E2F: LateMemCall
  loc_BD7E35: LitVarStr var_98, " font-size: 10px;"
  loc_BD7E3A: PopAdLdVar
  loc_BD7E3B: FLdPr Me
  loc_BD7E3E: MemLdRfVar from_stack_1.global_72
  loc_BD7E41: LdPrVar
  loc_BD7E43: LateMemCall
  loc_BD7E49: LitVarStr var_98, "}"
  loc_BD7E4E: PopAdLdVar
  loc_BD7E4F: FLdPr Me
  loc_BD7E52: MemLdRfVar from_stack_1.global_72
  loc_BD7E55: LdPrVar
  loc_BD7E57: LateMemCall
  loc_BD7E5D: LitVarStr var_98, ".DatosMunicipio {"
  loc_BD7E62: PopAdLdVar
  loc_BD7E63: FLdPr Me
  loc_BD7E66: MemLdRfVar from_stack_1.global_72
  loc_BD7E69: LdPrVar
  loc_BD7E6B: LateMemCall
  loc_BD7E71: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BD7E76: PopAdLdVar
  loc_BD7E77: FLdPr Me
  loc_BD7E7A: MemLdRfVar from_stack_1.global_72
  loc_BD7E7D: LdPrVar
  loc_BD7E7F: LateMemCall
  loc_BD7E85: LitVarStr var_98, " font-size: 12px;"
  loc_BD7E8A: PopAdLdVar
  loc_BD7E8B: FLdPr Me
  loc_BD7E8E: MemLdRfVar from_stack_1.global_72
  loc_BD7E91: LdPrVar
  loc_BD7E93: LateMemCall
  loc_BD7E99: LitVarStr var_98, "}"
  loc_BD7E9E: PopAdLdVar
  loc_BD7E9F: FLdPr Me
  loc_BD7EA2: MemLdRfVar from_stack_1.global_72
  loc_BD7EA5: LdPrVar
  loc_BD7EA7: LateMemCall
  loc_BD7EAD: LitVarStr var_98, ".Totales {"
  loc_BD7EB2: PopAdLdVar
  loc_BD7EB3: FLdPr Me
  loc_BD7EB6: MemLdRfVar from_stack_1.global_72
  loc_BD7EB9: LdPrVar
  loc_BD7EBB: LateMemCall
  loc_BD7EC1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD7EC6: PopAdLdVar
  loc_BD7EC7: FLdPr Me
  loc_BD7ECA: MemLdRfVar from_stack_1.global_72
  loc_BD7ECD: LdPrVar
  loc_BD7ECF: LateMemCall
  loc_BD7ED5: LitVarStr var_98, " font-size: 13px;"
  loc_BD7EDA: PopAdLdVar
  loc_BD7EDB: FLdPr Me
  loc_BD7EDE: MemLdRfVar from_stack_1.global_72
  loc_BD7EE1: LdPrVar
  loc_BD7EE3: LateMemCall
  loc_BD7EE9: LitVarStr var_98, " vertical-align: top;"
  loc_BD7EEE: PopAdLdVar
  loc_BD7EEF: FLdPr Me
  loc_BD7EF2: MemLdRfVar from_stack_1.global_72
  loc_BD7EF5: LdPrVar
  loc_BD7EF7: LateMemCall
  loc_BD7EFD: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_BD7F02: PopAdLdVar
  loc_BD7F03: FLdPr Me
  loc_BD7F06: MemLdRfVar from_stack_1.global_72
  loc_BD7F09: LdPrVar
  loc_BD7F0B: LateMemCall
  loc_BD7F11: LitVarStr var_98, " font-weight: bold;"
  loc_BD7F16: PopAdLdVar
  loc_BD7F17: FLdPr Me
  loc_BD7F1A: MemLdRfVar from_stack_1.global_72
  loc_BD7F1D: LdPrVar
  loc_BD7F1F: LateMemCall
  loc_BD7F25: LitVarStr var_98, "}"
  loc_BD7F2A: PopAdLdVar
  loc_BD7F2B: FLdPr Me
  loc_BD7F2E: MemLdRfVar from_stack_1.global_72
  loc_BD7F31: LdPrVar
  loc_BD7F33: LateMemCall
  loc_BD7F39: LitVarStr var_98, ".Total {"
  loc_BD7F3E: PopAdLdVar
  loc_BD7F3F: FLdPr Me
  loc_BD7F42: MemLdRfVar from_stack_1.global_72
  loc_BD7F45: LdPrVar
  loc_BD7F47: LateMemCall
  loc_BD7F4D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD7F52: PopAdLdVar
  loc_BD7F53: FLdPr Me
  loc_BD7F56: MemLdRfVar from_stack_1.global_72
  loc_BD7F59: LdPrVar
  loc_BD7F5B: LateMemCall
  loc_BD7F61: LitVarStr var_98, " font-size: 14px;"
  loc_BD7F66: PopAdLdVar
  loc_BD7F67: FLdPr Me
  loc_BD7F6A: MemLdRfVar from_stack_1.global_72
  loc_BD7F6D: LdPrVar
  loc_BD7F6F: LateMemCall
  loc_BD7F75: LitVarStr var_98, " vertical-align: top;"
  loc_BD7F7A: PopAdLdVar
  loc_BD7F7B: FLdPr Me
  loc_BD7F7E: MemLdRfVar from_stack_1.global_72
  loc_BD7F81: LdPrVar
  loc_BD7F83: LateMemCall
  loc_BD7F89: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_BD7F8E: PopAdLdVar
  loc_BD7F8F: FLdPr Me
  loc_BD7F92: MemLdRfVar from_stack_1.global_72
  loc_BD7F95: LdPrVar
  loc_BD7F97: LateMemCall
  loc_BD7F9D: LitVarStr var_98, " font-weight: bold;"
  loc_BD7FA2: PopAdLdVar
  loc_BD7FA3: FLdPr Me
  loc_BD7FA6: MemLdRfVar from_stack_1.global_72
  loc_BD7FA9: LdPrVar
  loc_BD7FAB: LateMemCall
  loc_BD7FB1: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BD7FB6: PopAdLdVar
  loc_BD7FB7: FLdPr Me
  loc_BD7FBA: MemLdRfVar from_stack_1.global_72
  loc_BD7FBD: LdPrVar
  loc_BD7FBF: LateMemCall
  loc_BD7FC5: LitVarStr var_98, "}"
  loc_BD7FCA: PopAdLdVar
  loc_BD7FCB: FLdPr Me
  loc_BD7FCE: MemLdRfVar from_stack_1.global_72
  loc_BD7FD1: LdPrVar
  loc_BD7FD3: LateMemCall
  loc_BD7FD9: LitVarStr var_98, ".Vencimiento {"
  loc_BD7FDE: PopAdLdVar
  loc_BD7FDF: FLdPr Me
  loc_BD7FE2: MemLdRfVar from_stack_1.global_72
  loc_BD7FE5: LdPrVar
  loc_BD7FE7: LateMemCall
  loc_BD7FED: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD7FF2: PopAdLdVar
  loc_BD7FF3: FLdPr Me
  loc_BD7FF6: MemLdRfVar from_stack_1.global_72
  loc_BD7FF9: LdPrVar
  loc_BD7FFB: LateMemCall
  loc_BD8001: LitStr " font-size: "
  loc_BD8004: FLdI2 var_86
  loc_BD8007: CStrUI1
  loc_BD8009: FStStrNoPop var_EC
  loc_BD800C: ConcatStr
  loc_BD800D: FStStrNoPop var_F0
  loc_BD8010: LitStr "px;"
  loc_BD8013: ConcatStr
  loc_BD8014: CVarStr var_B8
  loc_BD8017: PopAdLdVar
  loc_BD8018: FLdPr Me
  loc_BD801B: MemLdRfVar from_stack_1.global_72
  loc_BD801E: LdPrVar
  loc_BD8020: LateMemCall
  loc_BD8026: FFreeStr var_EC = ""
  loc_BD802D: FFree1Var var_B8 = ""
  loc_BD8030: LitVarStr var_98, " vertical-align: top;"
  loc_BD8035: PopAdLdVar
  loc_BD8036: FLdPr Me
  loc_BD8039: MemLdRfVar from_stack_1.global_72
  loc_BD803C: LdPrVar
  loc_BD803E: LateMemCall
  loc_BD8044: LitVarStr var_98, " font-weight: bold;"
  loc_BD8049: PopAdLdVar
  loc_BD804A: FLdPr Me
  loc_BD804D: MemLdRfVar from_stack_1.global_72
  loc_BD8050: LdPrVar
  loc_BD8052: LateMemCall
  loc_BD8058: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BD805D: PopAdLdVar
  loc_BD805E: FLdPr Me
  loc_BD8061: MemLdRfVar from_stack_1.global_72
  loc_BD8064: LdPrVar
  loc_BD8066: LateMemCall
  loc_BD806C: LitVarStr var_98, "}"
  loc_BD8071: PopAdLdVar
  loc_BD8072: FLdPr Me
  loc_BD8075: MemLdRfVar from_stack_1.global_72
  loc_BD8078: LdPrVar
  loc_BD807A: LateMemCall
  loc_BD8080: LitVarStr var_98, ".Resaltado {"
  loc_BD8085: PopAdLdVar
  loc_BD8086: FLdPr Me
  loc_BD8089: MemLdRfVar from_stack_1.global_72
  loc_BD808C: LdPrVar
  loc_BD808E: LateMemCall
  loc_BD8094: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8099: PopAdLdVar
  loc_BD809A: FLdPr Me
  loc_BD809D: MemLdRfVar from_stack_1.global_72
  loc_BD80A0: LdPrVar
  loc_BD80A2: LateMemCall
  loc_BD80A8: LitVarStr var_98, " font-size: 11px;"
  loc_BD80AD: PopAdLdVar
  loc_BD80AE: FLdPr Me
  loc_BD80B1: MemLdRfVar from_stack_1.global_72
  loc_BD80B4: LdPrVar
  loc_BD80B6: LateMemCall
  loc_BD80BC: LitVarStr var_98, " vertical-align: top;"
  loc_BD80C1: PopAdLdVar
  loc_BD80C2: FLdPr Me
  loc_BD80C5: MemLdRfVar from_stack_1.global_72
  loc_BD80C8: LdPrVar
  loc_BD80CA: LateMemCall
  loc_BD80D0: LitVarStr var_98, " font-weight: bold;"
  loc_BD80D5: PopAdLdVar
  loc_BD80D6: FLdPr Me
  loc_BD80D9: MemLdRfVar from_stack_1.global_72
  loc_BD80DC: LdPrVar
  loc_BD80DE: LateMemCall
  loc_BD80E4: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BD80E9: PopAdLdVar
  loc_BD80EA: FLdPr Me
  loc_BD80ED: MemLdRfVar from_stack_1.global_72
  loc_BD80F0: LdPrVar
  loc_BD80F2: LateMemCall
  loc_BD80F8: LitVarStr var_98, "}"
  loc_BD80FD: PopAdLdVar
  loc_BD80FE: FLdPr Me
  loc_BD8101: MemLdRfVar from_stack_1.global_72
  loc_BD8104: LdPrVar
  loc_BD8106: LateMemCall
  loc_BD810C: LitVarStr var_98, ".CodBar {"
  loc_BD8111: PopAdLdVar
  loc_BD8112: FLdPr Me
  loc_BD8115: MemLdRfVar from_stack_1.global_72
  loc_BD8118: LdPrVar
  loc_BD811A: LateMemCall
  loc_BD8120: LitVarStr var_98, " font-family: ""Code 128"";"
  loc_BD8125: PopAdLdVar
  loc_BD8126: FLdPr Me
  loc_BD8129: MemLdRfVar from_stack_1.global_72
  loc_BD812C: LdPrVar
  loc_BD812E: LateMemCall
  loc_BD8134: LitStr " font-size: "
  loc_BD8137: LitI2_Byte &H30
  loc_BD8139: CStrUI1
  loc_BD813B: FStStrNoPop var_EC
  loc_BD813E: ConcatStr
  loc_BD813F: FStStrNoPop var_F0
  loc_BD8142: LitStr "px;"
  loc_BD8145: ConcatStr
  loc_BD8146: CVarStr var_B8
  loc_BD8149: PopAdLdVar
  loc_BD814A: FLdPr Me
  loc_BD814D: MemLdRfVar from_stack_1.global_72
  loc_BD8150: LdPrVar
  loc_BD8152: LateMemCall
  loc_BD8158: FFreeStr var_EC = ""
  loc_BD815F: FFree1Var var_B8 = ""
  loc_BD8162: LitVarStr var_98, " font-style: normal;"
  loc_BD8167: PopAdLdVar
  loc_BD8168: FLdPr Me
  loc_BD816B: MemLdRfVar from_stack_1.global_72
  loc_BD816E: LdPrVar
  loc_BD8170: LateMemCall
  loc_BD8176: LitVarStr var_98, " line-height: normal;"
  loc_BD817B: PopAdLdVar
  loc_BD817C: FLdPr Me
  loc_BD817F: MemLdRfVar from_stack_1.global_72
  loc_BD8182: LdPrVar
  loc_BD8184: LateMemCall
  loc_BD818A: LitVarStr var_98, " font-weight: normal;"
  loc_BD818F: PopAdLdVar
  loc_BD8190: FLdPr Me
  loc_BD8193: MemLdRfVar from_stack_1.global_72
  loc_BD8196: LdPrVar
  loc_BD8198: LateMemCall
  loc_BD819E: LitVarStr var_98, "}"
  loc_BD81A3: PopAdLdVar
  loc_BD81A4: FLdPr Me
  loc_BD81A7: MemLdRfVar from_stack_1.global_72
  loc_BD81AA: LdPrVar
  loc_BD81AC: LateMemCall
  loc_BD81B2: LitVarStr var_98, "-->"
  loc_BD81B7: PopAdLdVar
  loc_BD81B8: FLdPr Me
  loc_BD81BB: MemLdRfVar from_stack_1.global_72
  loc_BD81BE: LdPrVar
  loc_BD81C0: LateMemCall
  loc_BD81C6: LitVarStr var_98, "</style>"
  loc_BD81CB: PopAdLdVar
  loc_BD81CC: FLdPr Me
  loc_BD81CF: MemLdRfVar from_stack_1.global_72
  loc_BD81D2: LdPrVar
  loc_BD81D4: LateMemCall
  loc_BD81DA: LitI4 0
  loc_BD81DF: FStStrCopy var_F0
  loc_BD81E2: FLdRfVar var_F0
  loc_BD81E5: LitI4 0
  loc_BD81EA: FStStrCopy var_EC
  loc_BD81ED: FLdRfVar var_EC
  loc_BD81F0: LitI2_Byte 0
  loc_BD81F2: PopTmpLdAd2 var_F2
  loc_BD81F5: FLdPr Me
  loc_BD81F8: MemLdRfVar from_stack_1.global_72
  loc_BD81FB: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BD8200: FFreeStr var_EC = ""
  loc_BD8207: ExitProcHresult
End Function

Private Function Proc_355_34_AFC208() 'AFC208
  'Data Table: 4E16A8
  loc_AFC050: LitVarStr var_94, "<table align=""center"" height=""780"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_AFC055: PopAdLdVar
  loc_AFC056: FLdPr Me
  loc_AFC059: MemLdRfVar from_stack_1.global_72
  loc_AFC05C: LdPrVar
  loc_AFC05E: LateMemCall
  loc_AFC064: LitVarStr var_94, "  <tr valign=""top""><td>"
  loc_AFC069: PopAdLdVar
  loc_AFC06A: FLdPr Me
  loc_AFC06D: MemLdRfVar from_stack_1.global_72
  loc_AFC070: LdPrVar
  loc_AFC072: LateMemCall
  loc_AFC078: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_AFC07D: PopAdLdVar
  loc_AFC07E: FLdPr Me
  loc_AFC081: MemLdRfVar from_stack_1.global_72
  loc_AFC084: LdPrVar
  loc_AFC086: LateMemCall
  loc_AFC08C: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AFC091: PopAdLdVar
  loc_AFC092: FLdPr Me
  loc_AFC095: MemLdRfVar from_stack_1.global_72
  loc_AFC098: LdPrVar
  loc_AFC09A: LateMemCall
  loc_AFC0A0: LitStr "    <td height=""63"" colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_AFC0A3: LitI2_Byte &H5F
  loc_AFC0A5: CStrUI1
  loc_AFC0A7: FStStrNoPop var_A8
  loc_AFC0AA: ConcatStr
  loc_AFC0AB: FStStrNoPop var_AC
  loc_AFC0AE: LitStr """ height="""
  loc_AFC0B1: ConcatStr
  loc_AFC0B2: FStStrNoPop var_B0
  loc_AFC0B5: LitI2_Byte &H3C
  loc_AFC0B7: CStrUI1
  loc_AFC0B9: FStStrNoPop var_B4
  loc_AFC0BC: ConcatStr
  loc_AFC0BD: FStStrNoPop var_B8
  loc_AFC0C0: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_AFC0C3: ConcatStr
  loc_AFC0C4: FStStrNoPop var_BC
  loc_AFC0C7: LitI2_Byte &H3C
  loc_AFC0C9: CStrUI1
  loc_AFC0CB: FStStrNoPop var_C0
  loc_AFC0CE: ConcatStr
  loc_AFC0CF: FStStrNoPop var_C4
  loc_AFC0D2: LitStr """ height="""
  loc_AFC0D5: ConcatStr
  loc_AFC0D6: FStStrNoPop var_C8
  loc_AFC0D9: LitI2_Byte &H3C
  loc_AFC0DB: CStrUI1
  loc_AFC0DD: FStStrNoPop var_CC
  loc_AFC0E0: ConcatStr
  loc_AFC0E1: FStStrNoPop var_D0
  loc_AFC0E4: LitStr """ align=""right"" /><span class=""NombreMunicipio"">"
  loc_AFC0E7: ConcatStr
  loc_AFC0E8: FStStrNoPop var_D4
  loc_AFC0EB: LitStr "Municipalidad de Guaymallén"
  loc_AFC0EE: ConcatStr
  loc_AFC0EF: FStStrNoPop var_D8
  loc_AFC0F2: LitStr "</span><br />"
  loc_AFC0F5: ConcatStr
  loc_AFC0F6: CVarStr var_E8
  loc_AFC0F9: PopAdLdVar
  loc_AFC0FA: FLdPr Me
  loc_AFC0FD: MemLdRfVar from_stack_1.global_72
  loc_AFC100: LdPrVar
  loc_AFC102: LateMemCall
  loc_AFC108: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AFC125: FFree1Var var_E8 = ""
  loc_AFC128: LitStr "    "
  loc_AFC12B: LitStr "Dirección de Rentas"
  loc_AFC12E: ConcatStr
  loc_AFC12F: FStStrNoPop var_A8
  loc_AFC132: LitStr "<br>"
  loc_AFC135: ConcatStr
  loc_AFC136: CVarStr var_E8
  loc_AFC139: PopAdLdVar
  loc_AFC13A: FLdPr Me
  loc_AFC13D: MemLdRfVar from_stack_1.global_72
  loc_AFC140: LdPrVar
  loc_AFC142: LateMemCall
  loc_AFC148: FFree1Str var_A8
  loc_AFC14B: FFree1Var var_E8 = ""
  loc_AFC14E: LitStr "    "
  loc_AFC151: LitStr "Libertad 720 - Villa Nueva"
  loc_AFC154: ConcatStr
  loc_AFC155: FStStrNoPop var_A8
  loc_AFC158: LitStr "<br>"
  loc_AFC15B: ConcatStr
  loc_AFC15C: CVarStr var_E8
  loc_AFC15F: PopAdLdVar
  loc_AFC160: FLdPr Me
  loc_AFC163: MemLdRfVar from_stack_1.global_72
  loc_AFC166: LdPrVar
  loc_AFC168: LateMemCall
  loc_AFC16E: FFree1Str var_A8
  loc_AFC171: FFree1Var var_E8 = ""
  loc_AFC174: LitStr "    "
  loc_AFC177: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_AFC17A: ConcatStr
  loc_AFC17B: FStStrNoPop var_A8
  loc_AFC17E: LitStr "<br>"
  loc_AFC181: ConcatStr
  loc_AFC182: CVarStr var_E8
  loc_AFC185: PopAdLdVar
  loc_AFC186: FLdPr Me
  loc_AFC189: MemLdRfVar from_stack_1.global_72
  loc_AFC18C: LdPrVar
  loc_AFC18E: LateMemCall
  loc_AFC194: FFree1Str var_A8
  loc_AFC197: FFree1Var var_E8 = ""
  loc_AFC19A: LitStr "    "
  loc_AFC19D: LitStr "C.U.I.T.: "
  loc_AFC1A0: ConcatStr
  loc_AFC1A1: FStStrNoPop var_A8
  loc_AFC1A4: LitStr "30-99914707-7"
  loc_AFC1A7: ConcatStr
  loc_AFC1A8: FStStrNoPop var_AC
  loc_AFC1AB: LitStr "<br>"
  loc_AFC1AE: ConcatStr
  loc_AFC1AF: CVarStr var_E8
  loc_AFC1B2: PopAdLdVar
  loc_AFC1B3: FLdPr Me
  loc_AFC1B6: MemLdRfVar from_stack_1.global_72
  loc_AFC1B9: LdPrVar
  loc_AFC1BB: LateMemCall
  loc_AFC1C1: FFreeStr var_A8 = ""
  loc_AFC1C8: FFree1Var var_E8 = ""
  loc_AFC1CB: LitStr " <div align=""right""><em>"
  loc_AFC1CE: LitStr "&nbsp;"
  loc_AFC1D1: ConcatStr
  loc_AFC1D2: FStStrNoPop var_A8
  loc_AFC1D5: LitStr "</em></div></td>"
  loc_AFC1D8: ConcatStr
  loc_AFC1D9: CVarStr var_E8
  loc_AFC1DC: PopAdLdVar
  loc_AFC1DD: FLdPr Me
  loc_AFC1E0: MemLdRfVar from_stack_1.global_72
  loc_AFC1E3: LdPrVar
  loc_AFC1E5: LateMemCall
  loc_AFC1EB: FFree1Str var_A8
  loc_AFC1EE: FFree1Var var_E8 = ""
  loc_AFC1F1: LitVarStr var_94, "  </tr>"
  loc_AFC1F6: PopAdLdVar
  loc_AFC1F7: FLdPr Me
  loc_AFC1FA: MemLdRfVar from_stack_1.global_72
  loc_AFC1FD: LdPrVar
  loc_AFC1FF: LateMemCall
  loc_AFC205: ExitProcHresult
  loc_AFC206: CBoolVarNull
End Function

Private Function Proc_355_35_B96EF4() 'B96EF4
  'Data Table: 4E16A8
  loc_B969E0: FLdPr Me
  loc_B969E3: MemLdStr global_124
  loc_B969E6: FLdPr Me
  loc_B969E9: MemLdStr global_116
  loc_B969EC: AryLock
  loc_B969EF: Ary1LdRf
  loc_B969F0: FStR4 var_8C
  loc_B969F3: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B969F8: PopAdLdVar
  loc_B969F9: FLdPr Me
  loc_B969FC: MemLdRfVar from_stack_1.global_72
  loc_B969FF: LdPrVar
  loc_B96A01: LateMemCall
  loc_B96A07: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B96A0C: PopAdLdVar
  loc_B96A0D: FLdPr Me
  loc_B96A10: MemLdRfVar from_stack_1.global_72
  loc_B96A13: LdPrVar
  loc_B96A15: LateMemCall
  loc_B96A1B: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - INMUEBLE</strong></td>"
  loc_B96A20: PopAdLdVar
  loc_B96A21: FLdPr Me
  loc_B96A24: MemLdRfVar from_stack_1.global_72
  loc_B96A27: LdPrVar
  loc_B96A29: LateMemCall
  loc_B96A2F: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B96A34: PopAdLdVar
  loc_B96A35: FLdPr Me
  loc_B96A38: MemLdRfVar from_stack_1.global_72
  loc_B96A3B: LdPrVar
  loc_B96A3D: LateMemCall
  loc_B96A43: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B96A46: FLdPr Me
  loc_B96A49: VCallAd Control_ID_PeriBoleMsk
  loc_B96A4C: FStAdFunc var_B0
  loc_B96A4F: FLdPr var_B0
  loc_B96A52: LateIdLdVar var_C0 DispID_22 0
  loc_B96A59: CStrVarTmp
  loc_B96A5A: FStStrNoPop var_C4
  loc_B96A5D: ConcatStr
  loc_B96A5E: FStStrNoPop var_C8
  loc_B96A61: LitStr "/"
  loc_B96A64: ConcatStr
  loc_B96A65: FStStrNoPop var_CC
  loc_B96A68: FMemLdR4 var_8C(108)
  loc_B96A6D: ConcatStr
  loc_B96A6E: FStStrNoPop var_D0
  loc_B96A71: LitStr "</strong></td>"
  loc_B96A74: ConcatStr
  loc_B96A75: CVarStr var_E0
  loc_B96A78: PopAdLdVar
  loc_B96A79: FLdPr Me
  loc_B96A7C: MemLdRfVar from_stack_1.global_72
  loc_B96A7F: LdPrVar
  loc_B96A81: LateMemCall
  loc_B96A87: FFreeStr var_C4 = "": var_C8 = "": var_CC = ""
  loc_B96A92: FFree1Ad var_B0
  loc_B96A95: FFreeVar var_C0 = ""
  loc_B96A9C: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B96AA1: PopAdLdVar
  loc_B96AA2: FLdPr Me
  loc_B96AA5: MemLdRfVar from_stack_1.global_72
  loc_B96AA8: LdPrVar
  loc_B96AAA: LateMemCall
  loc_B96AB0: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B96AB3: FMemLdR4 var_8C(128)
  loc_B96AB8: ConcatStr
  loc_B96AB9: FStStrNoPop var_C4
  loc_B96ABC: LitStr "</strong></td>"
  loc_B96ABF: ConcatStr
  loc_B96AC0: CVarStr var_C0
  loc_B96AC3: PopAdLdVar
  loc_B96AC4: FLdPr Me
  loc_B96AC7: MemLdRfVar from_stack_1.global_72
  loc_B96ACA: LdPrVar
  loc_B96ACC: LateMemCall
  loc_B96AD2: FFree1Str var_C4
  loc_B96AD5: FFree1Var var_C0 = ""
  loc_B96AD8: LitVarStr var_9C, "  </tr>"
  loc_B96ADD: PopAdLdVar
  loc_B96ADE: FLdPr Me
  loc_B96AE1: MemLdRfVar from_stack_1.global_72
  loc_B96AE4: LdPrVar
  loc_B96AE6: LateMemCall
  loc_B96AEC: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B96AF1: PopAdLdVar
  loc_B96AF2: FLdPr Me
  loc_B96AF5: MemLdRfVar from_stack_1.global_72
  loc_B96AF8: LdPrVar
  loc_B96AFA: LateMemCall
  loc_B96B00: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B96B05: PopAdLdVar
  loc_B96B06: FLdPr Me
  loc_B96B09: MemLdRfVar from_stack_1.global_72
  loc_B96B0C: LdPrVar
  loc_B96B0E: LateMemCall
  loc_B96B14: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B96B17: FMemLdR4 var_8C(4)
  loc_B96B1C: ConcatStr
  loc_B96B1D: FStStrNoPop var_C4
  loc_B96B20: LitStr "</span> "
  loc_B96B23: ConcatStr
  loc_B96B24: FStStrNoPop var_C8
  loc_B96B27: LitStr "<br>"
  loc_B96B2A: ConcatStr
  loc_B96B2B: CVarStr var_C0
  loc_B96B2E: PopAdLdVar
  loc_B96B2F: FLdPr Me
  loc_B96B32: MemLdRfVar from_stack_1.global_72
  loc_B96B35: LdPrVar
  loc_B96B37: LateMemCall
  loc_B96B3D: FFreeStr var_C4 = ""
  loc_B96B44: FFree1Var var_C0 = ""
  loc_B96B47: LitStr "      "
  loc_B96B4A: FMemLdR4 var_8C(0)
  loc_B96B4F: ConcatStr
  loc_B96B50: FStStrNoPop var_C4
  loc_B96B53: LitStr "<br>"
  loc_B96B56: ConcatStr
  loc_B96B57: CVarStr var_C0
  loc_B96B5A: PopAdLdVar
  loc_B96B5B: FLdPr Me
  loc_B96B5E: MemLdRfVar from_stack_1.global_72
  loc_B96B61: LdPrVar
  loc_B96B63: LateMemCall
  loc_B96B69: FFree1Str var_C4
  loc_B96B6C: FFree1Var var_C0 = ""
  loc_B96B6F: FMemLdR4 var_8C(44)
  loc_B96B74: LitStr vbNullString
  loc_B96B77: NeStr
  loc_B96B79: BranchF loc_B96BA4
  loc_B96B7C: LitStr "      Poseedor: "
  loc_B96B7F: FMemLdR4 var_8C(44)
  loc_B96B84: ConcatStr
  loc_B96B85: FStStrNoPop var_C4
  loc_B96B88: LitStr "<br>"
  loc_B96B8B: ConcatStr
  loc_B96B8C: CVarStr var_C0
  loc_B96B8F: PopAdLdVar
  loc_B96B90: FLdPr Me
  loc_B96B93: MemLdRfVar from_stack_1.global_72
  loc_B96B96: LdPrVar
  loc_B96B98: LateMemCall
  loc_B96B9E: FFree1Str var_C4
  loc_B96BA1: FFree1Var var_C0 = ""
  loc_B96BA4: LitStr "      "
  loc_B96BA7: FMemLdR4 var_8C(8)
  loc_B96BAC: ConcatStr
  loc_B96BAD: FStStrNoPop var_C4
  loc_B96BB0: LitStr " "
  loc_B96BB3: ConcatStr
  loc_B96BB4: CVarStr var_100
  loc_B96BB7: LitVarStr var_AC, vbNullString
  loc_B96BBC: FStVarCopyObj var_E0
  loc_B96BBF: FLdRfVar var_E0
  loc_B96BC2: LitStr "Nro: "
  loc_B96BC5: FMemLdR4 var_8C(12)
  loc_B96BCA: ConcatStr
  loc_B96BCB: CVarStr var_C0
  loc_B96BCE: FMemLdR4 var_8C(12)
  loc_B96BD3: LitStr vbNullString
  loc_B96BD6: NeStr
  loc_B96BD8: FMemLdR4 var_8C(12)
  loc_B96BDD: LitStr "0"
  loc_B96BE0: NeStr
  loc_B96BE2: AndI4
  loc_B96BE3: CVarBoolI2 var_9C
  loc_B96BE7: FLdRfVar var_F0
  loc_B96BEA: ImpAdCallFPR4  = IIf(, , )
  loc_B96BEF: FLdRfVar var_F0
  loc_B96BF2: ConcatVar var_110
  loc_B96BF6: LitVarStr var_120, "<br>"
  loc_B96BFB: ConcatVar var_130
  loc_B96BFF: LitVarStr var_160, vbNullString
  loc_B96C04: FStVarCopyObj var_170
  loc_B96C07: FLdRfVar var_170
  loc_B96C0A: LitStr "Barrio: "
  loc_B96C0D: FMemLdR4 var_8C(16)
  loc_B96C12: ConcatStr
  loc_B96C13: CVarStr var_150
  loc_B96C16: FMemLdR4 var_8C(16)
  loc_B96C1B: LitStr vbNullString
  loc_B96C1E: NeStr
  loc_B96C20: CVarBoolI2 var_140
  loc_B96C24: FLdRfVar var_180
  loc_B96C27: ImpAdCallFPR4  = IIf(, , )
  loc_B96C2C: FLdRfVar var_180
  loc_B96C2F: ConcatVar var_190
  loc_B96C33: LitVarStr var_1A0, " "
  loc_B96C38: ConcatVar var_1B0
  loc_B96C3C: LitVarStr var_1E0, vbNullString
  loc_B96C41: FStVarCopyObj var_1F0
  loc_B96C44: FLdRfVar var_1F0
  loc_B96C47: LitStr "Manz.: "
  loc_B96C4A: FMemLdR4 var_8C(20)
  loc_B96C4F: ConcatStr
  loc_B96C50: CVarStr var_1D0
  loc_B96C53: FMemLdR4 var_8C(20)
  loc_B96C58: LitStr vbNullString
  loc_B96C5B: NeStr
  loc_B96C5D: CVarBoolI2 var_1C0
  loc_B96C61: FLdRfVar var_200
  loc_B96C64: ImpAdCallFPR4  = IIf(, , )
  loc_B96C69: FLdRfVar var_200
  loc_B96C6C: ConcatVar var_210
  loc_B96C70: LitVarStr var_220, " "
  loc_B96C75: ConcatVar var_230
  loc_B96C79: LitVarStr var_260, vbNullString
  loc_B96C7E: FStVarCopyObj var_270
  loc_B96C81: FLdRfVar var_270
  loc_B96C84: LitStr "Casa/Lote: "
  loc_B96C87: FMemLdR4 var_8C(24)
  loc_B96C8C: ConcatStr
  loc_B96C8D: CVarStr var_250
  loc_B96C90: FMemLdR4 var_8C(24)
  loc_B96C95: LitStr vbNullString
  loc_B96C98: NeStr
  loc_B96C9A: CVarBoolI2 var_240
  loc_B96C9E: FLdRfVar var_280
  loc_B96CA1: ImpAdCallFPR4  = IIf(, , )
  loc_B96CA6: FLdRfVar var_280
  loc_B96CA9: ConcatVar var_290
  loc_B96CAD: LitVarStr var_2A0, " "
  loc_B96CB2: ConcatVar var_2B0
  loc_B96CB6: FMemLdR4 var_8C(28)
  loc_B96CBB: CVarStr var_2C0
  loc_B96CBE: ConcatVar var_2D0
  loc_B96CC2: LitVarStr var_2E0, "<br>"
  loc_B96CC7: ConcatVar var_2F0
  loc_B96CCB: FMemLdR4 var_8C(32)
  loc_B96CD0: CVarStr var_300
  loc_B96CD3: ConcatVar var_310
  loc_B96CD7: LitVarStr var_320, " ("
  loc_B96CDC: ConcatVar var_330
  loc_B96CE0: FMemLdR4 var_8C(36)
  loc_B96CE5: CVarStr var_340
  loc_B96CE8: ConcatVar var_350
  loc_B96CEC: LitVarStr var_360, ")</strong></td>"
  loc_B96CF1: ConcatVar var_370
  loc_B96CF5: PopAdLdVar
  loc_B96CF6: FLdPr Me
  loc_B96CF9: MemLdRfVar from_stack_1.global_72
  loc_B96CFC: LdPrVar
  loc_B96CFE: LateMemCall
  loc_B96D04: FFree1Str var_C4
  loc_B96D07: FFreeVar var_370 = "": var_9C = "": var_C0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_110 = "": var_140 = "": var_150 = "": var_170 = "": var_130 = "": var_180 = "": var_190 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_1B0 = "": var_200 = "": var_210 = "": var_240 = "": var_250 = "": var_270 = "": var_230 = "": var_280 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = ""
  loc_B96D48: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B96D4D: PopAdLdVar
  loc_B96D4E: FLdPr Me
  loc_B96D51: MemLdRfVar from_stack_1.global_72
  loc_B96D54: LdPrVar
  loc_B96D56: LateMemCall
  loc_B96D5C: LitStr "    <td colspan=""3"">REFERENCIA&nbsp;&nbsp;: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B96D5F: FMemLdR4 var_8C(40)
  loc_B96D64: ConcatStr
  loc_B96D65: FStStrNoPop var_C4
  loc_B96D68: LitStr "</span></strong><br>"
  loc_B96D6B: ConcatStr
  loc_B96D6C: CVarStr var_C0
  loc_B96D6F: PopAdLdVar
  loc_B96D70: FLdPr Me
  loc_B96D73: MemLdRfVar from_stack_1.global_72
  loc_B96D76: LdPrVar
  loc_B96D78: LateMemCall
  loc_B96D7E: FFree1Str var_C4
  loc_B96D81: FFree1Var var_C0 = ""
  loc_B96D84: LitStr "                                NOMENCLATURA: <strong>"
  loc_B96D87: FMemLdR4 var_8C(52)
  loc_B96D8C: ConcatStr
  loc_B96D8D: FStStrNoPop var_C4
  loc_B96D90: LitStr "</strong><br>"
  loc_B96D93: ConcatStr
  loc_B96D94: CVarStr var_C0
  loc_B96D97: PopAdLdVar
  loc_B96D98: FLdPr Me
  loc_B96D9B: MemLdRfVar from_stack_1.global_72
  loc_B96D9E: LdPrVar
  loc_B96DA0: LateMemCall
  loc_B96DA6: FFree1Str var_C4
  loc_B96DA9: FFree1Var var_C0 = ""
  loc_B96DAC: LitStr "          DOM. REAL&nbsp;&nbsp;&nbsp;: <strong>"
  loc_B96DAF: FMemLdR4 var_8C(160)
  loc_B96DB4: ConcatStr
  loc_B96DB5: FStStrNoPop var_C4
  loc_B96DB8: LitStr " "
  loc_B96DBB: ConcatStr
  loc_B96DBC: FStStrNoPop var_C8
  loc_B96DBF: FMemLdR4 var_8C(164)
  loc_B96DC4: ConcatStr
  loc_B96DC5: FStStrNoPop var_CC
  loc_B96DC8: LitStr " "
  loc_B96DCB: ConcatStr
  loc_B96DCC: FStStrNoPop var_D0
  loc_B96DCF: FMemLdR4 var_8C(168)
  loc_B96DD4: ConcatStr
  loc_B96DD5: FStStrNoPop var_384
  loc_B96DD8: LitStr " "
  loc_B96DDB: ConcatStr
  loc_B96DDC: CVarStr var_100
  loc_B96DDF: LitVarStr var_AC, vbNullString
  loc_B96DE4: FStVarCopyObj var_E0
  loc_B96DE7: FLdRfVar var_E0
  loc_B96DEA: LitStr "Bº "
  loc_B96DED: FMemLdR4 var_8C(176)
  loc_B96DF2: ConcatStr
  loc_B96DF3: FStStrNoPop var_388
  loc_B96DF6: LitStr " "
  loc_B96DF9: ConcatStr
  loc_B96DFA: FStStrNoPop var_38C
  loc_B96DFD: FMemLdR4 var_8C(180)
  loc_B96E02: ConcatStr
  loc_B96E03: FStStrNoPop var_390
  loc_B96E06: LitStr " "
  loc_B96E09: ConcatStr
  loc_B96E0A: FStStrNoPop var_394
  loc_B96E0D: FMemLdR4 var_8C(184)
  loc_B96E12: ConcatStr
  loc_B96E13: CVarStr var_C0
  loc_B96E16: FMemLdR4 var_8C(172)
  loc_B96E1B: LitStr "0"
  loc_B96E1E: NeStr
  loc_B96E20: CVarBoolI2 var_9C
  loc_B96E24: FLdRfVar var_F0
  loc_B96E27: ImpAdCallFPR4  = IIf(, , )
  loc_B96E2C: FLdRfVar var_F0
  loc_B96E2F: ConcatVar var_110
  loc_B96E33: LitVarStr var_120, " "
  loc_B96E38: ConcatVar var_130
  loc_B96E3C: FMemLdR4 var_8C(188)
  loc_B96E41: CVarStr var_140
  loc_B96E44: ConcatVar var_150
  loc_B96E48: LitVarStr var_160, "</strong>"
  loc_B96E4D: ConcatVar var_170
  loc_B96E51: PopAdLdVar
  loc_B96E52: FLdPr Me
  loc_B96E55: MemLdRfVar from_stack_1.global_72
  loc_B96E58: LdPrVar
  loc_B96E5A: LateMemCall
  loc_B96E60: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = ""
  loc_B96E75: FFreeVar var_9C = "": var_C0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = ""
  loc_B96E8A: FMemLdI2 var_8C(136)
  loc_B96E8F: BranchF loc_B96EA9
  loc_B96E92: LitVarStr var_9C, "<br><strong>REGISTRA DEUDA</strong>"
  loc_B96E97: PopAdLdVar
  loc_B96E98: FLdPr Me
  loc_B96E9B: MemLdRfVar from_stack_1.global_72
  loc_B96E9E: LdPrVar
  loc_B96EA0: LateMemCall
  loc_B96EA6: Branch loc_B96EBD
  loc_B96EA9: LitVarStr var_9C, "<br>NO REGISTRA DEUDA"
  loc_B96EAE: PopAdLdVar
  loc_B96EAF: FLdPr Me
  loc_B96EB2: MemLdRfVar from_stack_1.global_72
  loc_B96EB5: LdPrVar
  loc_B96EB7: LateMemCall
  loc_B96EBD: LitVarStr var_9C, "  </td></tr>"
  loc_B96EC2: PopAdLdVar
  loc_B96EC3: FLdPr Me
  loc_B96EC6: MemLdRfVar from_stack_1.global_72
  loc_B96EC9: LdPrVar
  loc_B96ECB: LateMemCall
  loc_B96ED1: LitVarStr var_9C, "</table>"
  loc_B96ED6: PopAdLdVar
  loc_B96ED7: FLdPr Me
  loc_B96EDA: MemLdRfVar from_stack_1.global_72
  loc_B96EDD: LdPrVar
  loc_B96EDF: LateMemCall
  loc_B96EE5: LitI4 0
  loc_B96EEA: FStR4 var_8C
  loc_B96EED: AryUnlock
  loc_B96EF0: ExitProcHresult
End Function

Private Function Proc_355_36_B9ECC4() 'B9ECC4
  'Data Table: 4E16A8
  loc_B9E770: FLdPr Me
  loc_B9E773: MemLdStr global_124
  loc_B9E776: FLdPr Me
  loc_B9E779: MemLdStr global_116
  loc_B9E77C: AryLock
  loc_B9E77F: Ary1LdRf
  loc_B9E780: FStR4 var_8C
  loc_B9E783: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B9E788: PopAdLdVar
  loc_B9E789: FLdPr Me
  loc_B9E78C: MemLdRfVar from_stack_1.global_72
  loc_B9E78F: LdPrVar
  loc_B9E791: LateMemCall
  loc_B9E797: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B9E79C: PopAdLdVar
  loc_B9E79D: FLdPr Me
  loc_B9E7A0: MemLdRfVar from_stack_1.global_72
  loc_B9E7A3: LdPrVar
  loc_B9E7A5: LateMemCall
  loc_B9E7AB: FMemLdR4 var_8C(124)
  loc_B9E7B0: FStStrCopy var_B0
  loc_B9E7B3: ILdRf var_B0
  loc_B9E7B6: LitI2_Byte 2
  loc_B9E7B8: CStrUI1
  loc_B9E7BA: FStStrNoPop var_B4
  loc_B9E7BD: EqStr
  loc_B9E7BF: FFree1Str var_B4
  loc_B9E7C2: BranchF loc_B9E7DC
  loc_B9E7C5: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - COMERCIO</strong></td>"
  loc_B9E7CA: PopAdLdVar
  loc_B9E7CB: FLdPr Me
  loc_B9E7CE: MemLdRfVar from_stack_1.global_72
  loc_B9E7D1: LdPrVar
  loc_B9E7D3: LateMemCall
  loc_B9E7D9: Branch loc_B9E82B
  loc_B9E7DC: ILdRf var_B0
  loc_B9E7DF: LitI2_Byte 6
  loc_B9E7E1: CStrUI1
  loc_B9E7E3: FStStrNoPop var_B4
  loc_B9E7E6: EqStr
  loc_B9E7E8: FFree1Str var_B4
  loc_B9E7EB: BranchF loc_B9E805
  loc_B9E7EE: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - PUBLICIDAD Y PROPAGANDA</strong></td>"
  loc_B9E7F3: PopAdLdVar
  loc_B9E7F4: FLdPr Me
  loc_B9E7F7: MemLdRfVar from_stack_1.global_72
  loc_B9E7FA: LdPrVar
  loc_B9E7FC: LateMemCall
  loc_B9E802: Branch loc_B9E82B
  loc_B9E805: ILdRf var_B0
  loc_B9E808: LitI2_Byte 7
  loc_B9E80A: CStrUI1
  loc_B9E80C: FStStrNoPop var_B4
  loc_B9E80F: EqStr
  loc_B9E811: FFree1Str var_B4
  loc_B9E814: BranchF loc_B9E82B
  loc_B9E817: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - ANTENA</strong></td>"
  loc_B9E81C: PopAdLdVar
  loc_B9E81D: FLdPr Me
  loc_B9E820: MemLdRfVar from_stack_1.global_72
  loc_B9E823: LdPrVar
  loc_B9E825: LateMemCall
  loc_B9E82B: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B9E830: PopAdLdVar
  loc_B9E831: FLdPr Me
  loc_B9E834: MemLdRfVar from_stack_1.global_72
  loc_B9E837: LdPrVar
  loc_B9E839: LateMemCall
  loc_B9E83F: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B9E842: FLdPr Me
  loc_B9E845: VCallAd Control_ID_PeriBoleMsk
  loc_B9E848: FStAdFunc var_BC
  loc_B9E84B: FLdPr var_BC
  loc_B9E84E: LateIdLdVar var_CC DispID_22 0
  loc_B9E855: CStrVarTmp
  loc_B9E856: FStStrNoPop var_B4
  loc_B9E859: ConcatStr
  loc_B9E85A: FStStrNoPop var_D0
  loc_B9E85D: LitStr "/"
  loc_B9E860: ConcatStr
  loc_B9E861: FStStrNoPop var_D4
  loc_B9E864: FMemLdR4 var_8C(108)
  loc_B9E869: ConcatStr
  loc_B9E86A: FStStrNoPop var_D8
  loc_B9E86D: LitStr "</strong></td>"
  loc_B9E870: ConcatStr
  loc_B9E871: CVarStr var_E8
  loc_B9E874: PopAdLdVar
  loc_B9E875: FLdPr Me
  loc_B9E878: MemLdRfVar from_stack_1.global_72
  loc_B9E87B: LdPrVar
  loc_B9E87D: LateMemCall
  loc_B9E883: FFreeStr var_B4 = "": var_D0 = "": var_D4 = ""
  loc_B9E88E: FFree1Ad var_BC
  loc_B9E891: FFreeVar var_CC = ""
  loc_B9E898: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B9E89D: PopAdLdVar
  loc_B9E89E: FLdPr Me
  loc_B9E8A1: MemLdRfVar from_stack_1.global_72
  loc_B9E8A4: LdPrVar
  loc_B9E8A6: LateMemCall
  loc_B9E8AC: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B9E8AF: FMemLdR4 var_8C(128)
  loc_B9E8B4: ConcatStr
  loc_B9E8B5: FStStrNoPop var_B4
  loc_B9E8B8: LitStr "</strong></td>"
  loc_B9E8BB: ConcatStr
  loc_B9E8BC: CVarStr var_CC
  loc_B9E8BF: PopAdLdVar
  loc_B9E8C0: FLdPr Me
  loc_B9E8C3: MemLdRfVar from_stack_1.global_72
  loc_B9E8C6: LdPrVar
  loc_B9E8C8: LateMemCall
  loc_B9E8CE: FFree1Str var_B4
  loc_B9E8D1: FFree1Var var_CC = ""
  loc_B9E8D4: LitVarStr var_9C, "  </tr>"
  loc_B9E8D9: PopAdLdVar
  loc_B9E8DA: FLdPr Me
  loc_B9E8DD: MemLdRfVar from_stack_1.global_72
  loc_B9E8E0: LdPrVar
  loc_B9E8E2: LateMemCall
  loc_B9E8E8: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B9E8ED: PopAdLdVar
  loc_B9E8EE: FLdPr Me
  loc_B9E8F1: MemLdRfVar from_stack_1.global_72
  loc_B9E8F4: LdPrVar
  loc_B9E8F6: LateMemCall
  loc_B9E8FC: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B9E901: PopAdLdVar
  loc_B9E902: FLdPr Me
  loc_B9E905: MemLdRfVar from_stack_1.global_72
  loc_B9E908: LdPrVar
  loc_B9E90A: LateMemCall
  loc_B9E910: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B9E913: FMemLdR4 var_8C(4)
  loc_B9E918: ConcatStr
  loc_B9E919: FStStrNoPop var_B4
  loc_B9E91C: LitStr "</span><br>"
  loc_B9E91F: ConcatStr
  loc_B9E920: CVarStr var_CC
  loc_B9E923: PopAdLdVar
  loc_B9E924: FLdPr Me
  loc_B9E927: MemLdRfVar from_stack_1.global_72
  loc_B9E92A: LdPrVar
  loc_B9E92C: LateMemCall
  loc_B9E932: FFree1Str var_B4
  loc_B9E935: FFree1Var var_CC = ""
  loc_B9E938: LitStr "      "
  loc_B9E93B: FMemLdR4 var_8C(0)
  loc_B9E940: ConcatStr
  loc_B9E941: FStStrNoPop var_B4
  loc_B9E944: LitStr "<br>"
  loc_B9E947: ConcatStr
  loc_B9E948: CVarStr var_CC
  loc_B9E94B: PopAdLdVar
  loc_B9E94C: FLdPr Me
  loc_B9E94F: MemLdRfVar from_stack_1.global_72
  loc_B9E952: LdPrVar
  loc_B9E954: LateMemCall
  loc_B9E95A: FFree1Str var_B4
  loc_B9E95D: FFree1Var var_CC = ""
  loc_B9E960: FMemLdRf 94B8
  loc_B9E965: CVarRef
  loc_B9E96A: LitVarI2 var_168, 0
  loc_B9E96F: FMemLdR4 var_8C(12)
  loc_B9E974: LitStr vbNullString
  loc_B9E977: EqStr
  loc_B9E979: CVarBoolI2 var_148
  loc_B9E97D: FLdRfVar var_188
  loc_B9E980: ImpAdCallFPR4  = IIf(, , )
  loc_B9E985: LitVarStr var_108, "      "
  loc_B9E98A: LitVarStr var_F8, vbNullString
  loc_B9E98F: FStVarCopyObj var_CC
  loc_B9E992: FLdRfVar var_CC
  loc_B9E995: FMemLdRf 94B8
  loc_B9E99A: CVarRef
  loc_B9E99F: FMemLdR4 var_8C(8)
  loc_B9E9A4: LitStr vbNullString
  loc_B9E9A7: NeStr
  loc_B9E9A9: FMemLdR4 var_8C(8)
  loc_B9E9AE: LitStr "SIN CALLE"
  loc_B9E9B1: NeStr
  loc_B9E9B3: AndI4
  loc_B9E9B4: CVarBoolI2 var_9C
  loc_B9E9B8: FLdRfVar var_E8
  loc_B9E9BB: ImpAdCallFPR4  = IIf(, , )
  loc_B9E9C0: FLdRfVar var_E8
  loc_B9E9C3: ConcatVar var_118
  loc_B9E9C7: LitVarStr var_128, " "
  loc_B9E9CC: ConcatVar var_138
  loc_B9E9D0: LitVarStr var_1D8, vbNullString
  loc_B9E9D5: FStVarCopyObj var_1E8
  loc_B9E9D8: FLdRfVar var_1E8
  loc_B9E9DB: FMemLdRf 94B8
  loc_B9E9E0: CVarRef
  loc_B9E9E5: FLdRfVar var_188
  loc_B9E9E8: LitVarI2 var_198, 0
  loc_B9E9ED: HardType
  loc_B9E9EE: NeVar var_1A8
  loc_B9E9F2: FStVar var_1B8
  loc_B9E9F6: FLdRfVar var_1B8
  loc_B9E9F9: FLdRfVar var_1F8
  loc_B9E9FC: ImpAdCallFPR4  = IIf(, , )
  loc_B9EA01: FLdRfVar var_1F8
  loc_B9EA04: ConcatVar var_208
  loc_B9EA08: LitVarStr var_218, " "
  loc_B9EA0D: ConcatVar var_228
  loc_B9EA11: FMemLdR4 var_8C(28)
  loc_B9EA16: CVarStr var_238
  loc_B9EA19: ConcatVar var_248
  loc_B9EA1D: LitVarStr var_258, "<br>"
  loc_B9EA22: ConcatVar var_268
  loc_B9EA26: LitVarStr var_298, vbNullString
  loc_B9EA2B: FStVarCopyObj var_2A8
  loc_B9EA2E: FLdRfVar var_2A8
  loc_B9EA31: LitStr "Bº "
  loc_B9EA34: FMemLdR4 var_8C(16)
  loc_B9EA39: ConcatStr
  loc_B9EA3A: FStStrNoPop var_B4
  loc_B9EA3D: LitStr " "
  loc_B9EA40: ConcatStr
  loc_B9EA41: FStStrNoPop var_D0
  loc_B9EA44: FMemLdR4 var_8C(20)
  loc_B9EA49: ConcatStr
  loc_B9EA4A: FStStrNoPop var_D4
  loc_B9EA4D: LitStr " "
  loc_B9EA50: ConcatStr
  loc_B9EA51: FStStrNoPop var_D8
  loc_B9EA54: FMemLdR4 var_8C(24)
  loc_B9EA59: ConcatStr
  loc_B9EA5A: CVarStr var_288
  loc_B9EA5D: FMemLdR4 var_8C(16)
  loc_B9EA62: LitStr vbNullString
  loc_B9EA65: NeStr
  loc_B9EA67: FMemLdR4 var_8C(16)
  loc_B9EA6C: LitStr "SIN BARRIO"
  loc_B9EA6F: NeStr
  loc_B9EA71: AndI4
  loc_B9EA72: CVarBoolI2 var_278
  loc_B9EA76: FLdRfVar var_2B8
  loc_B9EA79: ImpAdCallFPR4  = IIf(, , )
  loc_B9EA7E: FLdRfVar var_2B8
  loc_B9EA81: ConcatVar var_2C8
  loc_B9EA85: LitVarStr var_2D8, "<br>"
  loc_B9EA8A: ConcatVar var_2E8
  loc_B9EA8E: FMemLdR4 var_8C(32)
  loc_B9EA93: CVarStr var_2F8
  loc_B9EA96: ConcatVar var_308
  loc_B9EA9A: LitVarStr var_33C, vbNullString
  loc_B9EA9F: FStVarCopyObj var_34C
  loc_B9EAA2: FLdRfVar var_34C
  loc_B9EAA5: LitStr " ("
  loc_B9EAA8: FMemLdR4 var_8C(36)
  loc_B9EAAD: ConcatStr
  loc_B9EAAE: FStStrNoPop var_30C
  loc_B9EAB1: LitStr ")"
  loc_B9EAB4: ConcatStr
  loc_B9EAB5: CVarStr var_32C
  loc_B9EAB8: FMemLdR4 var_8C(36)
  loc_B9EABD: LitStr vbNullString
  loc_B9EAC0: NeStr
  loc_B9EAC2: CVarBoolI2 var_31C
  loc_B9EAC6: FLdRfVar var_35C
  loc_B9EAC9: ImpAdCallFPR4  = IIf(, , )
  loc_B9EACE: FLdRfVar var_35C
  loc_B9EAD1: ConcatVar var_36C
  loc_B9EAD5: LitVarStr var_37C, "</strong></td>"
  loc_B9EADA: ConcatVar var_38C
  loc_B9EADE: PopAdLdVar
  loc_B9EADF: FLdPr Me
  loc_B9EAE2: MemLdRfVar from_stack_1.global_72
  loc_B9EAE5: LdPrVar
  loc_B9EAE7: LateMemCall
  loc_B9EAED: FFreeStr var_B4 = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B9EAFA: FFreeVar var_9C = "": var_CC = "": var_E8 = "": var_118 = "": var_148 = "": var_168 = "": var_188 = "": var_1B8 = "": var_1E8 = "": var_138 = "": var_1F8 = "": var_208 = "": var_228 = "": var_248 = "": var_278 = "": var_288 = "": var_2A8 = "": var_268 = "": var_2B8 = "": var_2C8 = "": var_2E8 = "": var_31C = "": var_32C = "": var_34C = "": var_308 = "": var_35C = "": var_36C = ""
  loc_B9EB35: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B9EB3A: PopAdLdVar
  loc_B9EB3B: FLdPr Me
  loc_B9EB3E: MemLdRfVar from_stack_1.global_72
  loc_B9EB41: LdPrVar
  loc_B9EB43: LateMemCall
  loc_B9EB49: LitStr "    <td colspan=""3"">REFERENCIA&nbsp;&nbsp;: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B9EB4C: FMemLdR4 var_8C(40)
  loc_B9EB51: ConcatStr
  loc_B9EB52: FStStrNoPop var_B4
  loc_B9EB55: LitStr "</span></strong><br>"
  loc_B9EB58: ConcatStr
  loc_B9EB59: CVarStr var_CC
  loc_B9EB5C: PopAdLdVar
  loc_B9EB5D: FLdPr Me
  loc_B9EB60: MemLdRfVar from_stack_1.global_72
  loc_B9EB63: LdPrVar
  loc_B9EB65: LateMemCall
  loc_B9EB6B: FFree1Str var_B4
  loc_B9EB6E: FFree1Var var_CC = ""
  loc_B9EB71: LitStr "          DOM. REAL&nbsp;&nbsp;&nbsp;: <strong>"
  loc_B9EB74: FMemLdR4 var_8C(160)
  loc_B9EB79: ConcatStr
  loc_B9EB7A: FStStrNoPop var_B4
  loc_B9EB7D: LitStr " "
  loc_B9EB80: ConcatStr
  loc_B9EB81: FStStrNoPop var_D0
  loc_B9EB84: FMemLdR4 var_8C(164)
  loc_B9EB89: ConcatStr
  loc_B9EB8A: FStStrNoPop var_D4
  loc_B9EB8D: LitStr " "
  loc_B9EB90: ConcatStr
  loc_B9EB91: FStStrNoPop var_D8
  loc_B9EB94: FMemLdR4 var_8C(168)
  loc_B9EB99: ConcatStr
  loc_B9EB9A: FStStrNoPop var_30C
  loc_B9EB9D: LitStr " "
  loc_B9EBA0: ConcatStr
  loc_B9EBA1: CVarStr var_138
  loc_B9EBA4: LitVarStr var_AC, vbNullString
  loc_B9EBA9: FStVarCopyObj var_E8
  loc_B9EBAC: FLdRfVar var_E8
  loc_B9EBAF: LitStr "Bº "
  loc_B9EBB2: FMemLdR4 var_8C(176)
  loc_B9EBB7: ConcatStr
  loc_B9EBB8: FStStrNoPop var_3A0
  loc_B9EBBB: LitStr " "
  loc_B9EBBE: ConcatStr
  loc_B9EBBF: FStStrNoPop var_3A4
  loc_B9EBC2: FMemLdR4 var_8C(180)
  loc_B9EBC7: ConcatStr
  loc_B9EBC8: FStStrNoPop var_3A8
  loc_B9EBCB: LitStr " "
  loc_B9EBCE: ConcatStr
  loc_B9EBCF: FStStrNoPop var_3AC
  loc_B9EBD2: FMemLdR4 var_8C(184)
  loc_B9EBD7: ConcatStr
  loc_B9EBD8: CVarStr var_CC
  loc_B9EBDB: FMemLdR4 var_8C(172)
  loc_B9EBE0: LitStr "0"
  loc_B9EBE3: NeStr
  loc_B9EBE5: FMemLdR4 var_8C(172)
  loc_B9EBEA: LitStr vbNullString
  loc_B9EBED: NeStr
  loc_B9EBEF: AndI4
  loc_B9EBF0: CVarBoolI2 var_9C
  loc_B9EBF4: FLdRfVar var_118
  loc_B9EBF7: ImpAdCallFPR4  = IIf(, , )
  loc_B9EBFC: FLdRfVar var_118
  loc_B9EBFF: ConcatVar var_168
  loc_B9EC03: LitVarStr var_F8, " "
  loc_B9EC08: ConcatVar var_188
  loc_B9EC0C: FMemLdR4 var_8C(188)
  loc_B9EC11: CVarStr var_108
  loc_B9EC14: ConcatVar var_1A8
  loc_B9EC18: LitVarStr var_128, "</strong>"
  loc_B9EC1D: ConcatVar var_1B8
  loc_B9EC21: PopAdLdVar
  loc_B9EC22: FLdPr Me
  loc_B9EC25: MemLdRfVar from_stack_1.global_72
  loc_B9EC28: LdPrVar
  loc_B9EC2A: LateMemCall
  loc_B9EC30: FFreeStr var_B4 = "": var_D0 = "": var_D4 = "": var_D8 = "": var_30C = "": var_3A0 = "": var_3A4 = "": var_3A8 = ""
  loc_B9EC45: FFreeVar var_9C = "": var_CC = "": var_E8 = "": var_138 = "": var_118 = "": var_168 = "": var_188 = "": var_1A8 = ""
  loc_B9EC5A: FMemLdI2 var_8C(136)
  loc_B9EC5F: BranchF loc_B9EC79
  loc_B9EC62: LitVarStr var_9C, "<br><strong>REGISTRA DEUDA</strong>"
  loc_B9EC67: PopAdLdVar
  loc_B9EC68: FLdPr Me
  loc_B9EC6B: MemLdRfVar from_stack_1.global_72
  loc_B9EC6E: LdPrVar
  loc_B9EC70: LateMemCall
  loc_B9EC76: Branch loc_B9EC8D
  loc_B9EC79: LitVarStr var_9C, "<br>NO REGISTRA DEUDA"
  loc_B9EC7E: PopAdLdVar
  loc_B9EC7F: FLdPr Me
  loc_B9EC82: MemLdRfVar from_stack_1.global_72
  loc_B9EC85: LdPrVar
  loc_B9EC87: LateMemCall
  loc_B9EC8D: LitVarStr var_9C, "  </td></tr>"
  loc_B9EC92: PopAdLdVar
  loc_B9EC93: FLdPr Me
  loc_B9EC96: MemLdRfVar from_stack_1.global_72
  loc_B9EC99: LdPrVar
  loc_B9EC9B: LateMemCall
  loc_B9ECA1: LitVarStr var_9C, "</table>"
  loc_B9ECA6: PopAdLdVar
  loc_B9ECA7: FLdPr Me
  loc_B9ECAA: MemLdRfVar from_stack_1.global_72
  loc_B9ECAD: LdPrVar
  loc_B9ECAF: LateMemCall
  loc_B9ECB5: LitI4 0
  loc_B9ECBA: FStR4 var_8C
  loc_B9ECBD: AryUnlock
  loc_B9ECC0: ExitProcHresult
End Function

Private Function Proc_355_37_B5B2A4() 'B5B2A4
  'Data Table: 4E16A8
  loc_B5AF0C: FLdPr Me
  loc_B5AF0F: MemLdStr global_124
  loc_B5AF12: FLdPr Me
  loc_B5AF15: MemLdStr global_116
  loc_B5AF18: AryLock
  loc_B5AF1B: Ary1LdRf
  loc_B5AF1C: FStR4 var_8C
  loc_B5AF1F: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B5AF24: PopAdLdVar
  loc_B5AF25: FLdPr Me
  loc_B5AF28: MemLdRfVar from_stack_1.global_72
  loc_B5AF2B: LdPrVar
  loc_B5AF2D: LateMemCall
  loc_B5AF33: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B5AF38: PopAdLdVar
  loc_B5AF39: FLdPr Me
  loc_B5AF3C: MemLdRfVar from_stack_1.global_72
  loc_B5AF3F: LdPrVar
  loc_B5AF41: LateMemCall
  loc_B5AF47: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA<br>DEUDORES VARIOS CON CREACIÓN DE CUENTA</strong></td>"
  loc_B5AF4C: PopAdLdVar
  loc_B5AF4D: FLdPr Me
  loc_B5AF50: MemLdRfVar from_stack_1.global_72
  loc_B5AF53: LdPrVar
  loc_B5AF55: LateMemCall
  loc_B5AF5B: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B5AF60: PopAdLdVar
  loc_B5AF61: FLdPr Me
  loc_B5AF64: MemLdRfVar from_stack_1.global_72
  loc_B5AF67: LdPrVar
  loc_B5AF69: LateMemCall
  loc_B5AF6F: LitStr "    <td width=""12" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B5AF72: FLdPr Me
  loc_B5AF75: VCallAd Control_ID_PeriBoleMsk
  loc_B5AF78: FStAdFunc var_B0
  loc_B5AF7B: FLdPr var_B0
  loc_B5AF7E: LateIdLdVar var_C0 DispID_22 0
  loc_B5AF85: CStrVarTmp
  loc_B5AF86: FStStrNoPop var_C4
  loc_B5AF89: ConcatStr
  loc_B5AF8A: FStStrNoPop var_C8
  loc_B5AF8D: LitStr "/"
  loc_B5AF90: ConcatStr
  loc_B5AF91: FStStrNoPop var_CC
  loc_B5AF94: FMemLdR4 var_8C(108)
  loc_B5AF99: ConcatStr
  loc_B5AF9A: FStStrNoPop var_D0
  loc_B5AF9D: LitStr "</strong></td>"
  loc_B5AFA0: ConcatStr
  loc_B5AFA1: CVarStr var_E0
  loc_B5AFA4: PopAdLdVar
  loc_B5AFA5: FLdPr Me
  loc_B5AFA8: MemLdRfVar from_stack_1.global_72
  loc_B5AFAB: LdPrVar
  loc_B5AFAD: LateMemCall
  loc_B5AFB3: FFreeStr var_C4 = "": var_C8 = "": var_CC = ""
  loc_B5AFBE: FFree1Ad var_B0
  loc_B5AFC1: FFreeVar var_C0 = ""
  loc_B5AFC8: LitVarStr var_9C, "    <td width=""11" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B5AFCD: PopAdLdVar
  loc_B5AFCE: FLdPr Me
  loc_B5AFD1: MemLdRfVar from_stack_1.global_72
  loc_B5AFD4: LdPrVar
  loc_B5AFD6: LateMemCall
  loc_B5AFDC: LitStr "    <td width=""13" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B5AFDF: FMemLdR4 var_8C(128)
  loc_B5AFE4: ConcatStr
  loc_B5AFE5: FStStrNoPop var_C4
  loc_B5AFE8: LitStr "</strong></td>"
  loc_B5AFEB: ConcatStr
  loc_B5AFEC: CVarStr var_C0
  loc_B5AFEF: PopAdLdVar
  loc_B5AFF0: FLdPr Me
  loc_B5AFF3: MemLdRfVar from_stack_1.global_72
  loc_B5AFF6: LdPrVar
  loc_B5AFF8: LateMemCall
  loc_B5AFFE: FFree1Str var_C4
  loc_B5B001: FFree1Var var_C0 = ""
  loc_B5B004: LitVarStr var_9C, "  </tr>"
  loc_B5B009: PopAdLdVar
  loc_B5B00A: FLdPr Me
  loc_B5B00D: MemLdRfVar from_stack_1.global_72
  loc_B5B010: LdPrVar
  loc_B5B012: LateMemCall
  loc_B5B018: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B5B01D: PopAdLdVar
  loc_B5B01E: FLdPr Me
  loc_B5B021: MemLdRfVar from_stack_1.global_72
  loc_B5B024: LdPrVar
  loc_B5B026: LateMemCall
  loc_B5B02C: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B5B031: PopAdLdVar
  loc_B5B032: FLdPr Me
  loc_B5B035: MemLdRfVar from_stack_1.global_72
  loc_B5B038: LdPrVar
  loc_B5B03A: LateMemCall
  loc_B5B040: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B5B043: FMemLdR4 var_8C(4)
  loc_B5B048: ConcatStr
  loc_B5B049: FStStrNoPop var_C4
  loc_B5B04C: LitStr "</span><br>"
  loc_B5B04F: ConcatStr
  loc_B5B050: CVarStr var_C0
  loc_B5B053: PopAdLdVar
  loc_B5B054: FLdPr Me
  loc_B5B057: MemLdRfVar from_stack_1.global_72
  loc_B5B05A: LdPrVar
  loc_B5B05C: LateMemCall
  loc_B5B062: FFree1Str var_C4
  loc_B5B065: FFree1Var var_C0 = ""
  loc_B5B068: LitStr "      "
  loc_B5B06B: FMemLdR4 var_8C(0)
  loc_B5B070: ConcatStr
  loc_B5B071: FStStrNoPop var_C4
  loc_B5B074: LitStr "<br>"
  loc_B5B077: ConcatStr
  loc_B5B078: CVarStr var_C0
  loc_B5B07B: PopAdLdVar
  loc_B5B07C: FLdPr Me
  loc_B5B07F: MemLdRfVar from_stack_1.global_72
  loc_B5B082: LdPrVar
  loc_B5B084: LateMemCall
  loc_B5B08A: FFree1Str var_C4
  loc_B5B08D: FFree1Var var_C0 = ""
  loc_B5B090: LitStr "      "
  loc_B5B093: FMemLdR4 var_8C(8)
  loc_B5B098: ConcatStr
  loc_B5B099: FStStrNoPop var_C4
  loc_B5B09C: LitStr " "
  loc_B5B09F: ConcatStr
  loc_B5B0A0: CVarStr var_100
  loc_B5B0A3: LitVarStr var_AC, vbNullString
  loc_B5B0A8: FStVarCopyObj var_E0
  loc_B5B0AB: FLdRfVar var_E0
  loc_B5B0AE: LitStr "Nro: "
  loc_B5B0B1: FMemLdR4 var_8C(12)
  loc_B5B0B6: ConcatStr
  loc_B5B0B7: CVarStr var_C0
  loc_B5B0BA: FMemLdR4 var_8C(12)
  loc_B5B0BF: LitStr "0"
  loc_B5B0C2: NeStr
  loc_B5B0C4: FMemLdR4 var_8C(12)
  loc_B5B0C9: LitStr vbNullString
  loc_B5B0CC: NeStr
  loc_B5B0CE: AndI4
  loc_B5B0CF: CVarBoolI2 var_9C
  loc_B5B0D3: FLdRfVar var_F0
  loc_B5B0D6: ImpAdCallFPR4  = IIf(, , )
  loc_B5B0DB: FLdRfVar var_F0
  loc_B5B0DE: ConcatVar var_110
  loc_B5B0E2: LitVarStr var_120, "<br>"
  loc_B5B0E7: ConcatVar var_130
  loc_B5B0EB: LitVarStr var_160, vbNullString
  loc_B5B0F0: FStVarCopyObj var_170
  loc_B5B0F3: FLdRfVar var_170
  loc_B5B0F6: LitStr "Barrio: "
  loc_B5B0F9: FMemLdR4 var_8C(16)
  loc_B5B0FE: ConcatStr
  loc_B5B0FF: CVarStr var_150
  loc_B5B102: FMemLdR4 var_8C(16)
  loc_B5B107: LitStr vbNullString
  loc_B5B10A: NeStr
  loc_B5B10C: CVarBoolI2 var_140
  loc_B5B110: FLdRfVar var_180
  loc_B5B113: ImpAdCallFPR4  = IIf(, , )
  loc_B5B118: FLdRfVar var_180
  loc_B5B11B: ConcatVar var_190
  loc_B5B11F: LitVarStr var_1A0, " "
  loc_B5B124: ConcatVar var_1B0
  loc_B5B128: LitVarStr var_1E0, vbNullString
  loc_B5B12D: FStVarCopyObj var_1F0
  loc_B5B130: FLdRfVar var_1F0
  loc_B5B133: LitStr "Manz.: "
  loc_B5B136: FMemLdR4 var_8C(20)
  loc_B5B13B: ConcatStr
  loc_B5B13C: CVarStr var_1D0
  loc_B5B13F: FMemLdR4 var_8C(20)
  loc_B5B144: LitStr vbNullString
  loc_B5B147: NeStr
  loc_B5B149: CVarBoolI2 var_1C0
  loc_B5B14D: FLdRfVar var_200
  loc_B5B150: ImpAdCallFPR4  = IIf(, , )
  loc_B5B155: FLdRfVar var_200
  loc_B5B158: ConcatVar var_210
  loc_B5B15C: LitVarStr var_220, " "
  loc_B5B161: ConcatVar var_230
  loc_B5B165: LitVarStr var_260, vbNullString
  loc_B5B16A: FStVarCopyObj var_270
  loc_B5B16D: FLdRfVar var_270
  loc_B5B170: LitStr "Casa/Lote: "
  loc_B5B173: FMemLdR4 var_8C(24)
  loc_B5B178: ConcatStr
  loc_B5B179: CVarStr var_250
  loc_B5B17C: FMemLdR4 var_8C(24)
  loc_B5B181: LitStr vbNullString
  loc_B5B184: NeStr
  loc_B5B186: CVarBoolI2 var_240
  loc_B5B18A: FLdRfVar var_280
  loc_B5B18D: ImpAdCallFPR4  = IIf(, , )
  loc_B5B192: FLdRfVar var_280
  loc_B5B195: ConcatVar var_290
  loc_B5B199: LitVarStr var_2A0, " "
  loc_B5B19E: ConcatVar var_2B0
  loc_B5B1A2: FMemLdR4 var_8C(28)
  loc_B5B1A7: CVarStr var_2C0
  loc_B5B1AA: ConcatVar var_2D0
  loc_B5B1AE: LitVarStr var_2E0, "<br>"
  loc_B5B1B3: ConcatVar var_2F0
  loc_B5B1B7: FMemLdR4 var_8C(32)
  loc_B5B1BC: CVarStr var_300
  loc_B5B1BF: ConcatVar var_310
  loc_B5B1C3: LitVarStr var_320, " ("
  loc_B5B1C8: ConcatVar var_330
  loc_B5B1CC: FMemLdR4 var_8C(36)
  loc_B5B1D1: CVarStr var_340
  loc_B5B1D4: ConcatVar var_350
  loc_B5B1D8: LitVarStr var_360, ")</strong></td>"
  loc_B5B1DD: ConcatVar var_370
  loc_B5B1E1: PopAdLdVar
  loc_B5B1E2: FLdPr Me
  loc_B5B1E5: MemLdRfVar from_stack_1.global_72
  loc_B5B1E8: LdPrVar
  loc_B5B1EA: LateMemCall
  loc_B5B1F0: FFree1Str var_C4
  loc_B5B1F3: FFreeVar var_370 = "": var_9C = "": var_C0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_110 = "": var_140 = "": var_150 = "": var_170 = "": var_130 = "": var_180 = "": var_190 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_1B0 = "": var_200 = "": var_210 = "": var_240 = "": var_250 = "": var_270 = "": var_230 = "": var_280 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = ""
  loc_B5B234: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B5B239: PopAdLdVar
  loc_B5B23A: FLdPr Me
  loc_B5B23D: MemLdRfVar from_stack_1.global_72
  loc_B5B240: LdPrVar
  loc_B5B242: LateMemCall
  loc_B5B248: LitStr "    <td colspan=""3"">REFERENCIA&nbsp;&nbsp;: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B5B24B: FMemLdR4 var_8C(40)
  loc_B5B250: ConcatStr
  loc_B5B251: FStStrNoPop var_C4
  loc_B5B254: LitStr "</span></strong>"
  loc_B5B257: ConcatStr
  loc_B5B258: CVarStr var_C0
  loc_B5B25B: PopAdLdVar
  loc_B5B25C: FLdPr Me
  loc_B5B25F: MemLdRfVar from_stack_1.global_72
  loc_B5B262: LdPrVar
  loc_B5B264: LateMemCall
  loc_B5B26A: FFree1Str var_C4
  loc_B5B26D: FFree1Var var_C0 = ""
  loc_B5B270: LitVarStr var_9C, "  </tr>"
  loc_B5B275: PopAdLdVar
  loc_B5B276: FLdPr Me
  loc_B5B279: MemLdRfVar from_stack_1.global_72
  loc_B5B27C: LdPrVar
  loc_B5B27E: LateMemCall
  loc_B5B284: LitVarStr var_9C, "</table>"
  loc_B5B289: PopAdLdVar
  loc_B5B28A: FLdPr Me
  loc_B5B28D: MemLdRfVar from_stack_1.global_72
  loc_B5B290: LdPrVar
  loc_B5B292: LateMemCall
  loc_B5B298: LitI4 0
  loc_B5B29D: FStR4 var_8C
  loc_B5B2A0: AryUnlock
  loc_B5B2A3: ExitProcHresult
End Function

Private Function Proc_355_38_B8BBE0() 'B8BBE0
  'Data Table: 4E16A8
  loc_B8B714: FLdPr Me
  loc_B8B717: MemLdStr global_124
  loc_B8B71A: FLdPr Me
  loc_B8B71D: MemLdStr global_116
  loc_B8B720: AryLock
  loc_B8B723: Ary1LdRf
  loc_B8B724: FStR4 var_8C
  loc_B8B727: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B8B72C: PopAdLdVar
  loc_B8B72D: FLdPr Me
  loc_B8B730: MemLdRfVar from_stack_1.global_72
  loc_B8B733: LdPrVar
  loc_B8B735: LateMemCall
  loc_B8B73B: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B8B740: PopAdLdVar
  loc_B8B741: FLdPr Me
  loc_B8B744: MemLdRfVar from_stack_1.global_72
  loc_B8B747: LdPrVar
  loc_B8B749: LateMemCall
  loc_B8B74F: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA - CEMENTERIO</strong></td>"
  loc_B8B754: PopAdLdVar
  loc_B8B755: FLdPr Me
  loc_B8B758: MemLdRfVar from_stack_1.global_72
  loc_B8B75B: LdPrVar
  loc_B8B75D: LateMemCall
  loc_B8B763: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B8B768: PopAdLdVar
  loc_B8B769: FLdPr Me
  loc_B8B76C: MemLdRfVar from_stack_1.global_72
  loc_B8B76F: LdPrVar
  loc_B8B771: LateMemCall
  loc_B8B777: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B8B77A: FLdPr Me
  loc_B8B77D: VCallAd Control_ID_PeriBoleMsk
  loc_B8B780: FStAdFunc var_B0
  loc_B8B783: FLdPr var_B0
  loc_B8B786: LateIdLdVar var_C0 DispID_22 0
  loc_B8B78D: CStrVarTmp
  loc_B8B78E: FStStrNoPop var_C4
  loc_B8B791: ConcatStr
  loc_B8B792: FStStrNoPop var_C8
  loc_B8B795: LitStr "/"
  loc_B8B798: ConcatStr
  loc_B8B799: FStStrNoPop var_CC
  loc_B8B79C: FMemLdR4 var_8C(108)
  loc_B8B7A1: ConcatStr
  loc_B8B7A2: FStStrNoPop var_D0
  loc_B8B7A5: LitStr "</strong></td>"
  loc_B8B7A8: ConcatStr
  loc_B8B7A9: CVarStr var_E0
  loc_B8B7AC: PopAdLdVar
  loc_B8B7AD: FLdPr Me
  loc_B8B7B0: MemLdRfVar from_stack_1.global_72
  loc_B8B7B3: LdPrVar
  loc_B8B7B5: LateMemCall
  loc_B8B7BB: FFreeStr var_C4 = "": var_C8 = "": var_CC = ""
  loc_B8B7C6: FFree1Ad var_B0
  loc_B8B7C9: FFreeVar var_C0 = ""
  loc_B8B7D0: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B8B7D5: PopAdLdVar
  loc_B8B7D6: FLdPr Me
  loc_B8B7D9: MemLdRfVar from_stack_1.global_72
  loc_B8B7DC: LdPrVar
  loc_B8B7DE: LateMemCall
  loc_B8B7E4: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B8B7E7: FMemLdR4 var_8C(128)
  loc_B8B7EC: ConcatStr
  loc_B8B7ED: FStStrNoPop var_C4
  loc_B8B7F0: LitStr "</strong></td>"
  loc_B8B7F3: ConcatStr
  loc_B8B7F4: CVarStr var_C0
  loc_B8B7F7: PopAdLdVar
  loc_B8B7F8: FLdPr Me
  loc_B8B7FB: MemLdRfVar from_stack_1.global_72
  loc_B8B7FE: LdPrVar
  loc_B8B800: LateMemCall
  loc_B8B806: FFree1Str var_C4
  loc_B8B809: FFree1Var var_C0 = ""
  loc_B8B80C: LitVarStr var_9C, "  </tr>"
  loc_B8B811: PopAdLdVar
  loc_B8B812: FLdPr Me
  loc_B8B815: MemLdRfVar from_stack_1.global_72
  loc_B8B818: LdPrVar
  loc_B8B81A: LateMemCall
  loc_B8B820: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B8B825: PopAdLdVar
  loc_B8B826: FLdPr Me
  loc_B8B829: MemLdRfVar from_stack_1.global_72
  loc_B8B82C: LdPrVar
  loc_B8B82E: LateMemCall
  loc_B8B834: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B8B839: PopAdLdVar
  loc_B8B83A: FLdPr Me
  loc_B8B83D: MemLdRfVar from_stack_1.global_72
  loc_B8B840: LdPrVar
  loc_B8B842: LateMemCall
  loc_B8B848: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B8B84B: FMemLdR4 var_8C(4)
  loc_B8B850: ConcatStr
  loc_B8B851: FStStrNoPop var_C4
  loc_B8B854: LitStr "</span><br>"
  loc_B8B857: ConcatStr
  loc_B8B858: CVarStr var_C0
  loc_B8B85B: PopAdLdVar
  loc_B8B85C: FLdPr Me
  loc_B8B85F: MemLdRfVar from_stack_1.global_72
  loc_B8B862: LdPrVar
  loc_B8B864: LateMemCall
  loc_B8B86A: FFree1Str var_C4
  loc_B8B86D: FFree1Var var_C0 = ""
  loc_B8B870: LitStr "      "
  loc_B8B873: FMemLdR4 var_8C(0)
  loc_B8B878: ConcatStr
  loc_B8B879: FStStrNoPop var_C4
  loc_B8B87C: LitStr "<br>"
  loc_B8B87F: ConcatStr
  loc_B8B880: CVarStr var_C0
  loc_B8B883: PopAdLdVar
  loc_B8B884: FLdPr Me
  loc_B8B887: MemLdRfVar from_stack_1.global_72
  loc_B8B88A: LdPrVar
  loc_B8B88C: LateMemCall
  loc_B8B892: FFree1Str var_C4
  loc_B8B895: FFree1Var var_C0 = ""
  loc_B8B898: FMemLdRf 94B8
  loc_B8B89D: CVarRef
  loc_B8B8A2: LitVarI2 var_C0, 0
  loc_B8B8A7: FMemLdR4 var_8C(12)
  loc_B8B8AC: LitStr vbNullString
  loc_B8B8AF: EqStr
  loc_B8B8B1: CVarBoolI2 var_9C
  loc_B8B8B5: FLdRfVar var_E0
  loc_B8B8B8: ImpAdCallFPR4  = IIf(, , )
  loc_B8B8BD: LitStr "      "
  loc_B8B8C0: FMemLdR4 var_8C(8)
  loc_B8B8C5: ConcatStr
  loc_B8B8C6: FStStrNoPop var_C4
  loc_B8B8C9: LitStr " "
  loc_B8B8CC: ConcatStr
  loc_B8B8CD: CVarStr var_170
  loc_B8B8D0: LitVarStr var_140, vbNullString
  loc_B8B8D5: FStVarCopyObj var_150
  loc_B8B8D8: FLdRfVar var_150
  loc_B8B8DB: FMemLdRf 94B8
  loc_B8B8E0: CVarRef
  loc_B8B8E5: FLdRfVar var_E0
  loc_B8B8E8: LitVarI2 var_100, 0
  loc_B8B8ED: HardType
  loc_B8B8EE: NeVar var_110
  loc_B8B8F2: FStVar var_120
  loc_B8B8F6: FLdRfVar var_120
  loc_B8B8F9: FLdRfVar var_160
  loc_B8B8FC: ImpAdCallFPR4  = IIf(, , )
  loc_B8B901: FLdRfVar var_160
  loc_B8B904: ConcatVar var_180
  loc_B8B908: LitVarStr var_190, "<br>"
  loc_B8B90D: ConcatVar var_1A0
  loc_B8B911: LitVarStr var_1D0, vbNullString
  loc_B8B916: FStVarCopyObj var_1E0
  loc_B8B919: FLdRfVar var_1E0
  loc_B8B91C: LitStr "Barrio: "
  loc_B8B91F: FMemLdR4 var_8C(16)
  loc_B8B924: ConcatStr
  loc_B8B925: CVarStr var_1C0
  loc_B8B928: FMemLdR4 var_8C(16)
  loc_B8B92D: LitStr vbNullString
  loc_B8B930: NeStr
  loc_B8B932: CVarBoolI2 var_1B0
  loc_B8B936: FLdRfVar var_1F0
  loc_B8B939: ImpAdCallFPR4  = IIf(, , )
  loc_B8B93E: FLdRfVar var_1F0
  loc_B8B941: ConcatVar var_200
  loc_B8B945: LitVarStr var_210, " "
  loc_B8B94A: ConcatVar var_220
  loc_B8B94E: LitVarStr var_250, vbNullString
  loc_B8B953: FStVarCopyObj var_260
  loc_B8B956: FLdRfVar var_260
  loc_B8B959: LitStr "Manz.: "
  loc_B8B95C: FMemLdR4 var_8C(20)
  loc_B8B961: ConcatStr
  loc_B8B962: CVarStr var_240
  loc_B8B965: FMemLdR4 var_8C(20)
  loc_B8B96A: LitStr vbNullString
  loc_B8B96D: NeStr
  loc_B8B96F: CVarBoolI2 var_230
  loc_B8B973: FLdRfVar var_270
  loc_B8B976: ImpAdCallFPR4  = IIf(, , )
  loc_B8B97B: FLdRfVar var_270
  loc_B8B97E: ConcatVar var_280
  loc_B8B982: LitVarStr var_290, " "
  loc_B8B987: ConcatVar var_2A0
  loc_B8B98B: LitVarStr var_2D0, vbNullString
  loc_B8B990: FStVarCopyObj var_2E0
  loc_B8B993: FLdRfVar var_2E0
  loc_B8B996: LitStr "Casa/Lote: "
  loc_B8B999: FMemLdR4 var_8C(24)
  loc_B8B99E: ConcatStr
  loc_B8B99F: CVarStr var_2C0
  loc_B8B9A2: FMemLdR4 var_8C(24)
  loc_B8B9A7: LitStr vbNullString
  loc_B8B9AA: NeStr
  loc_B8B9AC: CVarBoolI2 var_2B0
  loc_B8B9B0: FLdRfVar var_2F0
  loc_B8B9B3: ImpAdCallFPR4  = IIf(, , )
  loc_B8B9B8: FLdRfVar var_2F0
  loc_B8B9BB: ConcatVar var_300
  loc_B8B9BF: LitVarStr var_310, " "
  loc_B8B9C4: ConcatVar var_320
  loc_B8B9C8: FMemLdR4 var_8C(28)
  loc_B8B9CD: CVarStr var_330
  loc_B8B9D0: ConcatVar var_340
  loc_B8B9D4: LitVarStr var_350, "<br>"
  loc_B8B9D9: ConcatVar var_360
  loc_B8B9DD: FMemLdR4 var_8C(32)
  loc_B8B9E2: CVarStr var_370
  loc_B8B9E5: ConcatVar var_380
  loc_B8B9E9: LitVarStr var_3B0, vbNullString
  loc_B8B9EE: FStVarCopyObj var_3C0
  loc_B8B9F1: FLdRfVar var_3C0
  loc_B8B9F4: LitStr " ("
  loc_B8B9F7: FMemLdR4 var_8C(36)
  loc_B8B9FC: ConcatStr
  loc_B8B9FD: FStStrNoPop var_C8
  loc_B8BA00: LitStr ")"
  loc_B8BA03: ConcatStr
  loc_B8BA04: CVarStr var_3A0
  loc_B8BA07: FMemLdR4 var_8C(36)
  loc_B8BA0C: LitStr vbNullString
  loc_B8BA0F: NeStr
  loc_B8BA11: CVarBoolI2 var_390
  loc_B8BA15: FLdRfVar var_3D0
  loc_B8BA18: ImpAdCallFPR4  = IIf(, , )
  loc_B8BA1D: FLdRfVar var_3D0
  loc_B8BA20: ConcatVar var_3E0
  loc_B8BA24: LitVarStr var_3F0, "</strong></td>"
  loc_B8BA29: ConcatVar var_400
  loc_B8BA2D: PopAdLdVar
  loc_B8BA2E: FLdPr Me
  loc_B8BA31: MemLdRfVar from_stack_1.global_72
  loc_B8BA34: LdPrVar
  loc_B8BA36: LateMemCall
  loc_B8BA3C: FFreeStr var_C4 = ""
  loc_B8BA43: FFreeVar var_3A0 = "": var_3C0 = "": var_380 = "": var_3D0 = "": var_3E0 = "": var_400 = "": var_9C = "": var_C0 = "": var_E0 = "": var_120 = "": var_150 = "": var_170 = "": var_160 = "": var_180 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_1A0 = "": var_1F0 = "": var_200 = "": var_230 = "": var_240 = "": var_260 = "": var_220 = "": var_270 = "": var_280 = "": var_2B0 = "": var_2C0 = "": var_2E0 = "": var_2A0 = "": var_2F0 = "": var_300 = "": var_320 = "": var_340 = "": var_360 = ""
  loc_B8BA8E: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B8BA93: PopAdLdVar
  loc_B8BA94: FLdPr Me
  loc_B8BA97: MemLdRfVar from_stack_1.global_72
  loc_B8BA9A: LdPrVar
  loc_B8BA9C: LateMemCall
  loc_B8BAA2: LitStr "    <td colspan=""3"">Cuenta: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B8BAA5: FMemLdR4 var_8C(40)
  loc_B8BAAA: ConcatStr
  loc_B8BAAB: FStStrNoPop var_C4
  loc_B8BAAE: LitStr "</span></strong>&nbsp;&nbsp;&nbsp; Conc.: <strong>"
  loc_B8BAB1: ConcatStr
  loc_B8BAB2: FStStrNoPop var_C8
  loc_B8BAB5: FMemLdR4 var_8C(92)
  loc_B8BABA: ConcatStr
  loc_B8BABB: FStStrNoPop var_CC
  loc_B8BABE: LitStr "</strong><br>"
  loc_B8BAC1: ConcatStr
  loc_B8BAC2: CVarStr var_C0
  loc_B8BAC5: PopAdLdVar
  loc_B8BAC6: FLdPr Me
  loc_B8BAC9: MemLdRfVar from_stack_1.global_72
  loc_B8BACC: LdPrVar
  loc_B8BACE: LateMemCall
  loc_B8BAD4: FFreeStr var_C4 = "": var_C8 = ""
  loc_B8BADD: FFree1Var var_C0 = ""
  loc_B8BAE0: LitStr "                                CEMENTERIO: <strong>"
  loc_B8BAE3: FMemLdR4 var_8C(64)
  loc_B8BAE8: ConcatStr
  loc_B8BAE9: FStStrNoPop var_C4
  loc_B8BAEC: LitStr "</strong><br>"
  loc_B8BAEF: ConcatStr
  loc_B8BAF0: CVarStr var_C0
  loc_B8BAF3: PopAdLdVar
  loc_B8BAF4: FLdPr Me
  loc_B8BAF7: MemLdRfVar from_stack_1.global_72
  loc_B8BAFA: LdPrVar
  loc_B8BAFC: LateMemCall
  loc_B8BB02: FFree1Str var_C4
  loc_B8BB05: FFree1Var var_C0 = ""
  loc_B8BB08: LitStr "                                "
  loc_B8BB0B: FMemLdR4 var_8C(68)
  loc_B8BB10: ConcatStr
  loc_B8BB11: FStStrNoPop var_C4
  loc_B8BB14: LitStr ": <strong>"
  loc_B8BB17: ConcatStr
  loc_B8BB18: FStStrNoPop var_C8
  loc_B8BB1B: FMemLdR4 var_8C(72)
  loc_B8BB20: ConcatStr
  loc_B8BB21: FStStrNoPop var_CC
  loc_B8BB24: LitStr " Fila "
  loc_B8BB27: ConcatStr
  loc_B8BB28: FStStrNoPop var_D0
  loc_B8BB2B: FMemLdR4 var_8C(76)
  loc_B8BB30: ConcatStr
  loc_B8BB31: FStStrNoPop var_414
  loc_B8BB34: LitStr " "
  loc_B8BB37: ConcatStr
  loc_B8BB38: FStStrNoPop var_418
  loc_B8BB3B: FMemLdR4 var_8C(80)
  loc_B8BB40: ConcatStr
  loc_B8BB41: FStStrNoPop var_41C
  loc_B8BB44: LitStr " "
  loc_B8BB47: ConcatStr
  loc_B8BB48: FStStrNoPop var_420
  loc_B8BB4B: FMemLdR4 var_8C(84)
  loc_B8BB50: ConcatStr
  loc_B8BB51: FStStrNoPop var_424
  loc_B8BB54: LitStr "</strong><br>"
  loc_B8BB57: ConcatStr
  loc_B8BB58: CVarStr var_C0
  loc_B8BB5B: PopAdLdVar
  loc_B8BB5C: FLdPr Me
  loc_B8BB5F: MemLdRfVar from_stack_1.global_72
  loc_B8BB62: LdPrVar
  loc_B8BB64: LateMemCall
  loc_B8BB6A: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_414 = "": var_418 = "": var_41C = "": var_420 = ""
  loc_B8BB7F: FFree1Var var_C0 = ""
  loc_B8BB82: LitStr "                                Difunto: <strong>"
  loc_B8BB85: FMemLdR4 var_8C(88)
  loc_B8BB8A: ConcatStr
  loc_B8BB8B: FStStrNoPop var_C4
  loc_B8BB8E: LitStr "</strong></td>"
  loc_B8BB91: ConcatStr
  loc_B8BB92: CVarStr var_C0
  loc_B8BB95: PopAdLdVar
  loc_B8BB96: FLdPr Me
  loc_B8BB99: MemLdRfVar from_stack_1.global_72
  loc_B8BB9C: LdPrVar
  loc_B8BB9E: LateMemCall
  loc_B8BBA4: FFree1Str var_C4
  loc_B8BBA7: FFree1Var var_C0 = ""
  loc_B8BBAA: LitVarStr var_9C, "  </tr>"
  loc_B8BBAF: PopAdLdVar
  loc_B8BBB0: FLdPr Me
  loc_B8BBB3: MemLdRfVar from_stack_1.global_72
  loc_B8BBB6: LdPrVar
  loc_B8BBB8: LateMemCall
  loc_B8BBBE: LitVarStr var_9C, "</table>"
  loc_B8BBC3: PopAdLdVar
  loc_B8BBC4: FLdPr Me
  loc_B8BBC7: MemLdRfVar from_stack_1.global_72
  loc_B8BBCA: LdPrVar
  loc_B8BBCC: LateMemCall
  loc_B8BBD2: LitI4 0
  loc_B8BBD7: FStR4 var_8C
  loc_B8BBDA: AryUnlock
  loc_B8BBDD: ExitProcHresult
End Function

Private Function Proc_355_39_B5AE58() 'B5AE58
  'Data Table: 4E16A8
  loc_B5AAC0: FLdPr Me
  loc_B5AAC3: MemLdStr global_124
  loc_B5AAC6: FLdPr Me
  loc_B5AAC9: MemLdStr global_116
  loc_B5AACC: AryLock
  loc_B5AACF: Ary1LdRf
  loc_B5AAD0: FStR4 var_8C
  loc_B5AAD3: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B5AAD8: PopAdLdVar
  loc_B5AAD9: FLdPr Me
  loc_B5AADC: MemLdRfVar from_stack_1.global_72
  loc_B5AADF: LdPrVar
  loc_B5AAE1: LateMemCall
  loc_B5AAE7: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B5AAEC: PopAdLdVar
  loc_B5AAED: FLdPr Me
  loc_B5AAF0: MemLdRfVar from_stack_1.global_72
  loc_B5AAF3: LdPrVar
  loc_B5AAF5: LateMemCall
  loc_B5AAFB: LitVarStr var_9C, "    <td><strong>EMISI&Oacute;N DE DEUDA<br>OFICINA DE TRÁNSITO</strong></td>"
  loc_B5AB00: PopAdLdVar
  loc_B5AB01: FLdPr Me
  loc_B5AB04: MemLdRfVar from_stack_1.global_72
  loc_B5AB07: LdPrVar
  loc_B5AB09: LateMemCall
  loc_B5AB0F: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B5AB14: PopAdLdVar
  loc_B5AB15: FLdPr Me
  loc_B5AB18: MemLdRfVar from_stack_1.global_72
  loc_B5AB1B: LdPrVar
  loc_B5AB1D: LateMemCall
  loc_B5AB23: LitStr "    <td width=""12" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B5AB26: FLdPr Me
  loc_B5AB29: VCallAd Control_ID_PeriBoleMsk
  loc_B5AB2C: FStAdFunc var_B0
  loc_B5AB2F: FLdPr var_B0
  loc_B5AB32: LateIdLdVar var_C0 DispID_22 0
  loc_B5AB39: CStrVarTmp
  loc_B5AB3A: FStStrNoPop var_C4
  loc_B5AB3D: ConcatStr
  loc_B5AB3E: FStStrNoPop var_C8
  loc_B5AB41: LitStr "/"
  loc_B5AB44: ConcatStr
  loc_B5AB45: FStStrNoPop var_CC
  loc_B5AB48: FMemLdR4 var_8C(108)
  loc_B5AB4D: ConcatStr
  loc_B5AB4E: FStStrNoPop var_D0
  loc_B5AB51: LitStr "</strong></td>"
  loc_B5AB54: ConcatStr
  loc_B5AB55: CVarStr var_E0
  loc_B5AB58: PopAdLdVar
  loc_B5AB59: FLdPr Me
  loc_B5AB5C: MemLdRfVar from_stack_1.global_72
  loc_B5AB5F: LdPrVar
  loc_B5AB61: LateMemCall
  loc_B5AB67: FFreeStr var_C4 = "": var_C8 = "": var_CC = ""
  loc_B5AB72: FFree1Ad var_B0
  loc_B5AB75: FFreeVar var_C0 = ""
  loc_B5AB7C: LitVarStr var_9C, "    <td width=""11" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B5AB81: PopAdLdVar
  loc_B5AB82: FLdPr Me
  loc_B5AB85: MemLdRfVar from_stack_1.global_72
  loc_B5AB88: LdPrVar
  loc_B5AB8A: LateMemCall
  loc_B5AB90: LitStr "    <td width=""13" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B5AB93: FMemLdR4 var_8C(128)
  loc_B5AB98: ConcatStr
  loc_B5AB99: FStStrNoPop var_C4
  loc_B5AB9C: LitStr "</strong></td>"
  loc_B5AB9F: ConcatStr
  loc_B5ABA0: CVarStr var_C0
  loc_B5ABA3: PopAdLdVar
  loc_B5ABA4: FLdPr Me
  loc_B5ABA7: MemLdRfVar from_stack_1.global_72
  loc_B5ABAA: LdPrVar
  loc_B5ABAC: LateMemCall
  loc_B5ABB2: FFree1Str var_C4
  loc_B5ABB5: FFree1Var var_C0 = ""
  loc_B5ABB8: LitVarStr var_9C, "  </tr>"
  loc_B5ABBD: PopAdLdVar
  loc_B5ABBE: FLdPr Me
  loc_B5ABC1: MemLdRfVar from_stack_1.global_72
  loc_B5ABC4: LdPrVar
  loc_B5ABC6: LateMemCall
  loc_B5ABCC: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B5ABD1: PopAdLdVar
  loc_B5ABD2: FLdPr Me
  loc_B5ABD5: MemLdRfVar from_stack_1.global_72
  loc_B5ABD8: LdPrVar
  loc_B5ABDA: LateMemCall
  loc_B5ABE0: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B5ABE5: PopAdLdVar
  loc_B5ABE6: FLdPr Me
  loc_B5ABE9: MemLdRfVar from_stack_1.global_72
  loc_B5ABEC: LdPrVar
  loc_B5ABEE: LateMemCall
  loc_B5ABF4: LitStr "    <td><strong><span class=""NormalBloqueFinGrande"">"
  loc_B5ABF7: FMemLdR4 var_8C(4)
  loc_B5ABFC: ConcatStr
  loc_B5ABFD: FStStrNoPop var_C4
  loc_B5AC00: LitStr "</span><br>"
  loc_B5AC03: ConcatStr
  loc_B5AC04: CVarStr var_C0
  loc_B5AC07: PopAdLdVar
  loc_B5AC08: FLdPr Me
  loc_B5AC0B: MemLdRfVar from_stack_1.global_72
  loc_B5AC0E: LdPrVar
  loc_B5AC10: LateMemCall
  loc_B5AC16: FFree1Str var_C4
  loc_B5AC19: FFree1Var var_C0 = ""
  loc_B5AC1C: LitStr "      "
  loc_B5AC1F: FMemLdR4 var_8C(0)
  loc_B5AC24: ConcatStr
  loc_B5AC25: FStStrNoPop var_C4
  loc_B5AC28: LitStr "<br>"
  loc_B5AC2B: ConcatStr
  loc_B5AC2C: CVarStr var_C0
  loc_B5AC2F: PopAdLdVar
  loc_B5AC30: FLdPr Me
  loc_B5AC33: MemLdRfVar from_stack_1.global_72
  loc_B5AC36: LdPrVar
  loc_B5AC38: LateMemCall
  loc_B5AC3E: FFree1Str var_C4
  loc_B5AC41: FFree1Var var_C0 = ""
  loc_B5AC44: LitStr "      "
  loc_B5AC47: FMemLdR4 var_8C(8)
  loc_B5AC4C: ConcatStr
  loc_B5AC4D: FStStrNoPop var_C4
  loc_B5AC50: LitStr " "
  loc_B5AC53: ConcatStr
  loc_B5AC54: CVarStr var_100
  loc_B5AC57: LitVarStr var_AC, vbNullString
  loc_B5AC5C: FStVarCopyObj var_E0
  loc_B5AC5F: FLdRfVar var_E0
  loc_B5AC62: LitStr "Nro: "
  loc_B5AC65: FMemLdR4 var_8C(12)
  loc_B5AC6A: ConcatStr
  loc_B5AC6B: CVarStr var_C0
  loc_B5AC6E: FMemLdR4 var_8C(12)
  loc_B5AC73: LitStr "0"
  loc_B5AC76: NeStr
  loc_B5AC78: FMemLdR4 var_8C(12)
  loc_B5AC7D: LitStr vbNullString
  loc_B5AC80: NeStr
  loc_B5AC82: AndI4
  loc_B5AC83: CVarBoolI2 var_9C
  loc_B5AC87: FLdRfVar var_F0
  loc_B5AC8A: ImpAdCallFPR4  = IIf(, , )
  loc_B5AC8F: FLdRfVar var_F0
  loc_B5AC92: ConcatVar var_110
  loc_B5AC96: LitVarStr var_120, "<br>"
  loc_B5AC9B: ConcatVar var_130
  loc_B5AC9F: LitVarStr var_160, vbNullString
  loc_B5ACA4: FStVarCopyObj var_170
  loc_B5ACA7: FLdRfVar var_170
  loc_B5ACAA: LitStr "Barrio: "
  loc_B5ACAD: FMemLdR4 var_8C(16)
  loc_B5ACB2: ConcatStr
  loc_B5ACB3: CVarStr var_150
  loc_B5ACB6: FMemLdR4 var_8C(16)
  loc_B5ACBB: LitStr vbNullString
  loc_B5ACBE: NeStr
  loc_B5ACC0: CVarBoolI2 var_140
  loc_B5ACC4: FLdRfVar var_180
  loc_B5ACC7: ImpAdCallFPR4  = IIf(, , )
  loc_B5ACCC: FLdRfVar var_180
  loc_B5ACCF: ConcatVar var_190
  loc_B5ACD3: LitVarStr var_1A0, " "
  loc_B5ACD8: ConcatVar var_1B0
  loc_B5ACDC: LitVarStr var_1E0, vbNullString
  loc_B5ACE1: FStVarCopyObj var_1F0
  loc_B5ACE4: FLdRfVar var_1F0
  loc_B5ACE7: LitStr "Manz.: "
  loc_B5ACEA: FMemLdR4 var_8C(20)
  loc_B5ACEF: ConcatStr
  loc_B5ACF0: CVarStr var_1D0
  loc_B5ACF3: FMemLdR4 var_8C(20)
  loc_B5ACF8: LitStr vbNullString
  loc_B5ACFB: NeStr
  loc_B5ACFD: CVarBoolI2 var_1C0
  loc_B5AD01: FLdRfVar var_200
  loc_B5AD04: ImpAdCallFPR4  = IIf(, , )
  loc_B5AD09: FLdRfVar var_200
  loc_B5AD0C: ConcatVar var_210
  loc_B5AD10: LitVarStr var_220, " "
  loc_B5AD15: ConcatVar var_230
  loc_B5AD19: LitVarStr var_260, vbNullString
  loc_B5AD1E: FStVarCopyObj var_270
  loc_B5AD21: FLdRfVar var_270
  loc_B5AD24: LitStr "Casa/Lote: "
  loc_B5AD27: FMemLdR4 var_8C(24)
  loc_B5AD2C: ConcatStr
  loc_B5AD2D: CVarStr var_250
  loc_B5AD30: FMemLdR4 var_8C(24)
  loc_B5AD35: LitStr vbNullString
  loc_B5AD38: NeStr
  loc_B5AD3A: CVarBoolI2 var_240
  loc_B5AD3E: FLdRfVar var_280
  loc_B5AD41: ImpAdCallFPR4  = IIf(, , )
  loc_B5AD46: FLdRfVar var_280
  loc_B5AD49: ConcatVar var_290
  loc_B5AD4D: LitVarStr var_2A0, " "
  loc_B5AD52: ConcatVar var_2B0
  loc_B5AD56: FMemLdR4 var_8C(28)
  loc_B5AD5B: CVarStr var_2C0
  loc_B5AD5E: ConcatVar var_2D0
  loc_B5AD62: LitVarStr var_2E0, "<br>"
  loc_B5AD67: ConcatVar var_2F0
  loc_B5AD6B: FMemLdR4 var_8C(32)
  loc_B5AD70: CVarStr var_300
  loc_B5AD73: ConcatVar var_310
  loc_B5AD77: LitVarStr var_320, " ("
  loc_B5AD7C: ConcatVar var_330
  loc_B5AD80: FMemLdR4 var_8C(36)
  loc_B5AD85: CVarStr var_340
  loc_B5AD88: ConcatVar var_350
  loc_B5AD8C: LitVarStr var_360, ")</strong></td>"
  loc_B5AD91: ConcatVar var_370
  loc_B5AD95: PopAdLdVar
  loc_B5AD96: FLdPr Me
  loc_B5AD99: MemLdRfVar from_stack_1.global_72
  loc_B5AD9C: LdPrVar
  loc_B5AD9E: LateMemCall
  loc_B5ADA4: FFree1Str var_C4
  loc_B5ADA7: FFreeVar var_370 = "": var_9C = "": var_C0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_110 = "": var_140 = "": var_150 = "": var_170 = "": var_130 = "": var_180 = "": var_190 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_1B0 = "": var_200 = "": var_210 = "": var_240 = "": var_250 = "": var_270 = "": var_230 = "": var_280 = "": var_290 = "": var_2B0 = "": var_2D0 = "": var_2F0 = "": var_310 = "": var_330 = ""
  loc_B5ADE8: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B5ADED: PopAdLdVar
  loc_B5ADEE: FLdPr Me
  loc_B5ADF1: MemLdRfVar from_stack_1.global_72
  loc_B5ADF4: LdPrVar
  loc_B5ADF6: LateMemCall
  loc_B5ADFC: LitStr "    <td colspan=""3"">NRO CUENTA&nbsp;&nbsp;: <strong><span class=""NormalBloqueFinGrande"">"
  loc_B5ADFF: FMemLdR4 var_8C(40)
  loc_B5AE04: ConcatStr
  loc_B5AE05: FStStrNoPop var_C4
  loc_B5AE08: LitStr "</span></strong>"
  loc_B5AE0B: ConcatStr
  loc_B5AE0C: CVarStr var_C0
  loc_B5AE0F: PopAdLdVar
  loc_B5AE10: FLdPr Me
  loc_B5AE13: MemLdRfVar from_stack_1.global_72
  loc_B5AE16: LdPrVar
  loc_B5AE18: LateMemCall
  loc_B5AE1E: FFree1Str var_C4
  loc_B5AE21: FFree1Var var_C0 = ""
  loc_B5AE24: LitVarStr var_9C, "  </tr>"
  loc_B5AE29: PopAdLdVar
  loc_B5AE2A: FLdPr Me
  loc_B5AE2D: MemLdRfVar from_stack_1.global_72
  loc_B5AE30: LdPrVar
  loc_B5AE32: LateMemCall
  loc_B5AE38: LitVarStr var_9C, "</table>"
  loc_B5AE3D: PopAdLdVar
  loc_B5AE3E: FLdPr Me
  loc_B5AE41: MemLdRfVar from_stack_1.global_72
  loc_B5AE44: LdPrVar
  loc_B5AE46: LateMemCall
  loc_B5AE4C: LitI4 0
  loc_B5AE51: FStR4 var_8C
  loc_B5AE54: AryUnlock
  loc_B5AE57: ExitProcHresult
End Function

Private Function Proc_355_40_B3DCDC() 'B3DCDC
  'Data Table: 4E16A8
  loc_B3D9DC: FLdPr Me
  loc_B3D9DF: MemLdStr global_124
  loc_B3D9E2: FLdPr Me
  loc_B3D9E5: MemLdStr global_116
  loc_B3D9E8: AryLock
  loc_B3D9EB: Ary1LdRf
  loc_B3D9EC: FStR4 var_8C
  loc_B3D9EF: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B3D9F4: PopAdLdVar
  loc_B3D9F5: FLdPr Me
  loc_B3D9F8: MemLdRfVar from_stack_1.global_72
  loc_B3D9FB: LdPrVar
  loc_B3D9FD: LateMemCall
  loc_B3DA03: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B3DA08: PopAdLdVar
  loc_B3DA09: FLdPr Me
  loc_B3DA0C: MemLdRfVar from_stack_1.global_72
  loc_B3DA0F: LdPrVar
  loc_B3DA11: LateMemCall
  loc_B3DA17: LitVarStr var_9C, "    <td><strong>DERECHOS VARIOS</strong></td>"
  loc_B3DA1C: PopAdLdVar
  loc_B3DA1D: FLdPr Me
  loc_B3DA20: MemLdRfVar from_stack_1.global_72
  loc_B3DA23: LdPrVar
  loc_B3DA25: LateMemCall
  loc_B3DA2B: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B3DA30: PopAdLdVar
  loc_B3DA31: FLdPr Me
  loc_B3DA34: MemLdRfVar from_stack_1.global_72
  loc_B3DA37: LdPrVar
  loc_B3DA39: LateMemCall
  loc_B3DA3F: LitStr "    <td width=""12" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B3DA42: FLdPr Me
  loc_B3DA45: VCallAd Control_ID_PeriBoleMsk
  loc_B3DA48: FStAdFunc var_B0
  loc_B3DA4B: FLdPr var_B0
  loc_B3DA4E: LateIdLdVar var_C0 DispID_22 0
  loc_B3DA55: CStrVarTmp
  loc_B3DA56: FStStrNoPop var_C4
  loc_B3DA59: ConcatStr
  loc_B3DA5A: FStStrNoPop var_C8
  loc_B3DA5D: LitStr "/"
  loc_B3DA60: ConcatStr
  loc_B3DA61: FStStrNoPop var_CC
  loc_B3DA64: FMemLdR4 var_8C(108)
  loc_B3DA69: ConcatStr
  loc_B3DA6A: FStStrNoPop var_D0
  loc_B3DA6D: LitStr "</strong></td>"
  loc_B3DA70: ConcatStr
  loc_B3DA71: CVarStr var_E0
  loc_B3DA74: PopAdLdVar
  loc_B3DA75: FLdPr Me
  loc_B3DA78: MemLdRfVar from_stack_1.global_72
  loc_B3DA7B: LdPrVar
  loc_B3DA7D: LateMemCall
  loc_B3DA83: FFreeStr var_C4 = "": var_C8 = "": var_CC = ""
  loc_B3DA8E: FFree1Ad var_B0
  loc_B3DA91: FFreeVar var_C0 = ""
  loc_B3DA98: LitVarStr var_9C, "    <td width=""11" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B3DA9D: PopAdLdVar
  loc_B3DA9E: FLdPr Me
  loc_B3DAA1: MemLdRfVar from_stack_1.global_72
  loc_B3DAA4: LdPrVar
  loc_B3DAA6: LateMemCall
  loc_B3DAAC: LitStr "    <td width=""13" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B3DAAF: FMemLdR4 var_8C(128)
  loc_B3DAB4: ConcatStr
  loc_B3DAB5: FStStrNoPop var_C4
  loc_B3DAB8: LitStr "</strong></td>"
  loc_B3DABB: ConcatStr
  loc_B3DABC: CVarStr var_C0
  loc_B3DABF: PopAdLdVar
  loc_B3DAC0: FLdPr Me
  loc_B3DAC3: MemLdRfVar from_stack_1.global_72
  loc_B3DAC6: LdPrVar
  loc_B3DAC8: LateMemCall
  loc_B3DACE: FFree1Str var_C4
  loc_B3DAD1: FFree1Var var_C0 = ""
  loc_B3DAD4: LitVarStr var_9C, "  </tr>"
  loc_B3DAD9: PopAdLdVar
  loc_B3DADA: FLdPr Me
  loc_B3DADD: MemLdRfVar from_stack_1.global_72
  loc_B3DAE0: LdPrVar
  loc_B3DAE2: LateMemCall
  loc_B3DAE8: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B3DAED: PopAdLdVar
  loc_B3DAEE: FLdPr Me
  loc_B3DAF1: MemLdRfVar from_stack_1.global_72
  loc_B3DAF4: LdPrVar
  loc_B3DAF6: LateMemCall
  loc_B3DAFC: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B3DB01: PopAdLdVar
  loc_B3DB02: FLdPr Me
  loc_B3DB05: MemLdRfVar from_stack_1.global_72
  loc_B3DB08: LdPrVar
  loc_B3DB0A: LateMemCall
  loc_B3DB10: LitVarStr var_110, "    <td colspan="""
  loc_B3DB15: LitVarI2 var_E0, 5
  loc_B3DB1A: LitVarI2 var_C0, 1
  loc_B3DB1F: FMemLdR4 var_8C(100)
  loc_B3DB24: LitStr vbNullString
  loc_B3DB27: NeStr
  loc_B3DB29: CVarBoolI2 var_9C
  loc_B3DB2D: FLdRfVar var_100
  loc_B3DB30: ImpAdCallFPR4  = IIf(, , )
  loc_B3DB35: FLdRfVar var_100
  loc_B3DB38: ConcatVar var_120
  loc_B3DB3C: LitVarStr var_130, """><strong><span class=""NormalBloqueFinGrande"">"
  loc_B3DB41: ConcatVar var_140
  loc_B3DB45: FMemLdR4 var_8C(4)
  loc_B3DB4A: CVarStr var_150
  loc_B3DB4D: ConcatVar var_160
  loc_B3DB51: LitVarStr var_170, "</span><br>"
  loc_B3DB56: ConcatVar var_180
  loc_B3DB5A: PopAdLdVar
  loc_B3DB5B: FLdPr Me
  loc_B3DB5E: MemLdRfVar from_stack_1.global_72
  loc_B3DB61: LdPrVar
  loc_B3DB63: LateMemCall
  loc_B3DB69: FFreeVar var_9C = "": var_C0 = "": var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = ""
  loc_B3DB7C: LitStr "      "
  loc_B3DB7F: FMemLdR4 var_8C(0)
  loc_B3DB84: ConcatStr
  loc_B3DB85: FStStrNoPop var_C4
  loc_B3DB88: LitStr "<br>"
  loc_B3DB8B: ConcatStr
  loc_B3DB8C: CVarStr var_C0
  loc_B3DB8F: PopAdLdVar
  loc_B3DB90: FLdPr Me
  loc_B3DB93: MemLdRfVar from_stack_1.global_72
  loc_B3DB96: LdPrVar
  loc_B3DB98: LateMemCall
  loc_B3DB9E: FFree1Str var_C4
  loc_B3DBA1: FFree1Var var_C0 = ""
  loc_B3DBA4: LitStr "      "
  loc_B3DBA7: FMemLdR4 var_8C(8)
  loc_B3DBAC: ConcatStr
  loc_B3DBAD: FStStrNoPop var_C4
  loc_B3DBB0: LitStr " "
  loc_B3DBB3: ConcatStr
  loc_B3DBB4: CVarStr var_100
  loc_B3DBB7: LitVarStr var_F0, vbNullString
  loc_B3DBBC: FStVarCopyObj var_C0
  loc_B3DBBF: FLdRfVar var_C0
  loc_B3DBC2: FMemLdRf 94B8
  loc_B3DBC7: CVarRef
  loc_B3DBCC: FMemLdR4 var_8C(12)
  loc_B3DBD1: LitStr vbNullString
  loc_B3DBD4: NeStr
  loc_B3DBD6: CVarBoolI2 var_9C
  loc_B3DBDA: FLdRfVar var_E0
  loc_B3DBDD: ImpAdCallFPR4  = IIf(, , )
  loc_B3DBE2: FLdRfVar var_E0
  loc_B3DBE5: ConcatVar var_120
  loc_B3DBE9: LitVarStr var_110, " "
  loc_B3DBEE: ConcatVar var_140
  loc_B3DBF2: FMemLdR4 var_8C(12)
  loc_B3DBF7: CVarStr var_130
  loc_B3DBFA: ConcatVar var_160
  loc_B3DBFE: LitVarStr var_150, "<br>"
  loc_B3DC03: ConcatVar var_180
  loc_B3DC07: FMemLdR4 var_8C(32)
  loc_B3DC0C: CVarStr var_170
  loc_B3DC0F: ConcatVar var_1A0
  loc_B3DC13: LitVarStr var_190, " ("
  loc_B3DC18: ConcatVar var_1B0
  loc_B3DC1C: FMemLdR4 var_8C(36)
  loc_B3DC21: CVarStr var_1C0
  loc_B3DC24: ConcatVar var_1D0
  loc_B3DC28: LitVarStr var_1E0, ")</strong></td>"
  loc_B3DC2D: ConcatVar var_1F0
  loc_B3DC31: PopAdLdVar
  loc_B3DC32: FLdPr Me
  loc_B3DC35: MemLdRfVar from_stack_1.global_72
  loc_B3DC38: LdPrVar
  loc_B3DC3A: LateMemCall
  loc_B3DC40: FFree1Str var_C4
  loc_B3DC43: FFreeVar var_9C = "": var_C0 = "": var_100 = "": var_E0 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_1D0 = ""
  loc_B3DC5E: FMemLdR4 var_8C(100)
  loc_B3DC63: LitStr vbNullString
  loc_B3DC66: NeStr
  loc_B3DC68: BranchF loc_B3DCA7
  loc_B3DC6B: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Expediente: </strong></td>"
  loc_B3DC70: PopAdLdVar
  loc_B3DC71: FLdPr Me
  loc_B3DC74: MemLdRfVar from_stack_1.global_72
  loc_B3DC77: LdPrVar
  loc_B3DC79: LateMemCall
  loc_B3DC7F: LitStr "    <td colspan=""3""><strong>"
  loc_B3DC82: FMemLdR4 var_8C(100)
  loc_B3DC87: ConcatStr
  loc_B3DC88: FStStrNoPop var_C4
  loc_B3DC8B: LitStr "</strong>"
  loc_B3DC8E: ConcatStr
  loc_B3DC8F: CVarStr var_C0
  loc_B3DC92: PopAdLdVar
  loc_B3DC93: FLdPr Me
  loc_B3DC96: MemLdRfVar from_stack_1.global_72
  loc_B3DC99: LdPrVar
  loc_B3DC9B: LateMemCall
  loc_B3DCA1: FFree1Str var_C4
  loc_B3DCA4: FFree1Var var_C0 = ""
  loc_B3DCA7: LitVarStr var_9C, "  </tr>"
  loc_B3DCAC: PopAdLdVar
  loc_B3DCAD: FLdPr Me
  loc_B3DCB0: MemLdRfVar from_stack_1.global_72
  loc_B3DCB3: LdPrVar
  loc_B3DCB5: LateMemCall
  loc_B3DCBB: LitVarStr var_9C, "</table>"
  loc_B3DCC0: PopAdLdVar
  loc_B3DCC1: FLdPr Me
  loc_B3DCC4: MemLdRfVar from_stack_1.global_72
  loc_B3DCC7: LdPrVar
  loc_B3DCC9: LateMemCall
  loc_B3DCCF: LitI4 0
  loc_B3DCD4: FStR4 var_8C
  loc_B3DCD7: AryUnlock
  loc_B3DCDA: ExitProcHresult
End Function

Private Function Proc_355_41_C24FF0() 'C24FF0
  'Data Table: 4E16A8
  loc_C24540: LitVarStr var_94, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_C24545: PopAdLdVar
  loc_C24546: FLdPr Me
  loc_C24549: MemLdRfVar from_stack_1.global_72
  loc_C2454C: LdPrVar
  loc_C2454E: LateMemCall
  loc_C24554: LitI2_Byte 1
  loc_C24556: FLdPr Me
  loc_C24559: MemLdRfVar from_stack_1.global_130
  loc_C2455C: FLdPr Me
  loc_C2455F: MemLdI2 global_128
  loc_C24562: CI4UI1
  loc_C24563: FLdPr Me
  loc_C24566: MemLdStr global_124
  loc_C24569: FLdPr Me
  loc_C2456C: MemLdStr global_116
  loc_C2456F: Ary1LdPr
  loc_C24570: MemLdStr global_192
  loc_C24573: Ary1LdPr
  loc_C24574: MemLdStr global_0
  loc_C24577: LitI2_Byte 1
  loc_C24579: FnUBound
  loc_C2457B: CI2I4
  loc_C2457C: ForI2 var_A8
  loc_C24582: LitVarStr var_94, "  <tr>"
  loc_C24587: PopAdLdVar
  loc_C24588: FLdPr Me
  loc_C2458B: MemLdRfVar from_stack_1.global_72
  loc_C2458E: LdPrVar
  loc_C24590: LateMemCall
  loc_C24596: LitVarStr var_F8, "    <td "
  loc_C2459B: LitVarStr var_C8, vbNullString
  loc_C245A0: FStVarCopyObj var_D8
  loc_C245A3: FLdRfVar var_D8
  loc_C245A6: LitVarStr var_A4, "style=""border-top:none"""
  loc_C245AB: FStVarCopyObj var_B8
  loc_C245AE: FLdRfVar var_B8
  loc_C245B1: FLdPr Me
  loc_C245B4: MemLdI2 global_130
  loc_C245B7: LitI2_Byte 1
  loc_C245B9: EqI2
  loc_C245BA: CVarBoolI2 var_94
  loc_C245BE: FLdRfVar var_E8
  loc_C245C1: ImpAdCallFPR4  = IIf(, , )
  loc_C245C6: FLdRfVar var_E8
  loc_C245C9: ConcatVar var_108
  loc_C245CD: LitVarStr var_118, " colspan=""7"" align=""left"">"
  loc_C245D2: ConcatVar var_128
  loc_C245D6: FLdPr Me
  loc_C245D9: MemLdI2 global_130
  loc_C245DC: CI4UI1
  loc_C245DD: FLdPr Me
  loc_C245E0: MemLdI2 global_128
  loc_C245E3: CI4UI1
  loc_C245E4: FLdPr Me
  loc_C245E7: MemLdStr global_124
  loc_C245EA: FLdPr Me
  loc_C245ED: MemLdStr global_116
  loc_C245F0: Ary1LdPr
  loc_C245F1: MemLdStr global_192
  loc_C245F4: Ary1LdPr
  loc_C245F5: MemLdStr global_0
  loc_C245F8: Ary1LdPr
  loc_C245F9: MemLdStr global_0
  loc_C245FC: CVarStr var_138
  loc_C245FF: ConcatVar var_148
  loc_C24603: LitVarStr var_158, " - "
  loc_C24608: ConcatVar var_168
  loc_C2460C: FLdPr Me
  loc_C2460F: MemLdI2 global_130
  loc_C24612: CI4UI1
  loc_C24613: FLdPr Me
  loc_C24616: MemLdI2 global_128
  loc_C24619: CI4UI1
  loc_C2461A: FLdPr Me
  loc_C2461D: MemLdStr global_124
  loc_C24620: FLdPr Me
  loc_C24623: MemLdStr global_116
  loc_C24626: Ary1LdPr
  loc_C24627: MemLdStr global_192
  loc_C2462A: Ary1LdPr
  loc_C2462B: MemLdStr global_0
  loc_C2462E: Ary1LdPr
  loc_C2462F: MemLdStr global_4
  loc_C24632: CVarStr var_178
  loc_C24635: ConcatVar var_188
  loc_C24639: LitVarStr var_198, "</td>"
  loc_C2463E: ConcatVar var_1A8
  loc_C24642: PopAdLdVar
  loc_C24643: FLdPr Me
  loc_C24646: MemLdRfVar from_stack_1.global_72
  loc_C24649: LdPrVar
  loc_C2464B: LateMemCall
  loc_C24651: FFreeVar var_94 = "": var_B8 = "": var_D8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = ""
  loc_C24668: LitVarStr var_94, "  </tr>"
  loc_C2466D: PopAdLdVar
  loc_C2466E: FLdPr Me
  loc_C24671: MemLdRfVar from_stack_1.global_72
  loc_C24674: LdPrVar
  loc_C24676: LateMemCall
  loc_C2467C: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C24681: PopAdLdVar
  loc_C24682: FLdPr Me
  loc_C24685: MemLdRfVar from_stack_1.global_72
  loc_C24688: LdPrVar
  loc_C2468A: LateMemCall
  loc_C24690: FLdPr Me
  loc_C24693: MemLdI2 global_130
  loc_C24696: CI4UI1
  loc_C24697: FLdPr Me
  loc_C2469A: MemLdI2 global_128
  loc_C2469D: CI4UI1
  loc_C2469E: FLdPr Me
  loc_C246A1: MemLdStr global_124
  loc_C246A4: FLdPr Me
  loc_C246A7: MemLdStr global_116
  loc_C246AA: Ary1LdPr
  loc_C246AB: MemLdStr global_192
  loc_C246AE: Ary1LdPr
  loc_C246AF: MemLdStr global_0
  loc_C246B2: Ary1LdPr
  loc_C246B3: MemLdI2 global_8
  loc_C246B6: BranchF loc_C246D6
  loc_C246B9: LitVarStr var_94, "    <td>Facilidad</td>"
  loc_C246BE: PopAdLdVar
  loc_C246BF: FLdPr Me
  loc_C246C2: MemLdRfVar from_stack_1.global_72
  loc_C246C5: LdPrVar
  loc_C246C7: LateMemCall
  loc_C246CD: LitStr "Cuota"
  loc_C246D0: FStStrCopy var_1BC
  loc_C246D3: Branch loc_C247BD
  loc_C246D6: LitVarStr var_94, "    <td>Periodo</td>"
  loc_C246DB: PopAdLdVar
  loc_C246DC: FLdPr Me
  loc_C246DF: MemLdRfVar from_stack_1.global_72
  loc_C246E2: LdPrVar
  loc_C246E4: LateMemCall
  loc_C246EA: FLdPr Me
  loc_C246ED: MemLdStr global_124
  loc_C246F0: FLdPr Me
  loc_C246F3: MemLdStr global_116
  loc_C246F6: Ary1LdPr
  loc_C246F7: MemLdStr global_124
  loc_C246FA: FStStrCopy var_1C0
  loc_C246FD: ILdRf var_1C0
  loc_C24700: LitI2_Byte 1
  loc_C24702: CStrUI1
  loc_C24704: FStStrNoPop var_1C4
  loc_C24707: EqStr
  loc_C24709: FFree1Str var_1C4
  loc_C2470C: BranchF loc_C24718
  loc_C2470F: LitStr "Bimestres"
  loc_C24712: FStStrCopy var_1BC
  loc_C24715: Branch loc_C247BD
  loc_C24718: ILdRf var_1C0
  loc_C2471B: LitI2_Byte 2
  loc_C2471D: CStrUI1
  loc_C2471F: FStStrNoPop var_1C4
  loc_C24722: EqStr
  loc_C24724: FFree1Str var_1C4
  loc_C24727: BranchT loc_C24760
  loc_C2472A: ILdRf var_1C0
  loc_C2472D: LitI2_Byte 4
  loc_C2472F: CStrUI1
  loc_C24731: FStStrNoPop var_1CC
  loc_C24734: EqStr
  loc_C24736: FFree1Str var_1CC
  loc_C24739: BranchT loc_C24760
  loc_C2473C: ILdRf var_1C0
  loc_C2473F: LitI2_Byte 6
  loc_C24741: CStrUI1
  loc_C24743: FStStrNoPop var_1D4
  loc_C24746: EqStr
  loc_C24748: FFree1Str var_1D4
  loc_C2474B: BranchT loc_C24760
  loc_C2474E: ILdRf var_1C0
  loc_C24751: LitI2_Byte 7
  loc_C24753: CStrUI1
  loc_C24755: FStStrNoPop var_1DC
  loc_C24758: EqStr
  loc_C2475A: FFree1Str var_1DC
  loc_C2475D: BranchF loc_C24769
  loc_C24760: LitStr "Bimestres"
  loc_C24763: FStStrCopy var_1BC
  loc_C24766: Branch loc_C247BD
  loc_C24769: ILdRf var_1C0
  loc_C2476C: LitI2_Byte 3
  loc_C2476E: CStrUI1
  loc_C24770: FStStrNoPop var_1C4
  loc_C24773: EqStr
  loc_C24775: FFree1Str var_1C4
  loc_C24778: BranchF loc_C247A5
  loc_C2477B: FLdPr Me
  loc_C2477E: MemLdStr global_124
  loc_C24781: FLdPr Me
  loc_C24784: MemLdStr global_116
  loc_C24787: Ary1LdPr
  loc_C24788: MemLdStr global_116
  loc_C2478B: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C2478E: EqStr
  loc_C24790: BranchF loc_C2479C
  loc_C24793: LitStr "Mes"
  loc_C24796: FStStrCopy var_1BC
  loc_C24799: Branch loc_C247A2
  loc_C2479C: LitStr "Cuota"
  loc_C2479F: FStStrCopy var_1BC
  loc_C247A2: Branch loc_C247BD
  loc_C247A5: ILdRf var_1C0
  loc_C247A8: LitI2_Byte 5
  loc_C247AA: CStrUI1
  loc_C247AC: FStStrNoPop var_1C4
  loc_C247AF: EqStr
  loc_C247B1: FFree1Str var_1C4
  loc_C247B4: BranchF loc_C247BD
  loc_C247B7: LitStr "N&deg; de Acta"
  loc_C247BA: FStStrCopy var_1BC
  loc_C247BD: LitStr "    <td>"
  loc_C247C0: ILdRf var_1BC
  loc_C247C3: ConcatStr
  loc_C247C4: FStStrNoPop var_1C4
  loc_C247C7: LitStr "</td>"
  loc_C247CA: ConcatStr
  loc_C247CB: CVarStr var_B8
  loc_C247CE: PopAdLdVar
  loc_C247CF: FLdPr Me
  loc_C247D2: MemLdRfVar from_stack_1.global_72
  loc_C247D5: LdPrVar
  loc_C247D7: LateMemCall
  loc_C247DD: FFree1Str var_1C4
  loc_C247E0: FFree1Var var_B8 = ""
  loc_C247E3: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>Derecho</td>"
  loc_C247E8: PopAdLdVar
  loc_C247E9: FLdPr Me
  loc_C247EC: MemLdRfVar from_stack_1.global_72
  loc_C247EF: LdPrVar
  loc_C247F1: LateMemCall
  loc_C247F7: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>RECARGO</td>"
  loc_C247FC: PopAdLdVar
  loc_C247FD: FLdPr Me
  loc_C24800: MemLdRfVar from_stack_1.global_72
  loc_C24803: LdPrVar
  loc_C24805: LateMemCall
  loc_C2480B: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>INTER&Eacute;S</td>"
  loc_C24810: PopAdLdVar
  loc_C24811: FLdPr Me
  loc_C24814: MemLdRfVar from_stack_1.global_72
  loc_C24817: LdPrVar
  loc_C24819: LateMemCall
  loc_C2481F: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>Descuento</td>"
  loc_C24824: PopAdLdVar
  loc_C24825: FLdPr Me
  loc_C24828: MemLdRfVar from_stack_1.global_72
  loc_C2482B: LdPrVar
  loc_C2482D: LateMemCall
  loc_C24833: LitVarStr var_94, "    <td width=""14" & Chr(37) & """>TOTAL</td>"
  loc_C24838: PopAdLdVar
  loc_C24839: FLdPr Me
  loc_C2483C: MemLdRfVar from_stack_1.global_72
  loc_C2483F: LdPrVar
  loc_C24841: LateMemCall
  loc_C24847: LitVarStr var_94, "  </tr>"
  loc_C2484C: PopAdLdVar
  loc_C2484D: FLdPr Me
  loc_C24850: MemLdRfVar from_stack_1.global_72
  loc_C24853: LdPrVar
  loc_C24855: LateMemCall
  loc_C2485B: LitI2_Byte 1
  loc_C2485D: FLdPr Me
  loc_C24860: MemLdRfVar from_stack_1.global_132
  loc_C24863: FLdPr Me
  loc_C24866: MemLdI2 global_130
  loc_C24869: CI4UI1
  loc_C2486A: FLdPr Me
  loc_C2486D: MemLdI2 global_128
  loc_C24870: CI4UI1
  loc_C24871: FLdPr Me
  loc_C24874: MemLdStr global_124
  loc_C24877: FLdPr Me
  loc_C2487A: MemLdStr global_116
  loc_C2487D: Ary1LdPr
  loc_C2487E: MemLdStr global_192
  loc_C24881: Ary1LdPr
  loc_C24882: MemLdStr global_0
  loc_C24885: Ary1LdPr
  loc_C24886: MemLdStr global_12
  loc_C24889: LitI2_Byte 1
  loc_C2488B: FnUBound
  loc_C2488D: CI2I4
  loc_C2488E: ForI2 var_1E2
  loc_C24894: LitVarStr var_94, "  <tr align=""right"" valign=""top"">"
  loc_C24899: PopAdLdVar
  loc_C2489A: FLdPr Me
  loc_C2489D: MemLdRfVar from_stack_1.global_72
  loc_C248A0: LdPrVar
  loc_C248A2: LateMemCall
  loc_C248A8: LitStr "    <td width=""9" & Chr(37) & """ rowspan="""
  loc_C248AB: FLdPr Me
  loc_C248AE: MemLdI2 global_132
  loc_C248B1: CI4UI1
  loc_C248B2: FLdPr Me
  loc_C248B5: MemLdI2 global_130
  loc_C248B8: CI4UI1
  loc_C248B9: FLdPr Me
  loc_C248BC: MemLdI2 global_128
  loc_C248BF: CI4UI1
  loc_C248C0: FLdPr Me
  loc_C248C3: MemLdStr global_124
  loc_C248C6: FLdPr Me
  loc_C248C9: MemLdStr global_116
  loc_C248CC: Ary1LdPr
  loc_C248CD: MemLdStr global_192
  loc_C248D0: Ary1LdPr
  loc_C248D1: MemLdStr global_0
  loc_C248D4: Ary1LdPr
  loc_C248D5: MemLdStr global_12
  loc_C248D8: Ary1LdPr
  loc_C248D9: MemLdI2 global_8
  loc_C248DC: CStrUI1
  loc_C248DE: FStStrNoPop var_1C4
  loc_C248E1: ConcatStr
  loc_C248E2: FStStrNoPop var_1CC
  loc_C248E5: LitStr """ valign=""top"">"
  loc_C248E8: ConcatStr
  loc_C248E9: FStStrNoPop var_1D4
  loc_C248EC: FLdPr Me
  loc_C248EF: MemLdI2 global_132
  loc_C248F2: CI4UI1
  loc_C248F3: FLdPr Me
  loc_C248F6: MemLdI2 global_130
  loc_C248F9: CI4UI1
  loc_C248FA: FLdPr Me
  loc_C248FD: MemLdI2 global_128
  loc_C24900: CI4UI1
  loc_C24901: FLdPr Me
  loc_C24904: MemLdStr global_124
  loc_C24907: FLdPr Me
  loc_C2490A: MemLdStr global_116
  loc_C2490D: Ary1LdPr
  loc_C2490E: MemLdStr global_192
  loc_C24911: Ary1LdPr
  loc_C24912: MemLdStr global_0
  loc_C24915: Ary1LdPr
  loc_C24916: MemLdStr global_12
  loc_C24919: Ary1LdPr
  loc_C2491A: MemLdStr global_0
  loc_C2491D: ConcatStr
  loc_C2491E: FStStrNoPop var_1DC
  loc_C24921: LitStr "</td>"
  loc_C24924: ConcatStr
  loc_C24925: CVarStr var_B8
  loc_C24928: PopAdLdVar
  loc_C24929: FLdPr Me
  loc_C2492C: MemLdRfVar from_stack_1.global_72
  loc_C2492F: LdPrVar
  loc_C24931: LateMemCall
  loc_C24937: FFreeStr var_1C4 = "": var_1CC = "": var_1D4 = ""
  loc_C24942: FFree1Var var_B8 = ""
  loc_C24945: LitI2_Byte 1
  loc_C24947: FLdPr Me
  loc_C2494A: MemLdRfVar from_stack_1.global_134
  loc_C2494D: FLdPr Me
  loc_C24950: MemLdI2 global_132
  loc_C24953: CI4UI1
  loc_C24954: FLdPr Me
  loc_C24957: MemLdI2 global_130
  loc_C2495A: CI4UI1
  loc_C2495B: FLdPr Me
  loc_C2495E: MemLdI2 global_128
  loc_C24961: CI4UI1
  loc_C24962: FLdPr Me
  loc_C24965: MemLdStr global_124
  loc_C24968: FLdPr Me
  loc_C2496B: MemLdStr global_116
  loc_C2496E: Ary1LdPr
  loc_C2496F: MemLdStr global_192
  loc_C24972: Ary1LdPr
  loc_C24973: MemLdStr global_0
  loc_C24976: Ary1LdPr
  loc_C24977: MemLdStr global_12
  loc_C2497A: Ary1LdPr
  loc_C2497B: MemLdStr global_4
  loc_C2497E: LitI2_Byte 1
  loc_C24980: FnUBound
  loc_C24982: CI2I4
  loc_C24983: ForI2 var_1E6
  loc_C24989: FLdPr Me
  loc_C2498C: MemLdI2 global_134
  loc_C2498F: LitI2_Byte 1
  loc_C24991: GtI2
  loc_C24992: BranchF loc_C249A9
  loc_C24995: LitVarStr var_94, "  <tr align=""right"" valign=""top"">"
  loc_C2499A: PopAdLdVar
  loc_C2499B: FLdPr Me
  loc_C2499E: MemLdRfVar from_stack_1.global_72
  loc_C249A1: LdPrVar
  loc_C249A3: LateMemCall
  loc_C249A9: LitStr "    <td nowrap valign=""top"" width=""10" & Chr(37) & """ rowspan="""
  loc_C249AC: FLdPr Me
  loc_C249AF: MemLdI2 global_134
  loc_C249B2: CI4UI1
  loc_C249B3: FLdPr Me
  loc_C249B6: MemLdI2 global_132
  loc_C249B9: CI4UI1
  loc_C249BA: FLdPr Me
  loc_C249BD: MemLdI2 global_130
  loc_C249C0: CI4UI1
  loc_C249C1: FLdPr Me
  loc_C249C4: MemLdI2 global_128
  loc_C249C7: CI4UI1
  loc_C249C8: FLdPr Me
  loc_C249CB: MemLdStr global_124
  loc_C249CE: FLdPr Me
  loc_C249D1: MemLdStr global_116
  loc_C249D4: Ary1LdPr
  loc_C249D5: MemLdStr global_192
  loc_C249D8: Ary1LdPr
  loc_C249D9: MemLdStr global_0
  loc_C249DC: Ary1LdPr
  loc_C249DD: MemLdStr global_12
  loc_C249E0: Ary1LdPr
  loc_C249E1: MemLdStr global_4
  loc_C249E4: Ary1LdPr
  loc_C249E5: MemLdI2 global_28
  loc_C249E8: CStrUI1
  loc_C249EA: FStStrNoPop var_1C4
  loc_C249ED: ConcatStr
  loc_C249EE: FStStrNoPop var_1CC
  loc_C249F1: LitStr """>"
  loc_C249F4: ConcatStr
  loc_C249F5: FStStrNoPop var_1D4
  loc_C249F8: FLdPr Me
  loc_C249FB: MemLdI2 global_134
  loc_C249FE: CI4UI1
  loc_C249FF: FLdPr Me
  loc_C24A02: MemLdI2 global_132
  loc_C24A05: CI4UI1
  loc_C24A06: FLdPr Me
  loc_C24A09: MemLdI2 global_130
  loc_C24A0C: CI4UI1
  loc_C24A0D: FLdPr Me
  loc_C24A10: MemLdI2 global_128
  loc_C24A13: CI4UI1
  loc_C24A14: FLdPr Me
  loc_C24A17: MemLdStr global_124
  loc_C24A1A: FLdPr Me
  loc_C24A1D: MemLdStr global_116
  loc_C24A20: Ary1LdPr
  loc_C24A21: MemLdStr global_192
  loc_C24A24: Ary1LdPr
  loc_C24A25: MemLdStr global_0
  loc_C24A28: Ary1LdPr
  loc_C24A29: MemLdStr global_12
  loc_C24A2C: Ary1LdPr
  loc_C24A2D: MemLdStr global_4
  loc_C24A30: Ary1LdPr
  loc_C24A31: MemLdStr global_0
  loc_C24A34: ConcatStr
  loc_C24A35: FStStrNoPop var_1DC
  loc_C24A38: LitStr "</td>"
  loc_C24A3B: ConcatStr
  loc_C24A3C: CVarStr var_B8
  loc_C24A3F: PopAdLdVar
  loc_C24A40: FLdPr Me
  loc_C24A43: MemLdRfVar from_stack_1.global_72
  loc_C24A46: LdPrVar
  loc_C24A48: LateMemCall
  loc_C24A4E: FFreeStr var_1C4 = "": var_1CC = "": var_1D4 = ""
  loc_C24A59: FFree1Var var_B8 = ""
  loc_C24A5C: LitI2_Byte 1
  loc_C24A5E: FLdPr Me
  loc_C24A61: MemLdRfVar from_stack_1.global_136
  loc_C24A64: FLdPr Me
  loc_C24A67: MemLdI2 global_134
  loc_C24A6A: CI4UI1
  loc_C24A6B: FLdPr Me
  loc_C24A6E: MemLdI2 global_132
  loc_C24A71: CI4UI1
  loc_C24A72: FLdPr Me
  loc_C24A75: MemLdI2 global_130
  loc_C24A78: CI4UI1
  loc_C24A79: FLdPr Me
  loc_C24A7C: MemLdI2 global_128
  loc_C24A7F: CI4UI1
  loc_C24A80: FLdPr Me
  loc_C24A83: MemLdStr global_124
  loc_C24A86: FLdPr Me
  loc_C24A89: MemLdStr global_116
  loc_C24A8C: Ary1LdPr
  loc_C24A8D: MemLdStr global_192
  loc_C24A90: Ary1LdPr
  loc_C24A91: MemLdStr global_0
  loc_C24A94: Ary1LdPr
  loc_C24A95: MemLdStr global_12
  loc_C24A98: Ary1LdPr
  loc_C24A99: MemLdStr global_4
  loc_C24A9C: Ary1LdPr
  loc_C24A9D: MemLdStr global_24
  loc_C24AA0: LitI2_Byte 1
  loc_C24AA2: FnUBound
  loc_C24AA4: CI2I4
  loc_C24AA5: ForI2 var_1EA
  loc_C24AAB: FLdPr Me
  loc_C24AAE: MemLdI2 global_134
  loc_C24AB1: CI4UI1
  loc_C24AB2: FLdPr Me
  loc_C24AB5: MemLdI2 global_132
  loc_C24AB8: CI4UI1
  loc_C24AB9: FLdPr Me
  loc_C24ABC: MemLdI2 global_130
  loc_C24ABF: CI4UI1
  loc_C24AC0: FLdPr Me
  loc_C24AC3: MemLdI2 global_128
  loc_C24AC6: CI4UI1
  loc_C24AC7: FLdPr Me
  loc_C24ACA: MemLdStr global_124
  loc_C24ACD: FLdPr Me
  loc_C24AD0: MemLdStr global_116
  loc_C24AD3: AryLock
  loc_C24AD6: Ary1LdPr
  loc_C24AD7: MemLdStr global_192
  loc_C24ADA: AryLock
  loc_C24ADD: Ary1LdPr
  loc_C24ADE: MemLdStr global_0
  loc_C24AE1: AryLock
  loc_C24AE4: Ary1LdPr
  loc_C24AE5: MemLdStr global_12
  loc_C24AE8: AryLock
  loc_C24AEB: Ary1LdPr
  loc_C24AEC: MemLdStr global_4
  loc_C24AEF: AryLock
  loc_C24AF2: Ary1LdRf
  loc_C24AF3: FStR4 var_204
  loc_C24AF6: FLdPr Me
  loc_C24AF9: MemLdI2 global_136
  loc_C24AFC: LitI2_Byte 1
  loc_C24AFE: GtI2
  loc_C24AFF: BranchF loc_C24B16
  loc_C24B02: LitVarStr var_94, "  <tr align=""right"">"
  loc_C24B07: PopAdLdVar
  loc_C24B08: FLdPr Me
  loc_C24B0B: MemLdRfVar from_stack_1.global_72
  loc_C24B0E: LdPrVar
  loc_C24B10: LateMemCall
  loc_C24B16: LitStr "  <td rowspan="""
  loc_C24B19: FMemLdI2 var_204(28)
  loc_C24B1E: CStrUI1
  loc_C24B20: FStStrNoPop var_1C4
  loc_C24B23: ConcatStr
  loc_C24B24: FStStrNoPop var_1CC
  loc_C24B27: LitStr """>"
  loc_C24B2A: ConcatStr
  loc_C24B2B: CVarStr var_E8
  loc_C24B2E: FMemLdRf ext_40108C
  loc_C24B33: CVarRef
  loc_C24B38: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C24B3D: FStVarCopyObj var_B8
  loc_C24B40: FLdRfVar var_B8
  loc_C24B43: FMemLdR4 var_204(4)
  loc_C24B48: LitStr "0,00"
  loc_C24B4B: EqStr
  loc_C24B4D: CVarBoolI2 var_94
  loc_C24B51: FLdRfVar var_D8
  loc_C24B54: ImpAdCallFPR4  = IIf(, , )
  loc_C24B59: FLdRfVar var_D8
  loc_C24B5C: ConcatVar var_108
  loc_C24B60: LitVarStr var_F8, "</td>"
  loc_C24B65: ConcatVar var_128
  loc_C24B69: PopAdLdVar
  loc_C24B6A: FLdPr Me
  loc_C24B6D: MemLdRfVar from_stack_1.global_72
  loc_C24B70: LdPrVar
  loc_C24B72: LateMemCall
  loc_C24B78: FFreeStr var_1C4 = ""
  loc_C24B7F: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C24B8E: LitStr "  <td rowspan="""
  loc_C24B91: FMemLdI2 var_204(28)
  loc_C24B96: CStrUI1
  loc_C24B98: FStStrNoPop var_1C4
  loc_C24B9B: ConcatStr
  loc_C24B9C: FStStrNoPop var_1CC
  loc_C24B9F: LitStr """>"
  loc_C24BA2: ConcatStr
  loc_C24BA3: CVarStr var_E8
  loc_C24BA6: FMemLdRf ext_40108C
  loc_C24BAB: CVarRef
  loc_C24BB0: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C24BB5: FStVarCopyObj var_B8
  loc_C24BB8: FLdRfVar var_B8
  loc_C24BBB: FMemLdR4 var_204(8)
  loc_C24BC0: LitStr "0,00"
  loc_C24BC3: EqStr
  loc_C24BC5: CVarBoolI2 var_94
  loc_C24BC9: FLdRfVar var_D8
  loc_C24BCC: ImpAdCallFPR4  = IIf(, , )
  loc_C24BD1: FLdRfVar var_D8
  loc_C24BD4: ConcatVar var_108
  loc_C24BD8: LitVarStr var_F8, "</td>"
  loc_C24BDD: ConcatVar var_128
  loc_C24BE1: PopAdLdVar
  loc_C24BE2: FLdPr Me
  loc_C24BE5: MemLdRfVar from_stack_1.global_72
  loc_C24BE8: LdPrVar
  loc_C24BEA: LateMemCall
  loc_C24BF0: FFreeStr var_1C4 = ""
  loc_C24BF7: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C24C06: LitStr "  <td rowspan="""
  loc_C24C09: FMemLdI2 var_204(28)
  loc_C24C0E: CStrUI1
  loc_C24C10: FStStrNoPop var_1C4
  loc_C24C13: ConcatStr
  loc_C24C14: FStStrNoPop var_1CC
  loc_C24C17: LitStr """>"
  loc_C24C1A: ConcatStr
  loc_C24C1B: CVarStr var_E8
  loc_C24C1E: FMemLdRf ext_40108C
  loc_C24C23: CVarRef
  loc_C24C28: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C24C2D: FStVarCopyObj var_B8
  loc_C24C30: FLdRfVar var_B8
  loc_C24C33: FMemLdR4 var_204(12)
  loc_C24C38: LitStr "0,00"
  loc_C24C3B: EqStr
  loc_C24C3D: CVarBoolI2 var_94
  loc_C24C41: FLdRfVar var_D8
  loc_C24C44: ImpAdCallFPR4  = IIf(, , )
  loc_C24C49: FLdRfVar var_D8
  loc_C24C4C: ConcatVar var_108
  loc_C24C50: LitVarStr var_F8, "</td>"
  loc_C24C55: ConcatVar var_128
  loc_C24C59: PopAdLdVar
  loc_C24C5A: FLdPr Me
  loc_C24C5D: MemLdRfVar from_stack_1.global_72
  loc_C24C60: LdPrVar
  loc_C24C62: LateMemCall
  loc_C24C68: FFreeStr var_1C4 = ""
  loc_C24C6F: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C24C7E: LitStr "  <td rowspan="""
  loc_C24C81: FMemLdI2 var_204(28)
  loc_C24C86: CStrUI1
  loc_C24C88: FStStrNoPop var_1C4
  loc_C24C8B: ConcatStr
  loc_C24C8C: FStStrNoPop var_1CC
  loc_C24C8F: LitStr """>"
  loc_C24C92: ConcatStr
  loc_C24C93: CVarStr var_E8
  loc_C24C96: FMemLdRf ext_40108C
  loc_C24C9B: CVarRef
  loc_C24CA0: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C24CA5: FStVarCopyObj var_B8
  loc_C24CA8: FLdRfVar var_B8
  loc_C24CAB: FMemLdR4 var_204(16)
  loc_C24CB0: LitStr "0,00"
  loc_C24CB3: EqStr
  loc_C24CB5: CVarBoolI2 var_94
  loc_C24CB9: FLdRfVar var_D8
  loc_C24CBC: ImpAdCallFPR4  = IIf(, , )
  loc_C24CC1: FLdRfVar var_D8
  loc_C24CC4: ConcatVar var_108
  loc_C24CC8: LitVarStr var_F8, "</td>"
  loc_C24CCD: ConcatVar var_128
  loc_C24CD1: PopAdLdVar
  loc_C24CD2: FLdPr Me
  loc_C24CD5: MemLdRfVar from_stack_1.global_72
  loc_C24CD8: LdPrVar
  loc_C24CDA: LateMemCall
  loc_C24CE0: FFreeStr var_1C4 = ""
  loc_C24CE7: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C24CF6: LitStr "  <td align=""right"" width=""11" & Chr(37) & """ rowspan="""
  loc_C24CF9: FMemLdI2 var_204(28)
  loc_C24CFE: CStrUI1
  loc_C24D00: FStStrNoPop var_1C4
  loc_C24D03: ConcatStr
  loc_C24D04: FStStrNoPop var_1CC
  loc_C24D07: LitStr """>"
  loc_C24D0A: ConcatStr
  loc_C24D0B: CVarStr var_E8
  loc_C24D0E: FMemLdRf ext_40108C
  loc_C24D13: CVarRef
  loc_C24D18: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C24D1D: FStVarCopyObj var_B8
  loc_C24D20: FLdRfVar var_B8
  loc_C24D23: FMemLdR4 var_204(20)
  loc_C24D28: LitStr "0,00"
  loc_C24D2B: EqStr
  loc_C24D2D: CVarBoolI2 var_94
  loc_C24D31: FLdRfVar var_D8
  loc_C24D34: ImpAdCallFPR4  = IIf(, , )
  loc_C24D39: FLdRfVar var_D8
  loc_C24D3C: ConcatVar var_108
  loc_C24D40: LitVarStr var_F8, "</td>"
  loc_C24D45: ConcatVar var_128
  loc_C24D49: PopAdLdVar
  loc_C24D4A: FLdPr Me
  loc_C24D4D: MemLdRfVar from_stack_1.global_72
  loc_C24D50: LdPrVar
  loc_C24D52: LateMemCall
  loc_C24D58: FFreeStr var_1C4 = ""
  loc_C24D5F: FFreeVar var_94 = "": var_B8 = "": var_E8 = "": var_D8 = "": var_108 = ""
  loc_C24D6E: LitI4 0
  loc_C24D73: FStR4 var_204
  loc_C24D76: AryUnlock
  loc_C24D79: AryUnlock
  loc_C24D7C: AryUnlock
  loc_C24D7F: AryUnlock
  loc_C24D82: AryUnlock
  loc_C24D85: LitVarStr var_94, "  </tr>"
  loc_C24D8A: PopAdLdVar
  loc_C24D8B: FLdPr Me
  loc_C24D8E: MemLdRfVar from_stack_1.global_72
  loc_C24D91: LdPrVar
  loc_C24D93: LateMemCall
  loc_C24D99: FLdPr Me
  loc_C24D9C: MemLdRfVar from_stack_1.global_136
  loc_C24D9F: NextI2 var_1EA, loc_C24AAB
  loc_C24DA4: FLdPr Me
  loc_C24DA7: MemLdRfVar from_stack_1.global_134
  loc_C24DAA: NextI2 var_1E6, loc_C24989
  loc_C24DAF: FLdPr Me
  loc_C24DB2: MemLdRfVar from_stack_1.global_132
  loc_C24DB5: NextI2 var_1E2, loc_C24894
  loc_C24DBA: FLdPr Me
  loc_C24DBD: MemLdRfVar from_stack_1.global_130
  loc_C24DC0: NextI2 var_A8, loc_C24582
  loc_C24DC5: FLdPr Me
  loc_C24DC8: MemLdI2 global_128
  loc_C24DCB: CI4UI1
  loc_C24DCC: FLdPr Me
  loc_C24DCF: MemLdStr global_124
  loc_C24DD2: FLdPr Me
  loc_C24DD5: MemLdStr global_116
  loc_C24DD8: Ary1LdPr
  loc_C24DD9: MemLdStr global_192
  loc_C24DDC: LitI2_Byte 1
  loc_C24DDE: FnUBound
  loc_C24DE0: LtI4
  loc_C24DE1: BranchF loc_C24FEC
  loc_C24DE4: LitVarStr var_94, "</table><p><hr></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>"
  loc_C24DE9: PopAdLdVar
  loc_C24DEA: FLdPr Me
  loc_C24DED: MemLdRfVar from_stack_1.global_72
  loc_C24DF0: LdPrVar
  loc_C24DF2: LateMemCall
  loc_C24DF8: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_C24DFD: PopAdLdVar
  loc_C24DFE: FLdPr Me
  loc_C24E01: MemLdRfVar from_stack_1.global_72
  loc_C24E04: LdPrVar
  loc_C24E06: LateMemCall
  loc_C24E0C: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C24E11: PopAdLdVar
  loc_C24E12: FLdPr Me
  loc_C24E15: MemLdRfVar from_stack_1.global_72
  loc_C24E18: LdPrVar
  loc_C24E1A: LateMemCall
  loc_C24E20: LitStr "    <td rowspan=""2"">SUBTOTALES HOJA "
  loc_C24E23: FLdPr Me
  loc_C24E26: MemLdI2 global_128
  loc_C24E29: CStrUI1
  loc_C24E2B: FStStrNoPop var_1C4
  loc_C24E2E: ConcatStr
  loc_C24E2F: FStStrNoPop var_1CC
  loc_C24E32: LitStr "</td>"
  loc_C24E35: ConcatStr
  loc_C24E36: CVarStr var_B8
  loc_C24E39: PopAdLdVar
  loc_C24E3A: FLdPr Me
  loc_C24E3D: MemLdRfVar from_stack_1.global_72
  loc_C24E40: LdPrVar
  loc_C24E42: LateMemCall
  loc_C24E48: FFreeStr var_1C4 = ""
  loc_C24E4F: FFree1Var var_B8 = ""
  loc_C24E52: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_C24E57: PopAdLdVar
  loc_C24E58: FLdPr Me
  loc_C24E5B: MemLdRfVar from_stack_1.global_72
  loc_C24E5E: LdPrVar
  loc_C24E60: LateMemCall
  loc_C24E66: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>RECARGO</td>"
  loc_C24E6B: PopAdLdVar
  loc_C24E6C: FLdPr Me
  loc_C24E6F: MemLdRfVar from_stack_1.global_72
  loc_C24E72: LdPrVar
  loc_C24E74: LateMemCall
  loc_C24E7A: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>INTER&Eacute;S</td>"
  loc_C24E7F: PopAdLdVar
  loc_C24E80: FLdPr Me
  loc_C24E83: MemLdRfVar from_stack_1.global_72
  loc_C24E86: LdPrVar
  loc_C24E88: LateMemCall
  loc_C24E8E: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DESCUENTO</td>"
  loc_C24E93: PopAdLdVar
  loc_C24E94: FLdPr Me
  loc_C24E97: MemLdRfVar from_stack_1.global_72
  loc_C24E9A: LdPrVar
  loc_C24E9C: LateMemCall
  loc_C24EA2: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>TOTAL</td>"
  loc_C24EA7: PopAdLdVar
  loc_C24EA8: FLdPr Me
  loc_C24EAB: MemLdRfVar from_stack_1.global_72
  loc_C24EAE: LdPrVar
  loc_C24EB0: LateMemCall
  loc_C24EB6: LitVarStr var_94, "  </tr>"
  loc_C24EBB: PopAdLdVar
  loc_C24EBC: FLdPr Me
  loc_C24EBF: MemLdRfVar from_stack_1.global_72
  loc_C24EC2: LdPrVar
  loc_C24EC4: LateMemCall
  loc_C24ECA: LitVarStr var_94, "  <tr align=""center"" class=""Normal"">"
  loc_C24ECF: PopAdLdVar
  loc_C24ED0: FLdPr Me
  loc_C24ED3: MemLdRfVar from_stack_1.global_72
  loc_C24ED6: LdPrVar
  loc_C24ED8: LateMemCall
  loc_C24EDE: FLdPr Me
  loc_C24EE1: MemLdI2 global_128
  loc_C24EE4: CI4UI1
  loc_C24EE5: FLdPr Me
  loc_C24EE8: MemLdStr global_124
  loc_C24EEB: FLdPr Me
  loc_C24EEE: MemLdStr global_116
  loc_C24EF1: AryLock
  loc_C24EF4: Ary1LdPr
  loc_C24EF5: MemLdStr global_192
  loc_C24EF8: AryLock
  loc_C24EFB: Ary1LdPr
  loc_C24EFC: MemLdRfVar from_stack_1.global_4
  loc_C24EFF: FStR4 var_210
  loc_C24F02: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C24F05: FMemLdR4 var_210(4)
  loc_C24F0A: ConcatStr
  loc_C24F0B: FStStrNoPop var_1C4
  loc_C24F0E: LitStr "</td>"
  loc_C24F11: ConcatStr
  loc_C24F12: CVarStr var_B8
  loc_C24F15: PopAdLdVar
  loc_C24F16: FLdPr Me
  loc_C24F19: MemLdRfVar from_stack_1.global_72
  loc_C24F1C: LdPrVar
  loc_C24F1E: LateMemCall
  loc_C24F24: FFree1Str var_1C4
  loc_C24F27: FFree1Var var_B8 = ""
  loc_C24F2A: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C24F2D: FMemLdR4 var_210(8)
  loc_C24F32: ConcatStr
  loc_C24F33: FStStrNoPop var_1C4
  loc_C24F36: LitStr "</td>"
  loc_C24F39: ConcatStr
  loc_C24F3A: CVarStr var_B8
  loc_C24F3D: PopAdLdVar
  loc_C24F3E: FLdPr Me
  loc_C24F41: MemLdRfVar from_stack_1.global_72
  loc_C24F44: LdPrVar
  loc_C24F46: LateMemCall
  loc_C24F4C: FFree1Str var_1C4
  loc_C24F4F: FFree1Var var_B8 = ""
  loc_C24F52: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C24F55: FMemLdR4 var_210(12)
  loc_C24F5A: ConcatStr
  loc_C24F5B: FStStrNoPop var_1C4
  loc_C24F5E: LitStr "</td>"
  loc_C24F61: ConcatStr
  loc_C24F62: CVarStr var_B8
  loc_C24F65: PopAdLdVar
  loc_C24F66: FLdPr Me
  loc_C24F69: MemLdRfVar from_stack_1.global_72
  loc_C24F6C: LdPrVar
  loc_C24F6E: LateMemCall
  loc_C24F74: FFree1Str var_1C4
  loc_C24F77: FFree1Var var_B8 = ""
  loc_C24F7A: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C24F7D: FMemLdR4 var_210(16)
  loc_C24F82: ConcatStr
  loc_C24F83: FStStrNoPop var_1C4
  loc_C24F86: LitStr "</td>"
  loc_C24F89: ConcatStr
  loc_C24F8A: CVarStr var_B8
  loc_C24F8D: PopAdLdVar
  loc_C24F8E: FLdPr Me
  loc_C24F91: MemLdRfVar from_stack_1.global_72
  loc_C24F94: LdPrVar
  loc_C24F96: LateMemCall
  loc_C24F9C: FFree1Str var_1C4
  loc_C24F9F: FFree1Var var_B8 = ""
  loc_C24FA2: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_C24FA5: FMemLdR4 var_210(20)
  loc_C24FAA: ConcatStr
  loc_C24FAB: FStStrNoPop var_1C4
  loc_C24FAE: LitStr "</td>"
  loc_C24FB1: ConcatStr
  loc_C24FB2: CVarStr var_B8
  loc_C24FB5: PopAdLdVar
  loc_C24FB6: FLdPr Me
  loc_C24FB9: MemLdRfVar from_stack_1.global_72
  loc_C24FBC: LdPrVar
  loc_C24FBE: LateMemCall
  loc_C24FC4: FFree1Str var_1C4
  loc_C24FC7: FFree1Var var_B8 = ""
  loc_C24FCA: LitI4 0
  loc_C24FCF: FStR4 var_210
  loc_C24FD2: AryUnlock
  loc_C24FD5: AryUnlock
  loc_C24FD8: LitVarStr var_94, "  </tr></table>"
  loc_C24FDD: PopAdLdVar
  loc_C24FDE: FLdPr Me
  loc_C24FE1: MemLdRfVar from_stack_1.global_72
  loc_C24FE4: LdPrVar
  loc_C24FE6: LateMemCall
  loc_C24FEC: ExitProcHresult
End Function

Private Function Proc_355_42_B11594() 'B11594
  'Data Table: 4E16A8
  loc_B11340: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B11345: PopAdLdVar
  loc_B11346: FLdPr Me
  loc_B11349: MemLdRfVar from_stack_1.global_72
  loc_B1134C: LdPrVar
  loc_B1134E: LateMemCall
  loc_B11354: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B11359: PopAdLdVar
  loc_B1135A: FLdPr Me
  loc_B1135D: MemLdRfVar from_stack_1.global_72
  loc_B11360: LdPrVar
  loc_B11362: LateMemCall
  loc_B11368: LitVarStr var_94, "    <td>CANTIDAD</td>"
  loc_B1136D: PopAdLdVar
  loc_B1136E: FLdPr Me
  loc_B11371: MemLdRfVar from_stack_1.global_72
  loc_B11374: LdPrVar
  loc_B11376: LateMemCall
  loc_B1137C: LitVarStr var_94, "    <td>DETALLE O SERVICIO</td>"
  loc_B11381: PopAdLdVar
  loc_B11382: FLdPr Me
  loc_B11385: MemLdRfVar from_stack_1.global_72
  loc_B11388: LdPrVar
  loc_B1138A: LateMemCall
  loc_B11390: LitVarStr var_94, "    <td>PRECIO UN.</td>"
  loc_B11395: PopAdLdVar
  loc_B11396: FLdPr Me
  loc_B11399: MemLdRfVar from_stack_1.global_72
  loc_B1139C: LdPrVar
  loc_B1139E: LateMemCall
  loc_B113A4: LitVarStr var_94, "    <td>SUBTOTAL</td>"
  loc_B113A9: PopAdLdVar
  loc_B113AA: FLdPr Me
  loc_B113AD: MemLdRfVar from_stack_1.global_72
  loc_B113B0: LdPrVar
  loc_B113B2: LateMemCall
  loc_B113B8: LitVarStr var_94, "    <td>DESCUENTO</td>"
  loc_B113BD: PopAdLdVar
  loc_B113BE: FLdPr Me
  loc_B113C1: MemLdRfVar from_stack_1.global_72
  loc_B113C4: LdPrVar
  loc_B113C6: LateMemCall
  loc_B113CC: LitVarStr var_94, "    <td>TOTAL</td>"
  loc_B113D1: PopAdLdVar
  loc_B113D2: FLdPr Me
  loc_B113D5: MemLdRfVar from_stack_1.global_72
  loc_B113D8: LdPrVar
  loc_B113DA: LateMemCall
  loc_B113E0: LitVarStr var_94, "  </tr>"
  loc_B113E5: PopAdLdVar
  loc_B113E6: FLdPr Me
  loc_B113E9: MemLdRfVar from_stack_1.global_72
  loc_B113EC: LdPrVar
  loc_B113EE: LateMemCall
  loc_B113F4: LitI2_Byte 1
  loc_B113F6: FLdPr Me
  loc_B113F9: MemLdRfVar from_stack_1.global_134
  loc_B113FC: FLdPr Me
  loc_B113FF: MemLdStr global_124
  loc_B11402: FLdPr Me
  loc_B11405: MemLdStr global_116
  loc_B11408: Ary1LdPr
  loc_B11409: MemLdStr global_96
  loc_B1140C: LitI2_Byte 1
  loc_B1140E: FnUBound
  loc_B11410: CI2I4
  loc_B11411: ForI2 var_A8
  loc_B11417: LitVarStr var_94, "  <tr>"
  loc_B1141C: PopAdLdVar
  loc_B1141D: FLdPr Me
  loc_B11420: MemLdRfVar from_stack_1.global_72
  loc_B11423: LdPrVar
  loc_B11425: LateMemCall
  loc_B1142B: FLdPr Me
  loc_B1142E: MemLdI2 global_134
  loc_B11431: CI4UI1
  loc_B11432: FLdPr Me
  loc_B11435: MemLdStr global_124
  loc_B11438: FLdPr Me
  loc_B1143B: MemLdStr global_116
  loc_B1143E: AryLock
  loc_B11441: Ary1LdPr
  loc_B11442: MemLdStr global_96
  loc_B11445: AryLock
  loc_B11448: Ary1LdRf
  loc_B11449: FStR4 var_B4
  loc_B1144C: LitStr vbNullString
  loc_B1144F: LitI2_Byte 0
  loc_B11451: LitI2_Byte 0
  loc_B11453: LitI2_Byte 0
  loc_B11455: LitStr "right"
  loc_B11458: FMemLdR4 var_B4(0)
  loc_B1145D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B11462: CVarStr var_C4
  loc_B11465: PopAdLdVar
  loc_B11466: FLdPr Me
  loc_B11469: MemLdRfVar from_stack_1.global_72
  loc_B1146C: LdPrVar
  loc_B1146E: LateMemCall
  loc_B11474: FFree1Var var_C4 = ""
  loc_B11477: LitStr vbNullString
  loc_B1147A: LitI2_Byte 0
  loc_B1147C: LitI2_Byte 0
  loc_B1147E: LitI2_Byte 0
  loc_B11480: LitStr "left"
  loc_B11483: FMemLdR4 var_B4(4)
  loc_B11488: LitStr " - "
  loc_B1148B: ConcatStr
  loc_B1148C: FStStrNoPop var_C8
  loc_B1148F: FMemLdR4 var_B4(8)
  loc_B11494: ConcatStr
  loc_B11495: FStStrNoPop var_CC
  loc_B11498: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B1149D: CVarStr var_C4
  loc_B114A0: PopAdLdVar
  loc_B114A1: FLdPr Me
  loc_B114A4: MemLdRfVar from_stack_1.global_72
  loc_B114A7: LdPrVar
  loc_B114A9: LateMemCall
  loc_B114AF: FFreeStr var_C8 = ""
  loc_B114B6: FFree1Var var_C4 = ""
  loc_B114B9: LitStr vbNullString
  loc_B114BC: LitI2_Byte 0
  loc_B114BE: LitI2_Byte 0
  loc_B114C0: LitI2_Byte 0
  loc_B114C2: LitStr "right"
  loc_B114C5: FMemLdR4 var_B4(12)
  loc_B114CA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B114CF: CVarStr var_C4
  loc_B114D2: PopAdLdVar
  loc_B114D3: FLdPr Me
  loc_B114D6: MemLdRfVar from_stack_1.global_72
  loc_B114D9: LdPrVar
  loc_B114DB: LateMemCall
  loc_B114E1: FFree1Var var_C4 = ""
  loc_B114E4: LitStr vbNullString
  loc_B114E7: LitI2_Byte 0
  loc_B114E9: LitI2_Byte 0
  loc_B114EB: LitI2_Byte 0
  loc_B114ED: LitStr "right"
  loc_B114F0: FMemLdR4 var_B4(16)
  loc_B114F5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B114FA: CVarStr var_C4
  loc_B114FD: PopAdLdVar
  loc_B114FE: FLdPr Me
  loc_B11501: MemLdRfVar from_stack_1.global_72
  loc_B11504: LdPrVar
  loc_B11506: LateMemCall
  loc_B1150C: FFree1Var var_C4 = ""
  loc_B1150F: LitStr vbNullString
  loc_B11512: LitI2_Byte 0
  loc_B11514: LitI2_Byte 0
  loc_B11516: LitI2_Byte 0
  loc_B11518: LitStr "right"
  loc_B1151B: FMemLdR4 var_B4(20)
  loc_B11520: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B11525: CVarStr var_C4
  loc_B11528: PopAdLdVar
  loc_B11529: FLdPr Me
  loc_B1152C: MemLdRfVar from_stack_1.global_72
  loc_B1152F: LdPrVar
  loc_B11531: LateMemCall
  loc_B11537: FFree1Var var_C4 = ""
  loc_B1153A: LitStr vbNullString
  loc_B1153D: LitI2_Byte 0
  loc_B1153F: LitI2_Byte 0
  loc_B11541: LitI2_Byte 0
  loc_B11543: LitStr "right"
  loc_B11546: FMemLdR4 var_B4(24)
  loc_B1154B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B11550: CVarStr var_C4
  loc_B11553: PopAdLdVar
  loc_B11554: FLdPr Me
  loc_B11557: MemLdRfVar from_stack_1.global_72
  loc_B1155A: LdPrVar
  loc_B1155C: LateMemCall
  loc_B11562: FFree1Var var_C4 = ""
  loc_B11565: LitI4 0
  loc_B1156A: FStR4 var_B4
  loc_B1156D: AryUnlock
  loc_B11570: AryUnlock
  loc_B11573: LitVarStr var_94, "     </tr>"
  loc_B11578: PopAdLdVar
  loc_B11579: FLdPr Me
  loc_B1157C: MemLdRfVar from_stack_1.global_72
  loc_B1157F: LdPrVar
  loc_B11581: LateMemCall
  loc_B11587: FLdPr Me
  loc_B1158A: MemLdRfVar from_stack_1.global_134
  loc_B1158D: NextI2 var_A8, loc_B11417
  loc_B11592: ExitProcHresult
End Function

Private Function Proc_355_43_B79368() 'B79368
  'Data Table: 4E16A8
  loc_B78E9C: FLdPr Me
  loc_B78E9F: MemLdStr global_124
  loc_B78EA2: FLdPr Me
  loc_B78EA5: MemLdStr global_116
  loc_B78EA8: Ary1LdPr
  loc_B78EA9: MemLdStr global_148
  loc_B78EAC: LitStr vbNullString
  loc_B78EAF: NeStr
  loc_B78EB1: BranchF loc_B78F45
  loc_B78EB4: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B78EB9: PopAdLdVar
  loc_B78EBA: FLdPr Me
  loc_B78EBD: MemLdRfVar from_stack_1.global_72
  loc_B78EC0: LdPrVar
  loc_B78EC2: LateMemCall
  loc_B78EC8: LitStr "    <td colspan=""6"" align=""right"" valign=""top""><strong>APREMIO ("
  loc_B78ECB: FLdPr Me
  loc_B78ECE: MemLdStr global_124
  loc_B78ED1: FLdPr Me
  loc_B78ED4: MemLdStr global_116
  loc_B78ED7: Ary1LdPr
  loc_B78ED8: MemLdStr global_148
  loc_B78EDB: ConcatStr
  loc_B78EDC: FStStrNoPop var_A8
  loc_B78EDF: LitStr "):</strong></td>"
  loc_B78EE2: ConcatStr
  loc_B78EE3: CVarStr var_B8
  loc_B78EE6: PopAdLdVar
  loc_B78EE7: FLdPr Me
  loc_B78EEA: MemLdRfVar from_stack_1.global_72
  loc_B78EED: LdPrVar
  loc_B78EEF: LateMemCall
  loc_B78EF5: FFree1Str var_A8
  loc_B78EF8: FFree1Var var_B8 = ""
  loc_B78EFB: LitStr vbNullString
  loc_B78EFE: LitI2_Byte 0
  loc_B78F00: LitI2_Byte 0
  loc_B78F02: LitI2_Byte 0
  loc_B78F04: LitStr "right"
  loc_B78F07: FLdPr Me
  loc_B78F0A: MemLdStr global_124
  loc_B78F0D: FLdPr Me
  loc_B78F10: MemLdStr global_116
  loc_B78F13: Ary1LdPr
  loc_B78F14: MemLdStr global_144
  loc_B78F17: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B78F1C: CVarStr var_B8
  loc_B78F1F: PopAdLdVar
  loc_B78F20: FLdPr Me
  loc_B78F23: MemLdRfVar from_stack_1.global_72
  loc_B78F26: LdPrVar
  loc_B78F28: LateMemCall
  loc_B78F2E: FFree1Var var_B8 = ""
  loc_B78F31: LitVarStr var_94, "  </tr>"
  loc_B78F36: PopAdLdVar
  loc_B78F37: FLdPr Me
  loc_B78F3A: MemLdRfVar from_stack_1.global_72
  loc_B78F3D: LdPrVar
  loc_B78F3F: LateMemCall
  loc_B78F45: FLdPr Me
  loc_B78F48: MemLdStr DetaDeva
  loc_B78F4B: LitStr vbNullString
  loc_B78F4E: NeStr
  loc_B78F50: BranchF loc_B78FAE
  loc_B78F53: LitVarStr var_94, "  <tr>"
  loc_B78F58: PopAdLdVar
  loc_B78F59: FLdPr Me
  loc_B78F5C: MemLdRfVar from_stack_1.global_72
  loc_B78F5F: LdPrVar
  loc_B78F61: LateMemCall
  loc_B78F67: LitStr "    <td colspan=""7"" align=""justify"" valign=""top"">Detalle: "
  loc_B78F6A: FLdPr Me
  loc_B78F6D: MemLdStr DetaDeva
  loc_B78F70: ConcatStr
  loc_B78F71: FStStrNoPop var_A8
  loc_B78F74: LitStr "</td>"
  loc_B78F77: ConcatStr
  loc_B78F78: CVarStr var_B8
  loc_B78F7B: PopAdLdVar
  loc_B78F7C: FLdPr Me
  loc_B78F7F: MemLdRfVar from_stack_1.global_72
  loc_B78F82: LdPrVar
  loc_B78F84: LateMemCall
  loc_B78F8A: FFree1Str var_A8
  loc_B78F8D: FFree1Var var_B8 = ""
  loc_B78F90: LitVarStr var_94, "  </tr>"
  loc_B78F95: PopAdLdVar
  loc_B78F96: FLdPr Me
  loc_B78F99: MemLdRfVar from_stack_1.global_72
  loc_B78F9C: LdPrVar
  loc_B78F9E: LateMemCall
  loc_B78FA4: LitStr vbNullString
  loc_B78FA7: FLdPr Me
  loc_B78FAA: MemStStrCopy
  loc_B78FAE: LitVarStr var_94, "  <tr align=""right"" class=""Totales"">"
  loc_B78FB3: PopAdLdVar
  loc_B78FB4: FLdPr Me
  loc_B78FB7: MemLdRfVar from_stack_1.global_72
  loc_B78FBA: LdPrVar
  loc_B78FBC: LateMemCall
  loc_B78FC2: LitVarStr var_94, "    <td colspan=""2"" align=""right"" valign=""top"" class=""Encabezado"">TOTALES:</td>"
  loc_B78FC7: PopAdLdVar
  loc_B78FC8: FLdPr Me
  loc_B78FCB: MemLdRfVar from_stack_1.global_72
  loc_B78FCE: LdPrVar
  loc_B78FD0: LateMemCall
  loc_B78FD6: LitStr "    <td>"
  loc_B78FD9: FLdPr Me
  loc_B78FDC: MemLdStr global_124
  loc_B78FDF: FLdPr Me
  loc_B78FE2: MemLdStr global_140
  loc_B78FE5: Ary1LdPr
  loc_B78FE6: MemLdStr global_4
  loc_B78FE9: ConcatStr
  loc_B78FEA: FStStrNoPop var_A8
  loc_B78FED: LitStr "</td>"
  loc_B78FF0: ConcatStr
  loc_B78FF1: CVarStr var_B8
  loc_B78FF4: PopAdLdVar
  loc_B78FF5: FLdPr Me
  loc_B78FF8: MemLdRfVar from_stack_1.global_72
  loc_B78FFB: LdPrVar
  loc_B78FFD: LateMemCall
  loc_B79003: FFree1Str var_A8
  loc_B79006: FFree1Var var_B8 = ""
  loc_B79009: LitStr "    <td>"
  loc_B7900C: FLdPr Me
  loc_B7900F: MemLdStr global_124
  loc_B79012: FLdPr Me
  loc_B79015: MemLdStr global_140
  loc_B79018: Ary1LdPr
  loc_B79019: MemLdStr global_8
  loc_B7901C: ConcatStr
  loc_B7901D: FStStrNoPop var_A8
  loc_B79020: LitStr "</td>"
  loc_B79023: ConcatStr
  loc_B79024: CVarStr var_B8
  loc_B79027: PopAdLdVar
  loc_B79028: FLdPr Me
  loc_B7902B: MemLdRfVar from_stack_1.global_72
  loc_B7902E: LdPrVar
  loc_B79030: LateMemCall
  loc_B79036: FFree1Str var_A8
  loc_B79039: FFree1Var var_B8 = ""
  loc_B7903C: LitStr "    <td>"
  loc_B7903F: FLdPr Me
  loc_B79042: MemLdStr global_124
  loc_B79045: FLdPr Me
  loc_B79048: MemLdStr global_140
  loc_B7904B: Ary1LdPr
  loc_B7904C: MemLdStr global_12
  loc_B7904F: ConcatStr
  loc_B79050: FStStrNoPop var_A8
  loc_B79053: LitStr "</td>"
  loc_B79056: ConcatStr
  loc_B79057: CVarStr var_B8
  loc_B7905A: PopAdLdVar
  loc_B7905B: FLdPr Me
  loc_B7905E: MemLdRfVar from_stack_1.global_72
  loc_B79061: LdPrVar
  loc_B79063: LateMemCall
  loc_B79069: FFree1Str var_A8
  loc_B7906C: FFree1Var var_B8 = ""
  loc_B7906F: LitStr "    <td>"
  loc_B79072: FLdPr Me
  loc_B79075: MemLdStr global_124
  loc_B79078: FLdPr Me
  loc_B7907B: MemLdStr global_140
  loc_B7907E: Ary1LdPr
  loc_B7907F: MemLdStr global_16
  loc_B79082: ConcatStr
  loc_B79083: FStStrNoPop var_A8
  loc_B79086: LitStr "</td>"
  loc_B79089: ConcatStr
  loc_B7908A: CVarStr var_B8
  loc_B7908D: PopAdLdVar
  loc_B7908E: FLdPr Me
  loc_B79091: MemLdRfVar from_stack_1.global_72
  loc_B79094: LdPrVar
  loc_B79096: LateMemCall
  loc_B7909C: FFree1Str var_A8
  loc_B7909F: FFree1Var var_B8 = ""
  loc_B790A2: LitStr "    <td>"
  loc_B790A5: FLdPr Me
  loc_B790A8: MemLdStr global_124
  loc_B790AB: FLdPr Me
  loc_B790AE: MemLdStr global_140
  loc_B790B1: Ary1LdPr
  loc_B790B2: MemLdStr global_20
  loc_B790B5: ConcatStr
  loc_B790B6: FStStrNoPop var_A8
  loc_B790B9: LitStr "</td>"
  loc_B790BC: ConcatStr
  loc_B790BD: CVarStr var_B8
  loc_B790C0: PopAdLdVar
  loc_B790C1: FLdPr Me
  loc_B790C4: MemLdRfVar from_stack_1.global_72
  loc_B790C7: LdPrVar
  loc_B790C9: LateMemCall
  loc_B790CF: FFree1Str var_A8
  loc_B790D2: FFree1Var var_B8 = ""
  loc_B790D5: LitVarStr var_94, "  </tr>"
  loc_B790DA: PopAdLdVar
  loc_B790DB: FLdPr Me
  loc_B790DE: MemLdRfVar from_stack_1.global_72
  loc_B790E1: LdPrVar
  loc_B790E3: LateMemCall
  loc_B790E9: LitVarStr var_94, "  <tr>"
  loc_B790EE: PopAdLdVar
  loc_B790EF: FLdPr Me
  loc_B790F2: MemLdRfVar from_stack_1.global_72
  loc_B790F5: LdPrVar
  loc_B790F7: LateMemCall
  loc_B790FD: LitStr "    <td colspan=""7"" valign=""top"">SON PESOS: <strong>"
  loc_B79100: FLdPr Me
  loc_B79103: MemLdStr global_124
  loc_B79106: FLdPr Me
  loc_B79109: MemLdStr global_140
  loc_B7910C: Ary1LdPr
  loc_B7910D: MemLdStr global_20
  loc_B79110: CR8Str
  loc_B79112: PopFPR8
  loc_B79113: ImpAdCallI2  = Proc_272_28_AB2798()
  loc_B79118: FStStrNoPop var_A8
  loc_B7911B: ConcatStr
  loc_B7911C: FStStrNoPop var_BC
  loc_B7911F: LitStr ".---</strong></td>"
  loc_B79122: ConcatStr
  loc_B79123: CVarStr var_B8
  loc_B79126: PopAdLdVar
  loc_B79127: FLdPr Me
  loc_B7912A: MemLdRfVar from_stack_1.global_72
  loc_B7912D: LdPrVar
  loc_B7912F: LateMemCall
  loc_B79135: FFreeStr var_A8 = ""
  loc_B7913C: FFree1Var var_B8 = ""
  loc_B7913F: LitVarStr var_94, "  </tr>"
  loc_B79144: PopAdLdVar
  loc_B79145: FLdPr Me
  loc_B79148: MemLdRfVar from_stack_1.global_72
  loc_B7914B: LdPrVar
  loc_B7914D: LateMemCall
  loc_B79153: LitVarStr var_94, "</table>"
  loc_B79158: PopAdLdVar
  loc_B79159: FLdPr Me
  loc_B7915C: MemLdRfVar from_stack_1.global_72
  loc_B7915F: LdPrVar
  loc_B79161: LateMemCall
  loc_B79167: LitVarStr var_94, "<div class=""Normal"">Los recargos por pago fuera de t&eacute;rmino se incluir&aacute;n en la pr&oacute;xima facturaci&oacute;n.</div>"
  loc_B7916C: PopAdLdVar
  loc_B7916D: FLdPr Me
  loc_B79170: MemLdRfVar from_stack_1.global_72
  loc_B79173: LdPrVar
  loc_B79175: LateMemCall
  loc_B7917B: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B7917E: FLdRfVar var_A8
  loc_B79181: FLdRfVar var_C0
  loc_B79184: NewIfNullPr clsparagene
  loc_B79187: from_stack_1v = clsparagene.ObtenerLeyendaBoletos()
  loc_B7918C: ILdRf var_A8
  loc_B7918F: ConcatStr
  loc_B79190: FStStrNoPop var_BC
  loc_B79193: LitStr "</div>"
  loc_B79196: ConcatStr
  loc_B79197: CVarStr var_B8
  loc_B7919A: PopAdLdVar
  loc_B7919B: FLdPr Me
  loc_B7919E: MemLdRfVar from_stack_1.global_72
  loc_B791A1: LdPrVar
  loc_B791A3: LateMemCall
  loc_B791A9: FFreeStr var_A8 = ""
  loc_B791B0: FFree1Var var_B8 = ""
  loc_B791B3: LitStr " SELECT CONCAT('LA PERSONA POSEE EXPEDIENTE: ',' ', replace(Expediente,'-','/'),' ', 'CON CAUSA: ', Causa) Detalle"
  loc_B791B6: LitStr " FROM expeinmu WHERE CodiOfic = "
  loc_B791B9: ConcatStr
  loc_B791BA: FStStrNoPop var_A8
  loc_B791BD: FLdPr Me
  loc_B791C0: MemLdStr global_124
  loc_B791C3: FLdPr Me
  loc_B791C6: MemLdStr global_116
  loc_B791C9: Ary1LdPr
  loc_B791CA: MemLdStr global_124
  loc_B791CD: ConcatStr
  loc_B791CE: FStStrNoPop var_BC
  loc_B791D1: LitStr " AND CodiInmu = "
  loc_B791D4: ConcatStr
  loc_B791D5: FStStrNoPop var_C4
  loc_B791D8: FLdPr Me
  loc_B791DB: MemLdStr global_124
  loc_B791DE: FLdPr Me
  loc_B791E1: MemLdStr global_116
  loc_B791E4: Ary1LdPr
  loc_B791E5: MemLdStr global_40
  loc_B791E8: ConcatStr
  loc_B791E9: FStStrNoPop var_C8
  loc_B791EC: LitStr " AND Afectadeuda = 1"
  loc_B791EF: ConcatStr
  loc_B791F0: FStStrNoPop var_CC
  loc_B791F3: FLdPr Me
  loc_B791F6: MemLdRfVar from_stack_1.global_108
  loc_B791F9: NewIfNullPr clsctacte
  loc_B791FC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B79201: FFreeStr var_A8 = "": var_BC = "": var_C4 = "": var_C8 = ""
  loc_B7920E: FLdRfVar var_D0
  loc_B79211: FLdPr Me
  loc_B79214: MemLdRfVar from_stack_1.global_108
  loc_B79217: NewIfNullPr clsctacte
  loc_B7921A: from_stack_1 = clsctacte.RecordCount
  loc_B7921F: ILdRf var_D0
  loc_B79222: LitI4 0
  loc_B79227: GtI4
  loc_B79228: BranchF loc_B792D0
  loc_B7922B: FLdPr Me
  loc_B7922E: MemLdRfVar from_stack_1.global_108
  loc_B79231: NewIfNullPr clsctacte
  loc_B79234: Call clsctacte.MoveFirst()
  loc_B79239: FLdRfVar var_D2
  loc_B7923C: FLdPr Me
  loc_B7923F: MemLdRfVar from_stack_1.global_108
  loc_B79242: NewIfNullPr clsctacte
  loc_B79245: from_stack_1 = clsctacte.EOF
  loc_B7924A: FLdI2 var_D2
  loc_B7924D: NotI4
  loc_B7924E: BranchF loc_B792D0
  loc_B79251: LitVarStr var_A4, "<div class=""Normal"" align=""justify"">"
  loc_B79256: FLdRfVar var_B8
  loc_B79259: FLdRfVar var_E0
  loc_B7925C: LitVarStr var_94, "Detalle"
  loc_B79261: PopAdLdVar
  loc_B79262: FLdRfVar var_DC
  loc_B79265: FLdRfVar var_D8
  loc_B79268: FLdPr Me
  loc_B7926B: MemLdRfVar from_stack_1.global_108
  loc_B7926E: NewIfNullPr clsctacte
  loc_B79271: from_stack_1v = clsctacte.RsFrmGet()
  loc_B79276: FLdPr var_D8
  loc_B79279:  = Me.Fields
  loc_B7927E: FLdPr var_DC
  loc_B79281: from_stack_2 = Me.Item(from_stack_1)
  loc_B79286: FLdPr var_E0
  loc_B79289:  = Me.Value
  loc_B7928E: FLdRfVar var_B8
  loc_B79291: ConcatVar var_F0
  loc_B79295: LitVarStr var_100, "</div>"
  loc_B7929A: ConcatVar var_110
  loc_B7929E: PopAdLdVar
  loc_B7929F: FLdPr Me
  loc_B792A2: MemLdRfVar from_stack_1.global_72
  loc_B792A5: LdPrVar
  loc_B792A7: LateMemCall
  loc_B792AD: FFreeAd var_D8 = "": var_DC = ""
  loc_B792B6: FFreeVar var_B8 = "": var_F0 = ""
  loc_B792BF: FLdPr Me
  loc_B792C2: MemLdRfVar from_stack_1.global_108
  loc_B792C5: NewIfNullPr clsctacte
  loc_B792C8: Call clsctacte.MoveSiguiente()
  loc_B792CD: Branch loc_B79239
  loc_B792D0: FLdPr Me
  loc_B792D3: MemLdStr sImprimirApremioPendiente
  loc_B792D6: LitStr vbNullString
  loc_B792D9: NeStr
  loc_B792DB: BranchF loc_B79307
  loc_B792DE: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B792E1: FLdPr Me
  loc_B792E4: MemLdStr sImprimirApremioPendiente
  loc_B792E7: ConcatStr
  loc_B792E8: FStStrNoPop var_A8
  loc_B792EB: LitStr "</div>"
  loc_B792EE: ConcatStr
  loc_B792EF: CVarStr var_B8
  loc_B792F2: PopAdLdVar
  loc_B792F3: FLdPr Me
  loc_B792F6: MemLdRfVar from_stack_1.global_72
  loc_B792F9: LdPrVar
  loc_B792FB: LateMemCall
  loc_B79301: FFree1Str var_A8
  loc_B79304: FFree1Var var_B8 = ""
  loc_B79307: FLdPr Me
  loc_B7930A: MemLdStr sImprimirApremioInhibido
  loc_B7930D: LitStr vbNullString
  loc_B79310: NeStr
  loc_B79312: BranchF loc_B7933E
  loc_B79315: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B79318: FLdPr Me
  loc_B7931B: MemLdStr sImprimirApremioInhibido
  loc_B7931E: ConcatStr
  loc_B7931F: FStStrNoPop var_A8
  loc_B79322: LitStr "</div>"
  loc_B79325: ConcatStr
  loc_B79326: CVarStr var_B8
  loc_B79329: PopAdLdVar
  loc_B7932A: FLdPr Me
  loc_B7932D: MemLdRfVar from_stack_1.global_72
  loc_B79330: LdPrVar
  loc_B79332: LateMemCall
  loc_B79338: FFree1Str var_A8
  loc_B7933B: FFree1Var var_B8 = ""
  loc_B7933E: LitVarStr var_94, "</td>"
  loc_B79343: PopAdLdVar
  loc_B79344: FLdPr Me
  loc_B79347: MemLdRfVar from_stack_1.global_72
  loc_B7934A: LdPrVar
  loc_B7934C: LateMemCall
  loc_B79352: LitVarStr var_94, "</tr></table><hr>"
  loc_B79357: PopAdLdVar
  loc_B79358: FLdPr Me
  loc_B7935B: MemLdRfVar from_stack_1.global_72
  loc_B7935E: LdPrVar
  loc_B79360: LateMemCall
  loc_B79366: ExitProcHresult
End Function

Private Function Proc_355_44_B3C198() 'B3C198
  'Data Table: 4E16A8
  loc_B3BE6C: FLdPr Me
  loc_B3BE6F: MemLdStr global_124
  loc_B3BE72: FLdPr Me
  loc_B3BE75: MemLdStr global_116
  loc_B3BE78: Ary1LdPr
  loc_B3BE79: MemLdStr global_144
  loc_B3BE7C: LitStr vbNullString
  loc_B3BE7F: NeStr
  loc_B3BE81: BranchF loc_B3BF15
  loc_B3BE84: LitVarStr var_94, "  <tr>"
  loc_B3BE89: PopAdLdVar
  loc_B3BE8A: FLdPr Me
  loc_B3BE8D: MemLdRfVar from_stack_1.global_72
  loc_B3BE90: LdPrVar
  loc_B3BE92: LateMemCall
  loc_B3BE98: LitStr "    <td colspan=""5"" align=""right"" valign=""top""><strong>APREMIO ("
  loc_B3BE9B: FLdPr Me
  loc_B3BE9E: MemLdStr global_124
  loc_B3BEA1: FLdPr Me
  loc_B3BEA4: MemLdStr global_116
  loc_B3BEA7: Ary1LdPr
  loc_B3BEA8: MemLdStr global_148
  loc_B3BEAB: ConcatStr
  loc_B3BEAC: FStStrNoPop var_A8
  loc_B3BEAF: LitStr "):</strong></td>"
  loc_B3BEB2: ConcatStr
  loc_B3BEB3: CVarStr var_B8
  loc_B3BEB6: PopAdLdVar
  loc_B3BEB7: FLdPr Me
  loc_B3BEBA: MemLdRfVar from_stack_1.global_72
  loc_B3BEBD: LdPrVar
  loc_B3BEBF: LateMemCall
  loc_B3BEC5: FFree1Str var_A8
  loc_B3BEC8: FFree1Var var_B8 = ""
  loc_B3BECB: LitStr vbNullString
  loc_B3BECE: LitI2_Byte 0
  loc_B3BED0: LitI2_Byte 0
  loc_B3BED2: LitI2_Byte 0
  loc_B3BED4: LitStr "right"
  loc_B3BED7: FLdPr Me
  loc_B3BEDA: MemLdStr global_124
  loc_B3BEDD: FLdPr Me
  loc_B3BEE0: MemLdStr global_116
  loc_B3BEE3: Ary1LdPr
  loc_B3BEE4: MemLdStr global_144
  loc_B3BEE7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3BEEC: CVarStr var_B8
  loc_B3BEEF: PopAdLdVar
  loc_B3BEF0: FLdPr Me
  loc_B3BEF3: MemLdRfVar from_stack_1.global_72
  loc_B3BEF6: LdPrVar
  loc_B3BEF8: LateMemCall
  loc_B3BEFE: FFree1Var var_B8 = ""
  loc_B3BF01: LitVarStr var_94, "  </tr>"
  loc_B3BF06: PopAdLdVar
  loc_B3BF07: FLdPr Me
  loc_B3BF0A: MemLdRfVar from_stack_1.global_72
  loc_B3BF0D: LdPrVar
  loc_B3BF0F: LateMemCall
  loc_B3BF15: FLdPr Me
  loc_B3BF18: MemLdStr DetaDeva
  loc_B3BF1B: LitStr vbNullString
  loc_B3BF1E: NeStr
  loc_B3BF20: BranchF loc_B3BF7E
  loc_B3BF23: LitVarStr var_94, "  <tr>"
  loc_B3BF28: PopAdLdVar
  loc_B3BF29: FLdPr Me
  loc_B3BF2C: MemLdRfVar from_stack_1.global_72
  loc_B3BF2F: LdPrVar
  loc_B3BF31: LateMemCall
  loc_B3BF37: LitStr "    <td colspan=""6"" align=""justify"" valign=""top"">Detalle: "
  loc_B3BF3A: FLdPr Me
  loc_B3BF3D: MemLdStr DetaDeva
  loc_B3BF40: ConcatStr
  loc_B3BF41: FStStrNoPop var_A8
  loc_B3BF44: LitStr "</td>"
  loc_B3BF47: ConcatStr
  loc_B3BF48: CVarStr var_B8
  loc_B3BF4B: PopAdLdVar
  loc_B3BF4C: FLdPr Me
  loc_B3BF4F: MemLdRfVar from_stack_1.global_72
  loc_B3BF52: LdPrVar
  loc_B3BF54: LateMemCall
  loc_B3BF5A: FFree1Str var_A8
  loc_B3BF5D: FFree1Var var_B8 = ""
  loc_B3BF60: LitVarStr var_94, "  </tr>"
  loc_B3BF65: PopAdLdVar
  loc_B3BF66: FLdPr Me
  loc_B3BF69: MemLdRfVar from_stack_1.global_72
  loc_B3BF6C: LdPrVar
  loc_B3BF6E: LateMemCall
  loc_B3BF74: LitStr vbNullString
  loc_B3BF77: FLdPr Me
  loc_B3BF7A: MemStStrCopy
  loc_B3BF7E: LitVarStr var_94, "  <tr>"
  loc_B3BF83: PopAdLdVar
  loc_B3BF84: FLdPr Me
  loc_B3BF87: MemLdRfVar from_stack_1.global_72
  loc_B3BF8A: LdPrVar
  loc_B3BF8C: LateMemCall
  loc_B3BF92: LitVarStr var_94, "    <td colspan=""2"" align=""center"" valign=""top"" class=""Encabezado"">TOTALES:</td>"
  loc_B3BF97: PopAdLdVar
  loc_B3BF98: FLdPr Me
  loc_B3BF9B: MemLdRfVar from_stack_1.global_72
  loc_B3BF9E: LdPrVar
  loc_B3BFA0: LateMemCall
  loc_B3BFA6: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B3BFA9: LitI4 1
  loc_B3BFAE: FLdPr Me
  loc_B3BFB1: MemLdStr global_144
  loc_B3BFB4: Ary1LdPr
  loc_B3BFB5: MemLdStr global_12
  loc_B3BFB8: ConcatStr
  loc_B3BFB9: FStStrNoPop var_A8
  loc_B3BFBC: LitStr "</td>"
  loc_B3BFBF: ConcatStr
  loc_B3BFC0: CVarStr var_B8
  loc_B3BFC3: PopAdLdVar
  loc_B3BFC4: FLdPr Me
  loc_B3BFC7: MemLdRfVar from_stack_1.global_72
  loc_B3BFCA: LdPrVar
  loc_B3BFCC: LateMemCall
  loc_B3BFD2: FFree1Str var_A8
  loc_B3BFD5: FFree1Var var_B8 = ""
  loc_B3BFD8: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B3BFDB: LitI4 1
  loc_B3BFE0: FLdPr Me
  loc_B3BFE3: MemLdStr global_144
  loc_B3BFE6: Ary1LdPr
  loc_B3BFE7: MemLdStr global_16
  loc_B3BFEA: ConcatStr
  loc_B3BFEB: FStStrNoPop var_A8
  loc_B3BFEE: LitStr "</td>"
  loc_B3BFF1: ConcatStr
  loc_B3BFF2: CVarStr var_B8
  loc_B3BFF5: PopAdLdVar
  loc_B3BFF6: FLdPr Me
  loc_B3BFF9: MemLdRfVar from_stack_1.global_72
  loc_B3BFFC: LdPrVar
  loc_B3BFFE: LateMemCall
  loc_B3C004: FFree1Str var_A8
  loc_B3C007: FFree1Var var_B8 = ""
  loc_B3C00A: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B3C00D: LitI4 1
  loc_B3C012: FLdPr Me
  loc_B3C015: MemLdStr global_144
  loc_B3C018: Ary1LdPr
  loc_B3C019: MemLdStr global_20
  loc_B3C01C: ConcatStr
  loc_B3C01D: FStStrNoPop var_A8
  loc_B3C020: LitStr "</td>"
  loc_B3C023: ConcatStr
  loc_B3C024: CVarStr var_B8
  loc_B3C027: PopAdLdVar
  loc_B3C028: FLdPr Me
  loc_B3C02B: MemLdRfVar from_stack_1.global_72
  loc_B3C02E: LdPrVar
  loc_B3C030: LateMemCall
  loc_B3C036: FFree1Str var_A8
  loc_B3C039: FFree1Var var_B8 = ""
  loc_B3C03C: LitStr "    <td align=""right"" class=""Total"">"
  loc_B3C03F: LitI4 1
  loc_B3C044: FLdPr Me
  loc_B3C047: MemLdStr global_144
  loc_B3C04A: Ary1LdPr
  loc_B3C04B: MemLdStr global_24
  loc_B3C04E: ConcatStr
  loc_B3C04F: FStStrNoPop var_A8
  loc_B3C052: LitStr "</td>"
  loc_B3C055: ConcatStr
  loc_B3C056: CVarStr var_B8
  loc_B3C059: PopAdLdVar
  loc_B3C05A: FLdPr Me
  loc_B3C05D: MemLdRfVar from_stack_1.global_72
  loc_B3C060: LdPrVar
  loc_B3C062: LateMemCall
  loc_B3C068: FFree1Str var_A8
  loc_B3C06B: FFree1Var var_B8 = ""
  loc_B3C06E: LitVarStr var_94, "  </tr>"
  loc_B3C073: PopAdLdVar
  loc_B3C074: FLdPr Me
  loc_B3C077: MemLdRfVar from_stack_1.global_72
  loc_B3C07A: LdPrVar
  loc_B3C07C: LateMemCall
  loc_B3C082: LitVarStr var_94, "  <tr>"
  loc_B3C087: PopAdLdVar
  loc_B3C088: FLdPr Me
  loc_B3C08B: MemLdRfVar from_stack_1.global_72
  loc_B3C08E: LdPrVar
  loc_B3C090: LateMemCall
  loc_B3C096: LitStr "    <td colspan=""6"" valign=""top"">SON PESOS: <strong>"
  loc_B3C099: LitI4 1
  loc_B3C09E: FLdPr Me
  loc_B3C0A1: MemLdStr global_144
  loc_B3C0A4: Ary1LdPr
  loc_B3C0A5: MemLdStr global_24
  loc_B3C0A8: CR8Str
  loc_B3C0AA: PopFPR8
  loc_B3C0AB: ImpAdCallI2  = Proc_272_28_AB2798()
  loc_B3C0B0: FStStrNoPop var_A8
  loc_B3C0B3: ConcatStr
  loc_B3C0B4: FStStrNoPop var_BC
  loc_B3C0B7: LitStr ".---</strong></td>"
  loc_B3C0BA: ConcatStr
  loc_B3C0BB: CVarStr var_B8
  loc_B3C0BE: PopAdLdVar
  loc_B3C0BF: FLdPr Me
  loc_B3C0C2: MemLdRfVar from_stack_1.global_72
  loc_B3C0C5: LdPrVar
  loc_B3C0C7: LateMemCall
  loc_B3C0CD: FFreeStr var_A8 = ""
  loc_B3C0D4: FFree1Var var_B8 = ""
  loc_B3C0D7: LitVarStr var_94, "  </tr>"
  loc_B3C0DC: PopAdLdVar
  loc_B3C0DD: FLdPr Me
  loc_B3C0E0: MemLdRfVar from_stack_1.global_72
  loc_B3C0E3: LdPrVar
  loc_B3C0E5: LateMemCall
  loc_B3C0EB: LitVarStr var_94, "  <tr>"
  loc_B3C0F0: PopAdLdVar
  loc_B3C0F1: FLdPr Me
  loc_B3C0F4: MemLdRfVar from_stack_1.global_72
  loc_B3C0F7: LdPrVar
  loc_B3C0F9: LateMemCall
  loc_B3C0FF: LitStr "    <td colspan=""6"" align=""justify"" valign=""top""><strong>Observaciones:</strong> "
  loc_B3C102: FLdPr Me
  loc_B3C105: MemLdStr global_124
  loc_B3C108: FLdPr Me
  loc_B3C10B: MemLdStr global_116
  loc_B3C10E: Ary1LdPr
  loc_B3C10F: MemLdStr global_156
  loc_B3C112: ConcatStr
  loc_B3C113: FStStrNoPop var_A8
  loc_B3C116: LitStr "</td>"
  loc_B3C119: ConcatStr
  loc_B3C11A: CVarStr var_B8
  loc_B3C11D: PopAdLdVar
  loc_B3C11E: FLdPr Me
  loc_B3C121: MemLdRfVar from_stack_1.global_72
  loc_B3C124: LdPrVar
  loc_B3C126: LateMemCall
  loc_B3C12C: FFree1Str var_A8
  loc_B3C12F: FFree1Var var_B8 = ""
  loc_B3C132: LitVarStr var_94, "  </tr>"
  loc_B3C137: PopAdLdVar
  loc_B3C138: FLdPr Me
  loc_B3C13B: MemLdRfVar from_stack_1.global_72
  loc_B3C13E: LdPrVar
  loc_B3C140: LateMemCall
  loc_B3C146: LitVarStr var_94, "</table>"
  loc_B3C14B: PopAdLdVar
  loc_B3C14C: FLdPr Me
  loc_B3C14F: MemLdRfVar from_stack_1.global_72
  loc_B3C152: LdPrVar
  loc_B3C154: LateMemCall
  loc_B3C15A: LitVarStr var_94, "<div class=""Normal"">Los recargos por pago fuera de t&eacute;rmino se incluir&aacute;n en la pr&oacute;xima facturaci&oacute;n.</div>"
  loc_B3C15F: PopAdLdVar
  loc_B3C160: FLdPr Me
  loc_B3C163: MemLdRfVar from_stack_1.global_72
  loc_B3C166: LdPrVar
  loc_B3C168: LateMemCall
  loc_B3C16E: LitVarStr var_94, "</td>"
  loc_B3C173: PopAdLdVar
  loc_B3C174: FLdPr Me
  loc_B3C177: MemLdRfVar from_stack_1.global_72
  loc_B3C17A: LdPrVar
  loc_B3C17C: LateMemCall
  loc_B3C182: LitVarStr var_94, "</tr></table><hr>"
  loc_B3C187: PopAdLdVar
  loc_B3C188: FLdPr Me
  loc_B3C18B: MemLdRfVar from_stack_1.global_72
  loc_B3C18E: LdPrVar
  loc_B3C190: LateMemCall
  loc_B3C196: ExitProcHresult
End Function

Private Function Proc_355_45_B95DC8() 'B95DC8
  'Data Table: 4E16A8
  loc_B9584C: FLdPr Me
  loc_B9584F: MemLdStr global_124
  loc_B95852: FLdPr Me
  loc_B95855: MemLdStr global_116
  loc_B95858: AryLock
  loc_B9585B: Ary1LdRf
  loc_B9585C: FStR4 var_8C
  loc_B9585F: LitVarStr var_9C, "<table align=""center"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_B95864: PopAdLdVar
  loc_B95865: FLdPr Me
  loc_B95868: MemLdRfVar from_stack_1.global_72
  loc_B9586B: LdPrVar
  loc_B9586D: LateMemCall
  loc_B95873: LitVarStr var_9C, "  <tr>"
  loc_B95878: PopAdLdVar
  loc_B95879: FLdPr Me
  loc_B9587C: MemLdRfVar from_stack_1.global_72
  loc_B9587F: LdPrVar
  loc_B95881: LateMemCall
  loc_B95887: LitVarStr var_9C, "    <th valign=""top"">"
  loc_B9588C: PopAdLdVar
  loc_B9588D: FLdPr Me
  loc_B95890: MemLdRfVar from_stack_1.global_72
  loc_B95893: LdPrVar
  loc_B95895: LateMemCall
  loc_B9589B: LitVarStr var_9C, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B958A0: PopAdLdVar
  loc_B958A1: FLdPr Me
  loc_B958A4: MemLdRfVar from_stack_1.global_72
  loc_B958A7: LdPrVar
  loc_B958A9: LateMemCall
  loc_B958AF: LitVarStr var_9C, "      <tr>"
  loc_B958B4: PopAdLdVar
  loc_B958B5: FLdPr Me
  loc_B958B8: MemLdRfVar from_stack_1.global_72
  loc_B958BB: LdPrVar
  loc_B958BD: LateMemCall
  loc_B958C3: LitVarStr var_AC, "        <td colspan=""8"" align=""center"" class=""NombreMunicipioBloqueFin"">"
  loc_B958C8: LitVarStr var_9C, "Municipalidad de Guaymallén"
  loc_B958CD: FStVarCopyObj var_BC
  loc_B958D0: FLdRfVar var_BC
  loc_B958D3: FLdRfVar var_CC
  loc_B958D6: ImpAdCallFPR4  = Ucase()
  loc_B958DB: FLdRfVar var_CC
  loc_B958DE: ConcatVar var_DC
  loc_B958E2: LitVarStr var_EC, " - "
  loc_B958E7: ConcatVar var_FC
  loc_B958EB: LitVarStr var_10C, "Dirección de Rentas"
  loc_B958F0: ConcatVar var_11C
  loc_B958F4: LitVarStr var_12C, "</td>"
  loc_B958F9: ConcatVar var_13C
  loc_B958FD: PopAdLdVar
  loc_B958FE: FLdPr Me
  loc_B95901: MemLdRfVar from_stack_1.global_72
  loc_B95904: LdPrVar
  loc_B95906: LateMemCall
  loc_B9590C: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_B9591B: LitVarStr var_9C, "        </tr>"
  loc_B95920: PopAdLdVar
  loc_B95921: FLdPr Me
  loc_B95924: MemLdRfVar from_stack_1.global_72
  loc_B95927: LdPrVar
  loc_B95929: LateMemCall
  loc_B9592F: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B95934: PopAdLdVar
  loc_B95935: FLdPr Me
  loc_B95938: MemLdRfVar from_stack_1.global_72
  loc_B9593B: LdPrVar
  loc_B9593D: LateMemCall
  loc_B95943: LitVarStr var_9C, "        <td colspan=""8"">APELLIDO Y NOMBRE</td>"
  loc_B95948: PopAdLdVar
  loc_B95949: FLdPr Me
  loc_B9594C: MemLdRfVar from_stack_1.global_72
  loc_B9594F: LdPrVar
  loc_B95951: LateMemCall
  loc_B95957: LitVarStr var_9C, "        </tr>"
  loc_B9595C: PopAdLdVar
  loc_B9595D: FLdPr Me
  loc_B95960: MemLdRfVar from_stack_1.global_72
  loc_B95963: LdPrVar
  loc_B95965: LateMemCall
  loc_B9596B: LitVarStr var_9C, "      <tr>"
  loc_B95970: PopAdLdVar
  loc_B95971: FLdPr Me
  loc_B95974: MemLdRfVar from_stack_1.global_72
  loc_B95977: LdPrVar
  loc_B95979: LateMemCall
  loc_B9597F: LitStr "        <td align=""left"" colspan=""8"" class=""NormalBloqueFinGrande"">"
  loc_B95982: FMemLdR4 var_8C(4)
  loc_B95987: ConcatStr
  loc_B95988: FStStrNoPop var_150
  loc_B9598B: LitStr "</td>"
  loc_B9598E: ConcatStr
  loc_B9598F: CVarStr var_BC
  loc_B95992: PopAdLdVar
  loc_B95993: FLdPr Me
  loc_B95996: MemLdRfVar from_stack_1.global_72
  loc_B95999: LdPrVar
  loc_B9599B: LateMemCall
  loc_B959A1: FFree1Str var_150
  loc_B959A4: FFree1Var var_BC = ""
  loc_B959A7: LitVarStr var_9C, "        </tr>"
  loc_B959AC: PopAdLdVar
  loc_B959AD: FLdPr Me
  loc_B959B0: MemLdRfVar from_stack_1.global_72
  loc_B959B3: LdPrVar
  loc_B959B5: LateMemCall
  loc_B959BB: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B959C0: PopAdLdVar
  loc_B959C1: FLdPr Me
  loc_B959C4: MemLdRfVar from_stack_1.global_72
  loc_B959C7: LdPrVar
  loc_B959C9: LateMemCall
  loc_B959CF: LitVarStr var_9C, "        <td width=""16" & Chr(37) & """>USUARIO</td>"
  loc_B959D4: PopAdLdVar
  loc_B959D5: FLdPr Me
  loc_B959D8: MemLdRfVar from_stack_1.global_72
  loc_B959DB: LdPrVar
  loc_B959DD: LateMemCall
  loc_B959E3: LitVarStr var_10C, "        <td width=""16" & Chr(37) & """>"
  loc_B959E8: LitVarStr var_EC, "OFICINA"
  loc_B959ED: FStVarCopyObj var_CC
  loc_B959F0: FLdRfVar var_CC
  loc_B959F3: LitVarStr var_AC, "CONCEPTO"
  loc_B959F8: FStVarCopyObj var_BC
  loc_B959FB: FLdRfVar var_BC
  loc_B959FE: FLdPr Me
  loc_B95A01: MemLdI2 global_120
  loc_B95A04: LitI2_Byte 1
  loc_B95A06: EqI2
  loc_B95A07: FMemLdR4 var_8C(124)
  loc_B95A0C: CR8Str
  loc_B95A0E: LitI2_Byte 6
  loc_B95A10: CR8I2
  loc_B95A11: NeR8
  loc_B95A12: AndI4
  loc_B95A13: CVarBoolI2 var_9C
  loc_B95A17: FLdRfVar var_DC
  loc_B95A1A: ImpAdCallFPR4  = IIf(, , )
  loc_B95A1F: FLdRfVar var_DC
  loc_B95A22: ConcatVar var_FC
  loc_B95A26: LitVarStr var_12C, "</td>"
  loc_B95A2B: ConcatVar var_11C
  loc_B95A2F: PopAdLdVar
  loc_B95A30: FLdPr Me
  loc_B95A33: MemLdRfVar from_stack_1.global_72
  loc_B95A36: LdPrVar
  loc_B95A38: LateMemCall
  loc_B95A3E: FFreeVar var_9C = "": var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B95A4D: LitVarStr var_9C, "        <td width=""16" & Chr(37) & """>CUENTA</td>"
  loc_B95A52: PopAdLdVar
  loc_B95A53: FLdPr Me
  loc_B95A56: MemLdRfVar from_stack_1.global_72
  loc_B95A59: LdPrVar
  loc_B95A5B: LateMemCall
  loc_B95A61: LitVarStr var_9C, "        <td width=""16" & Chr(37) & """>BOLETO</td>"
  loc_B95A66: PopAdLdVar
  loc_B95A67: FLdPr Me
  loc_B95A6A: MemLdRfVar from_stack_1.global_72
  loc_B95A6D: LdPrVar
  loc_B95A6F: LateMemCall
  loc_B95A75: LitVarStr var_9C, "        <td width=""16" & Chr(37) & """>VENCIMIENTO</td>"
  loc_B95A7A: PopAdLdVar
  loc_B95A7B: FLdPr Me
  loc_B95A7E: MemLdRfVar from_stack_1.global_72
  loc_B95A81: LdPrVar
  loc_B95A83: LateMemCall
  loc_B95A89: LitVarStr var_9C, "        <td>IMPORTE</td>"
  loc_B95A8E: PopAdLdVar
  loc_B95A8F: FLdPr Me
  loc_B95A92: MemLdRfVar from_stack_1.global_72
  loc_B95A95: LdPrVar
  loc_B95A97: LateMemCall
  loc_B95A9D: LitVarStr var_9C, "      </tr>"
  loc_B95AA2: PopAdLdVar
  loc_B95AA3: FLdPr Me
  loc_B95AA6: MemLdRfVar from_stack_1.global_72
  loc_B95AA9: LdPrVar
  loc_B95AAB: LateMemCall
  loc_B95AB1: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_B95AB6: PopAdLdVar
  loc_B95AB7: FLdPr Me
  loc_B95ABA: MemLdRfVar from_stack_1.global_72
  loc_B95ABD: LdPrVar
  loc_B95ABF: LateMemCall
  loc_B95AC5: LitStr "        <td align=""center"">"
  loc_B95AC8: FMemLdR4 var_8C(112)
  loc_B95ACD: ConcatStr
  loc_B95ACE: FStStrNoPop var_150
  loc_B95AD1: LitStr "</td>"
  loc_B95AD4: ConcatStr
  loc_B95AD5: CVarStr var_BC
  loc_B95AD8: PopAdLdVar
  loc_B95AD9: FLdPr Me
  loc_B95ADC: MemLdRfVar from_stack_1.global_72
  loc_B95ADF: LdPrVar
  loc_B95AE1: LateMemCall
  loc_B95AE7: FFree1Str var_150
  loc_B95AEA: FFree1Var var_BC = ""
  loc_B95AED: FLdPr Me
  loc_B95AF0: MemLdI2 global_120
  loc_B95AF3: LitI2_Byte 1
  loc_B95AF5: EqI2
  loc_B95AF6: FMemLdR4 var_8C(124)
  loc_B95AFB: CR8Str
  loc_B95AFD: LitI2_Byte 6
  loc_B95AFF: CR8I2
  loc_B95B00: NeR8
  loc_B95B01: AndI4
  loc_B95B02: BranchF loc_B95B4D
  loc_B95B05: LitStr "        <td align=""right"">"
  loc_B95B08: LitI4 1
  loc_B95B0D: LitI4 1
  loc_B95B12: FLdPr Me
  loc_B95B15: MemLdStr global_124
  loc_B95B18: FLdPr Me
  loc_B95B1B: MemLdStr global_116
  loc_B95B1E: Ary1LdPr
  loc_B95B1F: MemLdStr global_192
  loc_B95B22: Ary1LdPr
  loc_B95B23: MemLdStr global_0
  loc_B95B26: Ary1LdPr
  loc_B95B27: MemLdStr global_0
  loc_B95B2A: ConcatStr
  loc_B95B2B: FStStrNoPop var_150
  loc_B95B2E: LitStr "</td>"
  loc_B95B31: ConcatStr
  loc_B95B32: CVarStr var_BC
  loc_B95B35: PopAdLdVar
  loc_B95B36: FLdPr Me
  loc_B95B39: MemLdRfVar from_stack_1.global_72
  loc_B95B3C: LdPrVar
  loc_B95B3E: LateMemCall
  loc_B95B44: FFree1Str var_150
  loc_B95B47: FFree1Var var_BC = ""
  loc_B95B4A: Branch loc_B95B75
  loc_B95B4D: LitStr "        <td align=""right"">"
  loc_B95B50: FMemLdR4 var_8C(124)
  loc_B95B55: ConcatStr
  loc_B95B56: FStStrNoPop var_150
  loc_B95B59: LitStr "</td>"
  loc_B95B5C: ConcatStr
  loc_B95B5D: CVarStr var_BC
  loc_B95B60: PopAdLdVar
  loc_B95B61: FLdPr Me
  loc_B95B64: MemLdRfVar from_stack_1.global_72
  loc_B95B67: LdPrVar
  loc_B95B69: LateMemCall
  loc_B95B6F: FFree1Str var_150
  loc_B95B72: FFree1Var var_BC = ""
  loc_B95B75: LitStr "        <td align=""right"" class=""NormalBloqueFinGrande"">"
  loc_B95B78: FMemLdR4 var_8C(40)
  loc_B95B7D: ConcatStr
  loc_B95B7E: FStStrNoPop var_150
  loc_B95B81: LitStr "</td>"
  loc_B95B84: ConcatStr
  loc_B95B85: CVarStr var_BC
  loc_B95B88: PopAdLdVar
  loc_B95B89: FLdPr Me
  loc_B95B8C: MemLdRfVar from_stack_1.global_72
  loc_B95B8F: LdPrVar
  loc_B95B91: LateMemCall
  loc_B95B97: FFree1Str var_150
  loc_B95B9A: FFree1Var var_BC = ""
  loc_B95B9D: LitStr "        <td align=""right"">"
  loc_B95BA0: FLdPr Me
  loc_B95BA3: VCallAd Control_ID_PeriBoleMsk
  loc_B95BA6: FStAdFunc var_154
  loc_B95BA9: FLdPr var_154
  loc_B95BAC: LateIdLdVar var_BC DispID_0 0
  loc_B95BB3: CStrVarTmp
  loc_B95BB4: FStStrNoPop var_150
  loc_B95BB7: ConcatStr
  loc_B95BB8: FStStrNoPop var_158
  loc_B95BBB: LitStr "/"
  loc_B95BBE: ConcatStr
  loc_B95BBF: FStStrNoPop var_15C
  loc_B95BC2: FMemLdR4 var_8C(108)
  loc_B95BC7: ConcatStr
  loc_B95BC8: FStStrNoPop var_160
  loc_B95BCB: LitStr "</td>"
  loc_B95BCE: ConcatStr
  loc_B95BCF: CVarStr var_CC
  loc_B95BD2: PopAdLdVar
  loc_B95BD3: FLdPr Me
  loc_B95BD6: MemLdRfVar from_stack_1.global_72
  loc_B95BD9: LdPrVar
  loc_B95BDB: LateMemCall
  loc_B95BE1: FFreeStr var_150 = "": var_158 = "": var_15C = ""
  loc_B95BEC: FFree1Ad var_154
  loc_B95BEF: FFreeVar var_BC = ""
  loc_B95BF6: LitStr "        <td align=""center"" class=""Vencimiento"">"
  loc_B95BF9: FMemLdR4 var_8C(128)
  loc_B95BFE: ConcatStr
  loc_B95BFF: FStStrNoPop var_150
  loc_B95C02: LitStr "</td>"
  loc_B95C05: ConcatStr
  loc_B95C06: CVarStr var_BC
  loc_B95C09: PopAdLdVar
  loc_B95C0A: FLdPr Me
  loc_B95C0D: MemLdRfVar from_stack_1.global_72
  loc_B95C10: LdPrVar
  loc_B95C12: LateMemCall
  loc_B95C18: FFree1Str var_150
  loc_B95C1B: FFree1Var var_BC = ""
  loc_B95C1E: LitStr "        <td align=""right"">"
  loc_B95C21: FMemLdR4 var_8C(152)
  loc_B95C26: ConcatStr
  loc_B95C27: FStStrNoPop var_150
  loc_B95C2A: LitStr "</td>"
  loc_B95C2D: ConcatStr
  loc_B95C2E: CVarStr var_BC
  loc_B95C31: PopAdLdVar
  loc_B95C32: FLdPr Me
  loc_B95C35: MemLdRfVar from_stack_1.global_72
  loc_B95C38: LdPrVar
  loc_B95C3A: LateMemCall
  loc_B95C40: FFree1Str var_150
  loc_B95C43: FFree1Var var_BC = ""
  loc_B95C46: LitVarStr var_9C, "      </tr>"
  loc_B95C4B: PopAdLdVar
  loc_B95C4C: FLdPr Me
  loc_B95C4F: MemLdRfVar from_stack_1.global_72
  loc_B95C52: LdPrVar
  loc_B95C54: LateMemCall
  loc_B95C5A: LitVarStr var_9C, "      <tr align=""left"">"
  loc_B95C5F: PopAdLdVar
  loc_B95C60: FLdPr Me
  loc_B95C63: MemLdRfVar from_stack_1.global_72
  loc_B95C66: LdPrVar
  loc_B95C68: LateMemCall
  loc_B95C6E: LitVarStr var_9C, "          <td height=""85"" colspan=""6"" class=""Normal"">"
  loc_B95C73: PopAdLdVar
  loc_B95C74: FLdPr Me
  loc_B95C77: MemLdRfVar from_stack_1.global_72
  loc_B95C7A: LdPrVar
  loc_B95C7C: LateMemCall
  loc_B95C82: LitVarStr var_9C, "           <table valign=""middle"" align=""center"">"
  loc_B95C87: PopAdLdVar
  loc_B95C88: FLdPr Me
  loc_B95C8B: MemLdRfVar from_stack_1.global_72
  loc_B95C8E: LdPrVar
  loc_B95C90: LateMemCall
  loc_B95C96: LitStr "             <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_B95C99: LitI4 1
  loc_B95C9E: FLdPr Me
  loc_B95CA1: MemLdStr global_124
  loc_B95CA4: FLdPr Me
  loc_B95CA7: MemLdStr global_116
  loc_B95CAA: Ary1LdPr
  loc_B95CAB: MemLdStr global_140
  loc_B95CAE: Ary1LdI4
  loc_B95CAF: ConcatStr
  loc_B95CB0: FStStrNoPop var_150
  loc_B95CB3: LitStr "</td><tr>"
  loc_B95CB6: ConcatStr
  loc_B95CB7: CVarStr var_BC
  loc_B95CBA: PopAdLdVar
  loc_B95CBB: FLdPr Me
  loc_B95CBE: MemLdRfVar from_stack_1.global_72
  loc_B95CC1: LdPrVar
  loc_B95CC3: LateMemCall
  loc_B95CC9: FFree1Str var_150
  loc_B95CCC: FFree1Var var_BC = ""
  loc_B95CCF: LitStr "             <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_B95CD2: LitI4 0
  loc_B95CD7: FLdPr Me
  loc_B95CDA: MemLdStr global_124
  loc_B95CDD: FLdPr Me
  loc_B95CE0: MemLdStr global_116
  loc_B95CE3: Ary1LdPr
  loc_B95CE4: MemLdStr global_140
  loc_B95CE7: Ary1LdI4
  loc_B95CE8: ConcatStr
  loc_B95CE9: FStStrNoPop var_150
  loc_B95CEC: LitStr "</td><tr>"
  loc_B95CEF: ConcatStr
  loc_B95CF0: CVarStr var_BC
  loc_B95CF3: PopAdLdVar
  loc_B95CF4: FLdPr Me
  loc_B95CF7: MemLdRfVar from_stack_1.global_72
  loc_B95CFA: LdPrVar
  loc_B95CFC: LateMemCall
  loc_B95D02: FFree1Str var_150
  loc_B95D05: FFree1Var var_BC = ""
  loc_B95D08: LitVarStr var_9C, "           </table>"
  loc_B95D0D: PopAdLdVar
  loc_B95D0E: FLdPr Me
  loc_B95D11: MemLdRfVar from_stack_1.global_72
  loc_B95D14: LdPrVar
  loc_B95D16: LateMemCall
  loc_B95D1C: LitVarStr var_9C, "          <br><div align=""right"">Sellar al dorso</div></td>"
  loc_B95D21: PopAdLdVar
  loc_B95D22: FLdPr Me
  loc_B95D25: MemLdRfVar from_stack_1.global_72
  loc_B95D28: LdPrVar
  loc_B95D2A: LateMemCall
  loc_B95D30: LitVarStr var_9C, "      </tr>"
  loc_B95D35: PopAdLdVar
  loc_B95D36: FLdPr Me
  loc_B95D39: MemLdRfVar from_stack_1.global_72
  loc_B95D3C: LdPrVar
  loc_B95D3E: LateMemCall
  loc_B95D44: LitVarStr var_9C, "    </table>"
  loc_B95D49: PopAdLdVar
  loc_B95D4A: FLdPr Me
  loc_B95D4D: MemLdRfVar from_stack_1.global_72
  loc_B95D50: LdPrVar
  loc_B95D52: LateMemCall
  loc_B95D58: LitVarStr var_9C, "  </th></tr>"
  loc_B95D5D: PopAdLdVar
  loc_B95D5E: FLdPr Me
  loc_B95D61: MemLdRfVar from_stack_1.global_72
  loc_B95D64: LdPrVar
  loc_B95D66: LateMemCall
  loc_B95D6C: LitVarStr var_9C, "  <tr>"
  loc_B95D71: PopAdLdVar
  loc_B95D72: FLdPr Me
  loc_B95D75: MemLdRfVar from_stack_1.global_72
  loc_B95D78: LdPrVar
  loc_B95D7A: LateMemCall
  loc_B95D80: LitVarStr var_9C, "    <td align=""left"" valign=""top"" class=""Normal"">www.infogov.com.ar</td>"
  loc_B95D85: PopAdLdVar
  loc_B95D86: FLdPr Me
  loc_B95D89: MemLdRfVar from_stack_1.global_72
  loc_B95D8C: LdPrVar
  loc_B95D8E: LateMemCall
  loc_B95D94: LitVarStr var_9C, "  </tr>"
  loc_B95D99: PopAdLdVar
  loc_B95D9A: FLdPr Me
  loc_B95D9D: MemLdRfVar from_stack_1.global_72
  loc_B95DA0: LdPrVar
  loc_B95DA2: LateMemCall
  loc_B95DA8: LitVarStr var_9C, "</table>"
  loc_B95DAD: PopAdLdVar
  loc_B95DAE: FLdPr Me
  loc_B95DB1: MemLdRfVar from_stack_1.global_72
  loc_B95DB4: LdPrVar
  loc_B95DB6: LateMemCall
  loc_B95DBC: LitI4 0
  loc_B95DC1: FStR4 var_8C
  loc_B95DC4: AryUnlock
  loc_B95DC7: ExitProcHresult
End Function

Private Function Proc_355_46_B68238() 'B68238
  'Data Table: 4E16A8
  loc_B67DE8: FLdPr Me
  loc_B67DEB: MemLdStr global_124
  loc_B67DEE: FLdPr Me
  loc_B67DF1: MemLdStr global_116
  loc_B67DF4: AryLock
  loc_B67DF7: Ary1LdRf
  loc_B67DF8: FStR4 var_8C
  loc_B67DFB: LitVarStr var_9C, "<table align=""center"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_B67E00: PopAdLdVar
  loc_B67E01: FLdPr Me
  loc_B67E04: MemLdRfVar from_stack_1.global_72
  loc_B67E07: LdPrVar
  loc_B67E09: LateMemCall
  loc_B67E0F: LitVarStr var_9C, "  <tr>"
  loc_B67E14: PopAdLdVar
  loc_B67E15: FLdPr Me
  loc_B67E18: MemLdRfVar from_stack_1.global_72
  loc_B67E1B: LdPrVar
  loc_B67E1D: LateMemCall
  loc_B67E23: LitVarStr var_9C, "    <th valign=""top"">"
  loc_B67E28: PopAdLdVar
  loc_B67E29: FLdPr Me
  loc_B67E2C: MemLdRfVar from_stack_1.global_72
  loc_B67E2F: LdPrVar
  loc_B67E31: LateMemCall
  loc_B67E37: LitVarStr var_9C, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B67E3C: PopAdLdVar
  loc_B67E3D: FLdPr Me
  loc_B67E40: MemLdRfVar from_stack_1.global_72
  loc_B67E43: LdPrVar
  loc_B67E45: LateMemCall
  loc_B67E4B: LitVarStr var_9C, "      <tr>"
  loc_B67E50: PopAdLdVar
  loc_B67E51: FLdPr Me
  loc_B67E54: MemLdRfVar from_stack_1.global_72
  loc_B67E57: LdPrVar
  loc_B67E59: LateMemCall
  loc_B67E5F: LitVarStr var_AC, "        <td colspan=""4"" align=""center"" class=""NombreMunicipioBloqueFin"">"
  loc_B67E64: LitVarStr var_9C, "Municipalidad de Guaymallén"
  loc_B67E69: FStVarCopyObj var_BC
  loc_B67E6C: FLdRfVar var_BC
  loc_B67E6F: FLdRfVar var_CC
  loc_B67E72: ImpAdCallFPR4  = Ucase()
  loc_B67E77: FLdRfVar var_CC
  loc_B67E7A: ConcatVar var_DC
  loc_B67E7E: LitVarStr var_EC, " - "
  loc_B67E83: ConcatVar var_FC
  loc_B67E87: LitVarStr var_10C, "Dirección de Rentas"
  loc_B67E8C: ConcatVar var_11C
  loc_B67E90: LitVarStr var_12C, "</td>"
  loc_B67E95: ConcatVar var_13C
  loc_B67E99: PopAdLdVar
  loc_B67E9A: FLdPr Me
  loc_B67E9D: MemLdRfVar from_stack_1.global_72
  loc_B67EA0: LdPrVar
  loc_B67EA2: LateMemCall
  loc_B67EA8: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_B67EB7: LitVarStr var_9C, "        </tr>"
  loc_B67EBC: PopAdLdVar
  loc_B67EBD: FLdPr Me
  loc_B67EC0: MemLdRfVar from_stack_1.global_72
  loc_B67EC3: LdPrVar
  loc_B67EC5: LateMemCall
  loc_B67ECB: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B67ED0: PopAdLdVar
  loc_B67ED1: FLdPr Me
  loc_B67ED4: MemLdRfVar from_stack_1.global_72
  loc_B67ED7: LdPrVar
  loc_B67ED9: LateMemCall
  loc_B67EDF: LitVarStr var_9C, "        <td colspan=""4"">APELLIDO Y NOMBRE</td>"
  loc_B67EE4: PopAdLdVar
  loc_B67EE5: FLdPr Me
  loc_B67EE8: MemLdRfVar from_stack_1.global_72
  loc_B67EEB: LdPrVar
  loc_B67EED: LateMemCall
  loc_B67EF3: LitVarStr var_9C, "        </tr>"
  loc_B67EF8: PopAdLdVar
  loc_B67EF9: FLdPr Me
  loc_B67EFC: MemLdRfVar from_stack_1.global_72
  loc_B67EFF: LdPrVar
  loc_B67F01: LateMemCall
  loc_B67F07: LitVarStr var_9C, "      <tr>"
  loc_B67F0C: PopAdLdVar
  loc_B67F0D: FLdPr Me
  loc_B67F10: MemLdRfVar from_stack_1.global_72
  loc_B67F13: LdPrVar
  loc_B67F15: LateMemCall
  loc_B67F1B: LitStr "        <td colspan=""2"" class=""NormalBloqueFinGrande"">"
  loc_B67F1E: FMemLdR4 var_8C(4)
  loc_B67F23: ConcatStr
  loc_B67F24: FStStrNoPop var_150
  loc_B67F27: LitStr "</td>"
  loc_B67F2A: ConcatStr
  loc_B67F2B: CVarStr var_BC
  loc_B67F2E: PopAdLdVar
  loc_B67F2F: FLdPr Me
  loc_B67F32: MemLdRfVar from_stack_1.global_72
  loc_B67F35: LdPrVar
  loc_B67F37: LateMemCall
  loc_B67F3D: FFree1Str var_150
  loc_B67F40: FFree1Var var_BC = ""
  loc_B67F43: LitVarStr var_9C, "        </tr>"
  loc_B67F48: PopAdLdVar
  loc_B67F49: FLdPr Me
  loc_B67F4C: MemLdRfVar from_stack_1.global_72
  loc_B67F4F: LdPrVar
  loc_B67F51: LateMemCall
  loc_B67F57: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B67F5C: PopAdLdVar
  loc_B67F5D: FLdPr Me
  loc_B67F60: MemLdRfVar from_stack_1.global_72
  loc_B67F63: LdPrVar
  loc_B67F65: LateMemCall
  loc_B67F6B: LitVarStr var_9C, "        <td width=""25" & Chr(37) & """>USUARIO</td>"
  loc_B67F70: PopAdLdVar
  loc_B67F71: FLdPr Me
  loc_B67F74: MemLdRfVar from_stack_1.global_72
  loc_B67F77: LdPrVar
  loc_B67F79: LateMemCall
  loc_B67F7F: LitVarStr var_9C, "        <td width=""25" & Chr(37) & """>BOLETO</td>"
  loc_B67F84: PopAdLdVar
  loc_B67F85: FLdPr Me
  loc_B67F88: MemLdRfVar from_stack_1.global_72
  loc_B67F8B: LdPrVar
  loc_B67F8D: LateMemCall
  loc_B67F93: LitVarStr var_9C, "        <td width=""25" & Chr(37) & """>VENCIMIENTO</td>"
  loc_B67F98: PopAdLdVar
  loc_B67F99: FLdPr Me
  loc_B67F9C: MemLdRfVar from_stack_1.global_72
  loc_B67F9F: LdPrVar
  loc_B67FA1: LateMemCall
  loc_B67FA7: LitVarStr var_9C, "        <td width=""25" & Chr(37) & """>IMPORTE</td>"
  loc_B67FAC: PopAdLdVar
  loc_B67FAD: FLdPr Me
  loc_B67FB0: MemLdRfVar from_stack_1.global_72
  loc_B67FB3: LdPrVar
  loc_B67FB5: LateMemCall
  loc_B67FBB: LitVarStr var_9C, "      </tr>"
  loc_B67FC0: PopAdLdVar
  loc_B67FC1: FLdPr Me
  loc_B67FC4: MemLdRfVar from_stack_1.global_72
  loc_B67FC7: LdPrVar
  loc_B67FC9: LateMemCall
  loc_B67FCF: LitVarStr var_9C, "      <tr>"
  loc_B67FD4: PopAdLdVar
  loc_B67FD5: FLdPr Me
  loc_B67FD8: MemLdRfVar from_stack_1.global_72
  loc_B67FDB: LdPrVar
  loc_B67FDD: LateMemCall
  loc_B67FE3: LitStr "        <td align=""center"">"
  loc_B67FE6: FMemLdR4 var_8C(112)
  loc_B67FEB: ConcatStr
  loc_B67FEC: FStStrNoPop var_150
  loc_B67FEF: LitStr "</td>"
  loc_B67FF2: ConcatStr
  loc_B67FF3: CVarStr var_BC
  loc_B67FF6: PopAdLdVar
  loc_B67FF7: FLdPr Me
  loc_B67FFA: MemLdRfVar from_stack_1.global_72
  loc_B67FFD: LdPrVar
  loc_B67FFF: LateMemCall
  loc_B68005: FFree1Str var_150
  loc_B68008: FFree1Var var_BC = ""
  loc_B6800B: LitStr "        <td align=""right"">"
  loc_B6800E: FLdPr Me
  loc_B68011: VCallAd Control_ID_PeriBoleMsk
  loc_B68014: FStAdFunc var_154
  loc_B68017: FLdPr var_154
  loc_B6801A: LateIdLdVar var_BC DispID_22 0
  loc_B68021: CStrVarTmp
  loc_B68022: FStStrNoPop var_150
  loc_B68025: ConcatStr
  loc_B68026: FStStrNoPop var_158
  loc_B68029: LitStr "/"
  loc_B6802C: ConcatStr
  loc_B6802D: FStStrNoPop var_15C
  loc_B68030: FMemLdR4 var_8C(108)
  loc_B68035: ConcatStr
  loc_B68036: FStStrNoPop var_160
  loc_B68039: LitStr "</td>"
  loc_B6803C: ConcatStr
  loc_B6803D: CVarStr var_CC
  loc_B68040: PopAdLdVar
  loc_B68041: FLdPr Me
  loc_B68044: MemLdRfVar from_stack_1.global_72
  loc_B68047: LdPrVar
  loc_B68049: LateMemCall
  loc_B6804F: FFreeStr var_150 = "": var_158 = "": var_15C = ""
  loc_B6805A: FFree1Ad var_154
  loc_B6805D: FFreeVar var_BC = ""
  loc_B68064: LitStr "        <td align=""center"" class=""Vencimiento"">"
  loc_B68067: FMemLdR4 var_8C(128)
  loc_B6806C: ConcatStr
  loc_B6806D: FStStrNoPop var_150
  loc_B68070: LitStr "</td>"
  loc_B68073: ConcatStr
  loc_B68074: CVarStr var_BC
  loc_B68077: PopAdLdVar
  loc_B68078: FLdPr Me
  loc_B6807B: MemLdRfVar from_stack_1.global_72
  loc_B6807E: LdPrVar
  loc_B68080: LateMemCall
  loc_B68086: FFree1Str var_150
  loc_B68089: FFree1Var var_BC = ""
  loc_B6808C: LitStr "        <td align=""right"">"
  loc_B6808F: FMemLdR4 var_8C(152)
  loc_B68094: ConcatStr
  loc_B68095: FStStrNoPop var_150
  loc_B68098: LitStr "</td>"
  loc_B6809B: ConcatStr
  loc_B6809C: CVarStr var_BC
  loc_B6809F: PopAdLdVar
  loc_B680A0: FLdPr Me
  loc_B680A3: MemLdRfVar from_stack_1.global_72
  loc_B680A6: LdPrVar
  loc_B680A8: LateMemCall
  loc_B680AE: FFree1Str var_150
  loc_B680B1: FFree1Var var_BC = ""
  loc_B680B4: LitVarStr var_9C, "      </tr>"
  loc_B680B9: PopAdLdVar
  loc_B680BA: FLdPr Me
  loc_B680BD: MemLdRfVar from_stack_1.global_72
  loc_B680C0: LdPrVar
  loc_B680C2: LateMemCall
  loc_B680C8: LitVarStr var_9C, "      <tr align=""left"">"
  loc_B680CD: PopAdLdVar
  loc_B680CE: FLdPr Me
  loc_B680D1: MemLdRfVar from_stack_1.global_72
  loc_B680D4: LdPrVar
  loc_B680D6: LateMemCall
  loc_B680DC: LitVarStr var_9C, "          <td height=""85"" colspan=""4"" class=""Normal"">"
  loc_B680E1: PopAdLdVar
  loc_B680E2: FLdPr Me
  loc_B680E5: MemLdRfVar from_stack_1.global_72
  loc_B680E8: LdPrVar
  loc_B680EA: LateMemCall
  loc_B680F0: LitVarStr var_9C, "           <table valign=""middle"" align=""center"">"
  loc_B680F5: PopAdLdVar
  loc_B680F6: FLdPr Me
  loc_B680F9: MemLdRfVar from_stack_1.global_72
  loc_B680FC: LdPrVar
  loc_B680FE: LateMemCall
  loc_B68104: LitStr "             <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_B68107: LitI4 1
  loc_B6810C: FLdPr Me
  loc_B6810F: MemLdStr global_124
  loc_B68112: FLdPr Me
  loc_B68115: MemLdStr global_116
  loc_B68118: Ary1LdPr
  loc_B68119: MemLdStr global_140
  loc_B6811C: Ary1LdI4
  loc_B6811D: ConcatStr
  loc_B6811E: FStStrNoPop var_150
  loc_B68121: LitStr "</td></tr>"
  loc_B68124: ConcatStr
  loc_B68125: CVarStr var_BC
  loc_B68128: PopAdLdVar
  loc_B68129: FLdPr Me
  loc_B6812C: MemLdRfVar from_stack_1.global_72
  loc_B6812F: LdPrVar
  loc_B68131: LateMemCall
  loc_B68137: FFree1Str var_150
  loc_B6813A: FFree1Var var_BC = ""
  loc_B6813D: LitStr "             <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_B68140: LitI4 0
  loc_B68145: FLdPr Me
  loc_B68148: MemLdStr global_124
  loc_B6814B: FLdPr Me
  loc_B6814E: MemLdStr global_116
  loc_B68151: Ary1LdPr
  loc_B68152: MemLdStr global_140
  loc_B68155: Ary1LdI4
  loc_B68156: ConcatStr
  loc_B68157: FStStrNoPop var_150
  loc_B6815A: LitStr "</td></tr>"
  loc_B6815D: ConcatStr
  loc_B6815E: CVarStr var_BC
  loc_B68161: PopAdLdVar
  loc_B68162: FLdPr Me
  loc_B68165: MemLdRfVar from_stack_1.global_72
  loc_B68168: LdPrVar
  loc_B6816A: LateMemCall
  loc_B68170: FFree1Str var_150
  loc_B68173: FFree1Var var_BC = ""
  loc_B68176: LitVarStr var_9C, "           </table>"
  loc_B6817B: PopAdLdVar
  loc_B6817C: FLdPr Me
  loc_B6817F: MemLdRfVar from_stack_1.global_72
  loc_B68182: LdPrVar
  loc_B68184: LateMemCall
  loc_B6818A: LitVarStr var_9C, "          <br><div align=""right"">Sellar al dorso</div></td>"
  loc_B6818F: PopAdLdVar
  loc_B68190: FLdPr Me
  loc_B68193: MemLdRfVar from_stack_1.global_72
  loc_B68196: LdPrVar
  loc_B68198: LateMemCall
  loc_B6819E: LitVarStr var_9C, "      </tr>"
  loc_B681A3: PopAdLdVar
  loc_B681A4: FLdPr Me
  loc_B681A7: MemLdRfVar from_stack_1.global_72
  loc_B681AA: LdPrVar
  loc_B681AC: LateMemCall
  loc_B681B2: LitVarStr var_9C, "    </table>"
  loc_B681B7: PopAdLdVar
  loc_B681B8: FLdPr Me
  loc_B681BB: MemLdRfVar from_stack_1.global_72
  loc_B681BE: LdPrVar
  loc_B681C0: LateMemCall
  loc_B681C6: LitVarStr var_9C, "  </th></tr>"
  loc_B681CB: PopAdLdVar
  loc_B681CC: FLdPr Me
  loc_B681CF: MemLdRfVar from_stack_1.global_72
  loc_B681D2: LdPrVar
  loc_B681D4: LateMemCall
  loc_B681DA: LitVarStr var_9C, "  <tr class=""Normal"" valign=""top"">"
  loc_B681DF: PopAdLdVar
  loc_B681E0: FLdPr Me
  loc_B681E3: MemLdRfVar from_stack_1.global_72
  loc_B681E6: LdPrVar
  loc_B681E8: LateMemCall
  loc_B681EE: LitVarStr var_9C, "    <td align=""left"" valign=""top"" class=""Normal"">www.infogov.com.ar</td>"
  loc_B681F3: PopAdLdVar
  loc_B681F4: FLdPr Me
  loc_B681F7: MemLdRfVar from_stack_1.global_72
  loc_B681FA: LdPrVar
  loc_B681FC: LateMemCall
  loc_B68202: LitVarStr var_9C, "  </tr>"
  loc_B68207: PopAdLdVar
  loc_B68208: FLdPr Me
  loc_B6820B: MemLdRfVar from_stack_1.global_72
  loc_B6820E: LdPrVar
  loc_B68210: LateMemCall
  loc_B68216: LitVarStr var_9C, "</table>"
  loc_B6821B: PopAdLdVar
  loc_B6821C: FLdPr Me
  loc_B6821F: MemLdRfVar from_stack_1.global_72
  loc_B68222: LdPrVar
  loc_B68224: LateMemCall
  loc_B6822A: LitI4 0
  loc_B6822F: FStR4 var_8C
  loc_B68232: AryUnlock
  loc_B68235: ExitProcHresult
End Function

Private Function Proc_355_47_9F5EC8() '9F5EC8
  'Data Table: 4E16A8
  loc_9F5E9C: LitVarStr var_94, "</body>"
  loc_9F5EA1: PopAdLdVar
  loc_9F5EA2: FLdPr Me
  loc_9F5EA5: MemLdRfVar from_stack_1.global_72
  loc_9F5EA8: LdPrVar
  loc_9F5EAA: LateMemCall
  loc_9F5EB0: LitVarStr var_94, "</html>"
  loc_9F5EB5: PopAdLdVar
  loc_9F5EB6: FLdPr Me
  loc_9F5EB9: MemLdRfVar from_stack_1.global_72
  loc_9F5EBC: LdPrVar
  loc_9F5EBE: LateMemCall
  loc_9F5EC4: ExitProcHresult
End Function
