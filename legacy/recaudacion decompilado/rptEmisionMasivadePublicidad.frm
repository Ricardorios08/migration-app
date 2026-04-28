VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Begin VB.Form rptEmisionMasivadePublicidad
  Caption = "Emisión Masiva de Publicidad"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEmisionMasivadePublicidad.frx":0000
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
    Left = 5040
    Top = 6240
    Width = 2775
    Height = 1215
    TabIndex = 17
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
    TabIndex = 10
    OleObjectBlob = "rptEmisionMasivadePublicidad.frx":08CA
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
    Picture = "rptEmisionMasivadePublicidad.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEmisionMasivadePublicidad.frx":0B9C
    Left = 10920
    Top = 6240
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 1200
    Top = 6240
    Width = 3495
    Height = 1215
    TabIndex = 8
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
    TabIndex = 7
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
      TabIndex = 5
    End
    Begin VB.Frame Frame5
      Caption = "Orden"
      Left = 240
      Top = 4920
      Width = 9375
      Height = 975
      TabIndex = 11
      Begin MSMask.MaskEdBox OrdeLipuDesdeMsk
        Left = 2130
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptEmisionMasivadePublicidad.frx":0C00
      End
      Begin MSMask.MaskEdBox OrdeLipuHastaMsk
        Left = 5970
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptEmisionMasivadePublicidad.frx":0C98
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
    Begin MSDataGridLib.DataGrid dgdLiquidacion
      Left = 240
      Top = 240
      Width = 9360
      Height = 4635
      TabIndex = 0
      OleObjectBlob = "rptEmisionMasivadePublicidad.frx":0D30
    End
    Begin MSComctlLib.ProgressBar pbar
      Left = 10140
      Top = 960
      Width = 735
      Height = 4575
      Visible = 0   'False
      TabIndex = 15
      OleObjectBlob = "rptEmisionMasivadePublicidad.frx":1036
    End
    Begin VB.Label ProgresoLbl
      Left = 9750
      Top = 5595
      Width = 1515
      Height = 300
      TabIndex = 16
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
    TabIndex = 9
    OleObjectBlob = "rptEmisionMasivadePublicidad.frx":109E
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 7680
    Top = 6360
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptEmisionMasivadePublicidad.frx":1152
  End
End

Attribute VB_Name = "rptEmisionMasivadePublicidad"

Public bGenerado As Boolean

Private Type UDT_1_005636B0
  bStruc(48) As Byte ' String fields: 11
End Type

Private Type UDT_2_00560654
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_3_00563740
  bStruc(124) As Byte ' String fields: 31
End Type


Private Sub cmdNueva_Click() 'ADABEC
  'Data Table: 4C11B4
  loc_ADAAA8: LitI2_Byte 0
  loc_ADAAAA: FLdPr Me
  loc_ADAAAD: MemStI2 bGenerado
  loc_ADAAB0: LitI2_Byte &HFF
  loc_ADAAB2: ILdRf Me
  loc_ADAAB5: CastAd
  loc_ADAAB8: FStAdFunc var_88
  loc_ADAABB: FLdRfVar var_88
  loc_ADAABE: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_ADAAC3: FFree1Ad var_88
  loc_ADAAC6: FLdPr Me
  loc_ADAAC9: MemLdRfVar from_stack_1.global_80
  loc_ADAACC: NewIfNullPr clsliquidacion
  loc_ADAACF: Call clsliquidacion.Requery()
  loc_ADAAD4: LitVarStr var_98, vbNullString
  loc_ADAAD9: PopAdLdVar
  loc_ADAADA: FLdPr Me
  loc_ADAADD: VCallAd Control_ID_OrdeLipuDesdeMsk
  loc_ADAAE0: FStAdFunc var_88
  loc_ADAAE3: FLdPr var_88
  loc_ADAAE6: LateIdSt
  loc_ADAAEB: FFree1Ad var_88
  loc_ADAAEE: LitVarStr var_98, vbNullString
  loc_ADAAF3: PopAdLdVar
  loc_ADAAF4: FLdPr Me
  loc_ADAAF7: VCallAd Control_ID_OrdeLipuHastaMsk
  loc_ADAAFA: FStAdFunc var_88
  loc_ADAAFD: FLdPr var_88
  loc_ADAB00: LateIdSt
  loc_ADAB05: FFree1Ad var_88
  loc_ADAB08: LitStr vbNullString
  loc_ADAB0B: FLdPr Me
  loc_ADAB0E: VCallAd Control_ID_ProgresoLbl
  loc_ADAB11: FStAdFunc var_88
  loc_ADAB14: FLdPr var_88
  loc_ADAB17: Me.Caption = from_stack_1
  loc_ADAB1C: FFree1Ad var_88
  loc_ADAB1F: FLdRfVar var_AC
  loc_ADAB22: FLdPr Me
  loc_ADAB25: MemLdRfVar from_stack_1.global_80
  loc_ADAB28: NewIfNullPr clsliquidacion
  loc_ADAB2B: from_stack_1 = clsliquidacion.RecordCount
  loc_ADAB30: ILdRf var_AC
  loc_ADAB33: LitI4 0
  loc_ADAB38: GtI4
  loc_ADAB39: BranchF loc_ADABAB
  loc_ADAB3C: LitI4 0
  loc_ADAB41: LitI4 1
  loc_ADAB46: FLdRfVar var_B0
  loc_ADAB49: Redim
  loc_ADAB53: FLdPr Me
  loc_ADAB56: MemLdRfVar from_stack_1.global_80
  loc_ADAB59: NewIfNullAd
  loc_ADAB5C: FStAd var_88 
  loc_ADAB60: FLdRfVar var_88
  loc_ADAB63: CVarRef
  loc_ADAB68: ParmAry1St
  loc_ADAB6E: FLdPr Me
  loc_ADAB71: VCallAd Control_ID_dgdLiquidacion
  loc_ADAB74: CVarAd
  loc_ADAB78: ParmAry1St
  loc_ADAB7E: FLdRfVar var_B0
  loc_ADAB81: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ADAB86: ILdRf var_88
  loc_ADAB89: CastAd
  loc_ADAB8C: FLdPr Me
  loc_ADAB8F: MemStAdFunc
  loc_ADAB93: FLdRfVar var_B0
  loc_ADAB96: Erase
  loc_ADAB97: FFree1Ad var_88
  loc_ADAB9A: FLdPr Me
  loc_ADAB9D: MemLdRfVar from_stack_1.global_80
  loc_ADABA0: NewIfNullPr clsliquidacion
  loc_ADABA3: Call clsliquidacion.MoveLast()
  loc_ADABA8: Branch loc_ADABC7
  loc_ADABAB: LitStr "No existen liquidaciones para listar"
  loc_ADABAE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADABB3: ILdRf Me
  loc_ADABB6: CastAd
  loc_ADABB9: FStAdFunc var_88
  loc_ADABBC: FLdRfVar var_88
  loc_ADABBF: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_ADABC4: FFree1Ad var_88
  loc_ADABC7: LitStr vbNullString
  loc_ADABCA: FLdPr Me
  loc_ADABCD: Me.Tag = from_stack_1
  loc_ADABD2: Call HabilitarCriterio()
  loc_ADABD7: ILdRf Me
  loc_ADABDA: CastAd
  loc_ADABDD: FStAdFunc var_88
  loc_ADABE0: FLdRfVar var_88
  loc_ADABE3: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ADABE8: FFree1Ad var_88
  loc_ADABEB: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'B0ED2C
  'Data Table: 4C11B4
  loc_B0EAF8: LitVarStr var_94, "Enviando a impresora predeterminada..."
  loc_B0EAFD: PopAdLdVar
  loc_B0EAFE: FLdPr Me
  loc_B0EB01: VCallAd Control_ID_statusBar
  loc_B0EB04: FStAdFunc var_A8
  loc_B0EB07: FLdPr var_A8
  loc_B0EB0A: LateIdSt
  loc_B0EB0F: FFree1Ad var_A8
  loc_B0EB12: ILdRf Me
  loc_B0EB15: CastAd
  loc_B0EB18: FStAdFunc var_A8
  loc_B0EB1B: FLdRfVar var_A8
  loc_B0EB1E: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B0EB23: FFree1Ad var_A8
  loc_B0EB26: LitVar_FALSE
  loc_B0EB2A: PopAdLdVar
  loc_B0EB2B: FLdPr Me
  loc_B0EB2E: VCallAd Control_ID_dgdLiquidacion
  loc_B0EB31: FStAdFunc var_A8
  loc_B0EB34: FLdPr var_A8
  loc_B0EB37: LateIdSt
  loc_B0EB3C: FFree1Ad var_A8
  loc_B0EB3F: Call GeneraReporte()
  loc_B0EB44: FLdPr Me
  loc_B0EB47: MemLdI2 bGenerado
  loc_B0EB4A: BranchF loc_B0ECE1
  loc_B0EB4D: FLdPr Me
  loc_B0EB50: MemLdStr global_92
  loc_B0EB53: LitI2_Byte 1
  loc_B0EB55: FnUBound
  loc_B0EB57: CR8I4
  loc_B0EB58: CVarR4
  loc_B0EB5C: PopAdLdVar
  loc_B0EB5D: FLdPr Me
  loc_B0EB60: VCallAd Control_ID_pbar
  loc_B0EB63: FStAdFunc var_A8
  loc_B0EB66: FLdPr var_A8
  loc_B0EB69: LateIdSt
  loc_B0EB6E: FFree1Ad var_A8
  loc_B0EB71: LitVar_TRUE var_94
  loc_B0EB74: PopAdLdVar
  loc_B0EB75: FLdPr Me
  loc_B0EB78: VCallAd Control_ID_pbar
  loc_B0EB7B: FStAdFunc var_A8
  loc_B0EB7E: FLdPr var_A8
  loc_B0EB81: LateIdSt
  loc_B0EB86: FFree1Ad var_A8
  loc_B0EB89: LitI4 1
  loc_B0EB8E: FLdPr Me
  loc_B0EB91: MemLdRfVar from_stack_1.global_96
  loc_B0EB94: FLdPr Me
  loc_B0EB97: MemLdStr global_92
  loc_B0EB9A: LitI2_Byte 1
  loc_B0EB9C: FnUBound
  loc_B0EB9E: ForI4 var_B0
  loc_B0EBA4: LitStr " - "
  loc_B0EBA7: FLdPr Me
  loc_B0EBAA: MemLdStr global_96
  loc_B0EBAD: FLdPr Me
  loc_B0EBB0: MemLdStr global_92
  loc_B0EBB3: Ary1LdPr
  loc_B0EBB4: MemLdStr global_84
  loc_B0EBB7: ConcatStr
  loc_B0EBB8: FStStrNoPop var_B4
  loc_B0EBBB: FLdPr Me
  loc_B0EBBE: Me.Tag = from_stack_1
  loc_B0EBC3: FFree1Str var_B4
  loc_B0EBC6: ILdRf Me
  loc_B0EBC9: CastAd
  loc_B0EBCC: FStAdFunc var_A8
  loc_B0EBCF: FLdRfVar var_A8
  loc_B0EBD2: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_B0EBD7: FFree1Ad var_A8
  loc_B0EBDA: FLdPr Me
  loc_B0EBDD: MemLdStr global_96
  loc_B0EBE0: CR8I4
  loc_B0EBE1: CVarR4
  loc_B0EBE5: PopAdLdVar
  loc_B0EBE6: FLdPr Me
  loc_B0EBE9: VCallAd Control_ID_pbar
  loc_B0EBEC: FStAdFunc var_A8
  loc_B0EBEF: FLdPr var_A8
  loc_B0EBF2: LateIdSt
  loc_B0EBF7: FFree1Ad var_A8
  loc_B0EBFA: FLdPr Me
  loc_B0EBFD: MemLdStr global_96
  loc_B0EC00: CStrI4
  loc_B0EC02: FStStrNoPop var_B4
  loc_B0EC05: LitStr "/"
  loc_B0EC08: ConcatStr
  loc_B0EC09: FStStrNoPop var_B8
  loc_B0EC0C: FLdPr Me
  loc_B0EC0F: MemLdStr global_92
  loc_B0EC12: LitI2_Byte 1
  loc_B0EC14: FnUBound
  loc_B0EC16: CStrI4
  loc_B0EC18: FStStrNoPop var_BC
  loc_B0EC1B: ConcatStr
  loc_B0EC1C: FStStrNoPop var_C0
  loc_B0EC1F: FLdPr Me
  loc_B0EC22: VCallAd Control_ID_ProgresoLbl
  loc_B0EC25: FStAdFunc var_A8
  loc_B0EC28: FLdPr var_A8
  loc_B0EC2B: Me.Caption = from_stack_1
  loc_B0EC30: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_B0EC3B: FFree1Ad var_A8
  loc_B0EC3E: Call GeneraHTML()
  loc_B0EC43: ImpAdLdRf MemVar_D93C84
  loc_B0EC46: CDargRef
  loc_B0EC4A: FLdPr Me
  loc_B0EC4D: VCallAd Control_ID_wbbReporte
  loc_B0EC50: FStAdFunc var_A8
  loc_B0EC53: FLdPr var_A8
  loc_B0EC56: LateIdCall
  loc_B0EC5E: FFree1Ad var_A8
  loc_B0EC61: ImpAdCallFPR4 DoEvents()
  loc_B0EC66: FLdPr Me
  loc_B0EC69: VCallAd Control_ID_wbbReporte
  loc_B0EC6C: FStAdFunc var_A8
  loc_B0EC6F: FLdPr var_A8
  loc_B0EC72: LateIdLdVar var_D0 DispID_-525 -1
  loc_B0EC79: CI4Var
  loc_B0EC7B: LitI4 4
  loc_B0EC80: NeI4
  loc_B0EC81: FFree1Ad var_A8
  loc_B0EC84: FFree1Var var_D0 = ""
  loc_B0EC87: BranchT loc_B0EC61
  loc_B0EC8A: LitVarI4
  loc_B0EC92: PopAdLdVar
  loc_B0EC93: LitVarI4
  loc_B0EC9B: PopAdLdVar
  loc_B0EC9C: LitVarI2 var_110, 2
  loc_B0ECA1: PopAdLdVar
  loc_B0ECA2: LitVar_NULL
  loc_B0ECA6: PopAdLdVar
  loc_B0ECA7: FLdPr Me
  loc_B0ECAA: VCallAd Control_ID_wbbReporte
  loc_B0ECAD: FStAdFunc var_A8
  loc_B0ECB0: FLdPr var_A8
  loc_B0ECB3: LateIdCall
  loc_B0ECBB: FFree1Ad var_A8
  loc_B0ECBE: FLdPr Me
  loc_B0ECC1: MemLdRfVar from_stack_1.global_96
  loc_B0ECC4: NextI4 var_B0, loc_B0EBA4
  loc_B0ECC9: LitVar_TRUE var_94
  loc_B0ECCC: PopAdLdVar
  loc_B0ECCD: FLdPr Me
  loc_B0ECD0: VCallAd Control_ID_pbar
  loc_B0ECD3: FStAdFunc var_A8
  loc_B0ECD6: FLdPr var_A8
  loc_B0ECD9: LateIdSt
  loc_B0ECDE: FFree1Ad var_A8
  loc_B0ECE1: ILdRf Me
  loc_B0ECE4: CastAd
  loc_B0ECE7: FStAdFunc var_A8
  loc_B0ECEA: FLdRfVar var_A8
  loc_B0ECED: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B0ECF2: FFree1Ad var_A8
  loc_B0ECF5: FLdPr Me
  loc_B0ECF8: VCallAd Control_ID_dgdLiquidacion
  loc_B0ECFB: FStAdFunc var_A8
  loc_B0ECFE: FLdPr var_A8
  loc_B0ED01: LateIdLdVar var_D0 DispID_13 -32767
  loc_B0ED08: CBoolVar
  loc_B0ED0A: FFree1Ad var_A8
  loc_B0ED0D: FFree1Var var_D0 = ""
  loc_B0ED10: BranchF loc_B0ED2A
  loc_B0ED13: FLdPr Me
  loc_B0ED16: VCallAd Control_ID_dgdLiquidacion
  loc_B0ED19: FStAdFunc var_A8
  loc_B0ED1C: FLdPr var_A8
  loc_B0ED1F: LateIdCall
  loc_B0ED27: FFree1Ad var_A8
  loc_B0ED2A: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1C600
  'Data Table: 4C11B4
  loc_A1C5C8: FLdPr Me
  loc_A1C5CB: VCallAd Control_ID_statusBar
  loc_A1C5CE: FStAdFunc var_88
  loc_A1C5D1: FLdPr var_88
  loc_A1C5D4: LateIdLdVar var_98 DispID_1 0
  loc_A1C5DB: CStrVarTmp
  loc_A1C5DC: CVarStr var_A8
  loc_A1C5DF: PopAdLdVar
  loc_A1C5E0: FLdPr Me
  loc_A1C5E3: VCallAd Control_ID_statusBar
  loc_A1C5E6: FStAdFunc var_BC
  loc_A1C5E9: FLdPr var_BC
  loc_A1C5EC: LateIdSt
  loc_A1C5F1: FFreeAd var_88 = ""
  loc_A1C5F8: FFreeVar var_98 = ""
  loc_A1C5FF: ExitProcHresult
End Sub

Private Sub Form_Load() 'A5E358
  'Data Table: 4C11B4
  loc_A5E2F8: LitStr "PRIMER"
  loc_A5E2FB: LitI4 1
  loc_A5E300: FLdPr Me
  loc_A5E303: MemLdRfVar from_stack_1.global_124
  loc_A5E306: Ary1StStrCopy
  loc_A5E307: LitStr "SEGUNDO"
  loc_A5E30A: LitI4 2
  loc_A5E30F: FLdPr Me
  loc_A5E312: MemLdRfVar from_stack_1.global_124
  loc_A5E315: Ary1StStrCopy
  loc_A5E316: ILdRf Me
  loc_A5E319: CastAd
  loc_A5E31C: FStAdFunc var_88
  loc_A5E31F: FLdRfVar var_88
  loc_A5E322: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A5E327: FFree1Ad var_88
  loc_A5E32A: LitStr "SELECT PeriLiqu, liquidacion.CodiTili, DetaTili, NumeLiqu, ActuLiqu, FealLiqu, LeyeTili, FealLiqu"
  loc_A5E32D: LitStr " FROM liquidacion LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili"
  loc_A5E330: ConcatStr
  loc_A5E331: FStStrNoPop var_8C
  loc_A5E334: LitStr " WHERE liquidacion.CodiOfic = 6 AND ActuLiqu = 'Si' ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu"
  loc_A5E337: ConcatStr
  loc_A5E338: FStStrNoPop var_90
  loc_A5E33B: FLdPr Me
  loc_A5E33E: MemLdRfVar from_stack_1.global_80
  loc_A5E341: NewIfNullPr clsliquidacion
  loc_A5E344: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A5E349: FFreeStr var_8C = ""
  loc_A5E350: Call cmdNueva_Click()
  loc_A5E355: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CE744
  'Data Table: 4C11B4
  loc_9CE72C: FLdPr Me
  loc_9CE72F: VCallAd Control_ID_wbbReporte
  loc_9CE732: FStAdFunc var_88
  loc_9CE735: FLdRfVar var_88
  loc_9CE738: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CE73D: FFree1Ad var_88
  loc_9CE740: ExitProcHresult
End Sub

Private Sub OrdeLipuDesdeMsk_UnknownEvent_0 '9BF048
  'Data Table: 4C11B4
  loc_9BF034: FLdPr Me
  loc_9BF037: VCallAd Control_ID_OrdeLipuDesdeMsk
  loc_9BF03A: CVarAd
  loc_9BF03E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF043: FFree1Var var_94 = ""
  loc_9BF046: ExitProcHresult
End Sub

Private Sub OrdeLipuDesdeMsk_UnknownEvent_8 '9AFC84
  'Data Table: 4C11B4
  loc_9AFC7C: LitI2_Byte &HFF
  loc_9AFC7E: Call Proc_312_19_AF444C()
  loc_9AFC83: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'B81C70
  'Data Table: 4C11B4
  loc_B81770: OnErrorGoto loc_B81BE6
  loc_B81773: FLdRfVar var_A0
  loc_B81776: FLdPr Me
  loc_B81779:  = Me.hWnd
  loc_B8177E: LitStr "Seleccione la carpeta de salida para los archivos generados"
  loc_B81781: FLdPr Me
  loc_B81784: MemLdStr global_76
  loc_B81787: ILdRf var_A0
  loc_B8178A: ImpAdCallI2 Proc_306_0_AC7FF8(, , )
  loc_B8178F: FStStrNoPop var_A4
  loc_B81792: FLdPr Me
  loc_B81795: MemStStrCopy
  loc_B81799: FFree1Str var_A4
  loc_B8179C: FLdPr Me
  loc_B8179F: MemLdRfVar from_stack_1.global_76
  loc_B817A2: CVarRef
  loc_B817A7: FLdRfVar var_C4
  loc_B817AA: ImpAdCallFPR4  = Trim()
  loc_B817AF: FLdRfVar var_C4
  loc_B817B2: LitVarStr var_D4, vbNullString
  loc_B817B7: HardType
  loc_B817B8: EqVarBool
  loc_B817BA: FFree1Var var_C4 = ""
  loc_B817BD: BranchF loc_B817C1
  loc_B817C0: ExitProcHresult
  loc_B817C1: FLdRfVar var_A4
  loc_B817C4: LitStr "tmp"
  loc_B817C7: FLdPr Me
  loc_B817CA: MemLdStr global_76
  loc_B817CD: FLdRfVar var_88
  loc_B817D0: NewIfNullPr IFileSystem3
  loc_B817D3: from_stack_3 = IFileSystem3.IFileSystem.BuildPath(from_stack_1v, from_stack_2v)
  loc_B817D8: ILdRf var_A4
  loc_B817DB: LitStr "\"
  loc_B817DE: ConcatStr
  loc_B817DF: FStStr var_9C
  loc_B817E2: FFree1Str var_A4
  loc_B817E5: FLdRfVar var_E6
  loc_B817E8: ILdRf var_9C
  loc_B817EB: FLdRfVar var_88
  loc_B817EE: NewIfNullPr IFileSystem3
  loc_B817F1: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B817F6: FLdI2 var_E6
  loc_B817F9: BranchF loc_B8180A
  loc_B817FC: LitStr "*.*"
  loc_B817FF: ILdRf var_9C
  loc_B81802: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B81807: Branch loc_B81812
  loc_B8180A: ILdRf var_9C
  loc_B8180D: ImpAdCallFPR4 Proc_57_53_A950F8()
  loc_B81812: ILdRf var_9C
  loc_B81815: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B8181A: ILdRf Me
  loc_B8181D: CastAd
  loc_B81820: FStAdFunc var_EC
  loc_B81823: FLdRfVar var_EC
  loc_B81826: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B8182B: FFree1Ad var_EC
  loc_B8182E: LitVar_FALSE
  loc_B81832: PopAdLdVar
  loc_B81833: FLdPr Me
  loc_B81836: VCallAd Control_ID_dgdLiquidacion
  loc_B81839: FStAdFunc var_EC
  loc_B8183C: FLdPr var_EC
  loc_B8183F: LateIdSt
  loc_B81844: FFree1Ad var_EC
  loc_B81847: Call GeneraReporte()
  loc_B8184C: FLdPr Me
  loc_B8184F: MemLdI2 bGenerado
  loc_B81852: BranchF loc_B81B82
  loc_B81855: FLdPr Me
  loc_B81858: MemLdStr global_92
  loc_B8185B: LitI2_Byte 1
  loc_B8185D: FnUBound
  loc_B8185F: CR8I4
  loc_B81860: CVarR4
  loc_B81864: PopAdLdVar
  loc_B81865: FLdPr Me
  loc_B81868: VCallAd Control_ID_pbar
  loc_B8186B: FStAdFunc var_EC
  loc_B8186E: FLdPr var_EC
  loc_B81871: LateIdSt
  loc_B81876: FFree1Ad var_EC
  loc_B81879: LitVar_TRUE var_B4
  loc_B8187C: PopAdLdVar
  loc_B8187D: FLdPr Me
  loc_B81880: VCallAd Control_ID_pbar
  loc_B81883: FStAdFunc var_EC
  loc_B81886: FLdPr var_EC
  loc_B81889: LateIdSt
  loc_B8188E: FFree1Ad var_EC
  loc_B81891: LitStr vbNullString
  loc_B81894: FStStrCopy var_90
  loc_B81897: LitI4 1
  loc_B8189C: FLdPr Me
  loc_B8189F: MemLdStr global_92
  loc_B818A2: Ary1LdPr
  loc_B818A3: MemLdStr global_84
  loc_B818A6: CI4Str
  loc_B818A7: FStR4 var_98
  loc_B818AA: LitI4 1
  loc_B818AF: FLdPr Me
  loc_B818B2: MemLdRfVar from_stack_1.global_96
  loc_B818B5: FLdPr Me
  loc_B818B8: MemLdStr global_92
  loc_B818BB: LitI2_Byte 1
  loc_B818BD: FnUBound
  loc_B818BF: ForI4 var_F4
  loc_B818C5: FLdPr Me
  loc_B818C8: MemLdStr global_96
  loc_B818CB: FLdPr Me
  loc_B818CE: MemLdStr global_92
  loc_B818D1: AryLock
  loc_B818D4: Ary1LdRf
  loc_B818D5: FStR4 var_FC
  loc_B818D8: FLdRfVar var_A4
  loc_B818DB: FLdPr Me
  loc_B818DE: MemLdStr global_96
  loc_B818E1: Call Proc_312_17_A1FEBC()
  loc_B818E6: FLdZeroAd var_A4
  loc_B818E9: FStStr var_8C
  loc_B818EC: ILdRf var_9C
  loc_B818EF: ILdRf var_8C
  loc_B818F2: ConcatStr
  loc_B818F3: FStStrNoPop var_A4
  loc_B818F6: LitStr ".html"
  loc_B818F9: ConcatStr
  loc_B818FA: ImpAdStStr MemVar_D93C84
  loc_B818FE: FFree1Str var_A4
  loc_B81901: LitI4 0
  loc_B81906: FStR4 var_FC
  loc_B81909: AryUnlock
  loc_B8190C: FLdPr Me
  loc_B8190F: MemLdStr global_96
  loc_B81912: CR8I4
  loc_B81913: CVarR4
  loc_B81917: PopAdLdVar
  loc_B81918: FLdPr Me
  loc_B8191B: VCallAd Control_ID_pbar
  loc_B8191E: FStAdFunc var_EC
  loc_B81921: FLdPr var_EC
  loc_B81924: LateIdSt
  loc_B81929: FFree1Ad var_EC
  loc_B8192C: FLdPr Me
  loc_B8192F: MemLdStr global_96
  loc_B81932: CStrI4
  loc_B81934: FStStrNoPop var_A4
  loc_B81937: LitStr "/"
  loc_B8193A: ConcatStr
  loc_B8193B: FStStrNoPop var_100
  loc_B8193E: FLdPr Me
  loc_B81941: MemLdStr global_92
  loc_B81944: LitI2_Byte 1
  loc_B81946: FnUBound
  loc_B81948: CStrI4
  loc_B8194A: FStStrNoPop var_104
  loc_B8194D: ConcatStr
  loc_B8194E: FStStrNoPop var_108
  loc_B81951: FLdPr Me
  loc_B81954: VCallAd Control_ID_ProgresoLbl
  loc_B81957: FStAdFunc var_EC
  loc_B8195A: FLdPr var_EC
  loc_B8195D: Me.Caption = from_stack_1
  loc_B81962: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B8196D: FFree1Ad var_EC
  loc_B81970: Call GeneraHTML()
  loc_B81975: ILdRf var_90
  loc_B81978: LitStr """"
  loc_B8197B: ConcatStr
  loc_B8197C: FStStrNoPop var_A4
  loc_B8197F: ImpAdLdI4 MemVar_D93C84
  loc_B81982: ConcatStr
  loc_B81983: FStStrNoPop var_100
  loc_B81986: LitStr """ "
  loc_B81989: ConcatStr
  loc_B8198A: FStStr var_90
  loc_B8198D: FFreeStr var_A4 = ""
  loc_B81994: FLdPr Me
  loc_B81997: MemLdStr global_96
  loc_B8199A: LitI4 &HFA
  loc_B8199F: ModI4
  loc_B819A0: LitI4 0
  loc_B819A5: EqI4
  loc_B819A6: FLdPr Me
  loc_B819A9: MemLdStr global_96
  loc_B819AC: FLdPr Me
  loc_B819AF: MemLdStr global_92
  loc_B819B2: LitI2_Byte 1
  loc_B819B4: FnUBound
  loc_B819B6: EqI4
  loc_B819B7: OrI4
  loc_B819B8: BranchF loc_B81B1C
  loc_B819BB: FLdPr Me
  loc_B819BE: MemLdStr global_96
  loc_B819C1: FLdPr Me
  loc_B819C4: MemLdStr global_92
  loc_B819C7: LitI2_Byte 1
  loc_B819C9: FnUBound
  loc_B819CB: EqI4
  loc_B819CC: BranchF loc_B81A12
  loc_B819CF: LitStr " ("
  loc_B819D2: ILdRf var_98
  loc_B819D5: CStrI4
  loc_B819D7: FStStrNoPop var_A4
  loc_B819DA: ConcatStr
  loc_B819DB: FStStrNoPop var_100
  loc_B819DE: LitStr "-"
  loc_B819E1: ConcatStr
  loc_B819E2: FStStrNoPop var_104
  loc_B819E5: FLdPr Me
  loc_B819E8: MemLdStr global_92
  loc_B819EB: LitI2_Byte 1
  loc_B819ED: FnUBound
  loc_B819EF: FLdPr Me
  loc_B819F2: MemLdStr global_92
  loc_B819F5: Ary1LdPr
  loc_B819F6: MemLdStr global_84
  loc_B819F9: ConcatStr
  loc_B819FA: FStStrNoPop var_108
  loc_B819FD: LitStr ")"
  loc_B81A00: ConcatStr
  loc_B81A01: FStStr var_94
  loc_B81A04: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B81A0F: Branch loc_B81A68
  loc_B81A12: LitStr " ("
  loc_B81A15: ILdRf var_98
  loc_B81A18: CStrI4
  loc_B81A1A: FStStrNoPop var_A4
  loc_B81A1D: ConcatStr
  loc_B81A1E: FStStrNoPop var_100
  loc_B81A21: LitStr "-"
  loc_B81A24: ConcatStr
  loc_B81A25: FStStrNoPop var_104
  loc_B81A28: FLdPr Me
  loc_B81A2B: MemLdStr global_96
  loc_B81A2E: FLdPr Me
  loc_B81A31: MemLdStr global_92
  loc_B81A34: Ary1LdPr
  loc_B81A35: MemLdStr global_84
  loc_B81A38: ConcatStr
  loc_B81A39: FStStrNoPop var_108
  loc_B81A3C: LitStr ")"
  loc_B81A3F: ConcatStr
  loc_B81A40: FStStr var_94
  loc_B81A43: FFreeStr var_A4 = "": var_100 = "": var_104 = ""
  loc_B81A4E: FLdPr Me
  loc_B81A51: MemLdStr global_96
  loc_B81A54: LitI4 1
  loc_B81A59: AddI4
  loc_B81A5A: FLdPr Me
  loc_B81A5D: MemLdStr global_92
  loc_B81A60: Ary1LdPr
  loc_B81A61: MemLdStr global_84
  loc_B81A64: CI4Str
  loc_B81A65: FStR4 var_98
  loc_B81A68: FLdPr Me
  loc_B81A6B: MemLdStr global_76
  loc_B81A6E: LitStr "\publicidad"
  loc_B81A71: ConcatStr
  loc_B81A72: FStStrNoPop var_A4
  loc_B81A75: ILdRf var_94
  loc_B81A78: ConcatStr
  loc_B81A79: FStStrNoPop var_100
  loc_B81A7C: LitStr ".pdf"
  loc_B81A7F: ConcatStr
  loc_B81A80: ImpAdStStr MemVar_D93030
  loc_B81A84: FFreeStr var_A4 = ""
  loc_B81A8B: ILdRf var_90
  loc_B81A8E: FnLenStr
  loc_B81A8F: LitI4 3
  loc_B81A94: SubI4
  loc_B81A95: CVarI4
  loc_B81A99: LitI4 2
  loc_B81A9E: FLdRfVar var_90
  loc_B81AA1: CVarRef
  loc_B81AA6: FLdRfVar var_E4
  loc_B81AA9: ImpAdCallFPR4  = Mid(, , )
  loc_B81AAE: FLdRfVar var_E4
  loc_B81AB1: CStrVarTmp
  loc_B81AB2: FStStr var_90
  loc_B81AB5: FFreeVar var_C4 = ""
  loc_B81ABC: LitStr vbNullString
  loc_B81ABF: ImpAdLdI4 MemVar_D93030
  loc_B81AC2: ILdRf var_90
  loc_B81AC5: ImpAdCallFPR4 Proc_57_55_AE2160(, , )
  loc_B81ACA: LitStr "Guardando PDF: '"
  loc_B81ACD: ImpAdLdI4 MemVar_D93030
  loc_B81AD0: ConcatStr
  loc_B81AD1: FStStrNoPop var_A4
  loc_B81AD4: LitStr "'"
  loc_B81AD7: ConcatStr
  loc_B81AD8: CVarStr var_C4
  loc_B81ADB: PopAdLdVar
  loc_B81ADC: FLdPr Me
  loc_B81ADF: VCallAd Control_ID_statusBar
  loc_B81AE2: FStAdFunc var_EC
  loc_B81AE5: FLdPr var_EC
  loc_B81AE8: LateIdSt
  loc_B81AED: FFree1Str var_A4
  loc_B81AF0: FFree1Ad var_EC
  loc_B81AF3: FFree1Var var_C4 = ""
  loc_B81AF6: FLdRfVar var_E6
  loc_B81AF9: ImpAdLdI4 MemVar_D93030
  loc_B81AFC: FLdRfVar var_88
  loc_B81AFF: NewIfNullPr IFileSystem3
  loc_B81B02: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B81B07: FLdI2 var_E6
  loc_B81B0A: NotI4
  loc_B81B0B: BranchF loc_B81B16
  loc_B81B0E: ImpAdCallFPR4 DoEvents()
  loc_B81B13: Branch loc_B81AF6
  loc_B81B16: LitStr vbNullString
  loc_B81B19: FStStrCopy var_90
  loc_B81B1C: ImpAdCallFPR4 DoEvents()
  loc_B81B21: FLdPr Me
  loc_B81B24: MemLdRfVar from_stack_1.global_96
  loc_B81B27: NextI4 var_F4, loc_B818C5
  loc_B81B2C: LitStr "Proceso terminado."
  loc_B81B2F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B81B34: FLdRfVar var_E6
  loc_B81B37: ILdRf var_9C
  loc_B81B3A: FLdRfVar var_88
  loc_B81B3D: NewIfNullPr IFileSystem3
  loc_B81B40: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B81B45: FLdI2 var_E6
  loc_B81B48: BranchF loc_B81B5E
  loc_B81B4B: LitStr "*.*"
  loc_B81B4E: ILdRf var_9C
  loc_B81B51: ImpAdCallFPR4 Proc_57_54_AD00F0(, )
  loc_B81B56: ILdRf var_9C
  loc_B81B59: ImpAdCallFPR4 RmDir 
  loc_B81B5E: LitVar_FALSE
  loc_B81B62: PopAdLdVar
  loc_B81B63: FLdPr Me
  loc_B81B66: VCallAd Control_ID_pbar
  loc_B81B69: FStAdFunc var_EC
  loc_B81B6C: FLdPr var_EC
  loc_B81B6F: LateIdSt
  loc_B81B74: FFree1Ad var_EC
  loc_B81B77: FLdPr Me
  loc_B81B7A: MemLdStr global_76
  loc_B81B7D: ImpAdCallFPR4 Proc_272_64_A06738()
  loc_B81B82: ILdRf Me
  loc_B81B85: CastAd
  loc_B81B88: FStAdFunc var_EC
  loc_B81B8B: FLdRfVar var_EC
  loc_B81B8E: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B81B93: FFree1Ad var_EC
  loc_B81B96: LitVarStr var_B4, vbNullString
  loc_B81B9B: PopAdLdVar
  loc_B81B9C: FLdPr Me
  loc_B81B9F: VCallAd Control_ID_statusBar
  loc_B81BA2: FStAdFunc var_EC
  loc_B81BA5: FLdPr var_EC
  loc_B81BA8: LateIdSt
  loc_B81BAD: FFree1Ad var_EC
  loc_B81BB0: FLdPr Me
  loc_B81BB3: VCallAd Control_ID_dgdLiquidacion
  loc_B81BB6: FStAdFunc var_EC
  loc_B81BB9: FLdPr var_EC
  loc_B81BBC: LateIdLdVar var_C4 DispID_13 -32767
  loc_B81BC3: CBoolVar
  loc_B81BC5: FFree1Ad var_EC
  loc_B81BC8: FFree1Var var_C4 = ""
  loc_B81BCB: BranchF loc_B81BE5
  loc_B81BCE: FLdPr Me
  loc_B81BD1: VCallAd Control_ID_dgdLiquidacion
  loc_B81BD4: FStAdFunc var_EC
  loc_B81BD7: FLdPr var_EC
  loc_B81BDA: LateIdCall
  loc_B81BE2: FFree1Ad var_EC
  loc_B81BE5: ExitProcHresult
  loc_B81BE6: FLdRfVar var_A0
  loc_B81BE9: ImpAdCallI2 Err 'rtcErrObj
  loc_B81BEE: FStAdFunc var_EC
  loc_B81BF1: FLdPr var_EC
  loc_B81BF4:  = Err.Number
  loc_B81BF9: ILdRf var_A0
  loc_B81BFC: FStR4 var_10C
  loc_B81BFF: FFree1Ad var_EC
  loc_B81C02: ILdRf var_10C
  loc_B81C05: LitI4 &H4C
  loc_B81C0A: EqI4
  loc_B81C0B: BranchF loc_B81C11
  loc_B81C0E: Branch loc_B81C6D
  loc_B81C11: LitStr "Error "
  loc_B81C14: FLdRfVar var_A0
  loc_B81C17: ImpAdCallI2 Err 'rtcErrObj
  loc_B81C1C: FStAdFunc var_EC
  loc_B81C1F: FLdPr var_EC
  loc_B81C22:  = Err.Number
  loc_B81C27: ILdRf var_A0
  loc_B81C2A: CStrI4
  loc_B81C2C: FStStrNoPop var_A4
  loc_B81C2F: ConcatStr
  loc_B81C30: FStStrNoPop var_100
  loc_B81C33: LitStr ": "
  loc_B81C36: ConcatStr
  loc_B81C37: FStStrNoPop var_108
  loc_B81C3A: FLdRfVar var_104
  loc_B81C3D: ImpAdCallI2 Err 'rtcErrObj
  loc_B81C42: FStAdFunc var_110
  loc_B81C45: FLdPr var_110
  loc_B81C48:  = Err.Description
  loc_B81C4D: ILdRf var_104
  loc_B81C50: ConcatStr
  loc_B81C51: FStStrNoPop var_114
  loc_B81C54: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B81C59: FFreeStr var_A4 = "": var_100 = "": var_108 = "": var_104 = ""
  loc_B81C66: FFreeAd var_EC = ""
  loc_B81C6D: ExitProcHresult
  loc_B81C6E: CopyBytes
