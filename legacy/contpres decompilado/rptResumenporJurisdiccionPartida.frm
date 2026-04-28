VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumenporJurisdiccionPartida
  Caption = "Resumen por Jurisdicción - Partida"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumenporJurisdiccionPartida.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8865
  ClientHeight = 4935
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4680
    Width = 8865
    Height = 255
    TabIndex = 26
    OleObjectBlob = "rptResumenporJurisdiccionPartida.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7920
    Top = 3720
    Width = 735
    Height = 615
    TabIndex = 24
    Cancel = -1  'True
    Picture = "rptResumenporJurisdiccionPartida.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumenporJurisdiccionPartida.frx":0B9C
    Left = 5160
    Top = 480
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3480
    Width = 4455
    Height = 1095
    TabIndex = 20
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 23
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3480
    Width = 3015
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 3375
    TabIndex = 0
    Begin VB.CheckBox chkNotCodiPart
      Caption = "No comienzan con"
      Left = 1440
      Top = 2880
      Width = 1815
      Height = 255
      TabIndex = 16
    End
    Begin VB.ComboBox cboCodiOrga
      Style = 2
      ForeColor = &HFF0000&
      Left = 1455
      Top = 1920
      Width = 3615
      Height = 315
      TabIndex = 11
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 2880
      Top = 2400
      Width = 375
      Height = 375
      TabIndex = 14
      Picture = "rptResumenporJurisdiccionPartida.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdDesde
      Left = 2610
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptResumenporJurisdiccionPartida.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdHasta
      Left = 2610
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptResumenporJurisdiccionPartida.frx":123C
      Style = 1
      CausesValidation = 0   'False
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
      Left = 1455
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1455
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptResumenporJurisdiccionPartida.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1455
      Top = 1320
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptResumenporJurisdiccionPartida.frx":1806
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1455
      Top = 2400
      Width = 1335
      Height = 285
      TabIndex = 13
      OleObjectBlob = "rptResumenporJurisdiccionPartida.frx":188E
    End
    Begin VB.Label Label2
      Caption = "Jurisdicción:"
      Left = 450
      Top = 1920
      Width = 870
      Height = 195
      TabIndex = 10
      AutoSize = -1  'True
    End
    Begin VB.Label CodiPartLbl
      Left = 3360
      Top = 2400
      Width = 5055
      Height = 375
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 780
      Top = 2400
      Width = 540
      Height = 195
      TabIndex = 12
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 810
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 855
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 735
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      Alignment = 1 'Right Justify
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 3720
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 25
    OleObjectBlob = "rptResumenporJurisdiccionPartida.frx":18EE
  End
End

Attribute VB_Name = "rptResumenporJurisdiccionPartida"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0060A908
  bStruc(52) As Byte ' String fields: 12
End Type


Private Sub cmdHasta_Click() '980250
  'Data Table: 4B854C
  loc_98021C: LitVar_Missing var_A4
  loc_98021F: PopAdLdVar
  loc_980220: LitVarI4
  loc_980228: PopAdLdVar
  loc_980229: ImpAdLdRf MemVar_C3D9A8
  loc_98022C: NewIfNullPr frmCalendario
  loc_98022F: frmCalendario.Show from_stack_1, from_stack_2
  loc_980234: ImpAdLdRf MemVar_C3D038
  loc_980237: CDargRef
  loc_98023B: FLdPr Me
  loc_98023E: VCallAd Control_ID_mskHasta
  loc_980241: FStAdFunc var_A8
  loc_980244: FLdPr var_A8
  loc_980247: LateIdSt
  loc_98024C: FFree1Ad var_A8
  loc_98024F: ExitProcHresult
End Sub

Private Sub cmdCodiPart_Click() 'A089F4
  'Data Table: 4B854C
  loc_A08898: FLdRfVar var_8C
  loc_A0889B: FLdPr Me
  loc_A0889E: VCallAd Control_ID_cboPeriodo
  loc_A088A1: FStAdFunc var_88
  loc_A088A4: FLdPr var_88
  loc_A088A7:  = Me.Text
  loc_A088AC: ILdRf var_8C
  loc_A088AF: CI2Str
  loc_A088B1: ImpAdLdRf MemVar_C3D724
  loc_A088B4: NewIfNullPr bscPartida
  loc_A088B7: Call bscPartida.iPeriInfoPut(from_stack_1v)
  loc_A088BC: FFree1Str var_8C
  loc_A088BF: FFree1Ad var_88
  loc_A088C2: LitNothing
  loc_A088C4: CastAd
  loc_A088C7: FStAdFuncNoPop
  loc_A088CA: ImpAdLdRf MemVar_C3D724
  loc_A088CD: NewIfNullPr bscPartida
  loc_A088D0: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_A088D5: FFree1Ad var_88
  loc_A088D8: LitVar_Missing var_AC
  loc_A088DB: PopAdLdVar
  loc_A088DC: LitVarI4
  loc_A088E4: PopAdLdVar
  loc_A088E5: ImpAdLdRf MemVar_C3D724
  loc_A088E8: NewIfNullPr bscPartida
  loc_A088EB: bscPartida.Show from_stack_1, from_stack_2
  loc_A088F0: FLdRfVar var_B0
  loc_A088F3: FLdRfVar var_88
  loc_A088F6: ImpAdLdRf MemVar_C3D724
  loc_A088F9: NewIfNullPr bscPartida
  loc_A088FC: from_stack_1v = bscPartida.global_4332396Get()
  loc_A08901: FLdPr var_88
  loc_A08904: from_stack_1 = clsbase.RecordCount
  loc_A08909: ILdRf var_B0
  loc_A0890C: LitI4 0
  loc_A08911: GtI4
  loc_A08912: FFree1Ad var_88
  loc_A08915: BranchF loc_A089F0
  loc_A08918: FLdRfVar var_CC
  loc_A0891B: FLdRfVar var_BC
  loc_A0891E: LitVarStr var_9C, "CodiPart"
  loc_A08923: PopAdLdVar
  loc_A08924: FLdRfVar var_B8
  loc_A08927: FLdRfVar var_B4
  loc_A0892A: FLdRfVar var_88
  loc_A0892D: ImpAdLdRf MemVar_C3D724
  loc_A08930: NewIfNullPr bscPartida
  loc_A08933: from_stack_1v = bscPartida.global_4332396Get()
  loc_A08938: FLdPr var_88
  loc_A0893B: from_stack_1v = clsbase.RsFrmGet()
  loc_A08940: FLdPr var_B4
  loc_A08943:  = Me.Fields
  loc_A08948: FLdPr var_B8
  loc_A0894B: from_stack_2 = Me.Item(from_stack_1)
  loc_A08950: FLdPr var_BC
  loc_A08953:  = Me.Value
  loc_A08958: FLdRfVar var_CC
  loc_A0895B: CStrVarTmp
  loc_A0895C: CVarStr var_DC
  loc_A0895F: PopAdLdVar
  loc_A08960: FLdPr Me
  loc_A08963: VCallAd Control_ID_CodiPartMsk
  loc_A08966: FStAdFunc var_E0
  loc_A08969: FLdPr var_E0
  loc_A0896C: LateIdSt
  loc_A08971: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A0897E: FFreeVar var_CC = ""
  loc_A08985: FLdRfVar var_CC
  loc_A08988: FLdRfVar var_BC
  loc_A0898B: LitVarStr var_9C, "DetaPart"
  loc_A08990: PopAdLdVar
  loc_A08991: FLdRfVar var_B8
  loc_A08994: FLdRfVar var_B4
  loc_A08997: FLdRfVar var_88
  loc_A0899A: ImpAdLdRf MemVar_C3D724
  loc_A0899D: NewIfNullPr bscPartida
  loc_A089A0: from_stack_1v = bscPartida.global_4332396Get()
  loc_A089A5: FLdPr var_88
  loc_A089A8: from_stack_1v = clsbase.RsFrmGet()
  loc_A089AD: FLdPr var_B4
  loc_A089B0:  = Me.Fields
  loc_A089B5: FLdPr var_B8
  loc_A089B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A089BD: FLdPr var_BC
  loc_A089C0:  = Me.Value
  loc_A089C5: FLdRfVar var_CC
  loc_A089C8: CStrVarTmp
  loc_A089C9: FStStrNoPop var_8C
  loc_A089CC: FLdPr Me
  loc_A089CF: VCallAd Control_ID_CodiPartLbl
  loc_A089D2: FStAdFunc var_E0
  loc_A089D5: FLdPr var_E0
  loc_A089D8: Me.Caption = from_stack_1
  loc_A089DD: FFree1Str var_8C
  loc_A089E0: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A089ED: FFree1Var var_CC = ""
  loc_A089F0: ExitProcHresult
  loc_A089F1: SubCy
End Sub

Private Sub cmdSalir_Click() '979E48
  'Data Table: 4B854C
  loc_979E18: LitVarStr var_94, "Cerrando..."
  loc_979E1D: PopAdLdVar
  loc_979E1E: FLdPr Me
  loc_979E21: VCallAd Control_ID_statusBar
  loc_979E24: FStAdFunc var_A8
  loc_979E27: FLdPr var_A8
  loc_979E2A: LateIdSt
  loc_979E2F: FFree1Ad var_A8
  loc_979E32: ILdRf Me
  loc_979E35: FStAdNoPop
  loc_979E39: ImpAdLdRf MemVar_C44F9C
  loc_979E3C: NewIfNullPr Me
  loc_979E3F: Me.Global.Unload from_stack_1
  loc_979E44: FFree1Ad var_A8
  loc_979E47: ExitProcHresult
End Sub

Private Sub Form_Load() '9D9174
  'Data Table: 4B854C
  loc_9D9080: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9D9085: PopAdLdVar
  loc_9D9086: FLdPr Me
  loc_9D9089: VCallAd Control_ID_CodiPartMsk
  loc_9D908C: FStAdFunc var_A8
  loc_9D908F: FLdPr var_A8
  loc_9D9092: LateIdSt
  loc_9D9097: FFree1Ad var_A8
  loc_9D909A: LitI2_Byte &HFF
  loc_9D909C: ImpAdStI2 MemVar_C3D840
  loc_9D909F: ILdRf Me
  loc_9D90A2: CastAd
  loc_9D90A5: FStAdFunc var_A8
  loc_9D90A8: FLdRfVar var_A8
  loc_9D90AB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D90B0: FFree1Ad var_A8
  loc_9D90B3: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo;"
  loc_9D90B6: FLdRfVar var_AC
  loc_9D90B9: NewIfNullPr clsperiodo
  loc_9D90BC: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D90C1: FLdRfVar var_B0
  loc_9D90C4: FLdRfVar var_AC
  loc_9D90C7: NewIfNullPr clsperiodo
  loc_9D90CA: from_stack_1 = clsperiodo.RecordCount
  loc_9D90CF: ILdRf var_B0
  loc_9D90D2: LitI4 0
  loc_9D90D7: GtI4
  loc_9D90D8: BranchF loc_9D916B
  loc_9D90DB: FLdRfVar var_AC
  loc_9D90DE: NewIfNullPr clsperiodo
  loc_9D90E1: Call clsperiodo.MoveFirst()
  loc_9D90E6: FLdRfVar var_B2
  loc_9D90E9: FLdRfVar var_AC
  loc_9D90EC: NewIfNullPr clsperiodo
  loc_9D90EF: from_stack_1 = clsperiodo.EOF
  loc_9D90F4: FLdI2 var_B2
  loc_9D90F7: NotI4
  loc_9D90F8: BranchF loc_9D916B
  loc_9D90FB: LitVar_Missing var_A4
  loc_9D90FE: PopAdLdVar
  loc_9D90FF: FLdRfVar var_CC
  loc_9D9102: FLdRfVar var_BC
  loc_9D9105: LitVarStr var_94, "PeriInfo"
  loc_9D910A: PopAdLdVar
  loc_9D910B: FLdRfVar var_B8
  loc_9D910E: FLdRfVar var_A8
  loc_9D9111: FLdRfVar var_AC
  loc_9D9114: NewIfNullPr clsperiodo
  loc_9D9117: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D911C: FLdPr var_A8
  loc_9D911F:  = Me.Fields
  loc_9D9124: FLdPr var_B8
  loc_9D9127: from_stack_2 = Me.Item(from_stack_1)
  loc_9D912C: FLdPr var_BC
  loc_9D912F:  = Me.Value
  loc_9D9134: FLdRfVar var_CC
  loc_9D9137: CStrVarTmp
  loc_9D9138: FStStrNoPop var_D0
  loc_9D913B: FLdPr Me
  loc_9D913E: VCallAd Control_ID_cboPeriodo
  loc_9D9141: FStAdFunc var_D4
  loc_9D9144: FLdPr var_D4
  loc_9D9147: Me.AddItem from_stack_1, from_stack_2
  loc_9D914C: FFree1Str var_D0
  loc_9D914F: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9D915A: FFree1Var var_CC = ""
  loc_9D915D: FLdRfVar var_AC
  loc_9D9160: NewIfNullPr clsperiodo
  loc_9D9163: Call clsperiodo.MoveSiguiente()
  loc_9D9168: Branch loc_9D90E6
  loc_9D916B: Call cmdNueva_Click()
  loc_9D9170: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95E658
  'Data Table: 4B854C
  loc_95E640: FLdPr Me
  loc_95E643: VCallAd Control_ID_wbbReporte
  loc_95E646: FStAdFunc var_88
  loc_95E649: FLdRfVar var_88
  loc_95E64C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95E651: FFree1Ad var_88
  loc_95E654: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95EE5C
  'Data Table: 4B854C
  loc_95EE44: ILdRf Me
  loc_95EE47: CastAd
  loc_95EE4A: FStAdFunc var_88
  loc_95EE4D: FLdRfVar var_88
  loc_95EE50: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95EE55: FFree1Ad var_88
  loc_95EE58: ExitProcHresult
  loc_95EE59: ThisVCall Proc_263_1_9AD9D4()
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94EF90
  'Data Table: 4B854C
  loc_94EF7C: FLdPr Me
  loc_94EF7F: VCallAd Control_ID_CodiPartMsk
  loc_94EF82: CVarAd
  loc_94EF86: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EF8B: FFree1Var var_94 = ""
  loc_94EF8E: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A2C50C
  'Data Table: 4B854C
  loc_A2C358: FLdRfVar var_9A
  loc_A2C35B: FLdPr Me
  loc_A2C35E: VCallAd Control_ID_chkNotCodiPart
  loc_A2C361: FStAdFunc var_98
  loc_A2C364: FLdPr var_98
  loc_A2C367:  = Me.Value
  loc_A2C36C: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A2C36F: FLdRfVar var_90
  loc_A2C372: FLdPr Me
  loc_A2C375: VCallAd Control_ID_cboPeriodo
  loc_A2C378: FStAdFunc var_8C
  loc_A2C37B: FLdPr var_8C
  loc_A2C37E:  = Me.Text
  loc_A2C383: ILdRf var_90
  loc_A2C386: ConcatStr
  loc_A2C387: FStStrNoPop var_94
  loc_A2C38A: LitStr " AND CodiPart "
  loc_A2C38D: ConcatStr
  loc_A2C38E: CVarStr var_10C
  loc_A2C391: LitVarStr var_DC, vbNullString
  loc_A2C396: FStVarCopyObj var_EC
  loc_A2C399: FLdRfVar var_EC
  loc_A2C39C: LitVarStr var_BC, "NOT"
  loc_A2C3A1: FStVarCopyObj var_CC
  loc_A2C3A4: FLdRfVar var_CC
  loc_A2C3A7: FLdI2 var_9A
  loc_A2C3AA: CI4UI1
  loc_A2C3AB: LitI4 1
  loc_A2C3B0: EqI4
  loc_A2C3B1: CVarBoolI2 var_AC
  loc_A2C3B5: FLdRfVar var_FC
  loc_A2C3B8: ImpAdCallFPR4  = IIf(, , )
  loc_A2C3BD: FLdRfVar var_FC
  loc_A2C3C0: ConcatVar var_11C
  loc_A2C3C4: LitVarStr var_12C, " LIKE '"
  loc_A2C3C9: ConcatVar var_13C
  loc_A2C3CD: FLdPr Me
  loc_A2C3D0: VCallAd Control_ID_CodiPartMsk
  loc_A2C3D3: FStAdFunc var_140
  loc_A2C3D6: FLdPr var_140
  loc_A2C3D9: LateIdLdVar var_150 DispID_22 0
  loc_A2C3E0: CStrVarTmp
  loc_A2C3E1: CVarStr var_160
  loc_A2C3E4: ConcatVar var_170
  loc_A2C3E8: LitVarStr var_180, Chr(37) & "'"
  loc_A2C3ED: ConcatVar var_190
  loc_A2C3F1: CStrVarVal var_194
  loc_A2C3F5: FLdRfVar var_88
  loc_A2C3F8: NewIfNullPr clspartida
  loc_A2C3FB: Call clspartida.RedefineRS(from_stack_1v)
  loc_A2C400: FFreeStr var_90 = "": var_94 = ""
  loc_A2C409: FFreeAd var_8C = "": var_98 = ""
  loc_A2C412: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_150 = "": var_13C = "": var_160 = "": var_170 = ""
  loc_A2C42B: FLdRfVar var_198
  loc_A2C42E: FLdRfVar var_88
  loc_A2C431: NewIfNullPr clspartida
  loc_A2C434: from_stack_1 = clspartida.RecordCount
  loc_A2C439: ILdRf var_198
  loc_A2C43C: FStR4 var_19C
  loc_A2C43F: ILdRf var_19C
  loc_A2C442: LitI4 0
  loc_A2C447: EqI4
  loc_A2C448: BranchF loc_A2C465
  loc_A2C44B: LitStr "0 registros encontrados"
  loc_A2C44E: FLdPr Me
  loc_A2C451: VCallAd Control_ID_CodiPartLbl
  loc_A2C454: FStAdFunc var_8C
  loc_A2C457: FLdPr var_8C
  loc_A2C45A: Me.Caption = from_stack_1
  loc_A2C45F: FFree1Ad var_8C
  loc_A2C462: Branch loc_A2C50A
  loc_A2C465: ILdRf var_19C
  loc_A2C468: LitI4 1
  loc_A2C46D: EqI4
  loc_A2C46E: BranchF loc_A2C4D2
  loc_A2C471: FLdRfVar var_CC
  loc_A2C474: FLdRfVar var_140
  loc_A2C477: LitVarStr var_AC, "DetaPart"
  loc_A2C47C: PopAdLdVar
  loc_A2C47D: FLdRfVar var_98
  loc_A2C480: FLdRfVar var_8C
  loc_A2C483: FLdRfVar var_88
  loc_A2C486: NewIfNullPr clspartida
  loc_A2C489: from_stack_1v = clspartida.RsFrmGet()
  loc_A2C48E: FLdPr var_8C
  loc_A2C491:  = Me.Fields
  loc_A2C496: FLdPr var_98
  loc_A2C499: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C49E: FLdPr var_140
  loc_A2C4A1:  = Me.Value
  loc_A2C4A6: FLdRfVar var_CC
  loc_A2C4A9: CStrVarTmp
  loc_A2C4AA: FStStrNoPop var_90
  loc_A2C4AD: FLdPr Me
  loc_A2C4B0: VCallAd Control_ID_CodiPartLbl
  loc_A2C4B3: FStAdFunc var_1A0
  loc_A2C4B6: FLdPr var_1A0
  loc_A2C4B9: Me.Caption = from_stack_1
  loc_A2C4BE: FFree1Str var_90
  loc_A2C4C1: FFreeAd var_8C = "": var_98 = "": var_140 = ""
  loc_A2C4CC: FFree1Var var_CC = ""
  loc_A2C4CF: Branch loc_A2C50A
  loc_A2C4D2: FLdRfVar var_198
  loc_A2C4D5: FLdRfVar var_88
  loc_A2C4D8: NewIfNullPr clspartida
  loc_A2C4DB: from_stack_1 = clspartida.RecordCount
  loc_A2C4E0: ILdRf var_198
  loc_A2C4E3: CStrI4
  loc_A2C4E5: FStStrNoPop var_90
  loc_A2C4E8: LitStr " partidas encontradas"
  loc_A2C4EB: ConcatStr
  loc_A2C4EC: FStStrNoPop var_94
  loc_A2C4EF: FLdPr Me
  loc_A2C4F2: VCallAd Control_ID_CodiPartLbl
  loc_A2C4F5: FStAdFunc var_8C
  loc_A2C4F8: FLdPr var_8C
  loc_A2C4FB: Me.Caption = from_stack_1
  loc_A2C500: FFreeStr var_90 = ""
  loc_A2C507: FFree1Ad var_8C
  loc_A2C50A: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95EDC4
  'Data Table: 4B854C
  loc_95EDAC: ILdRf Me
  loc_95EDAF: CastAd
  loc_95EDB2: FStAdFunc var_88
  loc_95EDB5: FLdRfVar var_88
  loc_95EDB8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95EDBD: FFree1Ad var_88
  loc_95EDC0: ExitProcHresult
  loc_95EDC1: ThisVCallAd
End Sub

