VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeControldeCementerio
  Caption = "Listado de Control de Cementerio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeControldeCementerio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10920
  ClientHeight = 7536
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
    Top = 7284
    Width = 10920
    Height = 252
    TabIndex = 18
    OleObjectBlob = "rptListadodeControldeCementerio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7920
    Top = 6360
    Width = 855
    Height = 735
    TabIndex = 16
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
    Picture = "rptListadodeControldeCementerio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeControldeCementerio.frx":0B9C
    Left = 9480
    Top = 2520
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 6000
    Width = 1815
    Height = 1215
    TabIndex = 14
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 6000
    Width = 4095
    Height = 1215
    TabIndex = 11
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 13
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10695
    Height = 5895
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
    Begin VB.Frame Frame5
      Left = 240
      Top = 240
      Width = 7935
      Height = 5535
      TabIndex = 1
      Begin VB.OptionButton Opcion6Opt
        Caption = "Cuentas activas con o sin aforos del servicio de expensas.En la busqueda incluye todos los servicios con la palabra 'expensas'."
        Left = 240
        Top = 4320
        Width = 7455
        Height = 660
        TabIndex = 19
      End
      Begin VB.OptionButton Opcion5Opt
        Caption = "Existencia de distinto tipo de PARCELA (12) en el cementerio (2)"
        Left = 240
        Top = 3480
        Width = 7455
        Height = 780
        TabIndex = 8
      End
      Begin VB.OptionButton Opcion4Opt
        Caption = "Existencia de tipo PARCELA (12) en otro cementerio que no sea Parque (2)"
        Left = 240
        Top = 2640
        Width = 7095
        Height = 780
        TabIndex = 7
      End
      Begin VB.OptionButton Opcion1Opt
        Caption = "Cuentas activas sin difuntos o difuntos de baja"
        Left = 240
        Top = 360
        Width = 5415
        Height = 300
        TabIndex = 2
      End
      Begin VB.OptionButton Opcion2Opt
        Caption = "Cuentas activas con vencimiento de concesión mayor a: "
        Left = 240
        Top = 1200
        Width = 6255
        Height = 300
        TabIndex = 3
      End
      Begin VB.OptionButton Opcion3Opt
        Caption = "Cuentas activas con fecha de vencimiento de conseción nulas o vencidas"
        Left = 240
        Top = 1800
        Width = 7095
        Height = 780
        TabIndex = 6
      End
      Begin MSMask.MaskEdBox AniosMsk
        Left = 6480
        Top = 1200
        Width = 495
        Height = 345
        TabIndex = 4
        OleObjectBlob = "rptListadodeControldeCementerio.frx":0C00
        DataField = "BimeDifu"
      End
      Begin VB.Label Label1
        Caption = "años"
        ForeColor = &HFF0000&
        Left = 7080
        Top = 1200
        Width = 615
        Height = 375
        TabIndex = 5
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8880
      Top = 600
      Width = 1575
      Height = 615
      TabIndex = 9
    End
    Begin VB.Label Label3
      Left = 7845
      Top = 960
      Width = 60
      Height = 300
      TabIndex = 10
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 6720
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 17
    OleObjectBlob = "rptListadodeControldeCementerio.frx":0C8C
  End
End

Attribute VB_Name = "rptListadodeControldeCementerio"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdPrevia_Click() '9CCE54
  'Data Table: 491EE0
  loc_9CCE3C: ILdRf Me
  loc_9CCE3F: CastAd
  loc_9CCE42: FStAdFunc var_88
  loc_9CCE45: FLdRfVar var_88
  loc_9CCE48: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CCE4D: FFree1Ad var_88
  loc_9CCE50: ExitProcHresult
End Sub

Private Sub Opcion6Opt_Click() 'AA8D04
  'Data Table: 491EE0
  loc_AA8C34: LitI2_Byte 6
  loc_AA8C36: CUI1I2
  loc_AA8C38: FLdPr Me
  loc_AA8C3B: MemStUI1
  loc_AA8C3F: FLdRfVar var_8A
  loc_AA8C42: FLdPr Me
  loc_AA8C45: VCallAd Control_ID_Opcion6Opt
  loc_AA8C48: FStAdFunc var_88
  loc_AA8C4B: FLdPr var_88
  loc_AA8C4E:  = Me.Enabled
  loc_AA8C53: FLdI2 var_8A
  loc_AA8C56: FFree1Ad var_88
  loc_AA8C59: BranchF loc_AA8D02
  loc_AA8C5C: LitI2_Byte 0
  loc_AA8C5E: FLdPr Me
  loc_AA8C61: VCallAd Control_ID_Opcion1Opt
  loc_AA8C64: FStAdFunc var_88
  loc_AA8C67: FLdPr var_88
  loc_AA8C6A: Me.Value = from_stack_1b
  loc_AA8C6F: FFree1Ad var_88
  loc_AA8C72: LitVar_FALSE
  loc_AA8C76: PopAdLdVar
  loc_AA8C77: FLdPr Me
  loc_AA8C7A: VCallAd Control_ID_AniosMsk
  loc_AA8C7D: FStAdFunc var_88
  loc_AA8C80: FLdPr var_88
  loc_AA8C83: LateIdSt
  loc_AA8C88: FFree1Ad var_88
  loc_AA8C8B: LitI2_Byte 0
  loc_AA8C8D: CStrUI1
  loc_AA8C8F: CVarStr var_BC
  loc_AA8C92: PopAdLdVar
  loc_AA8C93: FLdPr Me
  loc_AA8C96: VCallAd Control_ID_AniosMsk
  loc_AA8C99: FStAdFunc var_88
  loc_AA8C9C: FLdPr var_88
  loc_AA8C9F: LateIdSt
  loc_AA8CA4: FFree1Ad var_88
  loc_AA8CA7: FFree1Var var_BC = ""
  loc_AA8CAA: LitI2_Byte 0
  loc_AA8CAC: FLdPr Me
  loc_AA8CAF: VCallAd Control_ID_Opcion2Opt
  loc_AA8CB2: FStAdFunc var_88
  loc_AA8CB5: FLdPr var_88
  loc_AA8CB8: Me.Value = from_stack_1b
  loc_AA8CBD: FFree1Ad var_88
  loc_AA8CC0: LitI2_Byte 0
  loc_AA8CC2: FLdPr Me
  loc_AA8CC5: VCallAd Control_ID_Opcion3Opt
  loc_AA8CC8: FStAdFunc var_88
  loc_AA8CCB: FLdPr var_88
  loc_AA8CCE: Me.Value = from_stack_1b
  loc_AA8CD3: FFree1Ad var_88
  loc_AA8CD6: LitI2_Byte 0
  loc_AA8CD8: FLdPr Me
  loc_AA8CDB: VCallAd Control_ID_Opcion4Opt
  loc_AA8CDE: FStAdFunc var_88
  loc_AA8CE1: FLdPr var_88
  loc_AA8CE4: Me.Value = from_stack_1b
  loc_AA8CE9: FFree1Ad var_88
  loc_AA8CEC: LitI2_Byte 0
  loc_AA8CEE: FLdPr Me
  loc_AA8CF1: VCallAd Control_ID_Opcion5Opt
  loc_AA8CF4: FStAdFunc var_88
  loc_AA8CF7: FLdPr var_88
  loc_AA8CFA: Me.Value = from_stack_1b
  loc_AA8CFF: FFree1Ad var_88
  loc_AA8D02: ExitProcHresult
End Sub

Private Sub Opcion5Opt_Click() 'AA8E0C
  'Data Table: 491EE0
  loc_AA8D3C: LitI2_Byte 5
  loc_AA8D3E: CUI1I2
  loc_AA8D40: FLdPr Me
  loc_AA8D43: MemStUI1
  loc_AA8D47: FLdRfVar var_8A
  loc_AA8D4A: FLdPr Me
  loc_AA8D4D: VCallAd Control_ID_Opcion5Opt
  loc_AA8D50: FStAdFunc var_88
  loc_AA8D53: FLdPr var_88
  loc_AA8D56:  = Me.Enabled
  loc_AA8D5B: FLdI2 var_8A
  loc_AA8D5E: FFree1Ad var_88
  loc_AA8D61: BranchF loc_AA8E0A
  loc_AA8D64: LitI2_Byte 0
  loc_AA8D66: FLdPr Me
  loc_AA8D69: VCallAd Control_ID_Opcion1Opt
  loc_AA8D6C: FStAdFunc var_88
  loc_AA8D6F: FLdPr var_88
  loc_AA8D72: Me.Value = from_stack_1b
  loc_AA8D77: FFree1Ad var_88
  loc_AA8D7A: LitVar_FALSE
  loc_AA8D7E: PopAdLdVar
  loc_AA8D7F: FLdPr Me
  loc_AA8D82: VCallAd Control_ID_AniosMsk
  loc_AA8D85: FStAdFunc var_88
  loc_AA8D88: FLdPr var_88
  loc_AA8D8B: LateIdSt
  loc_AA8D90: FFree1Ad var_88
  loc_AA8D93: LitI2_Byte 0
  loc_AA8D95: CStrUI1
  loc_AA8D97: CVarStr var_BC
  loc_AA8D9A: PopAdLdVar
  loc_AA8D9B: FLdPr Me
  loc_AA8D9E: VCallAd Control_ID_AniosMsk
  loc_AA8DA1: FStAdFunc var_88
  loc_AA8DA4: FLdPr var_88
  loc_AA8DA7: LateIdSt
  loc_AA8DAC: FFree1Ad var_88
  loc_AA8DAF: FFree1Var var_BC = ""
  loc_AA8DB2: LitI2_Byte 0
  loc_AA8DB4: FLdPr Me
  loc_AA8DB7: VCallAd Control_ID_Opcion2Opt
  loc_AA8DBA: FStAdFunc var_88
  loc_AA8DBD: FLdPr var_88
  loc_AA8DC0: Me.Value = from_stack_1b
  loc_AA8DC5: FFree1Ad var_88
  loc_AA8DC8: LitI2_Byte 0
  loc_AA8DCA: FLdPr Me
  loc_AA8DCD: VCallAd Control_ID_Opcion3Opt
  loc_AA8DD0: FStAdFunc var_88
  loc_AA8DD3: FLdPr var_88
  loc_AA8DD6: Me.Value = from_stack_1b
  loc_AA8DDB: FFree1Ad var_88
  loc_AA8DDE: LitI2_Byte 0
  loc_AA8DE0: FLdPr Me
  loc_AA8DE3: VCallAd Control_ID_Opcion4Opt
  loc_AA8DE6: FStAdFunc var_88
  loc_AA8DE9: FLdPr var_88
  loc_AA8DEC: Me.Value = from_stack_1b
  loc_AA8DF1: FFree1Ad var_88
  loc_AA8DF4: LitI2_Byte 0
  loc_AA8DF6: FLdPr Me
  loc_AA8DF9: VCallAd Control_ID_Opcion6Opt
  loc_AA8DFC: FStAdFunc var_88
  loc_AA8DFF: FLdPr var_88
  loc_AA8E02: Me.Value = from_stack_1b
  loc_AA8E07: FFree1Ad var_88
  loc_AA8E0A: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A18AF0
  'Data Table: 491EE0
  loc_A18AB8: FLdPr Me
  loc_A18ABB: VCallAd Control_ID_statusBar
  loc_A18ABE: FStAdFunc var_88
  loc_A18AC1: FLdPr var_88
  loc_A18AC4: LateIdLdVar var_98 DispID_1 0
  loc_A18ACB: CStrVarTmp
  loc_A18ACC: CVarStr var_A8
  loc_A18ACF: PopAdLdVar
  loc_A18AD0: FLdPr Me
  loc_A18AD3: VCallAd Control_ID_statusBar
  loc_A18AD6: FStAdFunc var_BC
  loc_A18AD9: FLdPr var_BC
  loc_A18ADC: LateIdSt
  loc_A18AE1: FFreeAd var_88 = ""
  loc_A18AE8: FFreeVar var_98 = ""
  loc_A18AEF: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CCBA8
  'Data Table: 491EE0
  loc_9CCB90: LitI2_Byte 0
  loc_9CCB92: ILdRf Me
  loc_9CCB95: CastAd
  loc_9CCB98: FStAdFunc var_88
  loc_9CCB9B: FLdRfVar var_88
  loc_9CCB9E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CCBA3: FFree1Ad var_88
  loc_9CCBA6: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A05B50
  'Data Table: 491EE0
  loc_A05B20: LitVarStr var_94, "Cerrando..."
  loc_A05B25: PopAdLdVar
  loc_A05B26: FLdPr Me
  loc_A05B29: VCallAd Control_ID_statusBar
  loc_A05B2C: FStAdFunc var_A8
  loc_A05B2F: FLdPr var_A8
  loc_A05B32: LateIdSt
  loc_A05B37: FFree1Ad var_A8
  loc_A05B3A: ILdRf Me
  loc_A05B3D: FStAdNoPop
  loc_A05B41: ImpAdLdRf MemVar_D9C5D8
  loc_A05B44: NewIfNullPr Global
  loc_A05B47: Global.Unload from_stack_1
  loc_A05B4C: FFree1Ad var_A8
  loc_A05B4F: ExitProcHresult
End Sub

