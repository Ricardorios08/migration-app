VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptGastoTributario
  Caption = "Gasto Tributario"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptGastoTributario.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11052
  ClientHeight = 3732
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 0
    Top = 1920
    Width = 10815
    Height = 150
    Visible = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptGastoTributario.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3480
    Width = 11055
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptGastoTributario.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9600
    Top = 2160
    Width = 855
    Height = 735
    TabIndex = 13
    Cancel = -1  'True
    Picture = "rptGastoTributario.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptGastoTributario.frx":0C04
    Left = 9840
    Top = 1920
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 2040
    Width = 3495
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
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
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
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
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
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 240
    Top = 2040
    Width = 4095
    Height = 1215
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
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
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10815
    Height = 1815
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8640
      Top = 360
      Width = 1575
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
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 2160
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptGastoTributario.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 885
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptGastoTributario.frx":0D18
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1380
      Top = 885
      Width = 705
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
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 1320
      Top = 360
      Width = 765
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
    Left = 9960
    Top = 2520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptGastoTributario.frx":0DC8
  End
End

Attribute VB_Name = "rptGastoTributario"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub cmdPredeterminada_Click() '9C9E3C
  'Data Table: 47E374
  loc_9C9E24: LitI2_Byte 0
  loc_9C9E26: ILdRf Me
  loc_9C9E29: CastAd
  loc_9C9E2C: FStAdFunc var_88
  loc_9C9E2F: FLdRfVar var_88
  loc_9C9E32: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C9E37: FFree1Ad var_88
  loc_9C9E3A: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A108CC
  'Data Table: 47E374
  loc_A1088C: LitI2_Byte 0
  loc_A1088E: FLdPr Me
  loc_A10891: MemStI2 bGenerado
  loc_A10894: LitI2_Byte &HFF
  loc_A10896: FLdPr Me
  loc_A10899: MemStI2 bLogos
  loc_A1089C: LitI2_Byte 0
  loc_A1089E: ILdRf Me
  loc_A108A1: CastAd
  loc_A108A4: FStAdFunc var_88
  loc_A108A7: FLdRfVar var_88
  loc_A108AA: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A108AF: FFree1Ad var_88
  loc_A108B2: Call HabilitarCriterio()
  loc_A108B7: ILdRf Me
  loc_A108BA: CastAd
  loc_A108BD: FStAdFunc var_88
  loc_A108C0: FLdRfVar var_88
  loc_A108C3: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A108C8: FFree1Ad var_88
  loc_A108CB: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9C1448
  'Data Table: 47E374
  loc_9C1434: FLdPr Me
  loc_9C1437: VCallAd Control_ID_HastaMsk
  loc_9C143A: CVarAd
  loc_9C143E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1443: FFree1Var var_94 = ""
  loc_9C1446: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA7110
  'Data Table: 47E374
  loc_AA7060: FLdPr Me
  loc_AA7063: VCallAd Control_ID_HastaMsk
  loc_AA7066: FStAdFunc var_88
  loc_AA7069: FLdPr var_88
  loc_AA706C: LateIdLdVar var_98 DispID_15 0
  loc_AA7073: CStrVarTmp
  loc_AA7074: CVarStr var_A8
  loc_AA7077: ImpAdCallI2 IsDate()
  loc_AA707C: FFree1Ad var_88
  loc_AA707F: FFreeVar var_98 = ""
  loc_AA7086: BranchF loc_AA710C
  loc_AA7089: FLdPr Me
  loc_AA708C: VCallAd Control_ID_HastaMsk
  loc_AA708F: FStAdFunc var_88
  loc_AA7092: FLdPr var_88
  loc_AA7095: LateIdLdVar var_98 DispID_15 0
  loc_AA709C: CStrVarTmp
  loc_AA709D: CVarStr var_A8
  loc_AA70A0: FLdRfVar var_B8
  loc_AA70A3: ImpAdCallFPR4  = Year()
  loc_AA70A8: FLdRfVar var_B8
  loc_AA70AB: FLdPr Me
  loc_AA70AE: VCallAd Control_ID_DesdeMsk
  loc_AA70B1: FStAdFunc var_BC
  loc_AA70B4: FLdPr var_BC
  loc_AA70B7: LateIdLdVar var_CC DispID_15 0
  loc_AA70BE: CStrVarTmp
  loc_AA70BF: CVarStr var_DC
  loc_AA70C2: FLdRfVar var_EC
  loc_AA70C5: ImpAdCallFPR4  = Year()
  loc_AA70CA: FLdRfVar var_EC
  loc_AA70CD: NeVarBool
  loc_AA70CF: FFreeAd var_88 = ""
  loc_AA70D6: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA70E5: BranchF loc_AA710C
  loc_AA70E8: FLdPr Me
  loc_AA70EB: VCallAd Control_ID_HastaMsk
  loc_AA70EE: FStAdFuncNoPop
  loc_AA70F1: CastAd
  loc_AA70F4: FStAdFunc var_BC
  loc_AA70F7: FLdRfVar var_BC
  loc_AA70FA: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA70FD: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA7102: IStI2 arg_C
  loc_AA7105: FFreeAd var_88 = ""
  loc_AA710C: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A21EBC
  'Data Table: 47E374
  loc_A21E74: ILdI2 KeyAscii
  loc_A21E77: CI4UI1
  loc_A21E78: LitI4 &H20
  loc_A21E7D: EqI4
  loc_A21E7E: BranchF loc_A21EBB
  loc_A21E81: LitVar_Missing var_A4
  loc_A21E84: PopAdLdVar
  loc_A21E85: LitVarI4
  loc_A21E8D: PopAdLdVar
  loc_A21E8E: ImpAdLdRf MemVar_D930A4
  loc_A21E91: NewIfNullPr frmCalendario
  loc_A21E94: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21E99: ImpAdLdRf MemVar_D93028
  loc_A21E9C: CDargRef
  loc_A21EA0: FLdPr Me
  loc_A21EA3: VCallAd Control_ID_HastaMsk
  loc_A21EA6: FStAdFunc var_A8
  loc_A21EA9: FLdPr var_A8
  loc_A21EAC: LateIdSt
  loc_A21EB1: FFree1Ad var_A8
  loc_A21EB4: LitStr vbNullString
  loc_A21EB7: ImpAdStStrCopy MemVar_D93028
  loc_A21EBB: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DE20C
  'Data Table: 47E374
  loc_9DE1F0: LitI2_Byte &HFF
  loc_9DE1F2: LitI2_Byte 0
  loc_9DE1F4: ILdRf Me
  loc_9DE1F7: CastAd
  loc_9DE1FA: FStAdFunc var_88
  loc_9DE1FD: FLdRfVar var_88
  loc_9DE200: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DE205: FFree1Ad var_88
  loc_9DE208: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D1E7C
  'Data Table: 47E374
  loc_9D1E64: ILdRf Me
  loc_9D1E67: CastAd
  loc_9D1E6A: FStAdFunc var_88
  loc_9D1E6D: FLdRfVar var_88
  loc_9D1E70: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D1E75: FFree1Ad var_88
  loc_9D1E78: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9C1400
  'Data Table: 47E374
  loc_9C13EC: FLdPr Me
  loc_9C13EF: VCallAd Control_ID_DesdeMsk
  loc_9C13F2: CVarAd
  loc_9C13F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C13FB: FFree1Var var_94 = ""
  loc_9C13FE: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A624E0
  'Data Table: 47E374
  loc_A62484: FLdPr Me
  loc_A62487: VCallAd Control_ID_DesdeMsk
  loc_A6248A: FStAdFunc var_88
  loc_A6248D: FLdPr var_88
  loc_A62490: LateIdLdVar var_98 DispID_15 0
  loc_A62497: CStrVarTmp
  loc_A62498: FStStrNoPop var_9C
  loc_A6249B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A624A0: FStStrNoPop var_A0
  loc_A624A3: FLdPr Me
  loc_A624A6: MemStStrCopy
  loc_A624AA: FFreeStr var_9C = ""
  loc_A624B1: FFree1Ad var_88
  loc_A624B4: FFree1Var var_98 = ""
  loc_A624B7: FLdPr Me
  loc_A624BA: VCallAd Control_ID_DesdeMsk
  loc_A624BD: FStAdFuncNoPop
  loc_A624C0: CastAd
  loc_A624C3: FStAdFunc var_A4
  loc_A624C6: FLdRfVar var_A4
  loc_A624C9: FLdPr Me
  loc_A624CC: MemLdStr global_112
  loc_A624CF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A624D4: IStI2 arg_C
  loc_A624D7: FFreeAd var_88 = ""
  loc_A624DE: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A21D48
  'Data Table: 47E374
  loc_A21D00: ILdI2 KeyAscii
  loc_A21D03: CI4UI1
  loc_A21D04: LitI4 &H20
  loc_A21D09: EqI4
  loc_A21D0A: BranchF loc_A21D47
  loc_A21D0D: LitVar_Missing var_A4
  loc_A21D10: PopAdLdVar
  loc_A21D11: LitVarI4
  loc_A21D19: PopAdLdVar
  loc_A21D1A: ImpAdLdRf MemVar_D930A4
  loc_A21D1D: NewIfNullPr frmCalendario
  loc_A21D20: frmCalendario.Show from_stack_1, from_stack_2
  loc_A21D25: ImpAdLdRf MemVar_D93028
  loc_A21D28: CDargRef
  loc_A21D2C: FLdPr Me
  loc_A21D2F: VCallAd Control_ID_DesdeMsk
  loc_A21D32: FStAdFunc var_A8
  loc_A21D35: FLdPr var_A8
  loc_A21D38: LateIdSt
  loc_A21D3D: FFree1Ad var_A8
  loc_A21D40: LitStr vbNullString
  loc_A21D43: ImpAdStStrCopy MemVar_D93028
  loc_A21D47: ExitProcHresult
End Sub

