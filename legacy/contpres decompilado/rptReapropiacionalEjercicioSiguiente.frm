VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptReapropiacionalEjercicioSiguiente
  Caption = "Listado de Reapropiación al Ejercicio Siguiente"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptReapropiacionalEjercicioSiguiente.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8175
  ClientHeight = 5175
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4920
    Width = 8175
    Height = 255
    TabIndex = 26
    OleObjectBlob = "rptReapropiacionalEjercicioSiguiente.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7200
    Top = 3960
    Width = 735
    Height = 615
    TabIndex = 24
    Cancel = -1  'True
    Picture = "rptReapropiacionalEjercicioSiguiente.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptReapropiacionalEjercicioSiguiente.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3720
    Width = 3615
    Height = 1095
    TabIndex = 21
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 23
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3720
    Width = 3015
    Height = 1095
    TabIndex = 18
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7935
    Height = 3615
    TabIndex = 0
    Begin VB.CommandButton cmdHasta
      Left = 2900
      Top = 1050
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptReapropiacionalEjercicioSiguiente.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CheckBox chkExcluirTransferidos
      Caption = "Excluir transferidos:"
      Left = 600
      Top = 3120
      Width = 1695
      Height = 255
      TabIndex = 16
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 3120
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptReapropiacionalEjercicioSiguiente.frx":1142
      Style = 1
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 3120
      Top = 2160
      Width = 375
      Height = 375
      TabIndex = 14
      Picture = "rptReapropiacionalEjercicioSiguiente.frx":123C
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1680
      Top = 240
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5280
      Top = 600
      Width = 1335
      Height = 495
      TabIndex = 17
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1680
      Top = 2160
      Width = 1335
      Height = 315
      TabIndex = 13
      OleObjectBlob = "rptReapropiacionalEjercicioSiguiente.frx":1336
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1680
      Top = 1680
      Width = 1335
      Height = 285
      TabIndex = 9
      OleObjectBlob = "rptReapropiacionalEjercicioSiguiente.frx":1396
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1680
      Top = 1080
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptReapropiacionalEjercicioSiguiente.frx":13F6
    End
    Begin VB.Label lblHasta
      Caption = "Hasta:"
      Left = 950
      Top = 1100
      Width = 495
      Height = 255
      TabIndex = 5
    End
    Begin VB.Label lblDesdeFecha
      Left = 1680
      Top = 720
      Width = 1455
      Height = 255
      TabIndex = 4
    End
    Begin VB.Label lblDesde
      Caption = "Desde:"
      Left = 960
      Top = 720
      Width = 615
      Height = 255
      TabIndex = 3
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 960
      Top = 1680
      Width = 615
      Height = 315
      TabIndex = 8
    End
    Begin VB.Label Label4
      Caption = "Organigrama:"
      Left = 600
      Top = 2160
      Width = 975
      Height = 315
      TabIndex = 12
    End
    Begin VB.Label CodiPartLbl
      Left = 3600
      Top = 1680
      Width = 4215
      Height = 375
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3600
      Top = 2160
      Width = 4215
      Height = 375
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 960
      Top = 240
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7320
    Top = 4200
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 25
    OleObjectBlob = "rptReapropiacionalEjercicioSiguiente.frx":147E
  End
End

Attribute VB_Name = "rptReapropiacionalEjercicioSiguiente"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_0059A1E0
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub cmdCodiPart_Click() '9F5AC8
  'Data Table: 4A61EC
  loc_9F5998: LitNothing
  loc_9F599A: CastAd
  loc_9F599D: FStAdFuncNoPop
  loc_9F59A0: ImpAdLdRf MemVar_C3D724
  loc_9F59A3: NewIfNullPr bscPartida
  loc_9F59A6: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F59AB: FFree1Ad var_88
  loc_9F59AE: LitVar_Missing var_A8
  loc_9F59B1: PopAdLdVar
  loc_9F59B2: LitVarI4
  loc_9F59BA: PopAdLdVar
  loc_9F59BB: ImpAdLdRf MemVar_C3D724
  loc_9F59BE: NewIfNullPr bscPartida
  loc_9F59C1: bscPartida.Show from_stack_1, from_stack_2
  loc_9F59C6: FLdRfVar var_AC
  loc_9F59C9: FLdRfVar var_88
  loc_9F59CC: ImpAdLdRf MemVar_C3D724
  loc_9F59CF: NewIfNullPr bscPartida
  loc_9F59D2: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F59D7: FLdPr var_88
  loc_9F59DA: from_stack_1 = clsbase.RecordCount
  loc_9F59DF: ILdRf var_AC
  loc_9F59E2: LitI4 0
  loc_9F59E7: GtI4
  loc_9F59E8: FFree1Ad var_88
  loc_9F59EB: BranchF loc_9F5AC6
  loc_9F59EE: FLdRfVar var_C8
  loc_9F59F1: FLdRfVar var_B8
  loc_9F59F4: LitVarStr var_98, "CodiPart"
  loc_9F59F9: PopAdLdVar
  loc_9F59FA: FLdRfVar var_B4
  loc_9F59FD: FLdRfVar var_B0
  loc_9F5A00: FLdRfVar var_88
  loc_9F5A03: ImpAdLdRf MemVar_C3D724
  loc_9F5A06: NewIfNullPr bscPartida
  loc_9F5A09: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F5A0E: FLdPr var_88
  loc_9F5A11: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5A16: FLdPr var_B0
  loc_9F5A19:  = Me.Fields
  loc_9F5A1E: FLdPr var_B4
  loc_9F5A21: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5A26: FLdPr var_B8
  loc_9F5A29:  = Me.Value
  loc_9F5A2E: FLdRfVar var_C8
  loc_9F5A31: CStrVarTmp
  loc_9F5A32: CVarStr var_D8
  loc_9F5A35: PopAdLdVar
  loc_9F5A36: FLdPr Me
  loc_9F5A39: VCallAd Control_ID_CodiPartMsk
  loc_9F5A3C: FStAdFunc var_DC
  loc_9F5A3F: FLdPr var_DC
  loc_9F5A42: LateIdSt
  loc_9F5A47: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F5A54: FFreeVar var_C8 = ""
  loc_9F5A5B: FLdRfVar var_C8
  loc_9F5A5E: FLdRfVar var_B8
  loc_9F5A61: LitVarStr var_98, "DetaPart"
  loc_9F5A66: PopAdLdVar
  loc_9F5A67: FLdRfVar var_B4
  loc_9F5A6A: FLdRfVar var_B0
  loc_9F5A6D: FLdRfVar var_88
  loc_9F5A70: ImpAdLdRf MemVar_C3D724
  loc_9F5A73: NewIfNullPr bscPartida
  loc_9F5A76: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F5A7B: FLdPr var_88
  loc_9F5A7E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5A83: FLdPr var_B0
  loc_9F5A86:  = Me.Fields
  loc_9F5A8B: FLdPr var_B4
  loc_9F5A8E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5A93: FLdPr var_B8
  loc_9F5A96:  = Me.Value
  loc_9F5A9B: FLdRfVar var_C8
  loc_9F5A9E: CStrVarTmp
  loc_9F5A9F: FStStrNoPop var_E0
  loc_9F5AA2: FLdPr Me
  loc_9F5AA5: VCallAd Control_ID_CodiPartLbl
  loc_9F5AA8: FStAdFunc var_DC
  loc_9F5AAB: FLdPr var_DC
  loc_9F5AAE: Me.Caption = from_stack_1
  loc_9F5AB3: FFree1Str var_E0
  loc_9F5AB6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F5AC3: FFree1Var var_C8 = ""
  loc_9F5AC6: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97AE4C
  'Data Table: 4A61EC
  loc_97AE1C: LitVarStr var_94, "Cerrando..."
  loc_97AE21: PopAdLdVar
  loc_97AE22: FLdPr Me
  loc_97AE25: VCallAd Control_ID_statusBar
  loc_97AE28: FStAdFunc var_A8
  loc_97AE2B: FLdPr var_A8
  loc_97AE2E: LateIdSt
  loc_97AE33: FFree1Ad var_A8
  loc_97AE36: ILdRf Me
  loc_97AE39: FStAdNoPop
  loc_97AE3D: ImpAdLdRf MemVar_C44F9C
  loc_97AE40: NewIfNullPr Me
  loc_97AE43: Me.Global.Unload from_stack_1
  loc_97AE48: FFree1Ad var_A8
  loc_97AE4B: ExitProcHresult
End Sub

Private Sub Form_Load() '9E33E0
  'Data Table: 4A61EC
  loc_9E32D4: LitVarStr var_94, "######"
  loc_9E32D9: PopAdLdVar
  loc_9E32DA: FLdPr Me
  loc_9E32DD: VCallAd Control_ID_CodiOrgaMsk
  loc_9E32E0: FStAdFunc var_A8
  loc_9E32E3: FLdPr var_A8
  loc_9E32E6: LateIdSt
  loc_9E32EB: FFree1Ad var_A8
  loc_9E32EE: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9E32F3: PopAdLdVar
  loc_9E32F4: FLdPr Me
  loc_9E32F7: VCallAd Control_ID_CodiPartMsk
  loc_9E32FA: FStAdFunc var_A8
  loc_9E32FD: FLdPr var_A8
  loc_9E3300: LateIdSt
  loc_9E3305: FFree1Ad var_A8
  loc_9E3308: LitI2_Byte &HFF
  loc_9E330A: ImpAdStI2 MemVar_C3D840
  loc_9E330D: ILdRf Me
  loc_9E3310: CastAd
  loc_9E3313: FStAdFunc var_A8
  loc_9E3316: FLdRfVar var_A8
  loc_9E3319: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9E331E: FFree1Ad var_A8
  loc_9E3321: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9E3324: FLdRfVar var_AC
  loc_9E3327: NewIfNullPr clsperiodo
  loc_9E332A: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9E332F: FLdRfVar var_B0
  loc_9E3332: FLdRfVar var_AC
  loc_9E3335: NewIfNullPr clsperiodo
  loc_9E3338: from_stack_1 = clsperiodo.RecordCount
  loc_9E333D: ILdRf var_B0
  loc_9E3340: LitI4 0
  loc_9E3345: GtI4
  loc_9E3346: BranchF loc_9E33D9
  loc_9E3349: FLdRfVar var_AC
  loc_9E334C: NewIfNullPr clsperiodo
  loc_9E334F: Call clsperiodo.MoveFirst()
  loc_9E3354: FLdRfVar var_B2
  loc_9E3357: FLdRfVar var_AC
  loc_9E335A: NewIfNullPr clsperiodo
  loc_9E335D: from_stack_1 = clsperiodo.EOF
  loc_9E3362: FLdI2 var_B2
  loc_9E3365: NotI4
  loc_9E3366: BranchF loc_9E33D9
  loc_9E3369: LitVar_Missing var_A4
  loc_9E336C: PopAdLdVar
  loc_9E336D: FLdRfVar var_CC
  loc_9E3370: FLdRfVar var_BC
  loc_9E3373: LitVarStr var_94, "PeriInfo"
  loc_9E3378: PopAdLdVar
  loc_9E3379: FLdRfVar var_B8
  loc_9E337C: FLdRfVar var_A8
  loc_9E337F: FLdRfVar var_AC
  loc_9E3382: NewIfNullPr clsperiodo
  loc_9E3385: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9E338A: FLdPr var_A8
  loc_9E338D:  = Me.Fields
  loc_9E3392: FLdPr var_B8
  loc_9E3395: from_stack_2 = Me.Item(from_stack_1)
  loc_9E339A: FLdPr var_BC
  loc_9E339D:  = Me.Value
  loc_9E33A2: FLdRfVar var_CC
  loc_9E33A5: CStrVarTmp
  loc_9E33A6: FStStrNoPop var_D0
  loc_9E33A9: FLdPr Me
  loc_9E33AC: VCallAd Control_ID_cboPeriodo
  loc_9E33AF: FStAdFunc var_D4
  loc_9E33B2: FLdPr var_D4
  loc_9E33B5: Me.AddItem from_stack_1, from_stack_2
  loc_9E33BA: FFree1Str var_D0
  loc_9E33BD: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9E33C8: FFree1Var var_CC = ""
  loc_9E33CB: FLdRfVar var_AC
  loc_9E33CE: NewIfNullPr clsperiodo
  loc_9E33D1: Call clsperiodo.MoveSiguiente()
  loc_9E33D6: Branch loc_9E3354
  loc_9E33D9: Call cmdNueva_Click()
  loc_9E33DE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9656DC
  'Data Table: 4A61EC
  loc_9656C4: FLdPr Me
  loc_9656C7: VCallAd Control_ID_wbbReporte
  loc_9656CA: FStAdFunc var_88
  loc_9656CD: FLdRfVar var_88
  loc_9656D0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9656D5: FFree1Ad var_88
  loc_9656D8: ExitProcHresult
  loc_9656D9: SubI2
  loc_9656DA: LeI4
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94D688
  'Data Table: 4A61EC
  loc_94D674: FLdPr Me
  loc_94D677: VCallAd Control_ID_CodiPartMsk
  loc_94D67A: CVarAd
  loc_94D67E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D683: FFree1Var var_94 = ""
  loc_94D686: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A0868C
  'Data Table: 4A61EC
  loc_A08540: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A08543: FLdRfVar var_90
  loc_A08546: FLdPr Me
  loc_A08549: VCallAd Control_ID_cboPeriodo
  loc_A0854C: FStAdFunc var_8C
  loc_A0854F: FLdPr var_8C
  loc_A08552:  = Me.Text
  loc_A08557: ILdRf var_90
  loc_A0855A: ConcatStr
  loc_A0855B: FStStrNoPop var_94
  loc_A0855E: LitStr " AND CodiPart LIKE '"
  loc_A08561: ConcatStr
  loc_A08562: FStStrNoPop var_AC
  loc_A08565: FLdPr Me
  loc_A08568: VCallAd Control_ID_CodiPartMsk
  loc_A0856B: FStAdFunc var_98
  loc_A0856E: FLdPr var_98
  loc_A08571: LateIdLdVar var_A8 DispID_22 0
  loc_A08578: CStrVarTmp
  loc_A08579: FStStrNoPop var_B0
  loc_A0857C: ConcatStr
  loc_A0857D: FStStrNoPop var_B4
  loc_A08580: LitStr Chr(37) & "'"
  loc_A08583: ConcatStr
  loc_A08584: FStStrNoPop var_B8
  loc_A08587: FLdRfVar var_88
  loc_A0858A: NewIfNullPr clspartida
  loc_A0858D: Call clspartida.RedefineRS(from_stack_1v)
  loc_A08592: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A085A1: FFreeAd var_8C = ""
  loc_A085A8: FFree1Var var_A8 = ""
  loc_A085AB: FLdRfVar var_BC
  loc_A085AE: FLdRfVar var_88
  loc_A085B1: NewIfNullPr clspartida
  loc_A085B4: from_stack_1 = clspartida.RecordCount
  loc_A085B9: ILdRf var_BC
  loc_A085BC: FStR4 var_C0
  loc_A085BF: ILdRf var_C0
  loc_A085C2: LitI4 0
  loc_A085C7: EqI4
  loc_A085C8: BranchF loc_A085E5
  loc_A085CB: LitStr "0 registros encontrados"
  loc_A085CE: FLdPr Me
  loc_A085D1: VCallAd Control_ID_CodiPartLbl
  loc_A085D4: FStAdFunc var_8C
  loc_A085D7: FLdPr var_8C
  loc_A085DA: Me.Caption = from_stack_1
  loc_A085DF: FFree1Ad var_8C
  loc_A085E2: Branch loc_A0868A
  loc_A085E5: ILdRf var_C0
  loc_A085E8: LitI4 1
  loc_A085ED: EqI4
  loc_A085EE: BranchF loc_A08652
  loc_A085F1: FLdRfVar var_A8
  loc_A085F4: FLdRfVar var_D4
  loc_A085F7: LitVarStr var_D0, "DetaPart"
  loc_A085FC: PopAdLdVar
  loc_A085FD: FLdRfVar var_98
  loc_A08600: FLdRfVar var_8C
  loc_A08603: FLdRfVar var_88
  loc_A08606: NewIfNullPr clspartida
  loc_A08609: from_stack_1v = clspartida.RsFrmGet()
  loc_A0860E: FLdPr var_8C
  loc_A08611:  = Me.Fields
  loc_A08616: FLdPr var_98
  loc_A08619: from_stack_2 = Me.Item(from_stack_1)
  loc_A0861E: FLdPr var_D4
  loc_A08621:  = Me.Value
  loc_A08626: FLdRfVar var_A8
  loc_A08629: CStrVarTmp
  loc_A0862A: FStStrNoPop var_90
  loc_A0862D: FLdPr Me
  loc_A08630: VCallAd Control_ID_CodiPartLbl
  loc_A08633: FStAdFunc var_D8
  loc_A08636: FLdPr var_D8
  loc_A08639: Me.Caption = from_stack_1
  loc_A0863E: FFree1Str var_90
  loc_A08641: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A0864C: FFree1Var var_A8 = ""
  loc_A0864F: Branch loc_A0868A
  loc_A08652: FLdRfVar var_BC
  loc_A08655: FLdRfVar var_88
  loc_A08658: NewIfNullPr clspartida
  loc_A0865B: from_stack_1 = clspartida.RecordCount
  loc_A08660: ILdRf var_BC
  loc_A08663: CStrI4
  loc_A08665: FStStrNoPop var_90
  loc_A08668: LitStr " partidas encontradas"
  loc_A0866B: ConcatStr
  loc_A0866C: FStStrNoPop var_94
  loc_A0866F: FLdPr Me
  loc_A08672: VCallAd Control_ID_CodiPartLbl
  loc_A08675: FStAdFunc var_8C
  loc_A08678: FLdPr var_8C
  loc_A0867B: Me.Caption = from_stack_1
  loc_A08680: FFreeStr var_90 = ""
  loc_A08687: FFree1Ad var_8C
  loc_A0868A: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '965A6C
  'Data Table: 4A61EC
  loc_965A54: ILdRf Me
  loc_965A57: CastAd
  loc_965A5A: FStAdFunc var_88
  loc_965A5D: FLdRfVar var_88
  loc_965A60: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_965A65: FFree1Ad var_88
  loc_965A68: ExitProcHresult
  loc_965A69: MemLdI2 global_36
