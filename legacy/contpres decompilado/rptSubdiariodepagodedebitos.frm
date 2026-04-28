VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodepagodedebitos
  Caption = "Subdiario de pagos extrapresupuestarios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodepagodedebitos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9660
  ClientHeight = 4065
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3810
    Width = 9660
    Height = 255
    TabIndex = 20
    OleObjectBlob = "rptSubdiariodepagodedebitos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7440
    Top = 2520
    Width = 735
    Height = 615
    TabIndex = 18
    Cancel = -1  'True
    Picture = "rptSubdiariodepagodedebitos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodepagodedebitos.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2280
    Width = 3375
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 17
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2280
    Width = 3015
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9255
    Height = 2055
    TabIndex = 0
    Begin VB.CommandButton cmdCodiCuco
      Left = 3120
      Top = 1440
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptSubdiariodepagodedebitos.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2520
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptSubdiariodepagodedebitos.frx":0CFA
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodepagodedebitos.frx":123C
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 480
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1320
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptSubdiariodepagodedebitos.frx":177E
      Appearance = 0 'Flat
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiariodepagodedebitos.frx":1806
      Appearance = 0 'Flat
    End
    Begin MSMask.MaskEdBox mskCodiCuco
      Left = 1485
      Top = 1440
      Width = 1575
      Height = 285
      TabIndex = 9
      OleObjectBlob = "rptSubdiariodepagodedebitos.frx":188E
    End
    Begin VB.Label lblDetaCuco
      Left = 3645
      Top = 1440
      Width = 5535
      Height = 375
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 120
      Top = 1440
      Width = 1230
      Height = 195
      TabIndex = 8
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 720
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 720
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7560
    Top = 2760
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptSubdiariodepagodedebitos.frx":190E
  End
End

Attribute VB_Name = "rptSubdiariodepagodedebitos"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00583FA0
  bStruc(40) As Byte ' String fields: 10
End Type

Private Type UDT_2_00617B28
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub cmdCalHasta_Click() '97CC48
  'Data Table: 4770F4
  loc_97CC14: LitVar_Missing var_A4
  loc_97CC17: PopAdLdVar
  loc_97CC18: LitVarI4
  loc_97CC20: PopAdLdVar
  loc_97CC21: ImpAdLdRf MemVar_C3D9A8
  loc_97CC24: NewIfNullPr frmCalendario
  loc_97CC27: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CC2C: ImpAdLdRf MemVar_C3D038
  loc_97CC2F: CDargRef
  loc_97CC33: FLdPr Me
  loc_97CC36: VCallAd Control_ID_mskHasta
  loc_97CC39: FStAdFunc var_A8
  loc_97CC3C: FLdPr var_A8
  loc_97CC3F: LateIdSt
  loc_97CC44: FFree1Ad var_A8
  loc_97CC47: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '957030
  'Data Table: 4770F4
  loc_957018: ILdRf Me
  loc_95701B: CastAd
  loc_95701E: FStAdFunc var_88
  loc_957021: FLdRfVar var_88
  loc_957024: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_957029: FFree1Ad var_88
  loc_95702C: ExitProcHresult
  loc_95702D: ILdRf cmdPredeterminada_Click34
End Sub

Private Sub mskDesde_UnknownEvent_0 '9526B0
  'Data Table: 4770F4
  loc_95269C: FLdPr Me
  loc_95269F: VCallAd Control_ID_mskDesde
  loc_9526A2: CVarAd
  loc_9526A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9526AB: FFree1Var var_94 = ""
  loc_9526AE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C4BA8
  'Data Table: 4770F4
  loc_9C4AE4: FLdPr Me
  loc_9C4AE7: VCallAd Control_ID_mskDesde
  loc_9C4AEA: FStAdFunc var_88
  loc_9C4AED: FLdPr var_88
  loc_9C4AF0: LateIdLdVar var_98 DispID_22 0
  loc_9C4AF7: CStrVarTmp
  loc_9C4AF8: FStStrNoPop var_9C
  loc_9C4AFB: LitStr vbNullString
  loc_9C4AFE: NeStr
  loc_9C4B00: FFree1Str var_9C
  loc_9C4B03: FFree1Ad var_88
  loc_9C4B06: FFree1Var var_98 = ""
  loc_9C4B09: BranchF loc_9C4BA4
  loc_9C4B0C: FLdPr Me
  loc_9C4B0F: VCallAd Control_ID_mskDesde
  loc_9C4B12: FStAdFunc var_88
  loc_9C4B15: FLdPr var_88
  loc_9C4B18: LateIdLdVar var_98 DispID_15 0
  loc_9C4B1F: PopAd
  loc_9C4B21: FLdPr Me
  loc_9C4B24: VCallAd Control_ID_mskDesde
  loc_9C4B27: FStAdFunc var_AC
  loc_9C4B2A: LitI2_Byte &HFF
  loc_9C4B2C: PopTmpLdAd2 var_A2
  loc_9C4B2F: FLdZeroAd var_AC
  loc_9C4B32: FStAdFunc var_A0
  loc_9C4B35: FLdRfVar var_A0
  loc_9C4B38: LitStr vbNullString
  loc_9C4B3B: LitI2_Byte 0
  loc_9C4B3D: LitI2_Byte 0
  loc_9C4B3F: FLdRfVar var_98
  loc_9C4B42: CStrVarTmp
  loc_9C4B43: FStStrNoPop var_9C
  loc_9C4B46: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C4B4B: FStStrNoPop var_A8
  loc_9C4B4E: FLdPr Me
  loc_9C4B51: MemStStrCopy
  loc_9C4B55: FFreeStr var_9C = ""
  loc_9C4B5C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C4B65: FFree1Var var_98 = ""
  loc_9C4B68: FLdPr Me
  loc_9C4B6B: VCallAd Control_ID_mskDesde
  loc_9C4B6E: FStAdFunc var_B0
  loc_9C4B71: LitNothing
  loc_9C4B73: CastAd
  loc_9C4B76: FStAdFunc var_AC
  loc_9C4B79: FLdRfVar var_AC
  loc_9C4B7C: FLdZeroAd var_B0
  loc_9C4B7F: FStAdFuncNoPop
  loc_9C4B82: CastAd
  loc_9C4B85: FStAdFunc var_A0
  loc_9C4B88: FLdRfVar var_A0
  loc_9C4B8B: FLdPr Me
  loc_9C4B8E: MemLdRfVar from_stack_1.global_100
  loc_9C4B91: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C4B96: IStI2 arg_C
  loc_9C4B99: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C4BA4: ExitProcHresult
  loc_9C4BA5: MemStFPR4 global_837
End Function

Private Sub mskHasta_UnknownEvent_0 '9521A0
  'Data Table: 4770F4
  loc_95218C: FLdPr Me
  loc_95218F: VCallAd Control_ID_mskHasta
  loc_952192: CVarAd
  loc_952196: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95219B: FFree1Var var_94 = ""
  loc_95219E: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B25B4
  'Data Table: 4770F4
  loc_9B2518: FLdPr Me
  loc_9B251B: VCallAd Control_ID_mskHasta
  loc_9B251E: FStAdFunc var_88
  loc_9B2521: FLdPr var_88
  loc_9B2524: LateIdLdVar var_98 DispID_15 0
  loc_9B252B: PopAd
  loc_9B252D: FLdPr Me
  loc_9B2530: VCallAd Control_ID_mskHasta
  loc_9B2533: FStAdFunc var_AC
  loc_9B2536: LitI2_Byte &HFF
  loc_9B2538: PopTmpLdAd2 var_A2
  loc_9B253B: FLdZeroAd var_AC
  loc_9B253E: FStAdFunc var_A0
  loc_9B2541: FLdRfVar var_A0
  loc_9B2544: LitStr vbNullString
  loc_9B2547: LitI2_Byte 0
  loc_9B2549: LitI2_Byte 0
  loc_9B254B: FLdRfVar var_98
  loc_9B254E: CStrVarTmp
  loc_9B254F: FStStrNoPop var_9C
  loc_9B2552: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B2557: FStStrNoPop var_A8
  loc_9B255A: FLdPr Me
  loc_9B255D: MemStStrCopy
  loc_9B2561: FFreeStr var_9C = ""
  loc_9B2568: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2571: FFree1Var var_98 = ""
  loc_9B2574: FLdPr Me
  loc_9B2577: VCallAd Control_ID_mskHasta
  loc_9B257A: FStAdFunc var_B0
  loc_9B257D: LitNothing
  loc_9B257F: CastAd
  loc_9B2582: FStAdFunc var_AC
  loc_9B2585: FLdRfVar var_AC
  loc_9B2588: FLdZeroAd var_B0
  loc_9B258B: FStAdFuncNoPop
  loc_9B258E: CastAd
  loc_9B2591: FStAdFunc var_A0
  loc_9B2594: FLdRfVar var_A0
  loc_9B2597: FLdPr Me
  loc_9B259A: MemLdRfVar from_stack_1.global_100
  loc_9B259D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B25A2: IStI2 arg_C
  loc_9B25A5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B25B0: ExitProcHresult
  loc_9B25B1: FLdFPR8 arg_345
End Function

Private Sub cmdSalir_Click() '97B2FC
  'Data Table: 4770F4
  loc_97B2CC: LitVarStr var_94, "Cerrando..."
  loc_97B2D1: PopAdLdVar
  loc_97B2D2: FLdPr Me
  loc_97B2D5: VCallAd Control_ID_statusBar
  loc_97B2D8: FStAdFunc var_A8
  loc_97B2DB: FLdPr var_A8
  loc_97B2DE: LateIdSt
  loc_97B2E3: FFree1Ad var_A8
  loc_97B2E6: ILdRf Me
  loc_97B2E9: FStAdNoPop
  loc_97B2ED: ImpAdLdRf MemVar_C44F9C
  loc_97B2F0: NewIfNullPr Me
  loc_97B2F3: Me.Global.Unload from_stack_1
  loc_97B2F8: FFree1Ad var_A8
  loc_97B2FB: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '989C44
  'Data Table: 4770F4
  loc_989C0C: FLdPr Me
  loc_989C0F: VCallAd Control_ID_statusBar
  loc_989C12: FStAdFunc var_88
  loc_989C15: FLdPr var_88
  loc_989C18: LateIdLdVar var_98 DispID_1 0
  loc_989C1F: CStrVarTmp
  loc_989C20: CVarStr var_A8
  loc_989C23: PopAdLdVar
  loc_989C24: FLdPr Me
  loc_989C27: VCallAd Control_ID_statusBar
  loc_989C2A: FStAdFunc var_BC
  loc_989C2D: FLdPr var_BC
  loc_989C30: LateIdSt
  loc_989C35: FFreeAd var_88 = ""
  loc_989C3C: FFreeVar var_98 = ""
  loc_989C43: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95481C
  'Data Table: 4770F4
  loc_954804: LitI2_Byte 0
  loc_954806: ILdRf Me
  loc_954809: CastAd
  loc_95480C: FStAdFunc var_88
  loc_95480F: FLdRfVar var_88
  loc_954812: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_954817: FFree1Ad var_88
  loc_95481A: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96A36C
  'Data Table: 4770F4
  loc_96A350: LitI2_Byte &HFF
  loc_96A352: LitI2_Byte 0
  loc_96A354: ILdRf Me
  loc_96A357: CastAd
  loc_96A35A: FStAdFunc var_88
  loc_96A35D: FLdRfVar var_88
  loc_96A360: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96A365: FFree1Ad var_88
  loc_96A368: ExitProcHresult
  loc_96A369: FStFPR8 arg_3AD
End Sub

Private Sub cmdPrevia_Click() '957114
  'Data Table: 4770F4
  loc_9570FC: ILdRf Me
  loc_9570FF: CastAd
  loc_957102: FStAdFunc var_88
  loc_957105: FLdRfVar var_88
  loc_957108: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95710D: FFree1Ad var_88
  loc_957110: ExitProcHresult
  loc_957111: IDvI2
  loc_957112: MulR8
End Sub

Private Sub Form_Load() '96BB3C
  'Data Table: 4770F4
  loc_96BB1C: LitI2_Byte &HFF
  loc_96BB1E: ImpAdStI2 MemVar_C3D840
  loc_96BB21: ILdRf Me
  loc_96BB24: CastAd
  loc_96BB27: FStAdFunc var_88
  loc_96BB2A: FLdRfVar var_88
  loc_96BB2D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96BB32: FFree1Ad var_88
  loc_96BB35: Call cmdNueva_Click()
  loc_96BB3A: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '954900
  'Data Table: 4770F4
  loc_9548E8: FLdPr Me
  loc_9548EB: VCallAd Control_ID_wbbReporte
  loc_9548EE: FStAdFunc var_88
  loc_9548F1: FLdRfVar var_88
  loc_9548F4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9548F9: FFree1Ad var_88
  loc_9548FC: ExitProcHresult
  loc_9548FD: NotI4
  loc_9548FE: CI4UI1
End Sub