Private Sub AniosMsk_UnknownEvent_0 '9C5348
  'Data Table: 491EE0
  loc_9C5334: FLdPr Me
  loc_9C5337: VCallAd Control_ID_AniosMsk
  loc_9C533A: CVarAd
  loc_9C533E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5343: FFree1Var var_94 = ""
  loc_9C5346: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DEEDC
  'Data Table: 491EE0
  loc_9DEEC0: LitI2_Byte 0
  loc_9DEEC2: PopTmpLdAd2 var_8A
  loc_9DEEC5: ILdRf Me
  loc_9DEEC8: CastAd
  loc_9DEECB: FStAdFunc var_88
  loc_9DEECE: FLdRfVar var_88
  loc_9DEED1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DEED6: FFree1Ad var_88
  loc_9DEED9: ExitProcHresult
End Sub

Private Sub Opcion1Opt_Click() 'AA7B7C
  'Data Table: 491EE0
  loc_AA7AAC: LitI2_Byte 1
  loc_AA7AAE: CUI1I2
  loc_AA7AB0: FLdPr Me
  loc_AA7AB3: MemStUI1
  loc_AA7AB7: FLdRfVar var_8A
  loc_AA7ABA: FLdPr Me
  loc_AA7ABD: VCallAd Control_ID_Opcion1Opt
  loc_AA7AC0: FStAdFunc var_88
  loc_AA7AC3: FLdPr var_88
  loc_AA7AC6:  = Me.Enabled
  loc_AA7ACB: FLdI2 var_8A
  loc_AA7ACE: FFree1Ad var_88
  loc_AA7AD1: BranchF loc_AA7B7A
  loc_AA7AD4: LitI2_Byte 0
  loc_AA7AD6: FLdPr Me
  loc_AA7AD9: VCallAd Control_ID_Opcion2Opt
  loc_AA7ADC: FStAdFunc var_88
  loc_AA7ADF: FLdPr var_88
  loc_AA7AE2: Me.Value = from_stack_1b
  loc_AA7AE7: FFree1Ad var_88
  loc_AA7AEA: LitVar_FALSE
  loc_AA7AEE: PopAdLdVar
  loc_AA7AEF: FLdPr Me
  loc_AA7AF2: VCallAd Control_ID_AniosMsk
  loc_AA7AF5: FStAdFunc var_88
  loc_AA7AF8: FLdPr var_88
  loc_AA7AFB: LateIdSt
  loc_AA7B00: FFree1Ad var_88
  loc_AA7B03: LitI2_Byte 0
  loc_AA7B05: CStrUI1
  loc_AA7B07: CVarStr var_BC
  loc_AA7B0A: PopAdLdVar
  loc_AA7B0B: FLdPr Me
  loc_AA7B0E: VCallAd Control_ID_AniosMsk
  loc_AA7B11: FStAdFunc var_88
  loc_AA7B14: FLdPr var_88
  loc_AA7B17: LateIdSt
  loc_AA7B1C: FFree1Ad var_88
  loc_AA7B1F: FFree1Var var_BC = ""
  loc_AA7B22: LitI2_Byte 0
  loc_AA7B24: FLdPr Me
  loc_AA7B27: VCallAd Control_ID_Opcion3Opt
  loc_AA7B2A: FStAdFunc var_88
  loc_AA7B2D: FLdPr var_88
  loc_AA7B30: Me.Value = from_stack_1b
  loc_AA7B35: FFree1Ad var_88
  loc_AA7B38: LitI2_Byte 0
  loc_AA7B3A: FLdPr Me
  loc_AA7B3D: VCallAd Control_ID_Opcion4Opt
  loc_AA7B40: FStAdFunc var_88
  loc_AA7B43: FLdPr var_88
  loc_AA7B46: Me.Value = from_stack_1b
  loc_AA7B4B: FFree1Ad var_88
  loc_AA7B4E: LitI2_Byte 0
  loc_AA7B50: FLdPr Me
  loc_AA7B53: VCallAd Control_ID_Opcion5Opt
  loc_AA7B56: FStAdFunc var_88
  loc_AA7B59: FLdPr var_88
  loc_AA7B5C: Me.Value = from_stack_1b
  loc_AA7B61: FFree1Ad var_88
  loc_AA7B64: LitI2_Byte 0
  loc_AA7B66: FLdPr Me
  loc_AA7B69: VCallAd Control_ID_Opcion6Opt
  loc_AA7B6C: FStAdFunc var_88
  loc_AA7B6F: FLdPr var_88
  loc_AA7B72: Me.Value = from_stack_1b
  loc_AA7B77: FFree1Ad var_88
  loc_AA7B7A: ExitProcHresult
End Sub

Private Sub Opcion2Opt_Click() 'AA943C
  'Data Table: 491EE0
  loc_AA936C: LitI2_Byte 2
  loc_AA936E: CUI1I2
  loc_AA9370: FLdPr Me
  loc_AA9373: MemStUI1
  loc_AA9377: FLdRfVar var_8A
  loc_AA937A: FLdPr Me
  loc_AA937D: VCallAd Control_ID_Opcion2Opt
  loc_AA9380: FStAdFunc var_88
  loc_AA9383: FLdPr var_88
  loc_AA9386:  = Me.Enabled
  loc_AA938B: FLdI2 var_8A
  loc_AA938E: FFree1Ad var_88
  loc_AA9391: BranchF loc_AA9439
  loc_AA9394: LitI2_Byte 0
  loc_AA9396: FLdPr Me
  loc_AA9399: VCallAd Control_ID_Opcion1Opt
  loc_AA939C: FStAdFunc var_88
  loc_AA939F: FLdPr var_88
  loc_AA93A2: Me.Value = from_stack_1b
  loc_AA93A7: FFree1Ad var_88
  loc_AA93AA: LitVar_TRUE var_9C
  loc_AA93AD: PopAdLdVar
  loc_AA93AE: FLdPr Me
  loc_AA93B1: VCallAd Control_ID_AniosMsk
  loc_AA93B4: FStAdFunc var_88
  loc_AA93B7: FLdPr var_88
  loc_AA93BA: LateIdSt
  loc_AA93BF: FFree1Ad var_88
  loc_AA93C2: LitI2_Byte 0
  loc_AA93C4: CStrUI1
  loc_AA93C6: CVarStr var_BC
  loc_AA93C9: PopAdLdVar
  loc_AA93CA: FLdPr Me
  loc_AA93CD: VCallAd Control_ID_AniosMsk
  loc_AA93D0: FStAdFunc var_88
  loc_AA93D3: FLdPr var_88
  loc_AA93D6: LateIdSt
  loc_AA93DB: FFree1Ad var_88
  loc_AA93DE: FFree1Var var_BC = ""
  loc_AA93E1: LitI2_Byte 0
  loc_AA93E3: FLdPr Me
  loc_AA93E6: VCallAd Control_ID_Opcion3Opt
  loc_AA93E9: FStAdFunc var_88
  loc_AA93EC: FLdPr var_88
  loc_AA93EF: Me.Value = from_stack_1b
  loc_AA93F4: FFree1Ad var_88
  loc_AA93F7: LitI2_Byte 0
  loc_AA93F9: FLdPr Me
  loc_AA93FC: VCallAd Control_ID_Opcion4Opt
  loc_AA93FF: FStAdFunc var_88
  loc_AA9402: FLdPr var_88
  loc_AA9405: Me.Value = from_stack_1b
  loc_AA940A: FFree1Ad var_88
  loc_AA940D: LitI2_Byte 0
  loc_AA940F: FLdPr Me
  loc_AA9412: VCallAd Control_ID_Opcion5Opt
  loc_AA9415: FStAdFunc var_88
  loc_AA9418: FLdPr var_88
  loc_AA941B: Me.Value = from_stack_1b
  loc_AA9420: FFree1Ad var_88
  loc_AA9423: LitI2_Byte 0
  loc_AA9425: FLdPr Me
  loc_AA9428: VCallAd Control_ID_Opcion6Opt
  loc_AA942B: FStAdFunc var_88
  loc_AA942E: FLdPr var_88
  loc_AA9431: Me.Value = from_stack_1b
  loc_AA9436: FFree1Ad var_88
  loc_AA9439: ExitProcHresult
End Sub

Private Sub Opcion3Opt_Click() 'AA922C
  'Data Table: 491EE0
  loc_AA915C: LitI2_Byte 3
  loc_AA915E: CUI1I2
  loc_AA9160: FLdPr Me
  loc_AA9163: MemStUI1
  loc_AA9167: FLdRfVar var_8A
  loc_AA916A: FLdPr Me
  loc_AA916D: VCallAd Control_ID_Opcion3Opt
  loc_AA9170: FStAdFunc var_88
  loc_AA9173: FLdPr var_88
  loc_AA9176:  = Me.Enabled
  loc_AA917B: FLdI2 var_8A
  loc_AA917E: FFree1Ad var_88
  loc_AA9181: BranchF loc_AA922A
  loc_AA9184: LitI2_Byte 0
  loc_AA9186: FLdPr Me
  loc_AA9189: VCallAd Control_ID_Opcion1Opt
  loc_AA918C: FStAdFunc var_88
  loc_AA918F: FLdPr var_88
  loc_AA9192: Me.Value = from_stack_1b
  loc_AA9197: FFree1Ad var_88
  loc_AA919A: LitVar_FALSE
  loc_AA919E: PopAdLdVar
  loc_AA919F: FLdPr Me
  loc_AA91A2: VCallAd Control_ID_AniosMsk
  loc_AA91A5: FStAdFunc var_88
  loc_AA91A8: FLdPr var_88
  loc_AA91AB: LateIdSt
  loc_AA91B0: FFree1Ad var_88
  loc_AA91B3: LitI2_Byte 0
  loc_AA91B5: CStrUI1
  loc_AA91B7: CVarStr var_BC
  loc_AA91BA: PopAdLdVar
  loc_AA91BB: FLdPr Me
  loc_AA91BE: VCallAd Control_ID_AniosMsk
  loc_AA91C1: FStAdFunc var_88
  loc_AA91C4: FLdPr var_88
  loc_AA91C7: LateIdSt
  loc_AA91CC: FFree1Ad var_88
  loc_AA91CF: FFree1Var var_BC = ""
  loc_AA91D2: LitI2_Byte 0
  loc_AA91D4: FLdPr Me
  loc_AA91D7: VCallAd Control_ID_Opcion2Opt
  loc_AA91DA: FStAdFunc var_88
  loc_AA91DD: FLdPr var_88
  loc_AA91E0: Me.Value = from_stack_1b
  loc_AA91E5: FFree1Ad var_88
  loc_AA91E8: LitI2_Byte 0
  loc_AA91EA: FLdPr Me
  loc_AA91ED: VCallAd Control_ID_Opcion4Opt
  loc_AA91F0: FStAdFunc var_88
  loc_AA91F3: FLdPr var_88
  loc_AA91F6: Me.Value = from_stack_1b
  loc_AA91FB: FFree1Ad var_88
  loc_AA91FE: LitI2_Byte 0
  loc_AA9200: FLdPr Me
  loc_AA9203: VCallAd Control_ID_Opcion5Opt
  loc_AA9206: FStAdFunc var_88
  loc_AA9209: FLdPr var_88
  loc_AA920C: Me.Value = from_stack_1b
  loc_AA9211: FFree1Ad var_88
  loc_AA9214: LitI2_Byte 0
  loc_AA9216: FLdPr Me
  loc_AA9219: VCallAd Control_ID_Opcion6Opt
  loc_AA921C: FStAdFunc var_88
  loc_AA921F: FLdPr var_88
  loc_AA9222: Me.Value = from_stack_1b
  loc_AA9227: FFree1Ad var_88
  loc_AA922A: ExitProcHresult
End Sub

Private Sub Form_Load() '9DEFCC
  'Data Table: 491EE0
  loc_9DEFB0: ILdRf Me
  loc_9DEFB3: CastAd
  loc_9DEFB6: FStAdFunc var_88
  loc_9DEFB9: FLdRfVar var_88
  loc_9DEFBC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9DEFC1: FFree1Ad var_88
  loc_9DEFC4: Call cmdNueva_Click()
  loc_9DEFC9: ExitProcHresult
  loc_9DEFCA: StFixedStr
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CCEEC
  'Data Table: 491EE0
  loc_9CCED4: FLdPr Me
  loc_9CCED7: VCallAd Control_ID_wbbReporte
  loc_9CCEDA: FStAdFunc var_88
  loc_9CCEDD: FLdRfVar var_88
  loc_9CCEE0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CCEE5: FFree1Ad var_88
  loc_9CCEE8: ExitProcHresult
  loc_9CCEE9: SetLastSystemError
  loc_9CCEEA: PopTmpLdAdStr arg_6807
End Sub