End Sub

Private Sub cboPeriodo_Click() '9D4D1C
  'Data Table: 4A61EC
  loc_9D4C34: FLdRfVar var_8C
  loc_9D4C37: FLdPr Me
  loc_9D4C3A: VCallAd Control_ID_cboPeriodo
  loc_9D4C3D: FStAdFunc var_88
  loc_9D4C40: FLdPr var_88
  loc_9D4C43:  = Me.Text
  loc_9D4C48: LitI2_Byte 1
  loc_9D4C4A: LitI2_Byte 1
  loc_9D4C4C: ILdRf var_8C
  loc_9D4C4F: CI2Str
  loc_9D4C51: FLdRfVar var_9C
  loc_9D4C54: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D4C59: FLdRfVar var_9C
  loc_9D4C5C: CStrVarVal var_A0
  loc_9D4C60: FLdPr Me
  loc_9D4C63: VCallAd Control_ID_lblDesdeFecha
  loc_9D4C66: FStAdFunc var_A4
  loc_9D4C69: FLdPr var_A4
  loc_9D4C6C: Me.Caption = from_stack_1
  loc_9D4C71: FFreeStr var_8C = ""
  loc_9D4C78: FFreeAd var_88 = ""
  loc_9D4C7F: FFree1Var var_9C = ""
  loc_9D4C82: FLdRfVar var_8C
  loc_9D4C85: FLdPr Me
  loc_9D4C88: VCallAd Control_ID_cboPeriodo
  loc_9D4C8B: FStAdFunc var_88
  loc_9D4C8E: FLdPr var_88
  loc_9D4C91:  = Me.Text
  loc_9D4C96: ILdRf var_8C
  loc_9D4C99: CI2Str
  loc_9D4C9B: ImpAdLdI2 MemVar_C3D064
  loc_9D4C9E: LtI2
  loc_9D4C9F: FFree1Str var_8C
  loc_9D4CA2: FFree1Ad var_88
  loc_9D4CA5: BranchF loc_9D4CFA
  loc_9D4CA8: FLdRfVar var_8C
  loc_9D4CAB: FLdPr Me
  loc_9D4CAE: VCallAd Control_ID_cboPeriodo
  loc_9D4CB1: FStAdFunc var_88
  loc_9D4CB4: FLdPr var_88
  loc_9D4CB7:  = Me.Text
  loc_9D4CBC: LitI2_Byte &H1F
  loc_9D4CBE: LitI2_Byte &HC
  loc_9D4CC0: ILdRf var_8C
  loc_9D4CC3: CI2Str
  loc_9D4CC5: FLdRfVar var_9C
  loc_9D4CC8: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D4CCD: FLdRfVar var_9C
  loc_9D4CD0: CStrVarTmp
  loc_9D4CD1: CVarStr var_B4
  loc_9D4CD4: PopAdLdVar
  loc_9D4CD5: FLdPr Me
  loc_9D4CD8: VCallAd Control_ID_mskHasta
  loc_9D4CDB: FStAdFunc var_A4
  loc_9D4CDE: FLdPr var_A4
  loc_9D4CE1: LateIdSt
  loc_9D4CE6: FFree1Str var_8C
  loc_9D4CE9: FFreeAd var_88 = ""
  loc_9D4CF0: FFreeVar var_9C = ""
  loc_9D4CF7: Branch loc_9D4D1A
  loc_9D4CFA: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D4CFD: CStrDate
  loc_9D4CFF: CVarStr var_9C
  loc_9D4D02: PopAdLdVar
  loc_9D4D03: FLdPr Me
  loc_9D4D06: VCallAd Control_ID_mskHasta
  loc_9D4D09: FStAdFunc var_88
  loc_9D4D0C: FLdPr var_88
  loc_9D4D0F: LateIdSt
  loc_9D4D14: FFree1Ad var_88
  loc_9D4D17: FFree1Var var_9C = ""
  loc_9D4D1A: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BFE4
  'Data Table: 4A61EC
  loc_98BFAC: FLdPr Me
  loc_98BFAF: VCallAd Control_ID_statusBar
  loc_98BFB2: FStAdFunc var_88
  loc_98BFB5: FLdPr var_88
  loc_98BFB8: LateIdLdVar var_98 DispID_1 0
  loc_98BFBF: CStrVarTmp
  loc_98BFC0: CVarStr var_A8
  loc_98BFC3: PopAdLdVar
  loc_98BFC4: FLdPr Me
  loc_98BFC7: VCallAd Control_ID_statusBar
  loc_98BFCA: FStAdFunc var_BC
  loc_98BFCD: FLdPr var_BC
  loc_98BFD0: LateIdSt
  loc_98BFD5: FFreeAd var_88 = ""
  loc_98BFDC: FFreeVar var_98 = ""
  loc_98BFE3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9F298C
  'Data Table: 4A61EC
  loc_9F2854: LitI2_Byte 0
  loc_9F2856: FLdPr Me
  loc_9F2859: MemStI2 bGenerado
  loc_9F285C: LitI2_Byte &HFF
  loc_9F285E: FLdPr Me
  loc_9F2861: MemStI2 bLogos
  loc_9F2864: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9F2869: ImpAdLdI2 MemVar_C3D064
  loc_9F286C: CStrUI1
  loc_9F286E: FStStrNoPop var_88
  loc_9F2871: FLdPr Me
  loc_9F2874: VCallAd Control_ID_cboPeriodo
  loc_9F2877: FStAdFunc var_8C
  loc_9F287A: FLdPr var_8C
  loc_9F287D: Me.Text = from_stack_1
  loc_9F2882: FFree1Str var_88
  loc_9F2885: FFree1Ad var_8C
  loc_9F2888: FLdRfVar var_88
  loc_9F288B: FLdPr Me
  loc_9F288E: VCallAd Control_ID_cboPeriodo
  loc_9F2891: FStAdFunc var_8C
  loc_9F2894: FLdPr var_8C
  loc_9F2897:  = Me.Text
  loc_9F289C: LitI2_Byte 1
  loc_9F289E: LitI2_Byte 1
  loc_9F28A0: ILdRf var_88
  loc_9F28A3: CI2Str
  loc_9F28A5: FLdRfVar var_9C
  loc_9F28A8: ImpAdCallFPR4  = DateSerial(, , )
  loc_9F28AD: FLdRfVar var_9C
  loc_9F28B0: CStrVarVal var_A0
  loc_9F28B4: FLdPr Me
  loc_9F28B7: VCallAd Control_ID_lblDesdeFecha
  loc_9F28BA: FStAdFunc var_A4
  loc_9F28BD: FLdPr var_A4
  loc_9F28C0: Me.Caption = from_stack_1
  loc_9F28C5: FFreeStr var_88 = ""
  loc_9F28CC: FFreeAd var_8C = ""
  loc_9F28D3: FFree1Var var_9C = ""
  loc_9F28D6: ImpAdLdFPR8 MemVar_C3D04C
  loc_9F28D9: CStrDate
  loc_9F28DB: CVarStr var_9C
  loc_9F28DE: PopAdLdVar
  loc_9F28DF: FLdPr Me
  loc_9F28E2: VCallAd Control_ID_mskHasta
  loc_9F28E5: FStAdFunc var_8C
  loc_9F28E8: FLdPr var_8C
  loc_9F28EB: LateIdSt
  loc_9F28F0: FFree1Ad var_8C
  loc_9F28F3: FFree1Var var_9C = ""
  loc_9F28F6: LitVarStr var_B4, vbNullString
  loc_9F28FB: PopAdLdVar
  loc_9F28FC: FLdPr Me
  loc_9F28FF: VCallAd Control_ID_CodiPartMsk
  loc_9F2902: FStAdFunc var_8C
  loc_9F2905: FLdPr var_8C
  loc_9F2908: LateIdSt
  loc_9F290D: FFree1Ad var_8C
  loc_9F2910: LitVarStr var_B4, vbNullString
  loc_9F2915: PopAdLdVar
  loc_9F2916: FLdPr Me
  loc_9F2919: VCallAd Control_ID_CodiOrgaMsk
  loc_9F291C: FStAdFunc var_8C
  loc_9F291F: FLdPr var_8C
  loc_9F2922: LateIdSt
  loc_9F2927: FFree1Ad var_8C
  loc_9F292A: LitStr vbNullString
  loc_9F292D: FLdPr Me
  loc_9F2930: VCallAd Control_ID_CodiPartLbl
  loc_9F2933: FStAdFunc var_8C
  loc_9F2936: FLdPr var_8C
  loc_9F2939: Me.Caption = from_stack_1
  loc_9F293E: FFree1Ad var_8C
  loc_9F2941: LitStr vbNullString
  loc_9F2944: FLdPr Me
  loc_9F2947: VCallAd Control_ID_CodiOrgaLbl
  loc_9F294A: FStAdFunc var_8C
  loc_9F294D: FLdPr var_8C
  loc_9F2950: Me.Caption = from_stack_1
  loc_9F2955: FFree1Ad var_8C
  loc_9F2958: LitI4 0
  loc_9F295D: CI2I4
  loc_9F295E: FLdPr Me
  loc_9F2961: VCallAd Control_ID_chkExcluirTransferidos
  loc_9F2964: FStAdFunc var_8C
  loc_9F2967: FLdPr var_8C
  loc_9F296A: Me.Value = from_stack_1
  loc_9F296F: FFree1Ad var_8C
  loc_9F2972: Call HabilitarCriterio()
  loc_9F2977: ILdRf Me
  loc_9F297A: CastAd
  loc_9F297D: FStAdFunc var_8C
  loc_9F2980: FLdRfVar var_8C
  loc_9F2983: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9F2988: FFree1Ad var_8C
  loc_9F298B: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '9507C0
  'Data Table: 4A61EC
  loc_9507AC: FLdPr Me
  loc_9507AF: VCallAd Control_ID_CodiOrgaMsk
  loc_9507B2: CVarAd
  loc_9507B6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9507BB: FFree1Var var_94 = ""
  loc_9507BE: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A08188
  'Data Table: 4A61EC
  loc_A0803C: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A0803F: FLdRfVar var_90
  loc_A08042: FLdPr Me
  loc_A08045: VCallAd Control_ID_cboPeriodo
  loc_A08048: FStAdFunc var_8C
  loc_A0804B: FLdPr var_8C
  loc_A0804E:  = Me.Text
  loc_A08053: ILdRf var_90
  loc_A08056: ConcatStr
  loc_A08057: FStStrNoPop var_94
  loc_A0805A: LitStr " AND CodiOrga LIKE '"
  loc_A0805D: ConcatStr
  loc_A0805E: FStStrNoPop var_AC
  loc_A08061: FLdPr Me
  loc_A08064: VCallAd Control_ID_CodiOrgaMsk
  loc_A08067: FStAdFunc var_98
  loc_A0806A: FLdPr var_98
  loc_A0806D: LateIdLdVar var_A8 DispID_22 0
  loc_A08074: CStrVarTmp
  loc_A08075: FStStrNoPop var_B0
  loc_A08078: ConcatStr
  loc_A08079: FStStrNoPop var_B4
  loc_A0807C: LitStr Chr(37) & "'"
  loc_A0807F: ConcatStr
  loc_A08080: FStStrNoPop var_B8
  loc_A08083: FLdRfVar var_88
  loc_A08086: NewIfNullPr clsorganigrama
  loc_A08089: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A0808E: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A0809D: FFreeAd var_8C = ""
  loc_A080A4: FFree1Var var_A8 = ""
  loc_A080A7: FLdRfVar var_BC
  loc_A080AA: FLdRfVar var_88
  loc_A080AD: NewIfNullPr clsorganigrama
  loc_A080B0: from_stack_1 = clsorganigrama.RecordCount
  loc_A080B5: ILdRf var_BC
  loc_A080B8: FStR4 var_C0
  loc_A080BB: ILdRf var_C0
  loc_A080BE: LitI4 0
  loc_A080C3: EqI4
  loc_A080C4: BranchF loc_A080E1
  loc_A080C7: LitStr "0 registros encontrados"
  loc_A080CA: FLdPr Me
  loc_A080CD: VCallAd Control_ID_CodiOrgaLbl
  loc_A080D0: FStAdFunc var_8C
  loc_A080D3: FLdPr var_8C
  loc_A080D6: Me.Caption = from_stack_1
  loc_A080DB: FFree1Ad var_8C
  loc_A080DE: Branch loc_A08186
  loc_A080E1: ILdRf var_C0
  loc_A080E4: LitI4 1
  loc_A080E9: EqI4
  loc_A080EA: BranchF loc_A0814E
  loc_A080ED: FLdRfVar var_A8
  loc_A080F0: FLdRfVar var_D4
  loc_A080F3: LitVarStr var_D0, "DetaOrga"
  loc_A080F8: PopAdLdVar
  loc_A080F9: FLdRfVar var_98
  loc_A080FC: FLdRfVar var_8C
  loc_A080FF: FLdRfVar var_88
  loc_A08102: NewIfNullPr clsorganigrama
  loc_A08105: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A0810A: FLdPr var_8C
  loc_A0810D:  = Me.Fields
  loc_A08112: FLdPr var_98
  loc_A08115: from_stack_2 = Me.Item(from_stack_1)
  loc_A0811A: FLdPr var_D4
  loc_A0811D:  = Me.Value
  loc_A08122: FLdRfVar var_A8
  loc_A08125: CStrVarTmp
  loc_A08126: FStStrNoPop var_90
  loc_A08129: FLdPr Me
  loc_A0812C: VCallAd Control_ID_CodiOrgaLbl
  loc_A0812F: FStAdFunc var_D8
  loc_A08132: FLdPr var_D8
  loc_A08135: Me.Caption = from_stack_1
  loc_A0813A: FFree1Str var_90
  loc_A0813D: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A08148: FFree1Var var_A8 = ""
  loc_A0814B: Branch loc_A08186
  loc_A0814E: FLdRfVar var_BC
  loc_A08151: FLdRfVar var_88
  loc_A08154: NewIfNullPr clsorganigrama
  loc_A08157: from_stack_1 = clsorganigrama.RecordCount
  loc_A0815C: ILdRf var_BC
  loc_A0815F: CStrI4
  loc_A08161: FStStrNoPop var_90
  loc_A08164: LitStr " organigramas encontrados"
  loc_A08167: ConcatStr
  loc_A08168: FStStrNoPop var_94
  loc_A0816B: FLdPr Me
  loc_A0816E: VCallAd Control_ID_CodiOrgaLbl
  loc_A08171: FStAdFunc var_8C
  loc_A08174: FLdPr var_8C
  loc_A08177: Me.Caption = from_stack_1
  loc_A0817C: FFreeStr var_90 = ""
  loc_A08183: FFree1Ad var_8C
  loc_A08186: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9659D4
  'Data Table: 4A61EC
  loc_9659BC: LitI2_Byte 0
  loc_9659BE: ILdRf Me
  loc_9659C1: CastAd
  loc_9659C4: FStAdFunc var_88
  loc_9659C7: FLdRfVar var_88
  loc_9659CA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9659CF: FFree1Ad var_88
  loc_9659D2: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '94D568
  'Data Table: 4A61EC
  loc_94D554: FLdPr Me
  loc_94D557: VCallAd Control_ID_mskHasta
  loc_94D55A: CVarAd
  loc_94D55E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D563: FFree1Var var_94 = ""
  loc_94D566: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B41CC
  'Data Table: 4A61EC
  loc_9B4130: FLdPr Me
  loc_9B4133: VCallAd Control_ID_mskHasta
  loc_9B4136: FStAdFunc var_88
  loc_9B4139: FLdPr var_88
  loc_9B413C: LateIdLdVar var_98 DispID_15 0
  loc_9B4143: PopAd
  loc_9B4145: FLdPr Me
  loc_9B4148: VCallAd Control_ID_mskHasta
  loc_9B414B: FStAdFunc var_AC
  loc_9B414E: LitI2_Byte 0
  loc_9B4150: PopTmpLdAd2 var_A2
  loc_9B4153: FLdZeroAd var_AC
  loc_9B4156: FStAdFunc var_A0
  loc_9B4159: FLdRfVar var_A0
  loc_9B415C: LitStr vbNullString
  loc_9B415F: LitI2_Byte 0
  loc_9B4161: LitI2_Byte 0
  loc_9B4163: FLdRfVar var_98
  loc_9B4166: CStrVarTmp
  loc_9B4167: FStStrNoPop var_9C
  loc_9B416A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B416F: FStStrNoPop var_A8
  loc_9B4172: FLdPr Me
  loc_9B4175: MemStStrCopy
  loc_9B4179: FFreeStr var_9C = ""
  loc_9B4180: FFreeAd var_88 = "": var_A0 = ""
  loc_9B4189: FFree1Var var_98 = ""
  loc_9B418C: FLdPr Me
  loc_9B418F: VCallAd Control_ID_mskHasta
  loc_9B4192: FStAdFunc var_B0
  loc_9B4195: LitNothing
  loc_9B4197: CastAd
  loc_9B419A: FStAdFunc var_AC
  loc_9B419D: FLdRfVar var_AC
  loc_9B41A0: FLdZeroAd var_B0
  loc_9B41A3: FStAdFuncNoPop
  loc_9B41A6: CastAd
  loc_9B41A9: FStAdFunc var_A0
  loc_9B41AC: FLdRfVar var_A0
  loc_9B41AF: FLdPr Me
  loc_9B41B2: MemLdRfVar from_stack_1.global_112
  loc_9B41B5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B41BA: IStI2 arg_C
  loc_9B41BD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B41C8: ExitProcHresult
