VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeCreditosyDebitosManuales
  Caption = "Listado de Créditos y Débitos Manuales"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeCreditosyDebitosManuales.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 12048
  ClientHeight = 5880
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
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4200
    Width = 4095
    Height = 1215
    TabIndex = 23
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 25
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 24
    End
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 4200
    Width = 3255
    Height = 1215
    TabIndex = 26
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 31
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 27
    End
  End
  Begin MSComctlLib.ProgressBar pbar
    Left = 120
    Top = 3720
    Width = 11775
    Height = 270
    Visible = 0   'False
    TabIndex = 22
    OleObjectBlob = "rptListadodeCreditosyDebitosManuales.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5625
    Width = 12045
    Height = 255
    TabIndex = 30
    OleObjectBlob = "rptListadodeCreditosyDebitosManuales.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 10440
    Top = 4440
    Width = 855
    Height = 735
    TabIndex = 28
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
    Picture = "rptListadodeCreditosyDebitosManuales.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeCreditosyDebitosManuales.frx":0C04
    Left = 11520
    Top = 4560
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11775
    Height = 3615
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
    Begin VB.Frame Frame4
      Caption = "Tipo"
      Left = 240
      Top = 2520
      Width = 11415
      Height = 855
      TabIndex = 16
      Begin VB.OptionButton DevolucionOpt
        Caption = "Devol. de Ingr"
        Left = 9360
        Top = 360
        Width = 1935
        Height = 300
        TabIndex = 32
      End
      Begin VB.OptionButton ExenOpt
        Caption = "Exenciones"
        Left = 5880
        Top = 360
        Width = 1695
        Height = 300
        TabIndex = 20
      End
      Begin VB.OptionButton CondOpt
        Caption = "Condonaciones"
        Left = 3840
        Top = 360
        Width = 2055
        Height = 300
        TabIndex = 18
      End
      Begin VB.OptionButton PresOpt
        Caption = "Prescripciones"
        Left = 1920
        Top = 360
        Width = 1935
        Height = 300
        TabIndex = 19
      End
      Begin VB.OptionButton DebiOpt
        Caption = "Debitos Man"
        Left = 7560
        Top = 360
        Width = 1815
        Height = 300
        TabIndex = 21
      End
      Begin VB.OptionButton CredOpt
        Caption = "Créditos Man."
        Left = 120
        Top = 360
        Width = 2295
        Height = 300
        TabIndex = 17
      End
    End
    Begin VB.Frame FechaFra
      Caption = "Fecha"
      Left = 240
      Top = 840
      Width = 9375
      Height = 1575
      TabIndex = 5
      Begin VB.OptionButton OptPeriodo
        Caption = "Por Periodo"
        Left = 6720
        Top = 240
        Width = 1575
        Height = 300
        TabIndex = 7
      End
      Begin VB.OptionButton OptFecha
        Caption = "Por Fecha"
        Left = 2400
        Top = 240
        Width = 1575
        Height = 300
        TabIndex = 6
      End
      Begin MSMask.MaskEdBox FealCtctDesdeMsk
        Left = 2400
        Top = 600
        Width = 1335
        Height = 360
        TabIndex = 9
        OleObjectBlob = "rptListadodeCreditosyDebitosManuales.frx":0C68
      End
      Begin MSMask.MaskEdBox FealCtctHastaMsk
        Left = 2400
        Top = 1080
        Width = 1335
        Height = 360
        TabIndex = 13
        OleObjectBlob = "rptListadodeCreditosyDebitosManuales.frx":0D18
      End
      Begin MSMask.MaskEdBox PeriCtctDesdeMsk
        Left = 7200
        Top = 600
        Width = 735
        Height = 360
        TabIndex = 11
        OleObjectBlob = "rptListadodeCreditosyDebitosManuales.frx":0DC8
      End
      Begin MSMask.MaskEdBox PeriCtctHastaMsk
        Left = 7200
        Top = 1080
        Width = 735
        Height = 360
        TabIndex = 15
        OleObjectBlob = "rptListadodeCreditosyDebitosManuales.frx":0E58
      End
      Begin VB.Label Label3
        Caption = "Desde:"
        Left = 6360
        Top = 600
        Width = 765
        Height = 300
        TabIndex = 10
        AutoSize = -1  'True
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 6360
        Top = 1080
        Width = 705
        Height = 300
        TabIndex = 14
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 1620
        Top = 1080
        Width = 705
        Height = 300
        TabIndex = 12
        AutoSize = -1  'True
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 1560
        Top = 600
        Width = 765
        Height = 300
        TabIndex = 8
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9840
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 4
    End
    Begin MSMask.MaskEdBox CodiOficMsk
      Left = 2640
      Top = 360
      Width = 375
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptListadodeCreditosyDebitosManuales.frx":0EE8
      DataField = "CodiTise"
    End
    Begin VB.Label Label1
      Caption = "Oficina:"
      Left = 1800
      Top = 360
      Width = 795
      Height = 300
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label DetaOficLbl
      ForeColor = &HFF0000&
      Left = 3120
      Top = 360
      Width = 5295
      Height = 360
      TabIndex = 3
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10800
    Top = 4560
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 29
    OleObjectBlob = "rptListadodeCreditosyDebitosManuales.frx":0F72
  End
End

Attribute VB_Name = "rptListadodeCreditosyDebitosManuales"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560654
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_2_00565B04
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_3_00565B40
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_4_00565B78
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub cmdNueva_Click() 'AEF3C8
  'Data Table: 4F08D0
  loc_AEF230: LitI2_Byte 0
  loc_AEF232: FLdPr Me
  loc_AEF235: MemStI2 bGenerado
  loc_AEF238: LitI2_Byte &HFF
  loc_AEF23A: FLdPr Me
  loc_AEF23D: MemStI2 bLogos
  loc_AEF240: LitI2_Byte 0
  loc_AEF242: ILdRf Me
  loc_AEF245: CastAd
  loc_AEF248: FStAdFunc var_88
  loc_AEF24B: FLdRfVar var_88
  loc_AEF24E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AEF253: FFree1Ad var_88
  loc_AEF256: LitI2_Byte 0
  loc_AEF258: CStrUI1
  loc_AEF25A: CVarStr var_A0
  loc_AEF25D: PopAdLdVar
  loc_AEF25E: FLdPr Me
  loc_AEF261: VCallAd Control_ID_CodiOficMsk
  loc_AEF264: FStAdFunc var_88
  loc_AEF267: FLdPr var_88
  loc_AEF26A: LateIdSt
  loc_AEF26F: FFree1Ad var_88
  loc_AEF272: FFree1Var var_A0 = ""
  loc_AEF275: LitStr "TODAS LAS OFICINAS"
  loc_AEF278: FLdPr Me
  loc_AEF27B: VCallAd Control_ID_DetaOficLbl
  loc_AEF27E: FStAdFunc var_88
  loc_AEF281: FLdPr var_88
  loc_AEF284: Me.Caption = from_stack_1
  loc_AEF289: FFree1Ad var_88
  loc_AEF28C: LitI2_Byte 0
  loc_AEF28E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AEF293: FStFPR8 var_90
  loc_AEF296: FLdRfVar var_90
  loc_AEF299: CVarRef
  loc_AEF29E: FLdRfVar var_A0
  loc_AEF2A1: ImpAdCallFPR4  = Year()
  loc_AEF2A6: FLdRfVar var_90
  loc_AEF2A9: CVarRef
  loc_AEF2AE: FLdRfVar var_D0
  loc_AEF2B1: ImpAdCallFPR4  = Month()
  loc_AEF2B6: LitI2_Byte 1
  loc_AEF2B8: FLdRfVar var_D0
  loc_AEF2BB: CI2Var
  loc_AEF2BC: FLdRfVar var_A0
  loc_AEF2BF: CI2Var
  loc_AEF2C0: FLdRfVar var_E0
  loc_AEF2C3: ImpAdCallFPR4  = DateSerial(, , )
  loc_AEF2C8: FLdRfVar var_E0
  loc_AEF2CB: CStrVarTmp
  loc_AEF2CC: CVarStr var_F0
  loc_AEF2CF: PopAdLdVar
  loc_AEF2D0: FLdPr Me
  loc_AEF2D3: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AEF2D6: FStAdFunc var_88
  loc_AEF2D9: FLdPr var_88
  loc_AEF2DC: LateIdSt
  loc_AEF2E1: FFree1Ad var_88
  loc_AEF2E4: FFreeVar var_A0 = "": var_D0 = "": var_E0 = ""
  loc_AEF2EF: FLdFPR8 var_90
  loc_AEF2F2: CStrDate
  loc_AEF2F4: CVarStr var_A0
  loc_AEF2F7: PopAdLdVar
  loc_AEF2F8: FLdPr Me
  loc_AEF2FB: VCallAd Control_ID_FealCtctHastaMsk
  loc_AEF2FE: FStAdFunc var_88
  loc_AEF301: FLdPr var_88
  loc_AEF304: LateIdSt
  loc_AEF309: FFree1Ad var_88
  loc_AEF30C: FFree1Var var_A0 = ""
  loc_AEF30F: ImpAdLdI2 MemVar_D93034
  loc_AEF312: CStrUI1
  loc_AEF314: CVarStr var_A0
  loc_AEF317: PopAdLdVar
  loc_AEF318: FLdPr Me
  loc_AEF31B: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_AEF31E: FStAdFunc var_88
  loc_AEF321: FLdPr var_88
  loc_AEF324: LateIdSt
  loc_AEF329: FFree1Ad var_88
  loc_AEF32C: FFree1Var var_A0 = ""
  loc_AEF32F: ImpAdLdI2 MemVar_D93034
  loc_AEF332: CStrUI1
  loc_AEF334: CVarStr var_A0
  loc_AEF337: PopAdLdVar
  loc_AEF338: FLdPr Me
  loc_AEF33B: VCallAd Control_ID_PeriCtctHastaMsk
  loc_AEF33E: FStAdFunc var_88
  loc_AEF341: FLdPr var_88
  loc_AEF344: LateIdSt
  loc_AEF349: FFree1Ad var_88
  loc_AEF34C: FFree1Var var_A0 = ""
  loc_AEF34F: LitI2_Byte &HFF
  loc_AEF351: FLdPr Me
  loc_AEF354: VCallAd Control_ID_OptFecha
  loc_AEF357: FStAdFunc var_88
  loc_AEF35A: FLdPr var_88
  loc_AEF35D: Me.Value = from_stack_1b
  loc_AEF362: FFree1Ad var_88
  loc_AEF365: LitVar_TRUE var_B0
  loc_AEF368: PopAdLdVar
  loc_AEF369: FLdPr Me
  loc_AEF36C: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AEF36F: FStAdFunc var_88
  loc_AEF372: FLdPr var_88
  loc_AEF375: LateIdSt
  loc_AEF37A: FFree1Ad var_88
  loc_AEF37D: LitVar_TRUE var_B0
  loc_AEF380: PopAdLdVar
  loc_AEF381: FLdPr Me
  loc_AEF384: VCallAd Control_ID_FealCtctHastaMsk
  loc_AEF387: FStAdFunc var_88
  loc_AEF38A: FLdPr var_88
  loc_AEF38D: LateIdSt
  loc_AEF392: FFree1Ad var_88
  loc_AEF395: LitI2_Byte &HFF
  loc_AEF397: FLdPr Me
  loc_AEF39A: VCallAd Control_ID_CredOpt
  loc_AEF39D: FStAdFunc var_88
  loc_AEF3A0: FLdPr var_88
  loc_AEF3A3: Me.Value = from_stack_1b
  loc_AEF3A8: FFree1Ad var_88
  loc_AEF3AB: Call HabilitarCriterio()
  loc_AEF3B0: ILdRf Me
  loc_AEF3B3: CastAd
  loc_AEF3B6: FStAdFunc var_88
  loc_AEF3B9: FLdRfVar var_88
  loc_AEF3BC: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AEF3C1: FFree1Ad var_88
  loc_AEF3C4: ExitProcHresult
End Sub

Private Sub FealCtctDesdeMsk_UnknownEvent_0 '9C6F20
  'Data Table: 4F08D0
  loc_9C6F0C: FLdPr Me
  loc_9C6F0F: VCallAd Control_ID_FealCtctDesdeMsk
  loc_9C6F12: CVarAd
  loc_9C6F16: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6F1B: FFree1Var var_94 = ""
  loc_9C6F1E: ExitProcHresult
End Sub

Private Function FealCtctDesdeMsk_UnknownEvent_8(arg_C) 'A63DE0
  'Data Table: 4F08D0
  loc_A63D84: FLdPr Me
  loc_A63D87: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A63D8A: FStAdFunc var_88
  loc_A63D8D: FLdPr var_88
  loc_A63D90: LateIdLdVar var_98 DispID_15 0
  loc_A63D97: CStrVarTmp
  loc_A63D98: FStStrNoPop var_9C
  loc_A63D9B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A63DA0: FStStrNoPop var_A0
  loc_A63DA3: FLdPr Me
  loc_A63DA6: MemStStrCopy
  loc_A63DAA: FFreeStr var_9C = ""
  loc_A63DB1: FFree1Ad var_88
  loc_A63DB4: FFree1Var var_98 = ""
  loc_A63DB7: FLdPr Me
  loc_A63DBA: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A63DBD: FStAdFuncNoPop
  loc_A63DC0: CastAd
  loc_A63DC3: FStAdFunc var_A4
  loc_A63DC6: FLdRfVar var_A4
  loc_A63DC9: FLdPr Me
  loc_A63DCC: MemLdStr global_104
  loc_A63DCF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63DD4: IStI2 arg_C
  loc_A63DD7: FFreeAd var_88 = ""
  loc_A63DDE: ExitProcHresult
End Function

Private Sub FealCtctDesdeMsk_KeyPress(KeyAscii As Integer) 'A2495C
  'Data Table: 4F08D0
  loc_A24914: ILdI2 KeyAscii
  loc_A24917: CI4UI1
  loc_A24918: LitI4 &H20
  loc_A2491D: EqI4
  loc_A2491E: BranchF loc_A2495B
  loc_A24921: LitVar_Missing var_A4
  loc_A24924: PopAdLdVar
  loc_A24925: LitVarI4
  loc_A2492D: PopAdLdVar
  loc_A2492E: ImpAdLdRf MemVar_D930A4
  loc_A24931: NewIfNullPr frmCalendario
  loc_A24934: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24939: ImpAdLdRf MemVar_D93028
  loc_A2493C: CDargRef
  loc_A24940: FLdPr Me
  loc_A24943: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A24946: FStAdFunc var_A8
  loc_A24949: FLdPr var_A8
  loc_A2494C: LateIdSt
  loc_A24951: FFree1Ad var_A8
  loc_A24954: LitStr vbNullString
  loc_A24957: ImpAdStStrCopy MemVar_D93028
  loc_A2495B: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_0 '9C29F0
  'Data Table: 4F08D0
  loc_9C29DC: FLdPr Me
  loc_9C29DF: VCallAd Control_ID_FealCtctHastaMsk
  loc_9C29E2: CVarAd
  loc_9C29E6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C29EB: FFree1Var var_94 = ""
  loc_9C29EE: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_8 'A65960
  'Data Table: 4F08D0
  loc_A65904: FLdPr Me
  loc_A65907: VCallAd Control_ID_FealCtctHastaMsk
  loc_A6590A: FStAdFunc var_88
  loc_A6590D: FLdPr var_88
  loc_A65910: LateIdLdVar var_98 DispID_15 0
  loc_A65917: CStrVarTmp
  loc_A65918: FStStrNoPop var_9C
  loc_A6591B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A65920: FStStrNoPop var_A0
  loc_A65923: FLdPr Me
  loc_A65926: MemStStrCopy
  loc_A6592A: FFreeStr var_9C = ""
  loc_A65931: FFree1Ad var_88
  loc_A65934: FFree1Var var_98 = ""
  loc_A65937: FLdPr Me
  loc_A6593A: VCallAd Control_ID_FealCtctHastaMsk
  loc_A6593D: FStAdFuncNoPop
  loc_A65940: CastAd
  loc_A65943: FStAdFunc var_A4
  loc_A65946: FLdRfVar var_A4
  loc_A65949: FLdPr Me
  loc_A6594C: MemLdStr global_104
  loc_A6594F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A65954: IStI2 KeyAscii
  loc_A65957: FFreeAd var_88 = ""
  loc_A6595E: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_KeyPress(KeyAscii As Integer) 'A249D8
  'Data Table: 4F08D0
  loc_A24990: ILdI2 KeyAscii
  loc_A24993: CI4UI1
  loc_A24994: LitI4 &H20
  loc_A24999: EqI4
  loc_A2499A: BranchF loc_A249D7
  loc_A2499D: LitVar_Missing var_A4
  loc_A249A0: PopAdLdVar
  loc_A249A1: LitVarI4
  loc_A249A9: PopAdLdVar
  loc_A249AA: ImpAdLdRf MemVar_D930A4
  loc_A249AD: NewIfNullPr frmCalendario
  loc_A249B0: frmCalendario.Show from_stack_1, from_stack_2
  loc_A249B5: ImpAdLdRf MemVar_D93028
  loc_A249B8: CDargRef
  loc_A249BC: FLdPr Me
  loc_A249BF: VCallAd Control_ID_FealCtctHastaMsk
  loc_A249C2: FStAdFunc var_A8
  loc_A249C5: FLdPr var_A8
  loc_A249C8: LateIdSt
  loc_A249CD: FFree1Ad var_A8
  loc_A249D0: LitStr vbNullString
  loc_A249D3: ImpAdStStrCopy MemVar_D93028
  loc_A249D7: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A16480
  'Data Table: 4F08D0
  loc_A16448: FLdPr Me
  loc_A1644B: VCallAd Control_ID_statusBar
  loc_A1644E: FStAdFunc var_88
  loc_A16451: FLdPr var_88
  loc_A16454: LateIdLdVar var_98 DispID_1 0
  loc_A1645B: CStrVarTmp
  loc_A1645C: CVarStr var_A8
  loc_A1645F: PopAdLdVar
  loc_A16460: FLdPr Me
  loc_A16463: VCallAd Control_ID_statusBar
  loc_A16466: FStAdFunc var_BC
  loc_A16469: FLdPr var_BC
  loc_A1646C: LateIdSt
  loc_A16471: FFreeAd var_88 = ""
  loc_A16478: FFreeVar var_98 = ""
  loc_A1647F: ExitProcHresult
