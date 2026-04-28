VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptRecibosdecheques
  Caption = "Recibos de cheques"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptRecibosdecheques.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10140
  ClientHeight = 3615
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3360
    Width = 10140
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptRecibosdecheques.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 2400
    Width = 735
    Height = 615
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptRecibosdecheques.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptRecibosdecheques.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4560
    Top = 2040
    Width = 2175
    Height = 1215
    TabIndex = 12
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
      Width = 1695
      Height = 615
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
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 4335
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
      Left = 2040
      Top = 360
      Width = 1935
      Height = 615
      TabIndex = 11
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9855
    Height = 1935
    TabIndex = 0
    Begin VB.TextBox CucuPersTxt
      Left = 2280
      Top = 1320
      Width = 1815
      Height = 360
      TabIndex = 7
      MaxLength = 70
      DataField = "CucuPers"
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2280
      Top = 360
      Width = 1095
      Height = 360
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7560
      Top = 360
      Width = 1455
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
    Begin MSMask.MaskEdBox NumeOrpaMsk
      Left = 2280
      Top = 840
      Width = 1695
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptRecibosdecheques.frx":0C00
    End
    Begin VB.Label Label2
      Caption = "Orden de Pago Nº:"
      Left = 195
      Top = 840
      Width = 1980
      Height = 300
      TabIndex = 4
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
    Begin VB.Label DetaProvLbl
      Left = 4200
      Top = 1320
      Width = 5535
      Height = 375
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
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
      Caption = "Proveedor:"
      Left = 1035
      Top = 1365
      Width = 1140
      Height = 300
      TabIndex = 6
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
      Caption = "Periodo:"
      Left = 1305
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 1
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
    Left = 8400
    Top = 2640
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptRecibosdecheques.frx":0C94
  End
End

Attribute VB_Name = "rptRecibosdecheques"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_00589EAC
  bStruc(36) As Byte ' String fields: 9
End Type

Private Type UDT_3_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_4_0059F730
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_5_0059F7F0
  bStruc(72) As Byte ' String fields: 18
End Type


Private Sub cmdPrevia_Click() '9599C0
  'Data Table: 46C4D4
  loc_9599A8: ILdRf Me
  loc_9599AB: CastAd
  loc_9599AE: FStAdFunc var_88
  loc_9599B1: FLdRfVar var_88
  loc_9599B4: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9599B9: FFree1Ad var_88
  loc_9599BC: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '959CB8
  'Data Table: 46C4D4
  loc_959CA0: ILdRf Me
  loc_959CA3: CastAd
  loc_959CA6: FStAdFunc var_88
  loc_959CA9: FLdRfVar var_88
  loc_959CAC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_959CB1: FFree1Ad var_88
  loc_959CB4: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98584C
  'Data Table: 46C4D4
  loc_985814: FLdPr Me
  loc_985817: VCallAd Control_ID_statusBar
  loc_98581A: FStAdFunc var_88
  loc_98581D: FLdPr var_88
  loc_985820: LateIdLdVar var_98 DispID_1 0
  loc_985827: CStrVarTmp
  loc_985828: CVarStr var_A8
  loc_98582B: PopAdLdVar
  loc_98582C: FLdPr Me
  loc_98582F: VCallAd Control_ID_statusBar
  loc_985832: FStAdFunc var_BC
  loc_985835: FLdPr var_BC
  loc_985838: LateIdSt
  loc_98583D: FFreeAd var_88 = ""
  loc_985844: FFreeVar var_98 = ""
  loc_98584B: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B7AC
  'Data Table: 46C4D4
  loc_97B77C: LitVarStr var_94, "Cerrando..."
  loc_97B781: PopAdLdVar
  loc_97B782: FLdPr Me
  loc_97B785: VCallAd Control_ID_statusBar
  loc_97B788: FStAdFunc var_A8
  loc_97B78B: FLdPr var_A8
  loc_97B78E: LateIdSt
  loc_97B793: FFree1Ad var_A8
  loc_97B796: ILdRf Me
  loc_97B799: FStAdNoPop
  loc_97B79D: ImpAdLdRf MemVar_C44F9C
  loc_97B7A0: NewIfNullPr Me
  loc_97B7A3: Me.Global.Unload from_stack_1
  loc_97B7A8: FFree1Ad var_A8
  loc_97B7AB: ExitProcHresult
End Sub

Private Sub Form_Load() '9D5918
  'Data Table: 46C4D4
  loc_9D582C: LitI2_Byte &HFF
  loc_9D582E: ImpAdStI2 MemVar_C3D840
  loc_9D5831: ILdRf Me
  loc_9D5834: CastAd
  loc_9D5837: FStAdFunc var_88
  loc_9D583A: FLdRfVar var_88
  loc_9D583D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D5842: FFree1Ad var_88
  loc_9D5845: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D5848: FLdPr Me
  loc_9D584B: MemLdRfVar from_stack_1.global_76
  loc_9D584E: NewIfNullPr clsperiodo
  loc_9D5851: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D5856: FLdRfVar var_8C
  loc_9D5859: FLdPr Me
  loc_9D585C: MemLdRfVar from_stack_1.global_76
  loc_9D585F: NewIfNullPr clsperiodo
  loc_9D5862: from_stack_1 = clsperiodo.RecordCount
  loc_9D5867: ILdRf var_8C
  loc_9D586A: LitI4 0
  loc_9D586F: GtI4
  loc_9D5870: BranchF loc_9D590F
  loc_9D5873: FLdPr Me
  loc_9D5876: MemLdRfVar from_stack_1.global_76
  loc_9D5879: NewIfNullPr clsperiodo
  loc_9D587C: Call clsperiodo.MoveFirst()
  loc_9D5881: FLdRfVar var_8E
  loc_9D5884: FLdPr Me
  loc_9D5887: MemLdRfVar from_stack_1.global_76
  loc_9D588A: NewIfNullPr clsperiodo
  loc_9D588D: from_stack_1 = clsperiodo.EOF
  loc_9D5892: FLdI2 var_8E
  loc_9D5895: NotI4
  loc_9D5896: BranchF loc_9D590F
  loc_9D5899: LitVar_Missing var_CC
  loc_9D589C: PopAdLdVar
  loc_9D589D: FLdRfVar var_B8
  loc_9D58A0: FLdRfVar var_A8
  loc_9D58A3: LitVarStr var_A4, "PeriInfo"
  loc_9D58A8: PopAdLdVar
  loc_9D58A9: FLdRfVar var_94
  loc_9D58AC: FLdRfVar var_88
  loc_9D58AF: FLdPr Me
  loc_9D58B2: MemLdRfVar from_stack_1.global_76
  loc_9D58B5: NewIfNullPr clsperiodo
  loc_9D58B8: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D58BD: FLdPr var_88
  loc_9D58C0:  = Me.Fields
  loc_9D58C5: FLdPr var_94
  loc_9D58C8: from_stack_2 = Me.Item(from_stack_1)
  loc_9D58CD: FLdPr var_A8
  loc_9D58D0:  = Me.Value
  loc_9D58D5: FLdRfVar var_B8
  loc_9D58D8: CStrVarTmp
  loc_9D58D9: FStStrNoPop var_BC
  loc_9D58DC: FLdPr Me
  loc_9D58DF: VCallAd Control_ID_cboPeriodo
  loc_9D58E2: FStAdFunc var_D0
  loc_9D58E5: FLdPr var_D0
  loc_9D58E8: Me.AddItem from_stack_1, from_stack_2
  loc_9D58ED: FFree1Str var_BC
  loc_9D58F0: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D58FB: FFree1Var var_B8 = ""
  loc_9D58FE: FLdPr Me
  loc_9D5901: MemLdRfVar from_stack_1.global_76
  loc_9D5904: NewIfNullPr clsperiodo
  loc_9D5907: Call clsperiodo.MoveSiguiente()
  loc_9D590C: Branch loc_9D5881
  loc_9D590F: Call cmdNueva_Click()
  loc_9D5914: ExitProcHresult
  loc_9D5915: ImpAdLdRf MemVar_C3D74C
End Sub

Private Sub Form_Unload(Cancel As Integer) '95B134
  'Data Table: 46C4D4
  loc_95B11C: FLdPr Me
  loc_95B11F: VCallAd Control_ID_wbbReporte
  loc_95B122: FStAdFunc var_88
  loc_95B125: FLdRfVar var_88
  loc_95B128: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95B12D: FFree1Ad var_88
  loc_95B130: ExitProcHresult
  loc_95B131: UMiR8
End Sub

Private Sub NumeOrpaMsk_UnknownEvent_0 '94B6C0
  'Data Table: 46C4D4
  loc_94B6AC: FLdPr Me
  loc_94B6AF: VCallAd Control_ID_NumeOrpaMsk
  loc_94B6B2: CVarAd
  loc_94B6B6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B6BB: FFree1Var var_94 = ""
  loc_94B6BE: ExitProcHresult
End Sub