Private Sub Form_Load() 'ADFA94
  'Data Table: 47E374
  loc_ADF960: ILdRf Me
  loc_ADF963: CastAd
  loc_ADF966: FStAdFunc var_88
  loc_ADF969: FLdRfVar var_88
  loc_ADF96C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_ADF971: FFree1Ad var_88
  loc_ADF974: LitVarStr var_98, "Gasto Tributario"
  loc_ADF979: CStrVarVal var_9C
  loc_ADF97D: FLdPr Me
  loc_ADF980: Me.Caption = from_stack_1
  loc_ADF985: FFree1Str var_9C
  loc_ADF988: Call cmdNueva_Click()
  loc_ADF98D: LitI2_Byte 0
  loc_ADF98F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ADF994: CVarDate var_AC
  loc_ADF998: FLdRfVar var_BC
  loc_ADF99B: ImpAdCallFPR4  = Year()
  loc_ADF9A0: LitI2_Byte 0
  loc_ADF9A2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ADF9A7: CVarDate var_DC
  loc_ADF9AB: FLdRfVar var_EC
  loc_ADF9AE: ImpAdCallFPR4  = Month()
  loc_ADF9B3: LitI2_Byte 1
  loc_ADF9B5: FLdRfVar var_EC
  loc_ADF9B8: LitVarI2 var_FC, 1
  loc_ADF9BD: SubVar var_10C
  loc_ADF9C1: CI2Var
  loc_ADF9C2: FLdRfVar var_BC
  loc_ADF9C5: CI2Var
  loc_ADF9C6: FLdRfVar var_11C
  loc_ADF9C9: ImpAdCallFPR4  = DateSerial(, , )
  loc_ADF9CE: FLdRfVar var_11C
  loc_ADF9D1: CStrVarTmp
  loc_ADF9D2: CVarStr var_12C
  loc_ADF9D5: PopAdLdVar
  loc_ADF9D6: FLdPr Me
  loc_ADF9D9: VCallAd Control_ID_DesdeMsk
  loc_ADF9DC: FStAdFunc var_88
  loc_ADF9DF: FLdPr var_88
  loc_ADF9E2: LateIdSt
  loc_ADF9E7: FFree1Ad var_88
  loc_ADF9EA: FFreeVar var_AC = "": var_DC = "": var_EC = "": var_BC = "": var_11C = ""
  loc_ADF9F9: FLdPr Me
  loc_ADF9FC: VCallAd Control_ID_DesdeMsk
  loc_ADF9FF: FStAdFunc var_88
  loc_ADFA02: FLdPr var_88
  loc_ADFA05: LateIdLdVar var_AC DispID_15 0
  loc_ADFA0C: CStrVarTmp
  loc_ADFA0D: CVarStr var_BC
  loc_ADFA10: FLdRfVar var_DC
  loc_ADFA13: ImpAdCallFPR4  = Year()
  loc_ADFA18: FLdPr Me
  loc_ADFA1B: VCallAd Control_ID_DesdeMsk
  loc_ADFA1E: FStAdFunc var_140
  loc_ADFA21: FLdPr var_140
  loc_ADFA24: LateIdLdVar var_EC DispID_15 0
  loc_ADFA2B: CStrVarTmp
  loc_ADFA2C: CVarStr var_10C
  loc_ADFA2F: FLdRfVar var_11C
  loc_ADFA32: ImpAdCallFPR4  = Month()
  loc_ADFA37: LitI2_Byte 1
  loc_ADFA39: FLdRfVar var_11C
  loc_ADFA3C: LitVarI2 var_98, 1
  loc_ADFA41: AddVar var_12C
  loc_ADFA45: CI2Var
  loc_ADFA46: FLdRfVar var_DC
  loc_ADFA49: CI2Var
  loc_ADFA4A: FLdRfVar var_150
  loc_ADFA4D: ImpAdCallFPR4  = DateSerial(, , )
  loc_ADFA52: FLdRfVar var_150
  loc_ADFA55: LitVarI2 var_CC, 1
  loc_ADFA5A: SubVar var_160
  loc_ADFA5E: CStrVarTmp
  loc_ADFA5F: CVarStr var_170
  loc_ADFA62: PopAdLdVar
  loc_ADFA63: FLdPr Me
  loc_ADFA66: VCallAd Control_ID_HastaMsk
  loc_ADFA69: FStAdFunc var_174
  loc_ADFA6C: FLdPr var_174
  loc_ADFA6F: LateIdSt
  loc_ADFA74: FFreeAd var_88 = "": var_140 = ""
  loc_ADFA7D: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_ADFA92: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D2C24
  'Data Table: 47E374
  loc_9D2C0C: FLdPr Me
  loc_9D2C0F: VCallAd Control_ID_wbbReporte
  loc_9D2C12: FStAdFunc var_88
  loc_9D2C15: FLdRfVar var_88
  loc_9D2C18: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D2C1D: FFree1Ad var_88
  loc_9D2C20: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A00A10
  'Data Table: 47E374
  loc_A009E0: LitVarStr var_94, "Cerrando..."
  loc_A009E5: PopAdLdVar
  loc_A009E6: FLdPr Me
  loc_A009E9: VCallAd Control_ID_statusBar
  loc_A009EC: FStAdFunc var_A8
  loc_A009EF: FLdPr var_A8
  loc_A009F2: LateIdSt
  loc_A009F7: FFree1Ad var_A8
  loc_A009FA: ILdRf Me
  loc_A009FD: FStAdNoPop
  loc_A00A01: ImpAdLdRf MemVar_D9C5D8
  loc_A00A04: NewIfNullPr Global
  loc_A00A07: Global.Unload from_stack_1
  loc_A00A0C: FFree1Ad var_A8
  loc_A00A0F: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1FE40
  'Data Table: 47E374
  loc_A1FE08: FLdPr Me
  loc_A1FE0B: VCallAd Control_ID_statusBar
  loc_A1FE0E: FStAdFunc var_88
  loc_A1FE11: FLdPr var_88
  loc_A1FE14: LateIdLdVar var_98 DispID_1 0
  loc_A1FE1B: CStrVarTmp
  loc_A1FE1C: CVarStr var_A8
  loc_A1FE1F: PopAdLdVar
  loc_A1FE20: FLdPr Me
  loc_A1FE23: VCallAd Control_ID_statusBar
  loc_A1FE26: FStAdFunc var_BC
  loc_A1FE29: FLdPr var_BC
  loc_A1FE2C: LateIdSt
  loc_A1FE31: FFreeAd var_88 = ""
  loc_A1FE38: FFreeVar var_98 = ""
  loc_A1FE3F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE25C
  'Data Table: 47E374
  loc_9DE240: LitI2_Byte 0
  loc_9DE242: PopTmpLdAd2 var_8A
  loc_9DE245: ILdRf Me
  loc_9DE248: CastAd
  loc_9DE24B: FStAdFunc var_88
  loc_9DE24E: FLdRfVar var_88
  loc_9DE251: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE256: FFree1Ad var_88
  loc_9DE259: ExitProcHresult
End Sub

Public Function bGeneradoGet() '47F058
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47F067
  bGenerado = Value
End Sub

Public Function bLogosGet() '47F076
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '47F085
  bLogos = Value
End Sub

