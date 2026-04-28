VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Begin VB.Form rptEmisionMasivadeTasas
  Caption = "Emisión Masiva de Tasas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEmisionMasivadeTasas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11640
  ClientHeight = 6852
  StartUpPosition = 2 'CenterScreen
  Begin VB.CommandButton cmdSalir
    Left = 10200
    Top = 5520
    Width = 855
    Height = 735
    TabIndex = 18
    Cancel = -1  'True
    Picture = "rptEmisionMasivadeTasas.frx":08CA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame4
    Caption = "Exportar"
    Left = 3840
    Top = 5280
    Width = 5895
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 840
      Top = 360
      Width = 1335
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
    Begin VB.CommandButton cmdPDFweb
      Caption = "PD&F para web"
      Left = 2640
      Top = 360
      Width = 2295
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
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6600
    Width = 11640
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptEmisionMasivadeTasas.frx":0B1C
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEmisionMasivadeTasas.frx":0B9C
    Left = 9360
    Top = 5400
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 5280
    Width = 3495
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
      Left = 840
      Top = 360
      Width = 2055
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11415
    Height = 5175
    TabIndex = 0
    Begin VB.Frame Frame5
      Caption = "Orden"
      Left = 240
      Top = 3960
      Width = 9375
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
      Begin MSMask.MaskEdBox OrdeLitaDesdeMsk
        Left = 2130
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptEmisionMasivadeTasas.frx":0C00
      End
      Begin MSMask.MaskEdBox OrdeLitaHastaMsk
        Left = 5970
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 4
        OleObjectBlob = "rptEmisionMasivadeTasas.frx":0C98
      End
      Begin VB.Label Label1
        Caption = "Desde:"
        Left = 1320
        Top = 360
        Width = 765
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
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 5205
        Top = 360
        Width = 705
        Height = 300
        TabIndex = 13
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
    Begin MSDataGridLib.DataGrid dgdLiquidacion
      Left = 240
      Top = 240
      Width = 9360
      Height = 3675
      TabIndex = 1
      OleObjectBlob = "rptEmisionMasivadeTasas.frx":0D30
    End
    Begin MSComctlLib.ProgressBar pbar
      Left = 10140
      Top = 960
      Width = 735
      Height = 3495
      Visible = 0   'False
      TabIndex = 15
      OleObjectBlob = "rptEmisionMasivadeTasas.frx":1036
    End
    Begin VB.Label ProgresoLbl
      Left = 9750
      Top = 4635
      Width = 1515
      Height = 300
      TabIndex = 16
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
    Left = 10320
    Top = 5760
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptEmisionMasivadeTasas.frx":109E
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 9120
    Top = 6000
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptEmisionMasivadeTasas.frx":1152
  End
End

Attribute VB_Name = "rptEmisionMasivadeTasas"

Public bGenerado As Boolean

Private Type UDT_1_00681B60
  bStruc(64) As Byte ' String fields: 15
End Type

Private Type UDT_2_00681BB0
  bStruc(116) As Byte ' String fields: 29
End Type


Private Sub cmdPDFweb_Click() 'B4EDD0
  'Data Table: 4C4E5C
  loc_B4EA5C: FLdRfVar var_94
  loc_B4EA5F: FLdPr Me
  loc_B4EA62:  = Me.hWnd
  loc_B4EA67: LitStr "Seleccione la carpeta de salida para los archivos generados"
  loc_B4EA6A: FLdPr Me
  loc_B4EA6D: MemLdStr global_76
  loc_B4EA70: ILdRf var_94
  loc_B4EA73: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_B4EA78: FStStrNoPop var_98
  loc_B4EA7B: FLdPr Me
  loc_B4EA7E: MemStStrCopy
  loc_B4EA82: FFree1Str var_98
  loc_B4EA85: FLdPr Me
  loc_B4EA88: MemLdRfVar from_stack_1.global_76
  loc_B4EA8B: CVarRef
  loc_B4EA90: FLdRfVar var_B8
  loc_B4EA93: ImpAdCallFPR4  = Trim()
  loc_B4EA98: FLdRfVar var_B8
  loc_B4EA9B: LitVarStr var_C8, vbNullString
  loc_B4EAA0: HardType
  loc_B4EAA1: EqVarBool
  loc_B4EAA3: FFree1Var var_B8 = ""
  loc_B4EAA6: BranchF loc_B4EAAA
  loc_B4EAA9: ExitProcHresult
  loc_B4EAAA: FLdRfVar var_98
  loc_B4EAAD: LitStr "tmp"
  loc_B4EAB0: FLdPr Me
  loc_B4EAB3: MemLdStr global_76
  loc_B4EAB6: FLdRfVar var_88
  loc_B4EAB9: NewIfNullPr IFileSystem3
  loc_B4EABC: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B4EAC1: FLdZeroAd var_98
  loc_B4EAC4: FStStr var_90
  loc_B4EAC7: ILdRf Me
  loc_B4EACA: CastAd
  loc_B4EACD: FStAdFunc var_DC
  loc_B4EAD0: FLdRfVar var_DC
  loc_B4EAD3: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B4EAD8: FFree1Ad var_DC
  loc_B4EADB: LitVar_FALSE
  loc_B4EADF: PopAdLdVar
  loc_B4EAE0: FLdPr Me
  loc_B4EAE3: VCallAd Control_ID_dgdLiquidacion
  loc_B4EAE6: FStAdFunc var_DC
  loc_B4EAE9: FLdPr var_DC
  loc_B4EAEC: LateIdSt
  loc_B4EAF1: FFree1Ad var_DC
  loc_B4EAF4: Call GeneraReporte()
  loc_B4EAF9: FLdPr Me
  loc_B4EAFC: MemLdI2 bGenerado
  loc_B4EAFF: BranchF loc_B4ED6C
  loc_B4EB02: FLdPr Me
  loc_B4EB05: MemLdStr global_92
  loc_B4EB08: LitI2_Byte 1
  loc_B4EB0A: FnUBound
  loc_B4EB0C: CR8I4
  loc_B4EB0D: CVarR4
  loc_B4EB11: PopAdLdVar
  loc_B4EB12: FLdPr Me
  loc_B4EB15: VCallAd Control_ID_pbar
  loc_B4EB18: FStAdFunc var_DC
  loc_B4EB1B: FLdPr var_DC
  loc_B4EB1E: LateIdSt
  loc_B4EB23: FFree1Ad var_DC
  loc_B4EB26: LitVar_TRUE var_A8
  loc_B4EB29: PopAdLdVar
  loc_B4EB2A: FLdPr Me
  loc_B4EB2D: VCallAd Control_ID_pbar
  loc_B4EB30: FStAdFunc var_DC
  loc_B4EB33: FLdPr var_DC
  loc_B4EB36: LateIdSt
  loc_B4EB3B: FFree1Ad var_DC
  loc_B4EB3E: FLdRfVar var_DE
  loc_B4EB41: ILdRf var_90
  loc_B4EB44: FLdRfVar var_88
  loc_B4EB47: NewIfNullPr IFileSystem3
  loc_B4EB4A: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B4EB4F: FLdI2 var_DE
  loc_B4EB52: BranchF loc_B4EB63
  loc_B4EB55: LitStr "\*.*"
  loc_B4EB58: ILdRf var_90
  loc_B4EB5B: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B4EB60: Branch loc_B4EB6B
  loc_B4EB63: ILdRf var_90
  loc_B4EB66: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_B4EB6B: ILdRf var_90
  loc_B4EB6E: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B4EB73: LitI4 1
  loc_B4EB78: FLdPr Me
  loc_B4EB7B: MemLdRfVar from_stack_1.global_96
  loc_B4EB7E: FLdPr Me
  loc_B4EB81: MemLdStr global_92
  loc_B4EB84: LitI2_Byte 1
  loc_B4EB86: FnUBound
  loc_B4EB88: ForI4 var_E8
  loc_B4EB8E: FLdPr Me
  loc_B4EB91: MemLdStr global_96
  loc_B4EB94: FLdPr Me
  loc_B4EB97: MemLdStr global_92
  loc_B4EB9A: AryLock
  loc_B4EB9D: Ary1LdRf
  loc_B4EB9E: FStR4 var_F0
  loc_B4EBA1: FLdRfVar var_98
  loc_B4EBA4: FLdPr Me
  loc_B4EBA7: MemLdStr global_96
  loc_B4EBAA: FLdPr Me
  loc_B4EBAD: MemLdStr global_92
  loc_B4EBB0: Ary1LdPr
  loc_B4EBB1: MemLdStr global_76
  loc_B4EBB4: CI4Str
  loc_B4EBB5: Call Proc_324_17_9BA2E4()
  loc_B4EBBA: FLdZeroAd var_98
  loc_B4EBBD: FStStr var_8C
  loc_B4EBC0: FLdPr Me
  loc_B4EBC3: MemLdStr global_76
  loc_B4EBC6: LitStr "\"
  loc_B4EBC9: ConcatStr
  loc_B4EBCA: FStStrNoPop var_98
  loc_B4EBCD: ILdRf var_8C
  loc_B4EBD0: ConcatStr
  loc_B4EBD1: FStStrNoPop var_F4
  loc_B4EBD4: LitStr ".pdf"
  loc_B4EBD7: ConcatStr
  loc_B4EBD8: ImpAdStStr MemVar_D93030
  loc_B4EBDC: FFreeStr var_98 = ""
  loc_B4EBE3: ILdRf var_90
  loc_B4EBE6: LitStr "\"
  loc_B4EBE9: ConcatStr
  loc_B4EBEA: FStStrNoPop var_98
  loc_B4EBED: ILdRf var_8C
  loc_B4EBF0: ConcatStr
  loc_B4EBF1: FStStrNoPop var_F4
  loc_B4EBF4: LitStr ".html"
  loc_B4EBF7: ConcatStr
  loc_B4EBF8: ImpAdStStr MemVar_D93C84
  loc_B4EBFC: FFreeStr var_98 = ""
  loc_B4EC03: LitStr "Generando PDF: '"
  loc_B4EC06: ImpAdLdI4 MemVar_D93030
  loc_B4EC09: ConcatStr
  loc_B4EC0A: FStStrNoPop var_98
  loc_B4EC0D: LitStr "'"
  loc_B4EC10: ConcatStr
  loc_B4EC11: CVarStr var_B8
  loc_B4EC14: PopAdLdVar
  loc_B4EC15: FLdPr Me
  loc_B4EC18: VCallAd Control_ID_statusBar
  loc_B4EC1B: FStAdFunc var_DC
  loc_B4EC1E: FLdPr var_DC
  loc_B4EC21: LateIdSt
  loc_B4EC26: FFree1Str var_98
  loc_B4EC29: FFree1Ad var_DC
  loc_B4EC2C: FFree1Var var_B8 = ""
  loc_B4EC2F: LitI4 0
  loc_B4EC34: FStR4 var_F0
  loc_B4EC37: AryUnlock
  loc_B4EC3A: FLdPr Me
  loc_B4EC3D: MemLdStr global_96
  loc_B4EC40: CR8I4
  loc_B4EC41: CVarR4
  loc_B4EC45: PopAdLdVar
  loc_B4EC46: FLdPr Me
  loc_B4EC49: VCallAd Control_ID_pbar
  loc_B4EC4C: FStAdFunc var_DC
  loc_B4EC4F: FLdPr var_DC
  loc_B4EC52: LateIdSt
  loc_B4EC57: FFree1Ad var_DC
  loc_B4EC5A: FLdPr Me
  loc_B4EC5D: MemLdStr global_96
  loc_B4EC60: CStrI4
  loc_B4EC62: FStStrNoPop var_98
  loc_B4EC65: LitStr "/"
  loc_B4EC68: ConcatStr
  loc_B4EC69: FStStrNoPop var_F4
  loc_B4EC6C: FLdPr Me
  loc_B4EC6F: MemLdStr global_92
  loc_B4EC72: LitI2_Byte 1
  loc_B4EC74: FnUBound
  loc_B4EC76: CStrI4
  loc_B4EC78: FStStrNoPop var_F8
  loc_B4EC7B: ConcatStr
  loc_B4EC7C: FStStrNoPop var_FC
  loc_B4EC7F: FLdPr Me
  loc_B4EC82: VCallAd Control_ID_ProgresoLbl
  loc_B4EC85: FStAdFunc var_DC
  loc_B4EC88: FLdPr var_DC
  loc_B4EC8B: Me.Caption = from_stack_1
  loc_B4EC90: FFreeStr var_98 = "": var_F4 = "": var_F8 = ""
  loc_B4EC9B: FFree1Ad var_DC
  loc_B4EC9E: Call GeneraHTML()
  loc_B4ECA3: FLdPr Me
  loc_B4ECA6: MemLdRfVar from_stack_1.global_96
  loc_B4ECA9: NextI4 var_E8, loc_B4EB8E
  loc_B4ECAE: FLdRfVar var_B8
  loc_B4ECB1: ImpAdCallFPR4  = Now
  loc_B4ECB6: FLdRfVar var_B8
  loc_B4ECB9: LitVarStr var_A8, " -- Desde: "
  loc_B4ECBE: ConcatVar var_D8
  loc_B4ECC2: FLdPr Me
  loc_B4ECC5: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_B4ECC8: FStAdFunc var_DC
  loc_B4ECCB: FLdPr var_DC
  loc_B4ECCE: LateIdLdVar var_10C DispID_22 0
  loc_B4ECD5: CStrVarTmp
  loc_B4ECD6: CVarStr var_11C
  loc_B4ECD9: ConcatVar var_12C
  loc_B4ECDD: LitVarStr var_C8, "	"
  loc_B4ECE2: ConcatVar var_13C
  loc_B4ECE6: LitVarStr var_14C, "Hasta: "
  loc_B4ECEB: ConcatVar var_15C
  loc_B4ECEF: FLdPr Me
  loc_B4ECF2: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_B4ECF5: FStAdFunc var_160
  loc_B4ECF8: FLdPr var_160
  loc_B4ECFB: LateIdLdVar var_170 DispID_22 0
  loc_B4ED02: CStrVarTmp
  loc_B4ED03: CVarStr var_180
  loc_B4ED06: ConcatVar var_190
  loc_B4ED0A: CStrVarVal var_F4
  loc_B4ED0E: FLdPr Me
  loc_B4ED11: MemLdStr global_76
  loc_B4ED14: LitStr "\registro.txt"
  loc_B4ED17: ConcatStr
  loc_B4ED18: FStStrNoPop var_98
  loc_B4ED1B: ImpAdCallFPR4 Proc_272_65_AB08A8(, )
  loc_B4ED20: FFreeStr var_98 = ""
  loc_B4ED27: FFreeAd var_DC = ""
  loc_B4ED2E: FFreeVar var_B8 = "": var_10C = "": var_D8 = "": var_11C = "": var_12C = "": var_13C = "": var_170 = "": var_15C = "": var_180 = ""
  loc_B4ED45: FLdPr Me
  loc_B4ED48: MemLdStr global_76
  loc_B4ED4B: ILdRf var_90
  loc_B4ED4E: ImpAdCallFPR4 Proc_57_56_A868F0(, )
  loc_B4ED53: LitVar_FALSE
  loc_B4ED57: PopAdLdVar
  loc_B4ED58: FLdPr Me
  loc_B4ED5B: VCallAd Control_ID_pbar
  loc_B4ED5E: FStAdFunc var_DC
  loc_B4ED61: FLdPr var_DC
  loc_B4ED64: LateIdSt
  loc_B4ED69: FFree1Ad var_DC
  loc_B4ED6C: ILdRf Me
  loc_B4ED6F: CastAd
  loc_B4ED72: FStAdFunc var_DC
  loc_B4ED75: FLdRfVar var_DC
  loc_B4ED78: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B4ED7D: FFree1Ad var_DC
  loc_B4ED80: LitVarStr var_A8, vbNullString
  loc_B4ED85: PopAdLdVar
  loc_B4ED86: FLdPr Me
  loc_B4ED89: VCallAd Control_ID_statusBar
  loc_B4ED8C: FStAdFunc var_DC
  loc_B4ED8F: FLdPr var_DC
  loc_B4ED92: LateIdSt
  loc_B4ED97: FFree1Ad var_DC
  loc_B4ED9A: FLdPr Me
  loc_B4ED9D: VCallAd Control_ID_dgdLiquidacion
  loc_B4EDA0: FStAdFunc var_DC
  loc_B4EDA3: FLdPr var_DC
  loc_B4EDA6: LateIdLdVar var_B8 DispID_13 -32767
  loc_B4EDAD: CBoolVar
  loc_B4EDAF: FFree1Ad var_DC
  loc_B4EDB2: FFree1Var var_B8 = ""
  loc_B4EDB5: BranchF loc_B4EDCF
  loc_B4EDB8: FLdPr Me
  loc_B4EDBB: VCallAd Control_ID_dgdLiquidacion
  loc_B4EDBE: FStAdFunc var_DC
  loc_B4EDC1: FLdPr var_DC
  loc_B4EDC4: LateIdCall
  loc_B4EDCC: FFree1Ad var_DC
  loc_B4EDCF: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'B0EAB0
  'Data Table: 4C4E5C
  loc_B0E87C: LitVarStr var_94, "Enviando a impresora predeterminada..."
  loc_B0E881: PopAdLdVar
  loc_B0E882: FLdPr Me
  loc_B0E885: VCallAd Control_ID_statusBar
  loc_B0E888: FStAdFunc var_A8
  loc_B0E88B: FLdPr var_A8
  loc_B0E88E: LateIdSt
  loc_B0E893: FFree1Ad var_A8
  loc_B0E896: ILdRf Me
  loc_B0E899: CastAd
  loc_B0E89C: FStAdFunc var_A8
  loc_B0E89F: FLdRfVar var_A8
  loc_B0E8A2: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B0E8A7: FFree1Ad var_A8
  loc_B0E8AA: LitVar_FALSE
  loc_B0E8AE: PopAdLdVar
  loc_B0E8AF: FLdPr Me
  loc_B0E8B2: VCallAd Control_ID_dgdLiquidacion
  loc_B0E8B5: FStAdFunc var_A8
  loc_B0E8B8: FLdPr var_A8
  loc_B0E8BB: LateIdSt
  loc_B0E8C0: FFree1Ad var_A8
  loc_B0E8C3: Call GeneraReporte()
  loc_B0E8C8: FLdPr Me
  loc_B0E8CB: MemLdI2 bGenerado
  loc_B0E8CE: BranchF loc_B0EA65
  loc_B0E8D1: FLdPr Me
  loc_B0E8D4: MemLdStr global_92
  loc_B0E8D7: LitI2_Byte 1
  loc_B0E8D9: FnUBound
  loc_B0E8DB: CR8I4
  loc_B0E8DC: CVarR4
  loc_B0E8E0: PopAdLdVar
  loc_B0E8E1: FLdPr Me
  loc_B0E8E4: VCallAd Control_ID_pbar
  loc_B0E8E7: FStAdFunc var_A8
  loc_B0E8EA: FLdPr var_A8
  loc_B0E8ED: LateIdSt
  loc_B0E8F2: FFree1Ad var_A8
  loc_B0E8F5: LitVar_TRUE var_94
  loc_B0E8F8: PopAdLdVar
  loc_B0E8F9: FLdPr Me
  loc_B0E8FC: VCallAd Control_ID_pbar
  loc_B0E8FF: FStAdFunc var_A8
  loc_B0E902: FLdPr var_A8
  loc_B0E905: LateIdSt
  loc_B0E90A: FFree1Ad var_A8
  loc_B0E90D: LitI4 1
  loc_B0E912: FLdPr Me
  loc_B0E915: MemLdRfVar from_stack_1.global_96
  loc_B0E918: FLdPr Me
  loc_B0E91B: MemLdStr global_92
  loc_B0E91E: LitI2_Byte 1
  loc_B0E920: FnUBound
  loc_B0E922: ForI4 var_B0
  loc_B0E928: LitStr " - "
  loc_B0E92B: FLdPr Me
  loc_B0E92E: MemLdStr global_96
  loc_B0E931: FLdPr Me
  loc_B0E934: MemLdStr global_92
  loc_B0E937: Ary1LdPr
  loc_B0E938: MemLdStr global_80
  loc_B0E93B: ConcatStr
  loc_B0E93C: FStStrNoPop var_B4
  loc_B0E93F: FLdPr Me
  loc_B0E942: Me.Tag = from_stack_1
  loc_B0E947: FFree1Str var_B4
  loc_B0E94A: ILdRf Me
  loc_B0E94D: CastAd
  loc_B0E950: FStAdFunc var_A8
  loc_B0E953: FLdRfVar var_A8
  loc_B0E956: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_B0E95B: FFree1Ad var_A8
  loc_B0E95E: FLdPr Me
  loc_B0E961: MemLdStr global_96
  loc_B0E964: CR8I4
  loc_B0E965: CVarR4
  loc_B0E969: PopAdLdVar
  loc_B0E96A: FLdPr Me
  loc_B0E96D: VCallAd Control_ID_pbar
  loc_B0E970: FStAdFunc var_A8
  loc_B0E973: FLdPr var_A8
  loc_B0E976: LateIdSt
  loc_B0E97B: FFree1Ad var_A8
  loc_B0E97E: FLdPr Me
  loc_B0E981: MemLdStr global_96
  loc_B0E984: CStrI4
  loc_B0E986: FStStrNoPop var_B4
  loc_B0E989: LitStr "/"
  loc_B0E98C: ConcatStr
  loc_B0E98D: FStStrNoPop var_B8
  loc_B0E990: FLdPr Me
  loc_B0E993: MemLdStr global_92
  loc_B0E996: LitI2_Byte 1
  loc_B0E998: FnUBound
  loc_B0E99A: CStrI4
  loc_B0E99C: FStStrNoPop var_BC
  loc_B0E99F: ConcatStr
  loc_B0E9A0: FStStrNoPop var_C0
  loc_B0E9A3: FLdPr Me
  loc_B0E9A6: VCallAd Control_ID_ProgresoLbl
  loc_B0E9A9: FStAdFunc var_A8
  loc_B0E9AC: FLdPr var_A8
  loc_B0E9AF: Me.Caption = from_stack_1
  loc_B0E9B4: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_B0E9BF: FFree1Ad var_A8
  loc_B0E9C2: Call GeneraHTML()
  loc_B0E9C7: ImpAdLdRf MemVar_D93C84
  loc_B0E9CA: CDargRef
  loc_B0E9CE: FLdPr Me
  loc_B0E9D1: VCallAd Control_ID_wbbReporte
  loc_B0E9D4: FStAdFunc var_A8
  loc_B0E9D7: FLdPr var_A8
  loc_B0E9DA: LateIdCall
  loc_B0E9E2: FFree1Ad var_A8
  loc_B0E9E5: ImpAdCallFPR4 DoEvents()
  loc_B0E9EA: FLdPr Me
  loc_B0E9ED: VCallAd Control_ID_wbbReporte
  loc_B0E9F0: FStAdFunc var_A8
  loc_B0E9F3: FLdPr var_A8
  loc_B0E9F6: LateIdLdVar var_D0 DispID_-525 -1
  loc_B0E9FD: CI4Var
  loc_B0E9FF: LitI4 4
  loc_B0EA04: NeI4
  loc_B0EA05: FFree1Ad var_A8
  loc_B0EA08: FFree1Var var_D0 = ""
  loc_B0EA0B: BranchT loc_B0E9E5
  loc_B0EA0E: LitVarI4
  loc_B0EA16: PopAdLdVar
  loc_B0EA17: LitVarI4
  loc_B0EA1F: PopAdLdVar
  loc_B0EA20: LitVarI2 var_110, 2
  loc_B0EA25: PopAdLdVar
  loc_B0EA26: LitVar_NULL
  loc_B0EA2A: PopAdLdVar
  loc_B0EA2B: FLdPr Me
  loc_B0EA2E: VCallAd Control_ID_wbbReporte
  loc_B0EA31: FStAdFunc var_A8
  loc_B0EA34: FLdPr var_A8
  loc_B0EA37: LateIdCall
  loc_B0EA3F: FFree1Ad var_A8
  loc_B0EA42: FLdPr Me
  loc_B0EA45: MemLdRfVar from_stack_1.global_96
  loc_B0EA48: NextI4 var_B0, loc_B0E928
  loc_B0EA4D: LitVar_TRUE var_94
  loc_B0EA50: PopAdLdVar
  loc_B0EA51: FLdPr Me
  loc_B0EA54: VCallAd Control_ID_pbar
  loc_B0EA57: FStAdFunc var_A8
  loc_B0EA5A: FLdPr var_A8
  loc_B0EA5D: LateIdSt
  loc_B0EA62: FFree1Ad var_A8
  loc_B0EA65: ILdRf Me
  loc_B0EA68: CastAd
  loc_B0EA6B: FStAdFunc var_A8
  loc_B0EA6E: FLdRfVar var_A8
  loc_B0EA71: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B0EA76: FFree1Ad var_A8
  loc_B0EA79: FLdPr Me
  loc_B0EA7C: VCallAd Control_ID_dgdLiquidacion
  loc_B0EA7F: FStAdFunc var_A8
  loc_B0EA82: FLdPr var_A8
  loc_B0EA85: LateIdLdVar var_D0 DispID_13 -32767
  loc_B0EA8C: CBoolVar
  loc_B0EA8E: FFree1Ad var_A8
  loc_B0EA91: FFree1Var var_D0 = ""
  loc_B0EA94: BranchF loc_B0EAAE
  loc_B0EA97: FLdPr Me
  loc_B0EA9A: VCallAd Control_ID_dgdLiquidacion
  loc_B0EA9D: FStAdFunc var_A8
  loc_B0EAA0: FLdPr var_A8
  loc_B0EAA3: LateIdCall
  loc_B0EAAB: FFree1Ad var_A8
  loc_B0EAAE: ExitProcHresult
End Sub

Private Sub OrdeLitaHastaMsk_UnknownEvent_0 '9C1058
  'Data Table: 4C4E5C
  loc_9C1044: FLdPr Me
  loc_9C1047: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_9C104A: CVarAd
  loc_9C104E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1053: FFree1Var var_94 = ""
  loc_9C1056: ExitProcHresult
End Sub

