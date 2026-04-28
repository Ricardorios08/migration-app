VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Begin VB.Form rptEmisionMasivadeComercio
  Caption = "Emisión Masiva de Comercio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEmisionMasivadeComercio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2448
  ClientTop = 2292
  ClientWidth = 11640
  ClientHeight = 7824
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame Frame4
    Caption = "Exportar"
    Left = 3840
    Top = 6240
    Width = 5895
    Height = 1215
    TabIndex = 18
    Begin VB.CommandButton cmdPDFweb
      Caption = "PD&F para web"
      Left = 2640
      Top = 360
      Width = 2295
      Height = 615
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 840
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7572
    Width = 11640
    Height = 252
    TabIndex = 11
    OleObjectBlob = "rptEmisionMasivadeComercio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 10320
    Top = 6480
    Width = 855
    Height = 735
    TabIndex = 6
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
    Picture = "rptEmisionMasivadeComercio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEmisionMasivadeComercio.frx":0B9C
    Left = 10920
    Top = 6240
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 6240
    Width = 3495
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 840
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 3
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11415
    Height = 6135
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9720
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 7
    End
    Begin VB.Frame Frame5
      Caption = "Orden"
      Left = 240
      Top = 4920
      Width = 9375
      Height = 975
      TabIndex = 12
      Begin MSMask.MaskEdBox OrdeLicoDesdeMsk
        Left = 2130
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptEmisionMasivadeComercio.frx":0C00
      End
      Begin MSMask.MaskEdBox OrdeLicoHastaMsk
        Left = 5970
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptEmisionMasivadeComercio.frx":0C98
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 5205
        Top = 360
        Width = 705
        Height = 300
        TabIndex = 14
        AutoSize = -1  'True
      End
      Begin VB.Label Label1
        Caption = "Desde:"
        Left = 1320
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 13
        AutoSize = -1  'True
      End
    End
    Begin MSDataGridLib.DataGrid dgdLiquidacion
      Left = 240
      Top = 240
      Width = 9360
      Height = 4635
      TabIndex = 0
      OleObjectBlob = "rptEmisionMasivadeComercio.frx":0D30
    End
    Begin MSComctlLib.ProgressBar pbar
      Left = 10140
      Top = 960
      Width = 735
      Height = 4575
      Visible = 0   'False
      TabIndex = 16
      OleObjectBlob = "rptEmisionMasivadeComercio.frx":1036
    End
    Begin VB.Label ProgresoLbl
      Left = 9750
      Top = 5595
      Width = 1515
      Height = 300
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10560
    Top = 6720
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptEmisionMasivadeComercio.frx":109E
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 7680
    Top = 6360
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptEmisionMasivadeComercio.frx":1152
  End
End

Attribute VB_Name = "rptEmisionMasivadeComercio"

Public bGenerado As Boolean

Private Type UDT_1_00668CC4
  bStruc(48) As Byte ' String fields: 11
End Type

Private Type UDT_2_00560654
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_3_006827F0
  bStruc(116) As Byte ' String fields: 28
End Type


Private Sub cmdPDFweb_Click() 'B4F5B8
  'Data Table: 4CA014
  loc_B4F244: FLdRfVar var_94
  loc_B4F247: FLdPr Me
  loc_B4F24A:  = Me.hWnd
  loc_B4F24F: LitStr "Seleccione la carpeta de salida para los archivos generados"
  loc_B4F252: FLdPr Me
  loc_B4F255: MemLdStr global_76
  loc_B4F258: ILdRf var_94
  loc_B4F25B: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_B4F260: FStStrNoPop var_98
  loc_B4F263: FLdPr Me
  loc_B4F266: MemStStrCopy
  loc_B4F26A: FFree1Str var_98
  loc_B4F26D: FLdPr Me
  loc_B4F270: MemLdRfVar from_stack_1.global_76
  loc_B4F273: CVarRef
  loc_B4F278: FLdRfVar var_B8
  loc_B4F27B: ImpAdCallFPR4  = Trim()
  loc_B4F280: FLdRfVar var_B8
  loc_B4F283: LitVarStr var_C8, vbNullString
  loc_B4F288: HardType
  loc_B4F289: EqVarBool
  loc_B4F28B: FFree1Var var_B8 = ""
  loc_B4F28E: BranchF loc_B4F292
  loc_B4F291: ExitProcHresult
  loc_B4F292: FLdRfVar var_98
  loc_B4F295: LitStr "tmp"
  loc_B4F298: FLdPr Me
  loc_B4F29B: MemLdStr global_76
  loc_B4F29E: FLdRfVar var_88
  loc_B4F2A1: NewIfNullPr IFileSystem3
  loc_B4F2A4: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B4F2A9: FLdZeroAd var_98
  loc_B4F2AC: FStStr var_90
  loc_B4F2AF: ILdRf Me
  loc_B4F2B2: CastAd
  loc_B4F2B5: FStAdFunc var_DC
  loc_B4F2B8: FLdRfVar var_DC
  loc_B4F2BB: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B4F2C0: FFree1Ad var_DC
  loc_B4F2C3: LitVar_FALSE
  loc_B4F2C7: PopAdLdVar
  loc_B4F2C8: FLdPr Me
  loc_B4F2CB: VCallAd Control_ID_dgdLiquidacion
  loc_B4F2CE: FStAdFunc var_DC
  loc_B4F2D1: FLdPr var_DC
  loc_B4F2D4: LateIdSt
  loc_B4F2D9: FFree1Ad var_DC
  loc_B4F2DC: Call GeneraReporte()
  loc_B4F2E1: FLdPr Me
  loc_B4F2E4: MemLdI2 bGenerado
  loc_B4F2E7: BranchF loc_B4F554
  loc_B4F2EA: FLdPr Me
  loc_B4F2ED: MemLdStr global_92
  loc_B4F2F0: LitI2_Byte 1
  loc_B4F2F2: FnUBound
  loc_B4F2F4: CR8I4
  loc_B4F2F5: CVarR4
  loc_B4F2F9: PopAdLdVar
  loc_B4F2FA: FLdPr Me
  loc_B4F2FD: VCallAd Control_ID_pbar
  loc_B4F300: FStAdFunc var_DC
  loc_B4F303: FLdPr var_DC
  loc_B4F306: LateIdSt
  loc_B4F30B: FFree1Ad var_DC
  loc_B4F30E: LitVar_TRUE var_A8
  loc_B4F311: PopAdLdVar
  loc_B4F312: FLdPr Me
  loc_B4F315: VCallAd Control_ID_pbar
  loc_B4F318: FStAdFunc var_DC
  loc_B4F31B: FLdPr var_DC
  loc_B4F31E: LateIdSt
  loc_B4F323: FFree1Ad var_DC
  loc_B4F326: FLdRfVar var_DE
  loc_B4F329: ILdRf var_90
  loc_B4F32C: FLdRfVar var_88
  loc_B4F32F: NewIfNullPr IFileSystem3
  loc_B4F332: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B4F337: FLdI2 var_DE
  loc_B4F33A: BranchF loc_B4F34B
  loc_B4F33D: LitStr "\*.*"
  loc_B4F340: ILdRf var_90
  loc_B4F343: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B4F348: Branch loc_B4F353
  loc_B4F34B: ILdRf var_90
  loc_B4F34E: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_B4F353: ILdRf var_90
  loc_B4F356: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B4F35B: LitI4 1
  loc_B4F360: FLdPr Me
  loc_B4F363: MemLdRfVar from_stack_1.global_96
  loc_B4F366: FLdPr Me
  loc_B4F369: MemLdStr global_92
  loc_B4F36C: LitI2_Byte 1
  loc_B4F36E: FnUBound
  loc_B4F370: ForI4 var_E8
  loc_B4F376: FLdPr Me
  loc_B4F379: MemLdStr global_96
  loc_B4F37C: FLdPr Me
  loc_B4F37F: MemLdStr global_92
  loc_B4F382: AryLock
  loc_B4F385: Ary1LdRf
  loc_B4F386: FStR4 var_F0
  loc_B4F389: FLdRfVar var_98
  loc_B4F38C: FLdPr Me
  loc_B4F38F: MemLdStr global_96
  loc_B4F392: FLdPr Me
  loc_B4F395: MemLdStr global_92
  loc_B4F398: Ary1LdPr
  loc_B4F399: MemLdStr global_76
  loc_B4F39C: CI4Str
  loc_B4F39D: Call Proc_325_18_A16B8C()
  loc_B4F3A2: FLdZeroAd var_98
  loc_B4F3A5: FStStr var_8C
  loc_B4F3A8: FLdPr Me
  loc_B4F3AB: MemLdStr global_76
  loc_B4F3AE: LitStr "\"
  loc_B4F3B1: ConcatStr
  loc_B4F3B2: FStStrNoPop var_98
  loc_B4F3B5: ILdRf var_8C
  loc_B4F3B8: ConcatStr
  loc_B4F3B9: FStStrNoPop var_F4
  loc_B4F3BC: LitStr ".pdf"
  loc_B4F3BF: ConcatStr
  loc_B4F3C0: ImpAdStStr MemVar_D93030
  loc_B4F3C4: FFreeStr var_98 = ""
  loc_B4F3CB: ILdRf var_90
  loc_B4F3CE: LitStr "\"
  loc_B4F3D1: ConcatStr
  loc_B4F3D2: FStStrNoPop var_98
  loc_B4F3D5: ILdRf var_8C
  loc_B4F3D8: ConcatStr
  loc_B4F3D9: FStStrNoPop var_F4
  loc_B4F3DC: LitStr ".html"
  loc_B4F3DF: ConcatStr
  loc_B4F3E0: ImpAdStStr MemVar_D93C84
  loc_B4F3E4: FFreeStr var_98 = ""
  loc_B4F3EB: LitStr "Generando PDF: '"
  loc_B4F3EE: ImpAdLdI4 MemVar_D93030
  loc_B4F3F1: ConcatStr
  loc_B4F3F2: FStStrNoPop var_98
  loc_B4F3F5: LitStr "'"
  loc_B4F3F8: ConcatStr
  loc_B4F3F9: CVarStr var_B8
  loc_B4F3FC: PopAdLdVar
  loc_B4F3FD: FLdPr Me
  loc_B4F400: VCallAd Control_ID_statusBar
  loc_B4F403: FStAdFunc var_DC
  loc_B4F406: FLdPr var_DC
  loc_B4F409: LateIdSt
  loc_B4F40E: FFree1Str var_98
  loc_B4F411: FFree1Ad var_DC
  loc_B4F414: FFree1Var var_B8 = ""
  loc_B4F417: LitI4 0
  loc_B4F41C: FStR4 var_F0
  loc_B4F41F: AryUnlock
  loc_B4F422: FLdPr Me
  loc_B4F425: MemLdStr global_96
  loc_B4F428: CR8I4
  loc_B4F429: CVarR4
  loc_B4F42D: PopAdLdVar
  loc_B4F42E: FLdPr Me
  loc_B4F431: VCallAd Control_ID_pbar
  loc_B4F434: FStAdFunc var_DC
  loc_B4F437: FLdPr var_DC
  loc_B4F43A: LateIdSt
  loc_B4F43F: FFree1Ad var_DC
  loc_B4F442: FLdPr Me
  loc_B4F445: MemLdStr global_96
  loc_B4F448: CStrI4
  loc_B4F44A: FStStrNoPop var_98
  loc_B4F44D: LitStr "/"
  loc_B4F450: ConcatStr
  loc_B4F451: FStStrNoPop var_F4
  loc_B4F454: FLdPr Me
  loc_B4F457: MemLdStr global_92
  loc_B4F45A: LitI2_Byte 1
  loc_B4F45C: FnUBound
  loc_B4F45E: CStrI4
  loc_B4F460: FStStrNoPop var_F8
  loc_B4F463: ConcatStr
  loc_B4F464: FStStrNoPop var_FC
  loc_B4F467: FLdPr Me
  loc_B4F46A: VCallAd Control_ID_ProgresoLbl
  loc_B4F46D: FStAdFunc var_DC
  loc_B4F470: FLdPr var_DC
  loc_B4F473: Me.Caption = from_stack_1
  loc_B4F478: FFreeStr var_98 = "": var_F4 = "": var_F8 = ""
  loc_B4F483: FFree1Ad var_DC
  loc_B4F486: Call GeneraHTML()
  loc_B4F48B: FLdPr Me
  loc_B4F48E: MemLdRfVar from_stack_1.global_96
  loc_B4F491: NextI4 var_E8, loc_B4F376
  loc_B4F496: FLdRfVar var_B8
  loc_B4F499: ImpAdCallFPR4  = Now
  loc_B4F49E: FLdRfVar var_B8
  loc_B4F4A1: LitVarStr var_A8, " -- Desde: "
  loc_B4F4A6: ConcatVar var_D8
  loc_B4F4AA: FLdPr Me
  loc_B4F4AD: VCallAd Control_ID_OrdeLicoDesdeMsk
  loc_B4F4B0: FStAdFunc var_DC
  loc_B4F4B3: FLdPr var_DC
  loc_B4F4B6: LateIdLdVar var_10C DispID_22 0
  loc_B4F4BD: CStrVarTmp
  loc_B4F4BE: CVarStr var_11C
  loc_B4F4C1: ConcatVar var_12C
  loc_B4F4C5: LitVarStr var_C8, "	"
  loc_B4F4CA: ConcatVar var_13C
  loc_B4F4CE: LitVarStr var_14C, "Hasta: "
  loc_B4F4D3: ConcatVar var_15C
  loc_B4F4D7: FLdPr Me
  loc_B4F4DA: VCallAd Control_ID_OrdeLicoHastaMsk
  loc_B4F4DD: FStAdFunc var_160
  loc_B4F4E0: FLdPr var_160
  loc_B4F4E3: LateIdLdVar var_170 DispID_22 0
  loc_B4F4EA: CStrVarTmp
  loc_B4F4EB: CVarStr var_180
  loc_B4F4EE: ConcatVar var_190
  loc_B4F4F2: CStrVarVal var_F4
  loc_B4F4F6: FLdPr Me
  loc_B4F4F9: MemLdStr global_76
  loc_B4F4FC: LitStr "\registro.txt"
  loc_B4F4FF: ConcatStr
  loc_B4F500: FStStrNoPop var_98
  loc_B4F503: ImpAdCallFPR4 Proc_272_65_AB08A8(, )
  loc_B4F508: FFreeStr var_98 = ""
  loc_B4F50F: FFreeAd var_DC = ""
  loc_B4F516: FFreeVar var_B8 = "": var_10C = "": var_D8 = "": var_11C = "": var_12C = "": var_13C = "": var_170 = "": var_15C = "": var_180 = ""
  loc_B4F52D: FLdPr Me
  loc_B4F530: MemLdStr global_76
  loc_B4F533: ILdRf var_90
  loc_B4F536: ImpAdCallFPR4 Proc_57_56_A868F0(, )
  loc_B4F53B: LitVar_FALSE
  loc_B4F53F: PopAdLdVar
  loc_B4F540: FLdPr Me
  loc_B4F543: VCallAd Control_ID_pbar
  loc_B4F546: FStAdFunc var_DC
  loc_B4F549: FLdPr var_DC
  loc_B4F54C: LateIdSt
  loc_B4F551: FFree1Ad var_DC
  loc_B4F554: ILdRf Me
  loc_B4F557: CastAd
  loc_B4F55A: FStAdFunc var_DC
  loc_B4F55D: FLdRfVar var_DC
  loc_B4F560: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B4F565: FFree1Ad var_DC
  loc_B4F568: LitVarStr var_A8, vbNullString
  loc_B4F56D: PopAdLdVar
  loc_B4F56E: FLdPr Me
  loc_B4F571: VCallAd Control_ID_statusBar
  loc_B4F574: FStAdFunc var_DC
  loc_B4F577: FLdPr var_DC
  loc_B4F57A: LateIdSt
  loc_B4F57F: FFree1Ad var_DC
  loc_B4F582: FLdPr Me
  loc_B4F585: VCallAd Control_ID_dgdLiquidacion
  loc_B4F588: FStAdFunc var_DC
  loc_B4F58B: FLdPr var_DC
  loc_B4F58E: LateIdLdVar var_B8 DispID_13 -32767
  loc_B4F595: CBoolVar
  loc_B4F597: FFree1Ad var_DC
  loc_B4F59A: FFree1Var var_B8 = ""
  loc_B4F59D: BranchF loc_B4F5B7
  loc_B4F5A0: FLdPr Me
  loc_B4F5A3: VCallAd Control_ID_dgdLiquidacion
  loc_B4F5A6: FStAdFunc var_DC
  loc_B4F5A9: FLdPr var_DC
  loc_B4F5AC: LateIdCall
  loc_B4F5B4: FFree1Ad var_DC
  loc_B4F5B7: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'B0E5B8
  'Data Table: 4CA014
  loc_B0E384: LitVarStr var_94, "Enviando a impresora predeterminada..."
  loc_B0E389: PopAdLdVar
  loc_B0E38A: FLdPr Me
  loc_B0E38D: VCallAd Control_ID_statusBar
  loc_B0E390: FStAdFunc var_A8
  loc_B0E393: FLdPr var_A8
  loc_B0E396: LateIdSt
  loc_B0E39B: FFree1Ad var_A8
  loc_B0E39E: ILdRf Me
  loc_B0E3A1: CastAd
  loc_B0E3A4: FStAdFunc var_A8
  loc_B0E3A7: FLdRfVar var_A8
  loc_B0E3AA: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B0E3AF: FFree1Ad var_A8
  loc_B0E3B2: LitVar_FALSE
  loc_B0E3B6: PopAdLdVar
  loc_B0E3B7: FLdPr Me
  loc_B0E3BA: VCallAd Control_ID_dgdLiquidacion
  loc_B0E3BD: FStAdFunc var_A8
  loc_B0E3C0: FLdPr var_A8
  loc_B0E3C3: LateIdSt
  loc_B0E3C8: FFree1Ad var_A8
  loc_B0E3CB: Call GeneraReporte()
  loc_B0E3D0: FLdPr Me
  loc_B0E3D3: MemLdI2 bGenerado
  loc_B0E3D6: BranchF loc_B0E56D
  loc_B0E3D9: FLdPr Me
  loc_B0E3DC: MemLdStr global_92
  loc_B0E3DF: LitI2_Byte 1
  loc_B0E3E1: FnUBound
  loc_B0E3E3: CR8I4
  loc_B0E3E4: CVarR4
  loc_B0E3E8: PopAdLdVar
  loc_B0E3E9: FLdPr Me
  loc_B0E3EC: VCallAd Control_ID_pbar
  loc_B0E3EF: FStAdFunc var_A8
  loc_B0E3F2: FLdPr var_A8
  loc_B0E3F5: LateIdSt
  loc_B0E3FA: FFree1Ad var_A8
  loc_B0E3FD: LitVar_TRUE var_94
  loc_B0E400: PopAdLdVar
  loc_B0E401: FLdPr Me
  loc_B0E404: VCallAd Control_ID_pbar
  loc_B0E407: FStAdFunc var_A8
  loc_B0E40A: FLdPr var_A8
  loc_B0E40D: LateIdSt
  loc_B0E412: FFree1Ad var_A8
  loc_B0E415: LitI4 1
  loc_B0E41A: FLdPr Me
  loc_B0E41D: MemLdRfVar from_stack_1.global_96
  loc_B0E420: FLdPr Me
  loc_B0E423: MemLdStr global_92
  loc_B0E426: LitI2_Byte 1
  loc_B0E428: FnUBound
  loc_B0E42A: ForI4 var_B0
  loc_B0E430: LitStr " - "
  loc_B0E433: FLdPr Me
  loc_B0E436: MemLdStr global_96
  loc_B0E439: FLdPr Me
  loc_B0E43C: MemLdStr global_92
  loc_B0E43F: Ary1LdPr
  loc_B0E440: MemLdStr global_84
  loc_B0E443: ConcatStr
  loc_B0E444: FStStrNoPop var_B4
  loc_B0E447: FLdPr Me
  loc_B0E44A: Me.Tag = from_stack_1
  loc_B0E44F: FFree1Str var_B4
  loc_B0E452: ILdRf Me
  loc_B0E455: CastAd
  loc_B0E458: FStAdFunc var_A8
  loc_B0E45B: FLdRfVar var_A8
  loc_B0E45E: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_B0E463: FFree1Ad var_A8
  loc_B0E466: FLdPr Me
  loc_B0E469: MemLdStr global_96
  loc_B0E46C: CR8I4
  loc_B0E46D: CVarR4
  loc_B0E471: PopAdLdVar
  loc_B0E472: FLdPr Me
  loc_B0E475: VCallAd Control_ID_pbar
  loc_B0E478: FStAdFunc var_A8
  loc_B0E47B: FLdPr var_A8
  loc_B0E47E: LateIdSt
  loc_B0E483: FFree1Ad var_A8
  loc_B0E486: FLdPr Me
  loc_B0E489: MemLdStr global_96
  loc_B0E48C: CStrI4
  loc_B0E48E: FStStrNoPop var_B4
  loc_B0E491: LitStr "/"
  loc_B0E494: ConcatStr
  loc_B0E495: FStStrNoPop var_B8
  loc_B0E498: FLdPr Me
  loc_B0E49B: MemLdStr global_92
  loc_B0E49E: LitI2_Byte 1
  loc_B0E4A0: FnUBound
  loc_B0E4A2: CStrI4
  loc_B0E4A4: FStStrNoPop var_BC
  loc_B0E4A7: ConcatStr
  loc_B0E4A8: FStStrNoPop var_C0
  loc_B0E4AB: FLdPr Me
  loc_B0E4AE: VCallAd Control_ID_ProgresoLbl
  loc_B0E4B1: FStAdFunc var_A8
  loc_B0E4B4: FLdPr var_A8
  loc_B0E4B7: Me.Caption = from_stack_1
  loc_B0E4BC: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_B0E4C7: FFree1Ad var_A8
  loc_B0E4CA: Call GeneraHTML()
  loc_B0E4CF: ImpAdLdRf MemVar_D93C84
  loc_B0E4D2: CDargRef
  loc_B0E4D6: FLdPr Me
  loc_B0E4D9: VCallAd Control_ID_wbbReporte
  loc_B0E4DC: FStAdFunc var_A8
  loc_B0E4DF: FLdPr var_A8
  loc_B0E4E2: LateIdCall
  loc_B0E4EA: FFree1Ad var_A8
  loc_B0E4ED: ImpAdCallFPR4 DoEvents()
  loc_B0E4F2: FLdPr Me
  loc_B0E4F5: VCallAd Control_ID_wbbReporte
  loc_B0E4F8: FStAdFunc var_A8
  loc_B0E4FB: FLdPr var_A8
  loc_B0E4FE: LateIdLdVar var_D0 DispID_-525 -1
  loc_B0E505: CI4Var
  loc_B0E507: LitI4 4
  loc_B0E50C: NeI4
  loc_B0E50D: FFree1Ad var_A8
  loc_B0E510: FFree1Var var_D0 = ""
  loc_B0E513: BranchT loc_B0E4ED
  loc_B0E516: LitVarI4
  loc_B0E51E: PopAdLdVar
  loc_B0E51F: LitVarI4
  loc_B0E527: PopAdLdVar
  loc_B0E528: LitVarI2 var_110, 2
  loc_B0E52D: PopAdLdVar
  loc_B0E52E: LitVar_NULL
  loc_B0E532: PopAdLdVar
  loc_B0E533: FLdPr Me
  loc_B0E536: VCallAd Control_ID_wbbReporte
  loc_B0E539: FStAdFunc var_A8
  loc_B0E53C: FLdPr var_A8
  loc_B0E53F: LateIdCall
  loc_B0E547: FFree1Ad var_A8
  loc_B0E54A: FLdPr Me
  loc_B0E54D: MemLdRfVar from_stack_1.global_96
  loc_B0E550: NextI4 var_B0, loc_B0E430
  loc_B0E555: LitVar_TRUE var_94
  loc_B0E558: PopAdLdVar
  loc_B0E559: FLdPr Me
  loc_B0E55C: VCallAd Control_ID_pbar
  loc_B0E55F: FStAdFunc var_A8
  loc_B0E562: FLdPr var_A8
  loc_B0E565: LateIdSt
  loc_B0E56A: FFree1Ad var_A8
  loc_B0E56D: ILdRf Me
  loc_B0E570: CastAd
  loc_B0E573: FStAdFunc var_A8
  loc_B0E576: FLdRfVar var_A8
  loc_B0E579: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B0E57E: FFree1Ad var_A8
  loc_B0E581: FLdPr Me
  loc_B0E584: VCallAd Control_ID_dgdLiquidacion
  loc_B0E587: FStAdFunc var_A8
  loc_B0E58A: FLdPr var_A8
  loc_B0E58D: LateIdLdVar var_D0 DispID_13 -32767
  loc_B0E594: CBoolVar
  loc_B0E596: FFree1Ad var_A8
  loc_B0E599: FFree1Var var_D0 = ""
  loc_B0E59C: BranchF loc_B0E5B6
  loc_B0E59F: FLdPr Me
  loc_B0E5A2: VCallAd Control_ID_dgdLiquidacion
  loc_B0E5A5: FStAdFunc var_A8
  loc_B0E5A8: FLdPr var_A8
  loc_B0E5AB: LateIdCall
  loc_B0E5B3: FFree1Ad var_A8
  loc_B0E5B6: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'B81704
  'Data Table: 4CA014
  loc_B81204: OnErrorGoto loc_B8167A
  loc_B81207: FLdRfVar var_A0
  loc_B8120A: FLdPr Me
  loc_B8120D:  = Me.hWnd
  loc_B81212: LitStr "Seleccione la carpeta de salida para los archivos generados"
  loc_B81215: FLdPr Me
  loc_B81218: MemLdStr global_76
  loc_B8121B: ILdRf var_A0
  loc_B8121E: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_B81223: FStStrNoPop var_A4
  loc_B81226: FLdPr Me
  loc_B81229: MemStStrCopy
  loc_B8122D: FFree1Str var_A4
  loc_B81230: FLdPr Me
  loc_B81233: MemLdRfVar from_stack_1.global_76
  loc_B81236: CVarRef
  loc_B8123B: FLdRfVar var_C4
  loc_B8123E: ImpAdCallFPR4  = Trim()
  loc_B81243: FLdRfVar var_C4
  loc_B81246: LitVarStr var_D4, vbNullString
  loc_B8124B: HardType
  loc_B8124C: EqVarBool
  loc_B8124E: FFree1Var var_C4 = ""
  loc_B81251: BranchF loc_B81255
  loc_B81254: ExitProcHresult
  loc_B81255: FLdRfVar var_A4
  loc_B81258: LitStr "tmp"
  loc_B8125B: FLdPr Me
  loc_B8125E: MemLdStr global_76
  loc_B81261: FLdRfVar var_88
  loc_B81264: NewIfNullPr IFileSystem3
  loc_B81267: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B8126C: ILdRf var_A4
  loc_B8126F: LitStr "\"
  loc_B81272: ConcatStr
  loc_B81273: FStStr var_9C
  loc_B81276: FFree1Str var_A4
  loc_B81279: FLdRfVar var_E6
  loc_B8127C: ILdRf var_9C
  loc_B8127F: FLdRfVar var_88
  loc_B81282: NewIfNullPr IFileSystem3
  loc_B81285: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B8128A: FLdI2 var_E6
  loc_B8128D: BranchF loc_B8129E
  loc_B81290: LitStr "*.*"
  loc_B81293: ILdRf var_9C
  loc_B81296: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B8129B: Branch loc_B812A6
  loc_B8129E: ILdRf var_9C
  loc_B812A1: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_B812A6: ILdRf var_9C
  loc_B812A9: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B812AE: ILdRf Me
  loc_B812B1: CastAd
  loc_B812B4: FStAdFunc var_EC
  loc_B812B7: FLdRfVar var_EC
  loc_B812BA: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B812BF: FFree1Ad var_EC
  loc_B812C2: LitVar_FALSE
  loc_B812C6: PopAdLdVar
  loc_B812C7: FLdPr Me
  loc_B812CA: VCallAd Control_ID_dgdLiquidacion
  loc_B812CD: FStAdFunc var_EC
  loc_B812D0: FLdPr var_EC
  loc_B812D3: LateIdSt
  loc_B812D8: FFree1Ad var_EC
  loc_B812DB: Call GeneraReporte()
  loc_B812E0: FLdPr Me
  loc_B812E3: MemLdI2 bGenerado
  loc_B812E6: BranchF loc_B81616
  loc_B812E9: FLdPr Me
  loc_B812EC: MemLdStr global_92
  loc_B812EF: LitI2_Byte 1
  loc_B812F1: FnUBound
  loc_B812F3: CR8I4
  loc_B812F4: CVarR4
  loc_B812F8: PopAdLdVar
  loc_B812F9: FLdPr Me
  loc_B812FC: VCallAd Control_ID_pbar
  loc_B812FF: FStAdFunc var_EC
  loc_B81302: FLdPr var_EC
  loc_B81305: LateIdSt
  loc_B8130A: FFree1Ad var_EC
  loc_B8130D: LitVar_TRUE var_B4
  loc_B81310: PopAdLdVar
  loc_B81311: FLdPr Me
  loc_B81314: VCallAd Control_ID_pbar
  loc_B81317: FStAdFunc var_EC
  loc_B8131A: FLdPr var_EC
  loc_B8131D: LateIdSt
  loc_B81322: FFree1Ad var_EC
  loc_B81325: LitStr vbNullString
  loc_B81328: FStStrCopy var_90
  loc_B8132B: LitI4 1
  loc_B81330: FLdPr Me
  loc_B81333: MemLdStr global_92
  loc_B81336: Ary1LdPr
  loc_B81337: MemLdStr global_84
  loc_B8133A: CI4Str
  loc_B8133B: FStR4 var_98
  loc_B8133E: LitI4 1
  loc_B81343: FLdPr Me
  loc_B81346: MemLdRfVar from_stack_1.global_96
  loc_B81349: FLdPr Me
  loc_B8134C: MemLdStr global_92
  loc_B8134F: LitI2_Byte 1
  loc_B81351: FnUBound
  loc_B81353: ForI4 var_F4
  loc_B81359: FLdPr Me
  loc_B8135C: MemLdStr global_96
  loc_B8135F: FLdPr Me
  loc_B81362: MemLdStr global_92
  loc_B81365: AryLock
  loc_B81368: Ary1LdRf
  loc_B81369: FStR4 var_FC
  loc_B8136C: FLdRfVar var_A4
  loc_B8136F: FLdPr Me
  loc_B81372: MemLdStr global_96
  loc_B81375: Call Proc_325_18_A16B8C()
  loc_B8137A: FLdZeroAd var_A4
  loc_B8137D: FStStr var_8C
  loc_B81380: ILdRf var_9C
  loc_B81383: ILdRf var_8C
  loc_B81386: ConcatStr
  loc_B81387: FStStrNoPop var_A4
  loc_B8138A: LitStr ".html"
  loc_B8138D: ConcatStr
  loc_B8138E: ImpAdStStr MemVar_D93C84
  loc_B81392: FFree1Str var_A4
  loc_B81395: LitI4 0
  loc_B8139A: FStR4 var_FC
  loc_B8139D: AryUnlock
  loc_B813A0: FLdPr Me
  loc_B813A3: MemLdStr global_96
  loc_B813A6: CR8I4
  loc_B813A7: CVarR4
  loc_B813AB: PopAdLdVar
  loc_B813AC: FLdPr Me
  loc_B813AF: VCallAd Control_ID_pbar
  loc_B813B2: FStAdFunc var_EC
  loc_B813B5: FLdPr var_EC
  loc_B813B8: LateIdSt
  loc_B813BD: FFree1Ad var_EC
  loc_B813C0: FLdPr Me
  loc_B813C3: MemLdStr global_96
  loc_B813C6: CStrI4
  loc_B813C8: FStStrNoPop var_A4
  loc_B813CB: LitStr "/"
  loc_B813CE: ConcatStr
  loc_B813CF: FStStrNoPop var_100
  loc_B813D2: FLdPr Me
  loc_B813D5: MemLdStr global_92
  loc_B813D8: LitI2_Byte 1
  loc_B813DA: FnUBound
  loc_B813DC: CStrI4
  loc_B813DE: FStStrNoPop var_104
  loc_B813E1: ConcatStr
  loc_B813E2: FStStrNoPop var_108
  loc_B813E5: FLdPr Me
  loc_B813E8: VCallAd Control_ID_ProgresoLbl
  loc_B813EB: FStAdFunc var_EC
  loc_B813EE: FLdPr var_EC
  loc_B813F1: Me.Caption = from_stack_1
  loc_B813F6: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B81401: FFree1Ad var_EC
  loc_B81404: Call GeneraHTML()
  loc_B81409: ILdRf var_90
  loc_B8140C: LitStr """"
  loc_B8140F: ConcatStr
  loc_B81410: FStStrNoPop var_A4
  loc_B81413: ImpAdLdI4 MemVar_D93C84
  loc_B81416: ConcatStr
  loc_B81417: FStStrNoPop var_100
  loc_B8141A: LitStr """ "
  loc_B8141D: ConcatStr
  loc_B8141E: FStStr var_90
  loc_B81421: FFreeStr var_A4 = ""
  loc_B81428: FLdPr Me
  loc_B8142B: MemLdStr global_96
  loc_B8142E: LitI4 &HFA
  loc_B81433: ModI4
  loc_B81434: LitI4 0
  loc_B81439: EqI4
  loc_B8143A: FLdPr Me
  loc_B8143D: MemLdStr global_96
  loc_B81440: FLdPr Me
  loc_B81443: MemLdStr global_92
  loc_B81446: LitI2_Byte 1
  loc_B81448: FnUBound
  loc_B8144A: EqI4
  loc_B8144B: OrI4
  loc_B8144C: BranchF loc_B815B0
  loc_B8144F: FLdPr Me
  loc_B81452: MemLdStr global_96
  loc_B81455: FLdPr Me
  loc_B81458: MemLdStr global_92
  loc_B8145B: LitI2_Byte 1
  loc_B8145D: FnUBound
  loc_B8145F: EqI4
  loc_B81460: BranchF loc_B814A6
  loc_B81463: LitStr " ("
  loc_B81466: ILdRf var_98
  loc_B81469: CStrI4
  loc_B8146B: FStStrNoPop var_A4
  loc_B8146E: ConcatStr
  loc_B8146F: FStStrNoPop var_100
  loc_B81472: LitStr "-"
  loc_B81475: ConcatStr
  loc_B81476: FStStrNoPop var_104
  loc_B81479: FLdPr Me
  loc_B8147C: MemLdStr global_92
  loc_B8147F: LitI2_Byte 1
  loc_B81481: FnUBound
  loc_B81483: FLdPr Me
  loc_B81486: MemLdStr global_92
  loc_B81489: Ary1LdPr
  loc_B8148A: MemLdStr global_84
  loc_B8148D: ConcatStr
  loc_B8148E: FStStrNoPop var_108
  loc_B81491: LitStr ")"
  loc_B81494: ConcatStr
  loc_B81495: FStStr var_94
  loc_B81498: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B814A3: Branch loc_B814FC
  loc_B814A6: LitStr " ("
  loc_B814A9: ILdRf var_98
  loc_B814AC: CStrI4
  loc_B814AE: FStStrNoPop var_A4
  loc_B814B1: ConcatStr
  loc_B814B2: FStStrNoPop var_100
  loc_B814B5: LitStr "-"
  loc_B814B8: ConcatStr
  loc_B814B9: FStStrNoPop var_104
  loc_B814BC: FLdPr Me
  loc_B814BF: MemLdStr global_96
  loc_B814C2: FLdPr Me
  loc_B814C5: MemLdStr global_92
  loc_B814C8: Ary1LdPr
  loc_B814C9: MemLdStr global_84
  loc_B814CC: ConcatStr
  loc_B814CD: FStStrNoPop var_108
  loc_B814D0: LitStr ")"
  loc_B814D3: ConcatStr
  loc_B814D4: FStStr var_94
  loc_B814D7: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B814E2: FLdPr Me
  loc_B814E5: MemLdStr global_96
  loc_B814E8: LitI4 1
  loc_B814ED: AddI4
  loc_B814EE: FLdPr Me
  loc_B814F1: MemLdStr global_92
  loc_B814F4: Ary1LdPr
  loc_B814F5: MemLdStr global_84
  loc_B814F8: CI4Str
  loc_B814F9: FStR4 var_98
  loc_B814FC: FLdPr Me
  loc_B814FF: MemLdStr global_76
  loc_B81502: LitStr "\comercio"
  loc_B81505: ConcatStr
  loc_B81506: FStStrNoPop var_A4
  loc_B81509: ILdRf var_94
  loc_B8150C: ConcatStr
  loc_B8150D: FStStrNoPop var_100
  loc_B81510: LitStr ".pdf"
  loc_B81513: ConcatStr
  loc_B81514: ImpAdStStr MemVar_D93030
  loc_B81518: FFreeStr var_A4 = ""
  loc_B8151F: ILdRf var_90
  loc_B81522: FnLenStr
  loc_B81523: LitI4 3
  loc_B81528: SubI4
  loc_B81529: CVarI4
  loc_B8152D: LitI4 2
  loc_B81532: FLdRfVar var_90
  loc_B81535: CVarRef
  loc_B8153A: FLdRfVar var_E4
  loc_B8153D: ImpAdCallFPR4  = Mid(, , )
  loc_B81542: FLdRfVar var_E4
  loc_B81545: CStrVarTmp
  loc_B81546: FStStr var_90
  loc_B81549: FFreeVar var_C4 = ""
  loc_B81550: LitStr vbNullString
  loc_B81553: ImpAdLdI4 MemVar_D93030
  loc_B81556: ILdRf var_90
  loc_B81559: ImpAdCallFPR4 Proc_57_55_AE2160(, , )
  loc_B8155E: LitStr "Guardando PDF: '"
  loc_B81561: ImpAdLdI4 MemVar_D93030
  loc_B81564: ConcatStr
  loc_B81565: FStStrNoPop var_A4
  loc_B81568: LitStr "'"
  loc_B8156B: ConcatStr
  loc_B8156C: CVarStr var_C4
  loc_B8156F: PopAdLdVar
  loc_B81570: FLdPr Me
  loc_B81573: VCallAd Control_ID_statusBar
  loc_B81576: FStAdFunc var_EC
  loc_B81579: FLdPr var_EC
  loc_B8157C: LateIdSt
  loc_B81581: FFree1Str var_A4
  loc_B81584: FFree1Ad var_EC
  loc_B81587: FFree1Var var_C4 = ""
  loc_B8158A: FLdRfVar var_E6
  loc_B8158D: ImpAdLdI4 MemVar_D93030
  loc_B81590: FLdRfVar var_88
  loc_B81593: NewIfNullPr IFileSystem3
  loc_B81596: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B8159B: FLdI2 var_E6
  loc_B8159E: NotI4
  loc_B8159F: BranchF loc_B815AA
  loc_B815A2: ImpAdCallFPR4 DoEvents()
  loc_B815A7: Branch loc_B8158A
  loc_B815AA: LitStr vbNullString
  loc_B815AD: FStStrCopy var_90
  loc_B815B0: ImpAdCallFPR4 DoEvents()
  loc_B815B5: FLdPr Me
  loc_B815B8: MemLdRfVar from_stack_1.global_96
  loc_B815BB: NextI4 var_F4, loc_B81359
  loc_B815C0: LitStr "Proceso terminado."
  loc_B815C3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B815C8: FLdRfVar var_E6
  loc_B815CB: ILdRf var_9C
  loc_B815CE: FLdRfVar var_88
  loc_B815D1: NewIfNullPr IFileSystem3
  loc_B815D4: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B815D9: FLdI2 var_E6
  loc_B815DC: BranchF loc_B815F2
  loc_B815DF: LitStr "*.*"
  loc_B815E2: ILdRf var_9C
  loc_B815E5: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B815EA: ILdRf var_9C
  loc_B815ED: ImpAdCallFPR4 RmDir 
  loc_B815F2: LitVar_FALSE
  loc_B815F6: PopAdLdVar
  loc_B815F7: FLdPr Me
  loc_B815FA: VCallAd Control_ID_pbar
  loc_B815FD: FStAdFunc var_EC
  loc_B81600: FLdPr var_EC
  loc_B81603: LateIdSt
  loc_B81608: FFree1Ad var_EC
  loc_B8160B: FLdPr Me
  loc_B8160E: MemLdStr global_76
  loc_B81611: ImpAdCallFPR4 Proc_272_64_A06738()
  loc_B81616: ILdRf Me
  loc_B81619: CastAd
  loc_B8161C: FStAdFunc var_EC
  loc_B8161F: FLdRfVar var_EC
  loc_B81622: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B81627: FFree1Ad var_EC
  loc_B8162A: LitVarStr var_B4, vbNullString
  loc_B8162F: PopAdLdVar
  loc_B81630: FLdPr Me
  loc_B81633: VCallAd Control_ID_statusBar
  loc_B81636: FStAdFunc var_EC
  loc_B81639: FLdPr var_EC
  loc_B8163C: LateIdSt
  loc_B81641: FFree1Ad var_EC
  loc_B81644: FLdPr Me
  loc_B81647: VCallAd Control_ID_dgdLiquidacion
  loc_B8164A: FStAdFunc var_EC
  loc_B8164D: FLdPr var_EC
  loc_B81650: LateIdLdVar var_C4 DispID_13 -32767
  loc_B81657: CBoolVar
  loc_B81659: FFree1Ad var_EC
  loc_B8165C: FFree1Var var_C4 = ""
  loc_B8165F: BranchF loc_B81679
  loc_B81662: FLdPr Me
  loc_B81665: VCallAd Control_ID_dgdLiquidacion
  loc_B81668: FStAdFunc var_EC
  loc_B8166B: FLdPr var_EC
  loc_B8166E: LateIdCall
  loc_B81676: FFree1Ad var_EC
  loc_B81679: ExitProcHresult
  loc_B8167A: FLdRfVar var_A0
  loc_B8167D: ImpAdCallI2 Err 'rtcErrObj
  loc_B81682: FStAdFunc var_EC
  loc_B81685: FLdPr var_EC
  loc_B81688:  = Err.Number
  loc_B8168D: ILdRf var_A0
  loc_B81690: FStR4 var_10C
  loc_B81693: FFree1Ad var_EC
  loc_B81696: ILdRf var_10C
  loc_B81699: LitI4 &H4C
  loc_B8169E: EqI4
  loc_B8169F: BranchF loc_B816A5
  loc_B816A2: Branch loc_B81701
  loc_B816A5: LitStr "Error "
  loc_B816A8: FLdRfVar var_A0
  loc_B816AB: ImpAdCallI2 Err 'rtcErrObj
  loc_B816B0: FStAdFunc var_EC
  loc_B816B3: FLdPr var_EC
  loc_B816B6:  = Err.Number
  loc_B816BB: ILdRf var_A0
  loc_B816BE: CStrI4
  loc_B816C0: FStStrNoPop var_A4
  loc_B816C3: ConcatStr
  loc_B816C4: FStStrNoPop var_100
  loc_B816C7: LitStr ": "
  loc_B816CA: ConcatStr
  loc_B816CB: FStStrNoPop var_108
  loc_B816CE: FLdRfVar var_104
  loc_B816D1: ImpAdCallI2 Err 'rtcErrObj
  loc_B816D6: FStAdFunc var_110
  loc_B816D9: FLdPr var_110
  loc_B816DC:  = Err.Description
  loc_B816E1: ILdRf var_104
  loc_B816E4: ConcatStr
  loc_B816E5: FStStrNoPop var_114
  loc_B816E8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B816ED: FFreeStr var_A4 = "": var_100 = "": var_108 = "": var_104 = ""
  loc_B816FA: FFreeAd var_EC = ""
  loc_B81701: ExitProcHresult
  loc_B81702: GtCyR8