End Function

Private Sub cmdXLS_Click() '967C0C
  'Data Table: 4A61EC
  loc_967BF0: LitI2_Byte &HFF
  loc_967BF2: LitI2_Byte 0
  loc_967BF4: ILdRf Me
  loc_967BF7: CastAd
  loc_967BFA: FStAdFunc var_88
  loc_967BFD: FLdRfVar var_88
  loc_967C00: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_967C05: FFree1Ad var_88
  loc_967C08: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9F916C
  'Data Table: 4A61EC
  loc_9F9030: LitI2_Byte &HFF
  loc_9F9032: ImpAdLdRf MemVar_C3D710
  loc_9F9035: NewIfNullPr bscOrganigrama
  loc_9F9038: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9F903D: LitNothing
  loc_9F903F: CastAd
  loc_9F9042: FStAdFuncNoPop
  loc_9F9045: ImpAdLdRf MemVar_C3D710
  loc_9F9048: NewIfNullPr bscOrganigrama
  loc_9F904B: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9F9050: FFree1Ad var_88
  loc_9F9053: LitVar_Missing var_A8
  loc_9F9056: PopAdLdVar
  loc_9F9057: LitVarI4
  loc_9F905F: PopAdLdVar
  loc_9F9060: ImpAdLdRf MemVar_C3D710
  loc_9F9063: NewIfNullPr bscOrganigrama
  loc_9F9066: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9F906B: FLdRfVar var_AC
  loc_9F906E: FLdRfVar var_88
  loc_9F9071: ImpAdLdRf MemVar_C3D710
  loc_9F9074: NewIfNullPr bscOrganigrama
  loc_9F9077: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F907C: FLdPr var_88
  loc_9F907F: from_stack_1 = clsbase.RecordCount
  loc_9F9084: ILdRf var_AC
  loc_9F9087: LitI4 0
  loc_9F908C: GtI4
  loc_9F908D: FFree1Ad var_88
  loc_9F9090: BranchF loc_9F916B
  loc_9F9093: FLdRfVar var_C8
  loc_9F9096: FLdRfVar var_B8
  loc_9F9099: LitVarStr var_98, "CodiOrga"
  loc_9F909E: PopAdLdVar
  loc_9F909F: FLdRfVar var_B4
  loc_9F90A2: FLdRfVar var_B0
  loc_9F90A5: FLdRfVar var_88
  loc_9F90A8: ImpAdLdRf MemVar_C3D710
  loc_9F90AB: NewIfNullPr bscOrganigrama
  loc_9F90AE: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F90B3: FLdPr var_88
  loc_9F90B6: from_stack_1v = clsbase.RsFrmGet()
  loc_9F90BB: FLdPr var_B0
  loc_9F90BE:  = Me.Fields
  loc_9F90C3: FLdPr var_B4
  loc_9F90C6: from_stack_2 = Me.Item(from_stack_1)
  loc_9F90CB: FLdPr var_B8
  loc_9F90CE:  = Me.Value
  loc_9F90D3: FLdRfVar var_C8
  loc_9F90D6: CStrVarTmp
  loc_9F90D7: CVarStr var_D8
  loc_9F90DA: PopAdLdVar
  loc_9F90DB: FLdPr Me
  loc_9F90DE: VCallAd Control_ID_CodiOrgaMsk
  loc_9F90E1: FStAdFunc var_DC
  loc_9F90E4: FLdPr var_DC
  loc_9F90E7: LateIdSt
  loc_9F90EC: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F90F9: FFreeVar var_C8 = ""
  loc_9F9100: FLdRfVar var_C8
  loc_9F9103: FLdRfVar var_B8
  loc_9F9106: LitVarStr var_98, "DetaOrga"
  loc_9F910B: PopAdLdVar
  loc_9F910C: FLdRfVar var_B4
  loc_9F910F: FLdRfVar var_B0
  loc_9F9112: FLdRfVar var_88
  loc_9F9115: ImpAdLdRf MemVar_C3D710
  loc_9F9118: NewIfNullPr bscOrganigrama
  loc_9F911B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F9120: FLdPr var_88
  loc_9F9123: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9128: FLdPr var_B0
  loc_9F912B:  = Me.Fields
  loc_9F9130: FLdPr var_B4
  loc_9F9133: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9138: FLdPr var_B8
  loc_9F913B:  = Me.Value
  loc_9F9140: FLdRfVar var_C8
  loc_9F9143: CStrVarTmp
  loc_9F9144: FStStrNoPop var_E0
  loc_9F9147: FLdPr Me
  loc_9F914A: VCallAd Control_ID_CodiOrgaLbl
  loc_9F914D: FStAdFunc var_DC
  loc_9F9150: FLdPr var_DC
  loc_9F9153: Me.Caption = from_stack_1
  loc_9F9158: FFree1Str var_E0
  loc_9F915B: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9168: FFree1Var var_C8 = ""
  loc_9F916B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '965AB8
  'Data Table: 4A61EC
  loc_965AA0: ILdRf Me
  loc_965AA3: CastAd
  loc_965AA6: FStAdFunc var_88
  loc_965AA9: FLdRfVar var_88
  loc_965AAC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_965AB1: FFree1Ad var_88
  loc_965AB4: ExitProcHresult
  loc_965AB5: FnAbsI2
  loc_965AB6: FStStrNoPop arg_7400
