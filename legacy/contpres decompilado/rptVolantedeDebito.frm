VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptVolantedeDebito
  Caption = "Volante de Débito"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptVolantedeDebito.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6075
  ClientHeight = 4095
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3840
    Width = 6075
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptVolantedeDebito.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5160
    Top = 2880
    Width = 735
    Height = 615
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptVolantedeDebito.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptVolantedeDebito.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2640
    Width = 1815
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2640
    Width = 3015
    Height = 1095
    TabIndex = 10
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5895
    Height = 2535
    TabIndex = 8
    Begin VB.Frame Frame5
      Left = 600
      Top = 840
      Width = 4695
      Height = 1335
      TabIndex = 14
      Begin VB.ComboBox cboExpeImpu
        Left = 2040
        Top = 360
        Width = 2415
        Height = 315
        TabIndex = 1
      End
      Begin MSMask.MaskEdBox NumeDebiMsk
        Left = 2040
        Top = 840
        Width = 735
        Height = 285
        TabIndex = 2
        OleObjectBlob = "rptVolantedeDebito.frx":0C00
      End
      Begin VB.Label Label5
        Caption = "Expediente:"
        Left = 1080
        Top = 360
        Width = 840
        Height = 195
        TabIndex = 16
        AutoSize = -1  'True
      End
      Begin VB.Label Label4
        Caption = "Número de Débito:"
        Left = 585
        Top = 840
        Width = 1335
        Height = 195
        TabIndex = 15
        AutoSize = -1  'True
      End
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1320
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 0
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3960
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 600
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 9
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5280
    Top = 3120
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptVolantedeDebito.frx":0C68
  End
End

Attribute VB_Name = "rptVolantedeDebito"

Public bGenerado As Boolean

Private Type UDT_1_00583FA0
  bStruc(40) As Byte ' String fields: 10
End Type


Private Sub NumeDebiMsk_UnknownEvent_0 '94FBA8
  'Data Table: 453D44
  loc_94FB94: FLdPr Me
  loc_94FB97: VCallAd Control_ID_NumeDebiMsk
  loc_94FB9A: CVarAd
  loc_94FB9E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FBA3: FFree1Var var_94 = ""
  loc_94FBA6: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95C13C
  'Data Table: 453D44
  loc_95C124: ILdRf Me
  loc_95C127: CastAd
  loc_95C12A: FStAdFunc var_88
  loc_95C12D: FLdRfVar var_88
  loc_95C130: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95C135: FFree1Ad var_88
  loc_95C138: ExitProcHresult
  loc_95C139: FStStrCopy var_88
End Sub

Private Sub cboPeriodo_Click() '9F89B0
  'Data Table: 453D44
  loc_9F887C: LitI4 &HB
  loc_9F8881: CI2I4
  loc_9F8882: FLdRfVar var_88
  loc_9F8885: ImpAdLdRf MemVar_C44F9C
  loc_9F8888: NewIfNullPr Me
  loc_9F888B:  = Me.Global.Screen
  loc_9F8890: FLdPr var_88
  loc_9F8893: Screen.MousePointer = from_stack_1
  loc_9F8898: FFree1Ad var_88
  loc_9F889B: FLdPr Me
  loc_9F889E: VCallAd Control_ID_cboExpeImpu
  loc_9F88A1: FStAdFunc var_88
  loc_9F88A4: FLdPr var_88
  loc_9F88A7: Me.Clear
  loc_9F88AC: FFree1Ad var_88
  loc_9F88AF: LitStr "SELECT DISTINCT ExpeImpu"
  loc_9F88B2: LitStr " FROM debito"
  loc_9F88B5: ConcatStr
  loc_9F88B6: FStStrNoPop var_8C
  loc_9F88B9: LitStr " WHERE PeriInfo = "
  loc_9F88BC: ConcatStr
  loc_9F88BD: FStStrNoPop var_94
  loc_9F88C0: FLdRfVar var_90
  loc_9F88C3: FLdPr Me
  loc_9F88C6: VCallAd Control_ID_cboPeriodo
  loc_9F88C9: FStAdFunc var_88
  loc_9F88CC: FLdPr var_88
  loc_9F88CF:  = Me.Text
  loc_9F88D4: ILdRf var_90
  loc_9F88D7: ConcatStr
  loc_9F88D8: FStStrNoPop var_98
  loc_9F88DB: LitStr " ORDER BY ExpeImpu"
  loc_9F88DE: ConcatStr
  loc_9F88DF: FStStrNoPop var_9C
  loc_9F88E2: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_9F88E7: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_9F88F4: FFree1Ad var_88
  loc_9F88F7: FLdRfVar var_A0
  loc_9F88FA: ImpAdLdPr unk_453D56
  loc_9F88FD: MemLdPr global_0
  loc_9F8900:  = Me.RecordCount
  loc_9F8905: ILdRf var_A0
  loc_9F8908: LitI4 0
  loc_9F890D: GtI4
  loc_9F890E: BranchF loc_9F898E
  loc_9F8911: ImpAdLdPr unk_453D56
  loc_9F8914: MemLdPr global_0
  loc_9F8917: Me.MoveFirst
  loc_9F891C: FLdRfVar var_A2
  loc_9F891F: ImpAdLdPr unk_453D56
  loc_9F8922: MemLdPr global_0
  loc_9F8925:  = Me.EOF
  loc_9F892A: FLdI2 var_A2
  loc_9F892D: NotI4
  loc_9F892E: BranchF loc_9F898E
  loc_9F8931: LitVar_Missing var_D8
  loc_9F8934: PopAdLdVar
  loc_9F8935: FLdRfVar var_C8
  loc_9F8938: FLdRfVar var_B8
  loc_9F893B: LitVarStr var_B4, "ExpeImpu"
  loc_9F8940: PopAdLdVar
  loc_9F8941: FLdRfVar var_88
  loc_9F8944: ImpAdLdPr unk_453D56
  loc_9F8947: MemLdPr global_0
  loc_9F894A:  = Me.Fields
  loc_9F894F: FLdPr var_88
  loc_9F8952: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8957: FLdPr var_B8
  loc_9F895A:  = Me.Value
  loc_9F895F: FLdRfVar var_C8
  loc_9F8962: CStrVarTmp
  loc_9F8963: FStStrNoPop var_8C
  loc_9F8966: FLdPr Me
  loc_9F8969: VCallAd Control_ID_cboExpeImpu
  loc_9F896C: FStAdFunc var_DC
  loc_9F896F: FLdPr var_DC
  loc_9F8972: Me.AddItem from_stack_1, from_stack_2
  loc_9F8977: FFree1Str var_8C
  loc_9F897A: FFreeAd var_88 = "": var_B8 = ""
  loc_9F8983: FFree1Var var_C8 = ""
  loc_9F8986: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_9F898B: Branch loc_9F891C
  loc_9F898E: LitI4 0
  loc_9F8993: CI2I4
  loc_9F8994: FLdRfVar var_88
  loc_9F8997: ImpAdLdRf MemVar_C44F9C
  loc_9F899A: NewIfNullPr Me
  loc_9F899D:  = Me.Global.Screen
  loc_9F89A2: FLdPr var_88
  loc_9F89A5: Screen.MousePointer = from_stack_1
  loc_9F89AA: FFree1Ad var_88
  loc_9F89AD: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '980C90
  'Data Table: 453D44
  loc_980C58: ILdRf Me
  loc_980C5B: CastAd
  loc_980C5E: FStAdFunc var_88
  loc_980C61: FLdRfVar var_88
  loc_980C64: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_980C69: FFree1Ad var_88
  loc_980C6C: LitStr "Municipalidad de Guaymallén"
  loc_980C6F: LitStr "Municipalidad de Rivadavia"
  loc_980C72: EqStr
  loc_980C74: BranchF loc_980C8C
  loc_980C77: ILdRf Me
  loc_980C7A: FStAdNoPop
  loc_980C7E: ImpAdLdRf MemVar_C44F9C
  loc_980C81: NewIfNullPr Me
  loc_980C84: Me.Global.Unload from_stack_1
  loc_980C89: FFree1Ad var_88
  loc_980C8C: ExitProcHresult
  loc_980C8D: Branch loc_983158
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98755C
  'Data Table: 453D44
  loc_987524: FLdPr Me
  loc_987527: VCallAd Control_ID_statusBar
  loc_98752A: FStAdFunc var_88
  loc_98752D: FLdPr var_88
  loc_987530: LateIdLdVar var_98 DispID_1 0
  loc_987537: CStrVarTmp
  loc_987538: CVarStr var_A8
  loc_98753B: PopAdLdVar
  loc_98753C: FLdPr Me
  loc_98753F: VCallAd Control_ID_statusBar
  loc_987542: FStAdFunc var_BC
  loc_987545: FLdPr var_BC
  loc_987548: LateIdSt
  loc_98754D: FFreeAd var_88 = ""
  loc_987554: FFreeVar var_98 = ""
  loc_98755B: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9792F4
  'Data Table: 453D44
  loc_9792C4: LitVarStr var_94, "Cerrando..."
  loc_9792C9: PopAdLdVar
  loc_9792CA: FLdPr Me
  loc_9792CD: VCallAd Control_ID_statusBar
  loc_9792D0: FStAdFunc var_A8
  loc_9792D3: FLdPr var_A8
  loc_9792D6: LateIdSt
  loc_9792DB: FFree1Ad var_A8
  loc_9792DE: ILdRf Me
  loc_9792E1: FStAdNoPop
  loc_9792E5: ImpAdLdRf MemVar_C44F9C
  loc_9792E8: NewIfNullPr Me
  loc_9792EB: Me.Global.Unload from_stack_1
  loc_9792F0: FFree1Ad var_A8
  loc_9792F3: ExitProcHresult
End Sub