End Sub

Private Sub cmdSalir_Click() 'A01758
  'Data Table: 4C11B4
  loc_A01728: LitVarStr var_94, "Cerrando..."
  loc_A0172D: PopAdLdVar
  loc_A0172E: FLdPr Me
  loc_A01731: VCallAd Control_ID_statusBar
  loc_A01734: FStAdFunc var_A8
  loc_A01737: FLdPr var_A8
  loc_A0173A: LateIdSt
  loc_A0173F: FFree1Ad var_A8
  loc_A01742: ILdRf Me
  loc_A01745: FStAdNoPop
  loc_A01749: ImpAdLdRf MemVar_D9C5D8
  loc_A0174C: NewIfNullPr Global
  loc_A0174F: Global.Unload from_stack_1
  loc_A01754: FFree1Ad var_A8
  loc_A01757: ExitProcHresult
End Sub

Private Sub OrdeLipuHastaMsk_UnknownEvent_0 '9BF090
  'Data Table: 4C11B4
  loc_9BF07C: FLdPr Me
  loc_9BF07F: VCallAd Control_ID_OrdeLipuHastaMsk
  loc_9BF082: CVarAd
  loc_9BF086: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF08B: FFree1Var var_94 = ""
  loc_9BF08E: ExitProcHresult
End Sub

Private Sub OrdeLipuHastaMsk_UnknownEvent_8 '9AFC4C
  'Data Table: 4C11B4
  loc_9AFC44: LitI2_Byte &HFF
  loc_9AFC46: Call Proc_312_19_AF444C()
  loc_9AFC4B: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4C2330
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C233F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5E5BC
  'Data Table: 4C11B4
  loc_A5E568: LitI4 0
  loc_A5E56D: LitI4 2
  loc_A5E572: FLdRfVar var_88
  loc_A5E575: Redim
  loc_A5E57F: FLdPr Me
  loc_A5E582: VCallAd Control_ID_dgdLiquidacion
  loc_A5E585: CVarAd
  loc_A5E589: ParmAry1St
  loc_A5E58F: FLdPr Me
  loc_A5E592: VCallAd Control_ID_OrdeLipuDesdeMsk
  loc_A5E595: CVarAd
  loc_A5E599: ParmAry1St
  loc_A5E59F: FLdPr Me
  loc_A5E5A2: VCallAd Control_ID_OrdeLipuHastaMsk
  loc_A5E5A5: CVarAd
  loc_A5E5A9: ParmAry1St
  loc_A5E5AF: FLdRfVar var_88
  loc_A5E5B2: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5E5B7: FLdRfVar var_88
  loc_A5E5BA: Erase
  loc_A5E5BB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B55E60
  'Data Table: 4C11B4
  loc_B55AF4: FLdPr Me
  loc_B55AF7: MemLdI2 bGenerado
  loc_B55AFA: BranchF loc_B55AFE
  loc_B55AFD: ExitProcHresult
  loc_B55AFE: LitVarStr var_94, "Generando reporte..."
  loc_B55B03: PopAdLdVar
  loc_B55B04: FLdPr Me
  loc_B55B07: VCallAd Control_ID_statusBar
  loc_B55B0A: FStAdFunc var_A8
  loc_B55B0D: FLdPr var_A8
  loc_B55B10: LateIdSt
  loc_B55B15: FFree1Ad var_A8
  loc_B55B18: LitI4 &HB
  loc_B55B1D: CI2I4
  loc_B55B1E: FLdPr Me
  loc_B55B21: Me.MousePointer = from_stack_1
  loc_B55B26: FLdRfVar var_AC
  loc_B55B29: FLdPr Me
  loc_B55B2C: MemLdRfVar from_stack_1.global_80
  loc_B55B2F: NewIfNullPr clsliquidacion
  loc_B55B32: from_stack_1 = clsliquidacion.RecordCount
  loc_B55B37: ILdRf var_AC
  loc_B55B3A: LitI4 1
  loc_B55B3F: LtI4
  loc_B55B40: BranchF loc_B55B4E
  loc_B55B43: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B55B46: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B55B4B: Branch loc_B55E37
  loc_B55B4E: Call Proc_312_18_AD1650()
  loc_B55B53: FLdPr Me
  loc_B55B56: MemLdRfVar from_stack_1.global_84
  loc_B55B59: NewIfNullAd
  loc_B55B5C: FStAd var_B0 
  loc_B55B60: LitStr "SELECT liqupubl.CodiCome, liqupubl.TipoVenc, OrdeLipu, liqupubl.FeacLipu, liqupubl.BimeLiqu, sum(TotaLipu) as TotaLipu, boleto.PeriBole, boleto.NumeBole, boleto.RecaBole,"
  loc_B55B63: LitStr " boleto.FeveBole as FeveLipu, boleto.TotaBole, boleto.CodiUsua, boleto.CucuPers, p1.DetaPers, ifnull(p2.DetaPers,'') as Vinculo, RazoCome, DeudLipu, (IFNULL(ImpoLipu,0)-IFNULL(TotaLpde,0)) as ImpoLipu, (ExenLipu+DescLipu) as DescLipu, IFNULL(lipudeta.TotaLpde,0) as CEmision,"
  loc_B55B66: ConcatStr
  loc_B55B67: FStStrNoPop var_B4
  loc_B55B6A: LitStr " CallLipu as DetaCall, NucaLipu, BarrLipu as DetaBarr, ManzLipu, CasaLipu, UbicLipu, LocaLipu as DetaLoca, CopoLipu,"
  loc_B55B6D: ConcatStr
  loc_B55B6E: FStStrNoPop var_B8
  loc_B55B71: LitStr " IFNULL(domicilio.calle,'') as CallLipuReal, IFNULL(domicilio.NumeCalle,'0') as NucaLipuReal, IFNULL(domicilio.barrio,'') as BarrLipuReal, IFNULL(domicilio.Manzana,'') as ManzLipuReal, IFNULL(domicilio.Casa,'') as CasaLipuReal,"
  loc_B55B74: ConcatStr
  loc_B55B75: FStStrNoPop var_BC
  loc_B55B78: LitStr " concat(ifnull(domicilio.Monoblock,''),IF(ifnull(domicilio.Dpto,'')<>'',' - ',''),ifnull(domicilio.Dpto,''),IF(ifnull(domicilio.Planta,'')<>'',' - ',''),ifnull(domicilio.Planta,''),IF(ifnull(domicilio.NroLocal,'')<>'',' - ',''), ifnull(domicilio.NroLocal,''))  as UbicLipuReal,"
  loc_B55B7B: ConcatStr
  loc_B55B7C: FStStrNoPop var_C0
  loc_B55B7F: LitStr " IFNULL(domicilio.Localidad,'') as LocaLipuReal, IFNULL(domicilio.CodPostal,'0') as CopoLipuReal, PlanLipu, SectLipu, Orden,"
  loc_B55B82: ConcatStr
  loc_B55B83: FStStrNoPop var_C4
  loc_B55B86: LitStr " (SELECT cast(group_concat(DISTINCT if(lq2.TipoVenc=1,lq2.BimeLiqu,'anual') ORDER BY lq2.TipoVenc, lq2.BimeLiqu ASC SEPARATOR ', ') as CHAR) FROM liqupubl as lq2 WHERE lq2.TipoLipu = liqupubl.TipoLipu AND FeacLipu is not null AND lq2.PeriLiqu = liqupubl.PeriLiqu AND lq2.CodiTili = liqupubl.CodiTili AND lq2.NumeLiqu = liqupubl.NumeLiqu AND lq2.OrdeLipu = liqupubl.OrdeLipu) as Bimestres"
  loc_B55B89: ConcatStr
  loc_B55B8A: FStStrNoPop var_C8
  loc_B55B8D: LitStr " FROM liqupubl"
  loc_B55B90: ConcatStr
  loc_B55B91: FStStrNoPop var_CC
  loc_B55B94: LitStr " INNER JOIN boleto ON boleto.CodiOfic = 6 AND boleto.CuenCtct = liqupubl.CodiCome AND boleto.PeriBole = liqupubl.PeriBole AND boleto.NumeBole = liqupubl.NumeBole"
  loc_B55B97: ConcatStr
  loc_B55B98: FStStrNoPop var_D0
  loc_B55B9B: LitStr " LEFT JOIN lipudeta ON lipudeta.PeriLiqu = liqupubl.PeriLiqu AND lipudeta.CodiTili = liqupubl.CodiTili AND lipudeta.NumeLiqu = liqupubl.NumeLiqu AND lipudeta.BimeLiqu = liqupubl.BimeLiqu AND lipudeta.CodiConc = '13020401' AND lipudeta.CodiCome = liqupubl.CodiCome AND lipudeta.CodiSubr=999"
  loc_B55B9E: ConcatStr
  loc_B55B9F: FStStrNoPop var_D4
  loc_B55BA2: LitStr " LEFT JOIN publicidad ON publicidad.CodiCome = boleto.CuenCtct"
  loc_B55BA5: ConcatStr
  loc_B55BA6: FStStrNoPop var_D8
  loc_B55BA9: LitStr " LEFT JOIN infogov.persona as p1 ON p1.CucuPers = liqupubl.CucuPers"
  loc_B55BAC: ConcatStr
  loc_B55BAD: FStStrNoPop var_DC
  loc_B55BB0: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = 6 AND relacion.CuenCtct = publicidad.CodiCome AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL"
  loc_B55BB3: ConcatStr
  loc_B55BB4: FStStrNoPop var_E0
  loc_B55BB7: LitStr " LEFT JOIN infogov.persona as p2 ON p2.CucuPers = relacion.CucuPers"
  loc_B55BBA: ConcatStr
  loc_B55BBB: FStStrNoPop var_E4
  loc_B55BBE: LitStr " LEFT JOIN domicilio ON domicilio.CodiCome = liqupubl.CodiCome AND domicilio.CodiOfic = 6 AND domicilio.Tipo = 'COMERCIAL'"
  loc_B55BC1: ConcatStr
  loc_B55BC2: FStStrNoPop var_E8
  loc_B55BC5: LitStr " WHERE TipoLipu = 'Aforo' AND FeacLipu is not null"
  loc_B55BC8: ConcatStr
  loc_B55BC9: FStStrNoPop var_EC
  loc_B55BCC: LitStr " AND liqupubl.PeriLiqu = "
  loc_B55BCF: ConcatStr
  loc_B55BD0: FStStrNoPop var_F4
  loc_B55BD3: FLdRfVar var_EE
  loc_B55BD6: FLdPr Me
  loc_B55BD9: MemLdRfVar from_stack_1.global_80
  loc_B55BDC: NewIfNullPr clsliquidacion
  loc_B55BDF: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B55BE4: FLdI2 var_EE
  loc_B55BE7: CStrUI1
  loc_B55BE9: FStStrNoPop var_F8
  loc_B55BEC: ConcatStr
  loc_B55BED: FStStrNoPop var_FC
  loc_B55BF0: LitStr " AND liqupubl.CodiTili = "
  loc_B55BF3: ConcatStr
  loc_B55BF4: FStStrNoPop var_104
  loc_B55BF7: FLdRfVar var_FE
  loc_B55BFA: FLdPr Me
  loc_B55BFD: MemLdRfVar from_stack_1.global_80
  loc_B55C00: NewIfNullPr clsliquidacion
  loc_B55C03: from_stack_1 = clsliquidacion.CodiTili
  loc_B55C08: FLdUI1
  loc_B55C0C: CStrI2
  loc_B55C0E: FStStrNoPop var_108
  loc_B55C11: ConcatStr
  loc_B55C12: FStStrNoPop var_10C
  loc_B55C15: LitStr " AND liqupubl.NumeLiqu = "
  loc_B55C18: ConcatStr
  loc_B55C19: FStStrNoPop var_114
  loc_B55C1C: FLdRfVar var_10E
  loc_B55C1F: FLdPr Me
  loc_B55C22: MemLdRfVar from_stack_1.global_80
  loc_B55C25: NewIfNullPr clsliquidacion
  loc_B55C28: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B55C2D: FLdI2 var_10E
  loc_B55C30: CStrUI1
  loc_B55C32: FStStrNoPop var_118
  loc_B55C35: ConcatStr
  loc_B55C36: FStStrNoPop var_11C
  loc_B55C39: FLdPr Me
  loc_B55C3C: MemLdStr global_112
  loc_B55C3F: ConcatStr
  loc_B55C40: FStStrNoPop var_120
  loc_B55C43: FLdPr Me
  loc_B55C46: MemLdStr global_116
  loc_B55C49: ConcatStr
  loc_B55C4A: FStStrNoPop var_124
  loc_B55C4D: LitStr " GROUP BY OrdeLipu, TipoVenc,  BimeLiqu, liqupubl.PeriBole, liqupubl.NumeBole HAVING TotaLipu <> 0 ORDER BY OrdeLipu, BimeLiqu, liqupubl.PeriBole, liqupubl.NumeBole"
  loc_B55C50: ConcatStr
  loc_B55C51: FStStrNoPop var_128
  loc_B55C54: FLdPr var_B0
  loc_B55C57: Call clsliqupubl.RedefineRS(from_stack_1v)
  loc_B55C5C: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_B55C95: FLdRfVar var_AC
  loc_B55C98: FLdPr var_B0
  loc_B55C9B: from_stack_1 = clsliqupubl.RecordCount
  loc_B55CA0: ILdRf var_AC
  loc_B55CA3: LitI4 1
  loc_B55CA8: LtI4
  loc_B55CA9: BranchF loc_B55CB7
  loc_B55CAC: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B55CAF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B55CB4: Branch loc_B55E37
  loc_B55CB7: LitI4 0
  loc_B55CBC: LitI4 0
  loc_B55CC1: FLdPr Me
  loc_B55CC4: MemLdRfVar from_stack_1.global_92
  loc_B55CC7: Redim
  loc_B55CD1: LitI4 0
  loc_B55CD6: FLdPr Me
  loc_B55CD9: MemStI4 global_96
  loc_B55CDC: LitI2_Byte 0
  loc_B55CDE: FLdPr Me
  loc_B55CE1: MemStI2 global_104
  loc_B55CE4: FLdPr var_B0
  loc_B55CE7: Call clsliqupubl.MoveFirst()
  loc_B55CEC: FLdRfVar var_AC
  loc_B55CEF: FLdPr var_B0
  loc_B55CF2: from_stack_1 = clsliqupubl.RecordCount
  loc_B55CF7: ILdRf var_AC
  loc_B55CFA: CR8I4
  loc_B55CFB: CVarR4
  loc_B55CFF: PopAdLdVar
  loc_B55D00: FLdPr Me
  loc_B55D03: VCallAd Control_ID_pbar
  loc_B55D06: FStAdFunc var_A8
  loc_B55D09: FLdPr var_A8
  loc_B55D0C: LateIdSt
  loc_B55D11: FFree1Ad var_A8
  loc_B55D14: LitVar_TRUE var_94
  loc_B55D17: PopAdLdVar
  loc_B55D18: FLdPr Me
  loc_B55D1B: VCallAd Control_ID_pbar
  loc_B55D1E: FStAdFunc var_A8
  loc_B55D21: FLdPr var_A8
  loc_B55D24: LateIdSt
  loc_B55D29: FFree1Ad var_A8
  loc_B55D2C: FLdRfVar var_EE
  loc_B55D2F: FLdPr var_B0
  loc_B55D32: from_stack_1 = clsliqupubl.EOF
  loc_B55D37: FLdI2 var_EE
  loc_B55D3A: NotI4
  loc_B55D3B: BranchF loc_B55E10
  loc_B55D3E: FLdRfVar var_AC
  loc_B55D41: FLdPr var_B0
  loc_B55D44: from_stack_1 = clsliqupubl.AbsolutePosition
  loc_B55D49: ILdRf var_AC
  loc_B55D4C: CR8I4
  loc_B55D4D: CVarR4
  loc_B55D51: PopAdLdVar
  loc_B55D52: FLdPr Me
  loc_B55D55: VCallAd Control_ID_pbar
  loc_B55D58: FStAdFunc var_A8
  loc_B55D5B: FLdPr var_A8
  loc_B55D5E: LateIdSt
  loc_B55D63: FFree1Ad var_A8
  loc_B55D66: FLdRfVar var_AC
  loc_B55D69: FLdPr var_B0
  loc_B55D6C: from_stack_1 = clsliqupubl.AbsolutePosition
  loc_B55D71: FLdRfVar var_12C
  loc_B55D74: FLdPr var_B0
  loc_B55D77: from_stack_1 = clsliqupubl.RecordCount
  loc_B55D7C: LitI4 1
  loc_B55D81: LitI4 1
  loc_B55D86: LitVarStr var_A4, "0" & Chr(37)
  loc_B55D8B: FStVarCopyObj var_14C
  loc_B55D8E: FLdRfVar var_14C
  loc_B55D91: ILdRf var_AC
  loc_B55D94: CR8I4
  loc_B55D95: ILdRf var_12C
  loc_B55D98: CR8I4
  loc_B55D99: DivR8
  loc_B55D9A: CVarR8
  loc_B55D9E: ImpAdCallI2 Format$(, )
  loc_B55DA3: FStStrNoPop var_B4
  loc_B55DA6: FLdPr Me
  loc_B55DA9: VCallAd Control_ID_ProgresoLbl
  loc_B55DAC: FStAdFunc var_A8
  loc_B55DAF: FLdPr var_A8
  loc_B55DB2: Me.Caption = from_stack_1
  loc_B55DB7: FFree1Str var_B4
  loc_B55DBA: FFree1Ad var_A8
  loc_B55DBD: FFreeVar var_13C = ""
  loc_B55DC4: FLdPr Me
  loc_B55DC7: MemLdStr global_96
  loc_B55DCA: FLdPr Me
  loc_B55DCD: MemLdStr global_92
  loc_B55DD0: Ary1LdPr
  loc_B55DD1: MemLdStr global_76
  loc_B55DD4: FLdRfVar var_AC
  loc_B55DD7: FLdPr var_B0
  loc_B55DDA: from_stack_1 = clsliqupubl.CodiCome
  loc_B55DDF: ILdRf var_AC
  loc_B55DE2: CStrI4
  loc_B55DE4: FStStrNoPop var_B4
  loc_B55DE7: NeStr
  loc_B55DE9: FFree1Str var_B4
  loc_B55DEC: BranchF loc_B55DF7
  loc_B55DEF: Call Proc_312_20_BE7824()
  loc_B55DF4: Branch loc_B55DFC
  loc_B55DF7: Call Proc_312_22_BDC79C()
  loc_B55DFC: FLdPr Me
  loc_B55DFF: MemLdI2 global_104
  loc_B55E02: BranchF loc_B55E08
  loc_B55E05: Branch loc_B55E37
  loc_B55E08: ImpAdCallFPR4 DoEvents()
  loc_B55E0D: Branch loc_B55D2C
  loc_B55E10: LitVar_FALSE
  loc_B55E14: PopAdLdVar
  loc_B55E15: FLdPr Me
  loc_B55E18: VCallAd Control_ID_pbar
  loc_B55E1B: FStAdFunc var_A8
  loc_B55E1E: FLdPr var_A8
  loc_B55E21: LateIdSt
  loc_B55E26: FFree1Ad var_A8
  loc_B55E29: LitNothing
  loc_B55E2B: FStAd var_B0 
  loc_B55E2F: LitI2_Byte &HFF
  loc_B55E31: FLdPr Me
  loc_B55E34: MemStI2 bGenerado
  loc_B55E37: LitI4 0
  loc_B55E3C: CI2I4
  loc_B55E3D: FLdPr Me
  loc_B55E40: Me.MousePointer = from_stack_1
  loc_B55E45: LitVarStr var_94, vbNullString
  loc_B55E4A: PopAdLdVar
  loc_B55E4B: FLdPr Me
  loc_B55E4E: VCallAd Control_ID_statusBar
  loc_B55E51: FStAdFunc var_A8
  loc_B55E54: FLdPr var_A8
  loc_B55E57: LateIdSt
  loc_B55E5C: FFree1Ad var_A8
  loc_B55E5F: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A68814
  'Data Table: 4C11B4
  loc_A687A4: FLdRfVar var_88
  loc_A687A7: LitI2_Byte 0
  loc_A687A9: LitI2_Byte &HFF
  loc_A687AB: ImpAdLdI4 MemVar_D93C84
  loc_A687AE: FLdPr Me
  loc_A687B1: MemLdRfVar from_stack_1.global_56
  loc_A687B4: NewIfNullPr IFileSystem3
  loc_A687B7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A687BC: ILdRf var_88
  loc_A687BF: FLdPr Me
  loc_A687C2: MemStVarAd
  loc_A687C6: FFree1Ad var_88
  loc_A687C9: LitI2_Byte 0
  loc_A687CB: ImpAdStI2 MemVar_D93C8A
  loc_A687CE: Call Proc_312_23_C34370()
  loc_A687D3: Call Proc_312_24_BED438()
  loc_A687D8: Call Proc_312_25_B5DA2C()
  loc_A687DD: Call Proc_312_26_BB03A4()
  loc_A687E2: Call Proc_312_27_AFB79C()
  loc_A687E7: Call Proc_312_28_9F5E10()
  loc_A687EC: FLdPr Me
  loc_A687EF: MemLdRfVar from_stack_1.global_60
  loc_A687F2: LdPrVar
  loc_A687F4: LateMemCall
  loc_A687FA: FLdPr Me
  loc_A687FD: MemLdStr global_76
  loc_A68800: LitStr vbNullString
  loc_A68803: EqStr
  loc_A68805: BranchF loc_A68810
  loc_A68808: LitStr vbNullString
  loc_A6880B: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A68810: ExitProcHresult
End Sub

Private Function Proc_312_16_9AFD2C() '9AFD2C
  'Data Table: 4C11B4
  loc_9AFD24: LitI2_Byte &HFF
  loc_9AFD26: Call Proc_312_19_AF444C()
  loc_9AFD2B: ExitProcHresult
End Function

Private Function Proc_312_17_A1FEBC(arg_C) 'A1FEBC
  'Data Table: 4C11B4
  loc_A1FE80: ZeroRetVal
  loc_A1FE82: LitI4 1
  loc_A1FE87: LitI4 1
  loc_A1FE8C: LitVarStr var_A8, "000000"
  loc_A1FE91: FStVarCopyObj var_B8
  loc_A1FE94: FLdRfVar var_B8
  loc_A1FE97: FLdRfVar arg_C
  loc_A1FE9A: CVarRef
  loc_A1FE9F: FLdRfVar var_C8
  loc_A1FEA2: ImpAdCallFPR4  = Format(, )
  loc_A1FEA7: FLdRfVar var_C8
  loc_A1FEAA: CStrVarTmp
  loc_A1FEAB: FStStr var_88
  loc_A1FEAE: FFreeVar var_B8 = ""
  loc_A1FEB5: ExitProcCbHresult
End Function

Private Function Proc_312_18_AD1650() 'AD1650
  'Data Table: 4C11B4
  loc_AD153C: FLdPr Me
  loc_AD153F: VCallAd Control_ID_OrdeLipuDesdeMsk
  loc_AD1542: FStAdFunc var_88
  loc_AD1545: FLdPr var_88
  loc_AD1548: LateIdLdVar var_98 DispID_22 0
  loc_AD154F: PopAd
  loc_AD1551: FLdPr Me
  loc_AD1554: VCallAd Control_ID_OrdeLipuDesdeMsk
  loc_AD1557: FStAdFunc var_A0
  loc_AD155A: FLdPr var_A0
  loc_AD155D: LateIdLdVar var_B0 DispID_22 0
  loc_AD1564: PopAd
  loc_AD1566: LitVarStr var_E4, vbNullString
  loc_AD156B: FStVarCopyObj var_F4
  loc_AD156E: FLdRfVar var_F4
  loc_AD1571: LitStr " AND liqupubl.OrdeLipu >= "
  loc_AD1574: FLdRfVar var_B0
  loc_AD1577: CStrVarTmp
  loc_AD1578: FStStrNoPop var_B4
  loc_AD157B: ConcatStr
  loc_AD157C: CVarStr var_D4
  loc_AD157F: FLdRfVar var_98
  loc_AD1582: CStrVarTmp
  loc_AD1583: FStStrNoPop var_9C
  loc_AD1586: LitStr vbNullString
  loc_AD1589: NeStr
  loc_AD158B: CVarBoolI2 var_C4
  loc_AD158F: FLdRfVar var_104
  loc_AD1592: ImpAdCallFPR4  = IIf(, , )
  loc_AD1597: FLdRfVar var_104
  loc_AD159A: CStrVarTmp
  loc_AD159B: FStStrNoPop var_108
  loc_AD159E: FLdPr Me
  loc_AD15A1: MemStStrCopy
  loc_AD15A5: FFreeStr var_9C = "": var_B4 = ""
  loc_AD15AE: FFreeAd var_88 = ""
  loc_AD15B5: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_AD15C4: FLdPr Me
  loc_AD15C7: VCallAd Control_ID_OrdeLipuHastaMsk
  loc_AD15CA: FStAdFunc var_88
  loc_AD15CD: FLdPr var_88
  loc_AD15D0: LateIdLdVar var_98 DispID_22 0
  loc_AD15D7: PopAd
  loc_AD15D9: FLdPr Me
  loc_AD15DC: VCallAd Control_ID_OrdeLipuHastaMsk
  loc_AD15DF: FStAdFunc var_A0
  loc_AD15E2: FLdPr var_A0
  loc_AD15E5: LateIdLdVar var_B0 DispID_22 0
  loc_AD15EC: PopAd
  loc_AD15EE: LitVarStr var_E4, vbNullString
  loc_AD15F3: FStVarCopyObj var_F4
  loc_AD15F6: FLdRfVar var_F4
  loc_AD15F9: LitStr " AND liqupubl.OrdeLipu <= "
  loc_AD15FC: FLdRfVar var_B0
  loc_AD15FF: CStrVarTmp
  loc_AD1600: FStStrNoPop var_B4
  loc_AD1603: ConcatStr
  loc_AD1604: CVarStr var_D4
  loc_AD1607: FLdRfVar var_98
  loc_AD160A: CStrVarTmp
  loc_AD160B: FStStrNoPop var_9C
  loc_AD160E: LitStr vbNullString
  loc_AD1611: NeStr
  loc_AD1613: CVarBoolI2 var_C4
  loc_AD1617: FLdRfVar var_104
  loc_AD161A: ImpAdCallFPR4  = IIf(, , )
  loc_AD161F: FLdRfVar var_104
  loc_AD1622: CStrVarTmp
  loc_AD1623: FStStrNoPop var_108
  loc_AD1626: FLdPr Me
  loc_AD1629: MemStStrCopy
  loc_AD162D: FFreeStr var_9C = "": var_B4 = ""
  loc_AD1636: FFreeAd var_88 = ""
  loc_AD163D: FFreeVar var_98 = "": var_B0 = "": var_C4 = "": var_D4 = "": var_F4 = ""
  loc_AD164C: ExitProcHresult
End Function

Private Function Proc_312_19_AF444C(arg_C) 'AF444C
  'Data Table: 4C11B4
  loc_AF42C4: from_stack_1v = Proc_312_18_AD1650()
  loc_AF42C9: FLdPr Me
  loc_AF42CC: MemLdRfVar from_stack_1.global_84
  loc_AF42CF: NewIfNullAd
  loc_AF42D2: FStAd var_88 
  loc_AF42D6: LitStr "SELECT OrdeLipu, sum(TotaLipu) as TotaLipu"
  loc_AF42D9: LitStr " FROM liqupubl"
  loc_AF42DC: ConcatStr
  loc_AF42DD: FStStrNoPop var_8C
  loc_AF42E0: LitStr " WHERE TipoLipu = 'Aforo' AND FeacLipu is not null"
  loc_AF42E3: ConcatStr
  loc_AF42E4: FStStrNoPop var_90
  loc_AF42E7: LitStr " AND liqupubl.PeriLiqu = "
  loc_AF42EA: ConcatStr
  loc_AF42EB: FStStrNoPop var_98
  loc_AF42EE: FLdRfVar var_92
  loc_AF42F1: FLdPr Me
  loc_AF42F4: MemLdRfVar from_stack_1.global_80
  loc_AF42F7: NewIfNullPr clsliquidacion
  loc_AF42FA: from_stack_1 = clsliquidacion.PeriLiqu
  loc_AF42FF: FLdI2 var_92
  loc_AF4302: CStrUI1
  loc_AF4304: FStStrNoPop var_9C
  loc_AF4307: ConcatStr
  loc_AF4308: FStStrNoPop var_A0
  loc_AF430B: LitStr " AND liqupubl.CodiTili = "
  loc_AF430E: ConcatStr
  loc_AF430F: FStStrNoPop var_A8
  loc_AF4312: FLdRfVar var_A2
  loc_AF4315: FLdPr Me
  loc_AF4318: MemLdRfVar from_stack_1.global_80
  loc_AF431B: NewIfNullPr clsliquidacion
  loc_AF431E: from_stack_1 = clsliquidacion.CodiTili
  loc_AF4323: FLdUI1
  loc_AF4327: CStrI2
  loc_AF4329: FStStrNoPop var_AC
  loc_AF432C: ConcatStr
  loc_AF432D: FStStrNoPop var_B0
  loc_AF4330: LitStr " AND liqupubl.NumeLiqu = "
  loc_AF4333: ConcatStr
  loc_AF4334: FStStrNoPop var_B8
  loc_AF4337: FLdRfVar var_B2
  loc_AF433A: FLdPr Me
  loc_AF433D: MemLdRfVar from_stack_1.global_80
  loc_AF4340: NewIfNullPr clsliquidacion
  loc_AF4343: from_stack_1 = clsliquidacion.NumeLiqu
  loc_AF4348: FLdI2 var_B2
  loc_AF434B: CStrUI1
  loc_AF434D: FStStrNoPop var_BC
  loc_AF4350: ConcatStr
  loc_AF4351: FStStrNoPop var_C0
  loc_AF4354: FLdPr Me
  loc_AF4357: MemLdStr global_112
  loc_AF435A: ConcatStr
  loc_AF435B: FStStrNoPop var_C4
  loc_AF435E: FLdPr Me
  loc_AF4361: MemLdStr global_116
  loc_AF4364: ConcatStr
  loc_AF4365: FStStrNoPop var_C8
  loc_AF4368: LitStr " GROUP BY CodiCome HAVING TotaLipu <> 0 AND OrdeLipu > 0 ORDER BY OrdeLipu"
  loc_AF436B: ConcatStr
  loc_AF436C: FStStrNoPop var_CC
  loc_AF436F: FLdPr var_88
  loc_AF4372: Call clsliqupubl.RedefineRS(from_stack_1v)
  loc_AF4377: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AF4396: FLdRfVar var_D0
  loc_AF4399: FLdPr var_88
  loc_AF439C: from_stack_1 = clsliqupubl.RecordCount
  loc_AF43A1: ILdRf var_D0
  loc_AF43A4: LitI4 0
  loc_AF43A9: GtI4
  loc_AF43AA: BranchF loc_AF4419
  loc_AF43AD: FLdI2 arg_C
  loc_AF43B0: BranchF loc_AF4419
  loc_AF43B3: FLdPr var_88
  loc_AF43B6: Call clsliqupubl.MoveFirst()
  loc_AF43BB: FLdRfVar var_D0
  loc_AF43BE: FLdPr var_88
  loc_AF43C1: from_stack_1 = clsliqupubl.OrdeLipu
  loc_AF43C6: ILdRf var_D0
  loc_AF43C9: CStrI4
  loc_AF43CB: CVarStr var_E0
  loc_AF43CE: PopAdLdVar
  loc_AF43CF: FLdPr Me
  loc_AF43D2: VCallAd Control_ID_OrdeLipuDesdeMsk
  loc_AF43D5: FStAdFunc var_F4
  loc_AF43D8: FLdPr var_F4
  loc_AF43DB: LateIdSt
  loc_AF43E0: FFree1Ad var_F4
  loc_AF43E3: FFree1Var var_E0 = ""
  loc_AF43E6: FLdPr var_88
  loc_AF43E9: Call clsliqupubl.MoveLast()
  loc_AF43EE: FLdRfVar var_D0
  loc_AF43F1: FLdPr var_88
  loc_AF43F4: from_stack_1 = clsliqupubl.OrdeLipu
  loc_AF43F9: ILdRf var_D0
  loc_AF43FC: CStrI4
  loc_AF43FE: CVarStr var_E0
  loc_AF4401: PopAdLdVar
  loc_AF4402: FLdPr Me
  loc_AF4405: VCallAd Control_ID_OrdeLipuHastaMsk
  loc_AF4408: FStAdFunc var_F4
  loc_AF440B: FLdPr var_F4
  loc_AF440E: LateIdSt
  loc_AF4413: FFree1Ad var_F4
  loc_AF4416: FFree1Var var_E0 = ""
  loc_AF4419: FLdRfVar var_D0
  loc_AF441C: FLdPr var_88
  loc_AF441F: from_stack_1 = clsliqupubl.RecordCount
  loc_AF4424: ILdRf var_D0
  loc_AF4427: CStrI4
  loc_AF4429: FStStrNoPop var_8C
  loc_AF442C: FLdPr Me
  loc_AF442F: VCallAd Control_ID_ProgresoLbl
  loc_AF4432: FStAdFunc var_F4
  loc_AF4435: FLdPr var_F4
  loc_AF4438: Me.Caption = from_stack_1
  loc_AF443D: FFree1Str var_8C
  loc_AF4440: FFree1Ad var_F4
  loc_AF4443: LitNothing
  loc_AF4445: FStAd var_88 
  loc_AF4449: ExitProcHresult