Private Sub cmdCodiCuco_Click() 'A07450
  'Data Table: 4770F4
  loc_A072FC: FLdPr Me
  loc_A072FF: VCallAd Control_ID_mskDesde
  loc_A07302: FStAdFunc var_88
  loc_A07305: FLdPr var_88
  loc_A07308: LateIdLdVar var_98 DispID_15 0
  loc_A0730F: CStrVarTmp
  loc_A07310: CVarStr var_A8
  loc_A07313: FLdRfVar var_B8
  loc_A07316: ImpAdCallFPR4  = Year()
  loc_A0731B: FLdRfVar var_B8
  loc_A0731E: CI2Var
  loc_A0731F: ImpAdLdRf MemVar_C3D6C0
  loc_A07322: NewIfNullPr bscCuentaContable
  loc_A07325: Call bscCuentaContable.iPeriInfoPut(from_stack_1v)
  loc_A0732A: FFree1Ad var_88
  loc_A0732D: FFreeVar var_98 = "": var_A8 = ""
  loc_A07336: LitVar_Missing var_D8
  loc_A07339: PopAdLdVar
  loc_A0733A: LitVarI4
  loc_A07342: PopAdLdVar
  loc_A07343: ImpAdLdRf MemVar_C3D6C0
  loc_A07346: NewIfNullPr bscCuentaContable
  loc_A07349: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_A0734E: FLdRfVar var_DC
  loc_A07351: FLdRfVar var_88
  loc_A07354: ImpAdLdRf MemVar_C3D6C0
  loc_A07357: NewIfNullPr bscCuentaContable
  loc_A0735A: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A0735F: FLdPr var_88
  loc_A07362: from_stack_1 = clsbase.RecordCount
  loc_A07367: ILdRf var_DC
  loc_A0736A: LitI4 0
  loc_A0736F: GtI4
  loc_A07370: FFree1Ad var_88
  loc_A07373: BranchF loc_A0744E
  loc_A07376: FLdRfVar var_98
  loc_A07379: FLdRfVar var_E8
  loc_A0737C: LitVarStr var_C8, "CodiCuco"
  loc_A07381: PopAdLdVar
  loc_A07382: FLdRfVar var_E4
  loc_A07385: FLdRfVar var_E0
  loc_A07388: FLdRfVar var_88
  loc_A0738B: ImpAdLdRf MemVar_C3D6C0
  loc_A0738E: NewIfNullPr bscCuentaContable
  loc_A07391: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A07396: FLdPr var_88
  loc_A07399: from_stack_1v = clsbase.RsFrmGet()
  loc_A0739E: FLdPr var_E0
  loc_A073A1:  = Me.Fields
  loc_A073A6: FLdPr var_E4
  loc_A073A9: from_stack_2 = Me.Item(from_stack_1)
  loc_A073AE: FLdPr var_E8
  loc_A073B1:  = Me.Value
  loc_A073B6: FLdRfVar var_98
  loc_A073B9: CStrVarTmp
  loc_A073BA: CVarStr var_A8
  loc_A073BD: PopAdLdVar
  loc_A073BE: FLdPr Me
  loc_A073C1: VCallAd Control_ID_mskCodiCuco
  loc_A073C4: FStAdFunc var_EC
  loc_A073C7: FLdPr var_EC
  loc_A073CA: LateIdSt
  loc_A073CF: FFreeAd var_88 = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A073DC: FFreeVar var_98 = ""
  loc_A073E3: FLdRfVar var_98
  loc_A073E6: FLdRfVar var_E8
  loc_A073E9: LitVarStr var_C8, "DetaCuco"
  loc_A073EE: PopAdLdVar
  loc_A073EF: FLdRfVar var_E4
  loc_A073F2: FLdRfVar var_E0
  loc_A073F5: FLdRfVar var_88
  loc_A073F8: ImpAdLdRf MemVar_C3D6C0
  loc_A073FB: NewIfNullPr bscCuentaContable
  loc_A073FE: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A07403: FLdPr var_88
  loc_A07406: from_stack_1v = clsbase.RsFrmGet()
  loc_A0740B: FLdPr var_E0
  loc_A0740E:  = Me.Fields
  loc_A07413: FLdPr var_E4
  loc_A07416: from_stack_2 = Me.Item(from_stack_1)
  loc_A0741B: FLdPr var_E8
  loc_A0741E:  = Me.Value
  loc_A07423: FLdRfVar var_98
  loc_A07426: CStrVarTmp
  loc_A07427: FStStrNoPop var_F0
  loc_A0742A: FLdPr Me
  loc_A0742D: VCallAd Control_ID_lblDetaCuco
  loc_A07430: FStAdFunc var_EC
  loc_A07433: FLdPr var_EC
  loc_A07436: Me.Caption = from_stack_1
  loc_A0743B: FFree1Str var_F0
  loc_A0743E: FFreeAd var_88 = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A0744B: FFree1Var var_98 = ""
  loc_A0744E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C9FA8
  'Data Table: 4770F4
  loc_9C9ED4: LitI2_Byte 0
  loc_9C9ED6: FLdPr Me
  loc_9C9ED9: MemStI2 bGenerado
  loc_9C9EDC: LitI2_Byte &HFF
  loc_9C9EDE: FLdPr Me
  loc_9C9EE1: MemStI2 bLogos
  loc_9C9EE4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C9EE9: LitI2_Byte 0
  loc_9C9EEB: PopTmpLdAd2 var_86
  loc_9C9EEE: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9C9EF3: CVarDate var_A8
  loc_9C9EF7: FLdRfVar var_B8
  loc_9C9EFA: ImpAdCallFPR4  = Year()
  loc_9C9EFF: LitI2_Byte 0
  loc_9C9F01: PopTmpLdAd2 var_BA
  loc_9C9F04: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9C9F09: CVarDate var_DC
  loc_9C9F0D: FLdRfVar var_EC
  loc_9C9F10: ImpAdCallFPR4  = Month()
  loc_9C9F15: LitI2_Byte 1
  loc_9C9F17: FLdRfVar var_EC
  loc_9C9F1A: CI2Var
  loc_9C9F1B: FLdRfVar var_B8
  loc_9C9F1E: CI2Var
  loc_9C9F1F: FLdRfVar var_FC
  loc_9C9F22: ImpAdCallFPR4  = DateSerial(, , )
  loc_9C9F27: FLdRfVar var_FC
  loc_9C9F2A: CStrVarTmp
  loc_9C9F2B: CVarStr var_10C
  loc_9C9F2E: PopAdLdVar
  loc_9C9F2F: FLdPr Me
  loc_9C9F32: VCallAd Control_ID_mskDesde
  loc_9C9F35: FStAdFunc var_120
  loc_9C9F38: FLdPr var_120
  loc_9C9F3B: LateIdSt
  loc_9C9F40: FFree1Ad var_120
  loc_9C9F43: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9C9F52: ImpAdLdFPR8 MemVar_C3D04C
  loc_9C9F55: CStrDate
  loc_9C9F57: CVarStr var_A8
  loc_9C9F5A: PopAdLdVar
  loc_9C9F5B: FLdPr Me
  loc_9C9F5E: VCallAd Control_ID_mskHasta
  loc_9C9F61: FStAdFunc var_120
  loc_9C9F64: FLdPr var_120
  loc_9C9F67: LateIdSt
  loc_9C9F6C: FFree1Ad var_120
  loc_9C9F6F: FFree1Var var_A8 = ""
  loc_9C9F72: LitVarStr var_98, vbNullString
  loc_9C9F77: PopAdLdVar
  loc_9C9F78: FLdPr Me
  loc_9C9F7B: VCallAd Control_ID_mskCodiCuco
  loc_9C9F7E: FStAdFunc var_120
  loc_9C9F81: FLdPr var_120
  loc_9C9F84: LateIdSt
  loc_9C9F89: FFree1Ad var_120
  loc_9C9F8C: Call HabilitarCriterio()
  loc_9C9F91: ILdRf Me
  loc_9C9F94: CastAd
  loc_9C9F97: FStAdFunc var_120
  loc_9C9F9A: FLdRfVar var_120
  loc_9C9F9D: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C9FA2: FFree1Ad var_120
  loc_9C9FA5: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97CAA8
  'Data Table: 4770F4
  loc_97CA74: LitVar_Missing var_A4
  loc_97CA77: PopAdLdVar
  loc_97CA78: LitVarI4
  loc_97CA80: PopAdLdVar
  loc_97CA81: ImpAdLdRf MemVar_C3D9A8
  loc_97CA84: NewIfNullPr frmCalendario
  loc_97CA87: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CA8C: ImpAdLdRf MemVar_C3D038
  loc_97CA8F: CDargRef
  loc_97CA93: FLdPr Me
  loc_97CA96: VCallAd Control_ID_mskDesde
  loc_97CA99: FStAdFunc var_A8
  loc_97CA9C: FLdPr var_A8
  loc_97CA9F: LateIdSt
  loc_97CAA4: FFree1Ad var_A8
  loc_97CAA7: ExitProcHresult
End Sub

Public Function htmFileGet() '478028
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '478037
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '478046
  htmFile = Value
End Sub

Public Function bLogosGet() '478055
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '478064
  bLogos = Value
End Sub

