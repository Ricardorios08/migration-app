VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoIV
  Caption = "ACUERDO 2988 - ANEXO IV - De la Ejecución del Presupuesto con Relación al Cálculo de Recursos y Financiamiento"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoIV.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10605
  ClientHeight = 5820
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5565
    Width = 10605
    Height = 255
    TabIndex = 25
    OleObjectBlob = "rptA2988AnexoIV.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9480
    Top = 4440
    Width = 735
    Height = 615
    TabIndex = 23
    Cancel = -1  'True
    Picture = "rptA2988AnexoIV.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoIV.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4200
    Width = 5895
    Height = 1095
    TabIndex = 19
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT HTC"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 26
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 22
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4200
    Width = 3015
    Height = 1095
    TabIndex = 16
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10335
    Height = 3975
    TabIndex = 0
    Begin VB.CheckBox chkAgrupaMes
      Caption = "Agrupa EJECUCIÓN por MES"
      Left = 2040
      Top = 3240
      Width = 2415
      Height = 375
      TabIndex = 27
    End
    Begin VB.CommandButton cmdHasta
      Left = 3240
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptA2988AnexoIV.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdDesde
      Left = 3240
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptA2988AnexoIV.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CodiCucoCmd
      Left = 3645
      Top = 2520
      Width = 375
      Height = 375
      TabIndex = 14
      Picture = "rptA2988AnexoIV.frx":1684
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox CodiTicuCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2055
      Top = 1920
      Width = 5055
      Height = 315
      TabIndex = 11
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8040
      Top = 840
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox CboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2055
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 2055
      Top = 2520
      Width = 1575
      Height = 315
      TabIndex = 13
      OleObjectBlob = "rptA2988AnexoIV.frx":177E
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 2055
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptA2988AnexoIV.frx":17DE
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 2055
      Top = 1320
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptA2988AnexoIV.frx":1866
    End
    Begin VB.Label Label6
      Caption = "Hasta:"
      Left = 1455
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 1410
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 690
      Top = 2520
      Width = 1230
      Height = 195
      TabIndex = 12
    End
    Begin VB.Label DetaCucoLbl
      Left = 4125
      Top = 2520
      Width = 5535
      Height = 375
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Tipo de Cuenta Contable:"
      Left = 105
      Top = 1920
      Width = 1815
      Height = 195
      TabIndex = 10
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1335
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9600
    Top = 4560
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 24
    OleObjectBlob = "rptA2988AnexoIV.frx":18EE
  End
End

Attribute VB_Name = "rptA2988AnexoIV"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_005AB1F8
  bStruc(84) As Byte ' String fields: 21
End Type

Private Type UDT_2_005AB258
  bStruc(96) As Byte ' String fields: 4
End Type

Private Type UDT_3_005AB2A8
  bStruc(96) As Byte ' String fields: 4
End Type

Private Type UDT_4_005AB2F8
  bStruc(96) As Byte ' String fields: 4
End Type

Private Type UDT_5_005AB348
  bStruc(96) As Byte ' String fields: 4
End Type


Private Sub CodiCucoMsk_UnknownEvent_0 '94B318
  'Data Table: 4C616C
  loc_94B304: FLdPr Me
  loc_94B307: VCallAd Control_ID_CodiCucoMsk
  loc_94B30A: CVarAd
  loc_94B30E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B313: FFree1Var var_94 = ""
  loc_94B316: ExitProcHresult
  loc_94B317: PopAdLdVar
End Sub

Private Sub cmdSalir_Click() '97A4EC
  'Data Table: 4C616C
  loc_97A4BC: LitVarStr var_94, "Cerrando..."
  loc_97A4C1: PopAdLdVar
  loc_97A4C2: FLdPr Me
  loc_97A4C5: VCallAd Control_ID_statusBar
  loc_97A4C8: FStAdFunc var_A8
  loc_97A4CB: FLdPr var_A8
  loc_97A4CE: LateIdSt
  loc_97A4D3: FFree1Ad var_A8
  loc_97A4D6: ILdRf Me
  loc_97A4D9: FStAdNoPop
  loc_97A4DD: ImpAdLdRf MemVar_C44F9C
  loc_97A4E0: NewIfNullPr Me
  loc_97A4E3: Me.Global.Unload from_stack_1
  loc_97A4E8: FFree1Ad var_A8
  loc_97A4EB: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A34C
  'Data Table: 4C616C
  loc_98A314: FLdPr Me
  loc_98A317: VCallAd Control_ID_statusBar
  loc_98A31A: FStAdFunc var_88
  loc_98A31D: FLdPr var_88
  loc_98A320: LateIdLdVar var_98 DispID_1 0
  loc_98A327: CStrVarTmp
  loc_98A328: CVarStr var_A8
  loc_98A32B: PopAdLdVar
  loc_98A32C: FLdPr Me
  loc_98A32F: VCallAd Control_ID_statusBar
  loc_98A332: FStAdFunc var_BC
  loc_98A335: FLdPr var_BC
  loc_98A338: LateIdSt
  loc_98A33D: FFreeAd var_88 = ""
  loc_98A344: FFreeVar var_98 = ""
  loc_98A34B: ExitProcHresult
End Sub

Private Sub cmdDesde_Click() '9805F8
  'Data Table: 4C616C
  loc_9805C4: LitVar_Missing var_A4
  loc_9805C7: PopAdLdVar
  loc_9805C8: LitVarI4
  loc_9805D0: PopAdLdVar
  loc_9805D1: ImpAdLdRf MemVar_C3D9A8
  loc_9805D4: NewIfNullPr frmCalendario
  loc_9805D7: frmCalendario.Show from_stack_1, from_stack_2
  loc_9805DC: ImpAdLdRf MemVar_C3D038
  loc_9805DF: CDargRef
  loc_9805E3: FLdPr Me
  loc_9805E6: VCallAd Control_ID_mskDesde
  loc_9805E9: FStAdFunc var_A8
  loc_9805EC: FLdPr var_A8
  loc_9805EF: LateIdSt
  loc_9805F4: FFree1Ad var_A8
  loc_9805F7: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '94A670
  'Data Table: 4C616C
  loc_94A65C: FLdPr Me
  loc_94A65F: VCallAd Control_ID_mskHasta
  loc_94A662: CVarAd
  loc_94A666: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A66B: FFree1Var var_94 = ""
  loc_94A66E: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B0A84
  'Data Table: 4C616C
  loc_9B09E8: FLdPr Me
  loc_9B09EB: VCallAd Control_ID_mskHasta
  loc_9B09EE: FStAdFunc var_88
  loc_9B09F1: FLdPr var_88
  loc_9B09F4: LateIdLdVar var_98 DispID_15 0
  loc_9B09FB: PopAd
  loc_9B09FD: FLdPr Me
  loc_9B0A00: VCallAd Control_ID_mskHasta
  loc_9B0A03: FStAdFunc var_AC
  loc_9B0A06: LitI2_Byte 0
  loc_9B0A08: PopTmpLdAd2 var_A2
  loc_9B0A0B: FLdZeroAd var_AC
  loc_9B0A0E: FStAdFunc var_A0
  loc_9B0A11: FLdRfVar var_A0
  loc_9B0A14: LitStr vbNullString
  loc_9B0A17: LitI2_Byte 0
  loc_9B0A19: LitI2_Byte 0
  loc_9B0A1B: FLdRfVar var_98
  loc_9B0A1E: CStrVarTmp
  loc_9B0A1F: FStStrNoPop var_9C
  loc_9B0A22: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0A27: FStStrNoPop var_A8
  loc_9B0A2A: FLdPr Me
  loc_9B0A2D: MemStStrCopy
  loc_9B0A31: FFreeStr var_9C = ""
  loc_9B0A38: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0A41: FFree1Var var_98 = ""
  loc_9B0A44: FLdPr Me
  loc_9B0A47: VCallAd Control_ID_mskHasta
  loc_9B0A4A: FStAdFunc var_B0
  loc_9B0A4D: LitNothing
  loc_9B0A4F: CastAd
  loc_9B0A52: FStAdFunc var_AC
  loc_9B0A55: FLdRfVar var_AC
  loc_9B0A58: FLdZeroAd var_B0
  loc_9B0A5B: FStAdFuncNoPop
  loc_9B0A5E: CastAd
  loc_9B0A61: FStAdFunc var_A0
  loc_9B0A64: FLdRfVar var_A0
  loc_9B0A67: FLdPr Me
  loc_9B0A6A: MemLdRfVar from_stack_1.global_120
  loc_9B0A6D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0A72: IStI2 arg_C
  loc_9B0A75: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0A80: ExitProcHresult
  loc_9B0A81: LitVar_TRUE arg_357
End Function

Private Sub cmdHasta_Click() '980660
  'Data Table: 4C616C
  loc_98062C: LitVar_Missing var_A4
  loc_98062F: PopAdLdVar
  loc_980630: LitVarI4
  loc_980638: PopAdLdVar
  loc_980639: ImpAdLdRf MemVar_C3D9A8
  loc_98063C: NewIfNullPr frmCalendario
  loc_98063F: frmCalendario.Show from_stack_1, from_stack_2
  loc_980644: ImpAdLdRf MemVar_C3D038
  loc_980647: CDargRef
  loc_98064B: FLdPr Me
  loc_98064E: VCallAd Control_ID_mskHasta
  loc_980651: FStAdFunc var_A8
  loc_980654: FLdPr var_A8
  loc_980657: LateIdSt
  loc_98065C: FFree1Ad var_A8
  loc_98065F: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9F97A8
  'Data Table: 4C616C
  loc_9F9660: FLdRfVar var_8C
  loc_9F9663: FLdPr Me
  loc_9F9666: VCallAd Control_ID_CboPeriodo
  loc_9F9669: FStAdFunc var_88
  loc_9F966C: FLdPr var_88
  loc_9F966F:  = Me.Text
  loc_9F9674: LitI2_Byte 1
  loc_9F9676: LitI2_Byte 1
  loc_9F9678: ILdRf var_8C
  loc_9F967B: CI2Str
  loc_9F967D: FLdRfVar var_9C
  loc_9F9680: ImpAdCallFPR4  = DateSerial(, , )
  loc_9F9685: FLdRfVar var_9C
  loc_9F9688: CStrVarTmp
  loc_9F9689: CVarStr var_AC
  loc_9F968C: PopAdLdVar
  loc_9F968D: FLdPr Me
  loc_9F9690: VCallAd Control_ID_mskDesde
  loc_9F9693: FStAdFunc var_C0
  loc_9F9696: FLdPr var_C0
  loc_9F9699: LateIdSt
  loc_9F969E: FFree1Str var_8C
  loc_9F96A1: FFreeAd var_88 = ""
  loc_9F96A8: FFreeVar var_9C = ""
  loc_9F96AF: FLdRfVar var_8C
  loc_9F96B2: FLdPr Me
  loc_9F96B5: VCallAd Control_ID_CboPeriodo
  loc_9F96B8: FStAdFunc var_88
  loc_9F96BB: FLdPr var_88
  loc_9F96BE:  = Me.Text
  loc_9F96C3: ILdRf var_8C
  loc_9F96C6: CI2Str
  loc_9F96C8: ImpAdLdI2 MemVar_C3D064
  loc_9F96CB: LtI2
  loc_9F96CC: FFree1Str var_8C
  loc_9F96CF: FFree1Ad var_88
  loc_9F96D2: BranchF loc_9F9727
  loc_9F96D5: FLdRfVar var_8C
  loc_9F96D8: FLdPr Me
  loc_9F96DB: VCallAd Control_ID_CboPeriodo
  loc_9F96DE: FStAdFunc var_88
  loc_9F96E1: FLdPr var_88
  loc_9F96E4:  = Me.Text
  loc_9F96E9: LitI2_Byte &H1F
  loc_9F96EB: LitI2_Byte &HC
  loc_9F96ED: ILdRf var_8C
  loc_9F96F0: CI2Str
  loc_9F96F2: FLdRfVar var_9C
  loc_9F96F5: ImpAdCallFPR4  = DateSerial(, , )
  loc_9F96FA: FLdRfVar var_9C
  loc_9F96FD: CStrVarTmp
  loc_9F96FE: CVarStr var_AC
  loc_9F9701: PopAdLdVar
  loc_9F9702: FLdPr Me
  loc_9F9705: VCallAd Control_ID_mskHasta
  loc_9F9708: FStAdFunc var_C0
  loc_9F970B: FLdPr var_C0
  loc_9F970E: LateIdSt
  loc_9F9713: FFree1Str var_8C
  loc_9F9716: FFreeAd var_88 = ""
  loc_9F971D: FFreeVar var_9C = ""
  loc_9F9724: Branch loc_9F9747
  loc_9F9727: ImpAdLdFPR8 MemVar_C3D04C
  loc_9F972A: CStrDate
  loc_9F972C: CVarStr var_9C
  loc_9F972F: PopAdLdVar
  loc_9F9730: FLdPr Me
  loc_9F9733: VCallAd Control_ID_mskHasta
  loc_9F9736: FStAdFunc var_88
  loc_9F9739: FLdPr var_88
  loc_9F973C: LateIdSt
  loc_9F9741: FFree1Ad var_88
  loc_9F9744: FFree1Var var_9C = ""
  loc_9F9747: LitStr "Municipalidad de Guaymallén"
  loc_9F974A: LitStr "Municipalidad de Guaymallén"
  loc_9F974D: EqStr
  loc_9F974F: FLdRfVar var_8C
  loc_9F9752: FLdPr Me
  loc_9F9755: VCallAd Control_ID_CboPeriodo
  loc_9F9758: FStAdFunc var_88
  loc_9F975B: FLdPr var_88
  loc_9F975E:  = Me.Text
  loc_9F9763: ILdRf var_8C
  loc_9F9766: LitStr "2018"
  loc_9F9769: EqStr
  loc_9F976B: AndI4
  loc_9F976C: FFree1Str var_8C
  loc_9F976F: FFree1Ad var_88
  loc_9F9772: BranchF loc_9F978E
  loc_9F9775: LitI2_Byte 0
  loc_9F9777: FLdPr Me
  loc_9F977A: VCallAd Control_ID_chkAgrupaMes
  loc_9F977D: FStAdFunc var_88
  loc_9F9780: FLdPr var_88
  loc_9F9783: Me.Enabled = from_stack_1b
  loc_9F9788: FFree1Ad var_88
  loc_9F978B: Branch loc_9F97A4
  loc_9F978E: LitI2_Byte &HFF
  loc_9F9790: FLdPr Me
  loc_9F9793: VCallAd Control_ID_chkAgrupaMes
  loc_9F9796: FStAdFunc var_88
  loc_9F9799: FLdPr var_88
  loc_9F979C: Me.Enabled = from_stack_1b
  loc_9F97A1: FFree1Ad var_88
  loc_9F97A4: ExitProcHresult
End Sub

Private Sub CodiCucoCmd_Click() 'A04654
  'Data Table: 4C616C
  loc_A04504: ImpAdLdRf MemVar_C3D6C0
  loc_A04507: NewIfNullAd
  loc_A0450A: FStAd var_88 
  loc_A0450E: FLdRfVar var_90
  loc_A04511: FLdPr Me
  loc_A04514: VCallAd Control_ID_CboPeriodo
  loc_A04517: FStAdFunc var_8C
  loc_A0451A: FLdPr var_8C
  loc_A0451D:  = Me.Text
  loc_A04522: ILdRf var_90
  loc_A04525: CI2Str
  loc_A04527: FLdPr var_88
  loc_A0452A: Call bscCuentaContable.iPeriInfoPut(from_stack_1v)
  loc_A0452F: FFree1Str var_90
  loc_A04532: FFree1Ad var_8C
  loc_A04535: LitStr " AND (infogov.cc.CodiTicu like '5" & Chr(37) & "' OR infogov.cc.CodiTicu like '7" & Chr(37) & "')"
  loc_A04538: FLdPr var_88
  loc_A0453B: Call bscCuentaContable.sWherePut(from_stack_1v)
  loc_A04540: LitVar_Missing var_B0
  loc_A04543: PopAdLdVar
  loc_A04544: LitVarI4
  loc_A0454C: PopAdLdVar
  loc_A0454D: FLdPr var_88
  loc_A04550: Me.Show from_stack_1, from_stack_2
  loc_A04555: FLdRfVar var_B4
  loc_A04558: FLdRfVar var_8C
  loc_A0455B: FLdPr var_88
  loc_A0455E: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A04563: FLdPr var_8C
  loc_A04566: from_stack_1 = clsbase.RecordCount
  loc_A0456B: ILdRf var_B4
  loc_A0456E: LitI4 0
  loc_A04573: GtI4
  loc_A04574: FFree1Ad var_8C
  loc_A04577: BranchF loc_A0464C
  loc_A0457A: FLdRfVar var_D0
  loc_A0457D: FLdRfVar var_C0
  loc_A04580: LitVarStr var_A0, "CodiCuco"
  loc_A04585: PopAdLdVar
  loc_A04586: FLdRfVar var_BC
  loc_A04589: FLdRfVar var_B8
  loc_A0458C: FLdRfVar var_8C
  loc_A0458F: FLdPr var_88
  loc_A04592: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A04597: FLdPr var_8C
  loc_A0459A: from_stack_1v = clsbase.RsFrmGet()
  loc_A0459F: FLdPr var_B8
  loc_A045A2:  = Me.Fields
  loc_A045A7: FLdPr var_BC
  loc_A045AA: from_stack_2 = Me.Item(from_stack_1)
  loc_A045AF: FLdPr var_C0
  loc_A045B2:  = Me.Value
  loc_A045B7: FLdRfVar var_D0
  loc_A045BA: CStrVarTmp
  loc_A045BB: CVarStr var_E0
  loc_A045BE: PopAdLdVar
  loc_A045BF: FLdPr Me
  loc_A045C2: VCallAd Control_ID_CodiCucoMsk
  loc_A045C5: FStAdFunc var_E4
  loc_A045C8: FLdPr var_E4
  loc_A045CB: LateIdSt
  loc_A045D0: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A045DD: FFreeVar var_D0 = ""
  loc_A045E4: FLdRfVar var_D0
  loc_A045E7: FLdRfVar var_C0
  loc_A045EA: LitVarStr var_A0, "DetaCuco"
  loc_A045EF: PopAdLdVar
  loc_A045F0: FLdRfVar var_BC
  loc_A045F3: FLdRfVar var_B8
  loc_A045F6: FLdRfVar var_8C
  loc_A045F9: FLdPr var_88
  loc_A045FC: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A04601: FLdPr var_8C
  loc_A04604: from_stack_1v = clsbase.RsFrmGet()
  loc_A04609: FLdPr var_B8
  loc_A0460C:  = Me.Fields
  loc_A04611: FLdPr var_BC
  loc_A04614: from_stack_2 = Me.Item(from_stack_1)
  loc_A04619: FLdPr var_C0
  loc_A0461C:  = Me.Value
  loc_A04621: FLdRfVar var_D0
  loc_A04624: CStrVarTmp
  loc_A04625: FStStrNoPop var_90
  loc_A04628: FLdPr Me
  loc_A0462B: VCallAd Control_ID_DetaCucoLbl
  loc_A0462E: FStAdFunc var_E4
  loc_A04631: FLdPr var_E4
  loc_A04634: Me.Caption = from_stack_1
  loc_A04639: FFree1Str var_90
  loc_A0463C: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A04649: FFree1Var var_D0 = ""
  loc_A0464C: LitNothing
  loc_A0464E: FStAd var_88 
  loc_A04652: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9CB858
  'Data Table: 4C616C
  loc_9CB794: FLdPr Me
  loc_9CB797: VCallAd Control_ID_mskDesde
  loc_9CB79A: FStAdFunc var_88
  loc_9CB79D: FLdPr var_88
  loc_9CB7A0: LateIdLdVar var_98 DispID_15 0
  loc_9CB7A7: PopAd
  loc_9CB7A9: FLdPr Me
  loc_9CB7AC: VCallAd Control_ID_mskHasta
  loc_9CB7AF: FStAdFunc var_A8
  loc_9CB7B2: FLdPr var_A8
  loc_9CB7B5: LateIdLdVar var_B8 DispID_15 0
  loc_9CB7BC: PopAd
  loc_9CB7BE: LitStr "Acuerdo 2988 Anexo IV "
  loc_9CB7C1: LitI4 0
  loc_9CB7C6: LitI4 -1
  loc_9CB7CB: LitI4 1
  loc_9CB7D0: LitStr "-"
  loc_9CB7D3: LitStr "/"
  loc_9CB7D6: FLdRfVar var_98
  loc_9CB7D9: CStrVarTmp
  loc_9CB7DA: FStStrNoPop var_9C
  loc_9CB7DD: ImpAdCallI2 Replace(, , , , , )
  loc_9CB7E2: FStStrNoPop var_A0
  loc_9CB7E5: ConcatStr
  loc_9CB7E6: FStStrNoPop var_A4
  loc_9CB7E9: LitStr " "
  loc_9CB7EC: ConcatStr
  loc_9CB7ED: FStStrNoPop var_C0
  loc_9CB7F0: LitI4 0
  loc_9CB7F5: LitI4 -1
  loc_9CB7FA: LitI4 1
  loc_9CB7FF: LitStr "-"
  loc_9CB802: LitStr "/"
  loc_9CB805: FLdRfVar var_B8
  loc_9CB808: CStrVarTmp
  loc_9CB809: FStStrNoPop var_BC
  loc_9CB80C: ImpAdCallI2 Replace(, , , , , )
  loc_9CB811: FStStrNoPop var_C4
  loc_9CB814: ConcatStr
  loc_9CB815: FStStrNoPop var_C8
  loc_9CB818: FLdPr Me
  loc_9CB81B: Me.Tag = from_stack_1
  loc_9CB820: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_9CB831: FFreeAd var_88 = ""
  loc_9CB838: FFreeVar var_98 = ""
  loc_9CB83F: LitI2_Byte 0
  loc_9CB841: ILdRf Me
  loc_9CB844: CastAd
  loc_9CB847: FStAdFunc var_88
  loc_9CB84A: FLdRfVar var_88
  loc_9CB84D: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9CB852: FFree1Ad var_88
  loc_9CB855: ExitProcHresult
  loc_9CB856: AryLdPr
End Sub

Private Sub cmdXLS_Click() '96ABDC
  'Data Table: 4C616C
  loc_96ABC0: LitI2_Byte &HFF
  loc_96ABC2: LitI2_Byte 0
  loc_96ABC4: ILdRf Me
  loc_96ABC7: CastAd
  loc_96ABCA: FStAdFunc var_88
  loc_96ABCD: FLdRfVar var_88
  loc_96ABD0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96ABD5: FFree1Ad var_88
  loc_96ABD8: ExitProcHresult
  loc_96ABD9: ExitProcI2
  loc_96ABDA: Branch loc_979FC0
End Sub

Private Sub cmdNueva_Click() '9D8C84
  'Data Table: 4C616C
  loc_9D8B88: LitI2_Byte 0
  loc_9D8B8A: FLdPr Me
  loc_9D8B8D: MemStI2 bGenerado
  loc_9D8B90: LitI2_Byte &HFF
  loc_9D8B92: FLdPr Me
  loc_9D8B95: MemStI2 bLogos
  loc_9D8B98: ImpAdLdI2 MemVar_C3D064
  loc_9D8B9B: CStrUI1
  loc_9D8B9D: FStStrNoPop var_88
  loc_9D8BA0: FLdPr Me
  loc_9D8BA3: VCallAd Control_ID_CboPeriodo
  loc_9D8BA6: FStAdFunc var_8C
  loc_9D8BA9: FLdPr var_8C
  loc_9D8BAC: Me.Text = from_stack_1
  loc_9D8BB1: FFree1Str var_88
  loc_9D8BB4: FFree1Ad var_8C
  loc_9D8BB7: LitI2_Byte 1
  loc_9D8BB9: LitI2_Byte 1
  loc_9D8BBB: ImpAdLdI2 MemVar_C3D064
  loc_9D8BBE: FLdRfVar var_9C
  loc_9D8BC1: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D8BC6: FLdRfVar var_9C
  loc_9D8BC9: CStrVarTmp
  loc_9D8BCA: CVarStr var_AC
  loc_9D8BCD: PopAdLdVar
  loc_9D8BCE: FLdPr Me
  loc_9D8BD1: VCallAd Control_ID_mskDesde
  loc_9D8BD4: FStAdFunc var_8C
  loc_9D8BD7: FLdPr var_8C
  loc_9D8BDA: LateIdSt
  loc_9D8BDF: FFree1Ad var_8C
  loc_9D8BE2: FFreeVar var_9C = ""
  loc_9D8BE9: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D8BEC: CStrDate
  loc_9D8BEE: CVarStr var_9C
  loc_9D8BF1: PopAdLdVar
  loc_9D8BF2: FLdPr Me
  loc_9D8BF5: VCallAd Control_ID_mskHasta
  loc_9D8BF8: FStAdFunc var_8C
  loc_9D8BFB: FLdPr var_8C
  loc_9D8BFE: LateIdSt
  loc_9D8C03: FFree1Ad var_8C
  loc_9D8C06: FFree1Var var_9C = ""
  loc_9D8C09: LitI2_Byte 0
  loc_9D8C0B: FLdPr Me
  loc_9D8C0E: VCallAd Control_ID_CodiTicuCbo
  loc_9D8C11: FStAdFunc var_8C
  loc_9D8C14: FLdPr var_8C
  loc_9D8C17: Me.ListIndex = from_stack_1
  loc_9D8C1C: FFree1Ad var_8C
  loc_9D8C1F: LitVarStr var_BC, vbNullString
  loc_9D8C24: PopAdLdVar
  loc_9D8C25: FLdPr Me
  loc_9D8C28: VCallAd Control_ID_CodiCucoMsk
  loc_9D8C2B: FStAdFunc var_8C
  loc_9D8C2E: FLdPr var_8C
  loc_9D8C31: LateIdSt
  loc_9D8C36: FFree1Ad var_8C
  loc_9D8C39: LitStr vbNullString
  loc_9D8C3C: FLdPr Me
  loc_9D8C3F: VCallAd Control_ID_DetaCucoLbl
  loc_9D8C42: FStAdFunc var_8C
  loc_9D8C45: FLdPr var_8C
  loc_9D8C48: Me.Caption = from_stack_1
  loc_9D8C4D: FFree1Ad var_8C
  loc_9D8C50: LitI4 0
  loc_9D8C55: CI2I4
  loc_9D8C56: FLdPr Me
  loc_9D8C59: VCallAd Control_ID_chkAgrupaMes
  loc_9D8C5C: FStAdFunc var_8C
  loc_9D8C5F: FLdPr var_8C
  loc_9D8C62: Me.Value = from_stack_1
  loc_9D8C67: FFree1Ad var_8C
  loc_9D8C6A: Call HabilitarCriterio()
  loc_9D8C6F: ILdRf Me
  loc_9D8C72: CastAd
  loc_9D8C75: FStAdFunc var_8C
  loc_9D8C78: FLdRfVar var_8C
  loc_9D8C7B: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D8C80: FFree1Ad var_8C
  loc_9D8C83: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '955C98
  'Data Table: 4C616C
  loc_955C80: ILdRf Me
  loc_955C83: CastAd
  loc_955C86: FStAdFunc var_88
  loc_955C89: FLdRfVar var_88
  loc_955C8C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_955C91: FFree1Ad var_88
  loc_955C94: ExitProcHresult
End Sub

Private Sub Form_Load() 'A54FFC
  'Data Table: 4C616C
  loc_A54D48: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A54D4D: PopAdLdVar
  loc_A54D4E: FLdPr Me
  loc_A54D51: VCallAd Control_ID_CodiCucoMsk
  loc_A54D54: FStAdFunc var_A8
  loc_A54D57: FLdPr var_A8
  loc_A54D5A: LateIdSt
  loc_A54D5F: FFree1Ad var_A8
  loc_A54D62: LitVar_TRUE var_E0
  loc_A54D65: LitVar_FALSE
  loc_A54D69: LitStr "Municipalidad de Guaymallén"
  loc_A54D6C: LitStr "Municipalidad de Malargüe"
  loc_A54D6F: EqStr
  loc_A54D71: CVarBoolI2 var_94
  loc_A54D75: FLdRfVar var_F0
  loc_A54D78: ImpAdCallFPR4  = IIf(, , )
  loc_A54D7D: FLdRfVar var_F0
  loc_A54D80: CBoolVar
  loc_A54D82: ImpAdStI2 MemVar_C3D840
  loc_A54D85: FFreeVar var_94 = "": var_C0 = "": var_E0 = ""
  loc_A54D90: ILdRf Me
  loc_A54D93: CastAd
  loc_A54D96: FStAdFunc var_A8
  loc_A54D99: FLdRfVar var_A8
  loc_A54D9C: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A54DA1: FFree1Ad var_A8
  loc_A54DA4: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo;"
  loc_A54DA7: FLdRfVar var_AC
  loc_A54DAA: NewIfNullPr clsperiodo
  loc_A54DAD: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A54DB2: FLdRfVar var_F4
  loc_A54DB5: FLdRfVar var_AC
  loc_A54DB8: NewIfNullPr clsperiodo
  loc_A54DBB: from_stack_1 = clsperiodo.RecordCount
  loc_A54DC0: ILdRf var_F4
  loc_A54DC3: LitI4 0
  loc_A54DC8: GtI4
  loc_A54DC9: BranchF loc_A54E5C
  loc_A54DCC: FLdRfVar var_AC
  loc_A54DCF: NewIfNullPr clsperiodo
  loc_A54DD2: Call clsperiodo.MoveFirst()
  loc_A54DD7: FLdRfVar var_F6
  loc_A54DDA: FLdRfVar var_AC
  loc_A54DDD: NewIfNullPr clsperiodo
  loc_A54DE0: from_stack_1 = clsperiodo.EOF
  loc_A54DE5: FLdI2 var_F6
  loc_A54DE8: NotI4
  loc_A54DE9: BranchF loc_A54E5C
  loc_A54DEC: LitVar_Missing var_A4
  loc_A54DEF: PopAdLdVar
  loc_A54DF0: FLdRfVar var_C0
  loc_A54DF3: FLdRfVar var_100
  loc_A54DF6: LitVarStr var_94, "PeriInfo"
  loc_A54DFB: PopAdLdVar
  loc_A54DFC: FLdRfVar var_FC
  loc_A54DFF: FLdRfVar var_A8
  loc_A54E02: FLdRfVar var_AC
  loc_A54E05: NewIfNullPr clsperiodo
  loc_A54E08: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A54E0D: FLdPr var_A8
  loc_A54E10:  = Me.Fields
  loc_A54E15: FLdPr var_FC
  loc_A54E18: from_stack_2 = Me.Item(from_stack_1)
  loc_A54E1D: FLdPr var_100
  loc_A54E20:  = Me.Value
  loc_A54E25: FLdRfVar var_C0
  loc_A54E28: CStrVarTmp
  loc_A54E29: FStStrNoPop var_104
  loc_A54E2C: FLdPr Me
  loc_A54E2F: VCallAd Control_ID_CboPeriodo
  loc_A54E32: FStAdFunc var_108
  loc_A54E35: FLdPr var_108
  loc_A54E38: Me.AddItem from_stack_1, from_stack_2
  loc_A54E3D: FFree1Str var_104
  loc_A54E40: FFreeAd var_A8 = "": var_FC = "": var_100 = ""
  loc_A54E4B: FFree1Var var_C0 = ""
  loc_A54E4E: FLdRfVar var_AC
  loc_A54E51: NewIfNullPr clsperiodo
  loc_A54E54: Call clsperiodo.MoveSiguiente()
  loc_A54E59: Branch loc_A54DD7
  loc_A54E5C: LitStr "SELECT CodiTicu, DetaTicu FROM tipocuco WHERE Left(CodiTicu,1) in (5,7) ORDER BY CodiTicu;"
  loc_A54E5F: FLdRfVar var_B0
  loc_A54E62: NewIfNullPr clstipocuco
  loc_A54E65: Call clstipocuco.RedefineRS(from_stack_1v)
  loc_A54E6A: FLdRfVar var_F4
  loc_A54E6D: FLdRfVar var_B0
  loc_A54E70: NewIfNullPr clstipocuco
  loc_A54E73: from_stack_1 = clstipocuco.RecordCount
  loc_A54E78: ILdRf var_F4
  loc_A54E7B: LitI4 0
  loc_A54E80: GtI4
  loc_A54E81: BranchF loc_A54FF4
  loc_A54E84: LitVar_Missing var_94
  loc_A54E87: PopAdLdVar
  loc_A54E88: LitStr "TODOS"
  loc_A54E8B: FLdPr Me
  loc_A54E8E: VCallAd Control_ID_CodiTicuCbo
  loc_A54E91: FStAdFunc var_A8
  loc_A54E94: FLdPr var_A8
  loc_A54E97: Me.AddItem from_stack_1, from_stack_2
  loc_A54E9C: FFree1Ad var_A8
  loc_A54E9F: FLdRfVar var_B0
  loc_A54EA2: NewIfNullPr clstipocuco
  loc_A54EA5: Call clstipocuco.MoveFirst()
  loc_A54EAA: FLdRfVar var_F6
  loc_A54EAD: FLdRfVar var_B0
  loc_A54EB0: NewIfNullPr clstipocuco
  loc_A54EB3: from_stack_1 = clstipocuco.EOF
  loc_A54EB8: FLdI2 var_F6
  loc_A54EBB: NotI4
  loc_A54EBC: BranchF loc_A54FF4
  loc_A54EBF: LitVar_Missing var_130
  loc_A54EC2: PopAdLdVar
  loc_A54EC3: FLdRfVar var_C0
  loc_A54EC6: FLdRfVar var_100
  loc_A54EC9: LitVarStr var_94, "CodiTicu"
  loc_A54ECE: PopAdLdVar
  loc_A54ECF: FLdRfVar var_FC
  loc_A54ED2: FLdRfVar var_A8
  loc_A54ED5: FLdRfVar var_B0
  loc_A54ED8: NewIfNullPr clstipocuco
  loc_A54EDB: from_stack_1v = clstipocuco.RsFrmGet()
  loc_A54EE0: FLdPr var_A8
  loc_A54EE3:  = Me.Fields
  loc_A54EE8: FLdPr var_FC
  loc_A54EEB: from_stack_2 = Me.Item(from_stack_1)
  loc_A54EF0: FLdPr var_100
  loc_A54EF3:  = Me.Value
  loc_A54EF8: FLdRfVar var_C0
  loc_A54EFB: LitVarStr var_A4, " - "
  loc_A54F00: ConcatVar var_E0
  loc_A54F04: FLdRfVar var_F0
  loc_A54F07: FLdRfVar var_110
  loc_A54F0A: LitVarStr var_D0, "DetaTicu"
  loc_A54F0F: PopAdLdVar
  loc_A54F10: FLdRfVar var_10C
  loc_A54F13: FLdRfVar var_108
  loc_A54F16: FLdRfVar var_B0
  loc_A54F19: NewIfNullPr clstipocuco
  loc_A54F1C: from_stack_1v = clstipocuco.RsFrmGet()
  loc_A54F21: FLdPr var_108
  loc_A54F24:  = Me.Fields
  loc_A54F29: FLdPr var_10C
  loc_A54F2C: from_stack_2 = Me.Item(from_stack_1)
  loc_A54F31: FLdPr var_110
  loc_A54F34:  = Me.Value
  loc_A54F39: FLdRfVar var_F0
  loc_A54F3C: ConcatVar var_120
  loc_A54F40: CStrVarVal var_104
  loc_A54F44: FLdPr Me
  loc_A54F47: VCallAd Control_ID_CodiTicuCbo
  loc_A54F4A: FStAdFunc var_134
  loc_A54F4D: FLdPr var_134
  loc_A54F50: Me.AddItem from_stack_1, from_stack_2
  loc_A54F55: FFree1Str var_104
  loc_A54F58: FFreeAd var_A8 = "": var_FC = "": var_100 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_A54F69: FFreeVar var_C0 = "": var_E0 = "": var_F0 = ""
  loc_A54F74: FLdRfVar var_C0
  loc_A54F77: FLdRfVar var_100
  loc_A54F7A: LitVarStr var_94, "CodiTicu"
  loc_A54F7F: PopAdLdVar
  loc_A54F80: FLdRfVar var_FC
  loc_A54F83: FLdRfVar var_A8
  loc_A54F86: FLdRfVar var_B0
  loc_A54F89: NewIfNullPr clstipocuco
  loc_A54F8C: from_stack_1v = clstipocuco.RsFrmGet()
  loc_A54F91: FLdPr var_A8
  loc_A54F94:  = Me.Fields
  loc_A54F99: FLdPr var_FC
  loc_A54F9C: from_stack_2 = Me.Item(from_stack_1)
  loc_A54FA1: FLdPr var_100
  loc_A54FA4:  = Me.Value
  loc_A54FA9: FLdRfVar var_C0
  loc_A54FAC: CI4Var
  loc_A54FAE: FLdRfVar var_F6
  loc_A54FB1: FLdPr Me
  loc_A54FB4: VCallAd Control_ID_CodiTicuCbo
  loc_A54FB7: FStAdFunc var_108
  loc_A54FBA: FLdPr var_108
  loc_A54FBD:  = Me.NewIndex
  loc_A54FC2: FLdI2 var_F6
  loc_A54FC5: FLdPr Me
  loc_A54FC8: VCallAd Control_ID_CodiTicuCbo
  loc_A54FCB: FStAdFunc var_10C
  loc_A54FCE: FLdPr var_10C
  loc_A54FD1: Me.ItemData = from_stack_1
  loc_A54FD6: FFreeAd var_A8 = "": var_FC = "": var_108 = "": var_100 = ""
  loc_A54FE3: FFree1Var var_C0 = ""
  loc_A54FE6: FLdRfVar var_B0
  loc_A54FE9: NewIfNullPr clstipocuco
  loc_A54FEC: Call clstipocuco.MoveSiguiente()
  loc_A54FF1: Branch loc_A54EAA
  loc_A54FF4: Call cmdNueva_Click()
  loc_A54FF9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95AF20
  'Data Table: 4C616C
  loc_95AF08: FLdPr Me
  loc_95AF0B: VCallAd Control_ID_wbbReporte
  loc_95AF0E: FStAdFunc var_88
  loc_95AF11: FLdRfVar var_88
  loc_95AF14: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95AF19: FFree1Ad var_88
  loc_95AF1C: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '955A38
  'Data Table: 4C616C
  loc_955A20: ILdRf Me
  loc_955A23: CastAd
  loc_955A26: FStAdFunc var_88
  loc_955A29: FLdRfVar var_88
  loc_955A2C: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_955A31: FFree1Ad var_88
  loc_955A34: ExitProcHresult
  loc_955A35: FLdZeroAd arg_39C
