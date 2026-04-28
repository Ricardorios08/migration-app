VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmConciliacionBancaria
  Caption = "Conciliación Bancaria"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmConciliacionBancaria.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 14895
  ClientHeight = 9435
  Begin VB.TextBox BuscarNumeroTxt
    Left = 10080
    Top = 840
    Width = 1935
    Height = 360
    TabIndex = 10
    MaxLength = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.CommandButton BuscarNumeroCmd
    Left = 12120
    Top = 840
    Width = 375
    Height = 375
    TabIndex = 11
    Picture = "frmConciliacionBancaria.frx":08CA
    Style = 1
  End
  Begin MSFlexGridLib.MSFlexGrid FlexTitulo
    Left = 120
    Top = 1320
    Width = 12495
    Height = 375
    TabIndex = 12
    OleObjectBlob = "frmConciliacionBancaria.frx":09AC
  End
  Begin VB.CommandButton cmdNueva
    Caption = "&Nueva búsqueda"
    Left = 13080
    Top = 840
    Width = 2055
    Height = 615
    TabIndex = 15
  End
  Begin MSComctlLib.ProgressBar pbar1
    Left = 120
    Top = 1800
    Width = 13815
    Height = 375
    Visible = 0   'False
    TabIndex = 13
    OleObjectBlob = "frmConciliacionBancaria.frx":0A98
  End
  Begin VB.CommandButton BuscarImporteCmd
    Left = 7560
    Top = 840
    Width = 375
    Height = 375
    TabIndex = 8
    Picture = "frmConciliacionBancaria.frx":0B00
    Style = 1
  End
  Begin VB.TextBox BuscarImporteTxt
    Left = 5520
    Top = 840
    Width = 1935
    Height = 360
    TabIndex = 7
    MaxLength = 15
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.CommandButton cmdSalir
    Left = 14640
    Top = 7800
    Width = 855
    Height = 615
    TabIndex = 28
    Picture = "frmConciliacionBancaria.frx":0BE2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton cmdBuscar
    Left = 2520
    Top = 720
    Width = 615
    Height = 480
    TabIndex = 5
    Picture = "frmConciliacionBancaria.frx":0E34
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSFlexGridLib.MSFlexGrid FlexConciliacion
    Left = 120
    Top = 1680
    Width = 13815
    Height = 7815
    TabIndex = 14
    OleObjectBlob = "frmConciliacionBancaria.frx":0F16
    Appearance = 0 'Flat
  End
  Begin MSMask.MaskEdBox CodiBancMsk
    Left = 1050
    Top = 240
    Width = 615
    Height = 360
    TabIndex = 1
    OleObjectBlob = "frmConciliacionBancaria.frx":1002
  End
  Begin MSMask.MaskEdBox FechMobaMsk
    Left = 1050
    Top = 840
    Width = 1335
    Height = 360
    TabIndex = 4
    OleObjectBlob = "frmConciliacionBancaria.frx":1090
  End
  Begin VB.Label Label9
    Caption = "Buscar Número:"
    Left = 8280
    Top = 840
    Width = 1815
    Height = 360
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
  Begin VB.Label TResulConciLbl
    Left = 14040
    Top = 6720
    Width = 2055
    Height = 255
    TabIndex = 27
    BorderStyle = 1 'Fixed Single
    DataFormat = 80
  End
  Begin VB.Label Label8
    Caption = "Resultado de la conciliación:"
    Left = 14040
    Top = 6360
    Width = 2055
    Height = 255
    TabIndex = 26
  End
  Begin VB.Label TDebSinRegLbl
    Left = 14040
    Top = 5880
    Width = 2055
    Height = 255
    TabIndex = 25
    BorderStyle = 1 'Fixed Single
    DataFormat = 80
  End
  Begin VB.Label Label7
    Caption = "Más débitos NO registrados:"
    Left = 14040
    Top = 5520
    Width = 2055
    Height = 255
    TabIndex = 24
  End
  Begin VB.Label TCredSinRegLbl
    Left = 14040
    Top = 5040
    Width = 2055
    Height = 255
    TabIndex = 23
    BorderStyle = 1 'Fixed Single
    DataFormat = 80
  End
  Begin VB.Label Label6
    Caption = "Menos créditos NO registrados:"
    Left = 14040
    Top = 4680
    Width = 2295
    Height = 255
    TabIndex = 22
  End
  Begin VB.Label TCredSinConcLbl
    Left = 14040
    Top = 4200
    Width = 2055
    Height = 255
    TabIndex = 21
    BorderStyle = 1 'Fixed Single
    DataFormat = 80
  End
  Begin VB.Label Label4
    Caption = "Más créditos NO conciliados:"
    Left = 14040
    Top = 3840
    Width = 2175
    Height = 255
    TabIndex = 20
  End
  Begin VB.Label TDebSinConcLbl
    Left = 14040
    Top = 3360
    Width = 2055
    Height = 255
    TabIndex = 19
    BorderStyle = 1 'Fixed Single
    DataFormat = 80
  End
  Begin VB.Label Label3
    Caption = "Menos débitos NO conciliados:"
    Left = 14040
    Top = 3000
    Width = 2295
    Height = 255
    TabIndex = 18
  End
  Begin VB.Label SaldAlIniLbl
    Left = 14040
    Top = 2520
    Width = 2055
    Height = 255
    TabIndex = 17
    BorderStyle = 1 'Fixed Single
    DataFormat = 80
  End
  Begin VB.Label Label
    Caption = "Saldo según nuestros libros:"
    Left = 14040
    Top = 2160
    Width = 2055
    Height = 255
    TabIndex = 16
  End
  Begin VB.Label Label2
    Caption = "Buscar Importe:"
    Left = 3720
    Top = 840
    Width = 1815
    Height = 360
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
  Begin VB.Label Label1
    Caption = "Banco:"
    Left = 240
    Top = 240
    Width = 750
    Height = 300
    TabIndex = 0
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
  Begin VB.Label Label5
    Caption = "Fecha:"
    Left = 255
    Top = 840
    Width = 735
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
  Begin VB.Label DetaBancLbl
    Left = 1890
    Top = 240
    Width = 10335
    Height = 360
    TabIndex = 2
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
End

Attribute VB_Name = "frmConciliacionBancaria"


Private Sub FechMobaMsk_UnknownEvent_0 '950F58
  'Data Table: 4AD020
  loc_950F44: FLdPr Me
  loc_950F47: VCallAd Control_ID_FechMobaMsk
  loc_950F4A: CVarAd
  loc_950F4E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950F53: FFree1Var var_94 = ""
  loc_950F56: ExitProcHresult
End Sub

Private Sub FechMobaMsk_UnknownEvent_8 '9C1318
  'Data Table: 4AD020
  loc_9C1260: FLdPr Me
  loc_9C1263: VCallAd Control_ID_FechMobaMsk
  loc_9C1266: FStAdFunc var_88
  loc_9C1269: FLdPr var_88
  loc_9C126C: LateIdLdVar var_98 DispID_13 -32767
  loc_9C1273: CBoolVar
  loc_9C1275: FFree1Ad var_88
  loc_9C1278: FFree1Var var_98 = ""
  loc_9C127B: BranchF loc_9C1316
  loc_9C127E: FLdPr Me
  loc_9C1281: VCallAd Control_ID_FechMobaMsk
  loc_9C1284: FStAdFunc var_88
  loc_9C1287: FLdPr var_88
  loc_9C128A: LateIdLdVar var_98 DispID_15 0
  loc_9C1291: PopAd
  loc_9C1293: FLdPr Me
  loc_9C1296: VCallAd Control_ID_FechMobaMsk
  loc_9C1299: FStAdFunc var_AC
  loc_9C129C: LitI2_Byte &HFF
  loc_9C129E: PopTmpLdAd2 var_A2
  loc_9C12A1: FLdZeroAd var_AC
  loc_9C12A4: FStAdFunc var_A0
  loc_9C12A7: FLdRfVar var_A0
  loc_9C12AA: LitStr "01/01/2018"
  loc_9C12AD: LitI2_Byte 0
  loc_9C12AF: LitI2_Byte &HFF
  loc_9C12B1: FLdRfVar var_98
  loc_9C12B4: CStrVarTmp
  loc_9C12B5: FStStrNoPop var_9C
  loc_9C12B8: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C12BD: FStStrNoPop var_A8
  loc_9C12C0: FLdPr Me
  loc_9C12C3: MemStStrCopy
  loc_9C12C7: FFreeStr var_9C = ""
  loc_9C12CE: FFreeAd var_88 = "": var_A0 = ""
  loc_9C12D7: FFree1Var var_98 = ""
  loc_9C12DA: FLdPr Me
  loc_9C12DD: VCallAd Control_ID_FechMobaMsk
  loc_9C12E0: FStAdFunc var_B0
  loc_9C12E3: LitNothing
  loc_9C12E5: CastAd
  loc_9C12E8: FStAdFunc var_AC
  loc_9C12EB: FLdRfVar var_AC
  loc_9C12EE: FLdZeroAd var_B0
  loc_9C12F1: FStAdFuncNoPop
  loc_9C12F4: CastAd
  loc_9C12F7: FStAdFunc var_A0
  loc_9C12FA: FLdRfVar var_A0
  loc_9C12FD: FLdPr Me
  loc_9C1300: MemLdRfVar from_stack_1.global_56
  loc_9C1303: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C1308: IStI2 KeyAscii
  loc_9C130B: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C1316: ExitProcHresult
End Sub

Private Sub FechMobaMsk_KeyPress(KeyAscii As Integer) '985D80
  'Data Table: 4AD020
  loc_985D3C: ILdI2 KeyAscii
  loc_985D3F: CI4UI1
  loc_985D40: LitI4 &H20
  loc_985D45: EqI4
  loc_985D46: BranchF loc_985D7C
  loc_985D49: LitVar_Missing var_A4
  loc_985D4C: PopAdLdVar
  loc_985D4D: LitVarI4
  loc_985D55: PopAdLdVar
  loc_985D56: ImpAdLdRf MemVar_C3D9A8
  loc_985D59: NewIfNullPr frmCalendario
  loc_985D5C: frmCalendario.Show from_stack_1, from_stack_2
  loc_985D61: ImpAdLdRf MemVar_C3D038
  loc_985D64: CDargRef
  loc_985D68: FLdPr Me
  loc_985D6B: VCallAd Control_ID_FechMobaMsk
  loc_985D6E: FStAdFunc var_A8
  loc_985D71: FLdPr var_A8
  loc_985D74: LateIdSt
  loc_985D79: FFree1Ad var_A8
  loc_985D7C: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '954BF8
  'Data Table: 4AD020
  loc_954BE0: ILdRf Me
  loc_954BE3: FStAdNoPop
  loc_954BE7: ImpAdLdRf MemVar_C44F9C
  loc_954BEA: NewIfNullPr Me
  loc_954BED: Me.Global.Unload from_stack_1
  loc_954BF2: FFree1Ad var_88
  loc_954BF5: ExitProcHresult
End Sub

Private Sub FlexConciliacion_UnknownEvent_0 '93F878
  'Data Table: 4AD020
  loc_93F874: ExitProcHresult
  loc_93F877: ExitProcCy
End Sub

Private Sub FlexConciliacion_UnknownEvent_1 '93F7DC
  'Data Table: 4AD020
  loc_93F7D8: ExitProcHresult
End Sub

Private Sub FlexConciliacion_DblClick() 'A31DD8
  'Data Table: 4AD020
  loc_A31BD8: FLdPr Me
  loc_A31BDB: VCallAd Control_ID_FechMobaMsk
  loc_A31BDE: FStAdFunc var_88
  loc_A31BE1: FLdPr var_88
  loc_A31BE4: LateIdLdVar var_98 DispID_15 0
  loc_A31BEB: PopAd
  loc_A31BED: FLdPr Me
  loc_A31BF0: VCallAd Control_ID_FechMobaMsk
  loc_A31BF3: FStAdFunc var_AC
  loc_A31BF6: LitI2_Byte &HFF
  loc_A31BF8: PopTmpLdAd2 var_A2
  loc_A31BFB: FLdZeroAd var_AC
  loc_A31BFE: FStAdFunc var_A0
  loc_A31C01: FLdRfVar var_A0
  loc_A31C04: LitStr "01/01/2018"
  loc_A31C07: LitI2_Byte &HFF
  loc_A31C09: LitI2_Byte &HFF
  loc_A31C0B: FLdRfVar var_98
  loc_A31C0E: CStrVarTmp
  loc_A31C0F: FStStrNoPop var_9C
  loc_A31C12: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A31C17: FStStrNoPop var_A8
  loc_A31C1A: FLdPr Me
  loc_A31C1D: MemStStrCopy
  loc_A31C21: FFreeStr var_9C = ""
  loc_A31C28: FFreeAd var_88 = "": var_A0 = ""
  loc_A31C31: FFree1Var var_98 = ""
  loc_A31C34: FLdPr Me
  loc_A31C37: MemLdStr global_56
  loc_A31C3A: LitStr vbNullString
  loc_A31C3D: NeStr
  loc_A31C3F: BranchF loc_A31C55
  loc_A31C42: LitI4 0
  loc_A31C47: FLdPr Me
  loc_A31C4A: MemLdStr global_56
  loc_A31C4D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A31C52: Branch loc_A31DD5
  loc_A31C55: LitI2_Byte 0
  loc_A31C57: FLdPr Me
  loc_A31C5A: MemLdRfVar from_stack_1.global_60
  loc_A31C5D: FLdPr Me
  loc_A31C60: VCallAd Control_ID_FlexConciliacion
  loc_A31C63: FStAdFunc var_88
  loc_A31C66: FLdPr var_88
  loc_A31C69: LateIdLdVar var_98 DispID_5 0
  loc_A31C70: CI4Var
  loc_A31C72: LitI4 1
  loc_A31C77: SubI4
  loc_A31C78: CI2I4
  loc_A31C79: FFree1Ad var_88
  loc_A31C7C: FFree1Var var_98 = ""
  loc_A31C7F: ForI2 var_B0
  loc_A31C85: FLdPr Me
  loc_A31C88: MemLdI2 global_60
  loc_A31C8B: CI4UI1
  loc_A31C8C: CVarI4
  loc_A31C90: PopAdLdVar
  loc_A31C91: FLdPr Me
  loc_A31C94: VCallAd Control_ID_FlexConciliacion
  loc_A31C97: FStAdFunc var_88
  loc_A31C9A: FLdPr var_88
  loc_A31C9D: LateIdSt
  loc_A31CA2: FFree1Ad var_88
  loc_A31CA5: FLdPr Me
  loc_A31CA8: VCallAd Control_ID_FlexConciliacion
  loc_A31CAB: FStAdFunc var_88
  loc_A31CAE: FLdPr var_88
  loc_A31CB1: LateIdLdVar var_98 DispID_38 0
  loc_A31CB8: CI4Var
  loc_A31CBA: LitI4 &HFFFF80
  loc_A31CBF: EqI4
  loc_A31CC0: FFree1Ad var_88
  loc_A31CC3: FFree1Var var_98 = ""
  loc_A31CC6: BranchF loc_A31D30
  loc_A31CC9: LitVarI4
  loc_A31CD1: PopAdLdVar
  loc_A31CD2: FLdPr Me
  loc_A31CD5: VCallAd Control_ID_FlexConciliacion
  loc_A31CD8: FStAdFunc var_88
  loc_A31CDB: FLdPr var_88
  loc_A31CDE: LateIdSt
  loc_A31CE3: FFree1Ad var_88
  loc_A31CE6: FLdPr Me
  loc_A31CE9: VCallAd Control_ID_FlexConciliacion
  loc_A31CEC: FStAdFunc var_88
  loc_A31CEF: FLdPr var_88
  loc_A31CF2: LateIdLdVar var_98 DispID_10 0
  loc_A31CF9: CI4Var
  loc_A31CFB: CVarI4
  loc_A31CFF: PopAdLdVar
  loc_A31D00: LitVarI4
  loc_A31D08: PopAdLdVar
  loc_A31D09: LitVarStr var_100, "No"
  loc_A31D0E: PopAdLdVar
  loc_A31D0F: FLdPr Me
  loc_A31D12: VCallAd Control_ID_FlexConciliacion
  loc_A31D15: FStAdFunc var_A0
  loc_A31D18: FLdPr var_A0
  loc_A31D1B: LateIdCallSt
  loc_A31D23: FFreeAd var_88 = ""
  loc_A31D2A: FFree1Var var_98 = ""
  loc_A31D2D: Branch loc_A31DC5
  loc_A31D30: LitVarI4
  loc_A31D38: PopAdLdVar
  loc_A31D39: FLdPr Me
  loc_A31D3C: VCallAd Control_ID_FlexConciliacion
  loc_A31D3F: FStAdFunc var_88
  loc_A31D42: FLdPr var_88
  loc_A31D45: LateIdSt
  loc_A31D4A: FFree1Ad var_88
  loc_A31D4D: FLdPr Me
  loc_A31D50: VCallAd Control_ID_FlexConciliacion
  loc_A31D53: FStAdFunc var_88
  loc_A31D56: FLdPr var_88
  loc_A31D59: LateIdLdVar var_98 DispID_10 0
  loc_A31D60: CI4Var
  loc_A31D62: CVarI4
  loc_A31D66: PopAdLdVar
  loc_A31D67: LitVarI4
  loc_A31D6F: PopAdLdVar
  loc_A31D70: LitVarStr var_100, "Si"
  loc_A31D75: PopAdLdVar
  loc_A31D76: FLdPr Me
  loc_A31D79: VCallAd Control_ID_FlexConciliacion
  loc_A31D7C: FStAdFunc var_A0
  loc_A31D7F: FLdPr var_A0
  loc_A31D82: LateIdCallSt
  loc_A31D8A: FFreeAd var_88 = ""
  loc_A31D91: FFree1Var var_98 = ""
  loc_A31D94: FLdPr Me
  loc_A31D97: MemLdI2 global_60
  loc_A31D9A: CI4UI1
  loc_A31D9B: FLdPr Me
  loc_A31D9E: VCallAd Control_ID_FlexConciliacion
  loc_A31DA1: FStAdFunc var_88
  loc_A31DA4: FLdPr var_88
  loc_A31DA7: LateIdLdVar var_98 DispID_5 0
  loc_A31DAE: CI4Var
  loc_A31DB0: LitI4 1
  loc_A31DB5: SubI4
  loc_A31DB6: EqI4
  loc_A31DB7: FFree1Ad var_88
  loc_A31DBA: FFree1Var var_98 = ""
  loc_A31DBD: BranchF loc_A31DC5
  loc_A31DC0: Call Proc_107_23_A602C0()
  loc_A31DC5: FLdPr Me
  loc_A31DC8: MemLdRfVar from_stack_1.global_60
  loc_A31DCB: NextI2 var_B0, loc_A31C85
  loc_A31DD0: Call Proc_107_28_B09F68()
  loc_A31DD5: ExitProcHresult
  loc_A31DD6: PopTmpLdAd8 var_5800
End Sub

