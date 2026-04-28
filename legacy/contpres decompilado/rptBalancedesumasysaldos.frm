VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptBalancedesumasysaldos
  Caption = "Balance de sumas y saldos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptBalancedesumasysaldos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7680
  ClientHeight = 5400
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3960
    Width = 3015
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5145
    Width = 7680
    Height = 255
    TabIndex = 19
    OleObjectBlob = "rptBalancedesumasysaldos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 4200
    Width = 735
    Height = 615
    TabIndex = 17
    Cancel = -1  'True
    Picture = "rptBalancedesumasysaldos.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptBalancedesumasysaldos.frx":0B9C
    Left = 3240
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3960
    Width = 3015
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 3855
    TabIndex = 0
    Begin VB.CheckBox chkExcluirCierrePatrimonial
      Caption = "Excluir Cierre Patrimonial"
      Left = 2040
      Top = 3000
      Width = 3135
      Height = 195
      TabIndex = 20
    End
    Begin VB.ComboBox CodiTicuCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2040
      Top = 1320
      Width = 5175
      Height = 315
      TabIndex = 7
    End
    Begin VB.CheckBox chkExcluirCierrePresupuestario
      Caption = "Excluir Cierre Presupuestario"
      Left = 2040
      Top = 2640
      Width = 3135
      Height = 195
      TabIndex = 10
    End
    Begin VB.CheckBox chkExcluirManuales
      Caption = "Excluir Asientos de Ajustes Manuales al Cierre"
      Left = 2040
      Top = 2280
      Width = 3615
      Height = 195
      TabIndex = 9
    End
    Begin VB.CheckBox chkSoloCajayBancos
      Caption = "Solo Caja y Bancos"
      Left = 2040
      Top = 1920
      Width = 1815
      Height = 195
      TabIndex = 8
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2040
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 2040
      Top = 840
      Width = 1575
      Height = 315
      TabIndex = 5
    End
    Begin VB.Label Label3
      Caption = "Tipo de Cuenta Contable:"
      Left = 90
      Top = 1320
      Width = 1815
      Height = 195
      TabIndex = 6
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 1560
      Top = 840
      Width = 345
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1320
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6720
    Top = 4320
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 18
    OleObjectBlob = "rptBalancedesumasysaldos.frx":0C00
  End
End

Attribute VB_Name = "rptBalancedesumasysaldos"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0058997C
  bStruc(56) As Byte ' String fields: 14
End Type

Private Type UDT_2_005C9650
  bStruc(68) As Byte ' String fields: 4
End Type

Private Type UDT_3_005C96A0
  bStruc(68) As Byte ' String fields: 4
End Type

Private Type UDT_4_005C96F0
  bStruc(68) As Byte ' String fields: 4
End Type


Private Sub cmdPredeterminada_Click() '957D8C
  'Data Table: 48F5A0
  loc_957D74: ILdRf Me
  loc_957D77: CastAd
  loc_957D7A: FStAdFunc var_88
  loc_957D7D: FLdRfVar var_88
  loc_957D80: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_957D85: FFree1Ad var_88
  loc_957D88: ExitProcHresult
End Sub

Private Sub cboMes_Validate(Cancel As Boolean) '9B83D4
  'Data Table: 48F5A0
  loc_9B832C: FLdRfVar var_8C
  loc_9B832F: FLdPr Me
  loc_9B8332: VCallAd Control_ID_cboPeriodo
  loc_9B8335: FStAdFunc var_88
  loc_9B8338: FLdPr var_88
  loc_9B833B:  = Me.Text
  loc_9B8340: FLdRfVar var_92
  loc_9B8343: FLdPr Me
  loc_9B8346: VCallAd Control_ID_cboMes
  loc_9B8349: FStAdFunc var_90
  loc_9B834C: FLdPr var_90
  loc_9B834F:  = Me.ListIndex
  loc_9B8354: FLdRfVar var_9C
  loc_9B8357: FLdI2 var_92
  loc_9B835A: FLdPr Me
  loc_9B835D: VCallAd Control_ID_cboMes
  loc_9B8360: FStAdFunc var_98
  loc_9B8363: FLdPr var_98
  loc_9B8366:  = Me.ItemData
  loc_9B836B: ILdRf var_9C
  loc_9B836E: CUI1I4
  loc_9B8370: ILdRf var_8C
  loc_9B8373: CI2Str
  loc_9B8375: ImpAdCallI2 Proc_266_31_9BB10C(, )
  loc_9B837A: FStStrNoPop var_A0
  loc_9B837D: FLdPr Me
  loc_9B8380: MemStStrCopy
  loc_9B8384: FFreeStr var_8C = ""
  loc_9B838B: FFreeAd var_88 = "": var_90 = ""
  loc_9B8394: FLdPr Me
  loc_9B8397: VCallAd Control_ID_cboMes
  loc_9B839A: FStAdFunc var_A4
  loc_9B839D: LitNothing
  loc_9B839F: CastAd
  loc_9B83A2: FStAdFunc var_98
  loc_9B83A5: FLdRfVar var_98
  loc_9B83A8: FLdZeroAd var_A4
  loc_9B83AB: FStAdFuncNoPop
  loc_9B83AE: CastAd
  loc_9B83B1: FStAdFunc var_90
  loc_9B83B4: FLdRfVar var_90
  loc_9B83B7: FLdPr Me
  loc_9B83BA: MemLdRfVar from_stack_1.global_116
  loc_9B83BD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B83C2: IStI2 Cancel
  loc_9B83C5: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9B83D0: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '976928
  'Data Table: 48F5A0
  loc_9768F8: LitVarStr var_94, "Cerrando..."
  loc_9768FD: PopAdLdVar
  loc_9768FE: FLdPr Me
  loc_976901: VCallAd Control_ID_statusBar
  loc_976904: FStAdFunc var_A8
  loc_976907: FLdPr var_A8
  loc_97690A: LateIdSt
  loc_97690F: FFree1Ad var_A8
  loc_976912: ILdRf Me
  loc_976915: FStAdNoPop
  loc_976919: ImpAdLdRf MemVar_C44F9C
  loc_97691C: NewIfNullPr Me
  loc_97691F: Me.Global.Unload from_stack_1
  loc_976924: FFree1Ad var_A8
  loc_976927: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9866D4
  'Data Table: 48F5A0
  loc_98669C: FLdPr Me
  loc_98669F: VCallAd Control_ID_statusBar
  loc_9866A2: FStAdFunc var_88
  loc_9866A5: FLdPr var_88
  loc_9866A8: LateIdLdVar var_98 DispID_1 0
  loc_9866AF: CStrVarTmp
  loc_9866B0: CVarStr var_A8
  loc_9866B3: PopAdLdVar
  loc_9866B4: FLdPr Me
  loc_9866B7: VCallAd Control_ID_statusBar
  loc_9866BA: FStAdFunc var_BC
  loc_9866BD: FLdPr var_BC
  loc_9866C0: LateIdSt
  loc_9866C5: FFreeAd var_88 = ""
  loc_9866CC: FFreeVar var_98 = ""
  loc_9866D3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '961624
  'Data Table: 48F5A0
  loc_96160C: LitI2_Byte 0
  loc_96160E: ILdRf Me
  loc_961611: CastAd
  loc_961614: FStAdFunc var_88
  loc_961617: FLdRfVar var_88
  loc_96161A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96161F: FFree1Ad var_88
  loc_961622: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B76C
  'Data Table: 48F5A0
  loc_96B750: LitI2_Byte &HFF
  loc_96B752: LitI2_Byte 0
  loc_96B754: ILdRf Me
  loc_96B757: CastAd
  loc_96B75A: FStAdFunc var_88
  loc_96B75D: FLdRfVar var_88
  loc_96B760: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B765: FFree1Ad var_88
  loc_96B768: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '960DD4
  'Data Table: 48F5A0
  loc_960DBC: ILdRf Me
  loc_960DBF: CastAd
  loc_960DC2: FStAdFunc var_88
  loc_960DC5: FLdRfVar var_88
  loc_960DC8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_960DCD: FFree1Ad var_88
  loc_960DD0: ExitProcHresult
End Sub

Private Sub Form_Load() 'A61B00
  'Data Table: 48F5A0
  loc_A617F8: LitStr "Municipalidad de Guaymallén"
  loc_A617FB: LitStr "Municipalidad de Malargüe"
  loc_A617FE: EqStr
  loc_A61800: BranchF loc_A61815
  loc_A61803: LitI2_Byte 0
  loc_A61805: ImpAdStI2 MemVar_C3D840
  loc_A61808: LitI2_Byte 0
  loc_A6180A: ImpAdStI2 MemVar_C3D844
  loc_A6180D: LitI2_Byte 0
  loc_A6180F: ImpAdStI2 MemVar_C3D842
  loc_A61812: Branch loc_A61824
  loc_A61815: LitI2_Byte &HFF
  loc_A61817: ImpAdStI2 MemVar_C3D840
  loc_A6181A: LitI2_Byte 0
  loc_A6181C: ImpAdStI2 MemVar_C3D844
  loc_A6181F: LitI2_Byte &HFF
  loc_A61821: ImpAdStI2 MemVar_C3D842
  loc_A61824: ILdRf Me
  loc_A61827: CastAd
  loc_A6182A: FStAdFunc var_94
  loc_A6182D: FLdRfVar var_94
  loc_A61830: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A61835: FFree1Ad var_94
  loc_A61838: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A6183B: FLdRfVar var_88
  loc_A6183E: NewIfNullPr clsperiodo
  loc_A61841: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A61846: FLdRfVar var_98
  loc_A61849: FLdRfVar var_88
  loc_A6184C: NewIfNullPr clsperiodo
  loc_A6184F: from_stack_1 = clsperiodo.RecordCount
  loc_A61854: ILdRf var_98
  loc_A61857: LitI4 0
  loc_A6185C: GtI4
  loc_A6185D: BranchF loc_A618F0
  loc_A61860: FLdRfVar var_88
  loc_A61863: NewIfNullPr clsperiodo
  loc_A61866: Call clsperiodo.MoveFirst()
  loc_A6186B: FLdRfVar var_9A
  loc_A6186E: FLdRfVar var_88
  loc_A61871: NewIfNullPr clsperiodo
  loc_A61874: from_stack_1 = clsperiodo.EOF
  loc_A61879: FLdI2 var_9A
  loc_A6187C: NotI4
  loc_A6187D: BranchF loc_A618F0
  loc_A61880: LitVar_Missing var_D8
  loc_A61883: PopAdLdVar
  loc_A61884: FLdRfVar var_C4
  loc_A61887: FLdRfVar var_B4
  loc_A6188A: LitVarStr var_B0, "PeriInfo"
  loc_A6188F: PopAdLdVar
  loc_A61890: FLdRfVar var_A0
  loc_A61893: FLdRfVar var_94
  loc_A61896: FLdRfVar var_88
  loc_A61899: NewIfNullPr clsperiodo
  loc_A6189C: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A618A1: FLdPr var_94
  loc_A618A4:  = Me.Fields
  loc_A618A9: FLdPr var_A0
  loc_A618AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A618B1: FLdPr var_B4
  loc_A618B4:  = Me.Value
  loc_A618B9: FLdRfVar var_C4
  loc_A618BC: CStrVarTmp
  loc_A618BD: FStStrNoPop var_C8
  loc_A618C0: FLdPr Me
  loc_A618C3: VCallAd Control_ID_cboPeriodo
  loc_A618C6: FStAdFunc var_DC
  loc_A618C9: FLdPr var_DC
  loc_A618CC: Me.AddItem from_stack_1, from_stack_2
  loc_A618D1: FFree1Str var_C8
  loc_A618D4: FFreeAd var_94 = "": var_A0 = "": var_B4 = ""
  loc_A618DF: FFree1Var var_C4 = ""
  loc_A618E2: FLdRfVar var_88
  loc_A618E5: NewIfNullPr clsperiodo
  loc_A618E8: Call clsperiodo.MoveSiguiente()
  loc_A618ED: Branch loc_A6186B
  loc_A618F0: LitI2_Byte 1
  loc_A618F2: FLdRfVar var_8E
  loc_A618F5: LitI2_Byte &HC
  loc_A618F7: ForI2 var_E0
  loc_A618FD: LitVar_Missing var_B0
  loc_A61900: PopAdLdVar
  loc_A61901: LitI2_Byte 0
  loc_A61903: FLdI2 var_8E
  loc_A61906: CI4UI1
  loc_A61907: ImpAdCallI2 MonthName(, )
  loc_A6190C: FStStrNoPop var_C8
  loc_A6190F: FLdPr Me
  loc_A61912: VCallAd Control_ID_cboMes
  loc_A61915: FStAdFunc var_94
  loc_A61918: FLdPr var_94
  loc_A6191B: Me.AddItem from_stack_1, from_stack_2
  loc_A61920: FFree1Str var_C8
  loc_A61923: FFree1Ad var_94
  loc_A61926: FLdI2 var_8E
  loc_A61929: CI4UI1
  loc_A6192A: FLdRfVar var_9A
  loc_A6192D: FLdPr Me
  loc_A61930: VCallAd Control_ID_cboMes
  loc_A61933: FStAdFunc var_94
  loc_A61936: FLdPr var_94
  loc_A61939:  = Me.NewIndex
  loc_A6193E: FLdI2 var_9A
  loc_A61941: FLdPr Me
  loc_A61944: VCallAd Control_ID_cboMes
  loc_A61947: FStAdFunc var_A0
  loc_A6194A: FLdPr var_A0
  loc_A6194D: Me.ItemData = from_stack_1
  loc_A61952: FFreeAd var_94 = ""
  loc_A61959: FLdRfVar var_8E
  loc_A6195C: NextI2 var_E0, loc_A618FD
  loc_A61961: LitStr "SELECT CodiTicu, DetaTicu FROM tipocuco ORDER BY CodiTicu"
  loc_A61964: FLdRfVar var_8C
  loc_A61967: NewIfNullPr clstipocuco
  loc_A6196A: Call clstipocuco.RedefineRS(from_stack_1v)
  loc_A6196F: FLdRfVar var_98
  loc_A61972: FLdRfVar var_8C
  loc_A61975: NewIfNullPr clstipocuco
  loc_A61978: from_stack_1 = clstipocuco.RecordCount
  loc_A6197D: ILdRf var_98
  loc_A61980: LitI4 0
  loc_A61985: GtI4
  loc_A61986: BranchF loc_A61AF9
  loc_A61989: LitVar_Missing var_B0
  loc_A6198C: PopAdLdVar
  loc_A6198D: LitStr "TODOS"
  loc_A61990: FLdPr Me
  loc_A61993: VCallAd Control_ID_CodiTicuCbo
  loc_A61996: FStAdFunc var_94
  loc_A61999: FLdPr var_94
  loc_A6199C: Me.AddItem from_stack_1, from_stack_2
  loc_A619A1: FFree1Ad var_94
  loc_A619A4: FLdRfVar var_8C
  loc_A619A7: NewIfNullPr clstipocuco
  loc_A619AA: Call clstipocuco.MoveFirst()
  loc_A619AF: FLdRfVar var_9A
  loc_A619B2: FLdRfVar var_8C
  loc_A619B5: NewIfNullPr clstipocuco
  loc_A619B8: from_stack_1 = clstipocuco.EOF
  loc_A619BD: FLdI2 var_9A
  loc_A619C0: NotI4
  loc_A619C1: BranchF loc_A61AF9
  loc_A619C4: LitVar_Missing var_138
  loc_A619C7: PopAdLdVar
  loc_A619C8: FLdRfVar var_C4
  loc_A619CB: FLdRfVar var_B4
  loc_A619CE: LitVarStr var_B0, "CodiTicu"
  loc_A619D3: PopAdLdVar
  loc_A619D4: FLdRfVar var_A0
  loc_A619D7: FLdRfVar var_94
  loc_A619DA: FLdRfVar var_8C
  loc_A619DD: NewIfNullPr clstipocuco
  loc_A619E0: from_stack_1v = clstipocuco.RsFrmGet()
  loc_A619E5: FLdPr var_94
  loc_A619E8:  = Me.Fields
  loc_A619ED: FLdPr var_A0
  loc_A619F0: from_stack_2 = Me.Item(from_stack_1)
  loc_A619F5: FLdPr var_B4
  loc_A619F8:  = Me.Value
  loc_A619FD: FLdRfVar var_C4
  loc_A61A00: LitVarStr var_D8, " - "
  loc_A61A05: ConcatVar var_F0
  loc_A61A09: FLdRfVar var_118
  loc_A61A0C: FLdRfVar var_108
  loc_A61A0F: LitVarStr var_104, "DetaTicu"
  loc_A61A14: PopAdLdVar
  loc_A61A15: FLdRfVar var_F4
  loc_A61A18: FLdRfVar var_DC
  loc_A61A1B: FLdRfVar var_8C
  loc_A61A1E: NewIfNullPr clstipocuco
  loc_A61A21: from_stack_1v = clstipocuco.RsFrmGet()
  loc_A61A26: FLdPr var_DC
  loc_A61A29:  = Me.Fields
  loc_A61A2E: FLdPr var_F4
  loc_A61A31: from_stack_2 = Me.Item(from_stack_1)
  loc_A61A36: FLdPr var_108
  loc_A61A39:  = Me.Value
  loc_A61A3E: FLdRfVar var_118
  loc_A61A41: ConcatVar var_128
  loc_A61A45: CStrVarVal var_C8
  loc_A61A49: FLdPr Me
  loc_A61A4C: VCallAd Control_ID_CodiTicuCbo
  loc_A61A4F: FStAdFunc var_13C
  loc_A61A52: FLdPr var_13C
  loc_A61A55: Me.AddItem from_stack_1, from_stack_2
  loc_A61A5A: FFree1Str var_C8
  loc_A61A5D: FFreeAd var_94 = "": var_A0 = "": var_B4 = "": var_DC = "": var_F4 = "": var_108 = ""
  loc_A61A6E: FFreeVar var_C4 = "": var_F0 = "": var_118 = ""
  loc_A61A79: FLdRfVar var_C4
  loc_A61A7C: FLdRfVar var_B4
  loc_A61A7F: LitVarStr var_B0, "CodiTicu"
  loc_A61A84: PopAdLdVar
  loc_A61A85: FLdRfVar var_A0
  loc_A61A88: FLdRfVar var_94
  loc_A61A8B: FLdRfVar var_8C
  loc_A61A8E: NewIfNullPr clstipocuco
  loc_A61A91: from_stack_1v = clstipocuco.RsFrmGet()
  loc_A61A96: FLdPr var_94
  loc_A61A99:  = Me.Fields
  loc_A61A9E: FLdPr var_A0
  loc_A61AA1: from_stack_2 = Me.Item(from_stack_1)
  loc_A61AA6: FLdPr var_B4
  loc_A61AA9:  = Me.Value
  loc_A61AAE: FLdRfVar var_C4
  loc_A61AB1: CI4Var
  loc_A61AB3: FLdRfVar var_9A
  loc_A61AB6: FLdPr Me
  loc_A61AB9: VCallAd Control_ID_CodiTicuCbo
  loc_A61ABC: FStAdFunc var_DC
  loc_A61ABF: FLdPr var_DC
  loc_A61AC2:  = Me.NewIndex
  loc_A61AC7: FLdI2 var_9A
  loc_A61ACA: FLdPr Me
  loc_A61ACD: VCallAd Control_ID_CodiTicuCbo
  loc_A61AD0: FStAdFunc var_F4
  loc_A61AD3: FLdPr var_F4
  loc_A61AD6: Me.ItemData = from_stack_1
  loc_A61ADB: FFreeAd var_94 = "": var_A0 = "": var_DC = "": var_B4 = ""
  loc_A61AE8: FFree1Var var_C4 = ""
  loc_A61AEB: FLdRfVar var_8C
  loc_A61AEE: NewIfNullPr clstipocuco
  loc_A61AF1: Call clstipocuco.MoveSiguiente()
  loc_A61AF6: Branch loc_A619AF
  loc_A61AF9: Call cmdNueva_Click()
  loc_A61AFE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96FCA8
  'Data Table: 48F5A0
  loc_96FC84: LitI2_Byte &HFF
  loc_96FC86: ImpAdStI2 MemVar_C3D840
  loc_96FC89: LitI2_Byte 0
  loc_96FC8B: ImpAdStI2 MemVar_C3D844
  loc_96FC8E: LitI2_Byte &HFF
  loc_96FC90: ImpAdStI2 MemVar_C3D842
  loc_96FC93: FLdPr Me
  loc_96FC96: VCallAd Control_ID_wbbReporte
  loc_96FC99: FStAdFunc var_88
  loc_96FC9C: FLdRfVar var_88
  loc_96FC9F: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_96FCA4: FFree1Ad var_88
  loc_96FCA7: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9E1EA8
  'Data Table: 48F5A0
  loc_9E1D9C: LitI2_Byte 0
  loc_9E1D9E: FLdPr Me
  loc_9E1DA1: MemStI2 bGenerado
  loc_9E1DA4: LitI2_Byte &HFF
  loc_9E1DA6: FLdPr Me
  loc_9E1DA9: MemStI2 bLogos
  loc_9E1DAC: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9E1DB1: ImpAdLdI2 MemVar_C3D064
  loc_9E1DB4: CStrUI1
  loc_9E1DB6: FStStrNoPop var_88
  loc_9E1DB9: FLdPr Me
  loc_9E1DBC: VCallAd Control_ID_cboPeriodo
  loc_9E1DBF: FStAdFunc var_8C
  loc_9E1DC2: FLdPr var_8C
  loc_9E1DC5: Me.Text = from_stack_1
  loc_9E1DCA: FFree1Str var_88
  loc_9E1DCD: FFree1Ad var_8C
  loc_9E1DD0: LitI2_Byte 0
  loc_9E1DD2: PopTmpLdAd2 var_8E
  loc_9E1DD5: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9E1DDA: CVarDate var_B0
  loc_9E1DDE: FLdRfVar var_C0
  loc_9E1DE1: ImpAdCallFPR4  = Month()
  loc_9E1DE6: FLdRfVar var_C0
  loc_9E1DE9: LitVarI2 var_D0, 1
  loc_9E1DEE: SubVar var_E0
  loc_9E1DF2: CI2Var
  loc_9E1DF3: FLdPr Me
  loc_9E1DF6: VCallAd Control_ID_cboMes
  loc_9E1DF9: FStAdFunc var_8C
  loc_9E1DFC: FLdPr var_8C
  loc_9E1DFF: Me.ListIndex = from_stack_1
  loc_9E1E04: FFree1Ad var_8C
  loc_9E1E07: FFreeVar var_B0 = ""
  loc_9E1E0E: LitI4 0
  loc_9E1E13: CI2I4
  loc_9E1E14: FLdPr Me
  loc_9E1E17: VCallAd Control_ID_chkSoloCajayBancos
  loc_9E1E1A: FStAdFunc var_8C
  loc_9E1E1D: FLdPr var_8C
  loc_9E1E20: Me.Value = from_stack_1
  loc_9E1E25: FFree1Ad var_8C
  loc_9E1E28: LitI4 0
  loc_9E1E2D: CI2I4
  loc_9E1E2E: FLdPr Me
  loc_9E1E31: VCallAd Control_ID_chkExcluirManuales
  loc_9E1E34: FStAdFunc var_8C
  loc_9E1E37: FLdPr var_8C
  loc_9E1E3A: Me.Value = from_stack_1
  loc_9E1E3F: FFree1Ad var_8C
  loc_9E1E42: LitI4 1
  loc_9E1E47: CI2I4
  loc_9E1E48: FLdPr Me
  loc_9E1E4B: VCallAd Control_ID_chkExcluirCierrePresupuestario
  loc_9E1E4E: FStAdFunc var_8C
  loc_9E1E51: FLdPr var_8C
  loc_9E1E54: Me.Value = from_stack_1
  loc_9E1E59: FFree1Ad var_8C
  loc_9E1E5C: LitI4 1
  loc_9E1E61: CI2I4
  loc_9E1E62: FLdPr Me
  loc_9E1E65: VCallAd Control_ID_chkExcluirCierrePatrimonial
  loc_9E1E68: FStAdFunc var_8C
  loc_9E1E6B: FLdPr var_8C
  loc_9E1E6E: Me.Value = from_stack_1
  loc_9E1E73: FFree1Ad var_8C
  loc_9E1E76: LitI2_Byte 0
  loc_9E1E78: FLdPr Me
  loc_9E1E7B: VCallAd Control_ID_CodiTicuCbo
  loc_9E1E7E: FStAdFunc var_8C
  loc_9E1E81: FLdPr var_8C
  loc_9E1E84: Me.ListIndex = from_stack_1
  loc_9E1E89: FFree1Ad var_8C
  loc_9E1E8C: Call HabilitarCriterio()
  loc_9E1E91: ILdRf Me
  loc_9E1E94: CastAd
  loc_9E1E97: FStAdFunc var_8C
  loc_9E1E9A: FLdRfVar var_8C
  loc_9E1E9D: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9E1EA2: FFree1Ad var_8C
  loc_9E1EA5: ExitProcHresult
End Sub

Public Function htmFileGet() '490604
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '490613
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '490622
  htmFile = Value
End Sub

Public Function bLogosGet() '490631
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '490640
  bLogos = Value
End Sub

