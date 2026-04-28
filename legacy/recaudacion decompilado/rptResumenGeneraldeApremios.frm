VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumenGeneraldeApremios
  Caption = "Resumen General de Apremios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumenGeneraldeApremios.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9216
  ClientHeight = 4296
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4044
    Width = 9216
    Height = 252
    TabIndex = 13
    OleObjectBlob = "rptResumenGeneraldeApremios.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 3000
    Width = 855
    Height = 735
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptResumenGeneraldeApremios.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumenGeneraldeApremios.frx":0B9C
    Left = 8400
    Top = 2160
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2760
    Width = 3255
    Height = 1215
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
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
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
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
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
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2760
    Width = 4095
    Height = 1215
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
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
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8895
    Height = 2655
    TabIndex = 9
    Begin VB.Frame FechaEmisionFra
      Caption = "Fecha de Pago"
      Left = 960
      Top = 360
      Width = 3015
      Height = 1575
      TabIndex = 14
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.CommandButton DesdeFechaCmd
        Left = 2400
        Top = 480
        Width = 375
        Height = 375
        TabIndex = 1
        Picture = "rptResumenGeneraldeApremios.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaFechaCmd
        Left = 2400
        Top = 1005
        Width = 375
        Height = 375
        TabIndex = 3
        Picture = "rptResumenGeneraldeApremios.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FealBoapDesdeMsk
        Left = 960
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptResumenGeneraldeApremios.frx":1684
      End
      Begin MSMask.MaskEdBox FealBoapHastaMsk
        Left = 960
        Top = 1005
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptResumenGeneraldeApremios.frx":1734
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
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
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 180
        Top = 1005
        Width = 705
        Height = 300
        TabIndex = 15
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
      Left = 4800
      Top = 480
      Width = 1575
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
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 3240
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptResumenGeneraldeApremios.frx":17E4
  End
End

Attribute VB_Name = "rptResumenGeneraldeApremios"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type

Private Type UDT_2_00567ED8
  bStruc(96) As Byte ' String fields: 13
End Type

Private Type UDT_3_00567F40
  bStruc(60) As Byte ' String fields: 4
End Type


Private Sub cmdNueva_Click() 'AAF320
  'Data Table: 48ECD0
  loc_AAF258: LitI2_Byte 0
  loc_AAF25A: FLdPr Me
  loc_AAF25D: MemStI2 bGenerado
  loc_AAF260: LitI2_Byte &HFF
  loc_AAF262: FLdPr Me
  loc_AAF265: MemStI2 bLogos
  loc_AAF268: LitI2_Byte 0
  loc_AAF26A: ILdRf Me
  loc_AAF26D: CastAd
  loc_AAF270: FStAdFunc var_88
  loc_AAF273: FLdRfVar var_88
  loc_AAF276: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AAF27B: FFree1Ad var_88
  loc_AAF27E: LitI2_Byte 0
  loc_AAF280: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AAF285: CVarDate var_A8
  loc_AAF289: FLdRfVar var_B8
  loc_AAF28C: ImpAdCallFPR4  = Year()
  loc_AAF291: LitI2_Byte 0
  loc_AAF293: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AAF298: CVarDate var_D8
  loc_AAF29C: FLdRfVar var_E8
  loc_AAF29F: ImpAdCallFPR4  = Month()
  loc_AAF2A4: LitI2_Byte 1
  loc_AAF2A6: FLdRfVar var_E8
  loc_AAF2A9: CI2Var
  loc_AAF2AA: FLdRfVar var_B8
  loc_AAF2AD: CI2Var
  loc_AAF2AE: FLdRfVar var_F8
  loc_AAF2B1: ImpAdCallFPR4  = DateSerial(, , )
  loc_AAF2B6: FLdRfVar var_F8
  loc_AAF2B9: CStrVarTmp
  loc_AAF2BA: CVarStr var_108
  loc_AAF2BD: PopAdLdVar
  loc_AAF2BE: FLdPr Me
  loc_AAF2C1: VCallAd Control_ID_FealBoapDesdeMsk
  loc_AAF2C4: FStAdFunc var_88
  loc_AAF2C7: FLdPr var_88
  loc_AAF2CA: LateIdSt
  loc_AAF2CF: FFree1Ad var_88
  loc_AAF2D2: FFreeVar var_A8 = "": var_D8 = "": var_B8 = "": var_E8 = "": var_F8 = ""
  loc_AAF2E1: LitI2_Byte 0
  loc_AAF2E3: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AAF2E8: CStrDate
  loc_AAF2EA: CVarStr var_A8
  loc_AAF2ED: PopAdLdVar
  loc_AAF2EE: FLdPr Me
  loc_AAF2F1: VCallAd Control_ID_FealBoapHastaMsk
  loc_AAF2F4: FStAdFunc var_88
  loc_AAF2F7: FLdPr var_88
  loc_AAF2FA: LateIdSt
  loc_AAF2FF: FFree1Ad var_88
  loc_AAF302: FFree1Var var_A8 = ""
  loc_AAF305: Call HabilitarCriterio()
  loc_AAF30A: ILdRf Me
  loc_AAF30D: CastAd
  loc_AAF310: FStAdFunc var_88
  loc_AAF313: FLdRfVar var_88
  loc_AAF316: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AAF31B: FFree1Ad var_88
  loc_AAF31E: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D3E8C
  'Data Table: 48ECD0
  loc_9D3E74: ILdRf Me
  loc_9D3E77: CastAd
  loc_9D3E7A: FStAdFunc var_88
  loc_9D3E7D: FLdRfVar var_88
  loc_9D3E80: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D3E85: FFree1Ad var_88
  loc_9D3E88: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0D0F4
  'Data Table: 48ECD0
  loc_A0D0B8: LitVar_Missing var_A4
  loc_A0D0BB: PopAdLdVar
  loc_A0D0BC: LitVarI4
  loc_A0D0C4: PopAdLdVar
  loc_A0D0C5: ImpAdLdRf MemVar_D930A4
  loc_A0D0C8: NewIfNullPr frmCalendario
  loc_A0D0CB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0D0D0: ImpAdLdRf MemVar_D93028
  loc_A0D0D3: CDargRef
  loc_A0D0D7: FLdPr Me
  loc_A0D0DA: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A0D0DD: FStAdFunc var_A8
  loc_A0D0E0: FLdPr var_A8
  loc_A0D0E3: LateIdSt
  loc_A0D0E8: FFree1Ad var_A8
  loc_A0D0EB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0D0F0: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A0D014
  'Data Table: 48ECD0
  loc_A0CFD8: LitVar_Missing var_A4
  loc_A0CFDB: PopAdLdVar
  loc_A0CFDC: LitVarI4
  loc_A0CFE4: PopAdLdVar
  loc_A0CFE5: ImpAdLdRf MemVar_D930A4
  loc_A0CFE8: NewIfNullPr frmCalendario
  loc_A0CFEB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0CFF0: ImpAdLdRf MemVar_D93028
  loc_A0CFF3: CDargRef
  loc_A0CFF7: FLdPr Me
  loc_A0CFFA: VCallAd Control_ID_FealBoapHastaMsk
  loc_A0CFFD: FStAdFunc var_A8
  loc_A0D000: FLdPr var_A8
  loc_A0D003: LateIdSt
  loc_A0D008: FFree1Ad var_A8
  loc_A0D00B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0D010: ExitProcHresult
End Sub

Private Sub FealBoapDesdeMsk_UnknownEvent_0 '9C1F40
  'Data Table: 48ECD0
  loc_9C1F2C: FLdPr Me
  loc_9C1F2F: VCallAd Control_ID_FealBoapDesdeMsk
  loc_9C1F32: CVarAd
  loc_9C1F36: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1F3B: FFree1Var var_94 = ""
  loc_9C1F3E: ExitProcHresult
End Sub

Private Function FealBoapDesdeMsk_UnknownEvent_8(arg_C) 'A65320
  'Data Table: 48ECD0
  loc_A652C4: FLdPr Me
  loc_A652C7: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A652CA: FStAdFunc var_88
  loc_A652CD: FLdPr var_88
  loc_A652D0: LateIdLdVar var_98 DispID_15 0
  loc_A652D7: CStrVarTmp
  loc_A652D8: FStStrNoPop var_9C
  loc_A652DB: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_A652E0: FStStrNoPop var_A0
  loc_A652E3: FLdPr Me
  loc_A652E6: MemStStrCopy
  loc_A652EA: FFreeStr var_9C = ""
  loc_A652F1: FFree1Ad var_88
  loc_A652F4: FFree1Var var_98 = ""
  loc_A652F7: FLdPr Me
  loc_A652FA: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A652FD: FStAdFuncNoPop
  loc_A65300: CastAd
  loc_A65303: FStAdFunc var_A4
  loc_A65306: FLdRfVar var_A4
  loc_A65309: FLdPr Me
  loc_A6530C: MemLdStr global_92
  loc_A6530F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A65314: IStI2 arg_C
  loc_A65317: FFreeAd var_88 = ""
  loc_A6531E: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() '9D3ED8
  'Data Table: 48ECD0
  loc_9D3EC0: LitI2_Byte 0
  loc_9D3EC2: ILdRf Me
  loc_9D3EC5: CastAd
  loc_9D3EC8: FStAdFunc var_88
  loc_9D3ECB: FLdRfVar var_88
  loc_9D3ECE: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D3ED3: FFree1Ad var_88
  loc_9D3ED6: ExitProcHresult
End Sub

Private Sub FealBoapHastaMsk_UnknownEvent_0 '9C6C98
  'Data Table: 48ECD0
  loc_9C6C84: FLdPr Me
  loc_9C6C87: VCallAd Control_ID_FealBoapHastaMsk
  loc_9C6C8A: CVarAd
  loc_9C6C8E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6C93: FFree1Var var_94 = ""
  loc_9C6C96: ExitProcHresult
End Sub

Private Function FealBoapHastaMsk_UnknownEvent_8(arg_C) 'A63D40
  'Data Table: 48ECD0
  loc_A63CE4: FLdPr Me
  loc_A63CE7: VCallAd Control_ID_FealBoapHastaMsk
  loc_A63CEA: FStAdFunc var_88
  loc_A63CED: FLdPr var_88
  loc_A63CF0: LateIdLdVar var_98 DispID_15 0
  loc_A63CF7: CStrVarTmp
  loc_A63CF8: FStStrNoPop var_9C
  loc_A63CFB: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_A63D00: FStStrNoPop var_A0
  loc_A63D03: FLdPr Me
  loc_A63D06: MemStStrCopy
  loc_A63D0A: FFreeStr var_9C = ""
  loc_A63D11: FFree1Ad var_88
  loc_A63D14: FFree1Var var_98 = ""
  loc_A63D17: FLdPr Me
  loc_A63D1A: VCallAd Control_ID_FealBoapHastaMsk
  loc_A63D1D: FStAdFuncNoPop
  loc_A63D20: CastAd
  loc_A63D23: FStAdFunc var_A4
  loc_A63D26: FLdRfVar var_A4
  loc_A63D29: FLdPr Me
  loc_A63D2C: MemLdStr global_92
  loc_A63D2F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63D34: IStI2 arg_C
  loc_A63D37: FFreeAd var_88 = ""
  loc_A63D3E: ExitProcHresult
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A167C8
  'Data Table: 48ECD0
  loc_A16790: FLdPr Me
  loc_A16793: VCallAd Control_ID_statusBar
  loc_A16796: FStAdFunc var_88
  loc_A16799: FLdPr var_88
  loc_A1679C: LateIdLdVar var_98 DispID_1 0
  loc_A167A3: CStrVarTmp
  loc_A167A4: CVarStr var_A8
  loc_A167A7: PopAdLdVar
  loc_A167A8: FLdPr Me
  loc_A167AB: VCallAd Control_ID_statusBar
  loc_A167AE: FStAdFunc var_BC
  loc_A167B1: FLdPr var_BC
  loc_A167B4: LateIdSt
  loc_A167B9: FFreeAd var_88 = ""
  loc_A167C0: FFreeVar var_98 = ""
  loc_A167C7: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E311C
  'Data Table: 48ECD0
  loc_9E3100: LitI2_Byte &HFF
  loc_9E3102: LitI2_Byte 0
  loc_9E3104: ILdRf Me
  loc_9E3107: CastAd
  loc_9E310A: FStAdFunc var_88
  loc_9E310D: FLdRfVar var_88
  loc_9E3110: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E3115: FFree1Ad var_88
  loc_9E3118: ExitProcHresult
End Sub

Private Sub Form_Load() '9E320C
  'Data Table: 48ECD0
  loc_9E31F0: ILdRf Me
  loc_9E31F3: CastAd
  loc_9E31F6: FStAdFunc var_88
  loc_9E31F9: FLdRfVar var_88
  loc_9E31FC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9E3201: FFree1Ad var_88
  loc_9E3204: Call cmdNueva_Click()
  loc_9E3209: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D4008
  'Data Table: 48ECD0
  loc_9D3FF0: FLdPr Me
  loc_9D3FF3: VCallAd Control_ID_wbbReporte
  loc_9D3FF6: FStAdFunc var_88
  loc_9D3FF9: FLdRfVar var_88
  loc_9D3FFC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D4001: FFree1Ad var_88
  loc_9D4004: ExitProcHresult
  loc_9D4005: AryDescTemp 887
End Sub

Private Sub cmdSalir_Click() '9FED28
  'Data Table: 48ECD0
  loc_9FECF8: LitVarStr var_94, "Cerrando..."
  loc_9FECFD: PopAdLdVar
  loc_9FECFE: FLdPr Me
  loc_9FED01: VCallAd Control_ID_statusBar
  loc_9FED04: FStAdFunc var_A8
  loc_9FED07: FLdPr var_A8
  loc_9FED0A: LateIdSt
  loc_9FED0F: FFree1Ad var_A8
  loc_9FED12: ILdRf Me
  loc_9FED15: FStAdNoPop
  loc_9FED19: ImpAdLdRf MemVar_D9C5D8
  loc_9FED1C: NewIfNullPr Global
  loc_9FED1F: Global.Unload from_stack_1
  loc_9FED24: FFree1Ad var_A8
  loc_9FED27: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E325C
  'Data Table: 48ECD0
  loc_9E3240: LitI2_Byte 0
  loc_9E3242: PopTmpLdAd2 var_8A
  loc_9E3245: ILdRf Me
  loc_9E3248: CastAd
  loc_9E324B: FStAdFunc var_88
  loc_9E324E: FLdRfVar var_88
  loc_9E3251: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E3256: FFree1Ad var_88
  loc_9E3259: ExitProcHresult
End Sub

Public Function bLogosGet() '48FAE4
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '48FAF3
  bLogos = Value
End Sub

Public Function bGeneradoGet() '48FB02
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '48FB11
  bGenerado = Value
End Sub