End Sub

Private Sub cmdSalir_Click() '9FE74C
  'Data Table: 4CA014
  loc_9FE71C: LitVarStr var_94, "Cerrando..."
  loc_9FE721: PopAdLdVar
  loc_9FE722: FLdPr Me
  loc_9FE725: VCallAd Control_ID_statusBar
  loc_9FE728: FStAdFunc var_A8
  loc_9FE72B: FLdPr var_A8
  loc_9FE72E: LateIdSt
  loc_9FE733: FFree1Ad var_A8
  loc_9FE736: ILdRf Me
  loc_9FE739: FStAdNoPop
  loc_9FE73D: ImpAdLdRf MemVar_D9C5D8
  loc_9FE740: NewIfNullPr Global
  loc_9FE743: Global.Unload from_stack_1
  loc_9FE748: FFree1Ad var_A8
  loc_9FE74B: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A19B58
  'Data Table: 4CA014
  loc_A19B20: FLdPr Me
  loc_A19B23: VCallAd Control_ID_statusBar
  loc_A19B26: FStAdFunc var_88
  loc_A19B29: FLdPr var_88
  loc_A19B2C: LateIdLdVar var_98 DispID_1 0
  loc_A19B33: CStrVarTmp
  loc_A19B34: CVarStr var_A8
  loc_A19B37: PopAdLdVar
  loc_A19B38: FLdPr Me
  loc_A19B3B: VCallAd Control_ID_statusBar
  loc_A19B3E: FStAdFunc var_BC
  loc_A19B41: FLdPr var_BC
  loc_A19B44: LateIdSt
  loc_A19B49: FFreeAd var_88 = ""
  loc_A19B50: FFreeVar var_98 = ""
  loc_A19B57: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ADA2BC
  'Data Table: 4CA014
  loc_ADA178: LitI2_Byte 0
  loc_ADA17A: FLdPr Me
  loc_ADA17D: MemStI2 bGenerado
  loc_ADA180: LitI2_Byte &HFF
  loc_ADA182: ILdRf Me
  loc_ADA185: CastAd
  loc_ADA188: FStAdFunc var_88
  loc_ADA18B: FLdRfVar var_88
  loc_ADA18E: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_ADA193: FFree1Ad var_88
  loc_ADA196: FLdPr Me
  loc_ADA199: MemLdRfVar from_stack_1.global_80
  loc_ADA19C: NewIfNullPr clsliquidacion
  loc_ADA19F: Call clsliquidacion.Requery()
  loc_ADA1A4: LitVarStr var_98, vbNullString
  loc_ADA1A9: PopAdLdVar
  loc_ADA1AA: FLdPr Me
  loc_ADA1AD: VCallAd Control_ID_OrdeLicoDesdeMsk
  loc_ADA1B0: FStAdFunc var_88
  loc_ADA1B3: FLdPr var_88
  loc_ADA1B6: LateIdSt
  loc_ADA1BB: FFree1Ad var_88
  loc_ADA1BE: LitVarStr var_98, vbNullString
  loc_ADA1C3: PopAdLdVar
  loc_ADA1C4: FLdPr Me
  loc_ADA1C7: VCallAd Control_ID_OrdeLicoHastaMsk
  loc_ADA1CA: FStAdFunc var_88
  loc_ADA1CD: FLdPr var_88
  loc_ADA1D0: LateIdSt
  loc_ADA1D5: FFree1Ad var_88
  loc_ADA1D8: LitStr vbNullString
  loc_ADA1DB: FLdPr Me
  loc_ADA1DE: VCallAd Control_ID_ProgresoLbl
  loc_ADA1E1: FStAdFunc var_88
  loc_ADA1E4: FLdPr var_88
  loc_ADA1E7: Me.Caption = from_stack_1
  loc_ADA1EC: FFree1Ad var_88
  loc_ADA1EF: FLdRfVar var_AC
  loc_ADA1F2: FLdPr Me
  loc_ADA1F5: MemLdRfVar from_stack_1.global_80
  loc_ADA1F8: NewIfNullPr clsliquidacion
  loc_ADA1FB: from_stack_1 = clsliquidacion.RecordCount
  loc_ADA200: ILdRf var_AC
  loc_ADA203: LitI4 0
  loc_ADA208: GtI4
  loc_ADA209: BranchF loc_ADA27B
  loc_ADA20C: LitI4 0
  loc_ADA211: LitI4 1
  loc_ADA216: FLdRfVar var_B0
  loc_ADA219: Redim
  loc_ADA223: FLdPr Me
  loc_ADA226: MemLdRfVar from_stack_1.global_80
  loc_ADA229: NewIfNullAd
  loc_ADA22C: FStAd var_88 
  loc_ADA230: FLdRfVar var_88
  loc_ADA233: CVarRef
  loc_ADA238: ParmAry1St
  loc_ADA23E: FLdPr Me
  loc_ADA241: VCallAd Control_ID_dgdLiquidacion
  loc_ADA244: CVarAd
  loc_ADA248: ParmAry1St
  loc_ADA24E: FLdRfVar var_B0
  loc_ADA251: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ADA256: ILdRf var_88
  loc_ADA259: CastAd
  loc_ADA25C: FLdPr Me
  loc_ADA25F: MemStAdFunc
  loc_ADA263: FLdRfVar var_B0
  loc_ADA266: Erase
  loc_ADA267: FFree1Ad var_88
  loc_ADA26A: FLdPr Me
  loc_ADA26D: MemLdRfVar from_stack_1.global_80
  loc_ADA270: NewIfNullPr clsliquidacion
  loc_ADA273: Call clsliquidacion.MoveLast()
  loc_ADA278: Branch loc_ADA297
  loc_ADA27B: LitStr "No existen liquidaciones para listar"
  loc_ADA27E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADA283: ILdRf Me
  loc_ADA286: CastAd
  loc_ADA289: FStAdFunc var_88
  loc_ADA28C: FLdRfVar var_88
  loc_ADA28F: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_ADA294: FFree1Ad var_88
  loc_ADA297: LitStr vbNullString
  loc_ADA29A: FLdPr Me
  loc_ADA29D: Me.Tag = from_stack_1
  loc_ADA2A2: Call HabilitarCriterio()
  loc_ADA2A7: ILdRf Me
  loc_ADA2AA: CastAd
  loc_ADA2AD: FStAdFunc var_88
  loc_ADA2B0: FLdRfVar var_88
  loc_ADA2B3: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ADA2B8: FFree1Ad var_88
  loc_ADA2BB: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8A7A8
  'Data Table: 4CA014
  loc_A8A70C: LitStr "PRIMER"
  loc_A8A70F: LitI4 1
  loc_A8A714: FLdPr Me
  loc_A8A717: MemLdRfVar from_stack_1.global_124
  loc_A8A71A: Ary1StStrCopy
  loc_A8A71B: LitStr "SEGUNDO"
  loc_A8A71E: LitI4 2
  loc_A8A723: FLdPr Me
  loc_A8A726: MemLdRfVar from_stack_1.global_124
  loc_A8A729: Ary1StStrCopy
  loc_A8A72A: LitStr "TERCER"
  loc_A8A72D: LitI4 3
  loc_A8A732: FLdPr Me
  loc_A8A735: MemLdRfVar from_stack_1.global_124
  loc_A8A738: Ary1StStrCopy
  loc_A8A739: LitStr "CUARTO"
  loc_A8A73C: LitI4 4
  loc_A8A741: FLdPr Me
  loc_A8A744: MemLdRfVar from_stack_1.global_124
  loc_A8A747: Ary1StStrCopy
  loc_A8A748: LitStr "QUINTO"
  loc_A8A74B: LitI4 5
  loc_A8A750: FLdPr Me
  loc_A8A753: MemLdRfVar from_stack_1.global_124
  loc_A8A756: Ary1StStrCopy
  loc_A8A757: LitStr "SEXTO"
  loc_A8A75A: LitI4 6
  loc_A8A75F: FLdPr Me
  loc_A8A762: MemLdRfVar from_stack_1.global_124
  loc_A8A765: Ary1StStrCopy
  loc_A8A766: ILdRf Me
  loc_A8A769: CastAd
  loc_A8A76C: FStAdFunc var_88
  loc_A8A76F: FLdRfVar var_88
  loc_A8A772: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A8A777: FFree1Ad var_88
  loc_A8A77A: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu, LeyeTili, FealLiqu"
  loc_A8A77D: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A8A780: ConcatStr
  loc_A8A781: FStStrNoPop var_8C
  loc_A8A784: LitStr " WHERE liquidacion.CodiOfic = 2 AND ActuLiqu = 'Si' ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A8A787: ConcatStr
  loc_A8A788: FStStrNoPop var_90
  loc_A8A78B: FLdPr Me
  loc_A8A78E: MemLdRfVar from_stack_1.global_80
  loc_A8A791: NewIfNullPr clsliquidacion
  loc_A8A794: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A8A799: FFreeStr var_8C = ""
  loc_A8A7A0: Call cmdNueva_Click()
  loc_A8A7A5: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D2894
  'Data Table: 4CA014
  loc_9D287C: FLdPr Me
  loc_9D287F: VCallAd Control_ID_wbbReporte
  loc_9D2882: FStAdFunc var_88
  loc_9D2885: FLdRfVar var_88
  loc_9D2888: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D288D: FFree1Ad var_88
  loc_9D2890: ExitProcHresult
End Sub

Private Sub OrdeLicoDesdeMsk_UnknownEvent_0 '9C1298
  'Data Table: 4CA014
  loc_9C1284: FLdPr Me
  loc_9C1287: VCallAd Control_ID_OrdeLicoDesdeMsk
  loc_9C128A: CVarAd
  loc_9C128E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1293: FFree1Var var_94 = ""
  loc_9C1296: ExitProcHresult
End Sub

Private Sub OrdeLicoDesdeMsk_UnknownEvent_8 '9B088C
  'Data Table: 4CA014
  loc_9B0884: LitI2_Byte &HFF
  loc_9B0886: Call Proc_325_20_AF4648()
  loc_9B088B: ExitProcHresult
End Sub

Private Sub OrdeLicoHastaMsk_UnknownEvent_0 '9C13B8
  'Data Table: 4CA014
  loc_9C13A4: FLdPr Me
  loc_9C13A7: VCallAd Control_ID_OrdeLicoHastaMsk
  loc_9C13AA: CVarAd
  loc_9C13AE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C13B3: FFree1Var var_94 = ""
  loc_9C13B6: ExitProcHresult
End Sub

Private Sub OrdeLicoHastaMsk_UnknownEvent_8 '9B07AC
  'Data Table: 4CA014
  loc_9B07A4: LitI2_Byte &HFF
  loc_9B07A6: Call Proc_325_20_AF4648()
  loc_9B07AB: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4CB230
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4CB23F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A609B0
  'Data Table: 4CA014
  loc_A6095C: LitI4 0
  loc_A60961: LitI4 2
  loc_A60966: FLdRfVar var_88
  loc_A60969: Redim
  loc_A60973: FLdPr Me
  loc_A60976: VCallAd Control_ID_dgdLiquidacion
  loc_A60979: CVarAd
  loc_A6097D: ParmAry1St
  loc_A60983: FLdPr Me
  loc_A60986: VCallAd Control_ID_OrdeLicoDesdeMsk
  loc_A60989: CVarAd
  loc_A6098D: ParmAry1St
  loc_A60993: FLdPr Me
  loc_A60996: VCallAd Control_ID_OrdeLicoHastaMsk
  loc_A60999: CVarAd
  loc_A6099D: ParmAry1St
  loc_A609A3: FLdRfVar var_88
  loc_A609A6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A609AB: FLdRfVar var_88
  loc_A609AE: Erase
  loc_A609AF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B55630
  'Data Table: 4CA014
  loc_B552C4: FLdPr Me
  loc_B552C7: MemLdI2 bGenerado
  loc_B552CA: BranchF loc_B552CE
  loc_B552CD: ExitProcHresult
  loc_B552CE: LitVarStr var_94, "Generando reporte..."
  loc_B552D3: PopAdLdVar
  loc_B552D4: FLdPr Me
  loc_B552D7: VCallAd Control_ID_statusBar
  loc_B552DA: FStAdFunc var_A8
  loc_B552DD: FLdPr var_A8
  loc_B552E0: LateIdSt
  loc_B552E5: FFree1Ad var_A8
  loc_B552E8: LitI4 &HB
  loc_B552ED: CI2I4
  loc_B552EE: FLdPr Me
  loc_B552F1: Me.MousePointer = from_stack_1
  loc_B552F6: FLdRfVar var_AC
  loc_B552F9: FLdPr Me
  loc_B552FC: MemLdRfVar from_stack_1.global_80
  loc_B552FF: NewIfNullPr clsliquidacion
  loc_B55302: from_stack_1 = clsliquidacion.RecordCount
  loc_B55307: ILdRf var_AC
  loc_B5530A: LitI4 1
  loc_B5530F: LtI4
  loc_B55310: BranchF loc_B5531E
  loc_B55313: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B55316: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5531B: Branch loc_B55607
  loc_B5531E: Call Proc_325_19_AD1378()
  loc_B55323: FLdPr Me
  loc_B55326: MemLdRfVar from_stack_1.global_84
  loc_B55329: NewIfNullAd
  loc_B5532C: FStAd var_B0 
  loc_B55330: LitStr "SELECT liqucome.CodiCome, liqucome.TipoVenc, OrdeLico, liqucome.FeacLico, liqucome.BimeLiqu, sum(TotaLico) as TotaLico, boleto.PeriBole, boleto.NumeBole, SUM(if(liqucome.CodiConc='13030202',TotaLico,0)) RecaBole,"
  loc_B55333: LitStr " boleto.FeveBole as FeveLico, CAST(boleto.TotaBole AS DOUBLE(10,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, p1.DetaPers, ifnull(p2.DetaPers,'') as Vinculo, RazoCome, DeudLico, CAST((ifnull(ImpoLico,0)-ifnull(TotaLcde,0)) AS DOUBLE(10,2)) as ImpoLico, CAST(ExenLico+DescLico AS DOUBLE(10,2)) as DescLico, ifnull(licodeta.TotaLcde,0) as CEmision,"
  loc_B55336: ConcatStr
  loc_B55337: FStStrNoPop var_B4
  loc_B5533A: LitStr " CallLico as DetaCall, NucaLico, BarrLico as DetaBarr, ManzLico, CasaLico, UbicLico, LocaLico as DetaLoca, CopoLico,"
  loc_B5533D: ConcatStr
  loc_B5533E: FStStrNoPop var_B8
  loc_B55341: LitStr " IFNULL(domicilio.calle,'') as CallLicoReal, IFNULL(domicilio.NumeCalle,'0') as NucaLicoReal, IFNULL(domicilio.barrio,'') as BarrLicoReal, IFNULL(domicilio.Manzana,'') as ManzLicoReal, IFNULL(domicilio.Casa,'') as CasaLicoReal,"
  loc_B55344: ConcatStr
  loc_B55345: FStStrNoPop var_BC
  loc_B55348: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbicLicoReal,"
  loc_B5534B: ConcatStr
  loc_B5534C: FStStrNoPop var_C0
  loc_B5534F: LitStr " IFNULL(domicilio.Localidad,'') as LocaLicoReal, IFNULL(domicilio.CodPostal,'0') as CopoLicoReal,"
  loc_B55352: ConcatStr
  loc_B55353: FStStrNoPop var_C4
  loc_B55356: LitStr " (SELECT cast(group_concat(DISTINCT if(lq2.TipoVenc=1,lq2.BimeLiqu,'anual') ORDER BY lq2.TipoVenc, lq2.BimeLiqu ASC SEPARATOR ', ') as CHAR) FROM liqucome as lq2 WHERE lq2.TipoLico = liqucome.TipoLico AND FeacLico is not null AND lq2.PeriLiqu = liqucome.PeriLiqu AND lq2.CodiTili = liqucome.CodiTili AND lq2.NumeLiqu = liqucome.NumeLiqu AND lq2.OrdeLico = liqucome.OrdeLico) as Bimestres"
  loc_B55359: ConcatStr
  loc_B5535A: FStStrNoPop var_C8
  loc_B5535D: LitStr " FROM liqucome"
  loc_B55360: ConcatStr
  loc_B55361: FStStrNoPop var_CC
  loc_B55364: LitStr " INNER JOIN boleto ON boleto.CodiOfic = 2 AND boleto.CuenCtct = liqucome.CodiCome AND boleto.PeriBole = liqucome.PeriBole AND boleto.NumeBole = liqucome.NumeBole"
  loc_B55367: ConcatStr
  loc_B55368: FStStrNoPop var_D0
  loc_B5536B: LitStr " LEFT JOIN licodeta ON licodeta.PeriLiqu = liqucome.PeriLiqu AND licodeta.CodiTili = liqucome.CodiTili AND licodeta.NumeLiqu = liqucome.NumeLiqu AND licodeta.BimeLiqu = liqucome.BimeLiqu AND licodeta.CodiConc = '13020201' AND licodeta.CodiCome = liqucome.CodiCome AND licodeta.TipoVenc = liqucome.TipoVenc AND licodeta.CodiSubr=999"
  loc_B5536E: ConcatStr
  loc_B5536F: FStStrNoPop var_D4
  loc_B55372: LitStr " LEFT JOIN comercio ON comercio.CodiCome = boleto.CuenCtct"
  loc_B55375: ConcatStr
  loc_B55376: FStStrNoPop var_D8
  loc_B55379: LitStr " LEFT JOIN infogov.persona as p1 ON p1.CucuPers = liqucome.CucuPers"
  loc_B5537C: ConcatStr
  loc_B5537D: FStStrNoPop var_DC
  loc_B55380: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = 2 AND relacion.CuenCtct = comercio.CodiCome AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_B55383: ConcatStr
  loc_B55384: FStStrNoPop var_E0
  loc_B55387: LitStr " LEFT JOIN infogov.persona as p2 ON p2.CucuPers = relacion.CucuPers"
  loc_B5538A: ConcatStr
  loc_B5538B: FStStrNoPop var_E4
  loc_B5538E: LitStr " LEFT JOIN domicilio ON domicilio.CodiCome = liqucome.CodiCome AND domicilio.CodiOfic = 2 AND domicilio.Tipo = 'COMERCIAL'"
  loc_B55391: ConcatStr
  loc_B55392: FStStrNoPop var_E8
  loc_B55395: LitStr " WHERE TipoLico = 'Aforo' AND FeacLico is not null"
  loc_B55398: ConcatStr
  loc_B55399: FStStrNoPop var_EC
  loc_B5539C: LitStr " AND liqucome.PeriLiqu = "
  loc_B5539F: ConcatStr
  loc_B553A0: FStStrNoPop var_F4
  loc_B553A3: FLdRfVar var_EE
  loc_B553A6: FLdPr Me
  loc_B553A9: MemLdRfVar from_stack_1.global_80
  loc_B553AC: NewIfNullPr clsliquidacion
  loc_B553AF: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B553B4: FLdI2 var_EE
  loc_B553B7: CStrUI1
  loc_B553B9: FStStrNoPop var_F8
  loc_B553BC: ConcatStr
  loc_B553BD: FStStrNoPop var_FC
  loc_B553C0: LitStr " AND liqucome.CodiTili = "
  loc_B553C3: ConcatStr
  loc_B553C4: FStStrNoPop var_104
  loc_B553C7: FLdRfVar var_FE
  loc_B553CA: FLdPr Me
  loc_B553CD: MemLdRfVar from_stack_1.global_80
  loc_B553D0: NewIfNullPr clsliquidacion
  loc_B553D3: from_stack_1 = clsliquidacion.CodiTili
  loc_B553D8: FLdUI1
  loc_B553DC: CStrI2
  loc_B553DE: FStStrNoPop var_108
  loc_B553E1: ConcatStr
  loc_B553E2: FStStrNoPop var_10C
  loc_B553E5: LitStr " AND liqucome.NumeLiqu = "
  loc_B553E8: ConcatStr
  loc_B553E9: FStStrNoPop var_114
  loc_B553EC: FLdRfVar var_10E
  loc_B553EF: FLdPr Me
  loc_B553F2: MemLdRfVar from_stack_1.global_80
  loc_B553F5: NewIfNullPr clsliquidacion
  loc_B553F8: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B553FD: FLdI2 var_10E
  loc_B55400: CStrUI1
  loc_B55402: FStStrNoPop var_118
  loc_B55405: ConcatStr
  loc_B55406: FStStrNoPop var_11C
  loc_B55409: FLdPr Me
  loc_B5540C: MemLdStr global_112
  loc_B5540F: ConcatStr
  loc_B55410: FStStrNoPop var_120
  loc_B55413: FLdPr Me
  loc_B55416: MemLdStr global_116
  loc_B55419: ConcatStr
  loc_B5541A: FStStrNoPop var_124
  loc_B5541D: LitStr " GROUP BY OrdeLico, TipoVenc,  BimeLiqu, liqucome.PeriBole, liqucome.NumeBole HAVING TotaLico <> 0 ORDER BY OrdeLico, BimeLiqu, liqucome.PeriBole, liqucome.NumeBole"
  loc_B55420: ConcatStr
  loc_B55421: FStStrNoPop var_128
  loc_B55424: FLdPr var_B0
  loc_B55427: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_B5542C: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_B55465: FLdRfVar var_AC
  loc_B55468: FLdPr var_B0
  loc_B5546B: from_stack_1 = clsliqucome.RecordCount
  loc_B55470: ILdRf var_AC
  loc_B55473: LitI4 1
  loc_B55478: LtI4
  loc_B55479: BranchF loc_B55487
  loc_B5547C: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B5547F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B55484: Branch loc_B55607
  loc_B55487: LitI4 0
  loc_B5548C: LitI4 0
  loc_B55491: FLdPr Me
  loc_B55494: MemLdRfVar from_stack_1.global_92
  loc_B55497: Redim
  loc_B554A1: LitI4 0
  loc_B554A6: FLdPr Me
  loc_B554A9: MemStI4 global_96
  loc_B554AC: LitI2_Byte 0
  loc_B554AE: FLdPr Me
  loc_B554B1: MemStI2 global_104
  loc_B554B4: FLdPr var_B0
  loc_B554B7: Call clsliqucome.MoveFirst()
  loc_B554BC: FLdRfVar var_AC
  loc_B554BF: FLdPr var_B0
  loc_B554C2: from_stack_1 = clsliqucome.RecordCount
  loc_B554C7: ILdRf var_AC
  loc_B554CA: CR8I4
  loc_B554CB: CVarR4
  loc_B554CF: PopAdLdVar
  loc_B554D0: FLdPr Me
  loc_B554D3: VCallAd Control_ID_pbar
  loc_B554D6: FStAdFunc var_A8
  loc_B554D9: FLdPr var_A8
  loc_B554DC: LateIdSt
  loc_B554E1: FFree1Ad var_A8
  loc_B554E4: LitVar_TRUE var_94
  loc_B554E7: PopAdLdVar
  loc_B554E8: FLdPr Me
  loc_B554EB: VCallAd Control_ID_pbar
  loc_B554EE: FStAdFunc var_A8
  loc_B554F1: FLdPr var_A8
  loc_B554F4: LateIdSt
  loc_B554F9: FFree1Ad var_A8
  loc_B554FC: FLdRfVar var_EE
  loc_B554FF: FLdPr var_B0
  loc_B55502: from_stack_1 = clsliqucome.EOF
  loc_B55507: FLdI2 var_EE
  loc_B5550A: NotI4
  loc_B5550B: BranchF loc_B555E0
  loc_B5550E: FLdRfVar var_AC
  loc_B55511: FLdPr var_B0
  loc_B55514: from_stack_1 = clsliqucome.AbsolutePosition
  loc_B55519: ILdRf var_AC
  loc_B5551C: CR8I4
  loc_B5551D: CVarR4
  loc_B55521: PopAdLdVar
  loc_B55522: FLdPr Me
  loc_B55525: VCallAd Control_ID_pbar
  loc_B55528: FStAdFunc var_A8
  loc_B5552B: FLdPr var_A8
  loc_B5552E: LateIdSt
  loc_B55533: FFree1Ad var_A8
  loc_B55536: FLdRfVar var_AC
  loc_B55539: FLdPr var_B0
  loc_B5553C: from_stack_1 = clsliqucome.AbsolutePosition
  loc_B55541: FLdRfVar var_12C
  loc_B55544: FLdPr var_B0
  loc_B55547: from_stack_1 = clsliqucome.RecordCount
  loc_B5554C: LitI4 1
  loc_B55551: LitI4 1
  loc_B55556: LitVarStr var_A4, "0" & Chr(37)
  loc_B5555B: FStVarCopyObj var_14C
  loc_B5555E: FLdRfVar var_14C
  loc_B55561: ILdRf var_AC
  loc_B55564: CR8I4
  loc_B55565: ILdRf var_12C
  loc_B55568: CR8I4
  loc_B55569: DivR8
  loc_B5556A: CVarR8
  loc_B5556E: ImpAdCallI2 Format$(, )
  loc_B55573: FStStrNoPop var_B4
  loc_B55576: FLdPr Me
  loc_B55579: VCallAd Control_ID_ProgresoLbl
  loc_B5557C: FStAdFunc var_A8
  loc_B5557F: FLdPr var_A8
  loc_B55582: Me.Caption = from_stack_1
  loc_B55587: FFree1Str var_B4
  loc_B5558A: FFree1Ad var_A8
  loc_B5558D: FFreeVar var_13C = ""
  loc_B55594: FLdPr Me
  loc_B55597: MemLdStr global_96
  loc_B5559A: FLdPr Me
  loc_B5559D: MemLdStr global_92
  loc_B555A0: Ary1LdPr
  loc_B555A1: MemLdStr global_76
  loc_B555A4: FLdRfVar var_AC
  loc_B555A7: FLdPr var_B0
  loc_B555AA: from_stack_1 = clsliqucome.CodiCome
  loc_B555AF: ILdRf var_AC
  loc_B555B2: CStrI4
  loc_B555B4: FStStrNoPop var_B4
  loc_B555B7: NeStr
  loc_B555B9: FFree1Str var_B4
  loc_B555BC: BranchF loc_B555C7
  loc_B555BF: Call Proc_325_21_BBFC14()
  loc_B555C4: Branch loc_B555CC
  loc_B555C7: Call Proc_325_23_BD07F8()
  loc_B555CC: FLdPr Me
  loc_B555CF: MemLdI2 global_104
  loc_B555D2: BranchF loc_B555D8
  loc_B555D5: Branch loc_B55607
  loc_B555D8: ImpAdCallFPR4 DoEvents()
  loc_B555DD: Branch loc_B554FC
  loc_B555E0: LitVar_FALSE
  loc_B555E4: PopAdLdVar
  loc_B555E5: FLdPr Me
  loc_B555E8: VCallAd Control_ID_pbar
  loc_B555EB: FStAdFunc var_A8
  loc_B555EE: FLdPr var_A8
  loc_B555F1: LateIdSt
  loc_B555F6: FFree1Ad var_A8
  loc_B555F9: LitNothing
  loc_B555FB: FStAd var_B0 
  loc_B555FF: LitI2_Byte &HFF
  loc_B55601: FLdPr Me
  loc_B55604: MemStI2 bGenerado
  loc_B55607: LitI4 0
  loc_B5560C: CI2I4
  loc_B5560D: FLdPr Me
  loc_B55610: Me.MousePointer = from_stack_1
  loc_B55615: LitVarStr var_94, vbNullString
  loc_B5561A: PopAdLdVar
  loc_B5561B: FLdPr Me
  loc_B5561E: VCallAd Control_ID_statusBar
  loc_B55621: FStAdFunc var_A8
  loc_B55624: FLdPr var_A8
  loc_B55627: LateIdSt
  loc_B5562C: FFree1Ad var_A8
  loc_B5562F: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A66F18
  'Data Table: 4CA014
  loc_A66EA8: FLdRfVar var_88
  loc_A66EAB: LitI2_Byte 0
  loc_A66EAD: LitI2_Byte &HFF
  loc_A66EAF: ImpAdLdI4 MemVar_D93C84
  loc_A66EB2: FLdPr Me
  loc_A66EB5: MemLdRfVar from_stack_1.global_56
  loc_A66EB8: NewIfNullPr IFileSystem3
  loc_A66EBB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A66EC0: ILdRf var_88
  loc_A66EC3: FLdPr Me
  loc_A66EC6: MemStVarAd
  loc_A66ECA: FFree1Ad var_88
  loc_A66ECD: LitI2_Byte 0
  loc_A66ECF: ImpAdStI2 MemVar_D93C8A
  loc_A66ED2: Call Proc_325_24_C37340()
  loc_A66ED7: Call Proc_325_25_BE7014()
  loc_A66EDC: Call Proc_325_26_B74B94()
  loc_A66EE1: Call Proc_325_27_BB1124()
  loc_A66EE6: Call Proc_325_28_B03628()
  loc_A66EEB: Call Proc_325_29_9F44E8()
  loc_A66EF0: FLdPr Me
  loc_A66EF3: MemLdRfVar from_stack_1.global_60
  loc_A66EF6: LdPrVar
  loc_A66EF8: LateMemCall
  loc_A66EFE: FLdPr Me
  loc_A66F01: MemLdStr global_76
  loc_A66F04: LitStr vbNullString
  loc_A66F07: EqStr
  loc_A66F09: BranchF loc_A66F14
  loc_A66F0C: LitStr vbNullString
  loc_A66F0F: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A66F14: ExitProcHresult