Private Sub OrdeLitaHastaMsk_UnknownEvent_8 '9B096C
  'Data Table: 4C4E5C
  loc_9B0964: LitI2_Byte &HFF
  loc_9B0966: Call Proc_324_19_B01FB4()
  loc_9B096B: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A01B40
  'Data Table: 4C4E5C
  loc_A01B10: LitVarStr var_94, "Cerrando..."
  loc_A01B15: PopAdLdVar
  loc_A01B16: FLdPr Me
  loc_A01B19: VCallAd Control_ID_statusBar
  loc_A01B1C: FStAdFunc var_A8
  loc_A01B1F: FLdPr var_A8
  loc_A01B22: LateIdSt
  loc_A01B27: FFree1Ad var_A8
  loc_A01B2A: ILdRf Me
  loc_A01B2D: FStAdNoPop
  loc_A01B31: ImpAdLdRf MemVar_D9C5D8
  loc_A01B34: NewIfNullPr Global
  loc_A01B37: Global.Unload from_stack_1
  loc_A01B3C: FFree1Ad var_A8
  loc_A01B3F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'B83220
  'Data Table: 4C4E5C
  loc_B82D20: OnErrorGoto loc_B83196
  loc_B82D23: FLdRfVar var_A0
  loc_B82D26: FLdPr Me
  loc_B82D29:  = Me.hWnd
  loc_B82D2E: LitStr "Seleccione la carpeta de salida para los archivos generados"
  loc_B82D31: FLdPr Me
  loc_B82D34: MemLdStr global_76
  loc_B82D37: ILdRf var_A0
  loc_B82D3A: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_B82D3F: FStStrNoPop var_A4
  loc_B82D42: FLdPr Me
  loc_B82D45: MemStStrCopy
  loc_B82D49: FFree1Str var_A4
  loc_B82D4C: FLdPr Me
  loc_B82D4F: MemLdRfVar from_stack_1.global_76
  loc_B82D52: CVarRef
  loc_B82D57: FLdRfVar var_C4
  loc_B82D5A: ImpAdCallFPR4  = Trim()
  loc_B82D5F: FLdRfVar var_C4
  loc_B82D62: LitVarStr var_D4, vbNullString
  loc_B82D67: HardType
  loc_B82D68: EqVarBool
  loc_B82D6A: FFree1Var var_C4 = ""
  loc_B82D6D: BranchF loc_B82D71
  loc_B82D70: ExitProcHresult
  loc_B82D71: FLdRfVar var_A4
  loc_B82D74: LitStr "tmp"
  loc_B82D77: FLdPr Me
  loc_B82D7A: MemLdStr global_76
  loc_B82D7D: FLdRfVar var_88
  loc_B82D80: NewIfNullPr IFileSystem3
  loc_B82D83: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B82D88: ILdRf var_A4
  loc_B82D8B: LitStr "\"
  loc_B82D8E: ConcatStr
  loc_B82D8F: FStStr var_9C
  loc_B82D92: FFree1Str var_A4
  loc_B82D95: FLdRfVar var_E6
  loc_B82D98: ILdRf var_9C
  loc_B82D9B: FLdRfVar var_88
  loc_B82D9E: NewIfNullPr IFileSystem3
  loc_B82DA1: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B82DA6: FLdI2 var_E6
  loc_B82DA9: BranchF loc_B82DBA
  loc_B82DAC: LitStr "*.*"
  loc_B82DAF: ILdRf var_9C
  loc_B82DB2: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B82DB7: Branch loc_B82DC2
  loc_B82DBA: ILdRf var_9C
  loc_B82DBD: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_B82DC2: ILdRf var_9C
  loc_B82DC5: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B82DCA: ILdRf Me
  loc_B82DCD: CastAd
  loc_B82DD0: FStAdFunc var_EC
  loc_B82DD3: FLdRfVar var_EC
  loc_B82DD6: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B82DDB: FFree1Ad var_EC
  loc_B82DDE: LitVar_FALSE
  loc_B82DE2: PopAdLdVar
  loc_B82DE3: FLdPr Me
  loc_B82DE6: VCallAd Control_ID_dgdLiquidacion
  loc_B82DE9: FStAdFunc var_EC
  loc_B82DEC: FLdPr var_EC
  loc_B82DEF: LateIdSt
  loc_B82DF4: FFree1Ad var_EC
  loc_B82DF7: Call GeneraReporte()
  loc_B82DFC: FLdPr Me
  loc_B82DFF: MemLdI2 bGenerado
  loc_B82E02: BranchF loc_B83132
  loc_B82E05: FLdPr Me
  loc_B82E08: MemLdStr global_92
  loc_B82E0B: LitI2_Byte 1
  loc_B82E0D: FnUBound
  loc_B82E0F: CR8I4
  loc_B82E10: CVarR4
  loc_B82E14: PopAdLdVar
  loc_B82E15: FLdPr Me
  loc_B82E18: VCallAd Control_ID_pbar
  loc_B82E1B: FStAdFunc var_EC
  loc_B82E1E: FLdPr var_EC
  loc_B82E21: LateIdSt
  loc_B82E26: FFree1Ad var_EC
  loc_B82E29: LitVar_TRUE var_B4
  loc_B82E2C: PopAdLdVar
  loc_B82E2D: FLdPr Me
  loc_B82E30: VCallAd Control_ID_pbar
  loc_B82E33: FStAdFunc var_EC
  loc_B82E36: FLdPr var_EC
  loc_B82E39: LateIdSt
  loc_B82E3E: FFree1Ad var_EC
  loc_B82E41: LitStr vbNullString
  loc_B82E44: FStStrCopy var_90
  loc_B82E47: LitI4 1
  loc_B82E4C: FLdPr Me
  loc_B82E4F: MemLdStr global_92
  loc_B82E52: Ary1LdPr
  loc_B82E53: MemLdStr global_80
  loc_B82E56: CI4Str
  loc_B82E57: FStR4 var_98
  loc_B82E5A: LitI4 1
  loc_B82E5F: FLdPr Me
  loc_B82E62: MemLdRfVar from_stack_1.global_96
  loc_B82E65: FLdPr Me
  loc_B82E68: MemLdStr global_92
  loc_B82E6B: LitI2_Byte 1
  loc_B82E6D: FnUBound
  loc_B82E6F: ForI4 var_F4
  loc_B82E75: FLdPr Me
  loc_B82E78: MemLdStr global_96
  loc_B82E7B: FLdPr Me
  loc_B82E7E: MemLdStr global_92
  loc_B82E81: AryLock
  loc_B82E84: Ary1LdRf
  loc_B82E85: FStR4 var_FC
  loc_B82E88: FLdRfVar var_A4
  loc_B82E8B: FLdPr Me
  loc_B82E8E: MemLdStr global_96
  loc_B82E91: Call Proc_324_17_9BA2E4()
  loc_B82E96: FLdZeroAd var_A4
  loc_B82E99: FStStr var_8C
  loc_B82E9C: ILdRf var_9C
  loc_B82E9F: ILdRf var_8C
  loc_B82EA2: ConcatStr
  loc_B82EA3: FStStrNoPop var_A4
  loc_B82EA6: LitStr ".html"
  loc_B82EA9: ConcatStr
  loc_B82EAA: ImpAdStStr MemVar_D93C84
  loc_B82EAE: FFree1Str var_A4
  loc_B82EB1: LitI4 0
  loc_B82EB6: FStR4 var_FC
  loc_B82EB9: AryUnlock
  loc_B82EBC: FLdPr Me
  loc_B82EBF: MemLdStr global_96
  loc_B82EC2: CR8I4
  loc_B82EC3: CVarR4
  loc_B82EC7: PopAdLdVar
  loc_B82EC8: FLdPr Me
  loc_B82ECB: VCallAd Control_ID_pbar
  loc_B82ECE: FStAdFunc var_EC
  loc_B82ED1: FLdPr var_EC
  loc_B82ED4: LateIdSt
  loc_B82ED9: FFree1Ad var_EC
  loc_B82EDC: FLdPr Me
  loc_B82EDF: MemLdStr global_96
  loc_B82EE2: CStrI4
  loc_B82EE4: FStStrNoPop var_A4
  loc_B82EE7: LitStr "/"
  loc_B82EEA: ConcatStr
  loc_B82EEB: FStStrNoPop var_100
  loc_B82EEE: FLdPr Me
  loc_B82EF1: MemLdStr global_92
  loc_B82EF4: LitI2_Byte 1
  loc_B82EF6: FnUBound
  loc_B82EF8: CStrI4
  loc_B82EFA: FStStrNoPop var_104
  loc_B82EFD: ConcatStr
  loc_B82EFE: FStStrNoPop var_108
  loc_B82F01: FLdPr Me
  loc_B82F04: VCallAd Control_ID_ProgresoLbl
  loc_B82F07: FStAdFunc var_EC
  loc_B82F0A: FLdPr var_EC
  loc_B82F0D: Me.Caption = from_stack_1
  loc_B82F12: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B82F1D: FFree1Ad var_EC
  loc_B82F20: Call GeneraHTML()
  loc_B82F25: ILdRf var_90
  loc_B82F28: LitStr """"
  loc_B82F2B: ConcatStr
  loc_B82F2C: FStStrNoPop var_A4
  loc_B82F2F: ImpAdLdI4 MemVar_D93C84
  loc_B82F32: ConcatStr
  loc_B82F33: FStStrNoPop var_100
  loc_B82F36: LitStr """ "
  loc_B82F39: ConcatStr
  loc_B82F3A: FStStr var_90
  loc_B82F3D: FFreeStr var_A4 = ""
  loc_B82F44: FLdPr Me
  loc_B82F47: MemLdStr global_96
  loc_B82F4A: LitI4 &HFA
  loc_B82F4F: ModI4
  loc_B82F50: LitI4 0
  loc_B82F55: EqI4
  loc_B82F56: FLdPr Me
  loc_B82F59: MemLdStr global_96
  loc_B82F5C: FLdPr Me
  loc_B82F5F: MemLdStr global_92
  loc_B82F62: LitI2_Byte 1
  loc_B82F64: FnUBound
  loc_B82F66: EqI4
  loc_B82F67: OrI4
  loc_B82F68: BranchF loc_B830CC
  loc_B82F6B: FLdPr Me
  loc_B82F6E: MemLdStr global_96
  loc_B82F71: FLdPr Me
  loc_B82F74: MemLdStr global_92
  loc_B82F77: LitI2_Byte 1
  loc_B82F79: FnUBound
  loc_B82F7B: EqI4
  loc_B82F7C: BranchF loc_B82FC2
  loc_B82F7F: LitStr " ("
  loc_B82F82: ILdRf var_98
  loc_B82F85: CStrI4
  loc_B82F87: FStStrNoPop var_A4
  loc_B82F8A: ConcatStr
  loc_B82F8B: FStStrNoPop var_100
  loc_B82F8E: LitStr "-"
  loc_B82F91: ConcatStr
  loc_B82F92: FStStrNoPop var_104
  loc_B82F95: FLdPr Me
  loc_B82F98: MemLdStr global_92
  loc_B82F9B: LitI2_Byte 1
  loc_B82F9D: FnUBound
  loc_B82F9F: FLdPr Me
  loc_B82FA2: MemLdStr global_92
  loc_B82FA5: Ary1LdPr
  loc_B82FA6: MemLdStr global_80
  loc_B82FA9: ConcatStr
  loc_B82FAA: FStStrNoPop var_108
  loc_B82FAD: LitStr ")"
  loc_B82FB0: ConcatStr
  loc_B82FB1: FStStr var_94
  loc_B82FB4: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B82FBF: Branch loc_B83018
  loc_B82FC2: LitStr " ("
  loc_B82FC5: ILdRf var_98
  loc_B82FC8: CStrI4
  loc_B82FCA: FStStrNoPop var_A4
  loc_B82FCD: ConcatStr
  loc_B82FCE: FStStrNoPop var_100
  loc_B82FD1: LitStr "-"
  loc_B82FD4: ConcatStr
  loc_B82FD5: FStStrNoPop var_104
  loc_B82FD8: FLdPr Me
  loc_B82FDB: MemLdStr global_96
  loc_B82FDE: FLdPr Me
  loc_B82FE1: MemLdStr global_92
  loc_B82FE4: Ary1LdPr
  loc_B82FE5: MemLdStr global_80
  loc_B82FE8: ConcatStr
  loc_B82FE9: FStStrNoPop var_108
  loc_B82FEC: LitStr ")"
  loc_B82FEF: ConcatStr
  loc_B82FF0: FStStr var_94
  loc_B82FF3: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B82FFE: FLdPr Me
  loc_B83001: MemLdStr global_96
  loc_B83004: LitI4 1
  loc_B83009: AddI4
  loc_B8300A: FLdPr Me
  loc_B8300D: MemLdStr global_92
  loc_B83010: Ary1LdPr
  loc_B83011: MemLdStr global_80
  loc_B83014: CI4Str
  loc_B83015: FStR4 var_98
  loc_B83018: FLdPr Me
  loc_B8301B: MemLdStr global_76
  loc_B8301E: LitStr "\tasas"
  loc_B83021: ConcatStr
  loc_B83022: FStStrNoPop var_A4
  loc_B83025: ILdRf var_94
  loc_B83028: ConcatStr
  loc_B83029: FStStrNoPop var_100
  loc_B8302C: LitStr ".pdf"
  loc_B8302F: ConcatStr
  loc_B83030: ImpAdStStr MemVar_D93030
  loc_B83034: FFreeStr var_A4 = ""
  loc_B8303B: ILdRf var_90
  loc_B8303E: FnLenStr
  loc_B8303F: LitI4 3
  loc_B83044: SubI4
  loc_B83045: CVarI4
  loc_B83049: LitI4 2
  loc_B8304E: FLdRfVar var_90
  loc_B83051: CVarRef
  loc_B83056: FLdRfVar var_E4
  loc_B83059: ImpAdCallFPR4  = Mid(, , )
  loc_B8305E: FLdRfVar var_E4
  loc_B83061: CStrVarTmp
  loc_B83062: FStStr var_90
  loc_B83065: FFreeVar var_C4 = ""
  loc_B8306C: LitStr vbNullString
  loc_B8306F: ImpAdLdI4 MemVar_D93030
  loc_B83072: ILdRf var_90
  loc_B83075: ImpAdCallFPR4 Proc_57_55_AE2160(, , )
  loc_B8307A: LitStr "Guardando PDF: '"
  loc_B8307D: ImpAdLdI4 MemVar_D93030
  loc_B83080: ConcatStr
  loc_B83081: FStStrNoPop var_A4
  loc_B83084: LitStr "'"
  loc_B83087: ConcatStr
  loc_B83088: CVarStr var_C4
  loc_B8308B: PopAdLdVar
  loc_B8308C: FLdPr Me
  loc_B8308F: VCallAd Control_ID_statusBar
  loc_B83092: FStAdFunc var_EC
  loc_B83095: FLdPr var_EC
  loc_B83098: LateIdSt
  loc_B8309D: FFree1Str var_A4
  loc_B830A0: FFree1Ad var_EC
  loc_B830A3: FFree1Var var_C4 = ""
  loc_B830A6: FLdRfVar var_E6
  loc_B830A9: ImpAdLdI4 MemVar_D93030
  loc_B830AC: FLdRfVar var_88
  loc_B830AF: NewIfNullPr IFileSystem3
  loc_B830B2: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B830B7: FLdI2 var_E6
  loc_B830BA: NotI4
  loc_B830BB: BranchF loc_B830C6
  loc_B830BE: ImpAdCallFPR4 DoEvents()
  loc_B830C3: Branch loc_B830A6
  loc_B830C6: LitStr vbNullString
  loc_B830C9: FStStrCopy var_90
  loc_B830CC: ImpAdCallFPR4 DoEvents()
  loc_B830D1: FLdPr Me
  loc_B830D4: MemLdRfVar from_stack_1.global_96
  loc_B830D7: NextI4 var_F4, loc_B82E75
  loc_B830DC: LitStr "Proceso terminado."
  loc_B830DF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B830E4: FLdRfVar var_E6
  loc_B830E7: ILdRf var_9C
  loc_B830EA: FLdRfVar var_88
  loc_B830ED: NewIfNullPr IFileSystem3
  loc_B830F0: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B830F5: FLdI2 var_E6
  loc_B830F8: BranchF loc_B8310E
  loc_B830FB: LitStr "*.*"
  loc_B830FE: ILdRf var_9C
  loc_B83101: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B83106: ILdRf var_9C
  loc_B83109: ImpAdCallFPR4 RmDir 
  loc_B8310E: LitVar_FALSE
  loc_B83112: PopAdLdVar
  loc_B83113: FLdPr Me
  loc_B83116: VCallAd Control_ID_pbar
  loc_B83119: FStAdFunc var_EC
  loc_B8311C: FLdPr var_EC
  loc_B8311F: LateIdSt
  loc_B83124: FFree1Ad var_EC
  loc_B83127: FLdPr Me
  loc_B8312A: MemLdStr global_76
  loc_B8312D: ImpAdCallFPR4 Proc_272_64_A06738()
  loc_B83132: ILdRf Me
  loc_B83135: CastAd
  loc_B83138: FStAdFunc var_EC
  loc_B8313B: FLdRfVar var_EC
  loc_B8313E: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B83143: FFree1Ad var_EC
  loc_B83146: LitVarStr var_B4, vbNullString
  loc_B8314B: PopAdLdVar
  loc_B8314C: FLdPr Me
  loc_B8314F: VCallAd Control_ID_statusBar
  loc_B83152: FStAdFunc var_EC
  loc_B83155: FLdPr var_EC
  loc_B83158: LateIdSt
  loc_B8315D: FFree1Ad var_EC
  loc_B83160: FLdPr Me
  loc_B83163: VCallAd Control_ID_dgdLiquidacion
  loc_B83166: FStAdFunc var_EC
  loc_B83169: FLdPr var_EC
  loc_B8316C: LateIdLdVar var_C4 DispID_13 -32767
  loc_B83173: CBoolVar
  loc_B83175: FFree1Ad var_EC
  loc_B83178: FFree1Var var_C4 = ""
  loc_B8317B: BranchF loc_B83195
  loc_B8317E: FLdPr Me
  loc_B83181: VCallAd Control_ID_dgdLiquidacion
  loc_B83184: FStAdFunc var_EC
  loc_B83187: FLdPr var_EC
  loc_B8318A: LateIdCall
  loc_B83192: FFree1Ad var_EC
  loc_B83195: ExitProcHresult
  loc_B83196: FLdRfVar var_A0
  loc_B83199: ImpAdCallI2 Err 'rtcErrObj
  loc_B8319E: FStAdFunc var_EC
  loc_B831A1: FLdPr var_EC
  loc_B831A4:  = Err.Number
  loc_B831A9: ILdRf var_A0
  loc_B831AC: FStR4 var_10C
  loc_B831AF: FFree1Ad var_EC
  loc_B831B2: ILdRf var_10C
  loc_B831B5: LitI4 &H4C
  loc_B831BA: EqI4
  loc_B831BB: BranchF loc_B831C1
  loc_B831BE: Branch loc_B8321D
  loc_B831C1: LitStr "Error "
  loc_B831C4: FLdRfVar var_A0
  loc_B831C7: ImpAdCallI2 Err 'rtcErrObj
  loc_B831CC: FStAdFunc var_EC
  loc_B831CF: FLdPr var_EC
  loc_B831D2:  = Err.Number
  loc_B831D7: ILdRf var_A0
  loc_B831DA: CStrI4
  loc_B831DC: FStStrNoPop var_A4
  loc_B831DF: ConcatStr
  loc_B831E0: FStStrNoPop var_100
  loc_B831E3: LitStr ": "
  loc_B831E6: ConcatStr
  loc_B831E7: FStStrNoPop var_108
  loc_B831EA: FLdRfVar var_104
  loc_B831ED: ImpAdCallI2 Err 'rtcErrObj
  loc_B831F2: FStAdFunc var_110
  loc_B831F5: FLdPr var_110
  loc_B831F8:  = Err.Description
  loc_B831FD: ILdRf var_104
  loc_B83200: ConcatStr
  loc_B83201: FStStrNoPop var_114
  loc_B83204: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B83209: FFreeStr var_A4 = "": var_100 = "": var_108 = "": var_104 = ""
  loc_B83216: FFreeAd var_EC = ""
  loc_B8321D: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A16ED0
  'Data Table: 4C4E5C
  loc_A16E98: FLdPr Me
  loc_A16E9B: VCallAd Control_ID_statusBar
  loc_A16E9E: FStAdFunc var_88
  loc_A16EA1: FLdPr var_88
  loc_A16EA4: LateIdLdVar var_98 DispID_1 0
  loc_A16EAB: CStrVarTmp
  loc_A16EAC: CVarStr var_A8
  loc_A16EAF: PopAdLdVar
  loc_A16EB0: FLdPr Me
  loc_A16EB3: VCallAd Control_ID_statusBar
  loc_A16EB6: FStAdFunc var_BC
  loc_A16EB9: FLdPr var_BC
  loc_A16EBC: LateIdSt
  loc_A16EC1: FFreeAd var_88 = ""
  loc_A16EC8: FFreeVar var_98 = ""
  loc_A16ECF: ExitProcHresult
End Sub

Private Sub OrdeLitaDesdeMsk_UnknownEvent_0 '9C0F80
  'Data Table: 4C4E5C
  loc_9C0F6C: FLdPr Me
  loc_9C0F6F: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_9C0F72: CVarAd
  loc_9C0F76: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0F7B: FFree1Var var_94 = ""
  loc_9C0F7E: ExitProcHresult
End Sub

Private Sub OrdeLitaDesdeMsk_UnknownEvent_8 '9B08FC
  'Data Table: 4C4E5C
  loc_9B08F4: LitI2_Byte &HFF
  loc_9B08F6: Call Proc_324_19_B01FB4()
  loc_9B08FB: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ADA754
  'Data Table: 4C4E5C
  loc_ADA610: LitI2_Byte 0
  loc_ADA612: FLdPr Me
  loc_ADA615: MemStI2 bGenerado
  loc_ADA618: LitI2_Byte &HFF
  loc_ADA61A: ILdRf Me
  loc_ADA61D: CastAd
  loc_ADA620: FStAdFunc var_88
  loc_ADA623: FLdRfVar var_88
  loc_ADA626: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_ADA62B: FFree1Ad var_88
  loc_ADA62E: FLdPr Me
  loc_ADA631: MemLdRfVar from_stack_1.global_80
  loc_ADA634: NewIfNullPr clsliquidacion
  loc_ADA637: Call clsliquidacion.Requery()
  loc_ADA63C: LitVarStr var_98, vbNullString
  loc_ADA641: PopAdLdVar
  loc_ADA642: FLdPr Me
  loc_ADA645: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_ADA648: FStAdFunc var_88
  loc_ADA64B: FLdPr var_88
  loc_ADA64E: LateIdSt
  loc_ADA653: FFree1Ad var_88
  loc_ADA656: LitVarStr var_98, vbNullString
  loc_ADA65B: PopAdLdVar
  loc_ADA65C: FLdPr Me
  loc_ADA65F: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_ADA662: FStAdFunc var_88
  loc_ADA665: FLdPr var_88
  loc_ADA668: LateIdSt
  loc_ADA66D: FFree1Ad var_88
  loc_ADA670: LitStr vbNullString
  loc_ADA673: FLdPr Me
  loc_ADA676: VCallAd Control_ID_ProgresoLbl
  loc_ADA679: FStAdFunc var_88
  loc_ADA67C: FLdPr var_88
  loc_ADA67F: Me.Caption = from_stack_1
  loc_ADA684: FFree1Ad var_88
  loc_ADA687: FLdRfVar var_AC
  loc_ADA68A: FLdPr Me
  loc_ADA68D: MemLdRfVar from_stack_1.global_80
  loc_ADA690: NewIfNullPr clsliquidacion
  loc_ADA693: from_stack_1 = clsliquidacion.RecordCount
  loc_ADA698: ILdRf var_AC
  loc_ADA69B: LitI4 0
  loc_ADA6A0: GtI4
  loc_ADA6A1: BranchF loc_ADA713
  loc_ADA6A4: LitI4 0
  loc_ADA6A9: LitI4 1
  loc_ADA6AE: FLdRfVar var_B0
  loc_ADA6B1: Redim
  loc_ADA6BB: FLdPr Me
  loc_ADA6BE: MemLdRfVar from_stack_1.global_80
  loc_ADA6C1: NewIfNullAd
  loc_ADA6C4: FStAd var_88 
  loc_ADA6C8: FLdRfVar var_88
  loc_ADA6CB: CVarRef
  loc_ADA6D0: ParmAry1St
  loc_ADA6D6: FLdPr Me
  loc_ADA6D9: VCallAd Control_ID_dgdLiquidacion
  loc_ADA6DC: CVarAd
  loc_ADA6E0: ParmAry1St
  loc_ADA6E6: FLdRfVar var_B0
  loc_ADA6E9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ADA6EE: ILdRf var_88
  loc_ADA6F1: CastAd
  loc_ADA6F4: FLdPr Me
  loc_ADA6F7: MemStAdFunc
  loc_ADA6FB: FLdRfVar var_B0
  loc_ADA6FE: Erase
  loc_ADA6FF: FFree1Ad var_88
  loc_ADA702: FLdPr Me
  loc_ADA705: MemLdRfVar from_stack_1.global_80
  loc_ADA708: NewIfNullPr clsliquidacion
  loc_ADA70B: Call clsliquidacion.MoveLast()
  loc_ADA710: Branch loc_ADA72F
  loc_ADA713: LitStr "No existen liquidaciones para listar"
  loc_ADA716: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADA71B: ILdRf Me
  loc_ADA71E: CastAd
  loc_ADA721: FStAdFunc var_88
  loc_ADA724: FLdRfVar var_88
  loc_ADA727: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_ADA72C: FFree1Ad var_88
  loc_ADA72F: LitStr vbNullString
  loc_ADA732: FLdPr Me
  loc_ADA735: Me.Tag = from_stack_1
  loc_ADA73A: Call HabilitarCriterio()
  loc_ADA73F: ILdRf Me
  loc_ADA742: CastAd
  loc_ADA745: FStAdFunc var_88
  loc_ADA748: FLdRfVar var_88
  loc_ADA74B: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ADA750: FFree1Ad var_88
  loc_ADA753: ExitProcHresult
End Sub

Private Sub Form_Load() 'A89D88
  'Data Table: 4C4E5C
  loc_A89CEC: LitStr "PRIMER"
  loc_A89CEF: LitI4 1
  loc_A89CF4: FLdPr Me
  loc_A89CF7: MemLdRfVar from_stack_1.global_120
  loc_A89CFA: Ary1StStrCopy
  loc_A89CFB: LitStr "SEGUNDO"
  loc_A89CFE: LitI4 2
  loc_A89D03: FLdPr Me
  loc_A89D06: MemLdRfVar from_stack_1.global_120
  loc_A89D09: Ary1StStrCopy
  loc_A89D0A: LitStr "TERCER"
  loc_A89D0D: LitI4 3
  loc_A89D12: FLdPr Me
  loc_A89D15: MemLdRfVar from_stack_1.global_120
  loc_A89D18: Ary1StStrCopy
  loc_A89D19: LitStr "CUARTO"
  loc_A89D1C: LitI4 4
  loc_A89D21: FLdPr Me
  loc_A89D24: MemLdRfVar from_stack_1.global_120
  loc_A89D27: Ary1StStrCopy
  loc_A89D28: LitStr "QUINTO"
  loc_A89D2B: LitI4 5
  loc_A89D30: FLdPr Me
  loc_A89D33: MemLdRfVar from_stack_1.global_120
  loc_A89D36: Ary1StStrCopy
  loc_A89D37: LitStr "SEXTO"
  loc_A89D3A: LitI4 6
  loc_A89D3F: FLdPr Me
  loc_A89D42: MemLdRfVar from_stack_1.global_120
  loc_A89D45: Ary1StStrCopy
  loc_A89D46: ILdRf Me
  loc_A89D49: CastAd
  loc_A89D4C: FStAdFunc var_88
  loc_A89D4F: FLdRfVar var_88
  loc_A89D52: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A89D57: FFree1Ad var_88
  loc_A89D5A: LitStr "SELECT PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, LeyeTili, FealLiqu"
  loc_A89D5D: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A89D60: ConcatStr
  loc_A89D61: FStStrNoPop var_8C
  loc_A89D64: LitStr " WHERE liquidacion.CodiOfic = 1 AND ActuLiqu = 'Si' ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A89D67: ConcatStr
  loc_A89D68: FStStrNoPop var_90
  loc_A89D6B: FLdPr Me
  loc_A89D6E: MemLdRfVar from_stack_1.global_80
  loc_A89D71: NewIfNullPr clsliquidacion
  loc_A89D74: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A89D79: FFreeStr var_8C = ""
  loc_A89D80: Call cmdNueva_Click()
  loc_A89D85: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D1CB4
  'Data Table: 4C4E5C
  loc_9D1C9C: FLdPr Me
  loc_9D1C9F: VCallAd Control_ID_wbbReporte
  loc_9D1CA2: FStAdFunc var_88
  loc_9D1CA5: FLdRfVar var_88
  loc_9D1CA8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D1CAD: FFree1Ad var_88
  loc_9D1CB0: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4C6000
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C600F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5CF30
  'Data Table: 4C4E5C
  loc_A5CEDC: LitI4 0
  loc_A5CEE1: LitI4 2
  loc_A5CEE6: FLdRfVar var_88
  loc_A5CEE9: Redim
  loc_A5CEF3: FLdPr Me
  loc_A5CEF6: VCallAd Control_ID_dgdLiquidacion
  loc_A5CEF9: CVarAd
  loc_A5CEFD: ParmAry1St
  loc_A5CF03: FLdPr Me
  loc_A5CF06: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_A5CF09: CVarAd
  loc_A5CF0D: ParmAry1St
  loc_A5CF13: FLdPr Me
  loc_A5CF16: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_A5CF19: CVarAd
  loc_A5CF1D: ParmAry1St
  loc_A5CF23: FLdRfVar var_88
  loc_A5CF26: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5CF2B: FLdRfVar var_88
  loc_A5CF2E: Erase
  loc_A5CF2F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B49874
  'Data Table: 4C4E5C
  loc_B4953C: FLdPr Me
  loc_B4953F: MemLdI2 bGenerado
  loc_B49542: BranchF loc_B49546
  loc_B49545: ExitProcHresult
  loc_B49546: LitVarStr var_94, "Generando reporte..."
  loc_B4954B: PopAdLdVar
  loc_B4954C: FLdPr Me
  loc_B4954F: VCallAd Control_ID_statusBar
  loc_B49552: FStAdFunc var_A8
  loc_B49555: FLdPr var_A8
  loc_B49558: LateIdSt
  loc_B4955D: FFree1Ad var_A8
  loc_B49560: LitI4 &HB
  loc_B49565: CI2I4
  loc_B49566: FLdPr Me
  loc_B49569: Me.MousePointer = from_stack_1
  loc_B4956E: FLdRfVar var_AC
  loc_B49571: FLdPr Me
  loc_B49574: MemLdRfVar from_stack_1.global_80
  loc_B49577: NewIfNullPr clsliquidacion
  loc_B4957A: from_stack_1 = clsliquidacion.RecordCount
  loc_B4957F: ILdRf var_AC
  loc_B49582: LitI4 1
  loc_B49587: LtI4
  loc_B49588: BranchF loc_B49596
  loc_B4958B: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B4958E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B49593: Branch loc_B49849
  loc_B49596: Call Proc_324_18_AD0F34()
  loc_B4959B: FLdPr Me
  loc_B4959E: MemLdRfVar from_stack_1.global_84
  loc_B495A1: NewIfNullAd
  loc_B495A4: FStAd var_B0 
  loc_B495A8: LitStr "SELECT CodiInmu, TipoVenc, OrdeLita, FeacLita, BimeLiqu, sum(TotaLita) as TotaLita, boleto.PeriBole, boleto.NumeBole, "
  loc_B495AB: LitStr " boleto.FeveBole as FeveLita, cast(boleto.TotaBole as DOUBLE(10,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, liqutasa.DetaPers, CodiRyB, DetaRyB, truncate(AvalInmu,0) as AvalInmu, CallLita, "
  loc_B495AE: ConcatStr
  loc_B495AF: FStStrNoPop var_B4
  loc_B495B2: LitStr " NucaLita, BarrLita, ManzLita, CasaLita, UbicLita, LocaLita, CopoLita, CallLitaReal, NucaLitaReal, BarrLitaReal, ManzLitaReal, "
  loc_B495B5: ConcatStr
  loc_B495B6: FStStrNoPop var_B8
  loc_B495B9: LitStr " CasaLitaReal, UbicLitaReal, LocaLitaReal, CopoLitaReal, sum(if(CodiConc='13030202',TotaLita,0)) RecaBole, ifnull(p.DetaPers,'') as Vinculo, DptoLita, DistLita, SeccLita, MansLita, ParcLita, SubpLita, DigiLita, "
  loc_B495BC: ConcatStr
  loc_B495BD: FStStrNoPop var_BC
  loc_B495C0: LitStr " sum(if(CodiConc='13020101',(DescLita + ExenLita),0)) as DescLita, sum(if(CodiConc='13031500',TotaLita,0)) as BombLita, DeudLita"
  loc_B495C3: ConcatStr
  loc_B495C4: FStStrNoPop var_C0
  loc_B495C7: LitStr " FROM liqutasa"
  loc_B495CA: ConcatStr
  loc_B495CB: FStStrNoPop var_C4
  loc_B495CE: LitStr " INNER JOIN boleto ON boleto.PeriBole = liqutasa.PeriBole AND boleto.NumeBole = liqutasa.NumeBole"
  loc_B495D1: ConcatStr
  loc_B495D2: FStStrNoPop var_C8
  loc_B495D5: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = 1 AND relacion.CuenCtct = liqutasa.CodiInmu AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_B495D8: ConcatStr
  loc_B495D9: FStStrNoPop var_CC
  loc_B495DC: LitStr " LEFT JOIN infogov.persona p ON p.CucuPers = relacion.CucuPers"
  loc_B495DF: ConcatStr
  loc_B495E0: FStStrNoPop var_D0
  loc_B495E3: LitStr " WHERE TipoLita = 'Aforo' AND FeacLita is not null"
  loc_B495E6: ConcatStr
  loc_B495E7: FStStrNoPop var_D4
  loc_B495EA: LitStr " AND liqutasa.PeriLiqu = "
  loc_B495ED: ConcatStr
  loc_B495EE: FStStrNoPop var_DC
  loc_B495F1: FLdRfVar var_D6
  loc_B495F4: FLdPr Me
  loc_B495F7: MemLdRfVar from_stack_1.global_80
  loc_B495FA: NewIfNullPr clsliquidacion
  loc_B495FD: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B49602: FLdI2 var_D6
  loc_B49605: CStrUI1
  loc_B49607: FStStrNoPop var_E0
  loc_B4960A: ConcatStr
  loc_B4960B: FStStrNoPop var_E4
  loc_B4960E: LitStr " AND liqutasa.CodiTili = "
  loc_B49611: ConcatStr
  loc_B49612: FStStrNoPop var_EC
  loc_B49615: FLdRfVar var_E6
  loc_B49618: FLdPr Me
  loc_B4961B: MemLdRfVar from_stack_1.global_80
  loc_B4961E: NewIfNullPr clsliquidacion
  loc_B49621: from_stack_1 = clsliquidacion.CodiTili
  loc_B49626: FLdUI1
  loc_B4962A: CStrI2
  loc_B4962C: FStStrNoPop var_F0
  loc_B4962F: ConcatStr
  loc_B49630: FStStrNoPop var_F4
  loc_B49633: LitStr " AND liqutasa.NumeLiqu = "
  loc_B49636: ConcatStr
  loc_B49637: FStStrNoPop var_FC
  loc_B4963A: FLdRfVar var_F6
  loc_B4963D: FLdPr Me
  loc_B49640: MemLdRfVar from_stack_1.global_80
  loc_B49643: NewIfNullPr clsliquidacion
  loc_B49646: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B4964B: FLdI2 var_F6
  loc_B4964E: CStrUI1
  loc_B49650: FStStrNoPop var_100
  loc_B49653: ConcatStr
  loc_B49654: FStStrNoPop var_104
  loc_B49657: FLdPr Me
  loc_B4965A: MemLdStr global_108
  loc_B4965D: ConcatStr
  loc_B4965E: FStStrNoPop var_108
  loc_B49661: FLdPr Me
  loc_B49664: MemLdStr global_112
  loc_B49667: ConcatStr
  loc_B49668: FStStrNoPop var_10C
  loc_B4966B: LitStr " GROUP BY OrdeLita, TipoVenc, BimeLiqu, PeriBole, NumeBole HAVING TotaLita <> 0 ORDER BY OrdeLita, PeriBole, NumeBole"
  loc_B4966E: ConcatStr
  loc_B4966F: FStStrNoPop var_110
  loc_B49672: FLdPr var_B0
  loc_B49675: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_B4967A: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_B496A7: FLdRfVar var_AC
  loc_B496AA: FLdPr var_B0
  loc_B496AD: from_stack_1 = clsliqutasa.RecordCount
  loc_B496B2: ILdRf var_AC
  loc_B496B5: LitI4 1
  loc_B496BA: LtI4
  loc_B496BB: BranchF loc_B496C9
  loc_B496BE: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B496C1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B496C6: Branch loc_B49849
  loc_B496C9: LitI4 0
  loc_B496CE: LitI4 0
  loc_B496D3: FLdPr Me
  loc_B496D6: MemLdRfVar from_stack_1.global_92
  loc_B496D9: Redim
  loc_B496E3: LitI4 0
  loc_B496E8: FLdPr Me
  loc_B496EB: MemStI4 global_96
  loc_B496EE: LitI2_Byte 0
  loc_B496F0: FLdPr Me
  loc_B496F3: MemStI2 global_102
  loc_B496F6: FLdPr var_B0
  loc_B496F9: Call clsliqutasa.MoveFirst()
  loc_B496FE: FLdRfVar var_AC
  loc_B49701: FLdPr var_B0
  loc_B49704: from_stack_1 = clsliqutasa.RecordCount
  loc_B49709: ILdRf var_AC
  loc_B4970C: CR8I4
  loc_B4970D: CVarR4
  loc_B49711: PopAdLdVar
  loc_B49712: FLdPr Me
  loc_B49715: VCallAd Control_ID_pbar
  loc_B49718: FStAdFunc var_A8
  loc_B4971B: FLdPr var_A8
  loc_B4971E: LateIdSt
  loc_B49723: FFree1Ad var_A8
  loc_B49726: LitVar_TRUE var_94
  loc_B49729: PopAdLdVar
  loc_B4972A: FLdPr Me
  loc_B4972D: VCallAd Control_ID_pbar
  loc_B49730: FStAdFunc var_A8
  loc_B49733: FLdPr var_A8
  loc_B49736: LateIdSt
  loc_B4973B: FFree1Ad var_A8
  loc_B4973E: FLdRfVar var_D6
  loc_B49741: FLdPr var_B0
  loc_B49744: from_stack_1 = clsliqutasa.EOF
  loc_B49749: FLdI2 var_D6
  loc_B4974C: NotI4
  loc_B4974D: BranchF loc_B49822
  loc_B49750: FLdRfVar var_AC
  loc_B49753: FLdPr var_B0
  loc_B49756: from_stack_1 = clsliqutasa.AbsolutePosition
  loc_B4975B: ILdRf var_AC
  loc_B4975E: CR8I4
  loc_B4975F: CVarR4
  loc_B49763: PopAdLdVar
  loc_B49764: FLdPr Me
  loc_B49767: VCallAd Control_ID_pbar
  loc_B4976A: FStAdFunc var_A8
  loc_B4976D: FLdPr var_A8
  loc_B49770: LateIdSt
  loc_B49775: FFree1Ad var_A8
  loc_B49778: FLdRfVar var_AC
  loc_B4977B: FLdPr var_B0
  loc_B4977E: from_stack_1 = clsliqutasa.AbsolutePosition
  loc_B49783: FLdRfVar var_114
  loc_B49786: FLdPr var_B0
  loc_B49789: from_stack_1 = clsliqutasa.RecordCount
  loc_B4978E: LitI4 1
  loc_B49793: LitI4 1
  loc_B49798: LitVarStr var_A4, "0" & Chr(37)
  loc_B4979D: FStVarCopyObj var_134
  loc_B497A0: FLdRfVar var_134
  loc_B497A3: ILdRf var_AC
  loc_B497A6: CR8I4
  loc_B497A7: ILdRf var_114
  loc_B497AA: CR8I4
  loc_B497AB: DivR8
  loc_B497AC: CVarR8
  loc_B497B0: ImpAdCallI2 Format$(, )
  loc_B497B5: FStStrNoPop var_B4
  loc_B497B8: FLdPr Me
  loc_B497BB: VCallAd Control_ID_ProgresoLbl
  loc_B497BE: FStAdFunc var_A8
  loc_B497C1: FLdPr var_A8
  loc_B497C4: Me.Caption = from_stack_1
  loc_B497C9: FFree1Str var_B4
  loc_B497CC: FFree1Ad var_A8
  loc_B497CF: FFreeVar var_124 = ""
  loc_B497D6: FLdPr Me
  loc_B497D9: MemLdStr global_96
  loc_B497DC: FLdPr Me
  loc_B497DF: MemLdStr global_92
  loc_B497E2: Ary1LdPr
  loc_B497E3: MemLdStr global_76
  loc_B497E6: FLdRfVar var_AC
  loc_B497E9: FLdPr var_B0
  loc_B497EC: from_stack_1 = clsliqutasa.CodiInmu
  loc_B497F1: ILdRf var_AC
  loc_B497F4: CStrI4
  loc_B497F6: FStStrNoPop var_B4
  loc_B497F9: NeStr
  loc_B497FB: FFree1Str var_B4
  loc_B497FE: BranchF loc_B49809
  loc_B49801: Call Proc_324_20_BC1160()
  loc_B49806: Branch loc_B4980E
  loc_B49809: Call Proc_324_21_C3BB18()
  loc_B4980E: FLdPr Me
  loc_B49811: MemLdI2 global_102
  loc_B49814: BranchF loc_B4981A
  loc_B49817: Branch loc_B49849
  loc_B4981A: ImpAdCallFPR4 DoEvents()
  loc_B4981F: Branch loc_B4973E
  loc_B49822: LitVar_FALSE
  loc_B49826: PopAdLdVar
  loc_B49827: FLdPr Me
  loc_B4982A: VCallAd Control_ID_pbar
  loc_B4982D: FStAdFunc var_A8
  loc_B49830: FLdPr var_A8
  loc_B49833: LateIdSt
  loc_B49838: FFree1Ad var_A8
  loc_B4983B: LitNothing
  loc_B4983D: FStAd var_B0 
  loc_B49841: LitI2_Byte &HFF
  loc_B49843: FLdPr Me
  loc_B49846: MemStI2 bGenerado
  loc_B49849: LitI4 0
  loc_B4984E: CI2I4
  loc_B4984F: FLdPr Me
  loc_B49852: Me.MousePointer = from_stack_1
  loc_B49857: LitVarStr var_94, vbNullString
  loc_B4985C: PopAdLdVar
  loc_B4985D: FLdPr Me
  loc_B49860: VCallAd Control_ID_statusBar
  loc_B49863: FStAdFunc var_A8
  loc_B49866: FLdPr var_A8
  loc_B49869: LateIdSt
  loc_B4986E: FFree1Ad var_A8
  loc_B49871: ExitProcHresult
  loc_B49872: SubCy
End Sub

Public Sub GeneraHTML() 'A68D34
  'Data Table: 4C4E5C
  loc_A68CC4: FLdRfVar var_88
  loc_A68CC7: LitI2_Byte 0
  loc_A68CC9: LitI2_Byte &HFF
  loc_A68CCB: ImpAdLdI4 MemVar_D93C84
  loc_A68CCE: FLdPr Me
  loc_A68CD1: MemLdRfVar from_stack_1.global_56
  loc_A68CD4: NewIfNullPr IFileSystem3
  loc_A68CD7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A68CDC: ILdRf var_88
  loc_A68CDF: FLdPr Me
  loc_A68CE2: MemStVarAd
  loc_A68CE6: FFree1Ad var_88
  loc_A68CE9: LitI2_Byte 0
  loc_A68CEB: ImpAdStI2 MemVar_D93C8A
  loc_A68CEE: Call Proc_324_22_C22EA8()
  loc_A68CF3: Call Proc_324_23_BE910C()
  loc_A68CF8: Call Proc_324_24_B13500()
  loc_A68CFD: Call Proc_324_25_BDB07C()
  loc_A68D02: Call Proc_324_26_B06F74()
  loc_A68D07: Call Proc_324_27_9F0660()
  loc_A68D0C: FLdPr Me
  loc_A68D0F: MemLdRfVar from_stack_1.global_60
  loc_A68D12: LdPrVar
  loc_A68D14: LateMemCall
  loc_A68D1A: FLdPr Me
  loc_A68D1D: MemLdStr global_76
  loc_A68D20: LitStr vbNullString
  loc_A68D23: EqStr
  loc_A68D25: BranchF loc_A68D30
  loc_A68D28: LitStr vbNullString
  loc_A68D2B: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A68D30: ExitProcHresult
End Sub