Public Sub GeneraXLS() '9C1374
  'Data Table: 47E374
  loc_9C135C: LitI2_Byte 0
  loc_9C135E: FLdPr Me
  loc_9C1361: MemStI2 bLogos
  loc_9C1364: Call GeneraHTML()
  loc_9C1369: LitI2_Byte &HFF
  loc_9C136B: FLdPr Me
  loc_9C136E: MemStI2 bLogos
  loc_9C1371: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() 'A43EE0
  'Data Table: 47E374
  loc_A43E9C: LitI4 0
  loc_A43EA1: LitI4 1
  loc_A43EA6: FLdRfVar var_88
  loc_A43EA9: Redim
  loc_A43EB3: FLdPr Me
  loc_A43EB6: VCallAd Control_ID_DesdeMsk
  loc_A43EB9: CVarAd
  loc_A43EBD: ParmAry1St
  loc_A43EC3: FLdPr Me
  loc_A43EC6: VCallAd Control_ID_HastaMsk
  loc_A43EC9: CVarAd
  loc_A43ECD: ParmAry1St
  loc_A43ED3: FLdRfVar var_88
  loc_A43ED6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A43EDB: FLdRfVar var_88
  loc_A43EDE: Erase
  loc_A43EDF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BEE4F8
  'Data Table: 47E374
  loc_BEDD10: FLdPr Me
  loc_BEDD13: MemLdI2 bGenerado
  loc_BEDD16: BranchF loc_BEDD1A
  loc_BEDD19: ExitProcHresult
  loc_BEDD1A: LitVarStr var_9C, "Generando reporte..."
  loc_BEDD1F: PopAdLdVar
  loc_BEDD20: FLdPr Me
  loc_BEDD23: VCallAd Control_ID_statusBar
  loc_BEDD26: FStAdFunc var_B0
  loc_BEDD29: FLdPr var_B0
  loc_BEDD2C: LateIdSt
  loc_BEDD31: FFree1Ad var_B0
  loc_BEDD34: LitI4 &HB
  loc_BEDD39: CI2I4
  loc_BEDD3A: FLdPr Me
  loc_BEDD3D: Me.MousePointer = from_stack_1
  loc_BEDD42: LitI2_Byte 0
  loc_BEDD44: PopTmpLdAd2 var_B2
  loc_BEDD47: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BEDD4C: FLdPr Me
  loc_BEDD4F: MemLdStr global_112
  loc_BEDD52: LitStr vbNullString
  loc_BEDD55: NeStr
  loc_BEDD57: BranchF loc_BEDD5D
  loc_BEDD5A: Branch loc_BEE4CC
  loc_BEDD5D: LitI2_Byte 0
  loc_BEDD5F: PopTmpLdAd2 var_B2
  loc_BEDD62: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_BEDD67: FLdPr Me
  loc_BEDD6A: MemLdStr global_112
  loc_BEDD6D: LitStr vbNullString
  loc_BEDD70: NeStr
  loc_BEDD72: BranchF loc_BEDD78
  loc_BEDD75: Branch loc_BEE4CC
  loc_BEDD78: FLdPr Me
  loc_BEDD7B: VCallAd Control_ID_DesdeMsk
  loc_BEDD7E: FStAdFunc var_B0
  loc_BEDD81: FLdPr var_B0
  loc_BEDD84: LateIdLdVar var_C4 DispID_15 0
  loc_BEDD8B: PopAd
  loc_BEDD8D: LitI4 1
  loc_BEDD92: LitI4 1
  loc_BEDD97: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_BEDD9C: FStVarCopyObj var_E4
  loc_BEDD9F: FLdRfVar var_E4
  loc_BEDDA2: FLdRfVar var_C4
  loc_BEDDA5: CStrVarTmp
  loc_BEDDA6: CVarStr var_D4
  loc_BEDDA9: ImpAdCallI2 Format$(, )
  loc_BEDDAE: FStStr var_88
  loc_BEDDB1: FFree1Ad var_B0
  loc_BEDDB4: FFreeVar var_C4 = "": var_D4 = ""
  loc_BEDDBD: FLdPr Me
  loc_BEDDC0: VCallAd Control_ID_HastaMsk
  loc_BEDDC3: FStAdFunc var_B0
  loc_BEDDC6: FLdPr var_B0
  loc_BEDDC9: LateIdLdVar var_C4 DispID_15 0
  loc_BEDDD0: PopAd
  loc_BEDDD2: LitI4 1
  loc_BEDDD7: LitI4 1
  loc_BEDDDC: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_BEDDE1: FStVarCopyObj var_E4
  loc_BEDDE4: FLdRfVar var_E4
  loc_BEDDE7: FLdRfVar var_C4
  loc_BEDDEA: CStrVarTmp
  loc_BEDDEB: CVarStr var_D4
  loc_BEDDEE: ImpAdCallI2 Format$(, )
  loc_BEDDF3: FStStr var_8C
  loc_BEDDF6: FFree1Ad var_B0
  loc_BEDDF9: FFreeVar var_C4 = "": var_D4 = ""
  loc_BEDE02: LitStr " DROP TEMPORARY TABLE IF EXISTS tribu;"
  loc_BEDE05: LitStr " CREATE TEMPORARY TABLE tribu ("
  loc_BEDE08: ConcatStr
  loc_BEDE09: FStStrNoPop var_E8
  loc_BEDE0C: LitStr " odiConc` varchar(8) NOT NULL default '',"
  loc_BEDE0F: ConcatStr
  loc_BEDE10: FStStrNoPop var_EC
  loc_BEDE13: LitStr " resCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_BEDE16: ConcatStr
  loc_BEDE17: FStStrNoPop var_F0
  loc_BEDE1A: LitStr " ondCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_BEDE1D: ConcatStr
  loc_BEDE1E: FStStrNoPop var_F4
  loc_BEDE21: LitStr " xenCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_BEDE24: ConcatStr
  loc_BEDE25: FStStrNoPop var_F8
  loc_BEDE28: LitStr " escCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_BEDE2B: ConcatStr
  loc_BEDE2C: FStStrNoPop var_FC
  loc_BEDE2F: LitStr " otaCtct` decimal(12,2) NOT NULL default '0.00',"
  loc_BEDE32: ConcatStr
  loc_BEDE33: FStStrNoPop var_100
  loc_BEDE36: LitStr " KEY mpidx` (`CodiConc`)"
  loc_BEDE39: ConcatStr
  loc_BEDE3A: FStStrNoPop var_104
  loc_BEDE3D: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_BEDE40: ConcatStr
  loc_BEDE41: FStStrNoPop var_108
  loc_BEDE44: FLdPr Me
  loc_BEDE47: MemLdRfVar from_stack_1.global_92
  loc_BEDE4A: NewIfNullPr clsctacte
  loc_BEDE4D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BEDE52: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_BEDE67: LitStr "SELECT * FROM concepto "
  loc_BEDE6A: LitStr " WHERE PeriInfo = "
  loc_BEDE6D: ConcatStr
  loc_BEDE6E: CVarStr var_118
  loc_BEDE71: FLdPr Me
  loc_BEDE74: VCallAd Control_ID_DesdeMsk
  loc_BEDE77: FStAdFunc var_B0
  loc_BEDE7A: FLdPr var_B0
  loc_BEDE7D: LateIdLdVar var_C4 DispID_15 0
  loc_BEDE84: CStrVarTmp
  loc_BEDE85: CVarStr var_D4
  loc_BEDE88: FLdRfVar var_E4
  loc_BEDE8B: ImpAdCallFPR4  = Year()
  loc_BEDE90: FLdRfVar var_E4
  loc_BEDE93: ConcatVar var_128
  loc_BEDE97: LitVarStr var_9C, " AND ActiConc <> ''"
  loc_BEDE9C: ConcatVar var_138
  loc_BEDEA0: CStrVarVal var_E8
  loc_BEDEA4: FLdPr Me
  loc_BEDEA7: MemLdRfVar from_stack_1.global_96
  loc_BEDEAA: NewIfNullPr clsboleto
  loc_BEDEAD: Call clsboleto.RedefineRS(from_stack_1v)
  loc_BEDEB2: FFree1Str var_E8
  loc_BEDEB5: FFree1Ad var_B0
  loc_BEDEB8: FFreeVar var_C4 = "": var_D4 = "": var_118 = "": var_E4 = "": var_128 = ""
  loc_BEDEC7: FLdRfVar var_13C
  loc_BEDECA: FLdPr Me
  loc_BEDECD: MemLdRfVar from_stack_1.global_96
  loc_BEDED0: NewIfNullPr clsboleto
  loc_BEDED3: from_stack_1 = clsboleto.RecordCount
  loc_BEDED8: ILdRf var_13C
  loc_BEDEDB: LitI4 0
  loc_BEDEE0: GtI4
  loc_BEDEE1: BranchF loc_BEE02C
  loc_BEDEE4: FLdPr Me
  loc_BEDEE7: MemLdRfVar from_stack_1.global_96
  loc_BEDEEA: NewIfNullPr clsboleto
  loc_BEDEED: Call clsboleto.MoveFirst()
  loc_BEDEF2: FLdRfVar var_B2
  loc_BEDEF5: FLdPr Me
  loc_BEDEF8: MemLdRfVar from_stack_1.global_96
  loc_BEDEFB: NewIfNullPr clsboleto
  loc_BEDEFE: from_stack_1 = clsboleto.EOF
  loc_BEDF03: FLdI2 var_B2
  loc_BEDF06: NotI4
  loc_BEDF07: BranchF loc_BEE02C
  loc_BEDF0A: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_tribu; "
  loc_BEDF0D: LitStr " CREATE TEMPORARY TABLE tmp_tribu"
  loc_BEDF10: ConcatStr
  loc_BEDF11: FStStrNoPop var_E8
  loc_BEDF14: LitStr " SELECT CodiConc, sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, "
  loc_BEDF17: ConcatStr
  loc_BEDF18: FStStrNoPop var_EC
  loc_BEDF1B: LitStr " sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct,"
  loc_BEDF1E: ConcatStr
  loc_BEDF1F: FStStrNoPop var_F0
  loc_BEDF22: LitStr " sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct,"
  loc_BEDF25: ConcatStr
  loc_BEDF26: FStStrNoPop var_F4
  loc_BEDF29: LitStr " sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) - SUM(if(CodiTimo IN (28),DebeCtct,000000000.00)) as DescCtct  FROM ctacte"
  loc_BEDF2C: ConcatStr
  loc_BEDF2D: FStStrNoPop var_F8
  loc_BEDF30: LitStr " WHERE FealCtct BETWEEN "
  loc_BEDF33: ConcatStr
  loc_BEDF34: FStStrNoPop var_FC
  loc_BEDF37: ILdRf var_88
  loc_BEDF3A: ConcatStr
  loc_BEDF3B: FStStrNoPop var_100
  loc_BEDF3E: LitStr " AND "
  loc_BEDF41: ConcatStr
  loc_BEDF42: FStStrNoPop var_104
  loc_BEDF45: ILdRf var_8C
  loc_BEDF48: ConcatStr
  loc_BEDF49: FStStrNoPop var_108
  loc_BEDF4C: LitStr " AND CodiConc = '"
  loc_BEDF4F: ConcatStr
  loc_BEDF50: CVarStr var_D4
  loc_BEDF53: FLdRfVar var_C4
  loc_BEDF56: FLdRfVar var_144
  loc_BEDF59: LitVarStr var_9C, "CodiConc"
  loc_BEDF5E: PopAdLdVar
  loc_BEDF5F: FLdRfVar var_140
  loc_BEDF62: FLdRfVar var_B0
  loc_BEDF65: FLdPr Me
  loc_BEDF68: MemLdRfVar from_stack_1.global_96
  loc_BEDF6B: NewIfNullPr clsboleto
  loc_BEDF6E: from_stack_1v = clsboleto.RsFrmGet()
  loc_BEDF73: FLdPr var_B0
  loc_BEDF76:  = Me.Fields
  loc_BEDF7B: FLdPr var_140
  loc_BEDF7E: from_stack_2 = Me.Item(from_stack_1)
  loc_BEDF83: FLdPr var_144
  loc_BEDF86:  = Me.Value
  loc_BEDF8B: FLdRfVar var_C4
  loc_BEDF8E: ConcatVar var_E4
  loc_BEDF92: LitVarStr var_AC, "'"
  loc_BEDF97: ConcatVar var_118
  loc_BEDF9B: LitVarStr var_154, " GROUP BY CodiConc"
  loc_BEDFA0: ConcatVar var_128
  loc_BEDFA4: CStrVarVal var_158
  loc_BEDFA8: FLdPr Me
  loc_BEDFAB: MemLdRfVar from_stack_1.global_92
  loc_BEDFAE: NewIfNullPr clsctacte
  loc_BEDFB1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BEDFB6: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_BEDFCD: FFreeAd var_B0 = "": var_140 = ""
  loc_BEDFD6: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_118 = ""
  loc_BEDFE3: LitStr "INSERT INTO tribu"
  loc_BEDFE6: LitStr " SELECT CodiConc, PresCtct, CondCtct, ExenCtct, DescCtct,"
  loc_BEDFE9: ConcatStr
  loc_BEDFEA: FStStrNoPop var_E8
  loc_BEDFED: LitStr " PresCtct+CondCtct+ExenCtct+DescCtct as TotaCtct"
  loc_BEDFF0: ConcatStr
  loc_BEDFF1: FStStrNoPop var_EC
  loc_BEDFF4: LitStr " FROM tmp_tribu "
  loc_BEDFF7: ConcatStr
  loc_BEDFF8: FStStrNoPop var_F0
  loc_BEDFFB: LitStr " GROUP BY CodiConc ORDER BY CodiConc"
  loc_BEDFFE: ConcatStr
  loc_BEDFFF: FStStrNoPop var_F4
  loc_BEE002: FLdPr Me
  loc_BEE005: MemLdRfVar from_stack_1.global_92
  loc_BEE008: NewIfNullPr clsctacte
  loc_BEE00B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BEE010: FFreeStr var_E8 = "": var_EC = "": var_F0 = ""
  loc_BEE01B: FLdPr Me
  loc_BEE01E: MemLdRfVar from_stack_1.global_96
  loc_BEE021: NewIfNullPr clsboleto
  loc_BEE024: Call clsboleto.MoveSiguiente()
  loc_BEE029: Branch loc_BEDEF2
  loc_BEE02C: FLdPr Me
  loc_BEE02F: MemLdRfVar from_stack_1.global_92
  loc_BEE032: NewIfNullAd
  loc_BEE035: FStAd var_15C 
  loc_BEE039: LitStr " SELECT tribu.CodiConc, DetaConc, PresCtct, CondCtct, ExenCtct, DescCtct,"
  loc_BEE03C: LitStr " TotaCtct"
  loc_BEE03F: ConcatStr
  loc_BEE040: FStStrNoPop var_E8
  loc_BEE043: LitStr " FROM tribu INNER JOIN concepto ON concepto.PeriInfo = "
  loc_BEE046: ConcatStr
  loc_BEE047: CVarStr var_118
  loc_BEE04A: FLdPr Me
  loc_BEE04D: VCallAd Control_ID_DesdeMsk
  loc_BEE050: FStAdFunc var_B0
  loc_BEE053: FLdPr var_B0
  loc_BEE056: LateIdLdVar var_C4 DispID_15 0
  loc_BEE05D: CStrVarTmp
  loc_BEE05E: CVarStr var_D4
  loc_BEE061: FLdRfVar var_E4
  loc_BEE064: ImpAdCallFPR4  = Year()
  loc_BEE069: FLdRfVar var_E4
  loc_BEE06C: ConcatVar var_128
  loc_BEE070: LitVarStr var_9C, " AND concepto.CodiConc = tribu.CodiConc"
  loc_BEE075: ConcatVar var_138
  loc_BEE079: LitVarStr var_AC, " GROUP BY tribu.CodiConc ORDER BY CodiConc"
  loc_BEE07E: ConcatVar var_16C
  loc_BEE082: CStrVarVal var_EC
  loc_BEE086: FLdPr var_15C
  loc_BEE089: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BEE08E: FFreeStr var_E8 = ""
  loc_BEE095: FFree1Ad var_B0
  loc_BEE098: FFreeVar var_C4 = "": var_D4 = "": var_118 = "": var_E4 = "": var_128 = "": var_138 = ""
  loc_BEE0A9: FLdRfVar var_13C
  loc_BEE0AC: FLdPr Me
  loc_BEE0AF: MemLdRfVar from_stack_1.global_92
  loc_BEE0B2: NewIfNullPr clsctacte
  loc_BEE0B5: from_stack_1 = clsctacte.RecordCount
  loc_BEE0BA: ILdRf var_13C
  loc_BEE0BD: LitI4 0
  loc_BEE0C2: EqI4
  loc_BEE0C3: BranchF loc_BEE0D1
  loc_BEE0C6: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BEE0C9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEE0CE: Branch loc_BEE4CC
  loc_BEE0D1: LitI4 0
  loc_BEE0D6: LitI4 1
  loc_BEE0DB: FLdPr Me
  loc_BEE0DE: MemLdRfVar from_stack_1.global_104
  loc_BEE0E1: Redim
  loc_BEE0EB: LitI4 0
  loc_BEE0F0: FLdRfVar var_13C
  loc_BEE0F3: FLdPr var_15C
  loc_BEE0F6: from_stack_1 = clsctacte.RecordCount
  loc_BEE0FB: ILdRf var_13C
  loc_BEE0FE: FLdPr Me
  loc_BEE101: MemLdRfVar from_stack_1.global_100
  loc_BEE104: Redim
  loc_BEE10E: FLdPr Me
  loc_BEE111: MemLdRfVar from_stack_1.global_92
  loc_BEE114: NewIfNullPr clsctacte
  loc_BEE117: Call clsctacte.MoveFirst()
  loc_BEE11C: FLdRfVar var_13C
  loc_BEE11F: FLdPr var_15C
  loc_BEE122: from_stack_1 = clsctacte.RecordCount
  loc_BEE127: ILdRf var_13C
  loc_BEE12A: CR8I4
  loc_BEE12B: CVarR4
  loc_BEE12F: PopAdLdVar
  loc_BEE130: FLdPrThis
  loc_BEE131: VCallAd Control_ID_Pbar
  loc_BEE134: FStAdFunc var_B0
  loc_BEE137: FLdPr var_B0
  loc_BEE13A: LateIdSt
  loc_BEE13F: FFree1Ad var_B0
  loc_BEE142: LitVar_TRUE var_9C
  loc_BEE145: PopAdLdVar
  loc_BEE146: FLdPrThis
  loc_BEE147: VCallAd Control_ID_Pbar
  loc_BEE14A: FStAdFunc var_B0
  loc_BEE14D: FLdPr var_B0
  loc_BEE150: LateIdSt
  loc_BEE155: FFree1Ad var_B0
  loc_BEE158: LitI4 1
  loc_BEE15D: FLdPr Me
  loc_BEE160: MemLdRfVar from_stack_1.global_108
  loc_BEE163: FLdPr Me
  loc_BEE166: MemLdStr global_100
  loc_BEE169: LitI2_Byte 1
  loc_BEE16B: FnUBound
  loc_BEE16D: ForI4 var_174
  loc_BEE173: FLdPr Me
  loc_BEE176: MemLdStr global_108
  loc_BEE179: CR8I4
  loc_BEE17A: CVarR4
  loc_BEE17E: PopAdLdVar
  loc_BEE17F: FLdPrThis
  loc_BEE180: VCallAd Control_ID_Pbar
  loc_BEE183: FStAdFunc var_B0
  loc_BEE186: FLdPr var_B0
  loc_BEE189: LateIdSt
  loc_BEE18E: FFree1Ad var_B0
  loc_BEE191: FLdRfVar var_144
  loc_BEE194: LitVarStr var_9C, "CodiConc"
  loc_BEE199: PopAdLdVar
  loc_BEE19A: FLdRfVar var_140
  loc_BEE19D: FLdRfVar var_B0
  loc_BEE1A0: FLdPr var_15C
  loc_BEE1A3: from_stack_1v = clsctacte.RsFrmGet()
  loc_BEE1A8: FLdPr var_B0
  loc_BEE1AB:  = Me.Fields
  loc_BEE1B0: FLdPr var_140
  loc_BEE1B3: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE1B8: LitI2_Byte 0
  loc_BEE1BA: LitVar_Missing var_D4
  loc_BEE1BD: LitI2_Byte 0
  loc_BEE1BF: FLdZeroAd var_144
  loc_BEE1C2: CVarAd
  loc_BEE1C6: PopAdLdVar
  loc_BEE1C7: FLdPr Me
  loc_BEE1CA: MemLdStr global_108
  loc_BEE1CD: FLdPr Me
  loc_BEE1D0: MemLdStr global_100
  loc_BEE1D3: AryLock
  loc_BEE1D6: Ary1LdPr
  loc_BEE1D7: MemLdRfVar from_stack_1.global_0
  loc_BEE1DA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BEE1DF: AryUnlock
  loc_BEE1E2: FFreeAd var_B0 = ""
  loc_BEE1E9: FFreeVar var_C4 = ""
  loc_BEE1F0: FLdRfVar var_144
  loc_BEE1F3: LitVarStr var_9C, "DetaConc"
  loc_BEE1F8: PopAdLdVar
  loc_BEE1F9: FLdRfVar var_140
  loc_BEE1FC: FLdRfVar var_B0
  loc_BEE1FF: FLdPr var_15C
  loc_BEE202: from_stack_1v = clsctacte.RsFrmGet()
  loc_BEE207: FLdPr var_B0
  loc_BEE20A:  = Me.Fields
  loc_BEE20F: FLdPr var_140
  loc_BEE212: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE217: LitI2_Byte 0
  loc_BEE219: LitVar_Missing var_D4
  loc_BEE21C: LitI2_Byte 0
  loc_BEE21E: FLdZeroAd var_144
  loc_BEE221: CVarAd
  loc_BEE225: PopAdLdVar
  loc_BEE226: FLdPr Me
  loc_BEE229: MemLdStr global_108
  loc_BEE22C: FLdPr Me
  loc_BEE22F: MemLdStr global_100
  loc_BEE232: AryLock
  loc_BEE235: Ary1LdPr
  loc_BEE236: MemLdRfVar from_stack_1.global_4
  loc_BEE239: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BEE23E: AryUnlock
  loc_BEE241: FFreeAd var_B0 = ""
  loc_BEE248: FFreeVar var_C4 = ""
  loc_BEE24F: FLdRfVar var_144
  loc_BEE252: LitVarStr var_9C, "PresCtct"
  loc_BEE257: PopAdLdVar
  loc_BEE258: FLdRfVar var_140
  loc_BEE25B: FLdRfVar var_B0
  loc_BEE25E: FLdPr var_15C
  loc_BEE261: from_stack_1v = clsctacte.RsFrmGet()
  loc_BEE266: FLdPr var_B0
  loc_BEE269:  = Me.Fields
  loc_BEE26E: FLdPr var_140
  loc_BEE271: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE276: LitI2_Byte 0
  loc_BEE278: LitI4 1
  loc_BEE27D: FLdPr Me
  loc_BEE280: MemLdStr global_104
  loc_BEE283: AryLock
  loc_BEE286: Ary1LdPr
  loc_BEE287: MemLdRfVar from_stack_1.global_8
  loc_BEE28A: CVarRef
  loc_BEE28F: LitI2_Byte &HFF
  loc_BEE291: FLdZeroAd var_144
  loc_BEE294: CVarAd
  loc_BEE298: PopAdLdVar
  loc_BEE299: FLdPr Me
  loc_BEE29C: MemLdStr global_108
  loc_BEE29F: FLdPr Me
  loc_BEE2A2: MemLdStr global_100
  loc_BEE2A5: AryLock
  loc_BEE2A8: Ary1LdPr
  loc_BEE2A9: MemLdRfVar from_stack_1.global_8
  loc_BEE2AC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BEE2B1: AryUnlock
  loc_BEE2B4: AryUnlock
  loc_BEE2B7: FFreeAd var_B0 = ""
  loc_BEE2BE: FFree1Var var_C4 = ""
  loc_BEE2C1: FLdRfVar var_144
  loc_BEE2C4: LitVarStr var_9C, "CondCtct"
  loc_BEE2C9: PopAdLdVar
  loc_BEE2CA: FLdRfVar var_140
  loc_BEE2CD: FLdRfVar var_B0
  loc_BEE2D0: FLdPr var_15C
  loc_BEE2D3: from_stack_1v = clsctacte.RsFrmGet()
  loc_BEE2D8: FLdPr var_B0
  loc_BEE2DB:  = Me.Fields
  loc_BEE2E0: FLdPr var_140
  loc_BEE2E3: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE2E8: LitI2_Byte 0
  loc_BEE2EA: LitI4 1
  loc_BEE2EF: FLdPr Me
  loc_BEE2F2: MemLdStr global_104
  loc_BEE2F5: AryLock
  loc_BEE2F8: Ary1LdPr
  loc_BEE2F9: MemLdRfVar from_stack_1.global_12
  loc_BEE2FC: CVarRef
  loc_BEE301: LitI2_Byte &HFF
  loc_BEE303: FLdZeroAd var_144
  loc_BEE306: CVarAd
  loc_BEE30A: PopAdLdVar
  loc_BEE30B: FLdPr Me
  loc_BEE30E: MemLdStr global_108
  loc_BEE311: FLdPr Me
  loc_BEE314: MemLdStr global_100
  loc_BEE317: AryLock
  loc_BEE31A: Ary1LdPr
  loc_BEE31B: MemLdRfVar from_stack_1.global_12
  loc_BEE31E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BEE323: AryUnlock
  loc_BEE326: AryUnlock
  loc_BEE329: FFreeAd var_B0 = ""
  loc_BEE330: FFree1Var var_C4 = ""
  loc_BEE333: FLdRfVar var_144
  loc_BEE336: LitVarStr var_9C, "ExenCtct"
  loc_BEE33B: PopAdLdVar
  loc_BEE33C: FLdRfVar var_140
  loc_BEE33F: FLdRfVar var_B0
  loc_BEE342: FLdPr var_15C
  loc_BEE345: from_stack_1v = clsctacte.RsFrmGet()
  loc_BEE34A: FLdPr var_B0
  loc_BEE34D:  = Me.Fields
  loc_BEE352: FLdPr var_140
  loc_BEE355: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE35A: LitI2_Byte 0
  loc_BEE35C: LitI4 1
  loc_BEE361: FLdPr Me
  loc_BEE364: MemLdStr global_104
  loc_BEE367: AryLock
  loc_BEE36A: Ary1LdPr
  loc_BEE36B: MemLdRfVar from_stack_1.global_16
  loc_BEE36E: CVarRef
  loc_BEE373: LitI2_Byte &HFF
  loc_BEE375: FLdZeroAd var_144
  loc_BEE378: CVarAd
  loc_BEE37C: PopAdLdVar
  loc_BEE37D: FLdPr Me
  loc_BEE380: MemLdStr global_108
  loc_BEE383: FLdPr Me
  loc_BEE386: MemLdStr global_100
  loc_BEE389: AryLock
  loc_BEE38C: Ary1LdPr
  loc_BEE38D: MemLdRfVar from_stack_1.global_16
  loc_BEE390: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BEE395: AryUnlock
  loc_BEE398: AryUnlock
  loc_BEE39B: FFreeAd var_B0 = ""
  loc_BEE3A2: FFree1Var var_C4 = ""
  loc_BEE3A5: FLdRfVar var_144
  loc_BEE3A8: LitVarStr var_9C, "DescCtct"
  loc_BEE3AD: PopAdLdVar
  loc_BEE3AE: FLdRfVar var_140
  loc_BEE3B1: FLdRfVar var_B0
  loc_BEE3B4: FLdPr var_15C
  loc_BEE3B7: from_stack_1v = clsctacte.RsFrmGet()
  loc_BEE3BC: FLdPr var_B0
  loc_BEE3BF:  = Me.Fields
  loc_BEE3C4: FLdPr var_140
  loc_BEE3C7: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE3CC: LitI2_Byte 0
  loc_BEE3CE: LitI4 1
  loc_BEE3D3: FLdPr Me
  loc_BEE3D6: MemLdStr global_104
  loc_BEE3D9: AryLock
  loc_BEE3DC: Ary1LdPr
  loc_BEE3DD: MemLdRfVar from_stack_1.global_20
  loc_BEE3E0: CVarRef
  loc_BEE3E5: LitI2_Byte &HFF
  loc_BEE3E7: FLdZeroAd var_144
  loc_BEE3EA: CVarAd
  loc_BEE3EE: PopAdLdVar
  loc_BEE3EF: FLdPr Me
  loc_BEE3F2: MemLdStr global_108
  loc_BEE3F5: FLdPr Me
  loc_BEE3F8: MemLdStr global_100
  loc_BEE3FB: AryLock
  loc_BEE3FE: Ary1LdPr
  loc_BEE3FF: MemLdRfVar from_stack_1.global_20
  loc_BEE402: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BEE407: AryUnlock
  loc_BEE40A: AryUnlock
  loc_BEE40D: FFreeAd var_B0 = ""
  loc_BEE414: FFree1Var var_C4 = ""
  loc_BEE417: FLdRfVar var_144
  loc_BEE41A: LitVarStr var_9C, "TotaCtct"
  loc_BEE41F: PopAdLdVar
  loc_BEE420: FLdRfVar var_140
  loc_BEE423: FLdRfVar var_B0
  loc_BEE426: FLdPr var_15C
  loc_BEE429: from_stack_1v = clsctacte.RsFrmGet()
  loc_BEE42E: FLdPr var_B0
  loc_BEE431:  = Me.Fields
  loc_BEE436: FLdPr var_140
  loc_BEE439: from_stack_2 = Me.Item(from_stack_1)
  loc_BEE43E: LitI2_Byte 0
  loc_BEE440: LitI4 1
  loc_BEE445: FLdPr Me
  loc_BEE448: MemLdStr global_104
  loc_BEE44B: AryLock
  loc_BEE44E: Ary1LdPr
  loc_BEE44F: MemLdRfVar from_stack_1.global_24
  loc_BEE452: CVarRef
  loc_BEE457: LitI2_Byte &HFF
  loc_BEE459: FLdZeroAd var_144
  loc_BEE45C: CVarAd
  loc_BEE460: PopAdLdVar
  loc_BEE461: FLdPr Me
  loc_BEE464: MemLdStr global_108
  loc_BEE467: FLdPr Me
  loc_BEE46A: MemLdStr global_100
  loc_BEE46D: AryLock
  loc_BEE470: Ary1LdPr
  loc_BEE471: MemLdRfVar from_stack_1.global_24
  loc_BEE474: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BEE479: AryUnlock
  loc_BEE47C: AryUnlock
  loc_BEE47F: FFreeAd var_B0 = ""
  loc_BEE486: FFree1Var var_C4 = ""
  loc_BEE489: LitI2_Byte 1
  loc_BEE48B: PopTmpLdAd2 var_B2
  loc_BEE48E: FLdPr Me
  loc_BEE491: MemLdRfVar from_stack_1.global_92
  loc_BEE494: NewIfNullPr clsctacte
  loc_BEE497: Call clsctacte.Move(from_stack_1v)
  loc_BEE49C: FLdPr Me
  loc_BEE49F: MemLdRfVar from_stack_1.global_108
  loc_BEE4A2: NextI4 var_174, loc_BEE173
  loc_BEE4A7: LitVar_FALSE
  loc_BEE4AB: PopAdLdVar
  loc_BEE4AC: FLdPrThis
  loc_BEE4AD: VCallAd Control_ID_Pbar
  loc_BEE4B0: FStAdFunc var_B0
  loc_BEE4B3: FLdPr var_B0
  loc_BEE4B6: LateIdSt
  loc_BEE4BB: FFree1Ad var_B0
  loc_BEE4BE: LitNothing
  loc_BEE4C0: FStAd var_15C 
  loc_BEE4C4: LitI2_Byte &HFF
  loc_BEE4C6: FLdPr Me
  loc_BEE4C9: MemStI2 bGenerado
  loc_BEE4CC: LitI4 0
  loc_BEE4D1: CI2I4
  loc_BEE4D2: FLdPr Me
  loc_BEE4D5: Me.MousePointer = from_stack_1
  loc_BEE4DA: LitVarStr var_9C, vbNullString
  loc_BEE4DF: PopAdLdVar
  loc_BEE4E0: FLdPr Me
  loc_BEE4E3: VCallAd Control_ID_statusBar
  loc_BEE4E6: FStAdFunc var_B0
  loc_BEE4E9: FLdPr var_B0
  loc_BEE4EC: LateIdSt
  loc_BEE4F1: FFree1Ad var_B0
  loc_BEE4F4: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B38EFC
  'Data Table: 47E374
  loc_B38BE8: FLdRfVar var_88
  loc_B38BEB: LitI2_Byte 0
  loc_B38BED: LitI2_Byte &HFF
  loc_B38BEF: ImpAdLdI4 MemVar_D93C84
  loc_B38BF2: FLdPr Me
  loc_B38BF5: MemLdRfVar from_stack_1.global_56
  loc_B38BF8: NewIfNullPr IFileSystem3
  loc_B38BFB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B38C00: ILdRf var_88
  loc_B38C03: FLdPr Me
  loc_B38C06: MemStVarAd
  loc_B38C0A: FFree1Ad var_88
  loc_B38C0D: LitI2_Byte &HFF
  loc_B38C0F: ImpAdStI2 MemVar_D93C8A
  loc_B38C12: Call Proc_336_23_BC66A8()
  loc_B38C17: LitI4 1
  loc_B38C1C: FLdPr Me
  loc_B38C1F: MemLdRfVar from_stack_1.global_108
  loc_B38C22: FLdPr Me
  loc_B38C25: MemLdStr global_100
  loc_B38C28: LitI2_Byte 1
  loc_B38C2A: FnUBound
  loc_B38C2C: ForI4 var_90
  loc_B38C32: FLdPr Me
  loc_B38C35: MemLdStr global_108
  loc_B38C38: FLdPr Me
  loc_B38C3B: MemLdStr global_100
  loc_B38C3E: AryLock
  loc_B38C41: Ary1LdRf
  loc_B38C42: FStR4 var_98
  loc_B38C45: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B38C4A: PopAdLdVar
  loc_B38C4B: FLdPr Me
  loc_B38C4E: MemLdRfVar from_stack_1.global_60
  loc_B38C51: LdPrVar
  loc_B38C53: LateMemCall
  loc_B38C59: LitStr vbNullString
  loc_B38C5C: LitI2_Byte 0
  loc_B38C5E: LitI2_Byte 0
  loc_B38C60: LitI2_Byte 0
  loc_B38C62: LitStr "right"
  loc_B38C65: FMemLdR4 var_98(0)
  loc_B38C6A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38C6F: CVarStr var_C8
  loc_B38C72: PopAdLdVar
  loc_B38C73: FLdPr Me
  loc_B38C76: MemLdRfVar from_stack_1.global_60
  loc_B38C79: LdPrVar
  loc_B38C7B: LateMemCall
  loc_B38C81: FFree1Var var_C8 = ""
  loc_B38C84: LitStr vbNullString
  loc_B38C87: LitI2_Byte 0
  loc_B38C89: LitI2_Byte 0
  loc_B38C8B: LitI2_Byte 0
  loc_B38C8D: LitStr "left"
  loc_B38C90: FMemLdR4 var_98(4)
  loc_B38C95: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38C9A: CVarStr var_C8
  loc_B38C9D: PopAdLdVar
  loc_B38C9E: FLdPr Me
  loc_B38CA1: MemLdRfVar from_stack_1.global_60
  loc_B38CA4: LdPrVar
  loc_B38CA6: LateMemCall
  loc_B38CAC: FFree1Var var_C8 = ""
  loc_B38CAF: LitStr vbNullString
  loc_B38CB2: LitI2_Byte 0
  loc_B38CB4: LitI2_Byte 0
  loc_B38CB6: LitI2_Byte 0
  loc_B38CB8: LitStr "right"
  loc_B38CBB: FMemLdR4 var_98(8)
  loc_B38CC0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38CC5: CVarStr var_C8
  loc_B38CC8: PopAdLdVar
  loc_B38CC9: FLdPr Me
  loc_B38CCC: MemLdRfVar from_stack_1.global_60
  loc_B38CCF: LdPrVar
  loc_B38CD1: LateMemCall
  loc_B38CD7: FFree1Var var_C8 = ""
  loc_B38CDA: LitStr vbNullString
  loc_B38CDD: LitI2_Byte 0
  loc_B38CDF: LitI2_Byte 0
  loc_B38CE1: LitI2_Byte 0
  loc_B38CE3: LitStr "right"
  loc_B38CE6: FMemLdR4 var_98(12)
  loc_B38CEB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38CF0: CVarStr var_C8
  loc_B38CF3: PopAdLdVar
  loc_B38CF4: FLdPr Me
  loc_B38CF7: MemLdRfVar from_stack_1.global_60
  loc_B38CFA: LdPrVar
  loc_B38CFC: LateMemCall
  loc_B38D02: FFree1Var var_C8 = ""
  loc_B38D05: LitStr vbNullString
  loc_B38D08: LitI2_Byte 0
  loc_B38D0A: LitI2_Byte 0
  loc_B38D0C: LitI2_Byte 0
  loc_B38D0E: LitStr "right"
  loc_B38D11: FMemLdR4 var_98(16)
  loc_B38D16: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38D1B: CVarStr var_C8
  loc_B38D1E: PopAdLdVar
  loc_B38D1F: FLdPr Me
  loc_B38D22: MemLdRfVar from_stack_1.global_60
  loc_B38D25: LdPrVar
  loc_B38D27: LateMemCall
  loc_B38D2D: FFree1Var var_C8 = ""
  loc_B38D30: LitStr vbNullString
  loc_B38D33: LitI2_Byte 0
  loc_B38D35: LitI2_Byte 0
  loc_B38D37: LitI2_Byte 0
  loc_B38D39: LitStr "right"
  loc_B38D3C: FMemLdR4 var_98(20)
  loc_B38D41: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38D46: CVarStr var_C8
  loc_B38D49: PopAdLdVar
  loc_B38D4A: FLdPr Me
  loc_B38D4D: MemLdRfVar from_stack_1.global_60
  loc_B38D50: LdPrVar
  loc_B38D52: LateMemCall
  loc_B38D58: FFree1Var var_C8 = ""
  loc_B38D5B: LitStr vbNullString
  loc_B38D5E: LitI2_Byte 0
  loc_B38D60: LitI2_Byte 0
  loc_B38D62: LitI2_Byte 0
  loc_B38D64: LitStr "right"
  loc_B38D67: FMemLdR4 var_98(24)
  loc_B38D6C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38D71: CVarStr var_C8
  loc_B38D74: PopAdLdVar
  loc_B38D75: FLdPr Me
  loc_B38D78: MemLdRfVar from_stack_1.global_60
  loc_B38D7B: LdPrVar
  loc_B38D7D: LateMemCall
  loc_B38D83: FFree1Var var_C8 = ""
  loc_B38D86: LitVarStr var_A8, "     </tr>"
  loc_B38D8B: PopAdLdVar
  loc_B38D8C: FLdPr Me
  loc_B38D8F: MemLdRfVar from_stack_1.global_60
  loc_B38D92: LdPrVar
  loc_B38D94: LateMemCall
  loc_B38D9A: LitI4 0
  loc_B38D9F: FStR4 var_98
  loc_B38DA2: AryUnlock
  loc_B38DA5: FLdPr Me
  loc_B38DA8: MemLdRfVar from_stack_1.global_108
  loc_B38DAB: NextI4 var_90, loc_B38C32
  loc_B38DB0: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"">"
  loc_B38DB5: PopAdLdVar
  loc_B38DB6: FLdPr Me
  loc_B38DB9: MemLdRfVar from_stack_1.global_60
  loc_B38DBC: LdPrVar
  loc_B38DBE: LateMemCall
  loc_B38DC4: LitVarStr var_A8, "    <td colspan=""2"" align=""right"">Totales</td>"
  loc_B38DC9: PopAdLdVar
  loc_B38DCA: FLdPr Me
  loc_B38DCD: MemLdRfVar from_stack_1.global_60
  loc_B38DD0: LdPrVar
  loc_B38DD2: LateMemCall
  loc_B38DD8: LitI4 1
  loc_B38DDD: FLdPr Me
  loc_B38DE0: MemLdStr global_104
  loc_B38DE3: AryLock
  loc_B38DE6: Ary1LdRf
  loc_B38DE7: FStR4 var_D0
  loc_B38DEA: LitStr vbNullString
  loc_B38DED: LitI2_Byte 0
  loc_B38DEF: LitI2_Byte 0
  loc_B38DF1: LitI2_Byte 0
  loc_B38DF3: LitStr "right"
  loc_B38DF6: FMemLdR4 var_D0(8)
  loc_B38DFB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38E00: CVarStr var_C8
  loc_B38E03: PopAdLdVar
  loc_B38E04: FLdPr Me
  loc_B38E07: MemLdRfVar from_stack_1.global_60
  loc_B38E0A: LdPrVar
  loc_B38E0C: LateMemCall
  loc_B38E12: FFree1Var var_C8 = ""
  loc_B38E15: LitStr vbNullString
  loc_B38E18: LitI2_Byte 0
  loc_B38E1A: LitI2_Byte 0
  loc_B38E1C: LitI2_Byte 0
  loc_B38E1E: LitStr "right"
  loc_B38E21: FMemLdR4 var_D0(12)
  loc_B38E26: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38E2B: CVarStr var_C8
  loc_B38E2E: PopAdLdVar
  loc_B38E2F: FLdPr Me
  loc_B38E32: MemLdRfVar from_stack_1.global_60
  loc_B38E35: LdPrVar
  loc_B38E37: LateMemCall
  loc_B38E3D: FFree1Var var_C8 = ""
  loc_B38E40: LitStr vbNullString
  loc_B38E43: LitI2_Byte 0
  loc_B38E45: LitI2_Byte 0
  loc_B38E47: LitI2_Byte 0
  loc_B38E49: LitStr "right"
  loc_B38E4C: FMemLdR4 var_D0(16)
  loc_B38E51: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38E56: CVarStr var_C8
  loc_B38E59: PopAdLdVar
  loc_B38E5A: FLdPr Me
  loc_B38E5D: MemLdRfVar from_stack_1.global_60
  loc_B38E60: LdPrVar
  loc_B38E62: LateMemCall
  loc_B38E68: FFree1Var var_C8 = ""
  loc_B38E6B: LitStr vbNullString
  loc_B38E6E: LitI2_Byte 0
  loc_B38E70: LitI2_Byte 0
  loc_B38E72: LitI2_Byte 0
  loc_B38E74: LitStr "right"
  loc_B38E77: FMemLdR4 var_D0(20)
  loc_B38E7C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38E81: CVarStr var_C8
  loc_B38E84: PopAdLdVar
  loc_B38E85: FLdPr Me
  loc_B38E88: MemLdRfVar from_stack_1.global_60
  loc_B38E8B: LdPrVar
  loc_B38E8D: LateMemCall
  loc_B38E93: FFree1Var var_C8 = ""
  loc_B38E96: LitStr vbNullString
  loc_B38E99: LitI2_Byte 0
  loc_B38E9B: LitI2_Byte 0
  loc_B38E9D: LitI2_Byte 0
  loc_B38E9F: LitStr "right"
  loc_B38EA2: FMemLdR4 var_D0(24)
  loc_B38EA7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38EAC: CVarStr var_C8
  loc_B38EAF: PopAdLdVar
  loc_B38EB0: FLdPr Me
  loc_B38EB3: MemLdRfVar from_stack_1.global_60
  loc_B38EB6: LdPrVar
  loc_B38EB8: LateMemCall
  loc_B38EBE: FFree1Var var_C8 = ""
  loc_B38EC1: LitI4 0
  loc_B38EC6: FStR4 var_D0
  loc_B38EC9: AryUnlock
  loc_B38ECC: LitVarStr var_A8, "     </tr>"
  loc_B38ED1: PopAdLdVar
  loc_B38ED2: FLdPr Me
  loc_B38ED5: MemLdRfVar from_stack_1.global_60
  loc_B38ED8: LdPrVar
  loc_B38EDA: LateMemCall
  loc_B38EE0: Call Proc_336_24_ADFC68()
  loc_B38EE5: FLdPr Me
  loc_B38EE8: MemLdRfVar from_stack_1.global_60
  loc_B38EEB: LdPrVar
  loc_B38EED: LateMemCall
  loc_B38EF3: LitStr vbNullString
  loc_B38EF6: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B38EFB: ExitProcHresult