End Sub

Private Function Proc_325_17_9B0854() '9B0854
  'Data Table: 4CA014
  loc_9B084C: LitI2_Byte &HFF
  loc_9B084E: Call Proc_325_20_AF4648()
  loc_9B0853: ExitProcHresult
End Function

Private Function Proc_325_18_A16B8C(arg_C) 'A16B8C
  'Data Table: 4CA014
  loc_A16B50: ZeroRetVal
  loc_A16B52: LitI4 1
  loc_A16B57: LitI4 1
  loc_A16B5C: LitVarStr var_A8, "000"
  loc_A16B61: FStVarCopyObj var_B8
  loc_A16B64: FLdRfVar var_B8
  loc_A16B67: FLdRfVar arg_C
  loc_A16B6A: CVarRef
  loc_A16B6F: FLdRfVar var_C8
  loc_A16B72: ImpAdCallFPR4  = Format(, )
  loc_A16B77: FLdRfVar var_C8
  loc_A16B7A: CStrVarTmp
  loc_A16B7B: FStStr var_88
  loc_A16B7E: FFreeVar var_B8 = ""
  loc_A16B85: ExitProcCbHresult
End Function

Private Function Proc_325_19_AD1378() 'AD1378
  'Data Table: 4CA014
  loc_AD1264: FLdPr Me
  loc_AD1267: VCallAd Control_ID_OrdeLicoDesdeMsk
  loc_AD126A: FStAdFunc var_88
  loc_AD126D: FLdPr var_88
  loc_AD1270: LateIdLdVar var_98 DispID_22 0
  loc_AD1277: PopAd
  loc_AD1279: FLdPr Me
  loc_AD127C: VCallAd Control_ID_OrdeLicoDesdeMsk
  loc_AD127F: FStAdFunc var_A0
  loc_AD1282: FLdPr var_A0
  loc_AD1285: LateIdLdVar var_B0 DispID_22 0
  loc_AD128C: PopAd
  loc_AD128E: LitVarStr var_E4, vbNullString
  loc_AD1293: FStVarCopyObj var_F4
  loc_AD1296: FLdRfVar var_F4
  loc_AD1299: LitStr " AND liqucome.OrdeLico >= "
  loc_AD129C: FLdRfVar var_B0
  loc_AD129F: CStrVarTmp
  loc_AD12A0: FStStrNoPop var_B4
  loc_AD12A3: ConcatStr
  loc_AD12A4: CVarStr var_D4
  loc_AD12A7: FLdRfVar var_98
  loc_AD12AA: CStrVarTmp
  loc_AD12AB: FStStrNoPop var_9C
  loc_AD12AE: LitStr vbNullString
  loc_AD12B1: NeStr
  loc_AD12B3: CVarBoolI2 var_C4
  loc_AD12B7: FLdRfVar var_104
  loc_AD12BA: ImpAdCallFPR4  = IIf(, , )
  loc_AD12BF: FLdRfVar var_104
  loc_AD12C2: CStrVarTmp
  loc_AD12C3: FStStrNoPop var_108
  loc_AD12C6: FLdPr Me
  loc_AD12C9: MemStStrCopy
  loc_AD12CD: FFreeStr var_9C = "": var_B4 = ""
  loc_AD12D6: FFreeAd var_88 = ""
  loc_AD12DD: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_AD12EC: FLdPr Me
  loc_AD12EF: VCallAd Control_ID_OrdeLicoHastaMsk
  loc_AD12F2: FStAdFunc var_88
  loc_AD12F5: FLdPr var_88
  loc_AD12F8: LateIdLdVar var_98 DispID_22 0
  loc_AD12FF: PopAd
  loc_AD1301: FLdPr Me
  loc_AD1304: VCallAd Control_ID_OrdeLicoHastaMsk
  loc_AD1307: FStAdFunc var_A0
  loc_AD130A: FLdPr var_A0
  loc_AD130D: LateIdLdVar var_B0 DispID_22 0
  loc_AD1314: PopAd
  loc_AD1316: LitVarStr var_E4, vbNullString
  loc_AD131B: FStVarCopyObj var_F4
  loc_AD131E: FLdRfVar var_F4
  loc_AD1321: LitStr " AND liqucome.OrdeLico <= "
  loc_AD1324: FLdRfVar var_B0
  loc_AD1327: CStrVarTmp
  loc_AD1328: FStStrNoPop var_B4
  loc_AD132B: ConcatStr
  loc_AD132C: CVarStr var_D4
  loc_AD132F: FLdRfVar var_98
  loc_AD1332: CStrVarTmp
  loc_AD1333: FStStrNoPop var_9C
  loc_AD1336: LitStr vbNullString
  loc_AD1339: NeStr
  loc_AD133B: CVarBoolI2 var_C4
  loc_AD133F: FLdRfVar var_104
  loc_AD1342: ImpAdCallFPR4  = IIf(, , )
  loc_AD1347: FLdRfVar var_104
  loc_AD134A: CStrVarTmp
  loc_AD134B: FStStrNoPop var_108
  loc_AD134E: FLdPr Me
  loc_AD1351: MemStStrCopy
  loc_AD1355: FFreeStr var_9C = "": var_B4 = ""
  loc_AD135E: FFreeAd var_88 = ""
  loc_AD1365: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_AD1374: ExitProcHresult
End Function

Private Function Proc_325_20_AF4648(arg_C) 'AF4648
  'Data Table: 4CA014
  loc_AF44C0: from_stack_1v = Proc_325_19_AD1378()
  loc_AF44C5: FLdPr Me
  loc_AF44C8: MemLdRfVar from_stack_1.global_84
  loc_AF44CB: NewIfNullAd
  loc_AF44CE: FStAd var_88 
  loc_AF44D2: LitStr "SELECT OrdeLico, sum(TotaLico) as TotaLico"
  loc_AF44D5: LitStr " FROM liqucome"
  loc_AF44D8: ConcatStr
  loc_AF44D9: FStStrNoPop var_8C
  loc_AF44DC: LitStr " WHERE TipoLico = 'Aforo' AND FeacLico is not null"
  loc_AF44DF: ConcatStr
  loc_AF44E0: FStStrNoPop var_90
  loc_AF44E3: LitStr " AND liqucome.PeriLiqu = "
  loc_AF44E6: ConcatStr
  loc_AF44E7: FStStrNoPop var_98
  loc_AF44EA: FLdRfVar var_92
  loc_AF44ED: FLdPr Me
  loc_AF44F0: MemLdRfVar from_stack_1.global_80
  loc_AF44F3: NewIfNullPr clsliquidacion
  loc_AF44F6: from_stack_1 = clsliquidacion.PeriLiqu
  loc_AF44FB: FLdI2 var_92
  loc_AF44FE: CStrUI1
  loc_AF4500: FStStrNoPop var_9C
  loc_AF4503: ConcatStr
  loc_AF4504: FStStrNoPop var_A0
  loc_AF4507: LitStr " AND liqucome.CodiTili = "
  loc_AF450A: ConcatStr
  loc_AF450B: FStStrNoPop var_A8
  loc_AF450E: FLdRfVar var_A2
  loc_AF4511: FLdPr Me
  loc_AF4514: MemLdRfVar from_stack_1.global_80
  loc_AF4517: NewIfNullPr clsliquidacion
  loc_AF451A: from_stack_1 = clsliquidacion.CodiTili
  loc_AF451F: FLdUI1
  loc_AF4523: CStrI2
  loc_AF4525: FStStrNoPop var_AC
  loc_AF4528: ConcatStr
  loc_AF4529: FStStrNoPop var_B0
  loc_AF452C: LitStr " AND liqucome.NumeLiqu = "
  loc_AF452F: ConcatStr
  loc_AF4530: FStStrNoPop var_B8
  loc_AF4533: FLdRfVar var_B2
  loc_AF4536: FLdPr Me
  loc_AF4539: MemLdRfVar from_stack_1.global_80
  loc_AF453C: NewIfNullPr clsliquidacion
  loc_AF453F: from_stack_1 = clsliquidacion.NumeLiqu
  loc_AF4544: FLdI2 var_B2
  loc_AF4547: CStrUI1
  loc_AF4549: FStStrNoPop var_BC
  loc_AF454C: ConcatStr
  loc_AF454D: FStStrNoPop var_C0
  loc_AF4550: FLdPr Me
  loc_AF4553: MemLdStr global_112
  loc_AF4556: ConcatStr
  loc_AF4557: FStStrNoPop var_C4
  loc_AF455A: FLdPr Me
  loc_AF455D: MemLdStr global_116
  loc_AF4560: ConcatStr
  loc_AF4561: FStStrNoPop var_C8
  loc_AF4564: LitStr " GROUP BY CodiCome HAVING TotaLico <> 0 AND OrdeLico > 0 ORDER BY OrdeLico"
  loc_AF4567: ConcatStr
  loc_AF4568: FStStrNoPop var_CC
  loc_AF456B: FLdPr var_88
  loc_AF456E: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_AF4573: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AF4592: FLdRfVar var_D0
  loc_AF4595: FLdPr var_88
  loc_AF4598: from_stack_1 = clsliqucome.RecordCount
  loc_AF459D: ILdRf var_D0
  loc_AF45A0: LitI4 0
  loc_AF45A5: GtI4
  loc_AF45A6: BranchF loc_AF4615
  loc_AF45A9: FLdI2 arg_C
  loc_AF45AC: BranchF loc_AF4615
  loc_AF45AF: FLdPr var_88
  loc_AF45B2: Call clsliqucome.MoveFirst()
  loc_AF45B7: FLdRfVar var_D0
  loc_AF45BA: FLdPr var_88
  loc_AF45BD: from_stack_1 = clsliqucome.OrdeLico
  loc_AF45C2: ILdRf var_D0
  loc_AF45C5: CStrI4
  loc_AF45C7: CVarStr var_E0
  loc_AF45CA: PopAdLdVar
  loc_AF45CB: FLdPr Me
  loc_AF45CE: VCallAd Control_ID_OrdeLicoDesdeMsk
  loc_AF45D1: FStAdFunc var_F4
  loc_AF45D4: FLdPr var_F4
  loc_AF45D7: LateIdSt
  loc_AF45DC: FFree1Ad var_F4
  loc_AF45DF: FFree1Var var_E0 = ""
  loc_AF45E2: FLdPr var_88
  loc_AF45E5: Call clsliqucome.MoveLast()
  loc_AF45EA: FLdRfVar var_D0
  loc_AF45ED: FLdPr var_88
  loc_AF45F0: from_stack_1 = clsliqucome.OrdeLico
  loc_AF45F5: ILdRf var_D0
  loc_AF45F8: CStrI4
  loc_AF45FA: CVarStr var_E0
  loc_AF45FD: PopAdLdVar
  loc_AF45FE: FLdPr Me
  loc_AF4601: VCallAd Control_ID_OrdeLicoHastaMsk
  loc_AF4604: FStAdFunc var_F4
  loc_AF4607: FLdPr var_F4
  loc_AF460A: LateIdSt
  loc_AF460F: FFree1Ad var_F4
  loc_AF4612: FFree1Var var_E0 = ""
  loc_AF4615: FLdRfVar var_D0
  loc_AF4618: FLdPr var_88
  loc_AF461B: from_stack_1 = clsliqucome.RecordCount
  loc_AF4620: ILdRf var_D0
  loc_AF4623: CStrI4
  loc_AF4625: FStStrNoPop var_8C
  loc_AF4628: FLdPr Me
  loc_AF462B: VCallAd Control_ID_ProgresoLbl
  loc_AF462E: FStAdFunc var_F4
  loc_AF4631: FLdPr var_F4
  loc_AF4634: Me.Caption = from_stack_1
  loc_AF4639: FFree1Str var_8C
  loc_AF463C: FFree1Ad var_F4
  loc_AF463F: LitNothing
  loc_AF4641: FStAd var_88 
  loc_AF4645: ExitProcHresult
  loc_AF4646: FFreeVar  = ""
End Function

Private Function Proc_325_21_BBFC14() 'BBFC14
  'Data Table: 4CA014
  loc_BBF57C: FLdPr Me
  loc_BBF57F: MemLdStr global_96
  loc_BBF582: LitI4 1
  loc_BBF587: AddI4
  loc_BBF588: FLdPr Me
  loc_BBF58B: MemStI4 global_96
  loc_BBF58E: LitI2_Byte 0
  loc_BBF590: CUI1I2
  loc_BBF592: FLdPr Me
  loc_BBF595: MemStUI1
  loc_BBF599: LitI4 0
  loc_BBF59E: FLdPr Me
  loc_BBF5A1: MemLdStr global_96
  loc_BBF5A4: FLdPr Me
  loc_BBF5A7: MemLdRfVar from_stack_1.global_92
  loc_BBF5AA: RedimPreserve
  loc_BBF5B4: FLdPr Me
  loc_BBF5B7: MemLdRfVar from_stack_1.global_84
  loc_BBF5BA: NewIfNullAd
  loc_BBF5BD: FStAd var_88 
  loc_BBF5C1: FLdRfVar var_8C
  loc_BBF5C4: FLdPr var_88
  loc_BBF5C7: from_stack_1 = clsliqucome.CucuPers
  loc_BBF5CC: LitI2_Byte 0
  loc_BBF5CE: LitVar_Missing var_C0
  loc_BBF5D1: LitI2_Byte 0
  loc_BBF5D3: FLdZeroAd var_8C
  loc_BBF5D6: CVarStr var_A0
  loc_BBF5D9: PopAdLdVar
  loc_BBF5DA: FLdPr Me
  loc_BBF5DD: MemLdStr global_96
  loc_BBF5E0: FLdPr Me
  loc_BBF5E3: MemLdStr global_92
  loc_BBF5E6: AryLock
  loc_BBF5E9: Ary1LdPr
  loc_BBF5EA: MemLdRfVar from_stack_1.global_0
  loc_BBF5ED: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF5F2: AryUnlock
  loc_BBF5F5: FFreeVar var_A0 = ""
  loc_BBF5FC: FLdRfVar var_A0
  loc_BBF5FF: FLdPr var_88
  loc_BBF602: from_stack_1 = clsliqucome.DetaPers
  loc_BBF607: LitI2_Byte 0
  loc_BBF609: LitVar_Missing var_C0
  loc_BBF60C: LitI2_Byte 0
  loc_BBF60E: FLdVar var_A0
  loc_BBF612: FLdPr Me
  loc_BBF615: MemLdStr global_96
  loc_BBF618: FLdPr Me
  loc_BBF61B: MemLdStr global_92
  loc_BBF61E: AryLock
  loc_BBF621: Ary1LdPr
  loc_BBF622: MemLdRfVar from_stack_1.global_4
  loc_BBF625: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF62A: AryUnlock
  loc_BBF62D: FFreeVar var_A0 = ""
  loc_BBF634: FLdRfVar var_A0
  loc_BBF637: FLdPr var_88
  loc_BBF63A: from_stack_1 = clsliqucome.Vinculo
  loc_BBF63F: LitI2_Byte 0
  loc_BBF641: LitVar_Missing var_C0
  loc_BBF644: LitI2_Byte 0
  loc_BBF646: FLdVar var_A0
  loc_BBF64A: FLdPr Me
  loc_BBF64D: MemLdStr global_96
  loc_BBF650: FLdPr Me
  loc_BBF653: MemLdStr global_92
  loc_BBF656: AryLock
  loc_BBF659: Ary1LdPr
  loc_BBF65A: MemLdRfVar from_stack_1.global_8
  loc_BBF65D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF662: AryUnlock
  loc_BBF665: FFreeVar var_A0 = ""
  loc_BBF66C: FLdRfVar var_A0
  loc_BBF66F: FLdPr var_88
  loc_BBF672: from_stack_1 = clsliqucome.DetaCall
  loc_BBF677: LitI2_Byte 0
  loc_BBF679: LitVar_Missing var_C0
  loc_BBF67C: LitI2_Byte 0
  loc_BBF67E: FLdVar var_A0
  loc_BBF682: FLdPr Me
  loc_BBF685: MemLdStr global_96
  loc_BBF688: FLdPr Me
  loc_BBF68B: MemLdStr global_92
  loc_BBF68E: AryLock
  loc_BBF691: Ary1LdPr
  loc_BBF692: MemLdRfVar from_stack_1.global_12
  loc_BBF695: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF69A: AryUnlock
  loc_BBF69D: FFreeVar var_A0 = ""
  loc_BBF6A4: FLdRfVar var_C4
  loc_BBF6A7: FLdPr var_88
  loc_BBF6AA: from_stack_1 = clsliqucome.NucaLico
  loc_BBF6AF: LitI2_Byte 0
  loc_BBF6B1: LitVar_Missing var_A0
  loc_BBF6B4: LitI2_Byte 0
  loc_BBF6B6: ILdRf var_C4
  loc_BBF6B9: CVarI4
  loc_BBF6BD: PopAdLdVar
  loc_BBF6BE: FLdPr Me
  loc_BBF6C1: MemLdStr global_96
  loc_BBF6C4: FLdPr Me
  loc_BBF6C7: MemLdStr global_92
  loc_BBF6CA: AryLock
  loc_BBF6CD: Ary1LdPr
  loc_BBF6CE: MemLdRfVar from_stack_1.global_16
  loc_BBF6D1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF6D6: AryUnlock
  loc_BBF6D9: FFree1Var var_A0 = ""
  loc_BBF6DC: FLdRfVar var_A0
  loc_BBF6DF: FLdPr var_88
  loc_BBF6E2: from_stack_1 = clsliqucome.DetaBarr
  loc_BBF6E7: LitI2_Byte 0
  loc_BBF6E9: LitVar_Missing var_C0
  loc_BBF6EC: LitI2_Byte 0
  loc_BBF6EE: FLdVar var_A0
  loc_BBF6F2: FLdPr Me
  loc_BBF6F5: MemLdStr global_96
  loc_BBF6F8: FLdPr Me
  loc_BBF6FB: MemLdStr global_92
  loc_BBF6FE: AryLock
  loc_BBF701: Ary1LdPr
  loc_BBF702: MemLdRfVar from_stack_1.global_20
  loc_BBF705: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF70A: AryUnlock
  loc_BBF70D: FFreeVar var_A0 = ""
  loc_BBF714: FLdRfVar var_8C
  loc_BBF717: FLdPr var_88
  loc_BBF71A: from_stack_1 = clsliqucome.ManzLico
  loc_BBF71F: LitI2_Byte 0
  loc_BBF721: LitVar_Missing var_C0
  loc_BBF724: LitI2_Byte 0
  loc_BBF726: FLdZeroAd var_8C
  loc_BBF729: CVarStr var_A0
  loc_BBF72C: PopAdLdVar
  loc_BBF72D: FLdPr Me
  loc_BBF730: MemLdStr global_96
  loc_BBF733: FLdPr Me
  loc_BBF736: MemLdStr global_92
  loc_BBF739: AryLock
  loc_BBF73C: Ary1LdPr
  loc_BBF73D: MemLdRfVar from_stack_1.global_24
  loc_BBF740: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF745: AryUnlock
  loc_BBF748: FFreeVar var_A0 = ""
  loc_BBF74F: FLdRfVar var_8C
  loc_BBF752: FLdPr var_88
  loc_BBF755: from_stack_1 = clsliqucome.CasaLico
  loc_BBF75A: LitI2_Byte 0
  loc_BBF75C: LitVar_Missing var_C0
  loc_BBF75F: LitI2_Byte 0
  loc_BBF761: FLdZeroAd var_8C
  loc_BBF764: CVarStr var_A0
  loc_BBF767: PopAdLdVar
  loc_BBF768: FLdPr Me
  loc_BBF76B: MemLdStr global_96
  loc_BBF76E: FLdPr Me
  loc_BBF771: MemLdStr global_92
  loc_BBF774: AryLock
  loc_BBF777: Ary1LdPr
  loc_BBF778: MemLdRfVar from_stack_1.global_28
  loc_BBF77B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF780: AryUnlock
  loc_BBF783: FFreeVar var_A0 = ""
  loc_BBF78A: FLdRfVar var_8C
  loc_BBF78D: FLdPr var_88
  loc_BBF790: from_stack_1 = clsliqucome.UbicLico
  loc_BBF795: LitI2_Byte 0
  loc_BBF797: LitVar_Missing var_C0
  loc_BBF79A: LitI2_Byte 0
  loc_BBF79C: FLdZeroAd var_8C
  loc_BBF79F: CVarStr var_A0
  loc_BBF7A2: PopAdLdVar
  loc_BBF7A3: FLdPr Me
  loc_BBF7A6: MemLdStr global_96
  loc_BBF7A9: FLdPr Me
  loc_BBF7AC: MemLdStr global_92
  loc_BBF7AF: AryLock
  loc_BBF7B2: Ary1LdPr
  loc_BBF7B3: MemLdRfVar from_stack_1.global_32
  loc_BBF7B6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF7BB: AryUnlock
  loc_BBF7BE: FFreeVar var_A0 = ""
  loc_BBF7C5: FLdRfVar var_A0
  loc_BBF7C8: FLdPr var_88
  loc_BBF7CB: from_stack_1 = clsliqucome.DetaLoca
  loc_BBF7D0: LitI2_Byte 0
  loc_BBF7D2: LitVar_Missing var_C0
  loc_BBF7D5: LitI2_Byte 0
  loc_BBF7D7: FLdVar var_A0
  loc_BBF7DB: FLdPr Me
  loc_BBF7DE: MemLdStr global_96
  loc_BBF7E1: FLdPr Me
  loc_BBF7E4: MemLdStr global_92
  loc_BBF7E7: AryLock
  loc_BBF7EA: Ary1LdPr
  loc_BBF7EB: MemLdRfVar from_stack_1.global_36
  loc_BBF7EE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF7F3: AryUnlock
  loc_BBF7F6: FFreeVar var_A0 = ""
  loc_BBF7FD: FLdRfVar var_A0
  loc_BBF800: FLdPr var_88
  loc_BBF803: from_stack_1 = clsliqucome.CopoLico
  loc_BBF808: LitI2_Byte 0
  loc_BBF80A: LitVar_Missing var_C0
  loc_BBF80D: LitI2_Byte 0
  loc_BBF80F: FLdVar var_A0
  loc_BBF813: FLdPr Me
  loc_BBF816: MemLdStr global_96
  loc_BBF819: FLdPr Me
  loc_BBF81C: MemLdStr global_92
  loc_BBF81F: AryLock
  loc_BBF822: Ary1LdPr
  loc_BBF823: MemLdRfVar from_stack_1.global_40
  loc_BBF826: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF82B: AryUnlock
  loc_BBF82E: FFreeVar var_A0 = ""
  loc_BBF835: FLdRfVar var_A0
  loc_BBF838: FLdPr var_88
  loc_BBF83B: from_stack_1 = clsliqucome.CallLicoReal
  loc_BBF840: LitI2_Byte 0
  loc_BBF842: LitVar_Missing var_C0
  loc_BBF845: LitI2_Byte 0
  loc_BBF847: FLdVar var_A0
  loc_BBF84B: FLdPr Me
  loc_BBF84E: MemLdStr global_96
  loc_BBF851: FLdPr Me
  loc_BBF854: MemLdStr global_92
  loc_BBF857: AryLock
  loc_BBF85A: Ary1LdPr
  loc_BBF85B: MemLdRfVar from_stack_1.global_44
  loc_BBF85E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF863: AryUnlock
  loc_BBF866: FFreeVar var_A0 = ""
  loc_BBF86D: FLdRfVar var_A0
  loc_BBF870: FLdPr var_88
  loc_BBF873: from_stack_1 = clsliqucome.NucaLicoReal
  loc_BBF878: LitI2_Byte 0
  loc_BBF87A: LitVar_Missing var_C0
  loc_BBF87D: LitI2_Byte 0
  loc_BBF87F: FLdVar var_A0
  loc_BBF883: FLdPr Me
  loc_BBF886: MemLdStr global_96
  loc_BBF889: FLdPr Me
  loc_BBF88C: MemLdStr global_92
  loc_BBF88F: AryLock
  loc_BBF892: Ary1LdPr
  loc_BBF893: MemLdRfVar from_stack_1.global_48
  loc_BBF896: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF89B: AryUnlock
  loc_BBF89E: FFreeVar var_A0 = ""
  loc_BBF8A5: FLdRfVar var_A0
  loc_BBF8A8: FLdPr var_88
  loc_BBF8AB: from_stack_1 = clsliqucome.BarrLicoReal
  loc_BBF8B0: LitI2_Byte 0
  loc_BBF8B2: LitVar_Missing var_C0
  loc_BBF8B5: LitI2_Byte 0
  loc_BBF8B7: FLdVar var_A0
  loc_BBF8BB: FLdPr Me
  loc_BBF8BE: MemLdStr global_96
  loc_BBF8C1: FLdPr Me
  loc_BBF8C4: MemLdStr global_92
  loc_BBF8C7: AryLock
  loc_BBF8CA: Ary1LdPr
  loc_BBF8CB: MemLdRfVar from_stack_1.bGenerado
  loc_BBF8CE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF8D3: AryUnlock
  loc_BBF8D6: FFreeVar var_A0 = ""
  loc_BBF8DD: FLdRfVar var_A0
  loc_BBF8E0: FLdPr var_88
  loc_BBF8E3: from_stack_1 = clsliqucome.ManzLicoReal
  loc_BBF8E8: LitI2_Byte 0
  loc_BBF8EA: LitVar_Missing var_C0
  loc_BBF8ED: LitI2_Byte 0
  loc_BBF8EF: FLdVar var_A0
  loc_BBF8F3: FLdPr Me
  loc_BBF8F6: MemLdStr global_96
  loc_BBF8F9: FLdPr Me
  loc_BBF8FC: MemLdStr global_92
  loc_BBF8FF: AryLock
  loc_BBF902: Ary1LdPr
  loc_BBF903: MemLdRfVar from_stack_1.global_56
  loc_BBF906: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF90B: AryUnlock
  loc_BBF90E: FFreeVar var_A0 = ""
  loc_BBF915: FLdRfVar var_A0
  loc_BBF918: FLdPr var_88
  loc_BBF91B: from_stack_1 = clsliqucome.CasaLicoReal
  loc_BBF920: LitI2_Byte 0
  loc_BBF922: LitVar_Missing var_C0
  loc_BBF925: LitI2_Byte 0
  loc_BBF927: FLdVar var_A0
  loc_BBF92B: FLdPr Me
  loc_BBF92E: MemLdStr global_96
  loc_BBF931: FLdPr Me
  loc_BBF934: MemLdStr global_92
  loc_BBF937: AryLock
  loc_BBF93A: Ary1LdPr
  loc_BBF93B: MemLdRfVar from_stack_1.global_60
  loc_BBF93E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF943: AryUnlock
  loc_BBF946: FFreeVar var_A0 = ""
  loc_BBF94D: FLdRfVar var_A0
  loc_BBF950: FLdPr var_88
  loc_BBF953: from_stack_1 = clsliqucome.UbicLicoReal
  loc_BBF958: LitI2_Byte 0
  loc_BBF95A: LitVar_Missing var_C0
  loc_BBF95D: LitI2_Byte 0
  loc_BBF95F: FLdVar var_A0
  loc_BBF963: FLdPr Me
  loc_BBF966: MemLdStr global_96
  loc_BBF969: FLdPr Me
  loc_BBF96C: MemLdStr global_92
  loc_BBF96F: AryLock
  loc_BBF972: Ary1LdPr
  loc_BBF973: MemLdRfVar from_stack_1.global_64
  loc_BBF976: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF97B: AryUnlock
  loc_BBF97E: FFreeVar var_A0 = ""
  loc_BBF985: FLdRfVar var_A0
  loc_BBF988: FLdPr var_88
  loc_BBF98B: from_stack_1 = clsliqucome.LocaLicoReal
  loc_BBF990: LitI2_Byte 0
  loc_BBF992: LitVar_Missing var_C0
  loc_BBF995: LitI2_Byte 0
  loc_BBF997: FLdVar var_A0
  loc_BBF99B: FLdPr Me
  loc_BBF99E: MemLdStr global_96
  loc_BBF9A1: FLdPr Me
  loc_BBF9A4: MemLdStr global_92
  loc_BBF9A7: AryLock
  loc_BBF9AA: Ary1LdPr
  loc_BBF9AB: MemLdRfVar from_stack_1.global_68
  loc_BBF9AE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF9B3: AryUnlock
  loc_BBF9B6: FFreeVar var_A0 = ""
  loc_BBF9BD: FLdRfVar var_A0
  loc_BBF9C0: FLdPr var_88
  loc_BBF9C3: from_stack_1 = clsliqucome.CopoLicoReal
  loc_BBF9C8: LitI2_Byte 0
  loc_BBF9CA: LitVar_Missing var_C0
  loc_BBF9CD: LitI2_Byte 0
  loc_BBF9CF: FLdVar var_A0
  loc_BBF9D3: FLdPr Me
  loc_BBF9D6: MemLdStr global_96
  loc_BBF9D9: FLdPr Me
  loc_BBF9DC: MemLdStr global_92
  loc_BBF9DF: AryLock
  loc_BBF9E2: Ary1LdPr
  loc_BBF9E3: MemLdRfVar from_stack_1.global_72
  loc_BBF9E6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBF9EB: AryUnlock
  loc_BBF9EE: FFreeVar var_A0 = ""
  loc_BBF9F5: FLdRfVar var_C4
  loc_BBF9F8: FLdPr var_88
  loc_BBF9FB: from_stack_1 = clsliqucome.CodiCome
  loc_BBFA00: LitI2_Byte 0
  loc_BBFA02: LitVar_Missing var_A0
  loc_BBFA05: LitI2_Byte 0
  loc_BBFA07: ILdRf var_C4
  loc_BBFA0A: CVarI4
  loc_BBFA0E: PopAdLdVar
  loc_BBFA0F: FLdPr Me
  loc_BBFA12: MemLdStr global_96
  loc_BBFA15: FLdPr Me
  loc_BBFA18: MemLdStr global_92
  loc_BBFA1B: AryLock
  loc_BBFA1E: Ary1LdPr
  loc_BBFA1F: MemLdRfVar from_stack_1.global_76
  loc_BBFA22: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFA27: AryUnlock
  loc_BBFA2A: FFree1Var var_A0 = ""
  loc_BBFA2D: FLdRfVar var_C4
  loc_BBFA30: FLdPr var_88
  loc_BBFA33: from_stack_1 = clsliqucome.OrdeLico
  loc_BBFA38: LitI2_Byte 0
  loc_BBFA3A: LitVar_Missing var_A0
  loc_BBFA3D: LitI2_Byte 0
  loc_BBFA3F: ILdRf var_C4
  loc_BBFA42: CVarI4
  loc_BBFA46: PopAdLdVar
  loc_BBFA47: FLdPr Me
  loc_BBFA4A: MemLdStr global_96
  loc_BBFA4D: FLdPr Me
  loc_BBFA50: MemLdStr global_92
  loc_BBFA53: AryLock
  loc_BBFA56: Ary1LdPr
  loc_BBFA57: MemLdRfVar from_stack_1.global_84
  loc_BBFA5A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFA5F: AryUnlock
  loc_BBFA62: FFree1Var var_A0 = ""
  loc_BBFA65: FLdRfVar var_A0
  loc_BBFA68: FLdPr var_88
  loc_BBFA6B: from_stack_1 = clsliqucome.CodiUsua
  loc_BBFA70: LitI2_Byte 0
  loc_BBFA72: LitVar_Missing var_C0
  loc_BBFA75: LitI2_Byte 0
  loc_BBFA77: FLdVar var_A0
  loc_BBFA7B: FLdPr Me
  loc_BBFA7E: MemLdStr global_96
  loc_BBFA81: FLdPr Me
  loc_BBFA84: MemLdStr global_92
  loc_BBFA87: AryLock
  loc_BBFA8A: Ary1LdPr
  loc_BBFA8B: MemLdRfVar from_stack_1.global_88
  loc_BBFA8E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFA93: AryUnlock
  loc_BBFA96: FFreeVar var_A0 = ""
  loc_BBFA9D: FLdRfVar var_A0
  loc_BBFAA0: FLdPr var_88
  loc_BBFAA3: from_stack_1 = clsliqucome.RazoCome
  loc_BBFAA8: LitI2_Byte 0
  loc_BBFAAA: LitVar_Missing var_C0
  loc_BBFAAD: LitI2_Byte 0
  loc_BBFAAF: FLdVar var_A0
  loc_BBFAB3: FLdPr Me
  loc_BBFAB6: MemLdStr global_96
  loc_BBFAB9: FLdPr Me
  loc_BBFABC: MemLdStr global_92
  loc_BBFABF: AryLock
  loc_BBFAC2: Ary1LdPr
  loc_BBFAC3: MemLdRfVar from_stack_1.global_80
  loc_BBFAC6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFACB: AryUnlock
  loc_BBFACE: FFreeVar var_A0 = ""
  loc_BBFAD5: FLdRfVar var_DC
  loc_BBFAD8: FLdPr var_88
  loc_BBFADB: from_stack_1 = clsliqucome.DeudLico
  loc_BBFAE0: LitI2_Byte 0
  loc_BBFAE2: LitVar_Missing var_A0
  loc_BBFAE5: LitI2_Byte &HFF
  loc_BBFAE7: FLdFPR8 var_DC
  loc_BBFAEA: CVarR8
  loc_BBFAEE: PopAdLdVar
  loc_BBFAEF: FLdPr Me
  loc_BBFAF2: MemLdStr global_96
  loc_BBFAF5: FLdPr Me
  loc_BBFAF8: MemLdStr global_92
  loc_BBFAFB: AryLock
  loc_BBFAFE: Ary1LdPr
  loc_BBFAFF: MemLdRfVar from_stack_1.global_92
  loc_BBFB02: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFB07: AryUnlock
  loc_BBFB0A: FFree1Var var_A0 = ""
  loc_BBFB0D: FLdRfVar var_A0
  loc_BBFB10: FLdPr var_88
  loc_BBFB13: from_stack_1 = clsliqucome.Bimestres
  loc_BBFB18: FLdRfVar var_A0
  loc_BBFB1B: CStrVarVal var_8C
  loc_BBFB1F: ImpAdCallI2 StrReverse()
  loc_BBFB24: FStStr var_100
  loc_BBFB27: LitStr ","
  loc_BBFB2A: ImpAdCallI2 StrReverse()
  loc_BBFB2F: FStStr var_104
  loc_BBFB32: LitStr " y"
  loc_BBFB35: ImpAdCallI2 StrReverse()
  loc_BBFB3A: FStStr var_108
  loc_BBFB3D: LitI4 0
  loc_BBFB42: LitI4 1
  loc_BBFB47: LitI4 1
  loc_BBFB4C: FLdZeroAd var_108
  loc_BBFB4F: FStStrNoPop var_E8
  loc_BBFB52: FLdZeroAd var_104
  loc_BBFB55: FStStrNoPop var_E4
  loc_BBFB58: FLdZeroAd var_100
  loc_BBFB5B: FStStrNoPop var_E0
  loc_BBFB5E: ImpAdCallI2 Replace(, , , , , )
  loc_BBFB63: FStStrNoPop var_EC
  loc_BBFB66: ImpAdCallI2 StrReverse()
  loc_BBFB6B: FStStr var_10C
  loc_BBFB6E: LitI2_Byte 0
  loc_BBFB70: LitVar_Missing var_FC
  loc_BBFB73: LitI2_Byte 0
  loc_BBFB75: FLdZeroAd var_10C
  loc_BBFB78: CVarStr var_C0
  loc_BBFB7B: PopAdLdVar
  loc_BBFB7C: FLdPr Me
  loc_BBFB7F: MemLdStr global_96
  loc_BBFB82: FLdPr Me
  loc_BBFB85: MemLdStr global_92
  loc_BBFB88: AryLock
  loc_BBFB8B: Ary1LdPr
  loc_BBFB8C: MemLdRfVar from_stack_1.global_96
  loc_BBFB8F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BBFB94: AryUnlock
  loc_BBFB97: FFreeStr var_8C = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_BBFBAC: FFreeVar var_A0 = "": var_C0 = ""
  loc_BBFBB5: FLdRfVar var_C4
  loc_BBFBB8: FLdPr var_88
  loc_BBFBBB: from_stack_1 = clsliqucome.CodiCome
  loc_BBFBC0: FLdRfVar var_110
  loc_BBFBC3: FLdPr var_88
  loc_BBFBC6: from_stack_1 = clsliqucome.OrdeLico
  loc_BBFBCB: ILdRf var_110
  loc_BBFBCE: CStrI4
  loc_BBFBD0: FStStrNoPop var_E0
  loc_BBFBD3: ILdRf var_C4
  loc_BBFBD6: CStrI4
  loc_BBFBD8: FStStrNoPop var_8C
  loc_BBFBDB: LitI2_Byte 2
  loc_BBFBDD: CUI1I2
  loc_BBFBDF: ImpAdCallI2  = Proc_57_40_AD4A10(, )
  loc_BBFBE4: PopTmpLdAdStr var_118
  loc_BBFBE7: FLdPr Me
  loc_BBFBEA: MemLdStr global_96
  loc_BBFBED: FLdPr Me
  loc_BBFBF0: MemLdStr global_92
  loc_BBFBF3: Ary1LdPr
  loc_BBFBF4: MemLdRfVar from_stack_1.global_104
  loc_BBFBF7: StAryMove
  loc_BBFBF9: FFreeStr var_8C = ""
  loc_BBFC00: LitNothing
  loc_BBFC02: FStAd var_88 
  loc_BBFC06: Call Proc_325_22_B6997C()
  loc_BBFC0B: Call Proc_325_23_BD07F8()
  loc_BBFC10: ExitProcHresult
  loc_BBFC11: CCyI4
  loc_BBFC12: ThisVCall 0