Private Sub NumeOrpaMsk_UnknownEvent_8 '9A7D28
  'Data Table: 46C4D4
  loc_9A7CAC: FLdPr Me
  loc_9A7CAF: VCallAd Control_ID_NumeOrpaMsk
  loc_9A7CB2: FStAdFunc var_88
  loc_9A7CB5: FLdPr var_88
  loc_9A7CB8: LateIdLdVar var_98 DispID_0 0
  loc_9A7CBF: PopAd
  loc_9A7CC1: LitI2_Byte 0
  loc_9A7CC3: LitI2_Byte 0
  loc_9A7CC5: FLdRfVar var_98
  loc_9A7CC8: CStrVarTmp
  loc_9A7CC9: FStStrNoPop var_9C
  loc_9A7CCC: LitStr "Número de Orden de Pago"
  loc_9A7CCF: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A7CD4: FStStrNoPop var_A0
  loc_9A7CD7: FLdPr Me
  loc_9A7CDA: MemStStrCopy
  loc_9A7CDE: FFreeStr var_9C = ""
  loc_9A7CE5: FFree1Ad var_88
  loc_9A7CE8: FFree1Var var_98 = ""
  loc_9A7CEB: FLdPr Me
  loc_9A7CEE: VCallAd Control_ID_NumeOrpaMsk
  loc_9A7CF1: FStAdFunc var_AC
  loc_9A7CF4: LitNothing
  loc_9A7CF6: CastAd
  loc_9A7CF9: FStAdFunc var_A8
  loc_9A7CFC: FLdRfVar var_A8
  loc_9A7CFF: FLdZeroAd var_AC
  loc_9A7D02: FStAdFuncNoPop
  loc_9A7D05: CastAd
  loc_9A7D08: FStAdFunc var_A4
  loc_9A7D0B: FLdRfVar var_A4
  loc_9A7D0E: FLdPr Me
  loc_9A7D11: MemLdRfVar from_stack_1.global_108
  loc_9A7D14: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A7D19: IStI2 Cancel
  loc_9A7D1C: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A7D27: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '94B5A0
  'Data Table: 46C4D4
  loc_94B58C: FLdPr Me
  loc_94B58F: VCallAd Control_ID_CucuPersTxt
  loc_94B592: CVarAd
  loc_94B596: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B59B: FFree1Var var_94 = ""
  loc_94B59E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0CB60
  'Data Table: 46C4D4
  loc_A0C9FC: ILdI2 Shift
  loc_A0C9FF: CI4UI1
  loc_A0CA00: LitI4 2
  loc_A0CA05: EqI4
  loc_A0CA06: ILdI2 KeyCode
  loc_A0CA09: CI4UI1
  loc_A0CA0A: LitI4 &H42
  loc_A0CA0F: EqI4
  loc_A0CA10: AndI4
  loc_A0CA11: BranchF loc_A0CB5C
  loc_A0CA14: LitI2_Byte 0
  loc_A0CA16: ImpAdLdRf MemVar_C3D74C
  loc_A0CA19: NewIfNullPr bscProveedor
  loc_A0CA1C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0CA21: LitNothing
  loc_A0CA23: CastAd
  loc_A0CA26: FStAdFuncNoPop
  loc_A0CA29: FLdRfVar var_88
  loc_A0CA2C: ImpAdLdRf MemVar_C3D74C
  loc_A0CA2F: NewIfNullPr bscProveedor
  loc_A0CA32: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0CA37: FLdPr var_88
  loc_A0CA3A: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0CA3F: FFreeAd var_8C = ""
  loc_A0CA46: LitVar_Missing var_AC
  loc_A0CA49: PopAdLdVar
  loc_A0CA4A: LitVarI4
  loc_A0CA52: PopAdLdVar
  loc_A0CA53: ImpAdLdRf MemVar_C3D74C
  loc_A0CA56: NewIfNullPr bscProveedor
  loc_A0CA59: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0CA5E: FLdRfVar var_B0
  loc_A0CA61: FLdRfVar var_88
  loc_A0CA64: ImpAdLdRf MemVar_C3D74C
  loc_A0CA67: NewIfNullPr bscProveedor
  loc_A0CA6A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0CA6F: FLdPr var_88
  loc_A0CA72: from_stack_1 = clsbase.RecordCount
  loc_A0CA77: ILdRf var_B0
  loc_A0CA7A: LitI4 0
  loc_A0CA7F: GtI4
  loc_A0CA80: FFree1Ad var_88
  loc_A0CA83: BranchF loc_A0CB5C
  loc_A0CA86: FLdRfVar var_C8
  loc_A0CA89: FLdRfVar var_B8
  loc_A0CA8C: LitVarStr var_9C, "CucuPers"
  loc_A0CA91: PopAdLdVar
  loc_A0CA92: FLdRfVar var_B4
  loc_A0CA95: FLdRfVar var_8C
  loc_A0CA98: FLdRfVar var_88
  loc_A0CA9B: ImpAdLdRf MemVar_C3D74C
  loc_A0CA9E: NewIfNullPr bscProveedor
  loc_A0CAA1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0CAA6: FLdPr var_88
  loc_A0CAA9: from_stack_1v = clsbase.RsFrmGet()
  loc_A0CAAE: FLdPr var_8C
  loc_A0CAB1:  = Me.Fields
  loc_A0CAB6: FLdPr var_B4
  loc_A0CAB9: from_stack_2 = Me.Item(from_stack_1)
  loc_A0CABE: FLdPr var_B8
  loc_A0CAC1:  = Me.Value
  loc_A0CAC6: FLdRfVar var_C8
  loc_A0CAC9: CStrVarTmp
  loc_A0CACA: FStStrNoPop var_CC
  loc_A0CACD: FLdPr Me
  loc_A0CAD0: VCallAd Control_ID_CucuPersTxt
  loc_A0CAD3: FStAdFunc var_D0
  loc_A0CAD6: FLdPr var_D0
  loc_A0CAD9: Me.Text = from_stack_1
  loc_A0CADE: FFree1Str var_CC
  loc_A0CAE1: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0CAEE: FFree1Var var_C8 = ""
  loc_A0CAF1: FLdRfVar var_C8
  loc_A0CAF4: FLdRfVar var_B8
  loc_A0CAF7: LitVarStr var_9C, "DetaProv"
  loc_A0CAFC: PopAdLdVar
  loc_A0CAFD: FLdRfVar var_B4
  loc_A0CB00: FLdRfVar var_8C
  loc_A0CB03: FLdRfVar var_88
  loc_A0CB06: ImpAdLdRf MemVar_C3D74C
  loc_A0CB09: NewIfNullPr bscProveedor
  loc_A0CB0C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0CB11: FLdPr var_88
  loc_A0CB14: from_stack_1v = clsbase.RsFrmGet()
  loc_A0CB19: FLdPr var_8C
  loc_A0CB1C:  = Me.Fields
  loc_A0CB21: FLdPr var_B4
  loc_A0CB24: from_stack_2 = Me.Item(from_stack_1)
  loc_A0CB29: FLdPr var_B8
  loc_A0CB2C:  = Me.Value
  loc_A0CB31: FLdRfVar var_C8
  loc_A0CB34: CStrVarTmp
  loc_A0CB35: FStStrNoPop var_CC
  loc_A0CB38: FLdPr Me
  loc_A0CB3B: VCallAd Control_ID_DetaProvLbl
  loc_A0CB3E: FStAdFunc var_D0
  loc_A0CB41: FLdPr var_D0
  loc_A0CB44: Me.Caption = from_stack_1
  loc_A0CB49: FFree1Str var_CC
  loc_A0CB4C: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0CB59: FFree1Var var_C8 = ""
  loc_A0CB5C: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B4504C
  'Data Table: 46C4D4
  loc_B445D8: FLdRfVar var_8A
  loc_B445DB: FLdPr Me
  loc_B445DE: VCallAd Control_ID_cmdSalir
  loc_B445E1: FStAdFunc var_88
  loc_B445E4: FLdPr var_88
  loc_B445E7:  = Me.Value
  loc_B445EC: FLdI2 var_8A
  loc_B445EF: NotI4
  loc_B445F0: FLdRfVar var_92
  loc_B445F3: FLdPr Me
  loc_B445F6: VCallAd Control_ID_CucuPersTxt
  loc_B445F9: FStAdFunc var_90
  loc_B445FC: FLdPr var_90
  loc_B445FF:  = Me.Enabled
  loc_B44604: FLdI2 var_92
  loc_B44607: AndI4
  loc_B44608: FLdRfVar var_9C
  loc_B4460B: FLdPr Me
  loc_B4460E: VCallAd Control_ID_CucuPersTxt
  loc_B44611: FStAdFunc var_98
  loc_B44614: FLdPr var_98
  loc_B44617:  = Me.Text
  loc_B4461C: ILdRf var_9C
  loc_B4461F: LitStr vbNullString
  loc_B44622: NeStr
  loc_B44624: AndI4
  loc_B44625: FFree1Str var_9C
  loc_B44628: FFreeAd var_88 = "": var_90 = ""
  loc_B44631: BranchF loc_B45049
  loc_B44634: FLdRfVar var_9C
  loc_B44637: FLdPr Me
  loc_B4463A: VCallAd Control_ID_CucuPersTxt
  loc_B4463D: FStAdFunc var_88
  loc_B44640: FLdPr var_88
  loc_B44643:  = Me.Text
  loc_B44648: ILdRf var_9C
  loc_B4464B: ImpAdCallI2 Trim$()
  loc_B44650: FStStrNoPop var_A0
  loc_B44653: LitStr vbNullString
  loc_B44656: NeStr
  loc_B44658: FFreeStr var_9C = ""
  loc_B4465F: FFree1Ad var_88
  loc_B44662: BranchF loc_B44E85
  loc_B44665: FLdPr Me
  loc_B44668: VCallAd Control_ID_CucuPersTxt
  loc_B4466B: FStAdFunc var_88
  loc_B4466E: FLdRfVar var_88
  loc_B44671: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B44676: FFree1Ad var_88
  loc_B44679: BranchF loc_B44A71
  loc_B4467C: LitStr " AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B4467F: FLdRfVar var_9C
  loc_B44682: FLdPr Me
  loc_B44685: VCallAd Control_ID_CucuPersTxt
  loc_B44688: FStAdFunc var_88
  loc_B4468B: FLdPr var_88
  loc_B4468E:  = Me.Text
  loc_B44693: ILdRf var_9C
  loc_B44696: ConcatStr
  loc_B44697: FStStrNoPop var_A0
  loc_B4469A: LitStr Chr(37) & "'"
  loc_B4469D: ConcatStr
  loc_B4469E: FStStrNoPop var_A4
  loc_B446A1: ImpAdLdRf MemVar_C3D74C
  loc_B446A4: NewIfNullPr bscProveedor
  loc_B446A7: Call bscProveedor.Constructor(from_stack_1v)
  loc_B446AC: FFreeStr var_9C = "": var_A0 = ""
  loc_B446B5: FFree1Ad var_88
  loc_B446B8: FLdRfVar var_A8
  loc_B446BB: FLdRfVar var_90
  loc_B446BE: FLdRfVar var_88
  loc_B446C1: ImpAdLdRf MemVar_C3D74C
  loc_B446C4: NewIfNullPr bscProveedor
  loc_B446C7: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B446CC: FLdPr var_88
  loc_B446CF: from_stack_1v = clsbase.RsFrmGet()
  loc_B446D4: FLdPr var_90
  loc_B446D7:  = Me.RecordCount
  loc_B446DC: ILdRf var_A8
  loc_B446DF: LitI4 1
  loc_B446E4: EqI4
  loc_B446E5: FFreeAd var_88 = ""
  loc_B446EC: BranchF loc_B4480F
  loc_B446EF: FLdRfVar var_CC
  loc_B446F2: FLdRfVar var_BC
  loc_B446F5: LitVarStr var_B8, "CucuPers"
  loc_B446FA: PopAdLdVar
  loc_B446FB: FLdRfVar var_98
  loc_B446FE: FLdRfVar var_90
  loc_B44701: FLdRfVar var_88
  loc_B44704: ImpAdLdRf MemVar_C3D74C
  loc_B44707: NewIfNullPr bscProveedor
  loc_B4470A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4470F: FLdPr var_88
  loc_B44712: from_stack_1v = clsbase.RsFrmGet()
  loc_B44717: FLdPr var_90
  loc_B4471A:  = Me.Fields
  loc_B4471F: FLdPr var_98
  loc_B44722: from_stack_2 = Me.Item(from_stack_1)
  loc_B44727: FLdPr var_BC
  loc_B4472A:  = Me.Value
  loc_B4472F: FLdRfVar var_CC
  loc_B44732: CStrVarTmp
  loc_B44733: FStStrNoPop var_9C
  loc_B44736: FLdPr Me
  loc_B44739: VCallAd Control_ID_CucuPersTxt
  loc_B4473C: FStAdFunc var_D0
  loc_B4473F: FLdPr var_D0
  loc_B44742: Me.Text = from_stack_1
  loc_B44747: FFree1Str var_9C
  loc_B4474A: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B44757: FFree1Var var_CC = ""
  loc_B4475A: FLdRfVar var_CC
  loc_B4475D: FLdRfVar var_BC
  loc_B44760: LitVarStr var_B8, "DetaProv"
  loc_B44765: PopAdLdVar
  loc_B44766: FLdRfVar var_98
  loc_B44769: FLdRfVar var_90
  loc_B4476C: FLdRfVar var_88
  loc_B4476F: ImpAdLdRf MemVar_C3D74C
  loc_B44772: NewIfNullPr bscProveedor
  loc_B44775: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4477A: FLdPr var_88
  loc_B4477D: from_stack_1v = clsbase.RsFrmGet()
  loc_B44782: FLdPr var_90
  loc_B44785:  = Me.Fields
  loc_B4478A: FLdPr var_98
  loc_B4478D: from_stack_2 = Me.Item(from_stack_1)
  loc_B44792: FLdPr var_BC
  loc_B44795:  = Me.Value
  loc_B4479A: FLdRfVar var_CC
  loc_B4479D: CStrVarTmp
  loc_B4479E: FStStrNoPop var_9C
  loc_B447A1: FLdPr Me
  loc_B447A4: VCallAd Control_ID_DetaProvLbl
  loc_B447A7: FStAdFunc var_D0
  loc_B447AA: FLdPr var_D0
  loc_B447AD: Me.Caption = from_stack_1
  loc_B447B2: FFree1Str var_9C
  loc_B447B5: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B447C2: FFree1Var var_CC = ""
  loc_B447C5: LitStr vbNullString
  loc_B447C8: FLdPr Me
  loc_B447CB: MemStStrCopy
  loc_B447CF: FLdPr Me
  loc_B447D2: VCallAd Control_ID_CucuPersTxt
  loc_B447D5: FStAdFunc var_BC
  loc_B447D8: FLdPr Me
  loc_B447DB: VCallAd Control_ID_DetaProvLbl
  loc_B447DE: FStAdFunc var_98
  loc_B447E1: FLdRfVar var_98
  loc_B447E4: FLdZeroAd var_BC
  loc_B447E7: FStAdFuncNoPop
  loc_B447EA: CastAd
  loc_B447ED: FStAdFunc var_90
  loc_B447F0: FLdRfVar var_90
  loc_B447F3: FLdPr Me
  loc_B447F6: MemLdRfVar from_stack_1.global_108
  loc_B447F9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B447FE: IStI2 Cancel
  loc_B44801: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B4480C: Branch loc_B44A6E
  loc_B4480F: FLdRfVar var_A8
  loc_B44812: FLdRfVar var_90
  loc_B44815: FLdRfVar var_88
  loc_B44818: ImpAdLdRf MemVar_C3D74C
  loc_B4481B: NewIfNullPr bscProveedor
  loc_B4481E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44823: FLdPr var_88
  loc_B44826: from_stack_1v = clsbase.RsFrmGet()
  loc_B4482B: FLdPr var_90
  loc_B4482E:  = Me.RecordCount
  loc_B44833: ILdRf var_A8
  loc_B44836: LitI4 1
  loc_B4483B: GtI4
  loc_B4483C: FFreeAd var_88 = ""
  loc_B44843: BranchF loc_B449F0
  loc_B44846: LitVar_Missing var_E0
  loc_B44849: PopAdLdVar
  loc_B4484A: LitVarI4
  loc_B44852: PopAdLdVar
  loc_B44853: ImpAdLdRf MemVar_C3D74C
  loc_B44856: NewIfNullPr bscProveedor
  loc_B44859: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4485E: FLdRfVar var_A8
  loc_B44861: FLdRfVar var_88
  loc_B44864: ImpAdLdRf MemVar_C3D74C
  loc_B44867: NewIfNullPr bscProveedor
  loc_B4486A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4486F: FLdPr var_88
  loc_B44872: from_stack_1 = clsbase.RecordCount
  loc_B44877: ILdRf var_A8
  loc_B4487A: LitI4 0
  loc_B4487F: GtI4
  loc_B44880: FFree1Ad var_88
  loc_B44883: BranchF loc_B449A6
  loc_B44886: FLdRfVar var_CC
  loc_B44889: FLdRfVar var_BC
  loc_B4488C: LitVarStr var_B8, "CucuPers"
  loc_B44891: PopAdLdVar
  loc_B44892: FLdRfVar var_98
  loc_B44895: FLdRfVar var_90
  loc_B44898: FLdRfVar var_88
  loc_B4489B: ImpAdLdRf MemVar_C3D74C
  loc_B4489E: NewIfNullPr bscProveedor
  loc_B448A1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B448A6: FLdPr var_88
  loc_B448A9: from_stack_1v = clsbase.RsFrmGet()
  loc_B448AE: FLdPr var_90
  loc_B448B1:  = Me.Fields
  loc_B448B6: FLdPr var_98
  loc_B448B9: from_stack_2 = Me.Item(from_stack_1)
  loc_B448BE: FLdPr var_BC
  loc_B448C1:  = Me.Value
  loc_B448C6: FLdRfVar var_CC
  loc_B448C9: CStrVarTmp
  loc_B448CA: FStStrNoPop var_9C
  loc_B448CD: FLdPr Me
  loc_B448D0: VCallAd Control_ID_CucuPersTxt
  loc_B448D3: FStAdFunc var_D0
  loc_B448D6: FLdPr var_D0
  loc_B448D9: Me.Text = from_stack_1
  loc_B448DE: FFree1Str var_9C
  loc_B448E1: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B448EE: FFree1Var var_CC = ""
  loc_B448F1: FLdRfVar var_CC
  loc_B448F4: FLdRfVar var_BC
  loc_B448F7: LitVarStr var_B8, "DetaProv"
  loc_B448FC: PopAdLdVar
  loc_B448FD: FLdRfVar var_98
  loc_B44900: FLdRfVar var_90
  loc_B44903: FLdRfVar var_88
  loc_B44906: ImpAdLdRf MemVar_C3D74C
  loc_B44909: NewIfNullPr bscProveedor
  loc_B4490C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44911: FLdPr var_88
  loc_B44914: from_stack_1v = clsbase.RsFrmGet()
  loc_B44919: FLdPr var_90
  loc_B4491C:  = Me.Fields
  loc_B44921: FLdPr var_98
  loc_B44924: from_stack_2 = Me.Item(from_stack_1)
  loc_B44929: FLdPr var_BC
  loc_B4492C:  = Me.Value
  loc_B44931: FLdRfVar var_CC
  loc_B44934: CStrVarTmp
  loc_B44935: FStStrNoPop var_9C
  loc_B44938: FLdPr Me
  loc_B4493B: VCallAd Control_ID_DetaProvLbl
  loc_B4493E: FStAdFunc var_D0
  loc_B44941: FLdPr var_D0
  loc_B44944: Me.Caption = from_stack_1
  loc_B44949: FFree1Str var_9C
  loc_B4494C: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B44959: FFree1Var var_CC = ""
  loc_B4495C: LitStr vbNullString
  loc_B4495F: FLdPr Me
  loc_B44962: MemStStrCopy
  loc_B44966: FLdPr Me
  loc_B44969: VCallAd Control_ID_CucuPersTxt
  loc_B4496C: FStAdFunc var_BC
  loc_B4496F: FLdPr Me
  loc_B44972: VCallAd Control_ID_DetaProvLbl
  loc_B44975: FStAdFunc var_98
  loc_B44978: FLdRfVar var_98
  loc_B4497B: FLdZeroAd var_BC
  loc_B4497E: FStAdFuncNoPop
  loc_B44981: CastAd
  loc_B44984: FStAdFunc var_90
  loc_B44987: FLdRfVar var_90
  loc_B4498A: FLdPr Me
  loc_B4498D: MemLdRfVar from_stack_1.global_108
  loc_B44990: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B44995: IStI2 Cancel
  loc_B44998: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B449A3: Branch loc_B449ED
  loc_B449A6: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B449A9: FLdPr Me
  loc_B449AC: MemStStrCopy
  loc_B449B0: FLdPr Me
  loc_B449B3: VCallAd Control_ID_CucuPersTxt
  loc_B449B6: FStAdFunc var_BC
  loc_B449B9: FLdPr Me
  loc_B449BC: VCallAd Control_ID_DetaProvLbl
  loc_B449BF: FStAdFunc var_98
  loc_B449C2: FLdRfVar var_98
  loc_B449C5: FLdZeroAd var_BC
  loc_B449C8: FStAdFuncNoPop
  loc_B449CB: CastAd
  loc_B449CE: FStAdFunc var_90
  loc_B449D1: FLdRfVar var_90
  loc_B449D4: FLdPr Me
  loc_B449D7: MemLdRfVar from_stack_1.global_108
  loc_B449DA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B449DF: IStI2 Cancel
  loc_B449E2: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B449ED: Branch loc_B44A6E
  loc_B449F0: FLdRfVar var_A8
  loc_B449F3: FLdRfVar var_90
  loc_B449F6: FLdRfVar var_88
  loc_B449F9: ImpAdLdRf MemVar_C3D74C
  loc_B449FC: NewIfNullPr bscProveedor
  loc_B449FF: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44A04: FLdPr var_88
  loc_B44A07: from_stack_1v = clsbase.RsFrmGet()
  loc_B44A0C: FLdPr var_90
  loc_B44A0F:  = Me.RecordCount
  loc_B44A14: ILdRf var_A8
  loc_B44A17: LitI4 1
  loc_B44A1C: LtI4
  loc_B44A1D: FFreeAd var_88 = ""
  loc_B44A24: BranchF loc_B44A6E
  loc_B44A27: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B44A2A: FLdPr Me
  loc_B44A2D: MemStStrCopy
  loc_B44A31: FLdPr Me
  loc_B44A34: VCallAd Control_ID_CucuPersTxt
  loc_B44A37: FStAdFunc var_BC
  loc_B44A3A: FLdPr Me
  loc_B44A3D: VCallAd Control_ID_DetaProvLbl
  loc_B44A40: FStAdFunc var_98
  loc_B44A43: FLdRfVar var_98
  loc_B44A46: FLdZeroAd var_BC
  loc_B44A49: FStAdFuncNoPop
  loc_B44A4C: CastAd
  loc_B44A4F: FStAdFunc var_90
  loc_B44A52: FLdRfVar var_90
  loc_B44A55: FLdPr Me
  loc_B44A58: MemLdRfVar from_stack_1.global_108
  loc_B44A5B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B44A60: IStI2 Cancel
  loc_B44A63: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B44A6E: Branch loc_B44E82
  loc_B44A71: FLdRfVar var_9C
  loc_B44A74: FLdPr Me
  loc_B44A77: VCallAd Control_ID_CucuPersTxt
  loc_B44A7A: FStAdFunc var_88
  loc_B44A7D: FLdPr var_88
  loc_B44A80:  = Me.Text
  loc_B44A85: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B44A88: LitI4 0
  loc_B44A8D: LitI4 -1
  loc_B44A92: LitI4 1
  loc_B44A97: LitStr Chr(37)
  loc_B44A9A: LitStr " "
  loc_B44A9D: ILdRf var_9C
  loc_B44AA0: ImpAdCallI2 Replace(, , , , , )
  loc_B44AA5: FStStrNoPop var_A0
  loc_B44AA8: ConcatStr
  loc_B44AA9: FStStrNoPop var_A4
  loc_B44AAC: LitStr Chr(37) & "'"
  loc_B44AAF: ConcatStr
  loc_B44AB0: FStStrNoPop var_E4
  loc_B44AB3: ImpAdLdRf MemVar_C3D74C
  loc_B44AB6: NewIfNullPr bscProveedor
  loc_B44AB9: Call bscProveedor.Constructor(from_stack_1v)
  loc_B44ABE: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_B44AC9: FFree1Ad var_88
  loc_B44ACC: FLdRfVar var_A8
  loc_B44ACF: FLdRfVar var_90
  loc_B44AD2: FLdRfVar var_88
  loc_B44AD5: ImpAdLdRf MemVar_C3D74C
  loc_B44AD8: NewIfNullPr bscProveedor
  loc_B44ADB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44AE0: FLdPr var_88
  loc_B44AE3: from_stack_1v = clsbase.RsFrmGet()
  loc_B44AE8: FLdPr var_90
  loc_B44AEB:  = Me.RecordCount
  loc_B44AF0: ILdRf var_A8
  loc_B44AF3: LitI4 1
  loc_B44AF8: EqI4
  loc_B44AF9: FFreeAd var_88 = ""
  loc_B44B00: BranchF loc_B44C23
  loc_B44B03: FLdRfVar var_CC
  loc_B44B06: FLdRfVar var_BC
  loc_B44B09: LitVarStr var_B8, "CucuPers"
  loc_B44B0E: PopAdLdVar
  loc_B44B0F: FLdRfVar var_98
  loc_B44B12: FLdRfVar var_90
  loc_B44B15: FLdRfVar var_88
  loc_B44B18: ImpAdLdRf MemVar_C3D74C
  loc_B44B1B: NewIfNullPr bscProveedor
  loc_B44B1E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44B23: FLdPr var_88
  loc_B44B26: from_stack_1v = clsbase.RsFrmGet()
  loc_B44B2B: FLdPr var_90
  loc_B44B2E:  = Me.Fields
  loc_B44B33: FLdPr var_98
  loc_B44B36: from_stack_2 = Me.Item(from_stack_1)
  loc_B44B3B: FLdPr var_BC
  loc_B44B3E:  = Me.Value
  loc_B44B43: FLdRfVar var_CC
  loc_B44B46: CStrVarTmp
  loc_B44B47: FStStrNoPop var_9C
  loc_B44B4A: FLdPr Me
  loc_B44B4D: VCallAd Control_ID_CucuPersTxt
  loc_B44B50: FStAdFunc var_D0
  loc_B44B53: FLdPr var_D0
  loc_B44B56: Me.Text = from_stack_1
  loc_B44B5B: FFree1Str var_9C
  loc_B44B5E: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B44B6B: FFree1Var var_CC = ""
  loc_B44B6E: FLdRfVar var_CC
  loc_B44B71: FLdRfVar var_BC
  loc_B44B74: LitVarStr var_B8, "DetaProv"
  loc_B44B79: PopAdLdVar
  loc_B44B7A: FLdRfVar var_98
  loc_B44B7D: FLdRfVar var_90
  loc_B44B80: FLdRfVar var_88
  loc_B44B83: ImpAdLdRf MemVar_C3D74C
  loc_B44B86: NewIfNullPr bscProveedor
  loc_B44B89: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44B8E: FLdPr var_88
  loc_B44B91: from_stack_1v = clsbase.RsFrmGet()
  loc_B44B96: FLdPr var_90
  loc_B44B99:  = Me.Fields
  loc_B44B9E: FLdPr var_98
  loc_B44BA1: from_stack_2 = Me.Item(from_stack_1)
  loc_B44BA6: FLdPr var_BC
  loc_B44BA9:  = Me.Value
  loc_B44BAE: FLdRfVar var_CC
  loc_B44BB1: CStrVarTmp
  loc_B44BB2: FStStrNoPop var_9C
  loc_B44BB5: FLdPr Me
  loc_B44BB8: VCallAd Control_ID_DetaProvLbl
  loc_B44BBB: FStAdFunc var_D0
  loc_B44BBE: FLdPr var_D0
  loc_B44BC1: Me.Caption = from_stack_1
  loc_B44BC6: FFree1Str var_9C
  loc_B44BC9: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B44BD6: FFree1Var var_CC = ""
  loc_B44BD9: LitStr vbNullString
  loc_B44BDC: FLdPr Me
  loc_B44BDF: MemStStrCopy
  loc_B44BE3: FLdPr Me
  loc_B44BE6: VCallAd Control_ID_CucuPersTxt
  loc_B44BE9: FStAdFunc var_BC
  loc_B44BEC: FLdPr Me
  loc_B44BEF: VCallAd Control_ID_DetaProvLbl
  loc_B44BF2: FStAdFunc var_98
  loc_B44BF5: FLdRfVar var_98
  loc_B44BF8: FLdZeroAd var_BC
  loc_B44BFB: FStAdFuncNoPop
  loc_B44BFE: CastAd
  loc_B44C01: FStAdFunc var_90
  loc_B44C04: FLdRfVar var_90
  loc_B44C07: FLdPr Me
  loc_B44C0A: MemLdRfVar from_stack_1.global_108
  loc_B44C0D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B44C12: IStI2 Cancel
  loc_B44C15: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B44C20: Branch loc_B44E82
  loc_B44C23: FLdRfVar var_A8
  loc_B44C26: FLdRfVar var_90
  loc_B44C29: FLdRfVar var_88
  loc_B44C2C: ImpAdLdRf MemVar_C3D74C
  loc_B44C2F: NewIfNullPr bscProveedor
  loc_B44C32: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44C37: FLdPr var_88
  loc_B44C3A: from_stack_1v = clsbase.RsFrmGet()
  loc_B44C3F: FLdPr var_90
  loc_B44C42:  = Me.RecordCount
  loc_B44C47: ILdRf var_A8
  loc_B44C4A: LitI4 1
  loc_B44C4F: GtI4
  loc_B44C50: FFreeAd var_88 = ""
  loc_B44C57: BranchF loc_B44E04
  loc_B44C5A: LitVar_Missing var_E0
  loc_B44C5D: PopAdLdVar
  loc_B44C5E: LitVarI4
  loc_B44C66: PopAdLdVar
  loc_B44C67: ImpAdLdRf MemVar_C3D74C
  loc_B44C6A: NewIfNullPr bscProveedor
  loc_B44C6D: bscProveedor.Show from_stack_1, from_stack_2
  loc_B44C72: FLdRfVar var_A8
  loc_B44C75: FLdRfVar var_88
  loc_B44C78: ImpAdLdRf MemVar_C3D74C
  loc_B44C7B: NewIfNullPr bscProveedor
  loc_B44C7E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44C83: FLdPr var_88
  loc_B44C86: from_stack_1 = clsbase.RecordCount
  loc_B44C8B: ILdRf var_A8
  loc_B44C8E: LitI4 0
  loc_B44C93: GtI4
  loc_B44C94: FFree1Ad var_88
  loc_B44C97: BranchF loc_B44DBA
  loc_B44C9A: FLdRfVar var_CC
  loc_B44C9D: FLdRfVar var_BC
  loc_B44CA0: LitVarStr var_B8, "CucuPers"
  loc_B44CA5: PopAdLdVar
  loc_B44CA6: FLdRfVar var_98
  loc_B44CA9: FLdRfVar var_90
  loc_B44CAC: FLdRfVar var_88
  loc_B44CAF: ImpAdLdRf MemVar_C3D74C
  loc_B44CB2: NewIfNullPr bscProveedor
  loc_B44CB5: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44CBA: FLdPr var_88
  loc_B44CBD: from_stack_1v = clsbase.RsFrmGet()
  loc_B44CC2: FLdPr var_90
  loc_B44CC5:  = Me.Fields
  loc_B44CCA: FLdPr var_98
  loc_B44CCD: from_stack_2 = Me.Item(from_stack_1)
  loc_B44CD2: FLdPr var_BC
  loc_B44CD5:  = Me.Value
  loc_B44CDA: FLdRfVar var_CC
  loc_B44CDD: CStrVarTmp
  loc_B44CDE: FStStrNoPop var_9C
  loc_B44CE1: FLdPr Me
  loc_B44CE4: VCallAd Control_ID_CucuPersTxt
  loc_B44CE7: FStAdFunc var_D0
  loc_B44CEA: FLdPr var_D0
  loc_B44CED: Me.Text = from_stack_1
  loc_B44CF2: FFree1Str var_9C
  loc_B44CF5: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B44D02: FFree1Var var_CC = ""
  loc_B44D05: FLdRfVar var_CC
  loc_B44D08: FLdRfVar var_BC
  loc_B44D0B: LitVarStr var_B8, "DetaProv"
  loc_B44D10: PopAdLdVar
  loc_B44D11: FLdRfVar var_98
  loc_B44D14: FLdRfVar var_90
  loc_B44D17: FLdRfVar var_88
  loc_B44D1A: ImpAdLdRf MemVar_C3D74C
  loc_B44D1D: NewIfNullPr bscProveedor
  loc_B44D20: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44D25: FLdPr var_88
  loc_B44D28: from_stack_1v = clsbase.RsFrmGet()
  loc_B44D2D: FLdPr var_90
  loc_B44D30:  = Me.Fields
  loc_B44D35: FLdPr var_98
  loc_B44D38: from_stack_2 = Me.Item(from_stack_1)
  loc_B44D3D: FLdPr var_BC
  loc_B44D40:  = Me.Value
  loc_B44D45: FLdRfVar var_CC
  loc_B44D48: CStrVarTmp
  loc_B44D49: FStStrNoPop var_9C
  loc_B44D4C: FLdPr Me
  loc_B44D4F: VCallAd Control_ID_DetaProvLbl
  loc_B44D52: FStAdFunc var_D0
  loc_B44D55: FLdPr var_D0
  loc_B44D58: Me.Caption = from_stack_1
  loc_B44D5D: FFree1Str var_9C
  loc_B44D60: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_BC = ""
  loc_B44D6D: FFree1Var var_CC = ""
  loc_B44D70: LitStr vbNullString
  loc_B44D73: FLdPr Me
  loc_B44D76: MemStStrCopy
  loc_B44D7A: FLdPr Me
  loc_B44D7D: VCallAd Control_ID_CucuPersTxt
  loc_B44D80: FStAdFunc var_BC
  loc_B44D83: FLdPr Me
  loc_B44D86: VCallAd Control_ID_DetaProvLbl
  loc_B44D89: FStAdFunc var_98
  loc_B44D8C: FLdRfVar var_98
  loc_B44D8F: FLdZeroAd var_BC
  loc_B44D92: FStAdFuncNoPop
  loc_B44D95: CastAd
  loc_B44D98: FStAdFunc var_90
  loc_B44D9B: FLdRfVar var_90
  loc_B44D9E: FLdPr Me
  loc_B44DA1: MemLdRfVar from_stack_1.global_108
  loc_B44DA4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B44DA9: IStI2 Cancel
  loc_B44DAC: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B44DB7: Branch loc_B44E01
  loc_B44DBA: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B44DBD: FLdPr Me
  loc_B44DC0: MemStStrCopy
  loc_B44DC4: FLdPr Me
  loc_B44DC7: VCallAd Control_ID_CucuPersTxt
  loc_B44DCA: FStAdFunc var_BC
  loc_B44DCD: FLdPr Me
  loc_B44DD0: VCallAd Control_ID_DetaProvLbl
  loc_B44DD3: FStAdFunc var_98
  loc_B44DD6: FLdRfVar var_98
  loc_B44DD9: FLdZeroAd var_BC
  loc_B44DDC: FStAdFuncNoPop
  loc_B44DDF: CastAd
  loc_B44DE2: FStAdFunc var_90
  loc_B44DE5: FLdRfVar var_90
  loc_B44DE8: FLdPr Me
  loc_B44DEB: MemLdRfVar from_stack_1.global_108
  loc_B44DEE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B44DF3: IStI2 Cancel
  loc_B44DF6: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B44E01: Branch loc_B44E82
  loc_B44E04: FLdRfVar var_A8
  loc_B44E07: FLdRfVar var_90
  loc_B44E0A: FLdRfVar var_88
  loc_B44E0D: ImpAdLdRf MemVar_C3D74C
  loc_B44E10: NewIfNullPr bscProveedor
  loc_B44E13: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44E18: FLdPr var_88
  loc_B44E1B: from_stack_1v = clsbase.RsFrmGet()
  loc_B44E20: FLdPr var_90
  loc_B44E23:  = Me.RecordCount
  loc_B44E28: ILdRf var_A8
  loc_B44E2B: LitI4 1
  loc_B44E30: LtI4
  loc_B44E31: FFreeAd var_88 = ""
  loc_B44E38: BranchF loc_B44E82
  loc_B44E3B: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B44E3E: FLdPr Me
  loc_B44E41: MemStStrCopy
  loc_B44E45: FLdPr Me
  loc_B44E48: VCallAd Control_ID_CucuPersTxt
  loc_B44E4B: FStAdFunc var_BC
  loc_B44E4E: FLdPr Me
  loc_B44E51: VCallAd Control_ID_DetaProvLbl
  loc_B44E54: FStAdFunc var_98
  loc_B44E57: FLdRfVar var_98
  loc_B44E5A: FLdZeroAd var_BC
  loc_B44E5D: FStAdFuncNoPop
  loc_B44E60: CastAd
  loc_B44E63: FStAdFunc var_90
  loc_B44E66: FLdRfVar var_90
  loc_B44E69: FLdPr Me
  loc_B44E6C: MemLdRfVar from_stack_1.global_108
  loc_B44E6F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B44E74: IStI2 Cancel
  loc_B44E77: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B44E82: Branch loc_B45049
  loc_B44E85: LitI2_Byte 0
  loc_B44E87: ImpAdLdRf MemVar_C3D74C
  loc_B44E8A: NewIfNullPr bscProveedor
  loc_B44E8D: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B44E92: LitNothing
  loc_B44E94: CastAd
  loc_B44E97: FStAdFuncNoPop
  loc_B44E9A: FLdRfVar var_88
  loc_B44E9D: ImpAdLdRf MemVar_C3D74C
  loc_B44EA0: NewIfNullPr bscProveedor
  loc_B44EA3: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44EA8: FLdPr var_88
  loc_B44EAB: Call clsbase.RsFrmSet(from_stack_1v)
  loc_B44EB0: FFreeAd var_90 = ""
  loc_B44EB7: LitVar_Missing var_E0
  loc_B44EBA: PopAdLdVar
  loc_B44EBB: LitVarI4
  loc_B44EC3: PopAdLdVar
  loc_B44EC4: ImpAdLdRf MemVar_C3D74C
  loc_B44EC7: NewIfNullPr bscProveedor
  loc_B44ECA: bscProveedor.Show from_stack_1, from_stack_2
  loc_B44ECF: FLdRfVar var_A8
  loc_B44ED2: FLdRfVar var_88
  loc_B44ED5: ImpAdLdRf MemVar_C3D74C
  loc_B44ED8: NewIfNullPr bscProveedor
  loc_B44EDB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44EE0: FLdPr var_88
  loc_B44EE3: from_stack_1 = clsbase.RecordCount
  loc_B44EE8: ILdRf var_A8
  loc_B44EEB: LitI4 0
  loc_B44EF0: GtI4
  loc_B44EF1: FFree1Ad var_88
  loc_B44EF4: BranchF loc_B45002
  loc_B44EF7: FLdRfVar var_CC
  loc_B44EFA: FLdRfVar var_BC
  loc_B44EFD: LitVarStr var_B8, "CucuPers"
  loc_B44F02: PopAdLdVar
  loc_B44F03: FLdRfVar var_98
  loc_B44F06: FLdRfVar var_90
  loc_B44F09: FLdRfVar var_88
  loc_B44F0C: ImpAdLdRf MemVar_C3D74C
  loc_B44F0F: NewIfNullPr bscProveedor
  loc_B44F12: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B44F17: FLdPr var_88
  loc_B44F1A: from_stack_1v = clsbase.RsFrmGet()
  loc_B44F1F: FLdPr var_90
  loc_B44F22:  = Me.Fields
  loc_B44F27: FLdPr var_98
  loc_B44F2A: from_stack_2 = Me.Item(from_stack_1)
  loc_B44F2F: FLdPr var_BC
  loc_B44F32:  = Me.Value
  loc_B44F37: FLdPr Me
  loc_B44F3A: MemLdRfVar from_stack_1.global_72
  loc_B44F3D: NewIfNullRf
  loc_B44F41: FLdRfVar var_CC
  loc_B44F44: CStrVarTmp
  loc_B44F45: FStStrNoPop var_9C
  loc_B44F48: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_B44F4D: FStStrNoPop var_A0
  loc_B44F50: FLdPr Me
  loc_B44F53: MemStStrCopy
  loc_B44F57: FFreeStr var_9C = ""
  loc_B44F5E: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B44F69: FFree1Var var_CC = ""
  loc_B44F6C: FLdRfVar var_9C
  loc_B44F6F: FLdPr Me
  loc_B44F72: MemLdRfVar from_stack_1.global_72
  loc_B44F75: NewIfNullPr tblproveedor
  loc_B44F78: from_stack_1v = tblproveedor.CucuPersGet()
  loc_B44F7D: ILdRf var_9C
  loc_B44F80: FLdPr Me
  loc_B44F83: VCallAd Control_ID_CucuPersTxt
  loc_B44F86: FStAdFunc var_88
  loc_B44F89: FLdPr var_88
  loc_B44F8C: Me.Text = from_stack_1
  loc_B44F91: FFree1Str var_9C
  loc_B44F94: FFree1Ad var_88
  loc_B44F97: FLdRfVar var_9C
  loc_B44F9A: FLdPr Me
  loc_B44F9D: MemLdRfVar from_stack_1.global_72
  loc_B44FA0: NewIfNullPr tblproveedor
  loc_B44FA3: from_stack_1v = tblproveedor.DetaProvGet()
  loc_B44FA8: ILdRf var_9C
  loc_B44FAB: FLdPr Me
  loc_B44FAE: VCallAd Control_ID_DetaProvLbl
  loc_B44FB1: FStAdFunc var_88
  loc_B44FB4: FLdPr var_88
  loc_B44FB7: Me.Caption = from_stack_1
  loc_B44FBC: FFree1Str var_9C
  loc_B44FBF: FFree1Ad var_88
  loc_B44FC2: FLdPr Me
  loc_B44FC5: VCallAd Control_ID_CucuPersTxt
  loc_B44FC8: FStAdFunc var_BC
  loc_B44FCB: FLdPr Me
  loc_B44FCE: VCallAd Control_ID_DetaProvLbl
  loc_B44FD1: FStAdFunc var_98
  loc_B44FD4: FLdRfVar var_98
  loc_B44FD7: FLdZeroAd var_BC
  loc_B44FDA: FStAdFuncNoPop
  loc_B44FDD: CastAd
  loc_B44FE0: FStAdFunc var_90
  loc_B44FE3: FLdRfVar var_90
  loc_B44FE6: FLdPr Me
  loc_B44FE9: MemLdRfVar from_stack_1.global_108
  loc_B44FEC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B44FF1: IStI2 Cancel
  loc_B44FF4: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B44FFF: Branch loc_B45049
  loc_B45002: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B45005: FLdPr Me
  loc_B45008: MemStStrCopy
  loc_B4500C: FLdPr Me
  loc_B4500F: VCallAd Control_ID_CucuPersTxt
  loc_B45012: FStAdFunc var_BC
  loc_B45015: FLdPr Me
  loc_B45018: VCallAd Control_ID_DetaProvLbl
  loc_B4501B: FStAdFunc var_98
  loc_B4501E: FLdRfVar var_98
  loc_B45021: FLdZeroAd var_BC
  loc_B45024: FStAdFuncNoPop
  loc_B45027: CastAd
  loc_B4502A: FStAdFunc var_90
  loc_B4502D: FLdRfVar var_90
  loc_B45030: FLdPr Me
  loc_B45033: MemLdRfVar from_stack_1.global_108
  loc_B45036: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4503B: IStI2 Cancel
  loc_B4503E: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_B45049: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95A38C
  'Data Table: 46C4D4
  loc_95A374: LitI2_Byte 0
  loc_95A376: ILdRf Me
  loc_95A379: CastAd
  loc_95A37C: FStAdFunc var_88
  loc_95A37F: FLdRfVar var_88
  loc_95A382: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95A387: FFree1Ad var_88
  loc_95A38A: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A837C
  'Data Table: 46C4D4
  loc_9A82EC: LitI2_Byte 0
  loc_9A82EE: FLdPr Me
  loc_9A82F1: MemStI2 bGenerado
  loc_9A82F4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A82F9: ImpAdLdI2 MemVar_C3D064
  loc_9A82FC: CStrUI1
  loc_9A82FE: FStStrNoPop var_88
  loc_9A8301: FLdPr Me
  loc_9A8304: VCallAd Control_ID_cboPeriodo
  loc_9A8307: FStAdFunc var_8C
  loc_9A830A: FLdPr var_8C
  loc_9A830D: Me.Text = from_stack_1
  loc_9A8312: FFree1Str var_88
  loc_9A8315: FFree1Ad var_8C
  loc_9A8318: LitVarStr var_9C, vbNullString
  loc_9A831D: PopAdLdVar
  loc_9A831E: FLdPr Me
  loc_9A8321: VCallAd Control_ID_NumeOrpaMsk
  loc_9A8324: FStAdFunc var_8C
  loc_9A8327: FLdPr var_8C
  loc_9A832A: LateIdSt
  loc_9A832F: FFree1Ad var_8C
  loc_9A8332: LitStr vbNullString
  loc_9A8335: FLdPr Me
  loc_9A8338: VCallAd Control_ID_CucuPersTxt
  loc_9A833B: FStAdFunc var_8C
  loc_9A833E: FLdPr var_8C
  loc_9A8341: Me.Text = from_stack_1
  loc_9A8346: FFree1Ad var_8C
  loc_9A8349: LitStr vbNullString
  loc_9A834C: FLdPr Me
  loc_9A834F: VCallAd Control_ID_DetaProvLbl
  loc_9A8352: FStAdFunc var_8C
  loc_9A8355: FLdPr var_8C
  loc_9A8358: Me.Caption = from_stack_1
  loc_9A835D: FFree1Ad var_8C
  loc_9A8360: Call HabilitarCriterio()
  loc_9A8365: ILdRf Me
  loc_9A8368: CastAd
  loc_9A836B: FStAdFunc var_8C
  loc_9A836E: FLdRfVar var_8C
  loc_9A8371: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A8376: FFree1Ad var_8C
  loc_9A8379: ExitProcHresult
End Sub

Public Function htmFileGet() '46D348
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '46D357
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '46D366
  htmFile = Value
End Sub