Private Sub FlexConciliacion_KeyPress(KeyAscii As Integer) 'A5280C
  'Data Table: 4AD020
  loc_A5255C: ILdI2 KeyAscii
  loc_A5255F: CI4UI1
  loc_A52560: FLdRfVar var_94
  loc_A52563: ImpAdCallFPR4  = Chr()
  loc_A52568: FLdRfVar var_94
  loc_A5256B: LitVarStr var_A4, "0"
  loc_A52570: HardType
  loc_A52571: GeVar var_B4
  loc_A52575: ILdI2 KeyAscii
  loc_A52578: CI4UI1
  loc_A52579: FLdRfVar var_C4
  loc_A5257C: ImpAdCallFPR4  = Chr()
  loc_A52581: FLdRfVar var_C4
  loc_A52584: LitVarStr var_D4, "9"
  loc_A52589: HardType
  loc_A5258A: LeVar var_E4
  loc_A5258E: AndVar var_F4
  loc_A52592: CBoolVarNull
  loc_A52594: FFreeVar var_94 = ""
  loc_A5259B: BranchF loc_A52612
  loc_A5259E: ILdI2 KeyAscii
  loc_A525A1: CI4UI1
  loc_A525A2: FLdRfVar var_94
  loc_A525A5: ImpAdCallFPR4  = Chr()
  loc_A525AA: FLdRfVar var_94
  loc_A525AD: CStrVarVal var_F8
  loc_A525B1: FLdPr Me
  loc_A525B4: VCallAd Control_ID_BuscarImporteTxt
  loc_A525B7: FStAdFunc var_FC
  loc_A525BA: FLdPr var_FC
  loc_A525BD: Me.Text = from_stack_1
  loc_A525C2: FFree1Str var_F8
  loc_A525C5: FFree1Ad var_FC
  loc_A525C8: FFree1Var var_94 = ""
  loc_A525CB: FLdPr Me
  loc_A525CE: VCallAd Control_ID_BuscarImporteTxt
  loc_A525D1: FStAdFunc var_FC
  loc_A525D4: FLdPr var_FC
  loc_A525D7: Me.SetFocus
  loc_A525DC: FFree1Ad var_FC
  loc_A525DF: FLdRfVar var_F8
  loc_A525E2: FLdPr Me
  loc_A525E5: VCallAd Control_ID_BuscarImporteTxt
  loc_A525E8: FStAdFunc var_FC
  loc_A525EB: FLdPr var_FC
  loc_A525EE:  = Me.Text
  loc_A525F3: ILdRf var_F8
  loc_A525F6: FnLenStr
  loc_A525F7: FLdPr Me
  loc_A525FA: VCallAd Control_ID_BuscarImporteTxt
  loc_A525FD: FStAdFunc var_100
  loc_A52600: FLdPr var_100
  loc_A52603: Me.SelStart = from_stack_1
  loc_A52608: FFree1Str var_F8
  loc_A5260B: FFreeAd var_FC = ""
  loc_A52612: LitStr "Municipalidad de Guaymallén"
  loc_A52615: LitStr "Municipalidad de Santa Rosa"
  loc_A52618: EqStr
  loc_A5261A: FLdPr Me
  loc_A5261D: VCallAd Control_ID_CodiBancMsk
  loc_A52620: FStAdFunc var_FC
  loc_A52623: FLdPr var_FC
  loc_A52626: LateIdLdVar var_94 DispID_22 0
  loc_A5262D: CStrVarTmp
  loc_A5262E: FStStrNoPop var_F8
  loc_A52631: LitStr "162"
  loc_A52634: EqStr
  loc_A52636: AndI4
  loc_A52637: FFree1Str var_F8
  loc_A5263A: FFree1Ad var_FC
  loc_A5263D: FFree1Var var_94 = ""
  loc_A52640: BranchF loc_A526A2
  loc_A52643: FLdPr Me
  loc_A52646: VCallAd Control_ID_FechMobaMsk
  loc_A52649: FStAdFunc var_FC
  loc_A5264C: FLdPr var_FC
  loc_A5264F: LateIdLdVar var_94 DispID_15 0
  loc_A52656: PopAd
  loc_A52658: FLdPr Me
  loc_A5265B: VCallAd Control_ID_FechMobaMsk
  loc_A5265E: FStAdFunc var_10C
  loc_A52661: LitI2_Byte &HFF
  loc_A52663: PopTmpLdAd2 var_102
  loc_A52666: FLdZeroAd var_10C
  loc_A52669: FStAdFunc var_100
  loc_A5266C: FLdRfVar var_100
  loc_A5266F: LitStr "01/01/2018"
  loc_A52672: LitI2_Byte 0
  loc_A52674: LitI2_Byte &HFF
  loc_A52676: FLdRfVar var_94
  loc_A52679: CStrVarTmp
  loc_A5267A: FStStrNoPop var_F8
  loc_A5267D: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A52682: FStStrNoPop var_108
  loc_A52685: FLdPr Me
  loc_A52688: MemStStrCopy
  loc_A5268C: FFreeStr var_F8 = ""
  loc_A52693: FFreeAd var_FC = "": var_100 = ""
  loc_A5269C: FFree1Var var_94 = ""
  loc_A5269F: Branch loc_A526FE
  loc_A526A2: FLdPr Me
  loc_A526A5: VCallAd Control_ID_FechMobaMsk
  loc_A526A8: FStAdFunc var_FC
  loc_A526AB: FLdPr var_FC
  loc_A526AE: LateIdLdVar var_94 DispID_15 0
  loc_A526B5: PopAd
  loc_A526B7: FLdPr Me
  loc_A526BA: VCallAd Control_ID_FechMobaMsk
  loc_A526BD: FStAdFunc var_10C
  loc_A526C0: LitI2_Byte &HFF
  loc_A526C2: PopTmpLdAd2 var_102
  loc_A526C5: FLdZeroAd var_10C
  loc_A526C8: FStAdFunc var_100
  loc_A526CB: FLdRfVar var_100
  loc_A526CE: LitStr "01/01/2018"
  loc_A526D1: LitI2_Byte &HFF
  loc_A526D3: LitI2_Byte &HFF
  loc_A526D5: FLdRfVar var_94
  loc_A526D8: CStrVarTmp
  loc_A526D9: FStStrNoPop var_F8
  loc_A526DC: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A526E1: FStStrNoPop var_108
  loc_A526E4: FLdPr Me
  loc_A526E7: MemStStrCopy
  loc_A526EB: FFreeStr var_F8 = ""
  loc_A526F2: FFreeAd var_FC = "": var_100 = ""
  loc_A526FB: FFree1Var var_94 = ""
  loc_A526FE: FLdPr Me
  loc_A52701: MemLdStr global_56
  loc_A52704: LitStr vbNullString
  loc_A52707: NeStr
  loc_A52709: BranchF loc_A5271F
  loc_A5270C: LitI4 0
  loc_A52711: FLdPr Me
  loc_A52714: MemLdStr global_56
  loc_A52717: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5271C: Branch loc_A52808
  loc_A5271F: ILdI2 KeyAscii
  loc_A52722: LitI2_Byte &H63
  loc_A52724: EqI2
  loc_A52725: BranchF loc_A52796
  loc_A52728: LitVarI4
  loc_A52730: PopAdLdVar
  loc_A52731: FLdPr Me
  loc_A52734: VCallAd Control_ID_FlexConciliacion
  loc_A52737: FStAdFunc var_FC
  loc_A5273A: FLdPr var_FC
  loc_A5273D: LateIdSt
  loc_A52742: FFree1Ad var_FC
  loc_A52745: FLdPr Me
  loc_A52748: VCallAd Control_ID_FlexConciliacion
  loc_A5274B: FStAdFunc var_FC
  loc_A5274E: FLdPr var_FC
  loc_A52751: LateIdLdVar var_94 DispID_10 0
  loc_A52758: CI4Var
  loc_A5275A: CVarI4
  loc_A5275E: PopAdLdVar
  loc_A5275F: LitVarI4
  loc_A52767: PopAdLdVar
  loc_A52768: LitVarStr var_13C, "Si"
  loc_A5276D: PopAdLdVar
  loc_A5276E: FLdPr Me
  loc_A52771: VCallAd Control_ID_FlexConciliacion
  loc_A52774: FStAdFunc var_100
  loc_A52777: FLdPr var_100
  loc_A5277A: LateIdCallSt
  loc_A52782: FFreeAd var_FC = ""
  loc_A52789: FFree1Var var_94 = ""
  loc_A5278C: Call Proc_107_23_A602C0()
  loc_A52791: Call Proc_107_28_B09F68()
  loc_A52796: ILdI2 KeyAscii
  loc_A52799: LitI2_Byte &H64
  loc_A5279B: EqI2
  loc_A5279C: BranchF loc_A52808
  loc_A5279F: LitVarI4
  loc_A527A7: PopAdLdVar
  loc_A527A8: FLdPr Me
  loc_A527AB: VCallAd Control_ID_FlexConciliacion
  loc_A527AE: FStAdFunc var_FC
  loc_A527B1: FLdPr var_FC
  loc_A527B4: LateIdSt
  loc_A527B9: FFree1Ad var_FC
  loc_A527BC: FLdPr Me
  loc_A527BF: VCallAd Control_ID_FlexConciliacion
  loc_A527C2: FStAdFunc var_FC
  loc_A527C5: FLdPr var_FC
  loc_A527C8: LateIdLdVar var_94 DispID_10 0
  loc_A527CF: CI4Var
  loc_A527D1: CVarI4
  loc_A527D5: PopAdLdVar
  loc_A527D6: LitVarI4
  loc_A527DE: PopAdLdVar
  loc_A527DF: LitVarStr var_13C, "No"
  loc_A527E4: PopAdLdVar
  loc_A527E5: FLdPr Me
  loc_A527E8: VCallAd Control_ID_FlexConciliacion
  loc_A527EB: FStAdFunc var_100
  loc_A527EE: FLdPr var_100
  loc_A527F1: LateIdCallSt
  loc_A527F9: FFreeAd var_FC = ""
  loc_A52800: FFree1Var var_94 = ""
  loc_A52803: Call Proc_107_28_B09F68()
  loc_A52808: ExitProcHresult
End Sub

Private Sub BuscarImporteTxt_GotFocus() '985C88
  'Data Table: 4AD020
  loc_985C4C: FLdRfVar var_8C
  loc_985C4F: FLdPr Me
  loc_985C52: VCallAd Control_ID_BuscarImporteTxt
  loc_985C55: FStAdFunc var_88
  loc_985C58: FLdPr var_88
  loc_985C5B:  = Me.Text
  loc_985C60: FLdZeroAd var_8C
  loc_985C63: CVarStr var_9C
  loc_985C66: ImpAdCallI2 IsNumeric()
  loc_985C6B: NotI4
  loc_985C6C: FFree1Ad var_88
  loc_985C6F: FFree1Var var_9C = ""
  loc_985C72: BranchF loc_985C87
  loc_985C75: FLdPr Me
  loc_985C78: VCallAd Control_ID_BuscarImporteTxt
  loc_985C7B: CVarAd
  loc_985C7F: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_985C84: FFree1Var var_9C = ""
  loc_985C87: ExitProcHresult
End Sub

Private Sub BuscarImporteTxt_KeyPress(KeyAscii As Integer) '98FC6C
  'Data Table: 4AD020
  loc_98FC1C: ILdI2 KeyAscii
  loc_98FC1F: CI4UI1
  loc_98FC20: LitI4 &HD
  loc_98FC25: EqI4
  loc_98FC26: ILdI2 KeyAscii
  loc_98FC29: CI4UI1
  loc_98FC2A: LitI4 &H6C
  loc_98FC2F: EqI4
  loc_98FC30: OrI4
  loc_98FC31: BranchF loc_98FC39
  loc_98FC34: Call BuscarImporteCmd_Click()
  loc_98FC39: LitStr "1234567890,."
  loc_98FC3C: FStStrCopy var_88
  loc_98FC3F: FLdRfVar var_88
  loc_98FC42: ILdRf KeyAscii
  loc_98FC45: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_98FC4A: IStI2 KeyAscii
  loc_98FC4D: FFree1Str var_88
  loc_98FC50: ILdI2 KeyAscii
  loc_98FC53: LitStr "."
  loc_98FC56: ImpAdCallI2 Asc()
  loc_98FC5B: EqI2
  loc_98FC5C: BranchF loc_98FC6A
  loc_98FC5F: LitStr ","
  loc_98FC62: ImpAdCallI2 Asc()
  loc_98FC67: IStI2 KeyAscii
  loc_98FC6A: ExitProcHresult
End Sub

Private Sub BuscarImporteTxt_Validate(Cancel As Boolean) '9DBD60
  'Data Table: 4AD020
  loc_9DBC64: FLdRfVar var_8C
  loc_9DBC67: FLdPr Me
  loc_9DBC6A: VCallAd Control_ID_BuscarImporteTxt
  loc_9DBC6D: FStAdFunc var_88
  loc_9DBC70: FLdPr var_88
  loc_9DBC73:  = Me.Text
  loc_9DBC78: ILdRf var_8C
  loc_9DBC7B: LitStr vbNullString
  loc_9DBC7E: NeStr
  loc_9DBC80: FFree1Str var_8C
  loc_9DBC83: FFree1Ad var_88
  loc_9DBC86: BranchF loc_9DBD5E
  loc_9DBC89: FLdRfVar var_8C
  loc_9DBC8C: FLdPr Me
  loc_9DBC8F: VCallAd Control_ID_BuscarImporteTxt
  loc_9DBC92: FStAdFunc var_88
  loc_9DBC95: FLdPr var_88
  loc_9DBC98:  = Me.Text
  loc_9DBC9D: LitStr "0"
  loc_9DBCA0: LitI2_Byte &HFF
  loc_9DBCA2: LitI2_Byte 0
  loc_9DBCA4: LitI2_Byte 0
  loc_9DBCA6: ILdRf var_8C
  loc_9DBCA9: LitStr "Importe"
  loc_9DBCAC: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9DBCB1: FStStrNoPop var_90
  loc_9DBCB4: FLdPr Me
  loc_9DBCB7: MemStStrCopy
  loc_9DBCBB: FFreeStr var_8C = ""
  loc_9DBCC2: FFree1Ad var_88
  loc_9DBCC5: FLdPr Me
  loc_9DBCC8: MemLdStr global_56
  loc_9DBCCB: LitStr vbNullString
  loc_9DBCCE: NeStr
  loc_9DBCD0: BranchF loc_9DBCFD
  loc_9DBCD3: LitI4 0
  loc_9DBCD8: FLdPr Me
  loc_9DBCDB: MemLdStr global_56
  loc_9DBCDE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9DBCE3: FLdPr Me
  loc_9DBCE6: VCallAd Control_ID_BuscarImporteTxt
  loc_9DBCE9: CVarAd
  loc_9DBCED: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9DBCF2: FFree1Var var_A0 = ""
  loc_9DBCF5: LitI2_Byte &HFF
  loc_9DBCF7: IStI2 Cancel
  loc_9DBCFA: Branch loc_9DBD5E
  loc_9DBCFD: FLdPr Me
  loc_9DBD00: VCallAd Control_ID_BuscarImporteTxt
  loc_9DBD03: FStAdFunc var_C4
  loc_9DBD06: LitI4 1
  loc_9DBD0B: LitI4 1
  loc_9DBD10: LitVarStr var_B0, "currency"
  loc_9DBD15: FStVarCopyObj var_C0
  loc_9DBD18: FLdRfVar var_C0
  loc_9DBD1B: FLdZeroAd var_C4
  loc_9DBD1E: CVarAd
  loc_9DBD22: ImpAdCallI2 Format$(, )
  loc_9DBD27: FStStrNoPop var_8C
  loc_9DBD2A: FLdPr Me
  loc_9DBD2D: VCallAd Control_ID_BuscarImporteTxt
  loc_9DBD30: FStAdFunc var_88
  loc_9DBD33: FLdPr var_88
  loc_9DBD36: Me.Text = from_stack_1
  loc_9DBD3B: FFree1Str var_8C
  loc_9DBD3E: FFreeAd var_88 = ""
  loc_9DBD45: FFreeVar var_A0 = ""
  loc_9DBD4C: FLdPr Me
  loc_9DBD4F: VCallAd Control_ID_BuscarImporteTxt
  loc_9DBD52: CVarAd
  loc_9DBD56: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9DBD5B: FFree1Var var_A0 = ""
  loc_9DBD5E: ExitProcHresult
End Sub

