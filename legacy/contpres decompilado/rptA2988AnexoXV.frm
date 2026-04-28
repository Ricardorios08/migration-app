VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoXV
  Caption = "Acuerdo 2988 - Anexo XV - DE LA EVOLUCIÓN DEL PATRIMONIO NETO"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoXV.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9270
  ClientHeight = 3135
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2880
    Width = 9270
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptA2988AnexoXV.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7920
    Top = 600
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptA2988AnexoXV.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoXV.frx":0B9C
    Left = 3960
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1680
    Width = 5895
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT HTC"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1680
    Width = 3015
    Height = 1095
    TabIndex = 4
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 1575
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3720
      Top = 600
      Width = 2175
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1455
      Top = 690
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 735
      Top = 750
      Width = 585
      Height = 195
      TabIndex = 1
      Alignment = 1 'Right Justify
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 840
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptA2988AnexoXV.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoXV"

Public htmFile As Variant
Public txtFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean


Private Sub cmdXLS_Click() '96B85C
  'Data Table: 451FD8
  loc_96B840: LitI2_Byte &HFF
  loc_96B842: LitI2_Byte 0
  loc_96B844: ILdRf Me
  loc_96B847: CastAd
  loc_96B84A: FStAdFunc var_88
  loc_96B84D: FLdRfVar var_88
  loc_96B850: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B855: FFree1Ad var_88
  loc_96B858: ExitProcHresult
  loc_96B859: ExitProcI2
  loc_96B85A: Branch loc_971840
End Sub

Private Sub Form_Load() '9D5DE8
  'Data Table: 451FD8
  loc_9D5CFC: LitI2_Byte &HFF
  loc_9D5CFE: ImpAdStI2 MemVar_C3D840
  loc_9D5D01: ILdRf Me
  loc_9D5D04: CastAd
  loc_9D5D07: FStAdFunc var_88
  loc_9D5D0A: FLdRfVar var_88
  loc_9D5D0D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D5D12: FFree1Ad var_88
  loc_9D5D15: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D5D18: FLdPr Me
  loc_9D5D1B: MemLdRfVar from_stack_1.global_88
  loc_9D5D1E: NewIfNullPr clsbase
  loc_9D5D21: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D5D26: FLdRfVar var_8C
  loc_9D5D29: FLdPr Me
  loc_9D5D2C: MemLdRfVar from_stack_1.global_88
  loc_9D5D2F: NewIfNullPr clsbase
  loc_9D5D32: from_stack_1 = clsbase.RecordCount
  loc_9D5D37: ILdRf var_8C
  loc_9D5D3A: LitI4 0
  loc_9D5D3F: GtI4
  loc_9D5D40: BranchF loc_9D5DDF
  loc_9D5D43: FLdPr Me
  loc_9D5D46: MemLdRfVar from_stack_1.global_88
  loc_9D5D49: NewIfNullPr clsbase
  loc_9D5D4C: Call clsbase.MoveFirst()
  loc_9D5D51: FLdRfVar var_8E
  loc_9D5D54: FLdPr Me
  loc_9D5D57: MemLdRfVar from_stack_1.global_88
  loc_9D5D5A: NewIfNullPr clsbase
  loc_9D5D5D: from_stack_1 = clsbase.EOF
  loc_9D5D62: FLdI2 var_8E
  loc_9D5D65: NotI4
  loc_9D5D66: BranchF loc_9D5DDF
  loc_9D5D69: LitVar_Missing var_CC
  loc_9D5D6C: PopAdLdVar
  loc_9D5D6D: FLdRfVar var_B8
  loc_9D5D70: FLdRfVar var_A8
  loc_9D5D73: LitVarStr var_A4, "PeriInfo"
  loc_9D5D78: PopAdLdVar
  loc_9D5D79: FLdRfVar var_94
  loc_9D5D7C: FLdRfVar var_88
  loc_9D5D7F: FLdPr Me
  loc_9D5D82: MemLdRfVar from_stack_1.global_88
  loc_9D5D85: NewIfNullPr clsbase
  loc_9D5D88: from_stack_1v = clsbase.RsFrmGet()
  loc_9D5D8D: FLdPr var_88
  loc_9D5D90:  = Me.Fields
  loc_9D5D95: FLdPr var_94
  loc_9D5D98: from_stack_2 = Me.Item(from_stack_1)
  loc_9D5D9D: FLdPr var_A8
  loc_9D5DA0:  = Me.Value
  loc_9D5DA5: FLdRfVar var_B8
  loc_9D5DA8: CStrVarTmp
  loc_9D5DA9: FStStrNoPop var_BC
  loc_9D5DAC: FLdPr Me
  loc_9D5DAF: VCallAd Control_ID_cboPeriodo
  loc_9D5DB2: FStAdFunc var_D0
  loc_9D5DB5: FLdPr var_D0
  loc_9D5DB8: Me.AddItem from_stack_1, from_stack_2
  loc_9D5DBD: FFree1Str var_BC
  loc_9D5DC0: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D5DCB: FFree1Var var_B8 = ""
  loc_9D5DCE: FLdPr Me
  loc_9D5DD1: MemLdRfVar from_stack_1.global_88
  loc_9D5DD4: NewIfNullPr clsbase
  loc_9D5DD7: Call clsbase.MoveSiguiente()
  loc_9D5DDC: Branch loc_9D5D51
  loc_9D5DDF: Call cmdNueva_Click()
  loc_9D5DE4: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95C648
  'Data Table: 451FD8
  loc_95C630: FLdPr Me
  loc_95C633: VCallAd Control_ID_wbbReporte
  loc_95C636: FStAdFunc var_88
  loc_95C639: FLdRfVar var_88
  loc_95C63C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95C641: FFree1Ad var_88
  loc_95C644: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '95CC38
  'Data Table: 451FD8
  loc_95CC20: ILdRf Me
  loc_95CC23: CastAd
  loc_95CC26: FStAdFunc var_88
  loc_95CC29: FLdRfVar var_88
  loc_95CC2C: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_95CC31: FFree1Ad var_88
  loc_95CC34: ExitProcHresult
  loc_95CC35: Ary1StVar
  loc_95CC36: CRec2Uni arg_6000
End Sub

Private Sub cmdPrevia_Click() '95D358
  'Data Table: 451FD8
  loc_95D340: ILdRf Me
  loc_95D343: CastAd
  loc_95D346: FStAdFunc var_88
  loc_95D349: FLdRfVar var_88
  loc_95D34C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95D351: FFree1Ad var_88
  loc_95D354: ExitProcHresult
  loc_95D355: PopTmpLdAdStr arg_22
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '985F54
  'Data Table: 451FD8
  loc_985F1C: FLdPr Me
  loc_985F1F: VCallAd Control_ID_statusBar
  loc_985F22: FStAdFunc var_88
  loc_985F25: FLdPr var_88
  loc_985F28: LateIdLdVar var_98 DispID_1 0
  loc_985F2F: CStrVarTmp
  loc_985F30: CVarStr var_A8
  loc_985F33: PopAdLdVar
  loc_985F34: FLdPr Me
  loc_985F37: VCallAd Control_ID_statusBar
  loc_985F3A: FStAdFunc var_BC
  loc_985F3D: FLdPr var_BC
  loc_985F40: LateIdSt
  loc_985F45: FFreeAd var_88 = ""
  loc_985F4C: FFreeVar var_98 = ""
  loc_985F53: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '976F68
  'Data Table: 451FD8
  loc_976F38: LitVarStr var_94, "Cerrando..."
  loc_976F3D: PopAdLdVar
  loc_976F3E: FLdPr Me
  loc_976F41: VCallAd Control_ID_statusBar
  loc_976F44: FStAdFunc var_A8
  loc_976F47: FLdPr var_A8
  loc_976F4A: LateIdSt
  loc_976F4F: FFree1Ad var_A8
  loc_976F52: ILdRf Me
  loc_976F55: FStAdNoPop
  loc_976F59: ImpAdLdRf MemVar_C44F9C
  loc_976F5C: NewIfNullPr Me
  loc_976F5F: Me.Global.Unload from_stack_1
  loc_976F64: FFree1Ad var_A8
  loc_976F67: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95649C
  'Data Table: 451FD8
  loc_956484: ILdRf Me
  loc_956487: CastAd
  loc_95648A: FStAdFunc var_88
  loc_95648D: FLdRfVar var_88
  loc_956490: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_956495: FFree1Ad var_88
  loc_956498: ExitProcHresult
  loc_956499: MemStFPR8 global_35
End Sub

Private Sub cmdNueva_Click() '992594
  'Data Table: 451FD8
  loc_992544: LitI2_Byte 0
  loc_992546: FLdPr Me
  loc_992549: MemStI2 bGenerado
  loc_99254C: LitI2_Byte &HFF
  loc_99254E: FLdPr Me
  loc_992551: MemStI2 bLogos
  loc_992554: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_992559: ImpAdLdI2 MemVar_C3D064
  loc_99255C: CStrUI1
  loc_99255E: FStStrNoPop var_88
  loc_992561: FLdPr Me
  loc_992564: VCallAd Control_ID_cboPeriodo
  loc_992567: FStAdFunc var_8C
  loc_99256A: FLdPr var_8C
  loc_99256D: Me.Text = from_stack_1
  loc_992572: FFree1Str var_88
  loc_992575: FFree1Ad var_8C
  loc_992578: Call HabilitarCriterio()
  loc_99257D: ILdRf Me
  loc_992580: CastAd
  loc_992583: FStAdFunc var_8C
  loc_992586: FLdRfVar var_8C
  loc_992589: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_99258E: FFree1Ad var_8C
  loc_992591: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '98F6B8
  'Data Table: 451FD8
  loc_98F670: LitStr "Acuerdo 2988 Anexo XV "
  loc_98F673: FLdRfVar var_8C
  loc_98F676: FLdPr Me
  loc_98F679: VCallAd Control_ID_cboPeriodo
  loc_98F67C: FStAdFunc var_88
  loc_98F67F: FLdPr var_88
  loc_98F682:  = Me.Text
  loc_98F687: ILdRf var_8C
  loc_98F68A: ConcatStr
  loc_98F68B: FStStrNoPop var_90
  loc_98F68E: FLdPr Me
  loc_98F691: Me.Tag = from_stack_1
  loc_98F696: FFreeStr var_8C = ""
  loc_98F69D: FFree1Ad var_88
  loc_98F6A0: LitI2_Byte 0
  loc_98F6A2: ILdRf Me
  loc_98F6A5: CastAd
  loc_98F6A8: FStAdFunc var_88
  loc_98F6AB: FLdRfVar var_88
  loc_98F6AE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_98F6B3: FFree1Ad var_88
  loc_98F6B6: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '970E30
  'Data Table: 451FD8
  loc_970E0C: LitStr "EvolPatriNeto.txt"
  loc_970E0F: FLdPr Me
  loc_970E12: Me.Tag = from_stack_1
  loc_970E17: LitI2_Byte 0
  loc_970E19: ILdRf Me
  loc_970E1C: CastAd
  loc_970E1F: FStAdFunc var_88
  loc_970E22: FLdRfVar var_88
  loc_970E25: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_970E2A: FFree1Ad var_88
  loc_970E2D: ExitProcHresult
  loc_970E2E: FLdPr arg_6034
End Sub

Public Function htmFileGet() '452C14
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '452C23
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '452C32
  htmFile = Value
End Sub

Public Function txtFileGet() '452C41
  txtFileGet = txtFile
End Function

Public Sub txtFilePut(Value) '452C50
  txtFile = Value
End Sub

Public Sub txtFileSet(Value) '452C5F
  txtFile = Value
End Sub

Public Function bLogosGet() '452C6E
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '452C7D
  bLogos = Value
End Sub

Public Function bGeneradoGet() '452C8C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '452C9B
  bGenerado = Value
End Sub