End Sub

Public Function htmFileGet() '4A74CC
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4A74DB
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4A74EA
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4A74F9
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A7508
  bGenerado = Value
End Sub

Public Function bLogosGet() '4A7517
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4A7526
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '9CB4FC
  'Data Table: 4A61EC
  loc_9CB434: LitI4 0
  loc_9CB439: LitI4 6
  loc_9CB43E: FLdRfVar var_88
  loc_9CB441: Redim
  loc_9CB44B: FLdPr Me
  loc_9CB44E: VCallAd Control_ID_cboPeriodo
  loc_9CB451: CVarAd
  loc_9CB455: ParmAry1St
  loc_9CB45B: FLdPr Me
  loc_9CB45E: VCallAd Control_ID_mskHasta
  loc_9CB461: CVarAd
  loc_9CB465: ParmAry1St
  loc_9CB46B: FLdPr Me
  loc_9CB46E: VCallAd Control_ID_cmdHasta
  loc_9CB471: CVarAd
  loc_9CB475: ParmAry1St
  loc_9CB47B: FLdPr Me
  loc_9CB47E: VCallAd Control_ID_CodiPartMsk
  loc_9CB481: CVarAd
  loc_9CB485: ParmAry1St
  loc_9CB48B: FLdPr Me
  loc_9CB48E: VCallAd Control_ID_cmdCodiPart
  loc_9CB491: CVarAd
  loc_9CB495: ParmAry1St
  loc_9CB49B: FLdPr Me
  loc_9CB49E: VCallAd Control_ID_CodiOrgaMsk
  loc_9CB4A1: CVarAd
  loc_9CB4A5: ParmAry1St
  loc_9CB4AB: FLdPr Me
  loc_9CB4AE: VCallAd Control_ID_cmdCodiOrga
  loc_9CB4B1: CVarAd
  loc_9CB4B5: ParmAry1St
  loc_9CB4BB: FLdRfVar var_88
  loc_9CB4BE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9CB4C3: FLdRfVar var_88
  loc_9CB4C6: Erase
  loc_9CB4C7: LitI4 0
  loc_9CB4CC: LitI4 0
  loc_9CB4D1: FLdRfVar var_88
  loc_9CB4D4: Redim
  loc_9CB4DE: FLdPr Me
  loc_9CB4E1: VCallAd Control_ID_chkExcluirTransferidos
  loc_9CB4E4: CVarAd
  loc_9CB4E8: ParmAry1St
  loc_9CB4EE: FLdRfVar var_88
  loc_9CB4F1: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9CB4F6: FLdRfVar var_88
  loc_9CB4F9: Erase
  loc_9CB4FA: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'ABE698
  'Data Table: 4A61EC
  loc_ABE150: OnErrorGoto loc_ABE633
  loc_ABE153: FLdPr Me
  loc_ABE156: MemLdI2 bGenerado
  loc_ABE159: BranchF loc_ABE15D
  loc_ABE15C: ExitProcHresult
  loc_ABE15D: LitVarStr var_A8, "Generando reporte..."
  loc_ABE162: PopAdLdVar
  loc_ABE163: FLdPr Me
  loc_ABE166: VCallAd Control_ID_statusBar
  loc_ABE169: FStAdFunc var_BC
  loc_ABE16C: FLdPr var_BC
  loc_ABE16F: LateIdSt
  loc_ABE174: FFree1Ad var_BC
  loc_ABE177: LitI4 &HB
  loc_ABE17C: CI2I4
  loc_ABE17D: FLdPr Me
  loc_ABE180: Me.MousePointer = from_stack_1
  loc_ABE185: LitI2_Byte 0
  loc_ABE187: PopTmpLdAd2 var_BE
  loc_ABE18A: Call CodiPartMsk_UnknownEvent_8()
  loc_ABE18F: LitI2_Byte 0
  loc_ABE191: PopTmpLdAd2 var_BE
  loc_ABE194: Call CodiOrgaMsk_UnknownEvent_8()
  loc_ABE199: FLdPr Me
  loc_ABE19C: VCallAd Control_ID_CodiPartMsk
  loc_ABE19F: FStAdFunc var_BC
  loc_ABE1A2: FLdPr var_BC
  loc_ABE1A5: LateIdLdVar var_D0 DispID_22 0
  loc_ABE1AC: PopAd
  loc_ABE1AE: FLdPr Me
  loc_ABE1B1: VCallAd Control_ID_CodiPartMsk
  loc_ABE1B4: FStAdFunc var_D8
  loc_ABE1B7: FLdPr var_D8
  loc_ABE1BA: LateIdLdVar var_E8 DispID_22 0
  loc_ABE1C1: PopAd
  loc_ABE1C3: LitVarStr var_B8, vbNullString
  loc_ABE1C8: FStVarCopyObj var_110
  loc_ABE1CB: FLdRfVar var_110
  loc_ABE1CE: LitStr " AND i.CodiPart LIKE '"
  loc_ABE1D1: FLdRfVar var_E8
  loc_ABE1D4: CStrVarTmp
  loc_ABE1D5: FStStrNoPop var_EC
  loc_ABE1D8: ConcatStr
  loc_ABE1D9: FStStrNoPop var_F0
  loc_ABE1DC: LitStr Chr(37) & "'"
  loc_ABE1DF: ConcatStr
  loc_ABE1E0: CVarStr var_100
  loc_ABE1E3: FLdRfVar var_D0
  loc_ABE1E6: CStrVarTmp
  loc_ABE1E7: FStStrNoPop var_D4
  loc_ABE1EA: LitStr vbNullString
  loc_ABE1ED: NeStr
  loc_ABE1EF: CVarBoolI2 var_A8
  loc_ABE1F3: FLdRfVar var_120
  loc_ABE1F6: ImpAdCallFPR4  = IIf(, , )
  loc_ABE1FB: FLdRfVar var_120
  loc_ABE1FE: CStrVarTmp
  loc_ABE1FF: FStStr var_88
  loc_ABE202: FFreeStr var_D4 = "": var_EC = ""
  loc_ABE20B: FFreeAd var_BC = ""
  loc_ABE212: FFreeVar var_D0 = "": var_E8 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_ABE221: FLdPr Me
  loc_ABE224: VCallAd Control_ID_CodiOrgaMsk
  loc_ABE227: FStAdFunc var_BC
  loc_ABE22A: FLdPr var_BC
  loc_ABE22D: LateIdLdVar var_D0 DispID_22 0
  loc_ABE234: PopAd
  loc_ABE236: FLdPr Me
  loc_ABE239: VCallAd Control_ID_CodiOrgaMsk
  loc_ABE23C: FStAdFunc var_D8
  loc_ABE23F: FLdPr var_D8
  loc_ABE242: LateIdLdVar var_E8 DispID_22 0
  loc_ABE249: PopAd
  loc_ABE24B: LitVarStr var_B8, vbNullString
  loc_ABE250: FStVarCopyObj var_110
  loc_ABE253: FLdRfVar var_110
  loc_ABE256: LitStr " AND i.CodiOrga LIKE '"
  loc_ABE259: FLdRfVar var_E8
  loc_ABE25C: CStrVarTmp
  loc_ABE25D: FStStrNoPop var_EC
  loc_ABE260: ConcatStr
  loc_ABE261: FStStrNoPop var_F0
  loc_ABE264: LitStr Chr(37) & "'"
  loc_ABE267: ConcatStr
  loc_ABE268: CVarStr var_100
  loc_ABE26B: FLdRfVar var_D0
  loc_ABE26E: CStrVarTmp
  loc_ABE26F: FStStrNoPop var_D4
  loc_ABE272: LitStr vbNullString
  loc_ABE275: NeStr
  loc_ABE277: CVarBoolI2 var_A8
  loc_ABE27B: FLdRfVar var_120
  loc_ABE27E: ImpAdCallFPR4  = IIf(, , )
  loc_ABE283: FLdRfVar var_120
  loc_ABE286: CStrVarTmp
  loc_ABE287: FStStr var_8C
  loc_ABE28A: FFreeStr var_D4 = "": var_EC = ""
  loc_ABE293: FFreeAd var_BC = ""
  loc_ABE29A: FFreeVar var_D0 = "": var_E8 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_ABE2A9: FLdRfVar var_BE
  loc_ABE2AC: FLdPr Me
  loc_ABE2AF: VCallAd Control_ID_chkExcluirTransferidos
  loc_ABE2B2: FStAdFunc var_BC
  loc_ABE2B5: FLdPr var_BC
  loc_ABE2B8:  = Me.Value
  loc_ABE2BD: LitVarStr var_130, " AND ImpoReapropiado != 0"
  loc_ABE2C2: FStVarCopyObj var_E8
  loc_ABE2C5: FLdRfVar var_E8
  loc_ABE2C8: LitVarStr var_B8, vbNullString
  loc_ABE2CD: FStVarCopyObj var_D0
  loc_ABE2D0: FLdRfVar var_D0
  loc_ABE2D3: FLdI2 var_BE
  loc_ABE2D6: CI4UI1
  loc_ABE2D7: LitI4 0
  loc_ABE2DC: EqI4
  loc_ABE2DD: CVarBoolI2 var_A8
  loc_ABE2E1: FLdRfVar var_100
  loc_ABE2E4: ImpAdCallFPR4  = IIf(, , )
  loc_ABE2E9: FLdRfVar var_100
  loc_ABE2EC: CStrVarTmp
  loc_ABE2ED: FStStr var_94
  loc_ABE2F0: FFree1Ad var_BC
  loc_ABE2F3: FFreeVar var_A8 = "": var_D0 = "": var_E8 = ""
  loc_ABE2FE: LitVarStr var_130, vbNullString
  loc_ABE303: FStVarCopyObj var_E8
  loc_ABE306: FLdRfVar var_E8
  loc_ABE309: LitVarStr var_B8, " AND CodiInsu NOT IN (4111,4119)"
  loc_ABE30E: FStVarCopyObj var_D0
  loc_ABE311: FLdRfVar var_D0
  loc_ABE314: LitStr "Municipalidad de Guaymallén"
  loc_ABE317: LitStr "Municipalidad de Maipú"
  loc_ABE31A: EqStr
  loc_ABE31C: CVarBoolI2 var_A8
  loc_ABE320: FLdRfVar var_100
  loc_ABE323: ImpAdCallFPR4  = IIf(, , )
  loc_ABE328: FLdRfVar var_100
  loc_ABE32B: CStrVarTmp
  loc_ABE32C: FStStr var_98
  loc_ABE32F: FFreeVar var_A8 = "": var_D0 = "": var_E8 = ""
  loc_ABE33A: FLdPr Me
  loc_ABE33D: MemLdRfVar from_stack_1.global_72
  loc_ABE340: NewIfNullAd
  loc_ABE343: FStAd var_134 
  loc_ABE347: FLdPr Me
  loc_ABE34A: VCallAd Control_ID_mskHasta
  loc_ABE34D: FStAdFunc var_BC
  loc_ABE350: FLdPr var_BC
  loc_ABE353: LateIdLdVar var_D0 DispID_15 0
  loc_ABE35A: PopAd
  loc_ABE35C: LitVarStr var_B8, "SET @hasta = "
  loc_ABE361: LitI4 1
  loc_ABE366: LitI4 1
  loc_ABE36B: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_ABE370: FStVarCopyObj var_100
  loc_ABE373: FLdRfVar var_100
  loc_ABE376: FLdRfVar var_D0
  loc_ABE379: CStrVarTmp
  loc_ABE37A: CVarStr var_E8
  loc_ABE37D: FLdRfVar var_110
  loc_ABE380: ImpAdCallFPR4  = Format(, )
  loc_ABE385: FLdRfVar var_110
  loc_ABE388: ConcatVar var_120
  loc_ABE38C: LitVarStr var_130, ";"
  loc_ABE391: ConcatVar var_144
  loc_ABE395: CStrVarVal var_D4
  loc_ABE399: FLdPr var_134
  loc_ABE39C: Call clsbase.RedefineRS(from_stack_1v)
  loc_ABE3A1: FFree1Str var_D4
  loc_ABE3A4: FFree1Ad var_BC
  loc_ABE3A7: FFreeVar var_D0 = "": var_E8 = "": var_100 = "": var_110 = "": var_120 = ""
  loc_ABE3B6: LitStr "DROP TEMPORARY TABLE if EXISTS tmovi; "
  loc_ABE3B9: LitStr "CREATE TEMPORARY TABLE tmovi ("
  loc_ABE3BC: ConcatStr
  loc_ABE3BD: FStStrNoPop var_D4
  loc_ABE3C0: LitStr " ExorImpu varchar(15) NOT NULL DEFAULT '',"
  loc_ABE3C3: ConcatStr
  loc_ABE3C4: FStStrNoPop var_EC
  loc_ABE3C7: LitStr " DefiImpu DECIMAL(14,2) NOT NULL DEFAULT '0.00',"
  loc_ABE3CA: ConcatStr
  loc_ABE3CB: FStStrNoPop var_F0
  loc_ABE3CE: LitStr " DeveImpu DECIMAL(14,2) NOT NULL DEFAULT '0.00',"
  loc_ABE3D1: ConcatStr
  loc_ABE3D2: FStStrNoPop var_148
  loc_ABE3D5: LitStr " saldo DECIMAL(14,2) NOT NULL DEFAULT '0.00',"
  loc_ABE3D8: ConcatStr
  loc_ABE3D9: FStStrNoPop var_14C
  loc_ABE3DC: LitStr " TotalReap decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_ABE3DF: ConcatStr
  loc_ABE3E0: FStStrNoPop var_150
  loc_ABE3E3: LitStr " PagaImpu DECIMAL(14,2) NOT NULL DEFAULT '0.00'"
  loc_ABE3E6: ConcatStr
  loc_ABE3E7: FStStrNoPop var_154
  loc_ABE3EA: LitStr ");"
  loc_ABE3ED: ConcatStr
  loc_ABE3EE: FStStrNoPop var_158
  loc_ABE3F1: FLdPr var_134
  loc_ABE3F4: Call clsbase.RedefineRS(from_stack_1v)
  loc_ABE3F9: FFreeStr var_D4 = "": var_EC = "": var_F0 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_ABE40C: LitStr "INSERT INTO tmovi (ExorImpu,DefiImpu,DeveImpu,saldo)"
  loc_ABE40F: LitStr " SELECT ExorImpu, SUM(DefiImpu) DefiImpu, SUM(DeveImpu) DeveImpu, SUM(DefiImpu-DeveImpu) saldo"
  loc_ABE412: ConcatStr
  loc_ABE413: FStStrNoPop var_D4
  loc_ABE416: LitStr " FROM imputacion i"
  loc_ABE419: ConcatStr
  loc_ABE41A: FStStrNoPop var_EC
  loc_ABE41D: LitStr " WHERE i.PeriInfo = "
  loc_ABE420: ConcatStr
  loc_ABE421: FStStrNoPop var_148
  loc_ABE424: FLdRfVar var_F0
  loc_ABE427: FLdPr Me
  loc_ABE42A: VCallAd Control_ID_cboPeriodo
  loc_ABE42D: FStAdFunc var_BC
  loc_ABE430: FLdPr var_BC
  loc_ABE433:  = Me.Text
  loc_ABE438: ILdRf var_F0
  loc_ABE43B: ConcatStr
  loc_ABE43C: FStStrNoPop var_14C
  loc_ABE43F: LitStr " AND FechImpu <= @hasta"
  loc_ABE442: ConcatStr
  loc_ABE443: FStStrNoPop var_150
  loc_ABE446: ILdRf var_88
  loc_ABE449: ConcatStr
  loc_ABE44A: FStStrNoPop var_154
  loc_ABE44D: ILdRf var_8C
  loc_ABE450: ConcatStr
  loc_ABE451: FStStrNoPop var_158
  loc_ABE454: LitStr " GROUP BY ExorImpu"
  loc_ABE457: ConcatStr
  loc_ABE458: FStStrNoPop var_15C
  loc_ABE45B: LitStr " HAVING saldo > 0;"
  loc_ABE45E: ConcatStr
  loc_ABE45F: FStStrNoPop var_160
  loc_ABE462: FLdPr var_134
  loc_ABE465: Call clsbase.RedefineRS(from_stack_1v)
  loc_ABE46A: FFreeStr var_D4 = "": var_EC = "": var_148 = "": var_F0 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_ABE481: FFree1Ad var_BC
  loc_ABE484: LitStr "INSERT INTO tmovi (ExorImpu,TotalReap,PagaImpu)"
  loc_ABE487: LitStr " SELECT tbl.ExorImpu, SUM(tbl.DefiImpu), SUM(tbl.PagaImpu)"
  loc_ABE48A: ConcatStr
  loc_ABE48B: FStStrNoPop var_D4
  loc_ABE48E: LitStr " FROM ("
  loc_ABE491: ConcatStr
  loc_ABE492: FStStrNoPop var_EC
  loc_ABE495: LitStr " SELECT ExorImpu, SUM(DefiImpu) DefiImpu, SUM(PagaImpu) PagaImpu"
  loc_ABE498: ConcatStr
  loc_ABE499: FStStrNoPop var_F0
  loc_ABE49C: LitStr " FROM imputacion i"
  loc_ABE49F: ConcatStr
  loc_ABE4A0: FStStrNoPop var_148
  loc_ABE4A3: LitStr " WHERE i.PeriInfo = "
  loc_ABE4A6: ConcatStr
  loc_ABE4A7: FStStrNoPop var_150
  loc_ABE4AA: FLdRfVar var_14C
  loc_ABE4AD: FLdPr Me
  loc_ABE4B0: VCallAd Control_ID_cboPeriodo
  loc_ABE4B3: FStAdFunc var_BC
  loc_ABE4B6: FLdPr var_BC
  loc_ABE4B9:  = Me.Text
  loc_ABE4BE: ILdRf var_14C
  loc_ABE4C1: CI2Str
  loc_ABE4C3: LitI2_Byte 1
  loc_ABE4C5: AddI2
  loc_ABE4C6: CStrUI1
  loc_ABE4C8: FStStrNoPop var_154
  loc_ABE4CB: ConcatStr
  loc_ABE4CC: FStStrNoPop var_158
  loc_ABE4CF: ILdRf var_98
  loc_ABE4D2: ConcatStr
  loc_ABE4D3: FStStrNoPop var_15C
  loc_ABE4D6: LitStr " GROUP BY ExorImpu"
  loc_ABE4D9: ConcatStr
  loc_ABE4DA: FStStrNoPop var_160
  loc_ABE4DD: LitStr " ) AS tbl"
  loc_ABE4E0: ConcatStr
  loc_ABE4E1: FStStrNoPop var_164
  loc_ABE4E4: LitStr " INNER JOIN (SELECT ExorImpu, SUM(DefiImpu) DefiImpu, SUM(DeveImpu) DeveImpu, SUM(DefiImpu-DeveImpu) saldo"
  loc_ABE4E7: ConcatStr
  loc_ABE4E8: FStStrNoPop var_168
  loc_ABE4EB: LitStr " FROM imputacion i"
  loc_ABE4EE: ConcatStr
  loc_ABE4EF: FStStrNoPop var_16C
  loc_ABE4F2: LitStr " WHERE i.PeriInfo = "
  loc_ABE4F5: ConcatStr
  loc_ABE4F6: FStStrNoPop var_174
  loc_ABE4F9: FLdRfVar var_170
  loc_ABE4FC: FLdPr Me
  loc_ABE4FF: VCallAd Control_ID_cboPeriodo
  loc_ABE502: FStAdFunc var_D8
  loc_ABE505: FLdPr var_D8
  loc_ABE508:  = Me.Text
  loc_ABE50D: ILdRf var_170
  loc_ABE510: ConcatStr
  loc_ABE511: FStStrNoPop var_178
  loc_ABE514: LitStr " AND FechImpu <= @hasta"
  loc_ABE517: ConcatStr
  loc_ABE518: FStStrNoPop var_17C
  loc_ABE51B: ILdRf var_88
  loc_ABE51E: ConcatStr
  loc_ABE51F: FStStrNoPop var_180
  loc_ABE522: ILdRf var_8C
  loc_ABE525: ConcatStr
  loc_ABE526: FStStrNoPop var_184
  loc_ABE529: LitStr " GROUP BY ExorImpu"
  loc_ABE52C: ConcatStr
  loc_ABE52D: FStStrNoPop var_188
  loc_ABE530: LitStr " HAVING saldo > 0) AS t ON t.ExorImpu = tbl.ExorImpu"
  loc_ABE533: ConcatStr
  loc_ABE534: FStStrNoPop var_18C
  loc_ABE537: LitStr " GROUP BY ExorImpu;"
  loc_ABE53A: ConcatStr
  loc_ABE53B: FStStrNoPop var_190
  loc_ABE53E: FLdPr var_134
  loc_ABE541: Call clsbase.RedefineRS(from_stack_1v)
  loc_ABE546: FFreeStr var_D4 = "": var_EC = "": var_F0 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_174 = "": var_170 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_ABE575: FFreeAd var_BC = ""
  loc_ABE57C: LitStr "SELECT ExorImpu, SUM(DefiImpu) DefiImpu, SUM(DeveImpu) DeveImpu, SUM(saldo) saldo, SUM(TotalReap) TotalReap, SUM(PagaImpu) PagaImpu"
  loc_ABE57F: LitStr " From tmovi"
  loc_ABE582: ConcatStr
  loc_ABE583: FStStrNoPop var_D4
  loc_ABE586: LitStr " GROUP BY ExorImpu;"
  loc_ABE589: ConcatStr
  loc_ABE58A: FStStrNoPop var_EC
  loc_ABE58D: FLdPr var_134
  loc_ABE590: Call clsbase.RedefineRS(from_stack_1v)
  loc_ABE595: FFreeStr var_D4 = ""
  loc_ABE59C: FLdRfVar var_194
  loc_ABE59F: FLdPr var_134
  loc_ABE5A2: from_stack_1 = clsbase.RecordCount
  loc_ABE5A7: ILdRf var_194
  loc_ABE5AA: LitI4 0
  loc_ABE5AF: EqI4
  loc_ABE5B0: BranchF loc_ABE5C3
  loc_ABE5B3: LitI4 0
  loc_ABE5B8: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_ABE5BB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ABE5C0: Branch loc_ABE60A
  loc_ABE5C3: LitI4 0
  loc_ABE5C8: LitI4 1
  loc_ABE5CD: FLdRfVar var_198
  loc_ABE5D0: Redim
  loc_ABE5DA: LitI2_Byte 0
  loc_ABE5DC: CStrUI1
  loc_ABE5DE: FStStrNoPop var_D4
  loc_ABE5E1: FLdPr Me
  loc_ABE5E4: MemStStrCopy
  loc_ABE5E8: FFree1Str var_D4
  loc_ABE5EB: LitI2_Byte 0
  loc_ABE5ED: CStrUI1
  loc_ABE5EF: FStStrNoPop var_D4
  loc_ABE5F2: FLdPr Me
  loc_ABE5F5: MemStStrCopy
  loc_ABE5F9: FFree1Str var_D4
  loc_ABE5FC: LitNothing
  loc_ABE5FE: FStAd var_134 
  loc_ABE602: LitI2_Byte &HFF
  loc_ABE604: FLdPr Me
  loc_ABE607: MemStI2 bGenerado
  loc_ABE60A: LitI4 0
  loc_ABE60F: CI2I4
  loc_ABE610: FLdPr Me
  loc_ABE613: Me.MousePointer = from_stack_1
  loc_ABE618: LitVarStr var_A8, vbNullString
  loc_ABE61D: PopAdLdVar
  loc_ABE61E: FLdPr Me
  loc_ABE621: VCallAd Control_ID_statusBar
  loc_ABE624: FStAdFunc var_BC
  loc_ABE627: FLdPr var_BC
  loc_ABE62A: LateIdSt
  loc_ABE62F: FFree1Ad var_BC
  loc_ABE632: ExitProcHresult
  loc_ABE633: LitI4 0
  loc_ABE638: LitStr "Error "
  loc_ABE63B: FLdRfVar var_194
  loc_ABE63E: ImpAdCallI2 Err 'rtcErrObj
  loc_ABE643: FStAdFunc var_BC
  loc_ABE646: FLdPr var_BC
  loc_ABE649:  = Err.Number
  loc_ABE64E: ILdRf var_194
  loc_ABE651: CStrI4
  loc_ABE653: FStStrNoPop var_D4
  loc_ABE656: ConcatStr
  loc_ABE657: FStStrNoPop var_EC
  loc_ABE65A: LitStr ": "
  loc_ABE65D: ConcatStr
  loc_ABE65E: FStStrNoPop var_148
  loc_ABE661: FLdRfVar var_F0
  loc_ABE664: ImpAdCallI2 Err 'rtcErrObj
  loc_ABE669: FStAdFunc var_D8
  loc_ABE66C: FLdPr var_D8
  loc_ABE66F:  = Err.Description
  loc_ABE674: ILdRf var_F0
  loc_ABE677: ConcatStr
  loc_ABE678: FStStrNoPop var_14C
  loc_ABE67B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ABE680: FFreeStr var_D4 = "": var_EC = "": var_148 = "": var_F0 = ""
  loc_ABE68D: FFreeAd var_BC = ""
  loc_ABE694: ExitProcHresult
  loc_ABE695: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AB0274
  'Data Table: 4A61EC
  loc_AAFD1C: FLdRfVar var_88
  loc_AAFD1F: LitI2_Byte 0
  loc_AAFD21: LitI2_Byte &HFF
  loc_AAFD23: ImpAdLdI4 MemVar_C3D83C
  loc_AAFD26: FLdPr Me
  loc_AAFD29: MemLdRfVar from_stack_1.global_76
  loc_AAFD2C: NewIfNullPr IFileSystem3
  loc_AAFD2F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AAFD34: ILdRf var_88
  loc_AAFD37: FLdPr Me
  loc_AAFD3A: MemStVarAd
  loc_AAFD3E: FFree1Ad var_88
  loc_AAFD41: Call Proc_219_30_A9F9B4()
  loc_AAFD46: LitI2_Byte 0
  loc_AAFD48: CStrUI1
  loc_AAFD4A: FStStrNoPop var_8C
  loc_AAFD4D: FLdPr Me
  loc_AAFD50: MemStStrCopy
  loc_AAFD54: FFree1Str var_8C
  loc_AAFD57: LitI2_Byte 0
  loc_AAFD59: CStrUI1
  loc_AAFD5B: FStStrNoPop var_8C
  loc_AAFD5E: FLdPr Me
  loc_AAFD61: MemStStrCopy
  loc_AAFD65: FFree1Str var_8C
  loc_AAFD68: FLdRfVar var_88
  loc_AAFD6B: FLdPr Me
  loc_AAFD6E: MemLdRfVar from_stack_1.global_72
  loc_AAFD71: NewIfNullPr clsbase
  loc_AAFD74: from_stack_1v = clsbase.RsFrmGet()
  loc_AAFD79: FLdZeroAd var_88
  loc_AAFD7C: FStAdFunc var_90
  loc_AAFD7F: FLdPr var_90
  loc_AAFD82: Me.MoveFirst
  loc_AAFD87: FLdRfVar var_92
  loc_AAFD8A: FLdPr var_90
  loc_AAFD8D:  = Me.EOF
  loc_AAFD92: FLdI2 var_92
  loc_AAFD95: NotI4
  loc_AAFD96: BranchF loc_AB0157
  loc_AAFD99: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AAFD9E: PopAdLdVar
  loc_AAFD9F: FLdPr Me
  loc_AAFDA2: MemLdRfVar from_stack_1.htmFile
  loc_AAFDA5: LdPrVar
  loc_AAFDA7: LateMemCall
  loc_AAFDAD: LitVarStr var_B4, "<td align=""left"">"
  loc_AAFDB2: FLdRfVar var_C8
  loc_AAFDB5: FLdRfVar var_B8
  loc_AAFDB8: LitVarStr var_A4, "ExorImpu"
  loc_AAFDBD: PopAdLdVar
  loc_AAFDBE: FLdRfVar var_88
  loc_AAFDC1: FLdPr var_90
  loc_AAFDC4:  = Me.Fields
  loc_AAFDC9: FLdPr var_88
  loc_AAFDCC: from_stack_2 = Me.Item(from_stack_1)
  loc_AAFDD1: FLdPr var_B8
  loc_AAFDD4:  = Me.Value
  loc_AAFDD9: FLdRfVar var_C8
  loc_AAFDDC: ConcatVar var_D8
  loc_AAFDE0: LitVarStr var_E8, "</td>"
  loc_AAFDE5: ConcatVar var_F8
  loc_AAFDE9: PopAdLdVar
  loc_AAFDEA: FLdPr Me
  loc_AAFDED: MemLdRfVar from_stack_1.htmFile
  loc_AAFDF0: LdPrVar
  loc_AAFDF2: LateMemCall
  loc_AAFDF8: FFreeAd var_88 = ""
  loc_AAFDFF: FFreeVar var_C8 = "": var_D8 = ""
  loc_AAFE08: FLdRfVar var_B8
  loc_AAFE0B: LitVarStr var_A4, "DefiImpu"
  loc_AAFE10: PopAdLdVar
  loc_AAFE11: FLdRfVar var_88
  loc_AAFE14: FLdPr var_90
  loc_AAFE17:  = Me.Fields
  loc_AAFE1C: FLdPr var_88
  loc_AAFE1F: from_stack_2 = Me.Item(from_stack_1)
  loc_AAFE24: LitI4 1
  loc_AAFE29: LitI4 1
  loc_AAFE2E: LitVarStr var_B4, "currency"
  loc_AAFE33: FStVarCopyObj var_D8
  loc_AAFE36: FLdRfVar var_D8
  loc_AAFE39: FLdZeroAd var_B8
  loc_AAFE3C: CVarAd
  loc_AAFE40: FLdRfVar var_F8
  loc_AAFE43: ImpAdCallFPR4  = Format(, )
  loc_AAFE48: LitI4 0
  loc_AAFE4D: LitI4 0
  loc_AAFE52: LitI2_Byte 0
  loc_AAFE54: LitStr "right"
  loc_AAFE57: FLdRfVar var_F8
  loc_AAFE5A: CStrVarVal var_8C
  loc_AAFE5E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAFE63: CVarStr var_118
  loc_AAFE66: PopAdLdVar
  loc_AAFE67: FLdPr Me
  loc_AAFE6A: MemLdRfVar from_stack_1.htmFile
  loc_AAFE6D: LdPrVar
  loc_AAFE6F: LateMemCall
  loc_AAFE75: FFree1Str var_8C
  loc_AAFE78: FFree1Ad var_88
  loc_AAFE7B: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_AAFE86: FLdRfVar var_B8
  loc_AAFE89: LitVarStr var_A4, "DeveImpu"
  loc_AAFE8E: PopAdLdVar
  loc_AAFE8F: FLdRfVar var_88
  loc_AAFE92: FLdPr var_90
  loc_AAFE95:  = Me.Fields
  loc_AAFE9A: FLdPr var_88
  loc_AAFE9D: from_stack_2 = Me.Item(from_stack_1)
  loc_AAFEA2: LitI4 1
  loc_AAFEA7: LitI4 1
  loc_AAFEAC: LitVarStr var_B4, "currency"
  loc_AAFEB1: FStVarCopyObj var_D8
  loc_AAFEB4: FLdRfVar var_D8
  loc_AAFEB7: FLdZeroAd var_B8
  loc_AAFEBA: CVarAd
  loc_AAFEBE: FLdRfVar var_F8
  loc_AAFEC1: ImpAdCallFPR4  = Format(, )
  loc_AAFEC6: LitI4 0
  loc_AAFECB: LitI4 0
  loc_AAFED0: LitI2_Byte 0
  loc_AAFED2: LitStr "right"
  loc_AAFED5: FLdRfVar var_F8
  loc_AAFED8: CStrVarVal var_8C
  loc_AAFEDC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAFEE1: CVarStr var_118
  loc_AAFEE4: PopAdLdVar
  loc_AAFEE5: FLdPr Me
  loc_AAFEE8: MemLdRfVar from_stack_1.htmFile
  loc_AAFEEB: LdPrVar
  loc_AAFEED: LateMemCall
  loc_AAFEF3: FFree1Str var_8C
  loc_AAFEF6: FFree1Ad var_88
  loc_AAFEF9: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_AAFF04: FLdRfVar var_B8
  loc_AAFF07: LitVarStr var_A4, "Saldo"
  loc_AAFF0C: PopAdLdVar
  loc_AAFF0D: FLdRfVar var_88
  loc_AAFF10: FLdPr var_90
  loc_AAFF13:  = Me.Fields
  loc_AAFF18: FLdPr var_88
  loc_AAFF1B: from_stack_2 = Me.Item(from_stack_1)
  loc_AAFF20: LitI4 1
  loc_AAFF25: LitI4 1
  loc_AAFF2A: LitVarStr var_B4, "currency"
  loc_AAFF2F: FStVarCopyObj var_D8
  loc_AAFF32: FLdRfVar var_D8
  loc_AAFF35: FLdZeroAd var_B8
  loc_AAFF38: CVarAd
  loc_AAFF3C: FLdRfVar var_F8
  loc_AAFF3F: ImpAdCallFPR4  = Format(, )
  loc_AAFF44: LitI4 0
  loc_AAFF49: LitI4 0
  loc_AAFF4E: LitI2_Byte 0
  loc_AAFF50: LitStr "right"
  loc_AAFF53: FLdRfVar var_F8
  loc_AAFF56: CStrVarVal var_8C
  loc_AAFF5A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAFF5F: CVarStr var_118
  loc_AAFF62: PopAdLdVar
  loc_AAFF63: FLdPr Me
  loc_AAFF66: MemLdRfVar from_stack_1.htmFile
  loc_AAFF69: LdPrVar
  loc_AAFF6B: LateMemCall
  loc_AAFF71: FFree1Str var_8C
  loc_AAFF74: FFree1Ad var_88
  loc_AAFF77: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_AAFF82: FLdRfVar var_B8
  loc_AAFF85: LitVarStr var_A4, "TotalReap"
  loc_AAFF8A: PopAdLdVar
  loc_AAFF8B: FLdRfVar var_88
  loc_AAFF8E: FLdPr var_90
  loc_AAFF91:  = Me.Fields
  loc_AAFF96: FLdPr var_88
  loc_AAFF99: from_stack_2 = Me.Item(from_stack_1)
  loc_AAFF9E: LitI4 1
  loc_AAFFA3: LitI4 1
  loc_AAFFA8: LitVarStr var_B4, "currency"
  loc_AAFFAD: FStVarCopyObj var_D8
  loc_AAFFB0: FLdRfVar var_D8
  loc_AAFFB3: FLdZeroAd var_B8
  loc_AAFFB6: CVarAd
  loc_AAFFBA: FLdRfVar var_F8
  loc_AAFFBD: ImpAdCallFPR4  = Format(, )
  loc_AAFFC2: LitI4 0
  loc_AAFFC7: LitI4 0
  loc_AAFFCC: LitI2_Byte 0
  loc_AAFFCE: LitStr "right"
  loc_AAFFD1: FLdRfVar var_F8
  loc_AAFFD4: CStrVarVal var_8C
  loc_AAFFD8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAFFDD: CVarStr var_118
  loc_AAFFE0: PopAdLdVar
  loc_AAFFE1: FLdPr Me
  loc_AAFFE4: MemLdRfVar from_stack_1.htmFile
  loc_AAFFE7: LdPrVar
  loc_AAFFE9: LateMemCall
  loc_AAFFEF: FFree1Str var_8C
  loc_AAFFF2: FFree1Ad var_88
  loc_AAFFF5: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_AB0000: FLdPr Me
  loc_AB0003: MemLdStr global_104
  loc_AB0006: CVarStr var_B4
  loc_AB0009: FLdRfVar var_C8
  loc_AB000C: FLdRfVar var_B8
  loc_AB000F: LitVarStr var_A4, "Saldo"
  loc_AB0014: PopAdLdVar
  loc_AB0015: FLdRfVar var_88
  loc_AB0018: FLdPr var_90
  loc_AB001B:  = Me.Fields
  loc_AB0020: FLdPr var_88
  loc_AB0023: from_stack_2 = Me.Item(from_stack_1)
  loc_AB0028: FLdPr var_B8
  loc_AB002B:  = Me.Value
  loc_AB0030: FLdRfVar var_C8
  loc_AB0033: AddVar var_D8
  loc_AB0037: CStrVarTmp
  loc_AB0038: FStStrNoPop var_8C
  loc_AB003B: FLdPr Me
  loc_AB003E: MemStStrCopy
  loc_AB0042: FFree1Str var_8C
  loc_AB0045: FFreeAd var_88 = ""
  loc_AB004C: FFreeVar var_C8 = ""
  loc_AB0053: FLdPr Me
  loc_AB0056: MemLdStr global_108
  loc_AB0059: CVarStr var_B4
  loc_AB005C: FLdRfVar var_C8
  loc_AB005F: FLdRfVar var_B8
  loc_AB0062: LitVarStr var_A4, "TotalReap"
  loc_AB0067: PopAdLdVar
  loc_AB0068: FLdRfVar var_88
  loc_AB006B: FLdPr var_90
  loc_AB006E:  = Me.Fields
  loc_AB0073: FLdPr var_88
  loc_AB0076: from_stack_2 = Me.Item(from_stack_1)
  loc_AB007B: FLdPr var_B8
  loc_AB007E:  = Me.Value
  loc_AB0083: FLdRfVar var_C8
  loc_AB0086: AddVar var_D8
  loc_AB008A: CStrVarTmp
  loc_AB008B: FStStrNoPop var_8C
  loc_AB008E: FLdPr Me
  loc_AB0091: MemStStrCopy
  loc_AB0095: FFree1Str var_8C
  loc_AB0098: FFreeAd var_88 = ""
  loc_AB009F: FFreeVar var_C8 = ""
  loc_AB00A6: FLdRfVar var_B8
  loc_AB00A9: LitVarStr var_A4, "PagaImpu"
  loc_AB00AE: PopAdLdVar
  loc_AB00AF: FLdRfVar var_88
  loc_AB00B2: FLdPr var_90
  loc_AB00B5:  = Me.Fields
  loc_AB00BA: FLdPr var_88
  loc_AB00BD: from_stack_2 = Me.Item(from_stack_1)
  loc_AB00C2: LitI4 1
  loc_AB00C7: LitI4 1
  loc_AB00CC: LitVarStr var_B4, "currency"
  loc_AB00D1: FStVarCopyObj var_D8
  loc_AB00D4: FLdRfVar var_D8
  loc_AB00D7: FLdZeroAd var_B8
  loc_AB00DA: CVarAd
  loc_AB00DE: FLdRfVar var_F8
  loc_AB00E1: ImpAdCallFPR4  = Format(, )
  loc_AB00E6: LitI4 0
  loc_AB00EB: LitI4 0
  loc_AB00F0: LitI2_Byte 0
  loc_AB00F2: LitStr "right"
  loc_AB00F5: FLdRfVar var_F8
  loc_AB00F8: CStrVarVal var_8C
  loc_AB00FC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB0101: CVarStr var_118
  loc_AB0104: PopAdLdVar
  loc_AB0105: FLdPr Me
  loc_AB0108: MemLdRfVar from_stack_1.htmFile
  loc_AB010B: LdPrVar
  loc_AB010D: LateMemCall
  loc_AB0113: FFree1Str var_8C
  loc_AB0116: FFree1Ad var_88
  loc_AB0119: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_AB0124: LitVarStr var_A4, "     </tr>"
  loc_AB0129: PopAdLdVar
  loc_AB012A: FLdPr Me
  loc_AB012D: MemLdRfVar from_stack_1.htmFile
  loc_AB0130: LdPrVar
  loc_AB0132: LateMemCall
  loc_AB0138: LitVarStr var_A4, "  </tr>"
  loc_AB013D: PopAdLdVar
  loc_AB013E: FLdPr Me
  loc_AB0141: MemLdRfVar from_stack_1.htmFile
  loc_AB0144: LdPrVar
  loc_AB0146: LateMemCall
  loc_AB014C: FLdPr var_90
  loc_AB014F: Me.MoveNext
  loc_AB0154: Branch loc_AAFD87
  loc_AB0157: LitNothing
  loc_AB0159: FStAd var_90 
  loc_AB015D: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB0162: PopAdLdVar
  loc_AB0163: FLdPr Me
  loc_AB0166: MemLdRfVar from_stack_1.htmFile
  loc_AB0169: LdPrVar
  loc_AB016B: LateMemCall
  loc_AB0171: LitVarStr var_A4, "    <th colspan=""4"" class=""Encabezado"">&nbsp;</th>"
  loc_AB0176: PopAdLdVar
  loc_AB0177: FLdPr Me
  loc_AB017A: MemLdRfVar from_stack_1.htmFile
  loc_AB017D: LdPrVar
  loc_AB017F: LateMemCall
  loc_AB0185: LitVarStr var_E8, "    <th align=""right"" class=""Totales"">"
  loc_AB018A: LitI4 1
  loc_AB018F: LitI4 1
  loc_AB0194: LitVarStr var_B4, "currency"
  loc_AB0199: FStVarCopyObj var_C8
  loc_AB019C: FLdRfVar var_C8
  loc_AB019F: FLdPr Me
  loc_AB01A2: MemLdRfVar from_stack_1.global_104
  loc_AB01A5: CVarRef
  loc_AB01AA: FLdRfVar var_D8
  loc_AB01AD: ImpAdCallFPR4  = Format(, )
  loc_AB01B2: FLdRfVar var_D8
  loc_AB01B5: ConcatVar var_F8
  loc_AB01B9: LitVarStr var_108, "</th>"
  loc_AB01BE: ConcatVar var_118
  loc_AB01C2: PopAdLdVar
  loc_AB01C3: FLdPr Me
  loc_AB01C6: MemLdRfVar from_stack_1.htmFile
  loc_AB01C9: LdPrVar
  loc_AB01CB: LateMemCall
  loc_AB01D1: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_AB01DC: LitVarStr var_E8, "    <th align=""right"" class=""Totales"">"
  loc_AB01E1: LitI4 1
  loc_AB01E6: LitI4 1
  loc_AB01EB: LitVarStr var_B4, "currency"
  loc_AB01F0: FStVarCopyObj var_C8
  loc_AB01F3: FLdRfVar var_C8
  loc_AB01F6: FLdPr Me
  loc_AB01F9: MemLdRfVar from_stack_1.global_108
  loc_AB01FC: CVarRef
  loc_AB0201: FLdRfVar var_D8
  loc_AB0204: ImpAdCallFPR4  = Format(, )
  loc_AB0209: FLdRfVar var_D8
  loc_AB020C: ConcatVar var_F8
  loc_AB0210: LitVarStr var_108, "</th>"
  loc_AB0215: ConcatVar var_118
  loc_AB0219: PopAdLdVar
  loc_AB021A: FLdPr Me
  loc_AB021D: MemLdRfVar from_stack_1.htmFile
  loc_AB0220: LdPrVar
  loc_AB0222: LateMemCall
  loc_AB0228: FFreeVar var_C8 = "": var_D8 = "": var_F8 = ""
  loc_AB0233: LitVarStr var_A4, "     </tr>"
  loc_AB0238: PopAdLdVar
  loc_AB0239: FLdPr Me
  loc_AB023C: MemLdRfVar from_stack_1.htmFile
  loc_AB023F: LdPrVar
  loc_AB0241: LateMemCall
  loc_AB0247: LitVarStr var_A4, "  </tr>"
  loc_AB024C: PopAdLdVar
  loc_AB024D: FLdPr Me
  loc_AB0250: MemLdRfVar from_stack_1.htmFile
  loc_AB0253: LdPrVar
  loc_AB0255: LateMemCall
  loc_AB025B: Call Proc_219_31_982CB0()
  loc_AB0260: FLdPr Me
  loc_AB0263: MemLdRfVar from_stack_1.htmFile
  loc_AB0266: LdPrVar
  loc_AB0268: LateMemCall
  loc_AB026E: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AB0273: ExitProcHresult