Private Sub Opcion4Opt_Click() 'AA796C
  'Data Table: 491EE0
  loc_AA789C: LitI2_Byte 4
  loc_AA789E: CUI1I2
  loc_AA78A0: FLdPr Me
  loc_AA78A3: MemStUI1
  loc_AA78A7: FLdRfVar var_8A
  loc_AA78AA: FLdPr Me
  loc_AA78AD: VCallAd Control_ID_Opcion4Opt
  loc_AA78B0: FStAdFunc var_88
  loc_AA78B3: FLdPr var_88
  loc_AA78B6:  = Me.Enabled
  loc_AA78BB: FLdI2 var_8A
  loc_AA78BE: FFree1Ad var_88
  loc_AA78C1: BranchF loc_AA796A
  loc_AA78C4: LitI2_Byte 0
  loc_AA78C6: FLdPr Me
  loc_AA78C9: VCallAd Control_ID_Opcion1Opt
  loc_AA78CC: FStAdFunc var_88
  loc_AA78CF: FLdPr var_88
  loc_AA78D2: Me.Value = from_stack_1b
  loc_AA78D7: FFree1Ad var_88
  loc_AA78DA: LitVar_FALSE
  loc_AA78DE: PopAdLdVar
  loc_AA78DF: FLdPr Me
  loc_AA78E2: VCallAd Control_ID_AniosMsk
  loc_AA78E5: FStAdFunc var_88
  loc_AA78E8: FLdPr var_88
  loc_AA78EB: LateIdSt
  loc_AA78F0: FFree1Ad var_88
  loc_AA78F3: LitI2_Byte 0
  loc_AA78F5: CStrUI1
  loc_AA78F7: CVarStr var_BC
  loc_AA78FA: PopAdLdVar
  loc_AA78FB: FLdPr Me
  loc_AA78FE: VCallAd Control_ID_AniosMsk
  loc_AA7901: FStAdFunc var_88
  loc_AA7904: FLdPr var_88
  loc_AA7907: LateIdSt
  loc_AA790C: FFree1Ad var_88
  loc_AA790F: FFree1Var var_BC = ""
  loc_AA7912: LitI2_Byte 0
  loc_AA7914: FLdPr Me
  loc_AA7917: VCallAd Control_ID_Opcion2Opt
  loc_AA791A: FStAdFunc var_88
  loc_AA791D: FLdPr var_88
  loc_AA7920: Me.Value = from_stack_1b
  loc_AA7925: FFree1Ad var_88
  loc_AA7928: LitI2_Byte 0
  loc_AA792A: FLdPr Me
  loc_AA792D: VCallAd Control_ID_Opcion3Opt
  loc_AA7930: FStAdFunc var_88
  loc_AA7933: FLdPr var_88
  loc_AA7936: Me.Value = from_stack_1b
  loc_AA793B: FFree1Ad var_88
  loc_AA793E: LitI2_Byte 0
  loc_AA7940: FLdPr Me
  loc_AA7943: VCallAd Control_ID_Opcion5Opt
  loc_AA7946: FStAdFunc var_88
  loc_AA7949: FLdPr var_88
  loc_AA794C: Me.Value = from_stack_1b
  loc_AA7951: FFree1Ad var_88
  loc_AA7954: LitI2_Byte 0
  loc_AA7956: FLdPr Me
  loc_AA7959: VCallAd Control_ID_Opcion6Opt
  loc_AA795C: FStAdFunc var_88
  loc_AA795F: FLdPr var_88
  loc_AA7962: Me.Value = from_stack_1b
  loc_AA7967: FFree1Ad var_88
  loc_AA796A: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AAFAC0
  'Data Table: 491EE0
  loc_AAF9E4: LitI2_Byte 0
  loc_AAF9E6: FLdPr Me
  loc_AAF9E9: MemStI2 bGenerado
  loc_AAF9EC: LitI2_Byte 0
  loc_AAF9EE: ILdRf Me
  loc_AAF9F1: CastAd
  loc_AAF9F4: FStAdFunc var_88
  loc_AAF9F7: FLdRfVar var_88
  loc_AAF9FA: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AAF9FF: FFree1Ad var_88
  loc_AAFA02: LitI2_Byte &HFF
  loc_AAFA04: FLdPr Me
  loc_AAFA07: VCallAd Control_ID_Opcion1Opt
  loc_AAFA0A: FStAdFunc var_88
  loc_AAFA0D: FLdPr var_88
  loc_AAFA10: Me.Value = from_stack_1b
  loc_AAFA15: FFree1Ad var_88
  loc_AAFA18: LitI2_Byte 0
  loc_AAFA1A: FLdPr Me
  loc_AAFA1D: VCallAd Control_ID_Opcion2Opt
  loc_AAFA20: FStAdFunc var_88
  loc_AAFA23: FLdPr var_88
  loc_AAFA26: Me.Value = from_stack_1b
  loc_AAFA2B: FFree1Ad var_88
  loc_AAFA2E: LitI2_Byte 0
  loc_AAFA30: CStrUI1
  loc_AAFA32: CVarStr var_98
  loc_AAFA35: PopAdLdVar
  loc_AAFA36: FLdPr Me
  loc_AAFA39: VCallAd Control_ID_AniosMsk
  loc_AAFA3C: FStAdFunc var_88
  loc_AAFA3F: FLdPr var_88
  loc_AAFA42: LateIdSt
  loc_AAFA47: FFree1Ad var_88
  loc_AAFA4A: FFree1Var var_98 = ""
  loc_AAFA4D: LitI2_Byte 0
  loc_AAFA4F: FLdPr Me
  loc_AAFA52: VCallAd Control_ID_Opcion3Opt
  loc_AAFA55: FStAdFunc var_88
  loc_AAFA58: FLdPr var_88
  loc_AAFA5B: Me.Value = from_stack_1b
  loc_AAFA60: FFree1Ad var_88
  loc_AAFA63: LitI2_Byte 0
  loc_AAFA65: FLdPr Me
  loc_AAFA68: VCallAd Control_ID_Opcion4Opt
  loc_AAFA6B: FStAdFunc var_88
  loc_AAFA6E: FLdPr var_88
  loc_AAFA71: Me.Value = from_stack_1b
  loc_AAFA76: FFree1Ad var_88
  loc_AAFA79: LitI2_Byte 0
  loc_AAFA7B: FLdPr Me
  loc_AAFA7E: VCallAd Control_ID_Opcion5Opt
  loc_AAFA81: FStAdFunc var_88
  loc_AAFA84: FLdPr var_88
  loc_AAFA87: Me.Value = from_stack_1b
  loc_AAFA8C: FFree1Ad var_88
  loc_AAFA8F: LitI2_Byte 0
  loc_AAFA91: FLdPr Me
  loc_AAFA94: VCallAd Control_ID_Opcion6Opt
  loc_AAFA97: FStAdFunc var_88
  loc_AAFA9A: FLdPr var_88
  loc_AAFA9D: Me.Value = from_stack_1b
  loc_AAFAA2: FFree1Ad var_88
  loc_AAFAA5: Call HabilitarCriterio()
  loc_AAFAAA: ILdRf Me
  loc_AAFAAD: CastAd
  loc_AAFAB0: FStAdFunc var_88
  loc_AAFAB3: FLdRfVar var_88
  loc_AAFAB6: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AAFABB: FFree1Ad var_88
  loc_AAFABE: ExitProcHresult
End Sub

Public Function htmFileGet() '492D54
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '492D63
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '492D72
  htmFile = Value
End Sub