Private Sub Form_Load() '9D6B40
  'Data Table: 453D44
  loc_9D6A50: LitI2_Byte 0
  loc_9D6A52: ImpAdStI2 MemVar_C3D840
  loc_9D6A55: LitI2_Byte &HFF
  loc_9D6A57: ImpAdStI2 MemVar_C3D842
  loc_9D6A5A: ILdRf Me
  loc_9D6A5D: CastAd
  loc_9D6A60: FStAdFunc var_88
  loc_9D6A63: FLdRfVar var_88
  loc_9D6A66: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D6A6B: FFree1Ad var_88
  loc_9D6A6E: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D6A71: FLdPr Me
  loc_9D6A74: MemLdRfVar from_stack_1.global_56
  loc_9D6A77: NewIfNullPr clsbase
  loc_9D6A7A: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D6A7F: FLdRfVar var_8C
  loc_9D6A82: FLdPr Me
  loc_9D6A85: MemLdRfVar from_stack_1.global_56
  loc_9D6A88: NewIfNullPr clsbase
  loc_9D6A8B: from_stack_1 = clsbase.RecordCount
  loc_9D6A90: ILdRf var_8C
  loc_9D6A93: LitI4 0
  loc_9D6A98: GtI4
  loc_9D6A99: BranchF loc_9D6B38
  loc_9D6A9C: FLdPr Me
  loc_9D6A9F: MemLdRfVar from_stack_1.global_56
  loc_9D6AA2: NewIfNullPr clsbase
  loc_9D6AA5: Call clsbase.MoveFirst()
  loc_9D6AAA: FLdRfVar var_8E
  loc_9D6AAD: FLdPr Me
  loc_9D6AB0: MemLdRfVar from_stack_1.global_56
  loc_9D6AB3: NewIfNullPr clsbase
  loc_9D6AB6: from_stack_1 = clsbase.EOF
  loc_9D6ABB: FLdI2 var_8E
  loc_9D6ABE: NotI4
  loc_9D6ABF: BranchF loc_9D6B38
  loc_9D6AC2: LitVar_Missing var_CC
  loc_9D6AC5: PopAdLdVar
  loc_9D6AC6: FLdRfVar var_B8
  loc_9D6AC9: FLdRfVar var_A8
  loc_9D6ACC: LitVarStr var_A4, "PeriInfo"
  loc_9D6AD1: PopAdLdVar
  loc_9D6AD2: FLdRfVar var_94
  loc_9D6AD5: FLdRfVar var_88
  loc_9D6AD8: FLdPr Me
  loc_9D6ADB: MemLdRfVar from_stack_1.global_56
  loc_9D6ADE: NewIfNullPr clsbase
  loc_9D6AE1: from_stack_1v = clsbase.RsFrmGet()
  loc_9D6AE6: FLdPr var_88
  loc_9D6AE9:  = Me.Fields
  loc_9D6AEE: FLdPr var_94
  loc_9D6AF1: from_stack_2 = Me.Item(from_stack_1)
  loc_9D6AF6: FLdPr var_A8
  loc_9D6AF9:  = Me.Value
  loc_9D6AFE: FLdRfVar var_B8
  loc_9D6B01: CStrVarTmp
  loc_9D6B02: FStStrNoPop var_BC
  loc_9D6B05: FLdPr Me
  loc_9D6B08: VCallAd Control_ID_cboPeriodo
  loc_9D6B0B: FStAdFunc var_D0
  loc_9D6B0E: FLdPr var_D0
  loc_9D6B11: Me.AddItem from_stack_1, from_stack_2
  loc_9D6B16: FFree1Str var_BC
  loc_9D6B19: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D6B24: FFree1Var var_B8 = ""
  loc_9D6B27: FLdPr Me
  loc_9D6B2A: MemLdRfVar from_stack_1.global_56
  loc_9D6B2D: NewIfNullPr clsbase
  loc_9D6B30: Call clsbase.MoveSiguiente()
  loc_9D6B35: Branch loc_9D6AAA
  loc_9D6B38: Call cmdNueva_Click()
  loc_9D6B3D: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96A90C
  'Data Table: 453D44
  loc_96A8F0: FLdPr Me
  loc_96A8F3: VCallAd Control_ID_wbbReporte
  loc_96A8F6: FStAdFunc var_88
  loc_96A8F9: FLdRfVar var_88
  loc_96A8FC: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_96A901: FFree1Ad var_88
  loc_96A904: LitI2_Byte 0
  loc_96A906: ImpAdStI2 MemVar_C3D842
  loc_96A909: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '955FDC
  'Data Table: 453D44
  loc_955FC4: LitI2_Byte 0
  loc_955FC6: ILdRf Me
  loc_955FC9: CastAd
  loc_955FCC: FStAdFunc var_88
  loc_955FCF: FLdRfVar var_88
  loc_955FD2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_955FD7: FFree1Ad var_88
  loc_955FDA: ExitProcHresult
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '9763B4
  'Data Table: 453D44
  loc_97638C: FLdPr Me
  loc_97638F: VCallAd Control_ID_cboExpeImpu
  loc_976392: FStAdFunc var_8C
  loc_976395: ILdI2 KeyAscii
  loc_976398: FLdZeroAd var_8C
  loc_97639B: FStAdFunc var_88
  loc_97639E: FLdRfVar var_88
  loc_9763A1: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_9763A6: IStI2 KeyAscii
  loc_9763A9: FFreeAd var_88 = ""
  loc_9763B0: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Validate(Cancel As Boolean) '9D0DF4
  'Data Table: 453D44
  loc_9D0D14: FLdRfVar var_8C
  loc_9D0D17: FLdPr Me
  loc_9D0D1A: VCallAd Control_ID_cboExpeImpu
  loc_9D0D1D: FStAdFunc var_88
  loc_9D0D20: FLdPr var_88
  loc_9D0D23:  = Me.Text
  loc_9D0D28: ILdRf var_8C
  loc_9D0D2B: LitStr vbNullString
  loc_9D0D2E: NeStr
  loc_9D0D30: FFree1Str var_8C
  loc_9D0D33: FFree1Ad var_88
  loc_9D0D36: BranchF loc_9D0DB7
  loc_9D0D39: FLdRfVar var_8C
  loc_9D0D3C: FLdPr Me
  loc_9D0D3F: VCallAd Control_ID_cboExpeImpu
  loc_9D0D42: FStAdFunc var_88
  loc_9D0D45: FLdPr var_88
  loc_9D0D48:  = Me.Text
  loc_9D0D4D: LitI2_Byte 0
  loc_9D0D4F: PopTmpLdAd2 var_92
  loc_9D0D52: LitI2_Byte 0
  loc_9D0D54: PopTmpLdAd2 var_90
  loc_9D0D57: LitI2_Byte 0
  loc_9D0D59: PopTmpLdAd2 var_8E
  loc_9D0D5C: ILdRf var_8C
  loc_9D0D5F: LitStr "Expediente"
  loc_9D0D62: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9D0D67: FStStrNoPop var_98
  loc_9D0D6A: FLdPr Me
  loc_9D0D6D: MemStStrCopy
  loc_9D0D71: FFreeStr var_8C = ""
  loc_9D0D78: FFree1Ad var_88
  loc_9D0D7B: FLdPr Me
  loc_9D0D7E: VCallAd Control_ID_cboExpeImpu
  loc_9D0D81: FStAdFunc var_A4
  loc_9D0D84: LitNothing
  loc_9D0D86: CastAd
  loc_9D0D89: FStAdFunc var_A0
  loc_9D0D8C: FLdRfVar var_A0
  loc_9D0D8F: FLdZeroAd var_A4
  loc_9D0D92: FStAdFuncNoPop
  loc_9D0D95: CastAd
  loc_9D0D98: FStAdFunc var_9C
  loc_9D0D9B: FLdRfVar var_9C
  loc_9D0D9E: FLdPr Me
  loc_9D0DA1: MemLdRfVar from_stack_1.global_92
  loc_9D0DA4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D0DA9: IStI2 Cancel
  loc_9D0DAC: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9D0DB7: FLdPr Me
  loc_9D0DBA: VCallAd Control_ID_cboExpeImpu
  loc_9D0DBD: FStAdFunc var_A4
  loc_9D0DC0: LitNothing
  loc_9D0DC2: CastAd
  loc_9D0DC5: FStAdFunc var_A0
  loc_9D0DC8: FLdRfVar var_A0
  loc_9D0DCB: FLdZeroAd var_A4
  loc_9D0DCE: FStAdFuncNoPop
  loc_9D0DD1: CastAd
  loc_9D0DD4: FStAdFunc var_9C
  loc_9D0DD7: FLdRfVar var_9C
  loc_9D0DDA: FLdPr Me
  loc_9D0DDD: MemLdRfVar from_stack_1.global_92
  loc_9D0DE0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D0DE5: IStI2 Cancel
  loc_9D0DE8: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9D0DF3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A1D40
  'Data Table: 453D44
  loc_9A1CC8: LitI2_Byte 0
  loc_9A1CCA: FLdPr Me
  loc_9A1CCD: MemStI2 bGenerado
  loc_9A1CD0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A1CD5: ImpAdLdI2 MemVar_C3D064
  loc_9A1CD8: CStrUI1
  loc_9A1CDA: FStStrNoPop var_88
  loc_9A1CDD: FLdPr Me
  loc_9A1CE0: VCallAd Control_ID_cboPeriodo
  loc_9A1CE3: FStAdFunc var_8C
  loc_9A1CE6: FLdPr var_8C
  loc_9A1CE9: Me.Text = from_stack_1
  loc_9A1CEE: FFree1Str var_88
  loc_9A1CF1: FFree1Ad var_8C
  loc_9A1CF4: LitStr vbNullString
  loc_9A1CF7: FLdPr Me
  loc_9A1CFA: VCallAd Control_ID_cboExpeImpu
  loc_9A1CFD: FStAdFunc var_8C
  loc_9A1D00: FLdPr var_8C
  loc_9A1D03: Me.Text = from_stack_1
  loc_9A1D08: FFree1Ad var_8C
  loc_9A1D0B: LitVarStr var_9C, vbNullString
  loc_9A1D10: PopAdLdVar
  loc_9A1D11: FLdPr Me
  loc_9A1D14: VCallAd Control_ID_NumeDebiMsk
  loc_9A1D17: FStAdFunc var_8C
  loc_9A1D1A: FLdPr var_8C
  loc_9A1D1D: LateIdSt
  loc_9A1D22: FFree1Ad var_8C
  loc_9A1D25: Call HabilitarCriterio()
  loc_9A1D2A: ILdRf Me
  loc_9A1D2D: CastAd
  loc_9A1D30: FStAdFunc var_8C
  loc_9A1D33: FLdRfVar var_8C
  loc_9A1D36: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A1D3B: FFree1Ad var_8C
  loc_9A1D3E: ExitProcHresult
End Sub

Public Function bGeneradoGet() '454A1C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '454A2B
  bGenerado = Value
End Sub