End Sub

Public Sub GeneraXLS() '96CFA4
  'Data Table: 4A61EC
  loc_96CF7C: LitI2_Byte &HFF
  loc_96CF7E: FLdPr Me
  loc_96CF81: MemStI2 global_116
  loc_96CF84: LitI2_Byte 0
  loc_96CF86: FLdPr Me
  loc_96CF89: MemStI2 bLogos
  loc_96CF8C: Call GeneraHTML()
  loc_96CF91: LitI2_Byte &HFF
  loc_96CF93: FLdPr Me
  loc_96CF96: MemStI2 bLogos
  loc_96CF99: LitI2_Byte 0
  loc_96CF9B: FLdPr Me
  loc_96CF9E: MemStI2 global_116
  loc_96CFA1: ExitProcHresult
End Sub

Private Function Proc_219_29_9801E8() '9801E8
  'Data Table: 4A61EC
  loc_9801B4: LitVar_Missing var_A4
  loc_9801B7: PopAdLdVar
  loc_9801B8: LitVarI4
  loc_9801C0: PopAdLdVar
  loc_9801C1: ImpAdLdRf MemVar_C3D9A8
  loc_9801C4: NewIfNullPr frmCalendario
  loc_9801C7: frmCalendario.Show from_stack_1, from_stack_2
  loc_9801CC: ImpAdLdRf MemVar_C3D038
  loc_9801CF: CDargRef
  loc_9801D3: FLdPr Me
  loc_9801D6: VCallAd Control_ID_mskHasta
  loc_9801D9: FStAdFunc var_A8
  loc_9801DC: FLdPr var_A8
  loc_9801DF: LateIdSt
  loc_9801E4: FFree1Ad var_A8
  loc_9801E7: ExitProcHresult
