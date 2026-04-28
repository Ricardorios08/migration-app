VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeExtractoBancario
  Caption = "Listado de Extracto Bancario"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeExtractoBancario.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7335
  ClientHeight = 5175
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4920
    Width = 7335
    Height = 255
    TabIndex = 22
    OleObjectBlob = "rptListadodeExtractoBancario.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5880
    Top = 3960
    Width = 735
    Height = 615
    TabIndex = 20
    Cancel = -1  'True
    Picture = "rptListadodeExtractoBancario.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeExtractoBancario.frx":0B9C
    Left = 5760
    Top = 4320
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3720
    Width = 1815
    Height = 1095
    TabIndex = 18
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3720
    Width = 3015
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7095
    Height = 3615
    TabIndex = 0
    Begin VB.OptionButton TodosOpt
      Caption = "Todos"
      Left = 1920
      Top = 3120
      Width = 1455
      Height = 315
      TabIndex = 14
    End
    Begin VB.OptionButton NoConciliadosOpt
      Caption = "No Conciliados"
      Left = 1920
      Top = 2760
      Width = 1455
      Height = 315
      TabIndex = 13
    End
    Begin VB.OptionButton ConciliadosOpt
      Caption = "Conciliados"
      Left = 1920
      Top = 2400
      Width = 1455
      Height = 315
      TabIndex = 12
    End
    Begin VB.CommandButton HastaCmd
      Left = 3075
      Top = 1560
      Width = 375
      Height = 375
      TabIndex = 11
      Picture = "rptListadodeExtractoBancario.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeCmd
      Left = 3075
      Top = 1080
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptListadodeExtractoBancario.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CodiBancCmd
      Left = 2760
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptListadodeExtractoBancario.frx":1684
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5280
      Top = 1920
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1920
      Top = 1080
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptListadodeExtractoBancario.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1920
      Top = 1560
      Width = 1095
      Height = 285
      TabIndex = 10
      OleObjectBlob = "rptListadodeExtractoBancario.frx":1806
    End
    Begin MSMask.MaskEdBox CodiBancMsk
      Left = 1965
      Top = 360
      Width = 495
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptListadodeExtractoBancario.frx":188E
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 1320
      Top = 1560
      Width = 465
      Height = 195
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 1275
      Top = 1080
      Width = 510
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label DetaBancLbl
      Left = 3165
      Top = 360
      Width = 3615
      Height = 285
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label4
      Caption = "Banco:"
      Left = 1275
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6000
    Top = 4320
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 21
    OleObjectBlob = "rptListadodeExtractoBancario.frx":18F4
  End
End

Attribute VB_Name = "rptListadodeExtractoBancario"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_005A7200
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub Form_Load() '96CE98
  'Data Table: 48137C
  loc_96CE78: LitI2_Byte &HFF
  loc_96CE7A: ImpAdStI2 MemVar_C3D840
  loc_96CE7D: ILdRf Me
  loc_96CE80: CastAd
  loc_96CE83: FStAdFunc var_88
  loc_96CE86: FLdRfVar var_88
  loc_96CE89: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96CE8E: FFree1Ad var_88
  loc_96CE91: Call cmdNueva_Click()
  loc_96CE96: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '962C1C
  'Data Table: 48137C
  loc_962C04: FLdPr Me
  loc_962C07: VCallAd Control_ID_wbbReporte
  loc_962C0A: FStAdFunc var_88
  loc_962C0D: FLdRfVar var_88
  loc_962C10: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_962C15: FFree1Ad var_88
  loc_962C18: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94E498
  'Data Table: 48137C
  loc_94E484: FLdPr Me
  loc_94E487: VCallAd Control_ID_mskDesde
  loc_94E48A: CVarAd
  loc_94E48E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E493: FFree1Var var_94 = ""
  loc_94E496: ExitProcHresult
End Sub

Private Sub HastaCmd_Click() '9836BC
  'Data Table: 48137C
  loc_983680: LitVar_Missing var_A4
  loc_983683: PopAdLdVar
  loc_983684: LitVarI4
  loc_98368C: PopAdLdVar
  loc_98368D: ImpAdLdRf MemVar_C3D9A8
  loc_983690: NewIfNullPr frmCalendario
  loc_983693: frmCalendario.Show from_stack_1, from_stack_2
  loc_983698: ImpAdLdRf MemVar_C3D038
  loc_98369B: CDargRef
  loc_98369F: FLdPr Me
  loc_9836A2: VCallAd Control_ID_mskHasta
  loc_9836A5: FStAdFunc var_A8
  loc_9836A8: FLdPr var_A8
  loc_9836AB: LateIdSt
  loc_9836B0: FFree1Ad var_A8
  loc_9836B3: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9836B8: ExitProcHresult
  loc_9836B9: Ary1LdCy
End Sub

Private Sub CodiBancMsk_UnknownEvent_0 '94E408
  'Data Table: 48137C
  loc_94E3F4: FLdPr Me
  loc_94E3F7: VCallAd Control_ID_CodiBancMsk
  loc_94E3FA: CVarAd
  loc_94E3FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E403: FFree1Var var_94 = ""
  loc_94E406: ExitProcHresult
End Sub

Private Function CodiBancMsk_UnknownEvent_8(arg_C) '9E7954
  'Data Table: 48137C
  loc_9E7854: FLdRfVar var_88
  loc_9E7857: NewIfNullAd
  loc_9E785A: FStAd var_8C 
  loc_9E785E: LitStr "SELECT DetaBanc FROM banco WHERE PeriInfo = "
  loc_9E7861: ImpAdLdI2 MemVar_C3D064
  loc_9E7864: CStrUI1
  loc_9E7866: FStStrNoPop var_90
  loc_9E7869: ConcatStr
  loc_9E786A: FStStrNoPop var_94
  loc_9E786D: LitStr " AND CodiBanc = '"
  loc_9E7870: ConcatStr
  loc_9E7871: FStStrNoPop var_AC
  loc_9E7874: FLdPr Me
  loc_9E7877: VCallAd Control_ID_CodiBancMsk
  loc_9E787A: FStAdFunc var_98
  loc_9E787D: FLdPr var_98
  loc_9E7880: LateIdLdVar var_A8 DispID_0 0
  loc_9E7887: CStrVarTmp
  loc_9E7888: FStStrNoPop var_B0
  loc_9E788B: ConcatStr
  loc_9E788C: FStStrNoPop var_B4
  loc_9E788F: LitStr "'"
  loc_9E7892: ConcatStr
  loc_9E7893: FStStrNoPop var_B8
  loc_9E7896: FLdPr var_8C
  loc_9E7899: Call clsbanco.RedefineRS(from_stack_1v)
  loc_9E789E: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_9E78AD: FFree1Ad var_98
  loc_9E78B0: FFree1Var var_A8 = ""
  loc_9E78B3: FLdRfVar var_BC
  loc_9E78B6: FLdPr var_8C
  loc_9E78B9: from_stack_1 = clsbanco.RecordCount
  loc_9E78BE: ILdRf var_BC
  loc_9E78C1: LitI4 0
  loc_9E78C6: GtI4
  loc_9E78C7: BranchF loc_9E7928
  loc_9E78CA: FLdRfVar var_A8
  loc_9E78CD: FLdRfVar var_D4
  loc_9E78D0: LitVarStr var_D0, "DetaBanc"
  loc_9E78D5: PopAdLdVar
  loc_9E78D6: FLdRfVar var_C0
  loc_9E78D9: FLdRfVar var_98
  loc_9E78DC: FLdPr var_8C
  loc_9E78DF: from_stack_1v = clsbanco.RsFrmGet()
  loc_9E78E4: FLdPr var_98
  loc_9E78E7:  = Me.Fields
  loc_9E78EC: FLdPr var_C0
  loc_9E78EF: from_stack_2 = Me.Item(from_stack_1)
  loc_9E78F4: FLdPr var_D4
  loc_9E78F7:  = Me.Value
  loc_9E78FC: FLdRfVar var_A8
  loc_9E78FF: CStrVarTmp
  loc_9E7900: FStStrNoPop var_90
  loc_9E7903: FLdPr Me
  loc_9E7906: VCallAd Control_ID_DetaBancLbl
  loc_9E7909: FStAdFunc var_D8
  loc_9E790C: FLdPr var_D8
  loc_9E790F: Me.Caption = from_stack_1
  loc_9E7914: FFree1Str var_90
  loc_9E7917: FFreeAd var_98 = "": var_C0 = "": var_D4 = ""
  loc_9E7922: FFree1Var var_A8 = ""
  loc_9E7925: Branch loc_9E794C
  loc_9E7928: LitI4 0
  loc_9E792D: LitStr "Debe ingresar un código de banco válido"
  loc_9E7930: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9E7935: FLdPr Me
  loc_9E7938: VCallAd Control_ID_CodiBancMsk
  loc_9E793B: CVarAd
  loc_9E793F: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9E7944: FFree1Var var_A8 = ""
  loc_9E7947: LitI2_Byte &HFF
  loc_9E7949: IStI2 arg_C
  loc_9E794C: LitNothing
  loc_9E794E: FStAd var_8C 
  loc_9E7952: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '96288C
  'Data Table: 48137C
  loc_962874: LitI2_Byte 0
  loc_962876: ILdRf Me
  loc_962879: CastAd
  loc_96287C: FStAdFunc var_88
  loc_96287F: FLdRfVar var_88
  loc_962882: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_962887: FFree1Ad var_88
  loc_96288A: ExitProcHresult
End Sub