Public Sub GeneraHTML() 'B02D44
  'Data Table: 453D44
  loc_B02588: FLdRfVar var_88
  loc_B0258B: LitI2_Byte 0
  loc_B0258D: LitI2_Byte &HFF
  loc_B0258F: ImpAdLdI4 MemVar_C3D83C
  loc_B02592: FLdPr Me
  loc_B02595: MemLdRfVar from_stack_1.global_64
  loc_B02598: NewIfNullPr IFileSystem3
  loc_B0259B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B025A0: ILdRf var_88
  loc_B025A3: FLdPr Me
  loc_B025A6: MemStVarAd
  loc_B025AA: FFree1Ad var_88
  loc_B025AD: Call Proc_251_17_A6491C()
  loc_B025B2: LitI2_Byte 1
  loc_B025B4: FLdPr Me
  loc_B025B7: MemLdRfVar from_stack_1.global_88
  loc_B025BA: FLdPr Me
  loc_B025BD: MemLdStr global_84
  loc_B025C0: LitI2_Byte 1
  loc_B025C2: FnUBound
  loc_B025C4: CI2I4
  loc_B025C5: ForI2 var_8C
  loc_B025CB: FLdPr Me
  loc_B025CE: MemLdI2 global_88
  loc_B025D1: LitI2_Byte 1
  loc_B025D3: NeI2
  loc_B025D4: BranchF loc_B025EB
  loc_B025D7: LitVarStr var_9C, "<div style=""page-break-before:always""></div>"
  loc_B025DC: PopAdLdVar
  loc_B025DD: FLdPr Me
  loc_B025E0: MemLdRfVar from_stack_1.global_68
  loc_B025E3: LdPrVar
  loc_B025E5: LateMemCall
  loc_B025EB: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B025F0: PopAdLdVar
  loc_B025F1: FLdPr Me
  loc_B025F4: MemLdRfVar from_stack_1.global_68
  loc_B025F7: LdPrVar
  loc_B025F9: LateMemCall
  loc_B025FF: LitVarStr var_9C, "  <tr valign=""baseline"">"
  loc_B02604: PopAdLdVar
  loc_B02605: FLdPr Me
  loc_B02608: MemLdRfVar from_stack_1.global_68
  loc_B0260B: LdPrVar
  loc_B0260D: LateMemCall
  loc_B02613: LitVarStr var_AC, "    <th colspan=""2"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_B02618: LitVarStr var_9C, "Municipalidad de Guaymallén"
  loc_B0261D: FStVarCopyObj var_BC
  loc_B02620: FLdRfVar var_BC
  loc_B02623: FLdRfVar var_CC
  loc_B02626: ImpAdCallFPR4  = Ucase()
  loc_B0262B: FLdRfVar var_CC
  loc_B0262E: ConcatVar var_DC
  loc_B02632: LitVarStr var_EC, "</th>"
  loc_B02637: ConcatVar var_FC
  loc_B0263B: PopAdLdVar
  loc_B0263C: FLdPr Me
  loc_B0263F: MemLdRfVar from_stack_1.global_68
  loc_B02642: LdPrVar
  loc_B02644: LateMemCall
  loc_B0264A: FFreeVar var_BC = "": var_CC = "": var_DC = ""
  loc_B02655: LitVarStr var_9C, "  </tr>"
  loc_B0265A: PopAdLdVar
  loc_B0265B: FLdPr Me
  loc_B0265E: MemLdRfVar from_stack_1.global_68
  loc_B02661: LdPrVar
  loc_B02663: LateMemCall
  loc_B02669: LitVarStr var_9C, "  <tr valign=""baseline"">"
  loc_B0266E: PopAdLdVar
  loc_B0266F: FLdPr Me
  loc_B02672: MemLdRfVar from_stack_1.global_68
  loc_B02675: LdPrVar
  loc_B02677: LateMemCall
  loc_B0267D: LitStr "    <th colspan=""2"" align=""center"" valign=""bottom"" class=""Titulo1""><br>DÉBITO N&deg; "
  loc_B02680: FLdPr Me
  loc_B02683: MemLdI2 global_88
  loc_B02686: CI4UI1
  loc_B02687: FLdPr Me
  loc_B0268A: MemLdStr global_84
  loc_B0268D: Ary1LdPr
  loc_B0268E: MemLdStr global_0
  loc_B02691: ConcatStr
  loc_B02692: FStStrNoPop var_110
  loc_B02695: LitStr "</th>"
  loc_B02698: ConcatStr
  loc_B02699: CVarStr var_BC
  loc_B0269C: PopAdLdVar
  loc_B0269D: FLdPr Me
  loc_B026A0: MemLdRfVar from_stack_1.global_68
  loc_B026A3: LdPrVar
  loc_B026A5: LateMemCall
  loc_B026AB: FFree1Str var_110
  loc_B026AE: FFree1Var var_BC = ""
  loc_B026B1: LitVarStr var_9C, "  </tr>"
  loc_B026B6: PopAdLdVar
  loc_B026B7: FLdPr Me
  loc_B026BA: MemLdRfVar from_stack_1.global_68
  loc_B026BD: LdPrVar
  loc_B026BF: LateMemCall
  loc_B026C5: LitVarStr var_9C, "  <tr valign=""baseline""><th colspan=""2"">"
  loc_B026CA: PopAdLdVar
  loc_B026CB: FLdPr Me
  loc_B026CE: MemLdRfVar from_stack_1.global_68
  loc_B026D1: LdPrVar
  loc_B026D3: LateMemCall
  loc_B026D9: LitVarStr var_9C, "    <table width=""100" & Chr(37) & """ align=""center"" border=""0""><tr class=""Titulo2"">"
  loc_B026DE: PopAdLdVar
  loc_B026DF: FLdPr Me
  loc_B026E2: MemLdRfVar from_stack_1.global_68
  loc_B026E5: LdPrVar
  loc_B026E7: LateMemCall
  loc_B026ED: LitStr "    <th width=""50" & Chr(37) & """ align=""left"">Fecha: "
  loc_B026F0: FLdPr Me
  loc_B026F3: MemLdI2 global_88
  loc_B026F6: CI4UI1
  loc_B026F7: FLdPr Me
  loc_B026FA: MemLdStr global_84
  loc_B026FD: Ary1LdPr
  loc_B026FE: MemLdStr global_4
  loc_B02701: ConcatStr
  loc_B02702: FStStrNoPop var_110
  loc_B02705: LitStr "</th>"
  loc_B02708: ConcatStr
  loc_B02709: CVarStr var_BC
  loc_B0270C: PopAdLdVar
  loc_B0270D: FLdPr Me
  loc_B02710: MemLdRfVar from_stack_1.global_68
  loc_B02713: LdPrVar
  loc_B02715: LateMemCall
  loc_B0271B: FFree1Str var_110
  loc_B0271E: FFree1Var var_BC = ""
  loc_B02721: LitStr "    <th align=""right"">Expediente: "
  loc_B02724: FLdPr Me
  loc_B02727: MemLdI2 global_88
  loc_B0272A: CI4UI1
  loc_B0272B: FLdPr Me
  loc_B0272E: MemLdStr global_84
  loc_B02731: Ary1LdPr
  loc_B02732: MemLdStr global_8
  loc_B02735: ConcatStr
  loc_B02736: FStStrNoPop var_110
  loc_B02739: LitStr "</th>"
  loc_B0273C: ConcatStr
  loc_B0273D: CVarStr var_BC
  loc_B02740: PopAdLdVar
  loc_B02741: FLdPr Me
  loc_B02744: MemLdRfVar from_stack_1.global_68
  loc_B02747: LdPrVar
  loc_B02749: LateMemCall
  loc_B0274F: FFree1Str var_110
  loc_B02752: FFree1Var var_BC = ""
  loc_B02755: LitVarStr var_9C, "    </tr></table></th>"
  loc_B0275A: PopAdLdVar
  loc_B0275B: FLdPr Me
  loc_B0275E: MemLdRfVar from_stack_1.global_68
  loc_B02761: LdPrVar
  loc_B02763: LateMemCall
  loc_B02769: LitVarStr var_9C, "  </tr>"
  loc_B0276E: PopAdLdVar
  loc_B0276F: FLdPr Me
  loc_B02772: MemLdRfVar from_stack_1.global_68
  loc_B02775: LdPrVar
  loc_B02777: LateMemCall
  loc_B0277D: LitVarStr var_9C, "  <tr valign=""baseline"">"
  loc_B02782: PopAdLdVar
  loc_B02783: FLdPr Me
  loc_B02786: MemLdRfVar from_stack_1.global_68
  loc_B02789: LdPrVar
  loc_B0278B: LateMemCall
  loc_B02791: LitVarStr var_9C, "    <th colspan=""2""><hr></th>"
  loc_B02796: PopAdLdVar
  loc_B02797: FLdPr Me
  loc_B0279A: MemLdRfVar from_stack_1.global_68
  loc_B0279D: LdPrVar
  loc_B0279F: LateMemCall
  loc_B027A5: LitVarStr var_9C, "  </tr>"
  loc_B027AA: PopAdLdVar
  loc_B027AB: FLdPr Me
  loc_B027AE: MemLdRfVar from_stack_1.global_68
  loc_B027B1: LdPrVar
  loc_B027B3: LateMemCall
  loc_B027B9: LitVarStr var_9C, "  <tr>"
  loc_B027BE: PopAdLdVar
  loc_B027BF: FLdPr Me
  loc_B027C2: MemLdRfVar from_stack_1.global_68
  loc_B027C5: LdPrVar
  loc_B027C7: LateMemCall
  loc_B027CD: LitVarStr var_9C, "    <td colspan=""2"" align=""left"">Débito en concepto de: </td>"
  loc_B027D2: PopAdLdVar
  loc_B027D3: FLdPr Me
  loc_B027D6: MemLdRfVar from_stack_1.global_68
  loc_B027D9: LdPrVar
  loc_B027DB: LateMemCall
  loc_B027E1: LitVarStr var_9C, "  </tr>"
  loc_B027E6: PopAdLdVar
  loc_B027E7: FLdPr Me
  loc_B027EA: MemLdRfVar from_stack_1.global_68
  loc_B027ED: LdPrVar
  loc_B027EF: LateMemCall
  loc_B027F5: LitVarStr var_9C, "  <tr>"
  loc_B027FA: PopAdLdVar
  loc_B027FB: FLdPr Me
  loc_B027FE: MemLdRfVar from_stack_1.global_68
  loc_B02801: LdPrVar
  loc_B02803: LateMemCall
  loc_B02809: LitStr "    <td colspan=""2"" align=""left"" class=""Normal"">"
  loc_B0280C: FLdPr Me
  loc_B0280F: MemLdI2 global_88
  loc_B02812: CI4UI1
  loc_B02813: FLdPr Me
  loc_B02816: MemLdStr global_84
  loc_B02819: Ary1LdPr
  loc_B0281A: MemLdStr global_32
  loc_B0281D: ConcatStr
  loc_B0281E: FStStrNoPop var_110
  loc_B02821: LitStr "</td>"
  loc_B02824: ConcatStr
  loc_B02825: CVarStr var_BC
  loc_B02828: PopAdLdVar
  loc_B02829: FLdPr Me
  loc_B0282C: MemLdRfVar from_stack_1.global_68
  loc_B0282F: LdPrVar
  loc_B02831: LateMemCall
  loc_B02837: FFree1Str var_110
  loc_B0283A: FFree1Var var_BC = ""
  loc_B0283D: LitVarStr var_9C, "  </tr>"
  loc_B02842: PopAdLdVar
  loc_B02843: FLdPr Me
  loc_B02846: MemLdRfVar from_stack_1.global_68
  loc_B02849: LdPrVar
  loc_B0284B: LateMemCall
  loc_B02851: LitVarStr var_9C, "  <tr valign=""baseline"">"
  loc_B02856: PopAdLdVar
  loc_B02857: FLdPr Me
  loc_B0285A: MemLdRfVar from_stack_1.global_68
  loc_B0285D: LdPrVar
  loc_B0285F: LateMemCall
  loc_B02865: LitVarStr var_9C, "    <th width=""23" & Chr(37) & """ align=""left"" valign=""top""><br>"
  loc_B0286A: PopAdLdVar
  loc_B0286B: FLdPr Me
  loc_B0286E: MemLdRfVar from_stack_1.global_68
  loc_B02871: LdPrVar
  loc_B02873: LateMemCall
  loc_B02879: LitVarStr var_9C, "    a&nbsp;favor&nbsp;de:</th>"
  loc_B0287E: PopAdLdVar
  loc_B0287F: FLdPr Me
  loc_B02882: MemLdRfVar from_stack_1.global_68
  loc_B02885: LdPrVar
  loc_B02887: LateMemCall
  loc_B0288D: LitVarStr var_9C, "    <th width=""77" & Chr(37) & """ align=""left"" valign=""bottom""></br>"
  loc_B02892: PopAdLdVar
  loc_B02893: FLdPr Me
  loc_B02896: MemLdRfVar from_stack_1.global_68
  loc_B02899: LdPrVar
  loc_B0289B: LateMemCall
  loc_B028A1: LitVarStr var_9C, "      <table border=""0"" cellspacing=""2"" align=""left"" class=""Normal"">"
  loc_B028A6: PopAdLdVar
  loc_B028A7: FLdPr Me
  loc_B028AA: MemLdRfVar from_stack_1.global_68
  loc_B028AD: LdPrVar
  loc_B028AF: LateMemCall
  loc_B028B5: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B028BA: PopAdLdVar
  loc_B028BB: FLdPr Me
  loc_B028BE: MemLdRfVar from_stack_1.global_68
  loc_B028C1: LdPrVar
  loc_B028C3: LateMemCall
  loc_B028C9: LitI4 0
  loc_B028CE: LitI4 0
  loc_B028D3: LitI2_Byte 0
  loc_B028D5: LitStr "right"
  loc_B028D8: FLdPr Me
  loc_B028DB: MemLdI2 global_88
  loc_B028DE: CI4UI1
  loc_B028DF: FLdPr Me
  loc_B028E2: MemLdStr global_84
  loc_B028E5: Ary1LdPr
  loc_B028E6: MemLdStr global_20
  loc_B028E9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B028EE: CVarStr var_BC
  loc_B028F1: PopAdLdVar
  loc_B028F2: FLdPr Me
  loc_B028F5: MemLdRfVar from_stack_1.global_68
  loc_B028F8: LdPrVar
  loc_B028FA: LateMemCall
  loc_B02900: FFree1Var var_BC = ""
  loc_B02903: LitI4 0
  loc_B02908: LitI4 0
  loc_B0290D: LitI2_Byte 0
  loc_B0290F: LitStr "left"
  loc_B02912: FLdPr Me
  loc_B02915: MemLdI2 global_88
  loc_B02918: CI4UI1
  loc_B02919: FLdPr Me
  loc_B0291C: MemLdStr global_84
  loc_B0291F: Ary1LdPr
  loc_B02920: MemLdStr global_24
  loc_B02923: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B02928: CVarStr var_BC
  loc_B0292B: PopAdLdVar
  loc_B0292C: FLdPr Me
  loc_B0292F: MemLdRfVar from_stack_1.global_68
  loc_B02932: LdPrVar
  loc_B02934: LateMemCall
  loc_B0293A: FFree1Var var_BC = ""
  loc_B0293D: LitVarStr var_9C, "     </tr>"
  loc_B02942: PopAdLdVar
  loc_B02943: FLdPr Me
  loc_B02946: MemLdRfVar from_stack_1.global_68
  loc_B02949: LdPrVar
  loc_B0294B: LateMemCall
  loc_B02951: LitVarStr var_9C, "    </table></th>"
  loc_B02956: PopAdLdVar
  loc_B02957: FLdPr Me
  loc_B0295A: MemLdRfVar from_stack_1.global_68
  loc_B0295D: LdPrVar
  loc_B0295F: LateMemCall
  loc_B02965: LitVarStr var_9C, "  </tr>"
  loc_B0296A: PopAdLdVar
  loc_B0296B: FLdPr Me
  loc_B0296E: MemLdRfVar from_stack_1.global_68
  loc_B02971: LdPrVar
  loc_B02973: LateMemCall
  loc_B02979: LitVarStr var_9C, "  <tr valign=""baseline"">"
  loc_B0297E: PopAdLdVar
  loc_B0297F: FLdPr Me
  loc_B02982: MemLdRfVar from_stack_1.global_68
  loc_B02985: LdPrVar
  loc_B02987: LateMemCall
  loc_B0298D: LitStr "    <th colspan=""2"" align=""left"" valign=""top""><br><p>Por la cantidad de pesos: "
  loc_B02990: FLdPr Me
  loc_B02993: MemLdI2 global_88
  loc_B02996: CI4UI1
  loc_B02997: FLdPr Me
  loc_B0299A: MemLdStr global_84
  loc_B0299D: Ary1LdPr
  loc_B0299E: MemLdStr global_28
  loc_B029A1: CR8Str
  loc_B029A3: PopFPR8
  loc_B029A4: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_B029A9: FStStrNoPop var_110
  loc_B029AC: ConcatStr
  loc_B029AD: FStStrNoPop var_114
  loc_B029B0: LitStr ".-</p></th>"
  loc_B029B3: ConcatStr
  loc_B029B4: CVarStr var_BC
  loc_B029B7: PopAdLdVar
  loc_B029B8: FLdPr Me
  loc_B029BB: MemLdRfVar from_stack_1.global_68
  loc_B029BE: LdPrVar
  loc_B029C0: LateMemCall
  loc_B029C6: FFreeStr var_110 = ""
  loc_B029CD: FFree1Var var_BC = ""
  loc_B029D0: LitVarStr var_9C, "  </tr>"
  loc_B029D5: PopAdLdVar
  loc_B029D6: FLdPr Me
  loc_B029D9: MemLdRfVar from_stack_1.global_68
  loc_B029DC: LdPrVar
  loc_B029DE: LateMemCall
  loc_B029E4: LitVarStr var_9C, "</table>"
  loc_B029E9: PopAdLdVar
  loc_B029EA: FLdPr Me
  loc_B029ED: MemLdRfVar from_stack_1.global_68
  loc_B029F0: LdPrVar
  loc_B029F2: LateMemCall
  loc_B029F8: LitVarStr var_9C, "<br>"
  loc_B029FD: PopAdLdVar
  loc_B029FE: FLdPr Me
  loc_B02A01: MemLdRfVar from_stack_1.global_68
  loc_B02A04: LdPrVar
  loc_B02A06: LateMemCall
  loc_B02A0C: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_B02A11: PopAdLdVar
  loc_B02A12: FLdPr Me
  loc_B02A15: MemLdRfVar from_stack_1.global_68
  loc_B02A18: LdPrVar
  loc_B02A1A: LateMemCall
  loc_B02A20: LitVarStr var_9C, "  <tr valign=""top"" align=""center"" class=""Encabezado"">"
  loc_B02A25: PopAdLdVar
  loc_B02A26: FLdPr Me
  loc_B02A29: MemLdRfVar from_stack_1.global_68
  loc_B02A2C: LdPrVar
  loc_B02A2E: LateMemCall
  loc_B02A34: LitVarStr var_9C, "        <th colspan=""2"">Acreedor</th>"
  loc_B02A39: PopAdLdVar
  loc_B02A3A: FLdPr Me
  loc_B02A3D: MemLdRfVar from_stack_1.global_68
  loc_B02A40: LdPrVar
  loc_B02A42: LateMemCall
  loc_B02A48: LitVarStr var_9C, "        <th>Detalle</th>"
  loc_B02A4D: PopAdLdVar
  loc_B02A4E: FLdPr Me
  loc_B02A51: MemLdRfVar from_stack_1.global_68
  loc_B02A54: LdPrVar
  loc_B02A56: LateMemCall
  loc_B02A5C: LitVarStr var_9C, "        <th>Cuenta Contable</th>"
  loc_B02A61: PopAdLdVar
  loc_B02A62: FLdPr Me
  loc_B02A65: MemLdRfVar from_stack_1.global_68
  loc_B02A68: LdPrVar
  loc_B02A6A: LateMemCall
  loc_B02A70: LitVarStr var_9C, "        <th>Débito N&deg;</th>"
  loc_B02A75: PopAdLdVar
  loc_B02A76: FLdPr Me
  loc_B02A79: MemLdRfVar from_stack_1.global_68
  loc_B02A7C: LdPrVar
  loc_B02A7E: LateMemCall
  loc_B02A84: LitVarStr var_9C, "        <th>Factura</th>"
  loc_B02A89: PopAdLdVar
  loc_B02A8A: FLdPr Me
  loc_B02A8D: MemLdRfVar from_stack_1.global_68
  loc_B02A90: LdPrVar
  loc_B02A92: LateMemCall
  loc_B02A98: LitVarStr var_9C, "        <th>Importe</th>"
  loc_B02A9D: PopAdLdVar
  loc_B02A9E: FLdPr Me
  loc_B02AA1: MemLdRfVar from_stack_1.global_68
  loc_B02AA4: LdPrVar
  loc_B02AA6: LateMemCall
  loc_B02AAC: LitVarStr var_9C, "  </tr>"
  loc_B02AB1: PopAdLdVar
  loc_B02AB2: FLdPr Me
  loc_B02AB5: MemLdRfVar from_stack_1.global_68
  loc_B02AB8: LdPrVar
  loc_B02ABA: LateMemCall
  loc_B02AC0: FLdPr Me
  loc_B02AC3: MemLdI2 global_88
  loc_B02AC6: CI4UI1
  loc_B02AC7: FLdPr Me
  loc_B02ACA: MemLdStr global_84
  loc_B02ACD: AryLock
  loc_B02AD0: Ary1LdRf
  loc_B02AD1: FStR4 var_11C
  loc_B02AD4: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B02AD9: PopAdLdVar
  loc_B02ADA: FLdPr Me
  loc_B02ADD: MemLdRfVar from_stack_1.global_68
  loc_B02AE0: LdPrVar
  loc_B02AE2: LateMemCall
  loc_B02AE8: LitI4 0
  loc_B02AED: LitI4 0
  loc_B02AF2: LitI2_Byte 0
  loc_B02AF4: LitStr "right"
  loc_B02AF7: FMemLdR4 var_11C(20)
  loc_B02AFC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B02B01: CVarStr var_BC
  loc_B02B04: PopAdLdVar
  loc_B02B05: FLdPr Me
  loc_B02B08: MemLdRfVar from_stack_1.global_68
  loc_B02B0B: LdPrVar
  loc_B02B0D: LateMemCall
  loc_B02B13: FFree1Var var_BC = ""
  loc_B02B16: LitI4 0
  loc_B02B1B: LitI4 0
  loc_B02B20: LitI2_Byte 0
  loc_B02B22: LitStr "left"
  loc_B02B25: FMemLdR4 var_11C(24)
  loc_B02B2A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B02B2F: CVarStr var_BC
  loc_B02B32: PopAdLdVar
  loc_B02B33: FLdPr Me
  loc_B02B36: MemLdRfVar from_stack_1.global_68
  loc_B02B39: LdPrVar
  loc_B02B3B: LateMemCall
  loc_B02B41: FFree1Var var_BC = ""
  loc_B02B44: LitI4 0
  loc_B02B49: LitI4 0
  loc_B02B4E: LitI2_Byte 0
  loc_B02B50: LitStr "left"
  loc_B02B53: FMemLdR4 var_11C(32)
  loc_B02B58: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B02B5D: CVarStr var_BC
  loc_B02B60: PopAdLdVar
  loc_B02B61: FLdPr Me
  loc_B02B64: MemLdRfVar from_stack_1.global_68
  loc_B02B67: LdPrVar
  loc_B02B69: LateMemCall
  loc_B02B6F: FFree1Var var_BC = ""
  loc_B02B72: LitI4 0
  loc_B02B77: LitI4 0
  loc_B02B7C: LitI2_Byte 0
  loc_B02B7E: LitStr "right"
  loc_B02B81: FMemLdR4 var_11C(12)
  loc_B02B86: LitStr "<br>"
  loc_B02B89: ConcatStr
  loc_B02B8A: FStStrNoPop var_110
  loc_B02B8D: FMemLdR4 var_11C(16)
  loc_B02B92: ConcatStr
  loc_B02B93: FStStrNoPop var_114
  loc_B02B96: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B02B9B: CVarStr var_BC
  loc_B02B9E: PopAdLdVar
  loc_B02B9F: FLdPr Me
  loc_B02BA2: MemLdRfVar from_stack_1.global_68
  loc_B02BA5: LdPrVar
  loc_B02BA7: LateMemCall
  loc_B02BAD: FFreeStr var_110 = ""
  loc_B02BB4: FFree1Var var_BC = ""
  loc_B02BB7: LitI4 0
  loc_B02BBC: LitI4 0
  loc_B02BC1: LitI2_Byte 0
  loc_B02BC3: LitStr "right"
  loc_B02BC6: FMemLdR4 var_11C(0)
  loc_B02BCB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B02BD0: CVarStr var_BC
  loc_B02BD3: PopAdLdVar
  loc_B02BD4: FLdPr Me
  loc_B02BD7: MemLdRfVar from_stack_1.global_68
  loc_B02BDA: LdPrVar
  loc_B02BDC: LateMemCall
  loc_B02BE2: FFree1Var var_BC = ""
  loc_B02BE5: LitI4 0
  loc_B02BEA: LitI4 0
  loc_B02BEF: LitI2_Byte 0
  loc_B02BF1: LitStr "left"
  loc_B02BF4: FMemLdR4 var_11C(36)
  loc_B02BF9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B02BFE: CVarStr var_BC
  loc_B02C01: PopAdLdVar
  loc_B02C02: FLdPr Me
  loc_B02C05: MemLdRfVar from_stack_1.global_68
  loc_B02C08: LdPrVar
  loc_B02C0A: LateMemCall
  loc_B02C10: FFree1Var var_BC = ""
  loc_B02C13: LitI4 0
  loc_B02C18: LitI4 0
  loc_B02C1D: LitI2_Byte 0
  loc_B02C1F: LitStr "right"
  loc_B02C22: FMemLdR4 var_11C(28)
  loc_B02C27: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B02C2C: CVarStr var_BC
  loc_B02C2F: PopAdLdVar
  loc_B02C30: FLdPr Me
  loc_B02C33: MemLdRfVar from_stack_1.global_68
  loc_B02C36: LdPrVar
  loc_B02C38: LateMemCall
  loc_B02C3E: FFree1Var var_BC = ""
  loc_B02C41: LitVarStr var_9C, "    </tr>"
  loc_B02C46: PopAdLdVar
  loc_B02C47: FLdPr Me
  loc_B02C4A: MemLdRfVar from_stack_1.global_68
  loc_B02C4D: LdPrVar
  loc_B02C4F: LateMemCall
  loc_B02C55: LitI4 0
  loc_B02C5A: FStR4 var_11C
  loc_B02C5D: AryUnlock
  loc_B02C60: LitVarStr var_9C, " <tr align=""right"" class=""Titulo2"">"
  loc_B02C65: PopAdLdVar
  loc_B02C66: FLdPr Me
  loc_B02C69: MemLdRfVar from_stack_1.global_68
  loc_B02C6C: LdPrVar
  loc_B02C6E: LateMemCall
  loc_B02C74: LitVarStr var_9C, "   <th colspan=""6"">TOTAL DE DEBITOS</th>"
  loc_B02C79: PopAdLdVar
  loc_B02C7A: FLdPr Me
  loc_B02C7D: MemLdRfVar from_stack_1.global_68
  loc_B02C80: LdPrVar
  loc_B02C82: LateMemCall
  loc_B02C88: LitStr "   <th>"
  loc_B02C8B: FLdPr Me
  loc_B02C8E: MemLdI2 global_88
  loc_B02C91: CI4UI1
  loc_B02C92: FLdPr Me
  loc_B02C95: MemLdStr global_84
  loc_B02C98: Ary1LdPr
  loc_B02C99: MemLdStr global_28
  loc_B02C9C: ConcatStr
  loc_B02C9D: FStStrNoPop var_110
  loc_B02CA0: LitStr "</th>"
  loc_B02CA3: ConcatStr
  loc_B02CA4: CVarStr var_BC
  loc_B02CA7: PopAdLdVar
  loc_B02CA8: FLdPr Me
  loc_B02CAB: MemLdRfVar from_stack_1.global_68
  loc_B02CAE: LdPrVar
  loc_B02CB0: LateMemCall
  loc_B02CB6: FFree1Str var_110
  loc_B02CB9: FFree1Var var_BC = ""
  loc_B02CBC: LitVarStr var_9C, "  </tr>"
  loc_B02CC1: PopAdLdVar
  loc_B02CC2: FLdPr Me
  loc_B02CC5: MemLdRfVar from_stack_1.global_68
  loc_B02CC8: LdPrVar
  loc_B02CCA: LateMemCall
  loc_B02CD0: LitVarStr var_9C, "</table>"
  loc_B02CD5: PopAdLdVar
  loc_B02CD6: FLdPr Me
  loc_B02CD9: MemLdRfVar from_stack_1.global_68
  loc_B02CDC: LdPrVar
  loc_B02CDE: LateMemCall
  loc_B02CE4: LitVarStr var_9C, "<br>"
  loc_B02CE9: PopAdLdVar
  loc_B02CEA: FLdPr Me
  loc_B02CED: MemLdRfVar from_stack_1.global_68
  loc_B02CF0: LdPrVar
  loc_B02CF2: LateMemCall
  loc_B02CF8: LitVarStr var_9C, "  </tr>"
  loc_B02CFD: PopAdLdVar
  loc_B02CFE: FLdPr Me
  loc_B02D01: MemLdRfVar from_stack_1.global_68
  loc_B02D04: LdPrVar
  loc_B02D06: LateMemCall
  loc_B02D0C: LitVarStr var_9C, "</table>"
  loc_B02D11: PopAdLdVar
  loc_B02D12: FLdPr Me
  loc_B02D15: MemLdRfVar from_stack_1.global_68
  loc_B02D18: LdPrVar
  loc_B02D1A: LateMemCall
  loc_B02D20: FLdPr Me
  loc_B02D23: MemLdRfVar from_stack_1.global_88
  loc_B02D26: NextI2 var_8C, loc_B025CB
  loc_B02D2B: Call Proc_251_18_9749D0()
  loc_B02D30: FLdPr Me
  loc_B02D33: MemLdRfVar from_stack_1.global_68
  loc_B02D36: LdPrVar
  loc_B02D38: LateMemCall
  loc_B02D3E: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B02D43: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AD3BBC
  'Data Table: 453D44
  loc_AD357C: FLdPr Me
  loc_AD357F: MemLdI2 bGenerado
  loc_AD3582: BranchF loc_AD3586
  loc_AD3585: ExitProcHresult
  loc_AD3586: LitVarStr var_9C, "Generando reporte..."
  loc_AD358B: PopAdLdVar
  loc_AD358C: FLdPr Me
  loc_AD358F: VCallAd Control_ID_statusBar
  loc_AD3592: FStAdFunc var_B0
  loc_AD3595: FLdPr var_B0
  loc_AD3598: LateIdSt
  loc_AD359D: FFree1Ad var_B0
  loc_AD35A0: LitI4 &HB
  loc_AD35A5: CI2I4
  loc_AD35A6: FLdPr Me
  loc_AD35A9: Me.MousePointer = from_stack_1
  loc_AD35AE: LitStr vbNullString
  loc_AD35B1: FLdPr Me
  loc_AD35B4: MemStStrCopy
  loc_AD35B8: LitI2_Byte 0
  loc_AD35BA: PopTmpLdAd2 var_B2
  loc_AD35BD: Call cboExpeImpu_Validate(from_stack_1v)
  loc_AD35C2: FLdPr Me
  loc_AD35C5: MemLdStr global_92
  loc_AD35C8: LitStr vbNullString
  loc_AD35CB: NeStr
  loc_AD35CD: BranchF loc_AD35D3
  loc_AD35D0: Branch loc_AD3B93
  loc_AD35D3: FLdRfVar var_B8
  loc_AD35D6: FLdPr Me
  loc_AD35D9: VCallAd Control_ID_cboExpeImpu
  loc_AD35DC: FStAdFunc var_B0
  loc_AD35DF: FLdPr var_B0
  loc_AD35E2:  = Me.Text
  loc_AD35E7: FLdRfVar var_C0
  loc_AD35EA: FLdPr Me
  loc_AD35ED: VCallAd Control_ID_cboExpeImpu
  loc_AD35F0: FStAdFunc var_BC
  loc_AD35F3: FLdPr var_BC
  loc_AD35F6:  = Me.Text
  loc_AD35FB: LitVarStr var_AC, vbNullString
  loc_AD3600: FStVarCopyObj var_E4
  loc_AD3603: FLdRfVar var_E4
  loc_AD3606: LitStr " AND debito.ExpeImpu = '"
  loc_AD3609: ILdRf var_C0
  loc_AD360C: ConcatStr
  loc_AD360D: FStStrNoPop var_C4
  loc_AD3610: LitStr "'"
  loc_AD3613: ConcatStr
  loc_AD3614: CVarStr var_D4
  loc_AD3617: ILdRf var_B8
  loc_AD361A: LitStr vbNullString
  loc_AD361D: NeStr
  loc_AD361F: CVarBoolI2 var_9C
  loc_AD3623: FLdRfVar var_F4
  loc_AD3626: ImpAdCallFPR4  = IIf(, , )
  loc_AD362B: FLdRfVar var_F4
  loc_AD362E: CStrVarTmp
  loc_AD362F: FStStr var_88
  loc_AD3632: FFreeStr var_B8 = "": var_C0 = ""
  loc_AD363B: FFreeAd var_B0 = ""
  loc_AD3642: FFreeVar var_9C = "": var_D4 = "": var_E4 = ""
  loc_AD364D: FLdPr Me
  loc_AD3650: VCallAd Control_ID_NumeDebiMsk
  loc_AD3653: FStAdFunc var_B0
  loc_AD3656: FLdPr var_B0
  loc_AD3659: LateIdLdVar var_D4 DispID_22 0
  loc_AD3660: PopAd
  loc_AD3662: FLdPr Me
  loc_AD3665: VCallAd Control_ID_NumeDebiMsk
  loc_AD3668: FStAdFunc var_BC
  loc_AD366B: FLdPr var_BC
  loc_AD366E: LateIdLdVar var_E4 DispID_22 0
  loc_AD3675: PopAd
  loc_AD3677: LitVarStr var_AC, vbNullString
  loc_AD367C: FStVarCopyObj var_104
  loc_AD367F: FLdRfVar var_104
  loc_AD3682: LitStr " AND debito.NumeDebi = "
  loc_AD3685: FLdRfVar var_E4
  loc_AD3688: CStrVarTmp
  loc_AD3689: FStStrNoPop var_C0
  loc_AD368C: ConcatStr
  loc_AD368D: CVarStr var_F4
  loc_AD3690: FLdRfVar var_D4
  loc_AD3693: CStrVarTmp
  loc_AD3694: FStStrNoPop var_B8
  loc_AD3697: LitStr vbNullString
  loc_AD369A: NeStr
  loc_AD369C: CVarBoolI2 var_9C
  loc_AD36A0: FLdRfVar var_114
  loc_AD36A3: ImpAdCallFPR4  = IIf(, , )
  loc_AD36A8: FLdRfVar var_114
  loc_AD36AB: CStrVarTmp
  loc_AD36AC: FStStr var_8C
  loc_AD36AF: FFreeStr var_B8 = ""
  loc_AD36B6: FFreeAd var_B0 = ""
  loc_AD36BD: FFreeVar var_D4 = "": var_E4 = "": var_9C = "": var_F4 = "": var_104 = ""
  loc_AD36CC: LitStr "SELECT debito.*, DetaCuco, DetaProv"
  loc_AD36CF: LitStr " FROM debito"
  loc_AD36D2: ConcatStr
  loc_AD36D3: FStStrNoPop var_B8
  loc_AD36D6: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = debito.PeriInfo AND cc.CodiCuco = debito.CodiCuco"
  loc_AD36D9: ConcatStr
  loc_AD36DA: FStStrNoPop var_C0
  loc_AD36DD: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = debito.CucuPers"
  loc_AD36E0: ConcatStr
  loc_AD36E1: FStStrNoPop var_C4
  loc_AD36E4: LitStr " WHERE debito.PeriInfo = "
  loc_AD36E7: ConcatStr
  loc_AD36E8: FStStrNoPop var_11C
  loc_AD36EB: FLdRfVar var_118
  loc_AD36EE: FLdPr Me
  loc_AD36F1: VCallAd Control_ID_cboPeriodo
  loc_AD36F4: FStAdFunc var_B0
  loc_AD36F7: FLdPr var_B0
  loc_AD36FA:  = Me.Text
  loc_AD36FF: ILdRf var_118
  loc_AD3702: ConcatStr
  loc_AD3703: FStStrNoPop var_120
  loc_AD3706: LitStr " AND FeanDebi IS NULL"
  loc_AD3709: ConcatStr
  loc_AD370A: FStStrNoPop var_124
  loc_AD370D: ILdRf var_88
  loc_AD3710: ConcatStr
  loc_AD3711: FStStrNoPop var_128
  loc_AD3714: ILdRf var_8C
  loc_AD3717: ConcatStr
  loc_AD3718: FStStrNoPop var_12C
  loc_AD371B: LitStr " ORDER BY NumeDebi"
  loc_AD371E: ConcatStr
  loc_AD371F: FStStrNoPop var_130
  loc_AD3722: FLdPr Me
  loc_AD3725: MemLdRfVar from_stack_1.global_60
  loc_AD3728: NewIfNullPr clsbase
  loc_AD372B: Call clsbase.RedefineRS(from_stack_1v)
  loc_AD3730: FFreeStr var_B8 = "": var_C0 = "": var_C4 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_AD3747: FFree1Ad var_B0
  loc_AD374A: FLdRfVar var_134
  loc_AD374D: FLdPr Me
  loc_AD3750: MemLdRfVar from_stack_1.global_60
  loc_AD3753: NewIfNullPr clsbase
  loc_AD3756: from_stack_1 = clsbase.RecordCount
  loc_AD375B: ILdRf var_134
  loc_AD375E: LitI4 0
  loc_AD3763: EqI4
  loc_AD3764: BranchF loc_AD377A
  loc_AD3767: LitI4 0
  loc_AD376C: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AD376F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD3774: Branch loc_AD3B93
  loc_AD3777: Branch loc_AD3B8B
  loc_AD377A: FLdPr Me
  loc_AD377D: MemLdRfVar from_stack_1.global_60
  loc_AD3780: NewIfNullPr clsbase
  loc_AD3783: Call clsbase.MoveFirst()
  loc_AD3788: LitI4 0
  loc_AD378D: LitI4 1
  loc_AD3792: FLdPr Me
  loc_AD3795: MemLdRfVar from_stack_1.global_84
  loc_AD3798: Redim
  loc_AD37A2: LitI2_Byte 1
  loc_AD37A4: FLdPr Me
  loc_AD37A7: MemLdRfVar from_stack_1.global_88
  loc_AD37AA: FLdRfVar var_134
  loc_AD37AD: FLdPr Me
  loc_AD37B0: MemLdRfVar from_stack_1.global_60
  loc_AD37B3: NewIfNullPr clsbase
  loc_AD37B6: from_stack_1 = clsbase.RecordCount
  loc_AD37BB: ILdRf var_134
  loc_AD37BE: CI2I4
  loc_AD37BF: ForI2 var_138
  loc_AD37C5: LitI4 0
  loc_AD37CA: FLdPr Me
  loc_AD37CD: MemLdI2 global_88
  loc_AD37D0: CI4UI1
  loc_AD37D1: FLdPr Me
  loc_AD37D4: MemLdRfVar from_stack_1.global_84
  loc_AD37D7: RedimPreserve
  loc_AD37E1: FLdPr Me
  loc_AD37E4: MemLdI2 global_88
  loc_AD37E7: CI4UI1
  loc_AD37E8: FLdPr Me
  loc_AD37EB: MemLdStr global_84
  loc_AD37EE: AryLock
  loc_AD37F1: Ary1LdRf
  loc_AD37F2: FStR4 var_140
  loc_AD37F5: FLdRfVar var_144
  loc_AD37F8: LitVarStr var_9C, "NumeDebi"
  loc_AD37FD: PopAdLdVar
  loc_AD37FE: FLdRfVar var_BC
  loc_AD3801: FLdRfVar var_B0
  loc_AD3804: FLdPr Me
  loc_AD3807: MemLdRfVar from_stack_1.global_60
  loc_AD380A: NewIfNullPr clsbase
  loc_AD380D: from_stack_1v = clsbase.RsFrmGet()
  loc_AD3812: FLdPr var_B0
  loc_AD3815:  = Me.Fields
  loc_AD381A: FLdPr var_BC
  loc_AD381D: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3822: LitI2_Byte 0
  loc_AD3824: LitVar_Missing var_E4
  loc_AD3827: LitI2_Byte 0
  loc_AD3829: FLdZeroAd var_144
  loc_AD382C: CVarAd
  loc_AD3830: PopAdLdVar
  loc_AD3831: FMemLdRf ext_4010A8
  loc_AD3836: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD383B: FFreeAd var_B0 = ""
  loc_AD3842: FFreeVar var_D4 = ""
  loc_AD3849: FLdRfVar var_144
  loc_AD384C: LitVarStr var_9C, "FechDebi"
  loc_AD3851: PopAdLdVar
  loc_AD3852: FLdRfVar var_BC
  loc_AD3855: FLdRfVar var_B0
  loc_AD3858: FLdPr Me
  loc_AD385B: MemLdRfVar from_stack_1.global_60
  loc_AD385E: NewIfNullPr clsbase
  loc_AD3861: from_stack_1v = clsbase.RsFrmGet()
  loc_AD3866: FLdPr var_B0
  loc_AD3869:  = Me.Fields
  loc_AD386E: FLdPr var_BC
  loc_AD3871: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3876: LitI4 1
  loc_AD387B: LitI4 1
  loc_AD3880: LitVarStr var_AC, "dd/mm/yyyy"
  loc_AD3885: FStVarCopyObj var_E4
  loc_AD3888: FLdRfVar var_E4
  loc_AD388B: FLdZeroAd var_144
  loc_AD388E: CVarAd
  loc_AD3892: ImpAdCallI2 Format$(, )
  loc_AD3897: FStStr var_B8
  loc_AD389A: LitI2_Byte 0
  loc_AD389C: LitVar_Missing var_104
  loc_AD389F: LitI2_Byte 0
  loc_AD38A1: FLdZeroAd var_B8
  loc_AD38A4: CVarStr var_F4
  loc_AD38A7: PopAdLdVar
  loc_AD38A8: FMemLdRf ext_4010A8
  loc_AD38AD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD38B2: FFree1Str var_B8
  loc_AD38B5: FFreeAd var_B0 = ""
  loc_AD38BC: FFreeVar var_D4 = "": var_E4 = "": var_F4 = ""
  loc_AD38C7: FLdRfVar var_144
  loc_AD38CA: LitVarStr var_9C, "ExpeImpu"
  loc_AD38CF: PopAdLdVar
  loc_AD38D0: FLdRfVar var_BC
  loc_AD38D3: FLdRfVar var_B0
  loc_AD38D6: FLdPr Me
  loc_AD38D9: MemLdRfVar from_stack_1.global_60
  loc_AD38DC: NewIfNullPr clsbase
  loc_AD38DF: from_stack_1v = clsbase.RsFrmGet()
  loc_AD38E4: FLdPr var_B0
  loc_AD38E7:  = Me.Fields
  loc_AD38EC: FLdPr var_BC
  loc_AD38EF: from_stack_2 = Me.Item(from_stack_1)
  loc_AD38F4: LitI2_Byte 0
  loc_AD38F6: LitVar_Missing var_E4
  loc_AD38F9: LitI2_Byte 0
  loc_AD38FB: FLdZeroAd var_144
  loc_AD38FE: CVarAd
  loc_AD3902: PopAdLdVar
  loc_AD3903: FMemLdRf ext_4010A8
  loc_AD3908: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD390D: FFreeAd var_B0 = ""
  loc_AD3914: FFreeVar var_D4 = ""
  loc_AD391B: FLdRfVar var_144
  loc_AD391E: LitVarStr var_9C, "CodiCuco"
  loc_AD3923: PopAdLdVar
  loc_AD3924: FLdRfVar var_BC
  loc_AD3927: FLdRfVar var_B0
  loc_AD392A: FLdPr Me
  loc_AD392D: MemLdRfVar from_stack_1.global_60
  loc_AD3930: NewIfNullPr clsbase
  loc_AD3933: from_stack_1v = clsbase.RsFrmGet()
  loc_AD3938: FLdPr var_B0
  loc_AD393B:  = Me.Fields
  loc_AD3940: FLdPr var_BC
  loc_AD3943: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3948: LitI2_Byte 0
  loc_AD394A: LitVar_Missing var_E4
  loc_AD394D: LitI2_Byte 0
  loc_AD394F: FLdZeroAd var_144
  loc_AD3952: CVarAd
  loc_AD3956: PopAdLdVar
  loc_AD3957: FMemLdRf ext_4010A8
  loc_AD395C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD3961: FFreeAd var_B0 = ""
  loc_AD3968: FFreeVar var_D4 = ""
  loc_AD396F: FLdRfVar var_144
  loc_AD3972: LitVarStr var_9C, "DetaCuco"
  loc_AD3977: PopAdLdVar
  loc_AD3978: FLdRfVar var_BC
  loc_AD397B: FLdRfVar var_B0
  loc_AD397E: FLdPr Me
  loc_AD3981: MemLdRfVar from_stack_1.global_60
  loc_AD3984: NewIfNullPr clsbase
  loc_AD3987: from_stack_1v = clsbase.RsFrmGet()
  loc_AD398C: FLdPr var_B0
  loc_AD398F:  = Me.Fields
  loc_AD3994: FLdPr var_BC
  loc_AD3997: from_stack_2 = Me.Item(from_stack_1)
  loc_AD399C: LitI2_Byte 0
  loc_AD399E: LitVar_Missing var_E4
  loc_AD39A1: LitI2_Byte 0
  loc_AD39A3: FLdZeroAd var_144
  loc_AD39A6: CVarAd
  loc_AD39AA: PopAdLdVar
  loc_AD39AB: FMemLdRf ext_4010A8
  loc_AD39B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD39B5: FFreeAd var_B0 = ""
  loc_AD39BC: FFreeVar var_D4 = ""
  loc_AD39C3: FLdRfVar var_144
  loc_AD39C6: LitVarStr var_9C, "CucuPers"
  loc_AD39CB: PopAdLdVar
  loc_AD39CC: FLdRfVar var_BC
  loc_AD39CF: FLdRfVar var_B0
  loc_AD39D2: FLdPr Me
  loc_AD39D5: MemLdRfVar from_stack_1.global_60
  loc_AD39D8: NewIfNullPr clsbase
  loc_AD39DB: from_stack_1v = clsbase.RsFrmGet()
  loc_AD39E0: FLdPr var_B0
  loc_AD39E3:  = Me.Fields
  loc_AD39E8: FLdPr var_BC
  loc_AD39EB: from_stack_2 = Me.Item(from_stack_1)
  loc_AD39F0: LitI2_Byte 0
  loc_AD39F2: LitVar_Missing var_E4
  loc_AD39F5: LitI2_Byte 0
  loc_AD39F7: FLdZeroAd var_144
  loc_AD39FA: CVarAd
  loc_AD39FE: PopAdLdVar
  loc_AD39FF: FMemLdRf ext_4010A8
  loc_AD3A04: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD3A09: FFreeAd var_B0 = ""
  loc_AD3A10: FFreeVar var_D4 = ""
  loc_AD3A17: FLdRfVar var_144
  loc_AD3A1A: LitVarStr var_9C, "DetaProv"
  loc_AD3A1F: PopAdLdVar
  loc_AD3A20: FLdRfVar var_BC
  loc_AD3A23: FLdRfVar var_B0
  loc_AD3A26: FLdPr Me
  loc_AD3A29: MemLdRfVar from_stack_1.global_60
  loc_AD3A2C: NewIfNullPr clsbase
  loc_AD3A2F: from_stack_1v = clsbase.RsFrmGet()
  loc_AD3A34: FLdPr var_B0
  loc_AD3A37:  = Me.Fields
  loc_AD3A3C: FLdPr var_BC
  loc_AD3A3F: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3A44: LitI2_Byte 0
  loc_AD3A46: LitVar_Missing var_E4
  loc_AD3A49: LitI2_Byte 0
  loc_AD3A4B: FLdZeroAd var_144
  loc_AD3A4E: CVarAd
  loc_AD3A52: PopAdLdVar
  loc_AD3A53: FMemLdRf ext_4010A8
  loc_AD3A58: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD3A5D: FFreeAd var_B0 = ""
  loc_AD3A64: FFreeVar var_D4 = ""
  loc_AD3A6B: FLdRfVar var_144
  loc_AD3A6E: LitVarStr var_9C, "DetaDebi"
  loc_AD3A73: PopAdLdVar
  loc_AD3A74: FLdRfVar var_BC
  loc_AD3A77: FLdRfVar var_B0
  loc_AD3A7A: FLdPr Me
  loc_AD3A7D: MemLdRfVar from_stack_1.global_60
  loc_AD3A80: NewIfNullPr clsbase
  loc_AD3A83: from_stack_1v = clsbase.RsFrmGet()
  loc_AD3A88: FLdPr var_B0
  loc_AD3A8B:  = Me.Fields
  loc_AD3A90: FLdPr var_BC
  loc_AD3A93: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3A98: LitI2_Byte 0
  loc_AD3A9A: LitVar_Missing var_E4
  loc_AD3A9D: LitI2_Byte 0
  loc_AD3A9F: FLdZeroAd var_144
  loc_AD3AA2: CVarAd
  loc_AD3AA6: PopAdLdVar
  loc_AD3AA7: FMemLdRf ext_4010A8
  loc_AD3AAC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD3AB1: FFreeAd var_B0 = ""
  loc_AD3AB8: FFreeVar var_D4 = ""
  loc_AD3ABF: FLdRfVar var_144
  loc_AD3AC2: LitVarStr var_9C, "ImpoDebi"
  loc_AD3AC7: PopAdLdVar
  loc_AD3AC8: FLdRfVar var_BC
  loc_AD3ACB: FLdRfVar var_B0
  loc_AD3ACE: FLdPr Me
  loc_AD3AD1: MemLdRfVar from_stack_1.global_60
  loc_AD3AD4: NewIfNullPr clsbase
  loc_AD3AD7: from_stack_1v = clsbase.RsFrmGet()
  loc_AD3ADC: FLdPr var_B0
  loc_AD3ADF:  = Me.Fields
  loc_AD3AE4: FLdPr var_BC
  loc_AD3AE7: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3AEC: LitI2_Byte 0
  loc_AD3AEE: LitVar_Missing var_E4
  loc_AD3AF1: LitI2_Byte &HFF
  loc_AD3AF3: FLdZeroAd var_144
  loc_AD3AF6: CVarAd
  loc_AD3AFA: PopAdLdVar
  loc_AD3AFB: FMemLdRf ext_4010A8
  loc_AD3B00: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD3B05: FFreeAd var_B0 = ""
  loc_AD3B0C: FFreeVar var_D4 = ""
  loc_AD3B13: FLdRfVar var_144
  loc_AD3B16: LitVarStr var_9C, "NumeFact"
  loc_AD3B1B: PopAdLdVar
  loc_AD3B1C: FLdRfVar var_BC
  loc_AD3B1F: FLdRfVar var_B0
  loc_AD3B22: FLdPr Me
  loc_AD3B25: MemLdRfVar from_stack_1.global_60
  loc_AD3B28: NewIfNullPr clsbase
  loc_AD3B2B: from_stack_1v = clsbase.RsFrmGet()
  loc_AD3B30: FLdPr var_B0
  loc_AD3B33:  = Me.Fields
  loc_AD3B38: FLdPr var_BC
  loc_AD3B3B: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3B40: LitI2_Byte 0
  loc_AD3B42: LitVar_Missing var_E4
  loc_AD3B45: LitI2_Byte 0
  loc_AD3B47: FLdZeroAd var_144
  loc_AD3B4A: CVarAd
  loc_AD3B4E: PopAdLdVar
  loc_AD3B4F: FMemLdRf ext_4010A8
  loc_AD3B54: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD3B59: FFreeAd var_B0 = ""
  loc_AD3B60: FFreeVar var_D4 = ""
  loc_AD3B67: LitI4 0
  loc_AD3B6C: FStR4 var_140
  loc_AD3B6F: AryUnlock
  loc_AD3B72: FLdPr Me
  loc_AD3B75: MemLdRfVar from_stack_1.global_60
  loc_AD3B78: NewIfNullPr clsbase
  loc_AD3B7B: Call clsbase.MoveSiguiente()
  loc_AD3B80: FLdPr Me
  loc_AD3B83: MemLdRfVar from_stack_1.global_88
  loc_AD3B86: NextI2 var_138, loc_AD37C5
  loc_AD3B8B: LitI2_Byte &HFF
  loc_AD3B8D: FLdPr Me
  loc_AD3B90: MemStI2 bGenerado
  loc_AD3B93: LitI4 0
  loc_AD3B98: CI2I4
  loc_AD3B99: FLdPr Me
  loc_AD3B9C: Me.MousePointer = from_stack_1
  loc_AD3BA1: LitVarStr var_9C, vbNullString
  loc_AD3BA6: PopAdLdVar
  loc_AD3BA7: FLdPr Me
  loc_AD3BAA: VCallAd Control_ID_statusBar
  loc_AD3BAD: FStAdFunc var_B0
  loc_AD3BB0: FLdPr var_B0
  loc_AD3BB3: LateIdSt
  loc_AD3BB8: FFree1Ad var_B0
  loc_AD3BBB: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '995CBC
  'Data Table: 453D44
  loc_995C68: LitI4 0
  loc_995C6D: LitI4 2
  loc_995C72: FLdRfVar var_88
  loc_995C75: Redim
  loc_995C7F: FLdPr Me
  loc_995C82: VCallAd Control_ID_cboPeriodo
  loc_995C85: CVarAd
  loc_995C89: ParmAry1St
  loc_995C8F: FLdPr Me
  loc_995C92: VCallAd Control_ID_cboExpeImpu
  loc_995C95: CVarAd
  loc_995C99: ParmAry1St
  loc_995C9F: FLdPr Me
  loc_995CA2: VCallAd Control_ID_NumeDebiMsk
  loc_995CA5: CVarAd
  loc_995CA9: ParmAry1St
  loc_995CAF: FLdRfVar var_88
  loc_995CB2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_995CB7: FLdRfVar var_88
  loc_995CBA: Erase
  loc_995CBB: ExitProcHresult