Public Function bGeneradoGet() '46D375
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46D384
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '996064
  'Data Table: 46C4D4
  loc_996010: LitI4 0
  loc_996015: LitI4 2
  loc_99601A: FLdRfVar var_88
  loc_99601D: Redim
  loc_996027: FLdPr Me
  loc_99602A: VCallAd Control_ID_cboPeriodo
  loc_99602D: CVarAd
  loc_996031: ParmAry1St
  loc_996037: FLdPr Me
  loc_99603A: VCallAd Control_ID_NumeOrpaMsk
  loc_99603D: CVarAd
  loc_996041: ParmAry1St
  loc_996047: FLdPr Me
  loc_99604A: VCallAd Control_ID_CucuPersTxt
  loc_99604D: CVarAd
  loc_996051: ParmAry1St
  loc_996057: FLdRfVar var_88
  loc_99605A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_99605F: FLdRfVar var_88
  loc_996062: Erase
  loc_996063: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BDF1A4
  'Data Table: 46C4D4
  loc_BDD9A4: FLdPr Me
  loc_BDD9A7: MemLdI2 bGenerado
  loc_BDD9AA: BranchF loc_BDD9AE
  loc_BDD9AD: ExitProcHresult
  loc_BDD9AE: LitVarStr var_A0, "Generando reporte..."
  loc_BDD9B3: PopAdLdVar
  loc_BDD9B4: FLdPr Me
  loc_BDD9B7: VCallAd Control_ID_statusBar
  loc_BDD9BA: FStAdFunc var_B4
  loc_BDD9BD: FLdPr var_B4
  loc_BDD9C0: LateIdSt
  loc_BDD9C5: FFree1Ad var_B4
  loc_BDD9C8: LitI4 &HB
  loc_BDD9CD: CI2I4
  loc_BDD9CE: FLdPr Me
  loc_BDD9D1: Me.MousePointer = from_stack_1
  loc_BDD9D6: LitI2_Byte 0
  loc_BDD9D8: PopTmpLdAd2 var_B6
  loc_BDD9DB: Call NumeOrpaMsk_UnknownEvent_8()
  loc_BDD9E0: FLdPr Me
  loc_BDD9E3: MemLdStr global_108
  loc_BDD9E6: LitStr vbNullString
  loc_BDD9E9: NeStr
  loc_BDD9EB: BranchF loc_BDD9F1
  loc_BDD9EE: Branch loc_BDF178
  loc_BDD9F1: FLdRfVar var_BC
  loc_BDD9F4: FLdPr Me
  loc_BDD9F7: VCallAd Control_ID_CucuPersTxt
  loc_BDD9FA: FStAdFunc var_B4
  loc_BDD9FD: FLdPr var_B4
  loc_BDDA00:  = Me.Text
  loc_BDDA05: LitStr " AND cheque.CucuPers = "
  loc_BDDA08: FLdRfVar var_C4
  loc_BDDA0B: FLdPr Me
  loc_BDDA0E: VCallAd Control_ID_CucuPersTxt
  loc_BDDA11: FStAdFunc var_C0
  loc_BDDA14: FLdPr var_C0
  loc_BDDA17:  = Me.Text
  loc_BDDA1C: ILdRf var_C4
  loc_BDDA1F: ConcatStr
  loc_BDDA20: CVarStr var_E4
  loc_BDDA23: LitVarStr var_B0, vbNullString
  loc_BDDA28: FStVarCopyObj var_D4
  loc_BDDA2B: FLdRfVar var_D4
  loc_BDDA2E: ILdRf var_BC
  loc_BDDA31: LitStr vbNullString
  loc_BDDA34: EqStr
  loc_BDDA36: CVarBoolI2 var_A0
  loc_BDDA3A: FLdRfVar var_F4
  loc_BDDA3D: ImpAdCallFPR4  = IIf(, , )
  loc_BDDA42: FLdRfVar var_F4
  loc_BDDA45: CStrVarTmp
  loc_BDDA46: FStStr var_8C
  loc_BDDA49: FFreeStr var_BC = ""
  loc_BDDA50: FFreeAd var_B4 = ""
  loc_BDDA57: FFreeVar var_A0 = "": var_D4 = "": var_E4 = ""
  loc_BDDA62: LitStr "SELECT ordenpago.*, cheque.CucuPers, DetaProv, Max(FepaCheq) FepaCheq"
  loc_BDDA65: LitStr " FROM ordenpago"
  loc_BDDA68: ConcatStr
  loc_BDDA69: FStStrNoPop var_BC
  loc_BDDA6C: LitStr " INNER JOIN cheque ON cheque.PeriInfo = ordenpago.PeriInfo AND cheque.NumeOrpa = ordenpago.NumeOrpa"
  loc_BDDA6F: ConcatStr
  loc_BDDA70: FStStrNoPop var_C4
  loc_BDDA73: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_BDDA76: ConcatStr
  loc_BDDA77: FStStrNoPop var_F8
  loc_BDDA7A: LitStr " WHERE ordenpago.PeriInfo = "
  loc_BDDA7D: ConcatStr
  loc_BDDA7E: FStStrNoPop var_100
  loc_BDDA81: FLdRfVar var_FC
  loc_BDDA84: FLdPr Me
  loc_BDDA87: VCallAd Control_ID_cboPeriodo
  loc_BDDA8A: FStAdFunc var_B4
  loc_BDDA8D: FLdPr var_B4
  loc_BDDA90:  = Me.Text
  loc_BDDA95: ILdRf var_FC
  loc_BDDA98: ConcatStr
  loc_BDDA99: FStStrNoPop var_104
  loc_BDDA9C: LitStr " AND ordenpago.NumeOrpa = "
  loc_BDDA9F: ConcatStr
  loc_BDDAA0: FStStrNoPop var_108
  loc_BDDAA3: FLdPr Me
  loc_BDDAA6: VCallAd Control_ID_NumeOrpaMsk
  loc_BDDAA9: FStAdFunc var_C0
  loc_BDDAAC: FLdPr var_C0
  loc_BDDAAF: LateIdLdVar var_D4 DispID_22 0
  loc_BDDAB6: CStrVarTmp
  loc_BDDAB7: FStStrNoPop var_10C
  loc_BDDABA: ConcatStr
  loc_BDDABB: FStStrNoPop var_110
  loc_BDDABE: LitStr " AND TipoOrpa <> 'Reservada' AND FepaCheq IS NOT NULL "
  loc_BDDAC1: ConcatStr
  loc_BDDAC2: FStStrNoPop var_114
  loc_BDDAC5: ILdRf var_8C
  loc_BDDAC8: ConcatStr
  loc_BDDAC9: FStStrNoPop var_118
  loc_BDDACC: LitStr " GROUP BY CucuPers"
  loc_BDDACF: ConcatStr
  loc_BDDAD0: FStStrNoPop var_11C
  loc_BDDAD3: LitStr " ORDER BY DetaProv;"
  loc_BDDAD6: ConcatStr
  loc_BDDAD7: FStStrNoPop var_120
  loc_BDDADA: FLdPr Me
  loc_BDDADD: MemLdRfVar from_stack_1.global_84
  loc_BDDAE0: NewIfNullPr clsbase
  loc_BDDAE3: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDDAE8: FFreeStr var_BC = "": var_C4 = "": var_F8 = "": var_100 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BDDB05: FFreeAd var_B4 = ""
  loc_BDDB0C: FFree1Var var_D4 = ""
  loc_BDDB0F: FLdRfVar var_124
  loc_BDDB12: FLdPr Me
  loc_BDDB15: MemLdRfVar from_stack_1.global_84
  loc_BDDB18: NewIfNullPr clsbase
  loc_BDDB1B: from_stack_1 = clsbase.RecordCount
  loc_BDDB20: ILdRf var_124
  loc_BDDB23: LitI4 0
  loc_BDDB28: EqI4
  loc_BDDB29: BranchF loc_BDDB3C
  loc_BDDB2C: LitI4 0
  loc_BDDB31: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BDDB34: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BDDB39: Branch loc_BDF178
  loc_BDDB3C: LitI2_Byte 0
  loc_BDDB3E: FLdPr Me
  loc_BDDB41: MemStI2 global_96
  loc_BDDB44: FLdPr Me
  loc_BDDB47: MemLdRfVar from_stack_1.global_84
  loc_BDDB4A: NewIfNullAd
  loc_BDDB4D: FStAd var_128 
  loc_BDDB51: FLdPr var_128
  loc_BDDB54: Call clsbase.MoveFirst()
  loc_BDDB59: LitI4 0
  loc_BDDB5E: FLdRfVar var_124
  loc_BDDB61: FLdPr var_128
  loc_BDDB64: from_stack_1 = clsbase.RecordCount
  loc_BDDB69: ILdRf var_124
  loc_BDDB6C: FLdPr Me
  loc_BDDB6F: MemLdRfVar from_stack_1.global_92
  loc_BDDB72: Redim
  loc_BDDB7C: FLdRfVar var_B6
  loc_BDDB7F: FLdPr var_128
  loc_BDDB82: from_stack_1 = clsbase.EOF
  loc_BDDB87: FLdI2 var_B6
  loc_BDDB8A: NotI4
  loc_BDDB8B: BranchF loc_BDDF08
  loc_BDDB8E: FLdPr Me
  loc_BDDB91: MemLdI2 global_96
  loc_BDDB94: LitI2_Byte 1
  loc_BDDB96: AddI2
  loc_BDDB97: FLdPr Me
  loc_BDDB9A: MemStI2 global_96
  loc_BDDB9D: FLdRfVar var_12C
  loc_BDDBA0: LitVarStr var_A0, "PeriInfo"
  loc_BDDBA5: PopAdLdVar
  loc_BDDBA6: FLdRfVar var_C0
  loc_BDDBA9: FLdRfVar var_B4
  loc_BDDBAC: FLdPr var_128
  loc_BDDBAF: from_stack_1v = clsbase.RsFrmGet()
  loc_BDDBB4: FLdPr var_B4
  loc_BDDBB7:  = Me.Fields
  loc_BDDBBC: FLdPr var_C0
  loc_BDDBBF: from_stack_2 = Me.Item(from_stack_1)
  loc_BDDBC4: LitI2_Byte 0
  loc_BDDBC6: LitVar_Missing var_E4
  loc_BDDBC9: LitI2_Byte 0
  loc_BDDBCB: FLdZeroAd var_12C
  loc_BDDBCE: CVarAd
  loc_BDDBD2: PopAdLdVar
  loc_BDDBD3: FLdPr Me
  loc_BDDBD6: MemLdI2 global_96
  loc_BDDBD9: CI4UI1
  loc_BDDBDA: FLdPr Me
  loc_BDDBDD: MemLdStr global_92
  loc_BDDBE0: AryLock
  loc_BDDBE3: Ary1LdPr
  loc_BDDBE4: MemLdRfVar from_stack_1.global_0
  loc_BDDBE7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDDBEC: AryUnlock
  loc_BDDBEF: FFreeAd var_B4 = ""
  loc_BDDBF6: FFreeVar var_D4 = ""
  loc_BDDBFD: FLdRfVar var_12C
  loc_BDDC00: LitVarStr var_A0, "NumeOrpa"
  loc_BDDC05: PopAdLdVar
  loc_BDDC06: FLdRfVar var_C0
  loc_BDDC09: FLdRfVar var_B4
  loc_BDDC0C: FLdPr var_128
  loc_BDDC0F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDDC14: FLdPr var_B4
  loc_BDDC17:  = Me.Fields
  loc_BDDC1C: FLdPr var_C0
  loc_BDDC1F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDDC24: LitI2_Byte 0
  loc_BDDC26: LitVar_Missing var_E4
  loc_BDDC29: LitI2_Byte 0
  loc_BDDC2B: FLdZeroAd var_12C
  loc_BDDC2E: CVarAd
  loc_BDDC32: PopAdLdVar
  loc_BDDC33: FLdPr Me
  loc_BDDC36: MemLdI2 global_96
  loc_BDDC39: CI4UI1
  loc_BDDC3A: FLdPr Me
  loc_BDDC3D: MemLdStr global_92
  loc_BDDC40: AryLock
  loc_BDDC43: Ary1LdPr
  loc_BDDC44: MemLdRfVar from_stack_1.global_4
  loc_BDDC47: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDDC4C: AryUnlock
  loc_BDDC4F: FFreeAd var_B4 = ""
  loc_BDDC56: FFreeVar var_D4 = ""
  loc_BDDC5D: FLdRfVar var_12C
  loc_BDDC60: LitVarStr var_A0, "DetaOrpa"
  loc_BDDC65: PopAdLdVar
  loc_BDDC66: FLdRfVar var_C0
  loc_BDDC69: FLdRfVar var_B4
  loc_BDDC6C: FLdPr var_128
  loc_BDDC6F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDDC74: FLdPr var_B4
  loc_BDDC77:  = Me.Fields
  loc_BDDC7C: FLdPr var_C0
  loc_BDDC7F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDDC84: LitI2_Byte 0
  loc_BDDC86: LitVar_Missing var_E4
  loc_BDDC89: LitI2_Byte 0
  loc_BDDC8B: FLdZeroAd var_12C
  loc_BDDC8E: CVarAd
  loc_BDDC92: PopAdLdVar
  loc_BDDC93: FLdPr Me
  loc_BDDC96: MemLdI2 global_96
  loc_BDDC99: CI4UI1
  loc_BDDC9A: FLdPr Me
  loc_BDDC9D: MemLdStr global_92
  loc_BDDCA0: AryLock
  loc_BDDCA3: Ary1LdPr
  loc_BDDCA4: MemLdRfVar from_stack_1.global_8
  loc_BDDCA7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDDCAC: AryUnlock
  loc_BDDCAF: FFreeAd var_B4 = ""
  loc_BDDCB6: FFreeVar var_D4 = ""
  loc_BDDCBD: FLdRfVar var_12C
  loc_BDDCC0: LitVarStr var_A0, "ExpeImpu"
  loc_BDDCC5: PopAdLdVar
  loc_BDDCC6: FLdRfVar var_C0
  loc_BDDCC9: FLdRfVar var_B4
  loc_BDDCCC: FLdPr var_128
  loc_BDDCCF: from_stack_1v = clsbase.RsFrmGet()
  loc_BDDCD4: FLdPr var_B4
  loc_BDDCD7:  = Me.Fields
  loc_BDDCDC: FLdPr var_C0
  loc_BDDCDF: from_stack_2 = Me.Item(from_stack_1)
  loc_BDDCE4: LitI2_Byte 0
  loc_BDDCE6: LitVar_Missing var_E4
  loc_BDDCE9: LitI2_Byte 0
  loc_BDDCEB: FLdZeroAd var_12C
  loc_BDDCEE: CVarAd
  loc_BDDCF2: PopAdLdVar
  loc_BDDCF3: FLdPr Me
  loc_BDDCF6: MemLdI2 global_96
  loc_BDDCF9: CI4UI1
  loc_BDDCFA: FLdPr Me
  loc_BDDCFD: MemLdStr global_92
  loc_BDDD00: AryLock
  loc_BDDD03: Ary1LdPr
  loc_BDDD04: MemLdRfVar from_stack_1.global_12
  loc_BDDD07: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDDD0C: AryUnlock
  loc_BDDD0F: FFreeAd var_B4 = ""
  loc_BDDD16: FFreeVar var_D4 = ""
  loc_BDDD1D: FLdRfVar var_12C
  loc_BDDD20: LitVarStr var_A0, "NumeLiqu"
  loc_BDDD25: PopAdLdVar
  loc_BDDD26: FLdRfVar var_C0
  loc_BDDD29: FLdRfVar var_B4
  loc_BDDD2C: FLdPr var_128
  loc_BDDD2F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDDD34: FLdPr var_B4
  loc_BDDD37:  = Me.Fields
  loc_BDDD3C: FLdPr var_C0
  loc_BDDD3F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDDD44: LitI2_Byte 0
  loc_BDDD46: LitVar_Missing var_E4
  loc_BDDD49: LitI2_Byte 0
  loc_BDDD4B: FLdZeroAd var_12C
  loc_BDDD4E: CVarAd
  loc_BDDD52: PopAdLdVar
  loc_BDDD53: FLdPr Me
  loc_BDDD56: MemLdI2 global_96
  loc_BDDD59: CI4UI1
  loc_BDDD5A: FLdPr Me
  loc_BDDD5D: MemLdStr global_92
  loc_BDDD60: AryLock
  loc_BDDD63: Ary1LdPr
  loc_BDDD64: MemLdRfVar from_stack_1.global_16
  loc_BDDD67: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDDD6C: AryUnlock
  loc_BDDD6F: FFreeAd var_B4 = ""
  loc_BDDD76: FFreeVar var_D4 = ""
  loc_BDDD7D: FLdRfVar var_12C
  loc_BDDD80: LitVarStr var_A0, "TipoOrpa"
  loc_BDDD85: PopAdLdVar
  loc_BDDD86: FLdRfVar var_C0
  loc_BDDD89: FLdRfVar var_B4
  loc_BDDD8C: FLdPr var_128
  loc_BDDD8F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDDD94: FLdPr var_B4
  loc_BDDD97:  = Me.Fields
  loc_BDDD9C: FLdPr var_C0
  loc_BDDD9F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDDDA4: LitI2_Byte 0
  loc_BDDDA6: LitVar_Missing var_E4
  loc_BDDDA9: LitI2_Byte 0
  loc_BDDDAB: FLdZeroAd var_12C
  loc_BDDDAE: CVarAd
  loc_BDDDB2: PopAdLdVar
  loc_BDDDB3: FLdPr Me
  loc_BDDDB6: MemLdI2 global_96
  loc_BDDDB9: CI4UI1
  loc_BDDDBA: FLdPr Me
  loc_BDDDBD: MemLdStr global_92
  loc_BDDDC0: AryLock
  loc_BDDDC3: Ary1LdPr
  loc_BDDDC4: MemLdRfVar from_stack_1.global_20
  loc_BDDDC7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDDDCC: AryUnlock
  loc_BDDDCF: FFreeAd var_B4 = ""
  loc_BDDDD6: FFreeVar var_D4 = ""
  loc_BDDDDD: FLdRfVar var_12C
  loc_BDDDE0: LitVarStr var_A0, "ChunOrpa"
  loc_BDDDE5: PopAdLdVar
  loc_BDDDE6: FLdRfVar var_C0
  loc_BDDDE9: FLdRfVar var_B4
  loc_BDDDEC: FLdPr var_128
  loc_BDDDEF: from_stack_1v = clsbase.RsFrmGet()
  loc_BDDDF4: FLdPr var_B4
  loc_BDDDF7:  = Me.Fields
  loc_BDDDFC: FLdPr var_C0
  loc_BDDDFF: from_stack_2 = Me.Item(from_stack_1)
  loc_BDDE04: LitI2_Byte 0
  loc_BDDE06: LitVar_Missing var_E4
  loc_BDDE09: LitI2_Byte 0
  loc_BDDE0B: FLdZeroAd var_12C
  loc_BDDE0E: CVarAd
  loc_BDDE12: PopAdLdVar
  loc_BDDE13: FLdPr Me
  loc_BDDE16: MemLdI2 global_96
  loc_BDDE19: CI4UI1
  loc_BDDE1A: FLdPr Me
  loc_BDDE1D: MemLdStr global_92
  loc_BDDE20: AryLock
  loc_BDDE23: Ary1LdPr
  loc_BDDE24: MemLdRfVar from_stack_1.global_24
  loc_BDDE27: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDDE2C: AryUnlock
  loc_BDDE2F: FFreeAd var_B4 = ""
  loc_BDDE36: FFreeVar var_D4 = ""
  loc_BDDE3D: FLdRfVar var_12C
  loc_BDDE40: LitVarStr var_A0, "CucuPers"
  loc_BDDE45: PopAdLdVar
  loc_BDDE46: FLdRfVar var_C0
  loc_BDDE49: FLdRfVar var_B4
  loc_BDDE4C: FLdPr var_128
  loc_BDDE4F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDDE54: FLdPr var_B4
  loc_BDDE57:  = Me.Fields
  loc_BDDE5C: FLdPr var_C0
  loc_BDDE5F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDDE64: LitI2_Byte 0
  loc_BDDE66: LitVar_Missing var_E4
  loc_BDDE69: LitI2_Byte 0
  loc_BDDE6B: FLdZeroAd var_12C
  loc_BDDE6E: CVarAd
  loc_BDDE72: PopAdLdVar
  loc_BDDE73: FLdPr Me
  loc_BDDE76: MemLdI2 global_96
  loc_BDDE79: CI4UI1
  loc_BDDE7A: FLdPr Me
  loc_BDDE7D: MemLdStr global_92
  loc_BDDE80: AryLock
  loc_BDDE83: Ary1LdPr
  loc_BDDE84: MemLdRfVar from_stack_1.global_28
  loc_BDDE87: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDDE8C: AryUnlock
  loc_BDDE8F: FFreeAd var_B4 = ""
  loc_BDDE96: FFreeVar var_D4 = ""
  loc_BDDE9D: FLdRfVar var_12C
  loc_BDDEA0: LitVarStr var_A0, "DetaProv"
  loc_BDDEA5: PopAdLdVar
  loc_BDDEA6: FLdRfVar var_C0
  loc_BDDEA9: FLdRfVar var_B4
  loc_BDDEAC: FLdPr var_128
  loc_BDDEAF: from_stack_1v = clsbase.RsFrmGet()
  loc_BDDEB4: FLdPr var_B4
  loc_BDDEB7:  = Me.Fields
  loc_BDDEBC: FLdPr var_C0
  loc_BDDEBF: from_stack_2 = Me.Item(from_stack_1)
  loc_BDDEC4: LitI2_Byte 0
  loc_BDDEC6: LitVar_Missing var_E4
  loc_BDDEC9: LitI2_Byte 0
  loc_BDDECB: FLdZeroAd var_12C
  loc_BDDECE: CVarAd
  loc_BDDED2: PopAdLdVar
  loc_BDDED3: FLdPr Me
  loc_BDDED6: MemLdI2 global_96
  loc_BDDED9: CI4UI1
  loc_BDDEDA: FLdPr Me
  loc_BDDEDD: MemLdStr global_92
  loc_BDDEE0: AryLock
  loc_BDDEE3: Ary1LdPr
  loc_BDDEE4: MemLdRfVar from_stack_1.global_32
  loc_BDDEE7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDDEEC: AryUnlock
  loc_BDDEEF: FFreeAd var_B4 = ""
  loc_BDDEF6: FFreeVar var_D4 = ""
  loc_BDDEFD: FLdPr var_128
  loc_BDDF00: Call clsbase.MoveSiguiente()
  loc_BDDF05: Branch loc_BDDB7C
  loc_BDDF08: LitNothing
  loc_BDDF0A: FStAd var_128 
  loc_BDDF0E: LitI2_Byte 1
  loc_BDDF10: FLdPr Me
  loc_BDDF13: MemLdRfVar from_stack_1.global_96
  loc_BDDF16: FLdPr Me
  loc_BDDF19: MemLdStr global_92
  loc_BDDF1C: LitI2_Byte 1
  loc_BDDF1E: FnUBound
  loc_BDDF20: CI2I4
  loc_BDDF21: ForI2 var_134
  loc_BDDF27: FLdPr Me
  loc_BDDF2A: MemLdI2 global_96
  loc_BDDF2D: CI4UI1
  loc_BDDF2E: FLdPr Me
  loc_BDDF31: MemLdStr global_92
  loc_BDDF34: AryLock
  loc_BDDF37: Ary1LdRf
  loc_BDDF38: FStR4 var_13C
  loc_BDDF3B: FMemLdR4 var_13C(20)
  loc_BDDF40: LitStr "Debito"
  loc_BDDF43: EqStr
  loc_BDDF45: BranchF loc_BDE623
  loc_BDDF48: FMemLdR4 var_13C(24)
  loc_BDDF4D: LitStr "1"
  loc_BDDF50: EqStr
  loc_BDDF52: BranchF loc_BDE2B8
  loc_BDDF55: LitStr "SELECT *, DetaDebi, DetaCuco"
  loc_BDDF58: LitStr " FROM liquidadeta ld"
  loc_BDDF5B: ConcatStr
  loc_BDDF5C: FStStrNoPop var_BC
  loc_BDDF5F: LitStr " INNER JOIN debito d ON d.PeriInfo = ld.PeriInfo AND d.NumeDebi = ld.NumeDebi"
  loc_BDDF62: ConcatStr
  loc_BDDF63: FStStrNoPop var_C4
  loc_BDDF66: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ld.PeriInfo AND cc.CodiCuco = ld.CodiCuco"
  loc_BDDF69: ConcatStr
  loc_BDDF6A: FStStrNoPop var_F8
  loc_BDDF6D: LitStr " WHERE ld.PeriInfo = "
  loc_BDDF70: ConcatStr
  loc_BDDF71: FStStrNoPop var_FC
  loc_BDDF74: FMemLdR4 var_13C(0)
  loc_BDDF79: ConcatStr
  loc_BDDF7A: FStStrNoPop var_100
  loc_BDDF7D: LitStr " AND ld.ExpeImpu = '"
  loc_BDDF80: ConcatStr
  loc_BDDF81: FStStrNoPop var_104
  loc_BDDF84: FMemLdR4 var_13C(12)
  loc_BDDF89: ConcatStr
  loc_BDDF8A: FStStrNoPop var_108
  loc_BDDF8D: LitStr "'"
  loc_BDDF90: ConcatStr
  loc_BDDF91: FStStrNoPop var_10C
  loc_BDDF94: LitStr " AND ld.NumeLiqu = "
  loc_BDDF97: ConcatStr
  loc_BDDF98: FStStrNoPop var_110
  loc_BDDF9B: FMemLdR4 var_13C(16)
  loc_BDDFA0: ConcatStr
  loc_BDDFA1: FStStrNoPop var_114
  loc_BDDFA4: LitStr vbNullString
  loc_BDDFA7: ConcatStr
  loc_BDDFA8: FStStrNoPop var_118
  loc_BDDFAB: LitStr " /*AND ld.CucuPers = "
  loc_BDDFAE: ConcatStr
  loc_BDDFAF: FStStrNoPop var_11C
  loc_BDDFB2: FMemLdR4 var_13C(28)
  loc_BDDFB7: ConcatStr
  loc_BDDFB8: FStStrNoPop var_120
  loc_BDDFBB: LitStr "*/ GROUP BY ld.NumeDebi"
  loc_BDDFBE: ConcatStr
  loc_BDDFBF: FStStrNoPop var_140
  loc_BDDFC2: FLdPr Me
  loc_BDDFC5: MemLdRfVar from_stack_1.global_84
  loc_BDDFC8: NewIfNullPr clsbase
  loc_BDDFCB: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDDFD0: FFreeStr var_BC = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_BDDFEF: FLdPr Me
  loc_BDDFF2: MemLdRfVar from_stack_1.global_84
  loc_BDDFF5: NewIfNullPr clsbase
  loc_BDDFF8: Call clsbase.MoveFirst()
  loc_BDDFFD: LitI2_Byte 1
  loc_BDDFFF: FLdPr Me
  loc_BDE002: MemLdRfVar from_stack_1.global_104
  loc_BDE005: FLdRfVar var_124
  loc_BDE008: FLdPr Me
  loc_BDE00B: MemLdRfVar from_stack_1.global_84
  loc_BDE00E: NewIfNullPr clsbase
  loc_BDE011: from_stack_1 = clsbase.RecordCount
  loc_BDE016: ILdRf var_124
  loc_BDE019: CI2I4
  loc_BDE01A: ForI2 var_144
  loc_BDE020: LitI4 0
  loc_BDE025: FLdPr Me
  loc_BDE028: MemLdI2 global_104
  loc_BDE02B: CI4UI1
  loc_BDE02C: FMemLdRf 0
  loc_BDE031: RedimPreserve
  loc_BDE03B: FLdRfVar var_12C
  loc_BDE03E: LitVarStr var_A0, "NumeDebi"
  loc_BDE043: PopAdLdVar
  loc_BDE044: FLdRfVar var_C0
  loc_BDE047: FLdRfVar var_B4
  loc_BDE04A: FLdPr Me
  loc_BDE04D: MemLdRfVar from_stack_1.global_84
  loc_BDE050: NewIfNullPr clsbase
  loc_BDE053: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE058: FLdPr var_B4
  loc_BDE05B:  = Me.Fields
  loc_BDE060: FLdPr var_C0
  loc_BDE063: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE068: LitI2_Byte 0
  loc_BDE06A: LitVar_Missing var_E4
  loc_BDE06D: LitI2_Byte 0
  loc_BDE06F: FLdZeroAd var_12C
  loc_BDE072: CVarAd
  loc_BDE076: PopAdLdVar
  loc_BDE077: FLdPr Me
  loc_BDE07A: MemLdI2 global_104
  loc_BDE07D: CI4UI1
  loc_BDE07E: FMemLdR4 var_13C(52)
  loc_BDE083: AryLock
  loc_BDE086: Ary1LdPr
  loc_BDE087: MemLdRfVar from_stack_1.global_0
  loc_BDE08A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE08F: AryUnlock
  loc_BDE092: FFreeAd var_B4 = ""
  loc_BDE099: FFreeVar var_D4 = ""
  loc_BDE0A0: FLdRfVar var_12C
  loc_BDE0A3: LitVarStr var_A0, "DetaDebi"
  loc_BDE0A8: PopAdLdVar
  loc_BDE0A9: FLdRfVar var_C0
  loc_BDE0AC: FLdRfVar var_B4
  loc_BDE0AF: FLdPr Me
  loc_BDE0B2: MemLdRfVar from_stack_1.global_84
  loc_BDE0B5: NewIfNullPr clsbase
  loc_BDE0B8: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE0BD: FLdPr var_B4
  loc_BDE0C0:  = Me.Fields
  loc_BDE0C5: FLdPr var_C0
  loc_BDE0C8: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE0CD: LitI2_Byte 0
  loc_BDE0CF: LitVar_Missing var_E4
  loc_BDE0D2: LitI2_Byte 0
  loc_BDE0D4: FLdZeroAd var_12C
  loc_BDE0D7: CVarAd
  loc_BDE0DB: PopAdLdVar
  loc_BDE0DC: FLdPr Me
  loc_BDE0DF: MemLdI2 global_104
  loc_BDE0E2: CI4UI1
  loc_BDE0E3: FMemLdR4 var_13C(52)
  loc_BDE0E8: AryLock
  loc_BDE0EB: Ary1LdPr
  loc_BDE0EC: MemLdRfVar from_stack_1.global_4
  loc_BDE0EF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE0F4: AryUnlock
  loc_BDE0F7: FFreeAd var_B4 = ""
  loc_BDE0FE: FFreeVar var_D4 = ""
  loc_BDE105: FLdRfVar var_12C
  loc_BDE108: LitVarStr var_A0, "NumeFact"
  loc_BDE10D: PopAdLdVar
  loc_BDE10E: FLdRfVar var_C0
  loc_BDE111: FLdRfVar var_B4
  loc_BDE114: FLdPr Me
  loc_BDE117: MemLdRfVar from_stack_1.global_84
  loc_BDE11A: NewIfNullPr clsbase
  loc_BDE11D: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE122: FLdPr var_B4
  loc_BDE125:  = Me.Fields
  loc_BDE12A: FLdPr var_C0
  loc_BDE12D: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE132: LitI2_Byte 0
  loc_BDE134: LitVar_Missing var_E4
  loc_BDE137: LitI2_Byte 0
  loc_BDE139: FLdZeroAd var_12C
  loc_BDE13C: CVarAd
  loc_BDE140: PopAdLdVar
  loc_BDE141: FLdPr Me
  loc_BDE144: MemLdI2 global_104
  loc_BDE147: CI4UI1
  loc_BDE148: FMemLdR4 var_13C(52)
  loc_BDE14D: AryLock
  loc_BDE150: Ary1LdPr
  loc_BDE151: MemLdRfVar from_stack_1.global_8
  loc_BDE154: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE159: AryUnlock
  loc_BDE15C: FFreeAd var_B4 = ""
  loc_BDE163: FFreeVar var_D4 = ""
  loc_BDE16A: FLdRfVar var_12C
  loc_BDE16D: LitVarStr var_A0, "CodiCuco"
  loc_BDE172: PopAdLdVar
  loc_BDE173: FLdRfVar var_C0
  loc_BDE176: FLdRfVar var_B4
  loc_BDE179: FLdPr Me
  loc_BDE17C: MemLdRfVar from_stack_1.global_84
  loc_BDE17F: NewIfNullPr clsbase
  loc_BDE182: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE187: FLdPr var_B4
  loc_BDE18A:  = Me.Fields
  loc_BDE18F: FLdPr var_C0
  loc_BDE192: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE197: LitI2_Byte 0
  loc_BDE199: LitVar_Missing var_E4
  loc_BDE19C: LitI2_Byte 0
  loc_BDE19E: FLdZeroAd var_12C
  loc_BDE1A1: CVarAd
  loc_BDE1A5: PopAdLdVar
  loc_BDE1A6: FLdPr Me
  loc_BDE1A9: MemLdI2 global_104
  loc_BDE1AC: CI4UI1
  loc_BDE1AD: FMemLdR4 var_13C(52)
  loc_BDE1B2: AryLock
  loc_BDE1B5: Ary1LdPr
  loc_BDE1B6: MemLdRfVar from_stack_1.global_12
  loc_BDE1B9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE1BE: AryUnlock
  loc_BDE1C1: FFreeAd var_B4 = ""
  loc_BDE1C8: FFreeVar var_D4 = ""
  loc_BDE1CF: FLdRfVar var_12C
  loc_BDE1D2: LitVarStr var_A0, "DetaCuco"
  loc_BDE1D7: PopAdLdVar
  loc_BDE1D8: FLdRfVar var_C0
  loc_BDE1DB: FLdRfVar var_B4
  loc_BDE1DE: FLdPr Me
  loc_BDE1E1: MemLdRfVar from_stack_1.global_84
  loc_BDE1E4: NewIfNullPr clsbase
  loc_BDE1E7: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE1EC: FLdPr var_B4
  loc_BDE1EF:  = Me.Fields
  loc_BDE1F4: FLdPr var_C0
  loc_BDE1F7: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE1FC: LitI2_Byte 0
  loc_BDE1FE: LitVar_Missing var_E4
  loc_BDE201: LitI2_Byte 0
  loc_BDE203: FLdZeroAd var_12C
  loc_BDE206: CVarAd
  loc_BDE20A: PopAdLdVar
  loc_BDE20B: FLdPr Me
  loc_BDE20E: MemLdI2 global_104
  loc_BDE211: CI4UI1
  loc_BDE212: FMemLdR4 var_13C(52)
  loc_BDE217: AryLock
  loc_BDE21A: Ary1LdPr
  loc_BDE21B: MemLdRfVar from_stack_1.global_16
  loc_BDE21E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE223: AryUnlock
  loc_BDE226: FFreeAd var_B4 = ""
  loc_BDE22D: FFreeVar var_D4 = ""
  loc_BDE234: FLdRfVar var_12C
  loc_BDE237: LitVarStr var_A0, "ImpoImpu"
  loc_BDE23C: PopAdLdVar
  loc_BDE23D: FLdRfVar var_C0
  loc_BDE240: FLdRfVar var_B4
  loc_BDE243: FLdPr Me
  loc_BDE246: MemLdRfVar from_stack_1.global_84
  loc_BDE249: NewIfNullPr clsbase
  loc_BDE24C: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE251: FLdPr var_B4
  loc_BDE254:  = Me.Fields
  loc_BDE259: FLdPr var_C0
  loc_BDE25C: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE261: LitI2_Byte 0
  loc_BDE263: FMemLdRf 0
  loc_BDE268: CVarRef
  loc_BDE26D: LitI2_Byte &HFF
  loc_BDE26F: FLdZeroAd var_12C
  loc_BDE272: CVarAd
  loc_BDE276: PopAdLdVar
  loc_BDE277: FLdPr Me
  loc_BDE27A: MemLdI2 global_104
  loc_BDE27D: CI4UI1
  loc_BDE27E: FMemLdR4 var_13C(52)
  loc_BDE283: AryLock
  loc_BDE286: Ary1LdPr
  loc_BDE287: MemLdRfVar from_stack_1.global_20
  loc_BDE28A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE28F: AryUnlock
  loc_BDE292: FFreeAd var_B4 = ""
  loc_BDE299: FFree1Var var_D4 = ""
  loc_BDE29C: FLdPr Me
  loc_BDE29F: MemLdRfVar from_stack_1.global_84
  loc_BDE2A2: NewIfNullPr clsbase
  loc_BDE2A5: Call clsbase.MoveSiguiente()
  loc_BDE2AA: FLdPr Me
  loc_BDE2AD: MemLdRfVar from_stack_1.global_104
  loc_BDE2B0: NextI2 var_144, loc_BDE020
  loc_BDE2B5: Branch loc_BDE618
  loc_BDE2B8: LitStr "SELECT *, DetaDebi, DetaCuco"
  loc_BDE2BB: LitStr " FROM liquidadeta ld"
  loc_BDE2BE: ConcatStr
  loc_BDE2BF: FStStrNoPop var_BC
  loc_BDE2C2: LitStr " INNER JOIN debito d ON d.PeriInfo = ld.PeriInfo AND d.NumeDebi = ld.NumeDebi"
  loc_BDE2C5: ConcatStr
  loc_BDE2C6: FStStrNoPop var_C4
  loc_BDE2C9: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ld.PeriInfo AND cc.CodiCuco = ld.CodiCuco"
  loc_BDE2CC: ConcatStr
  loc_BDE2CD: FStStrNoPop var_F8
  loc_BDE2D0: LitStr " WHERE ld.PeriInfo = "
  loc_BDE2D3: ConcatStr
  loc_BDE2D4: FStStrNoPop var_FC
  loc_BDE2D7: FMemLdR4 var_13C(0)
  loc_BDE2DC: ConcatStr
  loc_BDE2DD: FStStrNoPop var_100
  loc_BDE2E0: LitStr " AND ld.ExpeImpu = '"
  loc_BDE2E3: ConcatStr
  loc_BDE2E4: FStStrNoPop var_104
  loc_BDE2E7: FMemLdR4 var_13C(12)
  loc_BDE2EC: ConcatStr
  loc_BDE2ED: FStStrNoPop var_108
  loc_BDE2F0: LitStr "'"
  loc_BDE2F3: ConcatStr
  loc_BDE2F4: FStStrNoPop var_10C
  loc_BDE2F7: LitStr " AND ld.NumeLiqu = "
  loc_BDE2FA: ConcatStr
  loc_BDE2FB: FStStrNoPop var_110
  loc_BDE2FE: FMemLdR4 var_13C(16)
  loc_BDE303: ConcatStr
  loc_BDE304: FStStrNoPop var_114
  loc_BDE307: LitStr vbNullString
  loc_BDE30A: ConcatStr
  loc_BDE30B: FStStrNoPop var_118
  loc_BDE30E: LitStr " AND ld.CucuPers = "
  loc_BDE311: ConcatStr
  loc_BDE312: FStStrNoPop var_11C
  loc_BDE315: FMemLdR4 var_13C(28)
  loc_BDE31A: ConcatStr
  loc_BDE31B: FStStrNoPop var_120
  loc_BDE31E: LitStr " GROUP BY ld.NumeDebi"
  loc_BDE321: ConcatStr
  loc_BDE322: FStStrNoPop var_140
  loc_BDE325: FLdPr Me
  loc_BDE328: MemLdRfVar from_stack_1.global_84
  loc_BDE32B: NewIfNullPr clsbase
  loc_BDE32E: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDE333: FFreeStr var_BC = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_BDE352: FLdPr Me
  loc_BDE355: MemLdRfVar from_stack_1.global_84
  loc_BDE358: NewIfNullPr clsbase
  loc_BDE35B: Call clsbase.MoveFirst()
  loc_BDE360: LitI2_Byte 1
  loc_BDE362: FLdPr Me
  loc_BDE365: MemLdRfVar from_stack_1.global_104
  loc_BDE368: FLdRfVar var_124
  loc_BDE36B: FLdPr Me
  loc_BDE36E: MemLdRfVar from_stack_1.global_84
  loc_BDE371: NewIfNullPr clsbase
  loc_BDE374: from_stack_1 = clsbase.RecordCount
  loc_BDE379: ILdRf var_124
  loc_BDE37C: CI2I4
  loc_BDE37D: ForI2 var_148
  loc_BDE383: LitI4 0
  loc_BDE388: FLdPr Me
  loc_BDE38B: MemLdI2 global_104
  loc_BDE38E: CI4UI1
  loc_BDE38F: FMemLdRf 0
  loc_BDE394: RedimPreserve
  loc_BDE39E: FLdRfVar var_12C
  loc_BDE3A1: LitVarStr var_A0, "NumeDebi"
  loc_BDE3A6: PopAdLdVar
  loc_BDE3A7: FLdRfVar var_C0
  loc_BDE3AA: FLdRfVar var_B4
  loc_BDE3AD: FLdPr Me
  loc_BDE3B0: MemLdRfVar from_stack_1.global_84
  loc_BDE3B3: NewIfNullPr clsbase
  loc_BDE3B6: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE3BB: FLdPr var_B4
  loc_BDE3BE:  = Me.Fields
  loc_BDE3C3: FLdPr var_C0
  loc_BDE3C6: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE3CB: LitI2_Byte 0
  loc_BDE3CD: LitVar_Missing var_E4
  loc_BDE3D0: LitI2_Byte 0
  loc_BDE3D2: FLdZeroAd var_12C
  loc_BDE3D5: CVarAd
  loc_BDE3D9: PopAdLdVar
  loc_BDE3DA: FLdPr Me
  loc_BDE3DD: MemLdI2 global_104
  loc_BDE3E0: CI4UI1
  loc_BDE3E1: FMemLdR4 var_13C(52)
  loc_BDE3E6: AryLock
  loc_BDE3E9: Ary1LdPr
  loc_BDE3EA: MemLdRfVar from_stack_1.global_0
  loc_BDE3ED: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE3F2: AryUnlock
  loc_BDE3F5: FFreeAd var_B4 = ""
  loc_BDE3FC: FFreeVar var_D4 = ""
  loc_BDE403: FLdRfVar var_12C
  loc_BDE406: LitVarStr var_A0, "DetaDebi"
  loc_BDE40B: PopAdLdVar
  loc_BDE40C: FLdRfVar var_C0
  loc_BDE40F: FLdRfVar var_B4
  loc_BDE412: FLdPr Me
  loc_BDE415: MemLdRfVar from_stack_1.global_84
  loc_BDE418: NewIfNullPr clsbase
  loc_BDE41B: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE420: FLdPr var_B4
  loc_BDE423:  = Me.Fields
  loc_BDE428: FLdPr var_C0
  loc_BDE42B: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE430: LitI2_Byte 0
  loc_BDE432: LitVar_Missing var_E4
  loc_BDE435: LitI2_Byte 0
  loc_BDE437: FLdZeroAd var_12C
  loc_BDE43A: CVarAd
  loc_BDE43E: PopAdLdVar
  loc_BDE43F: FLdPr Me
  loc_BDE442: MemLdI2 global_104
  loc_BDE445: CI4UI1
  loc_BDE446: FMemLdR4 var_13C(52)
  loc_BDE44B: AryLock
  loc_BDE44E: Ary1LdPr
  loc_BDE44F: MemLdRfVar from_stack_1.global_4
  loc_BDE452: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE457: AryUnlock
  loc_BDE45A: FFreeAd var_B4 = ""
  loc_BDE461: FFreeVar var_D4 = ""
  loc_BDE468: FLdRfVar var_12C
  loc_BDE46B: LitVarStr var_A0, "NumeFact"
  loc_BDE470: PopAdLdVar
  loc_BDE471: FLdRfVar var_C0
  loc_BDE474: FLdRfVar var_B4
  loc_BDE477: FLdPr Me
  loc_BDE47A: MemLdRfVar from_stack_1.global_84
  loc_BDE47D: NewIfNullPr clsbase
  loc_BDE480: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE485: FLdPr var_B4
  loc_BDE488:  = Me.Fields
  loc_BDE48D: FLdPr var_C0
  loc_BDE490: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE495: LitI2_Byte 0
  loc_BDE497: LitVar_Missing var_E4
  loc_BDE49A: LitI2_Byte 0
  loc_BDE49C: FLdZeroAd var_12C
  loc_BDE49F: CVarAd
  loc_BDE4A3: PopAdLdVar
  loc_BDE4A4: FLdPr Me
  loc_BDE4A7: MemLdI2 global_104
  loc_BDE4AA: CI4UI1
  loc_BDE4AB: FMemLdR4 var_13C(52)
  loc_BDE4B0: AryLock
  loc_BDE4B3: Ary1LdPr
  loc_BDE4B4: MemLdRfVar from_stack_1.global_8
  loc_BDE4B7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE4BC: AryUnlock
  loc_BDE4BF: FFreeAd var_B4 = ""
  loc_BDE4C6: FFreeVar var_D4 = ""
  loc_BDE4CD: FLdRfVar var_12C
  loc_BDE4D0: LitVarStr var_A0, "CodiCuco"
  loc_BDE4D5: PopAdLdVar
  loc_BDE4D6: FLdRfVar var_C0
  loc_BDE4D9: FLdRfVar var_B4
  loc_BDE4DC: FLdPr Me
  loc_BDE4DF: MemLdRfVar from_stack_1.global_84
  loc_BDE4E2: NewIfNullPr clsbase
  loc_BDE4E5: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE4EA: FLdPr var_B4
  loc_BDE4ED:  = Me.Fields
  loc_BDE4F2: FLdPr var_C0
  loc_BDE4F5: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE4FA: LitI2_Byte 0
  loc_BDE4FC: LitVar_Missing var_E4
  loc_BDE4FF: LitI2_Byte 0
  loc_BDE501: FLdZeroAd var_12C
  loc_BDE504: CVarAd
  loc_BDE508: PopAdLdVar
  loc_BDE509: FLdPr Me
  loc_BDE50C: MemLdI2 global_104
  loc_BDE50F: CI4UI1
  loc_BDE510: FMemLdR4 var_13C(52)
  loc_BDE515: AryLock
  loc_BDE518: Ary1LdPr
  loc_BDE519: MemLdRfVar from_stack_1.global_12
  loc_BDE51C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE521: AryUnlock
  loc_BDE524: FFreeAd var_B4 = ""
  loc_BDE52B: FFreeVar var_D4 = ""
  loc_BDE532: FLdRfVar var_12C
  loc_BDE535: LitVarStr var_A0, "DetaCuco"
  loc_BDE53A: PopAdLdVar
  loc_BDE53B: FLdRfVar var_C0
  loc_BDE53E: FLdRfVar var_B4
  loc_BDE541: FLdPr Me
  loc_BDE544: MemLdRfVar from_stack_1.global_84
  loc_BDE547: NewIfNullPr clsbase
  loc_BDE54A: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE54F: FLdPr var_B4
  loc_BDE552:  = Me.Fields
  loc_BDE557: FLdPr var_C0
  loc_BDE55A: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE55F: LitI2_Byte 0
  loc_BDE561: LitVar_Missing var_E4
  loc_BDE564: LitI2_Byte 0
  loc_BDE566: FLdZeroAd var_12C
  loc_BDE569: CVarAd
  loc_BDE56D: PopAdLdVar
  loc_BDE56E: FLdPr Me
  loc_BDE571: MemLdI2 global_104
  loc_BDE574: CI4UI1
  loc_BDE575: FMemLdR4 var_13C(52)
  loc_BDE57A: AryLock
  loc_BDE57D: Ary1LdPr
  loc_BDE57E: MemLdRfVar from_stack_1.global_16
  loc_BDE581: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE586: AryUnlock
  loc_BDE589: FFreeAd var_B4 = ""
  loc_BDE590: FFreeVar var_D4 = ""
  loc_BDE597: FLdRfVar var_12C
  loc_BDE59A: LitVarStr var_A0, "ImpoImpu"
  loc_BDE59F: PopAdLdVar
  loc_BDE5A0: FLdRfVar var_C0
  loc_BDE5A3: FLdRfVar var_B4
  loc_BDE5A6: FLdPr Me
  loc_BDE5A9: MemLdRfVar from_stack_1.global_84
  loc_BDE5AC: NewIfNullPr clsbase
  loc_BDE5AF: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE5B4: FLdPr var_B4
  loc_BDE5B7:  = Me.Fields
  loc_BDE5BC: FLdPr var_C0
  loc_BDE5BF: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE5C4: LitI2_Byte 0
  loc_BDE5C6: FMemLdRf 0
  loc_BDE5CB: CVarRef
  loc_BDE5D0: LitI2_Byte &HFF
  loc_BDE5D2: FLdZeroAd var_12C
  loc_BDE5D5: CVarAd
  loc_BDE5D9: PopAdLdVar
  loc_BDE5DA: FLdPr Me
  loc_BDE5DD: MemLdI2 global_104
  loc_BDE5E0: CI4UI1
  loc_BDE5E1: FMemLdR4 var_13C(52)
  loc_BDE5E6: AryLock
  loc_BDE5E9: Ary1LdPr
  loc_BDE5EA: MemLdRfVar from_stack_1.global_20
  loc_BDE5ED: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE5F2: AryUnlock
  loc_BDE5F5: FFreeAd var_B4 = ""
  loc_BDE5FC: FFree1Var var_D4 = ""
  loc_BDE5FF: FLdPr Me
  loc_BDE602: MemLdRfVar from_stack_1.global_84
  loc_BDE605: NewIfNullPr clsbase
  loc_BDE608: Call clsbase.MoveSiguiente()
  loc_BDE60D: FLdPr Me
  loc_BDE610: MemLdRfVar from_stack_1.global_104
  loc_BDE613: NextI2 var_148, loc_BDE383
  loc_BDE618: LitI2_Byte &HFF
  loc_BDE61A: FLdPr Me
  loc_BDE61D: MemStI2 global_106
  loc_BDE620: Branch loc_BDE9D2
  loc_BDE623: FMemLdR4 var_13C(24)
  loc_BDE628: LitStr "1"
  loc_BDE62B: EqStr
  loc_BDE62D: BranchF loc_BDE7F0
  loc_BDE630: LitStr "SELECT NumeFact, Sum(LiquImpu) ImpoImpu"
  loc_BDE633: LitStr " FROM imputacion"
  loc_BDE636: ConcatStr
  loc_BDE637: FStStrNoPop var_BC
  loc_BDE63A: LitStr " WHERE PeriInfo = "
  loc_BDE63D: ConcatStr
  loc_BDE63E: FStStrNoPop var_F8
  loc_BDE641: FLdRfVar var_C4
  loc_BDE644: FLdPr Me
  loc_BDE647: VCallAd Control_ID_cboPeriodo
  loc_BDE64A: FStAdFunc var_B4
  loc_BDE64D: FLdPr var_B4
  loc_BDE650:  = Me.Text
  loc_BDE655: ILdRf var_C4
  loc_BDE658: ConcatStr
  loc_BDE659: FStStrNoPop var_FC
  loc_BDE65C: LitStr " AND ExpeImpu = '"
  loc_BDE65F: ConcatStr
  loc_BDE660: FStStrNoPop var_100
  loc_BDE663: FMemLdR4 var_13C(12)
  loc_BDE668: ConcatStr
  loc_BDE669: FStStrNoPop var_104
  loc_BDE66C: LitStr "'"
  loc_BDE66F: ConcatStr
  loc_BDE670: FStStrNoPop var_108
  loc_BDE673: LitStr " AND NumeLiqu = "
  loc_BDE676: ConcatStr
  loc_BDE677: FStStrNoPop var_10C
  loc_BDE67A: FMemLdR4 var_13C(16)
  loc_BDE67F: ConcatStr
  loc_BDE680: FStStrNoPop var_110
  loc_BDE683: LitStr " AND LiquImpu != 0"
  loc_BDE686: ConcatStr
  loc_BDE687: FStStrNoPop var_114
  loc_BDE68A: LitStr " GROUP BY NumeFact ORDER BY NumeFact"
  loc_BDE68D: ConcatStr
  loc_BDE68E: FStStrNoPop var_118
  loc_BDE691: FLdPr Me
  loc_BDE694: MemLdRfVar from_stack_1.global_84
  loc_BDE697: NewIfNullPr clsbase
  loc_BDE69A: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDE69F: FFreeStr var_BC = "": var_F8 = "": var_C4 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_BDE6B8: FFree1Ad var_B4
  loc_BDE6BB: FLdPr Me
  loc_BDE6BE: MemLdRfVar from_stack_1.global_84
  loc_BDE6C1: NewIfNullPr clsbase
  loc_BDE6C4: Call clsbase.MoveFirst()
  loc_BDE6C9: LitI2_Byte 1
  loc_BDE6CB: FLdPr Me
  loc_BDE6CE: MemLdRfVar from_stack_1.global_98
  loc_BDE6D1: FLdRfVar var_124
  loc_BDE6D4: FLdPr Me
  loc_BDE6D7: MemLdRfVar from_stack_1.global_84
  loc_BDE6DA: NewIfNullPr clsbase
  loc_BDE6DD: from_stack_1 = clsbase.RecordCount
  loc_BDE6E2: ILdRf var_124
  loc_BDE6E5: CI2I4
  loc_BDE6E6: ForI2 var_14C
  loc_BDE6EC: LitI4 0
  loc_BDE6F1: FLdPr Me
  loc_BDE6F4: MemLdI2 global_98
  loc_BDE6F7: CI4UI1
  loc_BDE6F8: FMemLdRf 0
  loc_BDE6FD: RedimPreserve
  loc_BDE707: FLdRfVar var_12C
  loc_BDE70A: LitVarStr var_A0, "NumeFact"
  loc_BDE70F: PopAdLdVar
  loc_BDE710: FLdRfVar var_C0
  loc_BDE713: FLdRfVar var_B4
  loc_BDE716: FLdPr Me
  loc_BDE719: MemLdRfVar from_stack_1.global_84
  loc_BDE71C: NewIfNullPr clsbase
  loc_BDE71F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE724: FLdPr var_B4
  loc_BDE727:  = Me.Fields
  loc_BDE72C: FLdPr var_C0
  loc_BDE72F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE734: LitI2_Byte 0
  loc_BDE736: LitVar_Missing var_E4
  loc_BDE739: LitI2_Byte 0
  loc_BDE73B: FLdZeroAd var_12C
  loc_BDE73E: CVarAd
  loc_BDE742: PopAdLdVar
  loc_BDE743: FLdPr Me
  loc_BDE746: MemLdI2 global_98
  loc_BDE749: CI4UI1
  loc_BDE74A: FMemLdR4 var_13C(36)
  loc_BDE74F: AryLock
  loc_BDE752: Ary1LdPr
  loc_BDE753: MemLdRfVar from_stack_1.global_0
  loc_BDE756: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE75B: AryUnlock
  loc_BDE75E: FFreeAd var_B4 = ""
  loc_BDE765: FFreeVar var_D4 = ""
  loc_BDE76C: FLdRfVar var_12C
  loc_BDE76F: LitVarStr var_A0, "ImpoImpu"
  loc_BDE774: PopAdLdVar
  loc_BDE775: FLdRfVar var_C0
  loc_BDE778: FLdRfVar var_B4
  loc_BDE77B: FLdPr Me
  loc_BDE77E: MemLdRfVar from_stack_1.global_84
  loc_BDE781: NewIfNullPr clsbase
  loc_BDE784: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE789: FLdPr var_B4
  loc_BDE78C:  = Me.Fields
  loc_BDE791: FLdPr var_C0
  loc_BDE794: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE799: LitI2_Byte 0
  loc_BDE79B: FMemLdRf 0
  loc_BDE7A0: CVarRef
  loc_BDE7A5: LitI2_Byte &HFF
  loc_BDE7A7: FLdZeroAd var_12C
  loc_BDE7AA: CVarAd
  loc_BDE7AE: PopAdLdVar
  loc_BDE7AF: FLdPr Me
  loc_BDE7B2: MemLdI2 global_98
  loc_BDE7B5: CI4UI1
  loc_BDE7B6: FMemLdR4 var_13C(36)
  loc_BDE7BB: AryLock
  loc_BDE7BE: Ary1LdPr
  loc_BDE7BF: MemLdRfVar from_stack_1.global_4
  loc_BDE7C2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE7C7: AryUnlock
  loc_BDE7CA: FFreeAd var_B4 = ""
  loc_BDE7D1: FFree1Var var_D4 = ""
  loc_BDE7D4: FLdPr Me
  loc_BDE7D7: MemLdRfVar from_stack_1.global_84
  loc_BDE7DA: NewIfNullPr clsbase
  loc_BDE7DD: Call clsbase.MoveSiguiente()
  loc_BDE7E2: FLdPr Me
  loc_BDE7E5: MemLdRfVar from_stack_1.global_98
  loc_BDE7E8: NextI2 var_14C, loc_BDE6EC
  loc_BDE7ED: Branch loc_BDE9CA
  loc_BDE7F0: LitStr "SELECT NumeFact, Sum(LiquImpu) ImpoImpu"
  loc_BDE7F3: LitStr " FROM imputacion"
  loc_BDE7F6: ConcatStr
  loc_BDE7F7: FStStrNoPop var_BC
  loc_BDE7FA: LitStr " WHERE PeriInfo = "
  loc_BDE7FD: ConcatStr
  loc_BDE7FE: FStStrNoPop var_F8
  loc_BDE801: FLdRfVar var_C4
  loc_BDE804: FLdPr Me
  loc_BDE807: VCallAd Control_ID_cboPeriodo
  loc_BDE80A: FStAdFunc var_B4
  loc_BDE80D: FLdPr var_B4
  loc_BDE810:  = Me.Text
  loc_BDE815: ILdRf var_C4
  loc_BDE818: ConcatStr
  loc_BDE819: FStStrNoPop var_FC
  loc_BDE81C: LitStr " AND ExpeImpu = '"
  loc_BDE81F: ConcatStr
  loc_BDE820: FStStrNoPop var_100
  loc_BDE823: FMemLdR4 var_13C(12)
  loc_BDE828: ConcatStr
  loc_BDE829: FStStrNoPop var_104
  loc_BDE82C: LitStr "'"
  loc_BDE82F: ConcatStr
  loc_BDE830: FStStrNoPop var_108
  loc_BDE833: LitStr " AND NumeLiqu = "
  loc_BDE836: ConcatStr
  loc_BDE837: FStStrNoPop var_10C
  loc_BDE83A: FMemLdR4 var_13C(16)
  loc_BDE83F: ConcatStr
  loc_BDE840: FStStrNoPop var_110
  loc_BDE843: LitStr " AND LiquImpu != 0"
  loc_BDE846: ConcatStr
  loc_BDE847: FStStrNoPop var_114
  loc_BDE84A: LitStr " AND CucuPers = '"
  loc_BDE84D: ConcatStr
  loc_BDE84E: FStStrNoPop var_118
  loc_BDE851: FMemLdR4 var_13C(28)
  loc_BDE856: ConcatStr
  loc_BDE857: FStStrNoPop var_11C
  loc_BDE85A: LitStr "'"
  loc_BDE85D: ConcatStr
  loc_BDE85E: FStStrNoPop var_120
  loc_BDE861: LitStr " GROUP BY NumeFact ORDER BY NumeFact"
  loc_BDE864: ConcatStr
  loc_BDE865: FStStrNoPop var_140
  loc_BDE868: FLdPr Me
  loc_BDE86B: MemLdRfVar from_stack_1.global_84
  loc_BDE86E: NewIfNullPr clsbase
  loc_BDE871: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDE876: FFreeStr var_BC = "": var_F8 = "": var_C4 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_BDE895: FFree1Ad var_B4
  loc_BDE898: FLdPr Me
  loc_BDE89B: MemLdRfVar from_stack_1.global_84
  loc_BDE89E: NewIfNullPr clsbase
  loc_BDE8A1: Call clsbase.MoveFirst()
  loc_BDE8A6: LitI2_Byte 1
  loc_BDE8A8: FLdPr Me
  loc_BDE8AB: MemLdRfVar from_stack_1.global_98
  loc_BDE8AE: FLdRfVar var_124
  loc_BDE8B1: FLdPr Me
  loc_BDE8B4: MemLdRfVar from_stack_1.global_84
  loc_BDE8B7: NewIfNullPr clsbase
  loc_BDE8BA: from_stack_1 = clsbase.RecordCount
  loc_BDE8BF: ILdRf var_124
  loc_BDE8C2: CI2I4
  loc_BDE8C3: ForI2 var_150
  loc_BDE8C9: LitI4 0
  loc_BDE8CE: FLdPr Me
  loc_BDE8D1: MemLdI2 global_98
  loc_BDE8D4: CI4UI1
  loc_BDE8D5: FMemLdRf 0
  loc_BDE8DA: RedimPreserve
  loc_BDE8E4: FLdRfVar var_12C
  loc_BDE8E7: LitVarStr var_A0, "NumeFact"
  loc_BDE8EC: PopAdLdVar
  loc_BDE8ED: FLdRfVar var_C0
  loc_BDE8F0: FLdRfVar var_B4
  loc_BDE8F3: FLdPr Me
  loc_BDE8F6: MemLdRfVar from_stack_1.global_84
  loc_BDE8F9: NewIfNullPr clsbase
  loc_BDE8FC: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE901: FLdPr var_B4
  loc_BDE904:  = Me.Fields
  loc_BDE909: FLdPr var_C0
  loc_BDE90C: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE911: LitI2_Byte 0
  loc_BDE913: LitVar_Missing var_E4
  loc_BDE916: LitI2_Byte 0
  loc_BDE918: FLdZeroAd var_12C
  loc_BDE91B: CVarAd
  loc_BDE91F: PopAdLdVar
  loc_BDE920: FLdPr Me
  loc_BDE923: MemLdI2 global_98
  loc_BDE926: CI4UI1
  loc_BDE927: FMemLdR4 var_13C(36)
  loc_BDE92C: AryLock
  loc_BDE92F: Ary1LdPr
  loc_BDE930: MemLdRfVar from_stack_1.global_0
  loc_BDE933: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE938: AryUnlock
  loc_BDE93B: FFreeAd var_B4 = ""
  loc_BDE942: FFreeVar var_D4 = ""
  loc_BDE949: FLdRfVar var_12C
  loc_BDE94C: LitVarStr var_A0, "ImpoImpu"
  loc_BDE951: PopAdLdVar
  loc_BDE952: FLdRfVar var_C0
  loc_BDE955: FLdRfVar var_B4
  loc_BDE958: FLdPr Me
  loc_BDE95B: MemLdRfVar from_stack_1.global_84
  loc_BDE95E: NewIfNullPr clsbase
  loc_BDE961: from_stack_1v = clsbase.RsFrmGet()
  loc_BDE966: FLdPr var_B4
  loc_BDE969:  = Me.Fields
  loc_BDE96E: FLdPr var_C0
  loc_BDE971: from_stack_2 = Me.Item(from_stack_1)
  loc_BDE976: LitI2_Byte 0
  loc_BDE978: FMemLdRf 0
  loc_BDE97D: CVarRef
  loc_BDE982: LitI2_Byte &HFF
  loc_BDE984: FLdZeroAd var_12C
  loc_BDE987: CVarAd
  loc_BDE98B: PopAdLdVar
  loc_BDE98C: FLdPr Me
  loc_BDE98F: MemLdI2 global_98
  loc_BDE992: CI4UI1
  loc_BDE993: FMemLdR4 var_13C(36)
  loc_BDE998: AryLock
  loc_BDE99B: Ary1LdPr
  loc_BDE99C: MemLdRfVar from_stack_1.global_4
  loc_BDE99F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDE9A4: AryUnlock
  loc_BDE9A7: FFreeAd var_B4 = ""
  loc_BDE9AE: FFree1Var var_D4 = ""
  loc_BDE9B1: FLdPr Me
  loc_BDE9B4: MemLdRfVar from_stack_1.global_84
  loc_BDE9B7: NewIfNullPr clsbase
  loc_BDE9BA: Call clsbase.MoveSiguiente()
  loc_BDE9BF: FLdPr Me
  loc_BDE9C2: MemLdRfVar from_stack_1.global_98
  loc_BDE9C5: NextI2 var_150, loc_BDE8C9
  loc_BDE9CA: LitI2_Byte 0
  loc_BDE9CC: FLdPr Me
  loc_BDE9CF: MemStI2 global_106
  loc_BDE9D2: LitI2_Byte 0
  loc_BDE9D4: FLdPr Me
  loc_BDE9D7: MemStI2 global_100
  loc_BDE9DA: LitI2_Byte 0
  loc_BDE9DC: FLdPr Me
  loc_BDE9DF: MemStI2 global_102
  loc_BDE9E2: LitStr "SELECT ch.CucuPers, DetaProv, IFNULL(NumeMoba,0) NumeMoba, IFNULL(DetaBanc,'') DetaBanc, IFNULL(ImpoCheq,0) ImpoCheq, FepaCheq, OrdeCheq"
  loc_BDE9E5: LitStr ", ch.PagaUsua, ch.PagaFeho"
  loc_BDE9E8: ConcatStr
  loc_BDE9E9: FStStrNoPop var_BC
  loc_BDE9EC: LitStr ", IFNULL((SELECT IFNULL(DetaPers,'') DetaPers FROM infogov.usuario LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers WHERE usuario.CodiUsua = ch.PagaUsua),'') DetaPers"
  loc_BDE9EF: ConcatStr
  loc_BDE9F0: FStStrNoPop var_C4
  loc_BDE9F3: LitStr ", IF(AutoCheq=1,'cheque manual',IF(AutoCheq=2,'cheque impreso',IF(AutoCheq=4,'eCheq','transferencia'))) FormaPago"
  loc_BDE9F6: ConcatStr
  loc_BDE9F7: FStStrNoPop var_F8
  loc_BDE9FA: LitStr " FROM cheque ch"
  loc_BDE9FD: ConcatStr
  loc_BDE9FE: FStStrNoPop var_FC
  loc_BDEA01: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_BDEA04: ConcatStr
  loc_BDEA05: FStStrNoPop var_100
  loc_BDEA08: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_BDEA0B: ConcatStr
  loc_BDEA0C: FStStrNoPop var_104
  loc_BDEA0F: LitStr " WHERE ch.PeriInfo = "
  loc_BDEA12: ConcatStr
  loc_BDEA13: FStStrNoPop var_108
  loc_BDEA16: FMemLdR4 var_13C(0)
  loc_BDEA1B: ConcatStr
  loc_BDEA1C: FStStrNoPop var_10C
  loc_BDEA1F: LitStr " AND ch.NumeOrpa = '"
  loc_BDEA22: ConcatStr
  loc_BDEA23: FStStrNoPop var_110
  loc_BDEA26: FMemLdR4 var_13C(4)
  loc_BDEA2B: ConcatStr
  loc_BDEA2C: FStStrNoPop var_114
  loc_BDEA2F: LitStr "'"
  loc_BDEA32: ConcatStr
  loc_BDEA33: FStStrNoPop var_118
  loc_BDEA36: LitStr " AND ch.CucuPers = "
  loc_BDEA39: ConcatStr
  loc_BDEA3A: FStStrNoPop var_11C
  loc_BDEA3D: FMemLdR4 var_13C(28)
  loc_BDEA42: ConcatStr
  loc_BDEA43: FStStrNoPop var_120
  loc_BDEA46: LitStr " AND ch.FeanCheq IS NULL;"
  loc_BDEA49: ConcatStr
  loc_BDEA4A: FStStrNoPop var_140
  loc_BDEA4D: FLdPr Me
  loc_BDEA50: MemLdRfVar from_stack_1.global_84
  loc_BDEA53: NewIfNullPr clsbase
  loc_BDEA56: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDEA5B: FFreeStr var_BC = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_BDEA7A: FLdRfVar var_124
  loc_BDEA7D: FLdPr Me
  loc_BDEA80: MemLdRfVar from_stack_1.global_84
  loc_BDEA83: NewIfNullPr clsbase
  loc_BDEA86: from_stack_1 = clsbase.RecordCount
  loc_BDEA8B: ILdRf var_124
  loc_BDEA8E: LitI4 0
  loc_BDEA93: GtI4
  loc_BDEA94: BranchF loc_BDEF05
  loc_BDEA97: FLdPr Me
  loc_BDEA9A: MemLdRfVar from_stack_1.global_84
  loc_BDEA9D: NewIfNullPr clsbase
  loc_BDEAA0: Call clsbase.MoveFirst()
  loc_BDEAA5: LitI2_Byte 1
  loc_BDEAA7: FLdRfVar var_86
  loc_BDEAAA: FLdRfVar var_124
  loc_BDEAAD: FLdPr Me
  loc_BDEAB0: MemLdRfVar from_stack_1.global_84
  loc_BDEAB3: NewIfNullPr clsbase
  loc_BDEAB6: from_stack_1 = clsbase.RecordCount
  loc_BDEABB: ILdRf var_124
  loc_BDEABE: CI2I4
  loc_BDEABF: ForI2 var_154
  loc_BDEAC5: FLdPr Me
  loc_BDEAC8: MemLdI2 global_100
  loc_BDEACB: LitI2_Byte 1
  loc_BDEACD: AddI2
  loc_BDEACE: FLdPr Me
  loc_BDEAD1: MemStI2 global_100
  loc_BDEAD4: LitI4 0
  loc_BDEAD9: FLdPr Me
  loc_BDEADC: MemLdI2 global_100
  loc_BDEADF: CI4UI1
  loc_BDEAE0: FMemLdRf 0
  loc_BDEAE5: RedimPreserve
  loc_BDEAEF: FLdRfVar var_12C
  loc_BDEAF2: LitVarStr var_A0, "FormaPago"
  loc_BDEAF7: PopAdLdVar
  loc_BDEAF8: FLdRfVar var_C0
  loc_BDEAFB: FLdRfVar var_B4
  loc_BDEAFE: FLdPr Me
  loc_BDEB01: MemLdRfVar from_stack_1.global_84
  loc_BDEB04: NewIfNullPr clsbase
  loc_BDEB07: from_stack_1v = clsbase.RsFrmGet()
  loc_BDEB0C: FLdPr var_B4
  loc_BDEB0F:  = Me.Fields
  loc_BDEB14: FLdPr var_C0
  loc_BDEB17: from_stack_2 = Me.Item(from_stack_1)
  loc_BDEB1C: LitI2_Byte 0
  loc_BDEB1E: LitVar_Missing var_E4
  loc_BDEB21: LitI2_Byte 0
  loc_BDEB23: FLdZeroAd var_12C
  loc_BDEB26: CVarAd
  loc_BDEB2A: PopAdLdVar
  loc_BDEB2B: FLdPr Me
  loc_BDEB2E: MemLdI2 global_100
  loc_BDEB31: CI4UI1
  loc_BDEB32: FMemLdR4 var_13C(40)
  loc_BDEB37: AryLock
  loc_BDEB3A: Ary1LdPr
  loc_BDEB3B: MemLdRfVar from_stack_1.global_0
  loc_BDEB3E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDEB43: AryUnlock
  loc_BDEB46: FFreeAd var_B4 = ""
  loc_BDEB4D: FFreeVar var_D4 = ""
  loc_BDEB54: FLdRfVar var_12C
  loc_BDEB57: LitVarStr var_A0, "NumeMoba"
  loc_BDEB5C: PopAdLdVar
  loc_BDEB5D: FLdRfVar var_C0
  loc_BDEB60: FLdRfVar var_B4
  loc_BDEB63: FLdPr Me
  loc_BDEB66: MemLdRfVar from_stack_1.global_84
  loc_BDEB69: NewIfNullPr clsbase
  loc_BDEB6C: from_stack_1v = clsbase.RsFrmGet()
  loc_BDEB71: FLdPr var_B4
  loc_BDEB74:  = Me.Fields
  loc_BDEB79: FLdPr var_C0
  loc_BDEB7C: from_stack_2 = Me.Item(from_stack_1)
  loc_BDEB81: LitI2_Byte 0
  loc_BDEB83: LitVar_Missing var_E4
  loc_BDEB86: LitI2_Byte 0
  loc_BDEB88: FLdZeroAd var_12C
  loc_BDEB8B: CVarAd
  loc_BDEB8F: PopAdLdVar
  loc_BDEB90: FLdPr Me
  loc_BDEB93: MemLdI2 global_100
  loc_BDEB96: CI4UI1
  loc_BDEB97: FMemLdR4 var_13C(40)
  loc_BDEB9C: AryLock
  loc_BDEB9F: Ary1LdPr
  loc_BDEBA0: MemLdRfVar from_stack_1.global_4
  loc_BDEBA3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDEBA8: AryUnlock
  loc_BDEBAB: FFreeAd var_B4 = ""
  loc_BDEBB2: FFreeVar var_D4 = ""
  loc_BDEBB9: FLdRfVar var_D4
  loc_BDEBBC: FLdRfVar var_12C
  loc_BDEBBF: LitVarStr var_A0, "DetaBanc"
  loc_BDEBC4: PopAdLdVar
  loc_BDEBC5: FLdRfVar var_C0
  loc_BDEBC8: FLdRfVar var_B4
  loc_BDEBCB: FLdPr Me
  loc_BDEBCE: MemLdRfVar from_stack_1.global_84
  loc_BDEBD1: NewIfNullPr clsbase
  loc_BDEBD4: from_stack_1v = clsbase.RsFrmGet()
  loc_BDEBD9: FLdPr var_B4
  loc_BDEBDC:  = Me.Fields
  loc_BDEBE1: FLdPr var_C0
  loc_BDEBE4: from_stack_2 = Me.Item(from_stack_1)
  loc_BDEBE9: FLdPr var_12C
  loc_BDEBEC:  = Me.Value
  loc_BDEBF1: FLdRfVar var_170
  loc_BDEBF4: LitVarStr var_16C, "DetaBanc"
  loc_BDEBF9: PopAdLdVar
  loc_BDEBFA: FLdRfVar var_15C
  loc_BDEBFD: FLdRfVar var_158
  loc_BDEC00: FLdPr Me
  loc_BDEC03: MemLdRfVar from_stack_1.global_84
  loc_BDEC06: NewIfNullPr clsbase
  loc_BDEC09: from_stack_1v = clsbase.RsFrmGet()
  loc_BDEC0E: FLdPr var_158
  loc_BDEC11:  = Me.Fields
  loc_BDEC16: FLdPr var_15C
  loc_BDEC19: from_stack_2 = Me.Item(from_stack_1)
  loc_BDEC1E: LitVarStr var_190, "&nbsp;"
  loc_BDEC23: FStVarCopyObj var_1A0
  loc_BDEC26: FLdRfVar var_1A0
  loc_BDEC29: FLdZeroAd var_170
  loc_BDEC2C: CVarAd
  loc_BDEC30: FLdRfVar var_D4
  loc_BDEC33: LitVarStr var_B0, vbNullString
  loc_BDEC38: HardType
  loc_BDEC39: NeVar var_E4
  loc_BDEC3D: FStVar var_F4
  loc_BDEC41: FLdRfVar var_F4
  loc_BDEC44: FLdRfVar var_1B0
  loc_BDEC47: ImpAdCallFPR4  = IIf(, , )
  loc_BDEC4C: LitI2_Byte 0
  loc_BDEC4E: LitVar_Missing var_1D0
  loc_BDEC51: LitI2_Byte 0
  loc_BDEC53: FLdVar var_1B0
  loc_BDEC57: FLdPr Me
  loc_BDEC5A: MemLdI2 global_100
  loc_BDEC5D: CI4UI1
  loc_BDEC5E: FMemLdR4 var_13C(40)
  loc_BDEC63: AryLock
  loc_BDEC66: Ary1LdPr
  loc_BDEC67: MemLdRfVar from_stack_1.global_8
  loc_BDEC6A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDEC6F: AryUnlock
  loc_BDEC72: FFreeAd var_B4 = "": var_C0 = "": var_12C = "": var_158 = ""
  loc_BDEC7F: FFreeVar var_D4 = "": var_F4 = "": var_180 = "": var_1A0 = "": var_1B0 = ""
  loc_BDEC8E: FLdRfVar var_12C
  loc_BDEC91: LitVarStr var_A0, "ImpoCheq"
  loc_BDEC96: PopAdLdVar
  loc_BDEC97: FLdRfVar var_C0
  loc_BDEC9A: FLdRfVar var_B4
  loc_BDEC9D: FLdPr Me
  loc_BDECA0: MemLdRfVar from_stack_1.global_84
  loc_BDECA3: NewIfNullPr clsbase
  loc_BDECA6: from_stack_1v = clsbase.RsFrmGet()
  loc_BDECAB: FLdPr var_B4
  loc_BDECAE:  = Me.Fields
  loc_BDECB3: FLdPr var_C0
  loc_BDECB6: from_stack_2 = Me.Item(from_stack_1)
  loc_BDECBB: LitI2_Byte 0
  loc_BDECBD: FMemLdRf 0
  loc_BDECC2: CVarRef
  loc_BDECC7: LitI2_Byte &HFF
  loc_BDECC9: FLdZeroAd var_12C
  loc_BDECCC: CVarAd
  loc_BDECD0: PopAdLdVar
  loc_BDECD1: FLdPr Me
  loc_BDECD4: MemLdI2 global_100
  loc_BDECD7: CI4UI1
  loc_BDECD8: FMemLdR4 var_13C(40)
  loc_BDECDD: AryLock
  loc_BDECE0: Ary1LdPr
  loc_BDECE1: MemLdRfVar from_stack_1.global_12
  loc_BDECE4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDECE9: AryUnlock
  loc_BDECEC: FFreeAd var_B4 = ""
  loc_BDECF3: FFree1Var var_D4 = ""
  loc_BDECF6: FLdRfVar var_12C
  loc_BDECF9: LitVarStr var_A0, "FepaCheq"
  loc_BDECFE: PopAdLdVar
  loc_BDECFF: FLdRfVar var_C0
  loc_BDED02: FLdRfVar var_B4
  loc_BDED05: FLdPr Me
  loc_BDED08: MemLdRfVar from_stack_1.global_84
  loc_BDED0B: NewIfNullPr clsbase
  loc_BDED0E: from_stack_1v = clsbase.RsFrmGet()
  loc_BDED13: FLdPr var_B4
  loc_BDED16:  = Me.Fields
  loc_BDED1B: FLdPr var_C0
  loc_BDED1E: from_stack_2 = Me.Item(from_stack_1)
  loc_BDED23: LitI2_Byte 0
  loc_BDED25: LitVar_Missing var_E4
  loc_BDED28: LitI2_Byte 0
  loc_BDED2A: FLdZeroAd var_12C
  loc_BDED2D: CVarAd
  loc_BDED31: PopAdLdVar
  loc_BDED32: FLdPr Me
  loc_BDED35: MemLdI2 global_100
  loc_BDED38: CI4UI1
  loc_BDED39: FMemLdR4 var_13C(40)
  loc_BDED3E: AryLock
  loc_BDED41: Ary1LdPr
  loc_BDED42: MemLdRfVar from_stack_1.global_16
  loc_BDED45: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDED4A: AryUnlock
  loc_BDED4D: FFreeAd var_B4 = ""
  loc_BDED54: FFreeVar var_D4 = ""
  loc_BDED5B: FLdRfVar var_12C
  loc_BDED5E: LitVarStr var_A0, "OrdeCheq"
  loc_BDED63: PopAdLdVar
  loc_BDED64: FLdRfVar var_C0
  loc_BDED67: FLdRfVar var_B4
  loc_BDED6A: FLdPr Me
  loc_BDED6D: MemLdRfVar from_stack_1.global_84
  loc_BDED70: NewIfNullPr clsbase
  loc_BDED73: from_stack_1v = clsbase.RsFrmGet()
  loc_BDED78: FLdPr var_B4
  loc_BDED7B:  = Me.Fields
  loc_BDED80: FLdPr var_C0
  loc_BDED83: from_stack_2 = Me.Item(from_stack_1)
  loc_BDED88: LitI2_Byte 0
  loc_BDED8A: LitVar_Missing var_E4
  loc_BDED8D: LitI2_Byte 0
  loc_BDED8F: FLdZeroAd var_12C
  loc_BDED92: CVarAd
  loc_BDED96: PopAdLdVar
  loc_BDED97: FLdPr Me
  loc_BDED9A: MemLdI2 global_100
  loc_BDED9D: CI4UI1
  loc_BDED9E: FMemLdR4 var_13C(40)
  loc_BDEDA3: AryLock
  loc_BDEDA6: Ary1LdPr
  loc_BDEDA7: MemLdRfVar from_stack_1.global_20
  loc_BDEDAA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDEDAF: AryUnlock
  loc_BDEDB2: FFreeAd var_B4 = ""
  loc_BDEDB9: FFreeVar var_D4 = ""
  loc_BDEDC0: FLdRfVar var_12C
  loc_BDEDC3: LitVarStr var_A0, "PagaUsua"
  loc_BDEDC8: PopAdLdVar
  loc_BDEDC9: FLdRfVar var_C0
  loc_BDEDCC: FLdRfVar var_B4
  loc_BDEDCF: FLdPr Me
  loc_BDEDD2: MemLdRfVar from_stack_1.global_84
  loc_BDEDD5: NewIfNullPr clsbase
  loc_BDEDD8: from_stack_1v = clsbase.RsFrmGet()
  loc_BDEDDD: FLdPr var_B4
  loc_BDEDE0:  = Me.Fields
  loc_BDEDE5: FLdPr var_C0
  loc_BDEDE8: from_stack_2 = Me.Item(from_stack_1)
  loc_BDEDED: LitI2_Byte 0
  loc_BDEDEF: LitVar_Missing var_E4
  loc_BDEDF2: LitI2_Byte 0
  loc_BDEDF4: FLdZeroAd var_12C
  loc_BDEDF7: CVarAd
  loc_BDEDFB: PopAdLdVar
  loc_BDEDFC: FLdPr Me
  loc_BDEDFF: MemLdI2 global_100
  loc_BDEE02: CI4UI1
  loc_BDEE03: FMemLdR4 var_13C(40)
  loc_BDEE08: AryLock
  loc_BDEE0B: Ary1LdPr
  loc_BDEE0C: MemLdRfVar from_stack_1.global_24
  loc_BDEE0F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDEE14: AryUnlock
  loc_BDEE17: FFreeAd var_B4 = ""
  loc_BDEE1E: FFreeVar var_D4 = ""
  loc_BDEE25: FLdRfVar var_12C
  loc_BDEE28: LitVarStr var_A0, "DetaPers"
  loc_BDEE2D: PopAdLdVar
  loc_BDEE2E: FLdRfVar var_C0
  loc_BDEE31: FLdRfVar var_B4
  loc_BDEE34: FLdPr Me
  loc_BDEE37: MemLdRfVar from_stack_1.global_84
  loc_BDEE3A: NewIfNullPr clsbase
  loc_BDEE3D: from_stack_1v = clsbase.RsFrmGet()
  loc_BDEE42: FLdPr var_B4
  loc_BDEE45:  = Me.Fields
  loc_BDEE4A: FLdPr var_C0
  loc_BDEE4D: from_stack_2 = Me.Item(from_stack_1)
  loc_BDEE52: LitI2_Byte 0
  loc_BDEE54: LitVar_Missing var_E4
  loc_BDEE57: LitI2_Byte 0
  loc_BDEE59: FLdZeroAd var_12C
  loc_BDEE5C: CVarAd
  loc_BDEE60: PopAdLdVar
  loc_BDEE61: FLdPr Me
  loc_BDEE64: MemLdI2 global_100
  loc_BDEE67: CI4UI1
  loc_BDEE68: FMemLdR4 var_13C(40)
  loc_BDEE6D: AryLock
  loc_BDEE70: Ary1LdPr
  loc_BDEE71: MemLdRfVar from_stack_1.global_28
  loc_BDEE74: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDEE79: AryUnlock
  loc_BDEE7C: FFreeAd var_B4 = ""
  loc_BDEE83: FFreeVar var_D4 = ""
  loc_BDEE8A: FLdRfVar var_12C
  loc_BDEE8D: LitVarStr var_A0, "PagaFeho"
  loc_BDEE92: PopAdLdVar
  loc_BDEE93: FLdRfVar var_C0
  loc_BDEE96: FLdRfVar var_B4
  loc_BDEE99: FLdPr Me
  loc_BDEE9C: MemLdRfVar from_stack_1.global_84
  loc_BDEE9F: NewIfNullPr clsbase
  loc_BDEEA2: from_stack_1v = clsbase.RsFrmGet()
  loc_BDEEA7: FLdPr var_B4
  loc_BDEEAA:  = Me.Fields
  loc_BDEEAF: FLdPr var_C0
  loc_BDEEB2: from_stack_2 = Me.Item(from_stack_1)
  loc_BDEEB7: LitI2_Byte 0
  loc_BDEEB9: LitVar_Missing var_E4
  loc_BDEEBC: LitI2_Byte 0
  loc_BDEEBE: FLdZeroAd var_12C
  loc_BDEEC1: CVarAd
  loc_BDEEC5: PopAdLdVar
  loc_BDEEC6: FLdPr Me
  loc_BDEEC9: MemLdI2 global_100
  loc_BDEECC: CI4UI1
  loc_BDEECD: FMemLdR4 var_13C(40)
  loc_BDEED2: AryLock
  loc_BDEED5: Ary1LdPr
  loc_BDEED6: MemLdRfVar from_stack_1.global_32
  loc_BDEED9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDEEDE: AryUnlock
  loc_BDEEE1: FFreeAd var_B4 = ""
  loc_BDEEE8: FFreeVar var_D4 = ""
  loc_BDEEEF: FLdPr Me
  loc_BDEEF2: MemLdRfVar from_stack_1.global_84
  loc_BDEEF5: NewIfNullPr clsbase
  loc_BDEEF8: Call clsbase.MoveSiguiente()
  loc_BDEEFD: FLdRfVar var_86
  loc_BDEF00: NextI2 var_154, loc_BDEAC5
  loc_BDEF05: LitStr "SELECT ln.CucuPers, DetaProv, ln.CodiRete, DetaRete, CertLine, ImpoLine"
  loc_BDEF08: LitStr " FROM liquidaneto ln"
  loc_BDEF0B: ConcatStr
  loc_BDEF0C: FStStrNoPop var_BC
  loc_BDEF0F: LitStr " INNER JOIN proveedor p ON p.CucuPers = ln.CucuPers"
  loc_BDEF12: ConcatStr
  loc_BDEF13: FStStrNoPop var_C4
  loc_BDEF16: LitStr " INNER JOIN retenciones r ON r.PeriInfo = ln.PeriInfo AND r.CodiRete = ln.CodiRete"
  loc_BDEF19: ConcatStr
  loc_BDEF1A: FStStrNoPop var_F8
  loc_BDEF1D: LitStr " WHERE ln.PeriInfo = "
  loc_BDEF20: ConcatStr
  loc_BDEF21: FStStrNoPop var_FC
  loc_BDEF24: FMemLdR4 var_13C(0)
  loc_BDEF29: ConcatStr
  loc_BDEF2A: FStStrNoPop var_100
  loc_BDEF2D: LitStr " AND ln.ExpeImpu = '"
  loc_BDEF30: ConcatStr
  loc_BDEF31: FStStrNoPop var_104
  loc_BDEF34: FMemLdR4 var_13C(12)
  loc_BDEF39: ConcatStr
  loc_BDEF3A: FStStrNoPop var_108
  loc_BDEF3D: LitStr "' AND ln.NumeLiqu = "
  loc_BDEF40: ConcatStr
  loc_BDEF41: FStStrNoPop var_10C
  loc_BDEF44: FMemLdR4 var_13C(16)
  loc_BDEF49: ConcatStr
  loc_BDEF4A: FStStrNoPop var_110
  loc_BDEF4D: LitStr " AND ln.CucuPers = "
  loc_BDEF50: ConcatStr
  loc_BDEF51: FStStrNoPop var_114
  loc_BDEF54: FMemLdR4 var_13C(28)
  loc_BDEF59: ConcatStr
  loc_BDEF5A: FStStrNoPop var_118
  loc_BDEF5D: LitStr " AND ln.CodiRete > 0"
  loc_BDEF60: ConcatStr
  loc_BDEF61: FStStrNoPop var_11C
  loc_BDEF64: LitStr " ORDER BY ln.CodiRete;"
  loc_BDEF67: ConcatStr
  loc_BDEF68: FStStrNoPop var_120
  loc_BDEF6B: FLdPr Me
  loc_BDEF6E: MemLdRfVar from_stack_1.global_84
  loc_BDEF71: NewIfNullPr clsbase
  loc_BDEF74: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDEF79: FFreeStr var_BC = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BDEF96: FLdRfVar var_124
  loc_BDEF99: FLdPr Me
  loc_BDEF9C: MemLdRfVar from_stack_1.global_84
  loc_BDEF9F: NewIfNullPr clsbase
  loc_BDEFA2: from_stack_1 = clsbase.RecordCount
  loc_BDEFA7: ILdRf var_124
  loc_BDEFAA: LitI4 0
  loc_BDEFAF: GtI4
  loc_BDEFB0: BranchF loc_BDF15A
  loc_BDEFB3: FLdPr Me
  loc_BDEFB6: MemLdRfVar from_stack_1.global_84
  loc_BDEFB9: NewIfNullPr clsbase
  loc_BDEFBC: Call clsbase.MoveFirst()
  loc_BDEFC1: LitI2_Byte 1
  loc_BDEFC3: FLdRfVar var_86
  loc_BDEFC6: FLdRfVar var_124
  loc_BDEFC9: FLdPr Me
  loc_BDEFCC: MemLdRfVar from_stack_1.global_84
  loc_BDEFCF: NewIfNullPr clsbase
  loc_BDEFD2: from_stack_1 = clsbase.RecordCount
  loc_BDEFD7: ILdRf var_124
  loc_BDEFDA: CI2I4
  loc_BDEFDB: ForI2 var_1D4
  loc_BDEFE1: FLdPr Me
  loc_BDEFE4: MemLdI2 global_102
  loc_BDEFE7: LitI2_Byte 1
  loc_BDEFE9: AddI2
  loc_BDEFEA: FLdPr Me
  loc_BDEFED: MemStI2 global_102
  loc_BDEFF0: LitI4 0
  loc_BDEFF5: FLdPr Me
  loc_BDEFF8: MemLdI2 global_102
  loc_BDEFFB: CI4UI1
  loc_BDEFFC: FMemLdRf 0
  loc_BDF001: RedimPreserve
  loc_BDF00B: LitI2_Byte &HFF
  loc_BDF00D: FMemStI2 var_13C(44)
  loc_BDF012: FLdRfVar var_12C
  loc_BDF015: LitVarStr var_A0, "DetaRete"
  loc_BDF01A: PopAdLdVar
  loc_BDF01B: FLdRfVar var_C0
  loc_BDF01E: FLdRfVar var_B4
  loc_BDF021: FLdPr Me
  loc_BDF024: MemLdRfVar from_stack_1.global_84
  loc_BDF027: NewIfNullPr clsbase
  loc_BDF02A: from_stack_1v = clsbase.RsFrmGet()
  loc_BDF02F: FLdPr var_B4
  loc_BDF032:  = Me.Fields
  loc_BDF037: FLdPr var_C0
  loc_BDF03A: from_stack_2 = Me.Item(from_stack_1)
  loc_BDF03F: LitI2_Byte 0
  loc_BDF041: LitVar_Missing var_E4
  loc_BDF044: LitI2_Byte 0
  loc_BDF046: FLdZeroAd var_12C
  loc_BDF049: CVarAd
  loc_BDF04D: PopAdLdVar
  loc_BDF04E: FLdPr Me
  loc_BDF051: MemLdI2 global_102
  loc_BDF054: CI4UI1
  loc_BDF055: FMemLdR4 var_13C(48)
  loc_BDF05A: AryLock
  loc_BDF05D: Ary1LdPr
  loc_BDF05E: MemLdRfVar from_stack_1.global_0
  loc_BDF061: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDF066: AryUnlock
  loc_BDF069: FFreeAd var_B4 = ""
  loc_BDF070: FFreeVar var_D4 = ""
  loc_BDF077: FLdRfVar var_12C
  loc_BDF07A: LitVarStr var_A0, "ImpoLine"
  loc_BDF07F: PopAdLdVar
  loc_BDF080: FLdRfVar var_C0
  loc_BDF083: FLdRfVar var_B4
  loc_BDF086: FLdPr Me
  loc_BDF089: MemLdRfVar from_stack_1.global_84
  loc_BDF08C: NewIfNullPr clsbase
  loc_BDF08F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDF094: FLdPr var_B4
  loc_BDF097:  = Me.Fields
  loc_BDF09C: FLdPr var_C0
  loc_BDF09F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDF0A4: LitI2_Byte 0
  loc_BDF0A6: FMemLdRf 0
  loc_BDF0AB: CVarRef
  loc_BDF0B0: LitI2_Byte &HFF
  loc_BDF0B2: FLdZeroAd var_12C
  loc_BDF0B5: CVarAd
  loc_BDF0B9: PopAdLdVar
  loc_BDF0BA: FLdPr Me
  loc_BDF0BD: MemLdI2 global_102
  loc_BDF0C0: CI4UI1
  loc_BDF0C1: FMemLdR4 var_13C(48)
  loc_BDF0C6: AryLock
  loc_BDF0C9: Ary1LdPr
  loc_BDF0CA: MemLdRfVar from_stack_1.global_4
  loc_BDF0CD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDF0D2: AryUnlock
  loc_BDF0D5: FFreeAd var_B4 = ""
  loc_BDF0DC: FFree1Var var_D4 = ""
  loc_BDF0DF: FLdRfVar var_12C
  loc_BDF0E2: LitVarStr var_A0, "CertLine"
  loc_BDF0E7: PopAdLdVar
  loc_BDF0E8: FLdRfVar var_C0
  loc_BDF0EB: FLdRfVar var_B4
  loc_BDF0EE: FLdPr Me
  loc_BDF0F1: MemLdRfVar from_stack_1.global_84
  loc_BDF0F4: NewIfNullPr clsbase
  loc_BDF0F7: from_stack_1v = clsbase.RsFrmGet()
  loc_BDF0FC: FLdPr var_B4
  loc_BDF0FF:  = Me.Fields
  loc_BDF104: FLdPr var_C0
  loc_BDF107: from_stack_2 = Me.Item(from_stack_1)
  loc_BDF10C: LitI2_Byte 0
  loc_BDF10E: LitVar_Missing var_E4
  loc_BDF111: LitI2_Byte 0
  loc_BDF113: FLdZeroAd var_12C
  loc_BDF116: CVarAd
  loc_BDF11A: PopAdLdVar
  loc_BDF11B: FLdPr Me
  loc_BDF11E: MemLdI2 global_102
  loc_BDF121: CI4UI1
  loc_BDF122: FMemLdR4 var_13C(48)
  loc_BDF127: AryLock
  loc_BDF12A: Ary1LdPr
  loc_BDF12B: MemLdRfVar from_stack_1.global_8
  loc_BDF12E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BDF133: AryUnlock
  loc_BDF136: FFreeAd var_B4 = ""
  loc_BDF13D: FFreeVar var_D4 = ""
  loc_BDF144: FLdPr Me
  loc_BDF147: MemLdRfVar from_stack_1.global_84
  loc_BDF14A: NewIfNullPr clsbase
  loc_BDF14D: Call clsbase.MoveSiguiente()
  loc_BDF152: FLdRfVar var_86
  loc_BDF155: NextI2 var_1D4, loc_BDEFE1
  loc_BDF15A: LitI4 0
  loc_BDF15F: FStR4 var_13C
  loc_BDF162: AryUnlock
  loc_BDF165: FLdPr Me
  loc_BDF168: MemLdRfVar from_stack_1.global_96
  loc_BDF16B: NextI2 var_134, loc_BDDF27
  loc_BDF170: LitI2_Byte &HFF
  loc_BDF172: FLdPr Me
  loc_BDF175: MemStI2 bGenerado
  loc_BDF178: LitI4 0
  loc_BDF17D: CI2I4
  loc_BDF17E: FLdPr Me
  loc_BDF181: Me.MousePointer = from_stack_1
  loc_BDF186: LitVarStr var_A0, vbNullString
  loc_BDF18B: PopAdLdVar
  loc_BDF18C: FLdPr Me
  loc_BDF18F: VCallAd Control_ID_statusBar
  loc_BDF192: FStAdFunc var_B4
  loc_BDF195: FLdPr var_B4
  loc_BDF198: LateIdSt
  loc_BDF19D: FFree1Ad var_B4
  loc_BDF1A0: ExitProcHresult