Public Function bGeneradoGet() '492D81
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '492D90
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A89C98
  'Data Table: 491EE0
  loc_A89C14: LitI4 0
  loc_A89C19: LitI4 5
  loc_A89C1E: FLdRfVar var_88
  loc_A89C21: Redim
  loc_A89C2B: FLdPr Me
  loc_A89C2E: VCallAd Control_ID_Opcion1Opt
  loc_A89C31: CVarAd
  loc_A89C35: ParmAry1St
  loc_A89C3B: FLdPr Me
  loc_A89C3E: VCallAd Control_ID_Opcion2Opt
  loc_A89C41: CVarAd
  loc_A89C45: ParmAry1St
  loc_A89C4B: FLdPr Me
  loc_A89C4E: VCallAd Control_ID_Opcion3Opt
  loc_A89C51: CVarAd
  loc_A89C55: ParmAry1St
  loc_A89C5B: FLdPr Me
  loc_A89C5E: VCallAd Control_ID_Opcion4Opt
  loc_A89C61: CVarAd
  loc_A89C65: ParmAry1St
  loc_A89C6B: FLdPr Me
  loc_A89C6E: VCallAd Control_ID_Opcion5Opt
  loc_A89C71: CVarAd
  loc_A89C75: ParmAry1St
  loc_A89C7B: FLdPr Me
  loc_A89C7E: VCallAd Control_ID_Opcion6Opt
  loc_A89C81: CVarAd
  loc_A89C85: ParmAry1St
  loc_A89C8B: FLdRfVar var_88
  loc_A89C8E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A89C93: FLdRfVar var_88
  loc_A89C96: Erase
  loc_A89C97: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C06A18
  'Data Table: 491EE0
  loc_C06118: FLdPr Me
  loc_C0611B: MemLdI2 bGenerado
  loc_C0611E: BranchF loc_C06122
  loc_C06121: ExitProcHresult
  loc_C06122: LitVarStr var_94, "Generando reporte..."
  loc_C06127: PopAdLdVar
  loc_C06128: FLdPr Me
  loc_C0612B: VCallAd Control_ID_statusBar
  loc_C0612E: FStAdFunc var_A8
  loc_C06131: FLdPr var_A8
  loc_C06134: LateIdSt
  loc_C06139: FFree1Ad var_A8
  loc_C0613C: LitI4 &HB
  loc_C06141: CI2I4
  loc_C06142: FLdPr Me
  loc_C06145: Me.MousePointer = from_stack_1
  loc_C0614A: FLdPr Me
  loc_C0614D: MemLdRfVar from_stack_1.global_76
  loc_C06150: NewIfNullAd
  loc_C06153: FStAd var_AC 
  loc_C06157: FLdPr Me
  loc_C0615A: MemLdUI1 global_92
  loc_C0615E: FStUI1 var_AE
  loc_C06162: FLdUI1
  loc_C06166: LitI2_Byte 1
  loc_C06168: CUI1I2
  loc_C0616A: EqI2
  loc_C0616B: BranchF loc_C061BE
  loc_C0616E: LitStr " SELECT difunto.CodiDifu, DetaPers, DetaCeme, difunto.CodiTise, DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu, FeveDifu, FebaDifu"
  loc_C06171: LitStr " From difunto"
  loc_C06174: ConcatStr
  loc_C06175: FStStrNoPop var_B4
  loc_C06178: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu AND detadifu.BajaFeho IS NULL"
  loc_C0617B: ConcatStr
  loc_C0617C: FStStrNoPop var_B8
  loc_C0617F: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_C06182: ConcatStr
  loc_C06183: FStStrNoPop var_BC
  loc_C06186: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_C06189: ConcatStr
  loc_C0618A: FStStrNoPop var_C0
  loc_C0618D: LitStr " LEFT JOIN cementerio ON  cementerio.CodiCeme = difunto.CodiCeme"
  loc_C06190: ConcatStr
  loc_C06191: FStStrNoPop var_C4
  loc_C06194: LitStr " WHERE difunto.FebaDifu Is Null"
  loc_C06197: ConcatStr
  loc_C06198: FStStrNoPop var_C8
  loc_C0619B: LitStr " AND detadifu.CodiDifu IS NULL"
  loc_C0619E: ConcatStr
  loc_C0619F: FStStrNoPop var_CC
  loc_C061A2: FLdPr var_AC
  loc_C061A5: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C061AA: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_C061BB: Branch loc_C06421
  loc_C061BE: FLdUI1
  loc_C061C2: LitI2_Byte 2
  loc_C061C4: CUI1I2
  loc_C061C6: EqI2
  loc_C061C7: BranchF loc_C06248
  loc_C061CA: LitStr " SELECT difunto.CodiDifu, DetaPers, DetaCeme, difunto.CodiTise, DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu, FeveDifu, FebaDifu,"
  loc_C061CD: LitStr " (YEAR(FeveDifu)-YEAR(curdate())) - (RIGHT(fevedifu,5)<RIGHT(curdate(),5)) as AnioDifu"
  loc_C061D0: ConcatStr
  loc_C061D1: FStStrNoPop var_B4
  loc_C061D4: LitStr " From difunto"
  loc_C061D7: ConcatStr
  loc_C061D8: FStStrNoPop var_B8
  loc_C061DB: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_C061DE: ConcatStr
  loc_C061DF: FStStrNoPop var_BC
  loc_C061E2: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_C061E5: ConcatStr
  loc_C061E6: FStStrNoPop var_C0
  loc_C061E9: LitStr " LEFT JOIN cementerio ON  cementerio.CodiCeme = difunto.CodiCeme"
  loc_C061EC: ConcatStr
  loc_C061ED: FStStrNoPop var_C4
  loc_C061F0: LitStr " WHERE difunto.FebaDifu Is Null"
  loc_C061F3: ConcatStr
  loc_C061F4: FStStrNoPop var_C8
  loc_C061F7: LitStr " AND difunto.FeveDifu >= current_date"
  loc_C061FA: ConcatStr
  loc_C061FB: FStStrNoPop var_CC
  loc_C061FE: LitStr " having AnioDifu > "
  loc_C06201: ConcatStr
  loc_C06202: FStStrNoPop var_E0
  loc_C06205: FLdPr Me
  loc_C06208: VCallAd Control_ID_AniosMsk
  loc_C0620B: FStAdFunc var_A8
  loc_C0620E: FLdPr var_A8
  loc_C06211: LateIdLdVar var_DC DispID_0 0
  loc_C06218: CStrVarTmp
  loc_C06219: FStStrNoPop var_E4
  loc_C0621C: ConcatStr
  loc_C0621D: FStStrNoPop var_E8
  loc_C06220: FLdPr var_AC
  loc_C06223: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C06228: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_E0 = "": var_E4 = ""
  loc_C0623F: FFree1Ad var_A8
  loc_C06242: FFree1Var var_DC = ""
  loc_C06245: Branch loc_C06421
  loc_C06248: FLdUI1
  loc_C0624C: LitI2_Byte 3
  loc_C0624E: CUI1I2
  loc_C06250: EqI2
  loc_C06251: BranchF loc_C0629B
  loc_C06254: LitStr " SELECT difunto.CodiDifu, DetaPers, DetaCeme, difunto.CodiTise, DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu, FeveDifu, FebaDifu"
  loc_C06257: LitStr " From difunto"
  loc_C0625A: ConcatStr
  loc_C0625B: FStStrNoPop var_B4
  loc_C0625E: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_C06261: ConcatStr
  loc_C06262: FStStrNoPop var_B8
  loc_C06265: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_C06268: ConcatStr
  loc_C06269: FStStrNoPop var_BC
  loc_C0626C: LitStr " LEFT JOIN cementerio ON  cementerio.CodiCeme = difunto.CodiCeme"
  loc_C0626F: ConcatStr
  loc_C06270: FStStrNoPop var_C0
  loc_C06273: LitStr " WHERE difunto.FebaDifu Is Null"
  loc_C06276: ConcatStr
  loc_C06277: FStStrNoPop var_C4
  loc_C0627A: LitStr " AND (difunto.FeveDifu IS NULL OR difunto.FeveDifu < current_date)"
  loc_C0627D: ConcatStr
  loc_C0627E: FStStrNoPop var_C8
  loc_C06281: FLdPr var_AC
  loc_C06284: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C06289: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C06298: Branch loc_C06421
  loc_C0629B: FLdUI1
  loc_C0629F: LitI2_Byte 4
  loc_C062A1: CUI1I2
  loc_C062A3: EqI2
  loc_C062A4: BranchF loc_C062EE
  loc_C062A7: LitStr " SELECT difunto.CodiDifu, DetaPers, DetaCeme, difunto.CodiTise, DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu,"
  loc_C062AA: LitStr " FeveDifu , FebaDifu"
  loc_C062AD: ConcatStr
  loc_C062AE: FStStrNoPop var_B4
  loc_C062B1: LitStr " From difunto LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_C062B4: ConcatStr
  loc_C062B5: FStStrNoPop var_B8
  loc_C062B8: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_C062BB: ConcatStr
  loc_C062BC: FStStrNoPop var_BC
  loc_C062BF: LitStr " LEFT JOIN cementerio ON  cementerio.CodiCeme = difunto.CodiCeme"
  loc_C062C2: ConcatStr
  loc_C062C3: FStStrNoPop var_C0
  loc_C062C6: LitStr " WHERE difunto.FebaDifu Is Null"
  loc_C062C9: ConcatStr
  loc_C062CA: FStStrNoPop var_C4
  loc_C062CD: LitStr " AND difunto.CodiTise = 12 AND difunto.CodiCeme <> 2"
  loc_C062D0: ConcatStr
  loc_C062D1: FStStrNoPop var_C8
  loc_C062D4: FLdPr var_AC
  loc_C062D7: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C062DC: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C062EB: Branch loc_C06421
  loc_C062EE: FLdUI1
  loc_C062F2: LitI2_Byte 5
  loc_C062F4: CUI1I2
  loc_C062F6: EqI2
  loc_C062F7: BranchF loc_C06341
  loc_C062FA: LitStr " SELECT difunto.CodiDifu, DetaPers, DetaCeme, difunto.CodiTise, DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu,"
  loc_C062FD: LitStr " FeveDifu , FebaDifu"
  loc_C06300: ConcatStr
  loc_C06301: FStStrNoPop var_B4
  loc_C06304: LitStr " From difunto LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_C06307: ConcatStr
  loc_C06308: FStStrNoPop var_B8
  loc_C0630B: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_C0630E: ConcatStr
  loc_C0630F: FStStrNoPop var_BC
  loc_C06312: LitStr " LEFT JOIN cementerio ON  cementerio.CodiCeme = difunto.CodiCeme"
  loc_C06315: ConcatStr
  loc_C06316: FStStrNoPop var_C0
  loc_C06319: LitStr " WHERE difunto.FebaDifu Is Null"
  loc_C0631C: ConcatStr
  loc_C0631D: FStStrNoPop var_C4
  loc_C06320: LitStr " AND difunto.CodiTise <> 12 AND difunto.CodiCeme = 2"
  loc_C06323: ConcatStr
  loc_C06324: FStStrNoPop var_C8
  loc_C06327: FLdPr var_AC
  loc_C0632A: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C0632F: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_C0633E: Branch loc_C06421
  loc_C06341: FLdUI1
  loc_C06345: LitI2_Byte 6
  loc_C06347: CUI1I2
  loc_C06349: EqI2
  loc_C0634A: BranchF loc_C06421
  loc_C0634D: LitStr "SELECT cast(GROUP_CONCAT(CodiSece) as CHAR) as DetaSece FROM servceme WHERE DetaSece LIKE '" & Chr(37) & "expensas" & Chr(37) & "'"
  loc_C06350: FLdPr var_AC
  loc_C06353: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C06358: FLdRfVar var_EC
  loc_C0635B: FLdPr var_AC
  loc_C0635E: from_stack_1 = clsdifunto.RecordCount
  loc_C06363: ILdRf var_EC
  loc_C06366: LitI4 0
  loc_C0636B: GtI4
  loc_C0636C: BranchF loc_C06421
  loc_C0636F: LitStr " SELECT difunto.CodiDifu, DetaPers, DetaCeme, difunto.CodiTise, DetaTise, SeccDifu, PlanDifu, NumeDifu, FilaDifu,"
  loc_C06372: LitStr " FeveDifu, FebaDifu, cast(IFNULL(ctactedeta.PeriCtct,'') as CHAR) as PeriCtct, cast(IFNULL(ctactedeta.DebeCtde,'') as CHAR) as DebeCtct FROM difunto"
  loc_C06375: ConcatStr
  loc_C06376: FStStrNoPop var_B4
  loc_C06379: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_C0637C: ConcatStr
  loc_C0637D: FStStrNoPop var_B8
  loc_C06380: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_C06383: ConcatStr
  loc_C06384: FStStrNoPop var_BC
  loc_C06387: LitStr " LEFT JOIN cementerio ON  cementerio.CodiCeme = difunto.CodiCeme"
  loc_C0638A: ConcatStr
  loc_C0638B: FStStrNoPop var_C0
  loc_C0638E: LitStr " LEFT JOIN ctactedeta ON ctactedeta.CodiOfic = 4 AND ctactedeta.CuenCtct = difunto.CodiDifu"
  loc_C06391: ConcatStr
  loc_C06392: FStStrNoPop var_C4
  loc_C06395: LitStr " AND ctactedeta.CodiTimo = 1 "
  loc_C06398: ConcatStr
  loc_C06399: FStStrNoPop var_C8
  loc_C0639C: LitStr " AND ctactedeta.CodiCtde IN ("
  loc_C0639F: ConcatStr
  loc_C063A0: CVarStr var_104
  loc_C063A3: FLdRfVar var_DC
  loc_C063A6: FLdRfVar var_F4
  loc_C063A9: LitVarStr var_94, "DetaSece"
  loc_C063AE: PopAdLdVar
  loc_C063AF: FLdRfVar var_F0
  loc_C063B2: FLdRfVar var_A8
  loc_C063B5: FLdPr var_AC
  loc_C063B8: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C063BD: FLdPr var_A8
  loc_C063C0:  = Me.Fields
  loc_C063C5: FLdPr var_F0
  loc_C063C8: from_stack_2 = Me.Item(from_stack_1)
  loc_C063CD: FLdPr var_F4
  loc_C063D0:  = Me.Value
  loc_C063D5: FLdRfVar var_DC
  loc_C063D8: ConcatVar var_114
  loc_C063DC: LitVarStr var_A4, ")"
  loc_C063E1: ConcatVar var_124
  loc_C063E5: LitVarStr var_134, " WHERE difunto.FebaDifu Is Null"
  loc_C063EA: ConcatVar var_144
  loc_C063EE: CStrVarVal var_CC
  loc_C063F2: FLdPr var_AC
  loc_C063F5: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C063FA: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_C0640B: FFreeAd var_A8 = "": var_F0 = ""
  loc_C06414: FFreeVar var_104 = "": var_DC = "": var_114 = "": var_124 = ""
  loc_C06421: FLdRfVar var_EC
  loc_C06424: FLdPr var_AC
  loc_C06427: from_stack_1 = clsdifunto.RecordCount
  loc_C0642C: ILdRf var_EC
  loc_C0642F: LitI4 0
  loc_C06434: EqI4
  loc_C06435: BranchF loc_C06443
  loc_C06438: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C0643B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C06440: Branch loc_C069EE
  loc_C06443: LitI4 0
  loc_C06448: FLdRfVar var_EC
  loc_C0644B: FLdPr var_AC
  loc_C0644E: from_stack_1 = clsdifunto.RecordCount
  loc_C06453: ILdRf var_EC
  loc_C06456: FLdPr Me
  loc_C06459: MemLdRfVar from_stack_1.global_80
  loc_C0645C: Redim
  loc_C06466: FLdPr var_AC
  loc_C06469: Call clsdifunto.MoveFirst()
  loc_C0646E: LitI4 1
  loc_C06473: FLdPr Me
  loc_C06476: MemLdRfVar from_stack_1.global_84
  loc_C06479: FLdPr Me
  loc_C0647C: MemLdStr global_80
  loc_C0647F: LitI2_Byte 1
  loc_C06481: FnUBound
  loc_C06483: ForI4 var_14C
  loc_C06489: FLdRfVar var_F4
  loc_C0648C: LitVarStr var_94, "CodiDifu"
  loc_C06491: PopAdLdVar
  loc_C06492: FLdRfVar var_F0
  loc_C06495: FLdRfVar var_A8
  loc_C06498: FLdPr var_AC
  loc_C0649B: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C064A0: FLdPr var_A8
  loc_C064A3:  = Me.Fields
  loc_C064A8: FLdPr var_F0
  loc_C064AB: from_stack_2 = Me.Item(from_stack_1)
  loc_C064B0: LitI2_Byte 0
  loc_C064B2: LitVar_Missing var_104
  loc_C064B5: LitI2_Byte 0
  loc_C064B7: FLdZeroAd var_F4
  loc_C064BA: CVarAd
  loc_C064BE: PopAdLdVar
  loc_C064BF: FLdPr Me
  loc_C064C2: MemLdStr global_84
  loc_C064C5: FLdPr Me
  loc_C064C8: MemLdStr global_80
  loc_C064CB: AryLock
  loc_C064CE: Ary1LdPr
  loc_C064CF: MemLdRfVar from_stack_1.global_0
  loc_C064D2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C064D7: AryUnlock
  loc_C064DA: FFreeAd var_A8 = ""
  loc_C064E1: FFreeVar var_DC = ""
  loc_C064E8: FLdRfVar var_F4
  loc_C064EB: LitVarStr var_94, "DetaPers"
  loc_C064F0: PopAdLdVar
  loc_C064F1: FLdRfVar var_F0
  loc_C064F4: FLdRfVar var_A8
  loc_C064F7: FLdPr var_AC
  loc_C064FA: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C064FF: FLdPr var_A8
  loc_C06502:  = Me.Fields
  loc_C06507: FLdPr var_F0
  loc_C0650A: from_stack_2 = Me.Item(from_stack_1)
  loc_C0650F: LitI2_Byte 0
  loc_C06511: LitVar_Missing var_104
  loc_C06514: LitI2_Byte 0
  loc_C06516: FLdZeroAd var_F4
  loc_C06519: CVarAd
  loc_C0651D: PopAdLdVar
  loc_C0651E: FLdPr Me
  loc_C06521: MemLdStr global_84
  loc_C06524: FLdPr Me
  loc_C06527: MemLdStr global_80
  loc_C0652A: AryLock
  loc_C0652D: Ary1LdPr
  loc_C0652E: MemLdRfVar from_stack_1.global_4
  loc_C06531: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C06536: AryUnlock
  loc_C06539: FFreeAd var_A8 = ""
  loc_C06540: FFreeVar var_DC = ""
  loc_C06547: FLdRfVar var_F4
  loc_C0654A: LitVarStr var_94, "DetaCeme"
  loc_C0654F: PopAdLdVar
  loc_C06550: FLdRfVar var_F0
  loc_C06553: FLdRfVar var_A8
  loc_C06556: FLdPr var_AC
  loc_C06559: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C0655E: FLdPr var_A8
  loc_C06561:  = Me.Fields
  loc_C06566: FLdPr var_F0
  loc_C06569: from_stack_2 = Me.Item(from_stack_1)
  loc_C0656E: LitI2_Byte 0
  loc_C06570: LitVar_Missing var_104
  loc_C06573: LitI2_Byte 0
  loc_C06575: FLdZeroAd var_F4
  loc_C06578: CVarAd
  loc_C0657C: PopAdLdVar
  loc_C0657D: FLdPr Me
  loc_C06580: MemLdStr global_84
  loc_C06583: FLdPr Me
  loc_C06586: MemLdStr global_80
  loc_C06589: AryLock
  loc_C0658C: Ary1LdPr
  loc_C0658D: MemLdRfVar from_stack_1.global_8
  loc_C06590: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C06595: AryUnlock
  loc_C06598: FFreeAd var_A8 = ""
  loc_C0659F: FFreeVar var_DC = ""
  loc_C065A6: FLdRfVar var_F4
  loc_C065A9: LitVarStr var_94, "DetaTise"
  loc_C065AE: PopAdLdVar
  loc_C065AF: FLdRfVar var_F0
  loc_C065B2: FLdRfVar var_A8
  loc_C065B5: FLdPr var_AC
  loc_C065B8: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C065BD: FLdPr var_A8
  loc_C065C0:  = Me.Fields
  loc_C065C5: FLdPr var_F0
  loc_C065C8: from_stack_2 = Me.Item(from_stack_1)
  loc_C065CD: LitI2_Byte 0
  loc_C065CF: LitVar_Missing var_104
  loc_C065D2: LitI2_Byte 0
  loc_C065D4: FLdZeroAd var_F4
  loc_C065D7: CVarAd
  loc_C065DB: PopAdLdVar
  loc_C065DC: FLdPr Me
  loc_C065DF: MemLdStr global_84
  loc_C065E2: FLdPr Me
  loc_C065E5: MemLdStr global_80
  loc_C065E8: AryLock
  loc_C065EB: Ary1LdPr
  loc_C065EC: MemLdRfVar from_stack_1.global_12
  loc_C065EF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C065F4: AryUnlock
  loc_C065F7: FFreeAd var_A8 = ""
  loc_C065FE: FFreeVar var_DC = ""
  loc_C06605: FLdRfVar var_F4
  loc_C06608: LitVarStr var_94, "FeveDifu"
  loc_C0660D: PopAdLdVar
  loc_C0660E: FLdRfVar var_F0
  loc_C06611: FLdRfVar var_A8
  loc_C06614: FLdPr var_AC
  loc_C06617: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C0661C: FLdPr var_A8
  loc_C0661F:  = Me.Fields
  loc_C06624: FLdPr var_F0
  loc_C06627: from_stack_2 = Me.Item(from_stack_1)
  loc_C0662C: LitI2_Byte 0
  loc_C0662E: LitVar_Missing var_104
  loc_C06631: LitI2_Byte 0
  loc_C06633: FLdZeroAd var_F4
  loc_C06636: CVarAd
  loc_C0663A: PopAdLdVar
  loc_C0663B: FLdPr Me
  loc_C0663E: MemLdStr global_84
  loc_C06641: FLdPr Me
  loc_C06644: MemLdStr global_80
  loc_C06647: AryLock
  loc_C0664A: Ary1LdPr
  loc_C0664B: MemLdRfVar from_stack_1.global_16
  loc_C0664E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C06653: AryUnlock
  loc_C06656: FFreeAd var_A8 = ""
  loc_C0665D: FFreeVar var_DC = ""
  loc_C06664: FLdPr Me
  loc_C06667: MemLdUI1 global_92
  loc_C0666B: CI2UI1
  loc_C0666D: LitI2_Byte 2
  loc_C0666F: EqI2
  loc_C06670: BranchF loc_C066D2
  loc_C06673: FLdRfVar var_F4
  loc_C06676: LitVarStr var_94, "AnioDifu"
  loc_C0667B: PopAdLdVar
  loc_C0667C: FLdRfVar var_F0
  loc_C0667F: FLdRfVar var_A8
  loc_C06682: FLdPr var_AC
  loc_C06685: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C0668A: FLdPr var_A8
  loc_C0668D:  = Me.Fields
  loc_C06692: FLdPr var_F0
  loc_C06695: from_stack_2 = Me.Item(from_stack_1)
  loc_C0669A: LitI2_Byte 0
  loc_C0669C: LitVar_Missing var_104
  loc_C0669F: LitI2_Byte 0
  loc_C066A1: FLdZeroAd var_F4
  loc_C066A4: CVarAd
  loc_C066A8: PopAdLdVar
  loc_C066A9: FLdPr Me
  loc_C066AC: MemLdStr global_84
  loc_C066AF: FLdPr Me
  loc_C066B2: MemLdStr global_80
  loc_C066B5: AryLock
  loc_C066B8: Ary1LdPr
  loc_C066B9: MemLdRfVar from_stack_1.global_20
  loc_C066BC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C066C1: AryUnlock
  loc_C066C4: FFreeAd var_A8 = ""
  loc_C066CB: FFreeVar var_DC = ""
  loc_C066D2: FLdPr Me
  loc_C066D5: MemLdUI1 global_92
  loc_C066D9: CI2UI1
  loc_C066DB: LitI2_Byte 6
  loc_C066DD: EqI2
  loc_C066DE: BranchF loc_C0679F
  loc_C066E1: FLdRfVar var_F4
  loc_C066E4: LitVarStr var_94, "PeriCtct"
  loc_C066E9: PopAdLdVar
  loc_C066EA: FLdRfVar var_F0
  loc_C066ED: FLdRfVar var_A8
  loc_C066F0: FLdPr var_AC
  loc_C066F3: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C066F8: FLdPr var_A8
  loc_C066FB:  = Me.Fields
  loc_C06700: FLdPr var_F0
  loc_C06703: from_stack_2 = Me.Item(from_stack_1)
  loc_C06708: LitI2_Byte 0
  loc_C0670A: LitVar_Missing var_104
  loc_C0670D: LitI2_Byte 0
  loc_C0670F: FLdZeroAd var_F4
  loc_C06712: CVarAd
  loc_C06716: PopAdLdVar
  loc_C06717: FLdPr Me
  loc_C0671A: MemLdStr global_84
  loc_C0671D: FLdPr Me
  loc_C06720: MemLdStr global_80
  loc_C06723: AryLock
  loc_C06726: Ary1LdPr
  loc_C06727: MemLdRfVar from_stack_1.global_40
  loc_C0672A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0672F: AryUnlock
  loc_C06732: FFreeAd var_A8 = ""
  loc_C06739: FFreeVar var_DC = ""
  loc_C06740: FLdRfVar var_F4
  loc_C06743: LitVarStr var_94, "DebeCtct"
  loc_C06748: PopAdLdVar
  loc_C06749: FLdRfVar var_F0
  loc_C0674C: FLdRfVar var_A8
  loc_C0674F: FLdPr var_AC
  loc_C06752: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C06757: FLdPr var_A8
  loc_C0675A:  = Me.Fields
  loc_C0675F: FLdPr var_F0
  loc_C06762: from_stack_2 = Me.Item(from_stack_1)
  loc_C06767: LitI2_Byte 0
  loc_C06769: LitVar_Missing var_104
  loc_C0676C: LitI2_Byte 0
  loc_C0676E: FLdZeroAd var_F4
  loc_C06771: CVarAd
  loc_C06775: PopAdLdVar
  loc_C06776: FLdPr Me
  loc_C06779: MemLdStr global_84
  loc_C0677C: FLdPr Me
  loc_C0677F: MemLdStr global_80
  loc_C06782: AryLock
  loc_C06785: Ary1LdPr
  loc_C06786: MemLdRfVar from_stack_1.global_44
  loc_C06789: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0678E: AryUnlock
  loc_C06791: FFreeAd var_A8 = ""
  loc_C06798: FFreeVar var_DC = ""
  loc_C0679F: FLdRfVar var_F4
  loc_C067A2: LitVarStr var_94, "SeccDifu"
  loc_C067A7: PopAdLdVar
  loc_C067A8: FLdRfVar var_F0
  loc_C067AB: FLdRfVar var_A8
  loc_C067AE: FLdPr var_AC
  loc_C067B1: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C067B6: FLdPr var_A8
  loc_C067B9:  = Me.Fields
  loc_C067BE: FLdPr var_F0
  loc_C067C1: from_stack_2 = Me.Item(from_stack_1)
  loc_C067C6: LitI2_Byte 0
  loc_C067C8: LitVar_Missing var_104
  loc_C067CB: LitI2_Byte 0
  loc_C067CD: FLdZeroAd var_F4
  loc_C067D0: CVarAd
  loc_C067D4: PopAdLdVar
  loc_C067D5: FLdPr Me
  loc_C067D8: MemLdStr global_84
  loc_C067DB: FLdPr Me
  loc_C067DE: MemLdStr global_80
  loc_C067E1: AryLock
  loc_C067E4: Ary1LdPr
  loc_C067E5: MemLdRfVar from_stack_1.global_24
  loc_C067E8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C067ED: AryUnlock
  loc_C067F0: FFreeAd var_A8 = ""
  loc_C067F7: FFreeVar var_DC = ""
  loc_C067FE: FLdRfVar var_DC
  loc_C06801: FLdRfVar var_F4
  loc_C06804: LitVarStr var_94, "CodiTise"
  loc_C06809: PopAdLdVar
  loc_C0680A: FLdRfVar var_F0
  loc_C0680D: FLdRfVar var_A8
  loc_C06810: FLdPr var_AC
  loc_C06813: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C06818: FLdPr var_A8
  loc_C0681B:  = Me.Fields
  loc_C06820: FLdPr var_F0
  loc_C06823: from_stack_2 = Me.Item(from_stack_1)
  loc_C06828: FLdPr var_F4
  loc_C0682B:  = Me.Value
  loc_C06830: FLdRfVar var_114
  loc_C06833: FLdRfVar var_15C
  loc_C06836: LitVarStr var_134, "PlanDifu"
  loc_C0683B: PopAdLdVar
  loc_C0683C: FLdRfVar var_158
  loc_C0683F: FLdRfVar var_154
  loc_C06842: FLdPr var_AC
  loc_C06845: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C0684A: FLdPr var_154
  loc_C0684D:  = Me.Fields
  loc_C06852: FLdPr var_158
  loc_C06855: from_stack_2 = Me.Item(from_stack_1)
  loc_C0685A: FLdPr var_15C
  loc_C0685D:  = Me.Value
  loc_C06862: LitVarStr var_19C, "Planta ALta"
  loc_C06867: FStVarCopyObj var_1AC
  loc_C0686A: FLdRfVar var_1AC
  loc_C0686D: LitVarStr var_17C, "Planta Baja"
  loc_C06872: FStVarCopyObj var_18C
  loc_C06875: FLdRfVar var_18C
  loc_C06878: FLdRfVar var_114
  loc_C0687B: LitVarI2 var_16C, 0
  loc_C06880: HardType
  loc_C06881: EqVar var_124
  loc_C06885: FStVar var_144
  loc_C06889: FLdRfVar var_144
  loc_C0688C: FLdRfVar var_1BC
  loc_C0688F: ImpAdCallFPR4  = IIf(, , )
  loc_C06894: LitVarStr var_1DC, vbNullString
  loc_C06899: FStVarCopyObj var_1EC
  loc_C0689C: FLdRfVar var_1EC
  loc_C0689F: FLdRfVar var_1BC
  loc_C068A2: FLdRfVar var_DC
  loc_C068A5: LitVarI2 var_A4, 3
  loc_C068AA: HardType
  loc_C068AB: LeVar var_104
  loc_C068AF: FStVar var_1CC
  loc_C068B3: FLdRfVar var_1CC
  loc_C068B6: FLdRfVar var_1FC
  loc_C068B9: ImpAdCallFPR4  = IIf(, , )
  loc_C068BE: LitI2_Byte 0
  loc_C068C0: LitVar_Missing var_21C
  loc_C068C3: LitI2_Byte 0
  loc_C068C5: FLdVar var_1FC
  loc_C068C9: FLdPr Me
  loc_C068CC: MemLdStr global_84
  loc_C068CF: FLdPr Me
  loc_C068D2: MemLdStr global_80
  loc_C068D5: AryLock
  loc_C068D8: Ary1LdPr
  loc_C068D9: MemLdRfVar from_stack_1.global_28
  loc_C068DC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C068E1: AryUnlock
  loc_C068E4: FFreeAd var_A8 = "": var_F0 = "": var_F4 = "": var_154 = "": var_158 = ""
  loc_C068F3: FFreeVar var_DC = "": var_114 = "": var_144 = "": var_18C = "": var_1AC = "": var_1CC = "": var_1BC = "": var_1EC = "": var_1FC = ""
  loc_C0690A: FLdRfVar var_F4
  loc_C0690D: LitVarStr var_94, "NumeDifu"
  loc_C06912: PopAdLdVar
  loc_C06913: FLdRfVar var_F0
  loc_C06916: FLdRfVar var_A8
  loc_C06919: FLdPr var_AC
  loc_C0691C: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C06921: FLdPr var_A8
  loc_C06924:  = Me.Fields
  loc_C06929: FLdPr var_F0
  loc_C0692C: from_stack_2 = Me.Item(from_stack_1)
  loc_C06931: LitI2_Byte 0
  loc_C06933: LitVar_Missing var_104
  loc_C06936: LitI2_Byte 0
  loc_C06938: FLdZeroAd var_F4
  loc_C0693B: CVarAd
  loc_C0693F: PopAdLdVar
  loc_C06940: FLdPr Me
  loc_C06943: MemLdStr global_84
  loc_C06946: FLdPr Me
  loc_C06949: MemLdStr global_80
  loc_C0694C: AryLock
  loc_C0694F: Ary1LdPr
  loc_C06950: MemLdRfVar from_stack_1.global_32
  loc_C06953: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C06958: AryUnlock
  loc_C0695B: FFreeAd var_A8 = ""
  loc_C06962: FFreeVar var_DC = ""
  loc_C06969: FLdRfVar var_F4
  loc_C0696C: LitVarStr var_94, "FilaDifu"
  loc_C06971: PopAdLdVar
  loc_C06972: FLdRfVar var_F0
  loc_C06975: FLdRfVar var_A8
  loc_C06978: FLdPr var_AC
  loc_C0697B: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C06980: FLdPr var_A8
  loc_C06983:  = Me.Fields
  loc_C06988: FLdPr var_F0
  loc_C0698B: from_stack_2 = Me.Item(from_stack_1)
  loc_C06990: LitI2_Byte 0
  loc_C06992: LitVar_Missing var_104
  loc_C06995: LitI2_Byte 0
  loc_C06997: FLdZeroAd var_F4
  loc_C0699A: CVarAd
  loc_C0699E: PopAdLdVar
  loc_C0699F: FLdPr Me
  loc_C069A2: MemLdStr global_84
  loc_C069A5: FLdPr Me
  loc_C069A8: MemLdStr global_80
  loc_C069AB: AryLock
  loc_C069AE: Ary1LdPr
  loc_C069AF: MemLdRfVar from_stack_1.global_36
  loc_C069B2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C069B7: AryUnlock
  loc_C069BA: FFreeAd var_A8 = ""
  loc_C069C1: FFreeVar var_DC = ""
  loc_C069C8: LitI2_Byte 1
  loc_C069CA: PopTmpLdAd2 var_21E
  loc_C069CD: FLdPr var_AC
  loc_C069D0: Call clsdifunto.Move(from_stack_1v)
  loc_C069D5: FLdPr Me
  loc_C069D8: MemLdRfVar from_stack_1.global_84
  loc_C069DB: NextI4 var_14C, loc_C06489
  loc_C069E0: LitNothing
  loc_C069E2: FStAd var_AC 
  loc_C069E6: LitI2_Byte &HFF
  loc_C069E8: FLdPr Me
  loc_C069EB: MemStI2 bGenerado
  loc_C069EE: LitI4 0
  loc_C069F3: CI2I4
  loc_C069F4: FLdPr Me
  loc_C069F7: Me.MousePointer = from_stack_1
  loc_C069FC: LitVarStr var_94, vbNullString
  loc_C06A01: PopAdLdVar
  loc_C06A02: FLdPr Me
  loc_C06A05: VCallAd Control_ID_statusBar
  loc_C06A08: FStAdFunc var_A8
  loc_C06A0B: FLdPr var_A8
  loc_C06A0E: LateIdSt
  loc_C06A13: FFree1Ad var_A8
  loc_C06A16: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B73708
  'Data Table: 491EE0
  loc_B73270: FLdRfVar var_88
  loc_B73273: LitI2_Byte 0
  loc_B73275: LitI2_Byte &HFF
  loc_B73277: ImpAdLdI4 MemVar_D93C84
  loc_B7327A: FLdPr Me
  loc_B7327D: MemLdRfVar from_stack_1.global_72
  loc_B73280: NewIfNullPr IFileSystem3
  loc_B73283: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B73288: ILdRf var_88
  loc_B7328B: FLdPr Me
  loc_B7328E: MemStVarAd
  loc_B73292: FFree1Ad var_88
  loc_B73295: LitI2_Byte &HFF
  loc_B73297: ImpAdStI2 MemVar_D93C8A
  loc_B7329A: Call Proc_182_23_B82CC8()
  loc_B7329F: LitI4 1
  loc_B732A4: FLdPr Me
  loc_B732A7: MemLdRfVar from_stack_1.global_84
  loc_B732AA: FLdPr Me
  loc_B732AD: MemLdStr global_80
  loc_B732B0: LitI2_Byte 1
  loc_B732B2: FnUBound
  loc_B732B4: ForI4 var_90
  loc_B732BA: FLdPr Me
  loc_B732BD: MemLdStr global_84
  loc_B732C0: FLdPr Me
  loc_B732C3: MemLdStr global_80
  loc_B732C6: AryLock
  loc_B732C9: Ary1LdRf
  loc_B732CA: FStR4 var_98
  loc_B732CD: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B732D2: PopAdLdVar
  loc_B732D3: FLdPr Me
  loc_B732D6: MemLdRfVar from_stack_1.htmFile
  loc_B732D9: LdPrVar
  loc_B732DB: LateMemCall
  loc_B732E1: LitStr vbNullString
  loc_B732E4: LitI2_Byte 0
  loc_B732E6: LitI2_Byte 0
  loc_B732E8: LitI2_Byte 0
  loc_B732EA: LitStr "right"
  loc_B732ED: FMemLdR4 var_98(0)
  loc_B732F2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B732F7: CVarStr var_C8
  loc_B732FA: PopAdLdVar
  loc_B732FB: FLdPr Me
  loc_B732FE: MemLdRfVar from_stack_1.htmFile
  loc_B73301: LdPrVar
  loc_B73303: LateMemCall
  loc_B73309: FFree1Var var_C8 = ""
  loc_B7330C: LitStr vbNullString
  loc_B7330F: LitI2_Byte 0
  loc_B73311: LitI2_Byte 0
  loc_B73313: LitI2_Byte 0
  loc_B73315: LitStr "left"
  loc_B73318: FMemLdR4 var_98(4)
  loc_B7331D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B73322: CVarStr var_C8
  loc_B73325: PopAdLdVar
  loc_B73326: FLdPr Me
  loc_B73329: MemLdRfVar from_stack_1.htmFile
  loc_B7332C: LdPrVar
  loc_B7332E: LateMemCall
  loc_B73334: FFree1Var var_C8 = ""
  loc_B73337: LitStr vbNullString
  loc_B7333A: LitI2_Byte 0
  loc_B7333C: LitI2_Byte 0
  loc_B7333E: LitI2_Byte 0
  loc_B73340: LitStr "left"
  loc_B73343: FMemLdR4 var_98(8)
  loc_B73348: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B7334D: CVarStr var_C8
  loc_B73350: PopAdLdVar
  loc_B73351: FLdPr Me
  loc_B73354: MemLdRfVar from_stack_1.htmFile
  loc_B73357: LdPrVar
  loc_B73359: LateMemCall
  loc_B7335F: FFree1Var var_C8 = ""
  loc_B73362: LitStr vbNullString
  loc_B73365: LitI2_Byte 0
  loc_B73367: LitI2_Byte 0
  loc_B73369: LitI2_Byte 0
  loc_B7336B: LitStr "center"
  loc_B7336E: FMemLdR4 var_98(16)
  loc_B73373: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B73378: CVarStr var_C8
  loc_B7337B: PopAdLdVar
  loc_B7337C: FLdPr Me
  loc_B7337F: MemLdRfVar from_stack_1.htmFile
  loc_B73382: LdPrVar
  loc_B73384: LateMemCall
  loc_B7338A: FFree1Var var_C8 = ""
  loc_B7338D: FLdPr Me
  loc_B73390: MemLdUI1 global_92
  loc_B73394: CI2UI1
  loc_B73396: LitI2_Byte 2
  loc_B73398: EqI2
  loc_B73399: BranchF loc_B733C7
  loc_B7339C: LitStr vbNullString
  loc_B7339F: LitI2_Byte 0
  loc_B733A1: LitI2_Byte 0
  loc_B733A3: LitI2_Byte 0
  loc_B733A5: LitStr "center"
  loc_B733A8: FMemLdR4 var_98(20)
  loc_B733AD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B733B2: CVarStr var_C8
  loc_B733B5: PopAdLdVar
  loc_B733B6: FLdPr Me
  loc_B733B9: MemLdRfVar from_stack_1.htmFile
  loc_B733BC: LdPrVar
  loc_B733BE: LateMemCall
  loc_B733C4: FFree1Var var_C8 = ""
  loc_B733C7: FLdPr Me
  loc_B733CA: MemLdUI1 global_92
  loc_B733CE: CI2UI1
  loc_B733D0: LitI2_Byte 6
  loc_B733D2: EqI2
  loc_B733D3: BranchF loc_B7342C
  loc_B733D6: LitStr vbNullString
  loc_B733D9: LitI2_Byte 0
  loc_B733DB: LitI2_Byte 0
  loc_B733DD: LitI2_Byte 0
  loc_B733DF: LitStr "right"
  loc_B733E2: FMemLdR4 var_98(40)
  loc_B733E7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B733EC: CVarStr var_C8
  loc_B733EF: PopAdLdVar
  loc_B733F0: FLdPr Me
  loc_B733F3: MemLdRfVar from_stack_1.htmFile
  loc_B733F6: LdPrVar
  loc_B733F8: LateMemCall
  loc_B733FE: FFree1Var var_C8 = ""
  loc_B73401: LitStr vbNullString
  loc_B73404: LitI2_Byte 0
  loc_B73406: LitI2_Byte 0
  loc_B73408: LitI2_Byte 0
  loc_B7340A: LitStr "right"
  loc_B7340D: FMemLdR4 var_98(44)
  loc_B73412: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B73417: CVarStr var_C8
  loc_B7341A: PopAdLdVar
  loc_B7341B: FLdPr Me
  loc_B7341E: MemLdRfVar from_stack_1.htmFile
  loc_B73421: LdPrVar
  loc_B73423: LateMemCall
  loc_B73429: FFree1Var var_C8 = ""
  loc_B7342C: LitStr vbNullString
  loc_B7342F: LitI2_Byte 0
  loc_B73431: LitI2_Byte 0
  loc_B73433: LitI2_Byte 0
  loc_B73435: LitStr "left"
  loc_B73438: FMemLdR4 var_98(12)
  loc_B7343D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B73442: CVarStr var_C8
  loc_B73445: PopAdLdVar
  loc_B73446: FLdPr Me
  loc_B73449: MemLdRfVar from_stack_1.htmFile
  loc_B7344C: LdPrVar
  loc_B7344E: LateMemCall
  loc_B73454: FFree1Var var_C8 = ""
  loc_B73457: LitStr vbNullString
  loc_B7345A: LitI2_Byte 0
  loc_B7345C: LitI2_Byte 0
  loc_B7345E: LitI2_Byte 0
  loc_B73460: LitStr "right"
  loc_B73463: FMemLdR4 var_98(24)
  loc_B73468: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B7346D: CVarStr var_C8
  loc_B73470: PopAdLdVar
  loc_B73471: FLdPr Me
  loc_B73474: MemLdRfVar from_stack_1.htmFile
  loc_B73477: LdPrVar
  loc_B73479: LateMemCall
  loc_B7347F: FFree1Var var_C8 = ""
  loc_B73482: LitStr vbNullString
  loc_B73485: LitI2_Byte 0
  loc_B73487: LitI2_Byte 0
  loc_B73489: LitI2_Byte 0
  loc_B7348B: LitStr "right"
  loc_B7348E: FMemLdR4 var_98(28)
  loc_B73493: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B73498: CVarStr var_C8
  loc_B7349B: PopAdLdVar
  loc_B7349C: FLdPr Me
  loc_B7349F: MemLdRfVar from_stack_1.htmFile
  loc_B734A2: LdPrVar
  loc_B734A4: LateMemCall
  loc_B734AA: FFree1Var var_C8 = ""
  loc_B734AD: LitStr vbNullString
  loc_B734B0: LitI2_Byte 0
  loc_B734B2: LitI2_Byte 0
  loc_B734B4: LitI2_Byte 0
  loc_B734B6: LitStr "right"
  loc_B734B9: FMemLdR4 var_98(32)
  loc_B734BE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B734C3: CVarStr var_C8
  loc_B734C6: PopAdLdVar
  loc_B734C7: FLdPr Me
  loc_B734CA: MemLdRfVar from_stack_1.htmFile
  loc_B734CD: LdPrVar
  loc_B734CF: LateMemCall
  loc_B734D5: FFree1Var var_C8 = ""
  loc_B734D8: LitStr vbNullString
  loc_B734DB: LitI2_Byte 0
  loc_B734DD: LitI2_Byte 0
  loc_B734DF: LitI2_Byte 0
  loc_B734E1: LitStr "right"
  loc_B734E4: FMemLdR4 var_98(36)
  loc_B734E9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B734EE: CVarStr var_C8
  loc_B734F1: PopAdLdVar
  loc_B734F2: FLdPr Me
  loc_B734F5: MemLdRfVar from_stack_1.htmFile
  loc_B734F8: LdPrVar
  loc_B734FA: LateMemCall
  loc_B73500: FFree1Var var_C8 = ""
  loc_B73503: LitVarStr var_A8, "     </tr>"
  loc_B73508: PopAdLdVar
  loc_B73509: FLdPr Me
  loc_B7350C: MemLdRfVar from_stack_1.htmFile
  loc_B7350F: LdPrVar
  loc_B73511: LateMemCall
  loc_B73517: LitI4 0
  loc_B7351C: FStR4 var_98
  loc_B7351F: AryUnlock
  loc_B73522: FLdPr Me
  loc_B73525: MemLdRfVar from_stack_1.global_84
  loc_B73528: NextI4 var_90, loc_B732BA
  loc_B7352D: LitVarStr var_A8, "  <tr align=""center"" class=""Totales"">"
  loc_B73532: PopAdLdVar
  loc_B73533: FLdPr Me
  loc_B73536: MemLdRfVar from_stack_1.htmFile
  loc_B73539: LdPrVar
  loc_B7353B: LateMemCall
  loc_B73541: FLdPr Me
  loc_B73544: MemLdUI1 global_92
  loc_B73548: CI2UI1
  loc_B7354A: LitI2_Byte 6
  loc_B7354C: NeI2
  loc_B7354D: BranchF loc_B73635
  loc_B73550: LitVarStr var_108, "    <th colspan="""
  loc_B73555: LitVarI2 var_E8, 9
  loc_B7355A: LitVarI2 var_C8, 10
  loc_B7355F: FLdPr Me
  loc_B73562: MemLdUI1 global_92
  loc_B73566: CI2UI1
  loc_B73568: LitI2_Byte 2
  loc_B7356A: EqI2
  loc_B7356B: CVarBoolI2 var_A8
  loc_B7356F: FLdRfVar var_F8
  loc_B73572: ImpAdCallFPR4  = IIf(, , )
  loc_B73577: FLdRfVar var_F8
  loc_B7357A: ConcatVar var_118
  loc_B7357E: LitVarStr var_128, """>"
  loc_B73583: ConcatVar var_138
  loc_B73587: LitI4 -1
  loc_B7358C: LitI4 0
  loc_B73591: LitI4 -1
  loc_B73596: LitI4 0
  loc_B7359B: FLdPr Me
  loc_B7359E: MemLdStr global_80
  loc_B735A1: LitI2_Byte 1
  loc_B735A3: FnUBound
  loc_B735A5: CVarI4
  loc_B735A9: ImpAdCallI2 FormatNumber(, , , , )
  loc_B735AE: CVarStr var_168
  loc_B735B1: ConcatVar var_178
  loc_B735B5: LitVarStr var_188, " cuenta"
  loc_B735BA: ConcatVar var_198
  loc_B735BE: LitVarStr var_1D8, vbNullString
  loc_B735C3: FStVarCopyObj var_1E8
  loc_B735C6: FLdRfVar var_1E8
  loc_B735C9: LitVarStr var_1B8, "s"
  loc_B735CE: FStVarCopyObj var_1C8
  loc_B735D1: FLdRfVar var_1C8
  loc_B735D4: FLdPr Me
  loc_B735D7: MemLdStr global_80
  loc_B735DA: LitI2_Byte 1
  loc_B735DC: FnUBound
  loc_B735DE: LitI4 1
  loc_B735E3: GtI4
  loc_B735E4: CVarBoolI2 var_1A8
  loc_B735E8: FLdRfVar var_1F8
  loc_B735EB: ImpAdCallFPR4  = IIf(, , )
  loc_B735F0: FLdRfVar var_1F8
  loc_B735F3: ConcatVar var_208
  loc_B735F7: LitVarStr var_218, ".</th>"
  loc_B735FC: ConcatVar var_228
  loc_B73600: PopAdLdVar
  loc_B73601: FLdPr Me
  loc_B73604: MemLdRfVar from_stack_1.htmFile
  loc_B73607: LdPrVar
  loc_B73609: LateMemCall
  loc_B7360F: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_158 = "": var_138 = "": var_168 = "": var_178 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_198 = "": var_1F8 = "": var_208 = ""
  loc_B73632: Branch loc_B736D8
  loc_B73635: LitStr "    <th colspan=""11"">"
  loc_B73638: LitI4 -1
  loc_B7363D: LitI4 0
  loc_B73642: LitI4 -1
  loc_B73647: LitI4 0
  loc_B7364C: FLdPr Me
  loc_B7364F: MemLdStr global_80
  loc_B73652: LitI2_Byte 1
  loc_B73654: FnUBound
  loc_B73656: CVarI4
  loc_B7365A: ImpAdCallI2 FormatNumber(, , , , )
  loc_B7365F: FStStrNoPop var_23C
  loc_B73662: ConcatStr
  loc_B73663: FStStrNoPop var_240
  loc_B73666: LitStr " cuenta"
  loc_B73669: ConcatStr
  loc_B7366A: CVarStr var_138
  loc_B7366D: LitVarStr var_108, vbNullString
  loc_B73672: FStVarCopyObj var_F8
  loc_B73675: FLdRfVar var_F8
  loc_B73678: LitVarStr var_D8, "s"
  loc_B7367D: FStVarCopyObj var_E8
  loc_B73680: FLdRfVar var_E8
  loc_B73683: FLdPr Me
  loc_B73686: MemLdStr global_80
  loc_B73689: LitI2_Byte 1
  loc_B7368B: FnUBound
  loc_B7368D: LitI4 1
  loc_B73692: GtI4
  loc_B73693: CVarBoolI2 var_B8
  loc_B73697: FLdRfVar var_118
  loc_B7369A: ImpAdCallFPR4  = IIf(, , )
  loc_B7369F: FLdRfVar var_118
  loc_B736A2: ConcatVar var_158
  loc_B736A6: LitVarStr var_128, ".</th>"
  loc_B736AB: ConcatVar var_168
  loc_B736AF: PopAdLdVar
  loc_B736B0: FLdPr Me
  loc_B736B3: MemLdRfVar from_stack_1.htmFile
  loc_B736B6: LdPrVar
  loc_B736B8: LateMemCall
  loc_B736BE: FFreeStr var_23C = ""
  loc_B736C5: FFreeVar var_C8 = "": var_B8 = "": var_E8 = "": var_F8 = "": var_138 = "": var_118 = "": var_158 = ""
  loc_B736D8: LitVarStr var_A8, "  </tr>"
  loc_B736DD: PopAdLdVar
  loc_B736DE: FLdPr Me
  loc_B736E1: MemLdRfVar from_stack_1.htmFile
  loc_B736E4: LdPrVar
  loc_B736E6: LateMemCall
  loc_B736EC: Call Proc_182_24_A0C8A8()
  loc_B736F1: FLdPr Me
  loc_B736F4: MemLdRfVar from_stack_1.htmFile
  loc_B736F7: LdPrVar
  loc_B736F9: LateMemCall
  loc_B736FF: LitStr vbNullString
  loc_B73702: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B73707: ExitProcHresult
End Sub

Private Function Proc_182_23_B82CC8() 'B82CC8
  'Data Table: 491EE0
  loc_B827B4: LitVarStr var_98, "<html>"
  loc_B827B9: PopAdLdVar
  loc_B827BA: FLdPr Me
  loc_B827BD: MemLdRfVar from_stack_1.htmFile
  loc_B827C0: LdPrVar
  loc_B827C2: LateMemCall
  loc_B827C8: LitVarStr var_98, "<head>"
  loc_B827CD: PopAdLdVar
  loc_B827CE: FLdPr Me
  loc_B827D1: MemLdRfVar from_stack_1.htmFile
  loc_B827D4: LdPrVar
  loc_B827D6: LateMemCall
  loc_B827DC: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B827E1: PopAdLdVar
  loc_B827E2: FLdPr Me
  loc_B827E5: MemLdRfVar from_stack_1.htmFile
  loc_B827E8: LdPrVar
  loc_B827EA: LateMemCall
  loc_B827F0: LitStr "<title>"
  loc_B827F3: FLdRfVar var_AC
  loc_B827F6: FLdPr Me
  loc_B827F9:  = Me.Caption
  loc_B827FE: ILdRf var_AC
  loc_B82801: ConcatStr
  loc_B82802: FStStrNoPop var_B0
  loc_B82805: LitStr "</title>"
  loc_B82808: ConcatStr
  loc_B82809: CVarStr var_C0
  loc_B8280C: PopAdLdVar
  loc_B8280D: FLdPr Me
  loc_B82810: MemLdRfVar from_stack_1.htmFile
  loc_B82813: LdPrVar
  loc_B82815: LateMemCall
  loc_B8281B: FFreeStr var_AC = ""
  loc_B82822: FFree1Var var_C0 = ""
  loc_B82825: ILdRf Me
  loc_B82828: CastAd
  loc_B8282B: FStAdFunc var_C4
  loc_B8282E: FLdRfVar var_C4
  loc_B82831: ImpAdCallFPR4  = Proc_57_6_B93510()
  loc_B82836: FFree1Ad var_C4
  loc_B82839: LitI4 0
  loc_B8283E: FStStrCopy var_B0
  loc_B82841: FLdRfVar var_B0
  loc_B82844: LitI4 0
  loc_B82849: FStStrCopy var_AC
  loc_B8284C: FLdRfVar var_AC
  loc_B8284F: LitI2_Byte 0
  loc_B82851: PopTmpLdAd2 var_C6
  loc_B82854: FLdPr Me
  loc_B82857: MemLdRfVar from_stack_1.htmFile
  loc_B8285A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B8285F: FFreeStr var_AC = ""
  loc_B82866: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B8286B: PopAdLdVar
  loc_B8286C: FLdPr Me
  loc_B8286F: MemLdRfVar from_stack_1.htmFile
  loc_B82872: LdPrVar
  loc_B82874: LateMemCall
  loc_B8287A: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_B8287F: PopAdLdVar
  loc_B82880: FLdPr Me
  loc_B82883: MemLdRfVar from_stack_1.htmFile
  loc_B82886: LdPrVar
  loc_B82888: LateMemCall
  loc_B8288E: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B82891: LitI2_Byte &H5F
  loc_B82893: CStrUI1
  loc_B82895: FStStrNoPop var_AC
  loc_B82898: ConcatStr
  loc_B82899: FStStrNoPop var_B0
  loc_B8289C: LitStr """ height="""
  loc_B8289F: ConcatStr
  loc_B828A0: FStStrNoPop var_CC
  loc_B828A3: LitI2_Byte &H3C
  loc_B828A5: CStrUI1
  loc_B828A7: FStStrNoPop var_D0
  loc_B828AA: ConcatStr
  loc_B828AB: FStStrNoPop var_D4
  loc_B828AE: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B828B1: ConcatStr
  loc_B828B2: FStStrNoPop var_D8
  loc_B828B5: LitStr "Municipalidad de Guaymallén"
  loc_B828B8: ConcatStr
  loc_B828B9: FStStrNoPop var_DC
  loc_B828BC: LitStr "</p>"
  loc_B828BF: ConcatStr
  loc_B828C0: CVarStr var_C0
  loc_B828C3: PopAdLdVar
  loc_B828C4: FLdPr Me
  loc_B828C7: MemLdRfVar from_stack_1.htmFile
  loc_B828CA: LdPrVar
  loc_B828CC: LateMemCall
  loc_B828D2: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B828E3: FFree1Var var_C0 = ""
  loc_B828E6: LitStr "    <p>"
  loc_B828E9: FLdRfVar var_AC
  loc_B828EC: FLdPr Me
  loc_B828EF:  = Me.Caption
  loc_B828F4: ILdRf var_AC
  loc_B828F7: ConcatStr
  loc_B828F8: FStStrNoPop var_B0
  loc_B828FB: LitStr "</p></th>"
  loc_B828FE: ConcatStr
  loc_B828FF: CVarStr var_C0
  loc_B82902: PopAdLdVar
  loc_B82903: FLdPr Me
  loc_B82906: MemLdRfVar from_stack_1.htmFile
  loc_B82909: LdPrVar
  loc_B8290B: LateMemCall
  loc_B82911: FFreeStr var_AC = ""
  loc_B82918: FFree1Var var_C0 = ""
  loc_B8291B: LitVarStr var_98, "  </tr>"
  loc_B82920: PopAdLdVar
  loc_B82921: FLdPr Me
  loc_B82924: MemLdRfVar from_stack_1.htmFile
  loc_B82927: LdPrVar
  loc_B82929: LateMemCall
  loc_B8292F: LitVarStr var_98, "  <tr>"
  loc_B82934: PopAdLdVar
  loc_B82935: FLdPr Me
  loc_B82938: MemLdRfVar from_stack_1.htmFile
  loc_B8293B: LdPrVar
  loc_B8293D: LateMemCall
  loc_B82943: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_B82948: PopAdLdVar
  loc_B82949: FLdPr Me
  loc_B8294C: MemLdRfVar from_stack_1.htmFile
  loc_B8294F: LdPrVar
  loc_B82951: LateMemCall
  loc_B82957: LitVarStr var_98, "  </tr>"
  loc_B8295C: PopAdLdVar
  loc_B8295D: FLdPr Me
  loc_B82960: MemLdRfVar from_stack_1.htmFile
  loc_B82963: LdPrVar
  loc_B82965: LateMemCall
  loc_B8296B: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_B82970: PopAdLdVar
  loc_B82971: FLdPr Me
  loc_B82974: MemLdRfVar from_stack_1.htmFile
  loc_B82977: LdPrVar
  loc_B82979: LateMemCall
  loc_B8297F: LitStr "    <td align=""left""><strong>"
  loc_B82982: FLdPr Me
  loc_B82985: MemLdStr global_88
  loc_B82988: ConcatStr
  loc_B82989: FStStrNoPop var_AC
  loc_B8298C: LitStr "</strong>"
  loc_B8298F: ConcatStr
  loc_B82990: CVarStr var_C0
  loc_B82993: PopAdLdVar
  loc_B82994: FLdPr Me
  loc_B82997: MemLdRfVar from_stack_1.htmFile
  loc_B8299A: LdPrVar
  loc_B8299C: LateMemCall
  loc_B829A2: FFree1Str var_AC
  loc_B829A5: FFree1Var var_C0 = ""
  loc_B829A8: FLdPr Me
  loc_B829AB: MemLdUI1 global_92
  loc_B829AF: CI2UI1
  loc_B829B1: LitI2_Byte 1
  loc_B829B3: EqI2
  loc_B829B4: BranchF loc_B829CB
  loc_B829B7: LitVarStr var_98, "                   <br><strong>Cuentas Activas sin difuntos o difuntos de baja </strong>"
  loc_B829BC: PopAdLdVar
  loc_B829BD: FLdPr Me
  loc_B829C0: MemLdRfVar from_stack_1.htmFile
  loc_B829C3: LdPrVar
  loc_B829C5: LateMemCall
  loc_B829CB: FLdPr Me
  loc_B829CE: MemLdUI1 global_92
  loc_B829D2: CI2UI1
  loc_B829D4: LitI2_Byte 2
  loc_B829D6: EqI2
  loc_B829D7: BranchF loc_B82A1F
  loc_B829DA: LitStr "                   <br><strong>Cuentas Activas con vencimiento de concesión mayor a "
  loc_B829DD: FLdPr Me
  loc_B829E0: VCallAd Control_ID_AniosMsk
  loc_B829E3: FStAdFunc var_C4
  loc_B829E6: FLdPr var_C4
  loc_B829E9: LateIdLdVar var_C0 DispID_22 0
  loc_B829F0: CStrVarTmp
  loc_B829F1: FStStrNoPop var_AC
  loc_B829F4: ConcatStr
  loc_B829F5: FStStrNoPop var_B0
  loc_B829F8: LitStr " años </strong>"
  loc_B829FB: ConcatStr
  loc_B829FC: CVarStr var_EC
  loc_B829FF: PopAdLdVar
  loc_B82A00: FLdPr Me
  loc_B82A03: MemLdRfVar from_stack_1.htmFile
  loc_B82A06: LdPrVar
  loc_B82A08: LateMemCall
  loc_B82A0E: FFreeStr var_AC = ""
  loc_B82A15: FFree1Ad var_C4
  loc_B82A18: FFreeVar var_C0 = ""
  loc_B82A1F: FLdPr Me
  loc_B82A22: MemLdUI1 global_92
  loc_B82A26: CI2UI1
  loc_B82A28: LitI2_Byte 3
  loc_B82A2A: EqI2
  loc_B82A2B: BranchF loc_B82A73
  loc_B82A2E: LitStr "                   <br><strong>Cuentas Activas con vencimiento de concesión nulas o vencidas "
  loc_B82A31: FLdPr Me
  loc_B82A34: VCallAd Control_ID_AniosMsk
  loc_B82A37: FStAdFunc var_C4
  loc_B82A3A: FLdPr var_C4
  loc_B82A3D: LateIdLdVar var_C0 DispID_22 0
  loc_B82A44: CStrVarTmp
  loc_B82A45: FStStrNoPop var_AC
  loc_B82A48: ConcatStr
  loc_B82A49: FStStrNoPop var_B0
  loc_B82A4C: LitStr " años </strong>"
  loc_B82A4F: ConcatStr
  loc_B82A50: CVarStr var_EC
  loc_B82A53: PopAdLdVar
  loc_B82A54: FLdPr Me
  loc_B82A57: MemLdRfVar from_stack_1.htmFile
  loc_B82A5A: LdPrVar
  loc_B82A5C: LateMemCall
  loc_B82A62: FFreeStr var_AC = ""
  loc_B82A69: FFree1Ad var_C4
  loc_B82A6C: FFreeVar var_C0 = ""
  loc_B82A73: FLdPr Me
  loc_B82A76: MemLdUI1 global_92
  loc_B82A7A: CI2UI1
  loc_B82A7C: LitI2_Byte 4
  loc_B82A7E: EqI2
  loc_B82A7F: BranchF loc_B82A96
  loc_B82A82: LitVarStr var_98, "                   <br><strong>Cuentas Activas que tienen tipo de sepultura PARCELA (12) en otro cementerio que no sea PARQUE </strong>"
  loc_B82A87: PopAdLdVar
  loc_B82A88: FLdPr Me
  loc_B82A8B: MemLdRfVar from_stack_1.htmFile
  loc_B82A8E: LdPrVar
  loc_B82A90: LateMemCall
  loc_B82A96: FLdPr Me
  loc_B82A99: MemLdUI1 global_92
  loc_B82A9D: CI2UI1
  loc_B82A9F: LitI2_Byte 5
  loc_B82AA1: EqI2
  loc_B82AA2: BranchF loc_B82AB9
  loc_B82AA5: LitVarStr var_98, "                   <br><strong>Cuentas Activas con tipo de sepultura distinto de PARCELA (12) en el cementerio PARQUE </strong>"
  loc_B82AAA: PopAdLdVar
  loc_B82AAB: FLdPr Me
  loc_B82AAE: MemLdRfVar from_stack_1.htmFile
  loc_B82AB1: LdPrVar
  loc_B82AB3: LateMemCall
  loc_B82AB9: FLdPr Me
  loc_B82ABC: MemLdUI1 global_92
  loc_B82AC0: CI2UI1
  loc_B82AC2: LitI2_Byte 6
  loc_B82AC4: EqI2
  loc_B82AC5: BranchF loc_B82ADC
  loc_B82AC8: LitVarStr var_98, "                   <br><strong>Cuentas Activas con o sin aforos del servicio de expensas en la cuenta corriente. En la busqueda incluye todas los servicios con la palabra 'expensas' </strong>"
  loc_B82ACD: PopAdLdVar
  loc_B82ACE: FLdPr Me
  loc_B82AD1: MemLdRfVar from_stack_1.htmFile
  loc_B82AD4: LdPrVar
  loc_B82AD6: LateMemCall
  loc_B82ADC: LitVarStr var_98, "    </td>"
  loc_B82AE1: PopAdLdVar
  loc_B82AE2: FLdPr Me
  loc_B82AE5: MemLdRfVar from_stack_1.htmFile
  loc_B82AE8: LdPrVar
  loc_B82AEA: LateMemCall
  loc_B82AF0: LitVarStr var_98, "  </tr>"
  loc_B82AF5: PopAdLdVar
  loc_B82AF6: FLdPr Me
  loc_B82AF9: MemLdRfVar from_stack_1.htmFile
  loc_B82AFC: LdPrVar
  loc_B82AFE: LateMemCall
  loc_B82B04: LitVarStr var_98, "</table>"
  loc_B82B09: PopAdLdVar
  loc_B82B0A: FLdPr Me
  loc_B82B0D: MemLdRfVar from_stack_1.htmFile
  loc_B82B10: LdPrVar
  loc_B82B12: LateMemCall
  loc_B82B18: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B82B1D: PopAdLdVar
  loc_B82B1E: FLdPr Me
  loc_B82B21: MemLdRfVar from_stack_1.htmFile
  loc_B82B24: LdPrVar
  loc_B82B26: LateMemCall
  loc_B82B2C: LitVarStr var_98, "  <thead>"
  loc_B82B31: PopAdLdVar
  loc_B82B32: FLdPr Me
  loc_B82B35: MemLdRfVar from_stack_1.htmFile
  loc_B82B38: LdPrVar
  loc_B82B3A: LateMemCall
  loc_B82B40: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_B82B45: PopAdLdVar
  loc_B82B46: FLdPr Me
  loc_B82B49: MemLdRfVar from_stack_1.htmFile
  loc_B82B4C: LdPrVar
  loc_B82B4E: LateMemCall
  loc_B82B54: LitVarStr var_98, "    <th rowspan=2>Cuenta</th>"
  loc_B82B59: PopAdLdVar
  loc_B82B5A: FLdPr Me
  loc_B82B5D: MemLdRfVar from_stack_1.htmFile
  loc_B82B60: LdPrVar
  loc_B82B62: LateMemCall
  loc_B82B68: LitVarStr var_98, "    <th rowspan=2>Titular</th>"
  loc_B82B6D: PopAdLdVar
  loc_B82B6E: FLdPr Me
  loc_B82B71: MemLdRfVar from_stack_1.htmFile
  loc_B82B74: LdPrVar
  loc_B82B76: LateMemCall
  loc_B82B7C: LitVarStr var_98, "    <th rowspan=2>Cementerio</th>"
  loc_B82B81: PopAdLdVar
  loc_B82B82: FLdPr Me
  loc_B82B85: MemLdRfVar from_stack_1.htmFile
  loc_B82B88: LdPrVar
  loc_B82B8A: LateMemCall
  loc_B82B90: LitVarStr var_98, "    <th rowspan=2>Fecha de Vencimiento</th>"
  loc_B82B95: PopAdLdVar
  loc_B82B96: FLdPr Me
  loc_B82B99: MemLdRfVar from_stack_1.htmFile
  loc_B82B9C: LdPrVar
  loc_B82B9E: LateMemCall
  loc_B82BA4: FLdPr Me
  loc_B82BA7: MemLdUI1 global_92
  loc_B82BAB: CI2UI1
  loc_B82BAD: LitI2_Byte 2
  loc_B82BAF: EqI2
  loc_B82BB0: BranchF loc_B82BC7
  loc_B82BB3: LitVarStr var_98, "    <th rowspan=2>Años</th>"
  loc_B82BB8: PopAdLdVar
  loc_B82BB9: FLdPr Me
  loc_B82BBC: MemLdRfVar from_stack_1.htmFile
  loc_B82BBF: LdPrVar
  loc_B82BC1: LateMemCall
  loc_B82BC7: FLdPr Me
  loc_B82BCA: MemLdUI1 global_92
  loc_B82BCE: CI2UI1
  loc_B82BD0: LitI2_Byte 6
  loc_B82BD2: EqI2
  loc_B82BD3: BranchF loc_B82BFE
  loc_B82BD6: LitVarStr var_98, "    <th rowspan=2>Periodo</th>"
  loc_B82BDB: PopAdLdVar
  loc_B82BDC: FLdPr Me
  loc_B82BDF: MemLdRfVar from_stack_1.htmFile
  loc_B82BE2: LdPrVar
  loc_B82BE4: LateMemCall
  loc_B82BEA: LitVarStr var_98, "    <th rowspan=2>Importe</th>"
  loc_B82BEF: PopAdLdVar
  loc_B82BF0: FLdPr Me
  loc_B82BF3: MemLdRfVar from_stack_1.htmFile
  loc_B82BF6: LdPrVar
  loc_B82BF8: LateMemCall
  loc_B82BFE: LitVarStr var_98, "    <th colspan=5>Ubicación</th>"
  loc_B82C03: PopAdLdVar
  loc_B82C04: FLdPr Me
  loc_B82C07: MemLdRfVar from_stack_1.htmFile
  loc_B82C0A: LdPrVar
  loc_B82C0C: LateMemCall
  loc_B82C12: LitVarStr var_98, "  </tr>"
  loc_B82C17: PopAdLdVar
  loc_B82C18: FLdPr Me
  loc_B82C1B: MemLdRfVar from_stack_1.htmFile
  loc_B82C1E: LdPrVar
  loc_B82C20: LateMemCall
  loc_B82C26: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_B82C2B: PopAdLdVar
  loc_B82C2C: FLdPr Me
  loc_B82C2F: MemLdRfVar from_stack_1.htmFile
  loc_B82C32: LdPrVar
  loc_B82C34: LateMemCall
  loc_B82C3A: LitVarStr var_98, "    <th>Sepu.</th>"
  loc_B82C3F: PopAdLdVar
  loc_B82C40: FLdPr Me
  loc_B82C43: MemLdRfVar from_stack_1.htmFile
  loc_B82C46: LdPrVar
  loc_B82C48: LateMemCall
  loc_B82C4E: LitVarStr var_98, "    <th>Sector</th>"
  loc_B82C53: PopAdLdVar
  loc_B82C54: FLdPr Me
  loc_B82C57: MemLdRfVar from_stack_1.htmFile
  loc_B82C5A: LdPrVar
  loc_B82C5C: LateMemCall
  loc_B82C62: LitVarStr var_98, "    <th>Planta</th>"
  loc_B82C67: PopAdLdVar
  loc_B82C68: FLdPr Me
  loc_B82C6B: MemLdRfVar from_stack_1.htmFile
  loc_B82C6E: LdPrVar
  loc_B82C70: LateMemCall
  loc_B82C76: LitVarStr var_98, "    <th>Nro</th>"
  loc_B82C7B: PopAdLdVar
  loc_B82C7C: FLdPr Me
  loc_B82C7F: MemLdRfVar from_stack_1.htmFile
  loc_B82C82: LdPrVar
  loc_B82C84: LateMemCall
  loc_B82C8A: LitVarStr var_98, "    <th>Fila</th>"
  loc_B82C8F: PopAdLdVar
  loc_B82C90: FLdPr Me
  loc_B82C93: MemLdRfVar from_stack_1.htmFile
  loc_B82C96: LdPrVar
  loc_B82C98: LateMemCall
  loc_B82C9E: LitVarStr var_98, "  </tr>"
  loc_B82CA3: PopAdLdVar
  loc_B82CA4: FLdPr Me
  loc_B82CA7: MemLdRfVar from_stack_1.htmFile
  loc_B82CAA: LdPrVar
  loc_B82CAC: LateMemCall
  loc_B82CB2: LitVarStr var_98, "  </thead>"
  loc_B82CB7: PopAdLdVar
  loc_B82CB8: FLdPr Me
  loc_B82CBB: MemLdRfVar from_stack_1.htmFile
  loc_B82CBE: LdPrVar
  loc_B82CC0: LateMemCall
  loc_B82CC6: ExitProcHresult
End Function

Private Function Proc_182_24_A0C8A8() 'A0C8A8
  'Data Table: 491EE0
  loc_A0C868: LitVarStr var_94, "</table>"
  loc_A0C86D: PopAdLdVar
  loc_A0C86E: FLdPr Me
  loc_A0C871: MemLdRfVar from_stack_1.htmFile
  loc_A0C874: LdPrVar
  loc_A0C876: LateMemCall
  loc_A0C87C: LitVarStr var_94, "</body>"
  loc_A0C881: PopAdLdVar
  loc_A0C882: FLdPr Me
  loc_A0C885: MemLdRfVar from_stack_1.htmFile
  loc_A0C888: LdPrVar
  loc_A0C88A: LateMemCall
  loc_A0C890: LitVarStr var_94, "</html>"
  loc_A0C895: PopAdLdVar
  loc_A0C896: FLdPr Me
  loc_A0C899: MemLdRfVar from_stack_1.htmFile
  loc_A0C89C: LdPrVar
  loc_A0C89E: LateMemCall
  loc_A0C8A4: ExitProcHresult
End Function