End Sub

Private Sub cmdPredeterminada_Click() '95B724
  'Data Table: 4C616C
  loc_95B70C: ILdRf Me
  loc_95B70F: CastAd
  loc_95B712: FStAdFunc var_88
  loc_95B715: FLdRfVar var_88
  loc_95B718: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95B71D: FFree1Ad var_88
  loc_95B720: ExitProcHresult
End Sub

Private Sub chkAgrupaMes_Click() '9AAA1C
  'Data Table: 4C616C
  loc_9AA98C: FLdRfVar var_8A
  loc_9AA98F: FLdPr Me
  loc_9AA992: VCallAd Control_ID_chkAgrupaMes
  loc_9AA995: FStAdFunc var_88
  loc_9AA998: FLdPr var_88
  loc_9AA99B:  = Me.Value
  loc_9AA9A0: FLdI2 var_8A
  loc_9AA9A3: CI4UI1
  loc_9AA9A4: LitI4 1
  loc_9AA9A9: EqI4
  loc_9AA9AA: FFree1Ad var_88
  loc_9AA9AD: BranchF loc_9AA9E6
  loc_9AA9B0: LitI4 0
  loc_9AA9B5: LitI4 0
  loc_9AA9BA: FLdRfVar var_90
  loc_9AA9BD: Redim
  loc_9AA9C7: FLdPr Me
  loc_9AA9CA: VCallAd Control_ID_cmdTxt
  loc_9AA9CD: CVarAd
  loc_9AA9D1: ParmAry1St
  loc_9AA9D7: FLdRfVar var_90
  loc_9AA9DA: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9AA9DF: FLdRfVar var_90
  loc_9AA9E2: Erase
  loc_9AA9E3: Branch loc_9AAA19
  loc_9AA9E6: LitI4 0
  loc_9AA9EB: LitI4 0
  loc_9AA9F0: FLdRfVar var_90
  loc_9AA9F3: Redim
  loc_9AA9FD: FLdPr Me
  loc_9AAA00: VCallAd Control_ID_cmdTxt
  loc_9AAA03: CVarAd
  loc_9AAA07: ParmAry1St
  loc_9AAA0D: FLdRfVar var_90
  loc_9AAA10: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AAA15: FLdRfVar var_90
  loc_9AAA18: Erase
  loc_9AAA19: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() 'A161B0
  'Data Table: 4C616C
  loc_A16054: FLdRfVar var_A4
  loc_A16057: FLdPr Me
  loc_A1605A: VCallAd Control_ID_CboPeriodo
  loc_A1605D: FStAdFunc var_A0
  loc_A16060: FLdPr var_A0
  loc_A16063:  = Me.Text
  loc_A16068: FLdRfVar var_F4
  loc_A1606B: FLdPr Me
  loc_A1606E: VCallAd Control_ID_CboPeriodo
  loc_A16071: FStAdFunc var_F0
  loc_A16074: FLdPr var_F0
  loc_A16077:  = Me.Text
  loc_A1607C: FLdPr Me
  loc_A1607F: VCallAd Control_ID_mskDesde
  loc_A16082: FStAdFunc var_88
  loc_A16085: FLdPr var_88
  loc_A16088: LateIdLdVar var_98 DispID_15 0
  loc_A1608F: CStrVarTmp
  loc_A16090: FStStrNoPop var_9C
  loc_A16093: CDateStr
  loc_A16095: CVarDate var_C4
  loc_A16099: HardType
  loc_A1609A: LitI2_Byte 1
  loc_A1609C: LitI2_Byte 1
  loc_A1609E: ILdRf var_A4
  loc_A160A1: CI2Str
  loc_A160A3: FLdRfVar var_B4
  loc_A160A6: ImpAdCallFPR4  = DateSerial(, , )
  loc_A160AB: FLdRfVar var_B4
  loc_A160AE: EqVar var_D4
  loc_A160B2: FLdPr Me
  loc_A160B5: VCallAd Control_ID_mskHasta
  loc_A160B8: FStAdFunc var_D8
  loc_A160BB: FLdPr var_D8
  loc_A160BE: LateIdLdVar var_E8 DispID_15 0
  loc_A160C5: CStrVarTmp
  loc_A160C6: FStStrNoPop var_EC
  loc_A160C9: CDateStr
  loc_A160CB: CVarDate var_114
  loc_A160CF: HardType
  loc_A160D0: LitI2_Byte &H1F
  loc_A160D2: LitI2_Byte 1
  loc_A160D4: ILdRf var_F4
  loc_A160D7: CI2Str
  loc_A160D9: FLdRfVar var_104
  loc_A160DC: ImpAdCallFPR4  = DateSerial(, , )
  loc_A160E1: FLdRfVar var_104
  loc_A160E4: EqVar var_124
  loc_A160E8: AndVar var_134
  loc_A160EC: CBoolVarNull
  loc_A160EE: FFreeStr var_9C = "": var_A4 = "": var_EC = ""
  loc_A160F9: FFreeAd var_88 = "": var_A0 = "": var_D8 = ""
  loc_A16104: FFreeVar var_98 = "": var_B4 = "": var_E8 = ""
  loc_A1610F: BranchF loc_A16120
  loc_A16112: LitStr "EjePreRecMes.txt"
  loc_A16115: FLdPr Me
  loc_A16118: Me.Tag = from_stack_1
  loc_A1611D: Branch loc_A16199
  loc_A16120: FLdRfVar var_A4
  loc_A16123: FLdPr Me
  loc_A16126: VCallAd Control_ID_CboPeriodo
  loc_A16129: FStAdFunc var_A0
  loc_A1612C: FLdPr var_A0
  loc_A1612F:  = Me.Text
  loc_A16134: FLdPr Me
  loc_A16137: VCallAd Control_ID_mskDesde
  loc_A1613A: FStAdFunc var_88
  loc_A1613D: FLdPr var_88
  loc_A16140: LateIdLdVar var_98 DispID_15 0
  loc_A16147: CStrVarTmp
  loc_A16148: FStStrNoPop var_9C
  loc_A1614B: CDateStr
  loc_A1614D: CVarDate var_C4
  loc_A16151: HardType
  loc_A16152: LitI2_Byte 1
  loc_A16154: LitI2_Byte 1
  loc_A16156: ILdRf var_A4
  loc_A16159: CI2Str
  loc_A1615B: FLdRfVar var_B4
  loc_A1615E: ImpAdCallFPR4  = DateSerial(, , )
  loc_A16163: FLdRfVar var_B4
  loc_A16166: EqVarBool
  loc_A16168: FFreeStr var_9C = ""
  loc_A1616F: FFreeAd var_88 = ""
  loc_A16176: FFreeVar var_98 = ""
  loc_A1617D: BranchF loc_A1618E
  loc_A16180: LitStr "EjePreRecAcu.txt"
  loc_A16183: FLdPr Me
  loc_A16186: Me.Tag = from_stack_1
  loc_A1618B: Branch loc_A16199
  loc_A1618E: LitStr "EjePreRecMes.txt"
  loc_A16191: FLdPr Me
  loc_A16194: Me.Tag = from_stack_1
  loc_A16199: LitI2_Byte 0
  loc_A1619B: ILdRf Me
  loc_A1619E: CastAd
  loc_A161A1: FStAdFunc var_88
  loc_A161A4: FLdRfVar var_88
  loc_A161A7: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_A161AC: FFree1Ad var_88
  loc_A161AF: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94A118
  'Data Table: 4C616C
  loc_94A104: FLdPr Me
  loc_94A107: VCallAd Control_ID_mskDesde
  loc_94A10A: CVarAd
  loc_94A10E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A113: FFree1Var var_94 = ""
  loc_94A116: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B0D3C
  'Data Table: 4C616C
  loc_9B0CA0: FLdPr Me
  loc_9B0CA3: VCallAd Control_ID_mskDesde
  loc_9B0CA6: FStAdFunc var_88
  loc_9B0CA9: FLdPr var_88
  loc_9B0CAC: LateIdLdVar var_98 DispID_15 0
  loc_9B0CB3: PopAd
  loc_9B0CB5: FLdPr Me
  loc_9B0CB8: VCallAd Control_ID_mskDesde
  loc_9B0CBB: FStAdFunc var_AC
  loc_9B0CBE: LitI2_Byte &HFF
  loc_9B0CC0: PopTmpLdAd2 var_A2
  loc_9B0CC3: FLdZeroAd var_AC
  loc_9B0CC6: FStAdFunc var_A0
  loc_9B0CC9: FLdRfVar var_A0
  loc_9B0CCC: LitStr vbNullString
  loc_9B0CCF: LitI2_Byte 0
  loc_9B0CD1: LitI2_Byte 0
  loc_9B0CD3: FLdRfVar var_98
  loc_9B0CD6: CStrVarTmp
  loc_9B0CD7: FStStrNoPop var_9C
  loc_9B0CDA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0CDF: FStStrNoPop var_A8
  loc_9B0CE2: FLdPr Me
  loc_9B0CE5: MemStStrCopy
  loc_9B0CE9: FFreeStr var_9C = ""
  loc_9B0CF0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0CF9: FFree1Var var_98 = ""
  loc_9B0CFC: FLdPr Me
  loc_9B0CFF: VCallAd Control_ID_mskDesde
  loc_9B0D02: FStAdFunc var_B0
  loc_9B0D05: LitNothing
  loc_9B0D07: CastAd
  loc_9B0D0A: FStAdFunc var_AC
  loc_9B0D0D: FLdRfVar var_AC
  loc_9B0D10: FLdZeroAd var_B0
  loc_9B0D13: FStAdFuncNoPop
  loc_9B0D16: CastAd
  loc_9B0D19: FStAdFunc var_A0
  loc_9B0D1C: FLdRfVar var_A0
  loc_9B0D1F: FLdPr Me
  loc_9B0D22: MemLdRfVar from_stack_1.global_120
  loc_9B0D25: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0D2A: IStI2 arg_C
  loc_9B0D2D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0D38: ExitProcHresult
End Function

Public Function htmFileGet() '4C771C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4C772B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4C773A
  htmFile = Value
End Sub