Private Sub cboPeriodo_Click() 'A5C030
  'Data Table: 4B854C
  loc_A5BD58: FLdRfVar var_8C
  loc_A5BD5B: FLdPr Me
  loc_A5BD5E: VCallAd Control_ID_cboPeriodo
  loc_A5BD61: FStAdFunc var_88
  loc_A5BD64: FLdPr var_88
  loc_A5BD67:  = Me.Text
  loc_A5BD6C: LitI2_Byte 1
  loc_A5BD6E: LitI2_Byte 1
  loc_A5BD70: ILdRf var_8C
  loc_A5BD73: CI2Str
  loc_A5BD75: FLdRfVar var_9C
  loc_A5BD78: ImpAdCallFPR4  = DateSerial(, , )
  loc_A5BD7D: FLdRfVar var_9C
  loc_A5BD80: CStrVarTmp
  loc_A5BD81: CVarStr var_AC
  loc_A5BD84: PopAdLdVar
  loc_A5BD85: FLdPr Me
  loc_A5BD88: VCallAd Control_ID_mskDesde
  loc_A5BD8B: FStAdFunc var_C0
  loc_A5BD8E: FLdPr var_C0
  loc_A5BD91: LateIdSt
  loc_A5BD96: FFree1Str var_8C
  loc_A5BD99: FFreeAd var_88 = ""
  loc_A5BDA0: FFreeVar var_9C = ""
  loc_A5BDA7: FLdRfVar var_8C
  loc_A5BDAA: FLdPr Me
  loc_A5BDAD: VCallAd Control_ID_cboPeriodo
  loc_A5BDB0: FStAdFunc var_88
  loc_A5BDB3: FLdPr var_88
  loc_A5BDB6:  = Me.Text
  loc_A5BDBB: ILdRf var_8C
  loc_A5BDBE: CI2Str
  loc_A5BDC0: ImpAdLdI2 MemVar_C3D064
  loc_A5BDC3: LtI2
  loc_A5BDC4: FFree1Str var_8C
  loc_A5BDC7: FFree1Ad var_88
  loc_A5BDCA: BranchF loc_A5BE1F
  loc_A5BDCD: FLdRfVar var_8C
  loc_A5BDD0: FLdPr Me
  loc_A5BDD3: VCallAd Control_ID_cboPeriodo
  loc_A5BDD6: FStAdFunc var_88
  loc_A5BDD9: FLdPr var_88
  loc_A5BDDC:  = Me.Text
  loc_A5BDE1: LitI2_Byte &H1F
  loc_A5BDE3: LitI2_Byte &HC
  loc_A5BDE5: ILdRf var_8C
  loc_A5BDE8: CI2Str
  loc_A5BDEA: FLdRfVar var_9C
  loc_A5BDED: ImpAdCallFPR4  = DateSerial(, , )
  loc_A5BDF2: FLdRfVar var_9C
  loc_A5BDF5: CStrVarTmp
  loc_A5BDF6: CVarStr var_AC
  loc_A5BDF9: PopAdLdVar
  loc_A5BDFA: FLdPr Me
  loc_A5BDFD: VCallAd Control_ID_mskHasta
  loc_A5BE00: FStAdFunc var_C0
  loc_A5BE03: FLdPr var_C0
  loc_A5BE06: LateIdSt
  loc_A5BE0B: FFree1Str var_8C
  loc_A5BE0E: FFreeAd var_88 = ""
  loc_A5BE15: FFreeVar var_9C = ""
  loc_A5BE1C: Branch loc_A5BE3F
  loc_A5BE1F: ImpAdLdFPR8 MemVar_C3D04C
  loc_A5BE22: CStrDate
  loc_A5BE24: CVarStr var_9C
  loc_A5BE27: PopAdLdVar
  loc_A5BE28: FLdPr Me
  loc_A5BE2B: VCallAd Control_ID_mskHasta
  loc_A5BE2E: FStAdFunc var_88
  loc_A5BE31: FLdPr var_88
  loc_A5BE34: LateIdSt
  loc_A5BE39: FFree1Ad var_88
  loc_A5BE3C: FFree1Var var_9C = ""
  loc_A5BE3F: FLdPr Me
  loc_A5BE42: MemLdRfVar from_stack_1.global_72
  loc_A5BE45: NewIfNullAd
  loc_A5BE48: FStAd var_C4 
  loc_A5BE4C: FLdRfVar var_8C
  loc_A5BE4F: FLdPr Me
  loc_A5BE52: VCallAd Control_ID_cboPeriodo
  loc_A5BE55: FStAdFunc var_88
  loc_A5BE58: FLdPr var_88
  loc_A5BE5B:  = Me.Text
  loc_A5BE60: ILdRf var_8C
  loc_A5BE63: CI2Str
  loc_A5BE65: LitI2 2023
  loc_A5BE68: LeI2
  loc_A5BE69: FFree1Str var_8C
  loc_A5BE6C: FFree1Ad var_88
  loc_A5BE6F: BranchF loc_A5BEC0
  loc_A5BE72: LitStr "SELECT left(CodiOrga,1) CodiOrga, DetaOrga"
  loc_A5BE75: LitStr " FROM infogov.organigrama"
  loc_A5BE78: ConcatStr
  loc_A5BE79: FStStrNoPop var_8C
  loc_A5BE7C: LitStr " WHERE PeriInfo = "
  loc_A5BE7F: ConcatStr
  loc_A5BE80: FStStrNoPop var_CC
  loc_A5BE83: FLdRfVar var_C8
  loc_A5BE86: FLdPr Me
  loc_A5BE89: VCallAd Control_ID_cboPeriodo
  loc_A5BE8C: FStAdFunc var_88
  loc_A5BE8F: FLdPr var_88
  loc_A5BE92:  = Me.Text
  loc_A5BE97: ILdRf var_C8
  loc_A5BE9A: ConcatStr
  loc_A5BE9B: FStStrNoPop var_D0
  loc_A5BE9E: LitStr " GROUP BY LEFT(CodiOrga,1) ORDER BY CodiOrga;"
  loc_A5BEA1: ConcatStr
  loc_A5BEA2: FStStrNoPop var_D4
  loc_A5BEA5: FLdPr var_C4
  loc_A5BEA8: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5BEAD: FFreeStr var_8C = "": var_CC = "": var_C8 = "": var_D0 = ""
  loc_A5BEBA: FFree1Ad var_88
  loc_A5BEBD: Branch loc_A5BF14
  loc_A5BEC0: LitStr "SELECT CodiOrga, DetaOrga"
  loc_A5BEC3: LitStr " FROM infogov.organigrama"
  loc_A5BEC6: ConcatStr
  loc_A5BEC7: FStStrNoPop var_8C
  loc_A5BECA: LitStr " WHERE PeriInfo = "
  loc_A5BECD: ConcatStr
  loc_A5BECE: FStStrNoPop var_CC
  loc_A5BED1: FLdRfVar var_C8
  loc_A5BED4: FLdPr Me
  loc_A5BED7: VCallAd Control_ID_cboPeriodo
  loc_A5BEDA: FStAdFunc var_88
  loc_A5BEDD: FLdPr var_88
  loc_A5BEE0:  = Me.Text
  loc_A5BEE5: ILdRf var_C8
  loc_A5BEE8: ConcatStr
  loc_A5BEE9: FStStrNoPop var_D0
  loc_A5BEEC: LitStr " AND CodiOrga IN (1,2,3)"
  loc_A5BEEF: ConcatStr
  loc_A5BEF0: FStStrNoPop var_D4
  loc_A5BEF3: LitStr " ORDER BY CodiOrga;"
  loc_A5BEF6: ConcatStr
  loc_A5BEF7: FStStrNoPop var_D8
  loc_A5BEFA: FLdPr var_C4
  loc_A5BEFD: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5BF02: FFreeStr var_8C = "": var_CC = "": var_C8 = "": var_D0 = "": var_D4 = ""
  loc_A5BF11: FFree1Ad var_88
  loc_A5BF14: FLdRfVar var_DC
  loc_A5BF17: FLdPr var_C4
  loc_A5BF1A: from_stack_1 = clsbase.RecordCount
  loc_A5BF1F: ILdRf var_DC
  loc_A5BF22: LitI4 0
  loc_A5BF27: GtI4
  loc_A5BF28: BranchF loc_A5C029
  loc_A5BF2B: FLdPr Me
  loc_A5BF2E: VCallAd Control_ID_cboCodiOrga
  loc_A5BF31: FStAdFunc var_88
  loc_A5BF34: FLdPr var_88
  loc_A5BF37: Me.Clear
  loc_A5BF3C: FFree1Ad var_88
  loc_A5BF3F: LitVarI2 var_BC, 0
  loc_A5BF44: PopAdLdVar
  loc_A5BF45: LitStr "TODAS"
  loc_A5BF48: FLdPr Me
  loc_A5BF4B: VCallAd Control_ID_cboCodiOrga
  loc_A5BF4E: FStAdFunc var_88
  loc_A5BF51: FLdPr var_88
  loc_A5BF54: Me.AddItem from_stack_1, from_stack_2
  loc_A5BF59: FFree1Ad var_88
  loc_A5BF5C: FLdPr var_C4
  loc_A5BF5F: Call clsbase.MoveFirst()
  loc_A5BF64: FLdRfVar var_DE
  loc_A5BF67: FLdPr var_C4
  loc_A5BF6A: from_stack_1 = clsbase.EOF
  loc_A5BF6F: FLdI2 var_DE
  loc_A5BF72: NotI4
  loc_A5BF73: BranchF loc_A5C013
  loc_A5BF76: FLdRfVar var_9C
  loc_A5BF79: FLdRfVar var_E4
  loc_A5BF7C: LitVarStr var_BC, "DetaOrga"
  loc_A5BF81: PopAdLdVar
  loc_A5BF82: FLdRfVar var_C0
  loc_A5BF85: FLdRfVar var_88
  loc_A5BF88: FLdPr var_C4
  loc_A5BF8B: from_stack_1v = clsbase.RsFrmGet()
  loc_A5BF90: FLdPr var_88
  loc_A5BF93:  = Me.Fields
  loc_A5BF98: FLdPr var_C0
  loc_A5BF9B: from_stack_2 = Me.Item(from_stack_1)
  loc_A5BFA0: FLdPr var_E4
  loc_A5BFA3:  = Me.Value
  loc_A5BFA8: FLdRfVar var_100
  loc_A5BFAB: LitVarStr var_FC, "CodiOrga"
  loc_A5BFB0: PopAdLdVar
  loc_A5BFB1: FLdRfVar var_EC
  loc_A5BFB4: FLdRfVar var_E8
  loc_A5BFB7: FLdPr var_C4
  loc_A5BFBA: from_stack_1v = clsbase.RsFrmGet()
  loc_A5BFBF: FLdPr var_E8
  loc_A5BFC2:  = Me.Fields
  loc_A5BFC7: FLdPr var_EC
  loc_A5BFCA: from_stack_2 = Me.Item(from_stack_1)
  loc_A5BFCF: FLdZeroAd var_100
  loc_A5BFD2: CVarAd
  loc_A5BFD6: PopAdLdVar
  loc_A5BFD7: FLdRfVar var_9C
  loc_A5BFDA: CStrVarTmp
  loc_A5BFDB: FStStrNoPop var_8C
  loc_A5BFDE: FLdPr Me
  loc_A5BFE1: VCallAd Control_ID_cboCodiOrga
  loc_A5BFE4: FStAdFunc var_104
  loc_A5BFE7: FLdPr var_104
  loc_A5BFEA: Me.AddItem from_stack_1, from_stack_2
  loc_A5BFEF: FFree1Str var_8C
  loc_A5BFF2: FFreeAd var_88 = "": var_C0 = "": var_E8 = "": var_EC = "": var_E4 = ""
  loc_A5C001: FFreeVar var_9C = ""
  loc_A5C008: FLdPr var_C4
  loc_A5C00B: Call clsbase.MoveSiguiente()
  loc_A5C010: Branch loc_A5BF64
  loc_A5C013: LitI2_Byte 0
  loc_A5C015: FLdPr Me
  loc_A5C018: VCallAd Control_ID_cboCodiOrga
  loc_A5C01B: FStAdFunc var_88
  loc_A5C01E: FLdPr var_88
  loc_A5C021: Me.ListIndex = from_stack_1
  loc_A5C026: FFree1Ad var_88
  loc_A5C029: LitNothing
  loc_A5C02B: FStAd var_C4 
  loc_A5C02F: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BBAC
  'Data Table: 4B854C
  loc_98BB74: FLdPr Me
  loc_98BB77: VCallAd Control_ID_statusBar
  loc_98BB7A: FStAdFunc var_88
  loc_98BB7D: FLdPr var_88
  loc_98BB80: LateIdLdVar var_98 DispID_1 0
  loc_98BB87: CStrVarTmp
  loc_98BB88: CVarStr var_A8
  loc_98BB8B: PopAdLdVar
  loc_98BB8C: FLdPr Me
  loc_98BB8F: VCallAd Control_ID_statusBar
  loc_98BB92: FStAdFunc var_BC
  loc_98BB95: FLdPr var_BC
  loc_98BB98: LateIdSt
  loc_98BB9D: FFreeAd var_88 = ""
  loc_98BBA4: FFreeVar var_98 = ""
  loc_98BBAB: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9D1BDC
  'Data Table: 4B854C
  loc_9D1AF4: LitI2_Byte 0
  loc_9D1AF6: FLdPr Me
  loc_9D1AF9: MemStI2 bGenerado
  loc_9D1AFC: LitI2_Byte &HFF
  loc_9D1AFE: FLdPr Me
  loc_9D1B01: MemStI2 bLogos
  loc_9D1B04: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D1B09: ImpAdLdI2 MemVar_C3D064
  loc_9D1B0C: CStrUI1
  loc_9D1B0E: FStStrNoPop var_88
  loc_9D1B11: FLdPr Me
  loc_9D1B14: VCallAd Control_ID_cboPeriodo
  loc_9D1B17: FStAdFunc var_8C
  loc_9D1B1A: FLdPr var_8C
  loc_9D1B1D: Me.Text = from_stack_1
  loc_9D1B22: FFree1Str var_88
  loc_9D1B25: FFree1Ad var_8C
  loc_9D1B28: LitI2_Byte 1
  loc_9D1B2A: LitI2_Byte 1
  loc_9D1B2C: ImpAdLdI2 MemVar_C3D064
  loc_9D1B2F: FLdRfVar var_9C
  loc_9D1B32: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D1B37: FLdRfVar var_9C
  loc_9D1B3A: CStrVarTmp
  loc_9D1B3B: CVarStr var_AC
  loc_9D1B3E: PopAdLdVar
  loc_9D1B3F: FLdPr Me
  loc_9D1B42: VCallAd Control_ID_mskDesde
  loc_9D1B45: FStAdFunc var_8C
  loc_9D1B48: FLdPr var_8C
  loc_9D1B4B: LateIdSt
  loc_9D1B50: FFree1Ad var_8C
  loc_9D1B53: FFreeVar var_9C = ""
  loc_9D1B5A: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D1B5D: CStrDate
  loc_9D1B5F: CVarStr var_9C
  loc_9D1B62: PopAdLdVar
  loc_9D1B63: FLdPr Me
  loc_9D1B66: VCallAd Control_ID_mskHasta
  loc_9D1B69: FStAdFunc var_8C
  loc_9D1B6C: FLdPr var_8C
  loc_9D1B6F: LateIdSt
  loc_9D1B74: FFree1Ad var_8C
  loc_9D1B77: FFree1Var var_9C = ""
  loc_9D1B7A: LitVarStr var_BC, vbNullString
  loc_9D1B7F: PopAdLdVar
  loc_9D1B80: FLdPr Me
  loc_9D1B83: VCallAd Control_ID_CodiPartMsk
  loc_9D1B86: FStAdFunc var_8C
  loc_9D1B89: FLdPr var_8C
  loc_9D1B8C: LateIdSt
  loc_9D1B91: FFree1Ad var_8C
  loc_9D1B94: LitStr vbNullString
  loc_9D1B97: FLdPr Me
  loc_9D1B9A: VCallAd Control_ID_CodiPartLbl
  loc_9D1B9D: FStAdFunc var_8C
  loc_9D1BA0: FLdPr var_8C
  loc_9D1BA3: Me.Caption = from_stack_1
  loc_9D1BA8: FFree1Ad var_8C
  loc_9D1BAB: LitI2_Byte 0
  loc_9D1BAD: FLdPr Me
  loc_9D1BB0: VCallAd Control_ID_cboCodiOrga
  loc_9D1BB3: FStAdFunc var_8C
  loc_9D1BB6: FLdPr var_8C
  loc_9D1BB9: Me.ListIndex = from_stack_1
  loc_9D1BBE: FFree1Ad var_8C
  loc_9D1BC1: Call HabilitarCriterio()
  loc_9D1BC6: ILdRf Me
  loc_9D1BC9: CastAd
  loc_9D1BCC: FStAdFunc var_8C
  loc_9D1BCF: FLdRfVar var_8C
  loc_9D1BD2: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D1BD7: FFree1Ad var_8C
  loc_9D1BDA: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95EC48
  'Data Table: 4B854C
  loc_95EC30: LitI2_Byte 0
  loc_95EC32: ILdRf Me
  loc_95EC35: CastAd
  loc_95EC38: FStAdFunc var_88
  loc_95EC3B: FLdRfVar var_88
  loc_95EC3E: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95EC43: FFree1Ad var_88
  loc_95EC46: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94EF48
  'Data Table: 4B854C
  loc_94EF34: FLdPr Me
  loc_94EF37: VCallAd Control_ID_mskDesde
  loc_94EF3A: CVarAd
  loc_94EF3E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EF43: FFree1Var var_94 = ""
  loc_94EF46: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B2DDC
  'Data Table: 4B854C
  loc_9B2D40: FLdPr Me
  loc_9B2D43: VCallAd Control_ID_mskDesde
  loc_9B2D46: FStAdFunc var_88
  loc_9B2D49: FLdPr var_88
  loc_9B2D4C: LateIdLdVar var_98 DispID_15 0
  loc_9B2D53: PopAd
  loc_9B2D55: FLdPr Me
  loc_9B2D58: VCallAd Control_ID_mskDesde
  loc_9B2D5B: FStAdFunc var_AC
  loc_9B2D5E: LitI2_Byte &HFF
  loc_9B2D60: PopTmpLdAd2 var_A2
  loc_9B2D63: FLdZeroAd var_AC
  loc_9B2D66: FStAdFunc var_A0
  loc_9B2D69: FLdRfVar var_A0
  loc_9B2D6C: LitStr vbNullString
  loc_9B2D6F: LitI2_Byte 0
  loc_9B2D71: LitI2_Byte 0
  loc_9B2D73: FLdRfVar var_98
  loc_9B2D76: CStrVarTmp
  loc_9B2D77: FStStrNoPop var_9C
  loc_9B2D7A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B2D7F: FStStrNoPop var_A8
  loc_9B2D82: FLdPr Me
  loc_9B2D85: MemStStrCopy
  loc_9B2D89: FFreeStr var_9C = ""
  loc_9B2D90: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2D99: FFree1Var var_98 = ""
  loc_9B2D9C: FLdPr Me
  loc_9B2D9F: VCallAd Control_ID_mskDesde
  loc_9B2DA2: FStAdFunc var_B0
  loc_9B2DA5: LitNothing
  loc_9B2DA7: CastAd
  loc_9B2DAA: FStAdFunc var_AC
  loc_9B2DAD: FLdRfVar var_AC
  loc_9B2DB0: FLdZeroAd var_B0
  loc_9B2DB3: FStAdFuncNoPop
  loc_9B2DB6: CastAd
  loc_9B2DB9: FStAdFunc var_A0
  loc_9B2DBC: FLdRfVar var_A0
  loc_9B2DBF: FLdPr Me
  loc_9B2DC2: MemLdRfVar from_stack_1.global_108
  loc_9B2DC5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B2DCA: IStI2 arg_C
  loc_9B2DCD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2DD8: ExitProcHresult
  loc_9B2DD9: CRec2Ansi arg_356
End Function

Private Sub mskHasta_UnknownEvent_0 '952158
  'Data Table: 4B854C
  loc_952144: FLdPr Me
  loc_952147: VCallAd Control_ID_mskHasta
  loc_95214A: CVarAd
  loc_95214E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952153: FFree1Var var_94 = ""
  loc_952156: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B2C0C
  'Data Table: 4B854C
  loc_9B2B70: FLdPr Me
  loc_9B2B73: VCallAd Control_ID_mskHasta
  loc_9B2B76: FStAdFunc var_88
  loc_9B2B79: FLdPr var_88
  loc_9B2B7C: LateIdLdVar var_98 DispID_15 0
  loc_9B2B83: PopAd
  loc_9B2B85: FLdPr Me
  loc_9B2B88: VCallAd Control_ID_mskHasta
  loc_9B2B8B: FStAdFunc var_AC
  loc_9B2B8E: LitI2_Byte &HFF
  loc_9B2B90: PopTmpLdAd2 var_A2
  loc_9B2B93: FLdZeroAd var_AC
  loc_9B2B96: FStAdFunc var_A0
  loc_9B2B99: FLdRfVar var_A0
  loc_9B2B9C: LitStr vbNullString
  loc_9B2B9F: LitI2_Byte 0
  loc_9B2BA1: LitI2_Byte 0
  loc_9B2BA3: FLdRfVar var_98
  loc_9B2BA6: CStrVarTmp
  loc_9B2BA7: FStStrNoPop var_9C
  loc_9B2BAA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B2BAF: FStStrNoPop var_A8
  loc_9B2BB2: FLdPr Me
  loc_9B2BB5: MemStStrCopy
  loc_9B2BB9: FFreeStr var_9C = ""
  loc_9B2BC0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2BC9: FFree1Var var_98 = ""
  loc_9B2BCC: FLdPr Me
  loc_9B2BCF: VCallAd Control_ID_mskHasta
  loc_9B2BD2: FStAdFunc var_B0
  loc_9B2BD5: LitNothing
  loc_9B2BD7: CastAd
  loc_9B2BDA: FStAdFunc var_AC
  loc_9B2BDD: FLdRfVar var_AC
  loc_9B2BE0: FLdZeroAd var_B0
  loc_9B2BE3: FStAdFuncNoPop
  loc_9B2BE6: CastAd
  loc_9B2BE9: FStAdFunc var_A0
  loc_9B2BEC: FLdRfVar var_A0
  loc_9B2BEF: FLdPr Me
  loc_9B2BF2: MemLdRfVar from_stack_1.global_108
  loc_9B2BF5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B2BFA: IStI2 arg_C
  loc_9B2BFD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B2C08: ExitProcHresult
  loc_9B2C09: AndI4
  loc_9B2C0A: Ary1LdFPR8
End Function

Private Sub cmdXLS_Click() '96AFEC
  'Data Table: 4B854C
  loc_96AFD0: LitI2_Byte &HFF
  loc_96AFD2: LitI2_Byte 0
  loc_96AFD4: ILdRf Me
  loc_96AFD7: CastAd
  loc_96AFDA: FStAdFunc var_88
  loc_96AFDD: FLdRfVar var_88
  loc_96AFE0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96AFE5: FFree1Ad var_88
  loc_96AFE8: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '95ED78
  'Data Table: 4B854C
  loc_95ED60: ILdRf Me
  loc_95ED63: CastAd
  loc_95ED66: FStAdFunc var_88
  loc_95ED69: FLdRfVar var_88
  loc_95ED6C: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_95ED71: FFree1Ad var_88
  loc_95ED74: ExitProcHresult
End Sub

Private Sub chkNotCodiPart_Click() '94124C
  'Data Table: 4B854C
  loc_941240: LitI2_Byte 0
  loc_941242: PopTmpLdAd2 var_86
  loc_941245: Call CodiPartMsk_UnknownEvent_8()
  loc_94124A: ExitProcHresult
End Sub

Private Sub cmdDesde_Click() '980A08
  'Data Table: 4B854C
  loc_9809D4: LitVar_Missing var_A4
  loc_9809D7: PopAdLdVar
  loc_9809D8: LitVarI4
  loc_9809E0: PopAdLdVar
  loc_9809E1: ImpAdLdRf MemVar_C3D9A8
  loc_9809E4: NewIfNullPr frmCalendario
  loc_9809E7: frmCalendario.Show from_stack_1, from_stack_2
  loc_9809EC: ImpAdLdRf MemVar_C3D038
  loc_9809EF: CDargRef
  loc_9809F3: FLdPr Me
  loc_9809F6: VCallAd Control_ID_mskDesde
  loc_9809F9: FStAdFunc var_A8
  loc_9809FC: FLdPr var_A8
  loc_9809FF: LateIdSt
  loc_980A04: FFree1Ad var_A8
  loc_980A07: ExitProcHresult
End Sub

Public Function htmFileGet() '4B99B8
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4B99C7
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4B99D6
  htmFile = Value
End Sub