Private Sub cmdBuscar_Click() 'B716C0
  'Data Table: 4AD020
  loc_B70C08: LitStr vbNullString
  loc_B70C0B: FLdPr Me
  loc_B70C0E: MemStStrCopy
  loc_B70C12: LitI2_Byte 0
  loc_B70C14: PopTmpLdAd2 var_86
  loc_B70C17: Call FechMobaMsk_UnknownEvent_8()
  loc_B70C1C: FLdPr Me
  loc_B70C1F: MemLdStr global_56
  loc_B70C22: LitStr vbNullString
  loc_B70C25: NeStr
  loc_B70C27: BranchF loc_B70C2B
  loc_B70C2A: ExitProcHresult
  loc_B70C2B: FLdPr Me
  loc_B70C2E: VCallAd Control_ID_FlexTitulo
  loc_B70C31: FStAdFunc var_90
  loc_B70C34: FLdPr var_90
  loc_B70C37: LateIdLdVar var_A0 DispID_11 0
  loc_B70C3E: CI4Var
  loc_B70C40: FStR4 var_A4
  loc_B70C43: FFree1Ad var_90
  loc_B70C46: FFree1Var var_A0 = ""
  loc_B70C49: ILdRf var_A4
  loc_B70C4C: LitI4 1
  loc_B70C51: EqI4
  loc_B70C52: BranchF loc_B70C5E
  loc_B70C55: LitStr " ORDER BY CodiTimb, ImpoMoba, FechMoba, NumeMoba;"
  loc_B70C58: FStStrCopy var_8C
  loc_B70C5B: Branch loc_B70CE2
  loc_B70C5E: ILdRf var_A4
  loc_B70C61: LitI4 2
  loc_B70C66: EqI4
  loc_B70C67: BranchF loc_B70C73
  loc_B70C6A: LitStr " ORDER BY DetaTimb, ImpoMoba, FechMoba, NumeMoba;"
  loc_B70C6D: FStStrCopy var_8C
  loc_B70C70: Branch loc_B70CE2
  loc_B70C73: ILdRf var_A4
  loc_B70C76: LitI4 3
  loc_B70C7B: EqI4
  loc_B70C7C: BranchF loc_B70C88
  loc_B70C7F: LitStr " ORDER BY NumeMoba, ImpoMoba, FechMoba, CodiTimb;"
  loc_B70C82: FStStrCopy var_8C
  loc_B70C85: Branch loc_B70CE2
  loc_B70C88: ILdRf var_A4
  loc_B70C8B: LitI4 4
  loc_B70C90: EqI4
  loc_B70C91: BranchF loc_B70C9D
  loc_B70C94: LitStr " ORDER BY FechMoba, ImpoMoba, CodiTimb, NumeMoba;"
  loc_B70C97: FStStrCopy var_8C
  loc_B70C9A: Branch loc_B70CE2
  loc_B70C9D: ILdRf var_A4
  loc_B70CA0: LitI4 5
  loc_B70CA5: EqI4
  loc_B70CA6: BranchF loc_B70CB2
  loc_B70CA9: LitStr " ORDER BY FecoMoba, ImpoMoba, FechMoba, CodiTimb, NumeMoba;"
  loc_B70CAC: FStStrCopy var_8C
  loc_B70CAF: Branch loc_B70CE2
  loc_B70CB2: ILdRf var_A4
  loc_B70CB5: LitI4 6
  loc_B70CBA: EqI4
  loc_B70CBB: BranchF loc_B70CC7
  loc_B70CBE: LitStr " ORDER BY ImpoMoba, FechMoba, CodiTimb, NumeMoba;"
  loc_B70CC1: FStStrCopy var_8C
  loc_B70CC4: Branch loc_B70CE2
  loc_B70CC7: ILdRf var_A4
  loc_B70CCA: LitI4 9
  loc_B70CCF: EqI4
  loc_B70CD0: BranchF loc_B70CDC
  loc_B70CD3: LitStr " ORDER BY sNumeOrpa, ImpoMoba, FechMoba, CodiTimb, NumeMoba;"
  loc_B70CD6: FStStrCopy var_8C
  loc_B70CD9: Branch loc_B70CE2
  loc_B70CDC: LitStr " ORDER BY ImpoMoba, FechMoba, CodiTimb, NumeMoba;"
  loc_B70CDF: FStStrCopy var_8C
  loc_B70CE2: Call Proc_107_26_975938()
  loc_B70CE7: LitI2_Byte 0
  loc_B70CE9: FStI2 var_88
  loc_B70CEC: FLdPr Me
  loc_B70CEF: VCallAd Control_ID_FechMobaMsk
  loc_B70CF2: FStAdFunc var_90
  loc_B70CF5: FLdPr var_90
  loc_B70CF8: LateIdLdVar var_A0 DispID_15 0
  loc_B70CFF: PopAd
  loc_B70D01: LitStr "SET @fecha="
  loc_B70D04: LitI4 1
  loc_B70D09: LitI4 1
  loc_B70D0E: LitVarStr var_C4, "'yyyy-mm-dd'"
  loc_B70D13: FStVarCopyObj var_D4
  loc_B70D16: FLdRfVar var_D4
  loc_B70D19: FLdRfVar var_A0
  loc_B70D1C: CStrVarTmp
  loc_B70D1D: CVarStr var_B4
  loc_B70D20: ImpAdCallI2 Format$(, )
  loc_B70D25: FStStrNoPop var_D8
  loc_B70D28: ConcatStr
  loc_B70D29: FStStrNoPop var_DC
  loc_B70D2C: LitStr ";"
  loc_B70D2F: ConcatStr
  loc_B70D30: FStStrNoPop var_E0
  loc_B70D33: FLdPr Me
  loc_B70D36: MemLdRfVar from_stack_1.global_52
  loc_B70D39: NewIfNullPr clsmovibanco
  loc_B70D3C: Call clsmovibanco.RedefineRS(from_stack_1v)
  loc_B70D41: FFreeStr var_D8 = "": var_DC = ""
  loc_B70D4A: FFree1Ad var_90
  loc_B70D4D: FFreeVar var_A0 = "": var_B4 = ""
  loc_B70D56: LitStr "SELECT mb.PeriInfo, mb.IdMoba, CONVERT(mb.CodiTimb,CHAR(10)) CodiTimb, DetaTimb, tmb.DeCreTimb, NumeMoba, FechMoba, FecoMoba, IF(DebeMoba<>0,DebeMoba,HabeMoba) ImpoMoba, 'LB' LibroBanco, CAST(IF(NumeOrpa<>0,NumeOrpa,'') AS CHAR) sNumeOrpa"
  loc_B70D59: LitStr ", IF(Year(FecoMoba)=Year(@fecha) AND Month(FecoMoba)=Month(@fecha),'Si','No') Marcar, mb.DetaMoba"
  loc_B70D5C: ConcatStr
  loc_B70D5D: FStStrNoPop var_D8
  loc_B70D60: LitStr ", FeinMoba"
  loc_B70D63: ConcatStr
  loc_B70D64: FStStrNoPop var_DC
  loc_B70D67: LitStr " FROM movibanco mb"
  loc_B70D6A: ConcatStr
  loc_B70D6B: FStStrNoPop var_E0
  loc_B70D6E: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_B70D71: ConcatStr
  loc_B70D72: FStStrNoPop var_E4
  loc_B70D75: LitStr " WHERE mb.CodiBanc = "
  loc_B70D78: ConcatStr
  loc_B70D79: FStStrNoPop var_E8
  loc_B70D7C: FLdPr Me
  loc_B70D7F: VCallAd Control_ID_CodiBancMsk
  loc_B70D82: FStAdFunc var_90
  loc_B70D85: FLdPr var_90
  loc_B70D88: LateIdLdVar var_A0 DispID_22 0
  loc_B70D8F: CStrVarTmp
  loc_B70D90: FStStrNoPop var_EC
  loc_B70D93: ConcatStr
  loc_B70D94: FStStrNoPop var_F0
  loc_B70D97: LitStr " AND FechMoba <= @fecha"
  loc_B70D9A: ConcatStr
  loc_B70D9B: FStStrNoPop var_F4
  loc_B70D9E: LitStr " AND ((Year(FecoMoba)=Year(@fecha) AND Month(FecoMoba)=Month(@fecha)) OR FecoMoba IS NULL)"
  loc_B70DA1: ConcatStr
  loc_B70DA2: FStStrNoPop var_F8
  loc_B70DA5: LitStr " UNION ALL"
  loc_B70DA8: ConcatStr
  loc_B70DA9: FStStrNoPop var_FC
  loc_B70DAC: LitStr " SELECT me.PeriInfo, me.IdMobaex, CONVERT('',CHAR(10)) CodiTimb, CONVERT(IF(DebeMoba!=0,'Débito extracto','Crédito extracto'), CHAR(100)) DetaTimb, '' DeCreTimb, NumeMoba, FechMoba, FecoMoba, IF(DebeMoba<>0,DebeMoba,HabeMoba) ImpoMoba, 'Extr.' LibroBanco, '' sNumeOrpa"
  loc_B70DAF: ConcatStr
  loc_B70DB0: FStStrNoPop var_100
  loc_B70DB3: LitStr ", IF(Year(FecoMoba)=Year(@fecha) AND Month(FecoMoba)=Month(@fecha),'Si','No') Marcar, me.DetaMoba"
  loc_B70DB6: ConcatStr
  loc_B70DB7: FStStrNoPop var_104
  loc_B70DBA: LitStr ", NULL FeinMoba"
  loc_B70DBD: ConcatStr
  loc_B70DBE: FStStrNoPop var_108
  loc_B70DC1: LitStr " FROM moviextracto me"
  loc_B70DC4: ConcatStr
  loc_B70DC5: FStStrNoPop var_10C
  loc_B70DC8: LitStr " WHERE me.CodiBanc = "
  loc_B70DCB: ConcatStr
  loc_B70DCC: FStStrNoPop var_114
  loc_B70DCF: FLdPr Me
  loc_B70DD2: VCallAd Control_ID_CodiBancMsk
  loc_B70DD5: FStAdFunc var_110
  loc_B70DD8: FLdPr var_110
  loc_B70DDB: LateIdLdVar var_B4 DispID_22 0
  loc_B70DE2: CStrVarTmp
  loc_B70DE3: FStStrNoPop var_118
  loc_B70DE6: ConcatStr
  loc_B70DE7: FStStrNoPop var_11C
  loc_B70DEA: LitStr " AND FechMoba <= @fecha"
  loc_B70DED: ConcatStr
  loc_B70DEE: FStStrNoPop var_120
  loc_B70DF1: LitStr " AND ((Year(FecoMoba)=Year(@fecha) AND Month(FecoMoba)=Month(@fecha)) OR FecoMoba IS NULL)"
  loc_B70DF4: ConcatStr
  loc_B70DF5: FStStrNoPop var_124
  loc_B70DF8: ILdRf var_8C
  loc_B70DFB: ConcatStr
  loc_B70DFC: FStStrNoPop var_128
  loc_B70DFF: FLdPr Me
  loc_B70E02: MemLdRfVar from_stack_1.global_52
  loc_B70E05: NewIfNullPr clsmovibanco
  loc_B70E08: Call clsmovibanco.RedefineRS(from_stack_1v)
  loc_B70E0D: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_B70E38: FFreeAd var_90 = ""
  loc_B70E3F: FFreeVar var_A0 = ""
  loc_B70E46: FLdRfVar var_12C
  loc_B70E49: FLdPr Me
  loc_B70E4C: MemLdRfVar from_stack_1.global_52
  loc_B70E4F: NewIfNullPr clsmovibanco
  loc_B70E52: from_stack_1 = clsmovibanco.RecordCount
  loc_B70E57: ILdRf var_12C
  loc_B70E5A: LitI4 0
  loc_B70E5F: GtI4
  loc_B70E60: BranchF loc_B716B5
  loc_B70E63: LitI2_Byte 0
  loc_B70E65: FStI2 var_88
  loc_B70E68: FLdPr Me
  loc_B70E6B: MemLdRfVar from_stack_1.global_52
  loc_B70E6E: NewIfNullPr clsmovibanco
  loc_B70E71: Call clsmovibanco.MoveFirst()
  loc_B70E76: LitVarStr var_C4, "Cargando..."
  loc_B70E7B: PopAdLdVar
  loc_B70E7C: FLdPr Me
  loc_B70E7F: VCallAd Control_ID_FlexConciliacion
  loc_B70E82: FStAdFunc var_90
  loc_B70E85: FLdPr var_90
  loc_B70E88: LateIdSt
  loc_B70E8D: FFree1Ad var_90
  loc_B70E90: LitVar_FALSE
  loc_B70E94: PopAdLdVar
  loc_B70E95: FLdPr Me
  loc_B70E98: VCallAd Control_ID_FlexConciliacion
  loc_B70E9B: FStAdFunc var_90
  loc_B70E9E: FLdPr var_90
  loc_B70EA1: LateIdSt
  loc_B70EA6: FFree1Ad var_90
  loc_B70EA9: FLdPr Me
  loc_B70EAC: VCallAd Control_ID_FlexConciliacion
  loc_B70EAF: FStAdFunc var_90
  loc_B70EB2: FLdPr var_90
  loc_B70EB5: LateIdLdVar var_A0 DispID_74 -32767
  loc_B70EBC: CStrVarTmp
  loc_B70EBD: CVarStr var_B4
  loc_B70EC0: PopAdLdVar
  loc_B70EC1: FLdPr Me
  loc_B70EC4: VCallAd Control_ID_pbar1
  loc_B70EC7: FStAdFunc var_110
  loc_B70ECA: FLdPr var_110
  loc_B70ECD: LateIdSt
  loc_B70ED2: FFreeAd var_90 = ""
  loc_B70ED9: FFreeVar var_A0 = ""
  loc_B70EE0: LitI2_Byte 0
  loc_B70EE2: CR8I2
  loc_B70EE3: CVarR4
  loc_B70EE7: PopAdLdVar
  loc_B70EE8: FLdPr Me
  loc_B70EEB: VCallAd Control_ID_pbar1
  loc_B70EEE: FStAdFunc var_90
  loc_B70EF1: FLdPr var_90
  loc_B70EF4: LateIdSt
  loc_B70EF9: FFree1Ad var_90
  loc_B70EFC: FLdRfVar var_12C
  loc_B70EFF: FLdPr Me
  loc_B70F02: MemLdRfVar from_stack_1.global_52
  loc_B70F05: NewIfNullPr clsmovibanco
  loc_B70F08: from_stack_1 = clsmovibanco.RecordCount
  loc_B70F0D: ILdRf var_12C
  loc_B70F10: CR8I4
  loc_B70F11: CVarR4
  loc_B70F15: PopAdLdVar
  loc_B70F16: FLdPr Me
  loc_B70F19: VCallAd Control_ID_pbar1
  loc_B70F1C: FStAdFunc var_90
  loc_B70F1F: FLdPr var_90
  loc_B70F22: LateIdSt
  loc_B70F27: FFree1Ad var_90
  loc_B70F2A: LitVar_TRUE var_C4
  loc_B70F2D: PopAdLdVar
  loc_B70F2E: FLdPr Me
  loc_B70F31: VCallAd Control_ID_pbar1
  loc_B70F34: FStAdFunc var_90
  loc_B70F37: FLdPr var_90
  loc_B70F3A: LateIdSt
  loc_B70F3F: FFree1Ad var_90
  loc_B70F42: LitI2_Byte 1
  loc_B70F44: FLdRfVar var_88
  loc_B70F47: FLdRfVar var_12C
  loc_B70F4A: FLdPr Me
  loc_B70F4D: MemLdRfVar from_stack_1.global_52
  loc_B70F50: NewIfNullPr clsmovibanco
  loc_B70F53: from_stack_1 = clsmovibanco.RecordCount
  loc_B70F58: ILdRf var_12C
  loc_B70F5B: CI2I4
  loc_B70F5C: ForI2 var_140
  loc_B70F62: FLdI2 var_88
  loc_B70F65: CR8I2
  loc_B70F66: CVarR4
  loc_B70F6A: PopAdLdVar
  loc_B70F6B: FLdPr Me
  loc_B70F6E: VCallAd Control_ID_pbar1
  loc_B70F71: FStAdFunc var_90
  loc_B70F74: FLdPr var_90
  loc_B70F77: LateIdSt
  loc_B70F7C: FFree1Ad var_90
  loc_B70F7F: FLdRfVar var_31C
  loc_B70F82: LitVarStr var_318, "ImpoMoba"
  loc_B70F87: PopAdLdVar
  loc_B70F88: FLdRfVar var_308
  loc_B70F8B: FLdRfVar var_304
  loc_B70F8E: FLdPr Me
  loc_B70F91: MemLdRfVar from_stack_1.global_52
  loc_B70F94: NewIfNullPr clsmovibanco
  loc_B70F97: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B70F9C: FLdPr var_304
  loc_B70F9F:  = Me.Fields
  loc_B70FA4: FLdPr var_308
  loc_B70FA7: from_stack_2 = Me.Item(from_stack_1)
  loc_B70FAC: FLdRfVar var_4CC
  loc_B70FAF: FLdRfVar var_4BC
  loc_B70FB2: LitVarStr var_4B8, "CodiTimb"
  loc_B70FB7: PopAdLdVar
  loc_B70FB8: FLdRfVar var_4A8
  loc_B70FBB: FLdRfVar var_4A4
  loc_B70FBE: FLdPr Me
  loc_B70FC1: MemLdRfVar from_stack_1.global_52
  loc_B70FC4: NewIfNullPr clsmovibanco
  loc_B70FC7: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B70FCC: FLdPr var_4A4
  loc_B70FCF:  = Me.Fields
  loc_B70FD4: FLdPr var_4A8
  loc_B70FD7: from_stack_2 = Me.Item(from_stack_1)
  loc_B70FDC: FLdPr var_4BC
  loc_B70FDF:  = Me.Value
  loc_B70FE4: FLdRfVar var_518
  loc_B70FE7: FLdRfVar var_508
  loc_B70FEA: LitVarStr var_504, "FeinMoba"
  loc_B70FEF: PopAdLdVar
  loc_B70FF0: FLdRfVar var_4F4
  loc_B70FF3: FLdRfVar var_4F0
  loc_B70FF6: FLdPr Me
  loc_B70FF9: MemLdRfVar from_stack_1.global_52
  loc_B70FFC: NewIfNullPr clsmovibanco
  loc_B70FFF: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B71004: FLdPr var_4F0
  loc_B71007:  = Me.Fields
  loc_B7100C: FLdPr var_4F4
  loc_B7100F: from_stack_2 = Me.Item(from_stack_1)
  loc_B71014: FLdPr var_508
  loc_B71017:  = Me.Value
  loc_B7101C: FLdRfVar var_584
  loc_B7101F: FLdRfVar var_574
  loc_B71022: LitVarStr var_570, "DetaMoba"
  loc_B71027: PopAdLdVar
  loc_B71028: FLdRfVar var_560
  loc_B7102B: FLdRfVar var_55C
  loc_B7102E: FLdPr Me
  loc_B71031: MemLdRfVar from_stack_1.global_52
  loc_B71034: NewIfNullPr clsmovibanco
  loc_B71037: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B7103C: FLdPr var_55C
  loc_B7103F:  = Me.Fields
  loc_B71044: FLdPr var_560
  loc_B71047: from_stack_2 = Me.Item(from_stack_1)
  loc_B7104C: FLdPr var_574
  loc_B7104F:  = Me.Value
  loc_B71054: FLdRfVar var_A0
  loc_B71057: FLdRfVar var_144
  loc_B7105A: LitVarStr var_C4, "PeriInfo"
  loc_B7105F: PopAdLdVar
  loc_B71060: FLdRfVar var_110
  loc_B71063: FLdRfVar var_90
  loc_B71066: FLdPr Me
  loc_B71069: MemLdRfVar from_stack_1.global_52
  loc_B7106C: NewIfNullPr clsmovibanco
  loc_B7106F: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B71074: FLdPr var_90
  loc_B71077:  = Me.Fields
  loc_B7107C: FLdPr var_110
  loc_B7107F: from_stack_2 = Me.Item(from_stack_1)
  loc_B71084: FLdPr var_144
  loc_B71087:  = Me.Value
  loc_B7108C: FLdRfVar var_A0
  loc_B7108F: LitVarStr var_13C, "	"
  loc_B71094: ConcatVar var_B4
  loc_B71098: FLdRfVar var_D4
  loc_B7109B: FLdRfVar var_160
  loc_B7109E: LitVarStr var_15C, "CodiTimb"
  loc_B710A3: PopAdLdVar
  loc_B710A4: FLdRfVar var_14C
  loc_B710A7: FLdRfVar var_148
  loc_B710AA: FLdPr Me
  loc_B710AD: MemLdRfVar from_stack_1.global_52
  loc_B710B0: NewIfNullPr clsmovibanco
  loc_B710B3: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B710B8: FLdPr var_148
  loc_B710BB:  = Me.Fields
  loc_B710C0: FLdPr var_14C
  loc_B710C3: from_stack_2 = Me.Item(from_stack_1)
  loc_B710C8: FLdPr var_160
  loc_B710CB:  = Me.Value
  loc_B710D0: FLdRfVar var_D4
  loc_B710D3: ConcatVar var_170
  loc_B710D7: LitVarStr var_180, "	"
  loc_B710DC: ConcatVar var_190
  loc_B710E0: FLdRfVar var_1BC
  loc_B710E3: FLdRfVar var_1AC
  loc_B710E6: LitVarStr var_1A8, "DetaTimb"
  loc_B710EB: PopAdLdVar
  loc_B710EC: FLdRfVar var_198
  loc_B710EF: FLdRfVar var_194
  loc_B710F2: FLdPr Me
  loc_B710F5: MemLdRfVar from_stack_1.global_52
  loc_B710F8: NewIfNullPr clsmovibanco
  loc_B710FB: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B71100: FLdPr var_194
  loc_B71103:  = Me.Fields
  loc_B71108: FLdPr var_198
  loc_B7110B: from_stack_2 = Me.Item(from_stack_1)
  loc_B71110: FLdPr var_1AC
  loc_B71113:  = Me.Value
  loc_B71118: FLdRfVar var_1BC
  loc_B7111B: ConcatVar var_1CC
  loc_B7111F: LitVarStr var_1DC, "	"
  loc_B71124: ConcatVar var_1EC
  loc_B71128: FLdRfVar var_218
  loc_B7112B: FLdRfVar var_208
  loc_B7112E: LitVarStr var_204, "NumeMoba"
  loc_B71133: PopAdLdVar
  loc_B71134: FLdRfVar var_1F4
  loc_B71137: FLdRfVar var_1F0
  loc_B7113A: FLdPr Me
  loc_B7113D: MemLdRfVar from_stack_1.global_52
  loc_B71140: NewIfNullPr clsmovibanco
  loc_B71143: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B71148: FLdPr var_1F0
  loc_B7114B:  = Me.Fields
  loc_B71150: FLdPr var_1F4
  loc_B71153: from_stack_2 = Me.Item(from_stack_1)
  loc_B71158: FLdPr var_208
  loc_B7115B:  = Me.Value
  loc_B71160: FLdRfVar var_218
  loc_B71163: ConcatVar var_228
  loc_B71167: LitVarStr var_238, "	"
  loc_B7116C: ConcatVar var_248
  loc_B71170: FLdRfVar var_274
  loc_B71173: FLdRfVar var_264
  loc_B71176: LitVarStr var_260, "FechMoba"
  loc_B7117B: PopAdLdVar
  loc_B7117C: FLdRfVar var_250
  loc_B7117F: FLdRfVar var_24C
  loc_B71182: FLdPr Me
  loc_B71185: MemLdRfVar from_stack_1.global_52
  loc_B71188: NewIfNullPr clsmovibanco
  loc_B7118B: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B71190: FLdPr var_24C
  loc_B71193:  = Me.Fields
  loc_B71198: FLdPr var_250
  loc_B7119B: from_stack_2 = Me.Item(from_stack_1)
  loc_B711A0: FLdPr var_264
  loc_B711A3:  = Me.Value
  loc_B711A8: FLdRfVar var_274
  loc_B711AB: ConcatVar var_284
  loc_B711AF: LitVarStr var_294, "	"
  loc_B711B4: ConcatVar var_2A4
  loc_B711B8: FLdRfVar var_2D0
  loc_B711BB: FLdRfVar var_2C0
  loc_B711BE: LitVarStr var_2BC, "FecoMoba"
  loc_B711C3: PopAdLdVar
  loc_B711C4: FLdRfVar var_2AC
  loc_B711C7: FLdRfVar var_2A8
  loc_B711CA: FLdPr Me
  loc_B711CD: MemLdRfVar from_stack_1.global_52
  loc_B711D0: NewIfNullPr clsmovibanco
  loc_B711D3: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B711D8: FLdPr var_2A8
  loc_B711DB:  = Me.Fields
  loc_B711E0: FLdPr var_2AC
  loc_B711E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B711E8: FLdPr var_2C0
  loc_B711EB:  = Me.Value
  loc_B711F0: FLdRfVar var_2D0
  loc_B711F3: ConcatVar var_2E0
  loc_B711F7: LitVarStr var_2F0, "	"
  loc_B711FC: ConcatVar var_300
  loc_B71200: LitI4 1
  loc_B71205: LitI4 1
  loc_B7120A: LitVarStr var_33C, "0.00"
  loc_B7120F: FStVarCopyObj var_34C
  loc_B71212: FLdRfVar var_34C
  loc_B71215: FLdZeroAd var_31C
  loc_B71218: CVarAd
  loc_B7121C: ImpAdCallI2 Format$(, )
  loc_B71221: CVarStr var_35C
  loc_B71224: ConcatVar var_36C
  loc_B71228: LitVarStr var_37C, "	"
  loc_B7122D: ConcatVar var_38C
  loc_B71231: FLdRfVar var_3B8
  loc_B71234: FLdRfVar var_3A8
  loc_B71237: LitVarStr var_3A4, "Marcar"
  loc_B7123C: PopAdLdVar
  loc_B7123D: FLdRfVar var_394
  loc_B71240: FLdRfVar var_390
  loc_B71243: FLdPr Me
  loc_B71246: MemLdRfVar from_stack_1.global_52
  loc_B71249: NewIfNullPr clsmovibanco
  loc_B7124C: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B71251: FLdPr var_390
  loc_B71254:  = Me.Fields
  loc_B71259: FLdPr var_394
  loc_B7125C: from_stack_2 = Me.Item(from_stack_1)
  loc_B71261: FLdPr var_3A8
  loc_B71264:  = Me.Value
  loc_B71269: FLdRfVar var_3B8
  loc_B7126C: ConcatVar var_3C8
  loc_B71270: LitVarStr var_3D8, "	"
  loc_B71275: ConcatVar var_3E8
  loc_B71279: FLdRfVar var_414
  loc_B7127C: FLdRfVar var_404
  loc_B7127F: LitVarStr var_400, "LibroBanco"
  loc_B71284: PopAdLdVar
  loc_B71285: FLdRfVar var_3F0
  loc_B71288: FLdRfVar var_3EC
  loc_B7128B: FLdPr Me
  loc_B7128E: MemLdRfVar from_stack_1.global_52
  loc_B71291: NewIfNullPr clsmovibanco
  loc_B71294: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B71299: FLdPr var_3EC
  loc_B7129C:  = Me.Fields
  loc_B712A1: FLdPr var_3F0
  loc_B712A4: from_stack_2 = Me.Item(from_stack_1)
  loc_B712A9: FLdPr var_404
  loc_B712AC:  = Me.Value
  loc_B712B1: FLdRfVar var_414
  loc_B712B4: ConcatVar var_424
  loc_B712B8: LitVarStr var_434, "	"
  loc_B712BD: ConcatVar var_444
  loc_B712C1: FLdRfVar var_470
  loc_B712C4: FLdRfVar var_460
  loc_B712C7: LitVarStr var_45C, "sNumeOrpa"
  loc_B712CC: PopAdLdVar
  loc_B712CD: FLdRfVar var_44C
  loc_B712D0: FLdRfVar var_448
  loc_B712D3: FLdPr Me
  loc_B712D6: MemLdRfVar from_stack_1.global_52
  loc_B712D9: NewIfNullPr clsmovibanco
  loc_B712DC: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B712E1: FLdPr var_448
  loc_B712E4:  = Me.Fields
  loc_B712E9: FLdPr var_44C
  loc_B712EC: from_stack_2 = Me.Item(from_stack_1)
  loc_B712F1: FLdPr var_460
  loc_B712F4:  = Me.Value
  loc_B712F9: FLdRfVar var_470
  loc_B712FC: ConcatVar var_480
  loc_B71300: LitVarStr var_490, "	"
  loc_B71305: ConcatVar var_4A0
  loc_B71309: FLdRfVar var_5B0
  loc_B7130C: LitVarStr var_5AC, "DetaMoba"
  loc_B71311: PopAdLdVar
  loc_B71312: FLdRfVar var_59C
  loc_B71315: FLdRfVar var_598
  loc_B71318: FLdPr Me
  loc_B7131B: MemLdRfVar from_stack_1.global_52
  loc_B7131E: NewIfNullPr clsmovibanco
  loc_B71321: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B71326: FLdPr var_598
  loc_B71329:  = Me.Fields
  loc_B7132E: FLdPr var_59C
  loc_B71331: from_stack_2 = Me.Item(from_stack_1)
  loc_B71336: FLdZeroAd var_5B0
  loc_B71339: CVarAd
  loc_B7133D: LitVarStr var_528, ":"
  loc_B71342: FLdRfVar var_518
  loc_B71345: ConcatVar var_538
  loc_B71349: LitVarStr var_548, " - "
  loc_B7134E: ConcatVar var_558
  loc_B71352: FLdRfVar var_584
  loc_B71355: ConcatVar var_594
  loc_B71359: FLdRfVar var_4CC
  loc_B7135C: LitVarI2 var_4DC, 5
  loc_B71361: HardType
  loc_B71362: EqVar var_4EC
  loc_B71366: FStVar var_5C0
  loc_B7136A: FLdRfVar var_5C0
  loc_B7136D: FLdRfVar var_5E0
  loc_B71370: ImpAdCallFPR4  = IIf(, , )
  loc_B71375: FLdRfVar var_5E0
  loc_B71378: ConcatVar var_5F0
  loc_B7137C: LitVarStr var_600, "	"
  loc_B71381: ConcatVar var_610
  loc_B71385: FLdRfVar var_63C
  loc_B71388: FLdRfVar var_62C
  loc_B7138B: LitVarStr var_628, "IdMoba"
  loc_B71390: PopAdLdVar
  loc_B71391: FLdRfVar var_618
  loc_B71394: FLdRfVar var_614
  loc_B71397: FLdPr Me
  loc_B7139A: MemLdRfVar from_stack_1.global_52
  loc_B7139D: NewIfNullPr clsmovibanco
  loc_B713A0: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B713A5: FLdPr var_614
  loc_B713A8:  = Me.Fields
  loc_B713AD: FLdPr var_618
  loc_B713B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B713B5: FLdPr var_62C
  loc_B713B8:  = Me.Value
  loc_B713BD: FLdRfVar var_63C
  loc_B713C0: ConcatVar var_64C
  loc_B713C4: CStrVarTmp
  loc_B713C5: CVarStr var_65C
  loc_B713C8: PopAdLdVar
  loc_B713C9: FLdPr Me
  loc_B713CC: VCallAd Control_ID_FlexConciliacion
  loc_B713CF: FStAdFunc var_670
  loc_B713D2: FLdPr var_670
  loc_B713D5: LateIdCall
  loc_B713DD: FFreeAd var_4A8 = "": var_4BC = "": var_4F0 = "": var_4F4 = "": var_508 = "": var_55C = "": var_560 = "": var_574 = "": var_598 = "": var_59C = "": var_614 = "": var_618 = "": var_62C = "": var_670 = "": var_90 = "": var_110 = "": var_144 = "": var_148 = "": var_14C = "": var_160 = "": var_194 = "": var_198 = "": var_1AC = "": var_1F0 = "": var_1F4 = "": var_208 = "": var_24C = "": var_250 = "": var_264 = "": var_2A8 = "": var_2AC = "": var_2C0 = "": var_304 = "": var_308 = "": var_390 = "": var_394 = "": var_3A8 = "": var_3EC = "": var_3F0 = "": var_404 = "": var_448 = "": var_44C = "": var_460 = ""
  loc_B71438: FFreeVar var_4CC = "": var_518 = "": var_538 = "": var_558 = "": var_584 = "": var_5C0 = "": var_594 = "": var_5D0 = "": var_4A0 = "": var_5E0 = "": var_5F0 = "": var_610 = "": var_63C = "": var_64C = "": var_65C = "": var_A0 = "": var_B4 = "": var_D4 = "": var_170 = "": var_190 = "": var_1BC = "": var_1CC = "": var_1EC = "": var_218 = "": var_228 = "": var_248 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2D0 = "": var_2E0 = "": var_32C = "": var_34C = "": var_300 = "": var_35C = "": var_36C = "": var_38C = "": var_3B8 = "": var_3C8 = "": var_3E8 = "": var_414 = "": var_424 = "": var_444 = "": var_470 = ""
  loc_B71495: FLdRfVar var_A0
  loc_B71498: FLdRfVar var_144
  loc_B7149B: LitVarStr var_C4, "Marcar"
  loc_B714A0: PopAdLdVar
  loc_B714A1: FLdRfVar var_110
  loc_B714A4: FLdRfVar var_90
  loc_B714A7: FLdPr Me
  loc_B714AA: MemLdRfVar from_stack_1.global_52
  loc_B714AD: NewIfNullPr clsmovibanco
  loc_B714B0: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B714B5: FLdPr var_90
  loc_B714B8:  = Me.Fields
  loc_B714BD: FLdPr var_110
  loc_B714C0: from_stack_2 = Me.Item(from_stack_1)
  loc_B714C5: FLdPr var_144
  loc_B714C8:  = Me.Value
  loc_B714CD: FLdRfVar var_A0
  loc_B714D0: LitVarStr var_13C, "Si"
  loc_B714D5: HardType
  loc_B714D6: EqVarBool
  loc_B714D8: FFreeAd var_90 = "": var_110 = ""
  loc_B714E1: FFree1Var var_A0 = ""
  loc_B714E4: BranchF loc_B7157F
  loc_B714E7: LitI2_Byte 0
  loc_B714E9: FLdPr Me
  loc_B714EC: MemLdRfVar from_stack_1.global_60
  loc_B714EF: FLdPr Me
  loc_B714F2: VCallAd Control_ID_FlexConciliacion
  loc_B714F5: FStAdFunc var_90
  loc_B714F8: FLdPr var_90
  loc_B714FB: LateIdLdVar var_A0 DispID_5 0
  loc_B71502: CI4Var
  loc_B71504: LitI4 1
  loc_B71509: SubI4
  loc_B7150A: CI2I4
  loc_B7150B: FFree1Ad var_90
  loc_B7150E: FFree1Var var_A0 = ""
  loc_B71511: ForI2 var_674
  loc_B71517: FLdPr Me
  loc_B7151A: MemLdI2 global_60
  loc_B7151D: CI4UI1
  loc_B7151E: CVarI4
  loc_B71522: PopAdLdVar
  loc_B71523: FLdPr Me
  loc_B71526: VCallAd Control_ID_FlexConciliacion
  loc_B71529: FStAdFunc var_90
  loc_B7152C: FLdPr var_90
  loc_B7152F: LateIdSt
  loc_B71534: FFree1Ad var_90
  loc_B71537: FLdI2 var_88
  loc_B7153A: LitI2_Byte 1
  loc_B7153C: SubI2
  loc_B7153D: CI4UI1
  loc_B7153E: CVarI4
  loc_B71542: PopAdLdVar
  loc_B71543: FLdPr Me
  loc_B71546: VCallAd Control_ID_FlexConciliacion
  loc_B71549: FStAdFunc var_90
  loc_B7154C: FLdPr var_90
  loc_B7154F: LateIdSt
  loc_B71554: FFree1Ad var_90
  loc_B71557: LitVarI4
  loc_B7155F: PopAdLdVar
  loc_B71560: FLdPr Me
  loc_B71563: VCallAd Control_ID_FlexConciliacion
  loc_B71566: FStAdFunc var_90
  loc_B71569: FLdPr var_90
  loc_B7156C: LateIdSt
  loc_B71571: FFree1Ad var_90
  loc_B71574: FLdPr Me
  loc_B71577: MemLdRfVar from_stack_1.global_60
  loc_B7157A: NextI2 var_674, loc_B71517
  loc_B7157F: FLdRfVar var_A0
  loc_B71582: FLdRfVar var_144
  loc_B71585: LitVarStr var_C4, "DeCreTimb"
  loc_B7158A: PopAdLdVar
  loc_B7158B: FLdRfVar var_110
  loc_B7158E: FLdRfVar var_90
  loc_B71591: FLdPr Me
  loc_B71594: MemLdRfVar from_stack_1.global_52
  loc_B71597: NewIfNullPr clsmovibanco
  loc_B7159A: from_stack_1v = clsmovibanco.RsFrmGet()
  loc_B7159F: FLdPr var_90
  loc_B715A2:  = Me.Fields
  loc_B715A7: FLdPr var_110
  loc_B715AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B715AF: FLdPr var_144
  loc_B715B2:  = Me.Value
  loc_B715B7: FLdRfVar var_A0
  loc_B715BA: LitVarStr var_13C, "1"
  loc_B715BF: HardType
  loc_B715C0: EqVarBool
  loc_B715C2: FFreeAd var_90 = "": var_110 = ""
  loc_B715CB: FFree1Var var_A0 = ""
  loc_B715CE: BranchF loc_B7162B
  loc_B715D1: LitVarI4
  loc_B715D9: PopAdLdVar
  loc_B715DA: FLdPr Me
  loc_B715DD: VCallAd Control_ID_FlexConciliacion
  loc_B715E0: FStAdFunc var_90
  loc_B715E3: FLdPr var_90
  loc_B715E6: LateIdSt
  loc_B715EB: FFree1Ad var_90
  loc_B715EE: FLdI2 var_88
  loc_B715F1: LitI2_Byte 1
  loc_B715F3: SubI2
  loc_B715F4: CI4UI1
  loc_B715F5: CVarI4
  loc_B715F9: PopAdLdVar
  loc_B715FA: FLdPr Me
  loc_B715FD: VCallAd Control_ID_FlexConciliacion
  loc_B71600: FStAdFunc var_90
  loc_B71603: FLdPr var_90
  loc_B71606: LateIdSt
  loc_B7160B: FFree1Ad var_90
  loc_B7160E: LitVarI4
  loc_B71616: PopAdLdVar
  loc_B71617: FLdPr Me
  loc_B7161A: VCallAd Control_ID_FlexConciliacion
  loc_B7161D: FStAdFunc var_90
  loc_B71620: FLdPr var_90
  loc_B71623: LateIdSt
  loc_B71628: FFree1Ad var_90
  loc_B7162B: FLdI2 var_88
  loc_B7162E: LitI2_Byte 1
  loc_B71630: EqI2
  loc_B71631: BranchF loc_B71654
  loc_B71634: LitVarI4
  loc_B7163C: PopAdLdVar
  loc_B7163D: FLdPr Me
  loc_B71640: VCallAd Control_ID_FlexConciliacion
  loc_B71643: FStAdFunc var_90
  loc_B71646: FLdPr var_90
  loc_B71649: LateIdCall
  loc_B71651: FFree1Ad var_90
  loc_B71654: FLdPr Me
  loc_B71657: MemLdRfVar from_stack_1.global_52
  loc_B7165A: NewIfNullPr clsmovibanco
  loc_B7165D: Call clsmovibanco.MoveSiguiente()
  loc_B71662: FLdRfVar var_88
  loc_B71665: NextI2 var_140, loc_B70F62
  loc_B7166A: LitVar_FALSE
  loc_B7166E: PopAdLdVar
  loc_B7166F: FLdPr Me
  loc_B71672: VCallAd Control_ID_pbar1
  loc_B71675: FStAdFunc var_90
  loc_B71678: FLdPr var_90
  loc_B7167B: LateIdSt
  loc_B71680: FFree1Ad var_90
  loc_B71683: LitVar_TRUE var_C4
  loc_B71686: PopAdLdVar
  loc_B71687: FLdPr Me
  loc_B7168A: VCallAd Control_ID_FlexConciliacion
  loc_B7168D: FStAdFunc var_90
  loc_B71690: FLdPr var_90
  loc_B71693: LateIdSt
  loc_B71698: FFree1Ad var_90
  loc_B7169B: LitVarStr var_C4, vbNullString
  loc_B716A0: PopAdLdVar
  loc_B716A1: FLdPr Me
  loc_B716A4: VCallAd Control_ID_FlexConciliacion
  loc_B716A7: FStAdFunc var_90
  loc_B716AA: FLdPr var_90
  loc_B716AD: LateIdSt
  loc_B716B2: FFree1Ad var_90
  loc_B716B5: Call Proc_107_24_97D2C8()
  loc_B716BA: Call Proc_107_29_A408A8()
  loc_B716BF: ExitProcHresult