End Sub

Public Sub GeneraHTML() '9A5764
  'Data Table: 46C4D4
  loc_9A56D8: FLdRfVar var_88
  loc_9A56DB: LitI2_Byte 0
  loc_9A56DD: LitI2_Byte &HFF
  loc_9A56DF: ImpAdLdI4 MemVar_C3D83C
  loc_9A56E2: FLdPr Me
  loc_9A56E5: MemLdRfVar from_stack_1.global_88
  loc_9A56E8: NewIfNullPr IFileSystem3
  loc_9A56EB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9A56F0: ILdRf var_88
  loc_9A56F3: FLdPr Me
  loc_9A56F6: MemStVarAd
  loc_9A56FA: FFree1Ad var_88
  loc_9A56FD: Call Proc_221_21_9BA854()
  loc_9A5702: LitI2_Byte 1
  loc_9A5704: FLdPr Me
  loc_9A5707: MemLdRfVar from_stack_1.global_96
  loc_9A570A: FLdPr Me
  loc_9A570D: MemLdStr global_92
  loc_9A5710: LitI2_Byte 1
  loc_9A5712: FnUBound
  loc_9A5714: CI2I4
  loc_9A5715: ForI2 var_8C
  loc_9A571B: FLdPr Me
  loc_9A571E: MemLdI2 global_96
  loc_9A5721: LitI2_Byte 1
  loc_9A5723: NeI2
  loc_9A5724: BranchF loc_9A573B
  loc_9A5727: LitVarStr var_9C, "<div style=""page-break-before:always""></div>"
  loc_9A572C: PopAdLdVar
  loc_9A572D: FLdPr Me
  loc_9A5730: MemLdRfVar from_stack_1.htmFile
  loc_9A5733: LdPrVar
  loc_9A5735: LateMemCall
  loc_9A573B: Call Proc_221_22_B9ACE8()
  loc_9A5740: FLdPr Me
  loc_9A5743: MemLdRfVar from_stack_1.global_96
  loc_9A5746: NextI2 var_8C, loc_9A571B
  loc_9A574B: Call Proc_221_25_9827E0()
  loc_9A5750: FLdPr Me
  loc_9A5753: MemLdRfVar from_stack_1.htmFile
  loc_9A5756: LdPrVar
  loc_9A5758: LateMemCall
  loc_9A575E: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9A5763: ExitProcHresult