End Function

Private Function Proc_325_22_B6997C() 'B6997C
  'Data Table: 4CA014
  loc_B69574: FLdPr Me
  loc_B69577: MemLdRfVar from_stack_1.global_88
  loc_B6957A: NewIfNullAd
  loc_B6957D: FStAd var_88 
  loc_B69581: LitStr "SELECT licodeta.CodiRubr, licodeta.CodiSubr, IFNULL(DetaSubr,'') DetaSubr, IFNULL(servcome.CateSeco,'') CateSeco,  IFNULL(servcome.CantSeco,'') CantSeco, CAST(licodeta.TotaLcde AS DOUBLE(10,2)) as TotaLico"
  loc_B69584: LitStr " FROM  licodeta "
  loc_B69587: ConcatStr
  loc_B69588: FStStrNoPop var_8C
  loc_B6958B: LitStr " LEFT JOIN subrubro ON subrubro.CodiRamo = licodeta.CodiRamo"
  loc_B6958E: ConcatStr
  loc_B6958F: FStStrNoPop var_90
  loc_B69592: LitStr " AND subrubro.CodiRubr = licodeta.CodiRubr"
  loc_B69595: ConcatStr
  loc_B69596: FStStrNoPop var_94
  loc_B69599: LitStr " AND subrubro.PeriOrde = "
  loc_B6959C: ConcatStr
  loc_B6959D: FStStrNoPop var_9C
  loc_B695A0: FLdRfVar var_96
  loc_B695A3: FLdPr Me
  loc_B695A6: MemLdRfVar from_stack_1.global_80
  loc_B695A9: NewIfNullPr clsliquidacion
  loc_B695AC: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B695B1: FLdI2 var_96
  loc_B695B4: CStrUI1
  loc_B695B6: FStStrNoPop var_A0
  loc_B695B9: ConcatStr
  loc_B695BA: FStStrNoPop var_A4
  loc_B695BD: LitStr " AND subrubro.CodiSubr = licodeta.CodiSubr"
  loc_B695C0: ConcatStr
  loc_B695C1: FStStrNoPop var_A8
  loc_B695C4: LitStr " LEFT JOIN servcome ON servcome.CodiCome = licodeta.CodiCome"
  loc_B695C7: ConcatStr
  loc_B695C8: FStStrNoPop var_AC
  loc_B695CB: LitStr " AND servcome.CodiRamo =  licodeta.CodiRamo"
  loc_B695CE: ConcatStr
  loc_B695CF: FStStrNoPop var_B0
  loc_B695D2: LitStr " AND servcome.CodiRubr =  licodeta.CodiRubr"
  loc_B695D5: ConcatStr
  loc_B695D6: FStStrNoPop var_B4
  loc_B695D9: LitStr " AND servcome.CodiSubr =  licodeta.CodiSubr"
  loc_B695DC: ConcatStr
  loc_B695DD: FStStrNoPop var_B8
  loc_B695E0: LitStr " AND servcome.PrioSeco =  licodeta.NumeLcde"
  loc_B695E3: ConcatStr
  loc_B695E4: FStStrNoPop var_BC
  loc_B695E7: LitStr " WHERE licodeta.CodiSubr<>999 AND PeriLiqu = "
  loc_B695EA: ConcatStr
  loc_B695EB: FStStrNoPop var_C4
  loc_B695EE: FLdRfVar var_BE
  loc_B695F1: FLdPr Me
  loc_B695F4: MemLdRfVar from_stack_1.global_80
  loc_B695F7: NewIfNullPr clsliquidacion
  loc_B695FA: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B695FF: FLdI2 var_BE
  loc_B69602: CStrUI1
  loc_B69604: FStStrNoPop var_C8
  loc_B69607: ConcatStr
  loc_B69608: FStStrNoPop var_CC
  loc_B6960B: LitStr " AND CodiTili = "
  loc_B6960E: ConcatStr
  loc_B6960F: FStStrNoPop var_D4
  loc_B69612: FLdRfVar var_CE
  loc_B69615: FLdPr Me
  loc_B69618: MemLdRfVar from_stack_1.global_80
  loc_B6961B: NewIfNullPr clsliquidacion
  loc_B6961E: from_stack_1 = clsliquidacion.CodiTili
  loc_B69623: FLdUI1
  loc_B69627: CStrI2
  loc_B69629: FStStrNoPop var_D8
  loc_B6962C: ConcatStr
  loc_B6962D: FStStrNoPop var_DC
  loc_B69630: LitStr " AND NumeLiqu = "
  loc_B69633: ConcatStr
  loc_B69634: FStStrNoPop var_E4
  loc_B69637: FLdRfVar var_DE
  loc_B6963A: FLdPr Me
  loc_B6963D: MemLdRfVar from_stack_1.global_80
  loc_B69640: NewIfNullPr clsliquidacion
  loc_B69643: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B69648: FLdI2 var_DE
  loc_B6964B: CStrUI1
  loc_B6964D: FStStrNoPop var_E8
  loc_B69650: ConcatStr
  loc_B69651: FStStrNoPop var_EC
  loc_B69654: LitStr " AND BimeLiqu = "
  loc_B69657: ConcatStr
  loc_B69658: FStStrNoPop var_F4
  loc_B6965B: FLdRfVar var_EE
  loc_B6965E: FLdPr Me
  loc_B69661: MemLdRfVar from_stack_1.global_84
  loc_B69664: NewIfNullPr clsliqucome
  loc_B69667: from_stack_1 = clsliqucome.BimeLiqu
  loc_B6966C: FLdUI1
  loc_B69670: CStrI2
  loc_B69672: FStStrNoPop var_F8
  loc_B69675: ConcatStr
  loc_B69676: FStStrNoPop var_FC
  loc_B69679: LitStr " AND CodiConc = '13020201' AND licodeta.TipoVenc = 1 AND licodeta.CodiCome = "
  loc_B6967C: ConcatStr
  loc_B6967D: FStStrNoPop var_100
  loc_B69680: FLdPr Me
  loc_B69683: MemLdStr global_96
  loc_B69686: FLdPr Me
  loc_B69689: MemLdStr global_92
  loc_B6968C: Ary1LdPr
  loc_B6968D: MemLdStr global_76
  loc_B69690: ConcatStr
  loc_B69691: FStStrNoPop var_104
  loc_B69694: LitStr " ORDER BY TotaLico DESC LIMIT 11"
  loc_B69697: ConcatStr
  loc_B69698: FStStrNoPop var_108
  loc_B6969B: FLdPr var_88
  loc_B6969E: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_B696A3: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D4 = "": var_D8 = "": var_DC = "": var_E4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B696DC: FLdRfVar var_10C
  loc_B696DF: FLdPr var_88
  loc_B696E2: from_stack_1 = clsliqucome.RecordCount
  loc_B696E7: ILdRf var_10C
  loc_B696EA: LitI4 0
  loc_B696EF: GtI4
  loc_B696F0: BranchF loc_B6994F
  loc_B696F3: LitI2_Byte 0
  loc_B696F5: FLdPr Me
  loc_B696F8: MemStI2 global_100
  loc_B696FB: FLdPr var_88
  loc_B696FE: Call clsliqucome.MoveFirst()
  loc_B69703: FLdRfVar var_10C
  loc_B69706: FLdPr var_88
  loc_B69709: from_stack_1 = clsliqucome.RecordCount
  loc_B6970E: ILdRf var_10C
  loc_B69711: LitI4 &HA
  loc_B69716: GtI4
  loc_B69717: FLdPr Me
  loc_B6971A: MemLdStr global_96
  loc_B6971D: FLdPr Me
  loc_B69720: MemLdStr global_92
  loc_B69723: Ary1LdPr
  loc_B69724: MemStI2 global_100
  loc_B69727: FLdPr Me
  loc_B6972A: MemLdI2 global_100
  loc_B6972D: LitI2_Byte 1
  loc_B6972F: AddI2
  loc_B69730: FLdPr Me
  loc_B69733: MemStI2 global_100
  loc_B69736: LitI4 0
  loc_B6973B: FLdPr Me
  loc_B6973E: MemLdI2 global_100
  loc_B69741: CI4UI1
  loc_B69742: FLdPr Me
  loc_B69745: MemLdStr global_96
  loc_B69748: FLdPr Me
  loc_B6974B: MemLdStr global_92
  loc_B6974E: Ary1LdPr
  loc_B6974F: MemLdRfVar from_stack_1.global_108
  loc_B69752: RedimPreserve
  loc_B6975C: FLdRfVar var_11C
  loc_B6975F: FLdPr var_88
  loc_B69762: from_stack_1 = clsliqucome.CodiRubr
  loc_B69767: LitI2_Byte 0
  loc_B69769: LitVar_Missing var_144
  loc_B6976C: LitI2_Byte 0
  loc_B6976E: FLdVar var_11C
  loc_B69772: FLdPr Me
  loc_B69775: MemLdI2 global_100
  loc_B69778: CI4UI1
  loc_B69779: FLdPr Me
  loc_B6977C: MemLdStr global_96
  loc_B6977F: FLdPr Me
  loc_B69782: MemLdStr global_92
  loc_B69785: AryLock
  loc_B69788: Ary1LdPr
  loc_B69789: MemLdStr global_108
  loc_B6978C: AryLock
  loc_B6978F: Ary1LdPr
  loc_B69790: MemLdRfVar from_stack_1.global_0
  loc_B69793: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B69798: AryUnlock
  loc_B6979B: AryUnlock
  loc_B6979E: FFreeVar var_11C = ""
  loc_B697A5: FLdRfVar var_11C
  loc_B697A8: FLdPr var_88
  loc_B697AB: from_stack_1 = clsliqucome.CodiSubr
  loc_B697B0: LitI2_Byte 0
  loc_B697B2: LitVar_Missing var_144
  loc_B697B5: LitI2_Byte 0
  loc_B697B7: FLdVar var_11C
  loc_B697BB: FLdPr Me
  loc_B697BE: MemLdI2 global_100
  loc_B697C1: CI4UI1
  loc_B697C2: FLdPr Me
  loc_B697C5: MemLdStr global_96
  loc_B697C8: FLdPr Me
  loc_B697CB: MemLdStr global_92
  loc_B697CE: AryLock
  loc_B697D1: Ary1LdPr
  loc_B697D2: MemLdStr global_108
  loc_B697D5: AryLock
  loc_B697D8: Ary1LdPr
  loc_B697D9: MemLdRfVar from_stack_1.global_4
  loc_B697DC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B697E1: AryUnlock
  loc_B697E4: AryUnlock
  loc_B697E7: FFreeVar var_11C = ""
  loc_B697EE: FLdRfVar var_11C
  loc_B697F1: FLdPr var_88
  loc_B697F4: from_stack_1 = clsliqucome.DetaSubr
  loc_B697F9: LitI2_Byte 0
  loc_B697FB: LitVar_Missing var_144
  loc_B697FE: LitI2_Byte 0
  loc_B69800: FLdVar var_11C
  loc_B69804: FLdPr Me
  loc_B69807: MemLdI2 global_100
  loc_B6980A: CI4UI1
  loc_B6980B: FLdPr Me
  loc_B6980E: MemLdStr global_96
  loc_B69811: FLdPr Me
  loc_B69814: MemLdStr global_92
  loc_B69817: AryLock
  loc_B6981A: Ary1LdPr
  loc_B6981B: MemLdStr global_108
  loc_B6981E: AryLock
  loc_B69821: Ary1LdPr
  loc_B69822: MemLdRfVar from_stack_1.global_8
  loc_B69825: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B6982A: AryUnlock
  loc_B6982D: AryUnlock
  loc_B69830: FFreeVar var_11C = ""
  loc_B69837: FLdRfVar var_11C
  loc_B6983A: FLdPr var_88
  loc_B6983D: from_stack_1 = clsliqucome.CateSeco
  loc_B69842: LitI2_Byte 0
  loc_B69844: LitVar_Missing var_144
  loc_B69847: LitI2_Byte 0
  loc_B69849: FLdVar var_11C
  loc_B6984D: FLdPr Me
  loc_B69850: MemLdI2 global_100
  loc_B69853: CI4UI1
  loc_B69854: FLdPr Me
  loc_B69857: MemLdStr global_96
  loc_B6985A: FLdPr Me
  loc_B6985D: MemLdStr global_92
  loc_B69860: AryLock
  loc_B69863: Ary1LdPr
  loc_B69864: MemLdStr global_108
  loc_B69867: AryLock
  loc_B6986A: Ary1LdPr
  loc_B6986B: MemLdRfVar from_stack_1.global_12
  loc_B6986E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B69873: AryUnlock
  loc_B69876: AryUnlock
  loc_B69879: FFreeVar var_11C = ""
  loc_B69880: FLdRfVar var_10C
  loc_B69883: FLdPr var_88
  loc_B69886: from_stack_1 = clsliqucome.CantSeco
  loc_B6988B: LitI2_Byte 0
  loc_B6988D: LitVar_Missing var_11C
  loc_B69890: LitI2_Byte 0
  loc_B69892: ILdRf var_10C
  loc_B69895: CVarI4
  loc_B69899: PopAdLdVar
  loc_B6989A: FLdPr Me
  loc_B6989D: MemLdI2 global_100
  loc_B698A0: CI4UI1
  loc_B698A1: FLdPr Me
  loc_B698A4: MemLdStr global_96
  loc_B698A7: FLdPr Me
  loc_B698AA: MemLdStr global_92
  loc_B698AD: AryLock
  loc_B698B0: Ary1LdPr
  loc_B698B1: MemLdStr global_108
  loc_B698B4: AryLock
  loc_B698B7: Ary1LdPr
  loc_B698B8: MemLdRfVar from_stack_1.global_16
  loc_B698BB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B698C0: AryUnlock
  loc_B698C3: AryUnlock
  loc_B698C6: FFree1Var var_11C = ""
  loc_B698C9: FLdRfVar var_15C
  loc_B698CC: FLdPr var_88
  loc_B698CF: from_stack_1 = clsliqucome.TotaLico
  loc_B698D4: LitI2_Byte 0
  loc_B698D6: LitVar_Missing var_11C
  loc_B698D9: LitI2_Byte &HFF
  loc_B698DB: FLdFPR8 var_15C
  loc_B698DE: CVarR8
  loc_B698E2: PopAdLdVar
  loc_B698E3: FLdPr Me
  loc_B698E6: MemLdI2 global_100
  loc_B698E9: CI4UI1
  loc_B698EA: FLdPr Me
  loc_B698ED: MemLdStr global_96
  loc_B698F0: FLdPr Me
  loc_B698F3: MemLdStr global_92
  loc_B698F6: AryLock
  loc_B698F9: Ary1LdPr
  loc_B698FA: MemLdStr global_108
  loc_B698FD: AryLock
  loc_B69900: Ary1LdPr
  loc_B69901: MemLdRfVar from_stack_1.global_20
  loc_B69904: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B69909: AryUnlock
  loc_B6990C: AryUnlock
  loc_B6990F: FFree1Var var_11C = ""
  loc_B69912: LitI2_Byte 1
  loc_B69914: PopTmpLdAd2 var_96
  loc_B69917: FLdPr var_88
  loc_B6991A: Call clsliqucome.Move(from_stack_1v)
  loc_B6991F: FLdRfVar var_96
  loc_B69922: FLdPr var_88
  loc_B69925: from_stack_1 = clsliqucome.EOF
  loc_B6992A: FLdI2 var_96
  loc_B6992D: FLdPr Me
  loc_B69930: MemLdI2 global_100
  loc_B69933: LitI2_Byte &HA
  loc_B69935: EqI2
  loc_B69936: FLdPr Me
  loc_B69939: MemLdStr global_96
  loc_B6993C: FLdPr Me
  loc_B6993F: MemLdStr global_92
  loc_B69942: Ary1LdPr
  loc_B69943: MemLdI2 global_100
  loc_B69946: AndI4
  loc_B69947: OrI4
  loc_B69948: NotI4
  loc_B69949: BranchT loc_B69727
  loc_B6994C: Branch loc_B69973
  loc_B6994F: LitI4 0
  loc_B69954: LitI4 0
  loc_B69959: FLdPr Me
  loc_B6995C: MemLdStr global_96
  loc_B6995F: FLdPr Me
  loc_B69962: MemLdStr global_92
  loc_B69965: Ary1LdPr
  loc_B69966: MemLdRfVar from_stack_1.global_108
  loc_B69969: RedimPreserve
  loc_B69973: LitNothing
  loc_B69975: FStAd var_88 
  loc_B69979: ExitProcHresult
End Function

Private Function Proc_325_23_BD07F8() 'BD07F8
  'Data Table: 4CA014
  loc_BD0114: FLdPr Me
  loc_BD0117: MemLdRfVar from_stack_1.global_84
  loc_BD011A: NewIfNullAd
  loc_BD011D: FStAd var_8C 
  loc_BD0121: FLdRfVar var_8E
  loc_BD0124: FLdPr var_8C
  loc_BD0127: from_stack_1 = clsliqucome.TipoVenc
  loc_BD012C: FLdUI1
  loc_BD0130: CI2UI1
  loc_BD0132: LitI2_Byte 2
  loc_BD0134: EqI2
  loc_BD0135: BranchF loc_BD03EC
  loc_BD0138: FLdPr Me
  loc_BD013B: MemLdUI1 global_102
  loc_BD013F: CI2UI1
  loc_BD0141: FStI2 var_86
  loc_BD0144: LitI2_Byte 0
  loc_BD0146: CUI1I2
  loc_BD0148: FLdPr Me
  loc_BD014B: MemStUI1
  loc_BD014F: LitI2_Byte 0
  loc_BD0151: FLdPr Me
  loc_BD0154: MemLdUI1 global_102
  loc_BD0158: CI4UI1
  loc_BD0159: FLdPr Me
  loc_BD015C: MemLdStr global_96
  loc_BD015F: FLdPr Me
  loc_BD0162: MemLdStr global_92
  loc_BD0165: Ary1LdPr
  loc_BD0166: MemLdStr global_112
  loc_BD0169: Ary1LdPr
  loc_BD016A: MemStI2 global_0
  loc_BD016D: FLdRfVar var_8E
  loc_BD0170: FLdPr var_8C
  loc_BD0173: from_stack_1 = clsliqucome.PeriBole
  loc_BD0178: FLdRfVar var_94
  loc_BD017B: FLdPr var_8C
  loc_BD017E: from_stack_1 = clsliqucome.NumeBole
  loc_BD0183: FLdRfVar var_96
  loc_BD0186: FLdPr var_8C
  loc_BD0189: from_stack_1 = clsliqucome.BimeLiqu
  loc_BD018E: FLdRfVar var_9C
  loc_BD0191: FLdPr var_8C
  loc_BD0194: from_stack_1 = clsliqucome.CodiCome
  loc_BD0199: FLdRfVar var_A4
  loc_BD019C: FLdPr var_8C
  loc_BD019F: from_stack_1 = clsliqucome.TotaBole
  loc_BD01A4: LitStr "31/03/2024"
  loc_BD01A7: FLdFPR8 var_A4
  loc_BD01AA: CStrR8
  loc_BD01AC: FStStrNoPop var_B8
  loc_BD01AF: LitI2_Byte 2
  loc_BD01B1: CUI1I2
  loc_BD01B3: ILdRf var_9C
  loc_BD01B6: CStrI4
  loc_BD01B8: FStStrNoPop var_B4
  loc_BD01BB: FLdUI1
  loc_BD01BF: CStrI2
  loc_BD01C1: FStStrNoPop var_B0
  loc_BD01C4: ILdRf var_94
  loc_BD01C7: CStrI4
  loc_BD01C9: FStStrNoPop var_AC
  loc_BD01CC: FLdI2 var_8E
  loc_BD01CF: CStrUI1
  loc_BD01D1: FStStrNoPop var_A8
  loc_BD01D4: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_BD01D9: PopTmpLdAdStr var_C0
  loc_BD01DC: FLdPr Me
  loc_BD01DF: MemLdUI1 global_102
  loc_BD01E3: CI4UI1
  loc_BD01E4: FLdPr Me
  loc_BD01E7: MemLdStr global_96
  loc_BD01EA: FLdPr Me
  loc_BD01ED: MemLdStr global_92
  loc_BD01F0: Ary1LdPr
  loc_BD01F1: MemLdStr global_112
  loc_BD01F4: Ary1LdPr
  loc_BD01F5: MemLdRfVar from_stack_1.global_20
  loc_BD01F8: StAryMove
  loc_BD01FA: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BD0207: FLdPr Me
  loc_BD020A: MemLdRfVar from_stack_1.global_88
  loc_BD020D: NewIfNullAd
  loc_BD0210: FStAd var_C4 
  loc_BD0214: LitStr "SELECT CAST(sum(if(CodiSubr <> 999,ImpoLcde,0)) AS DOUBLE(10,2)) as ImpoLico,"
  loc_BD0217: LitStr " CAST(sum(if(CodiSubr <> 999,DecaLcde+ExceLcde,0)) AS DOUBLE(10,2)) as DescLico,"
  loc_BD021A: ConcatStr
  loc_BD021B: FStStrNoPop var_A8
  loc_BD021E: LitStr " CAST(sum(if(CodiSubr = 999,ImpoLcde-DecaLcde,0)) AS DOUBLE(10,2)) as CEmision"
  loc_BD0221: ConcatStr
  loc_BD0222: FStStrNoPop var_AC
  loc_BD0225: LitStr " FROM licodeta"
  loc_BD0228: ConcatStr
  loc_BD0229: FStStrNoPop var_B0
  loc_BD022C: LitStr " WHERE PeriLiqu = "
  loc_BD022F: ConcatStr
  loc_BD0230: FStStrNoPop var_B4
  loc_BD0233: FLdRfVar var_8E
  loc_BD0236: FLdPr Me
  loc_BD0239: MemLdRfVar from_stack_1.global_80
  loc_BD023C: NewIfNullPr clsliquidacion
  loc_BD023F: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BD0244: FLdI2 var_8E
  loc_BD0247: CStrUI1
  loc_BD0249: FStStrNoPop var_B8
  loc_BD024C: ConcatStr
  loc_BD024D: FStStrNoPop var_C8
  loc_BD0250: LitStr " AND CodiTili = "
  loc_BD0253: ConcatStr
  loc_BD0254: FStStrNoPop var_CC
  loc_BD0257: FLdRfVar var_96
  loc_BD025A: FLdPr Me
  loc_BD025D: MemLdRfVar from_stack_1.global_80
  loc_BD0260: NewIfNullPr clsliquidacion
  loc_BD0263: from_stack_1 = clsliquidacion.CodiTili
  loc_BD0268: FLdUI1
  loc_BD026C: CStrI2
  loc_BD026E: FStStrNoPop var_D0
  loc_BD0271: ConcatStr
  loc_BD0272: FStStrNoPop var_D4
  loc_BD0275: LitStr " AND NumeLiqu = "
  loc_BD0278: ConcatStr
  loc_BD0279: FStStrNoPop var_DC
  loc_BD027C: FLdRfVar var_D6
  loc_BD027F: FLdPr Me
  loc_BD0282: MemLdRfVar from_stack_1.global_80
  loc_BD0285: NewIfNullPr clsliquidacion
  loc_BD0288: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BD028D: FLdI2 var_D6
  loc_BD0290: CStrUI1
  loc_BD0292: FStStrNoPop var_E0
  loc_BD0295: ConcatStr
  loc_BD0296: FStStrNoPop var_E4
  loc_BD0299: LitStr " AND TipoVenc = 2 AND CodiCome = "
  loc_BD029C: ConcatStr
  loc_BD029D: FStStrNoPop var_E8
  loc_BD02A0: FLdRfVar var_94
  loc_BD02A3: FLdPr Me
  loc_BD02A6: MemLdRfVar from_stack_1.global_84
  loc_BD02A9: NewIfNullPr clsliqucome
  loc_BD02AC: from_stack_1 = clsliqucome.CodiCome
  loc_BD02B1: ILdRf var_94
  loc_BD02B4: CStrI4
  loc_BD02B6: FStStrNoPop var_EC
  loc_BD02B9: ConcatStr
  loc_BD02BA: FStStrNoPop var_F0
  loc_BD02BD: FLdPr var_C4
  loc_BD02C0: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_BD02C5: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_BD02E6: FLdRfVar var_94
  loc_BD02E9: FLdPr var_C4
  loc_BD02EC: from_stack_1 = clsliqucome.RecordCount
  loc_BD02F1: ILdRf var_94
  loc_BD02F4: LitI4 0
  loc_BD02F9: GtI4
  loc_BD02FA: BranchF loc_BD03E3
  loc_BD02FD: FLdPr var_C4
  loc_BD0300: Call clsliqucome.MoveFirst()
  loc_BD0305: FLdRfVar var_A4
  loc_BD0308: FLdPr var_C4
  loc_BD030B: from_stack_1 = clsliqucome.ImpoLico
  loc_BD0310: LitI2_Byte 0
  loc_BD0312: LitVar_Missing var_128
  loc_BD0315: LitI2_Byte &HFF
  loc_BD0317: FLdFPR8 var_A4
  loc_BD031A: CVarR8
  loc_BD031E: PopAdLdVar
  loc_BD031F: FLdPr Me
  loc_BD0322: MemLdUI1 global_102
  loc_BD0326: CI4UI1
  loc_BD0327: FLdPr Me
  loc_BD032A: MemLdStr global_96
  loc_BD032D: FLdPr Me
  loc_BD0330: MemLdStr global_92
  loc_BD0333: AryLock
  loc_BD0336: Ary1LdPr
  loc_BD0337: MemLdStr global_112
  loc_BD033A: AryLock
  loc_BD033D: Ary1LdPr
  loc_BD033E: MemLdRfVar from_stack_1.global_28
  loc_BD0341: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0346: AryUnlock
  loc_BD0349: AryUnlock
  loc_BD034C: FFree1Var var_128 = ""
  loc_BD034F: FLdRfVar var_A4
  loc_BD0352: FLdPr var_C4
  loc_BD0355: from_stack_1 = clsliqucome.DescLico
  loc_BD035A: LitI2_Byte 0
  loc_BD035C: LitVar_Missing var_128
  loc_BD035F: LitI2_Byte &HFF
  loc_BD0361: FLdFPR8 var_A4
  loc_BD0364: CVarR8
  loc_BD0368: PopAdLdVar
  loc_BD0369: FLdPr Me
  loc_BD036C: MemLdUI1 global_102
  loc_BD0370: CI4UI1
  loc_BD0371: FLdPr Me
  loc_BD0374: MemLdStr global_96
  loc_BD0377: FLdPr Me
  loc_BD037A: MemLdStr global_92
  loc_BD037D: AryLock
  loc_BD0380: Ary1LdPr
  loc_BD0381: MemLdStr global_112
  loc_BD0384: AryLock
  loc_BD0387: Ary1LdPr
  loc_BD0388: MemLdRfVar from_stack_1.global_32
  loc_BD038B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0390: AryUnlock
  loc_BD0393: AryUnlock
  loc_BD0396: FFree1Var var_128 = ""
  loc_BD0399: FLdRfVar var_128
  loc_BD039C: FLdPr var_C4
  loc_BD039F: from_stack_1 = clsliqucome.CEmision
  loc_BD03A4: LitI2_Byte 0
  loc_BD03A6: LitVar_Missing var_138
  loc_BD03A9: LitI2_Byte &HFF
  loc_BD03AB: FLdVar var_128
  loc_BD03AF: FLdPr Me
  loc_BD03B2: MemLdUI1 global_102
  loc_BD03B6: CI4UI1
  loc_BD03B7: FLdPr Me
  loc_BD03BA: MemLdStr global_96
  loc_BD03BD: FLdPr Me
  loc_BD03C0: MemLdStr global_92
  loc_BD03C3: AryLock
  loc_BD03C6: Ary1LdPr
  loc_BD03C7: MemLdStr global_112
  loc_BD03CA: AryLock
  loc_BD03CD: Ary1LdPr
  loc_BD03CE: MemLdRfVar from_stack_1.global_40
  loc_BD03D1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD03D6: AryUnlock
  loc_BD03D9: AryUnlock
  loc_BD03DC: FFreeVar var_128 = ""
  loc_BD03E3: LitNothing
  loc_BD03E5: FStAd var_C4 
  loc_BD03E9: Branch loc_BD05BE
  loc_BD03EC: FLdPr Me
  loc_BD03EF: MemLdUI1 global_102
  loc_BD03F3: CI2UI1
  loc_BD03F5: LitI2_Byte 1
  loc_BD03F7: AddI2
  loc_BD03F8: CUI1I2
  loc_BD03FA: FLdPr Me
  loc_BD03FD: MemStUI1
  loc_BD0401: LitI4 0
  loc_BD0406: FLdPr Me
  loc_BD0409: MemLdUI1 global_102
  loc_BD040D: CI4UI1
  loc_BD040E: FLdPr Me
  loc_BD0411: MemLdStr global_96
  loc_BD0414: FLdPr Me
  loc_BD0417: MemLdStr global_92
  loc_BD041A: Ary1LdPr
  loc_BD041B: MemLdRfVar from_stack_1.global_112
  loc_BD041E: RedimPreserve
  loc_BD0428: LitI2_Byte &HFF
  loc_BD042A: FLdPr Me
  loc_BD042D: MemLdUI1 global_102
  loc_BD0431: CI4UI1
  loc_BD0432: FLdPr Me
  loc_BD0435: MemLdStr global_96
  loc_BD0438: FLdPr Me
  loc_BD043B: MemLdStr global_92
  loc_BD043E: Ary1LdPr
  loc_BD043F: MemLdStr global_112
  loc_BD0442: Ary1LdPr
  loc_BD0443: MemStI2 global_0
  loc_BD0446: FLdRfVar var_8E
  loc_BD0449: FLdPr var_8C
  loc_BD044C: from_stack_1 = clsliqucome.PeriBole
  loc_BD0451: FLdRfVar var_94
  loc_BD0454: FLdPr var_8C
  loc_BD0457: from_stack_1 = clsliqucome.NumeBole
  loc_BD045C: FLdRfVar var_96
  loc_BD045F: FLdPr var_8C
  loc_BD0462: from_stack_1 = clsliqucome.BimeLiqu
  loc_BD0467: FLdRfVar var_9C
  loc_BD046A: FLdPr var_8C
  loc_BD046D: from_stack_1 = clsliqucome.CodiCome
  loc_BD0472: FLdRfVar var_A4
  loc_BD0475: FLdPr var_8C
  loc_BD0478: from_stack_1 = clsliqucome.TotaBole
  loc_BD047D: LitStr "31/12/2024"
  loc_BD0480: FLdFPR8 var_A4
  loc_BD0483: CStrR8
  loc_BD0485: FStStrNoPop var_B8
  loc_BD0488: LitI2_Byte 2
  loc_BD048A: CUI1I2
  loc_BD048C: ILdRf var_9C
  loc_BD048F: CStrI4
  loc_BD0491: FStStrNoPop var_B4
  loc_BD0494: FLdUI1
  loc_BD0498: CStrI2
  loc_BD049A: FStStrNoPop var_B0
  loc_BD049D: ILdRf var_94
  loc_BD04A0: CStrI4
  loc_BD04A2: FStStrNoPop var_AC
  loc_BD04A5: FLdI2 var_8E
  loc_BD04A8: CStrUI1
  loc_BD04AA: FStStrNoPop var_A8
  loc_BD04AD: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_BD04B2: PopTmpLdAdStr var_C0
  loc_BD04B5: FLdPr Me
  loc_BD04B8: MemLdUI1 global_102
  loc_BD04BC: CI4UI1
  loc_BD04BD: FLdPr Me
  loc_BD04C0: MemLdStr global_96
  loc_BD04C3: FLdPr Me
  loc_BD04C6: MemLdStr global_92
  loc_BD04C9: Ary1LdPr
  loc_BD04CA: MemLdStr global_112
  loc_BD04CD: Ary1LdPr
  loc_BD04CE: MemLdRfVar from_stack_1.global_20
  loc_BD04D1: StAryMove
  loc_BD04D3: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_BD04E0: FLdRfVar var_A4
  loc_BD04E3: FLdPr var_8C
  loc_BD04E6: from_stack_1 = clsliqucome.ImpoLico
  loc_BD04EB: LitI2_Byte 0
  loc_BD04ED: LitVar_Missing var_128
  loc_BD04F0: LitI2_Byte &HFF
  loc_BD04F2: FLdFPR8 var_A4
  loc_BD04F5: CVarR8
  loc_BD04F9: PopAdLdVar
  loc_BD04FA: FLdPr Me
  loc_BD04FD: MemLdUI1 global_102
  loc_BD0501: CI4UI1
  loc_BD0502: FLdPr Me
  loc_BD0505: MemLdStr global_96
  loc_BD0508: FLdPr Me
  loc_BD050B: MemLdStr global_92
  loc_BD050E: AryLock
  loc_BD0511: Ary1LdPr
  loc_BD0512: MemLdStr global_112
  loc_BD0515: AryLock
  loc_BD0518: Ary1LdPr
  loc_BD0519: MemLdRfVar from_stack_1.global_28
  loc_BD051C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0521: AryUnlock
  loc_BD0524: AryUnlock
  loc_BD0527: FFree1Var var_128 = ""
  loc_BD052A: FLdRfVar var_A4
  loc_BD052D: FLdPr var_8C
  loc_BD0530: from_stack_1 = clsliqucome.DescLico
  loc_BD0535: LitI2_Byte 0
  loc_BD0537: LitVar_Missing var_128
  loc_BD053A: LitI2_Byte &HFF
  loc_BD053C: FLdFPR8 var_A4
  loc_BD053F: CVarR8
  loc_BD0543: PopAdLdVar
  loc_BD0544: FLdPr Me
  loc_BD0547: MemLdUI1 global_102
  loc_BD054B: CI4UI1
  loc_BD054C: FLdPr Me
  loc_BD054F: MemLdStr global_96
  loc_BD0552: FLdPr Me
  loc_BD0555: MemLdStr global_92
  loc_BD0558: AryLock
  loc_BD055B: Ary1LdPr
  loc_BD055C: MemLdStr global_112
  loc_BD055F: AryLock
  loc_BD0562: Ary1LdPr
  loc_BD0563: MemLdRfVar from_stack_1.global_32
  loc_BD0566: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD056B: AryUnlock
  loc_BD056E: AryUnlock
  loc_BD0571: FFree1Var var_128 = ""
  loc_BD0574: FLdRfVar var_128
  loc_BD0577: FLdPr var_8C
  loc_BD057A: from_stack_1 = clsliqucome.CEmision
  loc_BD057F: LitI2_Byte 0
  loc_BD0581: LitVar_Missing var_138
  loc_BD0584: LitI2_Byte &HFF
  loc_BD0586: FLdVar var_128
  loc_BD058A: FLdPr Me
  loc_BD058D: MemLdUI1 global_102
  loc_BD0591: CI4UI1
  loc_BD0592: FLdPr Me
  loc_BD0595: MemLdStr global_96
  loc_BD0598: FLdPr Me
  loc_BD059B: MemLdStr global_92
  loc_BD059E: AryLock
  loc_BD05A1: Ary1LdPr
  loc_BD05A2: MemLdStr global_112
  loc_BD05A5: AryLock
  loc_BD05A8: Ary1LdPr
  loc_BD05A9: MemLdRfVar from_stack_1.global_40
  loc_BD05AC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD05B1: AryUnlock
  loc_BD05B4: AryUnlock
  loc_BD05B7: FFreeVar var_128 = ""
  loc_BD05BE: FLdRfVar var_8E
  loc_BD05C1: FLdPr var_8C
  loc_BD05C4: from_stack_1 = clsliqucome.BimeLiqu
  loc_BD05C9: LitI2_Byte 0
  loc_BD05CB: LitVar_Missing var_128
  loc_BD05CE: LitI2_Byte 0
  loc_BD05D0: FLdUI1
  loc_BD05D4: CVarUI1
  loc_BD05D8: PopAdLdVar
  loc_BD05D9: FLdPr Me
  loc_BD05DC: MemLdUI1 global_102
  loc_BD05E0: CI4UI1
  loc_BD05E1: FLdPr Me
  loc_BD05E4: MemLdStr global_96
  loc_BD05E7: FLdPr Me
  loc_BD05EA: MemLdStr global_92
  loc_BD05ED: AryLock
  loc_BD05F0: Ary1LdPr
  loc_BD05F1: MemLdStr global_112
  loc_BD05F4: AryLock
  loc_BD05F7: Ary1LdPr
  loc_BD05F8: MemLdRfVar from_stack_1.global_4
  loc_BD05FB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0600: AryUnlock
  loc_BD0603: AryUnlock
  loc_BD0606: FFree1Var var_128 = ""
  loc_BD0609: FLdRfVar var_8E
  loc_BD060C: FLdPr var_8C
  loc_BD060F: from_stack_1 = clsliqucome.PeriBole
  loc_BD0614: LitI2_Byte 0
  loc_BD0616: LitVar_Missing var_128
  loc_BD0619: LitI2_Byte 0
  loc_BD061B: FLdI2 var_8E
  loc_BD061E: CVarI2 var_108
  loc_BD0621: PopAdLdVar
  loc_BD0622: FLdPr Me
  loc_BD0625: MemLdUI1 global_102
  loc_BD0629: CI4UI1
  loc_BD062A: FLdPr Me
  loc_BD062D: MemLdStr global_96
  loc_BD0630: FLdPr Me
  loc_BD0633: MemLdStr global_92
  loc_BD0636: AryLock
  loc_BD0639: Ary1LdPr
  loc_BD063A: MemLdStr global_112
  loc_BD063D: AryLock
  loc_BD0640: Ary1LdPr
  loc_BD0641: MemLdRfVar from_stack_1.global_8
  loc_BD0644: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0649: AryUnlock
  loc_BD064C: AryUnlock
  loc_BD064F: FFree1Var var_128 = ""
  loc_BD0652: FLdRfVar var_94
  loc_BD0655: FLdPr var_8C
  loc_BD0658: from_stack_1 = clsliqucome.NumeBole
  loc_BD065D: LitI2_Byte 0
  loc_BD065F: LitVar_Missing var_128
  loc_BD0662: LitI2_Byte 0
  loc_BD0664: ILdRf var_94
  loc_BD0667: CVarI4
  loc_BD066B: PopAdLdVar
  loc_BD066C: FLdPr Me
  loc_BD066F: MemLdUI1 global_102
  loc_BD0673: CI4UI1
  loc_BD0674: FLdPr Me
  loc_BD0677: MemLdStr global_96
  loc_BD067A: FLdPr Me
  loc_BD067D: MemLdStr global_92
  loc_BD0680: AryLock
  loc_BD0683: Ary1LdPr
  loc_BD0684: MemLdStr global_112
  loc_BD0687: AryLock
  loc_BD068A: Ary1LdPr
  loc_BD068B: MemLdRfVar from_stack_1.global_12
  loc_BD068E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0693: AryUnlock
  loc_BD0696: AryUnlock
  loc_BD0699: FFree1Var var_128 = ""
  loc_BD069C: FLdRfVar var_8E
  loc_BD069F: FLdPr var_8C
  loc_BD06A2: from_stack_1 = clsliqucome.TipoVenc
  loc_BD06A7: LitI2_Byte 0
  loc_BD06A9: LitVar_Missing var_128
  loc_BD06AC: LitI2_Byte 0
  loc_BD06AE: FLdUI1
  loc_BD06B2: CVarUI1
  loc_BD06B6: PopAdLdVar
  loc_BD06B7: FLdPr Me
  loc_BD06BA: MemLdUI1 global_102
  loc_BD06BE: CI4UI1
  loc_BD06BF: FLdPr Me
  loc_BD06C2: MemLdStr global_96
  loc_BD06C5: FLdPr Me
  loc_BD06C8: MemLdStr global_92
  loc_BD06CB: AryLock
  loc_BD06CE: Ary1LdPr
  loc_BD06CF: MemLdStr global_112
  loc_BD06D2: AryLock
  loc_BD06D5: Ary1LdPr
  loc_BD06D6: MemLdRfVar from_stack_1.global_24
  loc_BD06D9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD06DE: AryUnlock
  loc_BD06E1: AryUnlock
  loc_BD06E4: FFree1Var var_128 = ""
  loc_BD06E7: FLdRfVar var_A8
  loc_BD06EA: FLdPr var_8C
  loc_BD06ED: from_stack_1 = clsliqucome.FeveLico
  loc_BD06F2: LitI2_Byte 0
  loc_BD06F4: LitVar_Missing var_138
  loc_BD06F7: LitI2_Byte 0
  loc_BD06F9: FLdZeroAd var_A8
  loc_BD06FC: CVarStr var_128
  loc_BD06FF: PopAdLdVar
  loc_BD0700: FLdPr Me
  loc_BD0703: MemLdUI1 global_102
  loc_BD0707: CI4UI1
  loc_BD0708: FLdPr Me
  loc_BD070B: MemLdStr global_96
  loc_BD070E: FLdPr Me
  loc_BD0711: MemLdStr global_92
  loc_BD0714: AryLock
  loc_BD0717: Ary1LdPr
  loc_BD0718: MemLdStr global_112
  loc_BD071B: AryLock
  loc_BD071E: Ary1LdPr
  loc_BD071F: MemLdRfVar from_stack_1.global_16
  loc_BD0722: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0727: AryUnlock
  loc_BD072A: AryUnlock
  loc_BD072D: FFreeVar var_128 = ""
  loc_BD0734: FLdRfVar var_128
  loc_BD0737: FLdPr var_8C
  loc_BD073A: from_stack_1 = clsliqucome.RecaBole
  loc_BD073F: LitI2_Byte 0
  loc_BD0741: LitVar_Missing var_138
  loc_BD0744: LitI2_Byte &HFF
  loc_BD0746: FLdVar var_128
  loc_BD074A: FLdPr Me
  loc_BD074D: MemLdUI1 global_102
  loc_BD0751: CI4UI1
  loc_BD0752: FLdPr Me
  loc_BD0755: MemLdStr global_96
  loc_BD0758: FLdPr Me
  loc_BD075B: MemLdStr global_92
  loc_BD075E: AryLock
  loc_BD0761: Ary1LdPr
  loc_BD0762: MemLdStr global_112
  loc_BD0765: AryLock
  loc_BD0768: Ary1LdPr
  loc_BD0769: MemLdRfVar from_stack_1.global_36
  loc_BD076C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD0771: AryUnlock
  loc_BD0774: AryUnlock
  loc_BD0777: FFreeVar var_128 = ""
  loc_BD077E: FLdRfVar var_A4
  loc_BD0781: FLdPr var_8C
  loc_BD0784: from_stack_1 = clsliqucome.TotaBole
  loc_BD0789: LitI2_Byte 0
  loc_BD078B: LitVar_Missing var_128
  loc_BD078E: LitI2_Byte &HFF
  loc_BD0790: FLdFPR8 var_A4
  loc_BD0793: CVarR8
  loc_BD0797: PopAdLdVar
  loc_BD0798: FLdPr Me
  loc_BD079B: MemLdUI1 global_102
  loc_BD079F: CI4UI1
  loc_BD07A0: FLdPr Me
  loc_BD07A3: MemLdStr global_96
  loc_BD07A6: FLdPr Me
  loc_BD07A9: MemLdStr global_92
  loc_BD07AC: AryLock
  loc_BD07AF: Ary1LdPr
  loc_BD07B0: MemLdStr global_112
  loc_BD07B3: AryLock
  loc_BD07B6: Ary1LdPr
  loc_BD07B7: MemLdRfVar from_stack_1.global_44
  loc_BD07BA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD07BF: AryUnlock
  loc_BD07C2: AryUnlock
  loc_BD07C5: FFree1Var var_128 = ""
  loc_BD07C8: LitI2_Byte 1
  loc_BD07CA: PopTmpLdAd2 var_8E
  loc_BD07CD: FLdPr var_8C
  loc_BD07D0: Call clsliqucome.Move(from_stack_1v)
  loc_BD07D5: FLdPr Me
  loc_BD07D8: MemLdUI1 global_102
  loc_BD07DC: CI2UI1
  loc_BD07DE: LitI2_Byte 0
  loc_BD07E0: EqI2
  loc_BD07E1: BranchF loc_BD07F0
  loc_BD07E4: FLdI2 var_86
  loc_BD07E7: CUI1I2
  loc_BD07E9: FLdPr Me
  loc_BD07EC: MemStUI1
  loc_BD07F0: LitNothing
  loc_BD07F2: FStAd var_8C 
  loc_BD07F6: ExitProcHresult