End Sub

Private Sub OptPeriodo_Click() 'AC04AC
  'Data Table: 4F08D0
  loc_AC03A4: FLdRfVar var_8A
  loc_AC03A7: FLdPr Me
  loc_AC03AA: VCallAd Control_ID_OptPeriodo
  loc_AC03AD: FStAdFunc var_88
  loc_AC03B0: FLdPr var_88
  loc_AC03B3:  = Me.Value
  loc_AC03B8: FLdI2 var_8A
  loc_AC03BB: LitI2_Byte &HFF
  loc_AC03BD: EqI2
  loc_AC03BE: FFree1Ad var_88
  loc_AC03C1: BranchF loc_AC0426
  loc_AC03C4: LitVar_TRUE var_9C
  loc_AC03C7: PopAdLdVar
  loc_AC03C8: FLdPr Me
  loc_AC03CB: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_AC03CE: FStAdFunc var_88
  loc_AC03D1: FLdPr var_88
  loc_AC03D4: LateIdSt
  loc_AC03D9: FFree1Ad var_88
  loc_AC03DC: LitVar_TRUE var_9C
  loc_AC03DF: PopAdLdVar
  loc_AC03E0: FLdPr Me
  loc_AC03E3: VCallAd Control_ID_PeriCtctHastaMsk
  loc_AC03E6: FStAdFunc var_88
  loc_AC03E9: FLdPr var_88
  loc_AC03EC: LateIdSt
  loc_AC03F1: FFree1Ad var_88
  loc_AC03F4: LitVar_FALSE
  loc_AC03F8: PopAdLdVar
  loc_AC03F9: FLdPr Me
  loc_AC03FC: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AC03FF: FStAdFunc var_88
  loc_AC0402: FLdPr var_88
  loc_AC0405: LateIdSt
  loc_AC040A: FFree1Ad var_88
  loc_AC040D: LitVar_FALSE
  loc_AC0411: PopAdLdVar
  loc_AC0412: FLdPr Me
  loc_AC0415: VCallAd Control_ID_FealCtctHastaMsk
  loc_AC0418: FStAdFunc var_88
  loc_AC041B: FLdPr var_88
  loc_AC041E: LateIdSt
  loc_AC0423: FFree1Ad var_88
  loc_AC0426: FLdRfVar var_8A
  loc_AC0429: FLdPr Me
  loc_AC042C: VCallAd Control_ID_OptPeriodo
  loc_AC042F: FStAdFunc var_88
  loc_AC0432: FLdPr var_88
  loc_AC0435:  = Me.Value
  loc_AC043A: FLdI2 var_8A
  loc_AC043D: LitI2_Byte 0
  loc_AC043F: EqI2
  loc_AC0440: FFree1Ad var_88
  loc_AC0443: BranchF loc_AC04A8
  loc_AC0446: LitVar_FALSE
  loc_AC044A: PopAdLdVar
  loc_AC044B: FLdPr Me
  loc_AC044E: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_AC0451: FStAdFunc var_88
  loc_AC0454: FLdPr var_88
  loc_AC0457: LateIdSt
  loc_AC045C: FFree1Ad var_88
  loc_AC045F: LitVar_FALSE
  loc_AC0463: PopAdLdVar
  loc_AC0464: FLdPr Me
  loc_AC0467: VCallAd Control_ID_PeriCtctHastaMsk
  loc_AC046A: FStAdFunc var_88
  loc_AC046D: FLdPr var_88
  loc_AC0470: LateIdSt
  loc_AC0475: FFree1Ad var_88
  loc_AC0478: LitVar_TRUE var_9C
  loc_AC047B: PopAdLdVar
  loc_AC047C: FLdPr Me
  loc_AC047F: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AC0482: FStAdFunc var_88
  loc_AC0485: FLdPr var_88
  loc_AC0488: LateIdSt
  loc_AC048D: FFree1Ad var_88
  loc_AC0490: LitVar_TRUE var_9C
  loc_AC0493: PopAdLdVar
  loc_AC0494: FLdPr Me
  loc_AC0497: VCallAd Control_ID_FealCtctHastaMsk
  loc_AC049A: FStAdFunc var_88
  loc_AC049D: FLdPr var_88
  loc_AC04A0: LateIdSt
  loc_AC04A5: FFree1Ad var_88
  loc_AC04A8: ExitProcHresult
End Sub

Private Sub Form_Load() '9AFF94
  'Data Table: 4F08D0
  loc_9AFF8C: Call cmdNueva_Click()
  loc_9AFF91: ExitProcHresult
  loc_9AFF92: EqCyR8
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D0838
  'Data Table: 4F08D0
  loc_9D0820: FLdPr Me
  loc_9D0823: VCallAd Control_ID_wbbReporte
  loc_9D0826: FStAdFunc var_88
  loc_9D0829: FLdRfVar var_88
  loc_9D082C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D0831: FFree1Ad var_88
  loc_9D0834: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A048F4
  'Data Table: 4F08D0
  loc_A048C4: LitVarStr var_94, "Cerrando..."
  loc_A048C9: PopAdLdVar
  loc_A048CA: FLdPr Me
  loc_A048CD: VCallAd Control_ID_statusBar
  loc_A048D0: FStAdFunc var_A8
  loc_A048D3: FLdPr var_A8
  loc_A048D6: LateIdSt
  loc_A048DB: FFree1Ad var_A8
  loc_A048DE: ILdRf Me
  loc_A048E1: FStAdNoPop
  loc_A048E5: ImpAdLdRf MemVar_D9C5D8
  loc_A048E8: NewIfNullPr Global
  loc_A048EB: Global.Unload from_stack_1
  loc_A048F0: FFree1Ad var_A8
  loc_A048F3: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CF240
  'Data Table: 4F08D0
  loc_9CF228: LitI2_Byte 0
  loc_9CF22A: ILdRf Me
  loc_9CF22D: CastAd
  loc_9CF230: FStAdFunc var_88
  loc_9CF233: FLdRfVar var_88
  loc_9CF236: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CF23B: FFree1Ad var_88
  loc_9CF23E: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E023C
  'Data Table: 4F08D0
  loc_9E0220: LitI2_Byte &HFF
  loc_9E0222: LitI2_Byte 0
  loc_9E0224: ILdRf Me
  loc_9E0227: CastAd
  loc_9E022A: FStAdFunc var_88
  loc_9E022D: FLdRfVar var_88
  loc_9E0230: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E0235: FFree1Ad var_88
  loc_9E0238: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CFF9C
  'Data Table: 4F08D0
  loc_9CFF84: ILdRf Me
  loc_9CFF87: CastAd
  loc_9CFF8A: FStAdFunc var_88
  loc_9CFF8D: FLdRfVar var_88
  loc_9CFF90: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CFF95: FFree1Ad var_88
  loc_9CFF98: ExitProcHresult
End Sub

Private Sub CodiOficMsk_UnknownEvent_0 '9C3338
  'Data Table: 4F08D0
  loc_9C3324: FLdPr Me
  loc_9C3327: VCallAd Control_ID_CodiOficMsk
  loc_9C332A: CVarAd
  loc_9C332E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3333: FFree1Var var_94 = ""
  loc_9C3336: ExitProcHresult
End Sub

Private Function CodiOficMsk_UnknownEvent_8(arg_C) 'AC631C
  'Data Table: 4F08D0
  loc_AC6210: FLdPr Me
  loc_AC6213: VCallAd Control_ID_CodiOficMsk
  loc_AC6216: FStAdFunc var_88
  loc_AC6219: FLdPr var_88
  loc_AC621C: LateIdLdVar var_98 DispID_13 -32767
  loc_AC6223: CBoolVar
  loc_AC6225: FFree1Ad var_88
  loc_AC6228: FFree1Var var_98 = ""
  loc_AC622B: BranchF loc_AC631A
  loc_AC622E: FLdPr Me
  loc_AC6231: VCallAd Control_ID_CodiOficMsk
  loc_AC6234: FStAdFunc var_88
  loc_AC6237: FLdPr var_88
  loc_AC623A: LateIdLdVar var_98 DispID_0 0
  loc_AC6241: CStrVarTmp
  loc_AC6242: FStStrNoPop var_9C
  loc_AC6245: CR8Str
  loc_AC6247: LitI2_Byte 0
  loc_AC6249: CR8I2
  loc_AC624A: NeR8
  loc_AC624B: FFree1Str var_9C
  loc_AC624E: FFree1Ad var_88
  loc_AC6251: FFree1Var var_98 = ""
  loc_AC6254: BranchF loc_AC6303
  loc_AC6257: FLdPr Me
  loc_AC625A: VCallAd Control_ID_CodiOficMsk
  loc_AC625D: FStAdFunc var_88
  loc_AC6260: FLdPr var_88
  loc_AC6263: LateIdLdVar var_98 DispID_22 0
  loc_AC626A: CStrVarTmp
  loc_AC626B: FStStrNoPop var_9C
  loc_AC626E: ImpAdCallI2 Proc_18_24_A57368()
  loc_AC6273: FStStrNoPop var_A0
  loc_AC6276: FLdPr Me
  loc_AC6279: MemStStrCopy
  loc_AC627D: FFreeStr var_9C = ""
  loc_AC6284: FFree1Ad var_88
  loc_AC6287: FFree1Var var_98 = ""
  loc_AC628A: FLdPr Me
  loc_AC628D: MemLdStr global_104
  loc_AC6290: LitStr vbNullString
  loc_AC6293: NeStr
  loc_AC6295: BranchF loc_AC62BD
  loc_AC6298: FLdPr Me
  loc_AC629B: MemLdStr global_104
  loc_AC629E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC62A3: FLdPr Me
  loc_AC62A6: VCallAd Control_ID_CodiOficMsk
  loc_AC62A9: CVarAd
  loc_AC62AD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC62B2: FFree1Var var_98 = ""
  loc_AC62B5: LitI2_Byte &HFF
  loc_AC62B7: IStI2 arg_C
  loc_AC62BA: Branch loc_AC6300
  loc_AC62BD: FLdPr Me
  loc_AC62C0: VCallAd Control_ID_CodiOficMsk
  loc_AC62C3: FStAdFunc var_88
  loc_AC62C6: FLdPr var_88
  loc_AC62C9: LateIdLdVar var_98 DispID_22 0
  loc_AC62D0: CStrVarTmp
  loc_AC62D1: FStStrNoPop var_9C
  loc_AC62D4: CI2Str
  loc_AC62D6: ImpAdCallI2 Proc_270_20_A7A6C0()
  loc_AC62DB: FStStrNoPop var_A0
  loc_AC62DE: FLdPr Me
  loc_AC62E1: VCallAd Control_ID_DetaOficLbl
  loc_AC62E4: FStAdFunc var_A4
  loc_AC62E7: FLdPr var_A4
  loc_AC62EA: Me.Caption = from_stack_1
  loc_AC62EF: FFreeStr var_9C = ""
  loc_AC62F6: FFreeAd var_88 = ""
  loc_AC62FD: FFree1Var var_98 = ""
  loc_AC6300: Branch loc_AC631A
  loc_AC6303: LitStr "TODAS LAS OFICINAS"
  loc_AC6306: FLdPr Me
  loc_AC6309: VCallAd Control_ID_DetaOficLbl
  loc_AC630C: FStAdFunc var_88
  loc_AC630F: FLdPr var_88
  loc_AC6312: Me.Caption = from_stack_1
  loc_AC6317: FFree1Ad var_88
  loc_AC631A: ExitProcHresult
End Function

Private Sub PeriCtctDesdeMsk_UnknownEvent_0 '9C3968
  'Data Table: 4F08D0
  loc_9C3954: FLdPr Me
  loc_9C3957: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_9C395A: CVarAd
  loc_9C395E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3963: FFree1Var var_94 = ""
  loc_9C3966: ExitProcHresult
End Sub

Private Function PeriCtctDesdeMsk_UnknownEvent_8(arg_C) 'A70C08
  'Data Table: 4F08D0
  loc_A70BA0: FLdPr Me
  loc_A70BA3: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_A70BA6: FStAdFunc var_88
  loc_A70BA9: FLdPr var_88
  loc_A70BAC: LateIdLdVar var_98 DispID_22 0
  loc_A70BB3: PopAd
  loc_A70BB5: LitI2_Byte 0
  loc_A70BB7: FLdRfVar var_98
  loc_A70BBA: CStrVarTmp
  loc_A70BBB: FStStrNoPop var_9C
  loc_A70BBE: LitStr "Periodo"
  loc_A70BC1: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A70BC6: FStStrNoPop var_A0
  loc_A70BC9: FLdPr Me
  loc_A70BCC: MemStStrCopy
  loc_A70BD0: FFreeStr var_9C = ""
  loc_A70BD7: FFree1Ad var_88
  loc_A70BDA: FFree1Var var_98 = ""
  loc_A70BDD: FLdPr Me
  loc_A70BE0: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_A70BE3: FStAdFuncNoPop
  loc_A70BE6: CastAd
  loc_A70BE9: FStAdFunc var_A4
  loc_A70BEC: FLdRfVar var_A4
  loc_A70BEF: FLdPr Me
  loc_A70BF2: MemLdStr global_104
  loc_A70BF5: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A70BFA: IStI2 arg_C
  loc_A70BFD: FFreeAd var_88 = ""
  loc_A70C04: ExitProcHresult
End Function

Private Sub PeriCtctHastaMsk_UnknownEvent_0 '9C3218
  'Data Table: 4F08D0
  loc_9C3204: FLdPr Me
  loc_9C3207: VCallAd Control_ID_PeriCtctHastaMsk
  loc_9C320A: CVarAd
  loc_9C320E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3213: FFree1Var var_94 = ""
  loc_9C3216: ExitProcHresult
End Sub

Private Function PeriCtctHastaMsk_UnknownEvent_8(arg_C) 'A70B5C
  'Data Table: 4F08D0
  loc_A70AF4: FLdPr Me
  loc_A70AF7: VCallAd Control_ID_PeriCtctHastaMsk
  loc_A70AFA: FStAdFunc var_88
  loc_A70AFD: FLdPr var_88
  loc_A70B00: LateIdLdVar var_98 DispID_22 0
  loc_A70B07: PopAd
  loc_A70B09: LitI2_Byte 0
  loc_A70B0B: FLdRfVar var_98
  loc_A70B0E: CStrVarTmp
  loc_A70B0F: FStStrNoPop var_9C
  loc_A70B12: LitStr "Periodo"
  loc_A70B15: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A70B1A: FStStrNoPop var_A0
  loc_A70B1D: FLdPr Me
  loc_A70B20: MemStStrCopy
  loc_A70B24: FFreeStr var_9C = ""
  loc_A70B2B: FFree1Ad var_88
  loc_A70B2E: FFree1Var var_98 = ""
  loc_A70B31: FLdPr Me
  loc_A70B34: VCallAd Control_ID_PeriCtctHastaMsk
  loc_A70B37: FStAdFuncNoPop
  loc_A70B3A: CastAd
  loc_A70B3D: FStAdFunc var_A4
  loc_A70B40: FLdRfVar var_A4
  loc_A70B43: FLdPr Me
  loc_A70B46: MemLdStr global_104
  loc_A70B49: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A70B4E: IStI2 arg_C
  loc_A70B51: FFreeAd var_88 = ""
  loc_A70B58: ExitProcHresult
  loc_A70B59: FLdZeroAd PeriCtctHastaMsk_UnknownEvent_8B8
End Function

Private Sub OptFecha_Click() 'AC099C
  'Data Table: 4F08D0
  loc_AC0894: FLdRfVar var_8A
  loc_AC0897: FLdPr Me
  loc_AC089A: VCallAd Control_ID_OptFecha
  loc_AC089D: FStAdFunc var_88
  loc_AC08A0: FLdPr var_88
  loc_AC08A3:  = Me.Value
  loc_AC08A8: FLdI2 var_8A
  loc_AC08AB: LitI2_Byte &HFF
  loc_AC08AD: EqI2
  loc_AC08AE: FFree1Ad var_88
  loc_AC08B1: BranchF loc_AC0916
  loc_AC08B4: LitVar_FALSE
  loc_AC08B8: PopAdLdVar
  loc_AC08B9: FLdPr Me
  loc_AC08BC: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_AC08BF: FStAdFunc var_88
  loc_AC08C2: FLdPr var_88
  loc_AC08C5: LateIdSt
  loc_AC08CA: FFree1Ad var_88
  loc_AC08CD: LitVar_FALSE
  loc_AC08D1: PopAdLdVar
  loc_AC08D2: FLdPr Me
  loc_AC08D5: VCallAd Control_ID_PeriCtctHastaMsk
  loc_AC08D8: FStAdFunc var_88
  loc_AC08DB: FLdPr var_88
  loc_AC08DE: LateIdSt
  loc_AC08E3: FFree1Ad var_88
  loc_AC08E6: LitVar_TRUE var_9C
  loc_AC08E9: PopAdLdVar
  loc_AC08EA: FLdPr Me
  loc_AC08ED: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AC08F0: FStAdFunc var_88
  loc_AC08F3: FLdPr var_88
  loc_AC08F6: LateIdSt
  loc_AC08FB: FFree1Ad var_88
  loc_AC08FE: LitVar_TRUE var_9C
  loc_AC0901: PopAdLdVar
  loc_AC0902: FLdPr Me
  loc_AC0905: VCallAd Control_ID_FealCtctHastaMsk
  loc_AC0908: FStAdFunc var_88
  loc_AC090B: FLdPr var_88
  loc_AC090E: LateIdSt
  loc_AC0913: FFree1Ad var_88
  loc_AC0916: FLdRfVar var_8A
  loc_AC0919: FLdPr Me
  loc_AC091C: VCallAd Control_ID_OptFecha
  loc_AC091F: FStAdFunc var_88
  loc_AC0922: FLdPr var_88
  loc_AC0925:  = Me.Value
  loc_AC092A: FLdI2 var_8A
  loc_AC092D: LitI2_Byte 0
  loc_AC092F: EqI2
  loc_AC0930: FFree1Ad var_88
  loc_AC0933: BranchF loc_AC0998
  loc_AC0936: LitVar_TRUE var_9C
  loc_AC0939: PopAdLdVar
  loc_AC093A: FLdPr Me
  loc_AC093D: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_AC0940: FStAdFunc var_88
  loc_AC0943: FLdPr var_88
  loc_AC0946: LateIdSt
  loc_AC094B: FFree1Ad var_88
  loc_AC094E: LitVar_TRUE var_9C
  loc_AC0951: PopAdLdVar
  loc_AC0952: FLdPr Me
  loc_AC0955: VCallAd Control_ID_PeriCtctHastaMsk
  loc_AC0958: FStAdFunc var_88
  loc_AC095B: FLdPr var_88
  loc_AC095E: LateIdSt
  loc_AC0963: FFree1Ad var_88
  loc_AC0966: LitVar_FALSE
  loc_AC096A: PopAdLdVar
  loc_AC096B: FLdPr Me
  loc_AC096E: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AC0971: FStAdFunc var_88
  loc_AC0974: FLdPr var_88
  loc_AC0977: LateIdSt
  loc_AC097C: FFree1Ad var_88
  loc_AC097F: LitVar_FALSE
  loc_AC0983: PopAdLdVar
  loc_AC0984: FLdPr Me
  loc_AC0987: VCallAd Control_ID_FealCtctHastaMsk
  loc_AC098A: FStAdFunc var_88
  loc_AC098D: FLdPr var_88
  loc_AC0990: LateIdSt
  loc_AC0995: FFree1Ad var_88
  loc_AC0998: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E037C
  'Data Table: 4F08D0
  loc_9E0360: LitI2_Byte 0
  loc_9E0362: PopTmpLdAd2 var_8A
  loc_9E0365: ILdRf Me
  loc_9E0368: CastAd
  loc_9E036B: FStAdFunc var_88
  loc_9E036E: FLdRfVar var_88
  loc_9E0371: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E0376: FFree1Ad var_88
  loc_9E0379: ExitProcHresult
  loc_9E037A: CStr2Ansi