Public Sub GeneraTXT() 'A90ED4
  'Data Table: 451FD8
  loc_A90B0C: FLdRfVar var_90
  loc_A90B0F: FLdPr Me
  loc_A90B12: VCallAd Control_ID_cboPeriodo
  loc_A90B15: FStAdFunc var_8C
  loc_A90B18: FLdPr var_8C
  loc_A90B1B:  = Me.Text
  loc_A90B20: FLdZeroAd var_90
  loc_A90B23: FStStr var_88
  loc_A90B26: FFree1Ad var_8C
  loc_A90B29: FLdRfVar var_8C
  loc_A90B2C: LitI2_Byte 0
  loc_A90B2E: LitI2_Byte &HFF
  loc_A90B30: ImpAdLdI4 MemVar_C3D05C
  loc_A90B33: FLdPr Me
  loc_A90B36: MemLdRfVar from_stack_1.global_92
  loc_A90B39: NewIfNullPr IFileSystem3
  loc_A90B3C: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A90B41: ILdRf var_8C
  loc_A90B44: FLdPr Me
  loc_A90B47: MemStVarAd
  loc_A90B4B: FFree1Ad var_8C
  loc_A90B4E: LitStr "PeriodoPresenta|ExpID|CuentaCod|CuentaDet|SaldoInicial|MovimientoAltasCodigo|MovimientoAltasNombre|MovimientoAltasImporte|MovimientoBajasCodigo|MovimientoBajasNombre|MovimientoBajasImporte|SaldoFinal"
  loc_A90B51: LitStr vbCrLf
  loc_A90B54: ConcatStr
  loc_A90B55: CVarStr var_A0
  loc_A90B58: PopAdLdVar
  loc_A90B59: FLdPr Me
  loc_A90B5C: MemLdRfVar from_stack_1.txtFile
  loc_A90B5F: LdPrVar
  loc_A90B61: LateMemCall
  loc_A90B67: FFree1Var var_A0 = ""
  loc_A90B6A: FLdRfVar var_8C
  loc_A90B6D: FLdPr Me
  loc_A90B70: MemLdRfVar from_stack_1.global_88
  loc_A90B73: NewIfNullPr clsbase
  loc_A90B76: from_stack_1v = clsbase.RsFrmGet()
  loc_A90B7B: FLdZeroAd var_8C
  loc_A90B7E: FStAdFunc var_B4
  loc_A90B81: FLdPr Me
  loc_A90B84: MemLdRfVar from_stack_1.global_88
  loc_A90B87: NewIfNullPr clsbase
  loc_A90B8A: Call clsbase.MoveFirst()
  loc_A90B8F: FLdRfVar var_B6
  loc_A90B92: FLdPr Me
  loc_A90B95: MemLdRfVar from_stack_1.global_88
  loc_A90B98: NewIfNullPr clsbase
  loc_A90B9B: from_stack_1 = clsbase.EOF
  loc_A90BA0: FLdI2 var_B6
  loc_A90BA3: NotI4
  loc_A90BA4: BranchF loc_A90EBD
  loc_A90BA7: FLdRfVar var_A0
  loc_A90BAA: FLdRfVar var_BC
  loc_A90BAD: LitVarStr var_B0, "tdetacuco"
  loc_A90BB2: PopAdLdVar
  loc_A90BB3: FLdRfVar var_8C
  loc_A90BB6: FLdPr var_B4
  loc_A90BB9:  = Me.Fields
  loc_A90BBE: FLdPr var_8C
  loc_A90BC1: from_stack_2 = Me.Item(from_stack_1)
  loc_A90BC6: FLdPr var_BC
  loc_A90BC9:  = Me.Value
  loc_A90BCE: FLdRfVar var_A0
  loc_A90BD1: LitVarStr var_CC, "TOTALES"
  loc_A90BD6: HardType
  loc_A90BD7: NeVarBool
  loc_A90BD9: FFreeAd var_8C = ""
  loc_A90BE0: FFree1Var var_A0 = ""
  loc_A90BE3: BranchF loc_A90EAC
  loc_A90BE6: ILdRf var_88
  loc_A90BE9: LitStr "|"
  loc_A90BEC: ConcatStr
  loc_A90BED: FStStrNoPop var_90
  loc_A90BF0: LitStr "eee-2022-060204"
  loc_A90BF3: ConcatStr
  loc_A90BF4: FStStrNoPop var_E0
  loc_A90BF7: LitStr "|"
  loc_A90BFA: ConcatStr
  loc_A90BFB: CVarStr var_DC
  loc_A90BFE: FLdRfVar var_A0
  loc_A90C01: FLdRfVar var_BC
  loc_A90C04: LitVarStr var_B0, "tcodicuco"
  loc_A90C09: PopAdLdVar
  loc_A90C0A: FLdRfVar var_8C
  loc_A90C0D: FLdPr var_B4
  loc_A90C10:  = Me.Fields
  loc_A90C15: FLdPr var_8C
  loc_A90C18: from_stack_2 = Me.Item(from_stack_1)
  loc_A90C1D: FLdPr var_BC
  loc_A90C20:  = Me.Value
  loc_A90C25: FLdRfVar var_A0
  loc_A90C28: ConcatVar var_F0
  loc_A90C2C: LitVarStr var_CC, "|"
  loc_A90C31: ConcatVar var_100
  loc_A90C35: FLdRfVar var_128
  loc_A90C38: FLdRfVar var_118
  loc_A90C3B: LitVarStr var_114, "tdetacuco"
  loc_A90C40: PopAdLdVar
  loc_A90C41: FLdRfVar var_104
  loc_A90C44: FLdPr var_B4
  loc_A90C47:  = Me.Fields
  loc_A90C4C: FLdPr var_104
  loc_A90C4F: from_stack_2 = Me.Item(from_stack_1)
  loc_A90C54: FLdPr var_118
  loc_A90C57:  = Me.Value
  loc_A90C5C: FLdRfVar var_128
  loc_A90C5F: ConcatVar var_138
  loc_A90C63: LitVarStr var_148, "|"
  loc_A90C68: ConcatVar var_158
  loc_A90C6C: FLdRfVar var_180
  loc_A90C6F: FLdRfVar var_170
  loc_A90C72: LitVarStr var_16C, "SaldoInicial"
  loc_A90C77: PopAdLdVar
  loc_A90C78: FLdRfVar var_15C
  loc_A90C7B: FLdPr var_B4
  loc_A90C7E:  = Me.Fields
  loc_A90C83: FLdPr var_15C
  loc_A90C86: from_stack_2 = Me.Item(from_stack_1)
  loc_A90C8B: FLdPr var_170
  loc_A90C8E:  = Me.Value
  loc_A90C93: FLdRfVar var_180
  loc_A90C96: ConcatVar var_190
  loc_A90C9A: LitVarStr var_1A0, "|"
  loc_A90C9F: ConcatVar var_1B0
  loc_A90CA3: FLdRfVar var_1D8
  loc_A90CA6: FLdRfVar var_1C8
  loc_A90CA9: LitVarStr var_1C4, "CodiCuco"
  loc_A90CAE: PopAdLdVar
  loc_A90CAF: FLdRfVar var_1B4
  loc_A90CB2: FLdPr var_B4
  loc_A90CB5:  = Me.Fields
  loc_A90CBA: FLdPr var_1B4
  loc_A90CBD: from_stack_2 = Me.Item(from_stack_1)
  loc_A90CC2: FLdPr var_1C8
  loc_A90CC5:  = Me.Value
  loc_A90CCA: FLdRfVar var_1D8
  loc_A90CCD: ConcatVar var_1E8
  loc_A90CD1: LitVarStr var_1F8, "|"
  loc_A90CD6: ConcatVar var_208
  loc_A90CDA: FLdRfVar var_230
  loc_A90CDD: FLdRfVar var_220
  loc_A90CE0: LitVarStr var_21C, "DetaCuco"
  loc_A90CE5: PopAdLdVar
  loc_A90CE6: FLdRfVar var_20C
  loc_A90CE9: FLdPr var_B4
  loc_A90CEC:  = Me.Fields
  loc_A90CF1: FLdPr var_20C
  loc_A90CF4: from_stack_2 = Me.Item(from_stack_1)
  loc_A90CF9: FLdPr var_220
  loc_A90CFC:  = Me.Value
  loc_A90D01: FLdRfVar var_230
  loc_A90D04: ConcatVar var_240
  loc_A90D08: LitVarStr var_250, "|"
  loc_A90D0D: ConcatVar var_260
  loc_A90D11: FLdRfVar var_288
  loc_A90D14: FLdRfVar var_278
  loc_A90D17: LitVarStr var_274, "altas"
  loc_A90D1C: PopAdLdVar
  loc_A90D1D: FLdRfVar var_264
  loc_A90D20: FLdPr var_B4
  loc_A90D23:  = Me.Fields
  loc_A90D28: FLdPr var_264
  loc_A90D2B: from_stack_2 = Me.Item(from_stack_1)
  loc_A90D30: FLdPr var_278
  loc_A90D33:  = Me.Value
  loc_A90D38: FLdRfVar var_288
  loc_A90D3B: ConcatVar var_298
  loc_A90D3F: LitVarStr var_2A8, "|"
  loc_A90D44: ConcatVar var_2B8
  loc_A90D48: FLdRfVar var_2E0
  loc_A90D4B: FLdRfVar var_2D0
  loc_A90D4E: LitVarStr var_2CC, "CodiCuco"
  loc_A90D53: PopAdLdVar
  loc_A90D54: FLdRfVar var_2BC
  loc_A90D57: FLdPr var_B4
  loc_A90D5A:  = Me.Fields
  loc_A90D5F: FLdPr var_2BC
  loc_A90D62: from_stack_2 = Me.Item(from_stack_1)
  loc_A90D67: FLdPr var_2D0
  loc_A90D6A:  = Me.Value
  loc_A90D6F: FLdRfVar var_2E0
  loc_A90D72: ConcatVar var_2F0
  loc_A90D76: LitVarStr var_300, "|"
  loc_A90D7B: ConcatVar var_310
  loc_A90D7F: FLdRfVar var_338
  loc_A90D82: FLdRfVar var_328
  loc_A90D85: LitVarStr var_324, "DetaCuco"
  loc_A90D8A: PopAdLdVar
  loc_A90D8B: FLdRfVar var_314
  loc_A90D8E: FLdPr var_B4
  loc_A90D91:  = Me.Fields
  loc_A90D96: FLdPr var_314
  loc_A90D99: from_stack_2 = Me.Item(from_stack_1)
  loc_A90D9E: FLdPr var_328
  loc_A90DA1:  = Me.Value
  loc_A90DA6: FLdRfVar var_338
  loc_A90DA9: ConcatVar var_348
  loc_A90DAD: LitVarStr var_358, "|"
  loc_A90DB2: ConcatVar var_368
  loc_A90DB6: FLdRfVar var_390
  loc_A90DB9: FLdRfVar var_380
  loc_A90DBC: LitVarStr var_37C, "bajas"
  loc_A90DC1: PopAdLdVar
  loc_A90DC2: FLdRfVar var_36C
  loc_A90DC5: FLdPr var_B4
  loc_A90DC8:  = Me.Fields
  loc_A90DCD: FLdPr var_36C
  loc_A90DD0: from_stack_2 = Me.Item(from_stack_1)
  loc_A90DD5: FLdPr var_380
  loc_A90DD8:  = Me.Value
  loc_A90DDD: FLdRfVar var_390
  loc_A90DE0: ConcatVar var_3A0
  loc_A90DE4: LitVarStr var_3B0, "|"
  loc_A90DE9: ConcatVar var_3C0
  loc_A90DED: FLdRfVar var_3E8
  loc_A90DF0: FLdRfVar var_3D8
  loc_A90DF3: LitVarStr var_3D4, "SaldoFinal"
  loc_A90DF8: PopAdLdVar
  loc_A90DF9: FLdRfVar var_3C4
  loc_A90DFC: FLdPr var_B4
  loc_A90DFF:  = Me.Fields
  loc_A90E04: FLdPr var_3C4
  loc_A90E07: from_stack_2 = Me.Item(from_stack_1)
  loc_A90E0C: FLdPr var_3D8
  loc_A90E0F:  = Me.Value
  loc_A90E14: FLdRfVar var_3E8
  loc_A90E17: ConcatVar var_3F8
  loc_A90E1B: PopAdLdVar
  loc_A90E1C: FLdPr Me
  loc_A90E1F: MemLdRfVar from_stack_1.txtFile
  loc_A90E22: LdPrVar
  loc_A90E24: LateMemCall
  loc_A90E2A: FFreeStr var_90 = ""
  loc_A90E31: FFreeAd var_8C = "": var_BC = "": var_104 = "": var_118 = "": var_15C = "": var_170 = "": var_1B4 = "": var_1C8 = "": var_20C = "": var_220 = "": var_264 = "": var_278 = "": var_2BC = "": var_2D0 = "": var_314 = "": var_328 = "": var_36C = "": var_380 = "": var_3C4 = ""
  loc_A90E5C: FFreeVar var_DC = "": var_A0 = "": var_F0 = "": var_100 = "": var_128 = "": var_138 = "": var_158 = "": var_180 = "": var_190 = "": var_1B0 = "": var_1D8 = "": var_1E8 = "": var_208 = "": var_230 = "": var_240 = "": var_260 = "": var_288 = "": var_298 = "": var_2B8 = "": var_2E0 = "": var_2F0 = "": var_310 = "": var_338 = "": var_348 = "": var_368 = "": var_390 = "": var_3A0 = "": var_3C0 = "": var_3E8 = ""
  loc_A90E9B: FLdPr Me
  loc_A90E9E: MemLdRfVar from_stack_1.global_88
  loc_A90EA1: NewIfNullPr clsbase
  loc_A90EA4: Call clsbase.MoveSiguiente()
  loc_A90EA9: Branch loc_A90EBA
  loc_A90EAC: FLdPr Me
  loc_A90EAF: MemLdRfVar from_stack_1.global_88
  loc_A90EB2: NewIfNullPr clsbase
  loc_A90EB5: Call clsbase.MoveSiguiente()
  loc_A90EBA: Branch loc_A90B8F
  loc_A90EBD: LitNothing
  loc_A90EBF: FStAd var_B4 
  loc_A90EC3: FLdPr Me
  loc_A90EC6: MemLdRfVar from_stack_1.txtFile
  loc_A90EC9: LdPrVar
  loc_A90ECB: LateMemCall
  loc_A90ED1: ExitProcHresult
  loc_A90ED2: CRec2Uni arg_6000
End Sub