Private Sub CodiBancCmd_Click() '9F33E4
  'Data Table: 48137C
  loc_9F32B8: LitI2_Byte &HFF
  loc_9F32BA: ImpAdLdRf MemVar_C3D6AC
  loc_9F32BD: NewIfNullPr bscBanco
  loc_9F32C0: Call bscBanco.MuestroAnuladosPut(from_stack_1v)
  loc_9F32C5: LitVar_Missing var_A4
  loc_9F32C8: PopAdLdVar
  loc_9F32C9: LitVarI4
  loc_9F32D1: PopAdLdVar
  loc_9F32D2: ImpAdLdRf MemVar_C3D6AC
  loc_9F32D5: NewIfNullPr bscBanco
  loc_9F32D8: bscBanco.Show from_stack_1, from_stack_2
  loc_9F32DD: FLdRfVar var_AC
  loc_9F32E0: FLdRfVar var_A8
  loc_9F32E3: ImpAdLdRf MemVar_C3D6AC
  loc_9F32E6: NewIfNullPr bscBanco
  loc_9F32E9: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F32EE: FLdPr var_A8
  loc_9F32F1: from_stack_1 = clsbase.RecordCount
  loc_9F32F6: ILdRf var_AC
  loc_9F32F9: LitI4 0
  loc_9F32FE: GtI4
  loc_9F32FF: FFree1Ad var_A8
  loc_9F3302: BranchF loc_9F33DD
  loc_9F3305: FLdRfVar var_C8
  loc_9F3308: FLdRfVar var_B8
  loc_9F330B: LitVarStr var_94, "CodiBanc"
  loc_9F3310: PopAdLdVar
  loc_9F3311: FLdRfVar var_B4
  loc_9F3314: FLdRfVar var_B0
  loc_9F3317: FLdRfVar var_A8
  loc_9F331A: ImpAdLdRf MemVar_C3D6AC
  loc_9F331D: NewIfNullPr bscBanco
  loc_9F3320: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F3325: FLdPr var_A8
  loc_9F3328: from_stack_1v = clsbase.RsFrmGet()
  loc_9F332D: FLdPr var_B0
  loc_9F3330:  = Me.Fields
  loc_9F3335: FLdPr var_B4
  loc_9F3338: from_stack_2 = Me.Item(from_stack_1)
  loc_9F333D: FLdPr var_B8
  loc_9F3340:  = Me.Value
  loc_9F3345: FLdRfVar var_C8
  loc_9F3348: CStrVarTmp
  loc_9F3349: CVarStr var_D8
  loc_9F334C: PopAdLdVar
  loc_9F334D: FLdPr Me
  loc_9F3350: VCallAd Control_ID_CodiBancMsk
  loc_9F3353: FStAdFunc var_DC
  loc_9F3356: FLdPr var_DC
  loc_9F3359: LateIdSt
  loc_9F335E: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F336B: FFreeVar var_C8 = ""
  loc_9F3372: FLdRfVar var_C8
  loc_9F3375: FLdRfVar var_B8
  loc_9F3378: LitVarStr var_94, "DetaBanc"
  loc_9F337D: PopAdLdVar
  loc_9F337E: FLdRfVar var_B4
  loc_9F3381: FLdRfVar var_B0
  loc_9F3384: FLdRfVar var_A8
  loc_9F3387: ImpAdLdRf MemVar_C3D6AC
  loc_9F338A: NewIfNullPr bscBanco
  loc_9F338D: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F3392: FLdPr var_A8
  loc_9F3395: from_stack_1v = clsbase.RsFrmGet()
  loc_9F339A: FLdPr var_B0
  loc_9F339D:  = Me.Fields
  loc_9F33A2: FLdPr var_B4
  loc_9F33A5: from_stack_2 = Me.Item(from_stack_1)
  loc_9F33AA: FLdPr var_B8
  loc_9F33AD:  = Me.Value
  loc_9F33B2: FLdRfVar var_C8
  loc_9F33B5: CStrVarTmp
  loc_9F33B6: FStStrNoPop var_E0
  loc_9F33B9: FLdPr Me
  loc_9F33BC: VCallAd Control_ID_DetaBancLbl
  loc_9F33BF: FStAdFunc var_DC
  loc_9F33C2: FLdPr var_DC
  loc_9F33C5: Me.Caption = from_stack_1
  loc_9F33CA: FFree1Str var_E0
  loc_9F33CD: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F33DA: FFree1Var var_C8 = ""
  loc_9F33DD: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9F33E2: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '979B28
  'Data Table: 48137C
  loc_979AF8: LitVarStr var_94, "Cerrando..."
  loc_979AFD: PopAdLdVar
  loc_979AFE: FLdPr Me
  loc_979B01: VCallAd Control_ID_statusBar
  loc_979B04: FStAdFunc var_A8
  loc_979B07: FLdPr var_A8
  loc_979B0A: LateIdSt
  loc_979B0F: FFree1Ad var_A8
  loc_979B12: ILdRf Me
  loc_979B15: FStAdNoPop
  loc_979B19: ImpAdLdRf MemVar_C44F9C
  loc_979B1C: NewIfNullPr Me
  loc_979B1F: Me.Global.Unload from_stack_1
  loc_979B24: FFree1Ad var_A8
  loc_979B27: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9627F4
  'Data Table: 48137C
  loc_9627DC: ILdRf Me
  loc_9627DF: CastAd
  loc_9627E2: FStAdFunc var_88
  loc_9627E5: FLdRfVar var_88
  loc_9627E8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9627ED: FFree1Ad var_88
  loc_9627F0: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A43C
  'Data Table: 48137C
  loc_98A404: FLdPr Me
  loc_98A407: VCallAd Control_ID_statusBar
  loc_98A40A: FStAdFunc var_88
  loc_98A40D: FLdPr var_88
  loc_98A410: LateIdLdVar var_98 DispID_1 0
  loc_98A417: CStrVarTmp
  loc_98A418: CVarStr var_A8
  loc_98A41B: PopAdLdVar
  loc_98A41C: FLdPr Me
  loc_98A41F: VCallAd Control_ID_statusBar
  loc_98A422: FStAdFunc var_BC
  loc_98A425: FLdPr var_BC
  loc_98A428: LateIdSt
  loc_98A42D: FFreeAd var_88 = ""
  loc_98A434: FFreeVar var_98 = ""
  loc_98A43B: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9DBEA0
  'Data Table: 48137C
  loc_9DBDA8: LitI2_Byte 0
  loc_9DBDAA: FLdPr Me
  loc_9DBDAD: MemStI2 bGenerado
  loc_9DBDB0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9DBDB5: LitVarStr var_94, vbNullString
  loc_9DBDBA: PopAdLdVar
  loc_9DBDBB: FLdPr Me
  loc_9DBDBE: VCallAd Control_ID_CodiBancMsk
  loc_9DBDC1: FStAdFunc var_A8
  loc_9DBDC4: FLdPr var_A8
  loc_9DBDC7: LateIdSt
  loc_9DBDCC: FFree1Ad var_A8
  loc_9DBDCF: LitStr vbNullString
  loc_9DBDD2: FLdPr Me
  loc_9DBDD5: VCallAd Control_ID_DetaBancLbl
  loc_9DBDD8: FStAdFunc var_A8
  loc_9DBDDB: FLdPr var_A8
  loc_9DBDDE: Me.Caption = from_stack_1
  loc_9DBDE3: FFree1Ad var_A8
  loc_9DBDE6: LitI2_Byte 0
  loc_9DBDE8: PopTmpLdAd2 var_AA
  loc_9DBDEB: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9DBDF0: CVarDate var_BC
  loc_9DBDF4: FLdRfVar var_CC
  loc_9DBDF7: ImpAdCallFPR4  = Year()
  loc_9DBDFC: LitI2_Byte 0
  loc_9DBDFE: PopTmpLdAd2 var_CE
  loc_9DBE01: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9DBE06: CVarDate var_E0
  loc_9DBE0A: FLdRfVar var_F0
  loc_9DBE0D: ImpAdCallFPR4  = Month()
  loc_9DBE12: LitI2_Byte 1
  loc_9DBE14: FLdRfVar var_F0
  loc_9DBE17: CI2Var
  loc_9DBE18: FLdRfVar var_CC
  loc_9DBE1B: CI2Var
  loc_9DBE1C: FLdRfVar var_100
  loc_9DBE1F: ImpAdCallFPR4  = DateSerial(, , )
  loc_9DBE24: FLdRfVar var_100
  loc_9DBE27: CStrVarTmp
  loc_9DBE28: CVarStr var_110
  loc_9DBE2B: PopAdLdVar
  loc_9DBE2C: FLdPr Me
  loc_9DBE2F: VCallAd Control_ID_mskDesde
  loc_9DBE32: FStAdFunc var_A8
  loc_9DBE35: FLdPr var_A8
  loc_9DBE38: LateIdSt
  loc_9DBE3D: FFree1Ad var_A8
  loc_9DBE40: FFreeVar var_BC = "": var_E0 = "": var_CC = "": var_F0 = "": var_100 = ""
  loc_9DBE4F: ImpAdLdFPR8 MemVar_C3D04C
  loc_9DBE52: CStrDate
  loc_9DBE54: CVarStr var_BC
  loc_9DBE57: PopAdLdVar
  loc_9DBE58: FLdPr Me
  loc_9DBE5B: VCallAd Control_ID_mskHasta
  loc_9DBE5E: FStAdFunc var_A8
  loc_9DBE61: FLdPr var_A8
  loc_9DBE64: LateIdSt
  loc_9DBE69: FFree1Ad var_A8
  loc_9DBE6C: FFree1Var var_BC = ""
  loc_9DBE6F: LitI2_Byte &HFF
  loc_9DBE71: FLdPr Me
  loc_9DBE74: VCallAd Control_ID_TodosOpt
  loc_9DBE77: FStAdFunc var_A8
  loc_9DBE7A: FLdPr var_A8
  loc_9DBE7D: Me.Value = from_stack_1b
  loc_9DBE82: FFree1Ad var_A8
  loc_9DBE85: Call HabilitarCriterio()
  loc_9DBE8A: ILdRf Me
  loc_9DBE8D: CastAd
  loc_9DBE90: FStAdFunc var_A8
  loc_9DBE93: FLdRfVar var_A8
  loc_9DBE96: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9DBE9B: FFree1Ad var_A8
  loc_9DBE9E: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '962840
  'Data Table: 48137C
  loc_962828: ILdRf Me
  loc_96282B: CastAd
  loc_96282E: FStAdFunc var_88
  loc_962831: FLdRfVar var_88
  loc_962834: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_962839: FFree1Ad var_88
  loc_96283C: ExitProcHresult