Private Function Proc_324_17_9BA2E4(arg_C) '9BA2E4
  'Data Table: 4C4E5C
  loc_9BA2D4: ZeroRetVal
  loc_9BA2D6: ILdRf arg_C
  loc_9BA2D9: CStrI4
  loc_9BA2DB: FStStr var_88
  loc_9BA2DE: ExitProcCbHresult
End Function

Private Function Proc_324_18_AD0F34() 'AD0F34
  'Data Table: 4C4E5C
  loc_AD0E20: FLdPr Me
  loc_AD0E23: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_AD0E26: FStAdFunc var_88
  loc_AD0E29: FLdPr var_88
  loc_AD0E2C: LateIdLdVar var_98 DispID_22 0
  loc_AD0E33: PopAd
  loc_AD0E35: FLdPr Me
  loc_AD0E38: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_AD0E3B: FStAdFunc var_A0
  loc_AD0E3E: FLdPr var_A0
  loc_AD0E41: LateIdLdVar var_B0 DispID_22 0
  loc_AD0E48: PopAd
  loc_AD0E4A: LitVarStr var_E4, vbNullString
  loc_AD0E4F: FStVarCopyObj var_F4
  loc_AD0E52: FLdRfVar var_F4
  loc_AD0E55: LitStr " AND liqutasa.OrdeLita >= "
  loc_AD0E58: FLdRfVar var_B0
  loc_AD0E5B: CStrVarTmp
  loc_AD0E5C: FStStrNoPop var_B4
  loc_AD0E5F: ConcatStr
  loc_AD0E60: CVarStr var_D4
  loc_AD0E63: FLdRfVar var_98
  loc_AD0E66: CStrVarTmp
  loc_AD0E67: FStStrNoPop var_9C
  loc_AD0E6A: LitStr vbNullString
  loc_AD0E6D: NeStr
  loc_AD0E6F: CVarBoolI2 var_C4
  loc_AD0E73: FLdRfVar var_104
  loc_AD0E76: ImpAdCallFPR4  = IIf(, , )
  loc_AD0E7B: FLdRfVar var_104
  loc_AD0E7E: CStrVarTmp
  loc_AD0E7F: FStStrNoPop var_108
  loc_AD0E82: FLdPr Me
  loc_AD0E85: MemStStrCopy
  loc_AD0E89: FFreeStr var_9C = "": var_B4 = ""
  loc_AD0E92: FFreeAd var_88 = ""
  loc_AD0E99: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_AD0EA8: FLdPr Me
  loc_AD0EAB: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_AD0EAE: FStAdFunc var_88
  loc_AD0EB1: FLdPr var_88
  loc_AD0EB4: LateIdLdVar var_98 DispID_22 0
  loc_AD0EBB: PopAd
  loc_AD0EBD: FLdPr Me
  loc_AD0EC0: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_AD0EC3: FStAdFunc var_A0
  loc_AD0EC6: FLdPr var_A0
  loc_AD0EC9: LateIdLdVar var_B0 DispID_22 0
  loc_AD0ED0: PopAd
  loc_AD0ED2: LitVarStr var_E4, vbNullString
  loc_AD0ED7: FStVarCopyObj var_F4
  loc_AD0EDA: FLdRfVar var_F4
  loc_AD0EDD: LitStr " AND liqutasa.OrdeLita <= "
  loc_AD0EE0: FLdRfVar var_B0
  loc_AD0EE3: CStrVarTmp
  loc_AD0EE4: FStStrNoPop var_B4
  loc_AD0EE7: ConcatStr
  loc_AD0EE8: CVarStr var_D4
  loc_AD0EEB: FLdRfVar var_98
  loc_AD0EEE: CStrVarTmp
  loc_AD0EEF: FStStrNoPop var_9C
  loc_AD0EF2: LitStr vbNullString
  loc_AD0EF5: NeStr
  loc_AD0EF7: CVarBoolI2 var_C4
  loc_AD0EFB: FLdRfVar var_104
  loc_AD0EFE: ImpAdCallFPR4  = IIf(, , )
  loc_AD0F03: FLdRfVar var_104
  loc_AD0F06: CStrVarTmp
  loc_AD0F07: FStStrNoPop var_108
  loc_AD0F0A: FLdPr Me
  loc_AD0F0D: MemStStrCopy
  loc_AD0F11: FFreeStr var_9C = "": var_B4 = ""
  loc_AD0F1A: FFreeAd var_88 = ""
  loc_AD0F21: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_AD0F30: ExitProcHresult
  loc_AD0F31: UMiI2
  loc_AD0F32: FnLBound
End Function

Private Function Proc_324_19_B01FB4(arg_C) 'B01FB4
  'Data Table: 4C4E5C
  loc_B01DF4: from_stack_1v = Proc_324_18_AD0F34()
  loc_B01DF9: FLdPr Me
  loc_B01DFC: MemLdRfVar from_stack_1.global_84
  loc_B01DFF: NewIfNullAd
  loc_B01E02: FStAd var_88 
  loc_B01E06: LitStr "SELECT OrdeLita, sum(TotaLita) as TotaLita"
  loc_B01E09: LitStr " FROM liqutasa"
  loc_B01E0C: ConcatStr
  loc_B01E0D: FStStrNoPop var_8C
  loc_B01E10: LitStr " WHERE TipoLita = 'Aforo' AND FeacLita is not null"
  loc_B01E13: ConcatStr
  loc_B01E14: FStStrNoPop var_90
  loc_B01E17: LitStr " AND liqutasa.PeriLiqu = "
  loc_B01E1A: ConcatStr
  loc_B01E1B: FStStrNoPop var_98
  loc_B01E1E: FLdRfVar var_92
  loc_B01E21: FLdPr Me
  loc_B01E24: MemLdRfVar from_stack_1.global_80
  loc_B01E27: NewIfNullPr clsliquidacion
  loc_B01E2A: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B01E2F: FLdI2 var_92
  loc_B01E32: CStrUI1
  loc_B01E34: FStStrNoPop var_9C
  loc_B01E37: ConcatStr
  loc_B01E38: FStStrNoPop var_A0
  loc_B01E3B: LitStr " AND liqutasa.CodiTili = "
  loc_B01E3E: ConcatStr
  loc_B01E3F: FStStrNoPop var_A8
  loc_B01E42: FLdRfVar var_A2
  loc_B01E45: FLdPr Me
  loc_B01E48: MemLdRfVar from_stack_1.global_80
  loc_B01E4B: NewIfNullPr clsliquidacion
  loc_B01E4E: from_stack_1 = clsliquidacion.CodiTili
  loc_B01E53: FLdUI1
  loc_B01E57: CStrI2
  loc_B01E59: FStStrNoPop var_AC
  loc_B01E5C: ConcatStr
  loc_B01E5D: FStStrNoPop var_B0
  loc_B01E60: LitStr " AND liqutasa.NumeLiqu = "
  loc_B01E63: ConcatStr
  loc_B01E64: FStStrNoPop var_B8
  loc_B01E67: FLdRfVar var_B2
  loc_B01E6A: FLdPr Me
  loc_B01E6D: MemLdRfVar from_stack_1.global_80
  loc_B01E70: NewIfNullPr clsliquidacion
  loc_B01E73: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B01E78: FLdI2 var_B2
  loc_B01E7B: CStrUI1
  loc_B01E7D: FStStrNoPop var_BC
  loc_B01E80: ConcatStr
  loc_B01E81: FStStrNoPop var_C0
  loc_B01E84: FLdPr Me
  loc_B01E87: MemLdStr global_108
  loc_B01E8A: ConcatStr
  loc_B01E8B: FStStrNoPop var_C4
  loc_B01E8E: FLdPr Me
  loc_B01E91: MemLdStr global_112
  loc_B01E94: ConcatStr
  loc_B01E95: FStStrNoPop var_C8
  loc_B01E98: LitStr " GROUP BY CodiInmu HAVING TotaLita <> 0 AND OrdeLita > 0 ORDER BY OrdeLita"
  loc_B01E9B: ConcatStr
  loc_B01E9C: FStStrNoPop var_CC
  loc_B01E9F: FLdPr var_88
  loc_B01EA2: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_B01EA7: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B01EC6: FLdRfVar var_D0
  loc_B01EC9: FLdPr var_88
  loc_B01ECC: from_stack_1 = clsliqutasa.RecordCount
  loc_B01ED1: ILdRf var_D0
  loc_B01ED4: LitI4 0
  loc_B01ED9: GtI4
  loc_B01EDA: BranchF loc_B01F4C
  loc_B01EDD: FLdI2 arg_C
  loc_B01EE0: BranchF loc_B01F49
  loc_B01EE3: FLdPr var_88
  loc_B01EE6: Call clsliqutasa.MoveFirst()
  loc_B01EEB: FLdRfVar var_D0
  loc_B01EEE: FLdPr var_88
  loc_B01EF1: from_stack_1 = clsliqutasa.OrdeLita
  loc_B01EF6: ILdRf var_D0
  loc_B01EF9: CStrI4
  loc_B01EFB: CVarStr var_E0
  loc_B01EFE: PopAdLdVar
  loc_B01EFF: FLdPr Me
  loc_B01F02: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_B01F05: FStAdFunc var_F4
  loc_B01F08: FLdPr var_F4
  loc_B01F0B: LateIdSt
  loc_B01F10: FFree1Ad var_F4
  loc_B01F13: FFree1Var var_E0 = ""
  loc_B01F16: FLdPr var_88
  loc_B01F19: Call clsliqutasa.MoveLast()
  loc_B01F1E: FLdRfVar var_D0
  loc_B01F21: FLdPr var_88
  loc_B01F24: from_stack_1 = clsliqutasa.OrdeLita
  loc_B01F29: ILdRf var_D0
  loc_B01F2C: CStrI4
  loc_B01F2E: CVarStr var_E0
  loc_B01F31: PopAdLdVar
  loc_B01F32: FLdPr Me
  loc_B01F35: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_B01F38: FStAdFunc var_F4
  loc_B01F3B: FLdPr var_F4
  loc_B01F3E: LateIdSt
  loc_B01F43: FFree1Ad var_F4
  loc_B01F46: FFree1Var var_E0 = ""
  loc_B01F49: Branch loc_B01F80
  loc_B01F4C: LitVarStr var_F0, vbNullString
  loc_B01F51: PopAdLdVar
  loc_B01F52: FLdPr Me
  loc_B01F55: VCallAd Control_ID_OrdeLitaDesdeMsk
  loc_B01F58: FStAdFunc var_F4
  loc_B01F5B: FLdPr var_F4
  loc_B01F5E: LateIdSt
  loc_B01F63: FFree1Ad var_F4
  loc_B01F66: LitVarStr var_F0, vbNullString
  loc_B01F6B: PopAdLdVar
  loc_B01F6C: FLdPr Me
  loc_B01F6F: VCallAd Control_ID_OrdeLitaHastaMsk
  loc_B01F72: FStAdFunc var_F4
  loc_B01F75: FLdPr var_F4
  loc_B01F78: LateIdSt
  loc_B01F7D: FFree1Ad var_F4
  loc_B01F80: FLdRfVar var_D0
  loc_B01F83: FLdPr var_88
  loc_B01F86: from_stack_1 = clsliqutasa.RecordCount
  loc_B01F8B: ILdRf var_D0
  loc_B01F8E: CStrI4
  loc_B01F90: FStStrNoPop var_8C
  loc_B01F93: FLdPr Me
  loc_B01F96: VCallAd Control_ID_ProgresoLbl
  loc_B01F99: FStAdFunc var_F4
  loc_B01F9C: FLdPr var_F4
  loc_B01F9F: Me.Caption = from_stack_1
  loc_B01FA4: FFree1Str var_8C
  loc_B01FA7: FFree1Ad var_F4
  loc_B01FAA: LitNothing
  loc_B01FAC: FStAd var_88 
  loc_B01FB0: ExitProcHresult
  loc_B01FB1: FLdFPR4 Proc_324_19_B01FB4B8
End Function

Private Function Proc_324_20_BC1160() 'BC1160
  'Data Table: 4C4E5C
  loc_BC0AA4: FLdPr Me
  loc_BC0AA7: MemLdStr global_96
  loc_BC0AAA: LitI4 1
  loc_BC0AAF: AddI4
  loc_BC0AB0: FLdPr Me
  loc_BC0AB3: MemStI4 global_96
  loc_BC0AB6: LitI2_Byte 0
  loc_BC0AB8: CUI1I2
  loc_BC0ABA: FLdPr Me
  loc_BC0ABD: MemStUI1
  loc_BC0AC1: LitI4 0
  loc_BC0AC6: FLdPr Me
  loc_BC0AC9: MemLdStr global_96
  loc_BC0ACC: FLdPr Me
  loc_BC0ACF: MemLdRfVar from_stack_1.global_92
  loc_BC0AD2: RedimPreserve
  loc_BC0ADC: FLdPr Me
  loc_BC0ADF: MemLdRfVar from_stack_1.global_84
  loc_BC0AE2: NewIfNullAd
  loc_BC0AE5: FStAd var_88 
  loc_BC0AE9: FLdRfVar var_8C
  loc_BC0AEC: FLdPr var_88
  loc_BC0AEF: from_stack_1 = clsliqutasa.CucuPers
  loc_BC0AF4: LitI2_Byte 0
  loc_BC0AF6: LitVar_Missing var_C0
  loc_BC0AF9: LitI2_Byte 0
  loc_BC0AFB: FLdZeroAd var_8C
  loc_BC0AFE: CVarStr var_A0
  loc_BC0B01: PopAdLdVar
  loc_BC0B02: FLdPr Me
  loc_BC0B05: MemLdStr global_96
  loc_BC0B08: FLdPr Me
  loc_BC0B0B: MemLdStr global_92
  loc_BC0B0E: AryLock
  loc_BC0B11: Ary1LdPr
  loc_BC0B12: MemLdRfVar from_stack_1.global_0
  loc_BC0B15: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0B1A: AryUnlock
  loc_BC0B1D: FFreeVar var_A0 = ""
  loc_BC0B24: FLdRfVar var_A0
  loc_BC0B27: FLdPr var_88
  loc_BC0B2A: from_stack_1 = clsliqutasa.DetaPers
  loc_BC0B2F: LitI2_Byte 0
  loc_BC0B31: LitVar_Missing var_C0
  loc_BC0B34: LitI2_Byte 0
  loc_BC0B36: FLdVar var_A0
  loc_BC0B3A: FLdPr Me
  loc_BC0B3D: MemLdStr global_96
  loc_BC0B40: FLdPr Me
  loc_BC0B43: MemLdStr global_92
  loc_BC0B46: AryLock
  loc_BC0B49: Ary1LdPr
  loc_BC0B4A: MemLdRfVar from_stack_1.global_4
  loc_BC0B4D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0B52: AryUnlock
  loc_BC0B55: FFreeVar var_A0 = ""
  loc_BC0B5C: FLdRfVar var_A0
  loc_BC0B5F: FLdPr var_88
  loc_BC0B62: from_stack_1 = clsliqutasa.Vinculo
  loc_BC0B67: LitI2_Byte 0
  loc_BC0B69: LitVar_Missing var_C0
  loc_BC0B6C: LitI2_Byte 0
  loc_BC0B6E: FLdVar var_A0
  loc_BC0B72: FLdPr Me
  loc_BC0B75: MemLdStr global_96
  loc_BC0B78: FLdPr Me
  loc_BC0B7B: MemLdStr global_92
  loc_BC0B7E: AryLock
  loc_BC0B81: Ary1LdPr
  loc_BC0B82: MemLdRfVar from_stack_1.global_8
  loc_BC0B85: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0B8A: AryUnlock
  loc_BC0B8D: FFreeVar var_A0 = ""
  loc_BC0B94: FLdRfVar var_8C
  loc_BC0B97: FLdPr var_88
  loc_BC0B9A: from_stack_1 = clsliqutasa.CallLita
  loc_BC0B9F: LitI2_Byte 0
  loc_BC0BA1: LitVar_Missing var_C0
  loc_BC0BA4: LitI2_Byte 0
  loc_BC0BA6: FLdZeroAd var_8C
  loc_BC0BA9: CVarStr var_A0
  loc_BC0BAC: PopAdLdVar
  loc_BC0BAD: FLdPr Me
  loc_BC0BB0: MemLdStr global_96
  loc_BC0BB3: FLdPr Me
  loc_BC0BB6: MemLdStr global_92
  loc_BC0BB9: AryLock
  loc_BC0BBC: Ary1LdPr
  loc_BC0BBD: MemLdRfVar from_stack_1.global_12
  loc_BC0BC0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0BC5: AryUnlock
  loc_BC0BC8: FFreeVar var_A0 = ""
  loc_BC0BCF: FLdRfVar var_C4
  loc_BC0BD2: FLdPr var_88
  loc_BC0BD5: from_stack_1 = clsliqutasa.NucaLita
  loc_BC0BDA: LitI2_Byte 0
  loc_BC0BDC: LitVar_Missing var_A0
  loc_BC0BDF: LitI2_Byte 0
  loc_BC0BE1: ILdRf var_C4
  loc_BC0BE4: CVarI4
  loc_BC0BE8: PopAdLdVar
  loc_BC0BE9: FLdPr Me
  loc_BC0BEC: MemLdStr global_96
  loc_BC0BEF: FLdPr Me
  loc_BC0BF2: MemLdStr global_92
  loc_BC0BF5: AryLock
  loc_BC0BF8: Ary1LdPr
  loc_BC0BF9: MemLdRfVar from_stack_1.global_16
  loc_BC0BFC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0C01: AryUnlock
  loc_BC0C04: FFree1Var var_A0 = ""
  loc_BC0C07: FLdRfVar var_8C
  loc_BC0C0A: FLdPr var_88
  loc_BC0C0D: from_stack_1 = clsliqutasa.BarrLita
  loc_BC0C12: LitI2_Byte 0
  loc_BC0C14: LitVar_Missing var_C0
  loc_BC0C17: LitI2_Byte 0
  loc_BC0C19: FLdZeroAd var_8C
  loc_BC0C1C: CVarStr var_A0
  loc_BC0C1F: PopAdLdVar
  loc_BC0C20: FLdPr Me
  loc_BC0C23: MemLdStr global_96
  loc_BC0C26: FLdPr Me
  loc_BC0C29: MemLdStr global_92
  loc_BC0C2C: AryLock
  loc_BC0C2F: Ary1LdPr
  loc_BC0C30: MemLdRfVar from_stack_1.global_20
  loc_BC0C33: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0C38: AryUnlock
  loc_BC0C3B: FFreeVar var_A0 = ""
  loc_BC0C42: FLdRfVar var_8C
  loc_BC0C45: FLdPr var_88
  loc_BC0C48: from_stack_1 = clsliqutasa.ManzLita
  loc_BC0C4D: LitI2_Byte 0
  loc_BC0C4F: LitVar_Missing var_C0
  loc_BC0C52: LitI2_Byte 0
  loc_BC0C54: FLdZeroAd var_8C
  loc_BC0C57: CVarStr var_A0
  loc_BC0C5A: PopAdLdVar
  loc_BC0C5B: FLdPr Me
  loc_BC0C5E: MemLdStr global_96
  loc_BC0C61: FLdPr Me
  loc_BC0C64: MemLdStr global_92
  loc_BC0C67: AryLock
  loc_BC0C6A: Ary1LdPr
  loc_BC0C6B: MemLdRfVar from_stack_1.global_24
  loc_BC0C6E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0C73: AryUnlock
  loc_BC0C76: FFreeVar var_A0 = ""
  loc_BC0C7D: FLdRfVar var_8C
  loc_BC0C80: FLdPr var_88
  loc_BC0C83: from_stack_1 = clsliqutasa.CasaLita
  loc_BC0C88: LitI2_Byte 0
  loc_BC0C8A: LitVar_Missing var_C0
  loc_BC0C8D: LitI2_Byte 0
  loc_BC0C8F: FLdZeroAd var_8C
  loc_BC0C92: CVarStr var_A0
  loc_BC0C95: PopAdLdVar
  loc_BC0C96: FLdPr Me
  loc_BC0C99: MemLdStr global_96
  loc_BC0C9C: FLdPr Me
  loc_BC0C9F: MemLdStr global_92
  loc_BC0CA2: AryLock
  loc_BC0CA5: Ary1LdPr
  loc_BC0CA6: MemLdRfVar from_stack_1.global_28
  loc_BC0CA9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0CAE: AryUnlock
  loc_BC0CB1: FFreeVar var_A0 = ""
  loc_BC0CB8: FLdRfVar var_8C
  loc_BC0CBB: FLdPr var_88
  loc_BC0CBE: from_stack_1 = clsliqutasa.UbicLita
  loc_BC0CC3: LitI2_Byte 0
  loc_BC0CC5: LitVar_Missing var_C0
  loc_BC0CC8: LitI2_Byte 0
  loc_BC0CCA: FLdZeroAd var_8C
  loc_BC0CCD: CVarStr var_A0
  loc_BC0CD0: PopAdLdVar
  loc_BC0CD1: FLdPr Me
  loc_BC0CD4: MemLdStr global_96
  loc_BC0CD7: FLdPr Me
  loc_BC0CDA: MemLdStr global_92
  loc_BC0CDD: AryLock
  loc_BC0CE0: Ary1LdPr
  loc_BC0CE1: MemLdRfVar from_stack_1.global_32
  loc_BC0CE4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0CE9: AryUnlock
  loc_BC0CEC: FFreeVar var_A0 = ""
  loc_BC0CF3: FLdRfVar var_8C
  loc_BC0CF6: FLdPr var_88
  loc_BC0CF9: from_stack_1 = clsliqutasa.LocaLita
  loc_BC0CFE: LitI2_Byte 0
  loc_BC0D00: LitVar_Missing var_C0
  loc_BC0D03: LitI2_Byte 0
  loc_BC0D05: FLdZeroAd var_8C
  loc_BC0D08: CVarStr var_A0
  loc_BC0D0B: PopAdLdVar
  loc_BC0D0C: FLdPr Me
  loc_BC0D0F: MemLdStr global_96
  loc_BC0D12: FLdPr Me
  loc_BC0D15: MemLdStr global_92
  loc_BC0D18: AryLock
  loc_BC0D1B: Ary1LdPr
  loc_BC0D1C: MemLdRfVar from_stack_1.global_36
  loc_BC0D1F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0D24: AryUnlock
  loc_BC0D27: FFreeVar var_A0 = ""
  loc_BC0D2E: FLdRfVar var_8C
  loc_BC0D31: FLdPr var_88
  loc_BC0D34: from_stack_1 = clsliqutasa.CopoLita
  loc_BC0D39: LitI2_Byte 0
  loc_BC0D3B: LitVar_Missing var_C0
  loc_BC0D3E: LitI2_Byte 0
  loc_BC0D40: FLdZeroAd var_8C
  loc_BC0D43: CVarStr var_A0
  loc_BC0D46: PopAdLdVar
  loc_BC0D47: FLdPr Me
  loc_BC0D4A: MemLdStr global_96
  loc_BC0D4D: FLdPr Me
  loc_BC0D50: MemLdStr global_92
  loc_BC0D53: AryLock
  loc_BC0D56: Ary1LdPr
  loc_BC0D57: MemLdRfVar from_stack_1.global_40
  loc_BC0D5A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0D5F: AryUnlock
  loc_BC0D62: FFreeVar var_A0 = ""
  loc_BC0D69: FLdRfVar var_A0
  loc_BC0D6C: FLdPr var_88
  loc_BC0D6F: from_stack_1 = clsliqutasa.CallLitaReal
  loc_BC0D74: LitI2_Byte 0
  loc_BC0D76: LitVar_Missing var_C0
  loc_BC0D79: LitI2_Byte 0
  loc_BC0D7B: FLdVar var_A0
  loc_BC0D7F: FLdPr Me
  loc_BC0D82: MemLdStr global_96
  loc_BC0D85: FLdPr Me
  loc_BC0D88: MemLdStr global_92
  loc_BC0D8B: AryLock
  loc_BC0D8E: Ary1LdPr
  loc_BC0D8F: MemLdRfVar from_stack_1.global_44
  loc_BC0D92: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0D97: AryUnlock
  loc_BC0D9A: FFreeVar var_A0 = ""
  loc_BC0DA1: FLdRfVar var_8C
  loc_BC0DA4: FLdPr var_88
  loc_BC0DA7: from_stack_1 = clsliqutasa.NucaLitaReal
  loc_BC0DAC: LitI2_Byte 0
  loc_BC0DAE: LitVar_Missing var_C0
  loc_BC0DB1: LitI2_Byte 0
  loc_BC0DB3: FLdZeroAd var_8C
  loc_BC0DB6: CVarStr var_A0
  loc_BC0DB9: PopAdLdVar
  loc_BC0DBA: FLdPr Me
  loc_BC0DBD: MemLdStr global_96
  loc_BC0DC0: FLdPr Me
  loc_BC0DC3: MemLdStr global_92
  loc_BC0DC6: AryLock
  loc_BC0DC9: Ary1LdPr
  loc_BC0DCA: MemLdRfVar from_stack_1.global_48
  loc_BC0DCD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0DD2: AryUnlock
  loc_BC0DD5: FFreeVar var_A0 = ""
  loc_BC0DDC: FLdRfVar var_8C
  loc_BC0DDF: FLdPr var_88
  loc_BC0DE2: from_stack_1 = clsliqutasa.BarrLitaReal
  loc_BC0DE7: LitI2_Byte 0
  loc_BC0DE9: LitVar_Missing var_C0
  loc_BC0DEC: LitI2_Byte 0
  loc_BC0DEE: FLdZeroAd var_8C
  loc_BC0DF1: CVarStr var_A0
  loc_BC0DF4: PopAdLdVar
  loc_BC0DF5: FLdPr Me
  loc_BC0DF8: MemLdStr global_96
  loc_BC0DFB: FLdPr Me
  loc_BC0DFE: MemLdStr global_92
  loc_BC0E01: AryLock
  loc_BC0E04: Ary1LdPr
  loc_BC0E05: MemLdRfVar from_stack_1.bGenerado
  loc_BC0E08: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0E0D: AryUnlock
  loc_BC0E10: FFreeVar var_A0 = ""
  loc_BC0E17: FLdRfVar var_8C
  loc_BC0E1A: FLdPr var_88
  loc_BC0E1D: from_stack_1 = clsliqutasa.ManzLitaReal
  loc_BC0E22: LitI2_Byte 0
  loc_BC0E24: LitVar_Missing var_C0
  loc_BC0E27: LitI2_Byte 0
  loc_BC0E29: FLdZeroAd var_8C
  loc_BC0E2C: CVarStr var_A0
  loc_BC0E2F: PopAdLdVar
  loc_BC0E30: FLdPr Me
  loc_BC0E33: MemLdStr global_96
  loc_BC0E36: FLdPr Me
  loc_BC0E39: MemLdStr global_92
  loc_BC0E3C: AryLock
  loc_BC0E3F: Ary1LdPr
  loc_BC0E40: MemLdRfVar from_stack_1.global_56
  loc_BC0E43: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0E48: AryUnlock
  loc_BC0E4B: FFreeVar var_A0 = ""
  loc_BC0E52: FLdRfVar var_8C
  loc_BC0E55: FLdPr var_88
  loc_BC0E58: from_stack_1 = clsliqutasa.CasaLitaReal
  loc_BC0E5D: LitI2_Byte 0
  loc_BC0E5F: LitVar_Missing var_C0
  loc_BC0E62: LitI2_Byte 0
  loc_BC0E64: FLdZeroAd var_8C
  loc_BC0E67: CVarStr var_A0
  loc_BC0E6A: PopAdLdVar
  loc_BC0E6B: FLdPr Me
  loc_BC0E6E: MemLdStr global_96
  loc_BC0E71: FLdPr Me
  loc_BC0E74: MemLdStr global_92
  loc_BC0E77: AryLock
  loc_BC0E7A: Ary1LdPr
  loc_BC0E7B: MemLdRfVar from_stack_1.global_60
  loc_BC0E7E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0E83: AryUnlock
  loc_BC0E86: FFreeVar var_A0 = ""
  loc_BC0E8D: FLdRfVar var_8C
  loc_BC0E90: FLdPr var_88
  loc_BC0E93: from_stack_1 = clsliqutasa.UbicLitaReal
  loc_BC0E98: LitI2_Byte 0
  loc_BC0E9A: LitVar_Missing var_C0
  loc_BC0E9D: LitI2_Byte 0
  loc_BC0E9F: FLdZeroAd var_8C
  loc_BC0EA2: CVarStr var_A0
  loc_BC0EA5: PopAdLdVar
  loc_BC0EA6: FLdPr Me
  loc_BC0EA9: MemLdStr global_96
  loc_BC0EAC: FLdPr Me
  loc_BC0EAF: MemLdStr global_92
  loc_BC0EB2: AryLock
  loc_BC0EB5: Ary1LdPr
  loc_BC0EB6: MemLdRfVar from_stack_1.global_64
  loc_BC0EB9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0EBE: AryUnlock
  loc_BC0EC1: FFreeVar var_A0 = ""
  loc_BC0EC8: FLdRfVar var_8C
  loc_BC0ECB: FLdPr var_88
  loc_BC0ECE: from_stack_1 = clsliqutasa.LocaLitaReal
  loc_BC0ED3: LitI2_Byte 0
  loc_BC0ED5: LitVar_Missing var_C0
  loc_BC0ED8: LitI2_Byte 0
  loc_BC0EDA: FLdZeroAd var_8C
  loc_BC0EDD: CVarStr var_A0
  loc_BC0EE0: PopAdLdVar
  loc_BC0EE1: FLdPr Me
  loc_BC0EE4: MemLdStr global_96
  loc_BC0EE7: FLdPr Me
  loc_BC0EEA: MemLdStr global_92
  loc_BC0EED: AryLock
  loc_BC0EF0: Ary1LdPr
  loc_BC0EF1: MemLdRfVar from_stack_1.global_68
  loc_BC0EF4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0EF9: AryUnlock
  loc_BC0EFC: FFreeVar var_A0 = ""
  loc_BC0F03: FLdRfVar var_8C
  loc_BC0F06: FLdPr var_88
  loc_BC0F09: from_stack_1 = clsliqutasa.CopoLitaReal
  loc_BC0F0E: LitI2_Byte 0
  loc_BC0F10: LitVar_Missing var_C0
  loc_BC0F13: LitI2_Byte 0
  loc_BC0F15: FLdZeroAd var_8C
  loc_BC0F18: CVarStr var_A0
  loc_BC0F1B: PopAdLdVar
  loc_BC0F1C: FLdPr Me
  loc_BC0F1F: MemLdStr global_96
  loc_BC0F22: FLdPr Me
  loc_BC0F25: MemLdStr global_92
  loc_BC0F28: AryLock
  loc_BC0F2B: Ary1LdPr
  loc_BC0F2C: MemLdRfVar from_stack_1.global_72
  loc_BC0F2F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0F34: AryUnlock
  loc_BC0F37: FFreeVar var_A0 = ""
  loc_BC0F3E: FLdRfVar var_C4
  loc_BC0F41: FLdPr var_88
  loc_BC0F44: from_stack_1 = clsliqutasa.CodiInmu
  loc_BC0F49: LitI2_Byte 0
  loc_BC0F4B: LitVar_Missing var_A0
  loc_BC0F4E: LitI2_Byte 0
  loc_BC0F50: ILdRf var_C4
  loc_BC0F53: CVarI4
  loc_BC0F57: PopAdLdVar
  loc_BC0F58: FLdPr Me
  loc_BC0F5B: MemLdStr global_96
  loc_BC0F5E: FLdPr Me
  loc_BC0F61: MemLdStr global_92
  loc_BC0F64: AryLock
  loc_BC0F67: Ary1LdPr
  loc_BC0F68: MemLdRfVar from_stack_1.global_76
  loc_BC0F6B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0F70: AryUnlock
  loc_BC0F73: FFree1Var var_A0 = ""
  loc_BC0F76: FLdRfVar var_C4
  loc_BC0F79: FLdPr var_88
  loc_BC0F7C: from_stack_1 = clsliqutasa.OrdeLita
  loc_BC0F81: LitI2_Byte 0
  loc_BC0F83: LitVar_Missing var_A0
  loc_BC0F86: LitI2_Byte 0
  loc_BC0F88: ILdRf var_C4
  loc_BC0F8B: CVarI4
  loc_BC0F8F: PopAdLdVar
  loc_BC0F90: FLdPr Me
  loc_BC0F93: MemLdStr global_96
  loc_BC0F96: FLdPr Me
  loc_BC0F99: MemLdStr global_92
  loc_BC0F9C: AryLock
  loc_BC0F9F: Ary1LdPr
  loc_BC0FA0: MemLdRfVar from_stack_1.global_80
  loc_BC0FA3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0FA8: AryUnlock
  loc_BC0FAB: FFree1Var var_A0 = ""
  loc_BC0FAE: FLdRfVar var_A0
  loc_BC0FB1: FLdPr var_88
  loc_BC0FB4: from_stack_1 = clsliqutasa.CodiUsua
  loc_BC0FB9: LitI2_Byte 0
  loc_BC0FBB: LitVar_Missing var_C0
  loc_BC0FBE: LitI2_Byte 0
  loc_BC0FC0: FLdVar var_A0
  loc_BC0FC4: FLdPr Me
  loc_BC0FC7: MemLdStr global_96
  loc_BC0FCA: FLdPr Me
  loc_BC0FCD: MemLdStr global_92
  loc_BC0FD0: AryLock
  loc_BC0FD3: Ary1LdPr
  loc_BC0FD4: MemLdRfVar from_stack_1.global_84
  loc_BC0FD7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC0FDC: AryUnlock
  loc_BC0FDF: FFreeVar var_A0 = ""
  loc_BC0FE6: FLdRfVar var_8C
  loc_BC0FE9: FLdPr var_88
  loc_BC0FEC: from_stack_1 = clsliqutasa.CodiRyB
  loc_BC0FF1: LitI2_Byte 0
  loc_BC0FF3: LitVar_Missing var_C0
  loc_BC0FF6: LitI2_Byte 0
  loc_BC0FF8: FLdZeroAd var_8C
  loc_BC0FFB: CVarStr var_A0
  loc_BC0FFE: PopAdLdVar
  loc_BC0FFF: FLdPr Me
  loc_BC1002: MemLdStr global_96
  loc_BC1005: FLdPr Me
  loc_BC1008: MemLdStr global_92
  loc_BC100B: AryLock
  loc_BC100E: Ary1LdPr
  loc_BC100F: MemLdRfVar from_stack_1.global_88
  loc_BC1012: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC1017: AryUnlock
  loc_BC101A: FFreeVar var_A0 = ""
  loc_BC1021: FLdRfVar var_8C
  loc_BC1024: FLdPr var_88
  loc_BC1027: from_stack_1 = clsliqutasa.DetaRyB
  loc_BC102C: LitI2_Byte 0
  loc_BC102E: LitVar_Missing var_C0
  loc_BC1031: LitI2_Byte 0
  loc_BC1033: FLdZeroAd var_8C
  loc_BC1036: CVarStr var_A0
  loc_BC1039: PopAdLdVar
  loc_BC103A: FLdPr Me
  loc_BC103D: MemLdStr global_96
  loc_BC1040: FLdPr Me
  loc_BC1043: MemLdStr global_92
  loc_BC1046: AryLock
  loc_BC1049: Ary1LdPr
  loc_BC104A: MemLdRfVar from_stack_1.global_92
  loc_BC104D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC1052: AryUnlock
  loc_BC1055: FFreeVar var_A0 = ""
  loc_BC105C: FLdRfVar var_8C
  loc_BC105F: FLdPr var_88
  loc_BC1062: from_stack_1 = clsliqutasa.AvalInmu
  loc_BC1067: LitI2_Byte 0
  loc_BC1069: LitVar_Missing var_C0
  loc_BC106C: LitI2_Byte 0
  loc_BC106E: FLdZeroAd var_8C
  loc_BC1071: CVarStr var_A0
  loc_BC1074: PopAdLdVar
  loc_BC1075: FLdPr Me
  loc_BC1078: MemLdStr global_96
  loc_BC107B: FLdPr Me
  loc_BC107E: MemLdStr global_92
  loc_BC1081: AryLock
  loc_BC1084: Ary1LdPr
  loc_BC1085: MemLdRfVar from_stack_1.global_96
  loc_BC1088: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC108D: AryUnlock
  loc_BC1090: FFreeVar var_A0 = ""
  loc_BC1097: FLdRfVar var_A0
  loc_BC109A: FLdPr var_88
  loc_BC109D: from_stack_1 = clsliqutasa.NomeLita
  loc_BC10A2: LitI2_Byte 0
  loc_BC10A4: LitVar_Missing var_C0
  loc_BC10A7: LitI2_Byte 0
  loc_BC10A9: FLdVar var_A0
  loc_BC10AD: FLdPr Me
  loc_BC10B0: MemLdStr global_96
  loc_BC10B3: FLdPr Me
  loc_BC10B6: MemLdStr global_92
  loc_BC10B9: AryLock
  loc_BC10BC: Ary1LdPr
  loc_BC10BD: MemLdRfVar from_stack_1.global_100
  loc_BC10C0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC10C5: AryUnlock
  loc_BC10C8: FFreeVar var_A0 = ""
  loc_BC10CF: FLdRfVar var_DC
  loc_BC10D2: FLdPr var_88
  loc_BC10D5: from_stack_1 = clsliqutasa.DeudLita
  loc_BC10DA: LitI2_Byte 0
  loc_BC10DC: LitVar_Missing var_A0
  loc_BC10DF: LitI2_Byte &HFF
  loc_BC10E1: FLdFPR8 var_DC
  loc_BC10E4: CVarR8
  loc_BC10E8: PopAdLdVar
  loc_BC10E9: FLdPr Me
  loc_BC10EC: MemLdStr global_96
  loc_BC10EF: FLdPr Me
  loc_BC10F2: MemLdStr global_92
  loc_BC10F5: AryLock
  loc_BC10F8: Ary1LdPr
  loc_BC10F9: MemLdRfVar from_stack_1.global_104
  loc_BC10FC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BC1101: AryUnlock
  loc_BC1104: FFree1Var var_A0 = ""
  loc_BC1107: FLdRfVar var_C4
  loc_BC110A: FLdPr var_88
  loc_BC110D: from_stack_1 = clsliqutasa.CodiInmu
  loc_BC1112: FLdRfVar var_E0
  loc_BC1115: FLdPr var_88
  loc_BC1118: from_stack_1 = clsliqutasa.OrdeLita
  loc_BC111D: ILdRf var_E0
  loc_BC1120: CStrI4
  loc_BC1122: FStStrNoPop var_E4
  loc_BC1125: ILdRf var_C4
  loc_BC1128: CStrI4
  loc_BC112A: FStStrNoPop var_8C
  loc_BC112D: LitI2_Byte 1
  loc_BC112F: CUI1I2
  loc_BC1131: ImpAdCallI2  = Proc_57_40_AD4A10(, )
  loc_BC1136: PopTmpLdAdStr var_EC
  loc_BC1139: FLdPr Me
  loc_BC113C: MemLdStr global_96
  loc_BC113F: FLdPr Me
  loc_BC1142: MemLdStr global_92
  loc_BC1145: Ary1LdPr
  loc_BC1146: MemLdRfVar from_stack_1.global_108
  loc_BC1149: StAryMove
  loc_BC114B: FFreeStr var_8C = ""
  loc_BC1152: LitNothing
  loc_BC1154: FStAd var_88 
  loc_BC1158: Call Proc_324_21_C3BB18()
  loc_BC115D: ExitProcHresult
  loc_BC115E: UMiI4
