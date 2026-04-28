VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptControldeCargosalTesorero
  Caption = "Control de Cargos al Tesorero"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptControldeCargosalTesorero.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7860
  ClientHeight = 2925
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2670
    Width = 7860
    Height = 255
    TabIndex = 16
    OleObjectBlob = "rptControldeCargosalTesorero.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 1680
    Width = 735
    Height = 615
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptControldeCargosalTesorero.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1440
    Width = 3255
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 13
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1440
    Width = 3015
    Height = 1095
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 1335
    TabIndex = 0
    Begin VB.CommandButton cmdHasta
      Left = 2280
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptControldeCargosalTesorero.frx":0B9C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdDesde
      Left = 2280
      Top = 195
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptControldeCargosalTesorero.frx":10DE
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1080
      Top = 240
      Width = 1095
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptControldeCargosalTesorero.frx":1620
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1080
      Top = 765
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptControldeCargosalTesorero.frx":16A8
    End
    Begin MSComDlg.CommonDialog cdlGuardar
      OleObjectBlob = "rptControldeCargosalTesorero.frx":1730
      Left = 3240
      Top = 120
    End
    Begin VB.Label Label1
      Caption = "Hasta:"
      Left = 480
      Top = 765
      Width = 465
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Desde:"
      Left = 435
      Top = 240
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6720
    Top = 1920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptControldeCargosalTesorero.frx":1794
  End
End

Attribute VB_Name = "rptControldeCargosalTesorero"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_005BC120
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdPrevia_Click() '95B42C
  'Data Table: 4623DC
  loc_95B414: ILdRf Me
  loc_95B417: CastAd
  loc_95B41A: FStAdFunc var_88
  loc_95B41D: FLdRfVar var_88
  loc_95B420: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95B425: FFree1Ad var_88
  loc_95B428: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '952740
  'Data Table: 4623DC
  loc_95272C: FLdPr Me
  loc_95272F: VCallAd Control_ID_mskDesde
  loc_952732: CVarAd
  loc_952736: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95273B: FFree1Var var_94 = ""
  loc_95273E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9AFC04
  'Data Table: 4623DC
  loc_9AFB68: FLdPr Me
  loc_9AFB6B: VCallAd Control_ID_mskDesde
  loc_9AFB6E: FStAdFunc var_88
  loc_9AFB71: FLdPr var_88
  loc_9AFB74: LateIdLdVar var_98 DispID_15 0
  loc_9AFB7B: PopAd
  loc_9AFB7D: FLdPr Me
  loc_9AFB80: VCallAd Control_ID_mskDesde
  loc_9AFB83: FStAdFunc var_AC
  loc_9AFB86: LitI2_Byte &HFF
  loc_9AFB88: PopTmpLdAd2 var_A2
  loc_9AFB8B: FLdZeroAd var_AC
  loc_9AFB8E: FStAdFunc var_A0
  loc_9AFB91: FLdRfVar var_A0
  loc_9AFB94: LitStr vbNullString
  loc_9AFB97: LitI2_Byte 0
  loc_9AFB99: LitI2_Byte 0
  loc_9AFB9B: FLdRfVar var_98
  loc_9AFB9E: CStrVarTmp
  loc_9AFB9F: FStStrNoPop var_9C
  loc_9AFBA2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AFBA7: FStStrNoPop var_A8
  loc_9AFBAA: FLdPr Me
  loc_9AFBAD: MemStStrCopy
  loc_9AFBB1: FFreeStr var_9C = ""
  loc_9AFBB8: FFreeAd var_88 = "": var_A0 = ""
  loc_9AFBC1: FFree1Var var_98 = ""
  loc_9AFBC4: FLdPr Me
  loc_9AFBC7: VCallAd Control_ID_mskDesde
  loc_9AFBCA: FStAdFunc var_B0
  loc_9AFBCD: LitNothing
  loc_9AFBCF: CastAd
  loc_9AFBD2: FStAdFunc var_AC
  loc_9AFBD5: FLdRfVar var_AC
  loc_9AFBD8: FLdZeroAd var_B0
  loc_9AFBDB: FStAdFuncNoPop
  loc_9AFBDE: CastAd
  loc_9AFBE1: FStAdFunc var_A0
  loc_9AFBE4: FLdRfVar var_A0
  loc_9AFBE7: FLdPr Me
  loc_9AFBEA: MemLdRfVar from_stack_1.global_100
  loc_9AFBED: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AFBF2: IStI2 arg_C
  loc_9AFBF5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AFC00: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 'A29628
  'Data Table: 4623DC
  loc_A29488: FLdPr Me
  loc_A2948B: VCallAd Control_ID_mskDesde
  loc_A2948E: FStAdFunc var_88
  loc_A29491: FLdPr var_88
  loc_A29494: LateIdLdVar var_98 DispID_15 0
  loc_A2949B: CStrVarTmp
  loc_A2949C: CVarStr var_A8
  loc_A2949F: ImpAdCallI2 IsDate()
  loc_A294A4: FFree1Ad var_88
  loc_A294A7: FFreeVar var_98 = ""
  loc_A294AE: BranchF loc_A29612
  loc_A294B1: FLdPr Me
  loc_A294B4: VCallAd Control_ID_mskDesde
  loc_A294B7: FStAdFunc var_88
  loc_A294BA: FLdPr var_88
  loc_A294BD: LateIdLdVar var_98 DispID_15 0
  loc_A294C4: CStrVarTmp
  loc_A294C5: CVarStr var_A8
  loc_A294C8: FLdRfVar var_B8
  loc_A294CB: ImpAdCallFPR4  = Day()
  loc_A294D0: FLdRfVar var_B8
  loc_A294D3: LitVarI2 var_C8, 1
  loc_A294D8: HardType
  loc_A294D9: EqVar var_D8
  loc_A294DD: FLdPr Me
  loc_A294E0: VCallAd Control_ID_mskDesde
  loc_A294E3: FStAdFunc var_DC
  loc_A294E6: FLdPr var_DC
  loc_A294E9: LateIdLdVar var_EC DispID_15 0
  loc_A294F0: CStrVarTmp
  loc_A294F1: CVarStr var_FC
  loc_A294F4: FLdRfVar var_10C
  loc_A294F7: ImpAdCallFPR4  = Month()
  loc_A294FC: FLdRfVar var_10C
  loc_A294FF: LitI2_Byte 0
  loc_A29501: PopTmpLdAd2 var_10E
  loc_A29504: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A29509: CVarDate var_130
  loc_A2950D: FLdRfVar var_140
  loc_A29510: ImpAdCallFPR4  = Month()
  loc_A29515: FLdRfVar var_140
  loc_A29518: LtVar var_150
  loc_A2951C: AndVar var_160
  loc_A29520: FLdPr Me
  loc_A29523: VCallAd Control_ID_mskHasta
  loc_A29526: FStAdFunc var_164
  loc_A29529: FLdPr var_164
  loc_A2952C: LateIdLdVar var_174 DispID_15 0
  loc_A29533: CStrVarTmp
  loc_A29534: FStStrNoPop var_178
  loc_A29537: CDateStr
  loc_A29539: ImpAdLdFPR8 MemVar_C3D04C
  loc_A2953C: EqR4
  loc_A2953D: CVarBoolI2 var_188
  loc_A29541: AndVar var_198
  loc_A29545: CBoolVarNull
  loc_A29547: FFree1Str var_178
  loc_A2954A: FFreeAd var_88 = "": var_DC = ""
  loc_A29553: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_EC = "": var_FC = "": var_130 = "": var_10C = "": var_140 = "": var_174 = ""
  loc_A2956A: BranchF loc_A29612
  loc_A2956D: LitVarStr var_120, "01/"
  loc_A29572: FLdPr Me
  loc_A29575: VCallAd Control_ID_mskDesde
  loc_A29578: FStAdFunc var_88
  loc_A2957B: FLdPr var_88
  loc_A2957E: LateIdLdVar var_98 DispID_15 0
  loc_A29585: CStrVarTmp
  loc_A29586: CVarStr var_A8
  loc_A29589: FLdRfVar var_B8
  loc_A2958C: ImpAdCallFPR4  = Month()
  loc_A29591: FLdRfVar var_B8
  loc_A29594: LitVarI2 var_C8, 1
  loc_A29599: AddVar var_D8
  loc_A2959D: ConcatVar var_EC
  loc_A295A1: LitVarStr var_188, "/"
  loc_A295A6: ConcatVar var_FC
  loc_A295AA: FLdPr Me
  loc_A295AD: VCallAd Control_ID_mskDesde
  loc_A295B0: FStAdFunc var_DC
  loc_A295B3: FLdPr var_DC
  loc_A295B6: LateIdLdVar var_10C DispID_15 0
  loc_A295BD: CStrVarTmp
  loc_A295BE: CVarStr var_130
  loc_A295C1: FLdRfVar var_140
  loc_A295C4: ImpAdCallFPR4  = Year()
  loc_A295C9: FLdRfVar var_140
  loc_A295CC: ConcatVar var_150
  loc_A295D0: FnCDateVar
  loc_A295D2: LitI2_Byte 1
  loc_A295D4: CR8I2
  loc_A295D5: SubR4
  loc_A295D6: CDateR8
  loc_A295D7: CStrDate
  loc_A295D9: CVarStr var_160
  loc_A295DC: PopAdLdVar
  loc_A295DD: FLdPr Me
  loc_A295E0: VCallAd Control_ID_mskHasta
  loc_A295E3: FStAdFunc var_164
  loc_A295E6: FLdPr var_164
  loc_A295E9: LateIdSt
  loc_A295EE: FFreeAd var_88 = "": var_DC = ""
  loc_A295F7: FFreeVar var_98 = "": var_A8 = "": var_B8 = "": var_D8 = "": var_EC = "": var_10C = "": var_130 = "": var_FC = "": var_140 = "": var_150 = "": var_150 = ""
  loc_A29612: FLdPr Me
  loc_A29615: VCallAd Control_ID_mskHasta
  loc_A29618: CVarAd
  loc_A2961C: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A29621: FFree1Var var_98 = ""
  loc_A29624: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B025C
  'Data Table: 4623DC
  loc_9B01C0: FLdPr Me
  loc_9B01C3: VCallAd Control_ID_mskHasta
  loc_9B01C6: FStAdFunc var_88
  loc_9B01C9: FLdPr var_88
  loc_9B01CC: LateIdLdVar var_98 DispID_15 0
  loc_9B01D3: PopAd
  loc_9B01D5: FLdPr Me
  loc_9B01D8: VCallAd Control_ID_mskHasta
  loc_9B01DB: FStAdFunc var_AC
  loc_9B01DE: LitI2_Byte 0
  loc_9B01E0: PopTmpLdAd2 var_A2
  loc_9B01E3: FLdZeroAd var_AC
  loc_9B01E6: FStAdFunc var_A0
  loc_9B01E9: FLdRfVar var_A0
  loc_9B01EC: LitStr vbNullString
  loc_9B01EF: LitI2_Byte 0
  loc_9B01F1: LitI2_Byte 0
  loc_9B01F3: FLdRfVar var_98
  loc_9B01F6: CStrVarTmp
  loc_9B01F7: FStStrNoPop var_9C
  loc_9B01FA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B01FF: FStStrNoPop var_A8
  loc_9B0202: FLdPr Me
  loc_9B0205: MemStStrCopy
  loc_9B0209: FFreeStr var_9C = ""
  loc_9B0210: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0219: FFree1Var var_98 = ""
  loc_9B021C: FLdPr Me
  loc_9B021F: VCallAd Control_ID_mskHasta
  loc_9B0222: FStAdFunc var_B0
  loc_9B0225: LitNothing
  loc_9B0227: CastAd
  loc_9B022A: FStAdFunc var_AC
  loc_9B022D: FLdRfVar var_AC
  loc_9B0230: FLdZeroAd var_B0
  loc_9B0233: FStAdFuncNoPop
  loc_9B0236: CastAd
  loc_9B0239: FStAdFunc var_A0
  loc_9B023C: FLdRfVar var_A0
  loc_9B023F: FLdPr Me
  loc_9B0242: MemLdRfVar from_stack_1.global_100
  loc_9B0245: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B024A: IStI2 arg_C
  loc_9B024D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0258: ExitProcHresult
  loc_9B0259: GtCy
  loc_9B025A: EqCyR8
End Function

Private Sub cmdDesde_Click() '97F5B8
  'Data Table: 4623DC
  loc_97F584: LitVar_Missing var_A4
  loc_97F587: PopAdLdVar
  loc_97F588: LitVarI4
  loc_97F590: PopAdLdVar
  loc_97F591: ImpAdLdRf MemVar_C3D9A8
  loc_97F594: NewIfNullPr frmCalendario
  loc_97F597: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F59C: ImpAdLdRf MemVar_C3D038
  loc_97F59F: CDargRef
  loc_97F5A3: FLdPr Me
  loc_97F5A6: VCallAd Control_ID_mskDesde
  loc_97F5A9: FStAdFunc var_A8
  loc_97F5AC: FLdPr var_A8
  loc_97F5AF: LateIdSt
  loc_97F5B4: FFree1Ad var_A8
  loc_97F5B7: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95B478
  'Data Table: 4623DC
  loc_95B460: ILdRf Me
  loc_95B463: CastAd
  loc_95B466: FStAdFunc var_88
  loc_95B469: FLdRfVar var_88
  loc_95B46C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95B471: FFree1Ad var_88
  loc_95B474: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '97F418
  'Data Table: 4623DC
  loc_97F3E4: LitVar_Missing var_A4
  loc_97F3E7: PopAdLdVar
  loc_97F3E8: LitVarI4
  loc_97F3F0: PopAdLdVar
  loc_97F3F1: ImpAdLdRf MemVar_C3D9A8
  loc_97F3F4: NewIfNullPr frmCalendario
  loc_97F3F7: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F3FC: ImpAdLdRf MemVar_C3D038
  loc_97F3FF: CDargRef
  loc_97F403: FLdPr Me
  loc_97F406: VCallAd Control_ID_mskHasta
  loc_97F409: FStAdFunc var_A8
  loc_97F40C: FLdPr var_A8
  loc_97F40F: LateIdSt
  loc_97F414: FFree1Ad var_A8
  loc_97F417: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988894
  'Data Table: 4623DC
  loc_98885C: FLdPr Me
  loc_98885F: VCallAd Control_ID_statusBar
  loc_988862: FStAdFunc var_88
  loc_988865: FLdPr var_88
  loc_988868: LateIdLdVar var_98 DispID_1 0
  loc_98886F: CStrVarTmp
  loc_988870: CVarStr var_A8
  loc_988873: PopAdLdVar
  loc_988874: FLdPr Me
  loc_988877: VCallAd Control_ID_statusBar
  loc_98887A: FStAdFunc var_BC
  loc_98887D: FLdPr var_BC
  loc_988880: LateIdSt
  loc_988885: FFreeAd var_88 = ""
  loc_98888C: FFreeVar var_98 = ""
  loc_988893: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B53C
  'Data Table: 4623DC
  loc_96B520: LitI2_Byte &HFF
  loc_96B522: LitI2_Byte 0
  loc_96B524: ILdRf Me
  loc_96B527: CastAd
  loc_96B52A: FStAdFunc var_88
  loc_96B52D: FLdRfVar var_88
  loc_96B530: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B535: FFree1Ad var_88
  loc_96B538: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '977C4C
  'Data Table: 4623DC
  loc_977C1C: LitVarStr var_94, "Cerrando..."
  loc_977C21: PopAdLdVar
  loc_977C22: FLdPr Me
  loc_977C25: VCallAd Control_ID_statusBar
  loc_977C28: FStAdFunc var_A8
  loc_977C2B: FLdPr var_A8
  loc_977C2E: LateIdSt
  loc_977C33: FFree1Ad var_A8
  loc_977C36: ILdRf Me
  loc_977C39: FStAdNoPop
  loc_977C3D: ImpAdLdRf MemVar_C44F9C
  loc_977C40: NewIfNullPr Me
  loc_977C43: Me.Global.Unload from_stack_1
  loc_977C48: FFree1Ad var_A8
  loc_977C4B: ExitProcHresult