End Sub

Private Function Proc_336_23_BC66A8() 'BC66A8
  'Data Table: 47E374
  loc_BC5FD4: LitVarStr var_94, "<html>"
  loc_BC5FD9: PopAdLdVar
  loc_BC5FDA: FLdPr Me
  loc_BC5FDD: MemLdRfVar from_stack_1.global_60
  loc_BC5FE0: LdPrVar
  loc_BC5FE2: LateMemCall
  loc_BC5FE8: LitVarStr var_94, "<head>"
  loc_BC5FED: PopAdLdVar
  loc_BC5FEE: FLdPr Me
  loc_BC5FF1: MemLdRfVar from_stack_1.global_60
  loc_BC5FF4: LdPrVar
  loc_BC5FF6: LateMemCall
  loc_BC5FFC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BC6001: PopAdLdVar
  loc_BC6002: FLdPr Me
  loc_BC6005: MemLdRfVar from_stack_1.global_60
  loc_BC6008: LdPrVar
  loc_BC600A: LateMemCall
  loc_BC6010: LitStr "<title>"
  loc_BC6013: FLdRfVar var_A8
  loc_BC6016: FLdPr Me
  loc_BC6019:  = Me.Caption
  loc_BC601E: ILdRf var_A8
  loc_BC6021: ConcatStr
  loc_BC6022: FStStrNoPop var_AC
  loc_BC6025: LitStr "</title>"
  loc_BC6028: ConcatStr
  loc_BC6029: CVarStr var_BC
  loc_BC602C: PopAdLdVar
  loc_BC602D: FLdPr Me
  loc_BC6030: MemLdRfVar from_stack_1.global_60
  loc_BC6033: LdPrVar
  loc_BC6035: LateMemCall
  loc_BC603B: FFreeStr var_A8 = ""
  loc_BC6042: FFree1Var var_BC = ""
  loc_BC6045: LitVarStr var_94, "<style type=""text/css"">"
  loc_BC604A: PopAdLdVar
  loc_BC604B: FLdPr Me
  loc_BC604E: MemLdRfVar from_stack_1.global_60
  loc_BC6051: LdPrVar
  loc_BC6053: LateMemCall
  loc_BC6059: LitVarStr var_94, ".Titulo1 {"
  loc_BC605E: PopAdLdVar
  loc_BC605F: FLdPr Me
  loc_BC6062: MemLdRfVar from_stack_1.global_60
  loc_BC6065: LdPrVar
  loc_BC6067: LateMemCall
  loc_BC606D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC6072: PopAdLdVar
  loc_BC6073: FLdPr Me
  loc_BC6076: MemLdRfVar from_stack_1.global_60
  loc_BC6079: LdPrVar
  loc_BC607B: LateMemCall
  loc_BC6081: LitVarStr var_94, " font-size: 18px;"
  loc_BC6086: PopAdLdVar
  loc_BC6087: FLdPr Me
  loc_BC608A: MemLdRfVar from_stack_1.global_60
  loc_BC608D: LdPrVar
  loc_BC608F: LateMemCall
  loc_BC6095: LitVarStr var_94, " font-weight: bold;"
  loc_BC609A: PopAdLdVar
  loc_BC609B: FLdPr Me
  loc_BC609E: MemLdRfVar from_stack_1.global_60
  loc_BC60A1: LdPrVar
  loc_BC60A3: LateMemCall
  loc_BC60A9: LitVarStr var_94, "}"
  loc_BC60AE: PopAdLdVar
  loc_BC60AF: FLdPr Me
  loc_BC60B2: MemLdRfVar from_stack_1.global_60
  loc_BC60B5: LdPrVar
  loc_BC60B7: LateMemCall
  loc_BC60BD: LitVarStr var_94, ".Titulo2 {"
  loc_BC60C2: PopAdLdVar
  loc_BC60C3: FLdPr Me
  loc_BC60C6: MemLdRfVar from_stack_1.global_60
  loc_BC60C9: LdPrVar
  loc_BC60CB: LateMemCall
  loc_BC60D1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC60D6: PopAdLdVar
  loc_BC60D7: FLdPr Me
  loc_BC60DA: MemLdRfVar from_stack_1.global_60
  loc_BC60DD: LdPrVar
  loc_BC60DF: LateMemCall
  loc_BC60E5: LitVarStr var_94, " font-size: 14px;"
  loc_BC60EA: PopAdLdVar
  loc_BC60EB: FLdPr Me
  loc_BC60EE: MemLdRfVar from_stack_1.global_60
  loc_BC60F1: LdPrVar
  loc_BC60F3: LateMemCall
  loc_BC60F9: LitVarStr var_94, " font-weight: bold;"
  loc_BC60FE: PopAdLdVar
  loc_BC60FF: FLdPr Me
  loc_BC6102: MemLdRfVar from_stack_1.global_60
  loc_BC6105: LdPrVar
  loc_BC6107: LateMemCall
  loc_BC610D: LitVarStr var_94, "}"
  loc_BC6112: PopAdLdVar
  loc_BC6113: FLdPr Me
  loc_BC6116: MemLdRfVar from_stack_1.global_60
  loc_BC6119: LdPrVar
  loc_BC611B: LateMemCall
  loc_BC6121: LitVarStr var_94, ".Normal {"
  loc_BC6126: PopAdLdVar
  loc_BC6127: FLdPr Me
  loc_BC612A: MemLdRfVar from_stack_1.global_60
  loc_BC612D: LdPrVar
  loc_BC612F: LateMemCall
  loc_BC6135: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC613A: PopAdLdVar
  loc_BC613B: FLdPr Me
  loc_BC613E: MemLdRfVar from_stack_1.global_60
  loc_BC6141: LdPrVar
  loc_BC6143: LateMemCall
  loc_BC6149: LitVarStr var_94, " font-size: 12px;"
  loc_BC614E: PopAdLdVar
  loc_BC614F: FLdPr Me
  loc_BC6152: MemLdRfVar from_stack_1.global_60
  loc_BC6155: LdPrVar
  loc_BC6157: LateMemCall
  loc_BC615D: LitVarStr var_94, " font-style: normal;"
  loc_BC6162: PopAdLdVar
  loc_BC6163: FLdPr Me
  loc_BC6166: MemLdRfVar from_stack_1.global_60
  loc_BC6169: LdPrVar
  loc_BC616B: LateMemCall
  loc_BC6171: LitVarStr var_94, " font-weight: normal;"
  loc_BC6176: PopAdLdVar
  loc_BC6177: FLdPr Me
  loc_BC617A: MemLdRfVar from_stack_1.global_60
  loc_BC617D: LdPrVar
  loc_BC617F: LateMemCall
  loc_BC6185: LitVarStr var_94, " font-variant: normal;"
  loc_BC618A: PopAdLdVar
  loc_BC618B: FLdPr Me
  loc_BC618E: MemLdRfVar from_stack_1.global_60
  loc_BC6191: LdPrVar
  loc_BC6193: LateMemCall
  loc_BC6199: LitVarStr var_94, "}"
  loc_BC619E: PopAdLdVar
  loc_BC619F: FLdPr Me
  loc_BC61A2: MemLdRfVar from_stack_1.global_60
  loc_BC61A5: LdPrVar
  loc_BC61A7: LateMemCall
  loc_BC61AD: LitVarStr var_94, ".Encabezado {"
  loc_BC61B2: PopAdLdVar
  loc_BC61B3: FLdPr Me
  loc_BC61B6: MemLdRfVar from_stack_1.global_60
  loc_BC61B9: LdPrVar
  loc_BC61BB: LateMemCall
  loc_BC61C1: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BC61C6: PopAdLdVar
  loc_BC61C7: FLdPr Me
  loc_BC61CA: MemLdRfVar from_stack_1.global_60
  loc_BC61CD: LdPrVar
  loc_BC61CF: LateMemCall
  loc_BC61D5: LitVarStr var_94, " font-size: 11px;"
  loc_BC61DA: PopAdLdVar
  loc_BC61DB: FLdPr Me
  loc_BC61DE: MemLdRfVar from_stack_1.global_60
  loc_BC61E1: LdPrVar
  loc_BC61E3: LateMemCall
  loc_BC61E9: LitVarStr var_94, " font-weight: bold;"
  loc_BC61EE: PopAdLdVar
  loc_BC61EF: FLdPr Me
  loc_BC61F2: MemLdRfVar from_stack_1.global_60
  loc_BC61F5: LdPrVar
  loc_BC61F7: LateMemCall
  loc_BC61FD: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BC6202: PopAdLdVar
  loc_BC6203: FLdPr Me
  loc_BC6206: MemLdRfVar from_stack_1.global_60
  loc_BC6209: LdPrVar
  loc_BC620B: LateMemCall
  loc_BC6211: LitVarStr var_94, "}"
  loc_BC6216: PopAdLdVar
  loc_BC6217: FLdPr Me
  loc_BC621A: MemLdRfVar from_stack_1.global_60
  loc_BC621D: LdPrVar
  loc_BC621F: LateMemCall
  loc_BC6225: LitVarStr var_94, ".LineaDato {"
  loc_BC622A: PopAdLdVar
  loc_BC622B: FLdPr Me
  loc_BC622E: MemLdRfVar from_stack_1.global_60
  loc_BC6231: LdPrVar
  loc_BC6233: LateMemCall
  loc_BC6239: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC623E: PopAdLdVar
  loc_BC623F: FLdPr Me
  loc_BC6242: MemLdRfVar from_stack_1.global_60
  loc_BC6245: LdPrVar
  loc_BC6247: LateMemCall
  loc_BC624D: LitVarStr var_94, " font-size: 10px;"
  loc_BC6252: PopAdLdVar
  loc_BC6253: FLdPr Me
  loc_BC6256: MemLdRfVar from_stack_1.global_60
  loc_BC6259: LdPrVar
  loc_BC625B: LateMemCall
  loc_BC6261: LitVarStr var_94, "}"
  loc_BC6266: PopAdLdVar
  loc_BC6267: FLdPr Me
  loc_BC626A: MemLdRfVar from_stack_1.global_60
  loc_BC626D: LdPrVar
  loc_BC626F: LateMemCall
  loc_BC6275: LitVarStr var_94, ".Totales {"
  loc_BC627A: PopAdLdVar
  loc_BC627B: FLdPr Me
  loc_BC627E: MemLdRfVar from_stack_1.global_60
  loc_BC6281: LdPrVar
  loc_BC6283: LateMemCall
  loc_BC6289: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC628E: PopAdLdVar
  loc_BC628F: FLdPr Me
  loc_BC6292: MemLdRfVar from_stack_1.global_60
  loc_BC6295: LdPrVar
  loc_BC6297: LateMemCall
  loc_BC629D: LitVarStr var_94, " font-size: 12px;"
  loc_BC62A2: PopAdLdVar
  loc_BC62A3: FLdPr Me
  loc_BC62A6: MemLdRfVar from_stack_1.global_60
  loc_BC62A9: LdPrVar
  loc_BC62AB: LateMemCall
  loc_BC62B1: LitVarStr var_94, " font-weight: bold;"
  loc_BC62B6: PopAdLdVar
  loc_BC62B7: FLdPr Me
  loc_BC62BA: MemLdRfVar from_stack_1.global_60
  loc_BC62BD: LdPrVar
  loc_BC62BF: LateMemCall
  loc_BC62C5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BC62CA: PopAdLdVar
  loc_BC62CB: FLdPr Me
  loc_BC62CE: MemLdRfVar from_stack_1.global_60
  loc_BC62D1: LdPrVar
  loc_BC62D3: LateMemCall
  loc_BC62D9: LitVarStr var_94, "}"
  loc_BC62DE: PopAdLdVar
  loc_BC62DF: FLdPr Me
  loc_BC62E2: MemLdRfVar from_stack_1.global_60
  loc_BC62E5: LdPrVar
  loc_BC62E7: LateMemCall
  loc_BC62ED: LitVarStr var_94, ".SubTotales {"
  loc_BC62F2: PopAdLdVar
  loc_BC62F3: FLdPr Me
  loc_BC62F6: MemLdRfVar from_stack_1.global_60
  loc_BC62F9: LdPrVar
  loc_BC62FB: LateMemCall
  loc_BC6301: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC6306: PopAdLdVar
  loc_BC6307: FLdPr Me
  loc_BC630A: MemLdRfVar from_stack_1.global_60
  loc_BC630D: LdPrVar
  loc_BC630F: LateMemCall
  loc_BC6315: LitVarStr var_94, " font-size: 10px;"
  loc_BC631A: PopAdLdVar
  loc_BC631B: FLdPr Me
  loc_BC631E: MemLdRfVar from_stack_1.global_60
  loc_BC6321: LdPrVar
  loc_BC6323: LateMemCall
  loc_BC6329: LitVarStr var_94, " font-weight: bold;"
  loc_BC632E: PopAdLdVar
  loc_BC632F: FLdPr Me
  loc_BC6332: MemLdRfVar from_stack_1.global_60
  loc_BC6335: LdPrVar
  loc_BC6337: LateMemCall
  loc_BC633D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BC6342: PopAdLdVar
  loc_BC6343: FLdPr Me
  loc_BC6346: MemLdRfVar from_stack_1.global_60
  loc_BC6349: LdPrVar
  loc_BC634B: LateMemCall
  loc_BC6351: LitVarStr var_94, "}"
  loc_BC6356: PopAdLdVar
  loc_BC6357: FLdPr Me
  loc_BC635A: MemLdRfVar from_stack_1.global_60
  loc_BC635D: LdPrVar
  loc_BC635F: LateMemCall
  loc_BC6365: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BC636A: PopAdLdVar
  loc_BC636B: FLdPr Me
  loc_BC636E: MemLdRfVar from_stack_1.global_60
  loc_BC6371: LdPrVar
  loc_BC6373: LateMemCall
  loc_BC6379: LitVarStr var_94, "</style>"
  loc_BC637E: PopAdLdVar
  loc_BC637F: FLdPr Me
  loc_BC6382: MemLdRfVar from_stack_1.global_60
  loc_BC6385: LdPrVar
  loc_BC6387: LateMemCall
  loc_BC638D: LitI4 0
  loc_BC6392: FStStrCopy var_AC
  loc_BC6395: FLdRfVar var_AC
  loc_BC6398: LitI4 0
  loc_BC639D: FStStrCopy var_A8
  loc_BC63A0: FLdRfVar var_A8
  loc_BC63A3: LitI2_Byte &HFF
  loc_BC63A5: PopTmpLdAd2 var_BE
  loc_BC63A8: FLdPr Me
  loc_BC63AB: MemLdRfVar from_stack_1.global_60
  loc_BC63AE: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BC63B3: FFreeStr var_A8 = ""
  loc_BC63BA: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BC63BF: PopAdLdVar
  loc_BC63C0: FLdPr Me
  loc_BC63C3: MemLdRfVar from_stack_1.global_60
  loc_BC63C6: LdPrVar
  loc_BC63C8: LateMemCall
  loc_BC63CE: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BC63D3: PopAdLdVar
  loc_BC63D4: FLdPr Me
  loc_BC63D7: MemLdRfVar from_stack_1.global_60
  loc_BC63DA: LdPrVar
  loc_BC63DC: LateMemCall
  loc_BC63E2: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BC63E7: PopAdLdVar
  loc_BC63E8: FLdPr Me
  loc_BC63EB: MemLdRfVar from_stack_1.global_60
  loc_BC63EE: LdPrVar
  loc_BC63F0: LateMemCall
  loc_BC63F6: FLdPr Me
  loc_BC63F9: MemLdI2 bLogos
  loc_BC63FC: BranchF loc_BC6457
  loc_BC63FF: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BC6402: LitI2_Byte &H5F
  loc_BC6404: CStrUI1
  loc_BC6406: FStStrNoPop var_A8
  loc_BC6409: ConcatStr
  loc_BC640A: FStStrNoPop var_AC
  loc_BC640D: LitStr """ height="""
  loc_BC6410: ConcatStr
  loc_BC6411: FStStrNoPop var_C4
  loc_BC6414: LitI2_Byte &H3C
  loc_BC6416: CStrUI1
  loc_BC6418: FStStrNoPop var_C8
  loc_BC641B: ConcatStr
  loc_BC641C: FStStrNoPop var_CC
  loc_BC641F: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BC6422: ConcatStr
  loc_BC6423: FStStrNoPop var_D0
  loc_BC6426: LitStr "Municipalidad de Guaymallén"
  loc_BC6429: ConcatStr
  loc_BC642A: FStStrNoPop var_D4
  loc_BC642D: LitStr "</p>"
  loc_BC6430: ConcatStr
  loc_BC6431: CVarStr var_BC
  loc_BC6434: PopAdLdVar
  loc_BC6435: FLdPr Me
  loc_BC6438: MemLdRfVar from_stack_1.global_60
  loc_BC643B: LdPrVar
  loc_BC643D: LateMemCall
  loc_BC6443: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BC6454: FFree1Var var_BC = ""
  loc_BC6457: LitStr "    <p>"
  loc_BC645A: FLdRfVar var_A8
  loc_BC645D: FLdPr Me
  loc_BC6460:  = Me.Caption
  loc_BC6465: ILdRf var_A8
  loc_BC6468: ConcatStr
  loc_BC6469: FStStrNoPop var_AC
  loc_BC646C: LitStr "</p></th>"
  loc_BC646F: ConcatStr
  loc_BC6470: CVarStr var_BC
  loc_BC6473: PopAdLdVar
  loc_BC6474: FLdPr Me
  loc_BC6477: MemLdRfVar from_stack_1.global_60
  loc_BC647A: LdPrVar
  loc_BC647C: LateMemCall
  loc_BC6482: FFreeStr var_A8 = ""
  loc_BC6489: FFree1Var var_BC = ""
  loc_BC648C: LitVarStr var_94, "  </tr>"
  loc_BC6491: PopAdLdVar
  loc_BC6492: FLdPr Me
  loc_BC6495: MemLdRfVar from_stack_1.global_60
  loc_BC6498: LdPrVar
  loc_BC649A: LateMemCall
  loc_BC64A0: LitVarStr var_94, "  <tr>"
  loc_BC64A5: PopAdLdVar
  loc_BC64A6: FLdPr Me
  loc_BC64A9: MemLdRfVar from_stack_1.global_60
  loc_BC64AC: LdPrVar
  loc_BC64AE: LateMemCall
  loc_BC64B4: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BC64B9: PopAdLdVar
  loc_BC64BA: FLdPr Me
  loc_BC64BD: MemLdRfVar from_stack_1.global_60
  loc_BC64C0: LdPrVar
  loc_BC64C2: LateMemCall
  loc_BC64C8: LitVarStr var_94, "  </tr>"
  loc_BC64CD: PopAdLdVar
  loc_BC64CE: FLdPr Me
  loc_BC64D1: MemLdRfVar from_stack_1.global_60
  loc_BC64D4: LdPrVar
  loc_BC64D6: LateMemCall
  loc_BC64DC: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BC64E1: PopAdLdVar
  loc_BC64E2: FLdPr Me
  loc_BC64E5: MemLdRfVar from_stack_1.global_60
  loc_BC64E8: LdPrVar
  loc_BC64EA: LateMemCall
  loc_BC64F0: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BC64F3: FLdPr Me
  loc_BC64F6: VCallAd Control_ID_DesdeMsk
  loc_BC64F9: FStAdFunc var_D8
  loc_BC64FC: FLdPr var_D8
  loc_BC64FF: LateIdLdVar var_BC DispID_15 0
  loc_BC6506: CStrVarTmp
  loc_BC6507: FStStrNoPop var_A8
  loc_BC650A: ConcatStr
  loc_BC650B: FStStrNoPop var_AC
  loc_BC650E: LitStr "</td>"
  loc_BC6511: ConcatStr
  loc_BC6512: CVarStr var_E8
  loc_BC6515: PopAdLdVar
  loc_BC6516: FLdPr Me
  loc_BC6519: MemLdRfVar from_stack_1.global_60
  loc_BC651C: LdPrVar
  loc_BC651E: LateMemCall
  loc_BC6524: FFreeStr var_A8 = ""
  loc_BC652B: FFree1Ad var_D8
  loc_BC652E: FFreeVar var_BC = ""
  loc_BC6535: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_BC6538: FLdPr Me
  loc_BC653B: VCallAd Control_ID_HastaMsk
  loc_BC653E: FStAdFunc var_D8
  loc_BC6541: FLdPr var_D8
  loc_BC6544: LateIdLdVar var_BC DispID_15 0
  loc_BC654B: CStrVarTmp
  loc_BC654C: FStStrNoPop var_A8
  loc_BC654F: ConcatStr
  loc_BC6550: FStStrNoPop var_AC
  loc_BC6553: LitStr "</td>"
  loc_BC6556: ConcatStr
  loc_BC6557: CVarStr var_E8
  loc_BC655A: PopAdLdVar
  loc_BC655B: FLdPr Me
  loc_BC655E: MemLdRfVar from_stack_1.global_60
  loc_BC6561: LdPrVar
  loc_BC6563: LateMemCall
  loc_BC6569: FFreeStr var_A8 = ""
  loc_BC6570: FFree1Ad var_D8
  loc_BC6573: FFreeVar var_BC = ""
  loc_BC657A: LitVarStr var_94, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_BC657F: PopAdLdVar
  loc_BC6580: FLdPr Me
  loc_BC6583: MemLdRfVar from_stack_1.global_60
  loc_BC6586: LdPrVar
  loc_BC6588: LateMemCall
  loc_BC658E: LitVarStr var_94, "  </tr>"
  loc_BC6593: PopAdLdVar
  loc_BC6594: FLdPr Me
  loc_BC6597: MemLdRfVar from_stack_1.global_60
  loc_BC659A: LdPrVar
  loc_BC659C: LateMemCall
  loc_BC65A2: LitVarStr var_94, "</table>"
  loc_BC65A7: PopAdLdVar
  loc_BC65A8: FLdPr Me
  loc_BC65AB: MemLdRfVar from_stack_1.global_60
  loc_BC65AE: LdPrVar
  loc_BC65B0: LateMemCall
  loc_BC65B6: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC65BB: PopAdLdVar
  loc_BC65BC: FLdPr Me
  loc_BC65BF: MemLdRfVar from_stack_1.global_60
  loc_BC65C2: LdPrVar
  loc_BC65C4: LateMemCall
  loc_BC65CA: LitVarStr var_94, "  <thead>"
  loc_BC65CF: PopAdLdVar
  loc_BC65D0: FLdPr Me
  loc_BC65D3: MemLdRfVar from_stack_1.global_60
  loc_BC65D6: LdPrVar
  loc_BC65D8: LateMemCall
  loc_BC65DE: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC65E3: PopAdLdVar
  loc_BC65E4: FLdPr Me
  loc_BC65E7: MemLdRfVar from_stack_1.global_60
  loc_BC65EA: LdPrVar
  loc_BC65EC: LateMemCall
  loc_BC65F2: LitVarStr var_94, "    <th>Cod. Conc.</th>"
  loc_BC65F7: PopAdLdVar
  loc_BC65F8: FLdPr Me
  loc_BC65FB: MemLdRfVar from_stack_1.global_60
  loc_BC65FE: LdPrVar
  loc_BC6600: LateMemCall
  loc_BC6606: LitVarStr var_94, "    <th>Detalle del Concepto</th>"
  loc_BC660B: PopAdLdVar
  loc_BC660C: FLdPr Me
  loc_BC660F: MemLdRfVar from_stack_1.global_60
  loc_BC6612: LdPrVar
  loc_BC6614: LateMemCall
  loc_BC661A: LitVarStr var_94, "    <th>Prescripciones </th>"
  loc_BC661F: PopAdLdVar
  loc_BC6620: FLdPr Me
  loc_BC6623: MemLdRfVar from_stack_1.global_60
  loc_BC6626: LdPrVar
  loc_BC6628: LateMemCall
  loc_BC662E: LitVarStr var_94, "    <th>Condonaciones</th>"
  loc_BC6633: PopAdLdVar
  loc_BC6634: FLdPr Me
  loc_BC6637: MemLdRfVar from_stack_1.global_60
  loc_BC663A: LdPrVar
  loc_BC663C: LateMemCall
  loc_BC6642: LitVarStr var_94, "    <th>Exenciones</th>"
  loc_BC6647: PopAdLdVar
  loc_BC6648: FLdPr Me
  loc_BC664B: MemLdRfVar from_stack_1.global_60
  loc_BC664E: LdPrVar
  loc_BC6650: LateMemCall
  loc_BC6656: LitVarStr var_94, "    <th>Descuentos</th>"
  loc_BC665B: PopAdLdVar
  loc_BC665C: FLdPr Me
  loc_BC665F: MemLdRfVar from_stack_1.global_60
  loc_BC6662: LdPrVar
  loc_BC6664: LateMemCall
  loc_BC666A: LitVarStr var_94, "    <th>Total</th>"
  loc_BC666F: PopAdLdVar
  loc_BC6670: FLdPr Me
  loc_BC6673: MemLdRfVar from_stack_1.global_60
  loc_BC6676: LdPrVar
  loc_BC6678: LateMemCall
  loc_BC667E: LitVarStr var_94, "  </tr>"
  loc_BC6683: PopAdLdVar
  loc_BC6684: FLdPr Me
  loc_BC6687: MemLdRfVar from_stack_1.global_60
  loc_BC668A: LdPrVar
  loc_BC668C: LateMemCall
  loc_BC6692: LitVarStr var_94, "  </thead>"
  loc_BC6697: PopAdLdVar
  loc_BC6698: FLdPr Me
  loc_BC669B: MemLdRfVar from_stack_1.global_60
  loc_BC669E: LdPrVar
  loc_BC66A0: LateMemCall
  loc_BC66A6: ExitProcHresult