Public Sub GeneraXLS() '9C6AA4
  'Data Table: 48ECD0
  loc_9C6A8C: LitI2_Byte 0
  loc_9C6A8E: FLdPr Me
  loc_9C6A91: MemStI2 bLogos
  loc_9C6A94: Call GeneraHTML()
  loc_9C6A99: LitI2_Byte &HFF
  loc_9C6A9B: FLdPr Me
  loc_9C6A9E: MemStI2 bLogos
  loc_9C6AA1: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() 'A75F98
  'Data Table: 48ECD0
  loc_A75F34: LitI4 0
  loc_A75F39: LitI4 3
  loc_A75F3E: FLdRfVar var_88
  loc_A75F41: Redim
  loc_A75F4B: FLdPr Me
  loc_A75F4E: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A75F51: CVarAd
  loc_A75F55: ParmAry1St
  loc_A75F5B: FLdPr Me
  loc_A75F5E: VCallAd Control_ID_DesdeFechaCmd
  loc_A75F61: CVarAd
  loc_A75F65: ParmAry1St
  loc_A75F6B: FLdPr Me
  loc_A75F6E: VCallAd Control_ID_FealBoapHastaMsk
  loc_A75F71: CVarAd
  loc_A75F75: ParmAry1St
  loc_A75F7B: FLdPr Me
  loc_A75F7E: VCallAd Control_ID_HastaFechaCmd
  loc_A75F81: CVarAd
  loc_A75F85: ParmAry1St
  loc_A75F8B: FLdRfVar var_88
  loc_A75F8E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A75F93: FLdRfVar var_88
  loc_A75F96: Erase
  loc_A75F97: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BE0610
  'Data Table: 48ECD0
  loc_BDFF54: FLdPr Me
  loc_BDFF57: MemLdI2 bGenerado
  loc_BDFF5A: BranchF loc_BDFF5E
  loc_BDFF5D: ExitProcHresult
  loc_BDFF5E: LitVarStr var_94, "Generando reporte..."
  loc_BDFF63: PopAdLdVar
  loc_BDFF64: FLdPr Me
  loc_BDFF67: VCallAd Control_ID_statusBar
  loc_BDFF6A: FStAdFunc var_A8
  loc_BDFF6D: FLdPr var_A8
  loc_BDFF70: LateIdSt
  loc_BDFF75: FFree1Ad var_A8
  loc_BDFF78: LitI4 &HB
  loc_BDFF7D: CI2I4
  loc_BDFF7E: FLdPr Me
  loc_BDFF81: Me.MousePointer = from_stack_1
  loc_BDFF86: FLdPr Me
  loc_BDFF89: MemLdRfVar from_stack_1.global_76
  loc_BDFF8C: NewIfNullAd
  loc_BDFF8F: FStAd var_AC 
  loc_BDFF93: FLdPr Me
  loc_BDFF96: VCallAd Control_ID_FealBoapDesdeMsk
  loc_BDFF99: FStAdFunc var_A8
  loc_BDFF9C: FLdPr var_A8
  loc_BDFF9F: LateIdLdVar var_FC DispID_15 0
  loc_BDFFA6: PopAd
  loc_BDFFA8: FLdPr Me
  loc_BDFFAB: VCallAd Control_ID_FealBoapHastaMsk
  loc_BDFFAE: FStAdFunc var_12C
  loc_BDFFB1: FLdPr var_12C
  loc_BDFFB4: LateIdLdVar var_13C DispID_15 0
  loc_BDFFBB: PopAd
  loc_BDFFBD: FLdPr Me
  loc_BDFFC0: VCallAd Control_ID_FealBoapDesdeMsk
  loc_BDFFC3: FStAdFunc var_1B0
  loc_BDFFC6: FLdPr var_1B0
  loc_BDFFC9: LateIdLdVar var_1C0 DispID_15 0
  loc_BDFFD0: PopAd
  loc_BDFFD2: FLdPr Me
  loc_BDFFD5: VCallAd Control_ID_FealBoapHastaMsk
  loc_BDFFD8: FStAdFunc var_200
  loc_BDFFDB: FLdPr var_200
  loc_BDFFDE: LateIdLdVar var_210 DispID_15 0
  loc_BDFFE5: PopAd
  loc_BDFFE7: LitStr " DROP TEMPORARY TABLE IF EXISTS deta;"
  loc_BDFFEA: LitStr " CREATE TEMPORARY TABLE deta"
  loc_BDFFED: ConcatStr
  loc_BDFFEE: FStStrNoPop var_B0
  loc_BDFFF1: LitStr " (SELECT apremio.CodiReca, DetaReca, boleapre.FeenAcpa, apremio.CodiOfic, apremio.CuenCtct, apremio.NumeApre, AutoApre, IF(apremio.CucuPers=0,'',IFNULL(persona.DetaPers,'')) DetaPers, apremio.CodiInju, SecrInap, JuzgInap, (CapiApre + RecaApre) TotaApre, CoadBoap, IcomBoap, HoreBoap, IrecBoap, MoreBoap, CodiOfju, HoofBoap, IofiBoap, MoofBoap, ApleBoap, ReseBoap, DefiBoap, "
  loc_BDFFF4: ConcatStr
  loc_BDFFF5: FStStrNoPop var_B4
  loc_BDFFF8: LitStr " CoadBoap + IcomBoap + HoreBoap + IrecBoap + MoreBoap + HoofBoap + IofiBoap + MoofBoap + ApleBoap + ReseBoap + DefiBoap  AS TotaBoap,"
  loc_BDFFFB: ConcatStr
  loc_BDFFFC: FStStrNoPop var_B8
  loc_BDFFFF: LitStr " if(boleapre.CodiFapa=0 AND CuotDefa=0,'"
  loc_BE0002: ConcatStr
  loc_BE0003: FStStrNoPop var_BC
  loc_BE0006: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BE0009: ConcatStr
  loc_BE000A: FStStrNoPop var_C0
  loc_BE000D: LitStr "',if(EstaFapa='Pagada','"
  loc_BE0010: ConcatStr
  loc_BE0011: FStStrNoPop var_C4
  loc_BE0014: LitStr "&thorn;"
  loc_BE0017: ConcatStr
  loc_BE0018: FStStrNoPop var_C8
  loc_BE001B: LitStr "','"
  loc_BE001E: ConcatStr
  loc_BE001F: FStStrNoPop var_CC
  loc_BE0022: LitStr "<span style=""color:#FF0000"">&yacute;</span>"
  loc_BE0025: ConcatStr
  loc_BE0026: FStStrNoPop var_D0
  loc_BE0029: LitStr "')) as Facilidad"
  loc_BE002C: ConcatStr
  loc_BE002D: FStStrNoPop var_D4
  loc_BE0030: LitStr " FROM boleapre"
  loc_BE0033: ConcatStr
  loc_BE0034: FStStrNoPop var_D8
  loc_BE0037: LitStr " INNER JOIN apremio ON apremio.NumeApre = boleapre.NumeApre"
  loc_BE003A: ConcatStr
  loc_BE003B: FStStrNoPop var_DC
  loc_BE003E: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = apremio.CucuPers"
  loc_BE0041: ConcatStr
  loc_BE0042: FStStrNoPop var_E0
  loc_BE0045: LitStr " LEFT JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_BE0048: ConcatStr
  loc_BE0049: FStStrNoPop var_E4
  loc_BE004C: LitStr " LEFT JOIN facipago ON facipago.CodiFapa = boleapre.CodiFapa"
  loc_BE004F: ConcatStr
  loc_BE0050: FStStrNoPop var_E8
  loc_BE0053: LitStr " WHERE EstaBoap in ('Actualizado') AND boleapre.FeenAcpa"
  loc_BE0056: ConcatStr
  loc_BE0057: FStStrNoPop var_EC
  loc_BE005A: LitStr " BETWEEN '"
  loc_BE005D: ConcatStr
  loc_BE005E: FStStrNoPop var_120
  loc_BE0061: LitI4 1
  loc_BE0066: LitI4 1
  loc_BE006B: LitVarStr var_94, "yyyy-mm-dd"
  loc_BE0070: FStVarCopyObj var_11C
  loc_BE0073: FLdRfVar var_11C
  loc_BE0076: FLdRfVar var_FC
  loc_BE0079: CStrVarTmp
  loc_BE007A: CVarStr var_10C
  loc_BE007D: ImpAdCallI2 Format$(, )
  loc_BE0082: FStStrNoPop var_124
  loc_BE0085: ConcatStr
  loc_BE0086: FStStrNoPop var_128
  loc_BE0089: LitStr "' AND '"
  loc_BE008C: ConcatStr
  loc_BE008D: FStStrNoPop var_160
  loc_BE0090: LitI4 1
  loc_BE0095: LitI4 1
  loc_BE009A: LitVarStr var_A4, "yyyy-mm-dd"
  loc_BE009F: FStVarCopyObj var_15C
  loc_BE00A2: FLdRfVar var_15C
  loc_BE00A5: FLdRfVar var_13C
  loc_BE00A8: CStrVarTmp
  loc_BE00A9: CVarStr var_14C
  loc_BE00AC: ImpAdCallI2 Format$(, )
  loc_BE00B1: FStStrNoPop var_164
  loc_BE00B4: ConcatStr
  loc_BE00B5: FStStrNoPop var_168
  loc_BE00B8: LitStr "'"
  loc_BE00BB: ConcatStr
  loc_BE00BC: FStStrNoPop var_16C
  loc_BE00BF: LitStr " ORDER BY apremio.CodiReca, boleapre.FeenAcpa)"
  loc_BE00C2: ConcatStr
  loc_BE00C3: FStStrNoPop var_170
  loc_BE00C6: LitStr " UNION ALL"
  loc_BE00C9: ConcatStr
  loc_BE00CA: FStStrNoPop var_174
  loc_BE00CD: LitStr " (SELECT apremio.CodiReca, DetaReca, pagoapre.FeenAcpa, apremio.CodiOfic, apremio.CuenCtct, apremio.NumeApre, AutoApre, IF(apremio.CucuPers=0,'',IFNULL(persona.DetaPers,'')) DetaPers, apremio.CodiInju, SecrInap, JuzgInap, (CapiApre + RecaApre) TotaApre, CoadPaap, IcomPaap, HorePaap, IrecPaap, MorePaap, CodiOfju, HoofPaap, IofiPaap, MoofPaap, AplePaap, ResePaap, DefiPaap, CoadPaap + IcomPaap + HorePaap + IrecPaap + MorePaap + HoofPaap + IofiPaap + MoofPaap + AplePaap + ResePaap + DefiPaap AS TotaBoap,"
  loc_BE00D0: ConcatStr
  loc_BE00D1: FStStrNoPop var_178
  loc_BE00D4: LitStr " if(pagoapre.CodiFapa=0 AND CuotDefa=0,'"
  loc_BE00D7: ConcatStr
  loc_BE00D8: FStStrNoPop var_17C
  loc_BE00DB: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BE00DE: ConcatStr
  loc_BE00DF: FStStrNoPop var_180
  loc_BE00E2: LitStr "',if(EstaFapa='Pagada','"
  loc_BE00E5: ConcatStr
  loc_BE00E6: FStStrNoPop var_184
  loc_BE00E9: LitStr "&thorn;"
  loc_BE00EC: ConcatStr
  loc_BE00ED: FStStrNoPop var_188
  loc_BE00F0: LitStr "','"
  loc_BE00F3: ConcatStr
  loc_BE00F4: FStStrNoPop var_18C
  loc_BE00F7: LitStr "<span style=""color:#FF0000"">&yacute;</span>"
  loc_BE00FA: ConcatStr
  loc_BE00FB: FStStrNoPop var_190
  loc_BE00FE: LitStr "')) as Facilidad"
  loc_BE0101: ConcatStr
  loc_BE0102: FStStrNoPop var_194
  loc_BE0105: LitStr " FROM pagoapre"
  loc_BE0108: ConcatStr
  loc_BE0109: FStStrNoPop var_198
  loc_BE010C: LitStr " INNER JOIN apremio ON apremio.NumeApre = pagoapre.NumeApre"
  loc_BE010F: ConcatStr
  loc_BE0110: FStStrNoPop var_19C
  loc_BE0113: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = apremio.CucuPers"
  loc_BE0116: ConcatStr
  loc_BE0117: FStStrNoPop var_1A0
  loc_BE011A: LitStr " LEFT JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_BE011D: ConcatStr
  loc_BE011E: FStStrNoPop var_1A4
  loc_BE0121: LitStr " LEFT JOIN facipago ON facipago.CodiFapa = pagoapre.CodiFapa"
  loc_BE0124: ConcatStr
  loc_BE0125: FStStrNoPop var_1A8
  loc_BE0128: LitStr " WHERE EstaPaap in ('Actualizado') AND pagoapre.FeenAcpa"
  loc_BE012B: ConcatStr
  loc_BE012C: FStStrNoPop var_1AC
  loc_BE012F: LitStr " BETWEEN '"
  loc_BE0132: ConcatStr
  loc_BE0133: FStStrNoPop var_1F4
  loc_BE0136: LitI4 1
  loc_BE013B: LitI4 1
  loc_BE0140: LitVarStr var_1E0, "yyyy-mm-dd"
  loc_BE0145: FStVarCopyObj var_1F0
  loc_BE0148: FLdRfVar var_1F0
  loc_BE014B: FLdRfVar var_1C0
  loc_BE014E: CStrVarTmp
  loc_BE014F: CVarStr var_1D0
  loc_BE0152: ImpAdCallI2 Format$(, )
  loc_BE0157: FStStrNoPop var_1F8
  loc_BE015A: ConcatStr
  loc_BE015B: FStStrNoPop var_1FC
  loc_BE015E: LitStr "' AND '"
  loc_BE0161: ConcatStr
  loc_BE0162: FStStrNoPop var_244
  loc_BE0165: LitI4 1
  loc_BE016A: LitI4 1
  loc_BE016F: LitVarStr var_230, "yyyy-mm-dd"
  loc_BE0174: FStVarCopyObj var_240
  loc_BE0177: FLdRfVar var_240
  loc_BE017A: FLdRfVar var_210
  loc_BE017D: CStrVarTmp
  loc_BE017E: CVarStr var_220
  loc_BE0181: ImpAdCallI2 Format$(, )
  loc_BE0186: FStStrNoPop var_248
  loc_BE0189: ConcatStr
  loc_BE018A: FStStrNoPop var_24C
  loc_BE018D: LitStr "'"
  loc_BE0190: ConcatStr
  loc_BE0191: FStStrNoPop var_250
  loc_BE0194: LitStr " ORDER BY apremio.CodiReca, pagoapre.FeenAcpa)"
  loc_BE0197: ConcatStr
  loc_BE0198: FStStrNoPop var_254
  loc_BE019B: FLdPr var_AC
  loc_BE019E: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_BE01A3: FFreeStr var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_120 = "": var_124 = "": var_128 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_BE0204: FFreeAd var_A8 = "": var_12C = "": var_1B0 = ""
  loc_BE020F: FFreeVar var_FC = "": var_10C = "": var_11C = "": var_13C = "": var_14C = "": var_15C = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_210 = "": var_220 = ""
  loc_BE022A: LitStr "SELECT * FROM deta ORDER BY CodiReca, FeenAcpa"
  loc_BE022D: FLdPr var_AC
  loc_BE0230: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_BE0235: FLdRfVar var_258
  loc_BE0238: FLdPr var_AC
  loc_BE023B: from_stack_1 = clsboleapre.RecordCount
  loc_BE0240: ILdRf var_258
  loc_BE0243: LitI4 0
  loc_BE0248: EqI4
  loc_BE0249: BranchF loc_BE0257
  loc_BE024C: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BE024F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BE0254: Branch loc_BE05E6
  loc_BE0257: LitI4 0
  loc_BE025C: LitI4 1
  loc_BE0261: FLdPr Me
  loc_BE0264: MemLdRfVar from_stack_1.global_84
  loc_BE0267: Redim
  loc_BE0271: LitI4 0
  loc_BE0276: LitI4 1
  loc_BE027B: FLdPr Me
  loc_BE027E: MemLdRfVar from_stack_1.global_80
  loc_BE0281: Redim
  loc_BE028B: LitI2_Byte 0
  loc_BE028D: FLdPr Me
  loc_BE0290: MemStI2 global_88
  loc_BE0293: FLdPr var_AC
  loc_BE0296: Call clsboleapre.MoveFirst()
  loc_BE029B: Call Proc_333_23_B07678()
  loc_BE02A0: FLdRfVar var_25A
  loc_BE02A3: FLdPr var_AC
  loc_BE02A6: from_stack_1 = clsboleapre.EOF
  loc_BE02AB: FLdI2 var_25A
  loc_BE02AE: NotI4
  loc_BE02AF: BranchF loc_BE02F0
  loc_BE02B2: FLdRfVar var_FC
  loc_BE02B5: FLdPr var_AC
  loc_BE02B8: from_stack_1 = clsboleapre.CodiReca
  loc_BE02BD: FLdRfVar var_FC
  loc_BE02C0: FnCIntVar
  loc_BE02C2: FLdPr Me
  loc_BE02C5: MemLdI2 global_88
  loc_BE02C8: CI4UI1
  loc_BE02C9: FLdPr Me
  loc_BE02CC: MemLdStr global_80
  loc_BE02CF: Ary1LdPr
  loc_BE02D0: MemLdStr global_0
  loc_BE02D3: CI2Str
  loc_BE02D5: EqI2
  loc_BE02D6: FFreeVar var_FC = ""
  loc_BE02DD: BranchF loc_BE02E8
  loc_BE02E0: Call Proc_333_24_B9CEDC()
  loc_BE02E5: Branch loc_BE02ED
  loc_BE02E8: Call Proc_333_23_B07678()
  loc_BE02ED: Branch loc_BE02A0
  loc_BE02F0: LitNothing
  loc_BE02F2: FStAd var_AC 
  loc_BE02F6: LitI2_Byte 1
  loc_BE02F8: FLdPr Me
  loc_BE02FB: MemLdRfVar from_stack_1.global_88
  loc_BE02FE: FLdPr Me
  loc_BE0301: MemLdStr global_80
  loc_BE0304: LitI2_Byte 1
  loc_BE0306: FnUBound
  loc_BE0308: CI2I4
  loc_BE0309: ForI2 var_264
  loc_BE030F: LitI2_Byte 0
  loc_BE0311: LitI4 1
  loc_BE0316: FLdPr Me
  loc_BE0319: MemLdStr global_84
  loc_BE031C: AryLock
  loc_BE031F: Ary1LdPr
  loc_BE0320: MemLdRfVar from_stack_1.global_0
  loc_BE0323: CVarRef
  loc_BE0328: LitI2_Byte &HFF
  loc_BE032A: FLdPr Me
  loc_BE032D: MemLdI2 global_88
  loc_BE0330: CI4UI1
  loc_BE0331: FLdPr Me
  loc_BE0334: MemLdStr global_80
  loc_BE0337: Ary1LdPr
  loc_BE0338: MemLdStr global_12
  loc_BE033B: CVarStr var_94
  loc_BE033E: PopAdLdVar
  loc_BE033F: FLdRfVar var_260
  loc_BE0342: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE0347: AryUnlock
  loc_BE034A: LitI2_Byte 0
  loc_BE034C: LitI4 1
  loc_BE0351: FLdPr Me
  loc_BE0354: MemLdStr global_84
  loc_BE0357: AryLock
  loc_BE035A: Ary1LdPr
  loc_BE035B: MemLdRfVar from_stack_1.global_4
  loc_BE035E: CVarRef
  loc_BE0363: LitI2_Byte &HFF
  loc_BE0365: FLdPr Me
  loc_BE0368: MemLdI2 global_88
  loc_BE036B: CI4UI1
  loc_BE036C: FLdPr Me
  loc_BE036F: MemLdStr global_80
  loc_BE0372: Ary1LdPr
  loc_BE0373: MemLdStr global_16
  loc_BE0376: CVarStr var_94
  loc_BE0379: PopAdLdVar
  loc_BE037A: FLdRfVar var_260
  loc_BE037D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE0382: AryUnlock
  loc_BE0385: LitI2_Byte 0
  loc_BE0387: LitI4 1
  loc_BE038C: FLdPr Me
  loc_BE038F: MemLdStr global_84
  loc_BE0392: AryLock
  loc_BE0395: Ary1LdPr
  loc_BE0396: MemLdRfVar from_stack_1.global_8
  loc_BE0399: CVarRef
  loc_BE039E: LitI2_Byte &HFF
  loc_BE03A0: FLdPr Me
  loc_BE03A3: MemLdI2 global_88
  loc_BE03A6: CI4UI1
  loc_BE03A7: FLdPr Me
  loc_BE03AA: MemLdStr global_80
  loc_BE03AD: Ary1LdPr
  loc_BE03AE: MemLdStr global_20
  loc_BE03B1: CVarStr var_94
  loc_BE03B4: PopAdLdVar
  loc_BE03B5: FLdRfVar var_260
  loc_BE03B8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE03BD: AryUnlock
  loc_BE03C0: LitI2_Byte 0
  loc_BE03C2: LitI4 1
  loc_BE03C7: FLdPr Me
  loc_BE03CA: MemLdStr global_84
  loc_BE03CD: AryLock
  loc_BE03D0: Ary1LdPr
  loc_BE03D1: MemLdRfVar from_stack_1.global_12
  loc_BE03D4: CVarRef
  loc_BE03D9: LitI2_Byte &HFF
  loc_BE03DB: FLdPr Me
  loc_BE03DE: MemLdI2 global_88
  loc_BE03E1: CI4UI1
  loc_BE03E2: FLdPr Me
  loc_BE03E5: MemLdStr global_80
  loc_BE03E8: Ary1LdPr
  loc_BE03E9: MemLdStr global_24
  loc_BE03EC: CVarStr var_94
  loc_BE03EF: PopAdLdVar
  loc_BE03F0: FLdRfVar var_260
  loc_BE03F3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE03F8: AryUnlock
  loc_BE03FB: LitI2_Byte 0
  loc_BE03FD: LitI4 1
  loc_BE0402: FLdPr Me
  loc_BE0405: MemLdStr global_84
  loc_BE0408: AryLock
  loc_BE040B: Ary1LdPr
  loc_BE040C: MemLdRfVar from_stack_1.global_16
  loc_BE040F: CVarRef
  loc_BE0414: LitI2_Byte &HFF
  loc_BE0416: FLdPr Me
  loc_BE0419: MemLdI2 global_88
  loc_BE041C: CI4UI1
  loc_BE041D: FLdPr Me
  loc_BE0420: MemLdStr global_80
  loc_BE0423: Ary1LdPr
  loc_BE0424: MemLdStr global_28
  loc_BE0427: CVarStr var_94
  loc_BE042A: PopAdLdVar
  loc_BE042B: FLdRfVar var_260
  loc_BE042E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE0433: AryUnlock
  loc_BE0436: LitI2_Byte 0
  loc_BE0438: LitI4 1
  loc_BE043D: FLdPr Me
  loc_BE0440: MemLdStr global_84
  loc_BE0443: AryLock
  loc_BE0446: Ary1LdPr
  loc_BE0447: MemLdRfVar from_stack_1.global_20
  loc_BE044A: CVarRef
  loc_BE044F: LitI2_Byte &HFF
  loc_BE0451: FLdPr Me
  loc_BE0454: MemLdI2 global_88
  loc_BE0457: CI4UI1
  loc_BE0458: FLdPr Me
  loc_BE045B: MemLdStr global_80
  loc_BE045E: Ary1LdPr
  loc_BE045F: MemLdStr global_32
  loc_BE0462: CVarStr var_94
  loc_BE0465: PopAdLdVar
  loc_BE0466: FLdRfVar var_260
  loc_BE0469: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE046E: AryUnlock
  loc_BE0471: LitI2_Byte 0
  loc_BE0473: LitI4 1
  loc_BE0478: FLdPr Me
  loc_BE047B: MemLdStr global_84
  loc_BE047E: AryLock
  loc_BE0481: Ary1LdPr
  loc_BE0482: MemLdRfVar from_stack_1.global_24
  loc_BE0485: CVarRef
  loc_BE048A: LitI2_Byte &HFF
  loc_BE048C: FLdPr Me
  loc_BE048F: MemLdI2 global_88
  loc_BE0492: CI4UI1
  loc_BE0493: FLdPr Me
  loc_BE0496: MemLdStr global_80
  loc_BE0499: Ary1LdPr
  loc_BE049A: MemLdStr global_36
  loc_BE049D: CVarStr var_94
  loc_BE04A0: PopAdLdVar
  loc_BE04A1: FLdRfVar var_260
  loc_BE04A4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE04A9: AryUnlock
  loc_BE04AC: LitI2_Byte 0
  loc_BE04AE: LitI4 1
  loc_BE04B3: FLdPr Me
  loc_BE04B6: MemLdStr global_84
  loc_BE04B9: AryLock
  loc_BE04BC: Ary1LdPr
  loc_BE04BD: MemLdRfVar from_stack_1.global_28
  loc_BE04C0: CVarRef
  loc_BE04C5: LitI2_Byte &HFF
  loc_BE04C7: FLdPr Me
  loc_BE04CA: MemLdI2 global_88
  loc_BE04CD: CI4UI1
  loc_BE04CE: FLdPr Me
  loc_BE04D1: MemLdStr global_80
  loc_BE04D4: Ary1LdPr
  loc_BE04D5: MemLdStr global_40
  loc_BE04D8: CVarStr var_94
  loc_BE04DB: PopAdLdVar
  loc_BE04DC: FLdRfVar var_260
  loc_BE04DF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE04E4: AryUnlock
  loc_BE04E7: LitI2_Byte 0
  loc_BE04E9: LitI4 1
  loc_BE04EE: FLdPr Me
  loc_BE04F1: MemLdStr global_84
  loc_BE04F4: AryLock
  loc_BE04F7: Ary1LdPr
  loc_BE04F8: MemLdRfVar from_stack_1.global_32
  loc_BE04FB: CVarRef
  loc_BE0500: LitI2_Byte &HFF
  loc_BE0502: FLdPr Me
  loc_BE0505: MemLdI2 global_88
  loc_BE0508: CI4UI1
  loc_BE0509: FLdPr Me
  loc_BE050C: MemLdStr global_80
  loc_BE050F: Ary1LdPr
  loc_BE0510: MemLdStr global_44
  loc_BE0513: CVarStr var_94
  loc_BE0516: PopAdLdVar
  loc_BE0517: FLdRfVar var_260
  loc_BE051A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE051F: AryUnlock
  loc_BE0522: LitI2_Byte 0
  loc_BE0524: LitI4 1
  loc_BE0529: FLdPr Me
  loc_BE052C: MemLdStr global_84
  loc_BE052F: AryLock
  loc_BE0532: Ary1LdPr
  loc_BE0533: MemLdRfVar from_stack_1.global_36
  loc_BE0536: CVarRef
  loc_BE053B: LitI2_Byte &HFF
  loc_BE053D: FLdPr Me
  loc_BE0540: MemLdI2 global_88
  loc_BE0543: CI4UI1
  loc_BE0544: FLdPr Me
  loc_BE0547: MemLdStr global_80
  loc_BE054A: Ary1LdPr
  loc_BE054B: MemLdStr global_48
  loc_BE054E: CVarStr var_94
  loc_BE0551: PopAdLdVar
  loc_BE0552: FLdRfVar var_260
  loc_BE0555: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE055A: AryUnlock
  loc_BE055D: LitI2_Byte 0
  loc_BE055F: LitI4 1
  loc_BE0564: FLdPr Me
  loc_BE0567: MemLdStr global_84
  loc_BE056A: AryLock
  loc_BE056D: Ary1LdPr
  loc_BE056E: MemLdRfVar from_stack_1.global_40
  loc_BE0571: CVarRef
  loc_BE0576: LitI2_Byte &HFF
  loc_BE0578: FLdPr Me
  loc_BE057B: MemLdI2 global_88
  loc_BE057E: CI4UI1
  loc_BE057F: FLdPr Me
  loc_BE0582: MemLdStr global_80
  loc_BE0585: Ary1LdPr
  loc_BE0586: MemLdStr bLogos
  loc_BE0589: CVarStr var_94
  loc_BE058C: PopAdLdVar
  loc_BE058D: FLdRfVar var_260
  loc_BE0590: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE0595: AryUnlock
  loc_BE0598: LitI2_Byte 0
  loc_BE059A: LitI4 1
  loc_BE059F: FLdPr Me
  loc_BE05A2: MemLdStr global_84
  loc_BE05A5: AryLock
  loc_BE05A8: Ary1LdPr
  loc_BE05A9: MemLdRfVar from_stack_1.global_44
  loc_BE05AC: CVarRef
  loc_BE05B1: LitI2_Byte &HFF
  loc_BE05B3: FLdPr Me
  loc_BE05B6: MemLdI2 global_88
  loc_BE05B9: CI4UI1
  loc_BE05BA: FLdPr Me
  loc_BE05BD: MemLdStr global_80
  loc_BE05C0: Ary1LdPr
  loc_BE05C1: MemLdStr global_56
  loc_BE05C4: CVarStr var_94
  loc_BE05C7: PopAdLdVar
  loc_BE05C8: FLdRfVar var_260
  loc_BE05CB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BE05D0: AryUnlock
  loc_BE05D3: FLdPr Me
  loc_BE05D6: MemLdRfVar from_stack_1.global_88
  loc_BE05D9: NextI2 var_264, loc_BE030F
  loc_BE05DE: LitI2_Byte &HFF
  loc_BE05E0: FLdPr Me
  loc_BE05E3: MemStI2 bGenerado
  loc_BE05E6: LitI4 0
  loc_BE05EB: CI2I4
  loc_BE05EC: FLdPr Me
  loc_BE05EF: Me.MousePointer = from_stack_1
  loc_BE05F4: LitVarStr var_94, vbNullString
  loc_BE05F9: PopAdLdVar
  loc_BE05FA: FLdPr Me
  loc_BE05FD: VCallAd Control_ID_statusBar
  loc_BE0600: FStAdFunc var_A8
  loc_BE0603: FLdPr var_A8
  loc_BE0606: LateIdSt
  loc_BE060B: FFree1Ad var_A8
  loc_BE060E: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'C266A8
  'Data Table: 48ECD0
  loc_C25BB8: FLdRfVar var_88
  loc_C25BBB: LitI2_Byte 0
  loc_C25BBD: LitI2_Byte &HFF
  loc_C25BBF: ImpAdLdI4 MemVar_D93C84
  loc_C25BC2: FLdPr Me
  loc_C25BC5: MemLdRfVar from_stack_1.global_56
  loc_C25BC8: NewIfNullPr IFileSystem3
  loc_C25BCB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C25BD0: ILdRf var_88
  loc_C25BD3: FLdPr Me
  loc_C25BD6: MemStVarAd
  loc_C25BDA: FFree1Ad var_88
  loc_C25BDD: LitI2_Byte &HFF
  loc_C25BDF: ImpAdStI2 MemVar_D93C8A
  loc_C25BE2: Call Proc_333_25_C030CC()
  loc_C25BE7: LitI2_Byte 1
  loc_C25BE9: FLdPr Me
  loc_C25BEC: MemLdRfVar from_stack_1.global_88
  loc_C25BEF: FLdPr Me
  loc_C25BF2: MemLdStr global_80
  loc_C25BF5: LitI2_Byte 1
  loc_C25BF7: FnUBound
  loc_C25BF9: CI2I4
  loc_C25BFA: ForI2 var_8C
  loc_C25C00: LitVarStr var_9C, "  <tr align=""left"" class=""Encabezado"">"
  loc_C25C05: PopAdLdVar
  loc_C25C06: FLdPr Me
  loc_C25C09: MemLdRfVar from_stack_1.global_60
  loc_C25C0C: LdPrVar
  loc_C25C0E: LateMemCall
  loc_C25C14: LitStr "    <th colspan=""24"">RECAUDADOR: "
  loc_C25C17: FLdPr Me
  loc_C25C1A: MemLdI2 global_88
  loc_C25C1D: CI4UI1
  loc_C25C1E: FLdPr Me
  loc_C25C21: MemLdStr global_80
  loc_C25C24: Ary1LdPr
  loc_C25C25: MemLdStr global_0
  loc_C25C28: ConcatStr
  loc_C25C29: FStStrNoPop var_B0
  loc_C25C2C: LitStr " - "
  loc_C25C2F: ConcatStr
  loc_C25C30: FStStrNoPop var_B4
  loc_C25C33: FLdPr Me
  loc_C25C36: MemLdI2 global_88
  loc_C25C39: CI4UI1
  loc_C25C3A: FLdPr Me
  loc_C25C3D: MemLdStr global_80
  loc_C25C40: Ary1LdPr
  loc_C25C41: MemLdStr global_4
  loc_C25C44: ConcatStr
  loc_C25C45: FStStrNoPop var_B8
  loc_C25C48: LitStr "</th>"
  loc_C25C4B: ConcatStr
  loc_C25C4C: CVarStr var_C8
  loc_C25C4F: PopAdLdVar
  loc_C25C50: FLdPr Me
  loc_C25C53: MemLdRfVar from_stack_1.global_60
  loc_C25C56: LdPrVar
  loc_C25C58: LateMemCall
  loc_C25C5E: FFreeStr var_B0 = "": var_B4 = ""
  loc_C25C67: FFree1Var var_C8 = ""
  loc_C25C6A: LitVarStr var_9C, "     </tr>"
  loc_C25C6F: PopAdLdVar
  loc_C25C70: FLdPr Me
  loc_C25C73: MemLdRfVar from_stack_1.global_60
  loc_C25C76: LdPrVar
  loc_C25C78: LateMemCall
  loc_C25C7E: LitI2_Byte 1
  loc_C25C80: FLdPr Me
  loc_C25C83: MemLdRfVar from_stack_1.global_90
  loc_C25C86: FLdPr Me
  loc_C25C89: MemLdI2 global_88
  loc_C25C8C: CI4UI1
  loc_C25C8D: FLdPr Me
  loc_C25C90: MemLdStr global_80
  loc_C25C93: Ary1LdPr
  loc_C25C94: MemLdStr global_8
  loc_C25C97: LitI2_Byte 1
  loc_C25C99: FnUBound
  loc_C25C9B: CI2I4
  loc_C25C9C: ForI2 var_CC
  loc_C25CA2: FLdPr Me
  loc_C25CA5: MemLdI2 global_90
  loc_C25CA8: CI4UI1
  loc_C25CA9: FLdPr Me
  loc_C25CAC: MemLdI2 global_88
  loc_C25CAF: CI4UI1
  loc_C25CB0: FLdPr Me
  loc_C25CB3: MemLdStr global_80
  loc_C25CB6: AryLock
  loc_C25CB9: Ary1LdPr
  loc_C25CBA: MemLdStr global_8
  loc_C25CBD: AryLock
  loc_C25CC0: Ary1LdRf
  loc_C25CC1: FStR4 var_D8
  loc_C25CC4: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C25CC9: PopAdLdVar
  loc_C25CCA: FLdPr Me
  loc_C25CCD: MemLdRfVar from_stack_1.global_60
  loc_C25CD0: LdPrVar
  loc_C25CD2: LateMemCall
  loc_C25CD8: LitStr vbNullString
  loc_C25CDB: LitI2_Byte 0
  loc_C25CDD: LitI2_Byte 0
  loc_C25CDF: LitI2_Byte 0
  loc_C25CE1: LitStr "center"
  loc_C25CE4: FMemLdR4 var_D8(0)
  loc_C25CE9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25CEE: CVarStr var_C8
  loc_C25CF1: PopAdLdVar
  loc_C25CF2: FLdPr Me
  loc_C25CF5: MemLdRfVar from_stack_1.global_60
  loc_C25CF8: LdPrVar
  loc_C25CFA: LateMemCall
  loc_C25D00: FFree1Var var_C8 = ""
  loc_C25D03: LitStr vbNullString
  loc_C25D06: LitI2_Byte 0
  loc_C25D08: LitI2_Byte 0
  loc_C25D0A: LitI2_Byte 0
  loc_C25D0C: LitStr "right"
  loc_C25D0F: FMemLdR4 var_D8(4)
  loc_C25D14: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25D19: CVarStr var_C8
  loc_C25D1C: PopAdLdVar
  loc_C25D1D: FLdPr Me
  loc_C25D20: MemLdRfVar from_stack_1.global_60
  loc_C25D23: LdPrVar
  loc_C25D25: LateMemCall
  loc_C25D2B: FFree1Var var_C8 = ""
  loc_C25D2E: LitStr vbNullString
  loc_C25D31: LitI2_Byte 0
  loc_C25D33: LitI2_Byte 0
  loc_C25D35: LitI2_Byte 0
  loc_C25D37: LitStr "right"
  loc_C25D3A: FMemLdR4 var_D8(8)
  loc_C25D3F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25D44: CVarStr var_C8
  loc_C25D47: PopAdLdVar
  loc_C25D48: FLdPr Me
  loc_C25D4B: MemLdRfVar from_stack_1.global_60
  loc_C25D4E: LdPrVar
  loc_C25D50: LateMemCall
  loc_C25D56: FFree1Var var_C8 = ""
  loc_C25D59: LitStr vbNullString
  loc_C25D5C: LitI2_Byte 0
  loc_C25D5E: LitI2_Byte 0
  loc_C25D60: LitI2_Byte 0
  loc_C25D62: LitStr "right"
  loc_C25D65: FMemLdR4 var_D8(12)
  loc_C25D6A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25D6F: CVarStr var_C8
  loc_C25D72: PopAdLdVar
  loc_C25D73: FLdPr Me
  loc_C25D76: MemLdRfVar from_stack_1.global_60
  loc_C25D79: LdPrVar
  loc_C25D7B: LateMemCall
  loc_C25D81: FFree1Var var_C8 = ""
  loc_C25D84: LitStr vbNullString
  loc_C25D87: LitI2_Byte 0
  loc_C25D89: LitI2_Byte 0
  loc_C25D8B: LitI2_Byte 0
  loc_C25D8D: LitStr "right"
  loc_C25D90: FMemLdR4 var_D8(16)
  loc_C25D95: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25D9A: CVarStr var_C8
  loc_C25D9D: PopAdLdVar
  loc_C25D9E: FLdPr Me
  loc_C25DA1: MemLdRfVar from_stack_1.global_60
  loc_C25DA4: LdPrVar
  loc_C25DA6: LateMemCall
  loc_C25DAC: FFree1Var var_C8 = ""
  loc_C25DAF: LitStr vbNullString
  loc_C25DB2: LitI2_Byte 0
  loc_C25DB4: LitI2_Byte 0
  loc_C25DB6: LitI2_Byte 0
  loc_C25DB8: LitStr "left"
  loc_C25DBB: FMemLdR4 var_D8(20)
  loc_C25DC0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25DC5: CVarStr var_C8
  loc_C25DC8: PopAdLdVar
  loc_C25DC9: FLdPr Me
  loc_C25DCC: MemLdRfVar from_stack_1.global_60
  loc_C25DCF: LdPrVar
  loc_C25DD1: LateMemCall
  loc_C25DD7: FFree1Var var_C8 = ""
  loc_C25DDA: LitStr vbNullString
  loc_C25DDD: LitI2_Byte 0
  loc_C25DDF: LitI2_Byte 0
  loc_C25DE1: LitI2_Byte 0
  loc_C25DE3: LitStr "right"
  loc_C25DE6: FMemLdR4 var_D8(24)
  loc_C25DEB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25DF0: CVarStr var_C8
  loc_C25DF3: PopAdLdVar
  loc_C25DF4: FLdPr Me
  loc_C25DF7: MemLdRfVar from_stack_1.global_60
  loc_C25DFA: LdPrVar
  loc_C25DFC: LateMemCall
  loc_C25E02: FFree1Var var_C8 = ""
  loc_C25E05: LitStr vbNullString
  loc_C25E08: LitI2_Byte 0
  loc_C25E0A: LitI2_Byte 0
  loc_C25E0C: LitI2_Byte 0
  loc_C25E0E: LitStr "right"
  loc_C25E11: FMemLdR4 var_D8(28)
  loc_C25E16: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25E1B: CVarStr var_C8
  loc_C25E1E: PopAdLdVar
  loc_C25E1F: FLdPr Me
  loc_C25E22: MemLdRfVar from_stack_1.global_60
  loc_C25E25: LdPrVar
  loc_C25E27: LateMemCall
  loc_C25E2D: FFree1Var var_C8 = ""
  loc_C25E30: LitStr vbNullString
  loc_C25E33: LitI2_Byte 0
  loc_C25E35: LitI2_Byte 0
  loc_C25E37: LitI2_Byte 0
  loc_C25E39: LitStr "right"
  loc_C25E3C: FMemLdR4 var_D8(32)
  loc_C25E41: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25E46: CVarStr var_C8
  loc_C25E49: PopAdLdVar
  loc_C25E4A: FLdPr Me
  loc_C25E4D: MemLdRfVar from_stack_1.global_60
  loc_C25E50: LdPrVar
  loc_C25E52: LateMemCall
  loc_C25E58: FFree1Var var_C8 = ""
  loc_C25E5B: LitStr vbNullString
  loc_C25E5E: LitI2_Byte 0
  loc_C25E60: LitI2_Byte 0
  loc_C25E62: LitI2_Byte 0
  loc_C25E64: LitStr "right"
  loc_C25E67: FMemLdR4 var_D8(36)
  loc_C25E6C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25E71: CVarStr var_C8
  loc_C25E74: PopAdLdVar
  loc_C25E75: FLdPr Me
  loc_C25E78: MemLdRfVar from_stack_1.global_60
  loc_C25E7B: LdPrVar
  loc_C25E7D: LateMemCall
  loc_C25E83: FFree1Var var_C8 = ""
  loc_C25E86: LitStr vbNullString
  loc_C25E89: LitI2_Byte 0
  loc_C25E8B: LitI2_Byte 0
  loc_C25E8D: LitI2_Byte 0
  loc_C25E8F: LitStr "right"
  loc_C25E92: FMemLdR4 var_D8(44)
  loc_C25E97: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25E9C: CVarStr var_C8
  loc_C25E9F: PopAdLdVar
  loc_C25EA0: FLdPr Me
  loc_C25EA3: MemLdRfVar from_stack_1.global_60
  loc_C25EA6: LdPrVar
  loc_C25EA8: LateMemCall
  loc_C25EAE: FFree1Var var_C8 = ""
  loc_C25EB1: LitStr vbNullString
  loc_C25EB4: LitI2_Byte 0
  loc_C25EB6: LitI2_Byte 0
  loc_C25EB8: LitI2_Byte 0
  loc_C25EBA: LitStr "right"
  loc_C25EBD: FMemLdR4 var_D8(48)
  loc_C25EC2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25EC7: CVarStr var_C8
  loc_C25ECA: PopAdLdVar
  loc_C25ECB: FLdPr Me
  loc_C25ECE: MemLdRfVar from_stack_1.global_60
  loc_C25ED1: LdPrVar
  loc_C25ED3: LateMemCall
  loc_C25ED9: FFree1Var var_C8 = ""
  loc_C25EDC: LitStr vbNullString
  loc_C25EDF: LitI2_Byte 0
  loc_C25EE1: LitI2_Byte 0
  loc_C25EE3: LitI2_Byte 0
  loc_C25EE5: LitStr "right"
  loc_C25EE8: FMemLdR4 var_D8(52)
  loc_C25EED: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25EF2: CVarStr var_C8
  loc_C25EF5: PopAdLdVar
  loc_C25EF6: FLdPr Me
  loc_C25EF9: MemLdRfVar from_stack_1.global_60
  loc_C25EFC: LdPrVar
  loc_C25EFE: LateMemCall
  loc_C25F04: FFree1Var var_C8 = ""
  loc_C25F07: LitStr vbNullString
  loc_C25F0A: LitI2_Byte 0
  loc_C25F0C: LitI2_Byte 0
  loc_C25F0E: LitI2_Byte 0
  loc_C25F10: LitStr "right"
  loc_C25F13: FMemLdR4 var_D8(56)
  loc_C25F18: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25F1D: CVarStr var_C8
  loc_C25F20: PopAdLdVar
  loc_C25F21: FLdPr Me
  loc_C25F24: MemLdRfVar from_stack_1.global_60
  loc_C25F27: LdPrVar
  loc_C25F29: LateMemCall
  loc_C25F2F: FFree1Var var_C8 = ""
  loc_C25F32: LitStr vbNullString
  loc_C25F35: LitI2_Byte 0
  loc_C25F37: LitI2_Byte 0
  loc_C25F39: LitI2_Byte 0
  loc_C25F3B: LitStr "right"
  loc_C25F3E: FMemLdR4 var_D8(60)
  loc_C25F43: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25F48: CVarStr var_C8
  loc_C25F4B: PopAdLdVar
  loc_C25F4C: FLdPr Me
  loc_C25F4F: MemLdRfVar from_stack_1.global_60
  loc_C25F52: LdPrVar
  loc_C25F54: LateMemCall
  loc_C25F5A: FFree1Var var_C8 = ""
  loc_C25F5D: LitStr vbNullString
  loc_C25F60: LitI2_Byte 0
  loc_C25F62: LitI2_Byte 0
  loc_C25F64: LitI2_Byte 0
  loc_C25F66: LitStr "right"
  loc_C25F69: FMemLdR4 var_D8(40)
  loc_C25F6E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25F73: CVarStr var_C8
  loc_C25F76: PopAdLdVar
  loc_C25F77: FLdPr Me
  loc_C25F7A: MemLdRfVar from_stack_1.global_60
  loc_C25F7D: LdPrVar
  loc_C25F7F: LateMemCall
  loc_C25F85: FFree1Var var_C8 = ""
  loc_C25F88: LitStr vbNullString
  loc_C25F8B: LitI2_Byte 0
  loc_C25F8D: LitI2_Byte 0
  loc_C25F8F: LitI2_Byte 0
  loc_C25F91: LitStr "right"
  loc_C25F94: FMemLdR4 var_D8(64)
  loc_C25F99: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25F9E: CVarStr var_C8
  loc_C25FA1: PopAdLdVar
  loc_C25FA2: FLdPr Me
  loc_C25FA5: MemLdRfVar from_stack_1.global_60
  loc_C25FA8: LdPrVar
  loc_C25FAA: LateMemCall
  loc_C25FB0: FFree1Var var_C8 = ""
  loc_C25FB3: LitStr vbNullString
  loc_C25FB6: LitI2_Byte 0
  loc_C25FB8: LitI2_Byte 0
  loc_C25FBA: LitI2_Byte 0
  loc_C25FBC: LitStr "right"
  loc_C25FBF: FMemLdR4 var_D8(68)
  loc_C25FC4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25FC9: CVarStr var_C8
  loc_C25FCC: PopAdLdVar
  loc_C25FCD: FLdPr Me
  loc_C25FD0: MemLdRfVar from_stack_1.global_60
  loc_C25FD3: LdPrVar
  loc_C25FD5: LateMemCall
  loc_C25FDB: FFree1Var var_C8 = ""
  loc_C25FDE: LitStr vbNullString
  loc_C25FE1: LitI2_Byte 0
  loc_C25FE3: LitI2_Byte 0
  loc_C25FE5: LitI2_Byte 0
  loc_C25FE7: LitStr "right"
  loc_C25FEA: FMemLdR4 var_D8(72)
  loc_C25FEF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C25FF4: CVarStr var_C8
  loc_C25FF7: PopAdLdVar
  loc_C25FF8: FLdPr Me
  loc_C25FFB: MemLdRfVar from_stack_1.global_60
  loc_C25FFE: LdPrVar
  loc_C26000: LateMemCall
  loc_C26006: FFree1Var var_C8 = ""
  loc_C26009: LitStr vbNullString
  loc_C2600C: LitI2_Byte 0
  loc_C2600E: LitI2_Byte 0
  loc_C26010: LitI2_Byte 0
  loc_C26012: LitStr "right"
  loc_C26015: FMemLdR4 var_D8(76)
  loc_C2601A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2601F: CVarStr var_C8
  loc_C26022: PopAdLdVar
  loc_C26023: FLdPr Me
  loc_C26026: MemLdRfVar from_stack_1.global_60
  loc_C26029: LdPrVar
  loc_C2602B: LateMemCall
  loc_C26031: FFree1Var var_C8 = ""
  loc_C26034: LitStr vbNullString
  loc_C26037: LitI2_Byte 0
  loc_C26039: LitI2_Byte 0
  loc_C2603B: LitI2_Byte 0
  loc_C2603D: LitStr "right"
  loc_C26040: FMemLdR4 var_D8(80)
  loc_C26045: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2604A: CVarStr var_C8
  loc_C2604D: PopAdLdVar
  loc_C2604E: FLdPr Me
  loc_C26051: MemLdRfVar from_stack_1.global_60
  loc_C26054: LdPrVar
  loc_C26056: LateMemCall
  loc_C2605C: FFree1Var var_C8 = ""
  loc_C2605F: LitStr vbNullString
  loc_C26062: LitI2_Byte 0
  loc_C26064: LitI2_Byte 0
  loc_C26066: LitI2_Byte 0
  loc_C26068: LitStr "right"
  loc_C2606B: FMemLdR4 var_D8(84)
  loc_C26070: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26075: CVarStr var_C8
  loc_C26078: PopAdLdVar
  loc_C26079: FLdPr Me
  loc_C2607C: MemLdRfVar from_stack_1.global_60
  loc_C2607F: LdPrVar
  loc_C26081: LateMemCall
  loc_C26087: FFree1Var var_C8 = ""
  loc_C2608A: LitStr vbNullString
  loc_C2608D: LitI2_Byte 0
  loc_C2608F: LitI2_Byte 0
  loc_C26091: LitI2_Byte 0
  loc_C26093: LitStr "right"
  loc_C26096: FMemLdR4 var_D8(88)
  loc_C2609B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C260A0: CVarStr var_C8
  loc_C260A3: PopAdLdVar
  loc_C260A4: FLdPr Me
  loc_C260A7: MemLdRfVar from_stack_1.global_60
  loc_C260AA: LdPrVar
  loc_C260AC: LateMemCall
  loc_C260B2: FFree1Var var_C8 = ""
  loc_C260B5: LitStr "   <td class=""Tilde"" align=""center"">"
  loc_C260B8: FMemLdR4 var_D8(92)
  loc_C260BD: ConcatStr
  loc_C260BE: FStStrNoPop var_B0
  loc_C260C1: LitStr "</td>"
  loc_C260C4: ConcatStr
  loc_C260C5: CVarStr var_C8
  loc_C260C8: PopAdLdVar
  loc_C260C9: FLdPr Me
  loc_C260CC: MemLdRfVar from_stack_1.global_60
  loc_C260CF: LdPrVar
  loc_C260D1: LateMemCall
  loc_C260D7: FFree1Str var_B0
  loc_C260DA: FFree1Var var_C8 = ""
  loc_C260DD: LitVarStr var_9C, "     </tr>"
  loc_C260E2: PopAdLdVar
  loc_C260E3: FLdPr Me
  loc_C260E6: MemLdRfVar from_stack_1.global_60
  loc_C260E9: LdPrVar
  loc_C260EB: LateMemCall
  loc_C260F1: LitI4 0
  loc_C260F6: FStR4 var_D8
  loc_C260F9: AryUnlock
  loc_C260FC: AryUnlock
  loc_C260FF: FLdPr Me
  loc_C26102: MemLdRfVar from_stack_1.global_90
  loc_C26105: NextI2 var_CC, loc_C25CA2
  loc_C2610A: FLdPr Me
  loc_C2610D: MemLdStr global_80
  loc_C26110: LitI2_Byte 1
  loc_C26112: FnUBound
  loc_C26114: LitI4 1
  loc_C26119: GtI4
  loc_C2611A: BranchF loc_C263D1
  loc_C2611D: LitVarStr var_9C, "  <tr align=""right"" class=""SubTotales"">"
  loc_C26122: PopAdLdVar
  loc_C26123: FLdPr Me
  loc_C26126: MemLdRfVar from_stack_1.global_60
  loc_C26129: LdPrVar
  loc_C2612B: LateMemCall
  loc_C26131: LitVarStr var_9C, "    <th colspan=""10"">Subtotal</th>"
  loc_C26136: PopAdLdVar
  loc_C26137: FLdPr Me
  loc_C2613A: MemLdRfVar from_stack_1.global_60
  loc_C2613D: LdPrVar
  loc_C2613F: LateMemCall
  loc_C26145: FLdPr Me
  loc_C26148: MemLdI2 global_88
  loc_C2614B: CI4UI1
  loc_C2614C: FLdPr Me
  loc_C2614F: MemLdStr global_80
  loc_C26152: AryLock
  loc_C26155: Ary1LdPr
  loc_C26156: MemLdRfVar from_stack_1.global_12
  loc_C26159: FStR4 var_E0
  loc_C2615C: LitStr vbNullString
  loc_C2615F: LitI2_Byte 0
  loc_C26161: LitI2_Byte 0
  loc_C26163: LitI2_Byte 0
  loc_C26165: LitStr "right"
  loc_C26168: FMemLdR4 var_E0(0)
  loc_C2616D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26172: CVarStr var_C8
  loc_C26175: PopAdLdVar
  loc_C26176: FLdPr Me
  loc_C26179: MemLdRfVar from_stack_1.global_60
  loc_C2617C: LdPrVar
  loc_C2617E: LateMemCall
  loc_C26184: FFree1Var var_C8 = ""
  loc_C26187: LitStr vbNullString
  loc_C2618A: LitI2_Byte 0
  loc_C2618C: LitI2_Byte 0
  loc_C2618E: LitI2_Byte 0
  loc_C26190: LitStr "right"
  loc_C26193: FMemLdR4 var_E0(4)
  loc_C26198: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2619D: CVarStr var_C8
  loc_C261A0: PopAdLdVar
  loc_C261A1: FLdPr Me
  loc_C261A4: MemLdRfVar from_stack_1.global_60
  loc_C261A7: LdPrVar
  loc_C261A9: LateMemCall
  loc_C261AF: FFree1Var var_C8 = ""
  loc_C261B2: LitStr vbNullString
  loc_C261B5: LitI2_Byte 0
  loc_C261B7: LitI2_Byte 0
  loc_C261B9: LitI2_Byte 0
  loc_C261BB: LitStr "right"
  loc_C261BE: FMemLdR4 var_E0(8)
  loc_C261C3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C261C8: CVarStr var_C8
  loc_C261CB: PopAdLdVar
  loc_C261CC: FLdPr Me
  loc_C261CF: MemLdRfVar from_stack_1.global_60
  loc_C261D2: LdPrVar
  loc_C261D4: LateMemCall
  loc_C261DA: FFree1Var var_C8 = ""
  loc_C261DD: LitStr vbNullString
  loc_C261E0: LitI2_Byte 0
  loc_C261E2: LitI2_Byte 0
  loc_C261E4: LitI2_Byte 0
  loc_C261E6: LitStr "right"
  loc_C261E9: FMemLdR4 var_E0(12)
  loc_C261EE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C261F3: CVarStr var_C8
  loc_C261F6: PopAdLdVar
  loc_C261F7: FLdPr Me
  loc_C261FA: MemLdRfVar from_stack_1.global_60
  loc_C261FD: LdPrVar
  loc_C261FF: LateMemCall
  loc_C26205: FFree1Var var_C8 = ""
  loc_C26208: LitStr vbNullString
  loc_C2620B: LitI2_Byte 0
  loc_C2620D: LitI2_Byte 0
  loc_C2620F: LitI2_Byte 0
  loc_C26211: LitStr "right"
  loc_C26214: FMemLdR4 var_E0(16)
  loc_C26219: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2621E: CVarStr var_C8
  loc_C26221: PopAdLdVar
  loc_C26222: FLdPr Me
  loc_C26225: MemLdRfVar from_stack_1.global_60
  loc_C26228: LdPrVar
  loc_C2622A: LateMemCall
  loc_C26230: FFree1Var var_C8 = ""
  loc_C26233: LitStr vbNullString
  loc_C26236: LitI2_Byte 0
  loc_C26238: LitI2_Byte 0
  loc_C2623A: LitI2_Byte 0
  loc_C2623C: LitStr "right"
  loc_C2623F: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C26242: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26247: CVarStr var_C8
  loc_C2624A: PopAdLdVar
  loc_C2624B: FLdPr Me
  loc_C2624E: MemLdRfVar from_stack_1.global_60
  loc_C26251: LdPrVar
  loc_C26253: LateMemCall
  loc_C26259: FFree1Var var_C8 = ""
  loc_C2625C: LitStr vbNullString
  loc_C2625F: LitI2_Byte 0
  loc_C26261: LitI2_Byte 0
  loc_C26263: LitI2_Byte 0
  loc_C26265: LitStr "right"
  loc_C26268: FMemLdR4 var_E0(20)
  loc_C2626D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26272: CVarStr var_C8
  loc_C26275: PopAdLdVar
  loc_C26276: FLdPr Me
  loc_C26279: MemLdRfVar from_stack_1.global_60
  loc_C2627C: LdPrVar
  loc_C2627E: LateMemCall
  loc_C26284: FFree1Var var_C8 = ""
  loc_C26287: LitStr vbNullString
  loc_C2628A: LitI2_Byte 0
  loc_C2628C: LitI2_Byte 0
  loc_C2628E: LitI2_Byte 0
  loc_C26290: LitStr "right"
  loc_C26293: FMemLdR4 var_E0(24)
  loc_C26298: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2629D: CVarStr var_C8
  loc_C262A0: PopAdLdVar
  loc_C262A1: FLdPr Me
  loc_C262A4: MemLdRfVar from_stack_1.global_60
  loc_C262A7: LdPrVar
  loc_C262A9: LateMemCall
  loc_C262AF: FFree1Var var_C8 = ""
  loc_C262B2: LitStr vbNullString
  loc_C262B5: LitI2_Byte 0
  loc_C262B7: LitI2_Byte 0
  loc_C262B9: LitI2_Byte 0
  loc_C262BB: LitStr "right"
  loc_C262BE: FMemLdR4 var_E0(28)
  loc_C262C3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C262C8: CVarStr var_C8
  loc_C262CB: PopAdLdVar
  loc_C262CC: FLdPr Me
  loc_C262CF: MemLdRfVar from_stack_1.global_60
  loc_C262D2: LdPrVar
  loc_C262D4: LateMemCall
  loc_C262DA: FFree1Var var_C8 = ""
  loc_C262DD: LitStr vbNullString
  loc_C262E0: LitI2_Byte 0
  loc_C262E2: LitI2_Byte 0
  loc_C262E4: LitI2_Byte 0
  loc_C262E6: LitStr "right"
  loc_C262E9: FMemLdR4 var_E0(32)
  loc_C262EE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C262F3: CVarStr var_C8
  loc_C262F6: PopAdLdVar
  loc_C262F7: FLdPr Me
  loc_C262FA: MemLdRfVar from_stack_1.global_60
  loc_C262FD: LdPrVar
  loc_C262FF: LateMemCall
  loc_C26305: FFree1Var var_C8 = ""
  loc_C26308: LitStr vbNullString
  loc_C2630B: LitI2_Byte 0
  loc_C2630D: LitI2_Byte 0
  loc_C2630F: LitI2_Byte 0
  loc_C26311: LitStr "right"
  loc_C26314: FMemLdR4 var_E0(36)
  loc_C26319: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2631E: CVarStr var_C8
  loc_C26321: PopAdLdVar
  loc_C26322: FLdPr Me
  loc_C26325: MemLdRfVar from_stack_1.global_60
  loc_C26328: LdPrVar
  loc_C2632A: LateMemCall
  loc_C26330: FFree1Var var_C8 = ""
  loc_C26333: LitStr vbNullString
  loc_C26336: LitI2_Byte 0
  loc_C26338: LitI2_Byte 0
  loc_C2633A: LitI2_Byte 0
  loc_C2633C: LitStr "right"
  loc_C2633F: FMemLdR4 var_E0(40)
  loc_C26344: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26349: CVarStr var_C8
  loc_C2634C: PopAdLdVar
  loc_C2634D: FLdPr Me
  loc_C26350: MemLdRfVar from_stack_1.global_60
  loc_C26353: LdPrVar
  loc_C26355: LateMemCall
  loc_C2635B: FFree1Var var_C8 = ""
  loc_C2635E: LitStr vbNullString
  loc_C26361: LitI2_Byte 0
  loc_C26363: LitI2_Byte 0
  loc_C26365: LitI2_Byte 0
  loc_C26367: LitStr "right"
  loc_C2636A: FMemLdR4 var_E0(44)
  loc_C2636F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26374: CVarStr var_C8
  loc_C26377: PopAdLdVar
  loc_C26378: FLdPr Me
  loc_C2637B: MemLdRfVar from_stack_1.global_60
  loc_C2637E: LdPrVar
  loc_C26380: LateMemCall
  loc_C26386: FFree1Var var_C8 = ""
  loc_C26389: LitStr vbNullString
  loc_C2638C: LitI2_Byte 0
  loc_C2638E: LitI2_Byte 0
  loc_C26390: LitI2_Byte 0
  loc_C26392: LitStr "center"
  loc_C26395: LitStr vbNullString
  loc_C26398: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2639D: CVarStr var_C8
  loc_C263A0: PopAdLdVar
  loc_C263A1: FLdPr Me
  loc_C263A4: MemLdRfVar from_stack_1.global_60
  loc_C263A7: LdPrVar
  loc_C263A9: LateMemCall
  loc_C263AF: FFree1Var var_C8 = ""
  loc_C263B2: LitVarStr var_9C, "     </tr>"
  loc_C263B7: PopAdLdVar
  loc_C263B8: FLdPr Me
  loc_C263BB: MemLdRfVar from_stack_1.global_60
  loc_C263BE: LdPrVar
  loc_C263C0: LateMemCall
  loc_C263C6: LitI4 0
  loc_C263CB: FStR4 var_E0
  loc_C263CE: AryUnlock
  loc_C263D1: FLdPr Me
  loc_C263D4: MemLdRfVar from_stack_1.global_88
  loc_C263D7: NextI2 var_8C, loc_C25C00
  loc_C263DC: LitVarStr var_9C, "    <tr class=""Totales"">"
  loc_C263E1: PopAdLdVar
  loc_C263E2: FLdPr Me
  loc_C263E5: MemLdRfVar from_stack_1.global_60
  loc_C263E8: LdPrVar
  loc_C263EA: LateMemCall
  loc_C263F0: LitVarStr var_9C, "    <td colspan=""10"" align=""right"">Total</td>"
  loc_C263F5: PopAdLdVar
  loc_C263F6: FLdPr Me
  loc_C263F9: MemLdRfVar from_stack_1.global_60
  loc_C263FC: LdPrVar
  loc_C263FE: LateMemCall
  loc_C26404: LitI4 1
  loc_C26409: FLdPr Me
  loc_C2640C: MemLdStr global_84
  loc_C2640F: AryLock
  loc_C26412: Ary1LdRf
  loc_C26413: FStR4 var_E8
  loc_C26416: LitStr vbNullString
  loc_C26419: LitI2_Byte 0
  loc_C2641B: LitI2_Byte 0
  loc_C2641D: LitI2_Byte 0
  loc_C2641F: LitStr "right"
  loc_C26422: FMemLdR4 var_E8(0)
  loc_C26427: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2642C: CVarStr var_C8
  loc_C2642F: PopAdLdVar
  loc_C26430: FLdPr Me
  loc_C26433: MemLdRfVar from_stack_1.global_60
  loc_C26436: LdPrVar
  loc_C26438: LateMemCall
  loc_C2643E: FFree1Var var_C8 = ""
  loc_C26441: LitStr vbNullString
  loc_C26444: LitI2_Byte 0
  loc_C26446: LitI2_Byte 0
  loc_C26448: LitI2_Byte 0
  loc_C2644A: LitStr "right"
  loc_C2644D: FMemLdR4 var_E8(4)
  loc_C26452: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26457: CVarStr var_C8
  loc_C2645A: PopAdLdVar
  loc_C2645B: FLdPr Me
  loc_C2645E: MemLdRfVar from_stack_1.global_60
  loc_C26461: LdPrVar
  loc_C26463: LateMemCall
  loc_C26469: FFree1Var var_C8 = ""
  loc_C2646C: LitStr vbNullString
  loc_C2646F: LitI2_Byte 0
  loc_C26471: LitI2_Byte 0
  loc_C26473: LitI2_Byte 0
  loc_C26475: LitStr "right"
  loc_C26478: FMemLdR4 var_E8(8)
  loc_C2647D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26482: CVarStr var_C8
  loc_C26485: PopAdLdVar
  loc_C26486: FLdPr Me
  loc_C26489: MemLdRfVar from_stack_1.global_60
  loc_C2648C: LdPrVar
  loc_C2648E: LateMemCall
  loc_C26494: FFree1Var var_C8 = ""
  loc_C26497: LitStr vbNullString
  loc_C2649A: LitI2_Byte 0
  loc_C2649C: LitI2_Byte 0
  loc_C2649E: LitI2_Byte 0
  loc_C264A0: LitStr "right"
  loc_C264A3: FMemLdR4 var_E8(12)
  loc_C264A8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C264AD: CVarStr var_C8
  loc_C264B0: PopAdLdVar
  loc_C264B1: FLdPr Me
  loc_C264B4: MemLdRfVar from_stack_1.global_60
  loc_C264B7: LdPrVar
  loc_C264B9: LateMemCall
  loc_C264BF: FFree1Var var_C8 = ""
  loc_C264C2: LitStr vbNullString
  loc_C264C5: LitI2_Byte 0
  loc_C264C7: LitI2_Byte 0
  loc_C264C9: LitI2_Byte 0
  loc_C264CB: LitStr "right"
  loc_C264CE: FMemLdR4 var_E8(16)
  loc_C264D3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C264D8: CVarStr var_C8
  loc_C264DB: PopAdLdVar
  loc_C264DC: FLdPr Me
  loc_C264DF: MemLdRfVar from_stack_1.global_60
  loc_C264E2: LdPrVar
  loc_C264E4: LateMemCall
  loc_C264EA: FFree1Var var_C8 = ""
  loc_C264ED: LitStr vbNullString
  loc_C264F0: LitI2_Byte 0
  loc_C264F2: LitI2_Byte 0
  loc_C264F4: LitI2_Byte 0
  loc_C264F6: LitStr "right"
  loc_C264F9: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C264FC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26501: CVarStr var_C8
  loc_C26504: PopAdLdVar
  loc_C26505: FLdPr Me
  loc_C26508: MemLdRfVar from_stack_1.global_60
  loc_C2650B: LdPrVar
  loc_C2650D: LateMemCall
  loc_C26513: FFree1Var var_C8 = ""
  loc_C26516: LitStr vbNullString
  loc_C26519: LitI2_Byte 0
  loc_C2651B: LitI2_Byte 0
  loc_C2651D: LitI2_Byte 0
  loc_C2651F: LitStr "right"
  loc_C26522: FMemLdR4 var_E8(20)
  loc_C26527: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2652C: CVarStr var_C8
  loc_C2652F: PopAdLdVar
  loc_C26530: FLdPr Me
  loc_C26533: MemLdRfVar from_stack_1.global_60
  loc_C26536: LdPrVar
  loc_C26538: LateMemCall
  loc_C2653E: FFree1Var var_C8 = ""
  loc_C26541: LitStr vbNullString
  loc_C26544: LitI2_Byte 0
  loc_C26546: LitI2_Byte 0
  loc_C26548: LitI2_Byte 0
  loc_C2654A: LitStr "right"
  loc_C2654D: FMemLdR4 var_E8(24)
  loc_C26552: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26557: CVarStr var_C8
  loc_C2655A: PopAdLdVar
  loc_C2655B: FLdPr Me
  loc_C2655E: MemLdRfVar from_stack_1.global_60
  loc_C26561: LdPrVar
  loc_C26563: LateMemCall
  loc_C26569: FFree1Var var_C8 = ""
  loc_C2656C: LitStr vbNullString
  loc_C2656F: LitI2_Byte 0
  loc_C26571: LitI2_Byte 0
  loc_C26573: LitI2_Byte 0
  loc_C26575: LitStr "right"
  loc_C26578: FMemLdR4 var_E8(28)
  loc_C2657D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26582: CVarStr var_C8
  loc_C26585: PopAdLdVar
  loc_C26586: FLdPr Me
  loc_C26589: MemLdRfVar from_stack_1.global_60
  loc_C2658C: LdPrVar
  loc_C2658E: LateMemCall
  loc_C26594: FFree1Var var_C8 = ""
  loc_C26597: LitStr vbNullString
  loc_C2659A: LitI2_Byte 0
  loc_C2659C: LitI2_Byte 0
  loc_C2659E: LitI2_Byte 0
  loc_C265A0: LitStr "right"
  loc_C265A3: FMemLdR4 var_E8(32)
  loc_C265A8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C265AD: CVarStr var_C8
  loc_C265B0: PopAdLdVar
  loc_C265B1: FLdPr Me
  loc_C265B4: MemLdRfVar from_stack_1.global_60
  loc_C265B7: LdPrVar
  loc_C265B9: LateMemCall
  loc_C265BF: FFree1Var var_C8 = ""
  loc_C265C2: LitStr vbNullString
  loc_C265C5: LitI2_Byte 0
  loc_C265C7: LitI2_Byte 0
  loc_C265C9: LitI2_Byte 0
  loc_C265CB: LitStr "right"
  loc_C265CE: FMemLdR4 var_E8(36)
  loc_C265D3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C265D8: CVarStr var_C8
  loc_C265DB: PopAdLdVar
  loc_C265DC: FLdPr Me
  loc_C265DF: MemLdRfVar from_stack_1.global_60
  loc_C265E2: LdPrVar
  loc_C265E4: LateMemCall
  loc_C265EA: FFree1Var var_C8 = ""
  loc_C265ED: LitStr vbNullString
  loc_C265F0: LitI2_Byte 0
  loc_C265F2: LitI2_Byte 0
  loc_C265F4: LitI2_Byte 0
  loc_C265F6: LitStr "right"
  loc_C265F9: FMemLdR4 var_E8(40)
  loc_C265FE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26603: CVarStr var_C8
  loc_C26606: PopAdLdVar
  loc_C26607: FLdPr Me
  loc_C2660A: MemLdRfVar from_stack_1.global_60
  loc_C2660D: LdPrVar
  loc_C2660F: LateMemCall
  loc_C26615: FFree1Var var_C8 = ""
  loc_C26618: LitStr vbNullString
  loc_C2661B: LitI2_Byte 0
  loc_C2661D: LitI2_Byte 0
  loc_C2661F: LitI2_Byte 0
  loc_C26621: LitStr "right"
  loc_C26624: FMemLdR4 var_E8(44)
  loc_C26629: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C2662E: CVarStr var_C8
  loc_C26631: PopAdLdVar
  loc_C26632: FLdPr Me
  loc_C26635: MemLdRfVar from_stack_1.global_60
  loc_C26638: LdPrVar
  loc_C2663A: LateMemCall
  loc_C26640: FFree1Var var_C8 = ""
  loc_C26643: LitStr vbNullString
  loc_C26646: LitI2_Byte 0
  loc_C26648: LitI2_Byte 0
  loc_C2664A: LitI2_Byte 0
  loc_C2664C: LitStr "center"
  loc_C2664F: LitStr vbNullString
  loc_C26652: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C26657: CVarStr var_C8
  loc_C2665A: PopAdLdVar
  loc_C2665B: FLdPr Me
  loc_C2665E: MemLdRfVar from_stack_1.global_60
  loc_C26661: LdPrVar
  loc_C26663: LateMemCall
  loc_C26669: FFree1Var var_C8 = ""
  loc_C2666C: LitI4 0
  loc_C26671: FStR4 var_E8
  loc_C26674: AryUnlock
  loc_C26677: LitVarStr var_9C, "     </tr>"
  loc_C2667C: PopAdLdVar
  loc_C2667D: FLdPr Me
  loc_C26680: MemLdRfVar from_stack_1.global_60
  loc_C26683: LdPrVar
  loc_C26685: LateMemCall
  loc_C2668B: Call Proc_333_26_A0CE58()
  loc_C26690: FLdPr Me
  loc_C26693: MemLdRfVar from_stack_1.global_60
  loc_C26696: LdPrVar
  loc_C26698: LateMemCall
  loc_C2669E: LitStr vbNullString
  loc_C266A1: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_C266A6: ExitProcHresult