End Sub

Private Sub Form_Load() '96CCA0
  'Data Table: 4623DC
  loc_96CC80: LitI2_Byte &HFF
  loc_96CC82: ImpAdStI2 MemVar_C3D840
  loc_96CC85: ILdRf Me
  loc_96CC88: CastAd
  loc_96CC8B: FStAdFunc var_88
  loc_96CC8E: FLdRfVar var_88
  loc_96CC91: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96CC96: FFree1Ad var_88
  loc_96CC99: Call cmdNueva_Click()
  loc_96CC9E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95BB4C
  'Data Table: 4623DC
  loc_95BB34: FLdPr Me
  loc_95BB37: VCallAd Control_ID_wbbReporte
  loc_95BB3A: FStAdFunc var_88
  loc_95BB3D: FLdRfVar var_88
  loc_95BB40: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95BB45: FFree1Ad var_88
  loc_95BB48: ExitProcHresult
  loc_95BB49: DOC
End Sub

Private Sub cmdPdf_Click() '95B854
  'Data Table: 4623DC
  loc_95B83C: LitI2_Byte 0
  loc_95B83E: ILdRf Me
  loc_95B841: CastAd
  loc_95B844: FStAdFunc var_88
  loc_95B847: FLdRfVar var_88
  loc_95B84A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95B84F: FFree1Ad var_88
  loc_95B852: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9AF070
  'Data Table: 4623DC
  loc_9AEFD4: LitI2_Byte 0
  loc_9AEFD6: FLdPr Me
  loc_9AEFD9: MemStI2 bGenerado
  loc_9AEFDC: LitI2_Byte &HFF
  loc_9AEFDE: FLdPr Me
  loc_9AEFE1: MemStI2 bLogos
  loc_9AEFE4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9AEFE9: LitI2_Byte 0
  loc_9AEFEB: PopTmpLdAd2 var_86
  loc_9AEFEE: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9AEFF3: CVarDate var_A8
  loc_9AEFF7: FLdRfVar var_B8
  loc_9AEFFA: ImpAdCallFPR4  = Year()
  loc_9AEFFF: LitI2_Byte 1
  loc_9AF001: LitI2_Byte 1
  loc_9AF003: FLdRfVar var_B8
  loc_9AF006: CI2Var
  loc_9AF007: FLdRfVar var_C8
  loc_9AF00A: ImpAdCallFPR4  = DateSerial(, , )
  loc_9AF00F: FLdRfVar var_C8
  loc_9AF012: CStrVarTmp
  loc_9AF013: CVarStr var_D8
  loc_9AF016: PopAdLdVar
  loc_9AF017: FLdPr Me
  loc_9AF01A: VCallAd Control_ID_mskDesde
  loc_9AF01D: FStAdFunc var_EC
  loc_9AF020: FLdPr var_EC
  loc_9AF023: LateIdSt
  loc_9AF028: FFree1Ad var_EC
  loc_9AF02B: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_9AF036: ImpAdLdFPR8 MemVar_C3D04C
  loc_9AF039: CStrDate
  loc_9AF03B: CVarStr var_A8
  loc_9AF03E: PopAdLdVar
  loc_9AF03F: FLdPr Me
  loc_9AF042: VCallAd Control_ID_mskHasta
  loc_9AF045: FStAdFunc var_EC
  loc_9AF048: FLdPr var_EC
  loc_9AF04B: LateIdSt
  loc_9AF050: FFree1Ad var_EC
  loc_9AF053: FFree1Var var_A8 = ""
  loc_9AF056: Call HabilitarCriterio()
  loc_9AF05B: ILdRf Me
  loc_9AF05E: CastAd
  loc_9AF061: FStAdFunc var_EC
  loc_9AF064: FLdRfVar var_EC
  loc_9AF067: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9AF06C: FFree1Ad var_EC
  loc_9AF06F: ExitProcHresult
End Sub

Public Function htmFileGet() '46311C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '46312B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '46313A
  htmFile = Value
End Sub

Public Function bLogosGet() '463149
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '463158
  bLogos = Value
End Sub