Public Function bLogosGet() '4C7749
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4C7758
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4C7767
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C7776
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9C6204
  'Data Table: 4C616C
  loc_9C6150: LitI4 0
  loc_9C6155: LitI4 8
  loc_9C615A: FLdRfVar var_88
  loc_9C615D: Redim
  loc_9C6167: FLdPr Me
  loc_9C616A: VCallAd Control_ID_CboPeriodo
  loc_9C616D: CVarAd
  loc_9C6171: ParmAry1St
  loc_9C6177: FLdPr Me
  loc_9C617A: VCallAd Control_ID_mskDesde
  loc_9C617D: CVarAd
  loc_9C6181: ParmAry1St
  loc_9C6187: FLdPr Me
  loc_9C618A: VCallAd Control_ID_cmdDesde
  loc_9C618D: CVarAd
  loc_9C6191: ParmAry1St
  loc_9C6197: FLdPr Me
  loc_9C619A: VCallAd Control_ID_mskHasta
  loc_9C619D: CVarAd
  loc_9C61A1: ParmAry1St
  loc_9C61A7: FLdPr Me
  loc_9C61AA: VCallAd Control_ID_cmdHasta
  loc_9C61AD: CVarAd
  loc_9C61B1: ParmAry1St
  loc_9C61B7: FLdPr Me
  loc_9C61BA: VCallAd Control_ID_CodiTicuCbo
  loc_9C61BD: CVarAd
  loc_9C61C1: ParmAry1St
  loc_9C61C7: FLdPr Me
  loc_9C61CA: VCallAd Control_ID_CodiCucoMsk
  loc_9C61CD: CVarAd
  loc_9C61D1: ParmAry1St
  loc_9C61D7: FLdPr Me
  loc_9C61DA: VCallAd Control_ID_CodiCucoCmd
  loc_9C61DD: CVarAd
  loc_9C61E1: ParmAry1St
  loc_9C61E7: FLdPr Me
  loc_9C61EA: VCallAd Control_ID_chkAgrupaMes
  loc_9C61ED: CVarAd
  loc_9C61F1: ParmAry1St
  loc_9C61F7: FLdRfVar var_88
  loc_9C61FA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C61FF: FLdRfVar var_88
  loc_9C6202: Erase
  loc_9C6203: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B91610
  'Data Table: 4C616C
  loc_B9082C: LitI2_Byte 0
  loc_B9082E: PopTmpLdAd2 var_92
  loc_B90831: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B90836: FLdPr Me
  loc_B90839: MemLdStr global_120
  loc_B9083C: LitStr vbNullString
  loc_B9083F: NeStr
  loc_B90841: BranchF loc_B90847
  loc_B90844: Branch loc_B915E5
  loc_B90847: LitI2_Byte 0
  loc_B90849: PopTmpLdAd2 var_92
  loc_B9084C: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B90851: FLdPr Me
  loc_B90854: MemLdStr global_120
  loc_B90857: LitStr vbNullString
  loc_B9085A: NeStr
  loc_B9085C: BranchF loc_B90862
  loc_B9085F: Branch loc_B915E5
  loc_B90862: FLdPr Me
  loc_B90865: MemLdI2 bGenerado
  loc_B90868: BranchF loc_B9086C
  loc_B9086B: ExitProcHresult
  loc_B9086C: LitVarStr var_A4, "Generando reporte..."
  loc_B90871: PopAdLdVar
  loc_B90872: FLdPr Me
  loc_B90875: VCallAd Control_ID_statusBar
  loc_B90878: FStAdFunc var_B8
  loc_B9087B: FLdPr var_B8
  loc_B9087E: LateIdSt
  loc_B90883: FFree1Ad var_B8
  loc_B90886: LitI4 &HB
  loc_B9088B: CI2I4
  loc_B9088C: FLdPr Me
  loc_B9088F: Me.MousePointer = from_stack_1
  loc_B90894: FLdRfVar var_92
  loc_B90897: FLdPr Me
  loc_B9089A: VCallAd Control_ID_CodiTicuCbo
  loc_B9089D: FStAdFunc var_B8
  loc_B908A0: FLdPr var_B8
  loc_B908A3:  = Me.ListIndex
  loc_B908A8: FLdI2 var_92
  loc_B908AB: LitI2_Byte 0
  loc_B908AD: GtI2
  loc_B908AE: FFree1Ad var_B8
  loc_B908B1: BranchF loc_B90929
  loc_B908B4: FLdRfVar var_C0
  loc_B908B7: FLdRfVar var_92
  loc_B908BA: FLdPr Me
  loc_B908BD: VCallAd Control_ID_CodiTicuCbo
  loc_B908C0: FStAdFunc var_B8
  loc_B908C3: FLdPr var_B8
  loc_B908C6:  = Me.ListIndex
  loc_B908CB: FLdI2 var_92
  loc_B908CE: FLdPr Me
  loc_B908D1: VCallAd Control_ID_CodiTicuCbo
  loc_B908D4: FStAdFunc var_BC
  loc_B908D7: FLdPr var_BC
  loc_B908DA:  = Me.ItemData
  loc_B908DF: ILdRf var_C0
  loc_B908E2: CStrI4
  loc_B908E4: FStStr var_8C
  loc_B908E7: FFreeAd var_B8 = ""
  loc_B908EE: LitStr " AND cc.CodiTicu like '"
  loc_B908F1: LitI4 1
  loc_B908F6: ILdRf var_8C
  loc_B908F9: LitStr "0"
  loc_B908FC: LitI4 0
  loc_B90901: FnInStr4
  loc_B90903: LitI4 1
  loc_B90908: SubI4
  loc_B90909: ILdRf var_8C
  loc_B9090C: ImpAdCallI2 Left$(, )
  loc_B90911: FStStrNoPop var_C4
  loc_B90914: ConcatStr
  loc_B90915: FStStrNoPop var_C8
  loc_B90918: LitStr Chr(37) & "'"
  loc_B9091B: ConcatStr
  loc_B9091C: FStStr var_88
  loc_B9091F: FFreeStr var_C4 = ""
  loc_B90926: Branch loc_B9092F
  loc_B90929: LitStr vbNullString
  loc_B9092C: FStStrCopy var_88
  loc_B9092F: FLdPr Me
  loc_B90932: VCallAd Control_ID_CodiCucoMsk
  loc_B90935: FStAdFunc var_B8
  loc_B90938: FLdPr var_B8
  loc_B9093B: LateIdLdVar var_D8 DispID_22 0
  loc_B90942: PopAd
  loc_B90944: FLdPr Me
  loc_B90947: VCallAd Control_ID_CodiCucoMsk
  loc_B9094A: FStAdFunc var_BC
  loc_B9094D: FLdPr var_BC
  loc_B90950: LateIdLdVar var_E8 DispID_22 0
  loc_B90957: PopAd
  loc_B90959: LitVarStr var_B4, vbNullString
  loc_B9095E: FStVarCopyObj var_10C
  loc_B90961: FLdRfVar var_10C
  loc_B90964: LitStr " AND cc.CodiCuco LIKE '"
  loc_B90967: FLdRfVar var_E8
  loc_B9096A: CStrVarTmp
  loc_B9096B: FStStrNoPop var_C8
  loc_B9096E: ConcatStr
  loc_B9096F: FStStrNoPop var_EC
  loc_B90972: LitStr Chr(37) & "'"
  loc_B90975: ConcatStr
  loc_B90976: CVarStr var_FC
  loc_B90979: FLdRfVar var_D8
  loc_B9097C: CStrVarTmp
  loc_B9097D: FStStrNoPop var_C4
  loc_B90980: LitStr vbNullString
  loc_B90983: NeStr
  loc_B90985: CVarBoolI2 var_A4
  loc_B90989: FLdRfVar var_11C
  loc_B9098C: ImpAdCallFPR4  = IIf(, , )
  loc_B90991: FLdRfVar var_11C
  loc_B90994: CStrVarTmp
  loc_B90995: FStStr var_90
  loc_B90998: FFreeStr var_C4 = "": var_C8 = ""
  loc_B909A1: FFreeAd var_B8 = ""
  loc_B909A8: FFreeVar var_D8 = "": var_E8 = "": var_A4 = "": var_FC = "": var_10C = ""
  loc_B909B7: FLdPr Me
  loc_B909BA: MemLdRfVar from_stack_1.global_72
  loc_B909BD: NewIfNullAd
  loc_B909C0: FStAd var_120 
  loc_B909C4: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_anex;"
  loc_B909C7: LitStr " CREATE TEMPORARY TABLE mp_anex` ("
  loc_B909CA: ConcatStr
  loc_B909CB: FStStrNoPop var_C4
  loc_B909CE: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000'"
  loc_B909D1: ConcatStr
  loc_B909D2: FStStrNoPop var_C8
  loc_B909D5: LitStr ", odiTicu` varchar(4) NOT NULL DEFAULT ''"
  loc_B909D8: ConcatStr
  loc_B909D9: FStStrNoPop var_EC
  loc_B909DC: LitStr ", odiCuco` char(12) NOT NULL DEFAULT ''"
  loc_B909DF: ConcatStr
  loc_B909E0: FStStrNoPop var_124
  loc_B909E3: LitStr ", oleAsie` varchar(100) NOT NULL DEFAULT ''"
  loc_B909E6: ConcatStr
  loc_B909E7: FStStrNoPop var_128
  loc_B909EA: LitStr ", riginal` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B909ED: ConcatStr
  loc_B909EE: FStStrNoPop var_12C
  loc_B909F1: LitStr ", umentos` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B909F4: ConcatStr
  loc_B909F5: FStStrNoPop var_130
  loc_B909F8: LitStr ", isminuciones` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B909FB: ConcatStr
  loc_B909FC: FStStrNoPop var_134
  loc_B909FF: LitStr ", ngresado` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A02: ConcatStr
  loc_B90A03: FStStrNoPop var_138
  loc_B90A06: LitStr ", ngremes1` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A09: ConcatStr
  loc_B90A0A: FStStrNoPop var_13C
  loc_B90A0D: LitStr ", ngremes2` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A10: ConcatStr
  loc_B90A11: FStStrNoPop var_140
  loc_B90A14: LitStr ", ngremes3` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A17: ConcatStr
  loc_B90A18: FStStrNoPop var_144
  loc_B90A1B: LitStr ", ngremes4` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A1E: ConcatStr
  loc_B90A1F: FStStrNoPop var_148
  loc_B90A22: LitStr ", ngremes5` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A25: ConcatStr
  loc_B90A26: FStStrNoPop var_14C
  loc_B90A29: LitStr ", ngremes6` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A2C: ConcatStr
  loc_B90A2D: FStStrNoPop var_150
  loc_B90A30: LitStr ", ngremes7` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A33: ConcatStr
  loc_B90A34: FStStrNoPop var_154
  loc_B90A37: LitStr ", ngremes8` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A3A: ConcatStr
  loc_B90A3B: FStStrNoPop var_158
  loc_B90A3E: LitStr ", ngremes9` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A41: ConcatStr
  loc_B90A42: FStStrNoPop var_15C
  loc_B90A45: LitStr ", ngremes10` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A48: ConcatStr
  loc_B90A49: FStStrNoPop var_160
  loc_B90A4C: LitStr ", ngremes11` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A4F: ConcatStr
  loc_B90A50: FStStrNoPop var_164
  loc_B90A53: LitStr ", ngremes12` decimal(14,2) NOT NULL DEFAULT '0.00'"
  loc_B90A56: ConcatStr
  loc_B90A57: FStStrNoPop var_168
  loc_B90A5A: LitStr " ) ENGINE=InnoDB ;"
  loc_B90A5D: ConcatStr
  loc_B90A5E: FStStrNoPop var_16C
  loc_B90A61: FLdPr var_120
  loc_B90A64: Call clsbase.RedefineRS(from_stack_1v)
  loc_B90A69: FFreeStr var_C4 = "": var_C8 = "": var_EC = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_B90A98: FLdPr Me
  loc_B90A9B: VCallAd Control_ID_mskDesde
  loc_B90A9E: FStAdFunc var_BC
  loc_B90AA1: FLdPr var_BC
  loc_B90AA4: LateIdLdVar var_D8 DispID_15 0
  loc_B90AAB: PopAd
  loc_B90AAD: FLdPr Me
  loc_B90AB0: VCallAd Control_ID_mskHasta
  loc_B90AB3: FStAdFunc var_170
  loc_B90AB6: FLdPr var_170
  loc_B90AB9: LateIdLdVar var_10C DispID_15 0
  loc_B90AC0: PopAd
  loc_B90AC2: LitStr "INSERT INTO tmp_anex (PeriInfo,CodiTicu,CodiCuco,NoleAsie,Original,Aumentos,Disminuciones)"
  loc_B90AC5: LitStr " SELECT asiento.PeriInfo, cc.CodiTicu, mv.CodiCuco, Left(Group_concat(Distinct NoleAsie),50)"
  loc_B90AC8: ConcatStr
  loc_B90AC9: FStStrNoPop var_C4
  loc_B90ACC: LitStr ", Sum(IF(CodiTias=7,DebeMoas,0)-IF(CodiTias=7,HabeMoas,0))"
  loc_B90ACF: ConcatStr
  loc_B90AD0: FStStrNoPop var_C8
  loc_B90AD3: LitStr ", Sum(IF(CodiTias=8,DebeMoas,0))"
  loc_B90AD6: ConcatStr
  loc_B90AD7: FStStrNoPop var_EC
  loc_B90ADA: LitStr ", Sum(IF(CodiTias=8,HabeMoas,0))"
  loc_B90ADD: ConcatStr
  loc_B90ADE: FStStrNoPop var_124
  loc_B90AE1: LitStr " FROM asiento"
  loc_B90AE4: ConcatStr
  loc_B90AE5: FStStrNoPop var_128
  loc_B90AE8: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_B90AEB: ConcatStr
  loc_B90AEC: FStStrNoPop var_12C
  loc_B90AEF: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B90AF2: ConcatStr
  loc_B90AF3: FStStrNoPop var_130
  loc_B90AF6: LitStr " INNER JOIN paraconta p ON p.PeriInfo = asiento.PeriInfo"
  loc_B90AF9: ConcatStr
  loc_B90AFA: FStStrNoPop var_134
  loc_B90AFD: LitStr " AND p.CarePaco <> mv.CodiCuco"
  loc_B90B00: ConcatStr
  loc_B90B01: FStStrNoPop var_138
  loc_B90B04: LitStr " AND p.CajaPaco <> mv.CodiCuco"
  loc_B90B07: ConcatStr
  loc_B90B08: FStStrNoPop var_13C
  loc_B90B0B: LitStr " WHERE asiento.PeriInfo = "
  loc_B90B0E: ConcatStr
  loc_B90B0F: FStStrNoPop var_144
  loc_B90B12: FLdRfVar var_140
  loc_B90B15: FLdPr Me
  loc_B90B18: VCallAd Control_ID_CboPeriodo
  loc_B90B1B: FStAdFunc var_B8
  loc_B90B1E: FLdPr var_B8
  loc_B90B21:  = Me.Text
  loc_B90B26: ILdRf var_140
  loc_B90B29: ConcatStr
  loc_B90B2A: FStStrNoPop var_148
  loc_B90B2D: LitStr " AND FechAsie >= "
  loc_B90B30: ConcatStr
  loc_B90B31: FStStrNoPop var_14C
  loc_B90B34: LitI4 1
  loc_B90B39: LitI4 1
  loc_B90B3E: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B90B43: FStVarCopyObj var_FC
  loc_B90B46: FLdRfVar var_FC
  loc_B90B49: FLdRfVar var_D8
  loc_B90B4C: CStrVarTmp
  loc_B90B4D: CVarStr var_E8
  loc_B90B50: ImpAdCallI2 Format$(, )
  loc_B90B55: FStStrNoPop var_150
  loc_B90B58: ConcatStr
  loc_B90B59: FStStrNoPop var_154
  loc_B90B5C: LitStr " AND FechAsie <= "
  loc_B90B5F: ConcatStr
  loc_B90B60: FStStrNoPop var_158
  loc_B90B63: LitI4 1
  loc_B90B68: LitI4 1
  loc_B90B6D: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_B90B72: FStVarCopyObj var_180
  loc_B90B75: FLdRfVar var_180
  loc_B90B78: FLdRfVar var_10C
  loc_B90B7B: CStrVarTmp
  loc_B90B7C: CVarStr var_11C
  loc_B90B7F: ImpAdCallI2 Format$(, )
  loc_B90B84: FStStrNoPop var_15C
  loc_B90B87: ConcatStr
  loc_B90B88: FStStrNoPop var_160
  loc_B90B8B: LitStr " AND (CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "')"
  loc_B90B8E: ConcatStr
  loc_B90B8F: FStStrNoPop var_164
  loc_B90B92: LitStr " AND (CodiTias = 7 OR CodiTias = 8)"
  loc_B90B95: ConcatStr
  loc_B90B96: FStStrNoPop var_168
  loc_B90B99: ILdRf var_88
  loc_B90B9C: ConcatStr
  loc_B90B9D: FStStrNoPop var_16C
  loc_B90BA0: ILdRf var_90
  loc_B90BA3: ConcatStr
  loc_B90BA4: FStStrNoPop var_184
  loc_B90BA7: LitStr " GROUP BY mv.CodiCuco"
  loc_B90BAA: ConcatStr
  loc_B90BAB: FStStrNoPop var_188
  loc_B90BAE: LitStr " ORDER BY cc.CodiTicu, mv.CodiCuco;"
  loc_B90BB1: ConcatStr
  loc_B90BB2: FStStrNoPop var_18C
  loc_B90BB5: FLdPr var_120
  loc_B90BB8: Call clsbase.RedefineRS(from_stack_1v)
  loc_B90BBD: FFreeStr var_C4 = "": var_C8 = "": var_EC = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_140 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_184 = "": var_188 = ""
  loc_B90BF2: FFreeAd var_B8 = "": var_BC = ""
  loc_B90BFB: FFreeVar var_D8 = "": var_E8 = "": var_FC = "": var_10C = "": var_11C = ""
  loc_B90C0A: LitStr "Municipalidad de Guaymallén"
  loc_B90C0D: LitStr "Municipalidad de Guaymallén"
  loc_B90C10: EqStr
  loc_B90C12: FLdRfVar var_C4
  loc_B90C15: FLdPr Me
  loc_B90C18: VCallAd Control_ID_CboPeriodo
  loc_B90C1B: FStAdFunc var_B8
  loc_B90C1E: FLdPr var_B8
  loc_B90C21:  = Me.Text
  loc_B90C26: ILdRf var_C4
  loc_B90C29: LitStr "2018"
  loc_B90C2C: EqStr
  loc_B90C2E: AndI4
  loc_B90C2F: FFree1Str var_C4
  loc_B90C32: FFree1Ad var_B8
  loc_B90C35: BranchF loc_B90EE9
  loc_B90C38: FLdPr Me
  loc_B90C3B: VCallAd Control_ID_mskDesde
  loc_B90C3E: FStAdFunc var_BC
  loc_B90C41: FLdPr var_BC
  loc_B90C44: LateIdLdVar var_D8 DispID_15 0
  loc_B90C4B: PopAd
  loc_B90C4D: FLdPr Me
  loc_B90C50: VCallAd Control_ID_mskHasta
  loc_B90C53: FStAdFunc var_170
  loc_B90C56: FLdPr var_170
  loc_B90C59: LateIdLdVar var_10C DispID_15 0
  loc_B90C60: PopAd
  loc_B90C62: LitStr "INSERT INTO tmp_anex (PeriInfo,CodiTicu,CodiCuco,Ingresado)"
  loc_B90C65: LitStr " SELECT asiento.PeriInfo, cc.CodiTicu, mv.CodiCuco, Sum(HabeMoas-DebeMoas) Saldo"
  loc_B90C68: ConcatStr
  loc_B90C69: FStStrNoPop var_C4
  loc_B90C6C: LitStr " FROM asiento"
  loc_B90C6F: ConcatStr
  loc_B90C70: FStStrNoPop var_C8
  loc_B90C73: LitStr " INNER JOIN moviasiento mv ON mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_B90C76: ConcatStr
  loc_B90C77: FStStrNoPop var_EC
  loc_B90C7A: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B90C7D: ConcatStr
  loc_B90C7E: FStStrNoPop var_124
  loc_B90C81: LitStr " AND cc.CodiCuco NOT LIKE '8" & Chr(37) & "'"
  loc_B90C84: ConcatStr
  loc_B90C85: FStStrNoPop var_128
  loc_B90C88: LitStr " INNER JOIN paraconta p ON p.PeriInfo = asiento.PeriInfo"
  loc_B90C8B: ConcatStr
  loc_B90C8C: FStStrNoPop var_12C
  loc_B90C8F: LitStr " AND p.CarePaco <> mv.CodiCuco"
  loc_B90C92: ConcatStr
  loc_B90C93: FStStrNoPop var_130
  loc_B90C96: LitStr " AND p.CajaPaco <> mv.CodiCuco"
  loc_B90C99: ConcatStr
  loc_B90C9A: FStStrNoPop var_134
  loc_B90C9D: LitStr " WHERE asiento.PeriInfo = "
  loc_B90CA0: ConcatStr
  loc_B90CA1: FStStrNoPop var_13C
  loc_B90CA4: FLdRfVar var_138
  loc_B90CA7: FLdPr Me
  loc_B90CAA: VCallAd Control_ID_CboPeriodo
  loc_B90CAD: FStAdFunc var_B8
  loc_B90CB0: FLdPr var_B8
  loc_B90CB3:  = Me.Text
  loc_B90CB8: ILdRf var_138
  loc_B90CBB: ConcatStr
  loc_B90CBC: FStStrNoPop var_140
  loc_B90CBF: LitStr " AND FechAsie >= '2018-01-01'"
  loc_B90CC2: ConcatStr
  loc_B90CC3: FStStrNoPop var_144
  loc_B90CC6: LitStr " AND FechAsie >= "
  loc_B90CC9: ConcatStr
  loc_B90CCA: FStStrNoPop var_148
  loc_B90CCD: LitI4 1
  loc_B90CD2: LitI4 1
  loc_B90CD7: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B90CDC: FStVarCopyObj var_FC
  loc_B90CDF: FLdRfVar var_FC
  loc_B90CE2: FLdRfVar var_D8
  loc_B90CE5: CStrVarTmp
  loc_B90CE6: CVarStr var_E8
  loc_B90CE9: ImpAdCallI2 Format$(, )
  loc_B90CEE: FStStrNoPop var_14C
  loc_B90CF1: ConcatStr
  loc_B90CF2: FStStrNoPop var_150
  loc_B90CF5: LitStr " AND FechAsie <= '2018-06-30'"
  loc_B90CF8: ConcatStr
  loc_B90CF9: FStStrNoPop var_154
  loc_B90CFC: LitStr " AND FechAsie <= "
  loc_B90CFF: ConcatStr
  loc_B90D00: FStStrNoPop var_158
  loc_B90D03: LitI4 1
  loc_B90D08: LitI4 1
  loc_B90D0D: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_B90D12: FStVarCopyObj var_180
  loc_B90D15: FLdRfVar var_180
  loc_B90D18: FLdRfVar var_10C
  loc_B90D1B: CStrVarTmp
  loc_B90D1C: CVarStr var_11C
  loc_B90D1F: ImpAdCallI2 Format$(, )
  loc_B90D24: FStStrNoPop var_15C
  loc_B90D27: ConcatStr
  loc_B90D28: FStStrNoPop var_160
  loc_B90D2B: LitStr " AND (CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "')"
  loc_B90D2E: ConcatStr
  loc_B90D2F: FStStrNoPop var_164
  loc_B90D32: LitStr " AND (CodiTias = 9 OR CodiTias = 6 or CodiTias = 56)"
  loc_B90D35: ConcatStr
  loc_B90D36: FStStrNoPop var_168
  loc_B90D39: ILdRf var_88
  loc_B90D3C: ConcatStr
  loc_B90D3D: FStStrNoPop var_16C
  loc_B90D40: ILdRf var_90
  loc_B90D43: ConcatStr
  loc_B90D44: FStStrNoPop var_184
  loc_B90D47: LitStr " GROUP BY mv.CodiCuco"
  loc_B90D4A: ConcatStr
  loc_B90D4B: FStStrNoPop var_188
  loc_B90D4E: LitStr " HAVING Saldo != 0"
  loc_B90D51: ConcatStr
  loc_B90D52: FStStrNoPop var_18C
  loc_B90D55: LitStr " ORDER BY cc.CodiTicu, mv.CodiCuco;"
  loc_B90D58: ConcatStr
  loc_B90D59: FStStrNoPop var_190
  loc_B90D5C: FLdPr var_120
  loc_B90D5F: Call clsbase.RedefineRS(from_stack_1v)
  loc_B90D64: FFreeStr var_C4 = "": var_C8 = "": var_EC = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_13C = "": var_138 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_184 = "": var_188 = "": var_18C = ""
  loc_B90D9B: FFreeAd var_B8 = "": var_BC = ""
  loc_B90DA4: FFreeVar var_D8 = "": var_E8 = "": var_FC = "": var_10C = "": var_11C = ""
  loc_B90DB3: FLdPr Me
  loc_B90DB6: VCallAd Control_ID_mskDesde
  loc_B90DB9: FStAdFunc var_BC
  loc_B90DBC: FLdPr var_BC
  loc_B90DBF: LateIdLdVar var_D8 DispID_15 0
  loc_B90DC6: PopAd
  loc_B90DC8: FLdPr Me
  loc_B90DCB: VCallAd Control_ID_mskHasta
  loc_B90DCE: FStAdFunc var_170
  loc_B90DD1: FLdPr var_170
  loc_B90DD4: LateIdLdVar var_10C DispID_15 0
  loc_B90DDB: PopAd
  loc_B90DDD: LitStr "INSERT INTO tmp_anex (PeriInfo,CodiTicu,CodiCuco,Ingresado)"
  loc_B90DE0: LitStr " SELECT ingreso.PeriInfo, cc.CodiTicu, ingreso.CodiCuco, Sum(ImpoIngr)"
  loc_B90DE3: ConcatStr
  loc_B90DE4: FStStrNoPop var_C4
  loc_B90DE7: LitStr " FROM ingreso"
  loc_B90DEA: ConcatStr
  loc_B90DEB: FStStrNoPop var_C8
  loc_B90DEE: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ingreso.PeriInfo AND cc.CodiCuco = ingreso.CodiCuco"
  loc_B90DF1: ConcatStr
  loc_B90DF2: FStStrNoPop var_EC
  loc_B90DF5: LitStr " AND cc.CodiCuco NOT LIKE '8" & Chr(37) & "'"
  loc_B90DF8: ConcatStr
  loc_B90DF9: FStStrNoPop var_124
  loc_B90DFC: LitStr " WHERE ingreso.PeriInfo = "
  loc_B90DFF: ConcatStr
  loc_B90E00: FStStrNoPop var_12C
  loc_B90E03: FLdRfVar var_128
  loc_B90E06: FLdPr Me
  loc_B90E09: VCallAd Control_ID_CboPeriodo
  loc_B90E0C: FStAdFunc var_B8
  loc_B90E0F: FLdPr var_B8
  loc_B90E12:  = Me.Text
  loc_B90E17: ILdRf var_128
  loc_B90E1A: ConcatStr
  loc_B90E1B: FStStrNoPop var_130
  loc_B90E1E: LitStr " AND FechIngr >= '2018-07-01'"
  loc_B90E21: ConcatStr
  loc_B90E22: FStStrNoPop var_134
  loc_B90E25: LitStr " AND FechIngr >= "
  loc_B90E28: ConcatStr
  loc_B90E29: FStStrNoPop var_138
  loc_B90E2C: LitI4 1
  loc_B90E31: LitI4 1
  loc_B90E36: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B90E3B: FStVarCopyObj var_FC
  loc_B90E3E: FLdRfVar var_FC
  loc_B90E41: FLdRfVar var_D8
  loc_B90E44: CStrVarTmp
  loc_B90E45: CVarStr var_E8
  loc_B90E48: ImpAdCallI2 Format$(, )
  loc_B90E4D: FStStrNoPop var_13C
  loc_B90E50: ConcatStr
  loc_B90E51: FStStrNoPop var_140
  loc_B90E54: LitStr " AND FechIngr <= "
  loc_B90E57: ConcatStr
  loc_B90E58: FStStrNoPop var_144
  loc_B90E5B: LitI4 1
  loc_B90E60: LitI4 1
  loc_B90E65: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_B90E6A: FStVarCopyObj var_180
  loc_B90E6D: FLdRfVar var_180
  loc_B90E70: FLdRfVar var_10C
  loc_B90E73: CStrVarTmp
  loc_B90E74: CVarStr var_11C
  loc_B90E77: ImpAdCallI2 Format$(, )
  loc_B90E7C: FStStrNoPop var_148
  loc_B90E7F: ConcatStr
  loc_B90E80: FStStrNoPop var_14C
  loc_B90E83: LitStr " AND (CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "')"
  loc_B90E86: ConcatStr
  loc_B90E87: FStStrNoPop var_150
  loc_B90E8A: ILdRf var_88
  loc_B90E8D: ConcatStr
  loc_B90E8E: FStStrNoPop var_154
  loc_B90E91: ILdRf var_90
  loc_B90E94: ConcatStr
  loc_B90E95: FStStrNoPop var_158
  loc_B90E98: LitStr " GROUP BY cc.CodiCuco ORDER BY cc.CodiTicu, cc.CodiCuco;"
  loc_B90E9B: ConcatStr
  loc_B90E9C: FStStrNoPop var_15C
  loc_B90E9F: FLdPr var_120
  loc_B90EA2: Call clsbase.RedefineRS(from_stack_1v)
  loc_B90EA7: FFreeStr var_C4 = "": var_C8 = "": var_EC = "": var_124 = "": var_12C = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_B90ECE: FFreeAd var_B8 = "": var_BC = ""
  loc_B90ED7: FFreeVar var_D8 = "": var_E8 = "": var_FC = "": var_10C = "": var_11C = ""
  loc_B90EE6: Branch loc_B9107F
  loc_B90EE9: FLdPr Me
  loc_B90EEC: VCallAd Control_ID_mskDesde
  loc_B90EEF: FStAdFunc var_BC
  loc_B90EF2: FLdPr var_BC
  loc_B90EF5: LateIdLdVar var_D8 DispID_15 0
  loc_B90EFC: PopAd
  loc_B90EFE: FLdPr Me
  loc_B90F01: VCallAd Control_ID_mskHasta
  loc_B90F04: FStAdFunc var_170
  loc_B90F07: FLdPr var_170
  loc_B90F0A: LateIdLdVar var_10C DispID_15 0
  loc_B90F11: PopAd
  loc_B90F13: LitStr "INSERT INTO tmp_anex (PeriInfo,CodiTicu,CodiCuco,Ingresado,Ingremes1,Ingremes2,Ingremes3,Ingremes4,Ingremes5,Ingremes6,Ingremes7,Ingremes8,Ingremes9,Ingremes10,Ingremes11,Ingremes12)"
  loc_B90F16: LitStr " SELECT i.PeriInfo, cc.CodiTicu, i.CodiCuco, Sum(i.ImpoIngr)"
  loc_B90F19: ConcatStr
  loc_B90F1A: FStStrNoPop var_C4
  loc_B90F1D: LitStr " , (SELECT IFNULL(SUM(i1.ImpoIngr),0) FROM ingreso i1 WHERE i1.PeriInfo = i.PeriInfo AND MONTH(i1.FechIngr) = 1 AND i1.CodiCuco = i.CodiCuco) Ingremes1"
  loc_B90F20: ConcatStr
  loc_B90F21: FStStrNoPop var_C8
  loc_B90F24: LitStr " , (SELECT IFNULL(SUM(i2.ImpoIngr),0) FROM ingreso i2 WHERE i2.PeriInfo = i.PeriInfo AND MONTH(i2.FechIngr) = 2 AND i2.CodiCuco = i.CodiCuco) Ingremes2"
  loc_B90F27: ConcatStr
  loc_B90F28: FStStrNoPop var_EC
  loc_B90F2B: LitStr " , (SELECT IFNULL(SUM(i3.ImpoIngr),0) FROM ingreso i3 WHERE i3.PeriInfo = i.PeriInfo AND MONTH(i3.FechIngr) = 3 AND i3.CodiCuco = i.CodiCuco) Ingremes3"
  loc_B90F2E: ConcatStr
  loc_B90F2F: FStStrNoPop var_124
  loc_B90F32: LitStr " , (SELECT IFNULL(SUM(i4.ImpoIngr),0) FROM ingreso i4 WHERE i4.PeriInfo = i.PeriInfo AND MONTH(i4.FechIngr) = 4 AND i4.CodiCuco = i.CodiCuco) Ingremes4"
  loc_B90F35: ConcatStr
  loc_B90F36: FStStrNoPop var_128
  loc_B90F39: LitStr " , (SELECT IFNULL(SUM(i5.ImpoIngr),0) FROM ingreso i5 WHERE i5.PeriInfo = i.PeriInfo AND MONTH(i5.FechIngr) = 5 AND i5.CodiCuco = i.CodiCuco) Ingremes5"
  loc_B90F3C: ConcatStr
  loc_B90F3D: FStStrNoPop var_12C
  loc_B90F40: LitStr " , (SELECT IFNULL(SUM(i6.ImpoIngr),0) FROM ingreso i6 WHERE i6.PeriInfo = i.PeriInfo AND MONTH(i6.FechIngr) = 6 AND i6.CodiCuco = i.CodiCuco) Ingremes6"
  loc_B90F43: ConcatStr
  loc_B90F44: FStStrNoPop var_130
  loc_B90F47: LitStr " , (SELECT IFNULL(SUM(i7.ImpoIngr),0) FROM ingreso i7 WHERE i7.PeriInfo = i.PeriInfo AND MONTH(i7.FechIngr) = 7 AND i7.CodiCuco = i.CodiCuco) Ingremes7"
  loc_B90F4A: ConcatStr
  loc_B90F4B: FStStrNoPop var_134
  loc_B90F4E: LitStr " , (SELECT IFNULL(SUM(i8.ImpoIngr),0) FROM ingreso i8 WHERE i8.PeriInfo = i.PeriInfo AND MONTH(i8.FechIngr) = 8 AND i8.CodiCuco = i.CodiCuco) Ingremes8"
  loc_B90F51: ConcatStr
  loc_B90F52: FStStrNoPop var_138
  loc_B90F55: LitStr " , (SELECT IFNULL(SUM(i9.ImpoIngr),0) FROM ingreso i9 WHERE i9.PeriInfo = i.PeriInfo AND MONTH(i9.FechIngr) = 9 AND i9.CodiCuco = i.CodiCuco) Ingremes9"
  loc_B90F58: ConcatStr
  loc_B90F59: FStStrNoPop var_13C
  loc_B90F5C: LitStr " , (SELECT IFNULL(SUM(i10.ImpoIngr),0) FROM ingreso i10 WHERE i10.PeriInfo = i.PeriInfo AND MONTH(i10.FechIngr) = 10 AND i10.CodiCuco = i.CodiCuco) Ingremes10"
  loc_B90F5F: ConcatStr
  loc_B90F60: FStStrNoPop var_140
  loc_B90F63: LitStr " , (SELECT IFNULL(SUM(i11.ImpoIngr),0) FROM ingreso i11 WHERE i11.PeriInfo = i.PeriInfo AND MONTH(i11.FechIngr) = 11 AND i11.CodiCuco = i.CodiCuco) Ingremes11"
  loc_B90F66: ConcatStr
  loc_B90F67: FStStrNoPop var_144
  loc_B90F6A: LitStr " , (SELECT IFNULL(SUM(i12.ImpoIngr),0) FROM ingreso i12 WHERE i12.PeriInfo = i.PeriInfo AND MONTH(i12.FechIngr) = 12 AND i12.CodiCuco = i.CodiCuco) Ingremes12"
  loc_B90F6D: ConcatStr
  loc_B90F6E: FStStrNoPop var_148
  loc_B90F71: LitStr " FROM ingreso i"
  loc_B90F74: ConcatStr
  loc_B90F75: FStStrNoPop var_14C
  loc_B90F78: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = i.PeriInfo AND cc.CodiCuco = i.CodiCuco"
  loc_B90F7B: ConcatStr
  loc_B90F7C: FStStrNoPop var_150
  loc_B90F7F: LitStr " WHERE i.PeriInfo = "
  loc_B90F82: ConcatStr
  loc_B90F83: FStStrNoPop var_158
  loc_B90F86: FLdRfVar var_154
  loc_B90F89: FLdPr Me
  loc_B90F8C: VCallAd Control_ID_CboPeriodo
  loc_B90F8F: FStAdFunc var_B8
  loc_B90F92: FLdPr var_B8
  loc_B90F95:  = Me.Text
  loc_B90F9A: ILdRf var_154
  loc_B90F9D: ConcatStr
  loc_B90F9E: FStStrNoPop var_15C
  loc_B90FA1: LitStr " AND i.FechIngr >= "
  loc_B90FA4: ConcatStr
  loc_B90FA5: FStStrNoPop var_160
  loc_B90FA8: LitI4 1
  loc_B90FAD: LitI4 1
  loc_B90FB2: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B90FB7: FStVarCopyObj var_FC
  loc_B90FBA: FLdRfVar var_FC
  loc_B90FBD: FLdRfVar var_D8
  loc_B90FC0: CStrVarTmp
  loc_B90FC1: CVarStr var_E8
  loc_B90FC4: ImpAdCallI2 Format$(, )
  loc_B90FC9: FStStrNoPop var_164
  loc_B90FCC: ConcatStr
  loc_B90FCD: FStStrNoPop var_168
  loc_B90FD0: LitStr " AND i.FechIngr <= "
  loc_B90FD3: ConcatStr
  loc_B90FD4: FStStrNoPop var_16C
  loc_B90FD7: LitI4 1
  loc_B90FDC: LitI4 1
  loc_B90FE1: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_B90FE6: FStVarCopyObj var_180
  loc_B90FE9: FLdRfVar var_180
  loc_B90FEC: FLdRfVar var_10C
  loc_B90FEF: CStrVarTmp
  loc_B90FF0: CVarStr var_11C
  loc_B90FF3: ImpAdCallI2 Format$(, )
  loc_B90FF8: FStStrNoPop var_184
  loc_B90FFB: ConcatStr
  loc_B90FFC: FStStrNoPop var_188
  loc_B90FFF: LitStr " AND (CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "')"
  loc_B91002: ConcatStr
  loc_B91003: FStStrNoPop var_18C
  loc_B91006: ILdRf var_88
  loc_B91009: ConcatStr
  loc_B9100A: FStStrNoPop var_190
  loc_B9100D: ILdRf var_90
  loc_B91010: ConcatStr
  loc_B91011: FStStrNoPop var_194
  loc_B91014: LitStr " GROUP BY cc.CodiCuco"
  loc_B91017: ConcatStr
  loc_B91018: FStStrNoPop var_198
  loc_B9101B: LitStr " ORDER BY cc.CodiTicu, cc.CodiCuco;"
  loc_B9101E: ConcatStr
  loc_B9101F: FStStrNoPop var_19C
  loc_B91022: FLdPr var_120
  loc_B91025: Call clsbase.RedefineRS(from_stack_1v)
  loc_B9102A: FFreeStr var_C4 = "": var_C8 = "": var_EC = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_158 = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_B91067: FFreeAd var_B8 = "": var_BC = ""
  loc_B91070: FFreeVar var_D8 = "": var_E8 = "": var_FC = "": var_10C = "": var_11C = ""
  loc_B9107F: LitStr "Municipalidad de Guaymallén"
  loc_B91082: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B91085: EqStr
  loc_B91087: BranchF loc_B91095
  loc_B9108A: LitStr "DELETE FROM tmp_anex where CodiCuco = '6310400000';"
  loc_B9108D: FLdPr var_120
  loc_B91090: Call clsbase.RedefineRS(from_stack_1v)
  loc_B91095: LitStr "SELECT tmp_anex.PeriInfo, tmp_anex.CodiTicu, DetaTicu, tmp_anex.CodiCuco, DetaCuco,"
  loc_B91098: LitStr " Sum(Original) Original, NoleAsie, Sum(Aumentos) Aumentos, Sum(Disminuciones) Disminuciones, Sum(Original+Aumentos-Disminuciones) Definitivo, Sum(Ingresado) Ingresado, Sum(Original+Aumentos-Disminuciones-Ingresado) Diferencia"
  loc_B9109B: ConcatStr
  loc_B9109C: FStStrNoPop var_C4
  loc_B9109F: LitStr ", Sum(Ingremes1) Ingremes1, Sum(Ingremes2) Ingremes2, Sum(Ingremes3) Ingremes3, Sum(Ingremes4) Ingremes4, Sum(Ingremes5) Ingremes5, Sum(Ingremes6) Ingremes6, Sum(Ingremes7) Ingremes7, Sum(Ingremes8) Ingremes8, Sum(Ingremes9) Ingremes9, Sum(Ingremes10) Ingremes10, Sum(Ingremes11) Ingremes11, Sum(Ingremes12) Ingremes12"
  loc_B910A2: ConcatStr
  loc_B910A3: FStStrNoPop var_C8
  loc_B910A6: LitStr " FROM tmp_anex"
  loc_B910A9: ConcatStr
  loc_B910AA: FStStrNoPop var_EC
  loc_B910AD: LitStr " INNER JOIN tipocuco ON tipocuco.CodiTicu = tmp_anex.CodiTicu"
  loc_B910B0: ConcatStr
  loc_B910B1: FStStrNoPop var_124
  loc_B910B4: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = tmp_anex.PeriInfo AND cc.CodiCuco = tmp_anex.CodiCuco"
  loc_B910B7: ConcatStr
  loc_B910B8: FStStrNoPop var_128
  loc_B910BB: LitStr " GROUP BY CodiCuco"
  loc_B910BE: ConcatStr
  loc_B910BF: FStStrNoPop var_12C
  loc_B910C2: LitStr " ORDER BY tmp_anex.CodiTicu, tmp_anex.CodiCuco;"
  loc_B910C5: ConcatStr
  loc_B910C6: FStStrNoPop var_130
  loc_B910C9: FLdPr var_120
  loc_B910CC: Call clsbase.RedefineRS(from_stack_1v)
  loc_B910D1: FFreeStr var_C4 = "": var_C8 = "": var_EC = "": var_124 = "": var_128 = "": var_12C = ""
  loc_B910E2: FLdRfVar var_C0
  loc_B910E5: FLdPr var_120
  loc_B910E8: from_stack_1 = clsbase.RecordCount
  loc_B910ED: ILdRf var_C0
  loc_B910F0: LitI4 0
  loc_B910F5: EqI4
  loc_B910F6: BranchF loc_B91109
  loc_B910F9: LitI4 0
  loc_B910FE: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B91101: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B91106: Branch loc_B915E5
  loc_B91109: LitI4 0
  loc_B9110E: LitI4 1
  loc_B91113: FLdPr Me
  loc_B91116: MemLdRfVar from_stack_1.global_96
  loc_B91119: Redim
  loc_B91123: LitI4 0
  loc_B91128: LitI4 1
  loc_B9112D: FLdPr Me
  loc_B91130: MemLdRfVar from_stack_1.global_100
  loc_B91133: Redim
  loc_B9113D: LitI2_Byte 0
  loc_B9113F: FLdPr Me
  loc_B91142: MemStI2 global_106
  loc_B91145: FLdPr var_120
  loc_B91148: Call clsbase.MoveFirst()
  loc_B9114D: Call Proc_148_33_9EF60C()
  loc_B91152: FLdRfVar var_92
  loc_B91155: FLdPr var_120
  loc_B91158: from_stack_1 = clsbase.EOF
  loc_B9115D: FLdI2 var_92
  loc_B91160: NotI4
  loc_B91161: BranchF loc_B913A5
  loc_B91164: FLdRfVar var_D8
  loc_B91167: FLdRfVar var_170
  loc_B9116A: LitVarStr var_A4, "CodiTicu"
  loc_B9116F: PopAdLdVar
  loc_B91170: FLdRfVar var_BC
  loc_B91173: FLdRfVar var_B8
  loc_B91176: FLdPr var_120
  loc_B91179: from_stack_1v = clsbase.RsFrmGet()
  loc_B9117E: FLdPr var_B8
  loc_B91181:  = Me.Fields
  loc_B91186: FLdPr var_BC
  loc_B91189: from_stack_2 = Me.Item(from_stack_1)
  loc_B9118E: FLdPr var_170
  loc_B91191:  = Me.Value
  loc_B91196: LitI4 1
  loc_B9119B: FLdRfVar var_D8
  loc_B9119E: CStrVarTmp
  loc_B9119F: FStStrNoPop var_C4
  loc_B911A2: ImpAdCallI2 Left$(, )
  loc_B911A7: FStStrNoPop var_C8
  loc_B911AA: LitI4 1
  loc_B911AF: FLdPr Me
  loc_B911B2: MemLdI2 global_106
  loc_B911B5: CI4UI1
  loc_B911B6: FLdPr Me
  loc_B911B9: MemLdStr global_96
  loc_B911BC: Ary1LdPr
  loc_B911BD: MemLdStr global_0
  loc_B911C0: ImpAdCallI2 Left$(, )
  loc_B911C5: FStStrNoPop var_EC
  loc_B911C8: NeStr
  loc_B911CA: FFreeStr var_C4 = "": var_C8 = ""
  loc_B911D3: FFreeAd var_B8 = "": var_BC = ""
  loc_B911DC: FFree1Var var_D8 = ""
  loc_B911DF: BranchF loc_B911EA
  loc_B911E2: Call Proc_148_33_9EF60C()
  loc_B911E7: Branch loc_B913A2
  loc_B911EA: FLdRfVar var_D8
  loc_B911ED: FLdRfVar var_170
  loc_B911F0: LitVarStr var_A4, "CodiTicu"
  loc_B911F5: PopAdLdVar
  loc_B911F6: FLdRfVar var_BC
  loc_B911F9: FLdRfVar var_B8
  loc_B911FC: FLdPr var_120
  loc_B911FF: from_stack_1v = clsbase.RsFrmGet()
  loc_B91204: FLdPr var_B8
  loc_B91207:  = Me.Fields
  loc_B9120C: FLdPr var_BC
  loc_B9120F: from_stack_2 = Me.Item(from_stack_1)
  loc_B91214: FLdPr var_170
  loc_B91217:  = Me.Value
  loc_B9121C: LitI4 2
  loc_B91221: FLdRfVar var_D8
  loc_B91224: CStrVarTmp
  loc_B91225: FStStrNoPop var_C4
  loc_B91228: ImpAdCallI2 Left$(, )
  loc_B9122D: FStStrNoPop var_C8
  loc_B91230: LitI4 2
  loc_B91235: FLdPr Me
  loc_B91238: MemLdI2 global_108
  loc_B9123B: CI4UI1
  loc_B9123C: FLdPr Me
  loc_B9123F: MemLdI2 global_106
  loc_B91242: CI4UI1
  loc_B91243: FLdPr Me
  loc_B91246: MemLdStr global_96
  loc_B91249: Ary1LdPr
  loc_B9124A: MemLdStr global_8
  loc_B9124D: Ary1LdPr
  loc_B9124E: MemLdStr global_0
  loc_B91251: ImpAdCallI2 Left$(, )
  loc_B91256: FStStrNoPop var_EC
  loc_B91259: NeStr
  loc_B9125B: FFreeStr var_C4 = "": var_C8 = ""
  loc_B91264: FFreeAd var_B8 = "": var_BC = ""
  loc_B9126D: FFree1Var var_D8 = ""
  loc_B91270: BranchF loc_B9127B
  loc_B91273: Call Proc_148_34_A10360()
  loc_B91278: Branch loc_B913A2
  loc_B9127B: FLdRfVar var_D8
  loc_B9127E: FLdRfVar var_170
  loc_B91281: LitVarStr var_A4, "CodiTicu"
  loc_B91286: PopAdLdVar
  loc_B91287: FLdRfVar var_BC
  loc_B9128A: FLdRfVar var_B8
  loc_B9128D: FLdPr var_120
  loc_B91290: from_stack_1v = clsbase.RsFrmGet()
  loc_B91295: FLdPr var_B8
  loc_B91298:  = Me.Fields
  loc_B9129D: FLdPr var_BC
  loc_B912A0: from_stack_2 = Me.Item(from_stack_1)
  loc_B912A5: FLdPr var_170
  loc_B912A8:  = Me.Value
  loc_B912AD: LitI4 3
  loc_B912B2: FLdRfVar var_D8
  loc_B912B5: CStrVarTmp
  loc_B912B6: FStStrNoPop var_C4
  loc_B912B9: ImpAdCallI2 Left$(, )
  loc_B912BE: FStStrNoPop var_C8
  loc_B912C1: LitI4 3
  loc_B912C6: FLdPr Me
  loc_B912C9: MemLdI2 global_110
  loc_B912CC: CI4UI1
  loc_B912CD: FLdPr Me
  loc_B912D0: MemLdI2 global_108
  loc_B912D3: CI4UI1
  loc_B912D4: FLdPr Me
  loc_B912D7: MemLdI2 global_106
  loc_B912DA: CI4UI1
  loc_B912DB: FLdPr Me
  loc_B912DE: MemLdStr global_96
  loc_B912E1: Ary1LdPr
  loc_B912E2: MemLdStr global_8
  loc_B912E5: Ary1LdPr
  loc_B912E6: MemLdStr global_8
  loc_B912E9: Ary1LdPr
  loc_B912EA: MemLdStr global_0
  loc_B912ED: ImpAdCallI2 Left$(, )
  loc_B912F2: FStStrNoPop var_EC
  loc_B912F5: NeStr
  loc_B912F7: FFreeStr var_C4 = "": var_C8 = ""
  loc_B91300: FFreeAd var_B8 = "": var_BC = ""
  loc_B91309: FFree1Var var_D8 = ""
  loc_B9130C: BranchF loc_B91317
  loc_B9130F: Call Proc_148_35_A205C0()
  loc_B91314: Branch loc_B913A2
  loc_B91317: FLdRfVar var_D8
  loc_B9131A: FLdRfVar var_170
  loc_B9131D: LitVarStr var_A4, "CodiTicu"
  loc_B91322: PopAdLdVar
  loc_B91323: FLdRfVar var_BC
  loc_B91326: FLdRfVar var_B8
  loc_B91329: FLdPr var_120
  loc_B9132C: from_stack_1v = clsbase.RsFrmGet()
  loc_B91331: FLdPr var_B8
  loc_B91334:  = Me.Fields
  loc_B91339: FLdPr var_BC
  loc_B9133C: from_stack_2 = Me.Item(from_stack_1)
  loc_B91341: FLdPr var_170
  loc_B91344:  = Me.Value
  loc_B91349: FLdRfVar var_D8
  loc_B9134C: FLdPr Me
  loc_B9134F: MemLdI2 global_112
  loc_B91352: CI4UI1
  loc_B91353: FLdPr Me
  loc_B91356: MemLdI2 global_110
  loc_B91359: CI4UI1
  loc_B9135A: FLdPr Me
  loc_B9135D: MemLdI2 global_108
  loc_B91360: CI4UI1
  loc_B91361: FLdPr Me
  loc_B91364: MemLdI2 global_106
  loc_B91367: CI4UI1
  loc_B91368: FLdPr Me
  loc_B9136B: MemLdStr global_96
  loc_B9136E: Ary1LdPr
  loc_B9136F: MemLdStr global_8
  loc_B91372: Ary1LdPr
  loc_B91373: MemLdStr global_8
  loc_B91376: Ary1LdPr
  loc_B91377: MemLdStr global_8
  loc_B9137A: Ary1LdPr
  loc_B9137B: MemLdStr global_0
  loc_B9137E: CI2Str
  loc_B91380: CVarI2 var_B4
  loc_B91383: HardType
  loc_B91384: NeVarBool
  loc_B91386: FFreeAd var_B8 = "": var_BC = ""
  loc_B9138F: FFree1Var var_D8 = ""
  loc_B91392: BranchF loc_B9139D
  loc_B91395: Call Proc_148_36_A1BB78()
  loc_B9139A: Branch loc_B913A2
  loc_B9139D: Call Proc_148_37_B2E730()
  loc_B913A2: Branch loc_B91152
  loc_B913A5: LitNothing
  loc_B913A7: FStAd var_120 
  loc_B913AB: LitI2_Byte 1
  loc_B913AD: FLdPr Me
  loc_B913B0: MemLdRfVar from_stack_1.global_106
  loc_B913B3: FLdPr Me
  loc_B913B6: MemLdStr global_96
  loc_B913B9: LitI2_Byte 1
  loc_B913BB: FnUBound
  loc_B913BD: CI2I4
  loc_B913BE: ForI2 var_1A0
  loc_B913C4: LitI2_Byte 1
  loc_B913C6: FLdPr Me
  loc_B913C9: MemLdRfVar from_stack_1.global_108
  loc_B913CC: FLdPr Me
  loc_B913CF: MemLdI2 global_106
  loc_B913D2: CI4UI1
  loc_B913D3: FLdPr Me
  loc_B913D6: MemLdStr global_96
  loc_B913D9: Ary1LdPr
  loc_B913DA: MemLdStr global_8
  loc_B913DD: LitI2_Byte 1
  loc_B913DF: FnUBound
  loc_B913E1: CI2I4
  loc_B913E2: ForI2 var_1A4
  loc_B913E8: LitI2_Byte 1
  loc_B913EA: FLdPr Me
  loc_B913ED: MemLdRfVar from_stack_1.global_110
  loc_B913F0: FLdPr Me
  loc_B913F3: MemLdI2 global_108
  loc_B913F6: CI4UI1
  loc_B913F7: FLdPr Me
  loc_B913FA: MemLdI2 global_106
  loc_B913FD: CI4UI1
  loc_B913FE: FLdPr Me
  loc_B91401: MemLdStr global_96
  loc_B91404: Ary1LdPr
  loc_B91405: MemLdStr global_8
  loc_B91408: Ary1LdPr
  loc_B91409: MemLdStr global_8
  loc_B9140C: LitI2_Byte 1
  loc_B9140E: FnUBound
  loc_B91410: CI2I4
  loc_B91411: ForI2 var_1A8
  loc_B91417: LitI2_Byte 1
  loc_B91419: FLdPr Me
  loc_B9141C: MemLdRfVar from_stack_1.global_112
  loc_B9141F: FLdPr Me
  loc_B91422: MemLdI2 global_110
  loc_B91425: CI4UI1
  loc_B91426: FLdPr Me
  loc_B91429: MemLdI2 global_108
  loc_B9142C: CI4UI1
  loc_B9142D: FLdPr Me
  loc_B91430: MemLdI2 global_106
  loc_B91433: CI4UI1
  loc_B91434: FLdPr Me
  loc_B91437: MemLdStr global_96
  loc_B9143A: Ary1LdPr
  loc_B9143B: MemLdStr global_8
  loc_B9143E: Ary1LdPr
  loc_B9143F: MemLdStr global_8
  loc_B91442: Ary1LdPr
  loc_B91443: MemLdStr global_8
  loc_B91446: LitI2_Byte 1
  loc_B91448: FnUBound
  loc_B9144A: CI2I4
  loc_B9144B: ForI2 var_1AC
  loc_B91451: FLdPr Me
  loc_B91454: MemLdI2 global_110
  loc_B91457: CI4UI1
  loc_B91458: FLdPr Me
  loc_B9145B: MemLdI2 global_108
  loc_B9145E: CI4UI1
  loc_B9145F: FLdPr Me
  loc_B91462: MemLdI2 global_106
  loc_B91465: CI4UI1
  loc_B91466: FLdPr Me
  loc_B91469: MemLdStr global_96
  loc_B9146C: AryLock
  loc_B9146F: Ary1LdPr
  loc_B91470: MemLdStr global_8
  loc_B91473: AryLock
  loc_B91476: Ary1LdPr
  loc_B91477: MemLdStr global_8
  loc_B9147A: AryLock
  loc_B9147D: Ary1LdPr
  loc_B9147E: MemLdRfVar from_stack_1.global_12
  loc_B91481: FLdPr Me
  loc_B91484: MemLdI2 global_112
  loc_B91487: CI4UI1
  loc_B91488: FLdPr Me
  loc_B9148B: MemLdI2 global_110
  loc_B9148E: CI4UI1
  loc_B9148F: FLdPr Me
  loc_B91492: MemLdI2 global_108
  loc_B91495: CI4UI1
  loc_B91496: FLdPr Me
  loc_B91499: MemLdI2 global_106
  loc_B9149C: CI4UI1
  loc_B9149D: FLdPr Me
  loc_B914A0: MemLdStr global_96
  loc_B914A3: AryLock
  loc_B914A6: Ary1LdPr
  loc_B914A7: MemLdStr global_8
  loc_B914AA: AryLock
  loc_B914AD: Ary1LdPr
  loc_B914AE: MemLdStr global_8
  loc_B914B1: AryLock
  loc_B914B4: Ary1LdPr
  loc_B914B5: MemLdStr global_8
  loc_B914B8: AryLock
  loc_B914BB: Ary1LdPr
  loc_B914BC: MemLdRfVar from_stack_1.global_12
  loc_B914BF: Call Proc_148_38_9BE690()
  loc_B914C4: AryUnlock
  loc_B914C7: AryUnlock
  loc_B914CA: AryUnlock
  loc_B914CD: AryUnlock
  loc_B914D0: AryUnlock
  loc_B914D3: AryUnlock
  loc_B914D6: AryUnlock
  loc_B914D9: FLdPr Me
  loc_B914DC: MemLdRfVar from_stack_1.global_112
  loc_B914DF: NextI2 var_1AC, loc_B91451
  loc_B914E4: FLdPr Me
  loc_B914E7: MemLdI2 global_108
  loc_B914EA: CI4UI1
  loc_B914EB: FLdPr Me
  loc_B914EE: MemLdI2 global_106
  loc_B914F1: CI4UI1
  loc_B914F2: FLdPr Me
  loc_B914F5: MemLdStr global_96
  loc_B914F8: AryLock
  loc_B914FB: Ary1LdPr
  loc_B914FC: MemLdStr global_8
  loc_B914FF: AryLock
  loc_B91502: Ary1LdPr
  loc_B91503: MemLdRfVar from_stack_1.global_12
  loc_B91506: FLdPr Me
  loc_B91509: MemLdI2 global_110
  loc_B9150C: CI4UI1
  loc_B9150D: FLdPr Me
  loc_B91510: MemLdI2 global_108
  loc_B91513: CI4UI1
  loc_B91514: FLdPr Me
  loc_B91517: MemLdI2 global_106
  loc_B9151A: CI4UI1
  loc_B9151B: FLdPr Me
  loc_B9151E: MemLdStr global_96
  loc_B91521: AryLock
  loc_B91524: Ary1LdPr
  loc_B91525: MemLdStr global_8
  loc_B91528: AryLock
  loc_B9152B: Ary1LdPr
  loc_B9152C: MemLdStr global_8
  loc_B9152F: AryLock
  loc_B91532: Ary1LdPr
  loc_B91533: MemLdRfVar from_stack_1.global_12
  loc_B91536: Call Proc_148_38_9BE690()
  loc_B9153B: AryUnlock
  loc_B9153E: AryUnlock
  loc_B91541: AryUnlock
  loc_B91544: AryUnlock
  loc_B91547: AryUnlock
  loc_B9154A: FLdPr Me
  loc_B9154D: MemLdRfVar from_stack_1.global_110
  loc_B91550: NextI2 var_1A8, loc_B91417
  loc_B91555: FLdPr Me
  loc_B91558: MemLdI2 global_106
  loc_B9155B: CI4UI1
  loc_B9155C: FLdPr Me
  loc_B9155F: MemLdStr global_96
  loc_B91562: AryLock
  loc_B91565: Ary1LdPr
  loc_B91566: MemLdRfVar from_stack_1.global_12
  loc_B91569: FLdPr Me
  loc_B9156C: MemLdI2 global_108
  loc_B9156F: CI4UI1
  loc_B91570: FLdPr Me
  loc_B91573: MemLdI2 global_106
  loc_B91576: CI4UI1
  loc_B91577: FLdPr Me
  loc_B9157A: MemLdStr global_96
  loc_B9157D: AryLock
  loc_B91580: Ary1LdPr
  loc_B91581: MemLdStr global_8
  loc_B91584: AryLock
  loc_B91587: Ary1LdPr
  loc_B91588: MemLdRfVar from_stack_1.global_12
  loc_B9158B: Call Proc_148_38_9BE690()
  loc_B91590: AryUnlock
  loc_B91593: AryUnlock
  loc_B91596: AryUnlock
  loc_B91599: FLdPr Me
  loc_B9159C: MemLdRfVar from_stack_1.global_108
  loc_B9159F: NextI2 var_1A4, loc_B913E8
  loc_B915A4: LitI4 1
  loc_B915A9: FLdPr Me
  loc_B915AC: MemLdStr global_100
  loc_B915AF: AryLock
  loc_B915B2: Ary1LdRf
  loc_B915B3: FLdPr Me
  loc_B915B6: MemLdI2 global_106
  loc_B915B9: CI4UI1
  loc_B915BA: FLdPr Me
  loc_B915BD: MemLdStr global_96
  loc_B915C0: AryLock
  loc_B915C3: Ary1LdPr
  loc_B915C4: MemLdRfVar from_stack_1.global_12
  loc_B915C7: Call Proc_148_38_9BE690()
  loc_B915CC: AryUnlock
  loc_B915CF: AryUnlock
  loc_B915D2: FLdPr Me
  loc_B915D5: MemLdRfVar from_stack_1.global_106
  loc_B915D8: NextI2 var_1A0, loc_B913C4
  loc_B915DD: LitI2_Byte &HFF
  loc_B915DF: FLdPr Me
  loc_B915E2: MemStI2 bGenerado
  loc_B915E5: LitI4 0
  loc_B915EA: CI2I4
  loc_B915EB: FLdPr Me
  loc_B915EE: Me.MousePointer = from_stack_1
  loc_B915F3: LitVarStr var_A4, vbNullString
  loc_B915F8: PopAdLdVar
  loc_B915F9: FLdPr Me
  loc_B915FC: VCallAd Control_ID_statusBar
  loc_B915FF: FStAdFunc var_B8
  loc_B91602: FLdPr var_B8
  loc_B91605: LateIdSt
  loc_B9160A: FFree1Ad var_B8
  loc_B9160D: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'AF1B14
  'Data Table: 4C616C
  loc_AF14A8: FLdRfVar var_A8
  loc_AF14AB: FLdPr Me
  loc_AF14AE: VCallAd Control_ID_CboPeriodo
  loc_AF14B1: FStAdFunc var_A4
  loc_AF14B4: FLdPr var_A4
  loc_AF14B7:  = Me.Text
  loc_AF14BC: FLdRfVar var_F8
  loc_AF14BF: FLdPr Me
  loc_AF14C2: VCallAd Control_ID_CboPeriodo
  loc_AF14C5: FStAdFunc var_F4
  loc_AF14C8: FLdPr var_F4
  loc_AF14CB:  = Me.Text
  loc_AF14D0: FLdPr Me
  loc_AF14D3: VCallAd Control_ID_mskDesde
  loc_AF14D6: FStAdFunc var_8C
  loc_AF14D9: FLdPr var_8C
  loc_AF14DC: LateIdLdVar var_9C DispID_15 0
  loc_AF14E3: CStrVarTmp
  loc_AF14E4: FStStrNoPop var_A0
  loc_AF14E7: CDateStr
  loc_AF14E9: CVarDate var_C8
  loc_AF14ED: HardType
  loc_AF14EE: LitI2_Byte 1
  loc_AF14F0: LitI2_Byte 1
  loc_AF14F2: ILdRf var_A8
  loc_AF14F5: CI2Str
  loc_AF14F7: FLdRfVar var_B8
  loc_AF14FA: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF14FF: FLdRfVar var_B8
  loc_AF1502: EqVar var_D8
  loc_AF1506: FLdPr Me
  loc_AF1509: VCallAd Control_ID_mskHasta
  loc_AF150C: FStAdFunc var_DC
  loc_AF150F: FLdPr var_DC
  loc_AF1512: LateIdLdVar var_EC DispID_15 0
  loc_AF1519: CStrVarTmp
  loc_AF151A: FStStrNoPop var_F0
  loc_AF151D: CDateStr
  loc_AF151F: CVarDate var_118
  loc_AF1523: HardType
  loc_AF1524: LitI2_Byte &H1F
  loc_AF1526: LitI2_Byte 1
  loc_AF1528: ILdRf var_F8
  loc_AF152B: CI2Str
  loc_AF152D: FLdRfVar var_108
  loc_AF1530: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF1535: FLdRfVar var_108
  loc_AF1538: EqVar var_128
  loc_AF153C: AndVar var_138
  loc_AF1540: CBoolVarNull
  loc_AF1542: FFreeStr var_A0 = "": var_A8 = "": var_F0 = ""
  loc_AF154D: FFreeAd var_8C = "": var_A4 = "": var_DC = ""
  loc_AF1558: FFreeVar var_9C = "": var_B8 = "": var_EC = ""
  loc_AF1563: BranchF loc_AF158D
  loc_AF1566: FLdRfVar var_A0
  loc_AF1569: FLdPr Me
  loc_AF156C: VCallAd Control_ID_CboPeriodo
  loc_AF156F: FStAdFunc var_8C
  loc_AF1572: FLdPr var_8C
  loc_AF1575:  = Me.Text
  loc_AF157A: ILdRf var_A0
  loc_AF157D: LitStr "01"
  loc_AF1580: ConcatStr
  loc_AF1581: FStStr var_88
  loc_AF1584: FFree1Str var_A0
  loc_AF1587: FFree1Ad var_8C
  loc_AF158A: Branch loc_AF1713
  loc_AF158D: FLdRfVar var_A8
  loc_AF1590: FLdPr Me
  loc_AF1593: VCallAd Control_ID_CboPeriodo
  loc_AF1596: FStAdFunc var_A4
  loc_AF1599: FLdPr var_A4
  loc_AF159C:  = Me.Text
  loc_AF15A1: FLdPr Me
  loc_AF15A4: VCallAd Control_ID_mskDesde
  loc_AF15A7: FStAdFunc var_8C
  loc_AF15AA: FLdPr var_8C
  loc_AF15AD: LateIdLdVar var_9C DispID_15 0
  loc_AF15B4: CStrVarTmp
  loc_AF15B5: FStStrNoPop var_A0
  loc_AF15B8: CDateStr
  loc_AF15BA: CVarDate var_C8
  loc_AF15BE: HardType
  loc_AF15BF: LitI2_Byte 1
  loc_AF15C1: LitI2_Byte 1
  loc_AF15C3: ILdRf var_A8
  loc_AF15C6: CI2Str
  loc_AF15C8: FLdRfVar var_B8
  loc_AF15CB: ImpAdCallFPR4  = DateSerial(, , )
  loc_AF15D0: FLdRfVar var_B8
  loc_AF15D3: EqVarBool
  loc_AF15D5: FFreeStr var_A0 = ""
  loc_AF15DC: FFreeAd var_8C = ""
  loc_AF15E3: FFreeVar var_9C = ""
  loc_AF15EA: BranchF loc_AF1697
  loc_AF15ED: LitStr "Municipalidad de Guaymallén"
  loc_AF15F0: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_AF15F3: EqStr
  loc_AF15F5: BranchF loc_AF1677
  loc_AF15F8: FLdPr Me
  loc_AF15FB: VCallAd Control_ID_mskHasta
  loc_AF15FE: FStAdFunc var_A4
  loc_AF1601: FLdPr var_A4
  loc_AF1604: LateIdLdVar var_9C DispID_15 0
  loc_AF160B: CStrVarTmp
  loc_AF160C: CVarStr var_B8
  loc_AF160F: FLdRfVar var_D8
  loc_AF1612: ImpAdCallFPR4  = Month()
  loc_AF1617: FLdRfVar var_A0
  loc_AF161A: FLdPr Me
  loc_AF161D: VCallAd Control_ID_CboPeriodo
  loc_AF1620: FStAdFunc var_8C
  loc_AF1623: FLdPr var_8C
  loc_AF1626:  = Me.Text
  loc_AF162B: FLdZeroAd var_A0
  loc_AF162E: CVarStr var_128
  loc_AF1631: LitI4 1
  loc_AF1636: LitI4 1
  loc_AF163B: LitVarStr var_C8, "00"
  loc_AF1640: FStVarCopyObj var_EC
  loc_AF1643: FLdRfVar var_EC
  loc_AF1646: FLdRfVar var_D8
  loc_AF1649: FLdRfVar var_108
  loc_AF164C: ImpAdCallFPR4  = Format(, )
  loc_AF1651: FLdRfVar var_108
  loc_AF1654: ConcatVar var_138
  loc_AF1658: CStrVarTmp
  loc_AF1659: FStStr var_88
  loc_AF165C: FFreeAd var_8C = ""
  loc_AF1663: FFreeVar var_9C = "": var_B8 = "": var_D8 = "": var_EC = "": var_128 = "": var_108 = ""
  loc_AF1674: Branch loc_AF1694
  loc_AF1677: FLdRfVar var_A0
  loc_AF167A: FLdPr Me
  loc_AF167D: VCallAd Control_ID_CboPeriodo
  loc_AF1680: FStAdFunc var_8C
  loc_AF1683: FLdPr var_8C
  loc_AF1686:  = Me.Text
  loc_AF168B: FLdZeroAd var_A0
  loc_AF168E: FStStr var_88
  loc_AF1691: FFree1Ad var_8C
  loc_AF1694: Branch loc_AF1713
  loc_AF1697: FLdPr Me
  loc_AF169A: VCallAd Control_ID_mskHasta
  loc_AF169D: FStAdFunc var_A4
  loc_AF16A0: FLdPr var_A4
  loc_AF16A3: LateIdLdVar var_9C DispID_15 0
  loc_AF16AA: CStrVarTmp
  loc_AF16AB: CVarStr var_B8
  loc_AF16AE: FLdRfVar var_D8
  loc_AF16B1: ImpAdCallFPR4  = Month()
  loc_AF16B6: FLdRfVar var_A0
  loc_AF16B9: FLdPr Me
  loc_AF16BC: VCallAd Control_ID_CboPeriodo
  loc_AF16BF: FStAdFunc var_8C
  loc_AF16C2: FLdPr var_8C
  loc_AF16C5:  = Me.Text
  loc_AF16CA: FLdZeroAd var_A0
  loc_AF16CD: CVarStr var_128
  loc_AF16D0: LitI4 1
  loc_AF16D5: LitI4 1
  loc_AF16DA: LitVarStr var_C8, "00"
  loc_AF16DF: FStVarCopyObj var_EC
  loc_AF16E2: FLdRfVar var_EC
  loc_AF16E5: FLdRfVar var_D8
  loc_AF16E8: FLdRfVar var_108
  loc_AF16EB: ImpAdCallFPR4  = Format(, )
  loc_AF16F0: FLdRfVar var_108
  loc_AF16F3: ConcatVar var_138
  loc_AF16F7: CStrVarTmp
  loc_AF16F8: FStStr var_88
  loc_AF16FB: FFreeAd var_8C = ""
  loc_AF1702: FFreeVar var_9C = "": var_B8 = "": var_D8 = "": var_EC = "": var_128 = "": var_108 = ""
  loc_AF1713: FLdRfVar var_8C
  loc_AF1716: LitI2_Byte 0
  loc_AF1718: LitI2_Byte &HFF
  loc_AF171A: ImpAdLdI4 MemVar_C3D05C
  loc_AF171D: FLdPr Me
  loc_AF1720: MemLdRfVar from_stack_1.global_76
  loc_AF1723: NewIfNullPr IFileSystem3
  loc_AF1726: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AF172B: ILdRf var_8C
  loc_AF172E: FLdPr Me
  loc_AF1731: MemStVarAd
  loc_AF1735: FFree1Ad var_8C
  loc_AF1738: LitVarStr var_C8, "PeriodoPresenta|ExpID|PartidaCod|PartidaDet|CalculoOrig|ModNormaLegal|ModAumentos|ModDisminuciones|CalculoDef|Ingresado|Diferencia"
  loc_AF173D: PopAdLdVar
  loc_AF173E: FLdPr Me
  loc_AF1741: MemLdRfVar from_stack_1.global_80
  loc_AF1744: LdPrVar
  loc_AF1746: LateMemCall
  loc_AF174C: LitVarStr var_C8, vbCrLf
  loc_AF1751: PopAdLdVar
  loc_AF1752: FLdPr Me
  loc_AF1755: MemLdRfVar from_stack_1.global_80
  loc_AF1758: LdPrVar
  loc_AF175A: LateMemCall
  loc_AF1760: FLdRfVar var_13C
  loc_AF1763: FLdPr Me
  loc_AF1766: MemLdRfVar from_stack_1.global_72
  loc_AF1769: NewIfNullPr clsbase
  loc_AF176C: from_stack_1 = clsbase.RecordCount
  loc_AF1771: ILdRf var_13C
  loc_AF1774: LitI4 0
  loc_AF1779: GtI4
  loc_AF177A: BranchF loc_AF1B03
  loc_AF177D: FLdPr Me
  loc_AF1780: MemLdRfVar from_stack_1.global_72
  loc_AF1783: NewIfNullPr clsbase
  loc_AF1786: Call clsbase.MoveFirst()
  loc_AF178B: FLdRfVar var_13E
  loc_AF178E: FLdPr Me
  loc_AF1791: MemLdRfVar from_stack_1.global_72
  loc_AF1794: NewIfNullPr clsbase
  loc_AF1797: from_stack_1 = clsbase.EOF
  loc_AF179C: FLdI2 var_13E
  loc_AF179F: NotI4
  loc_AF17A0: BranchF loc_AF1B03
  loc_AF17A3: ILdRf var_88
  loc_AF17A6: LitStr "|"
  loc_AF17A9: ConcatStr
  loc_AF17AA: FStStrNoPop var_A0
  loc_AF17AD: LitStr "eee-2022-060204"
  loc_AF17B0: ConcatStr
  loc_AF17B1: FStStrNoPop var_A8
  loc_AF17B4: LitStr "|"
  loc_AF17B7: ConcatStr
  loc_AF17B8: CVarStr var_B8
  loc_AF17BB: FLdRfVar var_9C
  loc_AF17BE: FLdRfVar var_DC
  loc_AF17C1: LitVarStr var_C8, "CodiCuco"
  loc_AF17C6: PopAdLdVar
  loc_AF17C7: FLdRfVar var_A4
  loc_AF17CA: FLdRfVar var_8C
  loc_AF17CD: FLdPr Me
  loc_AF17D0: MemLdRfVar from_stack_1.global_72
  loc_AF17D3: NewIfNullPr clsbase
  loc_AF17D6: from_stack_1v = clsbase.RsFrmGet()
  loc_AF17DB: FLdPr var_8C
  loc_AF17DE:  = Me.Fields
  loc_AF17E3: FLdPr var_A4
  loc_AF17E6: from_stack_2 = Me.Item(from_stack_1)
  loc_AF17EB: FLdPr var_DC
  loc_AF17EE:  = Me.Value
  loc_AF17F3: FLdRfVar var_9C
  loc_AF17F6: ConcatVar var_D8
  loc_AF17FA: LitVarStr var_118, "|"
  loc_AF17FF: ConcatVar var_EC
  loc_AF1803: FLdRfVar var_108
  loc_AF1806: FLdRfVar var_158
  loc_AF1809: LitVarStr var_154, "DetaCuco"
  loc_AF180E: PopAdLdVar
  loc_AF180F: FLdRfVar var_144
  loc_AF1812: FLdRfVar var_F4
  loc_AF1815: FLdPr Me
  loc_AF1818: MemLdRfVar from_stack_1.global_72
  loc_AF181B: NewIfNullPr clsbase
  loc_AF181E: from_stack_1v = clsbase.RsFrmGet()
  loc_AF1823: FLdPr var_F4
  loc_AF1826:  = Me.Fields
  loc_AF182B: FLdPr var_144
  loc_AF182E: from_stack_2 = Me.Item(from_stack_1)
  loc_AF1833: FLdPr var_158
  loc_AF1836:  = Me.Value
  loc_AF183B: FLdRfVar var_108
  loc_AF183E: ConcatVar var_128
  loc_AF1842: LitVarStr var_168, "|"
  loc_AF1847: ConcatVar var_138
  loc_AF184B: FLdRfVar var_194
  loc_AF184E: FLdRfVar var_184
  loc_AF1851: LitVarStr var_180, "original"
  loc_AF1856: PopAdLdVar
  loc_AF1857: FLdRfVar var_170
  loc_AF185A: FLdRfVar var_16C
  loc_AF185D: FLdPr Me
  loc_AF1860: MemLdRfVar from_stack_1.global_72
  loc_AF1863: NewIfNullPr clsbase
  loc_AF1866: from_stack_1v = clsbase.RsFrmGet()
  loc_AF186B: FLdPr var_16C
  loc_AF186E:  = Me.Fields
  loc_AF1873: FLdPr var_170
  loc_AF1876: from_stack_2 = Me.Item(from_stack_1)
  loc_AF187B: FLdPr var_184
  loc_AF187E:  = Me.Value
  loc_AF1883: FLdRfVar var_194
  loc_AF1886: ConcatVar var_1A4
  loc_AF188A: LitVarStr var_1B4, "|"
  loc_AF188F: ConcatVar var_1C4
  loc_AF1893: FLdRfVar var_1F0
  loc_AF1896: FLdRfVar var_1E0
  loc_AF1899: LitVarStr var_1DC, "NoleAsie"
  loc_AF189E: PopAdLdVar
  loc_AF189F: FLdRfVar var_1CC
  loc_AF18A2: FLdRfVar var_1C8
  loc_AF18A5: FLdPr Me
  loc_AF18A8: MemLdRfVar from_stack_1.global_72
  loc_AF18AB: NewIfNullPr clsbase
  loc_AF18AE: from_stack_1v = clsbase.RsFrmGet()
  loc_AF18B3: FLdPr var_1C8
  loc_AF18B6:  = Me.Fields
  loc_AF18BB: FLdPr var_1CC
  loc_AF18BE: from_stack_2 = Me.Item(from_stack_1)
  loc_AF18C3: FLdPr var_1E0
  loc_AF18C6:  = Me.Value
  loc_AF18CB: FLdRfVar var_1F0
  loc_AF18CE: ConcatVar var_200
  loc_AF18D2: LitVarStr var_210, "|"
  loc_AF18D7: ConcatVar var_220
  loc_AF18DB: FLdRfVar var_24C
  loc_AF18DE: FLdRfVar var_23C
  loc_AF18E1: LitVarStr var_238, "Aumentos"
  loc_AF18E6: PopAdLdVar
  loc_AF18E7: FLdRfVar var_228
  loc_AF18EA: FLdRfVar var_224
  loc_AF18ED: FLdPr Me
  loc_AF18F0: MemLdRfVar from_stack_1.global_72
  loc_AF18F3: NewIfNullPr clsbase
  loc_AF18F6: from_stack_1v = clsbase.RsFrmGet()
  loc_AF18FB: FLdPr var_224
  loc_AF18FE:  = Me.Fields
  loc_AF1903: FLdPr var_228
  loc_AF1906: from_stack_2 = Me.Item(from_stack_1)
  loc_AF190B: FLdPr var_23C
  loc_AF190E:  = Me.Value
  loc_AF1913: FLdRfVar var_24C
  loc_AF1916: ConcatVar var_25C
  loc_AF191A: LitVarStr var_26C, "|"
  loc_AF191F: ConcatVar var_27C
  loc_AF1923: FLdRfVar var_2A8
  loc_AF1926: FLdRfVar var_298
  loc_AF1929: LitVarStr var_294, "Disminuciones"
  loc_AF192E: PopAdLdVar
  loc_AF192F: FLdRfVar var_284
  loc_AF1932: FLdRfVar var_280
  loc_AF1935: FLdPr Me
  loc_AF1938: MemLdRfVar from_stack_1.global_72
  loc_AF193B: NewIfNullPr clsbase
  loc_AF193E: from_stack_1v = clsbase.RsFrmGet()
  loc_AF1943: FLdPr var_280
  loc_AF1946:  = Me.Fields
  loc_AF194B: FLdPr var_284
  loc_AF194E: from_stack_2 = Me.Item(from_stack_1)
  loc_AF1953: FLdPr var_298
  loc_AF1956:  = Me.Value
  loc_AF195B: FLdRfVar var_2A8
  loc_AF195E: ConcatVar var_2B8
  loc_AF1962: LitVarStr var_2C8, "|"
  loc_AF1967: ConcatVar var_2D8
  loc_AF196B: FLdRfVar var_304
  loc_AF196E: FLdRfVar var_2F4
  loc_AF1971: LitVarStr var_2F0, "definitivo"
  loc_AF1976: PopAdLdVar
  loc_AF1977: FLdRfVar var_2E0
  loc_AF197A: FLdRfVar var_2DC
  loc_AF197D: FLdPr Me
  loc_AF1980: MemLdRfVar from_stack_1.global_72
  loc_AF1983: NewIfNullPr clsbase
  loc_AF1986: from_stack_1v = clsbase.RsFrmGet()
  loc_AF198B: FLdPr var_2DC
  loc_AF198E:  = Me.Fields
  loc_AF1993: FLdPr var_2E0
  loc_AF1996: from_stack_2 = Me.Item(from_stack_1)
  loc_AF199B: FLdPr var_2F4
  loc_AF199E:  = Me.Value
  loc_AF19A3: FLdRfVar var_304
  loc_AF19A6: ConcatVar var_314
  loc_AF19AA: LitVarStr var_324, "|"
  loc_AF19AF: ConcatVar var_334
  loc_AF19B3: FLdRfVar var_360
  loc_AF19B6: FLdRfVar var_350
  loc_AF19B9: LitVarStr var_34C, "ingresado"
  loc_AF19BE: PopAdLdVar
  loc_AF19BF: FLdRfVar var_33C
  loc_AF19C2: FLdRfVar var_338
  loc_AF19C5: FLdPr Me
  loc_AF19C8: MemLdRfVar from_stack_1.global_72
  loc_AF19CB: NewIfNullPr clsbase
  loc_AF19CE: from_stack_1v = clsbase.RsFrmGet()
  loc_AF19D3: FLdPr var_338
  loc_AF19D6:  = Me.Fields
  loc_AF19DB: FLdPr var_33C
  loc_AF19DE: from_stack_2 = Me.Item(from_stack_1)
  loc_AF19E3: FLdPr var_350
  loc_AF19E6:  = Me.Value
  loc_AF19EB: FLdRfVar var_360
  loc_AF19EE: ConcatVar var_370
  loc_AF19F2: LitVarStr var_380, "|"
  loc_AF19F7: ConcatVar var_390
  loc_AF19FB: FLdRfVar var_3BC
  loc_AF19FE: FLdRfVar var_3AC
  loc_AF1A01: LitVarStr var_3A8, "diferencia"
  loc_AF1A06: PopAdLdVar
  loc_AF1A07: FLdRfVar var_398
  loc_AF1A0A: FLdRfVar var_394
  loc_AF1A0D: FLdPr Me
  loc_AF1A10: MemLdRfVar from_stack_1.global_72
  loc_AF1A13: NewIfNullPr clsbase
  loc_AF1A16: from_stack_1v = clsbase.RsFrmGet()
  loc_AF1A1B: FLdPr var_394
  loc_AF1A1E:  = Me.Fields
  loc_AF1A23: FLdPr var_398
  loc_AF1A26: from_stack_2 = Me.Item(from_stack_1)
  loc_AF1A2B: FLdPr var_3AC
  loc_AF1A2E:  = Me.Value
  loc_AF1A33: FLdRfVar var_3BC
  loc_AF1A36: ConcatVar var_3CC
  loc_AF1A3A: LitI4 &HD
  loc_AF1A3F: FLdRfVar var_3DC
  loc_AF1A42: ImpAdCallFPR4  = Chr()
  loc_AF1A47: FLdRfVar var_3DC
  loc_AF1A4A: ConcatVar var_3EC
  loc_AF1A4E: LitI4 &HA
  loc_AF1A53: FLdRfVar var_3FC
  loc_AF1A56: ImpAdCallFPR4  = Chr()
  loc_AF1A5B: FLdRfVar var_3FC
  loc_AF1A5E: ConcatVar var_40C
  loc_AF1A62: PopAdLdVar
  loc_AF1A63: FLdPr Me
  loc_AF1A66: MemLdRfVar from_stack_1.global_80
  loc_AF1A69: LdPrVar
  loc_AF1A6B: LateMemCall
  loc_AF1A71: FFreeStr var_A0 = ""
  loc_AF1A78: FFreeAd var_8C = "": var_A4 = "": var_DC = "": var_F4 = "": var_144 = "": var_158 = "": var_16C = "": var_170 = "": var_184 = "": var_1C8 = "": var_1CC = "": var_1E0 = "": var_224 = "": var_228 = "": var_23C = "": var_280 = "": var_284 = "": var_298 = "": var_2DC = "": var_2E0 = "": var_2F4 = "": var_338 = "": var_33C = "": var_350 = "": var_394 = "": var_398 = ""
  loc_AF1AB1: FFreeVar var_40C = "": var_B8 = "": var_9C = "": var_D8 = "": var_EC = "": var_108 = "": var_128 = "": var_138 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1F0 = "": var_200 = "": var_220 = "": var_24C = "": var_25C = "": var_27C = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_304 = "": var_314 = "": var_334 = "": var_360 = "": var_370 = "": var_390 = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3EC = ""
  loc_AF1AF2: FLdPr Me
  loc_AF1AF5: MemLdRfVar from_stack_1.global_72
  loc_AF1AF8: NewIfNullPr clsbase
  loc_AF1AFB: Call clsbase.MoveSiguiente()
  loc_AF1B00: Branch loc_AF178B
  loc_AF1B03: FLdPr Me
  loc_AF1B06: MemLdRfVar from_stack_1.global_80
  loc_AF1B09: LdPrVar
  loc_AF1B0B: LateMemCall
  loc_AF1B11: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BC301C
  'Data Table: 4C616C
  loc_BC1E88: FLdRfVar var_88
  loc_BC1E8B: LitI2_Byte 0
  loc_BC1E8D: LitI2_Byte &HFF
  loc_BC1E8F: ImpAdLdI4 MemVar_C3D83C
  loc_BC1E92: FLdPr Me
  loc_BC1E95: MemLdRfVar from_stack_1.global_76
  loc_BC1E98: NewIfNullPr IFileSystem3
  loc_BC1E9B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BC1EA0: ILdRf var_88
  loc_BC1EA3: FLdPr Me
  loc_BC1EA6: MemStVarAd
  loc_BC1EAA: FFree1Ad var_88
  loc_BC1EAD: Call Proc_148_39_ADD978()
  loc_BC1EB2: LitStr "Municipalidad de Guaymallén"
  loc_BC1EB5: LitStr "Municipalidad de Guaymallén"
  loc_BC1EB8: EqStr
  loc_BC1EBA: BranchF loc_BC2070
  loc_BC1EBD: LitVarStr var_98, " <tr class=""Totales"">"
  loc_BC1EC2: PopAdLdVar
  loc_BC1EC3: FLdPr Me
  loc_BC1EC6: MemLdRfVar from_stack_1.htmFile
  loc_BC1EC9: LdPrVar
  loc_BC1ECB: LateMemCall
  loc_BC1ED1: LitI4 0
  loc_BC1ED6: LitI4 0
  loc_BC1EDB: LitI2_Byte 0
  loc_BC1EDD: LitStr "right"
  loc_BC1EE0: LitStr "Totales"
  loc_BC1EE3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC1EE8: CVarStr var_B8
  loc_BC1EEB: PopAdLdVar
  loc_BC1EEC: FLdPr Me
  loc_BC1EEF: MemLdRfVar from_stack_1.htmFile
  loc_BC1EF2: LdPrVar
  loc_BC1EF4: LateMemCall
  loc_BC1EFA: FFree1Var var_B8 = ""
  loc_BC1EFD: LitI4 1
  loc_BC1F02: FLdPr Me
  loc_BC1F05: MemLdStr global_100
  loc_BC1F08: AryLock
  loc_BC1F0B: Ary1LdRf
  loc_BC1F0C: FStR4 var_C0
  loc_BC1F0F: LitI4 0
  loc_BC1F14: LitI4 0
  loc_BC1F19: LitI2_Byte &HFF
  loc_BC1F1B: LitStr "right"
  loc_BC1F1E: FMemLdR4 var_C0(8)
  loc_BC1F23: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC1F28: CVarStr var_B8
  loc_BC1F2B: PopAdLdVar
  loc_BC1F2C: FLdPr Me
  loc_BC1F2F: MemLdRfVar from_stack_1.htmFile
  loc_BC1F32: LdPrVar
  loc_BC1F34: LateMemCall
  loc_BC1F3A: FFree1Var var_B8 = ""
  loc_BC1F3D: LitI4 0
  loc_BC1F42: LitI4 0
  loc_BC1F47: LitI2_Byte 0
  loc_BC1F49: LitI4 0
  loc_BC1F4E: LitStr vbNullString
  loc_BC1F51: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC1F56: CVarStr var_B8
  loc_BC1F59: PopAdLdVar
  loc_BC1F5A: FLdPr Me
  loc_BC1F5D: MemLdRfVar from_stack_1.htmFile
  loc_BC1F60: LdPrVar
  loc_BC1F62: LateMemCall
  loc_BC1F68: FFree1Var var_B8 = ""
  loc_BC1F6B: LitI4 0
  loc_BC1F70: LitI4 0
  loc_BC1F75: LitI2_Byte &HFF
  loc_BC1F77: LitStr "right"
  loc_BC1F7A: FMemLdR4 var_C0(16)
  loc_BC1F7F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC1F84: CVarStr var_B8
  loc_BC1F87: PopAdLdVar
  loc_BC1F88: FLdPr Me
  loc_BC1F8B: MemLdRfVar from_stack_1.htmFile
  loc_BC1F8E: LdPrVar
  loc_BC1F90: LateMemCall
  loc_BC1F96: FFree1Var var_B8 = ""
  loc_BC1F99: LitI4 0
  loc_BC1F9E: LitI4 0
  loc_BC1FA3: LitI2_Byte &HFF
  loc_BC1FA5: LitStr "right"
  loc_BC1FA8: FMemLdR4 var_C0(20)
  loc_BC1FAD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC1FB2: CVarStr var_B8
  loc_BC1FB5: PopAdLdVar
  loc_BC1FB6: FLdPr Me
  loc_BC1FB9: MemLdRfVar from_stack_1.htmFile
  loc_BC1FBC: LdPrVar
  loc_BC1FBE: LateMemCall
  loc_BC1FC4: FFree1Var var_B8 = ""
  loc_BC1FC7: LitI4 0
  loc_BC1FCC: LitI4 0
  loc_BC1FD1: LitI2_Byte &HFF
  loc_BC1FD3: LitStr "right"
  loc_BC1FD6: FMemLdR4 var_C0(24)
  loc_BC1FDB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC1FE0: CVarStr var_B8
  loc_BC1FE3: PopAdLdVar
  loc_BC1FE4: FLdPr Me
  loc_BC1FE7: MemLdRfVar from_stack_1.htmFile
  loc_BC1FEA: LdPrVar
  loc_BC1FEC: LateMemCall
  loc_BC1FF2: FFree1Var var_B8 = ""
  loc_BC1FF5: LitI4 0
  loc_BC1FFA: LitI4 0
  loc_BC1FFF: LitI2_Byte &HFF
  loc_BC2001: LitStr "right"
  loc_BC2004: FMemLdR4 var_C0(28)
  loc_BC2009: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC200E: CVarStr var_B8
  loc_BC2011: PopAdLdVar
  loc_BC2012: FLdPr Me
  loc_BC2015: MemLdRfVar from_stack_1.htmFile
  loc_BC2018: LdPrVar
  loc_BC201A: LateMemCall
  loc_BC2020: FFree1Var var_B8 = ""
  loc_BC2023: LitI4 0
  loc_BC2028: LitI4 0
  loc_BC202D: LitI2_Byte &HFF
  loc_BC202F: LitStr "right"
  loc_BC2032: FMemLdR4 var_C0(32)
  loc_BC2037: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC203C: CVarStr var_B8
  loc_BC203F: PopAdLdVar
  loc_BC2040: FLdPr Me
  loc_BC2043: MemLdRfVar from_stack_1.htmFile
  loc_BC2046: LdPrVar
  loc_BC2048: LateMemCall
  loc_BC204E: FFree1Var var_B8 = ""
  loc_BC2051: LitI4 0
  loc_BC2056: FStR4 var_C0
  loc_BC2059: AryUnlock
  loc_BC205C: LitVarStr var_98, "     </tr>"
  loc_BC2061: PopAdLdVar
  loc_BC2062: FLdPr Me
  loc_BC2065: MemLdRfVar from_stack_1.htmFile
  loc_BC2068: LdPrVar
  loc_BC206A: LateMemCall
  loc_BC2070: LitI2_Byte 1
  loc_BC2072: FLdPr Me
  loc_BC2075: MemLdRfVar from_stack_1.global_106
  loc_BC2078: FLdPr Me
  loc_BC207B: MemLdStr global_96
  loc_BC207E: LitI2_Byte 1
  loc_BC2080: FnUBound
  loc_BC2082: CI2I4
  loc_BC2083: ForI2 var_C4
  loc_BC2089: LitVarStr var_98, "  <tr align=""left"" class=""Totales"">"
  loc_BC208E: PopAdLdVar
  loc_BC208F: FLdPr Me
  loc_BC2092: MemLdRfVar from_stack_1.htmFile
  loc_BC2095: LdPrVar
  loc_BC2097: LateMemCall
  loc_BC209D: FLdPr Me
  loc_BC20A0: MemLdI2 global_106
  loc_BC20A3: CI4UI1
  loc_BC20A4: FLdPr Me
  loc_BC20A7: MemLdStr global_96
  loc_BC20AA: AryLock
  loc_BC20AD: Ary1LdRf
  loc_BC20AE: FStR4 var_CC
  loc_BC20B1: LitStr "     <td class=""Encabezado"" align=""left"">"
  loc_BC20B4: FMemLdR4 var_CC(4)
  loc_BC20B9: ConcatStr
  loc_BC20BA: FStStrNoPop var_D0
  loc_BC20BD: LitStr "</td>"
  loc_BC20C0: ConcatStr
  loc_BC20C1: CVarStr var_B8
  loc_BC20C4: PopAdLdVar
  loc_BC20C5: FLdPr Me
  loc_BC20C8: MemLdRfVar from_stack_1.htmFile
  loc_BC20CB: LdPrVar
  loc_BC20CD: LateMemCall
  loc_BC20D3: FFree1Str var_D0
  loc_BC20D6: FFree1Var var_B8 = ""
  loc_BC20D9: LitI4 0
  loc_BC20DE: LitI4 0
  loc_BC20E3: LitI2_Byte 0
  loc_BC20E5: LitStr "right"
  loc_BC20E8: FMemLdR4 var_CC(20)
  loc_BC20ED: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC20F2: CVarStr var_B8
  loc_BC20F5: PopAdLdVar
  loc_BC20F6: FLdPr Me
  loc_BC20F9: MemLdRfVar from_stack_1.htmFile
  loc_BC20FC: LdPrVar
  loc_BC20FE: LateMemCall
  loc_BC2104: FFree1Var var_B8 = ""
  loc_BC2107: LitI4 0
  loc_BC210C: LitI4 0
  loc_BC2111: LitI2_Byte 0
  loc_BC2113: LitI4 0
  loc_BC2118: LitStr vbNullString
  loc_BC211B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2120: CVarStr var_B8
  loc_BC2123: PopAdLdVar
  loc_BC2124: FLdPr Me
  loc_BC2127: MemLdRfVar from_stack_1.htmFile
  loc_BC212A: LdPrVar
  loc_BC212C: LateMemCall
  loc_BC2132: FFree1Var var_B8 = ""
  loc_BC2135: LitI4 0
  loc_BC213A: LitI4 0
  loc_BC213F: LitI2_Byte 0
  loc_BC2141: LitStr "right"
  loc_BC2144: FMemLdR4 var_CC(28)
  loc_BC2149: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC214E: CVarStr var_B8
  loc_BC2151: PopAdLdVar
  loc_BC2152: FLdPr Me
  loc_BC2155: MemLdRfVar from_stack_1.htmFile
  loc_BC2158: LdPrVar
  loc_BC215A: LateMemCall
  loc_BC2160: FFree1Var var_B8 = ""
  loc_BC2163: LitI4 0
  loc_BC2168: LitI4 0
  loc_BC216D: LitI2_Byte 0
  loc_BC216F: LitStr "right"
  loc_BC2172: FMemLdR4 var_CC(32)
  loc_BC2177: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC217C: CVarStr var_B8
  loc_BC217F: PopAdLdVar
  loc_BC2180: FLdPr Me
  loc_BC2183: MemLdRfVar from_stack_1.htmFile
  loc_BC2186: LdPrVar
  loc_BC2188: LateMemCall
  loc_BC218E: FFree1Var var_B8 = ""
  loc_BC2191: LitI4 0
  loc_BC2196: LitI4 0
  loc_BC219B: LitI2_Byte 0
  loc_BC219D: LitStr "right"
  loc_BC21A0: FMemLdR4 var_CC(36)
  loc_BC21A5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC21AA: CVarStr var_B8
  loc_BC21AD: PopAdLdVar
  loc_BC21AE: FLdPr Me
  loc_BC21B1: MemLdRfVar from_stack_1.htmFile
  loc_BC21B4: LdPrVar
  loc_BC21B6: LateMemCall
  loc_BC21BC: FFree1Var var_B8 = ""
  loc_BC21BF: LitI4 0
  loc_BC21C4: LitI4 0
  loc_BC21C9: LitI2_Byte 0
  loc_BC21CB: LitStr "right"
  loc_BC21CE: FMemLdR4 var_CC(40)
  loc_BC21D3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC21D8: CVarStr var_B8
  loc_BC21DB: PopAdLdVar
  loc_BC21DC: FLdPr Me
  loc_BC21DF: MemLdRfVar from_stack_1.htmFile
  loc_BC21E2: LdPrVar
  loc_BC21E4: LateMemCall
  loc_BC21EA: FFree1Var var_B8 = ""
  loc_BC21ED: LitI4 0
  loc_BC21F2: LitI4 0
  loc_BC21F7: LitI2_Byte 0
  loc_BC21F9: LitStr "right"
  loc_BC21FC: FMemLdR4 var_CC(44)
  loc_BC2201: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2206: CVarStr var_B8
  loc_BC2209: PopAdLdVar
  loc_BC220A: FLdPr Me
  loc_BC220D: MemLdRfVar from_stack_1.htmFile
  loc_BC2210: LdPrVar
  loc_BC2212: LateMemCall
  loc_BC2218: FFree1Var var_B8 = ""
  loc_BC221B: LitI4 0
  loc_BC2220: FStR4 var_CC
  loc_BC2223: AryUnlock
  loc_BC2226: LitVarStr var_98, "     </tr>"
  loc_BC222B: PopAdLdVar
  loc_BC222C: FLdPr Me
  loc_BC222F: MemLdRfVar from_stack_1.htmFile
  loc_BC2232: LdPrVar
  loc_BC2234: LateMemCall
  loc_BC223A: LitI2_Byte 1
  loc_BC223C: FLdPr Me
  loc_BC223F: MemLdRfVar from_stack_1.global_108
  loc_BC2242: FLdPr Me
  loc_BC2245: MemLdI2 global_106
  loc_BC2248: CI4UI1
  loc_BC2249: FLdPr Me
  loc_BC224C: MemLdStr global_96
  loc_BC224F: Ary1LdPr
  loc_BC2250: MemLdStr global_8
  loc_BC2253: LitI2_Byte 1
  loc_BC2255: FnUBound
  loc_BC2257: CI2I4
  loc_BC2258: ForI2 var_D4
  loc_BC225E: LitVarStr var_98, "  <tr align=""left"" class=""Totales"">"
  loc_BC2263: PopAdLdVar
  loc_BC2264: FLdPr Me
  loc_BC2267: MemLdRfVar from_stack_1.htmFile
  loc_BC226A: LdPrVar
  loc_BC226C: LateMemCall
  loc_BC2272: FLdPr Me
  loc_BC2275: MemLdI2 global_108
  loc_BC2278: CI4UI1
  loc_BC2279: FLdPr Me
  loc_BC227C: MemLdI2 global_106
  loc_BC227F: CI4UI1
  loc_BC2280: FLdPr Me
  loc_BC2283: MemLdStr global_96
  loc_BC2286: AryLock
  loc_BC2289: Ary1LdPr
  loc_BC228A: MemLdStr global_8
  loc_BC228D: AryLock
  loc_BC2290: Ary1LdRf
  loc_BC2291: FStR4 var_E0
  loc_BC2294: LitStr "     <td class=""Encabezado"" align=""left"">"
  loc_BC2297: LitStr "&nbsp;&nbsp;"
  loc_BC229A: ConcatStr
  loc_BC229B: FStStrNoPop var_D0
  loc_BC229E: FMemLdR4 var_E0(4)
  loc_BC22A3: ConcatStr
  loc_BC22A4: FStStrNoPop var_E4
  loc_BC22A7: LitStr "</td>"
  loc_BC22AA: ConcatStr
  loc_BC22AB: CVarStr var_B8
  loc_BC22AE: PopAdLdVar
  loc_BC22AF: FLdPr Me
  loc_BC22B2: MemLdRfVar from_stack_1.htmFile
  loc_BC22B5: LdPrVar
  loc_BC22B7: LateMemCall
  loc_BC22BD: FFreeStr var_D0 = ""
  loc_BC22C4: FFree1Var var_B8 = ""
  loc_BC22C7: LitI4 0
  loc_BC22CC: LitI4 0
  loc_BC22D1: LitI2_Byte 0
  loc_BC22D3: LitStr "right"
  loc_BC22D6: FMemLdR4 var_E0(20)
  loc_BC22DB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC22E0: CVarStr var_B8
  loc_BC22E3: PopAdLdVar
  loc_BC22E4: FLdPr Me
  loc_BC22E7: MemLdRfVar from_stack_1.htmFile
  loc_BC22EA: LdPrVar
  loc_BC22EC: LateMemCall
  loc_BC22F2: FFree1Var var_B8 = ""
  loc_BC22F5: LitI4 0
  loc_BC22FA: LitI4 0
  loc_BC22FF: LitI2_Byte 0
  loc_BC2301: LitI4 0
  loc_BC2306: LitStr vbNullString
  loc_BC2309: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC230E: CVarStr var_B8
  loc_BC2311: PopAdLdVar
  loc_BC2312: FLdPr Me
  loc_BC2315: MemLdRfVar from_stack_1.htmFile
  loc_BC2318: LdPrVar
  loc_BC231A: LateMemCall
  loc_BC2320: FFree1Var var_B8 = ""
  loc_BC2323: LitI4 0
  loc_BC2328: LitI4 0
  loc_BC232D: LitI2_Byte 0
  loc_BC232F: LitStr "right"
  loc_BC2332: FMemLdR4 var_E0(28)
  loc_BC2337: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC233C: CVarStr var_B8
  loc_BC233F: PopAdLdVar
  loc_BC2340: FLdPr Me
  loc_BC2343: MemLdRfVar from_stack_1.htmFile
  loc_BC2346: LdPrVar
  loc_BC2348: LateMemCall
  loc_BC234E: FFree1Var var_B8 = ""
  loc_BC2351: LitI4 0
  loc_BC2356: LitI4 0
  loc_BC235B: LitI2_Byte 0
  loc_BC235D: LitStr "right"
  loc_BC2360: FMemLdR4 var_E0(32)
  loc_BC2365: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC236A: CVarStr var_B8
  loc_BC236D: PopAdLdVar
  loc_BC236E: FLdPr Me
  loc_BC2371: MemLdRfVar from_stack_1.htmFile
  loc_BC2374: LdPrVar
  loc_BC2376: LateMemCall
  loc_BC237C: FFree1Var var_B8 = ""
  loc_BC237F: LitI4 0
  loc_BC2384: LitI4 0
  loc_BC2389: LitI2_Byte 0
  loc_BC238B: LitStr "right"
  loc_BC238E: FMemLdR4 var_E0(36)
  loc_BC2393: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2398: CVarStr var_B8
  loc_BC239B: PopAdLdVar
  loc_BC239C: FLdPr Me
  loc_BC239F: MemLdRfVar from_stack_1.htmFile
  loc_BC23A2: LdPrVar
  loc_BC23A4: LateMemCall
  loc_BC23AA: FFree1Var var_B8 = ""
  loc_BC23AD: LitI4 0
  loc_BC23B2: LitI4 0
  loc_BC23B7: LitI2_Byte 0
  loc_BC23B9: LitStr "right"
  loc_BC23BC: FMemLdR4 var_E0(40)
  loc_BC23C1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC23C6: CVarStr var_B8
  loc_BC23C9: PopAdLdVar
  loc_BC23CA: FLdPr Me
  loc_BC23CD: MemLdRfVar from_stack_1.htmFile
  loc_BC23D0: LdPrVar
  loc_BC23D2: LateMemCall
  loc_BC23D8: FFree1Var var_B8 = ""
  loc_BC23DB: LitI4 0
  loc_BC23E0: LitI4 0
  loc_BC23E5: LitI2_Byte 0
  loc_BC23E7: LitStr "right"
  loc_BC23EA: FMemLdR4 var_E0(44)
  loc_BC23EF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC23F4: CVarStr var_B8
  loc_BC23F7: PopAdLdVar
  loc_BC23F8: FLdPr Me
  loc_BC23FB: MemLdRfVar from_stack_1.htmFile
  loc_BC23FE: LdPrVar
  loc_BC2400: LateMemCall
  loc_BC2406: FFree1Var var_B8 = ""
  loc_BC2409: LitI4 0
  loc_BC240E: FStR4 var_E0
  loc_BC2411: AryUnlock
  loc_BC2414: AryUnlock
  loc_BC2417: LitVarStr var_98, "     </tr>"
  loc_BC241C: PopAdLdVar
  loc_BC241D: FLdPr Me
  loc_BC2420: MemLdRfVar from_stack_1.htmFile
  loc_BC2423: LdPrVar
  loc_BC2425: LateMemCall
  loc_BC242B: LitI2_Byte 1
  loc_BC242D: FLdPr Me
  loc_BC2430: MemLdRfVar from_stack_1.global_110
  loc_BC2433: FLdPr Me
  loc_BC2436: MemLdI2 global_108
  loc_BC2439: CI4UI1
  loc_BC243A: FLdPr Me
  loc_BC243D: MemLdI2 global_106
  loc_BC2440: CI4UI1
  loc_BC2441: FLdPr Me
  loc_BC2444: MemLdStr global_96
  loc_BC2447: Ary1LdPr
  loc_BC2448: MemLdStr global_8
  loc_BC244B: Ary1LdPr
  loc_BC244C: MemLdStr global_8
  loc_BC244F: LitI2_Byte 1
  loc_BC2451: FnUBound
  loc_BC2453: CI2I4
  loc_BC2454: ForI2 var_E8
  loc_BC245A: LitVarStr var_98, "  <tr align=""left"" class=""Totales"">"
  loc_BC245F: PopAdLdVar
  loc_BC2460: FLdPr Me
  loc_BC2463: MemLdRfVar from_stack_1.htmFile
  loc_BC2466: LdPrVar
  loc_BC2468: LateMemCall
  loc_BC246E: FLdPr Me
  loc_BC2471: MemLdI2 global_110
  loc_BC2474: CI4UI1
  loc_BC2475: FLdPr Me
  loc_BC2478: MemLdI2 global_108
  loc_BC247B: CI4UI1
  loc_BC247C: FLdPr Me
  loc_BC247F: MemLdI2 global_106
  loc_BC2482: CI4UI1
  loc_BC2483: FLdPr Me
  loc_BC2486: MemLdStr global_96
  loc_BC2489: AryLock
  loc_BC248C: Ary1LdPr
  loc_BC248D: MemLdStr global_8
  loc_BC2490: AryLock
  loc_BC2493: Ary1LdPr
  loc_BC2494: MemLdStr global_8
  loc_BC2497: AryLock
  loc_BC249A: Ary1LdRf
  loc_BC249B: FStR4 var_F8
  loc_BC249E: LitStr "     <td class=""Encabezado"" align=""left"">"
  loc_BC24A1: LitStr "&nbsp;&nbsp;&nbsp;"
  loc_BC24A4: ConcatStr
  loc_BC24A5: FStStrNoPop var_D0
  loc_BC24A8: FMemLdR4 var_F8(4)
  loc_BC24AD: ConcatStr
  loc_BC24AE: FStStrNoPop var_E4
  loc_BC24B1: LitStr "</td>"
  loc_BC24B4: ConcatStr
  loc_BC24B5: CVarStr var_B8
  loc_BC24B8: PopAdLdVar
  loc_BC24B9: FLdPr Me
  loc_BC24BC: MemLdRfVar from_stack_1.htmFile
  loc_BC24BF: LdPrVar
  loc_BC24C1: LateMemCall
  loc_BC24C7: FFreeStr var_D0 = ""
  loc_BC24CE: FFree1Var var_B8 = ""
  loc_BC24D1: LitI4 0
  loc_BC24D6: LitI4 0
  loc_BC24DB: LitI2_Byte 0
  loc_BC24DD: LitStr "right"
  loc_BC24E0: FMemLdR4 var_F8(20)
  loc_BC24E5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC24EA: CVarStr var_B8
  loc_BC24ED: PopAdLdVar
  loc_BC24EE: FLdPr Me
  loc_BC24F1: MemLdRfVar from_stack_1.htmFile
  loc_BC24F4: LdPrVar
  loc_BC24F6: LateMemCall
  loc_BC24FC: FFree1Var var_B8 = ""
  loc_BC24FF: LitI4 0
  loc_BC2504: LitI4 0
  loc_BC2509: LitI2_Byte 0
  loc_BC250B: LitI4 0
  loc_BC2510: LitStr vbNullString
  loc_BC2513: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2518: CVarStr var_B8
  loc_BC251B: PopAdLdVar
  loc_BC251C: FLdPr Me
  loc_BC251F: MemLdRfVar from_stack_1.htmFile
  loc_BC2522: LdPrVar
  loc_BC2524: LateMemCall
  loc_BC252A: FFree1Var var_B8 = ""
  loc_BC252D: LitI4 0
  loc_BC2532: LitI4 0
  loc_BC2537: LitI2_Byte 0
  loc_BC2539: LitStr "right"
  loc_BC253C: FMemLdR4 var_F8(28)
  loc_BC2541: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2546: CVarStr var_B8
  loc_BC2549: PopAdLdVar
  loc_BC254A: FLdPr Me
  loc_BC254D: MemLdRfVar from_stack_1.htmFile
  loc_BC2550: LdPrVar
  loc_BC2552: LateMemCall
  loc_BC2558: FFree1Var var_B8 = ""
  loc_BC255B: LitI4 0
  loc_BC2560: LitI4 0
  loc_BC2565: LitI2_Byte 0
  loc_BC2567: LitStr "right"
  loc_BC256A: FMemLdR4 var_F8(32)
  loc_BC256F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2574: CVarStr var_B8
  loc_BC2577: PopAdLdVar
  loc_BC2578: FLdPr Me
  loc_BC257B: MemLdRfVar from_stack_1.htmFile
  loc_BC257E: LdPrVar
  loc_BC2580: LateMemCall
  loc_BC2586: FFree1Var var_B8 = ""
  loc_BC2589: LitI4 0
  loc_BC258E: LitI4 0
  loc_BC2593: LitI2_Byte 0
  loc_BC2595: LitStr "right"
  loc_BC2598: FMemLdR4 var_F8(36)
  loc_BC259D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC25A2: CVarStr var_B8
  loc_BC25A5: PopAdLdVar
  loc_BC25A6: FLdPr Me
  loc_BC25A9: MemLdRfVar from_stack_1.htmFile
  loc_BC25AC: LdPrVar
  loc_BC25AE: LateMemCall
  loc_BC25B4: FFree1Var var_B8 = ""
  loc_BC25B7: LitI4 0
  loc_BC25BC: LitI4 0
  loc_BC25C1: LitI2_Byte 0
  loc_BC25C3: LitStr "right"
  loc_BC25C6: FMemLdR4 var_F8(40)
  loc_BC25CB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC25D0: CVarStr var_B8
  loc_BC25D3: PopAdLdVar
  loc_BC25D4: FLdPr Me
  loc_BC25D7: MemLdRfVar from_stack_1.htmFile
  loc_BC25DA: LdPrVar
  loc_BC25DC: LateMemCall
  loc_BC25E2: FFree1Var var_B8 = ""
  loc_BC25E5: LitI4 0
  loc_BC25EA: LitI4 0
  loc_BC25EF: LitI2_Byte 0
  loc_BC25F1: LitStr "right"
  loc_BC25F4: FMemLdR4 var_F8(44)
  loc_BC25F9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC25FE: CVarStr var_B8
  loc_BC2601: PopAdLdVar
  loc_BC2602: FLdPr Me
  loc_BC2605: MemLdRfVar from_stack_1.htmFile
  loc_BC2608: LdPrVar
  loc_BC260A: LateMemCall
  loc_BC2610: FFree1Var var_B8 = ""
  loc_BC2613: LitI4 0
  loc_BC2618: FStR4 var_F8
  loc_BC261B: AryUnlock
  loc_BC261E: AryUnlock
  loc_BC2621: AryUnlock
  loc_BC2624: LitVarStr var_98, "     </tr>"
  loc_BC2629: PopAdLdVar
  loc_BC262A: FLdPr Me
  loc_BC262D: MemLdRfVar from_stack_1.htmFile
  loc_BC2630: LdPrVar
  loc_BC2632: LateMemCall
  loc_BC2638: LitI2_Byte 1
  loc_BC263A: FLdPr Me
  loc_BC263D: MemLdRfVar from_stack_1.global_112
  loc_BC2640: FLdPr Me
  loc_BC2643: MemLdI2 global_110
  loc_BC2646: CI4UI1
  loc_BC2647: FLdPr Me
  loc_BC264A: MemLdI2 global_108
  loc_BC264D: CI4UI1
  loc_BC264E: FLdPr Me
  loc_BC2651: MemLdI2 global_106
  loc_BC2654: CI4UI1
  loc_BC2655: FLdPr Me
  loc_BC2658: MemLdStr global_96
  loc_BC265B: Ary1LdPr
  loc_BC265C: MemLdStr global_8
  loc_BC265F: Ary1LdPr
  loc_BC2660: MemLdStr global_8
  loc_BC2663: Ary1LdPr
  loc_BC2664: MemLdStr global_8
  loc_BC2667: LitI2_Byte 1
  loc_BC2669: FnUBound
  loc_BC266B: CI2I4
  loc_BC266C: ForI2 var_FC
  loc_BC2672: LitVarStr var_98, "  <tr align=""left"" class=""Totales"">"
  loc_BC2677: PopAdLdVar
  loc_BC2678: FLdPr Me
  loc_BC267B: MemLdRfVar from_stack_1.htmFile
  loc_BC267E: LdPrVar
  loc_BC2680: LateMemCall
  loc_BC2686: FLdPr Me
  loc_BC2689: MemLdI2 global_112
  loc_BC268C: CI4UI1
  loc_BC268D: FLdPr Me
  loc_BC2690: MemLdI2 global_110
  loc_BC2693: CI4UI1
  loc_BC2694: FLdPr Me
  loc_BC2697: MemLdI2 global_108
  loc_BC269A: CI4UI1
  loc_BC269B: FLdPr Me
  loc_BC269E: MemLdI2 global_106
  loc_BC26A1: CI4UI1
  loc_BC26A2: FLdPr Me
  loc_BC26A5: MemLdStr global_96
  loc_BC26A8: AryLock
  loc_BC26AB: Ary1LdPr
  loc_BC26AC: MemLdStr global_8
  loc_BC26AF: AryLock
  loc_BC26B2: Ary1LdPr
  loc_BC26B3: MemLdStr global_8
  loc_BC26B6: AryLock
  loc_BC26B9: Ary1LdPr
  loc_BC26BA: MemLdStr global_8
  loc_BC26BD: AryLock
  loc_BC26C0: Ary1LdRf
  loc_BC26C1: FStR4 var_110
  loc_BC26C4: LitStr "     <td class=""Encabezado"" align=""left"">"
  loc_BC26C7: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_BC26CA: ConcatStr
  loc_BC26CB: FStStrNoPop var_D0
  loc_BC26CE: FMemLdR4 var_110(4)
  loc_BC26D3: ConcatStr
  loc_BC26D4: FStStrNoPop var_E4
  loc_BC26D7: LitStr "</td>"
  loc_BC26DA: ConcatStr
  loc_BC26DB: CVarStr var_B8
  loc_BC26DE: PopAdLdVar
  loc_BC26DF: FLdPr Me
  loc_BC26E2: MemLdRfVar from_stack_1.htmFile
  loc_BC26E5: LdPrVar
  loc_BC26E7: LateMemCall
  loc_BC26ED: FFreeStr var_D0 = ""
  loc_BC26F4: FFree1Var var_B8 = ""
  loc_BC26F7: LitI4 0
  loc_BC26FC: LitI4 0
  loc_BC2701: LitI2_Byte 0
  loc_BC2703: LitStr "right"
  loc_BC2706: FMemLdR4 var_110(20)
  loc_BC270B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2710: CVarStr var_B8
  loc_BC2713: PopAdLdVar
  loc_BC2714: FLdPr Me
  loc_BC2717: MemLdRfVar from_stack_1.htmFile
  loc_BC271A: LdPrVar
  loc_BC271C: LateMemCall
  loc_BC2722: FFree1Var var_B8 = ""
  loc_BC2725: LitI4 0
  loc_BC272A: LitI4 0
  loc_BC272F: LitI2_Byte 0
  loc_BC2731: LitI4 0
  loc_BC2736: LitStr vbNullString
  loc_BC2739: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC273E: CVarStr var_B8
  loc_BC2741: PopAdLdVar
  loc_BC2742: FLdPr Me
  loc_BC2745: MemLdRfVar from_stack_1.htmFile
  loc_BC2748: LdPrVar
  loc_BC274A: LateMemCall
  loc_BC2750: FFree1Var var_B8 = ""
  loc_BC2753: LitI4 0
  loc_BC2758: LitI4 0
  loc_BC275D: LitI2_Byte 0
  loc_BC275F: LitStr "right"
  loc_BC2762: FMemLdR4 var_110(28)
  loc_BC2767: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC276C: CVarStr var_B8
  loc_BC276F: PopAdLdVar
  loc_BC2770: FLdPr Me
  loc_BC2773: MemLdRfVar from_stack_1.htmFile
  loc_BC2776: LdPrVar
  loc_BC2778: LateMemCall
  loc_BC277E: FFree1Var var_B8 = ""
  loc_BC2781: LitI4 0
  loc_BC2786: LitI4 0
  loc_BC278B: LitI2_Byte 0
  loc_BC278D: LitStr "right"
  loc_BC2790: FMemLdR4 var_110(32)
  loc_BC2795: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC279A: CVarStr var_B8
  loc_BC279D: PopAdLdVar
  loc_BC279E: FLdPr Me
  loc_BC27A1: MemLdRfVar from_stack_1.htmFile
  loc_BC27A4: LdPrVar
  loc_BC27A6: LateMemCall
  loc_BC27AC: FFree1Var var_B8 = ""
  loc_BC27AF: LitI4 0
  loc_BC27B4: LitI4 0
  loc_BC27B9: LitI2_Byte 0
  loc_BC27BB: LitStr "right"
  loc_BC27BE: FMemLdR4 var_110(36)
  loc_BC27C3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC27C8: CVarStr var_B8
  loc_BC27CB: PopAdLdVar
  loc_BC27CC: FLdPr Me
  loc_BC27CF: MemLdRfVar from_stack_1.htmFile
  loc_BC27D2: LdPrVar
  loc_BC27D4: LateMemCall
  loc_BC27DA: FFree1Var var_B8 = ""
  loc_BC27DD: LitI4 0
  loc_BC27E2: LitI4 0
  loc_BC27E7: LitI2_Byte 0
  loc_BC27E9: LitStr "right"
  loc_BC27EC: FMemLdR4 var_110(40)
  loc_BC27F1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC27F6: CVarStr var_B8
  loc_BC27F9: PopAdLdVar
  loc_BC27FA: FLdPr Me
  loc_BC27FD: MemLdRfVar from_stack_1.htmFile
  loc_BC2800: LdPrVar
  loc_BC2802: LateMemCall
  loc_BC2808: FFree1Var var_B8 = ""
  loc_BC280B: LitI4 0
  loc_BC2810: LitI4 0
  loc_BC2815: LitI2_Byte 0
  loc_BC2817: LitStr "right"
  loc_BC281A: FMemLdR4 var_110(44)
  loc_BC281F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2824: CVarStr var_B8
  loc_BC2827: PopAdLdVar
  loc_BC2828: FLdPr Me
  loc_BC282B: MemLdRfVar from_stack_1.htmFile
  loc_BC282E: LdPrVar
  loc_BC2830: LateMemCall
  loc_BC2836: FFree1Var var_B8 = ""
  loc_BC2839: LitI4 0
  loc_BC283E: FStR4 var_110
  loc_BC2841: AryUnlock
  loc_BC2844: AryUnlock
  loc_BC2847: AryUnlock
  loc_BC284A: AryUnlock
  loc_BC284D: LitVarStr var_98, "     </tr>"
  loc_BC2852: PopAdLdVar
  loc_BC2853: FLdPr Me
  loc_BC2856: MemLdRfVar from_stack_1.htmFile
  loc_BC2859: LdPrVar
  loc_BC285B: LateMemCall
  loc_BC2861: LitI2_Byte 1
  loc_BC2863: FLdPr Me
  loc_BC2866: MemLdRfVar from_stack_1.global_104
  loc_BC2869: FLdPr Me
  loc_BC286C: MemLdI2 global_112
  loc_BC286F: CI4UI1
  loc_BC2870: FLdPr Me
  loc_BC2873: MemLdI2 global_110
  loc_BC2876: CI4UI1
  loc_BC2877: FLdPr Me
  loc_BC287A: MemLdI2 global_108
  loc_BC287D: CI4UI1
  loc_BC287E: FLdPr Me
  loc_BC2881: MemLdI2 global_106
  loc_BC2884: CI4UI1
  loc_BC2885: FLdPr Me
  loc_BC2888: MemLdStr global_96
  loc_BC288B: Ary1LdPr
  loc_BC288C: MemLdStr global_8
  loc_BC288F: Ary1LdPr
  loc_BC2890: MemLdStr global_8
  loc_BC2893: Ary1LdPr
  loc_BC2894: MemLdStr global_8
  loc_BC2897: Ary1LdPr
  loc_BC2898: MemLdStr global_8
  loc_BC289B: LitI2_Byte 1
  loc_BC289D: FnUBound
  loc_BC289F: CI2I4
  loc_BC28A0: ForI2 var_114
  loc_BC28A6: FLdPr Me
  loc_BC28A9: MemLdI2 global_104
  loc_BC28AC: CI4UI1
  loc_BC28AD: FLdPr Me
  loc_BC28B0: MemLdI2 global_112
  loc_BC28B3: CI4UI1
  loc_BC28B4: FLdPr Me
  loc_BC28B7: MemLdI2 global_110
  loc_BC28BA: CI4UI1
  loc_BC28BB: FLdPr Me
  loc_BC28BE: MemLdI2 global_108
  loc_BC28C1: CI4UI1
  loc_BC28C2: FLdPr Me
  loc_BC28C5: MemLdI2 global_106
  loc_BC28C8: CI4UI1
  loc_BC28C9: FLdPr Me
  loc_BC28CC: MemLdStr global_96
  loc_BC28CF: AryLock
  loc_BC28D2: Ary1LdPr
  loc_BC28D3: MemLdStr global_8
  loc_BC28D6: AryLock
  loc_BC28D9: Ary1LdPr
  loc_BC28DA: MemLdStr global_8
  loc_BC28DD: AryLock
  loc_BC28E0: Ary1LdPr
  loc_BC28E1: MemLdStr global_8
  loc_BC28E4: AryLock
  loc_BC28E7: Ary1LdPr
  loc_BC28E8: MemLdStr global_8
  loc_BC28EB: AryLock
  loc_BC28EE: Ary1LdRf
  loc_BC28EF: FStR4 var_12C
  loc_BC28F2: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BC28F7: PopAdLdVar
  loc_BC28F8: FLdPr Me
  loc_BC28FB: MemLdRfVar from_stack_1.htmFile
  loc_BC28FE: LdPrVar
  loc_BC2900: LateMemCall
  loc_BC2906: LitI4 0
  loc_BC290B: LitI4 0
  loc_BC2910: LitI2_Byte 0
  loc_BC2912: LitStr "left"
  loc_BC2915: FMemLdR4 var_12C(0)
  loc_BC291A: LitStr " - "
  loc_BC291D: ConcatStr
  loc_BC291E: FStStrNoPop var_D0
  loc_BC2921: FMemLdR4 var_12C(4)
  loc_BC2926: ConcatStr
  loc_BC2927: FStStrNoPop var_E4
  loc_BC292A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC292F: CVarStr var_B8
  loc_BC2932: PopAdLdVar
  loc_BC2933: FLdPr Me
  loc_BC2936: MemLdRfVar from_stack_1.htmFile
  loc_BC2939: LdPrVar
  loc_BC293B: LateMemCall
  loc_BC2941: FFreeStr var_D0 = ""
  loc_BC2948: FFree1Var var_B8 = ""
  loc_BC294B: LitI4 0
  loc_BC2950: LitI4 0
  loc_BC2955: LitI2_Byte 0
  loc_BC2957: LitStr "right"
  loc_BC295A: FMemLdR4 var_12C(8)
  loc_BC295F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2964: CVarStr var_B8
  loc_BC2967: PopAdLdVar
  loc_BC2968: FLdPr Me
  loc_BC296B: MemLdRfVar from_stack_1.htmFile
  loc_BC296E: LdPrVar
  loc_BC2970: LateMemCall
  loc_BC2976: FFree1Var var_B8 = ""
  loc_BC2979: LitI4 0
  loc_BC297E: LitI4 0
  loc_BC2983: LitI2_Byte 0
  loc_BC2985: LitStr "left"
  loc_BC2988: FMemLdR4 var_12C(12)
  loc_BC298D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2992: CVarStr var_B8
  loc_BC2995: PopAdLdVar
  loc_BC2996: FLdPr Me
  loc_BC2999: MemLdRfVar from_stack_1.htmFile
  loc_BC299C: LdPrVar
  loc_BC299E: LateMemCall
  loc_BC29A4: FFree1Var var_B8 = ""
  loc_BC29A7: LitI4 0
  loc_BC29AC: LitI4 0
  loc_BC29B1: LitI2_Byte 0
  loc_BC29B3: LitStr "right"
  loc_BC29B6: FMemLdR4 var_12C(16)
  loc_BC29BB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC29C0: CVarStr var_B8
  loc_BC29C3: PopAdLdVar
  loc_BC29C4: FLdPr Me
  loc_BC29C7: MemLdRfVar from_stack_1.htmFile
  loc_BC29CA: LdPrVar
  loc_BC29CC: LateMemCall
  loc_BC29D2: FFree1Var var_B8 = ""
  loc_BC29D5: LitI4 0
  loc_BC29DA: LitI4 0
  loc_BC29DF: LitI2_Byte 0
  loc_BC29E1: LitStr "right"
  loc_BC29E4: FMemLdR4 var_12C(20)
  loc_BC29E9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC29EE: CVarStr var_B8
  loc_BC29F1: PopAdLdVar
  loc_BC29F2: FLdPr Me
  loc_BC29F5: MemLdRfVar from_stack_1.htmFile
  loc_BC29F8: LdPrVar
  loc_BC29FA: LateMemCall
  loc_BC2A00: FFree1Var var_B8 = ""
  loc_BC2A03: LitI4 0
  loc_BC2A08: LitI4 0
  loc_BC2A0D: LitI2_Byte 0
  loc_BC2A0F: LitStr "right"
  loc_BC2A12: FMemLdR4 var_12C(24)
  loc_BC2A17: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2A1C: CVarStr var_B8
  loc_BC2A1F: PopAdLdVar
  loc_BC2A20: FLdPr Me
  loc_BC2A23: MemLdRfVar from_stack_1.htmFile
  loc_BC2A26: LdPrVar
  loc_BC2A28: LateMemCall
  loc_BC2A2E: FFree1Var var_B8 = ""
  loc_BC2A31: FLdRfVar var_12E
  loc_BC2A34: FLdPr Me
  loc_BC2A37: VCallAd Control_ID_chkAgrupaMes
  loc_BC2A3A: FStAdFunc var_88
  loc_BC2A3D: FLdPr var_88
  loc_BC2A40:  = Me.Value
  loc_BC2A45: FLdI2 var_12E
  loc_BC2A48: CI4UI1
  loc_BC2A49: LitI4 0
  loc_BC2A4E: EqI4
  loc_BC2A4F: FFree1Ad var_88
  loc_BC2A52: BranchF loc_BC2A86
  loc_BC2A55: LitI4 0
  loc_BC2A5A: LitI4 0
  loc_BC2A5F: LitI2_Byte 0
  loc_BC2A61: LitStr "right"
  loc_BC2A64: FMemLdR4 var_12C(28)
  loc_BC2A69: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2A6E: CVarStr var_B8
  loc_BC2A71: PopAdLdVar
  loc_BC2A72: FLdPr Me
  loc_BC2A75: MemLdRfVar from_stack_1.htmFile
  loc_BC2A78: LdPrVar
  loc_BC2A7A: LateMemCall
  loc_BC2A80: FFree1Var var_B8 = ""
  loc_BC2A83: Branch loc_BC2DB3
  loc_BC2A86: LitVarStr var_A8, vbNullString
  loc_BC2A8B: FStVarCopyObj var_140
  loc_BC2A8E: FLdRfVar var_140
  loc_BC2A91: LitStr "(1)&nbsp;"
  loc_BC2A94: FMemLdR4 var_12C(36)
  loc_BC2A99: ConcatStr
  loc_BC2A9A: CVarStr var_B8
  loc_BC2A9D: FMemLdR4 var_12C(36)
  loc_BC2AA2: LitStr "0,00"
  loc_BC2AA5: NeStr
  loc_BC2AA7: CVarBoolI2 var_98
  loc_BC2AAB: FLdRfVar var_150
  loc_BC2AAE: ImpAdCallFPR4  = IIf(, , )
  loc_BC2AB3: LitVarStr var_180, vbNullString
  loc_BC2AB8: FStVarCopyObj var_190
  loc_BC2ABB: FLdRfVar var_190
  loc_BC2ABE: LitStr "<br>(2)&nbsp;"
  loc_BC2AC1: FMemLdR4 var_12C(40)
  loc_BC2AC6: ConcatStr
  loc_BC2AC7: CVarStr var_170
  loc_BC2ACA: FMemLdR4 var_12C(40)
  loc_BC2ACF: LitStr "0,00"
  loc_BC2AD2: NeStr
  loc_BC2AD4: CVarBoolI2 var_160
  loc_BC2AD8: FLdRfVar var_1A0
  loc_BC2ADB: ImpAdCallFPR4  = IIf(, , )
  loc_BC2AE0: LitVarStr var_1E0, vbNullString
  loc_BC2AE5: FStVarCopyObj var_1F0
  loc_BC2AE8: FLdRfVar var_1F0
  loc_BC2AEB: LitStr "<br>(3)&nbsp;"
  loc_BC2AEE: FMemLdR4 var_12C(44)
  loc_BC2AF3: ConcatStr
  loc_BC2AF4: CVarStr var_1D0
  loc_BC2AF7: FMemLdR4 var_12C(44)
  loc_BC2AFC: LitStr "0,00"
  loc_BC2AFF: NeStr
  loc_BC2B01: CVarBoolI2 var_1C0
  loc_BC2B05: FLdRfVar var_200
  loc_BC2B08: ImpAdCallFPR4  = IIf(, , )
  loc_BC2B0D: LitVarStr var_240, vbNullString
  loc_BC2B12: FStVarCopyObj var_250
  loc_BC2B15: FLdRfVar var_250
  loc_BC2B18: LitStr "<br>(4)&nbsp;"
  loc_BC2B1B: FMemLdR4 var_12C(48)
  loc_BC2B20: ConcatStr
  loc_BC2B21: CVarStr var_230
  loc_BC2B24: FMemLdR4 var_12C(48)
  loc_BC2B29: LitStr "0,00"
  loc_BC2B2C: NeStr
  loc_BC2B2E: CVarBoolI2 var_220
  loc_BC2B32: FLdRfVar var_260
  loc_BC2B35: ImpAdCallFPR4  = IIf(, , )
  loc_BC2B3A: LitVarStr var_2A0, vbNullString
  loc_BC2B3F: FStVarCopyObj var_2B0
  loc_BC2B42: FLdRfVar var_2B0
  loc_BC2B45: LitStr "<br>(5)&nbsp;"
  loc_BC2B48: FMemLdR4 var_12C(52)
  loc_BC2B4D: ConcatStr
  loc_BC2B4E: CVarStr var_290
  loc_BC2B51: FMemLdR4 var_12C(52)
  loc_BC2B56: LitStr "0,00"
  loc_BC2B59: NeStr
  loc_BC2B5B: CVarBoolI2 var_280
  loc_BC2B5F: FLdRfVar var_2C0
  loc_BC2B62: ImpAdCallFPR4  = IIf(, , )
  loc_BC2B67: LitVarStr var_300, vbNullString
  loc_BC2B6C: FStVarCopyObj var_310
  loc_BC2B6F: FLdRfVar var_310
  loc_BC2B72: LitStr "<br>(6)&nbsp;"
  loc_BC2B75: FMemLdR4 var_12C(56)
  loc_BC2B7A: ConcatStr
  loc_BC2B7B: CVarStr var_2F0
  loc_BC2B7E: FMemLdR4 var_12C(56)
  loc_BC2B83: LitStr "0,00"
  loc_BC2B86: NeStr
  loc_BC2B88: CVarBoolI2 var_2E0
  loc_BC2B8C: FLdRfVar var_320
  loc_BC2B8F: ImpAdCallFPR4  = IIf(, , )
  loc_BC2B94: LitVarStr var_360, vbNullString
  loc_BC2B99: FStVarCopyObj var_370
  loc_BC2B9C: FLdRfVar var_370
  loc_BC2B9F: LitStr "<br>(7)&nbsp;"
  loc_BC2BA2: FMemLdR4 var_12C(60)
  loc_BC2BA7: ConcatStr
  loc_BC2BA8: CVarStr var_350
  loc_BC2BAB: FMemLdR4 var_12C(60)
  loc_BC2BB0: LitStr "0,00"
  loc_BC2BB3: NeStr
  loc_BC2BB5: CVarBoolI2 var_340
  loc_BC2BB9: FLdRfVar var_380
  loc_BC2BBC: ImpAdCallFPR4  = IIf(, , )
  loc_BC2BC1: LitVarStr var_3C0, vbNullString
  loc_BC2BC6: FStVarCopyObj var_3D0
  loc_BC2BC9: FLdRfVar var_3D0
  loc_BC2BCC: LitStr "<br>(8)&nbsp;"
  loc_BC2BCF: FMemLdR4 var_12C(64)
  loc_BC2BD4: ConcatStr
  loc_BC2BD5: CVarStr var_3B0
  loc_BC2BD8: FMemLdR4 var_12C(64)
  loc_BC2BDD: LitStr "0,00"
  loc_BC2BE0: NeStr
  loc_BC2BE2: CVarBoolI2 var_3A0
  loc_BC2BE6: FLdRfVar var_3E0
  loc_BC2BE9: ImpAdCallFPR4  = IIf(, , )
  loc_BC2BEE: LitVarStr var_420, vbNullString
  loc_BC2BF3: FStVarCopyObj var_430
  loc_BC2BF6: FLdRfVar var_430
  loc_BC2BF9: LitStr "<br>(9)&nbsp;"
  loc_BC2BFC: FMemLdR4 var_12C(68)
  loc_BC2C01: ConcatStr
  loc_BC2C02: CVarStr var_410
  loc_BC2C05: FMemLdR4 var_12C(68)
  loc_BC2C0A: LitStr "0,00"
  loc_BC2C0D: NeStr
  loc_BC2C0F: CVarBoolI2 var_400
  loc_BC2C13: FLdRfVar var_440
  loc_BC2C16: ImpAdCallFPR4  = IIf(, , )
  loc_BC2C1B: LitVarStr var_480, vbNullString
  loc_BC2C20: FStVarCopyObj var_490
  loc_BC2C23: FLdRfVar var_490
  loc_BC2C26: LitStr "<br>(10)&nbsp;"
  loc_BC2C29: FMemLdR4 var_12C(72)
  loc_BC2C2E: ConcatStr
  loc_BC2C2F: CVarStr var_470
  loc_BC2C32: FMemLdR4 var_12C(72)
  loc_BC2C37: LitStr "0,00"
  loc_BC2C3A: NeStr
  loc_BC2C3C: CVarBoolI2 var_460
  loc_BC2C40: FLdRfVar var_4A0
  loc_BC2C43: ImpAdCallFPR4  = IIf(, , )
  loc_BC2C48: LitVarStr var_4E0, vbNullString
  loc_BC2C4D: FStVarCopyObj var_4F0
  loc_BC2C50: FLdRfVar var_4F0
  loc_BC2C53: LitStr "<br>(11)&nbsp;"
  loc_BC2C56: FMemLdR4 var_12C(76)
  loc_BC2C5B: ConcatStr
  loc_BC2C5C: CVarStr var_4D0
  loc_BC2C5F: FMemLdR4 var_12C(76)
  loc_BC2C64: LitStr "0,00"
  loc_BC2C67: NeStr
  loc_BC2C69: CVarBoolI2 var_4C0
  loc_BC2C6D: FLdRfVar var_500
  loc_BC2C70: ImpAdCallFPR4  = IIf(, , )
  loc_BC2C75: LitVarStr var_540, vbNullString
  loc_BC2C7A: FStVarCopyObj var_550
  loc_BC2C7D: FLdRfVar var_550
  loc_BC2C80: LitStr "<br>(12)&nbsp;"
  loc_BC2C83: FMemLdR4 var_12C(80)
  loc_BC2C88: ConcatStr
  loc_BC2C89: CVarStr var_530
  loc_BC2C8C: FMemLdR4 var_12C(80)
  loc_BC2C91: LitStr "0,00"
  loc_BC2C94: NeStr
  loc_BC2C96: CVarBoolI2 var_520
  loc_BC2C9A: FLdRfVar var_560
  loc_BC2C9D: ImpAdCallFPR4  = IIf(, , )
  loc_BC2CA2: LitI4 0
  loc_BC2CA7: LitI4 0
  loc_BC2CAC: LitI2_Byte 0
  loc_BC2CAE: LitStr "right"
  loc_BC2CB1: FLdRfVar var_150
  loc_BC2CB4: FLdRfVar var_1A0
  loc_BC2CB7: ConcatVar var_1B0
  loc_BC2CBB: FLdRfVar var_200
  loc_BC2CBE: ConcatVar var_210
  loc_BC2CC2: FLdRfVar var_260
  loc_BC2CC5: ConcatVar var_270
  loc_BC2CC9: FLdRfVar var_2C0
  loc_BC2CCC: ConcatVar var_2D0
  loc_BC2CD0: FLdRfVar var_320
  loc_BC2CD3: ConcatVar var_330
  loc_BC2CD7: FLdRfVar var_380
  loc_BC2CDA: ConcatVar var_390
  loc_BC2CDE: FLdRfVar var_3E0
  loc_BC2CE1: ConcatVar var_3F0
  loc_BC2CE5: FLdRfVar var_440
  loc_BC2CE8: ConcatVar var_450
  loc_BC2CEC: FLdRfVar var_4A0
  loc_BC2CEF: ConcatVar var_4B0
  loc_BC2CF3: FLdRfVar var_500
  loc_BC2CF6: ConcatVar var_510
  loc_BC2CFA: FLdRfVar var_560
  loc_BC2CFD: ConcatVar var_570
  loc_BC2D01: LitVarStr var_580, "<br>(T)&nbsp;"
  loc_BC2D06: ConcatVar var_590
  loc_BC2D0A: FMemLdR4 var_12C(28)
  loc_BC2D0F: CVarStr var_5A0
  loc_BC2D12: ConcatVar var_5B0
  loc_BC2D16: CStrVarVal var_D0
  loc_BC2D1A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2D1F: CVarStr var_5C0
  loc_BC2D22: PopAdLdVar
  loc_BC2D23: FLdPr Me
  loc_BC2D26: MemLdRfVar from_stack_1.htmFile
  loc_BC2D29: LdPrVar
  loc_BC2D2B: LateMemCall
  loc_BC2D31: FFree1Str var_D0
  loc_BC2D34: FFreeVar var_5B0 = "": var_5C0 = "": var_370 = "": var_330 = "": var_380 = "": var_3A0 = "": var_3B0 = "": var_3D0 = "": var_390 = "": var_3E0 = "": var_400 = "": var_410 = "": var_430 = "": var_3F0 = "": var_440 = "": var_460 = "": var_470 = "": var_490 = "": var_450 = "": var_4A0 = "": var_4C0 = "": var_4D0 = "": var_4F0 = "": var_4B0 = "": var_500 = "": var_520 = "": var_530 = "": var_550 = "": var_510 = "": var_560 = "": var_570 = "": var_590 = "": var_98 = "": var_B8 = "": var_140 = "": var_160 = "": var_170 = "": var_190 = "": var_150 = "": var_1A0 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_1B0 = "": var_200 = "": var_220 = "": var_230 = "": var_250 = "": var_210 = "": var_260 = "": var_280 = "": var_290 = "": var_2B0 = "": var_270 = "": var_2C0 = "": var_2E0 = "": var_2F0 = "": var_310 = "": var_2D0 = "": var_320 = "": var_340 = ""
  loc_BC2DB3: LitI4 0
  loc_BC2DB8: LitI4 0
  loc_BC2DBD: LitI2_Byte 0
  loc_BC2DBF: LitStr "right"
  loc_BC2DC2: FMemLdR4 var_12C(32)
  loc_BC2DC7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2DCC: CVarStr var_B8
  loc_BC2DCF: PopAdLdVar
  loc_BC2DD0: FLdPr Me
  loc_BC2DD3: MemLdRfVar from_stack_1.htmFile
  loc_BC2DD6: LdPrVar
  loc_BC2DD8: LateMemCall
  loc_BC2DDE: FFree1Var var_B8 = ""
  loc_BC2DE1: LitVarStr var_98, "     </tr>"
  loc_BC2DE6: PopAdLdVar
  loc_BC2DE7: FLdPr Me
  loc_BC2DEA: MemLdRfVar from_stack_1.htmFile
  loc_BC2DED: LdPrVar
  loc_BC2DEF: LateMemCall
  loc_BC2DF5: LitI4 0
  loc_BC2DFA: FStR4 var_12C
  loc_BC2DFD: AryUnlock
  loc_BC2E00: AryUnlock
  loc_BC2E03: AryUnlock
  loc_BC2E06: AryUnlock
  loc_BC2E09: AryUnlock
  loc_BC2E0C: FLdPr Me
  loc_BC2E0F: MemLdRfVar from_stack_1.global_104
  loc_BC2E12: NextI2 var_114, loc_BC28A6
  loc_BC2E17: FLdPr Me
  loc_BC2E1A: MemLdRfVar from_stack_1.global_112
  loc_BC2E1D: NextI2 var_FC, loc_BC2672
  loc_BC2E22: FLdPr Me
  loc_BC2E25: MemLdRfVar from_stack_1.global_110
  loc_BC2E28: NextI2 var_E8, loc_BC245A
  loc_BC2E2D: FLdPr Me
  loc_BC2E30: MemLdRfVar from_stack_1.global_108
  loc_BC2E33: NextI2 var_D4, loc_BC225E
  loc_BC2E38: FLdPr Me
  loc_BC2E3B: MemLdRfVar from_stack_1.global_106
  loc_BC2E3E: NextI2 var_C4, loc_BC2089
  loc_BC2E43: LitStr "Municipalidad de Guaymallén"
  loc_BC2E46: LitStr "Municipalidad de Guaymallén"
  loc_BC2E49: NeStr
  loc_BC2E4B: BranchF loc_BC3001
  loc_BC2E4E: LitVarStr var_98, " <tr class=""Totales"">"
  loc_BC2E53: PopAdLdVar
  loc_BC2E54: FLdPr Me
  loc_BC2E57: MemLdRfVar from_stack_1.htmFile
  loc_BC2E5A: LdPrVar
  loc_BC2E5C: LateMemCall
  loc_BC2E62: LitI4 0
  loc_BC2E67: LitI4 0
  loc_BC2E6C: LitI2_Byte 0
  loc_BC2E6E: LitStr "right"
  loc_BC2E71: LitStr "Totales"
  loc_BC2E74: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2E79: CVarStr var_B8
  loc_BC2E7C: PopAdLdVar
  loc_BC2E7D: FLdPr Me
  loc_BC2E80: MemLdRfVar from_stack_1.htmFile
  loc_BC2E83: LdPrVar
  loc_BC2E85: LateMemCall
  loc_BC2E8B: FFree1Var var_B8 = ""
  loc_BC2E8E: LitI4 1
  loc_BC2E93: FLdPr Me
  loc_BC2E96: MemLdStr global_100
  loc_BC2E99: AryLock
  loc_BC2E9C: Ary1LdRf
  loc_BC2E9D: FStR4 var_5D8
  loc_BC2EA0: LitI4 0
  loc_BC2EA5: LitI4 0
  loc_BC2EAA: LitI2_Byte &HFF
  loc_BC2EAC: LitStr "right"
  loc_BC2EAF: FMemLdR4 var_5D8(8)
  loc_BC2EB4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2EB9: CVarStr var_B8
  loc_BC2EBC: PopAdLdVar
  loc_BC2EBD: FLdPr Me
  loc_BC2EC0: MemLdRfVar from_stack_1.htmFile
  loc_BC2EC3: LdPrVar
  loc_BC2EC5: LateMemCall
  loc_BC2ECB: FFree1Var var_B8 = ""
  loc_BC2ECE: LitI4 0
  loc_BC2ED3: LitI4 0
  loc_BC2ED8: LitI2_Byte 0
  loc_BC2EDA: LitI4 0
  loc_BC2EDF: LitStr vbNullString
  loc_BC2EE2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2EE7: CVarStr var_B8
  loc_BC2EEA: PopAdLdVar
  loc_BC2EEB: FLdPr Me
  loc_BC2EEE: MemLdRfVar from_stack_1.htmFile
  loc_BC2EF1: LdPrVar
  loc_BC2EF3: LateMemCall
  loc_BC2EF9: FFree1Var var_B8 = ""
  loc_BC2EFC: LitI4 0
  loc_BC2F01: LitI4 0
  loc_BC2F06: LitI2_Byte &HFF
  loc_BC2F08: LitStr "right"
  loc_BC2F0B: FMemLdR4 var_5D8(16)
  loc_BC2F10: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2F15: CVarStr var_B8
  loc_BC2F18: PopAdLdVar
  loc_BC2F19: FLdPr Me
  loc_BC2F1C: MemLdRfVar from_stack_1.htmFile
  loc_BC2F1F: LdPrVar
  loc_BC2F21: LateMemCall
  loc_BC2F27: FFree1Var var_B8 = ""
  loc_BC2F2A: LitI4 0
  loc_BC2F2F: LitI4 0
  loc_BC2F34: LitI2_Byte &HFF
  loc_BC2F36: LitStr "right"
  loc_BC2F39: FMemLdR4 var_5D8(20)
  loc_BC2F3E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2F43: CVarStr var_B8
  loc_BC2F46: PopAdLdVar
  loc_BC2F47: FLdPr Me
  loc_BC2F4A: MemLdRfVar from_stack_1.htmFile
  loc_BC2F4D: LdPrVar
  loc_BC2F4F: LateMemCall
  loc_BC2F55: FFree1Var var_B8 = ""
  loc_BC2F58: LitI4 0
  loc_BC2F5D: LitI4 0
  loc_BC2F62: LitI2_Byte &HFF
  loc_BC2F64: LitStr "right"
  loc_BC2F67: FMemLdR4 var_5D8(24)
  loc_BC2F6C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2F71: CVarStr var_B8
  loc_BC2F74: PopAdLdVar
  loc_BC2F75: FLdPr Me
  loc_BC2F78: MemLdRfVar from_stack_1.htmFile
  loc_BC2F7B: LdPrVar
  loc_BC2F7D: LateMemCall
  loc_BC2F83: FFree1Var var_B8 = ""
  loc_BC2F86: LitI4 0
  loc_BC2F8B: LitI4 0
  loc_BC2F90: LitI2_Byte &HFF
  loc_BC2F92: LitStr "right"
  loc_BC2F95: FMemLdR4 var_5D8(28)
  loc_BC2F9A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2F9F: CVarStr var_B8
  loc_BC2FA2: PopAdLdVar
  loc_BC2FA3: FLdPr Me
  loc_BC2FA6: MemLdRfVar from_stack_1.htmFile
  loc_BC2FA9: LdPrVar
  loc_BC2FAB: LateMemCall
  loc_BC2FB1: FFree1Var var_B8 = ""
  loc_BC2FB4: LitI4 0
  loc_BC2FB9: LitI4 0
  loc_BC2FBE: LitI2_Byte &HFF
  loc_BC2FC0: LitStr "right"
  loc_BC2FC3: FMemLdR4 var_5D8(32)
  loc_BC2FC8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BC2FCD: CVarStr var_B8
  loc_BC2FD0: PopAdLdVar
  loc_BC2FD1: FLdPr Me
  loc_BC2FD4: MemLdRfVar from_stack_1.htmFile
  loc_BC2FD7: LdPrVar
  loc_BC2FD9: LateMemCall
  loc_BC2FDF: FFree1Var var_B8 = ""
  loc_BC2FE2: LitI4 0
  loc_BC2FE7: FStR4 var_5D8
  loc_BC2FEA: AryUnlock
  loc_BC2FED: LitVarStr var_98, "     </tr>"
  loc_BC2FF2: PopAdLdVar
  loc_BC2FF3: FLdPr Me
  loc_BC2FF6: MemLdRfVar from_stack_1.htmFile
  loc_BC2FF9: LdPrVar
  loc_BC2FFB: LateMemCall
  loc_BC3001: Call Proc_148_40_A010D0()
  loc_BC3006: FLdPr Me
  loc_BC3009: MemLdRfVar from_stack_1.htmFile
  loc_BC300C: LdPrVar
  loc_BC300E: LateMemCall
  loc_BC3014: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_BC3019: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94A6BC
  'Data Table: 4C616C
  loc_94A6A4: LitI2_Byte 0
  loc_94A6A6: FLdPr Me
  loc_94A6A9: MemStI2 bLogos
  loc_94A6AC: Call GeneraHTML()
  loc_94A6B1: LitI2_Byte &HFF
  loc_94A6B3: FLdPr Me
  loc_94A6B6: MemStI2 bLogos
  loc_94A6B9: ExitProcHresult
  loc_94A6BA: SubI2