End Sub

Private Sub DesdeCmd_Click() '98364C
  'Data Table: 48137C
  loc_983610: LitVar_Missing var_A4
  loc_983613: PopAdLdVar
  loc_983614: LitVarI4
  loc_98361C: PopAdLdVar
  loc_98361D: ImpAdLdRf MemVar_C3D9A8
  loc_983620: NewIfNullPr frmCalendario
  loc_983623: frmCalendario.Show from_stack_1, from_stack_2
  loc_983628: ImpAdLdRf MemVar_C3D038
  loc_98362B: CDargRef
  loc_98362F: FLdPr Me
  loc_983632: VCallAd Control_ID_mskDesde
  loc_983635: FStAdFunc var_A8
  loc_983638: FLdPr var_A8
  loc_98363B: LateIdSt
  loc_983640: FFree1Ad var_A8
  loc_983643: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_983648: ExitProcHresult
  loc_983649: Assert
End Sub

Private Sub mskHasta_UnknownEvent_0 '94E3C0
  'Data Table: 48137C
  loc_94E3AC: FLdPr Me
  loc_94E3AF: VCallAd Control_ID_mskHasta
  loc_94E3B2: CVarAd
  loc_94E3B6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E3BB: FFree1Var var_94 = ""
  loc_94E3BE: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B4654
  'Data Table: 48137C
  loc_9B45B8: FLdPr Me
  loc_9B45BB: VCallAd Control_ID_mskHasta
  loc_9B45BE: FStAdFunc var_88
  loc_9B45C1: FLdPr var_88
  loc_9B45C4: LateIdLdVar var_98 DispID_15 0
  loc_9B45CB: PopAd
  loc_9B45CD: FLdPr Me
  loc_9B45D0: VCallAd Control_ID_mskHasta
  loc_9B45D3: FStAdFunc var_AC
  loc_9B45D6: LitI2_Byte 0
  loc_9B45D8: PopTmpLdAd2 var_A2
  loc_9B45DB: FLdZeroAd var_AC
  loc_9B45DE: FStAdFunc var_A0
  loc_9B45E1: FLdRfVar var_A0
  loc_9B45E4: LitStr vbNullString
  loc_9B45E7: LitI2_Byte 0
  loc_9B45E9: LitI2_Byte 0
  loc_9B45EB: FLdRfVar var_98
  loc_9B45EE: CStrVarTmp
  loc_9B45EF: FStStrNoPop var_9C
  loc_9B45F2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B45F7: FStStrNoPop var_A8
  loc_9B45FA: FLdPr Me
  loc_9B45FD: MemStStrCopy
  loc_9B4601: FFreeStr var_9C = ""
  loc_9B4608: FFreeAd var_88 = "": var_A0 = ""
  loc_9B4611: FFree1Var var_98 = ""
  loc_9B4614: FLdPr Me
  loc_9B4617: VCallAd Control_ID_mskHasta
  loc_9B461A: FStAdFunc var_B0
  loc_9B461D: LitNothing
  loc_9B461F: CastAd
  loc_9B4622: FStAdFunc var_AC
  loc_9B4625: FLdRfVar var_AC
  loc_9B4628: FLdZeroAd var_B0
  loc_9B462B: FStAdFuncNoPop
  loc_9B462E: CastAd
  loc_9B4631: FStAdFunc var_A0
  loc_9B4634: FLdRfVar var_A0
  loc_9B4637: FLdPr Me
  loc_9B463A: MemLdRfVar from_stack_1.global_96
  loc_9B463D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B4642: IStI2 arg_C
  loc_9B4645: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B4650: ExitProcHresult
End Function