Public Function bGeneradoGet() '463167
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '463176
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A12DC
  'Data Table: 4623DC
  loc_9A1278: LitI4 0
  loc_9A127D: LitI4 3
  loc_9A1282: FLdRfVar var_88
  loc_9A1285: Redim
  loc_9A128F: FLdPr Me
  loc_9A1292: VCallAd Control_ID_mskDesde
  loc_9A1295: CVarAd
  loc_9A1299: ParmAry1St
  loc_9A129F: FLdPr Me
  loc_9A12A2: VCallAd Control_ID_cmdDesde
  loc_9A12A5: CVarAd
  loc_9A12A9: ParmAry1St
  loc_9A12AF: FLdPr Me
  loc_9A12B2: VCallAd Control_ID_mskHasta
  loc_9A12B5: CVarAd
  loc_9A12B9: ParmAry1St
  loc_9A12BF: FLdPr Me
  loc_9A12C2: VCallAd Control_ID_cmdHasta
  loc_9A12C5: CVarAd
  loc_9A12C9: ParmAry1St
  loc_9A12CF: FLdRfVar var_88
  loc_9A12D2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A12D7: FLdRfVar var_88
  loc_9A12DA: Erase
  loc_9A12DB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BAE814
  'Data Table: 4623DC
  loc_BAD918: LitStr vbNullString
  loc_BAD91B: FLdPr Me
  loc_BAD91E: MemStStrCopy
  loc_BAD922: LitI2_Byte 0
  loc_BAD924: PopTmpLdAd2 var_86
  loc_BAD927: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BAD92C: FLdPr Me
  loc_BAD92F: MemLdStr global_100
  loc_BAD932: LitStr vbNullString
  loc_BAD935: NeStr
  loc_BAD937: BranchF loc_BAD93B
  loc_BAD93A: ExitProcHresult
  loc_BAD93B: LitI2_Byte 0
  loc_BAD93D: PopTmpLdAd2 var_86
  loc_BAD940: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BAD945: FLdPr Me
  loc_BAD948: MemLdStr global_100
  loc_BAD94B: LitStr vbNullString
  loc_BAD94E: NeStr
  loc_BAD950: BranchF loc_BAD954
  loc_BAD953: ExitProcHresult
  loc_BAD954: FLdPr Me
  loc_BAD957: MemLdI2 bGenerado
  loc_BAD95A: BranchF loc_BAD95E
  loc_BAD95D: ExitProcHresult
  loc_BAD95E: LitVarStr var_98, "Generando reporte..."
  loc_BAD963: PopAdLdVar
  loc_BAD964: FLdPr Me
  loc_BAD967: VCallAd Control_ID_statusBar
  loc_BAD96A: FStAdFunc var_AC
  loc_BAD96D: FLdPr var_AC
  loc_BAD970: LateIdSt
  loc_BAD975: FFree1Ad var_AC
  loc_BAD978: LitI4 &HB
  loc_BAD97D: CI2I4
  loc_BAD97E: FLdPr Me
  loc_BAD981: Me.MousePointer = from_stack_1
  loc_BAD986: LitI4 1
  loc_BAD98B: LitI4 1
  loc_BAD990: FLdPr Me
  loc_BAD993: MemLdRfVar from_stack_1.global_80
  loc_BAD996: Redim
  loc_BAD9A0: LitStr "0"
  loc_BAD9A3: FLdPr Me
  loc_BAD9A6: MemStStrCopy
  loc_BAD9AA: FLdPr Me
  loc_BAD9AD: MemLdRfVar from_stack_1.global_72
  loc_BAD9B0: NewIfNullAd
  loc_BAD9B3: FStAd var_B0 
  loc_BAD9B7: LitStr "Municipalidad de Guaymallén"
  loc_BAD9BA: LitStr "Municipalidad de Guaymallénnnnnn"
  loc_BAD9BD: EqStr
  loc_BAD9BF: BranchF loc_BADD9A
  loc_BAD9C2: FLdPr Me
  loc_BAD9C5: VCallAd Control_ID_mskHasta
  loc_BAD9C8: FStAdFunc var_AC
  loc_BAD9CB: FLdPr var_AC
  loc_BAD9CE: LateIdLdVar var_C8 DispID_15 0
  loc_BAD9D5: PopAd
  loc_BAD9D7: FLdPr Me
  loc_BAD9DA: VCallAd Control_ID_mskHasta
  loc_BAD9DD: FStAdFunc var_D0
  loc_BAD9E0: FLdPr var_D0
  loc_BAD9E3: LateIdLdVar var_E0 DispID_15 0
  loc_BAD9EA: CStrVarTmp
  loc_BAD9EB: CVarStr var_100
  loc_BAD9EE: LitVarStr var_A8, "2018-06-30"
  loc_BAD9F3: FStVarCopyObj var_F0
  loc_BAD9F6: FLdRfVar var_F0
  loc_BAD9F9: FLdRfVar var_C8
  loc_BAD9FC: CStrVarTmp
  loc_BAD9FD: FStStrNoPop var_CC
  loc_BADA00: CDateStr
  loc_BADA02: LitStr "2018-06-30"
  loc_BADA05: CDateStr
  loc_BADA07: GtR4
  loc_BADA08: CVarBoolI2 var_98
  loc_BADA0C: FLdRfVar var_110
  loc_BADA0F: ImpAdCallFPR4  = IIf(, , )
  loc_BADA14: FLdRfVar var_110
  loc_BADA17: CStrVarTmp
  loc_BADA18: FStStr var_B8
  loc_BADA1B: FFree1Str var_CC
  loc_BADA1E: FFreeAd var_AC = ""
  loc_BADA25: FFreeVar var_C8 = "": var_E0 = "": var_98 = "": var_F0 = "": var_100 = ""
  loc_BADA34: FLdPr Me
  loc_BADA37: VCallAd Control_ID_mskDesde
  loc_BADA3A: FStAdFunc var_AC
  loc_BADA3D: FLdPr var_AC
  loc_BADA40: LateIdLdVar var_C8 DispID_15 0
  loc_BADA47: CStrVarTmp
  loc_BADA48: FStStr var_B4
  loc_BADA4B: FFree1Ad var_AC
  loc_BADA4E: FFree1Var var_C8 = ""
  loc_BADA51: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BADA54: FLdPr var_B0
  loc_BADA57: Call clsbase.RedefineRS(from_stack_1v)
  loc_BADA5C: FLdPr Me
  loc_BADA5F: VCallAd Control_ID_mskDesde
  loc_BADA62: FStAdFunc var_AC
  loc_BADA65: FLdPr var_AC
  loc_BADA68: LateIdLdVar var_C8 DispID_15 0
  loc_BADA6F: PopAd
  loc_BADA71: FLdPr Me
  loc_BADA74: VCallAd Control_ID_mskHasta
  loc_BADA77: FStAdFunc var_D0
  loc_BADA7A: FLdPr var_D0
  loc_BADA7D: LateIdLdVar var_14C DispID_15 0
  loc_BADA84: PopAd
  loc_BADA86: FLdPr Me
  loc_BADA89: VCallAd Control_ID_mskHasta
  loc_BADA8C: FStAdFunc var_1E0
  loc_BADA8F: FLdPr var_1E0
  loc_BADA92: LateIdLdVar var_1F0 DispID_15 0
  loc_BADA99: PopAd
  loc_BADA9B: FLdPr Me
  loc_BADA9E: VCallAd Control_ID_mskHasta
  loc_BADAA1: FStAdFunc var_284
  loc_BADAA4: FLdPr var_284
  loc_BADAA7: LateIdLdVar var_294 DispID_15 0
  loc_BADAAE: PopAd
  loc_BADAB0: LitStr "CREATE TEMPORARY TABLE tmovi"
  loc_BADAB3: LitStr " SELECT ch.NumeOrpa, ch.ExpeImpu, ch.NumeLiqu, FechCheq, FereCheq, FepaCheq, ch.CucuPers, DetaProv, ch.CodiBanc, DetaBanc, NumeMoba, ImpoCheq"
  loc_BADAB6: ConcatStr
  loc_BADAB7: FStStrNoPop var_CC
  loc_BADABA: LitStr " FROM cheque ch"
  loc_BADABD: ConcatStr
  loc_BADABE: FStStrNoPop var_114
  loc_BADAC1: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_BADAC4: ConcatStr
  loc_BADAC5: FStStrNoPop var_118
  loc_BADAC8: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_BADACB: ConcatStr
  loc_BADACC: FStStrNoPop var_11C
  loc_BADACF: LitStr " WHERE (FereCheq IS NOT NULL AND FereCheq BETWEEN "
  loc_BADAD2: ConcatStr
  loc_BADAD3: CVarStr var_110
  loc_BADAD6: LitI4 1
  loc_BADADB: LitI4 1
  loc_BADAE0: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_BADAE5: FStVarCopyObj var_F0
  loc_BADAE8: FLdRfVar var_F0
  loc_BADAEB: FLdRfVar var_C8
  loc_BADAEE: CStrVarTmp
  loc_BADAEF: CVarStr var_E0
  loc_BADAF2: FLdRfVar var_100
  loc_BADAF5: ImpAdCallFPR4  = Format(, )
  loc_BADAFA: FLdRfVar var_100
  loc_BADAFD: ConcatVar var_12C
  loc_BADB01: LitVarStr var_A8, " AND "
  loc_BADB06: ConcatVar var_13C
  loc_BADB0A: LitI4 1
  loc_BADB0F: LitI4 1
  loc_BADB14: LitVarStr var_16C, "'yyyy-mm-dd'"
  loc_BADB19: FStVarCopyObj var_17C
  loc_BADB1C: FLdRfVar var_17C
  loc_BADB1F: FLdRfVar var_14C
  loc_BADB22: CStrVarTmp
  loc_BADB23: CVarStr var_15C
  loc_BADB26: FLdRfVar var_18C
  loc_BADB29: ImpAdCallFPR4  = Format(, )
  loc_BADB2E: FLdRfVar var_18C
  loc_BADB31: ConcatVar var_19C
  loc_BADB35: LitVarStr var_1AC, ")"
  loc_BADB3A: ConcatVar var_1BC
  loc_BADB3E: LitVarStr var_1CC, " AND (FepaCheq IS NULL OR FepaCheq > "
  loc_BADB43: ConcatVar var_1DC
  loc_BADB47: LitI4 1
  loc_BADB4C: LitI4 1
  loc_BADB51: LitVarStr var_210, "'yyyy-mm-dd'"
  loc_BADB56: FStVarCopyObj var_220
  loc_BADB59: FLdRfVar var_220
  loc_BADB5C: FLdRfVar var_1F0
  loc_BADB5F: CStrVarTmp
  loc_BADB60: CVarStr var_200
  loc_BADB63: FLdRfVar var_230
  loc_BADB66: ImpAdCallFPR4  = Format(, )
  loc_BADB6B: FLdRfVar var_230
  loc_BADB6E: ConcatVar var_240
  loc_BADB72: LitVarStr var_250, ")"
  loc_BADB77: ConcatVar var_260
  loc_BADB7B: LitVarStr var_270, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_BADB80: ConcatVar var_280
  loc_BADB84: LitI4 1
  loc_BADB89: LitI4 1
  loc_BADB8E: LitVarStr var_2B4, "'yyyy-mm-dd'"
  loc_BADB93: FStVarCopyObj var_2C4
  loc_BADB96: FLdRfVar var_2C4
  loc_BADB99: FLdRfVar var_294
  loc_BADB9C: CStrVarTmp
  loc_BADB9D: CVarStr var_2A4
  loc_BADBA0: FLdRfVar var_2D4
  loc_BADBA3: ImpAdCallFPR4  = Format(, )
  loc_BADBA8: FLdRfVar var_2D4
  loc_BADBAB: ConcatVar var_2E4
  loc_BADBAF: LitVarStr var_2F4, ")"
  loc_BADBB4: ConcatVar var_304
  loc_BADBB8: LitVarStr var_314, " AND NumeMoba > 0"
  loc_BADBBD: ConcatVar var_324
  loc_BADBC1: LitVarStr var_334, " /*UNION ALL"
  loc_BADBC6: ConcatVar var_344
  loc_BADBCA: LitVarStr var_354, " SELECT ch.NumeOrpa, ch.ExpeImpu, ch.NumeLiqu, FechCheq, FereCheq, FepaCheq, ch.CucuPers, DetaProv, ln.CodiRete CodiBanc, 'Retenciones' DetaBanc, NumeMoba, ImpoLine ImpoCheq"
  loc_BADBCF: ConcatVar var_364
  loc_BADBD3: LitVarStr var_374, " FROM cheque ch"
  loc_BADBD8: ConcatVar var_384
  loc_BADBDC: LitVarStr var_394, " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_BADBE1: ConcatVar var_3A4
  loc_BADBE5: LitVarStr var_3B4, " INNER JOIN liquidaneto ln ON ln.PeriInfo = ch.PeriInfo AND ln.ExpeImpu = ch.ExpeImpu AND ln.NumeLiqu = ch.NumeLiqu AND ln.CucuPers = ch.CucuPers"
  loc_BADBEA: ConcatVar var_3C4
  loc_BADBEE: LitVarStr var_3D4, " AND CodiRete > 0"
  loc_BADBF3: ConcatVar var_3E4
  loc_BADBF7: LitVarStr var_3F4, " WHERE (FereCheq IS NOT NULL AND FereCheq BETWEEN "
  loc_BADBFC: ConcatVar var_404
  loc_BADC00: LitI4 1
  loc_BADC05: LitI4 1
  loc_BADC0A: LitVarStr var_424, "'yyyy-mm-dd'"
  loc_BADC0F: FStVarCopyObj var_434
  loc_BADC12: FLdRfVar var_434
  loc_BADC15: FLdRfVar var_B4
  loc_BADC18: CVarRef
  loc_BADC1D: ImpAdCallI2 Format$(, )
  loc_BADC22: CVarStr var_444
  loc_BADC25: ConcatVar var_454
  loc_BADC29: LitVarStr var_464, " AND "
  loc_BADC2E: ConcatVar var_474
  loc_BADC32: LitI4 1
  loc_BADC37: LitI4 1
  loc_BADC3C: LitVarStr var_494, "'yyyy-mm-dd'"
  loc_BADC41: FStVarCopyObj var_4A4
  loc_BADC44: FLdRfVar var_4A4
  loc_BADC47: FLdRfVar var_B8
  loc_BADC4A: CVarRef
  loc_BADC4F: ImpAdCallI2 Format$(, )
  loc_BADC54: CVarStr var_4B4
  loc_BADC57: ConcatVar var_4C4
  loc_BADC5B: LitVarStr var_4D4, ")"
  loc_BADC60: ConcatVar var_4E4
  loc_BADC64: LitVarStr var_4F4, " AND (FepaCheq IS NULL OR FepaCheq > "
  loc_BADC69: ConcatVar var_504
  loc_BADC6D: LitI4 1
  loc_BADC72: LitI4 1
  loc_BADC77: LitVarStr var_524, "'yyyy-mm-dd'"
  loc_BADC7C: FStVarCopyObj var_534
  loc_BADC7F: FLdRfVar var_534
  loc_BADC82: FLdRfVar var_B8
  loc_BADC85: CVarRef
  loc_BADC8A: ImpAdCallI2 Format$(, )
  loc_BADC8F: CVarStr var_544
  loc_BADC92: ConcatVar var_554
  loc_BADC96: LitVarStr var_564, ")"
  loc_BADC9B: ConcatVar var_574
  loc_BADC9F: LitVarStr var_584, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_BADCA4: ConcatVar var_594
  loc_BADCA8: LitI4 1
  loc_BADCAD: LitI4 1
  loc_BADCB2: LitVarStr var_5B4, "'yyyy-mm-dd'"
  loc_BADCB7: FStVarCopyObj var_5C4
  loc_BADCBA: FLdRfVar var_5C4
  loc_BADCBD: FLdRfVar var_B8
  loc_BADCC0: CVarRef
  loc_BADCC5: ImpAdCallI2 Format$(, )
  loc_BADCCA: CVarStr var_5D4
  loc_BADCCD: ConcatVar var_5E4
  loc_BADCD1: LitVarStr var_5F4, ")"
  loc_BADCD6: ConcatVar var_604
  loc_BADCDA: LitVarStr var_614, " AND NumeMoba > 0"
  loc_BADCDF: ConcatVar var_624
  loc_BADCE3: LitVarStr var_634, " GROUP BY ch.PeriInfo, ch.ExpeImpu, ch.NumeLiqu, ch.CucuPers, CodiRete"
  loc_BADCE8: ConcatVar var_644
  loc_BADCEC: LitVarStr var_654, "*/ ORDER BY NumeOrpa, CucuPers, CodiBanc, NumeMoba;"
  loc_BADCF1: ConcatVar var_664
  loc_BADCF5: CStrVarVal var_668
  loc_BADCF9: FLdPr var_B0
  loc_BADCFC: Call clsbase.RedefineRS(from_stack_1v)
  loc_BADD01: FFreeStr var_CC = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BADD0E: FFreeAd var_AC = "": var_D0 = "": var_1E0 = ""
  loc_BADD19: FFreeVar var_384 = "": var_3A4 = "": var_3C4 = "": var_3E4 = "": var_434 = "": var_404 = "": var_444 = "": var_454 = "": var_4A4 = "": var_474 = "": var_4B4 = "": var_4C4 = "": var_4E4 = "": var_534 = "": var_504 = "": var_544 = "": var_554 = "": var_574 = "": var_5C4 = "": var_594 = "": var_5D4 = "": var_5E4 = "": var_604 = "": var_624 = "": var_644 = "": var_664 = "": var_C8 = "": var_E0 = "": var_F0 = "": var_110 = "": var_100 = "": var_12C = "": var_14C = "": var_15C = "": var_17C = "": var_13C = "": var_18C = "": var_19C = "": var_1BC = "": var_1F0 = "": var_200 = "": var_220 = "": var_1DC = "": var_230 = "": var_240 = "": var_260 = "": var_294 = "": var_2A4 = "": var_2C4 = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = ""
  loc_BADD8C: LitStr "SELECT * FROM tmovi;"
  loc_BADD8F: FLdPr var_B0
  loc_BADD92: Call clsbase.RedefineRS(from_stack_1v)
  loc_BADD97: Branch loc_BADF60
  loc_BADD9A: FLdPr Me
  loc_BADD9D: VCallAd Control_ID_mskDesde
  loc_BADDA0: FStAdFunc var_AC
  loc_BADDA3: FLdPr var_AC
  loc_BADDA6: LateIdLdVar var_C8 DispID_15 0
  loc_BADDAD: PopAd
  loc_BADDAF: FLdPr Me
  loc_BADDB2: VCallAd Control_ID_mskHasta
  loc_BADDB5: FStAdFunc var_D0
  loc_BADDB8: FLdPr var_D0
  loc_BADDBB: LateIdLdVar var_14C DispID_15 0
  loc_BADDC2: PopAd
  loc_BADDC4: FLdPr Me
  loc_BADDC7: VCallAd Control_ID_mskHasta
  loc_BADDCA: FStAdFunc var_1E0
  loc_BADDCD: FLdPr var_1E0
  loc_BADDD0: LateIdLdVar var_1F0 DispID_15 0
  loc_BADDD7: PopAd
  loc_BADDD9: FLdPr Me
  loc_BADDDC: VCallAd Control_ID_mskHasta
  loc_BADDDF: FStAdFunc var_284
  loc_BADDE2: FLdPr var_284
  loc_BADDE5: LateIdLdVar var_294 DispID_15 0
  loc_BADDEC: PopAd
  loc_BADDEE: LitStr "SELECT cheque.*, DetaProv, DetaBanc"
  loc_BADDF1: LitStr " FROM cheque"
  loc_BADDF4: ConcatStr
  loc_BADDF5: FStStrNoPop var_CC
  loc_BADDF8: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_BADDFB: ConcatStr
  loc_BADDFC: FStStrNoPop var_114
  loc_BADDFF: LitStr " INNER JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_BADE02: ConcatStr
  loc_BADE03: FStStrNoPop var_118
  loc_BADE06: LitStr " WHERE (FereCheq IS NOT NULL AND FereCheq BETWEEN "
  loc_BADE09: ConcatStr
  loc_BADE0A: CVarStr var_110
  loc_BADE0D: LitI4 1
  loc_BADE12: LitI4 1
  loc_BADE17: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_BADE1C: FStVarCopyObj var_F0
  loc_BADE1F: FLdRfVar var_F0
  loc_BADE22: FLdRfVar var_C8
  loc_BADE25: CStrVarTmp
  loc_BADE26: CVarStr var_E0
  loc_BADE29: FLdRfVar var_100
  loc_BADE2C: ImpAdCallFPR4  = Format(, )
  loc_BADE31: FLdRfVar var_100
  loc_BADE34: ConcatVar var_12C
  loc_BADE38: LitVarStr var_A8, " AND "
  loc_BADE3D: ConcatVar var_13C
  loc_BADE41: LitI4 1
  loc_BADE46: LitI4 1
  loc_BADE4B: LitVarStr var_16C, "'yyyy-mm-dd'"
  loc_BADE50: FStVarCopyObj var_17C
  loc_BADE53: FLdRfVar var_17C
  loc_BADE56: FLdRfVar var_14C
  loc_BADE59: CStrVarTmp
  loc_BADE5A: CVarStr var_15C
  loc_BADE5D: FLdRfVar var_18C
  loc_BADE60: ImpAdCallFPR4  = Format(, )
  loc_BADE65: FLdRfVar var_18C
  loc_BADE68: ConcatVar var_19C
  loc_BADE6C: LitVarStr var_1AC, ")"
  loc_BADE71: ConcatVar var_1BC
  loc_BADE75: LitVarStr var_1CC, " AND (FepaCheq IS NULL OR FepaCheq > "
  loc_BADE7A: ConcatVar var_1DC
  loc_BADE7E: LitI4 1
  loc_BADE83: LitI4 1
  loc_BADE88: LitVarStr var_210, "'yyyy-mm-dd'"
  loc_BADE8D: FStVarCopyObj var_220
  loc_BADE90: FLdRfVar var_220
  loc_BADE93: FLdRfVar var_1F0
  loc_BADE96: CStrVarTmp
  loc_BADE97: CVarStr var_200
  loc_BADE9A: FLdRfVar var_230
  loc_BADE9D: ImpAdCallFPR4  = Format(, )
  loc_BADEA2: FLdRfVar var_230
  loc_BADEA5: ConcatVar var_240
  loc_BADEA9: LitVarStr var_250, ")"
  loc_BADEAE: ConcatVar var_260
  loc_BADEB2: LitVarStr var_270, " AND (FeanCheq IS NULL OR FeanCheq > "
  loc_BADEB7: ConcatVar var_280
  loc_BADEBB: LitI4 1
  loc_BADEC0: LitI4 1
  loc_BADEC5: LitVarStr var_2B4, "'yyyy-mm-dd'"
  loc_BADECA: FStVarCopyObj var_2C4
  loc_BADECD: FLdRfVar var_2C4
  loc_BADED0: FLdRfVar var_294
  loc_BADED3: CStrVarTmp
  loc_BADED4: CVarStr var_2A4
  loc_BADED7: FLdRfVar var_2D4
  loc_BADEDA: ImpAdCallFPR4  = Format(, )
  loc_BADEDF: FLdRfVar var_2D4
  loc_BADEE2: ConcatVar var_2E4
  loc_BADEE6: LitVarStr var_2F4, ")"
  loc_BADEEB: ConcatVar var_304
  loc_BADEEF: LitVarStr var_314, " AND AutoCheq IN (1,2,4)"
  loc_BADEF4: ConcatVar var_324
  loc_BADEF8: LitVarStr var_334, " ORDER BY NumeOrpa, CucuPers, CodiBanc, NumeMoba;"
  loc_BADEFD: ConcatVar var_344
  loc_BADF01: CStrVarVal var_11C
  loc_BADF05: FLdPr var_B0
  loc_BADF08: Call clsbase.RedefineRS(from_stack_1v)
  loc_BADF0D: FFreeStr var_CC = "": var_114 = "": var_118 = ""
  loc_BADF18: FFreeAd var_AC = "": var_D0 = "": var_1E0 = ""
  loc_BADF23: FFreeVar var_C8 = "": var_E0 = "": var_F0 = "": var_110 = "": var_100 = "": var_12C = "": var_14C = "": var_15C = "": var_17C = "": var_13C = "": var_18C = "": var_19C = "": var_1BC = "": var_1F0 = "": var_200 = "": var_220 = "": var_1DC = "": var_230 = "": var_240 = "": var_260 = "": var_294 = "": var_2A4 = "": var_2C4 = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_324 = ""
  loc_BADF60: FLdRfVar var_66C
  loc_BADF63: FLdPr var_B0
  loc_BADF66: from_stack_1 = clsbase.RecordCount
  loc_BADF6B: ILdRf var_66C
  loc_BADF6E: LitI4 0
  loc_BADF73: EqI4
  loc_BADF74: BranchF loc_BADF8A
  loc_BADF77: LitI4 0
  loc_BADF7C: LitStr "No existen registros para el criterio especificado"
  loc_BADF7F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BADF84: Branch loc_BAE7EB
  loc_BADF87: Branch loc_BAE45B
  loc_BADF8A: LitI4 1
  loc_BADF8F: FLdRfVar var_66C
  loc_BADF92: FLdPr var_B0
  loc_BADF95: from_stack_1 = clsbase.RecordCount
  loc_BADF9A: ILdRf var_66C
  loc_BADF9D: FLdPr Me
  loc_BADFA0: MemLdRfVar from_stack_1.global_80
  loc_BADFA3: Redim
  loc_BADFAD: FLdPr var_B0
  loc_BADFB0: Call clsbase.MoveFirst()
  loc_BADFB5: LitI4 1
  loc_BADFBA: FLdPr Me
  loc_BADFBD: MemLdRfVar from_stack_1.global_88
  loc_BADFC0: FLdPr Me
  loc_BADFC3: MemLdStr global_80
  loc_BADFC6: LitI2_Byte 1
  loc_BADFC8: FnUBound
  loc_BADFCA: ForI4 var_674
  loc_BADFD0: FLdRfVar var_1E0
  loc_BADFD3: LitVarStr var_98, "NumeOrpa"
  loc_BADFD8: PopAdLdVar
  loc_BADFD9: FLdRfVar var_D0
  loc_BADFDC: FLdRfVar var_AC
  loc_BADFDF: FLdPr var_B0
  loc_BADFE2: from_stack_1v = clsbase.RsFrmGet()
  loc_BADFE7: FLdPr var_AC
  loc_BADFEA:  = Me.Fields
  loc_BADFEF: FLdPr var_D0
  loc_BADFF2: from_stack_2 = Me.Item(from_stack_1)
  loc_BADFF7: LitI2_Byte 0
  loc_BADFF9: LitVar_Missing var_E0
  loc_BADFFC: LitI2_Byte 0
  loc_BADFFE: FLdZeroAd var_1E0
  loc_BAE001: CVarAd
  loc_BAE005: PopAdLdVar
  loc_BAE006: FLdPr Me
  loc_BAE009: MemLdStr global_88
  loc_BAE00C: FLdPr Me
  loc_BAE00F: MemLdStr global_80
  loc_BAE012: AryLock
  loc_BAE015: Ary1LdPr
  loc_BAE016: MemLdRfVar from_stack_1.global_0
  loc_BAE019: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE01E: AryUnlock
  loc_BAE021: FFreeAd var_AC = ""
  loc_BAE028: FFreeVar var_C8 = ""
  loc_BAE02F: FLdRfVar var_1E0
  loc_BAE032: LitVarStr var_98, "ExpeImpu"
  loc_BAE037: PopAdLdVar
  loc_BAE038: FLdRfVar var_D0
  loc_BAE03B: FLdRfVar var_AC
  loc_BAE03E: FLdPr var_B0
  loc_BAE041: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE046: FLdPr var_AC
  loc_BAE049:  = Me.Fields
  loc_BAE04E: FLdPr var_D0
  loc_BAE051: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE056: LitI2_Byte 0
  loc_BAE058: LitVar_Missing var_E0
  loc_BAE05B: LitI2_Byte 0
  loc_BAE05D: FLdZeroAd var_1E0
  loc_BAE060: CVarAd
  loc_BAE064: PopAdLdVar
  loc_BAE065: FLdPr Me
  loc_BAE068: MemLdStr global_88
  loc_BAE06B: FLdPr Me
  loc_BAE06E: MemLdStr global_80
  loc_BAE071: AryLock
  loc_BAE074: Ary1LdPr
  loc_BAE075: MemLdRfVar from_stack_1.global_4
  loc_BAE078: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE07D: AryUnlock
  loc_BAE080: FFreeAd var_AC = ""
  loc_BAE087: FFreeVar var_C8 = ""
  loc_BAE08E: FLdRfVar var_1E0
  loc_BAE091: LitVarStr var_98, "NumeLiqu"
  loc_BAE096: PopAdLdVar
  loc_BAE097: FLdRfVar var_D0
  loc_BAE09A: FLdRfVar var_AC
  loc_BAE09D: FLdPr var_B0
  loc_BAE0A0: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE0A5: FLdPr var_AC
  loc_BAE0A8:  = Me.Fields
  loc_BAE0AD: FLdPr var_D0
  loc_BAE0B0: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE0B5: LitI2_Byte 0
  loc_BAE0B7: LitVar_Missing var_E0
  loc_BAE0BA: LitI2_Byte 0
  loc_BAE0BC: FLdZeroAd var_1E0
  loc_BAE0BF: CVarAd
  loc_BAE0C3: PopAdLdVar
  loc_BAE0C4: FLdPr Me
  loc_BAE0C7: MemLdStr global_88
  loc_BAE0CA: FLdPr Me
  loc_BAE0CD: MemLdStr global_80
  loc_BAE0D0: AryLock
  loc_BAE0D3: Ary1LdPr
  loc_BAE0D4: MemLdRfVar from_stack_1.global_8
  loc_BAE0D7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE0DC: AryUnlock
  loc_BAE0DF: FFreeAd var_AC = ""
  loc_BAE0E6: FFreeVar var_C8 = ""
  loc_BAE0ED: FLdRfVar var_1E0
  loc_BAE0F0: LitVarStr var_98, "FechCheq"
  loc_BAE0F5: PopAdLdVar
  loc_BAE0F6: FLdRfVar var_D0
  loc_BAE0F9: FLdRfVar var_AC
  loc_BAE0FC: FLdPr var_B0
  loc_BAE0FF: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE104: FLdPr var_AC
  loc_BAE107:  = Me.Fields
  loc_BAE10C: FLdPr var_D0
  loc_BAE10F: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE114: LitI2_Byte 0
  loc_BAE116: LitVar_Missing var_E0
  loc_BAE119: LitI2_Byte 0
  loc_BAE11B: FLdZeroAd var_1E0
  loc_BAE11E: CVarAd
  loc_BAE122: PopAdLdVar
  loc_BAE123: FLdPr Me
  loc_BAE126: MemLdStr global_88
  loc_BAE129: FLdPr Me
  loc_BAE12C: MemLdStr global_80
  loc_BAE12F: AryLock
  loc_BAE132: Ary1LdPr
  loc_BAE133: MemLdRfVar from_stack_1.global_12
  loc_BAE136: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE13B: AryUnlock
  loc_BAE13E: FFreeAd var_AC = ""
  loc_BAE145: FFreeVar var_C8 = ""
  loc_BAE14C: FLdRfVar var_1E0
  loc_BAE14F: LitVarStr var_98, "FereCheq"
  loc_BAE154: PopAdLdVar
  loc_BAE155: FLdRfVar var_D0
  loc_BAE158: FLdRfVar var_AC
  loc_BAE15B: FLdPr var_B0
  loc_BAE15E: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE163: FLdPr var_AC
  loc_BAE166:  = Me.Fields
  loc_BAE16B: FLdPr var_D0
  loc_BAE16E: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE173: LitI2_Byte 0
  loc_BAE175: LitVar_Missing var_E0
  loc_BAE178: LitI2_Byte 0
  loc_BAE17A: FLdZeroAd var_1E0
  loc_BAE17D: CVarAd
  loc_BAE181: PopAdLdVar
  loc_BAE182: FLdPr Me
  loc_BAE185: MemLdStr global_88
  loc_BAE188: FLdPr Me
  loc_BAE18B: MemLdStr global_80
  loc_BAE18E: AryLock
  loc_BAE191: Ary1LdPr
  loc_BAE192: MemLdRfVar from_stack_1.global_16
  loc_BAE195: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE19A: AryUnlock
  loc_BAE19D: FFreeAd var_AC = ""
  loc_BAE1A4: FFreeVar var_C8 = ""
  loc_BAE1AB: FLdRfVar var_1E0
  loc_BAE1AE: LitVarStr var_98, "FepaCheq"
  loc_BAE1B3: PopAdLdVar
  loc_BAE1B4: FLdRfVar var_D0
  loc_BAE1B7: FLdRfVar var_AC
  loc_BAE1BA: FLdPr var_B0
  loc_BAE1BD: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE1C2: FLdPr var_AC
  loc_BAE1C5:  = Me.Fields
  loc_BAE1CA: FLdPr var_D0
  loc_BAE1CD: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE1D2: LitI2_Byte 0
  loc_BAE1D4: LitVar_Missing var_E0
  loc_BAE1D7: LitI2_Byte 0
  loc_BAE1D9: FLdZeroAd var_1E0
  loc_BAE1DC: CVarAd
  loc_BAE1E0: PopAdLdVar
  loc_BAE1E1: FLdPr Me
  loc_BAE1E4: MemLdStr global_88
  loc_BAE1E7: FLdPr Me
  loc_BAE1EA: MemLdStr global_80
  loc_BAE1ED: AryLock
  loc_BAE1F0: Ary1LdPr
  loc_BAE1F1: MemLdRfVar from_stack_1.global_20
  loc_BAE1F4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE1F9: AryUnlock
  loc_BAE1FC: FFreeAd var_AC = ""
  loc_BAE203: FFreeVar var_C8 = ""
  loc_BAE20A: FLdRfVar var_1E0
  loc_BAE20D: LitVarStr var_98, "CucuPers"
  loc_BAE212: PopAdLdVar
  loc_BAE213: FLdRfVar var_D0
  loc_BAE216: FLdRfVar var_AC
  loc_BAE219: FLdPr var_B0
  loc_BAE21C: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE221: FLdPr var_AC
  loc_BAE224:  = Me.Fields
  loc_BAE229: FLdPr var_D0
  loc_BAE22C: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE231: LitI2_Byte 0
  loc_BAE233: LitVar_Missing var_E0
  loc_BAE236: LitI2_Byte 0
  loc_BAE238: FLdZeroAd var_1E0
  loc_BAE23B: CVarAd
  loc_BAE23F: PopAdLdVar
  loc_BAE240: FLdPr Me
  loc_BAE243: MemLdStr global_88
  loc_BAE246: FLdPr Me
  loc_BAE249: MemLdStr global_80
  loc_BAE24C: AryLock
  loc_BAE24F: Ary1LdPr
  loc_BAE250: MemLdRfVar from_stack_1.global_24
  loc_BAE253: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE258: AryUnlock
  loc_BAE25B: FFreeAd var_AC = ""
  loc_BAE262: FFreeVar var_C8 = ""
  loc_BAE269: FLdRfVar var_1E0
  loc_BAE26C: LitVarStr var_98, "DetaProv"
  loc_BAE271: PopAdLdVar
  loc_BAE272: FLdRfVar var_D0
  loc_BAE275: FLdRfVar var_AC
  loc_BAE278: FLdPr var_B0
  loc_BAE27B: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE280: FLdPr var_AC
  loc_BAE283:  = Me.Fields
  loc_BAE288: FLdPr var_D0
  loc_BAE28B: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE290: LitI2_Byte 0
  loc_BAE292: LitVar_Missing var_E0
  loc_BAE295: LitI2_Byte 0
  loc_BAE297: FLdZeroAd var_1E0
  loc_BAE29A: CVarAd
  loc_BAE29E: PopAdLdVar
  loc_BAE29F: FLdPr Me
  loc_BAE2A2: MemLdStr global_88
  loc_BAE2A5: FLdPr Me
  loc_BAE2A8: MemLdStr global_80
  loc_BAE2AB: AryLock
  loc_BAE2AE: Ary1LdPr
  loc_BAE2AF: MemLdRfVar from_stack_1.global_28
  loc_BAE2B2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE2B7: AryUnlock
  loc_BAE2BA: FFreeAd var_AC = ""
  loc_BAE2C1: FFreeVar var_C8 = ""
  loc_BAE2C8: FLdRfVar var_1E0
  loc_BAE2CB: LitVarStr var_98, "CodiBanc"
  loc_BAE2D0: PopAdLdVar
  loc_BAE2D1: FLdRfVar var_D0
  loc_BAE2D4: FLdRfVar var_AC
  loc_BAE2D7: FLdPr var_B0
  loc_BAE2DA: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE2DF: FLdPr var_AC
  loc_BAE2E2:  = Me.Fields
  loc_BAE2E7: FLdPr var_D0
  loc_BAE2EA: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE2EF: LitI2_Byte 0
  loc_BAE2F1: LitVar_Missing var_E0
  loc_BAE2F4: LitI2_Byte 0
  loc_BAE2F6: FLdZeroAd var_1E0
  loc_BAE2F9: CVarAd
  loc_BAE2FD: PopAdLdVar
  loc_BAE2FE: FLdPr Me
  loc_BAE301: MemLdStr global_88
  loc_BAE304: FLdPr Me
  loc_BAE307: MemLdStr global_80
  loc_BAE30A: AryLock
  loc_BAE30D: Ary1LdPr
  loc_BAE30E: MemLdRfVar from_stack_1.global_32
  loc_BAE311: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE316: AryUnlock
  loc_BAE319: FFreeAd var_AC = ""
  loc_BAE320: FFreeVar var_C8 = ""
  loc_BAE327: FLdRfVar var_1E0
  loc_BAE32A: LitVarStr var_98, "DetaBanc"
  loc_BAE32F: PopAdLdVar
  loc_BAE330: FLdRfVar var_D0
  loc_BAE333: FLdRfVar var_AC
  loc_BAE336: FLdPr var_B0
  loc_BAE339: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE33E: FLdPr var_AC
  loc_BAE341:  = Me.Fields
  loc_BAE346: FLdPr var_D0
  loc_BAE349: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE34E: LitI2_Byte 0
  loc_BAE350: LitVar_Missing var_E0
  loc_BAE353: LitI2_Byte 0
  loc_BAE355: FLdZeroAd var_1E0
  loc_BAE358: CVarAd
  loc_BAE35C: PopAdLdVar
  loc_BAE35D: FLdPr Me
  loc_BAE360: MemLdStr global_88
  loc_BAE363: FLdPr Me
  loc_BAE366: MemLdStr global_80
  loc_BAE369: AryLock
  loc_BAE36C: Ary1LdPr
  loc_BAE36D: MemLdRfVar from_stack_1.global_36
  loc_BAE370: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE375: AryUnlock
  loc_BAE378: FFreeAd var_AC = ""
  loc_BAE37F: FFreeVar var_C8 = ""
  loc_BAE386: FLdRfVar var_1E0
  loc_BAE389: LitVarStr var_98, "NumeMoba"
  loc_BAE38E: PopAdLdVar
  loc_BAE38F: FLdRfVar var_D0
  loc_BAE392: FLdRfVar var_AC
  loc_BAE395: FLdPr var_B0
  loc_BAE398: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE39D: FLdPr var_AC
  loc_BAE3A0:  = Me.Fields
  loc_BAE3A5: FLdPr var_D0
  loc_BAE3A8: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE3AD: LitI2_Byte 0
  loc_BAE3AF: LitVar_Missing var_E0
  loc_BAE3B2: LitI2_Byte 0
  loc_BAE3B4: FLdZeroAd var_1E0
  loc_BAE3B7: CVarAd
  loc_BAE3BB: PopAdLdVar
  loc_BAE3BC: FLdPr Me
  loc_BAE3BF: MemLdStr global_88
  loc_BAE3C2: FLdPr Me
  loc_BAE3C5: MemLdStr global_80
  loc_BAE3C8: AryLock
  loc_BAE3CB: Ary1LdPr
  loc_BAE3CC: MemLdRfVar from_stack_1.global_40
  loc_BAE3CF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE3D4: AryUnlock
  loc_BAE3D7: FFreeAd var_AC = ""
  loc_BAE3DE: FFreeVar var_C8 = ""
  loc_BAE3E5: FLdRfVar var_1E0
  loc_BAE3E8: LitVarStr var_98, "ImpoCheq"
  loc_BAE3ED: PopAdLdVar
  loc_BAE3EE: FLdRfVar var_D0
  loc_BAE3F1: FLdRfVar var_AC
  loc_BAE3F4: FLdPr var_B0
  loc_BAE3F7: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE3FC: FLdPr var_AC
  loc_BAE3FF:  = Me.Fields
  loc_BAE404: FLdPr var_D0
  loc_BAE407: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE40C: LitI2_Byte 0
  loc_BAE40E: FLdPr Me
  loc_BAE411: MemLdRfVar from_stack_1.global_92
  loc_BAE414: CVarRef
  loc_BAE419: LitI2_Byte &HFF
  loc_BAE41B: FLdZeroAd var_1E0
  loc_BAE41E: CVarAd
  loc_BAE422: PopAdLdVar
  loc_BAE423: FLdPr Me
  loc_BAE426: MemLdStr global_88
  loc_BAE429: FLdPr Me
  loc_BAE42C: MemLdStr global_80
  loc_BAE42F: AryLock
  loc_BAE432: Ary1LdPr
  loc_BAE433: MemLdRfVar from_stack_1.global_44
  loc_BAE436: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE43B: AryUnlock
  loc_BAE43E: FFreeAd var_AC = ""
  loc_BAE445: FFree1Var var_C8 = ""
  loc_BAE448: FLdPr var_B0
  loc_BAE44B: Call clsbase.MoveSiguiente()
  loc_BAE450: FLdPr Me
  loc_BAE453: MemLdRfVar from_stack_1.global_88
  loc_BAE456: NextI4 var_674, loc_BADFD0
  loc_BAE45B: LitNothing
  loc_BAE45D: FStAd var_B0 
  loc_BAE461: LitStr "0"
  loc_BAE464: FLdPr Me
  loc_BAE467: MemStStrCopy
  loc_BAE46B: FLdPr Me
  loc_BAE46E: MemLdRfVar from_stack_1.global_72
  loc_BAE471: NewIfNullAd
  loc_BAE474: FStAd var_67C 
  loc_BAE478: LitStr "Municipalidad de Guaymallén"
  loc_BAE47B: LitStr "Municipalidad de Guaymallénnnnnn"
  loc_BAE47E: EqStr
  loc_BAE480: BranchF loc_BAE4A6
  loc_BAE483: LitStr "SELECT CodiBanc, DetaBanc, Sum(ImpoCheq) ImpoCheq"
  loc_BAE486: LitStr " FROM tmovi"
  loc_BAE489: ConcatStr
  loc_BAE48A: FStStrNoPop var_CC
  loc_BAE48D: LitStr " GROUP BY CodiBanc;"
  loc_BAE490: ConcatStr
  loc_BAE491: FStStrNoPop var_114
  loc_BAE494: FLdPr var_67C
  loc_BAE497: Call clsbase.RedefineRS(from_stack_1v)
  loc_BAE49C: FFreeStr var_CC = ""
  loc_BAE4A3: Branch loc_BAE663
  loc_BAE4A6: FLdPr Me
  loc_BAE4A9: VCallAd Control_ID_mskDesde
  loc_BAE4AC: FStAdFunc var_AC
  loc_BAE4AF: FLdPr var_AC
  loc_BAE4B2: LateIdLdVar var_C8 DispID_15 0
  loc_BAE4B9: PopAd
  loc_BAE4BB: FLdPr Me
  loc_BAE4BE: VCallAd Control_ID_mskHasta
  loc_BAE4C1: FStAdFunc var_D0
  loc_BAE4C4: FLdPr var_D0
  loc_BAE4C7: LateIdLdVar var_14C DispID_15 0
  loc_BAE4CE: PopAd
  loc_BAE4D0: FLdPr Me
  loc_BAE4D3: VCallAd Control_ID_mskHasta
  loc_BAE4D6: FStAdFunc var_1E0
  loc_BAE4D9: FLdPr var_1E0
  loc_BAE4DC: LateIdLdVar var_1F0 DispID_15 0
  loc_BAE4E3: PopAd
  loc_BAE4E5: FLdPr Me
  loc_BAE4E8: VCallAd Control_ID_mskHasta
  loc_BAE4EB: FStAdFunc var_284
  loc_BAE4EE: FLdPr var_284
  loc_BAE4F1: LateIdLdVar var_294 DispID_15 0
  loc_BAE4F8: PopAd
  loc_BAE4FA: LitStr "SELECT ch.CodiBanc, DetaBanc, Sum(ImpoCheq) ImpoCheq"
  loc_BAE4FD: LitStr " FROM cheque ch"
  loc_BAE500: ConcatStr
  loc_BAE501: FStStrNoPop var_CC
  loc_BAE504: LitStr " INNER JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_BAE507: ConcatStr
  loc_BAE508: FStStrNoPop var_114
  loc_BAE50B: LitStr " WHERE (FereCheq IS NOT NULL AND FereCheq BETWEEN '"
  loc_BAE50E: ConcatStr
  loc_BAE50F: CVarStr var_110
  loc_BAE512: LitI4 1
  loc_BAE517: LitI4 1
  loc_BAE51C: LitVarStr var_98, "yyyy-mm-dd"
  loc_BAE521: FStVarCopyObj var_F0
  loc_BAE524: FLdRfVar var_F0
  loc_BAE527: FLdRfVar var_C8
  loc_BAE52A: CStrVarTmp
  loc_BAE52B: CVarStr var_E0
  loc_BAE52E: FLdRfVar var_100
  loc_BAE531: ImpAdCallFPR4  = Format(, )
  loc_BAE536: FLdRfVar var_100
  loc_BAE539: ConcatVar var_12C
  loc_BAE53D: LitVarStr var_A8, "' AND '"
  loc_BAE542: ConcatVar var_13C
  loc_BAE546: LitI4 1
  loc_BAE54B: LitI4 1
  loc_BAE550: LitVarStr var_16C, "yyyy-mm-dd"
  loc_BAE555: FStVarCopyObj var_17C
  loc_BAE558: FLdRfVar var_17C
  loc_BAE55B: FLdRfVar var_14C
  loc_BAE55E: CStrVarTmp
  loc_BAE55F: CVarStr var_15C
  loc_BAE562: FLdRfVar var_18C
  loc_BAE565: ImpAdCallFPR4  = Format(, )
  loc_BAE56A: FLdRfVar var_18C
  loc_BAE56D: ConcatVar var_19C
  loc_BAE571: LitVarStr var_1AC, "')"
  loc_BAE576: ConcatVar var_1BC
  loc_BAE57A: LitVarStr var_1CC, " AND (FepaCheq IS NULL OR FepaCheq > '"
  loc_BAE57F: ConcatVar var_1DC
  loc_BAE583: LitI4 1
  loc_BAE588: LitI4 1
  loc_BAE58D: LitVarStr var_210, "yyyy-mm-dd"
  loc_BAE592: FStVarCopyObj var_220
  loc_BAE595: FLdRfVar var_220
  loc_BAE598: FLdRfVar var_1F0
  loc_BAE59B: CStrVarTmp
  loc_BAE59C: CVarStr var_200
  loc_BAE59F: FLdRfVar var_230
  loc_BAE5A2: ImpAdCallFPR4  = Format(, )
  loc_BAE5A7: FLdRfVar var_230
  loc_BAE5AA: ConcatVar var_240
  loc_BAE5AE: LitVarStr var_250, "')"
  loc_BAE5B3: ConcatVar var_260
  loc_BAE5B7: LitVarStr var_270, " AND (FeanCheq IS NULL OR FeanCheq > '"
  loc_BAE5BC: ConcatVar var_280
  loc_BAE5C0: LitI4 1
  loc_BAE5C5: LitI4 1
  loc_BAE5CA: LitVarStr var_2B4, "yyyy-mm-dd"
  loc_BAE5CF: FStVarCopyObj var_2C4
  loc_BAE5D2: FLdRfVar var_2C4
  loc_BAE5D5: FLdRfVar var_294
  loc_BAE5D8: CStrVarTmp
  loc_BAE5D9: CVarStr var_2A4
  loc_BAE5DC: FLdRfVar var_2D4
  loc_BAE5DF: ImpAdCallFPR4  = Format(, )
  loc_BAE5E4: FLdRfVar var_2D4
  loc_BAE5E7: ConcatVar var_2E4
  loc_BAE5EB: LitVarStr var_2F4, "')"
  loc_BAE5F0: ConcatVar var_304
  loc_BAE5F4: LitVarStr var_314, " AND AutoCheq IN (1,2,4)"
  loc_BAE5F9: ConcatVar var_324
  loc_BAE5FD: LitVarStr var_334, " GROUP BY CodiBanc;"
  loc_BAE602: ConcatVar var_344
  loc_BAE606: CStrVarVal var_118
  loc_BAE60A: FLdPr var_67C
  loc_BAE60D: Call clsbase.RedefineRS(from_stack_1v)
  loc_BAE612: FFreeStr var_CC = "": var_114 = ""
  loc_BAE61B: FFreeAd var_AC = "": var_D0 = "": var_1E0 = ""
  loc_BAE626: FFreeVar var_C8 = "": var_E0 = "": var_F0 = "": var_110 = "": var_100 = "": var_12C = "": var_14C = "": var_15C = "": var_17C = "": var_13C = "": var_18C = "": var_19C = "": var_1BC = "": var_1F0 = "": var_200 = "": var_220 = "": var_1DC = "": var_230 = "": var_240 = "": var_260 = "": var_294 = "": var_2A4 = "": var_2C4 = "": var_280 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_324 = ""
  loc_BAE663: LitI4 1
  loc_BAE668: FLdRfVar var_66C
  loc_BAE66B: FLdPr var_67C
  loc_BAE66E: from_stack_1 = clsbase.RecordCount
  loc_BAE673: ILdRf var_66C
  loc_BAE676: FLdPr Me
  loc_BAE679: MemLdRfVar from_stack_1.global_84
  loc_BAE67C: Redim
  loc_BAE686: FLdPr var_67C
  loc_BAE689: Call clsbase.MoveFirst()
  loc_BAE68E: LitI4 1
  loc_BAE693: FLdPr Me
  loc_BAE696: MemLdRfVar from_stack_1.global_88
  loc_BAE699: FLdPr Me
  loc_BAE69C: MemLdStr global_84
  loc_BAE69F: LitI2_Byte 1
  loc_BAE6A1: FnUBound
  loc_BAE6A3: ForI4 var_684
  loc_BAE6A9: FLdRfVar var_1E0
  loc_BAE6AC: LitVarStr var_98, "CodiBanc"
  loc_BAE6B1: PopAdLdVar
  loc_BAE6B2: FLdRfVar var_D0
  loc_BAE6B5: FLdRfVar var_AC
  loc_BAE6B8: FLdPr var_67C
  loc_BAE6BB: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE6C0: FLdPr var_AC
  loc_BAE6C3:  = Me.Fields
  loc_BAE6C8: FLdPr var_D0
  loc_BAE6CB: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE6D0: LitI2_Byte 0
  loc_BAE6D2: LitVar_Missing var_E0
  loc_BAE6D5: LitI2_Byte 0
  loc_BAE6D7: FLdZeroAd var_1E0
  loc_BAE6DA: CVarAd
  loc_BAE6DE: PopAdLdVar
  loc_BAE6DF: FLdPr Me
  loc_BAE6E2: MemLdStr global_88
  loc_BAE6E5: FLdPr Me
  loc_BAE6E8: MemLdStr global_84
  loc_BAE6EB: AryLock
  loc_BAE6EE: Ary1LdPr
  loc_BAE6EF: MemLdRfVar from_stack_1.global_32
  loc_BAE6F2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE6F7: AryUnlock
  loc_BAE6FA: FFreeAd var_AC = ""
  loc_BAE701: FFreeVar var_C8 = ""
  loc_BAE708: FLdRfVar var_1E0
  loc_BAE70B: LitVarStr var_98, "DetaBanc"
  loc_BAE710: PopAdLdVar
  loc_BAE711: FLdRfVar var_D0
  loc_BAE714: FLdRfVar var_AC
  loc_BAE717: FLdPr var_67C
  loc_BAE71A: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE71F: FLdPr var_AC
  loc_BAE722:  = Me.Fields
  loc_BAE727: FLdPr var_D0
  loc_BAE72A: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE72F: LitI2_Byte 0
  loc_BAE731: LitVar_Missing var_E0
  loc_BAE734: LitI2_Byte 0
  loc_BAE736: FLdZeroAd var_1E0
  loc_BAE739: CVarAd
  loc_BAE73D: PopAdLdVar
  loc_BAE73E: FLdPr Me
  loc_BAE741: MemLdStr global_88
  loc_BAE744: FLdPr Me
  loc_BAE747: MemLdStr global_84
  loc_BAE74A: AryLock
  loc_BAE74D: Ary1LdPr
  loc_BAE74E: MemLdRfVar from_stack_1.global_36
  loc_BAE751: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE756: AryUnlock
  loc_BAE759: FFreeAd var_AC = ""
  loc_BAE760: FFreeVar var_C8 = ""
  loc_BAE767: FLdRfVar var_1E0
  loc_BAE76A: LitVarStr var_98, "ImpoCheq"
  loc_BAE76F: PopAdLdVar
  loc_BAE770: FLdRfVar var_D0
  loc_BAE773: FLdRfVar var_AC
  loc_BAE776: FLdPr var_67C
  loc_BAE779: from_stack_1v = clsbase.RsFrmGet()
  loc_BAE77E: FLdPr var_AC
  loc_BAE781:  = Me.Fields
  loc_BAE786: FLdPr var_D0
  loc_BAE789: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE78E: LitI2_Byte 0
  loc_BAE790: FLdPr Me
  loc_BAE793: MemLdRfVar from_stack_1.global_96
  loc_BAE796: CVarRef
  loc_BAE79B: LitI2_Byte &HFF
  loc_BAE79D: FLdZeroAd var_1E0
  loc_BAE7A0: CVarAd
  loc_BAE7A4: PopAdLdVar
  loc_BAE7A5: FLdPr Me
  loc_BAE7A8: MemLdStr global_88
  loc_BAE7AB: FLdPr Me
  loc_BAE7AE: MemLdStr global_84
  loc_BAE7B1: AryLock
  loc_BAE7B4: Ary1LdPr
  loc_BAE7B5: MemLdRfVar from_stack_1.global_44
  loc_BAE7B8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BAE7BD: AryUnlock
  loc_BAE7C0: FFreeAd var_AC = ""
  loc_BAE7C7: FFree1Var var_C8 = ""
  loc_BAE7CA: FLdPr var_67C
  loc_BAE7CD: Call clsbase.MoveSiguiente()
  loc_BAE7D2: FLdPr Me
  loc_BAE7D5: MemLdRfVar from_stack_1.global_88
  loc_BAE7D8: NextI4 var_684, loc_BAE6A9
  loc_BAE7DD: LitNothing
  loc_BAE7DF: FStAd var_67C 
  loc_BAE7E3: LitI2_Byte &HFF
  loc_BAE7E5: FLdPr Me
  loc_BAE7E8: MemStI2 bGenerado
  loc_BAE7EB: LitI4 0
  loc_BAE7F0: CI2I4
  loc_BAE7F1: FLdPr Me
  loc_BAE7F4: Me.MousePointer = from_stack_1
  loc_BAE7F9: LitVarStr var_98, vbNullString
  loc_BAE7FE: PopAdLdVar
  loc_BAE7FF: FLdPr Me
  loc_BAE802: VCallAd Control_ID_statusBar
  loc_BAE805: FStAdFunc var_AC
  loc_BAE808: FLdPr var_AC
  loc_BAE80B: LateIdSt
  loc_BAE810: FFree1Ad var_AC
  loc_BAE813: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AB4D04
  'Data Table: 4623DC
  loc_AB4780: FLdRfVar var_88
  loc_AB4783: LitI2_Byte 0
  loc_AB4785: LitI2_Byte &HFF
  loc_AB4787: ImpAdLdI4 MemVar_C3D83C
  loc_AB478A: FLdPr Me
  loc_AB478D: MemLdRfVar from_stack_1.global_76
  loc_AB4790: NewIfNullPr IFileSystem3
  loc_AB4793: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AB4798: ILdRf var_88
  loc_AB479B: FLdPr Me
  loc_AB479E: MemStVarAd
  loc_AB47A2: FFree1Ad var_88
  loc_AB47A5: Call Proc_176_26_A7BE2C()
  loc_AB47AA: LitI4 1
  loc_AB47AF: FLdPr Me
  loc_AB47B2: MemLdRfVar from_stack_1.global_88
  loc_AB47B5: FLdPr Me
  loc_AB47B8: MemLdStr global_80
  loc_AB47BB: LitI2_Byte 1
  loc_AB47BD: FnUBound
  loc_AB47BF: ForI4 var_90
  loc_AB47C5: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB47CA: PopAdLdVar
  loc_AB47CB: FLdPr Me
  loc_AB47CE: MemLdRfVar from_stack_1.htmFile
  loc_AB47D1: LdPrVar
  loc_AB47D3: LateMemCall
  loc_AB47D9: FLdPr Me
  loc_AB47DC: MemLdStr global_88
  loc_AB47DF: FLdPr Me
  loc_AB47E2: MemLdStr global_80
  loc_AB47E5: AryLock
  loc_AB47E8: Ary1LdRf
  loc_AB47E9: FStR4 var_B8
  loc_AB47EC: LitI4 0
  loc_AB47F1: LitI4 0
  loc_AB47F6: LitI2_Byte 0
  loc_AB47F8: LitStr "right"
  loc_AB47FB: FMemLdR4 var_B8(0)
  loc_AB4800: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB4805: CVarStr var_C8
  loc_AB4808: PopAdLdVar
  loc_AB4809: FLdPr Me
  loc_AB480C: MemLdRfVar from_stack_1.htmFile
  loc_AB480F: LdPrVar
  loc_AB4811: LateMemCall
  loc_AB4817: FFree1Var var_C8 = ""
  loc_AB481A: LitI4 0
  loc_AB481F: LitI4 0
  loc_AB4824: LitI2_Byte 0
  loc_AB4826: LitStr "left"
  loc_AB4829: FMemLdR4 var_B8(4)
  loc_AB482E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB4833: CVarStr var_C8
  loc_AB4836: PopAdLdVar
  loc_AB4837: FLdPr Me
  loc_AB483A: MemLdRfVar from_stack_1.htmFile
  loc_AB483D: LdPrVar
  loc_AB483F: LateMemCall
  loc_AB4845: FFree1Var var_C8 = ""
  loc_AB4848: LitI4 0
  loc_AB484D: LitI4 0
  loc_AB4852: LitI2_Byte 0
  loc_AB4854: LitStr "right"
  loc_AB4857: FMemLdR4 var_B8(8)
  loc_AB485C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB4861: CVarStr var_C8
  loc_AB4864: PopAdLdVar
  loc_AB4865: FLdPr Me
  loc_AB4868: MemLdRfVar from_stack_1.htmFile
  loc_AB486B: LdPrVar
  loc_AB486D: LateMemCall
  loc_AB4873: FFree1Var var_C8 = ""
  loc_AB4876: LitI4 0
  loc_AB487B: LitI4 0
  loc_AB4880: LitI2_Byte 0
  loc_AB4882: LitStr "center"
  loc_AB4885: FMemLdR4 var_B8(12)
  loc_AB488A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB488F: CVarStr var_C8
  loc_AB4892: PopAdLdVar
  loc_AB4893: FLdPr Me
  loc_AB4896: MemLdRfVar from_stack_1.htmFile
  loc_AB4899: LdPrVar
  loc_AB489B: LateMemCall
  loc_AB48A1: FFree1Var var_C8 = ""
  loc_AB48A4: LitI4 0
  loc_AB48A9: LitI4 0
  loc_AB48AE: LitI2_Byte 0
  loc_AB48B0: LitStr "center"
  loc_AB48B3: FMemLdR4 var_B8(16)
  loc_AB48B8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB48BD: CVarStr var_C8
  loc_AB48C0: PopAdLdVar
  loc_AB48C1: FLdPr Me
  loc_AB48C4: MemLdRfVar from_stack_1.htmFile
  loc_AB48C7: LdPrVar
  loc_AB48C9: LateMemCall
  loc_AB48CF: FFree1Var var_C8 = ""
  loc_AB48D2: LitI4 0
  loc_AB48D7: LitI4 0
  loc_AB48DC: LitI2_Byte 0
  loc_AB48DE: LitStr "center"
  loc_AB48E1: FMemLdR4 var_B8(20)
  loc_AB48E6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB48EB: CVarStr var_C8
  loc_AB48EE: PopAdLdVar
  loc_AB48EF: FLdPr Me
  loc_AB48F2: MemLdRfVar from_stack_1.htmFile
  loc_AB48F5: LdPrVar
  loc_AB48F7: LateMemCall
  loc_AB48FD: FFree1Var var_C8 = ""
  loc_AB4900: LitI4 0
  loc_AB4905: LitI4 0
  loc_AB490A: LitI2_Byte 0
  loc_AB490C: LitStr "left"
  loc_AB490F: FMemLdR4 var_B8(24)
  loc_AB4914: LitStr " "
  loc_AB4917: ConcatStr
  loc_AB4918: FStStrNoPop var_CC
  loc_AB491B: FMemLdR4 var_B8(28)
  loc_AB4920: ConcatStr
  loc_AB4921: FStStrNoPop var_D0
  loc_AB4924: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB4929: CVarStr var_C8
  loc_AB492C: PopAdLdVar
  loc_AB492D: FLdPr Me
  loc_AB4930: MemLdRfVar from_stack_1.htmFile
  loc_AB4933: LdPrVar
  loc_AB4935: LateMemCall
  loc_AB493B: FFreeStr var_CC = ""
  loc_AB4942: FFree1Var var_C8 = ""
  loc_AB4945: LitI4 0
  loc_AB494A: LitI4 0
  loc_AB494F: LitI2_Byte 0
  loc_AB4951: LitStr "left"
  loc_AB4954: FMemLdR4 var_B8(32)
  loc_AB4959: LitStr " "
  loc_AB495C: ConcatStr
  loc_AB495D: FStStrNoPop var_CC
  loc_AB4960: FMemLdR4 var_B8(36)
  loc_AB4965: ConcatStr
  loc_AB4966: FStStrNoPop var_D0
  loc_AB4969: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB496E: CVarStr var_C8
  loc_AB4971: PopAdLdVar
  loc_AB4972: FLdPr Me
  loc_AB4975: MemLdRfVar from_stack_1.htmFile
  loc_AB4978: LdPrVar
  loc_AB497A: LateMemCall
  loc_AB4980: FFreeStr var_CC = ""
  loc_AB4987: FFree1Var var_C8 = ""
  loc_AB498A: LitI4 0
  loc_AB498F: LitI4 0
  loc_AB4994: LitI2_Byte 0
  loc_AB4996: LitStr "right"
  loc_AB4999: FMemLdR4 var_B8(40)
  loc_AB499E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB49A3: CVarStr var_C8
  loc_AB49A6: PopAdLdVar
  loc_AB49A7: FLdPr Me
  loc_AB49AA: MemLdRfVar from_stack_1.htmFile
  loc_AB49AD: LdPrVar
  loc_AB49AF: LateMemCall
  loc_AB49B5: FFree1Var var_C8 = ""
  loc_AB49B8: LitI4 0
  loc_AB49BD: LitI4 0
  loc_AB49C2: LitI2_Byte 0
  loc_AB49C4: LitStr "right"
  loc_AB49C7: FMemLdR4 var_B8(44)
  loc_AB49CC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB49D1: CVarStr var_C8
  loc_AB49D4: PopAdLdVar
  loc_AB49D5: FLdPr Me
  loc_AB49D8: MemLdRfVar from_stack_1.htmFile
  loc_AB49DB: LdPrVar
  loc_AB49DD: LateMemCall
  loc_AB49E3: FFree1Var var_C8 = ""
  loc_AB49E6: LitVarStr var_A0, "</tr>"
  loc_AB49EB: PopAdLdVar
  loc_AB49EC: FLdPr Me
  loc_AB49EF: MemLdRfVar from_stack_1.htmFile
  loc_AB49F2: LdPrVar
  loc_AB49F4: LateMemCall
  loc_AB49FA: LitI4 0
  loc_AB49FF: FStR4 var_B8
  loc_AB4A02: AryUnlock
  loc_AB4A05: FLdPr Me
  loc_AB4A08: MemLdRfVar from_stack_1.global_88
  loc_AB4A0B: NextI4 var_90, loc_AB47C5
  loc_AB4A10: LitVarStr var_A0, "  <tr>"
  loc_AB4A15: PopAdLdVar
  loc_AB4A16: FLdPr Me
  loc_AB4A19: MemLdRfVar from_stack_1.htmFile
  loc_AB4A1C: LdPrVar
  loc_AB4A1E: LateMemCall
  loc_AB4A24: LitVarStr var_A0, "     <td colspan=""9"">&nbsp;</td>"
  loc_AB4A29: PopAdLdVar
  loc_AB4A2A: FLdPr Me
  loc_AB4A2D: MemLdRfVar from_stack_1.htmFile
  loc_AB4A30: LdPrVar
  loc_AB4A32: LateMemCall
  loc_AB4A38: LitStr "     <td class=""Totales"" align=""right"">"
  loc_AB4A3B: FLdPr Me
  loc_AB4A3E: MemLdStr global_92
  loc_AB4A41: ConcatStr
  loc_AB4A42: FStStrNoPop var_CC
  loc_AB4A45: LitStr "</td>"
  loc_AB4A48: ConcatStr
  loc_AB4A49: CVarStr var_C8
  loc_AB4A4C: PopAdLdVar
  loc_AB4A4D: FLdPr Me
  loc_AB4A50: MemLdRfVar from_stack_1.htmFile
  loc_AB4A53: LdPrVar
  loc_AB4A55: LateMemCall
  loc_AB4A5B: FFree1Str var_CC
  loc_AB4A5E: FFree1Var var_C8 = ""
  loc_AB4A61: LitVarStr var_A0, "  </tr>"
  loc_AB4A66: PopAdLdVar
  loc_AB4A67: FLdPr Me
  loc_AB4A6A: MemLdRfVar from_stack_1.htmFile
  loc_AB4A6D: LdPrVar
  loc_AB4A6F: LateMemCall
  loc_AB4A75: LitVarStr var_A0, "</table>"
  loc_AB4A7A: PopAdLdVar
  loc_AB4A7B: FLdPr Me
  loc_AB4A7E: MemLdRfVar from_stack_1.htmFile
  loc_AB4A81: LdPrVar
  loc_AB4A83: LateMemCall
  loc_AB4A89: LitVarStr var_A0, "<br><br>"
  loc_AB4A8E: PopAdLdVar
  loc_AB4A8F: FLdPr Me
  loc_AB4A92: MemLdRfVar from_stack_1.htmFile
  loc_AB4A95: LdPrVar
  loc_AB4A97: LateMemCall
  loc_AB4A9D: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AB4AA2: PopAdLdVar
  loc_AB4AA3: FLdPr Me
  loc_AB4AA6: MemLdRfVar from_stack_1.htmFile
  loc_AB4AA9: LdPrVar
  loc_AB4AAB: LateMemCall
  loc_AB4AB1: LitVarStr var_A0, "  <THEAD>"
  loc_AB4AB6: PopAdLdVar
  loc_AB4AB7: FLdPr Me
  loc_AB4ABA: MemLdRfVar from_stack_1.htmFile
  loc_AB4ABD: LdPrVar
  loc_AB4ABF: LateMemCall
  loc_AB4AC5: LitVarStr var_A0, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_AB4ACA: PopAdLdVar
  loc_AB4ACB: FLdPr Me
  loc_AB4ACE: MemLdRfVar from_stack_1.htmFile
  loc_AB4AD1: LdPrVar
  loc_AB4AD3: LateMemCall
  loc_AB4AD9: LitVarStr var_A0, "    <th colspan=""3"">Resumen por Banco</th>"
  loc_AB4ADE: PopAdLdVar
  loc_AB4ADF: FLdPr Me
  loc_AB4AE2: MemLdRfVar from_stack_1.htmFile
  loc_AB4AE5: LdPrVar
  loc_AB4AE7: LateMemCall
  loc_AB4AED: LitVarStr var_A0, "  </tr>"
  loc_AB4AF2: PopAdLdVar
  loc_AB4AF3: FLdPr Me
  loc_AB4AF6: MemLdRfVar from_stack_1.htmFile
  loc_AB4AF9: LdPrVar
  loc_AB4AFB: LateMemCall
  loc_AB4B01: LitVarStr var_A0, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_AB4B06: PopAdLdVar
  loc_AB4B07: FLdPr Me
  loc_AB4B0A: MemLdRfVar from_stack_1.htmFile
  loc_AB4B0D: LdPrVar
  loc_AB4B0F: LateMemCall
  loc_AB4B15: LitVarStr var_A0, "    <th>Código</th>"
  loc_AB4B1A: PopAdLdVar
  loc_AB4B1B: FLdPr Me
  loc_AB4B1E: MemLdRfVar from_stack_1.htmFile
  loc_AB4B21: LdPrVar
  loc_AB4B23: LateMemCall
  loc_AB4B29: LitVarStr var_A0, "    <th>Banco</th>"
  loc_AB4B2E: PopAdLdVar
  loc_AB4B2F: FLdPr Me
  loc_AB4B32: MemLdRfVar from_stack_1.htmFile
  loc_AB4B35: LdPrVar
  loc_AB4B37: LateMemCall
  loc_AB4B3D: LitVarStr var_A0, "    <th>Cheques a cargo</th>"
  loc_AB4B42: PopAdLdVar
  loc_AB4B43: FLdPr Me
  loc_AB4B46: MemLdRfVar from_stack_1.htmFile
  loc_AB4B49: LdPrVar
  loc_AB4B4B: LateMemCall
  loc_AB4B51: LitVarStr var_A0, "  </tr>"
  loc_AB4B56: PopAdLdVar
  loc_AB4B57: FLdPr Me
  loc_AB4B5A: MemLdRfVar from_stack_1.htmFile
  loc_AB4B5D: LdPrVar
  loc_AB4B5F: LateMemCall
  loc_AB4B65: LitVarStr var_A0, "  </THEAD>"
  loc_AB4B6A: PopAdLdVar
  loc_AB4B6B: FLdPr Me
  loc_AB4B6E: MemLdRfVar from_stack_1.htmFile
  loc_AB4B71: LdPrVar
  loc_AB4B73: LateMemCall
  loc_AB4B79: LitI4 1
  loc_AB4B7E: FLdPr Me
  loc_AB4B81: MemLdRfVar from_stack_1.global_88
  loc_AB4B84: FLdPr Me
  loc_AB4B87: MemLdStr global_84
  loc_AB4B8A: LitI2_Byte 1
  loc_AB4B8C: FnUBound
  loc_AB4B8E: ForI4 var_D8
  loc_AB4B94: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB4B99: PopAdLdVar
  loc_AB4B9A: FLdPr Me
  loc_AB4B9D: MemLdRfVar from_stack_1.htmFile
  loc_AB4BA0: LdPrVar
  loc_AB4BA2: LateMemCall
  loc_AB4BA8: FLdPr Me
  loc_AB4BAB: MemLdStr global_88
  loc_AB4BAE: FLdPr Me
  loc_AB4BB1: MemLdStr global_84
  loc_AB4BB4: AryLock
  loc_AB4BB7: Ary1LdRf
  loc_AB4BB8: FStR4 var_E0
  loc_AB4BBB: LitI4 0
  loc_AB4BC0: LitI4 0
  loc_AB4BC5: LitI2_Byte 0
  loc_AB4BC7: LitStr "right"
  loc_AB4BCA: FMemLdR4 var_E0(32)
  loc_AB4BCF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB4BD4: CVarStr var_C8
  loc_AB4BD7: PopAdLdVar
  loc_AB4BD8: FLdPr Me
  loc_AB4BDB: MemLdRfVar from_stack_1.htmFile
  loc_AB4BDE: LdPrVar
  loc_AB4BE0: LateMemCall
  loc_AB4BE6: FFree1Var var_C8 = ""
  loc_AB4BE9: LitI4 0
  loc_AB4BEE: LitI4 0
  loc_AB4BF3: LitI2_Byte 0
  loc_AB4BF5: LitStr "left"
  loc_AB4BF8: FMemLdR4 var_E0(36)
  loc_AB4BFD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB4C02: CVarStr var_C8
  loc_AB4C05: PopAdLdVar
  loc_AB4C06: FLdPr Me
  loc_AB4C09: MemLdRfVar from_stack_1.htmFile
  loc_AB4C0C: LdPrVar
  loc_AB4C0E: LateMemCall
  loc_AB4C14: FFree1Var var_C8 = ""
  loc_AB4C17: LitI4 0
  loc_AB4C1C: LitI4 0
  loc_AB4C21: LitI2_Byte 0
  loc_AB4C23: LitStr "right"
  loc_AB4C26: FMemLdR4 var_E0(44)
  loc_AB4C2B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB4C30: CVarStr var_C8
  loc_AB4C33: PopAdLdVar
  loc_AB4C34: FLdPr Me
  loc_AB4C37: MemLdRfVar from_stack_1.htmFile
  loc_AB4C3A: LdPrVar
  loc_AB4C3C: LateMemCall
  loc_AB4C42: FFree1Var var_C8 = ""
  loc_AB4C45: LitVarStr var_A0, "  </tr>"
  loc_AB4C4A: PopAdLdVar
  loc_AB4C4B: FLdPr Me
  loc_AB4C4E: MemLdRfVar from_stack_1.htmFile
  loc_AB4C51: LdPrVar
  loc_AB4C53: LateMemCall
  loc_AB4C59: LitI4 0
  loc_AB4C5E: FStR4 var_E0
  loc_AB4C61: AryUnlock
  loc_AB4C64: FLdPr Me
  loc_AB4C67: MemLdRfVar from_stack_1.global_88
  loc_AB4C6A: NextI4 var_D8, loc_AB4B94
  loc_AB4C6F: LitVarStr var_A0, "  <tr>"
  loc_AB4C74: PopAdLdVar
  loc_AB4C75: FLdPr Me
  loc_AB4C78: MemLdRfVar from_stack_1.htmFile
  loc_AB4C7B: LdPrVar
  loc_AB4C7D: LateMemCall
  loc_AB4C83: LitVarStr var_A0, "     <td colspan=""2"">&nbsp;</td>"
  loc_AB4C88: PopAdLdVar
  loc_AB4C89: FLdPr Me
  loc_AB4C8C: MemLdRfVar from_stack_1.htmFile
  loc_AB4C8F: LdPrVar
  loc_AB4C91: LateMemCall
  loc_AB4C97: LitStr "     <td class=""Totales"" align=""right"">"
  loc_AB4C9A: FLdPr Me
  loc_AB4C9D: MemLdStr global_96
  loc_AB4CA0: ConcatStr
  loc_AB4CA1: FStStrNoPop var_CC
  loc_AB4CA4: LitStr "</td>"
  loc_AB4CA7: ConcatStr
  loc_AB4CA8: CVarStr var_C8
  loc_AB4CAB: PopAdLdVar
  loc_AB4CAC: FLdPr Me
  loc_AB4CAF: MemLdRfVar from_stack_1.htmFile
  loc_AB4CB2: LdPrVar
  loc_AB4CB4: LateMemCall
  loc_AB4CBA: FFree1Str var_CC
  loc_AB4CBD: FFree1Var var_C8 = ""
  loc_AB4CC0: LitVarStr var_A0, "  </tr>"
  loc_AB4CC5: PopAdLdVar
  loc_AB4CC6: FLdPr Me
  loc_AB4CC9: MemLdRfVar from_stack_1.htmFile
  loc_AB4CCC: LdPrVar
  loc_AB4CCE: LateMemCall
  loc_AB4CD4: LitVarStr var_A0, "</table>"
  loc_AB4CD9: PopAdLdVar
  loc_AB4CDA: FLdPr Me
  loc_AB4CDD: MemLdRfVar from_stack_1.htmFile
  loc_AB4CE0: LdPrVar
  loc_AB4CE2: LateMemCall
  loc_AB4CE8: Call Proc_176_27_981C10()
  loc_AB4CED: FLdPr Me
  loc_AB4CF0: MemLdRfVar from_stack_1.htmFile
  loc_AB4CF3: LdPrVar
  loc_AB4CF5: LateMemCall
  loc_AB4CFB: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AB4D00: ExitProcHresult
  loc_AB4D01: ThisVCallR8