Public Function bGeneradoGet() '478073
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '478082
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AB77C
  'Data Table: 4770F4
  loc_9AB6F8: LitI4 0
  loc_9AB6FD: LitI4 5
  loc_9AB702: FLdRfVar var_88
  loc_9AB705: Redim
  loc_9AB70F: FLdPr Me
  loc_9AB712: VCallAd Control_ID_mskDesde
  loc_9AB715: CVarAd
  loc_9AB719: ParmAry1St
  loc_9AB71F: FLdPr Me
  loc_9AB722: VCallAd Control_ID_cmdCalDesde
  loc_9AB725: CVarAd
  loc_9AB729: ParmAry1St
  loc_9AB72F: FLdPr Me
  loc_9AB732: VCallAd Control_ID_mskHasta
  loc_9AB735: CVarAd
  loc_9AB739: ParmAry1St
  loc_9AB73F: FLdPr Me
  loc_9AB742: VCallAd Control_ID_cmdCalHasta
  loc_9AB745: CVarAd
  loc_9AB749: ParmAry1St
  loc_9AB74F: FLdPr Me
  loc_9AB752: VCallAd Control_ID_mskCodiCuco
  loc_9AB755: CVarAd
  loc_9AB759: ParmAry1St
  loc_9AB75F: FLdPr Me
  loc_9AB762: VCallAd Control_ID_cmdCodiCuco
  loc_9AB765: CVarAd
  loc_9AB769: ParmAry1St
  loc_9AB76F: FLdRfVar var_88
  loc_9AB772: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AB777: FLdRfVar var_88
  loc_9AB77A: Erase
  loc_9AB77B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B47098
  'Data Table: 4770F4
  loc_B46644: LitStr vbNullString
  loc_B46647: FLdPr Me
  loc_B4664A: MemStStrCopy
  loc_B4664E: LitI2_Byte 0
  loc_B46650: PopTmpLdAd2 var_92
  loc_B46653: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B46658: FLdPr Me
  loc_B4665B: MemLdStr global_100
  loc_B4665E: LitStr vbNullString
  loc_B46661: NeStr
  loc_B46663: BranchF loc_B46669
  loc_B46666: Branch loc_B4706C
  loc_B46669: LitI2_Byte 0
  loc_B4666B: PopTmpLdAd2 var_92
  loc_B4666E: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B46673: FLdPr Me
  loc_B46676: MemLdStr global_100
  loc_B46679: LitStr vbNullString
  loc_B4667C: NeStr
  loc_B4667E: BranchF loc_B46684
  loc_B46681: Branch loc_B4706C
  loc_B46684: FLdPr Me
  loc_B46687: MemLdI2 bGenerado
  loc_B4668A: BranchF loc_B4668E
  loc_B4668D: ExitProcHresult
  loc_B4668E: LitVarStr var_A4, "Generando reporte..."
  loc_B46693: PopAdLdVar
  loc_B46694: FLdPr Me
  loc_B46697: VCallAd Control_ID_statusBar
  loc_B4669A: FStAdFunc var_B8
  loc_B4669D: FLdPr var_B8
  loc_B466A0: LateIdSt
  loc_B466A5: FFree1Ad var_B8
  loc_B466A8: LitI4 &HB
  loc_B466AD: CI2I4
  loc_B466AE: FLdPr Me
  loc_B466B1: Me.MousePointer = from_stack_1
  loc_B466B6: FLdPr Me
  loc_B466B9: VCallAd Control_ID_mskDesde
  loc_B466BC: FStAdFunc var_B8
  loc_B466BF: FLdPr var_B8
  loc_B466C2: LateIdLdVar var_C8 DispID_22 0
  loc_B466C9: CStrVarTmp
  loc_B466CA: FStStrNoPop var_CC
  loc_B466CD: LitStr vbNullString
  loc_B466D0: NeStr
  loc_B466D2: FFree1Str var_CC
  loc_B466D5: FFree1Ad var_B8
  loc_B466D8: FFree1Var var_C8 = ""
  loc_B466DB: BranchF loc_B4672D
  loc_B466DE: FLdPr Me
  loc_B466E1: VCallAd Control_ID_mskDesde
  loc_B466E4: FStAdFunc var_B8
  loc_B466E7: FLdPr var_B8
  loc_B466EA: LateIdLdVar var_C8 DispID_15 0
  loc_B466F1: PopAd
  loc_B466F3: LitStr " AND FechCaja >= "
  loc_B466F6: LitI4 1
  loc_B466FB: LitI4 1
  loc_B46700: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B46705: FStVarCopyObj var_EC
  loc_B46708: FLdRfVar var_EC
  loc_B4670B: FLdRfVar var_C8
  loc_B4670E: CStrVarTmp
  loc_B4670F: CVarStr var_DC
  loc_B46712: ImpAdCallI2 Format$(, )
  loc_B46717: FStStrNoPop var_CC
  loc_B4671A: ConcatStr
  loc_B4671B: FStStr var_88
  loc_B4671E: FFree1Str var_CC
  loc_B46721: FFree1Ad var_B8
  loc_B46724: FFreeVar var_C8 = "": var_DC = ""
  loc_B4672D: FLdPr Me
  loc_B46730: VCallAd Control_ID_mskHasta
  loc_B46733: FStAdFunc var_B8
  loc_B46736: FLdPr var_B8
  loc_B46739: LateIdLdVar var_C8 DispID_22 0
  loc_B46740: CStrVarTmp
  loc_B46741: FStStrNoPop var_CC
  loc_B46744: LitStr vbNullString
  loc_B46747: NeStr
  loc_B46749: FFree1Str var_CC
  loc_B4674C: FFree1Ad var_B8
  loc_B4674F: FFree1Var var_C8 = ""
  loc_B46752: BranchF loc_B467A4
  loc_B46755: FLdPr Me
  loc_B46758: VCallAd Control_ID_mskHasta
  loc_B4675B: FStAdFunc var_B8
  loc_B4675E: FLdPr var_B8
  loc_B46761: LateIdLdVar var_C8 DispID_15 0
  loc_B46768: PopAd
  loc_B4676A: LitStr " AND FechCaja <= "
  loc_B4676D: LitI4 1
  loc_B46772: LitI4 1
  loc_B46777: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B4677C: FStVarCopyObj var_EC
  loc_B4677F: FLdRfVar var_EC
  loc_B46782: FLdRfVar var_C8
  loc_B46785: CStrVarTmp
  loc_B46786: CVarStr var_DC
  loc_B46789: ImpAdCallI2 Format$(, )
  loc_B4678E: FStStrNoPop var_CC
  loc_B46791: ConcatStr
  loc_B46792: FStStr var_8C
  loc_B46795: FFree1Str var_CC
  loc_B46798: FFree1Ad var_B8
  loc_B4679B: FFreeVar var_C8 = "": var_DC = ""
  loc_B467A4: FLdPr Me
  loc_B467A7: VCallAd Control_ID_mskCodiCuco
  loc_B467AA: FStAdFunc var_B8
  loc_B467AD: FLdPr var_B8
  loc_B467B0: LateIdLdVar var_C8 DispID_22 0
  loc_B467B7: PopAd
  loc_B467B9: FLdPr Me
  loc_B467BC: VCallAd Control_ID_mskCodiCuco
  loc_B467BF: FStAdFunc var_F0
  loc_B467C2: FLdPr var_F0
  loc_B467C5: LateIdLdVar var_DC DispID_20 0
  loc_B467CC: PopAd
  loc_B467CE: FLdPr Me
  loc_B467D1: VCallAd Control_ID_mskCodiCuco
  loc_B467D4: FStAdFunc var_FC
  loc_B467D7: FLdPr var_FC
  loc_B467DA: LateIdLdVar var_EC DispID_20 0
  loc_B467E1: PopAd
  loc_B467E3: LitVarStr var_B4, vbNullString
  loc_B467E8: FStVarCopyObj var_128
  loc_B467EB: FLdRfVar var_128
  loc_B467EE: LitStr " AND (DebeCuco LIKE '"
  loc_B467F1: FLdRfVar var_DC
  loc_B467F4: CStrVarTmp
  loc_B467F5: FStStrNoPop var_F4
  loc_B467F8: ConcatStr
  loc_B467F9: FStStrNoPop var_F8
  loc_B467FC: LitStr Chr(37) & "' OR HabeCuco LIKE '"
  loc_B467FF: ConcatStr
  loc_B46800: FStStrNoPop var_100
  loc_B46803: FLdRfVar var_EC
  loc_B46806: CStrVarTmp
  loc_B46807: FStStrNoPop var_104
  loc_B4680A: ConcatStr
  loc_B4680B: FStStrNoPop var_108
  loc_B4680E: LitStr Chr(37) & "')"
  loc_B46811: ConcatStr
  loc_B46812: CVarStr var_118
  loc_B46815: FLdRfVar var_C8
  loc_B46818: CStrVarTmp
  loc_B46819: FStStrNoPop var_CC
  loc_B4681C: LitStr vbNullString
  loc_B4681F: NeStr
  loc_B46821: CVarBoolI2 var_A4
  loc_B46825: FLdRfVar var_138
  loc_B46828: ImpAdCallFPR4  = IIf(, , )
  loc_B4682D: FLdRfVar var_138
  loc_B46830: CStrVarTmp
  loc_B46831: FStStr var_90
  loc_B46834: FFreeStr var_CC = "": var_F4 = "": var_F8 = "": var_100 = "": var_104 = ""
  loc_B46843: FFreeAd var_B8 = "": var_F0 = ""
  loc_B4684C: FFreeVar var_C8 = "": var_DC = "": var_EC = "": var_A4 = "": var_118 = "": var_128 = ""
  loc_B4685D: FLdPr Me
  loc_B46860: MemLdRfVar from_stack_1.global_72
  loc_B46863: NewIfNullAd
  loc_B46866: FStAd var_13C 
  loc_B4686A: LitStr "SELECT *"
  loc_B4686D: LitStr " FROM subdpagodebi"
  loc_B46870: ConcatStr
  loc_B46871: FStStrNoPop var_CC
  loc_B46874: LitStr " WHERE TRUE "
  loc_B46877: ConcatStr
  loc_B46878: FStStrNoPop var_F4
  loc_B4687B: ILdRf var_88
  loc_B4687E: ConcatStr
  loc_B4687F: FStStrNoPop var_F8
  loc_B46882: ILdRf var_8C
  loc_B46885: ConcatStr
  loc_B46886: FStStrNoPop var_100
  loc_B46889: ILdRf var_90
  loc_B4688C: ConcatStr
  loc_B4688D: FStStrNoPop var_104
  loc_B46890: FLdPr var_13C
  loc_B46893: Call clsbase.RedefineRS(from_stack_1v)
  loc_B46898: FFreeStr var_CC = "": var_F4 = "": var_F8 = "": var_100 = ""
  loc_B468A5: FLdRfVar var_140
  loc_B468A8: FLdPr var_13C
  loc_B468AB: from_stack_1 = clsbase.RecordCount
  loc_B468B0: ILdRf var_140
  loc_B468B3: LitI4 0
  loc_B468B8: EqI4
  loc_B468B9: BranchF loc_B468CC
  loc_B468BC: LitI4 0
  loc_B468C1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B468C4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B468C9: Branch loc_B4706C
  loc_B468CC: LitI2_Byte 0
  loc_B468CE: CStrUI1
  loc_B468D0: FStStrNoPop var_CC
  loc_B468D3: FLdPr Me
  loc_B468D6: MemStStrCopy
  loc_B468DA: FFree1Str var_CC
  loc_B468DD: LitI2_Byte 0
  loc_B468DF: CStrUI1
  loc_B468E1: FStStrNoPop var_CC
  loc_B468E4: FLdPr Me
  loc_B468E7: MemStStrCopy
  loc_B468EB: FFree1Str var_CC
  loc_B468EE: LitStr "SELECT CatePaco CodiCuco, DetaCuco"
  loc_B468F1: LitStr " FROM paraconta"
  loc_B468F4: ConcatStr
  loc_B468F5: FStStrNoPop var_CC
  loc_B468F8: LitStr " INNER JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = paraconta.CatePaco"
  loc_B468FB: ConcatStr
  loc_B468FC: FStStrNoPop var_F4
  loc_B468FF: LitStr " WHERE paraconta.PeriInfo = "
  loc_B46902: ConcatStr
  loc_B46903: CVarStr var_118
  loc_B46906: FLdPr Me
  loc_B46909: VCallAd Control_ID_mskDesde
  loc_B4690C: FStAdFunc var_B8
  loc_B4690F: FLdPr var_B8
  loc_B46912: LateIdLdVar var_C8 DispID_15 0
  loc_B46919: CStrVarTmp
  loc_B4691A: CVarStr var_DC
  loc_B4691D: FLdRfVar var_EC
  loc_B46920: ImpAdCallFPR4  = Year()
  loc_B46925: FLdRfVar var_EC
  loc_B46928: ConcatVar var_128
  loc_B4692C: CStrVarVal var_F8
  loc_B46930: FLdPr var_13C
  loc_B46933: Call clsbase.RedefineRS(from_stack_1v)
  loc_B46938: FFreeStr var_CC = "": var_F4 = ""
  loc_B46941: FFree1Ad var_B8
  loc_B46944: FFreeVar var_C8 = "": var_DC = "": var_118 = "": var_EC = ""
  loc_B46951: LitI4 1
  loc_B46956: FLdRfVar var_140
  loc_B46959: FLdPr Me
  loc_B4695C: MemLdRfVar from_stack_1.global_72
  loc_B4695F: NewIfNullPr clsbase
  loc_B46962: from_stack_1 = clsbase.RecordCount
  loc_B46967: ILdRf var_140
  loc_B4696A: FLdPr Me
  loc_B4696D: MemLdRfVar from_stack_1.global_80
  loc_B46970: Redim
  loc_B4697A: FLdPr var_13C
  loc_B4697D: Call clsbase.MoveFirst()
  loc_B46982: LitI2_Byte 1
  loc_B46984: FLdPr Me
  loc_B46987: MemLdRfVar from_stack_1.global_92
  loc_B4698A: FLdPr Me
  loc_B4698D: MemLdStr global_80
  loc_B46990: LitI2_Byte 1
  loc_B46992: FnUBound
  loc_B46994: CI2I4
  loc_B46995: ForI2 var_144
  loc_B4699B: FLdRfVar var_FC
  loc_B4699E: LitVarStr var_A4, "CodiCuco"
  loc_B469A3: PopAdLdVar
  loc_B469A4: FLdRfVar var_F0
  loc_B469A7: FLdRfVar var_B8
  loc_B469AA: FLdPr var_13C
  loc_B469AD: from_stack_1v = clsbase.RsFrmGet()
  loc_B469B2: FLdPr var_B8
  loc_B469B5:  = Me.Fields
  loc_B469BA: FLdPr var_F0
  loc_B469BD: from_stack_2 = Me.Item(from_stack_1)
  loc_B469C2: LitI2_Byte 0
  loc_B469C4: LitVar_Missing var_DC
  loc_B469C7: LitI2_Byte 0
  loc_B469C9: FLdZeroAd var_FC
  loc_B469CC: CVarAd
  loc_B469D0: PopAdLdVar
  loc_B469D1: FLdPr Me
  loc_B469D4: MemLdI2 global_92
  loc_B469D7: CI4UI1
  loc_B469D8: FLdPr Me
  loc_B469DB: MemLdStr global_80
  loc_B469DE: AryLock
  loc_B469E1: Ary1LdPr
  loc_B469E2: MemLdRfVar from_stack_1.global_0
  loc_B469E5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B469EA: AryUnlock
  loc_B469ED: FFreeAd var_B8 = ""
  loc_B469F4: FFreeVar var_C8 = ""
  loc_B469FB: FLdRfVar var_FC
  loc_B469FE: LitVarStr var_A4, "DetaCuco"
  loc_B46A03: PopAdLdVar
  loc_B46A04: FLdRfVar var_F0
  loc_B46A07: FLdRfVar var_B8
  loc_B46A0A: FLdPr var_13C
  loc_B46A0D: from_stack_1v = clsbase.RsFrmGet()
  loc_B46A12: FLdPr var_B8
  loc_B46A15:  = Me.Fields
  loc_B46A1A: FLdPr var_F0
  loc_B46A1D: from_stack_2 = Me.Item(from_stack_1)
  loc_B46A22: LitI2_Byte 0
  loc_B46A24: LitVar_Missing var_DC
  loc_B46A27: LitI2_Byte 0
  loc_B46A29: FLdZeroAd var_FC
  loc_B46A2C: CVarAd
  loc_B46A30: PopAdLdVar
  loc_B46A31: FLdPr Me
  loc_B46A34: MemLdI2 global_92
  loc_B46A37: CI4UI1
  loc_B46A38: FLdPr Me
  loc_B46A3B: MemLdStr global_80
  loc_B46A3E: AryLock
  loc_B46A41: Ary1LdPr
  loc_B46A42: MemLdRfVar from_stack_1.global_4
  loc_B46A45: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46A4A: AryUnlock
  loc_B46A4D: FFreeAd var_B8 = ""
  loc_B46A54: FFreeVar var_C8 = ""
  loc_B46A5B: FLdPr var_13C
  loc_B46A5E: Call clsbase.MoveSiguiente()
  loc_B46A63: FLdPr Me
  loc_B46A66: MemLdRfVar from_stack_1.global_92
  loc_B46A69: NextI2 var_144, loc_B4699B
  loc_B46A6E: LitI2_Byte 1
  loc_B46A70: FLdPr Me
  loc_B46A73: MemLdRfVar from_stack_1.global_92
  loc_B46A76: FLdPr Me
  loc_B46A79: MemLdStr global_80
  loc_B46A7C: LitI2_Byte 1
  loc_B46A7E: FnUBound
  loc_B46A80: CI2I4
  loc_B46A81: ForI2 var_14C
  loc_B46A87: LitStr "SELECT FechCaja, ExpeImpu, NumeLiqu, s.CucuPers, DetaProv, CodiBanc, NumeMoba, DebeCaja, HabeCaja"
  loc_B46A8A: LitStr ", (SELECT NumeOrpa FROM ordenpago o WHERE o.PeriInfo = s.PeriInfo AND o.ExpeImpu = s.ExpeImpu AND o.NumeLiqu = s.NumeLiqu AND o.FeanOrpa IS NULL LIMIT 1) NumeOrpa"
  loc_B46A8D: ConcatStr
  loc_B46A8E: FStStrNoPop var_CC
  loc_B46A91: LitStr " FROM subdpagodebi s"
  loc_B46A94: ConcatStr
  loc_B46A95: FStStrNoPop var_F4
  loc_B46A98: LitStr " INNER JOIN proveedor p ON p.CucuPers = s.CucuPers"
  loc_B46A9B: ConcatStr
  loc_B46A9C: FStStrNoPop var_F8
  loc_B46A9F: LitStr " WHERE TRUE"
  loc_B46AA2: ConcatStr
  loc_B46AA3: FStStrNoPop var_100
  loc_B46AA6: ILdRf var_88
  loc_B46AA9: ConcatStr
  loc_B46AAA: FStStrNoPop var_104
  loc_B46AAD: ILdRf var_8C
  loc_B46AB0: ConcatStr
  loc_B46AB1: FStStrNoPop var_108
  loc_B46AB4: ILdRf var_90
  loc_B46AB7: ConcatStr
  loc_B46AB8: FStStrNoPop var_150
  loc_B46ABB: LitStr " ORDER BY FechCaja, ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba"
  loc_B46ABE: ConcatStr
  loc_B46ABF: FStStrNoPop var_154
  loc_B46AC2: FLdPr var_13C
  loc_B46AC5: Call clsbase.RedefineRS(from_stack_1v)
  loc_B46ACA: FFreeStr var_CC = "": var_F4 = "": var_F8 = "": var_100 = "": var_104 = "": var_108 = "": var_150 = ""
  loc_B46ADD: FLdRfVar var_140
  loc_B46AE0: FLdPr var_13C
  loc_B46AE3: from_stack_1 = clsbase.RecordCount
  loc_B46AE8: ILdRf var_140
  loc_B46AEB: LitI4 0
  loc_B46AF0: GtI4
  loc_B46AF1: BranchF loc_B46FF5
  loc_B46AF4: FLdRfVar var_140
  loc_B46AF7: FLdPr var_13C
  loc_B46AFA: from_stack_1 = clsbase.RecordCount
  loc_B46AFF: LitI4 1
  loc_B46B04: ILdRf var_140
  loc_B46B07: FLdPr Me
  loc_B46B0A: MemLdI2 global_92
  loc_B46B0D: CI4UI1
  loc_B46B0E: FLdPr Me
  loc_B46B11: MemLdStr global_80
  loc_B46B14: Ary1LdPr
  loc_B46B15: MemLdRfVar from_stack_1.global_8
  loc_B46B18: Redim
  loc_B46B22: FLdPr var_13C
  loc_B46B25: Call clsbase.MoveFirst()
  loc_B46B2A: LitI2_Byte 1
  loc_B46B2C: FLdPr Me
  loc_B46B2F: MemLdRfVar from_stack_1.global_94
  loc_B46B32: FLdPr Me
  loc_B46B35: MemLdI2 global_92
  loc_B46B38: CI4UI1
  loc_B46B39: FLdPr Me
  loc_B46B3C: MemLdStr global_80
  loc_B46B3F: Ary1LdPr
  loc_B46B40: MemLdStr global_8
  loc_B46B43: LitI2_Byte 1
  loc_B46B45: FnUBound
  loc_B46B47: CI2I4
  loc_B46B48: ForI2 var_158
  loc_B46B4E: FLdRfVar var_FC
  loc_B46B51: LitVarStr var_A4, "FechCaja"
  loc_B46B56: PopAdLdVar
  loc_B46B57: FLdRfVar var_F0
  loc_B46B5A: FLdRfVar var_B8
  loc_B46B5D: FLdPr var_13C
  loc_B46B60: from_stack_1v = clsbase.RsFrmGet()
  loc_B46B65: FLdPr var_B8
  loc_B46B68:  = Me.Fields
  loc_B46B6D: FLdPr var_F0
  loc_B46B70: from_stack_2 = Me.Item(from_stack_1)
  loc_B46B75: LitI2_Byte 0
  loc_B46B77: LitVar_Missing var_DC
  loc_B46B7A: LitI2_Byte 0
  loc_B46B7C: FLdZeroAd var_FC
  loc_B46B7F: CVarAd
  loc_B46B83: PopAdLdVar
  loc_B46B84: FLdPr Me
  loc_B46B87: MemLdI2 global_94
  loc_B46B8A: CI4UI1
  loc_B46B8B: FLdPr Me
  loc_B46B8E: MemLdI2 global_92
  loc_B46B91: CI4UI1
  loc_B46B92: FLdPr Me
  loc_B46B95: MemLdStr global_80
  loc_B46B98: AryLock
  loc_B46B9B: Ary1LdPr
  loc_B46B9C: MemLdStr global_8
  loc_B46B9F: AryLock
  loc_B46BA2: Ary1LdPr
  loc_B46BA3: MemLdRfVar from_stack_1.global_0
  loc_B46BA6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46BAB: AryUnlock
  loc_B46BAE: AryUnlock
  loc_B46BB1: FFreeAd var_B8 = ""
  loc_B46BB8: FFreeVar var_C8 = ""
  loc_B46BBF: FLdRfVar var_FC
  loc_B46BC2: LitVarStr var_A4, "ExpeImpu"
  loc_B46BC7: PopAdLdVar
  loc_B46BC8: FLdRfVar var_F0
  loc_B46BCB: FLdRfVar var_B8
  loc_B46BCE: FLdPr var_13C
  loc_B46BD1: from_stack_1v = clsbase.RsFrmGet()
  loc_B46BD6: FLdPr var_B8
  loc_B46BD9:  = Me.Fields
  loc_B46BDE: FLdPr var_F0
  loc_B46BE1: from_stack_2 = Me.Item(from_stack_1)
  loc_B46BE6: LitI2_Byte 0
  loc_B46BE8: LitVar_Missing var_DC
  loc_B46BEB: LitI2_Byte 0
  loc_B46BED: FLdZeroAd var_FC
  loc_B46BF0: CVarAd
  loc_B46BF4: PopAdLdVar
  loc_B46BF5: FLdPr Me
  loc_B46BF8: MemLdI2 global_94
  loc_B46BFB: CI4UI1
  loc_B46BFC: FLdPr Me
  loc_B46BFF: MemLdI2 global_92
  loc_B46C02: CI4UI1
  loc_B46C03: FLdPr Me
  loc_B46C06: MemLdStr global_80
  loc_B46C09: AryLock
  loc_B46C0C: Ary1LdPr
  loc_B46C0D: MemLdStr global_8
  loc_B46C10: AryLock
  loc_B46C13: Ary1LdPr
  loc_B46C14: MemLdRfVar from_stack_1.global_4
  loc_B46C17: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46C1C: AryUnlock
  loc_B46C1F: AryUnlock
  loc_B46C22: FFreeAd var_B8 = ""
  loc_B46C29: FFreeVar var_C8 = ""
  loc_B46C30: FLdRfVar var_FC
  loc_B46C33: LitVarStr var_A4, "NumeLiqu"
  loc_B46C38: PopAdLdVar
  loc_B46C39: FLdRfVar var_F0
  loc_B46C3C: FLdRfVar var_B8
  loc_B46C3F: FLdPr var_13C
  loc_B46C42: from_stack_1v = clsbase.RsFrmGet()
  loc_B46C47: FLdPr var_B8
  loc_B46C4A:  = Me.Fields
  loc_B46C4F: FLdPr var_F0
  loc_B46C52: from_stack_2 = Me.Item(from_stack_1)
  loc_B46C57: LitI2_Byte 0
  loc_B46C59: LitVar_Missing var_DC
  loc_B46C5C: LitI2_Byte 0
  loc_B46C5E: FLdZeroAd var_FC
  loc_B46C61: CVarAd
  loc_B46C65: PopAdLdVar
  loc_B46C66: FLdPr Me
  loc_B46C69: MemLdI2 global_94
  loc_B46C6C: CI4UI1
  loc_B46C6D: FLdPr Me
  loc_B46C70: MemLdI2 global_92
  loc_B46C73: CI4UI1
  loc_B46C74: FLdPr Me
  loc_B46C77: MemLdStr global_80
  loc_B46C7A: AryLock
  loc_B46C7D: Ary1LdPr
  loc_B46C7E: MemLdStr global_8
  loc_B46C81: AryLock
  loc_B46C84: Ary1LdPr
  loc_B46C85: MemLdRfVar from_stack_1.global_8
  loc_B46C88: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46C8D: AryUnlock
  loc_B46C90: AryUnlock
  loc_B46C93: FFreeAd var_B8 = ""
  loc_B46C9A: FFreeVar var_C8 = ""
  loc_B46CA1: FLdRfVar var_FC
  loc_B46CA4: LitVarStr var_A4, "NumeOrpa"
  loc_B46CA9: PopAdLdVar
  loc_B46CAA: FLdRfVar var_F0
  loc_B46CAD: FLdRfVar var_B8
  loc_B46CB0: FLdPr var_13C
  loc_B46CB3: from_stack_1v = clsbase.RsFrmGet()
  loc_B46CB8: FLdPr var_B8
  loc_B46CBB:  = Me.Fields
  loc_B46CC0: FLdPr var_F0
  loc_B46CC3: from_stack_2 = Me.Item(from_stack_1)
  loc_B46CC8: LitI2_Byte 0
  loc_B46CCA: LitVar_Missing var_DC
  loc_B46CCD: LitI2_Byte 0
  loc_B46CCF: FLdZeroAd var_FC
  loc_B46CD2: CVarAd
  loc_B46CD6: PopAdLdVar
  loc_B46CD7: FLdPr Me
  loc_B46CDA: MemLdI2 global_94
  loc_B46CDD: CI4UI1
  loc_B46CDE: FLdPr Me
  loc_B46CE1: MemLdI2 global_92
  loc_B46CE4: CI4UI1
  loc_B46CE5: FLdPr Me
  loc_B46CE8: MemLdStr global_80
  loc_B46CEB: AryLock
  loc_B46CEE: Ary1LdPr
  loc_B46CEF: MemLdStr global_8
  loc_B46CF2: AryLock
  loc_B46CF5: Ary1LdPr
  loc_B46CF6: MemLdRfVar from_stack_1.global_12
  loc_B46CF9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46CFE: AryUnlock
  loc_B46D01: AryUnlock
  loc_B46D04: FFreeAd var_B8 = ""
  loc_B46D0B: FFreeVar var_C8 = ""
  loc_B46D12: FLdRfVar var_FC
  loc_B46D15: LitVarStr var_A4, "CucuPers"
  loc_B46D1A: PopAdLdVar
  loc_B46D1B: FLdRfVar var_F0
  loc_B46D1E: FLdRfVar var_B8
  loc_B46D21: FLdPr var_13C
  loc_B46D24: from_stack_1v = clsbase.RsFrmGet()
  loc_B46D29: FLdPr var_B8
  loc_B46D2C:  = Me.Fields
  loc_B46D31: FLdPr var_F0
  loc_B46D34: from_stack_2 = Me.Item(from_stack_1)
  loc_B46D39: LitI2_Byte 0
  loc_B46D3B: LitVar_Missing var_DC
  loc_B46D3E: LitI2_Byte 0
  loc_B46D40: FLdZeroAd var_FC
  loc_B46D43: CVarAd
  loc_B46D47: PopAdLdVar
  loc_B46D48: FLdPr Me
  loc_B46D4B: MemLdI2 global_94
  loc_B46D4E: CI4UI1
  loc_B46D4F: FLdPr Me
  loc_B46D52: MemLdI2 global_92
  loc_B46D55: CI4UI1
  loc_B46D56: FLdPr Me
  loc_B46D59: MemLdStr global_80
  loc_B46D5C: AryLock
  loc_B46D5F: Ary1LdPr
  loc_B46D60: MemLdStr global_8
  loc_B46D63: AryLock
  loc_B46D66: Ary1LdPr
  loc_B46D67: MemLdRfVar from_stack_1.global_16
  loc_B46D6A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46D6F: AryUnlock
  loc_B46D72: AryUnlock
  loc_B46D75: FFreeAd var_B8 = ""
  loc_B46D7C: FFreeVar var_C8 = ""
  loc_B46D83: FLdRfVar var_FC
  loc_B46D86: LitVarStr var_A4, "DetaProv"
  loc_B46D8B: PopAdLdVar
  loc_B46D8C: FLdRfVar var_F0
  loc_B46D8F: FLdRfVar var_B8
  loc_B46D92: FLdPr var_13C
  loc_B46D95: from_stack_1v = clsbase.RsFrmGet()
  loc_B46D9A: FLdPr var_B8
  loc_B46D9D:  = Me.Fields
  loc_B46DA2: FLdPr var_F0
  loc_B46DA5: from_stack_2 = Me.Item(from_stack_1)
  loc_B46DAA: LitI2_Byte 0
  loc_B46DAC: LitVar_Missing var_DC
  loc_B46DAF: LitI2_Byte 0
  loc_B46DB1: FLdZeroAd var_FC
  loc_B46DB4: CVarAd
  loc_B46DB8: PopAdLdVar
  loc_B46DB9: FLdPr Me
  loc_B46DBC: MemLdI2 global_94
  loc_B46DBF: CI4UI1
  loc_B46DC0: FLdPr Me
  loc_B46DC3: MemLdI2 global_92
  loc_B46DC6: CI4UI1
  loc_B46DC7: FLdPr Me
  loc_B46DCA: MemLdStr global_80
  loc_B46DCD: AryLock
  loc_B46DD0: Ary1LdPr
  loc_B46DD1: MemLdStr global_8
  loc_B46DD4: AryLock
  loc_B46DD7: Ary1LdPr
  loc_B46DD8: MemLdRfVar from_stack_1.global_20
  loc_B46DDB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46DE0: AryUnlock
  loc_B46DE3: AryUnlock
  loc_B46DE6: FFreeAd var_B8 = ""
  loc_B46DED: FFreeVar var_C8 = ""
  loc_B46DF4: FLdRfVar var_FC
  loc_B46DF7: LitVarStr var_A4, "CodiBanc"
  loc_B46DFC: PopAdLdVar
  loc_B46DFD: FLdRfVar var_F0
  loc_B46E00: FLdRfVar var_B8
  loc_B46E03: FLdPr var_13C
  loc_B46E06: from_stack_1v = clsbase.RsFrmGet()
  loc_B46E0B: FLdPr var_B8
  loc_B46E0E:  = Me.Fields
  loc_B46E13: FLdPr var_F0
  loc_B46E16: from_stack_2 = Me.Item(from_stack_1)
  loc_B46E1B: LitI2_Byte 0
  loc_B46E1D: LitVar_Missing var_DC
  loc_B46E20: LitI2_Byte 0
  loc_B46E22: FLdZeroAd var_FC
  loc_B46E25: CVarAd
  loc_B46E29: PopAdLdVar
  loc_B46E2A: FLdPr Me
  loc_B46E2D: MemLdI2 global_94
  loc_B46E30: CI4UI1
  loc_B46E31: FLdPr Me
  loc_B46E34: MemLdI2 global_92
  loc_B46E37: CI4UI1
  loc_B46E38: FLdPr Me
  loc_B46E3B: MemLdStr global_80
  loc_B46E3E: AryLock
  loc_B46E41: Ary1LdPr
  loc_B46E42: MemLdStr global_8
  loc_B46E45: AryLock
  loc_B46E48: Ary1LdPr
  loc_B46E49: MemLdRfVar from_stack_1.global_24
  loc_B46E4C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46E51: AryUnlock
  loc_B46E54: AryUnlock
  loc_B46E57: FFreeAd var_B8 = ""
  loc_B46E5E: FFreeVar var_C8 = ""
  loc_B46E65: FLdRfVar var_FC
  loc_B46E68: LitVarStr var_A4, "NumeMoba"
  loc_B46E6D: PopAdLdVar
  loc_B46E6E: FLdRfVar var_F0
  loc_B46E71: FLdRfVar var_B8
  loc_B46E74: FLdPr var_13C
  loc_B46E77: from_stack_1v = clsbase.RsFrmGet()
  loc_B46E7C: FLdPr var_B8
  loc_B46E7F:  = Me.Fields
  loc_B46E84: FLdPr var_F0
  loc_B46E87: from_stack_2 = Me.Item(from_stack_1)
  loc_B46E8C: LitI2_Byte 0
  loc_B46E8E: LitVar_Missing var_DC
  loc_B46E91: LitI2_Byte 0
  loc_B46E93: FLdZeroAd var_FC
  loc_B46E96: CVarAd
  loc_B46E9A: PopAdLdVar
  loc_B46E9B: FLdPr Me
  loc_B46E9E: MemLdI2 global_94
  loc_B46EA1: CI4UI1
  loc_B46EA2: FLdPr Me
  loc_B46EA5: MemLdI2 global_92
  loc_B46EA8: CI4UI1
  loc_B46EA9: FLdPr Me
  loc_B46EAC: MemLdStr global_80
  loc_B46EAF: AryLock
  loc_B46EB2: Ary1LdPr
  loc_B46EB3: MemLdStr global_8
  loc_B46EB6: AryLock
  loc_B46EB9: Ary1LdPr
  loc_B46EBA: MemLdRfVar from_stack_1.global_28
  loc_B46EBD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46EC2: AryUnlock
  loc_B46EC5: AryUnlock
  loc_B46EC8: FFreeAd var_B8 = ""
  loc_B46ECF: FFreeVar var_C8 = ""
  loc_B46ED6: FLdRfVar var_FC
  loc_B46ED9: LitVarStr var_A4, "DebeCaja"
  loc_B46EDE: PopAdLdVar
  loc_B46EDF: FLdRfVar var_F0
  loc_B46EE2: FLdRfVar var_B8
  loc_B46EE5: FLdPr var_13C
  loc_B46EE8: from_stack_1v = clsbase.RsFrmGet()
  loc_B46EED: FLdPr var_B8
  loc_B46EF0:  = Me.Fields
  loc_B46EF5: FLdPr var_F0
  loc_B46EF8: from_stack_2 = Me.Item(from_stack_1)
  loc_B46EFD: LitI2_Byte 0
  loc_B46EFF: FLdPr Me
  loc_B46F02: MemLdI2 global_92
  loc_B46F05: CI4UI1
  loc_B46F06: FLdPr Me
  loc_B46F09: MemLdStr global_80
  loc_B46F0C: AryLock
  loc_B46F0F: Ary1LdPr
  loc_B46F10: MemLdRfVar from_stack_1.global_12
  loc_B46F13: CVarRef
  loc_B46F18: LitI2_Byte &HFF
  loc_B46F1A: FLdZeroAd var_FC
  loc_B46F1D: CVarAd
  loc_B46F21: PopAdLdVar
  loc_B46F22: FLdPr Me
  loc_B46F25: MemLdI2 global_94
  loc_B46F28: CI4UI1
  loc_B46F29: FLdPr Me
  loc_B46F2C: MemLdI2 global_92
  loc_B46F2F: CI4UI1
  loc_B46F30: FLdPr Me
  loc_B46F33: MemLdStr global_80
  loc_B46F36: AryLock
  loc_B46F39: Ary1LdPr
  loc_B46F3A: MemLdStr global_8
  loc_B46F3D: AryLock
  loc_B46F40: Ary1LdPr
  loc_B46F41: MemLdRfVar from_stack_1.global_32
  loc_B46F44: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46F49: AryUnlock
  loc_B46F4C: AryUnlock
  loc_B46F4F: AryUnlock
  loc_B46F52: FFreeAd var_B8 = ""
  loc_B46F59: FFree1Var var_C8 = ""
  loc_B46F5C: FLdRfVar var_FC
  loc_B46F5F: LitVarStr var_A4, "HabeCaja"
  loc_B46F64: PopAdLdVar
  loc_B46F65: FLdRfVar var_F0
  loc_B46F68: FLdRfVar var_B8
  loc_B46F6B: FLdPr var_13C
  loc_B46F6E: from_stack_1v = clsbase.RsFrmGet()
  loc_B46F73: FLdPr var_B8
  loc_B46F76:  = Me.Fields
  loc_B46F7B: FLdPr var_F0
  loc_B46F7E: from_stack_2 = Me.Item(from_stack_1)
  loc_B46F83: LitI2_Byte 0
  loc_B46F85: FLdPr Me
  loc_B46F88: MemLdI2 global_92
  loc_B46F8B: CI4UI1
  loc_B46F8C: FLdPr Me
  loc_B46F8F: MemLdStr global_80
  loc_B46F92: AryLock
  loc_B46F95: Ary1LdPr
  loc_B46F96: MemLdRfVar from_stack_1.global_16
  loc_B46F99: CVarRef
  loc_B46F9E: LitI2_Byte &HFF
  loc_B46FA0: FLdZeroAd var_FC
  loc_B46FA3: CVarAd
  loc_B46FA7: PopAdLdVar
  loc_B46FA8: FLdPr Me
  loc_B46FAB: MemLdI2 global_94
  loc_B46FAE: CI4UI1
  loc_B46FAF: FLdPr Me
  loc_B46FB2: MemLdI2 global_92
  loc_B46FB5: CI4UI1
  loc_B46FB6: FLdPr Me
  loc_B46FB9: MemLdStr global_80
  loc_B46FBC: AryLock
  loc_B46FBF: Ary1LdPr
  loc_B46FC0: MemLdStr global_8
  loc_B46FC3: AryLock
  loc_B46FC6: Ary1LdPr
  loc_B46FC7: MemLdRfVar from_stack_1.global_36
  loc_B46FCA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B46FCF: AryUnlock
  loc_B46FD2: AryUnlock
  loc_B46FD5: AryUnlock
  loc_B46FD8: FFreeAd var_B8 = ""
  loc_B46FDF: FFree1Var var_C8 = ""
  loc_B46FE2: FLdPr var_13C
  loc_B46FE5: Call clsbase.MoveSiguiente()
  loc_B46FEA: FLdPr Me
  loc_B46FED: MemLdRfVar from_stack_1.global_94
  loc_B46FF0: NextI2 var_158, loc_B46B4E
  loc_B46FF5: LitI2_Byte 0
  loc_B46FF7: FLdPr Me
  loc_B46FFA: MemLdRfVar from_stack_1.global_84
  loc_B46FFD: CVarRef
  loc_B47002: LitI2_Byte &HFF
  loc_B47004: FLdPr Me
  loc_B47007: MemLdI2 global_92
  loc_B4700A: CI4UI1
  loc_B4700B: FLdPr Me
  loc_B4700E: MemLdStr global_80
  loc_B47011: Ary1LdPr
  loc_B47012: MemLdStr global_12
  loc_B47015: CVarStr var_A4
  loc_B47018: PopAdLdVar
  loc_B47019: FLdPr Me
  loc_B4701C: MemLdRfVar from_stack_1.global_96
  loc_B4701F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B47024: LitI2_Byte 0
  loc_B47026: FLdPr Me
  loc_B47029: MemLdRfVar from_stack_1.global_88
  loc_B4702C: CVarRef
  loc_B47031: LitI2_Byte &HFF
  loc_B47033: FLdPr Me
  loc_B47036: MemLdI2 global_92
  loc_B47039: CI4UI1
  loc_B4703A: FLdPr Me
  loc_B4703D: MemLdStr global_80
  loc_B47040: Ary1LdPr
  loc_B47041: MemLdStr global_16
  loc_B47044: CVarStr var_A4
  loc_B47047: PopAdLdVar
  loc_B47048: FLdPr Me
  loc_B4704B: MemLdRfVar from_stack_1.global_96
  loc_B4704E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B47053: FLdPr Me
  loc_B47056: MemLdRfVar from_stack_1.global_92
  loc_B47059: NextI2 var_14C, loc_B46A87
  loc_B4705E: LitNothing
  loc_B47060: FStAd var_13C 
  loc_B47064: LitI2_Byte &HFF
  loc_B47066: FLdPr Me
  loc_B47069: MemStI2 bGenerado
  loc_B4706C: LitI4 0
  loc_B47071: CI2I4
  loc_B47072: FLdPr Me
  loc_B47075: Me.MousePointer = from_stack_1
  loc_B4707A: LitVarStr var_A4, vbNullString
  loc_B4707F: PopAdLdVar
  loc_B47080: FLdPr Me
  loc_B47083: VCallAd Control_ID_statusBar
  loc_B47086: FStAdFunc var_B8
  loc_B47089: FLdPr var_B8
  loc_B4708C: LateIdSt
  loc_B47091: FFree1Ad var_B8
  loc_B47094: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'ACB0D0
  'Data Table: 4770F4
  loc_ACAAAC: FLdRfVar var_88
  loc_ACAAAF: LitI2_Byte 0
  loc_ACAAB1: LitI2_Byte &HFF
  loc_ACAAB3: ImpAdLdI4 MemVar_C3D83C
  loc_ACAAB6: FLdPr Me
  loc_ACAAB9: MemLdRfVar from_stack_1.global_76
  loc_ACAABC: NewIfNullPr IFileSystem3
  loc_ACAABF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ACAAC4: ILdRf var_88
  loc_ACAAC7: FLdPr Me
  loc_ACAACA: MemStVarAd
  loc_ACAACE: FFree1Ad var_88
  loc_ACAAD1: Call Proc_248_27_A83690()
  loc_ACAAD6: LitI2_Byte 1
  loc_ACAAD8: FLdPr Me
  loc_ACAADB: MemLdRfVar from_stack_1.global_92
  loc_ACAADE: FLdPr Me
  loc_ACAAE1: MemLdStr global_80
  loc_ACAAE4: LitI2_Byte 1
  loc_ACAAE6: FnUBound
  loc_ACAAE8: CI2I4
  loc_ACAAE9: ForI2 var_8C
  loc_ACAAEF: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ACAAF4: PopAdLdVar
  loc_ACAAF5: FLdPr Me
  loc_ACAAF8: MemLdRfVar from_stack_1.htmFile
  loc_ACAAFB: LdPrVar
  loc_ACAAFD: LateMemCall
  loc_ACAB03: LitStr "    <td rowspan="""
  loc_ACAB06: FLdPr Me
  loc_ACAB09: MemLdI2 global_92
  loc_ACAB0C: CI4UI1
  loc_ACAB0D: FLdPr Me
  loc_ACAB10: MemLdStr global_80
  loc_ACAB13: Ary1LdPr
  loc_ACAB14: MemLdStr global_8
  loc_ACAB17: LitI2_Byte 1
  loc_ACAB19: FnUBound
  loc_ACAB1B: LitI4 1
  loc_ACAB20: AddI4
  loc_ACAB21: CStrI4
  loc_ACAB23: FStStrNoPop var_B0
  loc_ACAB26: ConcatStr
  loc_ACAB27: FStStrNoPop var_B4
  loc_ACAB2A: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_ACAB2D: ConcatStr
  loc_ACAB2E: FStStrNoPop var_B8
  loc_ACAB31: FLdPr Me
  loc_ACAB34: MemLdI2 global_92
  loc_ACAB37: CI4UI1
  loc_ACAB38: FLdPr Me
  loc_ACAB3B: MemLdStr global_80
  loc_ACAB3E: Ary1LdPr
  loc_ACAB3F: MemLdStr global_0
  loc_ACAB42: ConcatStr
  loc_ACAB43: FStStrNoPop var_BC
  loc_ACAB46: LitStr "<br>"
  loc_ACAB49: ConcatStr
  loc_ACAB4A: FStStrNoPop var_C0
  loc_ACAB4D: FLdPr Me
  loc_ACAB50: MemLdI2 global_92
  loc_ACAB53: CI4UI1
  loc_ACAB54: FLdPr Me
  loc_ACAB57: MemLdStr global_80
  loc_ACAB5A: Ary1LdPr
  loc_ACAB5B: MemLdStr global_4
  loc_ACAB5E: ConcatStr
  loc_ACAB5F: FStStrNoPop var_C4
  loc_ACAB62: LitStr "</td>"
  loc_ACAB65: ConcatStr
  loc_ACAB66: CVarStr var_D4
  loc_ACAB69: PopAdLdVar
  loc_ACAB6A: FLdPr Me
  loc_ACAB6D: MemLdRfVar from_stack_1.htmFile
  loc_ACAB70: LdPrVar
  loc_ACAB72: LateMemCall
  loc_ACAB78: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_ACAB87: FFree1Var var_D4 = ""
  loc_ACAB8A: LitI2_Byte 1
  loc_ACAB8C: FLdPr Me
  loc_ACAB8F: MemLdRfVar from_stack_1.global_94
  loc_ACAB92: FLdPr Me
  loc_ACAB95: MemLdI2 global_92
  loc_ACAB98: CI4UI1
  loc_ACAB99: FLdPr Me
  loc_ACAB9C: MemLdStr global_80
  loc_ACAB9F: Ary1LdPr
  loc_ACABA0: MemLdStr global_8
  loc_ACABA3: LitI2_Byte 1
  loc_ACABA5: FnUBound
  loc_ACABA7: CI2I4
  loc_ACABA8: ForI2 var_D8
  loc_ACABAE: FLdPr Me
  loc_ACABB1: MemLdI2 global_94
  loc_ACABB4: CI4UI1
  loc_ACABB5: FLdPr Me
  loc_ACABB8: MemLdI2 global_92
  loc_ACABBB: CI4UI1
  loc_ACABBC: FLdPr Me
  loc_ACABBF: MemLdStr global_80
  loc_ACABC2: AryLock
  loc_ACABC5: Ary1LdPr
  loc_ACABC6: MemLdStr global_8
  loc_ACABC9: AryLock
  loc_ACABCC: Ary1LdRf
  loc_ACABCD: FStR4 var_E4
  loc_ACABD0: FLdPr Me
  loc_ACABD3: MemLdI2 global_94
  loc_ACABD6: LitI2_Byte 1
  loc_ACABD8: NeI2
  loc_ACABD9: BranchF loc_ACABF0
  loc_ACABDC: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ACABE1: PopAdLdVar
  loc_ACABE2: FLdPr Me
  loc_ACABE5: MemLdRfVar from_stack_1.htmFile
  loc_ACABE8: LdPrVar
  loc_ACABEA: LateMemCall
  loc_ACABF0: LitI4 0
  loc_ACABF5: LitI4 0
  loc_ACABFA: LitI2_Byte 0
  loc_ACABFC: LitStr "center"
  loc_ACABFF: FMemLdR4 var_E4(0)
  loc_ACAC04: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACAC09: CVarStr var_D4
  loc_ACAC0C: PopAdLdVar
  loc_ACAC0D: FLdPr Me
  loc_ACAC10: MemLdRfVar from_stack_1.htmFile
  loc_ACAC13: LdPrVar
  loc_ACAC15: LateMemCall
  loc_ACAC1B: FFree1Var var_D4 = ""
  loc_ACAC1E: LitI4 0
  loc_ACAC23: LitI4 0
  loc_ACAC28: LitI2_Byte 0
  loc_ACAC2A: LitStr "right"
  loc_ACAC2D: FMemLdR4 var_E4(12)
  loc_ACAC32: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACAC37: CVarStr var_D4
  loc_ACAC3A: PopAdLdVar
  loc_ACAC3B: FLdPr Me
  loc_ACAC3E: MemLdRfVar from_stack_1.htmFile
  loc_ACAC41: LdPrVar
  loc_ACAC43: LateMemCall
  loc_ACAC49: FFree1Var var_D4 = ""
  loc_ACAC4C: LitI4 0
  loc_ACAC51: LitI4 0
  loc_ACAC56: LitI2_Byte 0
  loc_ACAC58: LitStr "left"
  loc_ACAC5B: FMemLdR4 var_E4(4)
  loc_ACAC60: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACAC65: CVarStr var_D4
  loc_ACAC68: PopAdLdVar
  loc_ACAC69: FLdPr Me
  loc_ACAC6C: MemLdRfVar from_stack_1.htmFile
  loc_ACAC6F: LdPrVar
  loc_ACAC71: LateMemCall
  loc_ACAC77: FFree1Var var_D4 = ""
  loc_ACAC7A: LitI4 0
  loc_ACAC7F: LitI4 0
  loc_ACAC84: LitI2_Byte 0
  loc_ACAC86: LitStr "right"
  loc_ACAC89: FMemLdR4 var_E4(8)
  loc_ACAC8E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACAC93: CVarStr var_D4
  loc_ACAC96: PopAdLdVar
  loc_ACAC97: FLdPr Me
  loc_ACAC9A: MemLdRfVar from_stack_1.htmFile
  loc_ACAC9D: LdPrVar
  loc_ACAC9F: LateMemCall
  loc_ACACA5: FFree1Var var_D4 = ""
  loc_ACACA8: LitI4 0
  loc_ACACAD: LitI4 0
  loc_ACACB2: LitI2_Byte 0
  loc_ACACB4: LitStr "right"
  loc_ACACB7: FMemLdR4 var_E4(16)
  loc_ACACBC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACACC1: CVarStr var_D4
  loc_ACACC4: PopAdLdVar
  loc_ACACC5: FLdPr Me
  loc_ACACC8: MemLdRfVar from_stack_1.htmFile
  loc_ACACCB: LdPrVar
  loc_ACACCD: LateMemCall
  loc_ACACD3: FFree1Var var_D4 = ""
  loc_ACACD6: LitI4 0
  loc_ACACDB: LitI4 0
  loc_ACACE0: LitI2_Byte 0
  loc_ACACE2: LitStr "left"
  loc_ACACE5: FMemLdR4 var_E4(20)
  loc_ACACEA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACACEF: CVarStr var_D4
  loc_ACACF2: PopAdLdVar
  loc_ACACF3: FLdPr Me
  loc_ACACF6: MemLdRfVar from_stack_1.htmFile
  loc_ACACF9: LdPrVar
  loc_ACACFB: LateMemCall
  loc_ACAD01: FFree1Var var_D4 = ""
  loc_ACAD04: LitI4 0
  loc_ACAD09: LitI4 0
  loc_ACAD0E: LitI2_Byte 0
  loc_ACAD10: LitStr "right"
  loc_ACAD13: FMemLdR4 var_E4(24)
  loc_ACAD18: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACAD1D: CVarStr var_D4
  loc_ACAD20: PopAdLdVar
  loc_ACAD21: FLdPr Me
  loc_ACAD24: MemLdRfVar from_stack_1.htmFile
  loc_ACAD27: LdPrVar
  loc_ACAD29: LateMemCall
  loc_ACAD2F: FFree1Var var_D4 = ""
  loc_ACAD32: LitI4 0
  loc_ACAD37: LitI4 0
  loc_ACAD3C: LitI2_Byte 0
  loc_ACAD3E: LitStr "right"
  loc_ACAD41: FMemLdR4 var_E4(28)
  loc_ACAD46: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACAD4B: CVarStr var_D4
  loc_ACAD4E: PopAdLdVar
  loc_ACAD4F: FLdPr Me
  loc_ACAD52: MemLdRfVar from_stack_1.htmFile
  loc_ACAD55: LdPrVar
  loc_ACAD57: LateMemCall
  loc_ACAD5D: FFree1Var var_D4 = ""
  loc_ACAD60: LitI4 0
  loc_ACAD65: LitI4 0
  loc_ACAD6A: LitI2_Byte 0
  loc_ACAD6C: LitStr "right"
  loc_ACAD6F: FMemLdR4 var_E4(32)
  loc_ACAD74: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACAD79: CVarStr var_D4
  loc_ACAD7C: PopAdLdVar
  loc_ACAD7D: FLdPr Me
  loc_ACAD80: MemLdRfVar from_stack_1.htmFile
  loc_ACAD83: LdPrVar
  loc_ACAD85: LateMemCall
  loc_ACAD8B: FFree1Var var_D4 = ""
  loc_ACAD8E: LitI4 0
  loc_ACAD93: LitI4 0
  loc_ACAD98: LitI2_Byte 0
  loc_ACAD9A: LitStr "right"
  loc_ACAD9D: FMemLdR4 var_E4(36)
  loc_ACADA2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ACADA7: CVarStr var_D4
  loc_ACADAA: PopAdLdVar
  loc_ACADAB: FLdPr Me
  loc_ACADAE: MemLdRfVar from_stack_1.htmFile
  loc_ACADB1: LdPrVar
  loc_ACADB3: LateMemCall
  loc_ACADB9: FFree1Var var_D4 = ""
  loc_ACADBC: LitVarStr var_9C, "  </tr>"
  loc_ACADC1: PopAdLdVar
  loc_ACADC2: FLdPr Me
  loc_ACADC5: MemLdRfVar from_stack_1.htmFile
  loc_ACADC8: LdPrVar
  loc_ACADCA: LateMemCall
  loc_ACADD0: LitI4 0
  loc_ACADD5: FStR4 var_E4
  loc_ACADD8: AryUnlock
  loc_ACADDB: AryUnlock
  loc_ACADDE: FLdPr Me
  loc_ACADE1: MemLdRfVar from_stack_1.global_94
  loc_ACADE4: NextI2 var_D8, loc_ACABAE
  loc_ACADE9: LitVarStr var_9C, "  <tr>"
  loc_ACADEE: PopAdLdVar
  loc_ACADEF: FLdPr Me
  loc_ACADF2: MemLdRfVar from_stack_1.htmFile
  loc_ACADF5: LdPrVar
  loc_ACADF7: LateMemCall
  loc_ACADFD: LitVarStr var_9C, "    <th colspan=""7"" align=""left"">&nbsp;</th>"
  loc_ACAE02: PopAdLdVar
  loc_ACAE03: FLdPr Me
  loc_ACAE06: MemLdRfVar from_stack_1.htmFile
  loc_ACAE09: LdPrVar
  loc_ACAE0B: LateMemCall
  loc_ACAE11: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_ACAE16: PopAdLdVar
  loc_ACAE17: FLdPr Me
  loc_ACAE1A: MemLdRfVar from_stack_1.htmFile
  loc_ACAE1D: LdPrVar
  loc_ACAE1F: LateMemCall
  loc_ACAE25: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ACAE28: FLdPr Me
  loc_ACAE2B: MemLdI2 global_92
  loc_ACAE2E: CI4UI1
  loc_ACAE2F: FLdPr Me
  loc_ACAE32: MemLdStr global_80
  loc_ACAE35: Ary1LdPr
  loc_ACAE36: MemLdStr global_12
  loc_ACAE39: ConcatStr
  loc_ACAE3A: FStStrNoPop var_B0
  loc_ACAE3D: LitStr "</td>"
  loc_ACAE40: ConcatStr
  loc_ACAE41: CVarStr var_D4
  loc_ACAE44: PopAdLdVar
  loc_ACAE45: FLdPr Me
  loc_ACAE48: MemLdRfVar from_stack_1.htmFile
  loc_ACAE4B: LdPrVar
  loc_ACAE4D: LateMemCall
  loc_ACAE53: FFree1Str var_B0
  loc_ACAE56: FFree1Var var_D4 = ""
  loc_ACAE59: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ACAE5C: FLdPr Me
  loc_ACAE5F: MemLdI2 global_92
  loc_ACAE62: CI4UI1
  loc_ACAE63: FLdPr Me
  loc_ACAE66: MemLdStr global_80
  loc_ACAE69: Ary1LdPr
  loc_ACAE6A: MemLdStr global_16
  loc_ACAE6D: ConcatStr
  loc_ACAE6E: FStStrNoPop var_B0
  loc_ACAE71: LitStr "</td>"
  loc_ACAE74: ConcatStr
  loc_ACAE75: CVarStr var_D4
  loc_ACAE78: PopAdLdVar
  loc_ACAE79: FLdPr Me
  loc_ACAE7C: MemLdRfVar from_stack_1.htmFile
  loc_ACAE7F: LdPrVar
  loc_ACAE81: LateMemCall
  loc_ACAE87: FFree1Str var_B0
  loc_ACAE8A: FFree1Var var_D4 = ""
  loc_ACAE8D: LitVarStr var_9C, "  </tr>"
  loc_ACAE92: PopAdLdVar
  loc_ACAE93: FLdPr Me
  loc_ACAE96: MemLdRfVar from_stack_1.htmFile
  loc_ACAE99: LdPrVar
  loc_ACAE9B: LateMemCall
  loc_ACAEA1: FLdPr Me
  loc_ACAEA4: MemLdRfVar from_stack_1.global_92
  loc_ACAEA7: NextI2 var_8C, loc_ACAAEF
  loc_ACAEAC: LitVarStr var_9C, "  <tr><td colspan=""11"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_ACAEB1: PopAdLdVar
  loc_ACAEB2: FLdPr Me
  loc_ACAEB5: MemLdRfVar from_stack_1.htmFile
  loc_ACAEB8: LdPrVar
  loc_ACAEBA: LateMemCall
  loc_ACAEC0: LitVarStr var_9C, "  <tr>"
  loc_ACAEC5: PopAdLdVar
  loc_ACAEC6: FLdPr Me
  loc_ACAEC9: MemLdRfVar from_stack_1.htmFile
  loc_ACAECC: LdPrVar
  loc_ACAECE: LateMemCall
  loc_ACAED4: LitVarStr var_9C, "    <td colspan=""8"" align=""left"">&nbsp;</th>"
  loc_ACAED9: PopAdLdVar
  loc_ACAEDA: FLdPr Me
  loc_ACAEDD: MemLdRfVar from_stack_1.htmFile
  loc_ACAEE0: LdPrVar
  loc_ACAEE2: LateMemCall
  loc_ACAEE8: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_ACAEED: PopAdLdVar
  loc_ACAEEE: FLdPr Me
  loc_ACAEF1: MemLdRfVar from_stack_1.htmFile
  loc_ACAEF4: LdPrVar
  loc_ACAEF6: LateMemCall
  loc_ACAEFC: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ACAEFF: FLdPr Me
  loc_ACAF02: MemLdStr global_84
  loc_ACAF05: ConcatStr
  loc_ACAF06: FStStrNoPop var_B0
  loc_ACAF09: LitStr "</td>"
  loc_ACAF0C: ConcatStr
  loc_ACAF0D: CVarStr var_D4
  loc_ACAF10: PopAdLdVar
  loc_ACAF11: FLdPr Me
  loc_ACAF14: MemLdRfVar from_stack_1.htmFile
  loc_ACAF17: LdPrVar
  loc_ACAF19: LateMemCall
  loc_ACAF1F: FFree1Str var_B0
  loc_ACAF22: FFree1Var var_D4 = ""
  loc_ACAF25: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ACAF28: FLdPr Me
  loc_ACAF2B: MemLdStr global_88
  loc_ACAF2E: ConcatStr
  loc_ACAF2F: FStStrNoPop var_B0
  loc_ACAF32: LitStr "</td>"
  loc_ACAF35: ConcatStr
  loc_ACAF36: CVarStr var_D4
  loc_ACAF39: PopAdLdVar
  loc_ACAF3A: FLdPr Me
  loc_ACAF3D: MemLdRfVar from_stack_1.htmFile
  loc_ACAF40: LdPrVar
  loc_ACAF42: LateMemCall
  loc_ACAF48: FFree1Str var_B0
  loc_ACAF4B: FFree1Var var_D4 = ""
  loc_ACAF4E: LitVarStr var_9C, "  </tr>"
  loc_ACAF53: PopAdLdVar
  loc_ACAF54: FLdPr Me
  loc_ACAF57: MemLdRfVar from_stack_1.htmFile
  loc_ACAF5A: LdPrVar
  loc_ACAF5C: LateMemCall
  loc_ACAF62: LitVarStr var_9C, "  <tr><td colspan=""11"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_ACAF67: PopAdLdVar
  loc_ACAF68: FLdPr Me
  loc_ACAF6B: MemLdRfVar from_stack_1.htmFile
  loc_ACAF6E: LdPrVar
  loc_ACAF70: LateMemCall
  loc_ACAF76: FLdPr Me
  loc_ACAF79: MemLdStr global_88
  loc_ACAF7C: CR8Str
  loc_ACAF7E: FLdPr Me
  loc_ACAF81: MemLdStr global_84
  loc_ACAF84: CR8Str
  loc_ACAF86: SubR4
  loc_ACAF87: CR8R8
  loc_ACAF88: LitI2_Byte 0
  loc_ACAF8A: CR8I2
  loc_ACAF8B: GtR4
  loc_ACAF8C: BranchF loc_ACAFD2
  loc_ACAF8F: LitI2_Byte 0
  loc_ACAF91: LitVar_Missing var_D4
  loc_ACAF94: LitI2_Byte &HFF
  loc_ACAF96: FLdPr Me
  loc_ACAF99: MemLdStr global_88
  loc_ACAF9C: CR8Str
  loc_ACAF9E: FLdPr Me
  loc_ACAFA1: MemLdStr global_84
  loc_ACAFA4: CR8Str
  loc_ACAFA6: SubR4
  loc_ACAFA7: CVarR8
  loc_ACAFAB: PopAdLdVar
  loc_ACAFAC: FLdRfVar var_EC
  loc_ACAFAF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACAFB4: FFree1Var var_D4 = ""
  loc_ACAFB7: LitI2_Byte 0
  loc_ACAFB9: LitVar_Missing var_D4
  loc_ACAFBC: LitI2_Byte &HFF
  loc_ACAFBE: LitVarStr var_9C, "0"
  loc_ACAFC3: PopAdLdVar
  loc_ACAFC4: FLdRfVar var_F0
  loc_ACAFC7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACAFCC: FFree1Var var_D4 = ""
  loc_ACAFCF: Branch loc_ACB012
  loc_ACAFD2: LitI2_Byte 0
  loc_ACAFD4: LitVar_Missing var_D4
  loc_ACAFD7: LitI2_Byte &HFF
  loc_ACAFD9: FLdPr Me
  loc_ACAFDC: MemLdStr global_84
  loc_ACAFDF: CR8Str
  loc_ACAFE1: FLdPr Me
  loc_ACAFE4: MemLdStr global_88
  loc_ACAFE7: CR8Str
  loc_ACAFE9: SubR4
  loc_ACAFEA: CVarR8
  loc_ACAFEE: PopAdLdVar
  loc_ACAFEF: FLdRfVar var_F0
  loc_ACAFF2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACAFF7: FFree1Var var_D4 = ""
  loc_ACAFFA: LitI2_Byte 0
  loc_ACAFFC: LitVar_Missing var_D4
  loc_ACAFFF: LitI2_Byte &HFF
  loc_ACB001: LitVarStr var_9C, "0"
  loc_ACB006: PopAdLdVar
  loc_ACB007: FLdRfVar var_EC
  loc_ACB00A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACB00F: FFree1Var var_D4 = ""
  loc_ACB012: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_ACB017: PopAdLdVar
  loc_ACB018: FLdPr Me
  loc_ACB01B: MemLdRfVar from_stack_1.htmFile
  loc_ACB01E: LdPrVar
  loc_ACB020: LateMemCall
  loc_ACB026: LitVarStr var_9C, "    <td class=""Titulo2"" colspan=""8"" align=""left"">TOTAL</th>"
  loc_ACB02B: PopAdLdVar
  loc_ACB02C: FLdPr Me
  loc_ACB02F: MemLdRfVar from_stack_1.htmFile
  loc_ACB032: LdPrVar
  loc_ACB034: LateMemCall
  loc_ACB03A: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_ACB03F: PopAdLdVar
  loc_ACB040: FLdPr Me
  loc_ACB043: MemLdRfVar from_stack_1.htmFile
  loc_ACB046: LdPrVar
  loc_ACB048: LateMemCall
  loc_ACB04E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ACB051: ILdRf var_EC
  loc_ACB054: ConcatStr
  loc_ACB055: FStStrNoPop var_B0
  loc_ACB058: LitStr "</td>"
  loc_ACB05B: ConcatStr
  loc_ACB05C: CVarStr var_D4
  loc_ACB05F: PopAdLdVar
  loc_ACB060: FLdPr Me
  loc_ACB063: MemLdRfVar from_stack_1.htmFile
  loc_ACB066: LdPrVar
  loc_ACB068: LateMemCall
  loc_ACB06E: FFree1Str var_B0
  loc_ACB071: FFree1Var var_D4 = ""
  loc_ACB074: LitStr "    <td align=""right"" class=""Totales"">"
  loc_ACB077: ILdRf var_F0
  loc_ACB07A: ConcatStr
  loc_ACB07B: FStStrNoPop var_B0
  loc_ACB07E: LitStr "</td>"
  loc_ACB081: ConcatStr
  loc_ACB082: CVarStr var_D4
  loc_ACB085: PopAdLdVar
  loc_ACB086: FLdPr Me
  loc_ACB089: MemLdRfVar from_stack_1.htmFile
  loc_ACB08C: LdPrVar
  loc_ACB08E: LateMemCall
  loc_ACB094: FFree1Str var_B0
  loc_ACB097: FFree1Var var_D4 = ""
  loc_ACB09A: LitVarStr var_9C, "  </tr>"
  loc_ACB09F: PopAdLdVar
  loc_ACB0A0: FLdPr Me
  loc_ACB0A3: MemLdRfVar from_stack_1.htmFile
  loc_ACB0A6: LdPrVar
  loc_ACB0A8: LateMemCall
  loc_ACB0AE: LitNothing
  loc_ACB0B0: CastAd
  loc_ACB0B3: FStAdFunc var_E8
  loc_ACB0B6: Call Proc_248_28_9838F0()
  loc_ACB0BB: FLdPr Me
  loc_ACB0BE: MemLdRfVar from_stack_1.htmFile
  loc_ACB0C1: LdPrVar
  loc_ACB0C3: LateMemCall
  loc_ACB0C9: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ACB0CE: ExitProcHresult