End Function

Private Function Proc_219_30_A9F9B4() 'A9F9B4
  'Data Table: 4A61EC
  loc_A9F4E0: LitVarStr var_94, "<html>"
  loc_A9F4E5: PopAdLdVar
  loc_A9F4E6: FLdPr Me
  loc_A9F4E9: MemLdRfVar from_stack_1.htmFile
  loc_A9F4EC: LdPrVar
  loc_A9F4EE: LateMemCall
  loc_A9F4F4: LitVarStr var_94, "<head>"
  loc_A9F4F9: PopAdLdVar
  loc_A9F4FA: FLdPr Me
  loc_A9F4FD: MemLdRfVar from_stack_1.htmFile
  loc_A9F500: LdPrVar
  loc_A9F502: LateMemCall
  loc_A9F508: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A9F50D: PopAdLdVar
  loc_A9F50E: FLdPr Me
  loc_A9F511: MemLdRfVar from_stack_1.htmFile
  loc_A9F514: LdPrVar
  loc_A9F516: LateMemCall
  loc_A9F51C: LitStr "<title>"
  loc_A9F51F: FLdRfVar var_A8
  loc_A9F522: FLdPr Me
  loc_A9F525:  = Me.Caption
  loc_A9F52A: ILdRf var_A8
  loc_A9F52D: ConcatStr
  loc_A9F52E: FStStrNoPop var_AC
  loc_A9F531: LitStr "</title>"
  loc_A9F534: ConcatStr
  loc_A9F535: CVarStr var_BC
  loc_A9F538: PopAdLdVar
  loc_A9F539: FLdPr Me
  loc_A9F53C: MemLdRfVar from_stack_1.htmFile
  loc_A9F53F: LdPrVar
  loc_A9F541: LateMemCall
  loc_A9F547: FFreeStr var_A8 = ""
  loc_A9F54E: FFree1Var var_BC = ""
  loc_A9F551: LitStr vbNullString
  loc_A9F554: ILdRf Me
  loc_A9F557: CastAd
  loc_A9F55A: FStAdFunc var_C0
  loc_A9F55D: FLdRfVar var_C0
  loc_A9F560: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A9F565: FFree1Ad var_C0
  loc_A9F568: LitI4 0
  loc_A9F56D: FStStrCopy var_AC
  loc_A9F570: FLdRfVar var_AC
  loc_A9F573: LitI4 0
  loc_A9F578: FStStrCopy var_A8
  loc_A9F57B: FLdRfVar var_A8
  loc_A9F57E: LitI2_Byte &HFF
  loc_A9F580: PopTmpLdAd2 var_C2
  loc_A9F583: FLdPr Me
  loc_A9F586: MemLdRfVar from_stack_1.htmFile
  loc_A9F589: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9F58E: FFreeStr var_A8 = ""
  loc_A9F595: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A9F59A: PopAdLdVar
  loc_A9F59B: FLdPr Me
  loc_A9F59E: MemLdRfVar from_stack_1.htmFile
  loc_A9F5A1: LdPrVar
  loc_A9F5A3: LateMemCall
  loc_A9F5A9: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9F5AE: PopAdLdVar
  loc_A9F5AF: FLdPr Me
  loc_A9F5B2: MemLdRfVar from_stack_1.htmFile
  loc_A9F5B5: LdPrVar
  loc_A9F5B7: LateMemCall
  loc_A9F5BD: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A9F5C2: PopAdLdVar
  loc_A9F5C3: FLdPr Me
  loc_A9F5C6: MemLdRfVar from_stack_1.htmFile
  loc_A9F5C9: LdPrVar
  loc_A9F5CB: LateMemCall
  loc_A9F5D1: FLdPr Me
  loc_A9F5D4: MemLdI2 bLogos
  loc_A9F5D7: BranchF loc_A9F5EE
  loc_A9F5DA: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A9F5DF: PopAdLdVar
  loc_A9F5E0: FLdPr Me
  loc_A9F5E3: MemLdRfVar from_stack_1.htmFile
  loc_A9F5E6: LdPrVar
  loc_A9F5E8: LateMemCall
  loc_A9F5EE: LitVarStr var_A4, "    <br><br>"
  loc_A9F5F3: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A9F5F8: FStVarCopyObj var_BC
  loc_A9F5FB: FLdRfVar var_BC
  loc_A9F5FE: FLdRfVar var_D4
  loc_A9F601: ImpAdCallFPR4  = Ucase()
  loc_A9F606: FLdRfVar var_D4
  loc_A9F609: ConcatVar var_E4
  loc_A9F60D: LitVarStr var_F4, "</p>"
  loc_A9F612: ConcatVar var_104
  loc_A9F616: PopAdLdVar
  loc_A9F617: FLdPr Me
  loc_A9F61A: MemLdRfVar from_stack_1.htmFile
  loc_A9F61D: LdPrVar
  loc_A9F61F: LateMemCall
  loc_A9F625: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A9F630: LitStr "    <p>"
  loc_A9F633: FLdRfVar var_A8
  loc_A9F636: FLdPr Me
  loc_A9F639:  = Me.Caption
  loc_A9F63E: ILdRf var_A8
  loc_A9F641: ConcatStr
  loc_A9F642: FStStrNoPop var_AC
  loc_A9F645: LitStr "</p></th>"
  loc_A9F648: ConcatStr
  loc_A9F649: CVarStr var_BC
  loc_A9F64C: PopAdLdVar
  loc_A9F64D: FLdPr Me
  loc_A9F650: MemLdRfVar from_stack_1.htmFile
  loc_A9F653: LdPrVar
  loc_A9F655: LateMemCall
  loc_A9F65B: FFreeStr var_A8 = ""
  loc_A9F662: FFree1Var var_BC = ""
  loc_A9F665: LitVarStr var_94, "  </tr>"
  loc_A9F66A: PopAdLdVar
  loc_A9F66B: FLdPr Me
  loc_A9F66E: MemLdRfVar from_stack_1.htmFile
  loc_A9F671: LdPrVar
  loc_A9F673: LateMemCall
  loc_A9F679: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_A9F67E: PopAdLdVar
  loc_A9F67F: FLdPr Me
  loc_A9F682: MemLdRfVar from_stack_1.htmFile
  loc_A9F685: LdPrVar
  loc_A9F687: LateMemCall
  loc_A9F68D: LitVarStr var_94, "  <tr align=""left"">"
  loc_A9F692: PopAdLdVar
  loc_A9F693: FLdPr Me
  loc_A9F696: MemLdRfVar from_stack_1.htmFile
  loc_A9F699: LdPrVar
  loc_A9F69B: LateMemCall
  loc_A9F6A1: LitVarStr var_94, "   <th>"
  loc_A9F6A6: PopAdLdVar
  loc_A9F6A7: FLdPr Me
  loc_A9F6AA: MemLdRfVar from_stack_1.htmFile
  loc_A9F6AD: LdPrVar
  loc_A9F6AF: LateMemCall
  loc_A9F6B5: LitStr "    Periodo: <span class=""Normal"">"
  loc_A9F6B8: FLdRfVar var_A8
  loc_A9F6BB: FLdPr Me
  loc_A9F6BE: VCallAd Control_ID_cboPeriodo
  loc_A9F6C1: FStAdFunc var_C0
  loc_A9F6C4: FLdPr var_C0
  loc_A9F6C7:  = Me.Text
  loc_A9F6CC: ILdRf var_A8
  loc_A9F6CF: ConcatStr
  loc_A9F6D0: FStStrNoPop var_AC
  loc_A9F6D3: LitStr "</span>"
  loc_A9F6D6: ConcatStr
  loc_A9F6D7: CVarStr var_BC
  loc_A9F6DA: PopAdLdVar
  loc_A9F6DB: FLdPr Me
  loc_A9F6DE: MemLdRfVar from_stack_1.htmFile
  loc_A9F6E1: LdPrVar
  loc_A9F6E3: LateMemCall
  loc_A9F6E9: FFreeStr var_A8 = ""
  loc_A9F6F0: FFree1Ad var_C0
  loc_A9F6F3: FFree1Var var_BC = ""
  loc_A9F6F6: FLdPr Me
  loc_A9F6F9: VCallAd Control_ID_CodiPartMsk
  loc_A9F6FC: FStAdFunc var_C0
  loc_A9F6FF: FLdPr var_C0
  loc_A9F702: LateIdLdVar var_BC DispID_0 0
  loc_A9F709: CStrVarTmp
  loc_A9F70A: FStStrNoPop var_A8
  loc_A9F70D: LitStr vbNullString
  loc_A9F710: NeStr
  loc_A9F712: FFree1Str var_A8
  loc_A9F715: FFree1Ad var_C0
  loc_A9F718: FFree1Var var_BC = ""
  loc_A9F71B: BranchF loc_A9F78F
  loc_A9F71E: LitStr "   <br>Partida: <span class=""Normal"">Comenzando con '"
  loc_A9F721: FLdPr Me
  loc_A9F724: VCallAd Control_ID_CodiPartMsk
  loc_A9F727: FStAdFunc var_C0
  loc_A9F72A: FLdPr var_C0
  loc_A9F72D: LateIdLdVar var_BC DispID_0 0
  loc_A9F734: CStrVarTmp
  loc_A9F735: FStStrNoPop var_A8
  loc_A9F738: ConcatStr
  loc_A9F739: FStStrNoPop var_AC
  loc_A9F73C: LitStr "'  -  "
  loc_A9F73F: ConcatStr
  loc_A9F740: FStStrNoPop var_120
  loc_A9F743: FLdRfVar var_11C
  loc_A9F746: FLdPr Me
  loc_A9F749: VCallAd Control_ID_CodiPartLbl
  loc_A9F74C: FStAdFunc var_118
  loc_A9F74F: FLdPr var_118
  loc_A9F752:  = Me.Caption
  loc_A9F757: ILdRf var_11C
  loc_A9F75A: ConcatStr
  loc_A9F75B: FStStrNoPop var_124
  loc_A9F75E: LitStr "</span>"
  loc_A9F761: ConcatStr
  loc_A9F762: CVarStr var_D4
  loc_A9F765: PopAdLdVar
  loc_A9F766: FLdPr Me
  loc_A9F769: MemLdRfVar from_stack_1.htmFile
  loc_A9F76C: LdPrVar
  loc_A9F76E: LateMemCall
  loc_A9F774: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_A9F781: FFreeAd var_C0 = ""
  loc_A9F788: FFreeVar var_BC = ""
  loc_A9F78F: FLdPr Me
  loc_A9F792: VCallAd Control_ID_CodiOrgaMsk
  loc_A9F795: FStAdFunc var_C0
  loc_A9F798: FLdPr var_C0
  loc_A9F79B: LateIdLdVar var_BC DispID_0 0
  loc_A9F7A2: CStrVarTmp
  loc_A9F7A3: FStStrNoPop var_A8
  loc_A9F7A6: LitStr vbNullString
  loc_A9F7A9: NeStr
  loc_A9F7AB: FFree1Str var_A8
  loc_A9F7AE: FFree1Ad var_C0
  loc_A9F7B1: FFree1Var var_BC = ""
  loc_A9F7B4: BranchF loc_A9F828
  loc_A9F7B7: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_A9F7BA: FLdPr Me
  loc_A9F7BD: VCallAd Control_ID_CodiOrgaMsk
  loc_A9F7C0: FStAdFunc var_C0
  loc_A9F7C3: FLdPr var_C0
  loc_A9F7C6: LateIdLdVar var_BC DispID_0 0
  loc_A9F7CD: CStrVarTmp
  loc_A9F7CE: FStStrNoPop var_A8
  loc_A9F7D1: ConcatStr
  loc_A9F7D2: FStStrNoPop var_AC
  loc_A9F7D5: LitStr "'  -  "
  loc_A9F7D8: ConcatStr
  loc_A9F7D9: FStStrNoPop var_120
  loc_A9F7DC: FLdRfVar var_11C
  loc_A9F7DF: FLdPr Me
  loc_A9F7E2: VCallAd Control_ID_CodiOrgaLbl
  loc_A9F7E5: FStAdFunc var_118
  loc_A9F7E8: FLdPr var_118
  loc_A9F7EB:  = Me.Caption
  loc_A9F7F0: ILdRf var_11C
  loc_A9F7F3: ConcatStr
  loc_A9F7F4: FStStrNoPop var_124
  loc_A9F7F7: LitStr "</span>"
  loc_A9F7FA: ConcatStr
  loc_A9F7FB: CVarStr var_D4
  loc_A9F7FE: PopAdLdVar
  loc_A9F7FF: FLdPr Me
  loc_A9F802: MemLdRfVar from_stack_1.htmFile
  loc_A9F805: LdPrVar
  loc_A9F807: LateMemCall
  loc_A9F80D: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_A9F81A: FFreeAd var_C0 = ""
  loc_A9F821: FFreeVar var_BC = ""
  loc_A9F828: FLdRfVar var_C2
  loc_A9F82B: FLdPr Me
  loc_A9F82E: VCallAd Control_ID_chkExcluirTransferidos
  loc_A9F831: FStAdFunc var_C0
  loc_A9F834: FLdPr var_C0
  loc_A9F837:  = Me.Value
  loc_A9F83C: FLdI2 var_C2
  loc_A9F83F: CI4UI1
  loc_A9F840: LitI4 1
  loc_A9F845: EqI4
  loc_A9F846: FFree1Ad var_C0
  loc_A9F849: BranchF loc_A9F860
  loc_A9F84C: LitVarStr var_94, "      <br>Los expedientes transferidos NO se muestran"
  loc_A9F851: PopAdLdVar
  loc_A9F852: FLdPr Me
  loc_A9F855: MemLdRfVar from_stack_1.htmFile
  loc_A9F858: LdPrVar
  loc_A9F85A: LateMemCall
  loc_A9F860: LitVarStr var_94, "   </th>"
  loc_A9F865: PopAdLdVar
  loc_A9F866: FLdPr Me
  loc_A9F869: MemLdRfVar from_stack_1.htmFile
  loc_A9F86C: LdPrVar
  loc_A9F86E: LateMemCall
  loc_A9F874: LitVarStr var_94, "  </tr>"
  loc_A9F879: PopAdLdVar
  loc_A9F87A: FLdPr Me
  loc_A9F87D: MemLdRfVar from_stack_1.htmFile
  loc_A9F880: LdPrVar
  loc_A9F882: LateMemCall
  loc_A9F888: LitVarStr var_94, "</table>"
  loc_A9F88D: PopAdLdVar
  loc_A9F88E: FLdPr Me
  loc_A9F891: MemLdRfVar from_stack_1.htmFile
  loc_A9F894: LdPrVar
  loc_A9F896: LateMemCall
  loc_A9F89C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A9F8A1: PopAdLdVar
  loc_A9F8A2: FLdPr Me
  loc_A9F8A5: MemLdRfVar from_stack_1.htmFile
  loc_A9F8A8: LdPrVar
  loc_A9F8AA: LateMemCall
  loc_A9F8B0: LitVarStr var_94, "  <THEAD>"
  loc_A9F8B5: PopAdLdVar
  loc_A9F8B6: FLdPr Me
  loc_A9F8B9: MemLdRfVar from_stack_1.htmFile
  loc_A9F8BC: LdPrVar
  loc_A9F8BE: LateMemCall
  loc_A9F8C4: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A9F8C9: PopAdLdVar
  loc_A9F8CA: FLdPr Me
  loc_A9F8CD: MemLdRfVar from_stack_1.htmFile
  loc_A9F8D0: LdPrVar
  loc_A9F8D2: LateMemCall
  loc_A9F8D8: LitVarStr var_94, "    <th>Expediente Original</th>"
  loc_A9F8DD: PopAdLdVar
  loc_A9F8DE: FLdPr Me
  loc_A9F8E1: MemLdRfVar from_stack_1.htmFile
  loc_A9F8E4: LdPrVar
  loc_A9F8E6: LateMemCall
  loc_A9F8EC: LitVarStr var_94, "    <th>Total Definitiva</th>"
  loc_A9F8F1: PopAdLdVar
  loc_A9F8F2: FLdPr Me
  loc_A9F8F5: MemLdRfVar from_stack_1.htmFile
  loc_A9F8F8: LdPrVar
  loc_A9F8FA: LateMemCall
  loc_A9F900: LitVarStr var_94, "    <th>Total Devengado</th>"
  loc_A9F905: PopAdLdVar
  loc_A9F906: FLdPr Me
  loc_A9F909: MemLdRfVar from_stack_1.htmFile
  loc_A9F90C: LdPrVar
  loc_A9F90E: LateMemCall
  loc_A9F914: LitVarStr var_94, "    <th>Saldo a Reapropiar</th>"
  loc_A9F919: PopAdLdVar
  loc_A9F91A: FLdPr Me
  loc_A9F91D: MemLdRfVar from_stack_1.htmFile
  loc_A9F920: LdPrVar
  loc_A9F922: LateMemCall
  loc_A9F928: LitStr "    <th>Total REAPROPIADO "
  loc_A9F92B: FLdRfVar var_A8
  loc_A9F92E: FLdPr Me
  loc_A9F931: VCallAd Control_ID_cboPeriodo
  loc_A9F934: FStAdFunc var_C0
  loc_A9F937: FLdPr var_C0
  loc_A9F93A:  = Me.Text
  loc_A9F93F: ILdRf var_A8
  loc_A9F942: CI2Str
  loc_A9F944: LitI2_Byte 1
  loc_A9F946: AddI2
  loc_A9F947: CStrUI1
  loc_A9F949: FStStrNoPop var_AC
  loc_A9F94C: ConcatStr
  loc_A9F94D: FStStrNoPop var_11C
  loc_A9F950: LitStr "</th>"
  loc_A9F953: ConcatStr
  loc_A9F954: CVarStr var_BC
  loc_A9F957: PopAdLdVar
  loc_A9F958: FLdPr Me
  loc_A9F95B: MemLdRfVar from_stack_1.htmFile
  loc_A9F95E: LdPrVar
  loc_A9F960: LateMemCall
  loc_A9F966: FFreeStr var_A8 = "": var_AC = ""
  loc_A9F96F: FFree1Ad var_C0
  loc_A9F972: FFree1Var var_BC = ""
  loc_A9F975: LitVarStr var_94, "    <th>Total Pagado</th>"
  loc_A9F97A: PopAdLdVar
  loc_A9F97B: FLdPr Me
  loc_A9F97E: MemLdRfVar from_stack_1.htmFile
  loc_A9F981: LdPrVar
  loc_A9F983: LateMemCall
  loc_A9F989: LitVarStr var_94, "  </tr>"
  loc_A9F98E: PopAdLdVar
  loc_A9F98F: FLdPr Me
  loc_A9F992: MemLdRfVar from_stack_1.htmFile
  loc_A9F995: LdPrVar
  loc_A9F997: LateMemCall
  loc_A9F99D: LitVarStr var_94, "  <THEAD>"
  loc_A9F9A2: PopAdLdVar
  loc_A9F9A3: FLdPr Me
  loc_A9F9A6: MemLdRfVar from_stack_1.htmFile
  loc_A9F9A9: LdPrVar
  loc_A9F9AB: LateMemCall
  loc_A9F9B1: ExitProcHresult
End Function

Private Function Proc_219_31_982CB0() '982CB0
  'Data Table: 4A61EC
  loc_982C70: LitVarStr var_94, "</table>"
  loc_982C75: PopAdLdVar
  loc_982C76: FLdPr Me
  loc_982C79: MemLdRfVar from_stack_1.htmFile
  loc_982C7C: LdPrVar
  loc_982C7E: LateMemCall
  loc_982C84: LitVarStr var_94, "</body>"
  loc_982C89: PopAdLdVar
  loc_982C8A: FLdPr Me
  loc_982C8D: MemLdRfVar from_stack_1.htmFile
  loc_982C90: LdPrVar
  loc_982C92: LateMemCall
  loc_982C98: LitVarStr var_94, "</html>"
  loc_982C9D: PopAdLdVar
  loc_982C9E: FLdPr Me
  loc_982CA1: MemLdRfVar from_stack_1.htmFile
  loc_982CA4: LdPrVar
  loc_982CA6: LateMemCall
  loc_982CAC: ExitProcHresult
  loc_982CAD: ILdI4 arg_5E5
End Function