Public Function htmFileGet() '482384
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '482393
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4823A2
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4823B1
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4823C0
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9C5EC8
  'Data Table: 48137C
  loc_9C5E14: LitI4 0
  loc_9C5E19: LitI4 8
  loc_9C5E1E: FLdRfVar var_88
  loc_9C5E21: Redim
  loc_9C5E2B: FLdPr Me
  loc_9C5E2E: VCallAd Control_ID_CodiBancMsk
  loc_9C5E31: CVarAd
  loc_9C5E35: ParmAry1St
  loc_9C5E3B: FLdPr Me
  loc_9C5E3E: VCallAd Control_ID_CodiBancCmd
  loc_9C5E41: CVarAd
  loc_9C5E45: ParmAry1St
  loc_9C5E4B: FLdPr Me
  loc_9C5E4E: VCallAd Control_ID_mskDesde
  loc_9C5E51: CVarAd
  loc_9C5E55: ParmAry1St
  loc_9C5E5B: FLdPr Me
  loc_9C5E5E: VCallAd Control_ID_DesdeCmd
  loc_9C5E61: CVarAd
  loc_9C5E65: ParmAry1St
  loc_9C5E6B: FLdPr Me
  loc_9C5E6E: VCallAd Control_ID_mskHasta
  loc_9C5E71: CVarAd
  loc_9C5E75: ParmAry1St
  loc_9C5E7B: FLdPr Me
  loc_9C5E7E: VCallAd Control_ID_HastaCmd
  loc_9C5E81: CVarAd
  loc_9C5E85: ParmAry1St
  loc_9C5E8B: FLdPr Me
  loc_9C5E8E: VCallAd Control_ID_ConciliadosOpt
  loc_9C5E91: CVarAd
  loc_9C5E95: ParmAry1St
  loc_9C5E9B: FLdPr Me
  loc_9C5E9E: VCallAd Control_ID_NoConciliadosOpt
  loc_9C5EA1: CVarAd
  loc_9C5EA5: ParmAry1St
  loc_9C5EAB: FLdPr Me
  loc_9C5EAE: VCallAd Control_ID_TodosOpt
  loc_9C5EB1: CVarAd
  loc_9C5EB5: ParmAry1St
  loc_9C5EBB: FLdRfVar var_88
  loc_9C5EBE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C5EC3: FLdRfVar var_88
  loc_9C5EC6: Erase
  loc_9C5EC7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AD78CC
  'Data Table: 48137C
  loc_AD728C: FLdPr Me
  loc_AD728F: MemLdI2 bGenerado
  loc_AD7292: BranchF loc_AD7296
  loc_AD7295: ExitProcHresult
  loc_AD7296: LitVarStr var_A0, "Generando reporte..."
  loc_AD729B: PopAdLdVar
  loc_AD729C: FLdPr Me
  loc_AD729F: VCallAd Control_ID_statusBar
  loc_AD72A2: FStAdFunc var_B4
  loc_AD72A5: FLdPr var_B4
  loc_AD72A8: LateIdSt
  loc_AD72AD: FFree1Ad var_B4
  loc_AD72B0: LitI4 &HB
  loc_AD72B5: CI2I4
  loc_AD72B6: FLdPr Me
  loc_AD72B9: Me.MousePointer = from_stack_1
  loc_AD72BE: FLdPr Me
  loc_AD72C1: VCallAd Control_ID_mskDesde
  loc_AD72C4: FStAdFunc var_B4
  loc_AD72C7: FLdPr var_B4
  loc_AD72CA: LateIdLdVar var_C4 DispID_15 0
  loc_AD72D1: CStrVarTmp
  loc_AD72D2: CVarStr var_D4
  loc_AD72D5: ImpAdCallI2 IsDate()
  loc_AD72DA: FStI2 var_14E
  loc_AD72DD: FLdPr Me
  loc_AD72E0: VCallAd Control_ID_mskDesde
  loc_AD72E3: FStAdFunc var_D8
  loc_AD72E6: FLdPr var_D8
  loc_AD72E9: LateIdLdVar var_E8 DispID_15 0
  loc_AD72F0: PopAd
  loc_AD72F2: LitI4 1
  loc_AD72F7: LitI4 1
  loc_AD72FC: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AD7301: FStVarCopyObj var_108
  loc_AD7304: FLdRfVar var_108
  loc_AD7307: FLdRfVar var_E8
  loc_AD730A: CStrVarTmp
  loc_AD730B: CVarStr var_F8
  loc_AD730E: ImpAdCallI2 Format$(, )
  loc_AD7313: FStStr var_154
  loc_AD7316: LitVarStr var_12C, vbNullString
  loc_AD731B: FStVarCopyObj var_13C
  loc_AD731E: FLdRfVar var_13C
  loc_AD7321: LitStr " AND FechMoba >= "
  loc_AD7324: FLdZeroAd var_154
  loc_AD7327: FStStrNoPop var_10C
  loc_AD732A: ConcatStr
  loc_AD732B: CVarStr var_11C
  loc_AD732E: FLdI2 var_14E
  loc_AD7331: CVarBoolI2 var_B0
  loc_AD7335: FLdRfVar var_14C
  loc_AD7338: ImpAdCallFPR4  = IIf(, , )
  loc_AD733D: FLdRfVar var_14C
  loc_AD7340: CStrVarTmp
  loc_AD7341: FStStr var_88
  loc_AD7344: FFreeStr var_10C = ""
  loc_AD734B: FFreeAd var_B4 = ""
  loc_AD7352: FFreeVar var_C4 = "": var_D4 = "": var_E8 = "": var_F8 = "": var_108 = "": var_B0 = "": var_11C = "": var_13C = ""
  loc_AD7367: FLdPr Me
  loc_AD736A: VCallAd Control_ID_mskHasta
  loc_AD736D: FStAdFunc var_B4
  loc_AD7370: FLdPr var_B4
  loc_AD7373: LateIdLdVar var_C4 DispID_15 0
  loc_AD737A: CStrVarTmp
  loc_AD737B: CVarStr var_D4
  loc_AD737E: ImpAdCallI2 IsDate()
  loc_AD7383: FStI2 var_14E
  loc_AD7386: FLdPr Me
  loc_AD7389: VCallAd Control_ID_mskHasta
  loc_AD738C: FStAdFunc var_D8
  loc_AD738F: FLdPr var_D8
  loc_AD7392: LateIdLdVar var_E8 DispID_15 0
  loc_AD7399: PopAd
  loc_AD739B: LitI4 1
  loc_AD73A0: LitI4 1
  loc_AD73A5: LitVarStr var_A0, "'yyyy-mm-dd'"
  loc_AD73AA: FStVarCopyObj var_108
  loc_AD73AD: FLdRfVar var_108
  loc_AD73B0: FLdRfVar var_E8
  loc_AD73B3: CStrVarTmp
  loc_AD73B4: CVarStr var_F8
  loc_AD73B7: ImpAdCallI2 Format$(, )
  loc_AD73BC: FStStr var_154
  loc_AD73BF: LitVarStr var_12C, vbNullString
  loc_AD73C4: FStVarCopyObj var_13C
  loc_AD73C7: FLdRfVar var_13C
  loc_AD73CA: LitStr " AND FechMoba <= "
  loc_AD73CD: FLdZeroAd var_154
  loc_AD73D0: FStStrNoPop var_10C
  loc_AD73D3: ConcatStr
  loc_AD73D4: CVarStr var_11C
  loc_AD73D7: FLdI2 var_14E
  loc_AD73DA: CVarBoolI2 var_B0
  loc_AD73DE: FLdRfVar var_14C
  loc_AD73E1: ImpAdCallFPR4  = IIf(, , )
  loc_AD73E6: FLdRfVar var_14C
  loc_AD73E9: CStrVarTmp
  loc_AD73EA: FStStr var_8C
  loc_AD73ED: FFreeStr var_10C = ""
  loc_AD73F4: FFreeAd var_B4 = ""
  loc_AD73FB: FFreeVar var_C4 = "": var_D4 = "": var_E8 = "": var_F8 = "": var_108 = "": var_B0 = "": var_11C = "": var_13C = ""
  loc_AD7410: FLdPr Me
  loc_AD7413: VCallAd Control_ID_ConciliadosOpt
  loc_AD7416: CVarAd
  loc_AD741A: CBoolVarNull
  loc_AD741C: FFree1Var var_C4 = ""
  loc_AD741F: BranchF loc_AD7428
  loc_AD7422: LitStr " AND FecoMoba is not null"
  loc_AD7425: FStStrCopy var_90
  loc_AD7428: FLdPr Me
  loc_AD742B: VCallAd Control_ID_NoConciliadosOpt
  loc_AD742E: CVarAd
  loc_AD7432: CBoolVarNull
  loc_AD7434: FFree1Var var_C4 = ""
  loc_AD7437: BranchF loc_AD7440
  loc_AD743A: LitStr " AND FecoMoba is null"
  loc_AD743D: FStStrCopy var_90
  loc_AD7440: FLdPr Me
  loc_AD7443: VCallAd Control_ID_TodosOpt
  loc_AD7446: CVarAd
  loc_AD744A: CBoolVarNull
  loc_AD744C: FFree1Var var_C4 = ""
  loc_AD744F: BranchF loc_AD7458
  loc_AD7452: LitStr vbNullString
  loc_AD7455: FStStrCopy var_90
  loc_AD7458: FLdPr Me
  loc_AD745B: MemLdRfVar from_stack_1.global_72
  loc_AD745E: NewIfNullAd
  loc_AD7461: FStAd var_158 
  loc_AD7465: LitStr "SELECT CONVERT(IF(DebeMoba!=0,'Débito extracto','Crédito extracto'), CHAR(100)) DetaTimb, NumeMoba, DetaMoba, FechMoba, FecoMoba, DebeMoba, HabeMoba"
  loc_AD7468: LitStr " FROM moviextracto me"
  loc_AD746B: ConcatStr
  loc_AD746C: FStStrNoPop var_10C
  loc_AD746F: LitStr " WHERE CodiBanc = '"
  loc_AD7472: ConcatStr
  loc_AD7473: FStStrNoPop var_154
  loc_AD7476: FLdPr Me
  loc_AD7479: VCallAd Control_ID_CodiBancMsk
  loc_AD747C: FStAdFunc var_B4
  loc_AD747F: FLdPr var_B4
  loc_AD7482: LateIdLdVar var_C4 DispID_0 0
  loc_AD7489: CStrVarTmp
  loc_AD748A: FStStrNoPop var_15C
  loc_AD748D: ConcatStr
  loc_AD748E: FStStrNoPop var_160
  loc_AD7491: LitStr "' "
  loc_AD7494: ConcatStr
  loc_AD7495: FStStrNoPop var_164
  loc_AD7498: ILdRf var_88
  loc_AD749B: ConcatStr
  loc_AD749C: FStStrNoPop var_168
  loc_AD749F: ILdRf var_8C
  loc_AD74A2: ConcatStr
  loc_AD74A3: FStStrNoPop var_16C
  loc_AD74A6: ILdRf var_90
  loc_AD74A9: ConcatStr
  loc_AD74AA: FStStrNoPop var_170
  loc_AD74AD: LitStr " ORDER BY FechMoba, NumeMoba;"
  loc_AD74B0: ConcatStr
  loc_AD74B1: FStStrNoPop var_174
  loc_AD74B4: FLdPr var_158
  loc_AD74B7: Call clsmoviextracto.RedefineRS(from_stack_1v)
  loc_AD74BC: FFreeStr var_10C = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_AD74D1: FFree1Ad var_B4
  loc_AD74D4: FFree1Var var_C4 = ""
  loc_AD74D7: FLdRfVar var_178
  loc_AD74DA: FLdPr var_158
  loc_AD74DD: from_stack_1 = clsmoviextracto.RecordCount
  loc_AD74E2: ILdRf var_178
  loc_AD74E5: LitI4 0
  loc_AD74EA: EqI4
  loc_AD74EB: BranchF loc_AD74FE
  loc_AD74EE: LitI4 0
  loc_AD74F3: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AD74F6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD74FB: Branch loc_AD78A0
  loc_AD74FE: LitI2_Byte 0
  loc_AD7500: LitVar_Missing var_C4
  loc_AD7503: LitI2_Byte &HFF
  loc_AD7505: LitVarI2 var_A0, 0
  loc_AD750A: PopAdLdVar
  loc_AD750B: FLdPr Me
  loc_AD750E: MemLdRfVar from_stack_1.global_88
  loc_AD7511: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD7516: FFree1Var var_C4 = ""
  loc_AD7519: LitI2_Byte 0
  loc_AD751B: LitVar_Missing var_C4
  loc_AD751E: LitI2_Byte &HFF
  loc_AD7520: LitVarI2 var_A0, 0
  loc_AD7525: PopAdLdVar
  loc_AD7526: FLdPr Me
  loc_AD7529: MemLdRfVar from_stack_1.global_92
  loc_AD752C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD7531: FFree1Var var_C4 = ""
  loc_AD7534: LitI4 1
  loc_AD7539: FLdRfVar var_178
  loc_AD753C: FLdPr var_158
  loc_AD753F: from_stack_1 = clsmoviextracto.RecordCount
  loc_AD7544: ILdRf var_178
  loc_AD7547: FLdPr Me
  loc_AD754A: MemLdRfVar from_stack_1.global_80
  loc_AD754D: Redim
  loc_AD7557: FLdPr var_158
  loc_AD755A: Call clsmoviextracto.MoveFirst()
  loc_AD755F: LitI4 1
  loc_AD7564: FLdPr Me
  loc_AD7567: MemLdRfVar from_stack_1.global_84
  loc_AD756A: FLdPr Me
  loc_AD756D: MemLdStr global_80
  loc_AD7570: LitI2_Byte 1
  loc_AD7572: FnUBound
  loc_AD7574: ForI4 var_180
  loc_AD757A: FLdRfVar var_184
  loc_AD757D: LitVarStr var_A0, "DetaTimb"
  loc_AD7582: PopAdLdVar
  loc_AD7583: FLdRfVar var_D8
  loc_AD7586: FLdRfVar var_B4
  loc_AD7589: FLdPr var_158
  loc_AD758C: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_AD7591: FLdPr var_B4
  loc_AD7594:  = Me.Fields
  loc_AD7599: FLdPr var_D8
  loc_AD759C: from_stack_2 = Me.Item(from_stack_1)
  loc_AD75A1: LitI2_Byte 0
  loc_AD75A3: LitVar_Missing var_D4
  loc_AD75A6: LitI2_Byte 0
  loc_AD75A8: FLdZeroAd var_184
  loc_AD75AB: CVarAd
  loc_AD75AF: PopAdLdVar
  loc_AD75B0: FLdPr Me
  loc_AD75B3: MemLdStr global_84
  loc_AD75B6: FLdPr Me
  loc_AD75B9: MemLdStr global_80
  loc_AD75BC: AryLock
  loc_AD75BF: Ary1LdPr
  loc_AD75C0: MemLdRfVar from_stack_1.global_0
  loc_AD75C3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD75C8: AryUnlock
  loc_AD75CB: FFreeAd var_B4 = ""
  loc_AD75D2: FFreeVar var_C4 = ""
  loc_AD75D9: FLdRfVar var_184
  loc_AD75DC: LitVarStr var_A0, "DetaTimb"
  loc_AD75E1: PopAdLdVar
  loc_AD75E2: FLdRfVar var_D8
  loc_AD75E5: FLdRfVar var_B4
  loc_AD75E8: FLdPr var_158
  loc_AD75EB: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_AD75F0: FLdPr var_B4
  loc_AD75F3:  = Me.Fields
  loc_AD75F8: FLdPr var_D8
  loc_AD75FB: from_stack_2 = Me.Item(from_stack_1)
  loc_AD7600: LitI2_Byte 0
  loc_AD7602: LitVar_Missing var_D4
  loc_AD7605: LitI2_Byte 0
  loc_AD7607: FLdZeroAd var_184
  loc_AD760A: CVarAd
  loc_AD760E: PopAdLdVar
  loc_AD760F: FLdPr Me
  loc_AD7612: MemLdStr global_84
  loc_AD7615: FLdPr Me
  loc_AD7618: MemLdStr global_80
  loc_AD761B: AryLock
  loc_AD761E: Ary1LdPr
  loc_AD761F: MemLdRfVar from_stack_1.global_8
  loc_AD7622: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD7627: AryUnlock
  loc_AD762A: FFreeAd var_B4 = ""
  loc_AD7631: FFreeVar var_C4 = ""
  loc_AD7638: FLdRfVar var_184
  loc_AD763B: LitVarStr var_A0, "NumeMoba"
  loc_AD7640: PopAdLdVar
  loc_AD7641: FLdRfVar var_D8
  loc_AD7644: FLdRfVar var_B4
  loc_AD7647: FLdPr var_158
  loc_AD764A: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_AD764F: FLdPr var_B4
  loc_AD7652:  = Me.Fields
  loc_AD7657: FLdPr var_D8
  loc_AD765A: from_stack_2 = Me.Item(from_stack_1)
  loc_AD765F: LitI2_Byte 0
  loc_AD7661: LitVar_Missing var_D4
  loc_AD7664: LitI2_Byte 0
  loc_AD7666: FLdZeroAd var_184
  loc_AD7669: CVarAd
  loc_AD766D: PopAdLdVar
  loc_AD766E: FLdPr Me
  loc_AD7671: MemLdStr global_84
  loc_AD7674: FLdPr Me
  loc_AD7677: MemLdStr global_80
  loc_AD767A: AryLock
  loc_AD767D: Ary1LdPr
  loc_AD767E: MemLdRfVar from_stack_1.global_4
  loc_AD7681: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD7686: AryUnlock
  loc_AD7689: FFreeAd var_B4 = ""
  loc_AD7690: FFreeVar var_C4 = ""
  loc_AD7697: FLdRfVar var_184
  loc_AD769A: LitVarStr var_A0, "DetaMoba"
  loc_AD769F: PopAdLdVar
  loc_AD76A0: FLdRfVar var_D8
  loc_AD76A3: FLdRfVar var_B4
  loc_AD76A6: FLdPr var_158
  loc_AD76A9: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_AD76AE: FLdPr var_B4
  loc_AD76B1:  = Me.Fields
  loc_AD76B6: FLdPr var_D8
  loc_AD76B9: from_stack_2 = Me.Item(from_stack_1)
  loc_AD76BE: LitI2_Byte 0
  loc_AD76C0: LitVar_Missing var_D4
  loc_AD76C3: LitI2_Byte 0
  loc_AD76C5: FLdZeroAd var_184
  loc_AD76C8: CVarAd
  loc_AD76CC: PopAdLdVar
  loc_AD76CD: FLdPr Me
  loc_AD76D0: MemLdStr global_84
  loc_AD76D3: FLdPr Me
  loc_AD76D6: MemLdStr global_80
  loc_AD76D9: AryLock
  loc_AD76DC: Ary1LdPr
  loc_AD76DD: MemLdRfVar from_stack_1.global_8
  loc_AD76E0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD76E5: AryUnlock
  loc_AD76E8: FFreeAd var_B4 = ""
  loc_AD76EF: FFreeVar var_C4 = ""
  loc_AD76F6: FLdRfVar var_184
  loc_AD76F9: LitVarStr var_A0, "FechMoba"
  loc_AD76FE: PopAdLdVar
  loc_AD76FF: FLdRfVar var_D8
  loc_AD7702: FLdRfVar var_B4
  loc_AD7705: FLdPr var_158
  loc_AD7708: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_AD770D: FLdPr var_B4
  loc_AD7710:  = Me.Fields
  loc_AD7715: FLdPr var_D8
  loc_AD7718: from_stack_2 = Me.Item(from_stack_1)
  loc_AD771D: LitI2_Byte 0
  loc_AD771F: LitVar_Missing var_D4
  loc_AD7722: LitI2_Byte 0
  loc_AD7724: FLdZeroAd var_184
  loc_AD7727: CVarAd
  loc_AD772B: PopAdLdVar
  loc_AD772C: FLdPr Me
  loc_AD772F: MemLdStr global_84
  loc_AD7732: FLdPr Me
  loc_AD7735: MemLdStr global_80
  loc_AD7738: AryLock
  loc_AD773B: Ary1LdPr
  loc_AD773C: MemLdRfVar from_stack_1.global_12
  loc_AD773F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD7744: AryUnlock
  loc_AD7747: FFreeAd var_B4 = ""
  loc_AD774E: FFreeVar var_C4 = ""
  loc_AD7755: FLdRfVar var_184
  loc_AD7758: LitVarStr var_A0, "FecoMoba"
  loc_AD775D: PopAdLdVar
  loc_AD775E: FLdRfVar var_D8
  loc_AD7761: FLdRfVar var_B4
  loc_AD7764: FLdPr var_158
  loc_AD7767: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_AD776C: FLdPr var_B4
  loc_AD776F:  = Me.Fields
  loc_AD7774: FLdPr var_D8
  loc_AD7777: from_stack_2 = Me.Item(from_stack_1)
  loc_AD777C: LitI2_Byte 0
  loc_AD777E: LitVar_Missing var_D4
  loc_AD7781: LitI2_Byte 0
  loc_AD7783: FLdZeroAd var_184
  loc_AD7786: CVarAd
  loc_AD778A: PopAdLdVar
  loc_AD778B: FLdPr Me
  loc_AD778E: MemLdStr global_84
  loc_AD7791: FLdPr Me
  loc_AD7794: MemLdStr global_80
  loc_AD7797: AryLock
  loc_AD779A: Ary1LdPr
  loc_AD779B: MemLdRfVar from_stack_1.global_16
  loc_AD779E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD77A3: AryUnlock
  loc_AD77A6: FFreeAd var_B4 = ""
  loc_AD77AD: FFreeVar var_C4 = ""
  loc_AD77B4: FLdRfVar var_184
  loc_AD77B7: LitVarStr var_A0, "DebeMoba"
  loc_AD77BC: PopAdLdVar
  loc_AD77BD: FLdRfVar var_D8
  loc_AD77C0: FLdRfVar var_B4
  loc_AD77C3: FLdPr var_158
  loc_AD77C6: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_AD77CB: FLdPr var_B4
  loc_AD77CE:  = Me.Fields
  loc_AD77D3: FLdPr var_D8
  loc_AD77D6: from_stack_2 = Me.Item(from_stack_1)
  loc_AD77DB: LitI2_Byte 0
  loc_AD77DD: FLdPr Me
  loc_AD77E0: MemLdRfVar from_stack_1.global_88
  loc_AD77E3: CVarRef
  loc_AD77E8: LitI2_Byte &HFF
  loc_AD77EA: FLdZeroAd var_184
  loc_AD77ED: CVarAd
  loc_AD77F1: PopAdLdVar
  loc_AD77F2: FLdPr Me
  loc_AD77F5: MemLdStr global_84
  loc_AD77F8: FLdPr Me
  loc_AD77FB: MemLdStr global_80
  loc_AD77FE: AryLock
  loc_AD7801: Ary1LdPr
  loc_AD7802: MemLdRfVar from_stack_1.global_20
  loc_AD7805: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD780A: AryUnlock
  loc_AD780D: FFreeAd var_B4 = ""
  loc_AD7814: FFree1Var var_C4 = ""
  loc_AD7817: FLdRfVar var_184
  loc_AD781A: LitVarStr var_A0, "HabeMoba"
  loc_AD781F: PopAdLdVar
  loc_AD7820: FLdRfVar var_D8
  loc_AD7823: FLdRfVar var_B4
  loc_AD7826: FLdPr var_158
  loc_AD7829: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_AD782E: FLdPr var_B4
  loc_AD7831:  = Me.Fields
  loc_AD7836: FLdPr var_D8
  loc_AD7839: from_stack_2 = Me.Item(from_stack_1)
  loc_AD783E: LitI2_Byte 0
  loc_AD7840: FLdPr Me
  loc_AD7843: MemLdRfVar from_stack_1.global_92
  loc_AD7846: CVarRef
  loc_AD784B: LitI2_Byte &HFF
  loc_AD784D: FLdZeroAd var_184
  loc_AD7850: CVarAd
  loc_AD7854: PopAdLdVar
  loc_AD7855: FLdPr Me
  loc_AD7858: MemLdStr global_84
  loc_AD785B: FLdPr Me
  loc_AD785E: MemLdStr global_80
  loc_AD7861: AryLock
  loc_AD7864: Ary1LdPr
  loc_AD7865: MemLdRfVar from_stack_1.global_24
  loc_AD7868: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AD786D: AryUnlock
  loc_AD7870: FFreeAd var_B4 = ""
  loc_AD7877: FFree1Var var_C4 = ""
  loc_AD787A: LitI2_Byte 1
  loc_AD787C: PopTmpLdAd2 var_14E
  loc_AD787F: FLdPr var_158
  loc_AD7882: Call clsmoviextracto.Move(from_stack_1v)
  loc_AD7887: FLdPr Me
  loc_AD788A: MemLdRfVar from_stack_1.global_84
  loc_AD788D: NextI4 var_180, loc_AD757A
  loc_AD7892: LitNothing
  loc_AD7894: FStAd var_158 
  loc_AD7898: LitI2_Byte &HFF
  loc_AD789A: FLdPr Me
  loc_AD789D: MemStI2 bGenerado
  loc_AD78A0: LitI4 0
  loc_AD78A5: CI2I4
  loc_AD78A6: FLdPr Me
  loc_AD78A9: Me.MousePointer = from_stack_1
  loc_AD78AE: LitVarStr var_A0, vbNullString
  loc_AD78B3: PopAdLdVar
  loc_AD78B4: FLdPr Me
  loc_AD78B7: VCallAd Control_ID_statusBar
  loc_AD78BA: FStAdFunc var_B4
  loc_AD78BD: FLdPr var_B4
  loc_AD78C0: LateIdSt
  loc_AD78C5: FFree1Ad var_B4
  loc_AD78C8: ExitProcHresult
  loc_AD78C9: Ary1LdFPR8
  loc_AD78CA: CDateR8