End Sub

Private Sub BuscarNumeroCmd_Click() '9BD18C
  'Data Table: 4AD020
  loc_9BD0D4: LitI2_Byte 0
  loc_9BD0D6: PopTmpLdAd2 var_86
  loc_9BD0D9: Call BuscarNumeroTxt_Validate(from_stack_1v)
  loc_9BD0DE: FLdPr Me
  loc_9BD0E1: MemLdStr global_56
  loc_9BD0E4: LitStr vbNullString
  loc_9BD0E7: NeStr
  loc_9BD0E9: BranchF loc_9BD0ED
  loc_9BD0EC: ExitProcHresult
  loc_9BD0ED: FLdPr Me
  loc_9BD0F0: VCallAd Control_ID_FlexConciliacion
  loc_9BD0F3: FStAdFunc var_90
  loc_9BD0F6: LitI4 1
  loc_9BD0FB: FLdRfVar var_8C
  loc_9BD0FE: FLdPr var_90
  loc_9BD101: LateIdLdVar var_A0 DispID_4 0
  loc_9BD108: CI4Var
  loc_9BD10A: LitI4 1
  loc_9BD10F: SubI4
  loc_9BD110: FFree1Var var_A0 = ""
  loc_9BD113: ForI4 var_A8
  loc_9BD119: FLdRfVar var_E4
  loc_9BD11C: FLdPr Me
  loc_9BD11F: VCallAd Control_ID_BuscarNumeroTxt
  loc_9BD122: FStAdFunc var_E0
  loc_9BD125: FLdPr var_E0
  loc_9BD128:  = Me.Text
  loc_9BD12D: FLdRfVar var_8C
  loc_9BD130: CDargRef
  loc_9BD134: LitVarI4
  loc_9BD13C: PopAdLdVar
  loc_9BD13D: FLdPr var_90
  loc_9BD140: LateIdCallLdVar
  loc_9BD14A: CStrVarTmp
  loc_9BD14B: FStStrNoPop var_DC
  loc_9BD14E: CR8Str
  loc_9BD150: ILdRf var_E4
  loc_9BD153: CR8Str
  loc_9BD155: EqR4
  loc_9BD156: FFreeStr var_DC = ""
  loc_9BD15D: FFree1Ad var_E0
  loc_9BD160: FFree1Var var_A0 = ""
  loc_9BD163: BranchF loc_9BD17C
  loc_9BD166: FLdPr var_90
  loc_9BD169: LateIdCall
  loc_9BD171: ILdRf var_8C
  loc_9BD174: Call Proc_107_27_9A89BC()
  loc_9BD179: Branch loc_9BD184
  loc_9BD17C: FLdRfVar var_8C
  loc_9BD17F: NextI4 var_A8, loc_9BD119
  loc_9BD184: LitNothing
  loc_9BD186: FStAd var_90 
  loc_9BD18A: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A20010
  'Data Table: 4AD020
  loc_A1FE60: Call Proc_107_26_975938()
  loc_A1FE65: LitI4 1
  loc_A1FE6A: LitI4 1
  loc_A1FE6F: LitVarStr var_B4, "currency"
  loc_A1FE74: FStVarCopyObj var_C4
  loc_A1FE77: FLdRfVar var_C4
  loc_A1FE7A: LitVarStr var_94, "0"
  loc_A1FE7F: FStVarCopyObj var_A4
  loc_A1FE82: FLdRfVar var_A4
  loc_A1FE85: ImpAdCallI2 Format$(, )
  loc_A1FE8A: FStStrNoPop var_C8
  loc_A1FE8D: FLdPr Me
  loc_A1FE90: VCallAd Control_ID_SaldAlIniLbl
  loc_A1FE93: FStAdFunc var_CC
  loc_A1FE96: FLdPr var_CC
  loc_A1FE99: Me.Caption = from_stack_1
  loc_A1FE9E: FFree1Str var_C8
  loc_A1FEA1: FFree1Ad var_CC
  loc_A1FEA4: FFreeVar var_A4 = ""
  loc_A1FEAB: LitI4 1
  loc_A1FEB0: LitI4 1
  loc_A1FEB5: LitVarStr var_B4, "currency"
  loc_A1FEBA: FStVarCopyObj var_C4
  loc_A1FEBD: FLdRfVar var_C4
  loc_A1FEC0: LitVarStr var_94, "0"
  loc_A1FEC5: FStVarCopyObj var_A4
  loc_A1FEC8: FLdRfVar var_A4
  loc_A1FECB: ImpAdCallI2 Format$(, )
  loc_A1FED0: FStStrNoPop var_C8
  loc_A1FED3: FLdPr Me
  loc_A1FED6: VCallAd Control_ID_TDebSinConcLbl
  loc_A1FED9: FStAdFunc var_CC
  loc_A1FEDC: FLdPr var_CC
  loc_A1FEDF: Me.Caption = from_stack_1
  loc_A1FEE4: FFree1Str var_C8
  loc_A1FEE7: FFree1Ad var_CC
  loc_A1FEEA: FFreeVar var_A4 = ""
  loc_A1FEF1: LitI4 1
  loc_A1FEF6: LitI4 1
  loc_A1FEFB: LitVarStr var_B4, "currency"
  loc_A1FF00: FStVarCopyObj var_C4
  loc_A1FF03: FLdRfVar var_C4
  loc_A1FF06: LitVarStr var_94, "0"
  loc_A1FF0B: FStVarCopyObj var_A4
  loc_A1FF0E: FLdRfVar var_A4
  loc_A1FF11: ImpAdCallI2 Format$(, )
  loc_A1FF16: FStStrNoPop var_C8
  loc_A1FF19: FLdPr Me
  loc_A1FF1C: VCallAd Control_ID_TCredSinConcLbl
  loc_A1FF1F: FStAdFunc var_CC
  loc_A1FF22: FLdPr var_CC
  loc_A1FF25: Me.Caption = from_stack_1
  loc_A1FF2A: FFree1Str var_C8
  loc_A1FF2D: FFree1Ad var_CC
  loc_A1FF30: FFreeVar var_A4 = ""
  loc_A1FF37: LitI4 1
  loc_A1FF3C: LitI4 1
  loc_A1FF41: LitVarStr var_B4, "currency"
  loc_A1FF46: FStVarCopyObj var_C4
  loc_A1FF49: FLdRfVar var_C4
  loc_A1FF4C: LitVarStr var_94, "0"
  loc_A1FF51: FStVarCopyObj var_A4
  loc_A1FF54: FLdRfVar var_A4
  loc_A1FF57: ImpAdCallI2 Format$(, )
  loc_A1FF5C: FStStrNoPop var_C8
  loc_A1FF5F: FLdPr Me
  loc_A1FF62: VCallAd Control_ID_TDebSinRegLbl
  loc_A1FF65: FStAdFunc var_CC
  loc_A1FF68: FLdPr var_CC
  loc_A1FF6B: Me.Caption = from_stack_1
  loc_A1FF70: FFree1Str var_C8
  loc_A1FF73: FFree1Ad var_CC
  loc_A1FF76: FFreeVar var_A4 = ""
  loc_A1FF7D: LitI4 1
  loc_A1FF82: LitI4 1
  loc_A1FF87: LitVarStr var_B4, "currency"
  loc_A1FF8C: FStVarCopyObj var_C4
  loc_A1FF8F: FLdRfVar var_C4
  loc_A1FF92: LitVarStr var_94, "0"
  loc_A1FF97: FStVarCopyObj var_A4
  loc_A1FF9A: FLdRfVar var_A4
  loc_A1FF9D: ImpAdCallI2 Format$(, )
  loc_A1FFA2: FStStrNoPop var_C8
  loc_A1FFA5: FLdPr Me
  loc_A1FFA8: VCallAd Control_ID_TCredSinRegLbl
  loc_A1FFAB: FStAdFunc var_CC
  loc_A1FFAE: FLdPr var_CC
  loc_A1FFB1: Me.Caption = from_stack_1
  loc_A1FFB6: FFree1Str var_C8
  loc_A1FFB9: FFree1Ad var_CC
  loc_A1FFBC: FFreeVar var_A4 = ""
  loc_A1FFC3: LitI4 1
  loc_A1FFC8: LitI4 1
  loc_A1FFCD: LitVarStr var_B4, "currency"
  loc_A1FFD2: FStVarCopyObj var_C4
  loc_A1FFD5: FLdRfVar var_C4
  loc_A1FFD8: LitVarStr var_94, "0"
  loc_A1FFDD: FStVarCopyObj var_A4
  loc_A1FFE0: FLdRfVar var_A4
  loc_A1FFE3: ImpAdCallI2 Format$(, )
  loc_A1FFE8: FStStrNoPop var_C8
  loc_A1FFEB: FLdPr Me
  loc_A1FFEE: VCallAd Control_ID_TResulConciLbl
  loc_A1FFF1: FStAdFunc var_CC
  loc_A1FFF4: FLdPr var_CC
  loc_A1FFF7: Me.Caption = from_stack_1
  loc_A1FFFC: FFree1Str var_C8
  loc_A1FFFF: FFree1Ad var_CC
  loc_A20002: FFreeVar var_A4 = ""
  loc_A20009: Call Proc_107_25_97D330()
  loc_A2000E: ExitProcHresult