Public Sub HabilitarCriterio() '984754
  'Data Table: 451FD8
  loc_984720: LitI4 0
  loc_984725: LitI4 0
  loc_98472A: FLdRfVar var_88
  loc_98472D: Redim
  loc_984737: FLdPr Me
  loc_98473A: VCallAd Control_ID_cboPeriodo
  loc_98473D: CVarAd
  loc_984741: ParmAry1St
  loc_984747: FLdRfVar var_88
  loc_98474A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_98474F: FLdRfVar var_88
  loc_984752: Erase
  loc_984753: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A8A7B0
  'Data Table: 451FD8
  loc_A8A374: FLdPr Me
  loc_A8A377: MemLdI2 bGenerado
  loc_A8A37A: BranchF loc_A8A37E
  loc_A8A37D: ExitProcHresult
  loc_A8A37E: LitVarStr var_94, "Generando reporte..."
  loc_A8A383: PopAdLdVar
  loc_A8A384: FLdPr Me
  loc_A8A387: VCallAd Control_ID_statusBar
  loc_A8A38A: FStAdFunc var_A8
  loc_A8A38D: FLdPr var_A8
  loc_A8A390: LateIdSt
  loc_A8A395: FFree1Ad var_A8
  loc_A8A398: LitI4 &HB
  loc_A8A39D: CI2I4
  loc_A8A39E: FLdPr Me
  loc_A8A3A1: Me.MousePointer = from_stack_1
  loc_A8A3A6: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_A8A3A9: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_A8A3AC: ConcatStr
  loc_A8A3AD: FStStrNoPop var_AC
  loc_A8A3B0: LitStr " eriInfo` YEAR(4) NOT NULL DEFAULT '0000',"
  loc_A8A3B3: ConcatStr
  loc_A8A3B4: FStStrNoPop var_B0
  loc_A8A3B7: LitStr " codicuco` VARCHAR(12) NOT NULL DEFAULT '',"
  loc_A8A3BA: ConcatStr
  loc_A8A3BB: FStStrNoPop var_B4
  loc_A8A3BE: LitStr " detacuco` VARCHAR(200) NOT NULL DEFAULT '',"
  loc_A8A3C1: ConcatStr
  loc_A8A3C2: FStStrNoPop var_B8
  loc_A8A3C5: LitStr " aldoinicial` DECIMAL(15,2) NOT NULL DEFAULT '0.00',"
  loc_A8A3C8: ConcatStr
  loc_A8A3C9: FStStrNoPop var_BC
  loc_A8A3CC: LitStr " odiCuco` VARCHAR(12) NOT NULL DEFAULT '',"
  loc_A8A3CF: ConcatStr
  loc_A8A3D0: FStStrNoPop var_C0
  loc_A8A3D3: LitStr " etaCuco` VARCHAR(200) NOT NULL DEFAULT '',"
  loc_A8A3D6: ConcatStr
  loc_A8A3D7: FStStrNoPop var_C4
  loc_A8A3DA: LitStr " ltas` DECIMAL(15,2) NOT NULL DEFAULT '0.00',"
  loc_A8A3DD: ConcatStr
  loc_A8A3DE: FStStrNoPop var_C8
  loc_A8A3E1: LitStr " ajas` DECIMAL(15,2) NOT NULL DEFAULT '0.00',"
  loc_A8A3E4: ConcatStr
  loc_A8A3E5: FStStrNoPop var_CC
  loc_A8A3E8: LitStr " aldofinal` DECIMAL(15,2) NOT NULL DEFAULT '0.00'"
  loc_A8A3EB: ConcatStr
  loc_A8A3EC: FStStrNoPop var_D0
  loc_A8A3EF: LitStr " );"
  loc_A8A3F2: ConcatStr
  loc_A8A3F3: FStStrNoPop var_D4
  loc_A8A3F6: FLdPr Me
  loc_A8A3F9: MemLdRfVar from_stack_1.global_88
  loc_A8A3FC: NewIfNullPr clsbase
  loc_A8A3FF: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A404: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A8A41D: LitStr "DROP TEMPORARY TABLE IF EXISTS ttemp;"
  loc_A8A420: LitStr " CREATE TEMPORARY TABLE ttemp"
  loc_A8A423: ConcatStr
  loc_A8A424: FStStrNoPop var_AC
  loc_A8A427: LitStr " SELECT cc.PeriInfo, a.CodiAsie, a.CodiTias"
  loc_A8A42A: ConcatStr
  loc_A8A42B: FStStrNoPop var_B0
  loc_A8A42E: LitStr " FROM infogov.cuentacontable cc"
  loc_A8A431: ConcatStr
  loc_A8A432: FStStrNoPop var_B4
  loc_A8A435: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = cc.PeriInfo AND CaerPaco != cc.CodiCuco AND CarePaco != cc.CodiCuco /*AND ReejPaco != cc.CodiCuco*/"
  loc_A8A438: ConcatStr
  loc_A8A439: FStStrNoPop var_B8
  loc_A8A43C: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = cc.PeriInfo AND mv.CodiCuco = cc.CodiCuco"
  loc_A8A43F: ConcatStr
  loc_A8A440: FStStrNoPop var_BC
  loc_A8A443: LitStr " INNER JOIN asiento a ON a.PeriInfo = mv.PeriInfo AND a.CodiAsie = mv.CodiAsie"
  loc_A8A446: ConcatStr
  loc_A8A447: FStStrNoPop var_C0
  loc_A8A44A: LitStr " AND a.CodiTias != 25"
  loc_A8A44D: ConcatStr
  loc_A8A44E: FStStrNoPop var_C4
  loc_A8A451: LitStr " WHERE cc.PeriInfo = "
  loc_A8A454: ConcatStr
  loc_A8A455: FStStrNoPop var_CC
  loc_A8A458: FLdRfVar var_C8
  loc_A8A45B: FLdPr Me
  loc_A8A45E: VCallAd Control_ID_cboPeriodo
  loc_A8A461: FStAdFunc var_A8
  loc_A8A464: FLdPr var_A8
  loc_A8A467:  = Me.Text
  loc_A8A46C: ILdRf var_C8
  loc_A8A46F: ConcatStr
  loc_A8A470: FStStrNoPop var_D0
  loc_A8A473: LitStr " AND ImpuCuco = 1 AND CodiTicu LIKE '3" & Chr(37) & "'"
  loc_A8A476: ConcatStr
  loc_A8A477: FStStrNoPop var_D4
  loc_A8A47A: LitStr " GROUP BY CodiAsie;"
  loc_A8A47D: ConcatStr
  loc_A8A47E: FStStrNoPop var_D8
  loc_A8A481: FLdPr Me
  loc_A8A484: MemLdRfVar from_stack_1.global_88
  loc_A8A487: NewIfNullPr clsbase
  loc_A8A48A: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A48F: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_CC = "": var_C8 = "": var_D0 = "": var_D4 = ""
  loc_A8A4AA: FFree1Ad var_A8
  loc_A8A4AD: LitStr "Municipalidad de Guaymallén"
  loc_A8A4B0: LitStr "Municipalidad de Maipú"
  loc_A8A4B3: NeStr
  loc_A8A4B5: BranchF loc_A8A50E
  loc_A8A4B8: LitStr "INSERT INTO tmovi (PeriInfo,tcodicuco,tdetacuco,saldoinicial)"
  loc_A8A4BB: LitStr " SELECT ttemp.PeriInfo, cc.CodiCuco, DetaCuco, SUM(HabeMoas)-SUM(DebeMoas)"
  loc_A8A4BE: ConcatStr
  loc_A8A4BF: FStStrNoPop var_AC
  loc_A8A4C2: LitStr " FROM ttemp"
  loc_A8A4C5: ConcatStr
  loc_A8A4C6: FStStrNoPop var_B0
  loc_A8A4C9: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = ttemp.PeriInfo AND mv.CodiAsie = ttemp.CodiAsie"
  loc_A8A4CC: ConcatStr
  loc_A8A4CD: FStStrNoPop var_B4
  loc_A8A4D0: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND CodiTicu LIKE '3" & Chr(37) & "'"
  loc_A8A4D3: ConcatStr
  loc_A8A4D4: FStStrNoPop var_B8
  loc_A8A4D7: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = cc.PeriInfo AND CaerPaco != cc.CodiCuco AND CarePaco != cc.CodiCuco AND ReejPaco != cc.CodiCuco"
  loc_A8A4DA: ConcatStr
  loc_A8A4DB: FStStrNoPop var_BC
  loc_A8A4DE: LitStr " WHERE ttemp.CodiTias IN (17,18,28)"
  loc_A8A4E1: ConcatStr
  loc_A8A4E2: FStStrNoPop var_C0
  loc_A8A4E5: LitStr " GROUP BY CodiCuco;"
  loc_A8A4E8: ConcatStr
  loc_A8A4E9: FStStrNoPop var_C4
  loc_A8A4EC: FLdPr Me
  loc_A8A4EF: MemLdRfVar from_stack_1.global_88
  loc_A8A4F2: NewIfNullPr clsbase
  loc_A8A4F5: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A4FA: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A8A50B: Branch loc_A8A5BD
  loc_A8A50E: LitStr "INSERT INTO tmovi (PeriInfo,tcodicuco,tdetacuco,saldoinicial)"
  loc_A8A511: LitStr " SELECT ttemp.PeriInfo, cc.CodiCuco, DetaCuco, SUM(HabeMoas)-SUM(DebeMoas)"
  loc_A8A514: ConcatStr
  loc_A8A515: FStStrNoPop var_AC
  loc_A8A518: LitStr " FROM ttemp"
  loc_A8A51B: ConcatStr
  loc_A8A51C: FStStrNoPop var_B0
  loc_A8A51F: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = ttemp.PeriInfo AND mv.CodiAsie = ttemp.CodiAsie"
  loc_A8A522: ConcatStr
  loc_A8A523: FStStrNoPop var_B4
  loc_A8A526: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND CodiTicu LIKE '3" & Chr(37) & "'"
  loc_A8A529: ConcatStr
  loc_A8A52A: FStStrNoPop var_B8
  loc_A8A52D: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = cc.PeriInfo AND CaerPaco != cc.CodiCuco AND CarePaco != cc.CodiCuco AND ReejPaco != cc.CodiCuco"
  loc_A8A530: ConcatStr
  loc_A8A531: FStStrNoPop var_BC
  loc_A8A534: LitStr " INNER JOIN paraconta pc1 ON pc1.PeriInfo = cc.PeriInfo-1 AND pc1.ReejPaco != cc.CodiCuco"
  loc_A8A537: ConcatStr
  loc_A8A538: FStStrNoPop var_C0
  loc_A8A53B: LitStr " WHERE ttemp.CodiTias IN (17,18,28)"
  loc_A8A53E: ConcatStr
  loc_A8A53F: FStStrNoPop var_C4
  loc_A8A542: LitStr " GROUP BY CodiCuco;"
  loc_A8A545: ConcatStr
  loc_A8A546: FStStrNoPop var_C8
  loc_A8A549: FLdPr Me
  loc_A8A54C: MemLdRfVar from_stack_1.global_88
  loc_A8A54F: NewIfNullPr clsbase
  loc_A8A552: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A557: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_A8A56A: LitStr "INSERT INTO tmovi (PeriInfo,tcodicuco,tdetacuco,saldoinicial)"
  loc_A8A56D: LitStr " SELECT ttemp.PeriInfo, cc.CodiCuco, DetaCuco, SUM(HabeMoas)-SUM(DebeMoas)"
  loc_A8A570: ConcatStr
  loc_A8A571: FStStrNoPop var_AC
  loc_A8A574: LitStr " FROM ttemp"
  loc_A8A577: ConcatStr
  loc_A8A578: FStStrNoPop var_B0
  loc_A8A57B: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = ttemp.PeriInfo AND mv.CodiAsie = ttemp.CodiAsie"
  loc_A8A57E: ConcatStr
  loc_A8A57F: FStStrNoPop var_B4
  loc_A8A582: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND CodiTicu LIKE '3" & Chr(37) & "'"
  loc_A8A585: ConcatStr
  loc_A8A586: FStStrNoPop var_B8
  loc_A8A589: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = cc.PeriInfo-1 AND ReejPaco = cc.CodiCuco"
  loc_A8A58C: ConcatStr
  loc_A8A58D: FStStrNoPop var_BC
  loc_A8A590: LitStr " WHERE ttemp.CodiTias IN (18)"
  loc_A8A593: ConcatStr
  loc_A8A594: FStStrNoPop var_C0
  loc_A8A597: LitStr " GROUP BY CodiCuco;"
  loc_A8A59A: ConcatStr
  loc_A8A59B: FStStrNoPop var_C4
  loc_A8A59E: FLdPr Me
  loc_A8A5A1: MemLdRfVar from_stack_1.global_88
  loc_A8A5A4: NewIfNullPr clsbase
  loc_A8A5A7: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A5AC: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A8A5BD: LitStr "INSERT INTO tmovi (PeriInfo,tcodicuco,tdetacuco,saldofinal)"
  loc_A8A5C0: LitStr " SELECT ttemp.PeriInfo, cc.CodiCuco, DetaCuco, SUM(HabeMoas)-SUM(DebeMoas)"
  loc_A8A5C3: ConcatStr
  loc_A8A5C4: FStStrNoPop var_AC
  loc_A8A5C7: LitStr " FROM ttemp"
  loc_A8A5CA: ConcatStr
  loc_A8A5CB: FStStrNoPop var_B0
  loc_A8A5CE: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = ttemp.PeriInfo AND mv.CodiAsie = ttemp.CodiAsie"
  loc_A8A5D1: ConcatStr
  loc_A8A5D2: FStStrNoPop var_B4
  loc_A8A5D5: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND CodiTicu LIKE '3" & Chr(37) & "'"
  loc_A8A5D8: ConcatStr
  loc_A8A5D9: FStStrNoPop var_B8
  loc_A8A5DC: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = cc.PeriInfo AND CaerPaco != cc.CodiCuco AND CarePaco != cc.CodiCuco /*AND ReejPaco != cc.CodiCuco*/"
  loc_A8A5DF: ConcatStr
  loc_A8A5E0: FStStrNoPop var_BC
  loc_A8A5E3: LitStr " WHERE ttemp.CodiTias NOT IN (25)"
  loc_A8A5E6: ConcatStr
  loc_A8A5E7: FStStrNoPop var_C0
  loc_A8A5EA: LitStr " GROUP BY CodiCuco;"
  loc_A8A5ED: ConcatStr
  loc_A8A5EE: FStStrNoPop var_C4
  loc_A8A5F1: FLdPr Me
  loc_A8A5F4: MemLdRfVar from_stack_1.global_88
  loc_A8A5F7: NewIfNullPr clsbase
  loc_A8A5FA: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A5FF: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A8A610: LitStr "INSERT INTO tmovi (PeriInfo,CodiCuco,DetaCuco,altas,bajas)"
  loc_A8A613: LitStr " SELECT ttemp.PeriInfo, cc.CodiCuco, DetaCuco, SUM(DebeMoas), SUM(HabeMoas)"
  loc_A8A616: ConcatStr
  loc_A8A617: FStStrNoPop var_AC
  loc_A8A61A: LitStr " FROM ttemp"
  loc_A8A61D: ConcatStr
  loc_A8A61E: FStStrNoPop var_B0
  loc_A8A621: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = ttemp.PeriInfo AND mv.CodiAsie = ttemp.CodiAsie"
  loc_A8A624: ConcatStr
  loc_A8A625: FStStrNoPop var_B4
  loc_A8A628: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND CodiTicu NOT LIKE '3" & Chr(37) & "'"
  loc_A8A62B: ConcatStr
  loc_A8A62C: FStStrNoPop var_B8
  loc_A8A62F: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = cc.PeriInfo AND CaerPaco != cc.CodiCuco AND CarePaco != cc.CodiCuco /*AND ReejPaco != cc.CodiCuco*/"
  loc_A8A632: ConcatStr
  loc_A8A633: FStStrNoPop var_BC
  loc_A8A636: LitStr " WHERE ttemp.CodiTias NOT IN (17,18,25,27)"
  loc_A8A639: ConcatStr
  loc_A8A63A: FStStrNoPop var_C0
  loc_A8A63D: LitStr " GROUP BY CodiCuco;"
  loc_A8A640: ConcatStr
  loc_A8A641: FStStrNoPop var_C4
  loc_A8A644: FLdPr Me
  loc_A8A647: MemLdRfVar from_stack_1.global_88
  loc_A8A64A: NewIfNullPr clsbase
  loc_A8A64D: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A652: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A8A663: LitStr "INSERT INTO tmovi (PeriInfo,CodiCuco,DetaCuco,altas,bajas)"
  loc_A8A666: LitStr " SELECT pc.PeriInfo, mv.CodiCuco, DetaCuco, SUM(DebeMoas), SUM(HabeMoas)"
  loc_A8A669: ConcatStr
  loc_A8A66A: FStStrNoPop var_AC
  loc_A8A66D: LitStr " FROM paraconta pc"
  loc_A8A670: ConcatStr
  loc_A8A671: FStStrNoPop var_B0
  loc_A8A674: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = pc.PeriInfo AND (mv.CodiCuco = CarePaco OR mv.CodiCuco = CaerPaco)"
  loc_A8A677: ConcatStr
  loc_A8A678: FStStrNoPop var_B4
  loc_A8A67B: LitStr " INNER JOIN asiento a ON a.PeriInfo = mv.PeriInfo AND a.CodiAsie = mv.CodiAsie AND CodiTias NOT IN (16)"
  loc_A8A67E: ConcatStr
  loc_A8A67F: FStStrNoPop var_B8
  loc_A8A682: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A8A685: ConcatStr
  loc_A8A686: FStStrNoPop var_BC
  loc_A8A689: LitStr " WHERE pc.PeriInfo = "
  loc_A8A68C: ConcatStr
  loc_A8A68D: FStStrNoPop var_C4
  loc_A8A690: FLdRfVar var_C0
  loc_A8A693: FLdPr Me
  loc_A8A696: VCallAd Control_ID_cboPeriodo
  loc_A8A699: FStAdFunc var_A8
  loc_A8A69C: FLdPr var_A8
  loc_A8A69F:  = Me.Text
  loc_A8A6A4: ILdRf var_C0
  loc_A8A6A7: ConcatStr
  loc_A8A6A8: FStStrNoPop var_C8
  loc_A8A6AB: LitStr " GROUP BY CodiCuco;"
  loc_A8A6AE: ConcatStr
  loc_A8A6AF: FStStrNoPop var_CC
  loc_A8A6B2: FLdPr Me
  loc_A8A6B5: MemLdRfVar from_stack_1.global_88
  loc_A8A6B8: NewIfNullPr clsbase
  loc_A8A6BB: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A6C0: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = ""
  loc_A8A6D5: FFree1Ad var_A8
  loc_A8A6D8: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi2;"
  loc_A8A6DB: LitStr " CREATE TEMPORARY TABLE tmovi2"
  loc_A8A6DE: ConcatStr
  loc_A8A6DF: FStStrNoPop var_AC
  loc_A8A6E2: LitStr " SELECT * FROM tmovi;"
  loc_A8A6E5: ConcatStr
  loc_A8A6E6: FStStrNoPop var_B0
  loc_A8A6E9: FLdPr Me
  loc_A8A6EC: MemLdRfVar from_stack_1.global_88
  loc_A8A6EF: NewIfNullPr clsbase
  loc_A8A6F2: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A6F7: FFreeStr var_AC = ""
  loc_A8A6FE: LitStr "INSERT INTO tmovi (PeriInfo,tcodicuco,tdetacuco,saldoinicial,CodiCuco,DetaCuco,altas,bajas,saldofinal)"
  loc_A8A701: LitStr " SELECT PeriInfo, '', 'TOTALES', SUM(saldoinicial) saldoinicial, '', '', SUM(altas) altas, SUM(bajas) bajas, SUM(saldofinal) saldofinal"
  loc_A8A704: ConcatStr
  loc_A8A705: FStStrNoPop var_AC
  loc_A8A708: LitStr " FROM tmovi2"
  loc_A8A70B: ConcatStr
  loc_A8A70C: FStStrNoPop var_B0
  loc_A8A70F: FLdPr Me
  loc_A8A712: MemLdRfVar from_stack_1.global_88
  loc_A8A715: NewIfNullPr clsbase
  loc_A8A718: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A71D: FFreeStr var_AC = ""
  loc_A8A724: LitStr "SELECT PeriInfo, IF(tcodicuco!='' AND CodiCuco='', 1, if(CodiCuco!='' and tcodicuco='',2,3) ) orden, tcodicuco, tdetacuco, SUM(saldoinicial) saldoinicial, CodiCuco, DetaCuco, SUM(altas) altas, SUM(bajas) bajas, SUM(saldofinal) saldofinal"
  loc_A8A727: LitStr " FROM tmovi"
  loc_A8A72A: ConcatStr
  loc_A8A72B: FStStrNoPop var_AC
  loc_A8A72E: LitStr " GROUP BY tcodicuco, CodiCuco"
  loc_A8A731: ConcatStr
  loc_A8A732: FStStrNoPop var_B0
  loc_A8A735: LitStr " ORDER BY orden, tcodicuco, CodiCuco;"
  loc_A8A738: ConcatStr
  loc_A8A739: FStStrNoPop var_B4
  loc_A8A73C: FLdPr Me
  loc_A8A73F: MemLdRfVar from_stack_1.global_88
  loc_A8A742: NewIfNullPr clsbase
  loc_A8A745: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8A74A: FFreeStr var_AC = "": var_B0 = ""
  loc_A8A753: FLdRfVar var_DC
  loc_A8A756: FLdPr Me
  loc_A8A759: MemLdRfVar from_stack_1.global_88
  loc_A8A75C: NewIfNullPr clsbase
  loc_A8A75F: from_stack_1 = clsbase.RecordCount
  loc_A8A764: ILdRf var_DC
  loc_A8A767: LitI4 1
  loc_A8A76C: LtI4
  loc_A8A76D: BranchF loc_A8A780
  loc_A8A770: LitI4 0
  loc_A8A775: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A8A778: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8A77D: Branch loc_A8A788
  loc_A8A780: LitI2_Byte &HFF
  loc_A8A782: FLdPr Me
  loc_A8A785: MemStI2 bGenerado
  loc_A8A788: LitI2_Byte 0
  loc_A8A78A: FLdPr Me
  loc_A8A78D: Me.MousePointer = from_stack_1
  loc_A8A792: LitVarStr var_94, vbNullString
  loc_A8A797: PopAdLdVar
  loc_A8A798: FLdPr Me
  loc_A8A79B: VCallAd Control_ID_statusBar
  loc_A8A79E: FStAdFunc var_A8
  loc_A8A7A1: FLdPr var_A8
  loc_A8A7A4: LateIdSt
  loc_A8A7A9: FFree1Ad var_A8
  loc_A8A7AC: ExitProcHresult
  loc_A8A7AD: CVarCy arg_39E