End Function

Private Function Proc_336_24_ADFC68() 'ADFC68
  'Data Table: 47E374
  loc_ADFAFC: LitVarStr var_94, "</table>"
  loc_ADFB01: PopAdLdVar
  loc_ADFB02: FLdPr Me
  loc_ADFB05: MemLdRfVar from_stack_1.global_60
  loc_ADFB08: LdPrVar
  loc_ADFB0A: LateMemCall
  loc_ADFB10: LitVarStr var_94, "<br>"
  loc_ADFB15: PopAdLdVar
  loc_ADFB16: FLdPr Me
  loc_ADFB19: MemLdRfVar from_stack_1.global_60
  loc_ADFB1C: LdPrVar
  loc_ADFB1E: LateMemCall
  loc_ADFB24: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_ADFB29: PopAdLdVar
  loc_ADFB2A: FLdPr Me
  loc_ADFB2D: MemLdRfVar from_stack_1.global_60
  loc_ADFB30: LdPrVar
  loc_ADFB32: LateMemCall
  loc_ADFB38: LitVarStr var_94, "  <tr>"
  loc_ADFB3D: PopAdLdVar
  loc_ADFB3E: FLdPr Me
  loc_ADFB41: MemLdRfVar from_stack_1.global_60
  loc_ADFB44: LdPrVar
  loc_ADFB46: LateMemCall
  loc_ADFB4C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_ADFB51: PopAdLdVar
  loc_ADFB52: FLdPr Me
  loc_ADFB55: MemLdRfVar from_stack_1.global_60
  loc_ADFB58: LdPrVar
  loc_ADFB5A: LateMemCall
  loc_ADFB60: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_ADFB65: PopAdLdVar
  loc_ADFB66: FLdPr Me
  loc_ADFB69: MemLdRfVar from_stack_1.global_60
  loc_ADFB6C: LdPrVar
  loc_ADFB6E: LateMemCall
  loc_ADFB74: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_ADFB79: PopAdLdVar
  loc_ADFB7A: FLdPr Me
  loc_ADFB7D: MemLdRfVar from_stack_1.global_60
  loc_ADFB80: LdPrVar
  loc_ADFB82: LateMemCall
  loc_ADFB88: LitVarStr var_94, "          <map name=""Map"">"
  loc_ADFB8D: PopAdLdVar
  loc_ADFB8E: FLdPr Me
  loc_ADFB91: MemLdRfVar from_stack_1.global_60
  loc_ADFB94: LdPrVar
  loc_ADFB96: LateMemCall
  loc_ADFB9C: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_ADFBA1: PopAdLdVar
  loc_ADFBA2: FLdPr Me
  loc_ADFBA5: MemLdRfVar from_stack_1.global_60
  loc_ADFBA8: LdPrVar
  loc_ADFBAA: LateMemCall
  loc_ADFBB0: LitVarStr var_94, "          </map>"
  loc_ADFBB5: PopAdLdVar
  loc_ADFBB6: FLdPr Me
  loc_ADFBB9: MemLdRfVar from_stack_1.global_60
  loc_ADFBBC: LdPrVar
  loc_ADFBBE: LateMemCall
  loc_ADFBC4: LitVarStr var_94, "    </div></th>"
  loc_ADFBC9: PopAdLdVar
  loc_ADFBCA: FLdPr Me
  loc_ADFBCD: MemLdRfVar from_stack_1.global_60
  loc_ADFBD0: LdPrVar
  loc_ADFBD2: LateMemCall
  loc_ADFBD8: LitVarStr var_94, "  </tr>"
  loc_ADFBDD: PopAdLdVar
  loc_ADFBDE: FLdPr Me
  loc_ADFBE1: MemLdRfVar from_stack_1.global_60
  loc_ADFBE4: LdPrVar
  loc_ADFBE6: LateMemCall
  loc_ADFBEC: LitVarStr var_94, "  <tr>"
  loc_ADFBF1: PopAdLdVar
  loc_ADFBF2: FLdPr Me
  loc_ADFBF5: MemLdRfVar from_stack_1.global_60
  loc_ADFBF8: LdPrVar
  loc_ADFBFA: LateMemCall
  loc_ADFC00: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_ADFC05: PopAdLdVar
  loc_ADFC06: FLdPr Me
  loc_ADFC09: MemLdRfVar from_stack_1.global_60
  loc_ADFC0C: LdPrVar
  loc_ADFC0E: LateMemCall
  loc_ADFC14: LitVarStr var_94, "  </tr>"
  loc_ADFC19: PopAdLdVar
  loc_ADFC1A: FLdPr Me
  loc_ADFC1D: MemLdRfVar from_stack_1.global_60
  loc_ADFC20: LdPrVar
  loc_ADFC22: LateMemCall
  loc_ADFC28: LitVarStr var_94, "</table>"
  loc_ADFC2D: PopAdLdVar
  loc_ADFC2E: FLdPr Me
  loc_ADFC31: MemLdRfVar from_stack_1.global_60
  loc_ADFC34: LdPrVar
  loc_ADFC36: LateMemCall
  loc_ADFC3C: LitVarStr var_94, "</body>"
  loc_ADFC41: PopAdLdVar
  loc_ADFC42: FLdPr Me
  loc_ADFC45: MemLdRfVar from_stack_1.global_60
  loc_ADFC48: LdPrVar
  loc_ADFC4A: LateMemCall
  loc_ADFC50: LitVarStr var_94, "</html>"
  loc_ADFC55: PopAdLdVar
  loc_ADFC56: FLdPr Me
  loc_ADFC59: MemLdRfVar from_stack_1.global_60
  loc_ADFC5C: LdPrVar
  loc_ADFC5E: LateMemCall
  loc_ADFC64: ExitProcHresult
  loc_ADFC65: Ary1StI4
  loc_ADFC66: PopFPR4
End Function