End Sub

Private Function Proc_148_33_9EF60C() '9EF60C
  'Data Table: 4C616C
  loc_9EF4EC: FLdPr Me
  loc_9EF4EF: MemLdI2 global_106
  loc_9EF4F2: LitI2_Byte 1
  loc_9EF4F4: AddI2
  loc_9EF4F5: FLdPr Me
  loc_9EF4F8: MemStI2 global_106
  loc_9EF4FB: LitI2_Byte 0
  loc_9EF4FD: FLdPr Me
  loc_9EF500: MemStI2 global_108
  loc_9EF503: LitI4 0
  loc_9EF508: FLdPr Me
  loc_9EF50B: MemLdI2 global_106
  loc_9EF50E: CI4UI1
  loc_9EF50F: FLdPr Me
  loc_9EF512: MemLdRfVar from_stack_1.global_96
  loc_9EF515: RedimPreserve
  loc_9EF51F: FLdRfVar var_B0
  loc_9EF522: FLdRfVar var_A0
  loc_9EF525: LitVarStr var_9C, "CodiTicu"
  loc_9EF52A: PopAdLdVar
  loc_9EF52B: FLdRfVar var_8C
  loc_9EF52E: FLdRfVar var_88
  loc_9EF531: FLdPr Me
  loc_9EF534: MemLdRfVar from_stack_1.global_72
  loc_9EF537: NewIfNullPr clsbase
  loc_9EF53A: from_stack_1v = clsbase.RsFrmGet()
  loc_9EF53F: FLdPr var_88
  loc_9EF542:  = Me.Fields
  loc_9EF547: FLdPr var_8C
  loc_9EF54A: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF54F: FLdPr var_A0
  loc_9EF552:  = Me.Value
  loc_9EF557: LitI4 1
  loc_9EF55C: FLdRfVar var_B0
  loc_9EF55F: CStrVarTmp
  loc_9EF560: FStStrNoPop var_B4
  loc_9EF563: ImpAdCallI2 Left$(, )
  loc_9EF568: FStStr var_F0
  loc_9EF56B: LitI2_Byte 0
  loc_9EF56D: LitVar_Missing var_EC
  loc_9EF570: LitI2_Byte 0
  loc_9EF572: FLdZeroAd var_F0
  loc_9EF575: FStStrNoPop var_B8
  loc_9EF578: LitStr "000"
  loc_9EF57B: ConcatStr
  loc_9EF57C: CVarStr var_CC
  loc_9EF57F: PopAdLdVar
  loc_9EF580: FLdPr Me
  loc_9EF583: MemLdI2 global_106
  loc_9EF586: CI4UI1
  loc_9EF587: FLdPr Me
  loc_9EF58A: MemLdStr global_96
  loc_9EF58D: AryLock
  loc_9EF590: Ary1LdPr
  loc_9EF591: MemLdRfVar from_stack_1.global_0
  loc_9EF594: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9EF599: AryUnlock
  loc_9EF59C: FFreeStr var_B4 = "": var_B8 = ""
  loc_9EF5A5: FFreeAd var_88 = "": var_8C = ""
  loc_9EF5AE: FFreeVar var_B0 = "": var_CC = ""
  loc_9EF5B7: FLdPr Me
  loc_9EF5BA: MemLdI2 global_106
  loc_9EF5BD: CI4UI1
  loc_9EF5BE: FLdPr Me
  loc_9EF5C1: MemLdStr global_96
  loc_9EF5C4: Ary1LdPr
  loc_9EF5C5: MemLdStr global_0
  loc_9EF5C8: ImpAdCallI2 Proc_259_34_9A668C()
  loc_9EF5CD: FStStr var_B4
  loc_9EF5D0: LitI2_Byte 0
  loc_9EF5D2: LitVar_Missing var_CC
  loc_9EF5D5: LitI2_Byte 0
  loc_9EF5D7: FLdZeroAd var_B4
  loc_9EF5DA: CVarStr var_B0
  loc_9EF5DD: PopAdLdVar
  loc_9EF5DE: FLdPr Me
  loc_9EF5E1: MemLdI2 global_106
  loc_9EF5E4: CI4UI1
  loc_9EF5E5: FLdPr Me
  loc_9EF5E8: MemLdStr global_96
  loc_9EF5EB: AryLock
  loc_9EF5EE: Ary1LdPr
  loc_9EF5EF: MemLdRfVar from_stack_1.global_4
  loc_9EF5F2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9EF5F7: AryUnlock
  loc_9EF5FA: FFree1Str var_B4
  loc_9EF5FD: FFreeVar var_B0 = ""
  loc_9EF604: Call Proc_148_34_A10360()
  loc_9EF609: ExitProcHresult