End Sub

Public Sub GeneraHTML() 'B98E74
  'Data Table: 451FD8
  loc_B97FCC: FLdRfVar var_8C
  loc_B97FCF: LitI2_Byte 0
  loc_B97FD1: LitI2_Byte &HFF
  loc_B97FD3: ImpAdLdI4 MemVar_C3D83C
  loc_B97FD6: FLdPr Me
  loc_B97FD9: MemLdRfVar from_stack_1.global_92
  loc_B97FDC: NewIfNullPr IFileSystem3
  loc_B97FDF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B97FE4: ILdRf var_8C
  loc_B97FE7: FLdPr Me
  loc_B97FEA: MemStVarAd
  loc_B97FEE: FFree1Ad var_8C
  loc_B97FF1: Call Proc_158_26_A7256C()
  loc_B97FF6: FLdRfVar var_8C
  loc_B97FF9: FLdPr Me
  loc_B97FFC: MemLdRfVar from_stack_1.global_88
  loc_B97FFF: NewIfNullPr clsbase
  loc_B98002: from_stack_1v = clsbase.RsFrmGet()
  loc_B98007: FLdZeroAd var_8C
  loc_B9800A: FStAdFunc var_90
  loc_B9800D: FLdPr Me
  loc_B98010: MemLdRfVar from_stack_1.global_88
  loc_B98013: NewIfNullPr clsbase
  loc_B98016: Call clsbase.MoveFirst()
  loc_B9801B: FLdRfVar var_92
  loc_B9801E: FLdPr Me
  loc_B98021: MemLdRfVar from_stack_1.global_88
  loc_B98024: NewIfNullPr clsbase
  loc_B98027: from_stack_1 = clsbase.EOF
  loc_B9802C: FLdI2 var_92
  loc_B9802F: NotI4
  loc_B98030: BranchF loc_B98E54
  loc_B98033: FLdRfVar var_B8
  loc_B98036: FLdRfVar var_A8
  loc_B98039: LitVarStr var_A4, "tdetacuco"
  loc_B9803E: PopAdLdVar
  loc_B9803F: FLdRfVar var_8C
  loc_B98042: FLdPr var_90
  loc_B98045:  = Me.Fields
  loc_B9804A: FLdPr var_8C
  loc_B9804D: from_stack_2 = Me.Item(from_stack_1)
  loc_B98052: FLdPr var_A8
  loc_B98055:  = Me.Value
  loc_B9805A: FLdRfVar var_B8
  loc_B9805D: LitVarStr var_C8, "TOTALES"
  loc_B98062: HardType
  loc_B98063: NeVarBool
  loc_B98065: FFreeAd var_8C = ""
  loc_B9806C: FFree1Var var_B8 = ""
  loc_B9806F: BranchF loc_B98740
  loc_B98072: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B98077: PopAdLdVar
  loc_B98078: FLdPr Me
  loc_B9807B: MemLdRfVar from_stack_1.htmFile
  loc_B9807E: LdPrVar
  loc_B98080: LateMemCall
  loc_B98086: FLdRfVar var_160
  loc_B98089: FLdRfVar var_A8
  loc_B9808C: LitVarStr var_A4, "tcodicuco"
  loc_B98091: PopAdLdVar
  loc_B98092: FLdRfVar var_8C
  loc_B98095: FLdPr var_90
  loc_B98098:  = Me.Fields
  loc_B9809D: FLdPr var_8C
  loc_B980A0: from_stack_2 = Me.Item(from_stack_1)
  loc_B980A5: FLdPr var_A8
  loc_B980A8:  = Me.Value
  loc_B980AD: FLdRfVar var_B8
  loc_B980B0: FLdRfVar var_E0
  loc_B980B3: LitVarStr var_C8, "tcodicuco"
  loc_B980B8: PopAdLdVar
  loc_B980B9: FLdRfVar var_DC
  loc_B980BC: FLdPr var_90
  loc_B980BF:  = Me.Fields
  loc_B980C4: FLdPr var_DC
  loc_B980C7: from_stack_2 = Me.Item(from_stack_1)
  loc_B980CC: FLdPr var_E0
  loc_B980CF:  = Me.Value
  loc_B980D4: LitVarStr var_130, vbNullString
  loc_B980D9: FStVarCopyObj var_140
  loc_B980DC: FLdRfVar var_140
  loc_B980DF: LitVarStr var_110, " - "
  loc_B980E4: FStVarCopyObj var_120
  loc_B980E7: FLdRfVar var_120
  loc_B980EA: FLdRfVar var_B8
  loc_B980ED: LitVarStr var_F0, vbNullString
  loc_B980F2: HardType
  loc_B980F3: NeVar var_D8
  loc_B980F7: FStVar var_100
  loc_B980FB: FLdRfVar var_100
  loc_B980FE: FLdRfVar var_150
  loc_B98101: ImpAdCallFPR4  = IIf(, , )
  loc_B98106: FLdRfVar var_198
  loc_B98109: FLdRfVar var_188
  loc_B9810C: LitVarStr var_184, "tdetacuco"
  loc_B98111: PopAdLdVar
  loc_B98112: FLdRfVar var_174
  loc_B98115: FLdPr var_90
  loc_B98118:  = Me.Fields
  loc_B9811D: FLdPr var_174
  loc_B98120: from_stack_2 = Me.Item(from_stack_1)
  loc_B98125: FLdPr var_188
  loc_B98128:  = Me.Value
  loc_B9812D: LitI4 0
  loc_B98132: LitStr "LineaDato"
  loc_B98135: LitI2_Byte 0
  loc_B98137: LitStr "left"
  loc_B9813A: FLdRfVar var_160
  loc_B9813D: FLdRfVar var_150
  loc_B98140: ConcatVar var_170
  loc_B98144: FLdRfVar var_198
  loc_B98147: ConcatVar var_1A8
  loc_B9814B: CStrVarVal var_1AC
  loc_B9814F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B98154: CVarStr var_1BC
  loc_B98157: PopAdLdVar
  loc_B98158: FLdPr Me
  loc_B9815B: MemLdRfVar from_stack_1.htmFile
  loc_B9815E: LdPrVar
  loc_B98160: LateMemCall
  loc_B98166: FFree1Str var_1AC
  loc_B98169: FFreeAd var_8C = "": var_DC = "": var_E0 = "": var_A8 = "": var_174 = ""
  loc_B98178: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_150 = "": var_170 = "": var_198 = "": var_1A8 = ""
  loc_B9818F: FLdRfVar var_B8
  loc_B98192: FLdRfVar var_A8
  loc_B98195: LitVarStr var_A4, "SaldoInicial"
  loc_B9819A: PopAdLdVar
  loc_B9819B: FLdRfVar var_8C
  loc_B9819E: FLdPr var_90
  loc_B981A1:  = Me.Fields
  loc_B981A6: FLdPr var_8C
  loc_B981A9: from_stack_2 = Me.Item(from_stack_1)
  loc_B981AE: FLdPr var_A8
  loc_B981B1:  = Me.Value
  loc_B981B6: FLdRfVar var_E0
  loc_B981B9: LitVarStr var_F0, "SaldoInicial"
  loc_B981BE: PopAdLdVar
  loc_B981BF: FLdRfVar var_DC
  loc_B981C2: FLdPr var_90
  loc_B981C5:  = Me.Fields
  loc_B981CA: FLdPr var_DC
  loc_B981CD: from_stack_2 = Me.Item(from_stack_1)
  loc_B981D2: LitI4 1
  loc_B981D7: LitI4 1
  loc_B981DC: LitVarStr var_110, "###,###,##0.00"
  loc_B981E1: FStVarCopyObj var_120
  loc_B981E4: FLdRfVar var_120
  loc_B981E7: FLdZeroAd var_E0
  loc_B981EA: CVarAd
  loc_B981EE: ImpAdCallI2 Format$(, )
  loc_B981F3: FStStr var_1D0
  loc_B981F6: LitVarStr var_130, "&nbsp;"
  loc_B981FB: FStVarCopyObj var_160
  loc_B981FE: FLdRfVar var_160
  loc_B98201: FLdZeroAd var_1D0
  loc_B98204: CVarStr var_150
  loc_B98207: FLdRfVar var_B8
  loc_B9820A: LitVarStr var_C8, "0"
  loc_B9820F: HardType
  loc_B98210: NeVar var_D8
  loc_B98214: FStVar var_140
  loc_B98218: FLdRfVar var_140
  loc_B9821B: FLdRfVar var_170
  loc_B9821E: ImpAdCallFPR4  = IIf(, , )
  loc_B98223: LitI4 0
  loc_B98228: LitStr "LineaDato"
  loc_B9822B: LitI2_Byte 0
  loc_B9822D: LitStr "right"
  loc_B98230: FLdRfVar var_170
  loc_B98233: CStrVarVal var_1AC
  loc_B98237: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9823C: CVarStr var_198
  loc_B9823F: PopAdLdVar
  loc_B98240: FLdPr Me
  loc_B98243: MemLdRfVar from_stack_1.htmFile
  loc_B98246: LdPrVar
  loc_B98248: LateMemCall
  loc_B9824E: FFreeStr var_1AC = ""
  loc_B98255: FFreeAd var_8C = "": var_A8 = ""
  loc_B9825E: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = ""
  loc_B98271: FLdRfVar var_160
  loc_B98274: FLdRfVar var_A8
  loc_B98277: LitVarStr var_A4, "CodiCuco"
  loc_B9827C: PopAdLdVar
  loc_B9827D: FLdRfVar var_8C
  loc_B98280: FLdPr var_90
  loc_B98283:  = Me.Fields
  loc_B98288: FLdPr var_8C
  loc_B9828B: from_stack_2 = Me.Item(from_stack_1)
  loc_B98290: FLdPr var_A8
  loc_B98293:  = Me.Value
  loc_B98298: FLdRfVar var_B8
  loc_B9829B: FLdRfVar var_E0
  loc_B9829E: LitVarStr var_C8, "CodiCuco"
  loc_B982A3: PopAdLdVar
  loc_B982A4: FLdRfVar var_DC
  loc_B982A7: FLdPr var_90
  loc_B982AA:  = Me.Fields
  loc_B982AF: FLdPr var_DC
  loc_B982B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B982B7: FLdPr var_E0
  loc_B982BA:  = Me.Value
  loc_B982BF: LitVarStr var_130, vbNullString
  loc_B982C4: FStVarCopyObj var_140
  loc_B982C7: FLdRfVar var_140
  loc_B982CA: LitVarStr var_110, " - "
  loc_B982CF: FStVarCopyObj var_120
  loc_B982D2: FLdRfVar var_120
  loc_B982D5: FLdRfVar var_B8
  loc_B982D8: LitVarStr var_F0, vbNullString
  loc_B982DD: HardType
  loc_B982DE: NeVar var_D8
  loc_B982E2: FStVar var_100
  loc_B982E6: FLdRfVar var_100
  loc_B982E9: FLdRfVar var_150
  loc_B982EC: ImpAdCallFPR4  = IIf(, , )
  loc_B982F1: FLdRfVar var_198
  loc_B982F4: FLdRfVar var_188
  loc_B982F7: LitVarStr var_184, "DetaCuco"
  loc_B982FC: PopAdLdVar
  loc_B982FD: FLdRfVar var_174
  loc_B98300: FLdPr var_90
  loc_B98303:  = Me.Fields
  loc_B98308: FLdPr var_174
  loc_B9830B: from_stack_2 = Me.Item(from_stack_1)
  loc_B98310: FLdPr var_188
  loc_B98313:  = Me.Value
  loc_B98318: LitI4 0
  loc_B9831D: LitStr "LineaDato"
  loc_B98320: LitI2_Byte 0
  loc_B98322: LitStr "left"
  loc_B98325: FLdRfVar var_160
  loc_B98328: FLdRfVar var_150
  loc_B9832B: ConcatVar var_170
  loc_B9832F: FLdRfVar var_198
  loc_B98332: ConcatVar var_1A8
  loc_B98336: CStrVarVal var_1AC
  loc_B9833A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9833F: CVarStr var_1BC
  loc_B98342: PopAdLdVar
  loc_B98343: FLdPr Me
  loc_B98346: MemLdRfVar from_stack_1.htmFile
  loc_B98349: LdPrVar
  loc_B9834B: LateMemCall
  loc_B98351: FFree1Str var_1AC
  loc_B98354: FFreeAd var_8C = "": var_DC = "": var_E0 = "": var_A8 = "": var_174 = ""
  loc_B98363: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_150 = "": var_170 = "": var_198 = "": var_1A8 = ""
  loc_B9837A: FLdRfVar var_B8
  loc_B9837D: FLdRfVar var_A8
  loc_B98380: LitVarStr var_A4, "altas"
  loc_B98385: PopAdLdVar
  loc_B98386: FLdRfVar var_8C
  loc_B98389: FLdPr var_90
  loc_B9838C:  = Me.Fields
  loc_B98391: FLdPr var_8C
  loc_B98394: from_stack_2 = Me.Item(from_stack_1)
  loc_B98399: FLdPr var_A8
  loc_B9839C:  = Me.Value
  loc_B983A1: FLdRfVar var_E0
  loc_B983A4: LitVarStr var_F0, "altas"
  loc_B983A9: PopAdLdVar
  loc_B983AA: FLdRfVar var_DC
  loc_B983AD: FLdPr var_90
  loc_B983B0:  = Me.Fields
  loc_B983B5: FLdPr var_DC
  loc_B983B8: from_stack_2 = Me.Item(from_stack_1)
  loc_B983BD: LitI4 1
  loc_B983C2: LitI4 1
  loc_B983C7: LitVarStr var_110, "###,###,##0.00"
  loc_B983CC: FStVarCopyObj var_120
  loc_B983CF: FLdRfVar var_120
  loc_B983D2: FLdZeroAd var_E0
  loc_B983D5: CVarAd
  loc_B983D9: ImpAdCallI2 Format$(, )
  loc_B983DE: FStStr var_1D0
  loc_B983E1: LitVarStr var_130, "&nbsp;"
  loc_B983E6: FStVarCopyObj var_160
  loc_B983E9: FLdRfVar var_160
  loc_B983EC: FLdZeroAd var_1D0
  loc_B983EF: CVarStr var_150
  loc_B983F2: FLdRfVar var_B8
  loc_B983F5: LitVarStr var_C8, "0"
  loc_B983FA: HardType
  loc_B983FB: NeVar var_D8
  loc_B983FF: FStVar var_140
  loc_B98403: FLdRfVar var_140
  loc_B98406: FLdRfVar var_170
  loc_B98409: ImpAdCallFPR4  = IIf(, , )
  loc_B9840E: LitI4 0
  loc_B98413: LitStr "LineaDato"
  loc_B98416: LitI2_Byte 0
  loc_B98418: LitStr "right"
  loc_B9841B: FLdRfVar var_170
  loc_B9841E: CStrVarVal var_1AC
  loc_B98422: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B98427: CVarStr var_198
  loc_B9842A: PopAdLdVar
  loc_B9842B: FLdPr Me
  loc_B9842E: MemLdRfVar from_stack_1.htmFile
  loc_B98431: LdPrVar
  loc_B98433: LateMemCall
  loc_B98439: FFreeStr var_1AC = ""
  loc_B98440: FFreeAd var_8C = "": var_A8 = ""
  loc_B98449: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = ""
  loc_B9845C: FLdRfVar var_160
  loc_B9845F: FLdRfVar var_A8
  loc_B98462: LitVarStr var_A4, "CodiCuco"
  loc_B98467: PopAdLdVar
  loc_B98468: FLdRfVar var_8C
  loc_B9846B: FLdPr var_90
  loc_B9846E:  = Me.Fields
  loc_B98473: FLdPr var_8C
  loc_B98476: from_stack_2 = Me.Item(from_stack_1)
  loc_B9847B: FLdPr var_A8
  loc_B9847E:  = Me.Value
  loc_B98483: FLdRfVar var_B8
  loc_B98486: FLdRfVar var_E0
  loc_B98489: LitVarStr var_C8, "CodiCuco"
  loc_B9848E: PopAdLdVar
  loc_B9848F: FLdRfVar var_DC
  loc_B98492: FLdPr var_90
  loc_B98495:  = Me.Fields
  loc_B9849A: FLdPr var_DC
  loc_B9849D: from_stack_2 = Me.Item(from_stack_1)
  loc_B984A2: FLdPr var_E0
  loc_B984A5:  = Me.Value
  loc_B984AA: LitVarStr var_130, vbNullString
  loc_B984AF: FStVarCopyObj var_140
  loc_B984B2: FLdRfVar var_140
  loc_B984B5: LitVarStr var_110, " - "
  loc_B984BA: FStVarCopyObj var_120
  loc_B984BD: FLdRfVar var_120
  loc_B984C0: FLdRfVar var_B8
  loc_B984C3: LitVarStr var_F0, vbNullString
  loc_B984C8: HardType
  loc_B984C9: NeVar var_D8
  loc_B984CD: FStVar var_100
  loc_B984D1: FLdRfVar var_100
  loc_B984D4: FLdRfVar var_150
  loc_B984D7: ImpAdCallFPR4  = IIf(, , )
  loc_B984DC: FLdRfVar var_198
  loc_B984DF: FLdRfVar var_188
  loc_B984E2: LitVarStr var_184, "DetaCuco"
  loc_B984E7: PopAdLdVar
  loc_B984E8: FLdRfVar var_174
  loc_B984EB: FLdPr var_90
  loc_B984EE:  = Me.Fields
  loc_B984F3: FLdPr var_174
  loc_B984F6: from_stack_2 = Me.Item(from_stack_1)
  loc_B984FB: FLdPr var_188
  loc_B984FE:  = Me.Value
  loc_B98503: LitI4 0
  loc_B98508: LitStr "LineaDato"
  loc_B9850B: LitI2_Byte 0
  loc_B9850D: LitStr "left"
  loc_B98510: FLdRfVar var_160
  loc_B98513: FLdRfVar var_150
  loc_B98516: ConcatVar var_170
  loc_B9851A: FLdRfVar var_198
  loc_B9851D: ConcatVar var_1A8
  loc_B98521: CStrVarVal var_1AC
  loc_B98525: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9852A: CVarStr var_1BC
  loc_B9852D: PopAdLdVar
  loc_B9852E: FLdPr Me
  loc_B98531: MemLdRfVar from_stack_1.htmFile
  loc_B98534: LdPrVar
  loc_B98536: LateMemCall
  loc_B9853C: FFree1Str var_1AC
  loc_B9853F: FFreeAd var_8C = "": var_DC = "": var_E0 = "": var_A8 = "": var_174 = ""
  loc_B9854E: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_150 = "": var_170 = "": var_198 = "": var_1A8 = ""
  loc_B98565: FLdRfVar var_B8
  loc_B98568: FLdRfVar var_A8
  loc_B9856B: LitVarStr var_A4, "bajas"
  loc_B98570: PopAdLdVar
  loc_B98571: FLdRfVar var_8C
  loc_B98574: FLdPr var_90
  loc_B98577:  = Me.Fields
  loc_B9857C: FLdPr var_8C
  loc_B9857F: from_stack_2 = Me.Item(from_stack_1)
  loc_B98584: FLdPr var_A8
  loc_B98587:  = Me.Value
  loc_B9858C: FLdRfVar var_E0
  loc_B9858F: LitVarStr var_F0, "bajas"
  loc_B98594: PopAdLdVar
  loc_B98595: FLdRfVar var_DC
  loc_B98598: FLdPr var_90
  loc_B9859B:  = Me.Fields
  loc_B985A0: FLdPr var_DC
  loc_B985A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B985A8: LitI4 1
  loc_B985AD: LitI4 1
  loc_B985B2: LitVarStr var_110, "###,###,##0.00"
  loc_B985B7: FStVarCopyObj var_120
  loc_B985BA: FLdRfVar var_120
  loc_B985BD: FLdZeroAd var_E0
  loc_B985C0: CVarAd
  loc_B985C4: ImpAdCallI2 Format$(, )
  loc_B985C9: FStStr var_1D0
  loc_B985CC: LitVarStr var_130, "&nbsp;"
  loc_B985D1: FStVarCopyObj var_160
  loc_B985D4: FLdRfVar var_160
  loc_B985D7: FLdZeroAd var_1D0
  loc_B985DA: CVarStr var_150
  loc_B985DD: FLdRfVar var_B8
  loc_B985E0: LitVarStr var_C8, "0"
  loc_B985E5: HardType
  loc_B985E6: NeVar var_D8
  loc_B985EA: FStVar var_140
  loc_B985EE: FLdRfVar var_140
  loc_B985F1: FLdRfVar var_170
  loc_B985F4: ImpAdCallFPR4  = IIf(, , )
  loc_B985F9: LitI4 0
  loc_B985FE: LitStr "LineaDato"
  loc_B98601: LitI2_Byte 0
  loc_B98603: LitStr "right"
  loc_B98606: FLdRfVar var_170
  loc_B98609: CStrVarVal var_1AC
  loc_B9860D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B98612: CVarStr var_198
  loc_B98615: PopAdLdVar
  loc_B98616: FLdPr Me
  loc_B98619: MemLdRfVar from_stack_1.htmFile
  loc_B9861C: LdPrVar
  loc_B9861E: LateMemCall
  loc_B98624: FFreeStr var_1AC = ""
  loc_B9862B: FFreeAd var_8C = "": var_A8 = ""
  loc_B98634: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = ""
  loc_B98647: FLdRfVar var_B8
  loc_B9864A: FLdRfVar var_A8
  loc_B9864D: LitVarStr var_A4, "SaldoFinal"
  loc_B98652: PopAdLdVar
  loc_B98653: FLdRfVar var_8C
  loc_B98656: FLdPr var_90
  loc_B98659:  = Me.Fields
  loc_B9865E: FLdPr var_8C
  loc_B98661: from_stack_2 = Me.Item(from_stack_1)
  loc_B98666: FLdPr var_A8
  loc_B98669:  = Me.Value
  loc_B9866E: FLdRfVar var_E0
  loc_B98671: LitVarStr var_F0, "SaldoFinal"
  loc_B98676: PopAdLdVar
  loc_B98677: FLdRfVar var_DC
  loc_B9867A: FLdPr var_90
  loc_B9867D:  = Me.Fields
  loc_B98682: FLdPr var_DC
  loc_B98685: from_stack_2 = Me.Item(from_stack_1)
  loc_B9868A: LitI4 1
  loc_B9868F: LitI4 1
  loc_B98694: LitVarStr var_110, "###,###,##0.00"
  loc_B98699: FStVarCopyObj var_120
  loc_B9869C: FLdRfVar var_120
  loc_B9869F: FLdZeroAd var_E0
  loc_B986A2: CVarAd
  loc_B986A6: ImpAdCallI2 Format$(, )
  loc_B986AB: FStStr var_1D0
  loc_B986AE: LitVarStr var_130, "&nbsp;"
  loc_B986B3: FStVarCopyObj var_160
  loc_B986B6: FLdRfVar var_160
  loc_B986B9: FLdZeroAd var_1D0
  loc_B986BC: CVarStr var_150
  loc_B986BF: FLdRfVar var_B8
  loc_B986C2: LitVarStr var_C8, "0"
  loc_B986C7: HardType
  loc_B986C8: NeVar var_D8
  loc_B986CC: FStVar var_140
  loc_B986D0: FLdRfVar var_140
  loc_B986D3: FLdRfVar var_170
  loc_B986D6: ImpAdCallFPR4  = IIf(, , )
  loc_B986DB: LitI4 0
  loc_B986E0: LitStr "LineaDato"
  loc_B986E3: LitI2_Byte 0
  loc_B986E5: LitStr "right"
  loc_B986E8: FLdRfVar var_170
  loc_B986EB: CStrVarVal var_1AC
  loc_B986EF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B986F4: CVarStr var_198
  loc_B986F7: PopAdLdVar
  loc_B986F8: FLdPr Me
  loc_B986FB: MemLdRfVar from_stack_1.htmFile
  loc_B986FE: LdPrVar
  loc_B98700: LateMemCall
  loc_B98706: FFreeStr var_1AC = ""
  loc_B9870D: FFreeAd var_8C = "": var_A8 = ""
  loc_B98716: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = ""
  loc_B98729: LitVarStr var_A4, "     </tr>"
  loc_B9872E: PopAdLdVar
  loc_B9872F: FLdPr Me
  loc_B98732: MemLdRfVar from_stack_1.htmFile
  loc_B98735: LdPrVar
  loc_B98737: LateMemCall
  loc_B9873D: Branch loc_B98E0B
  loc_B98740: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B98745: PopAdLdVar
  loc_B98746: FLdPr Me
  loc_B98749: MemLdRfVar from_stack_1.htmFile
  loc_B9874C: LdPrVar
  loc_B9874E: LateMemCall
  loc_B98754: FLdRfVar var_160
  loc_B98757: FLdRfVar var_A8
  loc_B9875A: LitVarStr var_A4, "tcodicuco"
  loc_B9875F: PopAdLdVar
  loc_B98760: FLdRfVar var_8C
  loc_B98763: FLdPr var_90
  loc_B98766:  = Me.Fields
  loc_B9876B: FLdPr var_8C
  loc_B9876E: from_stack_2 = Me.Item(from_stack_1)
  loc_B98773: FLdPr var_A8
  loc_B98776:  = Me.Value
  loc_B9877B: FLdRfVar var_B8
  loc_B9877E: FLdRfVar var_E0
  loc_B98781: LitVarStr var_C8, "tcodicuco"
  loc_B98786: PopAdLdVar
  loc_B98787: FLdRfVar var_DC
  loc_B9878A: FLdPr var_90
  loc_B9878D:  = Me.Fields
  loc_B98792: FLdPr var_DC
  loc_B98795: from_stack_2 = Me.Item(from_stack_1)
  loc_B9879A: FLdPr var_E0
  loc_B9879D:  = Me.Value
  loc_B987A2: LitVarStr var_130, vbNullString
  loc_B987A7: FStVarCopyObj var_140
  loc_B987AA: FLdRfVar var_140
  loc_B987AD: LitVarStr var_110, " - "
  loc_B987B2: FStVarCopyObj var_120
  loc_B987B5: FLdRfVar var_120
  loc_B987B8: FLdRfVar var_B8
  loc_B987BB: LitVarStr var_F0, vbNullString
  loc_B987C0: HardType
  loc_B987C1: NeVar var_D8
  loc_B987C5: FStVar var_100
  loc_B987C9: FLdRfVar var_100
  loc_B987CC: FLdRfVar var_150
  loc_B987CF: ImpAdCallFPR4  = IIf(, , )
  loc_B987D4: FLdRfVar var_198
  loc_B987D7: FLdRfVar var_188
  loc_B987DA: LitVarStr var_184, "tdetacuco"
  loc_B987DF: PopAdLdVar
  loc_B987E0: FLdRfVar var_174
  loc_B987E3: FLdPr var_90
  loc_B987E6:  = Me.Fields
  loc_B987EB: FLdPr var_174
  loc_B987EE: from_stack_2 = Me.Item(from_stack_1)
  loc_B987F3: FLdPr var_188
  loc_B987F6:  = Me.Value
  loc_B987FB: LitI4 0
  loc_B98800: LitStr "Totales3"
  loc_B98803: LitI2_Byte 0
  loc_B98805: LitStr "left"
  loc_B98808: FLdRfVar var_160
  loc_B9880B: FLdRfVar var_150
  loc_B9880E: ConcatVar var_170
  loc_B98812: FLdRfVar var_198
  loc_B98815: ConcatVar var_1A8
  loc_B98819: CStrVarVal var_1AC
  loc_B9881D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B98822: CVarStr var_1BC
  loc_B98825: PopAdLdVar
  loc_B98826: FLdPr Me
  loc_B98829: MemLdRfVar from_stack_1.htmFile
  loc_B9882C: LdPrVar
  loc_B9882E: LateMemCall
  loc_B98834: FFree1Str var_1AC
  loc_B98837: FFreeAd var_8C = "": var_DC = "": var_E0 = "": var_A8 = "": var_174 = ""
  loc_B98846: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_150 = "": var_170 = "": var_198 = "": var_1A8 = ""
  loc_B9885D: FLdRfVar var_B8
  loc_B98860: FLdRfVar var_A8
  loc_B98863: LitVarStr var_A4, "SaldoInicial"
  loc_B98868: PopAdLdVar
  loc_B98869: FLdRfVar var_8C
  loc_B9886C: FLdPr var_90
  loc_B9886F:  = Me.Fields
  loc_B98874: FLdPr var_8C
  loc_B98877: from_stack_2 = Me.Item(from_stack_1)
  loc_B9887C: FLdPr var_A8
  loc_B9887F:  = Me.Value
  loc_B98884: FLdRfVar var_E0
  loc_B98887: LitVarStr var_F0, "SaldoInicial"
  loc_B9888C: PopAdLdVar
  loc_B9888D: FLdRfVar var_DC
  loc_B98890: FLdPr var_90
  loc_B98893:  = Me.Fields
  loc_B98898: FLdPr var_DC
  loc_B9889B: from_stack_2 = Me.Item(from_stack_1)
  loc_B988A0: LitI4 1
  loc_B988A5: LitI4 1
  loc_B988AA: LitVarStr var_110, "###,###,##0.00"
  loc_B988AF: FStVarCopyObj var_120
  loc_B988B2: FLdRfVar var_120
  loc_B988B5: FLdZeroAd var_E0
  loc_B988B8: CVarAd
  loc_B988BC: ImpAdCallI2 Format$(, )
  loc_B988C1: FStStr var_1D0
  loc_B988C4: LitVarStr var_130, "&nbsp;"
  loc_B988C9: FStVarCopyObj var_160
  loc_B988CC: FLdRfVar var_160
  loc_B988CF: FLdZeroAd var_1D0
  loc_B988D2: CVarStr var_150
  loc_B988D5: FLdRfVar var_B8
  loc_B988D8: LitVarStr var_C8, "0"
  loc_B988DD: HardType
  loc_B988DE: NeVar var_D8
  loc_B988E2: FStVar var_140
  loc_B988E6: FLdRfVar var_140
  loc_B988E9: FLdRfVar var_170
  loc_B988EC: ImpAdCallFPR4  = IIf(, , )
  loc_B988F1: LitI4 0
  loc_B988F6: LitStr "Totales3"
  loc_B988F9: LitI2_Byte 0
  loc_B988FB: LitStr "right"
  loc_B988FE: FLdRfVar var_170
  loc_B98901: CStrVarVal var_1AC
  loc_B98905: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9890A: CVarStr var_198
  loc_B9890D: PopAdLdVar
  loc_B9890E: FLdPr Me
  loc_B98911: MemLdRfVar from_stack_1.htmFile
  loc_B98914: LdPrVar
  loc_B98916: LateMemCall
  loc_B9891C: FFreeStr var_1AC = ""
  loc_B98923: FFreeAd var_8C = "": var_A8 = ""
  loc_B9892C: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = ""
  loc_B9893F: FLdRfVar var_160
  loc_B98942: FLdRfVar var_A8
  loc_B98945: LitVarStr var_A4, "CodiCuco"
  loc_B9894A: PopAdLdVar
  loc_B9894B: FLdRfVar var_8C
  loc_B9894E: FLdPr var_90
  loc_B98951:  = Me.Fields
  loc_B98956: FLdPr var_8C
  loc_B98959: from_stack_2 = Me.Item(from_stack_1)
  loc_B9895E: FLdPr var_A8
  loc_B98961:  = Me.Value
  loc_B98966: FLdRfVar var_B8
  loc_B98969: FLdRfVar var_E0
  loc_B9896C: LitVarStr var_C8, "CodiCuco"
  loc_B98971: PopAdLdVar
  loc_B98972: FLdRfVar var_DC
  loc_B98975: FLdPr var_90
  loc_B98978:  = Me.Fields
  loc_B9897D: FLdPr var_DC
  loc_B98980: from_stack_2 = Me.Item(from_stack_1)
  loc_B98985: FLdPr var_E0
  loc_B98988:  = Me.Value
  loc_B9898D: LitVarStr var_130, vbNullString
  loc_B98992: FStVarCopyObj var_140
  loc_B98995: FLdRfVar var_140
  loc_B98998: LitVarStr var_110, " - "
  loc_B9899D: FStVarCopyObj var_120
  loc_B989A0: FLdRfVar var_120
  loc_B989A3: FLdRfVar var_B8
  loc_B989A6: LitVarStr var_F0, vbNullString
  loc_B989AB: HardType
  loc_B989AC: NeVar var_D8
  loc_B989B0: FStVar var_100
  loc_B989B4: FLdRfVar var_100
  loc_B989B7: FLdRfVar var_150
  loc_B989BA: ImpAdCallFPR4  = IIf(, , )
  loc_B989BF: FLdRfVar var_198
  loc_B989C2: FLdRfVar var_188
  loc_B989C5: LitVarStr var_184, "DetaCuco"
  loc_B989CA: PopAdLdVar
  loc_B989CB: FLdRfVar var_174
  loc_B989CE: FLdPr var_90
  loc_B989D1:  = Me.Fields
  loc_B989D6: FLdPr var_174
  loc_B989D9: from_stack_2 = Me.Item(from_stack_1)
  loc_B989DE: FLdPr var_188
  loc_B989E1:  = Me.Value
  loc_B989E6: LitI4 0
  loc_B989EB: LitStr "Totales3"
  loc_B989EE: LitI2_Byte 0
  loc_B989F0: LitStr "left"
  loc_B989F3: FLdRfVar var_160
  loc_B989F6: FLdRfVar var_150
  loc_B989F9: ConcatVar var_170
  loc_B989FD: FLdRfVar var_198
  loc_B98A00: ConcatVar var_1A8
  loc_B98A04: CStrVarVal var_1AC
  loc_B98A08: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B98A0D: CVarStr var_1BC
  loc_B98A10: PopAdLdVar
  loc_B98A11: FLdPr Me
  loc_B98A14: MemLdRfVar from_stack_1.htmFile
  loc_B98A17: LdPrVar
  loc_B98A19: LateMemCall
  loc_B98A1F: FFree1Str var_1AC
  loc_B98A22: FFreeAd var_8C = "": var_DC = "": var_E0 = "": var_A8 = "": var_174 = ""
  loc_B98A31: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_150 = "": var_170 = "": var_198 = "": var_1A8 = ""
  loc_B98A48: FLdRfVar var_B8
  loc_B98A4B: FLdRfVar var_A8
  loc_B98A4E: LitVarStr var_A4, "altas"
  loc_B98A53: PopAdLdVar
  loc_B98A54: FLdRfVar var_8C
  loc_B98A57: FLdPr var_90
  loc_B98A5A:  = Me.Fields
  loc_B98A5F: FLdPr var_8C
  loc_B98A62: from_stack_2 = Me.Item(from_stack_1)
  loc_B98A67: FLdPr var_A8
  loc_B98A6A:  = Me.Value
  loc_B98A6F: FLdRfVar var_E0
  loc_B98A72: LitVarStr var_F0, "altas"
  loc_B98A77: PopAdLdVar
  loc_B98A78: FLdRfVar var_DC
  loc_B98A7B: FLdPr var_90
  loc_B98A7E:  = Me.Fields
  loc_B98A83: FLdPr var_DC
  loc_B98A86: from_stack_2 = Me.Item(from_stack_1)
  loc_B98A8B: LitI4 1
  loc_B98A90: LitI4 1
  loc_B98A95: LitVarStr var_110, "###,###,##0.00"
  loc_B98A9A: FStVarCopyObj var_120
  loc_B98A9D: FLdRfVar var_120
  loc_B98AA0: FLdZeroAd var_E0
  loc_B98AA3: CVarAd
  loc_B98AA7: ImpAdCallI2 Format$(, )
  loc_B98AAC: FStStr var_1D0
  loc_B98AAF: LitVarStr var_130, "&nbsp;"
  loc_B98AB4: FStVarCopyObj var_160
  loc_B98AB7: FLdRfVar var_160
  loc_B98ABA: FLdZeroAd var_1D0
  loc_B98ABD: CVarStr var_150
  loc_B98AC0: FLdRfVar var_B8
  loc_B98AC3: LitVarStr var_C8, "0"
  loc_B98AC8: HardType
  loc_B98AC9: NeVar var_D8
  loc_B98ACD: FStVar var_140
  loc_B98AD1: FLdRfVar var_140
  loc_B98AD4: FLdRfVar var_170
  loc_B98AD7: ImpAdCallFPR4  = IIf(, , )
  loc_B98ADC: LitI4 0
  loc_B98AE1: LitStr "Totales3"
  loc_B98AE4: LitI2_Byte 0
  loc_B98AE6: LitStr "right"
  loc_B98AE9: FLdRfVar var_170
  loc_B98AEC: CStrVarVal var_1AC
  loc_B98AF0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B98AF5: CVarStr var_198
  loc_B98AF8: PopAdLdVar
  loc_B98AF9: FLdPr Me
  loc_B98AFC: MemLdRfVar from_stack_1.htmFile
  loc_B98AFF: LdPrVar
  loc_B98B01: LateMemCall
  loc_B98B07: FFreeStr var_1AC = ""
  loc_B98B0E: FFreeAd var_8C = "": var_A8 = ""
  loc_B98B17: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = ""
  loc_B98B2A: FLdRfVar var_160
  loc_B98B2D: FLdRfVar var_A8
  loc_B98B30: LitVarStr var_A4, "CodiCuco"
  loc_B98B35: PopAdLdVar
  loc_B98B36: FLdRfVar var_8C
  loc_B98B39: FLdPr var_90
  loc_B98B3C:  = Me.Fields
  loc_B98B41: FLdPr var_8C
  loc_B98B44: from_stack_2 = Me.Item(from_stack_1)
  loc_B98B49: FLdPr var_A8
  loc_B98B4C:  = Me.Value
  loc_B98B51: FLdRfVar var_B8
  loc_B98B54: FLdRfVar var_E0
  loc_B98B57: LitVarStr var_C8, "CodiCuco"
  loc_B98B5C: PopAdLdVar
  loc_B98B5D: FLdRfVar var_DC
  loc_B98B60: FLdPr var_90
  loc_B98B63:  = Me.Fields
  loc_B98B68: FLdPr var_DC
  loc_B98B6B: from_stack_2 = Me.Item(from_stack_1)
  loc_B98B70: FLdPr var_E0
  loc_B98B73:  = Me.Value
  loc_B98B78: LitVarStr var_130, vbNullString
  loc_B98B7D: FStVarCopyObj var_140
  loc_B98B80: FLdRfVar var_140
  loc_B98B83: LitVarStr var_110, " - "
  loc_B98B88: FStVarCopyObj var_120
  loc_B98B8B: FLdRfVar var_120
  loc_B98B8E: FLdRfVar var_B8
  loc_B98B91: LitVarStr var_F0, vbNullString
  loc_B98B96: HardType
  loc_B98B97: NeVar var_D8
  loc_B98B9B: FStVar var_100
  loc_B98B9F: FLdRfVar var_100
  loc_B98BA2: FLdRfVar var_150
  loc_B98BA5: ImpAdCallFPR4  = IIf(, , )
  loc_B98BAA: FLdRfVar var_198
  loc_B98BAD: FLdRfVar var_188
  loc_B98BB0: LitVarStr var_184, "DetaCuco"
  loc_B98BB5: PopAdLdVar
  loc_B98BB6: FLdRfVar var_174
  loc_B98BB9: FLdPr var_90
  loc_B98BBC:  = Me.Fields
  loc_B98BC1: FLdPr var_174
  loc_B98BC4: from_stack_2 = Me.Item(from_stack_1)
  loc_B98BC9: FLdPr var_188
  loc_B98BCC:  = Me.Value
  loc_B98BD1: LitI4 0
  loc_B98BD6: LitStr "Totales3"
  loc_B98BD9: LitI2_Byte 0
  loc_B98BDB: LitStr "left"
  loc_B98BDE: FLdRfVar var_160
  loc_B98BE1: FLdRfVar var_150
  loc_B98BE4: ConcatVar var_170
  loc_B98BE8: FLdRfVar var_198
  loc_B98BEB: ConcatVar var_1A8
  loc_B98BEF: CStrVarVal var_1AC
  loc_B98BF3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B98BF8: CVarStr var_1BC
  loc_B98BFB: PopAdLdVar
  loc_B98BFC: FLdPr Me
  loc_B98BFF: MemLdRfVar from_stack_1.htmFile
  loc_B98C02: LdPrVar
  loc_B98C04: LateMemCall
  loc_B98C0A: FFree1Str var_1AC
  loc_B98C0D: FFreeAd var_8C = "": var_DC = "": var_E0 = "": var_A8 = "": var_174 = ""
  loc_B98C1C: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_150 = "": var_170 = "": var_198 = "": var_1A8 = ""
  loc_B98C33: FLdRfVar var_B8
  loc_B98C36: FLdRfVar var_A8
  loc_B98C39: LitVarStr var_A4, "bajas"
  loc_B98C3E: PopAdLdVar
  loc_B98C3F: FLdRfVar var_8C
  loc_B98C42: FLdPr var_90
  loc_B98C45:  = Me.Fields
  loc_B98C4A: FLdPr var_8C
  loc_B98C4D: from_stack_2 = Me.Item(from_stack_1)
  loc_B98C52: FLdPr var_A8
  loc_B98C55:  = Me.Value
  loc_B98C5A: FLdRfVar var_E0
  loc_B98C5D: LitVarStr var_F0, "bajas"
  loc_B98C62: PopAdLdVar
  loc_B98C63: FLdRfVar var_DC
  loc_B98C66: FLdPr var_90
  loc_B98C69:  = Me.Fields
  loc_B98C6E: FLdPr var_DC
  loc_B98C71: from_stack_2 = Me.Item(from_stack_1)
  loc_B98C76: LitI4 1
  loc_B98C7B: LitI4 1
  loc_B98C80: LitVarStr var_110, "###,###,##0.00"
  loc_B98C85: FStVarCopyObj var_120
  loc_B98C88: FLdRfVar var_120
  loc_B98C8B: FLdZeroAd var_E0
  loc_B98C8E: CVarAd
  loc_B98C92: ImpAdCallI2 Format$(, )
  loc_B98C97: FStStr var_1D0
  loc_B98C9A: LitVarStr var_130, "&nbsp;"
  loc_B98C9F: FStVarCopyObj var_160
  loc_B98CA2: FLdRfVar var_160
  loc_B98CA5: FLdZeroAd var_1D0
  loc_B98CA8: CVarStr var_150
  loc_B98CAB: FLdRfVar var_B8
  loc_B98CAE: LitVarStr var_C8, "0"
  loc_B98CB3: HardType
  loc_B98CB4: NeVar var_D8
  loc_B98CB8: FStVar var_140
  loc_B98CBC: FLdRfVar var_140
  loc_B98CBF: FLdRfVar var_170
  loc_B98CC2: ImpAdCallFPR4  = IIf(, , )
  loc_B98CC7: LitI4 0
  loc_B98CCC: LitStr "Totales3"
  loc_B98CCF: LitI2_Byte 0
  loc_B98CD1: LitStr "right"
  loc_B98CD4: FLdRfVar var_170
  loc_B98CD7: CStrVarVal var_1AC
  loc_B98CDB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B98CE0: CVarStr var_198
  loc_B98CE3: PopAdLdVar
  loc_B98CE4: FLdPr Me
  loc_B98CE7: MemLdRfVar from_stack_1.htmFile
  loc_B98CEA: LdPrVar
  loc_B98CEC: LateMemCall
  loc_B98CF2: FFreeStr var_1AC = ""
  loc_B98CF9: FFreeAd var_8C = "": var_A8 = ""
  loc_B98D02: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = ""
  loc_B98D15: FLdRfVar var_B8
  loc_B98D18: FLdRfVar var_A8
  loc_B98D1B: LitVarStr var_A4, "SaldoFinal"
  loc_B98D20: PopAdLdVar
  loc_B98D21: FLdRfVar var_8C
  loc_B98D24: FLdPr var_90
  loc_B98D27:  = Me.Fields
  loc_B98D2C: FLdPr var_8C
  loc_B98D2F: from_stack_2 = Me.Item(from_stack_1)
  loc_B98D34: FLdPr var_A8
  loc_B98D37:  = Me.Value
  loc_B98D3C: FLdRfVar var_E0
  loc_B98D3F: LitVarStr var_F0, "SaldoFinal"
  loc_B98D44: PopAdLdVar
  loc_B98D45: FLdRfVar var_DC
  loc_B98D48: FLdPr var_90
  loc_B98D4B:  = Me.Fields
  loc_B98D50: FLdPr var_DC
  loc_B98D53: from_stack_2 = Me.Item(from_stack_1)
  loc_B98D58: LitI4 1
  loc_B98D5D: LitI4 1
  loc_B98D62: LitVarStr var_110, "###,###,##0.00"
  loc_B98D67: FStVarCopyObj var_120
  loc_B98D6A: FLdRfVar var_120
  loc_B98D6D: FLdZeroAd var_E0
  loc_B98D70: CVarAd
  loc_B98D74: ImpAdCallI2 Format$(, )
  loc_B98D79: FStStr var_1D0
  loc_B98D7C: LitVarStr var_130, "&nbsp;"
  loc_B98D81: FStVarCopyObj var_160
  loc_B98D84: FLdRfVar var_160
  loc_B98D87: FLdZeroAd var_1D0
  loc_B98D8A: CVarStr var_150
  loc_B98D8D: FLdRfVar var_B8
  loc_B98D90: LitVarStr var_C8, "0"
  loc_B98D95: HardType
  loc_B98D96: NeVar var_D8
  loc_B98D9A: FStVar var_140
  loc_B98D9E: FLdRfVar var_140
  loc_B98DA1: FLdRfVar var_170
  loc_B98DA4: ImpAdCallFPR4  = IIf(, , )
  loc_B98DA9: LitI4 0
  loc_B98DAE: LitStr "Totales3"
  loc_B98DB1: LitI2_Byte 0
  loc_B98DB3: LitStr "right"
  loc_B98DB6: FLdRfVar var_170
  loc_B98DB9: CStrVarVal var_1AC
  loc_B98DBD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B98DC2: CVarStr var_198
  loc_B98DC5: PopAdLdVar
  loc_B98DC6: FLdPr Me
  loc_B98DC9: MemLdRfVar from_stack_1.htmFile
  loc_B98DCC: LdPrVar
  loc_B98DCE: LateMemCall
  loc_B98DD4: FFreeStr var_1AC = ""
  loc_B98DDB: FFreeAd var_8C = "": var_A8 = ""
  loc_B98DE4: FFreeVar var_B8 = "": var_100 = "": var_120 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = ""
  loc_B98DF7: LitVarStr var_A4, "     </tr>"
  loc_B98DFC: PopAdLdVar
  loc_B98DFD: FLdPr Me
  loc_B98E00: MemLdRfVar from_stack_1.htmFile
  loc_B98E03: LdPrVar
  loc_B98E05: LateMemCall
  loc_B98E0B: FLdRfVar var_B8
  loc_B98E0E: FLdRfVar var_A8
  loc_B98E11: LitVarStr var_A4, "tcodicuco"
  loc_B98E16: PopAdLdVar
  loc_B98E17: FLdRfVar var_8C
  loc_B98E1A: FLdPr var_90
  loc_B98E1D:  = Me.Fields
  loc_B98E22: FLdPr var_8C
  loc_B98E25: from_stack_2 = Me.Item(from_stack_1)
  loc_B98E2A: FLdPr var_A8
  loc_B98E2D:  = Me.Value
  loc_B98E32: FLdRfVar var_B8
  loc_B98E35: CStrVarTmp
  loc_B98E36: FStStr var_88
  loc_B98E39: FFreeAd var_8C = ""
  loc_B98E40: FFree1Var var_B8 = ""
  loc_B98E43: FLdPr Me
  loc_B98E46: MemLdRfVar from_stack_1.global_88
  loc_B98E49: NewIfNullPr clsbase
  loc_B98E4C: Call clsbase.MoveSiguiente()
  loc_B98E51: Branch loc_B9801B
  loc_B98E54: LitNothing
  loc_B98E56: FStAd var_90 
  loc_B98E5A: Call Proc_158_27_A01A78()
  loc_B98E5F: FLdPr Me
  loc_B98E62: MemLdRfVar from_stack_1.htmFile
  loc_B98E65: LdPrVar
  loc_B98E67: LateMemCall
  loc_B98E6D: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B98E72: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94FBF4
  'Data Table: 451FD8
  loc_94FBDC: LitI2_Byte 0
  loc_94FBDE: FLdPr Me
  loc_94FBE1: MemStI2 bLogos
  loc_94FBE4: Call GeneraHTML()
  loc_94FBE9: LitI2_Byte &HFF
  loc_94FBEB: FLdPr Me
  loc_94FBEE: MemStI2 bLogos
  loc_94FBF1: ExitProcHresult
  loc_94FBF2: NewIfNullPr Me