End Sub

Private Function Proc_333_23_B07678() 'B07678
  'Data Table: 48ECD0
  loc_B07464: FLdPr Me
  loc_B07467: MemLdI2 global_88
  loc_B0746A: LitI2_Byte 1
  loc_B0746C: AddI2
  loc_B0746D: FLdPr Me
  loc_B07470: MemStI2 global_88
  loc_B07473: LitI2_Byte 0
  loc_B07475: FLdPr Me
  loc_B07478: MemStI2 global_90
  loc_B0747B: LitI4 0
  loc_B07480: FLdPr Me
  loc_B07483: MemLdI2 global_88
  loc_B07486: CI4UI1
  loc_B07487: FLdPr Me
  loc_B0748A: MemLdRfVar from_stack_1.global_80
  loc_B0748D: RedimPreserve
  loc_B07497: FLdRfVar var_94
  loc_B0749A: FLdPr Me
  loc_B0749D: MemLdRfVar from_stack_1.global_76
  loc_B074A0: NewIfNullPr clsboleapre
  loc_B074A3: from_stack_1 = clsboleapre.CodiReca
  loc_B074A8: LitI2_Byte 0
  loc_B074AA: LitVar_Missing var_B8
  loc_B074AD: LitI2_Byte 0
  loc_B074AF: FLdVar var_94
  loc_B074B3: FLdPr Me
  loc_B074B6: MemLdI2 global_88
  loc_B074B9: CI4UI1
  loc_B074BA: FLdPr Me
  loc_B074BD: MemLdStr global_80
  loc_B074C0: AryLock
  loc_B074C3: Ary1LdPr
  loc_B074C4: MemLdRfVar from_stack_1.global_0
  loc_B074C7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B074CC: AryUnlock
  loc_B074CF: FFreeVar var_94 = ""
  loc_B074D6: FLdRfVar var_94
  loc_B074D9: FLdPr Me
  loc_B074DC: MemLdRfVar from_stack_1.global_76
  loc_B074DF: NewIfNullPr clsboleapre
  loc_B074E2: from_stack_1 = clsboleapre.DetaReca
  loc_B074E7: LitI2_Byte 0
  loc_B074E9: LitVar_Missing var_B8
  loc_B074EC: LitI2_Byte 0
  loc_B074EE: FLdVar var_94
  loc_B074F2: FLdPr Me
  loc_B074F5: MemLdI2 global_88
  loc_B074F8: CI4UI1
  loc_B074F9: FLdPr Me
  loc_B074FC: MemLdStr global_80
  loc_B074FF: AryLock
  loc_B07502: Ary1LdPr
  loc_B07503: MemLdRfVar from_stack_1.global_4
  loc_B07506: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B0750B: AryUnlock
  loc_B0750E: FFreeVar var_94 = ""
  loc_B07515: FLdPr Me
  loc_B07518: MemLdI2 global_88
  loc_B0751B: CI4UI1
  loc_B0751C: FLdPr Me
  loc_B0751F: MemLdStr global_80
  loc_B07522: AryLock
  loc_B07525: Ary1LdPr
  loc_B07526: MemLdRfVar from_stack_1.global_12
  loc_B07529: FStR4 var_C0
  loc_B0752C: LitI2_Byte 0
  loc_B0752E: LitVar_Missing var_94
  loc_B07531: LitI2_Byte &HFF
  loc_B07533: LitVarI2 var_A8, 0
  loc_B07538: PopAdLdVar
  loc_B07539: FMemLdRf ext_401004
  loc_B0753E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B07543: FFree1Var var_94 = ""
  loc_B07546: LitI2_Byte 0
  loc_B07548: LitVar_Missing var_94
  loc_B0754B: LitI2_Byte &HFF
  loc_B0754D: LitVarI2 var_A8, 0
  loc_B07552: PopAdLdVar
  loc_B07553: FMemLdRf ext_401004
  loc_B07558: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B0755D: FFree1Var var_94 = ""
  loc_B07560: LitI2_Byte 0
  loc_B07562: LitVar_Missing var_94
  loc_B07565: LitI2_Byte &HFF
  loc_B07567: LitVarI2 var_A8, 0
  loc_B0756C: PopAdLdVar
  loc_B0756D: FMemLdRf ext_401004
  loc_B07572: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B07577: FFree1Var var_94 = ""
  loc_B0757A: LitI2_Byte 0
  loc_B0757C: LitVar_Missing var_94
  loc_B0757F: LitI2_Byte &HFF
  loc_B07581: LitVarI2 var_A8, 0
  loc_B07586: PopAdLdVar
  loc_B07587: FMemLdRf ext_401004
  loc_B0758C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B07591: FFree1Var var_94 = ""
  loc_B07594: LitI2_Byte 0
  loc_B07596: LitVar_Missing var_94
  loc_B07599: LitI2_Byte &HFF
  loc_B0759B: LitVarI2 var_A8, 0
  loc_B075A0: PopAdLdVar
  loc_B075A1: FMemLdRf ext_401004
  loc_B075A6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B075AB: FFree1Var var_94 = ""
  loc_B075AE: LitI2_Byte 0
  loc_B075B0: LitVar_Missing var_94
  loc_B075B3: LitI2_Byte &HFF
  loc_B075B5: LitVarI2 var_A8, 0
  loc_B075BA: PopAdLdVar
  loc_B075BB: FMemLdRf ext_401004
  loc_B075C0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B075C5: FFree1Var var_94 = ""
  loc_B075C8: LitI2_Byte 0
  loc_B075CA: LitVar_Missing var_94
  loc_B075CD: LitI2_Byte &HFF
  loc_B075CF: LitVarI2 var_A8, 0
  loc_B075D4: PopAdLdVar
  loc_B075D5: FMemLdRf ext_401004
  loc_B075DA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B075DF: FFree1Var var_94 = ""
  loc_B075E2: LitI2_Byte 0
  loc_B075E4: LitVar_Missing var_94
  loc_B075E7: LitI2_Byte &HFF
  loc_B075E9: LitVarI2 var_A8, 0
  loc_B075EE: PopAdLdVar
  loc_B075EF: FMemLdRf ext_401004
  loc_B075F4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B075F9: FFree1Var var_94 = ""
  loc_B075FC: LitI2_Byte 0
  loc_B075FE: LitVar_Missing var_94
  loc_B07601: LitI2_Byte &HFF
  loc_B07603: LitVarI2 var_A8, 0
  loc_B07608: PopAdLdVar
  loc_B07609: FMemLdRf ext_401004
  loc_B0760E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B07613: FFree1Var var_94 = ""
  loc_B07616: LitI2_Byte 0
  loc_B07618: LitVar_Missing var_94
  loc_B0761B: LitI2_Byte &HFF
  loc_B0761D: LitVarI2 var_A8, 0
  loc_B07622: PopAdLdVar
  loc_B07623: FMemLdRf ext_401004
  loc_B07628: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B0762D: FFree1Var var_94 = ""
  loc_B07630: LitI2_Byte 0
  loc_B07632: LitVar_Missing var_94
  loc_B07635: LitI2_Byte &HFF
  loc_B07637: LitVarI2 var_A8, 0
  loc_B0763C: PopAdLdVar
  loc_B0763D: FMemLdRf ext_401004
  loc_B07642: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B07647: FFree1Var var_94 = ""
  loc_B0764A: LitI2_Byte 0
  loc_B0764C: LitVar_Missing var_94
  loc_B0764F: LitI2_Byte &HFF
  loc_B07651: LitVarI2 var_A8, 0
  loc_B07656: PopAdLdVar
  loc_B07657: FMemLdRf ext_401004
  loc_B0765C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B07661: FFree1Var var_94 = ""
  loc_B07664: LitI4 0
  loc_B07669: FStR4 var_C0
  loc_B0766C: AryUnlock
  loc_B0766F: Call Proc_333_24_B9CEDC()
  loc_B07674: ExitProcHresult