Public Function bGeneradoGet() '49064F
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49065E
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9B4E8C
  'Data Table: 48F5A0
  loc_9B4DF8: LitI4 0
  loc_9B4DFD: LitI4 6
  loc_9B4E02: FLdRfVar var_88
  loc_9B4E05: Redim
  loc_9B4E0F: FLdPr Me
  loc_9B4E12: VCallAd Control_ID_cboPeriodo
  loc_9B4E15: CVarAd
  loc_9B4E19: ParmAry1St
  loc_9B4E1F: FLdPr Me
  loc_9B4E22: VCallAd Control_ID_cboMes
  loc_9B4E25: CVarAd
  loc_9B4E29: ParmAry1St
  loc_9B4E2F: FLdPr Me
  loc_9B4E32: VCallAd Control_ID_chkSoloCajayBancos
  loc_9B4E35: CVarAd
  loc_9B4E39: ParmAry1St
  loc_9B4E3F: FLdPr Me
  loc_9B4E42: VCallAd Control_ID_chkExcluirManuales
  loc_9B4E45: CVarAd
  loc_9B4E49: ParmAry1St
  loc_9B4E4F: FLdPr Me
  loc_9B4E52: VCallAd Control_ID_chkExcluirCierrePresupuestario
  loc_9B4E55: CVarAd
  loc_9B4E59: ParmAry1St
  loc_9B4E5F: FLdPr Me
  loc_9B4E62: VCallAd Control_ID_chkExcluirCierrePatrimonial
  loc_9B4E65: CVarAd
  loc_9B4E69: ParmAry1St
  loc_9B4E6F: FLdPr Me
  loc_9B4E72: VCallAd Control_ID_CodiTicuCbo
  loc_9B4E75: CVarAd
  loc_9B4E79: ParmAry1St
  loc_9B4E7F: FLdRfVar var_88
  loc_9B4E82: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B4E87: FLdRfVar var_88
  loc_9B4E8A: Erase
  loc_9B4E8B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BBD440
  'Data Table: 48F5A0
  loc_BBC3C0: OnErrorGoto loc_BBD3CE
  loc_BBC3C5: LitStr vbNullString
  loc_BBC3C8: FLdPr Me
  loc_BBC3CB: MemStStrCopy
  loc_BBC3D1: LitI2_Byte 0
  loc_BBC3D3: PopTmpLdAd2 var_9E
  loc_BBC3D6: Call cboMes_Validate(from_stack_1v)
  loc_BBC3DD: FLdPr Me
  loc_BBC3E0: MemLdStr global_116
  loc_BBC3E3: LitStr vbNullString
  loc_BBC3E6: NeStr
  loc_BBC3E8: BranchF loc_BBC3F0
  loc_BBC3ED: Branch loc_BBD39F
  loc_BBC3F2: FLdPr Me
  loc_BBC3F5: MemLdI2 bGenerado
  loc_BBC3F8: BranchF loc_BBC3FE
  loc_BBC3FD: ExitProcHresult
  loc_BBC400: LitVarStr var_B0, "Generando reporte..."
  loc_BBC405: PopAdLdVar
  loc_BBC406: FLdPr Me
  loc_BBC409: VCallAd Control_ID_statusBar
  loc_BBC40C: FStAdFunc var_C4
  loc_BBC40F: FLdPr var_C4
  loc_BBC412: LateIdSt
  loc_BBC417: FFree1Ad var_C4
  loc_BBC41C: LitI4 &HB
  loc_BBC421: CI2I4
  loc_BBC422: FLdPr Me
  loc_BBC425: Me.MousePointer = from_stack_1
  loc_BBC42C: FLdRfVar var_CC
  loc_BBC42F: FLdRfVar var_9E
  loc_BBC432: FLdPr Me
  loc_BBC435: VCallAd Control_ID_cboMes
  loc_BBC438: FStAdFunc var_C4
  loc_BBC43B: FLdPr var_C4
  loc_BBC43E:  = Me.ListIndex
  loc_BBC443: FLdI2 var_9E
  loc_BBC446: FLdPr Me
  loc_BBC449: VCallAd Control_ID_cboMes
  loc_BBC44C: FStAdFunc var_C8
  loc_BBC44F: FLdPr var_C8
  loc_BBC452:  = Me.ItemData
  loc_BBC457: ILdRf var_CC
  loc_BBC45A: CI2I4
  loc_BBC45B: FLdPr Me
  loc_BBC45E: MemStI2 global_100
  loc_BBC461: FFreeAd var_C4 = ""
  loc_BBC46A: FLdRfVar var_D0
  loc_BBC46D: FLdPr Me
  loc_BBC470: VCallAd Control_ID_cboPeriodo
  loc_BBC473: FStAdFunc var_C4
  loc_BBC476: FLdPr var_C4
  loc_BBC479:  = Me.Text
  loc_BBC47E: ILdRf var_D0
  loc_BBC481: CI2Str
  loc_BBC483: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_BBC488: CVarStr var_E0
  loc_BBC48B: FLdRfVar var_F0
  loc_BBC48E: ImpAdCallFPR4  = Month()
  loc_BBC493: LitVarStr var_130, "Definitivo"
  loc_BBC498: FStVarCopyObj var_140
  loc_BBC49B: FLdRfVar var_140
  loc_BBC49E: LitVarStr var_C0, "Provisorio"
  loc_BBC4A3: FStVarCopyObj var_120
  loc_BBC4A6: FLdRfVar var_120
  loc_BBC4A9: FLdPr Me
  loc_BBC4AC: MemLdI2 global_100
  loc_BBC4AF: CVarI2 var_B0
  loc_BBC4B2: HardType
  loc_BBC4B3: FLdRfVar var_F0
  loc_BBC4B6: GtVar var_100
  loc_BBC4BA: FStVar var_110
  loc_BBC4BE: FLdRfVar var_110
  loc_BBC4C1: FLdRfVar var_150
  loc_BBC4C4: ImpAdCallFPR4  = IIf(, , )
  loc_BBC4C9: FLdRfVar var_150
  loc_BBC4CC: CStrVarTmp
  loc_BBC4CD: FStStrNoPop var_154
  loc_BBC4D0: FLdPr Me
  loc_BBC4D3: MemStStrCopy
  loc_BBC4D7: FFreeStr var_D0 = ""
  loc_BBC4DE: FFree1Ad var_C4
  loc_BBC4E1: FFreeVar var_E0 = "": var_F0 = "": var_110 = "": var_120 = "": var_140 = ""
  loc_BBC4F2: FLdRfVar var_D0
  loc_BBC4F5: FLdPr Me
  loc_BBC4F8: VCallAd Control_ID_cboPeriodo
  loc_BBC4FB: FStAdFunc var_C4
  loc_BBC4FE: FLdPr var_C4
  loc_BBC501:  = Me.Text
  loc_BBC506: LitStr "31"
  loc_BBC509: CI2Str
  loc_BBC50B: LitStr "12"
  loc_BBC50E: CI2Str
  loc_BBC510: ILdRf var_D0
  loc_BBC513: CR8Str
  loc_BBC515: LitI2_Byte 1
  loc_BBC517: CR8I2
  loc_BBC518: SubR4
  loc_BBC519: CI2R8
  loc_BBC51A: FLdRfVar var_E0
  loc_BBC51D: ImpAdCallFPR4  = DateSerial(, , )
  loc_BBC522: FLdRfVar var_154
  loc_BBC525: FLdPr Me
  loc_BBC528: VCallAd Control_ID_cboPeriodo
  loc_BBC52B: FStAdFunc var_C8
  loc_BBC52E: FLdPr var_C8
  loc_BBC531:  = Me.Text
  loc_BBC536: ILdRf var_154
  loc_BBC539: CI2Str
  loc_BBC53B: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_BBC540: FStStr var_160
  loc_BBC543: FLdPr Me
  loc_BBC546: MemLdRfVar from_stack_1.global_104
  loc_BBC549: CVarRef
  loc_BBC54E: LitVarStr var_C0, "Provisorio"
  loc_BBC553: FStVarCopyObj var_F0
  loc_BBC556: FLdRfVar var_F0
  loc_BBC559: FLdPr Me
  loc_BBC55C: MemLdI2 global_100
  loc_BBC55F: LitI2_Byte 1
  loc_BBC561: EqI2
  loc_BBC562: FLdRfVar var_E0
  loc_BBC565: FnCDateVar
  loc_BBC567: FLdZeroAd var_160
  loc_BBC56A: FStStrNoPop var_158
  loc_BBC56D: CDateStr
  loc_BBC56F: EqR4
  loc_BBC570: AndI4
  loc_BBC571: CVarBoolI2 var_B0
  loc_BBC575: FLdRfVar var_100
  loc_BBC578: ImpAdCallFPR4  = IIf(, , )
  loc_BBC57D: FLdRfVar var_100
  loc_BBC580: CStrVarTmp
  loc_BBC581: FStStrNoPop var_15C
  loc_BBC584: FLdPr Me
  loc_BBC587: MemStStrCopy
  loc_BBC58B: FFreeStr var_D0 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_BBC598: FFreeAd var_C4 = ""
  loc_BBC59F: FFreeVar var_E0 = "": var_E0 = "": var_B0 = "": var_F0 = ""
  loc_BBC5AE: LitStr "Municipalidad de Guaymallén"
  loc_BBC5B1: LitStr "Municipalidad de Guaymallén"
  loc_BBC5B4: EqStr
  loc_BBC5B6: BranchF loc_BBC613
  loc_BBC5BB: FLdRfVar var_9E
  loc_BBC5BE: FLdPr Me
  loc_BBC5C1: VCallAd Control_ID_chkSoloCajayBancos
  loc_BBC5C4: FStAdFunc var_C4
  loc_BBC5C7: FLdPr var_C4
  loc_BBC5CA:  = Me.Value
  loc_BBC5CF: LitVarStr var_130, " AND (tipocuco.CodiTicu LIKE '111" & Chr(37) & "' OR tipocuco.CodiTicu LIKE '112" & Chr(37) & "' OR tipocuco.CodiTicu LIKE '113" & Chr(37) & "') AND cc.CodiCuco NOT LIKE '1103" & Chr(37) & "' AND cc.CodiCuco NOT LIKE '8" & Chr(37) & "'"
  loc_BBC5D4: FStVarCopyObj var_F0
  loc_BBC5D7: FLdRfVar var_F0
  loc_BBC5DA: LitVarStr var_C0, vbNullString
  loc_BBC5DF: FStVarCopyObj var_E0
  loc_BBC5E2: FLdRfVar var_E0
  loc_BBC5E5: FLdI2 var_9E
  loc_BBC5E8: CI4UI1
  loc_BBC5E9: LitI4 0
  loc_BBC5EE: EqI4
  loc_BBC5EF: CVarBoolI2 var_B0
  loc_BBC5F3: FLdRfVar var_100
  loc_BBC5F6: ImpAdCallFPR4  = IIf(, , )
  loc_BBC5FB: FLdRfVar var_100
  loc_BBC5FE: CStrVarTmp
  loc_BBC5FF: FStStr var_88
  loc_BBC602: FFree1Ad var_C4
  loc_BBC605: FFreeVar var_B0 = "": var_E0 = "": var_F0 = ""
  loc_BBC610: Branch loc_BBC66C
  loc_BBC617: FLdRfVar var_9E
  loc_BBC61A: FLdPr Me
  loc_BBC61D: VCallAd Control_ID_chkSoloCajayBancos
  loc_BBC620: FStAdFunc var_C4
  loc_BBC623: FLdPr var_C4
  loc_BBC626:  = Me.Value
  loc_BBC62B: LitVarStr var_130, " AND (tipocuco.CodiTicu LIKE '111" & Chr(37) & "' OR tipocuco.CodiTicu LIKE '112" & Chr(37) & "' OR tipocuco.CodiTicu LIKE '113" & Chr(37) & "')"
  loc_BBC630: FStVarCopyObj var_F0
  loc_BBC633: FLdRfVar var_F0
  loc_BBC636: LitVarStr var_C0, vbNullString
  loc_BBC63B: FStVarCopyObj var_E0
  loc_BBC63E: FLdRfVar var_E0
  loc_BBC641: FLdI2 var_9E
  loc_BBC644: CI4UI1
  loc_BBC645: LitI4 0
  loc_BBC64A: EqI4
  loc_BBC64B: CVarBoolI2 var_B0
  loc_BBC64F: FLdRfVar var_100
  loc_BBC652: ImpAdCallFPR4  = IIf(, , )
  loc_BBC657: FLdRfVar var_100
  loc_BBC65A: CStrVarTmp
  loc_BBC65B: FStStr var_88
  loc_BBC65E: FFree1Ad var_C4
  loc_BBC661: FFreeVar var_B0 = "": var_E0 = "": var_F0 = ""
  loc_BBC670: FLdRfVar var_9E
  loc_BBC673: FLdPr Me
  loc_BBC676: VCallAd Control_ID_CodiTicuCbo
  loc_BBC679: FStAdFunc var_C4
  loc_BBC67C: FLdPr var_C4
  loc_BBC67F:  = Me.ListIndex
  loc_BBC684: FLdI2 var_9E
  loc_BBC687: LitI2_Byte 0
  loc_BBC689: GtI2
  loc_BBC68A: FFree1Ad var_C4
  loc_BBC68D: BranchF loc_BBC706
  loc_BBC692: FLdRfVar var_CC
  loc_BBC695: FLdRfVar var_9E
  loc_BBC698: FLdPr Me
  loc_BBC69B: VCallAd Control_ID_CodiTicuCbo
  loc_BBC69E: FStAdFunc var_C4
  loc_BBC6A1: FLdPr var_C4
  loc_BBC6A4:  = Me.ListIndex
  loc_BBC6A9: FLdI2 var_9E
  loc_BBC6AC: FLdPr Me
  loc_BBC6AF: VCallAd Control_ID_CodiTicuCbo
  loc_BBC6B2: FStAdFunc var_C8
  loc_BBC6B5: FLdPr var_C8
  loc_BBC6B8:  = Me.ItemData
  loc_BBC6BD: ILdRf var_CC
  loc_BBC6C0: CStrI4
  loc_BBC6C2: FStStr var_9C
  loc_BBC6C5: FFreeAd var_C4 = ""
  loc_BBC6CE: LitStr " AND cc.CodiTicu like '"
  loc_BBC6D1: LitI4 0
  loc_BBC6D6: LitI4 -1
  loc_BBC6DB: LitI4 1
  loc_BBC6E0: LitStr Chr(37)
  loc_BBC6E3: LitStr "0"
  loc_BBC6E6: ILdRf var_9C
  loc_BBC6E9: ImpAdCallI2 Replace(, , , , , )
  loc_BBC6EE: FStStrNoPop var_D0
  loc_BBC6F1: ConcatStr
  loc_BBC6F2: FStStrNoPop var_154
  loc_BBC6F5: LitStr Chr(37) & "'"
  loc_BBC6F8: ConcatStr
  loc_BBC6F9: FStStr var_98
  loc_BBC6FC: FFreeStr var_D0 = ""
  loc_BBC703: Branch loc_BBC710
  loc_BBC70A: LitStr vbNullString
  loc_BBC70D: FStStrCopy var_98
  loc_BBC714: FLdRfVar var_9E
  loc_BBC717: FLdPr Me
  loc_BBC71A: VCallAd Control_ID_chkExcluirManuales
  loc_BBC71D: FStAdFunc var_C4
  loc_BBC720: FLdPr var_C4
  loc_BBC723:  = Me.Value
  loc_BBC728: LitVarStr var_130, " AND asiento.CodiTias <> 15"
  loc_BBC72D: FStVarCopyObj var_F0
  loc_BBC730: FLdRfVar var_F0
  loc_BBC733: LitVarStr var_C0, vbNullString
  loc_BBC738: FStVarCopyObj var_E0
  loc_BBC73B: FLdRfVar var_E0
  loc_BBC73E: FLdI2 var_9E
  loc_BBC741: CI4UI1
  loc_BBC742: LitI4 0
  loc_BBC747: EqI4
  loc_BBC748: CVarBoolI2 var_B0
  loc_BBC74C: FLdRfVar var_100
  loc_BBC74F: ImpAdCallFPR4  = IIf(, , )
  loc_BBC754: FLdRfVar var_100
  loc_BBC757: CStrVarTmp
  loc_BBC758: FStStr var_8C
  loc_BBC75B: FFree1Ad var_C4
  loc_BBC75E: FFreeVar var_B0 = "": var_E0 = "": var_F0 = ""
  loc_BBC76B: FLdRfVar var_9E
  loc_BBC76E: FLdPr Me
  loc_BBC771: VCallAd Control_ID_chkExcluirCierrePresupuestario
  loc_BBC774: FStAdFunc var_C4
  loc_BBC777: FLdPr var_C4
  loc_BBC77A:  = Me.Value
  loc_BBC77F: LitVarStr var_130, vbNullString
  loc_BBC784: FStVarCopyObj var_F0
  loc_BBC787: FLdRfVar var_F0
  loc_BBC78A: LitVarStr var_C0, " AND asiento.CodiTias NOT IN (16)"
  loc_BBC78F: FStVarCopyObj var_E0
  loc_BBC792: FLdRfVar var_E0
  loc_BBC795: FLdI2 var_9E
  loc_BBC798: CI4UI1
  loc_BBC799: LitI4 1
  loc_BBC79E: EqI4
  loc_BBC79F: CVarBoolI2 var_B0
  loc_BBC7A3: FLdRfVar var_100
  loc_BBC7A6: ImpAdCallFPR4  = IIf(, , )
  loc_BBC7AB: FLdRfVar var_100
  loc_BBC7AE: CStrVarTmp
  loc_BBC7AF: FStStr var_90
  loc_BBC7B2: FFree1Ad var_C4
  loc_BBC7B5: FFreeVar var_B0 = "": var_E0 = "": var_F0 = ""
  loc_BBC7C2: FLdRfVar var_9E
  loc_BBC7C5: FLdPr Me
  loc_BBC7C8: VCallAd Control_ID_chkExcluirCierrePatrimonial
  loc_BBC7CB: FStAdFunc var_C4
  loc_BBC7CE: FLdPr var_C4
  loc_BBC7D1:  = Me.Value
  loc_BBC7D6: LitVarStr var_130, vbNullString
  loc_BBC7DB: FStVarCopyObj var_F0
  loc_BBC7DE: FLdRfVar var_F0
  loc_BBC7E1: LitVarStr var_C0, " AND asiento.CodiTias NOT IN (25,27)"
  loc_BBC7E6: FStVarCopyObj var_E0
  loc_BBC7E9: FLdRfVar var_E0
  loc_BBC7EC: FLdI2 var_9E
  loc_BBC7EF: CI4UI1
  loc_BBC7F0: LitI4 1
  loc_BBC7F5: EqI4
  loc_BBC7F6: CVarBoolI2 var_B0
  loc_BBC7FA: FLdRfVar var_100
  loc_BBC7FD: ImpAdCallFPR4  = IIf(, , )
  loc_BBC802: FLdRfVar var_100
  loc_BBC805: CStrVarTmp
  loc_BBC806: FStStr var_94
  loc_BBC809: FFree1Ad var_C4
  loc_BBC80C: FFreeVar var_B0 = "": var_E0 = "": var_F0 = ""
  loc_BBC819: LitI2_Byte &HFF
  loc_BBC81B: BranchF loc_BBC9D9
  loc_BBC820: LitStr "Municipalidad de Guaymallén"
  loc_BBC823: LitStr "Municipalidad de Guaymallén"
  loc_BBC826: EqStr
  loc_BBC828: BranchF loc_BBC900
  loc_BBC82D: LitStr "SELECT cc.CodiCuco, DetaCuco, Month(FechAsie) MessAsie, FechAsie"
  loc_BBC830: LitStr ", Sum(DebeMoas) DebeMoas, Sum(HabeMoas) HabeMoas"
  loc_BBC833: ConcatStr
  loc_BBC834: FStStrNoPop var_D0
  loc_BBC837: LitStr ", cc.CodiTicu, DetaTicu"
  loc_BBC83A: ConcatStr
  loc_BBC83B: FStStrNoPop var_154
  loc_BBC83E: LitStr " FROM asiento"
  loc_BBC841: ConcatStr
  loc_BBC842: FStStrNoPop var_158
  loc_BBC845: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_BBC848: ConcatStr
  loc_BBC849: FStStrNoPop var_15C
  loc_BBC84C: LitStr " INNER JOIN infogov.cuentacontable cc ON infogov.cc.PeriInfo = asiento.PeriInfo AND infogov.cc.CodiCuco = moviasiento.CodiCuco"
  loc_BBC84F: ConcatStr
  loc_BBC850: FStStrNoPop var_160
  loc_BBC853: LitStr " INNER JOIN tipocuco  ON tipocuco.CodiTicu = cc.CodiTicu"
  loc_BBC856: ConcatStr
  loc_BBC857: FStStrNoPop var_164
  loc_BBC85A: LitStr " WHERE /*asiento.FechAsie = '2019-12-31' and*/ asiento.PeriInfo = "
  loc_BBC85D: ConcatStr
  loc_BBC85E: FStStrNoPop var_16C
  loc_BBC861: FLdRfVar var_168
  loc_BBC864: FLdPr Me
  loc_BBC867: VCallAd Control_ID_cboPeriodo
  loc_BBC86A: FStAdFunc var_C4
  loc_BBC86D: FLdPr var_C4
  loc_BBC870:  = Me.Text
  loc_BBC875: ILdRf var_168
  loc_BBC878: ConcatStr
  loc_BBC879: FStStrNoPop var_170
  loc_BBC87C: LitStr " AND Month(FechAsie) <= "
  loc_BBC87F: ConcatStr
  loc_BBC880: FStStrNoPop var_174
  loc_BBC883: FLdPr Me
  loc_BBC886: MemLdI2 global_100
  loc_BBC889: CStrUI1
  loc_BBC88B: FStStrNoPop var_178
  loc_BBC88E: ConcatStr
  loc_BBC88F: FStStrNoPop var_17C
  loc_BBC892: ILdRf var_98
  loc_BBC895: ConcatStr
  loc_BBC896: FStStrNoPop var_180
  loc_BBC899: ILdRf var_88
  loc_BBC89C: ConcatStr
  loc_BBC89D: FStStrNoPop var_184
  loc_BBC8A0: ILdRf var_8C
  loc_BBC8A3: ConcatStr
  loc_BBC8A4: FStStrNoPop var_188
  loc_BBC8A7: ILdRf var_90
  loc_BBC8AA: ConcatStr
  loc_BBC8AB: FStStrNoPop var_18C
  loc_BBC8AE: ILdRf var_94
  loc_BBC8B1: ConcatStr
  loc_BBC8B2: FStStrNoPop var_190
  loc_BBC8B5: LitStr " GROUP BY CodiCuco, Month(FechAsie), FechAsie"
  loc_BBC8B8: ConcatStr
  loc_BBC8B9: FStStrNoPop var_194
  loc_BBC8BC: LitStr " ORDER BY CodiCuco, CodiTicu;"
  loc_BBC8BF: ConcatStr
  loc_BBC8C0: FStStrNoPop var_198
  loc_BBC8C3: FLdPr Me
  loc_BBC8C6: MemLdRfVar from_stack_1.global_72
  loc_BBC8C9: NewIfNullPr clsasiento
  loc_BBC8CC: Call clsasiento.RedefineRS(from_stack_1v)
  loc_BBC8D1: FFreeStr var_D0 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_16C = "": var_168 = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_BBC8FA: FFree1Ad var_C4
  loc_BBC8FD: Branch loc_BBC9D4
  loc_BBC904: LitStr "SELECT cc.CodiCuco, DetaCuco, Month(FechAsie) MessAsie, FechAsie"
  loc_BBC907: LitStr ", Sum(DebeMoas) DebeMoas, Sum(HabeMoas) HabeMoas"
  loc_BBC90A: ConcatStr
  loc_BBC90B: FStStrNoPop var_D0
  loc_BBC90E: LitStr ", cc.CodiTicu, DetaTicu"
  loc_BBC911: ConcatStr
  loc_BBC912: FStStrNoPop var_154
  loc_BBC915: LitStr " FROM asiento"
  loc_BBC918: ConcatStr
  loc_BBC919: FStStrNoPop var_158
  loc_BBC91C: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_BBC91F: ConcatStr
  loc_BBC920: FStStrNoPop var_15C
  loc_BBC923: LitStr " INNER JOIN infogov.cuentacontable cc ON infogov.cc.PeriInfo = asiento.PeriInfo AND infogov.cc.CodiCuco = moviasiento.CodiCuco"
  loc_BBC926: ConcatStr
  loc_BBC927: FStStrNoPop var_160
  loc_BBC92A: LitStr " INNER JOIN tipocuco  ON tipocuco.CodiTicu = cc.CodiTicu"
  loc_BBC92D: ConcatStr
  loc_BBC92E: FStStrNoPop var_164
  loc_BBC931: LitStr " WHERE asiento.PeriInfo = "
  loc_BBC934: ConcatStr
  loc_BBC935: FStStrNoPop var_16C
  loc_BBC938: FLdRfVar var_168
  loc_BBC93B: FLdPr Me
  loc_BBC93E: VCallAd Control_ID_cboPeriodo
  loc_BBC941: FStAdFunc var_C4
  loc_BBC944: FLdPr var_C4
  loc_BBC947:  = Me.Text
  loc_BBC94C: ILdRf var_168
  loc_BBC94F: ConcatStr
  loc_BBC950: FStStrNoPop var_170
  loc_BBC953: LitStr " AND Month(FechAsie) <= "
  loc_BBC956: ConcatStr
  loc_BBC957: FStStrNoPop var_174
  loc_BBC95A: FLdPr Me
  loc_BBC95D: MemLdI2 global_100
  loc_BBC960: CStrUI1
  loc_BBC962: FStStrNoPop var_178
  loc_BBC965: ConcatStr
  loc_BBC966: FStStrNoPop var_17C
  loc_BBC969: ILdRf var_98
  loc_BBC96C: ConcatStr
  loc_BBC96D: FStStrNoPop var_180
  loc_BBC970: ILdRf var_88
  loc_BBC973: ConcatStr
  loc_BBC974: FStStrNoPop var_184
  loc_BBC977: ILdRf var_8C
  loc_BBC97A: ConcatStr
  loc_BBC97B: FStStrNoPop var_188
  loc_BBC97E: ILdRf var_90
  loc_BBC981: ConcatStr
  loc_BBC982: FStStrNoPop var_18C
  loc_BBC985: ILdRf var_94
  loc_BBC988: ConcatStr
  loc_BBC989: FStStrNoPop var_190
  loc_BBC98C: LitStr " GROUP BY CodiCuco, Month(FechAsie), FechAsie"
  loc_BBC98F: ConcatStr
  loc_BBC990: FStStrNoPop var_194
  loc_BBC993: LitStr " ORDER BY CodiTicu, CodiCuco;"
  loc_BBC996: ConcatStr
  loc_BBC997: FStStrNoPop var_198
  loc_BBC99A: FLdPr Me
  loc_BBC99D: MemLdRfVar from_stack_1.global_72
  loc_BBC9A0: NewIfNullPr clsasiento
  loc_BBC9A3: Call clsasiento.RedefineRS(from_stack_1v)
  loc_BBC9A8: FFreeStr var_D0 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_16C = "": var_168 = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_BBC9D1: FFree1Ad var_C4
  loc_BBC9D6: Branch loc_BBCB5D
  loc_BBC9DD: LitStr "drop temporary table if exists tmovi;"
  loc_BBC9E0: FLdPr Me
  loc_BBC9E3: MemLdRfVar from_stack_1.global_72
  loc_BBC9E6: NewIfNullPr clsasiento
  loc_BBC9E9: Call clsasiento.RedefineRS(from_stack_1v)
  loc_BBC9F0: LitStr "create temporary table tmovi SELECT cc.CodiCuco, DetaCuco, Month(FechAsie) MessAsie, FechAsie"
  loc_BBC9F3: LitStr ", CASE WHEN (cc.CodiTicu LIKE '5" & Chr(37) & "' OR cc.CodiTicu LIKE '7" & Chr(37) & "') AND CodiTias IN (7,8) AND cc.CodiCuco != CarePaco THEN SUM(DebeMoas-HabeMoas)"
  loc_BBC9F6: ConcatStr
  loc_BBC9F7: FStStrNoPop var_D0
  loc_BBC9FA: LitStr " WHEN (cc.CodiTicu LIKE '5" & Chr(37) & "' OR cc.CodiTicu LIKE '7" & Chr(37) & "') AND CodiTias IN (9) AND cc.CodiCuco != CarePaco THEN 0"
  loc_BBC9FD: ConcatStr
  loc_BBC9FE: FStStrNoPop var_154
  loc_BBCA01: LitStr " WHEN (cc.CodiTicu LIKE '6" & Chr(37) & "' OR cc.CodiTicu LIKE '8" & Chr(37) & "') AND CodiTias IN (1,14) AND cc.CodiCuco != CaerPaco THEN 0"
  loc_BBCA04: ConcatStr
  loc_BBCA05: FStStrNoPop var_158
  loc_BBCA08: LitStr " WHEN (cc.CodiTicu LIKE '6" & Chr(37) & "' OR cc.CodiTicu LIKE '8" & Chr(37) & "') AND CodiTias IN (2) AND cc.CodiCuco != CaerPaco THEN SUM(DebeMoas-HabeMoas)"
  loc_BBCA0B: ConcatStr
  loc_BBCA0C: FStStrNoPop var_15C
  loc_BBCA0F: LitStr " ELSE Sum(DebeMoas)"
  loc_BBCA12: ConcatStr
  loc_BBCA13: FStStrNoPop var_160
  loc_BBCA16: LitStr " END DebeMoas"
  loc_BBCA19: ConcatStr
  loc_BBCA1A: FStStrNoPop var_164
  loc_BBCA1D: LitStr " , CASE WHEN (cc.CodiTicu LIKE '5" & Chr(37) & "' OR cc.CodiTicu LIKE '7" & Chr(37) & "') AND CodiTias IN (7,8) AND cc.CodiCuco != CarePaco THEN 0"
  loc_BBCA20: ConcatStr
  loc_BBCA21: FStStrNoPop var_168
  loc_BBCA24: LitStr " WHEN (cc.CodiTicu LIKE '5" & Chr(37) & "' OR cc.CodiTicu LIKE '7" & Chr(37) & "') AND CodiTias IN (9) AND cc.CodiCuco != CarePaco THEN SUM(HabeMoas-DebeMoas)"
  loc_BBCA27: ConcatStr
  loc_BBCA28: FStStrNoPop var_16C
  loc_BBCA2B: LitStr " WHEN (cc.CodiTicu LIKE '6" & Chr(37) & "' OR cc.CodiTicu LIKE '8" & Chr(37) & "') AND CodiTias IN (1,14) AND cc.CodiCuco != CaerPaco THEN SUM(HabeMoas-DebeMoas)"
  loc_BBCA2E: ConcatStr
  loc_BBCA2F: FStStrNoPop var_170
  loc_BBCA32: LitStr " WHEN (cc.CodiTicu LIKE '6" & Chr(37) & "' OR cc.CodiTicu LIKE '8" & Chr(37) & "') AND CodiTias IN (2) AND cc.CodiCuco != CaerPaco THEN 0"
  loc_BBCA35: ConcatStr
  loc_BBCA36: FStStrNoPop var_174
  loc_BBCA39: LitStr " ELSE Sum(HabeMoas)"
  loc_BBCA3C: ConcatStr
  loc_BBCA3D: FStStrNoPop var_178
  loc_BBCA40: LitStr " END HabeMoas"
  loc_BBCA43: ConcatStr
  loc_BBCA44: FStStrNoPop var_17C
  loc_BBCA47: LitStr ", cc.CodiTicu, DetaTicu"
  loc_BBCA4A: ConcatStr
  loc_BBCA4B: FStStrNoPop var_180
  loc_BBCA4E: LitStr " FROM asiento"
  loc_BBCA51: ConcatStr
  loc_BBCA52: FStStrNoPop var_184
  loc_BBCA55: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_BBCA58: ConcatStr
  loc_BBCA59: FStStrNoPop var_188
  loc_BBCA5C: LitStr " INNER JOIN infogov.cuentacontable cc ON infogov.cc.PeriInfo = asiento.PeriInfo AND infogov.cc.CodiCuco = moviasiento.CodiCuco"
  loc_BBCA5F: ConcatStr
  loc_BBCA60: FStStrNoPop var_18C
  loc_BBCA63: LitStr " INNER JOIN tipocuco  ON tipocuco.CodiTicu = cc.CodiTicu"
  loc_BBCA66: ConcatStr
  loc_BBCA67: FStStrNoPop var_190
  loc_BBCA6A: LitStr " INNER JOIN contpres.paraconta p ON p.PeriInfo = asiento.PeriInfo"
  loc_BBCA6D: ConcatStr
  loc_BBCA6E: FStStrNoPop var_194
  loc_BBCA71: LitStr " WHERE asiento.PeriInfo = "
  loc_BBCA74: ConcatStr
  loc_BBCA75: FStStrNoPop var_19C
  loc_BBCA78: FLdRfVar var_198
  loc_BBCA7B: FLdPr Me
  loc_BBCA7E: VCallAd Control_ID_cboPeriodo
  loc_BBCA81: FStAdFunc var_C4
  loc_BBCA84: FLdPr var_C4
  loc_BBCA87:  = Me.Text
  loc_BBCA8C: ILdRf var_198
  loc_BBCA8F: ConcatStr
  loc_BBCA90: FStStrNoPop var_1A0
  loc_BBCA93: LitStr " AND Month(FechAsie) <= "
  loc_BBCA96: ConcatStr
  loc_BBCA97: FStStrNoPop var_1A4
  loc_BBCA9A: FLdPr Me
  loc_BBCA9D: MemLdI2 global_100
  loc_BBCAA0: CStrUI1
  loc_BBCAA2: FStStrNoPop var_1A8
  loc_BBCAA5: ConcatStr
  loc_BBCAA6: FStStrNoPop var_1AC
  loc_BBCAA9: ILdRf var_98
  loc_BBCAAC: ConcatStr
  loc_BBCAAD: FStStrNoPop var_1B0
  loc_BBCAB0: ILdRf var_88
  loc_BBCAB3: ConcatStr
  loc_BBCAB4: FStStrNoPop var_1B4
  loc_BBCAB7: ILdRf var_8C
  loc_BBCABA: ConcatStr
  loc_BBCABB: FStStrNoPop var_1B8
  loc_BBCABE: ILdRf var_90
  loc_BBCAC1: ConcatStr
  loc_BBCAC2: FStStrNoPop var_1BC
  loc_BBCAC5: ILdRf var_94
  loc_BBCAC8: ConcatStr
  loc_BBCAC9: FStStrNoPop var_1C0
  loc_BBCACC: LitStr " GROUP BY CodiCuco, CodiTias, Month(FechAsie), FechAsie"
  loc_BBCACF: ConcatStr
  loc_BBCAD0: FStStrNoPop var_1C4
  loc_BBCAD3: LitStr " ORDER BY CodiCuco, CodiTicu;"
  loc_BBCAD6: ConcatStr
  loc_BBCAD7: FStStrNoPop var_1C8
  loc_BBCADA: FLdPr Me
  loc_BBCADD: MemLdRfVar from_stack_1.global_72
  loc_BBCAE0: NewIfNullPr clsasiento
  loc_BBCAE3: Call clsasiento.RedefineRS(from_stack_1v)
  loc_BBCAE8: FFreeStr var_1C8 = "": var_D0 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_19C = "": var_198 = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = ""
  loc_BBCB29: FFree1Ad var_C4
  loc_BBCB2E: LitStr "select CodiCuco, DetaCuco, MessAsie, FechAsie, sum(DebeMoas) DebeMoas, sum(HabeMoas) HabeMoas, CodiTicu, DetaTicu"
  loc_BBCB31: LitStr " FROM tmovi "
  loc_BBCB34: ConcatStr
  loc_BBCB35: FStStrNoPop var_D0
  loc_BBCB38: LitStr " GROUP BY CodiCuco, Month(FechAsie), FechAsie"
  loc_BBCB3B: ConcatStr
  loc_BBCB3C: FStStrNoPop var_154
  loc_BBCB3F: LitStr " ORDER BY CodiTicu, CodiCuco"
  loc_BBCB42: ConcatStr
  loc_BBCB43: FStStrNoPop var_158
  loc_BBCB46: FLdPr Me
  loc_BBCB49: MemLdRfVar from_stack_1.global_72
  loc_BBCB4C: NewIfNullPr clsasiento
  loc_BBCB4F: Call clsasiento.RedefineRS(from_stack_1v)
  loc_BBCB54: FFreeStr var_D0 = "": var_154 = ""
  loc_BBCB61: FLdRfVar var_CC
  loc_BBCB64: FLdPr Me
  loc_BBCB67: MemLdRfVar from_stack_1.global_72
  loc_BBCB6A: NewIfNullPr clsasiento
  loc_BBCB6D: from_stack_1 = clsasiento.RecordCount
  loc_BBCB72: ILdRf var_CC
  loc_BBCB75: LitI4 0
  loc_BBCB7A: EqI4
  loc_BBCB7B: BranchF loc_BBCB92
  loc_BBCB80: LitI4 0
  loc_BBCB85: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BBCB88: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BBCB8F: Branch loc_BBD39F
  loc_BBCB96: LitI4 0
  loc_BBCB9B: LitI4 1
  loc_BBCBA0: FLdPr Me
  loc_BBCBA3: MemLdRfVar from_stack_1.global_84
  loc_BBCBA6: Redim
  loc_BBCBB2: LitI4 0
  loc_BBCBB7: LitI4 1
  loc_BBCBBC: FLdPr Me
  loc_BBCBBF: MemLdRfVar from_stack_1.global_88
  loc_BBCBC2: Redim
  loc_BBCBCE: LitI2_Byte 0
  loc_BBCBD0: FLdPr Me
  loc_BBCBD3: MemStI2 global_94
  loc_BBCBD8: FLdPr Me
  loc_BBCBDB: MemLdRfVar from_stack_1.global_72
  loc_BBCBDE: NewIfNullAd
  loc_BBCBE1: FStAd var_1CC 
  loc_BBCBE7: FLdPr var_1CC
  loc_BBCBEA: Call clsasiento.MoveFirst(from_stack_1v)
  loc_BBCBF1: Call Proc_167_22_9F0A9C()
  loc_BBCBF8: FLdRfVar var_CC
  loc_BBCBFB: FLdPr var_1CC
  loc_BBCBFE: from_stack_1 = clsasiento.RecordCount
  loc_BBCC03: ILdRf var_CC
  loc_BBCC06: LitI4 1
  loc_BBCC0B: GtI4
  loc_BBCC0C: BranchF loc_BBCE82
  loc_BBCC11: LitI2_Byte 2
  loc_BBCC13: FLdPr Me
  loc_BBCC16: MemLdRfVar from_stack_1.global_108
  loc_BBCC19: FLdRfVar var_CC
  loc_BBCC1C: FLdPr var_1CC
  loc_BBCC1F: from_stack_1 = clsasiento.RecordCount
  loc_BBCC24: ILdRf var_CC
  loc_BBCC27: CI2I4
  loc_BBCC28: ForI2 var_1D0
  loc_BBCC30: FLdPr var_1CC
  loc_BBCC33: Call clsasiento.MoveSiguiente()
  loc_BBCC3A: FLdRfVar var_E0
  loc_BBCC3D: FLdRfVar var_1D4
  loc_BBCC40: LitVarStr var_B0, "CodiTicu"
  loc_BBCC45: PopAdLdVar
  loc_BBCC46: FLdRfVar var_C8
  loc_BBCC49: FLdRfVar var_C4
  loc_BBCC4C: FLdPr var_1CC
  loc_BBCC4F: from_stack_1v = clsasiento.RsFrmGet()
  loc_BBCC54: FLdPr var_C4
  loc_BBCC57:  = Me.Fields
  loc_BBCC5C: FLdPr var_C8
  loc_BBCC5F: from_stack_2 = Me.Item(from_stack_1)
  loc_BBCC64: FLdPr var_1D4
  loc_BBCC67:  = Me.Value
  loc_BBCC6C: LitI4 1
  loc_BBCC71: FLdRfVar var_E0
  loc_BBCC74: CStrVarTmp
  loc_BBCC75: FStStrNoPop var_D0
  loc_BBCC78: ImpAdCallI2 Left$(, )
  loc_BBCC7D: FStStrNoPop var_154
  loc_BBCC80: LitI4 1
  loc_BBCC85: FLdPr Me
  loc_BBCC88: MemLdI2 global_94
  loc_BBCC8B: CI4UI1
  loc_BBCC8C: FLdPr Me
  loc_BBCC8F: MemLdStr global_84
  loc_BBCC92: Ary1LdPr
  loc_BBCC93: MemLdStr global_0
  loc_BBCC96: ImpAdCallI2 Left$(, )
  loc_BBCC9B: FStStrNoPop var_158
  loc_BBCC9E: NeStr
  loc_BBCCA0: FFreeStr var_D0 = "": var_154 = ""
  loc_BBCCA9: FFreeAd var_C4 = "": var_C8 = ""
  loc_BBCCB2: FFree1Var var_E0 = ""
  loc_BBCCB5: BranchF loc_BBCCC2
  loc_BBCCBA: Call Proc_167_22_9F0A9C()
  loc_BBCCBF: Branch loc_BBCE73
  loc_BBCCC6: FLdRfVar var_E0
  loc_BBCCC9: FLdRfVar var_1D4
  loc_BBCCCC: LitVarStr var_B0, "CodiTicu"
  loc_BBCCD1: PopAdLdVar
  loc_BBCCD2: FLdRfVar var_C8
  loc_BBCCD5: FLdRfVar var_C4
  loc_BBCCD8: FLdPr var_1CC
  loc_BBCCDB: from_stack_1v = clsasiento.RsFrmGet()
  loc_BBCCE0: FLdPr var_C4
  loc_BBCCE3:  = Me.Fields
  loc_BBCCE8: FLdPr var_C8
  loc_BBCCEB: from_stack_2 = Me.Item(from_stack_1)
  loc_BBCCF0: FLdPr var_1D4
  loc_BBCCF3:  = Me.Value
  loc_BBCCF8: LitI4 2
  loc_BBCCFD: FLdRfVar var_E0
  loc_BBCD00: CStrVarTmp
  loc_BBCD01: FStStrNoPop var_D0
  loc_BBCD04: ImpAdCallI2 Left$(, )
  loc_BBCD09: FStStrNoPop var_154
  loc_BBCD0C: LitI4 2
  loc_BBCD11: FLdPr Me
  loc_BBCD14: MemLdI2 global_96
  loc_BBCD17: CI4UI1
  loc_BBCD18: FLdPr Me
  loc_BBCD1B: MemLdI2 global_94
  loc_BBCD1E: CI4UI1
  loc_BBCD1F: FLdPr Me
  loc_BBCD22: MemLdStr global_84
  loc_BBCD25: Ary1LdPr
  loc_BBCD26: MemLdStr global_8
  loc_BBCD29: Ary1LdPr
  loc_BBCD2A: MemLdStr global_0
  loc_BBCD2D: ImpAdCallI2 Left$(, )
  loc_BBCD32: FStStrNoPop var_158
  loc_BBCD35: NeStr
  loc_BBCD37: FFreeStr var_D0 = "": var_154 = ""
  loc_BBCD40: FFreeAd var_C4 = "": var_C8 = ""
  loc_BBCD49: FFree1Var var_E0 = ""
  loc_BBCD4C: BranchF loc_BBCD59
  loc_BBCD51: Call Proc_167_23_A0E9D4()
  loc_BBCD56: Branch loc_BBCE71
  loc_BBCD5D: FLdRfVar var_E0
  loc_BBCD60: FLdRfVar var_1D4
  loc_BBCD63: LitVarStr var_B0, "CodiTicu"
  loc_BBCD68: PopAdLdVar
  loc_BBCD69: FLdRfVar var_C8
  loc_BBCD6C: FLdRfVar var_C4
  loc_BBCD6F: FLdPr var_1CC
  loc_BBCD72: from_stack_1v = clsasiento.RsFrmGet()
  loc_BBCD77: FLdPr var_C4
  loc_BBCD7A:  = Me.Fields
  loc_BBCD7F: FLdPr var_C8
  loc_BBCD82: from_stack_2 = Me.Item(from_stack_1)
  loc_BBCD87: FLdPr var_1D4
  loc_BBCD8A:  = Me.Value
  loc_BBCD8F: FLdRfVar var_E0
  loc_BBCD92: FLdPr Me
  loc_BBCD95: MemLdI2 global_98
  loc_BBCD98: CI4UI1
  loc_BBCD99: FLdPr Me
  loc_BBCD9C: MemLdI2 global_96
  loc_BBCD9F: CI4UI1
  loc_BBCDA0: FLdPr Me
  loc_BBCDA3: MemLdI2 global_94
  loc_BBCDA6: CI4UI1
  loc_BBCDA7: FLdPr Me
  loc_BBCDAA: MemLdStr global_84
  loc_BBCDAD: Ary1LdPr
  loc_BBCDAE: MemLdStr global_8
  loc_BBCDB1: Ary1LdPr
  loc_BBCDB2: MemLdStr global_8
  loc_BBCDB5: Ary1LdPr
  loc_BBCDB6: MemLdStr global_0
  loc_BBCDB9: CI2Str
  loc_BBCDBB: CVarI2 var_C0
  loc_BBCDBE: HardType
  loc_BBCDBF: NeVarBool
  loc_BBCDC1: FFreeAd var_C4 = "": var_C8 = ""
  loc_BBCDCA: FFree1Var var_E0 = ""
  loc_BBCDCD: BranchF loc_BBCDDA
  loc_BBCDD2: Call Proc_167_24_A0C7FC()
  loc_BBCDD7: Branch loc_BBCE6F
  loc_BBCDDE: FLdRfVar var_E0
  loc_BBCDE1: FLdRfVar var_1D4
  loc_BBCDE4: LitVarStr var_B0, "CodiCuco"
  loc_BBCDE9: PopAdLdVar
  loc_BBCDEA: FLdRfVar var_C8
  loc_BBCDED: FLdRfVar var_C4
  loc_BBCDF0: FLdPr var_1CC
  loc_BBCDF3: from_stack_1v = clsasiento.RsFrmGet()
  loc_BBCDF8: FLdPr var_C4
  loc_BBCDFB:  = Me.Fields
  loc_BBCE00: FLdPr var_C8
  loc_BBCE03: from_stack_2 = Me.Item(from_stack_1)
  loc_BBCE08: FLdPr var_1D4
  loc_BBCE0B:  = Me.Value
  loc_BBCE10: FLdRfVar var_E0
  loc_BBCE13: FLdPr Me
  loc_BBCE16: MemLdI2 global_92
  loc_BBCE19: CI4UI1
  loc_BBCE1A: FLdPr Me
  loc_BBCE1D: MemLdI2 global_98
  loc_BBCE20: CI4UI1
  loc_BBCE21: FLdPr Me
  loc_BBCE24: MemLdI2 global_96
  loc_BBCE27: CI4UI1
  loc_BBCE28: FLdPr Me
  loc_BBCE2B: MemLdI2 global_94
  loc_BBCE2E: CI4UI1
  loc_BBCE2F: FLdPr Me
  loc_BBCE32: MemLdStr global_84
  loc_BBCE35: Ary1LdPr
  loc_BBCE36: MemLdStr global_8
  loc_BBCE39: Ary1LdPr
  loc_BBCE3A: MemLdStr global_8
  loc_BBCE3D: Ary1LdPr
  loc_BBCE3E: MemLdStr global_8
  loc_BBCE41: Ary1LdPr
  loc_BBCE42: MemLdStr global_0
  loc_BBCE45: CVarStr var_C0
  loc_BBCE48: HardType
  loc_BBCE49: NeVarBool
  loc_BBCE4B: FFreeAd var_C4 = "": var_C8 = ""
  loc_BBCE54: FFree1Var var_E0 = ""
  loc_BBCE57: BranchF loc_BBCE64
  loc_BBCE5C: Call Proc_167_25_A19BC4()
  loc_BBCE61: Branch loc_BBCE6D
  loc_BBCE68: Call Proc_167_26_BC90BC()
  loc_BBCE77: FLdPr Me
  loc_BBCE7A: MemLdRfVar from_stack_1.global_108
  loc_BBCE7D: NextI2 var_1D0, loc_BBCC2E
  loc_BBCE86: LitNothing
  loc_BBCE88: FStAd var_1CC 
  loc_BBCE8E: LitI2_Byte 1
  loc_BBCE90: FLdPr Me
  loc_BBCE93: MemLdRfVar from_stack_1.global_94
  loc_BBCE96: FLdPr Me
  loc_BBCE99: MemLdStr global_84
  loc_BBCE9C: LitI2_Byte 1
  loc_BBCE9E: FnUBound
  loc_BBCEA0: CI2I4
  loc_BBCEA1: ForI2 var_1D8
  loc_BBCEA9: LitI2_Byte 1
  loc_BBCEAB: FLdPr Me
  loc_BBCEAE: MemLdRfVar from_stack_1.global_96
  loc_BBCEB1: FLdPr Me
  loc_BBCEB4: MemLdI2 global_94
  loc_BBCEB7: CI4UI1
  loc_BBCEB8: FLdPr Me
  loc_BBCEBB: MemLdStr global_84
  loc_BBCEBE: Ary1LdPr
  loc_BBCEBF: MemLdStr global_8
  loc_BBCEC2: LitI2_Byte 1
  loc_BBCEC4: FnUBound
  loc_BBCEC6: CI2I4
  loc_BBCEC7: ForI2 var_1DC
  loc_BBCECF: LitI2_Byte 1
  loc_BBCED1: FLdPr Me
  loc_BBCED4: MemLdRfVar from_stack_1.global_98
  loc_BBCED7: FLdPr Me
  loc_BBCEDA: MemLdI2 global_96
  loc_BBCEDD: CI4UI1
  loc_BBCEDE: FLdPr Me
  loc_BBCEE1: MemLdI2 global_94
  loc_BBCEE4: CI4UI1
  loc_BBCEE5: FLdPr Me
  loc_BBCEE8: MemLdStr global_84
  loc_BBCEEB: Ary1LdPr
  loc_BBCEEC: MemLdStr global_8
  loc_BBCEEF: Ary1LdPr
  loc_BBCEF0: MemLdStr global_8
  loc_BBCEF3: LitI2_Byte 1
  loc_BBCEF5: FnUBound
  loc_BBCEF7: CI2I4
  loc_BBCEF8: ForI2 var_1E0
  loc_BBCF00: FLdPr Me
  loc_BBCF03: MemLdI2 global_96
  loc_BBCF06: CI4UI1
  loc_BBCF07: FLdPr Me
  loc_BBCF0A: MemLdI2 global_94
  loc_BBCF0D: CI4UI1
  loc_BBCF0E: FLdPr Me
  loc_BBCF11: MemLdStr global_84
  loc_BBCF14: AryLock
  loc_BBCF17: Ary1LdPr
  loc_BBCF18: MemLdStr global_8
  loc_BBCF1B: AryLock
  loc_BBCF1E: Ary1LdPr
  loc_BBCF1F: MemLdRfVar from_stack_1.global_12
  loc_BBCF22: FLdPr Me
  loc_BBCF25: MemLdI2 global_98
  loc_BBCF28: CI4UI1
  loc_BBCF29: FLdPr Me
  loc_BBCF2C: MemLdI2 global_96
  loc_BBCF2F: CI4UI1
  loc_BBCF30: FLdPr Me
  loc_BBCF33: MemLdI2 global_94
  loc_BBCF36: CI4UI1
  loc_BBCF37: FLdPr Me
  loc_BBCF3A: MemLdStr global_84
  loc_BBCF3D: AryLock
  loc_BBCF40: Ary1LdPr
  loc_BBCF41: MemLdStr global_8
  loc_BBCF44: AryLock
  loc_BBCF47: Ary1LdPr
  loc_BBCF48: MemLdStr global_8
  loc_BBCF4B: AryLock
  loc_BBCF4E: Ary1LdPr
  loc_BBCF4F: MemLdRfVar from_stack_1.global_12
  loc_BBCF52: Call Proc_167_21_A26F04()
  loc_BBCF57: AryUnlock
  loc_BBCF5A: AryUnlock
  loc_BBCF5D: AryUnlock
  loc_BBCF60: AryUnlock
  loc_BBCF63: AryUnlock
  loc_BBCF68: LitI2_Byte 1
  loc_BBCF6A: FLdPr Me
  loc_BBCF6D: MemLdRfVar from_stack_1.global_92
  loc_BBCF70: FLdPr Me
  loc_BBCF73: MemLdI2 global_98
  loc_BBCF76: CI4UI1
  loc_BBCF77: FLdPr Me
  loc_BBCF7A: MemLdI2 global_96
  loc_BBCF7D: CI4UI1
  loc_BBCF7E: FLdPr Me
  loc_BBCF81: MemLdI2 global_94
  loc_BBCF84: CI4UI1
  loc_BBCF85: FLdPr Me
  loc_BBCF88: MemLdStr global_84
  loc_BBCF8B: Ary1LdPr
  loc_BBCF8C: MemLdStr global_8
  loc_BBCF8F: Ary1LdPr
  loc_BBCF90: MemLdStr global_8
  loc_BBCF93: Ary1LdPr
  loc_BBCF94: MemLdStr global_8
  loc_BBCF97: LitI2_Byte 1
  loc_BBCF99: FnUBound
  loc_BBCF9B: CI2I4
  loc_BBCF9C: ForI2 var_1F8
  loc_BBCFA4: FLdPr Me
  loc_BBCFA7: MemLdI2 global_92
  loc_BBCFAA: CI4UI1
  loc_BBCFAB: FLdPr Me
  loc_BBCFAE: MemLdI2 global_98
  loc_BBCFB1: CI4UI1
  loc_BBCFB2: FLdPr Me
  loc_BBCFB5: MemLdI2 global_96
  loc_BBCFB8: CI4UI1
  loc_BBCFB9: FLdPr Me
  loc_BBCFBC: MemLdI2 global_94
  loc_BBCFBF: CI4UI1
  loc_BBCFC0: FLdPr Me
  loc_BBCFC3: MemLdStr global_84
  loc_BBCFC6: AryLock
  loc_BBCFC9: Ary1LdPr
  loc_BBCFCA: MemLdStr global_8
  loc_BBCFCD: AryLock
  loc_BBCFD0: Ary1LdPr
  loc_BBCFD1: MemLdStr global_8
  loc_BBCFD4: AryLock
  loc_BBCFD7: Ary1LdPr
  loc_BBCFD8: MemLdStr global_8
  loc_BBCFDB: AryLock
  loc_BBCFDE: Ary1LdRf
  loc_BBCFDF: FStR4 var_20C
  loc_BBCFE4: FMemLdR4 var_20C(16)
  loc_BBCFE9: LitStr vbNullString
  loc_BBCFEC: NeStr
  loc_BBCFEE: BranchF loc_BBD025
  loc_BBCFF3: LitI2_Byte 0
  loc_BBCFF5: LitI4 1
  loc_BBCFFA: FLdPr Me
  loc_BBCFFD: MemLdStr global_88
  loc_BBD000: AryLock
  loc_BBD003: Ary1LdPr
  loc_BBD004: MemLdRfVar from_stack_1.global_16
  loc_BBD007: CVarRef
  loc_BBD00C: LitI2_Byte &HFF
  loc_BBD00E: FMemLdR4 var_20C(16)
  loc_BBD013: CVarStr var_B0
  loc_BBD016: PopAdLdVar
  loc_BBD017: FLdPr Me
  loc_BBD01A: MemLdRfVar from_stack_1.global_112
  loc_BBD01D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBD022: AryUnlock
  loc_BBD027: FMemLdR4 var_20C(20)
  loc_BBD02C: LitStr vbNullString
  loc_BBD02F: NeStr
  loc_BBD031: BranchF loc_BBD068
  loc_BBD036: LitI2_Byte 0
  loc_BBD038: LitI4 1
  loc_BBD03D: FLdPr Me
  loc_BBD040: MemLdStr global_88
  loc_BBD043: AryLock
  loc_BBD046: Ary1LdPr
  loc_BBD047: MemLdRfVar from_stack_1.global_20
  loc_BBD04A: CVarRef
  loc_BBD04F: LitI2_Byte &HFF
  loc_BBD051: FMemLdR4 var_20C(20)
  loc_BBD056: CVarStr var_B0
  loc_BBD059: PopAdLdVar
  loc_BBD05A: FLdPr Me
  loc_BBD05D: MemLdRfVar from_stack_1.global_112
  loc_BBD060: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBD065: AryUnlock
  loc_BBD06A: FMemLdR4 var_20C(24)
  loc_BBD06F: LitStr vbNullString
  loc_BBD072: NeStr
  loc_BBD074: BranchF loc_BBD0AB
  loc_BBD079: LitI2_Byte 0
  loc_BBD07B: LitI4 1
  loc_BBD080: FLdPr Me
  loc_BBD083: MemLdStr global_88
  loc_BBD086: AryLock
  loc_BBD089: Ary1LdPr
  loc_BBD08A: MemLdRfVar from_stack_1.global_24
  loc_BBD08D: CVarRef
  loc_BBD092: LitI2_Byte &HFF
  loc_BBD094: FMemLdR4 var_20C(24)
  loc_BBD099: CVarStr var_B0
  loc_BBD09C: PopAdLdVar
  loc_BBD09D: FLdPr Me
  loc_BBD0A0: MemLdRfVar from_stack_1.global_112
  loc_BBD0A3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBD0A8: AryUnlock
  loc_BBD0AD: FMemLdR4 var_20C(28)
  loc_BBD0B2: LitStr vbNullString
  loc_BBD0B5: NeStr
  loc_BBD0B7: BranchF loc_BBD0EE
  loc_BBD0BC: LitI2_Byte 0
  loc_BBD0BE: LitI4 1
  loc_BBD0C3: FLdPr Me
  loc_BBD0C6: MemLdStr global_88
  loc_BBD0C9: AryLock
  loc_BBD0CC: Ary1LdPr
  loc_BBD0CD: MemLdRfVar from_stack_1.global_28
  loc_BBD0D0: CVarRef
  loc_BBD0D5: LitI2_Byte &HFF
  loc_BBD0D7: FMemLdR4 var_20C(28)
  loc_BBD0DC: CVarStr var_B0
  loc_BBD0DF: PopAdLdVar
  loc_BBD0E0: FLdPr Me
  loc_BBD0E3: MemLdRfVar from_stack_1.global_112
  loc_BBD0E6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBD0EB: AryUnlock
  loc_BBD0F0: FMemLdR4 var_20C(48)
  loc_BBD0F5: LitStr vbNullString
  loc_BBD0F8: NeStr
  loc_BBD0FA: BranchF loc_BBD131
  loc_BBD0FF: LitI2_Byte 0
  loc_BBD101: LitI4 1
  loc_BBD106: FLdPr Me
  loc_BBD109: MemLdStr global_88
  loc_BBD10C: AryLock
  loc_BBD10F: Ary1LdPr
  loc_BBD110: MemLdRfVar from_stack_1.global_48
  loc_BBD113: CVarRef
  loc_BBD118: LitI2_Byte &HFF
  loc_BBD11A: FMemLdR4 var_20C(48)
  loc_BBD11F: CVarStr var_B0
  loc_BBD122: PopAdLdVar
  loc_BBD123: FLdPr Me
  loc_BBD126: MemLdRfVar from_stack_1.global_112
  loc_BBD129: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBD12E: AryUnlock
  loc_BBD133: FMemLdR4 var_20C(52)
  loc_BBD138: LitStr vbNullString
  loc_BBD13B: NeStr
  loc_BBD13D: BranchF loc_BBD174
  loc_BBD142: LitI2_Byte 0
  loc_BBD144: LitI4 1
  loc_BBD149: FLdPr Me
  loc_BBD14C: MemLdStr global_88
  loc_BBD14F: AryLock
  loc_BBD152: Ary1LdPr
  loc_BBD153: MemLdRfVar from_stack_1.htmFile
  loc_BBD156: CVarRef
  loc_BBD15B: LitI2_Byte &HFF
  loc_BBD15D: FMemLdR4 var_20C(52)
  loc_BBD162: CVarStr var_B0
  loc_BBD165: PopAdLdVar
  loc_BBD166: FLdPr Me
  loc_BBD169: MemLdRfVar from_stack_1.global_112
  loc_BBD16C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BBD171: AryUnlock
  loc_BBD176: LitI4 0
  loc_BBD17B: FStR4 var_20C
  loc_BBD17E: AryUnlock
  loc_BBD181: AryUnlock
  loc_BBD184: AryUnlock
  loc_BBD187: AryUnlock
  loc_BBD18C: FLdPr Me
  loc_BBD18F: MemLdRfVar from_stack_1.global_92
  loc_BBD192: NextI2 var_1F8, loc_BBCFA2
  loc_BBD199: FLdPr Me
  loc_BBD19C: MemLdRfVar from_stack_1.global_98
  loc_BBD19F: NextI2 var_1E0, loc_BBCEFE
  loc_BBD1A6: FLdPr Me
  loc_BBD1A9: MemLdI2 global_94
  loc_BBD1AC: CI4UI1
  loc_BBD1AD: FLdPr Me
  loc_BBD1B0: MemLdStr global_84
  loc_BBD1B3: AryLock
  loc_BBD1B6: Ary1LdPr
  loc_BBD1B7: MemLdRfVar from_stack_1.global_12
  loc_BBD1BA: FLdPr Me
  loc_BBD1BD: MemLdI2 global_96
  loc_BBD1C0: CI4UI1
  loc_BBD1C1: FLdPr Me
  loc_BBD1C4: MemLdI2 global_94
  loc_BBD1C7: CI4UI1
  loc_BBD1C8: FLdPr Me
  loc_BBD1CB: MemLdStr global_84
  loc_BBD1CE: AryLock
  loc_BBD1D1: Ary1LdPr
  loc_BBD1D2: MemLdStr global_8
  loc_BBD1D5: AryLock
  loc_BBD1D8: Ary1LdPr
  loc_BBD1D9: MemLdRfVar from_stack_1.global_12
  loc_BBD1DC: Call Proc_167_21_A26F04()
  loc_BBD1E1: AryUnlock
  loc_BBD1E4: AryUnlock
  loc_BBD1E7: AryUnlock
  loc_BBD1EC: FLdPr Me
  loc_BBD1EF: MemLdI2 global_96
  loc_BBD1F2: CI4UI1
  loc_BBD1F3: FLdPr Me
  loc_BBD1F6: MemLdI2 global_94
  loc_BBD1F9: CI4UI1
  loc_BBD1FA: FLdPr Me
  loc_BBD1FD: MemLdStr global_84
  loc_BBD200: AryLock
  loc_BBD203: Ary1LdPr
  loc_BBD204: MemLdStr global_8
  loc_BBD207: AryLock
  loc_BBD20A: Ary1LdPr
  loc_BBD20B: MemLdRfVar from_stack_1.global_12
  loc_BBD20E: FStR4 var_218
  loc_BBD213: FMemLdRf 0
  loc_BBD218: FMemLdRf 0
  loc_BBD21D: FMemLdR4 var_218(12)
  loc_BBD222: FMemLdR4 var_218(8)
  loc_BBD227: Call Proc_167_28_9E4ECC()
  loc_BBD22E: FMemLdRf 0
  loc_BBD233: FMemLdRf 0
  loc_BBD238: FMemLdR4 var_218(36)
  loc_BBD23D: FMemLdR4 var_218(32)
  loc_BBD242: Call Proc_167_28_9E4ECC()
  loc_BBD249: FLdRfVar var_220
  loc_BBD24C: FMemLdR4 var_218(32)
  loc_BBD251: FMemLdR4 var_218(8)
  loc_BBD256: Call Proc_167_27_9A6200()
  loc_BBD25B: FLdRfVar var_228
  loc_BBD25E: FMemLdR4 var_218(36)
  loc_BBD263: FMemLdR4 var_218(12)
  loc_BBD268: Call Proc_167_27_9A6200()
  loc_BBD26D: FMemLdRf 0
  loc_BBD272: FMemLdRf 0
  loc_BBD277: FLdFPR8 var_228
  loc_BBD27A: CStrR8
  loc_BBD27C: FStStrNoPop var_154
  loc_BBD27F: FLdFPR8 var_220
  loc_BBD282: CStrR8
  loc_BBD284: FStStrNoPop var_D0
  loc_BBD287: Call Proc_167_28_9E4ECC()
  loc_BBD28C: FFreeStr var_D0 = ""
  loc_BBD295: LitI4 0
  loc_BBD29A: FStR4 var_218
  loc_BBD29D: AryUnlock
  loc_BBD2A0: AryUnlock
  loc_BBD2A5: FLdPr Me
  loc_BBD2A8: MemLdRfVar from_stack_1.global_96
  loc_BBD2AB: NextI2 var_1DC, loc_BBCECD
  loc_BBD2B2: LitI4 1
  loc_BBD2B7: FLdPr Me
  loc_BBD2BA: MemLdStr global_88
  loc_BBD2BD: AryLock
  loc_BBD2C0: Ary1LdRf
  loc_BBD2C1: FLdPr Me
  loc_BBD2C4: MemLdI2 global_94
  loc_BBD2C7: CI4UI1
  loc_BBD2C8: FLdPr Me
  loc_BBD2CB: MemLdStr global_84
  loc_BBD2CE: AryLock
  loc_BBD2D1: Ary1LdPr
  loc_BBD2D2: MemLdRfVar from_stack_1.global_12
  loc_BBD2D5: Call Proc_167_21_A26F04()
  loc_BBD2DA: AryUnlock
  loc_BBD2DD: AryUnlock
  loc_BBD2E2: FLdPr Me
  loc_BBD2E5: MemLdI2 global_94
  loc_BBD2E8: CI4UI1
  loc_BBD2E9: FLdPr Me
  loc_BBD2EC: MemLdStr global_84
  loc_BBD2EF: AryLock
  loc_BBD2F2: Ary1LdPr
  loc_BBD2F3: MemLdRfVar from_stack_1.global_12
  loc_BBD2F6: FStR4 var_230
  loc_BBD2FB: FMemLdRf 0
  loc_BBD300: FMemLdRf 0
  loc_BBD305: FMemLdR4 var_230(12)
  loc_BBD30A: FMemLdR4 var_230(8)
  loc_BBD30F: Call Proc_167_28_9E4ECC()
  loc_BBD316: FMemLdRf 0
  loc_BBD31B: FMemLdRf 0
  loc_BBD320: FMemLdR4 var_230(36)
  loc_BBD325: FMemLdR4 var_230(32)
  loc_BBD32A: Call Proc_167_28_9E4ECC()
  loc_BBD331: FLdRfVar var_220
  loc_BBD334: FMemLdR4 var_230(32)
  loc_BBD339: FMemLdR4 var_230(8)
  loc_BBD33E: Call Proc_167_27_9A6200()
  loc_BBD343: FLdRfVar var_228
  loc_BBD346: FMemLdR4 var_230(36)
  loc_BBD34B: FMemLdR4 var_230(12)
  loc_BBD350: Call Proc_167_27_9A6200()
  loc_BBD355: FMemLdRf 0
  loc_BBD35A: FMemLdRf 0
  loc_BBD35F: FLdFPR8 var_228
  loc_BBD362: CStrR8
  loc_BBD364: FStStrNoPop var_154
  loc_BBD367: FLdFPR8 var_220
  loc_BBD36A: CStrR8
  loc_BBD36C: FStStrNoPop var_D0
  loc_BBD36F: Call Proc_167_28_9E4ECC()
  loc_BBD374: FFreeStr var_D0 = ""
  loc_BBD37D: LitI4 0
  loc_BBD382: FStR4 var_230
  loc_BBD385: AryUnlock
  loc_BBD38A: FLdPr Me
  loc_BBD38D: MemLdRfVar from_stack_1.global_94
  loc_BBD390: NextI2 var_1D8, loc_BBCEA7
  loc_BBD397: LitI2_Byte &HFF
  loc_BBD399: FLdPr Me
  loc_BBD39C: MemStI2 bGenerado
  loc_BBD3A1: LitI4 0
  loc_BBD3A6: CI2I4
  loc_BBD3A7: FLdPr Me
  loc_BBD3AA: Me.MousePointer = from_stack_1
  loc_BBD3B1: LitVarStr var_B0, vbNullString
  loc_BBD3B6: PopAdLdVar
  loc_BBD3B7: FLdPr Me
  loc_BBD3BA: VCallAd Control_ID_statusBar
  loc_BBD3BD: FStAdFunc var_C4
  loc_BBD3C0: FLdPr var_C4
  loc_BBD3C3: LateIdSt
  loc_BBD3C8: FFree1Ad var_C4
  loc_BBD3CD: ExitProcHresult
  loc_BBD3D0: LitI4 0
  loc_BBD3D5: LitStr "Error "
  loc_BBD3D8: FLdRfVar var_CC
  loc_BBD3DB: ImpAdCallI2 Err 'rtcErrObj
  loc_BBD3E0: FStAdFunc var_C4
  loc_BBD3E3: FLdPr var_C4
  loc_BBD3E6:  = Err.Number
  loc_BBD3EB: ILdRf var_CC
  loc_BBD3EE: CStrI4
  loc_BBD3F0: FStStrNoPop var_D0
  loc_BBD3F3: ConcatStr
  loc_BBD3F4: FStStrNoPop var_154
  loc_BBD3F7: LitStr ": "
  loc_BBD3FA: ConcatStr
  loc_BBD3FB: FStStrNoPop var_15C
  loc_BBD3FE: FLdRfVar var_158
  loc_BBD401: ImpAdCallI2 Err 'rtcErrObj
  loc_BBD406: FStAdFunc var_C8
  loc_BBD409: FLdPr var_C8
  loc_BBD40C:  = Err.Description
  loc_BBD411: ILdRf var_158
  loc_BBD414: ConcatStr
  loc_BBD415: FStStrNoPop var_160
  loc_BBD418: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BBD41D: FFreeStr var_D0 = "": var_154 = "": var_15C = "": var_158 = ""
  loc_BBD42A: FFreeAd var_C4 = ""
  loc_BBD433: Resume
  loc_BBD439: ExitProcHresult
  loc_BBD43C: ExitProcHresult
  loc_BBD43F: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B97034
  'Data Table: 48F5A0
  loc_B961A4: FLdRfVar var_88
  loc_B961A7: LitI2_Byte 0
  loc_B961A9: LitI2_Byte &HFF
  loc_B961AB: ImpAdLdI4 MemVar_C3D83C
  loc_B961AE: FLdPr Me
  loc_B961B1: MemLdRfVar from_stack_1.global_80
  loc_B961B4: NewIfNullPr IFileSystem3
  loc_B961B7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B961BC: ILdRf var_88
  loc_B961BF: FLdPr Me
  loc_B961C2: MemStVarAd
  loc_B961C6: FFree1Ad var_88
  loc_B961C9: Call Proc_167_29_B33610()
  loc_B961CE: LitI2_Byte 1
  loc_B961D0: FLdPr Me
  loc_B961D3: MemLdRfVar from_stack_1.global_94
  loc_B961D6: FLdPr Me
  loc_B961D9: MemLdStr global_84
  loc_B961DC: LitI2_Byte 1
  loc_B961DE: FnUBound
  loc_B961E0: CI2I4
  loc_B961E1: ForI2 var_8C
  loc_B961E7: LitVarStr var_9C, "  <tr align=""left"" class=""Totales"">"
  loc_B961EC: PopAdLdVar
  loc_B961ED: FLdPr Me
  loc_B961F0: MemLdRfVar from_stack_1.htmFile
  loc_B961F3: LdPrVar
  loc_B961F5: LateMemCall
  loc_B961FB: FLdPr Me
  loc_B961FE: MemLdI2 global_94
  loc_B96201: CI4UI1
  loc_B96202: FLdPr Me
  loc_B96205: MemLdStr global_84
  loc_B96208: AryLock
  loc_B9620B: Ary1LdRf
  loc_B9620C: FStR4 var_B4
  loc_B9620F: LitStr "     <td class=""Encabezado"" align=""left"">"
  loc_B96212: FMemLdR4 var_B4(4)
  loc_B96217: ConcatStr
  loc_B96218: FStStrNoPop var_B8
  loc_B9621B: LitStr "</td>"
  loc_B9621E: ConcatStr
  loc_B9621F: CVarStr var_C8
  loc_B96222: PopAdLdVar
  loc_B96223: FLdPr Me
  loc_B96226: MemLdRfVar from_stack_1.htmFile
  loc_B96229: LdPrVar
  loc_B9622B: LateMemCall
  loc_B96231: FFree1Str var_B8
  loc_B96234: FFree1Var var_C8 = ""
  loc_B96237: LitI4 0
  loc_B9623C: LitI4 0
  loc_B96241: LitI2_Byte 0
  loc_B96243: LitStr "right"
  loc_B96246: FMemLdR4 var_B4(20)
  loc_B9624B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96250: CVarStr var_C8
  loc_B96253: PopAdLdVar
  loc_B96254: FLdPr Me
  loc_B96257: MemLdRfVar from_stack_1.htmFile
  loc_B9625A: LdPrVar
  loc_B9625C: LateMemCall
  loc_B96262: FFree1Var var_C8 = ""
  loc_B96265: LitI4 0
  loc_B9626A: LitI4 0
  loc_B9626F: LitI2_Byte 0
  loc_B96271: LitStr "right"
  loc_B96274: FMemLdR4 var_B4(24)
  loc_B96279: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9627E: CVarStr var_C8
  loc_B96281: PopAdLdVar
  loc_B96282: FLdPr Me
  loc_B96285: MemLdRfVar from_stack_1.htmFile
  loc_B96288: LdPrVar
  loc_B9628A: LateMemCall
  loc_B96290: FFree1Var var_C8 = ""
  loc_B96293: LitI4 0
  loc_B96298: LitI4 0
  loc_B9629D: LitI2_Byte 0
  loc_B9629F: LitStr "right"
  loc_B962A2: FMemLdR4 var_B4(28)
  loc_B962A7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B962AC: CVarStr var_C8
  loc_B962AF: PopAdLdVar
  loc_B962B0: FLdPr Me
  loc_B962B3: MemLdRfVar from_stack_1.htmFile
  loc_B962B6: LdPrVar
  loc_B962B8: LateMemCall
  loc_B962BE: FFree1Var var_C8 = ""
  loc_B962C1: LitI4 0
  loc_B962C6: LitI4 0
  loc_B962CB: LitI2_Byte 0
  loc_B962CD: LitStr "right"
  loc_B962D0: FMemLdR4 var_B4(32)
  loc_B962D5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B962DA: CVarStr var_C8
  loc_B962DD: PopAdLdVar
  loc_B962DE: FLdPr Me
  loc_B962E1: MemLdRfVar from_stack_1.htmFile
  loc_B962E4: LdPrVar
  loc_B962E6: LateMemCall
  loc_B962EC: FFree1Var var_C8 = ""
  loc_B962EF: LitI4 0
  loc_B962F4: LitI4 0
  loc_B962F9: LitI2_Byte 0
  loc_B962FB: LitStr "right"
  loc_B962FE: FMemLdR4 var_B4(44)
  loc_B96303: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96308: CVarStr var_C8
  loc_B9630B: PopAdLdVar
  loc_B9630C: FLdPr Me
  loc_B9630F: MemLdRfVar from_stack_1.htmFile
  loc_B96312: LdPrVar
  loc_B96314: LateMemCall
  loc_B9631A: FFree1Var var_C8 = ""
  loc_B9631D: LitI4 0
  loc_B96322: LitI4 0
  loc_B96327: LitI2_Byte 0
  loc_B96329: LitStr "right"
  loc_B9632C: FMemLdR4 var_B4(48)
  loc_B96331: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96336: CVarStr var_C8
  loc_B96339: PopAdLdVar
  loc_B9633A: FLdPr Me
  loc_B9633D: MemLdRfVar from_stack_1.htmFile
  loc_B96340: LdPrVar
  loc_B96342: LateMemCall
  loc_B96348: FFree1Var var_C8 = ""
  loc_B9634B: LitI4 0
  loc_B96350: LitI4 0
  loc_B96355: LitI2_Byte 0
  loc_B96357: LitStr "right"
  loc_B9635A: FMemLdR4 var_B4(36)
  loc_B9635F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96364: CVarStr var_C8
  loc_B96367: PopAdLdVar
  loc_B96368: FLdPr Me
  loc_B9636B: MemLdRfVar from_stack_1.htmFile
  loc_B9636E: LdPrVar
  loc_B96370: LateMemCall
  loc_B96376: FFree1Var var_C8 = ""
  loc_B96379: LitI4 0
  loc_B9637E: LitI4 0
  loc_B96383: LitI2_Byte 0
  loc_B96385: LitStr "right"
  loc_B96388: FMemLdR4 var_B4(40)
  loc_B9638D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96392: CVarStr var_C8
  loc_B96395: PopAdLdVar
  loc_B96396: FLdPr Me
  loc_B96399: MemLdRfVar from_stack_1.htmFile
  loc_B9639C: LdPrVar
  loc_B9639E: LateMemCall
  loc_B963A4: FFree1Var var_C8 = ""
  loc_B963A7: LitI4 0
  loc_B963AC: LitI4 0
  loc_B963B1: LitI2_Byte 0
  loc_B963B3: LitStr "right"
  loc_B963B6: FMemLdR4 var_B4(52)
  loc_B963BB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B963C0: CVarStr var_C8
  loc_B963C3: PopAdLdVar
  loc_B963C4: FLdPr Me
  loc_B963C7: MemLdRfVar from_stack_1.htmFile
  loc_B963CA: LdPrVar
  loc_B963CC: LateMemCall
  loc_B963D2: FFree1Var var_C8 = ""
  loc_B963D5: LitI4 0
  loc_B963DA: LitI4 0
  loc_B963DF: LitI2_Byte 0
  loc_B963E1: LitStr "right"
  loc_B963E4: FMemLdR4 var_B4(56)
  loc_B963E9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B963EE: CVarStr var_C8
  loc_B963F1: PopAdLdVar
  loc_B963F2: FLdPr Me
  loc_B963F5: MemLdRfVar from_stack_1.htmFile
  loc_B963F8: LdPrVar
  loc_B963FA: LateMemCall
  loc_B96400: FFree1Var var_C8 = ""
  loc_B96403: LitI4 0
  loc_B96408: LitI4 0
  loc_B9640D: LitI2_Byte 0
  loc_B9640F: LitStr "right"
  loc_B96412: FMemLdR4 var_B4(60)
  loc_B96417: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9641C: CVarStr var_C8
  loc_B9641F: PopAdLdVar
  loc_B96420: FLdPr Me
  loc_B96423: MemLdRfVar from_stack_1.htmFile
  loc_B96426: LdPrVar
  loc_B96428: LateMemCall
  loc_B9642E: FFree1Var var_C8 = ""
  loc_B96431: LitI4 0
  loc_B96436: LitI4 0
  loc_B9643B: LitI2_Byte 0
  loc_B9643D: LitStr "right"
  loc_B96440: FMemLdR4 var_B4(64)
  loc_B96445: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9644A: CVarStr var_C8
  loc_B9644D: PopAdLdVar
  loc_B9644E: FLdPr Me
  loc_B96451: MemLdRfVar from_stack_1.htmFile
  loc_B96454: LdPrVar
  loc_B96456: LateMemCall
  loc_B9645C: FFree1Var var_C8 = ""
  loc_B9645F: LitI4 0
  loc_B96464: FStR4 var_B4
  loc_B96467: AryUnlock
  loc_B9646A: LitVarStr var_9C, "  </tr>"
  loc_B9646F: PopAdLdVar
  loc_B96470: FLdPr Me
  loc_B96473: MemLdRfVar from_stack_1.htmFile
  loc_B96476: LdPrVar
  loc_B96478: LateMemCall
  loc_B9647E: LitI2_Byte 1
  loc_B96480: FLdPr Me
  loc_B96483: MemLdRfVar from_stack_1.global_96
  loc_B96486: FLdPr Me
  loc_B96489: MemLdI2 global_94
  loc_B9648C: CI4UI1
  loc_B9648D: FLdPr Me
  loc_B96490: MemLdStr global_84
  loc_B96493: Ary1LdPr
  loc_B96494: MemLdStr global_8
  loc_B96497: LitI2_Byte 1
  loc_B96499: FnUBound
  loc_B9649B: CI2I4
  loc_B9649C: ForI2 var_CC
  loc_B964A2: LitVarStr var_9C, "  <tr align=""left"" class=""Totales"">"
  loc_B964A7: PopAdLdVar
  loc_B964A8: FLdPr Me
  loc_B964AB: MemLdRfVar from_stack_1.htmFile
  loc_B964AE: LdPrVar
  loc_B964B0: LateMemCall
  loc_B964B6: FLdPr Me
  loc_B964B9: MemLdI2 global_96
  loc_B964BC: CI4UI1
  loc_B964BD: FLdPr Me
  loc_B964C0: MemLdI2 global_94
  loc_B964C3: CI4UI1
  loc_B964C4: FLdPr Me
  loc_B964C7: MemLdStr global_84
  loc_B964CA: AryLock
  loc_B964CD: Ary1LdPr
  loc_B964CE: MemLdStr global_8
  loc_B964D1: AryLock
  loc_B964D4: Ary1LdRf
  loc_B964D5: FStR4 var_D8
  loc_B964D8: LitStr "     <td class=""Encabezado"" align=""center"">"
  loc_B964DB: FMemLdR4 var_D8(4)
  loc_B964E0: ConcatStr
  loc_B964E1: FStStrNoPop var_B8
  loc_B964E4: LitStr "</td>"
  loc_B964E7: ConcatStr
  loc_B964E8: CVarStr var_C8
  loc_B964EB: PopAdLdVar
  loc_B964EC: FLdPr Me
  loc_B964EF: MemLdRfVar from_stack_1.htmFile
  loc_B964F2: LdPrVar
  loc_B964F4: LateMemCall
  loc_B964FA: FFree1Str var_B8
  loc_B964FD: FFree1Var var_C8 = ""
  loc_B96500: LitI4 0
  loc_B96505: LitI4 0
  loc_B9650A: LitI2_Byte 0
  loc_B9650C: LitStr "right"
  loc_B9650F: FMemLdR4 var_D8(20)
  loc_B96514: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96519: CVarStr var_C8
  loc_B9651C: PopAdLdVar
  loc_B9651D: FLdPr Me
  loc_B96520: MemLdRfVar from_stack_1.htmFile
  loc_B96523: LdPrVar
  loc_B96525: LateMemCall
  loc_B9652B: FFree1Var var_C8 = ""
  loc_B9652E: LitI4 0
  loc_B96533: LitI4 0
  loc_B96538: LitI2_Byte 0
  loc_B9653A: LitStr "right"
  loc_B9653D: FMemLdR4 var_D8(24)
  loc_B96542: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96547: CVarStr var_C8
  loc_B9654A: PopAdLdVar
  loc_B9654B: FLdPr Me
  loc_B9654E: MemLdRfVar from_stack_1.htmFile
  loc_B96551: LdPrVar
  loc_B96553: LateMemCall
  loc_B96559: FFree1Var var_C8 = ""
  loc_B9655C: LitI4 0
  loc_B96561: LitI4 0
  loc_B96566: LitI2_Byte 0
  loc_B96568: LitStr "right"
  loc_B9656B: FMemLdR4 var_D8(28)
  loc_B96570: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96575: CVarStr var_C8
  loc_B96578: PopAdLdVar
  loc_B96579: FLdPr Me
  loc_B9657C: MemLdRfVar from_stack_1.htmFile
  loc_B9657F: LdPrVar
  loc_B96581: LateMemCall
  loc_B96587: FFree1Var var_C8 = ""
  loc_B9658A: LitI4 0
  loc_B9658F: LitI4 0
  loc_B96594: LitI2_Byte 0
  loc_B96596: LitStr "right"
  loc_B96599: FMemLdR4 var_D8(32)
  loc_B9659E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B965A3: CVarStr var_C8
  loc_B965A6: PopAdLdVar
  loc_B965A7: FLdPr Me
  loc_B965AA: MemLdRfVar from_stack_1.htmFile
  loc_B965AD: LdPrVar
  loc_B965AF: LateMemCall
  loc_B965B5: FFree1Var var_C8 = ""
  loc_B965B8: LitI4 0
  loc_B965BD: LitI4 0
  loc_B965C2: LitI2_Byte 0
  loc_B965C4: LitStr "right"
  loc_B965C7: FMemLdR4 var_D8(44)
  loc_B965CC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B965D1: CVarStr var_C8
  loc_B965D4: PopAdLdVar
  loc_B965D5: FLdPr Me
  loc_B965D8: MemLdRfVar from_stack_1.htmFile
  loc_B965DB: LdPrVar
  loc_B965DD: LateMemCall
  loc_B965E3: FFree1Var var_C8 = ""
  loc_B965E6: LitI4 0
  loc_B965EB: LitI4 0
  loc_B965F0: LitI2_Byte 0
  loc_B965F2: LitStr "right"
  loc_B965F5: FMemLdR4 var_D8(48)
  loc_B965FA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B965FF: CVarStr var_C8
  loc_B96602: PopAdLdVar
  loc_B96603: FLdPr Me
  loc_B96606: MemLdRfVar from_stack_1.htmFile
  loc_B96609: LdPrVar
  loc_B9660B: LateMemCall
  loc_B96611: FFree1Var var_C8 = ""
  loc_B96614: LitI4 0
  loc_B96619: LitI4 0
  loc_B9661E: LitI2_Byte 0
  loc_B96620: LitStr "right"
  loc_B96623: FMemLdR4 var_D8(36)
  loc_B96628: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9662D: CVarStr var_C8
  loc_B96630: PopAdLdVar
  loc_B96631: FLdPr Me
  loc_B96634: MemLdRfVar from_stack_1.htmFile
  loc_B96637: LdPrVar
  loc_B96639: LateMemCall
  loc_B9663F: FFree1Var var_C8 = ""
  loc_B96642: LitI4 0
  loc_B96647: LitI4 0
  loc_B9664C: LitI2_Byte 0
  loc_B9664E: LitStr "right"
  loc_B96651: FMemLdR4 var_D8(40)
  loc_B96656: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9665B: CVarStr var_C8
  loc_B9665E: PopAdLdVar
  loc_B9665F: FLdPr Me
  loc_B96662: MemLdRfVar from_stack_1.htmFile
  loc_B96665: LdPrVar
  loc_B96667: LateMemCall
  loc_B9666D: FFree1Var var_C8 = ""
  loc_B96670: LitI4 0
  loc_B96675: LitI4 0
  loc_B9667A: LitI2_Byte 0
  loc_B9667C: LitStr "right"
  loc_B9667F: FMemLdR4 var_D8(52)
  loc_B96684: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96689: CVarStr var_C8
  loc_B9668C: PopAdLdVar
  loc_B9668D: FLdPr Me
  loc_B96690: MemLdRfVar from_stack_1.htmFile
  loc_B96693: LdPrVar
  loc_B96695: LateMemCall
  loc_B9669B: FFree1Var var_C8 = ""
  loc_B9669E: LitI4 0
  loc_B966A3: LitI4 0
  loc_B966A8: LitI2_Byte 0
  loc_B966AA: LitStr "right"
  loc_B966AD: FMemLdR4 var_D8(56)
  loc_B966B2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B966B7: CVarStr var_C8
  loc_B966BA: PopAdLdVar
  loc_B966BB: FLdPr Me
  loc_B966BE: MemLdRfVar from_stack_1.htmFile
  loc_B966C1: LdPrVar
  loc_B966C3: LateMemCall
  loc_B966C9: FFree1Var var_C8 = ""
  loc_B966CC: LitI4 0
  loc_B966D1: LitI4 0
  loc_B966D6: LitI2_Byte 0
  loc_B966D8: LitStr "right"
  loc_B966DB: FMemLdR4 var_D8(60)
  loc_B966E0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B966E5: CVarStr var_C8
  loc_B966E8: PopAdLdVar
  loc_B966E9: FLdPr Me
  loc_B966EC: MemLdRfVar from_stack_1.htmFile
  loc_B966EF: LdPrVar
  loc_B966F1: LateMemCall
  loc_B966F7: FFree1Var var_C8 = ""
  loc_B966FA: LitI4 0
  loc_B966FF: LitI4 0
  loc_B96704: LitI2_Byte 0
  loc_B96706: LitStr "right"
  loc_B96709: FMemLdR4 var_D8(64)
  loc_B9670E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96713: CVarStr var_C8
  loc_B96716: PopAdLdVar
  loc_B96717: FLdPr Me
  loc_B9671A: MemLdRfVar from_stack_1.htmFile
  loc_B9671D: LdPrVar
  loc_B9671F: LateMemCall
  loc_B96725: FFree1Var var_C8 = ""
  loc_B96728: LitI4 0
  loc_B9672D: FStR4 var_D8
  loc_B96730: AryUnlock
  loc_B96733: AryUnlock
  loc_B96736: LitVarStr var_9C, "  </tr>"
  loc_B9673B: PopAdLdVar
  loc_B9673C: FLdPr Me
  loc_B9673F: MemLdRfVar from_stack_1.htmFile
  loc_B96742: LdPrVar
  loc_B96744: LateMemCall
  loc_B9674A: LitI2_Byte 1
  loc_B9674C: FLdPr Me
  loc_B9674F: MemLdRfVar from_stack_1.global_98
  loc_B96752: FLdPr Me
  loc_B96755: MemLdI2 global_96
  loc_B96758: CI4UI1
  loc_B96759: FLdPr Me
  loc_B9675C: MemLdI2 global_94
  loc_B9675F: CI4UI1
  loc_B96760: FLdPr Me
  loc_B96763: MemLdStr global_84
  loc_B96766: Ary1LdPr
  loc_B96767: MemLdStr global_8
  loc_B9676A: Ary1LdPr
  loc_B9676B: MemLdStr global_8
  loc_B9676E: LitI2_Byte 1
  loc_B96770: FnUBound
  loc_B96772: CI2I4
  loc_B96773: ForI2 var_DC
  loc_B96779: LitVarStr var_9C, "  <tr align=""left"" class=""Totales"">"
  loc_B9677E: PopAdLdVar
  loc_B9677F: FLdPr Me
  loc_B96782: MemLdRfVar from_stack_1.htmFile
  loc_B96785: LdPrVar
  loc_B96787: LateMemCall
  loc_B9678D: FLdPr Me
  loc_B96790: MemLdI2 global_98
  loc_B96793: CI4UI1
  loc_B96794: FLdPr Me
  loc_B96797: MemLdI2 global_96
  loc_B9679A: CI4UI1
  loc_B9679B: FLdPr Me
  loc_B9679E: MemLdI2 global_94
  loc_B967A1: CI4UI1
  loc_B967A2: FLdPr Me
  loc_B967A5: MemLdStr global_84
  loc_B967A8: AryLock
  loc_B967AB: Ary1LdPr
  loc_B967AC: MemLdStr global_8
  loc_B967AF: AryLock
  loc_B967B2: Ary1LdPr
  loc_B967B3: MemLdStr global_8
  loc_B967B6: AryLock
  loc_B967B9: Ary1LdRf
  loc_B967BA: FStR4 var_EC
  loc_B967BD: LitStr "     <td class=""Encabezado"" align=""right"">"
  loc_B967C0: FMemLdR4 var_EC(4)
  loc_B967C5: ConcatStr
  loc_B967C6: FStStrNoPop var_B8
  loc_B967C9: LitStr "</td>"
  loc_B967CC: ConcatStr
  loc_B967CD: CVarStr var_C8
  loc_B967D0: PopAdLdVar
  loc_B967D1: FLdPr Me
  loc_B967D4: MemLdRfVar from_stack_1.htmFile
  loc_B967D7: LdPrVar
  loc_B967D9: LateMemCall
  loc_B967DF: FFree1Str var_B8
  loc_B967E2: FFree1Var var_C8 = ""
  loc_B967E5: LitI4 0
  loc_B967EA: LitI4 0
  loc_B967EF: LitI2_Byte 0
  loc_B967F1: LitStr "right"
  loc_B967F4: FMemLdR4 var_EC(20)
  loc_B967F9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B967FE: CVarStr var_C8
  loc_B96801: PopAdLdVar
  loc_B96802: FLdPr Me
  loc_B96805: MemLdRfVar from_stack_1.htmFile
  loc_B96808: LdPrVar
  loc_B9680A: LateMemCall
  loc_B96810: FFree1Var var_C8 = ""
  loc_B96813: LitI4 0
  loc_B96818: LitI4 0
  loc_B9681D: LitI2_Byte 0
  loc_B9681F: LitStr "right"
  loc_B96822: FMemLdR4 var_EC(24)
  loc_B96827: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9682C: CVarStr var_C8
  loc_B9682F: PopAdLdVar
  loc_B96830: FLdPr Me
  loc_B96833: MemLdRfVar from_stack_1.htmFile
  loc_B96836: LdPrVar
  loc_B96838: LateMemCall
  loc_B9683E: FFree1Var var_C8 = ""
  loc_B96841: LitI4 0
  loc_B96846: LitI4 0
  loc_B9684B: LitI2_Byte 0
  loc_B9684D: LitStr "right"
  loc_B96850: FMemLdR4 var_EC(28)
  loc_B96855: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9685A: CVarStr var_C8
  loc_B9685D: PopAdLdVar
  loc_B9685E: FLdPr Me
  loc_B96861: MemLdRfVar from_stack_1.htmFile
  loc_B96864: LdPrVar
  loc_B96866: LateMemCall
  loc_B9686C: FFree1Var var_C8 = ""
  loc_B9686F: LitI4 0
  loc_B96874: LitI4 0
  loc_B96879: LitI2_Byte 0
  loc_B9687B: LitStr "right"
  loc_B9687E: FMemLdR4 var_EC(32)
  loc_B96883: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96888: CVarStr var_C8
  loc_B9688B: PopAdLdVar
  loc_B9688C: FLdPr Me
  loc_B9688F: MemLdRfVar from_stack_1.htmFile
  loc_B96892: LdPrVar
  loc_B96894: LateMemCall
  loc_B9689A: FFree1Var var_C8 = ""
  loc_B9689D: LitI4 0
  loc_B968A2: LitI4 0
  loc_B968A7: LitI2_Byte 0
  loc_B968A9: LitStr "right"
  loc_B968AC: FMemLdR4 var_EC(44)
  loc_B968B1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B968B6: CVarStr var_C8
  loc_B968B9: PopAdLdVar
  loc_B968BA: FLdPr Me
  loc_B968BD: MemLdRfVar from_stack_1.htmFile
  loc_B968C0: LdPrVar
  loc_B968C2: LateMemCall
  loc_B968C8: FFree1Var var_C8 = ""
  loc_B968CB: LitI4 0
  loc_B968D0: LitI4 0
  loc_B968D5: LitI2_Byte 0
  loc_B968D7: LitStr "right"
  loc_B968DA: FMemLdR4 var_EC(48)
  loc_B968DF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B968E4: CVarStr var_C8
  loc_B968E7: PopAdLdVar
  loc_B968E8: FLdPr Me
  loc_B968EB: MemLdRfVar from_stack_1.htmFile
  loc_B968EE: LdPrVar
  loc_B968F0: LateMemCall
  loc_B968F6: FFree1Var var_C8 = ""
  loc_B968F9: LitI4 0
  loc_B968FE: LitI4 0
  loc_B96903: LitI2_Byte 0
  loc_B96905: LitStr "right"
  loc_B96908: FMemLdR4 var_EC(36)
  loc_B9690D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96912: CVarStr var_C8
  loc_B96915: PopAdLdVar
  loc_B96916: FLdPr Me
  loc_B96919: MemLdRfVar from_stack_1.htmFile
  loc_B9691C: LdPrVar
  loc_B9691E: LateMemCall
  loc_B96924: FFree1Var var_C8 = ""
  loc_B96927: LitI4 0
  loc_B9692C: LitI4 0
  loc_B96931: LitI2_Byte 0
  loc_B96933: LitStr "right"
  loc_B96936: FMemLdR4 var_EC(40)
  loc_B9693B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96940: CVarStr var_C8
  loc_B96943: PopAdLdVar
  loc_B96944: FLdPr Me
  loc_B96947: MemLdRfVar from_stack_1.htmFile
  loc_B9694A: LdPrVar
  loc_B9694C: LateMemCall
  loc_B96952: FFree1Var var_C8 = ""
  loc_B96955: LitI4 0
  loc_B9695A: LitI4 0
  loc_B9695F: LitI2_Byte 0
  loc_B96961: LitStr "right"
  loc_B96964: FMemLdR4 var_EC(52)
  loc_B96969: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9696E: CVarStr var_C8
  loc_B96971: PopAdLdVar
  loc_B96972: FLdPr Me
  loc_B96975: MemLdRfVar from_stack_1.htmFile
  loc_B96978: LdPrVar
  loc_B9697A: LateMemCall
  loc_B96980: FFree1Var var_C8 = ""
  loc_B96983: LitI4 0
  loc_B96988: LitI4 0
  loc_B9698D: LitI2_Byte 0
  loc_B9698F: LitStr "right"
  loc_B96992: FMemLdR4 var_EC(56)
  loc_B96997: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9699C: CVarStr var_C8
  loc_B9699F: PopAdLdVar
  loc_B969A0: FLdPr Me
  loc_B969A3: MemLdRfVar from_stack_1.htmFile
  loc_B969A6: LdPrVar
  loc_B969A8: LateMemCall
  loc_B969AE: FFree1Var var_C8 = ""
  loc_B969B1: LitI4 0
  loc_B969B6: LitI4 0
  loc_B969BB: LitI2_Byte 0
  loc_B969BD: LitStr "right"
  loc_B969C0: FMemLdR4 var_EC(60)
  loc_B969C5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B969CA: CVarStr var_C8
  loc_B969CD: PopAdLdVar
  loc_B969CE: FLdPr Me
  loc_B969D1: MemLdRfVar from_stack_1.htmFile
  loc_B969D4: LdPrVar
  loc_B969D6: LateMemCall
  loc_B969DC: FFree1Var var_C8 = ""
  loc_B969DF: LitI4 0
  loc_B969E4: LitI4 0
  loc_B969E9: LitI2_Byte 0
  loc_B969EB: LitStr "right"
  loc_B969EE: FMemLdR4 var_EC(64)
  loc_B969F3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B969F8: CVarStr var_C8
  loc_B969FB: PopAdLdVar
  loc_B969FC: FLdPr Me
  loc_B969FF: MemLdRfVar from_stack_1.htmFile
  loc_B96A02: LdPrVar
  loc_B96A04: LateMemCall
  loc_B96A0A: FFree1Var var_C8 = ""
  loc_B96A0D: LitI4 0
  loc_B96A12: FStR4 var_EC
  loc_B96A15: AryUnlock
  loc_B96A18: AryUnlock
  loc_B96A1B: AryUnlock
  loc_B96A1E: LitVarStr var_9C, "  </tr>"
  loc_B96A23: PopAdLdVar
  loc_B96A24: FLdPr Me
  loc_B96A27: MemLdRfVar from_stack_1.htmFile
  loc_B96A2A: LdPrVar
  loc_B96A2C: LateMemCall
  loc_B96A32: LitI2_Byte 1
  loc_B96A34: FLdPr Me
  loc_B96A37: MemLdRfVar from_stack_1.global_92
  loc_B96A3A: FLdPr Me
  loc_B96A3D: MemLdI2 global_98
  loc_B96A40: CI4UI1
  loc_B96A41: FLdPr Me
  loc_B96A44: MemLdI2 global_96
  loc_B96A47: CI4UI1
  loc_B96A48: FLdPr Me
  loc_B96A4B: MemLdI2 global_94
  loc_B96A4E: CI4UI1
  loc_B96A4F: FLdPr Me
  loc_B96A52: MemLdStr global_84
  loc_B96A55: Ary1LdPr
  loc_B96A56: MemLdStr global_8
  loc_B96A59: Ary1LdPr
  loc_B96A5A: MemLdStr global_8
  loc_B96A5D: Ary1LdPr
  loc_B96A5E: MemLdStr global_8
  loc_B96A61: LitI2_Byte 1
  loc_B96A63: FnUBound
  loc_B96A65: CI2I4
  loc_B96A66: ForI2 var_F0
  loc_B96A6C: FLdPr Me
  loc_B96A6F: MemLdI2 global_92
  loc_B96A72: CI4UI1
  loc_B96A73: FLdPr Me
  loc_B96A76: MemLdI2 global_98
  loc_B96A79: CI4UI1
  loc_B96A7A: FLdPr Me
  loc_B96A7D: MemLdI2 global_96
  loc_B96A80: CI4UI1
  loc_B96A81: FLdPr Me
  loc_B96A84: MemLdI2 global_94
  loc_B96A87: CI4UI1
  loc_B96A88: FLdPr Me
  loc_B96A8B: MemLdStr global_84
  loc_B96A8E: AryLock
  loc_B96A91: Ary1LdPr
  loc_B96A92: MemLdStr global_8
  loc_B96A95: AryLock
  loc_B96A98: Ary1LdPr
  loc_B96A99: MemLdStr global_8
  loc_B96A9C: AryLock
  loc_B96A9F: Ary1LdPr
  loc_B96AA0: MemLdStr global_8
  loc_B96AA3: AryLock
  loc_B96AA6: Ary1LdRf
  loc_B96AA7: FStR4 var_104
  loc_B96AAA: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B96AAF: PopAdLdVar
  loc_B96AB0: FLdPr Me
  loc_B96AB3: MemLdRfVar from_stack_1.htmFile
  loc_B96AB6: LdPrVar
  loc_B96AB8: LateMemCall
  loc_B96ABE: LitI4 0
  loc_B96AC3: LitI4 0
  loc_B96AC8: LitI2_Byte 0
  loc_B96ACA: LitStr "left"
  loc_B96ACD: FMemLdR4 var_104(0)
  loc_B96AD2: LitStr " - "
  loc_B96AD5: ConcatStr
  loc_B96AD6: FStStrNoPop var_B8
  loc_B96AD9: FMemLdR4 var_104(4)
  loc_B96ADE: ConcatStr
  loc_B96ADF: FStStrNoPop var_108
  loc_B96AE2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96AE7: CVarStr var_C8
  loc_B96AEA: PopAdLdVar
  loc_B96AEB: FLdPr Me
  loc_B96AEE: MemLdRfVar from_stack_1.htmFile
  loc_B96AF1: LdPrVar
  loc_B96AF3: LateMemCall
  loc_B96AF9: FFreeStr var_B8 = ""
  loc_B96B00: FFree1Var var_C8 = ""
  loc_B96B03: LitI4 0
  loc_B96B08: LitI4 0
  loc_B96B0D: LitI2_Byte 0
  loc_B96B0F: LitStr "right"
  loc_B96B12: FMemLdR4 var_104(8)
  loc_B96B17: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96B1C: CVarStr var_C8
  loc_B96B1F: PopAdLdVar
  loc_B96B20: FLdPr Me
  loc_B96B23: MemLdRfVar from_stack_1.htmFile
  loc_B96B26: LdPrVar
  loc_B96B28: LateMemCall
  loc_B96B2E: FFree1Var var_C8 = ""
  loc_B96B31: LitI4 0
  loc_B96B36: LitI4 0
  loc_B96B3B: LitI2_Byte 0
  loc_B96B3D: LitStr "right"
  loc_B96B40: FMemLdR4 var_104(12)
  loc_B96B45: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96B4A: CVarStr var_C8
  loc_B96B4D: PopAdLdVar
  loc_B96B4E: FLdPr Me
  loc_B96B51: MemLdRfVar from_stack_1.htmFile
  loc_B96B54: LdPrVar
  loc_B96B56: LateMemCall
  loc_B96B5C: FFree1Var var_C8 = ""
  loc_B96B5F: LitI4 0
  loc_B96B64: LitI4 0
  loc_B96B69: LitI2_Byte 0
  loc_B96B6B: LitStr "right"
  loc_B96B6E: FMemLdR4 var_104(16)
  loc_B96B73: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96B78: CVarStr var_C8
  loc_B96B7B: PopAdLdVar
  loc_B96B7C: FLdPr Me
  loc_B96B7F: MemLdRfVar from_stack_1.htmFile
  loc_B96B82: LdPrVar
  loc_B96B84: LateMemCall
  loc_B96B8A: FFree1Var var_C8 = ""
  loc_B96B8D: LitI4 0
  loc_B96B92: LitI4 0
  loc_B96B97: LitI2_Byte 0
  loc_B96B99: LitStr "right"
  loc_B96B9C: FMemLdR4 var_104(20)
  loc_B96BA1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96BA6: CVarStr var_C8
  loc_B96BA9: PopAdLdVar
  loc_B96BAA: FLdPr Me
  loc_B96BAD: MemLdRfVar from_stack_1.htmFile
  loc_B96BB0: LdPrVar
  loc_B96BB2: LateMemCall
  loc_B96BB8: FFree1Var var_C8 = ""
  loc_B96BBB: LitI4 0
  loc_B96BC0: LitI4 0
  loc_B96BC5: LitI2_Byte 0
  loc_B96BC7: LitStr "right"
  loc_B96BCA: FMemLdR4 var_104(32)
  loc_B96BCF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96BD4: CVarStr var_C8
  loc_B96BD7: PopAdLdVar
  loc_B96BD8: FLdPr Me
  loc_B96BDB: MemLdRfVar from_stack_1.htmFile
  loc_B96BDE: LdPrVar
  loc_B96BE0: LateMemCall
  loc_B96BE6: FFree1Var var_C8 = ""
  loc_B96BE9: LitI4 0
  loc_B96BEE: LitI4 0
  loc_B96BF3: LitI2_Byte 0
  loc_B96BF5: LitStr "right"
  loc_B96BF8: FMemLdR4 var_104(36)
  loc_B96BFD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96C02: CVarStr var_C8
  loc_B96C05: PopAdLdVar
  loc_B96C06: FLdPr Me
  loc_B96C09: MemLdRfVar from_stack_1.htmFile
  loc_B96C0C: LdPrVar
  loc_B96C0E: LateMemCall
  loc_B96C14: FFree1Var var_C8 = ""
  loc_B96C17: LitI4 0
  loc_B96C1C: LitI4 0
  loc_B96C21: LitI2_Byte 0
  loc_B96C23: LitStr "right"
  loc_B96C26: FMemLdR4 var_104(24)
  loc_B96C2B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96C30: CVarStr var_C8
  loc_B96C33: PopAdLdVar
  loc_B96C34: FLdPr Me
  loc_B96C37: MemLdRfVar from_stack_1.htmFile
  loc_B96C3A: LdPrVar
  loc_B96C3C: LateMemCall
  loc_B96C42: FFree1Var var_C8 = ""
  loc_B96C45: LitI4 0
  loc_B96C4A: LitI4 0
  loc_B96C4F: LitI2_Byte 0
  loc_B96C51: LitStr "right"
  loc_B96C54: FMemLdR4 var_104(28)
  loc_B96C59: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96C5E: CVarStr var_C8
  loc_B96C61: PopAdLdVar
  loc_B96C62: FLdPr Me
  loc_B96C65: MemLdRfVar from_stack_1.htmFile
  loc_B96C68: LdPrVar
  loc_B96C6A: LateMemCall
  loc_B96C70: FFree1Var var_C8 = ""
  loc_B96C73: LitI4 0
  loc_B96C78: LitI4 0
  loc_B96C7D: LitI2_Byte 0
  loc_B96C7F: LitStr "right"
  loc_B96C82: FMemLdR4 var_104(40)
  loc_B96C87: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96C8C: CVarStr var_C8
  loc_B96C8F: PopAdLdVar
  loc_B96C90: FLdPr Me
  loc_B96C93: MemLdRfVar from_stack_1.htmFile
  loc_B96C96: LdPrVar
  loc_B96C98: LateMemCall
  loc_B96C9E: FFree1Var var_C8 = ""
  loc_B96CA1: LitI4 0
  loc_B96CA6: LitI4 0
  loc_B96CAB: LitI2_Byte 0
  loc_B96CAD: LitStr "right"
  loc_B96CB0: FMemLdR4 var_104(44)
  loc_B96CB5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96CBA: CVarStr var_C8
  loc_B96CBD: PopAdLdVar
  loc_B96CBE: FLdPr Me
  loc_B96CC1: MemLdRfVar from_stack_1.htmFile
  loc_B96CC4: LdPrVar
  loc_B96CC6: LateMemCall
  loc_B96CCC: FFree1Var var_C8 = ""
  loc_B96CCF: LitI4 0
  loc_B96CD4: LitI4 0
  loc_B96CD9: LitI2_Byte 0
  loc_B96CDB: LitStr "right"
  loc_B96CDE: FMemLdR4 var_104(48)
  loc_B96CE3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96CE8: CVarStr var_C8
  loc_B96CEB: PopAdLdVar
  loc_B96CEC: FLdPr Me
  loc_B96CEF: MemLdRfVar from_stack_1.htmFile
  loc_B96CF2: LdPrVar
  loc_B96CF4: LateMemCall
  loc_B96CFA: FFree1Var var_C8 = ""
  loc_B96CFD: LitI4 0
  loc_B96D02: LitI4 0
  loc_B96D07: LitI2_Byte 0
  loc_B96D09: LitStr "right"
  loc_B96D0C: FMemLdR4 var_104(52)
  loc_B96D11: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96D16: CVarStr var_C8
  loc_B96D19: PopAdLdVar
  loc_B96D1A: FLdPr Me
  loc_B96D1D: MemLdRfVar from_stack_1.htmFile
  loc_B96D20: LdPrVar
  loc_B96D22: LateMemCall
  loc_B96D28: FFree1Var var_C8 = ""
  loc_B96D2B: LitVarStr var_9C, "  </tr>"
  loc_B96D30: PopAdLdVar
  loc_B96D31: FLdPr Me
  loc_B96D34: MemLdRfVar from_stack_1.htmFile
  loc_B96D37: LdPrVar
  loc_B96D39: LateMemCall
  loc_B96D3F: LitI4 0
  loc_B96D44: FStR4 var_104
  loc_B96D47: AryUnlock
  loc_B96D4A: AryUnlock
  loc_B96D4D: AryUnlock
  loc_B96D50: AryUnlock
  loc_B96D53: FLdPr Me
  loc_B96D56: MemLdRfVar from_stack_1.global_92
  loc_B96D59: NextI2 var_F0, loc_B96A6C
  loc_B96D5E: FLdPr Me
  loc_B96D61: MemLdRfVar from_stack_1.global_98
  loc_B96D64: NextI2 var_DC, loc_B96779
  loc_B96D69: FLdPr Me
  loc_B96D6C: MemLdRfVar from_stack_1.global_96
  loc_B96D6F: NextI2 var_CC, loc_B964A2
  loc_B96D74: FLdPr Me
  loc_B96D77: MemLdRfVar from_stack_1.global_94
  loc_B96D7A: NextI2 var_8C, loc_B961E7
  loc_B96D7F: LitI4 1
  loc_B96D84: FLdPr Me
  loc_B96D87: MemLdStr global_88
  loc_B96D8A: AryLock
  loc_B96D8D: Ary1LdRf
  loc_B96D8E: FStR4 var_110
  loc_B96D91: LitVarStr var_9C, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_B96D96: PopAdLdVar
  loc_B96D97: FLdPr Me
  loc_B96D9A: MemLdRfVar from_stack_1.htmFile
  loc_B96D9D: LdPrVar
  loc_B96D9F: LateMemCall
  loc_B96DA5: LitI4 0
  loc_B96DAA: LitI4 0
  loc_B96DAF: LitI2_Byte 0
  loc_B96DB1: LitStr "right"
  loc_B96DB4: LitStr "TOTALES"
  loc_B96DB7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96DBC: CVarStr var_C8
  loc_B96DBF: PopAdLdVar
  loc_B96DC0: FLdPr Me
  loc_B96DC3: MemLdRfVar from_stack_1.htmFile
  loc_B96DC6: LdPrVar
  loc_B96DC8: LateMemCall
  loc_B96DCE: FFree1Var var_C8 = ""
  loc_B96DD1: LitI4 0
  loc_B96DD6: LitI4 0
  loc_B96DDB: LitI2_Byte 0
  loc_B96DDD: LitStr "right"
  loc_B96DE0: FMemLdR4 var_110(8)
  loc_B96DE5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96DEA: CVarStr var_C8
  loc_B96DED: PopAdLdVar
  loc_B96DEE: FLdPr Me
  loc_B96DF1: MemLdRfVar from_stack_1.htmFile
  loc_B96DF4: LdPrVar
  loc_B96DF6: LateMemCall
  loc_B96DFC: FFree1Var var_C8 = ""
  loc_B96DFF: LitI4 0
  loc_B96E04: LitI4 0
  loc_B96E09: LitI2_Byte 0
  loc_B96E0B: LitStr "right"
  loc_B96E0E: FMemLdR4 var_110(12)
  loc_B96E13: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96E18: CVarStr var_C8
  loc_B96E1B: PopAdLdVar
  loc_B96E1C: FLdPr Me
  loc_B96E1F: MemLdRfVar from_stack_1.htmFile
  loc_B96E22: LdPrVar
  loc_B96E24: LateMemCall
  loc_B96E2A: FFree1Var var_C8 = ""
  loc_B96E2D: LitI4 0
  loc_B96E32: LitI4 0
  loc_B96E37: LitI2_Byte 0
  loc_B96E39: LitStr "right"
  loc_B96E3C: FMemLdR4 var_110(16)
  loc_B96E41: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96E46: CVarStr var_C8
  loc_B96E49: PopAdLdVar
  loc_B96E4A: FLdPr Me
  loc_B96E4D: MemLdRfVar from_stack_1.htmFile
  loc_B96E50: LdPrVar
  loc_B96E52: LateMemCall
  loc_B96E58: FFree1Var var_C8 = ""
  loc_B96E5B: LitI4 0
  loc_B96E60: LitI4 0
  loc_B96E65: LitI2_Byte 0
  loc_B96E67: LitStr "right"
  loc_B96E6A: FMemLdR4 var_110(20)
  loc_B96E6F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96E74: CVarStr var_C8
  loc_B96E77: PopAdLdVar
  loc_B96E78: FLdPr Me
  loc_B96E7B: MemLdRfVar from_stack_1.htmFile
  loc_B96E7E: LdPrVar
  loc_B96E80: LateMemCall
  loc_B96E86: FFree1Var var_C8 = ""
  loc_B96E89: LitI4 0
  loc_B96E8E: LitI4 0
  loc_B96E93: LitI2_Byte 0
  loc_B96E95: LitStr "right"
  loc_B96E98: FMemLdR4 var_110(32)
  loc_B96E9D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96EA2: CVarStr var_C8
  loc_B96EA5: PopAdLdVar
  loc_B96EA6: FLdPr Me
  loc_B96EA9: MemLdRfVar from_stack_1.htmFile
  loc_B96EAC: LdPrVar
  loc_B96EAE: LateMemCall
  loc_B96EB4: FFree1Var var_C8 = ""
  loc_B96EB7: LitI4 0
  loc_B96EBC: LitI4 0
  loc_B96EC1: LitI2_Byte 0
  loc_B96EC3: LitStr "right"
  loc_B96EC6: FMemLdR4 var_110(36)
  loc_B96ECB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96ED0: CVarStr var_C8
  loc_B96ED3: PopAdLdVar
  loc_B96ED4: FLdPr Me
  loc_B96ED7: MemLdRfVar from_stack_1.htmFile
  loc_B96EDA: LdPrVar
  loc_B96EDC: LateMemCall
  loc_B96EE2: FFree1Var var_C8 = ""
  loc_B96EE5: LitI4 0
  loc_B96EEA: LitI4 0
  loc_B96EEF: LitI2_Byte 0
  loc_B96EF1: LitStr "right"
  loc_B96EF4: FMemLdR4 var_110(24)
  loc_B96EF9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96EFE: CVarStr var_C8
  loc_B96F01: PopAdLdVar
  loc_B96F02: FLdPr Me
  loc_B96F05: MemLdRfVar from_stack_1.htmFile
  loc_B96F08: LdPrVar
  loc_B96F0A: LateMemCall
  loc_B96F10: FFree1Var var_C8 = ""
  loc_B96F13: LitI4 0
  loc_B96F18: LitI4 0
  loc_B96F1D: LitI2_Byte 0
  loc_B96F1F: LitStr "right"
  loc_B96F22: FMemLdR4 var_110(28)
  loc_B96F27: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96F2C: CVarStr var_C8
  loc_B96F2F: PopAdLdVar
  loc_B96F30: FLdPr Me
  loc_B96F33: MemLdRfVar from_stack_1.htmFile
  loc_B96F36: LdPrVar
  loc_B96F38: LateMemCall
  loc_B96F3E: FFree1Var var_C8 = ""
  loc_B96F41: LitI4 0
  loc_B96F46: LitI4 0
  loc_B96F4B: LitI2_Byte 0
  loc_B96F4D: LitStr "right"
  loc_B96F50: FMemLdR4 var_110(40)
  loc_B96F55: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96F5A: CVarStr var_C8
  loc_B96F5D: PopAdLdVar
  loc_B96F5E: FLdPr Me
  loc_B96F61: MemLdRfVar from_stack_1.htmFile
  loc_B96F64: LdPrVar
  loc_B96F66: LateMemCall
  loc_B96F6C: FFree1Var var_C8 = ""
  loc_B96F6F: LitI4 0
  loc_B96F74: LitI4 0
  loc_B96F79: LitI2_Byte 0
  loc_B96F7B: LitStr "right"
  loc_B96F7E: FMemLdR4 var_110(44)
  loc_B96F83: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96F88: CVarStr var_C8
  loc_B96F8B: PopAdLdVar
  loc_B96F8C: FLdPr Me
  loc_B96F8F: MemLdRfVar from_stack_1.htmFile
  loc_B96F92: LdPrVar
  loc_B96F94: LateMemCall
  loc_B96F9A: FFree1Var var_C8 = ""
  loc_B96F9D: LitI4 0
  loc_B96FA2: LitI4 0
  loc_B96FA7: LitI2_Byte 0
  loc_B96FA9: LitStr "right"
  loc_B96FAC: FMemLdR4 var_110(48)
  loc_B96FB1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96FB6: CVarStr var_C8
  loc_B96FB9: PopAdLdVar
  loc_B96FBA: FLdPr Me
  loc_B96FBD: MemLdRfVar from_stack_1.htmFile
  loc_B96FC0: LdPrVar
  loc_B96FC2: LateMemCall
  loc_B96FC8: FFree1Var var_C8 = ""
  loc_B96FCB: LitI4 0
  loc_B96FD0: LitI4 0
  loc_B96FD5: LitI2_Byte 0
  loc_B96FD7: LitStr "right"
  loc_B96FDA: FMemLdR4 var_110(52)
  loc_B96FDF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B96FE4: CVarStr var_C8
  loc_B96FE7: PopAdLdVar
  loc_B96FE8: FLdPr Me
  loc_B96FEB: MemLdRfVar from_stack_1.htmFile
  loc_B96FEE: LdPrVar
  loc_B96FF0: LateMemCall
  loc_B96FF6: FFree1Var var_C8 = ""
  loc_B96FF9: LitVarStr var_9C, "     </tr>"
  loc_B96FFE: PopAdLdVar
  loc_B96FFF: FLdPr Me
  loc_B97002: MemLdRfVar from_stack_1.htmFile
  loc_B97005: LdPrVar
  loc_B97007: LateMemCall
  loc_B9700D: LitI4 0
  loc_B97012: FStR4 var_110
  loc_B97015: AryUnlock
  loc_B97018: Call Proc_167_30_A06A90()
  loc_B9701D: FLdPr Me
  loc_B97020: MemLdRfVar from_stack_1.htmFile
  loc_B97023: LdPrVar
  loc_B97025: LateMemCall
  loc_B9702B: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B97030: ExitProcHresult
  loc_B97031: EqI2
  loc_B97032: BranchF loc_B98A99