End Function

Private Function Proc_325_24_C37340() 'C37340
  'Data Table: 4CA014
  loc_C36788: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C3678D: PopAdLdVar
  loc_C3678E: FLdPr Me
  loc_C36791: MemLdRfVar from_stack_1.global_60
  loc_C36794: LdPrVar
  loc_C36796: LateMemCall
  loc_C3679C: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C367A1: PopAdLdVar
  loc_C367A2: FLdPr Me
  loc_C367A5: MemLdRfVar from_stack_1.global_60
  loc_C367A8: LdPrVar
  loc_C367AA: LateMemCall
  loc_C367B0: LitVarStr var_94, "<head>"
  loc_C367B5: PopAdLdVar
  loc_C367B6: FLdPr Me
  loc_C367B9: MemLdRfVar from_stack_1.global_60
  loc_C367BC: LdPrVar
  loc_C367BE: LateMemCall
  loc_C367C4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C367C9: PopAdLdVar
  loc_C367CA: FLdPr Me
  loc_C367CD: MemLdRfVar from_stack_1.global_60
  loc_C367D0: LdPrVar
  loc_C367D2: LateMemCall
  loc_C367D8: LitStr "<title>"
  loc_C367DB: FLdRfVar var_A8
  loc_C367DE: FLdPr Me
  loc_C367E1:  = Me.Caption
  loc_C367E6: ILdRf var_A8
  loc_C367E9: ConcatStr
  loc_C367EA: FStStrNoPop var_AC
  loc_C367ED: LitStr "</title>"
  loc_C367F0: ConcatStr
  loc_C367F1: CVarStr var_BC
  loc_C367F4: PopAdLdVar
  loc_C367F5: FLdPr Me
  loc_C367F8: MemLdRfVar from_stack_1.global_60
  loc_C367FB: LdPrVar
  loc_C367FD: LateMemCall
  loc_C36803: FFreeStr var_A8 = ""
  loc_C3680A: FFree1Var var_BC = ""
  loc_C3680D: LitVarStr var_94, "<style type=""text/css"">"
  loc_C36812: PopAdLdVar
  loc_C36813: FLdPr Me
  loc_C36816: MemLdRfVar from_stack_1.global_60
  loc_C36819: LdPrVar
  loc_C3681B: LateMemCall
  loc_C36821: LitVarStr var_94, "<!--"
  loc_C36826: PopAdLdVar
  loc_C36827: FLdPr Me
  loc_C3682A: MemLdRfVar from_stack_1.global_60
  loc_C3682D: LdPrVar
  loc_C3682F: LateMemCall
  loc_C36835: LitVarStr var_94, ".Encabezado {"
  loc_C3683A: PopAdLdVar
  loc_C3683B: FLdPr Me
  loc_C3683E: MemLdRfVar from_stack_1.global_60
  loc_C36841: LdPrVar
  loc_C36843: LateMemCall
  loc_C36849: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C3684E: PopAdLdVar
  loc_C3684F: FLdPr Me
  loc_C36852: MemLdRfVar from_stack_1.global_60
  loc_C36855: LdPrVar
  loc_C36857: LateMemCall
  loc_C3685D: LitVarStr var_94, " font-size: 10px;"
  loc_C36862: PopAdLdVar
  loc_C36863: FLdPr Me
  loc_C36866: MemLdRfVar from_stack_1.global_60
  loc_C36869: LdPrVar
  loc_C3686B: LateMemCall
  loc_C36871: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C36876: PopAdLdVar
  loc_C36877: FLdPr Me
  loc_C3687A: MemLdRfVar from_stack_1.global_60
  loc_C3687D: LdPrVar
  loc_C3687F: LateMemCall
  loc_C36885: LitVarStr var_94, "}"
  loc_C3688A: PopAdLdVar
  loc_C3688B: FLdPr Me
  loc_C3688E: MemLdRfVar from_stack_1.global_60
  loc_C36891: LdPrVar
  loc_C36893: LateMemCall
  loc_C36899: LitVarStr var_94, ".EncabezadoRubros {"
  loc_C3689E: PopAdLdVar
  loc_C3689F: FLdPr Me
  loc_C368A2: MemLdRfVar from_stack_1.global_60
  loc_C368A5: LdPrVar
  loc_C368A7: LateMemCall
  loc_C368AD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C368B2: PopAdLdVar
  loc_C368B3: FLdPr Me
  loc_C368B6: MemLdRfVar from_stack_1.global_60
  loc_C368B9: LdPrVar
  loc_C368BB: LateMemCall
  loc_C368C1: LitVarStr var_94, " font-size: 9px;"
  loc_C368C6: PopAdLdVar
  loc_C368C7: FLdPr Me
  loc_C368CA: MemLdRfVar from_stack_1.global_60
  loc_C368CD: LdPrVar
  loc_C368CF: LateMemCall
  loc_C368D5: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C368DA: PopAdLdVar
  loc_C368DB: FLdPr Me
  loc_C368DE: MemLdRfVar from_stack_1.global_60
  loc_C368E1: LdPrVar
  loc_C368E3: LateMemCall
  loc_C368E9: LitVarStr var_94, "}"
  loc_C368EE: PopAdLdVar
  loc_C368EF: FLdPr Me
  loc_C368F2: MemLdRfVar from_stack_1.global_60
  loc_C368F5: LdPrVar
  loc_C368F7: LateMemCall
  loc_C368FD: LitVarStr var_94, ".Normal {"
  loc_C36902: PopAdLdVar
  loc_C36903: FLdPr Me
  loc_C36906: MemLdRfVar from_stack_1.global_60
  loc_C36909: LdPrVar
  loc_C3690B: LateMemCall
  loc_C36911: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C36916: PopAdLdVar
  loc_C36917: FLdPr Me
  loc_C3691A: MemLdRfVar from_stack_1.global_60
  loc_C3691D: LdPrVar
  loc_C3691F: LateMemCall
  loc_C36925: LitVarStr var_94, " font-size: 10px;"
  loc_C3692A: PopAdLdVar
  loc_C3692B: FLdPr Me
  loc_C3692E: MemLdRfVar from_stack_1.global_60
  loc_C36931: LdPrVar
  loc_C36933: LateMemCall
  loc_C36939: LitVarStr var_94, " vertical-align: top;"
  loc_C3693E: PopAdLdVar
  loc_C3693F: FLdPr Me
  loc_C36942: MemLdRfVar from_stack_1.global_60
  loc_C36945: LdPrVar
  loc_C36947: LateMemCall
  loc_C3694D: LitVarStr var_94, "}"
  loc_C36952: PopAdLdVar
  loc_C36953: FLdPr Me
  loc_C36956: MemLdRfVar from_stack_1.global_60
  loc_C36959: LdPrVar
  loc_C3695B: LateMemCall
  loc_C36961: LitVarStr var_94, ".Rubros {"
  loc_C36966: PopAdLdVar
  loc_C36967: FLdPr Me
  loc_C3696A: MemLdRfVar from_stack_1.global_60
  loc_C3696D: LdPrVar
  loc_C3696F: LateMemCall
  loc_C36975: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3697A: PopAdLdVar
  loc_C3697B: FLdPr Me
  loc_C3697E: MemLdRfVar from_stack_1.global_60
  loc_C36981: LdPrVar
  loc_C36983: LateMemCall
  loc_C36989: LitVarStr var_94, " font-size: 9px;"
  loc_C3698E: PopAdLdVar
  loc_C3698F: FLdPr Me
  loc_C36992: MemLdRfVar from_stack_1.global_60
  loc_C36995: LdPrVar
  loc_C36997: LateMemCall
  loc_C3699D: LitVarStr var_94, " vertical-align: top;"
  loc_C369A2: PopAdLdVar
  loc_C369A3: FLdPr Me
  loc_C369A6: MemLdRfVar from_stack_1.global_60
  loc_C369A9: LdPrVar
  loc_C369AB: LateMemCall
  loc_C369B1: LitVarStr var_94, " padding-left: 4px;"
  loc_C369B6: PopAdLdVar
  loc_C369B7: FLdPr Me
  loc_C369BA: MemLdRfVar from_stack_1.global_60
  loc_C369BD: LdPrVar
  loc_C369BF: LateMemCall
  loc_C369C5: LitVarStr var_94, " padding-right: 4px;"
  loc_C369CA: PopAdLdVar
  loc_C369CB: FLdPr Me
  loc_C369CE: MemLdRfVar from_stack_1.global_60
  loc_C369D1: LdPrVar
  loc_C369D3: LateMemCall
  loc_C369D9: LitVarStr var_94, "}"
  loc_C369DE: PopAdLdVar
  loc_C369DF: FLdPr Me
  loc_C369E2: MemLdRfVar from_stack_1.global_60
  loc_C369E5: LdPrVar
  loc_C369E7: LateMemCall
  loc_C369ED: LitVarStr var_94, ".DomiPostal {"
  loc_C369F2: PopAdLdVar
  loc_C369F3: FLdPr Me
  loc_C369F6: MemLdRfVar from_stack_1.global_60
  loc_C369F9: LdPrVar
  loc_C369FB: LateMemCall
  loc_C36A01: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C36A06: PopAdLdVar
  loc_C36A07: FLdPr Me
  loc_C36A0A: MemLdRfVar from_stack_1.global_60
  loc_C36A0D: LdPrVar
  loc_C36A0F: LateMemCall
  loc_C36A15: LitVarStr var_94, "  font-size: 14px;"
  loc_C36A1A: PopAdLdVar
  loc_C36A1B: FLdPr Me
  loc_C36A1E: MemLdRfVar from_stack_1.global_60
  loc_C36A21: LdPrVar
  loc_C36A23: LateMemCall
  loc_C36A29: LitVarStr var_94, "  vertical-align: top;"
  loc_C36A2E: PopAdLdVar
  loc_C36A2F: FLdPr Me
  loc_C36A32: MemLdRfVar from_stack_1.global_60
  loc_C36A35: LdPrVar
  loc_C36A37: LateMemCall
  loc_C36A3D: LitVarStr var_94, "  font-weight: bold;"
  loc_C36A42: PopAdLdVar
  loc_C36A43: FLdPr Me
  loc_C36A46: MemLdRfVar from_stack_1.global_60
  loc_C36A49: LdPrVar
  loc_C36A4B: LateMemCall
  loc_C36A51: LitVarStr var_94, "  padding-top: 1px;"
  loc_C36A56: PopAdLdVar
  loc_C36A57: FLdPr Me
  loc_C36A5A: MemLdRfVar from_stack_1.global_60
  loc_C36A5D: LdPrVar
  loc_C36A5F: LateMemCall
  loc_C36A65: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C36A6A: PopAdLdVar
  loc_C36A6B: FLdPr Me
  loc_C36A6E: MemLdRfVar from_stack_1.global_60
  loc_C36A71: LdPrVar
  loc_C36A73: LateMemCall
  loc_C36A79: LitVarStr var_94, "  padding-left: 5px;"
  loc_C36A7E: PopAdLdVar
  loc_C36A7F: FLdPr Me
  loc_C36A82: MemLdRfVar from_stack_1.global_60
  loc_C36A85: LdPrVar
  loc_C36A87: LateMemCall
  loc_C36A8D: LitVarStr var_94, "  padding-right: 5px;"
  loc_C36A92: PopAdLdVar
  loc_C36A93: FLdPr Me
  loc_C36A96: MemLdRfVar from_stack_1.global_60
  loc_C36A99: LdPrVar
  loc_C36A9B: LateMemCall
  loc_C36AA1: LitVarStr var_94, "}"
  loc_C36AA6: PopAdLdVar
  loc_C36AA7: FLdPr Me
  loc_C36AAA: MemLdRfVar from_stack_1.global_60
  loc_C36AAD: LdPrVar
  loc_C36AAF: LateMemCall
  loc_C36AB5: LitVarStr var_94, ".DomiReal {"
  loc_C36ABA: PopAdLdVar
  loc_C36ABB: FLdPr Me
  loc_C36ABE: MemLdRfVar from_stack_1.global_60
  loc_C36AC1: LdPrVar
  loc_C36AC3: LateMemCall
  loc_C36AC9: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C36ACE: PopAdLdVar
  loc_C36ACF: FLdPr Me
  loc_C36AD2: MemLdRfVar from_stack_1.global_60
  loc_C36AD5: LdPrVar
  loc_C36AD7: LateMemCall
  loc_C36ADD: LitVarStr var_94, "  font-size: 14px;"
  loc_C36AE2: PopAdLdVar
  loc_C36AE3: FLdPr Me
  loc_C36AE6: MemLdRfVar from_stack_1.global_60
  loc_C36AE9: LdPrVar
  loc_C36AEB: LateMemCall
  loc_C36AF1: LitVarStr var_94, "  vertical-align: top;"
  loc_C36AF6: PopAdLdVar
  loc_C36AF7: FLdPr Me
  loc_C36AFA: MemLdRfVar from_stack_1.global_60
  loc_C36AFD: LdPrVar
  loc_C36AFF: LateMemCall
  loc_C36B05: LitVarStr var_94, "  padding-top: 1px;"
  loc_C36B0A: PopAdLdVar
  loc_C36B0B: FLdPr Me
  loc_C36B0E: MemLdRfVar from_stack_1.global_60
  loc_C36B11: LdPrVar
  loc_C36B13: LateMemCall
  loc_C36B19: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C36B1E: PopAdLdVar
  loc_C36B1F: FLdPr Me
  loc_C36B22: MemLdRfVar from_stack_1.global_60
  loc_C36B25: LdPrVar
  loc_C36B27: LateMemCall
  loc_C36B2D: LitVarStr var_94, "  padding-left: 5px;"
  loc_C36B32: PopAdLdVar
  loc_C36B33: FLdPr Me
  loc_C36B36: MemLdRfVar from_stack_1.global_60
  loc_C36B39: LdPrVar
  loc_C36B3B: LateMemCall
  loc_C36B41: LitVarStr var_94, "  padding-right: 5px;"
  loc_C36B46: PopAdLdVar
  loc_C36B47: FLdPr Me
  loc_C36B4A: MemLdRfVar from_stack_1.global_60
  loc_C36B4D: LdPrVar
  loc_C36B4F: LateMemCall
  loc_C36B55: LitVarStr var_94, "}"
  loc_C36B5A: PopAdLdVar
  loc_C36B5B: FLdPr Me
  loc_C36B5E: MemLdRfVar from_stack_1.global_60
  loc_C36B61: LdPrVar
  loc_C36B63: LateMemCall
  loc_C36B69: LitVarStr var_94, ".MargIzq {"
  loc_C36B6E: PopAdLdVar
  loc_C36B6F: FLdPr Me
  loc_C36B72: MemLdRfVar from_stack_1.global_60
  loc_C36B75: LdPrVar
  loc_C36B77: LateMemCall
  loc_C36B7D: LitVarStr var_94, "  padding-left:5px"
  loc_C36B82: PopAdLdVar
  loc_C36B83: FLdPr Me
  loc_C36B86: MemLdRfVar from_stack_1.global_60
  loc_C36B89: LdPrVar
  loc_C36B8B: LateMemCall
  loc_C36B91: LitVarStr var_94, "}"
  loc_C36B96: PopAdLdVar
  loc_C36B97: FLdPr Me
  loc_C36B9A: MemLdRfVar from_stack_1.global_60
  loc_C36B9D: LdPrVar
  loc_C36B9F: LateMemCall
  loc_C36BA5: LitVarStr var_94, ".MargDer {"
  loc_C36BAA: PopAdLdVar
  loc_C36BAB: FLdPr Me
  loc_C36BAE: MemLdRfVar from_stack_1.global_60
  loc_C36BB1: LdPrVar
  loc_C36BB3: LateMemCall
  loc_C36BB9: LitVarStr var_94, "  padding-right:5px"
  loc_C36BBE: PopAdLdVar
  loc_C36BBF: FLdPr Me
  loc_C36BC2: MemLdRfVar from_stack_1.global_60
  loc_C36BC5: LdPrVar
  loc_C36BC7: LateMemCall
  loc_C36BCD: LitVarStr var_94, "}"
  loc_C36BD2: PopAdLdVar
  loc_C36BD3: FLdPr Me
  loc_C36BD6: MemLdRfVar from_stack_1.global_60
  loc_C36BD9: LdPrVar
  loc_C36BDB: LateMemCall
  loc_C36BE1: LitVarStr var_94, ".NormalAbajo {"
  loc_C36BE6: PopAdLdVar
  loc_C36BE7: FLdPr Me
  loc_C36BEA: MemLdRfVar from_stack_1.global_60
  loc_C36BED: LdPrVar
  loc_C36BEF: LateMemCall
  loc_C36BF5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C36BFA: PopAdLdVar
  loc_C36BFB: FLdPr Me
  loc_C36BFE: MemLdRfVar from_stack_1.global_60
  loc_C36C01: LdPrVar
  loc_C36C03: LateMemCall
  loc_C36C09: LitVarStr var_94, " font-size: 11px;"
  loc_C36C0E: PopAdLdVar
  loc_C36C0F: FLdPr Me
  loc_C36C12: MemLdRfVar from_stack_1.global_60
  loc_C36C15: LdPrVar
  loc_C36C17: LateMemCall
  loc_C36C1D: LitVarStr var_94, " vertical-align:middle;"
  loc_C36C22: PopAdLdVar
  loc_C36C23: FLdPr Me
  loc_C36C26: MemLdRfVar from_stack_1.global_60
  loc_C36C29: LdPrVar
  loc_C36C2B: LateMemCall
  loc_C36C31: LitVarStr var_94, "}"
  loc_C36C36: PopAdLdVar
  loc_C36C37: FLdPr Me
  loc_C36C3A: MemLdRfVar from_stack_1.global_60
  loc_C36C3D: LdPrVar
  loc_C36C3F: LateMemCall
  loc_C36C45: LitVarStr var_94, ".NormalDetalle {"
  loc_C36C4A: PopAdLdVar
  loc_C36C4B: FLdPr Me
  loc_C36C4E: MemLdRfVar from_stack_1.global_60
  loc_C36C51: LdPrVar
  loc_C36C53: LateMemCall
  loc_C36C59: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C36C5E: PopAdLdVar
  loc_C36C5F: FLdPr Me
  loc_C36C62: MemLdRfVar from_stack_1.global_60
  loc_C36C65: LdPrVar
  loc_C36C67: LateMemCall
  loc_C36C6D: LitVarStr var_94, " font-size: 10px;"
  loc_C36C72: PopAdLdVar
  loc_C36C73: FLdPr Me
  loc_C36C76: MemLdRfVar from_stack_1.global_60
  loc_C36C79: LdPrVar
  loc_C36C7B: LateMemCall
  loc_C36C81: LitVarStr var_94, " vertical-align: top;"
  loc_C36C86: PopAdLdVar
  loc_C36C87: FLdPr Me
  loc_C36C8A: MemLdRfVar from_stack_1.global_60
  loc_C36C8D: LdPrVar
  loc_C36C8F: LateMemCall
  loc_C36C95: LitVarStr var_94, "}"
  loc_C36C9A: PopAdLdVar
  loc_C36C9B: FLdPr Me
  loc_C36C9E: MemLdRfVar from_stack_1.global_60
  loc_C36CA1: LdPrVar
  loc_C36CA3: LateMemCall
  loc_C36CA9: LitVarStr var_94, ".NormalBloqueFin {"
  loc_C36CAE: PopAdLdVar
  loc_C36CAF: FLdPr Me
  loc_C36CB2: MemLdRfVar from_stack_1.global_60
  loc_C36CB5: LdPrVar
  loc_C36CB7: LateMemCall
  loc_C36CBD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C36CC2: PopAdLdVar
  loc_C36CC3: FLdPr Me
  loc_C36CC6: MemLdRfVar from_stack_1.global_60
  loc_C36CC9: LdPrVar
  loc_C36CCB: LateMemCall
  loc_C36CD1: LitVarStr var_94, " font-size: 10px;"
  loc_C36CD6: PopAdLdVar
  loc_C36CD7: FLdPr Me
  loc_C36CDA: MemLdRfVar from_stack_1.global_60
  loc_C36CDD: LdPrVar
  loc_C36CDF: LateMemCall
  loc_C36CE5: LitVarStr var_94, " vertical-align: top;"
  loc_C36CEA: PopAdLdVar
  loc_C36CEB: FLdPr Me
  loc_C36CEE: MemLdRfVar from_stack_1.global_60
  loc_C36CF1: LdPrVar
  loc_C36CF3: LateMemCall
  loc_C36CF9: LitVarStr var_94, " padding-right: 1px;"
  loc_C36CFE: PopAdLdVar
  loc_C36CFF: FLdPr Me
  loc_C36D02: MemLdRfVar from_stack_1.global_60
  loc_C36D05: LdPrVar
  loc_C36D07: LateMemCall
  loc_C36D0D: LitVarStr var_94, "}"
  loc_C36D12: PopAdLdVar
  loc_C36D13: FLdPr Me
  loc_C36D16: MemLdRfVar from_stack_1.global_60
  loc_C36D19: LdPrVar
  loc_C36D1B: LateMemCall
  loc_C36D21: LitVarStr var_94, ".NormalBloqueFinGrande {"
  loc_C36D26: PopAdLdVar
  loc_C36D27: FLdPr Me
  loc_C36D2A: MemLdRfVar from_stack_1.global_60
  loc_C36D2D: LdPrVar
  loc_C36D2F: LateMemCall
  loc_C36D35: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C36D3A: PopAdLdVar
  loc_C36D3B: FLdPr Me
  loc_C36D3E: MemLdRfVar from_stack_1.global_60
  loc_C36D41: LdPrVar
  loc_C36D43: LateMemCall
  loc_C36D49: LitVarStr var_94, " font-size: 14px;"
  loc_C36D4E: PopAdLdVar
  loc_C36D4F: FLdPr Me
  loc_C36D52: MemLdRfVar from_stack_1.global_60
  loc_C36D55: LdPrVar
  loc_C36D57: LateMemCall
  loc_C36D5D: LitVarStr var_94, " vertical-align: top;"
  loc_C36D62: PopAdLdVar
  loc_C36D63: FLdPr Me
  loc_C36D66: MemLdRfVar from_stack_1.global_60
  loc_C36D69: LdPrVar
  loc_C36D6B: LateMemCall
  loc_C36D71: LitVarStr var_94, "}"
  loc_C36D76: PopAdLdVar
  loc_C36D77: FLdPr Me
  loc_C36D7A: MemLdRfVar from_stack_1.global_60
  loc_C36D7D: LdPrVar
  loc_C36D7F: LateMemCall
  loc_C36D85: LitVarStr var_94, ".NombreMunicipio {"
  loc_C36D8A: PopAdLdVar
  loc_C36D8B: FLdPr Me
  loc_C36D8E: MemLdRfVar from_stack_1.global_60
  loc_C36D91: LdPrVar
  loc_C36D93: LateMemCall
  loc_C36D99: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C36D9E: PopAdLdVar
  loc_C36D9F: FLdPr Me
  loc_C36DA2: MemLdRfVar from_stack_1.global_60
  loc_C36DA5: LdPrVar
  loc_C36DA7: LateMemCall
  loc_C36DAD: LitVarStr var_94, " font-size: 14px;"
  loc_C36DB2: PopAdLdVar
  loc_C36DB3: FLdPr Me
  loc_C36DB6: MemLdRfVar from_stack_1.global_60
  loc_C36DB9: LdPrVar
  loc_C36DBB: LateMemCall
  loc_C36DC1: LitVarStr var_94, " font-weight: bold;"
  loc_C36DC6: PopAdLdVar
  loc_C36DC7: FLdPr Me
  loc_C36DCA: MemLdRfVar from_stack_1.global_60
  loc_C36DCD: LdPrVar
  loc_C36DCF: LateMemCall
  loc_C36DD5: LitVarStr var_94, "}"
  loc_C36DDA: PopAdLdVar
  loc_C36DDB: FLdPr Me
  loc_C36DDE: MemLdRfVar from_stack_1.global_60
  loc_C36DE1: LdPrVar
  loc_C36DE3: LateMemCall
  loc_C36DE9: LitVarStr var_94, ".DatosMunicipio {"
  loc_C36DEE: PopAdLdVar
  loc_C36DEF: FLdPr Me
  loc_C36DF2: MemLdRfVar from_stack_1.global_60
  loc_C36DF5: LdPrVar
  loc_C36DF7: LateMemCall
  loc_C36DFD: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C36E02: PopAdLdVar
  loc_C36E03: FLdPr Me
  loc_C36E06: MemLdRfVar from_stack_1.global_60
  loc_C36E09: LdPrVar
  loc_C36E0B: LateMemCall
  loc_C36E11: LitVarStr var_94, " font-size: 9px;"
  loc_C36E16: PopAdLdVar
  loc_C36E17: FLdPr Me
  loc_C36E1A: MemLdRfVar from_stack_1.global_60
  loc_C36E1D: LdPrVar
  loc_C36E1F: LateMemCall
  loc_C36E25: LitVarStr var_94, "}"
  loc_C36E2A: PopAdLdVar
  loc_C36E2B: FLdPr Me
  loc_C36E2E: MemLdRfVar from_stack_1.global_60
  loc_C36E31: LdPrVar
  loc_C36E33: LateMemCall
  loc_C36E39: LitVarStr var_94, ".Totales {"
  loc_C36E3E: PopAdLdVar
  loc_C36E3F: FLdPr Me
  loc_C36E42: MemLdRfVar from_stack_1.global_60
  loc_C36E45: LdPrVar
  loc_C36E47: LateMemCall
  loc_C36E4D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C36E52: PopAdLdVar
  loc_C36E53: FLdPr Me
  loc_C36E56: MemLdRfVar from_stack_1.global_60
  loc_C36E59: LdPrVar
  loc_C36E5B: LateMemCall
  loc_C36E61: LitVarStr var_94, " font-size: 13px;"
  loc_C36E66: PopAdLdVar
  loc_C36E67: FLdPr Me
  loc_C36E6A: MemLdRfVar from_stack_1.global_60
  loc_C36E6D: LdPrVar
  loc_C36E6F: LateMemCall
  loc_C36E75: LitVarStr var_94, " vertical-align: top;"
  loc_C36E7A: PopAdLdVar
  loc_C36E7B: FLdPr Me
  loc_C36E7E: MemLdRfVar from_stack_1.global_60
  loc_C36E81: LdPrVar
  loc_C36E83: LateMemCall
  loc_C36E89: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C36E8E: PopAdLdVar
  loc_C36E8F: FLdPr Me
  loc_C36E92: MemLdRfVar from_stack_1.global_60
  loc_C36E95: LdPrVar
  loc_C36E97: LateMemCall
  loc_C36E9D: LitVarStr var_94, " font-weight: bold;"
  loc_C36EA2: PopAdLdVar
  loc_C36EA3: FLdPr Me
  loc_C36EA6: MemLdRfVar from_stack_1.global_60
  loc_C36EA9: LdPrVar
  loc_C36EAB: LateMemCall
  loc_C36EB1: LitVarStr var_94, " padding-right: 1px;"
  loc_C36EB6: PopAdLdVar
  loc_C36EB7: FLdPr Me
  loc_C36EBA: MemLdRfVar from_stack_1.global_60
  loc_C36EBD: LdPrVar
  loc_C36EBF: LateMemCall
  loc_C36EC5: LitVarStr var_94, "}"
  loc_C36ECA: PopAdLdVar
  loc_C36ECB: FLdPr Me
  loc_C36ECE: MemLdRfVar from_stack_1.global_60
  loc_C36ED1: LdPrVar
  loc_C36ED3: LateMemCall
  loc_C36ED9: LitVarStr var_94, ".Total {"
  loc_C36EDE: PopAdLdVar
  loc_C36EDF: FLdPr Me
  loc_C36EE2: MemLdRfVar from_stack_1.global_60
  loc_C36EE5: LdPrVar
  loc_C36EE7: LateMemCall
  loc_C36EED: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C36EF2: PopAdLdVar
  loc_C36EF3: FLdPr Me
  loc_C36EF6: MemLdRfVar from_stack_1.global_60
  loc_C36EF9: LdPrVar
  loc_C36EFB: LateMemCall
  loc_C36F01: LitVarStr var_94, " font-size: 14px;"
  loc_C36F06: PopAdLdVar
  loc_C36F07: FLdPr Me
  loc_C36F0A: MemLdRfVar from_stack_1.global_60
  loc_C36F0D: LdPrVar
  loc_C36F0F: LateMemCall
  loc_C36F15: LitVarStr var_94, " vertical-align: top;"
  loc_C36F1A: PopAdLdVar
  loc_C36F1B: FLdPr Me
  loc_C36F1E: MemLdRfVar from_stack_1.global_60
  loc_C36F21: LdPrVar
  loc_C36F23: LateMemCall
  loc_C36F29: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C36F2E: PopAdLdVar
  loc_C36F2F: FLdPr Me
  loc_C36F32: MemLdRfVar from_stack_1.global_60
  loc_C36F35: LdPrVar
  loc_C36F37: LateMemCall
  loc_C36F3D: LitVarStr var_94, " font-weight: bold;"
  loc_C36F42: PopAdLdVar
  loc_C36F43: FLdPr Me
  loc_C36F46: MemLdRfVar from_stack_1.global_60
  loc_C36F49: LdPrVar
  loc_C36F4B: LateMemCall
  loc_C36F51: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C36F56: PopAdLdVar
  loc_C36F57: FLdPr Me
  loc_C36F5A: MemLdRfVar from_stack_1.global_60
  loc_C36F5D: LdPrVar
  loc_C36F5F: LateMemCall
  loc_C36F65: LitVarStr var_94, "}"
  loc_C36F6A: PopAdLdVar
  loc_C36F6B: FLdPr Me
  loc_C36F6E: MemLdRfVar from_stack_1.global_60
  loc_C36F71: LdPrVar
  loc_C36F73: LateMemCall
  loc_C36F79: LitVarStr var_94, ".CodBar {"
  loc_C36F7E: PopAdLdVar
  loc_C36F7F: FLdPr Me
  loc_C36F82: MemLdRfVar from_stack_1.global_60
  loc_C36F85: LdPrVar
  loc_C36F87: LateMemCall
  loc_C36F8D: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C36F92: PopAdLdVar
  loc_C36F93: FLdPr Me
  loc_C36F96: MemLdRfVar from_stack_1.global_60
  loc_C36F99: LdPrVar
  loc_C36F9B: LateMemCall
  loc_C36FA1: LitVarStr var_94, " font-size: 48px;"
  loc_C36FA6: PopAdLdVar
  loc_C36FA7: FLdPr Me
  loc_C36FAA: MemLdRfVar from_stack_1.global_60
  loc_C36FAD: LdPrVar
  loc_C36FAF: LateMemCall
  loc_C36FB5: LitVarStr var_94, " font-style: normal;"
  loc_C36FBA: PopAdLdVar
  loc_C36FBB: FLdPr Me
  loc_C36FBE: MemLdRfVar from_stack_1.global_60
  loc_C36FC1: LdPrVar
  loc_C36FC3: LateMemCall
  loc_C36FC9: LitVarStr var_94, " line-height: normal;"
  loc_C36FCE: PopAdLdVar
  loc_C36FCF: FLdPr Me
  loc_C36FD2: MemLdRfVar from_stack_1.global_60
  loc_C36FD5: LdPrVar
  loc_C36FD7: LateMemCall
  loc_C36FDD: LitVarStr var_94, " font-weight: normal;"
  loc_C36FE2: PopAdLdVar
  loc_C36FE3: FLdPr Me
  loc_C36FE6: MemLdRfVar from_stack_1.global_60
  loc_C36FE9: LdPrVar
  loc_C36FEB: LateMemCall
  loc_C36FF1: LitVarStr var_94, "}"
  loc_C36FF6: PopAdLdVar
  loc_C36FF7: FLdPr Me
  loc_C36FFA: MemLdRfVar from_stack_1.global_60
  loc_C36FFD: LdPrVar
  loc_C36FFF: LateMemCall
  loc_C37005: LitVarStr var_94, ".CodBarChica {"
  loc_C3700A: PopAdLdVar
  loc_C3700B: FLdPr Me
  loc_C3700E: MemLdRfVar from_stack_1.global_60
  loc_C37011: LdPrVar
  loc_C37013: LateMemCall
  loc_C37019: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C3701E: PopAdLdVar
  loc_C3701F: FLdPr Me
  loc_C37022: MemLdRfVar from_stack_1.global_60
  loc_C37025: LdPrVar
  loc_C37027: LateMemCall
  loc_C3702D: LitVarStr var_94, " font-size: 38px;"
  loc_C37032: PopAdLdVar
  loc_C37033: FLdPr Me
  loc_C37036: MemLdRfVar from_stack_1.global_60
  loc_C37039: LdPrVar
  loc_C3703B: LateMemCall
  loc_C37041: LitVarStr var_94, " font-style: normal;"
  loc_C37046: PopAdLdVar
  loc_C37047: FLdPr Me
  loc_C3704A: MemLdRfVar from_stack_1.global_60
  loc_C3704D: LdPrVar
  loc_C3704F: LateMemCall
  loc_C37055: LitVarStr var_94, " line-height: normal;"
  loc_C3705A: PopAdLdVar
  loc_C3705B: FLdPr Me
  loc_C3705E: MemLdRfVar from_stack_1.global_60
  loc_C37061: LdPrVar
  loc_C37063: LateMemCall
  loc_C37069: LitVarStr var_94, " font-weight: normal;"
  loc_C3706E: PopAdLdVar
  loc_C3706F: FLdPr Me
  loc_C37072: MemLdRfVar from_stack_1.global_60
  loc_C37075: LdPrVar
  loc_C37077: LateMemCall
  loc_C3707D: LitVarStr var_94, "}"
  loc_C37082: PopAdLdVar
  loc_C37083: FLdPr Me
  loc_C37086: MemLdRfVar from_stack_1.global_60
  loc_C37089: LdPrVar
  loc_C3708B: LateMemCall
  loc_C37091: LitVarStr var_94, ".CorreoCelda {"
  loc_C37096: PopAdLdVar
  loc_C37097: FLdPr Me
  loc_C3709A: MemLdRfVar from_stack_1.global_60
  loc_C3709D: LdPrVar
  loc_C3709F: LateMemCall
  loc_C370A5: LitVarStr var_94, " border: 1px solid black;"
  loc_C370AA: PopAdLdVar
  loc_C370AB: FLdPr Me
  loc_C370AE: MemLdRfVar from_stack_1.global_60
  loc_C370B1: LdPrVar
  loc_C370B3: LateMemCall
  loc_C370B9: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C370BE: PopAdLdVar
  loc_C370BF: FLdPr Me
  loc_C370C2: MemLdRfVar from_stack_1.global_60
  loc_C370C5: LdPrVar
  loc_C370C7: LateMemCall
  loc_C370CD: LitVarStr var_94, " font-size: 6px;"
  loc_C370D2: PopAdLdVar
  loc_C370D3: FLdPr Me
  loc_C370D6: MemLdRfVar from_stack_1.global_60
  loc_C370D9: LdPrVar
  loc_C370DB: LateMemCall
  loc_C370E1: LitVarStr var_94, " text-align:center;"
  loc_C370E6: PopAdLdVar
  loc_C370E7: FLdPr Me
  loc_C370EA: MemLdRfVar from_stack_1.global_60
  loc_C370ED: LdPrVar
  loc_C370EF: LateMemCall
  loc_C370F5: LitVarStr var_94, " vertical-align: middle;"
  loc_C370FA: PopAdLdVar
  loc_C370FB: FLdPr Me
  loc_C370FE: MemLdRfVar from_stack_1.global_60
  loc_C37101: LdPrVar
  loc_C37103: LateMemCall
  loc_C37109: LitVarStr var_94, "}"
  loc_C3710E: PopAdLdVar
  loc_C3710F: FLdPr Me
  loc_C37112: MemLdRfVar from_stack_1.global_60
  loc_C37115: LdPrVar
  loc_C37117: LateMemCall
  loc_C3711D: LitVarStr var_94, ".CorreoCeldaFinal {"
  loc_C37122: PopAdLdVar
  loc_C37123: FLdPr Me
  loc_C37126: MemLdRfVar from_stack_1.global_60
  loc_C37129: LdPrVar
  loc_C3712B: LateMemCall
  loc_C37131: LitVarStr var_94, " border:none;"
  loc_C37136: PopAdLdVar
  loc_C37137: FLdPr Me
  loc_C3713A: MemLdRfVar from_stack_1.global_60
  loc_C3713D: LdPrVar
  loc_C3713F: LateMemCall
  loc_C37145: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C3714A: PopAdLdVar
  loc_C3714B: FLdPr Me
  loc_C3714E: MemLdRfVar from_stack_1.global_60
  loc_C37151: LdPrVar
  loc_C37153: LateMemCall
  loc_C37159: LitVarStr var_94, " font-size: 6px;"
  loc_C3715E: PopAdLdVar
  loc_C3715F: FLdPr Me
  loc_C37162: MemLdRfVar from_stack_1.global_60
  loc_C37165: LdPrVar
  loc_C37167: LateMemCall
  loc_C3716D: LitVarStr var_94, " text-align:center;"
  loc_C37172: PopAdLdVar
  loc_C37173: FLdPr Me
  loc_C37176: MemLdRfVar from_stack_1.global_60
  loc_C37179: LdPrVar
  loc_C3717B: LateMemCall
  loc_C37181: LitVarStr var_94, " vertical-align: middle;"
  loc_C37186: PopAdLdVar
  loc_C37187: FLdPr Me
  loc_C3718A: MemLdRfVar from_stack_1.global_60
  loc_C3718D: LdPrVar
  loc_C3718F: LateMemCall
  loc_C37195: LitVarStr var_94, "}"
  loc_C3719A: PopAdLdVar
  loc_C3719B: FLdPr Me
  loc_C3719E: MemLdRfVar from_stack_1.global_60
  loc_C371A1: LdPrVar
  loc_C371A3: LateMemCall
  loc_C371A9: LitVarStr var_94, ".CorreoTabla {"
  loc_C371AE: PopAdLdVar
  loc_C371AF: FLdPr Me
  loc_C371B2: MemLdRfVar from_stack_1.global_60
  loc_C371B5: LdPrVar
  loc_C371B7: LateMemCall
  loc_C371BD: LitVarStr var_94, " border:none;"
  loc_C371C2: PopAdLdVar
  loc_C371C3: FLdPr Me
  loc_C371C6: MemLdRfVar from_stack_1.global_60
  loc_C371C9: LdPrVar
  loc_C371CB: LateMemCall
  loc_C371D1: LitVarStr var_94, " border-collapse:collapse;"
  loc_C371D6: PopAdLdVar
  loc_C371D7: FLdPr Me
  loc_C371DA: MemLdRfVar from_stack_1.global_60
  loc_C371DD: LdPrVar
  loc_C371DF: LateMemCall
  loc_C371E5: LitVarStr var_94, "}"
  loc_C371EA: PopAdLdVar
  loc_C371EB: FLdPr Me
  loc_C371EE: MemLdRfVar from_stack_1.global_60
  loc_C371F1: LdPrVar
  loc_C371F3: LateMemCall
  loc_C371F9: LitVarStr var_94, ".Gina {"
  loc_C371FE: PopAdLdVar
  loc_C371FF: FLdPr Me
  loc_C37202: MemLdRfVar from_stack_1.global_60
  loc_C37205: LdPrVar
  loc_C37207: LateMemCall
  loc_C3720D: LitVarStr var_94, " float:right;"
  loc_C37212: PopAdLdVar
  loc_C37213: FLdPr Me
  loc_C37216: MemLdRfVar from_stack_1.global_60
  loc_C37219: LdPrVar
  loc_C3721B: LateMemCall
  loc_C37221: LitVarStr var_94, " clear:right;"
  loc_C37226: PopAdLdVar
  loc_C37227: FLdPr Me
  loc_C3722A: MemLdRfVar from_stack_1.global_60
  loc_C3722D: LdPrVar
  loc_C3722F: LateMemCall
  loc_C37235: LitVarStr var_94, " margin:10px;"
  loc_C3723A: PopAdLdVar
  loc_C3723B: FLdPr Me
  loc_C3723E: MemLdRfVar from_stack_1.global_60
  loc_C37241: LdPrVar
  loc_C37243: LateMemCall
  loc_C37249: LitVarStr var_94, " vertical-align:bottom"
  loc_C3724E: PopAdLdVar
  loc_C3724F: FLdPr Me
  loc_C37252: MemLdRfVar from_stack_1.global_60
  loc_C37255: LdPrVar
  loc_C37257: LateMemCall
  loc_C3725D: LitVarStr var_94, "}"
  loc_C37262: PopAdLdVar
  loc_C37263: FLdPr Me
  loc_C37266: MemLdRfVar from_stack_1.global_60
  loc_C37269: LdPrVar
  loc_C3726B: LateMemCall
  loc_C37271: LitVarStr var_94, ".NoBordeAbajo {"
  loc_C37276: PopAdLdVar
  loc_C37277: FLdPr Me
  loc_C3727A: MemLdRfVar from_stack_1.global_60
  loc_C3727D: LdPrVar
  loc_C3727F: LateMemCall
  loc_C37285: LitVarStr var_94, " border-bottom:none"
  loc_C3728A: PopAdLdVar
  loc_C3728B: FLdPr Me
  loc_C3728E: MemLdRfVar from_stack_1.global_60
  loc_C37291: LdPrVar
  loc_C37293: LateMemCall
  loc_C37299: LitVarStr var_94, "}"
  loc_C3729E: PopAdLdVar
  loc_C3729F: FLdPr Me
  loc_C372A2: MemLdRfVar from_stack_1.global_60
  loc_C372A5: LdPrVar
  loc_C372A7: LateMemCall
  loc_C372AD: LitVarStr var_94, ".NoBordeArriba {"
  loc_C372B2: PopAdLdVar
  loc_C372B3: FLdPr Me
  loc_C372B6: MemLdRfVar from_stack_1.global_60
  loc_C372B9: LdPrVar
  loc_C372BB: LateMemCall
  loc_C372C1: LitVarStr var_94, " border-top:none"
  loc_C372C6: PopAdLdVar
  loc_C372C7: FLdPr Me
  loc_C372CA: MemLdRfVar from_stack_1.global_60
  loc_C372CD: LdPrVar
  loc_C372CF: LateMemCall
  loc_C372D5: LitVarStr var_94, "}"
  loc_C372DA: PopAdLdVar
  loc_C372DB: FLdPr Me
  loc_C372DE: MemLdRfVar from_stack_1.global_60
  loc_C372E1: LdPrVar
  loc_C372E3: LateMemCall
  loc_C372E9: LitVarStr var_94, "-->"
  loc_C372EE: PopAdLdVar
  loc_C372EF: FLdPr Me
  loc_C372F2: MemLdRfVar from_stack_1.global_60
  loc_C372F5: LdPrVar
  loc_C372F7: LateMemCall
  loc_C372FD: LitVarStr var_94, "</style>"
  loc_C37302: PopAdLdVar
  loc_C37303: FLdPr Me
  loc_C37306: MemLdRfVar from_stack_1.global_60
  loc_C37309: LdPrVar
  loc_C3730B: LateMemCall
  loc_C37311: LitI4 0
  loc_C37316: FStStrCopy var_AC
  loc_C37319: FLdRfVar var_AC
  loc_C3731C: LitI4 0
  loc_C37321: FStStrCopy var_A8
  loc_C37324: FLdRfVar var_A8
  loc_C37327: LitI2_Byte 0
  loc_C37329: PopTmpLdAd2 var_BE
  loc_C3732C: FLdPr Me
  loc_C3732F: MemLdRfVar from_stack_1.global_60
  loc_C37332: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C37337: FFreeStr var_A8 = ""
  loc_C3733E: ExitProcHresult
