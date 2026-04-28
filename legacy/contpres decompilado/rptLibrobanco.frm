VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptLibrobanco
  Caption = "Libro banco"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptLibrobanco.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9045
  ClientHeight = 5250
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 3600
    Width = 8775
    Height = 150
    Visible = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptLibrobanco.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4995
    Width = 9045
    Height = 255
    TabIndex = 29
    OleObjectBlob = "rptLibrobanco.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 4080
    Width = 735
    Height = 615
    TabIndex = 28
    Cancel = -1  'True
    Picture = "rptLibrobanco.frx":09B2
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptLibrobanco.frx":0C04
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3840
    Width = 3135
    Height = 1095
    TabIndex = 23
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 25
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 24
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3840
    Width = 3015
    Height = 1095
    TabIndex = 20
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8775
    Height = 3735
    TabIndex = 0
    Begin VB.CheckBox chkMostrarTransferencias
      Caption = "Mostrar TRANSFERENCIAS pendientes de pago"
      ForeColor = &HFF&
      Left = 1680
      Top = 1320
      Width = 3855
      Height = 255
      TabIndex = 11
    End
    Begin VB.ComboBox cboConciliados
      Style = 2
      ForeColor = &H0&
      Left = 1725
      Top = 2760
      Width = 3255
      Height = 315
      TabIndex = 18
    End
    Begin VB.CheckBox chkMostrarInterbanking
      Caption = "Mostrar Interbanking"
      Left = 3240
      Top = 2280
      Width = 1815
      Height = 255
      TabIndex = 16
    End
    Begin VB.CommandButton cmdCodiBanc
      Left = 2760
      Top = 360
      Width = 375
      Height = 255
      TabIndex = 3
      Picture = "rptLibrobanco.frx":0C68
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2880
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptLibrobanco.frx":0D62
      Style = 1
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 5400
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptLibrobanco.frx":12A4
      Style = 1
    End
    Begin VB.ComboBox cboCodiTimb
      Style = 2
      ForeColor = &H0&
      Left = 1725
      Top = 1800
      Width = 3255
      Height = 315
      TabIndex = 13
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6840
      Top = 1920
      Width = 1335
      Height = 495
      TabIndex = 26
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1725
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptLibrobanco.frx":17E6
      Appearance = 0 'Flat
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 4245
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 9
      OleObjectBlob = "rptLibrobanco.frx":186E
      Appearance = 0 'Flat
    End
    Begin MSMask.MaskEdBox CodiBancMsk
      Left = 1725
      Top = 360
      Width = 735
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptLibrobanco.frx":18F6
    End
    Begin MSMask.MaskEdBox mskNumeMoba
      Left = 1725
      Top = 2280
      Width = 1095
      Height = 285
      TabIndex = 15
      OleObjectBlob = "rptLibrobanco.frx":1960
    End
    Begin VB.Label Label6
      Caption = "Conciliación:"
      Left = 690
      Top = 2760
      Width = 900
      Height = 195
      TabIndex = 17
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Movimiento Nº:"
      Left = 510
      Top = 2280
      Width = 1080
      Height = 195
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Tipo de movimiento:"
      Left = 165
      Top = 1800
      Width = 1425
      Height = 195
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Banco:"
      Left = 1080
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label DetaBancLbl
      Left = 3240
      Top = 360
      Width = 5415
      Height = 255
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 1080
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 3645
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 8
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6720
    Top = 4200
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 27
    OleObjectBlob = "rptLibrobanco.frx":19D0
  End
End

Attribute VB_Name = "rptLibrobanco"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00597558
  bStruc(60) As Byte ' String fields: 15
End Type

Private Type UDT_2_005DC160
  bStruc(56) As Byte ' String fields: 14
End Type


Private Sub cmdCodiBanc_Click() '9FCAD4
  'Data Table: 4B9CB8
  loc_9FC994: LitI2_Byte &HFF
  loc_9FC996: ImpAdLdRf MemVar_C3D6AC
  loc_9FC999: NewIfNullPr bscBanco
  loc_9FC99C: Call bscBanco.MuestroAnuladosPut(from_stack_1v)
  loc_9FC9A1: LitVar_Missing var_A4
  loc_9FC9A4: PopAdLdVar
  loc_9FC9A5: LitVarI4
  loc_9FC9AD: PopAdLdVar
  loc_9FC9AE: ImpAdLdRf MemVar_C3D6AC
  loc_9FC9B1: NewIfNullPr bscBanco
  loc_9FC9B4: bscBanco.Show from_stack_1, from_stack_2
  loc_9FC9B9: FLdRfVar var_AC
  loc_9FC9BC: FLdRfVar var_A8
  loc_9FC9BF: ImpAdLdRf MemVar_C3D6AC
  loc_9FC9C2: NewIfNullPr bscBanco
  loc_9FC9C5: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FC9CA: FLdPr var_A8
  loc_9FC9CD: from_stack_1 = clsbase.RecordCount
  loc_9FC9D2: ILdRf var_AC
  loc_9FC9D5: LitI4 0
  loc_9FC9DA: GtI4
  loc_9FC9DB: FFree1Ad var_A8
  loc_9FC9DE: BranchF loc_9FCAB9
  loc_9FC9E1: FLdRfVar var_C8
  loc_9FC9E4: FLdRfVar var_B8
  loc_9FC9E7: LitVarStr var_94, "CodiBanc"
  loc_9FC9EC: PopAdLdVar
  loc_9FC9ED: FLdRfVar var_B4
  loc_9FC9F0: FLdRfVar var_B0
  loc_9FC9F3: FLdRfVar var_A8
  loc_9FC9F6: ImpAdLdRf MemVar_C3D6AC
  loc_9FC9F9: NewIfNullPr bscBanco
  loc_9FC9FC: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FCA01: FLdPr var_A8
  loc_9FCA04: from_stack_1v = clsbase.RsFrmGet()
  loc_9FCA09: FLdPr var_B0
  loc_9FCA0C:  = Me.Fields
  loc_9FCA11: FLdPr var_B4
  loc_9FCA14: from_stack_2 = Me.Item(from_stack_1)
  loc_9FCA19: FLdPr var_B8
  loc_9FCA1C:  = Me.Value
  loc_9FCA21: FLdRfVar var_C8
  loc_9FCA24: CStrVarTmp
  loc_9FCA25: CVarStr var_D8
  loc_9FCA28: PopAdLdVar
  loc_9FCA29: FLdPr Me
  loc_9FCA2C: VCallAd Control_ID_CodiBancMsk
  loc_9FCA2F: FStAdFunc var_DC
  loc_9FCA32: FLdPr var_DC
  loc_9FCA35: LateIdSt
  loc_9FCA3A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FCA47: FFreeVar var_C8 = ""
  loc_9FCA4E: FLdRfVar var_C8
  loc_9FCA51: FLdRfVar var_B8
  loc_9FCA54: LitVarStr var_94, "DetaBanc"
  loc_9FCA59: PopAdLdVar
  loc_9FCA5A: FLdRfVar var_B4
  loc_9FCA5D: FLdRfVar var_B0
  loc_9FCA60: FLdRfVar var_A8
  loc_9FCA63: ImpAdLdRf MemVar_C3D6AC
  loc_9FCA66: NewIfNullPr bscBanco
  loc_9FCA69: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FCA6E: FLdPr var_A8
  loc_9FCA71: from_stack_1v = clsbase.RsFrmGet()
  loc_9FCA76: FLdPr var_B0
  loc_9FCA79:  = Me.Fields
  loc_9FCA7E: FLdPr var_B4
  loc_9FCA81: from_stack_2 = Me.Item(from_stack_1)
  loc_9FCA86: FLdPr var_B8
  loc_9FCA89:  = Me.Value
  loc_9FCA8E: FLdRfVar var_C8
  loc_9FCA91: CStrVarTmp
  loc_9FCA92: FStStrNoPop var_E0
  loc_9FCA95: FLdPr Me
  loc_9FCA98: VCallAd Control_ID_DetaBancLbl
  loc_9FCA9B: FStAdFunc var_DC
  loc_9FCA9E: FLdPr var_DC
  loc_9FCAA1: Me.Caption = from_stack_1
  loc_9FCAA6: FFree1Str var_E0
  loc_9FCAA9: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FCAB6: FFree1Var var_C8 = ""
  loc_9FCAB9: FLdPr Me
  loc_9FCABC: VCallAd Control_ID_mskDesde
  loc_9FCABF: FStAdFunc var_A8
  loc_9FCAC2: FLdPr var_A8
  loc_9FCAC5: LateIdCall
  loc_9FCACD: FFree1Ad var_A8
  loc_9FCAD0: ExitProcHresult
  loc_9FCAD3: CCyI2
End Sub

Private Sub mskHasta_UnknownEvent_0 '94F218
  'Data Table: 4B9CB8
  loc_94F204: FLdPr Me
  loc_94F207: VCallAd Control_ID_mskHasta
  loc_94F20A: CVarAd
  loc_94F20E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F213: FFree1Var var_94 = ""
  loc_94F216: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B2044
  'Data Table: 4B9CB8
  loc_9B1FA8: FLdPr Me
  loc_9B1FAB: VCallAd Control_ID_mskHasta
  loc_9B1FAE: FStAdFunc var_88
  loc_9B1FB1: FLdPr var_88
  loc_9B1FB4: LateIdLdVar var_98 DispID_15 0
  loc_9B1FBB: PopAd
  loc_9B1FBD: FLdPr Me
  loc_9B1FC0: VCallAd Control_ID_mskHasta
  loc_9B1FC3: FStAdFunc var_AC
  loc_9B1FC6: LitI2_Byte 0
  loc_9B1FC8: PopTmpLdAd2 var_A2
  loc_9B1FCB: FLdZeroAd var_AC
  loc_9B1FCE: FStAdFunc var_A0
  loc_9B1FD1: FLdRfVar var_A0
  loc_9B1FD4: LitStr vbNullString
  loc_9B1FD7: LitI2_Byte 0
  loc_9B1FD9: LitI2_Byte 0
  loc_9B1FDB: FLdRfVar var_98
  loc_9B1FDE: CStrVarTmp
  loc_9B1FDF: FStStrNoPop var_9C
  loc_9B1FE2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B1FE7: FStStrNoPop var_A8
  loc_9B1FEA: FLdPr Me
  loc_9B1FED: MemStStrCopy
  loc_9B1FF1: FFreeStr var_9C = ""
  loc_9B1FF8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2001: FFree1Var var_98 = ""
  loc_9B2004: FLdPr Me
  loc_9B2007: VCallAd Control_ID_mskHasta
  loc_9B200A: FStAdFunc var_B0
  loc_9B200D: LitNothing
  loc_9B200F: CastAd
  loc_9B2012: FStAdFunc var_AC
  loc_9B2015: FLdRfVar var_AC
  loc_9B2018: FLdZeroAd var_B0
  loc_9B201B: FStAdFuncNoPop
  loc_9B201E: CastAd
  loc_9B2021: FStAdFunc var_A0
  loc_9B2024: FLdRfVar var_A0
  loc_9B2027: FLdPr Me
  loc_9B202A: MemLdRfVar from_stack_1.global_112
  loc_9B202D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B2032: IStI2 arg_C
  loc_9B2035: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2040: ExitProcHresult
End Function

Private Sub mskNumeMoba_UnknownEvent_0 '94F2F0
  'Data Table: 4B9CB8
  loc_94F2DC: FLdPr Me
  loc_94F2DF: VCallAd Control_ID_mskNumeMoba
  loc_94F2E2: CVarAd
  loc_94F2E6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F2EB: FFree1Var var_94 = ""
  loc_94F2EE: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95E230
  'Data Table: 4B9CB8
  loc_95E218: ILdRf Me
  loc_95E21B: CastAd
  loc_95E21E: FStAdFunc var_88
  loc_95E221: FLdRfVar var_88
  loc_95E224: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95E229: FFree1Ad var_88
  loc_95E22C: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9892E4
  'Data Table: 4B9CB8
  loc_9892AC: FLdPr Me
  loc_9892AF: VCallAd Control_ID_statusBar
  loc_9892B2: FStAdFunc var_88
  loc_9892B5: FLdPr var_88
  loc_9892B8: LateIdLdVar var_98 DispID_1 0
  loc_9892BF: CStrVarTmp
  loc_9892C0: CVarStr var_A8
  loc_9892C3: PopAdLdVar
  loc_9892C4: FLdPr Me
  loc_9892C7: VCallAd Control_ID_statusBar
  loc_9892CA: FStAdFunc var_BC
  loc_9892CD: FLdPr var_BC
  loc_9892D0: LateIdSt
  loc_9892D5: FFreeAd var_88 = ""
  loc_9892DC: FFreeVar var_98 = ""
  loc_9892E3: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94F260
  'Data Table: 4B9CB8
  loc_94F24C: FLdPr Me
  loc_94F24F: VCallAd Control_ID_mskDesde
  loc_94F252: CVarAd
  loc_94F256: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F25B: FFree1Var var_94 = ""
  loc_94F25E: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_8 '9E6F9C
  'Data Table: 4B9CB8
  loc_9E6E98: FLdPr Me
  loc_9E6E9B: VCallAd Control_ID_mskDesde
  loc_9E6E9E: FStAdFunc var_88
  loc_9E6EA1: FLdPr var_88
  loc_9E6EA4: LateIdLdVar var_98 DispID_22 0
  loc_9E6EAB: CStrVarTmp
  loc_9E6EAC: FStStrNoPop var_9C
  loc_9E6EAF: LitStr vbNullString
  loc_9E6EB2: NeStr
  loc_9E6EB4: FFree1Str var_9C
  loc_9E6EB7: FFree1Ad var_88
  loc_9E6EBA: FFree1Var var_98 = ""
  loc_9E6EBD: BranchF loc_9E6F99
  loc_9E6EC0: FLdPr Me
  loc_9E6EC3: VCallAd Control_ID_mskDesde
  loc_9E6EC6: FStAdFunc var_88
  loc_9E6EC9: FLdPr var_88
  loc_9E6ECC: LateIdLdVar var_98 DispID_15 0
  loc_9E6ED3: PopAd
  loc_9E6ED5: FLdPr Me
  loc_9E6ED8: VCallAd Control_ID_mskDesde
  loc_9E6EDB: FStAdFunc var_A0
  loc_9E6EDE: FLdPr var_A0
  loc_9E6EE1: LateIdLdVar var_B0 DispID_15 0
  loc_9E6EE8: CStrVarTmp
  loc_9E6EE9: CVarStr var_C0
  loc_9E6EEC: FLdRfVar var_D0
  loc_9E6EEF: ImpAdCallFPR4  = Year()
  loc_9E6EF4: LitI2_Byte 1
  loc_9E6EF6: LitI2_Byte 1
  loc_9E6EF8: FLdRfVar var_D0
  loc_9E6EFB: CI2Var
  loc_9E6EFC: FLdRfVar var_E0
  loc_9E6EFF: ImpAdCallFPR4  = DateSerial(, , )
  loc_9E6F04: FLdPr Me
  loc_9E6F07: VCallAd Control_ID_mskDesde
  loc_9E6F0A: FStAdFunc var_F4
  loc_9E6F0D: LitI2_Byte 0
  loc_9E6F0F: PopTmpLdAd2 var_EA
  loc_9E6F12: FLdZeroAd var_F4
  loc_9E6F15: FStAdFunc var_E8
  loc_9E6F18: FLdRfVar var_E8
  loc_9E6F1B: FLdRfVar var_E0
  loc_9E6F1E: CStrVarVal var_E4
  loc_9E6F22: LitI2_Byte 0
  loc_9E6F24: LitI2_Byte 0
  loc_9E6F26: FLdRfVar var_98
  loc_9E6F29: CStrVarTmp
  loc_9E6F2A: FStStrNoPop var_9C
  loc_9E6F2D: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9E6F32: FStStrNoPop var_F0
  loc_9E6F35: FLdPr Me
  loc_9E6F38: MemStStrCopy
  loc_9E6F3C: FFreeStr var_9C = "": var_E4 = ""
  loc_9E6F45: FFreeAd var_88 = "": var_A0 = "": var_E8 = ""
  loc_9E6F50: FFreeVar var_98 = "": var_B0 = "": var_C0 = "": var_D0 = ""
  loc_9E6F5D: FLdPr Me
  loc_9E6F60: VCallAd Control_ID_mskDesde
  loc_9E6F63: FStAdFunc var_F4
  loc_9E6F66: LitNothing
  loc_9E6F68: CastAd
  loc_9E6F6B: FStAdFunc var_E8
  loc_9E6F6E: FLdRfVar var_E8
  loc_9E6F71: FLdZeroAd var_F4
  loc_9E6F74: FStAdFuncNoPop
  loc_9E6F77: CastAd
  loc_9E6F7A: FStAdFunc var_A0
  loc_9E6F7D: FLdRfVar var_A0
  loc_9E6F80: FLdPr Me
  loc_9E6F83: MemLdRfVar from_stack_1.global_112
  loc_9E6F86: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E6F8B: IStI2 Button
  loc_9E6F8E: FFreeAd var_88 = "": var_A0 = "": var_E8 = ""
  loc_9E6F99: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '979808
  'Data Table: 4B9CB8
  loc_9797D8: LitVarStr var_94, "Cerrando..."
  loc_9797DD: PopAdLdVar
  loc_9797DE: FLdPr Me
  loc_9797E1: VCallAd Control_ID_statusBar
  loc_9797E4: FStAdFunc var_A8
  loc_9797E7: FLdPr var_A8
  loc_9797EA: LateIdSt
  loc_9797EF: FFree1Ad var_A8
  loc_9797F2: ILdRf Me
  loc_9797F5: FStAdNoPop
  loc_9797F9: ImpAdLdRf MemVar_C44F9C
  loc_9797FC: NewIfNullPr Me
  loc_9797FF: Me.Global.Unload from_stack_1
  loc_979804: FFree1Ad var_A8
  loc_979807: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B1CC
  'Data Table: 4B9CB8
  loc_96B1B0: LitI2_Byte &HFF
  loc_96B1B2: LitI2_Byte 0
  loc_96B1B4: ILdRf Me
  loc_96B1B7: CastAd
  loc_96B1BA: FStAdFunc var_88
  loc_96B1BD: FLdRfVar var_88
  loc_96B1C0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B1C5: FFree1Ad var_88
  loc_96B1C8: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95E2C8
  'Data Table: 4B9CB8
  loc_95E2B0: LitI2_Byte 0
  loc_95E2B2: ILdRf Me
  loc_95E2B5: CastAd
  loc_95E2B8: FStAdFunc var_88
  loc_95E2BB: FLdRfVar var_88
  loc_95E2BE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95E2C3: FFree1Ad var_88
  loc_95E2C6: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95E198
  'Data Table: 4B9CB8
  loc_95E180: ILdRf Me
  loc_95E183: CastAd
  loc_95E186: FStAdFunc var_88
  loc_95E189: FLdRfVar var_88
  loc_95E18C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95E191: FFree1Ad var_88
  loc_95E194: ExitProcHresult
End Sub

Private Sub Form_Load() 'A3F650
  'Data Table: 4B9CB8
  loc_A3F430: LitI2_Byte &HFF
  loc_A3F432: ImpAdStI2 MemVar_C3D840
  loc_A3F435: ILdRf Me
  loc_A3F438: CastAd
  loc_A3F43B: FStAdFunc var_8C
  loc_A3F43E: FLdRfVar var_8C
  loc_A3F441: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A3F446: FFree1Ad var_8C
  loc_A3F449: FLdPr Me
  loc_A3F44C: VCallAd Control_ID_cboCodiTimb
  loc_A3F44F: FStAdFunc var_90
  loc_A3F452: LitVar_Missing var_A0
  loc_A3F455: PopAdLdVar
  loc_A3F456: LitStr "TODOS"
  loc_A3F459: FLdPr var_90
  loc_A3F45C: Me.AddItem from_stack_1, from_stack_2
  loc_A3F461: LitI4 0
  loc_A3F466: FLdRfVar var_A2
  loc_A3F469: FLdPr var_90
  loc_A3F46C:  = Me.NewIndex
  loc_A3F471: FLdI2 var_A2
  loc_A3F474: FLdPr var_90
  loc_A3F477: Me.ItemData = from_stack_1
  loc_A3F47C: LitStr "SELECT CodiTimb, DetaTimb, IF(DeCreTimb=0,'Debito','Credito') DeCreTimb"
  loc_A3F47F: LitStr " FROM tipomovibanco"
  loc_A3F482: ConcatStr
  loc_A3F483: FStStrNoPop var_A8
  loc_A3F486: LitStr " WHERE PeriInfo = "
  loc_A3F489: ConcatStr
  loc_A3F48A: FStStrNoPop var_AC
  loc_A3F48D: ImpAdLdI2 MemVar_C3D064
  loc_A3F490: CStrUI1
  loc_A3F492: FStStrNoPop var_B0
  loc_A3F495: ConcatStr
  loc_A3F496: FStStrNoPop var_B4
  loc_A3F499: LitStr ";"
  loc_A3F49C: ConcatStr
  loc_A3F49D: FStStrNoPop var_B8
  loc_A3F4A0: FLdRfVar var_88
  loc_A3F4A3: NewIfNullPr clstipomovibanco
  loc_A3F4A6: Call clstipomovibanco.RedefineRS(from_stack_1v)
  loc_A3F4AB: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A3F4B8: FLdRfVar var_BC
  loc_A3F4BB: FLdRfVar var_88
  loc_A3F4BE: NewIfNullPr clstipomovibanco
  loc_A3F4C1: from_stack_1 = clstipomovibanco.RecordCount
  loc_A3F4C6: ILdRf var_BC
  loc_A3F4C9: LitI4 0
  loc_A3F4CE: GtI4
  loc_A3F4CF: BranchF loc_A3F606
  loc_A3F4D2: FLdRfVar var_88
  loc_A3F4D5: NewIfNullPr clstipomovibanco
  loc_A3F4D8: Call clstipomovibanco.MoveFirst(from_stack_1v)
  loc_A3F4DD: FLdRfVar var_A2
  loc_A3F4E0: FLdRfVar var_88
  loc_A3F4E3: NewIfNullPr clstipomovibanco
  loc_A3F4E6: from_stack_1 = clstipomovibanco.EOF
  loc_A3F4EB: FLdI2 var_A2
  loc_A3F4EE: NotI4
  loc_A3F4EF: BranchF loc_A3F606
  loc_A3F4F2: LitVar_Missing var_140
  loc_A3F4F5: PopAdLdVar
  loc_A3F4F6: FLdRfVar var_D4
  loc_A3F4F9: FLdRfVar var_C4
  loc_A3F4FC: LitVarStr var_A0, "CodiTimb"
  loc_A3F501: PopAdLdVar
  loc_A3F502: FLdRfVar var_C0
  loc_A3F505: FLdRfVar var_8C
  loc_A3F508: FLdRfVar var_88
  loc_A3F50B: NewIfNullPr clstipomovibanco
  loc_A3F50E: from_stack_1v = clstipomovibanco.RsFrmGet()
  loc_A3F513: FLdPr var_8C
  loc_A3F516:  = Me.Fields
  loc_A3F51B: FLdPr var_C0
  loc_A3F51E: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F523: FLdPr var_C4
  loc_A3F526:  = Me.Value
  loc_A3F52B: FLdRfVar var_D4
  loc_A3F52E: LitVarStr var_E4, " - "
  loc_A3F533: ConcatVar var_F4
  loc_A3F537: FLdRfVar var_120
  loc_A3F53A: FLdRfVar var_110
  loc_A3F53D: LitVarStr var_10C, "DetaTimb"
  loc_A3F542: PopAdLdVar
  loc_A3F543: FLdRfVar var_FC
  loc_A3F546: FLdRfVar var_F8
  loc_A3F549: FLdRfVar var_88
  loc_A3F54C: NewIfNullPr clstipomovibanco
  loc_A3F54F: from_stack_1v = clstipomovibanco.RsFrmGet()
  loc_A3F554: FLdPr var_F8
  loc_A3F557:  = Me.Fields
  loc_A3F55C: FLdPr var_FC
  loc_A3F55F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F564: FLdPr var_110
  loc_A3F567:  = Me.Value
  loc_A3F56C: FLdRfVar var_120
  loc_A3F56F: ConcatVar var_130
  loc_A3F573: CStrVarVal var_A8
  loc_A3F577: FLdPr var_90
  loc_A3F57A: Me.AddItem from_stack_1, from_stack_2
  loc_A3F57F: FFree1Str var_A8
  loc_A3F582: FFreeAd var_8C = "": var_C0 = "": var_C4 = "": var_F8 = "": var_FC = ""
  loc_A3F591: FFreeVar var_D4 = "": var_F4 = "": var_120 = ""
  loc_A3F59C: FLdRfVar var_D4
  loc_A3F59F: FLdRfVar var_C4
  loc_A3F5A2: LitVarStr var_A0, "CodiTimb"
  loc_A3F5A7: PopAdLdVar
  loc_A3F5A8: FLdRfVar var_C0
  loc_A3F5AB: FLdRfVar var_8C
  loc_A3F5AE: FLdRfVar var_88
  loc_A3F5B1: NewIfNullPr clstipomovibanco
  loc_A3F5B4: from_stack_1v = clstipomovibanco.RsFrmGet()
  loc_A3F5B9: FLdPr var_8C
  loc_A3F5BC:  = Me.Fields
  loc_A3F5C1: FLdPr var_C0
  loc_A3F5C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F5C9: FLdPr var_C4
  loc_A3F5CC:  = Me.Value
  loc_A3F5D1: FLdRfVar var_D4
  loc_A3F5D4: CI4Var
  loc_A3F5D6: FLdRfVar var_A2
  loc_A3F5D9: FLdPr var_90
  loc_A3F5DC:  = Me.NewIndex
  loc_A3F5E1: FLdI2 var_A2
  loc_A3F5E4: FLdPr var_90
  loc_A3F5E7: Me.ItemData = from_stack_1
  loc_A3F5EC: FFreeAd var_8C = "": var_C0 = ""
  loc_A3F5F5: FFree1Var var_D4 = ""
  loc_A3F5F8: FLdRfVar var_88
  loc_A3F5FB: NewIfNullPr clstipomovibanco
  loc_A3F5FE: Call clstipomovibanco.MoveSiguiente()
  loc_A3F603: Branch loc_A3F4DD
  loc_A3F606: LitNothing
  loc_A3F608: FStAd var_90 
  loc_A3F60C: FLdPr Me
  loc_A3F60F: VCallAd Control_ID_cboConciliados
  loc_A3F612: FStAdFunc var_144
  loc_A3F615: LitVar_Missing var_A0
  loc_A3F618: PopAdLdVar
  loc_A3F619: LitStr "TODOS"
  loc_A3F61C: FLdPr var_144
  loc_A3F61F: Me.AddItem from_stack_1, from_stack_2
  loc_A3F624: LitVar_Missing var_A0
  loc_A3F627: PopAdLdVar
  loc_A3F628: LitStr "CONCILIADOS"
  loc_A3F62B: FLdPr var_144
  loc_A3F62E: Me.AddItem from_stack_1, from_stack_2
  loc_A3F633: LitVar_Missing var_A0
  loc_A3F636: PopAdLdVar
  loc_A3F637: LitStr "NO CONCILIADOS"
  loc_A3F63A: FLdPr var_144
  loc_A3F63D: Me.AddItem from_stack_1, from_stack_2
  loc_A3F642: LitNothing
  loc_A3F644: FStAd var_144 
  loc_A3F648: Call cmdNueva_Click()
  loc_A3F64D: ExitProcHresult
  loc_A3F64E: FStVarCopyObj Form_Load000