End Function

Private Function Proc_148_34_A10360() 'A10360
  'Data Table: 4C616C
  loc_A10208: FLdPr Me
  loc_A1020B: MemLdI2 global_108
  loc_A1020E: LitI2_Byte 1
  loc_A10210: AddI2
  loc_A10211: FLdPr Me
  loc_A10214: MemStI2 global_108
  loc_A10217: LitI2_Byte 0
  loc_A10219: FLdPr Me
  loc_A1021C: MemStI2 global_110
  loc_A1021F: LitI4 0
  loc_A10224: FLdPr Me
  loc_A10227: MemLdI2 global_108
  loc_A1022A: CI4UI1
  loc_A1022B: FLdPr Me
  loc_A1022E: MemLdI2 global_106
  loc_A10231: CI4UI1
  loc_A10232: FLdPr Me
  loc_A10235: MemLdStr global_96
  loc_A10238: Ary1LdPr
  loc_A10239: MemLdRfVar from_stack_1.global_8
  loc_A1023C: RedimPreserve
  loc_A10246: FLdRfVar var_B0
  loc_A10249: FLdRfVar var_A0
  loc_A1024C: LitVarStr var_9C, "CodiTicu"
  loc_A10251: PopAdLdVar
  loc_A10252: FLdRfVar var_8C
  loc_A10255: FLdRfVar var_88
  loc_A10258: FLdPr Me
  loc_A1025B: MemLdRfVar from_stack_1.global_72
  loc_A1025E: NewIfNullPr clsbase
  loc_A10261: from_stack_1v = clsbase.RsFrmGet()
  loc_A10266: FLdPr var_88
  loc_A10269:  = Me.Fields
  loc_A1026E: FLdPr var_8C
  loc_A10271: from_stack_2 = Me.Item(from_stack_1)
  loc_A10276: FLdPr var_A0
  loc_A10279:  = Me.Value
  loc_A1027E: LitI4 2
  loc_A10283: FLdRfVar var_B0
  loc_A10286: CStrVarTmp
  loc_A10287: FStStrNoPop var_B4
  loc_A1028A: ImpAdCallI2 Left$(, )
  loc_A1028F: FStStr var_F4
  loc_A10292: LitI2_Byte 0
  loc_A10294: LitVar_Missing var_F0
  loc_A10297: LitI2_Byte 0
  loc_A10299: FLdZeroAd var_F4
  loc_A1029C: FStStrNoPop var_B8
  loc_A1029F: LitStr "00"
  loc_A102A2: ConcatStr
  loc_A102A3: CVarStr var_D0
  loc_A102A6: PopAdLdVar
  loc_A102A7: FLdPr Me
  loc_A102AA: MemLdI2 global_108
  loc_A102AD: CI4UI1
  loc_A102AE: FLdPr Me
  loc_A102B1: MemLdI2 global_106
  loc_A102B4: CI4UI1
  loc_A102B5: FLdPr Me
  loc_A102B8: MemLdStr global_96
  loc_A102BB: AryLock
  loc_A102BE: Ary1LdPr
  loc_A102BF: MemLdStr global_8
  loc_A102C2: AryLock
  loc_A102C5: Ary1LdPr
  loc_A102C6: MemLdRfVar from_stack_1.global_0
  loc_A102C9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A102CE: AryUnlock
  loc_A102D1: AryUnlock
  loc_A102D4: FFreeStr var_B4 = "": var_B8 = ""
  loc_A102DD: FFreeAd var_88 = "": var_8C = ""
  loc_A102E6: FFreeVar var_B0 = "": var_D0 = ""
  loc_A102EF: FLdPr Me
  loc_A102F2: MemLdI2 global_108
  loc_A102F5: CI4UI1
  loc_A102F6: FLdPr Me
  loc_A102F9: MemLdI2 global_106
  loc_A102FC: CI4UI1
  loc_A102FD: FLdPr Me
  loc_A10300: MemLdStr global_96
  loc_A10303: Ary1LdPr
  loc_A10304: MemLdStr global_8
  loc_A10307: Ary1LdPr
  loc_A10308: MemLdStr global_0
  loc_A1030B: ImpAdCallI2 Proc_259_34_9A668C()
  loc_A10310: FStStr var_B4
  loc_A10313: LitI2_Byte 0
  loc_A10315: LitVar_Missing var_D0
  loc_A10318: LitI2_Byte 0
  loc_A1031A: FLdZeroAd var_B4
  loc_A1031D: CVarStr var_B0
  loc_A10320: PopAdLdVar
  loc_A10321: FLdPr Me
  loc_A10324: MemLdI2 global_108
  loc_A10327: CI4UI1
  loc_A10328: FLdPr Me
  loc_A1032B: MemLdI2 global_106
  loc_A1032E: CI4UI1
  loc_A1032F: FLdPr Me
  loc_A10332: MemLdStr global_96
  loc_A10335: AryLock
  loc_A10338: Ary1LdPr
  loc_A10339: MemLdStr global_8
  loc_A1033C: AryLock
  loc_A1033F: Ary1LdPr
  loc_A10340: MemLdRfVar from_stack_1.global_4
  loc_A10343: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A10348: AryUnlock
  loc_A1034B: AryUnlock
  loc_A1034E: FFree1Str var_B4
  loc_A10351: FFreeVar var_B0 = ""
  loc_A10358: Call Proc_148_35_A205C0()
  loc_A1035D: ExitProcHresult