End Function

Private Function Proc_324_21_C3BB18() 'C3BB18
  'Data Table: 4C4E5C
  loc_C3AFC0: FLdPr Me
  loc_C3AFC3: MemLdRfVar from_stack_1.global_84
  loc_C3AFC6: NewIfNullAd
  loc_C3AFC9: FStAd var_90 
  loc_C3AFCD: FLdRfVar var_92
  loc_C3AFD0: FLdPr var_90
  loc_C3AFD3: from_stack_1 = clsliqutasa.TipoVenc
  loc_C3AFD8: FLdI2 var_92
  loc_C3AFDB: LitI2_Byte 2
  loc_C3AFDD: EqI2
  loc_C3AFDE: BranchF loc_C3B019
  loc_C3AFE1: FLdPr Me
  loc_C3AFE4: MemLdUI1 global_100
  loc_C3AFE8: CI2UI1
  loc_C3AFEA: FStI2 var_86
  loc_C3AFED: LitI2_Byte 0
  loc_C3AFEF: CUI1I2
  loc_C3AFF1: FLdPr Me
  loc_C3AFF4: MemStUI1
  loc_C3AFF8: LitI2_Byte 0
  loc_C3AFFA: FLdPr Me
  loc_C3AFFD: MemLdUI1 global_100
  loc_C3B001: CI4UI1
  loc_C3B002: FLdPr Me
  loc_C3B005: MemLdStr global_96
  loc_C3B008: FLdPr Me
  loc_C3B00B: MemLdStr global_92
  loc_C3B00E: Ary1LdPr
  loc_C3B00F: MemLdStr global_112
  loc_C3B012: Ary1LdPr
  loc_C3B013: MemStI2 global_0
  loc_C3B016: Branch loc_C3B073
  loc_C3B019: FLdPr Me
  loc_C3B01C: MemLdUI1 global_100
  loc_C3B020: CI2UI1
  loc_C3B022: LitI2_Byte 1
  loc_C3B024: AddI2
  loc_C3B025: CUI1I2
  loc_C3B027: FLdPr Me
  loc_C3B02A: MemStUI1
  loc_C3B02E: LitI4 0
  loc_C3B033: FLdPr Me
  loc_C3B036: MemLdUI1 global_100
  loc_C3B03A: CI4UI1
  loc_C3B03B: FLdPr Me
  loc_C3B03E: MemLdStr global_96
  loc_C3B041: FLdPr Me
  loc_C3B044: MemLdStr global_92
  loc_C3B047: Ary1LdPr
  loc_C3B048: MemLdRfVar from_stack_1.global_112
  loc_C3B04B: RedimPreserve
  loc_C3B055: LitI2_Byte &HFF
  loc_C3B057: FLdPr Me
  loc_C3B05A: MemLdUI1 global_100
  loc_C3B05E: CI4UI1
  loc_C3B05F: FLdPr Me
  loc_C3B062: MemLdStr global_96
  loc_C3B065: FLdPr Me
  loc_C3B068: MemLdStr global_92
  loc_C3B06B: Ary1LdPr
  loc_C3B06C: MemLdStr global_112
  loc_C3B06F: Ary1LdPr
  loc_C3B070: MemStI2 global_0
  loc_C3B073: FLdRfVar var_92
  loc_C3B076: FLdPr var_90
  loc_C3B079: from_stack_1 = clsliqutasa.BimeLiqu
  loc_C3B07E: LitI2_Byte 0
  loc_C3B080: LitVar_Missing var_CC
  loc_C3B083: LitI2_Byte 0
  loc_C3B085: FLdUI1
  loc_C3B089: CVarUI1
  loc_C3B08D: PopAdLdVar
  loc_C3B08E: FLdPr Me
  loc_C3B091: MemLdUI1 global_100
  loc_C3B095: CI4UI1
  loc_C3B096: FLdPr Me
  loc_C3B099: MemLdStr global_96
  loc_C3B09C: FLdPr Me
  loc_C3B09F: MemLdStr global_92
  loc_C3B0A2: AryLock
  loc_C3B0A5: Ary1LdPr
  loc_C3B0A6: MemLdStr global_112
  loc_C3B0A9: AryLock
  loc_C3B0AC: Ary1LdPr
  loc_C3B0AD: MemLdRfVar from_stack_1.global_4
  loc_C3B0B0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B0B5: AryUnlock
  loc_C3B0B8: AryUnlock
  loc_C3B0BB: FFree1Var var_CC = ""
  loc_C3B0BE: FLdRfVar var_92
  loc_C3B0C1: FLdPr var_90
  loc_C3B0C4: from_stack_1 = clsliqutasa.PeriBole
  loc_C3B0C9: LitI2_Byte 0
  loc_C3B0CB: LitVar_Missing var_CC
  loc_C3B0CE: LitI2_Byte 0
  loc_C3B0D0: FLdI2 var_92
  loc_C3B0D3: CVarI2 var_AC
  loc_C3B0D6: PopAdLdVar
  loc_C3B0D7: FLdPr Me
  loc_C3B0DA: MemLdUI1 global_100
  loc_C3B0DE: CI4UI1
  loc_C3B0DF: FLdPr Me
  loc_C3B0E2: MemLdStr global_96
  loc_C3B0E5: FLdPr Me
  loc_C3B0E8: MemLdStr global_92
  loc_C3B0EB: AryLock
  loc_C3B0EE: Ary1LdPr
  loc_C3B0EF: MemLdStr global_112
  loc_C3B0F2: AryLock
  loc_C3B0F5: Ary1LdPr
  loc_C3B0F6: MemLdRfVar from_stack_1.global_8
  loc_C3B0F9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B0FE: AryUnlock
  loc_C3B101: AryUnlock
  loc_C3B104: FFree1Var var_CC = ""
  loc_C3B107: FLdRfVar var_D0
  loc_C3B10A: FLdPr var_90
  loc_C3B10D: from_stack_1 = clsliqutasa.NumeBole
  loc_C3B112: LitI2_Byte 0
  loc_C3B114: LitVar_Missing var_CC
  loc_C3B117: LitI2_Byte 0
  loc_C3B119: ILdRf var_D0
  loc_C3B11C: CVarI4
  loc_C3B120: PopAdLdVar
  loc_C3B121: FLdPr Me
  loc_C3B124: MemLdUI1 global_100
  loc_C3B128: CI4UI1
  loc_C3B129: FLdPr Me
  loc_C3B12C: MemLdStr global_96
  loc_C3B12F: FLdPr Me
  loc_C3B132: MemLdStr global_92
  loc_C3B135: AryLock
  loc_C3B138: Ary1LdPr
  loc_C3B139: MemLdStr global_112
  loc_C3B13C: AryLock
  loc_C3B13F: Ary1LdPr
  loc_C3B140: MemLdRfVar from_stack_1.global_12
  loc_C3B143: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B148: AryUnlock
  loc_C3B14B: AryUnlock
  loc_C3B14E: FFree1Var var_CC = ""
  loc_C3B151: FLdRfVar var_92
  loc_C3B154: FLdPr var_90
  loc_C3B157: from_stack_1 = clsliqutasa.TipoVenc
  loc_C3B15C: LitI2_Byte 0
  loc_C3B15E: LitVar_Missing var_CC
  loc_C3B161: LitI2_Byte 0
  loc_C3B163: FLdI2 var_92
  loc_C3B166: CVarI2 var_AC
  loc_C3B169: PopAdLdVar
  loc_C3B16A: FLdPr Me
  loc_C3B16D: MemLdUI1 global_100
  loc_C3B171: CI4UI1
  loc_C3B172: FLdPr Me
  loc_C3B175: MemLdStr global_96
  loc_C3B178: FLdPr Me
  loc_C3B17B: MemLdStr global_92
  loc_C3B17E: AryLock
  loc_C3B181: Ary1LdPr
  loc_C3B182: MemLdStr global_112
  loc_C3B185: AryLock
  loc_C3B188: Ary1LdPr
  loc_C3B189: MemLdRfVar from_stack_1.global_24
  loc_C3B18C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B191: AryUnlock
  loc_C3B194: AryUnlock
  loc_C3B197: FFree1Var var_CC = ""
  loc_C3B19A: FLdRfVar var_D4
  loc_C3B19D: FLdPr var_90
  loc_C3B1A0: from_stack_1 = clsliqutasa.FeveLita
  loc_C3B1A5: LitI2_Byte 0
  loc_C3B1A7: LitVar_Missing var_E4
  loc_C3B1AA: LitI2_Byte 0
  loc_C3B1AC: FLdZeroAd var_D4
  loc_C3B1AF: CVarStr var_CC
  loc_C3B1B2: PopAdLdVar
  loc_C3B1B3: FLdPr Me
  loc_C3B1B6: MemLdUI1 global_100
  loc_C3B1BA: CI4UI1
  loc_C3B1BB: FLdPr Me
  loc_C3B1BE: MemLdStr global_96
  loc_C3B1C1: FLdPr Me
  loc_C3B1C4: MemLdStr global_92
  loc_C3B1C7: AryLock
  loc_C3B1CA: Ary1LdPr
  loc_C3B1CB: MemLdStr global_112
  loc_C3B1CE: AryLock
  loc_C3B1D1: Ary1LdPr
  loc_C3B1D2: MemLdRfVar from_stack_1.global_16
  loc_C3B1D5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B1DA: AryUnlock
  loc_C3B1DD: AryUnlock
  loc_C3B1E0: FFreeVar var_CC = ""
  loc_C3B1E7: FLdRfVar var_92
  loc_C3B1EA: FLdPr var_90
  loc_C3B1ED: from_stack_1 = clsliqutasa.TipoVenc
  loc_C3B1F2: FLdI2 var_92
  loc_C3B1F5: LitI2_Byte 2
  loc_C3B1F7: EqI2
  loc_C3B1F8: BranchF loc_C3B298
  loc_C3B1FB: FLdRfVar var_92
  loc_C3B1FE: FLdPr var_90
  loc_C3B201: from_stack_1 = clsliqutasa.PeriBole
  loc_C3B206: FLdRfVar var_D0
  loc_C3B209: FLdPr var_90
  loc_C3B20C: from_stack_1 = clsliqutasa.NumeBole
  loc_C3B211: FLdRfVar var_E6
  loc_C3B214: FLdPr var_90
  loc_C3B217: from_stack_1 = clsliqutasa.BimeLiqu
  loc_C3B21C: FLdRfVar var_EC
  loc_C3B21F: FLdPr var_90
  loc_C3B222: from_stack_1 = clsliqutasa.CodiInmu
  loc_C3B227: FLdRfVar var_F4
  loc_C3B22A: FLdPr var_90
  loc_C3B22D: from_stack_1 = clsliqutasa.TotaBole
  loc_C3B232: LitStr "29/02/2020"
  loc_C3B235: FLdFPR8 var_F4
  loc_C3B238: CStrR8
  loc_C3B23A: FStStrNoPop var_104
  loc_C3B23D: LitI2_Byte 1
  loc_C3B23F: CUI1I2
  loc_C3B241: ILdRf var_EC
  loc_C3B244: CStrI4
  loc_C3B246: FStStrNoPop var_100
  loc_C3B249: FLdUI1
  loc_C3B24D: CStrI2
  loc_C3B24F: FStStrNoPop var_FC
  loc_C3B252: ILdRf var_D0
  loc_C3B255: CStrI4
  loc_C3B257: FStStrNoPop var_F8
  loc_C3B25A: FLdI2 var_92
  loc_C3B25D: CStrUI1
  loc_C3B25F: FStStrNoPop var_D4
  loc_C3B262: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_C3B267: PopTmpLdAdStr var_10C
  loc_C3B26A: FLdPr Me
  loc_C3B26D: MemLdUI1 global_100
  loc_C3B271: CI4UI1
  loc_C3B272: FLdPr Me
  loc_C3B275: MemLdStr global_96
  loc_C3B278: FLdPr Me
  loc_C3B27B: MemLdStr global_92
  loc_C3B27E: Ary1LdPr
  loc_C3B27F: MemLdStr global_112
  loc_C3B282: Ary1LdPr
  loc_C3B283: MemLdRfVar from_stack_1.global_20
  loc_C3B286: StAryMove
  loc_C3B288: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C3B295: Branch loc_C3B332
  loc_C3B298: FLdRfVar var_92
  loc_C3B29B: FLdPr var_90
  loc_C3B29E: from_stack_1 = clsliqutasa.PeriBole
  loc_C3B2A3: FLdRfVar var_D0
  loc_C3B2A6: FLdPr var_90
  loc_C3B2A9: from_stack_1 = clsliqutasa.NumeBole
  loc_C3B2AE: FLdRfVar var_E6
  loc_C3B2B1: FLdPr var_90
  loc_C3B2B4: from_stack_1 = clsliqutasa.BimeLiqu
  loc_C3B2B9: FLdRfVar var_EC
  loc_C3B2BC: FLdPr var_90
  loc_C3B2BF: from_stack_1 = clsliqutasa.CodiInmu
  loc_C3B2C4: FLdRfVar var_F4
  loc_C3B2C7: FLdPr var_90
  loc_C3B2CA: from_stack_1 = clsliqutasa.TotaBole
  loc_C3B2CF: LitStr "31/12/2022"
  loc_C3B2D2: FLdFPR8 var_F4
  loc_C3B2D5: CStrR8
  loc_C3B2D7: FStStrNoPop var_104
  loc_C3B2DA: LitI2_Byte 1
  loc_C3B2DC: CUI1I2
  loc_C3B2DE: ILdRf var_EC
  loc_C3B2E1: CStrI4
  loc_C3B2E3: FStStrNoPop var_100
  loc_C3B2E6: FLdUI1
  loc_C3B2EA: CStrI2
  loc_C3B2EC: FStStrNoPop var_FC
  loc_C3B2EF: ILdRf var_D0
  loc_C3B2F2: CStrI4
  loc_C3B2F4: FStStrNoPop var_F8
  loc_C3B2F7: FLdI2 var_92
  loc_C3B2FA: CStrUI1
  loc_C3B2FC: FStStrNoPop var_D4
  loc_C3B2FF: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_C3B304: PopTmpLdAdStr var_10C
  loc_C3B307: FLdPr Me
  loc_C3B30A: MemLdUI1 global_100
  loc_C3B30E: CI4UI1
  loc_C3B30F: FLdPr Me
  loc_C3B312: MemLdStr global_96
  loc_C3B315: FLdPr Me
  loc_C3B318: MemLdStr global_92
  loc_C3B31B: Ary1LdPr
  loc_C3B31C: MemLdStr global_112
  loc_C3B31F: Ary1LdPr
  loc_C3B320: MemLdRfVar from_stack_1.global_20
  loc_C3B323: StAryMove
  loc_C3B325: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C3B332: FLdRfVar var_CC
  loc_C3B335: FLdPr var_90
  loc_C3B338: from_stack_1 = clsliqutasa.RecaBole
  loc_C3B33D: LitI2_Byte 0
  loc_C3B33F: LitVar_Missing var_E4
  loc_C3B342: LitI2_Byte &HFF
  loc_C3B344: FLdVar var_CC
  loc_C3B348: FLdPr Me
  loc_C3B34B: MemLdUI1 global_100
  loc_C3B34F: CI4UI1
  loc_C3B350: FLdPr Me
  loc_C3B353: MemLdStr global_96
  loc_C3B356: FLdPr Me
  loc_C3B359: MemLdStr global_92
  loc_C3B35C: AryLock
  loc_C3B35F: Ary1LdPr
  loc_C3B360: MemLdStr global_112
  loc_C3B363: AryLock
  loc_C3B366: Ary1LdPr
  loc_C3B367: MemLdRfVar from_stack_1.bGenerado
  loc_C3B36A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B36F: AryUnlock
  loc_C3B372: AryUnlock
  loc_C3B375: FFreeVar var_CC = ""
  loc_C3B37C: FLdRfVar var_CC
  loc_C3B37F: FLdPr var_90
  loc_C3B382: from_stack_1 = clsliqutasa.BombLita
  loc_C3B387: LitI2_Byte 0
  loc_C3B389: LitVar_Missing var_E4
  loc_C3B38C: LitI2_Byte &HFF
  loc_C3B38E: FLdVar var_CC
  loc_C3B392: FLdPr Me
  loc_C3B395: MemLdUI1 global_100
  loc_C3B399: CI4UI1
  loc_C3B39A: FLdPr Me
  loc_C3B39D: MemLdStr global_96
  loc_C3B3A0: FLdPr Me
  loc_C3B3A3: MemLdStr global_92
  loc_C3B3A6: AryLock
  loc_C3B3A9: Ary1LdPr
  loc_C3B3AA: MemLdStr global_112
  loc_C3B3AD: AryLock
  loc_C3B3B0: Ary1LdPr
  loc_C3B3B1: MemLdRfVar from_stack_1.global_44
  loc_C3B3B4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B3B9: AryUnlock
  loc_C3B3BC: AryUnlock
  loc_C3B3BF: FFreeVar var_CC = ""
  loc_C3B3C6: FLdRfVar var_F4
  loc_C3B3C9: FLdPr var_90
  loc_C3B3CC: from_stack_1 = clsliqutasa.TotaBole
  loc_C3B3D1: LitI2_Byte 0
  loc_C3B3D3: LitVar_Missing var_CC
  loc_C3B3D6: LitI2_Byte &HFF
  loc_C3B3D8: FLdFPR8 var_F4
  loc_C3B3DB: CVarR8
  loc_C3B3DF: PopAdLdVar
  loc_C3B3E0: FLdPr Me
  loc_C3B3E3: MemLdUI1 global_100
  loc_C3B3E7: CI4UI1
  loc_C3B3E8: FLdPr Me
  loc_C3B3EB: MemLdStr global_96
  loc_C3B3EE: FLdPr Me
  loc_C3B3F1: MemLdStr global_92
  loc_C3B3F4: AryLock
  loc_C3B3F7: Ary1LdPr
  loc_C3B3F8: MemLdStr global_112
  loc_C3B3FB: AryLock
  loc_C3B3FE: Ary1LdPr
  loc_C3B3FF: MemLdRfVar from_stack_1.global_60
  loc_C3B402: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B407: AryUnlock
  loc_C3B40A: AryUnlock
  loc_C3B40D: FFree1Var var_CC = ""
  loc_C3B410: FLdRfVar var_8C
  loc_C3B413: NewIfNullAd
  loc_C3B416: FStAd var_114 
  loc_C3B41A: FLdPr Me
  loc_C3B41D: MemLdUI1 global_100
  loc_C3B421: CI4UI1
  loc_C3B422: FLdPr Me
  loc_C3B425: MemLdStr global_96
  loc_C3B428: FLdPr Me
  loc_C3B42B: MemLdStr global_92
  loc_C3B42E: Ary1LdPr
  loc_C3B42F: MemLdStr global_112
  loc_C3B432: Ary1LdPr
  loc_C3B433: MemLdI2 global_0
  loc_C3B436: BranchF loc_C3B587
  loc_C3B439: LitStr "SELECT"
  loc_C3B43C: LitStr " CAST(sum(if(CodiSeca in(1,15,21,22,23),ImpoLtde,0)) AS DECIMAL(11,2)) as TasaGral,"
  loc_C3B43F: ConcatStr
  loc_C3B440: FStStrNoPop var_D4
  loc_C3B443: LitStr " sum(if(CodiSeca = 2,ImpoLtde,0)) as InfUrbana,"
  loc_C3B446: ConcatStr
  loc_C3B447: FStStrNoPop var_F8
  loc_C3B44A: LitStr " sum(if(CodiSeca = 3,ImpoLtde,0)) as AlPublico,"
  loc_C3B44D: ConcatStr
  loc_C3B44E: FStStrNoPop var_FC
  loc_C3B451: LitStr " sum(if(CodiSeca = 4,ImpoLtde,0)) as ServAgua,"
  loc_C3B454: ConcatStr
  loc_C3B455: FStStrNoPop var_100
  loc_C3B458: LitStr " sum(if(CodiSeca = 999,ImpoLtde,0)) as CEmision"
  loc_C3B45B: ConcatStr
  loc_C3B45C: FStStrNoPop var_104
  loc_C3B45F: LitStr " FROM litadeta"
  loc_C3B462: ConcatStr
  loc_C3B463: FStStrNoPop var_118
  loc_C3B466: LitStr " WHERE CodiConc = '13020101' AND PeriLiqu = "
  loc_C3B469: ConcatStr
  loc_C3B46A: FStStrNoPop var_11C
  loc_C3B46D: FLdRfVar var_92
  loc_C3B470: FLdPr Me
  loc_C3B473: MemLdRfVar from_stack_1.global_80
  loc_C3B476: NewIfNullPr clsliquidacion
  loc_C3B479: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C3B47E: FLdI2 var_92
  loc_C3B481: CStrUI1
  loc_C3B483: FStStrNoPop var_120
  loc_C3B486: ConcatStr
  loc_C3B487: FStStrNoPop var_124
  loc_C3B48A: LitStr " AND CodiTili = "
  loc_C3B48D: ConcatStr
  loc_C3B48E: FStStrNoPop var_128
  loc_C3B491: FLdRfVar var_E6
  loc_C3B494: FLdPr Me
  loc_C3B497: MemLdRfVar from_stack_1.global_80
  loc_C3B49A: NewIfNullPr clsliquidacion
  loc_C3B49D: from_stack_1 = clsliquidacion.CodiTili
  loc_C3B4A2: FLdUI1
  loc_C3B4A6: CStrI2
  loc_C3B4A8: FStStrNoPop var_12C
  loc_C3B4AB: ConcatStr
  loc_C3B4AC: FStStrNoPop var_130
  loc_C3B4AF: LitStr " AND NumeLiqu = "
  loc_C3B4B2: ConcatStr
  loc_C3B4B3: FStStrNoPop var_138
  loc_C3B4B6: FLdRfVar var_132
  loc_C3B4B9: FLdPr Me
  loc_C3B4BC: MemLdRfVar from_stack_1.global_80
  loc_C3B4BF: NewIfNullPr clsliquidacion
  loc_C3B4C2: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C3B4C7: FLdI2 var_132
  loc_C3B4CA: CStrUI1
  loc_C3B4CC: FStStrNoPop var_13C
  loc_C3B4CF: ConcatStr
  loc_C3B4D0: FStStrNoPop var_140
  loc_C3B4D3: LitStr " AND BimeLiqu = "
  loc_C3B4D6: ConcatStr
  loc_C3B4D7: FStStrNoPop var_148
  loc_C3B4DA: FLdRfVar var_142
  loc_C3B4DD: FLdPr Me
  loc_C3B4E0: MemLdRfVar from_stack_1.global_84
  loc_C3B4E3: NewIfNullPr clsliqutasa
  loc_C3B4E6: from_stack_1 = clsliqutasa.BimeLiqu
  loc_C3B4EB: FLdUI1
  loc_C3B4EF: CStrI2
  loc_C3B4F1: FStStrNoPop var_14C
  loc_C3B4F4: ConcatStr
  loc_C3B4F5: FStStrNoPop var_150
  loc_C3B4F8: LitStr " AND TipoVenc = "
  loc_C3B4FB: ConcatStr
  loc_C3B4FC: FStStrNoPop var_158
  loc_C3B4FF: FLdRfVar var_152
  loc_C3B502: FLdPr Me
  loc_C3B505: MemLdRfVar from_stack_1.global_84
  loc_C3B508: NewIfNullPr clsliqutasa
  loc_C3B50B: from_stack_1 = clsliqutasa.TipoVenc
  loc_C3B510: FLdI2 var_152
  loc_C3B513: CStrUI1
  loc_C3B515: FStStrNoPop var_15C
  loc_C3B518: ConcatStr
  loc_C3B519: FStStrNoPop var_160
  loc_C3B51C: LitStr " AND CodiInmu = '"
  loc_C3B51F: ConcatStr
  loc_C3B520: FStStrNoPop var_164
  loc_C3B523: FLdRfVar var_D0
  loc_C3B526: FLdPr Me
  loc_C3B529: MemLdRfVar from_stack_1.global_84
  loc_C3B52C: NewIfNullPr clsliqutasa
  loc_C3B52F: from_stack_1 = clsliqutasa.CodiInmu
  loc_C3B534: ILdRf var_D0
  loc_C3B537: CStrI4
  loc_C3B539: FStStrNoPop var_168
  loc_C3B53C: ConcatStr
  loc_C3B53D: FStStrNoPop var_16C
  loc_C3B540: LitStr "'"
  loc_C3B543: ConcatStr
  loc_C3B544: FStStrNoPop var_170
  loc_C3B547: FLdPr var_114
  loc_C3B54A: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_C3B54F: FFreeStr var_D4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = "": var_140 = "": var_148 = "": var_14C = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_C3B584: Branch loc_C3B75C
  loc_C3B587: LitStr "SELECT cast(sum(TasaGral) as double(10,2)) as TasaGral, cast(sum(InfUrbana) as double(10,2)) as InfUrbana, cast(sum(AlPublico) as double(10,2)) as AlPublico, cast(sum(ServAgua) as double(10,2)) as ServAgua, cast(sum(DescLita) as double(10,2)) as DescLita, cast(sum(CEmision) as double(10,2)) as CEmision FROM"
  loc_C3B58A: LitStr "((SELECT"
  loc_C3B58D: ConcatStr
  loc_C3B58E: FStStrNoPop var_D4
  loc_C3B591: LitStr " sum(if(CodiSeca in(1,15,21,22,23),ImpoLtde,0)) TasaGral,"
  loc_C3B594: ConcatStr
  loc_C3B595: FStStrNoPop var_F8
  loc_C3B598: LitStr " sum(if(CodiSeca = 2,ImpoLtde,0)) as InfUrbana,"
  loc_C3B59B: ConcatStr
  loc_C3B59C: FStStrNoPop var_FC
  loc_C3B59F: LitStr " sum(if(CodiSeca = 3,ImpoLtde,0)) as AlPublico,"
  loc_C3B5A2: ConcatStr
  loc_C3B5A3: FStStrNoPop var_100
  loc_C3B5A6: LitStr " sum(if(CodiSeca = 4,ImpoLtde,0)) as ServAgua,"
  loc_C3B5A9: ConcatStr
  loc_C3B5AA: FStStrNoPop var_104
  loc_C3B5AD: LitStr " sum(if(CodiSeca in(1),DecaLtde+ExenLtde,0)) DescLita,"
  loc_C3B5B0: ConcatStr
  loc_C3B5B1: FStStrNoPop var_118
  loc_C3B5B4: LitStr " sum(if(CodiSeca = 999,ImpoLtde-DecaLtde,0)) as CEmision"
  loc_C3B5B7: ConcatStr
  loc_C3B5B8: FStStrNoPop var_11C
  loc_C3B5BB: LitStr " FROM litadeta"
  loc_C3B5BE: ConcatStr
  loc_C3B5BF: FStStrNoPop var_120
  loc_C3B5C2: LitStr " WHERE CodiConc = '13020101' AND PeriLiqu = "
  loc_C3B5C5: ConcatStr
  loc_C3B5C6: FStStrNoPop var_124
  loc_C3B5C9: FLdRfVar var_92
  loc_C3B5CC: FLdPr Me
  loc_C3B5CF: MemLdRfVar from_stack_1.global_80
  loc_C3B5D2: NewIfNullPr clsliquidacion
  loc_C3B5D5: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C3B5DA: FLdI2 var_92
  loc_C3B5DD: CStrUI1
  loc_C3B5DF: FStStrNoPop var_128
  loc_C3B5E2: ConcatStr
  loc_C3B5E3: FStStrNoPop var_12C
  loc_C3B5E6: LitStr " AND CodiTili = "
  loc_C3B5E9: ConcatStr
  loc_C3B5EA: FStStrNoPop var_130
  loc_C3B5ED: FLdRfVar var_E6
  loc_C3B5F0: FLdPr Me
  loc_C3B5F3: MemLdRfVar from_stack_1.global_80
  loc_C3B5F6: NewIfNullPr clsliquidacion
  loc_C3B5F9: from_stack_1 = clsliquidacion.CodiTili
  loc_C3B5FE: FLdUI1
  loc_C3B602: CStrI2
  loc_C3B604: FStStrNoPop var_138
  loc_C3B607: ConcatStr
  loc_C3B608: FStStrNoPop var_13C
  loc_C3B60B: LitStr " AND NumeLiqu = "
  loc_C3B60E: ConcatStr
  loc_C3B60F: FStStrNoPop var_140
  loc_C3B612: FLdRfVar var_132
  loc_C3B615: FLdPr Me
  loc_C3B618: MemLdRfVar from_stack_1.global_80
  loc_C3B61B: NewIfNullPr clsliquidacion
  loc_C3B61E: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C3B623: FLdI2 var_132
  loc_C3B626: CStrUI1
  loc_C3B628: FStStrNoPop var_148
  loc_C3B62B: ConcatStr
  loc_C3B62C: FStStrNoPop var_14C
  loc_C3B62F: LitStr " AND TipoVenc = 2 AND CodiInmu = '"
  loc_C3B632: ConcatStr
  loc_C3B633: FStStrNoPop var_150
  loc_C3B636: FLdRfVar var_D0
  loc_C3B639: FLdPr Me
  loc_C3B63C: MemLdRfVar from_stack_1.global_84
  loc_C3B63F: NewIfNullPr clsliqutasa
  loc_C3B642: from_stack_1 = clsliqutasa.CodiInmu
  loc_C3B647: ILdRf var_D0
  loc_C3B64A: CStrI4
  loc_C3B64C: FStStrNoPop var_158
  loc_C3B64F: ConcatStr
  loc_C3B650: FStStrNoPop var_15C
  loc_C3B653: LitStr "')"
  loc_C3B656: ConcatStr
  loc_C3B657: FStStrNoPop var_160
  loc_C3B65A: LitStr " UNION (SELECT 0 AS TasaGral, 0 as InfUrbana, 0 as AlPublico, 0 as ServAgua, sum(if(CodiSeca in(1),DecaLtde+ExenLtde,0)) as DescLita, 0 as CEmision"
  loc_C3B65D: ConcatStr
  loc_C3B65E: FStStrNoPop var_164
  loc_C3B661: LitStr " FROM litadeta"
  loc_C3B664: ConcatStr
  loc_C3B665: FStStrNoPop var_168
  loc_C3B668: LitStr " WHERE CodiConc = '13020101' AND PeriLiqu = "
  loc_C3B66B: ConcatStr
  loc_C3B66C: FStStrNoPop var_16C
  loc_C3B66F: FLdRfVar var_142
  loc_C3B672: FLdPr Me
  loc_C3B675: MemLdRfVar from_stack_1.global_80
  loc_C3B678: NewIfNullPr clsliquidacion
  loc_C3B67B: from_stack_1 = clsliquidacion.PeriLiqu
  loc_C3B680: FLdI2 var_142
  loc_C3B683: CStrUI1
  loc_C3B685: FStStrNoPop var_170
  loc_C3B688: ConcatStr
  loc_C3B689: FStStrNoPop var_174
  loc_C3B68C: LitStr " AND CodiTili = "
  loc_C3B68F: ConcatStr
  loc_C3B690: FStStrNoPop var_178
  loc_C3B693: FLdRfVar var_152
  loc_C3B696: FLdPr Me
  loc_C3B699: MemLdRfVar from_stack_1.global_80
  loc_C3B69C: NewIfNullPr clsliquidacion
  loc_C3B69F: from_stack_1 = clsliquidacion.CodiTili
  loc_C3B6A4: FLdUI1
  loc_C3B6A8: CStrI2
  loc_C3B6AA: FStStrNoPop var_17C
  loc_C3B6AD: ConcatStr
  loc_C3B6AE: FStStrNoPop var_180
  loc_C3B6B1: LitStr " AND NumeLiqu = "
  loc_C3B6B4: ConcatStr
  loc_C3B6B5: FStStrNoPop var_188
  loc_C3B6B8: FLdRfVar var_182
  loc_C3B6BB: FLdPr Me
  loc_C3B6BE: MemLdRfVar from_stack_1.global_80
  loc_C3B6C1: NewIfNullPr clsliquidacion
  loc_C3B6C4: from_stack_1 = clsliquidacion.NumeLiqu
  loc_C3B6C9: FLdI2 var_182
  loc_C3B6CC: CStrUI1
  loc_C3B6CE: FStStrNoPop var_18C
  loc_C3B6D1: ConcatStr
  loc_C3B6D2: FStStrNoPop var_190
  loc_C3B6D5: LitStr " AND TipoVenc = 1 AND BimeLiqu in (1,2) AND CodiInmu = '"
  loc_C3B6D8: ConcatStr
  loc_C3B6D9: FStStrNoPop var_194
  loc_C3B6DC: FLdRfVar var_EC
  loc_C3B6DF: FLdPr Me
  loc_C3B6E2: MemLdRfVar from_stack_1.global_84
  loc_C3B6E5: NewIfNullPr clsliqutasa
  loc_C3B6E8: from_stack_1 = clsliqutasa.CodiInmu
  loc_C3B6ED: ILdRf var_EC
  loc_C3B6F0: CStrI4
  loc_C3B6F2: FStStrNoPop var_198
  loc_C3B6F5: ConcatStr
  loc_C3B6F6: FStStrNoPop var_19C
  loc_C3B6F9: LitStr "'))"
  loc_C3B6FC: ConcatStr
  loc_C3B6FD: FStStrNoPop var_1A0
  loc_C3B700: LitStr " as tmp_litadeta"
  loc_C3B703: ConcatStr
  loc_C3B704: FStStrNoPop var_1A4
  loc_C3B707: FLdPr var_114
  loc_C3B70A: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_C3B70F: FFreeStr var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_D4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = "": var_140 = "": var_148 = "": var_14C = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_C3B75C: FLdRfVar var_D0
  loc_C3B75F: FLdPr var_114
  loc_C3B762: from_stack_1 = clsliqutasa.RecordCount
  loc_C3B767: ILdRf var_D0
  loc_C3B76A: LitI4 0
  loc_C3B76F: GtI4
  loc_C3B770: BranchF loc_C3B9AF
  loc_C3B773: FLdPr var_114
  loc_C3B776: Call clsliqutasa.MoveFirst()
  loc_C3B77B: FLdRfVar var_CC
  loc_C3B77E: FLdPr var_114
  loc_C3B781: from_stack_1 = clsliqutasa.TasaGral
  loc_C3B786: LitI2_Byte 0
  loc_C3B788: LitVar_Missing var_E4
  loc_C3B78B: LitI2_Byte &HFF
  loc_C3B78D: FLdVar var_CC
  loc_C3B791: FLdPr Me
  loc_C3B794: MemLdUI1 global_100
  loc_C3B798: CI4UI1
  loc_C3B799: FLdPr Me
  loc_C3B79C: MemLdStr global_96
  loc_C3B79F: FLdPr Me
  loc_C3B7A2: MemLdStr global_92
  loc_C3B7A5: AryLock
  loc_C3B7A8: Ary1LdPr
  loc_C3B7A9: MemLdStr global_112
  loc_C3B7AC: AryLock
  loc_C3B7AF: Ary1LdPr
  loc_C3B7B0: MemLdRfVar from_stack_1.global_28
  loc_C3B7B3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B7B8: AryUnlock
  loc_C3B7BB: AryUnlock
  loc_C3B7BE: FFreeVar var_CC = ""
  loc_C3B7C5: FLdRfVar var_CC
  loc_C3B7C8: FLdPr var_114
  loc_C3B7CB: from_stack_1 = clsliqutasa.InfUrbana
  loc_C3B7D0: LitI2_Byte 0
  loc_C3B7D2: LitVar_Missing var_E4
  loc_C3B7D5: LitI2_Byte &HFF
  loc_C3B7D7: FLdVar var_CC
  loc_C3B7DB: FLdPr Me
  loc_C3B7DE: MemLdUI1 global_100
  loc_C3B7E2: CI4UI1
  loc_C3B7E3: FLdPr Me
  loc_C3B7E6: MemLdStr global_96
  loc_C3B7E9: FLdPr Me
  loc_C3B7EC: MemLdStr global_92
  loc_C3B7EF: AryLock
  loc_C3B7F2: Ary1LdPr
  loc_C3B7F3: MemLdStr global_112
  loc_C3B7F6: AryLock
  loc_C3B7F9: Ary1LdPr
  loc_C3B7FA: MemLdRfVar from_stack_1.global_32
  loc_C3B7FD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B802: AryUnlock
  loc_C3B805: AryUnlock
  loc_C3B808: FFreeVar var_CC = ""
  loc_C3B80F: FLdRfVar var_CC
  loc_C3B812: FLdPr var_114
  loc_C3B815: from_stack_1 = clsliqutasa.AlPublico
  loc_C3B81A: LitI2_Byte 0
  loc_C3B81C: LitVar_Missing var_E4
  loc_C3B81F: LitI2_Byte &HFF
  loc_C3B821: FLdVar var_CC
  loc_C3B825: FLdPr Me
  loc_C3B828: MemLdUI1 global_100
  loc_C3B82C: CI4UI1
  loc_C3B82D: FLdPr Me
  loc_C3B830: MemLdStr global_96
  loc_C3B833: FLdPr Me
  loc_C3B836: MemLdStr global_92
  loc_C3B839: AryLock
  loc_C3B83C: Ary1LdPr
  loc_C3B83D: MemLdStr global_112
  loc_C3B840: AryLock
  loc_C3B843: Ary1LdPr
  loc_C3B844: MemLdRfVar from_stack_1.global_36
  loc_C3B847: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B84C: AryUnlock
  loc_C3B84F: AryUnlock
  loc_C3B852: FFreeVar var_CC = ""
  loc_C3B859: FLdRfVar var_CC
  loc_C3B85C: FLdPr var_114
  loc_C3B85F: from_stack_1 = clsliqutasa.ServAgua
  loc_C3B864: LitI2_Byte 0
  loc_C3B866: LitVar_Missing var_E4
  loc_C3B869: LitI2_Byte &HFF
  loc_C3B86B: FLdVar var_CC
  loc_C3B86F: FLdPr Me
  loc_C3B872: MemLdUI1 global_100
  loc_C3B876: CI4UI1
  loc_C3B877: FLdPr Me
  loc_C3B87A: MemLdStr global_96
  loc_C3B87D: FLdPr Me
  loc_C3B880: MemLdStr global_92
  loc_C3B883: AryLock
  loc_C3B886: Ary1LdPr
  loc_C3B887: MemLdStr global_112
  loc_C3B88A: AryLock
  loc_C3B88D: Ary1LdPr
  loc_C3B88E: MemLdRfVar from_stack_1.global_40
  loc_C3B891: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B896: AryUnlock
  loc_C3B899: AryUnlock
  loc_C3B89C: FFreeVar var_CC = ""
  loc_C3B8A3: FLdRfVar var_CC
  loc_C3B8A6: FLdPr var_114
  loc_C3B8A9: from_stack_1 = clsliqutasa.CEmision
  loc_C3B8AE: LitI2_Byte 0
  loc_C3B8B0: LitVar_Missing var_E4
  loc_C3B8B3: LitI2_Byte &HFF
  loc_C3B8B5: FLdVar var_CC
  loc_C3B8B9: FLdPr Me
  loc_C3B8BC: MemLdUI1 global_100
  loc_C3B8C0: CI4UI1
  loc_C3B8C1: FLdPr Me
  loc_C3B8C4: MemLdStr global_96
  loc_C3B8C7: FLdPr Me
  loc_C3B8CA: MemLdStr global_92
  loc_C3B8CD: AryLock
  loc_C3B8D0: Ary1LdPr
  loc_C3B8D1: MemLdStr global_112
  loc_C3B8D4: AryLock
  loc_C3B8D7: Ary1LdPr
  loc_C3B8D8: MemLdRfVar from_stack_1.global_56
  loc_C3B8DB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B8E0: AryUnlock
  loc_C3B8E3: AryUnlock
  loc_C3B8E6: FFreeVar var_CC = ""
  loc_C3B8ED: FLdPr Me
  loc_C3B8F0: MemLdUI1 global_100
  loc_C3B8F4: CI4UI1
  loc_C3B8F5: FLdPr Me
  loc_C3B8F8: MemLdStr global_96
  loc_C3B8FB: FLdPr Me
  loc_C3B8FE: MemLdStr global_92
  loc_C3B901: Ary1LdPr
  loc_C3B902: MemLdStr global_112
  loc_C3B905: Ary1LdPr
  loc_C3B906: MemLdI2 global_0
  loc_C3B909: BranchF loc_C3B95F
  loc_C3B90C: FLdRfVar var_F4
  loc_C3B90F: FLdPr Me
  loc_C3B912: MemLdRfVar from_stack_1.global_84
  loc_C3B915: NewIfNullPr clsliqutasa
  loc_C3B918: from_stack_1 = clsliqutasa.DescLita
  loc_C3B91D: LitI2_Byte 0
  loc_C3B91F: LitVar_Missing var_CC
  loc_C3B922: LitI2_Byte &HFF
  loc_C3B924: FLdFPR8 var_F4
  loc_C3B927: CVarR8
  loc_C3B92B: PopAdLdVar
  loc_C3B92C: FLdPr Me
  loc_C3B92F: MemLdUI1 global_100
  loc_C3B933: CI4UI1
  loc_C3B934: FLdPr Me
  loc_C3B937: MemLdStr global_96
  loc_C3B93A: FLdPr Me
  loc_C3B93D: MemLdStr global_92
  loc_C3B940: AryLock
  loc_C3B943: Ary1LdPr
  loc_C3B944: MemLdStr global_112
  loc_C3B947: AryLock
  loc_C3B94A: Ary1LdPr
  loc_C3B94B: MemLdRfVar from_stack_1.global_48
  loc_C3B94E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B953: AryUnlock
  loc_C3B956: AryUnlock
  loc_C3B959: FFree1Var var_CC = ""
  loc_C3B95C: Branch loc_C3B9AC
  loc_C3B95F: FLdRfVar var_F4
  loc_C3B962: FLdRfVar var_8C
  loc_C3B965: NewIfNullPr clsliqutasa
  loc_C3B968: from_stack_1 = clsliqutasa.DescLita
  loc_C3B96D: LitI2_Byte 0
  loc_C3B96F: LitVar_Missing var_CC
  loc_C3B972: LitI2_Byte &HFF
  loc_C3B974: FLdFPR8 var_F4
  loc_C3B977: CVarR8
  loc_C3B97B: PopAdLdVar
  loc_C3B97C: FLdPr Me
  loc_C3B97F: MemLdUI1 global_100
  loc_C3B983: CI4UI1
  loc_C3B984: FLdPr Me
  loc_C3B987: MemLdStr global_96
  loc_C3B98A: FLdPr Me
  loc_C3B98D: MemLdStr global_92
  loc_C3B990: AryLock
  loc_C3B993: Ary1LdPr
  loc_C3B994: MemLdStr global_112
  loc_C3B997: AryLock
  loc_C3B99A: Ary1LdPr
  loc_C3B99B: MemLdRfVar from_stack_1.global_48
  loc_C3B99E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B9A3: AryUnlock
  loc_C3B9A6: AryUnlock
  loc_C3B9A9: FFree1Var var_CC = ""
  loc_C3B9AC: Branch loc_C3BAE0
  loc_C3B9AF: LitI2_Byte 0
  loc_C3B9B1: LitVar_Missing var_CC
  loc_C3B9B4: LitI2_Byte &HFF
  loc_C3B9B6: LitVarI2 var_AC, 0
  loc_C3B9BB: PopAdLdVar
  loc_C3B9BC: FLdPr Me
  loc_C3B9BF: MemLdUI1 global_100
  loc_C3B9C3: CI4UI1
  loc_C3B9C4: FLdPr Me
  loc_C3B9C7: MemLdStr global_96
  loc_C3B9CA: FLdPr Me
  loc_C3B9CD: MemLdStr global_92
  loc_C3B9D0: AryLock
  loc_C3B9D3: Ary1LdPr
  loc_C3B9D4: MemLdStr global_112
  loc_C3B9D7: AryLock
  loc_C3B9DA: Ary1LdPr
  loc_C3B9DB: MemLdRfVar from_stack_1.global_28
  loc_C3B9DE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3B9E3: AryUnlock
  loc_C3B9E6: AryUnlock
  loc_C3B9E9: FFree1Var var_CC = ""
  loc_C3B9EC: LitI2_Byte 0
  loc_C3B9EE: LitVar_Missing var_CC
  loc_C3B9F1: LitI2_Byte &HFF
  loc_C3B9F3: LitVarI2 var_AC, 0
  loc_C3B9F8: PopAdLdVar
  loc_C3B9F9: FLdPr Me
  loc_C3B9FC: MemLdUI1 global_100
  loc_C3BA00: CI4UI1
  loc_C3BA01: FLdPr Me
  loc_C3BA04: MemLdStr global_96
  loc_C3BA07: FLdPr Me
  loc_C3BA0A: MemLdStr global_92
  loc_C3BA0D: AryLock
  loc_C3BA10: Ary1LdPr
  loc_C3BA11: MemLdStr global_112
  loc_C3BA14: AryLock
  loc_C3BA17: Ary1LdPr
  loc_C3BA18: MemLdRfVar from_stack_1.global_32
  loc_C3BA1B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3BA20: AryUnlock
  loc_C3BA23: AryUnlock
  loc_C3BA26: FFree1Var var_CC = ""
  loc_C3BA29: LitI2_Byte 0
  loc_C3BA2B: LitVar_Missing var_CC
  loc_C3BA2E: LitI2_Byte &HFF
  loc_C3BA30: LitVarI2 var_AC, 0
  loc_C3BA35: PopAdLdVar
  loc_C3BA36: FLdPr Me
  loc_C3BA39: MemLdUI1 global_100
  loc_C3BA3D: CI4UI1
  loc_C3BA3E: FLdPr Me
  loc_C3BA41: MemLdStr global_96
  loc_C3BA44: FLdPr Me
  loc_C3BA47: MemLdStr global_92
  loc_C3BA4A: AryLock
  loc_C3BA4D: Ary1LdPr
  loc_C3BA4E: MemLdStr global_112
  loc_C3BA51: AryLock
  loc_C3BA54: Ary1LdPr
  loc_C3BA55: MemLdRfVar from_stack_1.global_36
  loc_C3BA58: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3BA5D: AryUnlock
  loc_C3BA60: AryUnlock
  loc_C3BA63: FFree1Var var_CC = ""
  loc_C3BA66: LitI2_Byte 0
  loc_C3BA68: LitVar_Missing var_CC
  loc_C3BA6B: LitI2_Byte &HFF
  loc_C3BA6D: LitVarI2 var_AC, 0
  loc_C3BA72: PopAdLdVar
  loc_C3BA73: FLdPr Me
  loc_C3BA76: MemLdUI1 global_100
  loc_C3BA7A: CI4UI1
  loc_C3BA7B: FLdPr Me
  loc_C3BA7E: MemLdStr global_96
  loc_C3BA81: FLdPr Me
  loc_C3BA84: MemLdStr global_92
  loc_C3BA87: AryLock
  loc_C3BA8A: Ary1LdPr
  loc_C3BA8B: MemLdStr global_112
  loc_C3BA8E: AryLock
  loc_C3BA91: Ary1LdPr
  loc_C3BA92: MemLdRfVar from_stack_1.global_40
  loc_C3BA95: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3BA9A: AryUnlock
  loc_C3BA9D: AryUnlock
  loc_C3BAA0: FFree1Var var_CC = ""
  loc_C3BAA3: LitI2_Byte 0
  loc_C3BAA5: LitVar_Missing var_CC
  loc_C3BAA8: LitI2_Byte &HFF
  loc_C3BAAA: LitVarI2 var_AC, 0
  loc_C3BAAF: PopAdLdVar
  loc_C3BAB0: FLdPr Me
  loc_C3BAB3: MemLdUI1 global_100
  loc_C3BAB7: CI4UI1
  loc_C3BAB8: FLdPr Me
  loc_C3BABB: MemLdStr global_96
  loc_C3BABE: FLdPr Me
  loc_C3BAC1: MemLdStr global_92
  loc_C3BAC4: AryLock
  loc_C3BAC7: Ary1LdPr
  loc_C3BAC8: MemLdStr global_112
  loc_C3BACB: AryLock
  loc_C3BACE: Ary1LdPr
  loc_C3BACF: MemLdRfVar from_stack_1.global_56
  loc_C3BAD2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C3BAD7: AryUnlock
  loc_C3BADA: AryUnlock
  loc_C3BADD: FFree1Var var_CC = ""
  loc_C3BAE0: LitNothing
  loc_C3BAE2: FStAd var_114 
  loc_C3BAE6: LitI2_Byte 1
  loc_C3BAE8: PopTmpLdAd2 var_92
  loc_C3BAEB: FLdPr var_90
  loc_C3BAEE: Call clsliqutasa.Move(from_stack_1v)
  loc_C3BAF3: FLdPr Me
  loc_C3BAF6: MemLdUI1 global_100
  loc_C3BAFA: CI2UI1
  loc_C3BAFC: LitI2_Byte 0
  loc_C3BAFE: EqI2
  loc_C3BAFF: BranchF loc_C3BB0E
  loc_C3BB02: FLdI2 var_86
  loc_C3BB05: CUI1I2
  loc_C3BB07: FLdPr Me
  loc_C3BB0A: MemStUI1
  loc_C3BB0E: LitNothing
  loc_C3BB10: FStAd var_90 
  loc_C3BB14: ExitProcHresult