End Sub

Public Sub GeneraXLS() '94DE24
  'Data Table: 48F5A0
  loc_94DE0C: LitI2_Byte 0
  loc_94DE0E: FLdPr Me
  loc_94DE11: MemStI2 bLogos
  loc_94DE14: Call GeneraHTML()
  loc_94DE19: LitI2_Byte &HFF
  loc_94DE1B: FLdPr Me
  loc_94DE1E: MemStI2 bLogos
  loc_94DE21: ExitProcHresult
  loc_94DE22: ImpAdLdFPR8 MemVar_5B35A0
End Sub

Private Function Proc_167_21_A26F04(arg_C) 'A26F04
  'Data Table: 48F5A0
  loc_A26D38: FMemLdR4 arg_C(8)
  loc_A26D3D: LitStr vbNullString
  loc_A26D40: NeStr
  loc_A26D42: BranchF loc_A26D67
  loc_A26D45: LitI2_Byte 0
  loc_A26D47: FMemLdRf unk_48F5B1
  loc_A26D4C: CVarRef
  loc_A26D51: LitI2_Byte &HFF
  loc_A26D53: FMemLdR4 arg_C(8)
  loc_A26D58: CVarStr var_94
  loc_A26D5B: PopAdLdVar
  loc_A26D5C: FLdPr Me
  loc_A26D5F: MemLdRfVar from_stack_1.global_112
  loc_A26D62: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A26D67: FMemLdR4 arg_C(12)
  loc_A26D6C: LitStr vbNullString
  loc_A26D6F: NeStr
  loc_A26D71: BranchF loc_A26D96
  loc_A26D74: LitI2_Byte 0
  loc_A26D76: FMemLdRf unk_48F5B1
  loc_A26D7B: CVarRef
  loc_A26D80: LitI2_Byte &HFF
  loc_A26D82: FMemLdR4 arg_C(12)
  loc_A26D87: CVarStr var_94
  loc_A26D8A: PopAdLdVar
  loc_A26D8B: FLdPr Me
  loc_A26D8E: MemLdRfVar from_stack_1.global_112
  loc_A26D91: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A26D96: FMemLdR4 arg_C(32)
  loc_A26D9B: LitStr vbNullString
  loc_A26D9E: NeStr
  loc_A26DA0: BranchF loc_A26DC5
  loc_A26DA3: LitI2_Byte 0
  loc_A26DA5: FMemLdRf unk_48F5B1
  loc_A26DAA: CVarRef
  loc_A26DAF: LitI2_Byte &HFF
  loc_A26DB1: FMemLdR4 arg_C(32)
  loc_A26DB6: CVarStr var_94
  loc_A26DB9: PopAdLdVar
  loc_A26DBA: FLdPr Me
  loc_A26DBD: MemLdRfVar from_stack_1.global_112
  loc_A26DC0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A26DC5: FMemLdR4 arg_C(36)
  loc_A26DCA: LitStr vbNullString
  loc_A26DCD: NeStr
  loc_A26DCF: BranchF loc_A26DF4
  loc_A26DD2: LitI2_Byte 0
  loc_A26DD4: FMemLdRf unk_48F5B1
  loc_A26DD9: CVarRef
  loc_A26DDE: LitI2_Byte &HFF
  loc_A26DE0: FMemLdR4 arg_C(36)
  loc_A26DE5: CVarStr var_94
  loc_A26DE8: PopAdLdVar
  loc_A26DE9: FLdPr Me
  loc_A26DEC: MemLdRfVar from_stack_1.global_112
  loc_A26DEF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A26DF4: LitVarI2 var_C4, 0
  loc_A26DF9: FMemLdRf unk_48F5AD
  loc_A26DFE: CVarRef
  loc_A26E03: FMemLdR4 arg_C(8)
  loc_A26E08: LitStr vbNullString
  loc_A26E0B: NeStr
  loc_A26E0D: CVarBoolI2 var_94
  loc_A26E11: FLdRfVar var_D4
  loc_A26E14: ImpAdCallFPR4  = IIf(, , )
  loc_A26E19: LitVarI2 var_114, 0
  loc_A26E1E: FMemLdRf unk_48F5AD
  loc_A26E23: CVarRef
  loc_A26E28: FMemLdR4 arg_C(32)
  loc_A26E2D: LitStr vbNullString
  loc_A26E30: NeStr
  loc_A26E32: CVarBoolI2 var_E4
  loc_A26E36: FLdRfVar var_124
  loc_A26E39: ImpAdCallFPR4  = IIf(, , )
  loc_A26E3E: LitI2_Byte 0
  loc_A26E40: FMemLdRf unk_48F5B1
  loc_A26E45: CVarRef
  loc_A26E4A: LitI2_Byte &HFF
  loc_A26E4C: FLdRfVar var_D4
  loc_A26E4F: FnCDblVar
  loc_A26E51: FLdRfVar var_124
  loc_A26E54: FnCDblVar
  loc_A26E56: AddR8
  loc_A26E57: CVarR8
  loc_A26E5B: PopAdLdVar
  loc_A26E5C: FLdPr Me
  loc_A26E5F: MemLdRfVar from_stack_1.global_112
  loc_A26E62: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A26E67: FFreeVar var_94 = "": var_C4 = "": var_D4 = "": var_D4 = "": var_E4 = "": var_114 = "": var_124 = ""
  loc_A26E7A: LitVarI2 var_C4, 0
  loc_A26E7F: FMemLdRf unk_48F5AD
  loc_A26E84: CVarRef
  loc_A26E89: FMemLdR4 arg_C(12)
  loc_A26E8E: LitStr vbNullString
  loc_A26E91: NeStr
  loc_A26E93: CVarBoolI2 var_94
  loc_A26E97: FLdRfVar var_D4
  loc_A26E9A: ImpAdCallFPR4  = IIf(, , )
  loc_A26E9F: LitVarI2 var_114, 0
  loc_A26EA4: FMemLdRf unk_48F5AD
  loc_A26EA9: CVarRef
  loc_A26EAE: FMemLdR4 arg_C(36)
  loc_A26EB3: LitStr vbNullString
  loc_A26EB6: NeStr
  loc_A26EB8: CVarBoolI2 var_E4
  loc_A26EBC: FLdRfVar var_124
  loc_A26EBF: ImpAdCallFPR4  = IIf(, , )
  loc_A26EC4: LitI2_Byte 0
  loc_A26EC6: FMemLdRf unk_48F5B1
  loc_A26ECB: CVarRef
  loc_A26ED0: LitI2_Byte &HFF
  loc_A26ED2: FLdRfVar var_D4
  loc_A26ED5: FnCDblVar
  loc_A26ED7: FLdRfVar var_124
  loc_A26EDA: FnCDblVar
  loc_A26EDC: AddR8
  loc_A26EDD: CVarR8
  loc_A26EE1: PopAdLdVar
  loc_A26EE2: FLdPr Me
  loc_A26EE5: MemLdRfVar from_stack_1.global_112
  loc_A26EE8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A26EED: FFreeVar var_94 = "": var_C4 = "": var_D4 = "": var_D4 = "": var_E4 = "": var_114 = "": var_124 = ""
  loc_A26F00: ExitProcHresult
  loc_A26F01: FLdPr var_300