End Sub

Public Sub GeneraHTML() 'A61E9C
  'Data Table: 48137C
  loc_A61B68: FLdRfVar var_88
  loc_A61B6B: LitI2_Byte 0
  loc_A61B6D: LitI2_Byte &HFF
  loc_A61B6F: ImpAdLdI4 MemVar_C3D83C
  loc_A61B72: FLdPr Me
  loc_A61B75: MemLdRfVar from_stack_1.global_76
  loc_A61B78: NewIfNullPr IFileSystem3
  loc_A61B7B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A61B80: ILdRf var_88
  loc_A61B83: FLdPr Me
  loc_A61B86: MemStVarAd
  loc_A61B8A: FFree1Ad var_88
  loc_A61B8D: Call Proc_193_24_A8CD18()
  loc_A61B92: LitI4 1
  loc_A61B97: FLdPr Me
  loc_A61B9A: MemLdRfVar from_stack_1.global_84
  loc_A61B9D: FLdPr Me
  loc_A61BA0: MemLdStr global_80
  loc_A61BA3: LitI2_Byte 1
  loc_A61BA5: FnUBound
  loc_A61BA7: ForI4 var_90
  loc_A61BAD: FLdPr Me
  loc_A61BB0: MemLdStr global_84
  loc_A61BB3: FLdPr Me
  loc_A61BB6: MemLdStr global_80
  loc_A61BB9: AryLock
  loc_A61BBC: Ary1LdRf
  loc_A61BBD: FStR4 var_98
  loc_A61BC0: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A61BC5: PopAdLdVar
  loc_A61BC6: FLdPr Me
  loc_A61BC9: MemLdRfVar from_stack_1.htmFile
  loc_A61BCC: LdPrVar
  loc_A61BCE: LateMemCall
  loc_A61BD4: LitI4 0
  loc_A61BD9: LitI4 0
  loc_A61BDE: LitI2_Byte 0
  loc_A61BE0: LitStr "right"
  loc_A61BE3: FMemLdR4 var_98(0)
  loc_A61BE8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A61BED: CVarStr var_C8
  loc_A61BF0: PopAdLdVar
  loc_A61BF1: FLdPr Me
  loc_A61BF4: MemLdRfVar from_stack_1.htmFile
  loc_A61BF7: LdPrVar
  loc_A61BF9: LateMemCall
  loc_A61BFF: FFree1Var var_C8 = ""
  loc_A61C02: LitI4 0
  loc_A61C07: LitI4 0
  loc_A61C0C: LitI2_Byte 0
  loc_A61C0E: LitStr "right"
  loc_A61C11: FMemLdR4 var_98(4)
  loc_A61C16: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A61C1B: CVarStr var_C8
  loc_A61C1E: PopAdLdVar
  loc_A61C1F: FLdPr Me
  loc_A61C22: MemLdRfVar from_stack_1.htmFile
  loc_A61C25: LdPrVar
  loc_A61C27: LateMemCall
  loc_A61C2D: FFree1Var var_C8 = ""
  loc_A61C30: LitI4 0
  loc_A61C35: LitI4 0
  loc_A61C3A: LitI2_Byte 0
  loc_A61C3C: LitStr "right"
  loc_A61C3F: FMemLdR4 var_98(8)
  loc_A61C44: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A61C49: CVarStr var_C8
  loc_A61C4C: PopAdLdVar
  loc_A61C4D: FLdPr Me
  loc_A61C50: MemLdRfVar from_stack_1.htmFile
  loc_A61C53: LdPrVar
  loc_A61C55: LateMemCall
  loc_A61C5B: FFree1Var var_C8 = ""
  loc_A61C5E: LitI4 0
  loc_A61C63: LitI4 0
  loc_A61C68: LitI2_Byte 0
  loc_A61C6A: LitStr "center"
  loc_A61C6D: FMemLdR4 var_98(12)
  loc_A61C72: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A61C77: CVarStr var_C8
  loc_A61C7A: PopAdLdVar
  loc_A61C7B: FLdPr Me
  loc_A61C7E: MemLdRfVar from_stack_1.htmFile
  loc_A61C81: LdPrVar
  loc_A61C83: LateMemCall
  loc_A61C89: FFree1Var var_C8 = ""
  loc_A61C8C: FMemLdRf 4404
  loc_A61C91: CVarRef
  loc_A61C96: LitVarStr var_B8, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_A61C9B: FStVarCopyObj var_C8
  loc_A61C9E: FLdRfVar var_C8
  loc_A61CA1: FMemLdR4 var_98(16)
  loc_A61CA6: LitStr vbNullString
  loc_A61CA9: EqStr
  loc_A61CAB: CVarBoolI2 var_A8
  loc_A61CAF: FLdRfVar var_E8
  loc_A61CB2: ImpAdCallFPR4  = IIf(, , )
  loc_A61CB7: LitI4 0
  loc_A61CBC: LitI4 0
  loc_A61CC1: LitI2_Byte 0
  loc_A61CC3: LitStr "center"
  loc_A61CC6: FLdRfVar var_E8
  loc_A61CC9: CStrVarVal var_EC
  loc_A61CCD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A61CD2: CVarStr var_FC
  loc_A61CD5: PopAdLdVar
  loc_A61CD6: FLdPr Me
  loc_A61CD9: MemLdRfVar from_stack_1.htmFile
  loc_A61CDC: LdPrVar
  loc_A61CDE: LateMemCall
  loc_A61CE4: FFree1Str var_EC
  loc_A61CE7: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_A61CF2: FMemLdRf 4404
  loc_A61CF7: CVarRef
  loc_A61CFC: LitVarStr var_B8, vbNullString
  loc_A61D01: FStVarCopyObj var_C8
  loc_A61D04: FLdRfVar var_C8
  loc_A61D07: FMemLdR4 var_98(20)
  loc_A61D0C: LitStr "0,00"
  loc_A61D0F: EqStr
  loc_A61D11: CVarBoolI2 var_A8
  loc_A61D15: FLdRfVar var_E8
  loc_A61D18: ImpAdCallFPR4  = IIf(, , )
  loc_A61D1D: LitI4 0
  loc_A61D22: LitI4 0
  loc_A61D27: LitI2_Byte 0
  loc_A61D29: LitStr "right"
  loc_A61D2C: FLdRfVar var_E8
  loc_A61D2F: CStrVarVal var_EC
  loc_A61D33: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A61D38: CVarStr var_FC
  loc_A61D3B: PopAdLdVar
  loc_A61D3C: FLdPr Me
  loc_A61D3F: MemLdRfVar from_stack_1.htmFile
  loc_A61D42: LdPrVar
  loc_A61D44: LateMemCall
  loc_A61D4A: FFree1Str var_EC
  loc_A61D4D: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_A61D58: FMemLdRf 4404
  loc_A61D5D: CVarRef
  loc_A61D62: LitVarStr var_B8, vbNullString
  loc_A61D67: FStVarCopyObj var_C8
  loc_A61D6A: FLdRfVar var_C8
  loc_A61D6D: FMemLdR4 var_98(24)
  loc_A61D72: LitStr "0,00"
  loc_A61D75: EqStr
  loc_A61D77: CVarBoolI2 var_A8
  loc_A61D7B: FLdRfVar var_E8
  loc_A61D7E: ImpAdCallFPR4  = IIf(, , )
  loc_A61D83: LitI4 0
  loc_A61D88: LitI4 0
  loc_A61D8D: LitI2_Byte 0
  loc_A61D8F: LitStr "right"
  loc_A61D92: FLdRfVar var_E8
  loc_A61D95: CStrVarVal var_EC
  loc_A61D99: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A61D9E: CVarStr var_FC
  loc_A61DA1: PopAdLdVar
  loc_A61DA2: FLdPr Me
  loc_A61DA5: MemLdRfVar from_stack_1.htmFile
  loc_A61DA8: LdPrVar
  loc_A61DAA: LateMemCall
  loc_A61DB0: FFree1Str var_EC
  loc_A61DB3: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_A61DBE: LitVarStr var_A8, "     </tr>"
  loc_A61DC3: PopAdLdVar
  loc_A61DC4: FLdPr Me
  loc_A61DC7: MemLdRfVar from_stack_1.htmFile
  loc_A61DCA: LdPrVar
  loc_A61DCC: LateMemCall
  loc_A61DD2: LitI4 0
  loc_A61DD7: FStR4 var_98
  loc_A61DDA: AryUnlock
  loc_A61DDD: FLdPr Me
  loc_A61DE0: MemLdRfVar from_stack_1.global_84
  loc_A61DE3: NextI4 var_90, loc_A61BAD
  loc_A61DE8: LitVarStr var_A8, " <tr class=""Totales"" align=""right"">"
  loc_A61DED: PopAdLdVar
  loc_A61DEE: FLdPr Me
  loc_A61DF1: MemLdRfVar from_stack_1.htmFile
  loc_A61DF4: LdPrVar
  loc_A61DF6: LateMemCall
  loc_A61DFC: LitVarStr var_A8, "   <td colspan=""5"">Totales</td>"
  loc_A61E01: PopAdLdVar
  loc_A61E02: FLdPr Me
  loc_A61E05: MemLdRfVar from_stack_1.htmFile
  loc_A61E08: LdPrVar
  loc_A61E0A: LateMemCall
  loc_A61E10: LitI4 0
  loc_A61E15: LitI4 0
  loc_A61E1A: LitI2_Byte 0
  loc_A61E1C: LitStr "right"
  loc_A61E1F: FLdPr Me
  loc_A61E22: MemLdStr global_88
  loc_A61E25: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A61E2A: CVarStr var_C8
  loc_A61E2D: PopAdLdVar
  loc_A61E2E: FLdPr Me
  loc_A61E31: MemLdRfVar from_stack_1.htmFile
  loc_A61E34: LdPrVar
  loc_A61E36: LateMemCall
  loc_A61E3C: FFree1Var var_C8 = ""
  loc_A61E3F: LitI4 0
  loc_A61E44: LitI4 0
  loc_A61E49: LitI2_Byte 0
  loc_A61E4B: LitStr "right"
  loc_A61E4E: FLdPr Me
  loc_A61E51: MemLdStr global_92
  loc_A61E54: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A61E59: CVarStr var_C8
  loc_A61E5C: PopAdLdVar
  loc_A61E5D: FLdPr Me
  loc_A61E60: MemLdRfVar from_stack_1.htmFile
  loc_A61E63: LdPrVar
  loc_A61E65: LateMemCall
  loc_A61E6B: FFree1Var var_C8 = ""
  loc_A61E6E: LitVarStr var_A8, " </tr>"
  loc_A61E73: PopAdLdVar
  loc_A61E74: FLdPr Me
  loc_A61E77: MemLdRfVar from_stack_1.htmFile
  loc_A61E7A: LdPrVar
  loc_A61E7C: LateMemCall
  loc_A61E82: Call Proc_193_25_983810()
  loc_A61E87: FLdPr Me
  loc_A61E8A: MemLdRfVar from_stack_1.htmFile
  loc_A61E8D: LdPrVar
  loc_A61E8F: LateMemCall
  loc_A61E95: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A61E9A: ExitProcHresult