End Function

Private Function Proc_148_35_A205C0() 'A205C0
  'Data Table: 4C616C
  loc_A20430: FLdPr Me
  loc_A20433: MemLdI2 global_110
  loc_A20436: LitI2_Byte 1
  loc_A20438: AddI2
  loc_A20439: FLdPr Me
  loc_A2043C: MemStI2 global_110
  loc_A2043F: LitI2_Byte 0
  loc_A20441: FLdPr Me
  loc_A20444: MemStI2 global_112
  loc_A20447: LitI4 0
  loc_A2044C: FLdPr Me
  loc_A2044F: MemLdI2 global_110
  loc_A20452: CI4UI1
  loc_A20453: FLdPr Me
  loc_A20456: MemLdI2 global_108
  loc_A20459: CI4UI1
  loc_A2045A: FLdPr Me
  loc_A2045D: MemLdI2 global_106
  loc_A20460: CI4UI1
  loc_A20461: FLdPr Me
  loc_A20464: MemLdStr global_96
  loc_A20467: Ary1LdPr
  loc_A20468: MemLdStr global_8
  loc_A2046B: Ary1LdPr
  loc_A2046C: MemLdRfVar from_stack_1.global_8
  loc_A2046F: RedimPreserve
  loc_A20479: FLdRfVar var_B0
  loc_A2047C: FLdRfVar var_A0
  loc_A2047F: LitVarStr var_9C, "CodiTicu"
  loc_A20484: PopAdLdVar
  loc_A20485: FLdRfVar var_8C
  loc_A20488: FLdRfVar var_88
  loc_A2048B: FLdPr Me
  loc_A2048E: MemLdRfVar from_stack_1.global_72
  loc_A20491: NewIfNullPr clsbase
  loc_A20494: from_stack_1v = clsbase.RsFrmGet()
  loc_A20499: FLdPr var_88
  loc_A2049C:  = Me.Fields
  loc_A204A1: FLdPr var_8C
  loc_A204A4: from_stack_2 = Me.Item(from_stack_1)
  loc_A204A9: FLdPr var_A0
  loc_A204AC:  = Me.Value
  loc_A204B1: LitI4 3
  loc_A204B6: FLdRfVar var_B0
  loc_A204B9: CStrVarTmp
  loc_A204BA: FStStrNoPop var_B4
  loc_A204BD: ImpAdCallI2 Left$(, )
  loc_A204C2: FStStr var_F8
  loc_A204C5: LitI2_Byte 0
  loc_A204C7: LitVar_Missing var_F4
  loc_A204CA: LitI2_Byte 0
  loc_A204CC: FLdZeroAd var_F8
  loc_A204CF: FStStrNoPop var_B8
  loc_A204D2: LitStr "0"
  loc_A204D5: ConcatStr
  loc_A204D6: CVarStr var_D4
  loc_A204D9: PopAdLdVar
  loc_A204DA: FLdPr Me
  loc_A204DD: MemLdI2 global_110
  loc_A204E0: CI4UI1
  loc_A204E1: FLdPr Me
  loc_A204E4: MemLdI2 global_108
  loc_A204E7: CI4UI1
  loc_A204E8: FLdPr Me
  loc_A204EB: MemLdI2 global_106
  loc_A204EE: CI4UI1
  loc_A204EF: FLdPr Me
  loc_A204F2: MemLdStr global_96
  loc_A204F5: AryLock
  loc_A204F8: Ary1LdPr
  loc_A204F9: MemLdStr global_8
  loc_A204FC: AryLock
  loc_A204FF: Ary1LdPr
  loc_A20500: MemLdStr global_8
  loc_A20503: AryLock
  loc_A20506: Ary1LdPr
  loc_A20507: MemLdRfVar from_stack_1.global_0
  loc_A2050A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2050F: AryUnlock
  loc_A20512: AryUnlock
  loc_A20515: AryUnlock
  loc_A20518: FFreeStr var_B4 = "": var_B8 = ""
  loc_A20521: FFreeAd var_88 = "": var_8C = ""
  loc_A2052A: FFreeVar var_B0 = "": var_D4 = ""
  loc_A20533: FLdPr Me
  loc_A20536: MemLdI2 global_110
  loc_A20539: CI4UI1
  loc_A2053A: FLdPr Me
  loc_A2053D: MemLdI2 global_108
  loc_A20540: CI4UI1
  loc_A20541: FLdPr Me
  loc_A20544: MemLdI2 global_106
  loc_A20547: CI4UI1
  loc_A20548: FLdPr Me
  loc_A2054B: MemLdStr global_96
  loc_A2054E: Ary1LdPr
  loc_A2054F: MemLdStr global_8
  loc_A20552: Ary1LdPr
  loc_A20553: MemLdStr global_8
  loc_A20556: Ary1LdPr
  loc_A20557: MemLdStr global_0
  loc_A2055A: ImpAdCallI2 Proc_259_34_9A668C()
  loc_A2055F: FStStr var_B4
  loc_A20562: LitI2_Byte 0
  loc_A20564: LitVar_Missing var_D4
  loc_A20567: LitI2_Byte 0
  loc_A20569: FLdZeroAd var_B4
  loc_A2056C: CVarStr var_B0
  loc_A2056F: PopAdLdVar
  loc_A20570: FLdPr Me
  loc_A20573: MemLdI2 global_110
  loc_A20576: CI4UI1
  loc_A20577: FLdPr Me
  loc_A2057A: MemLdI2 global_108
  loc_A2057D: CI4UI1
  loc_A2057E: FLdPr Me
  loc_A20581: MemLdI2 global_106
  loc_A20584: CI4UI1
  loc_A20585: FLdPr Me
  loc_A20588: MemLdStr global_96
  loc_A2058B: AryLock
  loc_A2058E: Ary1LdPr
  loc_A2058F: MemLdStr global_8
  loc_A20592: AryLock
  loc_A20595: Ary1LdPr
  loc_A20596: MemLdStr global_8
  loc_A20599: AryLock
  loc_A2059C: Ary1LdPr
  loc_A2059D: MemLdRfVar from_stack_1.global_4
  loc_A205A0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A205A5: AryUnlock
  loc_A205A8: AryUnlock
  loc_A205AB: AryUnlock
  loc_A205AE: FFree1Str var_B4
  loc_A205B1: FFreeVar var_B0 = ""
  loc_A205B8: Call Proc_148_36_A1BB78()
  loc_A205BD: ExitProcHresult
  loc_A205BE: SetLastSystemError
End Function