End Function

Private Function Proc_312_20_BE7824() 'BE7824
  'Data Table: 4C11B4
  loc_BE706C: FLdPr Me
  loc_BE706F: MemLdStr global_96
  loc_BE7072: LitI4 1
  loc_BE7077: AddI4
  loc_BE7078: FLdPr Me
  loc_BE707B: MemStI4 global_96
  loc_BE707E: LitI2_Byte 0
  loc_BE7080: CUI1I2
  loc_BE7082: FLdPr Me
  loc_BE7085: MemStUI1
  loc_BE7089: LitI4 0
  loc_BE708E: FLdPr Me
  loc_BE7091: MemLdStr global_96
  loc_BE7094: FLdPr Me
  loc_BE7097: MemLdRfVar from_stack_1.global_92
  loc_BE709A: RedimPreserve
  loc_BE70A4: FLdPr Me
  loc_BE70A7: MemLdRfVar from_stack_1.global_84
  loc_BE70AA: NewIfNullAd
  loc_BE70AD: FStAd var_88 
  loc_BE70B1: FLdRfVar var_8C
  loc_BE70B4: FLdPr var_88
  loc_BE70B7: from_stack_1 = clsliqupubl.CucuPers
  loc_BE70BC: LitI2_Byte 0
  loc_BE70BE: LitVar_Missing var_C0
  loc_BE70C1: LitI2_Byte 0
  loc_BE70C3: FLdZeroAd var_8C
  loc_BE70C6: CVarStr var_A0
  loc_BE70C9: PopAdLdVar
  loc_BE70CA: FLdPr Me
  loc_BE70CD: MemLdStr global_96
  loc_BE70D0: FLdPr Me
  loc_BE70D3: MemLdStr global_92
  loc_BE70D6: AryLock
  loc_BE70D9: Ary1LdPr
  loc_BE70DA: MemLdRfVar from_stack_1.global_0
  loc_BE70DD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE70E2: AryUnlock
  loc_BE70E5: FFreeVar var_A0 = ""
  loc_BE70EC: FLdRfVar var_A0
  loc_BE70EF: FLdPr var_88
  loc_BE70F2: from_stack_1 = clsliqupubl.DetaPers
  loc_BE70F7: LitI2_Byte 0
  loc_BE70F9: LitVar_Missing var_C0
  loc_BE70FC: LitI2_Byte 0
  loc_BE70FE: FLdVar var_A0
  loc_BE7102: FLdPr Me
  loc_BE7105: MemLdStr global_96
  loc_BE7108: FLdPr Me
  loc_BE710B: MemLdStr global_92
  loc_BE710E: AryLock
  loc_BE7111: Ary1LdPr
  loc_BE7112: MemLdRfVar from_stack_1.global_4
  loc_BE7115: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE711A: AryUnlock
  loc_BE711D: FFreeVar var_A0 = ""
  loc_BE7124: FLdRfVar var_A0
  loc_BE7127: FLdPr var_88
  loc_BE712A: from_stack_1 = clsliqupubl.Vinculo
  loc_BE712F: LitI2_Byte 0
  loc_BE7131: LitVar_Missing var_C0
  loc_BE7134: LitI2_Byte 0
  loc_BE7136: FLdVar var_A0
  loc_BE713A: FLdPr Me
  loc_BE713D: MemLdStr global_96
  loc_BE7140: FLdPr Me
  loc_BE7143: MemLdStr global_92
  loc_BE7146: AryLock
  loc_BE7149: Ary1LdPr
  loc_BE714A: MemLdRfVar from_stack_1.global_8
  loc_BE714D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7152: AryUnlock
  loc_BE7155: FFreeVar var_A0 = ""
  loc_BE715C: FLdRfVar var_A0
  loc_BE715F: FLdPr var_88
  loc_BE7162: from_stack_1 = clsliqupubl.DetaCall
  loc_BE7167: LitI2_Byte 0
  loc_BE7169: LitVar_Missing var_C0
  loc_BE716C: LitI2_Byte 0
  loc_BE716E: FLdVar var_A0
  loc_BE7172: FLdPr Me
  loc_BE7175: MemLdStr global_96
  loc_BE7178: FLdPr Me
  loc_BE717B: MemLdStr global_92
  loc_BE717E: AryLock
  loc_BE7181: Ary1LdPr
  loc_BE7182: MemLdRfVar from_stack_1.global_12
  loc_BE7185: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE718A: AryUnlock
  loc_BE718D: FFreeVar var_A0 = ""
  loc_BE7194: FLdRfVar var_8C
  loc_BE7197: FLdPr var_88
  loc_BE719A: from_stack_1 = clsliqupubl.NucaLipu
  loc_BE719F: LitI2_Byte 0
  loc_BE71A1: LitVar_Missing var_C0
  loc_BE71A4: LitI2_Byte 0
  loc_BE71A6: FLdZeroAd var_8C
  loc_BE71A9: CVarStr var_A0
  loc_BE71AC: PopAdLdVar
  loc_BE71AD: FLdPr Me
  loc_BE71B0: MemLdStr global_96
  loc_BE71B3: FLdPr Me
  loc_BE71B6: MemLdStr global_92
  loc_BE71B9: AryLock
  loc_BE71BC: Ary1LdPr
  loc_BE71BD: MemLdRfVar from_stack_1.global_16
  loc_BE71C0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE71C5: AryUnlock
  loc_BE71C8: FFreeVar var_A0 = ""
  loc_BE71CF: FLdRfVar var_A0
  loc_BE71D2: FLdPr var_88
  loc_BE71D5: from_stack_1 = clsliqupubl.DetaBarr
  loc_BE71DA: LitI2_Byte 0
  loc_BE71DC: LitVar_Missing var_C0
  loc_BE71DF: LitI2_Byte 0
  loc_BE71E1: FLdVar var_A0
  loc_BE71E5: FLdPr Me
  loc_BE71E8: MemLdStr global_96
  loc_BE71EB: FLdPr Me
  loc_BE71EE: MemLdStr global_92
  loc_BE71F1: AryLock
  loc_BE71F4: Ary1LdPr
  loc_BE71F5: MemLdRfVar from_stack_1.global_20
  loc_BE71F8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE71FD: AryUnlock
  loc_BE7200: FFreeVar var_A0 = ""
  loc_BE7207: FLdRfVar var_8C
  loc_BE720A: FLdPr var_88
  loc_BE720D: from_stack_1 = clsliqupubl.ManzLipu
  loc_BE7212: LitI2_Byte 0
  loc_BE7214: LitVar_Missing var_C0
  loc_BE7217: LitI2_Byte 0
  loc_BE7219: FLdZeroAd var_8C
  loc_BE721C: CVarStr var_A0
  loc_BE721F: PopAdLdVar
  loc_BE7220: FLdPr Me
  loc_BE7223: MemLdStr global_96
  loc_BE7226: FLdPr Me
  loc_BE7229: MemLdStr global_92
  loc_BE722C: AryLock
  loc_BE722F: Ary1LdPr
  loc_BE7230: MemLdRfVar from_stack_1.global_24
  loc_BE7233: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7238: AryUnlock
  loc_BE723B: FFreeVar var_A0 = ""
  loc_BE7242: FLdRfVar var_8C
  loc_BE7245: FLdPr var_88
  loc_BE7248: from_stack_1 = clsliqupubl.CasaLipu
  loc_BE724D: LitI2_Byte 0
  loc_BE724F: LitVar_Missing var_C0
  loc_BE7252: LitI2_Byte 0
  loc_BE7254: FLdZeroAd var_8C
  loc_BE7257: CVarStr var_A0
  loc_BE725A: PopAdLdVar
  loc_BE725B: FLdPr Me
  loc_BE725E: MemLdStr global_96
  loc_BE7261: FLdPr Me
  loc_BE7264: MemLdStr global_92
  loc_BE7267: AryLock
  loc_BE726A: Ary1LdPr
  loc_BE726B: MemLdRfVar from_stack_1.global_28
  loc_BE726E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7273: AryUnlock
  loc_BE7276: FFreeVar var_A0 = ""
  loc_BE727D: FLdRfVar var_8C
  loc_BE7280: FLdPr var_88
  loc_BE7283: from_stack_1 = clsliqupubl.UbicLipu
  loc_BE7288: LitI2_Byte 0
  loc_BE728A: LitVar_Missing var_C0
  loc_BE728D: LitI2_Byte 0
  loc_BE728F: FLdZeroAd var_8C
  loc_BE7292: CVarStr var_A0
  loc_BE7295: PopAdLdVar
  loc_BE7296: FLdPr Me
  loc_BE7299: MemLdStr global_96
  loc_BE729C: FLdPr Me
  loc_BE729F: MemLdStr global_92
  loc_BE72A2: AryLock
  loc_BE72A5: Ary1LdPr
  loc_BE72A6: MemLdRfVar from_stack_1.global_32
  loc_BE72A9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE72AE: AryUnlock
  loc_BE72B1: FFreeVar var_A0 = ""
  loc_BE72B8: FLdRfVar var_A0
  loc_BE72BB: FLdPr var_88
  loc_BE72BE: from_stack_1 = clsliqupubl.DetaLoca
  loc_BE72C3: LitI2_Byte 0
  loc_BE72C5: LitVar_Missing var_C0
  loc_BE72C8: LitI2_Byte 0
  loc_BE72CA: FLdVar var_A0
  loc_BE72CE: FLdPr Me
  loc_BE72D1: MemLdStr global_96
  loc_BE72D4: FLdPr Me
  loc_BE72D7: MemLdStr global_92
  loc_BE72DA: AryLock
  loc_BE72DD: Ary1LdPr
  loc_BE72DE: MemLdRfVar from_stack_1.global_36
  loc_BE72E1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE72E6: AryUnlock
  loc_BE72E9: FFreeVar var_A0 = ""
  loc_BE72F0: FLdRfVar var_A0
  loc_BE72F3: FLdPr var_88
  loc_BE72F6: from_stack_1 = clsliqupubl.CopoLipu
  loc_BE72FB: LitI2_Byte 0
  loc_BE72FD: LitVar_Missing var_C0
  loc_BE7300: LitI2_Byte 0
  loc_BE7302: FLdVar var_A0
  loc_BE7306: FLdPr Me
  loc_BE7309: MemLdStr global_96
  loc_BE730C: FLdPr Me
  loc_BE730F: MemLdStr global_92
  loc_BE7312: AryLock
  loc_BE7315: Ary1LdPr
  loc_BE7316: MemLdRfVar from_stack_1.global_40
  loc_BE7319: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE731E: AryUnlock
  loc_BE7321: FFreeVar var_A0 = ""
  loc_BE7328: FLdRfVar var_A0
  loc_BE732B: FLdPr var_88
  loc_BE732E: from_stack_1 = clsliqupubl.CallLipuReal
  loc_BE7333: LitI2_Byte 0
  loc_BE7335: LitVar_Missing var_C0
  loc_BE7338: LitI2_Byte 0
  loc_BE733A: FLdVar var_A0
  loc_BE733E: FLdPr Me
  loc_BE7341: MemLdStr global_96
  loc_BE7344: FLdPr Me
  loc_BE7347: MemLdStr global_92
  loc_BE734A: AryLock
  loc_BE734D: Ary1LdPr
  loc_BE734E: MemLdRfVar from_stack_1.global_44
  loc_BE7351: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7356: AryUnlock
  loc_BE7359: FFreeVar var_A0 = ""
  loc_BE7360: FLdRfVar var_A0
  loc_BE7363: FLdPr var_88
  loc_BE7366: from_stack_1 = clsliqupubl.NucaLipuReal
  loc_BE736B: LitI2_Byte 0
  loc_BE736D: LitVar_Missing var_C0
  loc_BE7370: LitI2_Byte 0
  loc_BE7372: FLdVar var_A0
  loc_BE7376: FLdPr Me
  loc_BE7379: MemLdStr global_96
  loc_BE737C: FLdPr Me
  loc_BE737F: MemLdStr global_92
  loc_BE7382: AryLock
  loc_BE7385: Ary1LdPr
  loc_BE7386: MemLdRfVar from_stack_1.global_48
  loc_BE7389: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE738E: AryUnlock
  loc_BE7391: FFreeVar var_A0 = ""
  loc_BE7398: FLdRfVar var_A0
  loc_BE739B: FLdPr var_88
  loc_BE739E: from_stack_1 = clsliqupubl.BarrLipuReal
  loc_BE73A3: LitI2_Byte 0
  loc_BE73A5: LitVar_Missing var_C0
  loc_BE73A8: LitI2_Byte 0
  loc_BE73AA: FLdVar var_A0
  loc_BE73AE: FLdPr Me
  loc_BE73B1: MemLdStr global_96
  loc_BE73B4: FLdPr Me
  loc_BE73B7: MemLdStr global_92
  loc_BE73BA: AryLock
  loc_BE73BD: Ary1LdPr
  loc_BE73BE: MemLdRfVar from_stack_1.bGenerado
  loc_BE73C1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE73C6: AryUnlock
  loc_BE73C9: FFreeVar var_A0 = ""
  loc_BE73D0: FLdRfVar var_A0
  loc_BE73D3: FLdPr var_88
  loc_BE73D6: from_stack_1 = clsliqupubl.ManzLipuReal
  loc_BE73DB: LitI2_Byte 0
  loc_BE73DD: LitVar_Missing var_C0
  loc_BE73E0: LitI2_Byte 0
  loc_BE73E2: FLdVar var_A0
  loc_BE73E6: FLdPr Me
  loc_BE73E9: MemLdStr global_96
  loc_BE73EC: FLdPr Me
  loc_BE73EF: MemLdStr global_92
  loc_BE73F2: AryLock
  loc_BE73F5: Ary1LdPr
  loc_BE73F6: MemLdRfVar from_stack_1.global_56
  loc_BE73F9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE73FE: AryUnlock
  loc_BE7401: FFreeVar var_A0 = ""
  loc_BE7408: FLdRfVar var_A0
  loc_BE740B: FLdPr var_88
  loc_BE740E: from_stack_1 = clsliqupubl.CasaLipuReal
  loc_BE7413: LitI2_Byte 0
  loc_BE7415: LitVar_Missing var_C0
  loc_BE7418: LitI2_Byte 0
  loc_BE741A: FLdVar var_A0
  loc_BE741E: FLdPr Me
  loc_BE7421: MemLdStr global_96
  loc_BE7424: FLdPr Me
  loc_BE7427: MemLdStr global_92
  loc_BE742A: AryLock
  loc_BE742D: Ary1LdPr
  loc_BE742E: MemLdRfVar from_stack_1.global_60
  loc_BE7431: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7436: AryUnlock
  loc_BE7439: FFreeVar var_A0 = ""
  loc_BE7440: FLdRfVar var_A0
  loc_BE7443: FLdPr var_88
  loc_BE7446: from_stack_1 = clsliqupubl.UbicLipuReal
  loc_BE744B: LitI2_Byte 0
  loc_BE744D: LitVar_Missing var_C0
  loc_BE7450: LitI2_Byte 0
  loc_BE7452: FLdVar var_A0
  loc_BE7456: FLdPr Me
  loc_BE7459: MemLdStr global_96
  loc_BE745C: FLdPr Me
  loc_BE745F: MemLdStr global_92
  loc_BE7462: AryLock
  loc_BE7465: Ary1LdPr
  loc_BE7466: MemLdRfVar from_stack_1.global_64
  loc_BE7469: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE746E: AryUnlock
  loc_BE7471: FFreeVar var_A0 = ""
  loc_BE7478: FLdRfVar var_A0
  loc_BE747B: FLdPr var_88
  loc_BE747E: from_stack_1 = clsliqupubl.LocaLipuReal
  loc_BE7483: LitI2_Byte 0
  loc_BE7485: LitVar_Missing var_C0
  loc_BE7488: LitI2_Byte 0
  loc_BE748A: FLdVar var_A0
  loc_BE748E: FLdPr Me
  loc_BE7491: MemLdStr global_96
  loc_BE7494: FLdPr Me
  loc_BE7497: MemLdStr global_92
  loc_BE749A: AryLock
  loc_BE749D: Ary1LdPr
  loc_BE749E: MemLdRfVar from_stack_1.global_68
  loc_BE74A1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE74A6: AryUnlock
  loc_BE74A9: FFreeVar var_A0 = ""
  loc_BE74B0: FLdRfVar var_A0
  loc_BE74B3: FLdPr var_88
  loc_BE74B6: from_stack_1 = clsliqupubl.CopoLipuReal
  loc_BE74BB: LitI2_Byte 0
  loc_BE74BD: LitVar_Missing var_C0
  loc_BE74C0: LitI2_Byte 0
  loc_BE74C2: FLdVar var_A0
  loc_BE74C6: FLdPr Me
  loc_BE74C9: MemLdStr global_96
  loc_BE74CC: FLdPr Me
  loc_BE74CF: MemLdStr global_92
  loc_BE74D2: AryLock
  loc_BE74D5: Ary1LdPr
  loc_BE74D6: MemLdRfVar from_stack_1.global_72
  loc_BE74D9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE74DE: AryUnlock
  loc_BE74E1: FFreeVar var_A0 = ""
  loc_BE74E8: FLdRfVar var_C4
  loc_BE74EB: FLdPr var_88
  loc_BE74EE: from_stack_1 = clsliqupubl.CodiCome
  loc_BE74F3: LitI2_Byte 0
  loc_BE74F5: LitVar_Missing var_A0
  loc_BE74F8: LitI2_Byte 0
  loc_BE74FA: ILdRf var_C4
  loc_BE74FD: CVarI4
  loc_BE7501: PopAdLdVar
  loc_BE7502: FLdPr Me
  loc_BE7505: MemLdStr global_96
  loc_BE7508: FLdPr Me
  loc_BE750B: MemLdStr global_92
  loc_BE750E: AryLock
  loc_BE7511: Ary1LdPr
  loc_BE7512: MemLdRfVar from_stack_1.global_76
  loc_BE7515: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE751A: AryUnlock
  loc_BE751D: FFree1Var var_A0 = ""
  loc_BE7520: FLdRfVar var_C4
  loc_BE7523: FLdPr var_88
  loc_BE7526: from_stack_1 = clsliqupubl.OrdeLipu
  loc_BE752B: LitI2_Byte 0
  loc_BE752D: LitVar_Missing var_A0
  loc_BE7530: LitI2_Byte 0
  loc_BE7532: ILdRf var_C4
  loc_BE7535: CVarI4
  loc_BE7539: PopAdLdVar
  loc_BE753A: FLdPr Me
  loc_BE753D: MemLdStr global_96
  loc_BE7540: FLdPr Me
  loc_BE7543: MemLdStr global_92
  loc_BE7546: AryLock
  loc_BE7549: Ary1LdPr
  loc_BE754A: MemLdRfVar from_stack_1.global_84
  loc_BE754D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7552: AryUnlock
  loc_BE7555: FFree1Var var_A0 = ""
  loc_BE7558: FLdRfVar var_A0
  loc_BE755B: FLdPr var_88
  loc_BE755E: from_stack_1 = clsliqupubl.CodiUsua
  loc_BE7563: LitI2_Byte 0
  loc_BE7565: LitVar_Missing var_C0
  loc_BE7568: LitI2_Byte 0
  loc_BE756A: FLdVar var_A0
  loc_BE756E: FLdPr Me
  loc_BE7571: MemLdStr global_96
  loc_BE7574: FLdPr Me
  loc_BE7577: MemLdStr global_92
  loc_BE757A: AryLock
  loc_BE757D: Ary1LdPr
  loc_BE757E: MemLdRfVar from_stack_1.global_88
  loc_BE7581: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7586: AryUnlock
  loc_BE7589: FFreeVar var_A0 = ""
  loc_BE7590: FLdRfVar var_A0
  loc_BE7593: FLdPr var_88
  loc_BE7596: from_stack_1 = clsliqupubl.RazoCome
  loc_BE759B: LitI2_Byte 0
  loc_BE759D: LitVar_Missing var_C0
  loc_BE75A0: LitI2_Byte 0
  loc_BE75A2: FLdVar var_A0
  loc_BE75A6: FLdPr Me
  loc_BE75A9: MemLdStr global_96
  loc_BE75AC: FLdPr Me
  loc_BE75AF: MemLdStr global_92
  loc_BE75B2: AryLock
  loc_BE75B5: Ary1LdPr
  loc_BE75B6: MemLdRfVar from_stack_1.global_80
  loc_BE75B9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE75BE: AryUnlock
  loc_BE75C1: FFreeVar var_A0 = ""
  loc_BE75C8: FLdRfVar var_E0
  loc_BE75CB: LitVarStr var_B0, "PlanLipu"
  loc_BE75D0: PopAdLdVar
  loc_BE75D1: FLdRfVar var_DC
  loc_BE75D4: FLdRfVar var_D8
  loc_BE75D7: FLdPr var_88
  loc_BE75DA: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BE75DF: FLdPr var_D8
  loc_BE75E2:  = Me.Fields
  loc_BE75E7: FLdPr var_DC
  loc_BE75EA: from_stack_2 = Me.Item(from_stack_1)
  loc_BE75EF: LitI2_Byte 0
  loc_BE75F1: LitVar_Missing var_C0
  loc_BE75F4: LitI2_Byte 0
  loc_BE75F6: FLdZeroAd var_E0
  loc_BE75F9: CVarAd
  loc_BE75FD: PopAdLdVar
  loc_BE75FE: FLdPr Me
  loc_BE7601: MemLdStr global_96
  loc_BE7604: FLdPr Me
  loc_BE7607: MemLdStr global_92
  loc_BE760A: AryLock
  loc_BE760D: Ary1LdPr
  loc_BE760E: MemLdRfVar from_stack_1.global_96
  loc_BE7611: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7616: AryUnlock
  loc_BE7619: FFreeAd var_D8 = ""
  loc_BE7620: FFreeVar var_A0 = ""
  loc_BE7627: FLdRfVar var_E0
  loc_BE762A: LitVarStr var_B0, "SectLipu"
  loc_BE762F: PopAdLdVar
  loc_BE7630: FLdRfVar var_DC
  loc_BE7633: FLdRfVar var_D8
  loc_BE7636: FLdPr var_88
  loc_BE7639: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BE763E: FLdPr var_D8
  loc_BE7641:  = Me.Fields
  loc_BE7646: FLdPr var_DC
  loc_BE7649: from_stack_2 = Me.Item(from_stack_1)
  loc_BE764E: LitI2_Byte 0
  loc_BE7650: LitVar_Missing var_C0
  loc_BE7653: LitI2_Byte 0
  loc_BE7655: FLdZeroAd var_E0
  loc_BE7658: CVarAd
  loc_BE765C: PopAdLdVar
  loc_BE765D: FLdPr Me
  loc_BE7660: MemLdStr global_96
  loc_BE7663: FLdPr Me
  loc_BE7666: MemLdStr global_92
  loc_BE7669: AryLock
  loc_BE766C: Ary1LdPr
  loc_BE766D: MemLdRfVar from_stack_1.global_100
  loc_BE7670: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7675: AryUnlock
  loc_BE7678: FFreeAd var_D8 = ""
  loc_BE767F: FFreeVar var_A0 = ""
  loc_BE7686: FLdRfVar var_E0
  loc_BE7689: LitVarStr var_B0, "Orden"
  loc_BE768E: PopAdLdVar
  loc_BE768F: FLdRfVar var_DC
  loc_BE7692: FLdRfVar var_D8
  loc_BE7695: FLdPr var_88
  loc_BE7698: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BE769D: FLdPr var_D8
  loc_BE76A0:  = Me.Fields
  loc_BE76A5: FLdPr var_DC
  loc_BE76A8: from_stack_2 = Me.Item(from_stack_1)
  loc_BE76AD: LitI2_Byte 0
  loc_BE76AF: LitVar_Missing var_C0
  loc_BE76B2: LitI2_Byte 0
  loc_BE76B4: FLdZeroAd var_E0
  loc_BE76B7: CVarAd
  loc_BE76BB: PopAdLdVar
  loc_BE76BC: FLdPr Me
  loc_BE76BF: MemLdStr global_96
  loc_BE76C2: FLdPr Me
  loc_BE76C5: MemLdStr global_92
  loc_BE76C8: AryLock
  loc_BE76CB: Ary1LdPr
  loc_BE76CC: MemLdRfVar from_stack_1.global_104
  loc_BE76CF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE76D4: AryUnlock
  loc_BE76D7: FFreeAd var_D8 = ""
  loc_BE76DE: FFreeVar var_A0 = ""
  loc_BE76E5: FLdRfVar var_E8
  loc_BE76E8: FLdPr var_88
  loc_BE76EB: from_stack_1 = clsliqupubl.DeudLipu
  loc_BE76F0: LitI2_Byte 0
  loc_BE76F2: LitVar_Missing var_A0
  loc_BE76F5: LitI2_Byte &HFF
  loc_BE76F7: FLdFPR8 var_E8
  loc_BE76FA: CVarR8
  loc_BE76FE: PopAdLdVar
  loc_BE76FF: FLdPr Me
  loc_BE7702: MemLdStr global_96
  loc_BE7705: FLdPr Me
  loc_BE7708: MemLdStr global_92
  loc_BE770B: AryLock
  loc_BE770E: Ary1LdPr
  loc_BE770F: MemLdRfVar from_stack_1.global_92
  loc_BE7712: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE7717: AryUnlock
  loc_BE771A: FFree1Var var_A0 = ""
  loc_BE771D: FLdRfVar var_A0
  loc_BE7720: FLdPr var_88
  loc_BE7723: from_stack_1 = clsliqupubl.Bimestres
  loc_BE7728: FLdRfVar var_A0
  loc_BE772B: CStrVarVal var_8C
  loc_BE772F: ImpAdCallI2 StrReverse()
  loc_BE7734: FStStr var_10C
  loc_BE7737: LitStr ","
  loc_BE773A: ImpAdCallI2 StrReverse()
  loc_BE773F: FStStr var_110
  loc_BE7742: LitStr " y"
  loc_BE7745: ImpAdCallI2 StrReverse()
  loc_BE774A: FStStr var_114
  loc_BE774D: LitI4 0
  loc_BE7752: LitI4 1
  loc_BE7757: LitI4 1
  loc_BE775C: FLdZeroAd var_114
  loc_BE775F: FStStrNoPop var_F4
  loc_BE7762: FLdZeroAd var_110
  loc_BE7765: FStStrNoPop var_F0
  loc_BE7768: FLdZeroAd var_10C
  loc_BE776B: FStStrNoPop var_EC
  loc_BE776E: ImpAdCallI2 Replace(, , , , , )
  loc_BE7773: FStStrNoPop var_F8
  loc_BE7776: ImpAdCallI2 StrReverse()
  loc_BE777B: FStStr var_118
  loc_BE777E: LitI2_Byte 0
  loc_BE7780: LitVar_Missing var_108
  loc_BE7783: LitI2_Byte 0
  loc_BE7785: FLdZeroAd var_118
  loc_BE7788: CVarStr var_C0
  loc_BE778B: PopAdLdVar
  loc_BE778C: FLdPr Me
  loc_BE778F: MemLdStr global_96
  loc_BE7792: FLdPr Me
  loc_BE7795: MemLdStr global_92
  loc_BE7798: AryLock
  loc_BE779B: Ary1LdPr
  loc_BE779C: MemLdRfVar from_stack_1.global_108
  loc_BE779F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE77A4: AryUnlock
  loc_BE77A7: FFreeStr var_8C = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_BE77BC: FFreeVar var_A0 = "": var_C0 = ""
  loc_BE77C5: FLdRfVar var_C4
  loc_BE77C8: FLdPr var_88
  loc_BE77CB: from_stack_1 = clsliqupubl.CodiCome
  loc_BE77D0: FLdRfVar var_11C
  loc_BE77D3: FLdPr var_88
  loc_BE77D6: from_stack_1 = clsliqupubl.OrdeLipu
  loc_BE77DB: ILdRf var_11C
  loc_BE77DE: CStrI4
  loc_BE77E0: FStStrNoPop var_EC
  loc_BE77E3: ILdRf var_C4
  loc_BE77E6: CStrI4
  loc_BE77E8: FStStrNoPop var_8C
  loc_BE77EB: LitI2_Byte 6
  loc_BE77ED: CUI1I2
  loc_BE77EF: ImpAdCallI2  = Proc_57_40_AD4A10(, )
  loc_BE77F4: PopTmpLdAdStr var_124
  loc_BE77F7: FLdPr Me
  loc_BE77FA: MemLdStr global_96
  loc_BE77FD: FLdPr Me
  loc_BE7800: MemLdStr global_92
  loc_BE7803: Ary1LdPr
  loc_BE7804: MemLdRfVar from_stack_1.global_112
  loc_BE7807: StAryMove
  loc_BE7809: FFreeStr var_8C = ""
  loc_BE7810: LitNothing
  loc_BE7812: FStAd var_88 
  loc_BE7816: Call Proc_312_21_B6210C()
  loc_BE781B: Call Proc_312_22_BDC79C()
  loc_BE7820: ExitProcHresult
  loc_BE7821: ExitProc
  loc_BE7822: EqCyR8
End Function