End Function

Private Function Proc_324_22_C22EA8() 'C22EA8
  'Data Table: 4C4E5C
  loc_C223E0: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C223E5: PopAdLdVar
  loc_C223E6: FLdPr Me
  loc_C223E9: MemLdRfVar from_stack_1.global_60
  loc_C223EC: LdPrVar
  loc_C223EE: LateMemCall
  loc_C223F4: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C223F9: PopAdLdVar
  loc_C223FA: FLdPr Me
  loc_C223FD: MemLdRfVar from_stack_1.global_60
  loc_C22400: LdPrVar
  loc_C22402: LateMemCall
  loc_C22408: LitVarStr var_94, "<head>"
  loc_C2240D: PopAdLdVar
  loc_C2240E: FLdPr Me
  loc_C22411: MemLdRfVar from_stack_1.global_60
  loc_C22414: LdPrVar
  loc_C22416: LateMemCall
  loc_C2241C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C22421: PopAdLdVar
  loc_C22422: FLdPr Me
  loc_C22425: MemLdRfVar from_stack_1.global_60
  loc_C22428: LdPrVar
  loc_C2242A: LateMemCall
  loc_C22430: LitStr "<title>"
  loc_C22433: FLdRfVar var_A8
  loc_C22436: FLdPr Me
  loc_C22439:  = Me.Caption
  loc_C2243E: ILdRf var_A8
  loc_C22441: ConcatStr
  loc_C22442: FStStrNoPop var_AC
  loc_C22445: LitStr "</title>"
  loc_C22448: ConcatStr
  loc_C22449: CVarStr var_BC
  loc_C2244C: PopAdLdVar
  loc_C2244D: FLdPr Me
  loc_C22450: MemLdRfVar from_stack_1.global_60
  loc_C22453: LdPrVar
  loc_C22455: LateMemCall
  loc_C2245B: FFreeStr var_A8 = ""
  loc_C22462: FFree1Var var_BC = ""
  loc_C22465: LitVarStr var_94, "<style type=""text/css"">"
  loc_C2246A: PopAdLdVar
  loc_C2246B: FLdPr Me
  loc_C2246E: MemLdRfVar from_stack_1.global_60
  loc_C22471: LdPrVar
  loc_C22473: LateMemCall
  loc_C22479: LitVarStr var_94, "<!--"
  loc_C2247E: PopAdLdVar
  loc_C2247F: FLdPr Me
  loc_C22482: MemLdRfVar from_stack_1.global_60
  loc_C22485: LdPrVar
  loc_C22487: LateMemCall
  loc_C2248D: LitVarStr var_94, ".Encabezado {"
  loc_C22492: PopAdLdVar
  loc_C22493: FLdPr Me
  loc_C22496: MemLdRfVar from_stack_1.global_60
  loc_C22499: LdPrVar
  loc_C2249B: LateMemCall
  loc_C224A1: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C224A6: PopAdLdVar
  loc_C224A7: FLdPr Me
  loc_C224AA: MemLdRfVar from_stack_1.global_60
  loc_C224AD: LdPrVar
  loc_C224AF: LateMemCall
  loc_C224B5: LitVarStr var_94, " font-size: 10px;"
  loc_C224BA: PopAdLdVar
  loc_C224BB: FLdPr Me
  loc_C224BE: MemLdRfVar from_stack_1.global_60
  loc_C224C1: LdPrVar
  loc_C224C3: LateMemCall
  loc_C224C9: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C224CE: PopAdLdVar
  loc_C224CF: FLdPr Me
  loc_C224D2: MemLdRfVar from_stack_1.global_60
  loc_C224D5: LdPrVar
  loc_C224D7: LateMemCall
  loc_C224DD: LitVarStr var_94, "}"
  loc_C224E2: PopAdLdVar
  loc_C224E3: FLdPr Me
  loc_C224E6: MemLdRfVar from_stack_1.global_60
  loc_C224E9: LdPrVar
  loc_C224EB: LateMemCall
  loc_C224F1: LitVarStr var_94, ".Normal {"
  loc_C224F6: PopAdLdVar
  loc_C224F7: FLdPr Me
  loc_C224FA: MemLdRfVar from_stack_1.global_60
  loc_C224FD: LdPrVar
  loc_C224FF: LateMemCall
  loc_C22505: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2250A: PopAdLdVar
  loc_C2250B: FLdPr Me
  loc_C2250E: MemLdRfVar from_stack_1.global_60
  loc_C22511: LdPrVar
  loc_C22513: LateMemCall
  loc_C22519: LitVarStr var_94, " font-size: 10px;"
  loc_C2251E: PopAdLdVar
  loc_C2251F: FLdPr Me
  loc_C22522: MemLdRfVar from_stack_1.global_60
  loc_C22525: LdPrVar
  loc_C22527: LateMemCall
  loc_C2252D: LitVarStr var_94, " vertical-align: top;"
  loc_C22532: PopAdLdVar
  loc_C22533: FLdPr Me
  loc_C22536: MemLdRfVar from_stack_1.global_60
  loc_C22539: LdPrVar
  loc_C2253B: LateMemCall
  loc_C22541: LitVarStr var_94, "}"
  loc_C22546: PopAdLdVar
  loc_C22547: FLdPr Me
  loc_C2254A: MemLdRfVar from_stack_1.global_60
  loc_C2254D: LdPrVar
  loc_C2254F: LateMemCall
  loc_C22555: LitVarStr var_94, ".DomiPostal {"
  loc_C2255A: PopAdLdVar
  loc_C2255B: FLdPr Me
  loc_C2255E: MemLdRfVar from_stack_1.global_60
  loc_C22561: LdPrVar
  loc_C22563: LateMemCall
  loc_C22569: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C2256E: PopAdLdVar
  loc_C2256F: FLdPr Me
  loc_C22572: MemLdRfVar from_stack_1.global_60
  loc_C22575: LdPrVar
  loc_C22577: LateMemCall
  loc_C2257D: LitVarStr var_94, "  font-size: 14px;"
  loc_C22582: PopAdLdVar
  loc_C22583: FLdPr Me
  loc_C22586: MemLdRfVar from_stack_1.global_60
  loc_C22589: LdPrVar
  loc_C2258B: LateMemCall
  loc_C22591: LitVarStr var_94, "  vertical-align: top;"
  loc_C22596: PopAdLdVar
  loc_C22597: FLdPr Me
  loc_C2259A: MemLdRfVar from_stack_1.global_60
  loc_C2259D: LdPrVar
  loc_C2259F: LateMemCall
  loc_C225A5: LitVarStr var_94, "  font-weight: bold;"
  loc_C225AA: PopAdLdVar
  loc_C225AB: FLdPr Me
  loc_C225AE: MemLdRfVar from_stack_1.global_60
  loc_C225B1: LdPrVar
  loc_C225B3: LateMemCall
  loc_C225B9: LitVarStr var_94, "  padding-top: 1px;"
  loc_C225BE: PopAdLdVar
  loc_C225BF: FLdPr Me
  loc_C225C2: MemLdRfVar from_stack_1.global_60
  loc_C225C5: LdPrVar
  loc_C225C7: LateMemCall
  loc_C225CD: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C225D2: PopAdLdVar
  loc_C225D3: FLdPr Me
  loc_C225D6: MemLdRfVar from_stack_1.global_60
  loc_C225D9: LdPrVar
  loc_C225DB: LateMemCall
  loc_C225E1: LitVarStr var_94, "  padding-left: 5px;"
  loc_C225E6: PopAdLdVar
  loc_C225E7: FLdPr Me
  loc_C225EA: MemLdRfVar from_stack_1.global_60
  loc_C225ED: LdPrVar
  loc_C225EF: LateMemCall
  loc_C225F5: LitVarStr var_94, "  padding-right: 5px;"
  loc_C225FA: PopAdLdVar
  loc_C225FB: FLdPr Me
  loc_C225FE: MemLdRfVar from_stack_1.global_60
  loc_C22601: LdPrVar
  loc_C22603: LateMemCall
  loc_C22609: LitVarStr var_94, "}"
  loc_C2260E: PopAdLdVar
  loc_C2260F: FLdPr Me
  loc_C22612: MemLdRfVar from_stack_1.global_60
  loc_C22615: LdPrVar
  loc_C22617: LateMemCall
  loc_C2261D: LitVarStr var_94, ".DomiReal {"
  loc_C22622: PopAdLdVar
  loc_C22623: FLdPr Me
  loc_C22626: MemLdRfVar from_stack_1.global_60
  loc_C22629: LdPrVar
  loc_C2262B: LateMemCall
  loc_C22631: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C22636: PopAdLdVar
  loc_C22637: FLdPr Me
  loc_C2263A: MemLdRfVar from_stack_1.global_60
  loc_C2263D: LdPrVar
  loc_C2263F: LateMemCall
  loc_C22645: LitVarStr var_94, "  font-size: 14px;"
  loc_C2264A: PopAdLdVar
  loc_C2264B: FLdPr Me
  loc_C2264E: MemLdRfVar from_stack_1.global_60
  loc_C22651: LdPrVar
  loc_C22653: LateMemCall
  loc_C22659: LitVarStr var_94, "  vertical-align: top;"
  loc_C2265E: PopAdLdVar
  loc_C2265F: FLdPr Me
  loc_C22662: MemLdRfVar from_stack_1.global_60
  loc_C22665: LdPrVar
  loc_C22667: LateMemCall
  loc_C2266D: LitVarStr var_94, "  padding-top: 1px;"
  loc_C22672: PopAdLdVar
  loc_C22673: FLdPr Me
  loc_C22676: MemLdRfVar from_stack_1.global_60
  loc_C22679: LdPrVar
  loc_C2267B: LateMemCall
  loc_C22681: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C22686: PopAdLdVar
  loc_C22687: FLdPr Me
  loc_C2268A: MemLdRfVar from_stack_1.global_60
  loc_C2268D: LdPrVar
  loc_C2268F: LateMemCall
  loc_C22695: LitVarStr var_94, "  padding-left: 5px;"
  loc_C2269A: PopAdLdVar
  loc_C2269B: FLdPr Me
  loc_C2269E: MemLdRfVar from_stack_1.global_60
  loc_C226A1: LdPrVar
  loc_C226A3: LateMemCall
  loc_C226A9: LitVarStr var_94, "  padding-right: 5px;"
  loc_C226AE: PopAdLdVar
  loc_C226AF: FLdPr Me
  loc_C226B2: MemLdRfVar from_stack_1.global_60
  loc_C226B5: LdPrVar
  loc_C226B7: LateMemCall
  loc_C226BD: LitVarStr var_94, "}"
  loc_C226C2: PopAdLdVar
  loc_C226C3: FLdPr Me
  loc_C226C6: MemLdRfVar from_stack_1.global_60
  loc_C226C9: LdPrVar
  loc_C226CB: LateMemCall
  loc_C226D1: LitVarStr var_94, ".MargIzq {"
  loc_C226D6: PopAdLdVar
  loc_C226D7: FLdPr Me
  loc_C226DA: MemLdRfVar from_stack_1.global_60
  loc_C226DD: LdPrVar
  loc_C226DF: LateMemCall
  loc_C226E5: LitVarStr var_94, "  padding-left:5px"
  loc_C226EA: PopAdLdVar
  loc_C226EB: FLdPr Me
  loc_C226EE: MemLdRfVar from_stack_1.global_60
  loc_C226F1: LdPrVar
  loc_C226F3: LateMemCall
  loc_C226F9: LitVarStr var_94, "}"
  loc_C226FE: PopAdLdVar
  loc_C226FF: FLdPr Me
  loc_C22702: MemLdRfVar from_stack_1.global_60
  loc_C22705: LdPrVar
  loc_C22707: LateMemCall
  loc_C2270D: LitVarStr var_94, ".MargDer {"
  loc_C22712: PopAdLdVar
  loc_C22713: FLdPr Me
  loc_C22716: MemLdRfVar from_stack_1.global_60
  loc_C22719: LdPrVar
  loc_C2271B: LateMemCall
  loc_C22721: LitVarStr var_94, "  padding-right:5px"
  loc_C22726: PopAdLdVar
  loc_C22727: FLdPr Me
  loc_C2272A: MemLdRfVar from_stack_1.global_60
  loc_C2272D: LdPrVar
  loc_C2272F: LateMemCall
  loc_C22735: LitVarStr var_94, "}"
  loc_C2273A: PopAdLdVar
  loc_C2273B: FLdPr Me
  loc_C2273E: MemLdRfVar from_stack_1.global_60
  loc_C22741: LdPrVar
  loc_C22743: LateMemCall
  loc_C22749: LitVarStr var_94, ".NormalAbajo {"
  loc_C2274E: PopAdLdVar
  loc_C2274F: FLdPr Me
  loc_C22752: MemLdRfVar from_stack_1.global_60
  loc_C22755: LdPrVar
  loc_C22757: LateMemCall
  loc_C2275D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C22762: PopAdLdVar
  loc_C22763: FLdPr Me
  loc_C22766: MemLdRfVar from_stack_1.global_60
  loc_C22769: LdPrVar
  loc_C2276B: LateMemCall
  loc_C22771: LitVarStr var_94, " font-size: 11px;"
  loc_C22776: PopAdLdVar
  loc_C22777: FLdPr Me
  loc_C2277A: MemLdRfVar from_stack_1.global_60
  loc_C2277D: LdPrVar
  loc_C2277F: LateMemCall
  loc_C22785: LitVarStr var_94, " vertical-align:bottom;"
  loc_C2278A: PopAdLdVar
  loc_C2278B: FLdPr Me
  loc_C2278E: MemLdRfVar from_stack_1.global_60
  loc_C22791: LdPrVar
  loc_C22793: LateMemCall
  loc_C22799: LitVarStr var_94, "}"
  loc_C2279E: PopAdLdVar
  loc_C2279F: FLdPr Me
  loc_C227A2: MemLdRfVar from_stack_1.global_60
  loc_C227A5: LdPrVar
  loc_C227A7: LateMemCall
  loc_C227AD: LitVarStr var_94, ".NormalDetalle {"
  loc_C227B2: PopAdLdVar
  loc_C227B3: FLdPr Me
  loc_C227B6: MemLdRfVar from_stack_1.global_60
  loc_C227B9: LdPrVar
  loc_C227BB: LateMemCall
  loc_C227C1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C227C6: PopAdLdVar
  loc_C227C7: FLdPr Me
  loc_C227CA: MemLdRfVar from_stack_1.global_60
  loc_C227CD: LdPrVar
  loc_C227CF: LateMemCall
  loc_C227D5: LitVarStr var_94, " font-size: 10px;"
  loc_C227DA: PopAdLdVar
  loc_C227DB: FLdPr Me
  loc_C227DE: MemLdRfVar from_stack_1.global_60
  loc_C227E1: LdPrVar
  loc_C227E3: LateMemCall
  loc_C227E9: LitVarStr var_94, " vertical-align: top;"
  loc_C227EE: PopAdLdVar
  loc_C227EF: FLdPr Me
  loc_C227F2: MemLdRfVar from_stack_1.global_60
  loc_C227F5: LdPrVar
  loc_C227F7: LateMemCall
  loc_C227FD: LitVarStr var_94, "}"
  loc_C22802: PopAdLdVar
  loc_C22803: FLdPr Me
  loc_C22806: MemLdRfVar from_stack_1.global_60
  loc_C22809: LdPrVar
  loc_C2280B: LateMemCall
  loc_C22811: LitVarStr var_94, ".NormalBloqueFin {"
  loc_C22816: PopAdLdVar
  loc_C22817: FLdPr Me
  loc_C2281A: MemLdRfVar from_stack_1.global_60
  loc_C2281D: LdPrVar
  loc_C2281F: LateMemCall
  loc_C22825: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2282A: PopAdLdVar
  loc_C2282B: FLdPr Me
  loc_C2282E: MemLdRfVar from_stack_1.global_60
  loc_C22831: LdPrVar
  loc_C22833: LateMemCall
  loc_C22839: LitVarStr var_94, " font-size: 10px;"
  loc_C2283E: PopAdLdVar
  loc_C2283F: FLdPr Me
  loc_C22842: MemLdRfVar from_stack_1.global_60
  loc_C22845: LdPrVar
  loc_C22847: LateMemCall
  loc_C2284D: LitVarStr var_94, " vertical-align: top;"
  loc_C22852: PopAdLdVar
  loc_C22853: FLdPr Me
  loc_C22856: MemLdRfVar from_stack_1.global_60
  loc_C22859: LdPrVar
  loc_C2285B: LateMemCall
  loc_C22861: LitVarStr var_94, " padding-right: 1px;"
  loc_C22866: PopAdLdVar
  loc_C22867: FLdPr Me
  loc_C2286A: MemLdRfVar from_stack_1.global_60
  loc_C2286D: LdPrVar
  loc_C2286F: LateMemCall
  loc_C22875: LitVarStr var_94, "}"
  loc_C2287A: PopAdLdVar
  loc_C2287B: FLdPr Me
  loc_C2287E: MemLdRfVar from_stack_1.global_60
  loc_C22881: LdPrVar
  loc_C22883: LateMemCall
  loc_C22889: LitVarStr var_94, ".NormalBloqueFinGrande {"
  loc_C2288E: PopAdLdVar
  loc_C2288F: FLdPr Me
  loc_C22892: MemLdRfVar from_stack_1.global_60
  loc_C22895: LdPrVar
  loc_C22897: LateMemCall
  loc_C2289D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C228A2: PopAdLdVar
  loc_C228A3: FLdPr Me
  loc_C228A6: MemLdRfVar from_stack_1.global_60
  loc_C228A9: LdPrVar
  loc_C228AB: LateMemCall
  loc_C228B1: LitVarStr var_94, " font-size: 14px;"
  loc_C228B6: PopAdLdVar
  loc_C228B7: FLdPr Me
  loc_C228BA: MemLdRfVar from_stack_1.global_60
  loc_C228BD: LdPrVar
  loc_C228BF: LateMemCall
  loc_C228C5: LitVarStr var_94, " vertical-align: top;"
  loc_C228CA: PopAdLdVar
  loc_C228CB: FLdPr Me
  loc_C228CE: MemLdRfVar from_stack_1.global_60
  loc_C228D1: LdPrVar
  loc_C228D3: LateMemCall
  loc_C228D9: LitVarStr var_94, "}"
  loc_C228DE: PopAdLdVar
  loc_C228DF: FLdPr Me
  loc_C228E2: MemLdRfVar from_stack_1.global_60
  loc_C228E5: LdPrVar
  loc_C228E7: LateMemCall
  loc_C228ED: LitVarStr var_94, ".NombreMunicipio {"
  loc_C228F2: PopAdLdVar
  loc_C228F3: FLdPr Me
  loc_C228F6: MemLdRfVar from_stack_1.global_60
  loc_C228F9: LdPrVar
  loc_C228FB: LateMemCall
  loc_C22901: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C22906: PopAdLdVar
  loc_C22907: FLdPr Me
  loc_C2290A: MemLdRfVar from_stack_1.global_60
  loc_C2290D: LdPrVar
  loc_C2290F: LateMemCall
  loc_C22915: LitVarStr var_94, " font-size: 14px;"
  loc_C2291A: PopAdLdVar
  loc_C2291B: FLdPr Me
  loc_C2291E: MemLdRfVar from_stack_1.global_60
  loc_C22921: LdPrVar
  loc_C22923: LateMemCall
  loc_C22929: LitVarStr var_94, " font-weight: bold;"
  loc_C2292E: PopAdLdVar
  loc_C2292F: FLdPr Me
  loc_C22932: MemLdRfVar from_stack_1.global_60
  loc_C22935: LdPrVar
  loc_C22937: LateMemCall
  loc_C2293D: LitVarStr var_94, "}"
  loc_C22942: PopAdLdVar
  loc_C22943: FLdPr Me
  loc_C22946: MemLdRfVar from_stack_1.global_60
  loc_C22949: LdPrVar
  loc_C2294B: LateMemCall
  loc_C22951: LitVarStr var_94, ".DatosMunicipio {"
  loc_C22956: PopAdLdVar
  loc_C22957: FLdPr Me
  loc_C2295A: MemLdRfVar from_stack_1.global_60
  loc_C2295D: LdPrVar
  loc_C2295F: LateMemCall
  loc_C22965: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C2296A: PopAdLdVar
  loc_C2296B: FLdPr Me
  loc_C2296E: MemLdRfVar from_stack_1.global_60
  loc_C22971: LdPrVar
  loc_C22973: LateMemCall
  loc_C22979: LitVarStr var_94, " font-size: 9px;"
  loc_C2297E: PopAdLdVar
  loc_C2297F: FLdPr Me
  loc_C22982: MemLdRfVar from_stack_1.global_60
  loc_C22985: LdPrVar
  loc_C22987: LateMemCall
  loc_C2298D: LitVarStr var_94, "}"
  loc_C22992: PopAdLdVar
  loc_C22993: FLdPr Me
  loc_C22996: MemLdRfVar from_stack_1.global_60
  loc_C22999: LdPrVar
  loc_C2299B: LateMemCall
  loc_C229A1: LitVarStr var_94, ".Totales {"
  loc_C229A6: PopAdLdVar
  loc_C229A7: FLdPr Me
  loc_C229AA: MemLdRfVar from_stack_1.global_60
  loc_C229AD: LdPrVar
  loc_C229AF: LateMemCall
  loc_C229B5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C229BA: PopAdLdVar
  loc_C229BB: FLdPr Me
  loc_C229BE: MemLdRfVar from_stack_1.global_60
  loc_C229C1: LdPrVar
  loc_C229C3: LateMemCall
  loc_C229C9: LitVarStr var_94, " font-size: 13px;"
  loc_C229CE: PopAdLdVar
  loc_C229CF: FLdPr Me
  loc_C229D2: MemLdRfVar from_stack_1.global_60
  loc_C229D5: LdPrVar
  loc_C229D7: LateMemCall
  loc_C229DD: LitVarStr var_94, " vertical-align: top;"
  loc_C229E2: PopAdLdVar
  loc_C229E3: FLdPr Me
  loc_C229E6: MemLdRfVar from_stack_1.global_60
  loc_C229E9: LdPrVar
  loc_C229EB: LateMemCall
  loc_C229F1: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C229F6: PopAdLdVar
  loc_C229F7: FLdPr Me
  loc_C229FA: MemLdRfVar from_stack_1.global_60
  loc_C229FD: LdPrVar
  loc_C229FF: LateMemCall
  loc_C22A05: LitVarStr var_94, " font-weight: bold;"
  loc_C22A0A: PopAdLdVar
  loc_C22A0B: FLdPr Me
  loc_C22A0E: MemLdRfVar from_stack_1.global_60
  loc_C22A11: LdPrVar
  loc_C22A13: LateMemCall
  loc_C22A19: LitVarStr var_94, " padding-right: 1px;"
  loc_C22A1E: PopAdLdVar
  loc_C22A1F: FLdPr Me
  loc_C22A22: MemLdRfVar from_stack_1.global_60
  loc_C22A25: LdPrVar
  loc_C22A27: LateMemCall
  loc_C22A2D: LitVarStr var_94, "}"
  loc_C22A32: PopAdLdVar
  loc_C22A33: FLdPr Me
  loc_C22A36: MemLdRfVar from_stack_1.global_60
  loc_C22A39: LdPrVar
  loc_C22A3B: LateMemCall
  loc_C22A41: LitVarStr var_94, ".Total {"
  loc_C22A46: PopAdLdVar
  loc_C22A47: FLdPr Me
  loc_C22A4A: MemLdRfVar from_stack_1.global_60
  loc_C22A4D: LdPrVar
  loc_C22A4F: LateMemCall
  loc_C22A55: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C22A5A: PopAdLdVar
  loc_C22A5B: FLdPr Me
  loc_C22A5E: MemLdRfVar from_stack_1.global_60
  loc_C22A61: LdPrVar
  loc_C22A63: LateMemCall
  loc_C22A69: LitVarStr var_94, " font-size: 14px;"
  loc_C22A6E: PopAdLdVar
  loc_C22A6F: FLdPr Me
  loc_C22A72: MemLdRfVar from_stack_1.global_60
  loc_C22A75: LdPrVar
  loc_C22A77: LateMemCall
  loc_C22A7D: LitVarStr var_94, " vertical-align: top;"
  loc_C22A82: PopAdLdVar
  loc_C22A83: FLdPr Me
  loc_C22A86: MemLdRfVar from_stack_1.global_60
  loc_C22A89: LdPrVar
  loc_C22A8B: LateMemCall
  loc_C22A91: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C22A96: PopAdLdVar
  loc_C22A97: FLdPr Me
  loc_C22A9A: MemLdRfVar from_stack_1.global_60
  loc_C22A9D: LdPrVar
  loc_C22A9F: LateMemCall
  loc_C22AA5: LitVarStr var_94, " font-weight: bold;"
  loc_C22AAA: PopAdLdVar
  loc_C22AAB: FLdPr Me
  loc_C22AAE: MemLdRfVar from_stack_1.global_60
  loc_C22AB1: LdPrVar
  loc_C22AB3: LateMemCall
  loc_C22AB9: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C22ABE: PopAdLdVar
  loc_C22ABF: FLdPr Me
  loc_C22AC2: MemLdRfVar from_stack_1.global_60
  loc_C22AC5: LdPrVar
  loc_C22AC7: LateMemCall
  loc_C22ACD: LitVarStr var_94, "}"
  loc_C22AD2: PopAdLdVar
  loc_C22AD3: FLdPr Me
  loc_C22AD6: MemLdRfVar from_stack_1.global_60
  loc_C22AD9: LdPrVar
  loc_C22ADB: LateMemCall
  loc_C22AE1: LitVarStr var_94, ".CodBar {"
  loc_C22AE6: PopAdLdVar
  loc_C22AE7: FLdPr Me
  loc_C22AEA: MemLdRfVar from_stack_1.global_60
  loc_C22AED: LdPrVar
  loc_C22AEF: LateMemCall
  loc_C22AF5: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C22AFA: PopAdLdVar
  loc_C22AFB: FLdPr Me
  loc_C22AFE: MemLdRfVar from_stack_1.global_60
  loc_C22B01: LdPrVar
  loc_C22B03: LateMemCall
  loc_C22B09: LitVarStr var_94, " font-size: 48px;"
  loc_C22B0E: PopAdLdVar
  loc_C22B0F: FLdPr Me
  loc_C22B12: MemLdRfVar from_stack_1.global_60
  loc_C22B15: LdPrVar
  loc_C22B17: LateMemCall
  loc_C22B1D: LitVarStr var_94, " font-style: normal;"
  loc_C22B22: PopAdLdVar
  loc_C22B23: FLdPr Me
  loc_C22B26: MemLdRfVar from_stack_1.global_60
  loc_C22B29: LdPrVar
  loc_C22B2B: LateMemCall
  loc_C22B31: LitVarStr var_94, " line-height: normal;"
  loc_C22B36: PopAdLdVar
  loc_C22B37: FLdPr Me
  loc_C22B3A: MemLdRfVar from_stack_1.global_60
  loc_C22B3D: LdPrVar
  loc_C22B3F: LateMemCall
  loc_C22B45: LitVarStr var_94, " font-weight: normal;"
  loc_C22B4A: PopAdLdVar
  loc_C22B4B: FLdPr Me
  loc_C22B4E: MemLdRfVar from_stack_1.global_60
  loc_C22B51: LdPrVar
  loc_C22B53: LateMemCall
  loc_C22B59: LitVarStr var_94, "}"
  loc_C22B5E: PopAdLdVar
  loc_C22B5F: FLdPr Me
  loc_C22B62: MemLdRfVar from_stack_1.global_60
  loc_C22B65: LdPrVar
  loc_C22B67: LateMemCall
  loc_C22B6D: LitVarStr var_94, ".CodBarChica {"
  loc_C22B72: PopAdLdVar
  loc_C22B73: FLdPr Me
  loc_C22B76: MemLdRfVar from_stack_1.global_60
  loc_C22B79: LdPrVar
  loc_C22B7B: LateMemCall
  loc_C22B81: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C22B86: PopAdLdVar
  loc_C22B87: FLdPr Me
  loc_C22B8A: MemLdRfVar from_stack_1.global_60
  loc_C22B8D: LdPrVar
  loc_C22B8F: LateMemCall
  loc_C22B95: LitVarStr var_94, " font-size: 38px;"
  loc_C22B9A: PopAdLdVar
  loc_C22B9B: FLdPr Me
  loc_C22B9E: MemLdRfVar from_stack_1.global_60
  loc_C22BA1: LdPrVar
  loc_C22BA3: LateMemCall
  loc_C22BA9: LitVarStr var_94, " font-style: normal;"
  loc_C22BAE: PopAdLdVar
  loc_C22BAF: FLdPr Me
  loc_C22BB2: MemLdRfVar from_stack_1.global_60
  loc_C22BB5: LdPrVar
  loc_C22BB7: LateMemCall
  loc_C22BBD: LitVarStr var_94, " line-height: normal;"
  loc_C22BC2: PopAdLdVar
  loc_C22BC3: FLdPr Me
  loc_C22BC6: MemLdRfVar from_stack_1.global_60
  loc_C22BC9: LdPrVar
  loc_C22BCB: LateMemCall
  loc_C22BD1: LitVarStr var_94, " font-weight: normal;"
  loc_C22BD6: PopAdLdVar
  loc_C22BD7: FLdPr Me
  loc_C22BDA: MemLdRfVar from_stack_1.global_60
  loc_C22BDD: LdPrVar
  loc_C22BDF: LateMemCall
  loc_C22BE5: LitVarStr var_94, "}"
  loc_C22BEA: PopAdLdVar
  loc_C22BEB: FLdPr Me
  loc_C22BEE: MemLdRfVar from_stack_1.global_60
  loc_C22BF1: LdPrVar
  loc_C22BF3: LateMemCall
  loc_C22BF9: LitVarStr var_94, ".CorreoCelda {"
  loc_C22BFE: PopAdLdVar
  loc_C22BFF: FLdPr Me
  loc_C22C02: MemLdRfVar from_stack_1.global_60
  loc_C22C05: LdPrVar
  loc_C22C07: LateMemCall
  loc_C22C0D: LitVarStr var_94, " border: 1px solid black;"
  loc_C22C12: PopAdLdVar
  loc_C22C13: FLdPr Me
  loc_C22C16: MemLdRfVar from_stack_1.global_60
  loc_C22C19: LdPrVar
  loc_C22C1B: LateMemCall
  loc_C22C21: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C22C26: PopAdLdVar
  loc_C22C27: FLdPr Me
  loc_C22C2A: MemLdRfVar from_stack_1.global_60
  loc_C22C2D: LdPrVar
  loc_C22C2F: LateMemCall
  loc_C22C35: LitVarStr var_94, " font-size: 6px;"
  loc_C22C3A: PopAdLdVar
  loc_C22C3B: FLdPr Me
  loc_C22C3E: MemLdRfVar from_stack_1.global_60
  loc_C22C41: LdPrVar
  loc_C22C43: LateMemCall
  loc_C22C49: LitVarStr var_94, " text-align:center;"
  loc_C22C4E: PopAdLdVar
  loc_C22C4F: FLdPr Me
  loc_C22C52: MemLdRfVar from_stack_1.global_60
  loc_C22C55: LdPrVar
  loc_C22C57: LateMemCall
  loc_C22C5D: LitVarStr var_94, " vertical-align: middle;"
  loc_C22C62: PopAdLdVar
  loc_C22C63: FLdPr Me
  loc_C22C66: MemLdRfVar from_stack_1.global_60
  loc_C22C69: LdPrVar
  loc_C22C6B: LateMemCall
  loc_C22C71: LitVarStr var_94, "}"
  loc_C22C76: PopAdLdVar
  loc_C22C77: FLdPr Me
  loc_C22C7A: MemLdRfVar from_stack_1.global_60
  loc_C22C7D: LdPrVar
  loc_C22C7F: LateMemCall
  loc_C22C85: LitVarStr var_94, ".CorreoCeldaFinal {"
  loc_C22C8A: PopAdLdVar
  loc_C22C8B: FLdPr Me
  loc_C22C8E: MemLdRfVar from_stack_1.global_60
  loc_C22C91: LdPrVar
  loc_C22C93: LateMemCall
  loc_C22C99: LitVarStr var_94, " border:none;"
  loc_C22C9E: PopAdLdVar
  loc_C22C9F: FLdPr Me
  loc_C22CA2: MemLdRfVar from_stack_1.global_60
  loc_C22CA5: LdPrVar
  loc_C22CA7: LateMemCall
  loc_C22CAD: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C22CB2: PopAdLdVar
  loc_C22CB3: FLdPr Me
  loc_C22CB6: MemLdRfVar from_stack_1.global_60
  loc_C22CB9: LdPrVar
  loc_C22CBB: LateMemCall
  loc_C22CC1: LitVarStr var_94, " font-size: 6px;"
  loc_C22CC6: PopAdLdVar
  loc_C22CC7: FLdPr Me
  loc_C22CCA: MemLdRfVar from_stack_1.global_60
  loc_C22CCD: LdPrVar
  loc_C22CCF: LateMemCall
  loc_C22CD5: LitVarStr var_94, " text-align:center;"
  loc_C22CDA: PopAdLdVar
  loc_C22CDB: FLdPr Me
  loc_C22CDE: MemLdRfVar from_stack_1.global_60
  loc_C22CE1: LdPrVar
  loc_C22CE3: LateMemCall
  loc_C22CE9: LitVarStr var_94, " vertical-align: middle;"
  loc_C22CEE: PopAdLdVar
  loc_C22CEF: FLdPr Me
  loc_C22CF2: MemLdRfVar from_stack_1.global_60
  loc_C22CF5: LdPrVar
  loc_C22CF7: LateMemCall
  loc_C22CFD: LitVarStr var_94, "}"
  loc_C22D02: PopAdLdVar
  loc_C22D03: FLdPr Me
  loc_C22D06: MemLdRfVar from_stack_1.global_60
  loc_C22D09: LdPrVar
  loc_C22D0B: LateMemCall
  loc_C22D11: LitVarStr var_94, ".CorreoTabla {"
  loc_C22D16: PopAdLdVar
  loc_C22D17: FLdPr Me
  loc_C22D1A: MemLdRfVar from_stack_1.global_60
  loc_C22D1D: LdPrVar
  loc_C22D1F: LateMemCall
  loc_C22D25: LitVarStr var_94, " border:none;"
  loc_C22D2A: PopAdLdVar
  loc_C22D2B: FLdPr Me
  loc_C22D2E: MemLdRfVar from_stack_1.global_60
  loc_C22D31: LdPrVar
  loc_C22D33: LateMemCall
  loc_C22D39: LitVarStr var_94, " border-collapse:collapse;"
  loc_C22D3E: PopAdLdVar
  loc_C22D3F: FLdPr Me
  loc_C22D42: MemLdRfVar from_stack_1.global_60
  loc_C22D45: LdPrVar
  loc_C22D47: LateMemCall
  loc_C22D4D: LitVarStr var_94, "}"
  loc_C22D52: PopAdLdVar
  loc_C22D53: FLdPr Me
  loc_C22D56: MemLdRfVar from_stack_1.global_60
  loc_C22D59: LdPrVar
  loc_C22D5B: LateMemCall
  loc_C22D61: LitVarStr var_94, ".MissChild {"
  loc_C22D66: PopAdLdVar
  loc_C22D67: FLdPr Me
  loc_C22D6A: MemLdRfVar from_stack_1.global_60
  loc_C22D6D: LdPrVar
  loc_C22D6F: LateMemCall
  loc_C22D75: LitVarStr var_94, " float:right;"
  loc_C22D7A: PopAdLdVar
  loc_C22D7B: FLdPr Me
  loc_C22D7E: MemLdRfVar from_stack_1.global_60
  loc_C22D81: LdPrVar
  loc_C22D83: LateMemCall
  loc_C22D89: LitVarStr var_94, " clear:right;"
  loc_C22D8E: PopAdLdVar
  loc_C22D8F: FLdPr Me
  loc_C22D92: MemLdRfVar from_stack_1.global_60
  loc_C22D95: LdPrVar
  loc_C22D97: LateMemCall
  loc_C22D9D: LitVarStr var_94, " margin:10px;"
  loc_C22DA2: PopAdLdVar
  loc_C22DA3: FLdPr Me
  loc_C22DA6: MemLdRfVar from_stack_1.global_60
  loc_C22DA9: LdPrVar
  loc_C22DAB: LateMemCall
  loc_C22DB1: LitVarStr var_94, " vertical-align:bottom"
  loc_C22DB6: PopAdLdVar
  loc_C22DB7: FLdPr Me
  loc_C22DBA: MemLdRfVar from_stack_1.global_60
  loc_C22DBD: LdPrVar
  loc_C22DBF: LateMemCall
  loc_C22DC5: LitVarStr var_94, "}"
  loc_C22DCA: PopAdLdVar
  loc_C22DCB: FLdPr Me
  loc_C22DCE: MemLdRfVar from_stack_1.global_60
  loc_C22DD1: LdPrVar
  loc_C22DD3: LateMemCall
  loc_C22DD9: LitVarStr var_94, ".NoBordeAbajo {"
  loc_C22DDE: PopAdLdVar
  loc_C22DDF: FLdPr Me
  loc_C22DE2: MemLdRfVar from_stack_1.global_60
  loc_C22DE5: LdPrVar
  loc_C22DE7: LateMemCall
  loc_C22DED: LitVarStr var_94, " border-bottom:none"
  loc_C22DF2: PopAdLdVar
  loc_C22DF3: FLdPr Me
  loc_C22DF6: MemLdRfVar from_stack_1.global_60
  loc_C22DF9: LdPrVar
  loc_C22DFB: LateMemCall
  loc_C22E01: LitVarStr var_94, "}"
  loc_C22E06: PopAdLdVar
  loc_C22E07: FLdPr Me
  loc_C22E0A: MemLdRfVar from_stack_1.global_60
  loc_C22E0D: LdPrVar
  loc_C22E0F: LateMemCall
  loc_C22E15: LitVarStr var_94, ".NoBordeArriba {"
  loc_C22E1A: PopAdLdVar
  loc_C22E1B: FLdPr Me
  loc_C22E1E: MemLdRfVar from_stack_1.global_60
  loc_C22E21: LdPrVar
  loc_C22E23: LateMemCall
  loc_C22E29: LitVarStr var_94, " border-top:none"
  loc_C22E2E: PopAdLdVar
  loc_C22E2F: FLdPr Me
  loc_C22E32: MemLdRfVar from_stack_1.global_60
  loc_C22E35: LdPrVar
  loc_C22E37: LateMemCall
  loc_C22E3D: LitVarStr var_94, "}"
  loc_C22E42: PopAdLdVar
  loc_C22E43: FLdPr Me
  loc_C22E46: MemLdRfVar from_stack_1.global_60
  loc_C22E49: LdPrVar
  loc_C22E4B: LateMemCall
  loc_C22E51: LitVarStr var_94, "-->"
  loc_C22E56: PopAdLdVar
  loc_C22E57: FLdPr Me
  loc_C22E5A: MemLdRfVar from_stack_1.global_60
  loc_C22E5D: LdPrVar
  loc_C22E5F: LateMemCall
  loc_C22E65: LitVarStr var_94, "</style>"
  loc_C22E6A: PopAdLdVar
  loc_C22E6B: FLdPr Me
  loc_C22E6E: MemLdRfVar from_stack_1.global_60
  loc_C22E71: LdPrVar
  loc_C22E73: LateMemCall
  loc_C22E79: LitI4 0
  loc_C22E7E: FStStrCopy var_AC
  loc_C22E81: FLdRfVar var_AC
  loc_C22E84: LitI4 0
  loc_C22E89: FStStrCopy var_A8
  loc_C22E8C: FLdRfVar var_A8
  loc_C22E8F: LitI2_Byte 0
  loc_C22E91: PopTmpLdAd2 var_BE
  loc_C22E94: FLdPr Me
  loc_C22E97: MemLdRfVar from_stack_1.global_60
  loc_C22E9A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C22E9F: FFreeStr var_A8 = ""
  loc_C22EA6: ExitProcHresult