End Sub

Public Function bLogosGet() '4F1F0C
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4F1F1B
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4F1F2A
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4F1F39
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'AB6D5C
  'Data Table: 4F08D0
  loc_AB6C98: LitI4 0
  loc_AB6C9D: LitI4 9
  loc_AB6CA2: FLdRfVar var_88
  loc_AB6CA5: Redim
  loc_AB6CAF: FLdPr Me
  loc_AB6CB2: VCallAd Control_ID_CodiOficMsk
  loc_AB6CB5: CVarAd
  loc_AB6CB9: ParmAry1St
  loc_AB6CBF: FLdPr Me
  loc_AB6CC2: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AB6CC5: CVarAd
  loc_AB6CC9: ParmAry1St
  loc_AB6CCF: FLdPr Me
  loc_AB6CD2: VCallAd Control_ID_FealCtctHastaMsk
  loc_AB6CD5: CVarAd
  loc_AB6CD9: ParmAry1St
  loc_AB6CDF: FLdPr Me
  loc_AB6CE2: VCallAd Control_ID_OptFecha
  loc_AB6CE5: CVarAd
  loc_AB6CE9: ParmAry1St
  loc_AB6CEF: FLdPr Me
  loc_AB6CF2: VCallAd Control_ID_CredOpt
  loc_AB6CF5: CVarAd
  loc_AB6CF9: ParmAry1St
  loc_AB6CFF: FLdPr Me
  loc_AB6D02: VCallAd Control_ID_PresOpt
  loc_AB6D05: CVarAd
  loc_AB6D09: ParmAry1St
  loc_AB6D0F: FLdPr Me
  loc_AB6D12: VCallAd Control_ID_ExenOpt
  loc_AB6D15: CVarAd
  loc_AB6D19: ParmAry1St
  loc_AB6D1F: FLdPr Me
  loc_AB6D22: VCallAd Control_ID_CondOpt
  loc_AB6D25: CVarAd
  loc_AB6D29: ParmAry1St
  loc_AB6D2F: FLdPr Me
  loc_AB6D32: VCallAd Control_ID_DebiOpt
  loc_AB6D35: CVarAd
  loc_AB6D39: ParmAry1St
  loc_AB6D3F: FLdPr Me
  loc_AB6D42: VCallAd Control_ID_DevolucionOpt
  loc_AB6D45: CVarAd
  loc_AB6D49: ParmAry1St
  loc_AB6D4F: FLdRfVar var_88
  loc_AB6D52: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AB6D57: FLdRfVar var_88
  loc_AB6D5A: Erase
  loc_AB6D5B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BFEE20
  'Data Table: 4F08D0
  loc_BFE598: FLdPr Me
  loc_BFE59B: MemLdI2 bGenerado
  loc_BFE59E: BranchF loc_BFE5A2
  loc_BFE5A1: ExitProcHresult
  loc_BFE5A2: LitVarStr var_9C, "Generando reporte..."
  loc_BFE5A7: PopAdLdVar
  loc_BFE5A8: FLdPr Me
  loc_BFE5AB: VCallAd Control_ID_statusBar
  loc_BFE5AE: FStAdFunc var_B0
  loc_BFE5B1: FLdPr var_B0
  loc_BFE5B4: LateIdSt
  loc_BFE5B9: FFree1Ad var_B0
  loc_BFE5BC: LitI4 &HB
  loc_BFE5C1: CI2I4
  loc_BFE5C2: FLdPr Me
  loc_BFE5C5: Me.MousePointer = from_stack_1
  loc_BFE5CA: LitI2_Byte 0
  loc_BFE5CC: PopTmpLdAd2 var_B2
  loc_BFE5CF: from_stack_2v = CodiOficMsk_UnknownEvent_8(from_stack_1v)
  loc_BFE5D4: FLdPr Me
  loc_BFE5D7: MemLdStr global_104
  loc_BFE5DA: LitStr vbNullString
  loc_BFE5DD: NeStr
  loc_BFE5DF: BranchF loc_BFE5E5
  loc_BFE5E2: Branch loc_BFEDF5
  loc_BFE5E5: LitI2_Byte 0
  loc_BFE5E7: PopTmpLdAd2 var_B2
  loc_BFE5EA: from_stack_2v = FealCtctDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BFE5EF: FLdPr Me
  loc_BFE5F2: MemLdStr global_104
  loc_BFE5F5: LitStr vbNullString
  loc_BFE5F8: NeStr
  loc_BFE5FA: BranchF loc_BFE600
  loc_BFE5FD: Branch loc_BFEDF5
  loc_BFE600: LitI2_Byte 0
  loc_BFE602: PopTmpLdAd2 var_B2
  loc_BFE605: Call FealCtctHastaMsk_UnknownEvent_8()
  loc_BFE60A: FLdPr Me
  loc_BFE60D: MemLdStr global_104
  loc_BFE610: LitStr vbNullString
  loc_BFE613: NeStr
  loc_BFE615: BranchF loc_BFE61B
  loc_BFE618: Branch loc_BFEDF5
  loc_BFE61B: FLdRfVar var_B2
  loc_BFE61E: FLdPr Me
  loc_BFE621: VCallAd Control_ID_CredOpt
  loc_BFE624: FStAdFunc var_B0
  loc_BFE627: FLdPr var_B0
  loc_BFE62A:  = Me.Value
  loc_BFE62F: FLdI2 var_B2
  loc_BFE632: LitI2_Byte &HFF
  loc_BFE634: EqI2
  loc_BFE635: FFree1Ad var_B0
  loc_BFE638: BranchF loc_BFE642
  loc_BFE63B: LitI2_Byte &HB
  loc_BFE63D: CStrUI1
  loc_BFE63F: FStStr var_88
  loc_BFE642: FLdRfVar var_B2
  loc_BFE645: FLdPr Me
  loc_BFE648: VCallAd Control_ID_DevolucionOpt
  loc_BFE64B: FStAdFunc var_B0
  loc_BFE64E: FLdPr var_B0
  loc_BFE651:  = Me.Value
  loc_BFE656: FLdI2 var_B2
  loc_BFE659: LitI2_Byte &HFF
  loc_BFE65B: EqI2
  loc_BFE65C: FFree1Ad var_B0
  loc_BFE65F: BranchF loc_BFE669
  loc_BFE662: LitI2_Byte &H1A
  loc_BFE664: CStrUI1
  loc_BFE666: FStStr var_88
  loc_BFE669: FLdRfVar var_B2
  loc_BFE66C: FLdPr Me
  loc_BFE66F: VCallAd Control_ID_DebiOpt
  loc_BFE672: FStAdFunc var_B0
  loc_BFE675: FLdPr var_B0
  loc_BFE678:  = Me.Value
  loc_BFE67D: FLdI2 var_B2
  loc_BFE680: LitI2_Byte &HFF
  loc_BFE682: EqI2
  loc_BFE683: FFree1Ad var_B0
  loc_BFE686: BranchF loc_BFE690
  loc_BFE689: LitI2_Byte &HA
  loc_BFE68B: CStrUI1
  loc_BFE68D: FStStr var_88
  loc_BFE690: FLdRfVar var_B2
  loc_BFE693: FLdPr Me
  loc_BFE696: VCallAd Control_ID_PresOpt
  loc_BFE699: FStAdFunc var_B0
  loc_BFE69C: FLdPr var_B0
  loc_BFE69F:  = Me.Value
  loc_BFE6A4: FLdI2 var_B2
  loc_BFE6A7: LitI2_Byte &HFF
  loc_BFE6A9: EqI2
  loc_BFE6AA: FFree1Ad var_B0
  loc_BFE6AD: BranchF loc_BFE6B7
  loc_BFE6B0: LitI2_Byte &HC
  loc_BFE6B2: CStrUI1
  loc_BFE6B4: FStStr var_88
  loc_BFE6B7: FLdRfVar var_B2
  loc_BFE6BA: FLdPr Me
  loc_BFE6BD: VCallAd Control_ID_CondOpt
  loc_BFE6C0: FStAdFunc var_B0
  loc_BFE6C3: FLdPr var_B0
  loc_BFE6C6:  = Me.Value
  loc_BFE6CB: FLdI2 var_B2
  loc_BFE6CE: LitI2_Byte &HFF
  loc_BFE6D0: EqI2
  loc_BFE6D1: FFree1Ad var_B0
  loc_BFE6D4: BranchF loc_BFE6DE
  loc_BFE6D7: LitI2_Byte &HE
  loc_BFE6D9: CStrUI1
  loc_BFE6DB: FStStr var_88
  loc_BFE6DE: FLdRfVar var_B2
  loc_BFE6E1: FLdPr Me
  loc_BFE6E4: VCallAd Control_ID_ExenOpt
  loc_BFE6E7: FStAdFunc var_B0
  loc_BFE6EA: FLdPr var_B0
  loc_BFE6ED:  = Me.Value
  loc_BFE6F2: FLdI2 var_B2
  loc_BFE6F5: LitI2_Byte &HFF
  loc_BFE6F7: EqI2
  loc_BFE6F8: FFree1Ad var_B0
  loc_BFE6FB: BranchF loc_BFE705
  loc_BFE6FE: LitI2_Byte &HF
  loc_BFE700: CStrUI1
  loc_BFE702: FStStr var_88
  loc_BFE705: FLdRfVar var_B2
  loc_BFE708: FLdPr Me
  loc_BFE70B: VCallAd Control_ID_OptFecha
  loc_BFE70E: FStAdFunc var_B0
  loc_BFE711: FLdPr var_B0
  loc_BFE714:  = Me.Value
  loc_BFE719: FLdI2 var_B2
  loc_BFE71C: LitI2_Byte &HFF
  loc_BFE71E: EqI2
  loc_BFE71F: FFree1Ad var_B0
  loc_BFE722: BranchF loc_BFE867
  loc_BFE725: FLdPr Me
  loc_BFE728: VCallAd Control_ID_CodiOficMsk
  loc_BFE72B: FStAdFunc var_B0
  loc_BFE72E: FLdPr var_B0
  loc_BFE731: LateIdLdVar var_C4 DispID_22 0
  loc_BFE738: PopAd
  loc_BFE73A: FLdPr Me
  loc_BFE73D: VCallAd Control_ID_CodiOficMsk
  loc_BFE740: FStAdFunc var_CC
  loc_BFE743: FLdPr var_CC
  loc_BFE746: LateIdLdVar var_DC DispID_22 0
  loc_BFE74D: PopAd
  loc_BFE74F: FLdPr Me
  loc_BFE752: VCallAd Control_ID_FealCtctDesdeMsk
  loc_BFE755: FStAdFunc var_158
  loc_BFE758: FLdPr var_158
  loc_BFE75B: LateIdLdVar var_168 DispID_15 0
  loc_BFE762: PopAd
  loc_BFE764: FLdPr Me
  loc_BFE767: VCallAd Control_ID_FealCtctHastaMsk
  loc_BFE76A: FStAdFunc var_1DC
  loc_BFE76D: FLdPr var_1DC
  loc_BFE770: LateIdLdVar var_1EC DispID_15 0
  loc_BFE777: PopAd
  loc_BFE779: LitVarStr var_124, " WHERE "
  loc_BFE77E: LitVarStr var_AC, vbNullString
  loc_BFE783: FStVarCopyObj var_104
  loc_BFE786: FLdRfVar var_104
  loc_BFE789: LitStr " CodiOfic = "
  loc_BFE78C: FLdRfVar var_DC
  loc_BFE78F: CStrVarTmp
  loc_BFE790: FStStrNoPop var_E0
  loc_BFE793: ConcatStr
  loc_BFE794: FStStrNoPop var_E4
  loc_BFE797: LitStr " AND "
  loc_BFE79A: ConcatStr
  loc_BFE79B: CVarStr var_F4
  loc_BFE79E: FLdRfVar var_C4
  loc_BFE7A1: CStrVarTmp
  loc_BFE7A2: FStStrNoPop var_C8
  loc_BFE7A5: CR8Str
  loc_BFE7A7: LitI2_Byte 0
  loc_BFE7A9: CR8I2
  loc_BFE7AA: NeR8
  loc_BFE7AB: CVarBoolI2 var_9C
  loc_BFE7AF: FLdRfVar var_114
  loc_BFE7B2: ImpAdCallFPR4  = IIf(, , )
  loc_BFE7B7: FLdRfVar var_114
  loc_BFE7BA: ConcatVar var_134
  loc_BFE7BE: LitVarStr var_144, "  FealCtct BETWEEN "
  loc_BFE7C3: ConcatVar var_154
  loc_BFE7C7: LitI4 1
  loc_BFE7CC: LitI4 1
  loc_BFE7D1: LitVarStr var_188, "'yyyy-mm-dd'"
  loc_BFE7D6: FStVarCopyObj var_198
  loc_BFE7D9: FLdRfVar var_198
  loc_BFE7DC: FLdRfVar var_168
  loc_BFE7DF: CStrVarTmp
  loc_BFE7E0: CVarStr var_178
  loc_BFE7E3: FLdRfVar var_1A8
  loc_BFE7E6: ImpAdCallFPR4  = Format(, )
  loc_BFE7EB: FLdRfVar var_1A8
  loc_BFE7EE: ConcatVar var_1B8
  loc_BFE7F2: LitVarStr var_1C8, " AND "
  loc_BFE7F7: ConcatVar var_1D8
  loc_BFE7FB: LitI4 1
  loc_BFE800: LitI4 1
  loc_BFE805: LitVarStr var_20C, "'yyyy-mm-dd'"
  loc_BFE80A: FStVarCopyObj var_21C
  loc_BFE80D: FLdRfVar var_21C
  loc_BFE810: FLdRfVar var_1EC
  loc_BFE813: CStrVarTmp
  loc_BFE814: CVarStr var_1FC
  loc_BFE817: FLdRfVar var_22C
  loc_BFE81A: ImpAdCallFPR4  = Format(, )
  loc_BFE81F: FLdRfVar var_22C
  loc_BFE822: ConcatVar var_23C
  loc_BFE826: CStrVarTmp
  loc_BFE827: FStStr var_8C
  loc_BFE82A: FFreeStr var_C8 = "": var_E0 = ""
  loc_BFE833: FFreeAd var_B0 = "": var_CC = "": var_158 = ""
  loc_BFE83E: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F4 = "": var_104 = "": var_114 = "": var_134 = "": var_168 = "": var_178 = "": var_198 = "": var_154 = "": var_1A8 = "": var_1B8 = "": var_1EC = "": var_1FC = "": var_21C = "": var_1D8 = "": var_22C = ""
  loc_BFE867: FLdRfVar var_B2
  loc_BFE86A: FLdPr Me
  loc_BFE86D: VCallAd Control_ID_OptPeriodo
  loc_BFE870: FStAdFunc var_B0
  loc_BFE873: FLdPr var_B0
  loc_BFE876:  = Me.Value
  loc_BFE87B: FLdI2 var_B2
  loc_BFE87E: LitI2_Byte &HFF
  loc_BFE880: EqI2
  loc_BFE881: FFree1Ad var_B0
  loc_BFE884: BranchF loc_BFE977
  loc_BFE887: FLdPr Me
  loc_BFE88A: VCallAd Control_ID_CodiOficMsk
  loc_BFE88D: FStAdFunc var_B0
  loc_BFE890: FLdPr var_B0
  loc_BFE893: LateIdLdVar var_C4 DispID_22 0
  loc_BFE89A: PopAd
  loc_BFE89C: FLdPr Me
  loc_BFE89F: VCallAd Control_ID_CodiOficMsk
  loc_BFE8A2: FStAdFunc var_CC
  loc_BFE8A5: FLdPr var_CC
  loc_BFE8A8: LateIdLdVar var_DC DispID_22 0
  loc_BFE8AF: PopAd
  loc_BFE8B1: LitVarStr var_124, " WHERE "
  loc_BFE8B6: LitVarStr var_AC, vbNullString
  loc_BFE8BB: FStVarCopyObj var_104
  loc_BFE8BE: FLdRfVar var_104
  loc_BFE8C1: LitStr " CodiOfic = "
  loc_BFE8C4: FLdRfVar var_DC
  loc_BFE8C7: CStrVarTmp
  loc_BFE8C8: FStStrNoPop var_E0
  loc_BFE8CB: ConcatStr
  loc_BFE8CC: FStStrNoPop var_E4
  loc_BFE8CF: LitStr " AND "
  loc_BFE8D2: ConcatStr
  loc_BFE8D3: CVarStr var_F4
  loc_BFE8D6: FLdRfVar var_C4
  loc_BFE8D9: CStrVarTmp
  loc_BFE8DA: FStStrNoPop var_C8
  loc_BFE8DD: CR8Str
  loc_BFE8DF: LitI2_Byte 0
  loc_BFE8E1: CR8I2
  loc_BFE8E2: NeR8
  loc_BFE8E3: CVarBoolI2 var_9C
  loc_BFE8E7: FLdRfVar var_114
  loc_BFE8EA: ImpAdCallFPR4  = IIf(, , )
  loc_BFE8EF: FLdRfVar var_114
  loc_BFE8F2: ConcatVar var_134
  loc_BFE8F6: LitVarStr var_144, " PeriCtct >= "
  loc_BFE8FB: ConcatVar var_154
  loc_BFE8FF: FLdPr Me
  loc_BFE902: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_BFE905: FStAdFunc var_158
  loc_BFE908: FLdPr var_158
  loc_BFE90B: LateIdLdVar var_168 DispID_22 0
  loc_BFE912: CStrVarTmp
  loc_BFE913: CVarStr var_178
  loc_BFE916: ConcatVar var_198
  loc_BFE91A: LitVarStr var_188, " AND PeriCtct <= "
  loc_BFE91F: ConcatVar var_1A8
  loc_BFE923: FLdPr Me
  loc_BFE926: VCallAd Control_ID_PeriCtctHastaMsk
  loc_BFE929: FStAdFunc var_1DC
  loc_BFE92C: FLdPr var_1DC
  loc_BFE92F: LateIdLdVar var_1B8 DispID_22 0
  loc_BFE936: CStrVarTmp
  loc_BFE937: CVarStr var_1D8
  loc_BFE93A: ConcatVar var_1EC
  loc_BFE93E: CStrVarTmp
  loc_BFE93F: FStStr var_8C
  loc_BFE942: FFreeStr var_C8 = "": var_E0 = ""
  loc_BFE94B: FFreeAd var_B0 = "": var_CC = "": var_158 = ""
  loc_BFE956: FFreeVar var_C4 = "": var_DC = "": var_9C = "": var_F4 = "": var_104 = "": var_114 = "": var_134 = "": var_168 = "": var_154 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1A8 = "": var_1D8 = ""
  loc_BFE977: FLdPr Me
  loc_BFE97A: MemLdRfVar from_stack_1.global_76
  loc_BFE97D: NewIfNullAd
  loc_BFE980: FStAd var_240 
  loc_BFE984: LitStr "Municipalidad de Guaymallén"
  loc_BFE987: LitStr "Municipalidad de Guaymallén"
  loc_BFE98A: EqStr
  loc_BFE98C: LitStr "Municipalidad de Guaymallén"
  loc_BFE98F: LitStr "Municipalidad de La Paz"
  loc_BFE992: EqStr
  loc_BFE994: OrI4
  loc_BFE995: LitStr "Municipalidad de Guaymallén"
  loc_BFE998: LitStr "Municipalidad de San Martin"
  loc_BFE99B: EqStr
  loc_BFE99D: OrI4
  loc_BFE99E: LitStr "Municipalidad de Guaymallén"
  loc_BFE9A1: LitStr "Municipalidad de Santa Rosa"
  loc_BFE9A4: EqStr
  loc_BFE9A6: OrI4
  loc_BFE9A7: BranchF loc_BFEA39
  loc_BFE9AA: LitStr "SELECT FealCtct, cc.CodiOfic, cc.CuenCtct, cc.PeriCtct, cc.BimeCtct, ExpeCtct, DetaCtct, ImpoCtct, DetaPers, cc.AltaUsua FROM "
  loc_BFE9AD: LitStr " ((SELECT FealCtct, CodiOfic, CuenCtct, PeriCtct, BimeCtct, ExpeCtct, DetaCtct, case CodiTimo WHEN '10' THEN DebeCtct WHEN '11' THEN CredCtct WHEN '12' THEN CredCtct WHEN '14' THEN CredCtct WHEN '15' THEN CredCtct WHEN '26' THEN DebeCtct end as ImpoCtct, AltaUsua FROM recahisto.histoctacte"
  loc_BFE9B0: ConcatStr
  loc_BFE9B1: FStStrNoPop var_C8
  loc_BFE9B4: ILdRf var_8C
  loc_BFE9B7: ConcatStr
  loc_BFE9B8: FStStrNoPop var_E0
  loc_BFE9BB: LitStr " AND CodiTimo = "
  loc_BFE9BE: ConcatStr
  loc_BFE9BF: FStStrNoPop var_E4
  loc_BFE9C2: ILdRf var_88
  loc_BFE9C5: ConcatStr
  loc_BFE9C6: FStStrNoPop var_244
  loc_BFE9C9: LitStr ")"
  loc_BFE9CC: ConcatStr
  loc_BFE9CD: FStStrNoPop var_248
  loc_BFE9D0: LitStr " UNION ALL"
  loc_BFE9D3: ConcatStr
  loc_BFE9D4: FStStrNoPop var_24C
  loc_BFE9D7: LitStr " (SELECT FealCtct, CodiOfic, CuenCtct, PeriCtct, BimeCtct, ExpeCtct, DetaCtct, case CodiTimo WHEN '10' THEN DebeCtct WHEN '11' THEN CredCtct WHEN '12' THEN CredCtct WHEN '14' THEN CredCtct WHEN '15' THEN CredCtct WHEN '26' THEN DebeCtct end as ImpoCtct, AltaUsua FROM ctacte"
  loc_BFE9DA: ConcatStr
  loc_BFE9DB: FStStrNoPop var_250
  loc_BFE9DE: ILdRf var_8C
  loc_BFE9E1: ConcatStr
  loc_BFE9E2: FStStrNoPop var_254
  loc_BFE9E5: LitStr " AND CodiTimo = "
  loc_BFE9E8: ConcatStr
  loc_BFE9E9: FStStrNoPop var_258
  loc_BFE9EC: ILdRf var_88
  loc_BFE9EF: ConcatStr
  loc_BFE9F0: FStStrNoPop var_25C
  loc_BFE9F3: LitStr ")) as cc"
  loc_BFE9F6: ConcatStr
  loc_BFE9F7: FStStrNoPop var_260
  loc_BFE9FA: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = cc.CodiOfic AND relacion.CuenCtct = cc.CuenCtct AND relacion.TipoRela = 'Titular'"
  loc_BFE9FD: ConcatStr
  loc_BFE9FE: FStStrNoPop var_264
  loc_BFEA01: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BFEA04: ConcatStr
  loc_BFEA05: FStStrNoPop var_268
  loc_BFEA08: LitStr " ORDER BY FealCtct, cc.CodiOfic, CuenCtct, PeriCtct, BimeCtct"
  loc_BFEA0B: ConcatStr
  loc_BFEA0C: FStStrNoPop var_26C
  loc_BFEA0F: FLdPr var_240
  loc_BFEA12: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFEA17: FFreeStr var_C8 = "": var_E0 = "": var_E4 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = ""
  loc_BFEA36: Branch loc_BFEAC5
  loc_BFEA39: LitStr "SELECT FealCtct, cc.CodiOfic, cc.CuenCtct, cc.PeriCtct, cc.BimeCtct, ExpeCtct, DetaCtct, ImpoCtct, DetaPers, cc.CodiUsua FROM "
  loc_BFEA3C: LitStr " ((SELECT FealCtct, CodiOfic, CuenCtct, PeriCtct, BimeCtct, ExpeCtct, DetaCtct, case CodiTimo WHEN '10' THEN DebeCtct WHEN '11' THEN CredCtct WHEN '12' THEN CredCtct WHEN '14' THEN CredCtct WHEN '15' THEN CredCtct WHEN '26' THEN DebeCtct end as ImpoCtct, CodiUsua FROM recahisto.histoctacte"
  loc_BFEA3F: ConcatStr
  loc_BFEA40: FStStrNoPop var_C8
  loc_BFEA43: ILdRf var_8C
  loc_BFEA46: ConcatStr
  loc_BFEA47: FStStrNoPop var_E0
  loc_BFEA4A: LitStr " AND CodiTimo = "
  loc_BFEA4D: ConcatStr
  loc_BFEA4E: FStStrNoPop var_E4
  loc_BFEA51: ILdRf var_88
  loc_BFEA54: ConcatStr
  loc_BFEA55: FStStrNoPop var_244
  loc_BFEA58: LitStr ")"
  loc_BFEA5B: ConcatStr
  loc_BFEA5C: FStStrNoPop var_248
  loc_BFEA5F: LitStr " UNION ALL"
  loc_BFEA62: ConcatStr
  loc_BFEA63: FStStrNoPop var_24C
  loc_BFEA66: LitStr " (SELECT FealCtct, CodiOfic, CuenCtct, PeriCtct, BimeCtct, ExpeCtct, DetaCtct, case CodiTimo WHEN '10' THEN DebeCtct WHEN '11' THEN CredCtct WHEN '12' THEN CredCtct WHEN '14' THEN CredCtct WHEN '15' THEN CredCtct WHEN '26' THEN DebeCtct end as ImpoCtct, CodiUsua FROM ctacte"
  loc_BFEA69: ConcatStr
  loc_BFEA6A: FStStrNoPop var_250
  loc_BFEA6D: ILdRf var_8C
  loc_BFEA70: ConcatStr
  loc_BFEA71: FStStrNoPop var_254
  loc_BFEA74: LitStr " AND CodiTimo = "
  loc_BFEA77: ConcatStr
  loc_BFEA78: FStStrNoPop var_258
  loc_BFEA7B: ILdRf var_88
  loc_BFEA7E: ConcatStr
  loc_BFEA7F: FStStrNoPop var_25C
  loc_BFEA82: LitStr ")) as cc"
  loc_BFEA85: ConcatStr
  loc_BFEA86: FStStrNoPop var_260
  loc_BFEA89: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = cc.CodiOfic AND relacion.CuenCtct = cc.CuenCtct AND relacion.TipoRela = 'Titular'"
  loc_BFEA8C: ConcatStr
  loc_BFEA8D: FStStrNoPop var_264
  loc_BFEA90: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BFEA93: ConcatStr
  loc_BFEA94: FStStrNoPop var_268
  loc_BFEA97: LitStr " ORDER BY FealCtct, cc.CodiOfic, CuenCtct, PeriCtct, BimeCtct"
  loc_BFEA9A: ConcatStr
  loc_BFEA9B: FStStrNoPop var_26C
  loc_BFEA9E: FLdPr var_240
  loc_BFEAA1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BFEAA6: FFreeStr var_C8 = "": var_E0 = "": var_E4 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = ""
  loc_BFEAC5: FLdRfVar var_270
  loc_BFEAC8: FLdPr var_240
  loc_BFEACB: from_stack_1 = clsctacte.RecordCount
  loc_BFEAD0: ILdRf var_270
  loc_BFEAD3: LitI4 0
  loc_BFEAD8: EqI4
  loc_BFEAD9: BranchF loc_BFEAE7
  loc_BFEADC: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BFEADF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BFEAE4: Branch loc_BFEDF5
  loc_BFEAE7: LitI4 0
  loc_BFEAEC: FLdPr Me
  loc_BFEAEF: MemStI4 global_84
  loc_BFEAF2: LitI4 0
  loc_BFEAF7: FLdPr Me
  loc_BFEAFA: MemLdStr global_84
  loc_BFEAFD: FLdPr Me
  loc_BFEB00: MemLdRfVar from_stack_1.global_80
  loc_BFEB03: Redim
  loc_BFEB0D: LitI2_Byte 0
  loc_BFEB0F: LitVar_Missing var_C4
  loc_BFEB12: LitI2_Byte &HFF
  loc_BFEB14: LitVarI2 var_9C, 0
  loc_BFEB19: PopAdLdVar
  loc_BFEB1A: FLdPr Me
  loc_BFEB1D: MemLdRfVar from_stack_1.global_100
  loc_BFEB20: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFEB25: FFree1Var var_C4 = ""
  loc_BFEB28: FLdPr var_240
  loc_BFEB2B: Call clsctacte.MoveFirst()
  loc_BFEB30: FLdRfVar var_270
  loc_BFEB33: FLdPr var_240
  loc_BFEB36: from_stack_1 = clsctacte.RecordCount
  loc_BFEB3B: ILdRf var_270
  loc_BFEB3E: CR8I4
  loc_BFEB3F: CVarR4
  loc_BFEB43: PopAdLdVar
  loc_BFEB44: FLdPr Me
  loc_BFEB47: VCallAd Control_ID_pbar
  loc_BFEB4A: FStAdFunc var_B0
  loc_BFEB4D: FLdPr var_B0
  loc_BFEB50: LateIdSt
  loc_BFEB55: FFree1Ad var_B0
  loc_BFEB58: LitVar_TRUE var_9C
  loc_BFEB5B: PopAdLdVar
  loc_BFEB5C: FLdPr Me
  loc_BFEB5F: VCallAd Control_ID_pbar
  loc_BFEB62: FStAdFunc var_B0
  loc_BFEB65: FLdPr var_B0
  loc_BFEB68: LateIdSt
  loc_BFEB6D: FFree1Ad var_B0
  loc_BFEB70: Call Proc_204_31_A7D778()
  loc_BFEB75: FLdRfVar var_B2
  loc_BFEB78: FLdPr var_240
  loc_BFEB7B: from_stack_1 = clsctacte.EOF
  loc_BFEB80: FLdI2 var_B2
  loc_BFEB83: NotI4
  loc_BFEB84: BranchF loc_BFEC5E
  loc_BFEB87: FLdRfVar var_270
  loc_BFEB8A: FLdPr var_240
  loc_BFEB8D: from_stack_1 = clsctacte.AbsolutePosition
  loc_BFEB92: ILdRf var_270
  loc_BFEB95: CR8I4
  loc_BFEB96: CVarR4
  loc_BFEB9A: PopAdLdVar
  loc_BFEB9B: FLdPr Me
  loc_BFEB9E: VCallAd Control_ID_pbar
  loc_BFEBA1: FStAdFunc var_B0
  loc_BFEBA4: FLdPr var_B0
  loc_BFEBA7: LateIdSt
  loc_BFEBAC: FFree1Ad var_B0
  loc_BFEBAF: FLdRfVar var_C8
  loc_BFEBB2: FLdPr var_240
  loc_BFEBB5: from_stack_1 = clsctacte.FealCtct
  loc_BFEBBA: ILdRf var_C8
  loc_BFEBBD: FLdPr Me
  loc_BFEBC0: MemLdStr global_84
  loc_BFEBC3: FLdPr Me
  loc_BFEBC6: MemLdStr global_80
  loc_BFEBC9: Ary1LdPr
  loc_BFEBCA: MemLdStr global_0
  loc_BFEBCD: NeStr
  loc_BFEBCF: FFree1Str var_C8
  loc_BFEBD2: BranchF loc_BFEBDD
  loc_BFEBD5: Call Proc_204_31_A7D778()
  loc_BFEBDA: Branch loc_BFEC5B
  loc_BFEBDD: FLdRfVar var_B2
  loc_BFEBE0: FLdPr var_240
  loc_BFEBE3: from_stack_1 = clsctacte.CodiOfic
  loc_BFEBE8: FLdI2 var_B2
  loc_BFEBEB: CR8I2
  loc_BFEBEC: FLdPr Me
  loc_BFEBEF: MemLdStr global_88
  loc_BFEBF2: FLdPr Me
  loc_BFEBF5: MemLdStr global_84
  loc_BFEBF8: FLdPr Me
  loc_BFEBFB: MemLdStr global_80
  loc_BFEBFE: Ary1LdPr
  loc_BFEBFF: MemLdStr global_4
  loc_BFEC02: Ary1LdPr
  loc_BFEC03: MemLdStr global_0
  loc_BFEC06: CR8Str
  loc_BFEC08: NeR8
  loc_BFEC09: BranchF loc_BFEC14
  loc_BFEC0C: Call Proc_204_32_A887F8()
  loc_BFEC11: Branch loc_BFEC5B
  loc_BFEC14: FLdRfVar var_C8
  loc_BFEC17: FLdPr var_240
  loc_BFEC1A: from_stack_1 = clsctacte.CuenCtct
  loc_BFEC1F: ILdRf var_C8
  loc_BFEC22: FLdPr Me
  loc_BFEC25: MemLdStr global_92
  loc_BFEC28: FLdPr Me
  loc_BFEC2B: MemLdStr global_88
  loc_BFEC2E: FLdPr Me
  loc_BFEC31: MemLdStr global_84
  loc_BFEC34: FLdPr Me
  loc_BFEC37: MemLdStr global_80
  loc_BFEC3A: Ary1LdPr
  loc_BFEC3B: MemLdStr global_4
  loc_BFEC3E: Ary1LdPr
  loc_BFEC3F: MemLdStr global_4
  loc_BFEC42: Ary1LdPr
  loc_BFEC43: MemLdStr global_0
  loc_BFEC46: NeStr
  loc_BFEC48: FFree1Str var_C8
  loc_BFEC4B: BranchF loc_BFEC56
  loc_BFEC4E: Call Proc_204_33_ABF97C()
  loc_BFEC53: Branch loc_BFEC5B
  loc_BFEC56: Call Proc_204_34_B12288()
  loc_BFEC5B: Branch loc_BFEB75
  loc_BFEC5E: LitNothing
  loc_BFEC60: FStAd var_240 
  loc_BFEC64: LitI4 1
  loc_BFEC69: FLdPr Me
  loc_BFEC6C: MemLdRfVar from_stack_1.global_84
  loc_BFEC6F: FLdPr Me
  loc_BFEC72: MemLdStr global_80
  loc_BFEC75: LitI2_Byte 1
  loc_BFEC77: FnUBound
  loc_BFEC79: ForI4 var_278
  loc_BFEC7F: LitI4 1
  loc_BFEC84: FLdPr Me
  loc_BFEC87: MemLdRfVar from_stack_1.global_88
  loc_BFEC8A: FLdPr Me
  loc_BFEC8D: MemLdStr global_84
  loc_BFEC90: FLdPr Me
  loc_BFEC93: MemLdStr global_80
  loc_BFEC96: Ary1LdPr
  loc_BFEC97: MemLdStr global_4
  loc_BFEC9A: LitI2_Byte 1
  loc_BFEC9C: FnUBound
  loc_BFEC9E: ForI4 var_280
  loc_BFECA4: LitI4 1
  loc_BFECA9: FLdPr Me
  loc_BFECAC: MemLdRfVar from_stack_1.global_92
  loc_BFECAF: FLdPr Me
  loc_BFECB2: MemLdStr global_88
  loc_BFECB5: FLdPr Me
  loc_BFECB8: MemLdStr global_84
  loc_BFECBB: FLdPr Me
  loc_BFECBE: MemLdStr global_80
  loc_BFECC1: Ary1LdPr
  loc_BFECC2: MemLdStr global_4
  loc_BFECC5: Ary1LdPr
  loc_BFECC6: MemLdStr global_4
  loc_BFECC9: LitI2_Byte 1
  loc_BFECCB: FnUBound
  loc_BFECCD: ForI4 var_288
  loc_BFECD3: FLdPr Me
  loc_BFECD6: MemLdStr global_92
  loc_BFECD9: FLdPr Me
  loc_BFECDC: MemLdStr global_88
  loc_BFECDF: FLdPr Me
  loc_BFECE2: MemLdStr global_84
  loc_BFECE5: FLdPr Me
  loc_BFECE8: MemLdStr global_80
  loc_BFECEB: Ary1LdPr
  loc_BFECEC: MemLdStr global_4
  loc_BFECEF: Ary1LdPr
  loc_BFECF0: MemLdStr global_4
  loc_BFECF3: Ary1LdPr
  loc_BFECF4: MemLdStr global_8
  loc_BFECF7: LitI2_Byte 1
  loc_BFECF9: FnUBound
  loc_BFECFB: FLdPr Me
  loc_BFECFE: MemLdStr global_92
  loc_BFED01: FLdPr Me
  loc_BFED04: MemLdStr global_88
  loc_BFED07: FLdPr Me
  loc_BFED0A: MemLdStr global_84
  loc_BFED0D: FLdPr Me
  loc_BFED10: MemLdStr global_80
  loc_BFED13: Ary1LdPr
  loc_BFED14: MemLdStr global_4
  loc_BFED17: Ary1LdPr
  loc_BFED18: MemLdStr global_4
  loc_BFED1B: Ary1LdPr
  loc_BFED1C: MemStI4 global_12
  loc_BFED1F: FLdPr Me
  loc_BFED22: MemLdStr global_88
  loc_BFED25: FLdPr Me
  loc_BFED28: MemLdStr global_84
  loc_BFED2B: FLdPr Me
  loc_BFED2E: MemLdStr global_80
  loc_BFED31: Ary1LdPr
  loc_BFED32: MemLdStr global_4
  loc_BFED35: Ary1LdPr
  loc_BFED36: MemLdStr global_8
  loc_BFED39: FLdPr Me
  loc_BFED3C: MemLdStr global_92
  loc_BFED3F: FLdPr Me
  loc_BFED42: MemLdStr global_88
  loc_BFED45: FLdPr Me
  loc_BFED48: MemLdStr global_84
  loc_BFED4B: FLdPr Me
  loc_BFED4E: MemLdStr global_80
  loc_BFED51: Ary1LdPr
  loc_BFED52: MemLdStr global_4
  loc_BFED55: Ary1LdPr
  loc_BFED56: MemLdStr global_4
  loc_BFED59: Ary1LdPr
  loc_BFED5A: MemLdStr global_12
  loc_BFED5D: AddI4
  loc_BFED5E: FLdPr Me
  loc_BFED61: MemLdStr global_88
  loc_BFED64: FLdPr Me
  loc_BFED67: MemLdStr global_84
  loc_BFED6A: FLdPr Me
  loc_BFED6D: MemLdStr global_80
  loc_BFED70: Ary1LdPr
  loc_BFED71: MemLdStr global_4
  loc_BFED74: Ary1LdPr
  loc_BFED75: MemStI4 global_8
  loc_BFED78: FLdPr Me
  loc_BFED7B: MemLdRfVar from_stack_1.global_92
  loc_BFED7E: NextI4 var_288, loc_BFECD3
  loc_BFED83: FLdPr Me
  loc_BFED86: MemLdStr global_84
  loc_BFED89: FLdPr Me
  loc_BFED8C: MemLdStr global_80
  loc_BFED8F: Ary1LdPr
  loc_BFED90: MemLdStr global_8
  loc_BFED93: FLdPr Me
  loc_BFED96: MemLdStr global_88
  loc_BFED99: FLdPr Me
  loc_BFED9C: MemLdStr global_84
  loc_BFED9F: FLdPr Me
  loc_BFEDA2: MemLdStr global_80
  loc_BFEDA5: Ary1LdPr
  loc_BFEDA6: MemLdStr global_4
  loc_BFEDA9: Ary1LdPr
  loc_BFEDAA: MemLdStr global_8
  loc_BFEDAD: AddI4
  loc_BFEDAE: FLdPr Me
  loc_BFEDB1: MemLdStr global_84
  loc_BFEDB4: FLdPr Me
  loc_BFEDB7: MemLdStr global_80
  loc_BFEDBA: Ary1LdPr
  loc_BFEDBB: MemStI4 global_8
  loc_BFEDBE: FLdPr Me
  loc_BFEDC1: MemLdRfVar from_stack_1.global_88
  loc_BFEDC4: NextI4 var_280, loc_BFECA4
  loc_BFEDC9: FLdPr Me
  loc_BFEDCC: MemLdRfVar from_stack_1.global_84
  loc_BFEDCF: NextI4 var_278, loc_BFEC7F
  loc_BFEDD4: LitVar_FALSE
  loc_BFEDD8: PopAdLdVar
  loc_BFEDD9: FLdPr Me
  loc_BFEDDC: VCallAd Control_ID_pbar
  loc_BFEDDF: FStAdFunc var_B0
  loc_BFEDE2: FLdPr var_B0
  loc_BFEDE5: LateIdSt
  loc_BFEDEA: FFree1Ad var_B0
  loc_BFEDED: LitI2_Byte &HFF
  loc_BFEDEF: FLdPr Me
  loc_BFEDF2: MemStI2 bGenerado
  loc_BFEDF5: LitI4 0
  loc_BFEDFA: CI2I4
  loc_BFEDFB: FLdPr Me
  loc_BFEDFE: Me.MousePointer = from_stack_1
  loc_BFEE03: LitVarStr var_9C, vbNullString
  loc_BFEE08: PopAdLdVar
  loc_BFEE09: FLdPr Me
  loc_BFEE0C: VCallAd Control_ID_statusBar
  loc_BFEE0F: FStAdFunc var_B0
  loc_BFEE12: FLdPr var_B0
  loc_BFEE15: LateIdSt
  loc_BFEE1A: FFree1Ad var_B0
  loc_BFEE1D: ExitProcHresult
  loc_BFEE1E: FLdR8 arg_5803