Private Function Proc_312_21_B6210C() 'B6210C
  'Data Table: 4C11B4
  loc_B61D38: FLdPr Me
  loc_B61D3B: MemLdRfVar from_stack_1.global_88
  loc_B61D3E: NewIfNullAd
  loc_B61D41: FStAd var_88 
  loc_B61D45: LitStr "SELECT lipudeta.CodiRubr, lipudeta.CodiSubr, IFNULL(DetaSubr,'') DetaSubr, IFNULL(servcome.CateSeco,'0') CateSeco,  IFNULL(servcome.CantSeco,'0') CantSeco, lipudeta.TotaLpde as TotaLipu"
  loc_B61D48: LitStr " FROM  lipudeta "
  loc_B61D4B: ConcatStr
  loc_B61D4C: FStStrNoPop var_8C
  loc_B61D4F: LitStr " LEFT JOIN subrubro ON subrubro.CodiRamo = lipudeta.CodiRamo"
  loc_B61D52: ConcatStr
  loc_B61D53: FStStrNoPop var_90
  loc_B61D56: LitStr " AND subrubro.CodiRubr = lipudeta.CodiRubr"
  loc_B61D59: ConcatStr
  loc_B61D5A: FStStrNoPop var_94
  loc_B61D5D: LitStr " AND subrubro.PeriOrde = "
  loc_B61D60: ConcatStr
  loc_B61D61: FStStrNoPop var_9C
  loc_B61D64: FLdRfVar var_96
  loc_B61D67: FLdPr Me
  loc_B61D6A: MemLdRfVar from_stack_1.global_80
  loc_B61D6D: NewIfNullPr clsliquidacion
  loc_B61D70: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B61D75: FLdI2 var_96
  loc_B61D78: CStrUI1
  loc_B61D7A: FStStrNoPop var_A0
  loc_B61D7D: ConcatStr
  loc_B61D7E: FStStrNoPop var_A4
  loc_B61D81: LitStr " AND subrubro.CodiSubr = lipudeta.CodiSubr"
  loc_B61D84: ConcatStr
  loc_B61D85: FStStrNoPop var_A8
  loc_B61D88: LitStr " LEFT JOIN servcome ON servcome.CodiCome = lipudeta.CodiCome"
  loc_B61D8B: ConcatStr
  loc_B61D8C: FStStrNoPop var_AC
  loc_B61D8F: LitStr " AND servcome.CodiRamo =  lipudeta.CodiRamo"
  loc_B61D92: ConcatStr
  loc_B61D93: FStStrNoPop var_B0
  loc_B61D96: LitStr " AND servcome.CodiRubr =  lipudeta.CodiRubr"
  loc_B61D99: ConcatStr
  loc_B61D9A: FStStrNoPop var_B4
  loc_B61D9D: LitStr " AND servcome.CodiSubr =  lipudeta.CodiSubr"
  loc_B61DA0: ConcatStr
  loc_B61DA1: FStStrNoPop var_B8
  loc_B61DA4: LitStr " AND servcome.PrioSeco =  lipudeta.NumeLpde"
  loc_B61DA7: ConcatStr
  loc_B61DA8: FStStrNoPop var_BC
  loc_B61DAB: LitStr " WHERE lipudeta.CodiSubr<>999 AND PeriLiqu = "
  loc_B61DAE: ConcatStr
  loc_B61DAF: FStStrNoPop var_C4
  loc_B61DB2: FLdRfVar var_BE
  loc_B61DB5: FLdPr Me
  loc_B61DB8: MemLdRfVar from_stack_1.global_80
  loc_B61DBB: NewIfNullPr clsliquidacion
  loc_B61DBE: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B61DC3: FLdI2 var_BE
  loc_B61DC6: CStrUI1
  loc_B61DC8: FStStrNoPop var_C8
  loc_B61DCB: ConcatStr
  loc_B61DCC: FStStrNoPop var_CC
  loc_B61DCF: LitStr " AND CodiTili = "
  loc_B61DD2: ConcatStr
  loc_B61DD3: FStStrNoPop var_D4
  loc_B61DD6: FLdRfVar var_CE
  loc_B61DD9: FLdPr Me
  loc_B61DDC: MemLdRfVar from_stack_1.global_80
  loc_B61DDF: NewIfNullPr clsliquidacion
  loc_B61DE2: from_stack_1 = clsliquidacion.CodiTili
  loc_B61DE7: FLdUI1
  loc_B61DEB: CStrI2
  loc_B61DED: FStStrNoPop var_D8
  loc_B61DF0: ConcatStr
  loc_B61DF1: FStStrNoPop var_DC
  loc_B61DF4: LitStr " AND NumeLiqu = "
  loc_B61DF7: ConcatStr
  loc_B61DF8: FStStrNoPop var_E4
  loc_B61DFB: FLdRfVar var_DE
  loc_B61DFE: FLdPr Me
  loc_B61E01: MemLdRfVar from_stack_1.global_80
  loc_B61E04: NewIfNullPr clsliquidacion
  loc_B61E07: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B61E0C: FLdI2 var_DE
  loc_B61E0F: CStrUI1
  loc_B61E11: FStStrNoPop var_E8
  loc_B61E14: ConcatStr
  loc_B61E15: FStStrNoPop var_EC
  loc_B61E18: LitStr " AND BimeLiqu = "
  loc_B61E1B: ConcatStr
  loc_B61E1C: FStStrNoPop var_F4
  loc_B61E1F: FLdRfVar var_EE
  loc_B61E22: FLdPr Me
  loc_B61E25: MemLdRfVar from_stack_1.global_84
  loc_B61E28: NewIfNullPr clsliqupubl
  loc_B61E2B: from_stack_1 = clsliqupubl.BimeLiqu
  loc_B61E30: FLdUI1
  loc_B61E34: CStrI2
  loc_B61E36: FStStrNoPop var_F8
  loc_B61E39: ConcatStr
  loc_B61E3A: FStStrNoPop var_FC
  loc_B61E3D: LitStr "  AND CodiConc = '13020401' AND lipudeta.CodiCome = "
  loc_B61E40: ConcatStr
  loc_B61E41: FStStrNoPop var_100
  loc_B61E44: FLdPr Me
  loc_B61E47: MemLdStr global_96
  loc_B61E4A: FLdPr Me
  loc_B61E4D: MemLdStr global_92
  loc_B61E50: Ary1LdPr
  loc_B61E51: MemLdStr global_76
  loc_B61E54: ConcatStr
  loc_B61E55: FStStrNoPop var_104
  loc_B61E58: LitStr " AND lipudeta.TipoVenc = 1"
  loc_B61E5B: ConcatStr
  loc_B61E5C: FStStrNoPop var_108
  loc_B61E5F: FLdPr var_88
  loc_B61E62: Call clsliqupubl.RedefineRS(from_stack_1v)
  loc_B61E67: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D4 = "": var_D8 = "": var_DC = "": var_E4 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B61EA0: FLdRfVar var_10C
  loc_B61EA3: FLdPr var_88
  loc_B61EA6: from_stack_1 = clsliqupubl.RecordCount
  loc_B61EAB: ILdRf var_10C
  loc_B61EAE: LitI4 0
  loc_B61EB3: GtI4
  loc_B61EB4: BranchF loc_B620DF
  loc_B61EB7: FLdRfVar var_10C
  loc_B61EBA: FLdPr var_88
  loc_B61EBD: from_stack_1 = clsliqupubl.RecordCount
  loc_B61EC2: LitI4 0
  loc_B61EC7: ILdRf var_10C
  loc_B61ECA: FLdPr Me
  loc_B61ECD: MemLdStr global_96
  loc_B61ED0: FLdPr Me
  loc_B61ED3: MemLdStr global_92
  loc_B61ED6: Ary1LdPr
  loc_B61ED7: MemLdRfVar from_stack_1.global_116
  loc_B61EDA: RedimPreserve
  loc_B61EE4: FLdPr var_88
  loc_B61EE7: Call clsliqupubl.MoveFirst()
  loc_B61EEC: LitI2_Byte 1
  loc_B61EEE: FLdPr Me
  loc_B61EF1: MemLdRfVar from_stack_1.global_100
  loc_B61EF4: FLdPr Me
  loc_B61EF7: MemLdStr global_96
  loc_B61EFA: FLdPr Me
  loc_B61EFD: MemLdStr global_92
  loc_B61F00: Ary1LdPr
  loc_B61F01: MemLdStr global_116
  loc_B61F04: LitI2_Byte 1
  loc_B61F06: FnUBound
  loc_B61F08: CI2I4
  loc_B61F09: ForI2 var_110
  loc_B61F0F: FLdRfVar var_120
  loc_B61F12: FLdPr var_88
  loc_B61F15: from_stack_1 = clsliqupubl.CodiRubr
  loc_B61F1A: LitI2_Byte 0
  loc_B61F1C: LitVar_Missing var_148
  loc_B61F1F: LitI2_Byte 0
  loc_B61F21: FLdVar var_120
  loc_B61F25: FLdPr Me
  loc_B61F28: MemLdI2 global_100
  loc_B61F2B: CI4UI1
  loc_B61F2C: FLdPr Me
  loc_B61F2F: MemLdStr global_96
  loc_B61F32: FLdPr Me
  loc_B61F35: MemLdStr global_92
  loc_B61F38: AryLock
  loc_B61F3B: Ary1LdPr
  loc_B61F3C: MemLdStr global_116
  loc_B61F3F: AryLock
  loc_B61F42: Ary1LdPr
  loc_B61F43: MemLdRfVar from_stack_1.global_0
  loc_B61F46: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B61F4B: AryUnlock
  loc_B61F4E: AryUnlock
  loc_B61F51: FFreeVar var_120 = ""
  loc_B61F58: FLdRfVar var_120
  loc_B61F5B: FLdPr var_88
  loc_B61F5E: from_stack_1 = clsliqupubl.CodiSubr
  loc_B61F63: LitI2_Byte 0
  loc_B61F65: LitVar_Missing var_148
  loc_B61F68: LitI2_Byte 0
  loc_B61F6A: FLdVar var_120
  loc_B61F6E: FLdPr Me
  loc_B61F71: MemLdI2 global_100
  loc_B61F74: CI4UI1
  loc_B61F75: FLdPr Me
  loc_B61F78: MemLdStr global_96
  loc_B61F7B: FLdPr Me
  loc_B61F7E: MemLdStr global_92
  loc_B61F81: AryLock
  loc_B61F84: Ary1LdPr
  loc_B61F85: MemLdStr global_116
  loc_B61F88: AryLock
  loc_B61F8B: Ary1LdPr
  loc_B61F8C: MemLdRfVar from_stack_1.global_4
  loc_B61F8F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B61F94: AryUnlock
  loc_B61F97: AryUnlock
  loc_B61F9A: FFreeVar var_120 = ""
  loc_B61FA1: FLdRfVar var_120
  loc_B61FA4: FLdPr var_88
  loc_B61FA7: from_stack_1 = clsliqupubl.DetaSubr
  loc_B61FAC: LitI2_Byte 0
  loc_B61FAE: LitVar_Missing var_148
  loc_B61FB1: LitI2_Byte 0
  loc_B61FB3: FLdVar var_120
  loc_B61FB7: FLdPr Me
  loc_B61FBA: MemLdI2 global_100
  loc_B61FBD: CI4UI1
  loc_B61FBE: FLdPr Me
  loc_B61FC1: MemLdStr global_96
  loc_B61FC4: FLdPr Me
  loc_B61FC7: MemLdStr global_92
  loc_B61FCA: AryLock
  loc_B61FCD: Ary1LdPr
  loc_B61FCE: MemLdStr global_116
  loc_B61FD1: AryLock
  loc_B61FD4: Ary1LdPr
  loc_B61FD5: MemLdRfVar from_stack_1.global_8
  loc_B61FD8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B61FDD: AryUnlock
  loc_B61FE0: AryUnlock
  loc_B61FE3: FFreeVar var_120 = ""
  loc_B61FEA: FLdRfVar var_120
  loc_B61FED: FLdPr var_88
  loc_B61FF0: from_stack_1 = clsliqupubl.CateSeco
  loc_B61FF5: LitI2_Byte 0
  loc_B61FF7: LitVar_Missing var_148
  loc_B61FFA: LitI2_Byte 0
  loc_B61FFC: FLdVar var_120
  loc_B62000: FLdPr Me
  loc_B62003: MemLdI2 global_100
  loc_B62006: CI4UI1
  loc_B62007: FLdPr Me
  loc_B6200A: MemLdStr global_96
  loc_B6200D: FLdPr Me
  loc_B62010: MemLdStr global_92
  loc_B62013: AryLock
  loc_B62016: Ary1LdPr
  loc_B62017: MemLdStr global_116
  loc_B6201A: AryLock
  loc_B6201D: Ary1LdPr
  loc_B6201E: MemLdRfVar from_stack_1.global_12
  loc_B62021: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B62026: AryUnlock
  loc_B62029: AryUnlock
  loc_B6202C: FFreeVar var_120 = ""
  loc_B62033: FLdRfVar var_96
  loc_B62036: FLdPr var_88
  loc_B62039: from_stack_1 = clsliqupubl.CantSeco
  loc_B6203E: LitI2_Byte 0
  loc_B62040: LitVar_Missing var_120
  loc_B62043: LitI2_Byte 0
  loc_B62045: FLdI2 var_96
  loc_B62048: CVarI2 var_138
  loc_B6204B: PopAdLdVar
  loc_B6204C: FLdPr Me
  loc_B6204F: MemLdI2 global_100
  loc_B62052: CI4UI1
  loc_B62053: FLdPr Me
  loc_B62056: MemLdStr global_96
  loc_B62059: FLdPr Me
  loc_B6205C: MemLdStr global_92
  loc_B6205F: AryLock
  loc_B62062: Ary1LdPr
  loc_B62063: MemLdStr global_116
  loc_B62066: AryLock
  loc_B62069: Ary1LdPr
  loc_B6206A: MemLdRfVar from_stack_1.global_16
  loc_B6206D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B62072: AryUnlock
  loc_B62075: AryUnlock
  loc_B62078: FFree1Var var_120 = ""
  loc_B6207B: FLdRfVar var_160
  loc_B6207E: FLdPr var_88
  loc_B62081: from_stack_1 = clsliqupubl.TotaLipu
  loc_B62086: LitI2_Byte 0
  loc_B62088: LitVar_Missing var_120
  loc_B6208B: LitI2_Byte &HFF
  loc_B6208D: FLdFPR8 var_160
  loc_B62090: CVarR8
  loc_B62094: PopAdLdVar
  loc_B62095: FLdPr Me
  loc_B62098: MemLdI2 global_100
  loc_B6209B: CI4UI1
  loc_B6209C: FLdPr Me
  loc_B6209F: MemLdStr global_96
  loc_B620A2: FLdPr Me
  loc_B620A5: MemLdStr global_92
  loc_B620A8: AryLock
  loc_B620AB: Ary1LdPr
  loc_B620AC: MemLdStr global_116
  loc_B620AF: AryLock
  loc_B620B2: Ary1LdPr
  loc_B620B3: MemLdRfVar from_stack_1.global_20
  loc_B620B6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B620BB: AryUnlock
  loc_B620BE: AryUnlock
  loc_B620C1: FFree1Var var_120 = ""
  loc_B620C4: LitI2_Byte 1
  loc_B620C6: PopTmpLdAd2 var_96
  loc_B620C9: FLdPr var_88
  loc_B620CC: Call clsliqupubl.Move(from_stack_1v)
  loc_B620D1: FLdPr Me
  loc_B620D4: MemLdRfVar from_stack_1.global_100
  loc_B620D7: NextI2 var_110, loc_B61F0F
  loc_B620DC: Branch loc_B62103
  loc_B620DF: LitI4 0
  loc_B620E4: LitI4 0
  loc_B620E9: FLdPr Me
  loc_B620EC: MemLdStr global_96
  loc_B620EF: FLdPr Me
  loc_B620F2: MemLdStr global_92
  loc_B620F5: Ary1LdPr
  loc_B620F6: MemLdRfVar from_stack_1.global_116
  loc_B620F9: RedimPreserve
  loc_B62103: LitNothing
  loc_B62105: FStAd var_88 
  loc_B62109: ExitProcHresult
  loc_B6210A: LtI2
End Function

Private Function Proc_312_22_BDC79C() 'BDC79C
  'Data Table: 4C11B4
  loc_BDC064: FLdPr Me
  loc_BDC067: MemLdRfVar from_stack_1.global_84
  loc_BDC06A: NewIfNullAd
  loc_BDC06D: FStAd var_90 
  loc_BDC071: FLdRfVar var_92
  loc_BDC074: FLdPr var_90
  loc_BDC077: from_stack_1 = clsliqupubl.TipoVenc
  loc_BDC07C: FLdUI1
  loc_BDC080: CI2UI1
  loc_BDC082: LitI2_Byte 2
  loc_BDC084: EqI2
  loc_BDC085: FLdRfVar var_94
  loc_BDC088: FLdPr var_90
  loc_BDC08B: from_stack_1 = clsliqupubl.BimeLiqu
  loc_BDC090: FLdUI1
  loc_BDC094: CI2UI1
  loc_BDC096: LitI2_Byte 1
  loc_BDC098: GeI2
  loc_BDC099: AndI4
  loc_BDC09A: BranchF loc_BDC36F
  loc_BDC09D: FLdPr Me
  loc_BDC0A0: MemLdUI1 global_102
  loc_BDC0A4: CI2UI1
  loc_BDC0A6: FStI2 var_86
  loc_BDC0A9: LitI2_Byte 0
  loc_BDC0AB: CUI1I2
  loc_BDC0AD: FLdPr Me
  loc_BDC0B0: MemStUI1
  loc_BDC0B4: LitI2_Byte 0
  loc_BDC0B6: FLdPr Me
  loc_BDC0B9: MemLdUI1 global_102
  loc_BDC0BD: CI4UI1
  loc_BDC0BE: FLdPr Me
  loc_BDC0C1: MemLdStr global_96
  loc_BDC0C4: FLdPr Me
  loc_BDC0C7: MemLdStr global_92
  loc_BDC0CA: Ary1LdPr
  loc_BDC0CB: MemLdStr global_120
  loc_BDC0CE: Ary1LdPr
  loc_BDC0CF: MemStI2 global_0
  loc_BDC0D2: FLdRfVar var_92
  loc_BDC0D5: FLdPr var_90
  loc_BDC0D8: from_stack_1 = clsliqupubl.PeriBole
  loc_BDC0DD: FLdRfVar var_98
  loc_BDC0E0: FLdPr var_90
  loc_BDC0E3: from_stack_1 = clsliqupubl.NumeBole
  loc_BDC0E8: FLdRfVar var_94
  loc_BDC0EB: FLdPr var_90
  loc_BDC0EE: from_stack_1 = clsliqupubl.BimeLiqu
  loc_BDC0F3: FLdRfVar var_9C
  loc_BDC0F6: FLdPr var_90
  loc_BDC0F9: from_stack_1 = clsliqupubl.CodiCome
  loc_BDC0FE: FLdRfVar var_A4
  loc_BDC101: FLdPr var_90
  loc_BDC104: from_stack_1 = clsliqupubl.TotaBole
  loc_BDC109: LitStr "31/05/"
  loc_BDC10C: FLdRfVar var_A6
  loc_BDC10F: FLdPr Me
  loc_BDC112: MemLdRfVar from_stack_1.global_80
  loc_BDC115: NewIfNullPr clsliquidacion
  loc_BDC118: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BDC11D: FLdI2 var_A6
  loc_BDC120: CStrUI1
  loc_BDC122: FStStrNoPop var_AC
  loc_BDC125: ConcatStr
  loc_BDC126: FStStrNoPop var_C4
  loc_BDC129: FLdFPR8 var_A4
  loc_BDC12C: CStrR8
  loc_BDC12E: FStStrNoPop var_C0
  loc_BDC131: LitI2_Byte 6
  loc_BDC133: CUI1I2
  loc_BDC135: ILdRf var_9C
  loc_BDC138: CStrI4
  loc_BDC13A: FStStrNoPop var_BC
  loc_BDC13D: FLdUI1
  loc_BDC141: CStrI2
  loc_BDC143: FStStrNoPop var_B8
  loc_BDC146: ILdRf var_98
  loc_BDC149: CStrI4
  loc_BDC14B: FStStrNoPop var_B4
  loc_BDC14E: FLdI2 var_92
  loc_BDC151: CStrUI1
  loc_BDC153: FStStrNoPop var_B0
  loc_BDC156: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_BDC15B: PopTmpLdAdStr var_CC
  loc_BDC15E: FLdPr Me
  loc_BDC161: MemLdUI1 global_102
  loc_BDC165: CI4UI1
  loc_BDC166: FLdPr Me
  loc_BDC169: MemLdStr global_96
  loc_BDC16C: FLdPr Me
  loc_BDC16F: MemLdStr global_92
  loc_BDC172: Ary1LdPr
  loc_BDC173: MemLdStr global_120
  loc_BDC176: Ary1LdPr
  loc_BDC177: MemLdRfVar from_stack_1.global_20
  loc_BDC17A: StAryMove
  loc_BDC17C: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_BDC18D: FLdRfVar var_8C
  loc_BDC190: NewIfNullAd
  loc_BDC193: FStAd var_D0 
  loc_BDC197: LitStr "SELECT CAST(sum(if(CodiSubr <> 999,ImpoLpde,0)) AS DOUBLE(10,2)) as ImpoLipu,"
  loc_BDC19A: LitStr " CAST(sum(if(CodiSubr <> 999,DecaLpde+ExceLpde,0)) AS DOUBLE(10,2)) as DescLipu,"
  loc_BDC19D: ConcatStr
  loc_BDC19E: FStStrNoPop var_AC
  loc_BDC1A1: LitStr " CAST(sum(if(CodiSubr = 999,ImpoLpde-DecaLpde,0)) AS DOUBLE(10,2)) as CEmision"
  loc_BDC1A4: ConcatStr
  loc_BDC1A5: FStStrNoPop var_B0
  loc_BDC1A8: LitStr " FROM lipudeta"
  loc_BDC1AB: ConcatStr
  loc_BDC1AC: FStStrNoPop var_B4
  loc_BDC1AF: LitStr " WHERE PeriLiqu = "
  loc_BDC1B2: ConcatStr
  loc_BDC1B3: FStStrNoPop var_B8
  loc_BDC1B6: FLdRfVar var_92
  loc_BDC1B9: FLdPr Me
  loc_BDC1BC: MemLdRfVar from_stack_1.global_80
  loc_BDC1BF: NewIfNullPr clsliquidacion
  loc_BDC1C2: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BDC1C7: FLdI2 var_92
  loc_BDC1CA: CStrUI1
  loc_BDC1CC: FStStrNoPop var_BC
  loc_BDC1CF: ConcatStr
  loc_BDC1D0: FStStrNoPop var_C0
  loc_BDC1D3: LitStr " AND CodiTili = "
  loc_BDC1D6: ConcatStr
  loc_BDC1D7: FStStrNoPop var_C4
  loc_BDC1DA: FLdRfVar var_94
  loc_BDC1DD: FLdPr Me
  loc_BDC1E0: MemLdRfVar from_stack_1.global_80
  loc_BDC1E3: NewIfNullPr clsliquidacion
  loc_BDC1E6: from_stack_1 = clsliquidacion.CodiTili
  loc_BDC1EB: FLdUI1
  loc_BDC1EF: CStrI2
  loc_BDC1F1: FStStrNoPop var_D4
  loc_BDC1F4: ConcatStr
  loc_BDC1F5: FStStrNoPop var_D8
  loc_BDC1F8: LitStr " AND NumeLiqu = "
  loc_BDC1FB: ConcatStr
  loc_BDC1FC: FStStrNoPop var_DC
  loc_BDC1FF: FLdRfVar var_A6
  loc_BDC202: FLdPr Me
  loc_BDC205: MemLdRfVar from_stack_1.global_80
  loc_BDC208: NewIfNullPr clsliquidacion
  loc_BDC20B: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BDC210: FLdI2 var_A6
  loc_BDC213: CStrUI1
  loc_BDC215: FStStrNoPop var_E0
  loc_BDC218: ConcatStr
  loc_BDC219: FStStrNoPop var_E4
  loc_BDC21C: LitStr " AND TipoVenc = 2 AND CodiCome = "
  loc_BDC21F: ConcatStr
  loc_BDC220: FStStrNoPop var_E8
  loc_BDC223: FLdRfVar var_98
  loc_BDC226: FLdPr Me
  loc_BDC229: MemLdRfVar from_stack_1.global_84
  loc_BDC22C: NewIfNullPr clsliqupubl
  loc_BDC22F: from_stack_1 = clsliqupubl.CodiCome
  loc_BDC234: ILdRf var_98
  loc_BDC237: CStrI4
  loc_BDC239: FStStrNoPop var_EC
  loc_BDC23C: ConcatStr
  loc_BDC23D: FStStrNoPop var_F0
  loc_BDC240: FLdPr var_D0
  loc_BDC243: Call clsliqupubl.RedefineRS(from_stack_1v)
  loc_BDC248: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_BDC269: FLdRfVar var_98
  loc_BDC26C: FLdPr var_D0
  loc_BDC26F: from_stack_1 = clsliqupubl.RecordCount
  loc_BDC274: ILdRf var_98
  loc_BDC277: LitI4 0
  loc_BDC27C: GtI4
  loc_BDC27D: BranchF loc_BDC366
  loc_BDC280: FLdPr var_D0
  loc_BDC283: Call clsliqupubl.MoveFirst()
  loc_BDC288: FLdRfVar var_A4
  loc_BDC28B: FLdPr var_D0
  loc_BDC28E: from_stack_1 = clsliqupubl.ImpoLipu
  loc_BDC293: LitI2_Byte 0
  loc_BDC295: LitVar_Missing var_128
  loc_BDC298: LitI2_Byte &HFF
  loc_BDC29A: FLdFPR8 var_A4
  loc_BDC29D: CVarR8
  loc_BDC2A1: PopAdLdVar
  loc_BDC2A2: FLdPr Me
  loc_BDC2A5: MemLdUI1 global_102
  loc_BDC2A9: CI4UI1
  loc_BDC2AA: FLdPr Me
  loc_BDC2AD: MemLdStr global_96
  loc_BDC2B0: FLdPr Me
  loc_BDC2B3: MemLdStr global_92
  loc_BDC2B6: AryLock
  loc_BDC2B9: Ary1LdPr
  loc_BDC2BA: MemLdStr global_120
  loc_BDC2BD: AryLock
  loc_BDC2C0: Ary1LdPr
  loc_BDC2C1: MemLdRfVar from_stack_1.global_28
  loc_BDC2C4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC2C9: AryUnlock
  loc_BDC2CC: AryUnlock
  loc_BDC2CF: FFree1Var var_128 = ""
  loc_BDC2D2: FLdRfVar var_A4
  loc_BDC2D5: FLdPr var_D0
  loc_BDC2D8: from_stack_1 = clsliqupubl.DescLipu
  loc_BDC2DD: LitI2_Byte 0
  loc_BDC2DF: LitVar_Missing var_128
  loc_BDC2E2: LitI2_Byte &HFF
  loc_BDC2E4: FLdFPR8 var_A4
  loc_BDC2E7: CVarR8
  loc_BDC2EB: PopAdLdVar
  loc_BDC2EC: FLdPr Me
  loc_BDC2EF: MemLdUI1 global_102
  loc_BDC2F3: CI4UI1
  loc_BDC2F4: FLdPr Me
  loc_BDC2F7: MemLdStr global_96
  loc_BDC2FA: FLdPr Me
  loc_BDC2FD: MemLdStr global_92
  loc_BDC300: AryLock
  loc_BDC303: Ary1LdPr
  loc_BDC304: MemLdStr global_120
  loc_BDC307: AryLock
  loc_BDC30A: Ary1LdPr
  loc_BDC30B: MemLdRfVar from_stack_1.global_32
  loc_BDC30E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC313: AryUnlock
  loc_BDC316: AryUnlock
  loc_BDC319: FFree1Var var_128 = ""
  loc_BDC31C: FLdRfVar var_128
  loc_BDC31F: FLdPr var_D0
  loc_BDC322: from_stack_1 = clsliqupubl.CEmision
  loc_BDC327: LitI2_Byte 0
  loc_BDC329: LitVar_Missing var_138
  loc_BDC32C: LitI2_Byte &HFF
  loc_BDC32E: FLdVar var_128
  loc_BDC332: FLdPr Me
  loc_BDC335: MemLdUI1 global_102
  loc_BDC339: CI4UI1
  loc_BDC33A: FLdPr Me
  loc_BDC33D: MemLdStr global_96
  loc_BDC340: FLdPr Me
  loc_BDC343: MemLdStr global_92
  loc_BDC346: AryLock
  loc_BDC349: Ary1LdPr
  loc_BDC34A: MemLdStr global_120
  loc_BDC34D: AryLock
  loc_BDC350: Ary1LdPr
  loc_BDC351: MemLdRfVar from_stack_1.global_40
  loc_BDC354: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC359: AryUnlock
  loc_BDC35C: AryUnlock
  loc_BDC35F: FFreeVar var_128 = ""
  loc_BDC366: LitNothing
  loc_BDC368: FStAd var_D0 
  loc_BDC36C: Branch loc_BDC562
  loc_BDC36F: FLdPr Me
  loc_BDC372: MemLdUI1 global_102
  loc_BDC376: CI2UI1
  loc_BDC378: LitI2_Byte 1
  loc_BDC37A: AddI2
  loc_BDC37B: CUI1I2
  loc_BDC37D: FLdPr Me
  loc_BDC380: MemStUI1
  loc_BDC384: LitI4 0
  loc_BDC389: FLdPr Me
  loc_BDC38C: MemLdUI1 global_102
  loc_BDC390: CI4UI1
  loc_BDC391: FLdPr Me
  loc_BDC394: MemLdStr global_96
  loc_BDC397: FLdPr Me
  loc_BDC39A: MemLdStr global_92
  loc_BDC39D: Ary1LdPr
  loc_BDC39E: MemLdRfVar from_stack_1.global_120
  loc_BDC3A1: RedimPreserve
  loc_BDC3AB: LitI2_Byte &HFF
  loc_BDC3AD: FLdPr Me
  loc_BDC3B0: MemLdUI1 global_102
  loc_BDC3B4: CI4UI1
  loc_BDC3B5: FLdPr Me
  loc_BDC3B8: MemLdStr global_96
  loc_BDC3BB: FLdPr Me
  loc_BDC3BE: MemLdStr global_92
  loc_BDC3C1: Ary1LdPr
  loc_BDC3C2: MemLdStr global_120
  loc_BDC3C5: Ary1LdPr
  loc_BDC3C6: MemStI2 global_0
  loc_BDC3C9: FLdRfVar var_92
  loc_BDC3CC: FLdPr var_90
  loc_BDC3CF: from_stack_1 = clsliqupubl.PeriBole
  loc_BDC3D4: FLdRfVar var_98
  loc_BDC3D7: FLdPr var_90
  loc_BDC3DA: from_stack_1 = clsliqupubl.NumeBole
  loc_BDC3DF: FLdRfVar var_94
  loc_BDC3E2: FLdPr var_90
  loc_BDC3E5: from_stack_1 = clsliqupubl.BimeLiqu
  loc_BDC3EA: FLdRfVar var_9C
  loc_BDC3ED: FLdPr var_90
  loc_BDC3F0: from_stack_1 = clsliqupubl.CodiCome
  loc_BDC3F5: FLdRfVar var_A4
  loc_BDC3F8: FLdPr var_90
  loc_BDC3FB: from_stack_1 = clsliqupubl.TotaBole
  loc_BDC400: LitStr "30/11/"
  loc_BDC403: FLdRfVar var_A6
  loc_BDC406: FLdPr Me
  loc_BDC409: MemLdRfVar from_stack_1.global_80
  loc_BDC40C: NewIfNullPr clsliquidacion
  loc_BDC40F: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BDC414: FLdI2 var_A6
  loc_BDC417: CStrUI1
  loc_BDC419: FStStrNoPop var_AC
  loc_BDC41C: ConcatStr
  loc_BDC41D: FStStrNoPop var_C4
  loc_BDC420: FLdFPR8 var_A4
  loc_BDC423: CStrR8
  loc_BDC425: FStStrNoPop var_C0
  loc_BDC428: LitI2_Byte 6
  loc_BDC42A: CUI1I2
  loc_BDC42C: ILdRf var_9C
  loc_BDC42F: CStrI4
  loc_BDC431: FStStrNoPop var_BC
  loc_BDC434: FLdUI1
  loc_BDC438: CStrI2
  loc_BDC43A: FStStrNoPop var_B8
  loc_BDC43D: ILdRf var_98
  loc_BDC440: CStrI4
  loc_BDC442: FStStrNoPop var_B4
  loc_BDC445: FLdI2 var_92
  loc_BDC448: CStrUI1
  loc_BDC44A: FStStrNoPop var_B0
  loc_BDC44D: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_BDC452: PopTmpLdAdStr var_CC
  loc_BDC455: FLdPr Me
  loc_BDC458: MemLdUI1 global_102
  loc_BDC45C: CI4UI1
  loc_BDC45D: FLdPr Me
  loc_BDC460: MemLdStr global_96
  loc_BDC463: FLdPr Me
  loc_BDC466: MemLdStr global_92
  loc_BDC469: Ary1LdPr
  loc_BDC46A: MemLdStr global_120
  loc_BDC46D: Ary1LdPr
  loc_BDC46E: MemLdRfVar from_stack_1.global_20
  loc_BDC471: StAryMove
  loc_BDC473: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_BDC484: FLdRfVar var_A4
  loc_BDC487: FLdPr var_90
  loc_BDC48A: from_stack_1 = clsliqupubl.ImpoLipu
  loc_BDC48F: LitI2_Byte 0
  loc_BDC491: LitVar_Missing var_128
  loc_BDC494: LitI2_Byte &HFF
  loc_BDC496: FLdFPR8 var_A4
  loc_BDC499: CVarR8
  loc_BDC49D: PopAdLdVar
  loc_BDC49E: FLdPr Me
  loc_BDC4A1: MemLdUI1 global_102
  loc_BDC4A5: CI4UI1
  loc_BDC4A6: FLdPr Me
  loc_BDC4A9: MemLdStr global_96
  loc_BDC4AC: FLdPr Me
  loc_BDC4AF: MemLdStr global_92
  loc_BDC4B2: AryLock
  loc_BDC4B5: Ary1LdPr
  loc_BDC4B6: MemLdStr global_120
  loc_BDC4B9: AryLock
  loc_BDC4BC: Ary1LdPr
  loc_BDC4BD: MemLdRfVar from_stack_1.global_28
  loc_BDC4C0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC4C5: AryUnlock
  loc_BDC4C8: AryUnlock
  loc_BDC4CB: FFree1Var var_128 = ""
  loc_BDC4CE: FLdRfVar var_A4
  loc_BDC4D1: FLdPr var_90
  loc_BDC4D4: from_stack_1 = clsliqupubl.DescLipu
  loc_BDC4D9: LitI2_Byte 0
  loc_BDC4DB: LitVar_Missing var_128
  loc_BDC4DE: LitI2_Byte &HFF
  loc_BDC4E0: FLdFPR8 var_A4
  loc_BDC4E3: CVarR8
  loc_BDC4E7: PopAdLdVar
  loc_BDC4E8: FLdPr Me
  loc_BDC4EB: MemLdUI1 global_102
  loc_BDC4EF: CI4UI1
  loc_BDC4F0: FLdPr Me
  loc_BDC4F3: MemLdStr global_96
  loc_BDC4F6: FLdPr Me
  loc_BDC4F9: MemLdStr global_92
  loc_BDC4FC: AryLock
  loc_BDC4FF: Ary1LdPr
  loc_BDC500: MemLdStr global_120
  loc_BDC503: AryLock
  loc_BDC506: Ary1LdPr
  loc_BDC507: MemLdRfVar from_stack_1.global_32
  loc_BDC50A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC50F: AryUnlock
  loc_BDC512: AryUnlock
  loc_BDC515: FFree1Var var_128 = ""
  loc_BDC518: FLdRfVar var_128
  loc_BDC51B: FLdPr var_90
  loc_BDC51E: from_stack_1 = clsliqupubl.CEmision
  loc_BDC523: LitI2_Byte 0
  loc_BDC525: LitVar_Missing var_138
  loc_BDC528: LitI2_Byte &HFF
  loc_BDC52A: FLdVar var_128
  loc_BDC52E: FLdPr Me
  loc_BDC531: MemLdUI1 global_102
  loc_BDC535: CI4UI1
  loc_BDC536: FLdPr Me
  loc_BDC539: MemLdStr global_96
  loc_BDC53C: FLdPr Me
  loc_BDC53F: MemLdStr global_92
  loc_BDC542: AryLock
  loc_BDC545: Ary1LdPr
  loc_BDC546: MemLdStr global_120
  loc_BDC549: AryLock
  loc_BDC54C: Ary1LdPr
  loc_BDC54D: MemLdRfVar from_stack_1.global_40
  loc_BDC550: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC555: AryUnlock
  loc_BDC558: AryUnlock
  loc_BDC55B: FFreeVar var_128 = ""
  loc_BDC562: FLdRfVar var_92
  loc_BDC565: FLdPr var_90
  loc_BDC568: from_stack_1 = clsliqupubl.BimeLiqu
  loc_BDC56D: LitI2_Byte 0
  loc_BDC56F: LitVar_Missing var_128
  loc_BDC572: LitI2_Byte 0
  loc_BDC574: FLdUI1
  loc_BDC578: CVarUI1
  loc_BDC57C: PopAdLdVar
  loc_BDC57D: FLdPr Me
  loc_BDC580: MemLdUI1 global_102
  loc_BDC584: CI4UI1
  loc_BDC585: FLdPr Me
  loc_BDC588: MemLdStr global_96
  loc_BDC58B: FLdPr Me
  loc_BDC58E: MemLdStr global_92
  loc_BDC591: AryLock
  loc_BDC594: Ary1LdPr
  loc_BDC595: MemLdStr global_120
  loc_BDC598: AryLock
  loc_BDC59B: Ary1LdPr
  loc_BDC59C: MemLdRfVar from_stack_1.global_4
  loc_BDC59F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC5A4: AryUnlock
  loc_BDC5A7: AryUnlock
  loc_BDC5AA: FFree1Var var_128 = ""
  loc_BDC5AD: FLdRfVar var_92
  loc_BDC5B0: FLdPr var_90
  loc_BDC5B3: from_stack_1 = clsliqupubl.PeriBole
  loc_BDC5B8: LitI2_Byte 0
  loc_BDC5BA: LitVar_Missing var_128
  loc_BDC5BD: LitI2_Byte 0
  loc_BDC5BF: FLdI2 var_92
  loc_BDC5C2: CVarI2 var_108
  loc_BDC5C5: PopAdLdVar
  loc_BDC5C6: FLdPr Me
  loc_BDC5C9: MemLdUI1 global_102
  loc_BDC5CD: CI4UI1
  loc_BDC5CE: FLdPr Me
  loc_BDC5D1: MemLdStr global_96
  loc_BDC5D4: FLdPr Me
  loc_BDC5D7: MemLdStr global_92
  loc_BDC5DA: AryLock
  loc_BDC5DD: Ary1LdPr
  loc_BDC5DE: MemLdStr global_120
  loc_BDC5E1: AryLock
  loc_BDC5E4: Ary1LdPr
  loc_BDC5E5: MemLdRfVar from_stack_1.global_8
  loc_BDC5E8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC5ED: AryUnlock
  loc_BDC5F0: AryUnlock
  loc_BDC5F3: FFree1Var var_128 = ""
  loc_BDC5F6: FLdRfVar var_98
  loc_BDC5F9: FLdPr var_90
  loc_BDC5FC: from_stack_1 = clsliqupubl.NumeBole
  loc_BDC601: LitI2_Byte 0
  loc_BDC603: LitVar_Missing var_128
  loc_BDC606: LitI2_Byte 0
  loc_BDC608: ILdRf var_98
  loc_BDC60B: CVarI4
  loc_BDC60F: PopAdLdVar
  loc_BDC610: FLdPr Me
  loc_BDC613: MemLdUI1 global_102
  loc_BDC617: CI4UI1
  loc_BDC618: FLdPr Me
  loc_BDC61B: MemLdStr global_96
  loc_BDC61E: FLdPr Me
  loc_BDC621: MemLdStr global_92
  loc_BDC624: AryLock
  loc_BDC627: Ary1LdPr
  loc_BDC628: MemLdStr global_120
  loc_BDC62B: AryLock
  loc_BDC62E: Ary1LdPr
  loc_BDC62F: MemLdRfVar from_stack_1.global_12
  loc_BDC632: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC637: AryUnlock
  loc_BDC63A: AryUnlock
  loc_BDC63D: FFree1Var var_128 = ""
  loc_BDC640: FLdRfVar var_92
  loc_BDC643: FLdPr var_90
  loc_BDC646: from_stack_1 = clsliqupubl.TipoVenc
  loc_BDC64B: LitI2_Byte 0
  loc_BDC64D: LitVar_Missing var_128
  loc_BDC650: LitI2_Byte 0
  loc_BDC652: FLdUI1
  loc_BDC656: CVarUI1
  loc_BDC65A: PopAdLdVar
  loc_BDC65B: FLdPr Me
  loc_BDC65E: MemLdUI1 global_102
  loc_BDC662: CI4UI1
  loc_BDC663: FLdPr Me
  loc_BDC666: MemLdStr global_96
  loc_BDC669: FLdPr Me
  loc_BDC66C: MemLdStr global_92
  loc_BDC66F: AryLock
  loc_BDC672: Ary1LdPr
  loc_BDC673: MemLdStr global_120
  loc_BDC676: AryLock
  loc_BDC679: Ary1LdPr
  loc_BDC67A: MemLdRfVar from_stack_1.global_24
  loc_BDC67D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC682: AryUnlock
  loc_BDC685: AryUnlock
  loc_BDC688: FFree1Var var_128 = ""
  loc_BDC68B: FLdRfVar var_AC
  loc_BDC68E: FLdPr var_90
  loc_BDC691: from_stack_1 = clsliqupubl.FeveLipu
  loc_BDC696: LitI2_Byte 0
  loc_BDC698: LitVar_Missing var_138
  loc_BDC69B: LitI2_Byte 0
  loc_BDC69D: FLdZeroAd var_AC
  loc_BDC6A0: CVarStr var_128
  loc_BDC6A3: PopAdLdVar
  loc_BDC6A4: FLdPr Me
  loc_BDC6A7: MemLdUI1 global_102
  loc_BDC6AB: CI4UI1
  loc_BDC6AC: FLdPr Me
  loc_BDC6AF: MemLdStr global_96
  loc_BDC6B2: FLdPr Me
  loc_BDC6B5: MemLdStr global_92
  loc_BDC6B8: AryLock
  loc_BDC6BB: Ary1LdPr
  loc_BDC6BC: MemLdStr global_120
  loc_BDC6BF: AryLock
  loc_BDC6C2: Ary1LdPr
  loc_BDC6C3: MemLdRfVar from_stack_1.global_16
  loc_BDC6C6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC6CB: AryUnlock
  loc_BDC6CE: AryUnlock
  loc_BDC6D1: FFreeVar var_128 = ""
  loc_BDC6D8: FLdRfVar var_128
  loc_BDC6DB: FLdPr var_90
  loc_BDC6DE: from_stack_1 = clsliqupubl.RecaBole
  loc_BDC6E3: LitI2_Byte 0
  loc_BDC6E5: LitVar_Missing var_138
  loc_BDC6E8: LitI2_Byte &HFF
  loc_BDC6EA: FLdVar var_128
  loc_BDC6EE: FLdPr Me
  loc_BDC6F1: MemLdUI1 global_102
  loc_BDC6F5: CI4UI1
  loc_BDC6F6: FLdPr Me
  loc_BDC6F9: MemLdStr global_96
  loc_BDC6FC: FLdPr Me
  loc_BDC6FF: MemLdStr global_92
  loc_BDC702: AryLock
  loc_BDC705: Ary1LdPr
  loc_BDC706: MemLdStr global_120
  loc_BDC709: AryLock
  loc_BDC70C: Ary1LdPr
  loc_BDC70D: MemLdRfVar from_stack_1.global_36
  loc_BDC710: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC715: AryUnlock
  loc_BDC718: AryUnlock
  loc_BDC71B: FFreeVar var_128 = ""
  loc_BDC722: FLdRfVar var_A4
  loc_BDC725: FLdPr var_90
  loc_BDC728: from_stack_1 = clsliqupubl.TotaBole
  loc_BDC72D: LitI2_Byte 0
  loc_BDC72F: LitVar_Missing var_128
  loc_BDC732: LitI2_Byte &HFF
  loc_BDC734: FLdFPR8 var_A4
  loc_BDC737: CVarR8
  loc_BDC73B: PopAdLdVar
  loc_BDC73C: FLdPr Me
  loc_BDC73F: MemLdUI1 global_102
  loc_BDC743: CI4UI1
  loc_BDC744: FLdPr Me
  loc_BDC747: MemLdStr global_96
  loc_BDC74A: FLdPr Me
  loc_BDC74D: MemLdStr global_92
  loc_BDC750: AryLock
  loc_BDC753: Ary1LdPr
  loc_BDC754: MemLdStr global_120
  loc_BDC757: AryLock
  loc_BDC75A: Ary1LdPr
  loc_BDC75B: MemLdRfVar from_stack_1.global_44
  loc_BDC75E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BDC763: AryUnlock
  loc_BDC766: AryUnlock
  loc_BDC769: FFree1Var var_128 = ""
  loc_BDC76C: LitI2_Byte 1
  loc_BDC76E: PopTmpLdAd2 var_92
  loc_BDC771: FLdPr var_90
  loc_BDC774: Call clsliqupubl.Move(from_stack_1v)
  loc_BDC779: FLdPr Me
  loc_BDC77C: MemLdUI1 global_102
  loc_BDC780: CI2UI1
  loc_BDC782: LitI2_Byte 0
  loc_BDC784: EqI2
  loc_BDC785: BranchF loc_BDC794
  loc_BDC788: FLdI2 var_86
  loc_BDC78B: CUI1I2
  loc_BDC78D: FLdPr Me
  loc_BDC790: MemStUI1
  loc_BDC794: LitNothing
  loc_BDC796: FStAd var_90 
  loc_BDC79A: ExitProcHresult