Public Function bLogosGet() '4B99E5
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4B99F4
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4B9A03
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4B9A12
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9C5FDC
  'Data Table: 4B854C
  loc_9C5F28: LitI4 0
  loc_9C5F2D: LitI4 8
  loc_9C5F32: FLdRfVar var_88
  loc_9C5F35: Redim
  loc_9C5F3F: FLdPr Me
  loc_9C5F42: VCallAd Control_ID_cboPeriodo
  loc_9C5F45: CVarAd
  loc_9C5F49: ParmAry1St
  loc_9C5F4F: FLdPr Me
  loc_9C5F52: VCallAd Control_ID_mskDesde
  loc_9C5F55: CVarAd
  loc_9C5F59: ParmAry1St
  loc_9C5F5F: FLdPr Me
  loc_9C5F62: VCallAd Control_ID_cmdDesde
  loc_9C5F65: CVarAd
  loc_9C5F69: ParmAry1St
  loc_9C5F6F: FLdPr Me
  loc_9C5F72: VCallAd Control_ID_mskHasta
  loc_9C5F75: CVarAd
  loc_9C5F79: ParmAry1St
  loc_9C5F7F: FLdPr Me
  loc_9C5F82: VCallAd Control_ID_cmdHasta
  loc_9C5F85: CVarAd
  loc_9C5F89: ParmAry1St
  loc_9C5F8F: FLdPr Me
  loc_9C5F92: VCallAd Control_ID_CodiPartMsk
  loc_9C5F95: CVarAd
  loc_9C5F99: ParmAry1St
  loc_9C5F9F: FLdPr Me
  loc_9C5FA2: VCallAd Control_ID_cmdCodiPart
  loc_9C5FA5: CVarAd
  loc_9C5FA9: ParmAry1St
  loc_9C5FAF: FLdPr Me
  loc_9C5FB2: VCallAd Control_ID_cboCodiOrga
  loc_9C5FB5: CVarAd
  loc_9C5FB9: ParmAry1St
  loc_9C5FBF: FLdPr Me
  loc_9C5FC2: VCallAd Control_ID_chkNotCodiPart
  loc_9C5FC5: CVarAd
  loc_9C5FC9: ParmAry1St
  loc_9C5FCF: FLdRfVar var_88
  loc_9C5FD2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C5FD7: FLdRfVar var_88
  loc_9C5FDA: Erase
  loc_9C5FDB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BF3E80
  'Data Table: 4B854C
  loc_BF1FA0: FLdPr Me
  loc_BF1FA3: MemLdI2 bGenerado
  loc_BF1FA6: BranchF loc_BF1FAA
  loc_BF1FA9: ExitProcHresult
  loc_BF1FAA: LitVarStr var_A4, "Generando reporte..."
  loc_BF1FAF: PopAdLdVar
  loc_BF1FB0: FLdPr Me
  loc_BF1FB3: VCallAd Control_ID_statusBar
  loc_BF1FB6: FStAdFunc var_B8
  loc_BF1FB9: FLdPr var_B8
  loc_BF1FBC: LateIdSt
  loc_BF1FC1: FFree1Ad var_B8
  loc_BF1FC4: LitI4 &HB
  loc_BF1FC9: CI2I4
  loc_BF1FCA: FLdPr Me
  loc_BF1FCD: Me.MousePointer = from_stack_1
  loc_BF1FD2: LitI2_Byte 0
  loc_BF1FD4: PopTmpLdAd2 var_BA
  loc_BF1FD7: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BF1FDC: FLdPr Me
  loc_BF1FDF: MemLdStr global_108
  loc_BF1FE2: LitStr vbNullString
  loc_BF1FE5: NeStr
  loc_BF1FE7: BranchF loc_BF1FED
  loc_BF1FEA: Branch loc_BF3E59
  loc_BF1FED: LitI2_Byte 0
  loc_BF1FEF: PopTmpLdAd2 var_BA
  loc_BF1FF2: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BF1FF7: FLdPr Me
  loc_BF1FFA: MemLdStr global_108
  loc_BF1FFD: LitStr vbNullString
  loc_BF2000: NeStr
  loc_BF2002: BranchF loc_BF2008
  loc_BF2005: Branch loc_BF3E59
  loc_BF2008: LitI2_Byte 0
  loc_BF200A: PopTmpLdAd2 var_BA
  loc_BF200D: Call CodiPartMsk_UnknownEvent_8()
  loc_BF2012: FLdRfVar var_BA
  loc_BF2015: FLdPr Me
  loc_BF2018: VCallAd Control_ID_chkNotCodiPart
  loc_BF201B: FStAdFunc var_B8
  loc_BF201E: FLdPr var_B8
  loc_BF2021:  = Me.Value
  loc_BF2026: LitVarStr var_DC, "NOT"
  loc_BF202B: FStVarCopyObj var_EC
  loc_BF202E: FLdRfVar var_EC
  loc_BF2031: LitVarStr var_B4, vbNullString
  loc_BF2036: FStVarCopyObj var_CC
  loc_BF2039: FLdRfVar var_CC
  loc_BF203C: FLdI2 var_BA
  loc_BF203F: CI4UI1
  loc_BF2040: LitI4 0
  loc_BF2045: EqI4
  loc_BF2046: CVarBoolI2 var_A4
  loc_BF204A: FLdRfVar var_FC
  loc_BF204D: ImpAdCallFPR4  = IIf(, , )
  loc_BF2052: FLdRfVar var_FC
  loc_BF2055: CStrVarTmp
  loc_BF2056: FStStr var_94
  loc_BF2059: FFree1Ad var_B8
  loc_BF205C: FFreeVar var_A4 = "": var_CC = "": var_EC = ""
  loc_BF2067: FLdPr Me
  loc_BF206A: MemLdRfVar from_stack_1.global_72
  loc_BF206D: NewIfNullAd
  loc_BF2070: FStAd var_100 
  loc_BF2074: LitStr "DROP TEMPORARY TABLE IF EXISTS itmp;"
  loc_BF2077: LitStr " CREATE TEMPORARY TABLE tmp` ("
  loc_BF207A: ConcatStr
  loc_BF207B: FStStrNoPop var_104
  loc_BF207E: LitStr "   odiOrga` varchar(7) NOT NULL default '',"
  loc_BF2081: ConcatStr
  loc_BF2082: FStStrNoPop var_108
  loc_BF2085: LitStr "   eraOrga` varchar(50) NOT NULL default '',"
  loc_BF2088: ConcatStr
  loc_BF2089: FStStrNoPop var_10C
  loc_BF208C: LitStr "   odiPart` varchar(9) NOT NULL default '',"
  loc_BF208F: ConcatStr
  loc_BF2090: FStStrNoPop var_110
  loc_BF2093: LitStr "   otaAuto` decimal(14,2) NOT NULL default '0.00',"
  loc_BF2096: ConcatStr
  loc_BF2097: FStStrNoPop var_114
  loc_BF209A: LitStr "   revImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BF209D: ConcatStr
  loc_BF209E: FStStrNoPop var_118
  loc_BF20A1: LitStr "   efiImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BF20A4: ConcatStr
  loc_BF20A5: FStStrNoPop var_11C
  loc_BF20A8: LitStr "   eveImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BF20AB: ConcatStr
  loc_BF20AC: FStStrNoPop var_120
  loc_BF20AF: LitStr "   apaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BF20B2: ConcatStr
  loc_BF20B3: FStStrNoPop var_124
  loc_BF20B6: LitStr "   agaImpu` decimal(14,2) NOT NULL default '0.00'"
  loc_BF20B9: ConcatStr
  loc_BF20BA: FStStrNoPop var_128
  loc_BF20BD: LitStr " ) ;"
  loc_BF20C0: ConcatStr
  loc_BF20C1: FStStrNoPop var_12C
  loc_BF20C4: FLdPr var_100
  loc_BF20C7: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF20CC: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_BF20E5: LitStr "DROP TEMPORARY TABLE IF EXISTS final;"
  loc_BF20E8: LitStr " CREATE TEMPORARY TABLE inal` ("
  loc_BF20EB: ConcatStr
  loc_BF20EC: FStStrNoPop var_104
  loc_BF20EF: LitStr " urisdiccion` varchar(1) NOT NULL default '',"
  loc_BF20F2: ConcatStr
  loc_BF20F3: FStStrNoPop var_108
  loc_BF20F6: LitStr " itulo` tinyint(1) UNSIGNED NOT NULL,"
  loc_BF20F9: ConcatStr
  loc_BF20FA: FStStrNoPop var_10C
  loc_BF20FD: LitStr " odigo` varchar(9) NOT NULL default '',"
  loc_BF2100: ConcatStr
  loc_BF2101: FStStrNoPop var_110
  loc_BF2104: LitStr " otaAuto` decimal(14,2) NOT NULL default '0.00',"
  loc_BF2107: ConcatStr
  loc_BF2108: FStStrNoPop var_114
  loc_BF210B: LitStr " revImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BF210E: ConcatStr
  loc_BF210F: FStStrNoPop var_118
  loc_BF2112: LitStr " orcPrev` decimal(14,2) NOT NULL default '0.00',"
  loc_BF2115: ConcatStr
  loc_BF2116: FStStrNoPop var_11C
  loc_BF2119: LitStr " aldAuto` decimal(14,2) NOT NULL default '0.00',"
  loc_BF211C: ConcatStr
  loc_BF211D: FStStrNoPop var_120
  loc_BF2120: LitStr " efiImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BF2123: ConcatStr
  loc_BF2124: FStStrNoPop var_124
  loc_BF2127: LitStr " eveImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BF212A: ConcatStr
  loc_BF212B: FStStrNoPop var_128
  loc_BF212E: LitStr " orcDeve` decimal(14,2) NOT NULL default '0.00',"
  loc_BF2131: ConcatStr
  loc_BF2132: FStStrNoPop var_12C
  loc_BF2135: LitStr " apaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BF2138: ConcatStr
  loc_BF2139: FStStrNoPop var_130
  loc_BF213C: LitStr " agaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_BF213F: ConcatStr
  loc_BF2140: FStStrNoPop var_134
  loc_BF2143: LitStr " PRIMARY KEY  (urisdiccion`,`Codigo`)"
  loc_BF2146: ConcatStr
  loc_BF2147: FStStrNoPop var_138
  loc_BF214A: LitStr " ) ;"
  loc_BF214D: ConcatStr
  loc_BF214E: FStStrNoPop var_13C
  loc_BF2151: FLdPr var_100
  loc_BF2154: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2159: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_BF217A: FLdRfVar var_104
  loc_BF217D: FLdPr Me
  loc_BF2180: VCallAd Control_ID_cboPeriodo
  loc_BF2183: FStAdFunc var_B8
  loc_BF2186: FLdPr var_B8
  loc_BF2189:  = Me.Text
  loc_BF218E: ILdRf var_104
  loc_BF2191: CI2Str
  loc_BF2193: LitI2 2023
  loc_BF2196: LeI2
  loc_BF2197: FFree1Str var_104
  loc_BF219A: FFree1Ad var_B8
  loc_BF219D: BranchF loc_BF2B53
  loc_BF21A0: FLdRfVar var_BA
  loc_BF21A3: FLdPr Me
  loc_BF21A6: VCallAd Control_ID_cboCodiOrga
  loc_BF21A9: FStAdFunc var_B8
  loc_BF21AC: FLdPr var_B8
  loc_BF21AF:  = Me.ListIndex
  loc_BF21B4: FLdI2 var_BA
  loc_BF21B7: LitI2_Byte 0
  loc_BF21B9: EqI2
  loc_BF21BA: FFree1Ad var_B8
  loc_BF21BD: BranchF loc_BF2656
  loc_BF21C0: FLdPr Me
  loc_BF21C3: VCallAd Control_ID_mskDesde
  loc_BF21C6: FStAdFunc var_144
  loc_BF21C9: FLdPr var_144
  loc_BF21CC: LateIdLdVar var_EC DispID_15 0
  loc_BF21D3: PopAd
  loc_BF21D5: FLdPr Me
  loc_BF21D8: VCallAd Control_ID_mskHasta
  loc_BF21DB: FStAdFunc var_158
  loc_BF21DE: FLdPr var_158
  loc_BF21E1: LateIdLdVar var_168 DispID_15 0
  loc_BF21E8: PopAd
  loc_BF21EA: LitStr "INSERT INTO itmp (CodiOrga,CodiPart,TotaAuto)"
  loc_BF21ED: LitStr " SELECT Left(CodiOrga,1), CodiPart, Sum(AutoAuto+AumeAuto-DismAuto)"
  loc_BF21F0: ConcatStr
  loc_BF21F1: FStStrNoPop var_104
  loc_BF21F4: LitStr " FROM autorizado"
  loc_BF21F7: ConcatStr
  loc_BF21F8: FStStrNoPop var_108
  loc_BF21FB: LitStr " WHERE PeriInfo = "
  loc_BF21FE: ConcatStr
  loc_BF21FF: FStStrNoPop var_110
  loc_BF2202: FLdRfVar var_10C
  loc_BF2205: FLdPr Me
  loc_BF2208: VCallAd Control_ID_cboPeriodo
  loc_BF220B: FStAdFunc var_B8
  loc_BF220E: FLdPr var_B8
  loc_BF2211:  = Me.Text
  loc_BF2216: ILdRf var_10C
  loc_BF2219: ConcatStr
  loc_BF221A: FStStrNoPop var_114
  loc_BF221D: LitStr " AND CodiPart "
  loc_BF2220: ConcatStr
  loc_BF2221: FStStrNoPop var_118
  loc_BF2224: ILdRf var_94
  loc_BF2227: ConcatStr
  loc_BF2228: FStStrNoPop var_11C
  loc_BF222B: LitStr " Like '"
  loc_BF222E: ConcatStr
  loc_BF222F: FStStrNoPop var_120
  loc_BF2232: FLdPr Me
  loc_BF2235: VCallAd Control_ID_CodiPartMsk
  loc_BF2238: FStAdFunc var_140
  loc_BF223B: FLdPr var_140
  loc_BF223E: LateIdLdVar var_CC DispID_22 0
  loc_BF2245: CStrVarTmp
  loc_BF2246: FStStrNoPop var_124
  loc_BF2249: ConcatStr
  loc_BF224A: FStStrNoPop var_128
  loc_BF224D: LitStr Chr(37) & "'"
  loc_BF2250: ConcatStr
  loc_BF2251: FStStrNoPop var_12C
  loc_BF2254: LitStr " AND FechAuto BETWEEN "
  loc_BF2257: ConcatStr
  loc_BF2258: FStStrNoPop var_130
  loc_BF225B: LitI4 1
  loc_BF2260: LitI4 1
  loc_BF2265: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BF226A: FStVarCopyObj var_154
  loc_BF226D: FLdRfVar var_154
  loc_BF2270: FLdRfVar var_EC
  loc_BF2273: CStrVarTmp
  loc_BF2274: CVarStr var_FC
  loc_BF2277: ImpAdCallI2 Format$(, )
  loc_BF227C: FStStrNoPop var_134
  loc_BF227F: ConcatStr
  loc_BF2280: FStStrNoPop var_138
  loc_BF2283: LitStr " AND "
  loc_BF2286: ConcatStr
  loc_BF2287: FStStrNoPop var_13C
  loc_BF228A: LitI4 1
  loc_BF228F: LitI4 1
  loc_BF2294: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BF2299: FStVarCopyObj var_188
  loc_BF229C: FLdRfVar var_188
  loc_BF229F: FLdRfVar var_168
  loc_BF22A2: CStrVarTmp
  loc_BF22A3: CVarStr var_178
  loc_BF22A6: ImpAdCallI2 Format$(, )
  loc_BF22AB: FStStrNoPop var_18C
  loc_BF22AE: ConcatStr
  loc_BF22AF: FStStrNoPop var_190
  loc_BF22B2: LitStr " GROUP BY Left(CodiOrga,1), CodiPart;"
  loc_BF22B5: ConcatStr
  loc_BF22B6: FStStrNoPop var_194
  loc_BF22B9: FLdPr var_100
  loc_BF22BC: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF22C1: FFreeStr var_104 = "": var_108 = "": var_110 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = ""
  loc_BF22E8: FFreeAd var_B8 = "": var_140 = "": var_144 = ""
  loc_BF22F3: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_154 = "": var_168 = "": var_178 = ""
  loc_BF2304: FLdPr Me
  loc_BF2307: VCallAd Control_ID_mskDesde
  loc_BF230A: FStAdFunc var_144
  loc_BF230D: FLdPr var_144
  loc_BF2310: LateIdLdVar var_EC DispID_15 0
  loc_BF2317: PopAd
  loc_BF2319: FLdPr Me
  loc_BF231C: VCallAd Control_ID_mskHasta
  loc_BF231F: FStAdFunc var_158
  loc_BF2322: FLdPr var_158
  loc_BF2325: LateIdLdVar var_168 DispID_15 0
  loc_BF232C: PopAd
  loc_BF232E: LitStr "INSERT INTO itmp (CodiOrga,CodiPart,PrevImpu,DefiImpu,DeveImpu,MapaImpu,PagaImpu)"
  loc_BF2331: LitStr " SELECT Left(CodiOrga,1), CodiPart, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2334: ConcatStr
  loc_BF2335: FStStrNoPop var_104
  loc_BF2338: LitStr " FROM imputacion"
  loc_BF233B: ConcatStr
  loc_BF233C: FStStrNoPop var_108
  loc_BF233F: LitStr " WHERE PeriInfo = "
  loc_BF2342: ConcatStr
  loc_BF2343: FStStrNoPop var_110
  loc_BF2346: FLdRfVar var_10C
  loc_BF2349: FLdPr Me
  loc_BF234C: VCallAd Control_ID_cboPeriodo
  loc_BF234F: FStAdFunc var_B8
  loc_BF2352: FLdPr var_B8
  loc_BF2355:  = Me.Text
  loc_BF235A: ILdRf var_10C
  loc_BF235D: ConcatStr
  loc_BF235E: FStStrNoPop var_114
  loc_BF2361: LitStr " AND CodiPart "
  loc_BF2364: ConcatStr
  loc_BF2365: FStStrNoPop var_118
  loc_BF2368: ILdRf var_94
  loc_BF236B: ConcatStr
  loc_BF236C: FStStrNoPop var_11C
  loc_BF236F: LitStr " Like '"
  loc_BF2372: ConcatStr
  loc_BF2373: FStStrNoPop var_120
  loc_BF2376: FLdPr Me
  loc_BF2379: VCallAd Control_ID_CodiPartMsk
  loc_BF237C: FStAdFunc var_140
  loc_BF237F: FLdPr var_140
  loc_BF2382: LateIdLdVar var_CC DispID_22 0
  loc_BF2389: CStrVarTmp
  loc_BF238A: FStStrNoPop var_124
  loc_BF238D: ConcatStr
  loc_BF238E: FStStrNoPop var_128
  loc_BF2391: LitStr Chr(37) & "'"
  loc_BF2394: ConcatStr
  loc_BF2395: FStStrNoPop var_12C
  loc_BF2398: LitStr " AND FechImpu BETWEEN "
  loc_BF239B: ConcatStr
  loc_BF239C: FStStrNoPop var_130
  loc_BF239F: LitI4 1
  loc_BF23A4: LitI4 1
  loc_BF23A9: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BF23AE: FStVarCopyObj var_154
  loc_BF23B1: FLdRfVar var_154
  loc_BF23B4: FLdRfVar var_EC
  loc_BF23B7: CStrVarTmp
  loc_BF23B8: CVarStr var_FC
  loc_BF23BB: ImpAdCallI2 Format$(, )
  loc_BF23C0: FStStrNoPop var_134
  loc_BF23C3: ConcatStr
  loc_BF23C4: FStStrNoPop var_138
  loc_BF23C7: LitStr " AND "
  loc_BF23CA: ConcatStr
  loc_BF23CB: FStStrNoPop var_13C
  loc_BF23CE: LitI4 1
  loc_BF23D3: LitI4 1
  loc_BF23D8: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BF23DD: FStVarCopyObj var_188
  loc_BF23E0: FLdRfVar var_188
  loc_BF23E3: FLdRfVar var_168
  loc_BF23E6: CStrVarTmp
  loc_BF23E7: CVarStr var_178
  loc_BF23EA: ImpAdCallI2 Format$(, )
  loc_BF23EF: FStStrNoPop var_18C
  loc_BF23F2: ConcatStr
  loc_BF23F3: FStStrNoPop var_190
  loc_BF23F6: LitStr " GROUP BY Left(CodiOrga,1), CodiPart;"
  loc_BF23F9: ConcatStr
  loc_BF23FA: FStStrNoPop var_194
  loc_BF23FD: FLdPr var_100
  loc_BF2400: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2405: FFreeStr var_104 = "": var_108 = "": var_110 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = ""
  loc_BF242C: FFreeAd var_B8 = "": var_140 = "": var_144 = ""
  loc_BF2437: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_154 = "": var_168 = "": var_178 = ""
  loc_BF2448: LitStr "REPLACE INTO final"
  loc_BF244B: LitStr " SELECT '0', 0, '', Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF244E: ConcatStr
  loc_BF244F: FStStrNoPop var_104
  loc_BF2452: LitStr " FROM itmp"
  loc_BF2455: ConcatStr
  loc_BF2456: FStStrNoPop var_108
  loc_BF2459: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF245C: ConcatStr
  loc_BF245D: FStStrNoPop var_10C
  loc_BF2460: FLdPr var_100
  loc_BF2463: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2468: FFreeStr var_104 = "": var_108 = ""
  loc_BF2471: LitStr "REPLACE INTO final"
  loc_BF2474: LitStr " SELECT Left(CodiOrga, 1), 1, Concat(Left(CodiPart,1),'0000000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2477: ConcatStr
  loc_BF2478: FStStrNoPop var_104
  loc_BF247B: LitStr " FROM itmp"
  loc_BF247E: ConcatStr
  loc_BF247F: FStStrNoPop var_108
  loc_BF2482: LitStr " GROUP BY Left(CodiOrga,1), Left(CodiPart,1)"
  loc_BF2485: ConcatStr
  loc_BF2486: FStStrNoPop var_10C
  loc_BF2489: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF248C: ConcatStr
  loc_BF248D: FStStrNoPop var_110
  loc_BF2490: FLdPr var_100
  loc_BF2493: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2498: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF24A3: LitStr "REPLACE INTO final"
  loc_BF24A6: LitStr " SELECT Left(CodiOrga, 1), 2, Concat(Left(CodiPart,2),'000000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF24A9: ConcatStr
  loc_BF24AA: FStStrNoPop var_104
  loc_BF24AD: LitStr " FROM itmp"
  loc_BF24B0: ConcatStr
  loc_BF24B1: FStStrNoPop var_108
  loc_BF24B4: LitStr " GROUP BY Left(CodiOrga,1), Left(CodiPart,2)"
  loc_BF24B7: ConcatStr
  loc_BF24B8: FStStrNoPop var_10C
  loc_BF24BB: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF24BE: ConcatStr
  loc_BF24BF: FStStrNoPop var_110
  loc_BF24C2: FLdPr var_100
  loc_BF24C5: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF24CA: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF24D5: LitStr "REPLACE INTO final"
  loc_BF24D8: LitStr " SELECT Left(CodiOrga,1), 3, Concat(Left(CodiPart,3),'00000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF24DB: ConcatStr
  loc_BF24DC: FStStrNoPop var_104
  loc_BF24DF: LitStr " FROM itmp"
  loc_BF24E2: ConcatStr
  loc_BF24E3: FStStrNoPop var_108
  loc_BF24E6: LitStr " GROUP BY Left(CodiOrga,1), Left(CodiPart,3)"
  loc_BF24E9: ConcatStr
  loc_BF24EA: FStStrNoPop var_10C
  loc_BF24ED: LitStr " HAVING SumTotaAuto > 0 ;"
  loc_BF24F0: ConcatStr
  loc_BF24F1: FStStrNoPop var_110
  loc_BF24F4: FLdPr var_100
  loc_BF24F7: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF24FC: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF2507: LitStr "REPLACE INTO final"
  loc_BF250A: LitStr " SELECT Left(CodiOrga, 1), 4, Concat(Left(CodiPart,4),'0000') CodiPart, Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF250D: ConcatStr
  loc_BF250E: FStStrNoPop var_104
  loc_BF2511: LitStr " FROM itmp"
  loc_BF2514: ConcatStr
  loc_BF2515: FStStrNoPop var_108
  loc_BF2518: LitStr " GROUP BY Left(CodiOrga,1), Left(CodiPart,4);"
  loc_BF251B: ConcatStr
  loc_BF251C: FStStrNoPop var_10C
  loc_BF251F: FLdPr var_100
  loc_BF2522: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2527: FFreeStr var_104 = "": var_108 = ""
  loc_BF2530: LitStr "REPLACE INTO final"
  loc_BF2533: LitStr " SELECT Left(CodiOrga, 1), 5, Concat(Left(CodiPart,6),'00') CodiPart, Sum(TotaAuto), Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2536: ConcatStr
  loc_BF2537: FStStrNoPop var_104
  loc_BF253A: LitStr " FROM itmp"
  loc_BF253D: ConcatStr
  loc_BF253E: FStStrNoPop var_108
  loc_BF2541: LitStr " GROUP BY Left(CodiOrga,1), Left(CodiPart,6);"
  loc_BF2544: ConcatStr
  loc_BF2545: FStStrNoPop var_10C
  loc_BF2548: FLdPr var_100
  loc_BF254B: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2550: FFreeStr var_104 = "": var_108 = ""
  loc_BF2559: LitStr "REPLACE INTO final"
  loc_BF255C: LitStr " SELECT Left(CodiOrga, 1), 6, CodiPart, Sum(TotaAuto), Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF255F: ConcatStr
  loc_BF2560: FStStrNoPop var_104
  loc_BF2563: LitStr " FROM itmp"
  loc_BF2566: ConcatStr
  loc_BF2567: FStStrNoPop var_108
  loc_BF256A: LitStr " GROUP BY Left(CodiOrga,1), CodiPart;"
  loc_BF256D: ConcatStr
  loc_BF256E: FStStrNoPop var_10C
  loc_BF2571: FLdPr var_100
  loc_BF2574: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2579: FFreeStr var_104 = "": var_108 = ""
  loc_BF2582: LitStr "SELECT final.*, IF(Length(Codigo)="
  loc_BF2585: LitI2_Byte 6
  loc_BF2587: CStrUI1
  loc_BF2589: FStStrNoPop var_104
  loc_BF258C: ConcatStr
  loc_BF258D: FStStrNoPop var_108
  loc_BF2590: LitStr ", DetaOrga, DetaPart) Detalle"
  loc_BF2593: ConcatStr
  loc_BF2594: FStStrNoPop var_10C
  loc_BF2597: LitStr " FROM final"
  loc_BF259A: ConcatStr
  loc_BF259B: FStStrNoPop var_110
  loc_BF259E: LitStr " LEFT JOIN infogov.organigrama ON organigrama.PeriInfo = "
  loc_BF25A1: ConcatStr
  loc_BF25A2: FStStrNoPop var_118
  loc_BF25A5: FLdRfVar var_114
  loc_BF25A8: FLdPr Me
  loc_BF25AB: VCallAd Control_ID_cboPeriodo
  loc_BF25AE: FStAdFunc var_B8
  loc_BF25B1: FLdPr var_B8
  loc_BF25B4:  = Me.Text
  loc_BF25B9: ILdRf var_114
  loc_BF25BC: ConcatStr
  loc_BF25BD: FStStrNoPop var_11C
  loc_BF25C0: LitStr " AND organigrama.CodiOrga = IF(Length(final.Codigo)="
  loc_BF25C3: ConcatStr
  loc_BF25C4: FStStrNoPop var_120
  loc_BF25C7: LitI2_Byte 6
  loc_BF25C9: CStrUI1
  loc_BF25CB: FStStrNoPop var_124
  loc_BF25CE: ConcatStr
  loc_BF25CF: FStStrNoPop var_128
  loc_BF25D2: LitStr ",Codigo,'')"
  loc_BF25D5: ConcatStr
  loc_BF25D6: FStStrNoPop var_12C
  loc_BF25D9: LitStr " LEFT JOIN partida ON partida.PeriInfo = "
  loc_BF25DC: ConcatStr
  loc_BF25DD: FStStrNoPop var_134
  loc_BF25E0: FLdRfVar var_130
  loc_BF25E3: FLdPr Me
  loc_BF25E6: VCallAd Control_ID_cboPeriodo
  loc_BF25E9: FStAdFunc var_140
  loc_BF25EC: FLdPr var_140
  loc_BF25EF:  = Me.Text
  loc_BF25F4: ILdRf var_130
  loc_BF25F7: ConcatStr
  loc_BF25F8: FStStrNoPop var_138
  loc_BF25FB: LitStr " AND partida.CodiPart = IF(Length(final.Codigo)="
  loc_BF25FE: ConcatStr
  loc_BF25FF: FStStrNoPop var_13C
  loc_BF2602: LitI2_Byte 8
  loc_BF2604: CStrI2
  loc_BF2606: FStStrNoPop var_18C
  loc_BF2609: ConcatStr
  loc_BF260A: FStStrNoPop var_190
  loc_BF260D: LitStr ",Codigo,'')"
  loc_BF2610: ConcatStr
  loc_BF2611: FStStrNoPop var_194
  loc_BF2614: LitStr " ORDER BY Jurisdiccion, Codigo;"
  loc_BF2617: ConcatStr
  loc_BF2618: FStStrNoPop var_198
  loc_BF261B: FLdPr var_100
  loc_BF261E: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2623: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_118 = "": var_114 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_130 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = "": var_194 = ""
  loc_BF264C: FFreeAd var_B8 = ""
  loc_BF2653: Branch loc_BF2B50
  loc_BF2656: FLdPr Me
  loc_BF2659: VCallAd Control_ID_mskDesde
  loc_BF265C: FStAdFunc var_144
  loc_BF265F: FLdPr var_144
  loc_BF2662: LateIdLdVar var_EC DispID_15 0
  loc_BF2669: PopAd
  loc_BF266B: FLdPr Me
  loc_BF266E: VCallAd Control_ID_mskHasta
  loc_BF2671: FStAdFunc var_158
  loc_BF2674: FLdPr var_158
  loc_BF2677: LateIdLdVar var_168 DispID_15 0
  loc_BF267E: PopAd
  loc_BF2680: LitStr "INSERT INTO itmp (CodiOrga,CodiPart,TotaAuto)"
  loc_BF2683: LitStr " SELECT Left(CodiOrga,1), CodiPart, Sum(AutoAuto+AumeAuto-DismAuto)"
  loc_BF2686: ConcatStr
  loc_BF2687: FStStrNoPop var_104
  loc_BF268A: LitStr " FROM autorizado"
  loc_BF268D: ConcatStr
  loc_BF268E: FStStrNoPop var_108
  loc_BF2691: LitStr " WHERE PeriInfo = "
  loc_BF2694: ConcatStr
  loc_BF2695: FStStrNoPop var_110
  loc_BF2698: FLdRfVar var_10C
  loc_BF269B: FLdPr Me
  loc_BF269E: VCallAd Control_ID_cboPeriodo
  loc_BF26A1: FStAdFunc var_B8
  loc_BF26A4: FLdPr var_B8
  loc_BF26A7:  = Me.Text
  loc_BF26AC: ILdRf var_10C
  loc_BF26AF: ConcatStr
  loc_BF26B0: FStStrNoPop var_114
  loc_BF26B3: LitStr " AND CodiPart "
  loc_BF26B6: ConcatStr
  loc_BF26B7: FStStrNoPop var_118
  loc_BF26BA: ILdRf var_94
  loc_BF26BD: ConcatStr
  loc_BF26BE: FStStrNoPop var_11C
  loc_BF26C1: LitStr " Like '"
  loc_BF26C4: ConcatStr
  loc_BF26C5: FStStrNoPop var_120
  loc_BF26C8: FLdPr Me
  loc_BF26CB: VCallAd Control_ID_CodiPartMsk
  loc_BF26CE: FStAdFunc var_140
  loc_BF26D1: FLdPr var_140
  loc_BF26D4: LateIdLdVar var_CC DispID_22 0
  loc_BF26DB: CStrVarTmp
  loc_BF26DC: FStStrNoPop var_124
  loc_BF26DF: ConcatStr
  loc_BF26E0: FStStrNoPop var_128
  loc_BF26E3: LitStr Chr(37) & "'"
  loc_BF26E6: ConcatStr
  loc_BF26E7: FStStrNoPop var_12C
  loc_BF26EA: LitStr " AND FechAuto BETWEEN "
  loc_BF26ED: ConcatStr
  loc_BF26EE: FStStrNoPop var_130
  loc_BF26F1: LitI4 1
  loc_BF26F6: LitI4 1
  loc_BF26FB: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BF2700: FStVarCopyObj var_154
  loc_BF2703: FLdRfVar var_154
  loc_BF2706: FLdRfVar var_EC
  loc_BF2709: CStrVarTmp
  loc_BF270A: CVarStr var_FC
  loc_BF270D: ImpAdCallI2 Format$(, )
  loc_BF2712: FStStrNoPop var_134
  loc_BF2715: ConcatStr
  loc_BF2716: FStStrNoPop var_138
  loc_BF2719: LitStr " AND "
  loc_BF271C: ConcatStr
  loc_BF271D: FStStrNoPop var_13C
  loc_BF2720: LitI4 1
  loc_BF2725: LitI4 1
  loc_BF272A: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BF272F: FStVarCopyObj var_188
  loc_BF2732: FLdRfVar var_188
  loc_BF2735: FLdRfVar var_168
  loc_BF2738: CStrVarTmp
  loc_BF2739: CVarStr var_178
  loc_BF273C: ImpAdCallI2 Format$(, )
  loc_BF2741: FStStrNoPop var_18C
  loc_BF2744: ConcatStr
  loc_BF2745: FStStrNoPop var_190
  loc_BF2748: LitStr " AND Left(CodiOrga,1) = "
  loc_BF274B: ConcatStr
  loc_BF274C: FStStrNoPop var_194
  loc_BF274F: FLdRfVar var_BA
  loc_BF2752: FLdPr Me
  loc_BF2755: VCallAd Control_ID_cboCodiOrga
  loc_BF2758: FStAdFunc var_19C
  loc_BF275B: FLdPr var_19C
  loc_BF275E:  = Me.ListIndex
  loc_BF2763: FLdI2 var_BA
  loc_BF2766: CStrUI1
  loc_BF2768: FStStrNoPop var_198
  loc_BF276B: ConcatStr
  loc_BF276C: FStStrNoPop var_1A0
  loc_BF276F: LitStr " GROUP BY Left(CodiOrga,1), CodiPart;"
  loc_BF2772: ConcatStr
  loc_BF2773: FStStrNoPop var_1A4
  loc_BF2776: FLdPr var_100
  loc_BF2779: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF277E: FFreeStr var_104 = "": var_108 = "": var_110 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A0 = ""
  loc_BF27AB: FFreeAd var_B8 = "": var_140 = "": var_144 = "": var_158 = ""
  loc_BF27B8: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_154 = "": var_168 = "": var_178 = ""
  loc_BF27C9: FLdPr Me
  loc_BF27CC: VCallAd Control_ID_mskDesde
  loc_BF27CF: FStAdFunc var_144
  loc_BF27D2: FLdPr var_144
  loc_BF27D5: LateIdLdVar var_EC DispID_15 0
  loc_BF27DC: PopAd
  loc_BF27DE: FLdPr Me
  loc_BF27E1: VCallAd Control_ID_mskHasta
  loc_BF27E4: FStAdFunc var_158
  loc_BF27E7: FLdPr var_158
  loc_BF27EA: LateIdLdVar var_168 DispID_15 0
  loc_BF27F1: PopAd
  loc_BF27F3: LitStr "INSERT INTO itmp (CodiOrga,CodiPart,PrevImpu,DefiImpu,DeveImpu,MapaImpu,PagaImpu)"
  loc_BF27F6: LitStr " SELECT Left(CodiOrga,1), CodiPart, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF27F9: ConcatStr
  loc_BF27FA: FStStrNoPop var_104
  loc_BF27FD: LitStr " FROM imputacion"
  loc_BF2800: ConcatStr
  loc_BF2801: FStStrNoPop var_108
  loc_BF2804: LitStr " WHERE PeriInfo = "
  loc_BF2807: ConcatStr
  loc_BF2808: FStStrNoPop var_110
  loc_BF280B: FLdRfVar var_10C
  loc_BF280E: FLdPr Me
  loc_BF2811: VCallAd Control_ID_cboPeriodo
  loc_BF2814: FStAdFunc var_B8
  loc_BF2817: FLdPr var_B8
  loc_BF281A:  = Me.Text
  loc_BF281F: ILdRf var_10C
  loc_BF2822: ConcatStr
  loc_BF2823: FStStrNoPop var_114
  loc_BF2826: LitStr " AND CodiPart "
  loc_BF2829: ConcatStr
  loc_BF282A: FStStrNoPop var_118
  loc_BF282D: ILdRf var_94
  loc_BF2830: ConcatStr
  loc_BF2831: FStStrNoPop var_11C
  loc_BF2834: LitStr " Like '"
  loc_BF2837: ConcatStr
  loc_BF2838: FStStrNoPop var_120
  loc_BF283B: FLdPr Me
  loc_BF283E: VCallAd Control_ID_CodiPartMsk
  loc_BF2841: FStAdFunc var_140
  loc_BF2844: FLdPr var_140
  loc_BF2847: LateIdLdVar var_CC DispID_22 0
  loc_BF284E: CStrVarTmp
  loc_BF284F: FStStrNoPop var_124
  loc_BF2852: ConcatStr
  loc_BF2853: FStStrNoPop var_128
  loc_BF2856: LitStr Chr(37) & "'"
  loc_BF2859: ConcatStr
  loc_BF285A: FStStrNoPop var_12C
  loc_BF285D: LitStr " AND FechImpu BETWEEN "
  loc_BF2860: ConcatStr
  loc_BF2861: FStStrNoPop var_130
  loc_BF2864: LitI4 1
  loc_BF2869: LitI4 1
  loc_BF286E: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BF2873: FStVarCopyObj var_154
  loc_BF2876: FLdRfVar var_154
  loc_BF2879: FLdRfVar var_EC
  loc_BF287C: CStrVarTmp
  loc_BF287D: CVarStr var_FC
  loc_BF2880: ImpAdCallI2 Format$(, )
  loc_BF2885: FStStrNoPop var_134
  loc_BF2888: ConcatStr
  loc_BF2889: FStStrNoPop var_138
  loc_BF288C: LitStr " AND "
  loc_BF288F: ConcatStr
  loc_BF2890: FStStrNoPop var_13C
  loc_BF2893: LitI4 1
  loc_BF2898: LitI4 1
  loc_BF289D: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BF28A2: FStVarCopyObj var_188
  loc_BF28A5: FLdRfVar var_188
  loc_BF28A8: FLdRfVar var_168
  loc_BF28AB: CStrVarTmp
  loc_BF28AC: CVarStr var_178
  loc_BF28AF: ImpAdCallI2 Format$(, )
  loc_BF28B4: FStStrNoPop var_18C
  loc_BF28B7: ConcatStr
  loc_BF28B8: FStStrNoPop var_190
  loc_BF28BB: LitStr " AND Left(CodiOrga,1) = "
  loc_BF28BE: ConcatStr
  loc_BF28BF: FStStrNoPop var_194
  loc_BF28C2: FLdRfVar var_BA
  loc_BF28C5: FLdPr Me
  loc_BF28C8: VCallAd Control_ID_cboCodiOrga
  loc_BF28CB: FStAdFunc var_19C
  loc_BF28CE: FLdPr var_19C
  loc_BF28D1:  = Me.ListIndex
  loc_BF28D6: FLdI2 var_BA
  loc_BF28D9: CStrUI1
  loc_BF28DB: FStStrNoPop var_198
  loc_BF28DE: ConcatStr
  loc_BF28DF: FStStrNoPop var_1A0
  loc_BF28E2: LitStr " GROUP BY Left(CodiOrga,1), CodiPart;"
  loc_BF28E5: ConcatStr
  loc_BF28E6: FStStrNoPop var_1A4
  loc_BF28E9: FLdPr var_100
  loc_BF28EC: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF28F1: FFreeStr var_104 = "": var_108 = "": var_110 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A0 = ""
  loc_BF291E: FFreeAd var_B8 = "": var_140 = "": var_144 = "": var_158 = ""
  loc_BF292B: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_154 = "": var_168 = "": var_178 = ""
  loc_BF293C: LitStr "REPLACE INTO final"
  loc_BF293F: LitStr " SELECT Left(CodiOrga, 1), 0, '', Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2942: ConcatStr
  loc_BF2943: FStStrNoPop var_104
  loc_BF2946: LitStr " FROM itmp"
  loc_BF2949: ConcatStr
  loc_BF294A: FStStrNoPop var_108
  loc_BF294D: LitStr " GROUP BY LEFT(CodiOrga,1)"
  loc_BF2950: ConcatStr
  loc_BF2951: FStStrNoPop var_10C
  loc_BF2954: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF2957: ConcatStr
  loc_BF2958: FStStrNoPop var_110
  loc_BF295B: FLdPr var_100
  loc_BF295E: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2963: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF296E: LitStr "REPLACE INTO final"
  loc_BF2971: LitStr " SELECT Left(CodiOrga, 1), 1, Concat(Left(CodiPart,1),'0000000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2974: ConcatStr
  loc_BF2975: FStStrNoPop var_104
  loc_BF2978: LitStr " FROM itmp"
  loc_BF297B: ConcatStr
  loc_BF297C: FStStrNoPop var_108
  loc_BF297F: LitStr " GROUP BY LEFT(CodiOrga,1), Left(CodiPart,1)"
  loc_BF2982: ConcatStr
  loc_BF2983: FStStrNoPop var_10C
  loc_BF2986: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF2989: ConcatStr
  loc_BF298A: FStStrNoPop var_110
  loc_BF298D: FLdPr var_100
  loc_BF2990: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2995: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF29A0: LitStr "REPLACE INTO final"
  loc_BF29A3: LitStr " SELECT Left(CodiOrga, 1), 2, Concat(Left(CodiPart,2),'000000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF29A6: ConcatStr
  loc_BF29A7: FStStrNoPop var_104
  loc_BF29AA: LitStr " FROM itmp"
  loc_BF29AD: ConcatStr
  loc_BF29AE: FStStrNoPop var_108
  loc_BF29B1: LitStr " GROUP BY LEFT(CodiOrga,1), Left(CodiPart,2)"
  loc_BF29B4: ConcatStr
  loc_BF29B5: FStStrNoPop var_10C
  loc_BF29B8: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF29BB: ConcatStr
  loc_BF29BC: FStStrNoPop var_110
  loc_BF29BF: FLdPr var_100
  loc_BF29C2: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF29C7: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF29D2: LitStr "REPLACE INTO final"
  loc_BF29D5: LitStr " SELECT Left(CodiOrga,1), 3, Concat(Left(CodiPart,3),'00000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF29D8: ConcatStr
  loc_BF29D9: FStStrNoPop var_104
  loc_BF29DC: LitStr " FROM itmp"
  loc_BF29DF: ConcatStr
  loc_BF29E0: FStStrNoPop var_108
  loc_BF29E3: LitStr " GROUP BY LEFT(CodiOrga,1), Left(CodiPart,3)"
  loc_BF29E6: ConcatStr
  loc_BF29E7: FStStrNoPop var_10C
  loc_BF29EA: LitStr " HAVING SumTotaAuto > 0  ;"
  loc_BF29ED: ConcatStr
  loc_BF29EE: FStStrNoPop var_110
  loc_BF29F1: FLdPr var_100
  loc_BF29F4: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF29F9: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF2A04: LitStr "REPLACE INTO final"
  loc_BF2A07: LitStr " SELECT Left(CodiOrga, 1), 4, Concat(Left(CodiPart,4),'0000') CodiPart, Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2A0A: ConcatStr
  loc_BF2A0B: FStStrNoPop var_104
  loc_BF2A0E: LitStr " FROM itmp"
  loc_BF2A11: ConcatStr
  loc_BF2A12: FStStrNoPop var_108
  loc_BF2A15: LitStr " GROUP BY LEFT(CodiOrga,1), Left(CodiPart,4);"
  loc_BF2A18: ConcatStr
  loc_BF2A19: FStStrNoPop var_10C
  loc_BF2A1C: FLdPr var_100
  loc_BF2A1F: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2A24: FFreeStr var_104 = "": var_108 = ""
  loc_BF2A2D: LitStr "REPLACE INTO final"
  loc_BF2A30: LitStr " SELECT Left(CodiOrga, 1), 5, Concat(Left(CodiPart,6),'00') CodiPart, Sum(TotaAuto), Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2A33: ConcatStr
  loc_BF2A34: FStStrNoPop var_104
  loc_BF2A37: LitStr " FROM itmp"
  loc_BF2A3A: ConcatStr
  loc_BF2A3B: FStStrNoPop var_108
  loc_BF2A3E: LitStr " GROUP BY CodiOrga, Left(CodiPart,6);"
  loc_BF2A41: ConcatStr
  loc_BF2A42: FStStrNoPop var_10C
  loc_BF2A45: FLdPr var_100
  loc_BF2A48: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2A4D: FFreeStr var_104 = "": var_108 = ""
  loc_BF2A56: LitStr "REPLACE INTO final"
  loc_BF2A59: LitStr " SELECT Left(CodiOrga, 1), 6, CodiPart, Sum(TotaAuto), Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2A5C: ConcatStr
  loc_BF2A5D: FStStrNoPop var_104
  loc_BF2A60: LitStr " FROM itmp"
  loc_BF2A63: ConcatStr
  loc_BF2A64: FStStrNoPop var_108
  loc_BF2A67: LitStr " GROUP BY CodiOrga, CodiPart;"
  loc_BF2A6A: ConcatStr
  loc_BF2A6B: FStStrNoPop var_10C
  loc_BF2A6E: FLdPr var_100
  loc_BF2A71: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2A76: FFreeStr var_104 = "": var_108 = ""
  loc_BF2A7F: LitStr "SELECT final.*, IF(Length(Codigo)="
  loc_BF2A82: LitI2_Byte 6
  loc_BF2A84: CStrUI1
  loc_BF2A86: FStStrNoPop var_104
  loc_BF2A89: ConcatStr
  loc_BF2A8A: FStStrNoPop var_108
  loc_BF2A8D: LitStr ", DetaOrga, DetaPart) Detalle"
  loc_BF2A90: ConcatStr
  loc_BF2A91: FStStrNoPop var_10C
  loc_BF2A94: LitStr " FROM final"
  loc_BF2A97: ConcatStr
  loc_BF2A98: FStStrNoPop var_110
  loc_BF2A9B: LitStr " LEFT JOIN infogov.organigrama ON organigrama.PeriInfo = "
  loc_BF2A9E: ConcatStr
  loc_BF2A9F: FStStrNoPop var_118
  loc_BF2AA2: FLdRfVar var_114
  loc_BF2AA5: FLdPr Me
  loc_BF2AA8: VCallAd Control_ID_cboPeriodo
  loc_BF2AAB: FStAdFunc var_B8
  loc_BF2AAE: FLdPr var_B8
  loc_BF2AB1:  = Me.Text
  loc_BF2AB6: ILdRf var_114
  loc_BF2AB9: ConcatStr
  loc_BF2ABA: FStStrNoPop var_11C
  loc_BF2ABD: LitStr " AND organigrama.CodiOrga = IF(Length(final.Codigo)="
  loc_BF2AC0: ConcatStr
  loc_BF2AC1: FStStrNoPop var_120
  loc_BF2AC4: LitI2_Byte 6
  loc_BF2AC6: CStrUI1
  loc_BF2AC8: FStStrNoPop var_124
  loc_BF2ACB: ConcatStr
  loc_BF2ACC: FStStrNoPop var_128
  loc_BF2ACF: LitStr ",Codigo,'')"
  loc_BF2AD2: ConcatStr
  loc_BF2AD3: FStStrNoPop var_12C
  loc_BF2AD6: LitStr " LEFT JOIN partida ON partida.PeriInfo = "
  loc_BF2AD9: ConcatStr
  loc_BF2ADA: FStStrNoPop var_134
  loc_BF2ADD: FLdRfVar var_130
  loc_BF2AE0: FLdPr Me
  loc_BF2AE3: VCallAd Control_ID_cboPeriodo
  loc_BF2AE6: FStAdFunc var_140
  loc_BF2AE9: FLdPr var_140
  loc_BF2AEC:  = Me.Text
  loc_BF2AF1: ILdRf var_130
  loc_BF2AF4: ConcatStr
  loc_BF2AF5: FStStrNoPop var_138
  loc_BF2AF8: LitStr " AND partida.CodiPart = IF(Length(final.Codigo)="
  loc_BF2AFB: ConcatStr
  loc_BF2AFC: FStStrNoPop var_13C
  loc_BF2AFF: LitI2_Byte 8
  loc_BF2B01: CStrI2
  loc_BF2B03: FStStrNoPop var_18C
  loc_BF2B06: ConcatStr
  loc_BF2B07: FStStrNoPop var_190
  loc_BF2B0A: LitStr ",Codigo,'')"
  loc_BF2B0D: ConcatStr
  loc_BF2B0E: FStStrNoPop var_194
  loc_BF2B11: LitStr " ORDER BY Jurisdiccion, Codigo;"
  loc_BF2B14: ConcatStr
  loc_BF2B15: FStStrNoPop var_198
  loc_BF2B18: FLdPr var_100
  loc_BF2B1B: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2B20: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_118 = "": var_114 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_130 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = "": var_194 = ""
  loc_BF2B49: FFreeAd var_B8 = ""
  loc_BF2B50: Branch loc_BF34B9
  loc_BF2B53: FLdRfVar var_BA
  loc_BF2B56: FLdPr Me
  loc_BF2B59: VCallAd Control_ID_cboCodiOrga
  loc_BF2B5C: FStAdFunc var_B8
  loc_BF2B5F: FLdPr var_B8
  loc_BF2B62:  = Me.ListIndex
  loc_BF2B67: FLdI2 var_BA
  loc_BF2B6A: LitI2_Byte 0
  loc_BF2B6C: EqI2
  loc_BF2B6D: FFree1Ad var_B8
  loc_BF2B70: BranchF loc_BF2FAD
  loc_BF2B73: FLdPr Me
  loc_BF2B76: VCallAd Control_ID_mskDesde
  loc_BF2B79: FStAdFunc var_144
  loc_BF2B7C: FLdPr var_144
  loc_BF2B7F: LateIdLdVar var_EC DispID_15 0
  loc_BF2B86: PopAd
  loc_BF2B88: FLdPr Me
  loc_BF2B8B: VCallAd Control_ID_mskHasta
  loc_BF2B8E: FStAdFunc var_158
  loc_BF2B91: FLdPr var_158
  loc_BF2B94: LateIdLdVar var_168 DispID_15 0
  loc_BF2B9B: PopAd
  loc_BF2B9D: LitStr "INSERT INTO itmp (JeraOrga,CodiPart,TotaAuto)"
  loc_BF2BA0: LitStr " SELECT Left(infogov.fnArmarJeraOrga(PeriInfo,CodiOrga),1) JeraOrga, CodiPart, Sum(AutoAuto+AumeAuto-DismAuto)"
  loc_BF2BA3: ConcatStr
  loc_BF2BA4: FStStrNoPop var_104
  loc_BF2BA7: LitStr " FROM autorizado"
  loc_BF2BAA: ConcatStr
  loc_BF2BAB: FStStrNoPop var_108
  loc_BF2BAE: LitStr " WHERE PeriInfo = "
  loc_BF2BB1: ConcatStr
  loc_BF2BB2: FStStrNoPop var_110
  loc_BF2BB5: FLdRfVar var_10C
  loc_BF2BB8: FLdPr Me
  loc_BF2BBB: VCallAd Control_ID_cboPeriodo
  loc_BF2BBE: FStAdFunc var_B8
  loc_BF2BC1: FLdPr var_B8
  loc_BF2BC4:  = Me.Text
  loc_BF2BC9: ILdRf var_10C
  loc_BF2BCC: ConcatStr
  loc_BF2BCD: FStStrNoPop var_114
  loc_BF2BD0: LitStr " AND CodiPart "
  loc_BF2BD3: ConcatStr
  loc_BF2BD4: FStStrNoPop var_118
  loc_BF2BD7: ILdRf var_94
  loc_BF2BDA: ConcatStr
  loc_BF2BDB: FStStrNoPop var_11C
  loc_BF2BDE: LitStr " Like '"
  loc_BF2BE1: ConcatStr
  loc_BF2BE2: FStStrNoPop var_120
  loc_BF2BE5: FLdPr Me
  loc_BF2BE8: VCallAd Control_ID_CodiPartMsk
  loc_BF2BEB: FStAdFunc var_140
  loc_BF2BEE: FLdPr var_140
  loc_BF2BF1: LateIdLdVar var_CC DispID_22 0
  loc_BF2BF8: CStrVarTmp
  loc_BF2BF9: FStStrNoPop var_124
  loc_BF2BFC: ConcatStr
  loc_BF2BFD: FStStrNoPop var_128
  loc_BF2C00: LitStr Chr(37) & "'"
  loc_BF2C03: ConcatStr
  loc_BF2C04: FStStrNoPop var_12C
  loc_BF2C07: LitStr " AND FechAuto BETWEEN "
  loc_BF2C0A: ConcatStr
  loc_BF2C0B: FStStrNoPop var_130
  loc_BF2C0E: LitI4 1
  loc_BF2C13: LitI4 1
  loc_BF2C18: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BF2C1D: FStVarCopyObj var_154
  loc_BF2C20: FLdRfVar var_154
  loc_BF2C23: FLdRfVar var_EC
  loc_BF2C26: CStrVarTmp
  loc_BF2C27: CVarStr var_FC
  loc_BF2C2A: ImpAdCallI2 Format$(, )
  loc_BF2C2F: FStStrNoPop var_134
  loc_BF2C32: ConcatStr
  loc_BF2C33: FStStrNoPop var_138
  loc_BF2C36: LitStr " AND "
  loc_BF2C39: ConcatStr
  loc_BF2C3A: FStStrNoPop var_13C
  loc_BF2C3D: LitI4 1
  loc_BF2C42: LitI4 1
  loc_BF2C47: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BF2C4C: FStVarCopyObj var_188
  loc_BF2C4F: FLdRfVar var_188
  loc_BF2C52: FLdRfVar var_168
  loc_BF2C55: CStrVarTmp
  loc_BF2C56: CVarStr var_178
  loc_BF2C59: ImpAdCallI2 Format$(, )
  loc_BF2C5E: FStStrNoPop var_18C
  loc_BF2C61: ConcatStr
  loc_BF2C62: FStStrNoPop var_190
  loc_BF2C65: LitStr " GROUP BY Left(JeraOrga,1), CodiPart;"
  loc_BF2C68: ConcatStr
  loc_BF2C69: FStStrNoPop var_194
  loc_BF2C6C: FLdPr var_100
  loc_BF2C6F: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2C74: FFreeStr var_104 = "": var_108 = "": var_110 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = ""
  loc_BF2C9B: FFreeAd var_B8 = "": var_140 = "": var_144 = ""
  loc_BF2CA6: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_154 = "": var_168 = "": var_178 = ""
  loc_BF2CB7: FLdPr Me
  loc_BF2CBA: VCallAd Control_ID_mskDesde
  loc_BF2CBD: FStAdFunc var_144
  loc_BF2CC0: FLdPr var_144
  loc_BF2CC3: LateIdLdVar var_EC DispID_15 0
  loc_BF2CCA: PopAd
  loc_BF2CCC: FLdPr Me
  loc_BF2CCF: VCallAd Control_ID_mskHasta
  loc_BF2CD2: FStAdFunc var_158
  loc_BF2CD5: FLdPr var_158
  loc_BF2CD8: LateIdLdVar var_168 DispID_15 0
  loc_BF2CDF: PopAd
  loc_BF2CE1: LitStr "INSERT INTO itmp (JeraOrga,CodiPart,PrevImpu,DefiImpu,DeveImpu,MapaImpu,PagaImpu)"
  loc_BF2CE4: LitStr " SELECT Left(infogov.fnArmarJeraOrga(PeriInfo,CodiOrga),1) JeraOrga, CodiPart, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2CE7: ConcatStr
  loc_BF2CE8: FStStrNoPop var_104
  loc_BF2CEB: LitStr " FROM imputacion"
  loc_BF2CEE: ConcatStr
  loc_BF2CEF: FStStrNoPop var_108
  loc_BF2CF2: LitStr " WHERE PeriInfo = "
  loc_BF2CF5: ConcatStr
  loc_BF2CF6: FStStrNoPop var_110
  loc_BF2CF9: FLdRfVar var_10C
  loc_BF2CFC: FLdPr Me
  loc_BF2CFF: VCallAd Control_ID_cboPeriodo
  loc_BF2D02: FStAdFunc var_B8
  loc_BF2D05: FLdPr var_B8
  loc_BF2D08:  = Me.Text
  loc_BF2D0D: ILdRf var_10C
  loc_BF2D10: ConcatStr
  loc_BF2D11: FStStrNoPop var_114
  loc_BF2D14: LitStr " AND CodiPart "
  loc_BF2D17: ConcatStr
  loc_BF2D18: FStStrNoPop var_118
  loc_BF2D1B: ILdRf var_94
  loc_BF2D1E: ConcatStr
  loc_BF2D1F: FStStrNoPop var_11C
  loc_BF2D22: LitStr " Like '"
  loc_BF2D25: ConcatStr
  loc_BF2D26: FStStrNoPop var_120
  loc_BF2D29: FLdPr Me
  loc_BF2D2C: VCallAd Control_ID_CodiPartMsk
  loc_BF2D2F: FStAdFunc var_140
  loc_BF2D32: FLdPr var_140
  loc_BF2D35: LateIdLdVar var_CC DispID_22 0
  loc_BF2D3C: CStrVarTmp
  loc_BF2D3D: FStStrNoPop var_124
  loc_BF2D40: ConcatStr
  loc_BF2D41: FStStrNoPop var_128
  loc_BF2D44: LitStr Chr(37) & "'"
  loc_BF2D47: ConcatStr
  loc_BF2D48: FStStrNoPop var_12C
  loc_BF2D4B: LitStr " AND FechImpu BETWEEN "
  loc_BF2D4E: ConcatStr
  loc_BF2D4F: FStStrNoPop var_130
  loc_BF2D52: LitI4 1
  loc_BF2D57: LitI4 1
  loc_BF2D5C: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BF2D61: FStVarCopyObj var_154
  loc_BF2D64: FLdRfVar var_154
  loc_BF2D67: FLdRfVar var_EC
  loc_BF2D6A: CStrVarTmp
  loc_BF2D6B: CVarStr var_FC
  loc_BF2D6E: ImpAdCallI2 Format$(, )
  loc_BF2D73: FStStrNoPop var_134
  loc_BF2D76: ConcatStr
  loc_BF2D77: FStStrNoPop var_138
  loc_BF2D7A: LitStr " AND "
  loc_BF2D7D: ConcatStr
  loc_BF2D7E: FStStrNoPop var_13C
  loc_BF2D81: LitI4 1
  loc_BF2D86: LitI4 1
  loc_BF2D8B: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BF2D90: FStVarCopyObj var_188
  loc_BF2D93: FLdRfVar var_188
  loc_BF2D96: FLdRfVar var_168
  loc_BF2D99: CStrVarTmp
  loc_BF2D9A: CVarStr var_178
  loc_BF2D9D: ImpAdCallI2 Format$(, )
  loc_BF2DA2: FStStrNoPop var_18C
  loc_BF2DA5: ConcatStr
  loc_BF2DA6: FStStrNoPop var_190
  loc_BF2DA9: LitStr " GROUP BY Left(JeraOrga,1), CodiPart;"
  loc_BF2DAC: ConcatStr
  loc_BF2DAD: FStStrNoPop var_194
  loc_BF2DB0: FLdPr var_100
  loc_BF2DB3: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2DB8: FFreeStr var_104 = "": var_108 = "": var_110 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = ""
  loc_BF2DDF: FFreeAd var_B8 = "": var_140 = "": var_144 = ""
  loc_BF2DEA: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_154 = "": var_168 = "": var_178 = ""
  loc_BF2DFB: LitStr "REPLACE INTO final"
  loc_BF2DFE: LitStr " SELECT '0', 0, '', Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2E01: ConcatStr
  loc_BF2E02: FStStrNoPop var_104
  loc_BF2E05: LitStr " FROM itmp"
  loc_BF2E08: ConcatStr
  loc_BF2E09: FStStrNoPop var_108
  loc_BF2E0C: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF2E0F: ConcatStr
  loc_BF2E10: FStStrNoPop var_10C
  loc_BF2E13: FLdPr var_100
  loc_BF2E16: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2E1B: FFreeStr var_104 = "": var_108 = ""
  loc_BF2E24: LitStr "REPLACE INTO final"
  loc_BF2E27: LitStr " SELECT JeraOrga, 1, Concat(Left(CodiPart,1),'0000000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2E2A: ConcatStr
  loc_BF2E2B: FStStrNoPop var_104
  loc_BF2E2E: LitStr " FROM itmp"
  loc_BF2E31: ConcatStr
  loc_BF2E32: FStStrNoPop var_108
  loc_BF2E35: LitStr " GROUP BY JeraOrga, Left(CodiPart,1)"
  loc_BF2E38: ConcatStr
  loc_BF2E39: FStStrNoPop var_10C
  loc_BF2E3C: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF2E3F: ConcatStr
  loc_BF2E40: FStStrNoPop var_110
  loc_BF2E43: FLdPr var_100
  loc_BF2E46: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2E4B: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF2E56: LitStr "REPLACE INTO final"
  loc_BF2E59: LitStr " SELECT JeraOrga, 2, Concat(Left(CodiPart,2),'000000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2E5C: ConcatStr
  loc_BF2E5D: FStStrNoPop var_104
  loc_BF2E60: LitStr " FROM itmp"
  loc_BF2E63: ConcatStr
  loc_BF2E64: FStStrNoPop var_108
  loc_BF2E67: LitStr " GROUP BY JeraOrga, Left(CodiPart,2)"
  loc_BF2E6A: ConcatStr
  loc_BF2E6B: FStStrNoPop var_10C
  loc_BF2E6E: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF2E71: ConcatStr
  loc_BF2E72: FStStrNoPop var_110
  loc_BF2E75: FLdPr var_100
  loc_BF2E78: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2E7D: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF2E88: LitStr "REPLACE INTO final"
  loc_BF2E8B: LitStr " SELECT JeraOrga, 3, Concat(Left(CodiPart,3),'00000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2E8E: ConcatStr
  loc_BF2E8F: FStStrNoPop var_104
  loc_BF2E92: LitStr " FROM itmp"
  loc_BF2E95: ConcatStr
  loc_BF2E96: FStStrNoPop var_108
  loc_BF2E99: LitStr " GROUP BY JeraOrga, Left(CodiPart,3)"
  loc_BF2E9C: ConcatStr
  loc_BF2E9D: FStStrNoPop var_10C
  loc_BF2EA0: LitStr " HAVING SumTotaAuto > 0  ;"
  loc_BF2EA3: ConcatStr
  loc_BF2EA4: FStStrNoPop var_110
  loc_BF2EA7: FLdPr var_100
  loc_BF2EAA: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2EAF: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF2EBA: LitStr "REPLACE INTO final"
  loc_BF2EBD: LitStr " SELECT JeraOrga, 4, Concat(Left(CodiPart,4),'0000') CodiPart, Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2EC0: ConcatStr
  loc_BF2EC1: FStStrNoPop var_104
  loc_BF2EC4: LitStr " FROM itmp"
  loc_BF2EC7: ConcatStr
  loc_BF2EC8: FStStrNoPop var_108
  loc_BF2ECB: LitStr " GROUP BY JeraOrga, Left(CodiPart,4)"
  loc_BF2ECE: ConcatStr
  loc_BF2ECF: FStStrNoPop var_10C
  loc_BF2ED2: LitStr " HAVING SumTotaAuto > 0 ;"
  loc_BF2ED5: ConcatStr
  loc_BF2ED6: FStStrNoPop var_110
  loc_BF2ED9: FLdPr var_100
  loc_BF2EDC: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2EE1: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF2EEC: LitStr "REPLACE INTO final"
  loc_BF2EEF: LitStr " SELECT JeraOrga, 5, Concat(Left(CodiPart,6),'00') CodiPart, Sum(TotaAuto), Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2EF2: ConcatStr
  loc_BF2EF3: FStStrNoPop var_104
  loc_BF2EF6: LitStr " FROM itmp"
  loc_BF2EF9: ConcatStr
  loc_BF2EFA: FStStrNoPop var_108
  loc_BF2EFD: LitStr " GROUP BY JeraOrga, Left(CodiPart,6);"
  loc_BF2F00: ConcatStr
  loc_BF2F01: FStStrNoPop var_10C
  loc_BF2F04: FLdPr var_100
  loc_BF2F07: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2F0C: FFreeStr var_104 = "": var_108 = ""
  loc_BF2F15: LitStr "REPLACE INTO final"
  loc_BF2F18: LitStr " SELECT JeraOrga, 6, CodiPart, Sum(TotaAuto), Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF2F1B: ConcatStr
  loc_BF2F1C: FStStrNoPop var_104
  loc_BF2F1F: LitStr " FROM itmp"
  loc_BF2F22: ConcatStr
  loc_BF2F23: FStStrNoPop var_108
  loc_BF2F26: LitStr " GROUP BY JeraOrga, CodiPart;"
  loc_BF2F29: ConcatStr
  loc_BF2F2A: FStStrNoPop var_10C
  loc_BF2F2D: FLdPr var_100
  loc_BF2F30: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2F35: FFreeStr var_104 = "": var_108 = ""
  loc_BF2F3E: LitStr "SELECT final.*, IFNULL(DetaPart,'') Detalle"
  loc_BF2F41: LitStr " FROM final"
  loc_BF2F44: ConcatStr
  loc_BF2F45: FStStrNoPop var_104
  loc_BF2F48: LitStr " LEFT JOIN partida ON partida.PeriInfo = "
  loc_BF2F4B: ConcatStr
  loc_BF2F4C: FStStrNoPop var_10C
  loc_BF2F4F: FLdRfVar var_108
  loc_BF2F52: FLdPr Me
  loc_BF2F55: VCallAd Control_ID_cboPeriodo
  loc_BF2F58: FStAdFunc var_B8
  loc_BF2F5B: FLdPr var_B8
  loc_BF2F5E:  = Me.Text
  loc_BF2F63: ILdRf var_108
  loc_BF2F66: ConcatStr
  loc_BF2F67: FStStrNoPop var_110
  loc_BF2F6A: LitStr " AND partida.CodiPart = IF(Length(final.Codigo)="
  loc_BF2F6D: ConcatStr
  loc_BF2F6E: FStStrNoPop var_114
  loc_BF2F71: LitI2_Byte 8
  loc_BF2F73: CStrI2
  loc_BF2F75: FStStrNoPop var_118
  loc_BF2F78: ConcatStr
  loc_BF2F79: FStStrNoPop var_11C
  loc_BF2F7C: LitStr ",Codigo,'')"
  loc_BF2F7F: ConcatStr
  loc_BF2F80: FStStrNoPop var_120
  loc_BF2F83: LitStr " ORDER BY Jurisdiccion, Codigo;"
  loc_BF2F86: ConcatStr
  loc_BF2F87: FStStrNoPop var_124
  loc_BF2F8A: FLdPr var_100
  loc_BF2F8D: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF2F92: FFreeStr var_104 = "": var_10C = "": var_108 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_BF2FA7: FFree1Ad var_B8
  loc_BF2FAA: Branch loc_BF34B9
  loc_BF2FAD: FLdPr Me
  loc_BF2FB0: VCallAd Control_ID_mskDesde
  loc_BF2FB3: FStAdFunc var_144
  loc_BF2FB6: FLdPr var_144
  loc_BF2FB9: LateIdLdVar var_EC DispID_15 0
  loc_BF2FC0: PopAd
  loc_BF2FC2: FLdPr Me
  loc_BF2FC5: VCallAd Control_ID_mskHasta
  loc_BF2FC8: FStAdFunc var_158
  loc_BF2FCB: FLdPr var_158
  loc_BF2FCE: LateIdLdVar var_168 DispID_15 0
  loc_BF2FD5: PopAd
  loc_BF2FD7: LitStr "INSERT INTO itmp (JeraOrga,CodiPart,TotaAuto)"
  loc_BF2FDA: LitStr " SELECT infogov.fnArmarJeraOrga(PeriInfo,CodiOrga) JeraOrga, CodiPart, Sum(AutoAuto)+Sum(AumeAuto)-Sum(DismAuto)"
  loc_BF2FDD: ConcatStr
  loc_BF2FDE: FStStrNoPop var_104
  loc_BF2FE1: LitStr " FROM autorizado"
  loc_BF2FE4: ConcatStr
  loc_BF2FE5: FStStrNoPop var_108
  loc_BF2FE8: LitStr " WHERE PeriInfo = "
  loc_BF2FEB: ConcatStr
  loc_BF2FEC: FStStrNoPop var_110
  loc_BF2FEF: FLdRfVar var_10C
  loc_BF2FF2: FLdPr Me
  loc_BF2FF5: VCallAd Control_ID_cboPeriodo
  loc_BF2FF8: FStAdFunc var_B8
  loc_BF2FFB: FLdPr var_B8
  loc_BF2FFE:  = Me.Text
  loc_BF3003: ILdRf var_10C
  loc_BF3006: ConcatStr
  loc_BF3007: FStStrNoPop var_114
  loc_BF300A: LitStr " AND CodiPart "
  loc_BF300D: ConcatStr
  loc_BF300E: FStStrNoPop var_118
  loc_BF3011: ILdRf var_94
  loc_BF3014: ConcatStr
  loc_BF3015: FStStrNoPop var_11C
  loc_BF3018: LitStr " Like '"
  loc_BF301B: ConcatStr
  loc_BF301C: FStStrNoPop var_120
  loc_BF301F: FLdPr Me
  loc_BF3022: VCallAd Control_ID_CodiPartMsk
  loc_BF3025: FStAdFunc var_140
  loc_BF3028: FLdPr var_140
  loc_BF302B: LateIdLdVar var_CC DispID_22 0
  loc_BF3032: CStrVarTmp
  loc_BF3033: FStStrNoPop var_124
  loc_BF3036: ConcatStr
  loc_BF3037: FStStrNoPop var_128
  loc_BF303A: LitStr Chr(37) & "'"
  loc_BF303D: ConcatStr
  loc_BF303E: FStStrNoPop var_12C
  loc_BF3041: LitStr " AND FechAuto BETWEEN "
  loc_BF3044: ConcatStr
  loc_BF3045: FStStrNoPop var_130
  loc_BF3048: LitI4 1
  loc_BF304D: LitI4 1
  loc_BF3052: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BF3057: FStVarCopyObj var_154
  loc_BF305A: FLdRfVar var_154
  loc_BF305D: FLdRfVar var_EC
  loc_BF3060: CStrVarTmp
  loc_BF3061: CVarStr var_FC
  loc_BF3064: ImpAdCallI2 Format$(, )
  loc_BF3069: FStStrNoPop var_134
  loc_BF306C: ConcatStr
  loc_BF306D: FStStrNoPop var_138
  loc_BF3070: LitStr " AND "
  loc_BF3073: ConcatStr
  loc_BF3074: FStStrNoPop var_13C
  loc_BF3077: LitI4 1
  loc_BF307C: LitI4 1
  loc_BF3081: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BF3086: FStVarCopyObj var_188
  loc_BF3089: FLdRfVar var_188
  loc_BF308C: FLdRfVar var_168
  loc_BF308F: CStrVarTmp
  loc_BF3090: CVarStr var_178
  loc_BF3093: ImpAdCallI2 Format$(, )
  loc_BF3098: FStStrNoPop var_18C
  loc_BF309B: ConcatStr
  loc_BF309C: FStStrNoPop var_190
  loc_BF309F: LitStr " GROUP BY Left(JeraOrga,1), CodiPart"
  loc_BF30A2: ConcatStr
  loc_BF30A3: FStStrNoPop var_194
  loc_BF30A6: LitStr " HAVING Left(JeraOrga,1) = '"
  loc_BF30A9: ConcatStr
  loc_BF30AA: FStStrNoPop var_198
  loc_BF30AD: FLdRfVar var_BA
  loc_BF30B0: FLdPr Me
  loc_BF30B3: VCallAd Control_ID_cboCodiOrga
  loc_BF30B6: FStAdFunc var_19C
  loc_BF30B9: FLdPr var_19C
  loc_BF30BC:  = Me.ListIndex
  loc_BF30C1: FLdI2 var_BA
  loc_BF30C4: CStrUI1
  loc_BF30C6: FStStrNoPop var_1A0
  loc_BF30C9: ConcatStr
  loc_BF30CA: FStStrNoPop var_1A4
  loc_BF30CD: LitStr "'"
  loc_BF30D0: ConcatStr
  loc_BF30D1: FStStrNoPop var_1A8
  loc_BF30D4: FLdPr var_100
  loc_BF30D7: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF30DC: FFreeStr var_104 = "": var_108 = "": var_110 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A0 = "": var_1A4 = ""
  loc_BF310B: FFreeAd var_B8 = "": var_140 = "": var_144 = "": var_158 = ""
  loc_BF3118: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_154 = "": var_168 = "": var_178 = ""
  loc_BF3129: FLdPr Me
  loc_BF312C: VCallAd Control_ID_mskDesde
  loc_BF312F: FStAdFunc var_144
  loc_BF3132: FLdPr var_144
  loc_BF3135: LateIdLdVar var_EC DispID_15 0
  loc_BF313C: PopAd
  loc_BF313E: FLdPr Me
  loc_BF3141: VCallAd Control_ID_mskHasta
  loc_BF3144: FStAdFunc var_158
  loc_BF3147: FLdPr var_158
  loc_BF314A: LateIdLdVar var_168 DispID_15 0
  loc_BF3151: PopAd
  loc_BF3153: LitStr "INSERT INTO itmp (JeraOrga,CodiPart,PrevImpu,DefiImpu,DeveImpu,MapaImpu,PagaImpu)"
  loc_BF3156: LitStr " SELECT infogov.fnArmarJeraOrga(PeriInfo,CodiOrga) JeraOrga, CodiPart, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF3159: ConcatStr
  loc_BF315A: FStStrNoPop var_104
  loc_BF315D: LitStr " FROM imputacion"
  loc_BF3160: ConcatStr
  loc_BF3161: FStStrNoPop var_108
  loc_BF3164: LitStr " WHERE PeriInfo = "
  loc_BF3167: ConcatStr
  loc_BF3168: FStStrNoPop var_110
  loc_BF316B: FLdRfVar var_10C
  loc_BF316E: FLdPr Me
  loc_BF3171: VCallAd Control_ID_cboPeriodo
  loc_BF3174: FStAdFunc var_B8
  loc_BF3177: FLdPr var_B8
  loc_BF317A:  = Me.Text
  loc_BF317F: ILdRf var_10C
  loc_BF3182: ConcatStr
  loc_BF3183: FStStrNoPop var_114
  loc_BF3186: LitStr " AND CodiPart "
  loc_BF3189: ConcatStr
  loc_BF318A: FStStrNoPop var_118
  loc_BF318D: ILdRf var_94
  loc_BF3190: ConcatStr
  loc_BF3191: FStStrNoPop var_11C
  loc_BF3194: LitStr " Like '"
  loc_BF3197: ConcatStr
  loc_BF3198: FStStrNoPop var_120
  loc_BF319B: FLdPr Me
  loc_BF319E: VCallAd Control_ID_CodiPartMsk
  loc_BF31A1: FStAdFunc var_140
  loc_BF31A4: FLdPr var_140
  loc_BF31A7: LateIdLdVar var_CC DispID_22 0
  loc_BF31AE: CStrVarTmp
  loc_BF31AF: FStStrNoPop var_124
  loc_BF31B2: ConcatStr
  loc_BF31B3: FStStrNoPop var_128
  loc_BF31B6: LitStr Chr(37) & "'"
  loc_BF31B9: ConcatStr
  loc_BF31BA: FStStrNoPop var_12C
  loc_BF31BD: LitStr " AND FechImpu BETWEEN "
  loc_BF31C0: ConcatStr
  loc_BF31C1: FStStrNoPop var_130
  loc_BF31C4: LitI4 1
  loc_BF31C9: LitI4 1
  loc_BF31CE: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_BF31D3: FStVarCopyObj var_154
  loc_BF31D6: FLdRfVar var_154
  loc_BF31D9: FLdRfVar var_EC
  loc_BF31DC: CStrVarTmp
  loc_BF31DD: CVarStr var_FC
  loc_BF31E0: ImpAdCallI2 Format$(, )
  loc_BF31E5: FStStrNoPop var_134
  loc_BF31E8: ConcatStr
  loc_BF31E9: FStStrNoPop var_138
  loc_BF31EC: LitStr " AND "
  loc_BF31EF: ConcatStr
  loc_BF31F0: FStStrNoPop var_13C
  loc_BF31F3: LitI4 1
  loc_BF31F8: LitI4 1
  loc_BF31FD: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_BF3202: FStVarCopyObj var_188
  loc_BF3205: FLdRfVar var_188
  loc_BF3208: FLdRfVar var_168
  loc_BF320B: CStrVarTmp
  loc_BF320C: CVarStr var_178
  loc_BF320F: ImpAdCallI2 Format$(, )
  loc_BF3214: FStStrNoPop var_18C
  loc_BF3217: ConcatStr
  loc_BF3218: FStStrNoPop var_190
  loc_BF321B: LitStr " GROUP BY Left(JeraOrga,1), CodiPart"
  loc_BF321E: ConcatStr
  loc_BF321F: FStStrNoPop var_194
  loc_BF3222: LitStr " HAVING Left(JeraOrga,1) = '"
  loc_BF3225: ConcatStr
  loc_BF3226: FStStrNoPop var_198
  loc_BF3229: FLdRfVar var_BA
  loc_BF322C: FLdPr Me
  loc_BF322F: VCallAd Control_ID_cboCodiOrga
  loc_BF3232: FStAdFunc var_19C
  loc_BF3235: FLdPr var_19C
  loc_BF3238:  = Me.ListIndex
  loc_BF323D: FLdI2 var_BA
  loc_BF3240: CStrUI1
  loc_BF3242: FStStrNoPop var_1A0
  loc_BF3245: ConcatStr
  loc_BF3246: FStStrNoPop var_1A4
  loc_BF3249: LitStr "'"
  loc_BF324C: ConcatStr
  loc_BF324D: FStStrNoPop var_1A8
  loc_BF3250: FLdPr var_100
  loc_BF3253: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF3258: FFreeStr var_104 = "": var_108 = "": var_110 = "": var_10C = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A0 = "": var_1A4 = ""
  loc_BF3287: FFreeAd var_B8 = "": var_140 = "": var_144 = "": var_158 = ""
  loc_BF3294: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_154 = "": var_168 = "": var_178 = ""
  loc_BF32A5: LitStr "REPLACE INTO final"
  loc_BF32A8: LitStr " SELECT Left(JeraOrga, 1), 0, '', Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF32AB: ConcatStr
  loc_BF32AC: FStStrNoPop var_104
  loc_BF32AF: LitStr " FROM itmp"
  loc_BF32B2: ConcatStr
  loc_BF32B3: FStStrNoPop var_108
  loc_BF32B6: LitStr " GROUP BY LEFT(JeraOrga,1)"
  loc_BF32B9: ConcatStr
  loc_BF32BA: FStStrNoPop var_10C
  loc_BF32BD: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF32C0: ConcatStr
  loc_BF32C1: FStStrNoPop var_110
  loc_BF32C4: FLdPr var_100
  loc_BF32C7: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF32CC: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF32D7: LitStr "REPLACE INTO final"
  loc_BF32DA: LitStr " SELECT Left(JeraOrga, 1), 1, Concat(Left(CodiPart,1),'0000000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF32DD: ConcatStr
  loc_BF32DE: FStStrNoPop var_104
  loc_BF32E1: LitStr " FROM itmp"
  loc_BF32E4: ConcatStr
  loc_BF32E5: FStStrNoPop var_108
  loc_BF32E8: LitStr " GROUP BY LEFT(JeraOrga,1), Left(CodiPart,1)"
  loc_BF32EB: ConcatStr
  loc_BF32EC: FStStrNoPop var_10C
  loc_BF32EF: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF32F2: ConcatStr
  loc_BF32F3: FStStrNoPop var_110
  loc_BF32F6: FLdPr var_100
  loc_BF32F9: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF32FE: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF3309: LitStr "REPLACE INTO final"
  loc_BF330C: LitStr " SELECT Left(JeraOrga, 1), 2, Concat(Left(CodiPart,2),'000000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF330F: ConcatStr
  loc_BF3310: FStStrNoPop var_104
  loc_BF3313: LitStr " FROM itmp"
  loc_BF3316: ConcatStr
  loc_BF3317: FStStrNoPop var_108
  loc_BF331A: LitStr " GROUP BY LEFT(JeraOrga,1), Left(CodiPart,2)"
  loc_BF331D: ConcatStr
  loc_BF331E: FStStrNoPop var_10C
  loc_BF3321: LitStr " HAVING SumTotaAuto > 0;"
  loc_BF3324: ConcatStr
  loc_BF3325: FStStrNoPop var_110
  loc_BF3328: FLdPr var_100
  loc_BF332B: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF3330: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF333B: LitStr "REPLACE INTO final"
  loc_BF333E: LitStr " SELECT Left(JeraOrga,1), 3, Concat(Left(CodiPart,3),'00000'), Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), IFNULL(Sum(PrevImpu)/Sum(TotaAuto)*100,0), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), IFNULL(Sum(DeveImpu)/Sum(TotaAuto)*100,0), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF3341: ConcatStr
  loc_BF3342: FStStrNoPop var_104
  loc_BF3345: LitStr " FROM itmp"
  loc_BF3348: ConcatStr
  loc_BF3349: FStStrNoPop var_108
  loc_BF334C: LitStr " GROUP BY LEFT(JeraOrga,1), Left(CodiPart,3)"
  loc_BF334F: ConcatStr
  loc_BF3350: FStStrNoPop var_10C
  loc_BF3353: LitStr " HAVING SumTotaAuto > 0  ;"
  loc_BF3356: ConcatStr
  loc_BF3357: FStStrNoPop var_110
  loc_BF335A: FLdPr var_100
  loc_BF335D: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF3362: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF336D: LitStr "REPLACE INTO final"
  loc_BF3370: LitStr " SELECT Left(JeraOrga, 1), 4, Concat(Left(CodiPart,4),'0000') CodiPart, Sum(TotaAuto) SumTotaAuto, Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF3373: ConcatStr
  loc_BF3374: FStStrNoPop var_104
  loc_BF3377: LitStr " FROM itmp"
  loc_BF337A: ConcatStr
  loc_BF337B: FStStrNoPop var_108
  loc_BF337E: LitStr " GROUP BY LEFT(JeraOrga,1), Left(CodiPart,4)"
  loc_BF3381: ConcatStr
  loc_BF3382: FStStrNoPop var_10C
  loc_BF3385: LitStr " HAVING SumTotaAuto > 0 ;"
  loc_BF3388: ConcatStr
  loc_BF3389: FStStrNoPop var_110
  loc_BF338C: FLdPr var_100
  loc_BF338F: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF3394: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_BF339F: LitStr " REPLACE INTO final"
  loc_BF33A2: LitStr " SELECT Left(JeraOrga, 1), 5, Concat(Left(CodiPart,6),'00') CodiPart, Sum(TotaAuto), Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF33A5: ConcatStr
  loc_BF33A6: FStStrNoPop var_104
  loc_BF33A9: LitStr " FROM itmp GROUP BY LEFT(JeraOrga,1), Left(CodiPart,6);"
  loc_BF33AC: ConcatStr
  loc_BF33AD: FStStrNoPop var_108
  loc_BF33B0: FLdPr var_100
  loc_BF33B3: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF33B8: FFreeStr var_104 = ""
  loc_BF33BF: LitStr "REPLACE INTO final"
  loc_BF33C2: LitStr " SELECT Left(JeraOrga, 1), 6, CodiPart, Sum(TotaAuto), Sum(PrevImpu), if(SUM(PrevImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(PrevImpu)/SUM(TotaAuto)*100,0)), Sum(TotaAuto)-Sum(PrevImpu) SaldAuto, Sum(DefiImpu), Sum(DeveImpu), if(SUM(DeveImpu)=0 OR SUM(TotaAuto)=0,0,IFNULL(SUM(DeveImpu)/SUM(TotaAuto)*100,0)), Sum(MapaImpu), Sum(PagaImpu)"
  loc_BF33C5: ConcatStr
  loc_BF33C6: FStStrNoPop var_104
  loc_BF33C9: LitStr " FROM itmp"
  loc_BF33CC: ConcatStr
  loc_BF33CD: FStStrNoPop var_108
  loc_BF33D0: LitStr " GROUP BY LEFT(JeraOrga,1), CodiPart;"
  loc_BF33D3: ConcatStr
  loc_BF33D4: FStStrNoPop var_10C
  loc_BF33D7: FLdPr var_100
  loc_BF33DA: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF33DF: FFreeStr var_104 = "": var_108 = ""
  loc_BF33E8: LitStr "SELECT final.*, IF(Length(Codigo)="
  loc_BF33EB: LitI2_Byte 6
  loc_BF33ED: CStrUI1
  loc_BF33EF: FStStrNoPop var_104
  loc_BF33F2: ConcatStr
  loc_BF33F3: FStStrNoPop var_108
  loc_BF33F6: LitStr ", DetaOrga, DetaPart) Detalle"
  loc_BF33F9: ConcatStr
  loc_BF33FA: FStStrNoPop var_10C
  loc_BF33FD: LitStr " FROM final"
  loc_BF3400: ConcatStr
  loc_BF3401: FStStrNoPop var_110
  loc_BF3404: LitStr " LEFT JOIN infogov.organigrama ON organigrama.PeriInfo = "
  loc_BF3407: ConcatStr
  loc_BF3408: FStStrNoPop var_118
  loc_BF340B: FLdRfVar var_114
  loc_BF340E: FLdPr Me
  loc_BF3411: VCallAd Control_ID_cboPeriodo
  loc_BF3414: FStAdFunc var_B8
  loc_BF3417: FLdPr var_B8
  loc_BF341A:  = Me.Text
  loc_BF341F: ILdRf var_114
  loc_BF3422: ConcatStr
  loc_BF3423: FStStrNoPop var_11C
  loc_BF3426: LitStr " AND organigrama.CodiOrga = IF(Length(final.Codigo)="
  loc_BF3429: ConcatStr
  loc_BF342A: FStStrNoPop var_120
  loc_BF342D: LitI2_Byte 6
  loc_BF342F: CStrUI1
  loc_BF3431: FStStrNoPop var_124
  loc_BF3434: ConcatStr
  loc_BF3435: FStStrNoPop var_128
  loc_BF3438: LitStr ",Codigo,'')"
  loc_BF343B: ConcatStr
  loc_BF343C: FStStrNoPop var_12C
  loc_BF343F: LitStr " LEFT JOIN partida ON partida.PeriInfo = "
  loc_BF3442: ConcatStr
  loc_BF3443: FStStrNoPop var_134
  loc_BF3446: FLdRfVar var_130
  loc_BF3449: FLdPr Me
  loc_BF344C: VCallAd Control_ID_cboPeriodo
  loc_BF344F: FStAdFunc var_140
  loc_BF3452: FLdPr var_140
  loc_BF3455:  = Me.Text
  loc_BF345A: ILdRf var_130
  loc_BF345D: ConcatStr
  loc_BF345E: FStStrNoPop var_138
  loc_BF3461: LitStr " AND partida.CodiPart = IF(Length(final.Codigo)="
  loc_BF3464: ConcatStr
  loc_BF3465: FStStrNoPop var_13C
  loc_BF3468: LitI2_Byte 8
  loc_BF346A: CStrI2
  loc_BF346C: FStStrNoPop var_18C
  loc_BF346F: ConcatStr
  loc_BF3470: FStStrNoPop var_190
  loc_BF3473: LitStr ",Codigo,'')"
  loc_BF3476: ConcatStr
  loc_BF3477: FStStrNoPop var_194
  loc_BF347A: LitStr " ORDER BY Jurisdiccion, Codigo;"
  loc_BF347D: ConcatStr
  loc_BF347E: FStStrNoPop var_198
  loc_BF3481: FLdPr var_100
  loc_BF3484: Call clsbase.RedefineRS(from_stack_1v)
  loc_BF3489: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_118 = "": var_114 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_130 = "": var_138 = "": var_13C = "": var_18C = "": var_190 = "": var_194 = ""
  loc_BF34B2: FFreeAd var_B8 = ""
  loc_BF34B9: FLdRfVar var_1AC
  loc_BF34BC: FLdPr var_100
  loc_BF34BF: from_stack_1 = clsbase.RecordCount
  loc_BF34C4: ILdRf var_1AC
  loc_BF34C7: LitI4 1
  loc_BF34CC: LtI4
  loc_BF34CD: BranchF loc_BF34E0
  loc_BF34D0: LitI4 0
  loc_BF34D5: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BF34D8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BF34DD: Branch loc_BF3E59
  loc_BF34E0: LitI4 0
  loc_BF34E5: FLdRfVar var_1AC
  loc_BF34E8: FLdPr var_100
  loc_BF34EB: from_stack_1 = clsbase.RecordCount
  loc_BF34F0: ILdRf var_1AC
  loc_BF34F3: FLdPr Me
  loc_BF34F6: MemLdRfVar from_stack_1.global_96
  loc_BF34F9: Redim
  loc_BF3503: LitI4 0
  loc_BF3508: LitI4 1
  loc_BF350D: FLdPr Me
  loc_BF3510: MemLdRfVar from_stack_1.global_104
  loc_BF3513: Redim
  loc_BF351D: FLdPr var_100
  loc_BF3520: Call clsbase.MoveFirst()
  loc_BF3525: LitI2_Byte 1
  loc_BF3527: FLdPr Me
  loc_BF352A: MemLdRfVar from_stack_1.global_100
  loc_BF352D: FLdPr Me
  loc_BF3530: MemLdStr global_96
  loc_BF3533: LitI2_Byte 1
  loc_BF3535: FnUBound
  loc_BF3537: CI2I4
  loc_BF3538: ForI2 var_1B0
  loc_BF353E: FLdRfVar var_CC
  loc_BF3541: FLdRfVar var_144
  loc_BF3544: LitVarStr var_A4, "Jurisdiccion"
  loc_BF3549: PopAdLdVar
  loc_BF354A: FLdRfVar var_140
  loc_BF354D: FLdRfVar var_B8
  loc_BF3550: FLdPr var_100
  loc_BF3553: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3558: FLdPr var_B8
  loc_BF355B:  = Me.Fields
  loc_BF3560: FLdPr var_140
  loc_BF3563: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3568: FLdPr var_144
  loc_BF356B:  = Me.Value
  loc_BF3570: FLdRfVar var_CC
  loc_BF3573: CStrVarTmp
  loc_BF3574: FStStrNoPop var_104
  loc_BF3577: FLdPr Me
  loc_BF357A: MemLdI2 global_100
  loc_BF357D: CI4UI1
  loc_BF357E: FLdPr Me
  loc_BF3581: MemLdStr global_96
  loc_BF3584: Ary1LdPr
  loc_BF3585: MemStStrCopy
  loc_BF3589: FFree1Str var_104
  loc_BF358C: FFreeAd var_B8 = "": var_140 = ""
  loc_BF3595: FFree1Var var_CC = ""
  loc_BF3598: FLdRfVar var_CC
  loc_BF359B: FLdRfVar var_144
  loc_BF359E: LitVarStr var_A4, "Titulo"
  loc_BF35A3: PopAdLdVar
  loc_BF35A4: FLdRfVar var_140
  loc_BF35A7: FLdRfVar var_B8
  loc_BF35AA: FLdPr var_100
  loc_BF35AD: from_stack_1v = clsbase.RsFrmGet()
  loc_BF35B2: FLdPr var_B8
  loc_BF35B5:  = Me.Fields
  loc_BF35BA: FLdPr var_140
  loc_BF35BD: from_stack_2 = Me.Item(from_stack_1)
  loc_BF35C2: FLdPr var_144
  loc_BF35C5:  = Me.Value
  loc_BF35CA: FLdRfVar var_CC
  loc_BF35CD: CI2Var
  loc_BF35CE: FLdPr Me
  loc_BF35D1: MemLdI2 global_100
  loc_BF35D4: CI4UI1
  loc_BF35D5: FLdPr Me
  loc_BF35D8: MemLdStr global_96
  loc_BF35DB: Ary1LdPr
  loc_BF35DC: MemStI2 global_4
  loc_BF35DF: FFreeAd var_B8 = "": var_140 = ""
  loc_BF35E8: FFree1Var var_CC = ""
  loc_BF35EB: FLdRfVar var_144
  loc_BF35EE: LitVarStr var_A4, "Codigo"
  loc_BF35F3: PopAdLdVar
  loc_BF35F4: FLdRfVar var_140
  loc_BF35F7: FLdRfVar var_B8
  loc_BF35FA: FLdPr var_100
  loc_BF35FD: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3602: FLdPr var_B8
  loc_BF3605:  = Me.Fields
  loc_BF360A: FLdPr var_140
  loc_BF360D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3612: LitI2_Byte 0
  loc_BF3614: LitVar_Missing var_EC
  loc_BF3617: LitI2_Byte 0
  loc_BF3619: FLdZeroAd var_144
  loc_BF361C: CVarAd
  loc_BF3620: PopAdLdVar
  loc_BF3621: FLdPr Me
  loc_BF3624: MemLdI2 global_100
  loc_BF3627: CI4UI1
  loc_BF3628: FLdPr Me
  loc_BF362B: MemLdStr global_96
  loc_BF362E: AryLock
  loc_BF3631: Ary1LdPr
  loc_BF3632: MemLdRfVar from_stack_1.global_8
  loc_BF3635: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF363A: AryUnlock
  loc_BF363D: FFreeAd var_B8 = ""
  loc_BF3644: FFreeVar var_CC = ""
  loc_BF364B: FLdRfVar var_144
  loc_BF364E: LitVarStr var_A4, "Detalle"
  loc_BF3653: PopAdLdVar
  loc_BF3654: FLdRfVar var_140
  loc_BF3657: FLdRfVar var_B8
  loc_BF365A: FLdPr var_100
  loc_BF365D: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3662: FLdPr var_B8
  loc_BF3665:  = Me.Fields
  loc_BF366A: FLdPr var_140
  loc_BF366D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3672: LitI2_Byte 0
  loc_BF3674: LitVar_Missing var_EC
  loc_BF3677: LitI2_Byte 0
  loc_BF3679: FLdZeroAd var_144
  loc_BF367C: CVarAd
  loc_BF3680: PopAdLdVar
  loc_BF3681: FLdPr Me
  loc_BF3684: MemLdI2 global_100
  loc_BF3687: CI4UI1
  loc_BF3688: FLdPr Me
  loc_BF368B: MemLdStr global_96
  loc_BF368E: AryLock
  loc_BF3691: Ary1LdPr
  loc_BF3692: MemLdRfVar from_stack_1.global_12
  loc_BF3695: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF369A: AryUnlock
  loc_BF369D: FFreeAd var_B8 = ""
  loc_BF36A4: FFreeVar var_CC = ""
  loc_BF36AB: FLdPr Me
  loc_BF36AE: MemLdI2 global_100
  loc_BF36B1: CI4UI1
  loc_BF36B2: FLdPr Me
  loc_BF36B5: MemLdStr global_96
  loc_BF36B8: Ary1LdPr
  loc_BF36B9: MemLdI2 global_4
  loc_BF36BC: LitI2_Byte 0
  loc_BF36BE: EqI2
  loc_BF36BF: BranchF loc_BF3AD0
  loc_BF36C2: FLdRfVar var_144
  loc_BF36C5: LitVarStr var_A4, "TotaAuto"
  loc_BF36CA: PopAdLdVar
  loc_BF36CB: FLdRfVar var_140
  loc_BF36CE: FLdRfVar var_B8
  loc_BF36D1: FLdPr var_100
  loc_BF36D4: from_stack_1v = clsbase.RsFrmGet()
  loc_BF36D9: FLdPr var_B8
  loc_BF36DC:  = Me.Fields
  loc_BF36E1: FLdPr var_140
  loc_BF36E4: from_stack_2 = Me.Item(from_stack_1)
  loc_BF36E9: LitI2_Byte 0
  loc_BF36EB: LitI4 1
  loc_BF36F0: FLdPr Me
  loc_BF36F3: MemLdStr global_104
  loc_BF36F6: AryLock
  loc_BF36F9: Ary1LdPr
  loc_BF36FA: MemLdRfVar from_stack_1.global_16
  loc_BF36FD: CVarRef
  loc_BF3702: LitI2_Byte &HFF
  loc_BF3704: FLdZeroAd var_144
  loc_BF3707: CVarAd
  loc_BF370B: PopAdLdVar
  loc_BF370C: FLdPr Me
  loc_BF370F: MemLdI2 global_100
  loc_BF3712: CI4UI1
  loc_BF3713: FLdPr Me
  loc_BF3716: MemLdStr global_96
  loc_BF3719: AryLock
  loc_BF371C: Ary1LdPr
  loc_BF371D: MemLdRfVar from_stack_1.global_16
  loc_BF3720: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3725: AryUnlock
  loc_BF3728: AryUnlock
  loc_BF372B: FFreeAd var_B8 = ""
  loc_BF3732: FFree1Var var_CC = ""
  loc_BF3735: FLdRfVar var_144
  loc_BF3738: LitVarStr var_A4, "PrevImpu"
  loc_BF373D: PopAdLdVar
  loc_BF373E: FLdRfVar var_140
  loc_BF3741: FLdRfVar var_B8
  loc_BF3744: FLdPr var_100
  loc_BF3747: from_stack_1v = clsbase.RsFrmGet()
  loc_BF374C: FLdPr var_B8
  loc_BF374F:  = Me.Fields
  loc_BF3754: FLdPr var_140
  loc_BF3757: from_stack_2 = Me.Item(from_stack_1)
  loc_BF375C: LitI2_Byte 0
  loc_BF375E: LitI4 1
  loc_BF3763: FLdPr Me
  loc_BF3766: MemLdStr global_104
  loc_BF3769: AryLock
  loc_BF376C: Ary1LdPr
  loc_BF376D: MemLdRfVar from_stack_1.global_20
  loc_BF3770: CVarRef
  loc_BF3775: LitI2_Byte &HFF
  loc_BF3777: FLdZeroAd var_144
  loc_BF377A: CVarAd
  loc_BF377E: PopAdLdVar
  loc_BF377F: FLdPr Me
  loc_BF3782: MemLdI2 global_100
  loc_BF3785: CI4UI1
  loc_BF3786: FLdPr Me
  loc_BF3789: MemLdStr global_96
  loc_BF378C: AryLock
  loc_BF378F: Ary1LdPr
  loc_BF3790: MemLdRfVar from_stack_1.global_20
  loc_BF3793: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3798: AryUnlock
  loc_BF379B: AryUnlock
  loc_BF379E: FFreeAd var_B8 = ""
  loc_BF37A5: FFree1Var var_CC = ""
  loc_BF37A8: FLdRfVar var_144
  loc_BF37AB: LitVarStr var_A4, "PorcPrev"
  loc_BF37B0: PopAdLdVar
  loc_BF37B1: FLdRfVar var_140
  loc_BF37B4: FLdRfVar var_B8
  loc_BF37B7: FLdPr var_100
  loc_BF37BA: from_stack_1v = clsbase.RsFrmGet()
  loc_BF37BF: FLdPr var_B8
  loc_BF37C2:  = Me.Fields
  loc_BF37C7: FLdPr var_140
  loc_BF37CA: from_stack_2 = Me.Item(from_stack_1)
  loc_BF37CF: LitI2_Byte 0
  loc_BF37D1: LitI4 1
  loc_BF37D6: FLdPr Me
  loc_BF37D9: MemLdStr global_104
  loc_BF37DC: AryLock
  loc_BF37DF: Ary1LdPr
  loc_BF37E0: MemLdRfVar from_stack_1.global_24
  loc_BF37E3: CVarRef
  loc_BF37E8: LitI2_Byte &HFF
  loc_BF37EA: FLdZeroAd var_144
  loc_BF37ED: CVarAd
  loc_BF37F1: PopAdLdVar
  loc_BF37F2: FLdPr Me
  loc_BF37F5: MemLdI2 global_100
  loc_BF37F8: CI4UI1
  loc_BF37F9: FLdPr Me
  loc_BF37FC: MemLdStr global_96
  loc_BF37FF: AryLock
  loc_BF3802: Ary1LdPr
  loc_BF3803: MemLdRfVar from_stack_1.global_24
  loc_BF3806: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF380B: AryUnlock
  loc_BF380E: AryUnlock
  loc_BF3811: FFreeAd var_B8 = ""
  loc_BF3818: FFree1Var var_CC = ""
  loc_BF381B: FLdRfVar var_144
  loc_BF381E: LitVarStr var_A4, "SaldAuto"
  loc_BF3823: PopAdLdVar
  loc_BF3824: FLdRfVar var_140
  loc_BF3827: FLdRfVar var_B8
  loc_BF382A: FLdPr var_100
  loc_BF382D: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3832: FLdPr var_B8
  loc_BF3835:  = Me.Fields
  loc_BF383A: FLdPr var_140
  loc_BF383D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3842: LitI2_Byte 0
  loc_BF3844: LitI4 1
  loc_BF3849: FLdPr Me
  loc_BF384C: MemLdStr global_104
  loc_BF384F: AryLock
  loc_BF3852: Ary1LdPr
  loc_BF3853: MemLdRfVar from_stack_1.global_28
  loc_BF3856: CVarRef
  loc_BF385B: LitI2_Byte &HFF
  loc_BF385D: FLdZeroAd var_144
  loc_BF3860: CVarAd
  loc_BF3864: PopAdLdVar
  loc_BF3865: FLdPr Me
  loc_BF3868: MemLdI2 global_100
  loc_BF386B: CI4UI1
  loc_BF386C: FLdPr Me
  loc_BF386F: MemLdStr global_96
  loc_BF3872: AryLock
  loc_BF3875: Ary1LdPr
  loc_BF3876: MemLdRfVar from_stack_1.global_28
  loc_BF3879: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF387E: AryUnlock
  loc_BF3881: AryUnlock
  loc_BF3884: FFreeAd var_B8 = ""
  loc_BF388B: FFree1Var var_CC = ""
  loc_BF388E: FLdRfVar var_144
  loc_BF3891: LitVarStr var_A4, "DefiImpu"
  loc_BF3896: PopAdLdVar
  loc_BF3897: FLdRfVar var_140
  loc_BF389A: FLdRfVar var_B8
  loc_BF389D: FLdPr var_100
  loc_BF38A0: from_stack_1v = clsbase.RsFrmGet()
  loc_BF38A5: FLdPr var_B8
  loc_BF38A8:  = Me.Fields
  loc_BF38AD: FLdPr var_140
  loc_BF38B0: from_stack_2 = Me.Item(from_stack_1)
  loc_BF38B5: LitI2_Byte 0
  loc_BF38B7: LitI4 1
  loc_BF38BC: FLdPr Me
  loc_BF38BF: MemLdStr global_104
  loc_BF38C2: AryLock
  loc_BF38C5: Ary1LdPr
  loc_BF38C6: MemLdRfVar from_stack_1.global_32
  loc_BF38C9: CVarRef
  loc_BF38CE: LitI2_Byte &HFF
  loc_BF38D0: FLdZeroAd var_144
  loc_BF38D3: CVarAd
  loc_BF38D7: PopAdLdVar
  loc_BF38D8: FLdPr Me
  loc_BF38DB: MemLdI2 global_100
  loc_BF38DE: CI4UI1
  loc_BF38DF: FLdPr Me
  loc_BF38E2: MemLdStr global_96
  loc_BF38E5: AryLock
  loc_BF38E8: Ary1LdPr
  loc_BF38E9: MemLdRfVar from_stack_1.global_32
  loc_BF38EC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF38F1: AryUnlock
  loc_BF38F4: AryUnlock
  loc_BF38F7: FFreeAd var_B8 = ""
  loc_BF38FE: FFree1Var var_CC = ""
  loc_BF3901: FLdRfVar var_144
  loc_BF3904: LitVarStr var_A4, "DeveImpu"
  loc_BF3909: PopAdLdVar
  loc_BF390A: FLdRfVar var_140
  loc_BF390D: FLdRfVar var_B8
  loc_BF3910: FLdPr var_100
  loc_BF3913: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3918: FLdPr var_B8
  loc_BF391B:  = Me.Fields
  loc_BF3920: FLdPr var_140
  loc_BF3923: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3928: LitI2_Byte 0
  loc_BF392A: LitI4 1
  loc_BF392F: FLdPr Me
  loc_BF3932: MemLdStr global_104
  loc_BF3935: AryLock
  loc_BF3938: Ary1LdPr
  loc_BF3939: MemLdRfVar from_stack_1.global_36
  loc_BF393C: CVarRef
  loc_BF3941: LitI2_Byte &HFF
  loc_BF3943: FLdZeroAd var_144
  loc_BF3946: CVarAd
  loc_BF394A: PopAdLdVar
  loc_BF394B: FLdPr Me
  loc_BF394E: MemLdI2 global_100
  loc_BF3951: CI4UI1
  loc_BF3952: FLdPr Me
  loc_BF3955: MemLdStr global_96
  loc_BF3958: AryLock
  loc_BF395B: Ary1LdPr
  loc_BF395C: MemLdRfVar from_stack_1.global_36
  loc_BF395F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3964: AryUnlock
  loc_BF3967: AryUnlock
  loc_BF396A: FFreeAd var_B8 = ""
  loc_BF3971: FFree1Var var_CC = ""
  loc_BF3974: FLdRfVar var_144
  loc_BF3977: LitVarStr var_A4, "PorcDeve"
  loc_BF397C: PopAdLdVar
  loc_BF397D: FLdRfVar var_140
  loc_BF3980: FLdRfVar var_B8
  loc_BF3983: FLdPr var_100
  loc_BF3986: from_stack_1v = clsbase.RsFrmGet()
  loc_BF398B: FLdPr var_B8
  loc_BF398E:  = Me.Fields
  loc_BF3993: FLdPr var_140
  loc_BF3996: from_stack_2 = Me.Item(from_stack_1)
  loc_BF399B: LitI2_Byte 0
  loc_BF399D: LitI4 1
  loc_BF39A2: FLdPr Me
  loc_BF39A5: MemLdStr global_104
  loc_BF39A8: AryLock
  loc_BF39AB: Ary1LdPr
  loc_BF39AC: MemLdRfVar from_stack_1.global_40
  loc_BF39AF: CVarRef
  loc_BF39B4: LitI2_Byte &HFF
  loc_BF39B6: FLdZeroAd var_144
  loc_BF39B9: CVarAd
  loc_BF39BD: PopAdLdVar
  loc_BF39BE: FLdPr Me
  loc_BF39C1: MemLdI2 global_100
  loc_BF39C4: CI4UI1
  loc_BF39C5: FLdPr Me
  loc_BF39C8: MemLdStr global_96
  loc_BF39CB: AryLock
  loc_BF39CE: Ary1LdPr
  loc_BF39CF: MemLdRfVar from_stack_1.global_40
  loc_BF39D2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF39D7: AryUnlock
  loc_BF39DA: AryUnlock
  loc_BF39DD: FFreeAd var_B8 = ""
  loc_BF39E4: FFree1Var var_CC = ""
  loc_BF39E7: FLdRfVar var_144
  loc_BF39EA: LitVarStr var_A4, "MapaImpu"
  loc_BF39EF: PopAdLdVar
  loc_BF39F0: FLdRfVar var_140
  loc_BF39F3: FLdRfVar var_B8
  loc_BF39F6: FLdPr var_100
  loc_BF39F9: from_stack_1v = clsbase.RsFrmGet()
  loc_BF39FE: FLdPr var_B8
  loc_BF3A01:  = Me.Fields
  loc_BF3A06: FLdPr var_140
  loc_BF3A09: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3A0E: LitI2_Byte 0
  loc_BF3A10: LitI4 1
  loc_BF3A15: FLdPr Me
  loc_BF3A18: MemLdStr global_104
  loc_BF3A1B: AryLock
  loc_BF3A1E: Ary1LdPr
  loc_BF3A1F: MemLdRfVar from_stack_1.global_44
  loc_BF3A22: CVarRef
  loc_BF3A27: LitI2_Byte &HFF
  loc_BF3A29: FLdZeroAd var_144
  loc_BF3A2C: CVarAd
  loc_BF3A30: PopAdLdVar
  loc_BF3A31: FLdPr Me
  loc_BF3A34: MemLdI2 global_100
  loc_BF3A37: CI4UI1
  loc_BF3A38: FLdPr Me
  loc_BF3A3B: MemLdStr global_96
  loc_BF3A3E: AryLock
  loc_BF3A41: Ary1LdPr
  loc_BF3A42: MemLdRfVar from_stack_1.global_44
  loc_BF3A45: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3A4A: AryUnlock
  loc_BF3A4D: AryUnlock
  loc_BF3A50: FFreeAd var_B8 = ""
  loc_BF3A57: FFree1Var var_CC = ""
  loc_BF3A5A: FLdRfVar var_144
  loc_BF3A5D: LitVarStr var_A4, "PagaImpu"
  loc_BF3A62: PopAdLdVar
  loc_BF3A63: FLdRfVar var_140
  loc_BF3A66: FLdRfVar var_B8
  loc_BF3A69: FLdPr var_100
  loc_BF3A6C: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3A71: FLdPr var_B8
  loc_BF3A74:  = Me.Fields
  loc_BF3A79: FLdPr var_140
  loc_BF3A7C: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3A81: LitI2_Byte 0
  loc_BF3A83: LitI4 1
  loc_BF3A88: FLdPr Me
  loc_BF3A8B: MemLdStr global_104
  loc_BF3A8E: AryLock
  loc_BF3A91: Ary1LdPr
  loc_BF3A92: MemLdRfVar from_stack_1.global_48
  loc_BF3A95: CVarRef
  loc_BF3A9A: LitI2_Byte &HFF
  loc_BF3A9C: FLdZeroAd var_144
  loc_BF3A9F: CVarAd
  loc_BF3AA3: PopAdLdVar
  loc_BF3AA4: FLdPr Me
  loc_BF3AA7: MemLdI2 global_100
  loc_BF3AAA: CI4UI1
  loc_BF3AAB: FLdPr Me
  loc_BF3AAE: MemLdStr global_96
  loc_BF3AB1: AryLock
  loc_BF3AB4: Ary1LdPr
  loc_BF3AB5: MemLdRfVar from_stack_1.global_48
  loc_BF3AB8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3ABD: AryUnlock
  loc_BF3AC0: AryUnlock
  loc_BF3AC3: FFreeAd var_B8 = ""
  loc_BF3ACA: FFree1Var var_CC = ""
  loc_BF3ACD: Branch loc_BF3E30
  loc_BF3AD0: FLdRfVar var_144
  loc_BF3AD3: LitVarStr var_A4, "TotaAuto"
  loc_BF3AD8: PopAdLdVar
  loc_BF3AD9: FLdRfVar var_140
  loc_BF3ADC: FLdRfVar var_B8
  loc_BF3ADF: FLdPr var_100
  loc_BF3AE2: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3AE7: FLdPr var_B8
  loc_BF3AEA:  = Me.Fields
  loc_BF3AEF: FLdPr var_140
  loc_BF3AF2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3AF7: LitI2_Byte 0
  loc_BF3AF9: LitVar_Missing var_EC
  loc_BF3AFC: LitI2_Byte &HFF
  loc_BF3AFE: FLdZeroAd var_144
  loc_BF3B01: CVarAd
  loc_BF3B05: PopAdLdVar
  loc_BF3B06: FLdPr Me
  loc_BF3B09: MemLdI2 global_100
  loc_BF3B0C: CI4UI1
  loc_BF3B0D: FLdPr Me
  loc_BF3B10: MemLdStr global_96
  loc_BF3B13: AryLock
  loc_BF3B16: Ary1LdPr
  loc_BF3B17: MemLdRfVar from_stack_1.global_16
  loc_BF3B1A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3B1F: AryUnlock
  loc_BF3B22: FFreeAd var_B8 = ""
  loc_BF3B29: FFreeVar var_CC = ""
  loc_BF3B30: FLdRfVar var_144
  loc_BF3B33: LitVarStr var_A4, "PrevImpu"
  loc_BF3B38: PopAdLdVar
  loc_BF3B39: FLdRfVar var_140
  loc_BF3B3C: FLdRfVar var_B8
  loc_BF3B3F: FLdPr var_100
  loc_BF3B42: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3B47: FLdPr var_B8
  loc_BF3B4A:  = Me.Fields
  loc_BF3B4F: FLdPr var_140
  loc_BF3B52: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3B57: LitI2_Byte 0
  loc_BF3B59: LitVar_Missing var_EC
  loc_BF3B5C: LitI2_Byte &HFF
  loc_BF3B5E: FLdZeroAd var_144
  loc_BF3B61: CVarAd
  loc_BF3B65: PopAdLdVar
  loc_BF3B66: FLdPr Me
  loc_BF3B69: MemLdI2 global_100
  loc_BF3B6C: CI4UI1
  loc_BF3B6D: FLdPr Me
  loc_BF3B70: MemLdStr global_96
  loc_BF3B73: AryLock
  loc_BF3B76: Ary1LdPr
  loc_BF3B77: MemLdRfVar from_stack_1.global_20
  loc_BF3B7A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3B7F: AryUnlock
  loc_BF3B82: FFreeAd var_B8 = ""
  loc_BF3B89: FFreeVar var_CC = ""
  loc_BF3B90: FLdRfVar var_144
  loc_BF3B93: LitVarStr var_A4, "PorcPrev"
  loc_BF3B98: PopAdLdVar
  loc_BF3B99: FLdRfVar var_140
  loc_BF3B9C: FLdRfVar var_B8
  loc_BF3B9F: FLdPr var_100
  loc_BF3BA2: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3BA7: FLdPr var_B8
  loc_BF3BAA:  = Me.Fields
  loc_BF3BAF: FLdPr var_140
  loc_BF3BB2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3BB7: LitI2_Byte 0
  loc_BF3BB9: LitVar_Missing var_EC
  loc_BF3BBC: LitI2_Byte &HFF
  loc_BF3BBE: FLdZeroAd var_144
  loc_BF3BC1: CVarAd
  loc_BF3BC5: PopAdLdVar
  loc_BF3BC6: FLdPr Me
  loc_BF3BC9: MemLdI2 global_100
  loc_BF3BCC: CI4UI1
  loc_BF3BCD: FLdPr Me
  loc_BF3BD0: MemLdStr global_96
  loc_BF3BD3: AryLock
  loc_BF3BD6: Ary1LdPr
  loc_BF3BD7: MemLdRfVar from_stack_1.global_24
  loc_BF3BDA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3BDF: AryUnlock
  loc_BF3BE2: FFreeAd var_B8 = ""
  loc_BF3BE9: FFreeVar var_CC = ""
  loc_BF3BF0: FLdRfVar var_144
  loc_BF3BF3: LitVarStr var_A4, "SaldAuto"
  loc_BF3BF8: PopAdLdVar
  loc_BF3BF9: FLdRfVar var_140
  loc_BF3BFC: FLdRfVar var_B8
  loc_BF3BFF: FLdPr var_100
  loc_BF3C02: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3C07: FLdPr var_B8
  loc_BF3C0A:  = Me.Fields
  loc_BF3C0F: FLdPr var_140
  loc_BF3C12: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3C17: LitI2_Byte 0
  loc_BF3C19: LitVar_Missing var_EC
  loc_BF3C1C: LitI2_Byte &HFF
  loc_BF3C1E: FLdZeroAd var_144
  loc_BF3C21: CVarAd
  loc_BF3C25: PopAdLdVar
  loc_BF3C26: FLdPr Me
  loc_BF3C29: MemLdI2 global_100
  loc_BF3C2C: CI4UI1
  loc_BF3C2D: FLdPr Me
  loc_BF3C30: MemLdStr global_96
  loc_BF3C33: AryLock
  loc_BF3C36: Ary1LdPr
  loc_BF3C37: MemLdRfVar from_stack_1.global_28
  loc_BF3C3A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3C3F: AryUnlock
  loc_BF3C42: FFreeAd var_B8 = ""
  loc_BF3C49: FFreeVar var_CC = ""
  loc_BF3C50: FLdRfVar var_144
  loc_BF3C53: LitVarStr var_A4, "DefiImpu"
  loc_BF3C58: PopAdLdVar
  loc_BF3C59: FLdRfVar var_140
  loc_BF3C5C: FLdRfVar var_B8
  loc_BF3C5F: FLdPr var_100
  loc_BF3C62: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3C67: FLdPr var_B8
  loc_BF3C6A:  = Me.Fields
  loc_BF3C6F: FLdPr var_140
  loc_BF3C72: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3C77: LitI2_Byte 0
  loc_BF3C79: LitVar_Missing var_EC
  loc_BF3C7C: LitI2_Byte &HFF
  loc_BF3C7E: FLdZeroAd var_144
  loc_BF3C81: CVarAd
  loc_BF3C85: PopAdLdVar
  loc_BF3C86: FLdPr Me
  loc_BF3C89: MemLdI2 global_100
  loc_BF3C8C: CI4UI1
  loc_BF3C8D: FLdPr Me
  loc_BF3C90: MemLdStr global_96
  loc_BF3C93: AryLock
  loc_BF3C96: Ary1LdPr
  loc_BF3C97: MemLdRfVar from_stack_1.global_32
  loc_BF3C9A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3C9F: AryUnlock
  loc_BF3CA2: FFreeAd var_B8 = ""
  loc_BF3CA9: FFreeVar var_CC = ""
  loc_BF3CB0: FLdRfVar var_144
  loc_BF3CB3: LitVarStr var_A4, "DeveImpu"
  loc_BF3CB8: PopAdLdVar
  loc_BF3CB9: FLdRfVar var_140
  loc_BF3CBC: FLdRfVar var_B8
  loc_BF3CBF: FLdPr var_100
  loc_BF3CC2: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3CC7: FLdPr var_B8
  loc_BF3CCA:  = Me.Fields
  loc_BF3CCF: FLdPr var_140
  loc_BF3CD2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3CD7: LitI2_Byte 0
  loc_BF3CD9: LitVar_Missing var_EC
  loc_BF3CDC: LitI2_Byte &HFF
  loc_BF3CDE: FLdZeroAd var_144
  loc_BF3CE1: CVarAd
  loc_BF3CE5: PopAdLdVar
  loc_BF3CE6: FLdPr Me
  loc_BF3CE9: MemLdI2 global_100
  loc_BF3CEC: CI4UI1
  loc_BF3CED: FLdPr Me
  loc_BF3CF0: MemLdStr global_96
  loc_BF3CF3: AryLock
  loc_BF3CF6: Ary1LdPr
  loc_BF3CF7: MemLdRfVar from_stack_1.global_36
  loc_BF3CFA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3CFF: AryUnlock
  loc_BF3D02: FFreeAd var_B8 = ""
  loc_BF3D09: FFreeVar var_CC = ""
  loc_BF3D10: FLdRfVar var_144
  loc_BF3D13: LitVarStr var_A4, "PorcDeve"
  loc_BF3D18: PopAdLdVar
  loc_BF3D19: FLdRfVar var_140
  loc_BF3D1C: FLdRfVar var_B8
  loc_BF3D1F: FLdPr var_100
  loc_BF3D22: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3D27: FLdPr var_B8
  loc_BF3D2A:  = Me.Fields
  loc_BF3D2F: FLdPr var_140
  loc_BF3D32: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3D37: LitI2_Byte 0
  loc_BF3D39: LitVar_Missing var_EC
  loc_BF3D3C: LitI2_Byte &HFF
  loc_BF3D3E: FLdZeroAd var_144
  loc_BF3D41: CVarAd
  loc_BF3D45: PopAdLdVar
  loc_BF3D46: FLdPr Me
  loc_BF3D49: MemLdI2 global_100
  loc_BF3D4C: CI4UI1
  loc_BF3D4D: FLdPr Me
  loc_BF3D50: MemLdStr global_96
  loc_BF3D53: AryLock
  loc_BF3D56: Ary1LdPr
  loc_BF3D57: MemLdRfVar from_stack_1.global_40
  loc_BF3D5A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3D5F: AryUnlock
  loc_BF3D62: FFreeAd var_B8 = ""
  loc_BF3D69: FFreeVar var_CC = ""
  loc_BF3D70: FLdRfVar var_144
  loc_BF3D73: LitVarStr var_A4, "MapaImpu"
  loc_BF3D78: PopAdLdVar
  loc_BF3D79: FLdRfVar var_140
  loc_BF3D7C: FLdRfVar var_B8
  loc_BF3D7F: FLdPr var_100
  loc_BF3D82: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3D87: FLdPr var_B8
  loc_BF3D8A:  = Me.Fields
  loc_BF3D8F: FLdPr var_140
  loc_BF3D92: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3D97: LitI2_Byte 0
  loc_BF3D99: LitVar_Missing var_EC
  loc_BF3D9C: LitI2_Byte &HFF
  loc_BF3D9E: FLdZeroAd var_144
  loc_BF3DA1: CVarAd
  loc_BF3DA5: PopAdLdVar
  loc_BF3DA6: FLdPr Me
  loc_BF3DA9: MemLdI2 global_100
  loc_BF3DAC: CI4UI1
  loc_BF3DAD: FLdPr Me
  loc_BF3DB0: MemLdStr global_96
  loc_BF3DB3: AryLock
  loc_BF3DB6: Ary1LdPr
  loc_BF3DB7: MemLdRfVar from_stack_1.global_44
  loc_BF3DBA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3DBF: AryUnlock
  loc_BF3DC2: FFreeAd var_B8 = ""
  loc_BF3DC9: FFreeVar var_CC = ""
  loc_BF3DD0: FLdRfVar var_144
  loc_BF3DD3: LitVarStr var_A4, "PagaImpu"
  loc_BF3DD8: PopAdLdVar
  loc_BF3DD9: FLdRfVar var_140
  loc_BF3DDC: FLdRfVar var_B8
  loc_BF3DDF: FLdPr var_100
  loc_BF3DE2: from_stack_1v = clsbase.RsFrmGet()
  loc_BF3DE7: FLdPr var_B8
  loc_BF3DEA:  = Me.Fields
  loc_BF3DEF: FLdPr var_140
  loc_BF3DF2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF3DF7: LitI2_Byte 0
  loc_BF3DF9: LitVar_Missing var_EC
  loc_BF3DFC: LitI2_Byte &HFF
  loc_BF3DFE: FLdZeroAd var_144
  loc_BF3E01: CVarAd
  loc_BF3E05: PopAdLdVar
  loc_BF3E06: FLdPr Me
  loc_BF3E09: MemLdI2 global_100
  loc_BF3E0C: CI4UI1
  loc_BF3E0D: FLdPr Me
  loc_BF3E10: MemLdStr global_96
  loc_BF3E13: AryLock
  loc_BF3E16: Ary1LdPr
  loc_BF3E17: MemLdRfVar from_stack_1.global_48
  loc_BF3E1A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BF3E1F: AryUnlock
  loc_BF3E22: FFreeAd var_B8 = ""
  loc_BF3E29: FFreeVar var_CC = ""
  loc_BF3E30: LitI4 1
  loc_BF3E35: PopTmpLdAdStr var_1AC
  loc_BF3E38: FLdPr var_100
  loc_BF3E3B: Call clsbase.Mover(from_stack_1v)
  loc_BF3E40: FLdPr Me
  loc_BF3E43: MemLdRfVar from_stack_1.global_100
  loc_BF3E46: NextI2 var_1B0, loc_BF353E
  loc_BF3E4B: LitNothing
  loc_BF3E4D: FStAd var_100 
  loc_BF3E51: LitI2_Byte &HFF
  loc_BF3E53: FLdPr Me
  loc_BF3E56: MemStI2 bGenerado
  loc_BF3E59: LitI2_Byte 0
  loc_BF3E5B: FLdPr Me
  loc_BF3E5E: Me.MousePointer = from_stack_1
  loc_BF3E63: LitVarStr var_A4, vbNullString
  loc_BF3E68: PopAdLdVar
  loc_BF3E69: FLdPr Me
  loc_BF3E6C: VCallAd Control_ID_statusBar
  loc_BF3E6F: FStAdFunc var_B8
  loc_BF3E72: FLdPr var_B8
  loc_BF3E75: LateIdSt
  loc_BF3E7A: FFree1Ad var_B8
  loc_BF3E7D: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AB1380
  'Data Table: 4B854C
  loc_AB0E18: FLdRfVar var_88
  loc_AB0E1B: LitI2_Byte 0
  loc_AB0E1D: LitI2_Byte &HFF
  loc_AB0E1F: ImpAdLdI4 MemVar_C3D83C
  loc_AB0E22: FLdPr Me
  loc_AB0E25: MemLdRfVar from_stack_1.global_76
  loc_AB0E28: NewIfNullPr IFileSystem3
  loc_AB0E2B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AB0E30: ILdRf var_88
  loc_AB0E33: FLdPr Me
  loc_AB0E36: MemStVarAd
  loc_AB0E3A: FFree1Ad var_88
  loc_AB0E3D: Call Proc_234_32_AB9EFC()
  loc_AB0E42: LitI2_Byte 1
  loc_AB0E44: FLdPr Me
  loc_AB0E47: MemLdRfVar from_stack_1.global_100
  loc_AB0E4A: FLdPr Me
  loc_AB0E4D: MemLdStr global_96
  loc_AB0E50: LitI2_Byte 1
  loc_AB0E52: FnUBound
  loc_AB0E54: CI2I4
  loc_AB0E55: ForI2 var_8C
  loc_AB0E5B: FLdPr Me
  loc_AB0E5E: MemLdI2 global_100
  loc_AB0E61: CI4UI1
  loc_AB0E62: FLdPr Me
  loc_AB0E65: MemLdStr global_96
  loc_AB0E68: AryLock
  loc_AB0E6B: Ary1LdRf
  loc_AB0E6C: FStR4 var_94
  loc_AB0E6F: FMemLdI2 var_94(4)
  loc_AB0E74: FStI2 var_96
  loc_AB0E77: FLdI2 var_96
  loc_AB0E7A: LitI2_Byte 0
  loc_AB0E7C: EqI2
  loc_AB0E7D: BranchF loc_AB0E97
  loc_AB0E80: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_AB0E85: PopAdLdVar
  loc_AB0E86: FLdPr Me
  loc_AB0E89: MemLdRfVar from_stack_1.htmFile
  loc_AB0E8C: LdPrVar
  loc_AB0E8E: LateMemCall
  loc_AB0E94: Branch loc_AB0F4B
  loc_AB0E97: FLdI2 var_96
  loc_AB0E9A: LitI2_Byte 1
  loc_AB0E9C: EqI2
  loc_AB0E9D: BranchF loc_AB0EB7
  loc_AB0EA0: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_AB0EA5: PopAdLdVar
  loc_AB0EA6: FLdPr Me
  loc_AB0EA9: MemLdRfVar from_stack_1.htmFile
  loc_AB0EAC: LdPrVar
  loc_AB0EAE: LateMemCall
  loc_AB0EB4: Branch loc_AB0F4B
  loc_AB0EB7: FLdI2 var_96
  loc_AB0EBA: LitI2_Byte 2
  loc_AB0EBC: EqI2
  loc_AB0EBD: BranchF loc_AB0ED7
  loc_AB0EC0: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales2"" nowrap>"
  loc_AB0EC5: PopAdLdVar
  loc_AB0EC6: FLdPr Me
  loc_AB0EC9: MemLdRfVar from_stack_1.htmFile
  loc_AB0ECC: LdPrVar
  loc_AB0ECE: LateMemCall
  loc_AB0ED4: Branch loc_AB0F4B
  loc_AB0ED7: FLdI2 var_96
  loc_AB0EDA: LitI2_Byte 3
  loc_AB0EDC: EqI2
  loc_AB0EDD: BranchF loc_AB0EF7
  loc_AB0EE0: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales3"" nowrap>"
  loc_AB0EE5: PopAdLdVar
  loc_AB0EE6: FLdPr Me
  loc_AB0EE9: MemLdRfVar from_stack_1.htmFile
  loc_AB0EEC: LdPrVar
  loc_AB0EEE: LateMemCall
  loc_AB0EF4: Branch loc_AB0F4B
  loc_AB0EF7: FLdI2 var_96
  loc_AB0EFA: LitI2_Byte 4
  loc_AB0EFC: EqI2
  loc_AB0EFD: BranchF loc_AB0F17
  loc_AB0F00: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales4"" nowrap>"
  loc_AB0F05: PopAdLdVar
  loc_AB0F06: FLdPr Me
  loc_AB0F09: MemLdRfVar from_stack_1.htmFile
  loc_AB0F0C: LdPrVar
  loc_AB0F0E: LateMemCall
  loc_AB0F14: Branch loc_AB0F4B
  loc_AB0F17: FLdI2 var_96
  loc_AB0F1A: LitI2_Byte 5
  loc_AB0F1C: EqI2
  loc_AB0F1D: BranchF loc_AB0F37
  loc_AB0F20: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales5"" nowrap>"
  loc_AB0F25: PopAdLdVar
  loc_AB0F26: FLdPr Me
  loc_AB0F29: MemLdRfVar from_stack_1.htmFile
  loc_AB0F2C: LdPrVar
  loc_AB0F2E: LateMemCall
  loc_AB0F34: Branch loc_AB0F4B
  loc_AB0F37: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB0F3C: PopAdLdVar
  loc_AB0F3D: FLdPr Me
  loc_AB0F40: MemLdRfVar from_stack_1.htmFile
  loc_AB0F43: LdPrVar
  loc_AB0F45: LateMemCall
  loc_AB0F4B: LitI4 0
  loc_AB0F50: LitI4 0
  loc_AB0F55: LitI2_Byte 0
  loc_AB0F57: LitStr "left"
  loc_AB0F5A: FMemLdR4 var_94(8)
  loc_AB0F5F: LitStr " - "
  loc_AB0F62: ConcatStr
  loc_AB0F63: FStStrNoPop var_BC
  loc_AB0F66: FMemLdR4 var_94(12)
  loc_AB0F6B: ConcatStr
  loc_AB0F6C: FStStrNoPop var_C0
  loc_AB0F6F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB0F74: CVarStr var_D0
  loc_AB0F77: PopAdLdVar
  loc_AB0F78: FLdPr Me
  loc_AB0F7B: MemLdRfVar from_stack_1.htmFile
  loc_AB0F7E: LdPrVar
  loc_AB0F80: LateMemCall
  loc_AB0F86: FFreeStr var_BC = ""
  loc_AB0F8D: FFree1Var var_D0 = ""
  loc_AB0F90: LitI4 0
  loc_AB0F95: LitI4 0
  loc_AB0F9A: LitI2_Byte 0
  loc_AB0F9C: LitStr "right"
  loc_AB0F9F: FMemLdR4 var_94(16)
  loc_AB0FA4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB0FA9: CVarStr var_D0
  loc_AB0FAC: PopAdLdVar
  loc_AB0FAD: FLdPr Me
  loc_AB0FB0: MemLdRfVar from_stack_1.htmFile
  loc_AB0FB3: LdPrVar
  loc_AB0FB5: LateMemCall
  loc_AB0FBB: FFree1Var var_D0 = ""
  loc_AB0FBE: LitI4 0
  loc_AB0FC3: LitI4 0
  loc_AB0FC8: LitI2_Byte 0
  loc_AB0FCA: LitStr "right"
  loc_AB0FCD: FMemLdR4 var_94(20)
  loc_AB0FD2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB0FD7: CVarStr var_D0
  loc_AB0FDA: PopAdLdVar
  loc_AB0FDB: FLdPr Me
  loc_AB0FDE: MemLdRfVar from_stack_1.htmFile
  loc_AB0FE1: LdPrVar
  loc_AB0FE3: LateMemCall
  loc_AB0FE9: FFree1Var var_D0 = ""
  loc_AB0FEC: LitI4 0
  loc_AB0FF1: LitI4 0
  loc_AB0FF6: LitI2_Byte 0
  loc_AB0FF8: LitStr "right"
  loc_AB0FFB: FMemLdR4 var_94(24)
  loc_AB1000: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB1005: CVarStr var_D0
  loc_AB1008: PopAdLdVar
  loc_AB1009: FLdPr Me
  loc_AB100C: MemLdRfVar from_stack_1.htmFile
  loc_AB100F: LdPrVar
  loc_AB1011: LateMemCall
  loc_AB1017: FFree1Var var_D0 = ""
  loc_AB101A: LitI4 0
  loc_AB101F: LitI4 0
  loc_AB1024: LitI2_Byte 0
  loc_AB1026: LitStr "right"
  loc_AB1029: FMemLdR4 var_94(28)
  loc_AB102E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB1033: CVarStr var_D0
  loc_AB1036: PopAdLdVar
  loc_AB1037: FLdPr Me
  loc_AB103A: MemLdRfVar from_stack_1.htmFile
  loc_AB103D: LdPrVar
  loc_AB103F: LateMemCall
  loc_AB1045: FFree1Var var_D0 = ""
  loc_AB1048: LitI4 0
  loc_AB104D: LitI4 0
  loc_AB1052: LitI2_Byte 0
  loc_AB1054: LitStr "right"
  loc_AB1057: FMemLdR4 var_94(32)
  loc_AB105C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB1061: CVarStr var_D0
  loc_AB1064: PopAdLdVar
  loc_AB1065: FLdPr Me
  loc_AB1068: MemLdRfVar from_stack_1.htmFile
  loc_AB106B: LdPrVar
  loc_AB106D: LateMemCall
  loc_AB1073: FFree1Var var_D0 = ""
  loc_AB1076: LitI4 0
  loc_AB107B: LitI4 0
  loc_AB1080: LitI2_Byte 0
  loc_AB1082: LitStr "right"
  loc_AB1085: FMemLdR4 var_94(36)
  loc_AB108A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB108F: CVarStr var_D0
  loc_AB1092: PopAdLdVar
  loc_AB1093: FLdPr Me
  loc_AB1096: MemLdRfVar from_stack_1.htmFile
  loc_AB1099: LdPrVar
  loc_AB109B: LateMemCall
  loc_AB10A1: FFree1Var var_D0 = ""
  loc_AB10A4: LitI4 0
  loc_AB10A9: LitI4 0
  loc_AB10AE: LitI2_Byte 0
  loc_AB10B0: LitStr "right"
  loc_AB10B3: FMemLdR4 var_94(40)
  loc_AB10B8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB10BD: CVarStr var_D0
  loc_AB10C0: PopAdLdVar
  loc_AB10C1: FLdPr Me
  loc_AB10C4: MemLdRfVar from_stack_1.htmFile
  loc_AB10C7: LdPrVar
  loc_AB10C9: LateMemCall
  loc_AB10CF: FFree1Var var_D0 = ""
  loc_AB10D2: LitI4 0
  loc_AB10D7: LitI4 0
  loc_AB10DC: LitI2_Byte 0
  loc_AB10DE: LitStr "right"
  loc_AB10E1: FMemLdR4 var_94(44)
  loc_AB10E6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB10EB: CVarStr var_D0
  loc_AB10EE: PopAdLdVar
  loc_AB10EF: FLdPr Me
  loc_AB10F2: MemLdRfVar from_stack_1.htmFile
  loc_AB10F5: LdPrVar
  loc_AB10F7: LateMemCall
  loc_AB10FD: FFree1Var var_D0 = ""
  loc_AB1100: LitI4 0
  loc_AB1105: LitI4 0
  loc_AB110A: LitI2_Byte 0
  loc_AB110C: LitStr "right"
  loc_AB110F: FMemLdR4 var_94(48)
  loc_AB1114: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB1119: CVarStr var_D0
  loc_AB111C: PopAdLdVar
  loc_AB111D: FLdPr Me
  loc_AB1120: MemLdRfVar from_stack_1.htmFile
  loc_AB1123: LdPrVar
  loc_AB1125: LateMemCall
  loc_AB112B: FFree1Var var_D0 = ""
  loc_AB112E: LitVarStr var_A8, "     </tr>"
  loc_AB1133: PopAdLdVar
  loc_AB1134: FLdPr Me
  loc_AB1137: MemLdRfVar from_stack_1.htmFile
  loc_AB113A: LdPrVar
  loc_AB113C: LateMemCall
  loc_AB1142: LitI4 0
  loc_AB1147: FStR4 var_94
  loc_AB114A: AryUnlock
  loc_AB114D: FLdPr Me
  loc_AB1150: MemLdRfVar from_stack_1.global_100
  loc_AB1153: NextI2 var_8C, loc_AB0E5B
  loc_AB1158: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_AB115D: PopAdLdVar
  loc_AB115E: FLdPr Me
  loc_AB1161: MemLdRfVar from_stack_1.htmFile
  loc_AB1164: LdPrVar
  loc_AB1166: LateMemCall
  loc_AB116C: LitI4 1
  loc_AB1171: FLdPr Me
  loc_AB1174: MemLdStr global_104
  loc_AB1177: AryLock
  loc_AB117A: Ary1LdRf
  loc_AB117B: FStR4 var_D8
  loc_AB117E: LitI4 0
  loc_AB1183: LitI4 0
  loc_AB1188: LitI2_Byte 0
  loc_AB118A: LitStr "right"
  loc_AB118D: LitStr "TOTALES"
  loc_AB1190: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB1195: CVarStr var_D0
  loc_AB1198: PopAdLdVar
  loc_AB1199: FLdPr Me
  loc_AB119C: MemLdRfVar from_stack_1.htmFile
  loc_AB119F: LdPrVar
  loc_AB11A1: LateMemCall
  loc_AB11A7: FFree1Var var_D0 = ""
  loc_AB11AA: LitI4 0
  loc_AB11AF: LitI4 0
  loc_AB11B4: LitI2_Byte 0
  loc_AB11B6: LitStr "right"
  loc_AB11B9: FMemLdR4 var_D8(16)
  loc_AB11BE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB11C3: CVarStr var_D0
  loc_AB11C6: PopAdLdVar
  loc_AB11C7: FLdPr Me
  loc_AB11CA: MemLdRfVar from_stack_1.htmFile
  loc_AB11CD: LdPrVar
  loc_AB11CF: LateMemCall
  loc_AB11D5: FFree1Var var_D0 = ""
  loc_AB11D8: LitI4 0
  loc_AB11DD: LitI4 0
  loc_AB11E2: LitI2_Byte 0
  loc_AB11E4: LitStr "right"
  loc_AB11E7: FMemLdR4 var_D8(20)
  loc_AB11EC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB11F1: CVarStr var_D0
  loc_AB11F4: PopAdLdVar
  loc_AB11F5: FLdPr Me
  loc_AB11F8: MemLdRfVar from_stack_1.htmFile
  loc_AB11FB: LdPrVar
  loc_AB11FD: LateMemCall
  loc_AB1203: FFree1Var var_D0 = ""
  loc_AB1206: LitI4 0
  loc_AB120B: LitI4 0
  loc_AB1210: LitI2_Byte 0
  loc_AB1212: LitStr "right"
  loc_AB1215: FMemLdR4 var_D8(24)
  loc_AB121A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB121F: CVarStr var_D0
  loc_AB1222: PopAdLdVar
  loc_AB1223: FLdPr Me
  loc_AB1226: MemLdRfVar from_stack_1.htmFile
  loc_AB1229: LdPrVar
  loc_AB122B: LateMemCall
  loc_AB1231: FFree1Var var_D0 = ""
  loc_AB1234: LitI4 0
  loc_AB1239: LitI4 0
  loc_AB123E: LitI2_Byte 0
  loc_AB1240: LitStr "right"
  loc_AB1243: FMemLdR4 var_D8(28)
  loc_AB1248: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB124D: CVarStr var_D0
  loc_AB1250: PopAdLdVar
  loc_AB1251: FLdPr Me
  loc_AB1254: MemLdRfVar from_stack_1.htmFile
  loc_AB1257: LdPrVar
  loc_AB1259: LateMemCall
  loc_AB125F: FFree1Var var_D0 = ""
  loc_AB1262: LitI4 0
  loc_AB1267: LitI4 0
  loc_AB126C: LitI2_Byte 0
  loc_AB126E: LitStr "right"
  loc_AB1271: FMemLdR4 var_D8(32)
  loc_AB1276: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB127B: CVarStr var_D0
  loc_AB127E: PopAdLdVar
  loc_AB127F: FLdPr Me
  loc_AB1282: MemLdRfVar from_stack_1.htmFile
  loc_AB1285: LdPrVar
  loc_AB1287: LateMemCall
  loc_AB128D: FFree1Var var_D0 = ""
  loc_AB1290: LitI4 0
  loc_AB1295: LitI4 0
  loc_AB129A: LitI2_Byte 0
  loc_AB129C: LitStr "right"
  loc_AB129F: FMemLdR4 var_D8(36)
  loc_AB12A4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB12A9: CVarStr var_D0
  loc_AB12AC: PopAdLdVar
  loc_AB12AD: FLdPr Me
  loc_AB12B0: MemLdRfVar from_stack_1.htmFile
  loc_AB12B3: LdPrVar
  loc_AB12B5: LateMemCall
  loc_AB12BB: FFree1Var var_D0 = ""
  loc_AB12BE: LitI4 0
  loc_AB12C3: LitI4 0
  loc_AB12C8: LitI2_Byte 0
  loc_AB12CA: LitStr "right"
  loc_AB12CD: FMemLdR4 var_D8(40)
  loc_AB12D2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB12D7: CVarStr var_D0
  loc_AB12DA: PopAdLdVar
  loc_AB12DB: FLdPr Me
  loc_AB12DE: MemLdRfVar from_stack_1.htmFile
  loc_AB12E1: LdPrVar
  loc_AB12E3: LateMemCall
  loc_AB12E9: FFree1Var var_D0 = ""
  loc_AB12EC: LitI4 0
  loc_AB12F1: LitI4 0
  loc_AB12F6: LitI2_Byte 0
  loc_AB12F8: LitStr "right"
  loc_AB12FB: FMemLdR4 var_D8(44)
  loc_AB1300: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB1305: CVarStr var_D0
  loc_AB1308: PopAdLdVar
  loc_AB1309: FLdPr Me
  loc_AB130C: MemLdRfVar from_stack_1.htmFile
  loc_AB130F: LdPrVar
  loc_AB1311: LateMemCall
  loc_AB1317: FFree1Var var_D0 = ""
  loc_AB131A: LitI4 0
  loc_AB131F: LitI4 0
  loc_AB1324: LitI2_Byte 0
  loc_AB1326: LitStr "right"
  loc_AB1329: FMemLdR4 var_D8(48)
  loc_AB132E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB1333: CVarStr var_D0
  loc_AB1336: PopAdLdVar
  loc_AB1337: FLdPr Me
  loc_AB133A: MemLdRfVar from_stack_1.htmFile
  loc_AB133D: LdPrVar
  loc_AB133F: LateMemCall
  loc_AB1345: FFree1Var var_D0 = ""
  loc_AB1348: LitI4 0
  loc_AB134D: FStR4 var_D8
  loc_AB1350: AryUnlock
  loc_AB1353: LitVarStr var_A8, "     </tr>"
  loc_AB1358: PopAdLdVar
  loc_AB1359: FLdPr Me
  loc_AB135C: MemLdRfVar from_stack_1.htmFile
  loc_AB135F: LdPrVar
  loc_AB1361: LateMemCall
  loc_AB1367: Call Proc_234_33_981970()
  loc_AB136C: FLdPr Me
  loc_AB136F: MemLdRfVar from_stack_1.htmFile
  loc_AB1372: LdPrVar
  loc_AB1374: LateMemCall
  loc_AB137A: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AB137F: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94F144
  'Data Table: 4B854C
  loc_94F12C: LitI2_Byte 0
  loc_94F12E: FLdPr Me
  loc_94F131: MemStI2 bLogos
  loc_94F134: Call GeneraHTML()
  loc_94F139: LitI2_Byte &HFF
  loc_94F13B: FLdPr Me
  loc_94F13E: MemStI2 bLogos
  loc_94F141: ExitProcHresult
  loc_94F142: UMiR8