End Function

Private Function Proc_324_23_BE910C() 'BE910C
  'Data Table: 4C4E5C
  loc_BE8920: LitVarStr var_94, "<table align=""center"" height=""350"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_BE8925: PopAdLdVar
  loc_BE8926: FLdPr Me
  loc_BE8929: MemLdRfVar from_stack_1.global_60
  loc_BE892C: LdPrVar
  loc_BE892E: LateMemCall
  loc_BE8934: LitVarStr var_94, "  <tr valign=""top""><td height=""350"">"
  loc_BE8939: PopAdLdVar
  loc_BE893A: FLdPr Me
  loc_BE893D: MemLdRfVar from_stack_1.global_60
  loc_BE8940: LdPrVar
  loc_BE8942: LateMemCall
  loc_BE8948: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_BE894D: PopAdLdVar
  loc_BE894E: FLdPr Me
  loc_BE8951: MemLdRfVar from_stack_1.global_60
  loc_BE8954: LdPrVar
  loc_BE8956: LateMemCall
  loc_BE895C: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE8961: PopAdLdVar
  loc_BE8962: FLdPr Me
  loc_BE8965: MemLdRfVar from_stack_1.global_60
  loc_BE8968: LdPrVar
  loc_BE896A: LateMemCall
  loc_BE8970: LitStr "        <td colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio MargIzq""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE8973: LitI2_Byte &H5F
  loc_BE8975: CStrUI1
  loc_BE8977: FStStrNoPop var_A8
  loc_BE897A: ConcatStr
  loc_BE897B: FStStrNoPop var_AC
  loc_BE897E: LitStr """ height="""
  loc_BE8981: ConcatStr
  loc_BE8982: FStStrNoPop var_B0
  loc_BE8985: LitI2_Byte &H3C
  loc_BE8987: CStrUI1
  loc_BE8989: FStStrNoPop var_B4
  loc_BE898C: ConcatStr
  loc_BE898D: FStStrNoPop var_B8
  loc_BE8990: LitStr """ align=""left""><span class=""NombreMunicipio"">"
  loc_BE8993: ConcatStr
  loc_BE8994: FStStrNoPop var_BC
  loc_BE8997: LitStr "Municipalidad de Guaymallén"
  loc_BE899A: ConcatStr
  loc_BE899B: FStStrNoPop var_C0
  loc_BE899E: LitStr "</span><br>"
  loc_BE89A1: ConcatStr
  loc_BE89A2: CVarStr var_D0
  loc_BE89A5: PopAdLdVar
  loc_BE89A6: FLdPr Me
  loc_BE89A9: MemLdRfVar from_stack_1.global_60
  loc_BE89AC: LdPrVar
  loc_BE89AE: LateMemCall
  loc_BE89B4: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BE89C5: FFree1Var var_D0 = ""
  loc_BE89C8: LitStr "          "
  loc_BE89CB: LitStr "Dirección de Rentas"
  loc_BE89CE: ConcatStr
  loc_BE89CF: FStStrNoPop var_A8
  loc_BE89D2: LitStr "<br>"
  loc_BE89D5: ConcatStr
  loc_BE89D6: CVarStr var_D0
  loc_BE89D9: PopAdLdVar
  loc_BE89DA: FLdPr Me
  loc_BE89DD: MemLdRfVar from_stack_1.global_60
  loc_BE89E0: LdPrVar
  loc_BE89E2: LateMemCall
  loc_BE89E8: FFree1Str var_A8
  loc_BE89EB: FFree1Var var_D0 = ""
  loc_BE89EE: LitStr "          "
  loc_BE89F1: LitStr "Libertad 720 - Villa Nueva"
  loc_BE89F4: ConcatStr
  loc_BE89F5: FStStrNoPop var_A8
  loc_BE89F8: LitStr "<br>"
  loc_BE89FB: ConcatStr
  loc_BE89FC: CVarStr var_D0
  loc_BE89FF: PopAdLdVar
  loc_BE8A00: FLdPr Me
  loc_BE8A03: MemLdRfVar from_stack_1.global_60
  loc_BE8A06: LdPrVar
  loc_BE8A08: LateMemCall
  loc_BE8A0E: FFree1Str var_A8
  loc_BE8A11: FFree1Var var_D0 = ""
  loc_BE8A14: LitStr "          "
  loc_BE8A17: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_BE8A1A: ConcatStr
  loc_BE8A1B: FStStrNoPop var_A8
  loc_BE8A1E: LitStr "<br>"
  loc_BE8A21: ConcatStr
  loc_BE8A22: CVarStr var_D0
  loc_BE8A25: PopAdLdVar
  loc_BE8A26: FLdPr Me
  loc_BE8A29: MemLdRfVar from_stack_1.global_60
  loc_BE8A2C: LdPrVar
  loc_BE8A2E: LateMemCall
  loc_BE8A34: FFree1Str var_A8
  loc_BE8A37: FFree1Var var_D0 = ""
  loc_BE8A3A: LitStr "          "
  loc_BE8A3D: LitStr "C.U.I.T.: "
  loc_BE8A40: ConcatStr
  loc_BE8A41: FStStrNoPop var_A8
  loc_BE8A44: LitStr "30-99914707-7"
  loc_BE8A47: ConcatStr
  loc_BE8A48: FStStrNoPop var_AC
  loc_BE8A4B: LitStr "</td>"
  loc_BE8A4E: ConcatStr
  loc_BE8A4F: CVarStr var_D0
  loc_BE8A52: PopAdLdVar
  loc_BE8A53: FLdPr Me
  loc_BE8A56: MemLdRfVar from_stack_1.global_60
  loc_BE8A59: LdPrVar
  loc_BE8A5B: LateMemCall
  loc_BE8A61: FFreeStr var_A8 = ""
  loc_BE8A68: FFree1Var var_D0 = ""
  loc_BE8A6B: LitVarStr var_94, "        <td class=""NoBordeAbajo"" width=""205"" height=""31"" align=""center"" valign=""middle"">"
  loc_BE8A70: PopAdLdVar
  loc_BE8A71: FLdPr Me
  loc_BE8A74: MemLdRfVar from_stack_1.global_60
  loc_BE8A77: LdPrVar
  loc_BE8A79: LateMemCall
  loc_BE8A7F: LitVarStr var_94, "        <div>&nbsp;</div>"
  loc_BE8A84: PopAdLdVar
  loc_BE8A85: FLdPr Me
  loc_BE8A88: MemLdRfVar from_stack_1.global_60
  loc_BE8A8B: LdPrVar
  loc_BE8A8D: LateMemCall
  loc_BE8A93: LitVarStr var_94, "        <table width=""42" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""0"" class=""CorreoTabla"" >"
  loc_BE8A98: PopAdLdVar
  loc_BE8A99: FLdPr Me
  loc_BE8A9C: MemLdRfVar from_stack_1.global_60
  loc_BE8A9F: LdPrVar
  loc_BE8AA1: LateMemCall
  loc_BE8AA7: LitVarStr var_94, "          <tr>"
  loc_BE8AAC: PopAdLdVar
  loc_BE8AAD: FLdPr Me
  loc_BE8AB0: MemLdRfVar from_stack_1.global_60
  loc_BE8AB3: LdPrVar
  loc_BE8AB5: LateMemCall
  loc_BE8ABB: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-right:none"">C<br>O<br>R<br>R</td>"
  loc_BE8AC0: PopAdLdVar
  loc_BE8AC1: FLdPr Me
  loc_BE8AC4: MemLdRfVar from_stack_1.global_60
  loc_BE8AC7: LdPrVar
  loc_BE8AC9: LateMemCall
  loc_BE8ACF: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-left:none"">O<br>F<br>I<br>C</td>"
  loc_BE8AD4: PopAdLdVar
  loc_BE8AD5: FLdPr Me
  loc_BE8AD8: MemLdRfVar from_stack_1.global_60
  loc_BE8ADB: LdPrVar
  loc_BE8ADD: LateMemCall
  loc_BE8AE3: LitVarStr var_94, "            <td class=""CorreoCelda"">FRANQUEO A PAGAR</td>"
  loc_BE8AE8: PopAdLdVar
  loc_BE8AE9: FLdPr Me
  loc_BE8AEC: MemLdRfVar from_stack_1.global_60
  loc_BE8AEF: LdPrVar
  loc_BE8AF1: LateMemCall
  loc_BE8AF7: LitVarStr var_94, "          </tr>"
  loc_BE8AFC: PopAdLdVar
  loc_BE8AFD: FLdPr Me
  loc_BE8B00: MemLdRfVar from_stack_1.global_60
  loc_BE8B03: LdPrVar
  loc_BE8B05: LateMemCall
  loc_BE8B0B: LitVarStr var_94, "          <tr>"
  loc_BE8B10: PopAdLdVar
  loc_BE8B11: FLdPr Me
  loc_BE8B14: MemLdRfVar from_stack_1.global_60
  loc_BE8B17: LdPrVar
  loc_BE8B19: LateMemCall
  loc_BE8B1F: LitVarStr var_94, "            <td class=""CorreoCelda"">CTA CTE N&deg; 17438</td>"
  loc_BE8B24: PopAdLdVar
  loc_BE8B25: FLdPr Me
  loc_BE8B28: MemLdRfVar from_stack_1.global_60
  loc_BE8B2B: LdPrVar
  loc_BE8B2D: LateMemCall
  loc_BE8B33: LitVarStr var_94, "          </tr>"
  loc_BE8B38: PopAdLdVar
  loc_BE8B39: FLdPr Me
  loc_BE8B3C: MemLdRfVar from_stack_1.global_60
  loc_BE8B3F: LdPrVar
  loc_BE8B41: LateMemCall
  loc_BE8B47: LitVarStr var_94, "          <tr>"
  loc_BE8B4C: PopAdLdVar
  loc_BE8B4D: FLdPr Me
  loc_BE8B50: MemLdRfVar from_stack_1.global_60
  loc_BE8B53: LdPrVar
  loc_BE8B55: LateMemCall
  loc_BE8B5B: LitStr "            <td class=""CorreoCelda"">CUIT: "
  loc_BE8B5E: LitStr "30-99914707-7"
  loc_BE8B61: ConcatStr
  loc_BE8B62: FStStrNoPop var_A8
  loc_BE8B65: LitStr "</td>"
  loc_BE8B68: ConcatStr
  loc_BE8B69: CVarStr var_D0
  loc_BE8B6C: PopAdLdVar
  loc_BE8B6D: FLdPr Me
  loc_BE8B70: MemLdRfVar from_stack_1.global_60
  loc_BE8B73: LdPrVar
  loc_BE8B75: LateMemCall
  loc_BE8B7B: FFree1Str var_A8
  loc_BE8B7E: FFree1Var var_D0 = ""
  loc_BE8B81: LitVarStr var_94, "          </tr>"
  loc_BE8B86: PopAdLdVar
  loc_BE8B87: FLdPr Me
  loc_BE8B8A: MemLdRfVar from_stack_1.global_60
  loc_BE8B8D: LdPrVar
  loc_BE8B8F: LateMemCall
  loc_BE8B95: LitVarStr var_94, "          <tr>"
  loc_BE8B9A: PopAdLdVar
  loc_BE8B9B: FLdPr Me
  loc_BE8B9E: MemLdRfVar from_stack_1.global_60
  loc_BE8BA1: LdPrVar
  loc_BE8BA3: LateMemCall
  loc_BE8BA9: LitVarStr var_94, "            <td colspan=""3"" class=""CorreoCeldaFinal"">Devolver a Admisi&oacute;n Mendoza</td>"
  loc_BE8BAE: PopAdLdVar
  loc_BE8BAF: FLdPr Me
  loc_BE8BB2: MemLdRfVar from_stack_1.global_60
  loc_BE8BB5: LdPrVar
  loc_BE8BB7: LateMemCall
  loc_BE8BBD: LitVarStr var_94, "            </tr>"
  loc_BE8BC2: PopAdLdVar
  loc_BE8BC3: FLdPr Me
  loc_BE8BC6: MemLdRfVar from_stack_1.global_60
  loc_BE8BC9: LdPrVar
  loc_BE8BCB: LateMemCall
  loc_BE8BD1: LitVarStr var_94, "        </table>"
  loc_BE8BD6: PopAdLdVar
  loc_BE8BD7: FLdPr Me
  loc_BE8BDA: MemLdRfVar from_stack_1.global_60
  loc_BE8BDD: LdPrVar
  loc_BE8BDF: LateMemCall
  loc_BE8BE5: LitVarStr var_94, "        </td>"
  loc_BE8BEA: PopAdLdVar
  loc_BE8BEB: FLdPr Me
  loc_BE8BEE: MemLdRfVar from_stack_1.global_60
  loc_BE8BF1: LdPrVar
  loc_BE8BF3: LateMemCall
  loc_BE8BF9: LitVarStr var_94, "      </tr>"
  loc_BE8BFE: PopAdLdVar
  loc_BE8BFF: FLdPr Me
  loc_BE8C02: MemLdRfVar from_stack_1.global_60
  loc_BE8C05: LdPrVar
  loc_BE8C07: LateMemCall
  loc_BE8C0D: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE8C12: PopAdLdVar
  loc_BE8C13: FLdPr Me
  loc_BE8C16: MemLdRfVar from_stack_1.global_60
  loc_BE8C19: LdPrVar
  loc_BE8C1B: LateMemCall
  loc_BE8C21: LitVarStr var_94, "        <td colspan=""4"" align=""center"" valign=""middle"" class=""NombreMunicipio"">TASAS POR SERVICIOS</td>"
  loc_BE8C26: PopAdLdVar
  loc_BE8C27: FLdPr Me
  loc_BE8C2A: MemLdRfVar from_stack_1.global_60
  loc_BE8C2D: LdPrVar
  loc_BE8C2F: LateMemCall
  loc_BE8C35: LitVarStr var_94, "        <td width=""44"" align=""right"" class=""Encabezado MargDer""><strong>Orden:</strong></td>"
  loc_BE8C3A: PopAdLdVar
  loc_BE8C3B: FLdPr Me
  loc_BE8C3E: MemLdRfVar from_stack_1.global_60
  loc_BE8C41: LdPrVar
  loc_BE8C43: LateMemCall
  loc_BE8C49: FLdPr Me
  loc_BE8C4C: MemLdStr global_96
  loc_BE8C4F: FLdPr Me
  loc_BE8C52: MemLdStr global_92
  loc_BE8C55: AryLock
  loc_BE8C58: Ary1LdRf
  loc_BE8C59: FStR4 var_D8
  loc_BE8C5C: LitStr "        <td width=""48"" align=""left"" class=""Normal MargIzq"">"
  loc_BE8C5F: FMemLdR4 var_D8(80)
  loc_BE8C64: ConcatStr
  loc_BE8C65: FStStrNoPop var_A8
  loc_BE8C68: LitStr "</td>"
  loc_BE8C6B: ConcatStr
  loc_BE8C6C: CVarStr var_D0
  loc_BE8C6F: PopAdLdVar
  loc_BE8C70: FLdPr Me
  loc_BE8C73: MemLdRfVar from_stack_1.global_60
  loc_BE8C76: LdPrVar
  loc_BE8C78: LateMemCall
  loc_BE8C7E: FFree1Str var_A8
  loc_BE8C81: FFree1Var var_D0 = ""
  loc_BE8C84: LitVarStr var_94, "        <td rowspan=""2"" class=""NoBordeArriba"">"
  loc_BE8C89: PopAdLdVar
  loc_BE8C8A: FLdPr Me
  loc_BE8C8D: MemLdRfVar from_stack_1.global_60
  loc_BE8C90: LdPrVar
  loc_BE8C92: LateMemCall
  loc_BE8C98: LitVarStr var_94, "         <table align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BE8C9D: PopAdLdVar
  loc_BE8C9E: FLdPr Me
  loc_BE8CA1: MemLdRfVar from_stack_1.global_60
  loc_BE8CA4: LdPrVar
  loc_BE8CA6: LateMemCall
  loc_BE8CAC: LitStr "          <tr><td valign=""bottom"" align=""center"" class=""CodBarChica"">"
  loc_BE8CAF: LitI4 1
  loc_BE8CB4: FMemLdR4 var_D8(108)
  loc_BE8CB9: Ary1LdI4
  loc_BE8CBA: ConcatStr
  loc_BE8CBB: FStStrNoPop var_A8
  loc_BE8CBE: LitStr "</td></tr>"
  loc_BE8CC1: ConcatStr
  loc_BE8CC2: CVarStr var_D0
  loc_BE8CC5: PopAdLdVar
  loc_BE8CC6: FLdPr Me
  loc_BE8CC9: MemLdRfVar from_stack_1.global_60
  loc_BE8CCC: LdPrVar
  loc_BE8CCE: LateMemCall
  loc_BE8CD4: FFree1Str var_A8
  loc_BE8CD7: FFree1Var var_D0 = ""
  loc_BE8CDA: LitStr "          <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BE8CDD: LitI4 0
  loc_BE8CE2: FMemLdR4 var_D8(108)
  loc_BE8CE7: Ary1LdI4
  loc_BE8CE8: ConcatStr
  loc_BE8CE9: FStStrNoPop var_A8
  loc_BE8CEC: LitStr "</td></tr>"
  loc_BE8CEF: ConcatStr
  loc_BE8CF0: CVarStr var_D0
  loc_BE8CF3: PopAdLdVar
  loc_BE8CF4: FLdPr Me
  loc_BE8CF7: MemLdRfVar from_stack_1.global_60
  loc_BE8CFA: LdPrVar
  loc_BE8CFC: LateMemCall
  loc_BE8D02: FFree1Str var_A8
  loc_BE8D05: FFree1Var var_D0 = ""
  loc_BE8D08: LitVarStr var_94, "        </table></td>"
  loc_BE8D0D: PopAdLdVar
  loc_BE8D0E: FLdPr Me
  loc_BE8D11: MemLdRfVar from_stack_1.global_60
  loc_BE8D14: LdPrVar
  loc_BE8D16: LateMemCall
  loc_BE8D1C: LitVarStr var_94, "      </tr>"
  loc_BE8D21: PopAdLdVar
  loc_BE8D22: FLdPr Me
  loc_BE8D25: MemLdRfVar from_stack_1.global_60
  loc_BE8D28: LdPrVar
  loc_BE8D2A: LateMemCall
  loc_BE8D30: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE8D35: PopAdLdVar
  loc_BE8D36: FLdPr Me
  loc_BE8D39: MemLdRfVar from_stack_1.global_60
  loc_BE8D3C: LdPrVar
  loc_BE8D3E: LateMemCall
  loc_BE8D44: LitVarStr var_94, "        <td width=""59"" align=""right"" class=""Encabezado MargDer""><strong>Padr&oacute;n:</strong></td>"
  loc_BE8D49: PopAdLdVar
  loc_BE8D4A: FLdPr Me
  loc_BE8D4D: MemLdRfVar from_stack_1.global_60
  loc_BE8D50: LdPrVar
  loc_BE8D52: LateMemCall
  loc_BE8D58: LitStr "        <td width=""53"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE8D5B: FMemLdR4 var_D8(76)
  loc_BE8D60: ConcatStr
  loc_BE8D61: FStStrNoPop var_A8
  loc_BE8D64: LitStr "</strong></td>"
  loc_BE8D67: ConcatStr
  loc_BE8D68: CVarStr var_D0
  loc_BE8D6B: PopAdLdVar
  loc_BE8D6C: FLdPr Me
  loc_BE8D6F: MemLdRfVar from_stack_1.global_60
  loc_BE8D72: LdPrVar
  loc_BE8D74: LateMemCall
  loc_BE8D7A: FFree1Str var_A8
  loc_BE8D7D: FFree1Var var_D0 = ""
  loc_BE8D80: LitVarStr var_94, "        <td width=""43"" align=""right"" class=""Encabezado MargDer""><strong>Titular:</strong></td>"
  loc_BE8D85: PopAdLdVar
  loc_BE8D86: FLdPr Me
  loc_BE8D89: MemLdRfVar from_stack_1.global_60
  loc_BE8D8C: LdPrVar
  loc_BE8D8E: LateMemCall
  loc_BE8D94: LitStr "        <td height=""18"" colspan=""3"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE8D97: FMemLdR4 var_D8(4)
  loc_BE8D9C: ConcatStr
  loc_BE8D9D: FStStrNoPop var_A8
  loc_BE8DA0: LitStr "</strong>"
  loc_BE8DA3: ConcatStr
  loc_BE8DA4: CVarStr var_D0
  loc_BE8DA7: PopAdLdVar
  loc_BE8DA8: FLdPr Me
  loc_BE8DAB: MemLdRfVar from_stack_1.global_60
  loc_BE8DAE: LdPrVar
  loc_BE8DB0: LateMemCall
  loc_BE8DB6: FFree1Str var_A8
  loc_BE8DB9: FFree1Var var_D0 = ""
  loc_BE8DBC: FMemLdRf 0
  loc_BE8DC1: CVarRef
  loc_BE8DC6: FLdRfVar var_D0
  loc_BE8DC9: ImpAdCallFPR4  = Trim()
  loc_BE8DCE: FLdRfVar var_D0
  loc_BE8DD1: LitVarStr var_A4, vbNullString
  loc_BE8DD6: HardType
  loc_BE8DD7: NeVarBool
  loc_BE8DD9: FFree1Var var_D0 = ""
  loc_BE8DDC: BranchF loc_BE8E07
  loc_BE8DDF: LitStr "        (Poseedor: "
  loc_BE8DE2: FMemLdR4 var_D8(8)
  loc_BE8DE7: ConcatStr
  loc_BE8DE8: FStStrNoPop var_A8
  loc_BE8DEB: LitStr ")"
  loc_BE8DEE: ConcatStr
  loc_BE8DEF: CVarStr var_D0
  loc_BE8DF2: PopAdLdVar
  loc_BE8DF3: FLdPr Me
  loc_BE8DF6: MemLdRfVar from_stack_1.global_60
  loc_BE8DF9: LdPrVar
  loc_BE8DFB: LateMemCall
  loc_BE8E01: FFree1Str var_A8
  loc_BE8E04: FFree1Var var_D0 = ""
  loc_BE8E07: LitVarStr var_94, "        </td>"
  loc_BE8E0C: PopAdLdVar
  loc_BE8E0D: FLdPr Me
  loc_BE8E10: MemLdRfVar from_stack_1.global_60
  loc_BE8E13: LdPrVar
  loc_BE8E15: LateMemCall
  loc_BE8E1B: LitVarStr var_94, "      </tr>"
  loc_BE8E20: PopAdLdVar
  loc_BE8E21: FLdPr Me
  loc_BE8E24: MemLdRfVar from_stack_1.global_60
  loc_BE8E27: LdPrVar
  loc_BE8E29: LateMemCall
  loc_BE8E2F: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE8E34: PopAdLdVar
  loc_BE8E35: FLdPr Me
  loc_BE8E38: MemLdRfVar from_stack_1.global_60
  loc_BE8E3B: LdPrVar
  loc_BE8E3D: LateMemCall
  loc_BE8E43: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Postal:</strong></td>"
  loc_BE8E48: PopAdLdVar
  loc_BE8E49: FLdPr Me
  loc_BE8E4C: MemLdRfVar from_stack_1.global_60
  loc_BE8E4F: LdPrVar
  loc_BE8E51: LateMemCall
  loc_BE8E57: LitStr "        <td colspan=""6"" class=""DomiPostal"">Calle: "
  loc_BE8E5A: FMemLdR4 var_D8(12)
  loc_BE8E5F: ConcatStr
  loc_BE8E60: FStStrNoPop var_A8
  loc_BE8E63: LitStr " Nro: "
  loc_BE8E66: ConcatStr
  loc_BE8E67: FStStrNoPop var_AC
  loc_BE8E6A: FMemLdR4 var_D8(16)
  loc_BE8E6F: ConcatStr
  loc_BE8E70: CVarStr var_D0
  loc_BE8E73: PopAdLdVar
  loc_BE8E74: FLdPr Me
  loc_BE8E77: MemLdRfVar from_stack_1.global_60
  loc_BE8E7A: LdPrVar
  loc_BE8E7C: LateMemCall
  loc_BE8E82: FFreeStr var_A8 = ""
  loc_BE8E89: FFree1Var var_D0 = ""
  loc_BE8E8C: FMemLdR4 var_D8(20)
  loc_BE8E91: LitStr vbNullString
  loc_BE8E94: NeStr
  loc_BE8E96: BranchF loc_BE8EB7
  loc_BE8E99: LitStr " Barrio: "
  loc_BE8E9C: FMemLdR4 var_D8(20)
  loc_BE8EA1: ConcatStr
  loc_BE8EA2: CVarStr var_D0
  loc_BE8EA5: PopAdLdVar
  loc_BE8EA6: FLdPr Me
  loc_BE8EA9: MemLdRfVar from_stack_1.global_60
  loc_BE8EAC: LdPrVar
  loc_BE8EAE: LateMemCall
  loc_BE8EB4: FFree1Var var_D0 = ""
  loc_BE8EB7: FMemLdR4 var_D8(24)
  loc_BE8EBC: LitStr vbNullString
  loc_BE8EBF: NeStr
  loc_BE8EC1: BranchF loc_BE8EE2
  loc_BE8EC4: LitStr " Mza: "
  loc_BE8EC7: FMemLdR4 var_D8(24)
  loc_BE8ECC: ConcatStr
  loc_BE8ECD: CVarStr var_D0
  loc_BE8ED0: PopAdLdVar
  loc_BE8ED1: FLdPr Me
  loc_BE8ED4: MemLdRfVar from_stack_1.global_60
  loc_BE8ED7: LdPrVar
  loc_BE8ED9: LateMemCall
  loc_BE8EDF: FFree1Var var_D0 = ""
  loc_BE8EE2: FMemLdR4 var_D8(28)
  loc_BE8EE7: LitStr vbNullString
  loc_BE8EEA: NeStr
  loc_BE8EEC: BranchF loc_BE8F0D
  loc_BE8EEF: LitStr " Casa: "
  loc_BE8EF2: FMemLdR4 var_D8(28)
  loc_BE8EF7: ConcatStr
  loc_BE8EF8: CVarStr var_D0
  loc_BE8EFB: PopAdLdVar
  loc_BE8EFC: FLdPr Me
  loc_BE8EFF: MemLdRfVar from_stack_1.global_60
  loc_BE8F02: LdPrVar
  loc_BE8F04: LateMemCall
  loc_BE8F0A: FFree1Var var_D0 = ""
  loc_BE8F0D: FMemLdR4 var_D8(32)
  loc_BE8F12: LitStr vbNullString
  loc_BE8F15: NeStr
  loc_BE8F17: BranchF loc_BE8F31
  loc_BE8F1A: FMemLdRf 0
  loc_BE8F1F: CDargRef
  loc_BE8F23: FLdPr Me
  loc_BE8F26: MemLdRfVar from_stack_1.global_60
  loc_BE8F29: LdPrVar
  loc_BE8F2B: LateMemCall
  loc_BE8F31: LitStr "         <br>Loc: "
  loc_BE8F34: FMemLdR4 var_D8(36)
  loc_BE8F39: ConcatStr
  loc_BE8F3A: FStStrNoPop var_A8
  loc_BE8F3D: LitStr " CP: "
  loc_BE8F40: ConcatStr
  loc_BE8F41: FStStrNoPop var_AC
  loc_BE8F44: FMemLdR4 var_D8(40)
  loc_BE8F49: ConcatStr
  loc_BE8F4A: FStStrNoPop var_B0
  loc_BE8F4D: LitStr "</td>"
  loc_BE8F50: ConcatStr
  loc_BE8F51: CVarStr var_D0
  loc_BE8F54: PopAdLdVar
  loc_BE8F55: FLdPr Me
  loc_BE8F58: MemLdRfVar from_stack_1.global_60
  loc_BE8F5B: LdPrVar
  loc_BE8F5D: LateMemCall
  loc_BE8F63: FFreeStr var_A8 = "": var_AC = ""
  loc_BE8F6C: FFree1Var var_D0 = ""
  loc_BE8F6F: LitVarStr var_94, "      </tr>"
  loc_BE8F74: PopAdLdVar
  loc_BE8F75: FLdPr Me
  loc_BE8F78: MemLdRfVar from_stack_1.global_60
  loc_BE8F7B: LdPrVar
  loc_BE8F7D: LateMemCall
  loc_BE8F83: LitVarStr var_94, "        <tr valign=""top"">"
  loc_BE8F88: PopAdLdVar
  loc_BE8F89: FLdPr Me
  loc_BE8F8C: MemLdRfVar from_stack_1.global_60
  loc_BE8F8F: LdPrVar
  loc_BE8F91: LateMemCall
  loc_BE8F97: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Real:</strong></td>"
  loc_BE8F9C: PopAdLdVar
  loc_BE8F9D: FLdPr Me
  loc_BE8FA0: MemLdRfVar from_stack_1.global_60
  loc_BE8FA3: LdPrVar
  loc_BE8FA5: LateMemCall
  loc_BE8FAB: LitStr "        <td colspan=""6"" class=""DomiReal"">Calle: "
  loc_BE8FAE: FMemLdR4 var_D8(44)
  loc_BE8FB3: ConcatStr
  loc_BE8FB4: FStStrNoPop var_A8
  loc_BE8FB7: LitStr " Nro: "
  loc_BE8FBA: ConcatStr
  loc_BE8FBB: FStStrNoPop var_AC
  loc_BE8FBE: FMemLdR4 var_D8(48)
  loc_BE8FC3: ConcatStr
  loc_BE8FC4: CVarStr var_D0
  loc_BE8FC7: PopAdLdVar
  loc_BE8FC8: FLdPr Me
  loc_BE8FCB: MemLdRfVar from_stack_1.global_60
  loc_BE8FCE: LdPrVar
  loc_BE8FD0: LateMemCall
  loc_BE8FD6: FFreeStr var_A8 = ""
  loc_BE8FDD: FFree1Var var_D0 = ""
  loc_BE8FE0: FMemLdR4 var_D8(52)
  loc_BE8FE5: LitStr vbNullString
  loc_BE8FE8: NeStr
  loc_BE8FEA: BranchF loc_BE900B
  loc_BE8FED: LitStr " Barrio: "
  loc_BE8FF0: FMemLdR4 var_D8(52)
  loc_BE8FF5: ConcatStr
  loc_BE8FF6: CVarStr var_D0
  loc_BE8FF9: PopAdLdVar
  loc_BE8FFA: FLdPr Me
  loc_BE8FFD: MemLdRfVar from_stack_1.global_60
  loc_BE9000: LdPrVar
  loc_BE9002: LateMemCall
  loc_BE9008: FFree1Var var_D0 = ""
  loc_BE900B: FMemLdR4 var_D8(56)
  loc_BE9010: LitStr vbNullString
  loc_BE9013: NeStr
  loc_BE9015: BranchF loc_BE9036
  loc_BE9018: LitStr " Mza: "
  loc_BE901B: FMemLdR4 var_D8(56)
  loc_BE9020: ConcatStr
  loc_BE9021: CVarStr var_D0
  loc_BE9024: PopAdLdVar
  loc_BE9025: FLdPr Me
  loc_BE9028: MemLdRfVar from_stack_1.global_60
  loc_BE902B: LdPrVar
  loc_BE902D: LateMemCall
  loc_BE9033: FFree1Var var_D0 = ""
  loc_BE9036: FMemLdR4 var_D8(60)
  loc_BE903B: LitStr vbNullString
  loc_BE903E: NeStr
  loc_BE9040: BranchF loc_BE9061
  loc_BE9043: LitStr " Casa: "
  loc_BE9046: FMemLdR4 var_D8(60)
  loc_BE904B: ConcatStr
  loc_BE904C: CVarStr var_D0
  loc_BE904F: PopAdLdVar
  loc_BE9050: FLdPr Me
  loc_BE9053: MemLdRfVar from_stack_1.global_60
  loc_BE9056: LdPrVar
  loc_BE9058: LateMemCall
  loc_BE905E: FFree1Var var_D0 = ""
  loc_BE9061: FMemLdR4 var_D8(64)
  loc_BE9066: LitStr vbNullString
  loc_BE9069: NeStr
  loc_BE906B: BranchF loc_BE9085
  loc_BE906E: FMemLdRf 0
  loc_BE9073: CDargRef
  loc_BE9077: FLdPr Me
  loc_BE907A: MemLdRfVar from_stack_1.global_60
  loc_BE907D: LdPrVar
  loc_BE907F: LateMemCall
  loc_BE9085: LitStr "         <br>Loc: "
  loc_BE9088: FMemLdR4 var_D8(68)
  loc_BE908D: ConcatStr
  loc_BE908E: FStStrNoPop var_A8
  loc_BE9091: LitStr " CP: "
  loc_BE9094: ConcatStr
  loc_BE9095: FStStrNoPop var_AC
  loc_BE9098: FMemLdR4 var_D8(72)
  loc_BE909D: ConcatStr
  loc_BE909E: FStStrNoPop var_B0
  loc_BE90A1: LitStr "<br>Nomenclatura catastral: "
  loc_BE90A4: ConcatStr
  loc_BE90A5: FStStrNoPop var_B4
  loc_BE90A8: FMemLdR4 var_D8(100)
  loc_BE90AD: ConcatStr
  loc_BE90AE: FStStrNoPop var_B8
  loc_BE90B1: LitStr "</td>"
  loc_BE90B4: ConcatStr
  loc_BE90B5: CVarStr var_D0
  loc_BE90B8: PopAdLdVar
  loc_BE90B9: FLdPr Me
  loc_BE90BC: MemLdRfVar from_stack_1.global_60
  loc_BE90BF: LdPrVar
  loc_BE90C1: LateMemCall
  loc_BE90C7: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BE90D4: FFree1Var var_D0 = ""
  loc_BE90D7: LitVarStr var_94, "      </tr>"
  loc_BE90DC: PopAdLdVar
  loc_BE90DD: FLdPr Me
  loc_BE90E0: MemLdRfVar from_stack_1.global_60
  loc_BE90E3: LdPrVar
  loc_BE90E5: LateMemCall
  loc_BE90EB: LitVarStr var_94, "    </table>"
  loc_BE90F0: PopAdLdVar
  loc_BE90F1: FLdPr Me
  loc_BE90F4: MemLdRfVar from_stack_1.global_60
  loc_BE90F7: LdPrVar
  loc_BE90F9: LateMemCall
  loc_BE90FF: LitI4 0
  loc_BE9104: FStR4 var_D8
  loc_BE9107: AryUnlock
  loc_BE910A: ExitProcHresult
End Function

Private Function Proc_324_24_B13500() 'B13500
  'Data Table: 4C4E5C
  loc_B132A0: FLdPr Me
  loc_B132A3: MemLdStr global_96
  loc_B132A6: FLdPr Me
  loc_B132A9: MemLdStr global_92
  loc_B132AC: AryLock
  loc_B132AF: Ary1LdRf
  loc_B132B0: FStR4 var_8C
  loc_B132B3: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B132B8: PopAdLdVar
  loc_B132B9: FLdPr Me
  loc_B132BC: MemLdRfVar from_stack_1.global_60
  loc_B132BF: LdPrVar
  loc_B132C1: LateMemCall
  loc_B132C7: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B132CC: PopAdLdVar
  loc_B132CD: FLdPr Me
  loc_B132D0: MemLdRfVar from_stack_1.global_60
  loc_B132D3: LdPrVar
  loc_B132D5: LateMemCall
  loc_B132DB: LitVarStr var_9C, "    <td width=""36" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B132E0: PopAdLdVar
  loc_B132E1: FLdPr Me
  loc_B132E4: MemLdRfVar from_stack_1.global_60
  loc_B132E7: LdPrVar
  loc_B132E9: LateMemCall
  loc_B132EF: FMemLdR4 var_8C(104)
  loc_B132F4: CR8Str
  loc_B132F6: LitI2_Byte 0
  loc_B132F8: CR8I2
  loc_B132F9: GtR4
  loc_B132FA: BranchF loc_B13311
  loc_B132FD: LitVarStr var_9C, "      <p>Seg&uacute;n nuestros registros esta cuenta registra deuda. Existen convenientes planes de pago.<br>Evite cobro por v&iacute;a judicial!!!</p>"
  loc_B13302: PopAdLdVar
  loc_B13303: FLdPr Me
  loc_B13306: MemLdRfVar from_stack_1.global_60
  loc_B13309: LdPrVar
  loc_B1330B: LateMemCall
  loc_B13311: LitVarStr var_9C, "      <p><strong>SOLO SU PAGO EN T&Eacute;RMINO NOS PERMITE CUMPLIR</strong><br />"
  loc_B13316: PopAdLdVar
  loc_B13317: FLdPr Me
  loc_B1331A: MemLdRfVar from_stack_1.global_60
  loc_B1331D: LdPrVar
  loc_B1331F: LateMemCall
  loc_B13325: LitVarStr var_9C, "        SR. CAJERO:<br /><strong>NO COBRAR BOLETO BIMESTRAL DESPU&Eacute;S DEL 31/12/2022.</strong></p>"
  loc_B1332A: PopAdLdVar
  loc_B1332B: FLdPr Me
  loc_B1332E: MemLdRfVar from_stack_1.global_60
  loc_B13331: LdPrVar
  loc_B13333: LateMemCall
  loc_B13339: LitVarStr var_9C, "      <p>Los periodos bimestrales podr&aacute;n pagarse en las Entidades autorizadas hasta la fecha arriba indicada, luego de su vencimiento.<br>"
  loc_B1333E: PopAdLdVar
  loc_B1333F: FLdPr Me
  loc_B13342: MemLdRfVar from_stack_1.global_60
  loc_B13345: LdPrVar
  loc_B13347: LateMemCall
  loc_B1334D: LitVarStr var_9C, "        El recargo por morosidad se liquidar&aacute; en el pr&oacute;ximo periodo.</p>"
  loc_B13352: PopAdLdVar
  loc_B13353: FLdPr Me
  loc_B13356: MemLdRfVar from_stack_1.global_60
  loc_B13359: LdPrVar
  loc_B1335B: LateMemCall
  loc_B13361: LitVarStr var_9C, "      <p><strong>SIN TICKET DE CAJA NO ACREDITA PAGO del periodo correspondiente.</strong></p>"
  loc_B13366: PopAdLdVar
  loc_B13367: FLdPr Me
  loc_B1336A: MemLdRfVar from_stack_1.global_60
  loc_B1336D: LdPrVar
  loc_B1336F: LateMemCall
  loc_B13375: LitVarStr var_9C, "    </td>"
  loc_B1337A: PopAdLdVar
  loc_B1337B: FLdPr Me
  loc_B1337E: MemLdRfVar from_stack_1.global_60
  loc_B13381: LdPrVar
  loc_B13383: LateMemCall
  loc_B13389: LitVarStr var_9C, "    <td width=""37" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B1338E: PopAdLdVar
  loc_B1338F: FLdPr Me
  loc_B13392: MemLdRfVar from_stack_1.global_60
  loc_B13395: LdPrVar
  loc_B13397: LateMemCall
  loc_B1339D: LitStr "      <p>C&Oacute;DIGO DE R Y B: <strong>"
  loc_B133A0: FMemLdR4 var_8C(88)
  loc_B133A5: ConcatStr
  loc_B133A6: FStStrNoPop var_B0
  loc_B133A9: LitStr " - "
  loc_B133AC: ConcatStr
  loc_B133AD: FStStrNoPop var_B4
  loc_B133B0: FMemLdR4 var_8C(92)
  loc_B133B5: ConcatStr
  loc_B133B6: FStStrNoPop var_B8
  loc_B133B9: LitStr "</strong></p>"
  loc_B133BC: ConcatStr
  loc_B133BD: CVarStr var_C8
  loc_B133C0: PopAdLdVar
  loc_B133C1: FLdPr Me
  loc_B133C4: MemLdRfVar from_stack_1.global_60
  loc_B133C7: LdPrVar
  loc_B133C9: LateMemCall
  loc_B133CF: FFreeStr var_B0 = "": var_B4 = ""
  loc_B133D8: FFree1Var var_C8 = ""
  loc_B133DB: LitStr "      <p>AVAL&Uacute;O MUNICIPAL: <strong>"
  loc_B133DE: FMemLdR4 var_8C(96)
  loc_B133E3: ConcatStr
  loc_B133E4: FStStrNoPop var_B0
  loc_B133E7: LitStr "</strong></p>"
  loc_B133EA: ConcatStr
  loc_B133EB: CVarStr var_C8
  loc_B133EE: PopAdLdVar
  loc_B133EF: FLdPr Me
  loc_B133F2: MemLdRfVar from_stack_1.global_60
  loc_B133F5: LdPrVar
  loc_B133F7: LateMemCall
  loc_B133FD: FFree1Str var_B0
  loc_B13400: FFree1Var var_C8 = ""
  loc_B13403: LitVarStr var_9C, "      <p>ENTIDADES AUTORIZADAS PARA EL COBRO:<br>"
  loc_B13408: PopAdLdVar
  loc_B13409: FLdPr Me
  loc_B1340C: MemLdRfVar from_stack_1.global_60
  loc_B1340F: LdPrVar
  loc_B13411: LateMemCall
  loc_B13417: LitVarStr var_9C, "        Bancos: Supervielle/Macro/Credicoop/Nación<br>"
  loc_B1341C: PopAdLdVar
  loc_B1341D: FLdPr Me
  loc_B13420: MemLdRfVar from_stack_1.global_60
  loc_B13423: LdPrVar
  loc_B13425: LateMemCall
  loc_B1342B: LitVarStr var_9C, "        Rapipago - Montemar C&iacute;a. Fiananc. - Pago F&aacute;cil<br>"
  loc_B13430: PopAdLdVar
  loc_B13431: FLdPr Me
  loc_B13434: MemLdRfVar from_stack_1.global_60
  loc_B13437: LdPrVar
  loc_B13439: LateMemCall
  loc_B1343F: LitVarStr var_9C, "        Pague en www.pagomiscuentas.com o ingresando a Banelco en pagomiscuentas.com.ar.<br>"
  loc_B13444: PopAdLdVar
  loc_B13445: FLdPr Me
  loc_B13448: MemLdRfVar from_stack_1.global_60
  loc_B1344B: LdPrVar
  loc_B1344D: LateMemCall
  loc_B13453: LitVarStr var_9C, "        Link Pagos: Pague ingresando a www.linkpagos.com.ar desde un cajero LINK, las 24hs todos los d&iacute;as del a&ntilde;o."
  loc_B13458: PopAdLdVar
  loc_B13459: FLdPr Me
  loc_B1345C: MemLdRfVar from_stack_1.global_60
  loc_B1345F: LdPrVar
  loc_B13461: LateMemCall
  loc_B13467: LitVarStr var_9C, "      </p>"
  loc_B1346C: PopAdLdVar
  loc_B1346D: FLdPr Me
  loc_B13470: MemLdRfVar from_stack_1.global_60
  loc_B13473: LdPrVar
  loc_B13475: LateMemCall
  loc_B1347B: LitVarStr var_9C, "    </td>"
  loc_B13480: PopAdLdVar
  loc_B13481: FLdPr Me
  loc_B13484: MemLdRfVar from_stack_1.global_60
  loc_B13487: LdPrVar
  loc_B13489: LateMemCall
  loc_B1348F: LitVarStr var_9C, "  </tr>"
  loc_B13494: PopAdLdVar
  loc_B13495: FLdPr Me
  loc_B13498: MemLdRfVar from_stack_1.global_60
  loc_B1349B: LdPrVar
  loc_B1349D: LateMemCall
  loc_B134A3: LitVarStr var_9C, "  </table>"
  loc_B134A8: PopAdLdVar
  loc_B134A9: FLdPr Me
  loc_B134AC: MemLdRfVar from_stack_1.global_60
  loc_B134AF: LdPrVar
  loc_B134B1: LateMemCall
  loc_B134B7: LitVarStr var_9C, "  </td>"
  loc_B134BC: PopAdLdVar
  loc_B134BD: FLdPr Me
  loc_B134C0: MemLdRfVar from_stack_1.global_60
  loc_B134C3: LdPrVar
  loc_B134C5: LateMemCall
  loc_B134CB: LitVarStr var_9C, "  </tr>"
  loc_B134D0: PopAdLdVar
  loc_B134D1: FLdPr Me
  loc_B134D4: MemLdRfVar from_stack_1.global_60
  loc_B134D7: LdPrVar
  loc_B134D9: LateMemCall
  loc_B134DF: LitVarStr var_9C, "</table>"
  loc_B134E4: PopAdLdVar
  loc_B134E5: FLdPr Me
  loc_B134E8: MemLdRfVar from_stack_1.global_60
  loc_B134EB: LdPrVar
  loc_B134ED: LateMemCall
  loc_B134F3: LitI4 0
  loc_B134F8: FStR4 var_8C
  loc_B134FB: AryUnlock
  loc_B134FE: ExitProcHresult
End Function

Private Function Proc_324_25_BDB07C() 'BDB07C
  'Data Table: 4C4E5C
  loc_BDA900: LitVarStr var_94, "<table align=""center"" height=""500"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_BDA905: PopAdLdVar
  loc_BDA906: FLdPr Me
  loc_BDA909: MemLdRfVar from_stack_1.global_60
  loc_BDA90C: LdPrVar
  loc_BDA90E: LateMemCall
  loc_BDA914: FLdPr Me
  loc_BDA917: MemLdStr global_96
  loc_BDA91A: FLdPr Me
  loc_BDA91D: MemLdStr global_92
  loc_BDA920: AryLock
  loc_BDA923: Ary1LdRf
  loc_BDA924: FStR4 var_AC
  loc_BDA927: LitI2_Byte 0
  loc_BDA929: CUI1I2
  loc_BDA92B: FLdPr Me
  loc_BDA92E: MemLdRfVar from_stack_1.global_100
  loc_BDA931: FMemLdR4 var_AC(112)
  loc_BDA936: LitI2_Byte 1
  loc_BDA938: FnUBound
  loc_BDA93A: CUI1I4
  loc_BDA93C: ForUI1 var_B0
  loc_BDA942: FLdPr Me
  loc_BDA945: MemLdUI1 global_100
  loc_BDA949: CI2UI1
  loc_BDA94B: LitI2_Byte 0
  loc_BDA94D: EqI2
  loc_BDA94E: FLdPr Me
  loc_BDA951: MemLdUI1 global_100
  loc_BDA955: CI4UI1
  loc_BDA956: FMemLdR4 var_AC(112)
  loc_BDA95B: Ary1LdPr
  loc_BDA95C: MemLdStr global_12
  loc_BDA95F: LitStr vbNullString
  loc_BDA962: EqStr
  loc_BDA964: AndI4
  loc_BDA965: BranchF loc_BDA96B
  loc_BDA968: Branch loc_BDB061
  loc_BDA96B: LitVarStr var_94, "  <tr>"
  loc_BDA970: PopAdLdVar
  loc_BDA971: FLdPr Me
  loc_BDA974: MemLdRfVar from_stack_1.global_60
  loc_BDA977: LdPrVar
  loc_BDA979: LateMemCall
  loc_BDA97F: LitVarStr var_94, "    <td valign=""top"" height=""111"">"
  loc_BDA984: PopAdLdVar
  loc_BDA985: FLdPr Me
  loc_BDA988: MemLdRfVar from_stack_1.global_60
  loc_BDA98B: LdPrVar
  loc_BDA98D: LateMemCall
  loc_BDA993: FLdPr Me
  loc_BDA996: MemLdUI1 global_100
  loc_BDA99A: CI4UI1
  loc_BDA99B: FMemLdR4 var_AC(112)
  loc_BDA9A0: Ary1LdPr
  loc_BDA9A1: MemLdI2 global_0
  loc_BDA9A4: BranchF loc_BDA9BE
  loc_BDA9A7: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BDA9AC: PopAdLdVar
  loc_BDA9AD: FLdPr Me
  loc_BDA9B0: MemLdRfVar from_stack_1.global_60
  loc_BDA9B3: LdPrVar
  loc_BDA9B5: LateMemCall
  loc_BDA9BB: Branch loc_BDA9E6
  loc_BDA9BE: LitVarStr var_94, "    <br>"
  loc_BDA9C3: PopAdLdVar
  loc_BDA9C4: FLdPr Me
  loc_BDA9C7: MemLdRfVar from_stack_1.global_60
  loc_BDA9CA: LdPrVar
  loc_BDA9CC: LateMemCall
  loc_BDA9D2: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" style=""border:2px solid black"" >"
  loc_BDA9D7: PopAdLdVar
  loc_BDA9D8: FLdPr Me
  loc_BDA9DB: MemLdRfVar from_stack_1.global_60
  loc_BDA9DE: LdPrVar
  loc_BDA9E0: LateMemCall
  loc_BDA9E6: LitVarStr var_94, "      <tr align=""center"" class=""Encabezado"">"
  loc_BDA9EB: PopAdLdVar
  loc_BDA9EC: FLdPr Me
  loc_BDA9EF: MemLdRfVar from_stack_1.global_60
  loc_BDA9F2: LdPrVar
  loc_BDA9F4: LateMemCall
  loc_BDA9FA: LitVarStr var_94, "        <td>TASA GRAL.</td>"
  loc_BDA9FF: PopAdLdVar
  loc_BDAA00: FLdPr Me
  loc_BDAA03: MemLdRfVar from_stack_1.global_60
  loc_BDAA06: LdPrVar
  loc_BDAA08: LateMemCall
  loc_BDAA0E: LitVarStr var_94, "        <td>INF. URBANA</td>"
  loc_BDAA13: PopAdLdVar
  loc_BDAA14: FLdPr Me
  loc_BDAA17: MemLdRfVar from_stack_1.global_60
  loc_BDAA1A: LdPrVar
  loc_BDAA1C: LateMemCall
  loc_BDAA22: LitVarStr var_94, "        <td>AL. P&Uacute;BLICO</td>"
  loc_BDAA27: PopAdLdVar
  loc_BDAA28: FLdPr Me
  loc_BDAA2B: MemLdRfVar from_stack_1.global_60
  loc_BDAA2E: LdPrVar
  loc_BDAA30: LateMemCall
  loc_BDAA36: LitVarStr var_94, "        <td>SERV. AGUA</td>"
  loc_BDAA3B: PopAdLdVar
  loc_BDAA3C: FLdPr Me
  loc_BDAA3F: MemLdRfVar from_stack_1.global_60
  loc_BDAA42: LdPrVar
  loc_BDAA44: LateMemCall
  loc_BDAA4A: LitVarStr var_94, "        <td>BOMB. GLLEN.</td>"
  loc_BDAA4F: PopAdLdVar
  loc_BDAA50: FLdPr Me
  loc_BDAA53: MemLdRfVar from_stack_1.global_60
  loc_BDAA56: LdPrVar
  loc_BDAA58: LateMemCall
  loc_BDAA5E: LitVarStr var_94, "        <td>BONIF./DESC.</td>"
  loc_BDAA63: PopAdLdVar
  loc_BDAA64: FLdPr Me
  loc_BDAA67: MemLdRfVar from_stack_1.global_60
  loc_BDAA6A: LdPrVar
  loc_BDAA6C: LateMemCall
  loc_BDAA72: LitVarStr var_94, "        <td>RECARGOS</td>"
  loc_BDAA77: PopAdLdVar
  loc_BDAA78: FLdPr Me
  loc_BDAA7B: MemLdRfVar from_stack_1.global_60
  loc_BDAA7E: LdPrVar
  loc_BDAA80: LateMemCall
  loc_BDAA86: LitVarStr var_94, "        <td>C. EMISI&Oacute;N</td>"
  loc_BDAA8B: PopAdLdVar
  loc_BDAA8C: FLdPr Me
  loc_BDAA8F: MemLdRfVar from_stack_1.global_60
  loc_BDAA92: LdPrVar
  loc_BDAA94: LateMemCall
  loc_BDAA9A: LitVarStr var_94, "        <td>TOTAL A PAGAR</td>"
  loc_BDAA9F: PopAdLdVar
  loc_BDAAA0: FLdPr Me
  loc_BDAAA3: MemLdRfVar from_stack_1.global_60
  loc_BDAAA6: LdPrVar
  loc_BDAAA8: LateMemCall
  loc_BDAAAE: LitVarStr var_94, "      </tr>"
  loc_BDAAB3: PopAdLdVar
  loc_BDAAB4: FLdPr Me
  loc_BDAAB7: MemLdRfVar from_stack_1.global_60
  loc_BDAABA: LdPrVar
  loc_BDAABC: LateMemCall
  loc_BDAAC2: LitVarStr var_94, "      <tr class=""NormalBloqueFin"" valign=""top"" align=""right"">"
  loc_BDAAC7: PopAdLdVar
  loc_BDAAC8: FLdPr Me
  loc_BDAACB: MemLdRfVar from_stack_1.global_60
  loc_BDAACE: LdPrVar
  loc_BDAAD0: LateMemCall
  loc_BDAAD6: FLdPr Me
  loc_BDAAD9: MemLdUI1 global_100
  loc_BDAADD: CI4UI1
  loc_BDAADE: FMemLdR4 var_AC(112)
  loc_BDAAE3: AryLock
  loc_BDAAE6: Ary1LdRf
  loc_BDAAE7: FStR4 var_B8
  loc_BDAAEA: LitStr vbNullString
  loc_BDAAED: LitI2_Byte 0
  loc_BDAAEF: LitI2_Byte 0
  loc_BDAAF1: LitI2_Byte 0
  loc_BDAAF3: LitI4 0
  loc_BDAAF8: FMemLdR4 var_B8(28)
  loc_BDAAFD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDAB02: CVarStr var_C8
  loc_BDAB05: PopAdLdVar
  loc_BDAB06: FLdPr Me
  loc_BDAB09: MemLdRfVar from_stack_1.global_60
  loc_BDAB0C: LdPrVar
  loc_BDAB0E: LateMemCall
  loc_BDAB14: FFree1Var var_C8 = ""
  loc_BDAB17: LitStr vbNullString
  loc_BDAB1A: LitI2_Byte 0
  loc_BDAB1C: LitI2_Byte 0
  loc_BDAB1E: LitI2_Byte 0
  loc_BDAB20: LitI4 0
  loc_BDAB25: FMemLdR4 var_B8(32)
  loc_BDAB2A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDAB2F: CVarStr var_C8
  loc_BDAB32: PopAdLdVar
  loc_BDAB33: FLdPr Me
  loc_BDAB36: MemLdRfVar from_stack_1.global_60
  loc_BDAB39: LdPrVar
  loc_BDAB3B: LateMemCall
  loc_BDAB41: FFree1Var var_C8 = ""
  loc_BDAB44: LitStr vbNullString
  loc_BDAB47: LitI2_Byte 0
  loc_BDAB49: LitI2_Byte 0
  loc_BDAB4B: LitI2_Byte 0
  loc_BDAB4D: LitI4 0
  loc_BDAB52: FMemLdR4 var_B8(36)
  loc_BDAB57: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDAB5C: CVarStr var_C8
  loc_BDAB5F: PopAdLdVar
  loc_BDAB60: FLdPr Me
  loc_BDAB63: MemLdRfVar from_stack_1.global_60
  loc_BDAB66: LdPrVar
  loc_BDAB68: LateMemCall
  loc_BDAB6E: FFree1Var var_C8 = ""
  loc_BDAB71: LitStr vbNullString
  loc_BDAB74: LitI2_Byte 0
  loc_BDAB76: LitI2_Byte 0
  loc_BDAB78: LitI2_Byte 0
  loc_BDAB7A: LitI4 0
  loc_BDAB7F: FMemLdR4 var_B8(40)
  loc_BDAB84: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDAB89: CVarStr var_C8
  loc_BDAB8C: PopAdLdVar
  loc_BDAB8D: FLdPr Me
  loc_BDAB90: MemLdRfVar from_stack_1.global_60
  loc_BDAB93: LdPrVar
  loc_BDAB95: LateMemCall
  loc_BDAB9B: FFree1Var var_C8 = ""
  loc_BDAB9E: LitStr vbNullString
  loc_BDABA1: LitI2_Byte 0
  loc_BDABA3: LitI2_Byte 0
  loc_BDABA5: LitI2_Byte 0
  loc_BDABA7: LitI4 0
  loc_BDABAC: FMemLdR4 var_B8(44)
  loc_BDABB1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDABB6: CVarStr var_C8
  loc_BDABB9: PopAdLdVar
  loc_BDABBA: FLdPr Me
  loc_BDABBD: MemLdRfVar from_stack_1.global_60
  loc_BDABC0: LdPrVar
  loc_BDABC2: LateMemCall
  loc_BDABC8: FFree1Var var_C8 = ""
  loc_BDABCB: LitStr vbNullString
  loc_BDABCE: LitI2_Byte 0
  loc_BDABD0: LitI2_Byte 0
  loc_BDABD2: LitI2_Byte 0
  loc_BDABD4: LitI4 0
  loc_BDABD9: FMemLdR4 var_B8(48)
  loc_BDABDE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDABE3: CVarStr var_C8
  loc_BDABE6: PopAdLdVar
  loc_BDABE7: FLdPr Me
  loc_BDABEA: MemLdRfVar from_stack_1.global_60
  loc_BDABED: LdPrVar
  loc_BDABEF: LateMemCall
  loc_BDABF5: FFree1Var var_C8 = ""
  loc_BDABF8: LitStr vbNullString
  loc_BDABFB: LitI2_Byte 0
  loc_BDABFD: LitI2_Byte 0
  loc_BDABFF: LitI2_Byte 0
  loc_BDAC01: LitI4 0
  loc_BDAC06: FMemLdR4 var_B8(52)
  loc_BDAC0B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDAC10: CVarStr var_C8
  loc_BDAC13: PopAdLdVar
  loc_BDAC14: FLdPr Me
  loc_BDAC17: MemLdRfVar from_stack_1.global_60
  loc_BDAC1A: LdPrVar
  loc_BDAC1C: LateMemCall
  loc_BDAC22: FFree1Var var_C8 = ""
  loc_BDAC25: LitStr vbNullString
  loc_BDAC28: LitI2_Byte 0
  loc_BDAC2A: LitI2_Byte 0
  loc_BDAC2C: LitI2_Byte 0
  loc_BDAC2E: LitI4 0
  loc_BDAC33: FMemLdR4 var_B8(56)
  loc_BDAC38: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDAC3D: CVarStr var_C8
  loc_BDAC40: PopAdLdVar
  loc_BDAC41: FLdPr Me
  loc_BDAC44: MemLdRfVar from_stack_1.global_60
  loc_BDAC47: LdPrVar
  loc_BDAC49: LateMemCall
  loc_BDAC4F: FFree1Var var_C8 = ""
  loc_BDAC52: LitStr "Totales"
  loc_BDAC55: LitI2_Byte 0
  loc_BDAC57: LitI2_Byte 0
  loc_BDAC59: LitI2_Byte 0
  loc_BDAC5B: LitI4 0
  loc_BDAC60: FMemLdR4 var_B8(60)
  loc_BDAC65: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDAC6A: CVarStr var_C8
  loc_BDAC6D: PopAdLdVar
  loc_BDAC6E: FLdPr Me
  loc_BDAC71: MemLdRfVar from_stack_1.global_60
  loc_BDAC74: LdPrVar
  loc_BDAC76: LateMemCall
  loc_BDAC7C: FFree1Var var_C8 = ""
  loc_BDAC7F: LitVarStr var_94, "      </tr>"
  loc_BDAC84: PopAdLdVar
  loc_BDAC85: FLdPr Me
  loc_BDAC88: MemLdRfVar from_stack_1.global_60
  loc_BDAC8B: LdPrVar
  loc_BDAC8D: LateMemCall
  loc_BDAC93: LitVarStr var_94, "      <tr align=""left"">"
  loc_BDAC98: PopAdLdVar
  loc_BDAC99: FLdPr Me
  loc_BDAC9C: MemLdRfVar from_stack_1.global_60
  loc_BDAC9F: LdPrVar
  loc_BDACA1: LateMemCall
  loc_BDACA7: LitVarStr var_94, "          <td height=""42"" colspan=""3"" align=""center"" class=""Normal"" style=""border-right:none; border-bottom:none"">"
  loc_BDACAC: PopAdLdVar
  loc_BDACAD: FLdPr Me
  loc_BDACB0: MemLdRfVar from_stack_1.global_60
  loc_BDACB3: LdPrVar
  loc_BDACB5: LateMemCall
  loc_BDACBB: FMemLdI2 var_B8(0)
  loc_BDACC0: BranchF loc_BDAD22
  loc_BDACC3: LitStr "            <strong class=""NombreMunicipio"">"
  loc_BDACC6: FMemLdR4 var_B8(4)
  loc_BDACCB: CI4Str
  loc_BDACCC: FLdPr Me
  loc_BDACCF: MemLdRfVar from_stack_1.global_120
  loc_BDACD2: Ary1LdI4
  loc_BDACD3: ConcatStr
  loc_BDACD4: FStStrNoPop var_CC
  loc_BDACD7: LitStr "<br>BIMESTRE "
  loc_BDACDA: ConcatStr
  loc_BDACDB: FStStrNoPop var_D4
  loc_BDACDE: FLdRfVar var_CE
  loc_BDACE1: FLdPr Me
  loc_BDACE4: MemLdRfVar from_stack_1.global_80
  loc_BDACE7: NewIfNullPr clsliquidacion
  loc_BDACEA: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BDACEF: FLdI2 var_CE
  loc_BDACF2: CStrUI1
  loc_BDACF4: FStStrNoPop var_D8
  loc_BDACF7: ConcatStr
  loc_BDACF8: FStStrNoPop var_DC
  loc_BDACFB: LitStr "</strong></td>"
  loc_BDACFE: ConcatStr
  loc_BDACFF: CVarStr var_C8
  loc_BDAD02: PopAdLdVar
  loc_BDAD03: FLdPr Me
  loc_BDAD06: MemLdRfVar from_stack_1.global_60
  loc_BDAD09: LdPrVar
  loc_BDAD0B: LateMemCall
  loc_BDAD11: FFreeStr var_CC = "": var_D4 = "": var_D8 = ""
  loc_BDAD1C: FFree1Var var_C8 = ""
  loc_BDAD1F: Branch loc_BDAD62
  loc_BDAD22: LitStr "            <strong class=""NombreMunicipio"">ANUAL<br>"
  loc_BDAD25: FLdRfVar var_CE
  loc_BDAD28: FLdPr Me
  loc_BDAD2B: MemLdRfVar from_stack_1.global_80
  loc_BDAD2E: NewIfNullPr clsliquidacion
  loc_BDAD31: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BDAD36: FLdI2 var_CE
  loc_BDAD39: CStrUI1
  loc_BDAD3B: FStStrNoPop var_CC
  loc_BDAD3E: ConcatStr
  loc_BDAD3F: FStStrNoPop var_D4
  loc_BDAD42: LitStr "</strong></td>"
  loc_BDAD45: ConcatStr
  loc_BDAD46: CVarStr var_C8
  loc_BDAD49: PopAdLdVar
  loc_BDAD4A: FLdPr Me
  loc_BDAD4D: MemLdRfVar from_stack_1.global_60
  loc_BDAD50: LdPrVar
  loc_BDAD52: LateMemCall
  loc_BDAD58: FFreeStr var_CC = ""
  loc_BDAD5F: FFree1Var var_C8 = ""
  loc_BDAD62: LitVarStr var_94, "          <td align=""center"" colspan=""6"" rowspan=""2"" class=""Normal"" style=""border-left:none"">"
  loc_BDAD67: PopAdLdVar
  loc_BDAD68: FLdPr Me
  loc_BDAD6B: MemLdRfVar from_stack_1.global_60
  loc_BDAD6E: LdPrVar
  loc_BDAD70: LateMemCall
  loc_BDAD76: LitVarStr var_94, "            <table align=""center"">"
  loc_BDAD7B: PopAdLdVar
  loc_BDAD7C: FLdPr Me
  loc_BDAD7F: MemLdRfVar from_stack_1.global_60
  loc_BDAD82: LdPrVar
  loc_BDAD84: LateMemCall
  loc_BDAD8A: LitStr "              <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_BDAD8D: LitI4 1
  loc_BDAD92: FMemLdR4 var_B8(20)
  loc_BDAD97: Ary1LdI4
  loc_BDAD98: ConcatStr
  loc_BDAD99: FStStrNoPop var_CC
  loc_BDAD9C: LitStr "</td></tr>"
  loc_BDAD9F: ConcatStr
  loc_BDADA0: CVarStr var_C8
  loc_BDADA3: PopAdLdVar
  loc_BDADA4: FLdPr Me
  loc_BDADA7: MemLdRfVar from_stack_1.global_60
  loc_BDADAA: LdPrVar
  loc_BDADAC: LateMemCall
  loc_BDADB2: FFree1Str var_CC
  loc_BDADB5: FFree1Var var_C8 = ""
  loc_BDADB8: LitStr "              <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BDADBB: LitI4 0
  loc_BDADC0: FMemLdR4 var_B8(20)
  loc_BDADC5: Ary1LdI4
  loc_BDADC6: ConcatStr
  loc_BDADC7: FStStrNoPop var_CC
  loc_BDADCA: LitStr "</td></tr>"
  loc_BDADCD: ConcatStr
  loc_BDADCE: CVarStr var_C8
  loc_BDADD1: PopAdLdVar
  loc_BDADD2: FLdPr Me
  loc_BDADD5: MemLdRfVar from_stack_1.global_60
  loc_BDADD8: LdPrVar
  loc_BDADDA: LateMemCall
  loc_BDADE0: FFree1Str var_CC
  loc_BDADE3: FFree1Var var_C8 = ""
  loc_BDADE6: LitVarStr var_94, "            </table>"
  loc_BDADEB: PopAdLdVar
  loc_BDADEC: FLdPr Me
  loc_BDADEF: MemLdRfVar from_stack_1.global_60
  loc_BDADF2: LdPrVar
  loc_BDADF4: LateMemCall
  loc_BDADFA: LitVarStr var_94, "          </td>"
  loc_BDADFF: PopAdLdVar
  loc_BDAE00: FLdPr Me
  loc_BDAE03: MemLdRfVar from_stack_1.global_60
  loc_BDAE06: LdPrVar
  loc_BDAE08: LateMemCall
  loc_BDAE0E: LitVarStr var_94, "      </tr>"
  loc_BDAE13: PopAdLdVar
  loc_BDAE14: FLdPr Me
  loc_BDAE17: MemLdRfVar from_stack_1.global_60
  loc_BDAE1A: LdPrVar
  loc_BDAE1C: LateMemCall
  loc_BDAE22: LitVarStr var_94, "      <tr align=""left"">"
  loc_BDAE27: PopAdLdVar
  loc_BDAE28: FLdPr Me
  loc_BDAE2B: MemLdRfVar from_stack_1.global_60
  loc_BDAE2E: LdPrVar
  loc_BDAE30: LateMemCall
  loc_BDAE36: LitVarStr var_94, "        <td style=""border-right:none; border-top:none"" colspan=""3"" class=""Normal"" valign=""bottom"">"
  loc_BDAE3B: PopAdLdVar
  loc_BDAE3C: FLdPr Me
  loc_BDAE3F: MemLdRfVar from_stack_1.global_60
  loc_BDAE42: LdPrVar
  loc_BDAE44: LateMemCall
  loc_BDAE4A: LitVarStr var_94, "          <table border=""1"" cellpadding=""0"" cellspacing=""0"" width=""100" & Chr(37) & """>"
  loc_BDAE4F: PopAdLdVar
  loc_BDAE50: FLdPr Me
  loc_BDAE53: MemLdRfVar from_stack_1.global_60
  loc_BDAE56: LdPrVar
  loc_BDAE58: LateMemCall
  loc_BDAE5E: LitVarStr var_94, "              <tr align=""center"" class=""Encabezado"">"
  loc_BDAE63: PopAdLdVar
  loc_BDAE64: FLdPr Me
  loc_BDAE67: MemLdRfVar from_stack_1.global_60
  loc_BDAE6A: LdPrVar
  loc_BDAE6C: LateMemCall
  loc_BDAE72: FMemLdI2 var_B8(0)
  loc_BDAE77: BranchF loc_BDAF49
  loc_BDAE7A: LitVarStr var_94, "                <td>PERIODO</td>"
  loc_BDAE7F: PopAdLdVar
  loc_BDAE80: FLdPr Me
  loc_BDAE83: MemLdRfVar from_stack_1.global_60
  loc_BDAE86: LdPrVar
  loc_BDAE88: LateMemCall
  loc_BDAE8E: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BDAE93: PopAdLdVar
  loc_BDAE94: FLdPr Me
  loc_BDAE97: MemLdRfVar from_stack_1.global_60
  loc_BDAE9A: LdPrVar
  loc_BDAE9C: LateMemCall
  loc_BDAEA2: LitVarStr var_94, "              </tr>"
  loc_BDAEA7: PopAdLdVar
  loc_BDAEA8: FLdPr Me
  loc_BDAEAB: MemLdRfVar from_stack_1.global_60
  loc_BDAEAE: LdPrVar
  loc_BDAEB0: LateMemCall
  loc_BDAEB6: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BDAEBB: PopAdLdVar
  loc_BDAEBC: FLdPr Me
  loc_BDAEBF: MemLdRfVar from_stack_1.global_60
  loc_BDAEC2: LdPrVar
  loc_BDAEC4: LateMemCall
  loc_BDAECA: LitStr "                <td>"
  loc_BDAECD: FMemLdR4 var_B8(4)
  loc_BDAED2: ConcatStr
  loc_BDAED3: FStStrNoPop var_CC
  loc_BDAED6: LitStr "/"
  loc_BDAED9: ConcatStr
  loc_BDAEDA: FStStrNoPop var_D4
  loc_BDAEDD: FLdRfVar var_CE
  loc_BDAEE0: FLdPr Me
  loc_BDAEE3: MemLdRfVar from_stack_1.global_80
  loc_BDAEE6: NewIfNullPr clsliquidacion
  loc_BDAEE9: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BDAEEE: FLdI2 var_CE
  loc_BDAEF1: CStrUI1
  loc_BDAEF3: FStStrNoPop var_D8
  loc_BDAEF6: ConcatStr
  loc_BDAEF7: FStStrNoPop var_DC
  loc_BDAEFA: LitStr "</td>"
  loc_BDAEFD: ConcatStr
  loc_BDAEFE: CVarStr var_C8
  loc_BDAF01: PopAdLdVar
  loc_BDAF02: FLdPr Me
  loc_BDAF05: MemLdRfVar from_stack_1.global_60
  loc_BDAF08: LdPrVar
  loc_BDAF0A: LateMemCall
  loc_BDAF10: FFreeStr var_CC = "": var_D4 = "": var_D8 = ""
  loc_BDAF1B: FFree1Var var_C8 = ""
  loc_BDAF1E: LitStr "                <td>"
  loc_BDAF21: FMemLdR4 var_B8(16)
  loc_BDAF26: ConcatStr
  loc_BDAF27: FStStrNoPop var_CC
  loc_BDAF2A: LitStr "</td>"
  loc_BDAF2D: ConcatStr
  loc_BDAF2E: CVarStr var_C8
  loc_BDAF31: PopAdLdVar
  loc_BDAF32: FLdPr Me
  loc_BDAF35: MemLdRfVar from_stack_1.global_60
  loc_BDAF38: LdPrVar
  loc_BDAF3A: LateMemCall
  loc_BDAF40: FFree1Str var_CC
  loc_BDAF43: FFree1Var var_C8 = ""
  loc_BDAF46: Branch loc_BDAFAD
  loc_BDAF49: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BDAF4E: PopAdLdVar
  loc_BDAF4F: FLdPr Me
  loc_BDAF52: MemLdRfVar from_stack_1.global_60
  loc_BDAF55: LdPrVar
  loc_BDAF57: LateMemCall
  loc_BDAF5D: LitVarStr var_94, "              </tr>"
  loc_BDAF62: PopAdLdVar
  loc_BDAF63: FLdPr Me
  loc_BDAF66: MemLdRfVar from_stack_1.global_60
  loc_BDAF69: LdPrVar
  loc_BDAF6B: LateMemCall
  loc_BDAF71: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BDAF76: PopAdLdVar
  loc_BDAF77: FLdPr Me
  loc_BDAF7A: MemLdRfVar from_stack_1.global_60
  loc_BDAF7D: LdPrVar
  loc_BDAF7F: LateMemCall
  loc_BDAF85: LitStr "                <td>"
  loc_BDAF88: FMemLdR4 var_B8(16)
  loc_BDAF8D: ConcatStr
  loc_BDAF8E: FStStrNoPop var_CC
  loc_BDAF91: LitStr "</td>"
  loc_BDAF94: ConcatStr
  loc_BDAF95: CVarStr var_C8
  loc_BDAF98: PopAdLdVar
  loc_BDAF99: FLdPr Me
  loc_BDAF9C: MemLdRfVar from_stack_1.global_60
  loc_BDAF9F: LdPrVar
  loc_BDAFA1: LateMemCall
  loc_BDAFA7: FFree1Str var_CC
  loc_BDAFAA: FFree1Var var_C8 = ""
  loc_BDAFAD: LitVarStr var_94, "              </tr>"
  loc_BDAFB2: PopAdLdVar
  loc_BDAFB3: FLdPr Me
  loc_BDAFB6: MemLdRfVar from_stack_1.global_60
  loc_BDAFB9: LdPrVar
  loc_BDAFBB: LateMemCall
  loc_BDAFC1: LitVarStr var_94, "          </table>"
  loc_BDAFC6: PopAdLdVar
  loc_BDAFC7: FLdPr Me
  loc_BDAFCA: MemLdRfVar from_stack_1.global_60
  loc_BDAFCD: LdPrVar
  loc_BDAFCF: LateMemCall
  loc_BDAFD5: LitVarStr var_94, "        </td>"
  loc_BDAFDA: PopAdLdVar
  loc_BDAFDB: FLdPr Me
  loc_BDAFDE: MemLdRfVar from_stack_1.global_60
  loc_BDAFE1: LdPrVar
  loc_BDAFE3: LateMemCall
  loc_BDAFE9: LitVarStr var_94, "      </tr>"
  loc_BDAFEE: PopAdLdVar
  loc_BDAFEF: FLdPr Me
  loc_BDAFF2: MemLdRfVar from_stack_1.global_60
  loc_BDAFF5: LdPrVar
  loc_BDAFF7: LateMemCall
  loc_BDAFFD: LitVarStr var_94, "    </table>"
  loc_BDB002: PopAdLdVar
  loc_BDB003: FLdPr Me
  loc_BDB006: MemLdRfVar from_stack_1.global_60
  loc_BDB009: LdPrVar
  loc_BDB00B: LateMemCall
  loc_BDB011: FMemLdI2 var_B8(0)
  loc_BDB016: NotI4
  loc_BDB017: BranchF loc_BDB02E
  loc_BDB01A: LitVarStr var_94, "    <br>"
  loc_BDB01F: PopAdLdVar
  loc_BDB020: FLdPr Me
  loc_BDB023: MemLdRfVar from_stack_1.global_60
  loc_BDB026: LdPrVar
  loc_BDB028: LateMemCall
  loc_BDB02E: LitVarStr var_94, "  </td>"
  loc_BDB033: PopAdLdVar
  loc_BDB034: FLdPr Me
  loc_BDB037: MemLdRfVar from_stack_1.global_60
  loc_BDB03A: LdPrVar
  loc_BDB03C: LateMemCall
  loc_BDB042: LitVarStr var_94, "  </tr>"
  loc_BDB047: PopAdLdVar
  loc_BDB048: FLdPr Me
  loc_BDB04B: MemLdRfVar from_stack_1.global_60
  loc_BDB04E: LdPrVar
  loc_BDB050: LateMemCall
  loc_BDB056: LitI4 0
  loc_BDB05B: FStR4 var_B8
  loc_BDB05E: AryUnlock
  loc_BDB061: FLdPr Me
  loc_BDB064: MemLdRfVar from_stack_1.global_100
  loc_BDB067: NextUI1
  loc_BDB06D: LitI4 0
  loc_BDB072: FStR4 var_AC
  loc_BDB075: AryUnlock
  loc_BDB078: ExitProcHresult