End Sub

Private Function Proc_158_26_A7256C() 'A7256C
  'Data Table: 451FD8
  loc_A721B4: LitVarStr var_94, "<html>"
  loc_A721B9: PopAdLdVar
  loc_A721BA: FLdPr Me
  loc_A721BD: MemLdRfVar from_stack_1.htmFile
  loc_A721C0: LdPrVar
  loc_A721C2: LateMemCall
  loc_A721C8: LitVarStr var_94, "<head>"
  loc_A721CD: PopAdLdVar
  loc_A721CE: FLdPr Me
  loc_A721D1: MemLdRfVar from_stack_1.htmFile
  loc_A721D4: LdPrVar
  loc_A721D6: LateMemCall
  loc_A721DC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A721E1: PopAdLdVar
  loc_A721E2: FLdPr Me
  loc_A721E5: MemLdRfVar from_stack_1.htmFile
  loc_A721E8: LdPrVar
  loc_A721EA: LateMemCall
  loc_A721F0: LitStr "<title>"
  loc_A721F3: FLdRfVar var_A8
  loc_A721F6: FLdPr Me
  loc_A721F9:  = Me.Caption
  loc_A721FE: ILdRf var_A8
  loc_A72201: ConcatStr
  loc_A72202: FStStrNoPop var_AC
  loc_A72205: LitStr " - "
  loc_A72208: ConcatStr
  loc_A72209: FStStrNoPop var_B0
  loc_A7220C: LitStr "Municipalidad de Guaymallén"
  loc_A7220F: ConcatStr
  loc_A72210: FStStrNoPop var_B4
  loc_A72213: LitStr "</title>"
  loc_A72216: ConcatStr
  loc_A72217: CVarStr var_C4
  loc_A7221A: PopAdLdVar
  loc_A7221B: FLdPr Me
  loc_A7221E: MemLdRfVar from_stack_1.htmFile
  loc_A72221: LdPrVar
  loc_A72223: LateMemCall
  loc_A72229: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A72234: FFree1Var var_C4 = ""
  loc_A72237: LitStr vbNullString
  loc_A7223A: ILdRf Me
  loc_A7223D: CastAd
  loc_A72240: FStAdFunc var_C8
  loc_A72243: FLdRfVar var_C8
  loc_A72246: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A7224B: FFree1Ad var_C8
  loc_A7224E: LitI4 0
  loc_A72253: FStStrCopy var_AC
  loc_A72256: FLdRfVar var_AC
  loc_A72259: LitI4 0
  loc_A7225E: FStStrCopy var_A8
  loc_A72261: FLdRfVar var_A8
  loc_A72264: LitI2_Byte &HFF
  loc_A72266: PopTmpLdAd2 var_CA
  loc_A72269: FLdPr Me
  loc_A7226C: MemLdRfVar from_stack_1.htmFile
  loc_A7226F: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A72274: FFreeStr var_A8 = ""
  loc_A7227B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A72280: PopAdLdVar
  loc_A72281: FLdPr Me
  loc_A72284: MemLdRfVar from_stack_1.htmFile
  loc_A72287: LdPrVar
  loc_A72289: LateMemCall
  loc_A7228F: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_A72294: PopAdLdVar
  loc_A72295: FLdPr Me
  loc_A72298: MemLdRfVar from_stack_1.htmFile
  loc_A7229B: LdPrVar
  loc_A7229D: LateMemCall
  loc_A722A3: LitVarStr var_94, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A722A8: PopAdLdVar
  loc_A722A9: FLdPr Me
  loc_A722AC: MemLdRfVar from_stack_1.htmFile
  loc_A722AF: LdPrVar
  loc_A722B1: LateMemCall
  loc_A722B7: FLdPr Me
  loc_A722BA: MemLdI2 bLogos
  loc_A722BD: BranchF loc_A72302
  loc_A722C0: LitVarStr var_A4, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A722C5: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A722CA: FStVarCopyObj var_C4
  loc_A722CD: FLdRfVar var_C4
  loc_A722D0: FLdRfVar var_DC
  loc_A722D3: ImpAdCallFPR4  = Ucase()
  loc_A722D8: FLdRfVar var_DC
  loc_A722DB: ConcatVar var_EC
  loc_A722DF: LitVarStr var_FC, "</p>"
  loc_A722E4: ConcatVar var_10C
  loc_A722E8: PopAdLdVar
  loc_A722E9: FLdPr Me
  loc_A722EC: MemLdRfVar from_stack_1.htmFile
  loc_A722EF: LdPrVar
  loc_A722F1: LateMemCall
  loc_A722F7: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A72302: LitStr "    <p>"
  loc_A72305: FLdRfVar var_A8
  loc_A72308: FLdPr Me
  loc_A7230B:  = Me.Caption
  loc_A72310: ILdRf var_A8
  loc_A72313: ConcatStr
  loc_A72314: FStStrNoPop var_AC
  loc_A72317: LitStr "</p></th>"
  loc_A7231A: ConcatStr
  loc_A7231B: CVarStr var_C4
  loc_A7231E: PopAdLdVar
  loc_A7231F: FLdPr Me
  loc_A72322: MemLdRfVar from_stack_1.htmFile
  loc_A72325: LdPrVar
  loc_A72327: LateMemCall
  loc_A7232D: FFreeStr var_A8 = ""
  loc_A72334: FFree1Var var_C4 = ""
  loc_A72337: LitVarStr var_94, "  </tr>"
  loc_A7233C: PopAdLdVar
  loc_A7233D: FLdPr Me
  loc_A72340: MemLdRfVar from_stack_1.htmFile
  loc_A72343: LdPrVar
  loc_A72345: LateMemCall
  loc_A7234B: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_A72350: PopAdLdVar
  loc_A72351: FLdPr Me
  loc_A72354: MemLdRfVar from_stack_1.htmFile
  loc_A72357: LdPrVar
  loc_A72359: LateMemCall
  loc_A7235F: LitStr "    <td colspan=""2"" align=""left"">Repartición/Organismo: "
  loc_A72362: LitStr "Municipalidad de Guaymallén"
  loc_A72365: ConcatStr
  loc_A72366: FStStrNoPop var_A8
  loc_A72369: LitStr "</td>"
  loc_A7236C: ConcatStr
  loc_A7236D: CVarStr var_C4
  loc_A72370: PopAdLdVar
  loc_A72371: FLdPr Me
  loc_A72374: MemLdRfVar from_stack_1.htmFile
  loc_A72377: LdPrVar
  loc_A72379: LateMemCall
  loc_A7237F: FFree1Str var_A8
  loc_A72382: FFree1Var var_C4 = ""
  loc_A72385: LitVarStr var_94, "  </tr>"
  loc_A7238A: PopAdLdVar
  loc_A7238B: FLdPr Me
  loc_A7238E: MemLdRfVar from_stack_1.htmFile
  loc_A72391: LdPrVar
  loc_A72393: LateMemCall
  loc_A72399: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_A7239E: PopAdLdVar
  loc_A7239F: FLdPr Me
  loc_A723A2: MemLdRfVar from_stack_1.htmFile
  loc_A723A5: LdPrVar
  loc_A723A7: LateMemCall
  loc_A723AD: LitStr "    <td>Ejercicio: "
  loc_A723B0: FLdRfVar var_A8
  loc_A723B3: FLdPr Me
  loc_A723B6: VCallAd Control_ID_cboPeriodo
  loc_A723B9: FStAdFunc var_C8
  loc_A723BC: FLdPr var_C8
  loc_A723BF:  = Me.Text
  loc_A723C4: ILdRf var_A8
  loc_A723C7: ConcatStr
  loc_A723C8: FStStrNoPop var_AC
  loc_A723CB: LitStr "</td>"
  loc_A723CE: ConcatStr
  loc_A723CF: CVarStr var_C4
  loc_A723D2: PopAdLdVar
  loc_A723D3: FLdPr Me
  loc_A723D6: MemLdRfVar from_stack_1.htmFile
  loc_A723D9: LdPrVar
  loc_A723DB: LateMemCall
  loc_A723E1: FFreeStr var_A8 = ""
  loc_A723E8: FFree1Ad var_C8
  loc_A723EB: FFree1Var var_C4 = ""
  loc_A723EE: LitVarStr var_94, "  </tr>"
  loc_A723F3: PopAdLdVar
  loc_A723F4: FLdPr Me
  loc_A723F7: MemLdRfVar from_stack_1.htmFile
  loc_A723FA: LdPrVar
  loc_A723FC: LateMemCall
  loc_A72402: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A72407: PopAdLdVar
  loc_A72408: FLdPr Me
  loc_A7240B: MemLdRfVar from_stack_1.htmFile
  loc_A7240E: LdPrVar
  loc_A72410: LateMemCall
  loc_A72416: LitVarStr var_94, "</table>"
  loc_A7241B: PopAdLdVar
  loc_A7241C: FLdPr Me
  loc_A7241F: MemLdRfVar from_stack_1.htmFile
  loc_A72422: LdPrVar
  loc_A72424: LateMemCall
  loc_A7242A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A7242F: PopAdLdVar
  loc_A72430: FLdPr Me
  loc_A72433: MemLdRfVar from_stack_1.htmFile
  loc_A72436: LdPrVar
  loc_A72438: LateMemCall
  loc_A7243E: LitVarStr var_94, "  <THEAD>"
  loc_A72443: PopAdLdVar
  loc_A72444: FLdPr Me
  loc_A72447: MemLdRfVar from_stack_1.htmFile
  loc_A7244A: LdPrVar
  loc_A7244C: LateMemCall
  loc_A72452: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A72457: PopAdLdVar
  loc_A72458: FLdPr Me
  loc_A7245B: MemLdRfVar from_stack_1.htmFile
  loc_A7245E: LdPrVar
  loc_A72460: LateMemCall
  loc_A72466: LitVarStr var_94, "    <th rowspan=""2"">CUENTA</th>"
  loc_A7246B: PopAdLdVar
  loc_A7246C: FLdPr Me
  loc_A7246F: MemLdRfVar from_stack_1.htmFile
  loc_A72472: LdPrVar
  loc_A72474: LateMemCall
  loc_A7247A: LitVarStr var_94, "    <th rowspan=""2"">SALDO INICIAL</th>"
  loc_A7247F: PopAdLdVar
  loc_A72480: FLdPr Me
  loc_A72483: MemLdRfVar from_stack_1.htmFile
  loc_A72486: LdPrVar
  loc_A72488: LateMemCall
  loc_A7248E: LitVarStr var_94, "    <th colspan=""2"">MOVIMIENTOS DE ALTAS (HABER)</th>"
  loc_A72493: PopAdLdVar
  loc_A72494: FLdPr Me
  loc_A72497: MemLdRfVar from_stack_1.htmFile
  loc_A7249A: LdPrVar
  loc_A7249C: LateMemCall
  loc_A724A2: LitVarStr var_94, "    <th colspan=""2"">MOVIMIENTOS DE BAJAS (DEBE)</th>"
  loc_A724A7: PopAdLdVar
  loc_A724A8: FLdPr Me
  loc_A724AB: MemLdRfVar from_stack_1.htmFile
  loc_A724AE: LdPrVar
  loc_A724B0: LateMemCall
  loc_A724B6: LitVarStr var_94, "    <th rowspan=""2"">SALDO FINAL</th>"
  loc_A724BB: PopAdLdVar
  loc_A724BC: FLdPr Me
  loc_A724BF: MemLdRfVar from_stack_1.htmFile
  loc_A724C2: LdPrVar
  loc_A724C4: LateMemCall
  loc_A724CA: LitVarStr var_94, "  </tr>"
  loc_A724CF: PopAdLdVar
  loc_A724D0: FLdPr Me
  loc_A724D3: MemLdRfVar from_stack_1.htmFile
  loc_A724D6: LdPrVar
  loc_A724D8: LateMemCall
  loc_A724DE: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A724E3: PopAdLdVar
  loc_A724E4: FLdPr Me
  loc_A724E7: MemLdRfVar from_stack_1.htmFile
  loc_A724EA: LdPrVar
  loc_A724EC: LateMemCall
  loc_A724F2: LitVarStr var_94, "    <th>CODIGO Y CUENTA</th>"
  loc_A724F7: PopAdLdVar
  loc_A724F8: FLdPr Me
  loc_A724FB: MemLdRfVar from_stack_1.htmFile
  loc_A724FE: LdPrVar
  loc_A72500: LateMemCall
  loc_A72506: LitVarStr var_94, "    <th>IMPORTE</th>"
  loc_A7250B: PopAdLdVar
  loc_A7250C: FLdPr Me
  loc_A7250F: MemLdRfVar from_stack_1.htmFile
  loc_A72512: LdPrVar
  loc_A72514: LateMemCall
  loc_A7251A: LitVarStr var_94, "    <th>CODIGO Y CUENTA</th>"
  loc_A7251F: PopAdLdVar
  loc_A72520: FLdPr Me
  loc_A72523: MemLdRfVar from_stack_1.htmFile
  loc_A72526: LdPrVar
  loc_A72528: LateMemCall
  loc_A7252E: LitVarStr var_94, "    <th>IMPORTE</th>"
  loc_A72533: PopAdLdVar
  loc_A72534: FLdPr Me
  loc_A72537: MemLdRfVar from_stack_1.htmFile
  loc_A7253A: LdPrVar
  loc_A7253C: LateMemCall
  loc_A72542: LitVarStr var_94, "  </tr>"
  loc_A72547: PopAdLdVar
  loc_A72548: FLdPr Me
  loc_A7254B: MemLdRfVar from_stack_1.htmFile
  loc_A7254E: LdPrVar
  loc_A72550: LateMemCall
  loc_A72556: LitVarStr var_94, "  </THEAD>"
  loc_A7255B: PopAdLdVar
  loc_A7255C: FLdPr Me
  loc_A7255F: MemLdRfVar from_stack_1.htmFile
  loc_A72562: LdPrVar
  loc_A72564: LateMemCall
  loc_A7256A: ExitProcHresult