End Sub

Private Sub BuscarImporteCmd_Click() '9BB404
  'Data Table: 4AD020
  loc_9BB34C: LitI2_Byte 0
  loc_9BB34E: PopTmpLdAd2 var_86
  loc_9BB351: Call BuscarImporteTxt_Validate(from_stack_1v)
  loc_9BB356: FLdPr Me
  loc_9BB359: MemLdStr global_56
  loc_9BB35C: LitStr vbNullString
  loc_9BB35F: NeStr
  loc_9BB361: BranchF loc_9BB365
  loc_9BB364: ExitProcHresult
  loc_9BB365: FLdPr Me
  loc_9BB368: VCallAd Control_ID_FlexConciliacion
  loc_9BB36B: FStAdFunc var_90
  loc_9BB36E: LitI4 1
  loc_9BB373: FLdRfVar var_8C
  loc_9BB376: FLdPr var_90
  loc_9BB379: LateIdLdVar var_A0 DispID_4 0
  loc_9BB380: CI4Var
  loc_9BB382: LitI4 1
  loc_9BB387: SubI4
  loc_9BB388: FFree1Var var_A0 = ""
  loc_9BB38B: ForI4 var_A8
  loc_9BB391: FLdRfVar var_E4
  loc_9BB394: FLdPr Me
  loc_9BB397: VCallAd Control_ID_BuscarImporteTxt
  loc_9BB39A: FStAdFunc var_E0
  loc_9BB39D: FLdPr var_E0
  loc_9BB3A0:  = Me.Text
  loc_9BB3A5: FLdRfVar var_8C
  loc_9BB3A8: CDargRef
  loc_9BB3AC: LitVarI4
  loc_9BB3B4: PopAdLdVar
  loc_9BB3B5: FLdPr var_90
  loc_9BB3B8: LateIdCallLdVar
  loc_9BB3C2: CStrVarTmp
  loc_9BB3C3: FStStrNoPop var_DC
  loc_9BB3C6: CR8Str
  loc_9BB3C8: ILdRf var_E4
  loc_9BB3CB: CR8Str
  loc_9BB3CD: GeR8
  loc_9BB3CE: FFreeStr var_DC = ""
  loc_9BB3D5: FFree1Ad var_E0
  loc_9BB3D8: FFree1Var var_A0 = ""
  loc_9BB3DB: BranchF loc_9BB3F4
  loc_9BB3DE: FLdPr var_90
  loc_9BB3E1: LateIdCall
  loc_9BB3E9: ILdRf var_8C
  loc_9BB3EC: Call Proc_107_27_9A89BC()
  loc_9BB3F1: Branch loc_9BB3FC
  loc_9BB3F4: FLdRfVar var_8C
  loc_9BB3F7: NextI4 var_A8, loc_9BB391
  loc_9BB3FC: LitNothing
  loc_9BB3FE: FStAd var_90 
  loc_9BB402: ExitProcHresult
End Sub

Private Sub BuscarNumeroTxt_GotFocus() '985D00
  'Data Table: 4AD020
  loc_985CC4: FLdRfVar var_8C
  loc_985CC7: FLdPr Me
  loc_985CCA: VCallAd Control_ID_BuscarNumeroTxt
  loc_985CCD: FStAdFunc var_88
  loc_985CD0: FLdPr var_88
  loc_985CD3:  = Me.Text
  loc_985CD8: FLdZeroAd var_8C
  loc_985CDB: CVarStr var_9C
  loc_985CDE: ImpAdCallI2 IsNumeric()
  loc_985CE3: NotI4
  loc_985CE4: FFree1Ad var_88
  loc_985CE7: FFree1Var var_9C = ""
  loc_985CEA: BranchF loc_985CFF
  loc_985CED: FLdPr Me
  loc_985CF0: VCallAd Control_ID_BuscarNumeroTxt
  loc_985CF3: CVarAd
  loc_985CF7: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_985CFC: FFree1Var var_9C = ""
  loc_985CFF: ExitProcHresult
End Sub

Private Sub BuscarNumeroTxt_KeyPress(KeyAscii As Integer) '98F744
  'Data Table: 4AD020
  loc_98F6F4: ILdI2 KeyAscii
  loc_98F6F7: CI4UI1
  loc_98F6F8: LitI4 &HD
  loc_98F6FD: EqI4
  loc_98F6FE: ILdI2 KeyAscii
  loc_98F701: CI4UI1
  loc_98F702: LitI4 &H6C
  loc_98F707: EqI4
  loc_98F708: OrI4
  loc_98F709: BranchF loc_98F711
  loc_98F70C: Call BuscarNumeroCmd_Click()
  loc_98F711: LitStr "1234567890,."
  loc_98F714: FStStrCopy var_88
  loc_98F717: FLdRfVar var_88
  loc_98F71A: ILdRf KeyAscii
  loc_98F71D: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_98F722: IStI2 KeyAscii
  loc_98F725: FFree1Str var_88
  loc_98F728: ILdI2 KeyAscii
  loc_98F72B: LitStr "."
  loc_98F72E: ImpAdCallI2 Asc()
  loc_98F733: EqI2
  loc_98F734: BranchF loc_98F742
  loc_98F737: LitStr ","
  loc_98F73A: ImpAdCallI2 Asc()
  loc_98F73F: IStI2 KeyAscii
  loc_98F742: ExitProcHresult
End Sub

Private Sub BuscarNumeroTxt_Validate(Cancel As Boolean) '9DB994
  'Data Table: 4AD020
  loc_9DB898: FLdRfVar var_8C
  loc_9DB89B: FLdPr Me
  loc_9DB89E: VCallAd Control_ID_BuscarNumeroTxt
  loc_9DB8A1: FStAdFunc var_88
  loc_9DB8A4: FLdPr var_88
  loc_9DB8A7:  = Me.Text
  loc_9DB8AC: ILdRf var_8C
  loc_9DB8AF: LitStr vbNullString
  loc_9DB8B2: NeStr
  loc_9DB8B4: FFree1Str var_8C
  loc_9DB8B7: FFree1Ad var_88
  loc_9DB8BA: BranchF loc_9DB992
  loc_9DB8BD: FLdRfVar var_8C
  loc_9DB8C0: FLdPr Me
  loc_9DB8C3: VCallAd Control_ID_BuscarNumeroTxt
  loc_9DB8C6: FStAdFunc var_88
  loc_9DB8C9: FLdPr var_88
  loc_9DB8CC:  = Me.Text
  loc_9DB8D1: LitStr "0"
  loc_9DB8D4: LitI2_Byte &HFF
  loc_9DB8D6: LitI2_Byte 0
  loc_9DB8D8: LitI2_Byte 0
  loc_9DB8DA: ILdRf var_8C
  loc_9DB8DD: LitStr "Número"
  loc_9DB8E0: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9DB8E5: FStStrNoPop var_90
  loc_9DB8E8: FLdPr Me
  loc_9DB8EB: MemStStrCopy
  loc_9DB8EF: FFreeStr var_8C = ""
  loc_9DB8F6: FFree1Ad var_88
  loc_9DB8F9: FLdPr Me
  loc_9DB8FC: MemLdStr global_56
  loc_9DB8FF: LitStr vbNullString
  loc_9DB902: NeStr
  loc_9DB904: BranchF loc_9DB931
  loc_9DB907: LitI4 0
  loc_9DB90C: FLdPr Me
  loc_9DB90F: MemLdStr global_56
  loc_9DB912: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9DB917: FLdPr Me
  loc_9DB91A: VCallAd Control_ID_BuscarNumeroTxt
  loc_9DB91D: CVarAd
  loc_9DB921: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9DB926: FFree1Var var_A0 = ""
  loc_9DB929: LitI2_Byte &HFF
  loc_9DB92B: IStI2 Cancel
  loc_9DB92E: Branch loc_9DB992
  loc_9DB931: FLdPr Me
  loc_9DB934: VCallAd Control_ID_BuscarNumeroTxt
  loc_9DB937: FStAdFunc var_C4
  loc_9DB93A: LitI4 1
  loc_9DB93F: LitI4 1
  loc_9DB944: LitVarStr var_B0, "########"
  loc_9DB949: FStVarCopyObj var_C0
  loc_9DB94C: FLdRfVar var_C0
  loc_9DB94F: FLdZeroAd var_C4
  loc_9DB952: CVarAd
  loc_9DB956: ImpAdCallI2 Format$(, )
  loc_9DB95B: FStStrNoPop var_8C
  loc_9DB95E: FLdPr Me
  loc_9DB961: VCallAd Control_ID_BuscarNumeroTxt
  loc_9DB964: FStAdFunc var_88
  loc_9DB967: FLdPr var_88
  loc_9DB96A: Me.Text = from_stack_1
  loc_9DB96F: FFree1Str var_8C
  loc_9DB972: FFreeAd var_88 = ""
  loc_9DB979: FFreeVar var_A0 = ""
  loc_9DB980: FLdPr Me
  loc_9DB983: VCallAd Control_ID_BuscarNumeroTxt
  loc_9DB986: CVarAd
  loc_9DB98A: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9DB98F: FFree1Var var_A0 = ""
  loc_9DB992: ExitProcHresult
End Sub

Private Sub Form_Load() 'AA13D4
  'Data Table: 4AD020
  loc_AA0EE0: LitI2_Byte 0
  loc_AA0EE2: CR8I2
  loc_AA0EE3: PopFPR4
  loc_AA0EE4: FLdPr Me
  loc_AA0EE7: Me.Left = from_stack_1s
  loc_AA0EEC: LitI2_Byte 0
  loc_AA0EEE: CR8I2
  loc_AA0EEF: PopFPR4
  loc_AA0EF0: FLdPr Me
  loc_AA0EF3: Me.Top = from_stack_1s
  loc_AA0EF8: FLdPr Me
  loc_AA0EFB: VCallAd Control_ID_FlexTitulo
  loc_AA0EFE: FStAdFunc var_88
  loc_AA0F01: FLdPr var_88
  loc_AA0F04: LateIdCall
  loc_AA0F0C: LitVarI4
  loc_AA0F14: PopAdLdVar
  loc_AA0F15: FLdPr var_88
  loc_AA0F18: LateIdSt
  loc_AA0F1D: LitVarI4
  loc_AA0F25: PopAdLdVar
  loc_AA0F26: LitVarI4
  loc_AA0F2E: PopAdLdVar
  loc_AA0F2F: FLdPr var_88
  loc_AA0F32: LateIdCallSt
  loc_AA0F3A: LitVarI4
  loc_AA0F42: PopAdLdVar
  loc_AA0F43: LitVarI4
  loc_AA0F4B: PopAdLdVar
  loc_AA0F4C: FLdPr var_88
  loc_AA0F4F: LateIdCallSt
  loc_AA0F57: LitVarI4
  loc_AA0F5F: PopAdLdVar
  loc_AA0F60: LitVarI4
  loc_AA0F68: PopAdLdVar
  loc_AA0F69: FLdPr var_88
  loc_AA0F6C: LateIdCallSt
  loc_AA0F74: LitVarI4
  loc_AA0F7C: PopAdLdVar
  loc_AA0F7D: LitVarI4
  loc_AA0F85: PopAdLdVar
  loc_AA0F86: FLdPr var_88
  loc_AA0F89: LateIdCallSt
  loc_AA0F91: LitVarI4
  loc_AA0F99: PopAdLdVar
  loc_AA0F9A: LitVarI4
  loc_AA0FA2: PopAdLdVar
  loc_AA0FA3: FLdPr var_88
  loc_AA0FA6: LateIdCallSt
  loc_AA0FAE: LitVarI4
  loc_AA0FB6: PopAdLdVar
  loc_AA0FB7: LitVarI4
  loc_AA0FBF: PopAdLdVar
  loc_AA0FC0: FLdPr var_88
  loc_AA0FC3: LateIdCallSt
  loc_AA0FCB: LitVarI4
  loc_AA0FD3: PopAdLdVar
  loc_AA0FD4: LitVarI4
  loc_AA0FDC: PopAdLdVar
  loc_AA0FDD: FLdPr var_88
  loc_AA0FE0: LateIdCallSt
  loc_AA0FE8: LitVarI4
  loc_AA0FF0: PopAdLdVar
  loc_AA0FF1: LitVarI4
  loc_AA0FF9: PopAdLdVar
  loc_AA0FFA: FLdPr var_88
  loc_AA0FFD: LateIdCallSt
  loc_AA1005: LitVarI4
  loc_AA100D: PopAdLdVar
  loc_AA100E: LitVarI4
  loc_AA1016: PopAdLdVar
  loc_AA1017: FLdPr var_88
  loc_AA101A: LateIdCallSt
  loc_AA1022: LitVarI4
  loc_AA102A: PopAdLdVar
  loc_AA102B: LitVarI4
  loc_AA1033: PopAdLdVar
  loc_AA1034: FLdPr var_88
  loc_AA1037: LateIdCallSt
  loc_AA103F: LitVarI4
  loc_AA1047: PopAdLdVar
  loc_AA1048: LitVarI4
  loc_AA1050: PopAdLdVar
  loc_AA1051: FLdPr var_88
  loc_AA1054: LateIdCallSt
  loc_AA105C: LitVarI4
  loc_AA1064: PopAdLdVar
  loc_AA1065: LitVarI4
  loc_AA106D: PopAdLdVar
  loc_AA106E: LitVarStr var_D8, "Periodo"
  loc_AA1073: PopAdLdVar
  loc_AA1074: FLdPr var_88
  loc_AA1077: LateIdCallSt
  loc_AA107F: LitVarI4
  loc_AA1087: PopAdLdVar
  loc_AA1088: LitVarI4
  loc_AA1090: PopAdLdVar
  loc_AA1091: LitVarStr var_D8, "Cód."
  loc_AA1096: PopAdLdVar
  loc_AA1097: FLdPr var_88
  loc_AA109A: LateIdCallSt
  loc_AA10A2: LitVarI4
  loc_AA10AA: PopAdLdVar
  loc_AA10AB: LitVarI4
  loc_AA10B3: PopAdLdVar
  loc_AA10B4: LitVarStr var_D8, "Tipo de Movimiento"
  loc_AA10B9: PopAdLdVar
  loc_AA10BA: FLdPr var_88
  loc_AA10BD: LateIdCallSt
  loc_AA10C5: LitVarI4
  loc_AA10CD: PopAdLdVar
  loc_AA10CE: LitVarI4
  loc_AA10D6: PopAdLdVar
  loc_AA10D7: LitVarStr var_D8, "Número"
  loc_AA10DC: PopAdLdVar
  loc_AA10DD: FLdPr var_88
  loc_AA10E0: LateIdCallSt
  loc_AA10E8: LitVarI4
  loc_AA10F0: PopAdLdVar
  loc_AA10F1: LitVarI4
  loc_AA10F9: PopAdLdVar
  loc_AA10FA: LitVarStr var_D8, "Fecha de Emisión"
  loc_AA10FF: PopAdLdVar
  loc_AA1100: FLdPr var_88
  loc_AA1103: LateIdCallSt
  loc_AA110B: LitVarI4
  loc_AA1113: PopAdLdVar
  loc_AA1114: LitVarI4
  loc_AA111C: PopAdLdVar
  loc_AA111D: LitVarStr var_D8, "Fecha Conciliación"
  loc_AA1122: PopAdLdVar
  loc_AA1123: FLdPr var_88
  loc_AA1126: LateIdCallSt
  loc_AA112E: LitVarI4
  loc_AA1136: PopAdLdVar
  loc_AA1137: LitVarI4
  loc_AA113F: PopAdLdVar
  loc_AA1140: LitVarStr var_D8, "Importe"
  loc_AA1145: PopAdLdVar
  loc_AA1146: FLdPr var_88
  loc_AA1149: LateIdCallSt
  loc_AA1151: LitVarI4
  loc_AA1159: PopAdLdVar
  loc_AA115A: LitVarI4
  loc_AA1162: PopAdLdVar
  loc_AA1163: LitVarStr var_D8, "Sel"
  loc_AA1168: PopAdLdVar
  loc_AA1169: FLdPr var_88
  loc_AA116C: LateIdCallSt
  loc_AA1174: LitVarI4
  loc_AA117C: PopAdLdVar
  loc_AA117D: LitVarI4
  loc_AA1185: PopAdLdVar
  loc_AA1186: LitVarStr var_D8, "Origen"
  loc_AA118B: PopAdLdVar
  loc_AA118C: FLdPr var_88
  loc_AA118F: LateIdCallSt
  loc_AA1197: LitVarI4
  loc_AA119F: PopAdLdVar
  loc_AA11A0: LitVarI4
  loc_AA11A8: PopAdLdVar
  loc_AA11A9: LitVarStr var_D8, "O.P."
  loc_AA11AE: PopAdLdVar
  loc_AA11AF: FLdPr var_88
  loc_AA11B2: LateIdCallSt
  loc_AA11BA: LitVarI4
  loc_AA11C2: PopAdLdVar
  loc_AA11C3: LitVarI4
  loc_AA11CB: PopAdLdVar
  loc_AA11CC: LitVarStr var_D8, "Detalle"
  loc_AA11D1: PopAdLdVar
  loc_AA11D2: FLdPr var_88
  loc_AA11D5: LateIdCallSt
  loc_AA11DD: LitNothing
  loc_AA11DF: FStAd var_88 
  loc_AA11E3: FLdPr Me
  loc_AA11E6: VCallAd Control_ID_FlexConciliacion
  loc_AA11E9: FStAdFunc var_EC
  loc_AA11EC: FLdPr var_EC
  loc_AA11EF: LateIdCall
  loc_AA11F7: LitVarI4
  loc_AA11FF: PopAdLdVar
  loc_AA1200: LitVarI4
  loc_AA1208: PopAdLdVar
  loc_AA1209: FLdPr var_EC
  loc_AA120C: LateIdCallSt
  loc_AA1214: LitVarI4
  loc_AA121C: PopAdLdVar
  loc_AA121D: LitVarI4
  loc_AA1225: PopAdLdVar
  loc_AA1226: FLdPr var_EC
  loc_AA1229: LateIdCallSt
  loc_AA1231: LitVarI4
  loc_AA1239: PopAdLdVar
  loc_AA123A: LitVarI4
  loc_AA1242: PopAdLdVar
  loc_AA1243: FLdPr var_EC
  loc_AA1246: LateIdCallSt
  loc_AA124E: LitVarI4
  loc_AA1256: PopAdLdVar
  loc_AA1257: LitVarI4
  loc_AA125F: PopAdLdVar
  loc_AA1260: FLdPr var_EC
  loc_AA1263: LateIdCallSt
  loc_AA126B: LitVarI4
  loc_AA1273: PopAdLdVar
  loc_AA1274: LitVarI4
  loc_AA127C: PopAdLdVar
  loc_AA127D: FLdPr var_EC
  loc_AA1280: LateIdCallSt
  loc_AA1288: LitVarI4
  loc_AA1290: PopAdLdVar
  loc_AA1291: LitVarI4
  loc_AA1299: PopAdLdVar
  loc_AA129A: FLdPr var_EC
  loc_AA129D: LateIdCallSt
  loc_AA12A5: LitVarI4
  loc_AA12AD: PopAdLdVar
  loc_AA12AE: LitVarI4
  loc_AA12B6: PopAdLdVar
  loc_AA12B7: FLdPr var_EC
  loc_AA12BA: LateIdCallSt
  loc_AA12C2: LitVarI4
  loc_AA12CA: PopAdLdVar
  loc_AA12CB: LitVarI4
  loc_AA12D3: PopAdLdVar
  loc_AA12D4: FLdPr var_EC
  loc_AA12D7: LateIdCallSt
  loc_AA12DF: LitVarI4
  loc_AA12E7: PopAdLdVar
  loc_AA12E8: LitVarI4
  loc_AA12F0: PopAdLdVar
  loc_AA12F1: FLdPr var_EC
  loc_AA12F4: LateIdCallSt
  loc_AA12FC: LitVarI4
  loc_AA1304: PopAdLdVar
  loc_AA1305: LitVarI4
  loc_AA130D: PopAdLdVar
  loc_AA130E: FLdPr var_EC
  loc_AA1311: LateIdCallSt
  loc_AA1319: LitVarI4
  loc_AA1321: PopAdLdVar
  loc_AA1322: LitVarI4
  loc_AA132A: PopAdLdVar
  loc_AA132B: FLdPr var_EC
  loc_AA132E: LateIdCallSt
  loc_AA1336: LitVarI4
  loc_AA133E: PopAdLdVar
  loc_AA133F: LitVarI4
  loc_AA1347: PopAdLdVar
  loc_AA1348: FLdPr var_EC
  loc_AA134B: LateIdCallSt
  loc_AA1353: LitNothing
  loc_AA1355: FStAd var_EC 
  loc_AA1359: LitVar_FALSE
  loc_AA135D: PopAdLdVar
  loc_AA135E: FLdPr Me
  loc_AA1361: VCallAd Control_ID_pbar1
  loc_AA1364: FStAdFunc var_F0
  loc_AA1367: FLdPr var_F0
  loc_AA136A: LateIdSt
  loc_AA136F: FFree1Ad var_F0
  loc_AA1372: LitI2_Byte 0
  loc_AA1374: CStrUI1
  loc_AA1376: CVarStr var_100
  loc_AA1379: PopAdLdVar
  loc_AA137A: FLdPr Me
  loc_AA137D: VCallAd Control_ID_CodiBancMsk
  loc_AA1380: FStAdFunc var_F0
  loc_AA1383: FLdPr var_F0
  loc_AA1386: LateIdSt
  loc_AA138B: FFree1Ad var_F0
  loc_AA138E: FFree1Var var_100 = ""
  loc_AA1391: ImpAdLdFPR8 MemVar_C3D04C
  loc_AA1394: CStrDate
  loc_AA1396: CVarStr var_100
  loc_AA1399: PopAdLdVar
  loc_AA139A: FLdPr Me
  loc_AA139D: VCallAd Control_ID_FechMobaMsk
  loc_AA13A0: FStAdFunc var_F0
  loc_AA13A3: FLdPr var_F0
  loc_AA13A6: LateIdSt
  loc_AA13AB: FFree1Ad var_F0
  loc_AA13AE: FFree1Var var_100 = ""
  loc_AA13B1: Call Proc_107_25_97D330()
  loc_AA13B6: LitVarStr var_98, "Doble Click para ordenar ..."
  loc_AA13BB: PopAdLdVar
  loc_AA13BC: FLdPr Me
  loc_AA13BF: VCallAd Control_ID_FlexTitulo
  loc_AA13C2: FStAdFunc var_F0
  loc_AA13C5: FLdPr var_F0
  loc_AA13C8: LateIdSt
  loc_AA13CD: FFree1Ad var_F0
  loc_AA13D0: ExitProcHresult