End Function

Private Function Proc_167_22_9F0A9C() '9F0A9C
  'Data Table: 48F5A0
  loc_9F097C: FLdPr Me
  loc_9F097F: MemLdI2 global_94
  loc_9F0982: LitI2_Byte 1
  loc_9F0984: AddI2
  loc_9F0985: FLdPr Me
  loc_9F0988: MemStI2 global_94
  loc_9F098B: LitI2_Byte 0
  loc_9F098D: FLdPr Me
  loc_9F0990: MemStI2 global_96
  loc_9F0993: LitI4 0
  loc_9F0998: FLdPr Me
  loc_9F099B: MemLdI2 global_94
  loc_9F099E: CI4UI1
  loc_9F099F: FLdPr Me
  loc_9F09A2: MemLdRfVar from_stack_1.global_84
  loc_9F09A5: RedimPreserve
  loc_9F09AF: FLdRfVar var_B0
  loc_9F09B2: FLdRfVar var_A0
  loc_9F09B5: LitVarStr var_9C, "CodiTicu"
  loc_9F09BA: PopAdLdVar
  loc_9F09BB: FLdRfVar var_8C
  loc_9F09BE: FLdRfVar var_88
  loc_9F09C1: FLdPr Me
  loc_9F09C4: MemLdRfVar from_stack_1.global_72
  loc_9F09C7: NewIfNullPr clsasiento
  loc_9F09CA: from_stack_1v = clsasiento.RsFrmGet()
  loc_9F09CF: FLdPr var_88
  loc_9F09D2:  = Me.Fields
  loc_9F09D7: FLdPr var_8C
  loc_9F09DA: from_stack_2 = Me.Item(from_stack_1)
  loc_9F09DF: FLdPr var_A0
  loc_9F09E2:  = Me.Value
  loc_9F09E7: LitI4 1
  loc_9F09EC: FLdRfVar var_B0
  loc_9F09EF: CStrVarTmp
  loc_9F09F0: FStStrNoPop var_B4
  loc_9F09F3: ImpAdCallI2 Left$(, )
  loc_9F09F8: FStStr var_F0
  loc_9F09FB: LitI2_Byte 0
  loc_9F09FD: LitVar_Missing var_EC
  loc_9F0A00: LitI2_Byte 0
  loc_9F0A02: FLdZeroAd var_F0
  loc_9F0A05: FStStrNoPop var_B8
  loc_9F0A08: LitStr "000"
  loc_9F0A0B: ConcatStr
  loc_9F0A0C: CVarStr var_CC
  loc_9F0A0F: PopAdLdVar
  loc_9F0A10: FLdPr Me
  loc_9F0A13: MemLdI2 global_94
  loc_9F0A16: CI4UI1
  loc_9F0A17: FLdPr Me
  loc_9F0A1A: MemLdStr global_84
  loc_9F0A1D: AryLock
  loc_9F0A20: Ary1LdPr
  loc_9F0A21: MemLdRfVar from_stack_1.global_0
  loc_9F0A24: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F0A29: AryUnlock
  loc_9F0A2C: FFreeStr var_B4 = "": var_B8 = ""
  loc_9F0A35: FFreeAd var_88 = "": var_8C = ""
  loc_9F0A3E: FFreeVar var_B0 = "": var_CC = ""
  loc_9F0A47: FLdPr Me
  loc_9F0A4A: MemLdI2 global_94
  loc_9F0A4D: CI4UI1
  loc_9F0A4E: FLdPr Me
  loc_9F0A51: MemLdStr global_84
  loc_9F0A54: Ary1LdPr
  loc_9F0A55: MemLdStr global_0
  loc_9F0A58: ImpAdCallI2 Proc_259_34_9A668C()
  loc_9F0A5D: FStStr var_B4
  loc_9F0A60: LitI2_Byte 0
  loc_9F0A62: LitVar_Missing var_CC
  loc_9F0A65: LitI2_Byte 0
  loc_9F0A67: FLdZeroAd var_B4
  loc_9F0A6A: CVarStr var_B0
  loc_9F0A6D: PopAdLdVar
  loc_9F0A6E: FLdPr Me
  loc_9F0A71: MemLdI2 global_94
  loc_9F0A74: CI4UI1
  loc_9F0A75: FLdPr Me
  loc_9F0A78: MemLdStr global_84
  loc_9F0A7B: AryLock
  loc_9F0A7E: Ary1LdPr
  loc_9F0A7F: MemLdRfVar from_stack_1.global_4
  loc_9F0A82: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F0A87: AryUnlock
  loc_9F0A8A: FFree1Str var_B4
  loc_9F0A8D: FFreeVar var_B0 = ""
  loc_9F0A94: Call Proc_167_23_A0E9D4()
  loc_9F0A99: ExitProcHresult
  loc_9F0A9A: ImpAdLdFPR4 MemVar_0