End Function

Private Function Proc_312_23_C34370() 'C34370
  'Data Table: 4C11B4
  loc_C337B8: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C337BD: PopAdLdVar
  loc_C337BE: FLdPr Me
  loc_C337C1: MemLdRfVar from_stack_1.global_60
  loc_C337C4: LdPrVar
  loc_C337C6: LateMemCall
  loc_C337CC: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C337D1: PopAdLdVar
  loc_C337D2: FLdPr Me
  loc_C337D5: MemLdRfVar from_stack_1.global_60
  loc_C337D8: LdPrVar
  loc_C337DA: LateMemCall
  loc_C337E0: LitVarStr var_94, "<head>"
  loc_C337E5: PopAdLdVar
  loc_C337E6: FLdPr Me
  loc_C337E9: MemLdRfVar from_stack_1.global_60
  loc_C337EC: LdPrVar
  loc_C337EE: LateMemCall
  loc_C337F4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C337F9: PopAdLdVar
  loc_C337FA: FLdPr Me
  loc_C337FD: MemLdRfVar from_stack_1.global_60
  loc_C33800: LdPrVar
  loc_C33802: LateMemCall
  loc_C33808: LitStr "<title>"
  loc_C3380B: FLdRfVar var_A8
  loc_C3380E: FLdPr Me
  loc_C33811:  = Me.Caption
  loc_C33816: ILdRf var_A8
  loc_C33819: ConcatStr
  loc_C3381A: FStStrNoPop var_AC
  loc_C3381D: LitStr "</title>"
  loc_C33820: ConcatStr
  loc_C33821: CVarStr var_BC
  loc_C33824: PopAdLdVar
  loc_C33825: FLdPr Me
  loc_C33828: MemLdRfVar from_stack_1.global_60
  loc_C3382B: LdPrVar
  loc_C3382D: LateMemCall
  loc_C33833: FFreeStr var_A8 = ""
  loc_C3383A: FFree1Var var_BC = ""
  loc_C3383D: LitVarStr var_94, "<style type=""text/css"">"
  loc_C33842: PopAdLdVar
  loc_C33843: FLdPr Me
  loc_C33846: MemLdRfVar from_stack_1.global_60
  loc_C33849: LdPrVar
  loc_C3384B: LateMemCall
  loc_C33851: LitVarStr var_94, "<!--"
  loc_C33856: PopAdLdVar
  loc_C33857: FLdPr Me
  loc_C3385A: MemLdRfVar from_stack_1.global_60
  loc_C3385D: LdPrVar
  loc_C3385F: LateMemCall
  loc_C33865: LitVarStr var_94, ".Encabezado {"
  loc_C3386A: PopAdLdVar
  loc_C3386B: FLdPr Me
  loc_C3386E: MemLdRfVar from_stack_1.global_60
  loc_C33871: LdPrVar
  loc_C33873: LateMemCall
  loc_C33879: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C3387E: PopAdLdVar
  loc_C3387F: FLdPr Me
  loc_C33882: MemLdRfVar from_stack_1.global_60
  loc_C33885: LdPrVar
  loc_C33887: LateMemCall
  loc_C3388D: LitVarStr var_94, " font-size: 10px;"
  loc_C33892: PopAdLdVar
  loc_C33893: FLdPr Me
  loc_C33896: MemLdRfVar from_stack_1.global_60
  loc_C33899: LdPrVar
  loc_C3389B: LateMemCall
  loc_C338A1: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C338A6: PopAdLdVar
  loc_C338A7: FLdPr Me
  loc_C338AA: MemLdRfVar from_stack_1.global_60
  loc_C338AD: LdPrVar
  loc_C338AF: LateMemCall
  loc_C338B5: LitVarStr var_94, "}"
  loc_C338BA: PopAdLdVar
  loc_C338BB: FLdPr Me
  loc_C338BE: MemLdRfVar from_stack_1.global_60
  loc_C338C1: LdPrVar
  loc_C338C3: LateMemCall
  loc_C338C9: LitVarStr var_94, ".EncabezadoRubros {"
  loc_C338CE: PopAdLdVar
  loc_C338CF: FLdPr Me
  loc_C338D2: MemLdRfVar from_stack_1.global_60
  loc_C338D5: LdPrVar
  loc_C338D7: LateMemCall
  loc_C338DD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C338E2: PopAdLdVar
  loc_C338E3: FLdPr Me
  loc_C338E6: MemLdRfVar from_stack_1.global_60
  loc_C338E9: LdPrVar
  loc_C338EB: LateMemCall
  loc_C338F1: LitVarStr var_94, " font-size: 9px;"
  loc_C338F6: PopAdLdVar
  loc_C338F7: FLdPr Me
  loc_C338FA: MemLdRfVar from_stack_1.global_60
  loc_C338FD: LdPrVar
  loc_C338FF: LateMemCall
  loc_C33905: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_C3390A: PopAdLdVar
  loc_C3390B: FLdPr Me
  loc_C3390E: MemLdRfVar from_stack_1.global_60
  loc_C33911: LdPrVar
  loc_C33913: LateMemCall
  loc_C33919: LitVarStr var_94, "}"
  loc_C3391E: PopAdLdVar
  loc_C3391F: FLdPr Me
  loc_C33922: MemLdRfVar from_stack_1.global_60
  loc_C33925: LdPrVar
  loc_C33927: LateMemCall
  loc_C3392D: LitVarStr var_94, ".Normal {"
  loc_C33932: PopAdLdVar
  loc_C33933: FLdPr Me
  loc_C33936: MemLdRfVar from_stack_1.global_60
  loc_C33939: LdPrVar
  loc_C3393B: LateMemCall
  loc_C33941: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C33946: PopAdLdVar
  loc_C33947: FLdPr Me
  loc_C3394A: MemLdRfVar from_stack_1.global_60
  loc_C3394D: LdPrVar
  loc_C3394F: LateMemCall
  loc_C33955: LitVarStr var_94, " font-size: 10px;"
  loc_C3395A: PopAdLdVar
  loc_C3395B: FLdPr Me
  loc_C3395E: MemLdRfVar from_stack_1.global_60
  loc_C33961: LdPrVar
  loc_C33963: LateMemCall
  loc_C33969: LitVarStr var_94, " vertical-align: top;"
  loc_C3396E: PopAdLdVar
  loc_C3396F: FLdPr Me
  loc_C33972: MemLdRfVar from_stack_1.global_60
  loc_C33975: LdPrVar
  loc_C33977: LateMemCall
  loc_C3397D: LitVarStr var_94, "}"
  loc_C33982: PopAdLdVar
  loc_C33983: FLdPr Me
  loc_C33986: MemLdRfVar from_stack_1.global_60
  loc_C33989: LdPrVar
  loc_C3398B: LateMemCall
  loc_C33991: LitVarStr var_94, ".Rubros {"
  loc_C33996: PopAdLdVar
  loc_C33997: FLdPr Me
  loc_C3399A: MemLdRfVar from_stack_1.global_60
  loc_C3399D: LdPrVar
  loc_C3399F: LateMemCall
  loc_C339A5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C339AA: PopAdLdVar
  loc_C339AB: FLdPr Me
  loc_C339AE: MemLdRfVar from_stack_1.global_60
  loc_C339B1: LdPrVar
  loc_C339B3: LateMemCall
  loc_C339B9: LitVarStr var_94, " font-size: 9px;"
  loc_C339BE: PopAdLdVar
  loc_C339BF: FLdPr Me
  loc_C339C2: MemLdRfVar from_stack_1.global_60
  loc_C339C5: LdPrVar
  loc_C339C7: LateMemCall
  loc_C339CD: LitVarStr var_94, " vertical-align: top;"
  loc_C339D2: PopAdLdVar
  loc_C339D3: FLdPr Me
  loc_C339D6: MemLdRfVar from_stack_1.global_60
  loc_C339D9: LdPrVar
  loc_C339DB: LateMemCall
  loc_C339E1: LitVarStr var_94, " padding-left: 4px;"
  loc_C339E6: PopAdLdVar
  loc_C339E7: FLdPr Me
  loc_C339EA: MemLdRfVar from_stack_1.global_60
  loc_C339ED: LdPrVar
  loc_C339EF: LateMemCall
  loc_C339F5: LitVarStr var_94, " padding-right: 4px;"
  loc_C339FA: PopAdLdVar
  loc_C339FB: FLdPr Me
  loc_C339FE: MemLdRfVar from_stack_1.global_60
  loc_C33A01: LdPrVar
  loc_C33A03: LateMemCall
  loc_C33A09: LitVarStr var_94, "}"
  loc_C33A0E: PopAdLdVar
  loc_C33A0F: FLdPr Me
  loc_C33A12: MemLdRfVar from_stack_1.global_60
  loc_C33A15: LdPrVar
  loc_C33A17: LateMemCall
  loc_C33A1D: LitVarStr var_94, ".DomiPostal {"
  loc_C33A22: PopAdLdVar
  loc_C33A23: FLdPr Me
  loc_C33A26: MemLdRfVar from_stack_1.global_60
  loc_C33A29: LdPrVar
  loc_C33A2B: LateMemCall
  loc_C33A31: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C33A36: PopAdLdVar
  loc_C33A37: FLdPr Me
  loc_C33A3A: MemLdRfVar from_stack_1.global_60
  loc_C33A3D: LdPrVar
  loc_C33A3F: LateMemCall
  loc_C33A45: LitVarStr var_94, "  font-size: 14px;"
  loc_C33A4A: PopAdLdVar
  loc_C33A4B: FLdPr Me
  loc_C33A4E: MemLdRfVar from_stack_1.global_60
  loc_C33A51: LdPrVar
  loc_C33A53: LateMemCall
  loc_C33A59: LitVarStr var_94, "  vertical-align: top;"
  loc_C33A5E: PopAdLdVar
  loc_C33A5F: FLdPr Me
  loc_C33A62: MemLdRfVar from_stack_1.global_60
  loc_C33A65: LdPrVar
  loc_C33A67: LateMemCall
  loc_C33A6D: LitVarStr var_94, "  font-weight: bold;"
  loc_C33A72: PopAdLdVar
  loc_C33A73: FLdPr Me
  loc_C33A76: MemLdRfVar from_stack_1.global_60
  loc_C33A79: LdPrVar
  loc_C33A7B: LateMemCall
  loc_C33A81: LitVarStr var_94, "  padding-top: 1px;"
  loc_C33A86: PopAdLdVar
  loc_C33A87: FLdPr Me
  loc_C33A8A: MemLdRfVar from_stack_1.global_60
  loc_C33A8D: LdPrVar
  loc_C33A8F: LateMemCall
  loc_C33A95: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C33A9A: PopAdLdVar
  loc_C33A9B: FLdPr Me
  loc_C33A9E: MemLdRfVar from_stack_1.global_60
  loc_C33AA1: LdPrVar
  loc_C33AA3: LateMemCall
  loc_C33AA9: LitVarStr var_94, "  padding-left: 5px;"
  loc_C33AAE: PopAdLdVar
  loc_C33AAF: FLdPr Me
  loc_C33AB2: MemLdRfVar from_stack_1.global_60
  loc_C33AB5: LdPrVar
  loc_C33AB7: LateMemCall
  loc_C33ABD: LitVarStr var_94, "  padding-right: 5px;"
  loc_C33AC2: PopAdLdVar
  loc_C33AC3: FLdPr Me
  loc_C33AC6: MemLdRfVar from_stack_1.global_60
  loc_C33AC9: LdPrVar
  loc_C33ACB: LateMemCall
  loc_C33AD1: LitVarStr var_94, "}"
  loc_C33AD6: PopAdLdVar
  loc_C33AD7: FLdPr Me
  loc_C33ADA: MemLdRfVar from_stack_1.global_60
  loc_C33ADD: LdPrVar
  loc_C33ADF: LateMemCall
  loc_C33AE5: LitVarStr var_94, ".DomiReal {"
  loc_C33AEA: PopAdLdVar
  loc_C33AEB: FLdPr Me
  loc_C33AEE: MemLdRfVar from_stack_1.global_60
  loc_C33AF1: LdPrVar
  loc_C33AF3: LateMemCall
  loc_C33AF9: LitVarStr var_94, "  font-family: ""Courier New"", Courier, monospace;"
  loc_C33AFE: PopAdLdVar
  loc_C33AFF: FLdPr Me
  loc_C33B02: MemLdRfVar from_stack_1.global_60
  loc_C33B05: LdPrVar
  loc_C33B07: LateMemCall
  loc_C33B0D: LitVarStr var_94, "  font-size: 14px;"
  loc_C33B12: PopAdLdVar
  loc_C33B13: FLdPr Me
  loc_C33B16: MemLdRfVar from_stack_1.global_60
  loc_C33B19: LdPrVar
  loc_C33B1B: LateMemCall
  loc_C33B21: LitVarStr var_94, "  vertical-align: top;"
  loc_C33B26: PopAdLdVar
  loc_C33B27: FLdPr Me
  loc_C33B2A: MemLdRfVar from_stack_1.global_60
  loc_C33B2D: LdPrVar
  loc_C33B2F: LateMemCall
  loc_C33B35: LitVarStr var_94, "  padding-top: 1px;"
  loc_C33B3A: PopAdLdVar
  loc_C33B3B: FLdPr Me
  loc_C33B3E: MemLdRfVar from_stack_1.global_60
  loc_C33B41: LdPrVar
  loc_C33B43: LateMemCall
  loc_C33B49: LitVarStr var_94, "  padding-bottom: 15px;"
  loc_C33B4E: PopAdLdVar
  loc_C33B4F: FLdPr Me
  loc_C33B52: MemLdRfVar from_stack_1.global_60
  loc_C33B55: LdPrVar
  loc_C33B57: LateMemCall
  loc_C33B5D: LitVarStr var_94, "  padding-left: 5px;"
  loc_C33B62: PopAdLdVar
  loc_C33B63: FLdPr Me
  loc_C33B66: MemLdRfVar from_stack_1.global_60
  loc_C33B69: LdPrVar
  loc_C33B6B: LateMemCall
  loc_C33B71: LitVarStr var_94, "  padding-right: 5px;"
  loc_C33B76: PopAdLdVar
  loc_C33B77: FLdPr Me
  loc_C33B7A: MemLdRfVar from_stack_1.global_60
  loc_C33B7D: LdPrVar
  loc_C33B7F: LateMemCall
  loc_C33B85: LitVarStr var_94, "}"
  loc_C33B8A: PopAdLdVar
  loc_C33B8B: FLdPr Me
  loc_C33B8E: MemLdRfVar from_stack_1.global_60
  loc_C33B91: LdPrVar
  loc_C33B93: LateMemCall
  loc_C33B99: LitVarStr var_94, ".MargIzq {"
  loc_C33B9E: PopAdLdVar
  loc_C33B9F: FLdPr Me
  loc_C33BA2: MemLdRfVar from_stack_1.global_60
  loc_C33BA5: LdPrVar
  loc_C33BA7: LateMemCall
  loc_C33BAD: LitVarStr var_94, "  padding-left:5px"
  loc_C33BB2: PopAdLdVar
  loc_C33BB3: FLdPr Me
  loc_C33BB6: MemLdRfVar from_stack_1.global_60
  loc_C33BB9: LdPrVar
  loc_C33BBB: LateMemCall
  loc_C33BC1: LitVarStr var_94, "}"
  loc_C33BC6: PopAdLdVar
  loc_C33BC7: FLdPr Me
  loc_C33BCA: MemLdRfVar from_stack_1.global_60
  loc_C33BCD: LdPrVar
  loc_C33BCF: LateMemCall
  loc_C33BD5: LitVarStr var_94, ".MargDer {"
  loc_C33BDA: PopAdLdVar
  loc_C33BDB: FLdPr Me
  loc_C33BDE: MemLdRfVar from_stack_1.global_60
  loc_C33BE1: LdPrVar
  loc_C33BE3: LateMemCall
  loc_C33BE9: LitVarStr var_94, "  padding-right:5px"
  loc_C33BEE: PopAdLdVar
  loc_C33BEF: FLdPr Me
  loc_C33BF2: MemLdRfVar from_stack_1.global_60
  loc_C33BF5: LdPrVar
  loc_C33BF7: LateMemCall
  loc_C33BFD: LitVarStr var_94, "}"
  loc_C33C02: PopAdLdVar
  loc_C33C03: FLdPr Me
  loc_C33C06: MemLdRfVar from_stack_1.global_60
  loc_C33C09: LdPrVar
  loc_C33C0B: LateMemCall
  loc_C33C11: LitVarStr var_94, ".NormalAbajo {"
  loc_C33C16: PopAdLdVar
  loc_C33C17: FLdPr Me
  loc_C33C1A: MemLdRfVar from_stack_1.global_60
  loc_C33C1D: LdPrVar
  loc_C33C1F: LateMemCall
  loc_C33C25: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C33C2A: PopAdLdVar
  loc_C33C2B: FLdPr Me
  loc_C33C2E: MemLdRfVar from_stack_1.global_60
  loc_C33C31: LdPrVar
  loc_C33C33: LateMemCall
  loc_C33C39: LitVarStr var_94, " font-size: 11px;"
  loc_C33C3E: PopAdLdVar
  loc_C33C3F: FLdPr Me
  loc_C33C42: MemLdRfVar from_stack_1.global_60
  loc_C33C45: LdPrVar
  loc_C33C47: LateMemCall
  loc_C33C4D: LitVarStr var_94, " vertical-align:bottom;"
  loc_C33C52: PopAdLdVar
  loc_C33C53: FLdPr Me
  loc_C33C56: MemLdRfVar from_stack_1.global_60
  loc_C33C59: LdPrVar
  loc_C33C5B: LateMemCall
  loc_C33C61: LitVarStr var_94, "}"
  loc_C33C66: PopAdLdVar
  loc_C33C67: FLdPr Me
  loc_C33C6A: MemLdRfVar from_stack_1.global_60
  loc_C33C6D: LdPrVar
  loc_C33C6F: LateMemCall
  loc_C33C75: LitVarStr var_94, ".NormalDetalle {"
  loc_C33C7A: PopAdLdVar
  loc_C33C7B: FLdPr Me
  loc_C33C7E: MemLdRfVar from_stack_1.global_60
  loc_C33C81: LdPrVar
  loc_C33C83: LateMemCall
  loc_C33C89: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C33C8E: PopAdLdVar
  loc_C33C8F: FLdPr Me
  loc_C33C92: MemLdRfVar from_stack_1.global_60
  loc_C33C95: LdPrVar
  loc_C33C97: LateMemCall
  loc_C33C9D: LitVarStr var_94, " font-size: 10px;"
  loc_C33CA2: PopAdLdVar
  loc_C33CA3: FLdPr Me
  loc_C33CA6: MemLdRfVar from_stack_1.global_60
  loc_C33CA9: LdPrVar
  loc_C33CAB: LateMemCall
  loc_C33CB1: LitVarStr var_94, " vertical-align: top;"
  loc_C33CB6: PopAdLdVar
  loc_C33CB7: FLdPr Me
  loc_C33CBA: MemLdRfVar from_stack_1.global_60
  loc_C33CBD: LdPrVar
  loc_C33CBF: LateMemCall
  loc_C33CC5: LitVarStr var_94, "}"
  loc_C33CCA: PopAdLdVar
  loc_C33CCB: FLdPr Me
  loc_C33CCE: MemLdRfVar from_stack_1.global_60
  loc_C33CD1: LdPrVar
  loc_C33CD3: LateMemCall
  loc_C33CD9: LitVarStr var_94, ".NormalBloqueFin {"
  loc_C33CDE: PopAdLdVar
  loc_C33CDF: FLdPr Me
  loc_C33CE2: MemLdRfVar from_stack_1.global_60
  loc_C33CE5: LdPrVar
  loc_C33CE7: LateMemCall
  loc_C33CED: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C33CF2: PopAdLdVar
  loc_C33CF3: FLdPr Me
  loc_C33CF6: MemLdRfVar from_stack_1.global_60
  loc_C33CF9: LdPrVar
  loc_C33CFB: LateMemCall
  loc_C33D01: LitVarStr var_94, " font-size: 10px;"
  loc_C33D06: PopAdLdVar
  loc_C33D07: FLdPr Me
  loc_C33D0A: MemLdRfVar from_stack_1.global_60
  loc_C33D0D: LdPrVar
  loc_C33D0F: LateMemCall
  loc_C33D15: LitVarStr var_94, " vertical-align: top;"
  loc_C33D1A: PopAdLdVar
  loc_C33D1B: FLdPr Me
  loc_C33D1E: MemLdRfVar from_stack_1.global_60
  loc_C33D21: LdPrVar
  loc_C33D23: LateMemCall
  loc_C33D29: LitVarStr var_94, " padding-right: 1px;"
  loc_C33D2E: PopAdLdVar
  loc_C33D2F: FLdPr Me
  loc_C33D32: MemLdRfVar from_stack_1.global_60
  loc_C33D35: LdPrVar
  loc_C33D37: LateMemCall
  loc_C33D3D: LitVarStr var_94, "}"
  loc_C33D42: PopAdLdVar
  loc_C33D43: FLdPr Me
  loc_C33D46: MemLdRfVar from_stack_1.global_60
  loc_C33D49: LdPrVar
  loc_C33D4B: LateMemCall
  loc_C33D51: LitVarStr var_94, ".NormalBloqueFinGrande {"
  loc_C33D56: PopAdLdVar
  loc_C33D57: FLdPr Me
  loc_C33D5A: MemLdRfVar from_stack_1.global_60
  loc_C33D5D: LdPrVar
  loc_C33D5F: LateMemCall
  loc_C33D65: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C33D6A: PopAdLdVar
  loc_C33D6B: FLdPr Me
  loc_C33D6E: MemLdRfVar from_stack_1.global_60
  loc_C33D71: LdPrVar
  loc_C33D73: LateMemCall
  loc_C33D79: LitVarStr var_94, " font-size: 14px;"
  loc_C33D7E: PopAdLdVar
  loc_C33D7F: FLdPr Me
  loc_C33D82: MemLdRfVar from_stack_1.global_60
  loc_C33D85: LdPrVar
  loc_C33D87: LateMemCall
  loc_C33D8D: LitVarStr var_94, " vertical-align: top;"
  loc_C33D92: PopAdLdVar
  loc_C33D93: FLdPr Me
  loc_C33D96: MemLdRfVar from_stack_1.global_60
  loc_C33D99: LdPrVar
  loc_C33D9B: LateMemCall
  loc_C33DA1: LitVarStr var_94, "}"
  loc_C33DA6: PopAdLdVar
  loc_C33DA7: FLdPr Me
  loc_C33DAA: MemLdRfVar from_stack_1.global_60
  loc_C33DAD: LdPrVar
  loc_C33DAF: LateMemCall
  loc_C33DB5: LitVarStr var_94, ".NombreMunicipio {"
  loc_C33DBA: PopAdLdVar
  loc_C33DBB: FLdPr Me
  loc_C33DBE: MemLdRfVar from_stack_1.global_60
  loc_C33DC1: LdPrVar
  loc_C33DC3: LateMemCall
  loc_C33DC9: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C33DCE: PopAdLdVar
  loc_C33DCF: FLdPr Me
  loc_C33DD2: MemLdRfVar from_stack_1.global_60
  loc_C33DD5: LdPrVar
  loc_C33DD7: LateMemCall
  loc_C33DDD: LitVarStr var_94, " font-size: 14px;"
  loc_C33DE2: PopAdLdVar
  loc_C33DE3: FLdPr Me
  loc_C33DE6: MemLdRfVar from_stack_1.global_60
  loc_C33DE9: LdPrVar
  loc_C33DEB: LateMemCall
  loc_C33DF1: LitVarStr var_94, " font-weight: bold;"
  loc_C33DF6: PopAdLdVar
  loc_C33DF7: FLdPr Me
  loc_C33DFA: MemLdRfVar from_stack_1.global_60
  loc_C33DFD: LdPrVar
  loc_C33DFF: LateMemCall
  loc_C33E05: LitVarStr var_94, "}"
  loc_C33E0A: PopAdLdVar
  loc_C33E0B: FLdPr Me
  loc_C33E0E: MemLdRfVar from_stack_1.global_60
  loc_C33E11: LdPrVar
  loc_C33E13: LateMemCall
  loc_C33E19: LitVarStr var_94, ".DatosMunicipio {"
  loc_C33E1E: PopAdLdVar
  loc_C33E1F: FLdPr Me
  loc_C33E22: MemLdRfVar from_stack_1.global_60
  loc_C33E25: LdPrVar
  loc_C33E27: LateMemCall
  loc_C33E2D: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C33E32: PopAdLdVar
  loc_C33E33: FLdPr Me
  loc_C33E36: MemLdRfVar from_stack_1.global_60
  loc_C33E39: LdPrVar
  loc_C33E3B: LateMemCall
  loc_C33E41: LitVarStr var_94, " font-size: 9px;"
  loc_C33E46: PopAdLdVar
  loc_C33E47: FLdPr Me
  loc_C33E4A: MemLdRfVar from_stack_1.global_60
  loc_C33E4D: LdPrVar
  loc_C33E4F: LateMemCall
  loc_C33E55: LitVarStr var_94, "}"
  loc_C33E5A: PopAdLdVar
  loc_C33E5B: FLdPr Me
  loc_C33E5E: MemLdRfVar from_stack_1.global_60
  loc_C33E61: LdPrVar
  loc_C33E63: LateMemCall
  loc_C33E69: LitVarStr var_94, ".Totales {"
  loc_C33E6E: PopAdLdVar
  loc_C33E6F: FLdPr Me
  loc_C33E72: MemLdRfVar from_stack_1.global_60
  loc_C33E75: LdPrVar
  loc_C33E77: LateMemCall
  loc_C33E7D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C33E82: PopAdLdVar
  loc_C33E83: FLdPr Me
  loc_C33E86: MemLdRfVar from_stack_1.global_60
  loc_C33E89: LdPrVar
  loc_C33E8B: LateMemCall
  loc_C33E91: LitVarStr var_94, " font-size: 13px;"
  loc_C33E96: PopAdLdVar
  loc_C33E97: FLdPr Me
  loc_C33E9A: MemLdRfVar from_stack_1.global_60
  loc_C33E9D: LdPrVar
  loc_C33E9F: LateMemCall
  loc_C33EA5: LitVarStr var_94, " vertical-align: top;"
  loc_C33EAA: PopAdLdVar
  loc_C33EAB: FLdPr Me
  loc_C33EAE: MemLdRfVar from_stack_1.global_60
  loc_C33EB1: LdPrVar
  loc_C33EB3: LateMemCall
  loc_C33EB9: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C33EBE: PopAdLdVar
  loc_C33EBF: FLdPr Me
  loc_C33EC2: MemLdRfVar from_stack_1.global_60
  loc_C33EC5: LdPrVar
  loc_C33EC7: LateMemCall
  loc_C33ECD: LitVarStr var_94, " font-weight: bold;"
  loc_C33ED2: PopAdLdVar
  loc_C33ED3: FLdPr Me
  loc_C33ED6: MemLdRfVar from_stack_1.global_60
  loc_C33ED9: LdPrVar
  loc_C33EDB: LateMemCall
  loc_C33EE1: LitVarStr var_94, " padding-right: 1px;"
  loc_C33EE6: PopAdLdVar
  loc_C33EE7: FLdPr Me
  loc_C33EEA: MemLdRfVar from_stack_1.global_60
  loc_C33EED: LdPrVar
  loc_C33EEF: LateMemCall
  loc_C33EF5: LitVarStr var_94, "}"
  loc_C33EFA: PopAdLdVar
  loc_C33EFB: FLdPr Me
  loc_C33EFE: MemLdRfVar from_stack_1.global_60
  loc_C33F01: LdPrVar
  loc_C33F03: LateMemCall
  loc_C33F09: LitVarStr var_94, ".Total {"
  loc_C33F0E: PopAdLdVar
  loc_C33F0F: FLdPr Me
  loc_C33F12: MemLdRfVar from_stack_1.global_60
  loc_C33F15: LdPrVar
  loc_C33F17: LateMemCall
  loc_C33F1D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C33F22: PopAdLdVar
  loc_C33F23: FLdPr Me
  loc_C33F26: MemLdRfVar from_stack_1.global_60
  loc_C33F29: LdPrVar
  loc_C33F2B: LateMemCall
  loc_C33F31: LitVarStr var_94, " font-size: 14px;"
  loc_C33F36: PopAdLdVar
  loc_C33F37: FLdPr Me
  loc_C33F3A: MemLdRfVar from_stack_1.global_60
  loc_C33F3D: LdPrVar
  loc_C33F3F: LateMemCall
  loc_C33F45: LitVarStr var_94, " vertical-align: top;"
  loc_C33F4A: PopAdLdVar
  loc_C33F4B: FLdPr Me
  loc_C33F4E: MemLdRfVar from_stack_1.global_60
  loc_C33F51: LdPrVar
  loc_C33F53: LateMemCall
  loc_C33F59: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C33F5E: PopAdLdVar
  loc_C33F5F: FLdPr Me
  loc_C33F62: MemLdRfVar from_stack_1.global_60
  loc_C33F65: LdPrVar
  loc_C33F67: LateMemCall
  loc_C33F6D: LitVarStr var_94, " font-weight: bold;"
  loc_C33F72: PopAdLdVar
  loc_C33F73: FLdPr Me
  loc_C33F76: MemLdRfVar from_stack_1.global_60
  loc_C33F79: LdPrVar
  loc_C33F7B: LateMemCall
  loc_C33F81: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C33F86: PopAdLdVar
  loc_C33F87: FLdPr Me
  loc_C33F8A: MemLdRfVar from_stack_1.global_60
  loc_C33F8D: LdPrVar
  loc_C33F8F: LateMemCall
  loc_C33F95: LitVarStr var_94, "}"
  loc_C33F9A: PopAdLdVar
  loc_C33F9B: FLdPr Me
  loc_C33F9E: MemLdRfVar from_stack_1.global_60
  loc_C33FA1: LdPrVar
  loc_C33FA3: LateMemCall
  loc_C33FA9: LitVarStr var_94, ".CodBar {"
  loc_C33FAE: PopAdLdVar
  loc_C33FAF: FLdPr Me
  loc_C33FB2: MemLdRfVar from_stack_1.global_60
  loc_C33FB5: LdPrVar
  loc_C33FB7: LateMemCall
  loc_C33FBD: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C33FC2: PopAdLdVar
  loc_C33FC3: FLdPr Me
  loc_C33FC6: MemLdRfVar from_stack_1.global_60
  loc_C33FC9: LdPrVar
  loc_C33FCB: LateMemCall
  loc_C33FD1: LitVarStr var_94, " font-size: 48px;"
  loc_C33FD6: PopAdLdVar
  loc_C33FD7: FLdPr Me
  loc_C33FDA: MemLdRfVar from_stack_1.global_60
  loc_C33FDD: LdPrVar
  loc_C33FDF: LateMemCall
  loc_C33FE5: LitVarStr var_94, " font-style: normal;"
  loc_C33FEA: PopAdLdVar
  loc_C33FEB: FLdPr Me
  loc_C33FEE: MemLdRfVar from_stack_1.global_60
  loc_C33FF1: LdPrVar
  loc_C33FF3: LateMemCall
  loc_C33FF9: LitVarStr var_94, " line-height: normal;"
  loc_C33FFE: PopAdLdVar
  loc_C33FFF: FLdPr Me
  loc_C34002: MemLdRfVar from_stack_1.global_60
  loc_C34005: LdPrVar
  loc_C34007: LateMemCall
  loc_C3400D: LitVarStr var_94, " font-weight: normal;"
  loc_C34012: PopAdLdVar
  loc_C34013: FLdPr Me
  loc_C34016: MemLdRfVar from_stack_1.global_60
  loc_C34019: LdPrVar
  loc_C3401B: LateMemCall
  loc_C34021: LitVarStr var_94, "}"
  loc_C34026: PopAdLdVar
  loc_C34027: FLdPr Me
  loc_C3402A: MemLdRfVar from_stack_1.global_60
  loc_C3402D: LdPrVar
  loc_C3402F: LateMemCall
  loc_C34035: LitVarStr var_94, ".CodBarChica {"
  loc_C3403A: PopAdLdVar
  loc_C3403B: FLdPr Me
  loc_C3403E: MemLdRfVar from_stack_1.global_60
  loc_C34041: LdPrVar
  loc_C34043: LateMemCall
  loc_C34049: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_C3404E: PopAdLdVar
  loc_C3404F: FLdPr Me
  loc_C34052: MemLdRfVar from_stack_1.global_60
  loc_C34055: LdPrVar
  loc_C34057: LateMemCall
  loc_C3405D: LitVarStr var_94, " font-size: 38px;"
  loc_C34062: PopAdLdVar
  loc_C34063: FLdPr Me
  loc_C34066: MemLdRfVar from_stack_1.global_60
  loc_C34069: LdPrVar
  loc_C3406B: LateMemCall
  loc_C34071: LitVarStr var_94, " font-style: normal;"
  loc_C34076: PopAdLdVar
  loc_C34077: FLdPr Me
  loc_C3407A: MemLdRfVar from_stack_1.global_60
  loc_C3407D: LdPrVar
  loc_C3407F: LateMemCall
  loc_C34085: LitVarStr var_94, " line-height: normal;"
  loc_C3408A: PopAdLdVar
  loc_C3408B: FLdPr Me
  loc_C3408E: MemLdRfVar from_stack_1.global_60
  loc_C34091: LdPrVar
  loc_C34093: LateMemCall
  loc_C34099: LitVarStr var_94, " font-weight: normal;"
  loc_C3409E: PopAdLdVar
  loc_C3409F: FLdPr Me
  loc_C340A2: MemLdRfVar from_stack_1.global_60
  loc_C340A5: LdPrVar
  loc_C340A7: LateMemCall
  loc_C340AD: LitVarStr var_94, "}"
  loc_C340B2: PopAdLdVar
  loc_C340B3: FLdPr Me
  loc_C340B6: MemLdRfVar from_stack_1.global_60
  loc_C340B9: LdPrVar
  loc_C340BB: LateMemCall
  loc_C340C1: LitVarStr var_94, ".CorreoCelda {"
  loc_C340C6: PopAdLdVar
  loc_C340C7: FLdPr Me
  loc_C340CA: MemLdRfVar from_stack_1.global_60
  loc_C340CD: LdPrVar
  loc_C340CF: LateMemCall
  loc_C340D5: LitVarStr var_94, " border: 1px solid black;"
  loc_C340DA: PopAdLdVar
  loc_C340DB: FLdPr Me
  loc_C340DE: MemLdRfVar from_stack_1.global_60
  loc_C340E1: LdPrVar
  loc_C340E3: LateMemCall
  loc_C340E9: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C340EE: PopAdLdVar
  loc_C340EF: FLdPr Me
  loc_C340F2: MemLdRfVar from_stack_1.global_60
  loc_C340F5: LdPrVar
  loc_C340F7: LateMemCall
  loc_C340FD: LitVarStr var_94, " font-size: 6px;"
  loc_C34102: PopAdLdVar
  loc_C34103: FLdPr Me
  loc_C34106: MemLdRfVar from_stack_1.global_60
  loc_C34109: LdPrVar
  loc_C3410B: LateMemCall
  loc_C34111: LitVarStr var_94, " text-align:center;"
  loc_C34116: PopAdLdVar
  loc_C34117: FLdPr Me
  loc_C3411A: MemLdRfVar from_stack_1.global_60
  loc_C3411D: LdPrVar
  loc_C3411F: LateMemCall
  loc_C34125: LitVarStr var_94, " vertical-align: middle;"
  loc_C3412A: PopAdLdVar
  loc_C3412B: FLdPr Me
  loc_C3412E: MemLdRfVar from_stack_1.global_60
  loc_C34131: LdPrVar
  loc_C34133: LateMemCall
  loc_C34139: LitVarStr var_94, "}"
  loc_C3413E: PopAdLdVar
  loc_C3413F: FLdPr Me
  loc_C34142: MemLdRfVar from_stack_1.global_60
  loc_C34145: LdPrVar
  loc_C34147: LateMemCall
  loc_C3414D: LitVarStr var_94, ".CorreoCeldaFinal {"
  loc_C34152: PopAdLdVar
  loc_C34153: FLdPr Me
  loc_C34156: MemLdRfVar from_stack_1.global_60
  loc_C34159: LdPrVar
  loc_C3415B: LateMemCall
  loc_C34161: LitVarStr var_94, " border:none;"
  loc_C34166: PopAdLdVar
  loc_C34167: FLdPr Me
  loc_C3416A: MemLdRfVar from_stack_1.global_60
  loc_C3416D: LdPrVar
  loc_C3416F: LateMemCall
  loc_C34175: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_C3417A: PopAdLdVar
  loc_C3417B: FLdPr Me
  loc_C3417E: MemLdRfVar from_stack_1.global_60
  loc_C34181: LdPrVar
  loc_C34183: LateMemCall
  loc_C34189: LitVarStr var_94, " font-size: 6px;"
  loc_C3418E: PopAdLdVar
  loc_C3418F: FLdPr Me
  loc_C34192: MemLdRfVar from_stack_1.global_60
  loc_C34195: LdPrVar
  loc_C34197: LateMemCall
  loc_C3419D: LitVarStr var_94, " text-align:center;"
  loc_C341A2: PopAdLdVar
  loc_C341A3: FLdPr Me
  loc_C341A6: MemLdRfVar from_stack_1.global_60
  loc_C341A9: LdPrVar
  loc_C341AB: LateMemCall
  loc_C341B1: LitVarStr var_94, " vertical-align: middle;"
  loc_C341B6: PopAdLdVar
  loc_C341B7: FLdPr Me
  loc_C341BA: MemLdRfVar from_stack_1.global_60
  loc_C341BD: LdPrVar
  loc_C341BF: LateMemCall
  loc_C341C5: LitVarStr var_94, "}"
  loc_C341CA: PopAdLdVar
  loc_C341CB: FLdPr Me
  loc_C341CE: MemLdRfVar from_stack_1.global_60
  loc_C341D1: LdPrVar
  loc_C341D3: LateMemCall
  loc_C341D9: LitVarStr var_94, ".CorreoTabla {"
  loc_C341DE: PopAdLdVar
  loc_C341DF: FLdPr Me
  loc_C341E2: MemLdRfVar from_stack_1.global_60
  loc_C341E5: LdPrVar
  loc_C341E7: LateMemCall
  loc_C341ED: LitVarStr var_94, " border:none;"
  loc_C341F2: PopAdLdVar
  loc_C341F3: FLdPr Me
  loc_C341F6: MemLdRfVar from_stack_1.global_60
  loc_C341F9: LdPrVar
  loc_C341FB: LateMemCall
  loc_C34201: LitVarStr var_94, " border-collapse:collapse;"
  loc_C34206: PopAdLdVar
  loc_C34207: FLdPr Me
  loc_C3420A: MemLdRfVar from_stack_1.global_60
  loc_C3420D: LdPrVar
  loc_C3420F: LateMemCall
  loc_C34215: LitVarStr var_94, "}"
  loc_C3421A: PopAdLdVar
  loc_C3421B: FLdPr Me
  loc_C3421E: MemLdRfVar from_stack_1.global_60
  loc_C34221: LdPrVar
  loc_C34223: LateMemCall
  loc_C34229: LitVarStr var_94, ".LogoFin {"
  loc_C3422E: PopAdLdVar
  loc_C3422F: FLdPr Me
  loc_C34232: MemLdRfVar from_stack_1.global_60
  loc_C34235: LdPrVar
  loc_C34237: LateMemCall
  loc_C3423D: LitVarStr var_94, " float:right;"
  loc_C34242: PopAdLdVar
  loc_C34243: FLdPr Me
  loc_C34246: MemLdRfVar from_stack_1.global_60
  loc_C34249: LdPrVar
  loc_C3424B: LateMemCall
  loc_C34251: LitVarStr var_94, " clear:right;"
  loc_C34256: PopAdLdVar
  loc_C34257: FLdPr Me
  loc_C3425A: MemLdRfVar from_stack_1.global_60
  loc_C3425D: LdPrVar
  loc_C3425F: LateMemCall
  loc_C34265: LitVarStr var_94, " margin:10px;"
  loc_C3426A: PopAdLdVar
  loc_C3426B: FLdPr Me
  loc_C3426E: MemLdRfVar from_stack_1.global_60
  loc_C34271: LdPrVar
  loc_C34273: LateMemCall
  loc_C34279: LitVarStr var_94, " vertical-align:top"
  loc_C3427E: PopAdLdVar
  loc_C3427F: FLdPr Me
  loc_C34282: MemLdRfVar from_stack_1.global_60
  loc_C34285: LdPrVar
  loc_C34287: LateMemCall
  loc_C3428D: LitVarStr var_94, "}"
  loc_C34292: PopAdLdVar
  loc_C34293: FLdPr Me
  loc_C34296: MemLdRfVar from_stack_1.global_60
  loc_C34299: LdPrVar
  loc_C3429B: LateMemCall
  loc_C342A1: LitVarStr var_94, ".NoBordeAbajo {"
  loc_C342A6: PopAdLdVar
  loc_C342A7: FLdPr Me
  loc_C342AA: MemLdRfVar from_stack_1.global_60
  loc_C342AD: LdPrVar
  loc_C342AF: LateMemCall
  loc_C342B5: LitVarStr var_94, " border-bottom:none"
  loc_C342BA: PopAdLdVar
  loc_C342BB: FLdPr Me
  loc_C342BE: MemLdRfVar from_stack_1.global_60
  loc_C342C1: LdPrVar
  loc_C342C3: LateMemCall
  loc_C342C9: LitVarStr var_94, "}"
  loc_C342CE: PopAdLdVar
  loc_C342CF: FLdPr Me
  loc_C342D2: MemLdRfVar from_stack_1.global_60
  loc_C342D5: LdPrVar
  loc_C342D7: LateMemCall
  loc_C342DD: LitVarStr var_94, ".NoBordeArriba {"
  loc_C342E2: PopAdLdVar
  loc_C342E3: FLdPr Me
  loc_C342E6: MemLdRfVar from_stack_1.global_60
  loc_C342E9: LdPrVar
  loc_C342EB: LateMemCall
  loc_C342F1: LitVarStr var_94, " border-top:none"
  loc_C342F6: PopAdLdVar
  loc_C342F7: FLdPr Me
  loc_C342FA: MemLdRfVar from_stack_1.global_60
  loc_C342FD: LdPrVar
  loc_C342FF: LateMemCall
  loc_C34305: LitVarStr var_94, "}"
  loc_C3430A: PopAdLdVar
  loc_C3430B: FLdPr Me
  loc_C3430E: MemLdRfVar from_stack_1.global_60
  loc_C34311: LdPrVar
  loc_C34313: LateMemCall
  loc_C34319: LitVarStr var_94, "-->"
  loc_C3431E: PopAdLdVar
  loc_C3431F: FLdPr Me
  loc_C34322: MemLdRfVar from_stack_1.global_60
  loc_C34325: LdPrVar
  loc_C34327: LateMemCall
  loc_C3432D: LitVarStr var_94, "</style>"
  loc_C34332: PopAdLdVar
  loc_C34333: FLdPr Me
  loc_C34336: MemLdRfVar from_stack_1.global_60
  loc_C34339: LdPrVar
  loc_C3433B: LateMemCall
  loc_C34341: LitI4 0
  loc_C34346: FStStrCopy var_AC
  loc_C34349: FLdRfVar var_AC
  loc_C3434C: LitI4 0
  loc_C34351: FStStrCopy var_A8
  loc_C34354: FLdRfVar var_A8
  loc_C34357: LitI2_Byte 0
  loc_C34359: PopTmpLdAd2 var_BE
  loc_C3435C: FLdPr Me
  loc_C3435F: MemLdRfVar from_stack_1.global_60
  loc_C34362: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C34367: FFreeStr var_A8 = ""
  loc_C3436E: ExitProcHresult
