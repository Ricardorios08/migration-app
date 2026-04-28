VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConsultadeDatosFijos
  Caption = "Consulta de Datos Fijos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConsultadeDatosFijos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9276
  ClientHeight = 2760
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1200
    Width = 4095
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
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
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1200
    Width = 1815
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
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
    Top = 2508
    Width = 9276
    Height = 252
    TabIndex = 13
    OleObjectBlob = "rptConsultadeDatosFijos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7680
    Top = 1560
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptConsultadeDatosFijos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConsultadeDatosFijos.frx":0B9C
    Left = 8400
    Top = 600
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9015
    Height = 1215
    TabIndex = 0
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 960
      Top = 480
      Width = 2295
      Height = 420
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
      CausesValidation = 0   'False
    End
    Begin VB.TextBox NumeCtaTxt
      ForeColor = &HFF0000&
      Left = 4320
      Top = 480
      Width = 2175
      Height = 345
      TabIndex = 4
      MaxLength = 11
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7080
      Top = 360
      Width = 1695
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
    Begin VB.Label Label5
      Caption = "Oficina:"
      Left = 120
      Top = 480
      Width = 795
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
    Begin VB.Label Label3
      Caption = "Cuenta:"
      Left = 3360
      Top = 480
      Width = 840
      Height = 300
      TabIndex = 3
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7800
    Top = 1800
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptConsultadeDatosFijos.frx":0C00
  End
End

Attribute VB_Name = "rptConsultadeDatosFijos"

Public bGenerado As Boolean

Private Type UDT_1_00562428
  bStruc(44) As Byte ' String fields: 11
End Type

Private Type UDT_2_00560540
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_3_00562BC4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_4_00562BF4
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_5_00562C48
  bStruc(312) As Byte ' String fields: 78
End Type

Private Type UDT_6_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_7_00562DC4
  bStruc(40) As Byte ' String fields: 10
End Type

Private Type UDT_8_00560654
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_9_00562DF8
  bStruc(4) As Byte ' String fields: 1
End Type


Private Sub cmdPdf_Click() '9DF6FC
  'Data Table: 4B5FC4
  loc_9DF6E0: LitI2_Byte 0
  loc_9DF6E2: PopTmpLdAd2 var_8A
  loc_9DF6E5: ILdRf Me
  loc_9DF6E8: CastAd
  loc_9DF6EB: FStAdFunc var_88
  loc_9DF6EE: FLdRfVar var_88
  loc_9DF6F1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DF6F6: FFree1Ad var_88
  loc_9DF6F9: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A09760
  'Data Table: 4B5FC4
  loc_A09728: LitI2_Byte 0
  loc_A0972A: FLdPr Me
  loc_A0972D: MemStI2 bGenerado
  loc_A09730: LitI2_Byte 0
  loc_A09732: ILdRf Me
  loc_A09735: CastAd
  loc_A09738: FStAdFunc var_88
  loc_A0973B: FLdRfVar var_88
  loc_A0973E: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A09743: FFree1Ad var_88
  loc_A09746: Call HabilitarCriterio()
  loc_A0974B: ILdRf Me
  loc_A0974E: CastAd
  loc_A09751: FStAdFunc var_88
  loc_A09754: FLdRfVar var_88
  loc_A09757: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A0975C: FFree1Ad var_88
  loc_A0975F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CDBB0
  'Data Table: 4B5FC4
  loc_9CDB98: ILdRf Me
  loc_9CDB9B: CastAd
  loc_9CDB9E: FStAdFunc var_88
  loc_9CDBA1: FLdRfVar var_88
  loc_9CDBA4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CDBA9: FFree1Ad var_88
  loc_9CDBAC: ExitProcHresult
  loc_9CDBAD: FStStrCopy var_94
End Sub

Private Sub Form_Load() 'AC5DE8
  'Data Table: 4B5FC4
  loc_AC5CE0: ILdRf Me
  loc_AC5CE3: CastAd
  loc_AC5CE6: FStAdFunc var_88
  loc_AC5CE9: FLdRfVar var_88
  loc_AC5CEC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_AC5CF1: FFree1Ad var_88
  loc_AC5CF4: FLdRfVar var_8C
  loc_AC5CF7: NewIfNullAd
  loc_AC5CFA: FStAd var_90 
  loc_AC5CFE: LitStr "SELECT CodiOfic, DetaOfic FROM oficina WHERE CodiOfic IN(1,2,3,4,6) ORDER BY CodiOfic"
  loc_AC5D01: FLdPr var_90
  loc_AC5D04: Call clsoficina.RedefineRS(from_stack_1v)
  loc_AC5D09: FLdPr var_90
  loc_AC5D0C: Call clsoficina.MoveFirst()
  loc_AC5D11: FLdPr Me
  loc_AC5D14: VCallAd Control_ID_OficinaCbo
  loc_AC5D17: FStAdFunc var_88
  loc_AC5D1A: FLdPr var_88
  loc_AC5D1D: Me.Clear
  loc_AC5D22: FFree1Ad var_88
  loc_AC5D25: FLdRfVar var_92
  loc_AC5D28: FLdPr var_90
  loc_AC5D2B: from_stack_1 = clsoficina.EOF
  loc_AC5D30: FLdI2 var_92
  loc_AC5D33: NotI4
  loc_AC5D34: BranchF loc_AC5DAE
  loc_AC5D37: LitVar_Missing var_A8
  loc_AC5D3A: PopAdLdVar
  loc_AC5D3B: FLdRfVar var_98
  loc_AC5D3E: FLdPr var_90
  loc_AC5D41: from_stack_1 = clsoficina.DetaOfic
  loc_AC5D46: ILdRf var_98
  loc_AC5D49: FLdPr Me
  loc_AC5D4C: VCallAd Control_ID_OficinaCbo
  loc_AC5D4F: FStAdFunc var_88
  loc_AC5D52: FLdPr var_88
  loc_AC5D55: Me.AddItem from_stack_1, from_stack_2
  loc_AC5D5A: FFree1Str var_98
  loc_AC5D5D: FFree1Ad var_88
  loc_AC5D60: FLdRfVar var_92
  loc_AC5D63: FLdPr var_90
  loc_AC5D66: from_stack_1 = clsoficina.CodiOfic
  loc_AC5D6B: FLdI2 var_92
  loc_AC5D6E: CI4UI1
  loc_AC5D6F: FLdRfVar var_AA
  loc_AC5D72: FLdPr Me
  loc_AC5D75: VCallAd Control_ID_OficinaCbo
  loc_AC5D78: FStAdFunc var_88
  loc_AC5D7B: FLdPr var_88
  loc_AC5D7E:  = Me.NewIndex
  loc_AC5D83: FLdI2 var_AA
  loc_AC5D86: FLdPr Me
  loc_AC5D89: VCallAd Control_ID_OficinaCbo
  loc_AC5D8C: FStAdFunc var_B0
  loc_AC5D8F: FLdPr var_B0
  loc_AC5D92: Me.ItemData = from_stack_1
  loc_AC5D97: FFreeAd var_88 = ""
  loc_AC5D9E: LitI2_Byte 1
  loc_AC5DA0: PopTmpLdAd2 var_92
  loc_AC5DA3: FLdPr var_90
  loc_AC5DA6: Call clsoficina.Move(from_stack_1v)
  loc_AC5DAB: Branch loc_AC5D25
  loc_AC5DAE: LitNothing
  loc_AC5DB0: FStAd var_90 
  loc_AC5DB4: LitI2_Byte 0
  loc_AC5DB6: FLdPr Me
  loc_AC5DB9: VCallAd Control_ID_OficinaCbo
  loc_AC5DBC: FStAdFunc var_88
  loc_AC5DBF: FLdPr var_88
  loc_AC5DC2: Me.ListIndex = from_stack_1
  loc_AC5DC7: FFree1Ad var_88
  loc_AC5DCA: LitStr "0"
  loc_AC5DCD: FLdPr Me
  loc_AC5DD0: VCallAd Control_ID_NumeCtaTxt
  loc_AC5DD3: FStAdFunc var_88
  loc_AC5DD6: FLdPr var_88
  loc_AC5DD9: Me.Text = from_stack_1
  loc_AC5DDE: FFree1Ad var_88
  loc_AC5DE1: Call cmdNueva_Click()
  loc_AC5DE6: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CDC94
  'Data Table: 4B5FC4
  loc_9CDC7C: FLdPr Me
  loc_9CDC7F: VCallAd Control_ID_wbbReporte
  loc_9CDC82: FStAdFunc var_88
  loc_9CDC85: FLdRfVar var_88
  loc_9CDC88: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CDC8D: FFree1Ad var_88
  loc_9CDC90: ExitProcHresult
  loc_9CDC91: DOC
End Sub

Private Sub cmdPredeterminada_Click() '9C92A8
  'Data Table: 4B5FC4
  loc_9C9290: LitI2_Byte 0
  loc_9C9292: ILdRf Me
  loc_9C9295: CastAd
  loc_9C9298: FStAdFunc var_88
  loc_9C929B: FLdRfVar var_88
  loc_9C929E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C92A3: FFree1Ad var_88
  loc_9C92A6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1E7C0
  'Data Table: 4B5FC4
  loc_A1E788: FLdPr Me
  loc_A1E78B: VCallAd Control_ID_statusBar
  loc_A1E78E: FStAdFunc var_88
  loc_A1E791: FLdPr var_88
  loc_A1E794: LateIdLdVar var_98 DispID_1 0
  loc_A1E79B: CStrVarTmp
  loc_A1E79C: CVarStr var_A8
  loc_A1E79F: PopAdLdVar
  loc_A1E7A0: FLdPr Me
  loc_A1E7A3: VCallAd Control_ID_statusBar
  loc_A1E7A6: FStAdFunc var_BC
  loc_A1E7A9: FLdPr var_BC
  loc_A1E7AC: LateIdSt
  loc_A1E7B1: FFreeAd var_88 = ""
  loc_A1E7B8: FFreeVar var_98 = ""
  loc_A1E7BF: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A01D98
  'Data Table: 4B5FC4
  loc_A01D68: LitVarStr var_94, "Cerrando..."
  loc_A01D6D: PopAdLdVar
  loc_A01D6E: FLdPr Me
  loc_A01D71: VCallAd Control_ID_statusBar
  loc_A01D74: FStAdFunc var_A8
  loc_A01D77: FLdPr var_A8
  loc_A01D7A: LateIdSt
  loc_A01D7F: FFree1Ad var_A8
  loc_A01D82: ILdRf Me
  loc_A01D85: FStAdNoPop
  loc_A01D89: ImpAdLdRf MemVar_D9C5D8
  loc_A01D8C: NewIfNullPr Global
  loc_A01D8F: Global.Unload from_stack_1
  loc_A01D94: FFree1Ad var_A8
  loc_A01D97: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() '9BE040
  'Data Table: 4B5FC4
  loc_9BE02C: FLdPr Me
  loc_9BE02F: VCallAd Control_ID_NumeCtaTxt
  loc_9BE032: CVarAd
  loc_9BE036: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE03B: FFree1Var var_94 = ""
  loc_9BE03E: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'ACD114
  'Data Table: 4B5FC4
  loc_ACD000: ILdI2 KeyAscii
  loc_ACD003: CI4UI1
  loc_ACD004: LitI4 &H20
  loc_ACD009: EqI4
  loc_ACD00A: BranchF loc_ACD111
  loc_ACD00D: LitI2_Byte 0
  loc_ACD00F: IStI2 KeyAscii
  loc_ACD012: FLdRfVar var_94
  loc_ACD015: FLdRfVar var_8A
  loc_ACD018: FLdPr Me
  loc_ACD01B: VCallAd Control_ID_OficinaCbo
  loc_ACD01E: FStAdFunc var_88
  loc_ACD021: FLdPr var_88
  loc_ACD024:  = Me.ListIndex
  loc_ACD029: FLdI2 var_8A
  loc_ACD02C: FLdPr Me
  loc_ACD02F: VCallAd Control_ID_OficinaCbo
  loc_ACD032: FStAdFunc var_90
  loc_ACD035: FLdPr var_90
  loc_ACD038:  = Me.ItemData
  loc_ACD03D: ILdRf var_94
  loc_ACD040: CUI1I4
  loc_ACD042: ImpAdStUI1 MemVar_D93038
  loc_ACD046: FFreeAd var_88 = ""
  loc_ACD04D: ImpAdLdRf MemVar_D94034
  loc_ACD050: NewIfNullAd
  loc_ACD053: FStAd var_98 
  loc_ACD057: LitVar_Missing var_B8
  loc_ACD05A: PopAdLdVar
  loc_ACD05B: LitVarI4
  loc_ACD063: PopAdLdVar
  loc_ACD064: FLdPr var_98
  loc_ACD067: Me.Show from_stack_1, from_stack_2
  loc_ACD06C: FLdRfVar var_94
  loc_ACD06F: FLdRfVar var_88
  loc_ACD072: FLdPr var_98
  loc_ACD075: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_ACD07A: FLdPr var_88
  loc_ACD07D: from_stack_1 = clsbase.RecordCount
  loc_ACD082: ILdRf var_94
  loc_ACD085: LitI4 0
  loc_ACD08A: GtI4
  loc_ACD08B: FFree1Ad var_88
  loc_ACD08E: BranchF loc_ACD0F9
  loc_ACD091: FLdRfVar var_D0
  loc_ACD094: FLdRfVar var_C0
  loc_ACD097: LitVarStr var_A8, "CuenCtct"
  loc_ACD09C: PopAdLdVar
  loc_ACD09D: FLdRfVar var_BC
  loc_ACD0A0: FLdRfVar var_90
  loc_ACD0A3: FLdRfVar var_88
  loc_ACD0A6: FLdPr var_98
  loc_ACD0A9: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_ACD0AE: FLdPr var_88
  loc_ACD0B1: from_stack_1v = clsbase.RsFrmGet()
  loc_ACD0B6: FLdPr var_90
  loc_ACD0B9:  = Me.Fields
  loc_ACD0BE: FLdPr var_BC
  loc_ACD0C1: from_stack_2 = Me.Item(from_stack_1)
  loc_ACD0C6: FLdPr var_C0
  loc_ACD0C9:  = Me.Value
  loc_ACD0CE: FLdRfVar var_D0
  loc_ACD0D1: CStrVarTmp
  loc_ACD0D2: FStStrNoPop var_D4
  loc_ACD0D5: FLdPr Me
  loc_ACD0D8: VCallAd Control_ID_NumeCtaTxt
  loc_ACD0DB: FStAdFunc var_D8
  loc_ACD0DE: FLdPr var_D8
  loc_ACD0E1: Me.Text = from_stack_1
  loc_ACD0E6: FFree1Str var_D4
  loc_ACD0E9: FFreeAd var_88 = "": var_90 = "": var_BC = "": var_C0 = ""
  loc_ACD0F6: FFree1Var var_D0 = ""
  loc_ACD0F9: LitNothing
  loc_ACD0FB: FStAd var_98 
  loc_ACD0FF: FLdPr Me
  loc_ACD102: VCallAd Control_ID_NumeCtaTxt
  loc_ACD105: CVarAd
  loc_ACD109: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACD10E: FFree1Var var_D0 = ""
  loc_ACD111: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'A62944
  'Data Table: 4B5FC4
  loc_A628E4: FLdRfVar var_8C
  loc_A628E7: FLdPr Me
  loc_A628EA: VCallAd Control_ID_NumeCtaTxt
  loc_A628ED: FStAdFunc var_88
  loc_A628F0: FLdPr var_88
  loc_A628F3:  = Me.Text
  loc_A628F8: LitI2_Byte 0
  loc_A628FA: LitI2_Byte 0
  loc_A628FC: ILdRf var_8C
  loc_A628FF: LitStr "Cuenta"
  loc_A62902: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A62907: FStStrNoPop var_90
  loc_A6290A: FLdPr Me
  loc_A6290D: MemStStrCopy
  loc_A62911: FFreeStr var_8C = ""
  loc_A62918: FFree1Ad var_88
  loc_A6291B: FLdPr Me
  loc_A6291E: VCallAd Control_ID_NumeCtaTxt
  loc_A62921: FStAdFuncNoPop
  loc_A62924: CastAd
  loc_A62927: FStAdFunc var_94
  loc_A6292A: FLdRfVar var_94
  loc_A6292D: FLdPr Me
  loc_A62930: MemLdStr global_128
  loc_A62933: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A62938: IStI2 Cancel
  loc_A6293B: FFreeAd var_88 = ""
  loc_A62942: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4B7044
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4B7053
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A43BB0
  'Data Table: 4B5FC4
  loc_A43B6C: LitI4 0
  loc_A43B71: LitI4 1
  loc_A43B76: FLdRfVar var_88
  loc_A43B79: Redim
  loc_A43B83: FLdPr Me
  loc_A43B86: VCallAd Control_ID_OficinaCbo
  loc_A43B89: CVarAd
  loc_A43B8D: ParmAry1St
  loc_A43B93: FLdPr Me
  loc_A43B96: VCallAd Control_ID_NumeCtaTxt
  loc_A43B99: CVarAd
  loc_A43B9D: ParmAry1St
  loc_A43BA3: FLdRfVar var_88
  loc_A43BA6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A43BAB: FLdRfVar var_88
  loc_A43BAE: Erase
  loc_A43BAF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'D21BB0
  'Data Table: 4B5FC4
  loc_D1DFFC: FLdPr Me
  loc_D1DFFF: MemLdI2 bGenerado
  loc_D1E002: BranchF loc_D1E006
  loc_D1E005: ExitProcHresult
  loc_D1E006: LitVarStr var_A4, "Generando reporte..."
  loc_D1E00B: PopAdLdVar
  loc_D1E00C: FLdPr Me
  loc_D1E00F: VCallAd Control_ID_statusBar
  loc_D1E012: FStAdFunc var_B8
  loc_D1E015: FLdPr var_B8
  loc_D1E018: LateIdSt
  loc_D1E01D: FFree1Ad var_B8
  loc_D1E020: LitI4 &HB
  loc_D1E025: CI2I4
  loc_D1E026: FLdPr Me
  loc_D1E029: Me.MousePointer = from_stack_1
  loc_D1E02E: FLdPr Me
  loc_D1E031: MemLdRfVar from_stack_1.global_76
  loc_D1E034: NewIfNullAd
  loc_D1E037: FStAd var_BC 
  loc_D1E03B: FLdRfVar var_C8
  loc_D1E03E: FLdRfVar var_BE
  loc_D1E041: FLdPr Me
  loc_D1E044: VCallAd Control_ID_OficinaCbo
  loc_D1E047: FStAdFunc var_B8
  loc_D1E04A: FLdPr var_B8
  loc_D1E04D:  = Me.ListIndex
  loc_D1E052: FLdI2 var_BE
  loc_D1E055: FLdPr Me
  loc_D1E058: VCallAd Control_ID_OficinaCbo
  loc_D1E05B: FStAdFunc var_C4
  loc_D1E05E: FLdPr var_C4
  loc_D1E061:  = Me.ItemData
  loc_D1E066: ILdRf var_C8
  loc_D1E069: FStR4 var_CC
  loc_D1E06C: FFreeAd var_B8 = ""
  loc_D1E073: ILdRf var_CC
  loc_D1E076: LitI4 1
  loc_D1E07B: EqI4
  loc_D1E07C: BranchF loc_D1F5B2
  loc_D1E07F: LitStr "SELECT vpadrones_parcela.nro_padron CodiInmu, IFNULL(CUIT,'') cuit, denominacion DetaPers, '' Vinculo, dependencia, distrito, seccion, vpadrones_parcela.manzana, IFNULL(parcela,0) parcela, IFNULL(subparcela,0) subparcela, IFNULL(dig_veri,'0') DigiVeri,"
  loc_D1E082: LitStr " parcela_superficie SupeInmu, parcela_avaluo AvalInmu, parcela_ryb_cod CodiRyB, parcela_ryb_descrip DetaRyB, parcela_estado_codigo CodiEsta, parcela_estado_descrip DetaEsta, parcela_estado_fecha FechEsta, parcela_fecha_alta FechAlta, parcela_fecha_modificacion FechModi,"
  loc_D1E085: ConcatStr
  loc_D1E086: FStStrNoPop var_D0
  loc_D1E089: LitStr " domireal.CodiCalle CodiCallReal, domireal.Calle DetaCallReal,"
  loc_D1E08C: ConcatStr
  loc_D1E08D: FStStrNoPop var_D4
  loc_D1E090: LitStr " domireal.NumeCalle NucaInmuReal, domireal.CodiBarrio CodiBarrReal, domireal.Barrio DetaBarrReal,"
  loc_D1E093: ConcatStr
  loc_D1E094: FStStrNoPop var_D8
  loc_D1E097: LitStr " domireal.Manzana ManzInmuReal, domireal.Casa CasaInmuReal, domireal.Lote LoteInmuReal, "
  loc_D1E09A: ConcatStr
  loc_D1E09B: FStStrNoPop var_DC
  loc_D1E09E: LitStr " concat(domireal.Planta,' ',domireal.Piso) PisoInmuPostal, domireal.Dpto DptoInmuPostal, concat(domipostal.MonoBlock, ' ',domipostal.Torre) MonoInmuPostal,"
  loc_D1E0A1: ConcatStr
  loc_D1E0A2: FStStrNoPop var_E0
  loc_D1E0A5: LitStr " domireal.ubicacion UbicInmuReal,"
  loc_D1E0A8: ConcatStr
  loc_D1E0A9: FStStrNoPop var_E4
  loc_D1E0AC: LitStr " domireal.CodiLoca CodiLocaReal, domireal.Localidad DetaLocaReal, domireal.CodPostal CopoInmuReal,"
  loc_D1E0AF: ConcatStr
  loc_D1E0B0: FStStrNoPop var_E8
  loc_D1E0B3: LitStr " domipostal.CodiCalle CodiCallPostal, domipostal.Calle DetaCallPostal,"
  loc_D1E0B6: ConcatStr
  loc_D1E0B7: FStStrNoPop var_EC
  loc_D1E0BA: LitStr " domipostal.NumeCalle NucaInmuPostal, domipostal.CodiBarrio CodiBarrPostal, domipostal.Barrio DetaBarrPostal,"
  loc_D1E0BD: ConcatStr
  loc_D1E0BE: FStStrNoPop var_F0
  loc_D1E0C1: LitStr " domipostal.Manzana ManzInmuPostal, domipostal.casa CasaInmuPostal, domipostal.Lote LoteInmuPostal, "
  loc_D1E0C4: ConcatStr
  loc_D1E0C5: FStStrNoPop var_F4
  loc_D1E0C8: LitStr " concat(domipostal.Planta,' ',domipostal.Piso) PisoInmuPostal, domipostal.Dpto DptoInmuPostal, concat(domipostal.MonoBlock, ' ',domipostal.Torre) MonoInmuPostal,"
  loc_D1E0CB: ConcatStr
  loc_D1E0CC: FStStrNoPop var_F8
  loc_D1E0CF: LitStr " domipostal.ubicacion UbicInmuPostal,"
  loc_D1E0D2: ConcatStr
  loc_D1E0D3: FStStrNoPop var_FC
  loc_D1E0D6: LitStr " domipostal.CodiLoca CodiLocaPostal, domipostal.Localidad DetaLocaPostal, domipostal.CodPostal CopoInmuPostal"
  loc_D1E0D9: ConcatStr
  loc_D1E0DA: FStStrNoPop var_100
  loc_D1E0DD: LitStr " FROM vpadrones_parcela"
  loc_D1E0E0: ConcatStr
  loc_D1E0E1: FStStrNoPop var_104
  loc_D1E0E4: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron =  vpadrones_parcela.nro_padron"
  loc_D1E0E7: ConcatStr
  loc_D1E0E8: FStStrNoPop var_108
  loc_D1E0EB: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 1"
  loc_D1E0EE: ConcatStr
  loc_D1E0EF: FStStrNoPop var_10C
  loc_D1E0F2: LitStr " AND  domireal.CodiCome = vpadrones_parcela.nro_padron"
  loc_D1E0F5: ConcatStr
  loc_D1E0F6: FStStrNoPop var_110
  loc_D1E0F9: LitStr " AND domireal.Tipo = 'Real'"
  loc_D1E0FC: ConcatStr
  loc_D1E0FD: FStStrNoPop var_114
  loc_D1E100: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 1"
  loc_D1E103: ConcatStr
  loc_D1E104: FStStrNoPop var_118
  loc_D1E107: LitStr " AND  domipostal.CodiCome = vpadrones_parcela.nro_padron"
  loc_D1E10A: ConcatStr
  loc_D1E10B: FStStrNoPop var_11C
  loc_D1E10E: LitStr " AND domipostal.Tipo = 'Rentas'"
  loc_D1E111: ConcatStr
  loc_D1E112: FStStrNoPop var_120
  loc_D1E115: LitStr " WHERE vpadrones_parcela.nro_padron = "
  loc_D1E118: ConcatStr
  loc_D1E119: FStStrNoPop var_128
  loc_D1E11C: FLdRfVar var_124
  loc_D1E11F: FLdPr Me
  loc_D1E122: VCallAd Control_ID_NumeCtaTxt
  loc_D1E125: FStAdFunc var_B8
  loc_D1E128: FLdPr var_B8
  loc_D1E12B:  = Me.Text
  loc_D1E130: ILdRf var_124
  loc_D1E133: ConcatStr
  loc_D1E134: FStStrNoPop var_12C
  loc_D1E137: LitStr " AND principal = 'Si'"
  loc_D1E13A: ConcatStr
  loc_D1E13B: FStStrNoPop var_130
  loc_D1E13E: FLdPr var_BC
  loc_D1E141: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D1E146: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = "": var_124 = "": var_12C = ""
  loc_D1E17B: FFree1Ad var_B8
  loc_D1E17E: FLdRfVar var_C8
  loc_D1E181: FLdPr var_BC
  loc_D1E184: from_stack_1 = clsboleto.RecordCount
  loc_D1E189: ILdRf var_C8
  loc_D1E18C: LitI4 0
  loc_D1E191: EqI4
  loc_D1E192: BranchF loc_D1E2AD
  loc_D1E195: LitStr "SELECT vpadrones_parcela.nro_padron CodiInmu, IFNULL(CUIT,'') cuit, denominacion DetaPers, '' Vinculo, dependencia, distrito, seccion, vpadrones_parcela.manzana, IFNULL(parcela,0) parcela, IFNULL(subparcela,0) subparcela, IFNULL(dig_veri,'0') DigiVeri,"
  loc_D1E198: LitStr " parcela_superficie SupeInmu, parcela_avaluo AvalInmu, parcela_ryb_cod CodiRyB, parcela_ryb_descrip DetaRyB, parcela_estado_codigo CodiEsta, parcela_estado_descrip DetaEsta, parcela_estado_fecha FechEsta, parcela_fecha_alta FechAlta, parcela_fecha_modificacion FechModi,"
  loc_D1E19B: ConcatStr
  loc_D1E19C: FStStrNoPop var_D0
  loc_D1E19F: LitStr " domireal.CodiCalle CodiCallReal, domireal.Calle DetaCallReal,"
  loc_D1E1A2: ConcatStr
  loc_D1E1A3: FStStrNoPop var_D4
  loc_D1E1A6: LitStr " domireal.NumeCalle NucaInmuReal, domireal.CodiBarrio CodiBarrReal, domireal.Barrio DetaBarrReal,"
  loc_D1E1A9: ConcatStr
  loc_D1E1AA: FStStrNoPop var_D8
  loc_D1E1AD: LitStr " domireal.Manzana ManzInmuReal, domireal.Casa CasaInmuReal, domireal.Lote LoteInmuReal, "
  loc_D1E1B0: ConcatStr
  loc_D1E1B1: FStStrNoPop var_DC
  loc_D1E1B4: LitStr " concat(domireal.Planta,' ',domireal.Piso) PisoInmuPostal, domireal.Dpto DptoInmuPostal, concat(domipostal.MonoBlock, ' ',domipostal.Torre) MonoInmuPostal,"
  loc_D1E1B7: ConcatStr
  loc_D1E1B8: FStStrNoPop var_E0
  loc_D1E1BB: LitStr " domireal.ubicacion UbicInmuReal,"
  loc_D1E1BE: ConcatStr
  loc_D1E1BF: FStStrNoPop var_E4
  loc_D1E1C2: LitStr " domireal.CodiLoca CodiLocaReal, domireal.Localidad DetaLocaReal, domireal.CodPostal CopoInmuReal,"
  loc_D1E1C5: ConcatStr
  loc_D1E1C6: FStStrNoPop var_E8
  loc_D1E1C9: LitStr " domipostal.CodiCalle CodiCallPostal, domipostal.Calle DetaCallPostal,"
  loc_D1E1CC: ConcatStr
  loc_D1E1CD: FStStrNoPop var_EC
  loc_D1E1D0: LitStr " domipostal.NumeCalle NucaInmuPostal, domipostal.CodiBarrio CodiBarrPostal, domipostal.Barrio DetaBarrPostal,"
  loc_D1E1D3: ConcatStr
  loc_D1E1D4: FStStrNoPop var_F0
  loc_D1E1D7: LitStr " domipostal.Manzana ManzInmuPostal, domipostal.casa CasaInmuPostal, domipostal.Lote LoteInmuPostal, "
  loc_D1E1DA: ConcatStr
  loc_D1E1DB: FStStrNoPop var_F4
  loc_D1E1DE: LitStr " concat(domipostal.Planta,' ',domipostal.Piso) PisoInmuPostal, domipostal.Dpto DptoInmuPostal, concat(domipostal.MonoBlock, ' ',domipostal.Torre) MonoInmuPostal,"
  loc_D1E1E1: ConcatStr
  loc_D1E1E2: FStStrNoPop var_F8
  loc_D1E1E5: LitStr " domipostal.ubicacion UbicInmuPostal,"
  loc_D1E1E8: ConcatStr
  loc_D1E1E9: FStStrNoPop var_FC
  loc_D1E1EC: LitStr " domipostal.CodiLoca CodiLocaPostal, domipostal.Localidad DetaLocaPostal, domipostal.CodPostal CopoInmuPostal"
  loc_D1E1EF: ConcatStr
  loc_D1E1F0: FStStrNoPop var_100
  loc_D1E1F3: LitStr " FROM vpadrones_parcela"
  loc_D1E1F6: ConcatStr
  loc_D1E1F7: FStStrNoPop var_104
  loc_D1E1FA: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron =  vpadrones_parcela.nro_padron"
  loc_D1E1FD: ConcatStr
  loc_D1E1FE: FStStrNoPop var_108
  loc_D1E201: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 1"
  loc_D1E204: ConcatStr
  loc_D1E205: FStStrNoPop var_10C
  loc_D1E208: LitStr " AND  domireal.CodiCome = vpadrones_parcela.nro_padron"
  loc_D1E20B: ConcatStr
  loc_D1E20C: FStStrNoPop var_110
  loc_D1E20F: LitStr " AND domireal.Tipo = 'Real'"
  loc_D1E212: ConcatStr
  loc_D1E213: FStStrNoPop var_114
  loc_D1E216: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 1"
  loc_D1E219: ConcatStr
  loc_D1E21A: FStStrNoPop var_118
  loc_D1E21D: LitStr " AND  domipostal.CodiCome = vpadrones_parcela.nro_padron"
  loc_D1E220: ConcatStr
  loc_D1E221: FStStrNoPop var_11C
  loc_D1E224: LitStr " AND domipostal.Tipo = 'Rentas'"
  loc_D1E227: ConcatStr
  loc_D1E228: FStStrNoPop var_120
  loc_D1E22B: LitStr " WHERE vpadrones_parcela.nro_padron = "
  loc_D1E22E: ConcatStr
  loc_D1E22F: FStStrNoPop var_128
  loc_D1E232: FLdRfVar var_124
  loc_D1E235: FLdPr Me
  loc_D1E238: VCallAd Control_ID_NumeCtaTxt
  loc_D1E23B: FStAdFunc var_B8
  loc_D1E23E: FLdPr var_B8
  loc_D1E241:  = Me.Text
  loc_D1E246: ILdRf var_124
  loc_D1E249: ConcatStr
  loc_D1E24A: FStStrNoPop var_12C
  loc_D1E24D: FLdPr var_BC
  loc_D1E250: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D1E255: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = "": var_124 = ""
  loc_D1E288: FFree1Ad var_B8
  loc_D1E28B: FLdRfVar var_C8
  loc_D1E28E: FLdPr var_BC
  loc_D1E291: from_stack_1 = clsboleto.RecordCount
  loc_D1E296: ILdRf var_C8
  loc_D1E299: LitI4 0
  loc_D1E29E: EqI4
  loc_D1E29F: BranchF loc_D1E2AD
  loc_D1E2A2: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_D1E2A5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D1E2AA: Branch loc_D21B87
  loc_D1E2AD: LitI4 0
  loc_D1E2B2: LitI4 1
  loc_D1E2B7: FLdPr Me
  loc_D1E2BA: MemLdRfVar from_stack_1.global_88
  loc_D1E2BD: Redim
  loc_D1E2C7: FLdRfVar var_B8
  loc_D1E2CA: FLdPr var_BC
  loc_D1E2CD: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E2D2: FLdPr var_B8
  loc_D1E2D5: Me.MoveFirst
  loc_D1E2DA: FFree1Ad var_B8
  loc_D1E2DD: FLdRfVar var_134
  loc_D1E2E0: LitVarStr var_A4, "CodiInmu"
  loc_D1E2E5: PopAdLdVar
  loc_D1E2E6: FLdRfVar var_C4
  loc_D1E2E9: FLdRfVar var_B8
  loc_D1E2EC: FLdPr var_BC
  loc_D1E2EF: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E2F4: FLdPr var_B8
  loc_D1E2F7:  = Me.Fields
  loc_D1E2FC: FLdPr var_C4
  loc_D1E2FF: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E304: LitI2_Byte 0
  loc_D1E306: LitVar_Missing var_158
  loc_D1E309: LitI2_Byte 0
  loc_D1E30B: FLdZeroAd var_134
  loc_D1E30E: CVarAd
  loc_D1E312: PopAdLdVar
  loc_D1E313: LitI4 1
  loc_D1E318: FLdPr Me
  loc_D1E31B: MemLdStr global_88
  loc_D1E31E: AryLock
  loc_D1E321: Ary1LdPr
  loc_D1E322: MemLdRfVar from_stack_1.global_20
  loc_D1E325: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E32A: AryUnlock
  loc_D1E32D: FFreeAd var_B8 = ""
  loc_D1E334: FFreeVar var_148 = ""
  loc_D1E33B: FLdRfVar var_134
  loc_D1E33E: LitVarStr var_A4, "cuit"
  loc_D1E343: PopAdLdVar
  loc_D1E344: FLdRfVar var_C4
  loc_D1E347: FLdRfVar var_B8
  loc_D1E34A: FLdPr var_BC
  loc_D1E34D: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E352: FLdPr var_B8
  loc_D1E355:  = Me.Fields
  loc_D1E35A: FLdPr var_C4
  loc_D1E35D: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E362: LitI2_Byte 0
  loc_D1E364: LitVar_Missing var_158
  loc_D1E367: LitI2_Byte 0
  loc_D1E369: FLdZeroAd var_134
  loc_D1E36C: CVarAd
  loc_D1E370: PopAdLdVar
  loc_D1E371: LitI4 1
  loc_D1E376: FLdPr Me
  loc_D1E379: MemLdStr global_88
  loc_D1E37C: AryLock
  loc_D1E37F: Ary1LdPr
  loc_D1E380: MemLdRfVar from_stack_1.global_12
  loc_D1E383: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E388: AryUnlock
  loc_D1E38B: FFreeAd var_B8 = ""
  loc_D1E392: FFreeVar var_148 = ""
  loc_D1E399: FLdRfVar var_134
  loc_D1E39C: LitVarStr var_A4, "DetaPers"
  loc_D1E3A1: PopAdLdVar
  loc_D1E3A2: FLdRfVar var_C4
  loc_D1E3A5: FLdRfVar var_B8
  loc_D1E3A8: FLdPr var_BC
  loc_D1E3AB: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E3B0: FLdPr var_B8
  loc_D1E3B3:  = Me.Fields
  loc_D1E3B8: FLdPr var_C4
  loc_D1E3BB: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E3C0: LitI2_Byte 0
  loc_D1E3C2: LitVar_Missing var_158
  loc_D1E3C5: LitI2_Byte 0
  loc_D1E3C7: FLdZeroAd var_134
  loc_D1E3CA: CVarAd
  loc_D1E3CE: PopAdLdVar
  loc_D1E3CF: LitI4 1
  loc_D1E3D4: FLdPr Me
  loc_D1E3D7: MemLdStr global_88
  loc_D1E3DA: AryLock
  loc_D1E3DD: Ary1LdPr
  loc_D1E3DE: MemLdRfVar from_stack_1.global_16
  loc_D1E3E1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E3E6: AryUnlock
  loc_D1E3E9: FFreeAd var_B8 = ""
  loc_D1E3F0: FFreeVar var_148 = ""
  loc_D1E3F7: FLdRfVar var_148
  loc_D1E3FA: FLdRfVar var_134
  loc_D1E3FD: LitVarStr var_A4, "CodiEsta"
  loc_D1E402: PopAdLdVar
  loc_D1E403: FLdRfVar var_C4
  loc_D1E406: FLdRfVar var_B8
  loc_D1E409: FLdPr var_BC
  loc_D1E40C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E411: FLdPr var_B8
  loc_D1E414:  = Me.Fields
  loc_D1E419: FLdPr var_C4
  loc_D1E41C: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E421: FLdPr var_134
  loc_D1E424:  = Me.Value
  loc_D1E429: FLdRfVar var_184
  loc_D1E42C: FLdRfVar var_174
  loc_D1E42F: LitVarStr var_170, "DetaEsta"
  loc_D1E434: PopAdLdVar
  loc_D1E435: FLdRfVar var_160
  loc_D1E438: FLdRfVar var_15C
  loc_D1E43B: FLdPr var_BC
  loc_D1E43E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E443: FLdPr var_15C
  loc_D1E446:  = Me.Fields
  loc_D1E44B: FLdPr var_160
  loc_D1E44E: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E453: FLdPr var_174
  loc_D1E456:  = Me.Value
  loc_D1E45B: LitI2_Byte 0
  loc_D1E45D: LitVar_Missing var_1B4
  loc_D1E460: LitI2_Byte 0
  loc_D1E462: FLdRfVar var_148
  loc_D1E465: LitVarStr var_B4, " - "
  loc_D1E46A: ConcatVar var_158
  loc_D1E46E: FLdRfVar var_184
  loc_D1E471: ConcatVar var_194
  loc_D1E475: PopAdLdVar
  loc_D1E476: LitI4 1
  loc_D1E47B: FLdPr Me
  loc_D1E47E: MemLdStr global_88
  loc_D1E481: AryLock
  loc_D1E484: Ary1LdPr
  loc_D1E485: MemLdRfVar from_stack_1.global_32
  loc_D1E488: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E48D: AryUnlock
  loc_D1E490: FFreeAd var_B8 = "": var_C4 = "": var_134 = "": var_15C = "": var_160 = ""
  loc_D1E49F: FFreeVar var_148 = "": var_158 = "": var_184 = "": var_194 = ""
  loc_D1E4AC: FLdRfVar var_134
  loc_D1E4AF: LitVarStr var_A4, "FechEsta"
  loc_D1E4B4: PopAdLdVar
  loc_D1E4B5: FLdRfVar var_C4
  loc_D1E4B8: FLdRfVar var_B8
  loc_D1E4BB: FLdPr var_BC
  loc_D1E4BE: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E4C3: FLdPr var_B8
  loc_D1E4C6:  = Me.Fields
  loc_D1E4CB: FLdPr var_C4
  loc_D1E4CE: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E4D3: LitI2_Byte 0
  loc_D1E4D5: LitVar_Missing var_158
  loc_D1E4D8: LitI2_Byte 0
  loc_D1E4DA: FLdZeroAd var_134
  loc_D1E4DD: CVarAd
  loc_D1E4E1: PopAdLdVar
  loc_D1E4E2: LitI4 1
  loc_D1E4E7: FLdPr Me
  loc_D1E4EA: MemLdStr global_88
  loc_D1E4ED: AryLock
  loc_D1E4F0: Ary1LdPr
  loc_D1E4F1: MemLdRfVar from_stack_1.global_36
  loc_D1E4F4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E4F9: AryUnlock
  loc_D1E4FC: FFreeAd var_B8 = ""
  loc_D1E503: FFreeVar var_148 = ""
  loc_D1E50A: FLdRfVar var_134
  loc_D1E50D: LitVarStr var_A4, "CodiCallReal"
  loc_D1E512: PopAdLdVar
  loc_D1E513: FLdRfVar var_C4
  loc_D1E516: FLdRfVar var_B8
  loc_D1E519: FLdPr var_BC
  loc_D1E51C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E521: FLdPr var_B8
  loc_D1E524:  = Me.Fields
  loc_D1E529: FLdPr var_C4
  loc_D1E52C: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E531: LitI2_Byte 0
  loc_D1E533: LitVar_Missing var_158
  loc_D1E536: LitI2_Byte 0
  loc_D1E538: FLdZeroAd var_134
  loc_D1E53B: CVarAd
  loc_D1E53F: PopAdLdVar
  loc_D1E540: LitI4 1
  loc_D1E545: FLdPr Me
  loc_D1E548: MemLdStr global_88
  loc_D1E54B: AryLock
  loc_D1E54E: Ary1LdPr
  loc_D1E54F: MemLdRfVar from_stack_1.global_40
  loc_D1E552: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E557: AryUnlock
  loc_D1E55A: FFreeAd var_B8 = ""
  loc_D1E561: FFreeVar var_148 = ""
  loc_D1E568: FLdRfVar var_134
  loc_D1E56B: LitVarStr var_A4, "DetaCallReal"
  loc_D1E570: PopAdLdVar
  loc_D1E571: FLdRfVar var_C4
  loc_D1E574: FLdRfVar var_B8
  loc_D1E577: FLdPr var_BC
  loc_D1E57A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E57F: FLdPr var_B8
  loc_D1E582:  = Me.Fields
  loc_D1E587: FLdPr var_C4
  loc_D1E58A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E58F: LitI2_Byte 0
  loc_D1E591: LitVar_Missing var_158
  loc_D1E594: LitI2_Byte 0
  loc_D1E596: FLdZeroAd var_134
  loc_D1E599: CVarAd
  loc_D1E59D: PopAdLdVar
  loc_D1E59E: LitI4 1
  loc_D1E5A3: FLdPr Me
  loc_D1E5A6: MemLdStr global_88
  loc_D1E5A9: AryLock
  loc_D1E5AC: Ary1LdPr
  loc_D1E5AD: MemLdRfVar from_stack_1.global_44
  loc_D1E5B0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E5B5: AryUnlock
  loc_D1E5B8: FFreeAd var_B8 = ""
  loc_D1E5BF: FFreeVar var_148 = ""
  loc_D1E5C6: FLdRfVar var_134
  loc_D1E5C9: LitVarStr var_A4, "NucaInmuReal"
  loc_D1E5CE: PopAdLdVar
  loc_D1E5CF: FLdRfVar var_C4
  loc_D1E5D2: FLdRfVar var_B8
  loc_D1E5D5: FLdPr var_BC
  loc_D1E5D8: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E5DD: FLdPr var_B8
  loc_D1E5E0:  = Me.Fields
  loc_D1E5E5: FLdPr var_C4
  loc_D1E5E8: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E5ED: LitI2_Byte 0
  loc_D1E5EF: LitVar_Missing var_158
  loc_D1E5F2: LitI2_Byte 0
  loc_D1E5F4: FLdZeroAd var_134
  loc_D1E5F7: CVarAd
  loc_D1E5FB: PopAdLdVar
  loc_D1E5FC: LitI4 1
  loc_D1E601: FLdPr Me
  loc_D1E604: MemLdStr global_88
  loc_D1E607: AryLock
  loc_D1E60A: Ary1LdPr
  loc_D1E60B: MemLdRfVar from_stack_1.bGenerado
  loc_D1E60E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E613: AryUnlock
  loc_D1E616: FFreeAd var_B8 = ""
  loc_D1E61D: FFreeVar var_148 = ""
  loc_D1E624: FLdRfVar var_134
  loc_D1E627: LitVarStr var_A4, "CodiBarrReal"
  loc_D1E62C: PopAdLdVar
  loc_D1E62D: FLdRfVar var_C4
  loc_D1E630: FLdRfVar var_B8
  loc_D1E633: FLdPr var_BC
  loc_D1E636: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E63B: FLdPr var_B8
  loc_D1E63E:  = Me.Fields
  loc_D1E643: FLdPr var_C4
  loc_D1E646: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E64B: LitI2_Byte 0
  loc_D1E64D: LitVar_Missing var_158
  loc_D1E650: LitI2_Byte 0
  loc_D1E652: FLdZeroAd var_134
  loc_D1E655: CVarAd
  loc_D1E659: PopAdLdVar
  loc_D1E65A: LitI4 1
  loc_D1E65F: FLdPr Me
  loc_D1E662: MemLdStr global_88
  loc_D1E665: AryLock
  loc_D1E668: Ary1LdPr
  loc_D1E669: MemLdRfVar from_stack_1.global_56
  loc_D1E66C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E671: AryUnlock
  loc_D1E674: FFreeAd var_B8 = ""
  loc_D1E67B: FFreeVar var_148 = ""
  loc_D1E682: FLdRfVar var_134
  loc_D1E685: LitVarStr var_A4, "DetaBarrReal"
  loc_D1E68A: PopAdLdVar
  loc_D1E68B: FLdRfVar var_C4
  loc_D1E68E: FLdRfVar var_B8
  loc_D1E691: FLdPr var_BC
  loc_D1E694: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E699: FLdPr var_B8
  loc_D1E69C:  = Me.Fields
  loc_D1E6A1: FLdPr var_C4
  loc_D1E6A4: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E6A9: LitI2_Byte 0
  loc_D1E6AB: LitVar_Missing var_158
  loc_D1E6AE: LitI2_Byte 0
  loc_D1E6B0: FLdZeroAd var_134
  loc_D1E6B3: CVarAd
  loc_D1E6B7: PopAdLdVar
  loc_D1E6B8: LitI4 1
  loc_D1E6BD: FLdPr Me
  loc_D1E6C0: MemLdStr global_88
  loc_D1E6C3: AryLock
  loc_D1E6C6: Ary1LdPr
  loc_D1E6C7: MemLdRfVar from_stack_1.global_60
  loc_D1E6CA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E6CF: AryUnlock
  loc_D1E6D2: FFreeAd var_B8 = ""
  loc_D1E6D9: FFreeVar var_148 = ""
  loc_D1E6E0: FLdRfVar var_134
  loc_D1E6E3: LitVarStr var_A4, "ManzInmuReal"
  loc_D1E6E8: PopAdLdVar
  loc_D1E6E9: FLdRfVar var_C4
  loc_D1E6EC: FLdRfVar var_B8
  loc_D1E6EF: FLdPr var_BC
  loc_D1E6F2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E6F7: FLdPr var_B8
  loc_D1E6FA:  = Me.Fields
  loc_D1E6FF: FLdPr var_C4
  loc_D1E702: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E707: LitI2_Byte 0
  loc_D1E709: LitVar_Missing var_158
  loc_D1E70C: LitI2_Byte 0
  loc_D1E70E: FLdZeroAd var_134
  loc_D1E711: CVarAd
  loc_D1E715: PopAdLdVar
  loc_D1E716: LitI4 1
  loc_D1E71B: FLdPr Me
  loc_D1E71E: MemLdStr global_88
  loc_D1E721: AryLock
  loc_D1E724: Ary1LdPr
  loc_D1E725: MemLdRfVar from_stack_1.global_68
  loc_D1E728: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E72D: AryUnlock
  loc_D1E730: FFreeAd var_B8 = ""
  loc_D1E737: FFreeVar var_148 = ""
  loc_D1E73E: FLdRfVar var_134
  loc_D1E741: LitVarStr var_A4, "CasaInmuReal"
  loc_D1E746: PopAdLdVar
  loc_D1E747: FLdRfVar var_C4
  loc_D1E74A: FLdRfVar var_B8
  loc_D1E74D: FLdPr var_BC
  loc_D1E750: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E755: FLdPr var_B8
  loc_D1E758:  = Me.Fields
  loc_D1E75D: FLdPr var_C4
  loc_D1E760: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E765: LitI2_Byte 0
  loc_D1E767: LitVar_Missing var_158
  loc_D1E76A: LitI2_Byte 0
  loc_D1E76C: FLdZeroAd var_134
  loc_D1E76F: CVarAd
  loc_D1E773: PopAdLdVar
  loc_D1E774: LitI4 1
  loc_D1E779: FLdPr Me
  loc_D1E77C: MemLdStr global_88
  loc_D1E77F: AryLock
  loc_D1E782: Ary1LdPr
  loc_D1E783: MemLdRfVar from_stack_1.global_76
  loc_D1E786: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E78B: AryUnlock
  loc_D1E78E: FFreeAd var_B8 = ""
  loc_D1E795: FFreeVar var_148 = ""
  loc_D1E79C: FLdRfVar var_134
  loc_D1E79F: LitVarStr var_A4, "LoteInmuReal"
  loc_D1E7A4: PopAdLdVar
  loc_D1E7A5: FLdRfVar var_C4
  loc_D1E7A8: FLdRfVar var_B8
  loc_D1E7AB: FLdPr var_BC
  loc_D1E7AE: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E7B3: FLdPr var_B8
  loc_D1E7B6:  = Me.Fields
  loc_D1E7BB: FLdPr var_C4
  loc_D1E7BE: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E7C3: LitI2_Byte 0
  loc_D1E7C5: LitVar_Missing var_158
  loc_D1E7C8: LitI2_Byte 0
  loc_D1E7CA: FLdZeroAd var_134
  loc_D1E7CD: CVarAd
  loc_D1E7D1: PopAdLdVar
  loc_D1E7D2: LitI4 1
  loc_D1E7D7: FLdPr Me
  loc_D1E7DA: MemLdStr global_88
  loc_D1E7DD: AryLock
  loc_D1E7E0: Ary1LdPr
  loc_D1E7E1: MemLdRfVar from_stack_1.global_80
  loc_D1E7E4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E7E9: AryUnlock
  loc_D1E7EC: FFreeAd var_B8 = ""
  loc_D1E7F3: FFreeVar var_148 = ""
  loc_D1E7FA: FLdRfVar var_134
  loc_D1E7FD: LitVarStr var_A4, "UbicInmuReal"
  loc_D1E802: PopAdLdVar
  loc_D1E803: FLdRfVar var_C4
  loc_D1E806: FLdRfVar var_B8
  loc_D1E809: FLdPr var_BC
  loc_D1E80C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E811: FLdPr var_B8
  loc_D1E814:  = Me.Fields
  loc_D1E819: FLdPr var_C4
  loc_D1E81C: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E821: LitI2_Byte 0
  loc_D1E823: LitVar_Missing var_158
  loc_D1E826: LitI2_Byte 0
  loc_D1E828: FLdZeroAd var_134
  loc_D1E82B: CVarAd
  loc_D1E82F: PopAdLdVar
  loc_D1E830: LitI4 1
  loc_D1E835: FLdPr Me
  loc_D1E838: MemLdStr global_88
  loc_D1E83B: AryLock
  loc_D1E83E: Ary1LdPr
  loc_D1E83F: MemLdRfVar from_stack_1.global_88
  loc_D1E842: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E847: AryUnlock
  loc_D1E84A: FFreeAd var_B8 = ""
  loc_D1E851: FFreeVar var_148 = ""
  loc_D1E858: FLdRfVar var_134
  loc_D1E85B: LitVarStr var_A4, "CodiLocaReal"
  loc_D1E860: PopAdLdVar
  loc_D1E861: FLdRfVar var_C4
  loc_D1E864: FLdRfVar var_B8
  loc_D1E867: FLdPr var_BC
  loc_D1E86A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E86F: FLdPr var_B8
  loc_D1E872:  = Me.Fields
  loc_D1E877: FLdPr var_C4
  loc_D1E87A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E87F: LitI2_Byte 0
  loc_D1E881: LitVar_Missing var_158
  loc_D1E884: LitI2_Byte 0
  loc_D1E886: FLdZeroAd var_134
  loc_D1E889: CVarAd
  loc_D1E88D: PopAdLdVar
  loc_D1E88E: LitI4 1
  loc_D1E893: FLdPr Me
  loc_D1E896: MemLdStr global_88
  loc_D1E899: AryLock
  loc_D1E89C: Ary1LdPr
  loc_D1E89D: MemLdRfVar from_stack_1.global_92
  loc_D1E8A0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E8A5: AryUnlock
  loc_D1E8A8: FFreeAd var_B8 = ""
  loc_D1E8AF: FFreeVar var_148 = ""
  loc_D1E8B6: FLdRfVar var_134
  loc_D1E8B9: LitVarStr var_A4, "DetaLocaReal"
  loc_D1E8BE: PopAdLdVar
  loc_D1E8BF: FLdRfVar var_C4
  loc_D1E8C2: FLdRfVar var_B8
  loc_D1E8C5: FLdPr var_BC
  loc_D1E8C8: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E8CD: FLdPr var_B8
  loc_D1E8D0:  = Me.Fields
  loc_D1E8D5: FLdPr var_C4
  loc_D1E8D8: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E8DD: LitI2_Byte 0
  loc_D1E8DF: LitVar_Missing var_158
  loc_D1E8E2: LitI2_Byte 0
  loc_D1E8E4: FLdZeroAd var_134
  loc_D1E8E7: CVarAd
  loc_D1E8EB: PopAdLdVar
  loc_D1E8EC: LitI4 1
  loc_D1E8F1: FLdPr Me
  loc_D1E8F4: MemLdStr global_88
  loc_D1E8F7: AryLock
  loc_D1E8FA: Ary1LdPr
  loc_D1E8FB: MemLdRfVar from_stack_1.global_96
  loc_D1E8FE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E903: AryUnlock
  loc_D1E906: FFreeAd var_B8 = ""
  loc_D1E90D: FFreeVar var_148 = ""
  loc_D1E914: FLdRfVar var_134
  loc_D1E917: LitVarStr var_A4, "CopoInmuReal"
  loc_D1E91C: PopAdLdVar
  loc_D1E91D: FLdRfVar var_C4
  loc_D1E920: FLdRfVar var_B8
  loc_D1E923: FLdPr var_BC
  loc_D1E926: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E92B: FLdPr var_B8
  loc_D1E92E:  = Me.Fields
  loc_D1E933: FLdPr var_C4
  loc_D1E936: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E93B: LitI2_Byte 0
  loc_D1E93D: LitVar_Missing var_158
  loc_D1E940: LitI2_Byte 0
  loc_D1E942: FLdZeroAd var_134
  loc_D1E945: CVarAd
  loc_D1E949: PopAdLdVar
  loc_D1E94A: LitI4 1
  loc_D1E94F: FLdPr Me
  loc_D1E952: MemLdStr global_88
  loc_D1E955: AryLock
  loc_D1E958: Ary1LdPr
  loc_D1E959: MemLdRfVar from_stack_1.global_104
  loc_D1E95C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E961: AryUnlock
  loc_D1E964: FFreeAd var_B8 = ""
  loc_D1E96B: FFreeVar var_148 = ""
  loc_D1E972: FLdRfVar var_134
  loc_D1E975: LitVarStr var_A4, "FechAlta"
  loc_D1E97A: PopAdLdVar
  loc_D1E97B: FLdRfVar var_C4
  loc_D1E97E: FLdRfVar var_B8
  loc_D1E981: FLdPr var_BC
  loc_D1E984: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E989: FLdPr var_B8
  loc_D1E98C:  = Me.Fields
  loc_D1E991: FLdPr var_C4
  loc_D1E994: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E999: LitI2_Byte 0
  loc_D1E99B: LitVar_Missing var_158
  loc_D1E99E: LitI2_Byte 0
  loc_D1E9A0: FLdZeroAd var_134
  loc_D1E9A3: CVarAd
  loc_D1E9A7: PopAdLdVar
  loc_D1E9A8: LitI4 1
  loc_D1E9AD: FLdPr Me
  loc_D1E9B0: MemLdStr global_88
  loc_D1E9B3: AryLock
  loc_D1E9B6: Ary1LdPr
  loc_D1E9B7: MemLdRfVar from_stack_1.global_200
  loc_D1E9BA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1E9BF: AryUnlock
  loc_D1E9C2: FFreeAd var_B8 = ""
  loc_D1E9C9: FFreeVar var_148 = ""
  loc_D1E9D0: FLdRfVar var_134
  loc_D1E9D3: LitVarStr var_A4, "FechModi"
  loc_D1E9D8: PopAdLdVar
  loc_D1E9D9: FLdRfVar var_C4
  loc_D1E9DC: FLdRfVar var_B8
  loc_D1E9DF: FLdPr var_BC
  loc_D1E9E2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1E9E7: FLdPr var_B8
  loc_D1E9EA:  = Me.Fields
  loc_D1E9EF: FLdPr var_C4
  loc_D1E9F2: from_stack_2 = Me.Item(from_stack_1)
  loc_D1E9F7: LitI2_Byte 0
  loc_D1E9F9: LitVar_Missing var_158
  loc_D1E9FC: LitI2_Byte 0
  loc_D1E9FE: FLdZeroAd var_134
  loc_D1EA01: CVarAd
  loc_D1EA05: PopAdLdVar
  loc_D1EA06: LitI4 1
  loc_D1EA0B: FLdPr Me
  loc_D1EA0E: MemLdStr global_88
  loc_D1EA11: AryLock
  loc_D1EA14: Ary1LdPr
  loc_D1EA15: MemLdRfVar from_stack_1.global_216
  loc_D1EA18: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EA1D: AryUnlock
  loc_D1EA20: FFreeAd var_B8 = ""
  loc_D1EA27: FFreeVar var_148 = ""
  loc_D1EA2E: FLdRfVar var_134
  loc_D1EA31: LitVarStr var_A4, "SupeInmu"
  loc_D1EA36: PopAdLdVar
  loc_D1EA37: FLdRfVar var_C4
  loc_D1EA3A: FLdRfVar var_B8
  loc_D1EA3D: FLdPr var_BC
  loc_D1EA40: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EA45: FLdPr var_B8
  loc_D1EA48:  = Me.Fields
  loc_D1EA4D: FLdPr var_C4
  loc_D1EA50: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EA55: LitI4 1
  loc_D1EA5A: LitI4 1
  loc_D1EA5F: LitVarStr var_B4, "0.00"
  loc_D1EA64: FStVarCopyObj var_158
  loc_D1EA67: FLdRfVar var_158
  loc_D1EA6A: FLdZeroAd var_134
  loc_D1EA6D: CVarAd
  loc_D1EA71: FLdRfVar var_184
  loc_D1EA74: ImpAdCallFPR4  = Format(, )
  loc_D1EA79: LitI2_Byte 0
  loc_D1EA7B: LitVar_Missing var_194
  loc_D1EA7E: LitI2_Byte 0
  loc_D1EA80: FLdVar var_184
  loc_D1EA84: LitI4 1
  loc_D1EA89: FLdPr Me
  loc_D1EA8C: MemLdStr global_88
  loc_D1EA8F: AryLock
  loc_D1EA92: Ary1LdPr
  loc_D1EA93: MemLdRfVar from_stack_1.global_252
  loc_D1EA96: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EA9B: AryUnlock
  loc_D1EA9E: FFreeAd var_B8 = ""
  loc_D1EAA5: FFreeVar var_148 = "": var_158 = "": var_184 = ""
  loc_D1EAB0: FLdRfVar var_134
  loc_D1EAB3: LitVarStr var_A4, "AvalInmu"
  loc_D1EAB8: PopAdLdVar
  loc_D1EAB9: FLdRfVar var_C4
  loc_D1EABC: FLdRfVar var_B8
  loc_D1EABF: FLdPr var_BC
  loc_D1EAC2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EAC7: FLdPr var_B8
  loc_D1EACA:  = Me.Fields
  loc_D1EACF: FLdPr var_C4
  loc_D1EAD2: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EAD7: LitI2_Byte 0
  loc_D1EAD9: LitVar_Missing var_158
  loc_D1EADC: LitI2_Byte 0
  loc_D1EADE: FLdZeroAd var_134
  loc_D1EAE1: CVarAd
  loc_D1EAE5: PopAdLdVar
  loc_D1EAE6: LitI4 1
  loc_D1EAEB: FLdPr Me
  loc_D1EAEE: MemLdStr global_88
  loc_D1EAF1: AryLock
  loc_D1EAF4: Ary1LdPr
  loc_D1EAF5: MemLdRfVar from_stack_1.global_256
  loc_D1EAF8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EAFD: AryUnlock
  loc_D1EB00: FFreeAd var_B8 = ""
  loc_D1EB07: FFreeVar var_148 = ""
  loc_D1EB0E: FLdRfVar var_134
  loc_D1EB11: LitVarStr var_A4, "CodiRyB"
  loc_D1EB16: PopAdLdVar
  loc_D1EB17: FLdRfVar var_C4
  loc_D1EB1A: FLdRfVar var_B8
  loc_D1EB1D: FLdPr var_BC
  loc_D1EB20: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EB25: FLdPr var_B8
  loc_D1EB28:  = Me.Fields
  loc_D1EB2D: FLdPr var_C4
  loc_D1EB30: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EB35: LitI2_Byte 0
  loc_D1EB37: LitVar_Missing var_158
  loc_D1EB3A: LitI2_Byte 0
  loc_D1EB3C: FLdZeroAd var_134
  loc_D1EB3F: CVarAd
  loc_D1EB43: PopAdLdVar
  loc_D1EB44: LitI4 1
  loc_D1EB49: FLdPr Me
  loc_D1EB4C: MemLdStr global_88
  loc_D1EB4F: AryLock
  loc_D1EB52: Ary1LdPr
  loc_D1EB53: MemLdRfVar from_stack_1.global_260
  loc_D1EB56: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EB5B: AryUnlock
  loc_D1EB5E: FFreeAd var_B8 = ""
  loc_D1EB65: FFreeVar var_148 = ""
  loc_D1EB6C: FLdRfVar var_134
  loc_D1EB6F: LitVarStr var_A4, "DetaRyB"
  loc_D1EB74: PopAdLdVar
  loc_D1EB75: FLdRfVar var_C4
  loc_D1EB78: FLdRfVar var_B8
  loc_D1EB7B: FLdPr var_BC
  loc_D1EB7E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EB83: FLdPr var_B8
  loc_D1EB86:  = Me.Fields
  loc_D1EB8B: FLdPr var_C4
  loc_D1EB8E: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EB93: LitI2_Byte 0
  loc_D1EB95: LitVar_Missing var_158
  loc_D1EB98: LitI2_Byte 0
  loc_D1EB9A: FLdZeroAd var_134
  loc_D1EB9D: CVarAd
  loc_D1EBA1: PopAdLdVar
  loc_D1EBA2: LitI4 1
  loc_D1EBA7: FLdPr Me
  loc_D1EBAA: MemLdStr global_88
  loc_D1EBAD: AryLock
  loc_D1EBB0: Ary1LdPr
  loc_D1EBB1: MemLdRfVar from_stack_1.global_264
  loc_D1EBB4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EBB9: AryUnlock
  loc_D1EBBC: FFreeAd var_B8 = ""
  loc_D1EBC3: FFreeVar var_148 = ""
  loc_D1EBCA: FLdRfVar var_134
  loc_D1EBCD: LitVarStr var_A4, "Dependencia"
  loc_D1EBD2: PopAdLdVar
  loc_D1EBD3: FLdRfVar var_C4
  loc_D1EBD6: FLdRfVar var_B8
  loc_D1EBD9: FLdPr var_BC
  loc_D1EBDC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EBE1: FLdPr var_B8
  loc_D1EBE4:  = Me.Fields
  loc_D1EBE9: FLdPr var_C4
  loc_D1EBEC: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EBF1: LitI2_Byte 0
  loc_D1EBF3: LitVar_Missing var_158
  loc_D1EBF6: LitI2_Byte 0
  loc_D1EBF8: FLdZeroAd var_134
  loc_D1EBFB: CVarAd
  loc_D1EBFF: PopAdLdVar
  loc_D1EC00: LitI4 1
  loc_D1EC05: FLdPr Me
  loc_D1EC08: MemLdStr global_88
  loc_D1EC0B: AryLock
  loc_D1EC0E: Ary1LdPr
  loc_D1EC0F: MemLdRfVar from_stack_1.global_268
  loc_D1EC12: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EC17: AryUnlock
  loc_D1EC1A: FFreeAd var_B8 = ""
  loc_D1EC21: FFreeVar var_148 = ""
  loc_D1EC28: FLdRfVar var_134
  loc_D1EC2B: LitVarStr var_A4, "Distrito"
  loc_D1EC30: PopAdLdVar
  loc_D1EC31: FLdRfVar var_C4
  loc_D1EC34: FLdRfVar var_B8
  loc_D1EC37: FLdPr var_BC
  loc_D1EC3A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EC3F: FLdPr var_B8
  loc_D1EC42:  = Me.Fields
  loc_D1EC47: FLdPr var_C4
  loc_D1EC4A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EC4F: LitI2_Byte 0
  loc_D1EC51: LitVar_Missing var_158
  loc_D1EC54: LitI2_Byte 0
  loc_D1EC56: FLdZeroAd var_134
  loc_D1EC59: CVarAd
  loc_D1EC5D: PopAdLdVar
  loc_D1EC5E: LitI4 1
  loc_D1EC63: FLdPr Me
  loc_D1EC66: MemLdStr global_88
  loc_D1EC69: AryLock
  loc_D1EC6C: Ary1LdPr
  loc_D1EC6D: MemLdRfVar from_stack_1.global_272
  loc_D1EC70: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EC75: AryUnlock
  loc_D1EC78: FFreeAd var_B8 = ""
  loc_D1EC7F: FFreeVar var_148 = ""
  loc_D1EC86: FLdRfVar var_134
  loc_D1EC89: LitVarStr var_A4, "Seccion"
  loc_D1EC8E: PopAdLdVar
  loc_D1EC8F: FLdRfVar var_C4
  loc_D1EC92: FLdRfVar var_B8
  loc_D1EC95: FLdPr var_BC
  loc_D1EC98: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EC9D: FLdPr var_B8
  loc_D1ECA0:  = Me.Fields
  loc_D1ECA5: FLdPr var_C4
  loc_D1ECA8: from_stack_2 = Me.Item(from_stack_1)
  loc_D1ECAD: LitI2_Byte 0
  loc_D1ECAF: LitVar_Missing var_158
  loc_D1ECB2: LitI2_Byte 0
  loc_D1ECB4: FLdZeroAd var_134
  loc_D1ECB7: CVarAd
  loc_D1ECBB: PopAdLdVar
  loc_D1ECBC: LitI4 1
  loc_D1ECC1: FLdPr Me
  loc_D1ECC4: MemLdStr global_88
  loc_D1ECC7: AryLock
  loc_D1ECCA: Ary1LdPr
  loc_D1ECCB: MemLdRfVar from_stack_1.global_276
  loc_D1ECCE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1ECD3: AryUnlock
  loc_D1ECD6: FFreeAd var_B8 = ""
  loc_D1ECDD: FFreeVar var_148 = ""
  loc_D1ECE4: FLdRfVar var_134
  loc_D1ECE7: LitVarStr var_A4, "Manzana"
  loc_D1ECEC: PopAdLdVar
  loc_D1ECED: FLdRfVar var_C4
  loc_D1ECF0: FLdRfVar var_B8
  loc_D1ECF3: FLdPr var_BC
  loc_D1ECF6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1ECFB: FLdPr var_B8
  loc_D1ECFE:  = Me.Fields
  loc_D1ED03: FLdPr var_C4
  loc_D1ED06: from_stack_2 = Me.Item(from_stack_1)
  loc_D1ED0B: LitI2_Byte 0
  loc_D1ED0D: LitVar_Missing var_158
  loc_D1ED10: LitI2_Byte 0
  loc_D1ED12: FLdZeroAd var_134
  loc_D1ED15: CVarAd
  loc_D1ED19: PopAdLdVar
  loc_D1ED1A: LitI4 1
  loc_D1ED1F: FLdPr Me
  loc_D1ED22: MemLdStr global_88
  loc_D1ED25: AryLock
  loc_D1ED28: Ary1LdPr
  loc_D1ED29: MemLdRfVar from_stack_1.global_280
  loc_D1ED2C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1ED31: AryUnlock
  loc_D1ED34: FFreeAd var_B8 = ""
  loc_D1ED3B: FFreeVar var_148 = ""
  loc_D1ED42: FLdRfVar var_134
  loc_D1ED45: LitVarStr var_A4, "Parcela"
  loc_D1ED4A: PopAdLdVar
  loc_D1ED4B: FLdRfVar var_C4
  loc_D1ED4E: FLdRfVar var_B8
  loc_D1ED51: FLdPr var_BC
  loc_D1ED54: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1ED59: FLdPr var_B8
  loc_D1ED5C:  = Me.Fields
  loc_D1ED61: FLdPr var_C4
  loc_D1ED64: from_stack_2 = Me.Item(from_stack_1)
  loc_D1ED69: LitI2_Byte 0
  loc_D1ED6B: LitVar_Missing var_158
  loc_D1ED6E: LitI2_Byte 0
  loc_D1ED70: FLdZeroAd var_134
  loc_D1ED73: CVarAd
  loc_D1ED77: PopAdLdVar
  loc_D1ED78: LitI4 1
  loc_D1ED7D: FLdPr Me
  loc_D1ED80: MemLdStr global_88
  loc_D1ED83: AryLock
  loc_D1ED86: Ary1LdPr
  loc_D1ED87: MemLdRfVar from_stack_1.global_284
  loc_D1ED8A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1ED8F: AryUnlock
  loc_D1ED92: FFreeAd var_B8 = ""
  loc_D1ED99: FFreeVar var_148 = ""
  loc_D1EDA0: FLdRfVar var_134
  loc_D1EDA3: LitVarStr var_A4, "Subparcela"
  loc_D1EDA8: PopAdLdVar
  loc_D1EDA9: FLdRfVar var_C4
  loc_D1EDAC: FLdRfVar var_B8
  loc_D1EDAF: FLdPr var_BC
  loc_D1EDB2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EDB7: FLdPr var_B8
  loc_D1EDBA:  = Me.Fields
  loc_D1EDBF: FLdPr var_C4
  loc_D1EDC2: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EDC7: LitI2_Byte 0
  loc_D1EDC9: LitVar_Missing var_158
  loc_D1EDCC: LitI2_Byte 0
  loc_D1EDCE: FLdZeroAd var_134
  loc_D1EDD1: CVarAd
  loc_D1EDD5: PopAdLdVar
  loc_D1EDD6: LitI4 1
  loc_D1EDDB: FLdPr Me
  loc_D1EDDE: MemLdStr global_88
  loc_D1EDE1: AryLock
  loc_D1EDE4: Ary1LdPr
  loc_D1EDE5: MemLdRfVar from_stack_1.global_288
  loc_D1EDE8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EDED: AryUnlock
  loc_D1EDF0: FFreeAd var_B8 = ""
  loc_D1EDF7: FFreeVar var_148 = ""
  loc_D1EDFE: FLdRfVar var_134
  loc_D1EE01: LitVarStr var_A4, "DigiVeri"
  loc_D1EE06: PopAdLdVar
  loc_D1EE07: FLdRfVar var_C4
  loc_D1EE0A: FLdRfVar var_B8
  loc_D1EE0D: FLdPr var_BC
  loc_D1EE10: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EE15: FLdPr var_B8
  loc_D1EE18:  = Me.Fields
  loc_D1EE1D: FLdPr var_C4
  loc_D1EE20: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EE25: LitI2_Byte 0
  loc_D1EE27: LitVar_Missing var_158
  loc_D1EE2A: LitI2_Byte 0
  loc_D1EE2C: FLdZeroAd var_134
  loc_D1EE2F: CVarAd
  loc_D1EE33: PopAdLdVar
  loc_D1EE34: LitI4 1
  loc_D1EE39: FLdPr Me
  loc_D1EE3C: MemLdStr global_88
  loc_D1EE3F: AryLock
  loc_D1EE42: Ary1LdPr
  loc_D1EE43: MemLdRfVar from_stack_1.global_292
  loc_D1EE46: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EE4B: AryUnlock
  loc_D1EE4E: FFreeAd var_B8 = ""
  loc_D1EE55: FFreeVar var_148 = ""
  loc_D1EE5C: FLdRfVar var_134
  loc_D1EE5F: LitVarStr var_A4, "CodiCallPostal"
  loc_D1EE64: PopAdLdVar
  loc_D1EE65: FLdRfVar var_C4
  loc_D1EE68: FLdRfVar var_B8
  loc_D1EE6B: FLdPr var_BC
  loc_D1EE6E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EE73: FLdPr var_B8
  loc_D1EE76:  = Me.Fields
  loc_D1EE7B: FLdPr var_C4
  loc_D1EE7E: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EE83: LitI2_Byte 0
  loc_D1EE85: LitVar_Missing var_158
  loc_D1EE88: LitI2_Byte 0
  loc_D1EE8A: FLdZeroAd var_134
  loc_D1EE8D: CVarAd
  loc_D1EE91: PopAdLdVar
  loc_D1EE92: LitI4 1
  loc_D1EE97: FLdPr Me
  loc_D1EE9A: MemLdStr global_88
  loc_D1EE9D: AryLock
  loc_D1EEA0: Ary1LdPr
  loc_D1EEA1: MemLdRfVar from_stack_1.global_108
  loc_D1EEA4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EEA9: AryUnlock
  loc_D1EEAC: FFreeAd var_B8 = ""
  loc_D1EEB3: FFreeVar var_148 = ""
  loc_D1EEBA: FLdRfVar var_134
  loc_D1EEBD: LitVarStr var_A4, "DetaCallPostal"
  loc_D1EEC2: PopAdLdVar
  loc_D1EEC3: FLdRfVar var_C4
  loc_D1EEC6: FLdRfVar var_B8
  loc_D1EEC9: FLdPr var_BC
  loc_D1EECC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EED1: FLdPr var_B8
  loc_D1EED4:  = Me.Fields
  loc_D1EED9: FLdPr var_C4
  loc_D1EEDC: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EEE1: LitI2_Byte 0
  loc_D1EEE3: LitVar_Missing var_158
  loc_D1EEE6: LitI2_Byte 0
  loc_D1EEE8: FLdZeroAd var_134
  loc_D1EEEB: CVarAd
  loc_D1EEEF: PopAdLdVar
  loc_D1EEF0: LitI4 1
  loc_D1EEF5: FLdPr Me
  loc_D1EEF8: MemLdStr global_88
  loc_D1EEFB: AryLock
  loc_D1EEFE: Ary1LdPr
  loc_D1EEFF: MemLdRfVar from_stack_1.global_112
  loc_D1EF02: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EF07: AryUnlock
  loc_D1EF0A: FFreeAd var_B8 = ""
  loc_D1EF11: FFreeVar var_148 = ""
  loc_D1EF18: FLdRfVar var_134
  loc_D1EF1B: LitVarStr var_A4, "NucaInmuPostal"
  loc_D1EF20: PopAdLdVar
  loc_D1EF21: FLdRfVar var_C4
  loc_D1EF24: FLdRfVar var_B8
  loc_D1EF27: FLdPr var_BC
  loc_D1EF2A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EF2F: FLdPr var_B8
  loc_D1EF32:  = Me.Fields
  loc_D1EF37: FLdPr var_C4
  loc_D1EF3A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EF3F: LitI2_Byte 0
  loc_D1EF41: LitVar_Missing var_158
  loc_D1EF44: LitI2_Byte 0
  loc_D1EF46: FLdZeroAd var_134
  loc_D1EF49: CVarAd
  loc_D1EF4D: PopAdLdVar
  loc_D1EF4E: LitI4 1
  loc_D1EF53: FLdPr Me
  loc_D1EF56: MemLdStr global_88
  loc_D1EF59: AryLock
  loc_D1EF5C: Ary1LdPr
  loc_D1EF5D: MemLdRfVar from_stack_1.global_120
  loc_D1EF60: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EF65: AryUnlock
  loc_D1EF68: FFreeAd var_B8 = ""
  loc_D1EF6F: FFreeVar var_148 = ""
  loc_D1EF76: FLdRfVar var_134
  loc_D1EF79: LitVarStr var_A4, "PisoInmuPostal"
  loc_D1EF7E: PopAdLdVar
  loc_D1EF7F: FLdRfVar var_C4
  loc_D1EF82: FLdRfVar var_B8
  loc_D1EF85: FLdPr var_BC
  loc_D1EF88: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EF8D: FLdPr var_B8
  loc_D1EF90:  = Me.Fields
  loc_D1EF95: FLdPr var_C4
  loc_D1EF98: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EF9D: LitI2_Byte 0
  loc_D1EF9F: LitVar_Missing var_158
  loc_D1EFA2: LitI2_Byte 0
  loc_D1EFA4: FLdZeroAd var_134
  loc_D1EFA7: CVarAd
  loc_D1EFAB: PopAdLdVar
  loc_D1EFAC: LitI4 1
  loc_D1EFB1: FLdPr Me
  loc_D1EFB4: MemLdStr global_88
  loc_D1EFB7: AryLock
  loc_D1EFBA: Ary1LdPr
  loc_D1EFBB: MemLdRfVar from_stack_1.global_124
  loc_D1EFBE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1EFC3: AryUnlock
  loc_D1EFC6: FFreeAd var_B8 = ""
  loc_D1EFCD: FFreeVar var_148 = ""
  loc_D1EFD4: FLdRfVar var_134
  loc_D1EFD7: LitVarStr var_A4, "DptoInmuPOstal"
  loc_D1EFDC: PopAdLdVar
  loc_D1EFDD: FLdRfVar var_C4
  loc_D1EFE0: FLdRfVar var_B8
  loc_D1EFE3: FLdPr var_BC
  loc_D1EFE6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1EFEB: FLdPr var_B8
  loc_D1EFEE:  = Me.Fields
  loc_D1EFF3: FLdPr var_C4
  loc_D1EFF6: from_stack_2 = Me.Item(from_stack_1)
  loc_D1EFFB: LitI2_Byte 0
  loc_D1EFFD: LitVar_Missing var_158
  loc_D1F000: LitI2_Byte 0
  loc_D1F002: FLdZeroAd var_134
  loc_D1F005: CVarAd
  loc_D1F009: PopAdLdVar
  loc_D1F00A: LitI4 1
  loc_D1F00F: FLdPr Me
  loc_D1F012: MemLdStr global_88
  loc_D1F015: AryLock
  loc_D1F018: Ary1LdPr
  loc_D1F019: MemLdRfVar from_stack_1.global_132
  loc_D1F01C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F021: AryUnlock
  loc_D1F024: FFreeAd var_B8 = ""
  loc_D1F02B: FFreeVar var_148 = ""
  loc_D1F032: FLdRfVar var_134
  loc_D1F035: LitVarStr var_A4, "MonoInmuPostal"
  loc_D1F03A: PopAdLdVar
  loc_D1F03B: FLdRfVar var_C4
  loc_D1F03E: FLdRfVar var_B8
  loc_D1F041: FLdPr var_BC
  loc_D1F044: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F049: FLdPr var_B8
  loc_D1F04C:  = Me.Fields
  loc_D1F051: FLdPr var_C4
  loc_D1F054: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F059: LitI2_Byte 0
  loc_D1F05B: LitVar_Missing var_158
  loc_D1F05E: LitI2_Byte 0
  loc_D1F060: FLdZeroAd var_134
  loc_D1F063: CVarAd
  loc_D1F067: PopAdLdVar
  loc_D1F068: LitI4 1
  loc_D1F06D: FLdPr Me
  loc_D1F070: MemLdStr global_88
  loc_D1F073: AryLock
  loc_D1F076: Ary1LdPr
  loc_D1F077: MemLdRfVar from_stack_1.global_140
  loc_D1F07A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F07F: AryUnlock
  loc_D1F082: FFreeAd var_B8 = ""
  loc_D1F089: FFreeVar var_148 = ""
  loc_D1F090: FLdRfVar var_134
  loc_D1F093: LitVarStr var_A4, "CodiBarrPostal"
  loc_D1F098: PopAdLdVar
  loc_D1F099: FLdRfVar var_C4
  loc_D1F09C: FLdRfVar var_B8
  loc_D1F09F: FLdPr var_BC
  loc_D1F0A2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F0A7: FLdPr var_B8
  loc_D1F0AA:  = Me.Fields
  loc_D1F0AF: FLdPr var_C4
  loc_D1F0B2: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F0B7: LitI2_Byte 0
  loc_D1F0B9: LitVar_Missing var_158
  loc_D1F0BC: LitI2_Byte 0
  loc_D1F0BE: FLdZeroAd var_134
  loc_D1F0C1: CVarAd
  loc_D1F0C5: PopAdLdVar
  loc_D1F0C6: LitI4 1
  loc_D1F0CB: FLdPr Me
  loc_D1F0CE: MemLdStr global_88
  loc_D1F0D1: AryLock
  loc_D1F0D4: Ary1LdPr
  loc_D1F0D5: MemLdRfVar from_stack_1.global_148
  loc_D1F0D8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F0DD: AryUnlock
  loc_D1F0E0: FFreeAd var_B8 = ""
  loc_D1F0E7: FFreeVar var_148 = ""
  loc_D1F0EE: FLdRfVar var_134
  loc_D1F0F1: LitVarStr var_A4, "DetaBarrpostal"
  loc_D1F0F6: PopAdLdVar
  loc_D1F0F7: FLdRfVar var_C4
  loc_D1F0FA: FLdRfVar var_B8
  loc_D1F0FD: FLdPr var_BC
  loc_D1F100: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F105: FLdPr var_B8
  loc_D1F108:  = Me.Fields
  loc_D1F10D: FLdPr var_C4
  loc_D1F110: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F115: LitI2_Byte 0
  loc_D1F117: LitVar_Missing var_158
  loc_D1F11A: LitI2_Byte 0
  loc_D1F11C: FLdZeroAd var_134
  loc_D1F11F: CVarAd
  loc_D1F123: PopAdLdVar
  loc_D1F124: LitI4 1
  loc_D1F129: FLdPr Me
  loc_D1F12C: MemLdStr global_88
  loc_D1F12F: AryLock
  loc_D1F132: Ary1LdPr
  loc_D1F133: MemLdRfVar from_stack_1.global_152
  loc_D1F136: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F13B: AryUnlock
  loc_D1F13E: FFreeAd var_B8 = ""
  loc_D1F145: FFreeVar var_148 = ""
  loc_D1F14C: FLdRfVar var_134
  loc_D1F14F: LitVarStr var_A4, "ManzInmuPostal"
  loc_D1F154: PopAdLdVar
  loc_D1F155: FLdRfVar var_C4
  loc_D1F158: FLdRfVar var_B8
  loc_D1F15B: FLdPr var_BC
  loc_D1F15E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F163: FLdPr var_B8
  loc_D1F166:  = Me.Fields
  loc_D1F16B: FLdPr var_C4
  loc_D1F16E: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F173: LitI2_Byte 0
  loc_D1F175: LitVar_Missing var_158
  loc_D1F178: LitI2_Byte 0
  loc_D1F17A: FLdZeroAd var_134
  loc_D1F17D: CVarAd
  loc_D1F181: PopAdLdVar
  loc_D1F182: LitI4 1
  loc_D1F187: FLdPr Me
  loc_D1F18A: MemLdStr global_88
  loc_D1F18D: AryLock
  loc_D1F190: Ary1LdPr
  loc_D1F191: MemLdRfVar from_stack_1.global_160
  loc_D1F194: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F199: AryUnlock
  loc_D1F19C: FFreeAd var_B8 = ""
  loc_D1F1A3: FFreeVar var_148 = ""
  loc_D1F1AA: FLdRfVar var_134
  loc_D1F1AD: LitVarStr var_A4, "CasaInmuPostal"
  loc_D1F1B2: PopAdLdVar
  loc_D1F1B3: FLdRfVar var_C4
  loc_D1F1B6: FLdRfVar var_B8
  loc_D1F1B9: FLdPr var_BC
  loc_D1F1BC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F1C1: FLdPr var_B8
  loc_D1F1C4:  = Me.Fields
  loc_D1F1C9: FLdPr var_C4
  loc_D1F1CC: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F1D1: LitI2_Byte 0
  loc_D1F1D3: LitVar_Missing var_158
  loc_D1F1D6: LitI2_Byte 0
  loc_D1F1D8: FLdZeroAd var_134
  loc_D1F1DB: CVarAd
  loc_D1F1DF: PopAdLdVar
  loc_D1F1E0: LitI4 1
  loc_D1F1E5: FLdPr Me
  loc_D1F1E8: MemLdStr global_88
  loc_D1F1EB: AryLock
  loc_D1F1EE: Ary1LdPr
  loc_D1F1EF: MemLdRfVar from_stack_1.global_168
  loc_D1F1F2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F1F7: AryUnlock
  loc_D1F1FA: FFreeAd var_B8 = ""
  loc_D1F201: FFreeVar var_148 = ""
  loc_D1F208: FLdRfVar var_134
  loc_D1F20B: LitVarStr var_A4, "LoteInmuPostal"
  loc_D1F210: PopAdLdVar
  loc_D1F211: FLdRfVar var_C4
  loc_D1F214: FLdRfVar var_B8
  loc_D1F217: FLdPr var_BC
  loc_D1F21A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F21F: FLdPr var_B8
  loc_D1F222:  = Me.Fields
  loc_D1F227: FLdPr var_C4
  loc_D1F22A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F22F: LitI2_Byte 0
  loc_D1F231: LitVar_Missing var_158
  loc_D1F234: LitI2_Byte 0
  loc_D1F236: FLdZeroAd var_134
  loc_D1F239: CVarAd
  loc_D1F23D: PopAdLdVar
  loc_D1F23E: LitI4 1
  loc_D1F243: FLdPr Me
  loc_D1F246: MemLdStr global_88
  loc_D1F249: AryLock
  loc_D1F24C: Ary1LdPr
  loc_D1F24D: MemLdRfVar from_stack_1.global_172
  loc_D1F250: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F255: AryUnlock
  loc_D1F258: FFreeAd var_B8 = ""
  loc_D1F25F: FFreeVar var_148 = ""
  loc_D1F266: FLdRfVar var_134
  loc_D1F269: LitVarStr var_A4, "UbicInmuPostal"
  loc_D1F26E: PopAdLdVar
  loc_D1F26F: FLdRfVar var_C4
  loc_D1F272: FLdRfVar var_B8
  loc_D1F275: FLdPr var_BC
  loc_D1F278: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F27D: FLdPr var_B8
  loc_D1F280:  = Me.Fields
  loc_D1F285: FLdPr var_C4
  loc_D1F288: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F28D: LitI2_Byte 0
  loc_D1F28F: LitVar_Missing var_158
  loc_D1F292: LitI2_Byte 0
  loc_D1F294: FLdZeroAd var_134
  loc_D1F297: CVarAd
  loc_D1F29B: PopAdLdVar
  loc_D1F29C: LitI4 1
  loc_D1F2A1: FLdPr Me
  loc_D1F2A4: MemLdStr global_88
  loc_D1F2A7: AryLock
  loc_D1F2AA: Ary1LdPr
  loc_D1F2AB: MemLdRfVar from_stack_1.global_180
  loc_D1F2AE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F2B3: AryUnlock
  loc_D1F2B6: FFreeAd var_B8 = ""
  loc_D1F2BD: FFreeVar var_148 = ""
  loc_D1F2C4: FLdRfVar var_134
  loc_D1F2C7: LitVarStr var_A4, "CodiLocaPostal"
  loc_D1F2CC: PopAdLdVar
  loc_D1F2CD: FLdRfVar var_C4
  loc_D1F2D0: FLdRfVar var_B8
  loc_D1F2D3: FLdPr var_BC
  loc_D1F2D6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F2DB: FLdPr var_B8
  loc_D1F2DE:  = Me.Fields
  loc_D1F2E3: FLdPr var_C4
  loc_D1F2E6: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F2EB: LitI2_Byte 0
  loc_D1F2ED: LitVar_Missing var_158
  loc_D1F2F0: LitI2_Byte 0
  loc_D1F2F2: FLdZeroAd var_134
  loc_D1F2F5: CVarAd
  loc_D1F2F9: PopAdLdVar
  loc_D1F2FA: LitI4 1
  loc_D1F2FF: FLdPr Me
  loc_D1F302: MemLdStr global_88
  loc_D1F305: AryLock
  loc_D1F308: Ary1LdPr
  loc_D1F309: MemLdRfVar from_stack_1.global_184
  loc_D1F30C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F311: AryUnlock
  loc_D1F314: FFreeAd var_B8 = ""
  loc_D1F31B: FFreeVar var_148 = ""
  loc_D1F322: FLdRfVar var_134
  loc_D1F325: LitVarStr var_A4, "DetaLocaPostal"
  loc_D1F32A: PopAdLdVar
  loc_D1F32B: FLdRfVar var_C4
  loc_D1F32E: FLdRfVar var_B8
  loc_D1F331: FLdPr var_BC
  loc_D1F334: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F339: FLdPr var_B8
  loc_D1F33C:  = Me.Fields
  loc_D1F341: FLdPr var_C4
  loc_D1F344: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F349: LitI2_Byte 0
  loc_D1F34B: LitVar_Missing var_158
  loc_D1F34E: LitI2_Byte 0
  loc_D1F350: FLdZeroAd var_134
  loc_D1F353: CVarAd
  loc_D1F357: PopAdLdVar
  loc_D1F358: LitI4 1
  loc_D1F35D: FLdPr Me
  loc_D1F360: MemLdStr global_88
  loc_D1F363: AryLock
  loc_D1F366: Ary1LdPr
  loc_D1F367: MemLdRfVar from_stack_1.global_188
  loc_D1F36A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F36F: AryUnlock
  loc_D1F372: FFreeAd var_B8 = ""
  loc_D1F379: FFreeVar var_148 = ""
  loc_D1F380: FLdRfVar var_134
  loc_D1F383: LitVarStr var_A4, "CopoInmuPostal"
  loc_D1F388: PopAdLdVar
  loc_D1F389: FLdRfVar var_C4
  loc_D1F38C: FLdRfVar var_B8
  loc_D1F38F: FLdPr var_BC
  loc_D1F392: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F397: FLdPr var_B8
  loc_D1F39A:  = Me.Fields
  loc_D1F39F: FLdPr var_C4
  loc_D1F3A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F3A7: LitI2_Byte 0
  loc_D1F3A9: LitVar_Missing var_158
  loc_D1F3AC: LitI2_Byte 0
  loc_D1F3AE: FLdZeroAd var_134
  loc_D1F3B1: CVarAd
  loc_D1F3B5: PopAdLdVar
  loc_D1F3B6: LitI4 1
  loc_D1F3BB: FLdPr Me
  loc_D1F3BE: MemLdStr global_88
  loc_D1F3C1: AryLock
  loc_D1F3C4: Ary1LdPr
  loc_D1F3C5: MemLdRfVar from_stack_1.global_196
  loc_D1F3C8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F3CD: AryUnlock
  loc_D1F3D0: FFreeAd var_B8 = ""
  loc_D1F3D7: FFreeVar var_148 = ""
  loc_D1F3DE: LitStr "SELECT inmurentas.CodiExce, IFNULL(DetaExce,'') DetaExce, FfexInmu "
  loc_D1F3E1: LitStr " FROM inmurentas"
  loc_D1F3E4: ConcatStr
  loc_D1F3E5: FStStrNoPop var_D0
  loc_D1F3E8: LitStr " LEFT JOIN eximicion ON eximicion.CodiExce = inmurentas.CodiExce"
  loc_D1F3EB: ConcatStr
  loc_D1F3EC: FStStrNoPop var_D4
  loc_D1F3EF: LitStr " WHERE CodiInmu = "
  loc_D1F3F2: ConcatStr
  loc_D1F3F3: FStStrNoPop var_DC
  loc_D1F3F6: FLdRfVar var_D8
  loc_D1F3F9: FLdPr Me
  loc_D1F3FC: VCallAd Control_ID_NumeCtaTxt
  loc_D1F3FF: FStAdFunc var_B8
  loc_D1F402: FLdPr var_B8
  loc_D1F405:  = Me.Text
  loc_D1F40A: ILdRf var_D8
  loc_D1F40D: ConcatStr
  loc_D1F40E: FStStrNoPop var_E0
  loc_D1F411: FLdPr var_BC
  loc_D1F414: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D1F419: FFreeStr var_D0 = "": var_D4 = "": var_DC = "": var_D8 = ""
  loc_D1F426: FFree1Ad var_B8
  loc_D1F429: FLdRfVar var_C8
  loc_D1F42C: FLdPr var_BC
  loc_D1F42F: from_stack_1 = clsboleto.RecordCount
  loc_D1F434: ILdRf var_C8
  loc_D1F437: LitI4 0
  loc_D1F43C: GtI4
  loc_D1F43D: BranchF loc_D1F556
  loc_D1F440: FLdRfVar var_148
  loc_D1F443: FLdRfVar var_134
  loc_D1F446: LitVarStr var_A4, "CodiExce"
  loc_D1F44B: PopAdLdVar
  loc_D1F44C: FLdRfVar var_C4
  loc_D1F44F: FLdRfVar var_B8
  loc_D1F452: FLdPr var_BC
  loc_D1F455: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F45A: FLdPr var_B8
  loc_D1F45D:  = Me.Fields
  loc_D1F462: FLdPr var_C4
  loc_D1F465: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F46A: FLdPr var_134
  loc_D1F46D:  = Me.Value
  loc_D1F472: FLdRfVar var_184
  loc_D1F475: FLdRfVar var_174
  loc_D1F478: LitVarStr var_170, "DetaExce"
  loc_D1F47D: PopAdLdVar
  loc_D1F47E: FLdRfVar var_160
  loc_D1F481: FLdRfVar var_15C
  loc_D1F484: FLdPr var_BC
  loc_D1F487: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F48C: FLdPr var_15C
  loc_D1F48F:  = Me.Fields
  loc_D1F494: FLdPr var_160
  loc_D1F497: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F49C: FLdPr var_174
  loc_D1F49F:  = Me.Value
  loc_D1F4A4: LitI2_Byte 0
  loc_D1F4A6: LitVar_Missing var_1B4
  loc_D1F4A9: LitI2_Byte 0
  loc_D1F4AB: FLdRfVar var_148
  loc_D1F4AE: LitVarStr var_B4, " - "
  loc_D1F4B3: ConcatVar var_158
  loc_D1F4B7: FLdRfVar var_184
  loc_D1F4BA: ConcatVar var_194
  loc_D1F4BE: PopAdLdVar
  loc_D1F4BF: LitI4 1
  loc_D1F4C4: FLdPr Me
  loc_D1F4C7: MemLdStr global_88
  loc_D1F4CA: AryLock
  loc_D1F4CD: Ary1LdPr
  loc_D1F4CE: MemLdRfVar from_stack_1.global_296
  loc_D1F4D1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F4D6: AryUnlock
  loc_D1F4D9: FFreeAd var_B8 = "": var_C4 = "": var_134 = "": var_15C = "": var_160 = ""
  loc_D1F4E8: FFreeVar var_148 = "": var_158 = "": var_184 = "": var_194 = ""
  loc_D1F4F5: FLdRfVar var_134
  loc_D1F4F8: LitVarStr var_A4, "FfexInmu"
  loc_D1F4FD: PopAdLdVar
  loc_D1F4FE: FLdRfVar var_C4
  loc_D1F501: FLdRfVar var_B8
  loc_D1F504: FLdPr var_BC
  loc_D1F507: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F50C: FLdPr var_B8
  loc_D1F50F:  = Me.Fields
  loc_D1F514: FLdPr var_C4
  loc_D1F517: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F51C: LitI2_Byte 0
  loc_D1F51E: LitVar_Missing var_158
  loc_D1F521: LitI2_Byte 0
  loc_D1F523: FLdZeroAd var_134
  loc_D1F526: CVarAd
  loc_D1F52A: PopAdLdVar
  loc_D1F52B: LitI4 1
  loc_D1F530: FLdPr Me
  loc_D1F533: MemLdStr global_88
  loc_D1F536: AryLock
  loc_D1F539: Ary1LdPr
  loc_D1F53A: MemLdRfVar from_stack_1.global_300
  loc_D1F53D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F542: AryUnlock
  loc_D1F545: FFreeAd var_B8 = ""
  loc_D1F54C: FFreeVar var_148 = ""
  loc_D1F553: Branch loc_D1F5AA
  loc_D1F556: LitI2_Byte 0
  loc_D1F558: LitVar_Missing var_148
  loc_D1F55B: LitI2_Byte 0
  loc_D1F55D: LitVarStr var_A4, vbNullString
  loc_D1F562: PopAdLdVar
  loc_D1F563: LitI4 1
  loc_D1F568: FLdPr Me
  loc_D1F56B: MemLdStr global_88
  loc_D1F56E: AryLock
  loc_D1F571: Ary1LdPr
  loc_D1F572: MemLdRfVar from_stack_1.global_296
  loc_D1F575: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F57A: AryUnlock
  loc_D1F57D: FFree1Var var_148 = ""
  loc_D1F580: LitI2_Byte 0
  loc_D1F582: LitVar_Missing var_148
  loc_D1F585: LitI2_Byte 0
  loc_D1F587: LitVarStr var_A4, vbNullString
  loc_D1F58C: PopAdLdVar
  loc_D1F58D: LitI4 1
  loc_D1F592: FLdPr Me
  loc_D1F595: MemLdStr global_88
  loc_D1F598: AryLock
  loc_D1F59B: Ary1LdPr
  loc_D1F59C: MemLdRfVar from_stack_1.global_300
  loc_D1F59F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F5A4: AryUnlock
  loc_D1F5A7: FFree1Var var_148 = ""
  loc_D1F5AA: Call Proc_285_19_B3A2F8()
  loc_D1F5AF: Branch loc_D21B74
  loc_D1F5B2: ILdRf var_CC
  loc_D1F5B5: LitI4 2
  loc_D1F5BA: EqI4
  loc_D1F5BB: BranchF loc_D20892
  loc_D1F5BE: LitStr "SELECT comercio.CodiCome, comercio.CucuCome, comercio.CucuPers, comercio.CodiEsco, DetaEsco, FeesCome, CodiInmu, CucuCome, RazoCome, DetaPers,"
  loc_D1F5C1: LitStr " domireal.CodiCalle CodiCallReal, domireal.Calle DetaCallReal, domireal.NumeCalle NucaComeReal, domireal.CodiBarrio CodiBarrReal, domireal.Barrio DetaBarrReal,"
  loc_D1F5C4: ConcatStr
  loc_D1F5C5: FStStrNoPop var_D0
  loc_D1F5C8: LitStr " domireal.Manzana ManzComeReal, domireal.Casa CasaComeReal, concat(domireal.Dpto,' ',domireal.Planta,' ',domireal.MonoBlock)  UbicComeReal, domireal.CodiLoca CodiLocaReal,"
  loc_D1F5CB: ConcatStr
  loc_D1F5CC: FStStrNoPop var_D4
  loc_D1F5CF: LitStr " domireal.Localidad DetaLocaReal, domireal.CodPostal CopoComeReal,"
  loc_D1F5D2: ConcatStr
  loc_D1F5D3: FStStrNoPop var_D8
  loc_D1F5D6: LitStr " domipostal.CodiCalle CodiCallPostal, domipostal.Calle DetaCallPostal,"
  loc_D1F5D9: ConcatStr
  loc_D1F5DA: FStStrNoPop var_DC
  loc_D1F5DD: LitStr " domipostal.NumeCalle NucaComePostal, domipostal.CodiBarrio CodiBarrPostal, domipostal.Barrio DetaBarrPostal,"
  loc_D1F5E0: ConcatStr
  loc_D1F5E1: FStStrNoPop var_E0
  loc_D1F5E4: LitStr " domipostal.Manzana ManzComePostal, domipostal.Casa CasaComePostal,"
  loc_D1F5E7: ConcatStr
  loc_D1F5E8: FStStrNoPop var_E4
  loc_D1F5EB: LitStr " domipostal.Planta PisoComePostal, domipostal.Dpto DptoComePostal, domipostal.MonoBlock MonoComePostal,"
  loc_D1F5EE: ConcatStr
  loc_D1F5EF: FStStrNoPop var_E8
  loc_D1F5F2: LitStr " domipostal.ubicacion UbicComePostal,"
  loc_D1F5F5: ConcatStr
  loc_D1F5F6: FStStrNoPop var_EC
  loc_D1F5F9: LitStr " domipostal.CodiLoca CodiLocaPostal, domipostal.Localidad DetaLocaPostal, domipostal.CodPostal CopoComePostal,"
  loc_D1F5FC: ConcatStr
  loc_D1F5FD: FStStrNoPop var_F0
  loc_D1F600: LitStr " comercio.FeapCome FechaApertura, comercio.ExpeCome ExpeApertura, comercio.FebaCome FechaBaja, comercio.ExbaCome ExpeBaja, comercio.LibrCome Libro, comercio.ClasCome clasificacion,  comercio.Exp1Come Expediente, comercio.NureCome NumeReso, comercio.FetrCome FechaTrans, comercio.ExtrCome ExpeTrans, comercio.ClasiCome ClasifMod, comercio.ResoCome Resolucion"
  loc_D1F603: ConcatStr
  loc_D1F604: FStStrNoPop var_F4
  loc_D1F607: LitStr " FROM comercio "
  loc_D1F60A: ConcatStr
  loc_D1F60B: FStStrNoPop var_F8
  loc_D1F60E: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = comercio.CucuPers"
  loc_D1F611: ConcatStr
  loc_D1F612: FStStrNoPop var_FC
  loc_D1F615: LitStr " INNER JOIN estacome ON estacome.CodiEsco = comercio.CodiEsco"
  loc_D1F618: ConcatStr
  loc_D1F619: FStStrNoPop var_100
  loc_D1F61C: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 2"
  loc_D1F61F: ConcatStr
  loc_D1F620: FStStrNoPop var_104
  loc_D1F623: LitStr " AND  domireal.CodiCome = comercio.CodiCome"
  loc_D1F626: ConcatStr
  loc_D1F627: FStStrNoPop var_108
  loc_D1F62A: LitStr " AND domireal.Tipo = 'Comercial'"
  loc_D1F62D: ConcatStr
  loc_D1F62E: FStStrNoPop var_10C
  loc_D1F631: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 2"
  loc_D1F634: ConcatStr
  loc_D1F635: FStStrNoPop var_110
  loc_D1F638: LitStr " AND  domipostal.CodiCome = comercio.CodiCome"
  loc_D1F63B: ConcatStr
  loc_D1F63C: FStStrNoPop var_114
  loc_D1F63F: LitStr " AND domipostal.Tipo = 'Postal'"
  loc_D1F642: ConcatStr
  loc_D1F643: FStStrNoPop var_118
  loc_D1F646: LitStr " WHERE comercio.CodiCome = "
  loc_D1F649: ConcatStr
  loc_D1F64A: FStStrNoPop var_120
  loc_D1F64D: FLdRfVar var_11C
  loc_D1F650: FLdPr Me
  loc_D1F653: VCallAd Control_ID_NumeCtaTxt
  loc_D1F656: FStAdFunc var_B8
  loc_D1F659: FLdPr var_B8
  loc_D1F65C:  = Me.Text
  loc_D1F661: ILdRf var_11C
  loc_D1F664: ConcatStr
  loc_D1F665: FStStrNoPop var_124
  loc_D1F668: FLdPr var_BC
  loc_D1F66B: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D1F670: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_120 = "": var_11C = ""
  loc_D1F69F: FFree1Ad var_B8
  loc_D1F6A2: FLdRfVar var_C8
  loc_D1F6A5: FLdPr var_BC
  loc_D1F6A8: from_stack_1 = clsboleto.RecordCount
  loc_D1F6AD: ILdRf var_C8
  loc_D1F6B0: LitI4 0
  loc_D1F6B5: EqI4
  loc_D1F6B6: BranchF loc_D1F6C4
  loc_D1F6B9: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_D1F6BC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D1F6C1: Branch loc_D21B87
  loc_D1F6C4: LitI4 0
  loc_D1F6C9: LitI4 1
  loc_D1F6CE: FLdPr Me
  loc_D1F6D1: MemLdRfVar from_stack_1.global_88
  loc_D1F6D4: Redim
  loc_D1F6DE: FLdPr var_BC
  loc_D1F6E1: Call clsboleto.MoveFirst()
  loc_D1F6E6: FLdRfVar var_134
  loc_D1F6E9: LitVarStr var_A4, "CodiCome"
  loc_D1F6EE: PopAdLdVar
  loc_D1F6EF: FLdRfVar var_C4
  loc_D1F6F2: FLdRfVar var_B8
  loc_D1F6F5: FLdPr var_BC
  loc_D1F6F8: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F6FD: FLdPr var_B8
  loc_D1F700:  = Me.Fields
  loc_D1F705: FLdPr var_C4
  loc_D1F708: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F70D: LitI2_Byte 0
  loc_D1F70F: LitVar_Missing var_158
  loc_D1F712: LitI2_Byte 0
  loc_D1F714: FLdZeroAd var_134
  loc_D1F717: CVarAd
  loc_D1F71B: PopAdLdVar
  loc_D1F71C: LitI4 1
  loc_D1F721: FLdPr Me
  loc_D1F724: MemLdStr global_88
  loc_D1F727: AryLock
  loc_D1F72A: Ary1LdPr
  loc_D1F72B: MemLdRfVar from_stack_1.global_0
  loc_D1F72E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F733: AryUnlock
  loc_D1F736: FFreeAd var_B8 = ""
  loc_D1F73D: FFreeVar var_148 = ""
  loc_D1F744: FLdRfVar var_134
  loc_D1F747: LitVarStr var_A4, "CucuCome"
  loc_D1F74C: PopAdLdVar
  loc_D1F74D: FLdRfVar var_C4
  loc_D1F750: FLdRfVar var_B8
  loc_D1F753: FLdPr var_BC
  loc_D1F756: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F75B: FLdPr var_B8
  loc_D1F75E:  = Me.Fields
  loc_D1F763: FLdPr var_C4
  loc_D1F766: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F76B: LitI2_Byte 0
  loc_D1F76D: LitVar_Missing var_158
  loc_D1F770: LitI2_Byte 0
  loc_D1F772: FLdZeroAd var_134
  loc_D1F775: CVarAd
  loc_D1F779: PopAdLdVar
  loc_D1F77A: LitI4 1
  loc_D1F77F: FLdPr Me
  loc_D1F782: MemLdStr global_88
  loc_D1F785: AryLock
  loc_D1F788: Ary1LdPr
  loc_D1F789: MemLdRfVar from_stack_1.global_4
  loc_D1F78C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F791: AryUnlock
  loc_D1F794: FFreeAd var_B8 = ""
  loc_D1F79B: FFreeVar var_148 = ""
  loc_D1F7A2: FLdRfVar var_134
  loc_D1F7A5: LitVarStr var_A4, "RazoCome"
  loc_D1F7AA: PopAdLdVar
  loc_D1F7AB: FLdRfVar var_C4
  loc_D1F7AE: FLdRfVar var_B8
  loc_D1F7B1: FLdPr var_BC
  loc_D1F7B4: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F7B9: FLdPr var_B8
  loc_D1F7BC:  = Me.Fields
  loc_D1F7C1: FLdPr var_C4
  loc_D1F7C4: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F7C9: LitI2_Byte 0
  loc_D1F7CB: LitVar_Missing var_158
  loc_D1F7CE: LitI2_Byte 0
  loc_D1F7D0: FLdZeroAd var_134
  loc_D1F7D3: CVarAd
  loc_D1F7D7: PopAdLdVar
  loc_D1F7D8: LitI4 1
  loc_D1F7DD: FLdPr Me
  loc_D1F7E0: MemLdStr global_88
  loc_D1F7E3: AryLock
  loc_D1F7E6: Ary1LdPr
  loc_D1F7E7: MemLdRfVar from_stack_1.global_8
  loc_D1F7EA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F7EF: AryUnlock
  loc_D1F7F2: FFreeAd var_B8 = ""
  loc_D1F7F9: FFreeVar var_148 = ""
  loc_D1F800: FLdRfVar var_134
  loc_D1F803: LitVarStr var_A4, "CucuPers"
  loc_D1F808: PopAdLdVar
  loc_D1F809: FLdRfVar var_C4
  loc_D1F80C: FLdRfVar var_B8
  loc_D1F80F: FLdPr var_BC
  loc_D1F812: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F817: FLdPr var_B8
  loc_D1F81A:  = Me.Fields
  loc_D1F81F: FLdPr var_C4
  loc_D1F822: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F827: LitI2_Byte 0
  loc_D1F829: LitVar_Missing var_158
  loc_D1F82C: LitI2_Byte 0
  loc_D1F82E: FLdZeroAd var_134
  loc_D1F831: CVarAd
  loc_D1F835: PopAdLdVar
  loc_D1F836: LitI4 1
  loc_D1F83B: FLdPr Me
  loc_D1F83E: MemLdStr global_88
  loc_D1F841: AryLock
  loc_D1F844: Ary1LdPr
  loc_D1F845: MemLdRfVar from_stack_1.global_12
  loc_D1F848: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F84D: AryUnlock
  loc_D1F850: FFreeAd var_B8 = ""
  loc_D1F857: FFreeVar var_148 = ""
  loc_D1F85E: FLdRfVar var_134
  loc_D1F861: LitVarStr var_A4, "DetaPers"
  loc_D1F866: PopAdLdVar
  loc_D1F867: FLdRfVar var_C4
  loc_D1F86A: FLdRfVar var_B8
  loc_D1F86D: FLdPr var_BC
  loc_D1F870: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F875: FLdPr var_B8
  loc_D1F878:  = Me.Fields
  loc_D1F87D: FLdPr var_C4
  loc_D1F880: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F885: LitI2_Byte 0
  loc_D1F887: LitVar_Missing var_158
  loc_D1F88A: LitI2_Byte 0
  loc_D1F88C: FLdZeroAd var_134
  loc_D1F88F: CVarAd
  loc_D1F893: PopAdLdVar
  loc_D1F894: LitI4 1
  loc_D1F899: FLdPr Me
  loc_D1F89C: MemLdStr global_88
  loc_D1F89F: AryLock
  loc_D1F8A2: Ary1LdPr
  loc_D1F8A3: MemLdRfVar from_stack_1.global_16
  loc_D1F8A6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F8AB: AryUnlock
  loc_D1F8AE: FFreeAd var_B8 = ""
  loc_D1F8B5: FFreeVar var_148 = ""
  loc_D1F8BC: FLdRfVar var_134
  loc_D1F8BF: LitVarStr var_A4, "CodiInmu"
  loc_D1F8C4: PopAdLdVar
  loc_D1F8C5: FLdRfVar var_C4
  loc_D1F8C8: FLdRfVar var_B8
  loc_D1F8CB: FLdPr var_BC
  loc_D1F8CE: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F8D3: FLdPr var_B8
  loc_D1F8D6:  = Me.Fields
  loc_D1F8DB: FLdPr var_C4
  loc_D1F8DE: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F8E3: LitI2_Byte 0
  loc_D1F8E5: LitVar_Missing var_158
  loc_D1F8E8: LitI2_Byte 0
  loc_D1F8EA: FLdZeroAd var_134
  loc_D1F8ED: CVarAd
  loc_D1F8F1: PopAdLdVar
  loc_D1F8F2: LitI4 1
  loc_D1F8F7: FLdPr Me
  loc_D1F8FA: MemLdStr global_88
  loc_D1F8FD: AryLock
  loc_D1F900: Ary1LdPr
  loc_D1F901: MemLdRfVar from_stack_1.global_20
  loc_D1F904: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F909: AryUnlock
  loc_D1F90C: FFreeAd var_B8 = ""
  loc_D1F913: FFreeVar var_148 = ""
  loc_D1F91A: FLdRfVar var_148
  loc_D1F91D: FLdRfVar var_134
  loc_D1F920: LitVarStr var_A4, "CodiInmu"
  loc_D1F925: PopAdLdVar
  loc_D1F926: FLdRfVar var_C4
  loc_D1F929: FLdRfVar var_B8
  loc_D1F92C: FLdPr var_BC
  loc_D1F92F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F934: FLdPr var_B8
  loc_D1F937:  = Me.Fields
  loc_D1F93C: FLdPr var_C4
  loc_D1F93F: from_stack_2 = Me.Item(from_stack_1)
  loc_D1F944: FLdPr var_134
  loc_D1F947:  = Me.Value
  loc_D1F94C: FLdPr Me
  loc_D1F94F: MemLdRfVar from_stack_1.global_124
  loc_D1F952: NewIfNullRf
  loc_D1F956: FLdRfVar var_148
  loc_D1F959: CStrVarTmp
  loc_D1F95A: FStStrNoPop var_D0
  loc_D1F95D: ImpAdCallI2  = Proc_270_13_C86920()
  loc_D1F962: LitI2_Byte &HFF
  loc_D1F964: EqI2
  loc_D1F965: FFree1Str var_D0
  loc_D1F968: FFreeAd var_B8 = "": var_C4 = ""
  loc_D1F971: FFree1Var var_148 = ""
  loc_D1F974: BranchF loc_D1F9B7
  loc_D1F977: FLdRfVar var_D0
  loc_D1F97A: FLdPr Me
  loc_D1F97D: MemLdRfVar from_stack_1.global_124
  loc_D1F980: NewIfNullPr tblPersonaGIS
  loc_D1F983: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_D1F988: LitI2_Byte 0
  loc_D1F98A: LitVar_Missing var_158
  loc_D1F98D: LitI2_Byte 0
  loc_D1F98F: FLdZeroAd var_D0
  loc_D1F992: CVarStr var_148
  loc_D1F995: PopAdLdVar
  loc_D1F996: LitI4 1
  loc_D1F99B: FLdPr Me
  loc_D1F99E: MemLdStr global_88
  loc_D1F9A1: AryLock
  loc_D1F9A4: Ary1LdPr
  loc_D1F9A5: MemLdRfVar from_stack_1.global_24
  loc_D1F9A8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F9AD: AryUnlock
  loc_D1F9B0: FFreeVar var_148 = ""
  loc_D1F9B7: LitI2_Byte 0
  loc_D1F9B9: LitVar_Missing var_148
  loc_D1F9BC: LitI2_Byte 0
  loc_D1F9BE: LitVarStr var_A4, vbNullString
  loc_D1F9C3: PopAdLdVar
  loc_D1F9C4: LitI4 1
  loc_D1F9C9: FLdPr Me
  loc_D1F9CC: MemLdStr global_88
  loc_D1F9CF: AryLock
  loc_D1F9D2: Ary1LdPr
  loc_D1F9D3: MemLdRfVar from_stack_1.global_24
  loc_D1F9D6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1F9DB: AryUnlock
  loc_D1F9DE: FFree1Var var_148 = ""
  loc_D1F9E1: FLdRfVar var_148
  loc_D1F9E4: FLdRfVar var_134
  loc_D1F9E7: LitVarStr var_A4, "CodiEsco"
  loc_D1F9EC: PopAdLdVar
  loc_D1F9ED: FLdRfVar var_C4
  loc_D1F9F0: FLdRfVar var_B8
  loc_D1F9F3: FLdPr var_BC
  loc_D1F9F6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1F9FB: FLdPr var_B8
  loc_D1F9FE:  = Me.Fields
  loc_D1FA03: FLdPr var_C4
  loc_D1FA06: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FA0B: FLdPr var_134
  loc_D1FA0E:  = Me.Value
  loc_D1FA13: FLdRfVar var_184
  loc_D1FA16: FLdRfVar var_174
  loc_D1FA19: LitVarStr var_170, "DetaEsco"
  loc_D1FA1E: PopAdLdVar
  loc_D1FA1F: FLdRfVar var_160
  loc_D1FA22: FLdRfVar var_15C
  loc_D1FA25: FLdPr var_BC
  loc_D1FA28: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FA2D: FLdPr var_15C
  loc_D1FA30:  = Me.Fields
  loc_D1FA35: FLdPr var_160
  loc_D1FA38: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FA3D: FLdPr var_174
  loc_D1FA40:  = Me.Value
  loc_D1FA45: LitI2_Byte 0
  loc_D1FA47: LitVar_Missing var_1B4
  loc_D1FA4A: LitI2_Byte 0
  loc_D1FA4C: FLdRfVar var_148
  loc_D1FA4F: LitVarStr var_B4, " - "
  loc_D1FA54: ConcatVar var_158
  loc_D1FA58: FLdRfVar var_184
  loc_D1FA5B: ConcatVar var_194
  loc_D1FA5F: PopAdLdVar
  loc_D1FA60: LitI4 1
  loc_D1FA65: FLdPr Me
  loc_D1FA68: MemLdStr global_88
  loc_D1FA6B: AryLock
  loc_D1FA6E: Ary1LdPr
  loc_D1FA6F: MemLdRfVar from_stack_1.global_32
  loc_D1FA72: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FA77: AryUnlock
  loc_D1FA7A: FFreeAd var_B8 = "": var_C4 = "": var_134 = "": var_15C = "": var_160 = ""
  loc_D1FA89: FFreeVar var_148 = "": var_158 = "": var_184 = "": var_194 = ""
  loc_D1FA96: FLdRfVar var_134
  loc_D1FA99: LitVarStr var_A4, "FeesCome"
  loc_D1FA9E: PopAdLdVar
  loc_D1FA9F: FLdRfVar var_C4
  loc_D1FAA2: FLdRfVar var_B8
  loc_D1FAA5: FLdPr var_BC
  loc_D1FAA8: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FAAD: FLdPr var_B8
  loc_D1FAB0:  = Me.Fields
  loc_D1FAB5: FLdPr var_C4
  loc_D1FAB8: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FABD: LitI2_Byte 0
  loc_D1FABF: LitVar_Missing var_158
  loc_D1FAC2: LitI2_Byte 0
  loc_D1FAC4: FLdZeroAd var_134
  loc_D1FAC7: CVarAd
  loc_D1FACB: PopAdLdVar
  loc_D1FACC: LitI4 1
  loc_D1FAD1: FLdPr Me
  loc_D1FAD4: MemLdStr global_88
  loc_D1FAD7: AryLock
  loc_D1FADA: Ary1LdPr
  loc_D1FADB: MemLdRfVar from_stack_1.global_36
  loc_D1FADE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FAE3: AryUnlock
  loc_D1FAE6: FFreeAd var_B8 = ""
  loc_D1FAED: FFreeVar var_148 = ""
  loc_D1FAF4: FLdRfVar var_134
  loc_D1FAF7: LitVarStr var_A4, "CodiCallReal"
  loc_D1FAFC: PopAdLdVar
  loc_D1FAFD: FLdRfVar var_C4
  loc_D1FB00: FLdRfVar var_B8
  loc_D1FB03: FLdPr var_BC
  loc_D1FB06: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FB0B: FLdPr var_B8
  loc_D1FB0E:  = Me.Fields
  loc_D1FB13: FLdPr var_C4
  loc_D1FB16: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FB1B: LitI2_Byte 0
  loc_D1FB1D: LitVar_Missing var_158
  loc_D1FB20: LitI2_Byte 0
  loc_D1FB22: FLdZeroAd var_134
  loc_D1FB25: CVarAd
  loc_D1FB29: PopAdLdVar
  loc_D1FB2A: LitI4 1
  loc_D1FB2F: FLdPr Me
  loc_D1FB32: MemLdStr global_88
  loc_D1FB35: AryLock
  loc_D1FB38: Ary1LdPr
  loc_D1FB39: MemLdRfVar from_stack_1.global_40
  loc_D1FB3C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FB41: AryUnlock
  loc_D1FB44: FFreeAd var_B8 = ""
  loc_D1FB4B: FFreeVar var_148 = ""
  loc_D1FB52: FLdRfVar var_134
  loc_D1FB55: LitVarStr var_A4, "DetaCallReal"
  loc_D1FB5A: PopAdLdVar
  loc_D1FB5B: FLdRfVar var_C4
  loc_D1FB5E: FLdRfVar var_B8
  loc_D1FB61: FLdPr var_BC
  loc_D1FB64: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FB69: FLdPr var_B8
  loc_D1FB6C:  = Me.Fields
  loc_D1FB71: FLdPr var_C4
  loc_D1FB74: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FB79: LitI2_Byte 0
  loc_D1FB7B: LitVar_Missing var_158
  loc_D1FB7E: LitI2_Byte 0
  loc_D1FB80: FLdZeroAd var_134
  loc_D1FB83: CVarAd
  loc_D1FB87: PopAdLdVar
  loc_D1FB88: LitI4 1
  loc_D1FB8D: FLdPr Me
  loc_D1FB90: MemLdStr global_88
  loc_D1FB93: AryLock
  loc_D1FB96: Ary1LdPr
  loc_D1FB97: MemLdRfVar from_stack_1.global_44
  loc_D1FB9A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FB9F: AryUnlock
  loc_D1FBA2: FFreeAd var_B8 = ""
  loc_D1FBA9: FFreeVar var_148 = ""
  loc_D1FBB0: FLdRfVar var_134
  loc_D1FBB3: LitVarStr var_A4, "NucaComeReal"
  loc_D1FBB8: PopAdLdVar
  loc_D1FBB9: FLdRfVar var_C4
  loc_D1FBBC: FLdRfVar var_B8
  loc_D1FBBF: FLdPr var_BC
  loc_D1FBC2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FBC7: FLdPr var_B8
  loc_D1FBCA:  = Me.Fields
  loc_D1FBCF: FLdPr var_C4
  loc_D1FBD2: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FBD7: LitI2_Byte 0
  loc_D1FBD9: LitVar_Missing var_158
  loc_D1FBDC: LitI2_Byte 0
  loc_D1FBDE: FLdZeroAd var_134
  loc_D1FBE1: CVarAd
  loc_D1FBE5: PopAdLdVar
  loc_D1FBE6: LitI4 1
  loc_D1FBEB: FLdPr Me
  loc_D1FBEE: MemLdStr global_88
  loc_D1FBF1: AryLock
  loc_D1FBF4: Ary1LdPr
  loc_D1FBF5: MemLdRfVar from_stack_1.global_48
  loc_D1FBF8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FBFD: AryUnlock
  loc_D1FC00: FFreeAd var_B8 = ""
  loc_D1FC07: FFreeVar var_148 = ""
  loc_D1FC0E: FLdRfVar var_134
  loc_D1FC11: LitVarStr var_A4, "CodiBarrReal"
  loc_D1FC16: PopAdLdVar
  loc_D1FC17: FLdRfVar var_C4
  loc_D1FC1A: FLdRfVar var_B8
  loc_D1FC1D: FLdPr var_BC
  loc_D1FC20: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FC25: FLdPr var_B8
  loc_D1FC28:  = Me.Fields
  loc_D1FC2D: FLdPr var_C4
  loc_D1FC30: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FC35: LitI2_Byte 0
  loc_D1FC37: LitVar_Missing var_158
  loc_D1FC3A: LitI2_Byte 0
  loc_D1FC3C: FLdZeroAd var_134
  loc_D1FC3F: CVarAd
  loc_D1FC43: PopAdLdVar
  loc_D1FC44: LitI4 1
  loc_D1FC49: FLdPr Me
  loc_D1FC4C: MemLdStr global_88
  loc_D1FC4F: AryLock
  loc_D1FC52: Ary1LdPr
  loc_D1FC53: MemLdRfVar from_stack_1.global_56
  loc_D1FC56: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FC5B: AryUnlock
  loc_D1FC5E: FFreeAd var_B8 = ""
  loc_D1FC65: FFreeVar var_148 = ""
  loc_D1FC6C: FLdRfVar var_134
  loc_D1FC6F: LitVarStr var_A4, "DetaBarrReal"
  loc_D1FC74: PopAdLdVar
  loc_D1FC75: FLdRfVar var_C4
  loc_D1FC78: FLdRfVar var_B8
  loc_D1FC7B: FLdPr var_BC
  loc_D1FC7E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FC83: FLdPr var_B8
  loc_D1FC86:  = Me.Fields
  loc_D1FC8B: FLdPr var_C4
  loc_D1FC8E: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FC93: LitI2_Byte 0
  loc_D1FC95: LitVar_Missing var_158
  loc_D1FC98: LitI2_Byte 0
  loc_D1FC9A: FLdZeroAd var_134
  loc_D1FC9D: CVarAd
  loc_D1FCA1: PopAdLdVar
  loc_D1FCA2: LitI4 1
  loc_D1FCA7: FLdPr Me
  loc_D1FCAA: MemLdStr global_88
  loc_D1FCAD: AryLock
  loc_D1FCB0: Ary1LdPr
  loc_D1FCB1: MemLdRfVar from_stack_1.global_60
  loc_D1FCB4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FCB9: AryUnlock
  loc_D1FCBC: FFreeAd var_B8 = ""
  loc_D1FCC3: FFreeVar var_148 = ""
  loc_D1FCCA: FLdRfVar var_134
  loc_D1FCCD: LitVarStr var_A4, "ManzComeReal"
  loc_D1FCD2: PopAdLdVar
  loc_D1FCD3: FLdRfVar var_C4
  loc_D1FCD6: FLdRfVar var_B8
  loc_D1FCD9: FLdPr var_BC
  loc_D1FCDC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FCE1: FLdPr var_B8
  loc_D1FCE4:  = Me.Fields
  loc_D1FCE9: FLdPr var_C4
  loc_D1FCEC: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FCF1: LitI2_Byte 0
  loc_D1FCF3: LitVar_Missing var_158
  loc_D1FCF6: LitI2_Byte 0
  loc_D1FCF8: FLdZeroAd var_134
  loc_D1FCFB: CVarAd
  loc_D1FCFF: PopAdLdVar
  loc_D1FD00: LitI4 1
  loc_D1FD05: FLdPr Me
  loc_D1FD08: MemLdStr global_88
  loc_D1FD0B: AryLock
  loc_D1FD0E: Ary1LdPr
  loc_D1FD0F: MemLdRfVar from_stack_1.global_64
  loc_D1FD12: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FD17: AryUnlock
  loc_D1FD1A: FFreeAd var_B8 = ""
  loc_D1FD21: FFreeVar var_148 = ""
  loc_D1FD28: FLdRfVar var_134
  loc_D1FD2B: LitVarStr var_A4, "CasaComeReal"
  loc_D1FD30: PopAdLdVar
  loc_D1FD31: FLdRfVar var_C4
  loc_D1FD34: FLdRfVar var_B8
  loc_D1FD37: FLdPr var_BC
  loc_D1FD3A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FD3F: FLdPr var_B8
  loc_D1FD42:  = Me.Fields
  loc_D1FD47: FLdPr var_C4
  loc_D1FD4A: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FD4F: LitI2_Byte 0
  loc_D1FD51: LitVar_Missing var_158
  loc_D1FD54: LitI2_Byte 0
  loc_D1FD56: FLdZeroAd var_134
  loc_D1FD59: CVarAd
  loc_D1FD5D: PopAdLdVar
  loc_D1FD5E: LitI4 1
  loc_D1FD63: FLdPr Me
  loc_D1FD66: MemLdStr global_88
  loc_D1FD69: AryLock
  loc_D1FD6C: Ary1LdPr
  loc_D1FD6D: MemLdRfVar from_stack_1.global_72
  loc_D1FD70: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FD75: AryUnlock
  loc_D1FD78: FFreeAd var_B8 = ""
  loc_D1FD7F: FFreeVar var_148 = ""
  loc_D1FD86: FLdRfVar var_134
  loc_D1FD89: LitVarStr var_A4, "UbicComeReal"
  loc_D1FD8E: PopAdLdVar
  loc_D1FD8F: FLdRfVar var_C4
  loc_D1FD92: FLdRfVar var_B8
  loc_D1FD95: FLdPr var_BC
  loc_D1FD98: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FD9D: FLdPr var_B8
  loc_D1FDA0:  = Me.Fields
  loc_D1FDA5: FLdPr var_C4
  loc_D1FDA8: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FDAD: LitI2_Byte 0
  loc_D1FDAF: LitVar_Missing var_158
  loc_D1FDB2: LitI2_Byte 0
  loc_D1FDB4: FLdZeroAd var_134
  loc_D1FDB7: CVarAd
  loc_D1FDBB: PopAdLdVar
  loc_D1FDBC: LitI4 1
  loc_D1FDC1: FLdPr Me
  loc_D1FDC4: MemLdStr global_88
  loc_D1FDC7: AryLock
  loc_D1FDCA: Ary1LdPr
  loc_D1FDCB: MemLdRfVar from_stack_1.global_84
  loc_D1FDCE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FDD3: AryUnlock
  loc_D1FDD6: FFreeAd var_B8 = ""
  loc_D1FDDD: FFreeVar var_148 = ""
  loc_D1FDE4: FLdRfVar var_134
  loc_D1FDE7: LitVarStr var_A4, "CodiLocaReal"
  loc_D1FDEC: PopAdLdVar
  loc_D1FDED: FLdRfVar var_C4
  loc_D1FDF0: FLdRfVar var_B8
  loc_D1FDF3: FLdPr var_BC
  loc_D1FDF6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FDFB: FLdPr var_B8
  loc_D1FDFE:  = Me.Fields
  loc_D1FE03: FLdPr var_C4
  loc_D1FE06: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FE0B: LitI2_Byte 0
  loc_D1FE0D: LitVar_Missing var_158
  loc_D1FE10: LitI2_Byte 0
  loc_D1FE12: FLdZeroAd var_134
  loc_D1FE15: CVarAd
  loc_D1FE19: PopAdLdVar
  loc_D1FE1A: LitI4 1
  loc_D1FE1F: FLdPr Me
  loc_D1FE22: MemLdStr global_88
  loc_D1FE25: AryLock
  loc_D1FE28: Ary1LdPr
  loc_D1FE29: MemLdRfVar from_stack_1.global_92
  loc_D1FE2C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FE31: AryUnlock
  loc_D1FE34: FFreeAd var_B8 = ""
  loc_D1FE3B: FFreeVar var_148 = ""
  loc_D1FE42: FLdRfVar var_134
  loc_D1FE45: LitVarStr var_A4, "DetaLocaReal"
  loc_D1FE4A: PopAdLdVar
  loc_D1FE4B: FLdRfVar var_C4
  loc_D1FE4E: FLdRfVar var_B8
  loc_D1FE51: FLdPr var_BC
  loc_D1FE54: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FE59: FLdPr var_B8
  loc_D1FE5C:  = Me.Fields
  loc_D1FE61: FLdPr var_C4
  loc_D1FE64: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FE69: LitI2_Byte 0
  loc_D1FE6B: LitVar_Missing var_158
  loc_D1FE6E: LitI2_Byte 0
  loc_D1FE70: FLdZeroAd var_134
  loc_D1FE73: CVarAd
  loc_D1FE77: PopAdLdVar
  loc_D1FE78: LitI4 1
  loc_D1FE7D: FLdPr Me
  loc_D1FE80: MemLdStr global_88
  loc_D1FE83: AryLock
  loc_D1FE86: Ary1LdPr
  loc_D1FE87: MemLdRfVar from_stack_1.global_96
  loc_D1FE8A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FE8F: AryUnlock
  loc_D1FE92: FFreeAd var_B8 = ""
  loc_D1FE99: FFreeVar var_148 = ""
  loc_D1FEA0: FLdRfVar var_134
  loc_D1FEA3: LitVarStr var_A4, "CopoComeReal"
  loc_D1FEA8: PopAdLdVar
  loc_D1FEA9: FLdRfVar var_C4
  loc_D1FEAC: FLdRfVar var_B8
  loc_D1FEAF: FLdPr var_BC
  loc_D1FEB2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FEB7: FLdPr var_B8
  loc_D1FEBA:  = Me.Fields
  loc_D1FEBF: FLdPr var_C4
  loc_D1FEC2: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FEC7: LitI2_Byte 0
  loc_D1FEC9: LitVar_Missing var_158
  loc_D1FECC: LitI2_Byte 0
  loc_D1FECE: FLdZeroAd var_134
  loc_D1FED1: CVarAd
  loc_D1FED5: PopAdLdVar
  loc_D1FED6: LitI4 1
  loc_D1FEDB: FLdPr Me
  loc_D1FEDE: MemLdStr global_88
  loc_D1FEE1: AryLock
  loc_D1FEE4: Ary1LdPr
  loc_D1FEE5: MemLdRfVar from_stack_1.global_100
  loc_D1FEE8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FEED: AryUnlock
  loc_D1FEF0: FFreeAd var_B8 = ""
  loc_D1FEF7: FFreeVar var_148 = ""
  loc_D1FEFE: FLdRfVar var_134
  loc_D1FF01: LitVarStr var_A4, "CodiCallPostal"
  loc_D1FF06: PopAdLdVar
  loc_D1FF07: FLdRfVar var_C4
  loc_D1FF0A: FLdRfVar var_B8
  loc_D1FF0D: FLdPr var_BC
  loc_D1FF10: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FF15: FLdPr var_B8
  loc_D1FF18:  = Me.Fields
  loc_D1FF1D: FLdPr var_C4
  loc_D1FF20: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FF25: LitI2_Byte 0
  loc_D1FF27: LitVar_Missing var_158
  loc_D1FF2A: LitI2_Byte 0
  loc_D1FF2C: FLdZeroAd var_134
  loc_D1FF2F: CVarAd
  loc_D1FF33: PopAdLdVar
  loc_D1FF34: LitI4 1
  loc_D1FF39: FLdPr Me
  loc_D1FF3C: MemLdStr global_88
  loc_D1FF3F: AryLock
  loc_D1FF42: Ary1LdPr
  loc_D1FF43: MemLdRfVar from_stack_1.global_108
  loc_D1FF46: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FF4B: AryUnlock
  loc_D1FF4E: FFreeAd var_B8 = ""
  loc_D1FF55: FFreeVar var_148 = ""
  loc_D1FF5C: FLdRfVar var_134
  loc_D1FF5F: LitVarStr var_A4, "DetaCallPostal"
  loc_D1FF64: PopAdLdVar
  loc_D1FF65: FLdRfVar var_C4
  loc_D1FF68: FLdRfVar var_B8
  loc_D1FF6B: FLdPr var_BC
  loc_D1FF6E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FF73: FLdPr var_B8
  loc_D1FF76:  = Me.Fields
  loc_D1FF7B: FLdPr var_C4
  loc_D1FF7E: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FF83: LitI2_Byte 0
  loc_D1FF85: LitVar_Missing var_158
  loc_D1FF88: LitI2_Byte 0
  loc_D1FF8A: FLdZeroAd var_134
  loc_D1FF8D: CVarAd
  loc_D1FF91: PopAdLdVar
  loc_D1FF92: LitI4 1
  loc_D1FF97: FLdPr Me
  loc_D1FF9A: MemLdStr global_88
  loc_D1FF9D: AryLock
  loc_D1FFA0: Ary1LdPr
  loc_D1FFA1: MemLdRfVar from_stack_1.global_112
  loc_D1FFA4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D1FFA9: AryUnlock
  loc_D1FFAC: FFreeAd var_B8 = ""
  loc_D1FFB3: FFreeVar var_148 = ""
  loc_D1FFBA: FLdRfVar var_134
  loc_D1FFBD: LitVarStr var_A4, "NucaComePostal"
  loc_D1FFC2: PopAdLdVar
  loc_D1FFC3: FLdRfVar var_C4
  loc_D1FFC6: FLdRfVar var_B8
  loc_D1FFC9: FLdPr var_BC
  loc_D1FFCC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D1FFD1: FLdPr var_B8
  loc_D1FFD4:  = Me.Fields
  loc_D1FFD9: FLdPr var_C4
  loc_D1FFDC: from_stack_2 = Me.Item(from_stack_1)
  loc_D1FFE1: LitI2_Byte 0
  loc_D1FFE3: LitVar_Missing var_158
  loc_D1FFE6: LitI2_Byte 0
  loc_D1FFE8: FLdZeroAd var_134
  loc_D1FFEB: CVarAd
  loc_D1FFEF: PopAdLdVar
  loc_D1FFF0: LitI4 1
  loc_D1FFF5: FLdPr Me
  loc_D1FFF8: MemLdStr global_88
  loc_D1FFFB: AryLock
  loc_D1FFFE: Ary1LdPr
  loc_D1FFFF: MemLdRfVar from_stack_1.global_116
  loc_D20002: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20007: AryUnlock
  loc_D2000A: FFreeAd var_B8 = ""
  loc_D20011: FFreeVar var_148 = ""
  loc_D20018: FLdRfVar var_134
  loc_D2001B: LitVarStr var_A4, "PisoComePostal"
  loc_D20020: PopAdLdVar
  loc_D20021: FLdRfVar var_C4
  loc_D20024: FLdRfVar var_B8
  loc_D20027: FLdPr var_BC
  loc_D2002A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2002F: FLdPr var_B8
  loc_D20032:  = Me.Fields
  loc_D20037: FLdPr var_C4
  loc_D2003A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2003F: LitI2_Byte 0
  loc_D20041: LitVar_Missing var_158
  loc_D20044: LitI2_Byte 0
  loc_D20046: FLdZeroAd var_134
  loc_D20049: CVarAd
  loc_D2004D: PopAdLdVar
  loc_D2004E: LitI4 1
  loc_D20053: FLdPr Me
  loc_D20056: MemLdStr global_88
  loc_D20059: AryLock
  loc_D2005C: Ary1LdPr
  loc_D2005D: MemLdRfVar from_stack_1.global_128
  loc_D20060: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20065: AryUnlock
  loc_D20068: FFreeAd var_B8 = ""
  loc_D2006F: FFreeVar var_148 = ""
  loc_D20076: FLdRfVar var_134
  loc_D20079: LitVarStr var_A4, "DptoComePostal"
  loc_D2007E: PopAdLdVar
  loc_D2007F: FLdRfVar var_C4
  loc_D20082: FLdRfVar var_B8
  loc_D20085: FLdPr var_BC
  loc_D20088: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2008D: FLdPr var_B8
  loc_D20090:  = Me.Fields
  loc_D20095: FLdPr var_C4
  loc_D20098: from_stack_2 = Me.Item(from_stack_1)
  loc_D2009D: LitI2_Byte 0
  loc_D2009F: LitVar_Missing var_158
  loc_D200A2: LitI2_Byte 0
  loc_D200A4: FLdZeroAd var_134
  loc_D200A7: CVarAd
  loc_D200AB: PopAdLdVar
  loc_D200AC: LitI4 1
  loc_D200B1: FLdPr Me
  loc_D200B4: MemLdStr global_88
  loc_D200B7: AryLock
  loc_D200BA: Ary1LdPr
  loc_D200BB: MemLdRfVar from_stack_1.global_136
  loc_D200BE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D200C3: AryUnlock
  loc_D200C6: FFreeAd var_B8 = ""
  loc_D200CD: FFreeVar var_148 = ""
  loc_D200D4: FLdRfVar var_134
  loc_D200D7: LitVarStr var_A4, "MonoComePostal"
  loc_D200DC: PopAdLdVar
  loc_D200DD: FLdRfVar var_C4
  loc_D200E0: FLdRfVar var_B8
  loc_D200E3: FLdPr var_BC
  loc_D200E6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D200EB: FLdPr var_B8
  loc_D200EE:  = Me.Fields
  loc_D200F3: FLdPr var_C4
  loc_D200F6: from_stack_2 = Me.Item(from_stack_1)
  loc_D200FB: LitI2_Byte 0
  loc_D200FD: LitVar_Missing var_158
  loc_D20100: LitI2_Byte 0
  loc_D20102: FLdZeroAd var_134
  loc_D20105: CVarAd
  loc_D20109: PopAdLdVar
  loc_D2010A: LitI4 1
  loc_D2010F: FLdPr Me
  loc_D20112: MemLdStr global_88
  loc_D20115: AryLock
  loc_D20118: Ary1LdPr
  loc_D20119: MemLdRfVar from_stack_1.global_144
  loc_D2011C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20121: AryUnlock
  loc_D20124: FFreeAd var_B8 = ""
  loc_D2012B: FFreeVar var_148 = ""
  loc_D20132: FLdRfVar var_134
  loc_D20135: LitVarStr var_A4, "CodiBarrPostal"
  loc_D2013A: PopAdLdVar
  loc_D2013B: FLdRfVar var_C4
  loc_D2013E: FLdRfVar var_B8
  loc_D20141: FLdPr var_BC
  loc_D20144: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20149: FLdPr var_B8
  loc_D2014C:  = Me.Fields
  loc_D20151: FLdPr var_C4
  loc_D20154: from_stack_2 = Me.Item(from_stack_1)
  loc_D20159: LitI2_Byte 0
  loc_D2015B: LitVar_Missing var_158
  loc_D2015E: LitI2_Byte 0
  loc_D20160: FLdZeroAd var_134
  loc_D20163: CVarAd
  loc_D20167: PopAdLdVar
  loc_D20168: LitI4 1
  loc_D2016D: FLdPr Me
  loc_D20170: MemLdStr global_88
  loc_D20173: AryLock
  loc_D20176: Ary1LdPr
  loc_D20177: MemLdRfVar from_stack_1.global_148
  loc_D2017A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2017F: AryUnlock
  loc_D20182: FFreeAd var_B8 = ""
  loc_D20189: FFreeVar var_148 = ""
  loc_D20190: FLdRfVar var_134
  loc_D20193: LitVarStr var_A4, "DetaBarrpostal"
  loc_D20198: PopAdLdVar
  loc_D20199: FLdRfVar var_C4
  loc_D2019C: FLdRfVar var_B8
  loc_D2019F: FLdPr var_BC
  loc_D201A2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D201A7: FLdPr var_B8
  loc_D201AA:  = Me.Fields
  loc_D201AF: FLdPr var_C4
  loc_D201B2: from_stack_2 = Me.Item(from_stack_1)
  loc_D201B7: LitI2_Byte 0
  loc_D201B9: LitVar_Missing var_158
  loc_D201BC: LitI2_Byte 0
  loc_D201BE: FLdZeroAd var_134
  loc_D201C1: CVarAd
  loc_D201C5: PopAdLdVar
  loc_D201C6: LitI4 1
  loc_D201CB: FLdPr Me
  loc_D201CE: MemLdStr global_88
  loc_D201D1: AryLock
  loc_D201D4: Ary1LdPr
  loc_D201D5: MemLdRfVar from_stack_1.global_152
  loc_D201D8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D201DD: AryUnlock
  loc_D201E0: FFreeAd var_B8 = ""
  loc_D201E7: FFreeVar var_148 = ""
  loc_D201EE: FLdRfVar var_134
  loc_D201F1: LitVarStr var_A4, "ManzComePostal"
  loc_D201F6: PopAdLdVar
  loc_D201F7: FLdRfVar var_C4
  loc_D201FA: FLdRfVar var_B8
  loc_D201FD: FLdPr var_BC
  loc_D20200: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20205: FLdPr var_B8
  loc_D20208:  = Me.Fields
  loc_D2020D: FLdPr var_C4
  loc_D20210: from_stack_2 = Me.Item(from_stack_1)
  loc_D20215: LitI2_Byte 0
  loc_D20217: LitVar_Missing var_158
  loc_D2021A: LitI2_Byte 0
  loc_D2021C: FLdZeroAd var_134
  loc_D2021F: CVarAd
  loc_D20223: PopAdLdVar
  loc_D20224: LitI4 1
  loc_D20229: FLdPr Me
  loc_D2022C: MemLdStr global_88
  loc_D2022F: AryLock
  loc_D20232: Ary1LdPr
  loc_D20233: MemLdRfVar from_stack_1.global_156
  loc_D20236: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2023B: AryUnlock
  loc_D2023E: FFreeAd var_B8 = ""
  loc_D20245: FFreeVar var_148 = ""
  loc_D2024C: FLdRfVar var_134
  loc_D2024F: LitVarStr var_A4, "CasaComePostal"
  loc_D20254: PopAdLdVar
  loc_D20255: FLdRfVar var_C4
  loc_D20258: FLdRfVar var_B8
  loc_D2025B: FLdPr var_BC
  loc_D2025E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20263: FLdPr var_B8
  loc_D20266:  = Me.Fields
  loc_D2026B: FLdPr var_C4
  loc_D2026E: from_stack_2 = Me.Item(from_stack_1)
  loc_D20273: LitI2_Byte 0
  loc_D20275: LitVar_Missing var_158
  loc_D20278: LitI2_Byte 0
  loc_D2027A: FLdZeroAd var_134
  loc_D2027D: CVarAd
  loc_D20281: PopAdLdVar
  loc_D20282: LitI4 1
  loc_D20287: FLdPr Me
  loc_D2028A: MemLdStr global_88
  loc_D2028D: AryLock
  loc_D20290: Ary1LdPr
  loc_D20291: MemLdRfVar from_stack_1.global_164
  loc_D20294: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20299: AryUnlock
  loc_D2029C: FFreeAd var_B8 = ""
  loc_D202A3: FFreeVar var_148 = ""
  loc_D202AA: FLdRfVar var_134
  loc_D202AD: LitVarStr var_A4, "UbicComePostal"
  loc_D202B2: PopAdLdVar
  loc_D202B3: FLdRfVar var_C4
  loc_D202B6: FLdRfVar var_B8
  loc_D202B9: FLdPr var_BC
  loc_D202BC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D202C1: FLdPr var_B8
  loc_D202C4:  = Me.Fields
  loc_D202C9: FLdPr var_C4
  loc_D202CC: from_stack_2 = Me.Item(from_stack_1)
  loc_D202D1: LitI2_Byte 0
  loc_D202D3: LitVar_Missing var_158
  loc_D202D6: LitI2_Byte 0
  loc_D202D8: FLdZeroAd var_134
  loc_D202DB: CVarAd
  loc_D202DF: PopAdLdVar
  loc_D202E0: LitI4 1
  loc_D202E5: FLdPr Me
  loc_D202E8: MemLdStr global_88
  loc_D202EB: AryLock
  loc_D202EE: Ary1LdPr
  loc_D202EF: MemLdRfVar from_stack_1.global_176
  loc_D202F2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D202F7: AryUnlock
  loc_D202FA: FFreeAd var_B8 = ""
  loc_D20301: FFreeVar var_148 = ""
  loc_D20308: FLdRfVar var_134
  loc_D2030B: LitVarStr var_A4, "CodiLocaPostal"
  loc_D20310: PopAdLdVar
  loc_D20311: FLdRfVar var_C4
  loc_D20314: FLdRfVar var_B8
  loc_D20317: FLdPr var_BC
  loc_D2031A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2031F: FLdPr var_B8
  loc_D20322:  = Me.Fields
  loc_D20327: FLdPr var_C4
  loc_D2032A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2032F: LitI2_Byte 0
  loc_D20331: LitVar_Missing var_158
  loc_D20334: LitI2_Byte 0
  loc_D20336: FLdZeroAd var_134
  loc_D20339: CVarAd
  loc_D2033D: PopAdLdVar
  loc_D2033E: LitI4 1
  loc_D20343: FLdPr Me
  loc_D20346: MemLdStr global_88
  loc_D20349: AryLock
  loc_D2034C: Ary1LdPr
  loc_D2034D: MemLdRfVar from_stack_1.global_184
  loc_D20350: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20355: AryUnlock
  loc_D20358: FFreeAd var_B8 = ""
  loc_D2035F: FFreeVar var_148 = ""
  loc_D20366: FLdRfVar var_134
  loc_D20369: LitVarStr var_A4, "DetaLocaPostal"
  loc_D2036E: PopAdLdVar
  loc_D2036F: FLdRfVar var_C4
  loc_D20372: FLdRfVar var_B8
  loc_D20375: FLdPr var_BC
  loc_D20378: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2037D: FLdPr var_B8
  loc_D20380:  = Me.Fields
  loc_D20385: FLdPr var_C4
  loc_D20388: from_stack_2 = Me.Item(from_stack_1)
  loc_D2038D: LitI2_Byte 0
  loc_D2038F: LitVar_Missing var_158
  loc_D20392: LitI2_Byte 0
  loc_D20394: FLdZeroAd var_134
  loc_D20397: CVarAd
  loc_D2039B: PopAdLdVar
  loc_D2039C: LitI4 1
  loc_D203A1: FLdPr Me
  loc_D203A4: MemLdStr global_88
  loc_D203A7: AryLock
  loc_D203AA: Ary1LdPr
  loc_D203AB: MemLdRfVar from_stack_1.global_188
  loc_D203AE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D203B3: AryUnlock
  loc_D203B6: FFreeAd var_B8 = ""
  loc_D203BD: FFreeVar var_148 = ""
  loc_D203C4: FLdRfVar var_134
  loc_D203C7: LitVarStr var_A4, "CopoComePostal"
  loc_D203CC: PopAdLdVar
  loc_D203CD: FLdRfVar var_C4
  loc_D203D0: FLdRfVar var_B8
  loc_D203D3: FLdPr var_BC
  loc_D203D6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D203DB: FLdPr var_B8
  loc_D203DE:  = Me.Fields
  loc_D203E3: FLdPr var_C4
  loc_D203E6: from_stack_2 = Me.Item(from_stack_1)
  loc_D203EB: LitI2_Byte 0
  loc_D203ED: LitVar_Missing var_158
  loc_D203F0: LitI2_Byte 0
  loc_D203F2: FLdZeroAd var_134
  loc_D203F5: CVarAd
  loc_D203F9: PopAdLdVar
  loc_D203FA: LitI4 1
  loc_D203FF: FLdPr Me
  loc_D20402: MemLdStr global_88
  loc_D20405: AryLock
  loc_D20408: Ary1LdPr
  loc_D20409: MemLdRfVar from_stack_1.global_192
  loc_D2040C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20411: AryUnlock
  loc_D20414: FFreeAd var_B8 = ""
  loc_D2041B: FFreeVar var_148 = ""
  loc_D20422: FLdRfVar var_134
  loc_D20425: LitVarStr var_A4, "FechaApertura"
  loc_D2042A: PopAdLdVar
  loc_D2042B: FLdRfVar var_C4
  loc_D2042E: FLdRfVar var_B8
  loc_D20431: FLdPr var_BC
  loc_D20434: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20439: FLdPr var_B8
  loc_D2043C:  = Me.Fields
  loc_D20441: FLdPr var_C4
  loc_D20444: from_stack_2 = Me.Item(from_stack_1)
  loc_D20449: LitI2_Byte 0
  loc_D2044B: LitVar_Missing var_158
  loc_D2044E: LitI2_Byte 0
  loc_D20450: FLdZeroAd var_134
  loc_D20453: CVarAd
  loc_D20457: PopAdLdVar
  loc_D20458: LitI4 1
  loc_D2045D: FLdPr Me
  loc_D20460: MemLdStr global_88
  loc_D20463: AryLock
  loc_D20466: Ary1LdPr
  loc_D20467: MemLdRfVar from_stack_1.global_200
  loc_D2046A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2046F: AryUnlock
  loc_D20472: FFreeAd var_B8 = ""
  loc_D20479: FFreeVar var_148 = ""
  loc_D20480: FLdRfVar var_134
  loc_D20483: LitVarStr var_A4, "ExpeApertura"
  loc_D20488: PopAdLdVar
  loc_D20489: FLdRfVar var_C4
  loc_D2048C: FLdRfVar var_B8
  loc_D2048F: FLdPr var_BC
  loc_D20492: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20497: FLdPr var_B8
  loc_D2049A:  = Me.Fields
  loc_D2049F: FLdPr var_C4
  loc_D204A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D204A7: LitI2_Byte 0
  loc_D204A9: LitVar_Missing var_158
  loc_D204AC: LitI2_Byte 0
  loc_D204AE: FLdZeroAd var_134
  loc_D204B1: CVarAd
  loc_D204B5: PopAdLdVar
  loc_D204B6: LitI4 1
  loc_D204BB: FLdPr Me
  loc_D204BE: MemLdStr global_88
  loc_D204C1: AryLock
  loc_D204C4: Ary1LdPr
  loc_D204C5: MemLdRfVar from_stack_1.global_204
  loc_D204C8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D204CD: AryUnlock
  loc_D204D0: FFreeAd var_B8 = ""
  loc_D204D7: FFreeVar var_148 = ""
  loc_D204DE: FLdRfVar var_134
  loc_D204E1: LitVarStr var_A4, "FechaBaja"
  loc_D204E6: PopAdLdVar
  loc_D204E7: FLdRfVar var_C4
  loc_D204EA: FLdRfVar var_B8
  loc_D204ED: FLdPr var_BC
  loc_D204F0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D204F5: FLdPr var_B8
  loc_D204F8:  = Me.Fields
  loc_D204FD: FLdPr var_C4
  loc_D20500: from_stack_2 = Me.Item(from_stack_1)
  loc_D20505: LitI2_Byte 0
  loc_D20507: LitVar_Missing var_158
  loc_D2050A: LitI2_Byte 0
  loc_D2050C: FLdZeroAd var_134
  loc_D2050F: CVarAd
  loc_D20513: PopAdLdVar
  loc_D20514: LitI4 1
  loc_D20519: FLdPr Me
  loc_D2051C: MemLdStr global_88
  loc_D2051F: AryLock
  loc_D20522: Ary1LdPr
  loc_D20523: MemLdRfVar from_stack_1.global_208
  loc_D20526: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2052B: AryUnlock
  loc_D2052E: FFreeAd var_B8 = ""
  loc_D20535: FFreeVar var_148 = ""
  loc_D2053C: FLdRfVar var_134
  loc_D2053F: LitVarStr var_A4, "ExpeBaja"
  loc_D20544: PopAdLdVar
  loc_D20545: FLdRfVar var_C4
  loc_D20548: FLdRfVar var_B8
  loc_D2054B: FLdPr var_BC
  loc_D2054E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20553: FLdPr var_B8
  loc_D20556:  = Me.Fields
  loc_D2055B: FLdPr var_C4
  loc_D2055E: from_stack_2 = Me.Item(from_stack_1)
  loc_D20563: LitI2_Byte 0
  loc_D20565: LitVar_Missing var_158
  loc_D20568: LitI2_Byte 0
  loc_D2056A: FLdZeroAd var_134
  loc_D2056D: CVarAd
  loc_D20571: PopAdLdVar
  loc_D20572: LitI4 1
  loc_D20577: FLdPr Me
  loc_D2057A: MemLdStr global_88
  loc_D2057D: AryLock
  loc_D20580: Ary1LdPr
  loc_D20581: MemLdRfVar from_stack_1.global_212
  loc_D20584: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20589: AryUnlock
  loc_D2058C: FFreeAd var_B8 = ""
  loc_D20593: FFreeVar var_148 = ""
  loc_D2059A: FLdRfVar var_134
  loc_D2059D: LitVarStr var_A4, "Libro"
  loc_D205A2: PopAdLdVar
  loc_D205A3: FLdRfVar var_C4
  loc_D205A6: FLdRfVar var_B8
  loc_D205A9: FLdPr var_BC
  loc_D205AC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D205B1: FLdPr var_B8
  loc_D205B4:  = Me.Fields
  loc_D205B9: FLdPr var_C4
  loc_D205BC: from_stack_2 = Me.Item(from_stack_1)
  loc_D205C1: LitI2_Byte 0
  loc_D205C3: LitVar_Missing var_158
  loc_D205C6: LitI2_Byte 0
  loc_D205C8: FLdZeroAd var_134
  loc_D205CB: CVarAd
  loc_D205CF: PopAdLdVar
  loc_D205D0: LitI4 1
  loc_D205D5: FLdPr Me
  loc_D205D8: MemLdStr global_88
  loc_D205DB: AryLock
  loc_D205DE: Ary1LdPr
  loc_D205DF: MemLdRfVar from_stack_1.global_220
  loc_D205E2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D205E7: AryUnlock
  loc_D205EA: FFreeAd var_B8 = ""
  loc_D205F1: FFreeVar var_148 = ""
  loc_D205F8: FLdRfVar var_134
  loc_D205FB: LitVarStr var_A4, "Clasificacion"
  loc_D20600: PopAdLdVar
  loc_D20601: FLdRfVar var_C4
  loc_D20604: FLdRfVar var_B8
  loc_D20607: FLdPr var_BC
  loc_D2060A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2060F: FLdPr var_B8
  loc_D20612:  = Me.Fields
  loc_D20617: FLdPr var_C4
  loc_D2061A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2061F: LitI2_Byte 0
  loc_D20621: LitVar_Missing var_158
  loc_D20624: LitI2_Byte 0
  loc_D20626: FLdZeroAd var_134
  loc_D20629: CVarAd
  loc_D2062D: PopAdLdVar
  loc_D2062E: LitI4 1
  loc_D20633: FLdPr Me
  loc_D20636: MemLdStr global_88
  loc_D20639: AryLock
  loc_D2063C: Ary1LdPr
  loc_D2063D: MemLdRfVar from_stack_1.global_224
  loc_D20640: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20645: AryUnlock
  loc_D20648: FFreeAd var_B8 = ""
  loc_D2064F: FFreeVar var_148 = ""
  loc_D20656: FLdRfVar var_134
  loc_D20659: LitVarStr var_A4, "Expediente"
  loc_D2065E: PopAdLdVar
  loc_D2065F: FLdRfVar var_C4
  loc_D20662: FLdRfVar var_B8
  loc_D20665: FLdPr var_BC
  loc_D20668: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2066D: FLdPr var_B8
  loc_D20670:  = Me.Fields
  loc_D20675: FLdPr var_C4
  loc_D20678: from_stack_2 = Me.Item(from_stack_1)
  loc_D2067D: LitI2_Byte 0
  loc_D2067F: LitVar_Missing var_158
  loc_D20682: LitI2_Byte 0
  loc_D20684: FLdZeroAd var_134
  loc_D20687: CVarAd
  loc_D2068B: PopAdLdVar
  loc_D2068C: LitI4 1
  loc_D20691: FLdPr Me
  loc_D20694: MemLdStr global_88
  loc_D20697: AryLock
  loc_D2069A: Ary1LdPr
  loc_D2069B: MemLdRfVar from_stack_1.global_228
  loc_D2069E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D206A3: AryUnlock
  loc_D206A6: FFreeAd var_B8 = ""
  loc_D206AD: FFreeVar var_148 = ""
  loc_D206B4: FLdRfVar var_134
  loc_D206B7: LitVarStr var_A4, "NumeReso"
  loc_D206BC: PopAdLdVar
  loc_D206BD: FLdRfVar var_C4
  loc_D206C0: FLdRfVar var_B8
  loc_D206C3: FLdPr var_BC
  loc_D206C6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D206CB: FLdPr var_B8
  loc_D206CE:  = Me.Fields
  loc_D206D3: FLdPr var_C4
  loc_D206D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D206DB: LitI2_Byte 0
  loc_D206DD: LitVar_Missing var_158
  loc_D206E0: LitI2_Byte 0
  loc_D206E2: FLdZeroAd var_134
  loc_D206E5: CVarAd
  loc_D206E9: PopAdLdVar
  loc_D206EA: LitI4 1
  loc_D206EF: FLdPr Me
  loc_D206F2: MemLdStr global_88
  loc_D206F5: AryLock
  loc_D206F8: Ary1LdPr
  loc_D206F9: MemLdRfVar from_stack_1.global_232
  loc_D206FC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20701: AryUnlock
  loc_D20704: FFreeAd var_B8 = ""
  loc_D2070B: FFreeVar var_148 = ""
  loc_D20712: FLdRfVar var_134
  loc_D20715: LitVarStr var_A4, "FechaTrans"
  loc_D2071A: PopAdLdVar
  loc_D2071B: FLdRfVar var_C4
  loc_D2071E: FLdRfVar var_B8
  loc_D20721: FLdPr var_BC
  loc_D20724: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20729: FLdPr var_B8
  loc_D2072C:  = Me.Fields
  loc_D20731: FLdPr var_C4
  loc_D20734: from_stack_2 = Me.Item(from_stack_1)
  loc_D20739: LitI2_Byte 0
  loc_D2073B: LitVar_Missing var_158
  loc_D2073E: LitI2_Byte 0
  loc_D20740: FLdZeroAd var_134
  loc_D20743: CVarAd
  loc_D20747: PopAdLdVar
  loc_D20748: LitI4 1
  loc_D2074D: FLdPr Me
  loc_D20750: MemLdStr global_88
  loc_D20753: AryLock
  loc_D20756: Ary1LdPr
  loc_D20757: MemLdRfVar from_stack_1.global_236
  loc_D2075A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2075F: AryUnlock
  loc_D20762: FFreeAd var_B8 = ""
  loc_D20769: FFreeVar var_148 = ""
  loc_D20770: FLdRfVar var_134
  loc_D20773: LitVarStr var_A4, "ExpeTrans"
  loc_D20778: PopAdLdVar
  loc_D20779: FLdRfVar var_C4
  loc_D2077C: FLdRfVar var_B8
  loc_D2077F: FLdPr var_BC
  loc_D20782: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20787: FLdPr var_B8
  loc_D2078A:  = Me.Fields
  loc_D2078F: FLdPr var_C4
  loc_D20792: from_stack_2 = Me.Item(from_stack_1)
  loc_D20797: LitI2_Byte 0
  loc_D20799: LitVar_Missing var_158
  loc_D2079C: LitI2_Byte 0
  loc_D2079E: FLdZeroAd var_134
  loc_D207A1: CVarAd
  loc_D207A5: PopAdLdVar
  loc_D207A6: LitI4 1
  loc_D207AB: FLdPr Me
  loc_D207AE: MemLdStr global_88
  loc_D207B1: AryLock
  loc_D207B4: Ary1LdPr
  loc_D207B5: MemLdRfVar from_stack_1.global_240
  loc_D207B8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D207BD: AryUnlock
  loc_D207C0: FFreeAd var_B8 = ""
  loc_D207C7: FFreeVar var_148 = ""
  loc_D207CE: FLdRfVar var_134
  loc_D207D1: LitVarStr var_A4, "ClasifMod"
  loc_D207D6: PopAdLdVar
  loc_D207D7: FLdRfVar var_C4
  loc_D207DA: FLdRfVar var_B8
  loc_D207DD: FLdPr var_BC
  loc_D207E0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D207E5: FLdPr var_B8
  loc_D207E8:  = Me.Fields
  loc_D207ED: FLdPr var_C4
  loc_D207F0: from_stack_2 = Me.Item(from_stack_1)
  loc_D207F5: LitI2_Byte 0
  loc_D207F7: LitVar_Missing var_158
  loc_D207FA: LitI2_Byte 0
  loc_D207FC: FLdZeroAd var_134
  loc_D207FF: CVarAd
  loc_D20803: PopAdLdVar
  loc_D20804: LitI4 1
  loc_D20809: FLdPr Me
  loc_D2080C: MemLdStr global_88
  loc_D2080F: AryLock
  loc_D20812: Ary1LdPr
  loc_D20813: MemLdRfVar from_stack_1.global_244
  loc_D20816: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2081B: AryUnlock
  loc_D2081E: FFreeAd var_B8 = ""
  loc_D20825: FFreeVar var_148 = ""
  loc_D2082C: FLdRfVar var_134
  loc_D2082F: LitVarStr var_A4, "Resolucion"
  loc_D20834: PopAdLdVar
  loc_D20835: FLdRfVar var_C4
  loc_D20838: FLdRfVar var_B8
  loc_D2083B: FLdPr var_BC
  loc_D2083E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20843: FLdPr var_B8
  loc_D20846:  = Me.Fields
  loc_D2084B: FLdPr var_C4
  loc_D2084E: from_stack_2 = Me.Item(from_stack_1)
  loc_D20853: LitI2_Byte 0
  loc_D20855: LitVar_Missing var_158
  loc_D20858: LitI2_Byte 0
  loc_D2085A: FLdZeroAd var_134
  loc_D2085D: CVarAd
  loc_D20861: PopAdLdVar
  loc_D20862: LitI4 1
  loc_D20867: FLdPr Me
  loc_D2086A: MemLdStr global_88
  loc_D2086D: AryLock
  loc_D20870: Ary1LdPr
  loc_D20871: MemLdRfVar from_stack_1.global_248
  loc_D20874: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20879: AryUnlock
  loc_D2087C: FFreeAd var_B8 = ""
  loc_D20883: FFreeVar var_148 = ""
  loc_D2088A: Call Proc_285_17_B490F8()
  loc_D2088F: Branch loc_D21B74
  loc_D20892: ILdRf var_CC
  loc_D20895: LitI4 6
  loc_D2089A: EqI4
  loc_D2089B: BranchF loc_D21B74
  loc_D2089E: LitStr "SELECT publicidad.CodiCome, publicidad.CucuCome, publicidad.CucuPers, publicidad.CodiEsco, DetaEsco, FeesCome, CodiInmu, CucuCome, RazoCome, DetaPers,"
  loc_D208A1: LitStr " domireal.CodiCalle CodiCallReal, domireal.Calle DetaCallReal, domireal.NumeCalle NucaComeReal, domireal.CodiBarrio CodiBarrReal, domireal.Barrio DetaBarrReal,"
  loc_D208A4: ConcatStr
  loc_D208A5: FStStrNoPop var_D0
  loc_D208A8: LitStr " domireal.Manzana ManzComeReal, domireal.Casa CasaComeReal, concat(domireal.Dpto,' ',domireal.Planta,' ',domireal.MonoBlock)  UbicComeReal, domireal.CodiLoca CodiLocaReal,"
  loc_D208AB: ConcatStr
  loc_D208AC: FStStrNoPop var_D4
  loc_D208AF: LitStr " domireal.Localidad DetaLocaReal, domireal.CodPostal CopoComeReal,"
  loc_D208B2: ConcatStr
  loc_D208B3: FStStrNoPop var_D8
  loc_D208B6: LitStr " domipostal.CodiCalle CodiCallPostal, domipostal.Calle DetaCallPostal,"
  loc_D208B9: ConcatStr
  loc_D208BA: FStStrNoPop var_DC
  loc_D208BD: LitStr " domipostal.NumeCalle NucaComePostal, domipostal.CodiBarrio CodiBarrPostal, domipostal.Barrio DetaBarrPostal,"
  loc_D208C0: ConcatStr
  loc_D208C1: FStStrNoPop var_E0
  loc_D208C4: LitStr " domipostal.Manzana ManzComePostal, domipostal.Casa CasaComePostal,"
  loc_D208C7: ConcatStr
  loc_D208C8: FStStrNoPop var_E4
  loc_D208CB: LitStr " domipostal.Planta PisoComePostal, domipostal.Dpto DptoComePostal, domipostal.MonoBlock MonoComePostal,"
  loc_D208CE: ConcatStr
  loc_D208CF: FStStrNoPop var_E8
  loc_D208D2: LitStr " domipostal.ubicacion UbicComePostal,"
  loc_D208D5: ConcatStr
  loc_D208D6: FStStrNoPop var_EC
  loc_D208D9: LitStr " domipostal.CodiLoca CodiLocaPostal, domipostal.Localidad DetaLocaPostal, domipostal.CodPostal CopoComePostal,"
  loc_D208DC: ConcatStr
  loc_D208DD: FStStrNoPop var_F0
  loc_D208E0: LitStr " publicidad.FeapCome FechaApertura, publicidad.ExpeCome ExpeApertura, publicidad.FebaCome FechaBaja, publicidad.ExbaCome ExpeBaja, publicidad.LibrCome Libro, publicidad.ClasCome clasificacion,  publicidad.Exp1Come Expediente, publicidad.NureCome NumeReso, publicidad.FetrCome FechaTrans, publicidad.ExtrCome ExpeTrans, '' ClasifMod, publicidad.ResoCome Resolucion"
  loc_D208E3: ConcatStr
  loc_D208E4: FStStrNoPop var_F4
  loc_D208E7: LitStr " FROM publicidad "
  loc_D208EA: ConcatStr
  loc_D208EB: FStStrNoPop var_F8
  loc_D208EE: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = publicidad.CucuPers"
  loc_D208F1: ConcatStr
  loc_D208F2: FStStrNoPop var_FC
  loc_D208F5: LitStr " LEFT JOIN estacome ON estacome.CodiEsco = publicidad.CodiEsco"
  loc_D208F8: ConcatStr
  loc_D208F9: FStStrNoPop var_100
  loc_D208FC: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 6"
  loc_D208FF: ConcatStr
  loc_D20900: FStStrNoPop var_104
  loc_D20903: LitStr " AND  domireal.CodiCome = publicidad.CodiCome"
  loc_D20906: ConcatStr
  loc_D20907: FStStrNoPop var_108
  loc_D2090A: LitStr " AND domireal.Tipo = 'Comercial'"
  loc_D2090D: ConcatStr
  loc_D2090E: FStStrNoPop var_10C
  loc_D20911: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 6"
  loc_D20914: ConcatStr
  loc_D20915: FStStrNoPop var_110
  loc_D20918: LitStr " AND  domipostal.CodiCome = publicidad.CodiCome"
  loc_D2091B: ConcatStr
  loc_D2091C: FStStrNoPop var_114
  loc_D2091F: LitStr " AND domipostal.Tipo = 'Postal'"
  loc_D20922: ConcatStr
  loc_D20923: FStStrNoPop var_118
  loc_D20926: LitStr " WHERE publicidad.CodiCome = "
  loc_D20929: ConcatStr
  loc_D2092A: FStStrNoPop var_120
  loc_D2092D: FLdRfVar var_11C
  loc_D20930: FLdPr Me
  loc_D20933: VCallAd Control_ID_NumeCtaTxt
  loc_D20936: FStAdFunc var_B8
  loc_D20939: FLdPr var_B8
  loc_D2093C:  = Me.Text
  loc_D20941: ILdRf var_11C
  loc_D20944: ConcatStr
  loc_D20945: FStStrNoPop var_124
  loc_D20948: FLdPr var_BC
  loc_D2094B: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D20950: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_120 = "": var_11C = ""
  loc_D2097F: FFree1Ad var_B8
  loc_D20982: FLdRfVar var_C8
  loc_D20985: FLdPr var_BC
  loc_D20988: from_stack_1 = clsboleto.RecordCount
  loc_D2098D: ILdRf var_C8
  loc_D20990: LitI4 0
  loc_D20995: EqI4
  loc_D20996: BranchF loc_D209A4
  loc_D20999: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_D2099C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D209A1: Branch loc_D21B87
  loc_D209A4: LitI4 0
  loc_D209A9: LitI4 1
  loc_D209AE: FLdPr Me
  loc_D209B1: MemLdRfVar from_stack_1.global_88
  loc_D209B4: Redim
  loc_D209BE: FLdPr var_BC
  loc_D209C1: Call clsboleto.MoveFirst()
  loc_D209C6: FLdRfVar var_134
  loc_D209C9: LitVarStr var_A4, "CodiCome"
  loc_D209CE: PopAdLdVar
  loc_D209CF: FLdRfVar var_C4
  loc_D209D2: FLdRfVar var_B8
  loc_D209D5: FLdPr var_BC
  loc_D209D8: from_stack_1v = clsboleto.RsFrmGet()
  loc_D209DD: FLdPr var_B8
  loc_D209E0:  = Me.Fields
  loc_D209E5: FLdPr var_C4
  loc_D209E8: from_stack_2 = Me.Item(from_stack_1)
  loc_D209ED: LitI2_Byte 0
  loc_D209EF: LitVar_Missing var_158
  loc_D209F2: LitI2_Byte 0
  loc_D209F4: FLdZeroAd var_134
  loc_D209F7: CVarAd
  loc_D209FB: PopAdLdVar
  loc_D209FC: LitI4 1
  loc_D20A01: FLdPr Me
  loc_D20A04: MemLdStr global_88
  loc_D20A07: AryLock
  loc_D20A0A: Ary1LdPr
  loc_D20A0B: MemLdRfVar from_stack_1.global_0
  loc_D20A0E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20A13: AryUnlock
  loc_D20A16: FFreeAd var_B8 = ""
  loc_D20A1D: FFreeVar var_148 = ""
  loc_D20A24: FLdRfVar var_134
  loc_D20A27: LitVarStr var_A4, "CucuCome"
  loc_D20A2C: PopAdLdVar
  loc_D20A2D: FLdRfVar var_C4
  loc_D20A30: FLdRfVar var_B8
  loc_D20A33: FLdPr var_BC
  loc_D20A36: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20A3B: FLdPr var_B8
  loc_D20A3E:  = Me.Fields
  loc_D20A43: FLdPr var_C4
  loc_D20A46: from_stack_2 = Me.Item(from_stack_1)
  loc_D20A4B: LitI2_Byte 0
  loc_D20A4D: LitVar_Missing var_158
  loc_D20A50: LitI2_Byte 0
  loc_D20A52: FLdZeroAd var_134
  loc_D20A55: CVarAd
  loc_D20A59: PopAdLdVar
  loc_D20A5A: LitI4 1
  loc_D20A5F: FLdPr Me
  loc_D20A62: MemLdStr global_88
  loc_D20A65: AryLock
  loc_D20A68: Ary1LdPr
  loc_D20A69: MemLdRfVar from_stack_1.global_4
  loc_D20A6C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20A71: AryUnlock
  loc_D20A74: FFreeAd var_B8 = ""
  loc_D20A7B: FFreeVar var_148 = ""
  loc_D20A82: FLdRfVar var_134
  loc_D20A85: LitVarStr var_A4, "RazoCome"
  loc_D20A8A: PopAdLdVar
  loc_D20A8B: FLdRfVar var_C4
  loc_D20A8E: FLdRfVar var_B8
  loc_D20A91: FLdPr var_BC
  loc_D20A94: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20A99: FLdPr var_B8
  loc_D20A9C:  = Me.Fields
  loc_D20AA1: FLdPr var_C4
  loc_D20AA4: from_stack_2 = Me.Item(from_stack_1)
  loc_D20AA9: LitI2_Byte 0
  loc_D20AAB: LitVar_Missing var_158
  loc_D20AAE: LitI2_Byte 0
  loc_D20AB0: FLdZeroAd var_134
  loc_D20AB3: CVarAd
  loc_D20AB7: PopAdLdVar
  loc_D20AB8: LitI4 1
  loc_D20ABD: FLdPr Me
  loc_D20AC0: MemLdStr global_88
  loc_D20AC3: AryLock
  loc_D20AC6: Ary1LdPr
  loc_D20AC7: MemLdRfVar from_stack_1.global_8
  loc_D20ACA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20ACF: AryUnlock
  loc_D20AD2: FFreeAd var_B8 = ""
  loc_D20AD9: FFreeVar var_148 = ""
  loc_D20AE0: FLdRfVar var_134
  loc_D20AE3: LitVarStr var_A4, "CucuPers"
  loc_D20AE8: PopAdLdVar
  loc_D20AE9: FLdRfVar var_C4
  loc_D20AEC: FLdRfVar var_B8
  loc_D20AEF: FLdPr var_BC
  loc_D20AF2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20AF7: FLdPr var_B8
  loc_D20AFA:  = Me.Fields
  loc_D20AFF: FLdPr var_C4
  loc_D20B02: from_stack_2 = Me.Item(from_stack_1)
  loc_D20B07: LitI2_Byte 0
  loc_D20B09: LitVar_Missing var_158
  loc_D20B0C: LitI2_Byte 0
  loc_D20B0E: FLdZeroAd var_134
  loc_D20B11: CVarAd
  loc_D20B15: PopAdLdVar
  loc_D20B16: LitI4 1
  loc_D20B1B: FLdPr Me
  loc_D20B1E: MemLdStr global_88
  loc_D20B21: AryLock
  loc_D20B24: Ary1LdPr
  loc_D20B25: MemLdRfVar from_stack_1.global_12
  loc_D20B28: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20B2D: AryUnlock
  loc_D20B30: FFreeAd var_B8 = ""
  loc_D20B37: FFreeVar var_148 = ""
  loc_D20B3E: FLdRfVar var_134
  loc_D20B41: LitVarStr var_A4, "DetaPers"
  loc_D20B46: PopAdLdVar
  loc_D20B47: FLdRfVar var_C4
  loc_D20B4A: FLdRfVar var_B8
  loc_D20B4D: FLdPr var_BC
  loc_D20B50: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20B55: FLdPr var_B8
  loc_D20B58:  = Me.Fields
  loc_D20B5D: FLdPr var_C4
  loc_D20B60: from_stack_2 = Me.Item(from_stack_1)
  loc_D20B65: LitI2_Byte 0
  loc_D20B67: LitVar_Missing var_158
  loc_D20B6A: LitI2_Byte 0
  loc_D20B6C: FLdZeroAd var_134
  loc_D20B6F: CVarAd
  loc_D20B73: PopAdLdVar
  loc_D20B74: LitI4 1
  loc_D20B79: FLdPr Me
  loc_D20B7C: MemLdStr global_88
  loc_D20B7F: AryLock
  loc_D20B82: Ary1LdPr
  loc_D20B83: MemLdRfVar from_stack_1.global_16
  loc_D20B86: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20B8B: AryUnlock
  loc_D20B8E: FFreeAd var_B8 = ""
  loc_D20B95: FFreeVar var_148 = ""
  loc_D20B9C: FLdRfVar var_134
  loc_D20B9F: LitVarStr var_A4, "CodiInmu"
  loc_D20BA4: PopAdLdVar
  loc_D20BA5: FLdRfVar var_C4
  loc_D20BA8: FLdRfVar var_B8
  loc_D20BAB: FLdPr var_BC
  loc_D20BAE: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20BB3: FLdPr var_B8
  loc_D20BB6:  = Me.Fields
  loc_D20BBB: FLdPr var_C4
  loc_D20BBE: from_stack_2 = Me.Item(from_stack_1)
  loc_D20BC3: LitI2_Byte 0
  loc_D20BC5: LitVar_Missing var_158
  loc_D20BC8: LitI2_Byte 0
  loc_D20BCA: FLdZeroAd var_134
  loc_D20BCD: CVarAd
  loc_D20BD1: PopAdLdVar
  loc_D20BD2: LitI4 1
  loc_D20BD7: FLdPr Me
  loc_D20BDA: MemLdStr global_88
  loc_D20BDD: AryLock
  loc_D20BE0: Ary1LdPr
  loc_D20BE1: MemLdRfVar from_stack_1.global_20
  loc_D20BE4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20BE9: AryUnlock
  loc_D20BEC: FFreeAd var_B8 = ""
  loc_D20BF3: FFreeVar var_148 = ""
  loc_D20BFA: FLdRfVar var_148
  loc_D20BFD: FLdRfVar var_134
  loc_D20C00: LitVarStr var_A4, "CodiInmu"
  loc_D20C05: PopAdLdVar
  loc_D20C06: FLdRfVar var_C4
  loc_D20C09: FLdRfVar var_B8
  loc_D20C0C: FLdPr var_BC
  loc_D20C0F: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20C14: FLdPr var_B8
  loc_D20C17:  = Me.Fields
  loc_D20C1C: FLdPr var_C4
  loc_D20C1F: from_stack_2 = Me.Item(from_stack_1)
  loc_D20C24: FLdPr var_134
  loc_D20C27:  = Me.Value
  loc_D20C2C: FLdPr Me
  loc_D20C2F: MemLdRfVar from_stack_1.global_124
  loc_D20C32: NewIfNullRf
  loc_D20C36: FLdRfVar var_148
  loc_D20C39: CStrVarTmp
  loc_D20C3A: FStStrNoPop var_D0
  loc_D20C3D: ImpAdCallI2  = Proc_270_13_C86920()
  loc_D20C42: LitI2_Byte &HFF
  loc_D20C44: EqI2
  loc_D20C45: FFree1Str var_D0
  loc_D20C48: FFreeAd var_B8 = "": var_C4 = ""
  loc_D20C51: FFree1Var var_148 = ""
  loc_D20C54: BranchF loc_D20C97
  loc_D20C57: FLdRfVar var_D0
  loc_D20C5A: FLdPr Me
  loc_D20C5D: MemLdRfVar from_stack_1.global_124
  loc_D20C60: NewIfNullPr tblPersonaGIS
  loc_D20C63: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_D20C68: LitI2_Byte 0
  loc_D20C6A: LitVar_Missing var_158
  loc_D20C6D: LitI2_Byte 0
  loc_D20C6F: FLdZeroAd var_D0
  loc_D20C72: CVarStr var_148
  loc_D20C75: PopAdLdVar
  loc_D20C76: LitI4 1
  loc_D20C7B: FLdPr Me
  loc_D20C7E: MemLdStr global_88
  loc_D20C81: AryLock
  loc_D20C84: Ary1LdPr
  loc_D20C85: MemLdRfVar from_stack_1.global_24
  loc_D20C88: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20C8D: AryUnlock
  loc_D20C90: FFreeVar var_148 = ""
  loc_D20C97: LitI2_Byte 0
  loc_D20C99: LitVar_Missing var_148
  loc_D20C9C: LitI2_Byte 0
  loc_D20C9E: LitVarStr var_A4, vbNullString
  loc_D20CA3: PopAdLdVar
  loc_D20CA4: LitI4 1
  loc_D20CA9: FLdPr Me
  loc_D20CAC: MemLdStr global_88
  loc_D20CAF: AryLock
  loc_D20CB2: Ary1LdPr
  loc_D20CB3: MemLdRfVar from_stack_1.global_24
  loc_D20CB6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20CBB: AryUnlock
  loc_D20CBE: FFree1Var var_148 = ""
  loc_D20CC1: FLdRfVar var_148
  loc_D20CC4: FLdRfVar var_134
  loc_D20CC7: LitVarStr var_A4, "CodiEsco"
  loc_D20CCC: PopAdLdVar
  loc_D20CCD: FLdRfVar var_C4
  loc_D20CD0: FLdRfVar var_B8
  loc_D20CD3: FLdPr var_BC
  loc_D20CD6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20CDB: FLdPr var_B8
  loc_D20CDE:  = Me.Fields
  loc_D20CE3: FLdPr var_C4
  loc_D20CE6: from_stack_2 = Me.Item(from_stack_1)
  loc_D20CEB: FLdPr var_134
  loc_D20CEE:  = Me.Value
  loc_D20CF3: FLdRfVar var_184
  loc_D20CF6: FLdRfVar var_174
  loc_D20CF9: LitVarStr var_170, "DetaEsco"
  loc_D20CFE: PopAdLdVar
  loc_D20CFF: FLdRfVar var_160
  loc_D20D02: FLdRfVar var_15C
  loc_D20D05: FLdPr var_BC
  loc_D20D08: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20D0D: FLdPr var_15C
  loc_D20D10:  = Me.Fields
  loc_D20D15: FLdPr var_160
  loc_D20D18: from_stack_2 = Me.Item(from_stack_1)
  loc_D20D1D: FLdPr var_174
  loc_D20D20:  = Me.Value
  loc_D20D25: LitI2_Byte 0
  loc_D20D27: LitVar_Missing var_1B4
  loc_D20D2A: LitI2_Byte 0
  loc_D20D2C: FLdRfVar var_148
  loc_D20D2F: LitVarStr var_B4, " - "
  loc_D20D34: ConcatVar var_158
  loc_D20D38: FLdRfVar var_184
  loc_D20D3B: ConcatVar var_194
  loc_D20D3F: PopAdLdVar
  loc_D20D40: LitI4 1
  loc_D20D45: FLdPr Me
  loc_D20D48: MemLdStr global_88
  loc_D20D4B: AryLock
  loc_D20D4E: Ary1LdPr
  loc_D20D4F: MemLdRfVar from_stack_1.global_32
  loc_D20D52: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20D57: AryUnlock
  loc_D20D5A: FFreeAd var_B8 = "": var_C4 = "": var_134 = "": var_15C = "": var_160 = ""
  loc_D20D69: FFreeVar var_148 = "": var_158 = "": var_184 = "": var_194 = ""
  loc_D20D76: FLdRfVar var_134
  loc_D20D79: LitVarStr var_A4, "FeesCome"
  loc_D20D7E: PopAdLdVar
  loc_D20D7F: FLdRfVar var_C4
  loc_D20D82: FLdRfVar var_B8
  loc_D20D85: FLdPr var_BC
  loc_D20D88: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20D8D: FLdPr var_B8
  loc_D20D90:  = Me.Fields
  loc_D20D95: FLdPr var_C4
  loc_D20D98: from_stack_2 = Me.Item(from_stack_1)
  loc_D20D9D: LitI2_Byte 0
  loc_D20D9F: LitVar_Missing var_158
  loc_D20DA2: LitI2_Byte 0
  loc_D20DA4: FLdZeroAd var_134
  loc_D20DA7: CVarAd
  loc_D20DAB: PopAdLdVar
  loc_D20DAC: LitI4 1
  loc_D20DB1: FLdPr Me
  loc_D20DB4: MemLdStr global_88
  loc_D20DB7: AryLock
  loc_D20DBA: Ary1LdPr
  loc_D20DBB: MemLdRfVar from_stack_1.global_36
  loc_D20DBE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20DC3: AryUnlock
  loc_D20DC6: FFreeAd var_B8 = ""
  loc_D20DCD: FFreeVar var_148 = ""
  loc_D20DD4: FLdRfVar var_134
  loc_D20DD7: LitVarStr var_A4, "CodiCallReal"
  loc_D20DDC: PopAdLdVar
  loc_D20DDD: FLdRfVar var_C4
  loc_D20DE0: FLdRfVar var_B8
  loc_D20DE3: FLdPr var_BC
  loc_D20DE6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20DEB: FLdPr var_B8
  loc_D20DEE:  = Me.Fields
  loc_D20DF3: FLdPr var_C4
  loc_D20DF6: from_stack_2 = Me.Item(from_stack_1)
  loc_D20DFB: LitI2_Byte 0
  loc_D20DFD: LitVar_Missing var_158
  loc_D20E00: LitI2_Byte 0
  loc_D20E02: FLdZeroAd var_134
  loc_D20E05: CVarAd
  loc_D20E09: PopAdLdVar
  loc_D20E0A: LitI4 1
  loc_D20E0F: FLdPr Me
  loc_D20E12: MemLdStr global_88
  loc_D20E15: AryLock
  loc_D20E18: Ary1LdPr
  loc_D20E19: MemLdRfVar from_stack_1.global_40
  loc_D20E1C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20E21: AryUnlock
  loc_D20E24: FFreeAd var_B8 = ""
  loc_D20E2B: FFreeVar var_148 = ""
  loc_D20E32: FLdRfVar var_134
  loc_D20E35: LitVarStr var_A4, "DetaCallReal"
  loc_D20E3A: PopAdLdVar
  loc_D20E3B: FLdRfVar var_C4
  loc_D20E3E: FLdRfVar var_B8
  loc_D20E41: FLdPr var_BC
  loc_D20E44: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20E49: FLdPr var_B8
  loc_D20E4C:  = Me.Fields
  loc_D20E51: FLdPr var_C4
  loc_D20E54: from_stack_2 = Me.Item(from_stack_1)
  loc_D20E59: LitI2_Byte 0
  loc_D20E5B: LitVar_Missing var_158
  loc_D20E5E: LitI2_Byte 0
  loc_D20E60: FLdZeroAd var_134
  loc_D20E63: CVarAd
  loc_D20E67: PopAdLdVar
  loc_D20E68: LitI4 1
  loc_D20E6D: FLdPr Me
  loc_D20E70: MemLdStr global_88
  loc_D20E73: AryLock
  loc_D20E76: Ary1LdPr
  loc_D20E77: MemLdRfVar from_stack_1.global_44
  loc_D20E7A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20E7F: AryUnlock
  loc_D20E82: FFreeAd var_B8 = ""
  loc_D20E89: FFreeVar var_148 = ""
  loc_D20E90: FLdRfVar var_134
  loc_D20E93: LitVarStr var_A4, "NucaComeReal"
  loc_D20E98: PopAdLdVar
  loc_D20E99: FLdRfVar var_C4
  loc_D20E9C: FLdRfVar var_B8
  loc_D20E9F: FLdPr var_BC
  loc_D20EA2: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20EA7: FLdPr var_B8
  loc_D20EAA:  = Me.Fields
  loc_D20EAF: FLdPr var_C4
  loc_D20EB2: from_stack_2 = Me.Item(from_stack_1)
  loc_D20EB7: LitI2_Byte 0
  loc_D20EB9: LitVar_Missing var_158
  loc_D20EBC: LitI2_Byte 0
  loc_D20EBE: FLdZeroAd var_134
  loc_D20EC1: CVarAd
  loc_D20EC5: PopAdLdVar
  loc_D20EC6: LitI4 1
  loc_D20ECB: FLdPr Me
  loc_D20ECE: MemLdStr global_88
  loc_D20ED1: AryLock
  loc_D20ED4: Ary1LdPr
  loc_D20ED5: MemLdRfVar from_stack_1.global_48
  loc_D20ED8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20EDD: AryUnlock
  loc_D20EE0: FFreeAd var_B8 = ""
  loc_D20EE7: FFreeVar var_148 = ""
  loc_D20EEE: FLdRfVar var_134
  loc_D20EF1: LitVarStr var_A4, "CodiBarrReal"
  loc_D20EF6: PopAdLdVar
  loc_D20EF7: FLdRfVar var_C4
  loc_D20EFA: FLdRfVar var_B8
  loc_D20EFD: FLdPr var_BC
  loc_D20F00: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20F05: FLdPr var_B8
  loc_D20F08:  = Me.Fields
  loc_D20F0D: FLdPr var_C4
  loc_D20F10: from_stack_2 = Me.Item(from_stack_1)
  loc_D20F15: LitI2_Byte 0
  loc_D20F17: LitVar_Missing var_158
  loc_D20F1A: LitI2_Byte 0
  loc_D20F1C: FLdZeroAd var_134
  loc_D20F1F: CVarAd
  loc_D20F23: PopAdLdVar
  loc_D20F24: LitI4 1
  loc_D20F29: FLdPr Me
  loc_D20F2C: MemLdStr global_88
  loc_D20F2F: AryLock
  loc_D20F32: Ary1LdPr
  loc_D20F33: MemLdRfVar from_stack_1.global_56
  loc_D20F36: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20F3B: AryUnlock
  loc_D20F3E: FFreeAd var_B8 = ""
  loc_D20F45: FFreeVar var_148 = ""
  loc_D20F4C: FLdRfVar var_134
  loc_D20F4F: LitVarStr var_A4, "DetaBarrReal"
  loc_D20F54: PopAdLdVar
  loc_D20F55: FLdRfVar var_C4
  loc_D20F58: FLdRfVar var_B8
  loc_D20F5B: FLdPr var_BC
  loc_D20F5E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20F63: FLdPr var_B8
  loc_D20F66:  = Me.Fields
  loc_D20F6B: FLdPr var_C4
  loc_D20F6E: from_stack_2 = Me.Item(from_stack_1)
  loc_D20F73: LitI2_Byte 0
  loc_D20F75: LitVar_Missing var_158
  loc_D20F78: LitI2_Byte 0
  loc_D20F7A: FLdZeroAd var_134
  loc_D20F7D: CVarAd
  loc_D20F81: PopAdLdVar
  loc_D20F82: LitI4 1
  loc_D20F87: FLdPr Me
  loc_D20F8A: MemLdStr global_88
  loc_D20F8D: AryLock
  loc_D20F90: Ary1LdPr
  loc_D20F91: MemLdRfVar from_stack_1.global_60
  loc_D20F94: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20F99: AryUnlock
  loc_D20F9C: FFreeAd var_B8 = ""
  loc_D20FA3: FFreeVar var_148 = ""
  loc_D20FAA: FLdRfVar var_134
  loc_D20FAD: LitVarStr var_A4, "ManzComeReal"
  loc_D20FB2: PopAdLdVar
  loc_D20FB3: FLdRfVar var_C4
  loc_D20FB6: FLdRfVar var_B8
  loc_D20FB9: FLdPr var_BC
  loc_D20FBC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D20FC1: FLdPr var_B8
  loc_D20FC4:  = Me.Fields
  loc_D20FC9: FLdPr var_C4
  loc_D20FCC: from_stack_2 = Me.Item(from_stack_1)
  loc_D20FD1: LitI2_Byte 0
  loc_D20FD3: LitVar_Missing var_158
  loc_D20FD6: LitI2_Byte 0
  loc_D20FD8: FLdZeroAd var_134
  loc_D20FDB: CVarAd
  loc_D20FDF: PopAdLdVar
  loc_D20FE0: LitI4 1
  loc_D20FE5: FLdPr Me
  loc_D20FE8: MemLdStr global_88
  loc_D20FEB: AryLock
  loc_D20FEE: Ary1LdPr
  loc_D20FEF: MemLdRfVar from_stack_1.global_64
  loc_D20FF2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D20FF7: AryUnlock
  loc_D20FFA: FFreeAd var_B8 = ""
  loc_D21001: FFreeVar var_148 = ""
  loc_D21008: FLdRfVar var_134
  loc_D2100B: LitVarStr var_A4, "CasaComeReal"
  loc_D21010: PopAdLdVar
  loc_D21011: FLdRfVar var_C4
  loc_D21014: FLdRfVar var_B8
  loc_D21017: FLdPr var_BC
  loc_D2101A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2101F: FLdPr var_B8
  loc_D21022:  = Me.Fields
  loc_D21027: FLdPr var_C4
  loc_D2102A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2102F: LitI2_Byte 0
  loc_D21031: LitVar_Missing var_158
  loc_D21034: LitI2_Byte 0
  loc_D21036: FLdZeroAd var_134
  loc_D21039: CVarAd
  loc_D2103D: PopAdLdVar
  loc_D2103E: LitI4 1
  loc_D21043: FLdPr Me
  loc_D21046: MemLdStr global_88
  loc_D21049: AryLock
  loc_D2104C: Ary1LdPr
  loc_D2104D: MemLdRfVar from_stack_1.global_72
  loc_D21050: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21055: AryUnlock
  loc_D21058: FFreeAd var_B8 = ""
  loc_D2105F: FFreeVar var_148 = ""
  loc_D21066: FLdRfVar var_134
  loc_D21069: LitVarStr var_A4, "UbicComeReal"
  loc_D2106E: PopAdLdVar
  loc_D2106F: FLdRfVar var_C4
  loc_D21072: FLdRfVar var_B8
  loc_D21075: FLdPr var_BC
  loc_D21078: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2107D: FLdPr var_B8
  loc_D21080:  = Me.Fields
  loc_D21085: FLdPr var_C4
  loc_D21088: from_stack_2 = Me.Item(from_stack_1)
  loc_D2108D: LitI2_Byte 0
  loc_D2108F: LitVar_Missing var_158
  loc_D21092: LitI2_Byte 0
  loc_D21094: FLdZeroAd var_134
  loc_D21097: CVarAd
  loc_D2109B: PopAdLdVar
  loc_D2109C: LitI4 1
  loc_D210A1: FLdPr Me
  loc_D210A4: MemLdStr global_88
  loc_D210A7: AryLock
  loc_D210AA: Ary1LdPr
  loc_D210AB: MemLdRfVar from_stack_1.global_84
  loc_D210AE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D210B3: AryUnlock
  loc_D210B6: FFreeAd var_B8 = ""
  loc_D210BD: FFreeVar var_148 = ""
  loc_D210C4: FLdRfVar var_134
  loc_D210C7: LitVarStr var_A4, "CodiLocaReal"
  loc_D210CC: PopAdLdVar
  loc_D210CD: FLdRfVar var_C4
  loc_D210D0: FLdRfVar var_B8
  loc_D210D3: FLdPr var_BC
  loc_D210D6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D210DB: FLdPr var_B8
  loc_D210DE:  = Me.Fields
  loc_D210E3: FLdPr var_C4
  loc_D210E6: from_stack_2 = Me.Item(from_stack_1)
  loc_D210EB: LitI2_Byte 0
  loc_D210ED: LitVar_Missing var_158
  loc_D210F0: LitI2_Byte 0
  loc_D210F2: FLdZeroAd var_134
  loc_D210F5: CVarAd
  loc_D210F9: PopAdLdVar
  loc_D210FA: LitI4 1
  loc_D210FF: FLdPr Me
  loc_D21102: MemLdStr global_88
  loc_D21105: AryLock
  loc_D21108: Ary1LdPr
  loc_D21109: MemLdRfVar from_stack_1.global_92
  loc_D2110C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21111: AryUnlock
  loc_D21114: FFreeAd var_B8 = ""
  loc_D2111B: FFreeVar var_148 = ""
  loc_D21122: FLdRfVar var_134
  loc_D21125: LitVarStr var_A4, "DetaLocaReal"
  loc_D2112A: PopAdLdVar
  loc_D2112B: FLdRfVar var_C4
  loc_D2112E: FLdRfVar var_B8
  loc_D21131: FLdPr var_BC
  loc_D21134: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21139: FLdPr var_B8
  loc_D2113C:  = Me.Fields
  loc_D21141: FLdPr var_C4
  loc_D21144: from_stack_2 = Me.Item(from_stack_1)
  loc_D21149: LitI2_Byte 0
  loc_D2114B: LitVar_Missing var_158
  loc_D2114E: LitI2_Byte 0
  loc_D21150: FLdZeroAd var_134
  loc_D21153: CVarAd
  loc_D21157: PopAdLdVar
  loc_D21158: LitI4 1
  loc_D2115D: FLdPr Me
  loc_D21160: MemLdStr global_88
  loc_D21163: AryLock
  loc_D21166: Ary1LdPr
  loc_D21167: MemLdRfVar from_stack_1.global_96
  loc_D2116A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2116F: AryUnlock
  loc_D21172: FFreeAd var_B8 = ""
  loc_D21179: FFreeVar var_148 = ""
  loc_D21180: FLdRfVar var_134
  loc_D21183: LitVarStr var_A4, "CopoComeReal"
  loc_D21188: PopAdLdVar
  loc_D21189: FLdRfVar var_C4
  loc_D2118C: FLdRfVar var_B8
  loc_D2118F: FLdPr var_BC
  loc_D21192: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21197: FLdPr var_B8
  loc_D2119A:  = Me.Fields
  loc_D2119F: FLdPr var_C4
  loc_D211A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D211A7: LitI2_Byte 0
  loc_D211A9: LitVar_Missing var_158
  loc_D211AC: LitI2_Byte 0
  loc_D211AE: FLdZeroAd var_134
  loc_D211B1: CVarAd
  loc_D211B5: PopAdLdVar
  loc_D211B6: LitI4 1
  loc_D211BB: FLdPr Me
  loc_D211BE: MemLdStr global_88
  loc_D211C1: AryLock
  loc_D211C4: Ary1LdPr
  loc_D211C5: MemLdRfVar from_stack_1.global_100
  loc_D211C8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D211CD: AryUnlock
  loc_D211D0: FFreeAd var_B8 = ""
  loc_D211D7: FFreeVar var_148 = ""
  loc_D211DE: FLdRfVar var_134
  loc_D211E1: LitVarStr var_A4, "CodiCallPostal"
  loc_D211E6: PopAdLdVar
  loc_D211E7: FLdRfVar var_C4
  loc_D211EA: FLdRfVar var_B8
  loc_D211ED: FLdPr var_BC
  loc_D211F0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D211F5: FLdPr var_B8
  loc_D211F8:  = Me.Fields
  loc_D211FD: FLdPr var_C4
  loc_D21200: from_stack_2 = Me.Item(from_stack_1)
  loc_D21205: LitI2_Byte 0
  loc_D21207: LitVar_Missing var_158
  loc_D2120A: LitI2_Byte 0
  loc_D2120C: FLdZeroAd var_134
  loc_D2120F: CVarAd
  loc_D21213: PopAdLdVar
  loc_D21214: LitI4 1
  loc_D21219: FLdPr Me
  loc_D2121C: MemLdStr global_88
  loc_D2121F: AryLock
  loc_D21222: Ary1LdPr
  loc_D21223: MemLdRfVar from_stack_1.global_108
  loc_D21226: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2122B: AryUnlock
  loc_D2122E: FFreeAd var_B8 = ""
  loc_D21235: FFreeVar var_148 = ""
  loc_D2123C: FLdRfVar var_134
  loc_D2123F: LitVarStr var_A4, "DetaCallPostal"
  loc_D21244: PopAdLdVar
  loc_D21245: FLdRfVar var_C4
  loc_D21248: FLdRfVar var_B8
  loc_D2124B: FLdPr var_BC
  loc_D2124E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21253: FLdPr var_B8
  loc_D21256:  = Me.Fields
  loc_D2125B: FLdPr var_C4
  loc_D2125E: from_stack_2 = Me.Item(from_stack_1)
  loc_D21263: LitI2_Byte 0
  loc_D21265: LitVar_Missing var_158
  loc_D21268: LitI2_Byte 0
  loc_D2126A: FLdZeroAd var_134
  loc_D2126D: CVarAd
  loc_D21271: PopAdLdVar
  loc_D21272: LitI4 1
  loc_D21277: FLdPr Me
  loc_D2127A: MemLdStr global_88
  loc_D2127D: AryLock
  loc_D21280: Ary1LdPr
  loc_D21281: MemLdRfVar from_stack_1.global_112
  loc_D21284: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21289: AryUnlock
  loc_D2128C: FFreeAd var_B8 = ""
  loc_D21293: FFreeVar var_148 = ""
  loc_D2129A: FLdRfVar var_134
  loc_D2129D: LitVarStr var_A4, "NucaComePostal"
  loc_D212A2: PopAdLdVar
  loc_D212A3: FLdRfVar var_C4
  loc_D212A6: FLdRfVar var_B8
  loc_D212A9: FLdPr var_BC
  loc_D212AC: from_stack_1v = clsboleto.RsFrmGet()
  loc_D212B1: FLdPr var_B8
  loc_D212B4:  = Me.Fields
  loc_D212B9: FLdPr var_C4
  loc_D212BC: from_stack_2 = Me.Item(from_stack_1)
  loc_D212C1: LitI2_Byte 0
  loc_D212C3: LitVar_Missing var_158
  loc_D212C6: LitI2_Byte 0
  loc_D212C8: FLdZeroAd var_134
  loc_D212CB: CVarAd
  loc_D212CF: PopAdLdVar
  loc_D212D0: LitI4 1
  loc_D212D5: FLdPr Me
  loc_D212D8: MemLdStr global_88
  loc_D212DB: AryLock
  loc_D212DE: Ary1LdPr
  loc_D212DF: MemLdRfVar from_stack_1.global_116
  loc_D212E2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D212E7: AryUnlock
  loc_D212EA: FFreeAd var_B8 = ""
  loc_D212F1: FFreeVar var_148 = ""
  loc_D212F8: FLdRfVar var_134
  loc_D212FB: LitVarStr var_A4, "PisoComePostal"
  loc_D21300: PopAdLdVar
  loc_D21301: FLdRfVar var_C4
  loc_D21304: FLdRfVar var_B8
  loc_D21307: FLdPr var_BC
  loc_D2130A: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2130F: FLdPr var_B8
  loc_D21312:  = Me.Fields
  loc_D21317: FLdPr var_C4
  loc_D2131A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2131F: LitI2_Byte 0
  loc_D21321: LitVar_Missing var_158
  loc_D21324: LitI2_Byte 0
  loc_D21326: FLdZeroAd var_134
  loc_D21329: CVarAd
  loc_D2132D: PopAdLdVar
  loc_D2132E: LitI4 1
  loc_D21333: FLdPr Me
  loc_D21336: MemLdStr global_88
  loc_D21339: AryLock
  loc_D2133C: Ary1LdPr
  loc_D2133D: MemLdRfVar from_stack_1.global_128
  loc_D21340: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21345: AryUnlock
  loc_D21348: FFreeAd var_B8 = ""
  loc_D2134F: FFreeVar var_148 = ""
  loc_D21356: FLdRfVar var_134
  loc_D21359: LitVarStr var_A4, "DptoComePostal"
  loc_D2135E: PopAdLdVar
  loc_D2135F: FLdRfVar var_C4
  loc_D21362: FLdRfVar var_B8
  loc_D21365: FLdPr var_BC
  loc_D21368: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2136D: FLdPr var_B8
  loc_D21370:  = Me.Fields
  loc_D21375: FLdPr var_C4
  loc_D21378: from_stack_2 = Me.Item(from_stack_1)
  loc_D2137D: LitI2_Byte 0
  loc_D2137F: LitVar_Missing var_158
  loc_D21382: LitI2_Byte 0
  loc_D21384: FLdZeroAd var_134
  loc_D21387: CVarAd
  loc_D2138B: PopAdLdVar
  loc_D2138C: LitI4 1
  loc_D21391: FLdPr Me
  loc_D21394: MemLdStr global_88
  loc_D21397: AryLock
  loc_D2139A: Ary1LdPr
  loc_D2139B: MemLdRfVar from_stack_1.global_136
  loc_D2139E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D213A3: AryUnlock
  loc_D213A6: FFreeAd var_B8 = ""
  loc_D213AD: FFreeVar var_148 = ""
  loc_D213B4: FLdRfVar var_134
  loc_D213B7: LitVarStr var_A4, "MonoComePostal"
  loc_D213BC: PopAdLdVar
  loc_D213BD: FLdRfVar var_C4
  loc_D213C0: FLdRfVar var_B8
  loc_D213C3: FLdPr var_BC
  loc_D213C6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D213CB: FLdPr var_B8
  loc_D213CE:  = Me.Fields
  loc_D213D3: FLdPr var_C4
  loc_D213D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D213DB: LitI2_Byte 0
  loc_D213DD: LitVar_Missing var_158
  loc_D213E0: LitI2_Byte 0
  loc_D213E2: FLdZeroAd var_134
  loc_D213E5: CVarAd
  loc_D213E9: PopAdLdVar
  loc_D213EA: LitI4 1
  loc_D213EF: FLdPr Me
  loc_D213F2: MemLdStr global_88
  loc_D213F5: AryLock
  loc_D213F8: Ary1LdPr
  loc_D213F9: MemLdRfVar from_stack_1.global_144
  loc_D213FC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21401: AryUnlock
  loc_D21404: FFreeAd var_B8 = ""
  loc_D2140B: FFreeVar var_148 = ""
  loc_D21412: FLdRfVar var_134
  loc_D21415: LitVarStr var_A4, "CodiBarrPostal"
  loc_D2141A: PopAdLdVar
  loc_D2141B: FLdRfVar var_C4
  loc_D2141E: FLdRfVar var_B8
  loc_D21421: FLdPr var_BC
  loc_D21424: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21429: FLdPr var_B8
  loc_D2142C:  = Me.Fields
  loc_D21431: FLdPr var_C4
  loc_D21434: from_stack_2 = Me.Item(from_stack_1)
  loc_D21439: LitI2_Byte 0
  loc_D2143B: LitVar_Missing var_158
  loc_D2143E: LitI2_Byte 0
  loc_D21440: FLdZeroAd var_134
  loc_D21443: CVarAd
  loc_D21447: PopAdLdVar
  loc_D21448: LitI4 1
  loc_D2144D: FLdPr Me
  loc_D21450: MemLdStr global_88
  loc_D21453: AryLock
  loc_D21456: Ary1LdPr
  loc_D21457: MemLdRfVar from_stack_1.global_148
  loc_D2145A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2145F: AryUnlock
  loc_D21462: FFreeAd var_B8 = ""
  loc_D21469: FFreeVar var_148 = ""
  loc_D21470: FLdRfVar var_134
  loc_D21473: LitVarStr var_A4, "DetaBarrpostal"
  loc_D21478: PopAdLdVar
  loc_D21479: FLdRfVar var_C4
  loc_D2147C: FLdRfVar var_B8
  loc_D2147F: FLdPr var_BC
  loc_D21482: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21487: FLdPr var_B8
  loc_D2148A:  = Me.Fields
  loc_D2148F: FLdPr var_C4
  loc_D21492: from_stack_2 = Me.Item(from_stack_1)
  loc_D21497: LitI2_Byte 0
  loc_D21499: LitVar_Missing var_158
  loc_D2149C: LitI2_Byte 0
  loc_D2149E: FLdZeroAd var_134
  loc_D214A1: CVarAd
  loc_D214A5: PopAdLdVar
  loc_D214A6: LitI4 1
  loc_D214AB: FLdPr Me
  loc_D214AE: MemLdStr global_88
  loc_D214B1: AryLock
  loc_D214B4: Ary1LdPr
  loc_D214B5: MemLdRfVar from_stack_1.global_152
  loc_D214B8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D214BD: AryUnlock
  loc_D214C0: FFreeAd var_B8 = ""
  loc_D214C7: FFreeVar var_148 = ""
  loc_D214CE: FLdRfVar var_134
  loc_D214D1: LitVarStr var_A4, "ManzComePostal"
  loc_D214D6: PopAdLdVar
  loc_D214D7: FLdRfVar var_C4
  loc_D214DA: FLdRfVar var_B8
  loc_D214DD: FLdPr var_BC
  loc_D214E0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D214E5: FLdPr var_B8
  loc_D214E8:  = Me.Fields
  loc_D214ED: FLdPr var_C4
  loc_D214F0: from_stack_2 = Me.Item(from_stack_1)
  loc_D214F5: LitI2_Byte 0
  loc_D214F7: LitVar_Missing var_158
  loc_D214FA: LitI2_Byte 0
  loc_D214FC: FLdZeroAd var_134
  loc_D214FF: CVarAd
  loc_D21503: PopAdLdVar
  loc_D21504: LitI4 1
  loc_D21509: FLdPr Me
  loc_D2150C: MemLdStr global_88
  loc_D2150F: AryLock
  loc_D21512: Ary1LdPr
  loc_D21513: MemLdRfVar from_stack_1.global_156
  loc_D21516: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2151B: AryUnlock
  loc_D2151E: FFreeAd var_B8 = ""
  loc_D21525: FFreeVar var_148 = ""
  loc_D2152C: FLdRfVar var_134
  loc_D2152F: LitVarStr var_A4, "CasaComePostal"
  loc_D21534: PopAdLdVar
  loc_D21535: FLdRfVar var_C4
  loc_D21538: FLdRfVar var_B8
  loc_D2153B: FLdPr var_BC
  loc_D2153E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21543: FLdPr var_B8
  loc_D21546:  = Me.Fields
  loc_D2154B: FLdPr var_C4
  loc_D2154E: from_stack_2 = Me.Item(from_stack_1)
  loc_D21553: LitI2_Byte 0
  loc_D21555: LitVar_Missing var_158
  loc_D21558: LitI2_Byte 0
  loc_D2155A: FLdZeroAd var_134
  loc_D2155D: CVarAd
  loc_D21561: PopAdLdVar
  loc_D21562: LitI4 1
  loc_D21567: FLdPr Me
  loc_D2156A: MemLdStr global_88
  loc_D2156D: AryLock
  loc_D21570: Ary1LdPr
  loc_D21571: MemLdRfVar from_stack_1.global_164
  loc_D21574: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21579: AryUnlock
  loc_D2157C: FFreeAd var_B8 = ""
  loc_D21583: FFreeVar var_148 = ""
  loc_D2158A: FLdRfVar var_134
  loc_D2158D: LitVarStr var_A4, "UbicComePostal"
  loc_D21592: PopAdLdVar
  loc_D21593: FLdRfVar var_C4
  loc_D21596: FLdRfVar var_B8
  loc_D21599: FLdPr var_BC
  loc_D2159C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D215A1: FLdPr var_B8
  loc_D215A4:  = Me.Fields
  loc_D215A9: FLdPr var_C4
  loc_D215AC: from_stack_2 = Me.Item(from_stack_1)
  loc_D215B1: LitI2_Byte 0
  loc_D215B3: LitVar_Missing var_158
  loc_D215B6: LitI2_Byte 0
  loc_D215B8: FLdZeroAd var_134
  loc_D215BB: CVarAd
  loc_D215BF: PopAdLdVar
  loc_D215C0: LitI4 1
  loc_D215C5: FLdPr Me
  loc_D215C8: MemLdStr global_88
  loc_D215CB: AryLock
  loc_D215CE: Ary1LdPr
  loc_D215CF: MemLdRfVar from_stack_1.global_176
  loc_D215D2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D215D7: AryUnlock
  loc_D215DA: FFreeAd var_B8 = ""
  loc_D215E1: FFreeVar var_148 = ""
  loc_D215E8: FLdRfVar var_134
  loc_D215EB: LitVarStr var_A4, "CodiLocaPostal"
  loc_D215F0: PopAdLdVar
  loc_D215F1: FLdRfVar var_C4
  loc_D215F4: FLdRfVar var_B8
  loc_D215F7: FLdPr var_BC
  loc_D215FA: from_stack_1v = clsboleto.RsFrmGet()
  loc_D215FF: FLdPr var_B8
  loc_D21602:  = Me.Fields
  loc_D21607: FLdPr var_C4
  loc_D2160A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2160F: LitI2_Byte 0
  loc_D21611: LitVar_Missing var_158
  loc_D21614: LitI2_Byte 0
  loc_D21616: FLdZeroAd var_134
  loc_D21619: CVarAd
  loc_D2161D: PopAdLdVar
  loc_D2161E: LitI4 1
  loc_D21623: FLdPr Me
  loc_D21626: MemLdStr global_88
  loc_D21629: AryLock
  loc_D2162C: Ary1LdPr
  loc_D2162D: MemLdRfVar from_stack_1.global_184
  loc_D21630: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21635: AryUnlock
  loc_D21638: FFreeAd var_B8 = ""
  loc_D2163F: FFreeVar var_148 = ""
  loc_D21646: FLdRfVar var_134
  loc_D21649: LitVarStr var_A4, "DetaLocaPostal"
  loc_D2164E: PopAdLdVar
  loc_D2164F: FLdRfVar var_C4
  loc_D21652: FLdRfVar var_B8
  loc_D21655: FLdPr var_BC
  loc_D21658: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2165D: FLdPr var_B8
  loc_D21660:  = Me.Fields
  loc_D21665: FLdPr var_C4
  loc_D21668: from_stack_2 = Me.Item(from_stack_1)
  loc_D2166D: LitI2_Byte 0
  loc_D2166F: LitVar_Missing var_158
  loc_D21672: LitI2_Byte 0
  loc_D21674: FLdZeroAd var_134
  loc_D21677: CVarAd
  loc_D2167B: PopAdLdVar
  loc_D2167C: LitI4 1
  loc_D21681: FLdPr Me
  loc_D21684: MemLdStr global_88
  loc_D21687: AryLock
  loc_D2168A: Ary1LdPr
  loc_D2168B: MemLdRfVar from_stack_1.global_188
  loc_D2168E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21693: AryUnlock
  loc_D21696: FFreeAd var_B8 = ""
  loc_D2169D: FFreeVar var_148 = ""
  loc_D216A4: FLdRfVar var_134
  loc_D216A7: LitVarStr var_A4, "CopoComePostal"
  loc_D216AC: PopAdLdVar
  loc_D216AD: FLdRfVar var_C4
  loc_D216B0: FLdRfVar var_B8
  loc_D216B3: FLdPr var_BC
  loc_D216B6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D216BB: FLdPr var_B8
  loc_D216BE:  = Me.Fields
  loc_D216C3: FLdPr var_C4
  loc_D216C6: from_stack_2 = Me.Item(from_stack_1)
  loc_D216CB: LitI2_Byte 0
  loc_D216CD: LitVar_Missing var_158
  loc_D216D0: LitI2_Byte 0
  loc_D216D2: FLdZeroAd var_134
  loc_D216D5: CVarAd
  loc_D216D9: PopAdLdVar
  loc_D216DA: LitI4 1
  loc_D216DF: FLdPr Me
  loc_D216E2: MemLdStr global_88
  loc_D216E5: AryLock
  loc_D216E8: Ary1LdPr
  loc_D216E9: MemLdRfVar from_stack_1.global_192
  loc_D216EC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D216F1: AryUnlock
  loc_D216F4: FFreeAd var_B8 = ""
  loc_D216FB: FFreeVar var_148 = ""
  loc_D21702: FLdRfVar var_134
  loc_D21705: LitVarStr var_A4, "FechaApertura"
  loc_D2170A: PopAdLdVar
  loc_D2170B: FLdRfVar var_C4
  loc_D2170E: FLdRfVar var_B8
  loc_D21711: FLdPr var_BC
  loc_D21714: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21719: FLdPr var_B8
  loc_D2171C:  = Me.Fields
  loc_D21721: FLdPr var_C4
  loc_D21724: from_stack_2 = Me.Item(from_stack_1)
  loc_D21729: LitI2_Byte 0
  loc_D2172B: LitVar_Missing var_158
  loc_D2172E: LitI2_Byte 0
  loc_D21730: FLdZeroAd var_134
  loc_D21733: CVarAd
  loc_D21737: PopAdLdVar
  loc_D21738: LitI4 1
  loc_D2173D: FLdPr Me
  loc_D21740: MemLdStr global_88
  loc_D21743: AryLock
  loc_D21746: Ary1LdPr
  loc_D21747: MemLdRfVar from_stack_1.global_200
  loc_D2174A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2174F: AryUnlock
  loc_D21752: FFreeAd var_B8 = ""
  loc_D21759: FFreeVar var_148 = ""
  loc_D21760: FLdRfVar var_134
  loc_D21763: LitVarStr var_A4, "ExpeApertura"
  loc_D21768: PopAdLdVar
  loc_D21769: FLdRfVar var_C4
  loc_D2176C: FLdRfVar var_B8
  loc_D2176F: FLdPr var_BC
  loc_D21772: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21777: FLdPr var_B8
  loc_D2177A:  = Me.Fields
  loc_D2177F: FLdPr var_C4
  loc_D21782: from_stack_2 = Me.Item(from_stack_1)
  loc_D21787: LitI2_Byte 0
  loc_D21789: LitVar_Missing var_158
  loc_D2178C: LitI2_Byte 0
  loc_D2178E: FLdZeroAd var_134
  loc_D21791: CVarAd
  loc_D21795: PopAdLdVar
  loc_D21796: LitI4 1
  loc_D2179B: FLdPr Me
  loc_D2179E: MemLdStr global_88
  loc_D217A1: AryLock
  loc_D217A4: Ary1LdPr
  loc_D217A5: MemLdRfVar from_stack_1.global_204
  loc_D217A8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D217AD: AryUnlock
  loc_D217B0: FFreeAd var_B8 = ""
  loc_D217B7: FFreeVar var_148 = ""
  loc_D217BE: FLdRfVar var_134
  loc_D217C1: LitVarStr var_A4, "FechaBaja"
  loc_D217C6: PopAdLdVar
  loc_D217C7: FLdRfVar var_C4
  loc_D217CA: FLdRfVar var_B8
  loc_D217CD: FLdPr var_BC
  loc_D217D0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D217D5: FLdPr var_B8
  loc_D217D8:  = Me.Fields
  loc_D217DD: FLdPr var_C4
  loc_D217E0: from_stack_2 = Me.Item(from_stack_1)
  loc_D217E5: LitI2_Byte 0
  loc_D217E7: LitVar_Missing var_158
  loc_D217EA: LitI2_Byte 0
  loc_D217EC: FLdZeroAd var_134
  loc_D217EF: CVarAd
  loc_D217F3: PopAdLdVar
  loc_D217F4: LitI4 1
  loc_D217F9: FLdPr Me
  loc_D217FC: MemLdStr global_88
  loc_D217FF: AryLock
  loc_D21802: Ary1LdPr
  loc_D21803: MemLdRfVar from_stack_1.global_208
  loc_D21806: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D2180B: AryUnlock
  loc_D2180E: FFreeAd var_B8 = ""
  loc_D21815: FFreeVar var_148 = ""
  loc_D2181C: FLdRfVar var_134
  loc_D2181F: LitVarStr var_A4, "ExpeBaja"
  loc_D21824: PopAdLdVar
  loc_D21825: FLdRfVar var_C4
  loc_D21828: FLdRfVar var_B8
  loc_D2182B: FLdPr var_BC
  loc_D2182E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21833: FLdPr var_B8
  loc_D21836:  = Me.Fields
  loc_D2183B: FLdPr var_C4
  loc_D2183E: from_stack_2 = Me.Item(from_stack_1)
  loc_D21843: LitI2_Byte 0
  loc_D21845: LitVar_Missing var_158
  loc_D21848: LitI2_Byte 0
  loc_D2184A: FLdZeroAd var_134
  loc_D2184D: CVarAd
  loc_D21851: PopAdLdVar
  loc_D21852: LitI4 1
  loc_D21857: FLdPr Me
  loc_D2185A: MemLdStr global_88
  loc_D2185D: AryLock
  loc_D21860: Ary1LdPr
  loc_D21861: MemLdRfVar from_stack_1.global_212
  loc_D21864: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21869: AryUnlock
  loc_D2186C: FFreeAd var_B8 = ""
  loc_D21873: FFreeVar var_148 = ""
  loc_D2187A: FLdRfVar var_134
  loc_D2187D: LitVarStr var_A4, "Libro"
  loc_D21882: PopAdLdVar
  loc_D21883: FLdRfVar var_C4
  loc_D21886: FLdRfVar var_B8
  loc_D21889: FLdPr var_BC
  loc_D2188C: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21891: FLdPr var_B8
  loc_D21894:  = Me.Fields
  loc_D21899: FLdPr var_C4
  loc_D2189C: from_stack_2 = Me.Item(from_stack_1)
  loc_D218A1: LitI2_Byte 0
  loc_D218A3: LitVar_Missing var_158
  loc_D218A6: LitI2_Byte 0
  loc_D218A8: FLdZeroAd var_134
  loc_D218AB: CVarAd
  loc_D218AF: PopAdLdVar
  loc_D218B0: LitI4 1
  loc_D218B5: FLdPr Me
  loc_D218B8: MemLdStr global_88
  loc_D218BB: AryLock
  loc_D218BE: Ary1LdPr
  loc_D218BF: MemLdRfVar from_stack_1.global_220
  loc_D218C2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D218C7: AryUnlock
  loc_D218CA: FFreeAd var_B8 = ""
  loc_D218D1: FFreeVar var_148 = ""
  loc_D218D8: FLdRfVar var_134
  loc_D218DB: LitVarStr var_A4, "Clasificacion"
  loc_D218E0: PopAdLdVar
  loc_D218E1: FLdRfVar var_C4
  loc_D218E4: FLdRfVar var_B8
  loc_D218E7: FLdPr var_BC
  loc_D218EA: from_stack_1v = clsboleto.RsFrmGet()
  loc_D218EF: FLdPr var_B8
  loc_D218F2:  = Me.Fields
  loc_D218F7: FLdPr var_C4
  loc_D218FA: from_stack_2 = Me.Item(from_stack_1)
  loc_D218FF: LitI2_Byte 0
  loc_D21901: LitVar_Missing var_158
  loc_D21904: LitI2_Byte 0
  loc_D21906: FLdZeroAd var_134
  loc_D21909: CVarAd
  loc_D2190D: PopAdLdVar
  loc_D2190E: LitI4 1
  loc_D21913: FLdPr Me
  loc_D21916: MemLdStr global_88
  loc_D21919: AryLock
  loc_D2191C: Ary1LdPr
  loc_D2191D: MemLdRfVar from_stack_1.global_224
  loc_D21920: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21925: AryUnlock
  loc_D21928: FFreeAd var_B8 = ""
  loc_D2192F: FFreeVar var_148 = ""
  loc_D21936: FLdRfVar var_134
  loc_D21939: LitVarStr var_A4, "Expediente"
  loc_D2193E: PopAdLdVar
  loc_D2193F: FLdRfVar var_C4
  loc_D21942: FLdRfVar var_B8
  loc_D21945: FLdPr var_BC
  loc_D21948: from_stack_1v = clsboleto.RsFrmGet()
  loc_D2194D: FLdPr var_B8
  loc_D21950:  = Me.Fields
  loc_D21955: FLdPr var_C4
  loc_D21958: from_stack_2 = Me.Item(from_stack_1)
  loc_D2195D: LitI2_Byte 0
  loc_D2195F: LitVar_Missing var_158
  loc_D21962: LitI2_Byte 0
  loc_D21964: FLdZeroAd var_134
  loc_D21967: CVarAd
  loc_D2196B: PopAdLdVar
  loc_D2196C: LitI4 1
  loc_D21971: FLdPr Me
  loc_D21974: MemLdStr global_88
  loc_D21977: AryLock
  loc_D2197A: Ary1LdPr
  loc_D2197B: MemLdRfVar from_stack_1.global_228
  loc_D2197E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21983: AryUnlock
  loc_D21986: FFreeAd var_B8 = ""
  loc_D2198D: FFreeVar var_148 = ""
  loc_D21994: FLdRfVar var_134
  loc_D21997: LitVarStr var_A4, "NumeReso"
  loc_D2199C: PopAdLdVar
  loc_D2199D: FLdRfVar var_C4
  loc_D219A0: FLdRfVar var_B8
  loc_D219A3: FLdPr var_BC
  loc_D219A6: from_stack_1v = clsboleto.RsFrmGet()
  loc_D219AB: FLdPr var_B8
  loc_D219AE:  = Me.Fields
  loc_D219B3: FLdPr var_C4
  loc_D219B6: from_stack_2 = Me.Item(from_stack_1)
  loc_D219BB: LitI2_Byte 0
  loc_D219BD: LitVar_Missing var_158
  loc_D219C0: LitI2_Byte 0
  loc_D219C2: FLdZeroAd var_134
  loc_D219C5: CVarAd
  loc_D219C9: PopAdLdVar
  loc_D219CA: LitI4 1
  loc_D219CF: FLdPr Me
  loc_D219D2: MemLdStr global_88
  loc_D219D5: AryLock
  loc_D219D8: Ary1LdPr
  loc_D219D9: MemLdRfVar from_stack_1.global_232
  loc_D219DC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D219E1: AryUnlock
  loc_D219E4: FFreeAd var_B8 = ""
  loc_D219EB: FFreeVar var_148 = ""
  loc_D219F2: FLdRfVar var_134
  loc_D219F5: LitVarStr var_A4, "FechaTrans"
  loc_D219FA: PopAdLdVar
  loc_D219FB: FLdRfVar var_C4
  loc_D219FE: FLdRfVar var_B8
  loc_D21A01: FLdPr var_BC
  loc_D21A04: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21A09: FLdPr var_B8
  loc_D21A0C:  = Me.Fields
  loc_D21A11: FLdPr var_C4
  loc_D21A14: from_stack_2 = Me.Item(from_stack_1)
  loc_D21A19: LitI2_Byte 0
  loc_D21A1B: LitVar_Missing var_158
  loc_D21A1E: LitI2_Byte 0
  loc_D21A20: FLdZeroAd var_134
  loc_D21A23: CVarAd
  loc_D21A27: PopAdLdVar
  loc_D21A28: LitI4 1
  loc_D21A2D: FLdPr Me
  loc_D21A30: MemLdStr global_88
  loc_D21A33: AryLock
  loc_D21A36: Ary1LdPr
  loc_D21A37: MemLdRfVar from_stack_1.global_236
  loc_D21A3A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21A3F: AryUnlock
  loc_D21A42: FFreeAd var_B8 = ""
  loc_D21A49: FFreeVar var_148 = ""
  loc_D21A50: FLdRfVar var_134
  loc_D21A53: LitVarStr var_A4, "ExpeTrans"
  loc_D21A58: PopAdLdVar
  loc_D21A59: FLdRfVar var_C4
  loc_D21A5C: FLdRfVar var_B8
  loc_D21A5F: FLdPr var_BC
  loc_D21A62: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21A67: FLdPr var_B8
  loc_D21A6A:  = Me.Fields
  loc_D21A6F: FLdPr var_C4
  loc_D21A72: from_stack_2 = Me.Item(from_stack_1)
  loc_D21A77: LitI2_Byte 0
  loc_D21A79: LitVar_Missing var_158
  loc_D21A7C: LitI2_Byte 0
  loc_D21A7E: FLdZeroAd var_134
  loc_D21A81: CVarAd
  loc_D21A85: PopAdLdVar
  loc_D21A86: LitI4 1
  loc_D21A8B: FLdPr Me
  loc_D21A8E: MemLdStr global_88
  loc_D21A91: AryLock
  loc_D21A94: Ary1LdPr
  loc_D21A95: MemLdRfVar from_stack_1.global_240
  loc_D21A98: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21A9D: AryUnlock
  loc_D21AA0: FFreeAd var_B8 = ""
  loc_D21AA7: FFreeVar var_148 = ""
  loc_D21AAE: FLdRfVar var_134
  loc_D21AB1: LitVarStr var_A4, "ClasifMod"
  loc_D21AB6: PopAdLdVar
  loc_D21AB7: FLdRfVar var_C4
  loc_D21ABA: FLdRfVar var_B8
  loc_D21ABD: FLdPr var_BC
  loc_D21AC0: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21AC5: FLdPr var_B8
  loc_D21AC8:  = Me.Fields
  loc_D21ACD: FLdPr var_C4
  loc_D21AD0: from_stack_2 = Me.Item(from_stack_1)
  loc_D21AD5: LitI2_Byte 0
  loc_D21AD7: LitVar_Missing var_158
  loc_D21ADA: LitI2_Byte 0
  loc_D21ADC: FLdZeroAd var_134
  loc_D21ADF: CVarAd
  loc_D21AE3: PopAdLdVar
  loc_D21AE4: LitI4 1
  loc_D21AE9: FLdPr Me
  loc_D21AEC: MemLdStr global_88
  loc_D21AEF: AryLock
  loc_D21AF2: Ary1LdPr
  loc_D21AF3: MemLdRfVar from_stack_1.global_244
  loc_D21AF6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21AFB: AryUnlock
  loc_D21AFE: FFreeAd var_B8 = ""
  loc_D21B05: FFreeVar var_148 = ""
  loc_D21B0C: FLdRfVar var_134
  loc_D21B0F: LitVarStr var_A4, "Resolucion"
  loc_D21B14: PopAdLdVar
  loc_D21B15: FLdRfVar var_C4
  loc_D21B18: FLdRfVar var_B8
  loc_D21B1B: FLdPr var_BC
  loc_D21B1E: from_stack_1v = clsboleto.RsFrmGet()
  loc_D21B23: FLdPr var_B8
  loc_D21B26:  = Me.Fields
  loc_D21B2B: FLdPr var_C4
  loc_D21B2E: from_stack_2 = Me.Item(from_stack_1)
  loc_D21B33: LitI2_Byte 0
  loc_D21B35: LitVar_Missing var_158
  loc_D21B38: LitI2_Byte 0
  loc_D21B3A: FLdZeroAd var_134
  loc_D21B3D: CVarAd
  loc_D21B41: PopAdLdVar
  loc_D21B42: LitI4 1
  loc_D21B47: FLdPr Me
  loc_D21B4A: MemLdStr global_88
  loc_D21B4D: AryLock
  loc_D21B50: Ary1LdPr
  loc_D21B51: MemLdRfVar from_stack_1.global_248
  loc_D21B54: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_D21B59: AryUnlock
  loc_D21B5C: FFreeAd var_B8 = ""
  loc_D21B63: FFreeVar var_148 = ""
  loc_D21B6A: Call Proc_285_17_B490F8()
  loc_D21B6F: Call Proc_285_20_AD7E30()
  loc_D21B74: LitNothing
  loc_D21B76: FStAd var_BC 
  loc_D21B7A: Call Proc_285_16_BF5528()
  loc_D21B7F: LitI2_Byte &HFF
  loc_D21B81: FLdPr Me
  loc_D21B84: MemStI2 bGenerado
  loc_D21B87: LitI4 0
  loc_D21B8C: CI2I4
  loc_D21B8D: FLdPr Me
  loc_D21B90: Me.MousePointer = from_stack_1
  loc_D21B95: LitVarStr var_A4, vbNullString
  loc_D21B9A: PopAdLdVar
  loc_D21B9B: FLdPr Me
  loc_D21B9E: VCallAd Control_ID_statusBar
  loc_D21BA1: FStAdFunc var_B8
  loc_D21BA4: FLdPr var_B8
  loc_D21BA7: LateIdSt
  loc_D21BAC: FFree1Ad var_B8
  loc_D21BAF: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AE12E8
  'Data Table: 4B5FC4
  loc_AE1184: FLdRfVar var_88
  loc_AE1187: LitI2_Byte 0
  loc_AE1189: LitI2_Byte &HFF
  loc_AE118B: ImpAdLdI4 MemVar_D93C84
  loc_AE118E: FLdPr Me
  loc_AE1191: MemLdRfVar from_stack_1.global_56
  loc_AE1194: NewIfNullPr IFileSystem3
  loc_AE1197: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE119C: ILdRf var_88
  loc_AE119F: FLdPr Me
  loc_AE11A2: MemStVarAd
  loc_AE11A6: FFree1Ad var_88
  loc_AE11A9: LitI2_Byte &HFF
  loc_AE11AB: ImpAdStI2 MemVar_D93C8A
  loc_AE11AE: Call Proc_285_21_BD9174()
  loc_AE11B3: FLdRfVar var_94
  loc_AE11B6: FLdRfVar var_8A
  loc_AE11B9: FLdPr Me
  loc_AE11BC: VCallAd Control_ID_OficinaCbo
  loc_AE11BF: FStAdFunc var_88
  loc_AE11C2: FLdPr var_88
  loc_AE11C5:  = Me.ListIndex
  loc_AE11CA: FLdI2 var_8A
  loc_AE11CD: FLdPr Me
  loc_AE11D0: VCallAd Control_ID_OficinaCbo
  loc_AE11D3: FStAdFunc var_90
  loc_AE11D6: FLdPr var_90
  loc_AE11D9:  = Me.ItemData
  loc_AE11DE: ILdRf var_94
  loc_AE11E1: FStR4 var_98
  loc_AE11E4: FFreeAd var_88 = ""
  loc_AE11EB: ILdRf var_98
  loc_AE11EE: LitI4 1
  loc_AE11F3: EqI4
  loc_AE11F4: BranchF loc_AE122F
  loc_AE11F7: Call Proc_285_22_C5CF60()
  loc_AE11FC: FLdPr Me
  loc_AE11FF: MemLdStr global_92
  loc_AE1202: LitI2_Byte 1
  loc_AE1204: FnUBound
  loc_AE1206: LitI4 0
  loc_AE120B: GtI4
  loc_AE120C: BranchF loc_AE1214
  loc_AE120F: Call Proc_285_26_AFFEE4()
  loc_AE1214: FLdPr Me
  loc_AE1217: MemLdStr global_100
  loc_AE121A: LitI2_Byte 1
  loc_AE121C: FnUBound
  loc_AE121E: LitI4 0
  loc_AE1223: GtI4
  loc_AE1224: BranchF loc_AE122C
  loc_AE1227: Call Proc_285_27_B14F9C()
  loc_AE122C: Branch loc_AE12CC
  loc_AE122F: ILdRf var_98
  loc_AE1232: LitI4 2
  loc_AE1237: EqI4
  loc_AE1238: BranchF loc_AE1273
  loc_AE123B: Call Proc_285_23_C5B030()
  loc_AE1240: FLdPr Me
  loc_AE1243: MemLdStr global_92
  loc_AE1246: LitI2_Byte 1
  loc_AE1248: FnUBound
  loc_AE124A: LitI4 0
  loc_AE124F: GtI4
  loc_AE1250: BranchF loc_AE1258
  loc_AE1253: Call Proc_285_26_AFFEE4()
  loc_AE1258: FLdPr Me
  loc_AE125B: MemLdStr global_96
  loc_AE125E: LitI2_Byte 1
  loc_AE1260: FnUBound
  loc_AE1262: LitI4 0
  loc_AE1267: GtI4
  loc_AE1268: BranchF loc_AE1270
  loc_AE126B: Call Proc_285_28_B46F60()
  loc_AE1270: Branch loc_AE12CC
  loc_AE1273: ILdRf var_98
  loc_AE1276: LitI4 6
  loc_AE127B: EqI4
  loc_AE127C: BranchF loc_AE12CC
  loc_AE127F: Call Proc_285_24_C5BFAC()
  loc_AE1284: FLdPr Me
  loc_AE1287: MemLdStr global_92
  loc_AE128A: LitI2_Byte 1
  loc_AE128C: FnUBound
  loc_AE128E: LitI4 0
  loc_AE1293: GtI4
  loc_AE1294: BranchF loc_AE129C
  loc_AE1297: Call Proc_285_26_AFFEE4()
  loc_AE129C: FLdPr Me
  loc_AE129F: MemLdStr global_96
  loc_AE12A2: LitI2_Byte 1
  loc_AE12A4: FnUBound
  loc_AE12A6: LitI4 0
  loc_AE12AB: GtI4
  loc_AE12AC: BranchF loc_AE12B4
  loc_AE12AF: Call Proc_285_28_B46F60()
  loc_AE12B4: FLdPr Me
  loc_AE12B7: MemLdStr global_104
  loc_AE12BA: LitI2_Byte 1
  loc_AE12BC: FnUBound
  loc_AE12BE: LitI4 0
  loc_AE12C3: GtI4
  loc_AE12C4: BranchF loc_AE12CC
  loc_AE12C7: Call Proc_285_29_AD1C2C()
  loc_AE12CC: Call Proc_285_30_9F61A8()
  loc_AE12D1: FLdPr Me
  loc_AE12D4: MemLdRfVar from_stack_1.global_60
  loc_AE12D7: LdPrVar
  loc_AE12D9: LateMemCall
  loc_AE12DF: LitStr vbNullString
  loc_AE12E2: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_AE12E7: ExitProcHresult
End Sub

Private Function Proc_285_16_BF5528() 'BF5528
  'Data Table: 4B5FC4
  loc_BF4CF4: FLdRfVar var_9C
  loc_BF4CF7: FLdRfVar var_92
  loc_BF4CFA: FLdPr Me
  loc_BF4CFD: VCallAd Control_ID_OficinaCbo
  loc_BF4D00: FStAdFunc var_90
  loc_BF4D03: FLdPr var_90
  loc_BF4D06:  = Me.ListIndex
  loc_BF4D0B: FLdI2 var_92
  loc_BF4D0E: FLdPr Me
  loc_BF4D11: VCallAd Control_ID_OficinaCbo
  loc_BF4D14: FStAdFunc var_98
  loc_BF4D17: FLdPr var_98
  loc_BF4D1A:  = Me.ItemData
  loc_BF4D1F: ILdRf var_9C
  loc_BF4D22: FStR4 var_A0
  loc_BF4D25: FFreeAd var_90 = ""
  loc_BF4D2C: ILdRf var_A0
  loc_BF4D2F: LitI4 1
  loc_BF4D34: EqI4
  loc_BF4D35: BranchF loc_BF5114
  loc_BF4D38: FLdRfVar var_88
  loc_BF4D3B: NewIfNullAd
  loc_BF4D3E: FStAd var_A4 
  loc_BF4D42: LitStr "SELECT CUIT CucuPers, IF(tipo_relacion_persona='Titular','Otros Titular',tipo_relacion_persona) TipoRela, denominacion DetaPers, fecha_modificacion_relacion FealRela"
  loc_BF4D45: LitStr " FROM vpadrones_persona WHERE nro_padron = "
  loc_BF4D48: ConcatStr
  loc_BF4D49: FStStrNoPop var_AC
  loc_BF4D4C: FLdRfVar var_A8
  loc_BF4D4F: FLdPr Me
  loc_BF4D52: VCallAd Control_ID_NumeCtaTxt
  loc_BF4D55: FStAdFunc var_90
  loc_BF4D58: FLdPr var_90
  loc_BF4D5B:  = Me.Text
  loc_BF4D60: ILdRf var_A8
  loc_BF4D63: ConcatStr
  loc_BF4D64: FStStrNoPop var_B0
  loc_BF4D67: LitStr " AND  principal = 'No' AND Estado = 'Activo'"
  loc_BF4D6A: ConcatStr
  loc_BF4D6B: FStStrNoPop var_B4
  loc_BF4D6E: FLdPr var_A4
  loc_BF4D71: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_BF4D76: FFreeStr var_AC = "": var_A8 = "": var_B0 = ""
  loc_BF4D81: FFree1Ad var_90
  loc_BF4D84: LitI4 0
  loc_BF4D89: FLdRfVar var_9C
  loc_BF4D8C: FLdPr var_A4
  loc_BF4D8F: from_stack_1 = clsrelacion.RecordCount
  loc_BF4D94: ILdRf var_9C
  loc_BF4D97: FLdPr Me
  loc_BF4D9A: MemLdRfVar from_stack_1.global_92
  loc_BF4D9D: Redim
  loc_BF4DA7: FLdPr Me
  loc_BF4DAA: MemLdStr global_92
  loc_BF4DAD: LitI2_Byte 1
  loc_BF4DAF: FnUBound
  loc_BF4DB1: LitI4 0
  loc_BF4DB6: GtI4
  loc_BF4DB7: BranchF loc_BF4EFF
  loc_BF4DBA: FLdPr var_A4
  loc_BF4DBD: Call clsrelacion.MoveFirst(from_stack_1v)
  loc_BF4DC2: LitI2_Byte 1
  loc_BF4DC4: FLdPr Me
  loc_BF4DC7: MemLdRfVar from_stack_1.global_114
  loc_BF4DCA: FLdPr Me
  loc_BF4DCD: MemLdStr global_92
  loc_BF4DD0: LitI2_Byte 1
  loc_BF4DD2: FnUBound
  loc_BF4DD4: CI2I4
  loc_BF4DD5: ForI2 var_B8
  loc_BF4DDB: FLdRfVar var_A8
  loc_BF4DDE: FLdPr var_A4
  loc_BF4DE1: from_stack_1 = clsrelacion.CucuPers
  loc_BF4DE6: LitI2_Byte 0
  loc_BF4DE8: LitVar_Missing var_EC
  loc_BF4DEB: LitI2_Byte 0
  loc_BF4DED: FLdZeroAd var_A8
  loc_BF4DF0: CVarStr var_CC
  loc_BF4DF3: PopAdLdVar
  loc_BF4DF4: FLdPr Me
  loc_BF4DF7: MemLdI2 global_114
  loc_BF4DFA: CI4UI1
  loc_BF4DFB: FLdPr Me
  loc_BF4DFE: MemLdStr global_92
  loc_BF4E01: AryLock
  loc_BF4E04: Ary1LdPr
  loc_BF4E05: MemLdRfVar from_stack_1.global_0
  loc_BF4E08: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF4E0D: AryUnlock
  loc_BF4E10: FFreeVar var_CC = ""
  loc_BF4E17: FLdRfVar var_A8
  loc_BF4E1A: FLdPr var_A4
  loc_BF4E1D: from_stack_1 = clsrelacion.TipoRela
  loc_BF4E22: LitI2_Byte 0
  loc_BF4E24: LitVar_Missing var_EC
  loc_BF4E27: LitI2_Byte 0
  loc_BF4E29: FLdZeroAd var_A8
  loc_BF4E2C: CVarStr var_CC
  loc_BF4E2F: PopAdLdVar
  loc_BF4E30: FLdPr Me
  loc_BF4E33: MemLdI2 global_114
  loc_BF4E36: CI4UI1
  loc_BF4E37: FLdPr Me
  loc_BF4E3A: MemLdStr global_92
  loc_BF4E3D: AryLock
  loc_BF4E40: Ary1LdPr
  loc_BF4E41: MemLdRfVar from_stack_1.global_4
  loc_BF4E44: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF4E49: AryUnlock
  loc_BF4E4C: FFreeVar var_CC = ""
  loc_BF4E53: FLdRfVar var_A8
  loc_BF4E56: FLdPr var_A4
  loc_BF4E59: from_stack_1 = clsrelacion.DetaPers
  loc_BF4E5E: LitI2_Byte 0
  loc_BF4E60: LitVar_Missing var_EC
  loc_BF4E63: LitI2_Byte 0
  loc_BF4E65: FLdZeroAd var_A8
  loc_BF4E68: CVarStr var_CC
  loc_BF4E6B: PopAdLdVar
  loc_BF4E6C: FLdPr Me
  loc_BF4E6F: MemLdI2 global_114
  loc_BF4E72: CI4UI1
  loc_BF4E73: FLdPr Me
  loc_BF4E76: MemLdStr global_92
  loc_BF4E79: AryLock
  loc_BF4E7C: Ary1LdPr
  loc_BF4E7D: MemLdRfVar from_stack_1.global_8
  loc_BF4E80: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF4E85: AryUnlock
  loc_BF4E88: FFreeVar var_CC = ""
  loc_BF4E8F: FLdRfVar var_CC
  loc_BF4E92: FLdPr var_A4
  loc_BF4E95: from_stack_1 = clsrelacion.FealRela
  loc_BF4E9A: LitI4 1
  loc_BF4E9F: LitI4 1
  loc_BF4EA4: LitVarStr var_DC, "dd/mm/yyyy"
  loc_BF4EA9: FStVarCopyObj var_EC
  loc_BF4EAC: FLdRfVar var_EC
  loc_BF4EAF: FLdRfVar var_CC
  loc_BF4EB2: FLdRfVar var_FC
  loc_BF4EB5: ImpAdCallFPR4  = Format(, )
  loc_BF4EBA: LitI2_Byte 0
  loc_BF4EBC: LitVar_Missing var_11C
  loc_BF4EBF: LitI2_Byte 0
  loc_BF4EC1: FLdVar var_FC
  loc_BF4EC5: FLdPr Me
  loc_BF4EC8: MemLdI2 global_114
  loc_BF4ECB: CI4UI1
  loc_BF4ECC: FLdPr Me
  loc_BF4ECF: MemLdStr global_92
  loc_BF4ED2: AryLock
  loc_BF4ED5: Ary1LdPr
  loc_BF4ED6: MemLdRfVar from_stack_1.global_12
  loc_BF4ED9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF4EDE: AryUnlock
  loc_BF4EE1: FFreeVar var_CC = "": var_EC = "": var_FC = ""
  loc_BF4EEC: FLdPr var_A4
  loc_BF4EEF: Call clsrelacion.MoveNext()
  loc_BF4EF4: FLdPr Me
  loc_BF4EF7: MemLdRfVar from_stack_1.global_114
  loc_BF4EFA: NextI2 var_B8, loc_BF4DDB
  loc_BF4EFF: LitNothing
  loc_BF4F01: FStAd var_A4 
  loc_BF4F05: FLdRfVar var_88
  loc_BF4F08: NewIfNullAd
  loc_BF4F0B: FStAd var_120 
  loc_BF4F0F: LitStr "SELECT relacion.CucuPers, TipoRela, IFNULL(DetaPers,'') as DetaPers, FealRela"
  loc_BF4F12: LitStr " FROM relacion "
  loc_BF4F15: ConcatStr
  loc_BF4F16: FStStrNoPop var_A8
  loc_BF4F19: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BF4F1C: ConcatStr
  loc_BF4F1D: FStStrNoPop var_AC
  loc_BF4F20: LitStr " WHERE CodiOfic = 1"
  loc_BF4F23: ConcatStr
  loc_BF4F24: FStStrNoPop var_B0
  loc_BF4F27: LitStr " AND CuenCtct = '"
  loc_BF4F2A: ConcatStr
  loc_BF4F2B: FStStrNoPop var_124
  loc_BF4F2E: FLdRfVar var_B4
  loc_BF4F31: FLdPr Me
  loc_BF4F34: VCallAd Control_ID_NumeCtaTxt
  loc_BF4F37: FStAdFunc var_90
  loc_BF4F3A: FLdPr var_90
  loc_BF4F3D:  = Me.Text
  loc_BF4F42: ILdRf var_B4
  loc_BF4F45: ConcatStr
  loc_BF4F46: FStStrNoPop var_128
  loc_BF4F49: LitStr "'"
  loc_BF4F4C: ConcatStr
  loc_BF4F4D: FStStrNoPop var_12C
  loc_BF4F50: LitStr " AND TipoRela = 'Poseedor' AND FebaRela IS NULL"
  loc_BF4F53: ConcatStr
  loc_BF4F54: FStStrNoPop var_130
  loc_BF4F57: FLdPr var_120
  loc_BF4F5A: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_BF4F5F: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_124 = "": var_B4 = "": var_128 = "": var_12C = ""
  loc_BF4F72: FFree1Ad var_90
  loc_BF4F75: FLdPr var_120
  loc_BF4F78: Call clsrelacion.MoveFirst(from_stack_1v)
  loc_BF4F7D: FLdPr Me
  loc_BF4F80: MemLdStr global_92
  loc_BF4F83: LitI2_Byte 1
  loc_BF4F85: FnUBound
  loc_BF4F87: CI2I4
  loc_BF4F88: FLdPr Me
  loc_BF4F8B: MemStI2 global_114
  loc_BF4F8E: FLdRfVar var_92
  loc_BF4F91: FLdPr var_120
  loc_BF4F94: from_stack_1 = clsrelacion.EOF
  loc_BF4F99: FLdI2 var_92
  loc_BF4F9C: NotI4
  loc_BF4F9D: BranchF loc_BF510B
  loc_BF4FA0: FLdPr Me
  loc_BF4FA3: MemLdI2 global_114
  loc_BF4FA6: LitI2_Byte 1
  loc_BF4FA8: AddI2
  loc_BF4FA9: FLdPr Me
  loc_BF4FAC: MemStI2 global_114
  loc_BF4FAF: LitI4 0
  loc_BF4FB4: FLdPr Me
  loc_BF4FB7: MemLdI2 global_114
  loc_BF4FBA: CI4UI1
  loc_BF4FBB: FLdPr Me
  loc_BF4FBE: MemLdRfVar from_stack_1.global_92
  loc_BF4FC1: RedimPreserve
  loc_BF4FCB: FLdRfVar var_A8
  loc_BF4FCE: FLdPr var_120
  loc_BF4FD1: from_stack_1 = clsrelacion.CucuPers
  loc_BF4FD6: LitI4 1
  loc_BF4FDB: LitI4 1
  loc_BF4FE0: LitVarStr var_DC, "##-########-#"
  loc_BF4FE5: FStVarCopyObj var_EC
  loc_BF4FE8: FLdRfVar var_EC
  loc_BF4FEB: FLdZeroAd var_A8
  loc_BF4FEE: CVarStr var_CC
  loc_BF4FF1: FLdRfVar var_FC
  loc_BF4FF4: ImpAdCallFPR4  = Format(, )
  loc_BF4FF9: LitI2_Byte 0
  loc_BF4FFB: LitVar_Missing var_11C
  loc_BF4FFE: LitI2_Byte 0
  loc_BF5000: FLdVar var_FC
  loc_BF5004: FLdPr Me
  loc_BF5007: MemLdI2 global_114
  loc_BF500A: CI4UI1
  loc_BF500B: FLdPr Me
  loc_BF500E: MemLdStr global_92
  loc_BF5011: AryLock
  loc_BF5014: Ary1LdPr
  loc_BF5015: MemLdRfVar from_stack_1.global_0
  loc_BF5018: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF501D: AryUnlock
  loc_BF5020: FFreeVar var_CC = "": var_EC = "": var_FC = ""
  loc_BF502B: FLdRfVar var_A8
  loc_BF502E: FLdPr var_120
  loc_BF5031: from_stack_1 = clsrelacion.TipoRela
  loc_BF5036: LitI2_Byte 0
  loc_BF5038: LitVar_Missing var_EC
  loc_BF503B: LitI2_Byte 0
  loc_BF503D: FLdZeroAd var_A8
  loc_BF5040: CVarStr var_CC
  loc_BF5043: PopAdLdVar
  loc_BF5044: FLdPr Me
  loc_BF5047: MemLdI2 global_114
  loc_BF504A: CI4UI1
  loc_BF504B: FLdPr Me
  loc_BF504E: MemLdStr global_92
  loc_BF5051: AryLock
  loc_BF5054: Ary1LdPr
  loc_BF5055: MemLdRfVar from_stack_1.global_4
  loc_BF5058: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF505D: AryUnlock
  loc_BF5060: FFreeVar var_CC = ""
  loc_BF5067: FLdRfVar var_A8
  loc_BF506A: FLdPr var_120
  loc_BF506D: from_stack_1 = clsrelacion.DetaPers
  loc_BF5072: LitI2_Byte 0
  loc_BF5074: LitVar_Missing var_EC
  loc_BF5077: LitI2_Byte 0
  loc_BF5079: FLdZeroAd var_A8
  loc_BF507C: CVarStr var_CC
  loc_BF507F: PopAdLdVar
  loc_BF5080: FLdPr Me
  loc_BF5083: MemLdI2 global_114
  loc_BF5086: CI4UI1
  loc_BF5087: FLdPr Me
  loc_BF508A: MemLdStr global_92
  loc_BF508D: AryLock
  loc_BF5090: Ary1LdPr
  loc_BF5091: MemLdRfVar from_stack_1.global_8
  loc_BF5094: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF5099: AryUnlock
  loc_BF509C: FFreeVar var_CC = ""
  loc_BF50A3: FLdRfVar var_CC
  loc_BF50A6: FLdPr var_120
  loc_BF50A9: from_stack_1 = clsrelacion.FealRela
  loc_BF50AE: LitI4 1
  loc_BF50B3: LitI4 1
  loc_BF50B8: LitVarStr var_DC, "dd/mm/yyyy"
  loc_BF50BD: FStVarCopyObj var_EC
  loc_BF50C0: FLdRfVar var_EC
  loc_BF50C3: FLdRfVar var_CC
  loc_BF50C6: FLdRfVar var_FC
  loc_BF50C9: ImpAdCallFPR4  = Format(, )
  loc_BF50CE: LitI2_Byte 0
  loc_BF50D0: LitVar_Missing var_11C
  loc_BF50D3: LitI2_Byte 0
  loc_BF50D5: FLdVar var_FC
  loc_BF50D9: FLdPr Me
  loc_BF50DC: MemLdI2 global_114
  loc_BF50DF: CI4UI1
  loc_BF50E0: FLdPr Me
  loc_BF50E3: MemLdStr global_92
  loc_BF50E6: AryLock
  loc_BF50E9: Ary1LdPr
  loc_BF50EA: MemLdRfVar from_stack_1.global_12
  loc_BF50ED: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF50F2: AryUnlock
  loc_BF50F5: FFreeVar var_CC = "": var_EC = "": var_FC = ""
  loc_BF5100: FLdPr var_120
  loc_BF5103: Call clsrelacion.MoveSiguiente()
  loc_BF5108: Branch loc_BF4F8E
  loc_BF510B: LitNothing
  loc_BF510D: FStAd var_120 
  loc_BF5111: Branch loc_BF5527
  loc_BF5114: ILdRf var_A0
  loc_BF5117: LitI4 2
  loc_BF511C: EqI4
  loc_BF511D: BranchF loc_BF531F
  loc_BF5120: FLdRfVar var_88
  loc_BF5123: NewIfNullAd
  loc_BF5126: FStAd var_134 
  loc_BF512A: LitStr "SELECT relacion.CucuPers, TipoRela, DetaPers, FealRela"
  loc_BF512D: LitStr " FROM relacion INNER JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BF5130: ConcatStr
  loc_BF5131: FStStrNoPop var_A8
  loc_BF5134: LitStr " WHERE CodiOfic = "
  loc_BF5137: ConcatStr
  loc_BF5138: FStStrNoPop var_AC
  loc_BF513B: FLdRfVar var_9C
  loc_BF513E: FLdRfVar var_92
  loc_BF5141: FLdPr Me
  loc_BF5144: VCallAd Control_ID_OficinaCbo
  loc_BF5147: FStAdFunc var_90
  loc_BF514A: FLdPr var_90
  loc_BF514D:  = Me.ListIndex
  loc_BF5152: FLdI2 var_92
  loc_BF5155: FLdPr Me
  loc_BF5158: VCallAd Control_ID_OficinaCbo
  loc_BF515B: FStAdFunc var_98
  loc_BF515E: FLdPr var_98
  loc_BF5161:  = Me.ItemData
  loc_BF5166: ILdRf var_9C
  loc_BF5169: CStrI4
  loc_BF516B: FStStrNoPop var_B0
  loc_BF516E: ConcatStr
  loc_BF516F: FStStrNoPop var_B4
  loc_BF5172: LitStr " AND CuenCtct = '"
  loc_BF5175: ConcatStr
  loc_BF5176: FStStrNoPop var_128
  loc_BF5179: FLdRfVar var_124
  loc_BF517C: FLdPr Me
  loc_BF517F: VCallAd Control_ID_NumeCtaTxt
  loc_BF5182: FStAdFunc var_138
  loc_BF5185: FLdPr var_138
  loc_BF5188:  = Me.Text
  loc_BF518D: ILdRf var_124
  loc_BF5190: ConcatStr
  loc_BF5191: FStStrNoPop var_12C
  loc_BF5194: LitStr "' AND TipoRela <> 'Titular' AND FebaRela IS NULL"
  loc_BF5197: ConcatStr
  loc_BF5198: FStStrNoPop var_130
  loc_BF519B: FLdPr var_134
  loc_BF519E: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_BF51A3: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_128 = "": var_124 = "": var_12C = ""
  loc_BF51B6: FFreeAd var_90 = "": var_98 = ""
  loc_BF51BF: LitI4 0
  loc_BF51C4: FLdRfVar var_9C
  loc_BF51C7: FLdPr var_134
  loc_BF51CA: from_stack_1 = clsrelacion.RecordCount
  loc_BF51CF: ILdRf var_9C
  loc_BF51D2: FLdPr Me
  loc_BF51D5: MemLdRfVar from_stack_1.global_92
  loc_BF51D8: Redim
  loc_BF51E2: FLdPr Me
  loc_BF51E5: MemLdStr global_92
  loc_BF51E8: LitI2_Byte 1
  loc_BF51EA: FnUBound
  loc_BF51EC: LitI4 0
  loc_BF51F1: GtI4
  loc_BF51F2: BranchF loc_BF5316
  loc_BF51F5: FLdPr var_134
  loc_BF51F8: Call clsrelacion.MoveFirst(from_stack_1v)
  loc_BF51FD: LitI2_Byte 1
  loc_BF51FF: FLdPr Me
  loc_BF5202: MemLdRfVar from_stack_1.global_114
  loc_BF5205: FLdPr Me
  loc_BF5208: MemLdStr global_92
  loc_BF520B: LitI2_Byte 1
  loc_BF520D: FnUBound
  loc_BF520F: CI2I4
  loc_BF5210: ForI2 var_13C
  loc_BF5216: FLdRfVar var_A8
  loc_BF5219: FLdPr var_134
  loc_BF521C: from_stack_1 = clsrelacion.CucuPers
  loc_BF5221: LitI2_Byte 0
  loc_BF5223: LitVar_Missing var_EC
  loc_BF5226: LitI2_Byte 0
  loc_BF5228: FLdZeroAd var_A8
  loc_BF522B: CVarStr var_CC
  loc_BF522E: PopAdLdVar
  loc_BF522F: FLdPr Me
  loc_BF5232: MemLdI2 global_114
  loc_BF5235: CI4UI1
  loc_BF5236: FLdPr Me
  loc_BF5239: MemLdStr global_92
  loc_BF523C: AryLock
  loc_BF523F: Ary1LdPr
  loc_BF5240: MemLdRfVar from_stack_1.global_0
  loc_BF5243: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF5248: AryUnlock
  loc_BF524B: FFreeVar var_CC = ""
  loc_BF5252: FLdRfVar var_A8
  loc_BF5255: FLdPr var_134
  loc_BF5258: from_stack_1 = clsrelacion.TipoRela
  loc_BF525D: LitI2_Byte 0
  loc_BF525F: LitVar_Missing var_EC
  loc_BF5262: LitI2_Byte 0
  loc_BF5264: FLdZeroAd var_A8
  loc_BF5267: CVarStr var_CC
  loc_BF526A: PopAdLdVar
  loc_BF526B: FLdPr Me
  loc_BF526E: MemLdI2 global_114
  loc_BF5271: CI4UI1
  loc_BF5272: FLdPr Me
  loc_BF5275: MemLdStr global_92
  loc_BF5278: AryLock
  loc_BF527B: Ary1LdPr
  loc_BF527C: MemLdRfVar from_stack_1.global_4
  loc_BF527F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF5284: AryUnlock
  loc_BF5287: FFreeVar var_CC = ""
  loc_BF528E: FLdRfVar var_A8
  loc_BF5291: FLdPr var_134
  loc_BF5294: from_stack_1 = clsrelacion.DetaPers
  loc_BF5299: LitI2_Byte 0
  loc_BF529B: LitVar_Missing var_EC
  loc_BF529E: LitI2_Byte 0
  loc_BF52A0: FLdZeroAd var_A8
  loc_BF52A3: CVarStr var_CC
  loc_BF52A6: PopAdLdVar
  loc_BF52A7: FLdPr Me
  loc_BF52AA: MemLdI2 global_114
  loc_BF52AD: CI4UI1
  loc_BF52AE: FLdPr Me
  loc_BF52B1: MemLdStr global_92
  loc_BF52B4: AryLock
  loc_BF52B7: Ary1LdPr
  loc_BF52B8: MemLdRfVar from_stack_1.global_8
  loc_BF52BB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF52C0: AryUnlock
  loc_BF52C3: FFreeVar var_CC = ""
  loc_BF52CA: FLdRfVar var_CC
  loc_BF52CD: FLdPr var_134
  loc_BF52D0: from_stack_1 = clsrelacion.FealRela
  loc_BF52D5: LitI2_Byte 0
  loc_BF52D7: LitVar_Missing var_EC
  loc_BF52DA: LitI2_Byte 0
  loc_BF52DC: FLdVar var_CC
  loc_BF52E0: FLdPr Me
  loc_BF52E3: MemLdI2 global_114
  loc_BF52E6: CI4UI1
  loc_BF52E7: FLdPr Me
  loc_BF52EA: MemLdStr global_92
  loc_BF52ED: AryLock
  loc_BF52F0: Ary1LdPr
  loc_BF52F1: MemLdRfVar from_stack_1.global_12
  loc_BF52F4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF52F9: AryUnlock
  loc_BF52FC: FFreeVar var_CC = ""
  loc_BF5303: FLdPr var_134
  loc_BF5306: Call clsrelacion.MoveNext()
  loc_BF530B: FLdPr Me
  loc_BF530E: MemLdRfVar from_stack_1.global_114
  loc_BF5311: NextI2 var_13C, loc_BF5216
  loc_BF5316: LitNothing
  loc_BF5318: FStAd var_134 
  loc_BF531C: Branch loc_BF5527
  loc_BF531F: ILdRf var_A0
  loc_BF5322: LitI4 6
  loc_BF5327: EqI4
  loc_BF5328: BranchF loc_BF5527
  loc_BF532B: FLdRfVar var_88
  loc_BF532E: NewIfNullAd
  loc_BF5331: FStAd var_140 
  loc_BF5335: LitStr "SELECT relacion.CucuPers, TipoRela, DetaPers, FealRela"
  loc_BF5338: LitStr " FROM relacion INNER JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BF533B: ConcatStr
  loc_BF533C: FStStrNoPop var_A8
  loc_BF533F: LitStr " WHERE CodiOfic = "
  loc_BF5342: ConcatStr
  loc_BF5343: FStStrNoPop var_AC
  loc_BF5346: FLdRfVar var_9C
  loc_BF5349: FLdRfVar var_92
  loc_BF534C: FLdPr Me
  loc_BF534F: VCallAd Control_ID_OficinaCbo
  loc_BF5352: FStAdFunc var_90
  loc_BF5355: FLdPr var_90
  loc_BF5358:  = Me.ListIndex
  loc_BF535D: FLdI2 var_92
  loc_BF5360: FLdPr Me
  loc_BF5363: VCallAd Control_ID_OficinaCbo
  loc_BF5366: FStAdFunc var_98
  loc_BF5369: FLdPr var_98
  loc_BF536C:  = Me.ItemData
  loc_BF5371: ILdRf var_9C
  loc_BF5374: CStrI4
  loc_BF5376: FStStrNoPop var_B0
  loc_BF5379: ConcatStr
  loc_BF537A: FStStrNoPop var_B4
  loc_BF537D: LitStr " AND CuenCtct = '"
  loc_BF5380: ConcatStr
  loc_BF5381: FStStrNoPop var_128
  loc_BF5384: FLdRfVar var_124
  loc_BF5387: FLdPr Me
  loc_BF538A: VCallAd Control_ID_NumeCtaTxt
  loc_BF538D: FStAdFunc var_138
  loc_BF5390: FLdPr var_138
  loc_BF5393:  = Me.Text
  loc_BF5398: ILdRf var_124
  loc_BF539B: ConcatStr
  loc_BF539C: FStStrNoPop var_12C
  loc_BF539F: LitStr "' AND TipoRela <> 'Titular' AND FebaRela IS NULL"
  loc_BF53A2: ConcatStr
  loc_BF53A3: FStStrNoPop var_130
  loc_BF53A6: FLdPr var_140
  loc_BF53A9: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_BF53AE: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_128 = "": var_124 = "": var_12C = ""
  loc_BF53C1: FFreeAd var_90 = "": var_98 = ""
  loc_BF53CA: LitI4 0
  loc_BF53CF: FLdRfVar var_9C
  loc_BF53D2: FLdPr var_140
  loc_BF53D5: from_stack_1 = clsrelacion.RecordCount
  loc_BF53DA: ILdRf var_9C
  loc_BF53DD: FLdPr Me
  loc_BF53E0: MemLdRfVar from_stack_1.global_92
  loc_BF53E3: Redim
  loc_BF53ED: FLdPr Me
  loc_BF53F0: MemLdStr global_92
  loc_BF53F3: LitI2_Byte 1
  loc_BF53F5: FnUBound
  loc_BF53F7: LitI4 0
  loc_BF53FC: GtI4
  loc_BF53FD: BranchF loc_BF5521
  loc_BF5400: FLdPr var_140
  loc_BF5403: Call clsrelacion.MoveFirst(from_stack_1v)
  loc_BF5408: LitI2_Byte 1
  loc_BF540A: FLdPr Me
  loc_BF540D: MemLdRfVar from_stack_1.global_114
  loc_BF5410: FLdPr Me
  loc_BF5413: MemLdStr global_92
  loc_BF5416: LitI2_Byte 1
  loc_BF5418: FnUBound
  loc_BF541A: CI2I4
  loc_BF541B: ForI2 var_144
  loc_BF5421: FLdRfVar var_A8
  loc_BF5424: FLdPr var_140
  loc_BF5427: from_stack_1 = clsrelacion.CucuPers
  loc_BF542C: LitI2_Byte 0
  loc_BF542E: LitVar_Missing var_EC
  loc_BF5431: LitI2_Byte 0
  loc_BF5433: FLdZeroAd var_A8
  loc_BF5436: CVarStr var_CC
  loc_BF5439: PopAdLdVar
  loc_BF543A: FLdPr Me
  loc_BF543D: MemLdI2 global_114
  loc_BF5440: CI4UI1
  loc_BF5441: FLdPr Me
  loc_BF5444: MemLdStr global_92
  loc_BF5447: AryLock
  loc_BF544A: Ary1LdPr
  loc_BF544B: MemLdRfVar from_stack_1.global_0
  loc_BF544E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF5453: AryUnlock
  loc_BF5456: FFreeVar var_CC = ""
  loc_BF545D: FLdRfVar var_A8
  loc_BF5460: FLdPr var_140
  loc_BF5463: from_stack_1 = clsrelacion.TipoRela
  loc_BF5468: LitI2_Byte 0
  loc_BF546A: LitVar_Missing var_EC
  loc_BF546D: LitI2_Byte 0
  loc_BF546F: FLdZeroAd var_A8
  loc_BF5472: CVarStr var_CC
  loc_BF5475: PopAdLdVar
  loc_BF5476: FLdPr Me
  loc_BF5479: MemLdI2 global_114
  loc_BF547C: CI4UI1
  loc_BF547D: FLdPr Me
  loc_BF5480: MemLdStr global_92
  loc_BF5483: AryLock
  loc_BF5486: Ary1LdPr
  loc_BF5487: MemLdRfVar from_stack_1.global_4
  loc_BF548A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF548F: AryUnlock
  loc_BF5492: FFreeVar var_CC = ""
  loc_BF5499: FLdRfVar var_A8
  loc_BF549C: FLdPr var_140
  loc_BF549F: from_stack_1 = clsrelacion.DetaPers
  loc_BF54A4: LitI2_Byte 0
  loc_BF54A6: LitVar_Missing var_EC
  loc_BF54A9: LitI2_Byte 0
  loc_BF54AB: FLdZeroAd var_A8
  loc_BF54AE: CVarStr var_CC
  loc_BF54B1: PopAdLdVar
  loc_BF54B2: FLdPr Me
  loc_BF54B5: MemLdI2 global_114
  loc_BF54B8: CI4UI1
  loc_BF54B9: FLdPr Me
  loc_BF54BC: MemLdStr global_92
  loc_BF54BF: AryLock
  loc_BF54C2: Ary1LdPr
  loc_BF54C3: MemLdRfVar from_stack_1.global_8
  loc_BF54C6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF54CB: AryUnlock
  loc_BF54CE: FFreeVar var_CC = ""
  loc_BF54D5: FLdRfVar var_CC
  loc_BF54D8: FLdPr var_140
  loc_BF54DB: from_stack_1 = clsrelacion.FealRela
  loc_BF54E0: LitI2_Byte 0
  loc_BF54E2: LitVar_Missing var_EC
  loc_BF54E5: LitI2_Byte 0
  loc_BF54E7: FLdVar var_CC
  loc_BF54EB: FLdPr Me
  loc_BF54EE: MemLdI2 global_114
  loc_BF54F1: CI4UI1
  loc_BF54F2: FLdPr Me
  loc_BF54F5: MemLdStr global_92
  loc_BF54F8: AryLock
  loc_BF54FB: Ary1LdPr
  loc_BF54FC: MemLdRfVar from_stack_1.global_12
  loc_BF54FF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF5504: AryUnlock
  loc_BF5507: FFreeVar var_CC = ""
  loc_BF550E: FLdPr var_140
  loc_BF5511: Call clsrelacion.MoveNext()
  loc_BF5516: FLdPr Me
  loc_BF5519: MemLdRfVar from_stack_1.global_114
  loc_BF551C: NextI2 var_144, loc_BF5421
  loc_BF5521: LitNothing
  loc_BF5523: FStAd var_140 
  loc_BF5527: ExitProcHresult
End Function

Private Function Proc_285_17_B490F8() 'B490F8
  'Data Table: 4B5FC4
  loc_B48DAC: FLdRfVar var_8C
  loc_B48DAF: NewIfNullAd
  loc_B48DB2: FStAd var_90 
  loc_B48DB6: LitStr "SELECT servcome.CodiRubr, DetaRubr, servcome.CodiSubr, DetaSubr, IFNULL(FealSeco,'') FealSeco, ExalSeco, FebaSeco, ExbaSeco,AcprSeco, CantSeco FROM servcome"
  loc_B48DB9: LitStr " INNER JOIN rubro ON rubro.CodiRamo = servcome.CodiRamo"
  loc_B48DBC: ConcatStr
  loc_B48DBD: FStStrNoPop var_94
  loc_B48DC0: LitStr " AND rubro.CodiRubr = servcome.CodiRubr"
  loc_B48DC3: ConcatStr
  loc_B48DC4: FStStrNoPop var_98
  loc_B48DC7: LitStr " INNER JOIN subrubro ON subrubro.CodiRamo = servcome.CodiRamo"
  loc_B48DCA: ConcatStr
  loc_B48DCB: FStStrNoPop var_9C
  loc_B48DCE: LitStr " AND subrubro.CodiRubr = servcome.CodiRubr"
  loc_B48DD1: ConcatStr
  loc_B48DD2: FStStrNoPop var_A0
  loc_B48DD5: LitStr " AND subrubro.PeriOrde = "
  loc_B48DD8: ConcatStr
  loc_B48DD9: FStStrNoPop var_A4
  loc_B48DDC: ImpAdLdI2 MemVar_D93034
  loc_B48DDF: CStrUI1
  loc_B48DE1: FStStrNoPop var_A8
  loc_B48DE4: ConcatStr
  loc_B48DE5: FStStrNoPop var_AC
  loc_B48DE8: LitStr " AND subrubro.CodiSubr = servcome.CodiSubr"
  loc_B48DEB: ConcatStr
  loc_B48DEC: FStStrNoPop var_B0
  loc_B48DEF: LitStr " WHERE CodiCome = "
  loc_B48DF2: ConcatStr
  loc_B48DF3: FStStrNoPop var_BC
  loc_B48DF6: FLdRfVar var_B8
  loc_B48DF9: FLdPr Me
  loc_B48DFC: VCallAd Control_ID_NumeCtaTxt
  loc_B48DFF: FStAdFunc var_B4
  loc_B48E02: FLdPr var_B4
  loc_B48E05:  = Me.Text
  loc_B48E0A: ILdRf var_B8
  loc_B48E0D: ConcatStr
  loc_B48E0E: FStStrNoPop var_C0
  loc_B48E11: LitStr " ORDER BY CodiRubr, CodiSubr"
  loc_B48E14: ConcatStr
  loc_B48E15: FStStrNoPop var_C4
  loc_B48E18: FLdPr var_90
  loc_B48E1B: Call clsservcome.RedefineRS(from_stack_1v)
  loc_B48E20: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_BC = "": var_B8 = "": var_C0 = ""
  loc_B48E3B: FFree1Ad var_B4
  loc_B48E3E: LitI4 0
  loc_B48E43: FLdRfVar var_C8
  loc_B48E46: FLdPr var_90
  loc_B48E49: from_stack_1 = clsservcome.RecordCount
  loc_B48E4E: ILdRf var_C8
  loc_B48E51: FLdPr Me
  loc_B48E54: MemLdRfVar from_stack_1.global_96
  loc_B48E57: Redim
  loc_B48E61: FLdPr Me
  loc_B48E64: MemLdStr global_96
  loc_B48E67: LitI2_Byte 1
  loc_B48E69: FnUBound
  loc_B48E6B: LitI4 0
  loc_B48E70: GtI4
  loc_B48E71: BranchF loc_B490F1
  loc_B48E74: FLdPr var_90
  loc_B48E77: Call clsservcome.MoveFirst()
  loc_B48E7C: LitI2_Byte 1
  loc_B48E7E: FLdPr Me
  loc_B48E81: MemLdRfVar from_stack_1.global_116
  loc_B48E84: FLdPr Me
  loc_B48E87: MemLdStr global_96
  loc_B48E8A: LitI2_Byte 1
  loc_B48E8C: FnUBound
  loc_B48E8E: CI2I4
  loc_B48E8F: ForI2 var_CC
  loc_B48E95: FLdRfVar var_DC
  loc_B48E98: FLdPr var_90
  loc_B48E9B: from_stack_1 = clsservcome.CodiRubr
  loc_B48EA0: LitI2_Byte 0
  loc_B48EA2: LitVar_Missing var_100
  loc_B48EA5: LitI2_Byte 0
  loc_B48EA7: FLdVar var_DC
  loc_B48EAB: FLdPr Me
  loc_B48EAE: MemLdI2 global_116
  loc_B48EB1: CI4UI1
  loc_B48EB2: FLdPr Me
  loc_B48EB5: MemLdStr global_96
  loc_B48EB8: AryLock
  loc_B48EBB: Ary1LdPr
  loc_B48EBC: MemLdRfVar from_stack_1.global_0
  loc_B48EBF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48EC4: AryUnlock
  loc_B48EC7: FFreeVar var_DC = ""
  loc_B48ECE: FLdRfVar var_DC
  loc_B48ED1: FLdPr var_90
  loc_B48ED4: from_stack_1 = clsservcome.DetaRubr
  loc_B48ED9: LitI2_Byte 0
  loc_B48EDB: LitVar_Missing var_100
  loc_B48EDE: LitI2_Byte 0
  loc_B48EE0: FLdVar var_DC
  loc_B48EE4: FLdPr Me
  loc_B48EE7: MemLdI2 global_116
  loc_B48EEA: CI4UI1
  loc_B48EEB: FLdPr Me
  loc_B48EEE: MemLdStr global_96
  loc_B48EF1: AryLock
  loc_B48EF4: Ary1LdPr
  loc_B48EF5: MemLdRfVar from_stack_1.global_4
  loc_B48EF8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48EFD: AryUnlock
  loc_B48F00: FFreeVar var_DC = ""
  loc_B48F07: FLdRfVar var_94
  loc_B48F0A: FLdPr var_90
  loc_B48F0D: from_stack_1 = clsservcome.CodiSubr
  loc_B48F12: LitI2_Byte 0
  loc_B48F14: LitVar_Missing var_100
  loc_B48F17: LitI2_Byte 0
  loc_B48F19: FLdZeroAd var_94
  loc_B48F1C: CVarStr var_DC
  loc_B48F1F: PopAdLdVar
  loc_B48F20: FLdPr Me
  loc_B48F23: MemLdI2 global_116
  loc_B48F26: CI4UI1
  loc_B48F27: FLdPr Me
  loc_B48F2A: MemLdStr global_96
  loc_B48F2D: AryLock
  loc_B48F30: Ary1LdPr
  loc_B48F31: MemLdRfVar from_stack_1.global_8
  loc_B48F34: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48F39: AryUnlock
  loc_B48F3C: FFreeVar var_DC = ""
  loc_B48F43: FLdRfVar var_DC
  loc_B48F46: FLdPr var_90
  loc_B48F49: from_stack_1 = clsservcome.DetaSubr
  loc_B48F4E: LitI2_Byte 0
  loc_B48F50: LitVar_Missing var_100
  loc_B48F53: LitI2_Byte 0
  loc_B48F55: FLdVar var_DC
  loc_B48F59: FLdPr Me
  loc_B48F5C: MemLdI2 global_116
  loc_B48F5F: CI4UI1
  loc_B48F60: FLdPr Me
  loc_B48F63: MemLdStr global_96
  loc_B48F66: AryLock
  loc_B48F69: Ary1LdPr
  loc_B48F6A: MemLdRfVar from_stack_1.global_12
  loc_B48F6D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48F72: AryUnlock
  loc_B48F75: FFreeVar var_DC = ""
  loc_B48F7C: FLdRfVar var_94
  loc_B48F7F: FLdPr var_90
  loc_B48F82: from_stack_1 = clsservcome.FealSeco
  loc_B48F87: LitI2_Byte 0
  loc_B48F89: LitVar_Missing var_100
  loc_B48F8C: LitI2_Byte 0
  loc_B48F8E: FLdZeroAd var_94
  loc_B48F91: CVarStr var_DC
  loc_B48F94: PopAdLdVar
  loc_B48F95: FLdPr Me
  loc_B48F98: MemLdI2 global_116
  loc_B48F9B: CI4UI1
  loc_B48F9C: FLdPr Me
  loc_B48F9F: MemLdStr global_96
  loc_B48FA2: AryLock
  loc_B48FA5: Ary1LdPr
  loc_B48FA6: MemLdRfVar from_stack_1.global_16
  loc_B48FA9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48FAE: AryUnlock
  loc_B48FB1: FFreeVar var_DC = ""
  loc_B48FB8: FLdRfVar var_94
  loc_B48FBB: FLdPr var_90
  loc_B48FBE: from_stack_1 = clsservcome.ExalSeco
  loc_B48FC3: LitI2_Byte 0
  loc_B48FC5: LitVar_Missing var_100
  loc_B48FC8: LitI2_Byte 0
  loc_B48FCA: FLdZeroAd var_94
  loc_B48FCD: CVarStr var_DC
  loc_B48FD0: PopAdLdVar
  loc_B48FD1: FLdPr Me
  loc_B48FD4: MemLdI2 global_116
  loc_B48FD7: CI4UI1
  loc_B48FD8: FLdPr Me
  loc_B48FDB: MemLdStr global_96
  loc_B48FDE: AryLock
  loc_B48FE1: Ary1LdPr
  loc_B48FE2: MemLdRfVar from_stack_1.global_20
  loc_B48FE5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48FEA: AryUnlock
  loc_B48FED: FFreeVar var_DC = ""
  loc_B48FF4: FLdRfVar var_DC
  loc_B48FF7: FLdPr var_90
  loc_B48FFA: from_stack_1 = clsservcome.FebaSeco
  loc_B48FFF: LitI2_Byte 0
  loc_B49001: LitVar_Missing var_100
  loc_B49004: LitI2_Byte 0
  loc_B49006: FLdVar var_DC
  loc_B4900A: FLdPr Me
  loc_B4900D: MemLdI2 global_116
  loc_B49010: CI4UI1
  loc_B49011: FLdPr Me
  loc_B49014: MemLdStr global_96
  loc_B49017: AryLock
  loc_B4901A: Ary1LdPr
  loc_B4901B: MemLdRfVar from_stack_1.global_24
  loc_B4901E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B49023: AryUnlock
  loc_B49026: FFreeVar var_DC = ""
  loc_B4902D: FLdRfVar var_94
  loc_B49030: FLdPr var_90
  loc_B49033: from_stack_1 = clsservcome.ExbaSeco
  loc_B49038: LitI2_Byte 0
  loc_B4903A: LitVar_Missing var_100
  loc_B4903D: LitI2_Byte 0
  loc_B4903F: FLdZeroAd var_94
  loc_B49042: CVarStr var_DC
  loc_B49045: PopAdLdVar
  loc_B49046: FLdPr Me
  loc_B49049: MemLdI2 global_116
  loc_B4904C: CI4UI1
  loc_B4904D: FLdPr Me
  loc_B49050: MemLdStr global_96
  loc_B49053: AryLock
  loc_B49056: Ary1LdPr
  loc_B49057: MemLdRfVar from_stack_1.global_28
  loc_B4905A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B4905F: AryUnlock
  loc_B49062: FFreeVar var_DC = ""
  loc_B49069: FLdRfVar var_94
  loc_B4906C: FLdPr var_90
  loc_B4906F: from_stack_1 = clsservcome.AcprSeco
  loc_B49074: LitI2_Byte 0
  loc_B49076: LitVar_Missing var_100
  loc_B49079: LitI2_Byte 0
  loc_B4907B: FLdZeroAd var_94
  loc_B4907E: CVarStr var_DC
  loc_B49081: PopAdLdVar
  loc_B49082: FLdPr Me
  loc_B49085: MemLdI2 global_116
  loc_B49088: CI4UI1
  loc_B49089: FLdPr Me
  loc_B4908C: MemLdStr global_96
  loc_B4908F: AryLock
  loc_B49092: Ary1LdPr
  loc_B49093: MemLdRfVar from_stack_1.global_32
  loc_B49096: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B4909B: AryUnlock
  loc_B4909E: FFreeVar var_DC = ""
  loc_B490A5: FLdRfVar var_108
  loc_B490A8: FLdPr var_90
  loc_B490AB: from_stack_1 = clsservcome.CantSeco
  loc_B490B0: LitI2_Byte 0
  loc_B490B2: LitVar_Missing var_DC
  loc_B490B5: LitI2_Byte 0
  loc_B490B7: FLdFPR8 var_108
  loc_B490BA: CVarR8
  loc_B490BE: PopAdLdVar
  loc_B490BF: FLdPr Me
  loc_B490C2: MemLdI2 global_116
  loc_B490C5: CI4UI1
  loc_B490C6: FLdPr Me
  loc_B490C9: MemLdStr global_96
  loc_B490CC: AryLock
  loc_B490CF: Ary1LdPr
  loc_B490D0: MemLdRfVar from_stack_1.global_36
  loc_B490D3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B490D8: AryUnlock
  loc_B490DB: FFree1Var var_DC = ""
  loc_B490DE: FLdPr var_90
  loc_B490E1: Call clsservcome.MoveNext()
  loc_B490E6: FLdPr Me
  loc_B490E9: MemLdRfVar from_stack_1.global_116
  loc_B490EC: NextI2 var_CC, loc_B48E95
  loc_B490F1: LitNothing
  loc_B490F3: FStAd var_90 
  loc_B490F7: ExitProcHresult
End Function

Private Function Proc_285_18_B48D30() 'B48D30
  'Data Table: 4B5FC4
  loc_B489E4: FLdRfVar var_8C
  loc_B489E7: NewIfNullAd
  loc_B489EA: FStAd var_90 
  loc_B489EE: LitStr "SELECT servpubl.CodiRubr, DetaRubr, servpubl.CodiSubr, DetaSubr, IFNULL(FealSeco,'') FealSeco, ExalSeco, FebaSeco, ExbaSeco,AcprSeco, CantSeco FROM servpubl"
  loc_B489F1: LitStr " INNER JOIN rubro ON rubro.CodiRamo = servpubl.CodiRamo"
  loc_B489F4: ConcatStr
  loc_B489F5: FStStrNoPop var_94
  loc_B489F8: LitStr " AND rubro.CodiRubr = servpubl.CodiRubr"
  loc_B489FB: ConcatStr
  loc_B489FC: FStStrNoPop var_98
  loc_B489FF: LitStr " INNER JOIN subrubro ON subrubro.CodiRamo = servpubl.CodiRamo"
  loc_B48A02: ConcatStr
  loc_B48A03: FStStrNoPop var_9C
  loc_B48A06: LitStr " AND subrubro.CodiRubr = servpubl.CodiRubr"
  loc_B48A09: ConcatStr
  loc_B48A0A: FStStrNoPop var_A0
  loc_B48A0D: LitStr " AND subrubro.PeriOrde = "
  loc_B48A10: ConcatStr
  loc_B48A11: FStStrNoPop var_A4
  loc_B48A14: ImpAdLdI2 MemVar_D93034
  loc_B48A17: CStrUI1
  loc_B48A19: FStStrNoPop var_A8
  loc_B48A1C: ConcatStr
  loc_B48A1D: FStStrNoPop var_AC
  loc_B48A20: LitStr " AND subrubro.CodiSubr = servpubl.CodiSubr"
  loc_B48A23: ConcatStr
  loc_B48A24: FStStrNoPop var_B0
  loc_B48A27: LitStr " WHERE CodiCome = "
  loc_B48A2A: ConcatStr
  loc_B48A2B: FStStrNoPop var_BC
  loc_B48A2E: FLdRfVar var_B8
  loc_B48A31: FLdPr Me
  loc_B48A34: VCallAd Control_ID_NumeCtaTxt
  loc_B48A37: FStAdFunc var_B4
  loc_B48A3A: FLdPr var_B4
  loc_B48A3D:  = Me.Text
  loc_B48A42: ILdRf var_B8
  loc_B48A45: ConcatStr
  loc_B48A46: FStStrNoPop var_C0
  loc_B48A49: LitStr " ORDER BY CodiRubr, CodiSubr"
  loc_B48A4C: ConcatStr
  loc_B48A4D: FStStrNoPop var_C4
  loc_B48A50: FLdPr var_90
  loc_B48A53: Call clsservcome.RedefineRS(from_stack_1v)
  loc_B48A58: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_BC = "": var_B8 = "": var_C0 = ""
  loc_B48A73: FFree1Ad var_B4
  loc_B48A76: LitI4 0
  loc_B48A7B: FLdRfVar var_C8
  loc_B48A7E: FLdPr var_90
  loc_B48A81: from_stack_1 = clsservcome.RecordCount
  loc_B48A86: ILdRf var_C8
  loc_B48A89: FLdPr Me
  loc_B48A8C: MemLdRfVar from_stack_1.global_96
  loc_B48A8F: Redim
  loc_B48A99: FLdPr Me
  loc_B48A9C: MemLdStr global_96
  loc_B48A9F: LitI2_Byte 1
  loc_B48AA1: FnUBound
  loc_B48AA3: LitI4 0
  loc_B48AA8: GtI4
  loc_B48AA9: BranchF loc_B48D29
  loc_B48AAC: FLdPr var_90
  loc_B48AAF: Call clsservcome.MoveFirst()
  loc_B48AB4: LitI2_Byte 1
  loc_B48AB6: FLdPr Me
  loc_B48AB9: MemLdRfVar from_stack_1.global_116
  loc_B48ABC: FLdPr Me
  loc_B48ABF: MemLdStr global_96
  loc_B48AC2: LitI2_Byte 1
  loc_B48AC4: FnUBound
  loc_B48AC6: CI2I4
  loc_B48AC7: ForI2 var_CC
  loc_B48ACD: FLdRfVar var_DC
  loc_B48AD0: FLdPr var_90
  loc_B48AD3: from_stack_1 = clsservcome.CodiRubr
  loc_B48AD8: LitI2_Byte 0
  loc_B48ADA: LitVar_Missing var_100
  loc_B48ADD: LitI2_Byte 0
  loc_B48ADF: FLdVar var_DC
  loc_B48AE3: FLdPr Me
  loc_B48AE6: MemLdI2 global_116
  loc_B48AE9: CI4UI1
  loc_B48AEA: FLdPr Me
  loc_B48AED: MemLdStr global_96
  loc_B48AF0: AryLock
  loc_B48AF3: Ary1LdPr
  loc_B48AF4: MemLdRfVar from_stack_1.global_0
  loc_B48AF7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48AFC: AryUnlock
  loc_B48AFF: FFreeVar var_DC = ""
  loc_B48B06: FLdRfVar var_DC
  loc_B48B09: FLdPr var_90
  loc_B48B0C: from_stack_1 = clsservcome.DetaRubr
  loc_B48B11: LitI2_Byte 0
  loc_B48B13: LitVar_Missing var_100
  loc_B48B16: LitI2_Byte 0
  loc_B48B18: FLdVar var_DC
  loc_B48B1C: FLdPr Me
  loc_B48B1F: MemLdI2 global_116
  loc_B48B22: CI4UI1
  loc_B48B23: FLdPr Me
  loc_B48B26: MemLdStr global_96
  loc_B48B29: AryLock
  loc_B48B2C: Ary1LdPr
  loc_B48B2D: MemLdRfVar from_stack_1.global_4
  loc_B48B30: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48B35: AryUnlock
  loc_B48B38: FFreeVar var_DC = ""
  loc_B48B3F: FLdRfVar var_94
  loc_B48B42: FLdPr var_90
  loc_B48B45: from_stack_1 = clsservcome.CodiSubr
  loc_B48B4A: LitI2_Byte 0
  loc_B48B4C: LitVar_Missing var_100
  loc_B48B4F: LitI2_Byte 0
  loc_B48B51: FLdZeroAd var_94
  loc_B48B54: CVarStr var_DC
  loc_B48B57: PopAdLdVar
  loc_B48B58: FLdPr Me
  loc_B48B5B: MemLdI2 global_116
  loc_B48B5E: CI4UI1
  loc_B48B5F: FLdPr Me
  loc_B48B62: MemLdStr global_96
  loc_B48B65: AryLock
  loc_B48B68: Ary1LdPr
  loc_B48B69: MemLdRfVar from_stack_1.global_8
  loc_B48B6C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48B71: AryUnlock
  loc_B48B74: FFreeVar var_DC = ""
  loc_B48B7B: FLdRfVar var_DC
  loc_B48B7E: FLdPr var_90
  loc_B48B81: from_stack_1 = clsservcome.DetaSubr
  loc_B48B86: LitI2_Byte 0
  loc_B48B88: LitVar_Missing var_100
  loc_B48B8B: LitI2_Byte 0
  loc_B48B8D: FLdVar var_DC
  loc_B48B91: FLdPr Me
  loc_B48B94: MemLdI2 global_116
  loc_B48B97: CI4UI1
  loc_B48B98: FLdPr Me
  loc_B48B9B: MemLdStr global_96
  loc_B48B9E: AryLock
  loc_B48BA1: Ary1LdPr
  loc_B48BA2: MemLdRfVar from_stack_1.global_12
  loc_B48BA5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48BAA: AryUnlock
  loc_B48BAD: FFreeVar var_DC = ""
  loc_B48BB4: FLdRfVar var_94
  loc_B48BB7: FLdPr var_90
  loc_B48BBA: from_stack_1 = clsservcome.FealSeco
  loc_B48BBF: LitI2_Byte 0
  loc_B48BC1: LitVar_Missing var_100
  loc_B48BC4: LitI2_Byte 0
  loc_B48BC6: FLdZeroAd var_94
  loc_B48BC9: CVarStr var_DC
  loc_B48BCC: PopAdLdVar
  loc_B48BCD: FLdPr Me
  loc_B48BD0: MemLdI2 global_116
  loc_B48BD3: CI4UI1
  loc_B48BD4: FLdPr Me
  loc_B48BD7: MemLdStr global_96
  loc_B48BDA: AryLock
  loc_B48BDD: Ary1LdPr
  loc_B48BDE: MemLdRfVar from_stack_1.global_16
  loc_B48BE1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48BE6: AryUnlock
  loc_B48BE9: FFreeVar var_DC = ""
  loc_B48BF0: FLdRfVar var_94
  loc_B48BF3: FLdPr var_90
  loc_B48BF6: from_stack_1 = clsservcome.ExalSeco
  loc_B48BFB: LitI2_Byte 0
  loc_B48BFD: LitVar_Missing var_100
  loc_B48C00: LitI2_Byte 0
  loc_B48C02: FLdZeroAd var_94
  loc_B48C05: CVarStr var_DC
  loc_B48C08: PopAdLdVar
  loc_B48C09: FLdPr Me
  loc_B48C0C: MemLdI2 global_116
  loc_B48C0F: CI4UI1
  loc_B48C10: FLdPr Me
  loc_B48C13: MemLdStr global_96
  loc_B48C16: AryLock
  loc_B48C19: Ary1LdPr
  loc_B48C1A: MemLdRfVar from_stack_1.global_20
  loc_B48C1D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48C22: AryUnlock
  loc_B48C25: FFreeVar var_DC = ""
  loc_B48C2C: FLdRfVar var_DC
  loc_B48C2F: FLdPr var_90
  loc_B48C32: from_stack_1 = clsservcome.FebaSeco
  loc_B48C37: LitI2_Byte 0
  loc_B48C39: LitVar_Missing var_100
  loc_B48C3C: LitI2_Byte 0
  loc_B48C3E: FLdVar var_DC
  loc_B48C42: FLdPr Me
  loc_B48C45: MemLdI2 global_116
  loc_B48C48: CI4UI1
  loc_B48C49: FLdPr Me
  loc_B48C4C: MemLdStr global_96
  loc_B48C4F: AryLock
  loc_B48C52: Ary1LdPr
  loc_B48C53: MemLdRfVar from_stack_1.global_24
  loc_B48C56: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48C5B: AryUnlock
  loc_B48C5E: FFreeVar var_DC = ""
  loc_B48C65: FLdRfVar var_94
  loc_B48C68: FLdPr var_90
  loc_B48C6B: from_stack_1 = clsservcome.ExbaSeco
  loc_B48C70: LitI2_Byte 0
  loc_B48C72: LitVar_Missing var_100
  loc_B48C75: LitI2_Byte 0
  loc_B48C77: FLdZeroAd var_94
  loc_B48C7A: CVarStr var_DC
  loc_B48C7D: PopAdLdVar
  loc_B48C7E: FLdPr Me
  loc_B48C81: MemLdI2 global_116
  loc_B48C84: CI4UI1
  loc_B48C85: FLdPr Me
  loc_B48C88: MemLdStr global_96
  loc_B48C8B: AryLock
  loc_B48C8E: Ary1LdPr
  loc_B48C8F: MemLdRfVar from_stack_1.global_28
  loc_B48C92: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48C97: AryUnlock
  loc_B48C9A: FFreeVar var_DC = ""
  loc_B48CA1: FLdRfVar var_94
  loc_B48CA4: FLdPr var_90
  loc_B48CA7: from_stack_1 = clsservcome.AcprSeco
  loc_B48CAC: LitI2_Byte 0
  loc_B48CAE: LitVar_Missing var_100
  loc_B48CB1: LitI2_Byte 0
  loc_B48CB3: FLdZeroAd var_94
  loc_B48CB6: CVarStr var_DC
  loc_B48CB9: PopAdLdVar
  loc_B48CBA: FLdPr Me
  loc_B48CBD: MemLdI2 global_116
  loc_B48CC0: CI4UI1
  loc_B48CC1: FLdPr Me
  loc_B48CC4: MemLdStr global_96
  loc_B48CC7: AryLock
  loc_B48CCA: Ary1LdPr
  loc_B48CCB: MemLdRfVar from_stack_1.global_32
  loc_B48CCE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48CD3: AryUnlock
  loc_B48CD6: FFreeVar var_DC = ""
  loc_B48CDD: FLdRfVar var_108
  loc_B48CE0: FLdPr var_90
  loc_B48CE3: from_stack_1 = clsservcome.CantSeco
  loc_B48CE8: LitI2_Byte 0
  loc_B48CEA: LitVar_Missing var_DC
  loc_B48CED: LitI2_Byte 0
  loc_B48CEF: FLdFPR8 var_108
  loc_B48CF2: CVarR8
  loc_B48CF6: PopAdLdVar
  loc_B48CF7: FLdPr Me
  loc_B48CFA: MemLdI2 global_116
  loc_B48CFD: CI4UI1
  loc_B48CFE: FLdPr Me
  loc_B48D01: MemLdStr global_96
  loc_B48D04: AryLock
  loc_B48D07: Ary1LdPr
  loc_B48D08: MemLdRfVar from_stack_1.global_36
  loc_B48D0B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B48D10: AryUnlock
  loc_B48D13: FFree1Var var_DC = ""
  loc_B48D16: FLdPr var_90
  loc_B48D19: Call clsservcome.MoveNext()
  loc_B48D1E: FLdPr Me
  loc_B48D21: MemLdRfVar from_stack_1.global_116
  loc_B48D24: NextI2 var_CC, loc_B48ACD
  loc_B48D29: LitNothing
  loc_B48D2B: FStAd var_90 
  loc_B48D2F: ExitProcHresult
End Function

Private Function Proc_285_19_B3A2F8() 'B3A2F8
  'Data Table: 4B5FC4
  loc_B39FF8: FLdPr Me
  loc_B39FFB: MemLdRfVar from_stack_1.global_76
  loc_B39FFE: NewIfNullAd
  loc_B3A001: FStAd var_8C 
  loc_B3A005: LitStr "SELECT Expediente, Fecha, Causa, Comentario, AfectaDeuda, PeriRenov  "
  loc_B3A008: LitStr " FROM expeinmu WHERE CodiInmu = "
  loc_B3A00B: ConcatStr
  loc_B3A00C: FStStrNoPop var_98
  loc_B3A00F: FLdRfVar var_94
  loc_B3A012: FLdPr Me
  loc_B3A015: VCallAd Control_ID_NumeCtaTxt
  loc_B3A018: FStAdFunc var_90
  loc_B3A01B: FLdPr var_90
  loc_B3A01E:  = Me.Text
  loc_B3A023: ILdRf var_94
  loc_B3A026: ConcatStr
  loc_B3A027: FStStrNoPop var_9C
  loc_B3A02A: LitStr " AND BajaFeho IS NULL ORDER BY Fecha "
  loc_B3A02D: ConcatStr
  loc_B3A02E: FStStrNoPop var_A0
  loc_B3A031: FLdPr var_8C
  loc_B3A034: Call clsboleto.RedefineRS(from_stack_1v)
  loc_B3A039: FFreeStr var_98 = "": var_94 = "": var_9C = ""
  loc_B3A044: FFree1Ad var_90
  loc_B3A047: LitI4 0
  loc_B3A04C: FLdRfVar var_A4
  loc_B3A04F: FLdPr var_8C
  loc_B3A052: from_stack_1 = clsboleto.RecordCount
  loc_B3A057: ILdRf var_A4
  loc_B3A05A: FLdPr Me
  loc_B3A05D: MemLdRfVar from_stack_1.global_100
  loc_B3A060: Redim
  loc_B3A06A: FLdPr Me
  loc_B3A06D: MemLdStr global_100
  loc_B3A070: LitI2_Byte 1
  loc_B3A072: FnUBound
  loc_B3A074: LitI4 0
  loc_B3A079: GtI4
  loc_B3A07A: BranchF loc_B3A2F1
  loc_B3A07D: FLdPr var_8C
  loc_B3A080: Call clsboleto.MoveFirst()
  loc_B3A085: LitI2_Byte 1
  loc_B3A087: FLdPr Me
  loc_B3A08A: MemLdRfVar from_stack_1.global_118
  loc_B3A08D: FLdPr Me
  loc_B3A090: MemLdStr global_100
  loc_B3A093: LitI2_Byte 1
  loc_B3A095: FnUBound
  loc_B3A097: CI2I4
  loc_B3A098: ForI2 var_A8
  loc_B3A09E: FLdRfVar var_C0
  loc_B3A0A1: LitVarStr var_BC, "Expediente"
  loc_B3A0A6: PopAdLdVar
  loc_B3A0A7: FLdRfVar var_AC
  loc_B3A0AA: FLdRfVar var_90
  loc_B3A0AD: FLdPr var_8C
  loc_B3A0B0: from_stack_1v = clsboleto.RsFrmGet()
  loc_B3A0B5: FLdPr var_90
  loc_B3A0B8:  = Me.Fields
  loc_B3A0BD: FLdPr var_AC
  loc_B3A0C0: from_stack_2 = Me.Item(from_stack_1)
  loc_B3A0C5: LitI2_Byte 0
  loc_B3A0C7: LitVar_Missing var_F4
  loc_B3A0CA: LitI2_Byte 0
  loc_B3A0CC: FLdZeroAd var_C0
  loc_B3A0CF: CVarAd
  loc_B3A0D3: PopAdLdVar
  loc_B3A0D4: FLdPr Me
  loc_B3A0D7: MemLdI2 global_118
  loc_B3A0DA: CI4UI1
  loc_B3A0DB: FLdPr Me
  loc_B3A0DE: MemLdStr global_100
  loc_B3A0E1: AryLock
  loc_B3A0E4: Ary1LdPr
  loc_B3A0E5: MemLdRfVar from_stack_1.global_0
  loc_B3A0E8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B3A0ED: AryUnlock
  loc_B3A0F0: FFreeAd var_90 = ""
  loc_B3A0F7: FFreeVar var_D4 = ""
  loc_B3A0FE: FLdRfVar var_C0
  loc_B3A101: LitVarStr var_BC, "Fecha"
  loc_B3A106: PopAdLdVar
  loc_B3A107: FLdRfVar var_AC
  loc_B3A10A: FLdRfVar var_90
  loc_B3A10D: FLdPr var_8C
  loc_B3A110: from_stack_1v = clsboleto.RsFrmGet()
  loc_B3A115: FLdPr var_90
  loc_B3A118:  = Me.Fields
  loc_B3A11D: FLdPr var_AC
  loc_B3A120: from_stack_2 = Me.Item(from_stack_1)
  loc_B3A125: LitI2_Byte 0
  loc_B3A127: LitVar_Missing var_F4
  loc_B3A12A: LitI2_Byte 0
  loc_B3A12C: FLdZeroAd var_C0
  loc_B3A12F: CVarAd
  loc_B3A133: PopAdLdVar
  loc_B3A134: FLdPr Me
  loc_B3A137: MemLdI2 global_118
  loc_B3A13A: CI4UI1
  loc_B3A13B: FLdPr Me
  loc_B3A13E: MemLdStr global_100
  loc_B3A141: AryLock
  loc_B3A144: Ary1LdPr
  loc_B3A145: MemLdRfVar from_stack_1.global_4
  loc_B3A148: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B3A14D: AryUnlock
  loc_B3A150: FFreeAd var_90 = ""
  loc_B3A157: FFreeVar var_D4 = ""
  loc_B3A15E: FLdRfVar var_C0
  loc_B3A161: LitVarStr var_BC, "Causa"
  loc_B3A166: PopAdLdVar
  loc_B3A167: FLdRfVar var_AC
  loc_B3A16A: FLdRfVar var_90
  loc_B3A16D: FLdPr var_8C
  loc_B3A170: from_stack_1v = clsboleto.RsFrmGet()
  loc_B3A175: FLdPr var_90
  loc_B3A178:  = Me.Fields
  loc_B3A17D: FLdPr var_AC
  loc_B3A180: from_stack_2 = Me.Item(from_stack_1)
  loc_B3A185: LitI2_Byte 0
  loc_B3A187: LitVar_Missing var_F4
  loc_B3A18A: LitI2_Byte 0
  loc_B3A18C: FLdZeroAd var_C0
  loc_B3A18F: CVarAd
  loc_B3A193: PopAdLdVar
  loc_B3A194: FLdPr Me
  loc_B3A197: MemLdI2 global_118
  loc_B3A19A: CI4UI1
  loc_B3A19B: FLdPr Me
  loc_B3A19E: MemLdStr global_100
  loc_B3A1A1: AryLock
  loc_B3A1A4: Ary1LdPr
  loc_B3A1A5: MemLdRfVar from_stack_1.global_8
  loc_B3A1A8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B3A1AD: AryUnlock
  loc_B3A1B0: FFreeAd var_90 = ""
  loc_B3A1B7: FFreeVar var_D4 = ""
  loc_B3A1BE: FLdRfVar var_C0
  loc_B3A1C1: LitVarStr var_BC, "Comentario"
  loc_B3A1C6: PopAdLdVar
  loc_B3A1C7: FLdRfVar var_AC
  loc_B3A1CA: FLdRfVar var_90
  loc_B3A1CD: FLdPr var_8C
  loc_B3A1D0: from_stack_1v = clsboleto.RsFrmGet()
  loc_B3A1D5: FLdPr var_90
  loc_B3A1D8:  = Me.Fields
  loc_B3A1DD: FLdPr var_AC
  loc_B3A1E0: from_stack_2 = Me.Item(from_stack_1)
  loc_B3A1E5: LitI2_Byte 0
  loc_B3A1E7: LitVar_Missing var_F4
  loc_B3A1EA: LitI2_Byte 0
  loc_B3A1EC: FLdZeroAd var_C0
  loc_B3A1EF: CVarAd
  loc_B3A1F3: PopAdLdVar
  loc_B3A1F4: FLdPr Me
  loc_B3A1F7: MemLdI2 global_118
  loc_B3A1FA: CI4UI1
  loc_B3A1FB: FLdPr Me
  loc_B3A1FE: MemLdStr global_100
  loc_B3A201: AryLock
  loc_B3A204: Ary1LdPr
  loc_B3A205: MemLdRfVar from_stack_1.global_12
  loc_B3A208: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B3A20D: AryUnlock
  loc_B3A210: FFreeAd var_90 = ""
  loc_B3A217: FFreeVar var_D4 = ""
  loc_B3A21E: FLdRfVar var_C0
  loc_B3A221: LitVarStr var_BC, "AfectaDeuda"
  loc_B3A226: PopAdLdVar
  loc_B3A227: FLdRfVar var_AC
  loc_B3A22A: FLdRfVar var_90
  loc_B3A22D: FLdPr var_8C
  loc_B3A230: from_stack_1v = clsboleto.RsFrmGet()
  loc_B3A235: FLdPr var_90
  loc_B3A238:  = Me.Fields
  loc_B3A23D: FLdPr var_AC
  loc_B3A240: from_stack_2 = Me.Item(from_stack_1)
  loc_B3A245: LitI2_Byte 0
  loc_B3A247: LitVar_Missing var_F4
  loc_B3A24A: LitI2_Byte 0
  loc_B3A24C: FLdZeroAd var_C0
  loc_B3A24F: CVarAd
  loc_B3A253: PopAdLdVar
  loc_B3A254: FLdPr Me
  loc_B3A257: MemLdI2 global_118
  loc_B3A25A: CI4UI1
  loc_B3A25B: FLdPr Me
  loc_B3A25E: MemLdStr global_100
  loc_B3A261: AryLock
  loc_B3A264: Ary1LdPr
  loc_B3A265: MemLdRfVar from_stack_1.global_16
  loc_B3A268: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B3A26D: AryUnlock
  loc_B3A270: FFreeAd var_90 = ""
  loc_B3A277: FFreeVar var_D4 = ""
  loc_B3A27E: FLdRfVar var_C0
  loc_B3A281: LitVarStr var_BC, "PeriRenov"
  loc_B3A286: PopAdLdVar
  loc_B3A287: FLdRfVar var_AC
  loc_B3A28A: FLdRfVar var_90
  loc_B3A28D: FLdPr var_8C
  loc_B3A290: from_stack_1v = clsboleto.RsFrmGet()
  loc_B3A295: FLdPr var_90
  loc_B3A298:  = Me.Fields
  loc_B3A29D: FLdPr var_AC
  loc_B3A2A0: from_stack_2 = Me.Item(from_stack_1)
  loc_B3A2A5: LitI2_Byte 0
  loc_B3A2A7: LitVar_Missing var_F4
  loc_B3A2AA: LitI2_Byte 0
  loc_B3A2AC: FLdZeroAd var_C0
  loc_B3A2AF: CVarAd
  loc_B3A2B3: PopAdLdVar
  loc_B3A2B4: FLdPr Me
  loc_B3A2B7: MemLdI2 global_118
  loc_B3A2BA: CI4UI1
  loc_B3A2BB: FLdPr Me
  loc_B3A2BE: MemLdStr global_100
  loc_B3A2C1: AryLock
  loc_B3A2C4: Ary1LdPr
  loc_B3A2C5: MemLdRfVar from_stack_1.global_20
  loc_B3A2C8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B3A2CD: AryUnlock
  loc_B3A2D0: FFreeAd var_90 = ""
  loc_B3A2D7: FFreeVar var_D4 = ""
  loc_B3A2DE: FLdPr var_8C
  loc_B3A2E1: Call clsboleto.MoveNext()
  loc_B3A2E6: FLdPr Me
  loc_B3A2E9: MemLdRfVar from_stack_1.global_118
  loc_B3A2EC: NextI2 var_A8, loc_B3A09E
  loc_B3A2F1: LitNothing
  loc_B3A2F3: FStAd var_8C 
  loc_B3A2F7: ExitProcHresult
End Function

Private Function Proc_285_20_AD7E30() 'AD7E30
  'Data Table: 4B5FC4
  loc_AD7D10: FLdPr Me
  loc_AD7D13: MemLdRfVar from_stack_1.global_76
  loc_AD7D16: NewIfNullAd
  loc_AD7D19: FStAd var_8C 
  loc_AD7D1D: LitStr "SELECT ObseCoob "
  loc_AD7D20: LitStr " FROM publobse WHERE CodiCome = "
  loc_AD7D23: ConcatStr
  loc_AD7D24: FStStrNoPop var_98
  loc_AD7D27: FLdRfVar var_94
  loc_AD7D2A: FLdPr Me
  loc_AD7D2D: VCallAd Control_ID_NumeCtaTxt
  loc_AD7D30: FStAdFunc var_90
  loc_AD7D33: FLdPr var_90
  loc_AD7D36:  = Me.Text
  loc_AD7D3B: ILdRf var_94
  loc_AD7D3E: ConcatStr
  loc_AD7D3F: FStStrNoPop var_9C
  loc_AD7D42: LitStr " ORDER BY FechCoob "
  loc_AD7D45: ConcatStr
  loc_AD7D46: FStStrNoPop var_A0
  loc_AD7D49: FLdPr var_8C
  loc_AD7D4C: Call clsboleto.RedefineRS(from_stack_1v)
  loc_AD7D51: FFreeStr var_98 = "": var_94 = "": var_9C = ""
  loc_AD7D5C: FFree1Ad var_90
  loc_AD7D5F: LitI4 0
  loc_AD7D64: FLdRfVar var_A4
  loc_AD7D67: FLdPr var_8C
  loc_AD7D6A: from_stack_1 = clsboleto.RecordCount
  loc_AD7D6F: ILdRf var_A4
  loc_AD7D72: FLdPr Me
  loc_AD7D75: MemLdRfVar from_stack_1.global_104
  loc_AD7D78: Redim
  loc_AD7D82: FLdPr Me
  loc_AD7D85: MemLdStr global_104
  loc_AD7D88: LitI2_Byte 1
  loc_AD7D8A: FnUBound
  loc_AD7D8C: LitI4 0
  loc_AD7D91: GtI4
  loc_AD7D92: BranchF loc_AD7E29
  loc_AD7D95: FLdPr var_8C
  loc_AD7D98: Call clsboleto.MoveFirst()
  loc_AD7D9D: LitI2_Byte 1
  loc_AD7D9F: FLdPr Me
  loc_AD7DA2: MemLdRfVar from_stack_1.global_120
  loc_AD7DA5: FLdPr Me
  loc_AD7DA8: MemLdStr global_104
  loc_AD7DAB: LitI2_Byte 1
  loc_AD7DAD: FnUBound
  loc_AD7DAF: CI2I4
  loc_AD7DB0: ForI2 var_A8
  loc_AD7DB6: FLdRfVar var_C0
  loc_AD7DB9: LitVarStr var_BC, "ObseCoob"
  loc_AD7DBE: PopAdLdVar
  loc_AD7DBF: FLdRfVar var_AC
  loc_AD7DC2: FLdRfVar var_90
  loc_AD7DC5: FLdPr var_8C
  loc_AD7DC8: from_stack_1v = clsboleto.RsFrmGet()
  loc_AD7DCD: FLdPr var_90
  loc_AD7DD0:  = Me.Fields
  loc_AD7DD5: FLdPr var_AC
  loc_AD7DD8: from_stack_2 = Me.Item(from_stack_1)
  loc_AD7DDD: LitI2_Byte 0
  loc_AD7DDF: LitVar_Missing var_F4
  loc_AD7DE2: LitI2_Byte 0
  loc_AD7DE4: FLdZeroAd var_C0
  loc_AD7DE7: CVarAd
  loc_AD7DEB: PopAdLdVar
  loc_AD7DEC: FLdPr Me
  loc_AD7DEF: MemLdI2 global_120
  loc_AD7DF2: CI4UI1
  loc_AD7DF3: FLdPr Me
  loc_AD7DF6: MemLdStr global_104
  loc_AD7DF9: AryLock
  loc_AD7DFC: Ary1LdPr
  loc_AD7DFD: MemLdRfVar from_stack_1.global_0
  loc_AD7E00: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AD7E05: AryUnlock
  loc_AD7E08: FFreeAd var_90 = ""
  loc_AD7E0F: FFreeVar var_D4 = ""
  loc_AD7E16: FLdPr var_8C
  loc_AD7E19: Call clsboleto.MoveNext()
  loc_AD7E1E: FLdPr Me
  loc_AD7E21: MemLdRfVar from_stack_1.global_120
  loc_AD7E24: NextI2 var_A8, loc_AD7DB6
  loc_AD7E29: LitNothing
  loc_AD7E2B: FStAd var_8C 
  loc_AD7E2F: ExitProcHresult
End Function

Private Function Proc_285_21_BD9174() 'BD9174
  'Data Table: 4B5FC4
  loc_BD8A08: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_BD8A0D: PopAdLdVar
  loc_BD8A0E: FLdPr Me
  loc_BD8A11: MemLdRfVar from_stack_1.global_60
  loc_BD8A14: LdPrVar
  loc_BD8A16: LateMemCall
  loc_BD8A1C: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_BD8A21: PopAdLdVar
  loc_BD8A22: FLdPr Me
  loc_BD8A25: MemLdRfVar from_stack_1.global_60
  loc_BD8A28: LdPrVar
  loc_BD8A2A: LateMemCall
  loc_BD8A30: LitVarStr var_94, "<head>"
  loc_BD8A35: PopAdLdVar
  loc_BD8A36: FLdPr Me
  loc_BD8A39: MemLdRfVar from_stack_1.global_60
  loc_BD8A3C: LdPrVar
  loc_BD8A3E: LateMemCall
  loc_BD8A44: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BD8A49: PopAdLdVar
  loc_BD8A4A: FLdPr Me
  loc_BD8A4D: MemLdRfVar from_stack_1.global_60
  loc_BD8A50: LdPrVar
  loc_BD8A52: LateMemCall
  loc_BD8A58: LitStr "<title>"
  loc_BD8A5B: FLdRfVar var_A8
  loc_BD8A5E: FLdPr Me
  loc_BD8A61:  = Me.Caption
  loc_BD8A66: ILdRf var_A8
  loc_BD8A69: ConcatStr
  loc_BD8A6A: FStStrNoPop var_AC
  loc_BD8A6D: LitStr "</title>"
  loc_BD8A70: ConcatStr
  loc_BD8A71: CVarStr var_BC
  loc_BD8A74: PopAdLdVar
  loc_BD8A75: FLdPr Me
  loc_BD8A78: MemLdRfVar from_stack_1.global_60
  loc_BD8A7B: LdPrVar
  loc_BD8A7D: LateMemCall
  loc_BD8A83: FFreeStr var_A8 = ""
  loc_BD8A8A: FFree1Var var_BC = ""
  loc_BD8A8D: LitVarStr var_94, "<style type=""text/css"">"
  loc_BD8A92: PopAdLdVar
  loc_BD8A93: FLdPr Me
  loc_BD8A96: MemLdRfVar from_stack_1.global_60
  loc_BD8A99: LdPrVar
  loc_BD8A9B: LateMemCall
  loc_BD8AA1: LitVarStr var_94, ".Titulo1 {"
  loc_BD8AA6: PopAdLdVar
  loc_BD8AA7: FLdPr Me
  loc_BD8AAA: MemLdRfVar from_stack_1.global_60
  loc_BD8AAD: LdPrVar
  loc_BD8AAF: LateMemCall
  loc_BD8AB5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD8ABA: PopAdLdVar
  loc_BD8ABB: FLdPr Me
  loc_BD8ABE: MemLdRfVar from_stack_1.global_60
  loc_BD8AC1: LdPrVar
  loc_BD8AC3: LateMemCall
  loc_BD8AC9: LitVarStr var_94, " font-size: 18px;"
  loc_BD8ACE: PopAdLdVar
  loc_BD8ACF: FLdPr Me
  loc_BD8AD2: MemLdRfVar from_stack_1.global_60
  loc_BD8AD5: LdPrVar
  loc_BD8AD7: LateMemCall
  loc_BD8ADD: LitVarStr var_94, " font-weight: bold;"
  loc_BD8AE2: PopAdLdVar
  loc_BD8AE3: FLdPr Me
  loc_BD8AE6: MemLdRfVar from_stack_1.global_60
  loc_BD8AE9: LdPrVar
  loc_BD8AEB: LateMemCall
  loc_BD8AF1: LitVarStr var_94, "}"
  loc_BD8AF6: PopAdLdVar
  loc_BD8AF7: FLdPr Me
  loc_BD8AFA: MemLdRfVar from_stack_1.global_60
  loc_BD8AFD: LdPrVar
  loc_BD8AFF: LateMemCall
  loc_BD8B05: LitVarStr var_94, ".Titulo2 {"
  loc_BD8B0A: PopAdLdVar
  loc_BD8B0B: FLdPr Me
  loc_BD8B0E: MemLdRfVar from_stack_1.global_60
  loc_BD8B11: LdPrVar
  loc_BD8B13: LateMemCall
  loc_BD8B19: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD8B1E: PopAdLdVar
  loc_BD8B1F: FLdPr Me
  loc_BD8B22: MemLdRfVar from_stack_1.global_60
  loc_BD8B25: LdPrVar
  loc_BD8B27: LateMemCall
  loc_BD8B2D: LitVarStr var_94, " font-size: 14px;"
  loc_BD8B32: PopAdLdVar
  loc_BD8B33: FLdPr Me
  loc_BD8B36: MemLdRfVar from_stack_1.global_60
  loc_BD8B39: LdPrVar
  loc_BD8B3B: LateMemCall
  loc_BD8B41: LitVarStr var_94, " font-weight: bold;"
  loc_BD8B46: PopAdLdVar
  loc_BD8B47: FLdPr Me
  loc_BD8B4A: MemLdRfVar from_stack_1.global_60
  loc_BD8B4D: LdPrVar
  loc_BD8B4F: LateMemCall
  loc_BD8B55: LitVarStr var_94, "}"
  loc_BD8B5A: PopAdLdVar
  loc_BD8B5B: FLdPr Me
  loc_BD8B5E: MemLdRfVar from_stack_1.global_60
  loc_BD8B61: LdPrVar
  loc_BD8B63: LateMemCall
  loc_BD8B69: LitVarStr var_94, ".Normal {"
  loc_BD8B6E: PopAdLdVar
  loc_BD8B6F: FLdPr Me
  loc_BD8B72: MemLdRfVar from_stack_1.global_60
  loc_BD8B75: LdPrVar
  loc_BD8B77: LateMemCall
  loc_BD8B7D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8B82: PopAdLdVar
  loc_BD8B83: FLdPr Me
  loc_BD8B86: MemLdRfVar from_stack_1.global_60
  loc_BD8B89: LdPrVar
  loc_BD8B8B: LateMemCall
  loc_BD8B91: LitVarStr var_94, " font-size: 10px;"
  loc_BD8B96: PopAdLdVar
  loc_BD8B97: FLdPr Me
  loc_BD8B9A: MemLdRfVar from_stack_1.global_60
  loc_BD8B9D: LdPrVar
  loc_BD8B9F: LateMemCall
  loc_BD8BA5: LitVarStr var_94, " vertical-align: top;"
  loc_BD8BAA: PopAdLdVar
  loc_BD8BAB: FLdPr Me
  loc_BD8BAE: MemLdRfVar from_stack_1.global_60
  loc_BD8BB1: LdPrVar
  loc_BD8BB3: LateMemCall
  loc_BD8BB9: LitVarStr var_94, "}"
  loc_BD8BBE: PopAdLdVar
  loc_BD8BBF: FLdPr Me
  loc_BD8BC2: MemLdRfVar from_stack_1.global_60
  loc_BD8BC5: LdPrVar
  loc_BD8BC7: LateMemCall
  loc_BD8BCD: LitVarStr var_94, ".Encabezado {"
  loc_BD8BD2: PopAdLdVar
  loc_BD8BD3: FLdPr Me
  loc_BD8BD6: MemLdRfVar from_stack_1.global_60
  loc_BD8BD9: LdPrVar
  loc_BD8BDB: LateMemCall
  loc_BD8BE1: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BD8BE6: PopAdLdVar
  loc_BD8BE7: FLdPr Me
  loc_BD8BEA: MemLdRfVar from_stack_1.global_60
  loc_BD8BED: LdPrVar
  loc_BD8BEF: LateMemCall
  loc_BD8BF5: LitVarStr var_94, " font-size: 10px;"
  loc_BD8BFA: PopAdLdVar
  loc_BD8BFB: FLdPr Me
  loc_BD8BFE: MemLdRfVar from_stack_1.global_60
  loc_BD8C01: LdPrVar
  loc_BD8C03: LateMemCall
  loc_BD8C09: LitVarStr var_94, " font-weight: bold;"
  loc_BD8C0E: PopAdLdVar
  loc_BD8C0F: FLdPr Me
  loc_BD8C12: MemLdRfVar from_stack_1.global_60
  loc_BD8C15: LdPrVar
  loc_BD8C17: LateMemCall
  loc_BD8C1D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BD8C22: PopAdLdVar
  loc_BD8C23: FLdPr Me
  loc_BD8C26: MemLdRfVar from_stack_1.global_60
  loc_BD8C29: LdPrVar
  loc_BD8C2B: LateMemCall
  loc_BD8C31: LitVarStr var_94, "}"
  loc_BD8C36: PopAdLdVar
  loc_BD8C37: FLdPr Me
  loc_BD8C3A: MemLdRfVar from_stack_1.global_60
  loc_BD8C3D: LdPrVar
  loc_BD8C3F: LateMemCall
  loc_BD8C45: LitVarStr var_94, ".LineaDato {"
  loc_BD8C4A: PopAdLdVar
  loc_BD8C4B: FLdPr Me
  loc_BD8C4E: MemLdRfVar from_stack_1.global_60
  loc_BD8C51: LdPrVar
  loc_BD8C53: LateMemCall
  loc_BD8C59: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8C5E: PopAdLdVar
  loc_BD8C5F: FLdPr Me
  loc_BD8C62: MemLdRfVar from_stack_1.global_60
  loc_BD8C65: LdPrVar
  loc_BD8C67: LateMemCall
  loc_BD8C6D: LitVarStr var_94, " font-size: 10px;"
  loc_BD8C72: PopAdLdVar
  loc_BD8C73: FLdPr Me
  loc_BD8C76: MemLdRfVar from_stack_1.global_60
  loc_BD8C79: LdPrVar
  loc_BD8C7B: LateMemCall
  loc_BD8C81: LitVarStr var_94, "}"
  loc_BD8C86: PopAdLdVar
  loc_BD8C87: FLdPr Me
  loc_BD8C8A: MemLdRfVar from_stack_1.global_60
  loc_BD8C8D: LdPrVar
  loc_BD8C8F: LateMemCall
  loc_BD8C95: LitVarStr var_94, ".Totales {"
  loc_BD8C9A: PopAdLdVar
  loc_BD8C9B: FLdPr Me
  loc_BD8C9E: MemLdRfVar from_stack_1.global_60
  loc_BD8CA1: LdPrVar
  loc_BD8CA3: LateMemCall
  loc_BD8CA9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8CAE: PopAdLdVar
  loc_BD8CAF: FLdPr Me
  loc_BD8CB2: MemLdRfVar from_stack_1.global_60
  loc_BD8CB5: LdPrVar
  loc_BD8CB7: LateMemCall
  loc_BD8CBD: LitVarStr var_94, " font-size: 12px;"
  loc_BD8CC2: PopAdLdVar
  loc_BD8CC3: FLdPr Me
  loc_BD8CC6: MemLdRfVar from_stack_1.global_60
  loc_BD8CC9: LdPrVar
  loc_BD8CCB: LateMemCall
  loc_BD8CD1: LitVarStr var_94, " font-weight: bold;"
  loc_BD8CD6: PopAdLdVar
  loc_BD8CD7: FLdPr Me
  loc_BD8CDA: MemLdRfVar from_stack_1.global_60
  loc_BD8CDD: LdPrVar
  loc_BD8CDF: LateMemCall
  loc_BD8CE5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BD8CEA: PopAdLdVar
  loc_BD8CEB: FLdPr Me
  loc_BD8CEE: MemLdRfVar from_stack_1.global_60
  loc_BD8CF1: LdPrVar
  loc_BD8CF3: LateMemCall
  loc_BD8CF9: LitVarStr var_94, "}"
  loc_BD8CFE: PopAdLdVar
  loc_BD8CFF: FLdPr Me
  loc_BD8D02: MemLdRfVar from_stack_1.global_60
  loc_BD8D05: LdPrVar
  loc_BD8D07: LateMemCall
  loc_BD8D0D: LitVarStr var_94, ".Total {"
  loc_BD8D12: PopAdLdVar
  loc_BD8D13: FLdPr Me
  loc_BD8D16: MemLdRfVar from_stack_1.global_60
  loc_BD8D19: LdPrVar
  loc_BD8D1B: LateMemCall
  loc_BD8D21: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8D26: PopAdLdVar
  loc_BD8D27: FLdPr Me
  loc_BD8D2A: MemLdRfVar from_stack_1.global_60
  loc_BD8D2D: LdPrVar
  loc_BD8D2F: LateMemCall
  loc_BD8D35: LitVarStr var_94, " font-size: 12px;"
  loc_BD8D3A: PopAdLdVar
  loc_BD8D3B: FLdPr Me
  loc_BD8D3E: MemLdRfVar from_stack_1.global_60
  loc_BD8D41: LdPrVar
  loc_BD8D43: LateMemCall
  loc_BD8D49: LitVarStr var_94, " font-weight: bold;"
  loc_BD8D4E: PopAdLdVar
  loc_BD8D4F: FLdPr Me
  loc_BD8D52: MemLdRfVar from_stack_1.global_60
  loc_BD8D55: LdPrVar
  loc_BD8D57: LateMemCall
  loc_BD8D5D: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_BD8D62: PopAdLdVar
  loc_BD8D63: FLdPr Me
  loc_BD8D66: MemLdRfVar from_stack_1.global_60
  loc_BD8D69: LdPrVar
  loc_BD8D6B: LateMemCall
  loc_BD8D71: LitVarStr var_94, "}"
  loc_BD8D76: PopAdLdVar
  loc_BD8D77: FLdPr Me
  loc_BD8D7A: MemLdRfVar from_stack_1.global_60
  loc_BD8D7D: LdPrVar
  loc_BD8D7F: LateMemCall
  loc_BD8D85: LitVarStr var_94, ".TotalGeneral {"
  loc_BD8D8A: PopAdLdVar
  loc_BD8D8B: FLdPr Me
  loc_BD8D8E: MemLdRfVar from_stack_1.global_60
  loc_BD8D91: LdPrVar
  loc_BD8D93: LateMemCall
  loc_BD8D99: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8D9E: PopAdLdVar
  loc_BD8D9F: FLdPr Me
  loc_BD8DA2: MemLdRfVar from_stack_1.global_60
  loc_BD8DA5: LdPrVar
  loc_BD8DA7: LateMemCall
  loc_BD8DAD: LitVarStr var_94, " font-size: 14px;"
  loc_BD8DB2: PopAdLdVar
  loc_BD8DB3: FLdPr Me
  loc_BD8DB6: MemLdRfVar from_stack_1.global_60
  loc_BD8DB9: LdPrVar
  loc_BD8DBB: LateMemCall
  loc_BD8DC1: LitVarStr var_94, " vertical-align: top;"
  loc_BD8DC6: PopAdLdVar
  loc_BD8DC7: FLdPr Me
  loc_BD8DCA: MemLdRfVar from_stack_1.global_60
  loc_BD8DCD: LdPrVar
  loc_BD8DCF: LateMemCall
  loc_BD8DD5: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_BD8DDA: PopAdLdVar
  loc_BD8DDB: FLdPr Me
  loc_BD8DDE: MemLdRfVar from_stack_1.global_60
  loc_BD8DE1: LdPrVar
  loc_BD8DE3: LateMemCall
  loc_BD8DE9: LitVarStr var_94, " font-weight: bold;"
  loc_BD8DEE: PopAdLdVar
  loc_BD8DEF: FLdPr Me
  loc_BD8DF2: MemLdRfVar from_stack_1.global_60
  loc_BD8DF5: LdPrVar
  loc_BD8DF7: LateMemCall
  loc_BD8DFD: LitVarStr var_94, " border: 1px solid #000000;"
  loc_BD8E02: PopAdLdVar
  loc_BD8E03: FLdPr Me
  loc_BD8E06: MemLdRfVar from_stack_1.global_60
  loc_BD8E09: LdPrVar
  loc_BD8E0B: LateMemCall
  loc_BD8E11: LitVarStr var_94, "}"
  loc_BD8E16: PopAdLdVar
  loc_BD8E17: FLdPr Me
  loc_BD8E1A: MemLdRfVar from_stack_1.global_60
  loc_BD8E1D: LdPrVar
  loc_BD8E1F: LateMemCall
  loc_BD8E25: LitVarStr var_94, ".SubTotales {"
  loc_BD8E2A: PopAdLdVar
  loc_BD8E2B: FLdPr Me
  loc_BD8E2E: MemLdRfVar from_stack_1.global_60
  loc_BD8E31: LdPrVar
  loc_BD8E33: LateMemCall
  loc_BD8E39: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD8E3E: PopAdLdVar
  loc_BD8E3F: FLdPr Me
  loc_BD8E42: MemLdRfVar from_stack_1.global_60
  loc_BD8E45: LdPrVar
  loc_BD8E47: LateMemCall
  loc_BD8E4D: LitVarStr var_94, " font-size: 10px;"
  loc_BD8E52: PopAdLdVar
  loc_BD8E53: FLdPr Me
  loc_BD8E56: MemLdRfVar from_stack_1.global_60
  loc_BD8E59: LdPrVar
  loc_BD8E5B: LateMemCall
  loc_BD8E61: LitVarStr var_94, " font-weight: bold;"
  loc_BD8E66: PopAdLdVar
  loc_BD8E67: FLdPr Me
  loc_BD8E6A: MemLdRfVar from_stack_1.global_60
  loc_BD8E6D: LdPrVar
  loc_BD8E6F: LateMemCall
  loc_BD8E75: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BD8E7A: PopAdLdVar
  loc_BD8E7B: FLdPr Me
  loc_BD8E7E: MemLdRfVar from_stack_1.global_60
  loc_BD8E81: LdPrVar
  loc_BD8E83: LateMemCall
  loc_BD8E89: LitVarStr var_94, "}"
  loc_BD8E8E: PopAdLdVar
  loc_BD8E8F: FLdPr Me
  loc_BD8E92: MemLdRfVar from_stack_1.global_60
  loc_BD8E95: LdPrVar
  loc_BD8E97: LateMemCall
  loc_BD8E9D: LitVarStr var_94, ".Encabezado1 {font-family: ""Times New Roman"", Times, serif;"
  loc_BD8EA2: PopAdLdVar
  loc_BD8EA3: FLdPr Me
  loc_BD8EA6: MemLdRfVar from_stack_1.global_60
  loc_BD8EA9: LdPrVar
  loc_BD8EAB: LateMemCall
  loc_BD8EB1: LitVarStr var_94, " font-size: 13px;"
  loc_BD8EB6: PopAdLdVar
  loc_BD8EB7: FLdPr Me
  loc_BD8EBA: MemLdRfVar from_stack_1.global_60
  loc_BD8EBD: LdPrVar
  loc_BD8EBF: LateMemCall
  loc_BD8EC5: LitVarStr var_94, " font-weight: bold;"
  loc_BD8ECA: PopAdLdVar
  loc_BD8ECB: FLdPr Me
  loc_BD8ECE: MemLdRfVar from_stack_1.global_60
  loc_BD8ED1: LdPrVar
  loc_BD8ED3: LateMemCall
  loc_BD8ED9: LitVarStr var_94, " text-align:right;"
  loc_BD8EDE: PopAdLdVar
  loc_BD8EDF: FLdPr Me
  loc_BD8EE2: MemLdRfVar from_stack_1.global_60
  loc_BD8EE5: LdPrVar
  loc_BD8EE7: LateMemCall
  loc_BD8EED: LitVarStr var_94, "}"
  loc_BD8EF2: PopAdLdVar
  loc_BD8EF3: FLdPr Me
  loc_BD8EF6: MemLdRfVar from_stack_1.global_60
  loc_BD8EF9: LdPrVar
  loc_BD8EFB: LateMemCall
  loc_BD8F01: LitVarStr var_94, ".Normal1 { font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD8F06: PopAdLdVar
  loc_BD8F07: FLdPr Me
  loc_BD8F0A: MemLdRfVar from_stack_1.global_60
  loc_BD8F0D: LdPrVar
  loc_BD8F0F: LateMemCall
  loc_BD8F15: LitVarStr var_94, " font-size: 11px;"
  loc_BD8F1A: PopAdLdVar
  loc_BD8F1B: FLdPr Me
  loc_BD8F1E: MemLdRfVar from_stack_1.global_60
  loc_BD8F21: LdPrVar
  loc_BD8F23: LateMemCall
  loc_BD8F29: LitVarStr var_94, " font-style: normal;"
  loc_BD8F2E: PopAdLdVar
  loc_BD8F2F: FLdPr Me
  loc_BD8F32: MemLdRfVar from_stack_1.global_60
  loc_BD8F35: LdPrVar
  loc_BD8F37: LateMemCall
  loc_BD8F3D: LitVarStr var_94, " font-weight: normal;"
  loc_BD8F42: PopAdLdVar
  loc_BD8F43: FLdPr Me
  loc_BD8F46: MemLdRfVar from_stack_1.global_60
  loc_BD8F49: LdPrVar
  loc_BD8F4B: LateMemCall
  loc_BD8F51: LitVarStr var_94, " font-variant: normal;"
  loc_BD8F56: PopAdLdVar
  loc_BD8F57: FLdPr Me
  loc_BD8F5A: MemLdRfVar from_stack_1.global_60
  loc_BD8F5D: LdPrVar
  loc_BD8F5F: LateMemCall
  loc_BD8F65: LitVarStr var_94, "}"
  loc_BD8F6A: PopAdLdVar
  loc_BD8F6B: FLdPr Me
  loc_BD8F6E: MemLdRfVar from_stack_1.global_60
  loc_BD8F71: LdPrVar
  loc_BD8F73: LateMemCall
  loc_BD8F79: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BD8F7E: PopAdLdVar
  loc_BD8F7F: FLdPr Me
  loc_BD8F82: MemLdRfVar from_stack_1.global_60
  loc_BD8F85: LdPrVar
  loc_BD8F87: LateMemCall
  loc_BD8F8D: LitVarStr var_94, "</style>"
  loc_BD8F92: PopAdLdVar
  loc_BD8F93: FLdPr Me
  loc_BD8F96: MemLdRfVar from_stack_1.global_60
  loc_BD8F99: LdPrVar
  loc_BD8F9B: LateMemCall
  loc_BD8FA1: LitI4 0
  loc_BD8FA6: FStStrCopy var_AC
  loc_BD8FA9: FLdRfVar var_AC
  loc_BD8FAC: LitI4 0
  loc_BD8FB1: FStStrCopy var_A8
  loc_BD8FB4: FLdRfVar var_A8
  loc_BD8FB7: LitI2_Byte 0
  loc_BD8FB9: PopTmpLdAd2 var_BE
  loc_BD8FBC: FLdPr Me
  loc_BD8FBF: MemLdRfVar from_stack_1.global_60
  loc_BD8FC2: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BD8FC7: FFreeStr var_A8 = ""
  loc_BD8FCE: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BD8FD3: PopAdLdVar
  loc_BD8FD4: FLdPr Me
  loc_BD8FD7: MemLdRfVar from_stack_1.global_60
  loc_BD8FDA: LdPrVar
  loc_BD8FDC: LateMemCall
  loc_BD8FE2: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BD8FE7: PopAdLdVar
  loc_BD8FE8: FLdPr Me
  loc_BD8FEB: MemLdRfVar from_stack_1.global_60
  loc_BD8FEE: LdPrVar
  loc_BD8FF0: LateMemCall
  loc_BD8FF6: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BD8FF9: LitI2_Byte &H5F
  loc_BD8FFB: CStrUI1
  loc_BD8FFD: FStStrNoPop var_A8
  loc_BD9000: ConcatStr
  loc_BD9001: FStStrNoPop var_AC
  loc_BD9004: LitStr """ height="""
  loc_BD9007: ConcatStr
  loc_BD9008: FStStrNoPop var_C4
  loc_BD900B: LitI2_Byte &H3C
  loc_BD900D: CStrUI1
  loc_BD900F: FStStrNoPop var_C8
  loc_BD9012: ConcatStr
  loc_BD9013: FStStrNoPop var_CC
  loc_BD9016: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BD9019: ConcatStr
  loc_BD901A: FStStrNoPop var_D0
  loc_BD901D: LitStr "Municipalidad de Guaymallén"
  loc_BD9020: ConcatStr
  loc_BD9021: FStStrNoPop var_D4
  loc_BD9024: LitStr "</p>"
  loc_BD9027: ConcatStr
  loc_BD9028: CVarStr var_BC
  loc_BD902B: PopAdLdVar
  loc_BD902C: FLdPr Me
  loc_BD902F: MemLdRfVar from_stack_1.global_60
  loc_BD9032: LdPrVar
  loc_BD9034: LateMemCall
  loc_BD903A: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BD904B: FFree1Var var_BC = ""
  loc_BD904E: LitStr "    <p>"
  loc_BD9051: FLdRfVar var_A8
  loc_BD9054: FLdPr Me
  loc_BD9057:  = Me.Caption
  loc_BD905C: ILdRf var_A8
  loc_BD905F: ConcatStr
  loc_BD9060: FStStrNoPop var_AC
  loc_BD9063: LitStr "</p></th>"
  loc_BD9066: ConcatStr
  loc_BD9067: CVarStr var_BC
  loc_BD906A: PopAdLdVar
  loc_BD906B: FLdPr Me
  loc_BD906E: MemLdRfVar from_stack_1.global_60
  loc_BD9071: LdPrVar
  loc_BD9073: LateMemCall
  loc_BD9079: FFreeStr var_A8 = ""
  loc_BD9080: FFree1Var var_BC = ""
  loc_BD9083: LitVarStr var_94, "  </tr>"
  loc_BD9088: PopAdLdVar
  loc_BD9089: FLdPr Me
  loc_BD908C: MemLdRfVar from_stack_1.global_60
  loc_BD908F: LdPrVar
  loc_BD9091: LateMemCall
  loc_BD9097: LitVarStr var_94, "  <tr>"
  loc_BD909C: PopAdLdVar
  loc_BD909D: FLdPr Me
  loc_BD90A0: MemLdRfVar from_stack_1.global_60
  loc_BD90A3: LdPrVar
  loc_BD90A5: LateMemCall
  loc_BD90AB: LitVarStr var_94, "    <th><hr></th>"
  loc_BD90B0: PopAdLdVar
  loc_BD90B1: FLdPr Me
  loc_BD90B4: MemLdRfVar from_stack_1.global_60
  loc_BD90B7: LdPrVar
  loc_BD90B9: LateMemCall
  loc_BD90BF: LitVarStr var_94, "  </tr>"
  loc_BD90C4: PopAdLdVar
  loc_BD90C5: FLdPr Me
  loc_BD90C8: MemLdRfVar from_stack_1.global_60
  loc_BD90CB: LdPrVar
  loc_BD90CD: LateMemCall
  loc_BD90D3: LitVarStr var_94, "<tr valign=""top"" class=""Normal"">"
  loc_BD90D8: PopAdLdVar
  loc_BD90D9: FLdPr Me
  loc_BD90DC: MemLdRfVar from_stack_1.global_60
  loc_BD90DF: LdPrVar
  loc_BD90E1: LateMemCall
  loc_BD90E7: LitVarStr var_94, "    <td align=""left"" valign=""top"">"
  loc_BD90EC: PopAdLdVar
  loc_BD90ED: FLdPr Me
  loc_BD90F0: MemLdRfVar from_stack_1.global_60
  loc_BD90F3: LdPrVar
  loc_BD90F5: LateMemCall
  loc_BD90FB: LitVarStr var_94, "    <table width=""100" & Chr(37) & """ border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_BD9100: PopAdLdVar
  loc_BD9101: FLdPr Me
  loc_BD9104: MemLdRfVar from_stack_1.global_60
  loc_BD9107: LdPrVar
  loc_BD9109: LateMemCall
  loc_BD910F: LitVarStr var_94, "   <tr>"
  loc_BD9114: PopAdLdVar
  loc_BD9115: FLdPr Me
  loc_BD9118: MemLdRfVar from_stack_1.global_60
  loc_BD911B: LdPrVar
  loc_BD911D: LateMemCall
  loc_BD9123: LitVarStr var_94, "       <td height=""1"" colspan=""2"">&nbsp;</td>"
  loc_BD9128: PopAdLdVar
  loc_BD9129: FLdPr Me
  loc_BD912C: MemLdRfVar from_stack_1.global_60
  loc_BD912F: LdPrVar
  loc_BD9131: LateMemCall
  loc_BD9137: LitVarStr var_94, "        <td width=""20"" >&nbsp;</td>"
  loc_BD913C: PopAdLdVar
  loc_BD913D: FLdPr Me
  loc_BD9140: MemLdRfVar from_stack_1.global_60
  loc_BD9143: LdPrVar
  loc_BD9145: LateMemCall
  loc_BD914B: LitVarStr var_94, "        <td colspan=""2"">&nbsp;</td>"
  loc_BD9150: PopAdLdVar
  loc_BD9151: FLdPr Me
  loc_BD9154: MemLdRfVar from_stack_1.global_60
  loc_BD9157: LdPrVar
  loc_BD9159: LateMemCall
  loc_BD915F: LitVarStr var_94, "      </tr>"
  loc_BD9164: PopAdLdVar
  loc_BD9165: FLdPr Me
  loc_BD9168: MemLdRfVar from_stack_1.global_60
  loc_BD916B: LdPrVar
  loc_BD916D: LateMemCall
  loc_BD9173: ExitProcHresult
End Function

Private Function Proc_285_22_C5CF60() 'C5CF60
  'Data Table: 4B5FC4
  loc_C5BFFC: LitI4 1
  loc_C5C001: FLdPr Me
  loc_C5C004: MemLdStr global_88
  loc_C5C007: AryLock
  loc_C5C00A: Ary1LdRf
  loc_C5C00B: FStR4 var_8C
  loc_C5C00E: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C013: PopAdLdVar
  loc_C5C014: FLdPr Me
  loc_C5C017: MemLdRfVar from_stack_1.global_60
  loc_C5C01A: LdPrVar
  loc_C5C01C: LateMemCall
  loc_C5C022: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""2"" style=""text-align:center"">INMUEBLE</td>"
  loc_C5C027: PopAdLdVar
  loc_C5C028: FLdPr Me
  loc_C5C02B: MemLdRfVar from_stack_1.global_60
  loc_C5C02E: LdPrVar
  loc_C5C030: LateMemCall
  loc_C5C036: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C03B: PopAdLdVar
  loc_C5C03C: FLdPr Me
  loc_C5C03F: MemLdRfVar from_stack_1.global_60
  loc_C5C042: LdPrVar
  loc_C5C044: LateMemCall
  loc_C5C04A: LitVarStr var_9C, "        <td class=""Encabezado1"">Fecha Emisión:</td>"
  loc_C5C04F: PopAdLdVar
  loc_C5C050: FLdPr Me
  loc_C5C053: MemLdRfVar from_stack_1.global_60
  loc_C5C056: LdPrVar
  loc_C5C058: LateMemCall
  loc_C5C05E: LitVarStr var_9C, "        <td class=""Normal1"">"
  loc_C5C063: LitI2_Byte 0
  loc_C5C065: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C5C06A: CVarDate var_AC
  loc_C5C06E: ConcatVar var_BC
  loc_C5C072: LitVarStr var_CC, "</td>"
  loc_C5C077: ConcatVar var_DC
  loc_C5C07B: PopAdLdVar
  loc_C5C07C: FLdPr Me
  loc_C5C07F: MemLdRfVar from_stack_1.global_60
  loc_C5C082: LdPrVar
  loc_C5C084: LateMemCall
  loc_C5C08A: FFreeVar var_BC = ""
  loc_C5C091: LitVarStr var_9C, "      </tr>"
  loc_C5C096: PopAdLdVar
  loc_C5C097: FLdPr Me
  loc_C5C09A: MemLdRfVar from_stack_1.global_60
  loc_C5C09D: LdPrVar
  loc_C5C09F: LateMemCall
  loc_C5C0A5: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C0AA: PopAdLdVar
  loc_C5C0AB: FLdPr Me
  loc_C5C0AE: MemLdRfVar from_stack_1.global_60
  loc_C5C0B1: LdPrVar
  loc_C5C0B3: LateMemCall
  loc_C5C0B9: LitVarStr var_9C, "       <td width=""115"" class=""Encabezado1"">Padr&oacute;n:</td>"
  loc_C5C0BE: PopAdLdVar
  loc_C5C0BF: FLdPr Me
  loc_C5C0C2: MemLdRfVar from_stack_1.global_60
  loc_C5C0C5: LdPrVar
  loc_C5C0C7: LateMemCall
  loc_C5C0CD: LitStr "        <td class=""Normal1"">"
  loc_C5C0D0: FMemLdR4 var_8C(20)
  loc_C5C0D5: ConcatStr
  loc_C5C0D6: FStStrNoPop var_F0
  loc_C5C0D9: LitStr "</td>"
  loc_C5C0DC: ConcatStr
  loc_C5C0DD: CVarStr var_BC
  loc_C5C0E0: PopAdLdVar
  loc_C5C0E1: FLdPr Me
  loc_C5C0E4: MemLdRfVar from_stack_1.global_60
  loc_C5C0E7: LdPrVar
  loc_C5C0E9: LateMemCall
  loc_C5C0EF: FFree1Str var_F0
  loc_C5C0F2: FFree1Var var_BC = ""
  loc_C5C0F5: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C0FA: PopAdLdVar
  loc_C5C0FB: FLdPr Me
  loc_C5C0FE: MemLdRfVar from_stack_1.global_60
  loc_C5C101: LdPrVar
  loc_C5C103: LateMemCall
  loc_C5C109: LitVarStr var_9C, "        <td width=""115"" class=""Encabezado1"">Titular:</td>"
  loc_C5C10E: PopAdLdVar
  loc_C5C10F: FLdPr Me
  loc_C5C112: MemLdRfVar from_stack_1.global_60
  loc_C5C115: LdPrVar
  loc_C5C117: LateMemCall
  loc_C5C11D: LitStr "        <td class=""Normal1"">"
  loc_C5C120: FMemLdR4 var_8C(12)
  loc_C5C125: ConcatStr
  loc_C5C126: FStStrNoPop var_F0
  loc_C5C129: LitStr " "
  loc_C5C12C: ConcatStr
  loc_C5C12D: FStStrNoPop var_F4
  loc_C5C130: FMemLdR4 var_8C(16)
  loc_C5C135: ConcatStr
  loc_C5C136: FStStrNoPop var_F8
  loc_C5C139: LitStr "</td>"
  loc_C5C13C: ConcatStr
  loc_C5C13D: CVarStr var_BC
  loc_C5C140: PopAdLdVar
  loc_C5C141: FLdPr Me
  loc_C5C144: MemLdRfVar from_stack_1.global_60
  loc_C5C147: LdPrVar
  loc_C5C149: LateMemCall
  loc_C5C14F: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5C158: FFree1Var var_BC = ""
  loc_C5C15B: LitVarStr var_9C, "      </tr>"
  loc_C5C160: PopAdLdVar
  loc_C5C161: FLdPr Me
  loc_C5C164: MemLdRfVar from_stack_1.global_60
  loc_C5C167: LdPrVar
  loc_C5C169: LateMemCall
  loc_C5C16F: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C174: PopAdLdVar
  loc_C5C175: FLdPr Me
  loc_C5C178: MemLdRfVar from_stack_1.global_60
  loc_C5C17B: LdPrVar
  loc_C5C17D: LateMemCall
  loc_C5C183: LitVarStr var_9C, "       <td class=""Encabezado1"">Estado:</td>"
  loc_C5C188: PopAdLdVar
  loc_C5C189: FLdPr Me
  loc_C5C18C: MemLdRfVar from_stack_1.global_60
  loc_C5C18F: LdPrVar
  loc_C5C191: LateMemCall
  loc_C5C197: LitStr "        <td class=""Normal1"">"
  loc_C5C19A: FMemLdR4 var_8C(32)
  loc_C5C19F: ConcatStr
  loc_C5C1A0: FStStrNoPop var_F0
  loc_C5C1A3: LitStr "</td>"
  loc_C5C1A6: ConcatStr
  loc_C5C1A7: CVarStr var_BC
  loc_C5C1AA: PopAdLdVar
  loc_C5C1AB: FLdPr Me
  loc_C5C1AE: MemLdRfVar from_stack_1.global_60
  loc_C5C1B1: LdPrVar
  loc_C5C1B3: LateMemCall
  loc_C5C1B9: FFree1Str var_F0
  loc_C5C1BC: FFree1Var var_BC = ""
  loc_C5C1BF: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C1C4: PopAdLdVar
  loc_C5C1C5: FLdPr Me
  loc_C5C1C8: MemLdRfVar from_stack_1.global_60
  loc_C5C1CB: LdPrVar
  loc_C5C1CD: LateMemCall
  loc_C5C1D3: LitVarStr var_9C, "        <td class=""Encabezado1"">Fecha Estado:</td>"
  loc_C5C1D8: PopAdLdVar
  loc_C5C1D9: FLdPr Me
  loc_C5C1DC: MemLdRfVar from_stack_1.global_60
  loc_C5C1DF: LdPrVar
  loc_C5C1E1: LateMemCall
  loc_C5C1E7: LitStr "        <td class=""Normal1"">"
  loc_C5C1EA: FMemLdR4 var_8C(36)
  loc_C5C1EF: ConcatStr
  loc_C5C1F0: FStStrNoPop var_F0
  loc_C5C1F3: LitStr "</td>"
  loc_C5C1F6: ConcatStr
  loc_C5C1F7: CVarStr var_BC
  loc_C5C1FA: PopAdLdVar
  loc_C5C1FB: FLdPr Me
  loc_C5C1FE: MemLdRfVar from_stack_1.global_60
  loc_C5C201: LdPrVar
  loc_C5C203: LateMemCall
  loc_C5C209: FFree1Str var_F0
  loc_C5C20C: FFree1Var var_BC = ""
  loc_C5C20F: LitVarStr var_9C, "      </tr>"
  loc_C5C214: PopAdLdVar
  loc_C5C215: FLdPr Me
  loc_C5C218: MemLdRfVar from_stack_1.global_60
  loc_C5C21B: LdPrVar
  loc_C5C21D: LateMemCall
  loc_C5C223: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C228: PopAdLdVar
  loc_C5C229: FLdPr Me
  loc_C5C22C: MemLdRfVar from_stack_1.global_60
  loc_C5C22F: LdPrVar
  loc_C5C231: LateMemCall
  loc_C5C237: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />UBICACIÓN DEL INMUEBLE</td>"
  loc_C5C23C: PopAdLdVar
  loc_C5C23D: FLdPr Me
  loc_C5C240: MemLdRfVar from_stack_1.global_60
  loc_C5C243: LdPrVar
  loc_C5C245: LateMemCall
  loc_C5C24B: LitVarStr var_9C, "      </tr>"
  loc_C5C250: PopAdLdVar
  loc_C5C251: FLdPr Me
  loc_C5C254: MemLdRfVar from_stack_1.global_60
  loc_C5C257: LdPrVar
  loc_C5C259: LateMemCall
  loc_C5C25F: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C264: PopAdLdVar
  loc_C5C265: FLdPr Me
  loc_C5C268: MemLdRfVar from_stack_1.global_60
  loc_C5C26B: LdPrVar
  loc_C5C26D: LateMemCall
  loc_C5C273: LitVarStr var_9C, "       <td class=""Encabezado1"">Calle:</td>"
  loc_C5C278: PopAdLdVar
  loc_C5C279: FLdPr Me
  loc_C5C27C: MemLdRfVar from_stack_1.global_60
  loc_C5C27F: LdPrVar
  loc_C5C281: LateMemCall
  loc_C5C287: LitStr "        <td class=""Normal1"">"
  loc_C5C28A: FMemLdR4 var_8C(40)
  loc_C5C28F: ConcatStr
  loc_C5C290: FStStrNoPop var_F0
  loc_C5C293: LitStr " "
  loc_C5C296: ConcatStr
  loc_C5C297: FStStrNoPop var_F4
  loc_C5C29A: FMemLdR4 var_8C(44)
  loc_C5C29F: ConcatStr
  loc_C5C2A0: FStStrNoPop var_F8
  loc_C5C2A3: LitStr "</td>"
  loc_C5C2A6: ConcatStr
  loc_C5C2A7: CVarStr var_BC
  loc_C5C2AA: PopAdLdVar
  loc_C5C2AB: FLdPr Me
  loc_C5C2AE: MemLdRfVar from_stack_1.global_60
  loc_C5C2B1: LdPrVar
  loc_C5C2B3: LateMemCall
  loc_C5C2B9: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5C2C2: FFree1Var var_BC = ""
  loc_C5C2C5: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C2CA: PopAdLdVar
  loc_C5C2CB: FLdPr Me
  loc_C5C2CE: MemLdRfVar from_stack_1.global_60
  loc_C5C2D1: LdPrVar
  loc_C5C2D3: LateMemCall
  loc_C5C2D9: LitVarStr var_9C, "        <td class=""Encabezado1"">Número:</td>"
  loc_C5C2DE: PopAdLdVar
  loc_C5C2DF: FLdPr Me
  loc_C5C2E2: MemLdRfVar from_stack_1.global_60
  loc_C5C2E5: LdPrVar
  loc_C5C2E7: LateMemCall
  loc_C5C2ED: LitStr "        <td class=""Normal1"">"
  loc_C5C2F0: FMemLdR4 var_8C(52)
  loc_C5C2F5: ConcatStr
  loc_C5C2F6: FStStrNoPop var_F0
  loc_C5C2F9: LitStr "</td>"
  loc_C5C2FC: ConcatStr
  loc_C5C2FD: CVarStr var_BC
  loc_C5C300: PopAdLdVar
  loc_C5C301: FLdPr Me
  loc_C5C304: MemLdRfVar from_stack_1.global_60
  loc_C5C307: LdPrVar
  loc_C5C309: LateMemCall
  loc_C5C30F: FFree1Str var_F0
  loc_C5C312: FFree1Var var_BC = ""
  loc_C5C315: LitVarStr var_9C, "      </tr>"
  loc_C5C31A: PopAdLdVar
  loc_C5C31B: FLdPr Me
  loc_C5C31E: MemLdRfVar from_stack_1.global_60
  loc_C5C321: LdPrVar
  loc_C5C323: LateMemCall
  loc_C5C329: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C32E: PopAdLdVar
  loc_C5C32F: FLdPr Me
  loc_C5C332: MemLdRfVar from_stack_1.global_60
  loc_C5C335: LdPrVar
  loc_C5C337: LateMemCall
  loc_C5C33D: LitVarStr var_9C, "       <td class=""Encabezado1"">Barrio:</td>"
  loc_C5C342: PopAdLdVar
  loc_C5C343: FLdPr Me
  loc_C5C346: MemLdRfVar from_stack_1.global_60
  loc_C5C349: LdPrVar
  loc_C5C34B: LateMemCall
  loc_C5C351: LitStr "        <td class=""Normal1"">"
  loc_C5C354: FMemLdR4 var_8C(56)
  loc_C5C359: ConcatStr
  loc_C5C35A: FStStrNoPop var_F0
  loc_C5C35D: LitStr " "
  loc_C5C360: ConcatStr
  loc_C5C361: FStStrNoPop var_F4
  loc_C5C364: FMemLdR4 var_8C(60)
  loc_C5C369: ConcatStr
  loc_C5C36A: FStStrNoPop var_F8
  loc_C5C36D: LitStr "</td>"
  loc_C5C370: ConcatStr
  loc_C5C371: CVarStr var_BC
  loc_C5C374: PopAdLdVar
  loc_C5C375: FLdPr Me
  loc_C5C378: MemLdRfVar from_stack_1.global_60
  loc_C5C37B: LdPrVar
  loc_C5C37D: LateMemCall
  loc_C5C383: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5C38C: FFree1Var var_BC = ""
  loc_C5C38F: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C394: PopAdLdVar
  loc_C5C395: FLdPr Me
  loc_C5C398: MemLdRfVar from_stack_1.global_60
  loc_C5C39B: LdPrVar
  loc_C5C39D: LateMemCall
  loc_C5C3A3: LitVarStr var_9C, "        <td class=""Encabezado1"">Manzana/Casa:</td>"
  loc_C5C3A8: PopAdLdVar
  loc_C5C3A9: FLdPr Me
  loc_C5C3AC: MemLdRfVar from_stack_1.global_60
  loc_C5C3AF: LdPrVar
  loc_C5C3B1: LateMemCall
  loc_C5C3B7: LitStr "        <td class=""Normal1"">"
  loc_C5C3BA: FMemLdR4 var_8C(68)
  loc_C5C3BF: ConcatStr
  loc_C5C3C0: FStStrNoPop var_F0
  loc_C5C3C3: LitStr "/"
  loc_C5C3C6: ConcatStr
  loc_C5C3C7: FStStrNoPop var_F4
  loc_C5C3CA: FMemLdR4 var_8C(76)
  loc_C5C3CF: ConcatStr
  loc_C5C3D0: FStStrNoPop var_F8
  loc_C5C3D3: LitStr "/"
  loc_C5C3D6: ConcatStr
  loc_C5C3D7: FStStrNoPop var_FC
  loc_C5C3DA: FMemLdR4 var_8C(80)
  loc_C5C3DF: ConcatStr
  loc_C5C3E0: FStStrNoPop var_100
  loc_C5C3E3: LitStr "</td>"
  loc_C5C3E6: ConcatStr
  loc_C5C3E7: CVarStr var_BC
  loc_C5C3EA: PopAdLdVar
  loc_C5C3EB: FLdPr Me
  loc_C5C3EE: MemLdRfVar from_stack_1.global_60
  loc_C5C3F1: LdPrVar
  loc_C5C3F3: LateMemCall
  loc_C5C3F9: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C5C406: FFree1Var var_BC = ""
  loc_C5C409: LitVarStr var_9C, "      </tr>"
  loc_C5C40E: PopAdLdVar
  loc_C5C40F: FLdPr Me
  loc_C5C412: MemLdRfVar from_stack_1.global_60
  loc_C5C415: LdPrVar
  loc_C5C417: LateMemCall
  loc_C5C41D: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C422: PopAdLdVar
  loc_C5C423: FLdPr Me
  loc_C5C426: MemLdRfVar from_stack_1.global_60
  loc_C5C429: LdPrVar
  loc_C5C42B: LateMemCall
  loc_C5C431: LitVarStr var_9C, "       <td class=""Encabezado1"">Ubicaci&oacute;n:</td>"
  loc_C5C436: PopAdLdVar
  loc_C5C437: FLdPr Me
  loc_C5C43A: MemLdRfVar from_stack_1.global_60
  loc_C5C43D: LdPrVar
  loc_C5C43F: LateMemCall
  loc_C5C445: LitStr "        <td class=""Normal1"" colspan=""4"">"
  loc_C5C448: FMemLdR4 var_8C(88)
  loc_C5C44D: ConcatStr
  loc_C5C44E: FStStrNoPop var_F0
  loc_C5C451: LitStr "</td>"
  loc_C5C454: ConcatStr
  loc_C5C455: CVarStr var_BC
  loc_C5C458: PopAdLdVar
  loc_C5C459: FLdPr Me
  loc_C5C45C: MemLdRfVar from_stack_1.global_60
  loc_C5C45F: LdPrVar
  loc_C5C461: LateMemCall
  loc_C5C467: FFree1Str var_F0
  loc_C5C46A: FFree1Var var_BC = ""
  loc_C5C46D: LitVarStr var_9C, "      </tr>"
  loc_C5C472: PopAdLdVar
  loc_C5C473: FLdPr Me
  loc_C5C476: MemLdRfVar from_stack_1.global_60
  loc_C5C479: LdPrVar
  loc_C5C47B: LateMemCall
  loc_C5C481: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C486: PopAdLdVar
  loc_C5C487: FLdPr Me
  loc_C5C48A: MemLdRfVar from_stack_1.global_60
  loc_C5C48D: LdPrVar
  loc_C5C48F: LateMemCall
  loc_C5C495: LitVarStr var_9C, "       <td class=""Encabezado1"">Localidad:</td>"
  loc_C5C49A: PopAdLdVar
  loc_C5C49B: FLdPr Me
  loc_C5C49E: MemLdRfVar from_stack_1.global_60
  loc_C5C4A1: LdPrVar
  loc_C5C4A3: LateMemCall
  loc_C5C4A9: LitStr "        <td class=""Normal1"">"
  loc_C5C4AC: FMemLdR4 var_8C(92)
  loc_C5C4B1: ConcatStr
  loc_C5C4B2: FStStrNoPop var_F0
  loc_C5C4B5: LitStr " "
  loc_C5C4B8: ConcatStr
  loc_C5C4B9: FStStrNoPop var_F4
  loc_C5C4BC: FMemLdR4 var_8C(96)
  loc_C5C4C1: ConcatStr
  loc_C5C4C2: FStStrNoPop var_F8
  loc_C5C4C5: LitStr "</td>"
  loc_C5C4C8: ConcatStr
  loc_C5C4C9: CVarStr var_BC
  loc_C5C4CC: PopAdLdVar
  loc_C5C4CD: FLdPr Me
  loc_C5C4D0: MemLdRfVar from_stack_1.global_60
  loc_C5C4D3: LdPrVar
  loc_C5C4D5: LateMemCall
  loc_C5C4DB: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5C4E4: FFree1Var var_BC = ""
  loc_C5C4E7: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C4EC: PopAdLdVar
  loc_C5C4ED: FLdPr Me
  loc_C5C4F0: MemLdRfVar from_stack_1.global_60
  loc_C5C4F3: LdPrVar
  loc_C5C4F5: LateMemCall
  loc_C5C4FB: LitVarStr var_9C, "        <td class=""Encabezado1"">C&oacute;d. Postal:</td>"
  loc_C5C500: PopAdLdVar
  loc_C5C501: FLdPr Me
  loc_C5C504: MemLdRfVar from_stack_1.global_60
  loc_C5C507: LdPrVar
  loc_C5C509: LateMemCall
  loc_C5C50F: LitStr "        <td class=""Normal1"">"
  loc_C5C512: FMemLdR4 var_8C(104)
  loc_C5C517: ConcatStr
  loc_C5C518: FStStrNoPop var_F0
  loc_C5C51B: LitStr "</td>"
  loc_C5C51E: ConcatStr
  loc_C5C51F: CVarStr var_BC
  loc_C5C522: PopAdLdVar
  loc_C5C523: FLdPr Me
  loc_C5C526: MemLdRfVar from_stack_1.global_60
  loc_C5C529: LdPrVar
  loc_C5C52B: LateMemCall
  loc_C5C531: FFree1Str var_F0
  loc_C5C534: FFree1Var var_BC = ""
  loc_C5C537: LitVarStr var_9C, "      </tr>"
  loc_C5C53C: PopAdLdVar
  loc_C5C53D: FLdPr Me
  loc_C5C540: MemLdRfVar from_stack_1.global_60
  loc_C5C543: LdPrVar
  loc_C5C545: LateMemCall
  loc_C5C54B: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C550: PopAdLdVar
  loc_C5C551: FLdPr Me
  loc_C5C554: MemLdRfVar from_stack_1.global_60
  loc_C5C557: LdPrVar
  loc_C5C559: LateMemCall
  loc_C5C55F: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />DOMICILIO POSTAL</td>"
  loc_C5C564: PopAdLdVar
  loc_C5C565: FLdPr Me
  loc_C5C568: MemLdRfVar from_stack_1.global_60
  loc_C5C56B: LdPrVar
  loc_C5C56D: LateMemCall
  loc_C5C573: LitVarStr var_9C, "      </tr>"
  loc_C5C578: PopAdLdVar
  loc_C5C579: FLdPr Me
  loc_C5C57C: MemLdRfVar from_stack_1.global_60
  loc_C5C57F: LdPrVar
  loc_C5C581: LateMemCall
  loc_C5C587: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C58C: PopAdLdVar
  loc_C5C58D: FLdPr Me
  loc_C5C590: MemLdRfVar from_stack_1.global_60
  loc_C5C593: LdPrVar
  loc_C5C595: LateMemCall
  loc_C5C59B: LitVarStr var_9C, "       <td class=""Encabezado1"">Calle:</td>"
  loc_C5C5A0: PopAdLdVar
  loc_C5C5A1: FLdPr Me
  loc_C5C5A4: MemLdRfVar from_stack_1.global_60
  loc_C5C5A7: LdPrVar
  loc_C5C5A9: LateMemCall
  loc_C5C5AF: LitStr "        <td class=""Normal1"">"
  loc_C5C5B2: FMemLdR4 var_8C(108)
  loc_C5C5B7: ConcatStr
  loc_C5C5B8: FStStrNoPop var_F0
  loc_C5C5BB: LitStr " "
  loc_C5C5BE: ConcatStr
  loc_C5C5BF: FStStrNoPop var_F4
  loc_C5C5C2: FMemLdR4 var_8C(112)
  loc_C5C5C7: ConcatStr
  loc_C5C5C8: FStStrNoPop var_F8
  loc_C5C5CB: LitStr "</td>"
  loc_C5C5CE: ConcatStr
  loc_C5C5CF: CVarStr var_BC
  loc_C5C5D2: PopAdLdVar
  loc_C5C5D3: FLdPr Me
  loc_C5C5D6: MemLdRfVar from_stack_1.global_60
  loc_C5C5D9: LdPrVar
  loc_C5C5DB: LateMemCall
  loc_C5C5E1: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5C5EA: FFree1Var var_BC = ""
  loc_C5C5ED: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C5F2: PopAdLdVar
  loc_C5C5F3: FLdPr Me
  loc_C5C5F6: MemLdRfVar from_stack_1.global_60
  loc_C5C5F9: LdPrVar
  loc_C5C5FB: LateMemCall
  loc_C5C601: LitVarStr var_9C, "        <td class=""Encabezado1"">Número:</td>"
  loc_C5C606: PopAdLdVar
  loc_C5C607: FLdPr Me
  loc_C5C60A: MemLdRfVar from_stack_1.global_60
  loc_C5C60D: LdPrVar
  loc_C5C60F: LateMemCall
  loc_C5C615: LitStr "        <td class=""Normal1"">"
  loc_C5C618: FMemLdR4 var_8C(120)
  loc_C5C61D: ConcatStr
  loc_C5C61E: FStStrNoPop var_F0
  loc_C5C621: LitStr "</td>"
  loc_C5C624: ConcatStr
  loc_C5C625: CVarStr var_BC
  loc_C5C628: PopAdLdVar
  loc_C5C629: FLdPr Me
  loc_C5C62C: MemLdRfVar from_stack_1.global_60
  loc_C5C62F: LdPrVar
  loc_C5C631: LateMemCall
  loc_C5C637: FFree1Str var_F0
  loc_C5C63A: FFree1Var var_BC = ""
  loc_C5C63D: LitVarStr var_9C, "      </tr>"
  loc_C5C642: PopAdLdVar
  loc_C5C643: FLdPr Me
  loc_C5C646: MemLdRfVar from_stack_1.global_60
  loc_C5C649: LdPrVar
  loc_C5C64B: LateMemCall
  loc_C5C651: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C656: PopAdLdVar
  loc_C5C657: FLdPr Me
  loc_C5C65A: MemLdRfVar from_stack_1.global_60
  loc_C5C65D: LdPrVar
  loc_C5C65F: LateMemCall
  loc_C5C665: LitVarStr var_9C, "       <td class=""Encabezado1"">Barrio:</td>"
  loc_C5C66A: PopAdLdVar
  loc_C5C66B: FLdPr Me
  loc_C5C66E: MemLdRfVar from_stack_1.global_60
  loc_C5C671: LdPrVar
  loc_C5C673: LateMemCall
  loc_C5C679: LitStr "        <td class=""Normal1"">"
  loc_C5C67C: FMemLdR4 var_8C(148)
  loc_C5C681: ConcatStr
  loc_C5C682: FStStrNoPop var_F0
  loc_C5C685: LitStr " "
  loc_C5C688: ConcatStr
  loc_C5C689: FStStrNoPop var_F4
  loc_C5C68C: FMemLdR4 var_8C(152)
  loc_C5C691: ConcatStr
  loc_C5C692: FStStrNoPop var_F8
  loc_C5C695: LitStr "</td>"
  loc_C5C698: ConcatStr
  loc_C5C699: CVarStr var_BC
  loc_C5C69C: PopAdLdVar
  loc_C5C69D: FLdPr Me
  loc_C5C6A0: MemLdRfVar from_stack_1.global_60
  loc_C5C6A3: LdPrVar
  loc_C5C6A5: LateMemCall
  loc_C5C6AB: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5C6B4: FFree1Var var_BC = ""
  loc_C5C6B7: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C6BC: PopAdLdVar
  loc_C5C6BD: FLdPr Me
  loc_C5C6C0: MemLdRfVar from_stack_1.global_60
  loc_C5C6C3: LdPrVar
  loc_C5C6C5: LateMemCall
  loc_C5C6CB: LitVarStr var_9C, "        <td class=""Encabezado1"">Manzana/Casa:</td>"
  loc_C5C6D0: PopAdLdVar
  loc_C5C6D1: FLdPr Me
  loc_C5C6D4: MemLdRfVar from_stack_1.global_60
  loc_C5C6D7: LdPrVar
  loc_C5C6D9: LateMemCall
  loc_C5C6DF: LitStr "        <td class=""Normal1"">"
  loc_C5C6E2: FMemLdR4 var_8C(160)
  loc_C5C6E7: ConcatStr
  loc_C5C6E8: FStStrNoPop var_F0
  loc_C5C6EB: LitStr "/"
  loc_C5C6EE: ConcatStr
  loc_C5C6EF: FStStrNoPop var_F4
  loc_C5C6F2: FMemLdR4 var_8C(168)
  loc_C5C6F7: ConcatStr
  loc_C5C6F8: FStStrNoPop var_F8
  loc_C5C6FB: LitStr "/"
  loc_C5C6FE: ConcatStr
  loc_C5C6FF: FStStrNoPop var_FC
  loc_C5C702: FMemLdR4 var_8C(172)
  loc_C5C707: ConcatStr
  loc_C5C708: FStStrNoPop var_100
  loc_C5C70B: LitStr "</td>"
  loc_C5C70E: ConcatStr
  loc_C5C70F: CVarStr var_BC
  loc_C5C712: PopAdLdVar
  loc_C5C713: FLdPr Me
  loc_C5C716: MemLdRfVar from_stack_1.global_60
  loc_C5C719: LdPrVar
  loc_C5C71B: LateMemCall
  loc_C5C721: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C5C72E: FFree1Var var_BC = ""
  loc_C5C731: LitVarStr var_9C, "      </tr>"
  loc_C5C736: PopAdLdVar
  loc_C5C737: FLdPr Me
  loc_C5C73A: MemLdRfVar from_stack_1.global_60
  loc_C5C73D: LdPrVar
  loc_C5C73F: LateMemCall
  loc_C5C745: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C74A: PopAdLdVar
  loc_C5C74B: FLdPr Me
  loc_C5C74E: MemLdRfVar from_stack_1.global_60
  loc_C5C751: LdPrVar
  loc_C5C753: LateMemCall
  loc_C5C759: LitVarStr var_9C, "       <td class=""Encabezado1"">Piso:</td>"
  loc_C5C75E: PopAdLdVar
  loc_C5C75F: FLdPr Me
  loc_C5C762: MemLdRfVar from_stack_1.global_60
  loc_C5C765: LdPrVar
  loc_C5C767: LateMemCall
  loc_C5C76D: LitStr "        <td class=""Normal1"">"
  loc_C5C770: FMemLdR4 var_8C(124)
  loc_C5C775: ConcatStr
  loc_C5C776: FStStrNoPop var_F0
  loc_C5C779: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_C5C77C: ConcatStr
  loc_C5C77D: FStStrNoPop var_F4
  loc_C5C780: LitStr "<strong>Dpto: </strong> "
  loc_C5C783: ConcatStr
  loc_C5C784: FStStrNoPop var_F8
  loc_C5C787: LitStr "&nbsp;"
  loc_C5C78A: ConcatStr
  loc_C5C78B: FStStrNoPop var_FC
  loc_C5C78E: FMemLdR4 var_8C(132)
  loc_C5C793: ConcatStr
  loc_C5C794: FStStrNoPop var_100
  loc_C5C797: LitStr "</td>"
  loc_C5C79A: ConcatStr
  loc_C5C79B: CVarStr var_BC
  loc_C5C79E: PopAdLdVar
  loc_C5C79F: FLdPr Me
  loc_C5C7A2: MemLdRfVar from_stack_1.global_60
  loc_C5C7A5: LdPrVar
  loc_C5C7A7: LateMemCall
  loc_C5C7AD: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C5C7BA: FFree1Var var_BC = ""
  loc_C5C7BD: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C7C2: PopAdLdVar
  loc_C5C7C3: FLdPr Me
  loc_C5C7C6: MemLdRfVar from_stack_1.global_60
  loc_C5C7C9: LdPrVar
  loc_C5C7CB: LateMemCall
  loc_C5C7D1: LitVarStr var_9C, "        <td class=""Encabezado1"">Monoblock:</td>"
  loc_C5C7D6: PopAdLdVar
  loc_C5C7D7: FLdPr Me
  loc_C5C7DA: MemLdRfVar from_stack_1.global_60
  loc_C5C7DD: LdPrVar
  loc_C5C7DF: LateMemCall
  loc_C5C7E5: LitStr "        <td class=""Normal1"">"
  loc_C5C7E8: FMemLdR4 var_8C(140)
  loc_C5C7ED: ConcatStr
  loc_C5C7EE: FStStrNoPop var_F0
  loc_C5C7F1: LitStr "</td>"
  loc_C5C7F4: ConcatStr
  loc_C5C7F5: CVarStr var_BC
  loc_C5C7F8: PopAdLdVar
  loc_C5C7F9: FLdPr Me
  loc_C5C7FC: MemLdRfVar from_stack_1.global_60
  loc_C5C7FF: LdPrVar
  loc_C5C801: LateMemCall
  loc_C5C807: FFree1Str var_F0
  loc_C5C80A: FFree1Var var_BC = ""
  loc_C5C80D: LitVarStr var_9C, "      </tr>"
  loc_C5C812: PopAdLdVar
  loc_C5C813: FLdPr Me
  loc_C5C816: MemLdRfVar from_stack_1.global_60
  loc_C5C819: LdPrVar
  loc_C5C81B: LateMemCall
  loc_C5C821: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C826: PopAdLdVar
  loc_C5C827: FLdPr Me
  loc_C5C82A: MemLdRfVar from_stack_1.global_60
  loc_C5C82D: LdPrVar
  loc_C5C82F: LateMemCall
  loc_C5C835: LitVarStr var_9C, "       <td class=""Encabezado1"">Ubicaci&oacute;n:</td>"
  loc_C5C83A: PopAdLdVar
  loc_C5C83B: FLdPr Me
  loc_C5C83E: MemLdRfVar from_stack_1.global_60
  loc_C5C841: LdPrVar
  loc_C5C843: LateMemCall
  loc_C5C849: LitStr "        <td class=""Normal1"" colspan=""4"">"
  loc_C5C84C: FMemLdR4 var_8C(180)
  loc_C5C851: ConcatStr
  loc_C5C852: FStStrNoPop var_F0
  loc_C5C855: LitStr "</td>"
  loc_C5C858: ConcatStr
  loc_C5C859: CVarStr var_BC
  loc_C5C85C: PopAdLdVar
  loc_C5C85D: FLdPr Me
  loc_C5C860: MemLdRfVar from_stack_1.global_60
  loc_C5C863: LdPrVar
  loc_C5C865: LateMemCall
  loc_C5C86B: FFree1Str var_F0
  loc_C5C86E: FFree1Var var_BC = ""
  loc_C5C871: LitVarStr var_9C, "      </tr>"
  loc_C5C876: PopAdLdVar
  loc_C5C877: FLdPr Me
  loc_C5C87A: MemLdRfVar from_stack_1.global_60
  loc_C5C87D: LdPrVar
  loc_C5C87F: LateMemCall
  loc_C5C885: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C88A: PopAdLdVar
  loc_C5C88B: FLdPr Me
  loc_C5C88E: MemLdRfVar from_stack_1.global_60
  loc_C5C891: LdPrVar
  loc_C5C893: LateMemCall
  loc_C5C899: LitVarStr var_9C, "       <td class=""Encabezado1"">Localidad:</td>"
  loc_C5C89E: PopAdLdVar
  loc_C5C89F: FLdPr Me
  loc_C5C8A2: MemLdRfVar from_stack_1.global_60
  loc_C5C8A5: LdPrVar
  loc_C5C8A7: LateMemCall
  loc_C5C8AD: LitStr "        <td class=""Normal1"">"
  loc_C5C8B0: FMemLdR4 var_8C(184)
  loc_C5C8B5: ConcatStr
  loc_C5C8B6: FStStrNoPop var_F0
  loc_C5C8B9: LitStr " "
  loc_C5C8BC: ConcatStr
  loc_C5C8BD: FStStrNoPop var_F4
  loc_C5C8C0: FMemLdR4 var_8C(188)
  loc_C5C8C5: ConcatStr
  loc_C5C8C6: FStStrNoPop var_F8
  loc_C5C8C9: LitStr "</td>"
  loc_C5C8CC: ConcatStr
  loc_C5C8CD: CVarStr var_BC
  loc_C5C8D0: PopAdLdVar
  loc_C5C8D1: FLdPr Me
  loc_C5C8D4: MemLdRfVar from_stack_1.global_60
  loc_C5C8D7: LdPrVar
  loc_C5C8D9: LateMemCall
  loc_C5C8DF: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5C8E8: FFree1Var var_BC = ""
  loc_C5C8EB: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C8F0: PopAdLdVar
  loc_C5C8F1: FLdPr Me
  loc_C5C8F4: MemLdRfVar from_stack_1.global_60
  loc_C5C8F7: LdPrVar
  loc_C5C8F9: LateMemCall
  loc_C5C8FF: LitVarStr var_9C, "        <td class=""Encabezado1"">C&oacute;d. Postal:</td>"
  loc_C5C904: PopAdLdVar
  loc_C5C905: FLdPr Me
  loc_C5C908: MemLdRfVar from_stack_1.global_60
  loc_C5C90B: LdPrVar
  loc_C5C90D: LateMemCall
  loc_C5C913: LitStr "        <td class=""Normal1"">"
  loc_C5C916: FMemLdR4 var_8C(196)
  loc_C5C91B: ConcatStr
  loc_C5C91C: FStStrNoPop var_F0
  loc_C5C91F: LitStr "</td>"
  loc_C5C922: ConcatStr
  loc_C5C923: CVarStr var_BC
  loc_C5C926: PopAdLdVar
  loc_C5C927: FLdPr Me
  loc_C5C92A: MemLdRfVar from_stack_1.global_60
  loc_C5C92D: LdPrVar
  loc_C5C92F: LateMemCall
  loc_C5C935: FFree1Str var_F0
  loc_C5C938: FFree1Var var_BC = ""
  loc_C5C93B: LitVarStr var_9C, "      </tr>"
  loc_C5C940: PopAdLdVar
  loc_C5C941: FLdPr Me
  loc_C5C944: MemLdRfVar from_stack_1.global_60
  loc_C5C947: LdPrVar
  loc_C5C949: LateMemCall
  loc_C5C94F: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C954: PopAdLdVar
  loc_C5C955: FLdPr Me
  loc_C5C958: MemLdRfVar from_stack_1.global_60
  loc_C5C95B: LdPrVar
  loc_C5C95D: LateMemCall
  loc_C5C963: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />DATOS DEL INMUEBLE</td>"
  loc_C5C968: PopAdLdVar
  loc_C5C969: FLdPr Me
  loc_C5C96C: MemLdRfVar from_stack_1.global_60
  loc_C5C96F: LdPrVar
  loc_C5C971: LateMemCall
  loc_C5C977: LitVarStr var_9C, "      </tr>"
  loc_C5C97C: PopAdLdVar
  loc_C5C97D: FLdPr Me
  loc_C5C980: MemLdRfVar from_stack_1.global_60
  loc_C5C983: LdPrVar
  loc_C5C985: LateMemCall
  loc_C5C98B: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5C990: PopAdLdVar
  loc_C5C991: FLdPr Me
  loc_C5C994: MemLdRfVar from_stack_1.global_60
  loc_C5C997: LdPrVar
  loc_C5C999: LateMemCall
  loc_C5C99F: LitVarStr var_9C, "       <td class=""Encabezado1"">Fecha de Alta:</td>"
  loc_C5C9A4: PopAdLdVar
  loc_C5C9A5: FLdPr Me
  loc_C5C9A8: MemLdRfVar from_stack_1.global_60
  loc_C5C9AB: LdPrVar
  loc_C5C9AD: LateMemCall
  loc_C5C9B3: LitStr "        <td class=""Normal1"">"
  loc_C5C9B6: FMemLdR4 var_8C(200)
  loc_C5C9BB: ConcatStr
  loc_C5C9BC: FStStrNoPop var_F0
  loc_C5C9BF: LitStr "</td>"
  loc_C5C9C2: ConcatStr
  loc_C5C9C3: CVarStr var_BC
  loc_C5C9C6: PopAdLdVar
  loc_C5C9C7: FLdPr Me
  loc_C5C9CA: MemLdRfVar from_stack_1.global_60
  loc_C5C9CD: LdPrVar
  loc_C5C9CF: LateMemCall
  loc_C5C9D5: FFree1Str var_F0
  loc_C5C9D8: FFree1Var var_BC = ""
  loc_C5C9DB: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5C9E0: PopAdLdVar
  loc_C5C9E1: FLdPr Me
  loc_C5C9E4: MemLdRfVar from_stack_1.global_60
  loc_C5C9E7: LdPrVar
  loc_C5C9E9: LateMemCall
  loc_C5C9EF: LitVarStr var_9C, "        <td class=""Encabezado1"">Fecha de Modificaci&oacute;n:</td>"
  loc_C5C9F4: PopAdLdVar
  loc_C5C9F5: FLdPr Me
  loc_C5C9F8: MemLdRfVar from_stack_1.global_60
  loc_C5C9FB: LdPrVar
  loc_C5C9FD: LateMemCall
  loc_C5CA03: LitStr "        <td class=""Normal1"">"
  loc_C5CA06: FMemLdR4 var_8C(216)
  loc_C5CA0B: ConcatStr
  loc_C5CA0C: FStStrNoPop var_F0
  loc_C5CA0F: LitStr "</td>"
  loc_C5CA12: ConcatStr
  loc_C5CA13: CVarStr var_BC
  loc_C5CA16: PopAdLdVar
  loc_C5CA17: FLdPr Me
  loc_C5CA1A: MemLdRfVar from_stack_1.global_60
  loc_C5CA1D: LdPrVar
  loc_C5CA1F: LateMemCall
  loc_C5CA25: FFree1Str var_F0
  loc_C5CA28: FFree1Var var_BC = ""
  loc_C5CA2B: LitVarStr var_9C, "      </tr>"
  loc_C5CA30: PopAdLdVar
  loc_C5CA31: FLdPr Me
  loc_C5CA34: MemLdRfVar from_stack_1.global_60
  loc_C5CA37: LdPrVar
  loc_C5CA39: LateMemCall
  loc_C5CA3F: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5CA44: PopAdLdVar
  loc_C5CA45: FLdPr Me
  loc_C5CA48: MemLdRfVar from_stack_1.global_60
  loc_C5CA4B: LdPrVar
  loc_C5CA4D: LateMemCall
  loc_C5CA53: LitVarStr var_9C, "       <td class=""Encabezado1"">Superficie:</td>"
  loc_C5CA58: PopAdLdVar
  loc_C5CA59: FLdPr Me
  loc_C5CA5C: MemLdRfVar from_stack_1.global_60
  loc_C5CA5F: LdPrVar
  loc_C5CA61: LateMemCall
  loc_C5CA67: LitStr "        <td class=""Normal1"">"
  loc_C5CA6A: FMemLdR4 var_8C(252)
  loc_C5CA6F: ConcatStr
  loc_C5CA70: FStStrNoPop var_F0
  loc_C5CA73: LitStr "</td>"
  loc_C5CA76: ConcatStr
  loc_C5CA77: CVarStr var_BC
  loc_C5CA7A: PopAdLdVar
  loc_C5CA7B: FLdPr Me
  loc_C5CA7E: MemLdRfVar from_stack_1.global_60
  loc_C5CA81: LdPrVar
  loc_C5CA83: LateMemCall
  loc_C5CA89: FFree1Str var_F0
  loc_C5CA8C: FFree1Var var_BC = ""
  loc_C5CA8F: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5CA94: PopAdLdVar
  loc_C5CA95: FLdPr Me
  loc_C5CA98: MemLdRfVar from_stack_1.global_60
  loc_C5CA9B: LdPrVar
  loc_C5CA9D: LateMemCall
  loc_C5CAA3: LitVarStr var_9C, "      </tr>"
  loc_C5CAA8: PopAdLdVar
  loc_C5CAA9: FLdPr Me
  loc_C5CAAC: MemLdRfVar from_stack_1.global_60
  loc_C5CAAF: LdPrVar
  loc_C5CAB1: LateMemCall
  loc_C5CAB7: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5CABC: PopAdLdVar
  loc_C5CABD: FLdPr Me
  loc_C5CAC0: MemLdRfVar from_stack_1.global_60
  loc_C5CAC3: LdPrVar
  loc_C5CAC5: LateMemCall
  loc_C5CACB: LitVarStr var_9C, "       <td class=""Encabezado1"">Código RyB:</td>"
  loc_C5CAD0: PopAdLdVar
  loc_C5CAD1: FLdPr Me
  loc_C5CAD4: MemLdRfVar from_stack_1.global_60
  loc_C5CAD7: LdPrVar
  loc_C5CAD9: LateMemCall
  loc_C5CADF: LitStr "        <td class=""Normal1"">"
  loc_C5CAE2: FMemLdR4 var_8C(260)
  loc_C5CAE7: ConcatStr
  loc_C5CAE8: FStStrNoPop var_F0
  loc_C5CAEB: LitStr "</td>"
  loc_C5CAEE: ConcatStr
  loc_C5CAEF: CVarStr var_BC
  loc_C5CAF2: PopAdLdVar
  loc_C5CAF3: FLdPr Me
  loc_C5CAF6: MemLdRfVar from_stack_1.global_60
  loc_C5CAF9: LdPrVar
  loc_C5CAFB: LateMemCall
  loc_C5CB01: FFree1Str var_F0
  loc_C5CB04: FFree1Var var_BC = ""
  loc_C5CB07: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5CB0C: PopAdLdVar
  loc_C5CB0D: FLdPr Me
  loc_C5CB10: MemLdRfVar from_stack_1.global_60
  loc_C5CB13: LdPrVar
  loc_C5CB15: LateMemCall
  loc_C5CB1B: LitVarStr var_9C, "        <td class=""Encabezado1"">Descripción RyB:</td>"
  loc_C5CB20: PopAdLdVar
  loc_C5CB21: FLdPr Me
  loc_C5CB24: MemLdRfVar from_stack_1.global_60
  loc_C5CB27: LdPrVar
  loc_C5CB29: LateMemCall
  loc_C5CB2F: LitStr "        <td class=""Normal1"">"
  loc_C5CB32: FMemLdR4 var_8C(264)
  loc_C5CB37: ConcatStr
  loc_C5CB38: FStStrNoPop var_F0
  loc_C5CB3B: LitStr "</td>"
  loc_C5CB3E: ConcatStr
  loc_C5CB3F: CVarStr var_BC
  loc_C5CB42: PopAdLdVar
  loc_C5CB43: FLdPr Me
  loc_C5CB46: MemLdRfVar from_stack_1.global_60
  loc_C5CB49: LdPrVar
  loc_C5CB4B: LateMemCall
  loc_C5CB51: FFree1Str var_F0
  loc_C5CB54: FFree1Var var_BC = ""
  loc_C5CB57: LitVarStr var_9C, "      </tr>"
  loc_C5CB5C: PopAdLdVar
  loc_C5CB5D: FLdPr Me
  loc_C5CB60: MemLdRfVar from_stack_1.global_60
  loc_C5CB63: LdPrVar
  loc_C5CB65: LateMemCall
  loc_C5CB6B: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5CB70: PopAdLdVar
  loc_C5CB71: FLdPr Me
  loc_C5CB74: MemLdRfVar from_stack_1.global_60
  loc_C5CB77: LdPrVar
  loc_C5CB79: LateMemCall
  loc_C5CB7F: LitVarStr var_9C, "       <td class=""Encabezado1"">Aval&uacute:</td>"
  loc_C5CB84: PopAdLdVar
  loc_C5CB85: FLdPr Me
  loc_C5CB88: MemLdRfVar from_stack_1.global_60
  loc_C5CB8B: LdPrVar
  loc_C5CB8D: LateMemCall
  loc_C5CB93: LitStr "        <td class=""Normal1"">"
  loc_C5CB96: FMemLdR4 var_8C(256)
  loc_C5CB9B: ConcatStr
  loc_C5CB9C: FStStrNoPop var_F0
  loc_C5CB9F: LitStr "</td>"
  loc_C5CBA2: ConcatStr
  loc_C5CBA3: CVarStr var_BC
  loc_C5CBA6: PopAdLdVar
  loc_C5CBA7: FLdPr Me
  loc_C5CBAA: MemLdRfVar from_stack_1.global_60
  loc_C5CBAD: LdPrVar
  loc_C5CBAF: LateMemCall
  loc_C5CBB5: FFree1Str var_F0
  loc_C5CBB8: FFree1Var var_BC = ""
  loc_C5CBBB: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5CBC0: PopAdLdVar
  loc_C5CBC1: FLdPr Me
  loc_C5CBC4: MemLdRfVar from_stack_1.global_60
  loc_C5CBC7: LdPrVar
  loc_C5CBC9: LateMemCall
  loc_C5CBCF: LitVarStr var_9C, "      </tr>"
  loc_C5CBD4: PopAdLdVar
  loc_C5CBD5: FLdPr Me
  loc_C5CBD8: MemLdRfVar from_stack_1.global_60
  loc_C5CBDB: LdPrVar
  loc_C5CBDD: LateMemCall
  loc_C5CBE3: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5CBE8: PopAdLdVar
  loc_C5CBE9: FLdPr Me
  loc_C5CBEC: MemLdRfVar from_stack_1.global_60
  loc_C5CBEF: LdPrVar
  loc_C5CBF1: LateMemCall
  loc_C5CBF7: LitVarStr var_9C, "       <td class=""Encabezado1"">Cod. Exencion:</td>"
  loc_C5CBFC: PopAdLdVar
  loc_C5CBFD: FLdPr Me
  loc_C5CC00: MemLdRfVar from_stack_1.global_60
  loc_C5CC03: LdPrVar
  loc_C5CC05: LateMemCall
  loc_C5CC0B: LitStr "        <td class=""Normal1"">"
  loc_C5CC0E: FMemLdR4 var_8C(296)
  loc_C5CC13: ConcatStr
  loc_C5CC14: FStStrNoPop var_F0
  loc_C5CC17: LitStr "</td>"
  loc_C5CC1A: ConcatStr
  loc_C5CC1B: CVarStr var_BC
  loc_C5CC1E: PopAdLdVar
  loc_C5CC1F: FLdPr Me
  loc_C5CC22: MemLdRfVar from_stack_1.global_60
  loc_C5CC25: LdPrVar
  loc_C5CC27: LateMemCall
  loc_C5CC2D: FFree1Str var_F0
  loc_C5CC30: FFree1Var var_BC = ""
  loc_C5CC33: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5CC38: PopAdLdVar
  loc_C5CC39: FLdPr Me
  loc_C5CC3C: MemLdRfVar from_stack_1.global_60
  loc_C5CC3F: LdPrVar
  loc_C5CC41: LateMemCall
  loc_C5CC47: LitVarStr var_9C, "        <td class=""Encabezado1"">Fecha de Finalización:</td>"
  loc_C5CC4C: PopAdLdVar
  loc_C5CC4D: FLdPr Me
  loc_C5CC50: MemLdRfVar from_stack_1.global_60
  loc_C5CC53: LdPrVar
  loc_C5CC55: LateMemCall
  loc_C5CC5B: LitStr "        <td class=""Normal1"">"
  loc_C5CC5E: FMemLdR4 var_8C(300)
  loc_C5CC63: ConcatStr
  loc_C5CC64: FStStrNoPop var_F0
  loc_C5CC67: LitStr "</td>"
  loc_C5CC6A: ConcatStr
  loc_C5CC6B: CVarStr var_BC
  loc_C5CC6E: PopAdLdVar
  loc_C5CC6F: FLdPr Me
  loc_C5CC72: MemLdRfVar from_stack_1.global_60
  loc_C5CC75: LdPrVar
  loc_C5CC77: LateMemCall
  loc_C5CC7D: FFree1Str var_F0
  loc_C5CC80: FFree1Var var_BC = ""
  loc_C5CC83: LitVarStr var_9C, "      </tr>"
  loc_C5CC88: PopAdLdVar
  loc_C5CC89: FLdPr Me
  loc_C5CC8C: MemLdRfVar from_stack_1.global_60
  loc_C5CC8F: LdPrVar
  loc_C5CC91: LateMemCall
  loc_C5CC97: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5CC9C: PopAdLdVar
  loc_C5CC9D: FLdPr Me
  loc_C5CCA0: MemLdRfVar from_stack_1.global_60
  loc_C5CCA3: LdPrVar
  loc_C5CCA5: LateMemCall
  loc_C5CCAB: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />NOMENCLATURA</td>"
  loc_C5CCB0: PopAdLdVar
  loc_C5CCB1: FLdPr Me
  loc_C5CCB4: MemLdRfVar from_stack_1.global_60
  loc_C5CCB7: LdPrVar
  loc_C5CCB9: LateMemCall
  loc_C5CCBF: LitVarStr var_9C, "      </tr>"
  loc_C5CCC4: PopAdLdVar
  loc_C5CCC5: FLdPr Me
  loc_C5CCC8: MemLdRfVar from_stack_1.global_60
  loc_C5CCCB: LdPrVar
  loc_C5CCCD: LateMemCall
  loc_C5CCD3: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5CCD8: PopAdLdVar
  loc_C5CCD9: FLdPr Me
  loc_C5CCDC: MemLdRfVar from_stack_1.global_60
  loc_C5CCDF: LdPrVar
  loc_C5CCE1: LateMemCall
  loc_C5CCE7: LitVarStr var_9C, "        <td colspan=5 align=""center"">"
  loc_C5CCEC: PopAdLdVar
  loc_C5CCED: FLdPr Me
  loc_C5CCF0: MemLdRfVar from_stack_1.global_60
  loc_C5CCF3: LdPrVar
  loc_C5CCF5: LateMemCall
  loc_C5CCFB: LitVarStr var_9C, "          <span class=""Encabezado1"">Dpto.:</span>"
  loc_C5CD00: PopAdLdVar
  loc_C5CD01: FLdPr Me
  loc_C5CD04: MemLdRfVar from_stack_1.global_60
  loc_C5CD07: LdPrVar
  loc_C5CD09: LateMemCall
  loc_C5CD0F: LitStr "          <span class=""Normal1"">"
  loc_C5CD12: FMemLdR4 var_8C(268)
  loc_C5CD17: ConcatStr
  loc_C5CD18: FStStrNoPop var_F0
  loc_C5CD1B: LitStr "&nbsp;&nbsp;&nbsp;</span>"
  loc_C5CD1E: ConcatStr
  loc_C5CD1F: CVarStr var_BC
  loc_C5CD22: PopAdLdVar
  loc_C5CD23: FLdPr Me
  loc_C5CD26: MemLdRfVar from_stack_1.global_60
  loc_C5CD29: LdPrVar
  loc_C5CD2B: LateMemCall
  loc_C5CD31: FFree1Str var_F0
  loc_C5CD34: FFree1Var var_BC = ""
  loc_C5CD37: LitVarStr var_9C, "          <span class=""Encabezado1"">Dist.:</span>"
  loc_C5CD3C: PopAdLdVar
  loc_C5CD3D: FLdPr Me
  loc_C5CD40: MemLdRfVar from_stack_1.global_60
  loc_C5CD43: LdPrVar
  loc_C5CD45: LateMemCall
  loc_C5CD4B: LitStr "          <span class=""Normal1"">"
  loc_C5CD4E: FMemLdR4 var_8C(272)
  loc_C5CD53: ConcatStr
  loc_C5CD54: FStStrNoPop var_F0
  loc_C5CD57: LitStr "&nbsp;&nbsp;&nbsp;</span>"
  loc_C5CD5A: ConcatStr
  loc_C5CD5B: CVarStr var_BC
  loc_C5CD5E: PopAdLdVar
  loc_C5CD5F: FLdPr Me
  loc_C5CD62: MemLdRfVar from_stack_1.global_60
  loc_C5CD65: LdPrVar
  loc_C5CD67: LateMemCall
  loc_C5CD6D: FFree1Str var_F0
  loc_C5CD70: FFree1Var var_BC = ""
  loc_C5CD73: LitVarStr var_9C, "          <span class=""Encabezado1"">Secc.:</span>"
  loc_C5CD78: PopAdLdVar
  loc_C5CD79: FLdPr Me
  loc_C5CD7C: MemLdRfVar from_stack_1.global_60
  loc_C5CD7F: LdPrVar
  loc_C5CD81: LateMemCall
  loc_C5CD87: LitStr "          <span class=""Normal1"">"
  loc_C5CD8A: FMemLdR4 var_8C(276)
  loc_C5CD8F: ConcatStr
  loc_C5CD90: FStStrNoPop var_F0
  loc_C5CD93: LitStr "&nbsp;&nbsp;&nbsp;</span>"
  loc_C5CD96: ConcatStr
  loc_C5CD97: CVarStr var_BC
  loc_C5CD9A: PopAdLdVar
  loc_C5CD9B: FLdPr Me
  loc_C5CD9E: MemLdRfVar from_stack_1.global_60
  loc_C5CDA1: LdPrVar
  loc_C5CDA3: LateMemCall
  loc_C5CDA9: FFree1Str var_F0
  loc_C5CDAC: FFree1Var var_BC = ""
  loc_C5CDAF: LitVarStr var_9C, "          <span class=""Encabezado1"">Manz.:</span>"
  loc_C5CDB4: PopAdLdVar
  loc_C5CDB5: FLdPr Me
  loc_C5CDB8: MemLdRfVar from_stack_1.global_60
  loc_C5CDBB: LdPrVar
  loc_C5CDBD: LateMemCall
  loc_C5CDC3: LitStr "          <span class=""Normal1"">"
  loc_C5CDC6: FMemLdR4 var_8C(280)
  loc_C5CDCB: ConcatStr
  loc_C5CDCC: FStStrNoPop var_F0
  loc_C5CDCF: LitStr "&nbsp;&nbsp;&nbsp;</span>"
  loc_C5CDD2: ConcatStr
  loc_C5CDD3: CVarStr var_BC
  loc_C5CDD6: PopAdLdVar
  loc_C5CDD7: FLdPr Me
  loc_C5CDDA: MemLdRfVar from_stack_1.global_60
  loc_C5CDDD: LdPrVar
  loc_C5CDDF: LateMemCall
  loc_C5CDE5: FFree1Str var_F0
  loc_C5CDE8: FFree1Var var_BC = ""
  loc_C5CDEB: LitVarStr var_9C, "          <span class=""Encabezado1"">Parc.:</span>"
  loc_C5CDF0: PopAdLdVar
  loc_C5CDF1: FLdPr Me
  loc_C5CDF4: MemLdRfVar from_stack_1.global_60
  loc_C5CDF7: LdPrVar
  loc_C5CDF9: LateMemCall
  loc_C5CDFF: LitStr "          <span class=""Normal1"">"
  loc_C5CE02: FMemLdR4 var_8C(284)
  loc_C5CE07: ConcatStr
  loc_C5CE08: FStStrNoPop var_F0
  loc_C5CE0B: LitStr "&nbsp;&nbsp;&nbsp;</span>"
  loc_C5CE0E: ConcatStr
  loc_C5CE0F: CVarStr var_BC
  loc_C5CE12: PopAdLdVar
  loc_C5CE13: FLdPr Me
  loc_C5CE16: MemLdRfVar from_stack_1.global_60
  loc_C5CE19: LdPrVar
  loc_C5CE1B: LateMemCall
  loc_C5CE21: FFree1Str var_F0
  loc_C5CE24: FFree1Var var_BC = ""
  loc_C5CE27: LitVarStr var_9C, "          <span class=""Encabezado1"">Sub-Parc.:</span>"
  loc_C5CE2C: PopAdLdVar
  loc_C5CE2D: FLdPr Me
  loc_C5CE30: MemLdRfVar from_stack_1.global_60
  loc_C5CE33: LdPrVar
  loc_C5CE35: LateMemCall
  loc_C5CE3B: LitStr "          <span class=""Normal1"">"
  loc_C5CE3E: FMemLdR4 var_8C(288)
  loc_C5CE43: ConcatStr
  loc_C5CE44: FStStrNoPop var_F0
  loc_C5CE47: LitStr "&nbsp;&nbsp;&nbsp;</span>"
  loc_C5CE4A: ConcatStr
  loc_C5CE4B: CVarStr var_BC
  loc_C5CE4E: PopAdLdVar
  loc_C5CE4F: FLdPr Me
  loc_C5CE52: MemLdRfVar from_stack_1.global_60
  loc_C5CE55: LdPrVar
  loc_C5CE57: LateMemCall
  loc_C5CE5D: FFree1Str var_F0
  loc_C5CE60: FFree1Var var_BC = ""
  loc_C5CE63: LitVarStr var_9C, "          <span class=""Encabezado1"">D.V.:</span>"
  loc_C5CE68: PopAdLdVar
  loc_C5CE69: FLdPr Me
  loc_C5CE6C: MemLdRfVar from_stack_1.global_60
  loc_C5CE6F: LdPrVar
  loc_C5CE71: LateMemCall
  loc_C5CE77: LitStr "          <span class=""Normal1"">"
  loc_C5CE7A: FMemLdR4 var_8C(292)
  loc_C5CE7F: ConcatStr
  loc_C5CE80: FStStrNoPop var_F0
  loc_C5CE83: LitStr "</span>"
  loc_C5CE86: ConcatStr
  loc_C5CE87: CVarStr var_BC
  loc_C5CE8A: PopAdLdVar
  loc_C5CE8B: FLdPr Me
  loc_C5CE8E: MemLdRfVar from_stack_1.global_60
  loc_C5CE91: LdPrVar
  loc_C5CE93: LateMemCall
  loc_C5CE99: FFree1Str var_F0
  loc_C5CE9C: FFree1Var var_BC = ""
  loc_C5CE9F: LitVarStr var_9C, "        </td>"
  loc_C5CEA4: PopAdLdVar
  loc_C5CEA5: FLdPr Me
  loc_C5CEA8: MemLdRfVar from_stack_1.global_60
  loc_C5CEAB: LdPrVar
  loc_C5CEAD: LateMemCall
  loc_C5CEB3: LitVarStr var_9C, "      </tr>"
  loc_C5CEB8: PopAdLdVar
  loc_C5CEB9: FLdPr Me
  loc_C5CEBC: MemLdRfVar from_stack_1.global_60
  loc_C5CEBF: LdPrVar
  loc_C5CEC1: LateMemCall
  loc_C5CEC7: LitVarStr var_9C, "     </table>"
  loc_C5CECC: PopAdLdVar
  loc_C5CECD: FLdPr Me
  loc_C5CED0: MemLdRfVar from_stack_1.global_60
  loc_C5CED3: LdPrVar
  loc_C5CED5: LateMemCall
  loc_C5CEDB: LitVarStr var_9C, "    </td>"
  loc_C5CEE0: PopAdLdVar
  loc_C5CEE1: FLdPr Me
  loc_C5CEE4: MemLdRfVar from_stack_1.global_60
  loc_C5CEE7: LdPrVar
  loc_C5CEE9: LateMemCall
  loc_C5CEEF: LitVarStr var_9C, "  </tr>"
  loc_C5CEF4: PopAdLdVar
  loc_C5CEF5: FLdPr Me
  loc_C5CEF8: MemLdRfVar from_stack_1.global_60
  loc_C5CEFB: LdPrVar
  loc_C5CEFD: LateMemCall
  loc_C5CF03: LitVarStr var_9C, "  <tr valign=""top"" class=""Normal"">"
  loc_C5CF08: PopAdLdVar
  loc_C5CF09: FLdPr Me
  loc_C5CF0C: MemLdRfVar from_stack_1.global_60
  loc_C5CF0F: LdPrVar
  loc_C5CF11: LateMemCall
  loc_C5CF17: LitVarStr var_9C, "    <td align=""left"" valign=""top""><hr></td>"
  loc_C5CF1C: PopAdLdVar
  loc_C5CF1D: FLdPr Me
  loc_C5CF20: MemLdRfVar from_stack_1.global_60
  loc_C5CF23: LdPrVar
  loc_C5CF25: LateMemCall
  loc_C5CF2B: LitVarStr var_9C, "  </tr>"
  loc_C5CF30: PopAdLdVar
  loc_C5CF31: FLdPr Me
  loc_C5CF34: MemLdRfVar from_stack_1.global_60
  loc_C5CF37: LdPrVar
  loc_C5CF39: LateMemCall
  loc_C5CF3F: LitVarStr var_9C, "</table>"
  loc_C5CF44: PopAdLdVar
  loc_C5CF45: FLdPr Me
  loc_C5CF48: MemLdRfVar from_stack_1.global_60
  loc_C5CF4B: LdPrVar
  loc_C5CF4D: LateMemCall
  loc_C5CF53: LitI4 0
  loc_C5CF58: FStR4 var_8C
  loc_C5CF5B: AryUnlock
  loc_C5CF5E: ExitProcHresult
End Function

Private Function Proc_285_23_C5B030() 'C5B030
  'Data Table: 4B5FC4
  loc_C5A104: LitI4 1
  loc_C5A109: FLdPr Me
  loc_C5A10C: MemLdStr global_88
  loc_C5A10F: AryLock
  loc_C5A112: Ary1LdRf
  loc_C5A113: FStR4 var_8C
  loc_C5A116: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A11B: PopAdLdVar
  loc_C5A11C: FLdPr Me
  loc_C5A11F: MemLdRfVar from_stack_1.global_60
  loc_C5A122: LdPrVar
  loc_C5A124: LateMemCall
  loc_C5A12A: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""2"" style=""text-align:center"">COMERCIO</td>"
  loc_C5A12F: PopAdLdVar
  loc_C5A130: FLdPr Me
  loc_C5A133: MemLdRfVar from_stack_1.global_60
  loc_C5A136: LdPrVar
  loc_C5A138: LateMemCall
  loc_C5A13E: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A143: PopAdLdVar
  loc_C5A144: FLdPr Me
  loc_C5A147: MemLdRfVar from_stack_1.global_60
  loc_C5A14A: LdPrVar
  loc_C5A14C: LateMemCall
  loc_C5A152: LitVarStr var_9C, "        <td class=""Encabezado1"">Fecha Emisión:</td>"
  loc_C5A157: PopAdLdVar
  loc_C5A158: FLdPr Me
  loc_C5A15B: MemLdRfVar from_stack_1.global_60
  loc_C5A15E: LdPrVar
  loc_C5A160: LateMemCall
  loc_C5A166: LitVarStr var_9C, "        <td class=""Normal1"">"
  loc_C5A16B: LitI2_Byte 0
  loc_C5A16D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C5A172: CVarDate var_AC
  loc_C5A176: ConcatVar var_BC
  loc_C5A17A: LitVarStr var_CC, "</td>"
  loc_C5A17F: ConcatVar var_DC
  loc_C5A183: PopAdLdVar
  loc_C5A184: FLdPr Me
  loc_C5A187: MemLdRfVar from_stack_1.global_60
  loc_C5A18A: LdPrVar
  loc_C5A18C: LateMemCall
  loc_C5A192: FFreeVar var_BC = ""
  loc_C5A199: LitVarStr var_9C, "      </tr>"
  loc_C5A19E: PopAdLdVar
  loc_C5A19F: FLdPr Me
  loc_C5A1A2: MemLdRfVar from_stack_1.global_60
  loc_C5A1A5: LdPrVar
  loc_C5A1A7: LateMemCall
  loc_C5A1AD: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A1B2: PopAdLdVar
  loc_C5A1B3: FLdPr Me
  loc_C5A1B6: MemLdRfVar from_stack_1.global_60
  loc_C5A1B9: LdPrVar
  loc_C5A1BB: LateMemCall
  loc_C5A1C1: LitVarStr var_9C, "       <td width=""115"" class=""Encabezado1"">Ficha:</td>"
  loc_C5A1C6: PopAdLdVar
  loc_C5A1C7: FLdPr Me
  loc_C5A1CA: MemLdRfVar from_stack_1.global_60
  loc_C5A1CD: LdPrVar
  loc_C5A1CF: LateMemCall
  loc_C5A1D5: LitStr "        <td class=""Normal1"">"
  loc_C5A1D8: FMemLdR4 var_8C(0)
  loc_C5A1DD: ConcatStr
  loc_C5A1DE: FStStrNoPop var_F0
  loc_C5A1E1: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_C5A1E4: ConcatStr
  loc_C5A1E5: FStStrNoPop var_F4
  loc_C5A1E8: LitStr "<strong>C.U.I.T.: </strong> "
  loc_C5A1EB: ConcatStr
  loc_C5A1EC: FStStrNoPop var_F8
  loc_C5A1EF: LitStr "&nbsp;"
  loc_C5A1F2: ConcatStr
  loc_C5A1F3: FStStrNoPop var_FC
  loc_C5A1F6: FMemLdR4 var_8C(4)
  loc_C5A1FB: ConcatStr
  loc_C5A1FC: FStStrNoPop var_100
  loc_C5A1FF: LitStr "</td>"
  loc_C5A202: ConcatStr
  loc_C5A203: CVarStr var_BC
  loc_C5A206: PopAdLdVar
  loc_C5A207: FLdPr Me
  loc_C5A20A: MemLdRfVar from_stack_1.global_60
  loc_C5A20D: LdPrVar
  loc_C5A20F: LateMemCall
  loc_C5A215: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C5A222: FFree1Var var_BC = ""
  loc_C5A225: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A22A: PopAdLdVar
  loc_C5A22B: FLdPr Me
  loc_C5A22E: MemLdRfVar from_stack_1.global_60
  loc_C5A231: LdPrVar
  loc_C5A233: LateMemCall
  loc_C5A239: LitVarStr var_9C, "        <td width=""115"" class=""Encabezado1"">Raz&oacute;n/Fantas&iacute;a:</td>"
  loc_C5A23E: PopAdLdVar
  loc_C5A23F: FLdPr Me
  loc_C5A242: MemLdRfVar from_stack_1.global_60
  loc_C5A245: LdPrVar
  loc_C5A247: LateMemCall
  loc_C5A24D: LitStr "        <td class=""Normal1"">"
  loc_C5A250: FMemLdR4 var_8C(8)
  loc_C5A255: ConcatStr
  loc_C5A256: FStStrNoPop var_F0
  loc_C5A259: LitStr "</td>"
  loc_C5A25C: ConcatStr
  loc_C5A25D: CVarStr var_BC
  loc_C5A260: PopAdLdVar
  loc_C5A261: FLdPr Me
  loc_C5A264: MemLdRfVar from_stack_1.global_60
  loc_C5A267: LdPrVar
  loc_C5A269: LateMemCall
  loc_C5A26F: FFree1Str var_F0
  loc_C5A272: FFree1Var var_BC = ""
  loc_C5A275: LitVarStr var_9C, "      </tr>"
  loc_C5A27A: PopAdLdVar
  loc_C5A27B: FLdPr Me
  loc_C5A27E: MemLdRfVar from_stack_1.global_60
  loc_C5A281: LdPrVar
  loc_C5A283: LateMemCall
  loc_C5A289: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A28E: PopAdLdVar
  loc_C5A28F: FLdPr Me
  loc_C5A292: MemLdRfVar from_stack_1.global_60
  loc_C5A295: LdPrVar
  loc_C5A297: LateMemCall
  loc_C5A29D: LitVarStr var_9C, "       <td class=""Encabezado1"">Titular:</td>"
  loc_C5A2A2: PopAdLdVar
  loc_C5A2A3: FLdPr Me
  loc_C5A2A6: MemLdRfVar from_stack_1.global_60
  loc_C5A2A9: LdPrVar
  loc_C5A2AB: LateMemCall
  loc_C5A2B1: LitStr "        <td class=""Normal1"">"
  loc_C5A2B4: FMemLdR4 var_8C(12)
  loc_C5A2B9: ConcatStr
  loc_C5A2BA: FStStrNoPop var_F0
  loc_C5A2BD: LitStr " "
  loc_C5A2C0: ConcatStr
  loc_C5A2C1: FStStrNoPop var_F4
  loc_C5A2C4: FMemLdR4 var_8C(16)
  loc_C5A2C9: ConcatStr
  loc_C5A2CA: FStStrNoPop var_F8
  loc_C5A2CD: LitStr "</td>"
  loc_C5A2D0: ConcatStr
  loc_C5A2D1: CVarStr var_BC
  loc_C5A2D4: PopAdLdVar
  loc_C5A2D5: FLdPr Me
  loc_C5A2D8: MemLdRfVar from_stack_1.global_60
  loc_C5A2DB: LdPrVar
  loc_C5A2DD: LateMemCall
  loc_C5A2E3: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5A2EC: FFree1Var var_BC = ""
  loc_C5A2EF: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A2F4: PopAdLdVar
  loc_C5A2F5: FLdPr Me
  loc_C5A2F8: MemLdRfVar from_stack_1.global_60
  loc_C5A2FB: LdPrVar
  loc_C5A2FD: LateMemCall
  loc_C5A303: LitVarStr var_9C, "        <td class=""Encabezado1"">Padr&oacute;n:</td>"
  loc_C5A308: PopAdLdVar
  loc_C5A309: FLdPr Me
  loc_C5A30C: MemLdRfVar from_stack_1.global_60
  loc_C5A30F: LdPrVar
  loc_C5A311: LateMemCall
  loc_C5A317: LitStr "        <td class=""Normal1"">"
  loc_C5A31A: FMemLdR4 var_8C(20)
  loc_C5A31F: ConcatStr
  loc_C5A320: FStStrNoPop var_F0
  loc_C5A323: LitStr " "
  loc_C5A326: ConcatStr
  loc_C5A327: FStStrNoPop var_F4
  loc_C5A32A: FMemLdR4 var_8C(24)
  loc_C5A32F: ConcatStr
  loc_C5A330: FStStrNoPop var_F8
  loc_C5A333: LitStr "</td>"
  loc_C5A336: ConcatStr
  loc_C5A337: CVarStr var_BC
  loc_C5A33A: PopAdLdVar
  loc_C5A33B: FLdPr Me
  loc_C5A33E: MemLdRfVar from_stack_1.global_60
  loc_C5A341: LdPrVar
  loc_C5A343: LateMemCall
  loc_C5A349: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5A352: FFree1Var var_BC = ""
  loc_C5A355: LitVarStr var_9C, "      </tr>"
  loc_C5A35A: PopAdLdVar
  loc_C5A35B: FLdPr Me
  loc_C5A35E: MemLdRfVar from_stack_1.global_60
  loc_C5A361: LdPrVar
  loc_C5A363: LateMemCall
  loc_C5A369: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A36E: PopAdLdVar
  loc_C5A36F: FLdPr Me
  loc_C5A372: MemLdRfVar from_stack_1.global_60
  loc_C5A375: LdPrVar
  loc_C5A377: LateMemCall
  loc_C5A37D: LitVarStr var_9C, "       <td class=""Encabezado1"">Estado:</td>"
  loc_C5A382: PopAdLdVar
  loc_C5A383: FLdPr Me
  loc_C5A386: MemLdRfVar from_stack_1.global_60
  loc_C5A389: LdPrVar
  loc_C5A38B: LateMemCall
  loc_C5A391: LitStr "        <td class=""Normal1"">"
  loc_C5A394: FMemLdR4 var_8C(32)
  loc_C5A399: ConcatStr
  loc_C5A39A: FStStrNoPop var_F0
  loc_C5A39D: LitStr "</td>"
  loc_C5A3A0: ConcatStr
  loc_C5A3A1: CVarStr var_BC
  loc_C5A3A4: PopAdLdVar
  loc_C5A3A5: FLdPr Me
  loc_C5A3A8: MemLdRfVar from_stack_1.global_60
  loc_C5A3AB: LdPrVar
  loc_C5A3AD: LateMemCall
  loc_C5A3B3: FFree1Str var_F0
  loc_C5A3B6: FFree1Var var_BC = ""
  loc_C5A3B9: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A3BE: PopAdLdVar
  loc_C5A3BF: FLdPr Me
  loc_C5A3C2: MemLdRfVar from_stack_1.global_60
  loc_C5A3C5: LdPrVar
  loc_C5A3C7: LateMemCall
  loc_C5A3CD: LitVarStr var_9C, "        <td class=""Encabezado1"">Fecha Estado:</td>"
  loc_C5A3D2: PopAdLdVar
  loc_C5A3D3: FLdPr Me
  loc_C5A3D6: MemLdRfVar from_stack_1.global_60
  loc_C5A3D9: LdPrVar
  loc_C5A3DB: LateMemCall
  loc_C5A3E1: LitStr "        <td class=""Normal1"">"
  loc_C5A3E4: FMemLdR4 var_8C(36)
  loc_C5A3E9: ConcatStr
  loc_C5A3EA: FStStrNoPop var_F0
  loc_C5A3ED: LitStr "</td>"
  loc_C5A3F0: ConcatStr
  loc_C5A3F1: CVarStr var_BC
  loc_C5A3F4: PopAdLdVar
  loc_C5A3F5: FLdPr Me
  loc_C5A3F8: MemLdRfVar from_stack_1.global_60
  loc_C5A3FB: LdPrVar
  loc_C5A3FD: LateMemCall
  loc_C5A403: FFree1Str var_F0
  loc_C5A406: FFree1Var var_BC = ""
  loc_C5A409: LitVarStr var_9C, "      </tr>"
  loc_C5A40E: PopAdLdVar
  loc_C5A40F: FLdPr Me
  loc_C5A412: MemLdRfVar from_stack_1.global_60
  loc_C5A415: LdPrVar
  loc_C5A417: LateMemCall
  loc_C5A41D: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A422: PopAdLdVar
  loc_C5A423: FLdPr Me
  loc_C5A426: MemLdRfVar from_stack_1.global_60
  loc_C5A429: LdPrVar
  loc_C5A42B: LateMemCall
  loc_C5A431: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />UBICACIÓN DEL COMERCIO</td>"
  loc_C5A436: PopAdLdVar
  loc_C5A437: FLdPr Me
  loc_C5A43A: MemLdRfVar from_stack_1.global_60
  loc_C5A43D: LdPrVar
  loc_C5A43F: LateMemCall
  loc_C5A445: LitVarStr var_9C, "      </tr>"
  loc_C5A44A: PopAdLdVar
  loc_C5A44B: FLdPr Me
  loc_C5A44E: MemLdRfVar from_stack_1.global_60
  loc_C5A451: LdPrVar
  loc_C5A453: LateMemCall
  loc_C5A459: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A45E: PopAdLdVar
  loc_C5A45F: FLdPr Me
  loc_C5A462: MemLdRfVar from_stack_1.global_60
  loc_C5A465: LdPrVar
  loc_C5A467: LateMemCall
  loc_C5A46D: LitVarStr var_9C, "       <td class=""Encabezado1"">Calle:</td>"
  loc_C5A472: PopAdLdVar
  loc_C5A473: FLdPr Me
  loc_C5A476: MemLdRfVar from_stack_1.global_60
  loc_C5A479: LdPrVar
  loc_C5A47B: LateMemCall
  loc_C5A481: LitStr "        <td class=""Normal1"">"
  loc_C5A484: FMemLdR4 var_8C(40)
  loc_C5A489: ConcatStr
  loc_C5A48A: FStStrNoPop var_F0
  loc_C5A48D: LitStr " "
  loc_C5A490: ConcatStr
  loc_C5A491: FStStrNoPop var_F4
  loc_C5A494: FMemLdR4 var_8C(44)
  loc_C5A499: ConcatStr
  loc_C5A49A: FStStrNoPop var_F8
  loc_C5A49D: LitStr "</td>"
  loc_C5A4A0: ConcatStr
  loc_C5A4A1: CVarStr var_BC
  loc_C5A4A4: PopAdLdVar
  loc_C5A4A5: FLdPr Me
  loc_C5A4A8: MemLdRfVar from_stack_1.global_60
  loc_C5A4AB: LdPrVar
  loc_C5A4AD: LateMemCall
  loc_C5A4B3: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5A4BC: FFree1Var var_BC = ""
  loc_C5A4BF: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A4C4: PopAdLdVar
  loc_C5A4C5: FLdPr Me
  loc_C5A4C8: MemLdRfVar from_stack_1.global_60
  loc_C5A4CB: LdPrVar
  loc_C5A4CD: LateMemCall
  loc_C5A4D3: LitVarStr var_9C, "        <td class=""Encabezado1"">Número:</td>"
  loc_C5A4D8: PopAdLdVar
  loc_C5A4D9: FLdPr Me
  loc_C5A4DC: MemLdRfVar from_stack_1.global_60
  loc_C5A4DF: LdPrVar
  loc_C5A4E1: LateMemCall
  loc_C5A4E7: LitStr "        <td class=""Normal1"">"
  loc_C5A4EA: FMemLdR4 var_8C(48)
  loc_C5A4EF: ConcatStr
  loc_C5A4F0: FStStrNoPop var_F0
  loc_C5A4F3: LitStr "</td>"
  loc_C5A4F6: ConcatStr
  loc_C5A4F7: CVarStr var_BC
  loc_C5A4FA: PopAdLdVar
  loc_C5A4FB: FLdPr Me
  loc_C5A4FE: MemLdRfVar from_stack_1.global_60
  loc_C5A501: LdPrVar
  loc_C5A503: LateMemCall
  loc_C5A509: FFree1Str var_F0
  loc_C5A50C: FFree1Var var_BC = ""
  loc_C5A50F: LitVarStr var_9C, "      </tr>"
  loc_C5A514: PopAdLdVar
  loc_C5A515: FLdPr Me
  loc_C5A518: MemLdRfVar from_stack_1.global_60
  loc_C5A51B: LdPrVar
  loc_C5A51D: LateMemCall
  loc_C5A523: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A528: PopAdLdVar
  loc_C5A529: FLdPr Me
  loc_C5A52C: MemLdRfVar from_stack_1.global_60
  loc_C5A52F: LdPrVar
  loc_C5A531: LateMemCall
  loc_C5A537: LitVarStr var_9C, "       <td class=""Encabezado1"">Barrio:</td>"
  loc_C5A53C: PopAdLdVar
  loc_C5A53D: FLdPr Me
  loc_C5A540: MemLdRfVar from_stack_1.global_60
  loc_C5A543: LdPrVar
  loc_C5A545: LateMemCall
  loc_C5A54B: LitStr "        <td class=""Normal1"">"
  loc_C5A54E: FMemLdR4 var_8C(56)
  loc_C5A553: ConcatStr
  loc_C5A554: FStStrNoPop var_F0
  loc_C5A557: LitStr " "
  loc_C5A55A: ConcatStr
  loc_C5A55B: FStStrNoPop var_F4
  loc_C5A55E: FMemLdR4 var_8C(60)
  loc_C5A563: ConcatStr
  loc_C5A564: FStStrNoPop var_F8
  loc_C5A567: LitStr "</td>"
  loc_C5A56A: ConcatStr
  loc_C5A56B: CVarStr var_BC
  loc_C5A56E: PopAdLdVar
  loc_C5A56F: FLdPr Me
  loc_C5A572: MemLdRfVar from_stack_1.global_60
  loc_C5A575: LdPrVar
  loc_C5A577: LateMemCall
  loc_C5A57D: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5A586: FFree1Var var_BC = ""
  loc_C5A589: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A58E: PopAdLdVar
  loc_C5A58F: FLdPr Me
  loc_C5A592: MemLdRfVar from_stack_1.global_60
  loc_C5A595: LdPrVar
  loc_C5A597: LateMemCall
  loc_C5A59D: LitVarStr var_9C, "        <td class=""Encabezado1"">Manzana/Casa:</td>"
  loc_C5A5A2: PopAdLdVar
  loc_C5A5A3: FLdPr Me
  loc_C5A5A6: MemLdRfVar from_stack_1.global_60
  loc_C5A5A9: LdPrVar
  loc_C5A5AB: LateMemCall
  loc_C5A5B1: LitStr "        <td class=""Normal1"">"
  loc_C5A5B4: FMemLdR4 var_8C(64)
  loc_C5A5B9: ConcatStr
  loc_C5A5BA: FStStrNoPop var_F0
  loc_C5A5BD: LitStr "/"
  loc_C5A5C0: ConcatStr
  loc_C5A5C1: FStStrNoPop var_F4
  loc_C5A5C4: FMemLdR4 var_8C(72)
  loc_C5A5C9: ConcatStr
  loc_C5A5CA: FStStrNoPop var_F8
  loc_C5A5CD: LitStr "</td>"
  loc_C5A5D0: ConcatStr
  loc_C5A5D1: CVarStr var_BC
  loc_C5A5D4: PopAdLdVar
  loc_C5A5D5: FLdPr Me
  loc_C5A5D8: MemLdRfVar from_stack_1.global_60
  loc_C5A5DB: LdPrVar
  loc_C5A5DD: LateMemCall
  loc_C5A5E3: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5A5EC: FFree1Var var_BC = ""
  loc_C5A5EF: LitVarStr var_9C, "      </tr>"
  loc_C5A5F4: PopAdLdVar
  loc_C5A5F5: FLdPr Me
  loc_C5A5F8: MemLdRfVar from_stack_1.global_60
  loc_C5A5FB: LdPrVar
  loc_C5A5FD: LateMemCall
  loc_C5A603: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A608: PopAdLdVar
  loc_C5A609: FLdPr Me
  loc_C5A60C: MemLdRfVar from_stack_1.global_60
  loc_C5A60F: LdPrVar
  loc_C5A611: LateMemCall
  loc_C5A617: LitVarStr var_9C, "       <td class=""Encabezado1"">Ubicaci&oacute;n:</td>"
  loc_C5A61C: PopAdLdVar
  loc_C5A61D: FLdPr Me
  loc_C5A620: MemLdRfVar from_stack_1.global_60
  loc_C5A623: LdPrVar
  loc_C5A625: LateMemCall
  loc_C5A62B: LitStr "        <td class=""Normal1"" colspan=""4"">"
  loc_C5A62E: FMemLdR4 var_8C(84)
  loc_C5A633: ConcatStr
  loc_C5A634: FStStrNoPop var_F0
  loc_C5A637: LitStr "</td>"
  loc_C5A63A: ConcatStr
  loc_C5A63B: CVarStr var_BC
  loc_C5A63E: PopAdLdVar
  loc_C5A63F: FLdPr Me
  loc_C5A642: MemLdRfVar from_stack_1.global_60
  loc_C5A645: LdPrVar
  loc_C5A647: LateMemCall
  loc_C5A64D: FFree1Str var_F0
  loc_C5A650: FFree1Var var_BC = ""
  loc_C5A653: LitVarStr var_9C, "      </tr>"
  loc_C5A658: PopAdLdVar
  loc_C5A659: FLdPr Me
  loc_C5A65C: MemLdRfVar from_stack_1.global_60
  loc_C5A65F: LdPrVar
  loc_C5A661: LateMemCall
  loc_C5A667: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A66C: PopAdLdVar
  loc_C5A66D: FLdPr Me
  loc_C5A670: MemLdRfVar from_stack_1.global_60
  loc_C5A673: LdPrVar
  loc_C5A675: LateMemCall
  loc_C5A67B: LitVarStr var_9C, "       <td class=""Encabezado1"">Localidad:</td>"
  loc_C5A680: PopAdLdVar
  loc_C5A681: FLdPr Me
  loc_C5A684: MemLdRfVar from_stack_1.global_60
  loc_C5A687: LdPrVar
  loc_C5A689: LateMemCall
  loc_C5A68F: LitStr "        <td class=""Normal1"">"
  loc_C5A692: FMemLdR4 var_8C(92)
  loc_C5A697: ConcatStr
  loc_C5A698: FStStrNoPop var_F0
  loc_C5A69B: LitStr " "
  loc_C5A69E: ConcatStr
  loc_C5A69F: FStStrNoPop var_F4
  loc_C5A6A2: FMemLdR4 var_8C(96)
  loc_C5A6A7: ConcatStr
  loc_C5A6A8: FStStrNoPop var_F8
  loc_C5A6AB: LitStr "</td>"
  loc_C5A6AE: ConcatStr
  loc_C5A6AF: CVarStr var_BC
  loc_C5A6B2: PopAdLdVar
  loc_C5A6B3: FLdPr Me
  loc_C5A6B6: MemLdRfVar from_stack_1.global_60
  loc_C5A6B9: LdPrVar
  loc_C5A6BB: LateMemCall
  loc_C5A6C1: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5A6CA: FFree1Var var_BC = ""
  loc_C5A6CD: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A6D2: PopAdLdVar
  loc_C5A6D3: FLdPr Me
  loc_C5A6D6: MemLdRfVar from_stack_1.global_60
  loc_C5A6D9: LdPrVar
  loc_C5A6DB: LateMemCall
  loc_C5A6E1: LitVarStr var_9C, "        <td class=""Encabezado1"">C&oacute;d. Postal:</td>"
  loc_C5A6E6: PopAdLdVar
  loc_C5A6E7: FLdPr Me
  loc_C5A6EA: MemLdRfVar from_stack_1.global_60
  loc_C5A6ED: LdPrVar
  loc_C5A6EF: LateMemCall
  loc_C5A6F5: LitStr "        <td class=""Normal1"">"
  loc_C5A6F8: FMemLdR4 var_8C(100)
  loc_C5A6FD: ConcatStr
  loc_C5A6FE: FStStrNoPop var_F0
  loc_C5A701: LitStr "</td>"
  loc_C5A704: ConcatStr
  loc_C5A705: CVarStr var_BC
  loc_C5A708: PopAdLdVar
  loc_C5A709: FLdPr Me
  loc_C5A70C: MemLdRfVar from_stack_1.global_60
  loc_C5A70F: LdPrVar
  loc_C5A711: LateMemCall
  loc_C5A717: FFree1Str var_F0
  loc_C5A71A: FFree1Var var_BC = ""
  loc_C5A71D: LitVarStr var_9C, "      </tr>"
  loc_C5A722: PopAdLdVar
  loc_C5A723: FLdPr Me
  loc_C5A726: MemLdRfVar from_stack_1.global_60
  loc_C5A729: LdPrVar
  loc_C5A72B: LateMemCall
  loc_C5A731: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A736: PopAdLdVar
  loc_C5A737: FLdPr Me
  loc_C5A73A: MemLdRfVar from_stack_1.global_60
  loc_C5A73D: LdPrVar
  loc_C5A73F: LateMemCall
  loc_C5A745: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />DOMICILIO POSTAL</td>"
  loc_C5A74A: PopAdLdVar
  loc_C5A74B: FLdPr Me
  loc_C5A74E: MemLdRfVar from_stack_1.global_60
  loc_C5A751: LdPrVar
  loc_C5A753: LateMemCall
  loc_C5A759: LitVarStr var_9C, "      </tr>"
  loc_C5A75E: PopAdLdVar
  loc_C5A75F: FLdPr Me
  loc_C5A762: MemLdRfVar from_stack_1.global_60
  loc_C5A765: LdPrVar
  loc_C5A767: LateMemCall
  loc_C5A76D: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A772: PopAdLdVar
  loc_C5A773: FLdPr Me
  loc_C5A776: MemLdRfVar from_stack_1.global_60
  loc_C5A779: LdPrVar
  loc_C5A77B: LateMemCall
  loc_C5A781: LitVarStr var_9C, "       <td class=""Encabezado1"">Calle:</td>"
  loc_C5A786: PopAdLdVar
  loc_C5A787: FLdPr Me
  loc_C5A78A: MemLdRfVar from_stack_1.global_60
  loc_C5A78D: LdPrVar
  loc_C5A78F: LateMemCall
  loc_C5A795: LitStr "        <td class=""Normal1"">"
  loc_C5A798: FMemLdR4 var_8C(108)
  loc_C5A79D: ConcatStr
  loc_C5A79E: FStStrNoPop var_F0
  loc_C5A7A1: LitStr " "
  loc_C5A7A4: ConcatStr
  loc_C5A7A5: FStStrNoPop var_F4
  loc_C5A7A8: FMemLdR4 var_8C(112)
  loc_C5A7AD: ConcatStr
  loc_C5A7AE: FStStrNoPop var_F8
  loc_C5A7B1: LitStr "</td>"
  loc_C5A7B4: ConcatStr
  loc_C5A7B5: CVarStr var_BC
  loc_C5A7B8: PopAdLdVar
  loc_C5A7B9: FLdPr Me
  loc_C5A7BC: MemLdRfVar from_stack_1.global_60
  loc_C5A7BF: LdPrVar
  loc_C5A7C1: LateMemCall
  loc_C5A7C7: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5A7D0: FFree1Var var_BC = ""
  loc_C5A7D3: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A7D8: PopAdLdVar
  loc_C5A7D9: FLdPr Me
  loc_C5A7DC: MemLdRfVar from_stack_1.global_60
  loc_C5A7DF: LdPrVar
  loc_C5A7E1: LateMemCall
  loc_C5A7E7: LitVarStr var_9C, "        <td class=""Encabezado1"">Número:</td>"
  loc_C5A7EC: PopAdLdVar
  loc_C5A7ED: FLdPr Me
  loc_C5A7F0: MemLdRfVar from_stack_1.global_60
  loc_C5A7F3: LdPrVar
  loc_C5A7F5: LateMemCall
  loc_C5A7FB: LitStr "        <td class=""Normal1"">"
  loc_C5A7FE: FMemLdR4 var_8C(116)
  loc_C5A803: ConcatStr
  loc_C5A804: FStStrNoPop var_F0
  loc_C5A807: LitStr "</td>"
  loc_C5A80A: ConcatStr
  loc_C5A80B: CVarStr var_BC
  loc_C5A80E: PopAdLdVar
  loc_C5A80F: FLdPr Me
  loc_C5A812: MemLdRfVar from_stack_1.global_60
  loc_C5A815: LdPrVar
  loc_C5A817: LateMemCall
  loc_C5A81D: FFree1Str var_F0
  loc_C5A820: FFree1Var var_BC = ""
  loc_C5A823: LitVarStr var_9C, "      </tr>"
  loc_C5A828: PopAdLdVar
  loc_C5A829: FLdPr Me
  loc_C5A82C: MemLdRfVar from_stack_1.global_60
  loc_C5A82F: LdPrVar
  loc_C5A831: LateMemCall
  loc_C5A837: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A83C: PopAdLdVar
  loc_C5A83D: FLdPr Me
  loc_C5A840: MemLdRfVar from_stack_1.global_60
  loc_C5A843: LdPrVar
  loc_C5A845: LateMemCall
  loc_C5A84B: LitVarStr var_9C, "       <td class=""Encabezado1"">Barrio:</td>"
  loc_C5A850: PopAdLdVar
  loc_C5A851: FLdPr Me
  loc_C5A854: MemLdRfVar from_stack_1.global_60
  loc_C5A857: LdPrVar
  loc_C5A859: LateMemCall
  loc_C5A85F: LitStr "        <td class=""Normal1"">"
  loc_C5A862: FMemLdR4 var_8C(148)
  loc_C5A867: ConcatStr
  loc_C5A868: FStStrNoPop var_F0
  loc_C5A86B: LitStr " "
  loc_C5A86E: ConcatStr
  loc_C5A86F: FStStrNoPop var_F4
  loc_C5A872: FMemLdR4 var_8C(152)
  loc_C5A877: ConcatStr
  loc_C5A878: FStStrNoPop var_F8
  loc_C5A87B: LitStr "</td>"
  loc_C5A87E: ConcatStr
  loc_C5A87F: CVarStr var_BC
  loc_C5A882: PopAdLdVar
  loc_C5A883: FLdPr Me
  loc_C5A886: MemLdRfVar from_stack_1.global_60
  loc_C5A889: LdPrVar
  loc_C5A88B: LateMemCall
  loc_C5A891: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5A89A: FFree1Var var_BC = ""
  loc_C5A89D: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A8A2: PopAdLdVar
  loc_C5A8A3: FLdPr Me
  loc_C5A8A6: MemLdRfVar from_stack_1.global_60
  loc_C5A8A9: LdPrVar
  loc_C5A8AB: LateMemCall
  loc_C5A8B1: LitVarStr var_9C, "        <td class=""Encabezado1"">Manzana/Casa:</td>"
  loc_C5A8B6: PopAdLdVar
  loc_C5A8B7: FLdPr Me
  loc_C5A8BA: MemLdRfVar from_stack_1.global_60
  loc_C5A8BD: LdPrVar
  loc_C5A8BF: LateMemCall
  loc_C5A8C5: LitStr "        <td class=""Normal1"">"
  loc_C5A8C8: FMemLdR4 var_8C(156)
  loc_C5A8CD: ConcatStr
  loc_C5A8CE: FStStrNoPop var_F0
  loc_C5A8D1: LitStr "/"
  loc_C5A8D4: ConcatStr
  loc_C5A8D5: FStStrNoPop var_F4
  loc_C5A8D8: FMemLdR4 var_8C(164)
  loc_C5A8DD: ConcatStr
  loc_C5A8DE: FStStrNoPop var_F8
  loc_C5A8E1: LitStr "</td>"
  loc_C5A8E4: ConcatStr
  loc_C5A8E5: CVarStr var_BC
  loc_C5A8E8: PopAdLdVar
  loc_C5A8E9: FLdPr Me
  loc_C5A8EC: MemLdRfVar from_stack_1.global_60
  loc_C5A8EF: LdPrVar
  loc_C5A8F1: LateMemCall
  loc_C5A8F7: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5A900: FFree1Var var_BC = ""
  loc_C5A903: LitVarStr var_9C, "      </tr>"
  loc_C5A908: PopAdLdVar
  loc_C5A909: FLdPr Me
  loc_C5A90C: MemLdRfVar from_stack_1.global_60
  loc_C5A90F: LdPrVar
  loc_C5A911: LateMemCall
  loc_C5A917: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A91C: PopAdLdVar
  loc_C5A91D: FLdPr Me
  loc_C5A920: MemLdRfVar from_stack_1.global_60
  loc_C5A923: LdPrVar
  loc_C5A925: LateMemCall
  loc_C5A92B: LitVarStr var_9C, "       <td class=""Encabezado1"">Piso:</td>"
  loc_C5A930: PopAdLdVar
  loc_C5A931: FLdPr Me
  loc_C5A934: MemLdRfVar from_stack_1.global_60
  loc_C5A937: LdPrVar
  loc_C5A939: LateMemCall
  loc_C5A93F: LitStr "        <td class=""Normal1"">"
  loc_C5A942: FMemLdR4 var_8C(128)
  loc_C5A947: ConcatStr
  loc_C5A948: FStStrNoPop var_F0
  loc_C5A94B: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_C5A94E: ConcatStr
  loc_C5A94F: FStStrNoPop var_F4
  loc_C5A952: LitStr "<strong>Dpto: </strong> "
  loc_C5A955: ConcatStr
  loc_C5A956: FStStrNoPop var_F8
  loc_C5A959: LitStr "&nbsp;"
  loc_C5A95C: ConcatStr
  loc_C5A95D: FStStrNoPop var_FC
  loc_C5A960: FMemLdR4 var_8C(136)
  loc_C5A965: ConcatStr
  loc_C5A966: FStStrNoPop var_100
  loc_C5A969: LitStr "</td>"
  loc_C5A96C: ConcatStr
  loc_C5A96D: CVarStr var_BC
  loc_C5A970: PopAdLdVar
  loc_C5A971: FLdPr Me
  loc_C5A974: MemLdRfVar from_stack_1.global_60
  loc_C5A977: LdPrVar
  loc_C5A979: LateMemCall
  loc_C5A97F: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C5A98C: FFree1Var var_BC = ""
  loc_C5A98F: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5A994: PopAdLdVar
  loc_C5A995: FLdPr Me
  loc_C5A998: MemLdRfVar from_stack_1.global_60
  loc_C5A99B: LdPrVar
  loc_C5A99D: LateMemCall
  loc_C5A9A3: LitVarStr var_9C, "        <td class=""Encabezado1"">Monoblock:</td>"
  loc_C5A9A8: PopAdLdVar
  loc_C5A9A9: FLdPr Me
  loc_C5A9AC: MemLdRfVar from_stack_1.global_60
  loc_C5A9AF: LdPrVar
  loc_C5A9B1: LateMemCall
  loc_C5A9B7: LitStr "        <td class=""Normal1"">"
  loc_C5A9BA: FMemLdR4 var_8C(144)
  loc_C5A9BF: ConcatStr
  loc_C5A9C0: FStStrNoPop var_F0
  loc_C5A9C3: LitStr "</td>"
  loc_C5A9C6: ConcatStr
  loc_C5A9C7: CVarStr var_BC
  loc_C5A9CA: PopAdLdVar
  loc_C5A9CB: FLdPr Me
  loc_C5A9CE: MemLdRfVar from_stack_1.global_60
  loc_C5A9D1: LdPrVar
  loc_C5A9D3: LateMemCall
  loc_C5A9D9: FFree1Str var_F0
  loc_C5A9DC: FFree1Var var_BC = ""
  loc_C5A9DF: LitVarStr var_9C, "      </tr>"
  loc_C5A9E4: PopAdLdVar
  loc_C5A9E5: FLdPr Me
  loc_C5A9E8: MemLdRfVar from_stack_1.global_60
  loc_C5A9EB: LdPrVar
  loc_C5A9ED: LateMemCall
  loc_C5A9F3: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5A9F8: PopAdLdVar
  loc_C5A9F9: FLdPr Me
  loc_C5A9FC: MemLdRfVar from_stack_1.global_60
  loc_C5A9FF: LdPrVar
  loc_C5AA01: LateMemCall
  loc_C5AA07: LitVarStr var_9C, "       <td class=""Encabezado1"">Ubicaci&oacute;n:</td>"
  loc_C5AA0C: PopAdLdVar
  loc_C5AA0D: FLdPr Me
  loc_C5AA10: MemLdRfVar from_stack_1.global_60
  loc_C5AA13: LdPrVar
  loc_C5AA15: LateMemCall
  loc_C5AA1B: LitStr "        <td class=""Normal1"" colspan=""4"">"
  loc_C5AA1E: FMemLdR4 var_8C(176)
  loc_C5AA23: ConcatStr
  loc_C5AA24: FStStrNoPop var_F0
  loc_C5AA27: LitStr "</td>"
  loc_C5AA2A: ConcatStr
  loc_C5AA2B: CVarStr var_BC
  loc_C5AA2E: PopAdLdVar
  loc_C5AA2F: FLdPr Me
  loc_C5AA32: MemLdRfVar from_stack_1.global_60
  loc_C5AA35: LdPrVar
  loc_C5AA37: LateMemCall
  loc_C5AA3D: FFree1Str var_F0
  loc_C5AA40: FFree1Var var_BC = ""
  loc_C5AA43: LitVarStr var_9C, "      </tr>"
  loc_C5AA48: PopAdLdVar
  loc_C5AA49: FLdPr Me
  loc_C5AA4C: MemLdRfVar from_stack_1.global_60
  loc_C5AA4F: LdPrVar
  loc_C5AA51: LateMemCall
  loc_C5AA57: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5AA5C: PopAdLdVar
  loc_C5AA5D: FLdPr Me
  loc_C5AA60: MemLdRfVar from_stack_1.global_60
  loc_C5AA63: LdPrVar
  loc_C5AA65: LateMemCall
  loc_C5AA6B: LitVarStr var_9C, "       <td class=""Encabezado1"">Localidad:</td>"
  loc_C5AA70: PopAdLdVar
  loc_C5AA71: FLdPr Me
  loc_C5AA74: MemLdRfVar from_stack_1.global_60
  loc_C5AA77: LdPrVar
  loc_C5AA79: LateMemCall
  loc_C5AA7F: LitStr "        <td class=""Normal1"">"
  loc_C5AA82: FMemLdR4 var_8C(184)
  loc_C5AA87: ConcatStr
  loc_C5AA88: FStStrNoPop var_F0
  loc_C5AA8B: LitStr " "
  loc_C5AA8E: ConcatStr
  loc_C5AA8F: FStStrNoPop var_F4
  loc_C5AA92: FMemLdR4 var_8C(188)
  loc_C5AA97: ConcatStr
  loc_C5AA98: FStStrNoPop var_F8
  loc_C5AA9B: LitStr "</td>"
  loc_C5AA9E: ConcatStr
  loc_C5AA9F: CVarStr var_BC
  loc_C5AAA2: PopAdLdVar
  loc_C5AAA3: FLdPr Me
  loc_C5AAA6: MemLdRfVar from_stack_1.global_60
  loc_C5AAA9: LdPrVar
  loc_C5AAAB: LateMemCall
  loc_C5AAB1: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5AABA: FFree1Var var_BC = ""
  loc_C5AABD: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5AAC2: PopAdLdVar
  loc_C5AAC3: FLdPr Me
  loc_C5AAC6: MemLdRfVar from_stack_1.global_60
  loc_C5AAC9: LdPrVar
  loc_C5AACB: LateMemCall
  loc_C5AAD1: LitVarStr var_9C, "        <td class=""Encabezado1"">C&oacute;d. Postal:</td>"
  loc_C5AAD6: PopAdLdVar
  loc_C5AAD7: FLdPr Me
  loc_C5AADA: MemLdRfVar from_stack_1.global_60
  loc_C5AADD: LdPrVar
  loc_C5AADF: LateMemCall
  loc_C5AAE5: LitStr "        <td class=""Normal1"">"
  loc_C5AAE8: FMemLdR4 var_8C(192)
  loc_C5AAED: ConcatStr
  loc_C5AAEE: FStStrNoPop var_F0
  loc_C5AAF1: LitStr "</td>"
  loc_C5AAF4: ConcatStr
  loc_C5AAF5: CVarStr var_BC
  loc_C5AAF8: PopAdLdVar
  loc_C5AAF9: FLdPr Me
  loc_C5AAFC: MemLdRfVar from_stack_1.global_60
  loc_C5AAFF: LdPrVar
  loc_C5AB01: LateMemCall
  loc_C5AB07: FFree1Str var_F0
  loc_C5AB0A: FFree1Var var_BC = ""
  loc_C5AB0D: LitVarStr var_9C, "      </tr>"
  loc_C5AB12: PopAdLdVar
  loc_C5AB13: FLdPr Me
  loc_C5AB16: MemLdRfVar from_stack_1.global_60
  loc_C5AB19: LdPrVar
  loc_C5AB1B: LateMemCall
  loc_C5AB21: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5AB26: PopAdLdVar
  loc_C5AB27: FLdPr Me
  loc_C5AB2A: MemLdRfVar from_stack_1.global_60
  loc_C5AB2D: LdPrVar
  loc_C5AB2F: LateMemCall
  loc_C5AB35: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />DATOS DEL COMERCIO</td>"
  loc_C5AB3A: PopAdLdVar
  loc_C5AB3B: FLdPr Me
  loc_C5AB3E: MemLdRfVar from_stack_1.global_60
  loc_C5AB41: LdPrVar
  loc_C5AB43: LateMemCall
  loc_C5AB49: LitVarStr var_9C, "      </tr>"
  loc_C5AB4E: PopAdLdVar
  loc_C5AB4F: FLdPr Me
  loc_C5AB52: MemLdRfVar from_stack_1.global_60
  loc_C5AB55: LdPrVar
  loc_C5AB57: LateMemCall
  loc_C5AB5D: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5AB62: PopAdLdVar
  loc_C5AB63: FLdPr Me
  loc_C5AB66: MemLdRfVar from_stack_1.global_60
  loc_C5AB69: LdPrVar
  loc_C5AB6B: LateMemCall
  loc_C5AB71: LitVarStr var_9C, "       <td class=""Encabezado1"">Fecha de Apertura:</td>"
  loc_C5AB76: PopAdLdVar
  loc_C5AB77: FLdPr Me
  loc_C5AB7A: MemLdRfVar from_stack_1.global_60
  loc_C5AB7D: LdPrVar
  loc_C5AB7F: LateMemCall
  loc_C5AB85: LitStr "        <td class=""Normal1"">"
  loc_C5AB88: FMemLdR4 var_8C(200)
  loc_C5AB8D: ConcatStr
  loc_C5AB8E: FStStrNoPop var_F0
  loc_C5AB91: LitStr "</td>"
  loc_C5AB94: ConcatStr
  loc_C5AB95: CVarStr var_BC
  loc_C5AB98: PopAdLdVar
  loc_C5AB99: FLdPr Me
  loc_C5AB9C: MemLdRfVar from_stack_1.global_60
  loc_C5AB9F: LdPrVar
  loc_C5ABA1: LateMemCall
  loc_C5ABA7: FFree1Str var_F0
  loc_C5ABAA: FFree1Var var_BC = ""
  loc_C5ABAD: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5ABB2: PopAdLdVar
  loc_C5ABB3: FLdPr Me
  loc_C5ABB6: MemLdRfVar from_stack_1.global_60
  loc_C5ABB9: LdPrVar
  loc_C5ABBB: LateMemCall
  loc_C5ABC1: LitVarStr var_9C, "        <td class=""Encabezado1"">Expediente:</td>"
  loc_C5ABC6: PopAdLdVar
  loc_C5ABC7: FLdPr Me
  loc_C5ABCA: MemLdRfVar from_stack_1.global_60
  loc_C5ABCD: LdPrVar
  loc_C5ABCF: LateMemCall
  loc_C5ABD5: LitStr "        <td class=""Normal1"">"
  loc_C5ABD8: FMemLdR4 var_8C(204)
  loc_C5ABDD: ConcatStr
  loc_C5ABDE: FStStrNoPop var_F0
  loc_C5ABE1: LitStr "</td>"
  loc_C5ABE4: ConcatStr
  loc_C5ABE5: CVarStr var_BC
  loc_C5ABE8: PopAdLdVar
  loc_C5ABE9: FLdPr Me
  loc_C5ABEC: MemLdRfVar from_stack_1.global_60
  loc_C5ABEF: LdPrVar
  loc_C5ABF1: LateMemCall
  loc_C5ABF7: FFree1Str var_F0
  loc_C5ABFA: FFree1Var var_BC = ""
  loc_C5ABFD: LitVarStr var_9C, "      </tr>"
  loc_C5AC02: PopAdLdVar
  loc_C5AC03: FLdPr Me
  loc_C5AC06: MemLdRfVar from_stack_1.global_60
  loc_C5AC09: LdPrVar
  loc_C5AC0B: LateMemCall
  loc_C5AC11: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5AC16: PopAdLdVar
  loc_C5AC17: FLdPr Me
  loc_C5AC1A: MemLdRfVar from_stack_1.global_60
  loc_C5AC1D: LdPrVar
  loc_C5AC1F: LateMemCall
  loc_C5AC25: LitVarStr var_9C, "       <td class=""Encabezado1"">Fecha de Baja:</td>"
  loc_C5AC2A: PopAdLdVar
  loc_C5AC2B: FLdPr Me
  loc_C5AC2E: MemLdRfVar from_stack_1.global_60
  loc_C5AC31: LdPrVar
  loc_C5AC33: LateMemCall
  loc_C5AC39: LitStr "        <td class=""Normal1"">"
  loc_C5AC3C: FMemLdR4 var_8C(208)
  loc_C5AC41: ConcatStr
  loc_C5AC42: FStStrNoPop var_F0
  loc_C5AC45: LitStr "</td>"
  loc_C5AC48: ConcatStr
  loc_C5AC49: CVarStr var_BC
  loc_C5AC4C: PopAdLdVar
  loc_C5AC4D: FLdPr Me
  loc_C5AC50: MemLdRfVar from_stack_1.global_60
  loc_C5AC53: LdPrVar
  loc_C5AC55: LateMemCall
  loc_C5AC5B: FFree1Str var_F0
  loc_C5AC5E: FFree1Var var_BC = ""
  loc_C5AC61: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5AC66: PopAdLdVar
  loc_C5AC67: FLdPr Me
  loc_C5AC6A: MemLdRfVar from_stack_1.global_60
  loc_C5AC6D: LdPrVar
  loc_C5AC6F: LateMemCall
  loc_C5AC75: LitVarStr var_9C, "        <td class=""Encabezado1"">Expediente:</td>"
  loc_C5AC7A: PopAdLdVar
  loc_C5AC7B: FLdPr Me
  loc_C5AC7E: MemLdRfVar from_stack_1.global_60
  loc_C5AC81: LdPrVar
  loc_C5AC83: LateMemCall
  loc_C5AC89: LitStr "        <td class=""Normal1"">"
  loc_C5AC8C: FMemLdR4 var_8C(212)
  loc_C5AC91: ConcatStr
  loc_C5AC92: FStStrNoPop var_F0
  loc_C5AC95: LitStr "</td>"
  loc_C5AC98: ConcatStr
  loc_C5AC99: CVarStr var_BC
  loc_C5AC9C: PopAdLdVar
  loc_C5AC9D: FLdPr Me
  loc_C5ACA0: MemLdRfVar from_stack_1.global_60
  loc_C5ACA3: LdPrVar
  loc_C5ACA5: LateMemCall
  loc_C5ACAB: FFree1Str var_F0
  loc_C5ACAE: FFree1Var var_BC = ""
  loc_C5ACB1: LitVarStr var_9C, "      </tr>"
  loc_C5ACB6: PopAdLdVar
  loc_C5ACB7: FLdPr Me
  loc_C5ACBA: MemLdRfVar from_stack_1.global_60
  loc_C5ACBD: LdPrVar
  loc_C5ACBF: LateMemCall
  loc_C5ACC5: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5ACCA: PopAdLdVar
  loc_C5ACCB: FLdPr Me
  loc_C5ACCE: MemLdRfVar from_stack_1.global_60
  loc_C5ACD1: LdPrVar
  loc_C5ACD3: LateMemCall
  loc_C5ACD9: LitVarStr var_9C, "       <td class=""Encabezado1"">Libro:</td>"
  loc_C5ACDE: PopAdLdVar
  loc_C5ACDF: FLdPr Me
  loc_C5ACE2: MemLdRfVar from_stack_1.global_60
  loc_C5ACE5: LdPrVar
  loc_C5ACE7: LateMemCall
  loc_C5ACED: LitStr "        <td class=""Normal1"">"
  loc_C5ACF0: FMemLdR4 var_8C(220)
  loc_C5ACF5: ConcatStr
  loc_C5ACF6: FStStrNoPop var_F0
  loc_C5ACF9: LitStr "</td>"
  loc_C5ACFC: ConcatStr
  loc_C5ACFD: CVarStr var_BC
  loc_C5AD00: PopAdLdVar
  loc_C5AD01: FLdPr Me
  loc_C5AD04: MemLdRfVar from_stack_1.global_60
  loc_C5AD07: LdPrVar
  loc_C5AD09: LateMemCall
  loc_C5AD0F: FFree1Str var_F0
  loc_C5AD12: FFree1Var var_BC = ""
  loc_C5AD15: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5AD1A: PopAdLdVar
  loc_C5AD1B: FLdPr Me
  loc_C5AD1E: MemLdRfVar from_stack_1.global_60
  loc_C5AD21: LdPrVar
  loc_C5AD23: LateMemCall
  loc_C5AD29: LitVarStr var_9C, "        <td class=""Encabezado1"">Clasificación:</td>"
  loc_C5AD2E: PopAdLdVar
  loc_C5AD2F: FLdPr Me
  loc_C5AD32: MemLdRfVar from_stack_1.global_60
  loc_C5AD35: LdPrVar
  loc_C5AD37: LateMemCall
  loc_C5AD3D: LitStr "        <td class=""Normal1"">"
  loc_C5AD40: FMemLdR4 var_8C(224)
  loc_C5AD45: ConcatStr
  loc_C5AD46: FStStrNoPop var_F0
  loc_C5AD49: LitStr "</td>"
  loc_C5AD4C: ConcatStr
  loc_C5AD4D: CVarStr var_BC
  loc_C5AD50: PopAdLdVar
  loc_C5AD51: FLdPr Me
  loc_C5AD54: MemLdRfVar from_stack_1.global_60
  loc_C5AD57: LdPrVar
  loc_C5AD59: LateMemCall
  loc_C5AD5F: FFree1Str var_F0
  loc_C5AD62: FFree1Var var_BC = ""
  loc_C5AD65: LitVarStr var_9C, "      </tr>"
  loc_C5AD6A: PopAdLdVar
  loc_C5AD6B: FLdPr Me
  loc_C5AD6E: MemLdRfVar from_stack_1.global_60
  loc_C5AD71: LdPrVar
  loc_C5AD73: LateMemCall
  loc_C5AD79: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5AD7E: PopAdLdVar
  loc_C5AD7F: FLdPr Me
  loc_C5AD82: MemLdRfVar from_stack_1.global_60
  loc_C5AD85: LdPrVar
  loc_C5AD87: LateMemCall
  loc_C5AD8D: LitVarStr var_9C, "       <td class=""Encabezado1"">Expediente:</td>"
  loc_C5AD92: PopAdLdVar
  loc_C5AD93: FLdPr Me
  loc_C5AD96: MemLdRfVar from_stack_1.global_60
  loc_C5AD99: LdPrVar
  loc_C5AD9B: LateMemCall
  loc_C5ADA1: LitStr "        <td class=""Normal1"">"
  loc_C5ADA4: FMemLdR4 var_8C(228)
  loc_C5ADA9: ConcatStr
  loc_C5ADAA: FStStrNoPop var_F0
  loc_C5ADAD: LitStr "</td>"
  loc_C5ADB0: ConcatStr
  loc_C5ADB1: CVarStr var_BC
  loc_C5ADB4: PopAdLdVar
  loc_C5ADB5: FLdPr Me
  loc_C5ADB8: MemLdRfVar from_stack_1.global_60
  loc_C5ADBB: LdPrVar
  loc_C5ADBD: LateMemCall
  loc_C5ADC3: FFree1Str var_F0
  loc_C5ADC6: FFree1Var var_BC = ""
  loc_C5ADC9: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5ADCE: PopAdLdVar
  loc_C5ADCF: FLdPr Me
  loc_C5ADD2: MemLdRfVar from_stack_1.global_60
  loc_C5ADD5: LdPrVar
  loc_C5ADD7: LateMemCall
  loc_C5ADDD: LitVarStr var_9C, "        <td class=""Encabezado1"">Resoluci&oacute;n N&deg;:</td>"
  loc_C5ADE2: PopAdLdVar
  loc_C5ADE3: FLdPr Me
  loc_C5ADE6: MemLdRfVar from_stack_1.global_60
  loc_C5ADE9: LdPrVar
  loc_C5ADEB: LateMemCall
  loc_C5ADF1: LitStr "        <td class=""Normal1"">"
  loc_C5ADF4: FMemLdR4 var_8C(232)
  loc_C5ADF9: ConcatStr
  loc_C5ADFA: FStStrNoPop var_F0
  loc_C5ADFD: LitStr "</td>"
  loc_C5AE00: ConcatStr
  loc_C5AE01: CVarStr var_BC
  loc_C5AE04: PopAdLdVar
  loc_C5AE05: FLdPr Me
  loc_C5AE08: MemLdRfVar from_stack_1.global_60
  loc_C5AE0B: LdPrVar
  loc_C5AE0D: LateMemCall
  loc_C5AE13: FFree1Str var_F0
  loc_C5AE16: FFree1Var var_BC = ""
  loc_C5AE19: LitVarStr var_9C, "      </tr>"
  loc_C5AE1E: PopAdLdVar
  loc_C5AE1F: FLdPr Me
  loc_C5AE22: MemLdRfVar from_stack_1.global_60
  loc_C5AE25: LdPrVar
  loc_C5AE27: LateMemCall
  loc_C5AE2D: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5AE32: PopAdLdVar
  loc_C5AE33: FLdPr Me
  loc_C5AE36: MemLdRfVar from_stack_1.global_60
  loc_C5AE39: LdPrVar
  loc_C5AE3B: LateMemCall
  loc_C5AE41: LitVarStr var_9C, "       <td class=""Encabezado1"">F. Transf.:</td>"
  loc_C5AE46: PopAdLdVar
  loc_C5AE47: FLdPr Me
  loc_C5AE4A: MemLdRfVar from_stack_1.global_60
  loc_C5AE4D: LdPrVar
  loc_C5AE4F: LateMemCall
  loc_C5AE55: LitStr "        <td class=""Normal1"">"
  loc_C5AE58: FMemLdR4 var_8C(236)
  loc_C5AE5D: ConcatStr
  loc_C5AE5E: FStStrNoPop var_F0
  loc_C5AE61: LitStr "</td>"
  loc_C5AE64: ConcatStr
  loc_C5AE65: CVarStr var_BC
  loc_C5AE68: PopAdLdVar
  loc_C5AE69: FLdPr Me
  loc_C5AE6C: MemLdRfVar from_stack_1.global_60
  loc_C5AE6F: LdPrVar
  loc_C5AE71: LateMemCall
  loc_C5AE77: FFree1Str var_F0
  loc_C5AE7A: FFree1Var var_BC = ""
  loc_C5AE7D: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5AE82: PopAdLdVar
  loc_C5AE83: FLdPr Me
  loc_C5AE86: MemLdRfVar from_stack_1.global_60
  loc_C5AE89: LdPrVar
  loc_C5AE8B: LateMemCall
  loc_C5AE91: LitVarStr var_9C, "        <td class=""Encabezado1"">Transferencia:</td>"
  loc_C5AE96: PopAdLdVar
  loc_C5AE97: FLdPr Me
  loc_C5AE9A: MemLdRfVar from_stack_1.global_60
  loc_C5AE9D: LdPrVar
  loc_C5AE9F: LateMemCall
  loc_C5AEA5: LitStr "        <td class=""Normal1"">"
  loc_C5AEA8: FMemLdR4 var_8C(240)
  loc_C5AEAD: ConcatStr
  loc_C5AEAE: FStStrNoPop var_F0
  loc_C5AEB1: LitStr "</td>"
  loc_C5AEB4: ConcatStr
  loc_C5AEB5: CVarStr var_BC
  loc_C5AEB8: PopAdLdVar
  loc_C5AEB9: FLdPr Me
  loc_C5AEBC: MemLdRfVar from_stack_1.global_60
  loc_C5AEBF: LdPrVar
  loc_C5AEC1: LateMemCall
  loc_C5AEC7: FFree1Str var_F0
  loc_C5AECA: FFree1Var var_BC = ""
  loc_C5AECD: LitVarStr var_9C, "      </tr>"
  loc_C5AED2: PopAdLdVar
  loc_C5AED3: FLdPr Me
  loc_C5AED6: MemLdRfVar from_stack_1.global_60
  loc_C5AED9: LdPrVar
  loc_C5AEDB: LateMemCall
  loc_C5AEE1: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5AEE6: PopAdLdVar
  loc_C5AEE7: FLdPr Me
  loc_C5AEEA: MemLdRfVar from_stack_1.global_60
  loc_C5AEED: LdPrVar
  loc_C5AEEF: LateMemCall
  loc_C5AEF5: LitVarStr var_9C, "       <td class=""Encabezado1"">Clasif. Mod.:</td>"
  loc_C5AEFA: PopAdLdVar
  loc_C5AEFB: FLdPr Me
  loc_C5AEFE: MemLdRfVar from_stack_1.global_60
  loc_C5AF01: LdPrVar
  loc_C5AF03: LateMemCall
  loc_C5AF09: LitStr "        <td class=""Normal1"">"
  loc_C5AF0C: FMemLdR4 var_8C(244)
  loc_C5AF11: ConcatStr
  loc_C5AF12: FStStrNoPop var_F0
  loc_C5AF15: LitStr "</td>"
  loc_C5AF18: ConcatStr
  loc_C5AF19: CVarStr var_BC
  loc_C5AF1C: PopAdLdVar
  loc_C5AF1D: FLdPr Me
  loc_C5AF20: MemLdRfVar from_stack_1.global_60
  loc_C5AF23: LdPrVar
  loc_C5AF25: LateMemCall
  loc_C5AF2B: FFree1Str var_F0
  loc_C5AF2E: FFree1Var var_BC = ""
  loc_C5AF31: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5AF36: PopAdLdVar
  loc_C5AF37: FLdPr Me
  loc_C5AF3A: MemLdRfVar from_stack_1.global_60
  loc_C5AF3D: LdPrVar
  loc_C5AF3F: LateMemCall
  loc_C5AF45: LitVarStr var_9C, "        <td class=""Encabezado1"">Resoluci&oacute;n:</td>"
  loc_C5AF4A: PopAdLdVar
  loc_C5AF4B: FLdPr Me
  loc_C5AF4E: MemLdRfVar from_stack_1.global_60
  loc_C5AF51: LdPrVar
  loc_C5AF53: LateMemCall
  loc_C5AF59: LitStr "        <td class=""Normal1"">"
  loc_C5AF5C: FMemLdR4 var_8C(248)
  loc_C5AF61: ConcatStr
  loc_C5AF62: FStStrNoPop var_F0
  loc_C5AF65: LitStr "</td>"
  loc_C5AF68: ConcatStr
  loc_C5AF69: CVarStr var_BC
  loc_C5AF6C: PopAdLdVar
  loc_C5AF6D: FLdPr Me
  loc_C5AF70: MemLdRfVar from_stack_1.global_60
  loc_C5AF73: LdPrVar
  loc_C5AF75: LateMemCall
  loc_C5AF7B: FFree1Str var_F0
  loc_C5AF7E: FFree1Var var_BC = ""
  loc_C5AF81: LitVarStr var_9C, "      </tr>"
  loc_C5AF86: PopAdLdVar
  loc_C5AF87: FLdPr Me
  loc_C5AF8A: MemLdRfVar from_stack_1.global_60
  loc_C5AF8D: LdPrVar
  loc_C5AF8F: LateMemCall
  loc_C5AF95: LitVarStr var_9C, "     </table>"
  loc_C5AF9A: PopAdLdVar
  loc_C5AF9B: FLdPr Me
  loc_C5AF9E: MemLdRfVar from_stack_1.global_60
  loc_C5AFA1: LdPrVar
  loc_C5AFA3: LateMemCall
  loc_C5AFA9: LitVarStr var_9C, "    </td>"
  loc_C5AFAE: PopAdLdVar
  loc_C5AFAF: FLdPr Me
  loc_C5AFB2: MemLdRfVar from_stack_1.global_60
  loc_C5AFB5: LdPrVar
  loc_C5AFB7: LateMemCall
  loc_C5AFBD: LitVarStr var_9C, "  </tr>"
  loc_C5AFC2: PopAdLdVar
  loc_C5AFC3: FLdPr Me
  loc_C5AFC6: MemLdRfVar from_stack_1.global_60
  loc_C5AFC9: LdPrVar
  loc_C5AFCB: LateMemCall
  loc_C5AFD1: LitVarStr var_9C, "  <tr valign=""top"" class=""Normal"">"
  loc_C5AFD6: PopAdLdVar
  loc_C5AFD7: FLdPr Me
  loc_C5AFDA: MemLdRfVar from_stack_1.global_60
  loc_C5AFDD: LdPrVar
  loc_C5AFDF: LateMemCall
  loc_C5AFE5: LitVarStr var_9C, "    <td align=""left"" valign=""top""><hr></td>"
  loc_C5AFEA: PopAdLdVar
  loc_C5AFEB: FLdPr Me
  loc_C5AFEE: MemLdRfVar from_stack_1.global_60
  loc_C5AFF1: LdPrVar
  loc_C5AFF3: LateMemCall
  loc_C5AFF9: LitVarStr var_9C, "  </tr>"
  loc_C5AFFE: PopAdLdVar
  loc_C5AFFF: FLdPr Me
  loc_C5B002: MemLdRfVar from_stack_1.global_60
  loc_C5B005: LdPrVar
  loc_C5B007: LateMemCall
  loc_C5B00D: LitVarStr var_9C, "</table>"
  loc_C5B012: PopAdLdVar
  loc_C5B013: FLdPr Me
  loc_C5B016: MemLdRfVar from_stack_1.global_60
  loc_C5B019: LdPrVar
  loc_C5B01B: LateMemCall
  loc_C5B021: LitI4 0
  loc_C5B026: FStR4 var_8C
  loc_C5B029: AryUnlock
  loc_C5B02C: ExitProcHresult
End Function

Private Function Proc_285_24_C5BFAC() 'C5BFAC
  'Data Table: 4B5FC4
  loc_C5B080: LitI4 1
  loc_C5B085: FLdPr Me
  loc_C5B088: MemLdStr global_88
  loc_C5B08B: AryLock
  loc_C5B08E: Ary1LdRf
  loc_C5B08F: FStR4 var_8C
  loc_C5B092: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B097: PopAdLdVar
  loc_C5B098: FLdPr Me
  loc_C5B09B: MemLdRfVar from_stack_1.global_60
  loc_C5B09E: LdPrVar
  loc_C5B0A0: LateMemCall
  loc_C5B0A6: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""2"" style=""text-align:center"">PUBLICIDAD</td>"
  loc_C5B0AB: PopAdLdVar
  loc_C5B0AC: FLdPr Me
  loc_C5B0AF: MemLdRfVar from_stack_1.global_60
  loc_C5B0B2: LdPrVar
  loc_C5B0B4: LateMemCall
  loc_C5B0BA: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B0BF: PopAdLdVar
  loc_C5B0C0: FLdPr Me
  loc_C5B0C3: MemLdRfVar from_stack_1.global_60
  loc_C5B0C6: LdPrVar
  loc_C5B0C8: LateMemCall
  loc_C5B0CE: LitVarStr var_9C, "        <td class=""Encabezado1"">Fecha Emisión:</td>"
  loc_C5B0D3: PopAdLdVar
  loc_C5B0D4: FLdPr Me
  loc_C5B0D7: MemLdRfVar from_stack_1.global_60
  loc_C5B0DA: LdPrVar
  loc_C5B0DC: LateMemCall
  loc_C5B0E2: LitVarStr var_9C, "        <td class=""Normal1"">"
  loc_C5B0E7: LitI2_Byte 0
  loc_C5B0E9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C5B0EE: CVarDate var_AC
  loc_C5B0F2: ConcatVar var_BC
  loc_C5B0F6: LitVarStr var_CC, "</td>"
  loc_C5B0FB: ConcatVar var_DC
  loc_C5B0FF: PopAdLdVar
  loc_C5B100: FLdPr Me
  loc_C5B103: MemLdRfVar from_stack_1.global_60
  loc_C5B106: LdPrVar
  loc_C5B108: LateMemCall
  loc_C5B10E: FFreeVar var_BC = ""
  loc_C5B115: LitVarStr var_9C, "      </tr>"
  loc_C5B11A: PopAdLdVar
  loc_C5B11B: FLdPr Me
  loc_C5B11E: MemLdRfVar from_stack_1.global_60
  loc_C5B121: LdPrVar
  loc_C5B123: LateMemCall
  loc_C5B129: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B12E: PopAdLdVar
  loc_C5B12F: FLdPr Me
  loc_C5B132: MemLdRfVar from_stack_1.global_60
  loc_C5B135: LdPrVar
  loc_C5B137: LateMemCall
  loc_C5B13D: LitVarStr var_9C, "       <td width=""115"" class=""Encabezado1"">Ficha:</td>"
  loc_C5B142: PopAdLdVar
  loc_C5B143: FLdPr Me
  loc_C5B146: MemLdRfVar from_stack_1.global_60
  loc_C5B149: LdPrVar
  loc_C5B14B: LateMemCall
  loc_C5B151: LitStr "        <td class=""Normal1"">"
  loc_C5B154: FMemLdR4 var_8C(0)
  loc_C5B159: ConcatStr
  loc_C5B15A: FStStrNoPop var_F0
  loc_C5B15D: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_C5B160: ConcatStr
  loc_C5B161: FStStrNoPop var_F4
  loc_C5B164: LitStr "<strong>C.U.I.T.: </strong> "
  loc_C5B167: ConcatStr
  loc_C5B168: FStStrNoPop var_F8
  loc_C5B16B: LitStr "&nbsp;"
  loc_C5B16E: ConcatStr
  loc_C5B16F: FStStrNoPop var_FC
  loc_C5B172: FMemLdR4 var_8C(4)
  loc_C5B177: ConcatStr
  loc_C5B178: FStStrNoPop var_100
  loc_C5B17B: LitStr "</td>"
  loc_C5B17E: ConcatStr
  loc_C5B17F: CVarStr var_BC
  loc_C5B182: PopAdLdVar
  loc_C5B183: FLdPr Me
  loc_C5B186: MemLdRfVar from_stack_1.global_60
  loc_C5B189: LdPrVar
  loc_C5B18B: LateMemCall
  loc_C5B191: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C5B19E: FFree1Var var_BC = ""
  loc_C5B1A1: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B1A6: PopAdLdVar
  loc_C5B1A7: FLdPr Me
  loc_C5B1AA: MemLdRfVar from_stack_1.global_60
  loc_C5B1AD: LdPrVar
  loc_C5B1AF: LateMemCall
  loc_C5B1B5: LitVarStr var_9C, "        <td width=""115"" class=""Encabezado1"">Raz&oacute;n/Fantas&iacute;a:</td>"
  loc_C5B1BA: PopAdLdVar
  loc_C5B1BB: FLdPr Me
  loc_C5B1BE: MemLdRfVar from_stack_1.global_60
  loc_C5B1C1: LdPrVar
  loc_C5B1C3: LateMemCall
  loc_C5B1C9: LitStr "        <td class=""Normal1"">"
  loc_C5B1CC: FMemLdR4 var_8C(8)
  loc_C5B1D1: ConcatStr
  loc_C5B1D2: FStStrNoPop var_F0
  loc_C5B1D5: LitStr "</td>"
  loc_C5B1D8: ConcatStr
  loc_C5B1D9: CVarStr var_BC
  loc_C5B1DC: PopAdLdVar
  loc_C5B1DD: FLdPr Me
  loc_C5B1E0: MemLdRfVar from_stack_1.global_60
  loc_C5B1E3: LdPrVar
  loc_C5B1E5: LateMemCall
  loc_C5B1EB: FFree1Str var_F0
  loc_C5B1EE: FFree1Var var_BC = ""
  loc_C5B1F1: LitVarStr var_9C, "      </tr>"
  loc_C5B1F6: PopAdLdVar
  loc_C5B1F7: FLdPr Me
  loc_C5B1FA: MemLdRfVar from_stack_1.global_60
  loc_C5B1FD: LdPrVar
  loc_C5B1FF: LateMemCall
  loc_C5B205: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B20A: PopAdLdVar
  loc_C5B20B: FLdPr Me
  loc_C5B20E: MemLdRfVar from_stack_1.global_60
  loc_C5B211: LdPrVar
  loc_C5B213: LateMemCall
  loc_C5B219: LitVarStr var_9C, "       <td class=""Encabezado1"">Titular:</td>"
  loc_C5B21E: PopAdLdVar
  loc_C5B21F: FLdPr Me
  loc_C5B222: MemLdRfVar from_stack_1.global_60
  loc_C5B225: LdPrVar
  loc_C5B227: LateMemCall
  loc_C5B22D: LitStr "        <td class=""Normal1"">"
  loc_C5B230: FMemLdR4 var_8C(12)
  loc_C5B235: ConcatStr
  loc_C5B236: FStStrNoPop var_F0
  loc_C5B239: LitStr " "
  loc_C5B23C: ConcatStr
  loc_C5B23D: FStStrNoPop var_F4
  loc_C5B240: FMemLdR4 var_8C(16)
  loc_C5B245: ConcatStr
  loc_C5B246: FStStrNoPop var_F8
  loc_C5B249: LitStr "</td>"
  loc_C5B24C: ConcatStr
  loc_C5B24D: CVarStr var_BC
  loc_C5B250: PopAdLdVar
  loc_C5B251: FLdPr Me
  loc_C5B254: MemLdRfVar from_stack_1.global_60
  loc_C5B257: LdPrVar
  loc_C5B259: LateMemCall
  loc_C5B25F: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5B268: FFree1Var var_BC = ""
  loc_C5B26B: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B270: PopAdLdVar
  loc_C5B271: FLdPr Me
  loc_C5B274: MemLdRfVar from_stack_1.global_60
  loc_C5B277: LdPrVar
  loc_C5B279: LateMemCall
  loc_C5B27F: LitVarStr var_9C, "        <td class=""Encabezado1"">Padr&oacute;n:</td>"
  loc_C5B284: PopAdLdVar
  loc_C5B285: FLdPr Me
  loc_C5B288: MemLdRfVar from_stack_1.global_60
  loc_C5B28B: LdPrVar
  loc_C5B28D: LateMemCall
  loc_C5B293: LitStr "        <td class=""Normal1"">"
  loc_C5B296: FMemLdR4 var_8C(20)
  loc_C5B29B: ConcatStr
  loc_C5B29C: FStStrNoPop var_F0
  loc_C5B29F: LitStr " "
  loc_C5B2A2: ConcatStr
  loc_C5B2A3: FStStrNoPop var_F4
  loc_C5B2A6: FMemLdR4 var_8C(24)
  loc_C5B2AB: ConcatStr
  loc_C5B2AC: FStStrNoPop var_F8
  loc_C5B2AF: LitStr "</td>"
  loc_C5B2B2: ConcatStr
  loc_C5B2B3: CVarStr var_BC
  loc_C5B2B6: PopAdLdVar
  loc_C5B2B7: FLdPr Me
  loc_C5B2BA: MemLdRfVar from_stack_1.global_60
  loc_C5B2BD: LdPrVar
  loc_C5B2BF: LateMemCall
  loc_C5B2C5: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5B2CE: FFree1Var var_BC = ""
  loc_C5B2D1: LitVarStr var_9C, "      </tr>"
  loc_C5B2D6: PopAdLdVar
  loc_C5B2D7: FLdPr Me
  loc_C5B2DA: MemLdRfVar from_stack_1.global_60
  loc_C5B2DD: LdPrVar
  loc_C5B2DF: LateMemCall
  loc_C5B2E5: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B2EA: PopAdLdVar
  loc_C5B2EB: FLdPr Me
  loc_C5B2EE: MemLdRfVar from_stack_1.global_60
  loc_C5B2F1: LdPrVar
  loc_C5B2F3: LateMemCall
  loc_C5B2F9: LitVarStr var_9C, "       <td class=""Encabezado1"">Estado:</td>"
  loc_C5B2FE: PopAdLdVar
  loc_C5B2FF: FLdPr Me
  loc_C5B302: MemLdRfVar from_stack_1.global_60
  loc_C5B305: LdPrVar
  loc_C5B307: LateMemCall
  loc_C5B30D: LitStr "        <td class=""Normal1"">"
  loc_C5B310: FMemLdR4 var_8C(32)
  loc_C5B315: ConcatStr
  loc_C5B316: FStStrNoPop var_F0
  loc_C5B319: LitStr "</td>"
  loc_C5B31C: ConcatStr
  loc_C5B31D: CVarStr var_BC
  loc_C5B320: PopAdLdVar
  loc_C5B321: FLdPr Me
  loc_C5B324: MemLdRfVar from_stack_1.global_60
  loc_C5B327: LdPrVar
  loc_C5B329: LateMemCall
  loc_C5B32F: FFree1Str var_F0
  loc_C5B332: FFree1Var var_BC = ""
  loc_C5B335: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B33A: PopAdLdVar
  loc_C5B33B: FLdPr Me
  loc_C5B33E: MemLdRfVar from_stack_1.global_60
  loc_C5B341: LdPrVar
  loc_C5B343: LateMemCall
  loc_C5B349: LitVarStr var_9C, "        <td class=""Encabezado1"">Fecha Estado:</td>"
  loc_C5B34E: PopAdLdVar
  loc_C5B34F: FLdPr Me
  loc_C5B352: MemLdRfVar from_stack_1.global_60
  loc_C5B355: LdPrVar
  loc_C5B357: LateMemCall
  loc_C5B35D: LitStr "        <td class=""Normal1"">"
  loc_C5B360: FMemLdR4 var_8C(36)
  loc_C5B365: ConcatStr
  loc_C5B366: FStStrNoPop var_F0
  loc_C5B369: LitStr "</td>"
  loc_C5B36C: ConcatStr
  loc_C5B36D: CVarStr var_BC
  loc_C5B370: PopAdLdVar
  loc_C5B371: FLdPr Me
  loc_C5B374: MemLdRfVar from_stack_1.global_60
  loc_C5B377: LdPrVar
  loc_C5B379: LateMemCall
  loc_C5B37F: FFree1Str var_F0
  loc_C5B382: FFree1Var var_BC = ""
  loc_C5B385: LitVarStr var_9C, "      </tr>"
  loc_C5B38A: PopAdLdVar
  loc_C5B38B: FLdPr Me
  loc_C5B38E: MemLdRfVar from_stack_1.global_60
  loc_C5B391: LdPrVar
  loc_C5B393: LateMemCall
  loc_C5B399: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B39E: PopAdLdVar
  loc_C5B39F: FLdPr Me
  loc_C5B3A2: MemLdRfVar from_stack_1.global_60
  loc_C5B3A5: LdPrVar
  loc_C5B3A7: LateMemCall
  loc_C5B3AD: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />UBICACIÓN DEL COMERCIO</td>"
  loc_C5B3B2: PopAdLdVar
  loc_C5B3B3: FLdPr Me
  loc_C5B3B6: MemLdRfVar from_stack_1.global_60
  loc_C5B3B9: LdPrVar
  loc_C5B3BB: LateMemCall
  loc_C5B3C1: LitVarStr var_9C, "      </tr>"
  loc_C5B3C6: PopAdLdVar
  loc_C5B3C7: FLdPr Me
  loc_C5B3CA: MemLdRfVar from_stack_1.global_60
  loc_C5B3CD: LdPrVar
  loc_C5B3CF: LateMemCall
  loc_C5B3D5: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B3DA: PopAdLdVar
  loc_C5B3DB: FLdPr Me
  loc_C5B3DE: MemLdRfVar from_stack_1.global_60
  loc_C5B3E1: LdPrVar
  loc_C5B3E3: LateMemCall
  loc_C5B3E9: LitVarStr var_9C, "       <td class=""Encabezado1"">Calle:</td>"
  loc_C5B3EE: PopAdLdVar
  loc_C5B3EF: FLdPr Me
  loc_C5B3F2: MemLdRfVar from_stack_1.global_60
  loc_C5B3F5: LdPrVar
  loc_C5B3F7: LateMemCall
  loc_C5B3FD: LitStr "        <td class=""Normal1"">"
  loc_C5B400: FMemLdR4 var_8C(40)
  loc_C5B405: ConcatStr
  loc_C5B406: FStStrNoPop var_F0
  loc_C5B409: LitStr " "
  loc_C5B40C: ConcatStr
  loc_C5B40D: FStStrNoPop var_F4
  loc_C5B410: FMemLdR4 var_8C(44)
  loc_C5B415: ConcatStr
  loc_C5B416: FStStrNoPop var_F8
  loc_C5B419: LitStr "</td>"
  loc_C5B41C: ConcatStr
  loc_C5B41D: CVarStr var_BC
  loc_C5B420: PopAdLdVar
  loc_C5B421: FLdPr Me
  loc_C5B424: MemLdRfVar from_stack_1.global_60
  loc_C5B427: LdPrVar
  loc_C5B429: LateMemCall
  loc_C5B42F: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5B438: FFree1Var var_BC = ""
  loc_C5B43B: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B440: PopAdLdVar
  loc_C5B441: FLdPr Me
  loc_C5B444: MemLdRfVar from_stack_1.global_60
  loc_C5B447: LdPrVar
  loc_C5B449: LateMemCall
  loc_C5B44F: LitVarStr var_9C, "        <td class=""Encabezado1"">Número:</td>"
  loc_C5B454: PopAdLdVar
  loc_C5B455: FLdPr Me
  loc_C5B458: MemLdRfVar from_stack_1.global_60
  loc_C5B45B: LdPrVar
  loc_C5B45D: LateMemCall
  loc_C5B463: LitStr "        <td class=""Normal1"">"
  loc_C5B466: FMemLdR4 var_8C(48)
  loc_C5B46B: ConcatStr
  loc_C5B46C: FStStrNoPop var_F0
  loc_C5B46F: LitStr "</td>"
  loc_C5B472: ConcatStr
  loc_C5B473: CVarStr var_BC
  loc_C5B476: PopAdLdVar
  loc_C5B477: FLdPr Me
  loc_C5B47A: MemLdRfVar from_stack_1.global_60
  loc_C5B47D: LdPrVar
  loc_C5B47F: LateMemCall
  loc_C5B485: FFree1Str var_F0
  loc_C5B488: FFree1Var var_BC = ""
  loc_C5B48B: LitVarStr var_9C, "      </tr>"
  loc_C5B490: PopAdLdVar
  loc_C5B491: FLdPr Me
  loc_C5B494: MemLdRfVar from_stack_1.global_60
  loc_C5B497: LdPrVar
  loc_C5B499: LateMemCall
  loc_C5B49F: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B4A4: PopAdLdVar
  loc_C5B4A5: FLdPr Me
  loc_C5B4A8: MemLdRfVar from_stack_1.global_60
  loc_C5B4AB: LdPrVar
  loc_C5B4AD: LateMemCall
  loc_C5B4B3: LitVarStr var_9C, "       <td class=""Encabezado1"">Barrio:</td>"
  loc_C5B4B8: PopAdLdVar
  loc_C5B4B9: FLdPr Me
  loc_C5B4BC: MemLdRfVar from_stack_1.global_60
  loc_C5B4BF: LdPrVar
  loc_C5B4C1: LateMemCall
  loc_C5B4C7: LitStr "        <td class=""Normal1"">"
  loc_C5B4CA: FMemLdR4 var_8C(56)
  loc_C5B4CF: ConcatStr
  loc_C5B4D0: FStStrNoPop var_F0
  loc_C5B4D3: LitStr " "
  loc_C5B4D6: ConcatStr
  loc_C5B4D7: FStStrNoPop var_F4
  loc_C5B4DA: FMemLdR4 var_8C(60)
  loc_C5B4DF: ConcatStr
  loc_C5B4E0: FStStrNoPop var_F8
  loc_C5B4E3: LitStr "</td>"
  loc_C5B4E6: ConcatStr
  loc_C5B4E7: CVarStr var_BC
  loc_C5B4EA: PopAdLdVar
  loc_C5B4EB: FLdPr Me
  loc_C5B4EE: MemLdRfVar from_stack_1.global_60
  loc_C5B4F1: LdPrVar
  loc_C5B4F3: LateMemCall
  loc_C5B4F9: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5B502: FFree1Var var_BC = ""
  loc_C5B505: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B50A: PopAdLdVar
  loc_C5B50B: FLdPr Me
  loc_C5B50E: MemLdRfVar from_stack_1.global_60
  loc_C5B511: LdPrVar
  loc_C5B513: LateMemCall
  loc_C5B519: LitVarStr var_9C, "        <td class=""Encabezado1"">Manzana/Casa:</td>"
  loc_C5B51E: PopAdLdVar
  loc_C5B51F: FLdPr Me
  loc_C5B522: MemLdRfVar from_stack_1.global_60
  loc_C5B525: LdPrVar
  loc_C5B527: LateMemCall
  loc_C5B52D: LitStr "        <td class=""Normal1"">"
  loc_C5B530: FMemLdR4 var_8C(64)
  loc_C5B535: ConcatStr
  loc_C5B536: FStStrNoPop var_F0
  loc_C5B539: LitStr "/"
  loc_C5B53C: ConcatStr
  loc_C5B53D: FStStrNoPop var_F4
  loc_C5B540: FMemLdR4 var_8C(72)
  loc_C5B545: ConcatStr
  loc_C5B546: FStStrNoPop var_F8
  loc_C5B549: LitStr "</td>"
  loc_C5B54C: ConcatStr
  loc_C5B54D: CVarStr var_BC
  loc_C5B550: PopAdLdVar
  loc_C5B551: FLdPr Me
  loc_C5B554: MemLdRfVar from_stack_1.global_60
  loc_C5B557: LdPrVar
  loc_C5B559: LateMemCall
  loc_C5B55F: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5B568: FFree1Var var_BC = ""
  loc_C5B56B: LitVarStr var_9C, "      </tr>"
  loc_C5B570: PopAdLdVar
  loc_C5B571: FLdPr Me
  loc_C5B574: MemLdRfVar from_stack_1.global_60
  loc_C5B577: LdPrVar
  loc_C5B579: LateMemCall
  loc_C5B57F: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B584: PopAdLdVar
  loc_C5B585: FLdPr Me
  loc_C5B588: MemLdRfVar from_stack_1.global_60
  loc_C5B58B: LdPrVar
  loc_C5B58D: LateMemCall
  loc_C5B593: LitVarStr var_9C, "       <td class=""Encabezado1"">Ubicaci&oacute;n:</td>"
  loc_C5B598: PopAdLdVar
  loc_C5B599: FLdPr Me
  loc_C5B59C: MemLdRfVar from_stack_1.global_60
  loc_C5B59F: LdPrVar
  loc_C5B5A1: LateMemCall
  loc_C5B5A7: LitStr "        <td class=""Normal1"" colspan=""4"">"
  loc_C5B5AA: FMemLdR4 var_8C(84)
  loc_C5B5AF: ConcatStr
  loc_C5B5B0: FStStrNoPop var_F0
  loc_C5B5B3: LitStr "</td>"
  loc_C5B5B6: ConcatStr
  loc_C5B5B7: CVarStr var_BC
  loc_C5B5BA: PopAdLdVar
  loc_C5B5BB: FLdPr Me
  loc_C5B5BE: MemLdRfVar from_stack_1.global_60
  loc_C5B5C1: LdPrVar
  loc_C5B5C3: LateMemCall
  loc_C5B5C9: FFree1Str var_F0
  loc_C5B5CC: FFree1Var var_BC = ""
  loc_C5B5CF: LitVarStr var_9C, "      </tr>"
  loc_C5B5D4: PopAdLdVar
  loc_C5B5D5: FLdPr Me
  loc_C5B5D8: MemLdRfVar from_stack_1.global_60
  loc_C5B5DB: LdPrVar
  loc_C5B5DD: LateMemCall
  loc_C5B5E3: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B5E8: PopAdLdVar
  loc_C5B5E9: FLdPr Me
  loc_C5B5EC: MemLdRfVar from_stack_1.global_60
  loc_C5B5EF: LdPrVar
  loc_C5B5F1: LateMemCall
  loc_C5B5F7: LitVarStr var_9C, "       <td class=""Encabezado1"">Localidad:</td>"
  loc_C5B5FC: PopAdLdVar
  loc_C5B5FD: FLdPr Me
  loc_C5B600: MemLdRfVar from_stack_1.global_60
  loc_C5B603: LdPrVar
  loc_C5B605: LateMemCall
  loc_C5B60B: LitStr "        <td class=""Normal1"">"
  loc_C5B60E: FMemLdR4 var_8C(92)
  loc_C5B613: ConcatStr
  loc_C5B614: FStStrNoPop var_F0
  loc_C5B617: LitStr " "
  loc_C5B61A: ConcatStr
  loc_C5B61B: FStStrNoPop var_F4
  loc_C5B61E: FMemLdR4 var_8C(96)
  loc_C5B623: ConcatStr
  loc_C5B624: FStStrNoPop var_F8
  loc_C5B627: LitStr "</td>"
  loc_C5B62A: ConcatStr
  loc_C5B62B: CVarStr var_BC
  loc_C5B62E: PopAdLdVar
  loc_C5B62F: FLdPr Me
  loc_C5B632: MemLdRfVar from_stack_1.global_60
  loc_C5B635: LdPrVar
  loc_C5B637: LateMemCall
  loc_C5B63D: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5B646: FFree1Var var_BC = ""
  loc_C5B649: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B64E: PopAdLdVar
  loc_C5B64F: FLdPr Me
  loc_C5B652: MemLdRfVar from_stack_1.global_60
  loc_C5B655: LdPrVar
  loc_C5B657: LateMemCall
  loc_C5B65D: LitVarStr var_9C, "        <td class=""Encabezado1"">C&oacute;d. Postal:</td>"
  loc_C5B662: PopAdLdVar
  loc_C5B663: FLdPr Me
  loc_C5B666: MemLdRfVar from_stack_1.global_60
  loc_C5B669: LdPrVar
  loc_C5B66B: LateMemCall
  loc_C5B671: LitStr "        <td class=""Normal1"">"
  loc_C5B674: FMemLdR4 var_8C(100)
  loc_C5B679: ConcatStr
  loc_C5B67A: FStStrNoPop var_F0
  loc_C5B67D: LitStr "</td>"
  loc_C5B680: ConcatStr
  loc_C5B681: CVarStr var_BC
  loc_C5B684: PopAdLdVar
  loc_C5B685: FLdPr Me
  loc_C5B688: MemLdRfVar from_stack_1.global_60
  loc_C5B68B: LdPrVar
  loc_C5B68D: LateMemCall
  loc_C5B693: FFree1Str var_F0
  loc_C5B696: FFree1Var var_BC = ""
  loc_C5B699: LitVarStr var_9C, "      </tr>"
  loc_C5B69E: PopAdLdVar
  loc_C5B69F: FLdPr Me
  loc_C5B6A2: MemLdRfVar from_stack_1.global_60
  loc_C5B6A5: LdPrVar
  loc_C5B6A7: LateMemCall
  loc_C5B6AD: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B6B2: PopAdLdVar
  loc_C5B6B3: FLdPr Me
  loc_C5B6B6: MemLdRfVar from_stack_1.global_60
  loc_C5B6B9: LdPrVar
  loc_C5B6BB: LateMemCall
  loc_C5B6C1: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />DOMICILIO POSTAL</td>"
  loc_C5B6C6: PopAdLdVar
  loc_C5B6C7: FLdPr Me
  loc_C5B6CA: MemLdRfVar from_stack_1.global_60
  loc_C5B6CD: LdPrVar
  loc_C5B6CF: LateMemCall
  loc_C5B6D5: LitVarStr var_9C, "      </tr>"
  loc_C5B6DA: PopAdLdVar
  loc_C5B6DB: FLdPr Me
  loc_C5B6DE: MemLdRfVar from_stack_1.global_60
  loc_C5B6E1: LdPrVar
  loc_C5B6E3: LateMemCall
  loc_C5B6E9: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B6EE: PopAdLdVar
  loc_C5B6EF: FLdPr Me
  loc_C5B6F2: MemLdRfVar from_stack_1.global_60
  loc_C5B6F5: LdPrVar
  loc_C5B6F7: LateMemCall
  loc_C5B6FD: LitVarStr var_9C, "       <td class=""Encabezado1"">Calle:</td>"
  loc_C5B702: PopAdLdVar
  loc_C5B703: FLdPr Me
  loc_C5B706: MemLdRfVar from_stack_1.global_60
  loc_C5B709: LdPrVar
  loc_C5B70B: LateMemCall
  loc_C5B711: LitStr "        <td class=""Normal1"">"
  loc_C5B714: FMemLdR4 var_8C(108)
  loc_C5B719: ConcatStr
  loc_C5B71A: FStStrNoPop var_F0
  loc_C5B71D: LitStr " "
  loc_C5B720: ConcatStr
  loc_C5B721: FStStrNoPop var_F4
  loc_C5B724: FMemLdR4 var_8C(112)
  loc_C5B729: ConcatStr
  loc_C5B72A: FStStrNoPop var_F8
  loc_C5B72D: LitStr "</td>"
  loc_C5B730: ConcatStr
  loc_C5B731: CVarStr var_BC
  loc_C5B734: PopAdLdVar
  loc_C5B735: FLdPr Me
  loc_C5B738: MemLdRfVar from_stack_1.global_60
  loc_C5B73B: LdPrVar
  loc_C5B73D: LateMemCall
  loc_C5B743: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5B74C: FFree1Var var_BC = ""
  loc_C5B74F: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B754: PopAdLdVar
  loc_C5B755: FLdPr Me
  loc_C5B758: MemLdRfVar from_stack_1.global_60
  loc_C5B75B: LdPrVar
  loc_C5B75D: LateMemCall
  loc_C5B763: LitVarStr var_9C, "        <td class=""Encabezado1"">Número:</td>"
  loc_C5B768: PopAdLdVar
  loc_C5B769: FLdPr Me
  loc_C5B76C: MemLdRfVar from_stack_1.global_60
  loc_C5B76F: LdPrVar
  loc_C5B771: LateMemCall
  loc_C5B777: LitStr "        <td class=""Normal1"">"
  loc_C5B77A: FMemLdR4 var_8C(116)
  loc_C5B77F: ConcatStr
  loc_C5B780: FStStrNoPop var_F0
  loc_C5B783: LitStr "</td>"
  loc_C5B786: ConcatStr
  loc_C5B787: CVarStr var_BC
  loc_C5B78A: PopAdLdVar
  loc_C5B78B: FLdPr Me
  loc_C5B78E: MemLdRfVar from_stack_1.global_60
  loc_C5B791: LdPrVar
  loc_C5B793: LateMemCall
  loc_C5B799: FFree1Str var_F0
  loc_C5B79C: FFree1Var var_BC = ""
  loc_C5B79F: LitVarStr var_9C, "      </tr>"
  loc_C5B7A4: PopAdLdVar
  loc_C5B7A5: FLdPr Me
  loc_C5B7A8: MemLdRfVar from_stack_1.global_60
  loc_C5B7AB: LdPrVar
  loc_C5B7AD: LateMemCall
  loc_C5B7B3: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B7B8: PopAdLdVar
  loc_C5B7B9: FLdPr Me
  loc_C5B7BC: MemLdRfVar from_stack_1.global_60
  loc_C5B7BF: LdPrVar
  loc_C5B7C1: LateMemCall
  loc_C5B7C7: LitVarStr var_9C, "       <td class=""Encabezado1"">Barrio:</td>"
  loc_C5B7CC: PopAdLdVar
  loc_C5B7CD: FLdPr Me
  loc_C5B7D0: MemLdRfVar from_stack_1.global_60
  loc_C5B7D3: LdPrVar
  loc_C5B7D5: LateMemCall
  loc_C5B7DB: LitStr "        <td class=""Normal1"">"
  loc_C5B7DE: FMemLdR4 var_8C(148)
  loc_C5B7E3: ConcatStr
  loc_C5B7E4: FStStrNoPop var_F0
  loc_C5B7E7: LitStr " "
  loc_C5B7EA: ConcatStr
  loc_C5B7EB: FStStrNoPop var_F4
  loc_C5B7EE: FMemLdR4 var_8C(152)
  loc_C5B7F3: ConcatStr
  loc_C5B7F4: FStStrNoPop var_F8
  loc_C5B7F7: LitStr "</td>"
  loc_C5B7FA: ConcatStr
  loc_C5B7FB: CVarStr var_BC
  loc_C5B7FE: PopAdLdVar
  loc_C5B7FF: FLdPr Me
  loc_C5B802: MemLdRfVar from_stack_1.global_60
  loc_C5B805: LdPrVar
  loc_C5B807: LateMemCall
  loc_C5B80D: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5B816: FFree1Var var_BC = ""
  loc_C5B819: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B81E: PopAdLdVar
  loc_C5B81F: FLdPr Me
  loc_C5B822: MemLdRfVar from_stack_1.global_60
  loc_C5B825: LdPrVar
  loc_C5B827: LateMemCall
  loc_C5B82D: LitVarStr var_9C, "        <td class=""Encabezado1"">Manzana/Casa:</td>"
  loc_C5B832: PopAdLdVar
  loc_C5B833: FLdPr Me
  loc_C5B836: MemLdRfVar from_stack_1.global_60
  loc_C5B839: LdPrVar
  loc_C5B83B: LateMemCall
  loc_C5B841: LitStr "        <td class=""Normal1"">"
  loc_C5B844: FMemLdR4 var_8C(156)
  loc_C5B849: ConcatStr
  loc_C5B84A: FStStrNoPop var_F0
  loc_C5B84D: LitStr "/"
  loc_C5B850: ConcatStr
  loc_C5B851: FStStrNoPop var_F4
  loc_C5B854: FMemLdR4 var_8C(164)
  loc_C5B859: ConcatStr
  loc_C5B85A: FStStrNoPop var_F8
  loc_C5B85D: LitStr "</td>"
  loc_C5B860: ConcatStr
  loc_C5B861: CVarStr var_BC
  loc_C5B864: PopAdLdVar
  loc_C5B865: FLdPr Me
  loc_C5B868: MemLdRfVar from_stack_1.global_60
  loc_C5B86B: LdPrVar
  loc_C5B86D: LateMemCall
  loc_C5B873: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5B87C: FFree1Var var_BC = ""
  loc_C5B87F: LitVarStr var_9C, "      </tr>"
  loc_C5B884: PopAdLdVar
  loc_C5B885: FLdPr Me
  loc_C5B888: MemLdRfVar from_stack_1.global_60
  loc_C5B88B: LdPrVar
  loc_C5B88D: LateMemCall
  loc_C5B893: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B898: PopAdLdVar
  loc_C5B899: FLdPr Me
  loc_C5B89C: MemLdRfVar from_stack_1.global_60
  loc_C5B89F: LdPrVar
  loc_C5B8A1: LateMemCall
  loc_C5B8A7: LitVarStr var_9C, "       <td class=""Encabezado1"">Piso:</td>"
  loc_C5B8AC: PopAdLdVar
  loc_C5B8AD: FLdPr Me
  loc_C5B8B0: MemLdRfVar from_stack_1.global_60
  loc_C5B8B3: LdPrVar
  loc_C5B8B5: LateMemCall
  loc_C5B8BB: LitStr "        <td class=""Normal1"">"
  loc_C5B8BE: FMemLdR4 var_8C(128)
  loc_C5B8C3: ConcatStr
  loc_C5B8C4: FStStrNoPop var_F0
  loc_C5B8C7: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_C5B8CA: ConcatStr
  loc_C5B8CB: FStStrNoPop var_F4
  loc_C5B8CE: LitStr "<strong>Dpto: </strong> "
  loc_C5B8D1: ConcatStr
  loc_C5B8D2: FStStrNoPop var_F8
  loc_C5B8D5: LitStr "&nbsp;"
  loc_C5B8D8: ConcatStr
  loc_C5B8D9: FStStrNoPop var_FC
  loc_C5B8DC: FMemLdR4 var_8C(136)
  loc_C5B8E1: ConcatStr
  loc_C5B8E2: FStStrNoPop var_100
  loc_C5B8E5: LitStr "</td>"
  loc_C5B8E8: ConcatStr
  loc_C5B8E9: CVarStr var_BC
  loc_C5B8EC: PopAdLdVar
  loc_C5B8ED: FLdPr Me
  loc_C5B8F0: MemLdRfVar from_stack_1.global_60
  loc_C5B8F3: LdPrVar
  loc_C5B8F5: LateMemCall
  loc_C5B8FB: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C5B908: FFree1Var var_BC = ""
  loc_C5B90B: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5B910: PopAdLdVar
  loc_C5B911: FLdPr Me
  loc_C5B914: MemLdRfVar from_stack_1.global_60
  loc_C5B917: LdPrVar
  loc_C5B919: LateMemCall
  loc_C5B91F: LitVarStr var_9C, "        <td class=""Encabezado1"">Monoblock:</td>"
  loc_C5B924: PopAdLdVar
  loc_C5B925: FLdPr Me
  loc_C5B928: MemLdRfVar from_stack_1.global_60
  loc_C5B92B: LdPrVar
  loc_C5B92D: LateMemCall
  loc_C5B933: LitStr "        <td class=""Normal1"">"
  loc_C5B936: FMemLdR4 var_8C(144)
  loc_C5B93B: ConcatStr
  loc_C5B93C: FStStrNoPop var_F0
  loc_C5B93F: LitStr "</td>"
  loc_C5B942: ConcatStr
  loc_C5B943: CVarStr var_BC
  loc_C5B946: PopAdLdVar
  loc_C5B947: FLdPr Me
  loc_C5B94A: MemLdRfVar from_stack_1.global_60
  loc_C5B94D: LdPrVar
  loc_C5B94F: LateMemCall
  loc_C5B955: FFree1Str var_F0
  loc_C5B958: FFree1Var var_BC = ""
  loc_C5B95B: LitVarStr var_9C, "      </tr>"
  loc_C5B960: PopAdLdVar
  loc_C5B961: FLdPr Me
  loc_C5B964: MemLdRfVar from_stack_1.global_60
  loc_C5B967: LdPrVar
  loc_C5B969: LateMemCall
  loc_C5B96F: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B974: PopAdLdVar
  loc_C5B975: FLdPr Me
  loc_C5B978: MemLdRfVar from_stack_1.global_60
  loc_C5B97B: LdPrVar
  loc_C5B97D: LateMemCall
  loc_C5B983: LitVarStr var_9C, "       <td class=""Encabezado1"">Ubicaci&oacute;n:</td>"
  loc_C5B988: PopAdLdVar
  loc_C5B989: FLdPr Me
  loc_C5B98C: MemLdRfVar from_stack_1.global_60
  loc_C5B98F: LdPrVar
  loc_C5B991: LateMemCall
  loc_C5B997: LitStr "        <td class=""Normal1"" colspan=""4"">"
  loc_C5B99A: FMemLdR4 var_8C(176)
  loc_C5B99F: ConcatStr
  loc_C5B9A0: FStStrNoPop var_F0
  loc_C5B9A3: LitStr "</td>"
  loc_C5B9A6: ConcatStr
  loc_C5B9A7: CVarStr var_BC
  loc_C5B9AA: PopAdLdVar
  loc_C5B9AB: FLdPr Me
  loc_C5B9AE: MemLdRfVar from_stack_1.global_60
  loc_C5B9B1: LdPrVar
  loc_C5B9B3: LateMemCall
  loc_C5B9B9: FFree1Str var_F0
  loc_C5B9BC: FFree1Var var_BC = ""
  loc_C5B9BF: LitVarStr var_9C, "      </tr>"
  loc_C5B9C4: PopAdLdVar
  loc_C5B9C5: FLdPr Me
  loc_C5B9C8: MemLdRfVar from_stack_1.global_60
  loc_C5B9CB: LdPrVar
  loc_C5B9CD: LateMemCall
  loc_C5B9D3: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5B9D8: PopAdLdVar
  loc_C5B9D9: FLdPr Me
  loc_C5B9DC: MemLdRfVar from_stack_1.global_60
  loc_C5B9DF: LdPrVar
  loc_C5B9E1: LateMemCall
  loc_C5B9E7: LitVarStr var_9C, "       <td class=""Encabezado1"">Localidad:</td>"
  loc_C5B9EC: PopAdLdVar
  loc_C5B9ED: FLdPr Me
  loc_C5B9F0: MemLdRfVar from_stack_1.global_60
  loc_C5B9F3: LdPrVar
  loc_C5B9F5: LateMemCall
  loc_C5B9FB: LitStr "        <td class=""Normal1"">"
  loc_C5B9FE: FMemLdR4 var_8C(184)
  loc_C5BA03: ConcatStr
  loc_C5BA04: FStStrNoPop var_F0
  loc_C5BA07: LitStr " "
  loc_C5BA0A: ConcatStr
  loc_C5BA0B: FStStrNoPop var_F4
  loc_C5BA0E: FMemLdR4 var_8C(188)
  loc_C5BA13: ConcatStr
  loc_C5BA14: FStStrNoPop var_F8
  loc_C5BA17: LitStr "</td>"
  loc_C5BA1A: ConcatStr
  loc_C5BA1B: CVarStr var_BC
  loc_C5BA1E: PopAdLdVar
  loc_C5BA1F: FLdPr Me
  loc_C5BA22: MemLdRfVar from_stack_1.global_60
  loc_C5BA25: LdPrVar
  loc_C5BA27: LateMemCall
  loc_C5BA2D: FFreeStr var_F0 = "": var_F4 = ""
  loc_C5BA36: FFree1Var var_BC = ""
  loc_C5BA39: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5BA3E: PopAdLdVar
  loc_C5BA3F: FLdPr Me
  loc_C5BA42: MemLdRfVar from_stack_1.global_60
  loc_C5BA45: LdPrVar
  loc_C5BA47: LateMemCall
  loc_C5BA4D: LitVarStr var_9C, "        <td class=""Encabezado1"">C&oacute;d. Postal:</td>"
  loc_C5BA52: PopAdLdVar
  loc_C5BA53: FLdPr Me
  loc_C5BA56: MemLdRfVar from_stack_1.global_60
  loc_C5BA59: LdPrVar
  loc_C5BA5B: LateMemCall
  loc_C5BA61: LitStr "        <td class=""Normal1"">"
  loc_C5BA64: FMemLdR4 var_8C(192)
  loc_C5BA69: ConcatStr
  loc_C5BA6A: FStStrNoPop var_F0
  loc_C5BA6D: LitStr "</td>"
  loc_C5BA70: ConcatStr
  loc_C5BA71: CVarStr var_BC
  loc_C5BA74: PopAdLdVar
  loc_C5BA75: FLdPr Me
  loc_C5BA78: MemLdRfVar from_stack_1.global_60
  loc_C5BA7B: LdPrVar
  loc_C5BA7D: LateMemCall
  loc_C5BA83: FFree1Str var_F0
  loc_C5BA86: FFree1Var var_BC = ""
  loc_C5BA89: LitVarStr var_9C, "      </tr>"
  loc_C5BA8E: PopAdLdVar
  loc_C5BA8F: FLdPr Me
  loc_C5BA92: MemLdRfVar from_stack_1.global_60
  loc_C5BA95: LdPrVar
  loc_C5BA97: LateMemCall
  loc_C5BA9D: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5BAA2: PopAdLdVar
  loc_C5BAA3: FLdPr Me
  loc_C5BAA6: MemLdRfVar from_stack_1.global_60
  loc_C5BAA9: LdPrVar
  loc_C5BAAB: LateMemCall
  loc_C5BAB1: LitVarStr var_9C, "        <td class=""Encabezado1"" colspan=""5"" style=""text-align:center"" ><br />DATOS DEL COMERCIO</td>"
  loc_C5BAB6: PopAdLdVar
  loc_C5BAB7: FLdPr Me
  loc_C5BABA: MemLdRfVar from_stack_1.global_60
  loc_C5BABD: LdPrVar
  loc_C5BABF: LateMemCall
  loc_C5BAC5: LitVarStr var_9C, "      </tr>"
  loc_C5BACA: PopAdLdVar
  loc_C5BACB: FLdPr Me
  loc_C5BACE: MemLdRfVar from_stack_1.global_60
  loc_C5BAD1: LdPrVar
  loc_C5BAD3: LateMemCall
  loc_C5BAD9: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5BADE: PopAdLdVar
  loc_C5BADF: FLdPr Me
  loc_C5BAE2: MemLdRfVar from_stack_1.global_60
  loc_C5BAE5: LdPrVar
  loc_C5BAE7: LateMemCall
  loc_C5BAED: LitVarStr var_9C, "       <td class=""Encabezado1"">Fecha de Apertura:</td>"
  loc_C5BAF2: PopAdLdVar
  loc_C5BAF3: FLdPr Me
  loc_C5BAF6: MemLdRfVar from_stack_1.global_60
  loc_C5BAF9: LdPrVar
  loc_C5BAFB: LateMemCall
  loc_C5BB01: LitStr "        <td class=""Normal1"">"
  loc_C5BB04: FMemLdR4 var_8C(200)
  loc_C5BB09: ConcatStr
  loc_C5BB0A: FStStrNoPop var_F0
  loc_C5BB0D: LitStr "</td>"
  loc_C5BB10: ConcatStr
  loc_C5BB11: CVarStr var_BC
  loc_C5BB14: PopAdLdVar
  loc_C5BB15: FLdPr Me
  loc_C5BB18: MemLdRfVar from_stack_1.global_60
  loc_C5BB1B: LdPrVar
  loc_C5BB1D: LateMemCall
  loc_C5BB23: FFree1Str var_F0
  loc_C5BB26: FFree1Var var_BC = ""
  loc_C5BB29: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5BB2E: PopAdLdVar
  loc_C5BB2F: FLdPr Me
  loc_C5BB32: MemLdRfVar from_stack_1.global_60
  loc_C5BB35: LdPrVar
  loc_C5BB37: LateMemCall
  loc_C5BB3D: LitVarStr var_9C, "        <td class=""Encabezado1"">Expediente:</td>"
  loc_C5BB42: PopAdLdVar
  loc_C5BB43: FLdPr Me
  loc_C5BB46: MemLdRfVar from_stack_1.global_60
  loc_C5BB49: LdPrVar
  loc_C5BB4B: LateMemCall
  loc_C5BB51: LitStr "        <td class=""Normal1"">"
  loc_C5BB54: FMemLdR4 var_8C(204)
  loc_C5BB59: ConcatStr
  loc_C5BB5A: FStStrNoPop var_F0
  loc_C5BB5D: LitStr "</td>"
  loc_C5BB60: ConcatStr
  loc_C5BB61: CVarStr var_BC
  loc_C5BB64: PopAdLdVar
  loc_C5BB65: FLdPr Me
  loc_C5BB68: MemLdRfVar from_stack_1.global_60
  loc_C5BB6B: LdPrVar
  loc_C5BB6D: LateMemCall
  loc_C5BB73: FFree1Str var_F0
  loc_C5BB76: FFree1Var var_BC = ""
  loc_C5BB79: LitVarStr var_9C, "      </tr>"
  loc_C5BB7E: PopAdLdVar
  loc_C5BB7F: FLdPr Me
  loc_C5BB82: MemLdRfVar from_stack_1.global_60
  loc_C5BB85: LdPrVar
  loc_C5BB87: LateMemCall
  loc_C5BB8D: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5BB92: PopAdLdVar
  loc_C5BB93: FLdPr Me
  loc_C5BB96: MemLdRfVar from_stack_1.global_60
  loc_C5BB99: LdPrVar
  loc_C5BB9B: LateMemCall
  loc_C5BBA1: LitVarStr var_9C, "       <td class=""Encabezado1"">Fecha de Baja:</td>"
  loc_C5BBA6: PopAdLdVar
  loc_C5BBA7: FLdPr Me
  loc_C5BBAA: MemLdRfVar from_stack_1.global_60
  loc_C5BBAD: LdPrVar
  loc_C5BBAF: LateMemCall
  loc_C5BBB5: LitStr "        <td class=""Normal1"">"
  loc_C5BBB8: FMemLdR4 var_8C(208)
  loc_C5BBBD: ConcatStr
  loc_C5BBBE: FStStrNoPop var_F0
  loc_C5BBC1: LitStr "</td>"
  loc_C5BBC4: ConcatStr
  loc_C5BBC5: CVarStr var_BC
  loc_C5BBC8: PopAdLdVar
  loc_C5BBC9: FLdPr Me
  loc_C5BBCC: MemLdRfVar from_stack_1.global_60
  loc_C5BBCF: LdPrVar
  loc_C5BBD1: LateMemCall
  loc_C5BBD7: FFree1Str var_F0
  loc_C5BBDA: FFree1Var var_BC = ""
  loc_C5BBDD: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5BBE2: PopAdLdVar
  loc_C5BBE3: FLdPr Me
  loc_C5BBE6: MemLdRfVar from_stack_1.global_60
  loc_C5BBE9: LdPrVar
  loc_C5BBEB: LateMemCall
  loc_C5BBF1: LitVarStr var_9C, "        <td class=""Encabezado1"">Expediente:</td>"
  loc_C5BBF6: PopAdLdVar
  loc_C5BBF7: FLdPr Me
  loc_C5BBFA: MemLdRfVar from_stack_1.global_60
  loc_C5BBFD: LdPrVar
  loc_C5BBFF: LateMemCall
  loc_C5BC05: LitStr "        <td class=""Normal1"">"
  loc_C5BC08: FMemLdR4 var_8C(212)
  loc_C5BC0D: ConcatStr
  loc_C5BC0E: FStStrNoPop var_F0
  loc_C5BC11: LitStr "</td>"
  loc_C5BC14: ConcatStr
  loc_C5BC15: CVarStr var_BC
  loc_C5BC18: PopAdLdVar
  loc_C5BC19: FLdPr Me
  loc_C5BC1C: MemLdRfVar from_stack_1.global_60
  loc_C5BC1F: LdPrVar
  loc_C5BC21: LateMemCall
  loc_C5BC27: FFree1Str var_F0
  loc_C5BC2A: FFree1Var var_BC = ""
  loc_C5BC2D: LitVarStr var_9C, "      </tr>"
  loc_C5BC32: PopAdLdVar
  loc_C5BC33: FLdPr Me
  loc_C5BC36: MemLdRfVar from_stack_1.global_60
  loc_C5BC39: LdPrVar
  loc_C5BC3B: LateMemCall
  loc_C5BC41: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5BC46: PopAdLdVar
  loc_C5BC47: FLdPr Me
  loc_C5BC4A: MemLdRfVar from_stack_1.global_60
  loc_C5BC4D: LdPrVar
  loc_C5BC4F: LateMemCall
  loc_C5BC55: LitVarStr var_9C, "       <td class=""Encabezado1"">Libro:</td>"
  loc_C5BC5A: PopAdLdVar
  loc_C5BC5B: FLdPr Me
  loc_C5BC5E: MemLdRfVar from_stack_1.global_60
  loc_C5BC61: LdPrVar
  loc_C5BC63: LateMemCall
  loc_C5BC69: LitStr "        <td class=""Normal1"">"
  loc_C5BC6C: FMemLdR4 var_8C(220)
  loc_C5BC71: ConcatStr
  loc_C5BC72: FStStrNoPop var_F0
  loc_C5BC75: LitStr "</td>"
  loc_C5BC78: ConcatStr
  loc_C5BC79: CVarStr var_BC
  loc_C5BC7C: PopAdLdVar
  loc_C5BC7D: FLdPr Me
  loc_C5BC80: MemLdRfVar from_stack_1.global_60
  loc_C5BC83: LdPrVar
  loc_C5BC85: LateMemCall
  loc_C5BC8B: FFree1Str var_F0
  loc_C5BC8E: FFree1Var var_BC = ""
  loc_C5BC91: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5BC96: PopAdLdVar
  loc_C5BC97: FLdPr Me
  loc_C5BC9A: MemLdRfVar from_stack_1.global_60
  loc_C5BC9D: LdPrVar
  loc_C5BC9F: LateMemCall
  loc_C5BCA5: LitVarStr var_9C, "        <td class=""Encabezado1"">Clasificación:</td>"
  loc_C5BCAA: PopAdLdVar
  loc_C5BCAB: FLdPr Me
  loc_C5BCAE: MemLdRfVar from_stack_1.global_60
  loc_C5BCB1: LdPrVar
  loc_C5BCB3: LateMemCall
  loc_C5BCB9: LitStr "        <td class=""Normal1"">"
  loc_C5BCBC: FMemLdR4 var_8C(224)
  loc_C5BCC1: ConcatStr
  loc_C5BCC2: FStStrNoPop var_F0
  loc_C5BCC5: LitStr "</td>"
  loc_C5BCC8: ConcatStr
  loc_C5BCC9: CVarStr var_BC
  loc_C5BCCC: PopAdLdVar
  loc_C5BCCD: FLdPr Me
  loc_C5BCD0: MemLdRfVar from_stack_1.global_60
  loc_C5BCD3: LdPrVar
  loc_C5BCD5: LateMemCall
  loc_C5BCDB: FFree1Str var_F0
  loc_C5BCDE: FFree1Var var_BC = ""
  loc_C5BCE1: LitVarStr var_9C, "      </tr>"
  loc_C5BCE6: PopAdLdVar
  loc_C5BCE7: FLdPr Me
  loc_C5BCEA: MemLdRfVar from_stack_1.global_60
  loc_C5BCED: LdPrVar
  loc_C5BCEF: LateMemCall
  loc_C5BCF5: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5BCFA: PopAdLdVar
  loc_C5BCFB: FLdPr Me
  loc_C5BCFE: MemLdRfVar from_stack_1.global_60
  loc_C5BD01: LdPrVar
  loc_C5BD03: LateMemCall
  loc_C5BD09: LitVarStr var_9C, "       <td class=""Encabezado1"">Expediente:</td>"
  loc_C5BD0E: PopAdLdVar
  loc_C5BD0F: FLdPr Me
  loc_C5BD12: MemLdRfVar from_stack_1.global_60
  loc_C5BD15: LdPrVar
  loc_C5BD17: LateMemCall
  loc_C5BD1D: LitStr "        <td class=""Normal1"">"
  loc_C5BD20: FMemLdR4 var_8C(228)
  loc_C5BD25: ConcatStr
  loc_C5BD26: FStStrNoPop var_F0
  loc_C5BD29: LitStr "</td>"
  loc_C5BD2C: ConcatStr
  loc_C5BD2D: CVarStr var_BC
  loc_C5BD30: PopAdLdVar
  loc_C5BD31: FLdPr Me
  loc_C5BD34: MemLdRfVar from_stack_1.global_60
  loc_C5BD37: LdPrVar
  loc_C5BD39: LateMemCall
  loc_C5BD3F: FFree1Str var_F0
  loc_C5BD42: FFree1Var var_BC = ""
  loc_C5BD45: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5BD4A: PopAdLdVar
  loc_C5BD4B: FLdPr Me
  loc_C5BD4E: MemLdRfVar from_stack_1.global_60
  loc_C5BD51: LdPrVar
  loc_C5BD53: LateMemCall
  loc_C5BD59: LitVarStr var_9C, "        <td class=""Encabezado1"">Resoluci&oacute;n N&deg;:</td>"
  loc_C5BD5E: PopAdLdVar
  loc_C5BD5F: FLdPr Me
  loc_C5BD62: MemLdRfVar from_stack_1.global_60
  loc_C5BD65: LdPrVar
  loc_C5BD67: LateMemCall
  loc_C5BD6D: LitStr "        <td class=""Normal1"">"
  loc_C5BD70: FMemLdR4 var_8C(232)
  loc_C5BD75: ConcatStr
  loc_C5BD76: FStStrNoPop var_F0
  loc_C5BD79: LitStr "</td>"
  loc_C5BD7C: ConcatStr
  loc_C5BD7D: CVarStr var_BC
  loc_C5BD80: PopAdLdVar
  loc_C5BD81: FLdPr Me
  loc_C5BD84: MemLdRfVar from_stack_1.global_60
  loc_C5BD87: LdPrVar
  loc_C5BD89: LateMemCall
  loc_C5BD8F: FFree1Str var_F0
  loc_C5BD92: FFree1Var var_BC = ""
  loc_C5BD95: LitVarStr var_9C, "      </tr>"
  loc_C5BD9A: PopAdLdVar
  loc_C5BD9B: FLdPr Me
  loc_C5BD9E: MemLdRfVar from_stack_1.global_60
  loc_C5BDA1: LdPrVar
  loc_C5BDA3: LateMemCall
  loc_C5BDA9: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5BDAE: PopAdLdVar
  loc_C5BDAF: FLdPr Me
  loc_C5BDB2: MemLdRfVar from_stack_1.global_60
  loc_C5BDB5: LdPrVar
  loc_C5BDB7: LateMemCall
  loc_C5BDBD: LitVarStr var_9C, "       <td class=""Encabezado1"">F. Transf.:</td>"
  loc_C5BDC2: PopAdLdVar
  loc_C5BDC3: FLdPr Me
  loc_C5BDC6: MemLdRfVar from_stack_1.global_60
  loc_C5BDC9: LdPrVar
  loc_C5BDCB: LateMemCall
  loc_C5BDD1: LitStr "        <td class=""Normal1"">"
  loc_C5BDD4: FMemLdR4 var_8C(236)
  loc_C5BDD9: ConcatStr
  loc_C5BDDA: FStStrNoPop var_F0
  loc_C5BDDD: LitStr "</td>"
  loc_C5BDE0: ConcatStr
  loc_C5BDE1: CVarStr var_BC
  loc_C5BDE4: PopAdLdVar
  loc_C5BDE5: FLdPr Me
  loc_C5BDE8: MemLdRfVar from_stack_1.global_60
  loc_C5BDEB: LdPrVar
  loc_C5BDED: LateMemCall
  loc_C5BDF3: FFree1Str var_F0
  loc_C5BDF6: FFree1Var var_BC = ""
  loc_C5BDF9: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5BDFE: PopAdLdVar
  loc_C5BDFF: FLdPr Me
  loc_C5BE02: MemLdRfVar from_stack_1.global_60
  loc_C5BE05: LdPrVar
  loc_C5BE07: LateMemCall
  loc_C5BE0D: LitVarStr var_9C, "        <td class=""Encabezado1"">Transferencia:</td>"
  loc_C5BE12: PopAdLdVar
  loc_C5BE13: FLdPr Me
  loc_C5BE16: MemLdRfVar from_stack_1.global_60
  loc_C5BE19: LdPrVar
  loc_C5BE1B: LateMemCall
  loc_C5BE21: LitStr "        <td class=""Normal1"">"
  loc_C5BE24: FMemLdR4 var_8C(240)
  loc_C5BE29: ConcatStr
  loc_C5BE2A: FStStrNoPop var_F0
  loc_C5BE2D: LitStr "</td>"
  loc_C5BE30: ConcatStr
  loc_C5BE31: CVarStr var_BC
  loc_C5BE34: PopAdLdVar
  loc_C5BE35: FLdPr Me
  loc_C5BE38: MemLdRfVar from_stack_1.global_60
  loc_C5BE3B: LdPrVar
  loc_C5BE3D: LateMemCall
  loc_C5BE43: FFree1Str var_F0
  loc_C5BE46: FFree1Var var_BC = ""
  loc_C5BE49: LitVarStr var_9C, "      </tr>"
  loc_C5BE4E: PopAdLdVar
  loc_C5BE4F: FLdPr Me
  loc_C5BE52: MemLdRfVar from_stack_1.global_60
  loc_C5BE55: LdPrVar
  loc_C5BE57: LateMemCall
  loc_C5BE5D: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_C5BE62: PopAdLdVar
  loc_C5BE63: FLdPr Me
  loc_C5BE66: MemLdRfVar from_stack_1.global_60
  loc_C5BE69: LdPrVar
  loc_C5BE6B: LateMemCall
  loc_C5BE71: LitVarStr var_9C, "       <td class=""Encabezado1"">Clasif. Mod.:</td>"
  loc_C5BE76: PopAdLdVar
  loc_C5BE77: FLdPr Me
  loc_C5BE7A: MemLdRfVar from_stack_1.global_60
  loc_C5BE7D: LdPrVar
  loc_C5BE7F: LateMemCall
  loc_C5BE85: LitStr "        <td class=""Normal1"">"
  loc_C5BE88: FMemLdR4 var_8C(244)
  loc_C5BE8D: ConcatStr
  loc_C5BE8E: FStStrNoPop var_F0
  loc_C5BE91: LitStr "</td>"
  loc_C5BE94: ConcatStr
  loc_C5BE95: CVarStr var_BC
  loc_C5BE98: PopAdLdVar
  loc_C5BE99: FLdPr Me
  loc_C5BE9C: MemLdRfVar from_stack_1.global_60
  loc_C5BE9F: LdPrVar
  loc_C5BEA1: LateMemCall
  loc_C5BEA7: FFree1Str var_F0
  loc_C5BEAA: FFree1Var var_BC = ""
  loc_C5BEAD: LitVarStr var_9C, "        <td>&nbsp;</td>"
  loc_C5BEB2: PopAdLdVar
  loc_C5BEB3: FLdPr Me
  loc_C5BEB6: MemLdRfVar from_stack_1.global_60
  loc_C5BEB9: LdPrVar
  loc_C5BEBB: LateMemCall
  loc_C5BEC1: LitVarStr var_9C, "        <td class=""Encabezado1"">Resoluci&oacute;n:</td>"
  loc_C5BEC6: PopAdLdVar
  loc_C5BEC7: FLdPr Me
  loc_C5BECA: MemLdRfVar from_stack_1.global_60
  loc_C5BECD: LdPrVar
  loc_C5BECF: LateMemCall
  loc_C5BED5: LitStr "        <td class=""Normal1"">"
  loc_C5BED8: FMemLdR4 var_8C(248)
  loc_C5BEDD: ConcatStr
  loc_C5BEDE: FStStrNoPop var_F0
  loc_C5BEE1: LitStr "</td>"
  loc_C5BEE4: ConcatStr
  loc_C5BEE5: CVarStr var_BC
  loc_C5BEE8: PopAdLdVar
  loc_C5BEE9: FLdPr Me
  loc_C5BEEC: MemLdRfVar from_stack_1.global_60
  loc_C5BEEF: LdPrVar
  loc_C5BEF1: LateMemCall
  loc_C5BEF7: FFree1Str var_F0
  loc_C5BEFA: FFree1Var var_BC = ""
  loc_C5BEFD: LitVarStr var_9C, "      </tr>"
  loc_C5BF02: PopAdLdVar
  loc_C5BF03: FLdPr Me
  loc_C5BF06: MemLdRfVar from_stack_1.global_60
  loc_C5BF09: LdPrVar
  loc_C5BF0B: LateMemCall
  loc_C5BF11: LitVarStr var_9C, "     </table>"
  loc_C5BF16: PopAdLdVar
  loc_C5BF17: FLdPr Me
  loc_C5BF1A: MemLdRfVar from_stack_1.global_60
  loc_C5BF1D: LdPrVar
  loc_C5BF1F: LateMemCall
  loc_C5BF25: LitVarStr var_9C, "    </td>"
  loc_C5BF2A: PopAdLdVar
  loc_C5BF2B: FLdPr Me
  loc_C5BF2E: MemLdRfVar from_stack_1.global_60
  loc_C5BF31: LdPrVar
  loc_C5BF33: LateMemCall
  loc_C5BF39: LitVarStr var_9C, "  </tr>"
  loc_C5BF3E: PopAdLdVar
  loc_C5BF3F: FLdPr Me
  loc_C5BF42: MemLdRfVar from_stack_1.global_60
  loc_C5BF45: LdPrVar
  loc_C5BF47: LateMemCall
  loc_C5BF4D: LitVarStr var_9C, "  <tr valign=""top"" class=""Normal"">"
  loc_C5BF52: PopAdLdVar
  loc_C5BF53: FLdPr Me
  loc_C5BF56: MemLdRfVar from_stack_1.global_60
  loc_C5BF59: LdPrVar
  loc_C5BF5B: LateMemCall
  loc_C5BF61: LitVarStr var_9C, "    <td align=""left"" valign=""top""><hr></td>"
  loc_C5BF66: PopAdLdVar
  loc_C5BF67: FLdPr Me
  loc_C5BF6A: MemLdRfVar from_stack_1.global_60
  loc_C5BF6D: LdPrVar
  loc_C5BF6F: LateMemCall
  loc_C5BF75: LitVarStr var_9C, "  </tr>"
  loc_C5BF7A: PopAdLdVar
  loc_C5BF7B: FLdPr Me
  loc_C5BF7E: MemLdRfVar from_stack_1.global_60
  loc_C5BF81: LdPrVar
  loc_C5BF83: LateMemCall
  loc_C5BF89: LitVarStr var_9C, "</table>"
  loc_C5BF8E: PopAdLdVar
  loc_C5BF8F: FLdPr Me
  loc_C5BF92: MemLdRfVar from_stack_1.global_60
  loc_C5BF95: LdPrVar
  loc_C5BF97: LateMemCall
  loc_C5BF9D: LitI4 0
  loc_C5BFA2: FStR4 var_8C
  loc_C5BFA5: AryUnlock
  loc_C5BFA8: ExitProcHresult
End Function

Private Function Proc_285_25_C572CC() 'C572CC
  'Data Table: 4B5FC4
  loc_C563FC: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C56401: PopAdLdVar
  loc_C56402: FLdPr Me
  loc_C56405: MemLdRfVar from_stack_1.global_60
  loc_C56408: LdPrVar
  loc_C5640A: LateMemCall
  loc_C56410: LitVarStr var_94, "    <td align=""left"" valign=""top""><table border=""0"" align=""left"" cellpadding=""1"" cellspacing=""4"">"
  loc_C56415: PopAdLdVar
  loc_C56416: FLdPr Me
  loc_C56419: MemLdRfVar from_stack_1.global_60
  loc_C5641C: LdPrVar
  loc_C5641E: LateMemCall
  loc_C56424: LitI4 1
  loc_C56429: FLdPr Me
  loc_C5642C: MemLdStr global_88
  loc_C5642F: AryLock
  loc_C56432: Ary1LdRf
  loc_C56433: FStR4 var_AC
  loc_C56436: LitVarStr var_94, "      <tr>"
  loc_C5643B: PopAdLdVar
  loc_C5643C: FLdPr Me
  loc_C5643F: MemLdRfVar from_stack_1.global_60
  loc_C56442: LdPrVar
  loc_C56444: LateMemCall
  loc_C5644A: LitVarStr var_94, "        <th width=""115"" align=""right"" valign=""top"" class=""Encabezado1"">Ficha:</th>"
  loc_C5644F: PopAdLdVar
  loc_C56450: FLdPr Me
  loc_C56453: MemLdRfVar from_stack_1.global_60
  loc_C56456: LdPrVar
  loc_C56458: LateMemCall
  loc_C5645E: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56461: FMemLdR4 var_AC(0)
  loc_C56466: ConcatStr
  loc_C56467: FStStrNoPop var_B0
  loc_C5646A: LitStr "</th>"
  loc_C5646D: ConcatStr
  loc_C5646E: CVarStr var_C0
  loc_C56471: PopAdLdVar
  loc_C56472: FLdPr Me
  loc_C56475: MemLdRfVar from_stack_1.global_60
  loc_C56478: LdPrVar
  loc_C5647A: LateMemCall
  loc_C56480: FFree1Str var_B0
  loc_C56483: FFree1Var var_C0 = ""
  loc_C56486: LitVarStr var_94, "      </tr>"
  loc_C5648B: PopAdLdVar
  loc_C5648C: FLdPr Me
  loc_C5648F: MemLdRfVar from_stack_1.global_60
  loc_C56492: LdPrVar
  loc_C56494: LateMemCall
  loc_C5649A: LitVarStr var_94, "      <tr>"
  loc_C5649F: PopAdLdVar
  loc_C564A0: FLdPr Me
  loc_C564A3: MemLdRfVar from_stack_1.global_60
  loc_C564A6: LdPrVar
  loc_C564A8: LateMemCall
  loc_C564AE: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Titular:</th>"
  loc_C564B3: PopAdLdVar
  loc_C564B4: FLdPr Me
  loc_C564B7: MemLdRfVar from_stack_1.global_60
  loc_C564BA: LdPrVar
  loc_C564BC: LateMemCall
  loc_C564C2: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C564C5: FMemLdR4 var_AC(12)
  loc_C564CA: ConcatStr
  loc_C564CB: FStStrNoPop var_B0
  loc_C564CE: LitStr " "
  loc_C564D1: ConcatStr
  loc_C564D2: FStStrNoPop var_C4
  loc_C564D5: FMemLdR4 var_AC(16)
  loc_C564DA: ConcatStr
  loc_C564DB: FStStrNoPop var_C8
  loc_C564DE: LitStr "</th>"
  loc_C564E1: ConcatStr
  loc_C564E2: CVarStr var_C0
  loc_C564E5: PopAdLdVar
  loc_C564E6: FLdPr Me
  loc_C564E9: MemLdRfVar from_stack_1.global_60
  loc_C564EC: LdPrVar
  loc_C564EE: LateMemCall
  loc_C564F4: FFreeStr var_B0 = "": var_C4 = ""
  loc_C564FD: FFree1Var var_C0 = ""
  loc_C56500: LitVarStr var_94, "      </tr>"
  loc_C56505: PopAdLdVar
  loc_C56506: FLdPr Me
  loc_C56509: MemLdRfVar from_stack_1.global_60
  loc_C5650C: LdPrVar
  loc_C5650E: LateMemCall
  loc_C56514: LitVarStr var_94, "      <tr>"
  loc_C56519: PopAdLdVar
  loc_C5651A: FLdPr Me
  loc_C5651D: MemLdRfVar from_stack_1.global_60
  loc_C56520: LdPrVar
  loc_C56522: LateMemCall
  loc_C56528: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Estado:</th>"
  loc_C5652D: PopAdLdVar
  loc_C5652E: FLdPr Me
  loc_C56531: MemLdRfVar from_stack_1.global_60
  loc_C56534: LdPrVar
  loc_C56536: LateMemCall
  loc_C5653C: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C5653F: FMemLdR4 var_AC(32)
  loc_C56544: ConcatStr
  loc_C56545: FStStrNoPop var_B0
  loc_C56548: LitStr "</th>"
  loc_C5654B: ConcatStr
  loc_C5654C: CVarStr var_C0
  loc_C5654F: PopAdLdVar
  loc_C56550: FLdPr Me
  loc_C56553: MemLdRfVar from_stack_1.global_60
  loc_C56556: LdPrVar
  loc_C56558: LateMemCall
  loc_C5655E: FFree1Str var_B0
  loc_C56561: FFree1Var var_C0 = ""
  loc_C56564: LitVarStr var_94, "      </tr>"
  loc_C56569: PopAdLdVar
  loc_C5656A: FLdPr Me
  loc_C5656D: MemLdRfVar from_stack_1.global_60
  loc_C56570: LdPrVar
  loc_C56572: LateMemCall
  loc_C56578: LitVarStr var_94, "      <tr>"
  loc_C5657D: PopAdLdVar
  loc_C5657E: FLdPr Me
  loc_C56581: MemLdRfVar from_stack_1.global_60
  loc_C56584: LdPrVar
  loc_C56586: LateMemCall
  loc_C5658C: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Calle:</th>"
  loc_C56591: PopAdLdVar
  loc_C56592: FLdPr Me
  loc_C56595: MemLdRfVar from_stack_1.global_60
  loc_C56598: LdPrVar
  loc_C5659A: LateMemCall
  loc_C565A0: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C565A3: FMemLdR4 var_AC(40)
  loc_C565A8: ConcatStr
  loc_C565A9: FStStrNoPop var_B0
  loc_C565AC: LitStr " "
  loc_C565AF: ConcatStr
  loc_C565B0: FStStrNoPop var_C4
  loc_C565B3: FMemLdR4 var_AC(44)
  loc_C565B8: ConcatStr
  loc_C565B9: FStStrNoPop var_C8
  loc_C565BC: LitStr "</th>"
  loc_C565BF: ConcatStr
  loc_C565C0: CVarStr var_C0
  loc_C565C3: PopAdLdVar
  loc_C565C4: FLdPr Me
  loc_C565C7: MemLdRfVar from_stack_1.global_60
  loc_C565CA: LdPrVar
  loc_C565CC: LateMemCall
  loc_C565D2: FFreeStr var_B0 = "": var_C4 = ""
  loc_C565DB: FFree1Var var_C0 = ""
  loc_C565DE: LitVarStr var_94, "      </tr>"
  loc_C565E3: PopAdLdVar
  loc_C565E4: FLdPr Me
  loc_C565E7: MemLdRfVar from_stack_1.global_60
  loc_C565EA: LdPrVar
  loc_C565EC: LateMemCall
  loc_C565F2: LitVarStr var_94, "      <tr>"
  loc_C565F7: PopAdLdVar
  loc_C565F8: FLdPr Me
  loc_C565FB: MemLdRfVar from_stack_1.global_60
  loc_C565FE: LdPrVar
  loc_C56600: LateMemCall
  loc_C56606: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Barrio:</th>"
  loc_C5660B: PopAdLdVar
  loc_C5660C: FLdPr Me
  loc_C5660F: MemLdRfVar from_stack_1.global_60
  loc_C56612: LdPrVar
  loc_C56614: LateMemCall
  loc_C5661A: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C5661D: FMemLdR4 var_AC(56)
  loc_C56622: ConcatStr
  loc_C56623: FStStrNoPop var_B0
  loc_C56626: LitStr " "
  loc_C56629: ConcatStr
  loc_C5662A: FStStrNoPop var_C4
  loc_C5662D: FMemLdR4 var_AC(60)
  loc_C56632: ConcatStr
  loc_C56633: FStStrNoPop var_C8
  loc_C56636: LitStr "</th>"
  loc_C56639: ConcatStr
  loc_C5663A: CVarStr var_C0
  loc_C5663D: PopAdLdVar
  loc_C5663E: FLdPr Me
  loc_C56641: MemLdRfVar from_stack_1.global_60
  loc_C56644: LdPrVar
  loc_C56646: LateMemCall
  loc_C5664C: FFreeStr var_B0 = "": var_C4 = ""
  loc_C56655: FFree1Var var_C0 = ""
  loc_C56658: LitVarStr var_94, "      </tr>"
  loc_C5665D: PopAdLdVar
  loc_C5665E: FLdPr Me
  loc_C56661: MemLdRfVar from_stack_1.global_60
  loc_C56664: LdPrVar
  loc_C56666: LateMemCall
  loc_C5666C: LitVarStr var_94, "      <tr>"
  loc_C56671: PopAdLdVar
  loc_C56672: FLdPr Me
  loc_C56675: MemLdRfVar from_stack_1.global_60
  loc_C56678: LdPrVar
  loc_C5667A: LateMemCall
  loc_C56680: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Ubicación:</th>"
  loc_C56685: PopAdLdVar
  loc_C56686: FLdPr Me
  loc_C56689: MemLdRfVar from_stack_1.global_60
  loc_C5668C: LdPrVar
  loc_C5668E: LateMemCall
  loc_C56694: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56697: FMemLdR4 var_AC(84)
  loc_C5669C: ConcatStr
  loc_C5669D: FStStrNoPop var_B0
  loc_C566A0: LitStr " "
  loc_C566A3: ConcatStr
  loc_C566A4: FStStrNoPop var_C4
  loc_C566A7: FMemLdR4 var_AC(60)
  loc_C566AC: ConcatStr
  loc_C566AD: FStStrNoPop var_C8
  loc_C566B0: LitStr "</th>"
  loc_C566B3: ConcatStr
  loc_C566B4: CVarStr var_C0
  loc_C566B7: PopAdLdVar
  loc_C566B8: FLdPr Me
  loc_C566BB: MemLdRfVar from_stack_1.global_60
  loc_C566BE: LdPrVar
  loc_C566C0: LateMemCall
  loc_C566C6: FFreeStr var_B0 = "": var_C4 = ""
  loc_C566CF: FFree1Var var_C0 = ""
  loc_C566D2: LitVarStr var_94, "      </tr>"
  loc_C566D7: PopAdLdVar
  loc_C566D8: FLdPr Me
  loc_C566DB: MemLdRfVar from_stack_1.global_60
  loc_C566DE: LdPrVar
  loc_C566E0: LateMemCall
  loc_C566E6: LitVarStr var_94, "      <tr>"
  loc_C566EB: PopAdLdVar
  loc_C566EC: FLdPr Me
  loc_C566EF: MemLdRfVar from_stack_1.global_60
  loc_C566F2: LdPrVar
  loc_C566F4: LateMemCall
  loc_C566FA: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Localidad:</th>"
  loc_C566FF: PopAdLdVar
  loc_C56700: FLdPr Me
  loc_C56703: MemLdRfVar from_stack_1.global_60
  loc_C56706: LdPrVar
  loc_C56708: LateMemCall
  loc_C5670E: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56711: FMemLdR4 var_AC(92)
  loc_C56716: ConcatStr
  loc_C56717: FStStrNoPop var_B0
  loc_C5671A: LitStr " "
  loc_C5671D: ConcatStr
  loc_C5671E: FStStrNoPop var_C4
  loc_C56721: FMemLdR4 var_AC(96)
  loc_C56726: ConcatStr
  loc_C56727: FStStrNoPop var_C8
  loc_C5672A: LitStr "</th>"
  loc_C5672D: ConcatStr
  loc_C5672E: CVarStr var_C0
  loc_C56731: PopAdLdVar
  loc_C56732: FLdPr Me
  loc_C56735: MemLdRfVar from_stack_1.global_60
  loc_C56738: LdPrVar
  loc_C5673A: LateMemCall
  loc_C56740: FFreeStr var_B0 = "": var_C4 = ""
  loc_C56749: FFree1Var var_C0 = ""
  loc_C5674C: LitVarStr var_94, "      </tr>"
  loc_C56751: PopAdLdVar
  loc_C56752: FLdPr Me
  loc_C56755: MemLdRfVar from_stack_1.global_60
  loc_C56758: LdPrVar
  loc_C5675A: LateMemCall
  loc_C56760: LitVarStr var_94, "      <tr>"
  loc_C56765: PopAdLdVar
  loc_C56766: FLdPr Me
  loc_C56769: MemLdRfVar from_stack_1.global_60
  loc_C5676C: LdPrVar
  loc_C5676E: LateMemCall
  loc_C56774: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Calle:</th>"
  loc_C56779: PopAdLdVar
  loc_C5677A: FLdPr Me
  loc_C5677D: MemLdRfVar from_stack_1.global_60
  loc_C56780: LdPrVar
  loc_C56782: LateMemCall
  loc_C56788: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C5678B: FMemLdR4 var_AC(108)
  loc_C56790: ConcatStr
  loc_C56791: FStStrNoPop var_B0
  loc_C56794: LitStr " "
  loc_C56797: ConcatStr
  loc_C56798: FStStrNoPop var_C4
  loc_C5679B: FMemLdR4 var_AC(112)
  loc_C567A0: ConcatStr
  loc_C567A1: FStStrNoPop var_C8
  loc_C567A4: LitStr "</th>"
  loc_C567A7: ConcatStr
  loc_C567A8: CVarStr var_C0
  loc_C567AB: PopAdLdVar
  loc_C567AC: FLdPr Me
  loc_C567AF: MemLdRfVar from_stack_1.global_60
  loc_C567B2: LdPrVar
  loc_C567B4: LateMemCall
  loc_C567BA: FFreeStr var_B0 = "": var_C4 = ""
  loc_C567C3: FFree1Var var_C0 = ""
  loc_C567C6: LitVarStr var_94, "      </tr>"
  loc_C567CB: PopAdLdVar
  loc_C567CC: FLdPr Me
  loc_C567CF: MemLdRfVar from_stack_1.global_60
  loc_C567D2: LdPrVar
  loc_C567D4: LateMemCall
  loc_C567DA: LitVarStr var_94, "      <tr>"
  loc_C567DF: PopAdLdVar
  loc_C567E0: FLdPr Me
  loc_C567E3: MemLdRfVar from_stack_1.global_60
  loc_C567E6: LdPrVar
  loc_C567E8: LateMemCall
  loc_C567EE: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Barrio:</th>"
  loc_C567F3: PopAdLdVar
  loc_C567F4: FLdPr Me
  loc_C567F7: MemLdRfVar from_stack_1.global_60
  loc_C567FA: LdPrVar
  loc_C567FC: LateMemCall
  loc_C56802: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56805: FMemLdR4 var_AC(148)
  loc_C5680A: ConcatStr
  loc_C5680B: FStStrNoPop var_B0
  loc_C5680E: LitStr " "
  loc_C56811: ConcatStr
  loc_C56812: FStStrNoPop var_C4
  loc_C56815: FMemLdR4 var_AC(152)
  loc_C5681A: ConcatStr
  loc_C5681B: FStStrNoPop var_C8
  loc_C5681E: LitStr "</th>"
  loc_C56821: ConcatStr
  loc_C56822: CVarStr var_C0
  loc_C56825: PopAdLdVar
  loc_C56826: FLdPr Me
  loc_C56829: MemLdRfVar from_stack_1.global_60
  loc_C5682C: LdPrVar
  loc_C5682E: LateMemCall
  loc_C56834: FFreeStr var_B0 = "": var_C4 = ""
  loc_C5683D: FFree1Var var_C0 = ""
  loc_C56840: LitVarStr var_94, "      </tr>"
  loc_C56845: PopAdLdVar
  loc_C56846: FLdPr Me
  loc_C56849: MemLdRfVar from_stack_1.global_60
  loc_C5684C: LdPrVar
  loc_C5684E: LateMemCall
  loc_C56854: LitVarStr var_94, "      <tr>"
  loc_C56859: PopAdLdVar
  loc_C5685A: FLdPr Me
  loc_C5685D: MemLdRfVar from_stack_1.global_60
  loc_C56860: LdPrVar
  loc_C56862: LateMemCall
  loc_C56868: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Ubicación:</th>"
  loc_C5686D: PopAdLdVar
  loc_C5686E: FLdPr Me
  loc_C56871: MemLdRfVar from_stack_1.global_60
  loc_C56874: LdPrVar
  loc_C56876: LateMemCall
  loc_C5687C: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C5687F: FMemLdR4 var_AC(176)
  loc_C56884: ConcatStr
  loc_C56885: FStStrNoPop var_B0
  loc_C56888: LitStr "</th>"
  loc_C5688B: ConcatStr
  loc_C5688C: CVarStr var_C0
  loc_C5688F: PopAdLdVar
  loc_C56890: FLdPr Me
  loc_C56893: MemLdRfVar from_stack_1.global_60
  loc_C56896: LdPrVar
  loc_C56898: LateMemCall
  loc_C5689E: FFree1Str var_B0
  loc_C568A1: FFree1Var var_C0 = ""
  loc_C568A4: LitVarStr var_94, "      </tr>"
  loc_C568A9: PopAdLdVar
  loc_C568AA: FLdPr Me
  loc_C568AD: MemLdRfVar from_stack_1.global_60
  loc_C568B0: LdPrVar
  loc_C568B2: LateMemCall
  loc_C568B8: LitVarStr var_94, "      <tr>"
  loc_C568BD: PopAdLdVar
  loc_C568BE: FLdPr Me
  loc_C568C1: MemLdRfVar from_stack_1.global_60
  loc_C568C4: LdPrVar
  loc_C568C6: LateMemCall
  loc_C568CC: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Localidad:</th>"
  loc_C568D1: PopAdLdVar
  loc_C568D2: FLdPr Me
  loc_C568D5: MemLdRfVar from_stack_1.global_60
  loc_C568D8: LdPrVar
  loc_C568DA: LateMemCall
  loc_C568E0: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C568E3: FMemLdR4 var_AC(184)
  loc_C568E8: ConcatStr
  loc_C568E9: FStStrNoPop var_B0
  loc_C568EC: LitStr " "
  loc_C568EF: ConcatStr
  loc_C568F0: FStStrNoPop var_C4
  loc_C568F3: FMemLdR4 var_AC(188)
  loc_C568F8: ConcatStr
  loc_C568F9: FStStrNoPop var_C8
  loc_C568FC: LitStr "</th>"
  loc_C568FF: ConcatStr
  loc_C56900: CVarStr var_C0
  loc_C56903: PopAdLdVar
  loc_C56904: FLdPr Me
  loc_C56907: MemLdRfVar from_stack_1.global_60
  loc_C5690A: LdPrVar
  loc_C5690C: LateMemCall
  loc_C56912: FFreeStr var_B0 = "": var_C4 = ""
  loc_C5691B: FFree1Var var_C0 = ""
  loc_C5691E: LitVarStr var_94, "      </tr>"
  loc_C56923: PopAdLdVar
  loc_C56924: FLdPr Me
  loc_C56927: MemLdRfVar from_stack_1.global_60
  loc_C5692A: LdPrVar
  loc_C5692C: LateMemCall
  loc_C56932: LitVarStr var_94, "      <tr>"
  loc_C56937: PopAdLdVar
  loc_C56938: FLdPr Me
  loc_C5693B: MemLdRfVar from_stack_1.global_60
  loc_C5693E: LdPrVar
  loc_C56940: LateMemCall
  loc_C56946: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Apertura:</th>"
  loc_C5694B: PopAdLdVar
  loc_C5694C: FLdPr Me
  loc_C5694F: MemLdRfVar from_stack_1.global_60
  loc_C56952: LdPrVar
  loc_C56954: LateMemCall
  loc_C5695A: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C5695D: FMemLdR4 var_AC(200)
  loc_C56962: ConcatStr
  loc_C56963: FStStrNoPop var_B0
  loc_C56966: LitStr "</th>"
  loc_C56969: ConcatStr
  loc_C5696A: CVarStr var_C0
  loc_C5696D: PopAdLdVar
  loc_C5696E: FLdPr Me
  loc_C56971: MemLdRfVar from_stack_1.global_60
  loc_C56974: LdPrVar
  loc_C56976: LateMemCall
  loc_C5697C: FFree1Str var_B0
  loc_C5697F: FFree1Var var_C0 = ""
  loc_C56982: LitVarStr var_94, "      </tr>"
  loc_C56987: PopAdLdVar
  loc_C56988: FLdPr Me
  loc_C5698B: MemLdRfVar from_stack_1.global_60
  loc_C5698E: LdPrVar
  loc_C56990: LateMemCall
  loc_C56996: LitVarStr var_94, "      <tr>"
  loc_C5699B: PopAdLdVar
  loc_C5699C: FLdPr Me
  loc_C5699F: MemLdRfVar from_stack_1.global_60
  loc_C569A2: LdPrVar
  loc_C569A4: LateMemCall
  loc_C569AA: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Baja:</th>"
  loc_C569AF: PopAdLdVar
  loc_C569B0: FLdPr Me
  loc_C569B3: MemLdRfVar from_stack_1.global_60
  loc_C569B6: LdPrVar
  loc_C569B8: LateMemCall
  loc_C569BE: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C569C1: FMemLdR4 var_AC(208)
  loc_C569C6: ConcatStr
  loc_C569C7: FStStrNoPop var_B0
  loc_C569CA: LitStr "</th>"
  loc_C569CD: ConcatStr
  loc_C569CE: CVarStr var_C0
  loc_C569D1: PopAdLdVar
  loc_C569D2: FLdPr Me
  loc_C569D5: MemLdRfVar from_stack_1.global_60
  loc_C569D8: LdPrVar
  loc_C569DA: LateMemCall
  loc_C569E0: FFree1Str var_B0
  loc_C569E3: FFree1Var var_C0 = ""
  loc_C569E6: LitVarStr var_94, "      </tr>"
  loc_C569EB: PopAdLdVar
  loc_C569EC: FLdPr Me
  loc_C569EF: MemLdRfVar from_stack_1.global_60
  loc_C569F2: LdPrVar
  loc_C569F4: LateMemCall
  loc_C569FA: LitVarStr var_94, "        <tr>"
  loc_C569FF: PopAdLdVar
  loc_C56A00: FLdPr Me
  loc_C56A03: MemLdRfVar from_stack_1.global_60
  loc_C56A06: LdPrVar
  loc_C56A08: LateMemCall
  loc_C56A0E: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Libro:</th>"
  loc_C56A13: PopAdLdVar
  loc_C56A14: FLdPr Me
  loc_C56A17: MemLdRfVar from_stack_1.global_60
  loc_C56A1A: LdPrVar
  loc_C56A1C: LateMemCall
  loc_C56A22: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56A25: FMemLdR4 var_AC(220)
  loc_C56A2A: ConcatStr
  loc_C56A2B: FStStrNoPop var_B0
  loc_C56A2E: LitStr "</th>"
  loc_C56A31: ConcatStr
  loc_C56A32: CVarStr var_C0
  loc_C56A35: PopAdLdVar
  loc_C56A36: FLdPr Me
  loc_C56A39: MemLdRfVar from_stack_1.global_60
  loc_C56A3C: LdPrVar
  loc_C56A3E: LateMemCall
  loc_C56A44: FFree1Str var_B0
  loc_C56A47: FFree1Var var_C0 = ""
  loc_C56A4A: LitVarStr var_94, "        </tr>"
  loc_C56A4F: PopAdLdVar
  loc_C56A50: FLdPr Me
  loc_C56A53: MemLdRfVar from_stack_1.global_60
  loc_C56A56: LdPrVar
  loc_C56A58: LateMemCall
  loc_C56A5E: LitVarStr var_94, "        <tr>"
  loc_C56A63: PopAdLdVar
  loc_C56A64: FLdPr Me
  loc_C56A67: MemLdRfVar from_stack_1.global_60
  loc_C56A6A: LdPrVar
  loc_C56A6C: LateMemCall
  loc_C56A72: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Expediente:</th>"
  loc_C56A77: PopAdLdVar
  loc_C56A78: FLdPr Me
  loc_C56A7B: MemLdRfVar from_stack_1.global_60
  loc_C56A7E: LdPrVar
  loc_C56A80: LateMemCall
  loc_C56A86: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56A89: FMemLdR4 var_AC(228)
  loc_C56A8E: ConcatStr
  loc_C56A8F: FStStrNoPop var_B0
  loc_C56A92: LitStr "</th>"
  loc_C56A95: ConcatStr
  loc_C56A96: CVarStr var_C0
  loc_C56A99: PopAdLdVar
  loc_C56A9A: FLdPr Me
  loc_C56A9D: MemLdRfVar from_stack_1.global_60
  loc_C56AA0: LdPrVar
  loc_C56AA2: LateMemCall
  loc_C56AA8: FFree1Str var_B0
  loc_C56AAB: FFree1Var var_C0 = ""
  loc_C56AAE: LitVarStr var_94, "        </tr>"
  loc_C56AB3: PopAdLdVar
  loc_C56AB4: FLdPr Me
  loc_C56AB7: MemLdRfVar from_stack_1.global_60
  loc_C56ABA: LdPrVar
  loc_C56ABC: LateMemCall
  loc_C56AC2: LitVarStr var_94, "        <tr>"
  loc_C56AC7: PopAdLdVar
  loc_C56AC8: FLdPr Me
  loc_C56ACB: MemLdRfVar from_stack_1.global_60
  loc_C56ACE: LdPrVar
  loc_C56AD0: LateMemCall
  loc_C56AD6: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">F.Transf:</th>"
  loc_C56ADB: PopAdLdVar
  loc_C56ADC: FLdPr Me
  loc_C56ADF: MemLdRfVar from_stack_1.global_60
  loc_C56AE2: LdPrVar
  loc_C56AE4: LateMemCall
  loc_C56AEA: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56AED: FMemLdR4 var_AC(236)
  loc_C56AF2: ConcatStr
  loc_C56AF3: FStStrNoPop var_B0
  loc_C56AF6: LitStr "</th>"
  loc_C56AF9: ConcatStr
  loc_C56AFA: CVarStr var_C0
  loc_C56AFD: PopAdLdVar
  loc_C56AFE: FLdPr Me
  loc_C56B01: MemLdRfVar from_stack_1.global_60
  loc_C56B04: LdPrVar
  loc_C56B06: LateMemCall
  loc_C56B0C: FFree1Str var_B0
  loc_C56B0F: FFree1Var var_C0 = ""
  loc_C56B12: LitVarStr var_94, "        </tr>"
  loc_C56B17: PopAdLdVar
  loc_C56B18: FLdPr Me
  loc_C56B1B: MemLdRfVar from_stack_1.global_60
  loc_C56B1E: LdPrVar
  loc_C56B20: LateMemCall
  loc_C56B26: LitVarStr var_94, "        <tr>"
  loc_C56B2B: PopAdLdVar
  loc_C56B2C: FLdPr Me
  loc_C56B2F: MemLdRfVar from_stack_1.global_60
  loc_C56B32: LdPrVar
  loc_C56B34: LateMemCall
  loc_C56B3A: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Clasif. Mod.:</th>"
  loc_C56B3F: PopAdLdVar
  loc_C56B40: FLdPr Me
  loc_C56B43: MemLdRfVar from_stack_1.global_60
  loc_C56B46: LdPrVar
  loc_C56B48: LateMemCall
  loc_C56B4E: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56B51: FMemLdR4 var_AC(244)
  loc_C56B56: ConcatStr
  loc_C56B57: FStStrNoPop var_B0
  loc_C56B5A: LitStr "</th>"
  loc_C56B5D: ConcatStr
  loc_C56B5E: CVarStr var_C0
  loc_C56B61: PopAdLdVar
  loc_C56B62: FLdPr Me
  loc_C56B65: MemLdRfVar from_stack_1.global_60
  loc_C56B68: LdPrVar
  loc_C56B6A: LateMemCall
  loc_C56B70: FFree1Str var_B0
  loc_C56B73: FFree1Var var_C0 = ""
  loc_C56B76: LitVarStr var_94, "        </tr>"
  loc_C56B7B: PopAdLdVar
  loc_C56B7C: FLdPr Me
  loc_C56B7F: MemLdRfVar from_stack_1.global_60
  loc_C56B82: LdPrVar
  loc_C56B84: LateMemCall
  loc_C56B8A: LitVarStr var_94, "    </table>"
  loc_C56B8F: PopAdLdVar
  loc_C56B90: FLdPr Me
  loc_C56B93: MemLdRfVar from_stack_1.global_60
  loc_C56B96: LdPrVar
  loc_C56B98: LateMemCall
  loc_C56B9E: LitVarStr var_94, "      <table border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_C56BA3: PopAdLdVar
  loc_C56BA4: FLdPr Me
  loc_C56BA7: MemLdRfVar from_stack_1.global_60
  loc_C56BAA: LdPrVar
  loc_C56BAC: LateMemCall
  loc_C56BB2: LitVarStr var_94, "        <tr>"
  loc_C56BB7: PopAdLdVar
  loc_C56BB8: FLdPr Me
  loc_C56BBB: MemLdRfVar from_stack_1.global_60
  loc_C56BBE: LdPrVar
  loc_C56BC0: LateMemCall
  loc_C56BC6: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Razon/Fantasia:</th>"
  loc_C56BCB: PopAdLdVar
  loc_C56BCC: FLdPr Me
  loc_C56BCF: MemLdRfVar from_stack_1.global_60
  loc_C56BD2: LdPrVar
  loc_C56BD4: LateMemCall
  loc_C56BDA: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56BDD: FMemLdR4 var_AC(8)
  loc_C56BE2: ConcatStr
  loc_C56BE3: FStStrNoPop var_B0
  loc_C56BE6: LitStr "</th>"
  loc_C56BE9: ConcatStr
  loc_C56BEA: CVarStr var_C0
  loc_C56BED: PopAdLdVar
  loc_C56BEE: FLdPr Me
  loc_C56BF1: MemLdRfVar from_stack_1.global_60
  loc_C56BF4: LdPrVar
  loc_C56BF6: LateMemCall
  loc_C56BFC: FFree1Str var_B0
  loc_C56BFF: FFree1Var var_C0 = ""
  loc_C56C02: LitVarStr var_94, "        </tr>"
  loc_C56C07: PopAdLdVar
  loc_C56C08: FLdPr Me
  loc_C56C0B: MemLdRfVar from_stack_1.global_60
  loc_C56C0E: LdPrVar
  loc_C56C10: LateMemCall
  loc_C56C16: LitVarStr var_94, "        <tr>"
  loc_C56C1B: PopAdLdVar
  loc_C56C1C: FLdPr Me
  loc_C56C1F: MemLdRfVar from_stack_1.global_60
  loc_C56C22: LdPrVar
  loc_C56C24: LateMemCall
  loc_C56C2A: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Padron:</th>"
  loc_C56C2F: PopAdLdVar
  loc_C56C30: FLdPr Me
  loc_C56C33: MemLdRfVar from_stack_1.global_60
  loc_C56C36: LdPrVar
  loc_C56C38: LateMemCall
  loc_C56C3E: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56C41: FMemLdR4 var_AC(20)
  loc_C56C46: ConcatStr
  loc_C56C47: FStStrNoPop var_B0
  loc_C56C4A: LitStr " "
  loc_C56C4D: ConcatStr
  loc_C56C4E: FStStrNoPop var_C4
  loc_C56C51: FMemLdR4 var_AC(24)
  loc_C56C56: ConcatStr
  loc_C56C57: FStStrNoPop var_C8
  loc_C56C5A: LitStr "</th>"
  loc_C56C5D: ConcatStr
  loc_C56C5E: CVarStr var_C0
  loc_C56C61: PopAdLdVar
  loc_C56C62: FLdPr Me
  loc_C56C65: MemLdRfVar from_stack_1.global_60
  loc_C56C68: LdPrVar
  loc_C56C6A: LateMemCall
  loc_C56C70: FFreeStr var_B0 = "": var_C4 = ""
  loc_C56C79: FFree1Var var_C0 = ""
  loc_C56C7C: LitVarStr var_94, "        </tr>"
  loc_C56C81: PopAdLdVar
  loc_C56C82: FLdPr Me
  loc_C56C85: MemLdRfVar from_stack_1.global_60
  loc_C56C88: LdPrVar
  loc_C56C8A: LateMemCall
  loc_C56C90: LitVarStr var_94, "        <tr>"
  loc_C56C95: PopAdLdVar
  loc_C56C96: FLdPr Me
  loc_C56C99: MemLdRfVar from_stack_1.global_60
  loc_C56C9C: LdPrVar
  loc_C56C9E: LateMemCall
  loc_C56CA4: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha Estado:</th>"
  loc_C56CA9: PopAdLdVar
  loc_C56CAA: FLdPr Me
  loc_C56CAD: MemLdRfVar from_stack_1.global_60
  loc_C56CB0: LdPrVar
  loc_C56CB2: LateMemCall
  loc_C56CB8: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56CBB: FMemLdR4 var_AC(36)
  loc_C56CC0: ConcatStr
  loc_C56CC1: FStStrNoPop var_B0
  loc_C56CC4: LitStr "</th>"
  loc_C56CC7: ConcatStr
  loc_C56CC8: CVarStr var_C0
  loc_C56CCB: PopAdLdVar
  loc_C56CCC: FLdPr Me
  loc_C56CCF: MemLdRfVar from_stack_1.global_60
  loc_C56CD2: LdPrVar
  loc_C56CD4: LateMemCall
  loc_C56CDA: FFree1Str var_B0
  loc_C56CDD: FFree1Var var_C0 = ""
  loc_C56CE0: LitVarStr var_94, "        </tr>"
  loc_C56CE5: PopAdLdVar
  loc_C56CE6: FLdPr Me
  loc_C56CE9: MemLdRfVar from_stack_1.global_60
  loc_C56CEC: LdPrVar
  loc_C56CEE: LateMemCall
  loc_C56CF4: LitVarStr var_94, "        <tr>"
  loc_C56CF9: PopAdLdVar
  loc_C56CFA: FLdPr Me
  loc_C56CFD: MemLdRfVar from_stack_1.global_60
  loc_C56D00: LdPrVar
  loc_C56D02: LateMemCall
  loc_C56D08: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Nro:</th>"
  loc_C56D0D: PopAdLdVar
  loc_C56D0E: FLdPr Me
  loc_C56D11: MemLdRfVar from_stack_1.global_60
  loc_C56D14: LdPrVar
  loc_C56D16: LateMemCall
  loc_C56D1C: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56D1F: FMemLdR4 var_AC(48)
  loc_C56D24: ConcatStr
  loc_C56D25: FStStrNoPop var_B0
  loc_C56D28: LitStr "</th>"
  loc_C56D2B: ConcatStr
  loc_C56D2C: CVarStr var_C0
  loc_C56D2F: PopAdLdVar
  loc_C56D30: FLdPr Me
  loc_C56D33: MemLdRfVar from_stack_1.global_60
  loc_C56D36: LdPrVar
  loc_C56D38: LateMemCall
  loc_C56D3E: FFree1Str var_B0
  loc_C56D41: FFree1Var var_C0 = ""
  loc_C56D44: LitVarStr var_94, "        </tr>"
  loc_C56D49: PopAdLdVar
  loc_C56D4A: FLdPr Me
  loc_C56D4D: MemLdRfVar from_stack_1.global_60
  loc_C56D50: LdPrVar
  loc_C56D52: LateMemCall
  loc_C56D58: LitVarStr var_94, "        <tr>"
  loc_C56D5D: PopAdLdVar
  loc_C56D5E: FLdPr Me
  loc_C56D61: MemLdRfVar from_stack_1.global_60
  loc_C56D64: LdPrVar
  loc_C56D66: LateMemCall
  loc_C56D6C: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Manzana/Casa:</th>"
  loc_C56D71: PopAdLdVar
  loc_C56D72: FLdPr Me
  loc_C56D75: MemLdRfVar from_stack_1.global_60
  loc_C56D78: LdPrVar
  loc_C56D7A: LateMemCall
  loc_C56D80: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56D83: FMemLdR4 var_AC(64)
  loc_C56D88: ConcatStr
  loc_C56D89: FStStrNoPop var_B0
  loc_C56D8C: LitStr "/"
  loc_C56D8F: ConcatStr
  loc_C56D90: FStStrNoPop var_C4
  loc_C56D93: FMemLdR4 var_AC(72)
  loc_C56D98: ConcatStr
  loc_C56D99: FStStrNoPop var_C8
  loc_C56D9C: LitStr "</th>"
  loc_C56D9F: ConcatStr
  loc_C56DA0: CVarStr var_C0
  loc_C56DA3: PopAdLdVar
  loc_C56DA4: FLdPr Me
  loc_C56DA7: MemLdRfVar from_stack_1.global_60
  loc_C56DAA: LdPrVar
  loc_C56DAC: LateMemCall
  loc_C56DB2: FFreeStr var_B0 = "": var_C4 = ""
  loc_C56DBB: FFree1Var var_C0 = ""
  loc_C56DBE: LitVarStr var_94, "        </tr>"
  loc_C56DC3: PopAdLdVar
  loc_C56DC4: FLdPr Me
  loc_C56DC7: MemLdRfVar from_stack_1.global_60
  loc_C56DCA: LdPrVar
  loc_C56DCC: LateMemCall
  loc_C56DD2: LitVarStr var_94, "        <tr>"
  loc_C56DD7: PopAdLdVar
  loc_C56DD8: FLdPr Me
  loc_C56DDB: MemLdRfVar from_stack_1.global_60
  loc_C56DDE: LdPrVar
  loc_C56DE0: LateMemCall
  loc_C56DE6: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">VACIO</th>"
  loc_C56DEB: PopAdLdVar
  loc_C56DEC: FLdPr Me
  loc_C56DEF: MemLdRfVar from_stack_1.global_60
  loc_C56DF2: LdPrVar
  loc_C56DF4: LateMemCall
  loc_C56DFA: LitVarStr var_94, "          <th align=""left"" valign=""top"" class=""Normal1""> </th>"
  loc_C56DFF: PopAdLdVar
  loc_C56E00: FLdPr Me
  loc_C56E03: MemLdRfVar from_stack_1.global_60
  loc_C56E06: LdPrVar
  loc_C56E08: LateMemCall
  loc_C56E0E: LitVarStr var_94, "        </tr>"
  loc_C56E13: PopAdLdVar
  loc_C56E14: FLdPr Me
  loc_C56E17: MemLdRfVar from_stack_1.global_60
  loc_C56E1A: LdPrVar
  loc_C56E1C: LateMemCall
  loc_C56E22: LitVarStr var_94, "        <tr>"
  loc_C56E27: PopAdLdVar
  loc_C56E28: FLdPr Me
  loc_C56E2B: MemLdRfVar from_stack_1.global_60
  loc_C56E2E: LdPrVar
  loc_C56E30: LateMemCall
  loc_C56E36: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Cod. Postal:</th>"
  loc_C56E3B: PopAdLdVar
  loc_C56E3C: FLdPr Me
  loc_C56E3F: MemLdRfVar from_stack_1.global_60
  loc_C56E42: LdPrVar
  loc_C56E44: LateMemCall
  loc_C56E4A: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56E4D: FMemLdR4 var_AC(100)
  loc_C56E52: ConcatStr
  loc_C56E53: FStStrNoPop var_B0
  loc_C56E56: LitStr "</th>"
  loc_C56E59: ConcatStr
  loc_C56E5A: CVarStr var_C0
  loc_C56E5D: PopAdLdVar
  loc_C56E5E: FLdPr Me
  loc_C56E61: MemLdRfVar from_stack_1.global_60
  loc_C56E64: LdPrVar
  loc_C56E66: LateMemCall
  loc_C56E6C: FFree1Str var_B0
  loc_C56E6F: FFree1Var var_C0 = ""
  loc_C56E72: LitVarStr var_94, "        </tr>"
  loc_C56E77: PopAdLdVar
  loc_C56E78: FLdPr Me
  loc_C56E7B: MemLdRfVar from_stack_1.global_60
  loc_C56E7E: LdPrVar
  loc_C56E80: LateMemCall
  loc_C56E86: LitVarStr var_94, "        <tr>"
  loc_C56E8B: PopAdLdVar
  loc_C56E8C: FLdPr Me
  loc_C56E8F: MemLdRfVar from_stack_1.global_60
  loc_C56E92: LdPrVar
  loc_C56E94: LateMemCall
  loc_C56E9A: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Nro:</th>"
  loc_C56E9F: PopAdLdVar
  loc_C56EA0: FLdPr Me
  loc_C56EA3: MemLdRfVar from_stack_1.global_60
  loc_C56EA6: LdPrVar
  loc_C56EA8: LateMemCall
  loc_C56EAE: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56EB1: FMemLdR4 var_AC(116)
  loc_C56EB6: ConcatStr
  loc_C56EB7: FStStrNoPop var_B0
  loc_C56EBA: LitStr "</th>"
  loc_C56EBD: ConcatStr
  loc_C56EBE: CVarStr var_C0
  loc_C56EC1: PopAdLdVar
  loc_C56EC2: FLdPr Me
  loc_C56EC5: MemLdRfVar from_stack_1.global_60
  loc_C56EC8: LdPrVar
  loc_C56ECA: LateMemCall
  loc_C56ED0: FFree1Str var_B0
  loc_C56ED3: FFree1Var var_C0 = ""
  loc_C56ED6: LitVarStr var_94, "        </tr>"
  loc_C56EDB: PopAdLdVar
  loc_C56EDC: FLdPr Me
  loc_C56EDF: MemLdRfVar from_stack_1.global_60
  loc_C56EE2: LdPrVar
  loc_C56EE4: LateMemCall
  loc_C56EEA: LitVarStr var_94, "        <tr>"
  loc_C56EEF: PopAdLdVar
  loc_C56EF0: FLdPr Me
  loc_C56EF3: MemLdRfVar from_stack_1.global_60
  loc_C56EF6: LdPrVar
  loc_C56EF8: LateMemCall
  loc_C56EFE: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Manzana/Casa:</th>"
  loc_C56F03: PopAdLdVar
  loc_C56F04: FLdPr Me
  loc_C56F07: MemLdRfVar from_stack_1.global_60
  loc_C56F0A: LdPrVar
  loc_C56F0C: LateMemCall
  loc_C56F12: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56F15: FMemLdR4 var_AC(156)
  loc_C56F1A: ConcatStr
  loc_C56F1B: FStStrNoPop var_B0
  loc_C56F1E: LitStr "/"
  loc_C56F21: ConcatStr
  loc_C56F22: FStStrNoPop var_C4
  loc_C56F25: FMemLdR4 var_AC(164)
  loc_C56F2A: ConcatStr
  loc_C56F2B: FStStrNoPop var_C8
  loc_C56F2E: LitStr "</th>"
  loc_C56F31: ConcatStr
  loc_C56F32: CVarStr var_C0
  loc_C56F35: PopAdLdVar
  loc_C56F36: FLdPr Me
  loc_C56F39: MemLdRfVar from_stack_1.global_60
  loc_C56F3C: LdPrVar
  loc_C56F3E: LateMemCall
  loc_C56F44: FFreeStr var_B0 = "": var_C4 = ""
  loc_C56F4D: FFree1Var var_C0 = ""
  loc_C56F50: LitVarStr var_94, "        </tr>"
  loc_C56F55: PopAdLdVar
  loc_C56F56: FLdPr Me
  loc_C56F59: MemLdRfVar from_stack_1.global_60
  loc_C56F5C: LdPrVar
  loc_C56F5E: LateMemCall
  loc_C56F64: LitVarStr var_94, "        <tr>"
  loc_C56F69: PopAdLdVar
  loc_C56F6A: FLdPr Me
  loc_C56F6D: MemLdRfVar from_stack_1.global_60
  loc_C56F70: LdPrVar
  loc_C56F72: LateMemCall
  loc_C56F78: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">VACIO</th>"
  loc_C56F7D: PopAdLdVar
  loc_C56F7E: FLdPr Me
  loc_C56F81: MemLdRfVar from_stack_1.global_60
  loc_C56F84: LdPrVar
  loc_C56F86: LateMemCall
  loc_C56F8C: LitVarStr var_94, "          <th align=""left"" valign=""top"" class=""Normal1""> </th>"
  loc_C56F91: PopAdLdVar
  loc_C56F92: FLdPr Me
  loc_C56F95: MemLdRfVar from_stack_1.global_60
  loc_C56F98: LdPrVar
  loc_C56F9A: LateMemCall
  loc_C56FA0: LitVarStr var_94, "        </tr>"
  loc_C56FA5: PopAdLdVar
  loc_C56FA6: FLdPr Me
  loc_C56FA9: MemLdRfVar from_stack_1.global_60
  loc_C56FAC: LdPrVar
  loc_C56FAE: LateMemCall
  loc_C56FB4: LitVarStr var_94, "        <tr>"
  loc_C56FB9: PopAdLdVar
  loc_C56FBA: FLdPr Me
  loc_C56FBD: MemLdRfVar from_stack_1.global_60
  loc_C56FC0: LdPrVar
  loc_C56FC2: LateMemCall
  loc_C56FC8: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Cod. Postal:</th>"
  loc_C56FCD: PopAdLdVar
  loc_C56FCE: FLdPr Me
  loc_C56FD1: MemLdRfVar from_stack_1.global_60
  loc_C56FD4: LdPrVar
  loc_C56FD6: LateMemCall
  loc_C56FDC: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C56FDF: FMemLdR4 var_AC(192)
  loc_C56FE4: ConcatStr
  loc_C56FE5: FStStrNoPop var_B0
  loc_C56FE8: LitStr "</th>"
  loc_C56FEB: ConcatStr
  loc_C56FEC: CVarStr var_C0
  loc_C56FEF: PopAdLdVar
  loc_C56FF0: FLdPr Me
  loc_C56FF3: MemLdRfVar from_stack_1.global_60
  loc_C56FF6: LdPrVar
  loc_C56FF8: LateMemCall
  loc_C56FFE: FFree1Str var_B0
  loc_C57001: FFree1Var var_C0 = ""
  loc_C57004: LitVarStr var_94, "        </tr>"
  loc_C57009: PopAdLdVar
  loc_C5700A: FLdPr Me
  loc_C5700D: MemLdRfVar from_stack_1.global_60
  loc_C57010: LdPrVar
  loc_C57012: LateMemCall
  loc_C57018: LitVarStr var_94, "        <tr>"
  loc_C5701D: PopAdLdVar
  loc_C5701E: FLdPr Me
  loc_C57021: MemLdRfVar from_stack_1.global_60
  loc_C57024: LdPrVar
  loc_C57026: LateMemCall
  loc_C5702C: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Expediente:</th>"
  loc_C57031: PopAdLdVar
  loc_C57032: FLdPr Me
  loc_C57035: MemLdRfVar from_stack_1.global_60
  loc_C57038: LdPrVar
  loc_C5703A: LateMemCall
  loc_C57040: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C57043: FMemLdR4 var_AC(204)
  loc_C57048: ConcatStr
  loc_C57049: FStStrNoPop var_B0
  loc_C5704C: LitStr "</th>"
  loc_C5704F: ConcatStr
  loc_C57050: CVarStr var_C0
  loc_C57053: PopAdLdVar
  loc_C57054: FLdPr Me
  loc_C57057: MemLdRfVar from_stack_1.global_60
  loc_C5705A: LdPrVar
  loc_C5705C: LateMemCall
  loc_C57062: FFree1Str var_B0
  loc_C57065: FFree1Var var_C0 = ""
  loc_C57068: LitVarStr var_94, "        </tr>"
  loc_C5706D: PopAdLdVar
  loc_C5706E: FLdPr Me
  loc_C57071: MemLdRfVar from_stack_1.global_60
  loc_C57074: LdPrVar
  loc_C57076: LateMemCall
  loc_C5707C: LitVarStr var_94, "        <tr>"
  loc_C57081: PopAdLdVar
  loc_C57082: FLdPr Me
  loc_C57085: MemLdRfVar from_stack_1.global_60
  loc_C57088: LdPrVar
  loc_C5708A: LateMemCall
  loc_C57090: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Expediente:</th>"
  loc_C57095: PopAdLdVar
  loc_C57096: FLdPr Me
  loc_C57099: MemLdRfVar from_stack_1.global_60
  loc_C5709C: LdPrVar
  loc_C5709E: LateMemCall
  loc_C570A4: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C570A7: FMemLdR4 var_AC(212)
  loc_C570AC: ConcatStr
  loc_C570AD: FStStrNoPop var_B0
  loc_C570B0: LitStr "</th>"
  loc_C570B3: ConcatStr
  loc_C570B4: CVarStr var_C0
  loc_C570B7: PopAdLdVar
  loc_C570B8: FLdPr Me
  loc_C570BB: MemLdRfVar from_stack_1.global_60
  loc_C570BE: LdPrVar
  loc_C570C0: LateMemCall
  loc_C570C6: FFree1Str var_B0
  loc_C570C9: FFree1Var var_C0 = ""
  loc_C570CC: LitVarStr var_94, "        </tr>"
  loc_C570D1: PopAdLdVar
  loc_C570D2: FLdPr Me
  loc_C570D5: MemLdRfVar from_stack_1.global_60
  loc_C570D8: LdPrVar
  loc_C570DA: LateMemCall
  loc_C570E0: LitVarStr var_94, "        <tr>"
  loc_C570E5: PopAdLdVar
  loc_C570E6: FLdPr Me
  loc_C570E9: MemLdRfVar from_stack_1.global_60
  loc_C570EC: LdPrVar
  loc_C570EE: LateMemCall
  loc_C570F4: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Clasificación:</th>"
  loc_C570F9: PopAdLdVar
  loc_C570FA: FLdPr Me
  loc_C570FD: MemLdRfVar from_stack_1.global_60
  loc_C57100: LdPrVar
  loc_C57102: LateMemCall
  loc_C57108: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C5710B: FMemLdR4 var_AC(224)
  loc_C57110: ConcatStr
  loc_C57111: FStStrNoPop var_B0
  loc_C57114: LitStr "</th>"
  loc_C57117: ConcatStr
  loc_C57118: CVarStr var_C0
  loc_C5711B: PopAdLdVar
  loc_C5711C: FLdPr Me
  loc_C5711F: MemLdRfVar from_stack_1.global_60
  loc_C57122: LdPrVar
  loc_C57124: LateMemCall
  loc_C5712A: FFree1Str var_B0
  loc_C5712D: FFree1Var var_C0 = ""
  loc_C57130: LitVarStr var_94, "        </tr>"
  loc_C57135: PopAdLdVar
  loc_C57136: FLdPr Me
  loc_C57139: MemLdRfVar from_stack_1.global_60
  loc_C5713C: LdPrVar
  loc_C5713E: LateMemCall
  loc_C57144: LitVarStr var_94, "        <tr>"
  loc_C57149: PopAdLdVar
  loc_C5714A: FLdPr Me
  loc_C5714D: MemLdRfVar from_stack_1.global_60
  loc_C57150: LdPrVar
  loc_C57152: LateMemCall
  loc_C57158: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Nro de Resolución:</th>"
  loc_C5715D: PopAdLdVar
  loc_C5715E: FLdPr Me
  loc_C57161: MemLdRfVar from_stack_1.global_60
  loc_C57164: LdPrVar
  loc_C57166: LateMemCall
  loc_C5716C: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C5716F: FMemLdR4 var_AC(232)
  loc_C57174: ConcatStr
  loc_C57175: FStStrNoPop var_B0
  loc_C57178: LitStr "</th>"
  loc_C5717B: ConcatStr
  loc_C5717C: CVarStr var_C0
  loc_C5717F: PopAdLdVar
  loc_C57180: FLdPr Me
  loc_C57183: MemLdRfVar from_stack_1.global_60
  loc_C57186: LdPrVar
  loc_C57188: LateMemCall
  loc_C5718E: FFree1Str var_B0
  loc_C57191: FFree1Var var_C0 = ""
  loc_C57194: LitVarStr var_94, "        </tr>"
  loc_C57199: PopAdLdVar
  loc_C5719A: FLdPr Me
  loc_C5719D: MemLdRfVar from_stack_1.global_60
  loc_C571A0: LdPrVar
  loc_C571A2: LateMemCall
  loc_C571A8: LitVarStr var_94, "        <tr>"
  loc_C571AD: PopAdLdVar
  loc_C571AE: FLdPr Me
  loc_C571B1: MemLdRfVar from_stack_1.global_60
  loc_C571B4: LdPrVar
  loc_C571B6: LateMemCall
  loc_C571BC: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Transferencia:</th>"
  loc_C571C1: PopAdLdVar
  loc_C571C2: FLdPr Me
  loc_C571C5: MemLdRfVar from_stack_1.global_60
  loc_C571C8: LdPrVar
  loc_C571CA: LateMemCall
  loc_C571D0: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C571D3: FMemLdR4 var_AC(240)
  loc_C571D8: ConcatStr
  loc_C571D9: FStStrNoPop var_B0
  loc_C571DC: LitStr "</th>"
  loc_C571DF: ConcatStr
  loc_C571E0: CVarStr var_C0
  loc_C571E3: PopAdLdVar
  loc_C571E4: FLdPr Me
  loc_C571E7: MemLdRfVar from_stack_1.global_60
  loc_C571EA: LdPrVar
  loc_C571EC: LateMemCall
  loc_C571F2: FFree1Str var_B0
  loc_C571F5: FFree1Var var_C0 = ""
  loc_C571F8: LitVarStr var_94, "        </tr>"
  loc_C571FD: PopAdLdVar
  loc_C571FE: FLdPr Me
  loc_C57201: MemLdRfVar from_stack_1.global_60
  loc_C57204: LdPrVar
  loc_C57206: LateMemCall
  loc_C5720C: LitVarStr var_94, "        <tr>"
  loc_C57211: PopAdLdVar
  loc_C57212: FLdPr Me
  loc_C57215: MemLdRfVar from_stack_1.global_60
  loc_C57218: LdPrVar
  loc_C5721A: LateMemCall
  loc_C57220: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Resolución:</th>"
  loc_C57225: PopAdLdVar
  loc_C57226: FLdPr Me
  loc_C57229: MemLdRfVar from_stack_1.global_60
  loc_C5722C: LdPrVar
  loc_C5722E: LateMemCall
  loc_C57234: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C57237: FMemLdR4 var_AC(248)
  loc_C5723C: ConcatStr
  loc_C5723D: FStStrNoPop var_B0
  loc_C57240: LitStr "</th>"
  loc_C57243: ConcatStr
  loc_C57244: CVarStr var_C0
  loc_C57247: PopAdLdVar
  loc_C57248: FLdPr Me
  loc_C5724B: MemLdRfVar from_stack_1.global_60
  loc_C5724E: LdPrVar
  loc_C57250: LateMemCall
  loc_C57256: FFree1Str var_B0
  loc_C57259: FFree1Var var_C0 = ""
  loc_C5725C: LitVarStr var_94, "        </tr>"
  loc_C57261: PopAdLdVar
  loc_C57262: FLdPr Me
  loc_C57265: MemLdRfVar from_stack_1.global_60
  loc_C57268: LdPrVar
  loc_C5726A: LateMemCall
  loc_C57270: LitVarStr var_94, "      </table></td>"
  loc_C57275: PopAdLdVar
  loc_C57276: FLdPr Me
  loc_C57279: MemLdRfVar from_stack_1.global_60
  loc_C5727C: LdPrVar
  loc_C5727E: LateMemCall
  loc_C57284: LitVarStr var_94, "  </tr>"
  loc_C57289: PopAdLdVar
  loc_C5728A: FLdPr Me
  loc_C5728D: MemLdRfVar from_stack_1.global_60
  loc_C57290: LdPrVar
  loc_C57292: LateMemCall
  loc_C57298: LitI4 0
  loc_C5729D: FStR4 var_AC
  loc_C572A0: AryUnlock
  loc_C572A3: LitVarStr var_94, "  <tr><td><hr></td></tr>"
  loc_C572A8: PopAdLdVar
  loc_C572A9: FLdPr Me
  loc_C572AC: MemLdRfVar from_stack_1.global_60
  loc_C572AF: LdPrVar
  loc_C572B1: LateMemCall
  loc_C572B7: LitVarStr var_94, "</table>"
  loc_C572BC: PopAdLdVar
  loc_C572BD: FLdPr Me
  loc_C572C0: MemLdRfVar from_stack_1.global_60
  loc_C572C3: LdPrVar
  loc_C572C5: LateMemCall
  loc_C572CB: ExitProcHresult
End Function

Private Function Proc_285_26_AFFEE4() 'AFFEE4
  'Data Table: 4B5FC4
  loc_AFFCE8: LitVarStr var_94, "<br />"
  loc_AFFCED: PopAdLdVar
  loc_AFFCEE: FLdPr Me
  loc_AFFCF1: MemLdRfVar from_stack_1.global_60
  loc_AFFCF4: LdPrVar
  loc_AFFCF6: LateMemCall
  loc_AFFCFC: LitVarStr var_94, "<table align=""center"" width=""70" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_AFFD01: PopAdLdVar
  loc_AFFD02: FLdPr Me
  loc_AFFD05: MemLdRfVar from_stack_1.global_60
  loc_AFFD08: LdPrVar
  loc_AFFD0A: LateMemCall
  loc_AFFD10: LitVarStr var_94, "  <thead>"
  loc_AFFD15: PopAdLdVar
  loc_AFFD16: FLdPr Me
  loc_AFFD19: MemLdRfVar from_stack_1.global_60
  loc_AFFD1C: LdPrVar
  loc_AFFD1E: LateMemCall
  loc_AFFD24: LitVarStr var_94, "   <tr class=""Encabezado"" align=""center"">"
  loc_AFFD29: PopAdLdVar
  loc_AFFD2A: FLdPr Me
  loc_AFFD2D: MemLdRfVar from_stack_1.global_60
  loc_AFFD30: LdPrVar
  loc_AFFD32: LateMemCall
  loc_AFFD38: LitVarStr var_94, "      <td>CUIT/CUIL</td>"
  loc_AFFD3D: PopAdLdVar
  loc_AFFD3E: FLdPr Me
  loc_AFFD41: MemLdRfVar from_stack_1.global_60
  loc_AFFD44: LdPrVar
  loc_AFFD46: LateMemCall
  loc_AFFD4C: LitVarStr var_94, "      <td>RELACI&Oacute;N</td>"
  loc_AFFD51: PopAdLdVar
  loc_AFFD52: FLdPr Me
  loc_AFFD55: MemLdRfVar from_stack_1.global_60
  loc_AFFD58: LdPrVar
  loc_AFFD5A: LateMemCall
  loc_AFFD60: LitVarStr var_94, "      <td>NOMBRE</td>"
  loc_AFFD65: PopAdLdVar
  loc_AFFD66: FLdPr Me
  loc_AFFD69: MemLdRfVar from_stack_1.global_60
  loc_AFFD6C: LdPrVar
  loc_AFFD6E: LateMemCall
  loc_AFFD74: LitVarStr var_94, "      <td>DESDE</td>"
  loc_AFFD79: PopAdLdVar
  loc_AFFD7A: FLdPr Me
  loc_AFFD7D: MemLdRfVar from_stack_1.global_60
  loc_AFFD80: LdPrVar
  loc_AFFD82: LateMemCall
  loc_AFFD88: LitVarStr var_94, "    </tr>"
  loc_AFFD8D: PopAdLdVar
  loc_AFFD8E: FLdPr Me
  loc_AFFD91: MemLdRfVar from_stack_1.global_60
  loc_AFFD94: LdPrVar
  loc_AFFD96: LateMemCall
  loc_AFFD9C: LitVarStr var_94, "  </thead>"
  loc_AFFDA1: PopAdLdVar
  loc_AFFDA2: FLdPr Me
  loc_AFFDA5: MemLdRfVar from_stack_1.global_60
  loc_AFFDA8: LdPrVar
  loc_AFFDAA: LateMemCall
  loc_AFFDB0: LitI2_Byte 1
  loc_AFFDB2: FLdPr Me
  loc_AFFDB5: MemLdRfVar from_stack_1.global_114
  loc_AFFDB8: FLdPr Me
  loc_AFFDBB: MemLdStr global_92
  loc_AFFDBE: LitI2_Byte 1
  loc_AFFDC0: FnUBound
  loc_AFFDC2: CI2I4
  loc_AFFDC3: ForI2 var_A8
  loc_AFFDC9: FLdPr Me
  loc_AFFDCC: MemLdI2 global_114
  loc_AFFDCF: CI4UI1
  loc_AFFDD0: FLdPr Me
  loc_AFFDD3: MemLdStr global_92
  loc_AFFDD6: AryLock
  loc_AFFDD9: Ary1LdRf
  loc_AFFDDA: FStR4 var_B0
  loc_AFFDDD: LitVarStr var_94, "  <tr>"
  loc_AFFDE2: PopAdLdVar
  loc_AFFDE3: FLdPr Me
  loc_AFFDE6: MemLdRfVar from_stack_1.global_60
  loc_AFFDE9: LdPrVar
  loc_AFFDEB: LateMemCall
  loc_AFFDF1: LitStr vbNullString
  loc_AFFDF4: LitI2_Byte 0
  loc_AFFDF6: LitI2_Byte 0
  loc_AFFDF8: LitI2_Byte 0
  loc_AFFDFA: LitStr "center"
  loc_AFFDFD: FMemLdR4 var_B0(0)
  loc_AFFE02: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFFE07: CVarStr var_C0
  loc_AFFE0A: PopAdLdVar
  loc_AFFE0B: FLdPr Me
  loc_AFFE0E: MemLdRfVar from_stack_1.global_60
  loc_AFFE11: LdPrVar
  loc_AFFE13: LateMemCall
  loc_AFFE19: FFree1Var var_C0 = ""
  loc_AFFE1C: LitStr vbNullString
  loc_AFFE1F: LitI2_Byte 0
  loc_AFFE21: LitI2_Byte 0
  loc_AFFE23: LitI2_Byte 0
  loc_AFFE25: LitI4 0
  loc_AFFE2A: FMemLdR4 var_B0(4)
  loc_AFFE2F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFFE34: CVarStr var_C0
  loc_AFFE37: PopAdLdVar
  loc_AFFE38: FLdPr Me
  loc_AFFE3B: MemLdRfVar from_stack_1.global_60
  loc_AFFE3E: LdPrVar
  loc_AFFE40: LateMemCall
  loc_AFFE46: FFree1Var var_C0 = ""
  loc_AFFE49: LitStr vbNullString
  loc_AFFE4C: LitI2_Byte 0
  loc_AFFE4E: LitI2_Byte 0
  loc_AFFE50: LitI2_Byte 0
  loc_AFFE52: LitI4 0
  loc_AFFE57: FMemLdR4 var_B0(8)
  loc_AFFE5C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFFE61: CVarStr var_C0
  loc_AFFE64: PopAdLdVar
  loc_AFFE65: FLdPr Me
  loc_AFFE68: MemLdRfVar from_stack_1.global_60
  loc_AFFE6B: LdPrVar
  loc_AFFE6D: LateMemCall
  loc_AFFE73: FFree1Var var_C0 = ""
  loc_AFFE76: LitStr vbNullString
  loc_AFFE79: LitI2_Byte 0
  loc_AFFE7B: LitI2_Byte 0
  loc_AFFE7D: LitI2_Byte 0
  loc_AFFE7F: LitI4 0
  loc_AFFE84: FMemLdR4 var_B0(12)
  loc_AFFE89: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFFE8E: CVarStr var_C0
  loc_AFFE91: PopAdLdVar
  loc_AFFE92: FLdPr Me
  loc_AFFE95: MemLdRfVar from_stack_1.global_60
  loc_AFFE98: LdPrVar
  loc_AFFE9A: LateMemCall
  loc_AFFEA0: FFree1Var var_C0 = ""
  loc_AFFEA3: LitVarStr var_94, "  </tr>"
  loc_AFFEA8: PopAdLdVar
  loc_AFFEA9: FLdPr Me
  loc_AFFEAC: MemLdRfVar from_stack_1.global_60
  loc_AFFEAF: LdPrVar
  loc_AFFEB1: LateMemCall
  loc_AFFEB7: LitI4 0
  loc_AFFEBC: FStR4 var_B0
  loc_AFFEBF: AryUnlock
  loc_AFFEC2: FLdPr Me
  loc_AFFEC5: MemLdRfVar from_stack_1.global_114
  loc_AFFEC8: NextI2 var_A8, loc_AFFDC9
  loc_AFFECD: LitVarStr var_94, "</table>"
  loc_AFFED2: PopAdLdVar
  loc_AFFED3: FLdPr Me
  loc_AFFED6: MemLdRfVar from_stack_1.global_60
  loc_AFFED9: LdPrVar
  loc_AFFEDB: LateMemCall
  loc_AFFEE1: ExitProcHresult
End Function

Private Function Proc_285_27_B14F9C() 'B14F9C
  'Data Table: 4B5FC4
  loc_B14D28: LitVarStr var_94, "<br />"
  loc_B14D2D: PopAdLdVar
  loc_B14D2E: FLdPr Me
  loc_B14D31: MemLdRfVar from_stack_1.global_60
  loc_B14D34: LdPrVar
  loc_B14D36: LateMemCall
  loc_B14D3C: LitVarStr var_94, "<table align=""center"" width=""70" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B14D41: PopAdLdVar
  loc_B14D42: FLdPr Me
  loc_B14D45: MemLdRfVar from_stack_1.global_60
  loc_B14D48: LdPrVar
  loc_B14D4A: LateMemCall
  loc_B14D50: LitVarStr var_94, "  <thead>"
  loc_B14D55: PopAdLdVar
  loc_B14D56: FLdPr Me
  loc_B14D59: MemLdRfVar from_stack_1.global_60
  loc_B14D5C: LdPrVar
  loc_B14D5E: LateMemCall
  loc_B14D64: LitVarStr var_94, "   <tr class=""Encabezado"" align=""center"">"
  loc_B14D69: PopAdLdVar
  loc_B14D6A: FLdPr Me
  loc_B14D6D: MemLdRfVar from_stack_1.global_60
  loc_B14D70: LdPrVar
  loc_B14D72: LateMemCall
  loc_B14D78: LitVarStr var_94, "      <td>EXPEDIENTE</td>"
  loc_B14D7D: PopAdLdVar
  loc_B14D7E: FLdPr Me
  loc_B14D81: MemLdRfVar from_stack_1.global_60
  loc_B14D84: LdPrVar
  loc_B14D86: LateMemCall
  loc_B14D8C: LitVarStr var_94, "      <td>FECHA</td>"
  loc_B14D91: PopAdLdVar
  loc_B14D92: FLdPr Me
  loc_B14D95: MemLdRfVar from_stack_1.global_60
  loc_B14D98: LdPrVar
  loc_B14D9A: LateMemCall
  loc_B14DA0: LitVarStr var_94, "      <td>CAUSA</td>"
  loc_B14DA5: PopAdLdVar
  loc_B14DA6: FLdPr Me
  loc_B14DA9: MemLdRfVar from_stack_1.global_60
  loc_B14DAC: LdPrVar
  loc_B14DAE: LateMemCall
  loc_B14DB4: LitVarStr var_94, "      <td>COMENTARIO</td>"
  loc_B14DB9: PopAdLdVar
  loc_B14DBA: FLdPr Me
  loc_B14DBD: MemLdRfVar from_stack_1.global_60
  loc_B14DC0: LdPrVar
  loc_B14DC2: LateMemCall
  loc_B14DC8: LitVarStr var_94, "      <td>DEUDA</td>"
  loc_B14DCD: PopAdLdVar
  loc_B14DCE: FLdPr Me
  loc_B14DD1: MemLdRfVar from_stack_1.global_60
  loc_B14DD4: LdPrVar
  loc_B14DD6: LateMemCall
  loc_B14DDC: LitVarStr var_94, "      <td>RENOVACION</td>"
  loc_B14DE1: PopAdLdVar
  loc_B14DE2: FLdPr Me
  loc_B14DE5: MemLdRfVar from_stack_1.global_60
  loc_B14DE8: LdPrVar
  loc_B14DEA: LateMemCall
  loc_B14DF0: LitVarStr var_94, "    </tr>"
  loc_B14DF5: PopAdLdVar
  loc_B14DF6: FLdPr Me
  loc_B14DF9: MemLdRfVar from_stack_1.global_60
  loc_B14DFC: LdPrVar
  loc_B14DFE: LateMemCall
  loc_B14E04: LitVarStr var_94, "  </thead>"
  loc_B14E09: PopAdLdVar
  loc_B14E0A: FLdPr Me
  loc_B14E0D: MemLdRfVar from_stack_1.global_60
  loc_B14E10: LdPrVar
  loc_B14E12: LateMemCall
  loc_B14E18: LitI2_Byte 1
  loc_B14E1A: FLdPr Me
  loc_B14E1D: MemLdRfVar from_stack_1.global_118
  loc_B14E20: FLdPr Me
  loc_B14E23: MemLdStr global_100
  loc_B14E26: LitI2_Byte 1
  loc_B14E28: FnUBound
  loc_B14E2A: CI2I4
  loc_B14E2B: ForI2 var_A8
  loc_B14E31: FLdPr Me
  loc_B14E34: MemLdI2 global_118
  loc_B14E37: CI4UI1
  loc_B14E38: FLdPr Me
  loc_B14E3B: MemLdStr global_100
  loc_B14E3E: AryLock
  loc_B14E41: Ary1LdRf
  loc_B14E42: FStR4 var_B0
  loc_B14E45: LitVarStr var_94, "  <tr>"
  loc_B14E4A: PopAdLdVar
  loc_B14E4B: FLdPr Me
  loc_B14E4E: MemLdRfVar from_stack_1.global_60
  loc_B14E51: LdPrVar
  loc_B14E53: LateMemCall
  loc_B14E59: LitStr vbNullString
  loc_B14E5C: LitI2_Byte 0
  loc_B14E5E: LitI2_Byte 0
  loc_B14E60: LitI2_Byte 0
  loc_B14E62: LitStr "left"
  loc_B14E65: FMemLdR4 var_B0(0)
  loc_B14E6A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B14E6F: CVarStr var_C0
  loc_B14E72: PopAdLdVar
  loc_B14E73: FLdPr Me
  loc_B14E76: MemLdRfVar from_stack_1.global_60
  loc_B14E79: LdPrVar
  loc_B14E7B: LateMemCall
  loc_B14E81: FFree1Var var_C0 = ""
  loc_B14E84: LitStr vbNullString
  loc_B14E87: LitI2_Byte 0
  loc_B14E89: LitI2_Byte 0
  loc_B14E8B: LitI2_Byte 0
  loc_B14E8D: LitStr "center"
  loc_B14E90: FMemLdR4 var_B0(4)
  loc_B14E95: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B14E9A: CVarStr var_C0
  loc_B14E9D: PopAdLdVar
  loc_B14E9E: FLdPr Me
  loc_B14EA1: MemLdRfVar from_stack_1.global_60
  loc_B14EA4: LdPrVar
  loc_B14EA6: LateMemCall
  loc_B14EAC: FFree1Var var_C0 = ""
  loc_B14EAF: LitStr vbNullString
  loc_B14EB2: LitI2_Byte 0
  loc_B14EB4: LitI2_Byte 0
  loc_B14EB6: LitI2_Byte 0
  loc_B14EB8: LitStr "left"
  loc_B14EBB: FMemLdR4 var_B0(8)
  loc_B14EC0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B14EC5: CVarStr var_C0
  loc_B14EC8: PopAdLdVar
  loc_B14EC9: FLdPr Me
  loc_B14ECC: MemLdRfVar from_stack_1.global_60
  loc_B14ECF: LdPrVar
  loc_B14ED1: LateMemCall
  loc_B14ED7: FFree1Var var_C0 = ""
  loc_B14EDA: LitStr vbNullString
  loc_B14EDD: LitI2_Byte 0
  loc_B14EDF: LitI2_Byte 0
  loc_B14EE1: LitI2_Byte 0
  loc_B14EE3: LitStr "left"
  loc_B14EE6: FMemLdR4 var_B0(12)
  loc_B14EEB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B14EF0: CVarStr var_C0
  loc_B14EF3: PopAdLdVar
  loc_B14EF4: FLdPr Me
  loc_B14EF7: MemLdRfVar from_stack_1.global_60
  loc_B14EFA: LdPrVar
  loc_B14EFC: LateMemCall
  loc_B14F02: FFree1Var var_C0 = ""
  loc_B14F05: LitStr vbNullString
  loc_B14F08: LitI2_Byte 0
  loc_B14F0A: LitI2_Byte 0
  loc_B14F0C: LitI2_Byte 0
  loc_B14F0E: LitStr "center"
  loc_B14F11: FMemLdR4 var_B0(16)
  loc_B14F16: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B14F1B: CVarStr var_C0
  loc_B14F1E: PopAdLdVar
  loc_B14F1F: FLdPr Me
  loc_B14F22: MemLdRfVar from_stack_1.global_60
  loc_B14F25: LdPrVar
  loc_B14F27: LateMemCall
  loc_B14F2D: FFree1Var var_C0 = ""
  loc_B14F30: LitStr vbNullString
  loc_B14F33: LitI2_Byte 0
  loc_B14F35: LitI2_Byte 0
  loc_B14F37: LitI2_Byte 0
  loc_B14F39: LitStr "center"
  loc_B14F3C: FMemLdR4 var_B0(20)
  loc_B14F41: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B14F46: CVarStr var_C0
  loc_B14F49: PopAdLdVar
  loc_B14F4A: FLdPr Me
  loc_B14F4D: MemLdRfVar from_stack_1.global_60
  loc_B14F50: LdPrVar
  loc_B14F52: LateMemCall
  loc_B14F58: FFree1Var var_C0 = ""
  loc_B14F5B: LitVarStr var_94, "  </tr>"
  loc_B14F60: PopAdLdVar
  loc_B14F61: FLdPr Me
  loc_B14F64: MemLdRfVar from_stack_1.global_60
  loc_B14F67: LdPrVar
  loc_B14F69: LateMemCall
  loc_B14F6F: LitI4 0
  loc_B14F74: FStR4 var_B0
  loc_B14F77: AryUnlock
  loc_B14F7A: FLdPr Me
  loc_B14F7D: MemLdRfVar from_stack_1.global_118
  loc_B14F80: NextI2 var_A8, loc_B14E31
  loc_B14F85: LitVarStr var_94, "</table>"
  loc_B14F8A: PopAdLdVar
  loc_B14F8B: FLdPr Me
  loc_B14F8E: MemLdRfVar from_stack_1.global_60
  loc_B14F91: LdPrVar
  loc_B14F93: LateMemCall
  loc_B14F99: ExitProcHresult
End Function

Private Function Proc_285_28_B46F60() 'B46F60
  'Data Table: 4B5FC4
  loc_B46BE8: LitVarStr var_94, "<br />"
  loc_B46BED: PopAdLdVar
  loc_B46BEE: FLdPr Me
  loc_B46BF1: MemLdRfVar from_stack_1.global_60
  loc_B46BF4: LdPrVar
  loc_B46BF6: LateMemCall
  loc_B46BFC: LitVarStr var_94, "<table align=""center"" width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B46C01: PopAdLdVar
  loc_B46C02: FLdPr Me
  loc_B46C05: MemLdRfVar from_stack_1.global_60
  loc_B46C08: LdPrVar
  loc_B46C0A: LateMemCall
  loc_B46C10: LitVarStr var_94, "  <thead>"
  loc_B46C15: PopAdLdVar
  loc_B46C16: FLdPr Me
  loc_B46C19: MemLdRfVar from_stack_1.global_60
  loc_B46C1C: LdPrVar
  loc_B46C1E: LateMemCall
  loc_B46C24: LitVarStr var_94, "   <tr class=""Encabezado"" align=""center"">"
  loc_B46C29: PopAdLdVar
  loc_B46C2A: FLdPr Me
  loc_B46C2D: MemLdRfVar from_stack_1.global_60
  loc_B46C30: LdPrVar
  loc_B46C32: LateMemCall
  loc_B46C38: LitVarStr var_94, "      <td rowspan=""2"">RUBRO</td>"
  loc_B46C3D: PopAdLdVar
  loc_B46C3E: FLdPr Me
  loc_B46C41: MemLdRfVar from_stack_1.global_60
  loc_B46C44: LdPrVar
  loc_B46C46: LateMemCall
  loc_B46C4C: LitVarStr var_94, "      <td rowspan=""2"">SUBRUBRO</td>"
  loc_B46C51: PopAdLdVar
  loc_B46C52: FLdPr Me
  loc_B46C55: MemLdRfVar from_stack_1.global_60
  loc_B46C58: LdPrVar
  loc_B46C5A: LateMemCall
  loc_B46C60: LitVarStr var_94, "      <td colspan=""2"">ALTA</td>"
  loc_B46C65: PopAdLdVar
  loc_B46C66: FLdPr Me
  loc_B46C69: MemLdRfVar from_stack_1.global_60
  loc_B46C6C: LdPrVar
  loc_B46C6E: LateMemCall
  loc_B46C74: LitVarStr var_94, "      <td colspan=""2"">BAJA</td>"
  loc_B46C79: PopAdLdVar
  loc_B46C7A: FLdPr Me
  loc_B46C7D: MemLdRfVar from_stack_1.global_60
  loc_B46C80: LdPrVar
  loc_B46C82: LateMemCall
  loc_B46C88: LitVarStr var_94, "      <td rowspan=""2"">ACTIV.<br />PPAL.</td>"
  loc_B46C8D: PopAdLdVar
  loc_B46C8E: FLdPr Me
  loc_B46C91: MemLdRfVar from_stack_1.global_60
  loc_B46C94: LdPrVar
  loc_B46C96: LateMemCall
  loc_B46C9C: LitVarStr var_94, "      <td rowspan=""2"">CANT.</td>"
  loc_B46CA1: PopAdLdVar
  loc_B46CA2: FLdPr Me
  loc_B46CA5: MemLdRfVar from_stack_1.global_60
  loc_B46CA8: LdPrVar
  loc_B46CAA: LateMemCall
  loc_B46CB0: LitVarStr var_94, "     </tr>"
  loc_B46CB5: PopAdLdVar
  loc_B46CB6: FLdPr Me
  loc_B46CB9: MemLdRfVar from_stack_1.global_60
  loc_B46CBC: LdPrVar
  loc_B46CBE: LateMemCall
  loc_B46CC4: LitVarStr var_94, "   <tr class=""Encabezado"" align=""center"">"
  loc_B46CC9: PopAdLdVar
  loc_B46CCA: FLdPr Me
  loc_B46CCD: MemLdRfVar from_stack_1.global_60
  loc_B46CD0: LdPrVar
  loc_B46CD2: LateMemCall
  loc_B46CD8: LitVarStr var_94, "     <td>FECHA</td>"
  loc_B46CDD: PopAdLdVar
  loc_B46CDE: FLdPr Me
  loc_B46CE1: MemLdRfVar from_stack_1.global_60
  loc_B46CE4: LdPrVar
  loc_B46CE6: LateMemCall
  loc_B46CEC: LitVarStr var_94, "     <td>EXPEDIENTE</td>"
  loc_B46CF1: PopAdLdVar
  loc_B46CF2: FLdPr Me
  loc_B46CF5: MemLdRfVar from_stack_1.global_60
  loc_B46CF8: LdPrVar
  loc_B46CFA: LateMemCall
  loc_B46D00: LitVarStr var_94, "     <td>FECHA</td>"
  loc_B46D05: PopAdLdVar
  loc_B46D06: FLdPr Me
  loc_B46D09: MemLdRfVar from_stack_1.global_60
  loc_B46D0C: LdPrVar
  loc_B46D0E: LateMemCall
  loc_B46D14: LitVarStr var_94, "     <td>EXPEDIENTE</td>"
  loc_B46D19: PopAdLdVar
  loc_B46D1A: FLdPr Me
  loc_B46D1D: MemLdRfVar from_stack_1.global_60
  loc_B46D20: LdPrVar
  loc_B46D22: LateMemCall
  loc_B46D28: LitVarStr var_94, "    </tr>"
  loc_B46D2D: PopAdLdVar
  loc_B46D2E: FLdPr Me
  loc_B46D31: MemLdRfVar from_stack_1.global_60
  loc_B46D34: LdPrVar
  loc_B46D36: LateMemCall
  loc_B46D3C: LitVarStr var_94, "  </thead>"
  loc_B46D41: PopAdLdVar
  loc_B46D42: FLdPr Me
  loc_B46D45: MemLdRfVar from_stack_1.global_60
  loc_B46D48: LdPrVar
  loc_B46D4A: LateMemCall
  loc_B46D50: LitI2_Byte 1
  loc_B46D52: FLdPr Me
  loc_B46D55: MemLdRfVar from_stack_1.global_116
  loc_B46D58: FLdPr Me
  loc_B46D5B: MemLdStr global_96
  loc_B46D5E: LitI2_Byte 1
  loc_B46D60: FnUBound
  loc_B46D62: CI2I4
  loc_B46D63: ForI2 var_A8
  loc_B46D69: FLdPr Me
  loc_B46D6C: MemLdI2 global_116
  loc_B46D6F: CI4UI1
  loc_B46D70: FLdPr Me
  loc_B46D73: MemLdStr global_96
  loc_B46D76: AryLock
  loc_B46D79: Ary1LdRf
  loc_B46D7A: FStR4 var_B0
  loc_B46D7D: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B46D82: PopAdLdVar
  loc_B46D83: FLdPr Me
  loc_B46D86: MemLdRfVar from_stack_1.global_60
  loc_B46D89: LdPrVar
  loc_B46D8B: LateMemCall
  loc_B46D91: LitStr vbNullString
  loc_B46D94: LitI2_Byte 0
  loc_B46D96: LitI2_Byte 0
  loc_B46D98: LitI2_Byte 0
  loc_B46D9A: LitI4 0
  loc_B46D9F: FMemLdR4 var_B0(0)
  loc_B46DA4: LitStr "&nbsp;-&nbsp;"
  loc_B46DA7: ConcatStr
  loc_B46DA8: FStStrNoPop var_B4
  loc_B46DAB: FMemLdR4 var_B0(4)
  loc_B46DB0: ConcatStr
  loc_B46DB1: FStStrNoPop var_B8
  loc_B46DB4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B46DB9: CVarStr var_C8
  loc_B46DBC: PopAdLdVar
  loc_B46DBD: FLdPr Me
  loc_B46DC0: MemLdRfVar from_stack_1.global_60
  loc_B46DC3: LdPrVar
  loc_B46DC5: LateMemCall
  loc_B46DCB: FFreeStr var_B4 = ""
  loc_B46DD2: FFree1Var var_C8 = ""
  loc_B46DD5: LitStr vbNullString
  loc_B46DD8: LitI2_Byte 0
  loc_B46DDA: LitI2_Byte 0
  loc_B46DDC: LitI2_Byte 0
  loc_B46DDE: LitI4 0
  loc_B46DE3: FMemLdR4 var_B0(8)
  loc_B46DE8: LitStr "&nbsp;-&nbsp;"
  loc_B46DEB: ConcatStr
  loc_B46DEC: FStStrNoPop var_B4
  loc_B46DEF: FMemLdR4 var_B0(12)
  loc_B46DF4: ConcatStr
  loc_B46DF5: FStStrNoPop var_B8
  loc_B46DF8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B46DFD: CVarStr var_C8
  loc_B46E00: PopAdLdVar
  loc_B46E01: FLdPr Me
  loc_B46E04: MemLdRfVar from_stack_1.global_60
  loc_B46E07: LdPrVar
  loc_B46E09: LateMemCall
  loc_B46E0F: FFreeStr var_B4 = ""
  loc_B46E16: FFree1Var var_C8 = ""
  loc_B46E19: LitStr vbNullString
  loc_B46E1C: LitI2_Byte 0
  loc_B46E1E: LitI2_Byte 0
  loc_B46E20: LitI2_Byte 0
  loc_B46E22: LitStr "center"
  loc_B46E25: FMemLdR4 var_B0(16)
  loc_B46E2A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B46E2F: CVarStr var_C8
  loc_B46E32: PopAdLdVar
  loc_B46E33: FLdPr Me
  loc_B46E36: MemLdRfVar from_stack_1.global_60
  loc_B46E39: LdPrVar
  loc_B46E3B: LateMemCall
  loc_B46E41: FFree1Var var_C8 = ""
  loc_B46E44: LitStr vbNullString
  loc_B46E47: LitI2_Byte 0
  loc_B46E49: LitI2_Byte 0
  loc_B46E4B: LitI2_Byte 0
  loc_B46E4D: LitI4 0
  loc_B46E52: FMemLdR4 var_B0(20)
  loc_B46E57: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B46E5C: CVarStr var_C8
  loc_B46E5F: PopAdLdVar
  loc_B46E60: FLdPr Me
  loc_B46E63: MemLdRfVar from_stack_1.global_60
  loc_B46E66: LdPrVar
  loc_B46E68: LateMemCall
  loc_B46E6E: FFree1Var var_C8 = ""
  loc_B46E71: LitStr vbNullString
  loc_B46E74: LitI2_Byte 0
  loc_B46E76: LitI2_Byte 0
  loc_B46E78: LitI2_Byte 0
  loc_B46E7A: LitStr "center"
  loc_B46E7D: FMemLdR4 var_B0(24)
  loc_B46E82: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B46E87: CVarStr var_C8
  loc_B46E8A: PopAdLdVar
  loc_B46E8B: FLdPr Me
  loc_B46E8E: MemLdRfVar from_stack_1.global_60
  loc_B46E91: LdPrVar
  loc_B46E93: LateMemCall
  loc_B46E99: FFree1Var var_C8 = ""
  loc_B46E9C: LitStr vbNullString
  loc_B46E9F: LitI2_Byte 0
  loc_B46EA1: LitI2_Byte 0
  loc_B46EA3: LitI2_Byte 0
  loc_B46EA5: LitI4 0
  loc_B46EAA: FMemLdR4 var_B0(28)
  loc_B46EAF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B46EB4: CVarStr var_C8
  loc_B46EB7: PopAdLdVar
  loc_B46EB8: FLdPr Me
  loc_B46EBB: MemLdRfVar from_stack_1.global_60
  loc_B46EBE: LdPrVar
  loc_B46EC0: LateMemCall
  loc_B46EC6: FFree1Var var_C8 = ""
  loc_B46EC9: LitStr vbNullString
  loc_B46ECC: LitI2_Byte 0
  loc_B46ECE: LitI2_Byte 0
  loc_B46ED0: LitI2_Byte 0
  loc_B46ED2: LitStr "center"
  loc_B46ED5: FMemLdR4 var_B0(32)
  loc_B46EDA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B46EDF: CVarStr var_C8
  loc_B46EE2: PopAdLdVar
  loc_B46EE3: FLdPr Me
  loc_B46EE6: MemLdRfVar from_stack_1.global_60
  loc_B46EE9: LdPrVar
  loc_B46EEB: LateMemCall
  loc_B46EF1: FFree1Var var_C8 = ""
  loc_B46EF4: LitStr vbNullString
  loc_B46EF7: LitI2_Byte 0
  loc_B46EF9: LitI2_Byte 0
  loc_B46EFB: LitI2_Byte 0
  loc_B46EFD: LitStr "right"
  loc_B46F00: FMemLdR4 var_B0(36)
  loc_B46F05: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B46F0A: CVarStr var_C8
  loc_B46F0D: PopAdLdVar
  loc_B46F0E: FLdPr Me
  loc_B46F11: MemLdRfVar from_stack_1.global_60
  loc_B46F14: LdPrVar
  loc_B46F16: LateMemCall
  loc_B46F1C: FFree1Var var_C8 = ""
  loc_B46F1F: LitVarStr var_94, "  </tr>"
  loc_B46F24: PopAdLdVar
  loc_B46F25: FLdPr Me
  loc_B46F28: MemLdRfVar from_stack_1.global_60
  loc_B46F2B: LdPrVar
  loc_B46F2D: LateMemCall
  loc_B46F33: LitI4 0
  loc_B46F38: FStR4 var_B0
  loc_B46F3B: AryUnlock
  loc_B46F3E: FLdPr Me
  loc_B46F41: MemLdRfVar from_stack_1.global_116
  loc_B46F44: NextI2 var_A8, loc_B46D69
  loc_B46F49: LitVarStr var_94, "</table>"
  loc_B46F4E: PopAdLdVar
  loc_B46F4F: FLdPr Me
  loc_B46F52: MemLdRfVar from_stack_1.global_60
  loc_B46F55: LdPrVar
  loc_B46F57: LateMemCall
  loc_B46F5D: ExitProcHresult
  loc_B46F5E: CVarStr Proc_285_28_B46F60C40
End Function

Private Function Proc_285_29_AD1C2C() 'AD1C2C
  'Data Table: 4B5FC4
  loc_AD1AF4: LitVarStr var_94, "<br />"
  loc_AD1AF9: PopAdLdVar
  loc_AD1AFA: FLdPr Me
  loc_AD1AFD: MemLdRfVar from_stack_1.global_60
  loc_AD1B00: LdPrVar
  loc_AD1B02: LateMemCall
  loc_AD1B08: LitVarStr var_94, "<table align=""center"" width=""70" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_AD1B0D: PopAdLdVar
  loc_AD1B0E: FLdPr Me
  loc_AD1B11: MemLdRfVar from_stack_1.global_60
  loc_AD1B14: LdPrVar
  loc_AD1B16: LateMemCall
  loc_AD1B1C: LitVarStr var_94, "  <thead>"
  loc_AD1B21: PopAdLdVar
  loc_AD1B22: FLdPr Me
  loc_AD1B25: MemLdRfVar from_stack_1.global_60
  loc_AD1B28: LdPrVar
  loc_AD1B2A: LateMemCall
  loc_AD1B30: LitVarStr var_94, "   <tr class=""Encabezado"" align=""center"">"
  loc_AD1B35: PopAdLdVar
  loc_AD1B36: FLdPr Me
  loc_AD1B39: MemLdRfVar from_stack_1.global_60
  loc_AD1B3C: LdPrVar
  loc_AD1B3E: LateMemCall
  loc_AD1B44: LitVarStr var_94, "      <td>Observaciones</td>"
  loc_AD1B49: PopAdLdVar
  loc_AD1B4A: FLdPr Me
  loc_AD1B4D: MemLdRfVar from_stack_1.global_60
  loc_AD1B50: LdPrVar
  loc_AD1B52: LateMemCall
  loc_AD1B58: LitVarStr var_94, "    </tr>"
  loc_AD1B5D: PopAdLdVar
  loc_AD1B5E: FLdPr Me
  loc_AD1B61: MemLdRfVar from_stack_1.global_60
  loc_AD1B64: LdPrVar
  loc_AD1B66: LateMemCall
  loc_AD1B6C: LitVarStr var_94, "  </thead>"
  loc_AD1B71: PopAdLdVar
  loc_AD1B72: FLdPr Me
  loc_AD1B75: MemLdRfVar from_stack_1.global_60
  loc_AD1B78: LdPrVar
  loc_AD1B7A: LateMemCall
  loc_AD1B80: LitI2_Byte 1
  loc_AD1B82: FLdPr Me
  loc_AD1B85: MemLdRfVar from_stack_1.global_120
  loc_AD1B88: FLdPr Me
  loc_AD1B8B: MemLdStr global_104
  loc_AD1B8E: LitI2_Byte 1
  loc_AD1B90: FnUBound
  loc_AD1B92: CI2I4
  loc_AD1B93: ForI2 var_A8
  loc_AD1B99: FLdPr Me
  loc_AD1B9C: MemLdI2 global_120
  loc_AD1B9F: CI4UI1
  loc_AD1BA0: FLdPr Me
  loc_AD1BA3: MemLdStr global_104
  loc_AD1BA6: AryLock
  loc_AD1BA9: Ary1LdRf
  loc_AD1BAA: FStR4 var_B0
  loc_AD1BAD: LitVarStr var_94, "  <tr>"
  loc_AD1BB2: PopAdLdVar
  loc_AD1BB3: FLdPr Me
  loc_AD1BB6: MemLdRfVar from_stack_1.global_60
  loc_AD1BB9: LdPrVar
  loc_AD1BBB: LateMemCall
  loc_AD1BC1: LitStr vbNullString
  loc_AD1BC4: LitI2_Byte 0
  loc_AD1BC6: LitI2_Byte 0
  loc_AD1BC8: LitI2_Byte 0
  loc_AD1BCA: LitStr "left"
  loc_AD1BCD: FMemLdR4 var_B0(0)
  loc_AD1BD2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AD1BD7: CVarStr var_C0
  loc_AD1BDA: PopAdLdVar
  loc_AD1BDB: FLdPr Me
  loc_AD1BDE: MemLdRfVar from_stack_1.global_60
  loc_AD1BE1: LdPrVar
  loc_AD1BE3: LateMemCall
  loc_AD1BE9: FFree1Var var_C0 = ""
  loc_AD1BEC: LitVarStr var_94, "  </tr>"
  loc_AD1BF1: PopAdLdVar
  loc_AD1BF2: FLdPr Me
  loc_AD1BF5: MemLdRfVar from_stack_1.global_60
  loc_AD1BF8: LdPrVar
  loc_AD1BFA: LateMemCall
  loc_AD1C00: LitI4 0
  loc_AD1C05: FStR4 var_B0
  loc_AD1C08: AryUnlock
  loc_AD1C0B: FLdPr Me
  loc_AD1C0E: MemLdRfVar from_stack_1.global_120
  loc_AD1C11: NextI2 var_A8, loc_AD1B99
  loc_AD1C16: LitVarStr var_94, "</table>"
  loc_AD1C1B: PopAdLdVar
  loc_AD1C1C: FLdPr Me
  loc_AD1C1F: MemLdRfVar from_stack_1.global_60
  loc_AD1C22: LdPrVar
  loc_AD1C24: LateMemCall
  loc_AD1C2A: ExitProcHresult
End Function

Private Function Proc_285_30_9F61A8() '9F61A8
  'Data Table: 4B5FC4
  loc_9F617C: LitVarStr var_94, "</body>"
  loc_9F6181: PopAdLdVar
  loc_9F6182: FLdPr Me
  loc_9F6185: MemLdRfVar from_stack_1.global_60
  loc_9F6188: LdPrVar
  loc_9F618A: LateMemCall
  loc_9F6190: LitVarStr var_94, "</html>"
  loc_9F6195: PopAdLdVar
  loc_9F6196: FLdPr Me
  loc_9F6199: MemLdRfVar from_stack_1.global_60
  loc_9F619C: LdPrVar
  loc_9F619E: LateMemCall
  loc_9F61A4: ExitProcHresult
  loc_9F61A7: NeI4
End Function