End Function

Private Function Proc_167_23_A0E9D4() 'A0E9D4
  'Data Table: 48F5A0
  loc_A0E87C: FLdPr Me
  loc_A0E87F: MemLdI2 global_96
  loc_A0E882: LitI2_Byte 1
  loc_A0E884: AddI2
  loc_A0E885: FLdPr Me
  loc_A0E888: MemStI2 global_96
  loc_A0E88B: LitI2_Byte 0
  loc_A0E88D: FLdPr Me
  loc_A0E890: MemStI2 global_98
  loc_A0E893: LitI4 0
  loc_A0E898: FLdPr Me
  loc_A0E89B: MemLdI2 global_96
  loc_A0E89E: CI4UI1
  loc_A0E89F: FLdPr Me
  loc_A0E8A2: MemLdI2 global_94
  loc_A0E8A5: CI4UI1
  loc_A0E8A6: FLdPr Me
  loc_A0E8A9: MemLdStr global_84
  loc_A0E8AC: Ary1LdPr
  loc_A0E8AD: MemLdRfVar from_stack_1.global_8
  loc_A0E8B0: RedimPreserve
  loc_A0E8BA: FLdRfVar var_B0
  loc_A0E8BD: FLdRfVar var_A0
  loc_A0E8C0: LitVarStr var_9C, "CodiTicu"
  loc_A0E8C5: PopAdLdVar
  loc_A0E8C6: FLdRfVar var_8C
  loc_A0E8C9: FLdRfVar var_88
  loc_A0E8CC: FLdPr Me
  loc_A0E8CF: MemLdRfVar from_stack_1.global_72
  loc_A0E8D2: NewIfNullPr clsasiento
  loc_A0E8D5: from_stack_1v = clsasiento.RsFrmGet()
  loc_A0E8DA: FLdPr var_88
  loc_A0E8DD:  = Me.Fields
  loc_A0E8E2: FLdPr var_8C
  loc_A0E8E5: from_stack_2 = Me.Item(from_stack_1)
  loc_A0E8EA: FLdPr var_A0
  loc_A0E8ED:  = Me.Value
  loc_A0E8F2: LitI4 2
  loc_A0E8F7: FLdRfVar var_B0
  loc_A0E8FA: CStrVarTmp
  loc_A0E8FB: FStStrNoPop var_B4
  loc_A0E8FE: ImpAdCallI2 Left$(, )
  loc_A0E903: FStStr var_F4
  loc_A0E906: LitI2_Byte 0
  loc_A0E908: LitVar_Missing var_F0
  loc_A0E90B: LitI2_Byte 0
  loc_A0E90D: FLdZeroAd var_F4
  loc_A0E910: FStStrNoPop var_B8
  loc_A0E913: LitStr "00"
  loc_A0E916: ConcatStr
  loc_A0E917: CVarStr var_D0
  loc_A0E91A: PopAdLdVar
  loc_A0E91B: FLdPr Me
  loc_A0E91E: MemLdI2 global_96
  loc_A0E921: CI4UI1
  loc_A0E922: FLdPr Me
  loc_A0E925: MemLdI2 global_94
  loc_A0E928: CI4UI1
  loc_A0E929: FLdPr Me
  loc_A0E92C: MemLdStr global_84
  loc_A0E92F: AryLock
  loc_A0E932: Ary1LdPr
  loc_A0E933: MemLdStr global_8
  loc_A0E936: AryLock
  loc_A0E939: Ary1LdPr
  loc_A0E93A: MemLdRfVar from_stack_1.global_0
  loc_A0E93D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0E942: AryUnlock
  loc_A0E945: AryUnlock
  loc_A0E948: FFreeStr var_B4 = "": var_B8 = ""
  loc_A0E951: FFreeAd var_88 = "": var_8C = ""
  loc_A0E95A: FFreeVar var_B0 = "": var_D0 = ""
  loc_A0E963: FLdPr Me
  loc_A0E966: MemLdI2 global_96
  loc_A0E969: CI4UI1
  loc_A0E96A: FLdPr Me
  loc_A0E96D: MemLdI2 global_94
  loc_A0E970: CI4UI1
  loc_A0E971: FLdPr Me
  loc_A0E974: MemLdStr global_84
  loc_A0E977: Ary1LdPr
  loc_A0E978: MemLdStr global_8
  loc_A0E97B: Ary1LdPr
  loc_A0E97C: MemLdStr global_0
  loc_A0E97F: ImpAdCallI2 Proc_259_34_9A668C()
  loc_A0E984: FStStr var_B4
  loc_A0E987: LitI2_Byte 0
  loc_A0E989: LitVar_Missing var_D0
  loc_A0E98C: LitI2_Byte 0
  loc_A0E98E: FLdZeroAd var_B4
  loc_A0E991: CVarStr var_B0
  loc_A0E994: PopAdLdVar
  loc_A0E995: FLdPr Me
  loc_A0E998: MemLdI2 global_96
  loc_A0E99B: CI4UI1
  loc_A0E99C: FLdPr Me
  loc_A0E99F: MemLdI2 global_94
  loc_A0E9A2: CI4UI1
  loc_A0E9A3: FLdPr Me
  loc_A0E9A6: MemLdStr global_84
  loc_A0E9A9: AryLock
  loc_A0E9AC: Ary1LdPr
  loc_A0E9AD: MemLdStr global_8
  loc_A0E9B0: AryLock
  loc_A0E9B3: Ary1LdPr
  loc_A0E9B4: MemLdRfVar from_stack_1.global_4
  loc_A0E9B7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0E9BC: AryUnlock
  loc_A0E9BF: AryUnlock
  loc_A0E9C2: FFree1Str var_B4
  loc_A0E9C5: FFreeVar var_B0 = ""
  loc_A0E9CC: Call Proc_167_24_A0C7FC()
  loc_A0E9D1: ExitProcHresult
End Function

Private Function Proc_167_24_A0C7FC() 'A0C7FC
  'Data Table: 48F5A0
  loc_A0C69C: FLdPr Me
  loc_A0C69F: MemLdI2 global_98
  loc_A0C6A2: LitI2_Byte 1
  loc_A0C6A4: AddI2
  loc_A0C6A5: FLdPr Me
  loc_A0C6A8: MemStI2 global_98
  loc_A0C6AB: LitI2_Byte 0
  loc_A0C6AD: FLdPr Me
  loc_A0C6B0: MemStI2 global_92
  loc_A0C6B3: LitI4 0
  loc_A0C6B8: FLdPr Me
  loc_A0C6BB: MemLdI2 global_98
  loc_A0C6BE: CI4UI1
  loc_A0C6BF: FLdPr Me
  loc_A0C6C2: MemLdI2 global_96
  loc_A0C6C5: CI4UI1
  loc_A0C6C6: FLdPr Me
  loc_A0C6C9: MemLdI2 global_94
  loc_A0C6CC: CI4UI1
  loc_A0C6CD: FLdPr Me
  loc_A0C6D0: MemLdStr global_84
  loc_A0C6D3: Ary1LdPr
  loc_A0C6D4: MemLdStr global_8
  loc_A0C6D7: Ary1LdPr
  loc_A0C6D8: MemLdRfVar from_stack_1.global_8
  loc_A0C6DB: RedimPreserve
  loc_A0C6E5: FLdRfVar var_A0
  loc_A0C6E8: LitVarStr var_9C, "CodiTicu"
  loc_A0C6ED: PopAdLdVar
  loc_A0C6EE: FLdRfVar var_8C
  loc_A0C6F1: FLdRfVar var_88
  loc_A0C6F4: FLdPr Me
  loc_A0C6F7: MemLdRfVar from_stack_1.global_72
  loc_A0C6FA: NewIfNullPr clsasiento
  loc_A0C6FD: from_stack_1v = clsasiento.RsFrmGet()
  loc_A0C702: FLdPr var_88
  loc_A0C705:  = Me.Fields
  loc_A0C70A: FLdPr var_8C
  loc_A0C70D: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C712: LitI2_Byte 0
  loc_A0C714: LitVar_Missing var_DC
  loc_A0C717: LitI2_Byte 0
  loc_A0C719: FLdZeroAd var_A0
  loc_A0C71C: CVarAd
  loc_A0C720: PopAdLdVar
  loc_A0C721: FLdPr Me
  loc_A0C724: MemLdI2 global_98
  loc_A0C727: CI4UI1
  loc_A0C728: FLdPr Me
  loc_A0C72B: MemLdI2 global_96
  loc_A0C72E: CI4UI1
  loc_A0C72F: FLdPr Me
  loc_A0C732: MemLdI2 global_94
  loc_A0C735: CI4UI1
  loc_A0C736: FLdPr Me
  loc_A0C739: MemLdStr global_84
  loc_A0C73C: AryLock
  loc_A0C73F: Ary1LdPr
  loc_A0C740: MemLdStr global_8
  loc_A0C743: AryLock
  loc_A0C746: Ary1LdPr
  loc_A0C747: MemLdStr global_8
  loc_A0C74A: AryLock
  loc_A0C74D: Ary1LdPr
  loc_A0C74E: MemLdRfVar from_stack_1.global_0
  loc_A0C751: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0C756: AryUnlock
  loc_A0C759: AryUnlock
  loc_A0C75C: AryUnlock
  loc_A0C75F: FFreeAd var_88 = ""
  loc_A0C766: FFreeVar var_BC = ""
  loc_A0C76D: FLdRfVar var_A0
  loc_A0C770: LitVarStr var_9C, "DetaTicu"
  loc_A0C775: PopAdLdVar
  loc_A0C776: FLdRfVar var_8C
  loc_A0C779: FLdRfVar var_88
  loc_A0C77C: FLdPr Me
  loc_A0C77F: MemLdRfVar from_stack_1.global_72
  loc_A0C782: NewIfNullPr clsasiento
  loc_A0C785: from_stack_1v = clsasiento.RsFrmGet()
  loc_A0C78A: FLdPr var_88
  loc_A0C78D:  = Me.Fields
  loc_A0C792: FLdPr var_8C
  loc_A0C795: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C79A: LitI2_Byte 0
  loc_A0C79C: LitVar_Missing var_DC
  loc_A0C79F: LitI2_Byte 0
  loc_A0C7A1: FLdZeroAd var_A0
  loc_A0C7A4: CVarAd
  loc_A0C7A8: PopAdLdVar
  loc_A0C7A9: FLdPr Me
  loc_A0C7AC: MemLdI2 global_98
  loc_A0C7AF: CI4UI1
  loc_A0C7B0: FLdPr Me
  loc_A0C7B3: MemLdI2 global_96
  loc_A0C7B6: CI4UI1
  loc_A0C7B7: FLdPr Me
  loc_A0C7BA: MemLdI2 global_94
  loc_A0C7BD: CI4UI1
  loc_A0C7BE: FLdPr Me
  loc_A0C7C1: MemLdStr global_84
  loc_A0C7C4: AryLock
  loc_A0C7C7: Ary1LdPr
  loc_A0C7C8: MemLdStr global_8
  loc_A0C7CB: AryLock
  loc_A0C7CE: Ary1LdPr
  loc_A0C7CF: MemLdStr global_8
  loc_A0C7D2: AryLock
  loc_A0C7D5: Ary1LdPr
  loc_A0C7D6: MemLdRfVar from_stack_1.global_4
  loc_A0C7D9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0C7DE: AryUnlock
  loc_A0C7E1: AryUnlock
  loc_A0C7E4: AryUnlock
  loc_A0C7E7: FFreeAd var_88 = ""
  loc_A0C7EE: FFreeVar var_BC = ""
  loc_A0C7F5: Call Proc_167_25_A19BC4()
  loc_A0C7FA: ExitProcHresult
End Function

Private Function Proc_167_25_A19BC4() 'A19BC4
  'Data Table: 48F5A0
  loc_A19A40: FLdPr Me
  loc_A19A43: MemLdI2 global_92
  loc_A19A46: LitI2_Byte 1
  loc_A19A48: AddI2
  loc_A19A49: FLdPr Me
  loc_A19A4C: MemStI2 global_92
  loc_A19A4F: LitI4 0
  loc_A19A54: FLdPr Me
  loc_A19A57: MemLdI2 global_92
  loc_A19A5A: CI4UI1
  loc_A19A5B: FLdPr Me
  loc_A19A5E: MemLdI2 global_98
  loc_A19A61: CI4UI1
  loc_A19A62: FLdPr Me
  loc_A19A65: MemLdI2 global_96
  loc_A19A68: CI4UI1
  loc_A19A69: FLdPr Me
  loc_A19A6C: MemLdI2 global_94
  loc_A19A6F: CI4UI1
  loc_A19A70: FLdPr Me
  loc_A19A73: MemLdStr global_84
  loc_A19A76: Ary1LdPr
  loc_A19A77: MemLdStr global_8
  loc_A19A7A: Ary1LdPr
  loc_A19A7B: MemLdStr global_8
  loc_A19A7E: Ary1LdPr
  loc_A19A7F: MemLdRfVar from_stack_1.global_8
  loc_A19A82: RedimPreserve
  loc_A19A8C: FLdRfVar var_A0
  loc_A19A8F: LitVarStr var_9C, "CodiCuco"
  loc_A19A94: PopAdLdVar
  loc_A19A95: FLdRfVar var_8C
  loc_A19A98: FLdRfVar var_88
  loc_A19A9B: FLdPr Me
  loc_A19A9E: MemLdRfVar from_stack_1.global_72
  loc_A19AA1: NewIfNullPr clsasiento
  loc_A19AA4: from_stack_1v = clsasiento.RsFrmGet()
  loc_A19AA9: FLdPr var_88
  loc_A19AAC:  = Me.Fields
  loc_A19AB1: FLdPr var_8C
  loc_A19AB4: from_stack_2 = Me.Item(from_stack_1)
  loc_A19AB9: LitI2_Byte 0
  loc_A19ABB: LitVar_Missing var_E0
  loc_A19ABE: LitI2_Byte 0
  loc_A19AC0: FLdZeroAd var_A0
  loc_A19AC3: CVarAd
  loc_A19AC7: PopAdLdVar
  loc_A19AC8: FLdPr Me
  loc_A19ACB: MemLdI2 global_92
  loc_A19ACE: CI4UI1
  loc_A19ACF: FLdPr Me
  loc_A19AD2: MemLdI2 global_98
  loc_A19AD5: CI4UI1
  loc_A19AD6: FLdPr Me
  loc_A19AD9: MemLdI2 global_96
  loc_A19ADC: CI4UI1
  loc_A19ADD: FLdPr Me
  loc_A19AE0: MemLdI2 global_94
  loc_A19AE3: CI4UI1
  loc_A19AE4: FLdPr Me
  loc_A19AE7: MemLdStr global_84
  loc_A19AEA: AryLock
  loc_A19AED: Ary1LdPr
  loc_A19AEE: MemLdStr global_8
  loc_A19AF1: AryLock
  loc_A19AF4: Ary1LdPr
  loc_A19AF5: MemLdStr global_8
  loc_A19AF8: AryLock
  loc_A19AFB: Ary1LdPr
  loc_A19AFC: MemLdStr global_8
  loc_A19AFF: AryLock
  loc_A19B02: Ary1LdPr
  loc_A19B03: MemLdRfVar from_stack_1.global_0
  loc_A19B06: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A19B0B: AryUnlock
  loc_A19B0E: AryUnlock
  loc_A19B11: AryUnlock
  loc_A19B14: AryUnlock
  loc_A19B17: FFreeAd var_88 = ""
  loc_A19B1E: FFreeVar var_C0 = ""
  loc_A19B25: FLdRfVar var_A0
  loc_A19B28: LitVarStr var_9C, "DetaCuco"
  loc_A19B2D: PopAdLdVar
  loc_A19B2E: FLdRfVar var_8C
  loc_A19B31: FLdRfVar var_88
  loc_A19B34: FLdPr Me
  loc_A19B37: MemLdRfVar from_stack_1.global_72
  loc_A19B3A: NewIfNullPr clsasiento
  loc_A19B3D: from_stack_1v = clsasiento.RsFrmGet()
  loc_A19B42: FLdPr var_88
  loc_A19B45:  = Me.Fields
  loc_A19B4A: FLdPr var_8C
  loc_A19B4D: from_stack_2 = Me.Item(from_stack_1)
  loc_A19B52: LitI2_Byte 0
  loc_A19B54: LitVar_Missing var_E0
  loc_A19B57: LitI2_Byte 0
  loc_A19B59: FLdZeroAd var_A0
  loc_A19B5C: CVarAd
  loc_A19B60: PopAdLdVar
  loc_A19B61: FLdPr Me
  loc_A19B64: MemLdI2 global_92
  loc_A19B67: CI4UI1
  loc_A19B68: FLdPr Me
  loc_A19B6B: MemLdI2 global_98
  loc_A19B6E: CI4UI1
  loc_A19B6F: FLdPr Me
  loc_A19B72: MemLdI2 global_96
  loc_A19B75: CI4UI1
  loc_A19B76: FLdPr Me
  loc_A19B79: MemLdI2 global_94
  loc_A19B7C: CI4UI1
  loc_A19B7D: FLdPr Me
  loc_A19B80: MemLdStr global_84
  loc_A19B83: AryLock
  loc_A19B86: Ary1LdPr
  loc_A19B87: MemLdStr global_8
  loc_A19B8A: AryLock
  loc_A19B8D: Ary1LdPr
  loc_A19B8E: MemLdStr global_8
  loc_A19B91: AryLock
  loc_A19B94: Ary1LdPr
  loc_A19B95: MemLdStr global_8
  loc_A19B98: AryLock
  loc_A19B9B: Ary1LdPr
  loc_A19B9C: MemLdRfVar from_stack_1.global_4
  loc_A19B9F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A19BA4: AryUnlock
  loc_A19BA7: AryUnlock
  loc_A19BAA: AryUnlock
  loc_A19BAD: AryUnlock
  loc_A19BB0: FFreeAd var_88 = ""
  loc_A19BB7: FFreeVar var_C0 = ""
  loc_A19BBE: Call Proc_167_26_BC90BC()
  loc_A19BC3: ExitProcHresult
End Function