End Function

Private Function Proc_333_24_B9CEDC() 'B9CEDC
  'Data Table: 48ECD0
  loc_B9C918: FLdPr Me
  loc_B9C91B: MemLdI2 global_90
  loc_B9C91E: LitI2_Byte 1
  loc_B9C920: AddI2
  loc_B9C921: FLdPr Me
  loc_B9C924: MemStI2 global_90
  loc_B9C927: LitI4 0
  loc_B9C92C: FLdPr Me
  loc_B9C92F: MemLdI2 global_90
  loc_B9C932: CI4UI1
  loc_B9C933: FLdPr Me
  loc_B9C936: MemLdI2 global_88
  loc_B9C939: CI4UI1
  loc_B9C93A: FLdPr Me
  loc_B9C93D: MemLdStr global_80
  loc_B9C940: Ary1LdPr
  loc_B9C941: MemLdRfVar from_stack_1.global_8
  loc_B9C944: RedimPreserve
  loc_B9C94E: FLdPr Me
  loc_B9C951: MemLdI2 global_90
  loc_B9C954: CI4UI1
  loc_B9C955: FLdPr Me
  loc_B9C958: MemLdI2 global_88
  loc_B9C95B: CI4UI1
  loc_B9C95C: FLdPr Me
  loc_B9C95F: MemLdStr global_80
  loc_B9C962: AryLock
  loc_B9C965: Ary1LdPr
  loc_B9C966: MemLdStr global_8
  loc_B9C969: AryLock
  loc_B9C96C: Ary1LdRf
  loc_B9C96D: FStR4 var_90
  loc_B9C970: FLdRfVar var_A0
  loc_B9C973: FLdPr Me
  loc_B9C976: MemLdRfVar from_stack_1.global_76
  loc_B9C979: NewIfNullPr clsboleapre
  loc_B9C97C: from_stack_1 = clsboleapre.FeenAcpa
  loc_B9C981: LitI2_Byte 0
  loc_B9C983: LitVar_Missing var_C0
  loc_B9C986: LitI2_Byte 0
  loc_B9C988: FLdVar var_A0
  loc_B9C98C: FMemLdRf unk_48EC41
  loc_B9C991: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9C996: FFreeVar var_A0 = ""
  loc_B9C99D: FLdRfVar var_A0
  loc_B9C9A0: FLdPr Me
  loc_B9C9A3: MemLdRfVar from_stack_1.global_76
  loc_B9C9A6: NewIfNullPr clsboleapre
  loc_B9C9A9: from_stack_1 = clsboleapre.CodiOfic
  loc_B9C9AE: LitI2_Byte 0
  loc_B9C9B0: LitVar_Missing var_C0
  loc_B9C9B3: LitI2_Byte 0
  loc_B9C9B5: FLdVar var_A0
  loc_B9C9B9: FMemLdRf unk_48EC41
  loc_B9C9BE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9C9C3: FFreeVar var_A0 = ""
  loc_B9C9CA: FLdRfVar var_A0
  loc_B9C9CD: FLdPr Me
  loc_B9C9D0: MemLdRfVar from_stack_1.global_76
  loc_B9C9D3: NewIfNullPr clsboleapre
  loc_B9C9D6: from_stack_1 = clsboleapre.CuenCtct
  loc_B9C9DB: LitI2_Byte 0
  loc_B9C9DD: LitVar_Missing var_C0
  loc_B9C9E0: LitI2_Byte 0
  loc_B9C9E2: FLdVar var_A0
  loc_B9C9E6: FMemLdRf unk_48EC41
  loc_B9C9EB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9C9F0: FFreeVar var_A0 = ""
  loc_B9C9F7: FLdRfVar var_C4
  loc_B9C9FA: FLdPr Me
  loc_B9C9FD: MemLdRfVar from_stack_1.global_76
  loc_B9CA00: NewIfNullPr clsboleapre
  loc_B9CA03: from_stack_1 = clsboleapre.NumeApre
  loc_B9CA08: LitI2_Byte 0
  loc_B9CA0A: LitVar_Missing var_A0
  loc_B9CA0D: LitI2_Byte 0
  loc_B9CA0F: ILdRf var_C4
  loc_B9CA12: CVarI4
  loc_B9CA16: PopAdLdVar
  loc_B9CA17: FMemLdRf unk_48EC41
  loc_B9CA1C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CA21: FFree1Var var_A0 = ""
  loc_B9CA24: FLdRfVar var_A0
  loc_B9CA27: FLdPr Me
  loc_B9CA2A: MemLdRfVar from_stack_1.global_76
  loc_B9CA2D: NewIfNullPr clsboleapre
  loc_B9CA30: from_stack_1 = clsboleapre.AutoApre
  loc_B9CA35: LitI2_Byte 0
  loc_B9CA37: LitVar_Missing var_C0
  loc_B9CA3A: LitI2_Byte 0
  loc_B9CA3C: FLdVar var_A0
  loc_B9CA40: FMemLdRf unk_48EC41
  loc_B9CA45: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CA4A: FFreeVar var_A0 = ""
  loc_B9CA51: FLdRfVar var_D8
  loc_B9CA54: FLdPr Me
  loc_B9CA57: MemLdRfVar from_stack_1.global_76
  loc_B9CA5A: NewIfNullPr clsboleapre
  loc_B9CA5D: from_stack_1 = clsboleapre.DetaPers
  loc_B9CA62: LitI2_Byte 0
  loc_B9CA64: LitVar_Missing var_C0
  loc_B9CA67: LitI2_Byte 0
  loc_B9CA69: FLdZeroAd var_D8
  loc_B9CA6C: CVarStr var_A0
  loc_B9CA6F: PopAdLdVar
  loc_B9CA70: FMemLdRf unk_48EC41
  loc_B9CA75: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CA7A: FFreeVar var_A0 = ""
  loc_B9CA81: FLdRfVar var_D8
  loc_B9CA84: FLdPr Me
  loc_B9CA87: MemLdRfVar from_stack_1.global_76
  loc_B9CA8A: NewIfNullPr clsboleapre
  loc_B9CA8D: from_stack_1 = clsboleapre.SecrInap
  loc_B9CA92: LitI2_Byte 0
  loc_B9CA94: LitVar_Missing var_C0
  loc_B9CA97: LitI2_Byte 0
  loc_B9CA99: FLdZeroAd var_D8
  loc_B9CA9C: CVarStr var_A0
  loc_B9CA9F: PopAdLdVar
  loc_B9CAA0: FMemLdRf unk_48EC41
  loc_B9CAA5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CAAA: FFreeVar var_A0 = ""
  loc_B9CAB1: FLdRfVar var_D8
  loc_B9CAB4: FLdPr Me
  loc_B9CAB7: MemLdRfVar from_stack_1.global_76
  loc_B9CABA: NewIfNullPr clsboleapre
  loc_B9CABD: from_stack_1 = clsboleapre.JuzgInap
  loc_B9CAC2: LitI2_Byte 0
  loc_B9CAC4: LitVar_Missing var_C0
  loc_B9CAC7: LitI2_Byte 0
  loc_B9CAC9: FLdZeroAd var_D8
  loc_B9CACC: CVarStr var_A0
  loc_B9CACF: PopAdLdVar
  loc_B9CAD0: FMemLdRf unk_48EC41
  loc_B9CAD5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CADA: FFreeVar var_A0 = ""
  loc_B9CAE1: FLdRfVar var_E0
  loc_B9CAE4: FLdPr Me
  loc_B9CAE7: MemLdRfVar from_stack_1.global_76
  loc_B9CAEA: NewIfNullPr clsboleapre
  loc_B9CAED: from_stack_1 = clsboleapre.TotaApre
  loc_B9CAF2: LitI2_Byte 0
  loc_B9CAF4: LitVar_Missing var_A0
  loc_B9CAF7: LitI2_Byte 0
  loc_B9CAF9: FLdFPR8 var_E0
  loc_B9CAFC: CVarR8
  loc_B9CB00: PopAdLdVar
  loc_B9CB01: FMemLdRf unk_48EC41
  loc_B9CB06: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CB0B: FFree1Var var_A0 = ""
  loc_B9CB0E: FLdRfVar var_E2
  loc_B9CB11: FLdPr Me
  loc_B9CB14: MemLdRfVar from_stack_1.global_76
  loc_B9CB17: NewIfNullPr clsboleapre
  loc_B9CB1A: from_stack_1 = clsboleapre.CodiInju
  loc_B9CB1F: LitI2_Byte 0
  loc_B9CB21: LitVar_Missing var_A0
  loc_B9CB24: LitI2_Byte 0
  loc_B9CB26: FLdI2 var_E2
  loc_B9CB29: CVarI2 var_B0
  loc_B9CB2C: PopAdLdVar
  loc_B9CB2D: FMemLdRf unk_48EC41
  loc_B9CB32: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CB37: FFree1Var var_A0 = ""
  loc_B9CB3A: FLdRfVar var_A0
  loc_B9CB3D: FLdPr Me
  loc_B9CB40: MemLdRfVar from_stack_1.global_76
  loc_B9CB43: NewIfNullPr clsboleapre
  loc_B9CB46: from_stack_1 = clsboleapre.CodiOfju
  loc_B9CB4B: LitI2_Byte 0
  loc_B9CB4D: LitVar_Missing var_C0
  loc_B9CB50: LitI2_Byte 0
  loc_B9CB52: FLdVar var_A0
  loc_B9CB56: FMemLdRf unk_48EC41
  loc_B9CB5B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CB60: FFreeVar var_A0 = ""
  loc_B9CB67: FLdRfVar var_D8
  loc_B9CB6A: FLdPr Me
  loc_B9CB6D: MemLdRfVar from_stack_1.global_76
  loc_B9CB70: NewIfNullPr clsboleapre
  loc_B9CB73: from_stack_1 = clsboleapre.Facilidad
  loc_B9CB78: LitI2_Byte 0
  loc_B9CB7A: LitVar_Missing var_C0
  loc_B9CB7D: LitI2_Byte 0
  loc_B9CB7F: FLdZeroAd var_D8
  loc_B9CB82: CVarStr var_A0
  loc_B9CB85: PopAdLdVar
  loc_B9CB86: FMemLdRf unk_48EC41
  loc_B9CB8B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CB90: FFreeVar var_A0 = ""
  loc_B9CB97: FLdRfVar var_E0
  loc_B9CB9A: FLdPr Me
  loc_B9CB9D: MemLdRfVar from_stack_1.global_76
  loc_B9CBA0: NewIfNullPr clsboleapre
  loc_B9CBA3: from_stack_1 = clsboleapre.CoadBoap
  loc_B9CBA8: LitI2_Byte 0
  loc_B9CBAA: FLdPr Me
  loc_B9CBAD: MemLdI2 global_88
  loc_B9CBB0: CI4UI1
  loc_B9CBB1: FLdPr Me
  loc_B9CBB4: MemLdStr global_80
  loc_B9CBB7: AryLock
  loc_B9CBBA: Ary1LdPr
  loc_B9CBBB: MemLdRfVar from_stack_1.global_12
  loc_B9CBBE: CVarRef
  loc_B9CBC3: LitI2_Byte &HFF
  loc_B9CBC5: FLdFPR8 var_E0
  loc_B9CBC8: CVarR8
  loc_B9CBCC: PopAdLdVar
  loc_B9CBCD: FMemLdRf unk_48EC41
  loc_B9CBD2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CBD7: AryUnlock
  loc_B9CBDA: FLdRfVar var_E0
  loc_B9CBDD: FLdPr Me
  loc_B9CBE0: MemLdRfVar from_stack_1.global_76
  loc_B9CBE3: NewIfNullPr clsboleapre
  loc_B9CBE6: from_stack_1 = clsboleapre.IcomBoap
  loc_B9CBEB: LitI2_Byte 0
  loc_B9CBED: FLdPr Me
  loc_B9CBF0: MemLdI2 global_88
  loc_B9CBF3: CI4UI1
  loc_B9CBF4: FLdPr Me
  loc_B9CBF7: MemLdStr global_80
  loc_B9CBFA: AryLock
  loc_B9CBFD: Ary1LdPr
  loc_B9CBFE: MemLdRfVar from_stack_1.global_16
  loc_B9CC01: CVarRef
  loc_B9CC06: LitI2_Byte &HFF
  loc_B9CC08: FLdFPR8 var_E0
  loc_B9CC0B: CVarR8
  loc_B9CC0F: PopAdLdVar
  loc_B9CC10: FMemLdRf unk_48EC41
  loc_B9CC15: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CC1A: AryUnlock
  loc_B9CC1D: FLdRfVar var_E0
  loc_B9CC20: FLdPr Me
  loc_B9CC23: MemLdRfVar from_stack_1.global_76
  loc_B9CC26: NewIfNullPr clsboleapre
  loc_B9CC29: from_stack_1 = clsboleapre.HoreBoap
  loc_B9CC2E: LitI2_Byte 0
  loc_B9CC30: FLdPr Me
  loc_B9CC33: MemLdI2 global_88
  loc_B9CC36: CI4UI1
  loc_B9CC37: FLdPr Me
  loc_B9CC3A: MemLdStr global_80
  loc_B9CC3D: AryLock
  loc_B9CC40: Ary1LdPr
  loc_B9CC41: MemLdRfVar from_stack_1.global_20
  loc_B9CC44: CVarRef
  loc_B9CC49: LitI2_Byte &HFF
  loc_B9CC4B: FLdFPR8 var_E0
  loc_B9CC4E: CVarR8
  loc_B9CC52: PopAdLdVar
  loc_B9CC53: FMemLdRf unk_48EC41
  loc_B9CC58: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CC5D: AryUnlock
  loc_B9CC60: FLdRfVar var_E0
  loc_B9CC63: FLdPr Me
  loc_B9CC66: MemLdRfVar from_stack_1.global_76
  loc_B9CC69: NewIfNullPr clsboleapre
  loc_B9CC6C: from_stack_1 = clsboleapre.IrecBoap
  loc_B9CC71: LitI2_Byte 0
  loc_B9CC73: FLdPr Me
  loc_B9CC76: MemLdI2 global_88
  loc_B9CC79: CI4UI1
  loc_B9CC7A: FLdPr Me
  loc_B9CC7D: MemLdStr global_80
  loc_B9CC80: AryLock
  loc_B9CC83: Ary1LdPr
  loc_B9CC84: MemLdRfVar from_stack_1.global_24
  loc_B9CC87: CVarRef
  loc_B9CC8C: LitI2_Byte &HFF
  loc_B9CC8E: FLdFPR8 var_E0
  loc_B9CC91: CVarR8
  loc_B9CC95: PopAdLdVar
  loc_B9CC96: FMemLdRf unk_48EC41
  loc_B9CC9B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CCA0: AryUnlock
  loc_B9CCA3: FLdRfVar var_E0
  loc_B9CCA6: FLdPr Me
  loc_B9CCA9: MemLdRfVar from_stack_1.global_76
  loc_B9CCAC: NewIfNullPr clsboleapre
  loc_B9CCAF: from_stack_1 = clsboleapre.MoreBoap
  loc_B9CCB4: LitI2_Byte 0
  loc_B9CCB6: FLdPr Me
  loc_B9CCB9: MemLdI2 global_88
  loc_B9CCBC: CI4UI1
  loc_B9CCBD: FLdPr Me
  loc_B9CCC0: MemLdStr global_80
  loc_B9CCC3: AryLock
  loc_B9CCC6: Ary1LdPr
  loc_B9CCC7: MemLdRfVar from_stack_1.global_28
  loc_B9CCCA: CVarRef
  loc_B9CCCF: LitI2_Byte &HFF
  loc_B9CCD1: FLdFPR8 var_E0
  loc_B9CCD4: CVarR8
  loc_B9CCD8: PopAdLdVar
  loc_B9CCD9: FMemLdRf unk_48EC41
  loc_B9CCDE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CCE3: AryUnlock
  loc_B9CCE6: FLdRfVar var_E0
  loc_B9CCE9: FLdPr Me
  loc_B9CCEC: MemLdRfVar from_stack_1.global_76
  loc_B9CCEF: NewIfNullPr clsboleapre
  loc_B9CCF2: from_stack_1 = clsboleapre.HoofBoap
  loc_B9CCF7: LitI2_Byte 0
  loc_B9CCF9: FLdPr Me
  loc_B9CCFC: MemLdI2 global_88
  loc_B9CCFF: CI4UI1
  loc_B9CD00: FLdPr Me
  loc_B9CD03: MemLdStr global_80
  loc_B9CD06: AryLock
  loc_B9CD09: Ary1LdPr
  loc_B9CD0A: MemLdRfVar from_stack_1.global_32
  loc_B9CD0D: CVarRef
  loc_B9CD12: LitI2_Byte &HFF
  loc_B9CD14: FLdFPR8 var_E0
  loc_B9CD17: CVarR8
  loc_B9CD1B: PopAdLdVar
  loc_B9CD1C: FMemLdRf unk_48EC41
  loc_B9CD21: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CD26: AryUnlock
  loc_B9CD29: FLdRfVar var_E0
  loc_B9CD2C: FLdPr Me
  loc_B9CD2F: MemLdRfVar from_stack_1.global_76
  loc_B9CD32: NewIfNullPr clsboleapre
  loc_B9CD35: from_stack_1 = clsboleapre.IofiBoap
  loc_B9CD3A: LitI2_Byte 0
  loc_B9CD3C: FLdPr Me
  loc_B9CD3F: MemLdI2 global_88
  loc_B9CD42: CI4UI1
  loc_B9CD43: FLdPr Me
  loc_B9CD46: MemLdStr global_80
  loc_B9CD49: AryLock
  loc_B9CD4C: Ary1LdPr
  loc_B9CD4D: MemLdRfVar from_stack_1.global_36
  loc_B9CD50: CVarRef
  loc_B9CD55: LitI2_Byte &HFF
  loc_B9CD57: FLdFPR8 var_E0
  loc_B9CD5A: CVarR8
  loc_B9CD5E: PopAdLdVar
  loc_B9CD5F: FMemLdRf unk_48EC41
  loc_B9CD64: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CD69: AryUnlock
  loc_B9CD6C: FLdRfVar var_E0
  loc_B9CD6F: FLdPr Me
  loc_B9CD72: MemLdRfVar from_stack_1.global_76
  loc_B9CD75: NewIfNullPr clsboleapre
  loc_B9CD78: from_stack_1 = clsboleapre.MoofBoap
  loc_B9CD7D: LitI2_Byte 0
  loc_B9CD7F: FLdPr Me
  loc_B9CD82: MemLdI2 global_88
  loc_B9CD85: CI4UI1
  loc_B9CD86: FLdPr Me
  loc_B9CD89: MemLdStr global_80
  loc_B9CD8C: AryLock
  loc_B9CD8F: Ary1LdPr
  loc_B9CD90: MemLdRfVar from_stack_1.global_40
  loc_B9CD93: CVarRef
  loc_B9CD98: LitI2_Byte &HFF
  loc_B9CD9A: FLdFPR8 var_E0
  loc_B9CD9D: CVarR8
  loc_B9CDA1: PopAdLdVar
  loc_B9CDA2: FMemLdRf unk_48EC41
  loc_B9CDA7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CDAC: AryUnlock
  loc_B9CDAF: FLdRfVar var_E0
  loc_B9CDB2: FLdPr Me
  loc_B9CDB5: MemLdRfVar from_stack_1.global_76
  loc_B9CDB8: NewIfNullPr clsboleapre
  loc_B9CDBB: from_stack_1 = clsboleapre.ApleBoap
  loc_B9CDC0: LitI2_Byte 0
  loc_B9CDC2: FLdPr Me
  loc_B9CDC5: MemLdI2 global_88
  loc_B9CDC8: CI4UI1
  loc_B9CDC9: FLdPr Me
  loc_B9CDCC: MemLdStr global_80
  loc_B9CDCF: AryLock
  loc_B9CDD2: Ary1LdPr
  loc_B9CDD3: MemLdRfVar from_stack_1.global_44
  loc_B9CDD6: CVarRef
  loc_B9CDDB: LitI2_Byte &HFF
  loc_B9CDDD: FLdFPR8 var_E0
  loc_B9CDE0: CVarR8
  loc_B9CDE4: PopAdLdVar
  loc_B9CDE5: FMemLdRf unk_48EC41
  loc_B9CDEA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CDEF: AryUnlock
  loc_B9CDF2: FLdRfVar var_E0
  loc_B9CDF5: FLdPr Me
  loc_B9CDF8: MemLdRfVar from_stack_1.global_76
  loc_B9CDFB: NewIfNullPr clsboleapre
  loc_B9CDFE: from_stack_1 = clsboleapre.ReseBoap
  loc_B9CE03: LitI2_Byte 0
  loc_B9CE05: FLdPr Me
  loc_B9CE08: MemLdI2 global_88
  loc_B9CE0B: CI4UI1
  loc_B9CE0C: FLdPr Me
  loc_B9CE0F: MemLdStr global_80
  loc_B9CE12: AryLock
  loc_B9CE15: Ary1LdPr
  loc_B9CE16: MemLdRfVar from_stack_1.global_48
  loc_B9CE19: CVarRef
  loc_B9CE1E: LitI2_Byte &HFF
  loc_B9CE20: FLdFPR8 var_E0
  loc_B9CE23: CVarR8
  loc_B9CE27: PopAdLdVar
  loc_B9CE28: FMemLdRf unk_48EC41
  loc_B9CE2D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CE32: AryUnlock
  loc_B9CE35: FLdRfVar var_E0
  loc_B9CE38: FLdPr Me
  loc_B9CE3B: MemLdRfVar from_stack_1.global_76
  loc_B9CE3E: NewIfNullPr clsboleapre
  loc_B9CE41: from_stack_1 = clsboleapre.DefiBoap
  loc_B9CE46: LitI2_Byte 0
  loc_B9CE48: FLdPr Me
  loc_B9CE4B: MemLdI2 global_88
  loc_B9CE4E: CI4UI1
  loc_B9CE4F: FLdPr Me
  loc_B9CE52: MemLdStr global_80
  loc_B9CE55: AryLock
  loc_B9CE58: Ary1LdPr
  loc_B9CE59: MemLdRfVar from_stack_1.bLogos
  loc_B9CE5C: CVarRef
  loc_B9CE61: LitI2_Byte &HFF
  loc_B9CE63: FLdFPR8 var_E0
  loc_B9CE66: CVarR8
  loc_B9CE6A: PopAdLdVar
  loc_B9CE6B: FMemLdRf unk_48EC41
  loc_B9CE70: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CE75: AryUnlock
  loc_B9CE78: FLdRfVar var_A0
  loc_B9CE7B: FLdPr Me
  loc_B9CE7E: MemLdRfVar from_stack_1.global_76
  loc_B9CE81: NewIfNullPr clsboleapre
  loc_B9CE84: from_stack_1 = clsboleapre.TotaBoap
  loc_B9CE89: LitI2_Byte 0
  loc_B9CE8B: FLdPr Me
  loc_B9CE8E: MemLdI2 global_88
  loc_B9CE91: CI4UI1
  loc_B9CE92: FLdPr Me
  loc_B9CE95: MemLdStr global_80
  loc_B9CE98: AryLock
  loc_B9CE9B: Ary1LdPr
  loc_B9CE9C: MemLdRfVar from_stack_1.global_56
  loc_B9CE9F: CVarRef
  loc_B9CEA4: LitI2_Byte &HFF
  loc_B9CEA6: FLdVar var_A0
  loc_B9CEAA: FMemLdRf unk_48EC41
  loc_B9CEAF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9CEB4: AryUnlock
  loc_B9CEB7: FFree1Var var_A0 = ""
  loc_B9CEBA: LitI4 0
  loc_B9CEBF: FStR4 var_90
  loc_B9CEC2: AryUnlock
  loc_B9CEC5: AryUnlock
  loc_B9CEC8: LitI2_Byte 1
  loc_B9CECA: PopTmpLdAd2 var_E2
  loc_B9CECD: FLdPr Me
  loc_B9CED0: MemLdRfVar from_stack_1.global_76
  loc_B9CED3: NewIfNullPr clsboleapre
  loc_B9CED6: Call clsboleapre.Move(from_stack_1v)
  loc_B9CEDB: ExitProcHresult