End Sub

Private Function Proc_221_21_9BA854() '9BA854
  'Data Table: 46C4D4
  loc_9BA79C: LitVarStr var_94, "<html>"
  loc_9BA7A1: PopAdLdVar
  loc_9BA7A2: FLdPr Me
  loc_9BA7A5: MemLdRfVar from_stack_1.htmFile
  loc_9BA7A8: LdPrVar
  loc_9BA7AA: LateMemCall
  loc_9BA7B0: LitVarStr var_94, "<head>"
  loc_9BA7B5: PopAdLdVar
  loc_9BA7B6: FLdPr Me
  loc_9BA7B9: MemLdRfVar from_stack_1.htmFile
  loc_9BA7BC: LdPrVar
  loc_9BA7BE: LateMemCall
  loc_9BA7C4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9BA7C9: PopAdLdVar
  loc_9BA7CA: FLdPr Me
  loc_9BA7CD: MemLdRfVar from_stack_1.htmFile
  loc_9BA7D0: LdPrVar
  loc_9BA7D2: LateMemCall
  loc_9BA7D8: LitStr "<title>"
  loc_9BA7DB: FLdRfVar var_A8
  loc_9BA7DE: FLdPr Me
  loc_9BA7E1:  = Me.Caption
  loc_9BA7E6: ILdRf var_A8
  loc_9BA7E9: ConcatStr
  loc_9BA7EA: FStStrNoPop var_AC
  loc_9BA7ED: LitStr "</title>"
  loc_9BA7F0: ConcatStr
  loc_9BA7F1: CVarStr var_BC
  loc_9BA7F4: PopAdLdVar
  loc_9BA7F5: FLdPr Me
  loc_9BA7F8: MemLdRfVar from_stack_1.htmFile
  loc_9BA7FB: LdPrVar
  loc_9BA7FD: LateMemCall
  loc_9BA803: FFreeStr var_A8 = ""
  loc_9BA80A: FFree1Var var_BC = ""
  loc_9BA80D: LitStr vbNullString
  loc_9BA810: ILdRf Me
  loc_9BA813: CastAd
  loc_9BA816: FStAdFunc var_C0
  loc_9BA819: FLdRfVar var_C0
  loc_9BA81C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9BA821: FFree1Ad var_C0
  loc_9BA824: LitI4 0
  loc_9BA829: FStStrCopy var_AC
  loc_9BA82C: FLdRfVar var_AC
  loc_9BA82F: LitI4 0
  loc_9BA834: FStStrCopy var_A8
  loc_9BA837: FLdRfVar var_A8
  loc_9BA83A: LitI2_Byte 0
  loc_9BA83C: PopTmpLdAd2 var_C2
  loc_9BA83F: FLdPr Me
  loc_9BA842: MemLdRfVar from_stack_1.htmFile
  loc_9BA845: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9BA84A: FFreeStr var_A8 = ""
  loc_9BA851: ExitProcHresult