End Function

Private Function Proc_324_26_B06F74() 'B06F74
  'Data Table: 4C4E5C
  loc_B06D68: LitVarStr var_94, "  <tr><td><br></td></tr>"
  loc_B06D6D: PopAdLdVar
  loc_B06D6E: FLdPr Me
  loc_B06D71: MemLdRfVar from_stack_1.global_60
  loc_B06D74: LdPrVar
  loc_B06D76: LateMemCall
  loc_B06D7C: LitVarStr var_94, "  <tr>"
  loc_B06D81: PopAdLdVar
  loc_B06D82: FLdPr Me
  loc_B06D85: MemLdRfVar from_stack_1.global_60
  loc_B06D88: LdPrVar
  loc_B06D8A: LateMemCall
  loc_B06D90: LitVarStr var_94, "    <td valign=""bottom"">"
  loc_B06D95: PopAdLdVar
  loc_B06D96: FLdPr Me
  loc_B06D99: MemLdRfVar from_stack_1.global_60
  loc_B06D9C: LdPrVar
  loc_B06D9E: LateMemCall
  loc_B06DA4: LitVarStr var_94, "     <table align=""center"" height=""100" & Chr(37) & """ width=""99" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0""><tr>"
  loc_B06DA9: PopAdLdVar
  loc_B06DAA: FLdPr Me
  loc_B06DAD: MemLdRfVar from_stack_1.global_60
  loc_B06DB0: LdPrVar
  loc_B06DB2: LateMemCall
  loc_B06DB8: LitVarStr var_94, "        <td height=""100" & Chr(37) & """ class=""NormalAbajo MargIzq"">"
  loc_B06DBD: PopAdLdVar
  loc_B06DBE: FLdPr Me
  loc_B06DC1: MemLdRfVar from_stack_1.global_60
  loc_B06DC4: LdPrVar
  loc_B06DC6: LateMemCall
  loc_B06DCC: LitVarStr var_94, "        <img src=""l6.jpg"" width=""160"" height=""131"" class=""MissChild"">"
  loc_B06DD1: PopAdLdVar
  loc_B06DD2: FLdPr Me
  loc_B06DD5: MemLdRfVar from_stack_1.global_60
  loc_B06DD8: LdPrVar
  loc_B06DDA: LateMemCall
  loc_B06DE0: LitVarStr var_94, "        ESTIMADO VECINO, PARA QUE SU DINERO RINDA, LE PEDIMOS QUE COLABORE CON LA LIMPIEZA DEL DEPARTAMENTO, POR FAVOR NO ARROJE RESIDUOS NI ESCOMBROS EN LOS LUGARES EN LOS QUE NO CORRESPONDE HACERLO.<br>"
  loc_B06DE5: PopAdLdVar
  loc_B06DE6: FLdPr Me
  loc_B06DE9: MemLdRfVar from_stack_1.global_60
  loc_B06DEC: LdPrVar
  loc_B06DEE: LateMemCall
  loc_B06DF4: LitVarStr var_94, "        MUCHAS GRACIAS POR SU COLABORACI&Oacute;N.<br>"
  loc_B06DF9: PopAdLdVar
  loc_B06DFA: FLdPr Me
  loc_B06DFD: MemLdRfVar from_stack_1.global_60
  loc_B06E00: LdPrVar
  loc_B06E02: LateMemCall
  loc_B06E08: LitVarStr var_94, "        Sr. VECINO DE GUAYMALL&Eacute;N: Este Boleto incluye la opci&oacute;n de los bimestres 5 y 6 del presente ejercicio.<br><br>"
  loc_B06E0D: PopAdLdVar
  loc_B06E0E: FLdPr Me
  loc_B06E11: MemLdRfVar from_stack_1.global_60
  loc_B06E14: LdPrVar
  loc_B06E16: LateMemCall
  loc_B06E1C: LitVarStr var_94, "0"
  loc_B06E21: FStVarCopyObj var_B4
  loc_B06E24: FLdRfVar var_B4
  loc_B06E27: LitI4 6
  loc_B06E2C: FLdRfVar var_C4
  loc_B06E2F: ImpAdCallFPR4  = String(, )
  loc_B06E34: LitVarStr var_E8, "        C&oacute;digo pagomiscuentas.com: <strong>1"
  loc_B06E39: LitI4 1
  loc_B06E3E: LitI4 1
  loc_B06E43: FLdRfVar var_C4
  loc_B06E46: FLdPr Me
  loc_B06E49: MemLdStr global_96
  loc_B06E4C: FLdPr Me
  loc_B06E4F: MemLdStr global_92
  loc_B06E52: AryLock
  loc_B06E55: Ary1LdPr
  loc_B06E56: MemLdRfVar from_stack_1.global_76
  loc_B06E59: CVarRef
  loc_B06E5E: FLdRfVar var_D8
  loc_B06E61: ImpAdCallFPR4  = Format(, )
  loc_B06E66: AryUnlock
  loc_B06E69: FLdRfVar var_D8
  loc_B06E6C: ConcatVar var_F8
  loc_B06E70: LitVarStr var_108, "</strong><br>"
  loc_B06E75: ConcatVar var_118
  loc_B06E79: PopAdLdVar
  loc_B06E7A: FLdPr Me
  loc_B06E7D: MemLdRfVar from_stack_1.global_60
  loc_B06E80: LdPrVar
  loc_B06E82: LateMemCall
  loc_B06E88: FFreeVar var_B4 = "": var_C4 = "": var_D8 = "": var_F8 = ""
  loc_B06E95: LitVarStr var_94, "0"
  loc_B06E9A: FStVarCopyObj var_B4
  loc_B06E9D: FLdRfVar var_B4
  loc_B06EA0: LitI4 &HC
  loc_B06EA5: FLdRfVar var_C4
  loc_B06EA8: ImpAdCallFPR4  = String(, )
  loc_B06EAD: LitVarStr var_E8, "        C&oacute;digo RED LINK: <strong>1"
  loc_B06EB2: LitI4 1
  loc_B06EB7: LitI4 1
  loc_B06EBC: FLdRfVar var_C4
  loc_B06EBF: FLdPr Me
  loc_B06EC2: MemLdStr global_96
  loc_B06EC5: FLdPr Me
  loc_B06EC8: MemLdStr global_92
  loc_B06ECB: AryLock
  loc_B06ECE: Ary1LdPr
  loc_B06ECF: MemLdRfVar from_stack_1.global_76
  loc_B06ED2: CVarRef
  loc_B06ED7: FLdRfVar var_D8
  loc_B06EDA: ImpAdCallFPR4  = Format(, )
  loc_B06EDF: AryUnlock
  loc_B06EE2: FLdRfVar var_D8
  loc_B06EE5: ConcatVar var_F8
  loc_B06EE9: LitVarStr var_108, "</strong><br><br>"
  loc_B06EEE: ConcatVar var_118
  loc_B06EF2: PopAdLdVar
  loc_B06EF3: FLdPr Me
  loc_B06EF6: MemLdRfVar from_stack_1.global_60
  loc_B06EF9: LdPrVar
  loc_B06EFB: LateMemCall
  loc_B06F01: FFreeVar var_B4 = "": var_C4 = "": var_D8 = "": var_F8 = ""
  loc_B06F0E: LitVarStr var_94, "        <strong>&iexcl;Apoye a SU MUNICIPIO pagando en t&eacute;rmino!</strong>"
  loc_B06F13: PopAdLdVar
  loc_B06F14: FLdPr Me
  loc_B06F17: MemLdRfVar from_stack_1.global_60
  loc_B06F1A: LdPrVar
  loc_B06F1C: LateMemCall
  loc_B06F22: LitVarStr var_94, "      </td></tr></table>"
  loc_B06F27: PopAdLdVar
  loc_B06F28: FLdPr Me
  loc_B06F2B: MemLdRfVar from_stack_1.global_60
  loc_B06F2E: LdPrVar
  loc_B06F30: LateMemCall
  loc_B06F36: LitVarStr var_94, "    </td>"
  loc_B06F3B: PopAdLdVar
  loc_B06F3C: FLdPr Me
  loc_B06F3F: MemLdRfVar from_stack_1.global_60
  loc_B06F42: LdPrVar
  loc_B06F44: LateMemCall
  loc_B06F4A: LitVarStr var_94, "  </tr>"
  loc_B06F4F: PopAdLdVar
  loc_B06F50: FLdPr Me
  loc_B06F53: MemLdRfVar from_stack_1.global_60
  loc_B06F56: LdPrVar
  loc_B06F58: LateMemCall
  loc_B06F5E: LitVarStr var_94, "</table>"
  loc_B06F63: PopAdLdVar
  loc_B06F64: FLdPr Me
  loc_B06F67: MemLdRfVar from_stack_1.global_60
  loc_B06F6A: LdPrVar
  loc_B06F6C: LateMemCall
  loc_B06F72: ExitProcHresult
End Function

Private Function Proc_324_27_9F0660() '9F0660
  'Data Table: 4C4E5C
  loc_9F0634: LitVarStr var_94, "</body>"
  loc_9F0639: PopAdLdVar
  loc_9F063A: FLdPr Me
  loc_9F063D: MemLdRfVar from_stack_1.global_60
  loc_9F0640: LdPrVar
  loc_9F0642: LateMemCall
  loc_9F0648: LitVarStr var_94, "</html>"
  loc_9F064D: PopAdLdVar
  loc_9F064E: FLdPr Me
  loc_9F0651: MemLdRfVar from_stack_1.global_60
  loc_9F0654: LdPrVar
  loc_9F0656: LateMemCall
  loc_9F065C: ExitProcHresult
End Function