End Function

Private Function Proc_333_25_C030CC() 'C030CC
  'Data Table: 48ECD0
  loc_C02790: LitVarStr var_94, "<html>"
  loc_C02795: PopAdLdVar
  loc_C02796: FLdPr Me
  loc_C02799: MemLdRfVar from_stack_1.global_60
  loc_C0279C: LdPrVar
  loc_C0279E: LateMemCall
  loc_C027A4: LitVarStr var_94, "<head>"
  loc_C027A9: PopAdLdVar
  loc_C027AA: FLdPr Me
  loc_C027AD: MemLdRfVar from_stack_1.global_60
  loc_C027B0: LdPrVar
  loc_C027B2: LateMemCall
  loc_C027B8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C027BD: PopAdLdVar
  loc_C027BE: FLdPr Me
  loc_C027C1: MemLdRfVar from_stack_1.global_60
  loc_C027C4: LdPrVar
  loc_C027C6: LateMemCall
  loc_C027CC: LitStr "<title>"
  loc_C027CF: FLdRfVar var_A8
  loc_C027D2: FLdPr Me
  loc_C027D5:  = Me.Caption
  loc_C027DA: ILdRf var_A8
  loc_C027DD: ConcatStr
  loc_C027DE: FStStrNoPop var_AC
  loc_C027E1: LitStr "</title>"
  loc_C027E4: ConcatStr
  loc_C027E5: CVarStr var_BC
  loc_C027E8: PopAdLdVar
  loc_C027E9: FLdPr Me
  loc_C027EC: MemLdRfVar from_stack_1.global_60
  loc_C027EF: LdPrVar
  loc_C027F1: LateMemCall
  loc_C027F7: FFreeStr var_A8 = ""
  loc_C027FE: FFree1Var var_BC = ""
  loc_C02801: LitVarStr var_94, "<style type=""text/css"">"
  loc_C02806: PopAdLdVar
  loc_C02807: FLdPr Me
  loc_C0280A: MemLdRfVar from_stack_1.global_60
  loc_C0280D: LdPrVar
  loc_C0280F: LateMemCall
  loc_C02815: LitVarStr var_94, ".Titulo1 {"
  loc_C0281A: PopAdLdVar
  loc_C0281B: FLdPr Me
  loc_C0281E: MemLdRfVar from_stack_1.global_60
  loc_C02821: LdPrVar
  loc_C02823: LateMemCall
  loc_C02829: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C0282E: PopAdLdVar
  loc_C0282F: FLdPr Me
  loc_C02832: MemLdRfVar from_stack_1.global_60
  loc_C02835: LdPrVar
  loc_C02837: LateMemCall
  loc_C0283D: LitVarStr var_94, " font-size: 18px;"
  loc_C02842: PopAdLdVar
  loc_C02843: FLdPr Me
  loc_C02846: MemLdRfVar from_stack_1.global_60
  loc_C02849: LdPrVar
  loc_C0284B: LateMemCall
  loc_C02851: LitVarStr var_94, " font-weight: bold;"
  loc_C02856: PopAdLdVar
  loc_C02857: FLdPr Me
  loc_C0285A: MemLdRfVar from_stack_1.global_60
  loc_C0285D: LdPrVar
  loc_C0285F: LateMemCall
  loc_C02865: LitVarStr var_94, "}"
  loc_C0286A: PopAdLdVar
  loc_C0286B: FLdPr Me
  loc_C0286E: MemLdRfVar from_stack_1.global_60
  loc_C02871: LdPrVar
  loc_C02873: LateMemCall
  loc_C02879: LitVarStr var_94, ".Titulo2 {"
  loc_C0287E: PopAdLdVar
  loc_C0287F: FLdPr Me
  loc_C02882: MemLdRfVar from_stack_1.global_60
  loc_C02885: LdPrVar
  loc_C02887: LateMemCall
  loc_C0288D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C02892: PopAdLdVar
  loc_C02893: FLdPr Me
  loc_C02896: MemLdRfVar from_stack_1.global_60
  loc_C02899: LdPrVar
  loc_C0289B: LateMemCall
  loc_C028A1: LitVarStr var_94, " font-size: 14px;"
  loc_C028A6: PopAdLdVar
  loc_C028A7: FLdPr Me
  loc_C028AA: MemLdRfVar from_stack_1.global_60
  loc_C028AD: LdPrVar
  loc_C028AF: LateMemCall
  loc_C028B5: LitVarStr var_94, " font-weight: bold;"
  loc_C028BA: PopAdLdVar
  loc_C028BB: FLdPr Me
  loc_C028BE: MemLdRfVar from_stack_1.global_60
  loc_C028C1: LdPrVar
  loc_C028C3: LateMemCall
  loc_C028C9: LitVarStr var_94, "}"
  loc_C028CE: PopAdLdVar
  loc_C028CF: FLdPr Me
  loc_C028D2: MemLdRfVar from_stack_1.global_60
  loc_C028D5: LdPrVar
  loc_C028D7: LateMemCall
  loc_C028DD: LitVarStr var_94, ".Normal {"
  loc_C028E2: PopAdLdVar
  loc_C028E3: FLdPr Me
  loc_C028E6: MemLdRfVar from_stack_1.global_60
  loc_C028E9: LdPrVar
  loc_C028EB: LateMemCall
  loc_C028F1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C028F6: PopAdLdVar
  loc_C028F7: FLdPr Me
  loc_C028FA: MemLdRfVar from_stack_1.global_60
  loc_C028FD: LdPrVar
  loc_C028FF: LateMemCall
  loc_C02905: LitVarStr var_94, " font-size: 12px;"
  loc_C0290A: PopAdLdVar
  loc_C0290B: FLdPr Me
  loc_C0290E: MemLdRfVar from_stack_1.global_60
  loc_C02911: LdPrVar
  loc_C02913: LateMemCall
  loc_C02919: LitVarStr var_94, " font-style: normal;"
  loc_C0291E: PopAdLdVar
  loc_C0291F: FLdPr Me
  loc_C02922: MemLdRfVar from_stack_1.global_60
  loc_C02925: LdPrVar
  loc_C02927: LateMemCall
  loc_C0292D: LitVarStr var_94, " font-weight: normal;"
  loc_C02932: PopAdLdVar
  loc_C02933: FLdPr Me
  loc_C02936: MemLdRfVar from_stack_1.global_60
  loc_C02939: LdPrVar
  loc_C0293B: LateMemCall
  loc_C02941: LitVarStr var_94, " font-variant: normal;"
  loc_C02946: PopAdLdVar
  loc_C02947: FLdPr Me
  loc_C0294A: MemLdRfVar from_stack_1.global_60
  loc_C0294D: LdPrVar
  loc_C0294F: LateMemCall
  loc_C02955: LitVarStr var_94, "}"
  loc_C0295A: PopAdLdVar
  loc_C0295B: FLdPr Me
  loc_C0295E: MemLdRfVar from_stack_1.global_60
  loc_C02961: LdPrVar
  loc_C02963: LateMemCall
  loc_C02969: LitVarStr var_94, ".Encabezado {"
  loc_C0296E: PopAdLdVar
  loc_C0296F: FLdPr Me
  loc_C02972: MemLdRfVar from_stack_1.global_60
  loc_C02975: LdPrVar
  loc_C02977: LateMemCall
  loc_C0297D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C02982: PopAdLdVar
  loc_C02983: FLdPr Me
  loc_C02986: MemLdRfVar from_stack_1.global_60
  loc_C02989: LdPrVar
  loc_C0298B: LateMemCall
  loc_C02991: LitVarStr var_94, " font-size: 11px;"
  loc_C02996: PopAdLdVar
  loc_C02997: FLdPr Me
  loc_C0299A: MemLdRfVar from_stack_1.global_60
  loc_C0299D: LdPrVar
  loc_C0299F: LateMemCall
  loc_C029A5: LitVarStr var_94, " font-weight: bold;"
  loc_C029AA: PopAdLdVar
  loc_C029AB: FLdPr Me
  loc_C029AE: MemLdRfVar from_stack_1.global_60
  loc_C029B1: LdPrVar
  loc_C029B3: LateMemCall
  loc_C029B9: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C029BE: PopAdLdVar
  loc_C029BF: FLdPr Me
  loc_C029C2: MemLdRfVar from_stack_1.global_60
  loc_C029C5: LdPrVar
  loc_C029C7: LateMemCall
  loc_C029CD: LitVarStr var_94, "}"
  loc_C029D2: PopAdLdVar
  loc_C029D3: FLdPr Me
  loc_C029D6: MemLdRfVar from_stack_1.global_60
  loc_C029D9: LdPrVar
  loc_C029DB: LateMemCall
  loc_C029E1: LitVarStr var_94, ".LineaDato {"
  loc_C029E6: PopAdLdVar
  loc_C029E7: FLdPr Me
  loc_C029EA: MemLdRfVar from_stack_1.global_60
  loc_C029ED: LdPrVar
  loc_C029EF: LateMemCall
  loc_C029F5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C029FA: PopAdLdVar
  loc_C029FB: FLdPr Me
  loc_C029FE: MemLdRfVar from_stack_1.global_60
  loc_C02A01: LdPrVar
  loc_C02A03: LateMemCall
  loc_C02A09: LitVarStr var_94, " font-size: 10px;"
  loc_C02A0E: PopAdLdVar
  loc_C02A0F: FLdPr Me
  loc_C02A12: MemLdRfVar from_stack_1.global_60
  loc_C02A15: LdPrVar
  loc_C02A17: LateMemCall
  loc_C02A1D: LitVarStr var_94, "}"
  loc_C02A22: PopAdLdVar
  loc_C02A23: FLdPr Me
  loc_C02A26: MemLdRfVar from_stack_1.global_60
  loc_C02A29: LdPrVar
  loc_C02A2B: LateMemCall
  loc_C02A31: LitVarStr var_94, ".Totales {"
  loc_C02A36: PopAdLdVar
  loc_C02A37: FLdPr Me
  loc_C02A3A: MemLdRfVar from_stack_1.global_60
  loc_C02A3D: LdPrVar
  loc_C02A3F: LateMemCall
  loc_C02A45: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C02A4A: PopAdLdVar
  loc_C02A4B: FLdPr Me
  loc_C02A4E: MemLdRfVar from_stack_1.global_60
  loc_C02A51: LdPrVar
  loc_C02A53: LateMemCall
  loc_C02A59: LitVarStr var_94, " font-size: 12px;"
  loc_C02A5E: PopAdLdVar
  loc_C02A5F: FLdPr Me
  loc_C02A62: MemLdRfVar from_stack_1.global_60
  loc_C02A65: LdPrVar
  loc_C02A67: LateMemCall
  loc_C02A6D: LitVarStr var_94, " font-weight: bold;"
  loc_C02A72: PopAdLdVar
  loc_C02A73: FLdPr Me
  loc_C02A76: MemLdRfVar from_stack_1.global_60
  loc_C02A79: LdPrVar
  loc_C02A7B: LateMemCall
  loc_C02A81: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C02A86: PopAdLdVar
  loc_C02A87: FLdPr Me
  loc_C02A8A: MemLdRfVar from_stack_1.global_60
  loc_C02A8D: LdPrVar
  loc_C02A8F: LateMemCall
  loc_C02A95: LitVarStr var_94, "}"
  loc_C02A9A: PopAdLdVar
  loc_C02A9B: FLdPr Me
  loc_C02A9E: MemLdRfVar from_stack_1.global_60
  loc_C02AA1: LdPrVar
  loc_C02AA3: LateMemCall
  loc_C02AA9: LitVarStr var_94, ".SubTotales {"
  loc_C02AAE: PopAdLdVar
  loc_C02AAF: FLdPr Me
  loc_C02AB2: MemLdRfVar from_stack_1.global_60
  loc_C02AB5: LdPrVar
  loc_C02AB7: LateMemCall
  loc_C02ABD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C02AC2: PopAdLdVar
  loc_C02AC3: FLdPr Me
  loc_C02AC6: MemLdRfVar from_stack_1.global_60
  loc_C02AC9: LdPrVar
  loc_C02ACB: LateMemCall
  loc_C02AD1: LitVarStr var_94, " font-size: 10px;"
  loc_C02AD6: PopAdLdVar
  loc_C02AD7: FLdPr Me
  loc_C02ADA: MemLdRfVar from_stack_1.global_60
  loc_C02ADD: LdPrVar
  loc_C02ADF: LateMemCall
  loc_C02AE5: LitVarStr var_94, " font-weight: bold;"
  loc_C02AEA: PopAdLdVar
  loc_C02AEB: FLdPr Me
  loc_C02AEE: MemLdRfVar from_stack_1.global_60
  loc_C02AF1: LdPrVar
  loc_C02AF3: LateMemCall
  loc_C02AF9: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C02AFE: PopAdLdVar
  loc_C02AFF: FLdPr Me
  loc_C02B02: MemLdRfVar from_stack_1.global_60
  loc_C02B05: LdPrVar
  loc_C02B07: LateMemCall
  loc_C02B0D: LitVarStr var_94, "}"
  loc_C02B12: PopAdLdVar
  loc_C02B13: FLdPr Me
  loc_C02B16: MemLdRfVar from_stack_1.global_60
  loc_C02B19: LdPrVar
  loc_C02B1B: LateMemCall
  loc_C02B21: LitVarStr var_94, ".Tilde {"
  loc_C02B26: PopAdLdVar
  loc_C02B27: FLdPr Me
  loc_C02B2A: MemLdRfVar from_stack_1.global_60
  loc_C02B2D: LdPrVar
  loc_C02B2F: LateMemCall
  loc_C02B35: LitVarStr var_94, " font-family: Wingdings;"
  loc_C02B3A: PopAdLdVar
  loc_C02B3B: FLdPr Me
  loc_C02B3E: MemLdRfVar from_stack_1.global_60
  loc_C02B41: LdPrVar
  loc_C02B43: LateMemCall
  loc_C02B49: LitVarStr var_94, " font-size: 12px;"
  loc_C02B4E: PopAdLdVar
  loc_C02B4F: FLdPr Me
  loc_C02B52: MemLdRfVar from_stack_1.global_60
  loc_C02B55: LdPrVar
  loc_C02B57: LateMemCall
  loc_C02B5D: LitVarStr var_94, "}"
  loc_C02B62: PopAdLdVar
  loc_C02B63: FLdPr Me
  loc_C02B66: MemLdRfVar from_stack_1.global_60
  loc_C02B69: LdPrVar
  loc_C02B6B: LateMemCall
  loc_C02B71: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C02B76: PopAdLdVar
  loc_C02B77: FLdPr Me
  loc_C02B7A: MemLdRfVar from_stack_1.global_60
  loc_C02B7D: LdPrVar
  loc_C02B7F: LateMemCall
  loc_C02B85: LitVarStr var_94, "</style>"
  loc_C02B8A: PopAdLdVar
  loc_C02B8B: FLdPr Me
  loc_C02B8E: MemLdRfVar from_stack_1.global_60
  loc_C02B91: LdPrVar
  loc_C02B93: LateMemCall
  loc_C02B99: LitI4 0
  loc_C02B9E: FStStrCopy var_AC
  loc_C02BA1: FLdRfVar var_AC
  loc_C02BA4: LitI4 0
  loc_C02BA9: FStStrCopy var_A8
  loc_C02BAC: FLdRfVar var_A8
  loc_C02BAF: LitI2_Byte &HFF
  loc_C02BB1: PopTmpLdAd2 var_BE
  loc_C02BB4: FLdPr Me
  loc_C02BB7: MemLdRfVar from_stack_1.global_60
  loc_C02BBA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C02BBF: FFreeStr var_A8 = ""
  loc_C02BC6: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C02BCB: PopAdLdVar
  loc_C02BCC: FLdPr Me
  loc_C02BCF: MemLdRfVar from_stack_1.global_60
  loc_C02BD2: LdPrVar
  loc_C02BD4: LateMemCall
  loc_C02BDA: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C02BDF: PopAdLdVar
  loc_C02BE0: FLdPr Me
  loc_C02BE3: MemLdRfVar from_stack_1.global_60
  loc_C02BE6: LdPrVar
  loc_C02BE8: LateMemCall
  loc_C02BEE: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_C02BF3: PopAdLdVar
  loc_C02BF4: FLdPr Me
  loc_C02BF7: MemLdRfVar from_stack_1.global_60
  loc_C02BFA: LdPrVar
  loc_C02BFC: LateMemCall
  loc_C02C02: FLdPr Me
  loc_C02C05: MemLdI2 bLogos
  loc_C02C08: BranchF loc_C02C51
  loc_C02C0B: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C02C0E: LitI2_Byte &H5F
  loc_C02C10: CStrUI1
  loc_C02C12: FStStrNoPop var_A8
  loc_C02C15: ConcatStr
  loc_C02C16: FStStrNoPop var_AC
  loc_C02C19: LitStr """ height="""
  loc_C02C1C: ConcatStr
  loc_C02C1D: FStStrNoPop var_C4
  loc_C02C20: LitI2_Byte &H3C
  loc_C02C22: CStrUI1
  loc_C02C24: FStStrNoPop var_C8
  loc_C02C27: ConcatStr
  loc_C02C28: FStStrNoPop var_CC
  loc_C02C2B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_C02C2E: ConcatStr
  loc_C02C2F: CVarStr var_BC
  loc_C02C32: PopAdLdVar
  loc_C02C33: FLdPr Me
  loc_C02C36: MemLdRfVar from_stack_1.global_60
  loc_C02C39: LdPrVar
  loc_C02C3B: LateMemCall
  loc_C02C41: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_C02C4E: FFree1Var var_BC = ""
  loc_C02C51: LitStr "    <br>"
  loc_C02C54: LitStr "Municipalidad de Guaymallén"
  loc_C02C57: ConcatStr
  loc_C02C58: FStStrNoPop var_A8
  loc_C02C5B: LitStr "</p>"
  loc_C02C5E: ConcatStr
  loc_C02C5F: CVarStr var_BC
  loc_C02C62: PopAdLdVar
  loc_C02C63: FLdPr Me
  loc_C02C66: MemLdRfVar from_stack_1.global_60
  loc_C02C69: LdPrVar
  loc_C02C6B: LateMemCall
  loc_C02C71: FFree1Str var_A8
  loc_C02C74: FFree1Var var_BC = ""
  loc_C02C77: LitStr "    <p>"
  loc_C02C7A: FLdRfVar var_A8
  loc_C02C7D: FLdPr Me
  loc_C02C80:  = Me.Caption
  loc_C02C85: ILdRf var_A8
  loc_C02C88: ConcatStr
  loc_C02C89: FStStrNoPop var_AC
  loc_C02C8C: LitStr "</p></th>"
  loc_C02C8F: ConcatStr
  loc_C02C90: CVarStr var_BC
  loc_C02C93: PopAdLdVar
  loc_C02C94: FLdPr Me
  loc_C02C97: MemLdRfVar from_stack_1.global_60
  loc_C02C9A: LdPrVar
  loc_C02C9C: LateMemCall
  loc_C02CA2: FFreeStr var_A8 = ""
  loc_C02CA9: FFree1Var var_BC = ""
  loc_C02CAC: LitVarStr var_94, "  </tr>"
  loc_C02CB1: PopAdLdVar
  loc_C02CB2: FLdPr Me
  loc_C02CB5: MemLdRfVar from_stack_1.global_60
  loc_C02CB8: LdPrVar
  loc_C02CBA: LateMemCall
  loc_C02CC0: LitVarStr var_94, "  <tr>"
  loc_C02CC5: PopAdLdVar
  loc_C02CC6: FLdPr Me
  loc_C02CC9: MemLdRfVar from_stack_1.global_60
  loc_C02CCC: LdPrVar
  loc_C02CCE: LateMemCall
  loc_C02CD4: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><hr></th>"
  loc_C02CD9: PopAdLdVar
  loc_C02CDA: FLdPr Me
  loc_C02CDD: MemLdRfVar from_stack_1.global_60
  loc_C02CE0: LdPrVar
  loc_C02CE2: LateMemCall
  loc_C02CE8: LitVarStr var_94, "  </tr>"
  loc_C02CED: PopAdLdVar
  loc_C02CEE: FLdPr Me
  loc_C02CF1: MemLdRfVar from_stack_1.global_60
  loc_C02CF4: LdPrVar
  loc_C02CF6: LateMemCall
  loc_C02CFC: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C02D01: PopAdLdVar
  loc_C02D02: FLdPr Me
  loc_C02D05: MemLdRfVar from_stack_1.global_60
  loc_C02D08: LdPrVar
  loc_C02D0A: LateMemCall
  loc_C02D10: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_C02D13: FLdPr Me
  loc_C02D16: VCallAd Control_ID_FealBoapDesdeMsk
  loc_C02D19: FStAdFunc var_D0
  loc_C02D1C: FLdPr var_D0
  loc_C02D1F: LateIdLdVar var_BC DispID_15 0
  loc_C02D26: CStrVarTmp
  loc_C02D27: FStStrNoPop var_A8
  loc_C02D2A: ConcatStr
  loc_C02D2B: FStStrNoPop var_AC
  loc_C02D2E: LitStr "<br>"
  loc_C02D31: ConcatStr
  loc_C02D32: CVarStr var_E0
  loc_C02D35: PopAdLdVar
  loc_C02D36: FLdPr Me
  loc_C02D39: MemLdRfVar from_stack_1.global_60
  loc_C02D3C: LdPrVar
  loc_C02D3E: LateMemCall
  loc_C02D44: FFreeStr var_A8 = ""
  loc_C02D4B: FFree1Ad var_D0
  loc_C02D4E: FFreeVar var_BC = ""
  loc_C02D55: LitStr "                                      <strong>Hasta: </strong>"
  loc_C02D58: FLdPr Me
  loc_C02D5B: VCallAd Control_ID_FealBoapHastaMsk
  loc_C02D5E: FStAdFunc var_D0
  loc_C02D61: FLdPr var_D0
  loc_C02D64: LateIdLdVar var_BC DispID_15 0
  loc_C02D6B: CStrVarTmp
  loc_C02D6C: FStStrNoPop var_A8
  loc_C02D6F: ConcatStr
  loc_C02D70: FStStrNoPop var_AC
  loc_C02D73: LitStr "</td>"
  loc_C02D76: ConcatStr
  loc_C02D77: CVarStr var_E0
  loc_C02D7A: PopAdLdVar
  loc_C02D7B: FLdPr Me
  loc_C02D7E: MemLdRfVar from_stack_1.global_60
  loc_C02D81: LdPrVar
  loc_C02D83: LateMemCall
  loc_C02D89: FFreeStr var_A8 = ""
  loc_C02D90: FFree1Ad var_D0
  loc_C02D93: FFreeVar var_BC = ""
  loc_C02D9A: LitVarStr var_94, "    <td align=""right"" valign=""top"">"
  loc_C02D9F: PopAdLdVar
  loc_C02DA0: FLdPr Me
  loc_C02DA3: MemLdRfVar from_stack_1.global_60
  loc_C02DA6: LdPrVar
  loc_C02DA8: LateMemCall
  loc_C02DAE: LitVarStr var_94, "  <table width=""250"" border=""1"" align=""right"" class=""LineaDato"" cellpadding=""1"" cellspacing=""0"">"
  loc_C02DB3: PopAdLdVar
  loc_C02DB4: FLdPr Me
  loc_C02DB7: MemLdRfVar from_stack_1.global_60
  loc_C02DBA: LdPrVar
  loc_C02DBC: LateMemCall
  loc_C02DC2: LitVarStr var_94, "     <tr><td colspan=""2"" align=""center"" class=""Encabezado"">Referencia</td></tr>"
  loc_C02DC7: PopAdLdVar
  loc_C02DC8: FLdPr Me
  loc_C02DCB: MemLdRfVar from_stack_1.global_60
  loc_C02DCE: LdPrVar
  loc_C02DD0: LateMemCall
  loc_C02DD6: LitStr "     <tr><td width=""20" & Chr(37) & """>"
  loc_C02DD9: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C02DDC: ConcatStr
  loc_C02DDD: FStStrNoPop var_A8
  loc_C02DE0: LitStr "</td><td align=""left"">Sin Facilidad</td></tr>"
  loc_C02DE3: ConcatStr
  loc_C02DE4: CVarStr var_BC
  loc_C02DE7: PopAdLdVar
  loc_C02DE8: FLdPr Me
  loc_C02DEB: MemLdRfVar from_stack_1.global_60
  loc_C02DEE: LdPrVar
  loc_C02DF0: LateMemCall
  loc_C02DF6: FFree1Str var_A8
  loc_C02DF9: FFree1Var var_BC = ""
  loc_C02DFC: LitStr "     <tr><td class=""Tilde"" align=""center"">"
  loc_C02DFF: LitStr "<span style=""color:#FF0000"">&yacute;</span>"
  loc_C02E02: ConcatStr
  loc_C02E03: FStStrNoPop var_A8
  loc_C02E06: LitStr "</td><td align=""left"">Con Facilidad</td></tr>"
  loc_C02E09: ConcatStr
  loc_C02E0A: CVarStr var_BC
  loc_C02E0D: PopAdLdVar
  loc_C02E0E: FLdPr Me
  loc_C02E11: MemLdRfVar from_stack_1.global_60
  loc_C02E14: LdPrVar
  loc_C02E16: LateMemCall
  loc_C02E1C: FFree1Str var_A8
  loc_C02E1F: FFree1Var var_BC = ""
  loc_C02E22: LitStr "     <tr><td class=""Tilde"" align=""center"">"
  loc_C02E25: LitStr "&thorn;"
  loc_C02E28: ConcatStr
  loc_C02E29: FStStrNoPop var_A8
  loc_C02E2C: LitStr "</td><td align=""left"">Facilidad Cancelada</td></tr>"
  loc_C02E2F: ConcatStr
  loc_C02E30: CVarStr var_BC
  loc_C02E33: PopAdLdVar
  loc_C02E34: FLdPr Me
  loc_C02E37: MemLdRfVar from_stack_1.global_60
  loc_C02E3A: LdPrVar
  loc_C02E3C: LateMemCall
  loc_C02E42: FFree1Str var_A8
  loc_C02E45: FFree1Var var_BC = ""
  loc_C02E48: LitVarStr var_94, "  </table>"
  loc_C02E4D: PopAdLdVar
  loc_C02E4E: FLdPr Me
  loc_C02E51: MemLdRfVar from_stack_1.global_60
  loc_C02E54: LdPrVar
  loc_C02E56: LateMemCall
  loc_C02E5C: LitVarStr var_94, "  </td></tr>"
  loc_C02E61: PopAdLdVar
  loc_C02E62: FLdPr Me
  loc_C02E65: MemLdRfVar from_stack_1.global_60
  loc_C02E68: LdPrVar
  loc_C02E6A: LateMemCall
  loc_C02E70: LitVarStr var_94, "</table>"
  loc_C02E75: PopAdLdVar
  loc_C02E76: FLdPr Me
  loc_C02E79: MemLdRfVar from_stack_1.global_60
  loc_C02E7C: LdPrVar
  loc_C02E7E: LateMemCall
  loc_C02E84: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C02E89: PopAdLdVar
  loc_C02E8A: FLdPr Me
  loc_C02E8D: MemLdRfVar from_stack_1.global_60
  loc_C02E90: LdPrVar
  loc_C02E92: LateMemCall
  loc_C02E98: LitVarStr var_94, "  <thead>"
  loc_C02E9D: PopAdLdVar
  loc_C02E9E: FLdPr Me
  loc_C02EA1: MemLdRfVar from_stack_1.global_60
  loc_C02EA4: LdPrVar
  loc_C02EA6: LateMemCall
  loc_C02EAC: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C02EB1: PopAdLdVar
  loc_C02EB2: FLdPr Me
  loc_C02EB5: MemLdRfVar from_stack_1.global_60
  loc_C02EB8: LdPrVar
  loc_C02EBA: LateMemCall
  loc_C02EC0: LitVarStr var_94, "    <th rowspan=""2"">Fecha </th>"
  loc_C02EC5: PopAdLdVar
  loc_C02EC6: FLdPr Me
  loc_C02EC9: MemLdRfVar from_stack_1.global_60
  loc_C02ECC: LdPrVar
  loc_C02ECE: LateMemCall
  loc_C02ED4: LitVarStr var_94, "    <th rowspan=""2"">O.</th>"
  loc_C02ED9: PopAdLdVar
  loc_C02EDA: FLdPr Me
  loc_C02EDD: MemLdRfVar from_stack_1.global_60
  loc_C02EE0: LdPrVar
  loc_C02EE2: LateMemCall
  loc_C02EE8: LitVarStr var_94, "    <th rowspan=""2"">Cuenta</th>"
  loc_C02EED: PopAdLdVar
  loc_C02EEE: FLdPr Me
  loc_C02EF1: MemLdRfVar from_stack_1.global_60
  loc_C02EF4: LdPrVar
  loc_C02EF6: LateMemCall
  loc_C02EFC: LitVarStr var_94, "    <th rowspan=""2"">Boleta Apre.</th>"
  loc_C02F01: PopAdLdVar
  loc_C02F02: FLdPr Me
  loc_C02F05: MemLdRfVar from_stack_1.global_60
  loc_C02F08: LdPrVar
  loc_C02F0A: LateMemCall
  loc_C02F10: LitVarStr var_94, "    <th rowspan=""2"">Juicio</th>"
  loc_C02F15: PopAdLdVar
  loc_C02F16: FLdPr Me
  loc_C02F19: MemLdRfVar from_stack_1.global_60
  loc_C02F1C: LdPrVar
  loc_C02F1E: LateMemCall
  loc_C02F24: LitVarStr var_94, "    <th rowspan=""2"">Apellido y Nombre</th>"
  loc_C02F29: PopAdLdVar
  loc_C02F2A: FLdPr Me
  loc_C02F2D: MemLdRfVar from_stack_1.global_60
  loc_C02F30: LdPrVar
  loc_C02F32: LateMemCall
  loc_C02F38: LitVarStr var_94, "    <th rowspan=""2"">S</th>"
  loc_C02F3D: PopAdLdVar
  loc_C02F3E: FLdPr Me
  loc_C02F41: MemLdRfVar from_stack_1.global_60
  loc_C02F44: LdPrVar
  loc_C02F46: LateMemCall
  loc_C02F4C: LitVarStr var_94, "    <th rowspan=""2"">T</th>"
  loc_C02F51: PopAdLdVar
  loc_C02F52: FLdPr Me
  loc_C02F55: MemLdRfVar from_stack_1.global_60
  loc_C02F58: LdPrVar
  loc_C02F5A: LateMemCall
  loc_C02F60: LitVarStr var_94, "    <th rowspan=""2"">Tot. Apremio</th>"
  loc_C02F65: PopAdLdVar
  loc_C02F66: FLdPr Me
  loc_C02F69: MemLdRfVar from_stack_1.global_60
  loc_C02F6C: LdPrVar
  loc_C02F6E: LateMemCall
  loc_C02F74: LitVarStr var_94, "    <th rowspan=""2"">In</th>"
  loc_C02F79: PopAdLdVar
  loc_C02F7A: FLdPr Me
  loc_C02F7D: MemLdRfVar from_stack_1.global_60
  loc_C02F80: LdPrVar
  loc_C02F82: LateMemCall
  loc_C02F88: LitVarStr var_94, "    <th rowspan=""2"">Comis. Adm.</th>"
  loc_C02F8D: PopAdLdVar
  loc_C02F8E: FLdPr Me
  loc_C02F91: MemLdRfVar from_stack_1.global_60
  loc_C02F94: LdPrVar
  loc_C02F96: LateMemCall
  loc_C02F9C: LitVarStr var_94, "    <th rowspan=""2"">I.V.A. C.Adm.</th>"
  loc_C02FA1: PopAdLdVar
  loc_C02FA2: FLdPr Me
  loc_C02FA5: MemLdRfVar from_stack_1.global_60
  loc_C02FA8: LdPrVar
  loc_C02FAA: LateMemCall
  loc_C02FB0: LitVarStr var_94, "    <th rowspan=""2"">Honorarios<br>Recaudador</th>"
  loc_C02FB5: PopAdLdVar
  loc_C02FB6: FLdPr Me
  loc_C02FB9: MemLdRfVar from_stack_1.global_60
  loc_C02FBC: LdPrVar
  loc_C02FBE: LateMemCall
  loc_C02FC4: LitVarStr var_94, "    <th rowspan=""2"">I.V.A<br>Recaudador</th>"
  loc_C02FC9: PopAdLdVar
  loc_C02FCA: FLdPr Me
  loc_C02FCD: MemLdRfVar from_stack_1.global_60
  loc_C02FD0: LdPrVar
  loc_C02FD2: LateMemCall
  loc_C02FD8: LitVarStr var_94, "    <th rowspan=""2"">Mov. Reca</th>"
  loc_C02FDD: PopAdLdVar
  loc_C02FDE: FLdPr Me
  loc_C02FE1: MemLdRfVar from_stack_1.global_60
  loc_C02FE4: LdPrVar
  loc_C02FE6: LateMemCall
  loc_C02FEC: LitVarStr var_94, "    <th rowspan=""2"">Cód<br>O.J</th>"
  loc_C02FF1: PopAdLdVar
  loc_C02FF2: FLdPr Me
  loc_C02FF5: MemLdRfVar from_stack_1.global_60
  loc_C02FF8: LdPrVar
  loc_C02FFA: LateMemCall
  loc_C03000: LitVarStr var_94, "    <th rowspan=""2"">Honorarios<br>Of. de Justicia</th>"
  loc_C03005: PopAdLdVar
  loc_C03006: FLdPr Me
  loc_C03009: MemLdRfVar from_stack_1.global_60
  loc_C0300C: LdPrVar
  loc_C0300E: LateMemCall
  loc_C03014: LitVarStr var_94, "    <th rowspan=""2"">I.V.A<br>Of. Jus.</th>"
  loc_C03019: PopAdLdVar
  loc_C0301A: FLdPr Me
  loc_C0301D: MemLdRfVar from_stack_1.global_60
  loc_C03020: LdPrVar
  loc_C03022: LateMemCall
  loc_C03028: LitVarStr var_94, "    <th rowspan=""2"">Mov. Ofic.</th>"
  loc_C0302D: PopAdLdVar
  loc_C0302E: FLdPr Me
  loc_C03031: MemLdRfVar from_stack_1.global_60
  loc_C03034: LdPrVar
  loc_C03036: LateMemCall
  loc_C0303C: LitVarStr var_94, "    <th rowspan=""2"">Caja Jubil</th>"
  loc_C03041: PopAdLdVar
  loc_C03042: FLdPr Me
  loc_C03045: MemLdRfVar from_stack_1.global_60
  loc_C03048: LdPrVar
  loc_C0304A: LateMemCall
  loc_C03050: LitVarStr var_94, "    <th rowspan=""2"">Tasa Just</th>"
  loc_C03055: PopAdLdVar
  loc_C03056: FLdPr Me
  loc_C03059: MemLdRfVar from_stack_1.global_60
  loc_C0305C: LdPrVar
  loc_C0305E: LateMemCall
  loc_C03064: LitVarStr var_94, "    <th rowspan=""2"">Col. Abog</th>"
  loc_C03069: PopAdLdVar
  loc_C0306A: FLdPr Me
  loc_C0306D: MemLdRfVar from_stack_1.global_60
  loc_C03070: LdPrVar
  loc_C03072: LateMemCall
  loc_C03078: LitVarStr var_94, "    <th rowspan=""2"">Total</th>"
  loc_C0307D: PopAdLdVar
  loc_C0307E: FLdPr Me
  loc_C03081: MemLdRfVar from_stack_1.global_60
  loc_C03084: LdPrVar
  loc_C03086: LateMemCall
  loc_C0308C: LitVarStr var_94, "    <th rowspan=""2"">Facil.</th>"
  loc_C03091: PopAdLdVar
  loc_C03092: FLdPr Me
  loc_C03095: MemLdRfVar from_stack_1.global_60
  loc_C03098: LdPrVar
  loc_C0309A: LateMemCall
  loc_C030A0: LitVarStr var_94, "  </tr>"
  loc_C030A5: PopAdLdVar
  loc_C030A6: FLdPr Me
  loc_C030A9: MemLdRfVar from_stack_1.global_60
  loc_C030AC: LdPrVar
  loc_C030AE: LateMemCall
  loc_C030B4: LitVarStr var_94, "  </thead>"
  loc_C030B9: PopAdLdVar
  loc_C030BA: FLdPr Me
  loc_C030BD: MemLdRfVar from_stack_1.global_60
  loc_C030C0: LdPrVar
  loc_C030C2: LateMemCall
  loc_C030C8: ExitProcHresult
  loc_C030C9: CI4R8
  loc_C030CA: FStFPR8 arg_5803
End Function

Private Function Proc_333_26_A0CE58() 'A0CE58
  'Data Table: 48ECD0
  loc_A0CE18: LitVarStr var_94, "</table>"
  loc_A0CE1D: PopAdLdVar
  loc_A0CE1E: FLdPr Me
  loc_A0CE21: MemLdRfVar from_stack_1.global_60
  loc_A0CE24: LdPrVar
  loc_A0CE26: LateMemCall
  loc_A0CE2C: LitVarStr var_94, "</body>"
  loc_A0CE31: PopAdLdVar
  loc_A0CE32: FLdPr Me
  loc_A0CE35: MemLdRfVar from_stack_1.global_60
  loc_A0CE38: LdPrVar
  loc_A0CE3A: LateMemCall
  loc_A0CE40: LitVarStr var_94, "</html>"
  loc_A0CE45: PopAdLdVar
  loc_A0CE46: FLdPr Me
  loc_A0CE49: MemLdRfVar from_stack_1.global_60
  loc_A0CE4C: LdPrVar
  loc_A0CE4E: LateMemCall
  loc_A0CE54: ExitProcHresult
  loc_A0CE55: CStrVarTmp
End Function