Private Function Proc_148_36_A1BB78() 'A1BB78
  'Data Table: 4C616C
  loc_A1B9EC: FLdPr Me
  loc_A1B9EF: MemLdI2 global_112
  loc_A1B9F2: LitI2_Byte 1
  loc_A1B9F4: AddI2
  loc_A1B9F5: FLdPr Me
  loc_A1B9F8: MemStI2 global_112
  loc_A1B9FB: LitI2_Byte 0
  loc_A1B9FD: FLdPr Me
  loc_A1BA00: MemStI2 global_104
  loc_A1BA03: LitI4 0
  loc_A1BA08: FLdPr Me
  loc_A1BA0B: MemLdI2 global_112
  loc_A1BA0E: CI4UI1
  loc_A1BA0F: FLdPr Me
  loc_A1BA12: MemLdI2 global_110
  loc_A1BA15: CI4UI1
  loc_A1BA16: FLdPr Me
  loc_A1BA19: MemLdI2 global_108
  loc_A1BA1C: CI4UI1
  loc_A1BA1D: FLdPr Me
  loc_A1BA20: MemLdI2 global_106
  loc_A1BA23: CI4UI1
  loc_A1BA24: FLdPr Me
  loc_A1BA27: MemLdStr global_96
  loc_A1BA2A: Ary1LdPr
  loc_A1BA2B: MemLdStr global_8
  loc_A1BA2E: Ary1LdPr
  loc_A1BA2F: MemLdStr global_8
  loc_A1BA32: Ary1LdPr
  loc_A1BA33: MemLdRfVar from_stack_1.global_8
  loc_A1BA36: RedimPreserve
  loc_A1BA40: FLdRfVar var_A0
  loc_A1BA43: LitVarStr var_9C, "CodiTicu"
  loc_A1BA48: PopAdLdVar
  loc_A1BA49: FLdRfVar var_8C
  loc_A1BA4C: FLdRfVar var_88
  loc_A1BA4F: FLdPr Me
  loc_A1BA52: MemLdRfVar from_stack_1.global_72
  loc_A1BA55: NewIfNullPr clsbase
  loc_A1BA58: from_stack_1v = clsbase.RsFrmGet()
  loc_A1BA5D: FLdPr var_88
  loc_A1BA60:  = Me.Fields
  loc_A1BA65: FLdPr var_8C
  loc_A1BA68: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BA6D: LitI2_Byte 0
  loc_A1BA6F: LitVar_Missing var_E0
  loc_A1BA72: LitI2_Byte 0
  loc_A1BA74: FLdZeroAd var_A0
  loc_A1BA77: CVarAd
  loc_A1BA7B: PopAdLdVar
  loc_A1BA7C: FLdPr Me
  loc_A1BA7F: MemLdI2 global_112
  loc_A1BA82: CI4UI1
  loc_A1BA83: FLdPr Me
  loc_A1BA86: MemLdI2 global_110
  loc_A1BA89: CI4UI1
  loc_A1BA8A: FLdPr Me
  loc_A1BA8D: MemLdI2 global_108
  loc_A1BA90: CI4UI1
  loc_A1BA91: FLdPr Me
  loc_A1BA94: MemLdI2 global_106
  loc_A1BA97: CI4UI1
  loc_A1BA98: FLdPr Me
  loc_A1BA9B: MemLdStr global_96
  loc_A1BA9E: AryLock
  loc_A1BAA1: Ary1LdPr
  loc_A1BAA2: MemLdStr global_8
  loc_A1BAA5: AryLock
  loc_A1BAA8: Ary1LdPr
  loc_A1BAA9: MemLdStr global_8
  loc_A1BAAC: AryLock
  loc_A1BAAF: Ary1LdPr
  loc_A1BAB0: MemLdStr global_8
  loc_A1BAB3: AryLock
  loc_A1BAB6: Ary1LdPr
  loc_A1BAB7: MemLdRfVar from_stack_1.global_0
  loc_A1BABA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A1BABF: AryUnlock
  loc_A1BAC2: AryUnlock
  loc_A1BAC5: AryUnlock
  loc_A1BAC8: AryUnlock
  loc_A1BACB: FFreeAd var_88 = ""
  loc_A1BAD2: FFreeVar var_C0 = ""
  loc_A1BAD9: FLdRfVar var_A0
  loc_A1BADC: LitVarStr var_9C, "DetaTicu"
  loc_A1BAE1: PopAdLdVar
  loc_A1BAE2: FLdRfVar var_8C
  loc_A1BAE5: FLdRfVar var_88
  loc_A1BAE8: FLdPr Me
  loc_A1BAEB: MemLdRfVar from_stack_1.global_72
  loc_A1BAEE: NewIfNullPr clsbase
  loc_A1BAF1: from_stack_1v = clsbase.RsFrmGet()
  loc_A1BAF6: FLdPr var_88
  loc_A1BAF9:  = Me.Fields
  loc_A1BAFE: FLdPr var_8C
  loc_A1BB01: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BB06: LitI2_Byte 0
  loc_A1BB08: LitVar_Missing var_E0
  loc_A1BB0B: LitI2_Byte 0
  loc_A1BB0D: FLdZeroAd var_A0
  loc_A1BB10: CVarAd
  loc_A1BB14: PopAdLdVar
  loc_A1BB15: FLdPr Me
  loc_A1BB18: MemLdI2 global_112
  loc_A1BB1B: CI4UI1
  loc_A1BB1C: FLdPr Me
  loc_A1BB1F: MemLdI2 global_110
  loc_A1BB22: CI4UI1
  loc_A1BB23: FLdPr Me
  loc_A1BB26: MemLdI2 global_108
  loc_A1BB29: CI4UI1
  loc_A1BB2A: FLdPr Me
  loc_A1BB2D: MemLdI2 global_106
  loc_A1BB30: CI4UI1
  loc_A1BB31: FLdPr Me
  loc_A1BB34: MemLdStr global_96
  loc_A1BB37: AryLock
  loc_A1BB3A: Ary1LdPr
  loc_A1BB3B: MemLdStr global_8
  loc_A1BB3E: AryLock
  loc_A1BB41: Ary1LdPr
  loc_A1BB42: MemLdStr global_8
  loc_A1BB45: AryLock
  loc_A1BB48: Ary1LdPr
  loc_A1BB49: MemLdStr global_8
  loc_A1BB4C: AryLock
  loc_A1BB4F: Ary1LdPr
  loc_A1BB50: MemLdRfVar from_stack_1.global_4
  loc_A1BB53: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A1BB58: AryUnlock
  loc_A1BB5B: AryUnlock
  loc_A1BB5E: AryUnlock
  loc_A1BB61: AryUnlock
  loc_A1BB64: FFreeAd var_88 = ""
  loc_A1BB6B: FFreeVar var_C0 = ""
  loc_A1BB72: Call Proc_148_37_B2E730()
  loc_A1BB77: ExitProcHresult
End Function

Private Function Proc_148_37_B2E730() 'B2E730
  'Data Table: 4C616C
  loc_B2DDD0: FLdPr Me
  loc_B2DDD3: MemLdI2 global_104
  loc_B2DDD6: LitI2_Byte 1
  loc_B2DDD8: AddI2
  loc_B2DDD9: FLdPr Me
  loc_B2DDDC: MemStI2 global_104
  loc_B2DDDF: LitI4 0
  loc_B2DDE4: FLdPr Me
  loc_B2DDE7: MemLdI2 global_104
  loc_B2DDEA: CI4UI1
  loc_B2DDEB: FLdPr Me
  loc_B2DDEE: MemLdI2 global_112
  loc_B2DDF1: CI4UI1
  loc_B2DDF2: FLdPr Me
  loc_B2DDF5: MemLdI2 global_110
  loc_B2DDF8: CI4UI1
  loc_B2DDF9: FLdPr Me
  loc_B2DDFC: MemLdI2 global_108
  loc_B2DDFF: CI4UI1
  loc_B2DE00: FLdPr Me
  loc_B2DE03: MemLdI2 global_106
  loc_B2DE06: CI4UI1
  loc_B2DE07: FLdPr Me
  loc_B2DE0A: MemLdStr global_96
  loc_B2DE0D: Ary1LdPr
  loc_B2DE0E: MemLdStr global_8
  loc_B2DE11: Ary1LdPr
  loc_B2DE12: MemLdStr global_8
  loc_B2DE15: Ary1LdPr
  loc_B2DE16: MemLdStr global_8
  loc_B2DE19: Ary1LdPr
  loc_B2DE1A: MemLdRfVar from_stack_1.global_8
  loc_B2DE1D: RedimPreserve
  loc_B2DE27: FLdPr Me
  loc_B2DE2A: MemLdI2 global_104
  loc_B2DE2D: CI4UI1
  loc_B2DE2E: FLdPr Me
  loc_B2DE31: MemLdI2 global_112
  loc_B2DE34: CI4UI1
  loc_B2DE35: FLdPr Me
  loc_B2DE38: MemLdI2 global_110
  loc_B2DE3B: CI4UI1
  loc_B2DE3C: FLdPr Me
  loc_B2DE3F: MemLdI2 global_108
  loc_B2DE42: CI4UI1
  loc_B2DE43: FLdPr Me
  loc_B2DE46: MemLdI2 global_106
  loc_B2DE49: CI4UI1
  loc_B2DE4A: FLdPr Me
  loc_B2DE4D: MemLdStr global_96
  loc_B2DE50: AryLock
  loc_B2DE53: Ary1LdPr
  loc_B2DE54: MemLdStr global_8
  loc_B2DE57: AryLock
  loc_B2DE5A: Ary1LdPr
  loc_B2DE5B: MemLdStr global_8
  loc_B2DE5E: AryLock
  loc_B2DE61: Ary1LdPr
  loc_B2DE62: MemLdStr global_8
  loc_B2DE65: AryLock
  loc_B2DE68: Ary1LdPr
  loc_B2DE69: MemLdStr global_8
  loc_B2DE6C: AryLock
  loc_B2DE6F: Ary1LdRf
  loc_B2DE70: FStR4 var_9C
  loc_B2DE73: FLdRfVar var_B8
  loc_B2DE76: LitVarStr var_B4, "CodiCuco"
  loc_B2DE7B: PopAdLdVar
  loc_B2DE7C: FLdRfVar var_A4
  loc_B2DE7F: FLdRfVar var_A0
  loc_B2DE82: FLdPr Me
  loc_B2DE85: MemLdRfVar from_stack_1.global_72
  loc_B2DE88: NewIfNullPr clsbase
  loc_B2DE8B: from_stack_1v = clsbase.RsFrmGet()
  loc_B2DE90: FLdPr var_A0
  loc_B2DE93:  = Me.Fields
  loc_B2DE98: FLdPr var_A4
  loc_B2DE9B: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DEA0: LitI2_Byte 0
  loc_B2DEA2: LitVar_Missing var_E8
  loc_B2DEA5: LitI2_Byte 0
  loc_B2DEA7: FLdZeroAd var_B8
  loc_B2DEAA: CVarAd
  loc_B2DEAE: PopAdLdVar
  loc_B2DEAF: FMemLdRf 48
  loc_B2DEB4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2DEB9: FFreeAd var_A0 = ""
  loc_B2DEC0: FFreeVar var_C8 = ""
  loc_B2DEC7: FLdRfVar var_B8
  loc_B2DECA: LitVarStr var_B4, "DetaCuco"
  loc_B2DECF: PopAdLdVar
  loc_B2DED0: FLdRfVar var_A4
  loc_B2DED3: FLdRfVar var_A0
  loc_B2DED6: FLdPr Me
  loc_B2DED9: MemLdRfVar from_stack_1.global_72
  loc_B2DEDC: NewIfNullPr clsbase
  loc_B2DEDF: from_stack_1v = clsbase.RsFrmGet()
  loc_B2DEE4: FLdPr var_A0
  loc_B2DEE7:  = Me.Fields
  loc_B2DEEC: FLdPr var_A4
  loc_B2DEEF: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DEF4: LitI2_Byte 0
  loc_B2DEF6: LitVar_Missing var_E8
  loc_B2DEF9: LitI2_Byte 0
  loc_B2DEFB: FLdZeroAd var_B8
  loc_B2DEFE: CVarAd
  loc_B2DF02: PopAdLdVar
  loc_B2DF03: FMemLdRf 48
  loc_B2DF08: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2DF0D: FFreeAd var_A0 = ""
  loc_B2DF14: FFreeVar var_C8 = ""
  loc_B2DF1B: FLdRfVar var_B8
  loc_B2DF1E: LitVarStr var_B4, "original"
  loc_B2DF23: PopAdLdVar
  loc_B2DF24: FLdRfVar var_A4
  loc_B2DF27: FLdRfVar var_A0
  loc_B2DF2A: FLdPr Me
  loc_B2DF2D: MemLdRfVar from_stack_1.global_72
  loc_B2DF30: NewIfNullPr clsbase
  loc_B2DF33: from_stack_1v = clsbase.RsFrmGet()
  loc_B2DF38: FLdPr var_A0
  loc_B2DF3B:  = Me.Fields
  loc_B2DF40: FLdPr var_A4
  loc_B2DF43: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DF48: LitI2_Byte 0
  loc_B2DF4A: FLdPr Me
  loc_B2DF4D: MemLdI2 global_112
  loc_B2DF50: CI4UI1
  loc_B2DF51: FLdPr Me
  loc_B2DF54: MemLdI2 global_110
  loc_B2DF57: CI4UI1
  loc_B2DF58: FLdPr Me
  loc_B2DF5B: MemLdI2 global_108
  loc_B2DF5E: CI4UI1
  loc_B2DF5F: FLdPr Me
  loc_B2DF62: MemLdI2 global_106
  loc_B2DF65: CI4UI1
  loc_B2DF66: FLdPr Me
  loc_B2DF69: MemLdStr global_96
  loc_B2DF6C: AryLock
  loc_B2DF6F: Ary1LdPr
  loc_B2DF70: MemLdStr global_8
  loc_B2DF73: AryLock
  loc_B2DF76: Ary1LdPr
  loc_B2DF77: MemLdStr global_8
  loc_B2DF7A: AryLock
  loc_B2DF7D: Ary1LdPr
  loc_B2DF7E: MemLdStr global_8
  loc_B2DF81: AryLock
  loc_B2DF84: Ary1LdPr
  loc_B2DF85: MemLdRfVar from_stack_1.global_20
  loc_B2DF88: CVarRef
  loc_B2DF8D: LitI2_Byte &HFF
  loc_B2DF8F: FLdZeroAd var_B8
  loc_B2DF92: CVarAd
  loc_B2DF96: PopAdLdVar
  loc_B2DF97: FMemLdRf 48
  loc_B2DF9C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2DFA1: AryUnlock
  loc_B2DFA4: AryUnlock
  loc_B2DFA7: AryUnlock
  loc_B2DFAA: AryUnlock
  loc_B2DFAD: FFreeAd var_A0 = ""
  loc_B2DFB4: FFree1Var var_C8 = ""
  loc_B2DFB7: FLdRfVar var_B8
  loc_B2DFBA: LitVarStr var_B4, "NoleAsie"
  loc_B2DFBF: PopAdLdVar
  loc_B2DFC0: FLdRfVar var_A4
  loc_B2DFC3: FLdRfVar var_A0
  loc_B2DFC6: FLdPr Me
  loc_B2DFC9: MemLdRfVar from_stack_1.global_72
  loc_B2DFCC: NewIfNullPr clsbase
  loc_B2DFCF: from_stack_1v = clsbase.RsFrmGet()
  loc_B2DFD4: FLdPr var_A0
  loc_B2DFD7:  = Me.Fields
  loc_B2DFDC: FLdPr var_A4
  loc_B2DFDF: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DFE4: LitI2_Byte 0
  loc_B2DFE6: LitVar_Missing var_E8
  loc_B2DFE9: LitI2_Byte 0
  loc_B2DFEB: FLdZeroAd var_B8
  loc_B2DFEE: CVarAd
  loc_B2DFF2: PopAdLdVar
  loc_B2DFF3: FMemLdRf 48
  loc_B2DFF8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2DFFD: FFreeAd var_A0 = ""
  loc_B2E004: FFreeVar var_C8 = ""
  loc_B2E00B: FLdRfVar var_B8
  loc_B2E00E: LitVarStr var_B4, "Aumentos"
  loc_B2E013: PopAdLdVar
  loc_B2E014: FLdRfVar var_A4
  loc_B2E017: FLdRfVar var_A0
  loc_B2E01A: FLdPr Me
  loc_B2E01D: MemLdRfVar from_stack_1.global_72
  loc_B2E020: NewIfNullPr clsbase
  loc_B2E023: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E028: FLdPr var_A0
  loc_B2E02B:  = Me.Fields
  loc_B2E030: FLdPr var_A4
  loc_B2E033: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E038: LitI2_Byte 0
  loc_B2E03A: FLdPr Me
  loc_B2E03D: MemLdI2 global_112
  loc_B2E040: CI4UI1
  loc_B2E041: FLdPr Me
  loc_B2E044: MemLdI2 global_110
  loc_B2E047: CI4UI1
  loc_B2E048: FLdPr Me
  loc_B2E04B: MemLdI2 global_108
  loc_B2E04E: CI4UI1
  loc_B2E04F: FLdPr Me
  loc_B2E052: MemLdI2 global_106
  loc_B2E055: CI4UI1
  loc_B2E056: FLdPr Me
  loc_B2E059: MemLdStr global_96
  loc_B2E05C: AryLock
  loc_B2E05F: Ary1LdPr
  loc_B2E060: MemLdStr global_8
  loc_B2E063: AryLock
  loc_B2E066: Ary1LdPr
  loc_B2E067: MemLdStr global_8
  loc_B2E06A: AryLock
  loc_B2E06D: Ary1LdPr
  loc_B2E06E: MemLdStr global_8
  loc_B2E071: AryLock
  loc_B2E074: Ary1LdPr
  loc_B2E075: MemLdRfVar from_stack_1.global_28
  loc_B2E078: CVarRef
  loc_B2E07D: LitI2_Byte &HFF
  loc_B2E07F: FLdZeroAd var_B8
  loc_B2E082: CVarAd
  loc_B2E086: PopAdLdVar
  loc_B2E087: FMemLdRf 48
  loc_B2E08C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E091: AryUnlock
  loc_B2E094: AryUnlock
  loc_B2E097: AryUnlock
  loc_B2E09A: AryUnlock
  loc_B2E09D: FFreeAd var_A0 = ""
  loc_B2E0A4: FFree1Var var_C8 = ""
  loc_B2E0A7: FLdRfVar var_B8
  loc_B2E0AA: LitVarStr var_B4, "Disminuciones"
  loc_B2E0AF: PopAdLdVar
  loc_B2E0B0: FLdRfVar var_A4
  loc_B2E0B3: FLdRfVar var_A0
  loc_B2E0B6: FLdPr Me
  loc_B2E0B9: MemLdRfVar from_stack_1.global_72
  loc_B2E0BC: NewIfNullPr clsbase
  loc_B2E0BF: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E0C4: FLdPr var_A0
  loc_B2E0C7:  = Me.Fields
  loc_B2E0CC: FLdPr var_A4
  loc_B2E0CF: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E0D4: LitI2_Byte 0
  loc_B2E0D6: FLdPr Me
  loc_B2E0D9: MemLdI2 global_112
  loc_B2E0DC: CI4UI1
  loc_B2E0DD: FLdPr Me
  loc_B2E0E0: MemLdI2 global_110
  loc_B2E0E3: CI4UI1
  loc_B2E0E4: FLdPr Me
  loc_B2E0E7: MemLdI2 global_108
  loc_B2E0EA: CI4UI1
  loc_B2E0EB: FLdPr Me
  loc_B2E0EE: MemLdI2 global_106
  loc_B2E0F1: CI4UI1
  loc_B2E0F2: FLdPr Me
  loc_B2E0F5: MemLdStr global_96
  loc_B2E0F8: AryLock
  loc_B2E0FB: Ary1LdPr
  loc_B2E0FC: MemLdStr global_8
  loc_B2E0FF: AryLock
  loc_B2E102: Ary1LdPr
  loc_B2E103: MemLdStr global_8
  loc_B2E106: AryLock
  loc_B2E109: Ary1LdPr
  loc_B2E10A: MemLdStr global_8
  loc_B2E10D: AryLock
  loc_B2E110: Ary1LdPr
  loc_B2E111: MemLdRfVar from_stack_1.global_32
  loc_B2E114: CVarRef
  loc_B2E119: LitI2_Byte &HFF
  loc_B2E11B: FLdZeroAd var_B8
  loc_B2E11E: CVarAd
  loc_B2E122: PopAdLdVar
  loc_B2E123: FMemLdRf 48
  loc_B2E128: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E12D: AryUnlock
  loc_B2E130: AryUnlock
  loc_B2E133: AryUnlock
  loc_B2E136: AryUnlock
  loc_B2E139: FFreeAd var_A0 = ""
  loc_B2E140: FFree1Var var_C8 = ""
  loc_B2E143: FLdRfVar var_B8
  loc_B2E146: LitVarStr var_B4, "definitivo"
  loc_B2E14B: PopAdLdVar
  loc_B2E14C: FLdRfVar var_A4
  loc_B2E14F: FLdRfVar var_A0
  loc_B2E152: FLdPr Me
  loc_B2E155: MemLdRfVar from_stack_1.global_72
  loc_B2E158: NewIfNullPr clsbase
  loc_B2E15B: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E160: FLdPr var_A0
  loc_B2E163:  = Me.Fields
  loc_B2E168: FLdPr var_A4
  loc_B2E16B: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E170: LitI2_Byte 0
  loc_B2E172: FLdPr Me
  loc_B2E175: MemLdI2 global_112
  loc_B2E178: CI4UI1
  loc_B2E179: FLdPr Me
  loc_B2E17C: MemLdI2 global_110
  loc_B2E17F: CI4UI1
  loc_B2E180: FLdPr Me
  loc_B2E183: MemLdI2 global_108
  loc_B2E186: CI4UI1
  loc_B2E187: FLdPr Me
  loc_B2E18A: MemLdI2 global_106
  loc_B2E18D: CI4UI1
  loc_B2E18E: FLdPr Me
  loc_B2E191: MemLdStr global_96
  loc_B2E194: AryLock
  loc_B2E197: Ary1LdPr
  loc_B2E198: MemLdStr global_8
  loc_B2E19B: AryLock
  loc_B2E19E: Ary1LdPr
  loc_B2E19F: MemLdStr global_8
  loc_B2E1A2: AryLock
  loc_B2E1A5: Ary1LdPr
  loc_B2E1A6: MemLdStr global_8
  loc_B2E1A9: AryLock
  loc_B2E1AC: Ary1LdPr
  loc_B2E1AD: MemLdRfVar from_stack_1.global_36
  loc_B2E1B0: CVarRef
  loc_B2E1B5: LitI2_Byte &HFF
  loc_B2E1B7: FLdZeroAd var_B8
  loc_B2E1BA: CVarAd
  loc_B2E1BE: PopAdLdVar
  loc_B2E1BF: FMemLdRf 48
  loc_B2E1C4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E1C9: AryUnlock
  loc_B2E1CC: AryUnlock
  loc_B2E1CF: AryUnlock
  loc_B2E1D2: AryUnlock
  loc_B2E1D5: FFreeAd var_A0 = ""
  loc_B2E1DC: FFree1Var var_C8 = ""
  loc_B2E1DF: FLdRfVar var_B8
  loc_B2E1E2: LitVarStr var_B4, "ingresado"
  loc_B2E1E7: PopAdLdVar
  loc_B2E1E8: FLdRfVar var_A4
  loc_B2E1EB: FLdRfVar var_A0
  loc_B2E1EE: FLdPr Me
  loc_B2E1F1: MemLdRfVar from_stack_1.global_72
  loc_B2E1F4: NewIfNullPr clsbase
  loc_B2E1F7: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E1FC: FLdPr var_A0
  loc_B2E1FF:  = Me.Fields
  loc_B2E204: FLdPr var_A4
  loc_B2E207: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E20C: LitI2_Byte 0
  loc_B2E20E: FLdPr Me
  loc_B2E211: MemLdI2 global_112
  loc_B2E214: CI4UI1
  loc_B2E215: FLdPr Me
  loc_B2E218: MemLdI2 global_110
  loc_B2E21B: CI4UI1
  loc_B2E21C: FLdPr Me
  loc_B2E21F: MemLdI2 global_108
  loc_B2E222: CI4UI1
  loc_B2E223: FLdPr Me
  loc_B2E226: MemLdI2 global_106
  loc_B2E229: CI4UI1
  loc_B2E22A: FLdPr Me
  loc_B2E22D: MemLdStr global_96
  loc_B2E230: AryLock
  loc_B2E233: Ary1LdPr
  loc_B2E234: MemLdStr global_8
  loc_B2E237: AryLock
  loc_B2E23A: Ary1LdPr
  loc_B2E23B: MemLdStr global_8
  loc_B2E23E: AryLock
  loc_B2E241: Ary1LdPr
  loc_B2E242: MemLdStr global_8
  loc_B2E245: AryLock
  loc_B2E248: Ary1LdPr
  loc_B2E249: MemLdRfVar from_stack_1.global_40
  loc_B2E24C: CVarRef
  loc_B2E251: LitI2_Byte &HFF
  loc_B2E253: FLdZeroAd var_B8
  loc_B2E256: CVarAd
  loc_B2E25A: PopAdLdVar
  loc_B2E25B: FMemLdRf 48
  loc_B2E260: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E265: AryUnlock
  loc_B2E268: AryUnlock
  loc_B2E26B: AryUnlock
  loc_B2E26E: AryUnlock
  loc_B2E271: FFreeAd var_A0 = ""
  loc_B2E278: FFree1Var var_C8 = ""
  loc_B2E27B: FLdRfVar var_B8
  loc_B2E27E: LitVarStr var_B4, "diferencia"
  loc_B2E283: PopAdLdVar
  loc_B2E284: FLdRfVar var_A4
  loc_B2E287: FLdRfVar var_A0
  loc_B2E28A: FLdPr Me
  loc_B2E28D: MemLdRfVar from_stack_1.global_72
  loc_B2E290: NewIfNullPr clsbase
  loc_B2E293: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E298: FLdPr var_A0
  loc_B2E29B:  = Me.Fields
  loc_B2E2A0: FLdPr var_A4
  loc_B2E2A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E2A8: LitI2_Byte 0
  loc_B2E2AA: FLdPr Me
  loc_B2E2AD: MemLdI2 global_112
  loc_B2E2B0: CI4UI1
  loc_B2E2B1: FLdPr Me
  loc_B2E2B4: MemLdI2 global_110
  loc_B2E2B7: CI4UI1
  loc_B2E2B8: FLdPr Me
  loc_B2E2BB: MemLdI2 global_108
  loc_B2E2BE: CI4UI1
  loc_B2E2BF: FLdPr Me
  loc_B2E2C2: MemLdI2 global_106
  loc_B2E2C5: CI4UI1
  loc_B2E2C6: FLdPr Me
  loc_B2E2C9: MemLdStr global_96
  loc_B2E2CC: AryLock
  loc_B2E2CF: Ary1LdPr
  loc_B2E2D0: MemLdStr global_8
  loc_B2E2D3: AryLock
  loc_B2E2D6: Ary1LdPr
  loc_B2E2D7: MemLdStr global_8
  loc_B2E2DA: AryLock
  loc_B2E2DD: Ary1LdPr
  loc_B2E2DE: MemLdStr global_8
  loc_B2E2E1: AryLock
  loc_B2E2E4: Ary1LdPr
  loc_B2E2E5: MemLdRfVar from_stack_1.global_44
  loc_B2E2E8: CVarRef
  loc_B2E2ED: LitI2_Byte &HFF
  loc_B2E2EF: FLdZeroAd var_B8
  loc_B2E2F2: CVarAd
  loc_B2E2F6: PopAdLdVar
  loc_B2E2F7: FMemLdRf 48
  loc_B2E2FC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E301: AryUnlock
  loc_B2E304: AryUnlock
  loc_B2E307: AryUnlock
  loc_B2E30A: AryUnlock
  loc_B2E30D: FFreeAd var_A0 = ""
  loc_B2E314: FFree1Var var_C8 = ""
  loc_B2E317: FLdRfVar var_B8
  loc_B2E31A: LitVarStr var_B4, "Ingremes1"
  loc_B2E31F: PopAdLdVar
  loc_B2E320: FLdRfVar var_A4
  loc_B2E323: FLdRfVar var_A0
  loc_B2E326: FLdPr Me
  loc_B2E329: MemLdRfVar from_stack_1.global_72
  loc_B2E32C: NewIfNullPr clsbase
  loc_B2E32F: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E334: FLdPr var_A0
  loc_B2E337:  = Me.Fields
  loc_B2E33C: FLdPr var_A4
  loc_B2E33F: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E344: LitI2_Byte 0
  loc_B2E346: LitVar_Missing var_E8
  loc_B2E349: LitI2_Byte &HFF
  loc_B2E34B: FLdZeroAd var_B8
  loc_B2E34E: CVarAd
  loc_B2E352: PopAdLdVar
  loc_B2E353: FMemLdRf 48
  loc_B2E358: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E35D: FFreeAd var_A0 = ""
  loc_B2E364: FFreeVar var_C8 = ""
  loc_B2E36B: FLdRfVar var_B8
  loc_B2E36E: LitVarStr var_B4, "Ingremes2"
  loc_B2E373: PopAdLdVar
  loc_B2E374: FLdRfVar var_A4
  loc_B2E377: FLdRfVar var_A0
  loc_B2E37A: FLdPr Me
  loc_B2E37D: MemLdRfVar from_stack_1.global_72
  loc_B2E380: NewIfNullPr clsbase
  loc_B2E383: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E388: FLdPr var_A0
  loc_B2E38B:  = Me.Fields
  loc_B2E390: FLdPr var_A4
  loc_B2E393: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E398: LitI2_Byte 0
  loc_B2E39A: LitVar_Missing var_E8
  loc_B2E39D: LitI2_Byte &HFF
  loc_B2E39F: FLdZeroAd var_B8
  loc_B2E3A2: CVarAd
  loc_B2E3A6: PopAdLdVar
  loc_B2E3A7: FMemLdRf 48
  loc_B2E3AC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E3B1: FFreeAd var_A0 = ""
  loc_B2E3B8: FFreeVar var_C8 = ""
  loc_B2E3BF: FLdRfVar var_B8
  loc_B2E3C2: LitVarStr var_B4, "Ingremes3"
  loc_B2E3C7: PopAdLdVar
  loc_B2E3C8: FLdRfVar var_A4
  loc_B2E3CB: FLdRfVar var_A0
  loc_B2E3CE: FLdPr Me
  loc_B2E3D1: MemLdRfVar from_stack_1.global_72
  loc_B2E3D4: NewIfNullPr clsbase
  loc_B2E3D7: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E3DC: FLdPr var_A0
  loc_B2E3DF:  = Me.Fields
  loc_B2E3E4: FLdPr var_A4
  loc_B2E3E7: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E3EC: LitI2_Byte 0
  loc_B2E3EE: LitVar_Missing var_E8
  loc_B2E3F1: LitI2_Byte &HFF
  loc_B2E3F3: FLdZeroAd var_B8
  loc_B2E3F6: CVarAd
  loc_B2E3FA: PopAdLdVar
  loc_B2E3FB: FMemLdRf 48
  loc_B2E400: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E405: FFreeAd var_A0 = ""
  loc_B2E40C: FFreeVar var_C8 = ""
  loc_B2E413: FLdRfVar var_B8
  loc_B2E416: LitVarStr var_B4, "Ingremes4"
  loc_B2E41B: PopAdLdVar
  loc_B2E41C: FLdRfVar var_A4
  loc_B2E41F: FLdRfVar var_A0
  loc_B2E422: FLdPr Me
  loc_B2E425: MemLdRfVar from_stack_1.global_72
  loc_B2E428: NewIfNullPr clsbase
  loc_B2E42B: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E430: FLdPr var_A0
  loc_B2E433:  = Me.Fields
  loc_B2E438: FLdPr var_A4
  loc_B2E43B: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E440: LitI2_Byte 0
  loc_B2E442: LitVar_Missing var_E8
  loc_B2E445: LitI2_Byte &HFF
  loc_B2E447: FLdZeroAd var_B8
  loc_B2E44A: CVarAd
  loc_B2E44E: PopAdLdVar
  loc_B2E44F: FMemLdRf 48
  loc_B2E454: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E459: FFreeAd var_A0 = ""
  loc_B2E460: FFreeVar var_C8 = ""
  loc_B2E467: FLdRfVar var_B8
  loc_B2E46A: LitVarStr var_B4, "Ingremes5"
  loc_B2E46F: PopAdLdVar
  loc_B2E470: FLdRfVar var_A4
  loc_B2E473: FLdRfVar var_A0
  loc_B2E476: FLdPr Me
  loc_B2E479: MemLdRfVar from_stack_1.global_72
  loc_B2E47C: NewIfNullPr clsbase
  loc_B2E47F: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E484: FLdPr var_A0
  loc_B2E487:  = Me.Fields
  loc_B2E48C: FLdPr var_A4
  loc_B2E48F: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E494: LitI2_Byte 0
  loc_B2E496: LitVar_Missing var_E8
  loc_B2E499: LitI2_Byte &HFF
  loc_B2E49B: FLdZeroAd var_B8
  loc_B2E49E: CVarAd
  loc_B2E4A2: PopAdLdVar
  loc_B2E4A3: FMemLdRf 48
  loc_B2E4A8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E4AD: FFreeAd var_A0 = ""
  loc_B2E4B4: FFreeVar var_C8 = ""
  loc_B2E4BB: FLdRfVar var_B8
  loc_B2E4BE: LitVarStr var_B4, "Ingremes6"
  loc_B2E4C3: PopAdLdVar
  loc_B2E4C4: FLdRfVar var_A4
  loc_B2E4C7: FLdRfVar var_A0
  loc_B2E4CA: FLdPr Me
  loc_B2E4CD: MemLdRfVar from_stack_1.global_72
  loc_B2E4D0: NewIfNullPr clsbase
  loc_B2E4D3: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E4D8: FLdPr var_A0
  loc_B2E4DB:  = Me.Fields
  loc_B2E4E0: FLdPr var_A4
  loc_B2E4E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E4E8: LitI2_Byte 0
  loc_B2E4EA: LitVar_Missing var_E8
  loc_B2E4ED: LitI2_Byte &HFF
  loc_B2E4EF: FLdZeroAd var_B8
  loc_B2E4F2: CVarAd
  loc_B2E4F6: PopAdLdVar
  loc_B2E4F7: FMemLdRf 48
  loc_B2E4FC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E501: FFreeAd var_A0 = ""
  loc_B2E508: FFreeVar var_C8 = ""
  loc_B2E50F: FLdRfVar var_B8
  loc_B2E512: LitVarStr var_B4, "Ingremes7"
  loc_B2E517: PopAdLdVar
  loc_B2E518: FLdRfVar var_A4
  loc_B2E51B: FLdRfVar var_A0
  loc_B2E51E: FLdPr Me
  loc_B2E521: MemLdRfVar from_stack_1.global_72
  loc_B2E524: NewIfNullPr clsbase
  loc_B2E527: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E52C: FLdPr var_A0
  loc_B2E52F:  = Me.Fields
  loc_B2E534: FLdPr var_A4
  loc_B2E537: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E53C: LitI2_Byte 0
  loc_B2E53E: LitVar_Missing var_E8
  loc_B2E541: LitI2_Byte &HFF
  loc_B2E543: FLdZeroAd var_B8
  loc_B2E546: CVarAd
  loc_B2E54A: PopAdLdVar
  loc_B2E54B: FMemLdRf 48
  loc_B2E550: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E555: FFreeAd var_A0 = ""
  loc_B2E55C: FFreeVar var_C8 = ""
  loc_B2E563: FLdRfVar var_B8
  loc_B2E566: LitVarStr var_B4, "Ingremes8"
  loc_B2E56B: PopAdLdVar
  loc_B2E56C: FLdRfVar var_A4
  loc_B2E56F: FLdRfVar var_A0
  loc_B2E572: FLdPr Me
  loc_B2E575: MemLdRfVar from_stack_1.global_72
  loc_B2E578: NewIfNullPr clsbase
  loc_B2E57B: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E580: FLdPr var_A0
  loc_B2E583:  = Me.Fields
  loc_B2E588: FLdPr var_A4
  loc_B2E58B: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E590: LitI2_Byte 0
  loc_B2E592: LitVar_Missing var_E8
  loc_B2E595: LitI2_Byte &HFF
  loc_B2E597: FLdZeroAd var_B8
  loc_B2E59A: CVarAd
  loc_B2E59E: PopAdLdVar
  loc_B2E59F: FMemLdRf 48
  loc_B2E5A4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E5A9: FFreeAd var_A0 = ""
  loc_B2E5B0: FFreeVar var_C8 = ""
  loc_B2E5B7: FLdRfVar var_B8
  loc_B2E5BA: LitVarStr var_B4, "Ingremes9"
  loc_B2E5BF: PopAdLdVar
  loc_B2E5C0: FLdRfVar var_A4
  loc_B2E5C3: FLdRfVar var_A0
  loc_B2E5C6: FLdPr Me
  loc_B2E5C9: MemLdRfVar from_stack_1.global_72
  loc_B2E5CC: NewIfNullPr clsbase
  loc_B2E5CF: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E5D4: FLdPr var_A0
  loc_B2E5D7:  = Me.Fields
  loc_B2E5DC: FLdPr var_A4
  loc_B2E5DF: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E5E4: LitI2_Byte 0
  loc_B2E5E6: LitVar_Missing var_E8
  loc_B2E5E9: LitI2_Byte &HFF
  loc_B2E5EB: FLdZeroAd var_B8
  loc_B2E5EE: CVarAd
  loc_B2E5F2: PopAdLdVar
  loc_B2E5F3: FMemLdRf 48
  loc_B2E5F8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E5FD: FFreeAd var_A0 = ""
  loc_B2E604: FFreeVar var_C8 = ""
  loc_B2E60B: FLdRfVar var_B8
  loc_B2E60E: LitVarStr var_B4, "Ingremes10"
  loc_B2E613: PopAdLdVar
  loc_B2E614: FLdRfVar var_A4
  loc_B2E617: FLdRfVar var_A0
  loc_B2E61A: FLdPr Me
  loc_B2E61D: MemLdRfVar from_stack_1.global_72
  loc_B2E620: NewIfNullPr clsbase
  loc_B2E623: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E628: FLdPr var_A0
  loc_B2E62B:  = Me.Fields
  loc_B2E630: FLdPr var_A4
  loc_B2E633: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E638: LitI2_Byte 0
  loc_B2E63A: LitVar_Missing var_E8
  loc_B2E63D: LitI2_Byte &HFF
  loc_B2E63F: FLdZeroAd var_B8
  loc_B2E642: CVarAd
  loc_B2E646: PopAdLdVar
  loc_B2E647: FMemLdRf 48
  loc_B2E64C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E651: FFreeAd var_A0 = ""
  loc_B2E658: FFreeVar var_C8 = ""
  loc_B2E65F: FLdRfVar var_B8
  loc_B2E662: LitVarStr var_B4, "Ingremes11"
  loc_B2E667: PopAdLdVar
  loc_B2E668: FLdRfVar var_A4
  loc_B2E66B: FLdRfVar var_A0
  loc_B2E66E: FLdPr Me
  loc_B2E671: MemLdRfVar from_stack_1.global_72
  loc_B2E674: NewIfNullPr clsbase
  loc_B2E677: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E67C: FLdPr var_A0
  loc_B2E67F:  = Me.Fields
  loc_B2E684: FLdPr var_A4
  loc_B2E687: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E68C: LitI2_Byte 0
  loc_B2E68E: LitVar_Missing var_E8
  loc_B2E691: LitI2_Byte &HFF
  loc_B2E693: FLdZeroAd var_B8
  loc_B2E696: CVarAd
  loc_B2E69A: PopAdLdVar
  loc_B2E69B: FMemLdRf 48
  loc_B2E6A0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E6A5: FFreeAd var_A0 = ""
  loc_B2E6AC: FFreeVar var_C8 = ""
  loc_B2E6B3: FLdRfVar var_B8
  loc_B2E6B6: LitVarStr var_B4, "Ingremes12"
  loc_B2E6BB: PopAdLdVar
  loc_B2E6BC: FLdRfVar var_A4
  loc_B2E6BF: FLdRfVar var_A0
  loc_B2E6C2: FLdPr Me
  loc_B2E6C5: MemLdRfVar from_stack_1.global_72
  loc_B2E6C8: NewIfNullPr clsbase
  loc_B2E6CB: from_stack_1v = clsbase.RsFrmGet()
  loc_B2E6D0: FLdPr var_A0
  loc_B2E6D3:  = Me.Fields
  loc_B2E6D8: FLdPr var_A4
  loc_B2E6DB: from_stack_2 = Me.Item(from_stack_1)
  loc_B2E6E0: LitI2_Byte 0
  loc_B2E6E2: LitVar_Missing var_E8
  loc_B2E6E5: LitI2_Byte &HFF
  loc_B2E6E7: FLdZeroAd var_B8
  loc_B2E6EA: CVarAd
  loc_B2E6EE: PopAdLdVar
  loc_B2E6EF: FMemLdRf 48
  loc_B2E6F4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2E6F9: FFreeAd var_A0 = ""
  loc_B2E700: FFreeVar var_C8 = ""
  loc_B2E707: LitI4 0
  loc_B2E70C: FStR4 var_9C
  loc_B2E70F: AryUnlock
  loc_B2E712: AryUnlock
  loc_B2E715: AryUnlock
  loc_B2E718: AryUnlock
  loc_B2E71B: AryUnlock
  loc_B2E71E: FLdPr Me
  loc_B2E721: MemLdRfVar from_stack_1.global_72
  loc_B2E724: NewIfNullPr clsbase
  loc_B2E727: Call clsbase.MoveSiguiente()
  loc_B2E72C: ExitProcHresult