End Function

Private Function Proc_312_24_BED438() 'BED438
  'Data Table: 4C11B4
  loc_BECC24: LitVarStr var_94, "<table align=""center"" height=""350"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_BECC29: PopAdLdVar
  loc_BECC2A: FLdPr Me
  loc_BECC2D: MemLdRfVar from_stack_1.global_60
  loc_BECC30: LdPrVar
  loc_BECC32: LateMemCall
  loc_BECC38: LitVarStr var_94, "  <tr valign=""top""><td height=""350"">"
  loc_BECC3D: PopAdLdVar
  loc_BECC3E: FLdPr Me
  loc_BECC41: MemLdRfVar from_stack_1.global_60
  loc_BECC44: LdPrVar
  loc_BECC46: LateMemCall
  loc_BECC4C: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_BECC51: PopAdLdVar
  loc_BECC52: FLdPr Me
  loc_BECC55: MemLdRfVar from_stack_1.global_60
  loc_BECC58: LdPrVar
  loc_BECC5A: LateMemCall
  loc_BECC60: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BECC65: PopAdLdVar
  loc_BECC66: FLdPr Me
  loc_BECC69: MemLdRfVar from_stack_1.global_60
  loc_BECC6C: LdPrVar
  loc_BECC6E: LateMemCall
  loc_BECC74: LitStr "        <td colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio MargIzq"" style=""padding-top: 1px;padding-bottom: 1px""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BECC77: LitI2_Byte &H5F
  loc_BECC79: CStrUI1
  loc_BECC7B: FStStrNoPop var_A8
  loc_BECC7E: ConcatStr
  loc_BECC7F: FStStrNoPop var_AC
  loc_BECC82: LitStr """ height="""
  loc_BECC85: ConcatStr
  loc_BECC86: FStStrNoPop var_B0
  loc_BECC89: LitI2_Byte &H3C
  loc_BECC8B: CStrUI1
  loc_BECC8D: FStStrNoPop var_B4
  loc_BECC90: ConcatStr
  loc_BECC91: FStStrNoPop var_B8
  loc_BECC94: LitStr """ align=""left""><span class=""NombreMunicipio"">"
  loc_BECC97: ConcatStr
  loc_BECC98: FStStrNoPop var_BC
  loc_BECC9B: LitStr "Municipalidad de Guaymallén"
  loc_BECC9E: ConcatStr
  loc_BECC9F: FStStrNoPop var_C0
  loc_BECCA2: LitStr "</span><br>"
  loc_BECCA5: ConcatStr
  loc_BECCA6: CVarStr var_D0
  loc_BECCA9: PopAdLdVar
  loc_BECCAA: FLdPr Me
  loc_BECCAD: MemLdRfVar from_stack_1.global_60
  loc_BECCB0: LdPrVar
  loc_BECCB2: LateMemCall
  loc_BECCB8: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BECCC9: FFree1Var var_D0 = ""
  loc_BECCCC: LitStr "          "
  loc_BECCCF: LitStr "Dirección de Rentas"
  loc_BECCD2: ConcatStr
  loc_BECCD3: FStStrNoPop var_A8
  loc_BECCD6: LitStr "<br>"
  loc_BECCD9: ConcatStr
  loc_BECCDA: CVarStr var_D0
  loc_BECCDD: PopAdLdVar
  loc_BECCDE: FLdPr Me
  loc_BECCE1: MemLdRfVar from_stack_1.global_60
  loc_BECCE4: LdPrVar
  loc_BECCE6: LateMemCall
  loc_BECCEC: FFree1Str var_A8
  loc_BECCEF: FFree1Var var_D0 = ""
  loc_BECCF2: LitStr "          "
  loc_BECCF5: LitStr "Libertad 720 - Villa Nueva"
  loc_BECCF8: ConcatStr
  loc_BECCF9: FStStrNoPop var_A8
  loc_BECCFC: LitStr "<br>"
  loc_BECCFF: ConcatStr
  loc_BECD00: CVarStr var_D0
  loc_BECD03: PopAdLdVar
  loc_BECD04: FLdPr Me
  loc_BECD07: MemLdRfVar from_stack_1.global_60
  loc_BECD0A: LdPrVar
  loc_BECD0C: LateMemCall
  loc_BECD12: FFree1Str var_A8
  loc_BECD15: FFree1Var var_D0 = ""
  loc_BECD18: LitStr "          "
  loc_BECD1B: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_BECD1E: ConcatStr
  loc_BECD1F: FStStrNoPop var_A8
  loc_BECD22: LitStr "<br>"
  loc_BECD25: ConcatStr
  loc_BECD26: CVarStr var_D0
  loc_BECD29: PopAdLdVar
  loc_BECD2A: FLdPr Me
  loc_BECD2D: MemLdRfVar from_stack_1.global_60
  loc_BECD30: LdPrVar
  loc_BECD32: LateMemCall
  loc_BECD38: FFree1Str var_A8
  loc_BECD3B: FFree1Var var_D0 = ""
  loc_BECD3E: LitStr "          "
  loc_BECD41: LitStr "C.U.I.T.: "
  loc_BECD44: ConcatStr
  loc_BECD45: FStStrNoPop var_A8
  loc_BECD48: LitStr "30-99914707-7"
  loc_BECD4B: ConcatStr
  loc_BECD4C: FStStrNoPop var_AC
  loc_BECD4F: LitStr "</td>"
  loc_BECD52: ConcatStr
  loc_BECD53: CVarStr var_D0
  loc_BECD56: PopAdLdVar
  loc_BECD57: FLdPr Me
  loc_BECD5A: MemLdRfVar from_stack_1.global_60
  loc_BECD5D: LdPrVar
  loc_BECD5F: LateMemCall
  loc_BECD65: FFreeStr var_A8 = ""
  loc_BECD6C: FFree1Var var_D0 = ""
  loc_BECD6F: LitVarStr var_94, "        <td class=""NoBordeAbajo"" width=""200"" height=""31"" align=""center"" valign=""middle"">"
  loc_BECD74: PopAdLdVar
  loc_BECD75: FLdPr Me
  loc_BECD78: MemLdRfVar from_stack_1.global_60
  loc_BECD7B: LdPrVar
  loc_BECD7D: LateMemCall
  loc_BECD83: LitVarStr var_94, "        <div>&nbsp;</div>"
  loc_BECD88: PopAdLdVar
  loc_BECD89: FLdPr Me
  loc_BECD8C: MemLdRfVar from_stack_1.global_60
  loc_BECD8F: LdPrVar
  loc_BECD91: LateMemCall
  loc_BECD97: LitVarStr var_94, "        <table width=""42" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""0"" class=""CorreoTabla"" >"
  loc_BECD9C: PopAdLdVar
  loc_BECD9D: FLdPr Me
  loc_BECDA0: MemLdRfVar from_stack_1.global_60
  loc_BECDA3: LdPrVar
  loc_BECDA5: LateMemCall
  loc_BECDAB: LitVarStr var_94, "          <tr>"
  loc_BECDB0: PopAdLdVar
  loc_BECDB1: FLdPr Me
  loc_BECDB4: MemLdRfVar from_stack_1.global_60
  loc_BECDB7: LdPrVar
  loc_BECDB9: LateMemCall
  loc_BECDBF: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-right:none"">C<br>O<br>R<br>R</td>"
  loc_BECDC4: PopAdLdVar
  loc_BECDC5: FLdPr Me
  loc_BECDC8: MemLdRfVar from_stack_1.global_60
  loc_BECDCB: LdPrVar
  loc_BECDCD: LateMemCall
  loc_BECDD3: LitVarStr var_94, "            <td class=""CorreoCelda"" rowspan=""3"" style=""border-left:none"">O<br>F<br>I<br>C</td>"
  loc_BECDD8: PopAdLdVar
  loc_BECDD9: FLdPr Me
  loc_BECDDC: MemLdRfVar from_stack_1.global_60
  loc_BECDDF: LdPrVar
  loc_BECDE1: LateMemCall
  loc_BECDE7: LitVarStr var_94, "            <td class=""CorreoCelda"">FRANQUEO A PAGAR</td>"
  loc_BECDEC: PopAdLdVar
  loc_BECDED: FLdPr Me
  loc_BECDF0: MemLdRfVar from_stack_1.global_60
  loc_BECDF3: LdPrVar
  loc_BECDF5: LateMemCall
  loc_BECDFB: LitVarStr var_94, "          </tr>"
  loc_BECE00: PopAdLdVar
  loc_BECE01: FLdPr Me
  loc_BECE04: MemLdRfVar from_stack_1.global_60
  loc_BECE07: LdPrVar
  loc_BECE09: LateMemCall
  loc_BECE0F: LitVarStr var_94, "          <tr>"
  loc_BECE14: PopAdLdVar
  loc_BECE15: FLdPr Me
  loc_BECE18: MemLdRfVar from_stack_1.global_60
  loc_BECE1B: LdPrVar
  loc_BECE1D: LateMemCall
  loc_BECE23: LitVarStr var_94, "            <td class=""CorreoCelda"">CTA CTE N&deg; 17438</td>"
  loc_BECE28: PopAdLdVar
  loc_BECE29: FLdPr Me
  loc_BECE2C: MemLdRfVar from_stack_1.global_60
  loc_BECE2F: LdPrVar
  loc_BECE31: LateMemCall
  loc_BECE37: LitVarStr var_94, "          </tr>"
  loc_BECE3C: PopAdLdVar
  loc_BECE3D: FLdPr Me
  loc_BECE40: MemLdRfVar from_stack_1.global_60
  loc_BECE43: LdPrVar
  loc_BECE45: LateMemCall
  loc_BECE4B: LitVarStr var_94, "          <tr>"
  loc_BECE50: PopAdLdVar
  loc_BECE51: FLdPr Me
  loc_BECE54: MemLdRfVar from_stack_1.global_60
  loc_BECE57: LdPrVar
  loc_BECE59: LateMemCall
  loc_BECE5F: LitStr "            <td class=""CorreoCelda"">CUIT: "
  loc_BECE62: LitStr "30-99914707-7"
  loc_BECE65: ConcatStr
  loc_BECE66: FStStrNoPop var_A8
  loc_BECE69: LitStr "</td>"
  loc_BECE6C: ConcatStr
  loc_BECE6D: CVarStr var_D0
  loc_BECE70: PopAdLdVar
  loc_BECE71: FLdPr Me
  loc_BECE74: MemLdRfVar from_stack_1.global_60
  loc_BECE77: LdPrVar
  loc_BECE79: LateMemCall
  loc_BECE7F: FFree1Str var_A8
  loc_BECE82: FFree1Var var_D0 = ""
  loc_BECE85: LitVarStr var_94, "          </tr>"
  loc_BECE8A: PopAdLdVar
  loc_BECE8B: FLdPr Me
  loc_BECE8E: MemLdRfVar from_stack_1.global_60
  loc_BECE91: LdPrVar
  loc_BECE93: LateMemCall
  loc_BECE99: LitVarStr var_94, "          <tr>"
  loc_BECE9E: PopAdLdVar
  loc_BECE9F: FLdPr Me
  loc_BECEA2: MemLdRfVar from_stack_1.global_60
  loc_BECEA5: LdPrVar
  loc_BECEA7: LateMemCall
  loc_BECEAD: LitVarStr var_94, "            <td colspan=""3"" class=""CorreoCeldaFinal"">Devolver a Admisi&oacute;n Mendoza</td>"
  loc_BECEB2: PopAdLdVar
  loc_BECEB3: FLdPr Me
  loc_BECEB6: MemLdRfVar from_stack_1.global_60
  loc_BECEB9: LdPrVar
  loc_BECEBB: LateMemCall
  loc_BECEC1: LitVarStr var_94, "            </tr>"
  loc_BECEC6: PopAdLdVar
  loc_BECEC7: FLdPr Me
  loc_BECECA: MemLdRfVar from_stack_1.global_60
  loc_BECECD: LdPrVar
  loc_BECECF: LateMemCall
  loc_BECED5: LitVarStr var_94, "        </table>"
  loc_BECEDA: PopAdLdVar
  loc_BECEDB: FLdPr Me
  loc_BECEDE: MemLdRfVar from_stack_1.global_60
  loc_BECEE1: LdPrVar
  loc_BECEE3: LateMemCall
  loc_BECEE9: LitVarStr var_94, "        </td>"
  loc_BECEEE: PopAdLdVar
  loc_BECEEF: FLdPr Me
  loc_BECEF2: MemLdRfVar from_stack_1.global_60
  loc_BECEF5: LdPrVar
  loc_BECEF7: LateMemCall
  loc_BECEFD: LitVarStr var_94, "      </tr>"
  loc_BECF02: PopAdLdVar
  loc_BECF03: FLdPr Me
  loc_BECF06: MemLdRfVar from_stack_1.global_60
  loc_BECF09: LdPrVar
  loc_BECF0B: LateMemCall
  loc_BECF11: LitVarStr var_94, "      <tr valign=""top"" align=""right"">"
  loc_BECF16: PopAdLdVar
  loc_BECF17: FLdPr Me
  loc_BECF1A: MemLdRfVar from_stack_1.global_60
  loc_BECF1D: LdPrVar
  loc_BECF1F: LateMemCall
  loc_BECF25: LitVarStr var_94, "        <td colspan=""4"" align=""center"" valign=""middle"" class=""NombreMunicipio"">PUBLICIDAD Y PROPAGANDA</td>"
  loc_BECF2A: PopAdLdVar
  loc_BECF2B: FLdPr Me
  loc_BECF2E: MemLdRfVar from_stack_1.global_60
  loc_BECF31: LdPrVar
  loc_BECF33: LateMemCall
  loc_BECF39: LitVarStr var_94, "        <td width=""24"" align=""right"" class=""Encabezado MargDer""><strong>Orden:</strong></td>"
  loc_BECF3E: PopAdLdVar
  loc_BECF3F: FLdPr Me
  loc_BECF42: MemLdRfVar from_stack_1.global_60
  loc_BECF45: LdPrVar
  loc_BECF47: LateMemCall
  loc_BECF4D: FLdPr Me
  loc_BECF50: MemLdStr global_96
  loc_BECF53: FLdPr Me
  loc_BECF56: MemLdStr global_92
  loc_BECF59: AryLock
  loc_BECF5C: Ary1LdRf
  loc_BECF5D: FStR4 var_D8
  loc_BECF60: LitStr "        <td width=""28"" align=""left"" valign=""top"" class=""Normal MargIzq"">"
  loc_BECF63: FMemLdR4 var_D8(84)
  loc_BECF68: ConcatStr
  loc_BECF69: FStStrNoPop var_A8
  loc_BECF6C: LitStr "</td>"
  loc_BECF6F: ConcatStr
  loc_BECF70: CVarStr var_D0
  loc_BECF73: PopAdLdVar
  loc_BECF74: FLdPr Me
  loc_BECF77: MemLdRfVar from_stack_1.global_60
  loc_BECF7A: LdPrVar
  loc_BECF7C: LateMemCall
  loc_BECF82: FFree1Str var_A8
  loc_BECF85: FFree1Var var_D0 = ""
  loc_BECF88: LitVarStr var_94, "        <td rowspan=""2"" class=""NoBordeArriba"">"
  loc_BECF8D: PopAdLdVar
  loc_BECF8E: FLdPr Me
  loc_BECF91: MemLdRfVar from_stack_1.global_60
  loc_BECF94: LdPrVar
  loc_BECF96: LateMemCall
  loc_BECF9C: LitVarStr var_94, "         <table align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BECFA1: PopAdLdVar
  loc_BECFA2: FLdPr Me
  loc_BECFA5: MemLdRfVar from_stack_1.global_60
  loc_BECFA8: LdPrVar
  loc_BECFAA: LateMemCall
  loc_BECFB0: LitStr "          <tr><td valign=""bottom"" align=""center"" class=""CodBarChica"">"
  loc_BECFB3: LitI4 1
  loc_BECFB8: FMemLdR4 var_D8(112)
  loc_BECFBD: Ary1LdI4
  loc_BECFBE: ConcatStr
  loc_BECFBF: FStStrNoPop var_A8
  loc_BECFC2: LitStr "</td></tr>"
  loc_BECFC5: ConcatStr
  loc_BECFC6: CVarStr var_D0
  loc_BECFC9: PopAdLdVar
  loc_BECFCA: FLdPr Me
  loc_BECFCD: MemLdRfVar from_stack_1.global_60
  loc_BECFD0: LdPrVar
  loc_BECFD2: LateMemCall
  loc_BECFD8: FFree1Str var_A8
  loc_BECFDB: FFree1Var var_D0 = ""
  loc_BECFDE: LitStr "          <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BECFE1: LitI4 0
  loc_BECFE6: FMemLdR4 var_D8(112)
  loc_BECFEB: Ary1LdI4
  loc_BECFEC: ConcatStr
  loc_BECFED: FStStrNoPop var_A8
  loc_BECFF0: LitStr "</td></tr>"
  loc_BECFF3: ConcatStr
  loc_BECFF4: CVarStr var_D0
  loc_BECFF7: PopAdLdVar
  loc_BECFF8: FLdPr Me
  loc_BECFFB: MemLdRfVar from_stack_1.global_60
  loc_BECFFE: LdPrVar
  loc_BED000: LateMemCall
  loc_BED006: FFree1Str var_A8
  loc_BED009: FFree1Var var_D0 = ""
  loc_BED00C: LitVarStr var_94, "        </table></td>"
  loc_BED011: PopAdLdVar
  loc_BED012: FLdPr Me
  loc_BED015: MemLdRfVar from_stack_1.global_60
  loc_BED018: LdPrVar
  loc_BED01A: LateMemCall
  loc_BED020: LitVarStr var_94, "      </tr>"
  loc_BED025: PopAdLdVar
  loc_BED026: FLdPr Me
  loc_BED029: MemLdRfVar from_stack_1.global_60
  loc_BED02C: LdPrVar
  loc_BED02E: LateMemCall
  loc_BED034: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BED039: PopAdLdVar
  loc_BED03A: FLdPr Me
  loc_BED03D: MemLdRfVar from_stack_1.global_60
  loc_BED040: LdPrVar
  loc_BED042: LateMemCall
  loc_BED048: LitVarStr var_94, "        <td width=""51"" align=""right"" class=""Encabezado MargDer""><strong>CUENTA:</strong></td>"
  loc_BED04D: PopAdLdVar
  loc_BED04E: FLdPr Me
  loc_BED051: MemLdRfVar from_stack_1.global_60
  loc_BED054: LdPrVar
  loc_BED056: LateMemCall
  loc_BED05C: LitStr "        <td width=""40"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BED05F: FMemLdR4 var_D8(76)
  loc_BED064: ConcatStr
  loc_BED065: FStStrNoPop var_A8
  loc_BED068: LitStr "</strong></td>"
  loc_BED06B: ConcatStr
  loc_BED06C: CVarStr var_D0
  loc_BED06F: PopAdLdVar
  loc_BED070: FLdPr Me
  loc_BED073: MemLdRfVar from_stack_1.global_60
  loc_BED076: LdPrVar
  loc_BED078: LateMemCall
  loc_BED07E: FFree1Str var_A8
  loc_BED081: FFree1Var var_D0 = ""
  loc_BED084: LitVarStr var_94, "        <td width=""43"" align=""right"" class=""Encabezado MargDer""><strong>Titular:</strong></td>"
  loc_BED089: PopAdLdVar
  loc_BED08A: FLdPr Me
  loc_BED08D: MemLdRfVar from_stack_1.global_60
  loc_BED090: LdPrVar
  loc_BED092: LateMemCall
  loc_BED098: LitStr "        <td height=""18"" colspan=""3"" class=""NormalBloqueFinGrande MargIzq""><strong>"
  loc_BED09B: FMemLdR4 var_D8(4)
  loc_BED0A0: ConcatStr
  loc_BED0A1: FStStrNoPop var_A8
  loc_BED0A4: LitStr "</strong>"
  loc_BED0A7: ConcatStr
  loc_BED0A8: CVarStr var_D0
  loc_BED0AB: PopAdLdVar
  loc_BED0AC: FLdPr Me
  loc_BED0AF: MemLdRfVar from_stack_1.global_60
  loc_BED0B2: LdPrVar
  loc_BED0B4: LateMemCall
  loc_BED0BA: FFree1Str var_A8
  loc_BED0BD: FFree1Var var_D0 = ""
  loc_BED0C0: FMemLdRf 0
  loc_BED0C5: CVarRef
  loc_BED0CA: FLdRfVar var_D0
  loc_BED0CD: ImpAdCallFPR4  = Trim()
  loc_BED0D2: FLdRfVar var_D0
  loc_BED0D5: LitVarStr var_A4, vbNullString
  loc_BED0DA: HardType
  loc_BED0DB: NeVarBool
  loc_BED0DD: FFree1Var var_D0 = ""
  loc_BED0E0: BranchF loc_BED10B
  loc_BED0E3: LitStr "        <br>(Poseedor: "
  loc_BED0E6: FMemLdR4 var_D8(8)
  loc_BED0EB: ConcatStr
  loc_BED0EC: FStStrNoPop var_A8
  loc_BED0EF: LitStr ")"
  loc_BED0F2: ConcatStr
  loc_BED0F3: CVarStr var_D0
  loc_BED0F6: PopAdLdVar
  loc_BED0F7: FLdPr Me
  loc_BED0FA: MemLdRfVar from_stack_1.global_60
  loc_BED0FD: LdPrVar
  loc_BED0FF: LateMemCall
  loc_BED105: FFree1Str var_A8
  loc_BED108: FFree1Var var_D0 = ""
  loc_BED10B: LitVarStr var_94, "        </td>"
  loc_BED110: PopAdLdVar
  loc_BED111: FLdPr Me
  loc_BED114: MemLdRfVar from_stack_1.global_60
  loc_BED117: LdPrVar
  loc_BED119: LateMemCall
  loc_BED11F: LitVarStr var_94, "      </tr>"
  loc_BED124: PopAdLdVar
  loc_BED125: FLdPr Me
  loc_BED128: MemLdRfVar from_stack_1.global_60
  loc_BED12B: LdPrVar
  loc_BED12D: LateMemCall
  loc_BED133: LitVarStr var_94, "      <tr valign=""top"">"
  loc_BED138: PopAdLdVar
  loc_BED139: FLdPr Me
  loc_BED13C: MemLdRfVar from_stack_1.global_60
  loc_BED13F: LdPrVar
  loc_BED141: LateMemCall
  loc_BED147: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Postal:</strong></td>"
  loc_BED14C: PopAdLdVar
  loc_BED14D: FLdPr Me
  loc_BED150: MemLdRfVar from_stack_1.global_60
  loc_BED153: LdPrVar
  loc_BED155: LateMemCall
  loc_BED15B: LitStr "        <td colspan=""6"" class=""DomiPostal"">Calle: "
  loc_BED15E: FMemLdR4 var_D8(12)
  loc_BED163: ConcatStr
  loc_BED164: FStStrNoPop var_A8
  loc_BED167: LitStr " Nro: "
  loc_BED16A: ConcatStr
  loc_BED16B: FStStrNoPop var_AC
  loc_BED16E: FMemLdR4 var_D8(16)
  loc_BED173: ConcatStr
  loc_BED174: CVarStr var_D0
  loc_BED177: PopAdLdVar
  loc_BED178: FLdPr Me
  loc_BED17B: MemLdRfVar from_stack_1.global_60
  loc_BED17E: LdPrVar
  loc_BED180: LateMemCall
  loc_BED186: FFreeStr var_A8 = ""
  loc_BED18D: FFree1Var var_D0 = ""
  loc_BED190: FMemLdR4 var_D8(20)
  loc_BED195: LitStr vbNullString
  loc_BED198: NeStr
  loc_BED19A: BranchF loc_BED1BB
  loc_BED19D: LitStr " Barrio: "
  loc_BED1A0: FMemLdR4 var_D8(20)
  loc_BED1A5: ConcatStr
  loc_BED1A6: CVarStr var_D0
  loc_BED1A9: PopAdLdVar
  loc_BED1AA: FLdPr Me
  loc_BED1AD: MemLdRfVar from_stack_1.global_60
  loc_BED1B0: LdPrVar
  loc_BED1B2: LateMemCall
  loc_BED1B8: FFree1Var var_D0 = ""
  loc_BED1BB: FMemLdR4 var_D8(24)
  loc_BED1C0: LitStr vbNullString
  loc_BED1C3: NeStr
  loc_BED1C5: BranchF loc_BED1E6
  loc_BED1C8: LitStr " Mza: "
  loc_BED1CB: FMemLdR4 var_D8(24)
  loc_BED1D0: ConcatStr
  loc_BED1D1: CVarStr var_D0
  loc_BED1D4: PopAdLdVar
  loc_BED1D5: FLdPr Me
  loc_BED1D8: MemLdRfVar from_stack_1.global_60
  loc_BED1DB: LdPrVar
  loc_BED1DD: LateMemCall
  loc_BED1E3: FFree1Var var_D0 = ""
  loc_BED1E6: FMemLdR4 var_D8(28)
  loc_BED1EB: LitStr vbNullString
  loc_BED1EE: NeStr
  loc_BED1F0: BranchF loc_BED211
  loc_BED1F3: LitStr " Casa: "
  loc_BED1F6: FMemLdR4 var_D8(28)
  loc_BED1FB: ConcatStr
  loc_BED1FC: CVarStr var_D0
  loc_BED1FF: PopAdLdVar
  loc_BED200: FLdPr Me
  loc_BED203: MemLdRfVar from_stack_1.global_60
  loc_BED206: LdPrVar
  loc_BED208: LateMemCall
  loc_BED20E: FFree1Var var_D0 = ""
  loc_BED211: FMemLdR4 var_D8(32)
  loc_BED216: LitStr vbNullString
  loc_BED219: NeStr
  loc_BED21B: BranchF loc_BED235
  loc_BED21E: FMemLdRf 0
  loc_BED223: CDargRef
  loc_BED227: FLdPr Me
  loc_BED22A: MemLdRfVar from_stack_1.global_60
  loc_BED22D: LdPrVar
  loc_BED22F: LateMemCall
  loc_BED235: LitStr "         <br>Loc: "
  loc_BED238: FMemLdR4 var_D8(36)
  loc_BED23D: ConcatStr
  loc_BED23E: FStStrNoPop var_A8
  loc_BED241: LitStr " CP: "
  loc_BED244: ConcatStr
  loc_BED245: FStStrNoPop var_AC
  loc_BED248: FMemLdR4 var_D8(40)
  loc_BED24D: ConcatStr
  loc_BED24E: FStStrNoPop var_B0
  loc_BED251: LitStr " - Plano: "
  loc_BED254: ConcatStr
  loc_BED255: FStStrNoPop var_B4
  loc_BED258: FMemLdR4 var_D8(96)
  loc_BED25D: ConcatStr
  loc_BED25E: FStStrNoPop var_B8
  loc_BED261: LitStr " Sector: "
  loc_BED264: ConcatStr
  loc_BED265: FStStrNoPop var_BC
  loc_BED268: FMemLdR4 var_D8(100)
  loc_BED26D: ConcatStr
  loc_BED26E: FStStrNoPop var_C0
  loc_BED271: LitStr " Orden: "
  loc_BED274: ConcatStr
  loc_BED275: FStStrNoPop var_EC
  loc_BED278: FMemLdR4 var_D8(104)
  loc_BED27D: ConcatStr
  loc_BED27E: FStStrNoPop var_F0
  loc_BED281: LitStr "</td>"
  loc_BED284: ConcatStr
  loc_BED285: CVarStr var_D0
  loc_BED288: PopAdLdVar
  loc_BED289: FLdPr Me
  loc_BED28C: MemLdRfVar from_stack_1.global_60
  loc_BED28F: LdPrVar
  loc_BED291: LateMemCall
  loc_BED297: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_EC = ""
  loc_BED2AC: FFree1Var var_D0 = ""
  loc_BED2AF: LitVarStr var_94, "      </tr>"
  loc_BED2B4: PopAdLdVar
  loc_BED2B5: FLdPr Me
  loc_BED2B8: MemLdRfVar from_stack_1.global_60
  loc_BED2BB: LdPrVar
  loc_BED2BD: LateMemCall
  loc_BED2C3: LitVarStr var_94, "        <tr valign=""top"">"
  loc_BED2C8: PopAdLdVar
  loc_BED2C9: FLdPr Me
  loc_BED2CC: MemLdRfVar from_stack_1.global_60
  loc_BED2CF: LdPrVar
  loc_BED2D1: LateMemCall
  loc_BED2D7: LitVarStr var_94, "        <td align=""right"" class=""Encabezado MargDer""><strong>Domicilio<br>Real:</strong></td>"
  loc_BED2DC: PopAdLdVar
  loc_BED2DD: FLdPr Me
  loc_BED2E0: MemLdRfVar from_stack_1.global_60
  loc_BED2E3: LdPrVar
  loc_BED2E5: LateMemCall
  loc_BED2EB: LitStr "        <td colspan=""6"" class=""DomiReal"">Calle: "
  loc_BED2EE: FMemLdR4 var_D8(44)
  loc_BED2F3: ConcatStr
  loc_BED2F4: FStStrNoPop var_A8
  loc_BED2F7: LitStr " Nro: "
  loc_BED2FA: ConcatStr
  loc_BED2FB: FStStrNoPop var_AC
  loc_BED2FE: FMemLdR4 var_D8(48)
  loc_BED303: ConcatStr
  loc_BED304: CVarStr var_D0
  loc_BED307: PopAdLdVar
  loc_BED308: FLdPr Me
  loc_BED30B: MemLdRfVar from_stack_1.global_60
  loc_BED30E: LdPrVar
  loc_BED310: LateMemCall
  loc_BED316: FFreeStr var_A8 = ""
  loc_BED31D: FFree1Var var_D0 = ""
  loc_BED320: FMemLdR4 var_D8(52)
  loc_BED325: LitStr vbNullString
  loc_BED328: NeStr
  loc_BED32A: BranchF loc_BED34B
  loc_BED32D: LitStr " Barrio: "
  loc_BED330: FMemLdR4 var_D8(52)
  loc_BED335: ConcatStr
  loc_BED336: CVarStr var_D0
  loc_BED339: PopAdLdVar
  loc_BED33A: FLdPr Me
  loc_BED33D: MemLdRfVar from_stack_1.global_60
  loc_BED340: LdPrVar
  loc_BED342: LateMemCall
  loc_BED348: FFree1Var var_D0 = ""
  loc_BED34B: FMemLdR4 var_D8(56)
  loc_BED350: LitStr vbNullString
  loc_BED353: NeStr
  loc_BED355: BranchF loc_BED376
  loc_BED358: LitStr " Mza: "
  loc_BED35B: FMemLdR4 var_D8(56)
  loc_BED360: ConcatStr
  loc_BED361: CVarStr var_D0
  loc_BED364: PopAdLdVar
  loc_BED365: FLdPr Me
  loc_BED368: MemLdRfVar from_stack_1.global_60
  loc_BED36B: LdPrVar
  loc_BED36D: LateMemCall
  loc_BED373: FFree1Var var_D0 = ""
  loc_BED376: FMemLdR4 var_D8(60)
  loc_BED37B: LitStr vbNullString
  loc_BED37E: NeStr
  loc_BED380: BranchF loc_BED3A1
  loc_BED383: LitStr " Casa: "
  loc_BED386: FMemLdR4 var_D8(60)
  loc_BED38B: ConcatStr
  loc_BED38C: CVarStr var_D0
  loc_BED38F: PopAdLdVar
  loc_BED390: FLdPr Me
  loc_BED393: MemLdRfVar from_stack_1.global_60
  loc_BED396: LdPrVar
  loc_BED398: LateMemCall
  loc_BED39E: FFree1Var var_D0 = ""
  loc_BED3A1: FMemLdR4 var_D8(64)
  loc_BED3A6: LitStr vbNullString
  loc_BED3A9: NeStr
  loc_BED3AB: BranchF loc_BED3C5
  loc_BED3AE: FMemLdRf 0
  loc_BED3B3: CDargRef
  loc_BED3B7: FLdPr Me
  loc_BED3BA: MemLdRfVar from_stack_1.global_60
  loc_BED3BD: LdPrVar
  loc_BED3BF: LateMemCall
  loc_BED3C5: LitStr "         <br>Loc: "
  loc_BED3C8: FMemLdR4 var_D8(68)
  loc_BED3CD: ConcatStr
  loc_BED3CE: FStStrNoPop var_A8
  loc_BED3D1: LitStr " CP: "
  loc_BED3D4: ConcatStr
  loc_BED3D5: FStStrNoPop var_AC
  loc_BED3D8: FMemLdR4 var_D8(72)
  loc_BED3DD: ConcatStr
  loc_BED3DE: FStStrNoPop var_B0
  loc_BED3E1: LitStr "</td>"
  loc_BED3E4: ConcatStr
  loc_BED3E5: CVarStr var_D0
  loc_BED3E8: PopAdLdVar
  loc_BED3E9: FLdPr Me
  loc_BED3EC: MemLdRfVar from_stack_1.global_60
  loc_BED3EF: LdPrVar
  loc_BED3F1: LateMemCall
  loc_BED3F7: FFreeStr var_A8 = "": var_AC = ""
  loc_BED400: FFree1Var var_D0 = ""
  loc_BED403: LitVarStr var_94, "      </tr>"
  loc_BED408: PopAdLdVar
  loc_BED409: FLdPr Me
  loc_BED40C: MemLdRfVar from_stack_1.global_60
  loc_BED40F: LdPrVar
  loc_BED411: LateMemCall
  loc_BED417: LitVarStr var_94, "    </table>"
  loc_BED41C: PopAdLdVar
  loc_BED41D: FLdPr Me
  loc_BED420: MemLdRfVar from_stack_1.global_60
  loc_BED423: LdPrVar
  loc_BED425: LateMemCall
  loc_BED42B: LitI4 0
  loc_BED430: FStR4 var_D8
  loc_BED433: AryUnlock
  loc_BED436: ExitProcHresult
End Function

Private Function Proc_312_25_B5DA2C() 'B5DA2C
  'Data Table: 4C11B4
  loc_B5D610: FLdPr Me
  loc_B5D613: MemLdStr global_96
  loc_B5D616: FLdPr Me
  loc_B5D619: MemLdStr global_92
  loc_B5D61C: AryLock
  loc_B5D61F: Ary1LdRf
  loc_B5D620: FStR4 var_8C
  loc_B5D623: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ style=""border-top:none"" border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B5D628: PopAdLdVar
  loc_B5D629: FLdPr Me
  loc_B5D62C: MemLdRfVar from_stack_1.global_60
  loc_B5D62F: LdPrVar
  loc_B5D631: LateMemCall
  loc_B5D637: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B5D63C: PopAdLdVar
  loc_B5D63D: FLdPr Me
  loc_B5D640: MemLdRfVar from_stack_1.global_60
  loc_B5D643: LdPrVar
  loc_B5D645: LateMemCall
  loc_B5D64B: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B5D650: PopAdLdVar
  loc_B5D651: FLdPr Me
  loc_B5D654: MemLdRfVar from_stack_1.global_60
  loc_B5D657: LdPrVar
  loc_B5D659: LateMemCall
  loc_B5D65F: LitVarStr var_9C, "      <p><strong>SOLO SU PAGO EN T&Eacute;RMINO NOS PERMITE CUMPLIR</strong><br>"
  loc_B5D664: PopAdLdVar
  loc_B5D665: FLdPr Me
  loc_B5D668: MemLdRfVar from_stack_1.global_60
  loc_B5D66B: LdPrVar
  loc_B5D66D: LateMemCall
  loc_B5D673: LitVarStr var_9C, "        SR. CAJERO:<br><strong>NO COBRAR BOLETO SEMESTRAL DESPU&Eacute;S DEL 30/11/2024.</strong></p>"
  loc_B5D678: PopAdLdVar
  loc_B5D679: FLdPr Me
  loc_B5D67C: MemLdRfVar from_stack_1.global_60
  loc_B5D67F: LdPrVar
  loc_B5D681: LateMemCall
  loc_B5D687: LitVarStr var_9C, "      <p>Se acompaña Liquidación de Derechos de Publicidad y Propaganda Uso y ocupación de Espacios Públicos en ....... fojas que forman parte de la presente notificación.</p>"
  loc_B5D68C: PopAdLdVar
  loc_B5D68D: FLdPr Me
  loc_B5D690: MemLdRfVar from_stack_1.global_60
  loc_B5D693: LdPrVar
  loc_B5D695: LateMemCall
  loc_B5D69B: LitVarStr var_9C, "      <p><strong>SIN TICKET DE CAJA NO ACREDITA PAGO del periodo correspondiente.</strong></p>"
  loc_B5D6A0: PopAdLdVar
  loc_B5D6A1: FLdPr Me
  loc_B5D6A4: MemLdRfVar from_stack_1.global_60
  loc_B5D6A7: LdPrVar
  loc_B5D6A9: LateMemCall
  loc_B5D6AF: LitVarStr var_9C, "    </td>"
  loc_B5D6B4: PopAdLdVar
  loc_B5D6B5: FLdPr Me
  loc_B5D6B8: MemLdRfVar from_stack_1.global_60
  loc_B5D6BB: LdPrVar
  loc_B5D6BD: LateMemCall
  loc_B5D6C3: LitVarStr var_9C, "    <td width=""50" & Chr(37) & """ align=""left"" class=""MargIzq"">"
  loc_B5D6C8: PopAdLdVar
  loc_B5D6C9: FLdPr Me
  loc_B5D6CC: MemLdRfVar from_stack_1.global_60
  loc_B5D6CF: LdPrVar
  loc_B5D6D1: LateMemCall
  loc_B5D6D7: FMemLdR4 var_8C(116)
  loc_B5D6DC: LitI2_Byte 1
  loc_B5D6DE: FnUBound
  loc_B5D6E0: LitI4 0
  loc_B5D6E5: GtI4
  loc_B5D6E6: BranchF loc_B5D8F1
  loc_B5D6E9: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""0"" cellspacing=""2"" cellpadding=""0"">"
  loc_B5D6EE: PopAdLdVar
  loc_B5D6EF: FLdPr Me
  loc_B5D6F2: MemLdRfVar from_stack_1.global_60
  loc_B5D6F5: LdPrVar
  loc_B5D6F7: LateMemCall
  loc_B5D6FD: LitVarStr var_9C, "       <caption class=""Rubros""><strong>Detalle de Actividades y Rubros</strong></caption>"
  loc_B5D702: PopAdLdVar
  loc_B5D703: FLdPr Me
  loc_B5D706: MemLdRfVar from_stack_1.global_60
  loc_B5D709: LdPrVar
  loc_B5D70B: LateMemCall
  loc_B5D711: LitVarStr var_9C, "        <tr class=""EncabezadoRubros"" align=""center"">"
  loc_B5D716: PopAdLdVar
  loc_B5D717: FLdPr Me
  loc_B5D71A: MemLdRfVar from_stack_1.global_60
  loc_B5D71D: LdPrVar
  loc_B5D71F: LateMemCall
  loc_B5D725: LitVarStr var_9C, "          <td>Rubro</td>"
  loc_B5D72A: PopAdLdVar
  loc_B5D72B: FLdPr Me
  loc_B5D72E: MemLdRfVar from_stack_1.global_60
  loc_B5D731: LdPrVar
  loc_B5D733: LateMemCall
  loc_B5D739: LitVarStr var_9C, "          <td>Subrubro</td>"
  loc_B5D73E: PopAdLdVar
  loc_B5D73F: FLdPr Me
  loc_B5D742: MemLdRfVar from_stack_1.global_60
  loc_B5D745: LdPrVar
  loc_B5D747: LateMemCall
  loc_B5D74D: LitVarStr var_9C, "          <td>Categor&iacute;a</td>"
  loc_B5D752: PopAdLdVar
  loc_B5D753: FLdPr Me
  loc_B5D756: MemLdRfVar from_stack_1.global_60
  loc_B5D759: LdPrVar
  loc_B5D75B: LateMemCall
  loc_B5D761: LitVarStr var_9C, "          <td>Cantidad</td>"
  loc_B5D766: PopAdLdVar
  loc_B5D767: FLdPr Me
  loc_B5D76A: MemLdRfVar from_stack_1.global_60
  loc_B5D76D: LdPrVar
  loc_B5D76F: LateMemCall
  loc_B5D775: LitVarStr var_9C, "          <td>Importe</td>"
  loc_B5D77A: PopAdLdVar
  loc_B5D77B: FLdPr Me
  loc_B5D77E: MemLdRfVar from_stack_1.global_60
  loc_B5D781: LdPrVar
  loc_B5D783: LateMemCall
  loc_B5D789: LitVarStr var_9C, "        </tr>"
  loc_B5D78E: PopAdLdVar
  loc_B5D78F: FLdPr Me
  loc_B5D792: MemLdRfVar from_stack_1.global_60
  loc_B5D795: LdPrVar
  loc_B5D797: LateMemCall
  loc_B5D79D: LitI2_Byte 1
  loc_B5D79F: FLdPr Me
  loc_B5D7A2: MemLdRfVar from_stack_1.global_100
  loc_B5D7A5: FMemLdR4 var_8C(116)
  loc_B5D7AA: LitI2_Byte 1
  loc_B5D7AC: FnUBound
  loc_B5D7AE: CI2I4
  loc_B5D7AF: ForI2 var_B0
  loc_B5D7B5: FLdPr Me
  loc_B5D7B8: MemLdI2 global_100
  loc_B5D7BB: CI4UI1
  loc_B5D7BC: FMemLdR4 var_8C(116)
  loc_B5D7C1: AryLock
  loc_B5D7C4: Ary1LdRf
  loc_B5D7C5: FStR4 var_B8
  loc_B5D7C8: LitVarStr var_9C, "        <tr align=""right"">"
  loc_B5D7CD: PopAdLdVar
  loc_B5D7CE: FLdPr Me
  loc_B5D7D1: MemLdRfVar from_stack_1.global_60
  loc_B5D7D4: LdPrVar
  loc_B5D7D6: LateMemCall
  loc_B5D7DC: LitStr "Rubros"
  loc_B5D7DF: LitI2_Byte 0
  loc_B5D7E1: LitI2_Byte 0
  loc_B5D7E3: LitI2_Byte 0
  loc_B5D7E5: LitStr "right"
  loc_B5D7E8: FMemLdR4 var_B8(0)
  loc_B5D7ED: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B5D7F2: CVarStr var_C8
  loc_B5D7F5: PopAdLdVar
  loc_B5D7F6: FLdPr Me
  loc_B5D7F9: MemLdRfVar from_stack_1.global_60
  loc_B5D7FC: LdPrVar
  loc_B5D7FE: LateMemCall
  loc_B5D804: FFree1Var var_C8 = ""
  loc_B5D807: LitStr "Rubros"
  loc_B5D80A: LitI2_Byte 0
  loc_B5D80C: LitI2_Byte 0
  loc_B5D80E: LitI2_Byte 0
  loc_B5D810: LitStr "right"
  loc_B5D813: FMemLdR4 var_B8(4)
  loc_B5D818: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B5D81D: CVarStr var_C8
  loc_B5D820: PopAdLdVar
  loc_B5D821: FLdPr Me
  loc_B5D824: MemLdRfVar from_stack_1.global_60
  loc_B5D827: LdPrVar
  loc_B5D829: LateMemCall
  loc_B5D82F: FFree1Var var_C8 = ""
  loc_B5D832: LitStr "Rubros"
  loc_B5D835: LitI2_Byte 0
  loc_B5D837: LitI2_Byte 0
  loc_B5D839: LitI2_Byte 0
  loc_B5D83B: LitStr "right"
  loc_B5D83E: FMemLdR4 var_B8(12)
  loc_B5D843: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B5D848: CVarStr var_C8
  loc_B5D84B: PopAdLdVar
  loc_B5D84C: FLdPr Me
  loc_B5D84F: MemLdRfVar from_stack_1.global_60
  loc_B5D852: LdPrVar
  loc_B5D854: LateMemCall
  loc_B5D85A: FFree1Var var_C8 = ""
  loc_B5D85D: LitStr "Rubros"
  loc_B5D860: LitI2_Byte 0
  loc_B5D862: LitI2_Byte 0
  loc_B5D864: LitI2_Byte 0
  loc_B5D866: LitStr "right"
  loc_B5D869: FMemLdR4 var_B8(16)
  loc_B5D86E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B5D873: CVarStr var_C8
  loc_B5D876: PopAdLdVar
  loc_B5D877: FLdPr Me
  loc_B5D87A: MemLdRfVar from_stack_1.global_60
  loc_B5D87D: LdPrVar
  loc_B5D87F: LateMemCall
  loc_B5D885: FFree1Var var_C8 = ""
  loc_B5D888: LitStr "Rubros"
  loc_B5D88B: LitI2_Byte 0
  loc_B5D88D: LitI2_Byte 0
  loc_B5D88F: LitI2_Byte 0
  loc_B5D891: LitStr "right"
  loc_B5D894: FMemLdR4 var_B8(20)
  loc_B5D899: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B5D89E: CVarStr var_C8
  loc_B5D8A1: PopAdLdVar
  loc_B5D8A2: FLdPr Me
  loc_B5D8A5: MemLdRfVar from_stack_1.global_60
  loc_B5D8A8: LdPrVar
  loc_B5D8AA: LateMemCall
  loc_B5D8B0: FFree1Var var_C8 = ""
  loc_B5D8B3: LitVarStr var_9C, "        </tr>"
  loc_B5D8B8: PopAdLdVar
  loc_B5D8B9: FLdPr Me
  loc_B5D8BC: MemLdRfVar from_stack_1.global_60
  loc_B5D8BF: LdPrVar
  loc_B5D8C1: LateMemCall
  loc_B5D8C7: LitI4 0
  loc_B5D8CC: FStR4 var_B8
  loc_B5D8CF: AryUnlock
  loc_B5D8D2: FLdPr Me
  loc_B5D8D5: MemLdRfVar from_stack_1.global_100
  loc_B5D8D8: NextI2 var_B0, loc_B5D7B5
  loc_B5D8DD: LitVarStr var_9C, "      </table>"
  loc_B5D8E2: PopAdLdVar
  loc_B5D8E3: FLdPr Me
  loc_B5D8E6: MemLdRfVar from_stack_1.global_60
  loc_B5D8E9: LdPrVar
  loc_B5D8EB: LateMemCall
  loc_B5D8F1: LitVarStr var_9C, "      <hr>"
  loc_B5D8F6: PopAdLdVar
  loc_B5D8F7: FLdPr Me
  loc_B5D8FA: MemLdRfVar from_stack_1.global_60
  loc_B5D8FD: LdPrVar
  loc_B5D8FF: LateMemCall
  loc_B5D905: LitStr "      <p>Razón Social: <strong>"
  loc_B5D908: FMemLdR4 var_8C(80)
  loc_B5D90D: ConcatStr
  loc_B5D90E: FStStrNoPop var_CC
  loc_B5D911: LitStr "</strong></p>"
  loc_B5D914: ConcatStr
  loc_B5D915: CVarStr var_C8
  loc_B5D918: PopAdLdVar
  loc_B5D919: FLdPr Me
  loc_B5D91C: MemLdRfVar from_stack_1.global_60
  loc_B5D91F: LdPrVar
  loc_B5D921: LateMemCall
  loc_B5D927: FFree1Str var_CC
  loc_B5D92A: FFree1Var var_C8 = ""
  loc_B5D92D: LitVarStr var_9C, "      <p>ENTIDADES AUTORIZADAS PARA EL COBRO:<br>"
  loc_B5D932: PopAdLdVar
  loc_B5D933: FLdPr Me
  loc_B5D936: MemLdRfVar from_stack_1.global_60
  loc_B5D939: LdPrVar
  loc_B5D93B: LateMemCall
  loc_B5D941: LitVarStr var_9C, "        Bancos: Supervielle/Macro/Credicoop/Nación<br>"
  loc_B5D946: PopAdLdVar
  loc_B5D947: FLdPr Me
  loc_B5D94A: MemLdRfVar from_stack_1.global_60
  loc_B5D94D: LdPrVar
  loc_B5D94F: LateMemCall
  loc_B5D955: LitVarStr var_9C, "        Rapipago - Montemar C&iacute;a. Fiananc. - Pago F&aacute;cil<br>"
  loc_B5D95A: PopAdLdVar
  loc_B5D95B: FLdPr Me
  loc_B5D95E: MemLdRfVar from_stack_1.global_60
  loc_B5D961: LdPrVar
  loc_B5D963: LateMemCall
  loc_B5D969: LitVarStr var_9C, "        Pague en www.pagomiscuentas.com o ingresando a Banelco en pagomiscuentas.com.ar.<br>"
  loc_B5D96E: PopAdLdVar
  loc_B5D96F: FLdPr Me
  loc_B5D972: MemLdRfVar from_stack_1.global_60
  loc_B5D975: LdPrVar
  loc_B5D977: LateMemCall
  loc_B5D97D: LitVarStr var_9C, "        Link Pagos: Pague ingresando a www.linkpagos.com.ar desde un cajero LINK, las 24hs todos los d&iacute;as del a&ntilde;o."
  loc_B5D982: PopAdLdVar
  loc_B5D983: FLdPr Me
  loc_B5D986: MemLdRfVar from_stack_1.global_60
  loc_B5D989: LdPrVar
  loc_B5D98B: LateMemCall
  loc_B5D991: LitVarStr var_9C, "      </p>"
  loc_B5D996: PopAdLdVar
  loc_B5D997: FLdPr Me
  loc_B5D99A: MemLdRfVar from_stack_1.global_60
  loc_B5D99D: LdPrVar
  loc_B5D99F: LateMemCall
  loc_B5D9A5: LitVarStr var_9C, "    </td>"
  loc_B5D9AA: PopAdLdVar
  loc_B5D9AB: FLdPr Me
  loc_B5D9AE: MemLdRfVar from_stack_1.global_60
  loc_B5D9B1: LdPrVar
  loc_B5D9B3: LateMemCall
  loc_B5D9B9: LitVarStr var_9C, "  </tr>"
  loc_B5D9BE: PopAdLdVar
  loc_B5D9BF: FLdPr Me
  loc_B5D9C2: MemLdRfVar from_stack_1.global_60
  loc_B5D9C5: LdPrVar
  loc_B5D9C7: LateMemCall
  loc_B5D9CD: LitVarStr var_9C, "  </table>"
  loc_B5D9D2: PopAdLdVar
  loc_B5D9D3: FLdPr Me
  loc_B5D9D6: MemLdRfVar from_stack_1.global_60
  loc_B5D9D9: LdPrVar
  loc_B5D9DB: LateMemCall
  loc_B5D9E1: LitVarStr var_9C, "  </td>"
  loc_B5D9E6: PopAdLdVar
  loc_B5D9E7: FLdPr Me
  loc_B5D9EA: MemLdRfVar from_stack_1.global_60
  loc_B5D9ED: LdPrVar
  loc_B5D9EF: LateMemCall
  loc_B5D9F5: LitVarStr var_9C, "  </tr>"
  loc_B5D9FA: PopAdLdVar
  loc_B5D9FB: FLdPr Me
  loc_B5D9FE: MemLdRfVar from_stack_1.global_60
  loc_B5DA01: LdPrVar
  loc_B5DA03: LateMemCall
  loc_B5DA09: LitVarStr var_9C, "</table>"
  loc_B5DA0E: PopAdLdVar
  loc_B5DA0F: FLdPr Me
  loc_B5DA12: MemLdRfVar from_stack_1.global_60
  loc_B5DA15: LdPrVar
  loc_B5DA17: LateMemCall
  loc_B5DA1D: LitI4 0
  loc_B5DA22: FStR4 var_8C
  loc_B5DA25: AryUnlock
  loc_B5DA28: ExitProcHresult
  loc_B5DA29: MemLdRfVar from_stack_1.global_60