End Sub

Private Sub CodiBancMsk_UnknownEvent_0 '951078
  'Data Table: 4AD020
  loc_951064: FLdPr Me
  loc_951067: VCallAd Control_ID_CodiBancMsk
  loc_95106A: CVarAd
  loc_95106E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951073: FFree1Var var_94 = ""
  loc_951076: ExitProcHresult
  loc_951077: EqI4
End Sub

Private Function CodiBancMsk_UnknownEvent_8(arg_C) '9DCB6C
  'Data Table: 4AD020
  loc_9DCA74: FLdPr Me
  loc_9DCA77: VCallAd Control_ID_CodiBancMsk
  loc_9DCA7A: FStAdFunc var_88
  loc_9DCA7D: FLdPr var_88
  loc_9DCA80: LateIdLdVar var_98 DispID_13 -32767
  loc_9DCA87: CBoolVar
  loc_9DCA89: FFree1Ad var_88
  loc_9DCA8C: FFree1Var var_98 = ""
  loc_9DCA8F: BranchF loc_9DCB6B
  loc_9DCA92: FLdPr Me
  loc_9DCA95: VCallAd Control_ID_CodiBancMsk
  loc_9DCA98: FStAdFunc var_88
  loc_9DCA9B: FLdPr var_88
  loc_9DCA9E: LateIdLdVar var_98 DispID_22 0
  loc_9DCAA5: PopAd
  loc_9DCAA7: LitI4 0
  loc_9DCAAC: FStStrCopy var_A4
  loc_9DCAAF: FLdRfVar var_A4
  loc_9DCAB2: FLdPr Me
  loc_9DCAB5: MemLdRfVar from_stack_1.global_64
  loc_9DCAB8: NewIfNullRf
  loc_9DCABC: FLdRfVar var_98
  loc_9DCABF: CStrVarTmp
  loc_9DCAC0: FStStrNoPop var_A0
  loc_9DCAC3: ImpAdLdI2 MemVar_C3D064
  loc_9DCAC6: CStrUI1
  loc_9DCAC8: FStStrNoPop var_9C
  loc_9DCACB: ImpAdCallI2 Proc_259_5_B268F0(, , , )
  loc_9DCAD0: FFreeStr var_9C = "": var_A0 = ""
  loc_9DCAD9: FFree1Ad var_88
  loc_9DCADC: FFree1Var var_98 = ""
  loc_9DCADF: BranchF loc_9DCB10
  loc_9DCAE2: FLdRfVar var_9C
  loc_9DCAE5: FLdPr Me
  loc_9DCAE8: MemLdRfVar from_stack_1.global_64
  loc_9DCAEB: NewIfNullPr tblbanco
  loc_9DCAEE: from_stack_1v = tblbanco.DetaBancGet()
  loc_9DCAF3: ILdRf var_9C
  loc_9DCAF6: FLdPr Me
  loc_9DCAF9: VCallAd Control_ID_DetaBancLbl
  loc_9DCAFC: FStAdFunc var_88
  loc_9DCAFF: FLdPr var_88
  loc_9DCB02: Me.Caption = from_stack_1
  loc_9DCB07: FFree1Str var_9C
  loc_9DCB0A: FFree1Ad var_88
  loc_9DCB0D: Branch loc_9DCB6B
  loc_9DCB10: FLdRfVar var_9C
  loc_9DCB13: FLdPr Me
  loc_9DCB16: MemLdRfVar from_stack_1.global_64
  loc_9DCB19: NewIfNullPr tblbanco
  loc_9DCB1C: from_stack_1v = tblbanco.MsgErrorGet()
  loc_9DCB21: ILdRf var_9C
  loc_9DCB24: FLdPr Me
  loc_9DCB27: MemStStrCopy
  loc_9DCB2B: FFree1Str var_9C
  loc_9DCB2E: FLdPr Me
  loc_9DCB31: VCallAd Control_ID_CodiBancMsk
  loc_9DCB34: FStAdFunc var_B0
  loc_9DCB37: FLdPr Me
  loc_9DCB3A: VCallAd Control_ID_DetaBancLbl
  loc_9DCB3D: FStAdFunc var_AC
  loc_9DCB40: FLdRfVar var_AC
  loc_9DCB43: FLdZeroAd var_B0
  loc_9DCB46: FStAdFuncNoPop
  loc_9DCB49: CastAd
  loc_9DCB4C: FStAdFunc var_A8
  loc_9DCB4F: FLdRfVar var_A8
  loc_9DCB52: FLdPr Me
  loc_9DCB55: MemLdRfVar from_stack_1.global_56
  loc_9DCB58: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DCB5D: IStI2 arg_C
  loc_9DCB60: FFreeAd var_88 = "": var_A8 = "": var_AC = ""
  loc_9DCB6B: ExitProcHresult
End Function

Private Sub CodiBancMsk_KeyPress(KeyAscii As Integer) '9F0D94
  'Data Table: 4AD020
  loc_9F0C6C: ILdI2 KeyAscii
  loc_9F0C6F: CI4UI1
  loc_9F0C70: LitI4 &H20
  loc_9F0C75: EqI4
  loc_9F0C76: BranchF loc_9F0D91
  loc_9F0C79: LitVar_Missing var_A4
  loc_9F0C7C: PopAdLdVar
  loc_9F0C7D: LitVarI4
  loc_9F0C85: PopAdLdVar
  loc_9F0C86: ImpAdLdRf MemVar_C3D6AC
  loc_9F0C89: NewIfNullPr bscBanco
  loc_9F0C8C: bscBanco.Show from_stack_1, from_stack_2
  loc_9F0C91: FLdRfVar var_AC
  loc_9F0C94: FLdRfVar var_A8
  loc_9F0C97: ImpAdLdRf MemVar_C3D6AC
  loc_9F0C9A: NewIfNullPr bscBanco
  loc_9F0C9D: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F0CA2: FLdPr var_A8
  loc_9F0CA5: from_stack_1 = clsbase.RecordCount
  loc_9F0CAA: ILdRf var_AC
  loc_9F0CAD: LitI4 0
  loc_9F0CB2: GtI4
  loc_9F0CB3: FFree1Ad var_A8
  loc_9F0CB6: BranchF loc_9F0D91
  loc_9F0CB9: FLdRfVar var_C8
  loc_9F0CBC: FLdRfVar var_B8
  loc_9F0CBF: LitVarStr var_94, "CodiBanc"
  loc_9F0CC4: PopAdLdVar
  loc_9F0CC5: FLdRfVar var_B4
  loc_9F0CC8: FLdRfVar var_B0
  loc_9F0CCB: FLdRfVar var_A8
  loc_9F0CCE: ImpAdLdRf MemVar_C3D6AC
  loc_9F0CD1: NewIfNullPr bscBanco
  loc_9F0CD4: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F0CD9: FLdPr var_A8
  loc_9F0CDC: from_stack_1v = clsbase.RsFrmGet()
  loc_9F0CE1: FLdPr var_B0
  loc_9F0CE4:  = Me.Fields
  loc_9F0CE9: FLdPr var_B4
  loc_9F0CEC: from_stack_2 = Me.Item(from_stack_1)
  loc_9F0CF1: FLdPr var_B8
  loc_9F0CF4:  = Me.Value
  loc_9F0CF9: FLdRfVar var_C8
  loc_9F0CFC: CStrVarTmp
  loc_9F0CFD: CVarStr var_D8
  loc_9F0D00: PopAdLdVar
  loc_9F0D01: FLdPr Me
  loc_9F0D04: VCallAd Control_ID_CodiBancMsk
  loc_9F0D07: FStAdFunc var_DC
  loc_9F0D0A: FLdPr var_DC
  loc_9F0D0D: LateIdSt
  loc_9F0D12: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F0D1F: FFreeVar var_C8 = ""
  loc_9F0D26: FLdRfVar var_C8
  loc_9F0D29: FLdRfVar var_B8
  loc_9F0D2C: LitVarStr var_94, "DetaBanc"
  loc_9F0D31: PopAdLdVar
  loc_9F0D32: FLdRfVar var_B4
  loc_9F0D35: FLdRfVar var_B0
  loc_9F0D38: FLdRfVar var_A8
  loc_9F0D3B: ImpAdLdRf MemVar_C3D6AC
  loc_9F0D3E: NewIfNullPr bscBanco
  loc_9F0D41: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F0D46: FLdPr var_A8
  loc_9F0D49: from_stack_1v = clsbase.RsFrmGet()
  loc_9F0D4E: FLdPr var_B0
  loc_9F0D51:  = Me.Fields
  loc_9F0D56: FLdPr var_B4
  loc_9F0D59: from_stack_2 = Me.Item(from_stack_1)
  loc_9F0D5E: FLdPr var_B8
  loc_9F0D61:  = Me.Value
  loc_9F0D66: FLdRfVar var_C8
  loc_9F0D69: CStrVarTmp
  loc_9F0D6A: FStStrNoPop var_E0
  loc_9F0D6D: FLdPr Me
  loc_9F0D70: VCallAd Control_ID_DetaBancLbl
  loc_9F0D73: FStAdFunc var_DC
  loc_9F0D76: FLdPr var_DC
  loc_9F0D79: Me.Caption = from_stack_1
  loc_9F0D7E: FFree1Str var_E0
  loc_9F0D81: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F0D8E: FFree1Var var_C8 = ""
  loc_9F0D91: ExitProcHresult
  loc_9F0D92: ConcatStr
End Sub

Private Sub FlexTitulo_DblClick() '940B38
  'Data Table: 4AD020
  loc_940B30: Call cmdBuscar_Click()
  loc_940B35: ExitProcHresult
End Sub

Private Function Proc_107_23_A602C0() 'A602C0
  'Data Table: 4AD020
  loc_A60010: FLdPr Me
  loc_A60013: VCallAd Control_ID_FlexConciliacion
  loc_A60016: FStAdFunc var_88
  loc_A60019: FLdPr var_88
  loc_A6001C: LateIdLdVar var_98 DispID_10 0
  loc_A60023: CI4Var
  loc_A60025: CVarI4
  loc_A60029: PopAdLdVar
  loc_A6002A: LitVarI4
  loc_A60032: PopAdLdVar
  loc_A60033: FLdPr Me
  loc_A60036: VCallAd Control_ID_FlexConciliacion
  loc_A60039: FStAdFunc var_DC
  loc_A6003C: FLdPr var_DC
  loc_A6003F: LateIdCallLdVar
  loc_A60049: CStrVarTmp
  loc_A6004A: FStStrNoPop var_F0
  loc_A6004D: LitStr "1"
  loc_A60050: EqStr
  loc_A60052: FFree1Str var_F0
  loc_A60055: FFreeAd var_88 = ""
  loc_A6005C: FFreeVar var_98 = ""
  loc_A60063: BranchF loc_A602BF
  loc_A60066: FLdPr Me
  loc_A60069: VCallAd Control_ID_FlexConciliacion
  loc_A6006C: FStAdFunc var_88
  loc_A6006F: FLdPr var_88
  loc_A60072: LateIdLdVar var_98 DispID_10 0
  loc_A60079: CI4Var
  loc_A6007B: CVarI4
  loc_A6007F: PopAdLdVar
  loc_A60080: LitVarI4
  loc_A60088: PopAdLdVar
  loc_A60089: FLdPr Me
  loc_A6008C: VCallAd Control_ID_FlexConciliacion
  loc_A6008F: FStAdFunc var_DC
  loc_A60092: FLdPr var_DC
  loc_A60095: LateIdCallLdVar
  loc_A6009F: PopAd
  loc_A600A1: FLdPr Me
  loc_A600A4: VCallAd Control_ID_FlexConciliacion
  loc_A600A7: FStAdFunc var_F4
  loc_A600AA: FLdPr var_F4
  loc_A600AD: LateIdLdVar var_104 DispID_10 0
  loc_A600B4: CI4Var
  loc_A600B6: CVarI4
  loc_A600BA: PopAdLdVar
  loc_A600BB: LitVarI4
  loc_A600C3: PopAdLdVar
  loc_A600C4: FLdPr Me
  loc_A600C7: VCallAd Control_ID_FlexConciliacion
  loc_A600CA: FStAdFunc var_148
  loc_A600CD: FLdPr var_148
  loc_A600D0: LateIdCallLdVar
  loc_A600DA: PopAd
  loc_A600DC: FLdPr Me
  loc_A600DF: VCallAd Control_ID_FlexConciliacion
  loc_A600E2: FStAdFunc var_15C
  loc_A600E5: FLdPr var_15C
  loc_A600E8: LateIdLdVar var_16C DispID_10 0
  loc_A600EF: CI4Var
  loc_A600F1: CVarI4
  loc_A600F5: PopAdLdVar
  loc_A600F6: LitVarI4
  loc_A600FE: PopAdLdVar
  loc_A600FF: FLdPr Me
  loc_A60102: VCallAd Control_ID_FlexConciliacion
  loc_A60105: FStAdFunc var_1B0
  loc_A60108: FLdPr var_1B0
  loc_A6010B: LateIdCallLdVar
  loc_A60115: PopAd
  loc_A60117: FLdPr Me
  loc_A6011A: VCallAd Control_ID_FlexConciliacion
  loc_A6011D: FStAdFunc var_1C4
  loc_A60120: FLdPr var_1C4
  loc_A60123: LateIdLdVar var_1D4 DispID_10 0
  loc_A6012A: CI4Var
  loc_A6012C: CVarI4
  loc_A60130: PopAdLdVar
  loc_A60131: LitVarI4
  loc_A60139: PopAdLdVar
  loc_A6013A: FLdPr Me
  loc_A6013D: VCallAd Control_ID_FlexConciliacion
  loc_A60140: FStAdFunc var_218
  loc_A60143: FLdPr var_218
  loc_A60146: LateIdCallLdVar
  loc_A60150: PopAd
  loc_A60152: FLdPr Me
  loc_A60155: VCallAd Control_ID_FlexConciliacion
  loc_A60158: FStAdFunc var_22C
  loc_A6015B: FLdPr var_22C
  loc_A6015E: LateIdLdVar var_23C DispID_10 0
  loc_A60165: CI4Var
  loc_A60167: CVarI4
  loc_A6016B: PopAdLdVar
  loc_A6016C: LitVarI4
  loc_A60174: PopAdLdVar
  loc_A60175: FLdPr Me
  loc_A60178: VCallAd Control_ID_FlexConciliacion
  loc_A6017B: FStAdFunc var_280
  loc_A6017E: FLdPr var_280
  loc_A60181: LateIdCallLdVar
  loc_A6018B: PopAd
  loc_A6018D: FLdPr Me
  loc_A60190: VCallAd Control_ID_FlexConciliacion
  loc_A60193: FStAdFunc var_294
  loc_A60196: FLdPr var_294
  loc_A60199: LateIdLdVar var_2A4 DispID_10 0
  loc_A601A0: CI4Var
  loc_A601A2: CVarI4
  loc_A601A6: PopAdLdVar
  loc_A601A7: LitVarI4
  loc_A601AF: PopAdLdVar
  loc_A601B0: FLdPr Me
  loc_A601B3: VCallAd Control_ID_FlexConciliacion
  loc_A601B6: FStAdFunc var_2E8
  loc_A601B9: FLdPr var_2E8
  loc_A601BC: LateIdCallLdVar
  loc_A601C6: PopAd
  loc_A601C8: FLdPr Me
  loc_A601CB: VCallAd Control_ID_CodiBancMsk
  loc_A601CE: FStAdFunc var_2FC
  loc_A601D1: FLdPr var_2FC
  loc_A601D4: LateIdLdVar var_30C DispID_22 0
  loc_A601DB: PopAd
  loc_A601DD: FLdPr Me
  loc_A601E0: MemLdRfVar from_stack_1.global_68
  loc_A601E3: NewIfNullRf
  loc_A601E7: FLdRfVar var_30C
  loc_A601EA: CStrVarTmp
  loc_A601EB: FStStrNoPop var_324
  loc_A601EE: FLdRfVar var_2F8
  loc_A601F1: CStrVarTmp
  loc_A601F2: FStStrNoPop var_320
  loc_A601F5: FLdRfVar var_290
  loc_A601F8: CStrVarTmp
  loc_A601F9: FStStrNoPop var_31C
  loc_A601FC: FLdRfVar var_228
  loc_A601FF: CStrVarTmp
  loc_A60200: FStStrNoPop var_318
  loc_A60203: FLdRfVar var_1C0
  loc_A60206: CStrVarTmp
  loc_A60207: FStStrNoPop var_314
  loc_A6020A: FLdRfVar var_158
  loc_A6020D: CStrVarTmp
  loc_A6020E: FStStrNoPop var_310
  loc_A60211: FLdRfVar var_EC
  loc_A60214: CStrVarTmp
  loc_A60215: FStStrNoPop var_F0
  loc_A60218: ImpAdCallI2 Proc_259_7_B2FA68(, , , , , , , )
  loc_A6021D: FFreeStr var_F0 = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = ""
  loc_A6022E: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = "": var_15C = "": var_1B0 = "": var_1C4 = "": var_218 = "": var_22C = "": var_280 = "": var_294 = "": var_2E8 = ""
  loc_A6024B: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_16C = "": var_1C0 = "": var_1D4 = "": var_228 = "": var_23C = "": var_290 = "": var_2A4 = "": var_2F8 = ""
  loc_A60268: BranchF loc_A602BF
  loc_A6026B: FLdRfVar var_F0
  loc_A6026E: FLdPr Me
  loc_A60271: MemLdRfVar from_stack_1.global_68
  loc_A60274: NewIfNullPr tblcheque
  loc_A60277: from_stack_1v = tblcheque.FepaCheqGet()
  loc_A6027C: ILdRf var_F0
  loc_A6027F: LitStr vbNullString
  loc_A60282: EqStr
  loc_A60284: FFree1Str var_F0
  loc_A60287: BranchF loc_A602BF
  loc_A6028A: LitI4 0
  loc_A6028F: LitStr "Advertencia: está conciliando un cheque de la O.P. "
  loc_A60292: FLdRfVar var_F0
  loc_A60295: FLdPr Me
  loc_A60298: MemLdRfVar from_stack_1.global_68
  loc_A6029B: NewIfNullPr tblcheque
  loc_A6029E: from_stack_1v = tblcheque.NumeOrpaGet()
  loc_A602A3: ILdRf var_F0
  loc_A602A6: ConcatStr
  loc_A602A7: FStStrNoPop var_310
  loc_A602AA: LitStr " que NO ha sido archivada. Verifique..."
  loc_A602AD: ConcatStr
  loc_A602AE: FStStrNoPop var_314
  loc_A602B1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A602B6: FFreeStr var_F0 = "": var_310 = ""
  loc_A602BF: ExitProcHresult