End Sub

Private Function Proc_234_32_AB9EFC() 'AB9EFC
  'Data Table: 4B854C
  loc_AB9978: LitVarStr var_94, "<html>"
  loc_AB997D: PopAdLdVar
  loc_AB997E: FLdPr Me
  loc_AB9981: MemLdRfVar from_stack_1.htmFile
  loc_AB9984: LdPrVar
  loc_AB9986: LateMemCall
  loc_AB998C: LitVarStr var_94, "<head>"
  loc_AB9991: PopAdLdVar
  loc_AB9992: FLdPr Me
  loc_AB9995: MemLdRfVar from_stack_1.htmFile
  loc_AB9998: LdPrVar
  loc_AB999A: LateMemCall
  loc_AB99A0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AB99A5: PopAdLdVar
  loc_AB99A6: FLdPr Me
  loc_AB99A9: MemLdRfVar from_stack_1.htmFile
  loc_AB99AC: LdPrVar
  loc_AB99AE: LateMemCall
  loc_AB99B4: LitStr "<title>"
  loc_AB99B7: FLdRfVar var_A8
  loc_AB99BA: FLdPr Me
  loc_AB99BD:  = Me.Caption
  loc_AB99C2: ILdRf var_A8
  loc_AB99C5: ConcatStr
  loc_AB99C6: FStStrNoPop var_AC
  loc_AB99C9: LitStr " - "
  loc_AB99CC: ConcatStr
  loc_AB99CD: FStStrNoPop var_B0
  loc_AB99D0: LitStr "Municipalidad de Guaymallén"
  loc_AB99D3: ConcatStr
  loc_AB99D4: FStStrNoPop var_B4
  loc_AB99D7: LitStr "</title>"
  loc_AB99DA: ConcatStr
  loc_AB99DB: CVarStr var_C4
  loc_AB99DE: PopAdLdVar
  loc_AB99DF: FLdPr Me
  loc_AB99E2: MemLdRfVar from_stack_1.htmFile
  loc_AB99E5: LdPrVar
  loc_AB99E7: LateMemCall
  loc_AB99ED: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_AB99F8: FFree1Var var_C4 = ""
  loc_AB99FB: LitStr vbNullString
  loc_AB99FE: ILdRf Me
  loc_AB9A01: CastAd
  loc_AB9A04: FStAdFunc var_C8
  loc_AB9A07: FLdRfVar var_C8
  loc_AB9A0A: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AB9A0F: FFree1Ad var_C8
  loc_AB9A12: LitI4 0
  loc_AB9A17: FStStrCopy var_AC
  loc_AB9A1A: FLdRfVar var_AC
  loc_AB9A1D: LitI4 0
  loc_AB9A22: FStStrCopy var_A8
  loc_AB9A25: FLdRfVar var_A8
  loc_AB9A28: LitI2_Byte &HFF
  loc_AB9A2A: PopTmpLdAd2 var_CA
  loc_AB9A2D: FLdPr Me
  loc_AB9A30: MemLdRfVar from_stack_1.htmFile
  loc_AB9A33: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AB9A38: FFreeStr var_A8 = ""
  loc_AB9A3F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AB9A44: PopAdLdVar
  loc_AB9A45: FLdPr Me
  loc_AB9A48: MemLdRfVar from_stack_1.htmFile
  loc_AB9A4B: LdPrVar
  loc_AB9A4D: LateMemCall
  loc_AB9A53: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_AB9A58: PopAdLdVar
  loc_AB9A59: FLdPr Me
  loc_AB9A5C: MemLdRfVar from_stack_1.htmFile
  loc_AB9A5F: LdPrVar
  loc_AB9A61: LateMemCall
  loc_AB9A67: LitVarStr var_94, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AB9A6C: PopAdLdVar
  loc_AB9A6D: FLdPr Me
  loc_AB9A70: MemLdRfVar from_stack_1.htmFile
  loc_AB9A73: LdPrVar
  loc_AB9A75: LateMemCall
  loc_AB9A7B: FLdPr Me
  loc_AB9A7E: MemLdI2 bLogos
  loc_AB9A81: BranchF loc_AB9AC6
  loc_AB9A84: LitVarStr var_A4, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AB9A89: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AB9A8E: FStVarCopyObj var_C4
  loc_AB9A91: FLdRfVar var_C4
  loc_AB9A94: FLdRfVar var_DC
  loc_AB9A97: ImpAdCallFPR4  = Ucase()
  loc_AB9A9C: FLdRfVar var_DC
  loc_AB9A9F: ConcatVar var_EC
  loc_AB9AA3: LitVarStr var_FC, "</p>"
  loc_AB9AA8: ConcatVar var_10C
  loc_AB9AAC: PopAdLdVar
  loc_AB9AAD: FLdPr Me
  loc_AB9AB0: MemLdRfVar from_stack_1.htmFile
  loc_AB9AB3: LdPrVar
  loc_AB9AB5: LateMemCall
  loc_AB9ABB: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_AB9AC6: LitStr "    <p>"
  loc_AB9AC9: FLdRfVar var_A8
  loc_AB9ACC: FLdPr Me
  loc_AB9ACF:  = Me.Caption
  loc_AB9AD4: ILdRf var_A8
  loc_AB9AD7: ConcatStr
  loc_AB9AD8: FStStrNoPop var_AC
  loc_AB9ADB: LitStr "</p></th>"
  loc_AB9ADE: ConcatStr
  loc_AB9ADF: CVarStr var_C4
  loc_AB9AE2: PopAdLdVar
  loc_AB9AE3: FLdPr Me
  loc_AB9AE6: MemLdRfVar from_stack_1.htmFile
  loc_AB9AE9: LdPrVar
  loc_AB9AEB: LateMemCall
  loc_AB9AF1: FFreeStr var_A8 = ""
  loc_AB9AF8: FFree1Var var_C4 = ""
  loc_AB9AFB: LitVarStr var_94, "  </tr>"
  loc_AB9B00: PopAdLdVar
  loc_AB9B01: FLdPr Me
  loc_AB9B04: MemLdRfVar from_stack_1.htmFile
  loc_AB9B07: LdPrVar
  loc_AB9B09: LateMemCall
  loc_AB9B0F: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_AB9B14: PopAdLdVar
  loc_AB9B15: FLdPr Me
  loc_AB9B18: MemLdRfVar from_stack_1.htmFile
  loc_AB9B1B: LdPrVar
  loc_AB9B1D: LateMemCall
  loc_AB9B23: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AB9B28: PopAdLdVar
  loc_AB9B29: FLdPr Me
  loc_AB9B2C: MemLdRfVar from_stack_1.htmFile
  loc_AB9B2F: LdPrVar
  loc_AB9B31: LateMemCall
  loc_AB9B37: LitVarStr var_94, "    <th align=""left"">"
  loc_AB9B3C: PopAdLdVar
  loc_AB9B3D: FLdPr Me
  loc_AB9B40: MemLdRfVar from_stack_1.htmFile
  loc_AB9B43: LdPrVar
  loc_AB9B45: LateMemCall
  loc_AB9B4B: LitStr "     Periodo: <span class=""Normal"">"
  loc_AB9B4E: FLdRfVar var_A8
  loc_AB9B51: FLdPr Me
  loc_AB9B54: VCallAd Control_ID_cboPeriodo
  loc_AB9B57: FStAdFunc var_C8
  loc_AB9B5A: FLdPr var_C8
  loc_AB9B5D:  = Me.Text
  loc_AB9B62: ILdRf var_A8
  loc_AB9B65: ConcatStr
  loc_AB9B66: FStStrNoPop var_AC
  loc_AB9B69: LitStr "</span><br>"
  loc_AB9B6C: ConcatStr
  loc_AB9B6D: CVarStr var_C4
  loc_AB9B70: PopAdLdVar
  loc_AB9B71: FLdPr Me
  loc_AB9B74: MemLdRfVar from_stack_1.htmFile
  loc_AB9B77: LdPrVar
  loc_AB9B79: LateMemCall
  loc_AB9B7F: FFreeStr var_A8 = ""
  loc_AB9B86: FFree1Ad var_C8
  loc_AB9B89: FFree1Var var_C4 = ""
  loc_AB9B8C: FLdRfVar var_CA
  loc_AB9B8F: FLdPr Me
  loc_AB9B92: VCallAd Control_ID_cboCodiOrga
  loc_AB9B95: FStAdFunc var_C8
  loc_AB9B98: FLdPr var_C8
  loc_AB9B9B:  = Me.ListIndex
  loc_AB9BA0: LitVarStr var_FC, "     Jurisdicción: <span class=""Normal"">"
  loc_AB9BA5: FLdRfVar var_A8
  loc_AB9BA8: FLdPr Me
  loc_AB9BAB: VCallAd Control_ID_cboCodiOrga
  loc_AB9BAE: FStAdFunc var_120
  loc_AB9BB1: FLdPr var_120
  loc_AB9BB4:  = Me.Text
  loc_AB9BB9: FLdZeroAd var_A8
  loc_AB9BBC: CVarStr var_DC
  loc_AB9BBF: LitVarStr var_A4, "Todas"
  loc_AB9BC4: FStVarCopyObj var_C4
  loc_AB9BC7: FLdRfVar var_C4
  loc_AB9BCA: FLdI2 var_CA
  loc_AB9BCD: LitI2_Byte 0
  loc_AB9BCF: EqI2
  loc_AB9BD0: CVarBoolI2 var_94
  loc_AB9BD4: FLdRfVar var_EC
  loc_AB9BD7: ImpAdCallFPR4  = IIf(, , )
  loc_AB9BDC: FLdRfVar var_EC
  loc_AB9BDF: ConcatVar var_10C
  loc_AB9BE3: LitVarStr var_11C, "</span><br>"
  loc_AB9BE8: ConcatVar var_130
  loc_AB9BEC: PopAdLdVar
  loc_AB9BED: FLdPr Me
  loc_AB9BF0: MemLdRfVar from_stack_1.htmFile
  loc_AB9BF3: LdPrVar
  loc_AB9BF5: LateMemCall
  loc_AB9BFB: FFreeAd var_C8 = ""
  loc_AB9C02: FFreeVar var_94 = "": var_C4 = "": var_DC = "": var_EC = "": var_10C = ""
  loc_AB9C11: FLdPr Me
  loc_AB9C14: VCallAd Control_ID_CodiPartMsk
  loc_AB9C17: FStAdFunc var_C8
  loc_AB9C1A: FLdPr var_C8
  loc_AB9C1D: LateIdLdVar var_C4 DispID_22 0
  loc_AB9C24: CStrVarTmp
  loc_AB9C25: FStStrNoPop var_A8
  loc_AB9C28: LitStr vbNullString
  loc_AB9C2B: NeStr
  loc_AB9C2D: FFree1Str var_A8
  loc_AB9C30: FFree1Ad var_C8
  loc_AB9C33: FFree1Var var_C4 = ""
  loc_AB9C36: BranchF loc_AB9CDF
  loc_AB9C39: FLdRfVar var_CA
  loc_AB9C3C: FLdPr Me
  loc_AB9C3F: VCallAd Control_ID_chkNotCodiPart
  loc_AB9C42: FStAdFunc var_C8
  loc_AB9C45: FLdPr var_C8
  loc_AB9C48:  = Me.Value
  loc_AB9C4D: LitVarStr var_11C, "     Partidas que "
  loc_AB9C52: LitVarStr var_FC, "NO"
  loc_AB9C57: FStVarCopyObj var_DC
  loc_AB9C5A: FLdRfVar var_DC
  loc_AB9C5D: LitVarStr var_A4, vbNullString
  loc_AB9C62: FStVarCopyObj var_C4
  loc_AB9C65: FLdRfVar var_C4
  loc_AB9C68: FLdI2 var_CA
  loc_AB9C6B: CI4UI1
  loc_AB9C6C: LitI4 0
  loc_AB9C71: EqI4
  loc_AB9C72: CVarBoolI2 var_94
  loc_AB9C76: FLdRfVar var_EC
  loc_AB9C79: ImpAdCallFPR4  = IIf(, , )
  loc_AB9C7E: FLdRfVar var_EC
  loc_AB9C81: ConcatVar var_10C
  loc_AB9C85: LitVarStr var_140, " comienzan con: <span class=""Normal"">"
  loc_AB9C8A: ConcatVar var_130
  loc_AB9C8E: FLdPr Me
  loc_AB9C91: VCallAd Control_ID_CodiPartMsk
  loc_AB9C94: FStAdFunc var_120
  loc_AB9C97: FLdPr var_120
  loc_AB9C9A: LateIdLdVar var_150 DispID_22 0
  loc_AB9CA1: CStrVarTmp
  loc_AB9CA2: CVarStr var_160
  loc_AB9CA5: ConcatVar var_170
  loc_AB9CA9: LitVarStr var_180, "...</span>"
  loc_AB9CAE: ConcatVar var_190
  loc_AB9CB2: PopAdLdVar
  loc_AB9CB3: FLdPr Me
  loc_AB9CB6: MemLdRfVar from_stack_1.htmFile
  loc_AB9CB9: LdPrVar
  loc_AB9CBB: LateMemCall
  loc_AB9CC1: FFreeAd var_C8 = ""
  loc_AB9CC8: FFreeVar var_94 = "": var_C4 = "": var_DC = "": var_EC = "": var_10C = "": var_150 = "": var_130 = "": var_160 = "": var_170 = ""
  loc_AB9CDF: LitVarStr var_94, "    </th>"
  loc_AB9CE4: PopAdLdVar
  loc_AB9CE5: FLdPr Me
  loc_AB9CE8: MemLdRfVar from_stack_1.htmFile
  loc_AB9CEB: LdPrVar
  loc_AB9CED: LateMemCall
  loc_AB9CF3: LitVarStr var_94, "    <th align=""right"">"
  loc_AB9CF8: PopAdLdVar
  loc_AB9CF9: FLdPr Me
  loc_AB9CFC: MemLdRfVar from_stack_1.htmFile
  loc_AB9CFF: LdPrVar
  loc_AB9D01: LateMemCall
  loc_AB9D07: LitStr "     Desde: <span class=""Normal"">"
  loc_AB9D0A: FLdPr Me
  loc_AB9D0D: VCallAd Control_ID_mskDesde
  loc_AB9D10: FStAdFunc var_C8
  loc_AB9D13: FLdPr var_C8
  loc_AB9D16: LateIdLdVar var_C4 DispID_15 0
  loc_AB9D1D: CStrVarTmp
  loc_AB9D1E: FStStrNoPop var_A8
  loc_AB9D21: ConcatStr
  loc_AB9D22: FStStrNoPop var_AC
  loc_AB9D25: LitStr "</span><br>"
  loc_AB9D28: ConcatStr
  loc_AB9D29: CVarStr var_DC
  loc_AB9D2C: PopAdLdVar
  loc_AB9D2D: FLdPr Me
  loc_AB9D30: MemLdRfVar from_stack_1.htmFile
  loc_AB9D33: LdPrVar
  loc_AB9D35: LateMemCall
  loc_AB9D3B: FFreeStr var_A8 = ""
  loc_AB9D42: FFree1Ad var_C8
  loc_AB9D45: FFreeVar var_C4 = ""
  loc_AB9D4C: LitStr "     Hasta: <span class=""Normal"">"
  loc_AB9D4F: FLdPr Me
  loc_AB9D52: VCallAd Control_ID_mskHasta
  loc_AB9D55: FStAdFunc var_C8
  loc_AB9D58: FLdPr var_C8
  loc_AB9D5B: LateIdLdVar var_C4 DispID_15 0
  loc_AB9D62: CStrVarTmp
  loc_AB9D63: FStStrNoPop var_A8
  loc_AB9D66: ConcatStr
  loc_AB9D67: FStStrNoPop var_AC
  loc_AB9D6A: LitStr "</span>"
  loc_AB9D6D: ConcatStr
  loc_AB9D6E: CVarStr var_DC
  loc_AB9D71: PopAdLdVar
  loc_AB9D72: FLdPr Me
  loc_AB9D75: MemLdRfVar from_stack_1.htmFile
  loc_AB9D78: LdPrVar
  loc_AB9D7A: LateMemCall
  loc_AB9D80: FFreeStr var_A8 = ""
  loc_AB9D87: FFree1Ad var_C8
  loc_AB9D8A: FFreeVar var_C4 = ""
  loc_AB9D91: LitVarStr var_94, "    </th>"
  loc_AB9D96: PopAdLdVar
  loc_AB9D97: FLdPr Me
  loc_AB9D9A: MemLdRfVar from_stack_1.htmFile
  loc_AB9D9D: LdPrVar
  loc_AB9D9F: LateMemCall
  loc_AB9DA5: LitVarStr var_94, "  </tr>"
  loc_AB9DAA: PopAdLdVar
  loc_AB9DAB: FLdPr Me
  loc_AB9DAE: MemLdRfVar from_stack_1.htmFile
  loc_AB9DB1: LdPrVar
  loc_AB9DB3: LateMemCall
  loc_AB9DB9: LitVarStr var_94, "</table>"
  loc_AB9DBE: PopAdLdVar
  loc_AB9DBF: FLdPr Me
  loc_AB9DC2: MemLdRfVar from_stack_1.htmFile
  loc_AB9DC5: LdPrVar
  loc_AB9DC7: LateMemCall
  loc_AB9DCD: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AB9DD2: PopAdLdVar
  loc_AB9DD3: FLdPr Me
  loc_AB9DD6: MemLdRfVar from_stack_1.htmFile
  loc_AB9DD9: LdPrVar
  loc_AB9DDB: LateMemCall
  loc_AB9DE1: LitVarStr var_94, "  <THEAD>"
  loc_AB9DE6: PopAdLdVar
  loc_AB9DE7: FLdPr Me
  loc_AB9DEA: MemLdRfVar from_stack_1.htmFile
  loc_AB9DED: LdPrVar
  loc_AB9DEF: LateMemCall
  loc_AB9DF5: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AB9DFA: PopAdLdVar
  loc_AB9DFB: FLdPr Me
  loc_AB9DFE: MemLdRfVar from_stack_1.htmFile
  loc_AB9E01: LdPrVar
  loc_AB9E03: LateMemCall
  loc_AB9E09: LitVarStr var_94, "    <th>Partida</th>"
  loc_AB9E0E: PopAdLdVar
  loc_AB9E0F: FLdPr Me
  loc_AB9E12: MemLdRfVar from_stack_1.htmFile
  loc_AB9E15: LdPrVar
  loc_AB9E17: LateMemCall
  loc_AB9E1D: LitVarStr var_94, "    <th>Autorizado</th>"
  loc_AB9E22: PopAdLdVar
  loc_AB9E23: FLdPr Me
  loc_AB9E26: MemLdRfVar from_stack_1.htmFile
  loc_AB9E29: LdPrVar
  loc_AB9E2B: LateMemCall
  loc_AB9E31: LitVarStr var_94, "    <th>Preventiva</th>"
  loc_AB9E36: PopAdLdVar
  loc_AB9E37: FLdPr Me
  loc_AB9E3A: MemLdRfVar from_stack_1.htmFile
  loc_AB9E3D: LdPrVar
  loc_AB9E3F: LateMemCall
  loc_AB9E45: LitVarStr var_94, "    <th>" & Chr(37) & " Utilizado<br>(Prev./Aut.)</th>"
  loc_AB9E4A: PopAdLdVar
  loc_AB9E4B: FLdPr Me
  loc_AB9E4E: MemLdRfVar from_stack_1.htmFile
  loc_AB9E51: LdPrVar
  loc_AB9E53: LateMemCall
  loc_AB9E59: LitVarStr var_94, "    <th>Saldo disponible</th>"
  loc_AB9E5E: PopAdLdVar
  loc_AB9E5F: FLdPr Me
  loc_AB9E62: MemLdRfVar from_stack_1.htmFile
  loc_AB9E65: LdPrVar
  loc_AB9E67: LateMemCall
  loc_AB9E6D: LitVarStr var_94, "    <th>Definitiva</th>"
  loc_AB9E72: PopAdLdVar
  loc_AB9E73: FLdPr Me
  loc_AB9E76: MemLdRfVar from_stack_1.htmFile
  loc_AB9E79: LdPrVar
  loc_AB9E7B: LateMemCall
  loc_AB9E81: LitVarStr var_94, "    <th>Devengado</th>"
  loc_AB9E86: PopAdLdVar
  loc_AB9E87: FLdPr Me
  loc_AB9E8A: MemLdRfVar from_stack_1.htmFile
  loc_AB9E8D: LdPrVar
  loc_AB9E8F: LateMemCall
  loc_AB9E95: LitVarStr var_94, "    <th>" & Chr(37) & " Utilizado<br>(Dev./Aut.)</th>"
  loc_AB9E9A: PopAdLdVar
  loc_AB9E9B: FLdPr Me
  loc_AB9E9E: MemLdRfVar from_stack_1.htmFile
  loc_AB9EA1: LdPrVar
  loc_AB9EA3: LateMemCall
  loc_AB9EA9: LitVarStr var_94, "    <th>Mandado a Pagar</th>"
  loc_AB9EAE: PopAdLdVar
  loc_AB9EAF: FLdPr Me
  loc_AB9EB2: MemLdRfVar from_stack_1.htmFile
  loc_AB9EB5: LdPrVar
  loc_AB9EB7: LateMemCall
  loc_AB9EBD: LitVarStr var_94, "    <th>Pagado</th>"
  loc_AB9EC2: PopAdLdVar
  loc_AB9EC3: FLdPr Me
  loc_AB9EC6: MemLdRfVar from_stack_1.htmFile
  loc_AB9EC9: LdPrVar
  loc_AB9ECB: LateMemCall
  loc_AB9ED1: LitVarStr var_94, "  </tr>"
  loc_AB9ED6: PopAdLdVar
  loc_AB9ED7: FLdPr Me
  loc_AB9EDA: MemLdRfVar from_stack_1.htmFile
  loc_AB9EDD: LdPrVar
  loc_AB9EDF: LateMemCall
  loc_AB9EE5: LitVarStr var_94, "  </THEAD>"
  loc_AB9EEA: PopAdLdVar
  loc_AB9EEB: FLdPr Me
  loc_AB9EEE: MemLdRfVar from_stack_1.htmFile
  loc_AB9EF1: LdPrVar
  loc_AB9EF3: LateMemCall
  loc_AB9EF9: ExitProcHresult
End Function

Private Function Proc_234_33_981970() '981970
  'Data Table: 4B854C
  loc_981930: LitVarStr var_94, "</table>"
  loc_981935: PopAdLdVar
  loc_981936: FLdPr Me
  loc_981939: MemLdRfVar from_stack_1.htmFile
  loc_98193C: LdPrVar
  loc_98193E: LateMemCall
  loc_981944: LitVarStr var_94, "</body>"
  loc_981949: PopAdLdVar
  loc_98194A: FLdPr Me
  loc_98194D: MemLdRfVar from_stack_1.htmFile
  loc_981950: LdPrVar
  loc_981952: LateMemCall
  loc_981958: LitVarStr var_94, "</html>"
  loc_98195D: PopAdLdVar
  loc_98195E: FLdPr Me
  loc_981961: MemLdRfVar from_stack_1.htmFile
  loc_981964: LdPrVar
  loc_981966: LateMemCall
  loc_98196C: ExitProcHresult
End Function