Private Function Proc_167_26_BC90BC() 'BC90BC
  'Data Table: 48F5A0
  loc_BC7DDC: FLdPr Me
  loc_BC7DDF: MemLdRfVar from_stack_1.global_72
  loc_BC7DE2: NewIfNullAd
  loc_BC7DE5: FStAd var_88 
  loc_BC7DE9: FLdPr Me
  loc_BC7DEC: MemLdI2 global_100
  loc_BC7DEF: LitI2_Byte 1
  loc_BC7DF1: EqI2
  loc_BC7DF2: BranchF loc_BC8573
  loc_BC7DF5: FLdRfVar var_BC
  loc_BC7DF8: FLdPr Me
  loc_BC7DFB: VCallAd Control_ID_cboPeriodo
  loc_BC7DFE: FStAdFunc var_B8
  loc_BC7E01: FLdPr var_B8
  loc_BC7E04:  = Me.Text
  loc_BC7E09: FLdRfVar var_B4
  loc_BC7E0C: FLdRfVar var_A4
  loc_BC7E0F: LitVarStr var_A0, "FechAsie"
  loc_BC7E14: PopAdLdVar
  loc_BC7E15: FLdRfVar var_90
  loc_BC7E18: FLdRfVar var_8C
  loc_BC7E1B: FLdPr var_88
  loc_BC7E1E: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC7E23: FLdPr var_8C
  loc_BC7E26:  = Me.Fields
  loc_BC7E2B: FLdPr var_90
  loc_BC7E2E: from_stack_2 = Me.Item(from_stack_1)
  loc_BC7E33: FLdPr var_A4
  loc_BC7E36:  = Me.Value
  loc_BC7E3B: FLdRfVar var_B4
  loc_BC7E3E: FnCDateVar
  loc_BC7E40: CVarDate var_DC
  loc_BC7E44: HardType
  loc_BC7E45: LitI2_Byte 1
  loc_BC7E47: LitI2_Byte 1
  loc_BC7E49: ILdRf var_BC
  loc_BC7E4C: CI2Str
  loc_BC7E4E: FLdRfVar var_CC
  loc_BC7E51: ImpAdCallFPR4  = DateSerial(, , )
  loc_BC7E56: FLdRfVar var_CC
  loc_BC7E59: EqVarBool
  loc_BC7E5B: FFree1Str var_BC
  loc_BC7E5E: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_BC7E69: FFreeVar var_B4 = ""
  loc_BC7E70: BranchF loc_BC81F3
  loc_BC7E73: FLdRfVar var_B4
  loc_BC7E76: FLdRfVar var_A4
  loc_BC7E79: LitVarStr var_A0, "DebeMoas"
  loc_BC7E7E: PopAdLdVar
  loc_BC7E7F: FLdRfVar var_90
  loc_BC7E82: FLdRfVar var_8C
  loc_BC7E85: FLdPr var_88
  loc_BC7E88: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC7E8D: FLdPr var_8C
  loc_BC7E90:  = Me.Fields
  loc_BC7E95: FLdPr var_90
  loc_BC7E98: from_stack_2 = Me.Item(from_stack_1)
  loc_BC7E9D: FLdPr var_A4
  loc_BC7EA0:  = Me.Value
  loc_BC7EA5: FLdRfVar var_B4
  loc_BC7EA8: LitVarStr var_DC, "0"
  loc_BC7EAD: HardType
  loc_BC7EAE: NeVarBool
  loc_BC7EB0: FFreeAd var_8C = "": var_90 = ""
  loc_BC7EB9: FFree1Var var_B4 = ""
  loc_BC7EBC: BranchF loc_BC7FDC
  loc_BC7EBF: FLdRfVar var_A4
  loc_BC7EC2: LitVarStr var_A0, "DebeMoas"
  loc_BC7EC7: PopAdLdVar
  loc_BC7EC8: FLdRfVar var_90
  loc_BC7ECB: FLdRfVar var_8C
  loc_BC7ECE: FLdPr var_88
  loc_BC7ED1: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC7ED6: FLdPr var_8C
  loc_BC7ED9:  = Me.Fields
  loc_BC7EDE: FLdPr var_90
  loc_BC7EE1: from_stack_2 = Me.Item(from_stack_1)
  loc_BC7EE6: LitI2_Byte 0
  loc_BC7EE8: FLdPr Me
  loc_BC7EEB: MemLdI2 global_92
  loc_BC7EEE: CI4UI1
  loc_BC7EEF: FLdPr Me
  loc_BC7EF2: MemLdI2 global_98
  loc_BC7EF5: CI4UI1
  loc_BC7EF6: FLdPr Me
  loc_BC7EF9: MemLdI2 global_96
  loc_BC7EFC: CI4UI1
  loc_BC7EFD: FLdPr Me
  loc_BC7F00: MemLdI2 global_94
  loc_BC7F03: CI4UI1
  loc_BC7F04: FLdPr Me
  loc_BC7F07: MemLdStr global_84
  loc_BC7F0A: AryLock
  loc_BC7F0D: Ary1LdPr
  loc_BC7F0E: MemLdStr global_8
  loc_BC7F11: AryLock
  loc_BC7F14: Ary1LdPr
  loc_BC7F15: MemLdStr global_8
  loc_BC7F18: AryLock
  loc_BC7F1B: Ary1LdPr
  loc_BC7F1C: MemLdStr global_8
  loc_BC7F1F: AryLock
  loc_BC7F22: Ary1LdPr
  loc_BC7F23: MemLdRfVar from_stack_1.global_8
  loc_BC7F26: CVarRef
  loc_BC7F2B: LitI2_Byte &HFF
  loc_BC7F2D: FLdZeroAd var_A4
  loc_BC7F30: CVarAd
  loc_BC7F34: PopAdLdVar
  loc_BC7F35: FLdPr Me
  loc_BC7F38: MemLdRfVar from_stack_1.global_112
  loc_BC7F3B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7F40: AryUnlock
  loc_BC7F43: AryUnlock
  loc_BC7F46: AryUnlock
  loc_BC7F49: AryUnlock
  loc_BC7F4C: FFreeAd var_8C = ""
  loc_BC7F53: FFree1Var var_B4 = ""
  loc_BC7F56: FLdRfVar var_A4
  loc_BC7F59: LitVarStr var_A0, "DebeMoas"
  loc_BC7F5E: PopAdLdVar
  loc_BC7F5F: FLdRfVar var_90
  loc_BC7F62: FLdRfVar var_8C
  loc_BC7F65: FLdPr var_88
  loc_BC7F68: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC7F6D: FLdPr var_8C
  loc_BC7F70:  = Me.Fields
  loc_BC7F75: FLdPr var_90
  loc_BC7F78: from_stack_2 = Me.Item(from_stack_1)
  loc_BC7F7D: LitI2_Byte 0
  loc_BC7F7F: FLdPr Me
  loc_BC7F82: MemLdI2 global_98
  loc_BC7F85: CI4UI1
  loc_BC7F86: FLdPr Me
  loc_BC7F89: MemLdI2 global_96
  loc_BC7F8C: CI4UI1
  loc_BC7F8D: FLdPr Me
  loc_BC7F90: MemLdI2 global_94
  loc_BC7F93: CI4UI1
  loc_BC7F94: FLdPr Me
  loc_BC7F97: MemLdStr global_84
  loc_BC7F9A: AryLock
  loc_BC7F9D: Ary1LdPr
  loc_BC7F9E: MemLdStr global_8
  loc_BC7FA1: AryLock
  loc_BC7FA4: Ary1LdPr
  loc_BC7FA5: MemLdStr global_8
  loc_BC7FA8: AryLock
  loc_BC7FAB: Ary1LdPr
  loc_BC7FAC: MemLdRfVar from_stack_1.global_20
  loc_BC7FAF: CVarRef
  loc_BC7FB4: LitI2_Byte &HFF
  loc_BC7FB6: FLdZeroAd var_A4
  loc_BC7FB9: CVarAd
  loc_BC7FBD: PopAdLdVar
  loc_BC7FBE: FLdPr Me
  loc_BC7FC1: MemLdRfVar from_stack_1.global_112
  loc_BC7FC4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7FC9: AryUnlock
  loc_BC7FCC: AryUnlock
  loc_BC7FCF: AryUnlock
  loc_BC7FD2: FFreeAd var_8C = ""
  loc_BC7FD9: FFree1Var var_B4 = ""
  loc_BC7FDC: FLdRfVar var_B4
  loc_BC7FDF: FLdRfVar var_A4
  loc_BC7FE2: LitVarStr var_A0, "HabeMoas"
  loc_BC7FE7: PopAdLdVar
  loc_BC7FE8: FLdRfVar var_90
  loc_BC7FEB: FLdRfVar var_8C
  loc_BC7FEE: FLdPr var_88
  loc_BC7FF1: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC7FF6: FLdPr var_8C
  loc_BC7FF9:  = Me.Fields
  loc_BC7FFE: FLdPr var_90
  loc_BC8001: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8006: FLdPr var_A4
  loc_BC8009:  = Me.Value
  loc_BC800E: FLdRfVar var_B4
  loc_BC8011: LitVarStr var_DC, "0"
  loc_BC8016: HardType
  loc_BC8017: NeVarBool
  loc_BC8019: FFreeAd var_8C = "": var_90 = ""
  loc_BC8022: FFree1Var var_B4 = ""
  loc_BC8025: BranchF loc_BC8145
  loc_BC8028: FLdRfVar var_A4
  loc_BC802B: LitVarStr var_A0, "HabeMoas"
  loc_BC8030: PopAdLdVar
  loc_BC8031: FLdRfVar var_90
  loc_BC8034: FLdRfVar var_8C
  loc_BC8037: FLdPr var_88
  loc_BC803A: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC803F: FLdPr var_8C
  loc_BC8042:  = Me.Fields
  loc_BC8047: FLdPr var_90
  loc_BC804A: from_stack_2 = Me.Item(from_stack_1)
  loc_BC804F: LitI2_Byte 0
  loc_BC8051: FLdPr Me
  loc_BC8054: MemLdI2 global_92
  loc_BC8057: CI4UI1
  loc_BC8058: FLdPr Me
  loc_BC805B: MemLdI2 global_98
  loc_BC805E: CI4UI1
  loc_BC805F: FLdPr Me
  loc_BC8062: MemLdI2 global_96
  loc_BC8065: CI4UI1
  loc_BC8066: FLdPr Me
  loc_BC8069: MemLdI2 global_94
  loc_BC806C: CI4UI1
  loc_BC806D: FLdPr Me
  loc_BC8070: MemLdStr global_84
  loc_BC8073: AryLock
  loc_BC8076: Ary1LdPr
  loc_BC8077: MemLdStr global_8
  loc_BC807A: AryLock
  loc_BC807D: Ary1LdPr
  loc_BC807E: MemLdStr global_8
  loc_BC8081: AryLock
  loc_BC8084: Ary1LdPr
  loc_BC8085: MemLdStr global_8
  loc_BC8088: AryLock
  loc_BC808B: Ary1LdPr
  loc_BC808C: MemLdRfVar from_stack_1.global_12
  loc_BC808F: CVarRef
  loc_BC8094: LitI2_Byte &HFF
  loc_BC8096: FLdZeroAd var_A4
  loc_BC8099: CVarAd
  loc_BC809D: PopAdLdVar
  loc_BC809E: FLdPr Me
  loc_BC80A1: MemLdRfVar from_stack_1.global_112
  loc_BC80A4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC80A9: AryUnlock
  loc_BC80AC: AryUnlock
  loc_BC80AF: AryUnlock
  loc_BC80B2: AryUnlock
  loc_BC80B5: FFreeAd var_8C = ""
  loc_BC80BC: FFree1Var var_B4 = ""
  loc_BC80BF: FLdRfVar var_A4
  loc_BC80C2: LitVarStr var_A0, "HabeMoas"
  loc_BC80C7: PopAdLdVar
  loc_BC80C8: FLdRfVar var_90
  loc_BC80CB: FLdRfVar var_8C
  loc_BC80CE: FLdPr var_88
  loc_BC80D1: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC80D6: FLdPr var_8C
  loc_BC80D9:  = Me.Fields
  loc_BC80DE: FLdPr var_90
  loc_BC80E1: from_stack_2 = Me.Item(from_stack_1)
  loc_BC80E6: LitI2_Byte 0
  loc_BC80E8: FLdPr Me
  loc_BC80EB: MemLdI2 global_98
  loc_BC80EE: CI4UI1
  loc_BC80EF: FLdPr Me
  loc_BC80F2: MemLdI2 global_96
  loc_BC80F5: CI4UI1
  loc_BC80F6: FLdPr Me
  loc_BC80F9: MemLdI2 global_94
  loc_BC80FC: CI4UI1
  loc_BC80FD: FLdPr Me
  loc_BC8100: MemLdStr global_84
  loc_BC8103: AryLock
  loc_BC8106: Ary1LdPr
  loc_BC8107: MemLdStr global_8
  loc_BC810A: AryLock
  loc_BC810D: Ary1LdPr
  loc_BC810E: MemLdStr global_8
  loc_BC8111: AryLock
  loc_BC8114: Ary1LdPr
  loc_BC8115: MemLdRfVar from_stack_1.global_24
  loc_BC8118: CVarRef
  loc_BC811D: LitI2_Byte &HFF
  loc_BC811F: FLdZeroAd var_A4
  loc_BC8122: CVarAd
  loc_BC8126: PopAdLdVar
  loc_BC8127: FLdPr Me
  loc_BC812A: MemLdRfVar from_stack_1.global_112
  loc_BC812D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8132: AryUnlock
  loc_BC8135: AryUnlock
  loc_BC8138: AryUnlock
  loc_BC813B: FFreeAd var_8C = ""
  loc_BC8142: FFree1Var var_B4 = ""
  loc_BC8145: FLdPr Me
  loc_BC8148: MemLdI2 global_98
  loc_BC814B: CI4UI1
  loc_BC814C: FLdPr Me
  loc_BC814F: MemLdI2 global_96
  loc_BC8152: CI4UI1
  loc_BC8153: FLdPr Me
  loc_BC8156: MemLdI2 global_94
  loc_BC8159: CI4UI1
  loc_BC815A: FLdPr Me
  loc_BC815D: MemLdStr global_84
  loc_BC8160: AryLock
  loc_BC8163: Ary1LdPr
  loc_BC8164: MemLdStr global_8
  loc_BC8167: AryLock
  loc_BC816A: Ary1LdPr
  loc_BC816B: MemLdStr global_8
  loc_BC816E: AryLock
  loc_BC8171: Ary1LdRf
  loc_BC8172: FStR4 var_10C
  loc_BC8175: FLdPr Me
  loc_BC8178: MemLdI2 global_92
  loc_BC817B: CI4UI1
  loc_BC817C: FMemLdR4 var_10C(8)
  loc_BC8181: AryLock
  loc_BC8184: Ary1LdPr
  loc_BC8185: MemLdRfVar from_stack_1.global_20
  loc_BC8188: FLdPr Me
  loc_BC818B: MemLdI2 global_92
  loc_BC818E: CI4UI1
  loc_BC818F: FMemLdR4 var_10C(8)
  loc_BC8194: AryLock
  loc_BC8197: Ary1LdPr
  loc_BC8198: MemLdRfVar from_stack_1.global_16
  loc_BC819B: FLdPr Me
  loc_BC819E: MemLdI2 global_92
  loc_BC81A1: CI4UI1
  loc_BC81A2: FMemLdR4 var_10C(8)
  loc_BC81A7: Ary1LdPr
  loc_BC81A8: MemLdStr global_12
  loc_BC81AB: FLdPr Me
  loc_BC81AE: MemLdI2 global_92
  loc_BC81B1: CI4UI1
  loc_BC81B2: FMemLdR4 var_10C(8)
  loc_BC81B7: Ary1LdPr
  loc_BC81B8: MemLdStr global_8
  loc_BC81BB: Call Proc_167_28_9E4ECC()
  loc_BC81C0: AryUnlock
  loc_BC81C3: AryUnlock
  loc_BC81C6: FMemLdRf 0
  loc_BC81CB: FMemLdRf 0
  loc_BC81D0: FMemLdR4 var_10C(24)
  loc_BC81D5: FMemLdR4 var_10C(20)
  loc_BC81DA: Call Proc_167_28_9E4ECC()
  loc_BC81DF: LitI4 0
  loc_BC81E4: FStR4 var_10C
  loc_BC81E7: AryUnlock
  loc_BC81EA: AryUnlock
  loc_BC81ED: AryUnlock
  loc_BC81F0: Branch loc_BC8570
  loc_BC81F3: FLdRfVar var_B4
  loc_BC81F6: FLdRfVar var_A4
  loc_BC81F9: LitVarStr var_A0, "DebeMoas"
  loc_BC81FE: PopAdLdVar
  loc_BC81FF: FLdRfVar var_90
  loc_BC8202: FLdRfVar var_8C
  loc_BC8205: FLdPr var_88
  loc_BC8208: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC820D: FLdPr var_8C
  loc_BC8210:  = Me.Fields
  loc_BC8215: FLdPr var_90
  loc_BC8218: from_stack_2 = Me.Item(from_stack_1)
  loc_BC821D: FLdPr var_A4
  loc_BC8220:  = Me.Value
  loc_BC8225: FLdRfVar var_B4
  loc_BC8228: LitVarStr var_DC, "0"
  loc_BC822D: HardType
  loc_BC822E: NeVarBool
  loc_BC8230: FFreeAd var_8C = "": var_90 = ""
  loc_BC8239: FFree1Var var_B4 = ""
  loc_BC823C: BranchF loc_BC835C
  loc_BC823F: FLdRfVar var_A4
  loc_BC8242: LitVarStr var_A0, "DebeMoas"
  loc_BC8247: PopAdLdVar
  loc_BC8248: FLdRfVar var_90
  loc_BC824B: FLdRfVar var_8C
  loc_BC824E: FLdPr var_88
  loc_BC8251: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8256: FLdPr var_8C
  loc_BC8259:  = Me.Fields
  loc_BC825E: FLdPr var_90
  loc_BC8261: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8266: LitI2_Byte 0
  loc_BC8268: FLdPr Me
  loc_BC826B: MemLdI2 global_92
  loc_BC826E: CI4UI1
  loc_BC826F: FLdPr Me
  loc_BC8272: MemLdI2 global_98
  loc_BC8275: CI4UI1
  loc_BC8276: FLdPr Me
  loc_BC8279: MemLdI2 global_96
  loc_BC827C: CI4UI1
  loc_BC827D: FLdPr Me
  loc_BC8280: MemLdI2 global_94
  loc_BC8283: CI4UI1
  loc_BC8284: FLdPr Me
  loc_BC8287: MemLdStr global_84
  loc_BC828A: AryLock
  loc_BC828D: Ary1LdPr
  loc_BC828E: MemLdStr global_8
  loc_BC8291: AryLock
  loc_BC8294: Ary1LdPr
  loc_BC8295: MemLdStr global_8
  loc_BC8298: AryLock
  loc_BC829B: Ary1LdPr
  loc_BC829C: MemLdStr global_8
  loc_BC829F: AryLock
  loc_BC82A2: Ary1LdPr
  loc_BC82A3: MemLdRfVar from_stack_1.global_32
  loc_BC82A6: CVarRef
  loc_BC82AB: LitI2_Byte &HFF
  loc_BC82AD: FLdZeroAd var_A4
  loc_BC82B0: CVarAd
  loc_BC82B4: PopAdLdVar
  loc_BC82B5: FLdPr Me
  loc_BC82B8: MemLdRfVar from_stack_1.global_112
  loc_BC82BB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC82C0: AryUnlock
  loc_BC82C3: AryUnlock
  loc_BC82C6: AryUnlock
  loc_BC82C9: AryUnlock
  loc_BC82CC: FFreeAd var_8C = ""
  loc_BC82D3: FFree1Var var_B4 = ""
  loc_BC82D6: FLdRfVar var_A4
  loc_BC82D9: LitVarStr var_A0, "DebeMoas"
  loc_BC82DE: PopAdLdVar
  loc_BC82DF: FLdRfVar var_90
  loc_BC82E2: FLdRfVar var_8C
  loc_BC82E5: FLdPr var_88
  loc_BC82E8: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC82ED: FLdPr var_8C
  loc_BC82F0:  = Me.Fields
  loc_BC82F5: FLdPr var_90
  loc_BC82F8: from_stack_2 = Me.Item(from_stack_1)
  loc_BC82FD: LitI2_Byte 0
  loc_BC82FF: FLdPr Me
  loc_BC8302: MemLdI2 global_98
  loc_BC8305: CI4UI1
  loc_BC8306: FLdPr Me
  loc_BC8309: MemLdI2 global_96
  loc_BC830C: CI4UI1
  loc_BC830D: FLdPr Me
  loc_BC8310: MemLdI2 global_94
  loc_BC8313: CI4UI1
  loc_BC8314: FLdPr Me
  loc_BC8317: MemLdStr global_84
  loc_BC831A: AryLock
  loc_BC831D: Ary1LdPr
  loc_BC831E: MemLdStr global_8
  loc_BC8321: AryLock
  loc_BC8324: Ary1LdPr
  loc_BC8325: MemLdStr global_8
  loc_BC8328: AryLock
  loc_BC832B: Ary1LdPr
  loc_BC832C: MemLdRfVar from_stack_1.global_44
  loc_BC832F: CVarRef
  loc_BC8334: LitI2_Byte &HFF
  loc_BC8336: FLdZeroAd var_A4
  loc_BC8339: CVarAd
  loc_BC833D: PopAdLdVar
  loc_BC833E: FLdPr Me
  loc_BC8341: MemLdRfVar from_stack_1.global_112
  loc_BC8344: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8349: AryUnlock
  loc_BC834C: AryUnlock
  loc_BC834F: AryUnlock
  loc_BC8352: FFreeAd var_8C = ""
  loc_BC8359: FFree1Var var_B4 = ""
  loc_BC835C: FLdRfVar var_B4
  loc_BC835F: FLdRfVar var_A4
  loc_BC8362: LitVarStr var_A0, "HabeMoas"
  loc_BC8367: PopAdLdVar
  loc_BC8368: FLdRfVar var_90
  loc_BC836B: FLdRfVar var_8C
  loc_BC836E: FLdPr var_88
  loc_BC8371: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8376: FLdPr var_8C
  loc_BC8379:  = Me.Fields
  loc_BC837E: FLdPr var_90
  loc_BC8381: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8386: FLdPr var_A4
  loc_BC8389:  = Me.Value
  loc_BC838E: FLdRfVar var_B4
  loc_BC8391: LitVarStr var_DC, "0"
  loc_BC8396: HardType
  loc_BC8397: NeVarBool
  loc_BC8399: FFreeAd var_8C = "": var_90 = ""
  loc_BC83A2: FFree1Var var_B4 = ""
  loc_BC83A5: BranchF loc_BC84C5
  loc_BC83A8: FLdRfVar var_A4
  loc_BC83AB: LitVarStr var_A0, "HabeMoas"
  loc_BC83B0: PopAdLdVar
  loc_BC83B1: FLdRfVar var_90
  loc_BC83B4: FLdRfVar var_8C
  loc_BC83B7: FLdPr var_88
  loc_BC83BA: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC83BF: FLdPr var_8C
  loc_BC83C2:  = Me.Fields
  loc_BC83C7: FLdPr var_90
  loc_BC83CA: from_stack_2 = Me.Item(from_stack_1)
  loc_BC83CF: LitI2_Byte 0
  loc_BC83D1: FLdPr Me
  loc_BC83D4: MemLdI2 global_92
  loc_BC83D7: CI4UI1
  loc_BC83D8: FLdPr Me
  loc_BC83DB: MemLdI2 global_98
  loc_BC83DE: CI4UI1
  loc_BC83DF: FLdPr Me
  loc_BC83E2: MemLdI2 global_96
  loc_BC83E5: CI4UI1
  loc_BC83E6: FLdPr Me
  loc_BC83E9: MemLdI2 global_94
  loc_BC83EC: CI4UI1
  loc_BC83ED: FLdPr Me
  loc_BC83F0: MemLdStr global_84
  loc_BC83F3: AryLock
  loc_BC83F6: Ary1LdPr
  loc_BC83F7: MemLdStr global_8
  loc_BC83FA: AryLock
  loc_BC83FD: Ary1LdPr
  loc_BC83FE: MemLdStr global_8
  loc_BC8401: AryLock
  loc_BC8404: Ary1LdPr
  loc_BC8405: MemLdStr global_8
  loc_BC8408: AryLock
  loc_BC840B: Ary1LdPr
  loc_BC840C: MemLdRfVar from_stack_1.global_36
  loc_BC840F: CVarRef
  loc_BC8414: LitI2_Byte &HFF
  loc_BC8416: FLdZeroAd var_A4
  loc_BC8419: CVarAd
  loc_BC841D: PopAdLdVar
  loc_BC841E: FLdPr Me
  loc_BC8421: MemLdRfVar from_stack_1.global_112
  loc_BC8424: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8429: AryUnlock
  loc_BC842C: AryUnlock
  loc_BC842F: AryUnlock
  loc_BC8432: AryUnlock
  loc_BC8435: FFreeAd var_8C = ""
  loc_BC843C: FFree1Var var_B4 = ""
  loc_BC843F: FLdRfVar var_A4
  loc_BC8442: LitVarStr var_A0, "HabeMoas"
  loc_BC8447: PopAdLdVar
  loc_BC8448: FLdRfVar var_90
  loc_BC844B: FLdRfVar var_8C
  loc_BC844E: FLdPr var_88
  loc_BC8451: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8456: FLdPr var_8C
  loc_BC8459:  = Me.Fields
  loc_BC845E: FLdPr var_90
  loc_BC8461: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8466: LitI2_Byte 0
  loc_BC8468: FLdPr Me
  loc_BC846B: MemLdI2 global_98
  loc_BC846E: CI4UI1
  loc_BC846F: FLdPr Me
  loc_BC8472: MemLdI2 global_96
  loc_BC8475: CI4UI1
  loc_BC8476: FLdPr Me
  loc_BC8479: MemLdI2 global_94
  loc_BC847C: CI4UI1
  loc_BC847D: FLdPr Me
  loc_BC8480: MemLdStr global_84
  loc_BC8483: AryLock
  loc_BC8486: Ary1LdPr
  loc_BC8487: MemLdStr global_8
  loc_BC848A: AryLock
  loc_BC848D: Ary1LdPr
  loc_BC848E: MemLdStr global_8
  loc_BC8491: AryLock
  loc_BC8494: Ary1LdPr
  loc_BC8495: MemLdRfVar from_stack_1.global_48
  loc_BC8498: CVarRef
  loc_BC849D: LitI2_Byte &HFF
  loc_BC849F: FLdZeroAd var_A4
  loc_BC84A2: CVarAd
  loc_BC84A6: PopAdLdVar
  loc_BC84A7: FLdPr Me
  loc_BC84AA: MemLdRfVar from_stack_1.global_112
  loc_BC84AD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC84B2: AryUnlock
  loc_BC84B5: AryUnlock
  loc_BC84B8: AryUnlock
  loc_BC84BB: FFreeAd var_8C = ""
  loc_BC84C2: FFree1Var var_B4 = ""
  loc_BC84C5: FLdPr Me
  loc_BC84C8: MemLdI2 global_98
  loc_BC84CB: CI4UI1
  loc_BC84CC: FLdPr Me
  loc_BC84CF: MemLdI2 global_96
  loc_BC84D2: CI4UI1
  loc_BC84D3: FLdPr Me
  loc_BC84D6: MemLdI2 global_94
  loc_BC84D9: CI4UI1
  loc_BC84DA: FLdPr Me
  loc_BC84DD: MemLdStr global_84
  loc_BC84E0: AryLock
  loc_BC84E3: Ary1LdPr
  loc_BC84E4: MemLdStr global_8
  loc_BC84E7: AryLock
  loc_BC84EA: Ary1LdPr
  loc_BC84EB: MemLdStr global_8
  loc_BC84EE: AryLock
  loc_BC84F1: Ary1LdRf
  loc_BC84F2: FStR4 var_11C
  loc_BC84F5: FLdPr Me
  loc_BC84F8: MemLdI2 global_92
  loc_BC84FB: CI4UI1
  loc_BC84FC: FMemLdR4 var_11C(8)
  loc_BC8501: AryLock
  loc_BC8504: Ary1LdPr
  loc_BC8505: MemLdRfVar from_stack_1.global_28
  loc_BC8508: FLdPr Me
  loc_BC850B: MemLdI2 global_92
  loc_BC850E: CI4UI1
  loc_BC850F: FMemLdR4 var_11C(8)
  loc_BC8514: AryLock
  loc_BC8517: Ary1LdPr
  loc_BC8518: MemLdRfVar from_stack_1.global_24
  loc_BC851B: FLdPr Me
  loc_BC851E: MemLdI2 global_92
  loc_BC8521: CI4UI1
  loc_BC8522: FMemLdR4 var_11C(8)
  loc_BC8527: Ary1LdPr
  loc_BC8528: MemLdStr global_36
  loc_BC852B: FLdPr Me
  loc_BC852E: MemLdI2 global_92
  loc_BC8531: CI4UI1
  loc_BC8532: FMemLdR4 var_11C(8)
  loc_BC8537: Ary1LdPr
  loc_BC8538: MemLdStr global_32
  loc_BC853B: Call Proc_167_28_9E4ECC()
  loc_BC8540: AryUnlock
  loc_BC8543: AryUnlock
  loc_BC8546: FMemLdRf 0
  loc_BC854B: FMemLdRf 0
  loc_BC8550: FMemLdR4 var_11C(48)
  loc_BC8555: FMemLdR4 var_11C(44)
  loc_BC855A: Call Proc_167_28_9E4ECC()
  loc_BC855F: LitI4 0
  loc_BC8564: FStR4 var_11C
  loc_BC8567: AryUnlock
  loc_BC856A: AryUnlock
  loc_BC856D: AryUnlock
  loc_BC8570: Branch loc_BC8CBF
  loc_BC8573: FLdRfVar var_B4
  loc_BC8576: FLdRfVar var_A4
  loc_BC8579: LitVarStr var_A0, "MessAsie"
  loc_BC857E: PopAdLdVar
  loc_BC857F: FLdRfVar var_90
  loc_BC8582: FLdRfVar var_8C
  loc_BC8585: FLdPr var_88
  loc_BC8588: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC858D: FLdPr var_8C
  loc_BC8590:  = Me.Fields
  loc_BC8595: FLdPr var_90
  loc_BC8598: from_stack_2 = Me.Item(from_stack_1)
  loc_BC859D: FLdPr var_A4
  loc_BC85A0:  = Me.Value
  loc_BC85A5: FLdRfVar var_B4
  loc_BC85A8: FnCByteVar
  loc_BC85AA: CI2UI1
  loc_BC85AC: FLdPr Me
  loc_BC85AF: MemLdI2 global_100
  loc_BC85B2: LtI2
  loc_BC85B3: FFreeAd var_8C = "": var_90 = ""
  loc_BC85BC: FFree1Var var_B4 = ""
  loc_BC85BF: BranchF loc_BC8942
  loc_BC85C2: FLdRfVar var_B4
  loc_BC85C5: FLdRfVar var_A4
  loc_BC85C8: LitVarStr var_A0, "DebeMoas"
  loc_BC85CD: PopAdLdVar
  loc_BC85CE: FLdRfVar var_90
  loc_BC85D1: FLdRfVar var_8C
  loc_BC85D4: FLdPr var_88
  loc_BC85D7: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC85DC: FLdPr var_8C
  loc_BC85DF:  = Me.Fields
  loc_BC85E4: FLdPr var_90
  loc_BC85E7: from_stack_2 = Me.Item(from_stack_1)
  loc_BC85EC: FLdPr var_A4
  loc_BC85EF:  = Me.Value
  loc_BC85F4: FLdRfVar var_B4
  loc_BC85F7: LitVarStr var_DC, "0"
  loc_BC85FC: HardType
  loc_BC85FD: NeVarBool
  loc_BC85FF: FFreeAd var_8C = "": var_90 = ""
  loc_BC8608: FFree1Var var_B4 = ""
  loc_BC860B: BranchF loc_BC872B
  loc_BC860E: FLdRfVar var_A4
  loc_BC8611: LitVarStr var_A0, "DebeMoas"
  loc_BC8616: PopAdLdVar
  loc_BC8617: FLdRfVar var_90
  loc_BC861A: FLdRfVar var_8C
  loc_BC861D: FLdPr var_88
  loc_BC8620: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8625: FLdPr var_8C
  loc_BC8628:  = Me.Fields
  loc_BC862D: FLdPr var_90
  loc_BC8630: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8635: LitI2_Byte 0
  loc_BC8637: FLdPr Me
  loc_BC863A: MemLdI2 global_92
  loc_BC863D: CI4UI1
  loc_BC863E: FLdPr Me
  loc_BC8641: MemLdI2 global_98
  loc_BC8644: CI4UI1
  loc_BC8645: FLdPr Me
  loc_BC8648: MemLdI2 global_96
  loc_BC864B: CI4UI1
  loc_BC864C: FLdPr Me
  loc_BC864F: MemLdI2 global_94
  loc_BC8652: CI4UI1
  loc_BC8653: FLdPr Me
  loc_BC8656: MemLdStr global_84
  loc_BC8659: AryLock
  loc_BC865C: Ary1LdPr
  loc_BC865D: MemLdStr global_8
  loc_BC8660: AryLock
  loc_BC8663: Ary1LdPr
  loc_BC8664: MemLdStr global_8
  loc_BC8667: AryLock
  loc_BC866A: Ary1LdPr
  loc_BC866B: MemLdStr global_8
  loc_BC866E: AryLock
  loc_BC8671: Ary1LdPr
  loc_BC8672: MemLdRfVar from_stack_1.global_8
  loc_BC8675: CVarRef
  loc_BC867A: LitI2_Byte &HFF
  loc_BC867C: FLdZeroAd var_A4
  loc_BC867F: CVarAd
  loc_BC8683: PopAdLdVar
  loc_BC8684: FLdPr Me
  loc_BC8687: MemLdRfVar from_stack_1.global_112
  loc_BC868A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC868F: AryUnlock
  loc_BC8692: AryUnlock
  loc_BC8695: AryUnlock
  loc_BC8698: AryUnlock
  loc_BC869B: FFreeAd var_8C = ""
  loc_BC86A2: FFree1Var var_B4 = ""
  loc_BC86A5: FLdRfVar var_A4
  loc_BC86A8: LitVarStr var_A0, "DebeMoas"
  loc_BC86AD: PopAdLdVar
  loc_BC86AE: FLdRfVar var_90
  loc_BC86B1: FLdRfVar var_8C
  loc_BC86B4: FLdPr var_88
  loc_BC86B7: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC86BC: FLdPr var_8C
  loc_BC86BF:  = Me.Fields
  loc_BC86C4: FLdPr var_90
  loc_BC86C7: from_stack_2 = Me.Item(from_stack_1)
  loc_BC86CC: LitI2_Byte 0
  loc_BC86CE: FLdPr Me
  loc_BC86D1: MemLdI2 global_98
  loc_BC86D4: CI4UI1
  loc_BC86D5: FLdPr Me
  loc_BC86D8: MemLdI2 global_96
  loc_BC86DB: CI4UI1
  loc_BC86DC: FLdPr Me
  loc_BC86DF: MemLdI2 global_94
  loc_BC86E2: CI4UI1
  loc_BC86E3: FLdPr Me
  loc_BC86E6: MemLdStr global_84
  loc_BC86E9: AryLock
  loc_BC86EC: Ary1LdPr
  loc_BC86ED: MemLdStr global_8
  loc_BC86F0: AryLock
  loc_BC86F3: Ary1LdPr
  loc_BC86F4: MemLdStr global_8
  loc_BC86F7: AryLock
  loc_BC86FA: Ary1LdPr
  loc_BC86FB: MemLdRfVar from_stack_1.global_20
  loc_BC86FE: CVarRef
  loc_BC8703: LitI2_Byte &HFF
  loc_BC8705: FLdZeroAd var_A4
  loc_BC8708: CVarAd
  loc_BC870C: PopAdLdVar
  loc_BC870D: FLdPr Me
  loc_BC8710: MemLdRfVar from_stack_1.global_112
  loc_BC8713: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8718: AryUnlock
  loc_BC871B: AryUnlock
  loc_BC871E: AryUnlock
  loc_BC8721: FFreeAd var_8C = ""
  loc_BC8728: FFree1Var var_B4 = ""
  loc_BC872B: FLdRfVar var_B4
  loc_BC872E: FLdRfVar var_A4
  loc_BC8731: LitVarStr var_A0, "HabeMoas"
  loc_BC8736: PopAdLdVar
  loc_BC8737: FLdRfVar var_90
  loc_BC873A: FLdRfVar var_8C
  loc_BC873D: FLdPr var_88
  loc_BC8740: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8745: FLdPr var_8C
  loc_BC8748:  = Me.Fields
  loc_BC874D: FLdPr var_90
  loc_BC8750: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8755: FLdPr var_A4
  loc_BC8758:  = Me.Value
  loc_BC875D: FLdRfVar var_B4
  loc_BC8760: LitVarStr var_DC, "0"
  loc_BC8765: HardType
  loc_BC8766: NeVarBool
  loc_BC8768: FFreeAd var_8C = "": var_90 = ""
  loc_BC8771: FFree1Var var_B4 = ""
  loc_BC8774: BranchF loc_BC8894
  loc_BC8777: FLdRfVar var_A4
  loc_BC877A: LitVarStr var_A0, "HabeMoas"
  loc_BC877F: PopAdLdVar
  loc_BC8780: FLdRfVar var_90
  loc_BC8783: FLdRfVar var_8C
  loc_BC8786: FLdPr var_88
  loc_BC8789: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC878E: FLdPr var_8C
  loc_BC8791:  = Me.Fields
  loc_BC8796: FLdPr var_90
  loc_BC8799: from_stack_2 = Me.Item(from_stack_1)
  loc_BC879E: LitI2_Byte 0
  loc_BC87A0: FLdPr Me
  loc_BC87A3: MemLdI2 global_92
  loc_BC87A6: CI4UI1
  loc_BC87A7: FLdPr Me
  loc_BC87AA: MemLdI2 global_98
  loc_BC87AD: CI4UI1
  loc_BC87AE: FLdPr Me
  loc_BC87B1: MemLdI2 global_96
  loc_BC87B4: CI4UI1
  loc_BC87B5: FLdPr Me
  loc_BC87B8: MemLdI2 global_94
  loc_BC87BB: CI4UI1
  loc_BC87BC: FLdPr Me
  loc_BC87BF: MemLdStr global_84
  loc_BC87C2: AryLock
  loc_BC87C5: Ary1LdPr
  loc_BC87C6: MemLdStr global_8
  loc_BC87C9: AryLock
  loc_BC87CC: Ary1LdPr
  loc_BC87CD: MemLdStr global_8
  loc_BC87D0: AryLock
  loc_BC87D3: Ary1LdPr
  loc_BC87D4: MemLdStr global_8
  loc_BC87D7: AryLock
  loc_BC87DA: Ary1LdPr
  loc_BC87DB: MemLdRfVar from_stack_1.global_12
  loc_BC87DE: CVarRef
  loc_BC87E3: LitI2_Byte &HFF
  loc_BC87E5: FLdZeroAd var_A4
  loc_BC87E8: CVarAd
  loc_BC87EC: PopAdLdVar
  loc_BC87ED: FLdPr Me
  loc_BC87F0: MemLdRfVar from_stack_1.global_112
  loc_BC87F3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC87F8: AryUnlock
  loc_BC87FB: AryUnlock
  loc_BC87FE: AryUnlock
  loc_BC8801: AryUnlock
  loc_BC8804: FFreeAd var_8C = ""
  loc_BC880B: FFree1Var var_B4 = ""
  loc_BC880E: FLdRfVar var_A4
  loc_BC8811: LitVarStr var_A0, "HabeMoas"
  loc_BC8816: PopAdLdVar
  loc_BC8817: FLdRfVar var_90
  loc_BC881A: FLdRfVar var_8C
  loc_BC881D: FLdPr var_88
  loc_BC8820: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8825: FLdPr var_8C
  loc_BC8828:  = Me.Fields
  loc_BC882D: FLdPr var_90
  loc_BC8830: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8835: LitI2_Byte 0
  loc_BC8837: FLdPr Me
  loc_BC883A: MemLdI2 global_98
  loc_BC883D: CI4UI1
  loc_BC883E: FLdPr Me
  loc_BC8841: MemLdI2 global_96
  loc_BC8844: CI4UI1
  loc_BC8845: FLdPr Me
  loc_BC8848: MemLdI2 global_94
  loc_BC884B: CI4UI1
  loc_BC884C: FLdPr Me
  loc_BC884F: MemLdStr global_84
  loc_BC8852: AryLock
  loc_BC8855: Ary1LdPr
  loc_BC8856: MemLdStr global_8
  loc_BC8859: AryLock
  loc_BC885C: Ary1LdPr
  loc_BC885D: MemLdStr global_8
  loc_BC8860: AryLock
  loc_BC8863: Ary1LdPr
  loc_BC8864: MemLdRfVar from_stack_1.global_24
  loc_BC8867: CVarRef
  loc_BC886C: LitI2_Byte &HFF
  loc_BC886E: FLdZeroAd var_A4
  loc_BC8871: CVarAd
  loc_BC8875: PopAdLdVar
  loc_BC8876: FLdPr Me
  loc_BC8879: MemLdRfVar from_stack_1.global_112
  loc_BC887C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8881: AryUnlock
  loc_BC8884: AryUnlock
  loc_BC8887: AryUnlock
  loc_BC888A: FFreeAd var_8C = ""
  loc_BC8891: FFree1Var var_B4 = ""
  loc_BC8894: FLdPr Me
  loc_BC8897: MemLdI2 global_98
  loc_BC889A: CI4UI1
  loc_BC889B: FLdPr Me
  loc_BC889E: MemLdI2 global_96
  loc_BC88A1: CI4UI1
  loc_BC88A2: FLdPr Me
  loc_BC88A5: MemLdI2 global_94
  loc_BC88A8: CI4UI1
  loc_BC88A9: FLdPr Me
  loc_BC88AC: MemLdStr global_84
  loc_BC88AF: AryLock
  loc_BC88B2: Ary1LdPr
  loc_BC88B3: MemLdStr global_8
  loc_BC88B6: AryLock
  loc_BC88B9: Ary1LdPr
  loc_BC88BA: MemLdStr global_8
  loc_BC88BD: AryLock
  loc_BC88C0: Ary1LdRf
  loc_BC88C1: FStR4 var_12C
  loc_BC88C4: FLdPr Me
  loc_BC88C7: MemLdI2 global_92
  loc_BC88CA: CI4UI1
  loc_BC88CB: FMemLdR4 var_12C(8)
  loc_BC88D0: AryLock
  loc_BC88D3: Ary1LdPr
  loc_BC88D4: MemLdRfVar from_stack_1.global_20
  loc_BC88D7: FLdPr Me
  loc_BC88DA: MemLdI2 global_92
  loc_BC88DD: CI4UI1
  loc_BC88DE: FMemLdR4 var_12C(8)
  loc_BC88E3: AryLock
  loc_BC88E6: Ary1LdPr
  loc_BC88E7: MemLdRfVar from_stack_1.global_16
  loc_BC88EA: FLdPr Me
  loc_BC88ED: MemLdI2 global_92
  loc_BC88F0: CI4UI1
  loc_BC88F1: FMemLdR4 var_12C(8)
  loc_BC88F6: Ary1LdPr
  loc_BC88F7: MemLdStr global_12
  loc_BC88FA: FLdPr Me
  loc_BC88FD: MemLdI2 global_92
  loc_BC8900: CI4UI1
  loc_BC8901: FMemLdR4 var_12C(8)
  loc_BC8906: Ary1LdPr
  loc_BC8907: MemLdStr global_8
  loc_BC890A: Call Proc_167_28_9E4ECC()
  loc_BC890F: AryUnlock
  loc_BC8912: AryUnlock
  loc_BC8915: FMemLdRf 0
  loc_BC891A: FMemLdRf 0
  loc_BC891F: FMemLdR4 var_12C(24)
  loc_BC8924: FMemLdR4 var_12C(20)
  loc_BC8929: Call Proc_167_28_9E4ECC()
  loc_BC892E: LitI4 0
  loc_BC8933: FStR4 var_12C
  loc_BC8936: AryUnlock
  loc_BC8939: AryUnlock
  loc_BC893C: AryUnlock
  loc_BC893F: Branch loc_BC8CBF
  loc_BC8942: FLdRfVar var_B4
  loc_BC8945: FLdRfVar var_A4
  loc_BC8948: LitVarStr var_A0, "DebeMoas"
  loc_BC894D: PopAdLdVar
  loc_BC894E: FLdRfVar var_90
  loc_BC8951: FLdRfVar var_8C
  loc_BC8954: FLdPr var_88
  loc_BC8957: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC895C: FLdPr var_8C
  loc_BC895F:  = Me.Fields
  loc_BC8964: FLdPr var_90
  loc_BC8967: from_stack_2 = Me.Item(from_stack_1)
  loc_BC896C: FLdPr var_A4
  loc_BC896F:  = Me.Value
  loc_BC8974: FLdRfVar var_B4
  loc_BC8977: LitVarStr var_DC, "0"
  loc_BC897C: HardType
  loc_BC897D: NeVarBool
  loc_BC897F: FFreeAd var_8C = "": var_90 = ""
  loc_BC8988: FFree1Var var_B4 = ""
  loc_BC898B: BranchF loc_BC8AAB
  loc_BC898E: FLdRfVar var_A4
  loc_BC8991: LitVarStr var_A0, "DebeMoas"
  loc_BC8996: PopAdLdVar
  loc_BC8997: FLdRfVar var_90
  loc_BC899A: FLdRfVar var_8C
  loc_BC899D: FLdPr var_88
  loc_BC89A0: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC89A5: FLdPr var_8C
  loc_BC89A8:  = Me.Fields
  loc_BC89AD: FLdPr var_90
  loc_BC89B0: from_stack_2 = Me.Item(from_stack_1)
  loc_BC89B5: LitI2_Byte 0
  loc_BC89B7: FLdPr Me
  loc_BC89BA: MemLdI2 global_92
  loc_BC89BD: CI4UI1
  loc_BC89BE: FLdPr Me
  loc_BC89C1: MemLdI2 global_98
  loc_BC89C4: CI4UI1
  loc_BC89C5: FLdPr Me
  loc_BC89C8: MemLdI2 global_96
  loc_BC89CB: CI4UI1
  loc_BC89CC: FLdPr Me
  loc_BC89CF: MemLdI2 global_94
  loc_BC89D2: CI4UI1
  loc_BC89D3: FLdPr Me
  loc_BC89D6: MemLdStr global_84
  loc_BC89D9: AryLock
  loc_BC89DC: Ary1LdPr
  loc_BC89DD: MemLdStr global_8
  loc_BC89E0: AryLock
  loc_BC89E3: Ary1LdPr
  loc_BC89E4: MemLdStr global_8
  loc_BC89E7: AryLock
  loc_BC89EA: Ary1LdPr
  loc_BC89EB: MemLdStr global_8
  loc_BC89EE: AryLock
  loc_BC89F1: Ary1LdPr
  loc_BC89F2: MemLdRfVar from_stack_1.global_32
  loc_BC89F5: CVarRef
  loc_BC89FA: LitI2_Byte &HFF
  loc_BC89FC: FLdZeroAd var_A4
  loc_BC89FF: CVarAd
  loc_BC8A03: PopAdLdVar
  loc_BC8A04: FLdPr Me
  loc_BC8A07: MemLdRfVar from_stack_1.global_112
  loc_BC8A0A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8A0F: AryUnlock
  loc_BC8A12: AryUnlock
  loc_BC8A15: AryUnlock
  loc_BC8A18: AryUnlock
  loc_BC8A1B: FFreeAd var_8C = ""
  loc_BC8A22: FFree1Var var_B4 = ""
  loc_BC8A25: FLdRfVar var_A4
  loc_BC8A28: LitVarStr var_A0, "DebeMoas"
  loc_BC8A2D: PopAdLdVar
  loc_BC8A2E: FLdRfVar var_90
  loc_BC8A31: FLdRfVar var_8C
  loc_BC8A34: FLdPr var_88
  loc_BC8A37: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8A3C: FLdPr var_8C
  loc_BC8A3F:  = Me.Fields
  loc_BC8A44: FLdPr var_90
  loc_BC8A47: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8A4C: LitI2_Byte 0
  loc_BC8A4E: FLdPr Me
  loc_BC8A51: MemLdI2 global_98
  loc_BC8A54: CI4UI1
  loc_BC8A55: FLdPr Me
  loc_BC8A58: MemLdI2 global_96
  loc_BC8A5B: CI4UI1
  loc_BC8A5C: FLdPr Me
  loc_BC8A5F: MemLdI2 global_94
  loc_BC8A62: CI4UI1
  loc_BC8A63: FLdPr Me
  loc_BC8A66: MemLdStr global_84
  loc_BC8A69: AryLock
  loc_BC8A6C: Ary1LdPr
  loc_BC8A6D: MemLdStr global_8
  loc_BC8A70: AryLock
  loc_BC8A73: Ary1LdPr
  loc_BC8A74: MemLdStr global_8
  loc_BC8A77: AryLock
  loc_BC8A7A: Ary1LdPr
  loc_BC8A7B: MemLdRfVar from_stack_1.global_44
  loc_BC8A7E: CVarRef
  loc_BC8A83: LitI2_Byte &HFF
  loc_BC8A85: FLdZeroAd var_A4
  loc_BC8A88: CVarAd
  loc_BC8A8C: PopAdLdVar
  loc_BC8A8D: FLdPr Me
  loc_BC8A90: MemLdRfVar from_stack_1.global_112
  loc_BC8A93: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8A98: AryUnlock
  loc_BC8A9B: AryUnlock
  loc_BC8A9E: AryUnlock
  loc_BC8AA1: FFreeAd var_8C = ""
  loc_BC8AA8: FFree1Var var_B4 = ""
  loc_BC8AAB: FLdRfVar var_B4
  loc_BC8AAE: FLdRfVar var_A4
  loc_BC8AB1: LitVarStr var_A0, "HabeMoas"
  loc_BC8AB6: PopAdLdVar
  loc_BC8AB7: FLdRfVar var_90
  loc_BC8ABA: FLdRfVar var_8C
  loc_BC8ABD: FLdPr var_88
  loc_BC8AC0: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8AC5: FLdPr var_8C
  loc_BC8AC8:  = Me.Fields
  loc_BC8ACD: FLdPr var_90
  loc_BC8AD0: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8AD5: FLdPr var_A4
  loc_BC8AD8:  = Me.Value
  loc_BC8ADD: FLdRfVar var_B4
  loc_BC8AE0: LitVarStr var_DC, "0"
  loc_BC8AE5: HardType
  loc_BC8AE6: NeVarBool
  loc_BC8AE8: FFreeAd var_8C = "": var_90 = ""
  loc_BC8AF1: FFree1Var var_B4 = ""
  loc_BC8AF4: BranchF loc_BC8C14
  loc_BC8AF7: FLdRfVar var_A4
  loc_BC8AFA: LitVarStr var_A0, "HabeMoas"
  loc_BC8AFF: PopAdLdVar
  loc_BC8B00: FLdRfVar var_90
  loc_BC8B03: FLdRfVar var_8C
  loc_BC8B06: FLdPr var_88
  loc_BC8B09: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8B0E: FLdPr var_8C
  loc_BC8B11:  = Me.Fields
  loc_BC8B16: FLdPr var_90
  loc_BC8B19: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8B1E: LitI2_Byte 0
  loc_BC8B20: FLdPr Me
  loc_BC8B23: MemLdI2 global_92
  loc_BC8B26: CI4UI1
  loc_BC8B27: FLdPr Me
  loc_BC8B2A: MemLdI2 global_98
  loc_BC8B2D: CI4UI1
  loc_BC8B2E: FLdPr Me
  loc_BC8B31: MemLdI2 global_96
  loc_BC8B34: CI4UI1
  loc_BC8B35: FLdPr Me
  loc_BC8B38: MemLdI2 global_94
  loc_BC8B3B: CI4UI1
  loc_BC8B3C: FLdPr Me
  loc_BC8B3F: MemLdStr global_84
  loc_BC8B42: AryLock
  loc_BC8B45: Ary1LdPr
  loc_BC8B46: MemLdStr global_8
  loc_BC8B49: AryLock
  loc_BC8B4C: Ary1LdPr
  loc_BC8B4D: MemLdStr global_8
  loc_BC8B50: AryLock
  loc_BC8B53: Ary1LdPr
  loc_BC8B54: MemLdStr global_8
  loc_BC8B57: AryLock
  loc_BC8B5A: Ary1LdPr
  loc_BC8B5B: MemLdRfVar from_stack_1.global_36
  loc_BC8B5E: CVarRef
  loc_BC8B63: LitI2_Byte &HFF
  loc_BC8B65: FLdZeroAd var_A4
  loc_BC8B68: CVarAd
  loc_BC8B6C: PopAdLdVar
  loc_BC8B6D: FLdPr Me
  loc_BC8B70: MemLdRfVar from_stack_1.global_112
  loc_BC8B73: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8B78: AryUnlock
  loc_BC8B7B: AryUnlock
  loc_BC8B7E: AryUnlock
  loc_BC8B81: AryUnlock
  loc_BC8B84: FFreeAd var_8C = ""
  loc_BC8B8B: FFree1Var var_B4 = ""
  loc_BC8B8E: FLdRfVar var_A4
  loc_BC8B91: LitVarStr var_A0, "HabeMoas"
  loc_BC8B96: PopAdLdVar
  loc_BC8B97: FLdRfVar var_90
  loc_BC8B9A: FLdRfVar var_8C
  loc_BC8B9D: FLdPr var_88
  loc_BC8BA0: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8BA5: FLdPr var_8C
  loc_BC8BA8:  = Me.Fields
  loc_BC8BAD: FLdPr var_90
  loc_BC8BB0: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8BB5: LitI2_Byte 0
  loc_BC8BB7: FLdPr Me
  loc_BC8BBA: MemLdI2 global_98
  loc_BC8BBD: CI4UI1
  loc_BC8BBE: FLdPr Me
  loc_BC8BC1: MemLdI2 global_96
  loc_BC8BC4: CI4UI1
  loc_BC8BC5: FLdPr Me
  loc_BC8BC8: MemLdI2 global_94
  loc_BC8BCB: CI4UI1
  loc_BC8BCC: FLdPr Me
  loc_BC8BCF: MemLdStr global_84
  loc_BC8BD2: AryLock
  loc_BC8BD5: Ary1LdPr
  loc_BC8BD6: MemLdStr global_8
  loc_BC8BD9: AryLock
  loc_BC8BDC: Ary1LdPr
  loc_BC8BDD: MemLdStr global_8
  loc_BC8BE0: AryLock
  loc_BC8BE3: Ary1LdPr
  loc_BC8BE4: MemLdRfVar from_stack_1.global_48
  loc_BC8BE7: CVarRef
  loc_BC8BEC: LitI2_Byte &HFF
  loc_BC8BEE: FLdZeroAd var_A4
  loc_BC8BF1: CVarAd
  loc_BC8BF5: PopAdLdVar
  loc_BC8BF6: FLdPr Me
  loc_BC8BF9: MemLdRfVar from_stack_1.global_112
  loc_BC8BFC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8C01: AryUnlock
  loc_BC8C04: AryUnlock
  loc_BC8C07: AryUnlock
  loc_BC8C0A: FFreeAd var_8C = ""
  loc_BC8C11: FFree1Var var_B4 = ""
  loc_BC8C14: FLdPr Me
  loc_BC8C17: MemLdI2 global_98
  loc_BC8C1A: CI4UI1
  loc_BC8C1B: FLdPr Me
  loc_BC8C1E: MemLdI2 global_96
  loc_BC8C21: CI4UI1
  loc_BC8C22: FLdPr Me
  loc_BC8C25: MemLdI2 global_94
  loc_BC8C28: CI4UI1
  loc_BC8C29: FLdPr Me
  loc_BC8C2C: MemLdStr global_84
  loc_BC8C2F: AryLock
  loc_BC8C32: Ary1LdPr
  loc_BC8C33: MemLdStr global_8
  loc_BC8C36: AryLock
  loc_BC8C39: Ary1LdPr
  loc_BC8C3A: MemLdStr global_8
  loc_BC8C3D: AryLock
  loc_BC8C40: Ary1LdRf
  loc_BC8C41: FStR4 var_13C
  loc_BC8C44: FLdPr Me
  loc_BC8C47: MemLdI2 global_92
  loc_BC8C4A: CI4UI1
  loc_BC8C4B: FMemLdR4 var_13C(8)
  loc_BC8C50: AryLock
  loc_BC8C53: Ary1LdPr
  loc_BC8C54: MemLdRfVar from_stack_1.global_28
  loc_BC8C57: FLdPr Me
  loc_BC8C5A: MemLdI2 global_92
  loc_BC8C5D: CI4UI1
  loc_BC8C5E: FMemLdR4 var_13C(8)
  loc_BC8C63: AryLock
  loc_BC8C66: Ary1LdPr
  loc_BC8C67: MemLdRfVar from_stack_1.global_24
  loc_BC8C6A: FLdPr Me
  loc_BC8C6D: MemLdI2 global_92
  loc_BC8C70: CI4UI1
  loc_BC8C71: FMemLdR4 var_13C(8)
  loc_BC8C76: Ary1LdPr
  loc_BC8C77: MemLdStr global_36
  loc_BC8C7A: FLdPr Me
  loc_BC8C7D: MemLdI2 global_92
  loc_BC8C80: CI4UI1
  loc_BC8C81: FMemLdR4 var_13C(8)
  loc_BC8C86: Ary1LdPr
  loc_BC8C87: MemLdStr global_32
  loc_BC8C8A: Call Proc_167_28_9E4ECC()
  loc_BC8C8F: AryUnlock
  loc_BC8C92: AryUnlock
  loc_BC8C95: FMemLdRf 0
  loc_BC8C9A: FMemLdRf 0
  loc_BC8C9F: FMemLdR4 var_13C(48)
  loc_BC8CA4: FMemLdR4 var_13C(44)
  loc_BC8CA9: Call Proc_167_28_9E4ECC()
  loc_BC8CAE: LitI4 0
  loc_BC8CB3: FStR4 var_13C
  loc_BC8CB6: AryUnlock
  loc_BC8CB9: AryUnlock
  loc_BC8CBC: AryUnlock
  loc_BC8CBF: FLdRfVar var_B4
  loc_BC8CC2: FLdRfVar var_A4
  loc_BC8CC5: LitVarStr var_A0, "DebeMoas"
  loc_BC8CCA: PopAdLdVar
  loc_BC8CCB: FLdRfVar var_90
  loc_BC8CCE: FLdRfVar var_8C
  loc_BC8CD1: FLdPr var_88
  loc_BC8CD4: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8CD9: FLdPr var_8C
  loc_BC8CDC:  = Me.Fields
  loc_BC8CE1: FLdPr var_90
  loc_BC8CE4: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8CE9: FLdPr var_A4
  loc_BC8CEC:  = Me.Value
  loc_BC8CF1: FLdRfVar var_B4
  loc_BC8CF4: LitVarStr var_DC, "0"
  loc_BC8CF9: HardType
  loc_BC8CFA: NeVarBool
  loc_BC8CFC: FFreeAd var_8C = "": var_90 = ""
  loc_BC8D05: FFree1Var var_B4 = ""
  loc_BC8D08: BranchF loc_BC8E28
  loc_BC8D0B: FLdRfVar var_A4
  loc_BC8D0E: LitVarStr var_A0, "DebeMoas"
  loc_BC8D13: PopAdLdVar
  loc_BC8D14: FLdRfVar var_90
  loc_BC8D17: FLdRfVar var_8C
  loc_BC8D1A: FLdPr var_88
  loc_BC8D1D: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8D22: FLdPr var_8C
  loc_BC8D25:  = Me.Fields
  loc_BC8D2A: FLdPr var_90
  loc_BC8D2D: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8D32: LitI2_Byte 0
  loc_BC8D34: FLdPr Me
  loc_BC8D37: MemLdI2 global_92
  loc_BC8D3A: CI4UI1
  loc_BC8D3B: FLdPr Me
  loc_BC8D3E: MemLdI2 global_98
  loc_BC8D41: CI4UI1
  loc_BC8D42: FLdPr Me
  loc_BC8D45: MemLdI2 global_96
  loc_BC8D48: CI4UI1
  loc_BC8D49: FLdPr Me
  loc_BC8D4C: MemLdI2 global_94
  loc_BC8D4F: CI4UI1
  loc_BC8D50: FLdPr Me
  loc_BC8D53: MemLdStr global_84
  loc_BC8D56: AryLock
  loc_BC8D59: Ary1LdPr
  loc_BC8D5A: MemLdStr global_8
  loc_BC8D5D: AryLock
  loc_BC8D60: Ary1LdPr
  loc_BC8D61: MemLdStr global_8
  loc_BC8D64: AryLock
  loc_BC8D67: Ary1LdPr
  loc_BC8D68: MemLdStr global_8
  loc_BC8D6B: AryLock
  loc_BC8D6E: Ary1LdPr
  loc_BC8D6F: MemLdRfVar from_stack_1.global_40
  loc_BC8D72: CVarRef
  loc_BC8D77: LitI2_Byte &HFF
  loc_BC8D79: FLdZeroAd var_A4
  loc_BC8D7C: CVarAd
  loc_BC8D80: PopAdLdVar
  loc_BC8D81: FLdPr Me
  loc_BC8D84: MemLdRfVar from_stack_1.global_112
  loc_BC8D87: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8D8C: AryUnlock
  loc_BC8D8F: AryUnlock
  loc_BC8D92: AryUnlock
  loc_BC8D95: AryUnlock
  loc_BC8D98: FFreeAd var_8C = ""
  loc_BC8D9F: FFree1Var var_B4 = ""
  loc_BC8DA2: FLdRfVar var_A4
  loc_BC8DA5: LitVarStr var_A0, "DebeMoas"
  loc_BC8DAA: PopAdLdVar
  loc_BC8DAB: FLdRfVar var_90
  loc_BC8DAE: FLdRfVar var_8C
  loc_BC8DB1: FLdPr var_88
  loc_BC8DB4: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8DB9: FLdPr var_8C
  loc_BC8DBC:  = Me.Fields
  loc_BC8DC1: FLdPr var_90
  loc_BC8DC4: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8DC9: LitI2_Byte 0
  loc_BC8DCB: FLdPr Me
  loc_BC8DCE: MemLdI2 global_98
  loc_BC8DD1: CI4UI1
  loc_BC8DD2: FLdPr Me
  loc_BC8DD5: MemLdI2 global_96
  loc_BC8DD8: CI4UI1
  loc_BC8DD9: FLdPr Me
  loc_BC8DDC: MemLdI2 global_94
  loc_BC8DDF: CI4UI1
  loc_BC8DE0: FLdPr Me
  loc_BC8DE3: MemLdStr global_84
  loc_BC8DE6: AryLock
  loc_BC8DE9: Ary1LdPr
  loc_BC8DEA: MemLdStr global_8
  loc_BC8DED: AryLock
  loc_BC8DF0: Ary1LdPr
  loc_BC8DF1: MemLdStr global_8
  loc_BC8DF4: AryLock
  loc_BC8DF7: Ary1LdPr
  loc_BC8DF8: MemLdRfVar from_stack_1.htmFile
  loc_BC8DFB: CVarRef
  loc_BC8E00: LitI2_Byte &HFF
  loc_BC8E02: FLdZeroAd var_A4
  loc_BC8E05: CVarAd
  loc_BC8E09: PopAdLdVar
  loc_BC8E0A: FLdPr Me
  loc_BC8E0D: MemLdRfVar from_stack_1.global_112
  loc_BC8E10: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8E15: AryUnlock
  loc_BC8E18: AryUnlock
  loc_BC8E1B: AryUnlock
  loc_BC8E1E: FFreeAd var_8C = ""
  loc_BC8E25: FFree1Var var_B4 = ""
  loc_BC8E28: FLdRfVar var_B4
  loc_BC8E2B: FLdRfVar var_A4
  loc_BC8E2E: LitVarStr var_A0, "HabeMoas"
  loc_BC8E33: PopAdLdVar
  loc_BC8E34: FLdRfVar var_90
  loc_BC8E37: FLdRfVar var_8C
  loc_BC8E3A: FLdPr var_88
  loc_BC8E3D: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8E42: FLdPr var_8C
  loc_BC8E45:  = Me.Fields
  loc_BC8E4A: FLdPr var_90
  loc_BC8E4D: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8E52: FLdPr var_A4
  loc_BC8E55:  = Me.Value
  loc_BC8E5A: FLdRfVar var_B4
  loc_BC8E5D: LitVarStr var_DC, "0"
  loc_BC8E62: HardType
  loc_BC8E63: NeVarBool
  loc_BC8E65: FFreeAd var_8C = "": var_90 = ""
  loc_BC8E6E: FFree1Var var_B4 = ""
  loc_BC8E71: BranchF loc_BC8F91
  loc_BC8E74: FLdRfVar var_A4
  loc_BC8E77: LitVarStr var_A0, "HabeMoas"
  loc_BC8E7C: PopAdLdVar
  loc_BC8E7D: FLdRfVar var_90
  loc_BC8E80: FLdRfVar var_8C
  loc_BC8E83: FLdPr var_88
  loc_BC8E86: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8E8B: FLdPr var_8C
  loc_BC8E8E:  = Me.Fields
  loc_BC8E93: FLdPr var_90
  loc_BC8E96: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8E9B: LitI2_Byte 0
  loc_BC8E9D: FLdPr Me
  loc_BC8EA0: MemLdI2 global_92
  loc_BC8EA3: CI4UI1
  loc_BC8EA4: FLdPr Me
  loc_BC8EA7: MemLdI2 global_98
  loc_BC8EAA: CI4UI1
  loc_BC8EAB: FLdPr Me
  loc_BC8EAE: MemLdI2 global_96
  loc_BC8EB1: CI4UI1
  loc_BC8EB2: FLdPr Me
  loc_BC8EB5: MemLdI2 global_94
  loc_BC8EB8: CI4UI1
  loc_BC8EB9: FLdPr Me
  loc_BC8EBC: MemLdStr global_84
  loc_BC8EBF: AryLock
  loc_BC8EC2: Ary1LdPr
  loc_BC8EC3: MemLdStr global_8
  loc_BC8EC6: AryLock
  loc_BC8EC9: Ary1LdPr
  loc_BC8ECA: MemLdStr global_8
  loc_BC8ECD: AryLock
  loc_BC8ED0: Ary1LdPr
  loc_BC8ED1: MemLdStr global_8
  loc_BC8ED4: AryLock
  loc_BC8ED7: Ary1LdPr
  loc_BC8ED8: MemLdRfVar from_stack_1.global_44
  loc_BC8EDB: CVarRef
  loc_BC8EE0: LitI2_Byte &HFF
  loc_BC8EE2: FLdZeroAd var_A4
  loc_BC8EE5: CVarAd
  loc_BC8EE9: PopAdLdVar
  loc_BC8EEA: FLdPr Me
  loc_BC8EED: MemLdRfVar from_stack_1.global_112
  loc_BC8EF0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8EF5: AryUnlock
  loc_BC8EF8: AryUnlock
  loc_BC8EFB: AryUnlock
  loc_BC8EFE: AryUnlock
  loc_BC8F01: FFreeAd var_8C = ""
  loc_BC8F08: FFree1Var var_B4 = ""
  loc_BC8F0B: FLdRfVar var_A4
  loc_BC8F0E: LitVarStr var_A0, "HabeMoas"
  loc_BC8F13: PopAdLdVar
  loc_BC8F14: FLdRfVar var_90
  loc_BC8F17: FLdRfVar var_8C
  loc_BC8F1A: FLdPr var_88
  loc_BC8F1D: from_stack_1v = clsasiento.RsFrmGet()
  loc_BC8F22: FLdPr var_8C
  loc_BC8F25:  = Me.Fields
  loc_BC8F2A: FLdPr var_90
  loc_BC8F2D: from_stack_2 = Me.Item(from_stack_1)
  loc_BC8F32: LitI2_Byte 0
  loc_BC8F34: FLdPr Me
  loc_BC8F37: MemLdI2 global_98
  loc_BC8F3A: CI4UI1
  loc_BC8F3B: FLdPr Me
  loc_BC8F3E: MemLdI2 global_96
  loc_BC8F41: CI4UI1
  loc_BC8F42: FLdPr Me
  loc_BC8F45: MemLdI2 global_94
  loc_BC8F48: CI4UI1
  loc_BC8F49: FLdPr Me
  loc_BC8F4C: MemLdStr global_84
  loc_BC8F4F: AryLock
  loc_BC8F52: Ary1LdPr
  loc_BC8F53: MemLdStr global_8
  loc_BC8F56: AryLock
  loc_BC8F59: Ary1LdPr
  loc_BC8F5A: MemLdStr global_8
  loc_BC8F5D: AryLock
  loc_BC8F60: Ary1LdPr
  loc_BC8F61: MemLdRfVar from_stack_1.global_56
  loc_BC8F64: CVarRef
  loc_BC8F69: LitI2_Byte &HFF
  loc_BC8F6B: FLdZeroAd var_A4
  loc_BC8F6E: CVarAd
  loc_BC8F72: PopAdLdVar
  loc_BC8F73: FLdPr Me
  loc_BC8F76: MemLdRfVar from_stack_1.global_112
  loc_BC8F79: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC8F7E: AryUnlock
  loc_BC8F81: AryUnlock
  loc_BC8F84: AryUnlock
  loc_BC8F87: FFreeAd var_8C = ""
  loc_BC8F8E: FFree1Var var_B4 = ""
  loc_BC8F91: FLdPr Me
  loc_BC8F94: MemLdI2 global_98
  loc_BC8F97: CI4UI1
  loc_BC8F98: FLdPr Me
  loc_BC8F9B: MemLdI2 global_96
  loc_BC8F9E: CI4UI1
  loc_BC8F9F: FLdPr Me
  loc_BC8FA2: MemLdI2 global_94
  loc_BC8FA5: CI4UI1
  loc_BC8FA6: FLdPr Me
  loc_BC8FA9: MemLdStr global_84
  loc_BC8FAC: AryLock
  loc_BC8FAF: Ary1LdPr
  loc_BC8FB0: MemLdStr global_8
  loc_BC8FB3: AryLock
  loc_BC8FB6: Ary1LdPr
  loc_BC8FB7: MemLdStr global_8
  loc_BC8FBA: AryLock
  loc_BC8FBD: Ary1LdRf
  loc_BC8FBE: FStR4 var_14C
  loc_BC8FC1: FLdRfVar var_154
  loc_BC8FC4: FLdPr Me
  loc_BC8FC7: MemLdI2 global_92
  loc_BC8FCA: CI4UI1
  loc_BC8FCB: FMemLdR4 var_14C(8)
  loc_BC8FD0: Ary1LdPr
  loc_BC8FD1: MemLdStr global_32
  loc_BC8FD4: FLdPr Me
  loc_BC8FD7: MemLdI2 global_92
  loc_BC8FDA: CI4UI1
  loc_BC8FDB: FMemLdR4 var_14C(8)
  loc_BC8FE0: Ary1LdPr
  loc_BC8FE1: MemLdStr global_8
  loc_BC8FE4: Call Proc_167_27_9A6200()
  loc_BC8FE9: FLdRfVar var_15C
  loc_BC8FEC: FLdPr Me
  loc_BC8FEF: MemLdI2 global_92
  loc_BC8FF2: CI4UI1
  loc_BC8FF3: FMemLdR4 var_14C(8)
  loc_BC8FF8: Ary1LdPr
  loc_BC8FF9: MemLdStr global_36
  loc_BC8FFC: FLdPr Me
  loc_BC8FFF: MemLdI2 global_92
  loc_BC9002: CI4UI1
  loc_BC9003: FMemLdR4 var_14C(8)
  loc_BC9008: Ary1LdPr
  loc_BC9009: MemLdStr global_12
  loc_BC900C: Call Proc_167_27_9A6200()
  loc_BC9011: FLdPr Me
  loc_BC9014: MemLdI2 global_92
  loc_BC9017: CI4UI1
  loc_BC9018: FMemLdR4 var_14C(8)
  loc_BC901D: AryLock
  loc_BC9020: Ary1LdPr
  loc_BC9021: MemLdRfVar from_stack_1.htmFile
  loc_BC9024: FLdPr Me
  loc_BC9027: MemLdI2 global_92
  loc_BC902A: CI4UI1
  loc_BC902B: FMemLdR4 var_14C(8)
  loc_BC9030: AryLock
  loc_BC9033: Ary1LdPr
  loc_BC9034: MemLdRfVar from_stack_1.global_48
  loc_BC9037: FLdFPR8 var_15C
  loc_BC903A: CStrR8
  loc_BC903C: FStStrNoPop var_160
  loc_BC903F: FLdFPR8 var_154
  loc_BC9042: CStrR8
  loc_BC9044: FStStrNoPop var_BC
  loc_BC9047: Call Proc_167_28_9E4ECC()
  loc_BC904C: AryUnlock
  loc_BC904F: AryUnlock
  loc_BC9052: FFreeStr var_BC = ""
  loc_BC9059: FLdRfVar var_154
  loc_BC905C: FMemLdR4 var_14C(44)
  loc_BC9061: FMemLdR4 var_14C(20)
  loc_BC9066: Call Proc_167_27_9A6200()
  loc_BC906B: FLdRfVar var_15C
  loc_BC906E: FMemLdR4 var_14C(48)
  loc_BC9073: FMemLdR4 var_14C(24)
  loc_BC9078: Call Proc_167_27_9A6200()
  loc_BC907D: FMemLdRf 0
  loc_BC9082: FMemLdRf 0
  loc_BC9087: FLdFPR8 var_15C
  loc_BC908A: CStrR8
  loc_BC908C: FStStrNoPop var_160
  loc_BC908F: FLdFPR8 var_154
  loc_BC9092: CStrR8
  loc_BC9094: FStStrNoPop var_BC
  loc_BC9097: Call Proc_167_28_9E4ECC()
  loc_BC909C: FFreeStr var_BC = ""
  loc_BC90A3: LitI4 0
  loc_BC90A8: FStR4 var_14C
  loc_BC90AB: AryUnlock
  loc_BC90AE: AryUnlock
  loc_BC90B1: AryUnlock
  loc_BC90B4: LitNothing
  loc_BC90B6: FStAd var_88 
  loc_BC90BA: ExitProcHresult