End Sub

Public Sub GeneraXLS() '94FF9C
  'Data Table: 4623DC
  loc_94FF84: LitI2_Byte 0
  loc_94FF86: FLdPr Me
  loc_94FF89: MemStI2 bLogos
  loc_94FF8C: Call GeneraHTML()
  loc_94FF91: LitI2_Byte &HFF
  loc_94FF93: FLdPr Me
  loc_94FF96: MemStI2 bLogos
  loc_94FF99: ExitProcHresult
End Sub

Private Function Proc_176_26_A7BE2C() 'A7BE2C
  'Data Table: 4623DC
  loc_A7BA50: LitVarStr var_94, "<html>"
  loc_A7BA55: PopAdLdVar
  loc_A7BA56: FLdPr Me
  loc_A7BA59: MemLdRfVar from_stack_1.htmFile
  loc_A7BA5C: LdPrVar
  loc_A7BA5E: LateMemCall
  loc_A7BA64: LitVarStr var_94, "<head>"
  loc_A7BA69: PopAdLdVar
  loc_A7BA6A: FLdPr Me
  loc_A7BA6D: MemLdRfVar from_stack_1.htmFile
  loc_A7BA70: LdPrVar
  loc_A7BA72: LateMemCall
  loc_A7BA78: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A7BA7D: PopAdLdVar
  loc_A7BA7E: FLdPr Me
  loc_A7BA81: MemLdRfVar from_stack_1.htmFile
  loc_A7BA84: LdPrVar
  loc_A7BA86: LateMemCall
  loc_A7BA8C: LitStr "<title>"
  loc_A7BA8F: FLdRfVar var_A8
  loc_A7BA92: FLdPr Me
  loc_A7BA95:  = Me.Caption
  loc_A7BA9A: ILdRf var_A8
  loc_A7BA9D: ConcatStr
  loc_A7BA9E: FStStrNoPop var_AC
  loc_A7BAA1: LitStr "</title>"
  loc_A7BAA4: ConcatStr
  loc_A7BAA5: CVarStr var_BC
  loc_A7BAA8: PopAdLdVar
  loc_A7BAA9: FLdPr Me
  loc_A7BAAC: MemLdRfVar from_stack_1.htmFile
  loc_A7BAAF: LdPrVar
  loc_A7BAB1: LateMemCall
  loc_A7BAB7: FFreeStr var_A8 = ""
  loc_A7BABE: FFree1Var var_BC = ""
  loc_A7BAC1: LitStr vbNullString
  loc_A7BAC4: ILdRf Me
  loc_A7BAC7: CastAd
  loc_A7BACA: FStAdFunc var_C0
  loc_A7BACD: FLdRfVar var_C0
  loc_A7BAD0: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A7BAD5: FFree1Ad var_C0
  loc_A7BAD8: LitI4 0
  loc_A7BADD: FStStrCopy var_AC
  loc_A7BAE0: FLdRfVar var_AC
  loc_A7BAE3: LitI4 0
  loc_A7BAE8: FStStrCopy var_A8
  loc_A7BAEB: FLdRfVar var_A8
  loc_A7BAEE: LitI2_Byte &HFF
  loc_A7BAF0: PopTmpLdAd2 var_C2
  loc_A7BAF3: FLdPr Me
  loc_A7BAF6: MemLdRfVar from_stack_1.htmFile
  loc_A7BAF9: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A7BAFE: FFreeStr var_A8 = ""
  loc_A7BB05: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A7BB0A: PopAdLdVar
  loc_A7BB0B: FLdPr Me
  loc_A7BB0E: MemLdRfVar from_stack_1.htmFile
  loc_A7BB11: LdPrVar
  loc_A7BB13: LateMemCall
  loc_A7BB19: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_A7BB1E: PopAdLdVar
  loc_A7BB1F: FLdPr Me
  loc_A7BB22: MemLdRfVar from_stack_1.htmFile
  loc_A7BB25: LdPrVar
  loc_A7BB27: LateMemCall
  loc_A7BB2D: LitVarStr var_94, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"">"
  loc_A7BB32: PopAdLdVar
  loc_A7BB33: FLdPr Me
  loc_A7BB36: MemLdRfVar from_stack_1.htmFile
  loc_A7BB39: LdPrVar
  loc_A7BB3B: LateMemCall
  loc_A7BB41: FLdPr Me
  loc_A7BB44: MemLdI2 bLogos
  loc_A7BB47: BranchF loc_A7BB5E
  loc_A7BB4A: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A7BB4F: PopAdLdVar
  loc_A7BB50: FLdPr Me
  loc_A7BB53: MemLdRfVar from_stack_1.htmFile
  loc_A7BB56: LdPrVar
  loc_A7BB58: LateMemCall
  loc_A7BB5E: LitVarStr var_A4, "    <br><p>"
  loc_A7BB63: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A7BB68: FStVarCopyObj var_BC
  loc_A7BB6B: FLdRfVar var_BC
  loc_A7BB6E: FLdRfVar var_D4
  loc_A7BB71: ImpAdCallFPR4  = Ucase()
  loc_A7BB76: FLdRfVar var_D4
  loc_A7BB79: ConcatVar var_E4
  loc_A7BB7D: LitVarStr var_F4, "</p>"
  loc_A7BB82: ConcatVar var_104
  loc_A7BB86: PopAdLdVar
  loc_A7BB87: FLdPr Me
  loc_A7BB8A: MemLdRfVar from_stack_1.htmFile
  loc_A7BB8D: LdPrVar
  loc_A7BB8F: LateMemCall
  loc_A7BB95: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A7BBA0: LitStr "       <p>"
  loc_A7BBA3: FLdRfVar var_A8
  loc_A7BBA6: FLdPr Me
  loc_A7BBA9:  = Me.Caption
  loc_A7BBAE: ILdRf var_A8
  loc_A7BBB1: ConcatStr
  loc_A7BBB2: FStStrNoPop var_AC
  loc_A7BBB5: LitStr "</p>"
  loc_A7BBB8: ConcatStr
  loc_A7BBB9: CVarStr var_BC
  loc_A7BBBC: PopAdLdVar
  loc_A7BBBD: FLdPr Me
  loc_A7BBC0: MemLdRfVar from_stack_1.htmFile
  loc_A7BBC3: LdPrVar
  loc_A7BBC5: LateMemCall
  loc_A7BBCB: FFreeStr var_A8 = ""
  loc_A7BBD2: FFree1Var var_BC = ""
  loc_A7BBD5: LitVarStr var_94, "    </th>"
  loc_A7BBDA: PopAdLdVar
  loc_A7BBDB: FLdPr Me
  loc_A7BBDE: MemLdRfVar from_stack_1.htmFile
  loc_A7BBE1: LdPrVar
  loc_A7BBE3: LateMemCall
  loc_A7BBE9: LitVarStr var_94, "  </tr>"
  loc_A7BBEE: PopAdLdVar
  loc_A7BBEF: FLdPr Me
  loc_A7BBF2: MemLdRfVar from_stack_1.htmFile
  loc_A7BBF5: LdPrVar
  loc_A7BBF7: LateMemCall
  loc_A7BBFD: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A7BC02: PopAdLdVar
  loc_A7BC03: FLdPr Me
  loc_A7BC06: MemLdRfVar from_stack_1.htmFile
  loc_A7BC09: LdPrVar
  loc_A7BC0B: LateMemCall
  loc_A7BC11: LitVarStr var_94, "  <tr align=""left"">"
  loc_A7BC16: PopAdLdVar
  loc_A7BC17: FLdPr Me
  loc_A7BC1A: MemLdRfVar from_stack_1.htmFile
  loc_A7BC1D: LdPrVar
  loc_A7BC1F: LateMemCall
  loc_A7BC25: LitStr "    <th>Desde: <span class=""Normal"">"
  loc_A7BC28: FLdPr Me
  loc_A7BC2B: VCallAd Control_ID_mskDesde
  loc_A7BC2E: FStAdFunc var_C0
  loc_A7BC31: FLdPr var_C0
  loc_A7BC34: LateIdLdVar var_BC DispID_15 0
  loc_A7BC3B: CStrVarTmp
  loc_A7BC3C: FStStrNoPop var_A8
  loc_A7BC3F: ConcatStr
  loc_A7BC40: FStStrNoPop var_AC
  loc_A7BC43: LitStr "</span> - Hasta: <span class=""Normal"">"
  loc_A7BC46: ConcatStr
  loc_A7BC47: FStStrNoPop var_11C
  loc_A7BC4A: FLdPr Me
  loc_A7BC4D: VCallAd Control_ID_mskHasta
  loc_A7BC50: FStAdFunc var_118
  loc_A7BC53: FLdPr var_118
  loc_A7BC56: LateIdLdVar var_D4 DispID_15 0
  loc_A7BC5D: CStrVarTmp
  loc_A7BC5E: FStStrNoPop var_120
  loc_A7BC61: ConcatStr
  loc_A7BC62: FStStrNoPop var_124
  loc_A7BC65: LitStr "</span></th>"
  loc_A7BC68: ConcatStr
  loc_A7BC69: CVarStr var_E4
  loc_A7BC6C: PopAdLdVar
  loc_A7BC6D: FLdPr Me
  loc_A7BC70: MemLdRfVar from_stack_1.htmFile
  loc_A7BC73: LdPrVar
  loc_A7BC75: LateMemCall
  loc_A7BC7B: FFreeStr var_A8 = "": var_AC = "": var_11C = "": var_120 = ""
  loc_A7BC88: FFreeAd var_C0 = ""
  loc_A7BC8F: FFreeVar var_BC = "": var_D4 = ""
  loc_A7BC98: LitVarStr var_94, "  </tr>"
  loc_A7BC9D: PopAdLdVar
  loc_A7BC9E: FLdPr Me
  loc_A7BCA1: MemLdRfVar from_stack_1.htmFile
  loc_A7BCA4: LdPrVar
  loc_A7BCA6: LateMemCall
  loc_A7BCAC: LitVarStr var_94, "</table>"
  loc_A7BCB1: PopAdLdVar
  loc_A7BCB2: FLdPr Me
  loc_A7BCB5: MemLdRfVar from_stack_1.htmFile
  loc_A7BCB8: LdPrVar
  loc_A7BCBA: LateMemCall
  loc_A7BCC0: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A7BCC5: PopAdLdVar
  loc_A7BCC6: FLdPr Me
  loc_A7BCC9: MemLdRfVar from_stack_1.htmFile
  loc_A7BCCC: LdPrVar
  loc_A7BCCE: LateMemCall
  loc_A7BCD4: LitVarStr var_94, "  <THEAD>"
  loc_A7BCD9: PopAdLdVar
  loc_A7BCDA: FLdPr Me
  loc_A7BCDD: MemLdRfVar from_stack_1.htmFile
  loc_A7BCE0: LdPrVar
  loc_A7BCE2: LateMemCall
  loc_A7BCE8: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A7BCED: PopAdLdVar
  loc_A7BCEE: FLdPr Me
  loc_A7BCF1: MemLdRfVar from_stack_1.htmFile
  loc_A7BCF4: LdPrVar
  loc_A7BCF6: LateMemCall
  loc_A7BCFC: LitVarStr var_94, "    <th rowspan=""2"">Orden de<br>pago N&ordm;</th>"
  loc_A7BD01: PopAdLdVar
  loc_A7BD02: FLdPr Me
  loc_A7BD05: MemLdRfVar from_stack_1.htmFile
  loc_A7BD08: LdPrVar
  loc_A7BD0A: LateMemCall
  loc_A7BD10: LitVarStr var_94, "    <th rowspan=""2"">Expediente</th>"
  loc_A7BD15: PopAdLdVar
  loc_A7BD16: FLdPr Me
  loc_A7BD19: MemLdRfVar from_stack_1.htmFile
  loc_A7BD1C: LdPrVar
  loc_A7BD1E: LateMemCall
  loc_A7BD24: LitVarStr var_94, "    <th rowspan=""2"">Liq.</th>"
  loc_A7BD29: PopAdLdVar
  loc_A7BD2A: FLdPr Me
  loc_A7BD2D: MemLdRfVar from_stack_1.htmFile
  loc_A7BD30: LdPrVar
  loc_A7BD32: LateMemCall
  loc_A7BD38: LitVarStr var_94, "    <th colspan=""3"">Fecha de</th>"
  loc_A7BD3D: PopAdLdVar
  loc_A7BD3E: FLdPr Me
  loc_A7BD41: MemLdRfVar from_stack_1.htmFile
  loc_A7BD44: LdPrVar
  loc_A7BD46: LateMemCall
  loc_A7BD4C: LitVarStr var_94, "    <th rowspan=""2"">Proveedor</th>"
  loc_A7BD51: PopAdLdVar
  loc_A7BD52: FLdPr Me
  loc_A7BD55: MemLdRfVar from_stack_1.htmFile
  loc_A7BD58: LdPrVar
  loc_A7BD5A: LateMemCall
  loc_A7BD60: LitVarStr var_94, "    <th rowspan=""2"">Banco</th>"
  loc_A7BD65: PopAdLdVar
  loc_A7BD66: FLdPr Me
  loc_A7BD69: MemLdRfVar from_stack_1.htmFile
  loc_A7BD6C: LdPrVar
  loc_A7BD6E: LateMemCall
  loc_A7BD74: LitVarStr var_94, "    <th rowspan=""2"">Cheque N&ordm;</th>"
  loc_A7BD79: PopAdLdVar
  loc_A7BD7A: FLdPr Me
  loc_A7BD7D: MemLdRfVar from_stack_1.htmFile
  loc_A7BD80: LdPrVar
  loc_A7BD82: LateMemCall
  loc_A7BD88: LitVarStr var_94, "    <th rowspan=""2"">Importe</th>"
  loc_A7BD8D: PopAdLdVar
  loc_A7BD8E: FLdPr Me
  loc_A7BD91: MemLdRfVar from_stack_1.htmFile
  loc_A7BD94: LdPrVar
  loc_A7BD96: LateMemCall
  loc_A7BD9C: LitVarStr var_94, "  </tr>"
  loc_A7BDA1: PopAdLdVar
  loc_A7BDA2: FLdPr Me
  loc_A7BDA5: MemLdRfVar from_stack_1.htmFile
  loc_A7BDA8: LdPrVar
  loc_A7BDAA: LateMemCall
  loc_A7BDB0: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Encabezado"">"
  loc_A7BDB5: PopAdLdVar
  loc_A7BDB6: FLdPr Me
  loc_A7BDB9: MemLdRfVar from_stack_1.htmFile
  loc_A7BDBC: LdPrVar
  loc_A7BDBE: LateMemCall
  loc_A7BDC4: LitVarStr var_94, "    <th>Emisión</th>"
  loc_A7BDC9: PopAdLdVar
  loc_A7BDCA: FLdPr Me
  loc_A7BDCD: MemLdRfVar from_stack_1.htmFile
  loc_A7BDD0: LdPrVar
  loc_A7BDD2: LateMemCall
  loc_A7BDD8: LitVarStr var_94, "    <th>Remisión</th>"
  loc_A7BDDD: PopAdLdVar
  loc_A7BDDE: FLdPr Me
  loc_A7BDE1: MemLdRfVar from_stack_1.htmFile
  loc_A7BDE4: LdPrVar
  loc_A7BDE6: LateMemCall
  loc_A7BDEC: LitVarStr var_94, "    <th>Pago</th>"
  loc_A7BDF1: PopAdLdVar
  loc_A7BDF2: FLdPr Me
  loc_A7BDF5: MemLdRfVar from_stack_1.htmFile
  loc_A7BDF8: LdPrVar
  loc_A7BDFA: LateMemCall
  loc_A7BE00: LitVarStr var_94, "  </tr>"
  loc_A7BE05: PopAdLdVar
  loc_A7BE06: FLdPr Me
  loc_A7BE09: MemLdRfVar from_stack_1.htmFile
  loc_A7BE0C: LdPrVar
  loc_A7BE0E: LateMemCall
  loc_A7BE14: LitVarStr var_94, "  </THEAD>"
  loc_A7BE19: PopAdLdVar
  loc_A7BE1A: FLdPr Me
  loc_A7BE1D: MemLdRfVar from_stack_1.htmFile
  loc_A7BE20: LdPrVar
  loc_A7BE22: LateMemCall
  loc_A7BE28: ExitProcHresult
End Function

Private Function Proc_176_27_981C10() '981C10
  'Data Table: 4623DC
  loc_981BD0: LitVarStr var_94, "</table>"
  loc_981BD5: PopAdLdVar
  loc_981BD6: FLdPr Me
  loc_981BD9: MemLdRfVar from_stack_1.htmFile
  loc_981BDC: LdPrVar
  loc_981BDE: LateMemCall
  loc_981BE4: LitVarStr var_94, "</body>"
  loc_981BE9: PopAdLdVar
  loc_981BEA: FLdPr Me
  loc_981BED: MemLdRfVar from_stack_1.htmFile
  loc_981BF0: LdPrVar
  loc_981BF2: LateMemCall
  loc_981BF8: LitVarStr var_94, "</html>"
  loc_981BFD: PopAdLdVar
  loc_981BFE: FLdPr Me
  loc_981C01: MemLdRfVar from_stack_1.htmFile
  loc_981C04: LdPrVar
  loc_981C06: LateMemCall
  loc_981C0C: ExitProcHresult
  loc_981C0D: FStStrNoPop var_CC
End Function