End Sub

Public Sub GeneraHTML() 'B69E90
  'Data Table: 4F08D0
  loc_B69A2C: FLdRfVar var_88
  loc_B69A2F: LitI2_Byte 0
  loc_B69A31: LitI2_Byte &HFF
  loc_B69A33: ImpAdLdI4 MemVar_D93C84
  loc_B69A36: FLdPr Me
  loc_B69A39: MemLdRfVar from_stack_1.global_56
  loc_B69A3C: NewIfNullPr IFileSystem3
  loc_B69A3F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B69A44: ILdRf var_88
  loc_B69A47: FLdPr Me
  loc_B69A4A: MemStVarAd
  loc_B69A4E: FFree1Ad var_88
  loc_B69A51: LitI2_Byte &HFF
  loc_B69A53: ImpAdStI2 MemVar_D93C8A
  loc_B69A56: Call Proc_204_35_BEDCB8()
  loc_B69A5B: LitI4 1
  loc_B69A60: FLdPr Me
  loc_B69A63: MemLdRfVar from_stack_1.global_84
  loc_B69A66: FLdPr Me
  loc_B69A69: MemLdStr global_80
  loc_B69A6C: LitI2_Byte 1
  loc_B69A6E: FnUBound
  loc_B69A70: ForI4 var_90
  loc_B69A76: FLdPr Me
  loc_B69A79: MemLdStr global_84
  loc_B69A7C: FLdPr Me
  loc_B69A7F: MemLdStr global_80
  loc_B69A82: AryLock
  loc_B69A85: Ary1LdRf
  loc_B69A86: FStR4 var_98
  loc_B69A89: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B69A8E: PopAdLdVar
  loc_B69A8F: FLdPr Me
  loc_B69A92: MemLdRfVar from_stack_1.global_60
  loc_B69A95: LdPrVar
  loc_B69A97: LateMemCall
  loc_B69A9D: LitStr "    <td rowspan="""
  loc_B69AA0: FMemLdR4 var_98(8)
  loc_B69AA5: CStrI4
  loc_B69AA7: FStStrNoPop var_BC
  loc_B69AAA: ConcatStr
  loc_B69AAB: FStStrNoPop var_C0
  loc_B69AAE: LitStr """ align=""center"">"
  loc_B69AB1: ConcatStr
  loc_B69AB2: FStStrNoPop var_C4
  loc_B69AB5: FMemLdR4 var_98(0)
  loc_B69ABA: ConcatStr
  loc_B69ABB: FStStrNoPop var_C8
  loc_B69ABE: LitStr "</td>"
  loc_B69AC1: ConcatStr
  loc_B69AC2: CVarStr var_D8
  loc_B69AC5: PopAdLdVar
  loc_B69AC6: FLdPr Me
  loc_B69AC9: MemLdRfVar from_stack_1.global_60
  loc_B69ACC: LdPrVar
  loc_B69ACE: LateMemCall
  loc_B69AD4: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B69ADF: FFree1Var var_D8 = ""
  loc_B69AE2: LitI4 1
  loc_B69AE7: FLdPr Me
  loc_B69AEA: MemLdRfVar from_stack_1.global_88
  loc_B69AED: FMemLdR4 var_98(4)
  loc_B69AF2: LitI2_Byte 1
  loc_B69AF4: FnUBound
  loc_B69AF6: ForI4 var_E0
  loc_B69AFC: FLdPr Me
  loc_B69AFF: MemLdStr global_88
  loc_B69B02: FMemLdR4 var_98(4)
  loc_B69B07: AryLock
  loc_B69B0A: Ary1LdRf
  loc_B69B0B: FStR4 var_E8
  loc_B69B0E: FLdPr Me
  loc_B69B11: MemLdStr global_88
  loc_B69B14: LitI4 1
  loc_B69B19: GtI4
  loc_B69B1A: BranchF loc_B69B31
  loc_B69B1D: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B69B22: PopAdLdVar
  loc_B69B23: FLdPr Me
  loc_B69B26: MemLdRfVar from_stack_1.global_60
  loc_B69B29: LdPrVar
  loc_B69B2B: LateMemCall
  loc_B69B31: LitStr "    <td rowspan="""
  loc_B69B34: FMemLdR4 var_E8(8)
  loc_B69B39: CStrI4
  loc_B69B3B: FStStrNoPop var_BC
  loc_B69B3E: ConcatStr
  loc_B69B3F: FStStrNoPop var_C0
  loc_B69B42: LitStr """ align=""right"">"
  loc_B69B45: ConcatStr
  loc_B69B46: FStStrNoPop var_C4
  loc_B69B49: FMemLdR4 var_E8(0)
  loc_B69B4E: ConcatStr
  loc_B69B4F: FStStrNoPop var_C8
  loc_B69B52: LitStr "</td>"
  loc_B69B55: ConcatStr
  loc_B69B56: CVarStr var_D8
  loc_B69B59: PopAdLdVar
  loc_B69B5A: FLdPr Me
  loc_B69B5D: MemLdRfVar from_stack_1.global_60
  loc_B69B60: LdPrVar
  loc_B69B62: LateMemCall
  loc_B69B68: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B69B73: FFree1Var var_D8 = ""
  loc_B69B76: LitI4 1
  loc_B69B7B: FLdPr Me
  loc_B69B7E: MemLdRfVar from_stack_1.global_92
  loc_B69B81: FMemLdR4 var_E8(4)
  loc_B69B86: LitI2_Byte 1
  loc_B69B88: FnUBound
  loc_B69B8A: ForI4 var_F0
  loc_B69B90: FLdPr Me
  loc_B69B93: MemLdStr global_92
  loc_B69B96: FMemLdR4 var_E8(4)
  loc_B69B9B: AryLock
  loc_B69B9E: Ary1LdRf
  loc_B69B9F: FStR4 var_F8
  loc_B69BA2: FLdPr Me
  loc_B69BA5: MemLdStr global_92
  loc_B69BA8: LitI4 1
  loc_B69BAD: GtI4
  loc_B69BAE: BranchF loc_B69BC5
  loc_B69BB1: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B69BB6: PopAdLdVar
  loc_B69BB7: FLdPr Me
  loc_B69BBA: MemLdRfVar from_stack_1.global_60
  loc_B69BBD: LdPrVar
  loc_B69BBF: LateMemCall
  loc_B69BC5: LitStr "    <td rowspan="""
  loc_B69BC8: FMemLdR4 var_F8(12)
  loc_B69BCD: CStrI4
  loc_B69BCF: FStStrNoPop var_BC
  loc_B69BD2: ConcatStr
  loc_B69BD3: FStStrNoPop var_C0
  loc_B69BD6: LitStr """ align=""right"">"
  loc_B69BD9: ConcatStr
  loc_B69BDA: FStStrNoPop var_C4
  loc_B69BDD: FMemLdR4 var_F8(0)
  loc_B69BE2: ConcatStr
  loc_B69BE3: FStStrNoPop var_C8
  loc_B69BE6: LitStr "</td>"
  loc_B69BE9: ConcatStr
  loc_B69BEA: CVarStr var_D8
  loc_B69BED: PopAdLdVar
  loc_B69BEE: FLdPr Me
  loc_B69BF1: MemLdRfVar from_stack_1.global_60
  loc_B69BF4: LdPrVar
  loc_B69BF6: LateMemCall
  loc_B69BFC: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B69C07: FFree1Var var_D8 = ""
  loc_B69C0A: LitStr "    <td rowspan="""
  loc_B69C0D: FMemLdR4 var_F8(12)
  loc_B69C12: CStrI4
  loc_B69C14: FStStrNoPop var_BC
  loc_B69C17: ConcatStr
  loc_B69C18: FStStrNoPop var_C0
  loc_B69C1B: LitStr """ align=""left"">"
  loc_B69C1E: ConcatStr
  loc_B69C1F: FStStrNoPop var_C4
  loc_B69C22: FMemLdR4 var_F8(4)
  loc_B69C27: ConcatStr
  loc_B69C28: FStStrNoPop var_C8
  loc_B69C2B: LitStr "</td>"
  loc_B69C2E: ConcatStr
  loc_B69C2F: CVarStr var_D8
  loc_B69C32: PopAdLdVar
  loc_B69C33: FLdPr Me
  loc_B69C36: MemLdRfVar from_stack_1.global_60
  loc_B69C39: LdPrVar
  loc_B69C3B: LateMemCall
  loc_B69C41: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_B69C4C: FFree1Var var_D8 = ""
  loc_B69C4F: LitI4 1
  loc_B69C54: FLdPr Me
  loc_B69C57: MemLdRfVar from_stack_1.global_96
  loc_B69C5A: FMemLdR4 var_F8(8)
  loc_B69C5F: LitI2_Byte 1
  loc_B69C61: FnUBound
  loc_B69C63: ForI4 var_100
  loc_B69C69: FLdPr Me
  loc_B69C6C: MemLdStr global_96
  loc_B69C6F: FMemLdR4 var_F8(8)
  loc_B69C74: AryLock
  loc_B69C77: Ary1LdRf
  loc_B69C78: FStR4 var_108
  loc_B69C7B: FLdPr Me
  loc_B69C7E: MemLdStr global_96
  loc_B69C81: LitI4 1
  loc_B69C86: GtI4
  loc_B69C87: BranchF loc_B69C9E
  loc_B69C8A: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B69C8F: PopAdLdVar
  loc_B69C90: FLdPr Me
  loc_B69C93: MemLdRfVar from_stack_1.global_60
  loc_B69C96: LdPrVar
  loc_B69C98: LateMemCall
  loc_B69C9E: LitStr vbNullString
  loc_B69CA1: LitI2_Byte 0
  loc_B69CA3: LitI2_Byte 0
  loc_B69CA5: LitI2_Byte 0
  loc_B69CA7: LitStr "right"
  loc_B69CAA: FMemLdR4 var_108(0)
  loc_B69CAF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B69CB4: CVarStr var_D8
  loc_B69CB7: PopAdLdVar
  loc_B69CB8: FLdPr Me
  loc_B69CBB: MemLdRfVar from_stack_1.global_60
  loc_B69CBE: LdPrVar
  loc_B69CC0: LateMemCall
  loc_B69CC6: FFree1Var var_D8 = ""
  loc_B69CC9: LitStr vbNullString
  loc_B69CCC: LitI2_Byte 0
  loc_B69CCE: LitI2_Byte 0
  loc_B69CD0: LitI2_Byte 0
  loc_B69CD2: LitStr "right"
  loc_B69CD5: FMemLdR4 var_108(4)
  loc_B69CDA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B69CDF: CVarStr var_D8
  loc_B69CE2: PopAdLdVar
  loc_B69CE3: FLdPr Me
  loc_B69CE6: MemLdRfVar from_stack_1.global_60
  loc_B69CE9: LdPrVar
  loc_B69CEB: LateMemCall
  loc_B69CF1: FFree1Var var_D8 = ""
  loc_B69CF4: LitStr vbNullString
  loc_B69CF7: LitI2_Byte 0
  loc_B69CF9: LitI2_Byte 0
  loc_B69CFB: LitI2_Byte 0
  loc_B69CFD: LitStr "right"
  loc_B69D00: FMemLdR4 var_108(8)
  loc_B69D05: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B69D0A: CVarStr var_D8
  loc_B69D0D: PopAdLdVar
  loc_B69D0E: FLdPr Me
  loc_B69D11: MemLdRfVar from_stack_1.global_60
  loc_B69D14: LdPrVar
  loc_B69D16: LateMemCall
  loc_B69D1C: FFree1Var var_D8 = ""
  loc_B69D1F: LitStr vbNullString
  loc_B69D22: LitI2_Byte 0
  loc_B69D24: LitI2_Byte 0
  loc_B69D26: LitI2_Byte 0
  loc_B69D28: LitStr "left"
  loc_B69D2B: FMemLdR4 var_108(12)
  loc_B69D30: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B69D35: CVarStr var_D8
  loc_B69D38: PopAdLdVar
  loc_B69D39: FLdPr Me
  loc_B69D3C: MemLdRfVar from_stack_1.global_60
  loc_B69D3F: LdPrVar
  loc_B69D41: LateMemCall
  loc_B69D47: FFree1Var var_D8 = ""
  loc_B69D4A: LitStr vbNullString
  loc_B69D4D: LitI2_Byte 0
  loc_B69D4F: LitI2_Byte 0
  loc_B69D51: LitI2_Byte 0
  loc_B69D53: LitStr "left"
  loc_B69D56: FMemLdR4 var_108(16)
  loc_B69D5B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B69D60: CVarStr var_D8
  loc_B69D63: PopAdLdVar
  loc_B69D64: FLdPr Me
  loc_B69D67: MemLdRfVar from_stack_1.global_60
  loc_B69D6A: LdPrVar
  loc_B69D6C: LateMemCall
  loc_B69D72: FFree1Var var_D8 = ""
  loc_B69D75: LitStr vbNullString
  loc_B69D78: LitI2_Byte 0
  loc_B69D7A: LitI2_Byte 0
  loc_B69D7C: LitI2_Byte 0
  loc_B69D7E: LitStr "right"
  loc_B69D81: FMemLdR4 var_108(20)
  loc_B69D86: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B69D8B: CVarStr var_D8
  loc_B69D8E: PopAdLdVar
  loc_B69D8F: FLdPr Me
  loc_B69D92: MemLdRfVar from_stack_1.global_60
  loc_B69D95: LdPrVar
  loc_B69D97: LateMemCall
  loc_B69D9D: FFree1Var var_D8 = ""
  loc_B69DA0: LitI4 0
  loc_B69DA5: FStR4 var_108
  loc_B69DA8: AryUnlock
  loc_B69DAB: LitVarStr var_A8, "     </tr>"
  loc_B69DB0: PopAdLdVar
  loc_B69DB1: FLdPr Me
  loc_B69DB4: MemLdRfVar from_stack_1.global_60
  loc_B69DB7: LdPrVar
  loc_B69DB9: LateMemCall
  loc_B69DBF: FLdPr Me
  loc_B69DC2: MemLdRfVar from_stack_1.global_96
  loc_B69DC5: NextI4 var_100, loc_B69C69
  loc_B69DCA: LitI4 0
  loc_B69DCF: FStR4 var_F8
  loc_B69DD2: AryUnlock
  loc_B69DD5: FLdPr Me
  loc_B69DD8: MemLdRfVar from_stack_1.global_92
  loc_B69DDB: NextI4 var_F0, loc_B69B90
  loc_B69DE0: LitI4 0
  loc_B69DE5: FStR4 var_E8
  loc_B69DE8: AryUnlock
  loc_B69DEB: FLdPr Me
  loc_B69DEE: MemLdRfVar from_stack_1.global_88
  loc_B69DF1: NextI4 var_E0, loc_B69AFC
  loc_B69DF6: LitI4 0
  loc_B69DFB: FStR4 var_98
  loc_B69DFE: AryUnlock
  loc_B69E01: FLdPr Me
  loc_B69E04: MemLdRfVar from_stack_1.global_84
  loc_B69E07: NextI4 var_90, loc_B69A76
  loc_B69E0C: LitVarStr var_A8, "  <tr align=""right"" class=""Totales"">"
  loc_B69E11: PopAdLdVar
  loc_B69E12: FLdPr Me
  loc_B69E15: MemLdRfVar from_stack_1.global_60
  loc_B69E18: LdPrVar
  loc_B69E1A: LateMemCall
  loc_B69E20: LitVarStr var_A8, "    <th colspan=""9"">TOTAL:</th>"
  loc_B69E25: PopAdLdVar
  loc_B69E26: FLdPr Me
  loc_B69E29: MemLdRfVar from_stack_1.global_60
  loc_B69E2C: LdPrVar
  loc_B69E2E: LateMemCall
  loc_B69E34: LitStr "    <th>"
  loc_B69E37: FLdPr Me
  loc_B69E3A: MemLdStr global_100
  loc_B69E3D: ConcatStr
  loc_B69E3E: FStStrNoPop var_BC
  loc_B69E41: LitStr "</th>"
  loc_B69E44: ConcatStr
  loc_B69E45: CVarStr var_D8
  loc_B69E48: PopAdLdVar
  loc_B69E49: FLdPr Me
  loc_B69E4C: MemLdRfVar from_stack_1.global_60
  loc_B69E4F: LdPrVar
  loc_B69E51: LateMemCall
  loc_B69E57: FFree1Str var_BC
  loc_B69E5A: FFree1Var var_D8 = ""
  loc_B69E5D: LitVarStr var_A8, "  </tr>"
  loc_B69E62: PopAdLdVar
  loc_B69E63: FLdPr Me
  loc_B69E66: MemLdRfVar from_stack_1.global_60
  loc_B69E69: LdPrVar
  loc_B69E6B: LateMemCall
  loc_B69E71: Call Proc_204_36_A0AED8()
  loc_B69E76: FLdPr Me
  loc_B69E79: MemLdRfVar from_stack_1.global_60
  loc_B69E7C: LdPrVar
  loc_B69E7E: LateMemCall
  loc_B69E84: LitStr vbNullString
  loc_B69E87: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B69E8C: ExitProcHresult
  loc_B69E8D: ILdR8 arg_37D
End Sub

Public Sub GeneraXLS() '9C2C7C
  'Data Table: 4F08D0
  loc_9C2C64: LitI2_Byte 0
  loc_9C2C66: FLdPr Me
  loc_9C2C69: MemStI2 bLogos
  loc_9C2C6C: Call GeneraHTML()
  loc_9C2C71: LitI2_Byte &HFF
  loc_9C2C73: FLdPr Me
  loc_9C2C76: MemStI2 bLogos
  loc_9C2C79: ExitProcHresult
End Sub

Private Function Proc_204_31_A7D778() 'A7D778
  'Data Table: 4F08D0
  loc_A7D6F8: FLdPr Me
  loc_A7D6FB: MemLdStr global_84
  loc_A7D6FE: LitI4 1
  loc_A7D703: AddI4
  loc_A7D704: FLdPr Me
  loc_A7D707: MemStI4 global_84
  loc_A7D70A: LitI4 0
  loc_A7D70F: FLdPr Me
  loc_A7D712: MemStI4 global_88
  loc_A7D715: LitI4 0
  loc_A7D71A: FLdPr Me
  loc_A7D71D: MemLdStr global_84
  loc_A7D720: FLdPr Me
  loc_A7D723: MemLdRfVar from_stack_1.global_80
  loc_A7D726: RedimPreserve
  loc_A7D730: FLdRfVar var_88
  loc_A7D733: FLdPr Me
  loc_A7D736: MemLdRfVar from_stack_1.global_76
  loc_A7D739: NewIfNullPr clsctacte
  loc_A7D73C: from_stack_1 = clsctacte.FealCtct
  loc_A7D741: LitI2_Byte 0
  loc_A7D743: LitVar_Missing var_BC
  loc_A7D746: LitI2_Byte 0
  loc_A7D748: FLdZeroAd var_88
  loc_A7D74B: CVarStr var_9C
  loc_A7D74E: PopAdLdVar
  loc_A7D74F: FLdPr Me
  loc_A7D752: MemLdStr global_84
  loc_A7D755: FLdPr Me
  loc_A7D758: MemLdStr global_80
  loc_A7D75B: AryLock
  loc_A7D75E: Ary1LdPr
  loc_A7D75F: MemLdRfVar from_stack_1.global_0
  loc_A7D762: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_A7D767: AryUnlock
  loc_A7D76A: FFreeVar var_9C = ""
  loc_A7D771: Call Proc_204_32_A887F8()
  loc_A7D776: ExitProcHresult
End Function

Private Function Proc_204_32_A887F8() 'A887F8
  'Data Table: 4F08D0
  loc_A88760: FLdPr Me
  loc_A88763: MemLdStr global_88
  loc_A88766: LitI4 1
  loc_A8876B: AddI4
  loc_A8876C: FLdPr Me
  loc_A8876F: MemStI4 global_88
  loc_A88772: LitI4 0
  loc_A88777: FLdPr Me
  loc_A8877A: MemStI4 global_92
  loc_A8877D: LitI4 0
  loc_A88782: FLdPr Me
  loc_A88785: MemLdStr global_88
  loc_A88788: FLdPr Me
  loc_A8878B: MemLdStr global_84
  loc_A8878E: FLdPr Me
  loc_A88791: MemLdStr global_80
  loc_A88794: Ary1LdPr
  loc_A88795: MemLdRfVar from_stack_1.global_4
  loc_A88798: RedimPreserve
  loc_A887A2: FLdRfVar var_86
  loc_A887A5: FLdPr Me
  loc_A887A8: MemLdRfVar from_stack_1.global_76
  loc_A887AB: NewIfNullPr clsctacte
  loc_A887AE: from_stack_1 = clsctacte.CodiOfic
  loc_A887B3: LitI2_Byte 0
  loc_A887B5: LitVar_Missing var_C0
  loc_A887B8: LitI2_Byte 0
  loc_A887BA: FLdI2 var_86
  loc_A887BD: CVarI2 var_A0
  loc_A887C0: PopAdLdVar
  loc_A887C1: FLdPr Me
  loc_A887C4: MemLdStr global_88
  loc_A887C7: FLdPr Me
  loc_A887CA: MemLdStr global_84
  loc_A887CD: FLdPr Me
  loc_A887D0: MemLdStr global_80
  loc_A887D3: AryLock
  loc_A887D6: Ary1LdPr
  loc_A887D7: MemLdStr global_4
  loc_A887DA: AryLock
  loc_A887DD: Ary1LdPr
  loc_A887DE: MemLdRfVar from_stack_1.global_0
  loc_A887E1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_A887E6: AryUnlock
  loc_A887E9: AryUnlock
  loc_A887EC: FFree1Var var_C0 = ""
  loc_A887EF: Call Proc_204_33_ABF97C()
  loc_A887F4: ExitProcHresult
End Function

Private Function Proc_204_33_ABF97C() 'ABF97C
  'Data Table: 4F08D0
  loc_ABF88C: FLdPr Me
  loc_ABF88F: MemLdStr global_92
  loc_ABF892: LitI4 1
  loc_ABF897: AddI4
  loc_ABF898: FLdPr Me
  loc_ABF89B: MemStI4 global_92
  loc_ABF89E: LitI4 0
  loc_ABF8A3: FLdPr Me
  loc_ABF8A6: MemStI4 global_96
  loc_ABF8A9: LitI4 0
  loc_ABF8AE: FLdPr Me
  loc_ABF8B1: MemLdStr global_92
  loc_ABF8B4: FLdPr Me
  loc_ABF8B7: MemLdStr global_88
  loc_ABF8BA: FLdPr Me
  loc_ABF8BD: MemLdStr global_84
  loc_ABF8C0: FLdPr Me
  loc_ABF8C3: MemLdStr global_80
  loc_ABF8C6: Ary1LdPr
  loc_ABF8C7: MemLdStr global_4
  loc_ABF8CA: Ary1LdPr
  loc_ABF8CB: MemLdRfVar from_stack_1.global_4
  loc_ABF8CE: RedimPreserve
  loc_ABF8D8: FLdPr Me
  loc_ABF8DB: MemLdStr global_92
  loc_ABF8DE: FLdPr Me
  loc_ABF8E1: MemLdStr global_88
  loc_ABF8E4: FLdPr Me
  loc_ABF8E7: MemLdStr global_84
  loc_ABF8EA: FLdPr Me
  loc_ABF8ED: MemLdStr global_80
  loc_ABF8F0: AryLock
  loc_ABF8F3: Ary1LdPr
  loc_ABF8F4: MemLdStr global_4
  loc_ABF8F7: AryLock
  loc_ABF8FA: Ary1LdPr
  loc_ABF8FB: MemLdStr global_4
  loc_ABF8FE: AryLock
  loc_ABF901: Ary1LdRf
  loc_ABF902: FStR4 var_94
  loc_ABF905: FLdRfVar var_98
  loc_ABF908: FLdPr Me
  loc_ABF90B: MemLdRfVar from_stack_1.global_76
  loc_ABF90E: NewIfNullPr clsctacte
  loc_ABF911: from_stack_1 = clsctacte.CuenCtct
  loc_ABF916: LitI2_Byte 0
  loc_ABF918: LitVar_Missing var_C8
  loc_ABF91B: LitI2_Byte 0
  loc_ABF91D: FLdZeroAd var_98
  loc_ABF920: CVarStr var_A8
  loc_ABF923: PopAdLdVar
  loc_ABF924: FMemLdRf unk_4F083D
  loc_ABF929: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ABF92E: FFreeVar var_A8 = ""
  loc_ABF935: FLdRfVar var_A8
  loc_ABF938: FLdPr Me
  loc_ABF93B: MemLdRfVar from_stack_1.global_76
  loc_ABF93E: NewIfNullPr clsctacte
  loc_ABF941: from_stack_1 = clsctacte.DetaPers
  loc_ABF946: LitI2_Byte 0
  loc_ABF948: LitVar_Missing var_C8
  loc_ABF94B: LitI2_Byte 0
  loc_ABF94D: FLdVar var_A8
  loc_ABF951: FMemLdRf unk_4F083D
  loc_ABF956: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ABF95B: FFreeVar var_A8 = ""
  loc_ABF962: LitI4 0
  loc_ABF967: FStR4 var_94
  loc_ABF96A: AryUnlock
  loc_ABF96D: AryUnlock
  loc_ABF970: AryUnlock
  loc_ABF973: Call Proc_204_34_B12288()
  loc_ABF978: ExitProcHresult
  loc_ABF979: PopTmpLdAdStr arg_334
End Function

Private Function Proc_204_34_B12288() 'B12288
  'Data Table: 4F08D0
  loc_B12044: FLdPr Me
  loc_B12047: MemLdStr global_96
  loc_B1204A: LitI4 1
  loc_B1204F: AddI4
  loc_B12050: FLdPr Me
  loc_B12053: MemStI4 global_96
  loc_B12056: LitI4 0
  loc_B1205B: FLdPr Me
  loc_B1205E: MemLdStr global_96
  loc_B12061: FLdPr Me
  loc_B12064: MemLdStr global_92
  loc_B12067: FLdPr Me
  loc_B1206A: MemLdStr global_88
  loc_B1206D: FLdPr Me
  loc_B12070: MemLdStr global_84
  loc_B12073: FLdPr Me
  loc_B12076: MemLdStr global_80
  loc_B12079: Ary1LdPr
  loc_B1207A: MemLdStr global_4
  loc_B1207D: Ary1LdPr
  loc_B1207E: MemLdStr global_4
  loc_B12081: Ary1LdPr
  loc_B12082: MemLdRfVar from_stack_1.global_8
  loc_B12085: RedimPreserve
  loc_B1208F: FLdPr Me
  loc_B12092: MemLdStr global_96
  loc_B12095: FLdPr Me
  loc_B12098: MemLdStr global_92
  loc_B1209B: FLdPr Me
  loc_B1209E: MemLdStr global_88
  loc_B120A1: FLdPr Me
  loc_B120A4: MemLdStr global_84
  loc_B120A7: FLdPr Me
  loc_B120AA: MemLdStr global_80
  loc_B120AD: AryLock
  loc_B120B0: Ary1LdPr
  loc_B120B1: MemLdStr global_4
  loc_B120B4: AryLock
  loc_B120B7: Ary1LdPr
  loc_B120B8: MemLdStr global_4
  loc_B120BB: AryLock
  loc_B120BE: Ary1LdPr
  loc_B120BF: MemLdStr global_8
  loc_B120C2: AryLock
  loc_B120C5: Ary1LdRf
  loc_B120C6: FStR4 var_98
  loc_B120C9: FLdRfVar var_9A
  loc_B120CC: FLdPr Me
  loc_B120CF: MemLdRfVar from_stack_1.global_76
  loc_B120D2: NewIfNullPr clsctacte
  loc_B120D5: from_stack_1 = clsctacte.PeriCtct
  loc_B120DA: LitI2_Byte 0
  loc_B120DC: LitVar_Missing var_CC
  loc_B120DF: LitI2_Byte 0
  loc_B120E1: FLdI2 var_9A
  loc_B120E4: CVarI2 var_AC
  loc_B120E7: PopAdLdVar
  loc_B120E8: FMemLdRf unk_4F0839
  loc_B120ED: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B120F2: FFree1Var var_CC = ""
  loc_B120F5: FLdRfVar var_9A
  loc_B120F8: FLdPr Me
  loc_B120FB: MemLdRfVar from_stack_1.global_76
  loc_B120FE: NewIfNullPr clsctacte
  loc_B12101: from_stack_1 = clsctacte.BimeCtct
  loc_B12106: LitI2_Byte 0
  loc_B12108: LitVar_Missing var_CC
  loc_B1210B: LitI2_Byte 0
  loc_B1210D: FLdI2 var_9A
  loc_B12110: CVarI2 var_AC
  loc_B12113: PopAdLdVar
  loc_B12114: FMemLdRf unk_4F0839
  loc_B12119: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1211E: FFree1Var var_CC = ""
  loc_B12121: FLdRfVar var_D0
  loc_B12124: FLdPr Me
  loc_B12127: MemLdRfVar from_stack_1.global_76
  loc_B1212A: NewIfNullPr clsctacte
  loc_B1212D: from_stack_1 = clsctacte.ExpeCtct
  loc_B12132: LitI2_Byte 0
  loc_B12134: LitVar_Missing var_E0
  loc_B12137: LitI2_Byte 0
  loc_B12139: FLdZeroAd var_D0
  loc_B1213C: CVarStr var_CC
  loc_B1213F: PopAdLdVar
  loc_B12140: FMemLdRf unk_4F0839
  loc_B12145: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1214A: FFreeVar var_CC = ""
  loc_B12151: FLdRfVar var_D0
  loc_B12154: FLdPr Me
  loc_B12157: MemLdRfVar from_stack_1.global_76
  loc_B1215A: NewIfNullPr clsctacte
  loc_B1215D: from_stack_1 = clsctacte.DetaCtct
  loc_B12162: LitI2_Byte 0
  loc_B12164: LitVar_Missing var_E0
  loc_B12167: LitI2_Byte 0
  loc_B12169: FLdZeroAd var_D0
  loc_B1216C: CVarStr var_CC
  loc_B1216F: PopAdLdVar
  loc_B12170: FMemLdRf unk_4F0839
  loc_B12175: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1217A: FFreeVar var_CC = ""
  loc_B12181: LitStr "Municipalidad de Guaymallén"
  loc_B12184: LitStr "Municipalidad de Guaymallén"
  loc_B12187: EqStr
  loc_B12189: LitStr "Municipalidad de Guaymallén"
  loc_B1218C: LitStr "Municipalidad de La Paz"
  loc_B1218F: EqStr
  loc_B12191: OrI4
  loc_B12192: LitStr "Municipalidad de Guaymallén"
  loc_B12195: LitStr "Municipalidad de San Martin"
  loc_B12198: EqStr
  loc_B1219A: OrI4
  loc_B1219B: LitStr "Municipalidad de Guaymallén"
  loc_B1219E: LitStr "Municipalidad de Santa Rosa"
  loc_B121A1: EqStr
  loc_B121A3: OrI4
  loc_B121A4: BranchF loc_B121FE
  loc_B121A7: FLdRfVar var_EC
  loc_B121AA: LitVarStr var_AC, "AltaUsua"
  loc_B121AF: PopAdLdVar
  loc_B121B0: FLdRfVar var_E8
  loc_B121B3: FLdRfVar var_E4
  loc_B121B6: FLdPr Me
  loc_B121B9: MemLdRfVar from_stack_1.global_76
  loc_B121BC: NewIfNullPr clsctacte
  loc_B121BF: from_stack_1v = clsctacte.RsFrmGet()
  loc_B121C4: FLdPr var_E4
  loc_B121C7:  = Me.Fields
  loc_B121CC: FLdPr var_E8
  loc_B121CF: from_stack_2 = Me.Item(from_stack_1)
  loc_B121D4: LitI2_Byte 0
  loc_B121D6: LitVar_Missing var_E0
  loc_B121D9: LitI2_Byte 0
  loc_B121DB: FLdZeroAd var_EC
  loc_B121DE: CVarAd
  loc_B121E2: PopAdLdVar
  loc_B121E3: FMemLdRf unk_4F0839
  loc_B121E8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B121ED: FFreeAd var_E4 = ""
  loc_B121F4: FFreeVar var_CC = ""
  loc_B121FB: Branch loc_B1222E
  loc_B121FE: FLdRfVar var_D0
  loc_B12201: FLdPr Me
  loc_B12204: MemLdRfVar from_stack_1.global_76
  loc_B12207: NewIfNullPr clsctacte
  loc_B1220A: from_stack_1 = clsctacte.CodiUsua
  loc_B1220F: LitI2_Byte 0
  loc_B12211: LitVar_Missing var_E0
  loc_B12214: LitI2_Byte 0
  loc_B12216: FLdZeroAd var_D0
  loc_B12219: CVarStr var_CC
  loc_B1221C: PopAdLdVar
  loc_B1221D: FMemLdRf unk_4F0839
  loc_B12222: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B12227: FFreeVar var_CC = ""
  loc_B1222E: FLdRfVar var_CC
  loc_B12231: FLdPr Me
  loc_B12234: MemLdRfVar from_stack_1.global_76
  loc_B12237: NewIfNullPr clsctacte
  loc_B1223A: from_stack_1 = clsctacte.ImpoCtct
  loc_B1223F: LitI2_Byte 0
  loc_B12241: FLdPr Me
  loc_B12244: MemLdRfVar from_stack_1.global_100
  loc_B12247: CVarRef
  loc_B1224C: LitI2_Byte &HFF
  loc_B1224E: FLdVar var_CC
  loc_B12252: FMemLdRf unk_4F0839
  loc_B12257: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B1225C: FFree1Var var_CC = ""
  loc_B1225F: LitI4 0
  loc_B12264: FStR4 var_98
  loc_B12267: AryUnlock
  loc_B1226A: AryUnlock
  loc_B1226D: AryUnlock
  loc_B12270: AryUnlock
  loc_B12273: LitI2_Byte 1
  loc_B12275: PopTmpLdAd2 var_9A
  loc_B12278: FLdPr Me
  loc_B1227B: MemLdRfVar from_stack_1.global_76
  loc_B1227E: NewIfNullPr clsctacte
  loc_B12281: Call clsctacte.Move(from_stack_1v)
  loc_B12286: ExitProcHresult
End Function

Private Function Proc_204_35_BEDCB8() 'BEDCB8
  'Data Table: 4F08D0
  loc_BED498: LitVarStr var_94, "<html>"
  loc_BED49D: PopAdLdVar
  loc_BED49E: FLdPr Me
  loc_BED4A1: MemLdRfVar from_stack_1.global_60
  loc_BED4A4: LdPrVar
  loc_BED4A6: LateMemCall
  loc_BED4AC: LitVarStr var_94, "<head>"
  loc_BED4B1: PopAdLdVar
  loc_BED4B2: FLdPr Me
  loc_BED4B5: MemLdRfVar from_stack_1.global_60
  loc_BED4B8: LdPrVar
  loc_BED4BA: LateMemCall
  loc_BED4C0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BED4C5: PopAdLdVar
  loc_BED4C6: FLdPr Me
  loc_BED4C9: MemLdRfVar from_stack_1.global_60
  loc_BED4CC: LdPrVar
  loc_BED4CE: LateMemCall
  loc_BED4D4: LitStr "<title>"
  loc_BED4D7: FLdRfVar var_A8
  loc_BED4DA: FLdPr Me
  loc_BED4DD:  = Me.Caption
  loc_BED4E2: ILdRf var_A8
  loc_BED4E5: ConcatStr
  loc_BED4E6: FStStrNoPop var_AC
  loc_BED4E9: LitStr "</title>"
  loc_BED4EC: ConcatStr
  loc_BED4ED: CVarStr var_BC
  loc_BED4F0: PopAdLdVar
  loc_BED4F1: FLdPr Me
  loc_BED4F4: MemLdRfVar from_stack_1.global_60
  loc_BED4F7: LdPrVar
  loc_BED4F9: LateMemCall
  loc_BED4FF: FFreeStr var_A8 = ""
  loc_BED506: FFree1Var var_BC = ""
  loc_BED509: LitVarStr var_94, "<style type=""text/css"">"
  loc_BED50E: PopAdLdVar
  loc_BED50F: FLdPr Me
  loc_BED512: MemLdRfVar from_stack_1.global_60
  loc_BED515: LdPrVar
  loc_BED517: LateMemCall
  loc_BED51D: LitVarStr var_94, ".Titulo1 {"
  loc_BED522: PopAdLdVar
  loc_BED523: FLdPr Me
  loc_BED526: MemLdRfVar from_stack_1.global_60
  loc_BED529: LdPrVar
  loc_BED52B: LateMemCall
  loc_BED531: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BED536: PopAdLdVar
  loc_BED537: FLdPr Me
  loc_BED53A: MemLdRfVar from_stack_1.global_60
  loc_BED53D: LdPrVar
  loc_BED53F: LateMemCall
  loc_BED545: LitVarStr var_94, " font-size: 18px;"
  loc_BED54A: PopAdLdVar
  loc_BED54B: FLdPr Me
  loc_BED54E: MemLdRfVar from_stack_1.global_60
  loc_BED551: LdPrVar
  loc_BED553: LateMemCall
  loc_BED559: LitVarStr var_94, " font-weight: bold;"
  loc_BED55E: PopAdLdVar
  loc_BED55F: FLdPr Me
  loc_BED562: MemLdRfVar from_stack_1.global_60
  loc_BED565: LdPrVar
  loc_BED567: LateMemCall
  loc_BED56D: LitVarStr var_94, "}"
  loc_BED572: PopAdLdVar
  loc_BED573: FLdPr Me
  loc_BED576: MemLdRfVar from_stack_1.global_60
  loc_BED579: LdPrVar
  loc_BED57B: LateMemCall
  loc_BED581: LitVarStr var_94, ".Titulo2 {"
  loc_BED586: PopAdLdVar
  loc_BED587: FLdPr Me
  loc_BED58A: MemLdRfVar from_stack_1.global_60
  loc_BED58D: LdPrVar
  loc_BED58F: LateMemCall
  loc_BED595: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BED59A: PopAdLdVar
  loc_BED59B: FLdPr Me
  loc_BED59E: MemLdRfVar from_stack_1.global_60
  loc_BED5A1: LdPrVar
  loc_BED5A3: LateMemCall
  loc_BED5A9: LitVarStr var_94, " font-size: 14px;"
  loc_BED5AE: PopAdLdVar
  loc_BED5AF: FLdPr Me
  loc_BED5B2: MemLdRfVar from_stack_1.global_60
  loc_BED5B5: LdPrVar
  loc_BED5B7: LateMemCall
  loc_BED5BD: LitVarStr var_94, " font-weight: bold;"
  loc_BED5C2: PopAdLdVar
  loc_BED5C3: FLdPr Me
  loc_BED5C6: MemLdRfVar from_stack_1.global_60
  loc_BED5C9: LdPrVar
  loc_BED5CB: LateMemCall
  loc_BED5D1: LitVarStr var_94, "}"
  loc_BED5D6: PopAdLdVar
  loc_BED5D7: FLdPr Me
  loc_BED5DA: MemLdRfVar from_stack_1.global_60
  loc_BED5DD: LdPrVar
  loc_BED5DF: LateMemCall
  loc_BED5E5: LitVarStr var_94, ".Normal {"
  loc_BED5EA: PopAdLdVar
  loc_BED5EB: FLdPr Me
  loc_BED5EE: MemLdRfVar from_stack_1.global_60
  loc_BED5F1: LdPrVar
  loc_BED5F3: LateMemCall
  loc_BED5F9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BED5FE: PopAdLdVar
  loc_BED5FF: FLdPr Me
  loc_BED602: MemLdRfVar from_stack_1.global_60
  loc_BED605: LdPrVar
  loc_BED607: LateMemCall
  loc_BED60D: LitVarStr var_94, " font-size: 12px;"
  loc_BED612: PopAdLdVar
  loc_BED613: FLdPr Me
  loc_BED616: MemLdRfVar from_stack_1.global_60
  loc_BED619: LdPrVar
  loc_BED61B: LateMemCall
  loc_BED621: LitVarStr var_94, " font-style: normal;"
  loc_BED626: PopAdLdVar
  loc_BED627: FLdPr Me
  loc_BED62A: MemLdRfVar from_stack_1.global_60
  loc_BED62D: LdPrVar
  loc_BED62F: LateMemCall
  loc_BED635: LitVarStr var_94, " font-weight: normal;"
  loc_BED63A: PopAdLdVar
  loc_BED63B: FLdPr Me
  loc_BED63E: MemLdRfVar from_stack_1.global_60
  loc_BED641: LdPrVar
  loc_BED643: LateMemCall
  loc_BED649: LitVarStr var_94, " font-variant: normal;"
  loc_BED64E: PopAdLdVar
  loc_BED64F: FLdPr Me
  loc_BED652: MemLdRfVar from_stack_1.global_60
  loc_BED655: LdPrVar
  loc_BED657: LateMemCall
  loc_BED65D: LitVarStr var_94, "}"
  loc_BED662: PopAdLdVar
  loc_BED663: FLdPr Me
  loc_BED666: MemLdRfVar from_stack_1.global_60
  loc_BED669: LdPrVar
  loc_BED66B: LateMemCall
  loc_BED671: LitVarStr var_94, ".Encabezado {"
  loc_BED676: PopAdLdVar
  loc_BED677: FLdPr Me
  loc_BED67A: MemLdRfVar from_stack_1.global_60
  loc_BED67D: LdPrVar
  loc_BED67F: LateMemCall
  loc_BED685: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BED68A: PopAdLdVar
  loc_BED68B: FLdPr Me
  loc_BED68E: MemLdRfVar from_stack_1.global_60
  loc_BED691: LdPrVar
  loc_BED693: LateMemCall
  loc_BED699: LitVarStr var_94, " font-size: 11px;"
  loc_BED69E: PopAdLdVar
  loc_BED69F: FLdPr Me
  loc_BED6A2: MemLdRfVar from_stack_1.global_60
  loc_BED6A5: LdPrVar
  loc_BED6A7: LateMemCall
  loc_BED6AD: LitVarStr var_94, " font-weight: bold;"
  loc_BED6B2: PopAdLdVar
  loc_BED6B3: FLdPr Me
  loc_BED6B6: MemLdRfVar from_stack_1.global_60
  loc_BED6B9: LdPrVar
  loc_BED6BB: LateMemCall
  loc_BED6C1: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BED6C6: PopAdLdVar
  loc_BED6C7: FLdPr Me
  loc_BED6CA: MemLdRfVar from_stack_1.global_60
  loc_BED6CD: LdPrVar
  loc_BED6CF: LateMemCall
  loc_BED6D5: LitVarStr var_94, "}"
  loc_BED6DA: PopAdLdVar
  loc_BED6DB: FLdPr Me
  loc_BED6DE: MemLdRfVar from_stack_1.global_60
  loc_BED6E1: LdPrVar
  loc_BED6E3: LateMemCall
  loc_BED6E9: LitVarStr var_94, ".LineaDato {"
  loc_BED6EE: PopAdLdVar
  loc_BED6EF: FLdPr Me
  loc_BED6F2: MemLdRfVar from_stack_1.global_60
  loc_BED6F5: LdPrVar
  loc_BED6F7: LateMemCall
  loc_BED6FD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BED702: PopAdLdVar
  loc_BED703: FLdPr Me
  loc_BED706: MemLdRfVar from_stack_1.global_60
  loc_BED709: LdPrVar
  loc_BED70B: LateMemCall
  loc_BED711: LitVarStr var_94, " font-size: 10px;"
  loc_BED716: PopAdLdVar
  loc_BED717: FLdPr Me
  loc_BED71A: MemLdRfVar from_stack_1.global_60
  loc_BED71D: LdPrVar
  loc_BED71F: LateMemCall
  loc_BED725: LitVarStr var_94, "}"
  loc_BED72A: PopAdLdVar
  loc_BED72B: FLdPr Me
  loc_BED72E: MemLdRfVar from_stack_1.global_60
  loc_BED731: LdPrVar
  loc_BED733: LateMemCall
  loc_BED739: LitVarStr var_94, ".Totales {"
  loc_BED73E: PopAdLdVar
  loc_BED73F: FLdPr Me
  loc_BED742: MemLdRfVar from_stack_1.global_60
  loc_BED745: LdPrVar
  loc_BED747: LateMemCall
  loc_BED74D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BED752: PopAdLdVar
  loc_BED753: FLdPr Me
  loc_BED756: MemLdRfVar from_stack_1.global_60
  loc_BED759: LdPrVar
  loc_BED75B: LateMemCall
  loc_BED761: LitVarStr var_94, " font-size: 12px;"
  loc_BED766: PopAdLdVar
  loc_BED767: FLdPr Me
  loc_BED76A: MemLdRfVar from_stack_1.global_60
  loc_BED76D: LdPrVar
  loc_BED76F: LateMemCall
  loc_BED775: LitVarStr var_94, " font-weight: bold;"
  loc_BED77A: PopAdLdVar
  loc_BED77B: FLdPr Me
  loc_BED77E: MemLdRfVar from_stack_1.global_60
  loc_BED781: LdPrVar
  loc_BED783: LateMemCall
  loc_BED789: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BED78E: PopAdLdVar
  loc_BED78F: FLdPr Me
  loc_BED792: MemLdRfVar from_stack_1.global_60
  loc_BED795: LdPrVar
  loc_BED797: LateMemCall
  loc_BED79D: LitVarStr var_94, "}"
  loc_BED7A2: PopAdLdVar
  loc_BED7A3: FLdPr Me
  loc_BED7A6: MemLdRfVar from_stack_1.global_60
  loc_BED7A9: LdPrVar
  loc_BED7AB: LateMemCall
  loc_BED7B1: LitVarStr var_94, ".SubTotales {"
  loc_BED7B6: PopAdLdVar
  loc_BED7B7: FLdPr Me
  loc_BED7BA: MemLdRfVar from_stack_1.global_60
  loc_BED7BD: LdPrVar
  loc_BED7BF: LateMemCall
  loc_BED7C5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BED7CA: PopAdLdVar
  loc_BED7CB: FLdPr Me
  loc_BED7CE: MemLdRfVar from_stack_1.global_60
  loc_BED7D1: LdPrVar
  loc_BED7D3: LateMemCall
  loc_BED7D9: LitVarStr var_94, " font-size: 10px;"
  loc_BED7DE: PopAdLdVar
  loc_BED7DF: FLdPr Me
  loc_BED7E2: MemLdRfVar from_stack_1.global_60
  loc_BED7E5: LdPrVar
  loc_BED7E7: LateMemCall
  loc_BED7ED: LitVarStr var_94, " font-weight: bold;"
  loc_BED7F2: PopAdLdVar
  loc_BED7F3: FLdPr Me
  loc_BED7F6: MemLdRfVar from_stack_1.global_60
  loc_BED7F9: LdPrVar
  loc_BED7FB: LateMemCall
  loc_BED801: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BED806: PopAdLdVar
  loc_BED807: FLdPr Me
  loc_BED80A: MemLdRfVar from_stack_1.global_60
  loc_BED80D: LdPrVar
  loc_BED80F: LateMemCall
  loc_BED815: LitVarStr var_94, "}"
  loc_BED81A: PopAdLdVar
  loc_BED81B: FLdPr Me
  loc_BED81E: MemLdRfVar from_stack_1.global_60
  loc_BED821: LdPrVar
  loc_BED823: LateMemCall
  loc_BED829: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BED82E: PopAdLdVar
  loc_BED82F: FLdPr Me
  loc_BED832: MemLdRfVar from_stack_1.global_60
  loc_BED835: LdPrVar
  loc_BED837: LateMemCall
  loc_BED83D: LitVarStr var_94, "</style>"
  loc_BED842: PopAdLdVar
  loc_BED843: FLdPr Me
  loc_BED846: MemLdRfVar from_stack_1.global_60
  loc_BED849: LdPrVar
  loc_BED84B: LateMemCall
  loc_BED851: LitI4 0
  loc_BED856: FStStrCopy var_AC
  loc_BED859: FLdRfVar var_AC
  loc_BED85C: LitI4 0
  loc_BED861: FStStrCopy var_A8
  loc_BED864: FLdRfVar var_A8
  loc_BED867: LitI2_Byte 0
  loc_BED869: PopTmpLdAd2 var_BE
  loc_BED86C: FLdPr Me
  loc_BED86F: MemLdRfVar from_stack_1.global_60
  loc_BED872: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BED877: FFreeStr var_A8 = ""
  loc_BED87E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BED883: PopAdLdVar
  loc_BED884: FLdPr Me
  loc_BED887: MemLdRfVar from_stack_1.global_60
  loc_BED88A: LdPrVar
  loc_BED88C: LateMemCall
  loc_BED892: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BED897: PopAdLdVar
  loc_BED898: FLdPr Me
  loc_BED89B: MemLdRfVar from_stack_1.global_60
  loc_BED89E: LdPrVar
  loc_BED8A0: LateMemCall
  loc_BED8A6: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p> "
  loc_BED8AB: PopAdLdVar
  loc_BED8AC: FLdPr Me
  loc_BED8AF: MemLdRfVar from_stack_1.global_60
  loc_BED8B2: LdPrVar
  loc_BED8B4: LateMemCall
  loc_BED8BA: FLdPr Me
  loc_BED8BD: MemLdI2 bLogos
  loc_BED8C0: BranchF loc_BED91B
  loc_BED8C3: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BED8C6: LitI2_Byte &H5F
  loc_BED8C8: CStrUI1
  loc_BED8CA: FStStrNoPop var_A8
  loc_BED8CD: ConcatStr
  loc_BED8CE: FStStrNoPop var_AC
  loc_BED8D1: LitStr """ height="""
  loc_BED8D4: ConcatStr
  loc_BED8D5: FStStrNoPop var_C4
  loc_BED8D8: LitI2_Byte &H3C
  loc_BED8DA: CStrUI1
  loc_BED8DC: FStStrNoPop var_C8
  loc_BED8DF: ConcatStr
  loc_BED8E0: FStStrNoPop var_CC
  loc_BED8E3: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BED8E6: ConcatStr
  loc_BED8E7: FStStrNoPop var_D0
  loc_BED8EA: LitStr "Municipalidad de Guaymallén"
  loc_BED8ED: ConcatStr
  loc_BED8EE: FStStrNoPop var_D4
  loc_BED8F1: LitStr "</p>"
  loc_BED8F4: ConcatStr
  loc_BED8F5: CVarStr var_BC
  loc_BED8F8: PopAdLdVar
  loc_BED8F9: FLdPr Me
  loc_BED8FC: MemLdRfVar from_stack_1.global_60
  loc_BED8FF: LdPrVar
  loc_BED901: LateMemCall
  loc_BED907: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BED918: FFree1Var var_BC = ""
  loc_BED91B: LitStr "    <p>"
  loc_BED91E: FLdRfVar var_A8
  loc_BED921: FLdPr Me
  loc_BED924:  = Me.Caption
  loc_BED929: ILdRf var_A8
  loc_BED92C: ConcatStr
  loc_BED92D: FStStrNoPop var_AC
  loc_BED930: LitStr "</p></th>"
  loc_BED933: ConcatStr
  loc_BED934: CVarStr var_BC
  loc_BED937: PopAdLdVar
  loc_BED938: FLdPr Me
  loc_BED93B: MemLdRfVar from_stack_1.global_60
  loc_BED93E: LdPrVar
  loc_BED940: LateMemCall
  loc_BED946: FFreeStr var_A8 = ""
  loc_BED94D: FFree1Var var_BC = ""
  loc_BED950: LitVarStr var_94, "  </tr>"
  loc_BED955: PopAdLdVar
  loc_BED956: FLdPr Me
  loc_BED959: MemLdRfVar from_stack_1.global_60
  loc_BED95C: LdPrVar
  loc_BED95E: LateMemCall
  loc_BED964: LitVarStr var_94, "  <tr>"
  loc_BED969: PopAdLdVar
  loc_BED96A: FLdPr Me
  loc_BED96D: MemLdRfVar from_stack_1.global_60
  loc_BED970: LdPrVar
  loc_BED972: LateMemCall
  loc_BED978: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_BED97D: PopAdLdVar
  loc_BED97E: FLdPr Me
  loc_BED981: MemLdRfVar from_stack_1.global_60
  loc_BED984: LdPrVar
  loc_BED986: LateMemCall
  loc_BED98C: LitVarStr var_94, "  </tr>"
  loc_BED991: PopAdLdVar
  loc_BED992: FLdPr Me
  loc_BED995: MemLdRfVar from_stack_1.global_60
  loc_BED998: LdPrVar
  loc_BED99A: LateMemCall
  loc_BED9A0: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BED9A5: PopAdLdVar
  loc_BED9A6: FLdPr Me
  loc_BED9A9: MemLdRfVar from_stack_1.global_60
  loc_BED9AC: LdPrVar
  loc_BED9AE: LateMemCall
  loc_BED9B4: FLdRfVar var_BE
  loc_BED9B7: FLdPr Me
  loc_BED9BA: VCallAd Control_ID_CredOpt
  loc_BED9BD: FStAdFunc var_D8
  loc_BED9C0: FLdPr var_D8
  loc_BED9C3:  = Me.Value
  loc_BED9C8: FLdI2 var_BE
  loc_BED9CB: LitI2_Byte &HFF
  loc_BED9CD: EqI2
  loc_BED9CE: FFree1Ad var_D8
  loc_BED9D1: BranchF loc_BED9E8
  loc_BED9D4: LitVarStr var_94, "    <td align=""left""><strong>Créditos Manuales</td>"
  loc_BED9D9: PopAdLdVar
  loc_BED9DA: FLdPr Me
  loc_BED9DD: MemLdRfVar from_stack_1.global_60
  loc_BED9E0: LdPrVar
  loc_BED9E2: LateMemCall
  loc_BED9E8: FLdRfVar var_BE
  loc_BED9EB: FLdPr Me
  loc_BED9EE: VCallAd Control_ID_DevolucionOpt
  loc_BED9F1: FStAdFunc var_D8
  loc_BED9F4: FLdPr var_D8
  loc_BED9F7:  = Me.Value
  loc_BED9FC: FLdI2 var_BE
  loc_BED9FF: LitI2_Byte &HFF
  loc_BEDA01: EqI2
  loc_BEDA02: FFree1Ad var_D8
  loc_BEDA05: BranchF loc_BEDA1C
  loc_BEDA08: LitVarStr var_94, "    <td align=""left""><strong>Devolución de Ingresos</td>"
  loc_BEDA0D: PopAdLdVar
  loc_BEDA0E: FLdPr Me
  loc_BEDA11: MemLdRfVar from_stack_1.global_60
  loc_BEDA14: LdPrVar
  loc_BEDA16: LateMemCall
  loc_BEDA1C: FLdRfVar var_BE
  loc_BEDA1F: FLdPr Me
  loc_BEDA22: VCallAd Control_ID_DebiOpt
  loc_BEDA25: FStAdFunc var_D8
  loc_BEDA28: FLdPr var_D8
  loc_BEDA2B:  = Me.Value
  loc_BEDA30: FLdI2 var_BE
  loc_BEDA33: LitI2_Byte &HFF
  loc_BEDA35: EqI2
  loc_BEDA36: FFree1Ad var_D8
  loc_BEDA39: BranchF loc_BEDA50
  loc_BEDA3C: LitVarStr var_94, "    <td align=""left""><strong>Débitos Manuales</td>"
  loc_BEDA41: PopAdLdVar
  loc_BEDA42: FLdPr Me
  loc_BEDA45: MemLdRfVar from_stack_1.global_60
  loc_BEDA48: LdPrVar
  loc_BEDA4A: LateMemCall
  loc_BEDA50: FLdRfVar var_BE
  loc_BEDA53: FLdPr Me
  loc_BEDA56: VCallAd Control_ID_PresOpt
  loc_BEDA59: FStAdFunc var_D8
  loc_BEDA5C: FLdPr var_D8
  loc_BEDA5F:  = Me.Value
  loc_BEDA64: FLdI2 var_BE
  loc_BEDA67: LitI2_Byte &HFF
  loc_BEDA69: EqI2
  loc_BEDA6A: FFree1Ad var_D8
  loc_BEDA6D: BranchF loc_BEDA84
  loc_BEDA70: LitVarStr var_94, "    <td align=""left""><strong>Prescripciones</td>"
  loc_BEDA75: PopAdLdVar
  loc_BEDA76: FLdPr Me
  loc_BEDA79: MemLdRfVar from_stack_1.global_60
  loc_BEDA7C: LdPrVar
  loc_BEDA7E: LateMemCall
  loc_BEDA84: FLdRfVar var_BE
  loc_BEDA87: FLdPr Me
  loc_BEDA8A: VCallAd Control_ID_CondOpt
  loc_BEDA8D: FStAdFunc var_D8
  loc_BEDA90: FLdPr var_D8
  loc_BEDA93:  = Me.Value
  loc_BEDA98: FLdI2 var_BE
  loc_BEDA9B: LitI2_Byte &HFF
  loc_BEDA9D: EqI2
  loc_BEDA9E: FFree1Ad var_D8
  loc_BEDAA1: BranchF loc_BEDAB8
  loc_BEDAA4: LitVarStr var_94, "    <td align=""left""><strong>Condonaciones</td>"
  loc_BEDAA9: PopAdLdVar
  loc_BEDAAA: FLdPr Me
  loc_BEDAAD: MemLdRfVar from_stack_1.global_60
  loc_BEDAB0: LdPrVar
  loc_BEDAB2: LateMemCall
  loc_BEDAB8: FLdRfVar var_BE
  loc_BEDABB: FLdPr Me
  loc_BEDABE: VCallAd Control_ID_ExenOpt
  loc_BEDAC1: FStAdFunc var_D8
  loc_BEDAC4: FLdPr var_D8
  loc_BEDAC7:  = Me.Value
  loc_BEDACC: FLdI2 var_BE
  loc_BEDACF: LitI2_Byte &HFF
  loc_BEDAD1: EqI2
  loc_BEDAD2: FFree1Ad var_D8
  loc_BEDAD5: BranchF loc_BEDAEC
  loc_BEDAD8: LitVarStr var_94, "    <td align=""left""><strong>Exenciones</td>"
  loc_BEDADD: PopAdLdVar
  loc_BEDADE: FLdPr Me
  loc_BEDAE1: MemLdRfVar from_stack_1.global_60
  loc_BEDAE4: LdPrVar
  loc_BEDAE6: LateMemCall
  loc_BEDAEC: LitStr "    <td align=""center""><strong>Desde: </strong>"
  loc_BEDAEF: FLdPr Me
  loc_BEDAF2: VCallAd Control_ID_FealCtctDesdeMsk
  loc_BEDAF5: FStAdFunc var_D8
  loc_BEDAF8: FLdPr var_D8
  loc_BEDAFB: LateIdLdVar var_BC DispID_15 0
  loc_BEDB02: CStrVarTmp
  loc_BEDB03: FStStrNoPop var_A8
  loc_BEDB06: ConcatStr
  loc_BEDB07: FStStrNoPop var_AC
  loc_BEDB0A: LitStr "</td>"
  loc_BEDB0D: ConcatStr
  loc_BEDB0E: CVarStr var_E8
  loc_BEDB11: PopAdLdVar
  loc_BEDB12: FLdPr Me
  loc_BEDB15: MemLdRfVar from_stack_1.global_60
  loc_BEDB18: LdPrVar
  loc_BEDB1A: LateMemCall
  loc_BEDB20: FFreeStr var_A8 = ""
  loc_BEDB27: FFree1Ad var_D8
  loc_BEDB2A: FFreeVar var_BC = ""
  loc_BEDB31: LitStr "    <td align=""right""><strong>Hasta: </strong>"
  loc_BEDB34: FLdPr Me
  loc_BEDB37: VCallAd Control_ID_FealCtctHastaMsk
  loc_BEDB3A: FStAdFunc var_D8
  loc_BEDB3D: FLdPr var_D8
  loc_BEDB40: LateIdLdVar var_BC DispID_15 0
  loc_BEDB47: CStrVarTmp
  loc_BEDB48: FStStrNoPop var_A8
  loc_BEDB4B: ConcatStr
  loc_BEDB4C: FStStrNoPop var_AC
  loc_BEDB4F: LitStr "</td>"
  loc_BEDB52: ConcatStr
  loc_BEDB53: CVarStr var_E8
  loc_BEDB56: PopAdLdVar
  loc_BEDB57: FLdPr Me
  loc_BEDB5A: MemLdRfVar from_stack_1.global_60
  loc_BEDB5D: LdPrVar
  loc_BEDB5F: LateMemCall
  loc_BEDB65: FFreeStr var_A8 = ""
  loc_BEDB6C: FFree1Ad var_D8
  loc_BEDB6F: FFreeVar var_BC = ""
  loc_BEDB76: LitVarStr var_94, "</table>"
  loc_BEDB7B: PopAdLdVar
  loc_BEDB7C: FLdPr Me
  loc_BEDB7F: MemLdRfVar from_stack_1.global_60
  loc_BEDB82: LdPrVar
  loc_BEDB84: LateMemCall
  loc_BEDB8A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BEDB8F: PopAdLdVar
  loc_BEDB90: FLdPr Me
  loc_BEDB93: MemLdRfVar from_stack_1.global_60
  loc_BEDB96: LdPrVar
  loc_BEDB98: LateMemCall
  loc_BEDB9E: LitVarStr var_94, "  <thead>"
  loc_BEDBA3: PopAdLdVar
  loc_BEDBA4: FLdPr Me
  loc_BEDBA7: MemLdRfVar from_stack_1.global_60
  loc_BEDBAA: LdPrVar
  loc_BEDBAC: LateMemCall
  loc_BEDBB2: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BEDBB7: PopAdLdVar
  loc_BEDBB8: FLdPr Me
  loc_BEDBBB: MemLdRfVar from_stack_1.global_60
  loc_BEDBBE: LdPrVar
  loc_BEDBC0: LateMemCall
  loc_BEDBC6: LitVarStr var_94, "    <th>Fecha</th>"
  loc_BEDBCB: PopAdLdVar
  loc_BEDBCC: FLdPr Me
  loc_BEDBCF: MemLdRfVar from_stack_1.global_60
  loc_BEDBD2: LdPrVar
  loc_BEDBD4: LateMemCall
  loc_BEDBDA: LitVarStr var_94, "    <th>Oficina</th>"
  loc_BEDBDF: PopAdLdVar
  loc_BEDBE0: FLdPr Me
  loc_BEDBE3: MemLdRfVar from_stack_1.global_60
  loc_BEDBE6: LdPrVar
  loc_BEDBE8: LateMemCall
  loc_BEDBEE: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BEDBF3: PopAdLdVar
  loc_BEDBF4: FLdPr Me
  loc_BEDBF7: MemLdRfVar from_stack_1.global_60
  loc_BEDBFA: LdPrVar
  loc_BEDBFC: LateMemCall
  loc_BEDC02: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_BEDC07: PopAdLdVar
  loc_BEDC08: FLdPr Me
  loc_BEDC0B: MemLdRfVar from_stack_1.global_60
  loc_BEDC0E: LdPrVar
  loc_BEDC10: LateMemCall
  loc_BEDC16: LitVarStr var_94, "    <th>Periodo</th>"
  loc_BEDC1B: PopAdLdVar
  loc_BEDC1C: FLdPr Me
  loc_BEDC1F: MemLdRfVar from_stack_1.global_60
  loc_BEDC22: LdPrVar
  loc_BEDC24: LateMemCall
  loc_BEDC2A: LitVarStr var_94, "    <th>Bim.</th>"
  loc_BEDC2F: PopAdLdVar
  loc_BEDC30: FLdPr Me
  loc_BEDC33: MemLdRfVar from_stack_1.global_60
  loc_BEDC36: LdPrVar
  loc_BEDC38: LateMemCall
  loc_BEDC3E: LitVarStr var_94, "    <th>Expediente</th>"
  loc_BEDC43: PopAdLdVar
  loc_BEDC44: FLdPr Me
  loc_BEDC47: MemLdRfVar from_stack_1.global_60
  loc_BEDC4A: LdPrVar
  loc_BEDC4C: LateMemCall
  loc_BEDC52: LitVarStr var_94, "    <th>Detalle</th>"
  loc_BEDC57: PopAdLdVar
  loc_BEDC58: FLdPr Me
  loc_BEDC5B: MemLdRfVar from_stack_1.global_60
  loc_BEDC5E: LdPrVar
  loc_BEDC60: LateMemCall
  loc_BEDC66: LitVarStr var_94, "    <th>Usuario</th>"
  loc_BEDC6B: PopAdLdVar
  loc_BEDC6C: FLdPr Me
  loc_BEDC6F: MemLdRfVar from_stack_1.global_60
  loc_BEDC72: LdPrVar
  loc_BEDC74: LateMemCall
  loc_BEDC7A: LitVarStr var_94, "    <th>Importe</th>"
  loc_BEDC7F: PopAdLdVar
  loc_BEDC80: FLdPr Me
  loc_BEDC83: MemLdRfVar from_stack_1.global_60
  loc_BEDC86: LdPrVar
  loc_BEDC88: LateMemCall
  loc_BEDC8E: LitVarStr var_94, "  </tr>"
  loc_BEDC93: PopAdLdVar
  loc_BEDC94: FLdPr Me
  loc_BEDC97: MemLdRfVar from_stack_1.global_60
  loc_BEDC9A: LdPrVar
  loc_BEDC9C: LateMemCall
  loc_BEDCA2: LitVarStr var_94, "  </thead>"
  loc_BEDCA7: PopAdLdVar
  loc_BEDCA8: FLdPr Me
  loc_BEDCAB: MemLdRfVar from_stack_1.global_60
  loc_BEDCAE: LdPrVar
  loc_BEDCB0: LateMemCall
  loc_BEDCB6: ExitProcHresult
End Function

Private Function Proc_204_36_A0AED8() 'A0AED8
  'Data Table: 4F08D0
  loc_A0AE98: LitVarStr var_94, "</table>"
  loc_A0AE9D: PopAdLdVar
  loc_A0AE9E: FLdPr Me
  loc_A0AEA1: MemLdRfVar from_stack_1.global_60
  loc_A0AEA4: LdPrVar
  loc_A0AEA6: LateMemCall
  loc_A0AEAC: LitVarStr var_94, "</body>"
  loc_A0AEB1: PopAdLdVar
  loc_A0AEB2: FLdPr Me
  loc_A0AEB5: MemLdRfVar from_stack_1.global_60
  loc_A0AEB8: LdPrVar
  loc_A0AEBA: LateMemCall
  loc_A0AEC0: LitVarStr var_94, "</html>"
  loc_A0AEC5: PopAdLdVar
  loc_A0AEC6: FLdPr Me
  loc_A0AEC9: MemLdRfVar from_stack_1.global_60
  loc_A0AECC: LdPrVar
  loc_A0AECE: LateMemCall
  loc_A0AED4: ExitProcHresult
End Function