End Function

Private Function Proc_167_27_9A6200(arg_C, arg_10) '9A6200
  'Data Table: 48F5A0
  loc_9A617C: ILdRf arg_C
  loc_9A617F: FStStrCopy var_90
  loc_9A6182: ILdRf arg_10
  loc_9A6185: FStStrCopy var_94
  loc_9A6188: LitVarI2 var_D4, 0
  loc_9A618D: FLdRfVar var_90
  loc_9A6190: CVarRef
  loc_9A6195: ILdRf var_90
  loc_9A6198: LitStr vbNullString
  loc_9A619B: NeStr
  loc_9A619D: CVarBoolI2 var_A4
  loc_9A61A1: FLdRfVar var_E4
  loc_9A61A4: ImpAdCallFPR4  = IIf(, , )
  loc_9A61A9: FLdRfVar var_E4
  loc_9A61AC: CStrVarTmp
  loc_9A61AD: FStStr var_90
  loc_9A61B0: FFreeVar var_A4 = "": var_D4 = ""
  loc_9A61B9: LitVarI2 var_D4, 0
  loc_9A61BE: FLdRfVar var_94
  loc_9A61C1: CVarRef
  loc_9A61C6: ILdRf var_94
  loc_9A61C9: LitStr vbNullString
  loc_9A61CC: NeStr
  loc_9A61CE: CVarBoolI2 var_A4
  loc_9A61D2: FLdRfVar var_E4
  loc_9A61D5: ImpAdCallFPR4  = IIf(, , )
  loc_9A61DA: FLdRfVar var_E4
  loc_9A61DD: CStrVarTmp
  loc_9A61DE: FStStr var_94
  loc_9A61E1: FFreeVar var_A4 = "": var_D4 = ""
  loc_9A61EA: ILdRf var_90
  loc_9A61ED: CR8Str
  loc_9A61EF: ILdRf var_94
  loc_9A61F2: CR8Str
  loc_9A61F4: AddR8
  loc_9A61F5: FStFPR8 var_8C
  loc_9A61F8: ExitProcCbHresult
End Function

Private Function Proc_167_28_9E4ECC(arg_C, arg_10, arg_14, arg_18) '9E4ECC
  'Data Table: 48F5A0
  loc_9E4DB4: ILdRf arg_C
  loc_9E4DB7: FStStrCopy var_88
  loc_9E4DBA: ILdRf arg_10
  loc_9E4DBD: FStStrCopy var_8C
  loc_9E4DC0: ILdRf var_88
  loc_9E4DC3: LitStr vbNullString
  loc_9E4DC6: EqStr
  loc_9E4DC8: BranchF loc_9E4DD1
  loc_9E4DCB: LitStr "0"
  loc_9E4DCE: FStStrCopy var_88
  loc_9E4DD1: ILdRf var_8C
  loc_9E4DD4: LitStr vbNullString
  loc_9E4DD7: EqStr
  loc_9E4DD9: BranchF loc_9E4DE2
  loc_9E4DDC: LitStr "0"
  loc_9E4DDF: FStStrCopy var_8C
  loc_9E4DE2: LitI4 2
  loc_9E4DE7: ILdRf var_88
  loc_9E4DEA: CR8Str
  loc_9E4DEC: ILdRf var_8C
  loc_9E4DEF: CR8Str
  loc_9E4DF1: SubR4
  loc_9E4DF2: CVarR8
  loc_9E4DF6: FLdRfVar var_C4
  loc_9E4DF9: ImpAdCallFPR4  = Round(, )
  loc_9E4DFE: FLdRfVar var_C4
  loc_9E4E01: CR4Var
  loc_9E4E02: FStFPR8 var_94
  loc_9E4E05: FFreeVar var_B4 = ""
  loc_9E4E0C: FLdFPR8 var_94
  loc_9E4E0F: FStFPR8 var_CC
  loc_9E4E12: FLdFPR8 var_CC
  loc_9E4E15: LitI2_Byte 0
  loc_9E4E17: CR8I2
  loc_9E4E18: GtR4
  loc_9E4E19: BranchF loc_9E4E51
  loc_9E4E1C: LitI2_Byte 0
  loc_9E4E1E: LitVar_Missing var_B4
  loc_9E4E21: LitI2_Byte &HFF
  loc_9E4E23: FLdFPR8 var_94
  loc_9E4E26: CVarR8
  loc_9E4E2A: PopAdLdVar
  loc_9E4E2B: ILdRf arg_14
  loc_9E4E2E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E4E33: FFree1Var var_B4 = ""
  loc_9E4E36: LitI2_Byte 0
  loc_9E4E38: LitVar_Missing var_B4
  loc_9E4E3B: LitI2_Byte 0
  loc_9E4E3D: LitVarStr var_A4, vbNullString
  loc_9E4E42: PopAdLdVar
  loc_9E4E43: ILdRf arg_18
  loc_9E4E46: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E4E4B: FFree1Var var_B4 = ""
  loc_9E4E4E: Branch loc_9E4ECB
  loc_9E4E51: FLdFPR8 var_CC
  loc_9E4E54: LitI2_Byte 0
  loc_9E4E56: CR8I2
  loc_9E4E57: LtR8
  loc_9E4E58: BranchF loc_9E4E91
  loc_9E4E5B: LitI2_Byte 0
  loc_9E4E5D: LitVar_Missing var_B4
  loc_9E4E60: LitI2_Byte 0
  loc_9E4E62: LitVarStr var_A4, vbNullString
  loc_9E4E67: PopAdLdVar
  loc_9E4E68: ILdRf arg_14
  loc_9E4E6B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E4E70: FFree1Var var_B4 = ""
  loc_9E4E73: LitI2_Byte 0
  loc_9E4E75: LitVar_Missing var_B4
  loc_9E4E78: LitI2_Byte &HFF
  loc_9E4E7A: FLdFPR8 var_94
  loc_9E4E7D: FnAbsR4
  loc_9E4E7E: CVarR8
  loc_9E4E82: PopAdLdVar
  loc_9E4E83: ILdRf arg_18
  loc_9E4E86: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E4E8B: FFree1Var var_B4 = ""
  loc_9E4E8E: Branch loc_9E4ECB
  loc_9E4E91: FLdFPR8 var_CC
  loc_9E4E94: LitI2_Byte 0
  loc_9E4E96: CR8I2
  loc_9E4E97: EqR4
  loc_9E4E98: BranchF loc_9E4ECB
  loc_9E4E9B: LitI2_Byte 0
  loc_9E4E9D: LitVar_Missing var_B4
  loc_9E4EA0: LitI2_Byte 0
  loc_9E4EA2: LitVarStr var_A4, vbNullString
  loc_9E4EA7: PopAdLdVar
  loc_9E4EA8: ILdRf arg_14
  loc_9E4EAB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E4EB0: FFree1Var var_B4 = ""
  loc_9E4EB3: LitI2_Byte 0
  loc_9E4EB5: LitVar_Missing var_B4
  loc_9E4EB8: LitI2_Byte 0
  loc_9E4EBA: LitVarStr var_A4, vbNullString
  loc_9E4EBF: PopAdLdVar
  loc_9E4EC0: ILdRf arg_18
  loc_9E4EC3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E4EC8: FFree1Var var_B4 = ""
  loc_9E4ECB: ExitProcHresult
End Function