End Function

Private Function Proc_325_25_BE7014() 'BE7014
  'Data Table: 4CA014
  loc_BE683C: LitVarStr var_94, "<table align=""center"" height=""350"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_BE6841: PopAdLdVar
  loc_BE6842: FLdPr Me
  loc_BE6845: MemLdRfVar from_stack_1.global_60
  loc_BE6848: LdPrVar
  loc_BE684A: LateMemCall
  loc_BE6850: LitVarStr var_94, "  <tr valign=""top""><td height=""350"">"
  loc_BE6855: PopAdLdVar
  loc_BE6856: FLdPr Me
  loc_BE6859: MemLdRfVar from_stack_1.global_60
  loc_BE685C: LdPrVar
  loc_BE685E: LateMemCall
  loc_BE6864: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_BE6869: PopAdLdVar
  loc_BE686A: FLdPr Me
  loc_BE686D: MemLdRfVar from_stack_1.global_60
  loc_BE6870: LdPrVar
  loc_BE6872: LateMemCall
  loc_BE6878: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE687D: PopAdLdVar
  loc_BE687E: FLdPr Me
  loc_BE6881: MemLdRfVar from_stack_1.global_60
  loc_BE6884: LdPrVar
  loc_BE6886: LateMemCall
  loc_BE688C: LitStr "        <td colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio MargIzq"" style=""padding-top: 1px;padding-bottom: 1px""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE688F: LitI2_Byte &H5F
  loc_BE6891: CStrUI1
  loc_BE6893: FStStrNoPop var_A8
  loc_BE6896: ConcatStr
  loc_BE6897: FStStrNoPop var_AC
  loc_BE689A: LitStr """ height="""
  loc_BE689D: ConcatStr
  loc_BE689E: FStStrNoPop var_B0
  loc_BE68A1: LitI2_Byte &H3C
  loc_BE68A3: CStrUI1
  loc_BE68A5: FStStrNoPop var_B4
  loc_BE68A8: ConcatStr
  loc_BE68A9: FStStrNoPop var_B8
  loc_BE68AC: LitStr """ align=""left""><span class=""NombreMunicipio"">"
  loc_BE68AF: ConcatStr
  loc_BE68B0: FStStrNoPop var_BC
  loc_BE68B3: LitStr "Municipalidad de Guaymallén"
  loc_BE68B6: ConcatStr
  loc_BE68B7: FStStrNoPop var_C0
  loc_BE68BA: LitStr "</span><br>"
  loc_BE68BD: ConcatStr
  loc_BE68BE: CVarStr var_D0
  loc_BE68C1: PopAdLdVar
  loc_BE68C2: FLdPr Me
  loc_BE68C5: MemLdRfVar from_stack_1.global_60
  loc_BE68C8: LdPrVar
  loc_BE68CA: LateMemCall
  loc_BE68D0: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BE68E1: FFree1Var var_D0 = ""
  loc_BE68E4: LitStr "          "
  loc_BE68E7: LitStr "Dirección de Rentas"
  loc_BE68EA: ConcatStr
  loc_BE68EB: FStStrNoPop var_A8
  loc_BE68EE: LitStr "<br>"
  loc_BE68F1: ConcatStr
  loc_BE68F2: CVarStr var_D0
  loc_BE68F5: PopAdLdVar
  loc_BE68F6: FLdPr Me
  loc_BE68F9: MemLdRfVar from_stack_1.global_60
  loc_BE68FC: LdPrVar
  loc_BE68FE: LateMemCall
  loc_BE6904: FFree1Str var_A8
  loc_BE6907: FFree1Var var_D0 = ""
  loc_BE690A: LitStr "          "
  loc_BE690D: LitStr "Libertad 720 - Villa Nueva"
  loc_BE6910: ConcatStr
  loc_BE6911: FStStrNoPop var_A8
  loc_BE6914: LitStr "<br>"
  loc_BE6917: ConcatStr
  loc_BE6918: CVarStr var_D0
  loc_BE691B: PopAdLdVar
  loc_BE691C: FLdPr Me
  loc_BE691F: MemLdRfVar from_stack_1.global_60
  loc_BE6922: LdPrVar
  loc_BE6924: LateMemCall
  loc_BE692A: FFree1Str var_A8
  loc_BE692D: FFree1Var var_D0 = ""
  loc_BE6930: LitStr "          "
  loc_BE6933: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_BE6936: ConcatStr
  loc_BE6937: FStStrNoPop var_A8
  loc_BE693A: LitStr "<br>"
  loc_BE693D: ConcatStr
  loc_BE693E: CVarStr var_D0
  loc_BE6941: PopAdLdVar
  loc_BE6942: FLdPr Me
  loc_BE6945: MemLdRfVar from_stack_1.global_60
  loc_BE6948: LdPrVar
  loc_BE694A: LateMemCall
  loc_BE6950: FFree1Str var_A8
  loc_BE6953: FFree1Var var_D0 = ""
  loc_BE6956: LitStr "          "
  loc_BE6959: LitStr "C.U.I.T.: "
  loc_BE695C: ConcatStr
  loc_BE695D: FStStrNoPop var_A8
  loc_BE6960: LitStr "30-99914707-7"
  loc_BE6963: ConcatStr
  loc_BE6964: FStStrNoPop var_AC
  loc_BE6967: LitStr "</td>"
  loc_BE696A: ConcatStr
  loc_BE696B: CVarStr var_D0
  loc_BE696E: PopAdLdVar
  loc_BE696F: FLdPr Me
  loc_BE6972: MemLdRfVar from_stack_1.global_60
  loc_BE6975: LdPrVar
  loc_BE6977: LateMemCall
  loc_BE697D: FFreeStr var_A8 = ""
  loc_BE6984: FFree1Var var_D0 = ""
  loc_BE6987: LitVarStr var_94, "        <td class=""NoBordeAbajo"" width=""200"" height=""31"" align=""center"" valign=""middle"">"
  loc_BE698C: PopAdLdVar
  loc_BE698D: FLdPr Me
  loc_BE6990: MemLdRfVar from_stack_1.global_60
  loc_BE6993: LdPrVar
  loc_BE6995: LateMemCall
  loc_BE699B: LitVarStr var_94, "        <div>&nbsp;</div>"
  loc_BE69A0: PopAdLdVar
  loc_BE69A1: FLdPr Me
  loc_BE69A4: MemLdRfVar from_stack_1.global_60
  loc_BE69A7: LdPrVar
  loc_BE69A9: LateMemCall
  loc_BE69AF: LitVarStr var_94, "        <table width=""42" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""0"" class=""CorreoTabla"" >"
  loc_BE69B4: PopAdLdVar
  loc_BE69B5: FLdPr Me
  loc_BE69B8: MemLdRfVar from_stack_1.global_60
  loc_BE69BB: LdPrVar
  loc_BE69BD: LateMemCall
  loc_BE69C3: LitVarStr var_94, "          <tr>"
  loc_BE69C8: PopAdLdVar
  loc_BE69C9: FLdPr Me
  loc_BE69CC: MemLdRfVar from_stack_1.global_60
  loc_BE69CF: LdPrVar
  loc_BE69D1: LateMemCall
  loc_BE69D7: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-right:none"">C<br>O<br>R<br>R</td>"
  loc_BE69DC: PopAdLdVar
  loc_BE69DD: FLdPr Me
  loc_BE69E0: MemLdRfVar from_stack_1.global_60
  loc_BE69E3: LdPrVar
  loc_BE69E5: LateMemCall
  loc_BE69EB: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-left:none"">O<br>F<br>I<br>C</td>"
  loc_BE69F0: PopAdLdVar
  loc_BE69F1: FLdPr Me
  loc_BE69F4: MemLdRfVar from_stack_1.global_60
  loc_BE69F7: LdPrVar
  loc_BE69F9: LateMemCall
  loc_BE69FF: LitVarStr var_94, "            <td class=""CorreoCelda"">FRANQUEO A PAGAR</td>"
  loc_BE6A04: PopAdLdVar
  loc_BE6A05: FLdPr Me
  loc_BE6A08: MemLdRfVar from_stack_1.global_60
  loc_BE6A0B: LdPrVar
  loc_BE6A0D: LateMemCall
  loc_BE6A13: LitVarStr var_94, "          </tr>"
  loc_BE6A18: PopAdLdVar
  loc_BE6A19: FLdPr Me
  loc_BE6A1C: MemLdRfVar from_stack_1.global_60
  loc_BE6A1F: LdPrVar
  loc_BE6A21: LateMemCall
  loc_BE6A27: LitVarStr var_94, "          <tr>"
  loc_BE6A2C: PopAdLdVar
  loc_BE6A2D: FLdPr Me
  loc_BE6A30: MemLdRfVar from_stack_1.global_60
  loc_BE6A33: LdPrVar
  loc_BE6A35: LateMemCall
  loc_BE6A3B: LitVarStr var_94, "            <td class=""CorreoCelda"">CTA CTE N&deg; 17438</td>"
  loc_BE6A40: PopAdLdVar
  loc_BE6A41: FLdPr Me
  loc_BE6A44: MemLdRfVar from_stack_1.global_60
  loc_BE6A47: LdPrVar
  loc_BE6A49: LateMemCall
  loc_BE6A4F: LitVarStr var_94, "          </tr>"
  loc_BE6A54: PopAdLdVar
  loc_BE6A55: FLdPr Me
  loc_BE6A58: MemLdRfVar from_stack_1.global_60
  loc_BE6A5B: LdPrVar
  loc_BE6A5D: LateMemCall
  loc_BE6A63: LitVarStr var_94, "          <tr>"
  loc_BE6A68: PopAdLdVar
  loc_BE6A69: FLdPr Me
  loc_BE6A6C: MemLdRfVar from_stack_1.global_60
  loc_BE6A6F: LdPrVar
  loc_BE6A71: LateMemCall
  loc_BE6A77: LitStr "            <td class=""CorreoCelda"">CUIT: "
  loc_BE6A7A: LitStr "30-99914707-7"
  loc_BE6A7D: ConcatStr
  loc_BE6A7E: FStStrNoPop var_A8
  loc_BE6A81: LitStr "</td>"
  loc_BE6A84: ConcatStr
  loc_BE6A85: CVarStr var_D0
  loc_BE6A88: PopAdLdVar
  loc_BE6A89: FLdPr Me
  loc_BE6A8C: MemLdRfVar from_stack_1.global_60
  loc_BE6A8F: LdPrVar
  loc_BE6A91: LateMemCall
  loc_BE6A97: FFree1Str var_A8
  loc_BE6A9A: FFree1Var var_D0 = ""
  loc_BE6A9D: LitVarStr var_94, "          </tr>"
  loc_BE6AA2: PopAdLdVar
  loc_BE6AA3: FLdPr Me
  loc_BE6AA6: MemLdRfVar from_stack_1.global_60
  loc_BE6AA9: LdPrVar
  loc_BE6AAB: LateMemCall
  loc_BE6AB1: LitVarStr var_94, "          <tr>"
  loc_BE6AB6: PopAdLdVar
  loc_BE6AB7: FLdPr Me
  loc_BE6ABA: MemLdRfVar from_stack_1.global_60
  loc_BE6ABD: LdPrVar
  loc_BE6ABF: LateMemCall
  loc_BE6AC5: LitVarStr var_94, "            <td colspan=""3"" class=""CorreoCeldaFinal"">Devolver a Admisi&oacute;n Mendoza</td>"
  loc_BE6ACA: PopAdLdVar
  loc_BE6ACB: FLdPr Me
  loc_BE6ACE: MemLdRfVar from_stack_1.global_60
  loc_BE6AD1: LdPrVar
  loc_BE6AD3: LateMemCall
  loc_BE6AD9: LitVarStr var_94, "            </tr>"
  loc_BE6ADE: PopAdLdVar
  loc_BE6ADF: FLdPr Me
  loc_BE6AE2: MemLdRfVar from_stack_1.global_60
  loc_BE6AE5: LdPrVar
  loc_BE6AE7: LateMemCall
  loc_BE6AED: LitVarStr var_94, "        </table>"
  loc_BE6AF2: PopAdLdVar
  loc_BE6AF3: FLdPr Me
  loc_BE6AF6: MemLdRfVar from_stack_1.global_60
  loc_BE6AF9: LdPrVar
  loc_BE6AFB: LateMemCall
  loc_BE6B01: LitVarStr var_94, "        </td>"
  loc_BE6B06: PopAdLdVar
  loc_BE6B07: FLdPr Me
  loc_BE6B0A: MemLdRfVar from_stack_1.global_60
  loc_BE6B0D: LdPrVar
  loc_BE6B0F: LateMemCall
  loc_BE6B15: LitVarStr var_94, "      </tr>"
  loc_BE6B1A: PopAdLdVar
  loc_BE6B1B: FLdPr Me
  loc_BE6B1E: MemLdRfVar from_stack_1.global_60
  loc_BE6B21: LdPrVar
  loc_BE6B23: LateMemCall
  loc_BE6B29: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE6B2E: PopAdLdVar
  loc_BE6B2F: FLdPr Me
  loc_BE6B32: MemLdRfVar from_stack_1.global_60
  loc_BE6B35: LdPrVar
  loc_BE6B37: LateMemCall
  loc_BE6B3D: LitVarStr var_94, "        <td colspan=""4"" align=""center"" valign=""middle"" class=""NombreMunicipio"">DERECHOS DE COMERCIO</td>"
  loc_BE6B42: PopAdLdVar
  loc_BE6B43: FLdPr Me
  loc_BE6B46: MemLdRfVar from_stack_1.global_60
  loc_BE6B49: LdPrVar
  loc_BE6B4B: LateMemCall
  loc_BE6B51: LitVarStr var_94, "        <td width=""24"" align=""right"" class=""Encabezado MargDer""><strong>Orden:</strong></td>"
  loc_BE6B56: PopAdLdVar
  loc_BE6B57: FLdPr Me
  loc_BE6B5A: MemLdRfVar from_stack_1.global_60
  loc_BE6B5D: LdPrVar
  loc_BE6B5F: LateMemCall
  loc_BE6B65: FLdPr Me
  loc_BE6B68: MemLdStr global_96
  loc_BE6B6B: FLdPr Me
  loc_BE6B6E: MemLdStr global_92
  loc_BE6B71: AryLock
  loc_BE6B74: Ary1LdRf
  loc_BE6B75: FStR4 var_D8
  loc_BE6B78: LitStr "        <td width=""28"" align=""left"" valign=""top"" class=""Normal MargIzq"">"
  loc_BE6B7B: FMemLdR4 var_D8(84)
  loc_BE6B80: ConcatStr
  loc_BE6B81: FStStrNoPop var_A8
  loc_BE6B84: LitStr "</td>"
  loc_BE6B87: ConcatStr
  loc_BE6B88: CVarStr var_D0
  loc_BE6B8B: PopAdLdVar
  loc_BE6B8C: FLdPr Me
  loc_BE6B8F: MemLdRfVar from_stack_1.global_60
  loc_BE6B92: LdPrVar
  loc_BE6B94: LateMemCall
  loc_BE6B9A: FFree1Str var_A8
  loc_BE6B9D: FFree1Var var_D0 = ""
  loc_BE6BA0: LitVarStr var_94, "        <td rowspan=""2"" class=""NoBordeArriba"">"
  loc_BE6BA5: PopAdLdVar
  loc_BE6BA6: FLdPr Me
  loc_BE6BA9: MemLdRfVar from_stack_1.global_60
  loc_BE6BAC: LdPrVar
  loc_BE6BAE: LateMemCall
  loc_BE6BB4: LitVarStr var_94, "         <table align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BE6BB9: PopAdLdVar
  loc_BE6BBA: FLdPr Me
  loc_BE6BBD: MemLdRfVar from_stack_1.global_60
  loc_BE6BC0: LdPrVar
  loc_BE6BC2: LateMemCall
  loc_BE6BC8: LitStr "          <tr><td valign=""bottom"" align=""center"" class=""CodBarChica"">"
  loc_BE6BCB: LitI4 1
  loc_BE6BD0: FMemLdR4 var_D8(104)
  loc_BE6BD5: Ary1LdI4
  loc_BE6BD6: ConcatStr
  loc_BE6BD7: FStStrNoPop var_A8
  loc_BE6BDA: LitStr "</td></tr>"
  loc_BE6BDD: ConcatStr
  loc_BE6BDE: CVarStr var_D0
  loc_BE6BE1: PopAdLdVar
  loc_BE6BE2: FLdPr Me
  loc_BE6BE5: MemLdRfVar from_stack_1.global_60
  loc_BE6BE8: LdPrVar
  loc_BE6BEA: LateMemCall
  loc_BE6BF0: FFree1Str var_A8
  loc_BE6BF3: FFree1Var var_D0 = ""
  loc_BE6BF6: LitStr "          <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BE6BF9: LitI4 0
  loc_BE6BFE: FMemLdR4 var_D8(104)
  loc_BE6C03: Ary1LdI4
  loc_BE6C04: ConcatStr
  loc_BE6C05: FStStrNoPop var_A8
  loc_BE6C08: LitStr "</td></tr>"
  loc_BE6C0B: ConcatStr
  loc_BE6C0C: CVarStr var_D0
  loc_BE6C0F: PopAdLdVar
  loc_BE6C10: FLdPr Me
  loc_BE6C13: MemLdRfVar from_stack_1.global_60
  loc_BE6C16: LdPrVar
  loc_BE6C18: LateMemCall
  loc_BE6C1E: FFree1Str var_A8
  loc_BE6C21: FFree1Var var_D0 = ""
  loc_BE6C24: LitVarStr var_94, "        </table></td>"
  loc_BE6C29: PopAdLdVar
  loc_BE6C2A: FLdPr Me
  loc_BE6C2D: MemLdRfVar from_stack_1.global_60
  loc_BE6C30: LdPrVar
  loc_BE6C32: LateMemCall
  loc_BE6C38: LitVarStr var_94, "      </tr>"
  loc_BE6C3D: PopAdLdVar
  loc_BE6C3E: FLdPr Me
  loc_BE6C41: MemLdRfVar from_stack_1.global_60
  loc_BE6C44: LdPrVar
  loc_BE6C46: LateMemCall
  loc_BE6C4C: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE6C51: PopAdLdVar
  loc_BE6C52: FLdPr Me
  loc_BE6C55: MemLdRfVar from_stack_1.global_60
  loc_BE6C58: LdPrVar
  loc_BE6C5A: LateMemCall
  loc_BE6C60: LitVarStr var_94, "        <td width=""51"" align=""right"" class=""Encabezado MargDer""><strong>Cuenta:</strong></td>"
  loc_BE6C65: PopAdLdVar
  loc_BE6C66: FLdPr Me
  loc_BE6C69: MemLdRfVar from_stack_1.global_60
  loc_BE6C6C: LdPrVar
  loc_BE6C6E: LateMemCall
  loc_BE6C74: LitStr "        <td width=""40"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE6C77: FMemLdR4 var_D8(76)
  loc_BE6C7C: ConcatStr
  loc_BE6C7D: FStStrNoPop var_A8
  loc_BE6C80: LitStr "</strong></td>"
  loc_BE6C83: ConcatStr
  loc_BE6C84: CVarStr var_D0
  loc_BE6C87: PopAdLdVar
  loc_BE6C88: FLdPr Me
  loc_BE6C8B: MemLdRfVar from_stack_1.global_60
  loc_BE6C8E: LdPrVar
  loc_BE6C90: LateMemCall
  loc_BE6C96: FFree1Str var_A8
  loc_BE6C99: FFree1Var var_D0 = ""
  loc_BE6C9C: LitVarStr var_94, "        <td width=""43"" align=""right"" class=""Encabezado MargDer""><strong>Titular:</strong></td>"
  loc_BE6CA1: PopAdLdVar
  loc_BE6CA2: FLdPr Me
  loc_BE6CA5: MemLdRfVar from_stack_1.global_60
  loc_BE6CA8: LdPrVar
  loc_BE6CAA: LateMemCall
  loc_BE6CB0: LitStr "        <td height=""18"" colspan=""3"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BE6CB3: FMemLdR4 var_D8(4)
  loc_BE6CB8: ConcatStr
  loc_BE6CB9: FStStrNoPop var_A8
  loc_BE6CBC: LitStr "</strong>"
  loc_BE6CBF: ConcatStr
  loc_BE6CC0: CVarStr var_D0
  loc_BE6CC3: PopAdLdVar
  loc_BE6CC4: FLdPr Me
  loc_BE6CC7: MemLdRfVar from_stack_1.global_60
  loc_BE6CCA: LdPrVar
  loc_BE6CCC: LateMemCall
  loc_BE6CD2: FFree1Str var_A8
  loc_BE6CD5: FFree1Var var_D0 = ""
  loc_BE6CD8: FMemLdRf 0
  loc_BE6CDD: CVarRef
  loc_BE6CE2: FLdRfVar var_D0
  loc_BE6CE5: ImpAdCallFPR4  = Trim()
  loc_BE6CEA: FLdRfVar var_D0
  loc_BE6CED: LitVarStr var_A4, vbNullString
  loc_BE6CF2: HardType
  loc_BE6CF3: NeVarBool
  loc_BE6CF5: FFree1Var var_D0 = ""
  loc_BE6CF8: BranchF loc_BE6D23
  loc_BE6CFB: LitStr "        <br>(Poseedor: "
  loc_BE6CFE: FMemLdR4 var_D8(8)
  loc_BE6D03: ConcatStr
  loc_BE6D04: FStStrNoPop var_A8
  loc_BE6D07: LitStr ")"
  loc_BE6D0A: ConcatStr
  loc_BE6D0B: CVarStr var_D0
  loc_BE6D0E: PopAdLdVar
  loc_BE6D0F: FLdPr Me
  loc_BE6D12: MemLdRfVar from_stack_1.global_60
  loc_BE6D15: LdPrVar
  loc_BE6D17: LateMemCall
  loc_BE6D1D: FFree1Str var_A8
  loc_BE6D20: FFree1Var var_D0 = ""
  loc_BE6D23: LitVarStr var_94, "        </td>"
  loc_BE6D28: PopAdLdVar
  loc_BE6D29: FLdPr Me
  loc_BE6D2C: MemLdRfVar from_stack_1.global_60
  loc_BE6D2F: LdPrVar
  loc_BE6D31: LateMemCall
  loc_BE6D37: LitVarStr var_94, "      </tr>"
  loc_BE6D3C: PopAdLdVar
  loc_BE6D3D: FLdPr Me
  loc_BE6D40: MemLdRfVar from_stack_1.global_60
  loc_BE6D43: LdPrVar
  loc_BE6D45: LateMemCall
  loc_BE6D4B: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BE6D50: PopAdLdVar
  loc_BE6D51: FLdPr Me
  loc_BE6D54: MemLdRfVar from_stack_1.global_60
  loc_BE6D57: LdPrVar
  loc_BE6D59: LateMemCall
  loc_BE6D5F: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Postal:</strong></td>"
  loc_BE6D64: PopAdLdVar
  loc_BE6D65: FLdPr Me
  loc_BE6D68: MemLdRfVar from_stack_1.global_60
  loc_BE6D6B: LdPrVar
  loc_BE6D6D: LateMemCall
  loc_BE6D73: LitStr "        <td colspan=""6"" class=""DomiPostal"">Calle: "
  loc_BE6D76: FMemLdR4 var_D8(12)
  loc_BE6D7B: ConcatStr
  loc_BE6D7C: FStStrNoPop var_A8
  loc_BE6D7F: LitStr " Nro: "
  loc_BE6D82: ConcatStr
  loc_BE6D83: FStStrNoPop var_AC
  loc_BE6D86: FMemLdR4 var_D8(16)
  loc_BE6D8B: ConcatStr
  loc_BE6D8C: CVarStr var_D0
  loc_BE6D8F: PopAdLdVar
  loc_BE6D90: FLdPr Me
  loc_BE6D93: MemLdRfVar from_stack_1.global_60
  loc_BE6D96: LdPrVar
  loc_BE6D98: LateMemCall
  loc_BE6D9E: FFreeStr var_A8 = ""
  loc_BE6DA5: FFree1Var var_D0 = ""
  loc_BE6DA8: FMemLdR4 var_D8(20)
  loc_BE6DAD: LitStr vbNullString
  loc_BE6DB0: NeStr
  loc_BE6DB2: BranchF loc_BE6DD3
  loc_BE6DB5: LitStr " Barrio: "
  loc_BE6DB8: FMemLdR4 var_D8(20)
  loc_BE6DBD: ConcatStr
  loc_BE6DBE: CVarStr var_D0
  loc_BE6DC1: PopAdLdVar
  loc_BE6DC2: FLdPr Me
  loc_BE6DC5: MemLdRfVar from_stack_1.global_60
  loc_BE6DC8: LdPrVar
  loc_BE6DCA: LateMemCall
  loc_BE6DD0: FFree1Var var_D0 = ""
  loc_BE6DD3: FMemLdR4 var_D8(24)
  loc_BE6DD8: LitStr vbNullString
  loc_BE6DDB: NeStr
  loc_BE6DDD: BranchF loc_BE6DFE
  loc_BE6DE0: LitStr " Mza: "
  loc_BE6DE3: FMemLdR4 var_D8(24)
  loc_BE6DE8: ConcatStr
  loc_BE6DE9: CVarStr var_D0
  loc_BE6DEC: PopAdLdVar
  loc_BE6DED: FLdPr Me
  loc_BE6DF0: MemLdRfVar from_stack_1.global_60
  loc_BE6DF3: LdPrVar
  loc_BE6DF5: LateMemCall
  loc_BE6DFB: FFree1Var var_D0 = ""
  loc_BE6DFE: FMemLdR4 var_D8(28)
  loc_BE6E03: LitStr vbNullString
  loc_BE6E06: NeStr
  loc_BE6E08: BranchF loc_BE6E29
  loc_BE6E0B: LitStr " Casa: "
  loc_BE6E0E: FMemLdR4 var_D8(28)
  loc_BE6E13: ConcatStr
  loc_BE6E14: CVarStr var_D0
  loc_BE6E17: PopAdLdVar
  loc_BE6E18: FLdPr Me
  loc_BE6E1B: MemLdRfVar from_stack_1.global_60
  loc_BE6E1E: LdPrVar
  loc_BE6E20: LateMemCall
  loc_BE6E26: FFree1Var var_D0 = ""
  loc_BE6E29: FMemLdR4 var_D8(32)
  loc_BE6E2E: LitStr vbNullString
  loc_BE6E31: NeStr
  loc_BE6E33: BranchF loc_BE6E4D
  loc_BE6E36: FMemLdRf 0
  loc_BE6E3B: CDargRef
  loc_BE6E3F: FLdPr Me
  loc_BE6E42: MemLdRfVar from_stack_1.global_60
  loc_BE6E45: LdPrVar
  loc_BE6E47: LateMemCall
  loc_BE6E4D: LitStr "         <br>Loc: "
  loc_BE6E50: FMemLdR4 var_D8(36)
  loc_BE6E55: ConcatStr
  loc_BE6E56: FStStrNoPop var_A8
  loc_BE6E59: LitStr " CP: "
  loc_BE6E5C: ConcatStr
  loc_BE6E5D: FStStrNoPop var_AC
  loc_BE6E60: FMemLdR4 var_D8(40)
  loc_BE6E65: ConcatStr
  loc_BE6E66: FStStrNoPop var_B0
  loc_BE6E69: LitStr "</td>"
  loc_BE6E6C: ConcatStr
  loc_BE6E6D: CVarStr var_D0
  loc_BE6E70: PopAdLdVar
  loc_BE6E71: FLdPr Me
  loc_BE6E74: MemLdRfVar from_stack_1.global_60
  loc_BE6E77: LdPrVar
  loc_BE6E79: LateMemCall
  loc_BE6E7F: FFreeStr var_A8 = "": var_AC = ""
  loc_BE6E88: FFree1Var var_D0 = ""
  loc_BE6E8B: LitVarStr var_94, "      </tr>"
  loc_BE6E90: PopAdLdVar
  loc_BE6E91: FLdPr Me
  loc_BE6E94: MemLdRfVar from_stack_1.global_60
  loc_BE6E97: LdPrVar
  loc_BE6E99: LateMemCall
  loc_BE6E9F: LitVarStr var_94, "        <tr valign=""top"">"
  loc_BE6EA4: PopAdLdVar
  loc_BE6EA5: FLdPr Me
  loc_BE6EA8: MemLdRfVar from_stack_1.global_60
  loc_BE6EAB: LdPrVar
  loc_BE6EAD: LateMemCall
  loc_BE6EB3: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Real:</strong></td>"
  loc_BE6EB8: PopAdLdVar
  loc_BE6EB9: FLdPr Me
  loc_BE6EBC: MemLdRfVar from_stack_1.global_60
  loc_BE6EBF: LdPrVar
  loc_BE6EC1: LateMemCall
  loc_BE6EC7: LitStr "        <td colspan=""6"" class=""DomiReal"">Calle: "
  loc_BE6ECA: FMemLdR4 var_D8(44)
  loc_BE6ECF: ConcatStr
  loc_BE6ED0: FStStrNoPop var_A8
  loc_BE6ED3: LitStr " Nro: "
  loc_BE6ED6: ConcatStr
  loc_BE6ED7: FStStrNoPop var_AC
  loc_BE6EDA: FMemLdR4 var_D8(48)
  loc_BE6EDF: ConcatStr
  loc_BE6EE0: CVarStr var_D0
  loc_BE6EE3: PopAdLdVar
  loc_BE6EE4: FLdPr Me
  loc_BE6EE7: MemLdRfVar from_stack_1.global_60
  loc_BE6EEA: LdPrVar
  loc_BE6EEC: LateMemCall
  loc_BE6EF2: FFreeStr var_A8 = ""
  loc_BE6EF9: FFree1Var var_D0 = ""
  loc_BE6EFC: FMemLdR4 var_D8(52)
  loc_BE6F01: LitStr vbNullString
  loc_BE6F04: NeStr
  loc_BE6F06: BranchF loc_BE6F27
  loc_BE6F09: LitStr " Barrio: "
  loc_BE6F0C: FMemLdR4 var_D8(52)
  loc_BE6F11: ConcatStr
  loc_BE6F12: CVarStr var_D0
  loc_BE6F15: PopAdLdVar
  loc_BE6F16: FLdPr Me
  loc_BE6F19: MemLdRfVar from_stack_1.global_60
  loc_BE6F1C: LdPrVar
  loc_BE6F1E: LateMemCall
  loc_BE6F24: FFree1Var var_D0 = ""
  loc_BE6F27: FMemLdR4 var_D8(56)
  loc_BE6F2C: LitStr vbNullString
  loc_BE6F2F: NeStr
  loc_BE6F31: BranchF loc_BE6F52
  loc_BE6F34: LitStr " Mza: "
  loc_BE6F37: FMemLdR4 var_D8(56)
  loc_BE6F3C: ConcatStr
  loc_BE6F3D: CVarStr var_D0
  loc_BE6F40: PopAdLdVar
  loc_BE6F41: FLdPr Me
  loc_BE6F44: MemLdRfVar from_stack_1.global_60
  loc_BE6F47: LdPrVar
  loc_BE6F49: LateMemCall
  loc_BE6F4F: FFree1Var var_D0 = ""
  loc_BE6F52: FMemLdR4 var_D8(60)
  loc_BE6F57: LitStr vbNullString
  loc_BE6F5A: NeStr
  loc_BE6F5C: BranchF loc_BE6F7D
  loc_BE6F5F: LitStr " Casa: "
  loc_BE6F62: FMemLdR4 var_D8(60)
  loc_BE6F67: ConcatStr
  loc_BE6F68: CVarStr var_D0
  loc_BE6F6B: PopAdLdVar
  loc_BE6F6C: FLdPr Me
  loc_BE6F6F: MemLdRfVar from_stack_1.global_60
  loc_BE6F72: LdPrVar
  loc_BE6F74: LateMemCall
  loc_BE6F7A: FFree1Var var_D0 = ""
  loc_BE6F7D: FMemLdR4 var_D8(64)
  loc_BE6F82: LitStr vbNullString
  loc_BE6F85: NeStr
  loc_BE6F87: BranchF loc_BE6FA1
  loc_BE6F8A: FMemLdRf 0
  loc_BE6F8F: CDargRef
  loc_BE6F93: FLdPr Me
  loc_BE6F96: MemLdRfVar from_stack_1.global_60
  loc_BE6F99: LdPrVar
  loc_BE6F9B: LateMemCall
  loc_BE6FA1: LitStr "         <br>Loc: "
  loc_BE6FA4: FMemLdR4 var_D8(68)
  loc_BE6FA9: ConcatStr
  loc_BE6FAA: FStStrNoPop var_A8
  loc_BE6FAD: LitStr " CP: "
  loc_BE6FB0: ConcatStr
  loc_BE6FB1: FStStrNoPop var_AC
  loc_BE6FB4: FMemLdR4 var_D8(72)
  loc_BE6FB9: ConcatStr
  loc_BE6FBA: FStStrNoPop var_B0
  loc_BE6FBD: LitStr "</td>"
  loc_BE6FC0: ConcatStr
  loc_BE6FC1: CVarStr var_D0
  loc_BE6FC4: PopAdLdVar
  loc_BE6FC5: FLdPr Me
  loc_BE6FC8: MemLdRfVar from_stack_1.global_60
  loc_BE6FCB: LdPrVar
  loc_BE6FCD: LateMemCall
  loc_BE6FD3: FFreeStr var_A8 = "": var_AC = ""
  loc_BE6FDC: FFree1Var var_D0 = ""
  loc_BE6FDF: LitVarStr var_94, "      </tr>"
  loc_BE6FE4: PopAdLdVar
  loc_BE6FE5: FLdPr Me
  loc_BE6FE8: MemLdRfVar from_stack_1.global_60
  loc_BE6FEB: LdPrVar
  loc_BE6FED: LateMemCall
  loc_BE6FF3: LitVarStr var_94, "    </table>"
  loc_BE6FF8: PopAdLdVar
  loc_BE6FF9: FLdPr Me
  loc_BE6FFC: MemLdRfVar from_stack_1.global_60
  loc_BE6FFF: LdPrVar
  loc_BE7001: LateMemCall
  loc_BE7007: LitI4 0
  loc_BE700C: FStR4 var_D8
  loc_BE700F: AryUnlock
  loc_BE7012: ExitProcHresult
End Function

Private Function Proc_325_26_B74B94() 'B74B94
  'Data Table: 4CA014
  loc_B746C0: FLdPr Me
  loc_B746C3: MemLdStr global_96
  loc_B746C6: FLdPr Me
  loc_B746C9: MemLdStr global_92
  loc_B746CC: AryLock
  loc_B746CF: Ary1LdRf
  loc_B746D0: FStR4 var_8C
  loc_B746D3: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B746D8: PopAdLdVar
  loc_B746D9: FLdPr Me
  loc_B746DC: MemLdRfVar from_stack_1.global_60
  loc_B746DF: LdPrVar
  loc_B746E1: LateMemCall
  loc_B746E7: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B746EC: PopAdLdVar
  loc_B746ED: FLdPr Me
  loc_B746F0: MemLdRfVar from_stack_1.global_60
  loc_B746F3: LdPrVar
  loc_B746F5: LateMemCall
  loc_B746FB: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B74700: PopAdLdVar
  loc_B74701: FLdPr Me
  loc_B74704: MemLdRfVar from_stack_1.global_60
  loc_B74707: LdPrVar
  loc_B74709: LateMemCall
  loc_B7470F: FMemLdR4 var_8C(92)
  loc_B74714: CR8Str
  loc_B74716: LitI2_Byte 0
  loc_B74718: CR8I2
  loc_B74719: GtR4
  loc_B7471A: BranchF loc_B74731
  loc_B7471D: LitVarStr var_9C, "      <p>Seg&uacute;n nuestros registros esta cuenta registra deuda. Existen convenientes planes de pago.<br>Evite cobro por v&iacute;a judicial!!!</p>"
  loc_B74722: PopAdLdVar
  loc_B74723: FLdPr Me
  loc_B74726: MemLdRfVar from_stack_1.global_60
  loc_B74729: LdPrVar
  loc_B7472B: LateMemCall
  loc_B74731: LitVarStr var_9C, "      <p><strong>SOLO SU PAGO EN T&Eacute;RMINO NOS PERMITE CUMPLIR</strong><br>"
  loc_B74736: PopAdLdVar
  loc_B74737: FLdPr Me
  loc_B7473A: MemLdRfVar from_stack_1.global_60
  loc_B7473D: LdPrVar
  loc_B7473F: LateMemCall
  loc_B74745: LitStr "        SR. CAJERO:<br><strong>NO COBRAR BOLETO BIMESTRAL DESPU&Eacute;S DEL 31/12/"
  loc_B74748: FLdRfVar var_AE
  loc_B7474B: FLdPr Me
  loc_B7474E: MemLdRfVar from_stack_1.global_80
  loc_B74751: NewIfNullPr clsliquidacion
  loc_B74754: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B74759: FLdI2 var_AE
  loc_B7475C: CStrUI1
  loc_B7475E: FStStrNoPop var_B4
  loc_B74761: ConcatStr
  loc_B74762: FStStrNoPop var_B8
  loc_B74765: LitStr ".<br>"
  loc_B74768: ConcatStr
  loc_B74769: CVarStr var_C8
  loc_B7476C: PopAdLdVar
  loc_B7476D: FLdPr Me
  loc_B74770: MemLdRfVar from_stack_1.global_60
  loc_B74773: LdPrVar
  loc_B74775: LateMemCall
  loc_B7477B: FFreeStr var_B4 = ""
  loc_B74782: FFree1Var var_C8 = ""
  loc_B74785: LitVarStr var_9C, "      <p>Los periodos bimestrales podr&aacute;n pagarse en las Entidades autorizadas hasta la fecha arriba indicada, luego de su vencimiento.<br>"
  loc_B7478A: PopAdLdVar
  loc_B7478B: FLdPr Me
  loc_B7478E: MemLdRfVar from_stack_1.global_60
  loc_B74791: LdPrVar
  loc_B74793: LateMemCall
  loc_B74799: LitVarStr var_9C, "        El recargo por morosidad se liquidar&aacute; en el pr&oacute;ximo periodo.</p>"
  loc_B7479E: PopAdLdVar
  loc_B7479F: FLdPr Me
  loc_B747A2: MemLdRfVar from_stack_1.global_60
  loc_B747A5: LdPrVar
  loc_B747A7: LateMemCall
  loc_B747AD: LitVarStr var_9C, "      <p><strong>SIN TICKET DE CAJA NO ACREDITA PAGO del periodo correspondiente.</strong></p>"
  loc_B747B2: PopAdLdVar
  loc_B747B3: FLdPr Me
  loc_B747B6: MemLdRfVar from_stack_1.global_60
  loc_B747B9: LdPrVar
  loc_B747BB: LateMemCall
  loc_B747C1: LitVarStr var_9C, "    </td>"
  loc_B747C6: PopAdLdVar
  loc_B747C7: FLdPr Me
  loc_B747CA: MemLdRfVar from_stack_1.global_60
  loc_B747CD: LdPrVar
  loc_B747CF: LateMemCall
  loc_B747D5: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B747DA: PopAdLdVar
  loc_B747DB: FLdPr Me
  loc_B747DE: MemLdRfVar from_stack_1.global_60
  loc_B747E1: LdPrVar
  loc_B747E3: LateMemCall
  loc_B747E9: FMemLdR4 var_8C(108)
  loc_B747EE: LitI2_Byte 1
  loc_B747F0: FnUBound
  loc_B747F2: LitI4 0
  loc_B747F7: GtI4
  loc_B747F8: BranchF loc_B74A47
  loc_B747FB: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""0"" cellspacing=""2"" cellpadding=""0"">"
  loc_B74800: PopAdLdVar
  loc_B74801: FLdPr Me
  loc_B74804: MemLdRfVar from_stack_1.global_60
  loc_B74807: LdPrVar
  loc_B74809: LateMemCall
  loc_B7480F: LitVarStr var_9C, "       <caption class=""Rubros""><strong>Detalle de Actividades y Rubros</strong></caption>"
  loc_B74814: PopAdLdVar
  loc_B74815: FLdPr Me
  loc_B74818: MemLdRfVar from_stack_1.global_60
  loc_B7481B: LdPrVar
  loc_B7481D: LateMemCall
  loc_B74823: LitVarStr var_9C, "        <tr class=""EncabezadoRubros"" align=""center"">"
  loc_B74828: PopAdLdVar
  loc_B74829: FLdPr Me
  loc_B7482C: MemLdRfVar from_stack_1.global_60
  loc_B7482F: LdPrVar
  loc_B74831: LateMemCall
  loc_B74837: LitVarStr var_9C, "          <td>Rubro</td>"
  loc_B7483C: PopAdLdVar
  loc_B7483D: FLdPr Me
  loc_B74840: MemLdRfVar from_stack_1.global_60
  loc_B74843: LdPrVar
  loc_B74845: LateMemCall
  loc_B7484B: LitVarStr var_9C, "          <td>Subrubro</td>"
  loc_B74850: PopAdLdVar
  loc_B74851: FLdPr Me
  loc_B74854: MemLdRfVar from_stack_1.global_60
  loc_B74857: LdPrVar
  loc_B74859: LateMemCall
  loc_B7485F: LitVarStr var_9C, "          <td>Categor&iacute;a</td>"
  loc_B74864: PopAdLdVar
  loc_B74865: FLdPr Me
  loc_B74868: MemLdRfVar from_stack_1.global_60
  loc_B7486B: LdPrVar
  loc_B7486D: LateMemCall
  loc_B74873: LitVarStr var_9C, "          <td>Cantidad</td>"
  loc_B74878: PopAdLdVar
  loc_B74879: FLdPr Me
  loc_B7487C: MemLdRfVar from_stack_1.global_60
  loc_B7487F: LdPrVar
  loc_B74881: LateMemCall
  loc_B74887: LitVarStr var_9C, "          <td>Importe</td>"
  loc_B7488C: PopAdLdVar
  loc_B7488D: FLdPr Me
  loc_B74890: MemLdRfVar from_stack_1.global_60
  loc_B74893: LdPrVar
  loc_B74895: LateMemCall
  loc_B7489B: LitVarStr var_9C, "        </tr>"
  loc_B748A0: PopAdLdVar
  loc_B748A1: FLdPr Me
  loc_B748A4: MemLdRfVar from_stack_1.global_60
  loc_B748A7: LdPrVar
  loc_B748A9: LateMemCall
  loc_B748AF: LitI2_Byte 1
  loc_B748B1: FLdPr Me
  loc_B748B4: MemLdRfVar from_stack_1.global_100
  loc_B748B7: FMemLdR4 var_8C(108)
  loc_B748BC: LitI2_Byte 1
  loc_B748BE: FnUBound
  loc_B748C0: CI2I4
  loc_B748C1: ForI2 var_CC
  loc_B748C7: FLdPr Me
  loc_B748CA: MemLdI2 global_100
  loc_B748CD: CI4UI1
  loc_B748CE: FMemLdR4 var_8C(108)
  loc_B748D3: AryLock
  loc_B748D6: Ary1LdRf
  loc_B748D7: FStR4 var_D4
  loc_B748DA: LitVarStr var_9C, "        <tr align=""right"">"
  loc_B748DF: PopAdLdVar
  loc_B748E0: FLdPr Me
  loc_B748E3: MemLdRfVar from_stack_1.global_60
  loc_B748E6: LdPrVar
  loc_B748E8: LateMemCall
  loc_B748EE: LitStr "Rubros"
  loc_B748F1: LitI2_Byte 0
  loc_B748F3: LitI2_Byte 0
  loc_B748F5: LitI2_Byte 0
  loc_B748F7: LitStr "right"
  loc_B748FA: FMemLdR4 var_D4(0)
  loc_B748FF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74904: CVarStr var_C8
  loc_B74907: PopAdLdVar
  loc_B74908: FLdPr Me
  loc_B7490B: MemLdRfVar from_stack_1.global_60
  loc_B7490E: LdPrVar
  loc_B74910: LateMemCall
  loc_B74916: FFree1Var var_C8 = ""
  loc_B74919: LitStr "Rubros"
  loc_B7491C: LitI2_Byte 0
  loc_B7491E: LitI2_Byte 0
  loc_B74920: LitI2_Byte 0
  loc_B74922: LitStr "right"
  loc_B74925: FMemLdR4 var_D4(4)
  loc_B7492A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B7492F: CVarStr var_C8
  loc_B74932: PopAdLdVar
  loc_B74933: FLdPr Me
  loc_B74936: MemLdRfVar from_stack_1.global_60
  loc_B74939: LdPrVar
  loc_B7493B: LateMemCall
  loc_B74941: FFree1Var var_C8 = ""
  loc_B74944: LitStr "Rubros"
  loc_B74947: LitI2_Byte 0
  loc_B74949: LitI2_Byte 0
  loc_B7494B: LitI2_Byte 0
  loc_B7494D: LitStr "right"
  loc_B74950: FMemLdR4 var_D4(12)
  loc_B74955: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B7495A: CVarStr var_C8
  loc_B7495D: PopAdLdVar
  loc_B7495E: FLdPr Me
  loc_B74961: MemLdRfVar from_stack_1.global_60
  loc_B74964: LdPrVar
  loc_B74966: LateMemCall
  loc_B7496C: FFree1Var var_C8 = ""
  loc_B7496F: LitStr "Rubros"
  loc_B74972: LitI2_Byte 0
  loc_B74974: LitI2_Byte 0
  loc_B74976: LitI2_Byte 0
  loc_B74978: LitStr "right"
  loc_B7497B: FMemLdR4 var_D4(16)
  loc_B74980: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B74985: CVarStr var_C8
  loc_B74988: PopAdLdVar
  loc_B74989: FLdPr Me
  loc_B7498C: MemLdRfVar from_stack_1.global_60
  loc_B7498F: LdPrVar
  loc_B74991: LateMemCall
  loc_B74997: FFree1Var var_C8 = ""
  loc_B7499A: LitStr "Rubros"
  loc_B7499D: LitI2_Byte 0
  loc_B7499F: LitI2_Byte 0
  loc_B749A1: LitI2_Byte 0
  loc_B749A3: LitStr "right"
  loc_B749A6: FMemLdR4 var_D4(20)
  loc_B749AB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B749B0: CVarStr var_C8
  loc_B749B3: PopAdLdVar
  loc_B749B4: FLdPr Me
  loc_B749B7: MemLdRfVar from_stack_1.global_60
  loc_B749BA: LdPrVar
  loc_B749BC: LateMemCall
  loc_B749C2: FFree1Var var_C8 = ""
  loc_B749C5: LitVarStr var_9C, "        </tr>"
  loc_B749CA: PopAdLdVar
  loc_B749CB: FLdPr Me
  loc_B749CE: MemLdRfVar from_stack_1.global_60
  loc_B749D1: LdPrVar
  loc_B749D3: LateMemCall
  loc_B749D9: LitI4 0
  loc_B749DE: FStR4 var_D4
  loc_B749E1: AryUnlock
  loc_B749E4: FLdPr Me
  loc_B749E7: MemLdRfVar from_stack_1.global_100
  loc_B749EA: NextI2 var_CC, loc_B748C7
  loc_B749EF: FMemLdI2 var_8C(100)
  loc_B749F4: BranchF loc_B74A33
  loc_B749F7: LitVarStr var_9C, "        <tr align=""right"">"
  loc_B749FC: PopAdLdVar
  loc_B749FD: FLdPr Me
  loc_B74A00: MemLdRfVar from_stack_1.global_60
  loc_B74A03: LdPrVar
  loc_B74A05: LateMemCall
  loc_B74A0B: LitVarStr var_9C, "          <td colspan=""5"" align=""center"" class=""EncabezadoRubros"">Se muestran sólo los 10 primeros.</td>"
  loc_B74A10: PopAdLdVar
  loc_B74A11: FLdPr Me
  loc_B74A14: MemLdRfVar from_stack_1.global_60
  loc_B74A17: LdPrVar
  loc_B74A19: LateMemCall
  loc_B74A1F: LitVarStr var_9C, "        </tr>"
  loc_B74A24: PopAdLdVar
  loc_B74A25: FLdPr Me
  loc_B74A28: MemLdRfVar from_stack_1.global_60
  loc_B74A2B: LdPrVar
  loc_B74A2D: LateMemCall
  loc_B74A33: LitVarStr var_9C, "      </table>"
  loc_B74A38: PopAdLdVar
  loc_B74A39: FLdPr Me
  loc_B74A3C: MemLdRfVar from_stack_1.global_60
  loc_B74A3F: LdPrVar
  loc_B74A41: LateMemCall
  loc_B74A47: LitVarStr var_9C, "      <hr>"
  loc_B74A4C: PopAdLdVar
  loc_B74A4D: FLdPr Me
  loc_B74A50: MemLdRfVar from_stack_1.global_60
  loc_B74A53: LdPrVar
  loc_B74A55: LateMemCall
  loc_B74A5B: LitStr "      <p>Razón Social: <strong>"
  loc_B74A5E: FMemLdR4 var_8C(80)
  loc_B74A63: ConcatStr
  loc_B74A64: FStStrNoPop var_B4
  loc_B74A67: LitStr "</strong></p>"
  loc_B74A6A: ConcatStr
  loc_B74A6B: CVarStr var_C8
  loc_B74A6E: PopAdLdVar
  loc_B74A6F: FLdPr Me
  loc_B74A72: MemLdRfVar from_stack_1.global_60
  loc_B74A75: LdPrVar
  loc_B74A77: LateMemCall
  loc_B74A7D: FFree1Str var_B4
  loc_B74A80: FFree1Var var_C8 = ""
  loc_B74A83: LitVarStr var_9C, "      <p>ENTIDADES AUTORIZADAS PARA EL COBRO:<br>"
  loc_B74A88: PopAdLdVar
  loc_B74A89: FLdPr Me
  loc_B74A8C: MemLdRfVar from_stack_1.global_60
  loc_B74A8F: LdPrVar
  loc_B74A91: LateMemCall
  loc_B74A97: LitVarStr var_9C, "        Bancos: Supervielle/Macro/Credicoop/Nación<br>"
  loc_B74A9C: PopAdLdVar
  loc_B74A9D: FLdPr Me
  loc_B74AA0: MemLdRfVar from_stack_1.global_60
  loc_B74AA3: LdPrVar
  loc_B74AA5: LateMemCall
  loc_B74AAB: LitVarStr var_9C, "        Rapipago - Montemar C&iacute;a. Fiananc. - Pago F&aacute;cil<br>"
  loc_B74AB0: PopAdLdVar
  loc_B74AB1: FLdPr Me
  loc_B74AB4: MemLdRfVar from_stack_1.global_60
  loc_B74AB7: LdPrVar
  loc_B74AB9: LateMemCall
  loc_B74ABF: LitVarStr var_9C, "        Pague en www.pagomiscuentas.com o ingresando a Banelco en pagomiscuentas.com.ar.<br>"
  loc_B74AC4: PopAdLdVar
  loc_B74AC5: FLdPr Me
  loc_B74AC8: MemLdRfVar from_stack_1.global_60
  loc_B74ACB: LdPrVar
  loc_B74ACD: LateMemCall
  loc_B74AD3: LitVarStr var_9C, "        Link Pagos: Pague ingresando a www.linkpagos.com.ar desde un cajero LINK, las 24hs todos los d&iacute;as del a&ntilde;o."
  loc_B74AD8: PopAdLdVar
  loc_B74AD9: FLdPr Me
  loc_B74ADC: MemLdRfVar from_stack_1.global_60
  loc_B74ADF: LdPrVar
  loc_B74AE1: LateMemCall
  loc_B74AE7: LitVarStr var_9C, "        También se puede abonar en E-PAGOS y/o MACRO CLICK ingresando en la pagina web del municipio."
  loc_B74AEC: PopAdLdVar
  loc_B74AED: FLdPr Me
  loc_B74AF0: MemLdRfVar from_stack_1.global_60
  loc_B74AF3: LdPrVar
  loc_B74AF5: LateMemCall
  loc_B74AFB: LitVarStr var_9C, "      </p>"
  loc_B74B00: PopAdLdVar
  loc_B74B01: FLdPr Me
  loc_B74B04: MemLdRfVar from_stack_1.global_60
  loc_B74B07: LdPrVar
  loc_B74B09: LateMemCall
  loc_B74B0F: LitVarStr var_9C, "    </td>"
  loc_B74B14: PopAdLdVar
  loc_B74B15: FLdPr Me
  loc_B74B18: MemLdRfVar from_stack_1.global_60
  loc_B74B1B: LdPrVar
  loc_B74B1D: LateMemCall
  loc_B74B23: LitVarStr var_9C, "  </tr>"
  loc_B74B28: PopAdLdVar
  loc_B74B29: FLdPr Me
  loc_B74B2C: MemLdRfVar from_stack_1.global_60
  loc_B74B2F: LdPrVar
  loc_B74B31: LateMemCall
  loc_B74B37: LitVarStr var_9C, "  </table>"
  loc_B74B3C: PopAdLdVar
  loc_B74B3D: FLdPr Me
  loc_B74B40: MemLdRfVar from_stack_1.global_60
  loc_B74B43: LdPrVar
  loc_B74B45: LateMemCall
  loc_B74B4B: LitVarStr var_9C, "  </td>"
  loc_B74B50: PopAdLdVar
  loc_B74B51: FLdPr Me
  loc_B74B54: MemLdRfVar from_stack_1.global_60
  loc_B74B57: LdPrVar
  loc_B74B59: LateMemCall
  loc_B74B5F: LitVarStr var_9C, "  </tr>"
  loc_B74B64: PopAdLdVar
  loc_B74B65: FLdPr Me
  loc_B74B68: MemLdRfVar from_stack_1.global_60
  loc_B74B6B: LdPrVar
  loc_B74B6D: LateMemCall
  loc_B74B73: LitVarStr var_9C, "</table>"
  loc_B74B78: PopAdLdVar
  loc_B74B79: FLdPr Me
  loc_B74B7C: MemLdRfVar from_stack_1.global_60
  loc_B74B7F: LdPrVar
  loc_B74B81: LateMemCall
  loc_B74B87: LitI4 0
  loc_B74B8C: FStR4 var_8C
  loc_B74B8F: AryUnlock
  loc_B74B92: ExitProcHresult
End Function

Private Function Proc_325_27_BB1124() 'BB1124
  'Data Table: 4CA014
  loc_BB0AB0: LitVarStr var_94, "<table align=""center"" height=""500"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_BB0AB5: PopAdLdVar
  loc_BB0AB6: FLdPr Me
  loc_BB0AB9: MemLdRfVar from_stack_1.global_60
  loc_BB0ABC: LdPrVar
  loc_BB0ABE: LateMemCall
  loc_BB0AC4: FLdPr Me
  loc_BB0AC7: MemLdStr global_96
  loc_BB0ACA: FLdPr Me
  loc_BB0ACD: MemLdStr global_92
  loc_BB0AD0: AryLock
  loc_BB0AD3: Ary1LdRf
  loc_BB0AD4: FStR4 var_AC
  loc_BB0AD7: LitI2_Byte 0
  loc_BB0AD9: CUI1I2
  loc_BB0ADB: FLdPr Me
  loc_BB0ADE: MemLdRfVar from_stack_1.global_102
  loc_BB0AE1: FMemLdR4 var_AC(112)
  loc_BB0AE6: LitI2_Byte 1
  loc_BB0AE8: FnUBound
  loc_BB0AEA: CUI1I4
  loc_BB0AEC: ForUI1 var_B0
  loc_BB0AF2: FLdPr Me
  loc_BB0AF5: MemLdUI1 global_102
  loc_BB0AF9: CI2UI1
  loc_BB0AFB: LitI2_Byte 0
  loc_BB0AFD: EqI2
  loc_BB0AFE: FLdPr Me
  loc_BB0B01: MemLdUI1 global_102
  loc_BB0B05: CI4UI1
  loc_BB0B06: FMemLdR4 var_AC(112)
  loc_BB0B0B: Ary1LdPr
  loc_BB0B0C: MemLdStr global_12
  loc_BB0B0F: LitStr vbNullString
  loc_BB0B12: EqStr
  loc_BB0B14: AndI4
  loc_BB0B15: BranchF loc_BB0B1B
  loc_BB0B18: Branch loc_BB1109
  loc_BB0B1B: LitVarStr var_94, "  <tr>"
  loc_BB0B20: PopAdLdVar
  loc_BB0B21: FLdPr Me
  loc_BB0B24: MemLdRfVar from_stack_1.global_60
  loc_BB0B27: LdPrVar
  loc_BB0B29: LateMemCall
  loc_BB0B2F: LitVarStr var_94, "    <td valign=""top"" height=""111"">"
  loc_BB0B34: PopAdLdVar
  loc_BB0B35: FLdPr Me
  loc_BB0B38: MemLdRfVar from_stack_1.global_60
  loc_BB0B3B: LdPrVar
  loc_BB0B3D: LateMemCall
  loc_BB0B43: FLdPr Me
  loc_BB0B46: MemLdUI1 global_102
  loc_BB0B4A: CI4UI1
  loc_BB0B4B: FMemLdR4 var_AC(112)
  loc_BB0B50: Ary1LdPr
  loc_BB0B51: MemLdI2 global_0
  loc_BB0B54: BranchF loc_BB0B6E
  loc_BB0B57: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BB0B5C: PopAdLdVar
  loc_BB0B5D: FLdPr Me
  loc_BB0B60: MemLdRfVar from_stack_1.global_60
  loc_BB0B63: LdPrVar
  loc_BB0B65: LateMemCall
  loc_BB0B6B: Branch loc_BB0B96
  loc_BB0B6E: LitVarStr var_94, "    <br>"
  loc_BB0B73: PopAdLdVar
  loc_BB0B74: FLdPr Me
  loc_BB0B77: MemLdRfVar from_stack_1.global_60
  loc_BB0B7A: LdPrVar
  loc_BB0B7C: LateMemCall
  loc_BB0B82: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" style=""border:2px solid black"" >"
  loc_BB0B87: PopAdLdVar
  loc_BB0B88: FLdPr Me
  loc_BB0B8B: MemLdRfVar from_stack_1.global_60
  loc_BB0B8E: LdPrVar
  loc_BB0B90: LateMemCall
  loc_BB0B96: FLdPr Me
  loc_BB0B99: MemLdUI1 global_102
  loc_BB0B9D: CI4UI1
  loc_BB0B9E: FMemLdR4 var_AC(112)
  loc_BB0BA3: AryLock
  loc_BB0BA6: Ary1LdRf
  loc_BB0BA7: FStR4 var_B8
  loc_BB0BAA: LitVarStr var_94, "      <tr align=""center"">"
  loc_BB0BAF: PopAdLdVar
  loc_BB0BB0: FLdPr Me
  loc_BB0BB3: MemLdRfVar from_stack_1.global_60
  loc_BB0BB6: LdPrVar
  loc_BB0BB8: LateMemCall
  loc_BB0BBE: FMemLdI2 var_B8(0)
  loc_BB0BC3: BranchF loc_BB0BF9
  loc_BB0BC6: LitStr "        <td width=""46" & Chr(37) & """ colspan=""3"" rowspan=""2"" class=""NombreMunicipio NoBordeAbajo""><strong>"
  loc_BB0BC9: FMemLdR4 var_B8(4)
  loc_BB0BCE: CI4Str
  loc_BB0BCF: FLdPr Me
  loc_BB0BD2: MemLdRfVar from_stack_1.global_124
  loc_BB0BD5: Ary1LdI4
  loc_BB0BD6: ConcatStr
  loc_BB0BD7: FStStrNoPop var_BC
  loc_BB0BDA: LitStr " BIMESTRE</strong></td>"
  loc_BB0BDD: ConcatStr
  loc_BB0BDE: CVarStr var_CC
  loc_BB0BE1: PopAdLdVar
  loc_BB0BE2: FLdPr Me
  loc_BB0BE5: MemLdRfVar from_stack_1.global_60
  loc_BB0BE8: LdPrVar
  loc_BB0BEA: LateMemCall
  loc_BB0BF0: FFree1Str var_BC
  loc_BB0BF3: FFree1Var var_CC = ""
  loc_BB0BF6: Branch loc_BB0C0D
  loc_BB0BF9: LitVarStr var_94, "        <td width=""46" & Chr(37) & """ colspan=""3"" rowspan=""2"" class=""NombreMunicipio NoBordeAbajo""><strong>ANUAL</strong></td>"
  loc_BB0BFE: PopAdLdVar
  loc_BB0BFF: FLdPr Me
  loc_BB0C02: MemLdRfVar from_stack_1.global_60
  loc_BB0C05: LdPrVar
  loc_BB0C07: LateMemCall
  loc_BB0C0D: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">DERECHOS</td>"
  loc_BB0C12: PopAdLdVar
  loc_BB0C13: FLdPr Me
  loc_BB0C16: MemLdRfVar from_stack_1.global_60
  loc_BB0C19: LdPrVar
  loc_BB0C1B: LateMemCall
  loc_BB0C21: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">DESCUENTOS</td>"
  loc_BB0C26: PopAdLdVar
  loc_BB0C27: FLdPr Me
  loc_BB0C2A: MemLdRfVar from_stack_1.global_60
  loc_BB0C2D: LdPrVar
  loc_BB0C2F: LateMemCall
  loc_BB0C35: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">RECARGO</td>"
  loc_BB0C3A: PopAdLdVar
  loc_BB0C3B: FLdPr Me
  loc_BB0C3E: MemLdRfVar from_stack_1.global_60
  loc_BB0C41: LdPrVar
  loc_BB0C43: LateMemCall
  loc_BB0C49: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">C. EMISI&Oacute;N</td>"
  loc_BB0C4E: PopAdLdVar
  loc_BB0C4F: FLdPr Me
  loc_BB0C52: MemLdRfVar from_stack_1.global_60
  loc_BB0C55: LdPrVar
  loc_BB0C57: LateMemCall
  loc_BB0C5D: LitVarStr var_94, "        <td class=""Encabezado"">TOTAL A PAGAR</td>"
  loc_BB0C62: PopAdLdVar
  loc_BB0C63: FLdPr Me
  loc_BB0C66: MemLdRfVar from_stack_1.global_60
  loc_BB0C69: LdPrVar
  loc_BB0C6B: LateMemCall
  loc_BB0C71: LitVarStr var_94, "      </tr>"
  loc_BB0C76: PopAdLdVar
  loc_BB0C77: FLdPr Me
  loc_BB0C7A: MemLdRfVar from_stack_1.global_60
  loc_BB0C7D: LdPrVar
  loc_BB0C7F: LateMemCall
  loc_BB0C85: LitVarStr var_94, "      <tr class=""NormalBloqueFin"" valign=""top"" align=""right"">"
  loc_BB0C8A: PopAdLdVar
  loc_BB0C8B: FLdPr Me
  loc_BB0C8E: MemLdRfVar from_stack_1.global_60
  loc_BB0C91: LdPrVar
  loc_BB0C93: LateMemCall
  loc_BB0C99: LitStr vbNullString
  loc_BB0C9C: LitI2_Byte 0
  loc_BB0C9E: LitI2_Byte 0
  loc_BB0CA0: LitI2_Byte 0
  loc_BB0CA2: LitI4 0
  loc_BB0CA7: FMemLdR4 var_B8(28)
  loc_BB0CAC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB0CB1: CVarStr var_CC
  loc_BB0CB4: PopAdLdVar
  loc_BB0CB5: FLdPr Me
  loc_BB0CB8: MemLdRfVar from_stack_1.global_60
  loc_BB0CBB: LdPrVar
  loc_BB0CBD: LateMemCall
  loc_BB0CC3: FFree1Var var_CC = ""
  loc_BB0CC6: LitStr vbNullString
  loc_BB0CC9: LitI2_Byte 0
  loc_BB0CCB: LitI2_Byte 0
  loc_BB0CCD: LitI2_Byte 0
  loc_BB0CCF: LitI4 0
  loc_BB0CD4: FMemLdR4 var_B8(32)
  loc_BB0CD9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB0CDE: CVarStr var_CC
  loc_BB0CE1: PopAdLdVar
  loc_BB0CE2: FLdPr Me
  loc_BB0CE5: MemLdRfVar from_stack_1.global_60
  loc_BB0CE8: LdPrVar
  loc_BB0CEA: LateMemCall
  loc_BB0CF0: FFree1Var var_CC = ""
  loc_BB0CF3: LitStr vbNullString
  loc_BB0CF6: LitI2_Byte 0
  loc_BB0CF8: LitI2_Byte 0
  loc_BB0CFA: LitI2_Byte 0
  loc_BB0CFC: LitI4 0
  loc_BB0D01: FMemLdR4 var_B8(36)
  loc_BB0D06: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB0D0B: CVarStr var_CC
  loc_BB0D0E: PopAdLdVar
  loc_BB0D0F: FLdPr Me
  loc_BB0D12: MemLdRfVar from_stack_1.global_60
  loc_BB0D15: LdPrVar
  loc_BB0D17: LateMemCall
  loc_BB0D1D: FFree1Var var_CC = ""
  loc_BB0D20: LitStr vbNullString
  loc_BB0D23: LitI2_Byte 0
  loc_BB0D25: LitI2_Byte 0
  loc_BB0D27: LitI2_Byte 0
  loc_BB0D29: LitI4 0
  loc_BB0D2E: FMemLdR4 var_B8(40)
  loc_BB0D33: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB0D38: CVarStr var_CC
  loc_BB0D3B: PopAdLdVar
  loc_BB0D3C: FLdPr Me
  loc_BB0D3F: MemLdRfVar from_stack_1.global_60
  loc_BB0D42: LdPrVar
  loc_BB0D44: LateMemCall
  loc_BB0D4A: FFree1Var var_CC = ""
  loc_BB0D4D: LitStr "Totales"
  loc_BB0D50: LitI2_Byte 0
  loc_BB0D52: LitI2_Byte 0
  loc_BB0D54: LitI2_Byte 0
  loc_BB0D56: LitI4 0
  loc_BB0D5B: FMemLdR4 var_B8(44)
  loc_BB0D60: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB0D65: CVarStr var_CC
  loc_BB0D68: PopAdLdVar
  loc_BB0D69: FLdPr Me
  loc_BB0D6C: MemLdRfVar from_stack_1.global_60
  loc_BB0D6F: LdPrVar
  loc_BB0D71: LateMemCall
  loc_BB0D77: FFree1Var var_CC = ""
  loc_BB0D7A: LitVarStr var_94, "      </tr>"
  loc_BB0D7F: PopAdLdVar
  loc_BB0D80: FLdPr Me
  loc_BB0D83: MemLdRfVar from_stack_1.global_60
  loc_BB0D86: LdPrVar
  loc_BB0D88: LateMemCall
  loc_BB0D8E: LitVarStr var_94, "      <tr align=""left"">"
  loc_BB0D93: PopAdLdVar
  loc_BB0D94: FLdPr Me
  loc_BB0D97: MemLdRfVar from_stack_1.global_60
  loc_BB0D9A: LdPrVar
  loc_BB0D9C: LateMemCall
  loc_BB0DA2: LitVarStr var_94, "          <td height=""42"" colspan=""3"" align=""center"" class=""Normal NoBordeArriba"" style=""border-right:none; border-bottom:none"">"
  loc_BB0DA7: PopAdLdVar
  loc_BB0DA8: FLdPr Me
  loc_BB0DAB: MemLdRfVar from_stack_1.global_60
  loc_BB0DAE: LdPrVar
  loc_BB0DB0: LateMemCall
  loc_BB0DB6: LitStr "                  <strong class=""NombreMunicipio"">"
  loc_BB0DB9: FLdRfVar var_CE
  loc_BB0DBC: FLdPr Me
  loc_BB0DBF: MemLdRfVar from_stack_1.global_80
  loc_BB0DC2: NewIfNullPr clsliquidacion
  loc_BB0DC5: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BB0DCA: FLdI2 var_CE
  loc_BB0DCD: CStrUI1
  loc_BB0DCF: FStStrNoPop var_BC
  loc_BB0DD2: ConcatStr
  loc_BB0DD3: FStStrNoPop var_D4
  loc_BB0DD6: LitStr "</strong>"
  loc_BB0DD9: ConcatStr
  loc_BB0DDA: CVarStr var_CC
  loc_BB0DDD: PopAdLdVar
  loc_BB0DDE: FLdPr Me
  loc_BB0DE1: MemLdRfVar from_stack_1.global_60
  loc_BB0DE4: LdPrVar
  loc_BB0DE6: LateMemCall
  loc_BB0DEC: FFreeStr var_BC = ""
  loc_BB0DF3: FFree1Var var_CC = ""
  loc_BB0DF6: LitVarStr var_94, "            </td>"
  loc_BB0DFB: PopAdLdVar
  loc_BB0DFC: FLdPr Me
  loc_BB0DFF: MemLdRfVar from_stack_1.global_60
  loc_BB0E02: LdPrVar
  loc_BB0E04: LateMemCall
  loc_BB0E0A: LitVarStr var_94, "          <td align=""center"" colspan=""9"" rowspan=""2"" class=""Normal"" style=""border-left:none"">"
  loc_BB0E0F: PopAdLdVar
  loc_BB0E10: FLdPr Me
  loc_BB0E13: MemLdRfVar from_stack_1.global_60
  loc_BB0E16: LdPrVar
  loc_BB0E18: LateMemCall
  loc_BB0E1E: LitVarStr var_94, "            <table align=""center"">"
  loc_BB0E23: PopAdLdVar
  loc_BB0E24: FLdPr Me
  loc_BB0E27: MemLdRfVar from_stack_1.global_60
  loc_BB0E2A: LdPrVar
  loc_BB0E2C: LateMemCall
  loc_BB0E32: LitStr "              <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_BB0E35: LitI4 1
  loc_BB0E3A: FMemLdR4 var_B8(20)
  loc_BB0E3F: Ary1LdI4
  loc_BB0E40: ConcatStr
  loc_BB0E41: FStStrNoPop var_BC
  loc_BB0E44: LitStr "</td></tr>"
  loc_BB0E47: ConcatStr
  loc_BB0E48: CVarStr var_CC
  loc_BB0E4B: PopAdLdVar
  loc_BB0E4C: FLdPr Me
  loc_BB0E4F: MemLdRfVar from_stack_1.global_60
  loc_BB0E52: LdPrVar
  loc_BB0E54: LateMemCall
  loc_BB0E5A: FFree1Str var_BC
  loc_BB0E5D: FFree1Var var_CC = ""
  loc_BB0E60: LitStr "              <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BB0E63: LitI4 0
  loc_BB0E68: FMemLdR4 var_B8(20)
  loc_BB0E6D: Ary1LdI4
  loc_BB0E6E: ConcatStr
  loc_BB0E6F: FStStrNoPop var_BC
  loc_BB0E72: LitStr "</td></tr>"
  loc_BB0E75: ConcatStr
  loc_BB0E76: CVarStr var_CC
  loc_BB0E79: PopAdLdVar
  loc_BB0E7A: FLdPr Me
  loc_BB0E7D: MemLdRfVar from_stack_1.global_60
  loc_BB0E80: LdPrVar
  loc_BB0E82: LateMemCall
  loc_BB0E88: FFree1Str var_BC
  loc_BB0E8B: FFree1Var var_CC = ""
  loc_BB0E8E: LitVarStr var_94, "            </table>"
  loc_BB0E93: PopAdLdVar
  loc_BB0E94: FLdPr Me
  loc_BB0E97: MemLdRfVar from_stack_1.global_60
  loc_BB0E9A: LdPrVar
  loc_BB0E9C: LateMemCall
  loc_BB0EA2: LitVarStr var_94, "          </td>"
  loc_BB0EA7: PopAdLdVar
  loc_BB0EA8: FLdPr Me
  loc_BB0EAB: MemLdRfVar from_stack_1.global_60
  loc_BB0EAE: LdPrVar
  loc_BB0EB0: LateMemCall
  loc_BB0EB6: LitVarStr var_94, "      </tr>"
  loc_BB0EBB: PopAdLdVar
  loc_BB0EBC: FLdPr Me
  loc_BB0EBF: MemLdRfVar from_stack_1.global_60
  loc_BB0EC2: LdPrVar
  loc_BB0EC4: LateMemCall
  loc_BB0ECA: LitVarStr var_94, "      <tr align=""left"">"
  loc_BB0ECF: PopAdLdVar
  loc_BB0ED0: FLdPr Me
  loc_BB0ED3: MemLdRfVar from_stack_1.global_60
  loc_BB0ED6: LdPrVar
  loc_BB0ED8: LateMemCall
  loc_BB0EDE: LitVarStr var_94, "        <td style=""border-right:none; border-top:none"" colspan=""3"" class=""Normal"" valign=""bottom"">"
  loc_BB0EE3: PopAdLdVar
  loc_BB0EE4: FLdPr Me
  loc_BB0EE7: MemLdRfVar from_stack_1.global_60
  loc_BB0EEA: LdPrVar
  loc_BB0EEC: LateMemCall
  loc_BB0EF2: LitVarStr var_94, "          <table border=""1"" cellpadding=""0"" cellspacing=""0"" width=""100" & Chr(37) & """>"
  loc_BB0EF7: PopAdLdVar
  loc_BB0EF8: FLdPr Me
  loc_BB0EFB: MemLdRfVar from_stack_1.global_60
  loc_BB0EFE: LdPrVar
  loc_BB0F00: LateMemCall
  loc_BB0F06: LitVarStr var_94, "              <tr align=""center"" class=""Encabezado"">"
  loc_BB0F0B: PopAdLdVar
  loc_BB0F0C: FLdPr Me
  loc_BB0F0F: MemLdRfVar from_stack_1.global_60
  loc_BB0F12: LdPrVar
  loc_BB0F14: LateMemCall
  loc_BB0F1A: FMemLdI2 var_B8(0)
  loc_BB0F1F: BranchF loc_BB0FF1
  loc_BB0F22: LitVarStr var_94, "                <td>PERIODO</td>"
  loc_BB0F27: PopAdLdVar
  loc_BB0F28: FLdPr Me
  loc_BB0F2B: MemLdRfVar from_stack_1.global_60
  loc_BB0F2E: LdPrVar
  loc_BB0F30: LateMemCall
  loc_BB0F36: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BB0F3B: PopAdLdVar
  loc_BB0F3C: FLdPr Me
  loc_BB0F3F: MemLdRfVar from_stack_1.global_60
  loc_BB0F42: LdPrVar
  loc_BB0F44: LateMemCall
  loc_BB0F4A: LitVarStr var_94, "              </tr>"
  loc_BB0F4F: PopAdLdVar
  loc_BB0F50: FLdPr Me
  loc_BB0F53: MemLdRfVar from_stack_1.global_60
  loc_BB0F56: LdPrVar
  loc_BB0F58: LateMemCall
  loc_BB0F5E: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BB0F63: PopAdLdVar
  loc_BB0F64: FLdPr Me
  loc_BB0F67: MemLdRfVar from_stack_1.global_60
  loc_BB0F6A: LdPrVar
  loc_BB0F6C: LateMemCall
  loc_BB0F72: LitStr "                <td>"
  loc_BB0F75: FMemLdR4 var_B8(4)
  loc_BB0F7A: ConcatStr
  loc_BB0F7B: FStStrNoPop var_BC
  loc_BB0F7E: LitStr "/"
  loc_BB0F81: ConcatStr
  loc_BB0F82: FStStrNoPop var_D4
  loc_BB0F85: FLdRfVar var_CE
  loc_BB0F88: FLdPr Me
  loc_BB0F8B: MemLdRfVar from_stack_1.global_80
  loc_BB0F8E: NewIfNullPr clsliquidacion
  loc_BB0F91: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BB0F96: FLdI2 var_CE
  loc_BB0F99: CStrUI1
  loc_BB0F9B: FStStrNoPop var_D8
  loc_BB0F9E: ConcatStr
  loc_BB0F9F: FStStrNoPop var_DC
  loc_BB0FA2: LitStr "</td>"
  loc_BB0FA5: ConcatStr
  loc_BB0FA6: CVarStr var_CC
  loc_BB0FA9: PopAdLdVar
  loc_BB0FAA: FLdPr Me
  loc_BB0FAD: MemLdRfVar from_stack_1.global_60
  loc_BB0FB0: LdPrVar
  loc_BB0FB2: LateMemCall
  loc_BB0FB8: FFreeStr var_BC = "": var_D4 = "": var_D8 = ""
  loc_BB0FC3: FFree1Var var_CC = ""
  loc_BB0FC6: LitStr "                <td>"
  loc_BB0FC9: FMemLdR4 var_B8(16)
  loc_BB0FCE: ConcatStr
  loc_BB0FCF: FStStrNoPop var_BC
  loc_BB0FD2: LitStr "</td>"
  loc_BB0FD5: ConcatStr
  loc_BB0FD6: CVarStr var_CC
  loc_BB0FD9: PopAdLdVar
  loc_BB0FDA: FLdPr Me
  loc_BB0FDD: MemLdRfVar from_stack_1.global_60
  loc_BB0FE0: LdPrVar
  loc_BB0FE2: LateMemCall
  loc_BB0FE8: FFree1Str var_BC
  loc_BB0FEB: FFree1Var var_CC = ""
  loc_BB0FEE: Branch loc_BB1055
  loc_BB0FF1: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BB0FF6: PopAdLdVar
  loc_BB0FF7: FLdPr Me
  loc_BB0FFA: MemLdRfVar from_stack_1.global_60
  loc_BB0FFD: LdPrVar
  loc_BB0FFF: LateMemCall
  loc_BB1005: LitVarStr var_94, "              </tr>"
  loc_BB100A: PopAdLdVar
  loc_BB100B: FLdPr Me
  loc_BB100E: MemLdRfVar from_stack_1.global_60
  loc_BB1011: LdPrVar
  loc_BB1013: LateMemCall
  loc_BB1019: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BB101E: PopAdLdVar
  loc_BB101F: FLdPr Me
  loc_BB1022: MemLdRfVar from_stack_1.global_60
  loc_BB1025: LdPrVar
  loc_BB1027: LateMemCall
  loc_BB102D: LitStr "                <td>"
  loc_BB1030: FMemLdR4 var_B8(16)
  loc_BB1035: ConcatStr
  loc_BB1036: FStStrNoPop var_BC
  loc_BB1039: LitStr "</td>"
  loc_BB103C: ConcatStr
  loc_BB103D: CVarStr var_CC
  loc_BB1040: PopAdLdVar
  loc_BB1041: FLdPr Me
  loc_BB1044: MemLdRfVar from_stack_1.global_60
  loc_BB1047: LdPrVar
  loc_BB1049: LateMemCall
  loc_BB104F: FFree1Str var_BC
  loc_BB1052: FFree1Var var_CC = ""
  loc_BB1055: LitVarStr var_94, "              </tr>"
  loc_BB105A: PopAdLdVar
  loc_BB105B: FLdPr Me
  loc_BB105E: MemLdRfVar from_stack_1.global_60
  loc_BB1061: LdPrVar
  loc_BB1063: LateMemCall
  loc_BB1069: LitVarStr var_94, "          </table>"
  loc_BB106E: PopAdLdVar
  loc_BB106F: FLdPr Me
  loc_BB1072: MemLdRfVar from_stack_1.global_60
  loc_BB1075: LdPrVar
  loc_BB1077: LateMemCall
  loc_BB107D: LitVarStr var_94, "        </td>"
  loc_BB1082: PopAdLdVar
  loc_BB1083: FLdPr Me
  loc_BB1086: MemLdRfVar from_stack_1.global_60
  loc_BB1089: LdPrVar
  loc_BB108B: LateMemCall
  loc_BB1091: LitVarStr var_94, "      </tr>"
  loc_BB1096: PopAdLdVar
  loc_BB1097: FLdPr Me
  loc_BB109A: MemLdRfVar from_stack_1.global_60
  loc_BB109D: LdPrVar
  loc_BB109F: LateMemCall
  loc_BB10A5: LitVarStr var_94, "    </table>"
  loc_BB10AA: PopAdLdVar
  loc_BB10AB: FLdPr Me
  loc_BB10AE: MemLdRfVar from_stack_1.global_60
  loc_BB10B1: LdPrVar
  loc_BB10B3: LateMemCall
  loc_BB10B9: FMemLdI2 var_B8(0)
  loc_BB10BE: NotI4
  loc_BB10BF: BranchF loc_BB10D6
  loc_BB10C2: LitVarStr var_94, "    <br>"
  loc_BB10C7: PopAdLdVar
  loc_BB10C8: FLdPr Me
  loc_BB10CB: MemLdRfVar from_stack_1.global_60
  loc_BB10CE: LdPrVar
  loc_BB10D0: LateMemCall
  loc_BB10D6: LitVarStr var_94, "  </td>"
  loc_BB10DB: PopAdLdVar
  loc_BB10DC: FLdPr Me
  loc_BB10DF: MemLdRfVar from_stack_1.global_60
  loc_BB10E2: LdPrVar
  loc_BB10E4: LateMemCall
  loc_BB10EA: LitVarStr var_94, "  </tr>"
  loc_BB10EF: PopAdLdVar
  loc_BB10F0: FLdPr Me
  loc_BB10F3: MemLdRfVar from_stack_1.global_60
  loc_BB10F6: LdPrVar
  loc_BB10F8: LateMemCall
  loc_BB10FE: LitI4 0
  loc_BB1103: FStR4 var_B8
  loc_BB1106: AryUnlock
  loc_BB1109: FLdPr Me
  loc_BB110C: MemLdRfVar from_stack_1.global_102
  loc_BB110F: NextUI1
  loc_BB1115: LitI4 0
  loc_BB111A: FStR4 var_AC
  loc_BB111D: AryUnlock
  loc_BB1120: ExitProcHresult
  loc_BB1121: SetLastSystemError