End Sub

Private Function Proc_193_24_A8CD18() 'A8CD18
  'Data Table: 48137C
  loc_A8C8C4: LitVarStr var_94, "<html>"
  loc_A8C8C9: PopAdLdVar
  loc_A8C8CA: FLdPr Me
  loc_A8C8CD: MemLdRfVar from_stack_1.htmFile
  loc_A8C8D0: LdPrVar
  loc_A8C8D2: LateMemCall
  loc_A8C8D8: LitVarStr var_94, "<head>"
  loc_A8C8DD: PopAdLdVar
  loc_A8C8DE: FLdPr Me
  loc_A8C8E1: MemLdRfVar from_stack_1.htmFile
  loc_A8C8E4: LdPrVar
  loc_A8C8E6: LateMemCall
  loc_A8C8EC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A8C8F1: PopAdLdVar
  loc_A8C8F2: FLdPr Me
  loc_A8C8F5: MemLdRfVar from_stack_1.htmFile
  loc_A8C8F8: LdPrVar
  loc_A8C8FA: LateMemCall
  loc_A8C900: LitStr "<title>"
  loc_A8C903: FLdRfVar var_A8
  loc_A8C906: FLdPr Me
  loc_A8C909:  = Me.Caption
  loc_A8C90E: ILdRf var_A8
  loc_A8C911: ConcatStr
  loc_A8C912: FStStrNoPop var_AC
  loc_A8C915: LitStr "</title>"
  loc_A8C918: ConcatStr
  loc_A8C919: CVarStr var_BC
  loc_A8C91C: PopAdLdVar
  loc_A8C91D: FLdPr Me
  loc_A8C920: MemLdRfVar from_stack_1.htmFile
  loc_A8C923: LdPrVar
  loc_A8C925: LateMemCall
  loc_A8C92B: FFreeStr var_A8 = ""
  loc_A8C932: FFree1Var var_BC = ""
  loc_A8C935: LitStr vbNullString
  loc_A8C938: ILdRf Me
  loc_A8C93B: CastAd
  loc_A8C93E: FStAdFunc var_C0
  loc_A8C941: FLdRfVar var_C0
  loc_A8C944: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A8C949: FFree1Ad var_C0
  loc_A8C94C: LitI4 0
  loc_A8C951: FStStrCopy var_AC
  loc_A8C954: FLdRfVar var_AC
  loc_A8C957: LitI4 0
  loc_A8C95C: FStStrCopy var_A8
  loc_A8C95F: FLdRfVar var_A8
  loc_A8C962: LitI2_Byte 0
  loc_A8C964: PopTmpLdAd2 var_C2
  loc_A8C967: FLdPr Me
  loc_A8C96A: MemLdRfVar from_stack_1.htmFile
  loc_A8C96D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A8C972: FFreeStr var_A8 = ""
  loc_A8C979: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A8C97E: PopAdLdVar
  loc_A8C97F: FLdPr Me
  loc_A8C982: MemLdRfVar from_stack_1.htmFile
  loc_A8C985: LdPrVar
  loc_A8C987: LateMemCall
  loc_A8C98D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A8C992: PopAdLdVar
  loc_A8C993: FLdPr Me
  loc_A8C996: MemLdRfVar from_stack_1.htmFile
  loc_A8C999: LdPrVar
  loc_A8C99B: LateMemCall
  loc_A8C9A1: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""middle""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A8C9A6: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A8C9AB: FStVarCopyObj var_BC
  loc_A8C9AE: FLdRfVar var_BC
  loc_A8C9B1: FLdRfVar var_D4
  loc_A8C9B4: ImpAdCallFPR4  = Ucase()
  loc_A8C9B9: FLdRfVar var_D4
  loc_A8C9BC: ConcatVar var_E4
  loc_A8C9C0: LitVarStr var_F4, "</p>"
  loc_A8C9C5: ConcatVar var_104
  loc_A8C9C9: PopAdLdVar
  loc_A8C9CA: FLdPr Me
  loc_A8C9CD: MemLdRfVar from_stack_1.htmFile
  loc_A8C9D0: LdPrVar
  loc_A8C9D2: LateMemCall
  loc_A8C9D8: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A8C9E3: LitStr "    <p align=""center"">"
  loc_A8C9E6: FLdRfVar var_A8
  loc_A8C9E9: FLdPr Me
  loc_A8C9EC:  = Me.Caption
  loc_A8C9F1: ILdRf var_A8
  loc_A8C9F4: ConcatStr
  loc_A8C9F5: FStStrNoPop var_AC
  loc_A8C9F8: LitStr "</p></th>"
  loc_A8C9FB: ConcatStr
  loc_A8C9FC: CVarStr var_BC
  loc_A8C9FF: PopAdLdVar
  loc_A8CA00: FLdPr Me
  loc_A8CA03: MemLdRfVar from_stack_1.htmFile
  loc_A8CA06: LdPrVar
  loc_A8CA08: LateMemCall
  loc_A8CA0E: FFreeStr var_A8 = ""
  loc_A8CA15: FFree1Var var_BC = ""
  loc_A8CA18: LitVarStr var_94, "  </tr>"
  loc_A8CA1D: PopAdLdVar
  loc_A8CA1E: FLdPr Me
  loc_A8CA21: MemLdRfVar from_stack_1.htmFile
  loc_A8CA24: LdPrVar
  loc_A8CA26: LateMemCall
  loc_A8CA2C: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_A8CA31: PopAdLdVar
  loc_A8CA32: FLdPr Me
  loc_A8CA35: MemLdRfVar from_stack_1.htmFile
  loc_A8CA38: LdPrVar
  loc_A8CA3A: LateMemCall
  loc_A8CA40: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_A8CA45: PopAdLdVar
  loc_A8CA46: FLdPr Me
  loc_A8CA49: MemLdRfVar from_stack_1.htmFile
  loc_A8CA4C: LdPrVar
  loc_A8CA4E: LateMemCall
  loc_A8CA54: LitStr "         Banco: <span class=""Normal"">"
  loc_A8CA57: FLdPr Me
  loc_A8CA5A: VCallAd Control_ID_CodiBancMsk
  loc_A8CA5D: FStAdFunc var_C0
  loc_A8CA60: FLdPr var_C0
  loc_A8CA63: LateIdLdVar var_BC DispID_0 0
  loc_A8CA6A: CStrVarTmp
  loc_A8CA6B: FStStrNoPop var_A8
  loc_A8CA6E: ConcatStr
  loc_A8CA6F: FStStrNoPop var_AC
  loc_A8CA72: LitStr " - "
  loc_A8CA75: ConcatStr
  loc_A8CA76: FStStrNoPop var_120
  loc_A8CA79: FLdRfVar var_11C
  loc_A8CA7C: FLdPr Me
  loc_A8CA7F: VCallAd Control_ID_DetaBancLbl
  loc_A8CA82: FStAdFunc var_118
  loc_A8CA85: FLdPr var_118
  loc_A8CA88:  = Me.Caption
  loc_A8CA8D: ILdRf var_11C
  loc_A8CA90: ConcatStr
  loc_A8CA91: FStStrNoPop var_124
  loc_A8CA94: LitStr "</span><br>"
  loc_A8CA97: ConcatStr
  loc_A8CA98: CVarStr var_D4
  loc_A8CA9B: PopAdLdVar
  loc_A8CA9C: FLdPr Me
  loc_A8CA9F: MemLdRfVar from_stack_1.htmFile
  loc_A8CAA2: LdPrVar
  loc_A8CAA4: LateMemCall
  loc_A8CAAA: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_A8CAB7: FFreeAd var_C0 = ""
  loc_A8CABE: FFreeVar var_BC = ""
  loc_A8CAC5: FLdPr Me
  loc_A8CAC8: VCallAd Control_ID_mskDesde
  loc_A8CACB: FStAdFunc var_C0
  loc_A8CACE: FLdPr var_C0
  loc_A8CAD1: LateIdLdVar var_BC DispID_0 0
  loc_A8CAD8: CStrVarTmp
  loc_A8CAD9: FStStrNoPop var_A8
  loc_A8CADC: LitStr vbNullString
  loc_A8CADF: NeStr
  loc_A8CAE1: FFree1Str var_A8
  loc_A8CAE4: FFree1Ad var_C0
  loc_A8CAE7: FFree1Var var_BC = ""
  loc_A8CAEA: BranchF loc_A8CB32
  loc_A8CAED: LitStr "         Desde: <span class=""Normal"">"
  loc_A8CAF0: FLdPr Me
  loc_A8CAF3: VCallAd Control_ID_mskDesde
  loc_A8CAF6: FStAdFunc var_C0
  loc_A8CAF9: FLdPr var_C0
  loc_A8CAFC: LateIdLdVar var_BC DispID_15 0
  loc_A8CB03: CStrVarTmp
  loc_A8CB04: FStStrNoPop var_A8
  loc_A8CB07: ConcatStr
  loc_A8CB08: FStStrNoPop var_AC
  loc_A8CB0B: LitStr "</span><br>"
  loc_A8CB0E: ConcatStr
  loc_A8CB0F: CVarStr var_D4
  loc_A8CB12: PopAdLdVar
  loc_A8CB13: FLdPr Me
  loc_A8CB16: MemLdRfVar from_stack_1.htmFile
  loc_A8CB19: LdPrVar
  loc_A8CB1B: LateMemCall
  loc_A8CB21: FFreeStr var_A8 = ""
  loc_A8CB28: FFree1Ad var_C0
  loc_A8CB2B: FFreeVar var_BC = ""
  loc_A8CB32: FLdPr Me
  loc_A8CB35: VCallAd Control_ID_mskHasta
  loc_A8CB38: FStAdFunc var_C0
  loc_A8CB3B: FLdPr var_C0
  loc_A8CB3E: LateIdLdVar var_BC DispID_0 0
  loc_A8CB45: CStrVarTmp
  loc_A8CB46: FStStrNoPop var_A8
  loc_A8CB49: LitStr vbNullString
  loc_A8CB4C: NeStr
  loc_A8CB4E: FFree1Str var_A8
  loc_A8CB51: FFree1Ad var_C0
  loc_A8CB54: FFree1Var var_BC = ""
  loc_A8CB57: BranchF loc_A8CB9F
  loc_A8CB5A: LitStr "         Hasta: <span class=""Normal"">"
  loc_A8CB5D: FLdPr Me
  loc_A8CB60: VCallAd Control_ID_mskHasta
  loc_A8CB63: FStAdFunc var_C0
  loc_A8CB66: FLdPr var_C0
  loc_A8CB69: LateIdLdVar var_BC DispID_15 0
  loc_A8CB70: CStrVarTmp
  loc_A8CB71: FStStrNoPop var_A8
  loc_A8CB74: ConcatStr
  loc_A8CB75: FStStrNoPop var_AC
  loc_A8CB78: LitStr "</span><br>"
  loc_A8CB7B: ConcatStr
  loc_A8CB7C: CVarStr var_D4
  loc_A8CB7F: PopAdLdVar
  loc_A8CB80: FLdPr Me
  loc_A8CB83: MemLdRfVar from_stack_1.htmFile
  loc_A8CB86: LdPrVar
  loc_A8CB88: LateMemCall
  loc_A8CB8E: FFreeStr var_A8 = ""
  loc_A8CB95: FFree1Ad var_C0
  loc_A8CB98: FFreeVar var_BC = ""
  loc_A8CB9F: FLdPr Me
  loc_A8CBA2: VCallAd Control_ID_ConciliadosOpt
  loc_A8CBA5: CVarAd
  loc_A8CBA9: CBoolVarNull
  loc_A8CBAB: FFree1Var var_BC = ""
  loc_A8CBAE: BranchF loc_A8CBC5
  loc_A8CBB1: LitVarStr var_94, "         Conciliados"
  loc_A8CBB6: PopAdLdVar
  loc_A8CBB7: FLdPr Me
  loc_A8CBBA: MemLdRfVar from_stack_1.htmFile
  loc_A8CBBD: LdPrVar
  loc_A8CBBF: LateMemCall
  loc_A8CBC5: FLdPr Me
  loc_A8CBC8: VCallAd Control_ID_NoConciliadosOpt
  loc_A8CBCB: CVarAd
  loc_A8CBCF: CBoolVarNull
  loc_A8CBD1: FFree1Var var_BC = ""
  loc_A8CBD4: BranchF loc_A8CBEB
  loc_A8CBD7: LitVarStr var_94, "         No Conciliados"
  loc_A8CBDC: PopAdLdVar
  loc_A8CBDD: FLdPr Me
  loc_A8CBE0: MemLdRfVar from_stack_1.htmFile
  loc_A8CBE3: LdPrVar
  loc_A8CBE5: LateMemCall
  loc_A8CBEB: LitVarStr var_94, "   </th>"
  loc_A8CBF0: PopAdLdVar
  loc_A8CBF1: FLdPr Me
  loc_A8CBF4: MemLdRfVar from_stack_1.htmFile
  loc_A8CBF7: LdPrVar
  loc_A8CBF9: LateMemCall
  loc_A8CBFF: LitVarStr var_94, "  </tr>"
  loc_A8CC04: PopAdLdVar
  loc_A8CC05: FLdPr Me
  loc_A8CC08: MemLdRfVar from_stack_1.htmFile
  loc_A8CC0B: LdPrVar
  loc_A8CC0D: LateMemCall
  loc_A8CC13: LitVarStr var_94, "</table>"
  loc_A8CC18: PopAdLdVar
  loc_A8CC19: FLdPr Me
  loc_A8CC1C: MemLdRfVar from_stack_1.htmFile
  loc_A8CC1F: LdPrVar
  loc_A8CC21: LateMemCall
  loc_A8CC27: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A8CC2C: PopAdLdVar
  loc_A8CC2D: FLdPr Me
  loc_A8CC30: MemLdRfVar from_stack_1.htmFile
  loc_A8CC33: LdPrVar
  loc_A8CC35: LateMemCall
  loc_A8CC3B: LitVarStr var_94, "  <THEAD>"
  loc_A8CC40: PopAdLdVar
  loc_A8CC41: FLdPr Me
  loc_A8CC44: MemLdRfVar from_stack_1.htmFile
  loc_A8CC47: LdPrVar
  loc_A8CC49: LateMemCall
  loc_A8CC4F: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A8CC54: PopAdLdVar
  loc_A8CC55: FLdPr Me
  loc_A8CC58: MemLdRfVar from_stack_1.htmFile
  loc_A8CC5B: LdPrVar
  loc_A8CC5D: LateMemCall
  loc_A8CC63: LitVarStr var_94, "    <th>Tipo de Mov.</th>"
  loc_A8CC68: PopAdLdVar
  loc_A8CC69: FLdPr Me
  loc_A8CC6C: MemLdRfVar from_stack_1.htmFile
  loc_A8CC6F: LdPrVar
  loc_A8CC71: LateMemCall
  loc_A8CC77: LitVarStr var_94, "    <th>Nro Mov.</th>"
  loc_A8CC7C: PopAdLdVar
  loc_A8CC7D: FLdPr Me
  loc_A8CC80: MemLdRfVar from_stack_1.htmFile
  loc_A8CC83: LdPrVar
  loc_A8CC85: LateMemCall
  loc_A8CC8B: LitVarStr var_94, "    <th>Detalle</th>"
  loc_A8CC90: PopAdLdVar
  loc_A8CC91: FLdPr Me
  loc_A8CC94: MemLdRfVar from_stack_1.htmFile
  loc_A8CC97: LdPrVar
  loc_A8CC99: LateMemCall
  loc_A8CC9F: LitVarStr var_94, "    <th>Fecha</th>"
  loc_A8CCA4: PopAdLdVar
  loc_A8CCA5: FLdPr Me
  loc_A8CCA8: MemLdRfVar from_stack_1.htmFile
  loc_A8CCAB: LdPrVar
  loc_A8CCAD: LateMemCall
  loc_A8CCB3: LitVarStr var_94, "    <th>Conciliado</th>"
  loc_A8CCB8: PopAdLdVar
  loc_A8CCB9: FLdPr Me
  loc_A8CCBC: MemLdRfVar from_stack_1.htmFile
  loc_A8CCBF: LdPrVar
  loc_A8CCC1: LateMemCall
  loc_A8CCC7: LitVarStr var_94, "    <th width=""10" & Chr(37) & """>D E B E</th>"
  loc_A8CCCC: PopAdLdVar
  loc_A8CCCD: FLdPr Me
  loc_A8CCD0: MemLdRfVar from_stack_1.htmFile
  loc_A8CCD3: LdPrVar
  loc_A8CCD5: LateMemCall
  loc_A8CCDB: LitVarStr var_94, "    <th width=""10" & Chr(37) & """>H A B E R</th>"
  loc_A8CCE0: PopAdLdVar
  loc_A8CCE1: FLdPr Me
  loc_A8CCE4: MemLdRfVar from_stack_1.htmFile
  loc_A8CCE7: LdPrVar
  loc_A8CCE9: LateMemCall
  loc_A8CCEF: LitVarStr var_94, "  </tr>"
  loc_A8CCF4: PopAdLdVar
  loc_A8CCF5: FLdPr Me
  loc_A8CCF8: MemLdRfVar from_stack_1.htmFile
  loc_A8CCFB: LdPrVar
  loc_A8CCFD: LateMemCall
  loc_A8CD03: LitVarStr var_94, "  </THEAD>"
  loc_A8CD08: PopAdLdVar
  loc_A8CD09: FLdPr Me
  loc_A8CD0C: MemLdRfVar from_stack_1.htmFile
  loc_A8CD0F: LdPrVar
  loc_A8CD11: LateMemCall
  loc_A8CD17: ExitProcHresult
End Function

Private Function Proc_193_25_983810() '983810
  'Data Table: 48137C
  loc_9837D0: LitVarStr var_94, "</table>"
  loc_9837D5: PopAdLdVar
  loc_9837D6: FLdPr Me
  loc_9837D9: MemLdRfVar from_stack_1.htmFile
  loc_9837DC: LdPrVar
  loc_9837DE: LateMemCall
  loc_9837E4: LitVarStr var_94, "</body>"
  loc_9837E9: PopAdLdVar
  loc_9837EA: FLdPr Me
  loc_9837ED: MemLdRfVar from_stack_1.htmFile
  loc_9837F0: LdPrVar
  loc_9837F2: LateMemCall
  loc_9837F8: LitVarStr var_94, "</html>"
  loc_9837FD: PopAdLdVar
  loc_9837FE: FLdPr Me
  loc_983801: MemLdRfVar from_stack_1.htmFile
  loc_983804: LdPrVar
  loc_983806: LateMemCall
  loc_98380C: ExitProcHresult
End Function