Private Function Proc_167_29_B33610() 'B33610
  'Data Table: 48F5A0
  loc_B32C74: LitVarStr var_94, "<html>"
  loc_B32C79: PopAdLdVar
  loc_B32C7A: FLdPr Me
  loc_B32C7D: MemLdRfVar from_stack_1.htmFile
  loc_B32C80: LdPrVar
  loc_B32C82: LateMemCall
  loc_B32C88: LitVarStr var_94, "<head>"
  loc_B32C8D: PopAdLdVar
  loc_B32C8E: FLdPr Me
  loc_B32C91: MemLdRfVar from_stack_1.htmFile
  loc_B32C94: LdPrVar
  loc_B32C96: LateMemCall
  loc_B32C9C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B32CA1: PopAdLdVar
  loc_B32CA2: FLdPr Me
  loc_B32CA5: MemLdRfVar from_stack_1.htmFile
  loc_B32CA8: LdPrVar
  loc_B32CAA: LateMemCall
  loc_B32CB0: LitStr "<title>"
  loc_B32CB3: FLdRfVar var_A8
  loc_B32CB6: FLdPr Me
  loc_B32CB9:  = Me.Caption
  loc_B32CBE: ILdRf var_A8
  loc_B32CC1: ConcatStr
  loc_B32CC2: FStStrNoPop var_AC
  loc_B32CC5: LitStr "</title>"
  loc_B32CC8: ConcatStr
  loc_B32CC9: CVarStr var_BC
  loc_B32CCC: PopAdLdVar
  loc_B32CCD: FLdPr Me
  loc_B32CD0: MemLdRfVar from_stack_1.htmFile
  loc_B32CD3: LdPrVar
  loc_B32CD5: LateMemCall
  loc_B32CDB: FFreeStr var_A8 = ""
  loc_B32CE2: FFree1Var var_BC = ""
  loc_B32CE5: LitVarStr var_94, "<style type=""text/css"">"
  loc_B32CEA: PopAdLdVar
  loc_B32CEB: FLdPr Me
  loc_B32CEE: MemLdRfVar from_stack_1.htmFile
  loc_B32CF1: LdPrVar
  loc_B32CF3: LateMemCall
  loc_B32CF9: LitVarStr var_94, ".Titulo1 {"
  loc_B32CFE: PopAdLdVar
  loc_B32CFF: FLdPr Me
  loc_B32D02: MemLdRfVar from_stack_1.htmFile
  loc_B32D05: LdPrVar
  loc_B32D07: LateMemCall
  loc_B32D0D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B32D12: PopAdLdVar
  loc_B32D13: FLdPr Me
  loc_B32D16: MemLdRfVar from_stack_1.htmFile
  loc_B32D19: LdPrVar
  loc_B32D1B: LateMemCall
  loc_B32D21: LitVarStr var_94, " font-size: 16px;"
  loc_B32D26: PopAdLdVar
  loc_B32D27: FLdPr Me
  loc_B32D2A: MemLdRfVar from_stack_1.htmFile
  loc_B32D2D: LdPrVar
  loc_B32D2F: LateMemCall
  loc_B32D35: LitVarStr var_94, " font-weight: bold;"
  loc_B32D3A: PopAdLdVar
  loc_B32D3B: FLdPr Me
  loc_B32D3E: MemLdRfVar from_stack_1.htmFile
  loc_B32D41: LdPrVar
  loc_B32D43: LateMemCall
  loc_B32D49: LitVarStr var_94, "}"
  loc_B32D4E: PopAdLdVar
  loc_B32D4F: FLdPr Me
  loc_B32D52: MemLdRfVar from_stack_1.htmFile
  loc_B32D55: LdPrVar
  loc_B32D57: LateMemCall
  loc_B32D5D: LitVarStr var_94, ".Titulo2 {"
  loc_B32D62: PopAdLdVar
  loc_B32D63: FLdPr Me
  loc_B32D66: MemLdRfVar from_stack_1.htmFile
  loc_B32D69: LdPrVar
  loc_B32D6B: LateMemCall
  loc_B32D71: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B32D76: PopAdLdVar
  loc_B32D77: FLdPr Me
  loc_B32D7A: MemLdRfVar from_stack_1.htmFile
  loc_B32D7D: LdPrVar
  loc_B32D7F: LateMemCall
  loc_B32D85: LitVarStr var_94, " font-size: 14px;"
  loc_B32D8A: PopAdLdVar
  loc_B32D8B: FLdPr Me
  loc_B32D8E: MemLdRfVar from_stack_1.htmFile
  loc_B32D91: LdPrVar
  loc_B32D93: LateMemCall
  loc_B32D99: LitVarStr var_94, " font-weight: bold;"
  loc_B32D9E: PopAdLdVar
  loc_B32D9F: FLdPr Me
  loc_B32DA2: MemLdRfVar from_stack_1.htmFile
  loc_B32DA5: LdPrVar
  loc_B32DA7: LateMemCall
  loc_B32DAD: LitVarStr var_94, "}"
  loc_B32DB2: PopAdLdVar
  loc_B32DB3: FLdPr Me
  loc_B32DB6: MemLdRfVar from_stack_1.htmFile
  loc_B32DB9: LdPrVar
  loc_B32DBB: LateMemCall
  loc_B32DC1: LitVarStr var_94, ".Normal {"
  loc_B32DC6: PopAdLdVar
  loc_B32DC7: FLdPr Me
  loc_B32DCA: MemLdRfVar from_stack_1.htmFile
  loc_B32DCD: LdPrVar
  loc_B32DCF: LateMemCall
  loc_B32DD5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B32DDA: PopAdLdVar
  loc_B32DDB: FLdPr Me
  loc_B32DDE: MemLdRfVar from_stack_1.htmFile
  loc_B32DE1: LdPrVar
  loc_B32DE3: LateMemCall
  loc_B32DE9: LitVarStr var_94, " font-size: 12px;"
  loc_B32DEE: PopAdLdVar
  loc_B32DEF: FLdPr Me
  loc_B32DF2: MemLdRfVar from_stack_1.htmFile
  loc_B32DF5: LdPrVar
  loc_B32DF7: LateMemCall
  loc_B32DFD: LitVarStr var_94, " font-style: normal;"
  loc_B32E02: PopAdLdVar
  loc_B32E03: FLdPr Me
  loc_B32E06: MemLdRfVar from_stack_1.htmFile
  loc_B32E09: LdPrVar
  loc_B32E0B: LateMemCall
  loc_B32E11: LitVarStr var_94, " font-weight: normal;"
  loc_B32E16: PopAdLdVar
  loc_B32E17: FLdPr Me
  loc_B32E1A: MemLdRfVar from_stack_1.htmFile
  loc_B32E1D: LdPrVar
  loc_B32E1F: LateMemCall
  loc_B32E25: LitVarStr var_94, " font-variant: normal;"
  loc_B32E2A: PopAdLdVar
  loc_B32E2B: FLdPr Me
  loc_B32E2E: MemLdRfVar from_stack_1.htmFile
  loc_B32E31: LdPrVar
  loc_B32E33: LateMemCall
  loc_B32E39: LitVarStr var_94, "}"
  loc_B32E3E: PopAdLdVar
  loc_B32E3F: FLdPr Me
  loc_B32E42: MemLdRfVar from_stack_1.htmFile
  loc_B32E45: LdPrVar
  loc_B32E47: LateMemCall
  loc_B32E4D: LitVarStr var_94, ".Encabezado {"
  loc_B32E52: PopAdLdVar
  loc_B32E53: FLdPr Me
  loc_B32E56: MemLdRfVar from_stack_1.htmFile
  loc_B32E59: LdPrVar
  loc_B32E5B: LateMemCall
  loc_B32E61: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B32E66: PopAdLdVar
  loc_B32E67: FLdPr Me
  loc_B32E6A: MemLdRfVar from_stack_1.htmFile
  loc_B32E6D: LdPrVar
  loc_B32E6F: LateMemCall
  loc_B32E75: LitVarStr var_94, " font-size: 11px;"
  loc_B32E7A: PopAdLdVar
  loc_B32E7B: FLdPr Me
  loc_B32E7E: MemLdRfVar from_stack_1.htmFile
  loc_B32E81: LdPrVar
  loc_B32E83: LateMemCall
  loc_B32E89: LitVarStr var_94, " font-weight: bold;"
  loc_B32E8E: PopAdLdVar
  loc_B32E8F: FLdPr Me
  loc_B32E92: MemLdRfVar from_stack_1.htmFile
  loc_B32E95: LdPrVar
  loc_B32E97: LateMemCall
  loc_B32E9D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B32EA2: PopAdLdVar
  loc_B32EA3: FLdPr Me
  loc_B32EA6: MemLdRfVar from_stack_1.htmFile
  loc_B32EA9: LdPrVar
  loc_B32EAB: LateMemCall
  loc_B32EB1: LitVarStr var_94, " vertical-align: middle;"
  loc_B32EB6: PopAdLdVar
  loc_B32EB7: FLdPr Me
  loc_B32EBA: MemLdRfVar from_stack_1.htmFile
  loc_B32EBD: LdPrVar
  loc_B32EBF: LateMemCall
  loc_B32EC5: LitVarStr var_94, " text-align:center;"
  loc_B32ECA: PopAdLdVar
  loc_B32ECB: FLdPr Me
  loc_B32ECE: MemLdRfVar from_stack_1.htmFile
  loc_B32ED1: LdPrVar
  loc_B32ED3: LateMemCall
  loc_B32ED9: LitVarStr var_94, "}"
  loc_B32EDE: PopAdLdVar
  loc_B32EDF: FLdPr Me
  loc_B32EE2: MemLdRfVar from_stack_1.htmFile
  loc_B32EE5: LdPrVar
  loc_B32EE7: LateMemCall
  loc_B32EED: LitVarStr var_94, ".LineaDato {"
  loc_B32EF2: PopAdLdVar
  loc_B32EF3: FLdPr Me
  loc_B32EF6: MemLdRfVar from_stack_1.htmFile
  loc_B32EF9: LdPrVar
  loc_B32EFB: LateMemCall
  loc_B32F01: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B32F06: PopAdLdVar
  loc_B32F07: FLdPr Me
  loc_B32F0A: MemLdRfVar from_stack_1.htmFile
  loc_B32F0D: LdPrVar
  loc_B32F0F: LateMemCall
  loc_B32F15: LitVarStr var_94, " font-size: 9px;"
  loc_B32F1A: PopAdLdVar
  loc_B32F1B: FLdPr Me
  loc_B32F1E: MemLdRfVar from_stack_1.htmFile
  loc_B32F21: LdPrVar
  loc_B32F23: LateMemCall
  loc_B32F29: LitVarStr var_94, " vertical-align: top;"
  loc_B32F2E: PopAdLdVar
  loc_B32F2F: FLdPr Me
  loc_B32F32: MemLdRfVar from_stack_1.htmFile
  loc_B32F35: LdPrVar
  loc_B32F37: LateMemCall
  loc_B32F3D: LitVarStr var_94, "}"
  loc_B32F42: PopAdLdVar
  loc_B32F43: FLdPr Me
  loc_B32F46: MemLdRfVar from_stack_1.htmFile
  loc_B32F49: LdPrVar
  loc_B32F4B: LateMemCall
  loc_B32F51: LitVarStr var_94, ".SubTotales {"
  loc_B32F56: PopAdLdVar
  loc_B32F57: FLdPr Me
  loc_B32F5A: MemLdRfVar from_stack_1.htmFile
  loc_B32F5D: LdPrVar
  loc_B32F5F: LateMemCall
  loc_B32F65: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B32F6A: PopAdLdVar
  loc_B32F6B: FLdPr Me
  loc_B32F6E: MemLdRfVar from_stack_1.htmFile
  loc_B32F71: LdPrVar
  loc_B32F73: LateMemCall
  loc_B32F79: LitVarStr var_94, " font-size: 10px;"
  loc_B32F7E: PopAdLdVar
  loc_B32F7F: FLdPr Me
  loc_B32F82: MemLdRfVar from_stack_1.htmFile
  loc_B32F85: LdPrVar
  loc_B32F87: LateMemCall
  loc_B32F8D: LitVarStr var_94, " font-weight: bold;"
  loc_B32F92: PopAdLdVar
  loc_B32F93: FLdPr Me
  loc_B32F96: MemLdRfVar from_stack_1.htmFile
  loc_B32F99: LdPrVar
  loc_B32F9B: LateMemCall
  loc_B32FA1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B32FA6: PopAdLdVar
  loc_B32FA7: FLdPr Me
  loc_B32FAA: MemLdRfVar from_stack_1.htmFile
  loc_B32FAD: LdPrVar
  loc_B32FAF: LateMemCall
  loc_B32FB5: LitVarStr var_94, "}"
  loc_B32FBA: PopAdLdVar
  loc_B32FBB: FLdPr Me
  loc_B32FBE: MemLdRfVar from_stack_1.htmFile
  loc_B32FC1: LdPrVar
  loc_B32FC3: LateMemCall
  loc_B32FC9: LitVarStr var_94, ".Totales {"
  loc_B32FCE: PopAdLdVar
  loc_B32FCF: FLdPr Me
  loc_B32FD2: MemLdRfVar from_stack_1.htmFile
  loc_B32FD5: LdPrVar
  loc_B32FD7: LateMemCall
  loc_B32FDD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B32FE2: PopAdLdVar
  loc_B32FE3: FLdPr Me
  loc_B32FE6: MemLdRfVar from_stack_1.htmFile
  loc_B32FE9: LdPrVar
  loc_B32FEB: LateMemCall
  loc_B32FF1: LitVarStr var_94, " font-size: 9px;"
  loc_B32FF6: PopAdLdVar
  loc_B32FF7: FLdPr Me
  loc_B32FFA: MemLdRfVar from_stack_1.htmFile
  loc_B32FFD: LdPrVar
  loc_B32FFF: LateMemCall
  loc_B33005: LitVarStr var_94, " font-weight: bold;"
  loc_B3300A: PopAdLdVar
  loc_B3300B: FLdPr Me
  loc_B3300E: MemLdRfVar from_stack_1.htmFile
  loc_B33011: LdPrVar
  loc_B33013: LateMemCall
  loc_B33019: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B3301E: PopAdLdVar
  loc_B3301F: FLdPr Me
  loc_B33022: MemLdRfVar from_stack_1.htmFile
  loc_B33025: LdPrVar
  loc_B33027: LateMemCall
  loc_B3302D: LitVarStr var_94, "}"
  loc_B33032: PopAdLdVar
  loc_B33033: FLdPr Me
  loc_B33036: MemLdRfVar from_stack_1.htmFile
  loc_B33039: LdPrVar
  loc_B3303B: LateMemCall
  loc_B33041: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_B33046: PopAdLdVar
  loc_B33047: FLdPr Me
  loc_B3304A: MemLdRfVar from_stack_1.htmFile
  loc_B3304D: LdPrVar
  loc_B3304F: LateMemCall
  loc_B33055: LitVarStr var_94, "</style>"
  loc_B3305A: PopAdLdVar
  loc_B3305B: FLdPr Me
  loc_B3305E: MemLdRfVar from_stack_1.htmFile
  loc_B33061: LdPrVar
  loc_B33063: LateMemCall
  loc_B33069: LitI4 0
  loc_B3306E: FStStrCopy var_AC
  loc_B33071: FLdRfVar var_AC
  loc_B33074: LitI4 0
  loc_B33079: FStStrCopy var_A8
  loc_B3307C: FLdRfVar var_A8
  loc_B3307F: LitI2_Byte &HFF
  loc_B33081: PopTmpLdAd2 var_BE
  loc_B33084: FLdPr Me
  loc_B33087: MemLdRfVar from_stack_1.htmFile
  loc_B3308A: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_B3308F: FFreeStr var_A8 = ""
  loc_B33096: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B3309B: PopAdLdVar
  loc_B3309C: FLdPr Me
  loc_B3309F: MemLdRfVar from_stack_1.htmFile
  loc_B330A2: LdPrVar
  loc_B330A4: LateMemCall
  loc_B330AA: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B330AF: PopAdLdVar
  loc_B330B0: FLdPr Me
  loc_B330B3: MemLdRfVar from_stack_1.htmFile
  loc_B330B6: LdPrVar
  loc_B330B8: LateMemCall
  loc_B330BE: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_B330C3: PopAdLdVar
  loc_B330C4: FLdPr Me
  loc_B330C7: MemLdRfVar from_stack_1.htmFile
  loc_B330CA: LdPrVar
  loc_B330CC: LateMemCall
  loc_B330D2: FLdPr Me
  loc_B330D5: MemLdI2 bLogos
  loc_B330D8: BranchF loc_B330EF
  loc_B330DB: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_B330E0: PopAdLdVar
  loc_B330E1: FLdPr Me
  loc_B330E4: MemLdRfVar from_stack_1.htmFile
  loc_B330E7: LdPrVar
  loc_B330E9: LateMemCall
  loc_B330EF: LitVarStr var_A4, "    <br><br>"
  loc_B330F4: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B330F9: FStVarCopyObj var_BC
  loc_B330FC: FLdRfVar var_BC
  loc_B330FF: FLdRfVar var_D0
  loc_B33102: ImpAdCallFPR4  = Ucase()
  loc_B33107: FLdRfVar var_D0
  loc_B3310A: ConcatVar var_E0
  loc_B3310E: LitVarStr var_F0, "</p>"
  loc_B33113: ConcatVar var_100
  loc_B33117: PopAdLdVar
  loc_B33118: FLdPr Me
  loc_B3311B: MemLdRfVar from_stack_1.htmFile
  loc_B3311E: LdPrVar
  loc_B33120: LateMemCall
  loc_B33126: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_B33131: LitStr "    <p>"
  loc_B33134: FLdRfVar var_A8
  loc_B33137: FLdPr Me
  loc_B3313A:  = Me.Caption
  loc_B3313F: ILdRf var_A8
  loc_B33142: ConcatStr
  loc_B33143: FStStrNoPop var_AC
  loc_B33146: LitStr "</p></th>"
  loc_B33149: ConcatStr
  loc_B3314A: CVarStr var_BC
  loc_B3314D: PopAdLdVar
  loc_B3314E: FLdPr Me
  loc_B33151: MemLdRfVar from_stack_1.htmFile
  loc_B33154: LdPrVar
  loc_B33156: LateMemCall
  loc_B3315C: FFreeStr var_A8 = ""
  loc_B33163: FFree1Var var_BC = ""
  loc_B33166: LitVarStr var_94, "  </tr>"
  loc_B3316B: PopAdLdVar
  loc_B3316C: FLdPr Me
  loc_B3316F: MemLdRfVar from_stack_1.htmFile
  loc_B33172: LdPrVar
  loc_B33174: LateMemCall
  loc_B3317A: LitVarStr var_94, "  <tr>"
  loc_B3317F: PopAdLdVar
  loc_B33180: FLdPr Me
  loc_B33183: MemLdRfVar from_stack_1.htmFile
  loc_B33186: LdPrVar
  loc_B33188: LateMemCall
  loc_B3318E: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_B33193: PopAdLdVar
  loc_B33194: FLdPr Me
  loc_B33197: MemLdRfVar from_stack_1.htmFile
  loc_B3319A: LdPrVar
  loc_B3319C: LateMemCall
  loc_B331A2: LitVarStr var_94, "  </tr>"
  loc_B331A7: PopAdLdVar
  loc_B331A8: FLdPr Me
  loc_B331AB: MemLdRfVar from_stack_1.htmFile
  loc_B331AE: LdPrVar
  loc_B331B0: LateMemCall
  loc_B331B6: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B331BB: PopAdLdVar
  loc_B331BC: FLdPr Me
  loc_B331BF: MemLdRfVar from_stack_1.htmFile
  loc_B331C2: LdPrVar
  loc_B331C4: LateMemCall
  loc_B331CA: LitStr "    <th align=""left"">Periodo: <span class=""Normal"">"
  loc_B331CD: FLdRfVar var_A8
  loc_B331D0: FLdPr Me
  loc_B331D3: VCallAd Control_ID_cboPeriodo
  loc_B331D6: FStAdFunc var_114
  loc_B331D9: FLdPr var_114
  loc_B331DC:  = Me.Text
  loc_B331E1: ILdRf var_A8
  loc_B331E4: ConcatStr
  loc_B331E5: FStStrNoPop var_AC
  loc_B331E8: LitStr "</span></th>"
  loc_B331EB: ConcatStr
  loc_B331EC: CVarStr var_BC
  loc_B331EF: PopAdLdVar
  loc_B331F0: FLdPr Me
  loc_B331F3: MemLdRfVar from_stack_1.htmFile
  loc_B331F6: LdPrVar
  loc_B331F8: LateMemCall
  loc_B331FE: FFreeStr var_A8 = ""
  loc_B33205: FFree1Ad var_114
  loc_B33208: FFree1Var var_BC = ""
  loc_B3320B: FLdRfVar var_BE
  loc_B3320E: FLdPr Me
  loc_B33211: VCallAd Control_ID_CodiTicuCbo
  loc_B33214: FStAdFunc var_114
  loc_B33217: FLdPr var_114
  loc_B3321A:  = Me.ListIndex
  loc_B3321F: FLdI2 var_BE
  loc_B33222: LitI2_Byte 0
  loc_B33224: GtI2
  loc_B33225: FFree1Ad var_114
  loc_B33228: BranchF loc_B3326F
  loc_B3322B: LitStr "    <th align=""center"">Tipo de Cuenta Contable: <span class=""Normal"">"
  loc_B3322E: FLdRfVar var_A8
  loc_B33231: FLdPr Me
  loc_B33234: VCallAd Control_ID_CodiTicuCbo
  loc_B33237: FStAdFunc var_114
  loc_B3323A: FLdPr var_114
  loc_B3323D:  = Me.Text
  loc_B33242: ILdRf var_A8
  loc_B33245: ConcatStr
  loc_B33246: FStStrNoPop var_AC
  loc_B33249: LitStr "</span></th>"
  loc_B3324C: ConcatStr
  loc_B3324D: CVarStr var_BC
  loc_B33250: PopAdLdVar
  loc_B33251: FLdPr Me
  loc_B33254: MemLdRfVar from_stack_1.htmFile
  loc_B33257: LdPrVar
  loc_B33259: LateMemCall
  loc_B3325F: FFreeStr var_A8 = ""
  loc_B33266: FFree1Ad var_114
  loc_B33269: FFree1Var var_BC = ""
  loc_B3326C: Branch loc_B33283
  loc_B3326F: LitVarStr var_94, "    <th>&nbsp;</th>"
  loc_B33274: PopAdLdVar
  loc_B33275: FLdPr Me
  loc_B33278: MemLdRfVar from_stack_1.htmFile
  loc_B3327B: LdPrVar
  loc_B3327D: LateMemCall
  loc_B33283: LitStr "    <th align=""right"">Mes: <span class=""Normal"">"
  loc_B33286: FLdRfVar var_A8
  loc_B33289: FLdPr Me
  loc_B3328C: VCallAd Control_ID_cboMes
  loc_B3328F: FStAdFunc var_114
  loc_B33292: FLdPr var_114
  loc_B33295:  = Me.Text
  loc_B3329A: ILdRf var_A8
  loc_B3329D: ConcatStr
  loc_B3329E: FStStrNoPop var_AC
  loc_B332A1: LitStr " ("
  loc_B332A4: ConcatStr
  loc_B332A5: FStStrNoPop var_118
  loc_B332A8: FLdPr Me
  loc_B332AB: MemLdStr global_104
  loc_B332AE: ConcatStr
  loc_B332AF: FStStrNoPop var_11C
  loc_B332B2: LitStr ")</span></th>"
  loc_B332B5: ConcatStr
  loc_B332B6: CVarStr var_BC
  loc_B332B9: PopAdLdVar
  loc_B332BA: FLdPr Me
  loc_B332BD: MemLdRfVar from_stack_1.htmFile
  loc_B332C0: LdPrVar
  loc_B332C2: LateMemCall
  loc_B332C8: FFreeStr var_A8 = "": var_AC = "": var_118 = ""
  loc_B332D3: FFree1Ad var_114
  loc_B332D6: FFree1Var var_BC = ""
  loc_B332D9: LitVarStr var_94, "  </tr>"
  loc_B332DE: PopAdLdVar
  loc_B332DF: FLdPr Me
  loc_B332E2: MemLdRfVar from_stack_1.htmFile
  loc_B332E5: LdPrVar
  loc_B332E7: LateMemCall
  loc_B332ED: LitVarStr var_94, "  <tr valign=""top""><th align=""left"" colspan=""3"">"
  loc_B332F2: PopAdLdVar
  loc_B332F3: FLdPr Me
  loc_B332F6: MemLdRfVar from_stack_1.htmFile
  loc_B332F9: LdPrVar
  loc_B332FB: LateMemCall
  loc_B33301: FLdRfVar var_BE
  loc_B33304: FLdPr Me
  loc_B33307: VCallAd Control_ID_chkSoloCajayBancos
  loc_B3330A: FStAdFunc var_114
  loc_B3330D: FLdPr var_114
  loc_B33310:  = Me.Value
  loc_B33315: FLdI2 var_BE
  loc_B33318: CI4UI1
  loc_B33319: LitI4 1
  loc_B3331E: EqI4
  loc_B3331F: FFree1Ad var_114
  loc_B33322: BranchF loc_B3335B
  loc_B33325: LitStr "    <br>"
  loc_B33328: FLdRfVar var_A8
  loc_B3332B: FLdPr Me
  loc_B3332E: VCallAd Control_ID_chkSoloCajayBancos
  loc_B33331: FStAdFunc var_114
  loc_B33334: FLdPr var_114
  loc_B33337:  = Me.Caption
  loc_B3333C: ILdRf var_A8
  loc_B3333F: ConcatStr
  loc_B33340: CVarStr var_BC
  loc_B33343: PopAdLdVar
  loc_B33344: FLdPr Me
  loc_B33347: MemLdRfVar from_stack_1.htmFile
  loc_B3334A: LdPrVar
  loc_B3334C: LateMemCall
  loc_B33352: FFree1Str var_A8
  loc_B33355: FFree1Ad var_114
  loc_B33358: FFree1Var var_BC = ""
  loc_B3335B: FLdRfVar var_BE
  loc_B3335E: FLdPr Me
  loc_B33361: VCallAd Control_ID_chkExcluirManuales
  loc_B33364: FStAdFunc var_114
  loc_B33367: FLdPr var_114
  loc_B3336A:  = Me.Value
  loc_B3336F: FLdI2 var_BE
  loc_B33372: CI4UI1
  loc_B33373: LitI4 1
  loc_B33378: EqI4
  loc_B33379: FFree1Ad var_114
  loc_B3337C: BranchF loc_B333B5
  loc_B3337F: LitStr "    <br>"
  loc_B33382: FLdRfVar var_A8
  loc_B33385: FLdPr Me
  loc_B33388: VCallAd Control_ID_chkExcluirManuales
  loc_B3338B: FStAdFunc var_114
  loc_B3338E: FLdPr var_114
  loc_B33391:  = Me.Caption
  loc_B33396: ILdRf var_A8
  loc_B33399: ConcatStr
  loc_B3339A: CVarStr var_BC
  loc_B3339D: PopAdLdVar
  loc_B3339E: FLdPr Me
  loc_B333A1: MemLdRfVar from_stack_1.htmFile
  loc_B333A4: LdPrVar
  loc_B333A6: LateMemCall
  loc_B333AC: FFree1Str var_A8
  loc_B333AF: FFree1Ad var_114
  loc_B333B2: FFree1Var var_BC = ""
  loc_B333B5: LitVarStr var_94, "  </tr>"
  loc_B333BA: PopAdLdVar
  loc_B333BB: FLdPr Me
  loc_B333BE: MemLdRfVar from_stack_1.htmFile
  loc_B333C1: LdPrVar
  loc_B333C3: LateMemCall
  loc_B333C9: LitVarStr var_94, "</table>"
  loc_B333CE: PopAdLdVar
  loc_B333CF: FLdPr Me
  loc_B333D2: MemLdRfVar from_stack_1.htmFile
  loc_B333D5: LdPrVar
  loc_B333D7: LateMemCall
  loc_B333DD: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B333E2: PopAdLdVar
  loc_B333E3: FLdPr Me
  loc_B333E6: MemLdRfVar from_stack_1.htmFile
  loc_B333E9: LdPrVar
  loc_B333EB: LateMemCall
  loc_B333F1: LitVarStr var_94, "  <THEAD>"
  loc_B333F6: PopAdLdVar
  loc_B333F7: FLdPr Me
  loc_B333FA: MemLdRfVar from_stack_1.htmFile
  loc_B333FD: LdPrVar
  loc_B333FF: LateMemCall
  loc_B33405: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_B3340A: PopAdLdVar
  loc_B3340B: FLdPr Me
  loc_B3340E: MemLdRfVar from_stack_1.htmFile
  loc_B33411: LdPrVar
  loc_B33413: LateMemCall
  loc_B33419: LitVarStr var_94, "    <th rowspan=""3"" align=""center"">Cuenta Contable </th>"
  loc_B3341E: PopAdLdVar
  loc_B3341F: FLdPr Me
  loc_B33422: MemLdRfVar from_stack_1.htmFile
  loc_B33425: LdPrVar
  loc_B33427: LateMemCall
  loc_B3342D: LitVarStr var_94, "    <th colspan=""4"" align=""center"">Movimientos al inicio </th>"
  loc_B33432: PopAdLdVar
  loc_B33433: FLdPr Me
  loc_B33436: MemLdRfVar from_stack_1.htmFile
  loc_B33439: LdPrVar
  loc_B3343B: LateMemCall
  loc_B33441: LitVarStr var_94, "    <th colspan=""4"" align=""center"">Movimientos del periodo </th>"
  loc_B33446: PopAdLdVar
  loc_B33447: FLdPr Me
  loc_B3344A: MemLdRfVar from_stack_1.htmFile
  loc_B3344D: LdPrVar
  loc_B3344F: LateMemCall
  loc_B33455: LitVarStr var_94, "    <th colspan=""4"" align=""center"">Movimientos al final </th>"
  loc_B3345A: PopAdLdVar
  loc_B3345B: FLdPr Me
  loc_B3345E: MemLdRfVar from_stack_1.htmFile
  loc_B33461: LdPrVar
  loc_B33463: LateMemCall
  loc_B33469: LitVarStr var_94, "  </tr>"
  loc_B3346E: PopAdLdVar
  loc_B3346F: FLdPr Me
  loc_B33472: MemLdRfVar from_stack_1.htmFile
  loc_B33475: LdPrVar
  loc_B33477: LateMemCall
  loc_B3347D: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_B33482: PopAdLdVar
  loc_B33483: FLdPr Me
  loc_B33486: MemLdRfVar from_stack_1.htmFile
  loc_B33489: LdPrVar
  loc_B3348B: LateMemCall
  loc_B33491: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Debe</th>"
  loc_B33496: PopAdLdVar
  loc_B33497: FLdPr Me
  loc_B3349A: MemLdRfVar from_stack_1.htmFile
  loc_B3349D: LdPrVar
  loc_B3349F: LateMemCall
  loc_B334A5: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Haber</th>"
  loc_B334AA: PopAdLdVar
  loc_B334AB: FLdPr Me
  loc_B334AE: MemLdRfVar from_stack_1.htmFile
  loc_B334B1: LdPrVar
  loc_B334B3: LateMemCall
  loc_B334B9: LitVarStr var_94, "    <th colspan=""2"" align=""center"">Saldo</th>"
  loc_B334BE: PopAdLdVar
  loc_B334BF: FLdPr Me
  loc_B334C2: MemLdRfVar from_stack_1.htmFile
  loc_B334C5: LdPrVar
  loc_B334C7: LateMemCall
  loc_B334CD: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Debe</th>"
  loc_B334D2: PopAdLdVar
  loc_B334D3: FLdPr Me
  loc_B334D6: MemLdRfVar from_stack_1.htmFile
  loc_B334D9: LdPrVar
  loc_B334DB: LateMemCall
  loc_B334E1: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Haber</th>"
  loc_B334E6: PopAdLdVar
  loc_B334E7: FLdPr Me
  loc_B334EA: MemLdRfVar from_stack_1.htmFile
  loc_B334ED: LdPrVar
  loc_B334EF: LateMemCall
  loc_B334F5: LitVarStr var_94, "    <th colspan=""2"" align=""center"">Saldo</th>"
  loc_B334FA: PopAdLdVar
  loc_B334FB: FLdPr Me
  loc_B334FE: MemLdRfVar from_stack_1.htmFile
  loc_B33501: LdPrVar
  loc_B33503: LateMemCall
  loc_B33509: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Debe</th>"
  loc_B3350E: PopAdLdVar
  loc_B3350F: FLdPr Me
  loc_B33512: MemLdRfVar from_stack_1.htmFile
  loc_B33515: LdPrVar
  loc_B33517: LateMemCall
  loc_B3351D: LitVarStr var_94, "    <th rowspan=""2"" align=""center"">Haber</th>"
  loc_B33522: PopAdLdVar
  loc_B33523: FLdPr Me
  loc_B33526: MemLdRfVar from_stack_1.htmFile
  loc_B33529: LdPrVar
  loc_B3352B: LateMemCall
  loc_B33531: LitVarStr var_94, "    <th colspan=""2"" align=""center"">Saldo</th>"
  loc_B33536: PopAdLdVar
  loc_B33537: FLdPr Me
  loc_B3353A: MemLdRfVar from_stack_1.htmFile
  loc_B3353D: LdPrVar
  loc_B3353F: LateMemCall
  loc_B33545: LitVarStr var_94, "  </tr>"
  loc_B3354A: PopAdLdVar
  loc_B3354B: FLdPr Me
  loc_B3354E: MemLdRfVar from_stack_1.htmFile
  loc_B33551: LdPrVar
  loc_B33553: LateMemCall
  loc_B33559: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_B3355E: PopAdLdVar
  loc_B3355F: FLdPr Me
  loc_B33562: MemLdRfVar from_stack_1.htmFile
  loc_B33565: LdPrVar
  loc_B33567: LateMemCall
  loc_B3356D: LitVarStr var_94, "    <th align=""center"">Deudor</th>"
  loc_B33572: PopAdLdVar
  loc_B33573: FLdPr Me
  loc_B33576: MemLdRfVar from_stack_1.htmFile
  loc_B33579: LdPrVar
  loc_B3357B: LateMemCall
  loc_B33581: LitVarStr var_94, "    <th align=""center"">Acreedor</th>"
  loc_B33586: PopAdLdVar
  loc_B33587: FLdPr Me
  loc_B3358A: MemLdRfVar from_stack_1.htmFile
  loc_B3358D: LdPrVar
  loc_B3358F: LateMemCall
  loc_B33595: LitVarStr var_94, "    <th align=""center"">Deudor</th>"
  loc_B3359A: PopAdLdVar
  loc_B3359B: FLdPr Me
  loc_B3359E: MemLdRfVar from_stack_1.htmFile
  loc_B335A1: LdPrVar
  loc_B335A3: LateMemCall
  loc_B335A9: LitVarStr var_94, "    <th align=""center"">Acreedor</th>"
  loc_B335AE: PopAdLdVar
  loc_B335AF: FLdPr Me
  loc_B335B2: MemLdRfVar from_stack_1.htmFile
  loc_B335B5: LdPrVar
  loc_B335B7: LateMemCall
  loc_B335BD: LitVarStr var_94, "    <th align=""center"">Deudor</th>"
  loc_B335C2: PopAdLdVar
  loc_B335C3: FLdPr Me
  loc_B335C6: MemLdRfVar from_stack_1.htmFile
  loc_B335C9: LdPrVar
  loc_B335CB: LateMemCall
  loc_B335D1: LitVarStr var_94, "    <th align=""center"">Acreedor</th>"
  loc_B335D6: PopAdLdVar
  loc_B335D7: FLdPr Me
  loc_B335DA: MemLdRfVar from_stack_1.htmFile
  loc_B335DD: LdPrVar
  loc_B335DF: LateMemCall
  loc_B335E5: LitVarStr var_94, "  </tr>"
  loc_B335EA: PopAdLdVar
  loc_B335EB: FLdPr Me
  loc_B335EE: MemLdRfVar from_stack_1.htmFile
  loc_B335F1: LdPrVar
  loc_B335F3: LateMemCall
  loc_B335F9: LitVarStr var_94, "  </THEAD>"
  loc_B335FE: PopAdLdVar
  loc_B335FF: FLdPr Me
  loc_B33602: MemLdRfVar from_stack_1.htmFile
  loc_B33605: LdPrVar
  loc_B33607: LateMemCall
  loc_B3360D: ExitProcHresult
  loc_B3360E: Ary1LdPr
End Function

Private Function Proc_167_30_A06A90() 'A06A90
  'Data Table: 48F5A0
  loc_A0691C: LitVarStr var_94, "</table>"
  loc_A06921: PopAdLdVar
  loc_A06922: FLdPr Me
  loc_A06925: MemLdRfVar from_stack_1.htmFile
  loc_A06928: LdPrVar
  loc_A0692A: LateMemCall
  loc_A06930: LitVarStr var_94, "<br>"
  loc_A06935: PopAdLdVar
  loc_A06936: FLdPr Me
  loc_A06939: MemLdRfVar from_stack_1.htmFile
  loc_A0693C: LdPrVar
  loc_A0693E: LateMemCall
  loc_A06944: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A06949: PopAdLdVar
  loc_A0694A: FLdPr Me
  loc_A0694D: MemLdRfVar from_stack_1.htmFile
  loc_A06950: LdPrVar
  loc_A06952: LateMemCall
  loc_A06958: LitVarStr var_94, "  <tr>"
  loc_A0695D: PopAdLdVar
  loc_A0695E: FLdPr Me
  loc_A06961: MemLdRfVar from_stack_1.htmFile
  loc_A06964: LdPrVar
  loc_A06966: LateMemCall
  loc_A0696C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A06971: PopAdLdVar
  loc_A06972: FLdPr Me
  loc_A06975: MemLdRfVar from_stack_1.htmFile
  loc_A06978: LdPrVar
  loc_A0697A: LateMemCall
  loc_A06980: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A06985: PopAdLdVar
  loc_A06986: FLdPr Me
  loc_A06989: MemLdRfVar from_stack_1.htmFile
  loc_A0698C: LdPrVar
  loc_A0698E: LateMemCall
  loc_A06994: FLdPr Me
  loc_A06997: MemLdI2 bLogos
  loc_A0699A: BranchF loc_A06A01
  loc_A0699D: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A069A2: PopAdLdVar
  loc_A069A3: FLdPr Me
  loc_A069A6: MemLdRfVar from_stack_1.htmFile
  loc_A069A9: LdPrVar
  loc_A069AB: LateMemCall
  loc_A069B1: LitVarStr var_94, "          <map name=""Map"">"
  loc_A069B6: PopAdLdVar
  loc_A069B7: FLdPr Me
  loc_A069BA: MemLdRfVar from_stack_1.htmFile
  loc_A069BD: LdPrVar
  loc_A069BF: LateMemCall
  loc_A069C5: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A069CA: PopAdLdVar
  loc_A069CB: FLdPr Me
  loc_A069CE: MemLdRfVar from_stack_1.htmFile
  loc_A069D1: LdPrVar
  loc_A069D3: LateMemCall
  loc_A069D9: LitVarStr var_94, "          </map>"
  loc_A069DE: PopAdLdVar
  loc_A069DF: FLdPr Me
  loc_A069E2: MemLdRfVar from_stack_1.htmFile
  loc_A069E5: LdPrVar
  loc_A069E7: LateMemCall
  loc_A069ED: LitVarStr var_94, "    </div></th>"
  loc_A069F2: PopAdLdVar
  loc_A069F3: FLdPr Me
  loc_A069F6: MemLdRfVar from_stack_1.htmFile
  loc_A069F9: LdPrVar
  loc_A069FB: LateMemCall
  loc_A06A01: LitVarStr var_94, "  </tr>"
  loc_A06A06: PopAdLdVar
  loc_A06A07: FLdPr Me
  loc_A06A0A: MemLdRfVar from_stack_1.htmFile
  loc_A06A0D: LdPrVar
  loc_A06A0F: LateMemCall
  loc_A06A15: LitVarStr var_94, "  <tr>"
  loc_A06A1A: PopAdLdVar
  loc_A06A1B: FLdPr Me
  loc_A06A1E: MemLdRfVar from_stack_1.htmFile
  loc_A06A21: LdPrVar
  loc_A06A23: LateMemCall
  loc_A06A29: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A06A2E: PopAdLdVar
  loc_A06A2F: FLdPr Me
  loc_A06A32: MemLdRfVar from_stack_1.htmFile
  loc_A06A35: LdPrVar
  loc_A06A37: LateMemCall
  loc_A06A3D: LitVarStr var_94, "  </tr>"
  loc_A06A42: PopAdLdVar
  loc_A06A43: FLdPr Me
  loc_A06A46: MemLdRfVar from_stack_1.htmFile
  loc_A06A49: LdPrVar
  loc_A06A4B: LateMemCall
  loc_A06A51: LitVarStr var_94, "</table>"
  loc_A06A56: PopAdLdVar
  loc_A06A57: FLdPr Me
  loc_A06A5A: MemLdRfVar from_stack_1.htmFile
  loc_A06A5D: LdPrVar
  loc_A06A5F: LateMemCall
  loc_A06A65: LitVarStr var_94, "</body>"
  loc_A06A6A: PopAdLdVar
  loc_A06A6B: FLdPr Me
  loc_A06A6E: MemLdRfVar from_stack_1.htmFile
  loc_A06A71: LdPrVar
  loc_A06A73: LateMemCall
  loc_A06A79: LitVarStr var_94, "</html>"
  loc_A06A7E: PopAdLdVar
  loc_A06A7F: FLdPr Me
  loc_A06A82: MemLdRfVar from_stack_1.htmFile
  loc_A06A85: LdPrVar
  loc_A06A87: LateMemCall
  loc_A06A8D: ExitProcHresult
End Function