End Sub

Private Sub Form_Unload(Cancel As Integer) '95E8B8
  'Data Table: 4B9CB8
  loc_95E8A0: FLdPr Me
  loc_95E8A3: VCallAd Control_ID_wbbReporte
  loc_95E8A6: FStAdFunc var_88
  loc_95E8A9: FLdRfVar var_88
  loc_95E8AC: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95E8B1: FFree1Ad var_88
  loc_95E8B4: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97F960
  'Data Table: 4B9CB8
  loc_97F92C: LitVar_Missing var_A4
  loc_97F92F: PopAdLdVar
  loc_97F930: LitVarI4
  loc_97F938: PopAdLdVar
  loc_97F939: ImpAdLdRf MemVar_C3D9A8
  loc_97F93C: NewIfNullPr frmCalendario
  loc_97F93F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F944: ImpAdLdRf MemVar_C3D038
  loc_97F947: CDargRef
  loc_97F94B: FLdPr Me
  loc_97F94E: VCallAd Control_ID_mskDesde
  loc_97F951: FStAdFunc var_A8
  loc_97F954: FLdPr var_A8
  loc_97F957: LateIdSt
  loc_97F95C: FFree1Ad var_A8
  loc_97F95F: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97F828
  'Data Table: 4B9CB8
  loc_97F7F4: LitVar_Missing var_A4
  loc_97F7F7: PopAdLdVar
  loc_97F7F8: LitVarI4
  loc_97F800: PopAdLdVar
  loc_97F801: ImpAdLdRf MemVar_C3D9A8
  loc_97F804: NewIfNullPr frmCalendario
  loc_97F807: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F80C: ImpAdLdRf MemVar_C3D038
  loc_97F80F: CDargRef
  loc_97F813: FLdPr Me
  loc_97F816: VCallAd Control_ID_mskHasta
  loc_97F819: FStAdFunc var_A8
  loc_97F81C: FLdPr var_A8
  loc_97F81F: LateIdSt
  loc_97F824: FFree1Ad var_A8
  loc_97F827: ExitProcHresult
End Sub

Private Sub CodiBancMsk_UnknownEvent_0 '94F338
  'Data Table: 4B9CB8
  loc_94F324: FLdPr Me
  loc_94F327: VCallAd Control_ID_CodiBancMsk
  loc_94F32A: CVarAd
  loc_94F32E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F333: FFree1Var var_94 = ""
  loc_94F336: ExitProcHresult
End Sub

Private Function CodiBancMsk_UnknownEvent_8(arg_C) '9E9400
  'Data Table: 4B9CB8
  loc_9E92E4: FLdPr Me
  loc_9E92E7: VCallAd Control_ID_CodiBancMsk
  loc_9E92EA: FStAdFunc var_88
  loc_9E92ED: FLdPr var_88
  loc_9E92F0: LateIdLdVar var_98 DispID_22 0
  loc_9E92F7: CStrVarTmp
  loc_9E92F8: FStStrNoPop var_9C
  loc_9E92FB: LitStr vbNullString
  loc_9E92FE: NeStr
  loc_9E9300: FFree1Str var_9C
  loc_9E9303: FFree1Ad var_88
  loc_9E9306: FFree1Var var_98 = ""
  loc_9E9309: BranchF loc_9E93E8
  loc_9E930C: FLdPr Me
  loc_9E930F: VCallAd Control_ID_CodiBancMsk
  loc_9E9312: FStAdFunc var_88
  loc_9E9315: FLdPr var_88
  loc_9E9318: LateIdLdVar var_98 DispID_22 0
  loc_9E931F: PopAd
  loc_9E9321: LitI4 0
  loc_9E9326: FStStrCopy var_A4
  loc_9E9329: FLdRfVar var_A4
  loc_9E932C: FLdPr Me
  loc_9E932F: MemLdRfVar from_stack_1.global_88
  loc_9E9332: NewIfNullRf
  loc_9E9336: FLdRfVar var_98
  loc_9E9339: CStrVarTmp
  loc_9E933A: FStStrNoPop var_A0
  loc_9E933D: ImpAdLdI2 MemVar_C3D064
  loc_9E9340: CStrUI1
  loc_9E9342: FStStrNoPop var_9C
  loc_9E9345: ImpAdCallI2 Proc_259_5_B268F0(, , , )
  loc_9E934A: FFreeStr var_9C = "": var_A0 = ""
  loc_9E9353: FFree1Ad var_88
  loc_9E9356: FFree1Var var_98 = ""
  loc_9E9359: BranchF loc_9E938A
  loc_9E935C: FLdRfVar var_9C
  loc_9E935F: FLdPr Me
  loc_9E9362: MemLdRfVar from_stack_1.global_88
  loc_9E9365: NewIfNullPr tblbanco
  loc_9E9368: from_stack_1v = tblbanco.DetaBancGet()
  loc_9E936D: ILdRf var_9C
  loc_9E9370: FLdPr Me
  loc_9E9373: VCallAd Control_ID_DetaBancLbl
  loc_9E9376: FStAdFunc var_88
  loc_9E9379: FLdPr var_88
  loc_9E937C: Me.Caption = from_stack_1
  loc_9E9381: FFree1Str var_9C
  loc_9E9384: FFree1Ad var_88
  loc_9E9387: Branch loc_9E93E5
  loc_9E938A: FLdRfVar var_9C
  loc_9E938D: FLdPr Me
  loc_9E9390: MemLdRfVar from_stack_1.global_88
  loc_9E9393: NewIfNullPr tblbanco
  loc_9E9396: from_stack_1v = tblbanco.MsgErrorGet()
  loc_9E939B: ILdRf var_9C
  loc_9E939E: FLdPr Me
  loc_9E93A1: MemStStrCopy
  loc_9E93A5: FFree1Str var_9C
  loc_9E93A8: FLdPr Me
  loc_9E93AB: VCallAd Control_ID_CodiBancMsk
  loc_9E93AE: FStAdFunc var_B0
  loc_9E93B1: FLdPr Me
  loc_9E93B4: VCallAd Control_ID_DetaBancLbl
  loc_9E93B7: FStAdFunc var_AC
  loc_9E93BA: FLdRfVar var_AC
  loc_9E93BD: FLdZeroAd var_B0
  loc_9E93C0: FStAdFuncNoPop
  loc_9E93C3: CastAd
  loc_9E93C6: FStAdFunc var_A8
  loc_9E93C9: FLdRfVar var_A8
  loc_9E93CC: FLdPr Me
  loc_9E93CF: MemLdRfVar from_stack_1.global_112
  loc_9E93D2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E93D7: IStI2 arg_C
  loc_9E93DA: FFreeAd var_88 = "": var_A8 = "": var_AC = ""
  loc_9E93E5: Branch loc_9E93FF
  loc_9E93E8: LitStr vbNullString
  loc_9E93EB: FLdPr Me
  loc_9E93EE: VCallAd Control_ID_DetaBancLbl
  loc_9E93F1: FStAdFunc var_88
  loc_9E93F4: FLdPr var_88
  loc_9E93F7: Me.Caption = from_stack_1
  loc_9E93FC: FFree1Ad var_88
  loc_9E93FF: ExitProcHresult
End Function

Private Sub cmdNueva_Click() '9E88D0
  'Data Table: 4B9CB8
  loc_9E87A4: LitI2_Byte 0
  loc_9E87A6: FLdPr Me
  loc_9E87A9: MemStI2 bGenerado
  loc_9E87AC: LitI2_Byte &HFF
  loc_9E87AE: FLdPr Me
  loc_9E87B1: MemStI2 bLogos
  loc_9E87B4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9E87B9: LitI2_Byte 0
  loc_9E87BB: FLdPr Me
  loc_9E87BE: VCallAd Control_ID_cboCodiTimb
  loc_9E87C1: FStAdFunc var_88
  loc_9E87C4: FLdPr var_88
  loc_9E87C7: Me.ListIndex = from_stack_1
  loc_9E87CC: FFree1Ad var_88
  loc_9E87CF: LitI2_Byte 1
  loc_9E87D1: LitI2_Byte 1
  loc_9E87D3: ImpAdLdI2 MemVar_C3D064
  loc_9E87D6: FLdRfVar var_98
  loc_9E87D9: ImpAdCallFPR4  = DateSerial(, , )
  loc_9E87DE: FLdRfVar var_98
  loc_9E87E1: CStrVarTmp
  loc_9E87E2: CVarStr var_A8
  loc_9E87E5: PopAdLdVar
  loc_9E87E6: FLdPr Me
  loc_9E87E9: VCallAd Control_ID_mskDesde
  loc_9E87EC: FStAdFunc var_88
  loc_9E87EF: FLdPr var_88
  loc_9E87F2: LateIdSt
  loc_9E87F7: FFree1Ad var_88
  loc_9E87FA: FFreeVar var_98 = ""
  loc_9E8801: ImpAdLdFPR8 MemVar_C3D04C
  loc_9E8804: CStrDate
  loc_9E8806: CVarStr var_98
  loc_9E8809: PopAdLdVar
  loc_9E880A: FLdPr Me
  loc_9E880D: VCallAd Control_ID_mskHasta
  loc_9E8810: FStAdFunc var_88
  loc_9E8813: FLdPr var_88
  loc_9E8816: LateIdSt
  loc_9E881B: FFree1Ad var_88
  loc_9E881E: FFree1Var var_98 = ""
  loc_9E8821: LitI4 1
  loc_9E8826: CI2I4
  loc_9E8827: FLdPr Me
  loc_9E882A: VCallAd Control_ID_chkMostrarTransferencias
  loc_9E882D: FStAdFunc var_88
  loc_9E8830: FLdPr var_88
  loc_9E8833: Me.Value = from_stack_1
  loc_9E8838: FFree1Ad var_88
  loc_9E883B: LitVarStr var_B8, vbNullString
  loc_9E8840: PopAdLdVar
  loc_9E8841: FLdPr Me
  loc_9E8844: VCallAd Control_ID_CodiBancMsk
  loc_9E8847: FStAdFunc var_88
  loc_9E884A: FLdPr var_88
  loc_9E884D: LateIdSt
  loc_9E8852: FFree1Ad var_88
  loc_9E8855: LitStr vbNullString
  loc_9E8858: FLdPr Me
  loc_9E885B: VCallAd Control_ID_DetaBancLbl
  loc_9E885E: FStAdFunc var_88
  loc_9E8861: FLdPr var_88
  loc_9E8864: Me.Caption = from_stack_1
  loc_9E8869: FFree1Ad var_88
  loc_9E886C: LitVarStr var_B8, vbNullString
  loc_9E8871: PopAdLdVar
  loc_9E8872: FLdPr Me
  loc_9E8875: VCallAd Control_ID_mskNumeMoba
  loc_9E8878: FStAdFunc var_88
  loc_9E887B: FLdPr var_88
  loc_9E887E: LateIdSt
  loc_9E8883: FFree1Ad var_88
  loc_9E8886: LitI4 0
  loc_9E888B: CI2I4
  loc_9E888C: FLdPr Me
  loc_9E888F: VCallAd Control_ID_chkMostrarInterbanking
  loc_9E8892: FStAdFunc var_88
  loc_9E8895: FLdPr var_88
  loc_9E8898: Me.Value = from_stack_1
  loc_9E889D: FFree1Ad var_88
  loc_9E88A0: LitI2_Byte 0
  loc_9E88A2: FLdPr Me
  loc_9E88A5: VCallAd Control_ID_cboConciliados
  loc_9E88A8: FStAdFunc var_88
  loc_9E88AB: FLdPr var_88
  loc_9E88AE: Me.ListIndex = from_stack_1
  loc_9E88B3: FFree1Ad var_88
  loc_9E88B6: Call HabilitarCriterio()
  loc_9E88BB: ILdRf Me
  loc_9E88BE: CastAd
  loc_9E88C1: FStAdFunc var_88
  loc_9E88C4: FLdRfVar var_88
  loc_9E88C7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9E88CC: FFree1Ad var_88
  loc_9E88CF: ExitProcHresult
End Sub

Public Function htmFileGet() '4BB1B4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4BB1C3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4BB1D2
  htmFile = Value
End Sub