End Function

Private Function Proc_221_22_B9ACE8() 'B9ACE8
  'Data Table: 46C4D4
  loc_B99E24: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B99E29: PopAdLdVar
  loc_B99E2A: FLdPr Me
  loc_B99E2D: MemLdRfVar from_stack_1.htmFile
  loc_B99E30: LdPrVar
  loc_B99E32: LateMemCall
  loc_B99E38: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B99E3D: PopAdLdVar
  loc_B99E3E: FLdPr Me
  loc_B99E41: MemLdRfVar from_stack_1.htmFile
  loc_B99E44: LdPrVar
  loc_B99E46: LateMemCall
  loc_B99E4C: LitVarStr var_A4, "    <th colspan=""2"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_B99E51: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B99E56: FStVarCopyObj var_B4
  loc_B99E59: FLdRfVar var_B4
  loc_B99E5C: FLdRfVar var_C4
  loc_B99E5F: ImpAdCallFPR4  = Ucase()
  loc_B99E64: FLdRfVar var_C4
  loc_B99E67: ConcatVar var_D4
  loc_B99E6B: LitVarStr var_E4, "</th>"
  loc_B99E70: ConcatVar var_F4
  loc_B99E74: PopAdLdVar
  loc_B99E75: FLdPr Me
  loc_B99E78: MemLdRfVar from_stack_1.htmFile
  loc_B99E7B: LdPrVar
  loc_B99E7D: LateMemCall
  loc_B99E83: FFreeVar var_B4 = "": var_C4 = "": var_D4 = ""
  loc_B99E8E: LitVarStr var_94, "  </tr>"
  loc_B99E93: PopAdLdVar
  loc_B99E94: FLdPr Me
  loc_B99E97: MemLdRfVar from_stack_1.htmFile
  loc_B99E9A: LdPrVar
  loc_B99E9C: LateMemCall
  loc_B99EA2: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B99EA7: PopAdLdVar
  loc_B99EA8: FLdPr Me
  loc_B99EAB: MemLdRfVar from_stack_1.htmFile
  loc_B99EAE: LdPrVar
  loc_B99EB0: LateMemCall
  loc_B99EB6: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""bottom"" class=""Titulo1""><br>RECIBO OFICIAL</th>"
  loc_B99EBB: PopAdLdVar
  loc_B99EBC: FLdPr Me
  loc_B99EBF: MemLdRfVar from_stack_1.htmFile
  loc_B99EC2: LdPrVar
  loc_B99EC4: LateMemCall
  loc_B99ECA: LitVarStr var_94, "  </tr>"
  loc_B99ECF: PopAdLdVar
  loc_B99ED0: FLdPr Me
  loc_B99ED3: MemLdRfVar from_stack_1.htmFile
  loc_B99ED6: LdPrVar
  loc_B99ED8: LateMemCall
  loc_B99EDE: LitVarStr var_94, "  <tr valign=""baseline""><th colspan=""2"">"
  loc_B99EE3: PopAdLdVar
  loc_B99EE4: FLdPr Me
  loc_B99EE7: MemLdRfVar from_stack_1.htmFile
  loc_B99EEA: LdPrVar
  loc_B99EEC: LateMemCall
  loc_B99EF2: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ align=""center"" border=""0""><tr class=""Titulo2"">"
  loc_B99EF7: PopAdLdVar
  loc_B99EF8: FLdPr Me
  loc_B99EFB: MemLdRfVar from_stack_1.htmFile
  loc_B99EFE: LdPrVar
  loc_B99F00: LateMemCall
  loc_B99F06: LitStr "    <th width=""33" & Chr(37) & """ align=""left"">Orden de Pago: "
  loc_B99F09: FLdPr Me
  loc_B99F0C: MemLdI2 global_96
  loc_B99F0F: CI4UI1
  loc_B99F10: FLdPr Me
  loc_B99F13: MemLdStr global_92
  loc_B99F16: Ary1LdPr
  loc_B99F17: MemLdStr global_4
  loc_B99F1A: ConcatStr
  loc_B99F1B: FStStrNoPop var_108
  loc_B99F1E: LitStr "</th>"
  loc_B99F21: ConcatStr
  loc_B99F22: CVarStr var_B4
  loc_B99F25: PopAdLdVar
  loc_B99F26: FLdPr Me
  loc_B99F29: MemLdRfVar from_stack_1.htmFile
  loc_B99F2C: LdPrVar
  loc_B99F2E: LateMemCall
  loc_B99F34: FFree1Str var_108
  loc_B99F37: FFree1Var var_B4 = ""
  loc_B99F3A: LitStr "    <th align=""center"">"
  loc_B99F3D: LitStr vbNullString
  loc_B99F40: ConcatStr
  loc_B99F41: FStStrNoPop var_108
  loc_B99F44: LitStr "</th>"
  loc_B99F47: ConcatStr
  loc_B99F48: CVarStr var_B4
  loc_B99F4B: PopAdLdVar
  loc_B99F4C: FLdPr Me
  loc_B99F4F: MemLdRfVar from_stack_1.htmFile
  loc_B99F52: LdPrVar
  loc_B99F54: LateMemCall
  loc_B99F5A: FFree1Str var_108
  loc_B99F5D: FFree1Var var_B4 = ""
  loc_B99F60: LitStr "    <th width=""33" & Chr(37) & """ align=""right"">Expediente: "
  loc_B99F63: FLdPr Me
  loc_B99F66: MemLdI2 global_96
  loc_B99F69: CI4UI1
  loc_B99F6A: FLdPr Me
  loc_B99F6D: MemLdStr global_92
  loc_B99F70: Ary1LdPr
  loc_B99F71: MemLdStr global_12
  loc_B99F74: ConcatStr
  loc_B99F75: FStStrNoPop var_108
  loc_B99F78: LitStr " - "
  loc_B99F7B: ConcatStr
  loc_B99F7C: FStStrNoPop var_10C
  loc_B99F7F: FLdPr Me
  loc_B99F82: MemLdI2 global_96
  loc_B99F85: CI4UI1
  loc_B99F86: FLdPr Me
  loc_B99F89: MemLdStr global_92
  loc_B99F8C: Ary1LdPr
  loc_B99F8D: MemLdStr global_16
  loc_B99F90: ConcatStr
  loc_B99F91: FStStrNoPop var_110
  loc_B99F94: LitStr "</th>"
  loc_B99F97: ConcatStr
  loc_B99F98: CVarStr var_B4
  loc_B99F9B: PopAdLdVar
  loc_B99F9C: FLdPr Me
  loc_B99F9F: MemLdRfVar from_stack_1.htmFile
  loc_B99FA2: LdPrVar
  loc_B99FA4: LateMemCall
  loc_B99FAA: FFreeStr var_108 = "": var_10C = ""
  loc_B99FB3: FFree1Var var_B4 = ""
  loc_B99FB6: LitVarStr var_94, "    </tr></table></th>"
  loc_B99FBB: PopAdLdVar
  loc_B99FBC: FLdPr Me
  loc_B99FBF: MemLdRfVar from_stack_1.htmFile
  loc_B99FC2: LdPrVar
  loc_B99FC4: LateMemCall
  loc_B99FCA: LitVarStr var_94, "<table width=""90" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""40"" cellspacing=""0"" class=""Normal"">"
  loc_B99FCF: PopAdLdVar
  loc_B99FD0: FLdPr Me
  loc_B99FD3: MemLdRfVar from_stack_1.htmFile
  loc_B99FD6: LdPrVar
  loc_B99FD8: LateMemCall
  loc_B99FDE: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B99FE3: PopAdLdVar
  loc_B99FE4: FLdPr Me
  loc_B99FE7: MemLdRfVar from_stack_1.htmFile
  loc_B99FEA: LdPrVar
  loc_B99FEC: LateMemCall
  loc_B99FF2: LitVarStr var_94, "    <td><p>"
  loc_B99FF7: PopAdLdVar
  loc_B99FF8: FLdPr Me
  loc_B99FFB: MemLdRfVar from_stack_1.htmFile
  loc_B99FFE: LdPrVar
  loc_B9A000: LateMemCall
  loc_B9A006: LitStr "    Recibe <strong>"
  loc_B9A009: FLdPr Me
  loc_B9A00C: MemLdI2 global_96
  loc_B9A00F: CI4UI1
  loc_B9A010: FLdPr Me
  loc_B9A013: MemLdStr global_92
  loc_B9A016: Ary1LdPr
  loc_B9A017: MemLdStr global_32
  loc_B9A01A: ConcatStr
  loc_B9A01B: FStStrNoPop var_108
  loc_B9A01E: LitStr "</strong> con CUIT/CUIL <strong>"
  loc_B9A021: ConcatStr
  loc_B9A022: FStStrNoPop var_10C
  loc_B9A025: FLdPr Me
  loc_B9A028: MemLdI2 global_96
  loc_B9A02B: CI4UI1
  loc_B9A02C: FLdPr Me
  loc_B9A02F: MemLdStr global_92
  loc_B9A032: Ary1LdPr
  loc_B9A033: MemLdStr global_28
  loc_B9A036: ConcatStr
  loc_B9A037: FStStrNoPop var_110
  loc_B9A03A: LitStr "</strong> de la <strong>Tesorería Municipal de la "
  loc_B9A03D: ConcatStr
  loc_B9A03E: FStStrNoPop var_114
  loc_B9A041: LitStr "Municipalidad de Guaymallén"
  loc_B9A044: ConcatStr
  loc_B9A045: FStStrNoPop var_118
  loc_B9A048: LitStr "</strong> la cantidad de pesos <strong>"
  loc_B9A04B: ConcatStr
  loc_B9A04C: FStStrNoPop var_11C
  loc_B9A04F: FLdPr Me
  loc_B9A052: MemLdI2 global_96
  loc_B9A055: CI4UI1
  loc_B9A056: FLdPr Me
  loc_B9A059: MemLdStr global_92
  loc_B9A05C: Ary1LdPr
  loc_B9A05D: MemLdStr global_64
  loc_B9A060: CR8Str
  loc_B9A062: PopFPR8
  loc_B9A063: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_B9A068: FStStrNoPop var_120
  loc_B9A06B: ConcatStr
  loc_B9A06C: FStStrNoPop var_124
  loc_B9A06F: LitStr "</strong>.----------------------------------------------------------------------------------------------------------------------- del valor total de la presente.</p>"
  loc_B9A072: ConcatStr
  loc_B9A073: CVarStr var_B4
  loc_B9A076: PopAdLdVar
  loc_B9A077: FLdPr Me
  loc_B9A07A: MemLdRfVar from_stack_1.htmFile
  loc_B9A07D: LdPrVar
  loc_B9A07F: LateMemCall
  loc_B9A085: FFreeStr var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_B9A098: FFree1Var var_B4 = ""
  loc_B9A09B: LitStr "En concepto de: "
  loc_B9A09E: FLdPr Me
  loc_B9A0A1: MemLdI2 global_96
  loc_B9A0A4: CI4UI1
  loc_B9A0A5: FLdPr Me
  loc_B9A0A8: MemLdStr global_92
  loc_B9A0AB: Ary1LdPr
  loc_B9A0AC: MemLdStr global_8
  loc_B9A0AF: ConcatStr
  loc_B9A0B0: CVarStr var_B4
  loc_B9A0B3: PopAdLdVar
  loc_B9A0B4: FLdPr Me
  loc_B9A0B7: MemLdRfVar from_stack_1.htmFile
  loc_B9A0BA: LdPrVar
  loc_B9A0BC: LateMemCall
  loc_B9A0C2: FFree1Var var_B4 = ""
  loc_B9A0C5: FLdPr Me
  loc_B9A0C8: MemLdI2 global_106
  loc_B9A0CB: BranchF loc_B9A758
  loc_B9A0CE: LitVarStr var_94, "    <p>Correspondiente a los siguientes débitos:<br>"
  loc_B9A0D3: PopAdLdVar
  loc_B9A0D4: FLdPr Me
  loc_B9A0D7: MemLdRfVar from_stack_1.htmFile
  loc_B9A0DA: LdPrVar
  loc_B9A0DC: LateMemCall
  loc_B9A0E2: LitStr "    <table class="""
  loc_B9A0E5: LitStr "LineaDato"
  loc_B9A0E8: ConcatStr
  loc_B9A0E9: FStStrNoPop var_108
  loc_B9A0EC: LitStr """ border=""1"" cellpadding="
  loc_B9A0EF: ConcatStr
  loc_B9A0F0: CVarStr var_C4
  loc_B9A0F3: LitI4 &H22
  loc_B9A0F8: FLdRfVar var_B4
  loc_B9A0FB: ImpAdCallFPR4  = Chr()
  loc_B9A100: FLdRfVar var_B4
  loc_B9A103: ConcatVar var_D4
  loc_B9A107: LitVarI2 var_94, 3
  loc_B9A10C: ConcatVar var_F4
  loc_B9A110: LitI4 &H22
  loc_B9A115: FLdRfVar var_134
  loc_B9A118: ImpAdCallFPR4  = Chr()
  loc_B9A11D: FLdRfVar var_134
  loc_B9A120: ConcatVar var_144
  loc_B9A124: LitVarStr var_A4, " cellspacing=""0"">"
  loc_B9A129: ConcatVar var_154
  loc_B9A12D: PopAdLdVar
  loc_B9A12E: FLdPr Me
  loc_B9A131: MemLdRfVar from_stack_1.htmFile
  loc_B9A134: LdPrVar
  loc_B9A136: LateMemCall
  loc_B9A13C: FFree1Str var_108
  loc_B9A13F: FFreeVar var_C4 = "": var_B4 = "": var_D4 = "": var_F4 = "": var_134 = "": var_144 = ""
  loc_B9A150: LitVarStr var_94, "          <tr>"
  loc_B9A155: PopAdLdVar
  loc_B9A156: FLdPr Me
  loc_B9A159: MemLdRfVar from_stack_1.htmFile
  loc_B9A15C: LdPrVar
  loc_B9A15E: LateMemCall
  loc_B9A164: LitVarStr var_94, "            <th>Débito</th>"
  loc_B9A169: PopAdLdVar
  loc_B9A16A: FLdPr Me
  loc_B9A16D: MemLdRfVar from_stack_1.htmFile
  loc_B9A170: LdPrVar
  loc_B9A172: LateMemCall
  loc_B9A178: LitVarStr var_94, "            <th>Detalle</th>"
  loc_B9A17D: PopAdLdVar
  loc_B9A17E: FLdPr Me
  loc_B9A181: MemLdRfVar from_stack_1.htmFile
  loc_B9A184: LdPrVar
  loc_B9A186: LateMemCall
  loc_B9A18C: LitVarStr var_94, "            <th>Factura</th>"
  loc_B9A191: PopAdLdVar
  loc_B9A192: FLdPr Me
  loc_B9A195: MemLdRfVar from_stack_1.htmFile
  loc_B9A198: LdPrVar
  loc_B9A19A: LateMemCall
  loc_B9A1A0: LitVarStr var_94, "            <th>Cuenta Contable</th>"
  loc_B9A1A5: PopAdLdVar
  loc_B9A1A6: FLdPr Me
  loc_B9A1A9: MemLdRfVar from_stack_1.htmFile
  loc_B9A1AC: LdPrVar
  loc_B9A1AE: LateMemCall
  loc_B9A1B4: LitVarStr var_94, "            <th>Importe</th>"
  loc_B9A1B9: PopAdLdVar
  loc_B9A1BA: FLdPr Me
  loc_B9A1BD: MemLdRfVar from_stack_1.htmFile
  loc_B9A1C0: LdPrVar
  loc_B9A1C2: LateMemCall
  loc_B9A1C8: LitVarStr var_94, "          </tr>"
  loc_B9A1CD: PopAdLdVar
  loc_B9A1CE: FLdPr Me
  loc_B9A1D1: MemLdRfVar from_stack_1.htmFile
  loc_B9A1D4: LdPrVar
  loc_B9A1D6: LateMemCall
  loc_B9A1DC: LitI2_Byte 1
  loc_B9A1DE: FLdPr Me
  loc_B9A1E1: MemLdRfVar from_stack_1.global_104
  loc_B9A1E4: FLdPr Me
  loc_B9A1E7: MemLdI2 global_96
  loc_B9A1EA: CI4UI1
  loc_B9A1EB: FLdPr Me
  loc_B9A1EE: MemLdStr global_92
  loc_B9A1F1: Ary1LdPr
  loc_B9A1F2: MemLdStr htmFile
  loc_B9A1F5: LitI2_Byte 1
  loc_B9A1F7: FnUBound
  loc_B9A1F9: CI2I4
  loc_B9A1FA: ForI2 var_158
  loc_B9A200: LitVarStr var_94, "      <tr valign=""top"">"
  loc_B9A205: PopAdLdVar
  loc_B9A206: FLdPr Me
  loc_B9A209: MemLdRfVar from_stack_1.htmFile
  loc_B9A20C: LdPrVar
  loc_B9A20E: LateMemCall
  loc_B9A214: LitStr "        <td align=""right"">"
  loc_B9A217: FLdPr Me
  loc_B9A21A: MemLdI2 global_104
  loc_B9A21D: CI4UI1
  loc_B9A21E: FLdPr Me
  loc_B9A221: MemLdI2 global_96
  loc_B9A224: CI4UI1
  loc_B9A225: FLdPr Me
  loc_B9A228: MemLdStr global_92
  loc_B9A22B: Ary1LdPr
  loc_B9A22C: MemLdStr htmFile
  loc_B9A22F: Ary1LdPr
  loc_B9A230: MemLdStr global_0
  loc_B9A233: ConcatStr
  loc_B9A234: FStStrNoPop var_108
  loc_B9A237: LitStr "</td>"
  loc_B9A23A: ConcatStr
  loc_B9A23B: CVarStr var_B4
  loc_B9A23E: PopAdLdVar
  loc_B9A23F: FLdPr Me
  loc_B9A242: MemLdRfVar from_stack_1.htmFile
  loc_B9A245: LdPrVar
  loc_B9A247: LateMemCall
  loc_B9A24D: FFree1Str var_108
  loc_B9A250: FFree1Var var_B4 = ""
  loc_B9A253: LitStr "        <td align=""left"">"
  loc_B9A256: FLdPr Me
  loc_B9A259: MemLdI2 global_104
  loc_B9A25C: CI4UI1
  loc_B9A25D: FLdPr Me
  loc_B9A260: MemLdI2 global_96
  loc_B9A263: CI4UI1
  loc_B9A264: FLdPr Me
  loc_B9A267: MemLdStr global_92
  loc_B9A26A: Ary1LdPr
  loc_B9A26B: MemLdStr htmFile
  loc_B9A26E: Ary1LdPr
  loc_B9A26F: MemLdStr global_4
  loc_B9A272: ConcatStr
  loc_B9A273: FStStrNoPop var_108
  loc_B9A276: LitStr "</td>"
  loc_B9A279: ConcatStr
  loc_B9A27A: CVarStr var_B4
  loc_B9A27D: PopAdLdVar
  loc_B9A27E: FLdPr Me
  loc_B9A281: MemLdRfVar from_stack_1.htmFile
  loc_B9A284: LdPrVar
  loc_B9A286: LateMemCall
  loc_B9A28C: FFree1Str var_108
  loc_B9A28F: FFree1Var var_B4 = ""
  loc_B9A292: LitVarStr var_104, "        <td align=""right"">"
  loc_B9A297: LitVarStr var_E4, "&nbsp;"
  loc_B9A29C: FStVarCopyObj var_B4
  loc_B9A29F: FLdRfVar var_B4
  loc_B9A2A2: FLdPr Me
  loc_B9A2A5: MemLdI2 global_104
  loc_B9A2A8: CI4UI1
  loc_B9A2A9: FLdPr Me
  loc_B9A2AC: MemLdI2 global_96
  loc_B9A2AF: CI4UI1
  loc_B9A2B0: FLdPr Me
  loc_B9A2B3: MemLdStr global_92
  loc_B9A2B6: AryLock
  loc_B9A2B9: Ary1LdPr
  loc_B9A2BA: MemLdStr htmFile
  loc_B9A2BD: AryLock
  loc_B9A2C0: Ary1LdPr
  loc_B9A2C1: MemLdRfVar from_stack_1.global_8
  loc_B9A2C4: CVarRef
  loc_B9A2C9: FLdPr Me
  loc_B9A2CC: MemLdI2 global_104
  loc_B9A2CF: CI4UI1
  loc_B9A2D0: FLdPr Me
  loc_B9A2D3: MemLdI2 global_96
  loc_B9A2D6: CI4UI1
  loc_B9A2D7: FLdPr Me
  loc_B9A2DA: MemLdStr global_92
  loc_B9A2DD: Ary1LdPr
  loc_B9A2DE: MemLdStr htmFile
  loc_B9A2E1: Ary1LdPr
  loc_B9A2E2: MemLdStr global_8
  loc_B9A2E5: LitStr vbNullString
  loc_B9A2E8: NeStr
  loc_B9A2EA: CVarBoolI2 var_94
  loc_B9A2EE: FLdRfVar var_C4
  loc_B9A2F1: ImpAdCallFPR4  = IIf(, , )
  loc_B9A2F6: AryUnlock
  loc_B9A2F9: AryUnlock
  loc_B9A2FC: FLdRfVar var_C4
  loc_B9A2FF: ConcatVar var_D4
  loc_B9A303: LitVarStr var_170, "</td>"
  loc_B9A308: ConcatVar var_F4
  loc_B9A30C: PopAdLdVar
  loc_B9A30D: FLdPr Me
  loc_B9A310: MemLdRfVar from_stack_1.htmFile
  loc_B9A313: LdPrVar
  loc_B9A315: LateMemCall
  loc_B9A31B: FFreeVar var_94 = "": var_B4 = "": var_C4 = "": var_D4 = ""
  loc_B9A328: LitStr "        <td align=""left"">"
  loc_B9A32B: FLdPr Me
  loc_B9A32E: MemLdI2 global_104
  loc_B9A331: CI4UI1
  loc_B9A332: FLdPr Me
  loc_B9A335: MemLdI2 global_96
  loc_B9A338: CI4UI1
  loc_B9A339: FLdPr Me
  loc_B9A33C: MemLdStr global_92
  loc_B9A33F: Ary1LdPr
  loc_B9A340: MemLdStr htmFile
  loc_B9A343: Ary1LdPr
  loc_B9A344: MemLdStr global_12
  loc_B9A347: ConcatStr
  loc_B9A348: FStStrNoPop var_108
  loc_B9A34B: LitStr " - "
  loc_B9A34E: ConcatStr
  loc_B9A34F: FStStrNoPop var_10C
  loc_B9A352: FLdPr Me
  loc_B9A355: MemLdI2 global_104
  loc_B9A358: CI4UI1
  loc_B9A359: FLdPr Me
  loc_B9A35C: MemLdI2 global_96
  loc_B9A35F: CI4UI1
  loc_B9A360: FLdPr Me
  loc_B9A363: MemLdStr global_92
  loc_B9A366: Ary1LdPr
  loc_B9A367: MemLdStr htmFile
  loc_B9A36A: Ary1LdPr
  loc_B9A36B: MemLdStr global_16
  loc_B9A36E: ConcatStr
  loc_B9A36F: FStStrNoPop var_110
  loc_B9A372: LitStr "</td>"
  loc_B9A375: ConcatStr
  loc_B9A376: CVarStr var_B4
  loc_B9A379: PopAdLdVar
  loc_B9A37A: FLdPr Me
  loc_B9A37D: MemLdRfVar from_stack_1.htmFile
  loc_B9A380: LdPrVar
  loc_B9A382: LateMemCall
  loc_B9A388: FFreeStr var_108 = "": var_10C = ""
  loc_B9A391: FFree1Var var_B4 = ""
  loc_B9A394: LitStr "        <td align=""right"">"
  loc_B9A397: FLdPr Me
  loc_B9A39A: MemLdI2 global_104
  loc_B9A39D: CI4UI1
  loc_B9A39E: FLdPr Me
  loc_B9A3A1: MemLdI2 global_96
  loc_B9A3A4: CI4UI1
  loc_B9A3A5: FLdPr Me
  loc_B9A3A8: MemLdStr global_92
  loc_B9A3AB: Ary1LdPr
  loc_B9A3AC: MemLdStr htmFile
  loc_B9A3AF: Ary1LdPr
  loc_B9A3B0: MemLdStr global_20
  loc_B9A3B3: ConcatStr
  loc_B9A3B4: FStStrNoPop var_108
  loc_B9A3B7: LitStr "</td>"
  loc_B9A3BA: ConcatStr
  loc_B9A3BB: CVarStr var_B4
  loc_B9A3BE: PopAdLdVar
  loc_B9A3BF: FLdPr Me
  loc_B9A3C2: MemLdRfVar from_stack_1.htmFile
  loc_B9A3C5: LdPrVar
  loc_B9A3C7: LateMemCall
  loc_B9A3CD: FFree1Str var_108
  loc_B9A3D0: FFree1Var var_B4 = ""
  loc_B9A3D3: LitVarStr var_94, "      </tr>"
  loc_B9A3D8: PopAdLdVar
  loc_B9A3D9: FLdPr Me
  loc_B9A3DC: MemLdRfVar from_stack_1.htmFile
  loc_B9A3DF: LdPrVar
  loc_B9A3E1: LateMemCall
  loc_B9A3E7: FLdPr Me
  loc_B9A3EA: MemLdRfVar from_stack_1.global_104
  loc_B9A3ED: NextI2 var_158, loc_B9A200
  loc_B9A3F2: LitVarStr var_94, "    </table></p>"
  loc_B9A3F7: PopAdLdVar
  loc_B9A3F8: FLdPr Me
  loc_B9A3FB: MemLdRfVar from_stack_1.htmFile
  loc_B9A3FE: LdPrVar
  loc_B9A400: LateMemCall
  loc_B9A406: Call Proc_221_23_A5F59C()
  loc_B9A40B: FLdPr Me
  loc_B9A40E: MemLdI2 global_96
  loc_B9A411: CI4UI1
  loc_B9A412: FLdPr Me
  loc_B9A415: MemLdStr global_92
  loc_B9A418: Ary1LdPr
  loc_B9A419: MemLdI2 global_44
  loc_B9A41C: BranchF loc_B9A424
  loc_B9A41F: Call Proc_221_24_A33274()
  loc_B9A424: LitVarStr var_94, "    <p>&nbsp;</p>"
  loc_B9A429: PopAdLdVar
  loc_B9A42A: FLdPr Me
  loc_B9A42D: MemLdRfVar from_stack_1.htmFile
  loc_B9A430: LdPrVar
  loc_B9A432: LateMemCall
  loc_B9A438: LitVarStr var_94, "    <table class=""Normal"" width=""35" & Chr(37) & """ border=""0"" align=""right"" valign=""baseline"" cellpadding=""0"" cellspacing=""0"">"
  loc_B9A43D: PopAdLdVar
  loc_B9A43E: FLdPr Me
  loc_B9A441: MemLdRfVar from_stack_1.htmFile
  loc_B9A444: LdPrVar
  loc_B9A446: LateMemCall
  loc_B9A44C: LitVarStr var_94, "      <tr>"
  loc_B9A451: PopAdLdVar
  loc_B9A452: FLdPr Me
  loc_B9A455: MemLdRfVar from_stack_1.htmFile
  loc_B9A458: LdPrVar
  loc_B9A45A: LateMemCall
  loc_B9A460: LitVarStr var_94, "        <td align=""center""><hr></td>"
  loc_B9A465: PopAdLdVar
  loc_B9A466: FLdPr Me
  loc_B9A469: MemLdRfVar from_stack_1.htmFile
  loc_B9A46C: LdPrVar
  loc_B9A46E: LateMemCall
  loc_B9A474: LitVarStr var_94, "      </tr>"
  loc_B9A479: PopAdLdVar
  loc_B9A47A: FLdPr Me
  loc_B9A47D: MemLdRfVar from_stack_1.htmFile
  loc_B9A480: LdPrVar
  loc_B9A482: LateMemCall
  loc_B9A488: LitVarStr var_94, "      <tr>"
  loc_B9A48D: PopAdLdVar
  loc_B9A48E: FLdPr Me
  loc_B9A491: MemLdRfVar from_stack_1.htmFile
  loc_B9A494: LdPrVar
  loc_B9A496: LateMemCall
  loc_B9A49C: LitVarStr var_94, "        <td align=""center"">Firma&nbsp;del&nbsp;receptor</td>"
  loc_B9A4A1: PopAdLdVar
  loc_B9A4A2: FLdPr Me
  loc_B9A4A5: MemLdRfVar from_stack_1.htmFile
  loc_B9A4A8: LdPrVar
  loc_B9A4AA: LateMemCall
  loc_B9A4B0: LitVarStr var_94, "      </tr>"
  loc_B9A4B5: PopAdLdVar
  loc_B9A4B6: FLdPr Me
  loc_B9A4B9: MemLdRfVar from_stack_1.htmFile
  loc_B9A4BC: LdPrVar
  loc_B9A4BE: LateMemCall
  loc_B9A4C4: LitVarStr var_94, "      <tr>"
  loc_B9A4C9: PopAdLdVar
  loc_B9A4CA: FLdPr Me
  loc_B9A4CD: MemLdRfVar from_stack_1.htmFile
  loc_B9A4D0: LdPrVar
  loc_B9A4D2: LateMemCall
  loc_B9A4D8: LitVarStr var_94, "        <td align=""center"">&nbsp;</td>"
  loc_B9A4DD: PopAdLdVar
  loc_B9A4DE: FLdPr Me
  loc_B9A4E1: MemLdRfVar from_stack_1.htmFile
  loc_B9A4E4: LdPrVar
  loc_B9A4E6: LateMemCall
  loc_B9A4EC: LitVarStr var_94, "      </tr>"
  loc_B9A4F1: PopAdLdVar
  loc_B9A4F2: FLdPr Me
  loc_B9A4F5: MemLdRfVar from_stack_1.htmFile
  loc_B9A4F8: LdPrVar
  loc_B9A4FA: LateMemCall
  loc_B9A500: LitVarStr var_94, "      <tr>"
  loc_B9A505: PopAdLdVar
  loc_B9A506: FLdPr Me
  loc_B9A509: MemLdRfVar from_stack_1.htmFile
  loc_B9A50C: LdPrVar
  loc_B9A50E: LateMemCall
  loc_B9A514: LitVarStr var_94, "        <td align=""center""><hr></td>"
  loc_B9A519: PopAdLdVar
  loc_B9A51A: FLdPr Me
  loc_B9A51D: MemLdRfVar from_stack_1.htmFile
  loc_B9A520: LdPrVar
  loc_B9A522: LateMemCall
  loc_B9A528: LitVarStr var_94, "      </tr>"
  loc_B9A52D: PopAdLdVar
  loc_B9A52E: FLdPr Me
  loc_B9A531: MemLdRfVar from_stack_1.htmFile
  loc_B9A534: LdPrVar
  loc_B9A536: LateMemCall
  loc_B9A53C: LitVarStr var_94, "      <tr>"
  loc_B9A541: PopAdLdVar
  loc_B9A542: FLdPr Me
  loc_B9A545: MemLdRfVar from_stack_1.htmFile
  loc_B9A548: LdPrVar
  loc_B9A54A: LateMemCall
  loc_B9A550: LitVarStr var_94, "        <td align=""center"">Aclaración</td>"
  loc_B9A555: PopAdLdVar
  loc_B9A556: FLdPr Me
  loc_B9A559: MemLdRfVar from_stack_1.htmFile
  loc_B9A55C: LdPrVar
  loc_B9A55E: LateMemCall
  loc_B9A564: LitVarStr var_94, "      </tr>"
  loc_B9A569: PopAdLdVar
  loc_B9A56A: FLdPr Me
  loc_B9A56D: MemLdRfVar from_stack_1.htmFile
  loc_B9A570: LdPrVar
  loc_B9A572: LateMemCall
  loc_B9A578: LitVarStr var_94, "      <tr>"
  loc_B9A57D: PopAdLdVar
  loc_B9A57E: FLdPr Me
  loc_B9A581: MemLdRfVar from_stack_1.htmFile
  loc_B9A584: LdPrVar
  loc_B9A586: LateMemCall
  loc_B9A58C: LitVarStr var_94, "        <td align=""center"">&nbsp;</td>"
  loc_B9A591: PopAdLdVar
  loc_B9A592: FLdPr Me
  loc_B9A595: MemLdRfVar from_stack_1.htmFile
  loc_B9A598: LdPrVar
  loc_B9A59A: LateMemCall
  loc_B9A5A0: LitVarStr var_94, "      </tr>"
  loc_B9A5A5: PopAdLdVar
  loc_B9A5A6: FLdPr Me
  loc_B9A5A9: MemLdRfVar from_stack_1.htmFile
  loc_B9A5AC: LdPrVar
  loc_B9A5AE: LateMemCall
  loc_B9A5B4: LitVarStr var_94, "      <tr>"
  loc_B9A5B9: PopAdLdVar
  loc_B9A5BA: FLdPr Me
  loc_B9A5BD: MemLdRfVar from_stack_1.htmFile
  loc_B9A5C0: LdPrVar
  loc_B9A5C2: LateMemCall
  loc_B9A5C8: LitVarStr var_94, "        <td align=""center""><hr></td>"
  loc_B9A5CD: PopAdLdVar
  loc_B9A5CE: FLdPr Me
  loc_B9A5D1: MemLdRfVar from_stack_1.htmFile
  loc_B9A5D4: LdPrVar
  loc_B9A5D6: LateMemCall
  loc_B9A5DC: LitVarStr var_94, "      </tr>"
  loc_B9A5E1: PopAdLdVar
  loc_B9A5E2: FLdPr Me
  loc_B9A5E5: MemLdRfVar from_stack_1.htmFile
  loc_B9A5E8: LdPrVar
  loc_B9A5EA: LateMemCall
  loc_B9A5F0: LitVarStr var_94, "      <tr>"
  loc_B9A5F5: PopAdLdVar
  loc_B9A5F6: FLdPr Me
  loc_B9A5F9: MemLdRfVar from_stack_1.htmFile
  loc_B9A5FC: LdPrVar
  loc_B9A5FE: LateMemCall
  loc_B9A604: LitVarStr var_94, "        <td align=""center"">D.N.I.</td>"
  loc_B9A609: PopAdLdVar
  loc_B9A60A: FLdPr Me
  loc_B9A60D: MemLdRfVar from_stack_1.htmFile
  loc_B9A610: LdPrVar
  loc_B9A612: LateMemCall
  loc_B9A618: LitVarStr var_94, "      </tr>"
  loc_B9A61D: PopAdLdVar
  loc_B9A61E: FLdPr Me
  loc_B9A621: MemLdRfVar from_stack_1.htmFile
  loc_B9A624: LdPrVar
  loc_B9A626: LateMemCall
  loc_B9A62C: LitVarStr var_94, "    </table>    "
  loc_B9A631: PopAdLdVar
  loc_B9A632: FLdPr Me
  loc_B9A635: MemLdRfVar from_stack_1.htmFile
  loc_B9A638: LdPrVar
  loc_B9A63A: LateMemCall
  loc_B9A640: LitVarStr var_104, "    <p>Este pago lo realizó:<br>"
  loc_B9A645: LitI4 1
  loc_B9A64A: FLdPr Me
  loc_B9A64D: MemLdI2 global_96
  loc_B9A650: CI4UI1
  loc_B9A651: FLdPr Me
  loc_B9A654: MemLdStr global_92
  loc_B9A657: AryLock
  loc_B9A65A: Ary1LdPr
  loc_B9A65B: MemLdStr global_40
  loc_B9A65E: AryLock
  loc_B9A661: Ary1LdPr
  loc_B9A662: MemLdRfVar from_stack_1.global_24
  loc_B9A665: CVarRef
  loc_B9A66A: LitI4 1
  loc_B9A66F: FLdPr Me
  loc_B9A672: MemLdI2 global_96
  loc_B9A675: CI4UI1
  loc_B9A676: FLdPr Me
  loc_B9A679: MemLdStr global_92
  loc_B9A67C: AryLock
  loc_B9A67F: Ary1LdPr
  loc_B9A680: MemLdStr global_40
  loc_B9A683: AryLock
  loc_B9A686: Ary1LdPr
  loc_B9A687: MemLdRfVar from_stack_1.global_28
  loc_B9A68A: CVarRef
  loc_B9A68F: LitI4 1
  loc_B9A694: FLdPr Me
  loc_B9A697: MemLdI2 global_96
  loc_B9A69A: CI4UI1
  loc_B9A69B: FLdPr Me
  loc_B9A69E: MemLdStr global_92
  loc_B9A6A1: Ary1LdPr
  loc_B9A6A2: MemLdStr global_40
  loc_B9A6A5: Ary1LdPr
  loc_B9A6A6: MemLdStr global_28
  loc_B9A6A9: LitStr vbNullString
  loc_B9A6AC: NeStr
  loc_B9A6AE: CVarBoolI2 var_94
  loc_B9A6B2: FLdRfVar var_B4
  loc_B9A6B5: ImpAdCallFPR4  = IIf(, , )
  loc_B9A6BA: AryUnlock
  loc_B9A6BD: AryUnlock
  loc_B9A6C0: AryUnlock
  loc_B9A6C3: AryUnlock
  loc_B9A6C6: FLdRfVar var_B4
  loc_B9A6C9: ConcatVar var_C4
  loc_B9A6CD: LitVarStr var_170, "</p>"
  loc_B9A6D2: ConcatVar var_D4
  loc_B9A6D6: PopAdLdVar
  loc_B9A6D7: FLdPr Me
  loc_B9A6DA: MemLdRfVar from_stack_1.htmFile
  loc_B9A6DD: LdPrVar
  loc_B9A6DF: LateMemCall
  loc_B9A6E5: FFreeVar var_94 = "": var_B4 = "": var_C4 = ""
  loc_B9A6F0: LitStr "    <p>FECHA DE PAGO: "
  loc_B9A6F3: LitI4 1
  loc_B9A6F8: FLdPr Me
  loc_B9A6FB: MemLdI2 global_96
  loc_B9A6FE: CI4UI1
  loc_B9A6FF: FLdPr Me
  loc_B9A702: MemLdStr global_92
  loc_B9A705: Ary1LdPr
  loc_B9A706: MemLdStr global_40
  loc_B9A709: Ary1LdPr
  loc_B9A70A: MemLdStr global_16
  loc_B9A70D: ConcatStr
  loc_B9A70E: FStStrNoPop var_108
  loc_B9A711: LitStr "</p></td>"
  loc_B9A714: ConcatStr
  loc_B9A715: CVarStr var_B4
  loc_B9A718: PopAdLdVar
  loc_B9A719: FLdPr Me
  loc_B9A71C: MemLdRfVar from_stack_1.htmFile
  loc_B9A71F: LdPrVar
  loc_B9A721: LateMemCall
  loc_B9A727: FFree1Str var_108
  loc_B9A72A: FFree1Var var_B4 = ""
  loc_B9A72D: LitVarStr var_94, "  </tr>"
  loc_B9A732: PopAdLdVar
  loc_B9A733: FLdPr Me
  loc_B9A736: MemLdRfVar from_stack_1.htmFile
  loc_B9A739: LdPrVar
  loc_B9A73B: LateMemCall
  loc_B9A741: LitVarStr var_94, "</table>"
  loc_B9A746: PopAdLdVar
  loc_B9A747: FLdPr Me
  loc_B9A74A: MemLdRfVar from_stack_1.htmFile
  loc_B9A74D: LdPrVar
  loc_B9A74F: LateMemCall
  loc_B9A755: Branch loc_B9ACE6
  loc_B9A758: LitVarStr var_94, "    <p>Correspondiente a las facturas:<br>"
  loc_B9A75D: PopAdLdVar
  loc_B9A75E: FLdPr Me
  loc_B9A761: MemLdRfVar from_stack_1.htmFile
  loc_B9A764: LdPrVar
  loc_B9A766: LateMemCall
  loc_B9A76C: LitStr "    <table class="""
  loc_B9A76F: LitStr "LineaDato"
  loc_B9A772: ConcatStr
  loc_B9A773: FStStrNoPop var_108
  loc_B9A776: LitStr """ border=""1"" cellpadding="
  loc_B9A779: ConcatStr
  loc_B9A77A: CVarStr var_C4
  loc_B9A77D: LitI4 &H22
  loc_B9A782: FLdRfVar var_B4
  loc_B9A785: ImpAdCallFPR4  = Chr()
  loc_B9A78A: FLdRfVar var_B4
  loc_B9A78D: ConcatVar var_D4
  loc_B9A791: LitVarI2 var_94, 3
  loc_B9A796: ConcatVar var_F4
  loc_B9A79A: LitI4 &H22
  loc_B9A79F: FLdRfVar var_134
  loc_B9A7A2: ImpAdCallFPR4  = Chr()
  loc_B9A7A7: FLdRfVar var_134
  loc_B9A7AA: ConcatVar var_144
  loc_B9A7AE: LitVarStr var_A4, " cellspacing=""0"">"
  loc_B9A7B3: ConcatVar var_154
  loc_B9A7B7: PopAdLdVar
  loc_B9A7B8: FLdPr Me
  loc_B9A7BB: MemLdRfVar from_stack_1.htmFile
  loc_B9A7BE: LdPrVar
  loc_B9A7C0: LateMemCall
  loc_B9A7C6: FFree1Str var_108
  loc_B9A7C9: FFreeVar var_C4 = "": var_B4 = "": var_D4 = "": var_F4 = "": var_134 = "": var_144 = ""
  loc_B9A7DA: LitVarStr var_94, "          <tr>"
  loc_B9A7DF: PopAdLdVar
  loc_B9A7E0: FLdPr Me
  loc_B9A7E3: MemLdRfVar from_stack_1.htmFile
  loc_B9A7E6: LdPrVar
  loc_B9A7E8: LateMemCall
  loc_B9A7EE: LitVarStr var_94, "            <th>Factura</th>"
  loc_B9A7F3: PopAdLdVar
  loc_B9A7F4: FLdPr Me
  loc_B9A7F7: MemLdRfVar from_stack_1.htmFile
  loc_B9A7FA: LdPrVar
  loc_B9A7FC: LateMemCall
  loc_B9A802: LitVarStr var_94, "            <th>Importe</th>"
  loc_B9A807: PopAdLdVar
  loc_B9A808: FLdPr Me
  loc_B9A80B: MemLdRfVar from_stack_1.htmFile
  loc_B9A80E: LdPrVar
  loc_B9A810: LateMemCall
  loc_B9A816: LitVarStr var_94, "          </tr>"
  loc_B9A81B: PopAdLdVar
  loc_B9A81C: FLdPr Me
  loc_B9A81F: MemLdRfVar from_stack_1.htmFile
  loc_B9A822: LdPrVar
  loc_B9A824: LateMemCall
  loc_B9A82A: LitI2_Byte 1
  loc_B9A82C: FLdPr Me
  loc_B9A82F: MemLdRfVar from_stack_1.global_98
  loc_B9A832: FLdPr Me
  loc_B9A835: MemLdI2 global_96
  loc_B9A838: CI4UI1
  loc_B9A839: FLdPr Me
  loc_B9A83C: MemLdStr global_92
  loc_B9A83F: Ary1LdPr
  loc_B9A840: MemLdStr global_36
  loc_B9A843: LitI2_Byte 1
  loc_B9A845: FnUBound
  loc_B9A847: CI2I4
  loc_B9A848: ForI2 var_18C
  loc_B9A84E: LitVarStr var_94, "      <tr>"
  loc_B9A853: PopAdLdVar
  loc_B9A854: FLdPr Me
  loc_B9A857: MemLdRfVar from_stack_1.htmFile
  loc_B9A85A: LdPrVar
  loc_B9A85C: LateMemCall
  loc_B9A862: LitStr "        <td>"
  loc_B9A865: FLdPr Me
  loc_B9A868: MemLdI2 global_98
  loc_B9A86B: CI4UI1
  loc_B9A86C: FLdPr Me
  loc_B9A86F: MemLdI2 global_96
  loc_B9A872: CI4UI1
  loc_B9A873: FLdPr Me
  loc_B9A876: MemLdStr global_92
  loc_B9A879: Ary1LdPr
  loc_B9A87A: MemLdStr global_36
  loc_B9A87D: Ary1LdPr
  loc_B9A87E: MemLdStr global_0
  loc_B9A881: ConcatStr
  loc_B9A882: FStStrNoPop var_108
  loc_B9A885: LitStr "</td>"
  loc_B9A888: ConcatStr
  loc_B9A889: CVarStr var_B4
  loc_B9A88C: PopAdLdVar
  loc_B9A88D: FLdPr Me
  loc_B9A890: MemLdRfVar from_stack_1.htmFile
  loc_B9A893: LdPrVar
  loc_B9A895: LateMemCall
  loc_B9A89B: FFree1Str var_108
  loc_B9A89E: FFree1Var var_B4 = ""
  loc_B9A8A1: LitStr "        <td align=""right"">"
  loc_B9A8A4: FLdPr Me
  loc_B9A8A7: MemLdI2 global_98
  loc_B9A8AA: CI4UI1
  loc_B9A8AB: FLdPr Me
  loc_B9A8AE: MemLdI2 global_96
  loc_B9A8B1: CI4UI1
  loc_B9A8B2: FLdPr Me
  loc_B9A8B5: MemLdStr global_92
  loc_B9A8B8: Ary1LdPr
  loc_B9A8B9: MemLdStr global_36
  loc_B9A8BC: Ary1LdPr
  loc_B9A8BD: MemLdStr global_4
  loc_B9A8C0: ConcatStr
  loc_B9A8C1: FStStrNoPop var_108
  loc_B9A8C4: LitStr "</td>"
  loc_B9A8C7: ConcatStr
  loc_B9A8C8: CVarStr var_B4
  loc_B9A8CB: PopAdLdVar
  loc_B9A8CC: FLdPr Me
  loc_B9A8CF: MemLdRfVar from_stack_1.htmFile
  loc_B9A8D2: LdPrVar
  loc_B9A8D4: LateMemCall
  loc_B9A8DA: FFree1Str var_108
  loc_B9A8DD: FFree1Var var_B4 = ""
  loc_B9A8E0: LitVarStr var_94, "      </tr>"
  loc_B9A8E5: PopAdLdVar
  loc_B9A8E6: FLdPr Me
  loc_B9A8E9: MemLdRfVar from_stack_1.htmFile
  loc_B9A8EC: LdPrVar
  loc_B9A8EE: LateMemCall
  loc_B9A8F4: FLdPr Me
  loc_B9A8F7: MemLdRfVar from_stack_1.global_98
  loc_B9A8FA: NextI2 var_18C, loc_B9A84E
  loc_B9A8FF: LitVarStr var_94, "          <tr>"
  loc_B9A904: PopAdLdVar
  loc_B9A905: FLdPr Me
  loc_B9A908: MemLdRfVar from_stack_1.htmFile
  loc_B9A90B: LdPrVar
  loc_B9A90D: LateMemCall
  loc_B9A913: LitVarStr var_94, "            <th colspan=""1"" align=""right"">Total</th>"
  loc_B9A918: PopAdLdVar
  loc_B9A919: FLdPr Me
  loc_B9A91C: MemLdRfVar from_stack_1.htmFile
  loc_B9A91F: LdPrVar
  loc_B9A921: LateMemCall
  loc_B9A927: LitStr "            <th align=""right"">"
  loc_B9A92A: FLdPr Me
  loc_B9A92D: MemLdI2 global_96
  loc_B9A930: CI4UI1
  loc_B9A931: FLdPr Me
  loc_B9A934: MemLdStr global_92
  loc_B9A937: Ary1LdPr
  loc_B9A938: MemLdStr global_60
  loc_B9A93B: ConcatStr
  loc_B9A93C: FStStrNoPop var_108
  loc_B9A93F: LitStr "</th>"
  loc_B9A942: ConcatStr
  loc_B9A943: CVarStr var_B4
  loc_B9A946: PopAdLdVar
  loc_B9A947: FLdPr Me
  loc_B9A94A: MemLdRfVar from_stack_1.htmFile
  loc_B9A94D: LdPrVar
  loc_B9A94F: LateMemCall
  loc_B9A955: FFree1Str var_108
  loc_B9A958: FFree1Var var_B4 = ""
  loc_B9A95B: LitVarStr var_94, "          </tr>"
  loc_B9A960: PopAdLdVar
  loc_B9A961: FLdPr Me
  loc_B9A964: MemLdRfVar from_stack_1.htmFile
  loc_B9A967: LdPrVar
  loc_B9A969: LateMemCall
  loc_B9A96F: LitVarStr var_94, "    </table></p>"
  loc_B9A974: PopAdLdVar
  loc_B9A975: FLdPr Me
  loc_B9A978: MemLdRfVar from_stack_1.htmFile
  loc_B9A97B: LdPrVar
  loc_B9A97D: LateMemCall
  loc_B9A983: Call Proc_221_23_A5F59C()
  loc_B9A988: FLdPr Me
  loc_B9A98B: MemLdI2 global_96
  loc_B9A98E: CI4UI1
  loc_B9A98F: FLdPr Me
  loc_B9A992: MemLdStr global_92
  loc_B9A995: Ary1LdPr
  loc_B9A996: MemLdI2 global_44
  loc_B9A999: BranchF loc_B9A9A1
  loc_B9A99C: Call Proc_221_24_A33274()
  loc_B9A9A1: LitVarStr var_94, "    <p>&nbsp;</p>"
  loc_B9A9A6: PopAdLdVar
  loc_B9A9A7: FLdPr Me
  loc_B9A9AA: MemLdRfVar from_stack_1.htmFile
  loc_B9A9AD: LdPrVar
  loc_B9A9AF: LateMemCall
  loc_B9A9B5: LitVarStr var_94, "    <table class=""Normal"" width=""35" & Chr(37) & """ border=""0"" align=""right"" valign=""baseline"" cellpadding=""0"" cellspacing=""0"">"
  loc_B9A9BA: PopAdLdVar
  loc_B9A9BB: FLdPr Me
  loc_B9A9BE: MemLdRfVar from_stack_1.htmFile
  loc_B9A9C1: LdPrVar
  loc_B9A9C3: LateMemCall
  loc_B9A9C9: LitVarStr var_94, "      <tr>"
  loc_B9A9CE: PopAdLdVar
  loc_B9A9CF: FLdPr Me
  loc_B9A9D2: MemLdRfVar from_stack_1.htmFile
  loc_B9A9D5: LdPrVar
  loc_B9A9D7: LateMemCall
  loc_B9A9DD: LitVarStr var_94, "        <td align=""center""><hr></td>"
  loc_B9A9E2: PopAdLdVar
  loc_B9A9E3: FLdPr Me
  loc_B9A9E6: MemLdRfVar from_stack_1.htmFile
  loc_B9A9E9: LdPrVar
  loc_B9A9EB: LateMemCall
  loc_B9A9F1: LitVarStr var_94, "      </tr>"
  loc_B9A9F6: PopAdLdVar
  loc_B9A9F7: FLdPr Me
  loc_B9A9FA: MemLdRfVar from_stack_1.htmFile
  loc_B9A9FD: LdPrVar
  loc_B9A9FF: LateMemCall
  loc_B9AA05: LitVarStr var_94, "      <tr>"
  loc_B9AA0A: PopAdLdVar
  loc_B9AA0B: FLdPr Me
  loc_B9AA0E: MemLdRfVar from_stack_1.htmFile
  loc_B9AA11: LdPrVar
  loc_B9AA13: LateMemCall
  loc_B9AA19: LitVarStr var_94, "        <td align=""center"">Firma&nbsp;del&nbsp;receptor</td>"
  loc_B9AA1E: PopAdLdVar
  loc_B9AA1F: FLdPr Me
  loc_B9AA22: MemLdRfVar from_stack_1.htmFile
  loc_B9AA25: LdPrVar
  loc_B9AA27: LateMemCall
  loc_B9AA2D: LitVarStr var_94, "      </tr>"
  loc_B9AA32: PopAdLdVar
  loc_B9AA33: FLdPr Me
  loc_B9AA36: MemLdRfVar from_stack_1.htmFile
  loc_B9AA39: LdPrVar
  loc_B9AA3B: LateMemCall
  loc_B9AA41: LitVarStr var_94, "      <tr>"
  loc_B9AA46: PopAdLdVar
  loc_B9AA47: FLdPr Me
  loc_B9AA4A: MemLdRfVar from_stack_1.htmFile
  loc_B9AA4D: LdPrVar
  loc_B9AA4F: LateMemCall
  loc_B9AA55: LitVarStr var_94, "        <td align=""center"">&nbsp;</td>"
  loc_B9AA5A: PopAdLdVar
  loc_B9AA5B: FLdPr Me
  loc_B9AA5E: MemLdRfVar from_stack_1.htmFile
  loc_B9AA61: LdPrVar
  loc_B9AA63: LateMemCall
  loc_B9AA69: LitVarStr var_94, "      </tr>"
  loc_B9AA6E: PopAdLdVar
  loc_B9AA6F: FLdPr Me
  loc_B9AA72: MemLdRfVar from_stack_1.htmFile
  loc_B9AA75: LdPrVar
  loc_B9AA77: LateMemCall
  loc_B9AA7D: LitVarStr var_94, "      <tr>"
  loc_B9AA82: PopAdLdVar
  loc_B9AA83: FLdPr Me
  loc_B9AA86: MemLdRfVar from_stack_1.htmFile
  loc_B9AA89: LdPrVar
  loc_B9AA8B: LateMemCall
  loc_B9AA91: LitVarStr var_94, "        <td align=""center""><hr></td>"
  loc_B9AA96: PopAdLdVar
  loc_B9AA97: FLdPr Me
  loc_B9AA9A: MemLdRfVar from_stack_1.htmFile
  loc_B9AA9D: LdPrVar
  loc_B9AA9F: LateMemCall
  loc_B9AAA5: LitVarStr var_94, "      </tr>"
  loc_B9AAAA: PopAdLdVar
  loc_B9AAAB: FLdPr Me
  loc_B9AAAE: MemLdRfVar from_stack_1.htmFile
  loc_B9AAB1: LdPrVar
  loc_B9AAB3: LateMemCall
  loc_B9AAB9: LitVarStr var_94, "      <tr>"
  loc_B9AABE: PopAdLdVar
  loc_B9AABF: FLdPr Me
  loc_B9AAC2: MemLdRfVar from_stack_1.htmFile
  loc_B9AAC5: LdPrVar
  loc_B9AAC7: LateMemCall
  loc_B9AACD: LitVarStr var_94, "        <td align=""center"">Aclaración</td>"
  loc_B9AAD2: PopAdLdVar
  loc_B9AAD3: FLdPr Me
  loc_B9AAD6: MemLdRfVar from_stack_1.htmFile
  loc_B9AAD9: LdPrVar
  loc_B9AADB: LateMemCall
  loc_B9AAE1: LitVarStr var_94, "      </tr>"
  loc_B9AAE6: PopAdLdVar
  loc_B9AAE7: FLdPr Me
  loc_B9AAEA: MemLdRfVar from_stack_1.htmFile
  loc_B9AAED: LdPrVar
  loc_B9AAEF: LateMemCall
  loc_B9AAF5: LitVarStr var_94, "      <tr>"
  loc_B9AAFA: PopAdLdVar
  loc_B9AAFB: FLdPr Me
  loc_B9AAFE: MemLdRfVar from_stack_1.htmFile
  loc_B9AB01: LdPrVar
  loc_B9AB03: LateMemCall
  loc_B9AB09: LitVarStr var_94, "        <td align=""center"">&nbsp;</td>"
  loc_B9AB0E: PopAdLdVar
  loc_B9AB0F: FLdPr Me
  loc_B9AB12: MemLdRfVar from_stack_1.htmFile
  loc_B9AB15: LdPrVar
  loc_B9AB17: LateMemCall
  loc_B9AB1D: LitVarStr var_94, "      </tr>"
  loc_B9AB22: PopAdLdVar
  loc_B9AB23: FLdPr Me
  loc_B9AB26: MemLdRfVar from_stack_1.htmFile
  loc_B9AB29: LdPrVar
  loc_B9AB2B: LateMemCall
  loc_B9AB31: LitVarStr var_94, "      <tr>"
  loc_B9AB36: PopAdLdVar
  loc_B9AB37: FLdPr Me
  loc_B9AB3A: MemLdRfVar from_stack_1.htmFile
  loc_B9AB3D: LdPrVar
  loc_B9AB3F: LateMemCall
  loc_B9AB45: LitVarStr var_94, "        <td align=""center""><hr></td>"
  loc_B9AB4A: PopAdLdVar
  loc_B9AB4B: FLdPr Me
  loc_B9AB4E: MemLdRfVar from_stack_1.htmFile
  loc_B9AB51: LdPrVar
  loc_B9AB53: LateMemCall
  loc_B9AB59: LitVarStr var_94, "      </tr>"
  loc_B9AB5E: PopAdLdVar
  loc_B9AB5F: FLdPr Me
  loc_B9AB62: MemLdRfVar from_stack_1.htmFile
  loc_B9AB65: LdPrVar
  loc_B9AB67: LateMemCall
  loc_B9AB6D: LitVarStr var_94, "      <tr>"
  loc_B9AB72: PopAdLdVar
  loc_B9AB73: FLdPr Me
  loc_B9AB76: MemLdRfVar from_stack_1.htmFile
  loc_B9AB79: LdPrVar
  loc_B9AB7B: LateMemCall
  loc_B9AB81: LitVarStr var_94, "        <td align=""center"">D.N.I.</td>"
  loc_B9AB86: PopAdLdVar
  loc_B9AB87: FLdPr Me
  loc_B9AB8A: MemLdRfVar from_stack_1.htmFile
  loc_B9AB8D: LdPrVar
  loc_B9AB8F: LateMemCall
  loc_B9AB95: LitVarStr var_94, "      </tr>"
  loc_B9AB9A: PopAdLdVar
  loc_B9AB9B: FLdPr Me
  loc_B9AB9E: MemLdRfVar from_stack_1.htmFile
  loc_B9ABA1: LdPrVar
  loc_B9ABA3: LateMemCall
  loc_B9ABA9: LitVarStr var_94, "    </table>"
  loc_B9ABAE: PopAdLdVar
  loc_B9ABAF: FLdPr Me
  loc_B9ABB2: MemLdRfVar from_stack_1.htmFile
  loc_B9ABB5: LdPrVar
  loc_B9ABB7: LateMemCall
  loc_B9ABBD: LitVarStr var_104, "    <p>Este pago lo realizó:<br>"
  loc_B9ABC2: LitI4 1
  loc_B9ABC7: FLdPr Me
  loc_B9ABCA: MemLdI2 global_96
  loc_B9ABCD: CI4UI1
  loc_B9ABCE: FLdPr Me
  loc_B9ABD1: MemLdStr global_92
  loc_B9ABD4: AryLock
  loc_B9ABD7: Ary1LdPr
  loc_B9ABD8: MemLdStr global_40
  loc_B9ABDB: AryLock
  loc_B9ABDE: Ary1LdPr
  loc_B9ABDF: MemLdRfVar from_stack_1.global_24
  loc_B9ABE2: CVarRef
  loc_B9ABE7: LitI4 1
  loc_B9ABEC: FLdPr Me
  loc_B9ABEF: MemLdI2 global_96
  loc_B9ABF2: CI4UI1
  loc_B9ABF3: FLdPr Me
  loc_B9ABF6: MemLdStr global_92
  loc_B9ABF9: AryLock
  loc_B9ABFC: Ary1LdPr
  loc_B9ABFD: MemLdStr global_40
  loc_B9AC00: AryLock
  loc_B9AC03: Ary1LdPr
  loc_B9AC04: MemLdRfVar from_stack_1.global_28
  loc_B9AC07: CVarRef
  loc_B9AC0C: LitI4 1
  loc_B9AC11: FLdPr Me
  loc_B9AC14: MemLdI2 global_96
  loc_B9AC17: CI4UI1
  loc_B9AC18: FLdPr Me
  loc_B9AC1B: MemLdStr global_92
  loc_B9AC1E: Ary1LdPr
  loc_B9AC1F: MemLdStr global_40
  loc_B9AC22: Ary1LdPr
  loc_B9AC23: MemLdStr global_28
  loc_B9AC26: LitStr vbNullString
  loc_B9AC29: NeStr
  loc_B9AC2B: CVarBoolI2 var_94
  loc_B9AC2F: FLdRfVar var_B4
  loc_B9AC32: ImpAdCallFPR4  = IIf(, , )
  loc_B9AC37: AryUnlock
  loc_B9AC3A: AryUnlock
  loc_B9AC3D: AryUnlock
  loc_B9AC40: AryUnlock
  loc_B9AC43: FLdRfVar var_B4
  loc_B9AC46: ConcatVar var_C4
  loc_B9AC4A: LitVarStr var_170, "</p>"
  loc_B9AC4F: ConcatVar var_D4
  loc_B9AC53: PopAdLdVar
  loc_B9AC54: FLdPr Me
  loc_B9AC57: MemLdRfVar from_stack_1.htmFile
  loc_B9AC5A: LdPrVar
  loc_B9AC5C: LateMemCall
  loc_B9AC62: FFreeVar var_94 = "": var_B4 = "": var_C4 = ""
  loc_B9AC6D: LitStr "    <p>FECHA DE PAGO: "
  loc_B9AC70: LitI4 1
  loc_B9AC75: FLdPr Me
  loc_B9AC78: MemLdI2 global_96
  loc_B9AC7B: CI4UI1
  loc_B9AC7C: FLdPr Me
  loc_B9AC7F: MemLdStr global_92
  loc_B9AC82: Ary1LdPr
  loc_B9AC83: MemLdStr global_40
  loc_B9AC86: Ary1LdPr
  loc_B9AC87: MemLdStr global_16
  loc_B9AC8A: ConcatStr
  loc_B9AC8B: FStStrNoPop var_108
  loc_B9AC8E: LitStr "</p></td>"
  loc_B9AC91: ConcatStr
  loc_B9AC92: CVarStr var_B4
  loc_B9AC95: PopAdLdVar
  loc_B9AC96: FLdPr Me
  loc_B9AC99: MemLdRfVar from_stack_1.htmFile
  loc_B9AC9C: LdPrVar
  loc_B9AC9E: LateMemCall
  loc_B9ACA4: FFree1Str var_108
  loc_B9ACA7: FFree1Var var_B4 = ""
  loc_B9ACAA: LitVarStr var_94, "  </tr>"
  loc_B9ACAF: PopAdLdVar
  loc_B9ACB0: FLdPr Me
  loc_B9ACB3: MemLdRfVar from_stack_1.htmFile
  loc_B9ACB6: LdPrVar
  loc_B9ACB8: LateMemCall
  loc_B9ACBE: LitVarStr var_94, "</table>"
  loc_B9ACC3: PopAdLdVar
  loc_B9ACC4: FLdPr Me
  loc_B9ACC7: MemLdRfVar from_stack_1.htmFile
  loc_B9ACCA: LdPrVar
  loc_B9ACCC: LateMemCall
  loc_B9ACD2: LitVarStr var_94, "    <p>&nbsp;</p>"
  loc_B9ACD7: PopAdLdVar
  loc_B9ACD8: FLdPr Me
  loc_B9ACDB: MemLdRfVar from_stack_1.htmFile
  loc_B9ACDE: LdPrVar
  loc_B9ACE0: LateMemCall
  loc_B9ACE6: ExitProcHresult