End Function

Private Function Proc_312_26_BB03A4() 'BB03A4
  'Data Table: 4C11B4
  loc_BAFD30: LitVarStr var_94, "<table align=""center"" height=""500"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_BAFD35: PopAdLdVar
  loc_BAFD36: FLdPr Me
  loc_BAFD39: MemLdRfVar from_stack_1.global_60
  loc_BAFD3C: LdPrVar
  loc_BAFD3E: LateMemCall
  loc_BAFD44: FLdPr Me
  loc_BAFD47: MemLdStr global_96
  loc_BAFD4A: FLdPr Me
  loc_BAFD4D: MemLdStr global_92
  loc_BAFD50: AryLock
  loc_BAFD53: Ary1LdRf
  loc_BAFD54: FStR4 var_AC
  loc_BAFD57: LitI2_Byte 0
  loc_BAFD59: CUI1I2
  loc_BAFD5B: FLdPr Me
  loc_BAFD5E: MemLdRfVar from_stack_1.global_102
  loc_BAFD61: FMemLdR4 var_AC(120)
  loc_BAFD66: LitI2_Byte 1
  loc_BAFD68: FnUBound
  loc_BAFD6A: CUI1I4
  loc_BAFD6C: ForUI1 var_B0
  loc_BAFD72: FLdPr Me
  loc_BAFD75: MemLdUI1 global_102
  loc_BAFD79: CI2UI1
  loc_BAFD7B: LitI2_Byte 0
  loc_BAFD7D: EqI2
  loc_BAFD7E: FLdPr Me
  loc_BAFD81: MemLdUI1 global_102
  loc_BAFD85: CI4UI1
  loc_BAFD86: FMemLdR4 var_AC(120)
  loc_BAFD8B: Ary1LdPr
  loc_BAFD8C: MemLdStr global_12
  loc_BAFD8F: LitStr vbNullString
  loc_BAFD92: EqStr
  loc_BAFD94: AndI4
  loc_BAFD95: BranchF loc_BAFD9B
  loc_BAFD98: Branch loc_BB0389
  loc_BAFD9B: LitVarStr var_94, "  <tr>"
  loc_BAFDA0: PopAdLdVar
  loc_BAFDA1: FLdPr Me
  loc_BAFDA4: MemLdRfVar from_stack_1.global_60
  loc_BAFDA7: LdPrVar
  loc_BAFDA9: LateMemCall
  loc_BAFDAF: LitVarStr var_94, "    <td valign=""top"" height=""111"">"
  loc_BAFDB4: PopAdLdVar
  loc_BAFDB5: FLdPr Me
  loc_BAFDB8: MemLdRfVar from_stack_1.global_60
  loc_BAFDBB: LdPrVar
  loc_BAFDBD: LateMemCall
  loc_BAFDC3: FLdPr Me
  loc_BAFDC6: MemLdUI1 global_102
  loc_BAFDCA: CI4UI1
  loc_BAFDCB: FMemLdR4 var_AC(120)
  loc_BAFDD0: Ary1LdPr
  loc_BAFDD1: MemLdI2 global_0
  loc_BAFDD4: BranchF loc_BAFDEE
  loc_BAFDD7: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"">"
  loc_BAFDDC: PopAdLdVar
  loc_BAFDDD: FLdPr Me
  loc_BAFDE0: MemLdRfVar from_stack_1.global_60
  loc_BAFDE3: LdPrVar
  loc_BAFDE5: LateMemCall
  loc_BAFDEB: Branch loc_BAFE16
  loc_BAFDEE: LitVarStr var_94, "    <br>"
  loc_BAFDF3: PopAdLdVar
  loc_BAFDF4: FLdPr Me
  loc_BAFDF7: MemLdRfVar from_stack_1.global_60
  loc_BAFDFA: LdPrVar
  loc_BAFDFC: LateMemCall
  loc_BAFE02: LitVarStr var_94, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" style=""border:2px solid black"" >"
  loc_BAFE07: PopAdLdVar
  loc_BAFE08: FLdPr Me
  loc_BAFE0B: MemLdRfVar from_stack_1.global_60
  loc_BAFE0E: LdPrVar
  loc_BAFE10: LateMemCall
  loc_BAFE16: FLdPr Me
  loc_BAFE19: MemLdUI1 global_102
  loc_BAFE1D: CI4UI1
  loc_BAFE1E: FMemLdR4 var_AC(120)
  loc_BAFE23: AryLock
  loc_BAFE26: Ary1LdRf
  loc_BAFE27: FStR4 var_B8
  loc_BAFE2A: LitVarStr var_94, "      <tr align=""center"">"
  loc_BAFE2F: PopAdLdVar
  loc_BAFE30: FLdPr Me
  loc_BAFE33: MemLdRfVar from_stack_1.global_60
  loc_BAFE36: LdPrVar
  loc_BAFE38: LateMemCall
  loc_BAFE3E: FMemLdI2 var_B8(0)
  loc_BAFE43: BranchF loc_BAFE79
  loc_BAFE46: LitStr "        <td width=""46" & Chr(37) & """ colspan=""3"" rowspan=""2"" class=""NombreMunicipio NoBordeAbajo""><strong>"
  loc_BAFE49: FMemLdR4 var_B8(4)
  loc_BAFE4E: CI4Str
  loc_BAFE4F: FLdPr Me
  loc_BAFE52: MemLdRfVar from_stack_1.global_124
  loc_BAFE55: Ary1LdI4
  loc_BAFE56: ConcatStr
  loc_BAFE57: FStStrNoPop var_BC
  loc_BAFE5A: LitStr " SEMESTRE</strong></td>"
  loc_BAFE5D: ConcatStr
  loc_BAFE5E: CVarStr var_CC
  loc_BAFE61: PopAdLdVar
  loc_BAFE62: FLdPr Me
  loc_BAFE65: MemLdRfVar from_stack_1.global_60
  loc_BAFE68: LdPrVar
  loc_BAFE6A: LateMemCall
  loc_BAFE70: FFree1Str var_BC
  loc_BAFE73: FFree1Var var_CC = ""
  loc_BAFE76: Branch loc_BAFE8D
  loc_BAFE79: LitVarStr var_94, "        <td width=""46" & Chr(37) & """ colspan=""3"" rowspan=""2"" class=""NombreMunicipio NoBordeAbajo""><strong>ANUAL</strong></td>"
  loc_BAFE7E: PopAdLdVar
  loc_BAFE7F: FLdPr Me
  loc_BAFE82: MemLdRfVar from_stack_1.global_60
  loc_BAFE85: LdPrVar
  loc_BAFE87: LateMemCall
  loc_BAFE8D: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">DERECHOS</td>"
  loc_BAFE92: PopAdLdVar
  loc_BAFE93: FLdPr Me
  loc_BAFE96: MemLdRfVar from_stack_1.global_60
  loc_BAFE99: LdPrVar
  loc_BAFE9B: LateMemCall
  loc_BAFEA1: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">DESCUENTOS</td>"
  loc_BAFEA6: PopAdLdVar
  loc_BAFEA7: FLdPr Me
  loc_BAFEAA: MemLdRfVar from_stack_1.global_60
  loc_BAFEAD: LdPrVar
  loc_BAFEAF: LateMemCall
  loc_BAFEB5: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">RECARGO</td>"
  loc_BAFEBA: PopAdLdVar
  loc_BAFEBB: FLdPr Me
  loc_BAFEBE: MemLdRfVar from_stack_1.global_60
  loc_BAFEC1: LdPrVar
  loc_BAFEC3: LateMemCall
  loc_BAFEC9: LitVarStr var_94, "        <td width=""18" & Chr(37) & """ class=""Encabezado"">C. EMISI&Oacute;N</td>"
  loc_BAFECE: PopAdLdVar
  loc_BAFECF: FLdPr Me
  loc_BAFED2: MemLdRfVar from_stack_1.global_60
  loc_BAFED5: LdPrVar
  loc_BAFED7: LateMemCall
  loc_BAFEDD: LitVarStr var_94, "        <td class=""Encabezado"">TOTAL A PAGAR</td>"
  loc_BAFEE2: PopAdLdVar
  loc_BAFEE3: FLdPr Me
  loc_BAFEE6: MemLdRfVar from_stack_1.global_60
  loc_BAFEE9: LdPrVar
  loc_BAFEEB: LateMemCall
  loc_BAFEF1: LitVarStr var_94, "      </tr>"
  loc_BAFEF6: PopAdLdVar
  loc_BAFEF7: FLdPr Me
  loc_BAFEFA: MemLdRfVar from_stack_1.global_60
  loc_BAFEFD: LdPrVar
  loc_BAFEFF: LateMemCall
  loc_BAFF05: LitVarStr var_94, "      <tr class=""NormalBloqueFin"" valign=""top"" align=""right"">"
  loc_BAFF0A: PopAdLdVar
  loc_BAFF0B: FLdPr Me
  loc_BAFF0E: MemLdRfVar from_stack_1.global_60
  loc_BAFF11: LdPrVar
  loc_BAFF13: LateMemCall
  loc_BAFF19: LitStr vbNullString
  loc_BAFF1C: LitI2_Byte 0
  loc_BAFF1E: LitI2_Byte 0
  loc_BAFF20: LitI2_Byte 0
  loc_BAFF22: LitI4 0
  loc_BAFF27: FMemLdR4 var_B8(28)
  loc_BAFF2C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAFF31: CVarStr var_CC
  loc_BAFF34: PopAdLdVar
  loc_BAFF35: FLdPr Me
  loc_BAFF38: MemLdRfVar from_stack_1.global_60
  loc_BAFF3B: LdPrVar
  loc_BAFF3D: LateMemCall
  loc_BAFF43: FFree1Var var_CC = ""
  loc_BAFF46: LitStr vbNullString
  loc_BAFF49: LitI2_Byte 0
  loc_BAFF4B: LitI2_Byte 0
  loc_BAFF4D: LitI2_Byte 0
  loc_BAFF4F: LitI4 0
  loc_BAFF54: FMemLdR4 var_B8(32)
  loc_BAFF59: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAFF5E: CVarStr var_CC
  loc_BAFF61: PopAdLdVar
  loc_BAFF62: FLdPr Me
  loc_BAFF65: MemLdRfVar from_stack_1.global_60
  loc_BAFF68: LdPrVar
  loc_BAFF6A: LateMemCall
  loc_BAFF70: FFree1Var var_CC = ""
  loc_BAFF73: LitStr vbNullString
  loc_BAFF76: LitI2_Byte 0
  loc_BAFF78: LitI2_Byte 0
  loc_BAFF7A: LitI2_Byte 0
  loc_BAFF7C: LitI4 0
  loc_BAFF81: FMemLdR4 var_B8(36)
  loc_BAFF86: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAFF8B: CVarStr var_CC
  loc_BAFF8E: PopAdLdVar
  loc_BAFF8F: FLdPr Me
  loc_BAFF92: MemLdRfVar from_stack_1.global_60
  loc_BAFF95: LdPrVar
  loc_BAFF97: LateMemCall
  loc_BAFF9D: FFree1Var var_CC = ""
  loc_BAFFA0: LitStr vbNullString
  loc_BAFFA3: LitI2_Byte 0
  loc_BAFFA5: LitI2_Byte 0
  loc_BAFFA7: LitI2_Byte 0
  loc_BAFFA9: LitI4 0
  loc_BAFFAE: FMemLdR4 var_B8(40)
  loc_BAFFB3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAFFB8: CVarStr var_CC
  loc_BAFFBB: PopAdLdVar
  loc_BAFFBC: FLdPr Me
  loc_BAFFBF: MemLdRfVar from_stack_1.global_60
  loc_BAFFC2: LdPrVar
  loc_BAFFC4: LateMemCall
  loc_BAFFCA: FFree1Var var_CC = ""
  loc_BAFFCD: LitStr "Totales"
  loc_BAFFD0: LitI2_Byte 0
  loc_BAFFD2: LitI2_Byte 0
  loc_BAFFD4: LitI2_Byte 0
  loc_BAFFD6: LitI4 0
  loc_BAFFDB: FMemLdR4 var_B8(44)
  loc_BAFFE0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAFFE5: CVarStr var_CC
  loc_BAFFE8: PopAdLdVar
  loc_BAFFE9: FLdPr Me
  loc_BAFFEC: MemLdRfVar from_stack_1.global_60
  loc_BAFFEF: LdPrVar
  loc_BAFFF1: LateMemCall
  loc_BAFFF7: FFree1Var var_CC = ""
  loc_BAFFFA: LitVarStr var_94, "      </tr>"
  loc_BAFFFF: PopAdLdVar
  loc_BB0000: FLdPr Me
  loc_BB0003: MemLdRfVar from_stack_1.global_60
  loc_BB0006: LdPrVar
  loc_BB0008: LateMemCall
  loc_BB000E: LitVarStr var_94, "      <tr align=""left"">"
  loc_BB0013: PopAdLdVar
  loc_BB0014: FLdPr Me
  loc_BB0017: MemLdRfVar from_stack_1.global_60
  loc_BB001A: LdPrVar
  loc_BB001C: LateMemCall
  loc_BB0022: LitVarStr var_94, "          <td height=""42"" colspan=""3"" align=""center"" class=""Normal NoBordeArriba"" style=""border-right:none; border-bottom:none"">"
  loc_BB0027: PopAdLdVar
  loc_BB0028: FLdPr Me
  loc_BB002B: MemLdRfVar from_stack_1.global_60
  loc_BB002E: LdPrVar
  loc_BB0030: LateMemCall
  loc_BB0036: LitStr "                  <strong class=""NombreMunicipio"">"
  loc_BB0039: FLdRfVar var_CE
  loc_BB003C: FLdPr Me
  loc_BB003F: MemLdRfVar from_stack_1.global_80
  loc_BB0042: NewIfNullPr clsliquidacion
  loc_BB0045: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BB004A: FLdI2 var_CE
  loc_BB004D: CStrUI1
  loc_BB004F: FStStrNoPop var_BC
  loc_BB0052: ConcatStr
  loc_BB0053: FStStrNoPop var_D4
  loc_BB0056: LitStr "</strong>"
  loc_BB0059: ConcatStr
  loc_BB005A: CVarStr var_CC
  loc_BB005D: PopAdLdVar
  loc_BB005E: FLdPr Me
  loc_BB0061: MemLdRfVar from_stack_1.global_60
  loc_BB0064: LdPrVar
  loc_BB0066: LateMemCall
  loc_BB006C: FFreeStr var_BC = ""
  loc_BB0073: FFree1Var var_CC = ""
  loc_BB0076: LitVarStr var_94, "            </td>"
  loc_BB007B: PopAdLdVar
  loc_BB007C: FLdPr Me
  loc_BB007F: MemLdRfVar from_stack_1.global_60
  loc_BB0082: LdPrVar
  loc_BB0084: LateMemCall
  loc_BB008A: LitVarStr var_94, "          <td align=""center"" colspan=""9"" rowspan=""2"" class=""Normal"" style=""border-left:none"">"
  loc_BB008F: PopAdLdVar
  loc_BB0090: FLdPr Me
  loc_BB0093: MemLdRfVar from_stack_1.global_60
  loc_BB0096: LdPrVar
  loc_BB0098: LateMemCall
  loc_BB009E: LitVarStr var_94, "            <table align=""center"">"
  loc_BB00A3: PopAdLdVar
  loc_BB00A4: FLdPr Me
  loc_BB00A7: MemLdRfVar from_stack_1.global_60
  loc_BB00AA: LdPrVar
  loc_BB00AC: LateMemCall
  loc_BB00B2: LitStr "              <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_BB00B5: LitI4 1
  loc_BB00BA: FMemLdR4 var_B8(20)
  loc_BB00BF: Ary1LdI4
  loc_BB00C0: ConcatStr
  loc_BB00C1: FStStrNoPop var_BC
  loc_BB00C4: LitStr "</td></tr>"
  loc_BB00C7: ConcatStr
  loc_BB00C8: CVarStr var_CC
  loc_BB00CB: PopAdLdVar
  loc_BB00CC: FLdPr Me
  loc_BB00CF: MemLdRfVar from_stack_1.global_60
  loc_BB00D2: LdPrVar
  loc_BB00D4: LateMemCall
  loc_BB00DA: FFree1Str var_BC
  loc_BB00DD: FFree1Var var_CC = ""
  loc_BB00E0: LitStr "              <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_BB00E3: LitI4 0
  loc_BB00E8: FMemLdR4 var_B8(20)
  loc_BB00ED: Ary1LdI4
  loc_BB00EE: ConcatStr
  loc_BB00EF: FStStrNoPop var_BC
  loc_BB00F2: LitStr "</td></tr>"
  loc_BB00F5: ConcatStr
  loc_BB00F6: CVarStr var_CC
  loc_BB00F9: PopAdLdVar
  loc_BB00FA: FLdPr Me
  loc_BB00FD: MemLdRfVar from_stack_1.global_60
  loc_BB0100: LdPrVar
  loc_BB0102: LateMemCall
  loc_BB0108: FFree1Str var_BC
  loc_BB010B: FFree1Var var_CC = ""
  loc_BB010E: LitVarStr var_94, "            </table>"
  loc_BB0113: PopAdLdVar
  loc_BB0114: FLdPr Me
  loc_BB0117: MemLdRfVar from_stack_1.global_60
  loc_BB011A: LdPrVar
  loc_BB011C: LateMemCall
  loc_BB0122: LitVarStr var_94, "          </td>"
  loc_BB0127: PopAdLdVar
  loc_BB0128: FLdPr Me
  loc_BB012B: MemLdRfVar from_stack_1.global_60
  loc_BB012E: LdPrVar
  loc_BB0130: LateMemCall
  loc_BB0136: LitVarStr var_94, "      </tr>"
  loc_BB013B: PopAdLdVar
  loc_BB013C: FLdPr Me
  loc_BB013F: MemLdRfVar from_stack_1.global_60
  loc_BB0142: LdPrVar
  loc_BB0144: LateMemCall
  loc_BB014A: LitVarStr var_94, "      <tr align=""left"">"
  loc_BB014F: PopAdLdVar
  loc_BB0150: FLdPr Me
  loc_BB0153: MemLdRfVar from_stack_1.global_60
  loc_BB0156: LdPrVar
  loc_BB0158: LateMemCall
  loc_BB015E: LitVarStr var_94, "        <td style=""border-right:none; border-top:none"" colspan=""3"" class=""Normal"" valign=""bottom"">"
  loc_BB0163: PopAdLdVar
  loc_BB0164: FLdPr Me
  loc_BB0167: MemLdRfVar from_stack_1.global_60
  loc_BB016A: LdPrVar
  loc_BB016C: LateMemCall
  loc_BB0172: LitVarStr var_94, "          <table border=""1"" cellpadding=""0"" cellspacing=""0"" width=""100" & Chr(37) & """>"
  loc_BB0177: PopAdLdVar
  loc_BB0178: FLdPr Me
  loc_BB017B: MemLdRfVar from_stack_1.global_60
  loc_BB017E: LdPrVar
  loc_BB0180: LateMemCall
  loc_BB0186: LitVarStr var_94, "              <tr align=""center"" class=""Encabezado"">"
  loc_BB018B: PopAdLdVar
  loc_BB018C: FLdPr Me
  loc_BB018F: MemLdRfVar from_stack_1.global_60
  loc_BB0192: LdPrVar
  loc_BB0194: LateMemCall
  loc_BB019A: FMemLdI2 var_B8(0)
  loc_BB019F: BranchF loc_BB0271
  loc_BB01A2: LitVarStr var_94, "                <td>PERIODO</td>"
  loc_BB01A7: PopAdLdVar
  loc_BB01A8: FLdPr Me
  loc_BB01AB: MemLdRfVar from_stack_1.global_60
  loc_BB01AE: LdPrVar
  loc_BB01B0: LateMemCall
  loc_BB01B6: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BB01BB: PopAdLdVar
  loc_BB01BC: FLdPr Me
  loc_BB01BF: MemLdRfVar from_stack_1.global_60
  loc_BB01C2: LdPrVar
  loc_BB01C4: LateMemCall
  loc_BB01CA: LitVarStr var_94, "              </tr>"
  loc_BB01CF: PopAdLdVar
  loc_BB01D0: FLdPr Me
  loc_BB01D3: MemLdRfVar from_stack_1.global_60
  loc_BB01D6: LdPrVar
  loc_BB01D8: LateMemCall
  loc_BB01DE: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BB01E3: PopAdLdVar
  loc_BB01E4: FLdPr Me
  loc_BB01E7: MemLdRfVar from_stack_1.global_60
  loc_BB01EA: LdPrVar
  loc_BB01EC: LateMemCall
  loc_BB01F2: LitStr "                <td>"
  loc_BB01F5: FMemLdR4 var_B8(4)
  loc_BB01FA: ConcatStr
  loc_BB01FB: FStStrNoPop var_BC
  loc_BB01FE: LitStr "/"
  loc_BB0201: ConcatStr
  loc_BB0202: FStStrNoPop var_D4
  loc_BB0205: FLdRfVar var_CE
  loc_BB0208: FLdPr Me
  loc_BB020B: MemLdRfVar from_stack_1.global_80
  loc_BB020E: NewIfNullPr clsliquidacion
  loc_BB0211: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BB0216: FLdI2 var_CE
  loc_BB0219: CStrUI1
  loc_BB021B: FStStrNoPop var_D8
  loc_BB021E: ConcatStr
  loc_BB021F: FStStrNoPop var_DC
  loc_BB0222: LitStr "</td>"
  loc_BB0225: ConcatStr
  loc_BB0226: CVarStr var_CC
  loc_BB0229: PopAdLdVar
  loc_BB022A: FLdPr Me
  loc_BB022D: MemLdRfVar from_stack_1.global_60
  loc_BB0230: LdPrVar
  loc_BB0232: LateMemCall
  loc_BB0238: FFreeStr var_BC = "": var_D4 = "": var_D8 = ""
  loc_BB0243: FFree1Var var_CC = ""
  loc_BB0246: LitStr "                <td>"
  loc_BB0249: FMemLdR4 var_B8(16)
  loc_BB024E: ConcatStr
  loc_BB024F: FStStrNoPop var_BC
  loc_BB0252: LitStr "</td>"
  loc_BB0255: ConcatStr
  loc_BB0256: CVarStr var_CC
  loc_BB0259: PopAdLdVar
  loc_BB025A: FLdPr Me
  loc_BB025D: MemLdRfVar from_stack_1.global_60
  loc_BB0260: LdPrVar
  loc_BB0262: LateMemCall
  loc_BB0268: FFree1Str var_BC
  loc_BB026B: FFree1Var var_CC = ""
  loc_BB026E: Branch loc_BB02D5
  loc_BB0271: LitVarStr var_94, "                <td>VENCIMIENTO</td>"
  loc_BB0276: PopAdLdVar
  loc_BB0277: FLdPr Me
  loc_BB027A: MemLdRfVar from_stack_1.global_60
  loc_BB027D: LdPrVar
  loc_BB027F: LateMemCall
  loc_BB0285: LitVarStr var_94, "              </tr>"
  loc_BB028A: PopAdLdVar
  loc_BB028B: FLdPr Me
  loc_BB028E: MemLdRfVar from_stack_1.global_60
  loc_BB0291: LdPrVar
  loc_BB0293: LateMemCall
  loc_BB0299: LitVarStr var_94, "              <tr align=""center"" class=""NormalBloqueFin"">"
  loc_BB029E: PopAdLdVar
  loc_BB029F: FLdPr Me
  loc_BB02A2: MemLdRfVar from_stack_1.global_60
  loc_BB02A5: LdPrVar
  loc_BB02A7: LateMemCall
  loc_BB02AD: LitStr "                <td>"
  loc_BB02B0: FMemLdR4 var_B8(16)
  loc_BB02B5: ConcatStr
  loc_BB02B6: FStStrNoPop var_BC
  loc_BB02B9: LitStr "</td>"
  loc_BB02BC: ConcatStr
  loc_BB02BD: CVarStr var_CC
  loc_BB02C0: PopAdLdVar
  loc_BB02C1: FLdPr Me
  loc_BB02C4: MemLdRfVar from_stack_1.global_60
  loc_BB02C7: LdPrVar
  loc_BB02C9: LateMemCall
  loc_BB02CF: FFree1Str var_BC
  loc_BB02D2: FFree1Var var_CC = ""
  loc_BB02D5: LitVarStr var_94, "              </tr>"
  loc_BB02DA: PopAdLdVar
  loc_BB02DB: FLdPr Me
  loc_BB02DE: MemLdRfVar from_stack_1.global_60
  loc_BB02E1: LdPrVar
  loc_BB02E3: LateMemCall
  loc_BB02E9: LitVarStr var_94, "          </table>"
  loc_BB02EE: PopAdLdVar
  loc_BB02EF: FLdPr Me
  loc_BB02F2: MemLdRfVar from_stack_1.global_60
  loc_BB02F5: LdPrVar
  loc_BB02F7: LateMemCall
  loc_BB02FD: LitVarStr var_94, "        </td>"
  loc_BB0302: PopAdLdVar
  loc_BB0303: FLdPr Me
  loc_BB0306: MemLdRfVar from_stack_1.global_60
  loc_BB0309: LdPrVar
  loc_BB030B: LateMemCall
  loc_BB0311: LitVarStr var_94, "      </tr>"
  loc_BB0316: PopAdLdVar
  loc_BB0317: FLdPr Me
  loc_BB031A: MemLdRfVar from_stack_1.global_60
  loc_BB031D: LdPrVar
  loc_BB031F: LateMemCall
  loc_BB0325: LitVarStr var_94, "    </table>"
  loc_BB032A: PopAdLdVar
  loc_BB032B: FLdPr Me
  loc_BB032E: MemLdRfVar from_stack_1.global_60
  loc_BB0331: LdPrVar
  loc_BB0333: LateMemCall
  loc_BB0339: FMemLdI2 var_B8(0)
  loc_BB033E: NotI4
  loc_BB033F: BranchF loc_BB0356
  loc_BB0342: LitVarStr var_94, "    <br>"
  loc_BB0347: PopAdLdVar
  loc_BB0348: FLdPr Me
  loc_BB034B: MemLdRfVar from_stack_1.global_60
  loc_BB034E: LdPrVar
  loc_BB0350: LateMemCall
  loc_BB0356: LitVarStr var_94, "  </td>"
  loc_BB035B: PopAdLdVar
  loc_BB035C: FLdPr Me
  loc_BB035F: MemLdRfVar from_stack_1.global_60
  loc_BB0362: LdPrVar
  loc_BB0364: LateMemCall
  loc_BB036A: LitVarStr var_94, "  </tr>"
  loc_BB036F: PopAdLdVar
  loc_BB0370: FLdPr Me
  loc_BB0373: MemLdRfVar from_stack_1.global_60
  loc_BB0376: LdPrVar
  loc_BB0378: LateMemCall
  loc_BB037E: LitI4 0
  loc_BB0383: FStR4 var_B8
  loc_BB0386: AryUnlock
  loc_BB0389: FLdPr Me
  loc_BB038C: MemLdRfVar from_stack_1.global_102
  loc_BB038F: NextUI1
  loc_BB0395: LitI4 0
  loc_BB039A: FStR4 var_AC
  loc_BB039D: AryUnlock
  loc_BB03A0: ExitProcHresult