End Function

Private Function Proc_107_24_97D2C8() '97D2C8
  'Data Table: 4AD020
  loc_97D294: LitVar_FALSE
  loc_97D298: PopAdLdVar
  loc_97D299: FLdPr Me
  loc_97D29C: VCallAd Control_ID_CodiBancMsk
  loc_97D29F: FStAdFunc var_A8
  loc_97D2A2: FLdPr var_A8
  loc_97D2A5: LateIdSt
  loc_97D2AA: FFree1Ad var_A8
  loc_97D2AD: LitVar_FALSE
  loc_97D2B1: PopAdLdVar
  loc_97D2B2: FLdPr Me
  loc_97D2B5: VCallAd Control_ID_FechMobaMsk
  loc_97D2B8: FStAdFunc var_A8
  loc_97D2BB: FLdPr var_A8
  loc_97D2BE: LateIdSt
  loc_97D2C3: FFree1Ad var_A8
  loc_97D2C6: ExitProcHresult
End Function

Private Function Proc_107_25_97D330() '97D330
  'Data Table: 4AD020
  loc_97D2FC: LitVar_TRUE var_94
  loc_97D2FF: PopAdLdVar
  loc_97D300: FLdPr Me
  loc_97D303: VCallAd Control_ID_CodiBancMsk
  loc_97D306: FStAdFunc var_A8
  loc_97D309: FLdPr var_A8
  loc_97D30C: LateIdSt
  loc_97D311: FFree1Ad var_A8
  loc_97D314: LitVar_TRUE var_94
  loc_97D317: PopAdLdVar
  loc_97D318: FLdPr Me
  loc_97D31B: VCallAd Control_ID_FechMobaMsk
  loc_97D31E: FStAdFunc var_A8
  loc_97D321: FLdPr var_A8
  loc_97D324: LateIdSt
  loc_97D329: FFree1Ad var_A8
  loc_97D32C: ExitProcHresult
End Function

Private Function Proc_107_26_975938() '975938
  'Data Table: 4AD020
  loc_97590C: FLdPr Me
  loc_97590F: VCallAd Control_ID_FlexConciliacion
  loc_975912: FStAdFunc var_88
  loc_975915: FLdPr var_88
  loc_975918: LateIdCall
  loc_975920: LitVarI4
  loc_975928: PopAdLdVar
  loc_975929: FLdPr var_88
  loc_97592C: LateIdSt
  loc_975931: LitNothing
  loc_975933: FStAd var_88 
  loc_975937: ExitProcHresult
End Function

Private Function Proc_107_27_9A89BC(arg_C) '9A89BC
  'Data Table: 4AD020
  loc_9A892C: FLdPr Me
  loc_9A892F: VCallAd Control_ID_FlexConciliacion
  loc_9A8932: FStAdFunc var_88
  loc_9A8935: FLdRfVar arg_C
  loc_9A8938: CDargRef
  loc_9A893C: FLdPr var_88
  loc_9A893F: LateIdSt
  loc_9A8944: FLdRfVar arg_C
  loc_9A8947: CDargRef
  loc_9A894B: FLdPr var_88
  loc_9A894E: LateIdSt
  loc_9A8953: LitVarI4
  loc_9A895B: PopAdLdVar
  loc_9A895C: FLdPr var_88
  loc_9A895F: LateIdSt
  loc_9A8964: FLdPr var_88
  loc_9A8967: LateIdLdVar var_B8 DispID_5 0
  loc_9A896E: CI4Var
  loc_9A8970: LitI4 1
  loc_9A8975: SubI4
  loc_9A8976: CVarI4
  loc_9A897A: PopAdLdVar
  loc_9A897B: FLdPr var_88
  loc_9A897E: LateIdSt
  loc_9A8983: FFree1Var var_B8 = ""
  loc_9A8986: FLdRfVar arg_C
  loc_9A8989: CDargRef
  loc_9A898D: FLdPr var_88
  loc_9A8990: LateIdCallLdVar
  loc_9A899A: CBoolVar
  loc_9A899C: NotI4
  loc_9A899D: FFree1Var var_B8 = ""
  loc_9A89A0: BranchF loc_9A89B2
  loc_9A89A3: FLdRfVar arg_C
  loc_9A89A6: CDargRef
  loc_9A89AA: FLdPr var_88
  loc_9A89AD: LateIdSt
  loc_9A89B2: LitNothing
  loc_9A89B4: FStAd var_88 
  loc_9A89B8: ExitProcHresult
End Function