End Function

Private Function Proc_148_38_9BE690(arg_C) '9BE690
  'Data Table: 4C616C
  loc_9BE5C0: LitI2_Byte 0
  loc_9BE5C2: FMemLdRf unk_4C617D
  loc_9BE5C7: CVarRef
  loc_9BE5CC: LitI2_Byte &HFF
  loc_9BE5CE: FMemLdR4 arg_C(8)
  loc_9BE5D3: CVarStr var_94
  loc_9BE5D6: PopAdLdVar
  loc_9BE5D7: FLdPr Me
  loc_9BE5DA: MemLdRfVar from_stack_1.global_116
  loc_9BE5DD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9BE5E2: LitI2_Byte 0
  loc_9BE5E4: FMemLdRf unk_4C617D
  loc_9BE5E9: CVarRef
  loc_9BE5EE: LitI2_Byte &HFF
  loc_9BE5F0: FMemLdR4 arg_C(16)
  loc_9BE5F5: CVarStr var_94
  loc_9BE5F8: PopAdLdVar
  loc_9BE5F9: FLdPr Me
  loc_9BE5FC: MemLdRfVar from_stack_1.global_116
  loc_9BE5FF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9BE604: LitI2_Byte 0
  loc_9BE606: FMemLdRf unk_4C617D
  loc_9BE60B: CVarRef
  loc_9BE610: LitI2_Byte &HFF
  loc_9BE612: FMemLdR4 arg_C(20)
  loc_9BE617: CVarStr var_94
  loc_9BE61A: PopAdLdVar
  loc_9BE61B: FLdPr Me
  loc_9BE61E: MemLdRfVar from_stack_1.global_116
  loc_9BE621: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9BE626: LitI2_Byte 0
  loc_9BE628: FMemLdRf unk_4C617D
  loc_9BE62D: CVarRef
  loc_9BE632: LitI2_Byte &HFF
  loc_9BE634: FMemLdR4 arg_C(24)
  loc_9BE639: CVarStr var_94
  loc_9BE63C: PopAdLdVar
  loc_9BE63D: FLdPr Me
  loc_9BE640: MemLdRfVar from_stack_1.global_116
  loc_9BE643: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9BE648: LitI2_Byte 0
  loc_9BE64A: FMemLdRf unk_4C617D
  loc_9BE64F: CVarRef
  loc_9BE654: LitI2_Byte &HFF
  loc_9BE656: FMemLdR4 arg_C(28)
  loc_9BE65B: CVarStr var_94
  loc_9BE65E: PopAdLdVar
  loc_9BE65F: FLdPr Me
  loc_9BE662: MemLdRfVar from_stack_1.global_116
  loc_9BE665: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9BE66A: LitI2_Byte 0
  loc_9BE66C: FMemLdRf unk_4C617D
  loc_9BE671: CVarRef
  loc_9BE676: LitI2_Byte &HFF
  loc_9BE678: FMemLdR4 arg_C(32)
  loc_9BE67D: CVarStr var_94
  loc_9BE680: PopAdLdVar
  loc_9BE681: FLdPr Me
  loc_9BE684: MemLdRfVar from_stack_1.global_116
  loc_9BE687: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9BE68C: ExitProcHresult
  loc_9BE68D: FLdPr var_178
End Function

Private Function Proc_148_39_ADD978() 'ADD978
  'Data Table: 4C616C
  loc_ADD310: LitVarStr var_94, "<html>"
  loc_ADD315: PopAdLdVar
  loc_ADD316: FLdPr Me
  loc_ADD319: MemLdRfVar from_stack_1.htmFile
  loc_ADD31C: LdPrVar
  loc_ADD31E: LateMemCall
  loc_ADD324: LitVarStr var_94, "<head>"
  loc_ADD329: PopAdLdVar
  loc_ADD32A: FLdPr Me
  loc_ADD32D: MemLdRfVar from_stack_1.htmFile
  loc_ADD330: LdPrVar
  loc_ADD332: LateMemCall
  loc_ADD338: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ADD33D: PopAdLdVar
  loc_ADD33E: FLdPr Me
  loc_ADD341: MemLdRfVar from_stack_1.htmFile
  loc_ADD344: LdPrVar
  loc_ADD346: LateMemCall
  loc_ADD34C: LitStr "<title>"
  loc_ADD34F: FLdRfVar var_A8
  loc_ADD352: FLdPr Me
  loc_ADD355:  = Me.Caption
  loc_ADD35A: ILdRf var_A8
  loc_ADD35D: ConcatStr
  loc_ADD35E: FStStrNoPop var_AC
  loc_ADD361: LitStr " - "
  loc_ADD364: ConcatStr
  loc_ADD365: FStStrNoPop var_B0
  loc_ADD368: LitStr "Municipalidad de Guaymallén"
  loc_ADD36B: ConcatStr
  loc_ADD36C: FStStrNoPop var_B4
  loc_ADD36F: LitStr "</title>"
  loc_ADD372: ConcatStr
  loc_ADD373: CVarStr var_C4
  loc_ADD376: PopAdLdVar
  loc_ADD377: FLdPr Me
  loc_ADD37A: MemLdRfVar from_stack_1.htmFile
  loc_ADD37D: LdPrVar
  loc_ADD37F: LateMemCall
  loc_ADD385: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_ADD390: FFree1Var var_C4 = ""
  loc_ADD393: LitStr vbNullString
  loc_ADD396: ILdRf Me
  loc_ADD399: CastAd
  loc_ADD39C: FStAdFunc var_C8
  loc_ADD39F: FLdRfVar var_C8
  loc_ADD3A2: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_ADD3A7: FFree1Ad var_C8
  loc_ADD3AA: LitI4 0
  loc_ADD3AF: FStStrCopy var_AC
  loc_ADD3B2: FLdRfVar var_AC
  loc_ADD3B5: LitI4 0
  loc_ADD3BA: FStStrCopy var_A8
  loc_ADD3BD: FLdRfVar var_A8
  loc_ADD3C0: LitI2_Byte &HFF
  loc_ADD3C2: PopTmpLdAd2 var_CA
  loc_ADD3C5: FLdPr Me
  loc_ADD3C8: MemLdRfVar from_stack_1.htmFile
  loc_ADD3CB: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ADD3D0: FFreeStr var_A8 = ""
  loc_ADD3D7: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_ADD3DC: PopAdLdVar
  loc_ADD3DD: FLdPr Me
  loc_ADD3E0: MemLdRfVar from_stack_1.htmFile
  loc_ADD3E3: LdPrVar
  loc_ADD3E5: LateMemCall
  loc_ADD3EB: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ADD3F0: PopAdLdVar
  loc_ADD3F1: FLdPr Me
  loc_ADD3F4: MemLdRfVar from_stack_1.htmFile
  loc_ADD3F7: LdPrVar
  loc_ADD3F9: LateMemCall
  loc_ADD3FF: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_ADD404: PopAdLdVar
  loc_ADD405: FLdPr Me
  loc_ADD408: MemLdRfVar from_stack_1.htmFile
  loc_ADD40B: LdPrVar
  loc_ADD40D: LateMemCall
  loc_ADD413: FLdPr Me
  loc_ADD416: MemLdI2 bLogos
  loc_ADD419: BranchF loc_ADD430
  loc_ADD41C: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_ADD421: PopAdLdVar
  loc_ADD422: FLdPr Me
  loc_ADD425: MemLdRfVar from_stack_1.htmFile
  loc_ADD428: LdPrVar
  loc_ADD42A: LateMemCall
  loc_ADD430: LitVarStr var_A4, "    <br><br>"
  loc_ADD435: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_ADD43A: FStVarCopyObj var_C4
  loc_ADD43D: FLdRfVar var_C4
  loc_ADD440: FLdRfVar var_DC
  loc_ADD443: ImpAdCallFPR4  = Ucase()
  loc_ADD448: FLdRfVar var_DC
  loc_ADD44B: ConcatVar var_EC
  loc_ADD44F: LitVarStr var_FC, "</p>"
  loc_ADD454: ConcatVar var_10C
  loc_ADD458: PopAdLdVar
  loc_ADD459: FLdPr Me
  loc_ADD45C: MemLdRfVar from_stack_1.htmFile
  loc_ADD45F: LdPrVar
  loc_ADD461: LateMemCall
  loc_ADD467: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_ADD472: LitStr "    <p>"
  loc_ADD475: FLdRfVar var_A8
  loc_ADD478: FLdPr Me
  loc_ADD47B:  = Me.Caption
  loc_ADD480: ILdRf var_A8
  loc_ADD483: ConcatStr
  loc_ADD484: FStStrNoPop var_AC
  loc_ADD487: LitStr "</p></th>"
  loc_ADD48A: ConcatStr
  loc_ADD48B: CVarStr var_C4
  loc_ADD48E: PopAdLdVar
  loc_ADD48F: FLdPr Me
  loc_ADD492: MemLdRfVar from_stack_1.htmFile
  loc_ADD495: LdPrVar
  loc_ADD497: LateMemCall
  loc_ADD49D: FFreeStr var_A8 = ""
  loc_ADD4A4: FFree1Var var_C4 = ""
  loc_ADD4A7: LitVarStr var_94, "  </tr>"
  loc_ADD4AC: PopAdLdVar
  loc_ADD4AD: FLdPr Me
  loc_ADD4B0: MemLdRfVar from_stack_1.htmFile
  loc_ADD4B3: LdPrVar
  loc_ADD4B5: LateMemCall
  loc_ADD4BB: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_ADD4C0: PopAdLdVar
  loc_ADD4C1: FLdPr Me
  loc_ADD4C4: MemLdRfVar from_stack_1.htmFile
  loc_ADD4C7: LdPrVar
  loc_ADD4C9: LateMemCall
  loc_ADD4CF: LitStr "    <td colspan=""2"" align=""left"">Repartición/Organismo: "
  loc_ADD4D2: LitStr "Municipalidad de Guaymallén"
  loc_ADD4D5: ConcatStr
  loc_ADD4D6: FStStrNoPop var_A8
  loc_ADD4D9: LitStr "</td>"
  loc_ADD4DC: ConcatStr
  loc_ADD4DD: CVarStr var_C4
  loc_ADD4E0: PopAdLdVar
  loc_ADD4E1: FLdPr Me
  loc_ADD4E4: MemLdRfVar from_stack_1.htmFile
  loc_ADD4E7: LdPrVar
  loc_ADD4E9: LateMemCall
  loc_ADD4EF: FFree1Str var_A8
  loc_ADD4F2: FFree1Var var_C4 = ""
  loc_ADD4F5: LitVarStr var_94, "  </tr>"
  loc_ADD4FA: PopAdLdVar
  loc_ADD4FB: FLdPr Me
  loc_ADD4FE: MemLdRfVar from_stack_1.htmFile
  loc_ADD501: LdPrVar
  loc_ADD503: LateMemCall
  loc_ADD509: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_ADD50E: PopAdLdVar
  loc_ADD50F: FLdPr Me
  loc_ADD512: MemLdRfVar from_stack_1.htmFile
  loc_ADD515: LdPrVar
  loc_ADD517: LateMemCall
  loc_ADD51D: FLdPr Me
  loc_ADD520: VCallAd Control_ID_mskHasta
  loc_ADD523: FStAdFunc var_138
  loc_ADD526: FLdPr var_138
  loc_ADD529: LateIdLdVar var_EC DispID_15 0
  loc_ADD530: PopAd
  loc_ADD532: FLdRfVar var_144
  loc_ADD535: FLdPr Me
  loc_ADD538: VCallAd Control_ID_CboPeriodo
  loc_ADD53B: FStAdFunc var_140
  loc_ADD53E: FLdPr var_140
  loc_ADD541:  = Me.Text
  loc_ADD546: ILdRf var_144
  loc_ADD549: CI2Str
  loc_ADD54B: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_ADD550: FStStr var_1CC
  loc_ADD553: LitStr "    <td>Ejercicio: "
  loc_ADD556: FLdRfVar var_A8
  loc_ADD559: FLdPr Me
  loc_ADD55C: VCallAd Control_ID_CboPeriodo
  loc_ADD55F: FStAdFunc var_C8
  loc_ADD562: FLdPr var_C8
  loc_ADD565:  = Me.Text
  loc_ADD56A: ILdRf var_A8
  loc_ADD56D: ConcatStr
  loc_ADD56E: FStStrNoPop var_AC
  loc_ADD571: LitStr "<br>Desde: "
  loc_ADD574: ConcatStr
  loc_ADD575: FStStrNoPop var_B0
  loc_ADD578: FLdPr Me
  loc_ADD57B: VCallAd Control_ID_mskDesde
  loc_ADD57E: FStAdFunc var_120
  loc_ADD581: FLdPr var_120
  loc_ADD584: LateIdLdVar var_C4 DispID_15 0
  loc_ADD58B: CStrVarTmp
  loc_ADD58C: FStStrNoPop var_B4
  loc_ADD58F: ConcatStr
  loc_ADD590: FStStrNoPop var_124
  loc_ADD593: LitStr "<br>Hasta: "
  loc_ADD596: ConcatStr
  loc_ADD597: FStStrNoPop var_12C
  loc_ADD59A: FLdPr Me
  loc_ADD59D: VCallAd Control_ID_mskHasta
  loc_ADD5A0: FStAdFunc var_128
  loc_ADD5A3: FLdPr var_128
  loc_ADD5A6: LateIdLdVar var_DC DispID_15 0
  loc_ADD5AD: CStrVarTmp
  loc_ADD5AE: FStStrNoPop var_130
  loc_ADD5B1: ConcatStr
  loc_ADD5B2: FStStrNoPop var_134
  loc_ADD5B5: LitStr " ("
  loc_ADD5B8: ConcatStr
  loc_ADD5B9: CVarStr var_178
  loc_ADD5BC: LitVarStr var_FC, "Definitivo"
  loc_ADD5C1: FStVarCopyObj var_158
  loc_ADD5C4: FLdRfVar var_158
  loc_ADD5C7: LitVarStr var_A4, "Provisorio"
  loc_ADD5CC: FStVarCopyObj var_10C
  loc_ADD5CF: FLdRfVar var_10C
  loc_ADD5D2: FLdRfVar var_EC
  loc_ADD5D5: CStrVarTmp
  loc_ADD5D6: FStStrNoPop var_13C
  loc_ADD5D9: CDateStr
  loc_ADD5DB: FLdZeroAd var_1CC
  loc_ADD5DE: FStStrNoPop var_148
  loc_ADD5E1: CDateStr
  loc_ADD5E3: GtR4
  loc_ADD5E4: CVarBoolI2 var_94
  loc_ADD5E8: FLdRfVar var_168
  loc_ADD5EB: ImpAdCallFPR4  = IIf(, , )
  loc_ADD5F0: FLdRfVar var_168
  loc_ADD5F3: ConcatVar var_188
  loc_ADD5F7: LitVarStr var_11C, ")"
  loc_ADD5FC: ConcatVar var_198
  loc_ADD600: LitVarStr var_1A8, "</td>"
  loc_ADD605: ConcatVar var_1B8
  loc_ADD609: PopAdLdVar
  loc_ADD60A: FLdPr Me
  loc_ADD60D: MemLdRfVar from_stack_1.htmFile
  loc_ADD610: LdPrVar
  loc_ADD612: LateMemCall
  loc_ADD618: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_13C = "": var_144 = "": var_148 = ""
  loc_ADD633: FFreeAd var_C8 = "": var_120 = "": var_128 = "": var_138 = ""
  loc_ADD640: FFreeVar var_C4 = "": var_DC = "": var_EC = "": var_94 = "": var_10C = "": var_158 = "": var_178 = "": var_168 = "": var_188 = "": var_198 = ""
  loc_ADD659: FLdRfVar var_CA
  loc_ADD65C: FLdPr Me
  loc_ADD65F: VCallAd Control_ID_CodiTicuCbo
  loc_ADD662: FStAdFunc var_C8
  loc_ADD665: FLdPr var_C8
  loc_ADD668:  = Me.ListIndex
  loc_ADD66D: FLdI2 var_CA
  loc_ADD670: LitI2_Byte 0
  loc_ADD672: GtI2
  loc_ADD673: FFree1Ad var_C8
  loc_ADD676: BranchF loc_ADD6BA
  loc_ADD679: LitStr "    <td align=""left"">Tipo de Cuenta Contable: "
  loc_ADD67C: FLdRfVar var_A8
  loc_ADD67F: FLdPr Me
  loc_ADD682: VCallAd Control_ID_CodiTicuCbo
  loc_ADD685: FStAdFunc var_C8
  loc_ADD688: FLdPr var_C8
  loc_ADD68B:  = Me.Text
  loc_ADD690: ILdRf var_A8
  loc_ADD693: ConcatStr
  loc_ADD694: FStStrNoPop var_AC
  loc_ADD697: LitStr "</td>"
  loc_ADD69A: ConcatStr
  loc_ADD69B: CVarStr var_C4
  loc_ADD69E: PopAdLdVar
  loc_ADD69F: FLdPr Me
  loc_ADD6A2: MemLdRfVar from_stack_1.htmFile
  loc_ADD6A5: LdPrVar
  loc_ADD6A7: LateMemCall
  loc_ADD6AD: FFreeStr var_A8 = ""
  loc_ADD6B4: FFree1Ad var_C8
  loc_ADD6B7: FFree1Var var_C4 = ""
  loc_ADD6BA: FLdPr Me
  loc_ADD6BD: VCallAd Control_ID_CodiCucoMsk
  loc_ADD6C0: FStAdFunc var_C8
  loc_ADD6C3: FLdPr var_C8
  loc_ADD6C6: LateIdLdVar var_C4 DispID_22 0
  loc_ADD6CD: CStrVarTmp
  loc_ADD6CE: FStStrNoPop var_A8
  loc_ADD6D1: LitStr vbNullString
  loc_ADD6D4: NeStr
  loc_ADD6D6: FFree1Str var_A8
  loc_ADD6D9: FFree1Ad var_C8
  loc_ADD6DC: FFree1Var var_C4 = ""
  loc_ADD6DF: BranchF loc_ADD7AB
  loc_ADD6E2: FLdPr Me
  loc_ADD6E5: VCallAd Control_ID_CodiCucoMsk
  loc_ADD6E8: FStAdFunc var_120
  loc_ADD6EB: FLdPr var_120
  loc_ADD6EE: LateIdLdVar var_DC DispID_22 0
  loc_ADD6F5: PopAd
  loc_ADD6F7: LitStr "    <td align=""left"">Cuenta Contable: "
  loc_ADD6FA: FLdPr Me
  loc_ADD6FD: VCallAd Control_ID_CodiCucoMsk
  loc_ADD700: FStAdFunc var_C8
  loc_ADD703: FLdPr var_C8
  loc_ADD706: LateIdLdVar var_C4 DispID_22 0
  loc_ADD70D: CStrVarTmp
  loc_ADD70E: FStStrNoPop var_A8
  loc_ADD711: ConcatStr
  loc_ADD712: CVarStr var_168
  loc_ADD715: LitVarStr var_FC, " - "
  loc_ADD71A: FStVarCopyObj var_10C
  loc_ADD71D: FLdRfVar var_10C
  loc_ADD720: LitVarStr var_A4, "..."
  loc_ADD725: FStVarCopyObj var_EC
  loc_ADD728: FLdRfVar var_EC
  loc_ADD72B: FLdRfVar var_DC
  loc_ADD72E: CStrVarTmp
  loc_ADD72F: FStStrNoPop var_AC
  loc_ADD732: FnLenStr
  loc_ADD733: LitI4 &HA
  loc_ADD738: LtI4
  loc_ADD739: CVarBoolI2 var_94
  loc_ADD73D: FLdRfVar var_158
  loc_ADD740: ImpAdCallFPR4  = IIf(, , )
  loc_ADD745: FLdRfVar var_158
  loc_ADD748: ConcatVar var_178
  loc_ADD74C: FLdRfVar var_B0
  loc_ADD74F: FLdPr Me
  loc_ADD752: VCallAd Control_ID_DetaCucoLbl
  loc_ADD755: FStAdFunc var_128
  loc_ADD758: FLdPr var_128
  loc_ADD75B:  = Me.Caption
  loc_ADD760: FLdZeroAd var_B0
  loc_ADD763: CVarStr var_188
  loc_ADD766: ConcatVar var_198
  loc_ADD76A: LitVarStr var_11C, "</td>"
  loc_ADD76F: ConcatVar var_1B8
  loc_ADD773: PopAdLdVar
  loc_ADD774: FLdPr Me
  loc_ADD777: MemLdRfVar from_stack_1.htmFile
  loc_ADD77A: LdPrVar
  loc_ADD77C: LateMemCall
  loc_ADD782: FFreeStr var_A8 = ""
  loc_ADD789: FFreeAd var_C8 = "": var_120 = ""
  loc_ADD792: FFreeVar var_C4 = "": var_DC = "": var_94 = "": var_EC = "": var_10C = "": var_168 = "": var_158 = "": var_178 = "": var_188 = "": var_198 = ""
  loc_ADD7AB: LitVarStr var_94, "  </p></th></tr>"
  loc_ADD7B0: PopAdLdVar
  loc_ADD7B1: FLdPr Me
  loc_ADD7B4: MemLdRfVar from_stack_1.htmFile
  loc_ADD7B7: LdPrVar
  loc_ADD7B9: LateMemCall
  loc_ADD7BF: LitVarStr var_94, "</table>"
  loc_ADD7C4: PopAdLdVar
  loc_ADD7C5: FLdPr Me
  loc_ADD7C8: MemLdRfVar from_stack_1.htmFile
  loc_ADD7CB: LdPrVar
  loc_ADD7CD: LateMemCall
  loc_ADD7D3: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ADD7D8: PopAdLdVar
  loc_ADD7D9: FLdPr Me
  loc_ADD7DC: MemLdRfVar from_stack_1.htmFile
  loc_ADD7DF: LdPrVar
  loc_ADD7E1: LateMemCall
  loc_ADD7E7: LitVarStr var_94, "  <THEAD>"
  loc_ADD7EC: PopAdLdVar
  loc_ADD7ED: FLdPr Me
  loc_ADD7F0: MemLdRfVar from_stack_1.htmFile
  loc_ADD7F3: LdPrVar
  loc_ADD7F5: LateMemCall
  loc_ADD7FB: LitVarStr var_94, " <tr class=""Encabezado"">"
  loc_ADD800: PopAdLdVar
  loc_ADD801: FLdPr Me
  loc_ADD804: MemLdRfVar from_stack_1.htmFile
  loc_ADD807: LdPrVar
  loc_ADD809: LateMemCall
  loc_ADD80F: LitVarStr var_94, "     <th rowspan=""2"" align=""center"">Cuenta Contable<br>"
  loc_ADD814: PopAdLdVar
  loc_ADD815: FLdPr Me
  loc_ADD818: MemLdRfVar from_stack_1.htmFile
  loc_ADD81B: LdPrVar
  loc_ADD81D: LateMemCall
  loc_ADD823: LitVarStr var_94, "     (1)</th>"
  loc_ADD828: PopAdLdVar
  loc_ADD829: FLdPr Me
  loc_ADD82C: MemLdRfVar from_stack_1.htmFile
  loc_ADD82F: LdPrVar
  loc_ADD831: LateMemCall
  loc_ADD837: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">Cálculo Original<br>"
  loc_ADD83C: PopAdLdVar
  loc_ADD83D: FLdPr Me
  loc_ADD840: MemLdRfVar from_stack_1.htmFile
  loc_ADD843: LdPrVar
  loc_ADD845: LateMemCall
  loc_ADD84B: LitVarStr var_94, "       (2)</th>"
  loc_ADD850: PopAdLdVar
  loc_ADD851: FLdPr Me
  loc_ADD854: MemLdRfVar from_stack_1.htmFile
  loc_ADD857: LdPrVar
  loc_ADD859: LateMemCall
  loc_ADD85F: LitVarStr var_94, "     <th width=""15" & Chr(37) & """ colspan=""3"" align=""center"">Modificaciones (3)</th>"
  loc_ADD864: PopAdLdVar
  loc_ADD865: FLdPr Me
  loc_ADD868: MemLdRfVar from_stack_1.htmFile
  loc_ADD86B: LdPrVar
  loc_ADD86D: LateMemCall
  loc_ADD873: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">Cálculo Definitivo<br>"
  loc_ADD878: PopAdLdVar
  loc_ADD879: FLdPr Me
  loc_ADD87C: MemLdRfVar from_stack_1.htmFile
  loc_ADD87F: LdPrVar
  loc_ADD881: LateMemCall
  loc_ADD887: LitVarStr var_94, "     (4)</th>"
  loc_ADD88C: PopAdLdVar
  loc_ADD88D: FLdPr Me
  loc_ADD890: MemLdRfVar from_stack_1.htmFile
  loc_ADD893: LdPrVar
  loc_ADD895: LateMemCall
  loc_ADD89B: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">Ingresado<br>"
  loc_ADD8A0: PopAdLdVar
  loc_ADD8A1: FLdPr Me
  loc_ADD8A4: MemLdRfVar from_stack_1.htmFile
  loc_ADD8A7: LdPrVar
  loc_ADD8A9: LateMemCall
  loc_ADD8AF: LitVarStr var_94, "     (5)</th>"
  loc_ADD8B4: PopAdLdVar
  loc_ADD8B5: FLdPr Me
  loc_ADD8B8: MemLdRfVar from_stack_1.htmFile
  loc_ADD8BB: LdPrVar
  loc_ADD8BD: LateMemCall
  loc_ADD8C3: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">Diferencia<br>"
  loc_ADD8C8: PopAdLdVar
  loc_ADD8C9: FLdPr Me
  loc_ADD8CC: MemLdRfVar from_stack_1.htmFile
  loc_ADD8CF: LdPrVar
  loc_ADD8D1: LateMemCall
  loc_ADD8D7: LitVarStr var_94, "     (6)</th>"
  loc_ADD8DC: PopAdLdVar
  loc_ADD8DD: FLdPr Me
  loc_ADD8E0: MemLdRfVar from_stack_1.htmFile
  loc_ADD8E3: LdPrVar
  loc_ADD8E5: LateMemCall
  loc_ADD8EB: LitVarStr var_94, "   </tr>"
  loc_ADD8F0: PopAdLdVar
  loc_ADD8F1: FLdPr Me
  loc_ADD8F4: MemLdRfVar from_stack_1.htmFile
  loc_ADD8F7: LdPrVar
  loc_ADD8F9: LateMemCall
  loc_ADD8FF: LitVarStr var_94, " <tr class=""Encabezado"">"
  loc_ADD904: PopAdLdVar
  loc_ADD905: FLdPr Me
  loc_ADD908: MemLdRfVar from_stack_1.htmFile
  loc_ADD90B: LdPrVar
  loc_ADD90D: LateMemCall
  loc_ADD913: LitVarStr var_94, "   <th align=""center"">Norma Legal </th>"
  loc_ADD918: PopAdLdVar
  loc_ADD919: FLdPr Me
  loc_ADD91C: MemLdRfVar from_stack_1.htmFile
  loc_ADD91F: LdPrVar
  loc_ADD921: LateMemCall
  loc_ADD927: LitVarStr var_94, "   <th align=""center"">Aumentos</th>"
  loc_ADD92C: PopAdLdVar
  loc_ADD92D: FLdPr Me
  loc_ADD930: MemLdRfVar from_stack_1.htmFile
  loc_ADD933: LdPrVar
  loc_ADD935: LateMemCall
  loc_ADD93B: LitVarStr var_94, "   <th align=""center"">Disminuciones</th>"
  loc_ADD940: PopAdLdVar
  loc_ADD941: FLdPr Me
  loc_ADD944: MemLdRfVar from_stack_1.htmFile
  loc_ADD947: LdPrVar
  loc_ADD949: LateMemCall
  loc_ADD94F: LitVarStr var_94, " </tr>"
  loc_ADD954: PopAdLdVar
  loc_ADD955: FLdPr Me
  loc_ADD958: MemLdRfVar from_stack_1.htmFile
  loc_ADD95B: LdPrVar
  loc_ADD95D: LateMemCall
  loc_ADD963: LitVarStr var_94, "  </THEAD>"
  loc_ADD968: PopAdLdVar
  loc_ADD969: FLdPr Me
  loc_ADD96C: MemLdRfVar from_stack_1.htmFile
  loc_ADD96F: LdPrVar
  loc_ADD971: LateMemCall
  loc_ADD977: ExitProcHresult
End Function

Private Function Proc_148_40_A010D0() 'A010D0
  'Data Table: 4C616C
  loc_A00F64: LitVarStr var_94, "</table>"
  loc_A00F69: PopAdLdVar
  loc_A00F6A: FLdPr Me
  loc_A00F6D: MemLdRfVar from_stack_1.htmFile
  loc_A00F70: LdPrVar
  loc_A00F72: LateMemCall
  loc_A00F78: LitVarStr var_94, "<br>"
  loc_A00F7D: PopAdLdVar
  loc_A00F7E: FLdPr Me
  loc_A00F81: MemLdRfVar from_stack_1.htmFile
  loc_A00F84: LdPrVar
  loc_A00F86: LateMemCall
  loc_A00F8C: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A00F91: PopAdLdVar
  loc_A00F92: FLdPr Me
  loc_A00F95: MemLdRfVar from_stack_1.htmFile
  loc_A00F98: LdPrVar
  loc_A00F9A: LateMemCall
  loc_A00FA0: LitVarStr var_94, "  <tr>"
  loc_A00FA5: PopAdLdVar
  loc_A00FA6: FLdPr Me
  loc_A00FA9: MemLdRfVar from_stack_1.htmFile
  loc_A00FAC: LdPrVar
  loc_A00FAE: LateMemCall
  loc_A00FB4: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A00FB9: PopAdLdVar
  loc_A00FBA: FLdPr Me
  loc_A00FBD: MemLdRfVar from_stack_1.htmFile
  loc_A00FC0: LdPrVar
  loc_A00FC2: LateMemCall
  loc_A00FC8: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A00FCD: PopAdLdVar
  loc_A00FCE: FLdPr Me
  loc_A00FD1: MemLdRfVar from_stack_1.htmFile
  loc_A00FD4: LdPrVar
  loc_A00FD6: LateMemCall
  loc_A00FDC: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A00FE1: PopAdLdVar
  loc_A00FE2: FLdPr Me
  loc_A00FE5: MemLdRfVar from_stack_1.htmFile
  loc_A00FE8: LdPrVar
  loc_A00FEA: LateMemCall
  loc_A00FF0: LitVarStr var_94, "          <map name=""Map"">"
  loc_A00FF5: PopAdLdVar
  loc_A00FF6: FLdPr Me
  loc_A00FF9: MemLdRfVar from_stack_1.htmFile
  loc_A00FFC: LdPrVar
  loc_A00FFE: LateMemCall
  loc_A01004: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A01009: PopAdLdVar
  loc_A0100A: FLdPr Me
  loc_A0100D: MemLdRfVar from_stack_1.htmFile
  loc_A01010: LdPrVar
  loc_A01012: LateMemCall
  loc_A01018: LitVarStr var_94, "          </map>"
  loc_A0101D: PopAdLdVar
  loc_A0101E: FLdPr Me
  loc_A01021: MemLdRfVar from_stack_1.htmFile
  loc_A01024: LdPrVar
  loc_A01026: LateMemCall
  loc_A0102C: LitVarStr var_94, "    </div></th>"
  loc_A01031: PopAdLdVar
  loc_A01032: FLdPr Me
  loc_A01035: MemLdRfVar from_stack_1.htmFile
  loc_A01038: LdPrVar
  loc_A0103A: LateMemCall
  loc_A01040: LitVarStr var_94, "  </tr>"
  loc_A01045: PopAdLdVar
  loc_A01046: FLdPr Me
  loc_A01049: MemLdRfVar from_stack_1.htmFile
  loc_A0104C: LdPrVar
  loc_A0104E: LateMemCall
  loc_A01054: LitVarStr var_94, "  <tr>"
  loc_A01059: PopAdLdVar
  loc_A0105A: FLdPr Me
  loc_A0105D: MemLdRfVar from_stack_1.htmFile
  loc_A01060: LdPrVar
  loc_A01062: LateMemCall
  loc_A01068: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A0106D: PopAdLdVar
  loc_A0106E: FLdPr Me
  loc_A01071: MemLdRfVar from_stack_1.htmFile
  loc_A01074: LdPrVar
  loc_A01076: LateMemCall
  loc_A0107C: LitVarStr var_94, "  </tr>"
  loc_A01081: PopAdLdVar
  loc_A01082: FLdPr Me
  loc_A01085: MemLdRfVar from_stack_1.htmFile
  loc_A01088: LdPrVar
  loc_A0108A: LateMemCall
  loc_A01090: LitVarStr var_94, "</table>"
  loc_A01095: PopAdLdVar
  loc_A01096: FLdPr Me
  loc_A01099: MemLdRfVar from_stack_1.htmFile
  loc_A0109C: LdPrVar
  loc_A0109E: LateMemCall
  loc_A010A4: LitVarStr var_94, "</body>"
  loc_A010A9: PopAdLdVar
  loc_A010AA: FLdPr Me
  loc_A010AD: MemLdRfVar from_stack_1.htmFile
  loc_A010B0: LdPrVar
  loc_A010B2: LateMemCall
  loc_A010B8: LitVarStr var_94, "</html>"
  loc_A010BD: PopAdLdVar
  loc_A010BE: FLdPr Me
  loc_A010C1: MemLdRfVar from_stack_1.htmFile
  loc_A010C4: LdPrVar
  loc_A010C6: LateMemCall
  loc_A010CC: ExitProcHresult
End Function