End Sub

Private Function Proc_251_17_A6491C() 'A6491C
  'Data Table: 453D44
  loc_A645C0: LitVarStr var_94, "<html>"
  loc_A645C5: PopAdLdVar
  loc_A645C6: FLdPr Me
  loc_A645C9: MemLdRfVar from_stack_1.global_68
  loc_A645CC: LdPrVar
  loc_A645CE: LateMemCall
  loc_A645D4: LitVarStr var_94, "<head>"
  loc_A645D9: PopAdLdVar
  loc_A645DA: FLdPr Me
  loc_A645DD: MemLdRfVar from_stack_1.global_68
  loc_A645E0: LdPrVar
  loc_A645E2: LateMemCall
  loc_A645E8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A645ED: PopAdLdVar
  loc_A645EE: FLdPr Me
  loc_A645F1: MemLdRfVar from_stack_1.global_68
  loc_A645F4: LdPrVar
  loc_A645F6: LateMemCall
  loc_A645FC: LitStr "<title>"
  loc_A645FF: FLdRfVar var_A8
  loc_A64602: FLdPr Me
  loc_A64605:  = Me.Caption
  loc_A6460A: ILdRf var_A8
  loc_A6460D: ConcatStr
  loc_A6460E: FStStrNoPop var_AC
  loc_A64611: LitStr "</title>"
  loc_A64614: ConcatStr
  loc_A64615: CVarStr var_BC
  loc_A64618: PopAdLdVar
  loc_A64619: FLdPr Me
  loc_A6461C: MemLdRfVar from_stack_1.global_68
  loc_A6461F: LdPrVar
  loc_A64621: LateMemCall
  loc_A64627: FFreeStr var_A8 = ""
  loc_A6462E: FFree1Var var_BC = ""
  loc_A64631: LitVarStr var_94, "<style type=""text/css"">"
  loc_A64636: PopAdLdVar
  loc_A64637: FLdPr Me
  loc_A6463A: MemLdRfVar from_stack_1.global_68
  loc_A6463D: LdPrVar
  loc_A6463F: LateMemCall
  loc_A64645: LitVarStr var_94, ".Titulo1 {"
  loc_A6464A: PopAdLdVar
  loc_A6464B: FLdPr Me
  loc_A6464E: MemLdRfVar from_stack_1.global_68
  loc_A64651: LdPrVar
  loc_A64653: LateMemCall
  loc_A64659: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_A6465E: PopAdLdVar
  loc_A6465F: FLdPr Me
  loc_A64662: MemLdRfVar from_stack_1.global_68
  loc_A64665: LdPrVar
  loc_A64667: LateMemCall
  loc_A6466D: LitVarStr var_94, " font-size: 14px;"
  loc_A64672: PopAdLdVar
  loc_A64673: FLdPr Me
  loc_A64676: MemLdRfVar from_stack_1.global_68
  loc_A64679: LdPrVar
  loc_A6467B: LateMemCall
  loc_A64681: LitVarStr var_94, " font-weight: bold;"
  loc_A64686: PopAdLdVar
  loc_A64687: FLdPr Me
  loc_A6468A: MemLdRfVar from_stack_1.global_68
  loc_A6468D: LdPrVar
  loc_A6468F: LateMemCall
  loc_A64695: LitVarStr var_94, "}"
  loc_A6469A: PopAdLdVar
  loc_A6469B: FLdPr Me
  loc_A6469E: MemLdRfVar from_stack_1.global_68
  loc_A646A1: LdPrVar
  loc_A646A3: LateMemCall
  loc_A646A9: LitVarStr var_94, ".Titulo2 {"
  loc_A646AE: PopAdLdVar
  loc_A646AF: FLdPr Me
  loc_A646B2: MemLdRfVar from_stack_1.global_68
  loc_A646B5: LdPrVar
  loc_A646B7: LateMemCall
  loc_A646BD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_A646C2: PopAdLdVar
  loc_A646C3: FLdPr Me
  loc_A646C6: MemLdRfVar from_stack_1.global_68
  loc_A646C9: LdPrVar
  loc_A646CB: LateMemCall
  loc_A646D1: LitVarStr var_94, " font-size: 12px;"
  loc_A646D6: PopAdLdVar
  loc_A646D7: FLdPr Me
  loc_A646DA: MemLdRfVar from_stack_1.global_68
  loc_A646DD: LdPrVar
  loc_A646DF: LateMemCall
  loc_A646E5: LitVarStr var_94, " font-weight: bold;"
  loc_A646EA: PopAdLdVar
  loc_A646EB: FLdPr Me
  loc_A646EE: MemLdRfVar from_stack_1.global_68
  loc_A646F1: LdPrVar
  loc_A646F3: LateMemCall
  loc_A646F9: LitVarStr var_94, "}"
  loc_A646FE: PopAdLdVar
  loc_A646FF: FLdPr Me
  loc_A64702: MemLdRfVar from_stack_1.global_68
  loc_A64705: LdPrVar
  loc_A64707: LateMemCall
  loc_A6470D: LitVarStr var_94, ".Normal {"
  loc_A64712: PopAdLdVar
  loc_A64713: FLdPr Me
  loc_A64716: MemLdRfVar from_stack_1.global_68
  loc_A64719: LdPrVar
  loc_A6471B: LateMemCall
  loc_A64721: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_A64726: PopAdLdVar
  loc_A64727: FLdPr Me
  loc_A6472A: MemLdRfVar from_stack_1.global_68
  loc_A6472D: LdPrVar
  loc_A6472F: LateMemCall
  loc_A64735: LitVarStr var_94, " font-size: 12px;"
  loc_A6473A: PopAdLdVar
  loc_A6473B: FLdPr Me
  loc_A6473E: MemLdRfVar from_stack_1.global_68
  loc_A64741: LdPrVar
  loc_A64743: LateMemCall
  loc_A64749: LitVarStr var_94, " font-style: normal;"
  loc_A6474E: PopAdLdVar
  loc_A6474F: FLdPr Me
  loc_A64752: MemLdRfVar from_stack_1.global_68
  loc_A64755: LdPrVar
  loc_A64757: LateMemCall
  loc_A6475D: LitVarStr var_94, " font-weight: normal;"
  loc_A64762: PopAdLdVar
  loc_A64763: FLdPr Me
  loc_A64766: MemLdRfVar from_stack_1.global_68
  loc_A64769: LdPrVar
  loc_A6476B: LateMemCall
  loc_A64771: LitVarStr var_94, " font-variant: normal;"
  loc_A64776: PopAdLdVar
  loc_A64777: FLdPr Me
  loc_A6477A: MemLdRfVar from_stack_1.global_68
  loc_A6477D: LdPrVar
  loc_A6477F: LateMemCall
  loc_A64785: LitVarStr var_94, "}"
  loc_A6478A: PopAdLdVar
  loc_A6478B: FLdPr Me
  loc_A6478E: MemLdRfVar from_stack_1.global_68
  loc_A64791: LdPrVar
  loc_A64793: LateMemCall
  loc_A64799: LitVarStr var_94, ".Encabezado {"
  loc_A6479E: PopAdLdVar
  loc_A6479F: FLdPr Me
  loc_A647A2: MemLdRfVar from_stack_1.global_68
  loc_A647A5: LdPrVar
  loc_A647A7: LateMemCall
  loc_A647AD: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_A647B2: PopAdLdVar
  loc_A647B3: FLdPr Me
  loc_A647B6: MemLdRfVar from_stack_1.global_68
  loc_A647B9: LdPrVar
  loc_A647BB: LateMemCall
  loc_A647C1: LitVarStr var_94, " font-size: 11px;"
  loc_A647C6: PopAdLdVar
  loc_A647C7: FLdPr Me
  loc_A647CA: MemLdRfVar from_stack_1.global_68
  loc_A647CD: LdPrVar
  loc_A647CF: LateMemCall
  loc_A647D5: LitVarStr var_94, " font-weight: bold;"
  loc_A647DA: PopAdLdVar
  loc_A647DB: FLdPr Me
  loc_A647DE: MemLdRfVar from_stack_1.global_68
  loc_A647E1: LdPrVar
  loc_A647E3: LateMemCall
  loc_A647E9: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_A647EE: PopAdLdVar
  loc_A647EF: FLdPr Me
  loc_A647F2: MemLdRfVar from_stack_1.global_68
  loc_A647F5: LdPrVar
  loc_A647F7: LateMemCall
  loc_A647FD: LitVarStr var_94, "}"
  loc_A64802: PopAdLdVar
  loc_A64803: FLdPr Me
  loc_A64806: MemLdRfVar from_stack_1.global_68
  loc_A64809: LdPrVar
  loc_A6480B: LateMemCall
  loc_A64811: LitVarStr var_94, ".LineaDato {"
  loc_A64816: PopAdLdVar
  loc_A64817: FLdPr Me
  loc_A6481A: MemLdRfVar from_stack_1.global_68
  loc_A6481D: LdPrVar
  loc_A6481F: LateMemCall
  loc_A64825: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_A6482A: PopAdLdVar
  loc_A6482B: FLdPr Me
  loc_A6482E: MemLdRfVar from_stack_1.global_68
  loc_A64831: LdPrVar
  loc_A64833: LateMemCall
  loc_A64839: LitVarStr var_94, " font-size: 10px;"
  loc_A6483E: PopAdLdVar
  loc_A6483F: FLdPr Me
  loc_A64842: MemLdRfVar from_stack_1.global_68
  loc_A64845: LdPrVar
  loc_A64847: LateMemCall
  loc_A6484D: LitVarStr var_94, "}"
  loc_A64852: PopAdLdVar
  loc_A64853: FLdPr Me
  loc_A64856: MemLdRfVar from_stack_1.global_68
  loc_A64859: LdPrVar
  loc_A6485B: LateMemCall
  loc_A64861: LitVarStr var_94, ".Totales {"
  loc_A64866: PopAdLdVar
  loc_A64867: FLdPr Me
  loc_A6486A: MemLdRfVar from_stack_1.global_68
  loc_A6486D: LdPrVar
  loc_A6486F: LateMemCall
  loc_A64875: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_A6487A: PopAdLdVar
  loc_A6487B: FLdPr Me
  loc_A6487E: MemLdRfVar from_stack_1.global_68
  loc_A64881: LdPrVar
  loc_A64883: LateMemCall
  loc_A64889: LitVarStr var_94, " font-size: 11px;"
  loc_A6488E: PopAdLdVar
  loc_A6488F: FLdPr Me
  loc_A64892: MemLdRfVar from_stack_1.global_68
  loc_A64895: LdPrVar
  loc_A64897: LateMemCall
  loc_A6489D: LitVarStr var_94, " font-weight: bold;"
  loc_A648A2: PopAdLdVar
  loc_A648A3: FLdPr Me
  loc_A648A6: MemLdRfVar from_stack_1.global_68
  loc_A648A9: LdPrVar
  loc_A648AB: LateMemCall
  loc_A648B1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_A648B6: PopAdLdVar
  loc_A648B7: FLdPr Me
  loc_A648BA: MemLdRfVar from_stack_1.global_68
  loc_A648BD: LdPrVar
  loc_A648BF: LateMemCall
  loc_A648C5: LitVarStr var_94, "}"
  loc_A648CA: PopAdLdVar
  loc_A648CB: FLdPr Me
  loc_A648CE: MemLdRfVar from_stack_1.global_68
  loc_A648D1: LdPrVar
  loc_A648D3: LateMemCall
  loc_A648D9: LitVarStr var_94, "</style>"
  loc_A648DE: PopAdLdVar
  loc_A648DF: FLdPr Me
  loc_A648E2: MemLdRfVar from_stack_1.global_68
  loc_A648E5: LdPrVar
  loc_A648E7: LateMemCall
  loc_A648ED: LitI4 0
  loc_A648F2: FStStrCopy var_AC
  loc_A648F5: FLdRfVar var_AC
  loc_A648F8: LitI4 0
  loc_A648FD: FStStrCopy var_A8
  loc_A64900: FLdRfVar var_A8
  loc_A64903: LitI2_Byte 0
  loc_A64905: PopTmpLdAd2 var_BE
  loc_A64908: FLdPr Me
  loc_A6490B: MemLdRfVar from_stack_1.global_68
  loc_A6490E: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A64913: FFreeStr var_A8 = ""
  loc_A6491A: ExitProcHresult
  loc_A6491B: Ary1LdRf
End Function

Private Function Proc_251_18_9749D0() '9749D0
  'Data Table: 453D44
  loc_9749A4: LitVarStr var_94, "</body>"
  loc_9749A9: PopAdLdVar
  loc_9749AA: FLdPr Me
  loc_9749AD: MemLdRfVar from_stack_1.global_68
  loc_9749B0: LdPrVar
  loc_9749B2: LateMemCall
  loc_9749B8: LitVarStr var_94, "</html>"
  loc_9749BD: PopAdLdVar
  loc_9749BE: FLdPr Me
  loc_9749C1: MemLdRfVar from_stack_1.global_68
  loc_9749C4: LdPrVar
  loc_9749C6: LateMemCall
  loc_9749CC: ExitProcHresult
  loc_9749CD: SetLastSystemError
End Function