End Function

Private Function Proc_158_27_A01A78() 'A01A78
  'Data Table: 451FD8
  loc_A0190C: LitVarStr var_94, "</table>"
  loc_A01911: PopAdLdVar
  loc_A01912: FLdPr Me
  loc_A01915: MemLdRfVar from_stack_1.htmFile
  loc_A01918: LdPrVar
  loc_A0191A: LateMemCall
  loc_A01920: LitVarStr var_94, "<br>"
  loc_A01925: PopAdLdVar
  loc_A01926: FLdPr Me
  loc_A01929: MemLdRfVar from_stack_1.htmFile
  loc_A0192C: LdPrVar
  loc_A0192E: LateMemCall
  loc_A01934: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A01939: PopAdLdVar
  loc_A0193A: FLdPr Me
  loc_A0193D: MemLdRfVar from_stack_1.htmFile
  loc_A01940: LdPrVar
  loc_A01942: LateMemCall
  loc_A01948: LitVarStr var_94, "  <tr>"
  loc_A0194D: PopAdLdVar
  loc_A0194E: FLdPr Me
  loc_A01951: MemLdRfVar from_stack_1.htmFile
  loc_A01954: LdPrVar
  loc_A01956: LateMemCall
  loc_A0195C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A01961: PopAdLdVar
  loc_A01962: FLdPr Me
  loc_A01965: MemLdRfVar from_stack_1.htmFile
  loc_A01968: LdPrVar
  loc_A0196A: LateMemCall
  loc_A01970: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A01975: PopAdLdVar
  loc_A01976: FLdPr Me
  loc_A01979: MemLdRfVar from_stack_1.htmFile
  loc_A0197C: LdPrVar
  loc_A0197E: LateMemCall
  loc_A01984: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A01989: PopAdLdVar
  loc_A0198A: FLdPr Me
  loc_A0198D: MemLdRfVar from_stack_1.htmFile
  loc_A01990: LdPrVar
  loc_A01992: LateMemCall
  loc_A01998: LitVarStr var_94, "          <map name=""Map"">"
  loc_A0199D: PopAdLdVar
  loc_A0199E: FLdPr Me
  loc_A019A1: MemLdRfVar from_stack_1.htmFile
  loc_A019A4: LdPrVar
  loc_A019A6: LateMemCall
  loc_A019AC: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A019B1: PopAdLdVar
  loc_A019B2: FLdPr Me
  loc_A019B5: MemLdRfVar from_stack_1.htmFile
  loc_A019B8: LdPrVar
  loc_A019BA: LateMemCall
  loc_A019C0: LitVarStr var_94, "          </map>"
  loc_A019C5: PopAdLdVar
  loc_A019C6: FLdPr Me
  loc_A019C9: MemLdRfVar from_stack_1.htmFile
  loc_A019CC: LdPrVar
  loc_A019CE: LateMemCall
  loc_A019D4: LitVarStr var_94, "    </div></th>"
  loc_A019D9: PopAdLdVar
  loc_A019DA: FLdPr Me
  loc_A019DD: MemLdRfVar from_stack_1.htmFile
  loc_A019E0: LdPrVar
  loc_A019E2: LateMemCall
  loc_A019E8: LitVarStr var_94, "  </tr>"
  loc_A019ED: PopAdLdVar
  loc_A019EE: FLdPr Me
  loc_A019F1: MemLdRfVar from_stack_1.htmFile
  loc_A019F4: LdPrVar
  loc_A019F6: LateMemCall
  loc_A019FC: LitVarStr var_94, "  <tr>"
  loc_A01A01: PopAdLdVar
  loc_A01A02: FLdPr Me
  loc_A01A05: MemLdRfVar from_stack_1.htmFile
  loc_A01A08: LdPrVar
  loc_A01A0A: LateMemCall
  loc_A01A10: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A01A15: PopAdLdVar
  loc_A01A16: FLdPr Me
  loc_A01A19: MemLdRfVar from_stack_1.htmFile
  loc_A01A1C: LdPrVar
  loc_A01A1E: LateMemCall
  loc_A01A24: LitVarStr var_94, "  </tr>"
  loc_A01A29: PopAdLdVar
  loc_A01A2A: FLdPr Me
  loc_A01A2D: MemLdRfVar from_stack_1.htmFile
  loc_A01A30: LdPrVar
  loc_A01A32: LateMemCall
  loc_A01A38: LitVarStr var_94, "</table>"
  loc_A01A3D: PopAdLdVar
  loc_A01A3E: FLdPr Me
  loc_A01A41: MemLdRfVar from_stack_1.htmFile
  loc_A01A44: LdPrVar
  loc_A01A46: LateMemCall
  loc_A01A4C: LitVarStr var_94, "</body>"
  loc_A01A51: PopAdLdVar
  loc_A01A52: FLdPr Me
  loc_A01A55: MemLdRfVar from_stack_1.htmFile
  loc_A01A58: LdPrVar
  loc_A01A5A: LateMemCall
  loc_A01A60: LitVarStr var_94, "</html>"
  loc_A01A65: PopAdLdVar
  loc_A01A66: FLdPr Me
  loc_A01A69: MemLdRfVar from_stack_1.htmFile
  loc_A01A6C: LdPrVar
  loc_A01A6E: LateMemCall
  loc_A01A74: ExitProcHresult
End Function