End Function

Private Function Proc_312_27_AFB79C() 'AFB79C
  'Data Table: 4C11B4
  loc_AFB5B0: FLdPr Me
  loc_AFB5B3: MemLdStr global_96
  loc_AFB5B6: FLdPr Me
  loc_AFB5B9: MemLdStr global_92
  loc_AFB5BC: AryLock
  loc_AFB5BF: Ary1LdRf
  loc_AFB5C0: FStR4 var_8C
  loc_AFB5C3: LitVarStr var_9C, "  <tr><td valign=""top"" height=""111"">&nbsp;</td></tr>"
  loc_AFB5C8: PopAdLdVar
  loc_AFB5C9: FLdPr Me
  loc_AFB5CC: MemLdRfVar from_stack_1.global_60
  loc_AFB5CF: LdPrVar
  loc_AFB5D1: LateMemCall
  loc_AFB5D7: LitVarStr var_9C, "  <tr>"
  loc_AFB5DC: PopAdLdVar
  loc_AFB5DD: FLdPr Me
  loc_AFB5E0: MemLdRfVar from_stack_1.global_60
  loc_AFB5E3: LdPrVar
  loc_AFB5E5: LateMemCall
  loc_AFB5EB: LitVarStr var_9C, "    <td valign=""bottom"">"
  loc_AFB5F0: PopAdLdVar
  loc_AFB5F1: FLdPr Me
  loc_AFB5F4: MemLdRfVar from_stack_1.global_60
  loc_AFB5F7: LdPrVar
  loc_AFB5F9: LateMemCall
  loc_AFB5FF: LitVarStr var_9C, "     <table align=""center"" height=""100" & Chr(37) & """ width=""99" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0""><tr>"
  loc_AFB604: PopAdLdVar
  loc_AFB605: FLdPr Me
  loc_AFB608: MemLdRfVar from_stack_1.global_60
  loc_AFB60B: LdPrVar
  loc_AFB60D: LateMemCall
  loc_AFB613: LitVarStr var_9C, "        <td height=""100" & Chr(37) & """ class=""NormalAbajo MargIzq"">"
  loc_AFB618: PopAdLdVar
  loc_AFB619: FLdPr Me
  loc_AFB61C: MemLdRfVar from_stack_1.global_60
  loc_AFB61F: LdPrVar
  loc_AFB621: LateMemCall
  loc_AFB627: LitVarStr var_9C, "        <img src=""l7.jpg"" width=""152"" height=""147"" class=""LogoFin"">"
  loc_AFB62C: PopAdLdVar
  loc_AFB62D: FLdPr Me
  loc_AFB630: MemLdRfVar from_stack_1.global_60
  loc_AFB633: LdPrVar
  loc_AFB635: LateMemCall
  loc_AFB63B: LitVarStr var_9C, "        <strong><br>Pago mediante transferencia bancaria:</strong><br><br>"
  loc_AFB640: PopAdLdVar
  loc_AFB641: FLdPr Me
  loc_AFB644: MemLdRfVar from_stack_1.global_60
  loc_AFB647: LdPrVar
  loc_AFB649: LateMemCall
  loc_AFB64F: LitVarStr var_9C, "        <strong>Razón Social:</strong> MUNICIPALIDAD DE GUAYMALLÉN<br>"
  loc_AFB654: PopAdLdVar
  loc_AFB655: FLdPr Me
  loc_AFB658: MemLdRfVar from_stack_1.global_60
  loc_AFB65B: LdPrVar
  loc_AFB65D: LateMemCall
  loc_AFB663: LitVarStr var_9C, "        <strong>C.U.I.T.:</strong>30-99914707-7<br>"
  loc_AFB668: PopAdLdVar
  loc_AFB669: FLdPr Me
  loc_AFB66C: MemLdRfVar from_stack_1.global_60
  loc_AFB66F: LdPrVar
  loc_AFB671: LateMemCall
  loc_AFB677: LitVarStr var_9C, "        <strong>Dirección:</strong> Av. Libertad 720 - Villa Nueva - Guaymallén - Mendoza<br>"
  loc_AFB67C: PopAdLdVar
  loc_AFB67D: FLdPr Me
  loc_AFB680: MemLdRfVar from_stack_1.global_60
  loc_AFB683: LdPrVar
  loc_AFB685: LateMemCall
  loc_AFB68B: LitVarStr var_9C, "        <strong>Código Postal:</strong> 5521<br>"
  loc_AFB690: PopAdLdVar
  loc_AFB691: FLdPr Me
  loc_AFB694: MemLdRfVar from_stack_1.global_60
  loc_AFB697: LdPrVar
  loc_AFB699: LateMemCall
  loc_AFB69F: LitVarStr var_9C, "        <strong>Teléfono:</strong> 0261 4498345 (Dpto PUBLICIDAD y PROPAGANDA)<br><br>"
  loc_AFB6A4: PopAdLdVar
  loc_AFB6A5: FLdPr Me
  loc_AFB6A8: MemLdRfVar from_stack_1.global_60
  loc_AFB6AB: LdPrVar
  loc_AFB6AD: LateMemCall
  loc_AFB6B3: LitVarStr var_9C, "        <strong>Datos Bancarios:</strong><br>"
  loc_AFB6B8: PopAdLdVar
  loc_AFB6B9: FLdPr Me
  loc_AFB6BC: MemLdRfVar from_stack_1.global_60
  loc_AFB6BF: LdPrVar
  loc_AFB6C1: LateMemCall
  loc_AFB6C7: LitVarStr var_9C, "        <strong>Banco:</strong> Banco Superville<br>"
  loc_AFB6CC: PopAdLdVar
  loc_AFB6CD: FLdPr Me
  loc_AFB6D0: MemLdRfVar from_stack_1.global_60
  loc_AFB6D3: LdPrVar
  loc_AFB6D5: LateMemCall
  loc_AFB6DB: LitVarStr var_9C, "        <strong>CBU:</strong> 0270066310005797020018<br>"
  loc_AFB6E0: PopAdLdVar
  loc_AFB6E1: FLdPr Me
  loc_AFB6E4: MemLdRfVar from_stack_1.global_60
  loc_AFB6E7: LdPrVar
  loc_AFB6E9: LateMemCall
  loc_AFB6EF: LitVarStr var_9C, "        <strong>Cuenta:</strong> 00579702-001 Cuenta Recaudadora<br>"
  loc_AFB6F4: PopAdLdVar
  loc_AFB6F5: FLdPr Me
  loc_AFB6F8: MemLdRfVar from_stack_1.global_60
  loc_AFB6FB: LdPrVar
  loc_AFB6FD: LateMemCall
  loc_AFB703: LitVarStr var_9C, "        <strong>Sucursal (nro) :</strong> Casa Matriz<br>"
  loc_AFB708: PopAdLdVar
  loc_AFB709: FLdPr Me
  loc_AFB70C: MemLdRfVar from_stack_1.global_60
  loc_AFB70F: LdPrVar
  loc_AFB711: LateMemCall
  loc_AFB717: LitVarStr var_9C, "        <strong>EN CASO DE HACER USO DE ESTA OPCIÓN COMUNICAR POR MAIL A:</strong> publicidad.propaganda@guaymallen.gob.ar<br>"
  loc_AFB71C: PopAdLdVar
  loc_AFB71D: FLdPr Me
  loc_AFB720: MemLdRfVar from_stack_1.global_60
  loc_AFB723: LdPrVar
  loc_AFB725: LateMemCall
  loc_AFB72B: LitVarStr var_9C, "        <strong>¡Registrá tu Domicilio Fiscal Electrónico! Podés hacerlo al mail publicidad.propaganda@guaymallen.gob.ar</strong>"
  loc_AFB730: PopAdLdVar
  loc_AFB731: FLdPr Me
  loc_AFB734: MemLdRfVar from_stack_1.global_60
  loc_AFB737: LdPrVar
  loc_AFB739: LateMemCall
  loc_AFB73F: LitVarStr var_9C, "      </td></tr></table>"
  loc_AFB744: PopAdLdVar
  loc_AFB745: FLdPr Me
  loc_AFB748: MemLdRfVar from_stack_1.global_60
  loc_AFB74B: LdPrVar
  loc_AFB74D: LateMemCall
  loc_AFB753: LitVarStr var_9C, "    </td>"
  loc_AFB758: PopAdLdVar
  loc_AFB759: FLdPr Me
  loc_AFB75C: MemLdRfVar from_stack_1.global_60
  loc_AFB75F: LdPrVar
  loc_AFB761: LateMemCall
  loc_AFB767: LitVarStr var_9C, "  </tr>"
  loc_AFB76C: PopAdLdVar
  loc_AFB76D: FLdPr Me
  loc_AFB770: MemLdRfVar from_stack_1.global_60
  loc_AFB773: LdPrVar
  loc_AFB775: LateMemCall
  loc_AFB77B: LitVarStr var_9C, "</table>"
  loc_AFB780: PopAdLdVar
  loc_AFB781: FLdPr Me
  loc_AFB784: MemLdRfVar from_stack_1.global_60
  loc_AFB787: LdPrVar
  loc_AFB789: LateMemCall
  loc_AFB78F: LitI4 0
  loc_AFB794: FStR4 var_8C
  loc_AFB797: AryUnlock
  loc_AFB79A: ExitProcHresult
End Function

Private Function Proc_312_28_9F5E10() '9F5E10
  'Data Table: 4C11B4
  loc_9F5DE4: LitVarStr var_94, "</body>"
  loc_9F5DE9: PopAdLdVar
  loc_9F5DEA: FLdPr Me
  loc_9F5DED: MemLdRfVar from_stack_1.global_60
  loc_9F5DF0: LdPrVar
  loc_9F5DF2: LateMemCall
  loc_9F5DF8: LitVarStr var_94, "</html>"
  loc_9F5DFD: PopAdLdVar
  loc_9F5DFE: FLdPr Me
  loc_9F5E01: MemLdRfVar from_stack_1.global_60
  loc_9F5E04: LdPrVar
  loc_9F5E06: LateMemCall
  loc_9F5E0C: ExitProcHresult
End Function