Private Function Proc_107_28_B09F68() 'B09F68
  'Data Table: 4AD020
  loc_B09788: FLdPr Me
  loc_B0978B: VCallAd Control_ID_FlexConciliacion
  loc_B0978E: FStAdFunc var_88
  loc_B09791: FLdPr var_88
  loc_B09794: LateIdLdVar var_98 DispID_10 0
  loc_B0979B: CI4Var
  loc_B0979D: CVarI4
  loc_B097A1: PopAdLdVar
  loc_B097A2: LitVarI4
  loc_B097AA: PopAdLdVar
  loc_B097AB: FLdPr Me
  loc_B097AE: VCallAd Control_ID_FlexConciliacion
  loc_B097B1: FStAdFunc var_DC
  loc_B097B4: FLdPr var_DC
  loc_B097B7: LateIdCallLdVar
  loc_B097C1: CStrVarTmp
  loc_B097C2: FStStrNoPop var_F0
  loc_B097C5: LitStr "LB"
  loc_B097C8: EqStr
  loc_B097CA: FFree1Str var_F0
  loc_B097CD: FFreeAd var_88 = ""
  loc_B097D4: FFreeVar var_98 = ""
  loc_B097DB: BranchF loc_B09B73
  loc_B097DE: LitStr "SELECT *"
  loc_B097E1: LitStr " FROM movibanco"
  loc_B097E4: ConcatStr
  loc_B097E5: FStStrNoPop var_F0
  loc_B097E8: LitStr " WHERE PeriInfo = "
  loc_B097EB: ConcatStr
  loc_B097EC: FStStrNoPop var_F4
  loc_B097EF: FLdPr Me
  loc_B097F2: VCallAd Control_ID_FlexConciliacion
  loc_B097F5: FStAdFunc var_88
  loc_B097F8: FLdPr var_88
  loc_B097FB: LateIdLdVar var_98 DispID_10 0
  loc_B09802: CI4Var
  loc_B09804: CVarI4
  loc_B09808: PopAdLdVar
  loc_B09809: LitVarI4
  loc_B09811: PopAdLdVar
  loc_B09812: FLdPr Me
  loc_B09815: VCallAd Control_ID_FlexConciliacion
  loc_B09818: FStAdFunc var_DC
  loc_B0981B: FLdPr var_DC
  loc_B0981E: LateIdCallLdVar
  loc_B09828: CStrVarTmp
  loc_B09829: FStStrNoPop var_F8
  loc_B0982C: ConcatStr
  loc_B0982D: FStStrNoPop var_FC
  loc_B09830: LitStr " AND CodiBanc = "
  loc_B09833: ConcatStr
  loc_B09834: FStStrNoPop var_114
  loc_B09837: FLdPr Me
  loc_B0983A: VCallAd Control_ID_CodiBancMsk
  loc_B0983D: FStAdFunc var_100
  loc_B09840: FLdPr var_100
  loc_B09843: LateIdLdVar var_110 DispID_22 0
  loc_B0984A: CStrVarTmp
  loc_B0984B: FStStrNoPop var_118
  loc_B0984E: ConcatStr
  loc_B0984F: FStStrNoPop var_11C
  loc_B09852: LitStr " AND IdMoba = '"
  loc_B09855: ConcatStr
  loc_B09856: FStStrNoPop var_188
  loc_B09859: FLdPr Me
  loc_B0985C: VCallAd Control_ID_FlexConciliacion
  loc_B0985F: FStAdFunc var_120
  loc_B09862: FLdPr var_120
  loc_B09865: LateIdLdVar var_130 DispID_10 0
  loc_B0986C: CI4Var
  loc_B0986E: CVarI4
  loc_B09872: PopAdLdVar
  loc_B09873: LitVarI4
  loc_B0987B: PopAdLdVar
  loc_B0987C: FLdPr Me
  loc_B0987F: VCallAd Control_ID_FlexConciliacion
  loc_B09882: FStAdFunc var_174
  loc_B09885: FLdPr var_174
  loc_B09888: LateIdCallLdVar
  loc_B09892: CStrVarTmp
  loc_B09893: FStStrNoPop var_18C
  loc_B09896: ConcatStr
  loc_B09897: FStStrNoPop var_190
  loc_B0989A: LitStr "';"
  loc_B0989D: ConcatStr
  loc_B0989E: FStStrNoPop var_194
  loc_B098A1: FLdPr Me
  loc_B098A4: MemLdRfVar from_stack_1.global_52
  loc_B098A7: NewIfNullPr clsmovibanco
  loc_B098AA: Call clsmovibanco.RedefineRS(from_stack_1v)
  loc_B098AF: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_114 = "": var_118 = "": var_11C = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B098C8: FFreeAd var_88 = "": var_DC = "": var_100 = "": var_120 = ""
  loc_B098D5: FFreeVar var_98 = "": var_EC = "": var_110 = "": var_130 = ""
  loc_B098E2: FLdRfVar var_198
  loc_B098E5: FLdPr Me
  loc_B098E8: MemLdRfVar from_stack_1.global_52
  loc_B098EB: NewIfNullPr clsmovibanco
  loc_B098EE: from_stack_1 = clsmovibanco.RecordCount
  loc_B098F3: ILdRf var_198
  loc_B098F6: LitI4 1
  loc_B098FB: EqI4
  loc_B098FC: BranchF loc_B09B70
  loc_B098FF: FLdPr Me
  loc_B09902: VCallAd Control_ID_FlexConciliacion
  loc_B09905: FStAdFunc var_88
  loc_B09908: FLdPr var_88
  loc_B0990B: LateIdLdVar var_98 DispID_10 0
  loc_B09912: CI4Var
  loc_B09914: CVarI4
  loc_B09918: PopAdLdVar
  loc_B09919: LitVarI4
  loc_B09921: PopAdLdVar
  loc_B09922: FLdPr Me
  loc_B09925: VCallAd Control_ID_FlexConciliacion
  loc_B09928: FStAdFunc var_DC
  loc_B0992B: FLdPr var_DC
  loc_B0992E: LateIdCallLdVar
  loc_B09938: CStrVarTmp
  loc_B09939: FStStrNoPop var_F0
  loc_B0993C: LitStr "Si"
  loc_B0993F: EqStr
  loc_B09941: FFree1Str var_F0
  loc_B09944: FFreeAd var_88 = ""
  loc_B0994B: FFreeVar var_98 = ""
  loc_B09952: BranchF loc_B09A4A
  loc_B09955: FLdPr Me
  loc_B09958: VCallAd Control_ID_FlexConciliacion
  loc_B0995B: FStAdFunc var_88
  loc_B0995E: FLdPr var_88
  loc_B09961: LateIdLdVar var_98 DispID_10 0
  loc_B09968: CI4Var
  loc_B0996A: CVarI4
  loc_B0996E: PopAdLdVar
  loc_B0996F: LitVarI4
  loc_B09977: PopAdLdVar
  loc_B09978: FLdPr Me
  loc_B0997B: VCallAd Control_ID_FlexConciliacion
  loc_B0997E: FStAdFunc var_DC
  loc_B09981: FLdPr var_DC
  loc_B09984: LateIdCallLdVar
  loc_B0998E: PopAd
  loc_B09990: FLdPr Me
  loc_B09993: VCallAd Control_ID_CodiBancMsk
  loc_B09996: FStAdFunc var_100
  loc_B09999: FLdPr var_100
  loc_B0999C: LateIdLdVar var_110 DispID_22 0
  loc_B099A3: PopAd
  loc_B099A5: FLdPr Me
  loc_B099A8: VCallAd Control_ID_FlexConciliacion
  loc_B099AB: FStAdFunc var_120
  loc_B099AE: FLdPr var_120
  loc_B099B1: LateIdLdVar var_130 DispID_10 0
  loc_B099B8: CI4Var
  loc_B099BA: CVarI4
  loc_B099BE: PopAdLdVar
  loc_B099BF: LitVarI4
  loc_B099C7: PopAdLdVar
  loc_B099C8: FLdPr Me
  loc_B099CB: VCallAd Control_ID_FlexConciliacion
  loc_B099CE: FStAdFunc var_174
  loc_B099D1: FLdPr var_174
  loc_B099D4: LateIdCallLdVar
  loc_B099DE: PopAd
  loc_B099E0: FLdPr Me
  loc_B099E3: VCallAd Control_ID_FechMobaMsk
  loc_B099E6: FStAdFunc var_19C
  loc_B099E9: FLdPr var_19C
  loc_B099EC: LateIdLdVar var_1AC DispID_15 0
  loc_B099F3: CStrVarTmp
  loc_B099F4: FStStrNoPop var_FC
  loc_B099F7: FLdRfVar var_184
  loc_B099FA: CStrVarTmp
  loc_B099FB: FStStrNoPop var_F8
  loc_B099FE: CI4Str
  loc_B099FF: FLdRfVar var_110
  loc_B09A02: CStrVarTmp
  loc_B09A03: FStStrNoPop var_F4
  loc_B09A06: CI4Str
  loc_B09A07: FLdRfVar var_EC
  loc_B09A0A: CStrVarTmp
  loc_B09A0B: FStStrNoPop var_F0
  loc_B09A0E: CI2Str
  loc_B09A10: FLdPr Me
  loc_B09A13: MemLdRfVar from_stack_1.global_52
  loc_B09A16: NewIfNullPr clsmovibanco
  loc_B09A19: Call clsmovibanco.ConciliarMovibanco(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B09A1E: FFreeStr var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B09A29: FFreeAd var_88 = "": var_DC = "": var_100 = "": var_120 = "": var_174 = ""
  loc_B09A38: FFreeVar var_98 = "": var_EC = "": var_110 = "": var_130 = "": var_184 = ""
  loc_B09A47: Branch loc_B09B70
  loc_B09A4A: FLdPr Me
  loc_B09A4D: VCallAd Control_ID_FlexConciliacion
  loc_B09A50: FStAdFunc var_88
  loc_B09A53: FLdPr var_88
  loc_B09A56: LateIdLdVar var_98 DispID_10 0
  loc_B09A5D: CI4Var
  loc_B09A5F: CVarI4
  loc_B09A63: PopAdLdVar
  loc_B09A64: LitVarI4
  loc_B09A6C: PopAdLdVar
  loc_B09A6D: FLdPr Me
  loc_B09A70: VCallAd Control_ID_FlexConciliacion
  loc_B09A73: FStAdFunc var_DC
  loc_B09A76: FLdPr var_DC
  loc_B09A79: LateIdCallLdVar
  loc_B09A83: CStrVarTmp
  loc_B09A84: FStStrNoPop var_F0
  loc_B09A87: LitStr "No"
  loc_B09A8A: EqStr
  loc_B09A8C: FFree1Str var_F0
  loc_B09A8F: FFreeAd var_88 = ""
  loc_B09A96: FFreeVar var_98 = ""
  loc_B09A9D: BranchF loc_B09B70
  loc_B09AA0: FLdPr Me
  loc_B09AA3: VCallAd Control_ID_FlexConciliacion
  loc_B09AA6: FStAdFunc var_88
  loc_B09AA9: FLdPr var_88
  loc_B09AAC: LateIdLdVar var_98 DispID_10 0
  loc_B09AB3: CI4Var
  loc_B09AB5: CVarI4
  loc_B09AB9: PopAdLdVar
  loc_B09ABA: LitVarI4
  loc_B09AC2: PopAdLdVar
  loc_B09AC3: FLdPr Me
  loc_B09AC6: VCallAd Control_ID_FlexConciliacion
  loc_B09AC9: FStAdFunc var_DC
  loc_B09ACC: FLdPr var_DC
  loc_B09ACF: LateIdCallLdVar
  loc_B09AD9: PopAd
  loc_B09ADB: FLdPr Me
  loc_B09ADE: VCallAd Control_ID_CodiBancMsk
  loc_B09AE1: FStAdFunc var_100
  loc_B09AE4: FLdPr var_100
  loc_B09AE7: LateIdLdVar var_110 DispID_22 0
  loc_B09AEE: PopAd
  loc_B09AF0: FLdPr Me
  loc_B09AF3: VCallAd Control_ID_FlexConciliacion
  loc_B09AF6: FStAdFunc var_120
  loc_B09AF9: FLdPr var_120
  loc_B09AFC: LateIdLdVar var_130 DispID_10 0
  loc_B09B03: CI4Var
  loc_B09B05: CVarI4
  loc_B09B09: PopAdLdVar
  loc_B09B0A: LitVarI4
  loc_B09B12: PopAdLdVar
  loc_B09B13: FLdPr Me
  loc_B09B16: VCallAd Control_ID_FlexConciliacion
  loc_B09B19: FStAdFunc var_174
  loc_B09B1C: FLdPr var_174
  loc_B09B1F: LateIdCallLdVar
  loc_B09B29: CStrVarTmp
  loc_B09B2A: FStStrNoPop var_F8
  loc_B09B2D: CI4Str
  loc_B09B2E: FLdRfVar var_110
  loc_B09B31: CStrVarTmp
  loc_B09B32: FStStrNoPop var_F4
  loc_B09B35: CI4Str
  loc_B09B36: FLdRfVar var_EC
  loc_B09B39: CStrVarTmp
  loc_B09B3A: FStStrNoPop var_F0
  loc_B09B3D: CI2Str
  loc_B09B3F: FLdPr Me
  loc_B09B42: MemLdRfVar from_stack_1.global_52
  loc_B09B45: NewIfNullPr clsmovibanco
  loc_B09B48: Call clsmovibanco.DesconciliarMovibanco(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B09B4D: FFreeStr var_F0 = "": var_F4 = ""
  loc_B09B56: FFreeAd var_88 = "": var_DC = "": var_100 = "": var_120 = ""
  loc_B09B63: FFreeVar var_98 = "": var_EC = "": var_110 = "": var_130 = ""
  loc_B09B70: Branch loc_B09F5F
  loc_B09B73: LitStr "SELECT *"
  loc_B09B76: LitStr " FROM moviextracto"
  loc_B09B79: ConcatStr
  loc_B09B7A: FStStrNoPop var_F0
  loc_B09B7D: LitStr " WHERE PeriInfo = "
  loc_B09B80: ConcatStr
  loc_B09B81: FStStrNoPop var_F4
  loc_B09B84: FLdPr Me
  loc_B09B87: VCallAd Control_ID_FlexConciliacion
  loc_B09B8A: FStAdFunc var_88
  loc_B09B8D: FLdPr var_88
  loc_B09B90: LateIdLdVar var_98 DispID_10 0
  loc_B09B97: CI4Var
  loc_B09B99: CVarI4
  loc_B09B9D: PopAdLdVar
  loc_B09B9E: LitVarI4
  loc_B09BA6: PopAdLdVar
  loc_B09BA7: FLdPr Me
  loc_B09BAA: VCallAd Control_ID_FlexConciliacion
  loc_B09BAD: FStAdFunc var_DC
  loc_B09BB0: FLdPr var_DC
  loc_B09BB3: LateIdCallLdVar
  loc_B09BBD: CStrVarTmp
  loc_B09BBE: FStStrNoPop var_F8
  loc_B09BC1: ConcatStr
  loc_B09BC2: FStStrNoPop var_FC
  loc_B09BC5: LitStr " AND CodiBanc = "
  loc_B09BC8: ConcatStr
  loc_B09BC9: FStStrNoPop var_114
  loc_B09BCC: FLdPr Me
  loc_B09BCF: VCallAd Control_ID_CodiBancMsk
  loc_B09BD2: FStAdFunc var_100
  loc_B09BD5: FLdPr var_100
  loc_B09BD8: LateIdLdVar var_110 DispID_22 0
  loc_B09BDF: CStrVarTmp
  loc_B09BE0: FStStrNoPop var_118
  loc_B09BE3: ConcatStr
  loc_B09BE4: FStStrNoPop var_11C
  loc_B09BE7: LitStr " AND IdMobaex = '"
  loc_B09BEA: ConcatStr
  loc_B09BEB: FStStrNoPop var_188
  loc_B09BEE: FLdPr Me
  loc_B09BF1: VCallAd Control_ID_FlexConciliacion
  loc_B09BF4: FStAdFunc var_120
  loc_B09BF7: FLdPr var_120
  loc_B09BFA: LateIdLdVar var_130 DispID_10 0
  loc_B09C01: CI4Var
  loc_B09C03: CVarI4
  loc_B09C07: PopAdLdVar
  loc_B09C08: LitVarI4
  loc_B09C10: PopAdLdVar
  loc_B09C11: FLdPr Me
  loc_B09C14: VCallAd Control_ID_FlexConciliacion
  loc_B09C17: FStAdFunc var_174
  loc_B09C1A: FLdPr var_174
  loc_B09C1D: LateIdCallLdVar
  loc_B09C27: CStrVarTmp
  loc_B09C28: FStStrNoPop var_18C
  loc_B09C2B: ConcatStr
  loc_B09C2C: FStStrNoPop var_190
  loc_B09C2F: LitStr "';"
  loc_B09C32: ConcatStr
  loc_B09C33: FStStrNoPop var_194
  loc_B09C36: FLdPr Me
  loc_B09C39: MemLdRfVar from_stack_1.global_52
  loc_B09C3C: NewIfNullPr clsmovibanco
  loc_B09C3F: Call clsmovibanco.RedefineRS(from_stack_1v)
  loc_B09C44: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_114 = "": var_118 = "": var_11C = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B09C5D: FFreeAd var_88 = "": var_DC = "": var_100 = "": var_120 = ""
  loc_B09C6A: FFreeVar var_98 = "": var_EC = "": var_110 = "": var_130 = ""
  loc_B09C77: FLdRfVar var_198
  loc_B09C7A: FLdPr Me
  loc_B09C7D: MemLdRfVar from_stack_1.global_52
  loc_B09C80: NewIfNullPr clsmovibanco
  loc_B09C83: from_stack_1 = clsmovibanco.RecordCount
  loc_B09C88: ILdRf var_198
  loc_B09C8B: LitI4 1
  loc_B09C90: EqI4
  loc_B09C91: BranchF loc_B09F08
  loc_B09C94: FLdPr Me
  loc_B09C97: VCallAd Control_ID_FlexConciliacion
  loc_B09C9A: FStAdFunc var_88
  loc_B09C9D: FLdPr var_88
  loc_B09CA0: LateIdLdVar var_98 DispID_10 0
  loc_B09CA7: CI4Var
  loc_B09CA9: CVarI4
  loc_B09CAD: PopAdLdVar
  loc_B09CAE: LitVarI4
  loc_B09CB6: PopAdLdVar
  loc_B09CB7: FLdPr Me
  loc_B09CBA: VCallAd Control_ID_FlexConciliacion
  loc_B09CBD: FStAdFunc var_DC
  loc_B09CC0: FLdPr var_DC
  loc_B09CC3: LateIdCallLdVar
  loc_B09CCD: CStrVarTmp
  loc_B09CCE: FStStrNoPop var_F0
  loc_B09CD1: LitStr "Si"
  loc_B09CD4: EqStr
  loc_B09CD6: FFree1Str var_F0
  loc_B09CD9: FFreeAd var_88 = ""
  loc_B09CE0: FFreeVar var_98 = ""
  loc_B09CE7: BranchF loc_B09DDF
  loc_B09CEA: FLdPr Me
  loc_B09CED: VCallAd Control_ID_FlexConciliacion
  loc_B09CF0: FStAdFunc var_88
  loc_B09CF3: FLdPr var_88
  loc_B09CF6: LateIdLdVar var_98 DispID_10 0
  loc_B09CFD: CI4Var
  loc_B09CFF: CVarI4
  loc_B09D03: PopAdLdVar
  loc_B09D04: LitVarI4
  loc_B09D0C: PopAdLdVar
  loc_B09D0D: FLdPr Me
  loc_B09D10: VCallAd Control_ID_FlexConciliacion
  loc_B09D13: FStAdFunc var_DC
  loc_B09D16: FLdPr var_DC
  loc_B09D19: LateIdCallLdVar
  loc_B09D23: PopAd
  loc_B09D25: FLdPr Me
  loc_B09D28: VCallAd Control_ID_CodiBancMsk
  loc_B09D2B: FStAdFunc var_100
  loc_B09D2E: FLdPr var_100
  loc_B09D31: LateIdLdVar var_110 DispID_22 0
  loc_B09D38: PopAd
  loc_B09D3A: FLdPr Me
  loc_B09D3D: VCallAd Control_ID_FlexConciliacion
  loc_B09D40: FStAdFunc var_120
  loc_B09D43: FLdPr var_120
  loc_B09D46: LateIdLdVar var_130 DispID_10 0
  loc_B09D4D: CI4Var
  loc_B09D4F: CVarI4
  loc_B09D53: PopAdLdVar
  loc_B09D54: LitVarI4
  loc_B09D5C: PopAdLdVar
  loc_B09D5D: FLdPr Me
  loc_B09D60: VCallAd Control_ID_FlexConciliacion
  loc_B09D63: FStAdFunc var_174
  loc_B09D66: FLdPr var_174
  loc_B09D69: LateIdCallLdVar
  loc_B09D73: PopAd
  loc_B09D75: FLdPr Me
  loc_B09D78: VCallAd Control_ID_FechMobaMsk
  loc_B09D7B: FStAdFunc var_19C
  loc_B09D7E: FLdPr var_19C
  loc_B09D81: LateIdLdVar var_1AC DispID_15 0
  loc_B09D88: CStrVarTmp
  loc_B09D89: FStStrNoPop var_FC
  loc_B09D8C: FLdRfVar var_184
  loc_B09D8F: CStrVarTmp
  loc_B09D90: FStStrNoPop var_F8
  loc_B09D93: CI4Str
  loc_B09D94: FLdRfVar var_110
  loc_B09D97: CStrVarTmp
  loc_B09D98: FStStrNoPop var_F4
  loc_B09D9B: CI4Str
  loc_B09D9C: FLdRfVar var_EC
  loc_B09D9F: CStrVarTmp
  loc_B09DA0: FStStrNoPop var_F0
  loc_B09DA3: CI2Str
  loc_B09DA5: FLdPr Me
  loc_B09DA8: MemLdRfVar from_stack_1.global_52
  loc_B09DAB: NewIfNullPr clsmovibanco
  loc_B09DAE: Call clsmovibanco.ConciliarMoviextracto(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B09DB3: FFreeStr var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B09DBE: FFreeAd var_88 = "": var_DC = "": var_100 = "": var_120 = "": var_174 = ""
  loc_B09DCD: FFreeVar var_98 = "": var_EC = "": var_110 = "": var_130 = "": var_184 = ""
  loc_B09DDC: Branch loc_B09F05
  loc_B09DDF: FLdPr Me
  loc_B09DE2: VCallAd Control_ID_FlexConciliacion
  loc_B09DE5: FStAdFunc var_88
  loc_B09DE8: FLdPr var_88
  loc_B09DEB: LateIdLdVar var_98 DispID_10 0
  loc_B09DF2: CI4Var
  loc_B09DF4: CVarI4
  loc_B09DF8: PopAdLdVar
  loc_B09DF9: LitVarI4
  loc_B09E01: PopAdLdVar
  loc_B09E02: FLdPr Me
  loc_B09E05: VCallAd Control_ID_FlexConciliacion
  loc_B09E08: FStAdFunc var_DC
  loc_B09E0B: FLdPr var_DC
  loc_B09E0E: LateIdCallLdVar
  loc_B09E18: CStrVarTmp
  loc_B09E19: FStStrNoPop var_F0
  loc_B09E1C: LitStr "No"
  loc_B09E1F: EqStr
  loc_B09E21: FFree1Str var_F0
  loc_B09E24: FFreeAd var_88 = ""
  loc_B09E2B: FFreeVar var_98 = ""
  loc_B09E32: BranchF loc_B09F05
  loc_B09E35: FLdPr Me
  loc_B09E38: VCallAd Control_ID_FlexConciliacion
  loc_B09E3B: FStAdFunc var_88
  loc_B09E3E: FLdPr var_88
  loc_B09E41: LateIdLdVar var_98 DispID_10 0
  loc_B09E48: CI4Var
  loc_B09E4A: CVarI4
  loc_B09E4E: PopAdLdVar
  loc_B09E4F: LitVarI4
  loc_B09E57: PopAdLdVar
  loc_B09E58: FLdPr Me
  loc_B09E5B: VCallAd Control_ID_FlexConciliacion
  loc_B09E5E: FStAdFunc var_DC
  loc_B09E61: FLdPr var_DC
  loc_B09E64: LateIdCallLdVar
  loc_B09E6E: PopAd
  loc_B09E70: FLdPr Me
  loc_B09E73: VCallAd Control_ID_CodiBancMsk
  loc_B09E76: FStAdFunc var_100
  loc_B09E79: FLdPr var_100
  loc_B09E7C: LateIdLdVar var_110 DispID_22 0
  loc_B09E83: PopAd
  loc_B09E85: FLdPr Me
  loc_B09E88: VCallAd Control_ID_FlexConciliacion
  loc_B09E8B: FStAdFunc var_120
  loc_B09E8E: FLdPr var_120
  loc_B09E91: LateIdLdVar var_130 DispID_10 0
  loc_B09E98: CI4Var
  loc_B09E9A: CVarI4
  loc_B09E9E: PopAdLdVar
  loc_B09E9F: LitVarI4
  loc_B09EA7: PopAdLdVar
  loc_B09EA8: FLdPr Me
  loc_B09EAB: VCallAd Control_ID_FlexConciliacion
  loc_B09EAE: FStAdFunc var_174
  loc_B09EB1: FLdPr var_174
  loc_B09EB4: LateIdCallLdVar
  loc_B09EBE: CStrVarTmp
  loc_B09EBF: FStStrNoPop var_F8
  loc_B09EC2: CI4Str
  loc_B09EC3: FLdRfVar var_110
  loc_B09EC6: CStrVarTmp
  loc_B09EC7: FStStrNoPop var_F4
  loc_B09ECA: CI4Str
  loc_B09ECB: FLdRfVar var_EC
  loc_B09ECE: CStrVarTmp
  loc_B09ECF: FStStrNoPop var_F0
  loc_B09ED2: CI2Str
  loc_B09ED4: FLdPr Me
  loc_B09ED7: MemLdRfVar from_stack_1.global_52
  loc_B09EDA: NewIfNullPr clsmovibanco
  loc_B09EDD: Call clsmovibanco.DesconciliarMoviextracto(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B09EE2: FFreeStr var_F0 = "": var_F4 = ""
  loc_B09EEB: FFreeAd var_88 = "": var_DC = "": var_100 = "": var_120 = ""
  loc_B09EF8: FFreeVar var_98 = "": var_EC = "": var_110 = "": var_130 = ""
  loc_B09F05: Branch loc_B09F5F
  loc_B09F08: FLdRfVar var_198
  loc_B09F0B: FLdPr Me
  loc_B09F0E: MemLdRfVar from_stack_1.global_52
  loc_B09F11: NewIfNullPr clsmovibanco
  loc_B09F14: from_stack_1 = clsmovibanco.RecordCount
  loc_B09F19: ILdRf var_198
  loc_B09F1C: LitI4 1
  loc_B09F21: GtI4
  loc_B09F22: BranchF loc_B09F5F
  loc_B09F25: LitI4 0
  loc_B09F2A: LitStr "Hay "
  loc_B09F2D: FLdRfVar var_198
  loc_B09F30: FLdPr Me
  loc_B09F33: MemLdRfVar from_stack_1.global_52
  loc_B09F36: NewIfNullPr clsmovibanco
  loc_B09F39: from_stack_1 = clsmovibanco.RecordCount
  loc_B09F3E: ILdRf var_198
  loc_B09F41: CStrI4
  loc_B09F43: FStStrNoPop var_F0
  loc_B09F46: ConcatStr
  loc_B09F47: FStStrNoPop var_F4
  loc_B09F4A: LitStr " movimientos con los mismos datos (fecha-número-importe). Verifique..."
  loc_B09F4D: ConcatStr
  loc_B09F4E: FStStrNoPop var_F8
  loc_B09F51: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B09F56: FFreeStr var_F0 = "": var_F4 = ""
  loc_B09F5F: Call Proc_107_29_A408A8()
  loc_B09F64: ExitProcHresult
End Function

Private Function Proc_107_29_A408A8() 'A408A8
  'Data Table: 4AD020
  loc_A40658: FLdPr Me
  loc_A4065B: VCallAd Control_ID_CodiBancMsk
  loc_A4065E: FStAdFunc var_88
  loc_A40661: FLdPr var_88
  loc_A40664: LateIdLdVar var_98 DispID_22 0
  loc_A4066B: PopAd
  loc_A4066D: FLdPr Me
  loc_A40670: VCallAd Control_ID_FechMobaMsk
  loc_A40673: FStAdFunc var_9C
  loc_A40676: FLdPr var_9C
  loc_A40679: LateIdLdVar var_AC DispID_15 0
  loc_A40680: CStrVarTmp
  loc_A40681: PopTmpLdAdStr
  loc_A40685: FLdPr Me
  loc_A40688: MemLdRfVar from_stack_1.global_64
  loc_A4068B: NewIfNullRf
  loc_A4068F: FLdRfVar var_98
  loc_A40692: CStrVarTmp
  loc_A40693: FStStrNoPop var_B4
  loc_A40696: ImpAdLdI2 MemVar_C3D064
  loc_A40699: CStrUI1
  loc_A4069B: FStStrNoPop var_B0
  loc_A4069E: ImpAdCallFPR4 Proc_259_5_B268F0(, , , )
  loc_A406A3: FFreeStr var_B0 = "": var_B4 = ""
  loc_A406AC: FFreeAd var_88 = ""
  loc_A406B3: FFreeVar var_98 = ""
  loc_A406BA: FLdRfVar var_B0
  loc_A406BD: FLdPr Me
  loc_A406C0: MemLdRfVar from_stack_1.global_64
  loc_A406C3: NewIfNullPr tblbanco
  loc_A406C6: from_stack_1v = tblbanco.SaldAlIniGet()
  loc_A406CB: LitI4 1
  loc_A406D0: LitI4 1
  loc_A406D5: LitVarStr var_C8, "currency"
  loc_A406DA: FStVarCopyObj var_AC
  loc_A406DD: FLdRfVar var_AC
  loc_A406E0: FLdZeroAd var_B0
  loc_A406E3: CVarStr var_98
  loc_A406E6: ImpAdCallI2 Format$(, )
  loc_A406EB: FStStrNoPop var_B4
  loc_A406EE: FLdPr Me
  loc_A406F1: VCallAd Control_ID_SaldAlIniLbl
  loc_A406F4: FStAdFunc var_88
  loc_A406F7: FLdPr var_88
  loc_A406FA: Me.Caption = from_stack_1
  loc_A406FF: FFree1Str var_B4
  loc_A40702: FFree1Ad var_88
  loc_A40705: FFreeVar var_98 = ""
  loc_A4070C: FLdRfVar var_B0
  loc_A4070F: FLdPr Me
  loc_A40712: MemLdRfVar from_stack_1.global_64
  loc_A40715: NewIfNullPr tblbanco
  loc_A40718: from_stack_1v = tblbanco.TDebSinConcGet()
  loc_A4071D: LitI4 1
  loc_A40722: LitI4 1
  loc_A40727: LitVarStr var_C8, "currency"
  loc_A4072C: FStVarCopyObj var_AC
  loc_A4072F: FLdRfVar var_AC
  loc_A40732: FLdZeroAd var_B0
  loc_A40735: CVarStr var_98
  loc_A40738: ImpAdCallI2 Format$(, )
  loc_A4073D: FStStrNoPop var_B4
  loc_A40740: FLdPr Me
  loc_A40743: VCallAd Control_ID_TDebSinConcLbl
  loc_A40746: FStAdFunc var_88
  loc_A40749: FLdPr var_88
  loc_A4074C: Me.Caption = from_stack_1
  loc_A40751: FFree1Str var_B4
  loc_A40754: FFree1Ad var_88
  loc_A40757: FFreeVar var_98 = ""
  loc_A4075E: FLdRfVar var_B0
  loc_A40761: FLdPr Me
  loc_A40764: MemLdRfVar from_stack_1.global_64
  loc_A40767: NewIfNullPr tblbanco
  loc_A4076A: from_stack_1v = tblbanco.TCredSinConcGet()
  loc_A4076F: LitI4 1
  loc_A40774: LitI4 1
  loc_A40779: LitVarStr var_C8, "currency"
  loc_A4077E: FStVarCopyObj var_AC
  loc_A40781: FLdRfVar var_AC
  loc_A40784: FLdZeroAd var_B0
  loc_A40787: CVarStr var_98
  loc_A4078A: ImpAdCallI2 Format$(, )
  loc_A4078F: FStStrNoPop var_B4
  loc_A40792: FLdPr Me
  loc_A40795: VCallAd Control_ID_TCredSinConcLbl
  loc_A40798: FStAdFunc var_88
  loc_A4079B: FLdPr var_88
  loc_A4079E: Me.Caption = from_stack_1
  loc_A407A3: FFree1Str var_B4
  loc_A407A6: FFree1Ad var_88
  loc_A407A9: FFreeVar var_98 = ""
  loc_A407B0: FLdRfVar var_B0
  loc_A407B3: FLdPr Me
  loc_A407B6: MemLdRfVar from_stack_1.global_64
  loc_A407B9: NewIfNullPr tblbanco
  loc_A407BC: from_stack_1v = tblbanco.TDebSinRegGet()
  loc_A407C1: LitI4 1
  loc_A407C6: LitI4 1
  loc_A407CB: LitVarStr var_C8, "currency"
  loc_A407D0: FStVarCopyObj var_AC
  loc_A407D3: FLdRfVar var_AC
  loc_A407D6: FLdZeroAd var_B0
  loc_A407D9: CVarStr var_98
  loc_A407DC: ImpAdCallI2 Format$(, )
  loc_A407E1: FStStrNoPop var_B4
  loc_A407E4: FLdPr Me
  loc_A407E7: VCallAd Control_ID_TDebSinRegLbl
  loc_A407EA: FStAdFunc var_88
  loc_A407ED: FLdPr var_88
  loc_A407F0: Me.Caption = from_stack_1
  loc_A407F5: FFree1Str var_B4
  loc_A407F8: FFree1Ad var_88
  loc_A407FB: FFreeVar var_98 = ""
  loc_A40802: FLdRfVar var_B0
  loc_A40805: FLdPr Me
  loc_A40808: MemLdRfVar from_stack_1.global_64
  loc_A4080B: NewIfNullPr tblbanco
  loc_A4080E: from_stack_1v = tblbanco.TCredSinRegGet()
  loc_A40813: LitI4 1
  loc_A40818: LitI4 1
  loc_A4081D: LitVarStr var_C8, "currency"
  loc_A40822: FStVarCopyObj var_AC
  loc_A40825: FLdRfVar var_AC
  loc_A40828: FLdZeroAd var_B0
  loc_A4082B: CVarStr var_98
  loc_A4082E: ImpAdCallI2 Format$(, )
  loc_A40833: FStStrNoPop var_B4
  loc_A40836: FLdPr Me
  loc_A40839: VCallAd Control_ID_TCredSinRegLbl
  loc_A4083C: FStAdFunc var_88
  loc_A4083F: FLdPr var_88
  loc_A40842: Me.Caption = from_stack_1
  loc_A40847: FFree1Str var_B4
  loc_A4084A: FFree1Ad var_88
  loc_A4084D: FFreeVar var_98 = ""
  loc_A40854: FLdRfVar var_B0
  loc_A40857: FLdPr Me
  loc_A4085A: MemLdRfVar from_stack_1.global_64
  loc_A4085D: NewIfNullPr tblbanco
  loc_A40860: from_stack_1v = tblbanco.TResulConciGet()
  loc_A40865: LitI4 1
  loc_A4086A: LitI4 1
  loc_A4086F: LitVarStr var_C8, "currency"
  loc_A40874: FStVarCopyObj var_AC
  loc_A40877: FLdRfVar var_AC
  loc_A4087A: FLdZeroAd var_B0
  loc_A4087D: CVarStr var_98
  loc_A40880: ImpAdCallI2 Format$(, )
  loc_A40885: FStStrNoPop var_B4
  loc_A40888: FLdPr Me
  loc_A4088B: VCallAd Control_ID_TResulConciLbl
  loc_A4088E: FStAdFunc var_88
  loc_A40891: FLdPr var_88
  loc_A40894: Me.Caption = from_stack_1
  loc_A40899: FFree1Str var_B4
  loc_A4089C: FFree1Ad var_88
  loc_A4089F: FFreeVar var_98 = ""
  loc_A408A6: ExitProcHresult
End Function