End Sub

Public Sub GeneraXLS() '951BBC
  'Data Table: 4770F4
  loc_951BA4: LitI2_Byte 0
  loc_951BA6: FLdPr Me
  loc_951BA9: MemStI2 bLogos
  loc_951BAC: Call GeneraHTML()
  loc_951BB1: LitI2_Byte &HFF
  loc_951BB3: FLdPr Me
  loc_951BB6: MemStI2 bLogos
  loc_951BB9: ExitProcHresult
End Sub

Private Function Proc_248_27_A83690() 'A83690
  'Data Table: 4770F4
  loc_A83278: LitVarStr var_94, "<html>"
  loc_A8327D: PopAdLdVar
  loc_A8327E: FLdPr Me
  loc_A83281: MemLdRfVar from_stack_1.htmFile
  loc_A83284: LdPrVar
  loc_A83286: LateMemCall
  loc_A8328C: LitVarStr var_94, "<head>"
  loc_A83291: PopAdLdVar
  loc_A83292: FLdPr Me
  loc_A83295: MemLdRfVar from_stack_1.htmFile
  loc_A83298: LdPrVar
  loc_A8329A: LateMemCall
  loc_A832A0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A832A5: PopAdLdVar
  loc_A832A6: FLdPr Me
  loc_A832A9: MemLdRfVar from_stack_1.htmFile
  loc_A832AC: LdPrVar
  loc_A832AE: LateMemCall
  loc_A832B4: LitStr "<title>"
  loc_A832B7: FLdRfVar var_A8
  loc_A832BA: FLdPr Me
  loc_A832BD:  = Me.Caption
  loc_A832C2: ILdRf var_A8
  loc_A832C5: ConcatStr
  loc_A832C6: FStStrNoPop var_AC
  loc_A832C9: LitStr "</title>"
  loc_A832CC: ConcatStr
  loc_A832CD: CVarStr var_BC
  loc_A832D0: PopAdLdVar
  loc_A832D1: FLdPr Me
  loc_A832D4: MemLdRfVar from_stack_1.htmFile
  loc_A832D7: LdPrVar
  loc_A832D9: LateMemCall
  loc_A832DF: FFreeStr var_A8 = ""
  loc_A832E6: FFree1Var var_BC = ""
  loc_A832E9: LitStr vbNullString
  loc_A832EC: ILdRf Me
  loc_A832EF: CastAd
  loc_A832F2: FStAdFunc var_C0
  loc_A832F5: FLdRfVar var_C0
  loc_A832F8: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A832FD: FFree1Ad var_C0
  loc_A83300: LitI4 0
  loc_A83305: FStStrCopy var_AC
  loc_A83308: FLdRfVar var_AC
  loc_A8330B: LitI4 0
  loc_A83310: FStStrCopy var_A8
  loc_A83313: FLdRfVar var_A8
  loc_A83316: LitI2_Byte 0
  loc_A83318: PopTmpLdAd2 var_C2
  loc_A8331B: FLdPr Me
  loc_A8331E: MemLdRfVar from_stack_1.htmFile
  loc_A83321: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A83326: FFreeStr var_A8 = ""
  loc_A8332D: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A83332: PopAdLdVar
  loc_A83333: FLdPr Me
  loc_A83336: MemLdRfVar from_stack_1.htmFile
  loc_A83339: LdPrVar
  loc_A8333B: LateMemCall
  loc_A83341: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A83346: PopAdLdVar
  loc_A83347: FLdPr Me
  loc_A8334A: MemLdRfVar from_stack_1.htmFile
  loc_A8334D: LdPrVar
  loc_A8334F: LateMemCall
  loc_A83355: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A8335A: PopAdLdVar
  loc_A8335B: FLdPr Me
  loc_A8335E: MemLdRfVar from_stack_1.htmFile
  loc_A83361: LdPrVar
  loc_A83363: LateMemCall
  loc_A83369: FLdPr Me
  loc_A8336C: MemLdI2 bLogos
  loc_A8336F: BranchF loc_A83386
  loc_A83372: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A83377: PopAdLdVar
  loc_A83378: FLdPr Me
  loc_A8337B: MemLdRfVar from_stack_1.htmFile
  loc_A8337E: LdPrVar
  loc_A83380: LateMemCall
  loc_A83386: LitVarStr var_A4, "    <br><br>"
  loc_A8338B: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A83390: FStVarCopyObj var_BC
  loc_A83393: FLdRfVar var_BC
  loc_A83396: FLdRfVar var_D4
  loc_A83399: ImpAdCallFPR4  = Ucase()
  loc_A8339E: FLdRfVar var_D4
  loc_A833A1: ConcatVar var_E4
  loc_A833A5: LitVarStr var_F4, "</p>"
  loc_A833AA: ConcatVar var_104
  loc_A833AE: PopAdLdVar
  loc_A833AF: FLdPr Me
  loc_A833B2: MemLdRfVar from_stack_1.htmFile
  loc_A833B5: LdPrVar
  loc_A833B7: LateMemCall
  loc_A833BD: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A833C8: LitStr "    <p>"
  loc_A833CB: FLdRfVar var_A8
  loc_A833CE: FLdPr Me
  loc_A833D1:  = Me.Caption
  loc_A833D6: ILdRf var_A8
  loc_A833D9: ConcatStr
  loc_A833DA: FStStrNoPop var_AC
  loc_A833DD: LitStr "</p></th>"
  loc_A833E0: ConcatStr
  loc_A833E1: CVarStr var_BC
  loc_A833E4: PopAdLdVar
  loc_A833E5: FLdPr Me
  loc_A833E8: MemLdRfVar from_stack_1.htmFile
  loc_A833EB: LdPrVar
  loc_A833ED: LateMemCall
  loc_A833F3: FFreeStr var_A8 = ""
  loc_A833FA: FFree1Var var_BC = ""
  loc_A833FD: LitVarStr var_94, "  </tr>"
  loc_A83402: PopAdLdVar
  loc_A83403: FLdPr Me
  loc_A83406: MemLdRfVar from_stack_1.htmFile
  loc_A83409: LdPrVar
  loc_A8340B: LateMemCall
  loc_A83411: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_A83416: PopAdLdVar
  loc_A83417: FLdPr Me
  loc_A8341A: MemLdRfVar from_stack_1.htmFile
  loc_A8341D: LdPrVar
  loc_A8341F: LateMemCall
  loc_A83425: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_A8342A: PopAdLdVar
  loc_A8342B: FLdPr Me
  loc_A8342E: MemLdRfVar from_stack_1.htmFile
  loc_A83431: LdPrVar
  loc_A83433: LateMemCall
  loc_A83439: FLdPr Me
  loc_A8343C: VCallAd Control_ID_mskDesde
  loc_A8343F: FStAdFunc var_C0
  loc_A83442: FLdPr var_C0
  loc_A83445: LateIdLdVar var_BC DispID_22 0
  loc_A8344C: CStrVarTmp
  loc_A8344D: FStStrNoPop var_A8
  loc_A83450: LitStr vbNullString
  loc_A83453: NeStr
  loc_A83455: FFree1Str var_A8
  loc_A83458: FFree1Ad var_C0
  loc_A8345B: FFree1Var var_BC = ""
  loc_A8345E: BranchF loc_A834A6
  loc_A83461: LitStr "         Desde: <span class=""Normal"">"
  loc_A83464: FLdPr Me
  loc_A83467: VCallAd Control_ID_mskDesde
  loc_A8346A: FStAdFunc var_C0
  loc_A8346D: FLdPr var_C0
  loc_A83470: LateIdLdVar var_BC DispID_15 0
  loc_A83477: CStrVarTmp
  loc_A83478: FStStrNoPop var_A8
  loc_A8347B: ConcatStr
  loc_A8347C: FStStrNoPop var_AC
  loc_A8347F: LitStr "</span><br>"
  loc_A83482: ConcatStr
  loc_A83483: CVarStr var_D4
  loc_A83486: PopAdLdVar
  loc_A83487: FLdPr Me
  loc_A8348A: MemLdRfVar from_stack_1.htmFile
  loc_A8348D: LdPrVar
  loc_A8348F: LateMemCall
  loc_A83495: FFreeStr var_A8 = ""
  loc_A8349C: FFree1Ad var_C0
  loc_A8349F: FFreeVar var_BC = ""
  loc_A834A6: FLdPr Me
  loc_A834A9: VCallAd Control_ID_mskHasta
  loc_A834AC: FStAdFunc var_C0
  loc_A834AF: FLdPr var_C0
  loc_A834B2: LateIdLdVar var_BC DispID_22 0
  loc_A834B9: CStrVarTmp
  loc_A834BA: FStStrNoPop var_A8
  loc_A834BD: LitStr vbNullString
  loc_A834C0: NeStr
  loc_A834C2: FFree1Str var_A8
  loc_A834C5: FFree1Ad var_C0
  loc_A834C8: FFree1Var var_BC = ""
  loc_A834CB: BranchF loc_A83513
  loc_A834CE: LitStr "         Hasta: <span class=""Normal"">"
  loc_A834D1: FLdPr Me
  loc_A834D4: VCallAd Control_ID_mskHasta
  loc_A834D7: FStAdFunc var_C0
  loc_A834DA: FLdPr var_C0
  loc_A834DD: LateIdLdVar var_BC DispID_15 0
  loc_A834E4: CStrVarTmp
  loc_A834E5: FStStrNoPop var_A8
  loc_A834E8: ConcatStr
  loc_A834E9: FStStrNoPop var_AC
  loc_A834EC: LitStr "</span>"
  loc_A834EF: ConcatStr
  loc_A834F0: CVarStr var_D4
  loc_A834F3: PopAdLdVar
  loc_A834F4: FLdPr Me
  loc_A834F7: MemLdRfVar from_stack_1.htmFile
  loc_A834FA: LdPrVar
  loc_A834FC: LateMemCall
  loc_A83502: FFreeStr var_A8 = ""
  loc_A83509: FFree1Ad var_C0
  loc_A8350C: FFreeVar var_BC = ""
  loc_A83513: LitVarStr var_94, "   </th>"
  loc_A83518: PopAdLdVar
  loc_A83519: FLdPr Me
  loc_A8351C: MemLdRfVar from_stack_1.htmFile
  loc_A8351F: LdPrVar
  loc_A83521: LateMemCall
  loc_A83527: LitVarStr var_94, "  </tr>"
  loc_A8352C: PopAdLdVar
  loc_A8352D: FLdPr Me
  loc_A83530: MemLdRfVar from_stack_1.htmFile
  loc_A83533: LdPrVar
  loc_A83535: LateMemCall
  loc_A8353B: LitVarStr var_94, "</table>"
  loc_A83540: PopAdLdVar
  loc_A83541: FLdPr Me
  loc_A83544: MemLdRfVar from_stack_1.htmFile
  loc_A83547: LdPrVar
  loc_A83549: LateMemCall
  loc_A8354F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A83554: PopAdLdVar
  loc_A83555: FLdPr Me
  loc_A83558: MemLdRfVar from_stack_1.htmFile
  loc_A8355B: LdPrVar
  loc_A8355D: LateMemCall
  loc_A83563: LitVarStr var_94, "  <THEAD>"
  loc_A83568: PopAdLdVar
  loc_A83569: FLdPr Me
  loc_A8356C: MemLdRfVar from_stack_1.htmFile
  loc_A8356F: LdPrVar
  loc_A83571: LateMemCall
  loc_A83577: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A8357C: PopAdLdVar
  loc_A8357D: FLdPr Me
  loc_A83580: MemLdRfVar from_stack_1.htmFile
  loc_A83583: LdPrVar
  loc_A83585: LateMemCall
  loc_A8358B: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_A83590: PopAdLdVar
  loc_A83591: FLdPr Me
  loc_A83594: MemLdRfVar from_stack_1.htmFile
  loc_A83597: LdPrVar
  loc_A83599: LateMemCall
  loc_A8359F: LitVarStr var_94, "    <th>Fecha</th>"
  loc_A835A4: PopAdLdVar
  loc_A835A5: FLdPr Me
  loc_A835A8: MemLdRfVar from_stack_1.htmFile
  loc_A835AB: LdPrVar
  loc_A835AD: LateMemCall
  loc_A835B3: LitVarStr var_94, "    <th>O.P.</th>"
  loc_A835B8: PopAdLdVar
  loc_A835B9: FLdPr Me
  loc_A835BC: MemLdRfVar from_stack_1.htmFile
  loc_A835BF: LdPrVar
  loc_A835C1: LateMemCall
  loc_A835C7: LitVarStr var_94, "    <th>Expediente</th>"
  loc_A835CC: PopAdLdVar
  loc_A835CD: FLdPr Me
  loc_A835D0: MemLdRfVar from_stack_1.htmFile
  loc_A835D3: LdPrVar
  loc_A835D5: LateMemCall
  loc_A835DB: LitVarStr var_94, "    <th>Liq.</th>"
  loc_A835E0: PopAdLdVar
  loc_A835E1: FLdPr Me
  loc_A835E4: MemLdRfVar from_stack_1.htmFile
  loc_A835E7: LdPrVar
  loc_A835E9: LateMemCall
  loc_A835EF: LitVarStr var_94, "    <th>CUIT</th>"
  loc_A835F4: PopAdLdVar
  loc_A835F5: FLdPr Me
  loc_A835F8: MemLdRfVar from_stack_1.htmFile
  loc_A835FB: LdPrVar
  loc_A835FD: LateMemCall
  loc_A83603: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_A83608: PopAdLdVar
  loc_A83609: FLdPr Me
  loc_A8360C: MemLdRfVar from_stack_1.htmFile
  loc_A8360F: LdPrVar
  loc_A83611: LateMemCall
  loc_A83617: LitVarStr var_94, "    <th>Banco</th>"
  loc_A8361C: PopAdLdVar
  loc_A8361D: FLdPr Me
  loc_A83620: MemLdRfVar from_stack_1.htmFile
  loc_A83623: LdPrVar
  loc_A83625: LateMemCall
  loc_A8362B: LitVarStr var_94, "    <th>Cheque</th>"
  loc_A83630: PopAdLdVar
  loc_A83631: FLdPr Me
  loc_A83634: MemLdRfVar from_stack_1.htmFile
  loc_A83637: LdPrVar
  loc_A83639: LateMemCall
  loc_A8363F: LitVarStr var_94, "    <th>D E B E</th>"
  loc_A83644: PopAdLdVar
  loc_A83645: FLdPr Me
  loc_A83648: MemLdRfVar from_stack_1.htmFile
  loc_A8364B: LdPrVar
  loc_A8364D: LateMemCall
  loc_A83653: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_A83658: PopAdLdVar
  loc_A83659: FLdPr Me
  loc_A8365C: MemLdRfVar from_stack_1.htmFile
  loc_A8365F: LdPrVar
  loc_A83661: LateMemCall
  loc_A83667: LitVarStr var_94, "  </tr>"
  loc_A8366C: PopAdLdVar
  loc_A8366D: FLdPr Me
  loc_A83670: MemLdRfVar from_stack_1.htmFile
  loc_A83673: LdPrVar
  loc_A83675: LateMemCall
  loc_A8367B: LitVarStr var_94, "  </THEAD>"
  loc_A83680: PopAdLdVar
  loc_A83681: FLdPr Me
  loc_A83684: MemLdRfVar from_stack_1.htmFile
  loc_A83687: LdPrVar
  loc_A83689: LateMemCall
  loc_A8368F: ExitProcHresult
End Function

Private Function Proc_248_28_9838F0() '9838F0
  'Data Table: 4770F4
  loc_9838B0: LitVarStr var_94, "</table>"
  loc_9838B5: PopAdLdVar
  loc_9838B6: FLdPr Me
  loc_9838B9: MemLdRfVar from_stack_1.htmFile
  loc_9838BC: LdPrVar
  loc_9838BE: LateMemCall
  loc_9838C4: LitVarStr var_94, "</body>"
  loc_9838C9: PopAdLdVar
  loc_9838CA: FLdPr Me
  loc_9838CD: MemLdRfVar from_stack_1.htmFile
  loc_9838D0: LdPrVar
  loc_9838D2: LateMemCall
  loc_9838D8: LitVarStr var_94, "</html>"
  loc_9838DD: PopAdLdVar
  loc_9838DE: FLdPr Me
  loc_9838E1: MemLdRfVar from_stack_1.htmFile
  loc_9838E4: LdPrVar
  loc_9838E6: LateMemCall
  loc_9838EC: ExitProcHresult
End Function