End Function

Private Function Proc_325_28_B03628() 'B03628
  'Data Table: 4CA014
  loc_B03434: FLdPr Me
  loc_B03437: MemLdStr global_96
  loc_B0343A: FLdPr Me
  loc_B0343D: MemLdStr global_92
  loc_B03440: AryLock
  loc_B03443: Ary1LdRf
  loc_B03444: FStR4 var_8C
  loc_B03447: LitVarStr var_9C, "  <tr><td><br></td></tr>"
  loc_B0344C: PopAdLdVar
  loc_B0344D: FLdPr Me
  loc_B03450: MemLdRfVar from_stack_1.global_60
  loc_B03453: LdPrVar
  loc_B03455: LateMemCall
  loc_B0345B: LitVarStr var_9C, "  <tr>"
  loc_B03460: PopAdLdVar
  loc_B03461: FLdPr Me
  loc_B03464: MemLdRfVar from_stack_1.global_60
  loc_B03467: LdPrVar
  loc_B03469: LateMemCall
  loc_B0346F: LitVarStr var_9C, "    <td valign=""bottom"">"
  loc_B03474: PopAdLdVar
  loc_B03475: FLdPr Me
  loc_B03478: MemLdRfVar from_stack_1.global_60
  loc_B0347B: LdPrVar
  loc_B0347D: LateMemCall
  loc_B03483: LitVarStr var_9C, "     <table align=""center"" height=""100" & Chr(37) & """ width=""99" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0""><tr>"
  loc_B03488: PopAdLdVar
  loc_B03489: FLdPr Me
  loc_B0348C: MemLdRfVar from_stack_1.global_60
  loc_B0348F: LdPrVar
  loc_B03491: LateMemCall
  loc_B03497: LitVarStr var_9C, "        <td height=""100" & Chr(37) & """ class=""NormalAbajo MargIzq"">"
  loc_B0349C: PopAdLdVar
  loc_B0349D: FLdPr Me
  loc_B034A0: MemLdRfVar from_stack_1.global_60
  loc_B034A3: LdPrVar
  loc_B034A5: LateMemCall
  loc_B034AB: LitVarStr var_9C, "        <img src=""l6.jpg"" width=""166"" height=""131"" class=""Gina"">"
  loc_B034B0: PopAdLdVar
  loc_B034B1: FLdPr Me
  loc_B034B4: MemLdRfVar from_stack_1.global_60
  loc_B034B7: LdPrVar
  loc_B034B9: LateMemCall
  loc_B034BF: LitVarStr var_9C, "        Estimado Vecino: Para informes comunicarse al tel. 4498134 o e-mail patentes_generales@guaymallen.gob.ar<br><br>"
  loc_B034C4: PopAdLdVar
  loc_B034C5: FLdPr Me
  loc_B034C8: MemLdRfVar from_stack_1.global_60
  loc_B034CB: LdPrVar
  loc_B034CD: LateMemCall
  loc_B034D3: LitVarStr var_9C, "        <strong>¡REGISTRÁ TU DOMICILIO FISCAL ELECTRÓNICO!</strong> Podés hacerlo al e-mail patentes_generales@guaymallen.gob.ar<br><br><br>"
  loc_B034D8: PopAdLdVar
  loc_B034D9: FLdPr Me
  loc_B034DC: MemLdRfVar from_stack_1.global_60
  loc_B034DF: LdPrVar
  loc_B034E1: LateMemCall
  loc_B034E7: LitVarStr var_9C, "0"
  loc_B034EC: FStVarCopyObj var_BC
  loc_B034EF: FLdRfVar var_BC
  loc_B034F2: LitI4 6
  loc_B034F7: FLdRfVar var_CC
  loc_B034FA: ImpAdCallFPR4  = String(, )
  loc_B034FF: LitVarStr var_EC, "        C&oacute;digo pagomiscuentas.com: <strong>2"
  loc_B03504: LitI4 1
  loc_B03509: LitI4 1
  loc_B0350E: FLdRfVar var_CC
  loc_B03511: FMemLdRf unk_4C9F89
  loc_B03516: CVarRef
  loc_B0351B: FLdRfVar var_DC
  loc_B0351E: ImpAdCallFPR4  = Format(, )
  loc_B03523: FLdRfVar var_DC
  loc_B03526: ConcatVar var_FC
  loc_B0352A: LitVarStr var_10C, "</strong><br>"
  loc_B0352F: ConcatVar var_11C
  loc_B03533: PopAdLdVar
  loc_B03534: FLdPr Me
  loc_B03537: MemLdRfVar from_stack_1.global_60
  loc_B0353A: LdPrVar
  loc_B0353C: LateMemCall
  loc_B03542: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B0354F: LitVarStr var_9C, "0"
  loc_B03554: FStVarCopyObj var_BC
  loc_B03557: FLdRfVar var_BC
  loc_B0355A: LitI4 &HC
  loc_B0355F: FLdRfVar var_CC
  loc_B03562: ImpAdCallFPR4  = String(, )
  loc_B03567: LitVarStr var_EC, "        C&oacute;digo RED LINK: <strong>2"
  loc_B0356C: LitI4 1
  loc_B03571: LitI4 1
  loc_B03576: FLdRfVar var_CC
  loc_B03579: FMemLdRf unk_4C9F89
  loc_B0357E: CVarRef
  loc_B03583: FLdRfVar var_DC
  loc_B03586: ImpAdCallFPR4  = Format(, )
  loc_B0358B: FLdRfVar var_DC
  loc_B0358E: ConcatVar var_FC
  loc_B03592: LitVarStr var_10C, "</strong><br><br>"
  loc_B03597: ConcatVar var_11C
  loc_B0359B: PopAdLdVar
  loc_B0359C: FLdPr Me
  loc_B0359F: MemLdRfVar from_stack_1.global_60
  loc_B035A2: LdPrVar
  loc_B035A4: LateMemCall
  loc_B035AA: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_B035B7: LitVarStr var_9C, "        <strong>&iexcl;Apoye a SU MUNICIPIO pagando en t&eacute;rmino!</strong>"
  loc_B035BC: PopAdLdVar
  loc_B035BD: FLdPr Me
  loc_B035C0: MemLdRfVar from_stack_1.global_60
  loc_B035C3: LdPrVar
  loc_B035C5: LateMemCall
  loc_B035CB: LitVarStr var_9C, "      </td></tr></table>"
  loc_B035D0: PopAdLdVar
  loc_B035D1: FLdPr Me
  loc_B035D4: MemLdRfVar from_stack_1.global_60
  loc_B035D7: LdPrVar
  loc_B035D9: LateMemCall
  loc_B035DF: LitVarStr var_9C, "    </td>"
  loc_B035E4: PopAdLdVar
  loc_B035E5: FLdPr Me
  loc_B035E8: MemLdRfVar from_stack_1.global_60
  loc_B035EB: LdPrVar
  loc_B035ED: LateMemCall
  loc_B035F3: LitVarStr var_9C, "  </tr>"
  loc_B035F8: PopAdLdVar
  loc_B035F9: FLdPr Me
  loc_B035FC: MemLdRfVar from_stack_1.global_60
  loc_B035FF: LdPrVar
  loc_B03601: LateMemCall
  loc_B03607: LitVarStr var_9C, "</table>"
  loc_B0360C: PopAdLdVar
  loc_B0360D: FLdPr Me
  loc_B03610: MemLdRfVar from_stack_1.global_60
  loc_B03613: LdPrVar
  loc_B03615: LateMemCall
  loc_B0361B: LitI4 0
  loc_B03620: FStR4 var_8C
  loc_B03623: AryUnlock
  loc_B03626: ExitProcHresult
End Function

Private Function Proc_325_29_9F44E8() '9F44E8
  'Data Table: 4CA014
  loc_9F44BC: LitVarStr var_94, "</body>"
  loc_9F44C1: PopAdLdVar
  loc_9F44C2: FLdPr Me
  loc_9F44C5: MemLdRfVar from_stack_1.global_60
  loc_9F44C8: LdPrVar
  loc_9F44CA: LateMemCall
  loc_9F44D0: LitVarStr var_94, "</html>"
  loc_9F44D5: PopAdLdVar
  loc_9F44D6: FLdPr Me
  loc_9F44D9: MemLdRfVar from_stack_1.global_60
  loc_9F44DC: LdPrVar
  loc_9F44DE: LateMemCall
  loc_9F44E4: ExitProcHresult
End Function