End Function

Private Function Proc_221_23_A5F59C() 'A5F59C
  'Data Table: 46C4D4
  loc_A5F288: LitVarStr var_94, "    <p>Y se entregan los siguientes valores:<br>"
  loc_A5F28D: PopAdLdVar
  loc_A5F28E: FLdPr Me
  loc_A5F291: MemLdRfVar from_stack_1.htmFile
  loc_A5F294: LdPrVar
  loc_A5F296: LateMemCall
  loc_A5F29C: LitVarStr var_94, "    <table class=""LineaDato"" border=""1"" cellspacing=""0"" cellpadding="
  loc_A5F2A1: LitI4 &H22
  loc_A5F2A6: FLdRfVar var_B4
  loc_A5F2A9: ImpAdCallFPR4  = Chr()
  loc_A5F2AE: FLdRfVar var_B4
  loc_A5F2B1: ConcatVar var_C4
  loc_A5F2B5: LitVarI2 var_A4, 3
  loc_A5F2BA: ConcatVar var_D4
  loc_A5F2BE: LitI4 &H22
  loc_A5F2C3: FLdRfVar var_E4
  loc_A5F2C6: ImpAdCallFPR4  = Chr()
  loc_A5F2CB: FLdRfVar var_E4
  loc_A5F2CE: ConcatVar var_F4
  loc_A5F2D2: LitVarStr var_104, ">"
  loc_A5F2D7: ConcatVar var_114
  loc_A5F2DB: PopAdLdVar
  loc_A5F2DC: FLdPr Me
  loc_A5F2DF: MemLdRfVar from_stack_1.htmFile
  loc_A5F2E2: LdPrVar
  loc_A5F2E4: LateMemCall
  loc_A5F2EA: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_E4 = "": var_F4 = ""
  loc_A5F2F9: LitVarStr var_94, "          <tr>"
  loc_A5F2FE: PopAdLdVar
  loc_A5F2FF: FLdPr Me
  loc_A5F302: MemLdRfVar from_stack_1.htmFile
  loc_A5F305: LdPrVar
  loc_A5F307: LateMemCall
  loc_A5F30D: LitVarStr var_94, "            <th>Forma Pago</th>"
  loc_A5F312: PopAdLdVar
  loc_A5F313: FLdPr Me
  loc_A5F316: MemLdRfVar from_stack_1.htmFile
  loc_A5F319: LdPrVar
  loc_A5F31B: LateMemCall
  loc_A5F321: LitVarStr var_94, "            <th>Número</th>"
  loc_A5F326: PopAdLdVar
  loc_A5F327: FLdPr Me
  loc_A5F32A: MemLdRfVar from_stack_1.htmFile
  loc_A5F32D: LdPrVar
  loc_A5F32F: LateMemCall
  loc_A5F335: LitVarStr var_94, "            <th>Banco</th>"
  loc_A5F33A: PopAdLdVar
  loc_A5F33B: FLdPr Me
  loc_A5F33E: MemLdRfVar from_stack_1.htmFile
  loc_A5F341: LdPrVar
  loc_A5F343: LateMemCall
  loc_A5F349: LitVarStr var_94, "            <th>A la orden de:</th>"
  loc_A5F34E: PopAdLdVar
  loc_A5F34F: FLdPr Me
  loc_A5F352: MemLdRfVar from_stack_1.htmFile
  loc_A5F355: LdPrVar
  loc_A5F357: LateMemCall
  loc_A5F35D: LitVarStr var_94, "            <th>Importe</th>"
  loc_A5F362: PopAdLdVar
  loc_A5F363: FLdPr Me
  loc_A5F366: MemLdRfVar from_stack_1.htmFile
  loc_A5F369: LdPrVar
  loc_A5F36B: LateMemCall
  loc_A5F371: LitVarStr var_94, "          </tr>"
  loc_A5F376: PopAdLdVar
  loc_A5F377: FLdPr Me
  loc_A5F37A: MemLdRfVar from_stack_1.htmFile
  loc_A5F37D: LdPrVar
  loc_A5F37F: LateMemCall
  loc_A5F385: LitI2_Byte 1
  loc_A5F387: FLdPr Me
  loc_A5F38A: MemLdRfVar from_stack_1.global_100
  loc_A5F38D: FLdPr Me
  loc_A5F390: MemLdI2 global_96
  loc_A5F393: CI4UI1
  loc_A5F394: FLdPr Me
  loc_A5F397: MemLdStr global_92
  loc_A5F39A: Ary1LdPr
  loc_A5F39B: MemLdStr global_40
  loc_A5F39E: LitI2_Byte 1
  loc_A5F3A0: FnUBound
  loc_A5F3A2: CI2I4
  loc_A5F3A3: ForI2 var_128
  loc_A5F3A9: LitVarStr var_94, "      <tr valign=""top"">"
  loc_A5F3AE: PopAdLdVar
  loc_A5F3AF: FLdPr Me
  loc_A5F3B2: MemLdRfVar from_stack_1.htmFile
  loc_A5F3B5: LdPrVar
  loc_A5F3B7: LateMemCall
  loc_A5F3BD: LitStr "        <td>"
  loc_A5F3C0: FLdPr Me
  loc_A5F3C3: MemLdI2 global_100
  loc_A5F3C6: CI4UI1
  loc_A5F3C7: FLdPr Me
  loc_A5F3CA: MemLdI2 global_96
  loc_A5F3CD: CI4UI1
  loc_A5F3CE: FLdPr Me
  loc_A5F3D1: MemLdStr global_92
  loc_A5F3D4: Ary1LdPr
  loc_A5F3D5: MemLdStr global_40
  loc_A5F3D8: Ary1LdPr
  loc_A5F3D9: MemLdStr global_0
  loc_A5F3DC: ConcatStr
  loc_A5F3DD: FStStrNoPop var_12C
  loc_A5F3E0: LitStr "</td>"
  loc_A5F3E3: ConcatStr
  loc_A5F3E4: CVarStr var_B4
  loc_A5F3E7: PopAdLdVar
  loc_A5F3E8: FLdPr Me
  loc_A5F3EB: MemLdRfVar from_stack_1.htmFile
  loc_A5F3EE: LdPrVar
  loc_A5F3F0: LateMemCall
  loc_A5F3F6: FFree1Str var_12C
  loc_A5F3F9: FFree1Var var_B4 = ""
  loc_A5F3FC: LitStr "        <td>"
  loc_A5F3FF: FLdPr Me
  loc_A5F402: MemLdI2 global_100
  loc_A5F405: CI4UI1
  loc_A5F406: FLdPr Me
  loc_A5F409: MemLdI2 global_96
  loc_A5F40C: CI4UI1
  loc_A5F40D: FLdPr Me
  loc_A5F410: MemLdStr global_92
  loc_A5F413: Ary1LdPr
  loc_A5F414: MemLdStr global_40
  loc_A5F417: Ary1LdPr
  loc_A5F418: MemLdStr global_4
  loc_A5F41B: ConcatStr
  loc_A5F41C: FStStrNoPop var_12C
  loc_A5F41F: LitStr "</td>"
  loc_A5F422: ConcatStr
  loc_A5F423: CVarStr var_B4
  loc_A5F426: PopAdLdVar
  loc_A5F427: FLdPr Me
  loc_A5F42A: MemLdRfVar from_stack_1.htmFile
  loc_A5F42D: LdPrVar
  loc_A5F42F: LateMemCall
  loc_A5F435: FFree1Str var_12C
  loc_A5F438: FFree1Var var_B4 = ""
  loc_A5F43B: LitStr "        <td>"
  loc_A5F43E: FLdPr Me
  loc_A5F441: MemLdI2 global_100
  loc_A5F444: CI4UI1
  loc_A5F445: FLdPr Me
  loc_A5F448: MemLdI2 global_96
  loc_A5F44B: CI4UI1
  loc_A5F44C: FLdPr Me
  loc_A5F44F: MemLdStr global_92
  loc_A5F452: Ary1LdPr
  loc_A5F453: MemLdStr global_40
  loc_A5F456: Ary1LdPr
  loc_A5F457: MemLdStr global_8
  loc_A5F45A: ConcatStr
  loc_A5F45B: FStStrNoPop var_12C
  loc_A5F45E: LitStr "</td>"
  loc_A5F461: ConcatStr
  loc_A5F462: CVarStr var_B4
  loc_A5F465: PopAdLdVar
  loc_A5F466: FLdPr Me
  loc_A5F469: MemLdRfVar from_stack_1.htmFile
  loc_A5F46C: LdPrVar
  loc_A5F46E: LateMemCall
  loc_A5F474: FFree1Str var_12C
  loc_A5F477: FFree1Var var_B4 = ""
  loc_A5F47A: LitStr "        <td>"
  loc_A5F47D: FLdPr Me
  loc_A5F480: MemLdI2 global_100
  loc_A5F483: CI4UI1
  loc_A5F484: FLdPr Me
  loc_A5F487: MemLdI2 global_96
  loc_A5F48A: CI4UI1
  loc_A5F48B: FLdPr Me
  loc_A5F48E: MemLdStr global_92
  loc_A5F491: Ary1LdPr
  loc_A5F492: MemLdStr global_40
  loc_A5F495: Ary1LdPr
  loc_A5F496: MemLdStr global_20
  loc_A5F499: ConcatStr
  loc_A5F49A: FStStrNoPop var_12C
  loc_A5F49D: LitStr "</td>"
  loc_A5F4A0: ConcatStr
  loc_A5F4A1: CVarStr var_B4
  loc_A5F4A4: PopAdLdVar
  loc_A5F4A5: FLdPr Me
  loc_A5F4A8: MemLdRfVar from_stack_1.htmFile
  loc_A5F4AB: LdPrVar
  loc_A5F4AD: LateMemCall
  loc_A5F4B3: FFree1Str var_12C
  loc_A5F4B6: FFree1Var var_B4 = ""
  loc_A5F4B9: LitStr "        <td align=""right"">"
  loc_A5F4BC: FLdPr Me
  loc_A5F4BF: MemLdI2 global_100
  loc_A5F4C2: CI4UI1
  loc_A5F4C3: FLdPr Me
  loc_A5F4C6: MemLdI2 global_96
  loc_A5F4C9: CI4UI1
  loc_A5F4CA: FLdPr Me
  loc_A5F4CD: MemLdStr global_92
  loc_A5F4D0: Ary1LdPr
  loc_A5F4D1: MemLdStr global_40
  loc_A5F4D4: Ary1LdPr
  loc_A5F4D5: MemLdStr global_12
  loc_A5F4D8: ConcatStr
  loc_A5F4D9: FStStrNoPop var_12C
  loc_A5F4DC: LitStr "</td>"
  loc_A5F4DF: ConcatStr
  loc_A5F4E0: CVarStr var_B4
  loc_A5F4E3: PopAdLdVar
  loc_A5F4E4: FLdPr Me
  loc_A5F4E7: MemLdRfVar from_stack_1.htmFile
  loc_A5F4EA: LdPrVar
  loc_A5F4EC: LateMemCall
  loc_A5F4F2: FFree1Str var_12C
  loc_A5F4F5: FFree1Var var_B4 = ""
  loc_A5F4F8: LitVarStr var_94, "      </tr>"
  loc_A5F4FD: PopAdLdVar
  loc_A5F4FE: FLdPr Me
  loc_A5F501: MemLdRfVar from_stack_1.htmFile
  loc_A5F504: LdPrVar
  loc_A5F506: LateMemCall
  loc_A5F50C: FLdPr Me
  loc_A5F50F: MemLdRfVar from_stack_1.global_100
  loc_A5F512: NextI2 var_128, loc_A5F3A9
  loc_A5F517: LitVarStr var_94, "      <tr>"
  loc_A5F51C: PopAdLdVar
  loc_A5F51D: FLdPr Me
  loc_A5F520: MemLdRfVar from_stack_1.htmFile
  loc_A5F523: LdPrVar
  loc_A5F525: LateMemCall
  loc_A5F52B: LitVarStr var_94, "        <th align=""right"" colspan=""4"">Total</td>"
  loc_A5F530: PopAdLdVar
  loc_A5F531: FLdPr Me
  loc_A5F534: MemLdRfVar from_stack_1.htmFile
  loc_A5F537: LdPrVar
  loc_A5F539: LateMemCall
  loc_A5F53F: LitStr "        <th align=""right"">"
  loc_A5F542: FLdPr Me
  loc_A5F545: MemLdI2 global_96
  loc_A5F548: CI4UI1
  loc_A5F549: FLdPr Me
  loc_A5F54C: MemLdStr global_92
  loc_A5F54F: Ary1LdPr
  loc_A5F550: MemLdStr global_64
  loc_A5F553: ConcatStr
  loc_A5F554: FStStrNoPop var_12C
  loc_A5F557: LitStr "</td>"
  loc_A5F55A: ConcatStr
  loc_A5F55B: CVarStr var_B4
  loc_A5F55E: PopAdLdVar
  loc_A5F55F: FLdPr Me
  loc_A5F562: MemLdRfVar from_stack_1.htmFile
  loc_A5F565: LdPrVar
  loc_A5F567: LateMemCall
  loc_A5F56D: FFree1Str var_12C
  loc_A5F570: FFree1Var var_B4 = ""
  loc_A5F573: LitVarStr var_94, "      </tr>"
  loc_A5F578: PopAdLdVar
  loc_A5F579: FLdPr Me
  loc_A5F57C: MemLdRfVar from_stack_1.htmFile
  loc_A5F57F: LdPrVar
  loc_A5F581: LateMemCall
  loc_A5F587: LitVarStr var_94, "    </table></p>"
  loc_A5F58C: PopAdLdVar
  loc_A5F58D: FLdPr Me
  loc_A5F590: MemLdRfVar from_stack_1.htmFile
  loc_A5F593: LdPrVar
  loc_A5F595: LateMemCall
  loc_A5F59B: ExitProcHresult