Public Function bLogosGet() '4BB1E1
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4BB1F0
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4BB1FF
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4BB20E
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9D74E8
  'Data Table: 4B9CB8
  loc_9D7414: LitI4 0
  loc_9D7419: LitI4 &HA
  loc_9D741E: FLdRfVar var_88
  loc_9D7421: Redim
  loc_9D742B: FLdPr Me
  loc_9D742E: VCallAd Control_ID_CodiBancMsk
  loc_9D7431: CVarAd
  loc_9D7435: ParmAry1St
  loc_9D743B: FLdPr Me
  loc_9D743E: VCallAd Control_ID_cmdCodiBanc
  loc_9D7441: CVarAd
  loc_9D7445: ParmAry1St
  loc_9D744B: FLdPr Me
  loc_9D744E: VCallAd Control_ID_mskDesde
  loc_9D7451: CVarAd
  loc_9D7455: ParmAry1St
  loc_9D745B: FLdPr Me
  loc_9D745E: VCallAd Control_ID_cmdCalDesde
  loc_9D7461: CVarAd
  loc_9D7465: ParmAry1St
  loc_9D746B: FLdPr Me
  loc_9D746E: VCallAd Control_ID_mskHasta
  loc_9D7471: CVarAd
  loc_9D7475: ParmAry1St
  loc_9D747B: FLdPr Me
  loc_9D747E: VCallAd Control_ID_cmdCalHasta
  loc_9D7481: CVarAd
  loc_9D7485: ParmAry1St
  loc_9D748B: FLdPr Me
  loc_9D748E: VCallAd Control_ID_chkMostrarTransferencias
  loc_9D7491: CVarAd
  loc_9D7495: ParmAry1St
  loc_9D749B: FLdPr Me
  loc_9D749E: VCallAd Control_ID_cboCodiTimb
  loc_9D74A1: CVarAd
  loc_9D74A5: ParmAry1St
  loc_9D74AB: FLdPr Me
  loc_9D74AE: VCallAd Control_ID_mskNumeMoba
  loc_9D74B1: CVarAd
  loc_9D74B5: ParmAry1St
  loc_9D74BB: FLdPr Me
  loc_9D74BE: VCallAd Control_ID_chkMostrarInterbanking
  loc_9D74C1: CVarAd
  loc_9D74C5: ParmAry1St
  loc_9D74CB: FLdPr Me
  loc_9D74CE: VCallAd Control_ID_cboConciliados
  loc_9D74D1: CVarAd
  loc_9D74D5: ParmAry1St
  loc_9D74DB: FLdRfVar var_88
  loc_9D74DE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9D74E3: FLdRfVar var_88
  loc_9D74E6: Erase
  loc_9D74E7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AF50E0
  'Data Table: 4B9CB8
  loc_AF49EC: LitStr vbNullString
  loc_AF49EF: FLdPr Me
  loc_AF49F2: MemStStrCopy
  loc_AF49F6: LitI2_Byte 0
  loc_AF49F8: PopTmpLdAd2 var_9E
  loc_AF49FB: from_stack_2v = CodiBancMsk_UnknownEvent_8(from_stack_1v)
  loc_AF4A00: FLdPr Me
  loc_AF4A03: MemLdStr global_112
  loc_AF4A06: LitStr vbNullString
  loc_AF4A09: NeStr
  loc_AF4A0B: BranchF loc_AF4A11
  loc_AF4A0E: Branch loc_AF5054
  loc_AF4A11: LitI2_Byte 0
  loc_AF4A13: PopTmpLdAd2 var_9E
  loc_AF4A16: Call mskDesde_UnknownEvent_8()
  loc_AF4A1B: FLdPr Me
  loc_AF4A1E: MemLdStr global_112
  loc_AF4A21: LitStr vbNullString
  loc_AF4A24: NeStr
  loc_AF4A26: BranchF loc_AF4A2C
  loc_AF4A29: Branch loc_AF5054
  loc_AF4A2C: LitI2_Byte 0
  loc_AF4A2E: PopTmpLdAd2 var_9E
  loc_AF4A31: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AF4A36: FLdPr Me
  loc_AF4A39: MemLdStr global_112
  loc_AF4A3C: LitStr vbNullString
  loc_AF4A3F: NeStr
  loc_AF4A41: BranchF loc_AF4A47
  loc_AF4A44: Branch loc_AF5054
  loc_AF4A47: OnErrorGoto loc_AF507D
  loc_AF4A4A: FLdPr Me
  loc_AF4A4D: MemLdI2 bGenerado
  loc_AF4A50: BranchF loc_AF4A54
  loc_AF4A53: ExitProcHresult
  loc_AF4A54: LitVarStr var_B0, "Generando reporte..."
  loc_AF4A59: PopAdLdVar
  loc_AF4A5A: FLdPr Me
  loc_AF4A5D: VCallAd Control_ID_statusBar
  loc_AF4A60: FStAdFunc var_C4
  loc_AF4A63: FLdPr var_C4
  loc_AF4A66: LateIdSt
  loc_AF4A6B: FFree1Ad var_C4
  loc_AF4A6E: LitI4 &HB
  loc_AF4A73: CI2I4
  loc_AF4A74: FLdPr Me
  loc_AF4A77: Me.MousePointer = from_stack_1
  loc_AF4A7C: FLdPr Me
  loc_AF4A7F: VCallAd Control_ID_CodiBancMsk
  loc_AF4A82: FStAdFunc var_C4
  loc_AF4A85: FLdPr var_C4
  loc_AF4A88: LateIdLdVar var_D4 DispID_22 0
  loc_AF4A8F: PopAd
  loc_AF4A91: FLdPr Me
  loc_AF4A94: VCallAd Control_ID_CodiBancMsk
  loc_AF4A97: FStAdFunc var_DC
  loc_AF4A9A: FLdPr var_DC
  loc_AF4A9D: LateIdLdVar var_EC DispID_22 0
  loc_AF4AA4: PopAd
  loc_AF4AA6: LitVarStr var_C0, vbNullString
  loc_AF4AAB: FStVarCopyObj var_110
  loc_AF4AAE: FLdRfVar var_110
  loc_AF4AB1: LitStr " AND mb.CodiBanc = "
  loc_AF4AB4: FLdRfVar var_EC
  loc_AF4AB7: CStrVarTmp
  loc_AF4AB8: FStStrNoPop var_F0
  loc_AF4ABB: ConcatStr
  loc_AF4ABC: CVarStr var_100
  loc_AF4ABF: FLdRfVar var_D4
  loc_AF4AC2: CStrVarTmp
  loc_AF4AC3: FStStrNoPop var_D8
  loc_AF4AC6: LitStr vbNullString
  loc_AF4AC9: NeStr
  loc_AF4ACB: CVarBoolI2 var_B0
  loc_AF4ACF: FLdRfVar var_120
  loc_AF4AD2: ImpAdCallFPR4  = IIf(, , )
  loc_AF4AD7: FLdRfVar var_120
  loc_AF4ADA: CStrVarTmp
  loc_AF4ADB: FStStr var_88
  loc_AF4ADE: FFreeStr var_D8 = ""
  loc_AF4AE5: FFreeAd var_C4 = ""
  loc_AF4AEC: FFreeVar var_D4 = "": var_EC = "": var_B0 = "": var_100 = "": var_110 = ""
  loc_AF4AFB: FLdPr Me
  loc_AF4AFE: VCallAd Control_ID_mskDesde
  loc_AF4B01: FStAdFunc var_C4
  loc_AF4B04: FLdPr var_C4
  loc_AF4B07: LateIdLdVar var_D4 DispID_22 0
  loc_AF4B0E: PopAd
  loc_AF4B10: FLdPr Me
  loc_AF4B13: VCallAd Control_ID_mskDesde
  loc_AF4B16: FStAdFunc var_DC
  loc_AF4B19: FLdPr var_DC
  loc_AF4B1C: LateIdLdVar var_EC DispID_15 0
  loc_AF4B23: PopAd
  loc_AF4B25: LitI4 1
  loc_AF4B2A: LitI4 1
  loc_AF4B2F: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_AF4B34: FStVarCopyObj var_110
  loc_AF4B37: FLdRfVar var_110
  loc_AF4B3A: FLdRfVar var_EC
  loc_AF4B3D: CStrVarTmp
  loc_AF4B3E: CVarStr var_100
  loc_AF4B41: ImpAdCallI2 Format$(, )
  loc_AF4B46: FStStr var_154
  loc_AF4B49: LitVarStr var_130, vbNullString
  loc_AF4B4E: FStVarCopyObj var_140
  loc_AF4B51: FLdRfVar var_140
  loc_AF4B54: LitStr " AND FechMoba >= "
  loc_AF4B57: FLdZeroAd var_154
  loc_AF4B5A: FStStrNoPop var_F0
  loc_AF4B5D: ConcatStr
  loc_AF4B5E: CVarStr var_120
  loc_AF4B61: FLdRfVar var_D4
  loc_AF4B64: CStrVarTmp
  loc_AF4B65: FStStrNoPop var_D8
  loc_AF4B68: LitStr vbNullString
  loc_AF4B6B: NeStr
  loc_AF4B6D: CVarBoolI2 var_C0
  loc_AF4B71: FLdRfVar var_150
  loc_AF4B74: ImpAdCallFPR4  = IIf(, , )
  loc_AF4B79: FLdRfVar var_150
  loc_AF4B7C: CStrVarTmp
  loc_AF4B7D: FStStr var_8C
  loc_AF4B80: FFreeStr var_D8 = "": var_F0 = ""
  loc_AF4B89: FFreeAd var_C4 = ""
  loc_AF4B90: FFreeVar var_D4 = "": var_EC = "": var_100 = "": var_110 = "": var_C0 = "": var_120 = "": var_140 = ""
  loc_AF4BA3: FLdPr Me
  loc_AF4BA6: VCallAd Control_ID_mskHasta
  loc_AF4BA9: FStAdFunc var_C4
  loc_AF4BAC: FLdPr var_C4
  loc_AF4BAF: LateIdLdVar var_D4 DispID_22 0
  loc_AF4BB6: PopAd
  loc_AF4BB8: FLdPr Me
  loc_AF4BBB: VCallAd Control_ID_mskHasta
  loc_AF4BBE: FStAdFunc var_DC
  loc_AF4BC1: FLdPr var_DC
  loc_AF4BC4: LateIdLdVar var_EC DispID_15 0
  loc_AF4BCB: PopAd
  loc_AF4BCD: LitI4 1
  loc_AF4BD2: LitI4 1
  loc_AF4BD7: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_AF4BDC: FStVarCopyObj var_110
  loc_AF4BDF: FLdRfVar var_110
  loc_AF4BE2: FLdRfVar var_EC
  loc_AF4BE5: CStrVarTmp
  loc_AF4BE6: CVarStr var_100
  loc_AF4BE9: ImpAdCallI2 Format$(, )
  loc_AF4BEE: FStStr var_154
  loc_AF4BF1: LitVarStr var_130, vbNullString
  loc_AF4BF6: FStVarCopyObj var_140
  loc_AF4BF9: FLdRfVar var_140
  loc_AF4BFC: LitStr " AND FechMoba <= "
  loc_AF4BFF: FLdZeroAd var_154
  loc_AF4C02: FStStrNoPop var_F0
  loc_AF4C05: ConcatStr
  loc_AF4C06: CVarStr var_120
  loc_AF4C09: FLdRfVar var_D4
  loc_AF4C0C: CStrVarTmp
  loc_AF4C0D: FStStrNoPop var_D8
  loc_AF4C10: LitStr vbNullString
  loc_AF4C13: NeStr
  loc_AF4C15: CVarBoolI2 var_C0
  loc_AF4C19: FLdRfVar var_150
  loc_AF4C1C: ImpAdCallFPR4  = IIf(, , )
  loc_AF4C21: FLdRfVar var_150
  loc_AF4C24: CStrVarTmp
  loc_AF4C25: FStStr var_90
  loc_AF4C28: FFreeStr var_D8 = "": var_F0 = ""
  loc_AF4C31: FFreeAd var_C4 = ""
  loc_AF4C38: FFreeVar var_D4 = "": var_EC = "": var_100 = "": var_110 = "": var_C0 = "": var_120 = "": var_140 = ""
  loc_AF4C4B: FLdRfVar var_9E
  loc_AF4C4E: FLdPr Me
  loc_AF4C51: VCallAd Control_ID_cboCodiTimb
  loc_AF4C54: FStAdFunc var_C4
  loc_AF4C57: FLdPr var_C4
  loc_AF4C5A:  = Me.ListIndex
  loc_AF4C5F: FLdRfVar var_156
  loc_AF4C62: FLdPr Me
  loc_AF4C65: VCallAd Control_ID_cboCodiTimb
  loc_AF4C68: FStAdFunc var_DC
  loc_AF4C6B: FLdPr var_DC
  loc_AF4C6E:  = Me.ListIndex
  loc_AF4C73: FLdRfVar var_160
  loc_AF4C76: FLdI2 var_156
  loc_AF4C79: FLdPr Me
  loc_AF4C7C: VCallAd Control_ID_cboCodiTimb
  loc_AF4C7F: FStAdFunc var_15C
  loc_AF4C82: FLdPr var_15C
  loc_AF4C85:  = Me.ItemData
  loc_AF4C8A: LitVarStr var_C0, vbNullString
  loc_AF4C8F: FStVarCopyObj var_EC
  loc_AF4C92: FLdRfVar var_EC
  loc_AF4C95: LitStr " AND mb.CodiTimb = "
  loc_AF4C98: ILdRf var_160
  loc_AF4C9B: CStrI4
  loc_AF4C9D: FStStrNoPop var_D8
  loc_AF4CA0: ConcatStr
  loc_AF4CA1: CVarStr var_D4
  loc_AF4CA4: FLdI2 var_9E
  loc_AF4CA7: LitI2_Byte 0
  loc_AF4CA9: NeI2
  loc_AF4CAA: CVarBoolI2 var_B0
  loc_AF4CAE: FLdRfVar var_100
  loc_AF4CB1: ImpAdCallFPR4  = IIf(, , )
  loc_AF4CB6: FLdRfVar var_100
  loc_AF4CB9: CStrVarTmp
  loc_AF4CBA: FStStr var_94
  loc_AF4CBD: FFree1Str var_D8
  loc_AF4CC0: FFreeAd var_C4 = "": var_DC = ""
  loc_AF4CC9: FFreeVar var_B0 = "": var_D4 = "": var_EC = ""
  loc_AF4CD4: FLdPr Me
  loc_AF4CD7: VCallAd Control_ID_mskNumeMoba
  loc_AF4CDA: FStAdFunc var_C4
  loc_AF4CDD: FLdPr var_C4
  loc_AF4CE0: LateIdLdVar var_D4 DispID_22 0
  loc_AF4CE7: PopAd
  loc_AF4CE9: FLdPr Me
  loc_AF4CEC: VCallAd Control_ID_mskNumeMoba
  loc_AF4CEF: FStAdFunc var_DC
  loc_AF4CF2: FLdPr var_DC
  loc_AF4CF5: LateIdLdVar var_EC DispID_0 0
  loc_AF4CFC: PopAd
  loc_AF4CFE: LitVarStr var_C0, vbNullString
  loc_AF4D03: FStVarCopyObj var_110
  loc_AF4D06: FLdRfVar var_110
  loc_AF4D09: LitStr " AND mb.NumeMoba like '" & Chr(37)
  loc_AF4D0C: FLdRfVar var_EC
  loc_AF4D0F: CStrVarTmp
  loc_AF4D10: FStStrNoPop var_F0
  loc_AF4D13: ConcatStr
  loc_AF4D14: FStStrNoPop var_154
  loc_AF4D17: LitStr "'"
  loc_AF4D1A: ConcatStr
  loc_AF4D1B: CVarStr var_100
  loc_AF4D1E: FLdRfVar var_D4
  loc_AF4D21: CStrVarTmp
  loc_AF4D22: FStStrNoPop var_D8
  loc_AF4D25: LitStr vbNullString
  loc_AF4D28: NeStr
  loc_AF4D2A: CVarBoolI2 var_B0
  loc_AF4D2E: FLdRfVar var_120
  loc_AF4D31: ImpAdCallFPR4  = IIf(, , )
  loc_AF4D36: FLdRfVar var_120
  loc_AF4D39: CStrVarTmp
  loc_AF4D3A: FStStr var_98
  loc_AF4D3D: FFreeStr var_D8 = "": var_F0 = ""
  loc_AF4D46: FFreeAd var_C4 = ""
  loc_AF4D4D: FFreeVar var_D4 = "": var_EC = "": var_B0 = "": var_100 = "": var_110 = ""
  loc_AF4D5C: FLdRfVar var_9E
  loc_AF4D5F: FLdPr Me
  loc_AF4D62: VCallAd Control_ID_cboConciliados
  loc_AF4D65: FStAdFunc var_C4
  loc_AF4D68: FLdPr var_C4
  loc_AF4D6B:  = Me.ListIndex
  loc_AF4D70: FLdI2 var_9E
  loc_AF4D73: FStI2 var_162
  loc_AF4D76: FFree1Ad var_C4
  loc_AF4D79: FLdI2 var_162
  loc_AF4D7C: LitI2_Byte 0
  loc_AF4D7E: EqI2
  loc_AF4D7F: BranchF loc_AF4D8B
  loc_AF4D82: LitStr vbNullString
  loc_AF4D85: FStStrCopy var_9C
  loc_AF4D88: Branch loc_AF4DAC
  loc_AF4D8B: FLdI2 var_162
  loc_AF4D8E: LitI2_Byte 1
  loc_AF4D90: EqI2
  loc_AF4D91: BranchF loc_AF4D9D
  loc_AF4D94: LitStr " AND FecoMoba IS NOT NULL"
  loc_AF4D97: FStStrCopy var_9C
  loc_AF4D9A: Branch loc_AF4DAC
  loc_AF4D9D: FLdI2 var_162
  loc_AF4DA0: LitI2_Byte 2
  loc_AF4DA2: EqI2
  loc_AF4DA3: BranchF loc_AF4DAC
  loc_AF4DA6: LitStr " AND FecoMoba IS NULL"
  loc_AF4DA9: FStStrCopy var_9C
  loc_AF4DAC: FLdPr Me
  loc_AF4DAF: MemLdRfVar from_stack_1.global_76
  loc_AF4DB2: NewIfNullAd
  loc_AF4DB5: FStAd var_168 
  loc_AF4DB9: FLdPr Me
  loc_AF4DBC: VCallAd Control_ID_chkMostrarTransferencias
  loc_AF4DBF: CVarAd
  loc_AF4DC3: CBoolVarNull
  loc_AF4DC5: FFree1Var var_D4 = ""
  loc_AF4DC8: BranchF loc_AF4E36
  loc_AF4DCB: LitStr "SELECT mb.PeriInfo, mb.CodiBanc, mb.CodiTimb, mb.NumeMoba, mb.InteMoba, mb.FechMoba, mb.FecoMoba, mb.DebeMoba, mb.HabeMoba, mb.ComiMoba, mb.IvaMoba, mb.CodiEnre, mb.DetaMoba, mb.NumeOrpa, DetaBanc, NumeBanc, Concat(IF(DeCreTimb=0,'Debito','Credito'),' - ',tmb.DetaTimb) DetaTimb, mb.CodiCuco, IFNULL(mb.DetaCuco,'NO EXISTE la cuenta contable') DetaCuco"
  loc_AF4DCE: LitStr " FROM v_movibanco mb"
  loc_AF4DD1: ConcatStr
  loc_AF4DD2: FStStrNoPop var_D8
  loc_AF4DD5: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_AF4DD8: ConcatStr
  loc_AF4DD9: FStStrNoPop var_F0
  loc_AF4DDC: LitStr " WHERE TRUE "
  loc_AF4DDF: ConcatStr
  loc_AF4DE0: FStStrNoPop var_154
  loc_AF4DE3: ILdRf var_88
  loc_AF4DE6: ConcatStr
  loc_AF4DE7: FStStrNoPop var_16C
  loc_AF4DEA: ILdRf var_8C
  loc_AF4DED: ConcatStr
  loc_AF4DEE: FStStrNoPop var_170
  loc_AF4DF1: ILdRf var_90
  loc_AF4DF4: ConcatStr
  loc_AF4DF5: FStStrNoPop var_174
  loc_AF4DF8: ILdRf var_94
  loc_AF4DFB: ConcatStr
  loc_AF4DFC: FStStrNoPop var_178
  loc_AF4DFF: ILdRf var_98
  loc_AF4E02: ConcatStr
  loc_AF4E03: FStStrNoPop var_17C
  loc_AF4E06: ILdRf var_9C
  loc_AF4E09: ConcatStr
  loc_AF4E0A: FStStrNoPop var_180
  loc_AF4E0D: LitStr " ORDER BY PeriInfo, CodiBanc, FechMoba, CodiTimb, NumeMoba;"
  loc_AF4E10: ConcatStr
  loc_AF4E11: FStStrNoPop var_184
  loc_AF4E14: FLdPr var_168
  loc_AF4E17: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF4E1C: FFreeStr var_D8 = "": var_F0 = "": var_154 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_AF4E33: Branch loc_AF4EE2
  loc_AF4E36: LitStr "SELECT mb.PeriInfo, mb.CodiBanc, mb.CodiTimb, mb.NumeMoba, mb.InteMoba, mb.FechMoba, mb.FecoMoba, mb.DebeMoba, mb.HabeMoba, mb.ComiMoba, mb.IvaMoba, mb.CodiEnre, mb.DetaMoba, mb.NumeOrpa, DetaBanc, NumeBanc, Concat(IF(DeCreTimb=0,'Debito','Credito'),' - ',DetaTimb) DetaTimb, b.CodiCuco, IFNULL(DetaCuco,'NO EXISTE la cuenta contable') DetaCuco"
  loc_AF4E39: LitStr " FROM movibanco mb"
  loc_AF4E3C: ConcatStr
  loc_AF4E3D: FStStrNoPop var_D8
  loc_AF4E40: LitStr " INNER JOIN banco b ON b.PeriInfo = "
  loc_AF4E43: ConcatStr
  loc_AF4E44: FStStrNoPop var_F0
  loc_AF4E47: ImpAdLdI2 MemVar_C3D064
  loc_AF4E4A: CStrUI1
  loc_AF4E4C: FStStrNoPop var_154
  loc_AF4E4F: ConcatStr
  loc_AF4E50: FStStrNoPop var_16C
  loc_AF4E53: LitStr " AND b.CodiBanc = mb.CodiBanc"
  loc_AF4E56: ConcatStr
  loc_AF4E57: FStStrNoPop var_170
  loc_AF4E5A: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_AF4E5D: ConcatStr
  loc_AF4E5E: FStStrNoPop var_174
  loc_AF4E61: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = "
  loc_AF4E64: ConcatStr
  loc_AF4E65: FStStrNoPop var_178
  loc_AF4E68: ImpAdLdI2 MemVar_C3D064
  loc_AF4E6B: CStrUI1
  loc_AF4E6D: FStStrNoPop var_17C
  loc_AF4E70: ConcatStr
  loc_AF4E71: FStStrNoPop var_180
  loc_AF4E74: LitStr " AND cc.CodiCuco = b.CodiCuco"
  loc_AF4E77: ConcatStr
  loc_AF4E78: FStStrNoPop var_184
  loc_AF4E7B: LitStr " WHERE TRUE "
  loc_AF4E7E: ConcatStr
  loc_AF4E7F: FStStrNoPop var_188
  loc_AF4E82: ILdRf var_88
  loc_AF4E85: ConcatStr
  loc_AF4E86: FStStrNoPop var_18C
  loc_AF4E89: ILdRf var_8C
  loc_AF4E8C: ConcatStr
  loc_AF4E8D: FStStrNoPop var_190
  loc_AF4E90: ILdRf var_90
  loc_AF4E93: ConcatStr
  loc_AF4E94: FStStrNoPop var_194
  loc_AF4E97: ILdRf var_94
  loc_AF4E9A: ConcatStr
  loc_AF4E9B: FStStrNoPop var_198
  loc_AF4E9E: ILdRf var_98
  loc_AF4EA1: ConcatStr
  loc_AF4EA2: FStStrNoPop var_19C
  loc_AF4EA5: ILdRf var_9C
  loc_AF4EA8: ConcatStr
  loc_AF4EA9: FStStrNoPop var_1A0
  loc_AF4EAC: LitStr " ORDER BY PeriInfo, CodiBanc, FechMoba, CodiTimb, NumeMoba;"
  loc_AF4EAF: ConcatStr
  loc_AF4EB0: FStStrNoPop var_1A4
  loc_AF4EB3: FLdPr var_168
  loc_AF4EB6: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF4EBB: FFreeStr var_D8 = "": var_F0 = "": var_154 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = ""
  loc_AF4EE2: FLdRfVar var_160
  loc_AF4EE5: FLdPr var_168
  loc_AF4EE8: from_stack_1 = clsbase.RecordCount
  loc_AF4EED: ILdRf var_160
  loc_AF4EF0: LitI4 0
  loc_AF4EF5: EqI4
  loc_AF4EF6: BranchF loc_AF4F09
  loc_AF4EF9: LitI4 0
  loc_AF4EFE: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AF4F01: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF4F06: Branch loc_AF5054
  loc_AF4F09: LitI2_Byte 0
  loc_AF4F0B: FLdPr Me
  loc_AF4F0E: MemStI2 global_104
  loc_AF4F11: LitStr vbNullString
  loc_AF4F14: FLdPr Me
  loc_AF4F17: MemStStrCopy
  loc_AF4F1B: LitStr vbNullString
  loc_AF4F1E: FLdPr Me
  loc_AF4F21: MemStStrCopy
  loc_AF4F25: LitI4 0
  loc_AF4F2A: LitI4 0
  loc_AF4F2F: FLdPr Me
  loc_AF4F32: MemLdRfVar from_stack_1.global_84
  loc_AF4F35: Redim
  loc_AF4F3F: FLdPr var_168
  loc_AF4F42: Call clsbase.MoveFirst()
  loc_AF4F47: FLdRfVar var_160
  loc_AF4F4A: FLdPr var_168
  loc_AF4F4D: from_stack_1 = clsbase.RecordCount
  loc_AF4F52: ILdRf var_160
  loc_AF4F55: CR8I4
  loc_AF4F56: CVarR4
  loc_AF4F5A: PopAdLdVar
  loc_AF4F5B: FLdPrThis
  loc_AF4F5C: VCallAd Control_ID_Pbar
  loc_AF4F5F: FStAdFunc var_C4
  loc_AF4F62: FLdPr var_C4
  loc_AF4F65: LateIdSt
  loc_AF4F6A: FFree1Ad var_C4
  loc_AF4F6D: LitVar_TRUE var_B0
  loc_AF4F70: PopAdLdVar
  loc_AF4F71: FLdPrThis
  loc_AF4F72: VCallAd Control_ID_Pbar
  loc_AF4F75: FStAdFunc var_C4
  loc_AF4F78: FLdPr var_C4
  loc_AF4F7B: LateIdSt
  loc_AF4F80: FFree1Ad var_C4
  loc_AF4F83: Call Proc_183_30_AB52A8()
  loc_AF4F88: FLdRfVar var_9E
  loc_AF4F8B: FLdPr var_168
  loc_AF4F8E: from_stack_1 = clsbase.EOF
  loc_AF4F93: FLdI2 var_9E
  loc_AF4F96: NotI4
  loc_AF4F97: BranchF loc_AF502F
  loc_AF4F9A: FLdRfVar var_160
  loc_AF4F9D: FLdPr var_168
  loc_AF4FA0: from_stack_1 = clsbase.AbsolutePosition
  loc_AF4FA5: ILdRf var_160
  loc_AF4FA8: CR8I4
  loc_AF4FA9: CVarR4
  loc_AF4FAD: PopAdLdVar
  loc_AF4FAE: FLdPrThis
  loc_AF4FAF: VCallAd Control_ID_Pbar
  loc_AF4FB2: FStAdFunc var_C4
  loc_AF4FB5: FLdPr var_C4
  loc_AF4FB8: LateIdSt
  loc_AF4FBD: FFree1Ad var_C4
  loc_AF4FC0: FLdRfVar var_D4
  loc_AF4FC3: FLdRfVar var_15C
  loc_AF4FC6: LitVarStr var_B0, "CodiBanc"
  loc_AF4FCB: PopAdLdVar
  loc_AF4FCC: FLdRfVar var_DC
  loc_AF4FCF: FLdRfVar var_C4
  loc_AF4FD2: FLdPr var_168
  loc_AF4FD5: from_stack_1v = clsbase.RsFrmGet()
  loc_AF4FDA: FLdPr var_C4
  loc_AF4FDD:  = Me.Fields
  loc_AF4FE2: FLdPr var_DC
  loc_AF4FE5: from_stack_2 = Me.Item(from_stack_1)
  loc_AF4FEA: FLdPr var_15C
  loc_AF4FED:  = Me.Value
  loc_AF4FF2: FLdRfVar var_D4
  loc_AF4FF5: FnCStrVar
  loc_AF4FF7: FStStrNoPop var_D8
  loc_AF4FFA: FLdPr Me
  loc_AF4FFD: MemLdI2 global_104
  loc_AF5000: CI4UI1
  loc_AF5001: FLdPr Me
  loc_AF5004: MemLdStr global_84
  loc_AF5007: Ary1LdPr
  loc_AF5008: MemLdStr global_0
  loc_AF500B: NeStr
  loc_AF500D: FFree1Str var_D8
  loc_AF5010: FFreeAd var_C4 = "": var_DC = ""
  loc_AF5019: FFree1Var var_D4 = ""
  loc_AF501C: BranchF loc_AF5027
  loc_AF501F: Call Proc_183_30_AB52A8()
  loc_AF5024: Branch loc_AF502C
  loc_AF5027: Call Proc_183_31_A63728()
  loc_AF502C: Branch loc_AF4F88
  loc_AF502F: LitNothing
  loc_AF5031: FStAd var_168 
  loc_AF5035: LitVar_FALSE
  loc_AF5039: PopAdLdVar
  loc_AF503A: FLdPrThis
  loc_AF503B: VCallAd Control_ID_Pbar
  loc_AF503E: FStAdFunc var_C4
  loc_AF5041: FLdPr var_C4
  loc_AF5044: LateIdSt
  loc_AF5049: FFree1Ad var_C4
  loc_AF504C: LitI2_Byte &HFF
  loc_AF504E: FLdPr Me
  loc_AF5051: MemStI2 bGenerado
  loc_AF5054: LitI4 0
  loc_AF5059: CI2I4
  loc_AF505A: FLdPr Me
  loc_AF505D: Me.MousePointer = from_stack_1
  loc_AF5062: LitVarStr var_B0, vbNullString
  loc_AF5067: PopAdLdVar
  loc_AF5068: FLdPr Me
  loc_AF506B: VCallAd Control_ID_statusBar
  loc_AF506E: FStAdFunc var_C4
  loc_AF5071: FLdPr var_C4
  loc_AF5074: LateIdSt
  loc_AF5079: FFree1Ad var_C4
  loc_AF507C: ExitProcHresult
  loc_AF507D: LitI4 0
  loc_AF5082: LitStr "Error "
  loc_AF5085: FLdRfVar var_160
  loc_AF5088: ImpAdCallI2 Err 'rtcErrObj
  loc_AF508D: FStAdFunc var_C4
  loc_AF5090: FLdPr var_C4
  loc_AF5093:  = Err.Number
  loc_AF5098: ILdRf var_160
  loc_AF509B: CStrI4
  loc_AF509D: FStStrNoPop var_D8
  loc_AF50A0: ConcatStr
  loc_AF50A1: FStStrNoPop var_F0
  loc_AF50A4: LitStr ": "
  loc_AF50A7: ConcatStr
  loc_AF50A8: FStStrNoPop var_16C
  loc_AF50AB: FLdRfVar var_154
  loc_AF50AE: ImpAdCallI2 Err 'rtcErrObj
  loc_AF50B3: FStAdFunc var_DC
  loc_AF50B6: FLdPr var_DC
  loc_AF50B9:  = Err.Description
  loc_AF50BE: ILdRf var_154
  loc_AF50C1: ConcatStr
  loc_AF50C2: FStStrNoPop var_170
  loc_AF50C5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF50CA: FFreeStr var_D8 = "": var_F0 = "": var_16C = "": var_154 = ""
  loc_AF50D7: FFreeAd var_C4 = ""
  loc_AF50DE: ExitProcHresult
  loc_AF50DF: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94EFDC
  'Data Table: 4B9CB8
  loc_94EFC4: LitI2_Byte 0
  loc_94EFC6: FLdPr Me
  loc_94EFC9: MemStI2 bLogos
  loc_94EFCC: Call GeneraHTML()
  loc_94EFD1: LitI2_Byte &HFF
  loc_94EFD3: FLdPr Me
  loc_94EFD6: MemStI2 bLogos
  loc_94EFD9: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B2F0EC
  'Data Table: 4B9CB8
  loc_B2E798: LitI2_Byte 8
  loc_B2E79A: CUI1I2
  loc_B2E79C: FStUI1 var_86
  loc_B2E7A0: FLdRfVar var_8E
  loc_B2E7A3: FLdPr Me
  loc_B2E7A6: VCallAd Control_ID_chkMostrarInterbanking
  loc_B2E7A9: FStAdFunc var_8C
  loc_B2E7AC: FLdPr var_8C
  loc_B2E7AF:  = Me.Value
  loc_B2E7B4: FLdI2 var_8E
  loc_B2E7B7: CI4UI1
  loc_B2E7B8: LitI4 1
  loc_B2E7BD: EqI4
  loc_B2E7BE: FFree1Ad var_8C
  loc_B2E7C1: BranchF loc_B2E7D3
  loc_B2E7C4: FLdUI1
  loc_B2E7C8: CI2UI1
  loc_B2E7CA: LitI2_Byte 1
  loc_B2E7CC: AddI2
  loc_B2E7CD: CUI1I2
  loc_B2E7CF: FStUI1 var_86
  loc_B2E7D3: FLdRfVar var_8C
  loc_B2E7D6: LitI2_Byte 0
  loc_B2E7D8: LitI2_Byte &HFF
  loc_B2E7DA: ImpAdLdI4 MemVar_C3D83C
  loc_B2E7DD: FLdPr Me
  loc_B2E7E0: MemLdRfVar from_stack_1.global_80
  loc_B2E7E3: NewIfNullPr IFileSystem3
  loc_B2E7E6: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B2E7EB: ILdRf var_8C
  loc_B2E7EE: FLdPr Me
  loc_B2E7F1: MemStVarAd
  loc_B2E7F5: FFree1Ad var_8C
  loc_B2E7F8: Call Proc_183_33_AA88E0()
  loc_B2E7FD: LitI2_Byte 1
  loc_B2E7FF: FLdPr Me
  loc_B2E802: MemLdRfVar from_stack_1.global_104
  loc_B2E805: FLdPr Me
  loc_B2E808: MemLdStr global_84
  loc_B2E80B: LitI2_Byte 1
  loc_B2E80D: FnUBound
  loc_B2E80F: CI2I4
  loc_B2E810: ForI2 var_92
  loc_B2E816: LitVarStr var_A4, "  <tr align=""left"" valign=""top"">"
  loc_B2E81B: PopAdLdVar
  loc_B2E81C: FLdPr Me
  loc_B2E81F: MemLdRfVar from_stack_1.htmFile
  loc_B2E822: LdPrVar
  loc_B2E824: LateMemCall
  loc_B2E82A: LitStr "    <td class=""Encabezado"" colspan="""
  loc_B2E82D: FLdUI1
  loc_B2E831: CStrI2
  loc_B2E833: FStStrNoPop var_B8
  loc_B2E836: ConcatStr
  loc_B2E837: FStStrNoPop var_BC
  loc_B2E83A: LitStr """>Banco: "
  loc_B2E83D: ConcatStr
  loc_B2E83E: FStStrNoPop var_C0
  loc_B2E841: FLdPr Me
  loc_B2E844: MemLdI2 global_104
  loc_B2E847: CI4UI1
  loc_B2E848: FLdPr Me
  loc_B2E84B: MemLdStr global_84
  loc_B2E84E: Ary1LdPr
  loc_B2E84F: MemLdStr global_0
  loc_B2E852: ConcatStr
  loc_B2E853: FStStrNoPop var_C4
  loc_B2E856: LitStr " - "
  loc_B2E859: ConcatStr
  loc_B2E85A: FStStrNoPop var_C8
  loc_B2E85D: FLdPr Me
  loc_B2E860: MemLdI2 global_104
  loc_B2E863: CI4UI1
  loc_B2E864: FLdPr Me
  loc_B2E867: MemLdStr global_84
  loc_B2E86A: Ary1LdPr
  loc_B2E86B: MemLdStr global_4
  loc_B2E86E: ConcatStr
  loc_B2E86F: FStStrNoPop var_CC
  loc_B2E872: LitStr " ("
  loc_B2E875: ConcatStr
  loc_B2E876: FStStrNoPop var_D0
  loc_B2E879: FLdPr Me
  loc_B2E87C: MemLdI2 global_104
  loc_B2E87F: CI4UI1
  loc_B2E880: FLdPr Me
  loc_B2E883: MemLdStr global_84
  loc_B2E886: Ary1LdPr
  loc_B2E887: MemLdStr global_8
  loc_B2E88A: ConcatStr
  loc_B2E88B: FStStrNoPop var_D4
  loc_B2E88E: LitStr ") - "
  loc_B2E891: ConcatStr
  loc_B2E892: FStStrNoPop var_D8
  loc_B2E895: FLdPr Me
  loc_B2E898: MemLdI2 global_104
  loc_B2E89B: CI4UI1
  loc_B2E89C: FLdPr Me
  loc_B2E89F: MemLdStr global_84
  loc_B2E8A2: Ary1LdPr
  loc_B2E8A3: MemLdStr global_12
  loc_B2E8A6: ConcatStr
  loc_B2E8A7: FStStrNoPop var_DC
  loc_B2E8AA: LitStr " "
  loc_B2E8AD: ConcatStr
  loc_B2E8AE: FStStrNoPop var_E0
  loc_B2E8B1: FLdPr Me
  loc_B2E8B4: MemLdI2 global_104
  loc_B2E8B7: CI4UI1
  loc_B2E8B8: FLdPr Me
  loc_B2E8BB: MemLdStr global_84
  loc_B2E8BE: Ary1LdPr
  loc_B2E8BF: MemLdStr global_16
  loc_B2E8C2: ConcatStr
  loc_B2E8C3: FStStrNoPop var_E4
  loc_B2E8C6: LitStr "</td>"
  loc_B2E8C9: ConcatStr
  loc_B2E8CA: CVarStr var_F4
  loc_B2E8CD: PopAdLdVar
  loc_B2E8CE: FLdPr Me
  loc_B2E8D1: MemLdRfVar from_stack_1.htmFile
  loc_B2E8D4: LdPrVar
  loc_B2E8D6: LateMemCall
  loc_B2E8DC: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_B2E8F7: FFree1Var var_F4 = ""
  loc_B2E8FA: LitVarStr var_A4, "    <td class=""Totales"" colspan=""2"" align=""right"">Saldo Inicial</td>"
  loc_B2E8FF: PopAdLdVar
  loc_B2E900: FLdPr Me
  loc_B2E903: MemLdRfVar from_stack_1.htmFile
  loc_B2E906: LdPrVar
  loc_B2E908: LateMemCall
  loc_B2E90E: LitStr "    <td class=""Totales"" align=""right"">"
  loc_B2E911: FLdPr Me
  loc_B2E914: MemLdI2 global_104
  loc_B2E917: CI4UI1
  loc_B2E918: FLdPr Me
  loc_B2E91B: MemLdStr global_84
  loc_B2E91E: Ary1LdPr
  loc_B2E91F: MemLdStr global_40
  loc_B2E922: ConcatStr
  loc_B2E923: FStStrNoPop var_B8
  loc_B2E926: LitStr "</td>"
  loc_B2E929: ConcatStr
  loc_B2E92A: CVarStr var_F4
  loc_B2E92D: PopAdLdVar
  loc_B2E92E: FLdPr Me
  loc_B2E931: MemLdRfVar from_stack_1.htmFile
  loc_B2E934: LdPrVar
  loc_B2E936: LateMemCall
  loc_B2E93C: FFree1Str var_B8
  loc_B2E93F: FFree1Var var_F4 = ""
  loc_B2E942: LitStr "    <td class=""Totales"" align=""right"">"
  loc_B2E945: FLdPr Me
  loc_B2E948: MemLdI2 global_104
  loc_B2E94B: CI4UI1
  loc_B2E94C: FLdPr Me
  loc_B2E94F: MemLdStr global_84
  loc_B2E952: Ary1LdPr
  loc_B2E953: MemLdStr global_44
  loc_B2E956: ConcatStr
  loc_B2E957: FStStrNoPop var_B8
  loc_B2E95A: LitStr "</td>"
  loc_B2E95D: ConcatStr
  loc_B2E95E: CVarStr var_F4
  loc_B2E961: PopAdLdVar
  loc_B2E962: FLdPr Me
  loc_B2E965: MemLdRfVar from_stack_1.htmFile
  loc_B2E968: LdPrVar
  loc_B2E96A: LateMemCall
  loc_B2E970: FFree1Str var_B8
  loc_B2E973: FFree1Var var_F4 = ""
  loc_B2E976: LitVarStr var_A4, "     </tr>"
  loc_B2E97B: PopAdLdVar
  loc_B2E97C: FLdPr Me
  loc_B2E97F: MemLdRfVar from_stack_1.htmFile
  loc_B2E982: LdPrVar
  loc_B2E984: LateMemCall
  loc_B2E98A: LitI2_Byte 1
  loc_B2E98C: FLdPr Me
  loc_B2E98F: MemLdRfVar from_stack_1.global_106
  loc_B2E992: FLdPr Me
  loc_B2E995: MemLdI2 global_104
  loc_B2E998: CI4UI1
  loc_B2E999: FLdPr Me
  loc_B2E99C: MemLdStr global_84
  loc_B2E99F: Ary1LdPr
  loc_B2E9A0: MemLdStr global_20
  loc_B2E9A3: LitI2_Byte 1
  loc_B2E9A5: FnUBound
  loc_B2E9A7: CI2I4
  loc_B2E9A8: ForI2 var_F8
  loc_B2E9AE: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2E9B3: PopAdLdVar
  loc_B2E9B4: FLdPr Me
  loc_B2E9B7: MemLdRfVar from_stack_1.htmFile
  loc_B2E9BA: LdPrVar
  loc_B2E9BC: LateMemCall
  loc_B2E9C2: LitI4 0
  loc_B2E9C7: LitI4 0
  loc_B2E9CC: LitI2_Byte 0
  loc_B2E9CE: LitStr "center"
  loc_B2E9D1: FLdPr Me
  loc_B2E9D4: MemLdI2 global_106
  loc_B2E9D7: CI4UI1
  loc_B2E9D8: FLdPr Me
  loc_B2E9DB: MemLdI2 global_104
  loc_B2E9DE: CI4UI1
  loc_B2E9DF: FLdPr Me
  loc_B2E9E2: MemLdStr global_84
  loc_B2E9E5: Ary1LdPr
  loc_B2E9E6: MemLdStr global_20
  loc_B2E9E9: Ary1LdPr
  loc_B2E9EA: MemLdStr global_0
  loc_B2E9ED: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2E9F2: CVarStr var_F4
  loc_B2E9F5: PopAdLdVar
  loc_B2E9F6: FLdPr Me
  loc_B2E9F9: MemLdRfVar from_stack_1.htmFile
  loc_B2E9FC: LdPrVar
  loc_B2E9FE: LateMemCall
  loc_B2EA04: FFree1Var var_F4 = ""
  loc_B2EA07: LitI4 0
  loc_B2EA0C: LitI4 0
  loc_B2EA11: LitI2_Byte 0
  loc_B2EA13: LitStr "center"
  loc_B2EA16: FLdPr Me
  loc_B2EA19: MemLdI2 global_106
  loc_B2EA1C: CI4UI1
  loc_B2EA1D: FLdPr Me
  loc_B2EA20: MemLdI2 global_104
  loc_B2EA23: CI4UI1
  loc_B2EA24: FLdPr Me
  loc_B2EA27: MemLdStr global_84
  loc_B2EA2A: Ary1LdPr
  loc_B2EA2B: MemLdStr global_20
  loc_B2EA2E: Ary1LdPr
  loc_B2EA2F: MemLdStr global_4
  loc_B2EA32: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2EA37: CVarStr var_F4
  loc_B2EA3A: PopAdLdVar
  loc_B2EA3B: FLdPr Me
  loc_B2EA3E: MemLdRfVar from_stack_1.htmFile
  loc_B2EA41: LdPrVar
  loc_B2EA43: LateMemCall
  loc_B2EA49: FFree1Var var_F4 = ""
  loc_B2EA4C: LitI4 0
  loc_B2EA51: LitI4 0
  loc_B2EA56: LitI2_Byte 0
  loc_B2EA58: LitStr "left"
  loc_B2EA5B: FLdPr Me
  loc_B2EA5E: MemLdI2 global_106
  loc_B2EA61: CI4UI1
  loc_B2EA62: FLdPr Me
  loc_B2EA65: MemLdI2 global_104
  loc_B2EA68: CI4UI1
  loc_B2EA69: FLdPr Me
  loc_B2EA6C: MemLdStr global_84
  loc_B2EA6F: Ary1LdPr
  loc_B2EA70: MemLdStr global_20
  loc_B2EA73: Ary1LdPr
  loc_B2EA74: MemLdStr global_8
  loc_B2EA77: LitStr " "
  loc_B2EA7A: ConcatStr
  loc_B2EA7B: FStStrNoPop var_B8
  loc_B2EA7E: FLdPr Me
  loc_B2EA81: MemLdI2 global_106
  loc_B2EA84: CI4UI1
  loc_B2EA85: FLdPr Me
  loc_B2EA88: MemLdI2 global_104
  loc_B2EA8B: CI4UI1
  loc_B2EA8C: FLdPr Me
  loc_B2EA8F: MemLdStr global_84
  loc_B2EA92: Ary1LdPr
  loc_B2EA93: MemLdStr global_20
  loc_B2EA96: Ary1LdPr
  loc_B2EA97: MemLdStr global_12
  loc_B2EA9A: ConcatStr
  loc_B2EA9B: FStStrNoPop var_BC
  loc_B2EA9E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2EAA3: CVarStr var_F4
  loc_B2EAA6: PopAdLdVar
  loc_B2EAA7: FLdPr Me
  loc_B2EAAA: MemLdRfVar from_stack_1.htmFile
  loc_B2EAAD: LdPrVar
  loc_B2EAAF: LateMemCall
  loc_B2EAB5: FFreeStr var_B8 = ""
  loc_B2EABC: FFree1Var var_F4 = ""
  loc_B2EABF: FLdPr Me
  loc_B2EAC2: MemLdI2 global_106
  loc_B2EAC5: CI4UI1
  loc_B2EAC6: FLdPr Me
  loc_B2EAC9: MemLdI2 global_104
  loc_B2EACC: CI4UI1
  loc_B2EACD: FLdPr Me
  loc_B2EAD0: MemLdStr global_84
  loc_B2EAD3: Ary1LdPr
  loc_B2EAD4: MemLdStr global_20
  loc_B2EAD7: Ary1LdPr
  loc_B2EAD8: MemLdStr global_16
  loc_B2EADB: LitStr "0"
  loc_B2EADE: EqStr
  loc_B2EAE0: BranchF loc_B2EAFA
  loc_B2EAE3: LitVarStr var_A4, "       <td align=""right"" bgcolor=""#FFFF00"">&nbsp;</td>"
  loc_B2EAE8: PopAdLdVar
  loc_B2EAE9: FLdPr Me
  loc_B2EAEC: MemLdRfVar from_stack_1.htmFile
  loc_B2EAEF: LdPrVar
  loc_B2EAF1: LateMemCall
  loc_B2EAF7: Branch loc_B2EB3F
  loc_B2EAFA: LitI4 0
  loc_B2EAFF: LitI4 0
  loc_B2EB04: LitI2_Byte 0
  loc_B2EB06: LitStr "right"
  loc_B2EB09: FLdPr Me
  loc_B2EB0C: MemLdI2 global_106
  loc_B2EB0F: CI4UI1
  loc_B2EB10: FLdPr Me
  loc_B2EB13: MemLdI2 global_104
  loc_B2EB16: CI4UI1
  loc_B2EB17: FLdPr Me
  loc_B2EB1A: MemLdStr global_84
  loc_B2EB1D: Ary1LdPr
  loc_B2EB1E: MemLdStr global_20
  loc_B2EB21: Ary1LdPr
  loc_B2EB22: MemLdStr global_16
  loc_B2EB25: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2EB2A: CVarStr var_F4
  loc_B2EB2D: PopAdLdVar
  loc_B2EB2E: FLdPr Me
  loc_B2EB31: MemLdRfVar from_stack_1.htmFile
  loc_B2EB34: LdPrVar
  loc_B2EB36: LateMemCall
  loc_B2EB3C: FFree1Var var_F4 = ""
  loc_B2EB3F: FLdRfVar var_8E
  loc_B2EB42: FLdPr Me
  loc_B2EB45: VCallAd Control_ID_chkMostrarInterbanking
  loc_B2EB48: FStAdFunc var_8C
  loc_B2EB4B: FLdPr var_8C
  loc_B2EB4E:  = Me.Value
  loc_B2EB53: FLdI2 var_8E
  loc_B2EB56: CI4UI1
  loc_B2EB57: LitI4 1
  loc_B2EB5C: EqI4
  loc_B2EB5D: FFree1Ad var_8C
  loc_B2EB60: BranchF loc_B2EBA8
  loc_B2EB63: LitI4 0
  loc_B2EB68: LitI4 0
  loc_B2EB6D: LitI2_Byte 0
  loc_B2EB6F: LitStr "right"
  loc_B2EB72: FLdPr Me
  loc_B2EB75: MemLdI2 global_106
  loc_B2EB78: CI4UI1
  loc_B2EB79: FLdPr Me
  loc_B2EB7C: MemLdI2 global_104
  loc_B2EB7F: CI4UI1
  loc_B2EB80: FLdPr Me
  loc_B2EB83: MemLdStr global_84
  loc_B2EB86: Ary1LdPr
  loc_B2EB87: MemLdStr global_20
  loc_B2EB8A: Ary1LdPr
  loc_B2EB8B: MemLdStr global_20
  loc_B2EB8E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2EB93: CVarStr var_F4
  loc_B2EB96: PopAdLdVar
  loc_B2EB97: FLdPr Me
  loc_B2EB9A: MemLdRfVar from_stack_1.htmFile
  loc_B2EB9D: LdPrVar
  loc_B2EB9F: LateMemCall
  loc_B2EBA5: FFree1Var var_F4 = ""
  loc_B2EBA8: LitI4 0
  loc_B2EBAD: LitI4 0
  loc_B2EBB2: LitI2_Byte 0
  loc_B2EBB4: LitStr "right"
  loc_B2EBB7: FLdPr Me
  loc_B2EBBA: MemLdI2 global_106
  loc_B2EBBD: CI4UI1
  loc_B2EBBE: FLdPr Me
  loc_B2EBC1: MemLdI2 global_104
  loc_B2EBC4: CI4UI1
  loc_B2EBC5: FLdPr Me
  loc_B2EBC8: MemLdStr global_84
  loc_B2EBCB: Ary1LdPr
  loc_B2EBCC: MemLdStr global_20
  loc_B2EBCF: Ary1LdPr
  loc_B2EBD0: MemLdStr global_24
  loc_B2EBD3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2EBD8: CVarStr var_F4
  loc_B2EBDB: PopAdLdVar
  loc_B2EBDC: FLdPr Me
  loc_B2EBDF: MemLdRfVar from_stack_1.htmFile
  loc_B2EBE2: LdPrVar
  loc_B2EBE4: LateMemCall
  loc_B2EBEA: FFree1Var var_F4 = ""
  loc_B2EBED: LitI4 0
  loc_B2EBF2: LitI4 0
  loc_B2EBF7: LitI2_Byte 0
  loc_B2EBF9: LitStr "left"
  loc_B2EBFC: LitStr "&nbsp;"
  loc_B2EBFF: FLdPr Me
  loc_B2EC02: MemLdI2 global_106
  loc_B2EC05: CI4UI1
  loc_B2EC06: FLdPr Me
  loc_B2EC09: MemLdI2 global_104
  loc_B2EC0C: CI4UI1
  loc_B2EC0D: FLdPr Me
  loc_B2EC10: MemLdStr global_84
  loc_B2EC13: Ary1LdPr
  loc_B2EC14: MemLdStr global_20
  loc_B2EC17: Ary1LdPr
  loc_B2EC18: MemLdStr global_32
  loc_B2EC1B: ConcatStr
  loc_B2EC1C: FStStrNoPop var_B8
  loc_B2EC1F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2EC24: CVarStr var_F4
  loc_B2EC27: PopAdLdVar
  loc_B2EC28: FLdPr Me
  loc_B2EC2B: MemLdRfVar from_stack_1.htmFile
  loc_B2EC2E: LdPrVar
  loc_B2EC30: LateMemCall
  loc_B2EC36: FFree1Str var_B8
  loc_B2EC39: FFree1Var var_F4 = ""
  loc_B2EC3C: LitI4 0
  loc_B2EC41: LitI4 0
  loc_B2EC46: LitI2_Byte 0
  loc_B2EC48: LitStr "right"
  loc_B2EC4B: FLdPr Me
  loc_B2EC4E: MemLdI2 global_106
  loc_B2EC51: CI4UI1
  loc_B2EC52: FLdPr Me
  loc_B2EC55: MemLdI2 global_104
  loc_B2EC58: CI4UI1
  loc_B2EC59: FLdPr Me
  loc_B2EC5C: MemLdStr global_84
  loc_B2EC5F: Ary1LdPr
  loc_B2EC60: MemLdStr global_20
  loc_B2EC63: Ary1LdPr
  loc_B2EC64: MemLdStr global_36
  loc_B2EC67: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2EC6C: CVarStr var_F4
  loc_B2EC6F: PopAdLdVar
  loc_B2EC70: FLdPr Me
  loc_B2EC73: MemLdRfVar from_stack_1.htmFile
  loc_B2EC76: LdPrVar
  loc_B2EC78: LateMemCall
  loc_B2EC7E: FFree1Var var_F4 = ""
  loc_B2EC81: LitI4 0
  loc_B2EC86: LitI4 0
  loc_B2EC8B: LitI2_Byte 0
  loc_B2EC8D: LitStr "right"
  loc_B2EC90: FLdPr Me
  loc_B2EC93: MemLdI2 global_106
  loc_B2EC96: CI4UI1
  loc_B2EC97: FLdPr Me
  loc_B2EC9A: MemLdI2 global_104
  loc_B2EC9D: CI4UI1
  loc_B2EC9E: FLdPr Me
  loc_B2ECA1: MemLdStr global_84
  loc_B2ECA4: Ary1LdPr
  loc_B2ECA5: MemLdStr global_20
  loc_B2ECA8: Ary1LdPr
  loc_B2ECA9: MemLdStr global_40
  loc_B2ECAC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2ECB1: CVarStr var_F4
  loc_B2ECB4: PopAdLdVar
  loc_B2ECB5: FLdPr Me
  loc_B2ECB8: MemLdRfVar from_stack_1.htmFile
  loc_B2ECBB: LdPrVar
  loc_B2ECBD: LateMemCall
  loc_B2ECC3: FFree1Var var_F4 = ""
  loc_B2ECC6: LitI4 0
  loc_B2ECCB: LitI4 0
  loc_B2ECD0: LitI2_Byte 0
  loc_B2ECD2: LitStr "right"
  loc_B2ECD5: FLdPr Me
  loc_B2ECD8: MemLdI2 global_106
  loc_B2ECDB: CI4UI1
  loc_B2ECDC: FLdPr Me
  loc_B2ECDF: MemLdI2 global_104
  loc_B2ECE2: CI4UI1
  loc_B2ECE3: FLdPr Me
  loc_B2ECE6: MemLdStr global_84
  loc_B2ECE9: Ary1LdPr
  loc_B2ECEA: MemLdStr global_20
  loc_B2ECED: Ary1LdPr
  loc_B2ECEE: MemLdStr global_44
  loc_B2ECF1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2ECF6: CVarStr var_F4
  loc_B2ECF9: PopAdLdVar
  loc_B2ECFA: FLdPr Me
  loc_B2ECFD: MemLdRfVar from_stack_1.htmFile
  loc_B2ED00: LdPrVar
  loc_B2ED02: LateMemCall
  loc_B2ED08: FFree1Var var_F4 = ""
  loc_B2ED0B: LitI4 0
  loc_B2ED10: LitI4 0
  loc_B2ED15: LitI2_Byte 0
  loc_B2ED17: LitStr "right"
  loc_B2ED1A: FLdPr Me
  loc_B2ED1D: MemLdI2 global_106
  loc_B2ED20: CI4UI1
  loc_B2ED21: FLdPr Me
  loc_B2ED24: MemLdI2 global_104
  loc_B2ED27: CI4UI1
  loc_B2ED28: FLdPr Me
  loc_B2ED2B: MemLdStr global_84
  loc_B2ED2E: Ary1LdPr
  loc_B2ED2F: MemLdStr global_20
  loc_B2ED32: Ary1LdPr
  loc_B2ED33: MemLdStr global_48
  loc_B2ED36: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2ED3B: CVarStr var_F4
  loc_B2ED3E: PopAdLdVar
  loc_B2ED3F: FLdPr Me
  loc_B2ED42: MemLdRfVar from_stack_1.htmFile
  loc_B2ED45: LdPrVar
  loc_B2ED47: LateMemCall
  loc_B2ED4D: FFree1Var var_F4 = ""
  loc_B2ED50: LitI4 0
  loc_B2ED55: LitI4 0
  loc_B2ED5A: LitI2_Byte 0
  loc_B2ED5C: LitStr "right"
  loc_B2ED5F: FLdPr Me
  loc_B2ED62: MemLdI2 global_106
  loc_B2ED65: CI4UI1
  loc_B2ED66: FLdPr Me
  loc_B2ED69: MemLdI2 global_104
  loc_B2ED6C: CI4UI1
  loc_B2ED6D: FLdPr Me
  loc_B2ED70: MemLdStr global_84
  loc_B2ED73: Ary1LdPr
  loc_B2ED74: MemLdStr global_20
  loc_B2ED77: Ary1LdPr
  loc_B2ED78: MemLdStr htmFile
  loc_B2ED7B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2ED80: CVarStr var_F4
  loc_B2ED83: PopAdLdVar
  loc_B2ED84: FLdPr Me
  loc_B2ED87: MemLdRfVar from_stack_1.htmFile
  loc_B2ED8A: LdPrVar
  loc_B2ED8C: LateMemCall
  loc_B2ED92: FFree1Var var_F4 = ""
  loc_B2ED95: LitI4 0
  loc_B2ED9A: LitI4 0
  loc_B2ED9F: LitI2_Byte 0
  loc_B2EDA1: LitStr "right"
  loc_B2EDA4: FLdPr Me
  loc_B2EDA7: MemLdI2 global_106
  loc_B2EDAA: CI4UI1
  loc_B2EDAB: FLdPr Me
  loc_B2EDAE: MemLdI2 global_104
  loc_B2EDB1: CI4UI1
  loc_B2EDB2: FLdPr Me
  loc_B2EDB5: MemLdStr global_84
  loc_B2EDB8: Ary1LdPr
  loc_B2EDB9: MemLdStr global_20
  loc_B2EDBC: Ary1LdPr
  loc_B2EDBD: MemLdStr global_56
  loc_B2EDC0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B2EDC5: CVarStr var_F4
  loc_B2EDC8: PopAdLdVar
  loc_B2EDC9: FLdPr Me
  loc_B2EDCC: MemLdRfVar from_stack_1.htmFile
  loc_B2EDCF: LdPrVar
  loc_B2EDD1: LateMemCall
  loc_B2EDD7: FFree1Var var_F4 = ""
  loc_B2EDDA: LitVarStr var_A4, "     </tr>"
  loc_B2EDDF: PopAdLdVar
  loc_B2EDE0: FLdPr Me
  loc_B2EDE3: MemLdRfVar from_stack_1.htmFile
  loc_B2EDE6: LdPrVar
  loc_B2EDE8: LateMemCall
  loc_B2EDEE: FLdPr Me
  loc_B2EDF1: MemLdRfVar from_stack_1.global_106
  loc_B2EDF4: NextI2 var_F8, loc_B2E9AE
  loc_B2EDF9: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2EDFE: PopAdLdVar
  loc_B2EDFF: FLdPr Me
  loc_B2EE02: MemLdRfVar from_stack_1.htmFile
  loc_B2EE05: LdPrVar
  loc_B2EE07: LateMemCall
  loc_B2EE0D: LitStr "    <th colspan="""
  loc_B2EE10: FLdUI1
  loc_B2EE14: CI2UI1
  loc_B2EE16: LitI2_Byte 2
  loc_B2EE18: SubI2
  loc_B2EE19: CStrUI1
  loc_B2EE1B: FStStrNoPop var_B8
  loc_B2EE1E: ConcatStr
  loc_B2EE1F: FStStrNoPop var_BC
  loc_B2EE22: LitStr """ align=""right"" class=""Totales"">Totales y Saldo Final ("
  loc_B2EE25: ConcatStr
  loc_B2EE26: FStStrNoPop var_C0
  loc_B2EE29: FLdPr Me
  loc_B2EE2C: MemLdI2 global_104
  loc_B2EE2F: CI4UI1
  loc_B2EE30: FLdPr Me
  loc_B2EE33: MemLdStr global_84
  loc_B2EE36: Ary1LdPr
  loc_B2EE37: MemLdStr global_4
  loc_B2EE3A: ConcatStr
  loc_B2EE3B: FStStrNoPop var_C4
  loc_B2EE3E: LitStr ")</th>"
  loc_B2EE41: ConcatStr
  loc_B2EE42: CVarStr var_F4
  loc_B2EE45: PopAdLdVar
  loc_B2EE46: FLdPr Me
  loc_B2EE49: MemLdRfVar from_stack_1.htmFile
  loc_B2EE4C: LdPrVar
  loc_B2EE4E: LateMemCall
  loc_B2EE54: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_B2EE5F: FFree1Var var_F4 = ""
  loc_B2EE62: LitVarStr var_12C, "    <th align=""right"" class=""Totales"">"
  loc_B2EE67: LitVarStr var_10C, "&nbsp;"
  loc_B2EE6C: FStVarCopyObj var_F4
  loc_B2EE6F: FLdRfVar var_F4
  loc_B2EE72: FLdPr Me
  loc_B2EE75: MemLdI2 global_104
  loc_B2EE78: CI4UI1
  loc_B2EE79: FLdPr Me
  loc_B2EE7C: MemLdStr global_84
  loc_B2EE7F: AryLock
  loc_B2EE82: Ary1LdPr
  loc_B2EE83: MemLdRfVar from_stack_1.global_24
  loc_B2EE86: CVarRef
  loc_B2EE8B: FLdPr Me
  loc_B2EE8E: MemLdI2 global_104
  loc_B2EE91: CI4UI1
  loc_B2EE92: FLdPr Me
  loc_B2EE95: MemLdStr global_84
  loc_B2EE98: Ary1LdPr
  loc_B2EE99: MemLdStr global_24
  loc_B2EE9C: LitStr vbNullString
  loc_B2EE9F: NeStr
  loc_B2EEA1: CVarBoolI2 var_A4
  loc_B2EEA5: FLdRfVar var_11C
  loc_B2EEA8: ImpAdCallFPR4  = IIf(, , )
  loc_B2EEAD: AryUnlock
  loc_B2EEB0: FLdRfVar var_11C
  loc_B2EEB3: ConcatVar var_13C
  loc_B2EEB7: LitVarStr var_14C, "</th>"
  loc_B2EEBC: ConcatVar var_15C
  loc_B2EEC0: PopAdLdVar
  loc_B2EEC1: FLdPr Me
  loc_B2EEC4: MemLdRfVar from_stack_1.htmFile
  loc_B2EEC7: LdPrVar
  loc_B2EEC9: LateMemCall
  loc_B2EECF: FFreeVar var_A4 = "": var_F4 = "": var_11C = "": var_13C = ""
  loc_B2EEDC: LitVarStr var_12C, "    <th align=""right"" class=""Totales"">"
  loc_B2EEE1: LitVarStr var_10C, "&nbsp;"
  loc_B2EEE6: FStVarCopyObj var_F4
  loc_B2EEE9: FLdRfVar var_F4
  loc_B2EEEC: FLdPr Me
  loc_B2EEEF: MemLdI2 global_104
  loc_B2EEF2: CI4UI1
  loc_B2EEF3: FLdPr Me
  loc_B2EEF6: MemLdStr global_84
  loc_B2EEF9: AryLock
  loc_B2EEFC: Ary1LdPr
  loc_B2EEFD: MemLdRfVar from_stack_1.global_28
  loc_B2EF00: CVarRef
  loc_B2EF05: FLdPr Me
  loc_B2EF08: MemLdI2 global_104
  loc_B2EF0B: CI4UI1
  loc_B2EF0C: FLdPr Me
  loc_B2EF0F: MemLdStr global_84
  loc_B2EF12: Ary1LdPr
  loc_B2EF13: MemLdStr global_28
  loc_B2EF16: LitStr vbNullString
  loc_B2EF19: NeStr
  loc_B2EF1B: CVarBoolI2 var_A4
  loc_B2EF1F: FLdRfVar var_11C
  loc_B2EF22: ImpAdCallFPR4  = IIf(, , )
  loc_B2EF27: AryUnlock
  loc_B2EF2A: FLdRfVar var_11C
  loc_B2EF2D: ConcatVar var_13C
  loc_B2EF31: LitVarStr var_14C, "</th>"
  loc_B2EF36: ConcatVar var_15C
  loc_B2EF3A: PopAdLdVar
  loc_B2EF3B: FLdPr Me
  loc_B2EF3E: MemLdRfVar from_stack_1.htmFile
  loc_B2EF41: LdPrVar
  loc_B2EF43: LateMemCall
  loc_B2EF49: FFreeVar var_A4 = "": var_F4 = "": var_11C = "": var_13C = ""
  loc_B2EF56: LitVarStr var_12C, "    <th align=""right"" class=""Totales"">"
  loc_B2EF5B: LitVarStr var_10C, "&nbsp;"
  loc_B2EF60: FStVarCopyObj var_F4
  loc_B2EF63: FLdRfVar var_F4
  loc_B2EF66: FLdPr Me
  loc_B2EF69: MemLdI2 global_104
  loc_B2EF6C: CI4UI1
  loc_B2EF6D: FLdPr Me
  loc_B2EF70: MemLdStr global_84
  loc_B2EF73: AryLock
  loc_B2EF76: Ary1LdPr
  loc_B2EF77: MemLdRfVar from_stack_1.global_48
  loc_B2EF7A: CVarRef
  loc_B2EF7F: FLdPr Me
  loc_B2EF82: MemLdI2 global_104
  loc_B2EF85: CI4UI1
  loc_B2EF86: FLdPr Me
  loc_B2EF89: MemLdStr global_84
  loc_B2EF8C: Ary1LdPr
  loc_B2EF8D: MemLdStr global_48
  loc_B2EF90: LitStr vbNullString
  loc_B2EF93: NeStr
  loc_B2EF95: CVarBoolI2 var_A4
  loc_B2EF99: FLdRfVar var_11C
  loc_B2EF9C: ImpAdCallFPR4  = IIf(, , )
  loc_B2EFA1: AryUnlock
  loc_B2EFA4: FLdRfVar var_11C
  loc_B2EFA7: ConcatVar var_13C
  loc_B2EFAB: LitVarStr var_14C, "</th>"
  loc_B2EFB0: ConcatVar var_15C
  loc_B2EFB4: PopAdLdVar
  loc_B2EFB5: FLdPr Me
  loc_B2EFB8: MemLdRfVar from_stack_1.htmFile
  loc_B2EFBB: LdPrVar
  loc_B2EFBD: LateMemCall
  loc_B2EFC3: FFreeVar var_A4 = "": var_F4 = "": var_11C = "": var_13C = ""
  loc_B2EFD0: LitVarStr var_12C, "    <th align=""right"" class=""Totales"">"
  loc_B2EFD5: LitVarStr var_10C, "&nbsp;"
  loc_B2EFDA: FStVarCopyObj var_F4
  loc_B2EFDD: FLdRfVar var_F4
  loc_B2EFE0: FLdPr Me
  loc_B2EFE3: MemLdI2 global_104
  loc_B2EFE6: CI4UI1
  loc_B2EFE7: FLdPr Me
  loc_B2EFEA: MemLdStr global_84
  loc_B2EFED: AryLock
  loc_B2EFF0: Ary1LdPr
  loc_B2EFF1: MemLdRfVar from_stack_1.htmFile
  loc_B2EFF4: CVarRef
  loc_B2EFF9: FLdPr Me
  loc_B2EFFC: MemLdI2 global_104
  loc_B2EFFF: CI4UI1
  loc_B2F000: FLdPr Me
  loc_B2F003: MemLdStr global_84
  loc_B2F006: Ary1LdPr
  loc_B2F007: MemLdStr htmFile
  loc_B2F00A: LitStr vbNullString
  loc_B2F00D: NeStr
  loc_B2F00F: CVarBoolI2 var_A4
  loc_B2F013: FLdRfVar var_11C
  loc_B2F016: ImpAdCallFPR4  = IIf(, , )
  loc_B2F01B: AryUnlock
  loc_B2F01E: FLdRfVar var_11C
  loc_B2F021: ConcatVar var_13C
  loc_B2F025: LitVarStr var_14C, "</th>"
  loc_B2F02A: ConcatVar var_15C
  loc_B2F02E: PopAdLdVar
  loc_B2F02F: FLdPr Me
  loc_B2F032: MemLdRfVar from_stack_1.htmFile
  loc_B2F035: LdPrVar
  loc_B2F037: LateMemCall
  loc_B2F03D: FFreeVar var_A4 = "": var_F4 = "": var_11C = "": var_13C = ""
  loc_B2F04A: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2F04D: FLdPr Me
  loc_B2F050: MemLdI2 global_104
  loc_B2F053: CI4UI1
  loc_B2F054: FLdPr Me
  loc_B2F057: MemLdStr global_84
  loc_B2F05A: Ary1LdPr
  loc_B2F05B: MemLdStr global_32
  loc_B2F05E: ConcatStr
  loc_B2F05F: FStStrNoPop var_B8
  loc_B2F062: LitStr "</th>"
  loc_B2F065: ConcatStr
  loc_B2F066: CVarStr var_F4
  loc_B2F069: PopAdLdVar
  loc_B2F06A: FLdPr Me
  loc_B2F06D: MemLdRfVar from_stack_1.htmFile
  loc_B2F070: LdPrVar
  loc_B2F072: LateMemCall
  loc_B2F078: FFree1Str var_B8
  loc_B2F07B: FFree1Var var_F4 = ""
  loc_B2F07E: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2F081: FLdPr Me
  loc_B2F084: MemLdI2 global_104
  loc_B2F087: CI4UI1
  loc_B2F088: FLdPr Me
  loc_B2F08B: MemLdStr global_84
  loc_B2F08E: Ary1LdPr
  loc_B2F08F: MemLdStr global_36
  loc_B2F092: ConcatStr
  loc_B2F093: FStStrNoPop var_B8
  loc_B2F096: LitStr "</th>"
  loc_B2F099: ConcatStr
  loc_B2F09A: CVarStr var_F4
  loc_B2F09D: PopAdLdVar
  loc_B2F09E: FLdPr Me
  loc_B2F0A1: MemLdRfVar from_stack_1.htmFile
  loc_B2F0A4: LdPrVar
  loc_B2F0A6: LateMemCall
  loc_B2F0AC: FFree1Str var_B8
  loc_B2F0AF: FFree1Var var_F4 = ""
  loc_B2F0B2: LitVarStr var_A4, "     </tr>"
  loc_B2F0B7: PopAdLdVar
  loc_B2F0B8: FLdPr Me
  loc_B2F0BB: MemLdRfVar from_stack_1.htmFile
  loc_B2F0BE: LdPrVar
  loc_B2F0C0: LateMemCall
  loc_B2F0C6: FLdPr Me
  loc_B2F0C9: MemLdRfVar from_stack_1.global_104
  loc_B2F0CC: NextI2 var_92, loc_B2E816
  loc_B2F0D1: Call Proc_183_34_9825B0()
  loc_B2F0D6: FLdPr Me
  loc_B2F0D9: MemLdRfVar from_stack_1.htmFile
  loc_B2F0DC: LdPrVar
  loc_B2F0DE: LateMemCall
  loc_B2F0E4: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B2F0E9: ExitProcHresult
End Sub

Private Function Proc_183_30_AB52A8() 'AB52A8
  'Data Table: 4B9CB8
  loc_AB4D4C: FLdPr Me
  loc_AB4D4F: MemLdI2 global_104
  loc_AB4D52: LitI2_Byte 1
  loc_AB4D54: AddI2
  loc_AB4D55: FLdPr Me
  loc_AB4D58: MemStI2 global_104
  loc_AB4D5B: LitI2_Byte 0
  loc_AB4D5D: FLdPr Me
  loc_AB4D60: MemStI2 global_106
  loc_AB4D63: LitI4 0
  loc_AB4D68: FLdPr Me
  loc_AB4D6B: MemLdI2 global_104
  loc_AB4D6E: CI4UI1
  loc_AB4D6F: FLdPr Me
  loc_AB4D72: MemLdRfVar from_stack_1.global_84
  loc_AB4D75: RedimPreserve
  loc_AB4D7F: FLdRfVar var_A0
  loc_AB4D82: LitVarStr var_9C, "CodiBanc"
  loc_AB4D87: PopAdLdVar
  loc_AB4D88: FLdRfVar var_8C
  loc_AB4D8B: FLdRfVar var_88
  loc_AB4D8E: FLdPr Me
  loc_AB4D91: MemLdRfVar from_stack_1.global_76
  loc_AB4D94: NewIfNullPr clsbase
  loc_AB4D97: from_stack_1v = clsbase.RsFrmGet()
  loc_AB4D9C: FLdPr var_88
  loc_AB4D9F:  = Me.Fields
  loc_AB4DA4: FLdPr var_8C
  loc_AB4DA7: from_stack_2 = Me.Item(from_stack_1)
  loc_AB4DAC: LitI2_Byte 0
  loc_AB4DAE: LitVar_Missing var_D4
  loc_AB4DB1: LitI2_Byte 0
  loc_AB4DB3: FLdZeroAd var_A0
  loc_AB4DB6: CVarAd
  loc_AB4DBA: PopAdLdVar
  loc_AB4DBB: FLdPr Me
  loc_AB4DBE: MemLdI2 global_104
  loc_AB4DC1: CI4UI1
  loc_AB4DC2: FLdPr Me
  loc_AB4DC5: MemLdStr global_84
  loc_AB4DC8: AryLock
  loc_AB4DCB: Ary1LdPr
  loc_AB4DCC: MemLdRfVar from_stack_1.global_0
  loc_AB4DCF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB4DD4: AryUnlock
  loc_AB4DD7: FFreeAd var_88 = ""
  loc_AB4DDE: FFreeVar var_B4 = ""
  loc_AB4DE5: FLdRfVar var_A0
  loc_AB4DE8: LitVarStr var_9C, "DetaBanc"
  loc_AB4DED: PopAdLdVar
  loc_AB4DEE: FLdRfVar var_8C
  loc_AB4DF1: FLdRfVar var_88
  loc_AB4DF4: FLdPr Me
  loc_AB4DF7: MemLdRfVar from_stack_1.global_76
  loc_AB4DFA: NewIfNullPr clsbase
  loc_AB4DFD: from_stack_1v = clsbase.RsFrmGet()
  loc_AB4E02: FLdPr var_88
  loc_AB4E05:  = Me.Fields
  loc_AB4E0A: FLdPr var_8C
  loc_AB4E0D: from_stack_2 = Me.Item(from_stack_1)
  loc_AB4E12: LitI2_Byte 0
  loc_AB4E14: LitVar_Missing var_D4
  loc_AB4E17: LitI2_Byte 0
  loc_AB4E19: FLdZeroAd var_A0
  loc_AB4E1C: CVarAd
  loc_AB4E20: PopAdLdVar
  loc_AB4E21: FLdPr Me
  loc_AB4E24: MemLdI2 global_104
  loc_AB4E27: CI4UI1
  loc_AB4E28: FLdPr Me
  loc_AB4E2B: MemLdStr global_84
  loc_AB4E2E: AryLock
  loc_AB4E31: Ary1LdPr
  loc_AB4E32: MemLdRfVar from_stack_1.global_4
  loc_AB4E35: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB4E3A: AryUnlock
  loc_AB4E3D: FFreeAd var_88 = ""
  loc_AB4E44: FFreeVar var_B4 = ""
  loc_AB4E4B: FLdRfVar var_A0
  loc_AB4E4E: LitVarStr var_9C, "NumeBanc"
  loc_AB4E53: PopAdLdVar
  loc_AB4E54: FLdRfVar var_8C
  loc_AB4E57: FLdRfVar var_88
  loc_AB4E5A: FLdPr Me
  loc_AB4E5D: MemLdRfVar from_stack_1.global_76
  loc_AB4E60: NewIfNullPr clsbase
  loc_AB4E63: from_stack_1v = clsbase.RsFrmGet()
  loc_AB4E68: FLdPr var_88
  loc_AB4E6B:  = Me.Fields
  loc_AB4E70: FLdPr var_8C
  loc_AB4E73: from_stack_2 = Me.Item(from_stack_1)
  loc_AB4E78: LitI2_Byte 0
  loc_AB4E7A: LitVar_Missing var_D4
  loc_AB4E7D: LitI2_Byte 0
  loc_AB4E7F: FLdZeroAd var_A0
  loc_AB4E82: CVarAd
  loc_AB4E86: PopAdLdVar
  loc_AB4E87: FLdPr Me
  loc_AB4E8A: MemLdI2 global_104
  loc_AB4E8D: CI4UI1
  loc_AB4E8E: FLdPr Me
  loc_AB4E91: MemLdStr global_84
  loc_AB4E94: AryLock
  loc_AB4E97: Ary1LdPr
  loc_AB4E98: MemLdRfVar from_stack_1.global_8
  loc_AB4E9B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB4EA0: AryUnlock
  loc_AB4EA3: FFreeAd var_88 = ""
  loc_AB4EAA: FFreeVar var_B4 = ""
  loc_AB4EB1: FLdRfVar var_A0
  loc_AB4EB4: LitVarStr var_9C, "CodiCuco"
  loc_AB4EB9: PopAdLdVar
  loc_AB4EBA: FLdRfVar var_8C
  loc_AB4EBD: FLdRfVar var_88
  loc_AB4EC0: FLdPr Me
  loc_AB4EC3: MemLdRfVar from_stack_1.global_76
  loc_AB4EC6: NewIfNullPr clsbase
  loc_AB4EC9: from_stack_1v = clsbase.RsFrmGet()
  loc_AB4ECE: FLdPr var_88
  loc_AB4ED1:  = Me.Fields
  loc_AB4ED6: FLdPr var_8C
  loc_AB4ED9: from_stack_2 = Me.Item(from_stack_1)
  loc_AB4EDE: LitI2_Byte 0
  loc_AB4EE0: LitVar_Missing var_D4
  loc_AB4EE3: LitI2_Byte 0
  loc_AB4EE5: FLdZeroAd var_A0
  loc_AB4EE8: CVarAd
  loc_AB4EEC: PopAdLdVar
  loc_AB4EED: FLdPr Me
  loc_AB4EF0: MemLdI2 global_104
  loc_AB4EF3: CI4UI1
  loc_AB4EF4: FLdPr Me
  loc_AB4EF7: MemLdStr global_84
  loc_AB4EFA: AryLock
  loc_AB4EFD: Ary1LdPr
  loc_AB4EFE: MemLdRfVar from_stack_1.global_12
  loc_AB4F01: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB4F06: AryUnlock
  loc_AB4F09: FFreeAd var_88 = ""
  loc_AB4F10: FFreeVar var_B4 = ""
  loc_AB4F17: FLdRfVar var_A0
  loc_AB4F1A: LitVarStr var_9C, "DetaCuco"
  loc_AB4F1F: PopAdLdVar
  loc_AB4F20: FLdRfVar var_8C
  loc_AB4F23: FLdRfVar var_88
  loc_AB4F26: FLdPr Me
  loc_AB4F29: MemLdRfVar from_stack_1.global_76
  loc_AB4F2C: NewIfNullPr clsbase
  loc_AB4F2F: from_stack_1v = clsbase.RsFrmGet()
  loc_AB4F34: FLdPr var_88
  loc_AB4F37:  = Me.Fields
  loc_AB4F3C: FLdPr var_8C
  loc_AB4F3F: from_stack_2 = Me.Item(from_stack_1)
  loc_AB4F44: LitI2_Byte 0
  loc_AB4F46: LitVar_Missing var_D4
  loc_AB4F49: LitI2_Byte 0
  loc_AB4F4B: FLdZeroAd var_A0
  loc_AB4F4E: CVarAd
  loc_AB4F52: PopAdLdVar
  loc_AB4F53: FLdPr Me
  loc_AB4F56: MemLdI2 global_104
  loc_AB4F59: CI4UI1
  loc_AB4F5A: FLdPr Me
  loc_AB4F5D: MemLdStr global_84
  loc_AB4F60: AryLock
  loc_AB4F63: Ary1LdPr
  loc_AB4F64: MemLdRfVar from_stack_1.global_16
  loc_AB4F67: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB4F6C: AryUnlock
  loc_AB4F6F: FFreeAd var_88 = ""
  loc_AB4F76: FFreeVar var_B4 = ""
  loc_AB4F7D: FLdPr Me
  loc_AB4F80: VCallAd Control_ID_chkMostrarTransferencias
  loc_AB4F83: CVarAd
  loc_AB4F87: CBoolVarNull
  loc_AB4F89: FFree1Var var_B4 = ""
  loc_AB4F8C: BranchF loc_AB5040
  loc_AB4F8F: FLdPr Me
  loc_AB4F92: VCallAd Control_ID_mskDesde
  loc_AB4F95: FStAdFunc var_88
  loc_AB4F98: FLdPr var_88
  loc_AB4F9B: LateIdLdVar var_B4 DispID_15 0
  loc_AB4FA2: PopAd
  loc_AB4FA4: LitStr "SELECT IF(SUM(DebeMoba)-SUM(HabeMoba)>0,SUM(DebeMoba)-SUM(HabeMoba),0) DebeMoba, "
  loc_AB4FA7: LitStr " IF(SUM(HabeMoba)-SUM(DebeMoba)>0,SUM(HabeMoba)-SUM(DebeMoba),0) HabeMoba,"
  loc_AB4FAA: ConcatStr
  loc_AB4FAB: FStStrNoPop var_D8
  loc_AB4FAE: LitStr " SUM(DebeMoba)-SUM(HabeMoba) Saldo"
  loc_AB4FB1: ConcatStr
  loc_AB4FB2: FStStrNoPop var_DC
  loc_AB4FB5: LitStr " FROM v_movibanco"
  loc_AB4FB8: ConcatStr
  loc_AB4FB9: FStStrNoPop var_E0
  loc_AB4FBC: LitStr " WHERE CodiBanc = "
  loc_AB4FBF: ConcatStr
  loc_AB4FC0: FStStrNoPop var_E4
  loc_AB4FC3: FLdPr Me
  loc_AB4FC6: MemLdI2 global_104
  loc_AB4FC9: CI4UI1
  loc_AB4FCA: FLdPr Me
  loc_AB4FCD: MemLdStr global_84
  loc_AB4FD0: Ary1LdPr
  loc_AB4FD1: MemLdStr global_0
  loc_AB4FD4: ConcatStr
  loc_AB4FD5: FStStrNoPop var_E8
  loc_AB4FD8: LitStr " AND FechMoba < "
  loc_AB4FDB: ConcatStr
  loc_AB4FDC: FStStrNoPop var_FC
  loc_AB4FDF: LitI4 1
  loc_AB4FE4: LitI4 1
  loc_AB4FE9: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_AB4FEE: FStVarCopyObj var_F8
  loc_AB4FF1: FLdRfVar var_F8
  loc_AB4FF4: FLdRfVar var_B4
  loc_AB4FF7: CStrVarTmp
  loc_AB4FF8: CVarStr var_D4
  loc_AB4FFB: ImpAdCallI2 Format$(, )
  loc_AB5000: FStStrNoPop var_100
  loc_AB5003: ConcatStr
  loc_AB5004: FStStrNoPop var_104
  loc_AB5007: LitStr " GROUP BY CodiBanc;"
  loc_AB500A: ConcatStr
  loc_AB500B: FStStrNoPop var_108
  loc_AB500E: FLdPr Me
  loc_AB5011: MemLdRfVar from_stack_1.global_72
  loc_AB5014: NewIfNullPr clsbase
  loc_AB5017: Call clsbase.RedefineRS(from_stack_1v)
  loc_AB501C: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_AB5031: FFree1Ad var_88
  loc_AB5034: FFreeVar var_B4 = "": var_D4 = ""
  loc_AB503D: Branch loc_AB50EE
  loc_AB5040: FLdPr Me
  loc_AB5043: VCallAd Control_ID_mskDesde
  loc_AB5046: FStAdFunc var_88
  loc_AB5049: FLdPr var_88
  loc_AB504C: LateIdLdVar var_B4 DispID_15 0
  loc_AB5053: PopAd
  loc_AB5055: LitStr "SELECT IF(SUM(DebeMoba)-SUM(HabeMoba)>0,SUM(DebeMoba)-SUM(HabeMoba),0) DebeMoba, "
  loc_AB5058: LitStr " IF(SUM(HabeMoba)-SUM(DebeMoba)>0,SUM(HabeMoba)-SUM(DebeMoba),0) HabeMoba,"
  loc_AB505B: ConcatStr
  loc_AB505C: FStStrNoPop var_D8
  loc_AB505F: LitStr " SUM(DebeMoba)-SUM(HabeMoba) Saldo"
  loc_AB5062: ConcatStr
  loc_AB5063: FStStrNoPop var_DC
  loc_AB5066: LitStr " FROM movibanco"
  loc_AB5069: ConcatStr
  loc_AB506A: FStStrNoPop var_E0
  loc_AB506D: LitStr " WHERE CodiBanc = "
  loc_AB5070: ConcatStr
  loc_AB5071: FStStrNoPop var_E4
  loc_AB5074: FLdPr Me
  loc_AB5077: MemLdI2 global_104
  loc_AB507A: CI4UI1
  loc_AB507B: FLdPr Me
  loc_AB507E: MemLdStr global_84
  loc_AB5081: Ary1LdPr
  loc_AB5082: MemLdStr global_0
  loc_AB5085: ConcatStr
  loc_AB5086: FStStrNoPop var_E8
  loc_AB5089: LitStr " AND FechMoba < "
  loc_AB508C: ConcatStr
  loc_AB508D: FStStrNoPop var_FC
  loc_AB5090: LitI4 1
  loc_AB5095: LitI4 1
  loc_AB509A: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_AB509F: FStVarCopyObj var_F8
  loc_AB50A2: FLdRfVar var_F8
  loc_AB50A5: FLdRfVar var_B4
  loc_AB50A8: CStrVarTmp
  loc_AB50A9: CVarStr var_D4
  loc_AB50AC: ImpAdCallI2 Format$(, )
  loc_AB50B1: FStStrNoPop var_100
  loc_AB50B4: ConcatStr
  loc_AB50B5: FStStrNoPop var_104
  loc_AB50B8: LitStr " GROUP BY CodiBanc;"
  loc_AB50BB: ConcatStr
  loc_AB50BC: FStStrNoPop var_108
  loc_AB50BF: FLdPr Me
  loc_AB50C2: MemLdRfVar from_stack_1.global_72
  loc_AB50C5: NewIfNullPr clsbase
  loc_AB50C8: Call clsbase.RedefineRS(from_stack_1v)
  loc_AB50CD: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_AB50E2: FFree1Ad var_88
  loc_AB50E5: FFreeVar var_B4 = "": var_D4 = ""
  loc_AB50EE: FLdRfVar var_10C
  loc_AB50F1: FLdPr Me
  loc_AB50F4: MemLdRfVar from_stack_1.global_72
  loc_AB50F7: NewIfNullPr clsbase
  loc_AB50FA: from_stack_1 = clsbase.RecordCount
  loc_AB50FF: ILdRf var_10C
  loc_AB5102: LitI4 0
  loc_AB5107: GtI4
  loc_AB5108: BranchF loc_AB522F
  loc_AB510B: FLdRfVar var_A0
  loc_AB510E: LitVarStr var_9C, "DebeMoba"
  loc_AB5113: PopAdLdVar
  loc_AB5114: FLdRfVar var_8C
  loc_AB5117: FLdRfVar var_88
  loc_AB511A: FLdPr Me
  loc_AB511D: MemLdRfVar from_stack_1.global_72
  loc_AB5120: NewIfNullPr clsbase
  loc_AB5123: from_stack_1v = clsbase.RsFrmGet()
  loc_AB5128: FLdPr var_88
  loc_AB512B:  = Me.Fields
  loc_AB5130: FLdPr var_8C
  loc_AB5133: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5138: LitI2_Byte 0
  loc_AB513A: LitVar_Missing var_D4
  loc_AB513D: LitI2_Byte &HFF
  loc_AB513F: FLdZeroAd var_A0
  loc_AB5142: CVarAd
  loc_AB5146: PopAdLdVar
  loc_AB5147: FLdPr Me
  loc_AB514A: MemLdI2 global_104
  loc_AB514D: CI4UI1
  loc_AB514E: FLdPr Me
  loc_AB5151: MemLdStr global_84
  loc_AB5154: AryLock
  loc_AB5157: Ary1LdPr
  loc_AB5158: MemLdRfVar from_stack_1.global_40
  loc_AB515B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB5160: AryUnlock
  loc_AB5163: FFreeAd var_88 = ""
  loc_AB516A: FFreeVar var_B4 = ""
  loc_AB5171: FLdRfVar var_A0
  loc_AB5174: LitVarStr var_9C, "HabeMoba"
  loc_AB5179: PopAdLdVar
  loc_AB517A: FLdRfVar var_8C
  loc_AB517D: FLdRfVar var_88
  loc_AB5180: FLdPr Me
  loc_AB5183: MemLdRfVar from_stack_1.global_72
  loc_AB5186: NewIfNullPr clsbase
  loc_AB5189: from_stack_1v = clsbase.RsFrmGet()
  loc_AB518E: FLdPr var_88
  loc_AB5191:  = Me.Fields
  loc_AB5196: FLdPr var_8C
  loc_AB5199: from_stack_2 = Me.Item(from_stack_1)
  loc_AB519E: LitI2_Byte 0
  loc_AB51A0: LitVar_Missing var_D4
  loc_AB51A3: LitI2_Byte &HFF
  loc_AB51A5: FLdZeroAd var_A0
  loc_AB51A8: CVarAd
  loc_AB51AC: PopAdLdVar
  loc_AB51AD: FLdPr Me
  loc_AB51B0: MemLdI2 global_104
  loc_AB51B3: CI4UI1
  loc_AB51B4: FLdPr Me
  loc_AB51B7: MemLdStr global_84
  loc_AB51BA: AryLock
  loc_AB51BD: Ary1LdPr
  loc_AB51BE: MemLdRfVar from_stack_1.global_44
  loc_AB51C1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB51C6: AryUnlock
  loc_AB51C9: FFreeAd var_88 = ""
  loc_AB51D0: FFreeVar var_B4 = ""
  loc_AB51D7: FLdRfVar var_A0
  loc_AB51DA: LitVarStr var_9C, "Saldo"
  loc_AB51DF: PopAdLdVar
  loc_AB51E0: FLdRfVar var_8C
  loc_AB51E3: FLdRfVar var_88
  loc_AB51E6: FLdPr Me
  loc_AB51E9: MemLdRfVar from_stack_1.global_72
  loc_AB51EC: NewIfNullPr clsbase
  loc_AB51EF: from_stack_1v = clsbase.RsFrmGet()
  loc_AB51F4: FLdPr var_88
  loc_AB51F7:  = Me.Fields
  loc_AB51FC: FLdPr var_8C
  loc_AB51FF: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5204: LitI2_Byte 0
  loc_AB5206: LitVar_Missing var_D4
  loc_AB5209: LitI2_Byte 0
  loc_AB520B: FLdZeroAd var_A0
  loc_AB520E: CVarAd
  loc_AB5212: PopAdLdVar
  loc_AB5213: FLdPr Me
  loc_AB5216: MemLdRfVar from_stack_1.global_92
  loc_AB5219: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB521E: FFreeAd var_88 = ""
  loc_AB5225: FFreeVar var_B4 = ""
  loc_AB522C: Branch loc_AB52A2
  loc_AB522F: LitI2_Byte 0
  loc_AB5231: LitVar_Missing var_B4
  loc_AB5234: LitI2_Byte &HFF
  loc_AB5236: LitVarI2 var_9C, 0
  loc_AB523B: PopAdLdVar
  loc_AB523C: FLdPr Me
  loc_AB523F: MemLdI2 global_104
  loc_AB5242: CI4UI1
  loc_AB5243: FLdPr Me
  loc_AB5246: MemLdStr global_84
  loc_AB5249: AryLock
  loc_AB524C: Ary1LdPr
  loc_AB524D: MemLdRfVar from_stack_1.global_40
  loc_AB5250: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB5255: AryUnlock
  loc_AB5258: FFree1Var var_B4 = ""
  loc_AB525B: LitI2_Byte 0
  loc_AB525D: LitVar_Missing var_B4
  loc_AB5260: LitI2_Byte &HFF
  loc_AB5262: LitVarI2 var_9C, 0
  loc_AB5267: PopAdLdVar
  loc_AB5268: FLdPr Me
  loc_AB526B: MemLdI2 global_104
  loc_AB526E: CI4UI1
  loc_AB526F: FLdPr Me
  loc_AB5272: MemLdStr global_84
  loc_AB5275: AryLock
  loc_AB5278: Ary1LdPr
  loc_AB5279: MemLdRfVar from_stack_1.global_44
  loc_AB527C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB5281: AryUnlock
  loc_AB5284: FFree1Var var_B4 = ""
  loc_AB5287: LitI2_Byte 0
  loc_AB5289: LitVar_Missing var_B4
  loc_AB528C: LitI2_Byte 0
  loc_AB528E: LitVarStr var_9C, vbNullString
  loc_AB5293: PopAdLdVar
  loc_AB5294: FLdPr Me
  loc_AB5297: MemLdRfVar from_stack_1.global_92
  loc_AB529A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB529F: FFree1Var var_B4 = ""
  loc_AB52A2: Call Proc_183_31_A63728()
  loc_AB52A7: ExitProcHresult
End Function

Private Function Proc_183_31_A63728() 'A63728
  'Data Table: 4B9CB8
  loc_A633E4: FLdPr Me
  loc_A633E7: MemLdI2 global_106
  loc_A633EA: LitI2_Byte 1
  loc_A633EC: AddI2
  loc_A633ED: FLdPr Me
  loc_A633F0: MemStI2 global_106
  loc_A633F3: LitI4 0
  loc_A633F8: FLdPr Me
  loc_A633FB: MemLdI2 global_106
  loc_A633FE: CI4UI1
  loc_A633FF: FLdPr Me
  loc_A63402: MemLdI2 global_104
  loc_A63405: CI4UI1
  loc_A63406: FLdPr Me
  loc_A63409: MemLdStr global_84
  loc_A6340C: Ary1LdPr
  loc_A6340D: MemLdRfVar from_stack_1.global_20
  loc_A63410: RedimPreserve
  loc_A6341A: FLdPr Me
  loc_A6341D: MemLdI2 global_106
  loc_A63420: CI4UI1
  loc_A63421: FLdPr Me
  loc_A63424: MemLdI2 global_104
  loc_A63427: CI4UI1
  loc_A63428: FLdPr Me
  loc_A6342B: MemLdStr global_84
  loc_A6342E: AryLock
  loc_A63431: Ary1LdPr
  loc_A63432: MemLdStr global_20
  loc_A63435: AryLock
  loc_A63438: Ary1LdRf
  loc_A63439: FStR4 var_90
  loc_A6343C: FLdRfVar var_AC
  loc_A6343F: LitVarStr var_A8, "FechMoba"
  loc_A63444: PopAdLdVar
  loc_A63445: FLdRfVar var_98
  loc_A63448: FLdRfVar var_94
  loc_A6344B: FLdPr Me
  loc_A6344E: MemLdRfVar from_stack_1.global_76
  loc_A63451: NewIfNullPr clsbase
  loc_A63454: from_stack_1v = clsbase.RsFrmGet()
  loc_A63459: FLdPr var_94
  loc_A6345C:  = Me.Fields
  loc_A63461: FLdPr var_98
  loc_A63464: from_stack_2 = Me.Item(from_stack_1)
  loc_A63469: LitI2_Byte 0
  loc_A6346B: LitVar_Missing var_DC
  loc_A6346E: LitI2_Byte 0
  loc_A63470: FLdZeroAd var_AC
  loc_A63473: CVarAd
  loc_A63477: PopAdLdVar
  loc_A63478: FMemLdRf unk_4B9C29
  loc_A6347D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A63482: FFreeAd var_94 = ""
  loc_A63489: FFreeVar var_BC = ""
  loc_A63490: FLdRfVar var_AC
  loc_A63493: LitVarStr var_A8, "FecoMoba"
  loc_A63498: PopAdLdVar
  loc_A63499: FLdRfVar var_98
  loc_A6349C: FLdRfVar var_94
  loc_A6349F: FLdPr Me
  loc_A634A2: MemLdRfVar from_stack_1.global_76
  loc_A634A5: NewIfNullPr clsbase
  loc_A634A8: from_stack_1v = clsbase.RsFrmGet()
  loc_A634AD: FLdPr var_94
  loc_A634B0:  = Me.Fields
  loc_A634B5: FLdPr var_98
  loc_A634B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A634BD: LitI2_Byte 0
  loc_A634BF: LitVar_Missing var_DC
  loc_A634C2: LitI2_Byte 0
  loc_A634C4: FLdZeroAd var_AC
  loc_A634C7: CVarAd
  loc_A634CB: PopAdLdVar
  loc_A634CC: FMemLdRf unk_4B9C29
  loc_A634D1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A634D6: FFreeAd var_94 = ""
  loc_A634DD: FFreeVar var_BC = ""
  loc_A634E4: FLdRfVar var_AC
  loc_A634E7: LitVarStr var_A8, "CodiTimb"
  loc_A634EC: PopAdLdVar
  loc_A634ED: FLdRfVar var_98
  loc_A634F0: FLdRfVar var_94
  loc_A634F3: FLdPr Me
  loc_A634F6: MemLdRfVar from_stack_1.global_76
  loc_A634F9: NewIfNullPr clsbase
  loc_A634FC: from_stack_1v = clsbase.RsFrmGet()
  loc_A63501: FLdPr var_94
  loc_A63504:  = Me.Fields
  loc_A63509: FLdPr var_98
  loc_A6350C: from_stack_2 = Me.Item(from_stack_1)
  loc_A63511: LitI2_Byte 0
  loc_A63513: LitVar_Missing var_DC
  loc_A63516: LitI2_Byte 0
  loc_A63518: FLdZeroAd var_AC
  loc_A6351B: CVarAd
  loc_A6351F: PopAdLdVar
  loc_A63520: FMemLdRf unk_4B9C29
  loc_A63525: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6352A: FFreeAd var_94 = ""
  loc_A63531: FFreeVar var_BC = ""
  loc_A63538: FLdRfVar var_AC
  loc_A6353B: LitVarStr var_A8, "DetaTimb"
  loc_A63540: PopAdLdVar
  loc_A63541: FLdRfVar var_98
  loc_A63544: FLdRfVar var_94
  loc_A63547: FLdPr Me
  loc_A6354A: MemLdRfVar from_stack_1.global_76
  loc_A6354D: NewIfNullPr clsbase
  loc_A63550: from_stack_1v = clsbase.RsFrmGet()
  loc_A63555: FLdPr var_94
  loc_A63558:  = Me.Fields
  loc_A6355D: FLdPr var_98
  loc_A63560: from_stack_2 = Me.Item(from_stack_1)
  loc_A63565: LitI2_Byte 0
  loc_A63567: LitVar_Missing var_DC
  loc_A6356A: LitI2_Byte 0
  loc_A6356C: FLdZeroAd var_AC
  loc_A6356F: CVarAd
  loc_A63573: PopAdLdVar
  loc_A63574: FMemLdRf unk_4B9C29
  loc_A63579: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6357E: FFreeAd var_94 = ""
  loc_A63585: FFreeVar var_BC = ""
  loc_A6358C: FLdRfVar var_AC
  loc_A6358F: LitVarStr var_A8, "NumeMoba"
  loc_A63594: PopAdLdVar
  loc_A63595: FLdRfVar var_98
  loc_A63598: FLdRfVar var_94
  loc_A6359B: FLdPr Me
  loc_A6359E: MemLdRfVar from_stack_1.global_76
  loc_A635A1: NewIfNullPr clsbase
  loc_A635A4: from_stack_1v = clsbase.RsFrmGet()
  loc_A635A9: FLdPr var_94
  loc_A635AC:  = Me.Fields
  loc_A635B1: FLdPr var_98
  loc_A635B4: from_stack_2 = Me.Item(from_stack_1)
  loc_A635B9: LitI2_Byte 0
  loc_A635BB: LitVar_Missing var_DC
  loc_A635BE: LitI2_Byte 0
  loc_A635C0: FLdZeroAd var_AC
  loc_A635C3: CVarAd
  loc_A635C7: PopAdLdVar
  loc_A635C8: FMemLdRf unk_4B9C29
  loc_A635CD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A635D2: FFreeAd var_94 = ""
  loc_A635D9: FFreeVar var_BC = ""
  loc_A635E0: FLdRfVar var_DE
  loc_A635E3: FLdPr Me
  loc_A635E6: VCallAd Control_ID_chkMostrarInterbanking
  loc_A635E9: FStAdFunc var_94
  loc_A635EC: FLdPr var_94
  loc_A635EF:  = Me.Value
  loc_A635F4: FLdI2 var_DE
  loc_A635F7: CI4UI1
  loc_A635F8: LitI4 1
  loc_A635FD: EqI4
  loc_A635FE: FFree1Ad var_94
  loc_A63601: BranchF loc_A63658
  loc_A63604: FLdRfVar var_AC
  loc_A63607: LitVarStr var_A8, "InteMoba"
  loc_A6360C: PopAdLdVar
  loc_A6360D: FLdRfVar var_98
  loc_A63610: FLdRfVar var_94
  loc_A63613: FLdPr Me
  loc_A63616: MemLdRfVar from_stack_1.global_76
  loc_A63619: NewIfNullPr clsbase
  loc_A6361C: from_stack_1v = clsbase.RsFrmGet()
  loc_A63621: FLdPr var_94
  loc_A63624:  = Me.Fields
  loc_A63629: FLdPr var_98
  loc_A6362C: from_stack_2 = Me.Item(from_stack_1)
  loc_A63631: LitI2_Byte 0
  loc_A63633: LitVar_Missing var_DC
  loc_A63636: LitI2_Byte 0
  loc_A63638: FLdZeroAd var_AC
  loc_A6363B: CVarAd
  loc_A6363F: PopAdLdVar
  loc_A63640: FMemLdRf unk_4B9C29
  loc_A63645: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6364A: FFreeAd var_94 = ""
  loc_A63651: FFreeVar var_BC = ""
  loc_A63658: FLdRfVar var_AC
  loc_A6365B: LitVarStr var_A8, "NumeOrpa"
  loc_A63660: PopAdLdVar
  loc_A63661: FLdRfVar var_98
  loc_A63664: FLdRfVar var_94
  loc_A63667: FLdPr Me
  loc_A6366A: MemLdRfVar from_stack_1.global_76
  loc_A6366D: NewIfNullPr clsbase
  loc_A63670: from_stack_1v = clsbase.RsFrmGet()
  loc_A63675: FLdPr var_94
  loc_A63678:  = Me.Fields
  loc_A6367D: FLdPr var_98
  loc_A63680: from_stack_2 = Me.Item(from_stack_1)
  loc_A63685: LitI2_Byte 0
  loc_A63687: LitVar_Missing var_DC
  loc_A6368A: LitI2_Byte 0
  loc_A6368C: FLdZeroAd var_AC
  loc_A6368F: CVarAd
  loc_A63693: PopAdLdVar
  loc_A63694: FMemLdRf unk_4B9C29
  loc_A63699: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6369E: FFreeAd var_94 = ""
  loc_A636A5: FFreeVar var_BC = ""
  loc_A636AC: FLdRfVar var_AC
  loc_A636AF: LitVarStr var_A8, "DetaMoba"
  loc_A636B4: PopAdLdVar
  loc_A636B5: FLdRfVar var_98
  loc_A636B8: FLdRfVar var_94
  loc_A636BB: FLdPr Me
  loc_A636BE: MemLdRfVar from_stack_1.global_76
  loc_A636C1: NewIfNullPr clsbase
  loc_A636C4: from_stack_1v = clsbase.RsFrmGet()
  loc_A636C9: FLdPr var_94
  loc_A636CC:  = Me.Fields
  loc_A636D1: FLdPr var_98
  loc_A636D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A636D9: LitI2_Byte 0
  loc_A636DB: LitVar_Missing var_DC
  loc_A636DE: LitI2_Byte 0
  loc_A636E0: FLdZeroAd var_AC
  loc_A636E3: CVarAd
  loc_A636E7: PopAdLdVar
  loc_A636E8: FMemLdRf unk_4B9C29
  loc_A636ED: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A636F2: FFreeAd var_94 = ""
  loc_A636F9: FFreeVar var_BC = ""
  loc_A63700: Call Proc_183_32_A9EA38()
  loc_A63705: LitI2_Byte 1
  loc_A63707: PopTmpLdAd2 var_DE
  loc_A6370A: FLdPr Me
  loc_A6370D: MemLdRfVar from_stack_1.global_76
  loc_A63710: NewIfNullPr clsbase
  loc_A63713: Call clsbase.Move(from_stack_1v)
  loc_A63718: LitI4 0
  loc_A6371D: FStR4 var_90
  loc_A63720: AryUnlock
  loc_A63723: AryUnlock
  loc_A63726: ExitProcHresult
  loc_A63727: EqI4
End Function

Private Function Proc_183_32_A9EA38() 'A9EA38
  'Data Table: 4B9CB8
  loc_A9E560: FLdPr Me
  loc_A9E563: MemLdI2 global_104
  loc_A9E566: CI4UI1
  loc_A9E567: FLdPr Me
  loc_A9E56A: MemLdStr global_84
  loc_A9E56D: AryLock
  loc_A9E570: Ary1LdRf
  loc_A9E571: FStR4 var_90
  loc_A9E574: FLdRfVar var_BC
  loc_A9E577: FLdRfVar var_AC
  loc_A9E57A: LitVarStr var_A8, "DebeMoba"
  loc_A9E57F: PopAdLdVar
  loc_A9E580: FLdRfVar var_98
  loc_A9E583: FLdRfVar var_94
  loc_A9E586: FLdPr Me
  loc_A9E589: MemLdRfVar from_stack_1.global_76
  loc_A9E58C: NewIfNullPr clsbase
  loc_A9E58F: from_stack_1v = clsbase.RsFrmGet()
  loc_A9E594: FLdPr var_94
  loc_A9E597:  = Me.Fields
  loc_A9E59C: FLdPr var_98
  loc_A9E59F: from_stack_2 = Me.Item(from_stack_1)
  loc_A9E5A4: FLdPr var_AC
  loc_A9E5A7:  = Me.Value
  loc_A9E5AC: FLdRfVar var_BC
  loc_A9E5AF: LitVarI2 var_CC, 0
  loc_A9E5B4: HardType
  loc_A9E5B5: NeVarBool
  loc_A9E5B7: FFreeAd var_94 = "": var_98 = ""
  loc_A9E5C0: FFree1Var var_BC = ""
  loc_A9E5C3: BranchF loc_A9E6B2
  loc_A9E5C6: FLdRfVar var_AC
  loc_A9E5C9: LitVarStr var_A8, "DebeMoba"
  loc_A9E5CE: PopAdLdVar
  loc_A9E5CF: FLdRfVar var_98
  loc_A9E5D2: FLdRfVar var_94
  loc_A9E5D5: FLdPr Me
  loc_A9E5D8: MemLdRfVar from_stack_1.global_76
  loc_A9E5DB: NewIfNullPr clsbase
  loc_A9E5DE: from_stack_1v = clsbase.RsFrmGet()
  loc_A9E5E3: FLdPr var_94
  loc_A9E5E6:  = Me.Fields
  loc_A9E5EB: FLdPr var_98
  loc_A9E5EE: from_stack_2 = Me.Item(from_stack_1)
  loc_A9E5F3: LitI2_Byte 0
  loc_A9E5F5: FLdPr Me
  loc_A9E5F8: MemLdRfVar from_stack_1.global_92
  loc_A9E5FB: CVarRef
  loc_A9E600: LitI2_Byte &HFF
  loc_A9E602: FLdZeroAd var_AC
  loc_A9E605: CVarAd
  loc_A9E609: PopAdLdVar
  loc_A9E60A: FLdPr Me
  loc_A9E60D: MemLdI2 global_106
  loc_A9E610: CI4UI1
  loc_A9E611: FMemLdR4 var_90(20)
  loc_A9E616: AryLock
  loc_A9E619: Ary1LdPr
  loc_A9E61A: MemLdRfVar from_stack_1.global_36
  loc_A9E61D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E622: AryUnlock
  loc_A9E625: FFreeAd var_94 = ""
  loc_A9E62C: FFree1Var var_BC = ""
  loc_A9E62F: LitI2_Byte 0
  loc_A9E631: LitVar_Missing var_BC
  loc_A9E634: LitI2_Byte 0
  loc_A9E636: LitVarStr var_A8, "&nbsp;"
  loc_A9E63B: PopAdLdVar
  loc_A9E63C: FLdPr Me
  loc_A9E63F: MemLdI2 global_106
  loc_A9E642: CI4UI1
  loc_A9E643: FMemLdR4 var_90(20)
  loc_A9E648: AryLock
  loc_A9E64B: Ary1LdPr
  loc_A9E64C: MemLdRfVar from_stack_1.global_40
  loc_A9E64F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E654: AryUnlock
  loc_A9E657: FFree1Var var_BC = ""
  loc_A9E65A: FLdRfVar var_AC
  loc_A9E65D: LitVarStr var_A8, "DebeMoba"
  loc_A9E662: PopAdLdVar
  loc_A9E663: FLdRfVar var_98
  loc_A9E666: FLdRfVar var_94
  loc_A9E669: FLdPr Me
  loc_A9E66C: MemLdRfVar from_stack_1.global_76
  loc_A9E66F: NewIfNullPr clsbase
  loc_A9E672: from_stack_1v = clsbase.RsFrmGet()
  loc_A9E677: FLdPr var_94
  loc_A9E67A:  = Me.Fields
  loc_A9E67F: FLdPr var_98
  loc_A9E682: from_stack_2 = Me.Item(from_stack_1)
  loc_A9E687: LitI2_Byte 0
  loc_A9E689: FMemLdRf unk_4B9C29
  loc_A9E68E: CVarRef
  loc_A9E693: LitI2_Byte &HFF
  loc_A9E695: FLdZeroAd var_AC
  loc_A9E698: CVarAd
  loc_A9E69C: PopAdLdVar
  loc_A9E69D: FLdRfVar var_88
  loc_A9E6A0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E6A5: FFreeAd var_94 = ""
  loc_A9E6AC: FFree1Var var_BC = ""
  loc_A9E6AF: Branch loc_A9E7CC
  loc_A9E6B2: FLdRfVar var_AC
  loc_A9E6B5: LitVarStr var_A8, "HabeMoba"
  loc_A9E6BA: PopAdLdVar
  loc_A9E6BB: FLdRfVar var_98
  loc_A9E6BE: FLdRfVar var_94
  loc_A9E6C1: FLdPr Me
  loc_A9E6C4: MemLdRfVar from_stack_1.global_76
  loc_A9E6C7: NewIfNullPr clsbase
  loc_A9E6CA: from_stack_1v = clsbase.RsFrmGet()
  loc_A9E6CF: FLdPr var_94
  loc_A9E6D2:  = Me.Fields
  loc_A9E6D7: FLdPr var_98
  loc_A9E6DA: from_stack_2 = Me.Item(from_stack_1)
  loc_A9E6DF: LitI2_Byte 0
  loc_A9E6E1: LitVar_Missing var_DC
  loc_A9E6E4: LitI2_Byte &HFF
  loc_A9E6E6: FLdZeroAd var_AC
  loc_A9E6E9: CVarAd
  loc_A9E6ED: PopAdLdVar
  loc_A9E6EE: FLdPr Me
  loc_A9E6F1: MemLdI2 global_106
  loc_A9E6F4: CI4UI1
  loc_A9E6F5: FMemLdR4 var_90(20)
  loc_A9E6FA: AryLock
  loc_A9E6FD: Ary1LdPr
  loc_A9E6FE: MemLdRfVar from_stack_1.global_40
  loc_A9E701: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E706: AryUnlock
  loc_A9E709: FFreeAd var_94 = ""
  loc_A9E710: FFreeVar var_BC = ""
  loc_A9E717: LitI2_Byte 0
  loc_A9E719: FLdPr Me
  loc_A9E71C: MemLdRfVar from_stack_1.global_92
  loc_A9E71F: CVarRef
  loc_A9E724: LitI2_Byte &HFF
  loc_A9E726: LitI2_Byte &HFF
  loc_A9E728: CR8I2
  loc_A9E729: FLdPr Me
  loc_A9E72C: MemLdI2 global_106
  loc_A9E72F: CI4UI1
  loc_A9E730: FMemLdR4 var_90(20)
  loc_A9E735: Ary1LdPr
  loc_A9E736: MemLdStr global_40
  loc_A9E739: CR8Str
  loc_A9E73B: MulR8
  loc_A9E73C: CVarR8
  loc_A9E740: PopAdLdVar
  loc_A9E741: FLdPr Me
  loc_A9E744: MemLdRfVar from_stack_1.global_108
  loc_A9E747: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E74C: LitI2_Byte 0
  loc_A9E74E: LitVar_Missing var_BC
  loc_A9E751: LitI2_Byte 0
  loc_A9E753: LitVarStr var_A8, "&nbsp;"
  loc_A9E758: PopAdLdVar
  loc_A9E759: FLdPr Me
  loc_A9E75C: MemLdI2 global_106
  loc_A9E75F: CI4UI1
  loc_A9E760: FMemLdR4 var_90(20)
  loc_A9E765: AryLock
  loc_A9E768: Ary1LdPr
  loc_A9E769: MemLdRfVar from_stack_1.global_36
  loc_A9E76C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E771: AryUnlock
  loc_A9E774: FFree1Var var_BC = ""
  loc_A9E777: FLdRfVar var_AC
  loc_A9E77A: LitVarStr var_A8, "HabeMoba"
  loc_A9E77F: PopAdLdVar
  loc_A9E780: FLdRfVar var_98
  loc_A9E783: FLdRfVar var_94
  loc_A9E786: FLdPr Me
  loc_A9E789: MemLdRfVar from_stack_1.global_76
  loc_A9E78C: NewIfNullPr clsbase
  loc_A9E78F: from_stack_1v = clsbase.RsFrmGet()
  loc_A9E794: FLdPr var_94
  loc_A9E797:  = Me.Fields
  loc_A9E79C: FLdPr var_98
  loc_A9E79F: from_stack_2 = Me.Item(from_stack_1)
  loc_A9E7A4: LitI2_Byte 0
  loc_A9E7A6: FMemLdRf unk_4B9C29
  loc_A9E7AB: CVarRef
  loc_A9E7B0: LitI2_Byte &HFF
  loc_A9E7B2: FLdZeroAd var_AC
  loc_A9E7B5: CVarAd
  loc_A9E7B9: PopAdLdVar
  loc_A9E7BA: FLdRfVar var_88
  loc_A9E7BD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E7C2: FFreeAd var_94 = ""
  loc_A9E7C9: FFree1Var var_BC = ""
  loc_A9E7CC: FLdRfVar var_AC
  loc_A9E7CF: LitVarStr var_A8, "ComiMoba"
  loc_A9E7D4: PopAdLdVar
  loc_A9E7D5: FLdRfVar var_98
  loc_A9E7D8: FLdRfVar var_94
  loc_A9E7DB: FLdPr Me
  loc_A9E7DE: MemLdRfVar from_stack_1.global_76
  loc_A9E7E1: NewIfNullPr clsbase
  loc_A9E7E4: from_stack_1v = clsbase.RsFrmGet()
  loc_A9E7E9: FLdPr var_94
  loc_A9E7EC:  = Me.Fields
  loc_A9E7F1: FLdPr var_98
  loc_A9E7F4: from_stack_2 = Me.Item(from_stack_1)
  loc_A9E7F9: LitI2_Byte 0
  loc_A9E7FB: FMemLdRf unk_4B9C29
  loc_A9E800: CVarRef
  loc_A9E805: LitI2_Byte &HFF
  loc_A9E807: FLdZeroAd var_AC
  loc_A9E80A: CVarAd
  loc_A9E80E: PopAdLdVar
  loc_A9E80F: FLdPr Me
  loc_A9E812: MemLdI2 global_106
  loc_A9E815: CI4UI1
  loc_A9E816: FMemLdR4 var_90(20)
  loc_A9E81B: AryLock
  loc_A9E81E: Ary1LdPr
  loc_A9E81F: MemLdRfVar from_stack_1.global_44
  loc_A9E822: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E827: AryUnlock
  loc_A9E82A: FFreeAd var_94 = ""
  loc_A9E831: FFree1Var var_BC = ""
  loc_A9E834: FLdRfVar var_AC
  loc_A9E837: LitVarStr var_A8, "IvaMoba"
  loc_A9E83C: PopAdLdVar
  loc_A9E83D: FLdRfVar var_98
  loc_A9E840: FLdRfVar var_94
  loc_A9E843: FLdPr Me
  loc_A9E846: MemLdRfVar from_stack_1.global_76
  loc_A9E849: NewIfNullPr clsbase
  loc_A9E84C: from_stack_1v = clsbase.RsFrmGet()
  loc_A9E851: FLdPr var_94
  loc_A9E854:  = Me.Fields
  loc_A9E859: FLdPr var_98
  loc_A9E85C: from_stack_2 = Me.Item(from_stack_1)
  loc_A9E861: LitI2_Byte 0
  loc_A9E863: FMemLdRf unk_4B9C29
  loc_A9E868: CVarRef
  loc_A9E86D: LitI2_Byte &HFF
  loc_A9E86F: FLdZeroAd var_AC
  loc_A9E872: CVarAd
  loc_A9E876: PopAdLdVar
  loc_A9E877: FLdPr Me
  loc_A9E87A: MemLdI2 global_106
  loc_A9E87D: CI4UI1
  loc_A9E87E: FMemLdR4 var_90(20)
  loc_A9E883: AryLock
  loc_A9E886: Ary1LdPr
  loc_A9E887: MemLdRfVar from_stack_1.global_48
  loc_A9E88A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E88F: AryUnlock
  loc_A9E892: FFreeAd var_94 = ""
  loc_A9E899: FFree1Var var_BC = ""
  loc_A9E89C: FLdPr Me
  loc_A9E89F: MemLdStr global_92
  loc_A9E8A2: CR8Str
  loc_A9E8A4: FnSgnR4
  loc_A9E8A6: FStI2 var_E2
  loc_A9E8A9: FLdI2 var_E2
  loc_A9E8AC: LitI2_Byte 1
  loc_A9E8AE: EqI2
  loc_A9E8AF: BranchF loc_A9E91C
  loc_A9E8B2: LitI2_Byte 0
  loc_A9E8B4: LitVar_Missing var_BC
  loc_A9E8B7: LitI2_Byte &HFF
  loc_A9E8B9: FLdPr Me
  loc_A9E8BC: MemLdStr global_92
  loc_A9E8BF: CVarStr var_A8
  loc_A9E8C2: PopAdLdVar
  loc_A9E8C3: FLdPr Me
  loc_A9E8C6: MemLdI2 global_106
  loc_A9E8C9: CI4UI1
  loc_A9E8CA: FMemLdR4 var_90(20)
  loc_A9E8CF: AryLock
  loc_A9E8D2: Ary1LdPr
  loc_A9E8D3: MemLdRfVar from_stack_1.htmFile
  loc_A9E8D6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E8DB: AryUnlock
  loc_A9E8DE: FFree1Var var_BC = ""
  loc_A9E8E1: LitI2_Byte 0
  loc_A9E8E3: LitVar_Missing var_BC
  loc_A9E8E6: LitI2_Byte &HFF
  loc_A9E8E8: FLdPr Me
  loc_A9E8EB: MemLdStr global_92
  loc_A9E8EE: CVarStr var_A8
  loc_A9E8F1: PopAdLdVar
  loc_A9E8F2: FMemLdRf unk_4B9C29
  loc_A9E8F7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E8FC: FFree1Var var_BC = ""
  loc_A9E8FF: LitI2_Byte 0
  loc_A9E901: LitVar_Missing var_BC
  loc_A9E904: LitI2_Byte 0
  loc_A9E906: LitVarStr var_A8, "&nbsp;"
  loc_A9E90B: PopAdLdVar
  loc_A9E90C: FMemLdRf unk_4B9C29
  loc_A9E911: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E916: FFree1Var var_BC = ""
  loc_A9E919: Branch loc_A9EA2A
  loc_A9E91C: FLdI2 var_E2
  loc_A9E91F: LitI2_Byte &HFF
  loc_A9E921: EqI2
  loc_A9E922: BranchF loc_A9E997
  loc_A9E925: LitI2_Byte 0
  loc_A9E927: LitVar_Missing var_BC
  loc_A9E92A: LitI2_Byte &HFF
  loc_A9E92C: FLdPr Me
  loc_A9E92F: MemLdStr global_92
  loc_A9E932: CR8Str
  loc_A9E934: FnAbsR4
  loc_A9E935: CVarR8
  loc_A9E939: PopAdLdVar
  loc_A9E93A: FLdPr Me
  loc_A9E93D: MemLdI2 global_106
  loc_A9E940: CI4UI1
  loc_A9E941: FMemLdR4 var_90(20)
  loc_A9E946: AryLock
  loc_A9E949: Ary1LdPr
  loc_A9E94A: MemLdRfVar from_stack_1.global_56
  loc_A9E94D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E952: AryUnlock
  loc_A9E955: FFree1Var var_BC = ""
  loc_A9E958: LitI2_Byte 0
  loc_A9E95A: LitVar_Missing var_BC
  loc_A9E95D: LitI2_Byte &HFF
  loc_A9E95F: FLdPr Me
  loc_A9E962: MemLdStr global_92
  loc_A9E965: CR8Str
  loc_A9E967: FnAbsR4
  loc_A9E968: CVarR8
  loc_A9E96C: PopAdLdVar
  loc_A9E96D: FMemLdRf unk_4B9C29
  loc_A9E972: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E977: FFree1Var var_BC = ""
  loc_A9E97A: LitI2_Byte 0
  loc_A9E97C: LitVar_Missing var_BC
  loc_A9E97F: LitI2_Byte 0
  loc_A9E981: LitVarStr var_A8, "&nbsp;"
  loc_A9E986: PopAdLdVar
  loc_A9E987: FMemLdRf unk_4B9C29
  loc_A9E98C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E991: FFree1Var var_BC = ""
  loc_A9E994: Branch loc_A9EA2A
  loc_A9E997: FLdI2 var_E2
  loc_A9E99A: LitI2_Byte 0
  loc_A9E99C: EqI2
  loc_A9E99D: BranchF loc_A9EA2A
  loc_A9E9A0: LitI2_Byte 0
  loc_A9E9A2: LitVar_Missing var_BC
  loc_A9E9A5: LitI2_Byte 0
  loc_A9E9A7: LitVarStr var_A8, "----"
  loc_A9E9AC: PopAdLdVar
  loc_A9E9AD: FMemLdRf unk_4B9C29
  loc_A9E9B2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E9B7: FFree1Var var_BC = ""
  loc_A9E9BA: LitI2_Byte 0
  loc_A9E9BC: LitVar_Missing var_BC
  loc_A9E9BF: LitI2_Byte 0
  loc_A9E9C1: LitVarStr var_A8, "----"
  loc_A9E9C6: PopAdLdVar
  loc_A9E9C7: FMemLdRf unk_4B9C29
  loc_A9E9CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E9D1: FFree1Var var_BC = ""
  loc_A9E9D4: LitI2_Byte 0
  loc_A9E9D6: LitVar_Missing var_BC
  loc_A9E9D9: LitI2_Byte 0
  loc_A9E9DB: LitVarStr var_A8, "----"
  loc_A9E9E0: PopAdLdVar
  loc_A9E9E1: FLdPr Me
  loc_A9E9E4: MemLdI2 global_106
  loc_A9E9E7: CI4UI1
  loc_A9E9E8: FMemLdR4 var_90(20)
  loc_A9E9ED: AryLock
  loc_A9E9F0: Ary1LdPr
  loc_A9E9F1: MemLdRfVar from_stack_1.htmFile
  loc_A9E9F4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9E9F9: AryUnlock
  loc_A9E9FC: FFree1Var var_BC = ""
  loc_A9E9FF: LitI2_Byte 0
  loc_A9EA01: LitVar_Missing var_BC
  loc_A9EA04: LitI2_Byte 0
  loc_A9EA06: LitVarStr var_A8, "----"
  loc_A9EA0B: PopAdLdVar
  loc_A9EA0C: FLdPr Me
  loc_A9EA0F: MemLdI2 global_106
  loc_A9EA12: CI4UI1
  loc_A9EA13: FMemLdR4 var_90(20)
  loc_A9EA18: AryLock
  loc_A9EA1B: Ary1LdPr
  loc_A9EA1C: MemLdRfVar from_stack_1.global_56
  loc_A9EA1F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9EA24: AryUnlock
  loc_A9EA27: FFree1Var var_BC = ""
  loc_A9EA2A: LitI4 0
  loc_A9EA2F: FStR4 var_90
  loc_A9EA32: AryUnlock
  loc_A9EA35: ExitProcHresult
End Function

Private Function Proc_183_33_AA88E0() 'AA88E0
  'Data Table: 4B9CB8
  loc_AA83BC: LitVarStr var_94, "<html>"
  loc_AA83C1: PopAdLdVar
  loc_AA83C2: FLdPr Me
  loc_AA83C5: MemLdRfVar from_stack_1.htmFile
  loc_AA83C8: LdPrVar
  loc_AA83CA: LateMemCall
  loc_AA83D0: LitVarStr var_94, "<head>"
  loc_AA83D5: PopAdLdVar
  loc_AA83D6: FLdPr Me
  loc_AA83D9: MemLdRfVar from_stack_1.htmFile
  loc_AA83DC: LdPrVar
  loc_AA83DE: LateMemCall
  loc_AA83E4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AA83E9: PopAdLdVar
  loc_AA83EA: FLdPr Me
  loc_AA83ED: MemLdRfVar from_stack_1.htmFile
  loc_AA83F0: LdPrVar
  loc_AA83F2: LateMemCall
  loc_AA83F8: LitStr "<title>"
  loc_AA83FB: FLdRfVar var_A8
  loc_AA83FE: FLdPr Me
  loc_AA8401:  = Me.Caption
  loc_AA8406: ILdRf var_A8
  loc_AA8409: ConcatStr
  loc_AA840A: FStStrNoPop var_AC
  loc_AA840D: LitStr "</title>"
  loc_AA8410: ConcatStr
  loc_AA8411: CVarStr var_BC
  loc_AA8414: PopAdLdVar
  loc_AA8415: FLdPr Me
  loc_AA8418: MemLdRfVar from_stack_1.htmFile
  loc_AA841B: LdPrVar
  loc_AA841D: LateMemCall
  loc_AA8423: FFreeStr var_A8 = ""
  loc_AA842A: FFree1Var var_BC = ""
  loc_AA842D: LitStr vbNullString
  loc_AA8430: ILdRf Me
  loc_AA8433: CastAd
  loc_AA8436: FStAdFunc var_C0
  loc_AA8439: FLdRfVar var_C0
  loc_AA843C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AA8441: FFree1Ad var_C0
  loc_AA8444: LitStr "Municipalidad de Guaymallén"
  loc_AA8447: LitStr "Municipalidad de Maipú"
  loc_AA844A: EqStr
  loc_AA844C: BranchF loc_AA847F
  loc_AA844F: LitI4 0
  loc_AA8454: FStStrCopy var_AC
  loc_AA8457: FLdRfVar var_AC
  loc_AA845A: LitI4 0
  loc_AA845F: FStStrCopy var_A8
  loc_AA8462: FLdRfVar var_A8
  loc_AA8465: LitI2_Byte 0
  loc_AA8467: PopTmpLdAd2 var_C2
  loc_AA846A: FLdPr Me
  loc_AA846D: MemLdRfVar from_stack_1.htmFile
  loc_AA8470: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AA8475: FFreeStr var_A8 = ""
  loc_AA847C: Branch loc_AA84AC
  loc_AA847F: LitI4 0
  loc_AA8484: FStStrCopy var_AC
  loc_AA8487: FLdRfVar var_AC
  loc_AA848A: LitI4 0
  loc_AA848F: FStStrCopy var_A8
  loc_AA8492: FLdRfVar var_A8
  loc_AA8495: LitI2_Byte &HFF
  loc_AA8497: PopTmpLdAd2 var_C2
  loc_AA849A: FLdPr Me
  loc_AA849D: MemLdRfVar from_stack_1.htmFile
  loc_AA84A0: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AA84A5: FFreeStr var_A8 = ""
  loc_AA84AC: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AA84B1: PopAdLdVar
  loc_AA84B2: FLdPr Me
  loc_AA84B5: MemLdRfVar from_stack_1.htmFile
  loc_AA84B8: LdPrVar
  loc_AA84BA: LateMemCall
  loc_AA84C0: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA84C5: PopAdLdVar
  loc_AA84C6: FLdPr Me
  loc_AA84C9: MemLdRfVar from_stack_1.htmFile
  loc_AA84CC: LdPrVar
  loc_AA84CE: LateMemCall
  loc_AA84D4: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><p>"
  loc_AA84D9: PopAdLdVar
  loc_AA84DA: FLdPr Me
  loc_AA84DD: MemLdRfVar from_stack_1.htmFile
  loc_AA84E0: LdPrVar
  loc_AA84E2: LateMemCall
  loc_AA84E8: FLdPr Me
  loc_AA84EB: MemLdI2 bLogos
  loc_AA84EE: BranchF loc_AA8505
  loc_AA84F1: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AA84F6: PopAdLdVar
  loc_AA84F7: FLdPr Me
  loc_AA84FA: MemLdRfVar from_stack_1.htmFile
  loc_AA84FD: LdPrVar
  loc_AA84FF: LateMemCall
  loc_AA8505: LitVarStr var_A4, "    <br><p>"
  loc_AA850A: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AA850F: FStVarCopyObj var_BC
  loc_AA8512: FLdRfVar var_BC
  loc_AA8515: FLdRfVar var_D4
  loc_AA8518: ImpAdCallFPR4  = Ucase()
  loc_AA851D: FLdRfVar var_D4
  loc_AA8520: ConcatVar var_E4
  loc_AA8524: LitVarStr var_F4, "</p>"
  loc_AA8529: ConcatVar var_104
  loc_AA852D: PopAdLdVar
  loc_AA852E: FLdPr Me
  loc_AA8531: MemLdRfVar from_stack_1.htmFile
  loc_AA8534: LdPrVar
  loc_AA8536: LateMemCall
  loc_AA853C: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AA8547: LitStr "    <p>"
  loc_AA854A: FLdRfVar var_A8
  loc_AA854D: FLdPr Me
  loc_AA8550:  = Me.Caption
  loc_AA8555: ILdRf var_A8
  loc_AA8558: ConcatStr
  loc_AA8559: FStStrNoPop var_AC
  loc_AA855C: LitStr "</p></th>"
  loc_AA855F: ConcatStr
  loc_AA8560: CVarStr var_BC
  loc_AA8563: PopAdLdVar
  loc_AA8564: FLdPr Me
  loc_AA8567: MemLdRfVar from_stack_1.htmFile
  loc_AA856A: LdPrVar
  loc_AA856C: LateMemCall
  loc_AA8572: FFreeStr var_A8 = ""
  loc_AA8579: FFree1Var var_BC = ""
  loc_AA857C: LitVarStr var_94, "  </tr>"
  loc_AA8581: PopAdLdVar
  loc_AA8582: FLdPr Me
  loc_AA8585: MemLdRfVar from_stack_1.htmFile
  loc_AA8588: LdPrVar
  loc_AA858A: LateMemCall
  loc_AA8590: LitVarStr var_94, "  <tr>"
  loc_AA8595: PopAdLdVar
  loc_AA8596: FLdPr Me
  loc_AA8599: MemLdRfVar from_stack_1.htmFile
  loc_AA859C: LdPrVar
  loc_AA859E: LateMemCall
  loc_AA85A4: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_AA85A9: PopAdLdVar
  loc_AA85AA: FLdPr Me
  loc_AA85AD: MemLdRfVar from_stack_1.htmFile
  loc_AA85B0: LdPrVar
  loc_AA85B2: LateMemCall
  loc_AA85B8: LitVarStr var_94, "  </tr>"
  loc_AA85BD: PopAdLdVar
  loc_AA85BE: FLdPr Me
  loc_AA85C1: MemLdRfVar from_stack_1.htmFile
  loc_AA85C4: LdPrVar
  loc_AA85C6: LateMemCall
  loc_AA85CC: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AA85D1: PopAdLdVar
  loc_AA85D2: FLdPr Me
  loc_AA85D5: MemLdRfVar from_stack_1.htmFile
  loc_AA85D8: LdPrVar
  loc_AA85DA: LateMemCall
  loc_AA85E0: LitVarStr var_94, "    <th align=""left"">"
  loc_AA85E5: PopAdLdVar
  loc_AA85E6: FLdPr Me
  loc_AA85E9: MemLdRfVar from_stack_1.htmFile
  loc_AA85EC: LdPrVar
  loc_AA85EE: LateMemCall
  loc_AA85F4: LitStr "    Desde: <span class=""Normal"">"
  loc_AA85F7: FLdPr Me
  loc_AA85FA: VCallAd Control_ID_mskDesde
  loc_AA85FD: FStAdFunc var_C0
  loc_AA8600: FLdPr var_C0
  loc_AA8603: LateIdLdVar var_BC DispID_15 0
  loc_AA860A: CStrVarTmp
  loc_AA860B: FStStrNoPop var_A8
  loc_AA860E: ConcatStr
  loc_AA860F: FStStrNoPop var_AC
  loc_AA8612: LitStr "</span><br>"
  loc_AA8615: ConcatStr
  loc_AA8616: CVarStr var_D4
  loc_AA8619: PopAdLdVar
  loc_AA861A: FLdPr Me
  loc_AA861D: MemLdRfVar from_stack_1.htmFile
  loc_AA8620: LdPrVar
  loc_AA8622: LateMemCall
  loc_AA8628: FFreeStr var_A8 = ""
  loc_AA862F: FFree1Ad var_C0
  loc_AA8632: FFreeVar var_BC = ""
  loc_AA8639: LitStr "    Hasta: <span class=""Normal"">"
  loc_AA863C: FLdPr Me
  loc_AA863F: VCallAd Control_ID_mskHasta
  loc_AA8642: FStAdFunc var_C0
  loc_AA8645: FLdPr var_C0
  loc_AA8648: LateIdLdVar var_BC DispID_15 0
  loc_AA864F: CStrVarTmp
  loc_AA8650: FStStrNoPop var_A8
  loc_AA8653: ConcatStr
  loc_AA8654: FStStrNoPop var_AC
  loc_AA8657: LitStr "</span></th>"
  loc_AA865A: ConcatStr
  loc_AA865B: CVarStr var_D4
  loc_AA865E: PopAdLdVar
  loc_AA865F: FLdPr Me
  loc_AA8662: MemLdRfVar from_stack_1.htmFile
  loc_AA8665: LdPrVar
  loc_AA8667: LateMemCall
  loc_AA866D: FFreeStr var_A8 = ""
  loc_AA8674: FFree1Ad var_C0
  loc_AA8677: FFreeVar var_BC = ""
  loc_AA867E: LitVarStr var_94, "    <th>&nbsp;</th>"
  loc_AA8683: PopAdLdVar
  loc_AA8684: FLdPr Me
  loc_AA8687: MemLdRfVar from_stack_1.htmFile
  loc_AA868A: LdPrVar
  loc_AA868C: LateMemCall
  loc_AA8692: LitVarStr var_94, "    <th align=""left"" width=""25" & Chr(37) & """>"
  loc_AA8697: PopAdLdVar
  loc_AA8698: FLdPr Me
  loc_AA869B: MemLdRfVar from_stack_1.htmFile
  loc_AA869E: LdPrVar
  loc_AA86A0: LateMemCall
  loc_AA86A6: LitStr "    Tipo de movimiento: <span class=""Normal"">"
  loc_AA86A9: FLdRfVar var_A8
  loc_AA86AC: FLdPr Me
  loc_AA86AF: VCallAd Control_ID_cboCodiTimb
  loc_AA86B2: FStAdFunc var_C0
  loc_AA86B5: FLdPr var_C0
  loc_AA86B8:  = Me.Text
  loc_AA86BD: ILdRf var_A8
  loc_AA86C0: ConcatStr
  loc_AA86C1: FStStrNoPop var_AC
  loc_AA86C4: LitStr "</span>"
  loc_AA86C7: ConcatStr
  loc_AA86C8: CVarStr var_BC
  loc_AA86CB: PopAdLdVar
  loc_AA86CC: FLdPr Me
  loc_AA86CF: MemLdRfVar from_stack_1.htmFile
  loc_AA86D2: LdPrVar
  loc_AA86D4: LateMemCall
  loc_AA86DA: FFreeStr var_A8 = ""
  loc_AA86E1: FFree1Ad var_C0
  loc_AA86E4: FFree1Var var_BC = ""
  loc_AA86E7: LitStr "    <br>Conciliación: <span class=""Normal"">"
  loc_AA86EA: FLdRfVar var_A8
  loc_AA86ED: FLdPr Me
  loc_AA86F0: VCallAd Control_ID_cboConciliados
  loc_AA86F3: FStAdFunc var_C0
  loc_AA86F6: FLdPr var_C0
  loc_AA86F9:  = Me.Text
  loc_AA86FE: ILdRf var_A8
  loc_AA8701: ConcatStr
  loc_AA8702: FStStrNoPop var_AC
  loc_AA8705: LitStr "</span>"
  loc_AA8708: ConcatStr
  loc_AA8709: CVarStr var_BC
  loc_AA870C: PopAdLdVar
  loc_AA870D: FLdPr Me
  loc_AA8710: MemLdRfVar from_stack_1.htmFile
  loc_AA8713: LdPrVar
  loc_AA8715: LateMemCall
  loc_AA871B: FFreeStr var_A8 = ""
  loc_AA8722: FFree1Ad var_C0
  loc_AA8725: FFree1Var var_BC = ""
  loc_AA8728: LitVarStr var_94, "  </th></tr>"
  loc_AA872D: PopAdLdVar
  loc_AA872E: FLdPr Me
  loc_AA8731: MemLdRfVar from_stack_1.htmFile
  loc_AA8734: LdPrVar
  loc_AA8736: LateMemCall
  loc_AA873C: LitVarStr var_94, "</table>"
  loc_AA8741: PopAdLdVar
  loc_AA8742: FLdPr Me
  loc_AA8745: MemLdRfVar from_stack_1.htmFile
  loc_AA8748: LdPrVar
  loc_AA874A: LateMemCall
  loc_AA8750: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA8755: PopAdLdVar
  loc_AA8756: FLdPr Me
  loc_AA8759: MemLdRfVar from_stack_1.htmFile
  loc_AA875C: LdPrVar
  loc_AA875E: LateMemCall
  loc_AA8764: LitVarStr var_94, "  <THEAD>"
  loc_AA8769: PopAdLdVar
  loc_AA876A: FLdPr Me
  loc_AA876D: MemLdRfVar from_stack_1.htmFile
  loc_AA8770: LdPrVar
  loc_AA8772: LateMemCall
  loc_AA8778: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AA877D: PopAdLdVar
  loc_AA877E: FLdPr Me
  loc_AA8781: MemLdRfVar from_stack_1.htmFile
  loc_AA8784: LdPrVar
  loc_AA8786: LateMemCall
  loc_AA878C: LitVarStr var_94, "    <th>Fecha</th>"
  loc_AA8791: PopAdLdVar
  loc_AA8792: FLdPr Me
  loc_AA8795: MemLdRfVar from_stack_1.htmFile
  loc_AA8798: LdPrVar
  loc_AA879A: LateMemCall
  loc_AA87A0: LitVarStr var_94, "    <th>Fecha de conc.</th>"
  loc_AA87A5: PopAdLdVar
  loc_AA87A6: FLdPr Me
  loc_AA87A9: MemLdRfVar from_stack_1.htmFile
  loc_AA87AC: LdPrVar
  loc_AA87AE: LateMemCall
  loc_AA87B4: LitVarStr var_94, "    <th>Tipo de movimiento</th>"
  loc_AA87B9: PopAdLdVar
  loc_AA87BA: FLdPr Me
  loc_AA87BD: MemLdRfVar from_stack_1.htmFile
  loc_AA87C0: LdPrVar
  loc_AA87C2: LateMemCall
  loc_AA87C8: LitVarStr var_94, "    <th>Comprobante</th>"
  loc_AA87CD: PopAdLdVar
  loc_AA87CE: FLdPr Me
  loc_AA87D1: MemLdRfVar from_stack_1.htmFile
  loc_AA87D4: LdPrVar
  loc_AA87D6: LateMemCall
  loc_AA87DC: FLdRfVar var_C2
  loc_AA87DF: FLdPr Me
  loc_AA87E2: VCallAd Control_ID_chkMostrarInterbanking
  loc_AA87E5: FStAdFunc var_C0
  loc_AA87E8: FLdPr var_C0
  loc_AA87EB:  = Me.Value
  loc_AA87F0: FLdI2 var_C2
  loc_AA87F3: CI4UI1
  loc_AA87F4: LitI4 1
  loc_AA87F9: EqI4
  loc_AA87FA: FFree1Ad var_C0
  loc_AA87FD: BranchF loc_AA8814
  loc_AA8800: LitVarStr var_94, "    <th>InterBanking</th>"
  loc_AA8805: PopAdLdVar
  loc_AA8806: FLdPr Me
  loc_AA8809: MemLdRfVar from_stack_1.htmFile
  loc_AA880C: LdPrVar
  loc_AA880E: LateMemCall
  loc_AA8814: LitVarStr var_94, "    <th>O.P.</th>"
  loc_AA8819: PopAdLdVar
  loc_AA881A: FLdPr Me
  loc_AA881D: MemLdRfVar from_stack_1.htmFile
  loc_AA8820: LdPrVar
  loc_AA8822: LateMemCall
  loc_AA8828: LitVarStr var_94, "    <th>Detalle</th>"
  loc_AA882D: PopAdLdVar
  loc_AA882E: FLdPr Me
  loc_AA8831: MemLdRfVar from_stack_1.htmFile
  loc_AA8834: LdPrVar
  loc_AA8836: LateMemCall
  loc_AA883C: LitVarStr var_94, "    <th>Debe</th>"
  loc_AA8841: PopAdLdVar
  loc_AA8842: FLdPr Me
  loc_AA8845: MemLdRfVar from_stack_1.htmFile
  loc_AA8848: LdPrVar
  loc_AA884A: LateMemCall
  loc_AA8850: LitVarStr var_94, "    <th>Haber</th>"
  loc_AA8855: PopAdLdVar
  loc_AA8856: FLdPr Me
  loc_AA8859: MemLdRfVar from_stack_1.htmFile
  loc_AA885C: LdPrVar
  loc_AA885E: LateMemCall
  loc_AA8864: LitVarStr var_94, "    <th>Comisión</th>"
  loc_AA8869: PopAdLdVar
  loc_AA886A: FLdPr Me
  loc_AA886D: MemLdRfVar from_stack_1.htmFile
  loc_AA8870: LdPrVar
  loc_AA8872: LateMemCall
  loc_AA8878: LitVarStr var_94, "    <th>Iva</th>"
  loc_AA887D: PopAdLdVar
  loc_AA887E: FLdPr Me
  loc_AA8881: MemLdRfVar from_stack_1.htmFile
  loc_AA8884: LdPrVar
  loc_AA8886: LateMemCall
  loc_AA888C: LitVarStr var_94, "    <th>Deudor</th>"
  loc_AA8891: PopAdLdVar
  loc_AA8892: FLdPr Me
  loc_AA8895: MemLdRfVar from_stack_1.htmFile
  loc_AA8898: LdPrVar
  loc_AA889A: LateMemCall
  loc_AA88A0: LitVarStr var_94, "    <th>Acreedor</th>"
  loc_AA88A5: PopAdLdVar
  loc_AA88A6: FLdPr Me
  loc_AA88A9: MemLdRfVar from_stack_1.htmFile
  loc_AA88AC: LdPrVar
  loc_AA88AE: LateMemCall
  loc_AA88B4: LitVarStr var_94, "  </tr>"
  loc_AA88B9: PopAdLdVar
  loc_AA88BA: FLdPr Me
  loc_AA88BD: MemLdRfVar from_stack_1.htmFile
  loc_AA88C0: LdPrVar
  loc_AA88C2: LateMemCall
  loc_AA88C8: LitVarStr var_94, "  </THEAD>"
  loc_AA88CD: PopAdLdVar
  loc_AA88CE: FLdPr Me
  loc_AA88D1: MemLdRfVar from_stack_1.htmFile
  loc_AA88D4: LdPrVar
  loc_AA88D6: LateMemCall
  loc_AA88DC: ExitProcHresult
  loc_AA88DD: CStr2Ansi
End Function

Private Function Proc_183_34_9825B0() '9825B0
  'Data Table: 4B9CB8
  loc_982570: LitVarStr var_94, "</table>"
  loc_982575: PopAdLdVar
  loc_982576: FLdPr Me
  loc_982579: MemLdRfVar from_stack_1.htmFile
  loc_98257C: LdPrVar
  loc_98257E: LateMemCall
  loc_982584: LitVarStr var_94, "</body>"
  loc_982589: PopAdLdVar
  loc_98258A: FLdPr Me
  loc_98258D: MemLdRfVar from_stack_1.htmFile
  loc_982590: LdPrVar
  loc_982592: LateMemCall
  loc_982598: LitVarStr var_94, "</html>"
  loc_98259D: PopAdLdVar
  loc_98259E: FLdPr Me
  loc_9825A1: MemLdRfVar from_stack_1.htmFile
  loc_9825A4: LdPrVar
  loc_9825A6: LateMemCall
  loc_9825AC: ExitProcHresult
End Function