End Function

Private Function Proc_221_24_A33274() 'A33274
  'Data Table: 46C4D4
  loc_A33074: LitVarStr var_94, "    <p>Efectuando las siguientes retenciones:<br>"
  loc_A33079: PopAdLdVar
  loc_A3307A: FLdPr Me
  loc_A3307D: MemLdRfVar from_stack_1.htmFile
  loc_A33080: LdPrVar
  loc_A33082: LateMemCall
  loc_A33088: LitVarStr var_94, "    <table class=""LineaDato"" border=""1"" cellspacing=""0"" cellpadding="
  loc_A3308D: LitI4 &H22
  loc_A33092: FLdRfVar var_B4
  loc_A33095: ImpAdCallFPR4  = Chr()
  loc_A3309A: FLdRfVar var_B4
  loc_A3309D: ConcatVar var_C4
  loc_A330A1: LitVarI2 var_A4, 3
  loc_A330A6: ConcatVar var_D4
  loc_A330AA: LitI4 &H22
  loc_A330AF: FLdRfVar var_E4
  loc_A330B2: ImpAdCallFPR4  = Chr()
  loc_A330B7: FLdRfVar var_E4
  loc_A330BA: ConcatVar var_F4
  loc_A330BE: LitVarStr var_104, ">"
  loc_A330C3: ConcatVar var_114
  loc_A330C7: PopAdLdVar
  loc_A330C8: FLdPr Me
  loc_A330CB: MemLdRfVar from_stack_1.htmFile
  loc_A330CE: LdPrVar
  loc_A330D0: LateMemCall
  loc_A330D6: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_E4 = "": var_F4 = ""
  loc_A330E5: LitVarStr var_94, "          <tr>"
  loc_A330EA: PopAdLdVar
  loc_A330EB: FLdPr Me
  loc_A330EE: MemLdRfVar from_stack_1.htmFile
  loc_A330F1: LdPrVar
  loc_A330F3: LateMemCall
  loc_A330F9: LitVarStr var_94, "            <th>Detalle</th>"
  loc_A330FE: PopAdLdVar
  loc_A330FF: FLdPr Me
  loc_A33102: MemLdRfVar from_stack_1.htmFile
  loc_A33105: LdPrVar
  loc_A33107: LateMemCall
  loc_A3310D: LitVarStr var_94, "            <th>Certificado</th>"
  loc_A33112: PopAdLdVar
  loc_A33113: FLdPr Me
  loc_A33116: MemLdRfVar from_stack_1.htmFile
  loc_A33119: LdPrVar
  loc_A3311B: LateMemCall
  loc_A33121: LitVarStr var_94, "            <th>Importe</th>"
  loc_A33126: PopAdLdVar
  loc_A33127: FLdPr Me
  loc_A3312A: MemLdRfVar from_stack_1.htmFile
  loc_A3312D: LdPrVar
  loc_A3312F: LateMemCall
  loc_A33135: LitVarStr var_94, "          </tr>"
  loc_A3313A: PopAdLdVar
  loc_A3313B: FLdPr Me
  loc_A3313E: MemLdRfVar from_stack_1.htmFile
  loc_A33141: LdPrVar
  loc_A33143: LateMemCall
  loc_A33149: LitI2_Byte 1
  loc_A3314B: FLdPr Me
  loc_A3314E: MemLdRfVar from_stack_1.global_102
  loc_A33151: FLdPr Me
  loc_A33154: MemLdI2 global_96
  loc_A33157: CI4UI1
  loc_A33158: FLdPr Me
  loc_A3315B: MemLdStr global_92
  loc_A3315E: Ary1LdPr
  loc_A3315F: MemLdStr global_48
  loc_A33162: LitI2_Byte 1
  loc_A33164: FnUBound
  loc_A33166: CI2I4
  loc_A33167: ForI2 var_128
  loc_A3316D: LitVarStr var_94, "      <tr>"
  loc_A33172: PopAdLdVar
  loc_A33173: FLdPr Me
  loc_A33176: MemLdRfVar from_stack_1.htmFile
  loc_A33179: LdPrVar
  loc_A3317B: LateMemCall
  loc_A33181: LitStr "        <td>"
  loc_A33184: FLdPr Me
  loc_A33187: MemLdI2 global_102
  loc_A3318A: CI4UI1
  loc_A3318B: FLdPr Me
  loc_A3318E: MemLdI2 global_96
  loc_A33191: CI4UI1
  loc_A33192: FLdPr Me
  loc_A33195: MemLdStr global_92
  loc_A33198: Ary1LdPr
  loc_A33199: MemLdStr global_48
  loc_A3319C: Ary1LdPr
  loc_A3319D: MemLdStr global_0
  loc_A331A0: ConcatStr
  loc_A331A1: FStStrNoPop var_12C
  loc_A331A4: LitStr "</td>"
  loc_A331A7: ConcatStr
  loc_A331A8: CVarStr var_B4
  loc_A331AB: PopAdLdVar
  loc_A331AC: FLdPr Me
  loc_A331AF: MemLdRfVar from_stack_1.htmFile
  loc_A331B2: LdPrVar
  loc_A331B4: LateMemCall
  loc_A331BA: FFree1Str var_12C
  loc_A331BD: FFree1Var var_B4 = ""
  loc_A331C0: LitStr "        <td align=""right"">"
  loc_A331C3: FLdPr Me
  loc_A331C6: MemLdI2 global_102
  loc_A331C9: CI4UI1
  loc_A331CA: FLdPr Me
  loc_A331CD: MemLdI2 global_96
  loc_A331D0: CI4UI1
  loc_A331D1: FLdPr Me
  loc_A331D4: MemLdStr global_92
  loc_A331D7: Ary1LdPr
  loc_A331D8: MemLdStr global_48
  loc_A331DB: Ary1LdPr
  loc_A331DC: MemLdStr global_8
  loc_A331DF: ConcatStr
  loc_A331E0: FStStrNoPop var_12C
  loc_A331E3: LitStr "</td>"
  loc_A331E6: ConcatStr
  loc_A331E7: CVarStr var_B4
  loc_A331EA: PopAdLdVar
  loc_A331EB: FLdPr Me
  loc_A331EE: MemLdRfVar from_stack_1.htmFile
  loc_A331F1: LdPrVar
  loc_A331F3: LateMemCall
  loc_A331F9: FFree1Str var_12C
  loc_A331FC: FFree1Var var_B4 = ""
  loc_A331FF: LitStr "        <td align=""right"">"
  loc_A33202: FLdPr Me
  loc_A33205: MemLdI2 global_102
  loc_A33208: CI4UI1
  loc_A33209: FLdPr Me
  loc_A3320C: MemLdI2 global_96
  loc_A3320F: CI4UI1
  loc_A33210: FLdPr Me
  loc_A33213: MemLdStr global_92
  loc_A33216: Ary1LdPr
  loc_A33217: MemLdStr global_48
  loc_A3321A: Ary1LdPr
  loc_A3321B: MemLdStr global_4
  loc_A3321E: ConcatStr
  loc_A3321F: FStStrNoPop var_12C
  loc_A33222: LitStr "</td>"
  loc_A33225: ConcatStr
  loc_A33226: CVarStr var_B4
  loc_A33229: PopAdLdVar
  loc_A3322A: FLdPr Me
  loc_A3322D: MemLdRfVar from_stack_1.htmFile
  loc_A33230: LdPrVar
  loc_A33232: LateMemCall
  loc_A33238: FFree1Str var_12C
  loc_A3323B: FFree1Var var_B4 = ""
  loc_A3323E: LitVarStr var_94, "        </tr>"
  loc_A33243: PopAdLdVar
  loc_A33244: FLdPr Me
  loc_A33247: MemLdRfVar from_stack_1.htmFile
  loc_A3324A: LdPrVar
  loc_A3324C: LateMemCall
  loc_A33252: FLdPr Me
  loc_A33255: MemLdRfVar from_stack_1.global_102
  loc_A33258: NextI2 var_128, loc_A3316D
  loc_A3325D: LitVarStr var_94, "    </table></p>"
  loc_A33262: PopAdLdVar
  loc_A33263: FLdPr Me
  loc_A33266: MemLdRfVar from_stack_1.htmFile
  loc_A33269: LdPrVar
  loc_A3326B: LateMemCall
  loc_A33271: ExitProcHresult
  loc_A33272: FStStrNoPop arg_5CF4
End Function

Private Function Proc_221_25_9827E0() '9827E0
  'Data Table: 46C4D4
  loc_9827A0: LitVarStr var_94, "</table>"
  loc_9827A5: PopAdLdVar
  loc_9827A6: FLdPr Me
  loc_9827A9: MemLdRfVar from_stack_1.htmFile
  loc_9827AC: LdPrVar
  loc_9827AE: LateMemCall
  loc_9827B4: LitVarStr var_94, "</body>"
  loc_9827B9: PopAdLdVar
  loc_9827BA: FLdPr Me
  loc_9827BD: MemLdRfVar from_stack_1.htmFile
  loc_9827C0: LdPrVar
  loc_9827C2: LateMemCall
  loc_9827C8: LitVarStr var_94, "</html>"
  loc_9827CD: PopAdLdVar
  loc_9827CE: FLdPr Me
  loc_9827D1: MemLdRfVar from_stack_1.htmFile
  loc_9827D4: LdPrVar
  loc_9827D6: LateMemCall
  loc_9827DC: ExitProcHresult
  loc_9827DF: FnLBound
End Function
