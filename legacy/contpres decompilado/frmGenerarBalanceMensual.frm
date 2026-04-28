VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmGenerarBalanceMensual
  Caption = "Generar Balance Mensual"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmGenerarBalanceMensual.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 14280
  ClientHeight = 7650
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame Frame
    Caption = " Fecha Desde - Hasta "
    Left = 240
    Top = 240
    Width = 7815
    Height = 1095
    TabIndex = 0
    Begin MSMask.MaskEdBox FechCajaDesdeMsk
      Left = 1080
      Top = 480
      Width = 1455
      Height = 360
      TabIndex = 2
      OleObjectBlob = "frmGenerarBalanceMensual.frx":08CA
    End
    Begin MSMask.MaskEdBox FechCajaHastaMsk
      Left = 3840
      Top = 480
      Width = 1455
      Height = 360
      TabIndex = 4
      OleObjectBlob = "frmGenerarBalanceMensual.frx":097A
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 240
      Top = 480
      Width = 765
      Height = 300
      TabIndex = 1
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
    Begin VB.Label Label13
      Caption = "Hasta:"
      Left = 3000
      Top = 480
      Width = 705
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
  End
  Begin MSComctlLib.StatusBar StatusBar
    Left = 0
    Top = 7275
    Width = 14280
    Height = 375
    TabIndex = 8
    OleObjectBlob = "frmGenerarBalanceMensual.frx":0A2A
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 240
    Top = 1560
    Width = 7815
    Height = 495
    Visible = 0   'False
    TabIndex = 5
    OleObjectBlob = "frmGenerarBalanceMensual.frx":0AAA
  End
  Begin VB.CommandButton cmdGenerar
    Caption = "&Generar Balance Mensual"
    Left = 240
    Top = 1560
    Width = 7815
    Height = 495
    TabIndex = 6
  End
  Begin VB.CommandButton cmdSalir
    Left = 8760
    Top = 480
    Width = 855
    Height = 615
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8,25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "frmGenerarBalanceMensual.frx":0B12
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 2160
    Width = 15255
    Height = 4935
    TabIndex = 9
    OleObjectBlob = "frmGenerarBalanceMensual.frx":0D64
  End
End

Attribute VB_Name = "frmGenerarBalanceMensual"


Private Sub dgdABMS_UnknownEvent_0 '9634B8
  'Data Table: 43F338
  loc_9634A0: FLdPr Me
  loc_9634A3: VCallAd Control_ID_dgdABMS
  loc_9634A6: FStAdFunc var_88
  loc_9634A9: FLdRfVar var_88
  loc_9634AC: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_9634B1: FFree1Ad var_88
  loc_9634B4: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '963420
  'Data Table: 43F338
  loc_963408: FLdPr Me
  loc_96340B: VCallAd Control_ID_dgdABMS
  loc_96340E: FStAdFunc var_88
  loc_963411: FLdRfVar var_88
  loc_963414: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_963419: FFree1Ad var_88
  loc_96341C: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999934
  'Data Table: 43F338
  loc_9998D8: FLdRfVar var_B4
  loc_9998DB: FLdRfVar var_B0
  loc_9998DE: FLdI2 ColIndex
  loc_9998E1: CVarI2 var_A8
  loc_9998E4: PopAdLdVar
  loc_9998E5: FLdPr Me
  loc_9998E8: VCallAd Control_ID_dgdABMS
  loc_9998EB: FStAdFunc var_88
  loc_9998EE: FLdPr var_88
  loc_9998F1: LateIdLdVar var_98 DispID_105 0
  loc_9998F8: CastAdVar Me
  loc_9998FC: FStAdFunc var_AC
  loc_9998FF: FLdPr var_AC
  loc_999902: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999907: FLdPr var_B0
  loc_99990A:  = Me.DataField
  loc_99990F: FLdZeroAd var_B4
  loc_999912: PopTmpLdAdStr
  loc_999916: FLdPr Me
  loc_999919: MemLdRfVar from_stack_1.global_52
  loc_99991C: NewIfNullPr clscaja
  loc_99991F: Call clscaja.Sort(from_stack_1v)
  loc_999924: FFree1Str var_B8
  loc_999927: FFreeAd var_88 = "": var_AC = ""
  loc_999930: FFree1Var var_98 = ""
  loc_999933: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9632F0
  'Data Table: 43F338
  loc_9632D8: ILdRf Me
  loc_9632DB: FStAdNoPop
  loc_9632DF: ImpAdLdRf MemVar_C44F9C
  loc_9632E2: NewIfNullPr Me
  loc_9632E5: Me.Global.Unload from_stack_1
  loc_9632EA: FFree1Ad var_88
  loc_9632ED: ExitProcHresult
End Sub

Private Sub cmdGenerar_Click() 'A524FC
  'Data Table: 43F338
  loc_A52254: LitStr vbNullString
  loc_A52257: FLdPr Me
  loc_A5225A: MemStStrCopy
  loc_A5225E: LitI2_Byte 0
  loc_A52260: PopTmpLdAd2 var_8E
  loc_A52263: Call FechCajaDesdeMsk_UnknownEvent_8()
  loc_A52268: FLdPr Me
  loc_A5226B: MemLdStr global_64
  loc_A5226E: LitStr vbNullString
  loc_A52271: NeStr
  loc_A52273: BranchF loc_A52277
  loc_A52276: ExitProcHresult
  loc_A52277: LitI2_Byte 0
  loc_A52279: PopTmpLdAd2 var_8E
  loc_A5227C: Call FechCajaHastaMsk_UnknownEvent_8()
  loc_A52281: FLdPr Me
  loc_A52284: MemLdStr global_64
  loc_A52287: LitStr vbNullString
  loc_A5228A: NeStr
  loc_A5228C: BranchF loc_A52290
  loc_A5228F: ExitProcHresult
  loc_A52290: FLdRfVar var_94
  loc_A52293: ImpAdLdI2 MemVar_C3D064
  loc_A52296: FLdPr Me
  loc_A52299: MemLdRfVar from_stack_1.global_52
  loc_A5229C: NewIfNullPr clscaja
  loc_A5229F: from_stack_2v = clscaja.ValidaParaconta(from_stack_1v)
  loc_A522A4: ILdRf var_94
  loc_A522A7: FLdPr Me
  loc_A522AA: MemStStrCopy
  loc_A522AE: FFree1Str var_94
  loc_A522B1: FLdPr Me
  loc_A522B4: MemLdStr global_64
  loc_A522B7: LitStr vbNullString
  loc_A522BA: NeStr
  loc_A522BC: BranchF loc_A522E2
  loc_A522BF: LitI4 0
  loc_A522C4: FLdPr Me
  loc_A522C7: MemLdStr global_64
  loc_A522CA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A522CF: FLdPr Me
  loc_A522D2: VCallAd Control_ID_FechCajaDesdeMsk
  loc_A522D5: CVarAd
  loc_A522D9: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_A522DE: FFree1Var var_A4 = ""
  loc_A522E1: ExitProcHresult
  loc_A522E2: FLdPr Me
  loc_A522E5: VCallAd Control_ID_FechCajaDesdeMsk
  loc_A522E8: FStAdFunc var_A8
  loc_A522EB: FLdPr var_A8
  loc_A522EE: LateIdLdVar var_A4 DispID_15 0
  loc_A522F5: PopAd
  loc_A522F7: FLdPr Me
  loc_A522FA: VCallAd Control_ID_FechCajaHastaMsk
  loc_A522FD: FStAdFunc var_B0
  loc_A52300: FLdPr var_B0
  loc_A52303: LateIdLdVar var_C0 DispID_15 0
  loc_A5230A: PopAd
  loc_A5230C: LitI2_Byte 0
  loc_A5230E: PopTmpLdAd2 var_D2
  loc_A52311: LitI2_Byte &HFF
  loc_A52313: PopTmpLdAd2 var_8E
  loc_A52316: LitStr "¿Confirma el Cierre Provisorio desde el día "
  loc_A52319: FLdRfVar var_A4
  loc_A5231C: CStrVarTmp
  loc_A5231D: FStStrNoPop var_94
  loc_A52320: ConcatStr
  loc_A52321: FStStrNoPop var_AC
  loc_A52324: LitStr " hasta "
  loc_A52327: ConcatStr
  loc_A52328: FStStrNoPop var_C4
  loc_A5232B: FLdRfVar var_C0
  loc_A5232E: CStrVarTmp
  loc_A5232F: FStStrNoPop var_C8
  loc_A52332: ConcatStr
  loc_A52333: FStStrNoPop var_CC
  loc_A52336: LitStr " ?"
  loc_A52339: ConcatStr
  loc_A5233A: FStStrNoPop var_D0
  loc_A5233D: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_A52342: CI4UI1
  loc_A52343: LitI4 6
  loc_A52348: EqI4
  loc_A52349: FFreeStr var_94 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A52358: FFreeAd var_A8 = ""
  loc_A5235F: FFreeVar var_A4 = ""
  loc_A52366: BranchF loc_A524F9
  loc_A52369: ILdRf Me
  loc_A5236C: CastAd
  loc_A5236F: FStAdFunc var_A8
  loc_A52372: FLdRfVar var_A8
  loc_A52375: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A5237A: FFree1Ad var_A8
  loc_A5237D: Call Proc_117_15_99C820()
  loc_A52382: Call Proc_117_17_B9BC64()
  loc_A52387: FLdPr Me
  loc_A5238A: MemLdStr global_64
  loc_A5238D: LitStr vbNullString
  loc_A52390: NeStr
  loc_A52392: BranchF loc_A523A6
  loc_A52395: LitI4 0
  loc_A5239A: LitStr "Corrija las advertencias y repita el proceso..."
  loc_A5239D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A523A2: ExitProcHresult
  loc_A523A3: Branch loc_A523D4
  loc_A523A6: FLdPr Me
  loc_A523A9: VCallAd Control_ID_FechCajaHastaMsk
  loc_A523AC: FStAdFunc var_A8
  loc_A523AF: FLdPr var_A8
  loc_A523B2: LateIdLdVar var_A4 DispID_15 0
  loc_A523B9: CStrVarTmp
  loc_A523BA: FStStrNoPop var_94
  loc_A523BD: FLdPr Me
  loc_A523C0: MemLdRfVar from_stack_1.global_52
  loc_A523C3: NewIfNullPr clscaja
  loc_A523C6: Call clscaja.IncrementaFeproPaco(from_stack_1v)
  loc_A523CB: FFree1Str var_94
  loc_A523CE: FFree1Ad var_A8
  loc_A523D1: FFree1Var var_A4 = ""
  loc_A523D4: LitI2_Byte 0
  loc_A523D6: FLdPr Me
  loc_A523D9: MemStI2 global_68
  loc_A523DC: LitI2_Byte 0
  loc_A523DE: FLdPr Me
  loc_A523E1: MemStI2 global_70
  loc_A523E4: FLdRfVar var_94
  loc_A523E7: Call Proc_117_18_C3C1F0()
  loc_A523EC: ILdRf var_94
  loc_A523EF: FLdPr Me
  loc_A523F2: MemStStrCopy
  loc_A523F6: FFree1Str var_94
  loc_A523F9: LitVar_FALSE
  loc_A523FD: PopAdLdVar
  loc_A523FE: FLdPr Me
  loc_A52401: VCallAd Control_ID_ProgressBar
  loc_A52404: FStAdFunc var_A8
  loc_A52407: FLdPr var_A8
  loc_A5240A: LateIdSt
  loc_A5240F: FFree1Ad var_A8
  loc_A52412: FLdPr Me
  loc_A52415: MemLdStr global_64
  loc_A52418: LitStr vbNullString
  loc_A5241B: NeStr
  loc_A5241D: BranchF loc_A52431
  loc_A52420: LitI4 0
  loc_A52425: FLdPr Me
  loc_A52428: MemLdStr global_64
  loc_A5242B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A52430: ExitProcHresult
  loc_A52431: FLdPr Me
  loc_A52434: MemLdI2 global_68
  loc_A52437: LitI2_Byte 0
  loc_A52439: GtI2
  loc_A5243A: BranchF loc_A5248E
  loc_A5243D: LitI4 0
  loc_A52442: LitStr "Se crearon los Asientos DESDE: "
  loc_A52445: FLdPr Me
  loc_A52448: MemLdI2 global_68
  loc_A5244B: CStrUI1
  loc_A5244D: FStStrNoPop var_94
  loc_A52450: ConcatStr
  loc_A52451: FStStrNoPop var_AC
  loc_A52454: LitStr " - HASTA: "
  loc_A52457: ConcatStr
  loc_A52458: FStStrNoPop var_C4
  loc_A5245B: FLdPr Me
  loc_A5245E: MemLdI2 global_70
  loc_A52461: CStrUI1
  loc_A52463: FStStrNoPop var_C8
  loc_A52466: ConcatStr
  loc_A52467: FStStrNoPop var_CC
  loc_A5246A: LitStr vbCrLf
  loc_A5246D: ConcatStr
  loc_A5246E: FStStrNoPop var_D0
  loc_A52471: LitStr "Comienzan los controles mensuales..."
  loc_A52474: ConcatStr
  loc_A52475: FStStrNoPop var_F8
  loc_A52478: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5247D: FFreeStr var_94 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A5248E: FLdPr Me
  loc_A52491: VCallAd Control_ID_FechCajaHastaMsk
  loc_A52494: FStAdFunc var_A8
  loc_A52497: FLdPr var_A8
  loc_A5249A: LateIdLdVar var_A4 DispID_15 0
  loc_A524A1: PopAd
  loc_A524A3: LitI4 1
  loc_A524A8: LitI4 1
  loc_A524AD: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_A524B2: FStVarCopyObj var_108
  loc_A524B5: FLdRfVar var_108
  loc_A524B8: FLdRfVar var_A4
  loc_A524BB: CStrVarTmp
  loc_A524BC: CVarStr var_C0
  loc_A524BF: ImpAdCallI2 Format$(, )
  loc_A524C4: FStStr var_AC
  loc_A524C7: FLdRfVar var_8E
  loc_A524CA: FLdZeroAd var_AC
  loc_A524CD: FStStrNoPop var_94
  loc_A524D0: ImpAdLdI2 MemVar_C3D064
  loc_A524D3: FLdPr Me
  loc_A524D6: MemLdRfVar from_stack_1.global_52
  loc_A524D9: NewIfNullPr clscaja
  loc_A524DC: from_stack_3v = clscaja.ControlesMensuales(from_stack_1v, from_stack_2v)
  loc_A524E1: FFreeStr var_94 = ""
  loc_A524E8: FFree1Ad var_A8
  loc_A524EB: FFreeVar var_A4 = "": var_C0 = ""
  loc_A524F4: Call Proc_117_16_A37AD0()
  loc_A524F9: ExitProcHresult
  loc_A524FA: ILdPr
End Sub

Private Sub Form_Load() '970F98
  'Data Table: 43F338
  loc_970F6C: LitStr "Recordatorio..."
  loc_970F6F: LitStr "Próximamente ésta pantalla pasará al sistema >> INFOGOV 3 <<"
  loc_970F72: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_970F77: LitI2_Byte 0
  loc_970F79: CR8I2
  loc_970F7A: PopFPR4
  loc_970F7B: FLdPr Me
  loc_970F7E: Me.Left = from_stack_1s
  loc_970F83: LitI2_Byte 0
  loc_970F85: CR8I2
  loc_970F86: PopFPR4
  loc_970F87: FLdPr Me
  loc_970F8A: Me.Top = from_stack_1s
  loc_970F8F: Call Proc_117_16_A37AD0()
  loc_970F94: ExitProcHresult
  loc_970F95: CVarI2 Form_Load24
End Sub

Private Sub Form_Activate() '940710
  'Data Table: 43F338
  loc_940708: Call Proc_117_16_A37AD0()
  loc_94070D: ExitProcHresult
  loc_94070E: BranchFVar
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '948704
  'Data Table: 43F338
  loc_9486F0: ILdI2 KeyAscii
  loc_9486F3: CI4UI1
  loc_9486F4: LitI4 &HD
  loc_9486F9: EqI4
  loc_9486FA: BranchF loc_948702
  loc_9486FD: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_948702: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '96F468
  'Data Table: 43F338
  loc_96F444: ILdI2 KeyCode
  loc_96F447: CI4UI1
  loc_96F448: LitI4 &H78
  loc_96F44D: EqI4
  loc_96F44E: BranchF loc_96F466
  loc_96F451: ILdRf Me
  loc_96F454: FStAdNoPop
  loc_96F458: ImpAdLdRf MemVar_C44F9C
  loc_96F45B: NewIfNullPr Me
  loc_96F45E: Me.Global.Unload from_stack_1
  loc_96F463: FFree1Ad var_88
  loc_96F466: ExitProcHresult
End Sub

Private Sub FechCajaDesdeMsk_UnknownEvent_0 '94E0A8
  'Data Table: 43F338
  loc_94E094: FLdPr Me
  loc_94E097: VCallAd Control_ID_FechCajaDesdeMsk
  loc_94E09A: CVarAd
  loc_94E09E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E0A3: FFree1Var var_94 = ""
  loc_94E0A6: ExitProcHresult
End Sub

Private Sub FechCajaDesdeMsk_UnknownEvent_8 '9F8520
  'Data Table: 43F338
  loc_9F83E4: FLdPr Me
  loc_9F83E7: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9F83EA: FStAdFunc var_88
  loc_9F83ED: FLdPr var_88
  loc_9F83F0: LateIdLdVar var_98 DispID_13 -32767
  loc_9F83F7: CBoolVar
  loc_9F83F9: FFree1Ad var_88
  loc_9F83FC: FFree1Var var_98 = ""
  loc_9F83FF: BranchF loc_9F851C
  loc_9F8402: FLdPr Me
  loc_9F8405: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9F8408: FStAdFunc var_88
  loc_9F840B: FLdPr var_88
  loc_9F840E: LateIdLdVar var_98 DispID_15 0
  loc_9F8415: PopAd
  loc_9F8417: FLdPr Me
  loc_9F841A: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9F841D: FStAdFunc var_AC
  loc_9F8420: LitI2_Byte &HFF
  loc_9F8422: PopTmpLdAd2 var_A2
  loc_9F8425: FLdZeroAd var_AC
  loc_9F8428: FStAdFunc var_A0
  loc_9F842B: FLdRfVar var_A0
  loc_9F842E: LitStr "01/01/2018"
  loc_9F8431: LitI2_Byte &HFF
  loc_9F8433: LitI2_Byte &HFF
  loc_9F8435: FLdRfVar var_98
  loc_9F8438: CStrVarTmp
  loc_9F8439: FStStrNoPop var_9C
  loc_9F843C: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9F8441: FStStrNoPop var_A8
  loc_9F8444: FLdPr Me
  loc_9F8447: MemStStrCopy
  loc_9F844B: FFreeStr var_9C = ""
  loc_9F8452: FFreeAd var_88 = "": var_A0 = ""
  loc_9F845B: FFree1Var var_98 = ""
  loc_9F845E: FLdPr Me
  loc_9F8461: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9F8464: FStAdFunc var_B0
  loc_9F8467: LitNothing
  loc_9F8469: CastAd
  loc_9F846C: FStAdFunc var_AC
  loc_9F846F: FLdRfVar var_AC
  loc_9F8472: FLdZeroAd var_B0
  loc_9F8475: FStAdFuncNoPop
  loc_9F8478: CastAd
  loc_9F847B: FStAdFunc var_A0
  loc_9F847E: FLdRfVar var_A0
  loc_9F8481: FLdPr Me
  loc_9F8484: MemLdRfVar from_stack_1.global_64
  loc_9F8487: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F848C: IStI2 KeyCode
  loc_9F848F: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9F849A: ILdI2 KeyCode
  loc_9F849D: NotI4
  loc_9F849E: BranchF loc_9F851C
  loc_9F84A1: FLdRfVar var_A8
  loc_9F84A4: FLdPr Me
  loc_9F84A7: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9F84AA: FStAdFunc var_88
  loc_9F84AD: FLdPr var_88
  loc_9F84B0: LateIdLdVar var_98 DispID_15 0
  loc_9F84B7: CStrVarTmp
  loc_9F84B8: FStStrNoPop var_9C
  loc_9F84BB: FLdPr Me
  loc_9F84BE: MemLdRfVar from_stack_1.global_52
  loc_9F84C1: NewIfNullPr clscaja
  loc_9F84C4: from_stack_2v = clscaja.ValidaFechCajaCierreDefinitivo(from_stack_1v)
  loc_9F84C9: ILdRf var_A8
  loc_9F84CC: FLdPr Me
  loc_9F84CF: MemStStrCopy
  loc_9F84D3: FFreeStr var_9C = ""
  loc_9F84DA: FFree1Ad var_88
  loc_9F84DD: FFree1Var var_98 = ""
  loc_9F84E0: FLdPr Me
  loc_9F84E3: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9F84E6: FStAdFunc var_B0
  loc_9F84E9: LitNothing
  loc_9F84EB: CastAd
  loc_9F84EE: FStAdFunc var_AC
  loc_9F84F1: FLdRfVar var_AC
  loc_9F84F4: FLdZeroAd var_B0
  loc_9F84F7: FStAdFuncNoPop
  loc_9F84FA: CastAd
  loc_9F84FD: FStAdFunc var_A0
  loc_9F8500: FLdRfVar var_A0
  loc_9F8503: FLdPr Me
  loc_9F8506: MemLdRfVar from_stack_1.global_64
  loc_9F8509: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F850E: IStI2 KeyCode
  loc_9F8511: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9F851C: ExitProcHresult
End Sub

Private Sub FechCajaDesdeMsk_KeyPress(KeyAscii As Integer) '98C3B0
  'Data Table: 43F338
  loc_98C36C: ILdI2 KeyAscii
  loc_98C36F: CI4UI1
  loc_98C370: LitI4 &H20
  loc_98C375: EqI4
  loc_98C376: BranchF loc_98C3AC
  loc_98C379: LitVar_Missing var_A4
  loc_98C37C: PopAdLdVar
  loc_98C37D: LitVarI4
  loc_98C385: PopAdLdVar
  loc_98C386: ImpAdLdRf MemVar_C3D9A8
  loc_98C389: NewIfNullPr frmCalendario
  loc_98C38C: frmCalendario.Show from_stack_1, from_stack_2
  loc_98C391: ImpAdLdRf MemVar_C3D038
  loc_98C394: CDargRef
  loc_98C398: FLdPr Me
  loc_98C39B: VCallAd Control_ID_FechCajaDesdeMsk
  loc_98C39E: FStAdFunc var_A8
  loc_98C3A1: FLdPr var_A8
  loc_98C3A4: LateIdSt
  loc_98C3A9: FFree1Ad var_A8
  loc_98C3AC: ExitProcHresult
  loc_98C3AD: ThisVCallUI1
End Sub

Private Sub FechCajaHastaMsk_UnknownEvent_0 '9FEA3C
  'Data Table: 43F338
  loc_9FE908: FLdPr Me
  loc_9FE90B: VCallAd Control_ID_FechCajaHastaMsk
  loc_9FE90E: FStAdFunc var_C4
  loc_9FE911: FLdPr var_C4
  loc_9FE914: LateIdLdVar var_D4 DispID_15 0
  loc_9FE91B: PopAd
  loc_9FE91D: FLdPr Me
  loc_9FE920: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9FE923: FStAdFunc var_88
  loc_9FE926: FLdPr var_88
  loc_9FE929: LateIdLdVar var_98 DispID_15 0
  loc_9FE930: CStrVarTmp
  loc_9FE931: CVarStr var_A8
  loc_9FE934: ImpAdCallI2 IsDate()
  loc_9FE939: FLdPr Me
  loc_9FE93C: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9FE93F: FStAdFunc var_AC
  loc_9FE942: FLdPr var_AC
  loc_9FE945: LateIdLdVar var_BC DispID_15 0
  loc_9FE94C: CStrVarTmp
  loc_9FE94D: FStStrNoPop var_C0
  loc_9FE950: CDateStr
  loc_9FE952: FLdRfVar var_D4
  loc_9FE955: CStrVarTmp
  loc_9FE956: FStStrNoPop var_D8
  loc_9FE959: CDateStr
  loc_9FE95B: GtR4
  loc_9FE95C: AndI4
  loc_9FE95D: FFreeStr var_C0 = ""
  loc_9FE964: FFreeAd var_88 = "": var_AC = ""
  loc_9FE96D: FFreeVar var_98 = "": var_A8 = "": var_BC = ""
  loc_9FE978: BranchF loc_9FE9B5
  loc_9FE97B: FLdPr Me
  loc_9FE97E: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9FE981: FStAdFunc var_88
  loc_9FE984: FLdPr var_88
  loc_9FE987: LateIdLdVar var_98 DispID_22 0
  loc_9FE98E: CStrVarTmp
  loc_9FE98F: CVarStr var_A8
  loc_9FE992: PopAdLdVar
  loc_9FE993: FLdPr Me
  loc_9FE996: VCallAd Control_ID_FechCajaHastaMsk
  loc_9FE999: FStAdFunc var_AC
  loc_9FE99C: FLdPr var_AC
  loc_9FE99F: LateIdSt
  loc_9FE9A4: FFreeAd var_88 = ""
  loc_9FE9AB: FFreeVar var_98 = ""
  loc_9FE9B2: Branch loc_9FEA26
  loc_9FE9B5: FLdPr Me
  loc_9FE9B8: VCallAd Control_ID_FechCajaDesdeMsk
  loc_9FE9BB: FStAdFunc var_88
  loc_9FE9BE: FLdPr var_88
  loc_9FE9C1: LateIdLdVar var_98 DispID_15 0
  loc_9FE9C8: CStrVarTmp
  loc_9FE9C9: CVarStr var_A8
  loc_9FE9CC: FLdRfVar var_BC
  loc_9FE9CF: ImpAdCallFPR4  = Month()
  loc_9FE9D4: LitI2_Byte 1
  loc_9FE9D6: FLdRfVar var_BC
  loc_9FE9D9: LitVarI2 var_E8, 1
  loc_9FE9DE: AddVar var_D4
  loc_9FE9E2: CI2Var
  loc_9FE9E3: ImpAdLdI2 MemVar_C3D064
  loc_9FE9E6: FLdRfVar var_F8
  loc_9FE9E9: ImpAdCallFPR4  = DateSerial(, , )
  loc_9FE9EE: FLdRfVar var_F8
  loc_9FE9F1: LitVarI2 var_108, 1
  loc_9FE9F6: SubVar var_118
  loc_9FE9FA: CStrVarTmp
  loc_9FE9FB: CVarStr var_128
  loc_9FE9FE: PopAdLdVar
  loc_9FE9FF: FLdPr Me
  loc_9FEA02: VCallAd Control_ID_FechCajaHastaMsk
  loc_9FEA05: FStAdFunc var_AC
  loc_9FEA08: FLdPr var_AC
  loc_9FEA0B: LateIdSt
  loc_9FEA10: FFreeAd var_88 = ""
  loc_9FEA17: FFreeVar var_98 = "": var_A8 = "": var_BC = "": var_D4 = "": var_F8 = ""
  loc_9FEA26: FLdPr Me
  loc_9FEA29: VCallAd Control_ID_FechCajaHastaMsk
  loc_9FEA2C: CVarAd
  loc_9FEA30: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9FEA35: FFree1Var var_98 = ""
  loc_9FEA38: ExitProcHresult
End Sub

Private Sub FechCajaHastaMsk_UnknownEvent_8 'A24668
  'Data Table: 43F338
  loc_A244D0: FLdPr Me
  loc_A244D3: VCallAd Control_ID_FechCajaHastaMsk
  loc_A244D6: FStAdFunc var_88
  loc_A244D9: FLdPr var_88
  loc_A244DC: LateIdLdVar var_98 DispID_13 -32767
  loc_A244E3: CBoolVar
  loc_A244E5: FFree1Ad var_88
  loc_A244E8: FFree1Var var_98 = ""
  loc_A244EB: BranchF loc_A24666
  loc_A244EE: FLdPr Me
  loc_A244F1: VCallAd Control_ID_FechCajaHastaMsk
  loc_A244F4: FStAdFunc var_88
  loc_A244F7: FLdPr var_88
  loc_A244FA: LateIdLdVar var_98 DispID_15 0
  loc_A24501: PopAd
  loc_A24503: FLdPr Me
  loc_A24506: VCallAd Control_ID_FechCajaDesdeMsk
  loc_A24509: FStAdFunc var_9C
  loc_A2450C: FLdPr var_9C
  loc_A2450F: LateIdLdVar var_AC DispID_15 0
  loc_A24516: PopAd
  loc_A24518: FLdPr Me
  loc_A2451B: VCallAd Control_ID_FechCajaHastaMsk
  loc_A2451E: FStAdFunc var_C4
  loc_A24521: LitI2_Byte &HFF
  loc_A24523: PopTmpLdAd2 var_BA
  loc_A24526: FLdZeroAd var_C4
  loc_A24529: FStAdFunc var_B8
  loc_A2452C: FLdRfVar var_B8
  loc_A2452F: FLdRfVar var_AC
  loc_A24532: CStrVarTmp
  loc_A24533: FStStrNoPop var_B4
  loc_A24536: LitI2_Byte &HFF
  loc_A24538: LitI2_Byte &HFF
  loc_A2453A: FLdRfVar var_98
  loc_A2453D: CStrVarTmp
  loc_A2453E: FStStrNoPop var_B0
  loc_A24541: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A24546: FStStrNoPop var_C0
  loc_A24549: FLdPr Me
  loc_A2454C: MemStStrCopy
  loc_A24550: FFreeStr var_B0 = "": var_B4 = ""
  loc_A24559: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_A24564: FFreeVar var_98 = ""
  loc_A2456B: FLdPr Me
  loc_A2456E: VCallAd Control_ID_FechCajaHastaMsk
  loc_A24571: FStAdFunc var_C4
  loc_A24574: LitNothing
  loc_A24576: CastAd
  loc_A24579: FStAdFunc var_B8
  loc_A2457C: FLdRfVar var_B8
  loc_A2457F: FLdZeroAd var_C4
  loc_A24582: FStAdFuncNoPop
  loc_A24585: CastAd
  loc_A24588: FStAdFunc var_9C
  loc_A2458B: FLdRfVar var_9C
  loc_A2458E: FLdPr Me
  loc_A24591: MemLdRfVar from_stack_1.global_64
  loc_A24594: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A24599: IStI2 KeyAscii
  loc_A2459C: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_A245A7: ILdI2 KeyAscii
  loc_A245AA: NotI4
  loc_A245AB: BranchF loc_A24666
  loc_A245AE: FLdPr Me
  loc_A245B1: VCallAd Control_ID_FechCajaHastaMsk
  loc_A245B4: FStAdFunc var_88
  loc_A245B7: FLdPr var_88
  loc_A245BA: LateIdLdVar var_98 DispID_15 0
  loc_A245C1: CStrVarTmp
  loc_A245C2: FStStrNoPop var_B0
  loc_A245C5: CDateStr
  loc_A245C7: CVarDate var_AC
  loc_A245CB: FLdRfVar var_E4
  loc_A245CE: ImpAdCallFPR4  = Month()
  loc_A245D3: FLdRfVar var_E4
  loc_A245D6: FLdPr Me
  loc_A245D9: VCallAd Control_ID_FechCajaDesdeMsk
  loc_A245DC: FStAdFunc var_9C
  loc_A245DF: FLdPr var_9C
  loc_A245E2: LateIdLdVar var_F4 DispID_15 0
  loc_A245E9: CStrVarTmp
  loc_A245EA: FStStrNoPop var_B4
  loc_A245ED: CDateStr
  loc_A245EF: CVarDate var_114
  loc_A245F3: FLdRfVar var_124
  loc_A245F6: ImpAdCallFPR4  = Month()
  loc_A245FB: FLdRfVar var_124
  loc_A245FE: NeVarBool
  loc_A24600: FFreeStr var_B0 = ""
  loc_A24607: FFreeAd var_88 = ""
  loc_A2460E: FFreeVar var_98 = "": var_AC = "": var_F4 = "": var_114 = "": var_E4 = ""
  loc_A2461D: BranchF loc_A24666
  loc_A24620: LitStr "La fecha hasta debe ser del mismo mes. Verifique..."
  loc_A24623: FLdPr Me
  loc_A24626: MemStStrCopy
  loc_A2462A: FLdPr Me
  loc_A2462D: VCallAd Control_ID_FechCajaHastaMsk
  loc_A24630: FStAdFunc var_C4
  loc_A24633: LitNothing
  loc_A24635: CastAd
  loc_A24638: FStAdFunc var_B8
  loc_A2463B: FLdRfVar var_B8
  loc_A2463E: FLdZeroAd var_C4
  loc_A24641: FStAdFuncNoPop
  loc_A24644: CastAd
  loc_A24647: FStAdFunc var_9C
  loc_A2464A: FLdRfVar var_9C
  loc_A2464D: FLdPr Me
  loc_A24650: MemLdRfVar from_stack_1.global_64
  loc_A24653: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A24658: IStI2 KeyAscii
  loc_A2465B: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_A24666: ExitProcHresult
End Sub

Private Sub FechCajaHastaMsk_KeyPress(KeyAscii As Integer) '98B528
  'Data Table: 43F338
  loc_98B4E4: ILdI2 KeyAscii
  loc_98B4E7: CI4UI1
  loc_98B4E8: LitI4 &H20
  loc_98B4ED: EqI4
  loc_98B4EE: BranchF loc_98B524
  loc_98B4F1: LitVar_Missing var_A4
  loc_98B4F4: PopAdLdVar
  loc_98B4F5: LitVarI4
  loc_98B4FD: PopAdLdVar
  loc_98B4FE: ImpAdLdRf MemVar_C3D9A8
  loc_98B501: NewIfNullPr frmCalendario
  loc_98B504: frmCalendario.Show from_stack_1, from_stack_2
  loc_98B509: ImpAdLdRf MemVar_C3D038
  loc_98B50C: CDargRef
  loc_98B510: FLdPr Me
  loc_98B513: VCallAd Control_ID_FechCajaHastaMsk
  loc_98B516: FStAdFunc var_A8
  loc_98B519: FLdPr var_A8
  loc_98B51C: LateIdSt
  loc_98B521: FFree1Ad var_A8
  loc_98B524: ExitProcHresult
End Sub

Private Function Proc_117_15_99C820() '99C820
  'Data Table: 43F338
  loc_99C7B8: LitI4 0
  loc_99C7BD: LitI4 0
  loc_99C7C2: FLdRfVar var_88
  loc_99C7C5: Redim
  loc_99C7CF: FLdPr Me
  loc_99C7D2: VCallAd Control_ID_dgdABMS
  loc_99C7D5: CVarAd
  loc_99C7D9: ParmAry1St
  loc_99C7DF: FLdRfVar var_88
  loc_99C7E2: ImpAdCallFPR4 Proc_261_9_980B4C()
  loc_99C7E7: FLdRfVar var_88
  loc_99C7EA: Erase
  loc_99C7EB: LitI4 0
  loc_99C7F0: LitI4 0
  loc_99C7F5: FLdRfVar var_88
  loc_99C7F8: Redim
  loc_99C802: FLdPr Me
  loc_99C805: VCallAd Control_ID_dgdABMS
  loc_99C808: CVarAd
  loc_99C80C: ParmAry1St
  loc_99C812: FLdRfVar var_88
  loc_99C815: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_99C81A: FLdRfVar var_88
  loc_99C81D: Erase
  loc_99C81E: ExitProcHresult
End Function

Private Function Proc_117_16_A37AD0() 'A37AD0
  'Data Table: 43F338
  loc_A378DC: ILdRf Me
  loc_A378DF: CastAd
  loc_A378E2: FStAdFunc var_88
  loc_A378E5: FLdRfVar var_88
  loc_A378E8: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_A378ED: FFree1Ad var_88
  loc_A378F0: FLdRfVar var_8C
  loc_A378F3: FLdPr Me
  loc_A378F6: MemLdRfVar from_stack_1.global_52
  loc_A378F9: NewIfNullPr clscaja
  loc_A378FC: from_stack_1v = clscaja.UltimoCierreProvisorio()
  loc_A37901: FLdZeroAd var_8C
  loc_A37904: CVarStr var_9C
  loc_A37907: PopAdLdVar
  loc_A37908: FLdPr Me
  loc_A3790B: VCallAd Control_ID_FechCajaDesdeMsk
  loc_A3790E: FStAdFunc var_88
  loc_A37911: FLdPr var_88
  loc_A37914: LateIdSt
  loc_A37919: FFree1Ad var_88
  loc_A3791C: FFree1Var var_9C = ""
  loc_A3791F: FLdRfVar var_8C
  loc_A37922: FLdPr Me
  loc_A37925: MemLdRfVar from_stack_1.global_52
  loc_A37928: NewIfNullPr clscaja
  loc_A3792B: from_stack_1v = clscaja.UltimoCierreProvisorio()
  loc_A37930: FLdZeroAd var_8C
  loc_A37933: CVarStr var_9C
  loc_A37936: PopAdLdVar
  loc_A37937: FLdPr Me
  loc_A3793A: VCallAd Control_ID_FechCajaHastaMsk
  loc_A3793D: FStAdFunc var_88
  loc_A37940: FLdPr var_88
  loc_A37943: LateIdSt
  loc_A37948: FFree1Ad var_88
  loc_A3794B: FFree1Var var_9C = ""
  loc_A3794E: FLdPr Me
  loc_A37951: VCallAd Control_ID_FechCajaDesdeMsk
  loc_A37954: CVarAd
  loc_A37958: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_A3795D: FFree1Var var_9C = ""
  loc_A37960: FLdPr Me
  loc_A37963: VCallAd Control_ID_FechCajaDesdeMsk
  loc_A37966: FStAdFunc var_88
  loc_A37969: FLdPr var_88
  loc_A3796C: LateIdLdVar var_9C DispID_15 0
  loc_A37973: CStrVarTmp
  loc_A37974: CVarStr var_BC
  loc_A37977: FLdRfVar var_CC
  loc_A3797A: ImpAdCallFPR4  = Year()
  loc_A3797F: FLdRfVar var_CC
  loc_A37982: ImpAdLdI2 MemVar_C3D064
  loc_A37985: CVarI2 var_AC
  loc_A37988: HardType
  loc_A37989: GtVarBool
  loc_A3798B: FFree1Ad var_88
  loc_A3798E: FFreeVar var_9C = "": var_BC = ""
  loc_A37997: BranchF loc_A379ED
  loc_A3799A: LitI4 0
  loc_A3799F: LitI4 2
  loc_A379A4: FLdRfVar var_E0
  loc_A379A7: Redim
  loc_A379B1: FLdPr Me
  loc_A379B4: VCallAd Control_ID_FechCajaDesdeMsk
  loc_A379B7: CVarAd
  loc_A379BB: ParmAry1St
  loc_A379C1: FLdPr Me
  loc_A379C4: VCallAd Control_ID_FechCajaHastaMsk
  loc_A379C7: CVarAd
  loc_A379CB: ParmAry1St
  loc_A379D1: FLdPr Me
  loc_A379D4: VCallAd Control_ID_cmdGenerar
  loc_A379D7: CVarAd
  loc_A379DB: ParmAry1St
  loc_A379E1: FLdRfVar var_E0
  loc_A379E4: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A379E9: FLdRfVar var_E0
  loc_A379EC: Erase
  loc_A379ED: LitStr "SELECT detactrl.*, DetaCtrl, Imp1Dect-Imp2Dect diferencia, IF(TituDect=1,if(imp1dect<>imp2dect,if(ErroCtrl=0,'Advertencia','ERROR'),'OK'),'detalle') resultado"
  loc_A379F0: LitStr " FROM detactrl"
  loc_A379F3: ConcatStr
  loc_A379F4: FStStrNoPop var_8C
  loc_A379F7: LitStr " INNER JOIN ctrl ON ctrl.CodiCtrl = detactrl.CodiCtrl"
  loc_A379FA: ConcatStr
  loc_A379FB: FStStrNoPop var_E4
  loc_A379FE: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = detactrl.PeriInfo"
  loc_A37A01: ConcatStr
  loc_A37A02: FStStrNoPop var_E8
  loc_A37A05: LitStr " WHERE detactrl.PeriInfo = "
  loc_A37A08: ConcatStr
  loc_A37A09: FStStrNoPop var_EC
  loc_A37A0C: ImpAdLdI2 MemVar_C3D064
  loc_A37A0F: CStrUI1
  loc_A37A11: FStStrNoPop var_F0
  loc_A37A14: ConcatStr
  loc_A37A15: FStStrNoPop var_F4
  loc_A37A18: LitStr " AND IF(FedePaco IS NULL, TRUE, FechDect > FedePaco)"
  loc_A37A1B: ConcatStr
  loc_A37A1C: FStStrNoPop var_F8
  loc_A37A1F: FLdPr Me
  loc_A37A22: MemLdRfVar from_stack_1.global_52
  loc_A37A25: NewIfNullPr clscaja
  loc_A37A28: Call clscaja.RedefineRS(from_stack_1v)
  loc_A37A2D: FFreeStr var_8C = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_A37A3E: LitI4 0
  loc_A37A43: LitI4 0
  loc_A37A48: FLdRfVar var_E0
  loc_A37A4B: Redim
  loc_A37A55: FLdPr Me
  loc_A37A58: VCallAd Control_ID_dgdABMS
  loc_A37A5B: CVarAd
  loc_A37A5F: ParmAry1St
  loc_A37A65: FLdRfVar var_E0
  loc_A37A68: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A37A6D: FLdRfVar var_E0
  loc_A37A70: Erase
  loc_A37A71: LitI4 0
  loc_A37A76: LitI4 1
  loc_A37A7B: FLdRfVar var_E0
  loc_A37A7E: Redim
  loc_A37A88: FLdPr Me
  loc_A37A8B: MemLdRfVar from_stack_1.global_52
  loc_A37A8E: NewIfNullAd
  loc_A37A91: FStAd var_88 
  loc_A37A95: FLdRfVar var_88
  loc_A37A98: CVarRef
  loc_A37A9D: ParmAry1St
  loc_A37AA3: FLdPr Me
  loc_A37AA6: VCallAd Control_ID_dgdABMS
  loc_A37AA9: CVarAd
  loc_A37AAD: ParmAry1St
  loc_A37AB3: FLdRfVar var_E0
  loc_A37AB6: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A37ABB: ILdRf var_88
  loc_A37ABE: CastAd
  loc_A37AC1: FLdPr Me
  loc_A37AC4: MemStAdFunc
  loc_A37AC8: FLdRfVar var_E0
  loc_A37ACB: Erase
  loc_A37ACC: FFree1Ad var_88
  loc_A37ACF: ExitProcHresult
End Function

Private Function Proc_117_17_B9BC64() 'B9BC64
  'Data Table: 43F338
  loc_B9AD64: LitI4 &HB
  loc_B9AD69: CI2I4
  loc_B9AD6A: FLdPr Me
  loc_B9AD6D: Me.MousePointer = from_stack_1
  loc_B9AD72: LitVar_TRUE var_94
  loc_B9AD75: PopAdLdVar
  loc_B9AD76: FLdPr Me
  loc_B9AD79: VCallAd Control_ID_ProgressBar
  loc_B9AD7C: FStAdFunc var_A8
  loc_B9AD7F: FLdPr var_A8
  loc_B9AD82: LateIdSt
  loc_B9AD87: FFree1Ad var_A8
  loc_B9AD8A: FLdPr Me
  loc_B9AD8D: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9AD90: FStAdFunc var_A8
  loc_B9AD93: FLdPr var_A8
  loc_B9AD96: LateIdLdVar var_B8 DispID_15 0
  loc_B9AD9D: PopAd
  loc_B9AD9F: FLdPr Me
  loc_B9ADA2: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9ADA5: FStAdFunc var_BC
  loc_B9ADA8: FLdPr var_BC
  loc_B9ADAB: LateIdLdVar var_CC DispID_15 0
  loc_B9ADB2: PopAd
  loc_B9ADB4: FLdRfVar var_D8
  loc_B9ADB7: FLdRfVar var_CC
  loc_B9ADBA: CStrVarTmp
  loc_B9ADBB: FStStrNoPop var_D4
  loc_B9ADBE: FLdRfVar var_B8
  loc_B9ADC1: CStrVarTmp
  loc_B9ADC2: FStStrNoPop var_D0
  loc_B9ADC5: FLdPr Me
  loc_B9ADC8: MemLdRfVar from_stack_1.global_52
  loc_B9ADCB: NewIfNullPr clscaja
  loc_B9ADCE: from_stack_3v = clscaja.SeteaFecha(from_stack_1v, from_stack_2v)
  loc_B9ADD3: FFreeStr var_D0 = "": var_D4 = ""
  loc_B9ADDC: FFreeAd var_A8 = ""
  loc_B9ADE3: FFreeVar var_B8 = ""
  loc_B9ADEA: LitStr "Generando Subdiario de Recaudación desde el "
  loc_B9ADED: FLdPr Me
  loc_B9ADF0: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9ADF3: FStAdFunc var_A8
  loc_B9ADF6: FLdPr var_A8
  loc_B9ADF9: LateIdLdVar var_B8 DispID_15 0
  loc_B9AE00: CStrVarTmp
  loc_B9AE01: FStStrNoPop var_D0
  loc_B9AE04: ConcatStr
  loc_B9AE05: FStStrNoPop var_D4
  loc_B9AE08: LitStr " hasta el "
  loc_B9AE0B: ConcatStr
  loc_B9AE0C: FStStrNoPop var_D8
  loc_B9AE0F: FLdPr Me
  loc_B9AE12: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9AE15: FStAdFunc var_BC
  loc_B9AE18: FLdPr var_BC
  loc_B9AE1B: LateIdLdVar var_CC DispID_15 0
  loc_B9AE22: CStrVarTmp
  loc_B9AE23: FStStrNoPop var_DC
  loc_B9AE26: ConcatStr
  loc_B9AE27: FStStrNoPop var_E0
  loc_B9AE2A: LitStr " ..."
  loc_B9AE2D: ConcatStr
  loc_B9AE2E: CVarStr var_F0
  loc_B9AE31: PopAdLdVar
  loc_B9AE32: FLdPr Me
  loc_B9AE35: VCallAd Control_ID_StatusBar
  loc_B9AE38: FStAdFunc var_F4
  loc_B9AE3B: FLdPr var_F4
  loc_B9AE3E: LateIdSt
  loc_B9AE43: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9AE50: FFreeAd var_A8 = "": var_BC = ""
  loc_B9AE59: FFreeVar var_B8 = "": var_CC = ""
  loc_B9AE62: LitI2_Byte &HA
  loc_B9AE64: CR8I2
  loc_B9AE65: CVarR4
  loc_B9AE69: PopAdLdVar
  loc_B9AE6A: FLdPr Me
  loc_B9AE6D: VCallAd Control_ID_ProgressBar
  loc_B9AE70: FStAdFunc var_A8
  loc_B9AE73: FLdPr var_A8
  loc_B9AE76: LateIdSt
  loc_B9AE7B: FFree1Ad var_A8
  loc_B9AE7E: FLdRfVar var_D0
  loc_B9AE81: FLdPr Me
  loc_B9AE84: MemLdRfVar from_stack_1.global_52
  loc_B9AE87: NewIfNullPr clscaja
  loc_B9AE8A: from_stack_1v = clscaja.CierraCajaIngre()
  loc_B9AE8F: ILdRf var_D0
  loc_B9AE92: FLdPr Me
  loc_B9AE95: MemStStrCopy
  loc_B9AE99: FFree1Str var_D0
  loc_B9AE9C: FLdPr Me
  loc_B9AE9F: MemLdStr global_64
  loc_B9AEA2: LitStr vbNullString
  loc_B9AEA5: NeStr
  loc_B9AEA7: BranchF loc_B9AED2
  loc_B9AEAA: LitI4 0
  loc_B9AEAF: LitStr "Subdiario de Ingresos"
  loc_B9AEB2: LitStr vbCrLf
  loc_B9AEB5: ConcatStr
  loc_B9AEB6: FStStrNoPop var_D0
  loc_B9AEB9: FLdPr Me
  loc_B9AEBC: MemLdStr global_64
  loc_B9AEBF: ConcatStr
  loc_B9AEC0: FStStrNoPop var_D4
  loc_B9AEC3: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9AEC8: FFreeStr var_D0 = ""
  loc_B9AECF: Branch loc_B9BC25
  loc_B9AED2: LitStr "Generando Subdiario de Depósitos Bancarios desde el "
  loc_B9AED5: FLdPr Me
  loc_B9AED8: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9AEDB: FStAdFunc var_A8
  loc_B9AEDE: FLdPr var_A8
  loc_B9AEE1: LateIdLdVar var_B8 DispID_15 0
  loc_B9AEE8: CStrVarTmp
  loc_B9AEE9: FStStrNoPop var_D0
  loc_B9AEEC: ConcatStr
  loc_B9AEED: FStStrNoPop var_D4
  loc_B9AEF0: LitStr " hasta el "
  loc_B9AEF3: ConcatStr
  loc_B9AEF4: FStStrNoPop var_D8
  loc_B9AEF7: FLdPr Me
  loc_B9AEFA: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9AEFD: FStAdFunc var_BC
  loc_B9AF00: FLdPr var_BC
  loc_B9AF03: LateIdLdVar var_CC DispID_15 0
  loc_B9AF0A: CStrVarTmp
  loc_B9AF0B: FStStrNoPop var_DC
  loc_B9AF0E: ConcatStr
  loc_B9AF0F: FStStrNoPop var_E0
  loc_B9AF12: LitStr " ..."
  loc_B9AF15: ConcatStr
  loc_B9AF16: CVarStr var_F0
  loc_B9AF19: PopAdLdVar
  loc_B9AF1A: FLdPr Me
  loc_B9AF1D: VCallAd Control_ID_StatusBar
  loc_B9AF20: FStAdFunc var_F4
  loc_B9AF23: FLdPr var_F4
  loc_B9AF26: LateIdSt
  loc_B9AF2B: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9AF38: FFreeAd var_A8 = "": var_BC = ""
  loc_B9AF41: FFreeVar var_B8 = "": var_CC = ""
  loc_B9AF4A: LitI2_Byte &H14
  loc_B9AF4C: CR8I2
  loc_B9AF4D: CVarR4
  loc_B9AF51: PopAdLdVar
  loc_B9AF52: FLdPr Me
  loc_B9AF55: VCallAd Control_ID_ProgressBar
  loc_B9AF58: FStAdFunc var_A8
  loc_B9AF5B: FLdPr var_A8
  loc_B9AF5E: LateIdSt
  loc_B9AF63: FFree1Ad var_A8
  loc_B9AF66: FLdRfVar var_D0
  loc_B9AF69: FLdPr Me
  loc_B9AF6C: MemLdRfVar from_stack_1.global_52
  loc_B9AF6F: NewIfNullPr clscaja
  loc_B9AF72: from_stack_1v = clscaja.CierraCajaDepo()
  loc_B9AF77: ILdRf var_D0
  loc_B9AF7A: FLdPr Me
  loc_B9AF7D: MemStStrCopy
  loc_B9AF81: FFree1Str var_D0
  loc_B9AF84: FLdPr Me
  loc_B9AF87: MemLdStr global_64
  loc_B9AF8A: LitStr vbNullString
  loc_B9AF8D: NeStr
  loc_B9AF8F: BranchF loc_B9AFBA
  loc_B9AF92: LitI4 0
  loc_B9AF97: LitStr "Subdiario de Depósitos"
  loc_B9AF9A: LitStr vbCrLf
  loc_B9AF9D: ConcatStr
  loc_B9AF9E: FStStrNoPop var_D0
  loc_B9AFA1: FLdPr Me
  loc_B9AFA4: MemLdStr global_64
  loc_B9AFA7: ConcatStr
  loc_B9AFA8: FStStrNoPop var_D4
  loc_B9AFAB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9AFB0: FFreeStr var_D0 = ""
  loc_B9AFB7: Branch loc_B9BC25
  loc_B9AFBA: LitStr "Generando Subdiario de Autorizados desde el "
  loc_B9AFBD: FLdPr Me
  loc_B9AFC0: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9AFC3: FStAdFunc var_A8
  loc_B9AFC6: FLdPr var_A8
  loc_B9AFC9: LateIdLdVar var_B8 DispID_15 0
  loc_B9AFD0: CStrVarTmp
  loc_B9AFD1: FStStrNoPop var_D0
  loc_B9AFD4: ConcatStr
  loc_B9AFD5: FStStrNoPop var_D4
  loc_B9AFD8: LitStr " hasta el "
  loc_B9AFDB: ConcatStr
  loc_B9AFDC: FStStrNoPop var_D8
  loc_B9AFDF: FLdPr Me
  loc_B9AFE2: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9AFE5: FStAdFunc var_BC
  loc_B9AFE8: FLdPr var_BC
  loc_B9AFEB: LateIdLdVar var_CC DispID_15 0
  loc_B9AFF2: CStrVarTmp
  loc_B9AFF3: FStStrNoPop var_DC
  loc_B9AFF6: ConcatStr
  loc_B9AFF7: FStStrNoPop var_E0
  loc_B9AFFA: LitStr " ..."
  loc_B9AFFD: ConcatStr
  loc_B9AFFE: CVarStr var_F0
  loc_B9B001: PopAdLdVar
  loc_B9B002: FLdPr Me
  loc_B9B005: VCallAd Control_ID_StatusBar
  loc_B9B008: FStAdFunc var_F4
  loc_B9B00B: FLdPr var_F4
  loc_B9B00E: LateIdSt
  loc_B9B013: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B020: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B029: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B032: LitI2_Byte &H1E
  loc_B9B034: CR8I2
  loc_B9B035: CVarR4
  loc_B9B039: PopAdLdVar
  loc_B9B03A: FLdPr Me
  loc_B9B03D: VCallAd Control_ID_ProgressBar
  loc_B9B040: FStAdFunc var_A8
  loc_B9B043: FLdPr var_A8
  loc_B9B046: LateIdSt
  loc_B9B04B: FFree1Ad var_A8
  loc_B9B04E: FLdRfVar var_D0
  loc_B9B051: FLdPr Me
  loc_B9B054: MemLdRfVar from_stack_1.global_52
  loc_B9B057: NewIfNullPr clscaja
  loc_B9B05A: from_stack_1v = clscaja.CierraCajaAuto()
  loc_B9B05F: ILdRf var_D0
  loc_B9B062: FLdPr Me
  loc_B9B065: MemStStrCopy
  loc_B9B069: FFree1Str var_D0
  loc_B9B06C: FLdPr Me
  loc_B9B06F: MemLdStr global_64
  loc_B9B072: LitStr vbNullString
  loc_B9B075: NeStr
  loc_B9B077: BranchF loc_B9B0A2
  loc_B9B07A: LitI4 0
  loc_B9B07F: LitStr "Subdiario de Autorizados"
  loc_B9B082: LitStr vbCrLf
  loc_B9B085: ConcatStr
  loc_B9B086: FStStrNoPop var_D0
  loc_B9B089: FLdPr Me
  loc_B9B08C: MemLdStr global_64
  loc_B9B08F: ConcatStr
  loc_B9B090: FStStrNoPop var_D4
  loc_B9B093: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B098: FFreeStr var_D0 = ""
  loc_B9B09F: Branch loc_B9BC25
  loc_B9B0A2: LitStr "Generando Subdiario de Devengados desde el "
  loc_B9B0A5: FLdPr Me
  loc_B9B0A8: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B0AB: FStAdFunc var_A8
  loc_B9B0AE: FLdPr var_A8
  loc_B9B0B1: LateIdLdVar var_B8 DispID_15 0
  loc_B9B0B8: CStrVarTmp
  loc_B9B0B9: FStStrNoPop var_D0
  loc_B9B0BC: ConcatStr
  loc_B9B0BD: FStStrNoPop var_D4
  loc_B9B0C0: LitStr " hasta el "
  loc_B9B0C3: ConcatStr
  loc_B9B0C4: FStStrNoPop var_D8
  loc_B9B0C7: FLdPr Me
  loc_B9B0CA: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B0CD: FStAdFunc var_BC
  loc_B9B0D0: FLdPr var_BC
  loc_B9B0D3: LateIdLdVar var_CC DispID_15 0
  loc_B9B0DA: CStrVarTmp
  loc_B9B0DB: FStStrNoPop var_DC
  loc_B9B0DE: ConcatStr
  loc_B9B0DF: FStStrNoPop var_E0
  loc_B9B0E2: LitStr " ..."
  loc_B9B0E5: ConcatStr
  loc_B9B0E6: CVarStr var_F0
  loc_B9B0E9: PopAdLdVar
  loc_B9B0EA: FLdPr Me
  loc_B9B0ED: VCallAd Control_ID_StatusBar
  loc_B9B0F0: FStAdFunc var_F4
  loc_B9B0F3: FLdPr var_F4
  loc_B9B0F6: LateIdSt
  loc_B9B0FB: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B108: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B111: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B11A: LitI2_Byte &H28
  loc_B9B11C: CR8I2
  loc_B9B11D: CVarR4
  loc_B9B121: PopAdLdVar
  loc_B9B122: FLdPr Me
  loc_B9B125: VCallAd Control_ID_ProgressBar
  loc_B9B128: FStAdFunc var_A8
  loc_B9B12B: FLdPr var_A8
  loc_B9B12E: LateIdSt
  loc_B9B133: FFree1Ad var_A8
  loc_B9B136: FLdRfVar var_D0
  loc_B9B139: FLdPr Me
  loc_B9B13C: MemLdRfVar from_stack_1.global_52
  loc_B9B13F: NewIfNullPr clscaja
  loc_B9B142: from_stack_1v = clscaja.CierraCajaDeve()
  loc_B9B147: ILdRf var_D0
  loc_B9B14A: FLdPr Me
  loc_B9B14D: MemStStrCopy
  loc_B9B151: FFree1Str var_D0
  loc_B9B154: FLdPr Me
  loc_B9B157: MemLdStr global_64
  loc_B9B15A: LitStr vbNullString
  loc_B9B15D: NeStr
  loc_B9B15F: BranchF loc_B9B18A
  loc_B9B162: LitI4 0
  loc_B9B167: LitStr "Subdiario de Devengados"
  loc_B9B16A: LitStr vbCrLf
  loc_B9B16D: ConcatStr
  loc_B9B16E: FStStrNoPop var_D0
  loc_B9B171: FLdPr Me
  loc_B9B174: MemLdStr global_64
  loc_B9B177: ConcatStr
  loc_B9B178: FStStrNoPop var_D4
  loc_B9B17B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B180: FFreeStr var_D0 = ""
  loc_B9B187: Branch loc_B9BC25
  loc_B9B18A: LitStr "Generando Subdiario de Mandado a Pagar desde el "
  loc_B9B18D: FLdPr Me
  loc_B9B190: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B193: FStAdFunc var_A8
  loc_B9B196: FLdPr var_A8
  loc_B9B199: LateIdLdVar var_B8 DispID_15 0
  loc_B9B1A0: CStrVarTmp
  loc_B9B1A1: FStStrNoPop var_D0
  loc_B9B1A4: ConcatStr
  loc_B9B1A5: FStStrNoPop var_D4
  loc_B9B1A8: LitStr " hasta el "
  loc_B9B1AB: ConcatStr
  loc_B9B1AC: FStStrNoPop var_D8
  loc_B9B1AF: FLdPr Me
  loc_B9B1B2: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B1B5: FStAdFunc var_BC
  loc_B9B1B8: FLdPr var_BC
  loc_B9B1BB: LateIdLdVar var_CC DispID_15 0
  loc_B9B1C2: CStrVarTmp
  loc_B9B1C3: FStStrNoPop var_DC
  loc_B9B1C6: ConcatStr
  loc_B9B1C7: FStStrNoPop var_E0
  loc_B9B1CA: LitStr " ..."
  loc_B9B1CD: ConcatStr
  loc_B9B1CE: CVarStr var_F0
  loc_B9B1D1: PopAdLdVar
  loc_B9B1D2: FLdPr Me
  loc_B9B1D5: VCallAd Control_ID_StatusBar
  loc_B9B1D8: FStAdFunc var_F4
  loc_B9B1DB: FLdPr var_F4
  loc_B9B1DE: LateIdSt
  loc_B9B1E3: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B1F0: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B1F9: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B202: LitStr "Municipalidad de Guaymallén"
  loc_B9B205: LitStr "Municipalidad de Guaymallén"
  loc_B9B208: EqStr
  loc_B9B20A: ImpAdLdI2 MemVar_C3D064
  loc_B9B20D: LitI2 2018
  loc_B9B210: EqI2
  loc_B9B211: AndI4
  loc_B9B212: BranchF loc_B9B225
  loc_B9B215: LitI4 0
  loc_B9B21A: LitStr "excluir Mandado a pagar"
  loc_B9B21D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B222: Branch loc_B9B295
  loc_B9B225: LitI2_Byte &H32
  loc_B9B227: CR8I2
  loc_B9B228: CVarR4
  loc_B9B22C: PopAdLdVar
  loc_B9B22D: FLdPr Me
  loc_B9B230: VCallAd Control_ID_ProgressBar
  loc_B9B233: FStAdFunc var_A8
  loc_B9B236: FLdPr var_A8
  loc_B9B239: LateIdSt
  loc_B9B23E: FFree1Ad var_A8
  loc_B9B241: FLdRfVar var_D0
  loc_B9B244: FLdPr Me
  loc_B9B247: MemLdRfVar from_stack_1.global_52
  loc_B9B24A: NewIfNullPr clscaja
  loc_B9B24D: from_stack_1v = clscaja.CierraCajaMapa()
  loc_B9B252: ILdRf var_D0
  loc_B9B255: FLdPr Me
  loc_B9B258: MemStStrCopy
  loc_B9B25C: FFree1Str var_D0
  loc_B9B25F: FLdPr Me
  loc_B9B262: MemLdStr global_64
  loc_B9B265: LitStr vbNullString
  loc_B9B268: NeStr
  loc_B9B26A: BranchF loc_B9B295
  loc_B9B26D: LitI4 0
  loc_B9B272: LitStr "Subdiario de Mandado a Pagar"
  loc_B9B275: LitStr vbCrLf
  loc_B9B278: ConcatStr
  loc_B9B279: FStStrNoPop var_D0
  loc_B9B27C: FLdPr Me
  loc_B9B27F: MemLdStr global_64
  loc_B9B282: ConcatStr
  loc_B9B283: FStStrNoPop var_D4
  loc_B9B286: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B28B: FFreeStr var_D0 = ""
  loc_B9B292: Branch loc_B9BC25
  loc_B9B295: LitStr "Generando Subdiario de Emisión de Cheques desde el "
  loc_B9B298: FLdPr Me
  loc_B9B29B: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B29E: FStAdFunc var_A8
  loc_B9B2A1: FLdPr var_A8
  loc_B9B2A4: LateIdLdVar var_B8 DispID_15 0
  loc_B9B2AB: CStrVarTmp
  loc_B9B2AC: FStStrNoPop var_D0
  loc_B9B2AF: ConcatStr
  loc_B9B2B0: FStStrNoPop var_D4
  loc_B9B2B3: LitStr " hasta el "
  loc_B9B2B6: ConcatStr
  loc_B9B2B7: FStStrNoPop var_D8
  loc_B9B2BA: FLdPr Me
  loc_B9B2BD: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B2C0: FStAdFunc var_BC
  loc_B9B2C3: FLdPr var_BC
  loc_B9B2C6: LateIdLdVar var_CC DispID_15 0
  loc_B9B2CD: CStrVarTmp
  loc_B9B2CE: FStStrNoPop var_DC
  loc_B9B2D1: ConcatStr
  loc_B9B2D2: FStStrNoPop var_E0
  loc_B9B2D5: LitStr " ..."
  loc_B9B2D8: ConcatStr
  loc_B9B2D9: CVarStr var_F0
  loc_B9B2DC: PopAdLdVar
  loc_B9B2DD: FLdPr Me
  loc_B9B2E0: VCallAd Control_ID_StatusBar
  loc_B9B2E3: FStAdFunc var_F4
  loc_B9B2E6: FLdPr var_F4
  loc_B9B2E9: LateIdSt
  loc_B9B2EE: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B2FB: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B304: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B30D: LitI2_Byte &H3C
  loc_B9B30F: CR8I2
  loc_B9B310: CVarR4
  loc_B9B314: PopAdLdVar
  loc_B9B315: FLdPr Me
  loc_B9B318: VCallAd Control_ID_ProgressBar
  loc_B9B31B: FStAdFunc var_A8
  loc_B9B31E: FLdPr var_A8
  loc_B9B321: LateIdSt
  loc_B9B326: FFree1Ad var_A8
  loc_B9B329: FLdRfVar var_D0
  loc_B9B32C: FLdPr Me
  loc_B9B32F: MemLdRfVar from_stack_1.global_52
  loc_B9B332: NewIfNullPr clscaja
  loc_B9B335: from_stack_1v = clscaja.CierraCajaEmiCheq()
  loc_B9B33A: ILdRf var_D0
  loc_B9B33D: FLdPr Me
  loc_B9B340: MemStStrCopy
  loc_B9B344: FFree1Str var_D0
  loc_B9B347: FLdPr Me
  loc_B9B34A: MemLdStr global_64
  loc_B9B34D: LitStr vbNullString
  loc_B9B350: NeStr
  loc_B9B352: BranchF loc_B9B37D
  loc_B9B355: LitI4 0
  loc_B9B35A: LitStr "Subdiario de Emisión de Cheques"
  loc_B9B35D: LitStr vbCrLf
  loc_B9B360: ConcatStr
  loc_B9B361: FStStrNoPop var_D0
  loc_B9B364: FLdPr Me
  loc_B9B367: MemLdStr global_64
  loc_B9B36A: ConcatStr
  loc_B9B36B: FStStrNoPop var_D4
  loc_B9B36E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B373: FFreeStr var_D0 = ""
  loc_B9B37A: Branch loc_B9BC25
  loc_B9B37D: LitStr "Generando Subdiario de Remisión de Cheques desde el "
  loc_B9B380: FLdPr Me
  loc_B9B383: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B386: FStAdFunc var_A8
  loc_B9B389: FLdPr var_A8
  loc_B9B38C: LateIdLdVar var_B8 DispID_15 0
  loc_B9B393: CStrVarTmp
  loc_B9B394: FStStrNoPop var_D0
  loc_B9B397: ConcatStr
  loc_B9B398: FStStrNoPop var_D4
  loc_B9B39B: LitStr " hasta el "
  loc_B9B39E: ConcatStr
  loc_B9B39F: FStStrNoPop var_D8
  loc_B9B3A2: FLdPr Me
  loc_B9B3A5: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B3A8: FStAdFunc var_BC
  loc_B9B3AB: FLdPr var_BC
  loc_B9B3AE: LateIdLdVar var_CC DispID_15 0
  loc_B9B3B5: CStrVarTmp
  loc_B9B3B6: FStStrNoPop var_DC
  loc_B9B3B9: ConcatStr
  loc_B9B3BA: FStStrNoPop var_E0
  loc_B9B3BD: LitStr " ..."
  loc_B9B3C0: ConcatStr
  loc_B9B3C1: CVarStr var_F0
  loc_B9B3C4: PopAdLdVar
  loc_B9B3C5: FLdPr Me
  loc_B9B3C8: VCallAd Control_ID_StatusBar
  loc_B9B3CB: FStAdFunc var_F4
  loc_B9B3CE: FLdPr var_F4
  loc_B9B3D1: LateIdSt
  loc_B9B3D6: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B3E3: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B3EC: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B3F5: LitI2_Byte &H46
  loc_B9B3F7: CR8I2
  loc_B9B3F8: CVarR4
  loc_B9B3FC: PopAdLdVar
  loc_B9B3FD: FLdPr Me
  loc_B9B400: VCallAd Control_ID_ProgressBar
  loc_B9B403: FStAdFunc var_A8
  loc_B9B406: FLdPr var_A8
  loc_B9B409: LateIdSt
  loc_B9B40E: FFree1Ad var_A8
  loc_B9B411: FLdRfVar var_D0
  loc_B9B414: FLdPr Me
  loc_B9B417: MemLdRfVar from_stack_1.global_52
  loc_B9B41A: NewIfNullPr clscaja
  loc_B9B41D: from_stack_1v = clscaja.CierraCajaRemiCheq()
  loc_B9B422: ILdRf var_D0
  loc_B9B425: FLdPr Me
  loc_B9B428: MemStStrCopy
  loc_B9B42C: FFree1Str var_D0
  loc_B9B42F: FLdPr Me
  loc_B9B432: MemLdStr global_64
  loc_B9B435: LitStr vbNullString
  loc_B9B438: NeStr
  loc_B9B43A: BranchF loc_B9B465
  loc_B9B43D: LitI4 0
  loc_B9B442: LitStr "Subdiario de Remisión de Cheques"
  loc_B9B445: LitStr vbCrLf
  loc_B9B448: ConcatStr
  loc_B9B449: FStStrNoPop var_D0
  loc_B9B44C: FLdPr Me
  loc_B9B44F: MemLdStr global_64
  loc_B9B452: ConcatStr
  loc_B9B453: FStStrNoPop var_D4
  loc_B9B456: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B45B: FFreeStr var_D0 = ""
  loc_B9B462: Branch loc_B9BC25
  loc_B9B465: LitStr "Generando Subdiario de Pagos Presupuestarios desde el "
  loc_B9B468: FLdPr Me
  loc_B9B46B: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B46E: FStAdFunc var_A8
  loc_B9B471: FLdPr var_A8
  loc_B9B474: LateIdLdVar var_B8 DispID_15 0
  loc_B9B47B: CStrVarTmp
  loc_B9B47C: FStStrNoPop var_D0
  loc_B9B47F: ConcatStr
  loc_B9B480: FStStrNoPop var_D4
  loc_B9B483: LitStr " hasta el "
  loc_B9B486: ConcatStr
  loc_B9B487: FStStrNoPop var_D8
  loc_B9B48A: FLdPr Me
  loc_B9B48D: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B490: FStAdFunc var_BC
  loc_B9B493: FLdPr var_BC
  loc_B9B496: LateIdLdVar var_CC DispID_15 0
  loc_B9B49D: CStrVarTmp
  loc_B9B49E: FStStrNoPop var_DC
  loc_B9B4A1: ConcatStr
  loc_B9B4A2: FStStrNoPop var_E0
  loc_B9B4A5: LitStr " ..."
  loc_B9B4A8: ConcatStr
  loc_B9B4A9: CVarStr var_F0
  loc_B9B4AC: PopAdLdVar
  loc_B9B4AD: FLdPr Me
  loc_B9B4B0: VCallAd Control_ID_StatusBar
  loc_B9B4B3: FStAdFunc var_F4
  loc_B9B4B6: FLdPr var_F4
  loc_B9B4B9: LateIdSt
  loc_B9B4BE: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B4CB: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B4D4: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B4DD: LitI2_Byte &H50
  loc_B9B4DF: CR8I2
  loc_B9B4E0: CVarR4
  loc_B9B4E4: PopAdLdVar
  loc_B9B4E5: FLdPr Me
  loc_B9B4E8: VCallAd Control_ID_ProgressBar
  loc_B9B4EB: FStAdFunc var_A8
  loc_B9B4EE: FLdPr var_A8
  loc_B9B4F1: LateIdSt
  loc_B9B4F6: FFree1Ad var_A8
  loc_B9B4F9: FLdRfVar var_D0
  loc_B9B4FC: FLdPr Me
  loc_B9B4FF: MemLdRfVar from_stack_1.global_52
  loc_B9B502: NewIfNullPr clscaja
  loc_B9B505: from_stack_1v = clscaja.CierraCajaPagoCheq()
  loc_B9B50A: ILdRf var_D0
  loc_B9B50D: FLdPr Me
  loc_B9B510: MemStStrCopy
  loc_B9B514: FFree1Str var_D0
  loc_B9B517: FLdPr Me
  loc_B9B51A: MemLdStr global_64
  loc_B9B51D: LitStr vbNullString
  loc_B9B520: NeStr
  loc_B9B522: BranchF loc_B9B54D
  loc_B9B525: LitI4 0
  loc_B9B52A: LitStr "Subdiario de Pago de Cheques"
  loc_B9B52D: LitStr vbCrLf
  loc_B9B530: ConcatStr
  loc_B9B531: FStStrNoPop var_D0
  loc_B9B534: FLdPr Me
  loc_B9B537: MemLdStr global_64
  loc_B9B53A: ConcatStr
  loc_B9B53B: FStStrNoPop var_D4
  loc_B9B53E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B543: FFreeStr var_D0 = ""
  loc_B9B54A: Branch loc_B9BC25
  loc_B9B54D: LitStr "Generando Subdiario de Pagos Extrapresupuestarios desde el "
  loc_B9B550: FLdPr Me
  loc_B9B553: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B556: FStAdFunc var_A8
  loc_B9B559: FLdPr var_A8
  loc_B9B55C: LateIdLdVar var_B8 DispID_15 0
  loc_B9B563: CStrVarTmp
  loc_B9B564: FStStrNoPop var_D0
  loc_B9B567: ConcatStr
  loc_B9B568: FStStrNoPop var_D4
  loc_B9B56B: LitStr " hasta el "
  loc_B9B56E: ConcatStr
  loc_B9B56F: FStStrNoPop var_D8
  loc_B9B572: FLdPr Me
  loc_B9B575: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B578: FStAdFunc var_BC
  loc_B9B57B: FLdPr var_BC
  loc_B9B57E: LateIdLdVar var_CC DispID_15 0
  loc_B9B585: CStrVarTmp
  loc_B9B586: FStStrNoPop var_DC
  loc_B9B589: ConcatStr
  loc_B9B58A: FStStrNoPop var_E0
  loc_B9B58D: LitStr " ..."
  loc_B9B590: ConcatStr
  loc_B9B591: CVarStr var_F0
  loc_B9B594: PopAdLdVar
  loc_B9B595: FLdPr Me
  loc_B9B598: VCallAd Control_ID_StatusBar
  loc_B9B59B: FStAdFunc var_F4
  loc_B9B59E: FLdPr var_F4
  loc_B9B5A1: LateIdSt
  loc_B9B5A6: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B5B3: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B5BC: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B5C5: LitI2_Byte &H64
  loc_B9B5C7: CR8I2
  loc_B9B5C8: CVarR4
  loc_B9B5CC: PopAdLdVar
  loc_B9B5CD: FLdPr Me
  loc_B9B5D0: VCallAd Control_ID_ProgressBar
  loc_B9B5D3: FStAdFunc var_A8
  loc_B9B5D6: FLdPr var_A8
  loc_B9B5D9: LateIdSt
  loc_B9B5DE: FFree1Ad var_A8
  loc_B9B5E1: FLdRfVar var_D0
  loc_B9B5E4: FLdPr Me
  loc_B9B5E7: MemLdRfVar from_stack_1.global_52
  loc_B9B5EA: NewIfNullPr clscaja
  loc_B9B5ED: from_stack_1v = clscaja.CierraCajaPagoDebi()
  loc_B9B5F2: ILdRf var_D0
  loc_B9B5F5: FLdPr Me
  loc_B9B5F8: MemStStrCopy
  loc_B9B5FC: FFree1Str var_D0
  loc_B9B5FF: FLdPr Me
  loc_B9B602: MemLdStr global_64
  loc_B9B605: LitStr vbNullString
  loc_B9B608: NeStr
  loc_B9B60A: BranchF loc_B9B635
  loc_B9B60D: LitI4 0
  loc_B9B612: LitStr "Subdiario de Pago de Débitos"
  loc_B9B615: LitStr vbCrLf
  loc_B9B618: ConcatStr
  loc_B9B619: FStStrNoPop var_D0
  loc_B9B61C: FLdPr Me
  loc_B9B61F: MemLdStr global_64
  loc_B9B622: ConcatStr
  loc_B9B623: FStStrNoPop var_D4
  loc_B9B626: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B62B: FFreeStr var_D0 = ""
  loc_B9B632: Branch loc_B9BC25
  loc_B9B635: LitStr "Generando Subdiario de Movimientos Bancarios desde el "
  loc_B9B638: FLdPr Me
  loc_B9B63B: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B63E: FStAdFunc var_A8
  loc_B9B641: FLdPr var_A8
  loc_B9B644: LateIdLdVar var_B8 DispID_15 0
  loc_B9B64B: CStrVarTmp
  loc_B9B64C: FStStrNoPop var_D0
  loc_B9B64F: ConcatStr
  loc_B9B650: FStStrNoPop var_D4
  loc_B9B653: LitStr " hasta el "
  loc_B9B656: ConcatStr
  loc_B9B657: FStStrNoPop var_D8
  loc_B9B65A: FLdPr Me
  loc_B9B65D: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B660: FStAdFunc var_BC
  loc_B9B663: FLdPr var_BC
  loc_B9B666: LateIdLdVar var_CC DispID_15 0
  loc_B9B66D: CStrVarTmp
  loc_B9B66E: FStStrNoPop var_DC
  loc_B9B671: ConcatStr
  loc_B9B672: FStStrNoPop var_E0
  loc_B9B675: LitStr " ..."
  loc_B9B678: ConcatStr
  loc_B9B679: CVarStr var_F0
  loc_B9B67C: PopAdLdVar
  loc_B9B67D: FLdPr Me
  loc_B9B680: VCallAd Control_ID_StatusBar
  loc_B9B683: FStAdFunc var_F4
  loc_B9B686: FLdPr var_F4
  loc_B9B689: LateIdSt
  loc_B9B68E: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B69B: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B6A4: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B6AD: LitI2_Byte &HA
  loc_B9B6AF: CR8I2
  loc_B9B6B0: CVarR4
  loc_B9B6B4: PopAdLdVar
  loc_B9B6B5: FLdPr Me
  loc_B9B6B8: VCallAd Control_ID_ProgressBar
  loc_B9B6BB: FStAdFunc var_A8
  loc_B9B6BE: FLdPr var_A8
  loc_B9B6C1: LateIdSt
  loc_B9B6C6: FFree1Ad var_A8
  loc_B9B6C9: FLdRfVar var_D0
  loc_B9B6CC: FLdPr Me
  loc_B9B6CF: MemLdRfVar from_stack_1.global_52
  loc_B9B6D2: NewIfNullPr clscaja
  loc_B9B6D5: from_stack_1v = clscaja.CierraCajaMovibanco()
  loc_B9B6DA: ILdRf var_D0
  loc_B9B6DD: FLdPr Me
  loc_B9B6E0: MemStStrCopy
  loc_B9B6E4: FFree1Str var_D0
  loc_B9B6E7: FLdPr Me
  loc_B9B6EA: MemLdStr global_64
  loc_B9B6ED: LitStr vbNullString
  loc_B9B6F0: NeStr
  loc_B9B6F2: BranchF loc_B9B71D
  loc_B9B6F5: LitI4 0
  loc_B9B6FA: LitStr "Subdiario de Movimientos Bancarios"
  loc_B9B6FD: LitStr vbCrLf
  loc_B9B700: ConcatStr
  loc_B9B701: FStStrNoPop var_D0
  loc_B9B704: FLdPr Me
  loc_B9B707: MemLdStr global_64
  loc_B9B70A: ConcatStr
  loc_B9B70B: FStStrNoPop var_D4
  loc_B9B70E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B713: FFreeStr var_D0 = ""
  loc_B9B71A: Branch loc_B9BC25
  loc_B9B71D: LitStr "Generando Subdiario de Movimientos Patrimoniales desde el "
  loc_B9B720: FLdPr Me
  loc_B9B723: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B726: FStAdFunc var_A8
  loc_B9B729: FLdPr var_A8
  loc_B9B72C: LateIdLdVar var_B8 DispID_15 0
  loc_B9B733: CStrVarTmp
  loc_B9B734: FStStrNoPop var_D0
  loc_B9B737: ConcatStr
  loc_B9B738: FStStrNoPop var_D4
  loc_B9B73B: LitStr " hasta el "
  loc_B9B73E: ConcatStr
  loc_B9B73F: FStStrNoPop var_D8
  loc_B9B742: FLdPr Me
  loc_B9B745: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B748: FStAdFunc var_BC
  loc_B9B74B: FLdPr var_BC
  loc_B9B74E: LateIdLdVar var_CC DispID_15 0
  loc_B9B755: CStrVarTmp
  loc_B9B756: FStStrNoPop var_DC
  loc_B9B759: ConcatStr
  loc_B9B75A: FStStrNoPop var_E0
  loc_B9B75D: LitStr " ..."
  loc_B9B760: ConcatStr
  loc_B9B761: CVarStr var_F0
  loc_B9B764: PopAdLdVar
  loc_B9B765: FLdPr Me
  loc_B9B768: VCallAd Control_ID_StatusBar
  loc_B9B76B: FStAdFunc var_F4
  loc_B9B76E: FLdPr var_F4
  loc_B9B771: LateIdSt
  loc_B9B776: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B783: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B78C: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B795: LitI2_Byte &H14
  loc_B9B797: CR8I2
  loc_B9B798: CVarR4
  loc_B9B79C: PopAdLdVar
  loc_B9B79D: FLdPr Me
  loc_B9B7A0: VCallAd Control_ID_ProgressBar
  loc_B9B7A3: FStAdFunc var_A8
  loc_B9B7A6: FLdPr var_A8
  loc_B9B7A9: LateIdSt
  loc_B9B7AE: FFree1Ad var_A8
  loc_B9B7B1: FLdRfVar var_D0
  loc_B9B7B4: FLdPr Me
  loc_B9B7B7: MemLdRfVar from_stack_1.global_52
  loc_B9B7BA: NewIfNullPr clscaja
  loc_B9B7BD: from_stack_1v = clscaja.CierraCajaAltaPatr()
  loc_B9B7C2: ILdRf var_D0
  loc_B9B7C5: FLdPr Me
  loc_B9B7C8: MemStStrCopy
  loc_B9B7CC: FFree1Str var_D0
  loc_B9B7CF: FLdPr Me
  loc_B9B7D2: MemLdStr global_64
  loc_B9B7D5: LitStr vbNullString
  loc_B9B7D8: NeStr
  loc_B9B7DA: BranchF loc_B9B805
  loc_B9B7DD: LitI4 0
  loc_B9B7E2: LitStr "Subdiario de Movimientos Patrimoniales"
  loc_B9B7E5: LitStr vbCrLf
  loc_B9B7E8: ConcatStr
  loc_B9B7E9: FStStrNoPop var_D0
  loc_B9B7EC: FLdPr Me
  loc_B9B7EF: MemLdStr global_64
  loc_B9B7F2: ConcatStr
  loc_B9B7F3: FStStrNoPop var_D4
  loc_B9B7F6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B7FB: FFreeStr var_D0 = ""
  loc_B9B802: Branch loc_B9BC25
  loc_B9B805: LitI2_Byte &HFF
  loc_B9B807: BranchF loc_B9B90B
  loc_B9B80A: LitStr "Generando Subdiario de Aforos desde el "
  loc_B9B80D: FLdPr Me
  loc_B9B810: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B813: FStAdFunc var_A8
  loc_B9B816: FLdPr var_A8
  loc_B9B819: LateIdLdVar var_B8 DispID_15 0
  loc_B9B820: CStrVarTmp
  loc_B9B821: FStStrNoPop var_D0
  loc_B9B824: ConcatStr
  loc_B9B825: FStStrNoPop var_D4
  loc_B9B828: LitStr " hasta el "
  loc_B9B82B: ConcatStr
  loc_B9B82C: FStStrNoPop var_D8
  loc_B9B82F: FLdPr Me
  loc_B9B832: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B835: FStAdFunc var_BC
  loc_B9B838: FLdPr var_BC
  loc_B9B83B: LateIdLdVar var_CC DispID_15 0
  loc_B9B842: CStrVarTmp
  loc_B9B843: FStStrNoPop var_DC
  loc_B9B846: ConcatStr
  loc_B9B847: FStStrNoPop var_E0
  loc_B9B84A: LitStr " ..."
  loc_B9B84D: ConcatStr
  loc_B9B84E: CVarStr var_F0
  loc_B9B851: PopAdLdVar
  loc_B9B852: FLdPr Me
  loc_B9B855: VCallAd Control_ID_StatusBar
  loc_B9B858: FStAdFunc var_F4
  loc_B9B85B: FLdPr var_F4
  loc_B9B85E: LateIdSt
  loc_B9B863: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B870: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B879: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B882: LitI2_Byte &H1E
  loc_B9B884: CR8I2
  loc_B9B885: CVarR4
  loc_B9B889: PopAdLdVar
  loc_B9B88A: FLdPr Me
  loc_B9B88D: VCallAd Control_ID_ProgressBar
  loc_B9B890: FStAdFunc var_A8
  loc_B9B893: FLdPr var_A8
  loc_B9B896: LateIdSt
  loc_B9B89B: FFree1Ad var_A8
  loc_B9B89E: FLdRfVar var_D0
  loc_B9B8A1: FLdPr Me
  loc_B9B8A4: MemLdRfVar from_stack_1.global_52
  loc_B9B8A7: NewIfNullPr clscaja
  loc_B9B8AA: from_stack_1v = clscaja.CierraCajaAforo()
  loc_B9B8AF: ILdRf var_D0
  loc_B9B8B2: FLdPr Me
  loc_B9B8B5: MemStStrCopy
  loc_B9B8B9: FFree1Str var_D0
  loc_B9B8BC: FLdPr Me
  loc_B9B8BF: MemLdStr global_64
  loc_B9B8C2: LitStr vbNullString
  loc_B9B8C5: NeStr
  loc_B9B8C7: BranchF loc_B9B8F2
  loc_B9B8CA: LitI4 0
  loc_B9B8CF: LitStr "Subdiario de Aforos"
  loc_B9B8D2: LitStr vbCrLf
  loc_B9B8D5: ConcatStr
  loc_B9B8D6: FStStrNoPop var_D0
  loc_B9B8D9: FLdPr Me
  loc_B9B8DC: MemLdStr global_64
  loc_B9B8DF: ConcatStr
  loc_B9B8E0: FStStrNoPop var_D4
  loc_B9B8E3: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B8E8: FFreeStr var_D0 = ""
  loc_B9B8EF: Branch loc_B9BC25
  loc_B9B8F2: LitVar_FALSE
  loc_B9B8F6: PopAdLdVar
  loc_B9B8F7: FLdPr Me
  loc_B9B8FA: VCallAd Control_ID_ProgressBar
  loc_B9B8FD: FStAdFunc var_A8
  loc_B9B900: FLdPr var_A8
  loc_B9B903: LateIdSt
  loc_B9B908: FFree1Ad var_A8
  loc_B9B90B: LitI2_Byte &HFF
  loc_B9B90D: BranchF loc_B9BA11
  loc_B9B910: LitStr "Generando Subdiario de Garantías en Custodia desde el "
  loc_B9B913: FLdPr Me
  loc_B9B916: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9B919: FStAdFunc var_A8
  loc_B9B91C: FLdPr var_A8
  loc_B9B91F: LateIdLdVar var_B8 DispID_15 0
  loc_B9B926: CStrVarTmp
  loc_B9B927: FStStrNoPop var_D0
  loc_B9B92A: ConcatStr
  loc_B9B92B: FStStrNoPop var_D4
  loc_B9B92E: LitStr " hasta el "
  loc_B9B931: ConcatStr
  loc_B9B932: FStStrNoPop var_D8
  loc_B9B935: FLdPr Me
  loc_B9B938: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9B93B: FStAdFunc var_BC
  loc_B9B93E: FLdPr var_BC
  loc_B9B941: LateIdLdVar var_CC DispID_15 0
  loc_B9B948: CStrVarTmp
  loc_B9B949: FStStrNoPop var_DC
  loc_B9B94C: ConcatStr
  loc_B9B94D: FStStrNoPop var_E0
  loc_B9B950: LitStr " ..."
  loc_B9B953: ConcatStr
  loc_B9B954: CVarStr var_F0
  loc_B9B957: PopAdLdVar
  loc_B9B958: FLdPr Me
  loc_B9B95B: VCallAd Control_ID_StatusBar
  loc_B9B95E: FStAdFunc var_F4
  loc_B9B961: FLdPr var_F4
  loc_B9B964: LateIdSt
  loc_B9B969: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9B976: FFreeAd var_A8 = "": var_BC = ""
  loc_B9B97F: FFreeVar var_B8 = "": var_CC = ""
  loc_B9B988: LitI2_Byte &H28
  loc_B9B98A: CR8I2
  loc_B9B98B: CVarR4
  loc_B9B98F: PopAdLdVar
  loc_B9B990: FLdPr Me
  loc_B9B993: VCallAd Control_ID_ProgressBar
  loc_B9B996: FStAdFunc var_A8
  loc_B9B999: FLdPr var_A8
  loc_B9B99C: LateIdSt
  loc_B9B9A1: FFree1Ad var_A8
  loc_B9B9A4: FLdRfVar var_D0
  loc_B9B9A7: FLdPr Me
  loc_B9B9AA: MemLdRfVar from_stack_1.global_52
  loc_B9B9AD: NewIfNullPr clscaja
  loc_B9B9B0: from_stack_1v = clscaja.CierraCajaGarantias()
  loc_B9B9B5: ILdRf var_D0
  loc_B9B9B8: FLdPr Me
  loc_B9B9BB: MemStStrCopy
  loc_B9B9BF: FFree1Str var_D0
  loc_B9B9C2: FLdPr Me
  loc_B9B9C5: MemLdStr global_64
  loc_B9B9C8: LitStr vbNullString
  loc_B9B9CB: NeStr
  loc_B9B9CD: BranchF loc_B9B9F8
  loc_B9B9D0: LitI4 0
  loc_B9B9D5: LitStr "Subdiario de Garantías en Custodia"
  loc_B9B9D8: LitStr vbCrLf
  loc_B9B9DB: ConcatStr
  loc_B9B9DC: FStStrNoPop var_D0
  loc_B9B9DF: FLdPr Me
  loc_B9B9E2: MemLdStr global_64
  loc_B9B9E5: ConcatStr
  loc_B9B9E6: FStStrNoPop var_D4
  loc_B9B9E9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9B9EE: FFreeStr var_D0 = ""
  loc_B9B9F5: Branch loc_B9BC25
  loc_B9B9F8: LitVar_FALSE
  loc_B9B9FC: PopAdLdVar
  loc_B9B9FD: FLdPr Me
  loc_B9BA00: VCallAd Control_ID_ProgressBar
  loc_B9BA03: FStAdFunc var_A8
  loc_B9BA06: FLdPr var_A8
  loc_B9BA09: LateIdSt
  loc_B9BA0E: FFree1Ad var_A8
  loc_B9BA11: LitI2_Byte &HFF
  loc_B9BA13: ImpAdLdI2 MemVar_C3D064
  loc_B9BA16: LitI2 2021
  loc_B9BA19: GeI2
  loc_B9BA1A: AndI4
  loc_B9BA1B: BranchF loc_B9BB1F
  loc_B9BA1E: LitStr "Generando Subdiario de Cargos/Descargos desde el "
  loc_B9BA21: FLdPr Me
  loc_B9BA24: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9BA27: FStAdFunc var_A8
  loc_B9BA2A: FLdPr var_A8
  loc_B9BA2D: LateIdLdVar var_B8 DispID_15 0
  loc_B9BA34: CStrVarTmp
  loc_B9BA35: FStStrNoPop var_D0
  loc_B9BA38: ConcatStr
  loc_B9BA39: FStStrNoPop var_D4
  loc_B9BA3C: LitStr " hasta el "
  loc_B9BA3F: ConcatStr
  loc_B9BA40: FStStrNoPop var_D8
  loc_B9BA43: FLdPr Me
  loc_B9BA46: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9BA49: FStAdFunc var_BC
  loc_B9BA4C: FLdPr var_BC
  loc_B9BA4F: LateIdLdVar var_CC DispID_15 0
  loc_B9BA56: CStrVarTmp
  loc_B9BA57: FStStrNoPop var_DC
  loc_B9BA5A: ConcatStr
  loc_B9BA5B: FStStrNoPop var_E0
  loc_B9BA5E: LitStr " ..."
  loc_B9BA61: ConcatStr
  loc_B9BA62: CVarStr var_F0
  loc_B9BA65: PopAdLdVar
  loc_B9BA66: FLdPr Me
  loc_B9BA69: VCallAd Control_ID_StatusBar
  loc_B9BA6C: FStAdFunc var_F4
  loc_B9BA6F: FLdPr var_F4
  loc_B9BA72: LateIdSt
  loc_B9BA77: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9BA84: FFreeAd var_A8 = "": var_BC = ""
  loc_B9BA8D: FFreeVar var_B8 = "": var_CC = ""
  loc_B9BA96: LitI2_Byte &H32
  loc_B9BA98: CR8I2
  loc_B9BA99: CVarR4
  loc_B9BA9D: PopAdLdVar
  loc_B9BA9E: FLdPr Me
  loc_B9BAA1: VCallAd Control_ID_ProgressBar
  loc_B9BAA4: FStAdFunc var_A8
  loc_B9BAA7: FLdPr var_A8
  loc_B9BAAA: LateIdSt
  loc_B9BAAF: FFree1Ad var_A8
  loc_B9BAB2: FLdRfVar var_D0
  loc_B9BAB5: FLdPr Me
  loc_B9BAB8: MemLdRfVar from_stack_1.global_52
  loc_B9BABB: NewIfNullPr clscaja
  loc_B9BABE: from_stack_1v = clscaja.CierraCajaCargos()
  loc_B9BAC3: ILdRf var_D0
  loc_B9BAC6: FLdPr Me
  loc_B9BAC9: MemStStrCopy
  loc_B9BACD: FFree1Str var_D0
  loc_B9BAD0: FLdPr Me
  loc_B9BAD3: MemLdStr global_64
  loc_B9BAD6: LitStr vbNullString
  loc_B9BAD9: NeStr
  loc_B9BADB: BranchF loc_B9BB06
  loc_B9BADE: LitI4 0
  loc_B9BAE3: LitStr "Subdiario de Cargos/Descargos"
  loc_B9BAE6: LitStr vbCrLf
  loc_B9BAE9: ConcatStr
  loc_B9BAEA: FStStrNoPop var_D0
  loc_B9BAED: FLdPr Me
  loc_B9BAF0: MemLdStr global_64
  loc_B9BAF3: ConcatStr
  loc_B9BAF4: FStStrNoPop var_D4
  loc_B9BAF7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9BAFC: FFreeStr var_D0 = ""
  loc_B9BB03: Branch loc_B9BC25
  loc_B9BB06: LitVar_FALSE
  loc_B9BB0A: PopAdLdVar
  loc_B9BB0B: FLdPr Me
  loc_B9BB0E: VCallAd Control_ID_ProgressBar
  loc_B9BB11: FStAdFunc var_A8
  loc_B9BB14: FLdPr var_A8
  loc_B9BB17: LateIdSt
  loc_B9BB1C: FFree1Ad var_A8
  loc_B9BB1F: LitI2_Byte &HFF
  loc_B9BB21: BranchF loc_B9BC25
  loc_B9BB24: LitStr "Generando Subdiario de Pagos Deuda Pública Consolidada desde el "
  loc_B9BB27: FLdPr Me
  loc_B9BB2A: VCallAd Control_ID_FechCajaDesdeMsk
  loc_B9BB2D: FStAdFunc var_A8
  loc_B9BB30: FLdPr var_A8
  loc_B9BB33: LateIdLdVar var_B8 DispID_15 0
  loc_B9BB3A: CStrVarTmp
  loc_B9BB3B: FStStrNoPop var_D0
  loc_B9BB3E: ConcatStr
  loc_B9BB3F: FStStrNoPop var_D4
  loc_B9BB42: LitStr " hasta el "
  loc_B9BB45: ConcatStr
  loc_B9BB46: FStStrNoPop var_D8
  loc_B9BB49: FLdPr Me
  loc_B9BB4C: VCallAd Control_ID_FechCajaHastaMsk
  loc_B9BB4F: FStAdFunc var_BC
  loc_B9BB52: FLdPr var_BC
  loc_B9BB55: LateIdLdVar var_CC DispID_15 0
  loc_B9BB5C: CStrVarTmp
  loc_B9BB5D: FStStrNoPop var_DC
  loc_B9BB60: ConcatStr
  loc_B9BB61: FStStrNoPop var_E0
  loc_B9BB64: LitStr " ..."
  loc_B9BB67: ConcatStr
  loc_B9BB68: CVarStr var_F0
  loc_B9BB6B: PopAdLdVar
  loc_B9BB6C: FLdPr Me
  loc_B9BB6F: VCallAd Control_ID_StatusBar
  loc_B9BB72: FStAdFunc var_F4
  loc_B9BB75: FLdPr var_F4
  loc_B9BB78: LateIdSt
  loc_B9BB7D: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B9BB8A: FFreeAd var_A8 = "": var_BC = ""
  loc_B9BB93: FFreeVar var_B8 = "": var_CC = ""
  loc_B9BB9C: LitI2_Byte &H3C
  loc_B9BB9E: CR8I2
  loc_B9BB9F: CVarR4
  loc_B9BBA3: PopAdLdVar
  loc_B9BBA4: FLdPr Me
  loc_B9BBA7: VCallAd Control_ID_ProgressBar
  loc_B9BBAA: FStAdFunc var_A8
  loc_B9BBAD: FLdPr var_A8
  loc_B9BBB0: LateIdSt
  loc_B9BBB5: FFree1Ad var_A8
  loc_B9BBB8: FLdRfVar var_D0
  loc_B9BBBB: FLdPr Me
  loc_B9BBBE: MemLdRfVar from_stack_1.global_52
  loc_B9BBC1: NewIfNullPr clscaja
  loc_B9BBC4: from_stack_1v = clscaja.CierraCajaPagoDeudaConsolidada()
  loc_B9BBC9: ILdRf var_D0
  loc_B9BBCC: FLdPr Me
  loc_B9BBCF: MemStStrCopy
  loc_B9BBD3: FFree1Str var_D0
  loc_B9BBD6: FLdPr Me
  loc_B9BBD9: MemLdStr global_64
  loc_B9BBDC: LitStr vbNullString
  loc_B9BBDF: NeStr
  loc_B9BBE1: BranchF loc_B9BC0C
  loc_B9BBE4: LitI4 0
  loc_B9BBE9: LitStr "Subdiario de Pagos Deuda Pública"
  loc_B9BBEC: LitStr vbCrLf
  loc_B9BBEF: ConcatStr
  loc_B9BBF0: FStStrNoPop var_D0
  loc_B9BBF3: FLdPr Me
  loc_B9BBF6: MemLdStr global_64
  loc_B9BBF9: ConcatStr
  loc_B9BBFA: FStStrNoPop var_D4
  loc_B9BBFD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9BC02: FFreeStr var_D0 = ""
  loc_B9BC09: Branch loc_B9BC25
  loc_B9BC0C: LitVar_FALSE
  loc_B9BC10: PopAdLdVar
  loc_B9BC11: FLdPr Me
  loc_B9BC14: VCallAd Control_ID_ProgressBar
  loc_B9BC17: FStAdFunc var_A8
  loc_B9BC1A: FLdPr var_A8
  loc_B9BC1D: LateIdSt
  loc_B9BC22: FFree1Ad var_A8
  loc_B9BC25: LitI4 0
  loc_B9BC2A: CI2I4
  loc_B9BC2B: FLdPr Me
  loc_B9BC2E: Me.MousePointer = from_stack_1
  loc_B9BC33: LitVar_FALSE
  loc_B9BC37: PopAdLdVar
  loc_B9BC38: FLdPr Me
  loc_B9BC3B: VCallAd Control_ID_ProgressBar
  loc_B9BC3E: FStAdFunc var_A8
  loc_B9BC41: FLdPr var_A8
  loc_B9BC44: LateIdSt
  loc_B9BC49: FFree1Ad var_A8
  loc_B9BC4C: LitI2_Byte &HFF
  loc_B9BC4E: FLdPr Me
  loc_B9BC51: VCallAd Control_ID_cmdSalir
  loc_B9BC54: FStAdFunc var_A8
  loc_B9BC57: FLdPr var_A8
  loc_B9BC5A: Me.Enabled = from_stack_1b
  loc_B9BC5F: FFree1Ad var_A8
  loc_B9BC62: ExitProcHresult
  loc_B9BC63: ExitProcHresult
End Function

Private Function Proc_117_18_C3C1F0() 'C3C1F0
  'Data Table: 43F338
  loc_C32B1C: ZeroRetVal
  loc_C32B1E: LitStr "SELECT * FROM paraconta WHERE PeriInfo = "
  loc_C32B21: ImpAdLdI2 MemVar_C3D064
  loc_C32B24: CStrUI1
  loc_C32B26: FStStrNoPop var_98
  loc_C32B29: ConcatStr
  loc_C32B2A: FStStrNoPop var_9C
  loc_C32B2D: LitStr ";"
  loc_C32B30: ConcatStr
  loc_C32B31: FStStrNoPop var_A0
  loc_C32B34: FLdPr Me
  loc_C32B37: MemLdRfVar from_stack_1.global_56
  loc_C32B3A: NewIfNullPr clsparaconta
  loc_C32B3D: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_C32B42: FFreeStr var_98 = "": var_9C = ""
  loc_C32B4B: FLdPr Me
  loc_C32B4E: VCallAd Control_ID_FechCajaDesdeMsk
  loc_C32B51: FStAdFunc var_A4
  loc_C32B54: FLdPr var_A4
  loc_C32B57: LateIdLdVar var_B4 DispID_15 0
  loc_C32B5E: PopAd
  loc_C32B60: FLdPr Me
  loc_C32B63: VCallAd Control_ID_FechCajaHastaMsk
  loc_C32B66: FStAdFunc var_E8
  loc_C32B69: FLdPr var_E8
  loc_C32B6C: LateIdLdVar var_F8 DispID_15 0
  loc_C32B73: PopAd
  loc_C32B75: LitStr "SET @desde="
  loc_C32B78: LitI4 1
  loc_C32B7D: LitI4 1
  loc_C32B82: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_C32B87: FStVarCopyObj var_E4
  loc_C32B8A: FLdRfVar var_E4
  loc_C32B8D: FLdRfVar var_B4
  loc_C32B90: CStrVarTmp
  loc_C32B91: CVarStr var_C4
  loc_C32B94: ImpAdCallI2 Format$(, )
  loc_C32B99: FStStrNoPop var_98
  loc_C32B9C: ConcatStr
  loc_C32B9D: FStStrNoPop var_9C
  loc_C32BA0: LitStr ",@hasta="
  loc_C32BA3: ConcatStr
  loc_C32BA4: FStStrNoPop var_A0
  loc_C32BA7: LitI4 1
  loc_C32BAC: LitI4 1
  loc_C32BB1: LitVarStr var_118, "'yyyy-mm-dd'"
  loc_C32BB6: FStVarCopyObj var_128
  loc_C32BB9: FLdRfVar var_128
  loc_C32BBC: FLdRfVar var_F8
  loc_C32BBF: CStrVarTmp
  loc_C32BC0: CVarStr var_108
  loc_C32BC3: ImpAdCallI2 Format$(, )
  loc_C32BC8: FStStrNoPop var_12C
  loc_C32BCB: ConcatStr
  loc_C32BCC: FStStrNoPop var_130
  loc_C32BCF: LitStr ";"
  loc_C32BD2: ConcatStr
  loc_C32BD3: FStStrNoPop var_134
  loc_C32BD6: FLdPr Me
  loc_C32BD9: MemLdRfVar from_stack_1.global_52
  loc_C32BDC: NewIfNullPr clscaja
  loc_C32BDF: Call clscaja.RedefineRS(from_stack_1v)
  loc_C32BE4: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = ""
  loc_C32BF3: FFreeAd var_A4 = ""
  loc_C32BFA: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_F8 = "": var_108 = ""
  loc_C32C09: LitVar_TRUE var_D4
  loc_C32C0C: PopAdLdVar
  loc_C32C0D: FLdPr Me
  loc_C32C10: VCallAd Control_ID_ProgressBar
  loc_C32C13: FStAdFunc var_A4
  loc_C32C16: FLdPr var_A4
  loc_C32C19: LateIdSt
  loc_C32C1E: FFree1Ad var_A4
  loc_C32C21: LitVarStr var_D4, "Asiento Automático de Autorizados Originales - Aumentos"
  loc_C32C26: PopAdLdVar
  loc_C32C27: FLdPr Me
  loc_C32C2A: VCallAd Control_ID_StatusBar
  loc_C32C2D: FStAdFunc var_A4
  loc_C32C30: FLdPr var_A4
  loc_C32C33: LateIdSt
  loc_C32C38: FFree1Ad var_A4
  loc_C32C3B: LitStr "SELECT CodiCuco, Sum(HabeCaau) HabeCaau"
  loc_C32C3E: LitStr " FROM cajaauto"
  loc_C32C41: ConcatStr
  loc_C32C42: FStStrNoPop var_98
  loc_C32C45: LitStr " WHERE PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C32C48: ConcatStr
  loc_C32C49: FStStrNoPop var_9C
  loc_C32C4C: LitStr " AND ModiCaau = 0"
  loc_C32C4F: ConcatStr
  loc_C32C50: FStStrNoPop var_A0
  loc_C32C53: LitStr " AND HabeCaau > 0"
  loc_C32C56: ConcatStr
  loc_C32C57: FStStrNoPop var_12C
  loc_C32C5A: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C32C5D: ConcatStr
  loc_C32C5E: FStStrNoPop var_130
  loc_C32C61: FLdPr Me
  loc_C32C64: MemLdRfVar from_stack_1.global_52
  loc_C32C67: NewIfNullPr clscaja
  loc_C32C6A: Call clscaja.RedefineRS(from_stack_1v)
  loc_C32C6F: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C32C7C: FLdRfVar var_138
  loc_C32C7F: FLdPr Me
  loc_C32C82: MemLdRfVar from_stack_1.global_52
  loc_C32C85: NewIfNullPr clscaja
  loc_C32C88: from_stack_1 = clscaja.RecordCount
  loc_C32C8D: ILdRf var_138
  loc_C32C90: LitI4 0
  loc_C32C95: GtI4
  loc_C32C96: BranchF loc_C32FE6
  loc_C32C99: FLdPr Me
  loc_C32C9C: VCallAd Control_ID_FechCajaHastaMsk
  loc_C32C9F: FStAdFunc var_A4
  loc_C32CA2: FLdPr var_A4
  loc_C32CA5: LateIdLdVar var_B4 DispID_15 0
  loc_C32CAC: CStrVarTmp
  loc_C32CAD: FStStrNoPop var_98
  loc_C32CB0: CDateStr
  loc_C32CB2: CVarDate var_C4
  loc_C32CB6: FLdRfVar var_E4
  loc_C32CB9: ImpAdCallFPR4  = Month()
  loc_C32CBE: FLdPr Me
  loc_C32CC1: VCallAd Control_ID_FechCajaDesdeMsk
  loc_C32CC4: FStAdFunc var_E8
  loc_C32CC7: FLdPr var_E8
  loc_C32CCA: LateIdLdVar var_108 DispID_15 0
  loc_C32CD1: PopAd
  loc_C32CD3: LitI4 1
  loc_C32CD8: LitI4 1
  loc_C32CDD: LitVarStr var_148, "'yyyy-mm-dd'"
  loc_C32CE2: FStVarCopyObj var_158
  loc_C32CE5: FLdRfVar var_158
  loc_C32CE8: FLdRfVar var_108
  loc_C32CEB: CStrVarTmp
  loc_C32CEC: CVarStr var_128
  loc_C32CEF: ImpAdCallI2 Format$(, )
  loc_C32CF4: FStStr var_12C
  loc_C32CF7: FLdPr Me
  loc_C32CFA: VCallAd Control_ID_FechCajaHastaMsk
  loc_C32CFD: FStAdFunc var_15C
  loc_C32D00: FLdPr var_15C
  loc_C32D03: LateIdLdVar var_16C DispID_15 0
  loc_C32D0A: CStrVarTmp
  loc_C32D0B: CVarStr var_19C
  loc_C32D0E: FLdZeroAd var_12C
  loc_C32D11: CVarStr var_18C
  loc_C32D14: FLdRfVar var_E4
  loc_C32D17: LitVarI2 var_118, 1
  loc_C32D1C: HardType
  loc_C32D1D: EqVar var_F8
  loc_C32D21: FStVar var_17C
  loc_C32D25: FLdRfVar var_17C
  loc_C32D28: FLdRfVar var_1AC
  loc_C32D2B: ImpAdCallFPR4  = IIf(, , )
  loc_C32D30: FLdPr Me
  loc_C32D33: VCallAd Control_ID_StatusBar
  loc_C32D36: FStAdFunc var_1B0
  loc_C32D39: FLdPr var_1B0
  loc_C32D3C: LateIdLdVar var_1C0 DispID_1 0
  loc_C32D43: PopAd
  loc_C32D45: FLdRfVar var_1C2
  loc_C32D48: LitI4 0
  loc_C32D4D: LitI4 0
  loc_C32D52: FLdRfVar var_1C0
  loc_C32D55: CStrVarTmp
  loc_C32D56: FStStrNoPop var_A0
  loc_C32D59: LitI2_Byte 1
  loc_C32D5B: FLdRfVar var_1AC
  loc_C32D5E: CStrVarVal var_9C
  loc_C32D62: ImpAdLdI2 MemVar_C3D064
  loc_C32D65: FLdPr Me
  loc_C32D68: MemLdRfVar from_stack_1.global_60
  loc_C32D6B: NewIfNullPr clsasiento
  loc_C32D6E: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C32D73: FLdI2 var_1C2
  loc_C32D76: FStI2 var_92
  loc_C32D79: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C32D84: FFreeAd var_A4 = "": var_E8 = "": var_15C = ""
  loc_C32D8F: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_108 = "": var_128 = "": var_158 = "": var_16C = "": var_17C = "": var_18C = "": var_19C = "": var_1C0 = ""
  loc_C32DAA: FLdPr Me
  loc_C32DAD: MemLdI2 global_68
  loc_C32DB0: LitI2_Byte 0
  loc_C32DB2: EqI2
  loc_C32DB3: BranchF loc_C32DBF
  loc_C32DB6: FLdI2 var_92
  loc_C32DB9: FLdPr Me
  loc_C32DBC: MemStI2 global_68
  loc_C32DBF: FLdPr Me
  loc_C32DC2: MemLdI2 global_70
  loc_C32DC5: FLdI2 var_92
  loc_C32DC8: LtI2
  loc_C32DC9: BranchF loc_C32DD5
  loc_C32DCC: FLdI2 var_92
  loc_C32DCF: FLdPr Me
  loc_C32DD2: MemStI2 global_70
  loc_C32DD5: FLdPr Me
  loc_C32DD8: MemLdRfVar from_stack_1.global_52
  loc_C32DDB: NewIfNullPr clscaja
  loc_C32DDE: Call clscaja.MoveFirst()
  loc_C32DE3: LitI2_Byte 0
  loc_C32DE5: CR8I2
  loc_C32DE6: FStFPR8 var_90
  loc_C32DE9: FLdRfVar var_1C2
  loc_C32DEC: FLdPr Me
  loc_C32DEF: MemLdRfVar from_stack_1.global_52
  loc_C32DF2: NewIfNullPr clscaja
  loc_C32DF5: from_stack_1 = clscaja.EOF
  loc_C32DFA: FLdI2 var_1C2
  loc_C32DFD: NotI4
  loc_C32DFE: BranchF loc_C32F7D
  loc_C32E01: FLdRfVar var_15C
  loc_C32E04: LitVarStr var_118, "HabeCaau"
  loc_C32E09: PopAdLdVar
  loc_C32E0A: FLdRfVar var_E8
  loc_C32E0D: FLdRfVar var_A4
  loc_C32E10: FLdPr Me
  loc_C32E13: MemLdRfVar from_stack_1.global_52
  loc_C32E16: NewIfNullPr clscaja
  loc_C32E19: from_stack_1v = clscaja.RsFrmGet()
  loc_C32E1E: FLdPr var_A4
  loc_C32E21:  = Me.Fields
  loc_C32E26: FLdPr var_E8
  loc_C32E29: from_stack_2 = Me.Item(from_stack_1)
  loc_C32E2E: LitI4 2
  loc_C32E33: FLdRfVar var_90
  loc_C32E36: CVarRef
  loc_C32E3B: FLdRfVar var_B4
  loc_C32E3E: ImpAdCallFPR4  = Round(, )
  loc_C32E43: FLdRfVar var_B4
  loc_C32E46: LitI4 2
  loc_C32E4B: FLdZeroAd var_15C
  loc_C32E4E: CVarAd
  loc_C32E52: FLdRfVar var_E4
  loc_C32E55: ImpAdCallFPR4  = Round(, )
  loc_C32E5A: FLdRfVar var_E4
  loc_C32E5D: AddVar var_F8
  loc_C32E61: CR4Var
  loc_C32E62: FStFPR8 var_90
  loc_C32E65: FFreeAd var_A4 = ""
  loc_C32E6C: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C32E77: FLdRfVar var_B4
  loc_C32E7A: FLdRfVar var_15C
  loc_C32E7D: LitVarStr var_D4, "CodiCuco"
  loc_C32E82: PopAdLdVar
  loc_C32E83: FLdRfVar var_E8
  loc_C32E86: FLdRfVar var_A4
  loc_C32E89: FLdPr Me
  loc_C32E8C: MemLdRfVar from_stack_1.global_52
  loc_C32E8F: NewIfNullPr clscaja
  loc_C32E92: from_stack_1v = clscaja.RsFrmGet()
  loc_C32E97: FLdPr var_A4
  loc_C32E9A:  = Me.Fields
  loc_C32E9F: FLdPr var_E8
  loc_C32EA2: from_stack_2 = Me.Item(from_stack_1)
  loc_C32EA7: FLdPr var_15C
  loc_C32EAA:  = Me.Value
  loc_C32EAF: FLdRfVar var_C4
  loc_C32EB2: FLdRfVar var_1CC
  loc_C32EB5: LitVarStr var_118, "HabeCaau"
  loc_C32EBA: PopAdLdVar
  loc_C32EBB: FLdRfVar var_1C8
  loc_C32EBE: FLdRfVar var_1B0
  loc_C32EC1: FLdPr Me
  loc_C32EC4: MemLdRfVar from_stack_1.global_52
  loc_C32EC7: NewIfNullPr clscaja
  loc_C32ECA: from_stack_1v = clscaja.RsFrmGet()
  loc_C32ECF: FLdPr var_1B0
  loc_C32ED2:  = Me.Fields
  loc_C32ED7: FLdPr var_1C8
  loc_C32EDA: from_stack_2 = Me.Item(from_stack_1)
  loc_C32EDF: FLdPr var_1CC
  loc_C32EE2:  = Me.Value
  loc_C32EE7: FLdRfVar var_C4
  loc_C32EEA: CR4Var
  loc_C32EEB: PopFPR8
  loc_C32EEC: LitI2_Byte 0
  loc_C32EEE: CR8I2
  loc_C32EEF: PopFPR8
  loc_C32EF0: FLdRfVar var_B4
  loc_C32EF3: CStrVarTmp
  loc_C32EF4: FStStrNoPop var_98
  loc_C32EF7: FLdI2 var_92
  loc_C32EFA: ImpAdLdI2 MemVar_C3D064
  loc_C32EFD: FLdPr Me
  loc_C32F00: MemLdRfVar from_stack_1.global_60
  loc_C32F03: NewIfNullPr clsasiento
  loc_C32F06: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C32F0B: FFree1Str var_98
  loc_C32F0E: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C32F1D: FFreeVar var_B4 = ""
  loc_C32F24: FLdRfVar var_1D0
  loc_C32F27: FLdPr Me
  loc_C32F2A: MemLdRfVar from_stack_1.global_52
  loc_C32F2D: NewIfNullPr clscaja
  loc_C32F30: from_stack_1 = clscaja.RecordCount
  loc_C32F35: FLdRfVar var_138
  loc_C32F38: FLdPr Me
  loc_C32F3B: MemLdRfVar from_stack_1.global_52
  loc_C32F3E: NewIfNullPr clscaja
  loc_C32F41: from_stack_1 = clscaja.AbsolutePosition
  loc_C32F46: ILdRf var_138
  loc_C32F49: CR8I4
  loc_C32F4A: ILdRf var_1D0
  loc_C32F4D: CR8I4
  loc_C32F4E: DivR8
  loc_C32F4F: LitI2_Byte &H64
  loc_C32F51: CR8I2
  loc_C32F52: MulR8
  loc_C32F53: CVarR4
  loc_C32F57: PopAdLdVar
  loc_C32F58: FLdPr Me
  loc_C32F5B: VCallAd Control_ID_ProgressBar
  loc_C32F5E: FStAdFunc var_A4
  loc_C32F61: FLdPr var_A4
  loc_C32F64: LateIdSt
  loc_C32F69: FFree1Ad var_A4
  loc_C32F6C: FLdPr Me
  loc_C32F6F: MemLdRfVar from_stack_1.global_52
  loc_C32F72: NewIfNullPr clscaja
  loc_C32F75: Call clscaja.MoveSiguiente()
  loc_C32F7A: Branch loc_C32DE9
  loc_C32F7D: FLdRfVar var_B4
  loc_C32F80: FLdRfVar var_15C
  loc_C32F83: LitVarStr var_D4, "CaerPaco"
  loc_C32F88: PopAdLdVar
  loc_C32F89: FLdRfVar var_E8
  loc_C32F8C: FLdRfVar var_A4
  loc_C32F8F: FLdPr Me
  loc_C32F92: MemLdRfVar from_stack_1.global_56
  loc_C32F95: NewIfNullPr clsparaconta
  loc_C32F98: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C32F9D: FLdPr var_A4
  loc_C32FA0:  = Me.Fields
  loc_C32FA5: FLdPr var_E8
  loc_C32FA8: from_stack_2 = Me.Item(from_stack_1)
  loc_C32FAD: FLdPr var_15C
  loc_C32FB0:  = Me.Value
  loc_C32FB5: LitI2_Byte 0
  loc_C32FB7: CR8I2
  loc_C32FB8: PopFPR8
  loc_C32FB9: FLdR8 var_90
  loc_C32FBC: FLdRfVar var_B4
  loc_C32FBF: CStrVarTmp
  loc_C32FC0: FStStrNoPop var_98
  loc_C32FC3: FLdI2 var_92
  loc_C32FC6: ImpAdLdI2 MemVar_C3D064
  loc_C32FC9: FLdPr Me
  loc_C32FCC: MemLdRfVar from_stack_1.global_60
  loc_C32FCF: NewIfNullPr clsasiento
  loc_C32FD2: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C32FD7: FFree1Str var_98
  loc_C32FDA: FFreeAd var_A4 = "": var_E8 = ""
  loc_C32FE3: FFree1Var var_B4 = ""
  loc_C32FE6: LitVarStr var_D4, "Asiento Automático de Autorizados Originales - Disminuciones"
  loc_C32FEB: PopAdLdVar
  loc_C32FEC: FLdPr Me
  loc_C32FEF: VCallAd Control_ID_StatusBar
  loc_C32FF2: FStAdFunc var_A4
  loc_C32FF5: FLdPr var_A4
  loc_C32FF8: LateIdSt
  loc_C32FFD: FFree1Ad var_A4
  loc_C33000: LitStr "SELECT CodiCuco, Sum(DebeCaau) DebeCaau"
  loc_C33003: LitStr " FROM cajaauto"
  loc_C33006: ConcatStr
  loc_C33007: FStStrNoPop var_98
  loc_C3300A: LitStr " WHERE PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C3300D: ConcatStr
  loc_C3300E: FStStrNoPop var_9C
  loc_C33011: LitStr " AND ModiCaau = 0"
  loc_C33014: ConcatStr
  loc_C33015: FStStrNoPop var_A0
  loc_C33018: LitStr " AND DebeCaau > 0"
  loc_C3301B: ConcatStr
  loc_C3301C: FStStrNoPop var_12C
  loc_C3301F: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C33022: ConcatStr
  loc_C33023: FStStrNoPop var_130
  loc_C33026: FLdPr Me
  loc_C33029: MemLdRfVar from_stack_1.global_52
  loc_C3302C: NewIfNullPr clscaja
  loc_C3302F: Call clscaja.RedefineRS(from_stack_1v)
  loc_C33034: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C33041: FLdRfVar var_138
  loc_C33044: FLdPr Me
  loc_C33047: MemLdRfVar from_stack_1.global_52
  loc_C3304A: NewIfNullPr clscaja
  loc_C3304D: from_stack_1 = clscaja.RecordCount
  loc_C33052: ILdRf var_138
  loc_C33055: LitI4 0
  loc_C3305A: GtI4
  loc_C3305B: BranchF loc_C333AB
  loc_C3305E: FLdPr Me
  loc_C33061: VCallAd Control_ID_FechCajaHastaMsk
  loc_C33064: FStAdFunc var_A4
  loc_C33067: FLdPr var_A4
  loc_C3306A: LateIdLdVar var_B4 DispID_15 0
  loc_C33071: CStrVarTmp
  loc_C33072: FStStrNoPop var_98
  loc_C33075: CDateStr
  loc_C33077: CVarDate var_C4
  loc_C3307B: FLdRfVar var_E4
  loc_C3307E: ImpAdCallFPR4  = Month()
  loc_C33083: FLdPr Me
  loc_C33086: VCallAd Control_ID_FechCajaDesdeMsk
  loc_C33089: FStAdFunc var_E8
  loc_C3308C: FLdPr var_E8
  loc_C3308F: LateIdLdVar var_108 DispID_15 0
  loc_C33096: PopAd
  loc_C33098: LitI4 1
  loc_C3309D: LitI4 1
  loc_C330A2: LitVarStr var_148, "'yyyy-mm-dd'"
  loc_C330A7: FStVarCopyObj var_158
  loc_C330AA: FLdRfVar var_158
  loc_C330AD: FLdRfVar var_108
  loc_C330B0: CStrVarTmp
  loc_C330B1: CVarStr var_128
  loc_C330B4: ImpAdCallI2 Format$(, )
  loc_C330B9: FStStr var_12C
  loc_C330BC: FLdPr Me
  loc_C330BF: VCallAd Control_ID_FechCajaHastaMsk
  loc_C330C2: FStAdFunc var_15C
  loc_C330C5: FLdPr var_15C
  loc_C330C8: LateIdLdVar var_16C DispID_15 0
  loc_C330CF: CStrVarTmp
  loc_C330D0: CVarStr var_19C
  loc_C330D3: FLdZeroAd var_12C
  loc_C330D6: CVarStr var_18C
  loc_C330D9: FLdRfVar var_E4
  loc_C330DC: LitVarI2 var_118, 1
  loc_C330E1: HardType
  loc_C330E2: EqVar var_F8
  loc_C330E6: FStVar var_17C
  loc_C330EA: FLdRfVar var_17C
  loc_C330ED: FLdRfVar var_1AC
  loc_C330F0: ImpAdCallFPR4  = IIf(, , )
  loc_C330F5: FLdPr Me
  loc_C330F8: VCallAd Control_ID_StatusBar
  loc_C330FB: FStAdFunc var_1B0
  loc_C330FE: FLdPr var_1B0
  loc_C33101: LateIdLdVar var_1C0 DispID_1 0
  loc_C33108: PopAd
  loc_C3310A: FLdRfVar var_1C2
  loc_C3310D: LitI4 0
  loc_C33112: LitI4 0
  loc_C33117: FLdRfVar var_1C0
  loc_C3311A: CStrVarTmp
  loc_C3311B: FStStrNoPop var_A0
  loc_C3311E: LitI2_Byte 1
  loc_C33120: FLdRfVar var_1AC
  loc_C33123: CStrVarVal var_9C
  loc_C33127: ImpAdLdI2 MemVar_C3D064
  loc_C3312A: FLdPr Me
  loc_C3312D: MemLdRfVar from_stack_1.global_60
  loc_C33130: NewIfNullPr clsasiento
  loc_C33133: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C33138: FLdI2 var_1C2
  loc_C3313B: FStI2 var_92
  loc_C3313E: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C33149: FFreeAd var_A4 = "": var_E8 = "": var_15C = ""
  loc_C33154: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_108 = "": var_128 = "": var_158 = "": var_16C = "": var_17C = "": var_18C = "": var_19C = "": var_1C0 = ""
  loc_C3316F: FLdPr Me
  loc_C33172: MemLdI2 global_68
  loc_C33175: LitI2_Byte 0
  loc_C33177: EqI2
  loc_C33178: BranchF loc_C33184
  loc_C3317B: FLdI2 var_92
  loc_C3317E: FLdPr Me
  loc_C33181: MemStI2 global_68
  loc_C33184: FLdPr Me
  loc_C33187: MemLdI2 global_70
  loc_C3318A: FLdI2 var_92
  loc_C3318D: LtI2
  loc_C3318E: BranchF loc_C3319A
  loc_C33191: FLdI2 var_92
  loc_C33194: FLdPr Me
  loc_C33197: MemStI2 global_70
  loc_C3319A: FLdPr Me
  loc_C3319D: MemLdRfVar from_stack_1.global_52
  loc_C331A0: NewIfNullPr clscaja
  loc_C331A3: Call clscaja.MoveFirst()
  loc_C331A8: LitI2_Byte 0
  loc_C331AA: CR8I2
  loc_C331AB: FStFPR8 var_90
  loc_C331AE: FLdRfVar var_1C2
  loc_C331B1: FLdPr Me
  loc_C331B4: MemLdRfVar from_stack_1.global_52
  loc_C331B7: NewIfNullPr clscaja
  loc_C331BA: from_stack_1 = clscaja.EOF
  loc_C331BF: FLdI2 var_1C2
  loc_C331C2: NotI4
  loc_C331C3: BranchF loc_C33342
  loc_C331C6: FLdRfVar var_15C
  loc_C331C9: LitVarStr var_118, "DebeCaau"
  loc_C331CE: PopAdLdVar
  loc_C331CF: FLdRfVar var_E8
  loc_C331D2: FLdRfVar var_A4
  loc_C331D5: FLdPr Me
  loc_C331D8: MemLdRfVar from_stack_1.global_52
  loc_C331DB: NewIfNullPr clscaja
  loc_C331DE: from_stack_1v = clscaja.RsFrmGet()
  loc_C331E3: FLdPr var_A4
  loc_C331E6:  = Me.Fields
  loc_C331EB: FLdPr var_E8
  loc_C331EE: from_stack_2 = Me.Item(from_stack_1)
  loc_C331F3: LitI4 2
  loc_C331F8: FLdRfVar var_90
  loc_C331FB: CVarRef
  loc_C33200: FLdRfVar var_B4
  loc_C33203: ImpAdCallFPR4  = Round(, )
  loc_C33208: FLdRfVar var_B4
  loc_C3320B: LitI4 2
  loc_C33210: FLdZeroAd var_15C
  loc_C33213: CVarAd
  loc_C33217: FLdRfVar var_E4
  loc_C3321A: ImpAdCallFPR4  = Round(, )
  loc_C3321F: FLdRfVar var_E4
  loc_C33222: AddVar var_F8
  loc_C33226: CR4Var
  loc_C33227: FStFPR8 var_90
  loc_C3322A: FFreeAd var_A4 = ""
  loc_C33231: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3323C: FLdRfVar var_B4
  loc_C3323F: FLdRfVar var_15C
  loc_C33242: LitVarStr var_D4, "CodiCuco"
  loc_C33247: PopAdLdVar
  loc_C33248: FLdRfVar var_E8
  loc_C3324B: FLdRfVar var_A4
  loc_C3324E: FLdPr Me
  loc_C33251: MemLdRfVar from_stack_1.global_52
  loc_C33254: NewIfNullPr clscaja
  loc_C33257: from_stack_1v = clscaja.RsFrmGet()
  loc_C3325C: FLdPr var_A4
  loc_C3325F:  = Me.Fields
  loc_C33264: FLdPr var_E8
  loc_C33267: from_stack_2 = Me.Item(from_stack_1)
  loc_C3326C: FLdPr var_15C
  loc_C3326F:  = Me.Value
  loc_C33274: FLdRfVar var_C4
  loc_C33277: FLdRfVar var_1CC
  loc_C3327A: LitVarStr var_118, "DebeCaau"
  loc_C3327F: PopAdLdVar
  loc_C33280: FLdRfVar var_1C8
  loc_C33283: FLdRfVar var_1B0
  loc_C33286: FLdPr Me
  loc_C33289: MemLdRfVar from_stack_1.global_52
  loc_C3328C: NewIfNullPr clscaja
  loc_C3328F: from_stack_1v = clscaja.RsFrmGet()
  loc_C33294: FLdPr var_1B0
  loc_C33297:  = Me.Fields
  loc_C3329C: FLdPr var_1C8
  loc_C3329F: from_stack_2 = Me.Item(from_stack_1)
  loc_C332A4: FLdPr var_1CC
  loc_C332A7:  = Me.Value
  loc_C332AC: LitI2_Byte 0
  loc_C332AE: CR8I2
  loc_C332AF: PopFPR8
  loc_C332B0: FLdRfVar var_C4
  loc_C332B3: CR4Var
  loc_C332B4: PopFPR8
  loc_C332B5: FLdRfVar var_B4
  loc_C332B8: CStrVarTmp
  loc_C332B9: FStStrNoPop var_98
  loc_C332BC: FLdI2 var_92
  loc_C332BF: ImpAdLdI2 MemVar_C3D064
  loc_C332C2: FLdPr Me
  loc_C332C5: MemLdRfVar from_stack_1.global_60
  loc_C332C8: NewIfNullPr clsasiento
  loc_C332CB: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C332D0: FFree1Str var_98
  loc_C332D3: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C332E2: FFreeVar var_B4 = ""
  loc_C332E9: FLdRfVar var_1D0
  loc_C332EC: FLdPr Me
  loc_C332EF: MemLdRfVar from_stack_1.global_52
  loc_C332F2: NewIfNullPr clscaja
  loc_C332F5: from_stack_1 = clscaja.RecordCount
  loc_C332FA: FLdRfVar var_138
  loc_C332FD: FLdPr Me
  loc_C33300: MemLdRfVar from_stack_1.global_52
  loc_C33303: NewIfNullPr clscaja
  loc_C33306: from_stack_1 = clscaja.AbsolutePosition
  loc_C3330B: ILdRf var_138
  loc_C3330E: CR8I4
  loc_C3330F: ILdRf var_1D0
  loc_C33312: CR8I4
  loc_C33313: DivR8
  loc_C33314: LitI2_Byte &H64
  loc_C33316: CR8I2
  loc_C33317: MulR8
  loc_C33318: CVarR4
  loc_C3331C: PopAdLdVar
  loc_C3331D: FLdPr Me
  loc_C33320: VCallAd Control_ID_ProgressBar
  loc_C33323: FStAdFunc var_A4
  loc_C33326: FLdPr var_A4
  loc_C33329: LateIdSt
  loc_C3332E: FFree1Ad var_A4
  loc_C33331: FLdPr Me
  loc_C33334: MemLdRfVar from_stack_1.global_52
  loc_C33337: NewIfNullPr clscaja
  loc_C3333A: Call clscaja.MoveSiguiente()
  loc_C3333F: Branch loc_C331AE
  loc_C33342: FLdRfVar var_B4
  loc_C33345: FLdRfVar var_15C
  loc_C33348: LitVarStr var_D4, "CaerPaco"
  loc_C3334D: PopAdLdVar
  loc_C3334E: FLdRfVar var_E8
  loc_C33351: FLdRfVar var_A4
  loc_C33354: FLdPr Me
  loc_C33357: MemLdRfVar from_stack_1.global_56
  loc_C3335A: NewIfNullPr clsparaconta
  loc_C3335D: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C33362: FLdPr var_A4
  loc_C33365:  = Me.Fields
  loc_C3336A: FLdPr var_E8
  loc_C3336D: from_stack_2 = Me.Item(from_stack_1)
  loc_C33372: FLdPr var_15C
  loc_C33375:  = Me.Value
  loc_C3337A: FLdR8 var_90
  loc_C3337D: LitI2_Byte 0
  loc_C3337F: CR8I2
  loc_C33380: PopFPR8
  loc_C33381: FLdRfVar var_B4
  loc_C33384: CStrVarTmp
  loc_C33385: FStStrNoPop var_98
  loc_C33388: FLdI2 var_92
  loc_C3338B: ImpAdLdI2 MemVar_C3D064
  loc_C3338E: FLdPr Me
  loc_C33391: MemLdRfVar from_stack_1.global_60
  loc_C33394: NewIfNullPr clsasiento
  loc_C33397: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3339C: FFree1Str var_98
  loc_C3339F: FFreeAd var_A4 = "": var_E8 = ""
  loc_C333A8: FFree1Var var_B4 = ""
  loc_C333AB: LitVarStr var_D4, "Asiento Automático de Aumentos al Presupuesto de Gastos"
  loc_C333B0: PopAdLdVar
  loc_C333B1: FLdPr Me
  loc_C333B4: VCallAd Control_ID_StatusBar
  loc_C333B7: FStAdFunc var_A4
  loc_C333BA: FLdPr var_A4
  loc_C333BD: LateIdSt
  loc_C333C2: FFree1Ad var_A4
  loc_C333C5: LitStr "SELECT CodiCuco, Sum(HabeCaau) HabeCaau"
  loc_C333C8: LitStr " FROM cajaauto"
  loc_C333CB: ConcatStr
  loc_C333CC: FStStrNoPop var_98
  loc_C333CF: LitStr " WHERE PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C333D2: ConcatStr
  loc_C333D3: FStStrNoPop var_9C
  loc_C333D6: LitStr " AND ModiCaau = 1"
  loc_C333D9: ConcatStr
  loc_C333DA: FStStrNoPop var_A0
  loc_C333DD: LitStr " AND HabeCaau > 0"
  loc_C333E0: ConcatStr
  loc_C333E1: FStStrNoPop var_12C
  loc_C333E4: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C333E7: ConcatStr
  loc_C333E8: FStStrNoPop var_130
  loc_C333EB: FLdPr Me
  loc_C333EE: MemLdRfVar from_stack_1.global_52
  loc_C333F1: NewIfNullPr clscaja
  loc_C333F4: Call clscaja.RedefineRS(from_stack_1v)
  loc_C333F9: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C33406: FLdRfVar var_138
  loc_C33409: FLdPr Me
  loc_C3340C: MemLdRfVar from_stack_1.global_52
  loc_C3340F: NewIfNullPr clscaja
  loc_C33412: from_stack_1 = clscaja.RecordCount
  loc_C33417: ILdRf var_138
  loc_C3341A: LitI4 0
  loc_C3341F: GtI4
  loc_C33420: BranchF loc_C336D2
  loc_C33423: FLdPr Me
  loc_C33426: VCallAd Control_ID_FechCajaHastaMsk
  loc_C33429: FStAdFunc var_A4
  loc_C3342C: FLdPr var_A4
  loc_C3342F: LateIdLdVar var_B4 DispID_15 0
  loc_C33436: PopAd
  loc_C33438: FLdPr Me
  loc_C3343B: VCallAd Control_ID_StatusBar
  loc_C3343E: FStAdFunc var_E8
  loc_C33441: FLdPr var_E8
  loc_C33444: LateIdLdVar var_C4 DispID_1 0
  loc_C3344B: PopAd
  loc_C3344D: FLdRfVar var_1C2
  loc_C33450: LitI4 0
  loc_C33455: LitI4 0
  loc_C3345A: FLdRfVar var_C4
  loc_C3345D: CStrVarTmp
  loc_C3345E: FStStrNoPop var_9C
  loc_C33461: LitI2_Byte &HE
  loc_C33463: FLdRfVar var_B4
  loc_C33466: CStrVarTmp
  loc_C33467: FStStrNoPop var_98
  loc_C3346A: ImpAdLdI2 MemVar_C3D064
  loc_C3346D: FLdPr Me
  loc_C33470: MemLdRfVar from_stack_1.global_60
  loc_C33473: NewIfNullPr clsasiento
  loc_C33476: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3347B: FLdI2 var_1C2
  loc_C3347E: FStI2 var_92
  loc_C33481: FFreeStr var_98 = ""
  loc_C33488: FFreeAd var_A4 = ""
  loc_C3348F: FFreeVar var_B4 = ""
  loc_C33496: FLdPr Me
  loc_C33499: MemLdI2 global_68
  loc_C3349C: LitI2_Byte 0
  loc_C3349E: EqI2
  loc_C3349F: BranchF loc_C334AB
  loc_C334A2: FLdI2 var_92
  loc_C334A5: FLdPr Me
  loc_C334A8: MemStI2 global_68
  loc_C334AB: FLdPr Me
  loc_C334AE: MemLdI2 global_70
  loc_C334B1: FLdI2 var_92
  loc_C334B4: LtI2
  loc_C334B5: BranchF loc_C334C1
  loc_C334B8: FLdI2 var_92
  loc_C334BB: FLdPr Me
  loc_C334BE: MemStI2 global_70
  loc_C334C1: FLdPr Me
  loc_C334C4: MemLdRfVar from_stack_1.global_52
  loc_C334C7: NewIfNullPr clscaja
  loc_C334CA: Call clscaja.MoveFirst()
  loc_C334CF: LitI2_Byte 0
  loc_C334D1: CR8I2
  loc_C334D2: FStFPR8 var_90
  loc_C334D5: FLdRfVar var_1C2
  loc_C334D8: FLdPr Me
  loc_C334DB: MemLdRfVar from_stack_1.global_52
  loc_C334DE: NewIfNullPr clscaja
  loc_C334E1: from_stack_1 = clscaja.EOF
  loc_C334E6: FLdI2 var_1C2
  loc_C334E9: NotI4
  loc_C334EA: BranchF loc_C33669
  loc_C334ED: FLdRfVar var_15C
  loc_C334F0: LitVarStr var_118, "HabeCaau"
  loc_C334F5: PopAdLdVar
  loc_C334F6: FLdRfVar var_E8
  loc_C334F9: FLdRfVar var_A4
  loc_C334FC: FLdPr Me
  loc_C334FF: MemLdRfVar from_stack_1.global_52
  loc_C33502: NewIfNullPr clscaja
  loc_C33505: from_stack_1v = clscaja.RsFrmGet()
  loc_C3350A: FLdPr var_A4
  loc_C3350D:  = Me.Fields
  loc_C33512: FLdPr var_E8
  loc_C33515: from_stack_2 = Me.Item(from_stack_1)
  loc_C3351A: LitI4 2
  loc_C3351F: FLdRfVar var_90
  loc_C33522: CVarRef
  loc_C33527: FLdRfVar var_B4
  loc_C3352A: ImpAdCallFPR4  = Round(, )
  loc_C3352F: FLdRfVar var_B4
  loc_C33532: LitI4 2
  loc_C33537: FLdZeroAd var_15C
  loc_C3353A: CVarAd
  loc_C3353E: FLdRfVar var_E4
  loc_C33541: ImpAdCallFPR4  = Round(, )
  loc_C33546: FLdRfVar var_E4
  loc_C33549: AddVar var_F8
  loc_C3354D: CR4Var
  loc_C3354E: FStFPR8 var_90
  loc_C33551: FFreeAd var_A4 = ""
  loc_C33558: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C33563: FLdRfVar var_B4
  loc_C33566: FLdRfVar var_15C
  loc_C33569: LitVarStr var_D4, "CodiCuco"
  loc_C3356E: PopAdLdVar
  loc_C3356F: FLdRfVar var_E8
  loc_C33572: FLdRfVar var_A4
  loc_C33575: FLdPr Me
  loc_C33578: MemLdRfVar from_stack_1.global_52
  loc_C3357B: NewIfNullPr clscaja
  loc_C3357E: from_stack_1v = clscaja.RsFrmGet()
  loc_C33583: FLdPr var_A4
  loc_C33586:  = Me.Fields
  loc_C3358B: FLdPr var_E8
  loc_C3358E: from_stack_2 = Me.Item(from_stack_1)
  loc_C33593: FLdPr var_15C
  loc_C33596:  = Me.Value
  loc_C3359B: FLdRfVar var_C4
  loc_C3359E: FLdRfVar var_1CC
  loc_C335A1: LitVarStr var_118, "HabeCaau"
  loc_C335A6: PopAdLdVar
  loc_C335A7: FLdRfVar var_1C8
  loc_C335AA: FLdRfVar var_1B0
  loc_C335AD: FLdPr Me
  loc_C335B0: MemLdRfVar from_stack_1.global_52
  loc_C335B3: NewIfNullPr clscaja
  loc_C335B6: from_stack_1v = clscaja.RsFrmGet()
  loc_C335BB: FLdPr var_1B0
  loc_C335BE:  = Me.Fields
  loc_C335C3: FLdPr var_1C8
  loc_C335C6: from_stack_2 = Me.Item(from_stack_1)
  loc_C335CB: FLdPr var_1CC
  loc_C335CE:  = Me.Value
  loc_C335D3: FLdRfVar var_C4
  loc_C335D6: CR4Var
  loc_C335D7: PopFPR8
  loc_C335D8: LitI2_Byte 0
  loc_C335DA: CR8I2
  loc_C335DB: PopFPR8
  loc_C335DC: FLdRfVar var_B4
  loc_C335DF: CStrVarTmp
  loc_C335E0: FStStrNoPop var_98
  loc_C335E3: FLdI2 var_92
  loc_C335E6: ImpAdLdI2 MemVar_C3D064
  loc_C335E9: FLdPr Me
  loc_C335EC: MemLdRfVar from_stack_1.global_60
  loc_C335EF: NewIfNullPr clsasiento
  loc_C335F2: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C335F7: FFree1Str var_98
  loc_C335FA: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C33609: FFreeVar var_B4 = ""
  loc_C33610: FLdRfVar var_1D0
  loc_C33613: FLdPr Me
  loc_C33616: MemLdRfVar from_stack_1.global_52
  loc_C33619: NewIfNullPr clscaja
  loc_C3361C: from_stack_1 = clscaja.RecordCount
  loc_C33621: FLdRfVar var_138
  loc_C33624: FLdPr Me
  loc_C33627: MemLdRfVar from_stack_1.global_52
  loc_C3362A: NewIfNullPr clscaja
  loc_C3362D: from_stack_1 = clscaja.AbsolutePosition
  loc_C33632: ILdRf var_138
  loc_C33635: CR8I4
  loc_C33636: ILdRf var_1D0
  loc_C33639: CR8I4
  loc_C3363A: DivR8
  loc_C3363B: LitI2_Byte &H64
  loc_C3363D: CR8I2
  loc_C3363E: MulR8
  loc_C3363F: CVarR4
  loc_C33643: PopAdLdVar
  loc_C33644: FLdPr Me
  loc_C33647: VCallAd Control_ID_ProgressBar
  loc_C3364A: FStAdFunc var_A4
  loc_C3364D: FLdPr var_A4
  loc_C33650: LateIdSt
  loc_C33655: FFree1Ad var_A4
  loc_C33658: FLdPr Me
  loc_C3365B: MemLdRfVar from_stack_1.global_52
  loc_C3365E: NewIfNullPr clscaja
  loc_C33661: Call clscaja.MoveSiguiente()
  loc_C33666: Branch loc_C334D5
  loc_C33669: FLdRfVar var_B4
  loc_C3366C: FLdRfVar var_15C
  loc_C3366F: LitVarStr var_D4, "CaerPaco"
  loc_C33674: PopAdLdVar
  loc_C33675: FLdRfVar var_E8
  loc_C33678: FLdRfVar var_A4
  loc_C3367B: FLdPr Me
  loc_C3367E: MemLdRfVar from_stack_1.global_56
  loc_C33681: NewIfNullPr clsparaconta
  loc_C33684: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C33689: FLdPr var_A4
  loc_C3368C:  = Me.Fields
  loc_C33691: FLdPr var_E8
  loc_C33694: from_stack_2 = Me.Item(from_stack_1)
  loc_C33699: FLdPr var_15C
  loc_C3369C:  = Me.Value
  loc_C336A1: LitI2_Byte 0
  loc_C336A3: CR8I2
  loc_C336A4: PopFPR8
  loc_C336A5: FLdR8 var_90
  loc_C336A8: FLdRfVar var_B4
  loc_C336AB: CStrVarTmp
  loc_C336AC: FStStrNoPop var_98
  loc_C336AF: FLdI2 var_92
  loc_C336B2: ImpAdLdI2 MemVar_C3D064
  loc_C336B5: FLdPr Me
  loc_C336B8: MemLdRfVar from_stack_1.global_60
  loc_C336BB: NewIfNullPr clsasiento
  loc_C336BE: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C336C3: FFree1Str var_98
  loc_C336C6: FFreeAd var_A4 = "": var_E8 = ""
  loc_C336CF: FFree1Var var_B4 = ""
  loc_C336D2: LitVarStr var_D4, "Asiento Automático de Disminuciones al Presupuesto de Gastos"
  loc_C336D7: PopAdLdVar
  loc_C336D8: FLdPr Me
  loc_C336DB: VCallAd Control_ID_StatusBar
  loc_C336DE: FStAdFunc var_A4
  loc_C336E1: FLdPr var_A4
  loc_C336E4: LateIdSt
  loc_C336E9: FFree1Ad var_A4
  loc_C336EC: LitStr "SELECT CodiCuco, Sum(DebeCaau) DebeCaau"
  loc_C336EF: LitStr " FROM cajaauto"
  loc_C336F2: ConcatStr
  loc_C336F3: FStStrNoPop var_98
  loc_C336F6: LitStr " WHERE PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C336F9: ConcatStr
  loc_C336FA: FStStrNoPop var_9C
  loc_C336FD: LitStr " AND ModiCaau = 1"
  loc_C33700: ConcatStr
  loc_C33701: FStStrNoPop var_A0
  loc_C33704: LitStr " AND DebeCaau > 0"
  loc_C33707: ConcatStr
  loc_C33708: FStStrNoPop var_12C
  loc_C3370B: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C3370E: ConcatStr
  loc_C3370F: FStStrNoPop var_130
  loc_C33712: FLdPr Me
  loc_C33715: MemLdRfVar from_stack_1.global_52
  loc_C33718: NewIfNullPr clscaja
  loc_C3371B: Call clscaja.RedefineRS(from_stack_1v)
  loc_C33720: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C3372D: FLdRfVar var_138
  loc_C33730: FLdPr Me
  loc_C33733: MemLdRfVar from_stack_1.global_52
  loc_C33736: NewIfNullPr clscaja
  loc_C33739: from_stack_1 = clscaja.RecordCount
  loc_C3373E: ILdRf var_138
  loc_C33741: LitI4 0
  loc_C33746: GtI4
  loc_C33747: BranchF loc_C339F9
  loc_C3374A: FLdPr Me
  loc_C3374D: VCallAd Control_ID_FechCajaHastaMsk
  loc_C33750: FStAdFunc var_A4
  loc_C33753: FLdPr var_A4
  loc_C33756: LateIdLdVar var_B4 DispID_15 0
  loc_C3375D: PopAd
  loc_C3375F: FLdPr Me
  loc_C33762: VCallAd Control_ID_StatusBar
  loc_C33765: FStAdFunc var_E8
  loc_C33768: FLdPr var_E8
  loc_C3376B: LateIdLdVar var_C4 DispID_1 0
  loc_C33772: PopAd
  loc_C33774: FLdRfVar var_1C2
  loc_C33777: LitI4 0
  loc_C3377C: LitI4 0
  loc_C33781: FLdRfVar var_C4
  loc_C33784: CStrVarTmp
  loc_C33785: FStStrNoPop var_9C
  loc_C33788: LitI2_Byte &HE
  loc_C3378A: FLdRfVar var_B4
  loc_C3378D: CStrVarTmp
  loc_C3378E: FStStrNoPop var_98
  loc_C33791: ImpAdLdI2 MemVar_C3D064
  loc_C33794: FLdPr Me
  loc_C33797: MemLdRfVar from_stack_1.global_60
  loc_C3379A: NewIfNullPr clsasiento
  loc_C3379D: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C337A2: FLdI2 var_1C2
  loc_C337A5: FStI2 var_92
  loc_C337A8: FFreeStr var_98 = ""
  loc_C337AF: FFreeAd var_A4 = ""
  loc_C337B6: FFreeVar var_B4 = ""
  loc_C337BD: FLdPr Me
  loc_C337C0: MemLdI2 global_68
  loc_C337C3: LitI2_Byte 0
  loc_C337C5: EqI2
  loc_C337C6: BranchF loc_C337D2
  loc_C337C9: FLdI2 var_92
  loc_C337CC: FLdPr Me
  loc_C337CF: MemStI2 global_68
  loc_C337D2: FLdPr Me
  loc_C337D5: MemLdI2 global_70
  loc_C337D8: FLdI2 var_92
  loc_C337DB: LtI2
  loc_C337DC: BranchF loc_C337E8
  loc_C337DF: FLdI2 var_92
  loc_C337E2: FLdPr Me
  loc_C337E5: MemStI2 global_70
  loc_C337E8: FLdPr Me
  loc_C337EB: MemLdRfVar from_stack_1.global_52
  loc_C337EE: NewIfNullPr clscaja
  loc_C337F1: Call clscaja.MoveFirst()
  loc_C337F6: LitI2_Byte 0
  loc_C337F8: CR8I2
  loc_C337F9: FStFPR8 var_90
  loc_C337FC: FLdRfVar var_1C2
  loc_C337FF: FLdPr Me
  loc_C33802: MemLdRfVar from_stack_1.global_52
  loc_C33805: NewIfNullPr clscaja
  loc_C33808: from_stack_1 = clscaja.EOF
  loc_C3380D: FLdI2 var_1C2
  loc_C33810: NotI4
  loc_C33811: BranchF loc_C33990
  loc_C33814: FLdRfVar var_15C
  loc_C33817: LitVarStr var_118, "DebeCaau"
  loc_C3381C: PopAdLdVar
  loc_C3381D: FLdRfVar var_E8
  loc_C33820: FLdRfVar var_A4
  loc_C33823: FLdPr Me
  loc_C33826: MemLdRfVar from_stack_1.global_52
  loc_C33829: NewIfNullPr clscaja
  loc_C3382C: from_stack_1v = clscaja.RsFrmGet()
  loc_C33831: FLdPr var_A4
  loc_C33834:  = Me.Fields
  loc_C33839: FLdPr var_E8
  loc_C3383C: from_stack_2 = Me.Item(from_stack_1)
  loc_C33841: LitI4 2
  loc_C33846: FLdRfVar var_90
  loc_C33849: CVarRef
  loc_C3384E: FLdRfVar var_B4
  loc_C33851: ImpAdCallFPR4  = Round(, )
  loc_C33856: FLdRfVar var_B4
  loc_C33859: LitI4 2
  loc_C3385E: FLdZeroAd var_15C
  loc_C33861: CVarAd
  loc_C33865: FLdRfVar var_E4
  loc_C33868: ImpAdCallFPR4  = Round(, )
  loc_C3386D: FLdRfVar var_E4
  loc_C33870: AddVar var_F8
  loc_C33874: CR4Var
  loc_C33875: FStFPR8 var_90
  loc_C33878: FFreeAd var_A4 = ""
  loc_C3387F: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3388A: FLdRfVar var_B4
  loc_C3388D: FLdRfVar var_15C
  loc_C33890: LitVarStr var_D4, "CodiCuco"
  loc_C33895: PopAdLdVar
  loc_C33896: FLdRfVar var_E8
  loc_C33899: FLdRfVar var_A4
  loc_C3389C: FLdPr Me
  loc_C3389F: MemLdRfVar from_stack_1.global_52
  loc_C338A2: NewIfNullPr clscaja
  loc_C338A5: from_stack_1v = clscaja.RsFrmGet()
  loc_C338AA: FLdPr var_A4
  loc_C338AD:  = Me.Fields
  loc_C338B2: FLdPr var_E8
  loc_C338B5: from_stack_2 = Me.Item(from_stack_1)
  loc_C338BA: FLdPr var_15C
  loc_C338BD:  = Me.Value
  loc_C338C2: FLdRfVar var_C4
  loc_C338C5: FLdRfVar var_1CC
  loc_C338C8: LitVarStr var_118, "DebeCaau"
  loc_C338CD: PopAdLdVar
  loc_C338CE: FLdRfVar var_1C8
  loc_C338D1: FLdRfVar var_1B0
  loc_C338D4: FLdPr Me
  loc_C338D7: MemLdRfVar from_stack_1.global_52
  loc_C338DA: NewIfNullPr clscaja
  loc_C338DD: from_stack_1v = clscaja.RsFrmGet()
  loc_C338E2: FLdPr var_1B0
  loc_C338E5:  = Me.Fields
  loc_C338EA: FLdPr var_1C8
  loc_C338ED: from_stack_2 = Me.Item(from_stack_1)
  loc_C338F2: FLdPr var_1CC
  loc_C338F5:  = Me.Value
  loc_C338FA: LitI2_Byte 0
  loc_C338FC: CR8I2
  loc_C338FD: PopFPR8
  loc_C338FE: FLdRfVar var_C4
  loc_C33901: CR4Var
  loc_C33902: PopFPR8
  loc_C33903: FLdRfVar var_B4
  loc_C33906: CStrVarTmp
  loc_C33907: FStStrNoPop var_98
  loc_C3390A: FLdI2 var_92
  loc_C3390D: ImpAdLdI2 MemVar_C3D064
  loc_C33910: FLdPr Me
  loc_C33913: MemLdRfVar from_stack_1.global_60
  loc_C33916: NewIfNullPr clsasiento
  loc_C33919: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3391E: FFree1Str var_98
  loc_C33921: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C33930: FFreeVar var_B4 = ""
  loc_C33937: FLdRfVar var_1D0
  loc_C3393A: FLdPr Me
  loc_C3393D: MemLdRfVar from_stack_1.global_52
  loc_C33940: NewIfNullPr clscaja
  loc_C33943: from_stack_1 = clscaja.RecordCount
  loc_C33948: FLdRfVar var_138
  loc_C3394B: FLdPr Me
  loc_C3394E: MemLdRfVar from_stack_1.global_52
  loc_C33951: NewIfNullPr clscaja
  loc_C33954: from_stack_1 = clscaja.AbsolutePosition
  loc_C33959: ILdRf var_138
  loc_C3395C: CR8I4
  loc_C3395D: ILdRf var_1D0
  loc_C33960: CR8I4
  loc_C33961: DivR8
  loc_C33962: LitI2_Byte &H64
  loc_C33964: CR8I2
  loc_C33965: MulR8
  loc_C33966: CVarR4
  loc_C3396A: PopAdLdVar
  loc_C3396B: FLdPr Me
  loc_C3396E: VCallAd Control_ID_ProgressBar
  loc_C33971: FStAdFunc var_A4
  loc_C33974: FLdPr var_A4
  loc_C33977: LateIdSt
  loc_C3397C: FFree1Ad var_A4
  loc_C3397F: FLdPr Me
  loc_C33982: MemLdRfVar from_stack_1.global_52
  loc_C33985: NewIfNullPr clscaja
  loc_C33988: Call clscaja.MoveSiguiente()
  loc_C3398D: Branch loc_C337FC
  loc_C33990: FLdRfVar var_B4
  loc_C33993: FLdRfVar var_15C
  loc_C33996: LitVarStr var_D4, "CaerPaco"
  loc_C3399B: PopAdLdVar
  loc_C3399C: FLdRfVar var_E8
  loc_C3399F: FLdRfVar var_A4
  loc_C339A2: FLdPr Me
  loc_C339A5: MemLdRfVar from_stack_1.global_56
  loc_C339A8: NewIfNullPr clsparaconta
  loc_C339AB: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C339B0: FLdPr var_A4
  loc_C339B3:  = Me.Fields
  loc_C339B8: FLdPr var_E8
  loc_C339BB: from_stack_2 = Me.Item(from_stack_1)
  loc_C339C0: FLdPr var_15C
  loc_C339C3:  = Me.Value
  loc_C339C8: FLdR8 var_90
  loc_C339CB: LitI2_Byte 0
  loc_C339CD: CR8I2
  loc_C339CE: PopFPR8
  loc_C339CF: FLdRfVar var_B4
  loc_C339D2: CStrVarTmp
  loc_C339D3: FStStrNoPop var_98
  loc_C339D6: FLdI2 var_92
  loc_C339D9: ImpAdLdI2 MemVar_C3D064
  loc_C339DC: FLdPr Me
  loc_C339DF: MemLdRfVar from_stack_1.global_60
  loc_C339E2: NewIfNullPr clsasiento
  loc_C339E5: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C339EA: FFree1Str var_98
  loc_C339ED: FFreeAd var_A4 = "": var_E8 = ""
  loc_C339F6: FFree1Var var_B4 = ""
  loc_C339F9: LitVarStr var_D4, "Asiento Automático de Afectaciones de Devengados Presupuestarios"
  loc_C339FE: PopAdLdVar
  loc_C339FF: FLdPr Me
  loc_C33A02: VCallAd Control_ID_StatusBar
  loc_C33A05: FStAdFunc var_A4
  loc_C33A08: FLdPr var_A4
  loc_C33A0B: LateIdSt
  loc_C33A10: FFree1Ad var_A4
  loc_C33A13: LitStr "SELECT CodiCuco, Sum(DebeCaja) DebeCaja"
  loc_C33A16: LitStr " FROM cajadeve"
  loc_C33A19: ConcatStr
  loc_C33A1A: FStStrNoPop var_98
  loc_C33A1D: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = cajadeve.PeriInfo"
  loc_C33A20: ConcatStr
  loc_C33A21: FStStrNoPop var_9C
  loc_C33A24: LitStr " WHERE cajadeve.PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C33A27: ConcatStr
  loc_C33A28: FStStrNoPop var_A0
  loc_C33A2B: LitStr " AND DebeCaja > 0"
  loc_C33A2E: ConcatStr
  loc_C33A2F: FStStrNoPop var_12C
  loc_C33A32: LitStr " AND AjusImpu = 0"
  loc_C33A35: ConcatStr
  loc_C33A36: FStStrNoPop var_130
  loc_C33A39: LitStr " AND Left(CodiPart,1) <> PaexPaco"
  loc_C33A3C: ConcatStr
  loc_C33A3D: FStStrNoPop var_134
  loc_C33A40: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco"
  loc_C33A43: ConcatStr
  loc_C33A44: FStStrNoPop var_1D4
  loc_C33A47: FLdPr Me
  loc_C33A4A: MemLdRfVar from_stack_1.global_52
  loc_C33A4D: NewIfNullPr clscaja
  loc_C33A50: Call clscaja.RedefineRS(from_stack_1v)
  loc_C33A55: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_C33A66: FLdRfVar var_138
  loc_C33A69: FLdPr Me
  loc_C33A6C: MemLdRfVar from_stack_1.global_52
  loc_C33A6F: NewIfNullPr clscaja
  loc_C33A72: from_stack_1 = clscaja.RecordCount
  loc_C33A77: ILdRf var_138
  loc_C33A7A: LitI4 0
  loc_C33A7F: GtI4
  loc_C33A80: BranchF loc_C33D32
  loc_C33A83: FLdPr Me
  loc_C33A86: VCallAd Control_ID_FechCajaHastaMsk
  loc_C33A89: FStAdFunc var_A4
  loc_C33A8C: FLdPr var_A4
  loc_C33A8F: LateIdLdVar var_B4 DispID_15 0
  loc_C33A96: PopAd
  loc_C33A98: FLdPr Me
  loc_C33A9B: VCallAd Control_ID_StatusBar
  loc_C33A9E: FStAdFunc var_E8
  loc_C33AA1: FLdPr var_E8
  loc_C33AA4: LateIdLdVar var_C4 DispID_1 0
  loc_C33AAB: PopAd
  loc_C33AAD: FLdRfVar var_1C2
  loc_C33AB0: LitI4 0
  loc_C33AB5: LitI4 0
  loc_C33ABA: FLdRfVar var_C4
  loc_C33ABD: CStrVarTmp
  loc_C33ABE: FStStrNoPop var_9C
  loc_C33AC1: LitI2_Byte 2
  loc_C33AC3: FLdRfVar var_B4
  loc_C33AC6: CStrVarTmp
  loc_C33AC7: FStStrNoPop var_98
  loc_C33ACA: ImpAdLdI2 MemVar_C3D064
  loc_C33ACD: FLdPr Me
  loc_C33AD0: MemLdRfVar from_stack_1.global_60
  loc_C33AD3: NewIfNullPr clsasiento
  loc_C33AD6: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C33ADB: FLdI2 var_1C2
  loc_C33ADE: FStI2 var_92
  loc_C33AE1: FFreeStr var_98 = ""
  loc_C33AE8: FFreeAd var_A4 = ""
  loc_C33AEF: FFreeVar var_B4 = ""
  loc_C33AF6: FLdPr Me
  loc_C33AF9: MemLdI2 global_68
  loc_C33AFC: LitI2_Byte 0
  loc_C33AFE: EqI2
  loc_C33AFF: BranchF loc_C33B0B
  loc_C33B02: FLdI2 var_92
  loc_C33B05: FLdPr Me
  loc_C33B08: MemStI2 global_68
  loc_C33B0B: FLdPr Me
  loc_C33B0E: MemLdI2 global_70
  loc_C33B11: FLdI2 var_92
  loc_C33B14: LtI2
  loc_C33B15: BranchF loc_C33B21
  loc_C33B18: FLdI2 var_92
  loc_C33B1B: FLdPr Me
  loc_C33B1E: MemStI2 global_70
  loc_C33B21: FLdPr Me
  loc_C33B24: MemLdRfVar from_stack_1.global_52
  loc_C33B27: NewIfNullPr clscaja
  loc_C33B2A: Call clscaja.MoveFirst()
  loc_C33B2F: LitI2_Byte 0
  loc_C33B31: CR8I2
  loc_C33B32: FStFPR8 var_90
  loc_C33B35: FLdRfVar var_1C2
  loc_C33B38: FLdPr Me
  loc_C33B3B: MemLdRfVar from_stack_1.global_52
  loc_C33B3E: NewIfNullPr clscaja
  loc_C33B41: from_stack_1 = clscaja.EOF
  loc_C33B46: FLdI2 var_1C2
  loc_C33B49: NotI4
  loc_C33B4A: BranchF loc_C33CC9
  loc_C33B4D: FLdRfVar var_15C
  loc_C33B50: LitVarStr var_118, "DebeCaja"
  loc_C33B55: PopAdLdVar
  loc_C33B56: FLdRfVar var_E8
  loc_C33B59: FLdRfVar var_A4
  loc_C33B5C: FLdPr Me
  loc_C33B5F: MemLdRfVar from_stack_1.global_52
  loc_C33B62: NewIfNullPr clscaja
  loc_C33B65: from_stack_1v = clscaja.RsFrmGet()
  loc_C33B6A: FLdPr var_A4
  loc_C33B6D:  = Me.Fields
  loc_C33B72: FLdPr var_E8
  loc_C33B75: from_stack_2 = Me.Item(from_stack_1)
  loc_C33B7A: LitI4 2
  loc_C33B7F: FLdRfVar var_90
  loc_C33B82: CVarRef
  loc_C33B87: FLdRfVar var_B4
  loc_C33B8A: ImpAdCallFPR4  = Round(, )
  loc_C33B8F: FLdRfVar var_B4
  loc_C33B92: LitI4 2
  loc_C33B97: FLdZeroAd var_15C
  loc_C33B9A: CVarAd
  loc_C33B9E: FLdRfVar var_E4
  loc_C33BA1: ImpAdCallFPR4  = Round(, )
  loc_C33BA6: FLdRfVar var_E4
  loc_C33BA9: AddVar var_F8
  loc_C33BAD: CR4Var
  loc_C33BAE: FStFPR8 var_90
  loc_C33BB1: FFreeAd var_A4 = ""
  loc_C33BB8: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C33BC3: FLdRfVar var_B4
  loc_C33BC6: FLdRfVar var_15C
  loc_C33BC9: LitVarStr var_D4, "CodiCuco"
  loc_C33BCE: PopAdLdVar
  loc_C33BCF: FLdRfVar var_E8
  loc_C33BD2: FLdRfVar var_A4
  loc_C33BD5: FLdPr Me
  loc_C33BD8: MemLdRfVar from_stack_1.global_52
  loc_C33BDB: NewIfNullPr clscaja
  loc_C33BDE: from_stack_1v = clscaja.RsFrmGet()
  loc_C33BE3: FLdPr var_A4
  loc_C33BE6:  = Me.Fields
  loc_C33BEB: FLdPr var_E8
  loc_C33BEE: from_stack_2 = Me.Item(from_stack_1)
  loc_C33BF3: FLdPr var_15C
  loc_C33BF6:  = Me.Value
  loc_C33BFB: FLdRfVar var_C4
  loc_C33BFE: FLdRfVar var_1CC
  loc_C33C01: LitVarStr var_118, "DebeCaja"
  loc_C33C06: PopAdLdVar
  loc_C33C07: FLdRfVar var_1C8
  loc_C33C0A: FLdRfVar var_1B0
  loc_C33C0D: FLdPr Me
  loc_C33C10: MemLdRfVar from_stack_1.global_52
  loc_C33C13: NewIfNullPr clscaja
  loc_C33C16: from_stack_1v = clscaja.RsFrmGet()
  loc_C33C1B: FLdPr var_1B0
  loc_C33C1E:  = Me.Fields
  loc_C33C23: FLdPr var_1C8
  loc_C33C26: from_stack_2 = Me.Item(from_stack_1)
  loc_C33C2B: FLdPr var_1CC
  loc_C33C2E:  = Me.Value
  loc_C33C33: LitI2_Byte 0
  loc_C33C35: CR8I2
  loc_C33C36: PopFPR8
  loc_C33C37: FLdRfVar var_C4
  loc_C33C3A: CR4Var
  loc_C33C3B: PopFPR8
  loc_C33C3C: FLdRfVar var_B4
  loc_C33C3F: CStrVarTmp
  loc_C33C40: FStStrNoPop var_98
  loc_C33C43: FLdI2 var_92
  loc_C33C46: ImpAdLdI2 MemVar_C3D064
  loc_C33C49: FLdPr Me
  loc_C33C4C: MemLdRfVar from_stack_1.global_60
  loc_C33C4F: NewIfNullPr clsasiento
  loc_C33C52: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C33C57: FFree1Str var_98
  loc_C33C5A: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C33C69: FFreeVar var_B4 = ""
  loc_C33C70: FLdRfVar var_1D0
  loc_C33C73: FLdPr Me
  loc_C33C76: MemLdRfVar from_stack_1.global_52
  loc_C33C79: NewIfNullPr clscaja
  loc_C33C7C: from_stack_1 = clscaja.RecordCount
  loc_C33C81: FLdRfVar var_138
  loc_C33C84: FLdPr Me
  loc_C33C87: MemLdRfVar from_stack_1.global_52
  loc_C33C8A: NewIfNullPr clscaja
  loc_C33C8D: from_stack_1 = clscaja.AbsolutePosition
  loc_C33C92: ILdRf var_138
  loc_C33C95: CR8I4
  loc_C33C96: ILdRf var_1D0
  loc_C33C99: CR8I4
  loc_C33C9A: DivR8
  loc_C33C9B: LitI2_Byte &H64
  loc_C33C9D: CR8I2
  loc_C33C9E: MulR8
  loc_C33C9F: CVarR4
  loc_C33CA3: PopAdLdVar
  loc_C33CA4: FLdPr Me
  loc_C33CA7: VCallAd Control_ID_ProgressBar
  loc_C33CAA: FStAdFunc var_A4
  loc_C33CAD: FLdPr var_A4
  loc_C33CB0: LateIdSt
  loc_C33CB5: FFree1Ad var_A4
  loc_C33CB8: FLdPr Me
  loc_C33CBB: MemLdRfVar from_stack_1.global_52
  loc_C33CBE: NewIfNullPr clscaja
  loc_C33CC1: Call clscaja.MoveSiguiente()
  loc_C33CC6: Branch loc_C33B35
  loc_C33CC9: FLdRfVar var_B4
  loc_C33CCC: FLdRfVar var_15C
  loc_C33CCF: LitVarStr var_D4, "ProvPaco"
  loc_C33CD4: PopAdLdVar
  loc_C33CD5: FLdRfVar var_E8
  loc_C33CD8: FLdRfVar var_A4
  loc_C33CDB: FLdPr Me
  loc_C33CDE: MemLdRfVar from_stack_1.global_56
  loc_C33CE1: NewIfNullPr clsparaconta
  loc_C33CE4: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C33CE9: FLdPr var_A4
  loc_C33CEC:  = Me.Fields
  loc_C33CF1: FLdPr var_E8
  loc_C33CF4: from_stack_2 = Me.Item(from_stack_1)
  loc_C33CF9: FLdPr var_15C
  loc_C33CFC:  = Me.Value
  loc_C33D01: FLdR8 var_90
  loc_C33D04: LitI2_Byte 0
  loc_C33D06: CR8I2
  loc_C33D07: PopFPR8
  loc_C33D08: FLdRfVar var_B4
  loc_C33D0B: CStrVarTmp
  loc_C33D0C: FStStrNoPop var_98
  loc_C33D0F: FLdI2 var_92
  loc_C33D12: ImpAdLdI2 MemVar_C3D064
  loc_C33D15: FLdPr Me
  loc_C33D18: MemLdRfVar from_stack_1.global_60
  loc_C33D1B: NewIfNullPr clsasiento
  loc_C33D1E: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C33D23: FFree1Str var_98
  loc_C33D26: FFreeAd var_A4 = "": var_E8 = ""
  loc_C33D2F: FFree1Var var_B4 = ""
  loc_C33D32: LitVarStr var_D4, "Asiento Automático de Desafectaciones de Devengados Presupuestarios"
  loc_C33D37: PopAdLdVar
  loc_C33D38: FLdPr Me
  loc_C33D3B: VCallAd Control_ID_StatusBar
  loc_C33D3E: FStAdFunc var_A4
  loc_C33D41: FLdPr var_A4
  loc_C33D44: LateIdSt
  loc_C33D49: FFree1Ad var_A4
  loc_C33D4C: LitStr "SELECT CodiCuco, Sum(HabeCaja) HabeCaja"
  loc_C33D4F: LitStr " FROM cajadeve"
  loc_C33D52: ConcatStr
  loc_C33D53: FStStrNoPop var_98
  loc_C33D56: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = cajadeve.PeriInfo"
  loc_C33D59: ConcatStr
  loc_C33D5A: FStStrNoPop var_9C
  loc_C33D5D: LitStr " WHERE cajadeve.PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C33D60: ConcatStr
  loc_C33D61: FStStrNoPop var_A0
  loc_C33D64: LitStr " AND HabeCaja > 0"
  loc_C33D67: ConcatStr
  loc_C33D68: FStStrNoPop var_12C
  loc_C33D6B: LitStr " AND AjusImpu = 0"
  loc_C33D6E: ConcatStr
  loc_C33D6F: FStStrNoPop var_130
  loc_C33D72: LitStr " AND Left(CodiPart,1) <> PaexPaco"
  loc_C33D75: ConcatStr
  loc_C33D76: FStStrNoPop var_134
  loc_C33D79: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco"
  loc_C33D7C: ConcatStr
  loc_C33D7D: FStStrNoPop var_1D4
  loc_C33D80: FLdPr Me
  loc_C33D83: MemLdRfVar from_stack_1.global_52
  loc_C33D86: NewIfNullPr clscaja
  loc_C33D89: Call clscaja.RedefineRS(from_stack_1v)
  loc_C33D8E: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_C33D9F: FLdRfVar var_138
  loc_C33DA2: FLdPr Me
  loc_C33DA5: MemLdRfVar from_stack_1.global_52
  loc_C33DA8: NewIfNullPr clscaja
  loc_C33DAB: from_stack_1 = clscaja.RecordCount
  loc_C33DB0: ILdRf var_138
  loc_C33DB3: LitI4 0
  loc_C33DB8: GtI4
  loc_C33DB9: BranchF loc_C3406B
  loc_C33DBC: FLdPr Me
  loc_C33DBF: VCallAd Control_ID_FechCajaHastaMsk
  loc_C33DC2: FStAdFunc var_A4
  loc_C33DC5: FLdPr var_A4
  loc_C33DC8: LateIdLdVar var_B4 DispID_15 0
  loc_C33DCF: PopAd
  loc_C33DD1: FLdPr Me
  loc_C33DD4: VCallAd Control_ID_StatusBar
  loc_C33DD7: FStAdFunc var_E8
  loc_C33DDA: FLdPr var_E8
  loc_C33DDD: LateIdLdVar var_C4 DispID_1 0
  loc_C33DE4: PopAd
  loc_C33DE6: FLdRfVar var_1C2
  loc_C33DE9: LitI4 0
  loc_C33DEE: LitI4 0
  loc_C33DF3: FLdRfVar var_C4
  loc_C33DF6: CStrVarTmp
  loc_C33DF7: FStStrNoPop var_9C
  loc_C33DFA: LitI2_Byte 2
  loc_C33DFC: FLdRfVar var_B4
  loc_C33DFF: CStrVarTmp
  loc_C33E00: FStStrNoPop var_98
  loc_C33E03: ImpAdLdI2 MemVar_C3D064
  loc_C33E06: FLdPr Me
  loc_C33E09: MemLdRfVar from_stack_1.global_60
  loc_C33E0C: NewIfNullPr clsasiento
  loc_C33E0F: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C33E14: FLdI2 var_1C2
  loc_C33E17: FStI2 var_92
  loc_C33E1A: FFreeStr var_98 = ""
  loc_C33E21: FFreeAd var_A4 = ""
  loc_C33E28: FFreeVar var_B4 = ""
  loc_C33E2F: FLdPr Me
  loc_C33E32: MemLdI2 global_68
  loc_C33E35: LitI2_Byte 0
  loc_C33E37: EqI2
  loc_C33E38: BranchF loc_C33E44
  loc_C33E3B: FLdI2 var_92
  loc_C33E3E: FLdPr Me
  loc_C33E41: MemStI2 global_68
  loc_C33E44: FLdPr Me
  loc_C33E47: MemLdI2 global_70
  loc_C33E4A: FLdI2 var_92
  loc_C33E4D: LtI2
  loc_C33E4E: BranchF loc_C33E5A
  loc_C33E51: FLdI2 var_92
  loc_C33E54: FLdPr Me
  loc_C33E57: MemStI2 global_70
  loc_C33E5A: FLdPr Me
  loc_C33E5D: MemLdRfVar from_stack_1.global_52
  loc_C33E60: NewIfNullPr clscaja
  loc_C33E63: Call clscaja.MoveFirst()
  loc_C33E68: LitI2_Byte 0
  loc_C33E6A: CR8I2
  loc_C33E6B: FStFPR8 var_90
  loc_C33E6E: FLdRfVar var_1C2
  loc_C33E71: FLdPr Me
  loc_C33E74: MemLdRfVar from_stack_1.global_52
  loc_C33E77: NewIfNullPr clscaja
  loc_C33E7A: from_stack_1 = clscaja.EOF
  loc_C33E7F: FLdI2 var_1C2
  loc_C33E82: NotI4
  loc_C33E83: BranchF loc_C34002
  loc_C33E86: FLdRfVar var_15C
  loc_C33E89: LitVarStr var_118, "HabeCaja"
  loc_C33E8E: PopAdLdVar
  loc_C33E8F: FLdRfVar var_E8
  loc_C33E92: FLdRfVar var_A4
  loc_C33E95: FLdPr Me
  loc_C33E98: MemLdRfVar from_stack_1.global_52
  loc_C33E9B: NewIfNullPr clscaja
  loc_C33E9E: from_stack_1v = clscaja.RsFrmGet()
  loc_C33EA3: FLdPr var_A4
  loc_C33EA6:  = Me.Fields
  loc_C33EAB: FLdPr var_E8
  loc_C33EAE: from_stack_2 = Me.Item(from_stack_1)
  loc_C33EB3: LitI4 2
  loc_C33EB8: FLdRfVar var_90
  loc_C33EBB: CVarRef
  loc_C33EC0: FLdRfVar var_B4
  loc_C33EC3: ImpAdCallFPR4  = Round(, )
  loc_C33EC8: FLdRfVar var_B4
  loc_C33ECB: LitI4 2
  loc_C33ED0: FLdZeroAd var_15C
  loc_C33ED3: CVarAd
  loc_C33ED7: FLdRfVar var_E4
  loc_C33EDA: ImpAdCallFPR4  = Round(, )
  loc_C33EDF: FLdRfVar var_E4
  loc_C33EE2: AddVar var_F8
  loc_C33EE6: CR4Var
  loc_C33EE7: FStFPR8 var_90
  loc_C33EEA: FFreeAd var_A4 = ""
  loc_C33EF1: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C33EFC: FLdRfVar var_B4
  loc_C33EFF: FLdRfVar var_15C
  loc_C33F02: LitVarStr var_D4, "CodiCuco"
  loc_C33F07: PopAdLdVar
  loc_C33F08: FLdRfVar var_E8
  loc_C33F0B: FLdRfVar var_A4
  loc_C33F0E: FLdPr Me
  loc_C33F11: MemLdRfVar from_stack_1.global_52
  loc_C33F14: NewIfNullPr clscaja
  loc_C33F17: from_stack_1v = clscaja.RsFrmGet()
  loc_C33F1C: FLdPr var_A4
  loc_C33F1F:  = Me.Fields
  loc_C33F24: FLdPr var_E8
  loc_C33F27: from_stack_2 = Me.Item(from_stack_1)
  loc_C33F2C: FLdPr var_15C
  loc_C33F2F:  = Me.Value
  loc_C33F34: FLdRfVar var_C4
  loc_C33F37: FLdRfVar var_1CC
  loc_C33F3A: LitVarStr var_118, "HabeCaja"
  loc_C33F3F: PopAdLdVar
  loc_C33F40: FLdRfVar var_1C8
  loc_C33F43: FLdRfVar var_1B0
  loc_C33F46: FLdPr Me
  loc_C33F49: MemLdRfVar from_stack_1.global_52
  loc_C33F4C: NewIfNullPr clscaja
  loc_C33F4F: from_stack_1v = clscaja.RsFrmGet()
  loc_C33F54: FLdPr var_1B0
  loc_C33F57:  = Me.Fields
  loc_C33F5C: FLdPr var_1C8
  loc_C33F5F: from_stack_2 = Me.Item(from_stack_1)
  loc_C33F64: FLdPr var_1CC
  loc_C33F67:  = Me.Value
  loc_C33F6C: FLdRfVar var_C4
  loc_C33F6F: CR4Var
  loc_C33F70: PopFPR8
  loc_C33F71: LitI2_Byte 0
  loc_C33F73: CR8I2
  loc_C33F74: PopFPR8
  loc_C33F75: FLdRfVar var_B4
  loc_C33F78: CStrVarTmp
  loc_C33F79: FStStrNoPop var_98
  loc_C33F7C: FLdI2 var_92
  loc_C33F7F: ImpAdLdI2 MemVar_C3D064
  loc_C33F82: FLdPr Me
  loc_C33F85: MemLdRfVar from_stack_1.global_60
  loc_C33F88: NewIfNullPr clsasiento
  loc_C33F8B: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C33F90: FFree1Str var_98
  loc_C33F93: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C33FA2: FFreeVar var_B4 = ""
  loc_C33FA9: FLdRfVar var_1D0
  loc_C33FAC: FLdPr Me
  loc_C33FAF: MemLdRfVar from_stack_1.global_52
  loc_C33FB2: NewIfNullPr clscaja
  loc_C33FB5: from_stack_1 = clscaja.RecordCount
  loc_C33FBA: FLdRfVar var_138
  loc_C33FBD: FLdPr Me
  loc_C33FC0: MemLdRfVar from_stack_1.global_52
  loc_C33FC3: NewIfNullPr clscaja
  loc_C33FC6: from_stack_1 = clscaja.AbsolutePosition
  loc_C33FCB: ILdRf var_138
  loc_C33FCE: CR8I4
  loc_C33FCF: ILdRf var_1D0
  loc_C33FD2: CR8I4
  loc_C33FD3: DivR8
  loc_C33FD4: LitI2_Byte &H64
  loc_C33FD6: CR8I2
  loc_C33FD7: MulR8
  loc_C33FD8: CVarR4
  loc_C33FDC: PopAdLdVar
  loc_C33FDD: FLdPr Me
  loc_C33FE0: VCallAd Control_ID_ProgressBar
  loc_C33FE3: FStAdFunc var_A4
  loc_C33FE6: FLdPr var_A4
  loc_C33FE9: LateIdSt
  loc_C33FEE: FFree1Ad var_A4
  loc_C33FF1: FLdPr Me
  loc_C33FF4: MemLdRfVar from_stack_1.global_52
  loc_C33FF7: NewIfNullPr clscaja
  loc_C33FFA: Call clscaja.MoveSiguiente()
  loc_C33FFF: Branch loc_C33E6E
  loc_C34002: FLdRfVar var_B4
  loc_C34005: FLdRfVar var_15C
  loc_C34008: LitVarStr var_D4, "ProvPaco"
  loc_C3400D: PopAdLdVar
  loc_C3400E: FLdRfVar var_E8
  loc_C34011: FLdRfVar var_A4
  loc_C34014: FLdPr Me
  loc_C34017: MemLdRfVar from_stack_1.global_56
  loc_C3401A: NewIfNullPr clsparaconta
  loc_C3401D: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C34022: FLdPr var_A4
  loc_C34025:  = Me.Fields
  loc_C3402A: FLdPr var_E8
  loc_C3402D: from_stack_2 = Me.Item(from_stack_1)
  loc_C34032: FLdPr var_15C
  loc_C34035:  = Me.Value
  loc_C3403A: LitI2_Byte 0
  loc_C3403C: CR8I2
  loc_C3403D: PopFPR8
  loc_C3403E: FLdR8 var_90
  loc_C34041: FLdRfVar var_B4
  loc_C34044: CStrVarTmp
  loc_C34045: FStStrNoPop var_98
  loc_C34048: FLdI2 var_92
  loc_C3404B: ImpAdLdI2 MemVar_C3D064
  loc_C3404E: FLdPr Me
  loc_C34051: MemLdRfVar from_stack_1.global_60
  loc_C34054: NewIfNullPr clsasiento
  loc_C34057: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3405C: FFree1Str var_98
  loc_C3405F: FFreeAd var_A4 = "": var_E8 = ""
  loc_C34068: FFree1Var var_B4 = ""
  loc_C3406B: LitVarStr var_D4, "Asiento Automático de Ajustes de Devengados Presupuestarios"
  loc_C34070: PopAdLdVar
  loc_C34071: FLdPr Me
  loc_C34074: VCallAd Control_ID_StatusBar
  loc_C34077: FStAdFunc var_A4
  loc_C3407A: FLdPr var_A4
  loc_C3407D: LateIdSt
  loc_C34082: FFree1Ad var_A4
  loc_C34085: LitStr "SELECT CodiCuco, Sum(DebeCaja) DebeCaja, Sum(HabeCaja) HabeCaja"
  loc_C34088: LitStr " FROM cajadeve"
  loc_C3408B: ConcatStr
  loc_C3408C: FStStrNoPop var_98
  loc_C3408F: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = cajadeve.PeriInfo"
  loc_C34092: ConcatStr
  loc_C34093: FStStrNoPop var_9C
  loc_C34096: LitStr " WHERE cajadeve.PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C34099: ConcatStr
  loc_C3409A: FStStrNoPop var_A0
  loc_C3409D: LitStr " AND AjusImpu > 0"
  loc_C340A0: ConcatStr
  loc_C340A1: FStStrNoPop var_12C
  loc_C340A4: LitStr " AND IdContra = 0"
  loc_C340A7: ConcatStr
  loc_C340A8: FStStrNoPop var_130
  loc_C340AB: LitStr " /* AND Left(CodiPart,1) <> PaexPaco */"
  loc_C340AE: ConcatStr
  loc_C340AF: FStStrNoPop var_134
  loc_C340B2: LitStr " GROUP BY CodiCuco"
  loc_C340B5: ConcatStr
  loc_C340B6: FStStrNoPop var_1D4
  loc_C340B9: LitStr " ORDER BY CodiCuco;"
  loc_C340BC: ConcatStr
  loc_C340BD: FStStrNoPop var_1D8
  loc_C340C0: FLdPr Me
  loc_C340C3: MemLdRfVar from_stack_1.global_52
  loc_C340C6: NewIfNullPr clscaja
  loc_C340C9: Call clscaja.RedefineRS(from_stack_1v)
  loc_C340CE: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = ""
  loc_C340E1: FLdRfVar var_138
  loc_C340E4: FLdPr Me
  loc_C340E7: MemLdRfVar from_stack_1.global_52
  loc_C340EA: NewIfNullPr clscaja
  loc_C340ED: from_stack_1 = clscaja.RecordCount
  loc_C340F2: ILdRf var_138
  loc_C340F5: LitI4 0
  loc_C340FA: GtI4
  loc_C340FB: BranchF loc_C34309
  loc_C340FE: FLdPr Me
  loc_C34101: VCallAd Control_ID_FechCajaHastaMsk
  loc_C34104: FStAdFunc var_A4
  loc_C34107: FLdPr var_A4
  loc_C3410A: LateIdLdVar var_B4 DispID_15 0
  loc_C34111: PopAd
  loc_C34113: FLdPr Me
  loc_C34116: VCallAd Control_ID_StatusBar
  loc_C34119: FStAdFunc var_E8
  loc_C3411C: FLdPr var_E8
  loc_C3411F: LateIdLdVar var_C4 DispID_1 0
  loc_C34126: PopAd
  loc_C34128: FLdRfVar var_1C2
  loc_C3412B: LitI4 0
  loc_C34130: LitI4 0
  loc_C34135: FLdRfVar var_C4
  loc_C34138: CStrVarTmp
  loc_C34139: FStStrNoPop var_9C
  loc_C3413C: LitI2_Byte &H18
  loc_C3413E: FLdRfVar var_B4
  loc_C34141: CStrVarTmp
  loc_C34142: FStStrNoPop var_98
  loc_C34145: ImpAdLdI2 MemVar_C3D064
  loc_C34148: FLdPr Me
  loc_C3414B: MemLdRfVar from_stack_1.global_60
  loc_C3414E: NewIfNullPr clsasiento
  loc_C34151: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C34156: FLdI2 var_1C2
  loc_C34159: FStI2 var_92
  loc_C3415C: FFreeStr var_98 = ""
  loc_C34163: FFreeAd var_A4 = ""
  loc_C3416A: FFreeVar var_B4 = ""
  loc_C34171: FLdPr Me
  loc_C34174: MemLdI2 global_68
  loc_C34177: LitI2_Byte 0
  loc_C34179: EqI2
  loc_C3417A: BranchF loc_C34186
  loc_C3417D: FLdI2 var_92
  loc_C34180: FLdPr Me
  loc_C34183: MemStI2 global_68
  loc_C34186: FLdPr Me
  loc_C34189: MemLdI2 global_70
  loc_C3418C: FLdI2 var_92
  loc_C3418F: LtI2
  loc_C34190: BranchF loc_C3419C
  loc_C34193: FLdI2 var_92
  loc_C34196: FLdPr Me
  loc_C34199: MemStI2 global_70
  loc_C3419C: FLdPr Me
  loc_C3419F: MemLdRfVar from_stack_1.global_52
  loc_C341A2: NewIfNullPr clscaja
  loc_C341A5: Call clscaja.MoveFirst()
  loc_C341AA: FLdRfVar var_1C2
  loc_C341AD: FLdPr Me
  loc_C341B0: MemLdRfVar from_stack_1.global_52
  loc_C341B3: NewIfNullPr clscaja
  loc_C341B6: from_stack_1 = clscaja.EOF
  loc_C341BB: FLdI2 var_1C2
  loc_C341BE: NotI4
  loc_C341BF: BranchF loc_C34309
  loc_C341C2: FLdRfVar var_B4
  loc_C341C5: FLdRfVar var_15C
  loc_C341C8: LitVarStr var_D4, "CodiCuco"
  loc_C341CD: PopAdLdVar
  loc_C341CE: FLdRfVar var_E8
  loc_C341D1: FLdRfVar var_A4
  loc_C341D4: FLdPr Me
  loc_C341D7: MemLdRfVar from_stack_1.global_52
  loc_C341DA: NewIfNullPr clscaja
  loc_C341DD: from_stack_1v = clscaja.RsFrmGet()
  loc_C341E2: FLdPr var_A4
  loc_C341E5:  = Me.Fields
  loc_C341EA: FLdPr var_E8
  loc_C341ED: from_stack_2 = Me.Item(from_stack_1)
  loc_C341F2: FLdPr var_15C
  loc_C341F5:  = Me.Value
  loc_C341FA: FLdRfVar var_C4
  loc_C341FD: FLdRfVar var_1CC
  loc_C34200: LitVarStr var_118, "DebeCaja"
  loc_C34205: PopAdLdVar
  loc_C34206: FLdRfVar var_1C8
  loc_C34209: FLdRfVar var_1B0
  loc_C3420C: FLdPr Me
  loc_C3420F: MemLdRfVar from_stack_1.global_52
  loc_C34212: NewIfNullPr clscaja
  loc_C34215: from_stack_1v = clscaja.RsFrmGet()
  loc_C3421A: FLdPr var_1B0
  loc_C3421D:  = Me.Fields
  loc_C34222: FLdPr var_1C8
  loc_C34225: from_stack_2 = Me.Item(from_stack_1)
  loc_C3422A: FLdPr var_1CC
  loc_C3422D:  = Me.Value
  loc_C34232: FLdRfVar var_E4
  loc_C34235: FLdRfVar var_1E4
  loc_C34238: LitVarStr var_148, "HabeCaja"
  loc_C3423D: PopAdLdVar
  loc_C3423E: FLdRfVar var_1E0
  loc_C34241: FLdRfVar var_1DC
  loc_C34244: FLdPr Me
  loc_C34247: MemLdRfVar from_stack_1.global_52
  loc_C3424A: NewIfNullPr clscaja
  loc_C3424D: from_stack_1v = clscaja.RsFrmGet()
  loc_C34252: FLdPr var_1DC
  loc_C34255:  = Me.Fields
  loc_C3425A: FLdPr var_1E0
  loc_C3425D: from_stack_2 = Me.Item(from_stack_1)
  loc_C34262: FLdPr var_1E4
  loc_C34265:  = Me.Value
  loc_C3426A: FLdRfVar var_E4
  loc_C3426D: CR4Var
  loc_C3426E: PopFPR8
  loc_C3426F: FLdRfVar var_C4
  loc_C34272: CR4Var
  loc_C34273: PopFPR8
  loc_C34274: FLdRfVar var_B4
  loc_C34277: CStrVarTmp
  loc_C34278: FStStrNoPop var_98
  loc_C3427B: FLdI2 var_92
  loc_C3427E: ImpAdLdI2 MemVar_C3D064
  loc_C34281: FLdPr Me
  loc_C34284: MemLdRfVar from_stack_1.global_60
  loc_C34287: NewIfNullPr clsasiento
  loc_C3428A: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3428F: FFree1Str var_98
  loc_C34292: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_1DC = "": var_1E0 = "": var_15C = "": var_1CC = ""
  loc_C342A7: FFreeVar var_B4 = "": var_C4 = ""
  loc_C342B0: FLdRfVar var_1D0
  loc_C342B3: FLdPr Me
  loc_C342B6: MemLdRfVar from_stack_1.global_52
  loc_C342B9: NewIfNullPr clscaja
  loc_C342BC: from_stack_1 = clscaja.RecordCount
  loc_C342C1: FLdRfVar var_138
  loc_C342C4: FLdPr Me
  loc_C342C7: MemLdRfVar from_stack_1.global_52
  loc_C342CA: NewIfNullPr clscaja
  loc_C342CD: from_stack_1 = clscaja.AbsolutePosition
  loc_C342D2: ILdRf var_138
  loc_C342D5: CR8I4
  loc_C342D6: ILdRf var_1D0
  loc_C342D9: CR8I4
  loc_C342DA: DivR8
  loc_C342DB: LitI2_Byte &H64
  loc_C342DD: CR8I2
  loc_C342DE: MulR8
  loc_C342DF: CVarR4
  loc_C342E3: PopAdLdVar
  loc_C342E4: FLdPr Me
  loc_C342E7: VCallAd Control_ID_ProgressBar
  loc_C342EA: FStAdFunc var_A4
  loc_C342ED: FLdPr var_A4
  loc_C342F0: LateIdSt
  loc_C342F5: FFree1Ad var_A4
  loc_C342F8: FLdPr Me
  loc_C342FB: MemLdRfVar from_stack_1.global_52
  loc_C342FE: NewIfNullPr clscaja
  loc_C34301: Call clscaja.MoveSiguiente()
  loc_C34306: Branch loc_C341AA
  loc_C34309: LitVarStr var_D4, "Asiento Automático de Comisiones Contracargo"
  loc_C3430E: PopAdLdVar
  loc_C3430F: FLdPr Me
  loc_C34312: VCallAd Control_ID_StatusBar
  loc_C34315: FStAdFunc var_A4
  loc_C34318: FLdPr var_A4
  loc_C3431B: LateIdSt
  loc_C34320: FFree1Ad var_A4
  loc_C34323: LitStr "SELECT CodiCuco, Sum(DebeCaja) DebeCaja, Sum(HabeCaja) HabeCaja"
  loc_C34326: LitStr " FROM cajadeve"
  loc_C34329: ConcatStr
  loc_C3432A: FStStrNoPop var_98
  loc_C3432D: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = cajadeve.PeriInfo"
  loc_C34330: ConcatStr
  loc_C34331: FStStrNoPop var_9C
  loc_C34334: LitStr " WHERE cajadeve.PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C34337: ConcatStr
  loc_C34338: FStStrNoPop var_A0
  loc_C3433B: LitStr " AND AjusImpu > 0"
  loc_C3433E: ConcatStr
  loc_C3433F: FStStrNoPop var_12C
  loc_C34342: LitStr " AND IdContra > 0"
  loc_C34345: ConcatStr
  loc_C34346: FStStrNoPop var_130
  loc_C34349: LitStr " /* AND Left(CodiPart,1) <> PaexPaco */"
  loc_C3434C: ConcatStr
  loc_C3434D: FStStrNoPop var_134
  loc_C34350: LitStr " GROUP BY CodiCuco"
  loc_C34353: ConcatStr
  loc_C34354: FStStrNoPop var_1D4
  loc_C34357: LitStr " ORDER BY CodiCuco;"
  loc_C3435A: ConcatStr
  loc_C3435B: FStStrNoPop var_1D8
  loc_C3435E: FLdPr Me
  loc_C34361: MemLdRfVar from_stack_1.global_52
  loc_C34364: NewIfNullPr clscaja
  loc_C34367: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3436C: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = ""
  loc_C3437F: FLdRfVar var_138
  loc_C34382: FLdPr Me
  loc_C34385: MemLdRfVar from_stack_1.global_52
  loc_C34388: NewIfNullPr clscaja
  loc_C3438B: from_stack_1 = clscaja.RecordCount
  loc_C34390: ILdRf var_138
  loc_C34393: LitI4 0
  loc_C34398: GtI4
  loc_C34399: BranchF loc_C345A7
  loc_C3439C: FLdPr Me
  loc_C3439F: VCallAd Control_ID_FechCajaHastaMsk
  loc_C343A2: FStAdFunc var_A4
  loc_C343A5: FLdPr var_A4
  loc_C343A8: LateIdLdVar var_B4 DispID_15 0
  loc_C343AF: PopAd
  loc_C343B1: FLdPr Me
  loc_C343B4: VCallAd Control_ID_StatusBar
  loc_C343B7: FStAdFunc var_E8
  loc_C343BA: FLdPr var_E8
  loc_C343BD: LateIdLdVar var_C4 DispID_1 0
  loc_C343C4: PopAd
  loc_C343C6: FLdRfVar var_1C2
  loc_C343C9: LitI4 0
  loc_C343CE: LitI4 0
  loc_C343D3: FLdRfVar var_C4
  loc_C343D6: CStrVarTmp
  loc_C343D7: FStStrNoPop var_9C
  loc_C343DA: LitI2_Byte &H18
  loc_C343DC: FLdRfVar var_B4
  loc_C343DF: CStrVarTmp
  loc_C343E0: FStStrNoPop var_98
  loc_C343E3: ImpAdLdI2 MemVar_C3D064
  loc_C343E6: FLdPr Me
  loc_C343E9: MemLdRfVar from_stack_1.global_60
  loc_C343EC: NewIfNullPr clsasiento
  loc_C343EF: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C343F4: FLdI2 var_1C2
  loc_C343F7: FStI2 var_92
  loc_C343FA: FFreeStr var_98 = ""
  loc_C34401: FFreeAd var_A4 = ""
  loc_C34408: FFreeVar var_B4 = ""
  loc_C3440F: FLdPr Me
  loc_C34412: MemLdI2 global_68
  loc_C34415: LitI2_Byte 0
  loc_C34417: EqI2
  loc_C34418: BranchF loc_C34424
  loc_C3441B: FLdI2 var_92
  loc_C3441E: FLdPr Me
  loc_C34421: MemStI2 global_68
  loc_C34424: FLdPr Me
  loc_C34427: MemLdI2 global_70
  loc_C3442A: FLdI2 var_92
  loc_C3442D: LtI2
  loc_C3442E: BranchF loc_C3443A
  loc_C34431: FLdI2 var_92
  loc_C34434: FLdPr Me
  loc_C34437: MemStI2 global_70
  loc_C3443A: FLdPr Me
  loc_C3443D: MemLdRfVar from_stack_1.global_52
  loc_C34440: NewIfNullPr clscaja
  loc_C34443: Call clscaja.MoveFirst()
  loc_C34448: FLdRfVar var_1C2
  loc_C3444B: FLdPr Me
  loc_C3444E: MemLdRfVar from_stack_1.global_52
  loc_C34451: NewIfNullPr clscaja
  loc_C34454: from_stack_1 = clscaja.EOF
  loc_C34459: FLdI2 var_1C2
  loc_C3445C: NotI4
  loc_C3445D: BranchF loc_C345A7
  loc_C34460: FLdRfVar var_B4
  loc_C34463: FLdRfVar var_15C
  loc_C34466: LitVarStr var_D4, "CodiCuco"
  loc_C3446B: PopAdLdVar
  loc_C3446C: FLdRfVar var_E8
  loc_C3446F: FLdRfVar var_A4
  loc_C34472: FLdPr Me
  loc_C34475: MemLdRfVar from_stack_1.global_52
  loc_C34478: NewIfNullPr clscaja
  loc_C3447B: from_stack_1v = clscaja.RsFrmGet()
  loc_C34480: FLdPr var_A4
  loc_C34483:  = Me.Fields
  loc_C34488: FLdPr var_E8
  loc_C3448B: from_stack_2 = Me.Item(from_stack_1)
  loc_C34490: FLdPr var_15C
  loc_C34493:  = Me.Value
  loc_C34498: FLdRfVar var_C4
  loc_C3449B: FLdRfVar var_1CC
  loc_C3449E: LitVarStr var_118, "DebeCaja"
  loc_C344A3: PopAdLdVar
  loc_C344A4: FLdRfVar var_1C8
  loc_C344A7: FLdRfVar var_1B0
  loc_C344AA: FLdPr Me
  loc_C344AD: MemLdRfVar from_stack_1.global_52
  loc_C344B0: NewIfNullPr clscaja
  loc_C344B3: from_stack_1v = clscaja.RsFrmGet()
  loc_C344B8: FLdPr var_1B0
  loc_C344BB:  = Me.Fields
  loc_C344C0: FLdPr var_1C8
  loc_C344C3: from_stack_2 = Me.Item(from_stack_1)
  loc_C344C8: FLdPr var_1CC
  loc_C344CB:  = Me.Value
  loc_C344D0: FLdRfVar var_E4
  loc_C344D3: FLdRfVar var_1E4
  loc_C344D6: LitVarStr var_148, "HabeCaja"
  loc_C344DB: PopAdLdVar
  loc_C344DC: FLdRfVar var_1E0
  loc_C344DF: FLdRfVar var_1DC
  loc_C344E2: FLdPr Me
  loc_C344E5: MemLdRfVar from_stack_1.global_52
  loc_C344E8: NewIfNullPr clscaja
  loc_C344EB: from_stack_1v = clscaja.RsFrmGet()
  loc_C344F0: FLdPr var_1DC
  loc_C344F3:  = Me.Fields
  loc_C344F8: FLdPr var_1E0
  loc_C344FB: from_stack_2 = Me.Item(from_stack_1)
  loc_C34500: FLdPr var_1E4
  loc_C34503:  = Me.Value
  loc_C34508: FLdRfVar var_E4
  loc_C3450B: CR4Var
  loc_C3450C: PopFPR8
  loc_C3450D: FLdRfVar var_C4
  loc_C34510: CR4Var
  loc_C34511: PopFPR8
  loc_C34512: FLdRfVar var_B4
  loc_C34515: CStrVarTmp
  loc_C34516: FStStrNoPop var_98
  loc_C34519: FLdI2 var_92
  loc_C3451C: ImpAdLdI2 MemVar_C3D064
  loc_C3451F: FLdPr Me
  loc_C34522: MemLdRfVar from_stack_1.global_60
  loc_C34525: NewIfNullPr clsasiento
  loc_C34528: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3452D: FFree1Str var_98
  loc_C34530: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_1DC = "": var_1E0 = "": var_15C = "": var_1CC = ""
  loc_C34545: FFreeVar var_B4 = "": var_C4 = ""
  loc_C3454E: FLdRfVar var_1D0
  loc_C34551: FLdPr Me
  loc_C34554: MemLdRfVar from_stack_1.global_52
  loc_C34557: NewIfNullPr clscaja
  loc_C3455A: from_stack_1 = clscaja.RecordCount
  loc_C3455F: FLdRfVar var_138
  loc_C34562: FLdPr Me
  loc_C34565: MemLdRfVar from_stack_1.global_52
  loc_C34568: NewIfNullPr clscaja
  loc_C3456B: from_stack_1 = clscaja.AbsolutePosition
  loc_C34570: ILdRf var_138
  loc_C34573: CR8I4
  loc_C34574: ILdRf var_1D0
  loc_C34577: CR8I4
  loc_C34578: DivR8
  loc_C34579: LitI2_Byte &H64
  loc_C3457B: CR8I2
  loc_C3457C: MulR8
  loc_C3457D: CVarR4
  loc_C34581: PopAdLdVar
  loc_C34582: FLdPr Me
  loc_C34585: VCallAd Control_ID_ProgressBar
  loc_C34588: FStAdFunc var_A4
  loc_C3458B: FLdPr var_A4
  loc_C3458E: LateIdSt
  loc_C34593: FFree1Ad var_A4
  loc_C34596: FLdPr Me
  loc_C34599: MemLdRfVar from_stack_1.global_52
  loc_C3459C: NewIfNullPr clscaja
  loc_C3459F: Call clscaja.MoveSiguiente()
  loc_C345A4: Branch loc_C34448
  loc_C345A7: LitVarStr var_D4, "Asiento Automático de Afectaciones de Mandados a Pagar Presupuestarios"
  loc_C345AC: PopAdLdVar
  loc_C345AD: FLdPr Me
  loc_C345B0: VCallAd Control_ID_StatusBar
  loc_C345B3: FStAdFunc var_A4
  loc_C345B6: FLdPr var_A4
  loc_C345B9: LateIdSt
  loc_C345BE: FFree1Ad var_A4
  loc_C345C1: LitStr "SELECT IFNULL(Sum(ImpoCamp),0) ImpoCamp"
  loc_C345C4: LitStr " FROM cajamapa cm"
  loc_C345C7: ConcatStr
  loc_C345C8: FStStrNoPop var_98
  loc_C345CB: LitStr " INNER JOIN paraconta p ON p.PeriInfo = cm.PeriInfo"
  loc_C345CE: ConcatStr
  loc_C345CF: FStStrNoPop var_9C
  loc_C345D2: LitStr " INNER JOIN imputacion i ON i.PeriInfo = cm.PeriInfo AND i.IdImpu = cm.IdImpu"
  loc_C345D5: ConcatStr
  loc_C345D6: FStStrNoPop var_A0
  loc_C345D9: LitStr " WHERE cm.PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C345DC: ConcatStr
  loc_C345DD: FStStrNoPop var_12C
  loc_C345E0: LitStr " AND ImpoCamp > 0"
  loc_C345E3: ConcatStr
  loc_C345E4: FStStrNoPop var_130
  loc_C345E7: LitStr " AND Left(CodiPart,1) <> PaexPaco;"
  loc_C345EA: ConcatStr
  loc_C345EB: FStStrNoPop var_134
  loc_C345EE: FLdPr Me
  loc_C345F1: MemLdRfVar from_stack_1.global_52
  loc_C345F4: NewIfNullPr clscaja
  loc_C345F7: Call clscaja.RedefineRS(from_stack_1v)
  loc_C345FC: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = ""
  loc_C3460B: FLdRfVar var_B4
  loc_C3460E: FLdRfVar var_15C
  loc_C34611: LitVarStr var_D4, "ImpoCamp"
  loc_C34616: PopAdLdVar
  loc_C34617: FLdRfVar var_E8
  loc_C3461A: FLdRfVar var_A4
  loc_C3461D: FLdPr Me
  loc_C34620: MemLdRfVar from_stack_1.global_52
  loc_C34623: NewIfNullPr clscaja
  loc_C34626: from_stack_1v = clscaja.RsFrmGet()
  loc_C3462B: FLdPr var_A4
  loc_C3462E:  = Me.Fields
  loc_C34633: FLdPr var_E8
  loc_C34636: from_stack_2 = Me.Item(from_stack_1)
  loc_C3463B: FLdPr var_15C
  loc_C3463E:  = Me.Value
  loc_C34643: FLdRfVar var_B4
  loc_C34646: LitVarI2 var_118, 0
  loc_C3464B: HardType
  loc_C3464C: NeVarBool
  loc_C3464E: FFreeAd var_A4 = "": var_E8 = ""
  loc_C34657: FFree1Var var_B4 = ""
  loc_C3465A: BranchF loc_C34855
  loc_C3465D: FLdPr Me
  loc_C34660: VCallAd Control_ID_FechCajaHastaMsk
  loc_C34663: FStAdFunc var_A4
  loc_C34666: FLdPr var_A4
  loc_C34669: LateIdLdVar var_B4 DispID_15 0
  loc_C34670: PopAd
  loc_C34672: FLdPr Me
  loc_C34675: VCallAd Control_ID_StatusBar
  loc_C34678: FStAdFunc var_E8
  loc_C3467B: FLdPr var_E8
  loc_C3467E: LateIdLdVar var_C4 DispID_1 0
  loc_C34685: PopAd
  loc_C34687: FLdRfVar var_1C2
  loc_C3468A: LitI4 0
  loc_C3468F: LitI4 0
  loc_C34694: FLdRfVar var_C4
  loc_C34697: CStrVarTmp
  loc_C34698: FStStrNoPop var_9C
  loc_C3469B: LitI2_Byte 3
  loc_C3469D: FLdRfVar var_B4
  loc_C346A0: CStrVarTmp
  loc_C346A1: FStStrNoPop var_98
  loc_C346A4: ImpAdLdI2 MemVar_C3D064
  loc_C346A7: FLdPr Me
  loc_C346AA: MemLdRfVar from_stack_1.global_60
  loc_C346AD: NewIfNullPr clsasiento
  loc_C346B0: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C346B5: FLdI2 var_1C2
  loc_C346B8: FStI2 var_92
  loc_C346BB: FFreeStr var_98 = ""
  loc_C346C2: FFreeAd var_A4 = ""
  loc_C346C9: FFreeVar var_B4 = ""
  loc_C346D0: FLdPr Me
  loc_C346D3: MemLdI2 global_68
  loc_C346D6: LitI2_Byte 0
  loc_C346D8: EqI2
  loc_C346D9: BranchF loc_C346E5
  loc_C346DC: FLdI2 var_92
  loc_C346DF: FLdPr Me
  loc_C346E2: MemStI2 global_68
  loc_C346E5: FLdPr Me
  loc_C346E8: MemLdI2 global_70
  loc_C346EB: FLdI2 var_92
  loc_C346EE: LtI2
  loc_C346EF: BranchF loc_C346FB
  loc_C346F2: FLdI2 var_92
  loc_C346F5: FLdPr Me
  loc_C346F8: MemStI2 global_70
  loc_C346FB: FLdRfVar var_B4
  loc_C346FE: FLdRfVar var_15C
  loc_C34701: LitVarStr var_D4, "ProvPaco"
  loc_C34706: PopAdLdVar
  loc_C34707: FLdRfVar var_E8
  loc_C3470A: FLdRfVar var_A4
  loc_C3470D: FLdPr Me
  loc_C34710: MemLdRfVar from_stack_1.global_56
  loc_C34713: NewIfNullPr clsparaconta
  loc_C34716: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3471B: FLdPr var_A4
  loc_C3471E:  = Me.Fields
  loc_C34723: FLdPr var_E8
  loc_C34726: from_stack_2 = Me.Item(from_stack_1)
  loc_C3472B: FLdPr var_15C
  loc_C3472E:  = Me.Value
  loc_C34733: FLdRfVar var_C4
  loc_C34736: FLdRfVar var_1CC
  loc_C34739: LitVarStr var_118, "ImpoCamp"
  loc_C3473E: PopAdLdVar
  loc_C3473F: FLdRfVar var_1C8
  loc_C34742: FLdRfVar var_1B0
  loc_C34745: FLdPr Me
  loc_C34748: MemLdRfVar from_stack_1.global_52
  loc_C3474B: NewIfNullPr clscaja
  loc_C3474E: from_stack_1v = clscaja.RsFrmGet()
  loc_C34753: FLdPr var_1B0
  loc_C34756:  = Me.Fields
  loc_C3475B: FLdPr var_1C8
  loc_C3475E: from_stack_2 = Me.Item(from_stack_1)
  loc_C34763: FLdPr var_1CC
  loc_C34766:  = Me.Value
  loc_C3476B: LitI2_Byte 0
  loc_C3476D: CR8I2
  loc_C3476E: PopFPR8
  loc_C3476F: FLdRfVar var_C4
  loc_C34772: CR4Var
  loc_C34773: PopFPR8
  loc_C34774: FLdRfVar var_B4
  loc_C34777: CStrVarTmp
  loc_C34778: FStStrNoPop var_98
  loc_C3477B: FLdI2 var_92
  loc_C3477E: ImpAdLdI2 MemVar_C3D064
  loc_C34781: FLdPr Me
  loc_C34784: MemLdRfVar from_stack_1.global_60
  loc_C34787: NewIfNullPr clsasiento
  loc_C3478A: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3478F: FFree1Str var_98
  loc_C34792: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C347A1: FFreeVar var_B4 = ""
  loc_C347A8: FLdRfVar var_B4
  loc_C347AB: FLdRfVar var_15C
  loc_C347AE: LitVarStr var_D4, "DeexPaco"
  loc_C347B3: PopAdLdVar
  loc_C347B4: FLdRfVar var_E8
  loc_C347B7: FLdRfVar var_A4
  loc_C347BA: FLdPr Me
  loc_C347BD: MemLdRfVar from_stack_1.global_56
  loc_C347C0: NewIfNullPr clsparaconta
  loc_C347C3: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C347C8: FLdPr var_A4
  loc_C347CB:  = Me.Fields
  loc_C347D0: FLdPr var_E8
  loc_C347D3: from_stack_2 = Me.Item(from_stack_1)
  loc_C347D8: FLdPr var_15C
  loc_C347DB:  = Me.Value
  loc_C347E0: FLdRfVar var_C4
  loc_C347E3: FLdRfVar var_1CC
  loc_C347E6: LitVarStr var_118, "ImpoCamp"
  loc_C347EB: PopAdLdVar
  loc_C347EC: FLdRfVar var_1C8
  loc_C347EF: FLdRfVar var_1B0
  loc_C347F2: FLdPr Me
  loc_C347F5: MemLdRfVar from_stack_1.global_52
  loc_C347F8: NewIfNullPr clscaja
  loc_C347FB: from_stack_1v = clscaja.RsFrmGet()
  loc_C34800: FLdPr var_1B0
  loc_C34803:  = Me.Fields
  loc_C34808: FLdPr var_1C8
  loc_C3480B: from_stack_2 = Me.Item(from_stack_1)
  loc_C34810: FLdPr var_1CC
  loc_C34813:  = Me.Value
  loc_C34818: FLdRfVar var_C4
  loc_C3481B: CR4Var
  loc_C3481C: PopFPR8
  loc_C3481D: LitI2_Byte 0
  loc_C3481F: CR8I2
  loc_C34820: PopFPR8
  loc_C34821: FLdRfVar var_B4
  loc_C34824: CStrVarTmp
  loc_C34825: FStStrNoPop var_98
  loc_C34828: FLdI2 var_92
  loc_C3482B: ImpAdLdI2 MemVar_C3D064
  loc_C3482E: FLdPr Me
  loc_C34831: MemLdRfVar from_stack_1.global_60
  loc_C34834: NewIfNullPr clsasiento
  loc_C34837: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3483C: FFree1Str var_98
  loc_C3483F: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3484E: FFreeVar var_B4 = ""
  loc_C34855: LitVarStr var_D4, "Asiento Automático de Desafectaciones de Mandados a Pagar Presupuestarios"
  loc_C3485A: PopAdLdVar
  loc_C3485B: FLdPr Me
  loc_C3485E: VCallAd Control_ID_StatusBar
  loc_C34861: FStAdFunc var_A4
  loc_C34864: FLdPr var_A4
  loc_C34867: LateIdSt
  loc_C3486C: FFree1Ad var_A4
  loc_C3486F: LitStr "SELECT IFNULL(Abs(Sum(ImpoCamp)),0) ImpoCamp"
  loc_C34872: LitStr " FROM cajamapa cm"
  loc_C34875: ConcatStr
  loc_C34876: FStStrNoPop var_98
  loc_C34879: LitStr " INNER JOIN paraconta p ON p.PeriInfo = cm.PeriInfo"
  loc_C3487C: ConcatStr
  loc_C3487D: FStStrNoPop var_9C
  loc_C34880: LitStr " INNER JOIN imputacion i ON i.PeriInfo = cm.PeriInfo AND i.IdImpu = cm.IdImpu"
  loc_C34883: ConcatStr
  loc_C34884: FStStrNoPop var_A0
  loc_C34887: LitStr " WHERE cm.PeriInfo = Year(@desde) AND FechCaja BETWEEN @desde AND @hasta"
  loc_C3488A: ConcatStr
  loc_C3488B: FStStrNoPop var_12C
  loc_C3488E: LitStr " AND ImpoCamp < 0"
  loc_C34891: ConcatStr
  loc_C34892: FStStrNoPop var_130
  loc_C34895: LitStr " AND Left(CodiPart,1) <> PaexPaco;"
  loc_C34898: ConcatStr
  loc_C34899: FStStrNoPop var_134
  loc_C3489C: FLdPr Me
  loc_C3489F: MemLdRfVar from_stack_1.global_52
  loc_C348A2: NewIfNullPr clscaja
  loc_C348A5: Call clscaja.RedefineRS(from_stack_1v)
  loc_C348AA: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = ""
  loc_C348B9: FLdRfVar var_B4
  loc_C348BC: FLdRfVar var_15C
  loc_C348BF: LitVarStr var_D4, "ImpoCamp"
  loc_C348C4: PopAdLdVar
  loc_C348C5: FLdRfVar var_E8
  loc_C348C8: FLdRfVar var_A4
  loc_C348CB: FLdPr Me
  loc_C348CE: MemLdRfVar from_stack_1.global_52
  loc_C348D1: NewIfNullPr clscaja
  loc_C348D4: from_stack_1v = clscaja.RsFrmGet()
  loc_C348D9: FLdPr var_A4
  loc_C348DC:  = Me.Fields
  loc_C348E1: FLdPr var_E8
  loc_C348E4: from_stack_2 = Me.Item(from_stack_1)
  loc_C348E9: FLdPr var_15C
  loc_C348EC:  = Me.Value
  loc_C348F1: FLdRfVar var_B4
  loc_C348F4: LitVarI2 var_118, 0
  loc_C348F9: HardType
  loc_C348FA: NeVarBool
  loc_C348FC: FFreeAd var_A4 = "": var_E8 = ""
  loc_C34905: FFree1Var var_B4 = ""
  loc_C34908: BranchF loc_C34B03
  loc_C3490B: FLdPr Me
  loc_C3490E: VCallAd Control_ID_FechCajaHastaMsk
  loc_C34911: FStAdFunc var_A4
  loc_C34914: FLdPr var_A4
  loc_C34917: LateIdLdVar var_B4 DispID_15 0
  loc_C3491E: PopAd
  loc_C34920: FLdPr Me
  loc_C34923: VCallAd Control_ID_StatusBar
  loc_C34926: FStAdFunc var_E8
  loc_C34929: FLdPr var_E8
  loc_C3492C: LateIdLdVar var_C4 DispID_1 0
  loc_C34933: PopAd
  loc_C34935: FLdRfVar var_1C2
  loc_C34938: LitI4 0
  loc_C3493D: LitI4 0
  loc_C34942: FLdRfVar var_C4
  loc_C34945: CStrVarTmp
  loc_C34946: FStStrNoPop var_9C
  loc_C34949: LitI2_Byte 3
  loc_C3494B: FLdRfVar var_B4
  loc_C3494E: CStrVarTmp
  loc_C3494F: FStStrNoPop var_98
  loc_C34952: ImpAdLdI2 MemVar_C3D064
  loc_C34955: FLdPr Me
  loc_C34958: MemLdRfVar from_stack_1.global_60
  loc_C3495B: NewIfNullPr clsasiento
  loc_C3495E: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C34963: FLdI2 var_1C2
  loc_C34966: FStI2 var_92
  loc_C34969: FFreeStr var_98 = ""
  loc_C34970: FFreeAd var_A4 = ""
  loc_C34977: FFreeVar var_B4 = ""
  loc_C3497E: FLdPr Me
  loc_C34981: MemLdI2 global_68
  loc_C34984: LitI2_Byte 0
  loc_C34986: EqI2
  loc_C34987: BranchF loc_C34993
  loc_C3498A: FLdI2 var_92
  loc_C3498D: FLdPr Me
  loc_C34990: MemStI2 global_68
  loc_C34993: FLdPr Me
  loc_C34996: MemLdI2 global_70
  loc_C34999: FLdI2 var_92
  loc_C3499C: LtI2
  loc_C3499D: BranchF loc_C349A9
  loc_C349A0: FLdI2 var_92
  loc_C349A3: FLdPr Me
  loc_C349A6: MemStI2 global_70
  loc_C349A9: FLdRfVar var_B4
  loc_C349AC: FLdRfVar var_15C
  loc_C349AF: LitVarStr var_D4, "DeexPaco"
  loc_C349B4: PopAdLdVar
  loc_C349B5: FLdRfVar var_E8
  loc_C349B8: FLdRfVar var_A4
  loc_C349BB: FLdPr Me
  loc_C349BE: MemLdRfVar from_stack_1.global_56
  loc_C349C1: NewIfNullPr clsparaconta
  loc_C349C4: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C349C9: FLdPr var_A4
  loc_C349CC:  = Me.Fields
  loc_C349D1: FLdPr var_E8
  loc_C349D4: from_stack_2 = Me.Item(from_stack_1)
  loc_C349D9: FLdPr var_15C
  loc_C349DC:  = Me.Value
  loc_C349E1: FLdRfVar var_C4
  loc_C349E4: FLdRfVar var_1CC
  loc_C349E7: LitVarStr var_118, "ImpoCamp"
  loc_C349EC: PopAdLdVar
  loc_C349ED: FLdRfVar var_1C8
  loc_C349F0: FLdRfVar var_1B0
  loc_C349F3: FLdPr Me
  loc_C349F6: MemLdRfVar from_stack_1.global_52
  loc_C349F9: NewIfNullPr clscaja
  loc_C349FC: from_stack_1v = clscaja.RsFrmGet()
  loc_C34A01: FLdPr var_1B0
  loc_C34A04:  = Me.Fields
  loc_C34A09: FLdPr var_1C8
  loc_C34A0C: from_stack_2 = Me.Item(from_stack_1)
  loc_C34A11: FLdPr var_1CC
  loc_C34A14:  = Me.Value
  loc_C34A19: LitI2_Byte 0
  loc_C34A1B: CR8I2
  loc_C34A1C: PopFPR8
  loc_C34A1D: FLdRfVar var_C4
  loc_C34A20: CR4Var
  loc_C34A21: PopFPR8
  loc_C34A22: FLdRfVar var_B4
  loc_C34A25: CStrVarTmp
  loc_C34A26: FStStrNoPop var_98
  loc_C34A29: FLdI2 var_92
  loc_C34A2C: ImpAdLdI2 MemVar_C3D064
  loc_C34A2F: FLdPr Me
  loc_C34A32: MemLdRfVar from_stack_1.global_60
  loc_C34A35: NewIfNullPr clsasiento
  loc_C34A38: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C34A3D: FFree1Str var_98
  loc_C34A40: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C34A4F: FFreeVar var_B4 = ""
  loc_C34A56: FLdRfVar var_B4
  loc_C34A59: FLdRfVar var_15C
  loc_C34A5C: LitVarStr var_D4, "ProvPaco"
  loc_C34A61: PopAdLdVar
  loc_C34A62: FLdRfVar var_E8
  loc_C34A65: FLdRfVar var_A4
  loc_C34A68: FLdPr Me
  loc_C34A6B: MemLdRfVar from_stack_1.global_56
  loc_C34A6E: NewIfNullPr clsparaconta
  loc_C34A71: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C34A76: FLdPr var_A4
  loc_C34A79:  = Me.Fields
  loc_C34A7E: FLdPr var_E8
  loc_C34A81: from_stack_2 = Me.Item(from_stack_1)
  loc_C34A86: FLdPr var_15C
  loc_C34A89:  = Me.Value
  loc_C34A8E: FLdRfVar var_C4
  loc_C34A91: FLdRfVar var_1CC
  loc_C34A94: LitVarStr var_118, "ImpoCamp"
  loc_C34A99: PopAdLdVar
  loc_C34A9A: FLdRfVar var_1C8
  loc_C34A9D: FLdRfVar var_1B0
  loc_C34AA0: FLdPr Me
  loc_C34AA3: MemLdRfVar from_stack_1.global_52
  loc_C34AA6: NewIfNullPr clscaja
  loc_C34AA9: from_stack_1v = clscaja.RsFrmGet()
  loc_C34AAE: FLdPr var_1B0
  loc_C34AB1:  = Me.Fields
  loc_C34AB6: FLdPr var_1C8
  loc_C34AB9: from_stack_2 = Me.Item(from_stack_1)
  loc_C34ABE: FLdPr var_1CC
  loc_C34AC1:  = Me.Value
  loc_C34AC6: FLdRfVar var_C4
  loc_C34AC9: CR4Var
  loc_C34ACA: PopFPR8
  loc_C34ACB: LitI2_Byte 0
  loc_C34ACD: CR8I2
  loc_C34ACE: PopFPR8
  loc_C34ACF: FLdRfVar var_B4
  loc_C34AD2: CStrVarTmp
  loc_C34AD3: FStStrNoPop var_98
  loc_C34AD6: FLdI2 var_92
  loc_C34AD9: ImpAdLdI2 MemVar_C3D064
  loc_C34ADC: FLdPr Me
  loc_C34ADF: MemLdRfVar from_stack_1.global_60
  loc_C34AE2: NewIfNullPr clsasiento
  loc_C34AE5: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C34AEA: FFree1Str var_98
  loc_C34AED: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C34AFC: FFreeVar var_B4 = ""
  loc_C34B03: LitVarStr var_D4, "Asiento Automático de Emisión de Cheques"
  loc_C34B08: PopAdLdVar
  loc_C34B09: FLdPr Me
  loc_C34B0C: VCallAd Control_ID_StatusBar
  loc_C34B0F: FStAdFunc var_A4
  loc_C34B12: FLdPr var_A4
  loc_C34B15: LateIdSt
  loc_C34B1A: FFree1Ad var_A4
  loc_C34B1D: LitStr "SELECT CodiCuco, Sum(HabeCaec) HabeCaec"
  loc_C34B20: LitStr " FROM cajaemicheq"
  loc_C34B23: ConcatStr
  loc_C34B24: FStStrNoPop var_98
  loc_C34B27: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C34B2A: ConcatStr
  loc_C34B2B: FStStrNoPop var_9C
  loc_C34B2E: LitStr " AND HabeCaec > 0"
  loc_C34B31: ConcatStr
  loc_C34B32: FStStrNoPop var_A0
  loc_C34B35: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C34B38: ConcatStr
  loc_C34B39: FStStrNoPop var_12C
  loc_C34B3C: FLdPr Me
  loc_C34B3F: MemLdRfVar from_stack_1.global_52
  loc_C34B42: NewIfNullPr clscaja
  loc_C34B45: Call clscaja.RedefineRS(from_stack_1v)
  loc_C34B4A: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C34B55: FLdRfVar var_138
  loc_C34B58: FLdPr Me
  loc_C34B5B: MemLdRfVar from_stack_1.global_52
  loc_C34B5E: NewIfNullPr clscaja
  loc_C34B61: from_stack_1 = clscaja.RecordCount
  loc_C34B66: ILdRf var_138
  loc_C34B69: LitI4 0
  loc_C34B6E: GtI4
  loc_C34B6F: BranchF loc_C34E21
  loc_C34B72: FLdPr Me
  loc_C34B75: VCallAd Control_ID_FechCajaHastaMsk
  loc_C34B78: FStAdFunc var_A4
  loc_C34B7B: FLdPr var_A4
  loc_C34B7E: LateIdLdVar var_B4 DispID_15 0
  loc_C34B85: PopAd
  loc_C34B87: FLdPr Me
  loc_C34B8A: VCallAd Control_ID_StatusBar
  loc_C34B8D: FStAdFunc var_E8
  loc_C34B90: FLdPr var_E8
  loc_C34B93: LateIdLdVar var_C4 DispID_1 0
  loc_C34B9A: PopAd
  loc_C34B9C: FLdRfVar var_1C2
  loc_C34B9F: LitI4 0
  loc_C34BA4: LitI4 0
  loc_C34BA9: FLdRfVar var_C4
  loc_C34BAC: CStrVarTmp
  loc_C34BAD: FStStrNoPop var_9C
  loc_C34BB0: LitI2_Byte 4
  loc_C34BB2: FLdRfVar var_B4
  loc_C34BB5: CStrVarTmp
  loc_C34BB6: FStStrNoPop var_98
  loc_C34BB9: ImpAdLdI2 MemVar_C3D064
  loc_C34BBC: FLdPr Me
  loc_C34BBF: MemLdRfVar from_stack_1.global_60
  loc_C34BC2: NewIfNullPr clsasiento
  loc_C34BC5: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C34BCA: FLdI2 var_1C2
  loc_C34BCD: FStI2 var_92
  loc_C34BD0: FFreeStr var_98 = ""
  loc_C34BD7: FFreeAd var_A4 = ""
  loc_C34BDE: FFreeVar var_B4 = ""
  loc_C34BE5: FLdPr Me
  loc_C34BE8: MemLdI2 global_68
  loc_C34BEB: LitI2_Byte 0
  loc_C34BED: EqI2
  loc_C34BEE: BranchF loc_C34BFA
  loc_C34BF1: FLdI2 var_92
  loc_C34BF4: FLdPr Me
  loc_C34BF7: MemStI2 global_68
  loc_C34BFA: FLdPr Me
  loc_C34BFD: MemLdI2 global_70
  loc_C34C00: FLdI2 var_92
  loc_C34C03: LtI2
  loc_C34C04: BranchF loc_C34C10
  loc_C34C07: FLdI2 var_92
  loc_C34C0A: FLdPr Me
  loc_C34C0D: MemStI2 global_70
  loc_C34C10: FLdPr Me
  loc_C34C13: MemLdRfVar from_stack_1.global_52
  loc_C34C16: NewIfNullPr clscaja
  loc_C34C19: Call clscaja.MoveFirst()
  loc_C34C1E: LitI2_Byte 0
  loc_C34C20: CR8I2
  loc_C34C21: FStFPR8 var_90
  loc_C34C24: FLdRfVar var_1C2
  loc_C34C27: FLdPr Me
  loc_C34C2A: MemLdRfVar from_stack_1.global_52
  loc_C34C2D: NewIfNullPr clscaja
  loc_C34C30: from_stack_1 = clscaja.EOF
  loc_C34C35: FLdI2 var_1C2
  loc_C34C38: NotI4
  loc_C34C39: BranchF loc_C34DB8
  loc_C34C3C: FLdRfVar var_15C
  loc_C34C3F: LitVarStr var_118, "HabeCaec"
  loc_C34C44: PopAdLdVar
  loc_C34C45: FLdRfVar var_E8
  loc_C34C48: FLdRfVar var_A4
  loc_C34C4B: FLdPr Me
  loc_C34C4E: MemLdRfVar from_stack_1.global_52
  loc_C34C51: NewIfNullPr clscaja
  loc_C34C54: from_stack_1v = clscaja.RsFrmGet()
  loc_C34C59: FLdPr var_A4
  loc_C34C5C:  = Me.Fields
  loc_C34C61: FLdPr var_E8
  loc_C34C64: from_stack_2 = Me.Item(from_stack_1)
  loc_C34C69: LitI4 2
  loc_C34C6E: FLdRfVar var_90
  loc_C34C71: CVarRef
  loc_C34C76: FLdRfVar var_B4
  loc_C34C79: ImpAdCallFPR4  = Round(, )
  loc_C34C7E: FLdRfVar var_B4
  loc_C34C81: LitI4 2
  loc_C34C86: FLdZeroAd var_15C
  loc_C34C89: CVarAd
  loc_C34C8D: FLdRfVar var_E4
  loc_C34C90: ImpAdCallFPR4  = Round(, )
  loc_C34C95: FLdRfVar var_E4
  loc_C34C98: AddVar var_F8
  loc_C34C9C: CR4Var
  loc_C34C9D: FStFPR8 var_90
  loc_C34CA0: FFreeAd var_A4 = ""
  loc_C34CA7: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C34CB2: FLdRfVar var_B4
  loc_C34CB5: FLdRfVar var_15C
  loc_C34CB8: LitVarStr var_D4, "CodiCuco"
  loc_C34CBD: PopAdLdVar
  loc_C34CBE: FLdRfVar var_E8
  loc_C34CC1: FLdRfVar var_A4
  loc_C34CC4: FLdPr Me
  loc_C34CC7: MemLdRfVar from_stack_1.global_52
  loc_C34CCA: NewIfNullPr clscaja
  loc_C34CCD: from_stack_1v = clscaja.RsFrmGet()
  loc_C34CD2: FLdPr var_A4
  loc_C34CD5:  = Me.Fields
  loc_C34CDA: FLdPr var_E8
  loc_C34CDD: from_stack_2 = Me.Item(from_stack_1)
  loc_C34CE2: FLdPr var_15C
  loc_C34CE5:  = Me.Value
  loc_C34CEA: FLdRfVar var_C4
  loc_C34CED: FLdRfVar var_1CC
  loc_C34CF0: LitVarStr var_118, "HabeCaec"
  loc_C34CF5: PopAdLdVar
  loc_C34CF6: FLdRfVar var_1C8
  loc_C34CF9: FLdRfVar var_1B0
  loc_C34CFC: FLdPr Me
  loc_C34CFF: MemLdRfVar from_stack_1.global_52
  loc_C34D02: NewIfNullPr clscaja
  loc_C34D05: from_stack_1v = clscaja.RsFrmGet()
  loc_C34D0A: FLdPr var_1B0
  loc_C34D0D:  = Me.Fields
  loc_C34D12: FLdPr var_1C8
  loc_C34D15: from_stack_2 = Me.Item(from_stack_1)
  loc_C34D1A: FLdPr var_1CC
  loc_C34D1D:  = Me.Value
  loc_C34D22: FLdRfVar var_C4
  loc_C34D25: CR4Var
  loc_C34D26: PopFPR8
  loc_C34D27: LitI2_Byte 0
  loc_C34D29: CR8I2
  loc_C34D2A: PopFPR8
  loc_C34D2B: FLdRfVar var_B4
  loc_C34D2E: CStrVarTmp
  loc_C34D2F: FStStrNoPop var_98
  loc_C34D32: FLdI2 var_92
  loc_C34D35: ImpAdLdI2 MemVar_C3D064
  loc_C34D38: FLdPr Me
  loc_C34D3B: MemLdRfVar from_stack_1.global_60
  loc_C34D3E: NewIfNullPr clsasiento
  loc_C34D41: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C34D46: FFree1Str var_98
  loc_C34D49: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C34D58: FFreeVar var_B4 = ""
  loc_C34D5F: FLdRfVar var_1D0
  loc_C34D62: FLdPr Me
  loc_C34D65: MemLdRfVar from_stack_1.global_52
  loc_C34D68: NewIfNullPr clscaja
  loc_C34D6B: from_stack_1 = clscaja.RecordCount
  loc_C34D70: FLdRfVar var_138
  loc_C34D73: FLdPr Me
  loc_C34D76: MemLdRfVar from_stack_1.global_52
  loc_C34D79: NewIfNullPr clscaja
  loc_C34D7C: from_stack_1 = clscaja.AbsolutePosition
  loc_C34D81: ILdRf var_138
  loc_C34D84: CR8I4
  loc_C34D85: ILdRf var_1D0
  loc_C34D88: CR8I4
  loc_C34D89: DivR8
  loc_C34D8A: LitI2_Byte &H64
  loc_C34D8C: CR8I2
  loc_C34D8D: MulR8
  loc_C34D8E: CVarR4
  loc_C34D92: PopAdLdVar
  loc_C34D93: FLdPr Me
  loc_C34D96: VCallAd Control_ID_ProgressBar
  loc_C34D99: FStAdFunc var_A4
  loc_C34D9C: FLdPr var_A4
  loc_C34D9F: LateIdSt
  loc_C34DA4: FFree1Ad var_A4
  loc_C34DA7: FLdPr Me
  loc_C34DAA: MemLdRfVar from_stack_1.global_52
  loc_C34DAD: NewIfNullPr clscaja
  loc_C34DB0: Call clscaja.MoveSiguiente()
  loc_C34DB5: Branch loc_C34C24
  loc_C34DB8: FLdRfVar var_B4
  loc_C34DBB: FLdRfVar var_15C
  loc_C34DBE: LitVarStr var_D4, "ChsrPaco"
  loc_C34DC3: PopAdLdVar
  loc_C34DC4: FLdRfVar var_E8
  loc_C34DC7: FLdRfVar var_A4
  loc_C34DCA: FLdPr Me
  loc_C34DCD: MemLdRfVar from_stack_1.global_56
  loc_C34DD0: NewIfNullPr clsparaconta
  loc_C34DD3: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C34DD8: FLdPr var_A4
  loc_C34DDB:  = Me.Fields
  loc_C34DE0: FLdPr var_E8
  loc_C34DE3: from_stack_2 = Me.Item(from_stack_1)
  loc_C34DE8: FLdPr var_15C
  loc_C34DEB:  = Me.Value
  loc_C34DF0: LitI2_Byte 0
  loc_C34DF2: CR8I2
  loc_C34DF3: PopFPR8
  loc_C34DF4: FLdR8 var_90
  loc_C34DF7: FLdRfVar var_B4
  loc_C34DFA: CStrVarTmp
  loc_C34DFB: FStStrNoPop var_98
  loc_C34DFE: FLdI2 var_92
  loc_C34E01: ImpAdLdI2 MemVar_C3D064
  loc_C34E04: FLdPr Me
  loc_C34E07: MemLdRfVar from_stack_1.global_60
  loc_C34E0A: NewIfNullPr clsasiento
  loc_C34E0D: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C34E12: FFree1Str var_98
  loc_C34E15: FFreeAd var_A4 = "": var_E8 = ""
  loc_C34E1E: FFree1Var var_B4 = ""
  loc_C34E21: LitVarStr var_D4, "Asiento Automático de Anulación de Cheques"
  loc_C34E26: PopAdLdVar
  loc_C34E27: FLdPr Me
  loc_C34E2A: VCallAd Control_ID_StatusBar
  loc_C34E2D: FStAdFunc var_A4
  loc_C34E30: FLdPr var_A4
  loc_C34E33: LateIdSt
  loc_C34E38: FFree1Ad var_A4
  loc_C34E3B: LitStr "SELECT CodiCuco, Sum(DebeCaec) DebeCaec"
  loc_C34E3E: LitStr " FROM cajaemicheq"
  loc_C34E41: ConcatStr
  loc_C34E42: FStStrNoPop var_98
  loc_C34E45: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C34E48: ConcatStr
  loc_C34E49: FStStrNoPop var_9C
  loc_C34E4C: LitStr " AND DebeCaec > 0"
  loc_C34E4F: ConcatStr
  loc_C34E50: FStStrNoPop var_A0
  loc_C34E53: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C34E56: ConcatStr
  loc_C34E57: FStStrNoPop var_12C
  loc_C34E5A: FLdPr Me
  loc_C34E5D: MemLdRfVar from_stack_1.global_52
  loc_C34E60: NewIfNullPr clscaja
  loc_C34E63: Call clscaja.RedefineRS(from_stack_1v)
  loc_C34E68: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C34E73: FLdRfVar var_138
  loc_C34E76: FLdPr Me
  loc_C34E79: MemLdRfVar from_stack_1.global_52
  loc_C34E7C: NewIfNullPr clscaja
  loc_C34E7F: from_stack_1 = clscaja.RecordCount
  loc_C34E84: ILdRf var_138
  loc_C34E87: LitI4 0
  loc_C34E8C: GtI4
  loc_C34E8D: BranchF loc_C3513F
  loc_C34E90: FLdPr Me
  loc_C34E93: VCallAd Control_ID_FechCajaHastaMsk
  loc_C34E96: FStAdFunc var_A4
  loc_C34E99: FLdPr var_A4
  loc_C34E9C: LateIdLdVar var_B4 DispID_15 0
  loc_C34EA3: PopAd
  loc_C34EA5: FLdPr Me
  loc_C34EA8: VCallAd Control_ID_StatusBar
  loc_C34EAB: FStAdFunc var_E8
  loc_C34EAE: FLdPr var_E8
  loc_C34EB1: LateIdLdVar var_C4 DispID_1 0
  loc_C34EB8: PopAd
  loc_C34EBA: FLdRfVar var_1C2
  loc_C34EBD: LitI4 0
  loc_C34EC2: LitI4 0
  loc_C34EC7: FLdRfVar var_C4
  loc_C34ECA: CStrVarTmp
  loc_C34ECB: FStStrNoPop var_9C
  loc_C34ECE: LitI2_Byte 4
  loc_C34ED0: FLdRfVar var_B4
  loc_C34ED3: CStrVarTmp
  loc_C34ED4: FStStrNoPop var_98
  loc_C34ED7: ImpAdLdI2 MemVar_C3D064
  loc_C34EDA: FLdPr Me
  loc_C34EDD: MemLdRfVar from_stack_1.global_60
  loc_C34EE0: NewIfNullPr clsasiento
  loc_C34EE3: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C34EE8: FLdI2 var_1C2
  loc_C34EEB: FStI2 var_92
  loc_C34EEE: FFreeStr var_98 = ""
  loc_C34EF5: FFreeAd var_A4 = ""
  loc_C34EFC: FFreeVar var_B4 = ""
  loc_C34F03: FLdPr Me
  loc_C34F06: MemLdI2 global_68
  loc_C34F09: LitI2_Byte 0
  loc_C34F0B: EqI2
  loc_C34F0C: BranchF loc_C34F18
  loc_C34F0F: FLdI2 var_92
  loc_C34F12: FLdPr Me
  loc_C34F15: MemStI2 global_68
  loc_C34F18: FLdPr Me
  loc_C34F1B: MemLdI2 global_70
  loc_C34F1E: FLdI2 var_92
  loc_C34F21: LtI2
  loc_C34F22: BranchF loc_C34F2E
  loc_C34F25: FLdI2 var_92
  loc_C34F28: FLdPr Me
  loc_C34F2B: MemStI2 global_70
  loc_C34F2E: FLdPr Me
  loc_C34F31: MemLdRfVar from_stack_1.global_52
  loc_C34F34: NewIfNullPr clscaja
  loc_C34F37: Call clscaja.MoveFirst()
  loc_C34F3C: LitI2_Byte 0
  loc_C34F3E: CR8I2
  loc_C34F3F: FStFPR8 var_90
  loc_C34F42: FLdRfVar var_1C2
  loc_C34F45: FLdPr Me
  loc_C34F48: MemLdRfVar from_stack_1.global_52
  loc_C34F4B: NewIfNullPr clscaja
  loc_C34F4E: from_stack_1 = clscaja.EOF
  loc_C34F53: FLdI2 var_1C2
  loc_C34F56: NotI4
  loc_C34F57: BranchF loc_C350D6
  loc_C34F5A: FLdRfVar var_15C
  loc_C34F5D: LitVarStr var_118, "DebeCaec"
  loc_C34F62: PopAdLdVar
  loc_C34F63: FLdRfVar var_E8
  loc_C34F66: FLdRfVar var_A4
  loc_C34F69: FLdPr Me
  loc_C34F6C: MemLdRfVar from_stack_1.global_52
  loc_C34F6F: NewIfNullPr clscaja
  loc_C34F72: from_stack_1v = clscaja.RsFrmGet()
  loc_C34F77: FLdPr var_A4
  loc_C34F7A:  = Me.Fields
  loc_C34F7F: FLdPr var_E8
  loc_C34F82: from_stack_2 = Me.Item(from_stack_1)
  loc_C34F87: LitI4 2
  loc_C34F8C: FLdRfVar var_90
  loc_C34F8F: CVarRef
  loc_C34F94: FLdRfVar var_B4
  loc_C34F97: ImpAdCallFPR4  = Round(, )
  loc_C34F9C: FLdRfVar var_B4
  loc_C34F9F: LitI4 2
  loc_C34FA4: FLdZeroAd var_15C
  loc_C34FA7: CVarAd
  loc_C34FAB: FLdRfVar var_E4
  loc_C34FAE: ImpAdCallFPR4  = Round(, )
  loc_C34FB3: FLdRfVar var_E4
  loc_C34FB6: AddVar var_F8
  loc_C34FBA: CR4Var
  loc_C34FBB: FStFPR8 var_90
  loc_C34FBE: FFreeAd var_A4 = ""
  loc_C34FC5: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C34FD0: FLdRfVar var_B4
  loc_C34FD3: FLdRfVar var_15C
  loc_C34FD6: LitVarStr var_D4, "CodiCuco"
  loc_C34FDB: PopAdLdVar
  loc_C34FDC: FLdRfVar var_E8
  loc_C34FDF: FLdRfVar var_A4
  loc_C34FE2: FLdPr Me
  loc_C34FE5: MemLdRfVar from_stack_1.global_52
  loc_C34FE8: NewIfNullPr clscaja
  loc_C34FEB: from_stack_1v = clscaja.RsFrmGet()
  loc_C34FF0: FLdPr var_A4
  loc_C34FF3:  = Me.Fields
  loc_C34FF8: FLdPr var_E8
  loc_C34FFB: from_stack_2 = Me.Item(from_stack_1)
  loc_C35000: FLdPr var_15C
  loc_C35003:  = Me.Value
  loc_C35008: FLdRfVar var_C4
  loc_C3500B: FLdRfVar var_1CC
  loc_C3500E: LitVarStr var_118, "DebeCaec"
  loc_C35013: PopAdLdVar
  loc_C35014: FLdRfVar var_1C8
  loc_C35017: FLdRfVar var_1B0
  loc_C3501A: FLdPr Me
  loc_C3501D: MemLdRfVar from_stack_1.global_52
  loc_C35020: NewIfNullPr clscaja
  loc_C35023: from_stack_1v = clscaja.RsFrmGet()
  loc_C35028: FLdPr var_1B0
  loc_C3502B:  = Me.Fields
  loc_C35030: FLdPr var_1C8
  loc_C35033: from_stack_2 = Me.Item(from_stack_1)
  loc_C35038: FLdPr var_1CC
  loc_C3503B:  = Me.Value
  loc_C35040: LitI2_Byte 0
  loc_C35042: CR8I2
  loc_C35043: PopFPR8
  loc_C35044: FLdRfVar var_C4
  loc_C35047: CR4Var
  loc_C35048: PopFPR8
  loc_C35049: FLdRfVar var_B4
  loc_C3504C: CStrVarTmp
  loc_C3504D: FStStrNoPop var_98
  loc_C35050: FLdI2 var_92
  loc_C35053: ImpAdLdI2 MemVar_C3D064
  loc_C35056: FLdPr Me
  loc_C35059: MemLdRfVar from_stack_1.global_60
  loc_C3505C: NewIfNullPr clsasiento
  loc_C3505F: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C35064: FFree1Str var_98
  loc_C35067: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C35076: FFreeVar var_B4 = ""
  loc_C3507D: FLdRfVar var_1D0
  loc_C35080: FLdPr Me
  loc_C35083: MemLdRfVar from_stack_1.global_52
  loc_C35086: NewIfNullPr clscaja
  loc_C35089: from_stack_1 = clscaja.RecordCount
  loc_C3508E: FLdRfVar var_138
  loc_C35091: FLdPr Me
  loc_C35094: MemLdRfVar from_stack_1.global_52
  loc_C35097: NewIfNullPr clscaja
  loc_C3509A: from_stack_1 = clscaja.AbsolutePosition
  loc_C3509F: ILdRf var_138
  loc_C350A2: CR8I4
  loc_C350A3: ILdRf var_1D0
  loc_C350A6: CR8I4
  loc_C350A7: DivR8
  loc_C350A8: LitI2_Byte &H64
  loc_C350AA: CR8I2
  loc_C350AB: MulR8
  loc_C350AC: CVarR4
  loc_C350B0: PopAdLdVar
  loc_C350B1: FLdPr Me
  loc_C350B4: VCallAd Control_ID_ProgressBar
  loc_C350B7: FStAdFunc var_A4
  loc_C350BA: FLdPr var_A4
  loc_C350BD: LateIdSt
  loc_C350C2: FFree1Ad var_A4
  loc_C350C5: FLdPr Me
  loc_C350C8: MemLdRfVar from_stack_1.global_52
  loc_C350CB: NewIfNullPr clscaja
  loc_C350CE: Call clscaja.MoveSiguiente()
  loc_C350D3: Branch loc_C34F42
  loc_C350D6: FLdRfVar var_B4
  loc_C350D9: FLdRfVar var_15C
  loc_C350DC: LitVarStr var_D4, "ChsrPaco"
  loc_C350E1: PopAdLdVar
  loc_C350E2: FLdRfVar var_E8
  loc_C350E5: FLdRfVar var_A4
  loc_C350E8: FLdPr Me
  loc_C350EB: MemLdRfVar from_stack_1.global_56
  loc_C350EE: NewIfNullPr clsparaconta
  loc_C350F1: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C350F6: FLdPr var_A4
  loc_C350F9:  = Me.Fields
  loc_C350FE: FLdPr var_E8
  loc_C35101: from_stack_2 = Me.Item(from_stack_1)
  loc_C35106: FLdPr var_15C
  loc_C35109:  = Me.Value
  loc_C3510E: FLdR8 var_90
  loc_C35111: LitI2_Byte 0
  loc_C35113: CR8I2
  loc_C35114: PopFPR8
  loc_C35115: FLdRfVar var_B4
  loc_C35118: CStrVarTmp
  loc_C35119: FStStrNoPop var_98
  loc_C3511C: FLdI2 var_92
  loc_C3511F: ImpAdLdI2 MemVar_C3D064
  loc_C35122: FLdPr Me
  loc_C35125: MemLdRfVar from_stack_1.global_60
  loc_C35128: NewIfNullPr clsasiento
  loc_C3512B: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C35130: FFree1Str var_98
  loc_C35133: FFreeAd var_A4 = "": var_E8 = ""
  loc_C3513C: FFree1Var var_B4 = ""
  loc_C3513F: LitVarStr var_D4, "Asiento Automático de Remisión de Cheques"
  loc_C35144: PopAdLdVar
  loc_C35145: FLdPr Me
  loc_C35148: VCallAd Control_ID_StatusBar
  loc_C3514B: FStAdFunc var_A4
  loc_C3514E: FLdPr var_A4
  loc_C35151: LateIdSt
  loc_C35156: FFree1Ad var_A4
  loc_C35159: LitStr "SELECT CodiCuco, Sum(HabeCarc) HabeCarc"
  loc_C3515C: LitStr " FROM cajaremicheq"
  loc_C3515F: ConcatStr
  loc_C35160: FStStrNoPop var_98
  loc_C35163: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C35166: ConcatStr
  loc_C35167: FStStrNoPop var_9C
  loc_C3516A: LitStr " AND HabeCarc > 0"
  loc_C3516D: ConcatStr
  loc_C3516E: FStStrNoPop var_A0
  loc_C35171: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C35174: ConcatStr
  loc_C35175: FStStrNoPop var_12C
  loc_C35178: FLdPr Me
  loc_C3517B: MemLdRfVar from_stack_1.global_52
  loc_C3517E: NewIfNullPr clscaja
  loc_C35181: Call clscaja.RedefineRS(from_stack_1v)
  loc_C35186: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C35191: FLdRfVar var_138
  loc_C35194: FLdPr Me
  loc_C35197: MemLdRfVar from_stack_1.global_52
  loc_C3519A: NewIfNullPr clscaja
  loc_C3519D: from_stack_1 = clscaja.RecordCount
  loc_C351A2: ILdRf var_138
  loc_C351A5: LitI4 0
  loc_C351AA: GtI4
  loc_C351AB: BranchF loc_C3545D
  loc_C351AE: FLdPr Me
  loc_C351B1: VCallAd Control_ID_FechCajaHastaMsk
  loc_C351B4: FStAdFunc var_A4
  loc_C351B7: FLdPr var_A4
  loc_C351BA: LateIdLdVar var_B4 DispID_15 0
  loc_C351C1: PopAd
  loc_C351C3: FLdPr Me
  loc_C351C6: VCallAd Control_ID_StatusBar
  loc_C351C9: FStAdFunc var_E8
  loc_C351CC: FLdPr var_E8
  loc_C351CF: LateIdLdVar var_C4 DispID_1 0
  loc_C351D6: PopAd
  loc_C351D8: FLdRfVar var_1C2
  loc_C351DB: LitI4 0
  loc_C351E0: LitI4 0
  loc_C351E5: FLdRfVar var_C4
  loc_C351E8: CStrVarTmp
  loc_C351E9: FStStrNoPop var_9C
  loc_C351EC: LitI2_Byte 5
  loc_C351EE: FLdRfVar var_B4
  loc_C351F1: CStrVarTmp
  loc_C351F2: FStStrNoPop var_98
  loc_C351F5: ImpAdLdI2 MemVar_C3D064
  loc_C351F8: FLdPr Me
  loc_C351FB: MemLdRfVar from_stack_1.global_60
  loc_C351FE: NewIfNullPr clsasiento
  loc_C35201: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C35206: FLdI2 var_1C2
  loc_C35209: FStI2 var_92
  loc_C3520C: FFreeStr var_98 = ""
  loc_C35213: FFreeAd var_A4 = ""
  loc_C3521A: FFreeVar var_B4 = ""
  loc_C35221: FLdPr Me
  loc_C35224: MemLdI2 global_68
  loc_C35227: LitI2_Byte 0
  loc_C35229: EqI2
  loc_C3522A: BranchF loc_C35236
  loc_C3522D: FLdI2 var_92
  loc_C35230: FLdPr Me
  loc_C35233: MemStI2 global_68
  loc_C35236: FLdPr Me
  loc_C35239: MemLdI2 global_70
  loc_C3523C: FLdI2 var_92
  loc_C3523F: LtI2
  loc_C35240: BranchF loc_C3524C
  loc_C35243: FLdI2 var_92
  loc_C35246: FLdPr Me
  loc_C35249: MemStI2 global_70
  loc_C3524C: FLdPr Me
  loc_C3524F: MemLdRfVar from_stack_1.global_52
  loc_C35252: NewIfNullPr clscaja
  loc_C35255: Call clscaja.MoveFirst()
  loc_C3525A: LitI2_Byte 0
  loc_C3525C: CR8I2
  loc_C3525D: FStFPR8 var_90
  loc_C35260: FLdRfVar var_1C2
  loc_C35263: FLdPr Me
  loc_C35266: MemLdRfVar from_stack_1.global_52
  loc_C35269: NewIfNullPr clscaja
  loc_C3526C: from_stack_1 = clscaja.EOF
  loc_C35271: FLdI2 var_1C2
  loc_C35274: NotI4
  loc_C35275: BranchF loc_C353F4
  loc_C35278: FLdRfVar var_15C
  loc_C3527B: LitVarStr var_118, "HabeCarc"
  loc_C35280: PopAdLdVar
  loc_C35281: FLdRfVar var_E8
  loc_C35284: FLdRfVar var_A4
  loc_C35287: FLdPr Me
  loc_C3528A: MemLdRfVar from_stack_1.global_52
  loc_C3528D: NewIfNullPr clscaja
  loc_C35290: from_stack_1v = clscaja.RsFrmGet()
  loc_C35295: FLdPr var_A4
  loc_C35298:  = Me.Fields
  loc_C3529D: FLdPr var_E8
  loc_C352A0: from_stack_2 = Me.Item(from_stack_1)
  loc_C352A5: LitI4 2
  loc_C352AA: FLdRfVar var_90
  loc_C352AD: CVarRef
  loc_C352B2: FLdRfVar var_B4
  loc_C352B5: ImpAdCallFPR4  = Round(, )
  loc_C352BA: FLdRfVar var_B4
  loc_C352BD: LitI4 2
  loc_C352C2: FLdZeroAd var_15C
  loc_C352C5: CVarAd
  loc_C352C9: FLdRfVar var_E4
  loc_C352CC: ImpAdCallFPR4  = Round(, )
  loc_C352D1: FLdRfVar var_E4
  loc_C352D4: AddVar var_F8
  loc_C352D8: CR4Var
  loc_C352D9: FStFPR8 var_90
  loc_C352DC: FFreeAd var_A4 = ""
  loc_C352E3: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C352EE: FLdRfVar var_B4
  loc_C352F1: FLdRfVar var_15C
  loc_C352F4: LitVarStr var_D4, "ChsrPaco"
  loc_C352F9: PopAdLdVar
  loc_C352FA: FLdRfVar var_E8
  loc_C352FD: FLdRfVar var_A4
  loc_C35300: FLdPr Me
  loc_C35303: MemLdRfVar from_stack_1.global_56
  loc_C35306: NewIfNullPr clsparaconta
  loc_C35309: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3530E: FLdPr var_A4
  loc_C35311:  = Me.Fields
  loc_C35316: FLdPr var_E8
  loc_C35319: from_stack_2 = Me.Item(from_stack_1)
  loc_C3531E: FLdPr var_15C
  loc_C35321:  = Me.Value
  loc_C35326: FLdRfVar var_C4
  loc_C35329: FLdRfVar var_1CC
  loc_C3532C: LitVarStr var_118, "HabeCarc"
  loc_C35331: PopAdLdVar
  loc_C35332: FLdRfVar var_1C8
  loc_C35335: FLdRfVar var_1B0
  loc_C35338: FLdPr Me
  loc_C3533B: MemLdRfVar from_stack_1.global_52
  loc_C3533E: NewIfNullPr clscaja
  loc_C35341: from_stack_1v = clscaja.RsFrmGet()
  loc_C35346: FLdPr var_1B0
  loc_C35349:  = Me.Fields
  loc_C3534E: FLdPr var_1C8
  loc_C35351: from_stack_2 = Me.Item(from_stack_1)
  loc_C35356: FLdPr var_1CC
  loc_C35359:  = Me.Value
  loc_C3535E: FLdRfVar var_C4
  loc_C35361: CR4Var
  loc_C35362: PopFPR8
  loc_C35363: LitI2_Byte 0
  loc_C35365: CR8I2
  loc_C35366: PopFPR8
  loc_C35367: FLdRfVar var_B4
  loc_C3536A: CStrVarTmp
  loc_C3536B: FStStrNoPop var_98
  loc_C3536E: FLdI2 var_92
  loc_C35371: ImpAdLdI2 MemVar_C3D064
  loc_C35374: FLdPr Me
  loc_C35377: MemLdRfVar from_stack_1.global_60
  loc_C3537A: NewIfNullPr clsasiento
  loc_C3537D: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C35382: FFree1Str var_98
  loc_C35385: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C35394: FFreeVar var_B4 = ""
  loc_C3539B: FLdRfVar var_1D0
  loc_C3539E: FLdPr Me
  loc_C353A1: MemLdRfVar from_stack_1.global_52
  loc_C353A4: NewIfNullPr clscaja
  loc_C353A7: from_stack_1 = clscaja.RecordCount
  loc_C353AC: FLdRfVar var_138
  loc_C353AF: FLdPr Me
  loc_C353B2: MemLdRfVar from_stack_1.global_52
  loc_C353B5: NewIfNullPr clscaja
  loc_C353B8: from_stack_1 = clscaja.AbsolutePosition
  loc_C353BD: ILdRf var_138
  loc_C353C0: CR8I4
  loc_C353C1: ILdRf var_1D0
  loc_C353C4: CR8I4
  loc_C353C5: DivR8
  loc_C353C6: LitI2_Byte &H64
  loc_C353C8: CR8I2
  loc_C353C9: MulR8
  loc_C353CA: CVarR4
  loc_C353CE: PopAdLdVar
  loc_C353CF: FLdPr Me
  loc_C353D2: VCallAd Control_ID_ProgressBar
  loc_C353D5: FStAdFunc var_A4
  loc_C353D8: FLdPr var_A4
  loc_C353DB: LateIdSt
  loc_C353E0: FFree1Ad var_A4
  loc_C353E3: FLdPr Me
  loc_C353E6: MemLdRfVar from_stack_1.global_52
  loc_C353E9: NewIfNullPr clscaja
  loc_C353EC: Call clscaja.MoveSiguiente()
  loc_C353F1: Branch loc_C35260
  loc_C353F4: FLdRfVar var_B4
  loc_C353F7: FLdRfVar var_15C
  loc_C353FA: LitVarStr var_D4, "CatePaco"
  loc_C353FF: PopAdLdVar
  loc_C35400: FLdRfVar var_E8
  loc_C35403: FLdRfVar var_A4
  loc_C35406: FLdPr Me
  loc_C35409: MemLdRfVar from_stack_1.global_56
  loc_C3540C: NewIfNullPr clsparaconta
  loc_C3540F: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C35414: FLdPr var_A4
  loc_C35417:  = Me.Fields
  loc_C3541C: FLdPr var_E8
  loc_C3541F: from_stack_2 = Me.Item(from_stack_1)
  loc_C35424: FLdPr var_15C
  loc_C35427:  = Me.Value
  loc_C3542C: LitI2_Byte 0
  loc_C3542E: CR8I2
  loc_C3542F: PopFPR8
  loc_C35430: FLdR8 var_90
  loc_C35433: FLdRfVar var_B4
  loc_C35436: CStrVarTmp
  loc_C35437: FStStrNoPop var_98
  loc_C3543A: FLdI2 var_92
  loc_C3543D: ImpAdLdI2 MemVar_C3D064
  loc_C35440: FLdPr Me
  loc_C35443: MemLdRfVar from_stack_1.global_60
  loc_C35446: NewIfNullPr clsasiento
  loc_C35449: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3544E: FFree1Str var_98
  loc_C35451: FFreeAd var_A4 = "": var_E8 = ""
  loc_C3545A: FFree1Var var_B4 = ""
  loc_C3545D: LitVarStr var_D4, "Asiento Automático de Anulación de Remisión de Cheques"
  loc_C35462: PopAdLdVar
  loc_C35463: FLdPr Me
  loc_C35466: VCallAd Control_ID_StatusBar
  loc_C35469: FStAdFunc var_A4
  loc_C3546C: FLdPr var_A4
  loc_C3546F: LateIdSt
  loc_C35474: FFree1Ad var_A4
  loc_C35477: LitStr "SELECT CodiCuco, Sum(DebeCarc) DebeCarc"
  loc_C3547A: LitStr " FROM cajaremicheq"
  loc_C3547D: ConcatStr
  loc_C3547E: FStStrNoPop var_98
  loc_C35481: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C35484: ConcatStr
  loc_C35485: FStStrNoPop var_9C
  loc_C35488: LitStr " AND DebeCarc > 0"
  loc_C3548B: ConcatStr
  loc_C3548C: FStStrNoPop var_A0
  loc_C3548F: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C35492: ConcatStr
  loc_C35493: FStStrNoPop var_12C
  loc_C35496: FLdPr Me
  loc_C35499: MemLdRfVar from_stack_1.global_52
  loc_C3549C: NewIfNullPr clscaja
  loc_C3549F: Call clscaja.RedefineRS(from_stack_1v)
  loc_C354A4: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C354AF: FLdRfVar var_138
  loc_C354B2: FLdPr Me
  loc_C354B5: MemLdRfVar from_stack_1.global_52
  loc_C354B8: NewIfNullPr clscaja
  loc_C354BB: from_stack_1 = clscaja.RecordCount
  loc_C354C0: ILdRf var_138
  loc_C354C3: LitI4 0
  loc_C354C8: GtI4
  loc_C354C9: BranchF loc_C3577B
  loc_C354CC: FLdPr Me
  loc_C354CF: VCallAd Control_ID_FechCajaHastaMsk
  loc_C354D2: FStAdFunc var_A4
  loc_C354D5: FLdPr var_A4
  loc_C354D8: LateIdLdVar var_B4 DispID_15 0
  loc_C354DF: PopAd
  loc_C354E1: FLdPr Me
  loc_C354E4: VCallAd Control_ID_StatusBar
  loc_C354E7: FStAdFunc var_E8
  loc_C354EA: FLdPr var_E8
  loc_C354ED: LateIdLdVar var_C4 DispID_1 0
  loc_C354F4: PopAd
  loc_C354F6: FLdRfVar var_1C2
  loc_C354F9: LitI4 0
  loc_C354FE: LitI4 0
  loc_C35503: FLdRfVar var_C4
  loc_C35506: CStrVarTmp
  loc_C35507: FStStrNoPop var_9C
  loc_C3550A: LitI2_Byte 5
  loc_C3550C: FLdRfVar var_B4
  loc_C3550F: CStrVarTmp
  loc_C35510: FStStrNoPop var_98
  loc_C35513: ImpAdLdI2 MemVar_C3D064
  loc_C35516: FLdPr Me
  loc_C35519: MemLdRfVar from_stack_1.global_60
  loc_C3551C: NewIfNullPr clsasiento
  loc_C3551F: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C35524: FLdI2 var_1C2
  loc_C35527: FStI2 var_92
  loc_C3552A: FFreeStr var_98 = ""
  loc_C35531: FFreeAd var_A4 = ""
  loc_C35538: FFreeVar var_B4 = ""
  loc_C3553F: FLdPr Me
  loc_C35542: MemLdI2 global_68
  loc_C35545: LitI2_Byte 0
  loc_C35547: EqI2
  loc_C35548: BranchF loc_C35554
  loc_C3554B: FLdI2 var_92
  loc_C3554E: FLdPr Me
  loc_C35551: MemStI2 global_68
  loc_C35554: FLdPr Me
  loc_C35557: MemLdI2 global_70
  loc_C3555A: FLdI2 var_92
  loc_C3555D: LtI2
  loc_C3555E: BranchF loc_C3556A
  loc_C35561: FLdI2 var_92
  loc_C35564: FLdPr Me
  loc_C35567: MemStI2 global_70
  loc_C3556A: FLdPr Me
  loc_C3556D: MemLdRfVar from_stack_1.global_52
  loc_C35570: NewIfNullPr clscaja
  loc_C35573: Call clscaja.MoveFirst()
  loc_C35578: LitI2_Byte 0
  loc_C3557A: CR8I2
  loc_C3557B: FStFPR8 var_90
  loc_C3557E: FLdRfVar var_1C2
  loc_C35581: FLdPr Me
  loc_C35584: MemLdRfVar from_stack_1.global_52
  loc_C35587: NewIfNullPr clscaja
  loc_C3558A: from_stack_1 = clscaja.EOF
  loc_C3558F: FLdI2 var_1C2
  loc_C35592: NotI4
  loc_C35593: BranchF loc_C35712
  loc_C35596: FLdRfVar var_15C
  loc_C35599: LitVarStr var_118, "DebeCarc"
  loc_C3559E: PopAdLdVar
  loc_C3559F: FLdRfVar var_E8
  loc_C355A2: FLdRfVar var_A4
  loc_C355A5: FLdPr Me
  loc_C355A8: MemLdRfVar from_stack_1.global_52
  loc_C355AB: NewIfNullPr clscaja
  loc_C355AE: from_stack_1v = clscaja.RsFrmGet()
  loc_C355B3: FLdPr var_A4
  loc_C355B6:  = Me.Fields
  loc_C355BB: FLdPr var_E8
  loc_C355BE: from_stack_2 = Me.Item(from_stack_1)
  loc_C355C3: LitI4 2
  loc_C355C8: FLdRfVar var_90
  loc_C355CB: CVarRef
  loc_C355D0: FLdRfVar var_B4
  loc_C355D3: ImpAdCallFPR4  = Round(, )
  loc_C355D8: FLdRfVar var_B4
  loc_C355DB: LitI4 2
  loc_C355E0: FLdZeroAd var_15C
  loc_C355E3: CVarAd
  loc_C355E7: FLdRfVar var_E4
  loc_C355EA: ImpAdCallFPR4  = Round(, )
  loc_C355EF: FLdRfVar var_E4
  loc_C355F2: AddVar var_F8
  loc_C355F6: CR4Var
  loc_C355F7: FStFPR8 var_90
  loc_C355FA: FFreeAd var_A4 = ""
  loc_C35601: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3560C: FLdRfVar var_B4
  loc_C3560F: FLdRfVar var_15C
  loc_C35612: LitVarStr var_D4, "ChsrPaco"
  loc_C35617: PopAdLdVar
  loc_C35618: FLdRfVar var_E8
  loc_C3561B: FLdRfVar var_A4
  loc_C3561E: FLdPr Me
  loc_C35621: MemLdRfVar from_stack_1.global_56
  loc_C35624: NewIfNullPr clsparaconta
  loc_C35627: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3562C: FLdPr var_A4
  loc_C3562F:  = Me.Fields
  loc_C35634: FLdPr var_E8
  loc_C35637: from_stack_2 = Me.Item(from_stack_1)
  loc_C3563C: FLdPr var_15C
  loc_C3563F:  = Me.Value
  loc_C35644: FLdRfVar var_C4
  loc_C35647: FLdRfVar var_1CC
  loc_C3564A: LitVarStr var_118, "DebeCarc"
  loc_C3564F: PopAdLdVar
  loc_C35650: FLdRfVar var_1C8
  loc_C35653: FLdRfVar var_1B0
  loc_C35656: FLdPr Me
  loc_C35659: MemLdRfVar from_stack_1.global_52
  loc_C3565C: NewIfNullPr clscaja
  loc_C3565F: from_stack_1v = clscaja.RsFrmGet()
  loc_C35664: FLdPr var_1B0
  loc_C35667:  = Me.Fields
  loc_C3566C: FLdPr var_1C8
  loc_C3566F: from_stack_2 = Me.Item(from_stack_1)
  loc_C35674: FLdPr var_1CC
  loc_C35677:  = Me.Value
  loc_C3567C: LitI2_Byte 0
  loc_C3567E: CR8I2
  loc_C3567F: PopFPR8
  loc_C35680: FLdRfVar var_C4
  loc_C35683: CR4Var
  loc_C35684: PopFPR8
  loc_C35685: FLdRfVar var_B4
  loc_C35688: CStrVarTmp
  loc_C35689: FStStrNoPop var_98
  loc_C3568C: FLdI2 var_92
  loc_C3568F: ImpAdLdI2 MemVar_C3D064
  loc_C35692: FLdPr Me
  loc_C35695: MemLdRfVar from_stack_1.global_60
  loc_C35698: NewIfNullPr clsasiento
  loc_C3569B: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C356A0: FFree1Str var_98
  loc_C356A3: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C356B2: FFreeVar var_B4 = ""
  loc_C356B9: FLdRfVar var_1D0
  loc_C356BC: FLdPr Me
  loc_C356BF: MemLdRfVar from_stack_1.global_52
  loc_C356C2: NewIfNullPr clscaja
  loc_C356C5: from_stack_1 = clscaja.RecordCount
  loc_C356CA: FLdRfVar var_138
  loc_C356CD: FLdPr Me
  loc_C356D0: MemLdRfVar from_stack_1.global_52
  loc_C356D3: NewIfNullPr clscaja
  loc_C356D6: from_stack_1 = clscaja.AbsolutePosition
  loc_C356DB: ILdRf var_138
  loc_C356DE: CR8I4
  loc_C356DF: ILdRf var_1D0
  loc_C356E2: CR8I4
  loc_C356E3: DivR8
  loc_C356E4: LitI2_Byte &H64
  loc_C356E6: CR8I2
  loc_C356E7: MulR8
  loc_C356E8: CVarR4
  loc_C356EC: PopAdLdVar
  loc_C356ED: FLdPr Me
  loc_C356F0: VCallAd Control_ID_ProgressBar
  loc_C356F3: FStAdFunc var_A4
  loc_C356F6: FLdPr var_A4
  loc_C356F9: LateIdSt
  loc_C356FE: FFree1Ad var_A4
  loc_C35701: FLdPr Me
  loc_C35704: MemLdRfVar from_stack_1.global_52
  loc_C35707: NewIfNullPr clscaja
  loc_C3570A: Call clscaja.MoveSiguiente()
  loc_C3570F: Branch loc_C3557E
  loc_C35712: FLdRfVar var_B4
  loc_C35715: FLdRfVar var_15C
  loc_C35718: LitVarStr var_D4, "CatePaco"
  loc_C3571D: PopAdLdVar
  loc_C3571E: FLdRfVar var_E8
  loc_C35721: FLdRfVar var_A4
  loc_C35724: FLdPr Me
  loc_C35727: MemLdRfVar from_stack_1.global_56
  loc_C3572A: NewIfNullPr clsparaconta
  loc_C3572D: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C35732: FLdPr var_A4
  loc_C35735:  = Me.Fields
  loc_C3573A: FLdPr var_E8
  loc_C3573D: from_stack_2 = Me.Item(from_stack_1)
  loc_C35742: FLdPr var_15C
  loc_C35745:  = Me.Value
  loc_C3574A: FLdR8 var_90
  loc_C3574D: LitI2_Byte 0
  loc_C3574F: CR8I2
  loc_C35750: PopFPR8
  loc_C35751: FLdRfVar var_B4
  loc_C35754: CStrVarTmp
  loc_C35755: FStStrNoPop var_98
  loc_C35758: FLdI2 var_92
  loc_C3575B: ImpAdLdI2 MemVar_C3D064
  loc_C3575E: FLdPr Me
  loc_C35761: MemLdRfVar from_stack_1.global_60
  loc_C35764: NewIfNullPr clsasiento
  loc_C35767: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3576C: FFree1Str var_98
  loc_C3576F: FFreeAd var_A4 = "": var_E8 = ""
  loc_C35778: FFree1Var var_B4 = ""
  loc_C3577B: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_C3577E: LitStr " CREATE TEMPORARY TABLE tmovi ("
  loc_C35781: ConcatStr
  loc_C35782: FStStrNoPop var_98
  loc_C35785: LitStr " ExpeImpu varchar(15) NOT NULL DEFAULT '',"
  loc_C35788: ConcatStr
  loc_C35789: FStStrNoPop var_9C
  loc_C3578C: LitStr " NumeLiqu smallint(4) unsigned NOT NULL DEFAULT 0,"
  loc_C3578F: ConcatStr
  loc_C35790: FStStrNoPop var_A0
  loc_C35793: LitStr " TipoPago varchar(8) NOT NULL DEFAULT '',"
  loc_C35796: ConcatStr
  loc_C35797: FStStrNoPop var_12C
  loc_C3579A: LitStr " PRIMARY KEY (ExpeImpu,NumeLiqu)"
  loc_C3579D: ConcatStr
  loc_C3579E: FStStrNoPop var_130
  loc_C357A1: LitStr " );"
  loc_C357A4: ConcatStr
  loc_C357A5: FStStrNoPop var_134
  loc_C357A8: LitStr " INSERT INTO tmovi"
  loc_C357AB: ConcatStr
  loc_C357AC: FStStrNoPop var_1D4
  loc_C357AF: LitStr " SELECT ExpeImpu, NumeLiqu, TipoPago"
  loc_C357B2: ConcatStr
  loc_C357B3: FStStrNoPop var_1D8
  loc_C357B6: LitStr " FROM subdpagoimpu"
  loc_C357B9: ConcatStr
  loc_C357BA: FStStrNoPop var_1E8
  loc_C357BD: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C357C0: ConcatStr
  loc_C357C1: FStStrNoPop var_1EC
  loc_C357C4: LitStr " AND TipoPago <> ''"
  loc_C357C7: ConcatStr
  loc_C357C8: FStStrNoPop var_1F0
  loc_C357CB: LitStr " /*AND TipoPago <> 'PagosNeg'*/"
  loc_C357CE: ConcatStr
  loc_C357CF: FStStrNoPop var_1F4
  loc_C357D2: LitStr " GROUP BY ExpeImpu, NumeLiqu;"
  loc_C357D5: ConcatStr
  loc_C357D6: FStStrNoPop var_1F8
  loc_C357D9: FLdPr Me
  loc_C357DC: MemLdRfVar from_stack_1.global_52
  loc_C357DF: NewIfNullPr clscaja
  loc_C357E2: Call clscaja.RedefineRS(from_stack_1v)
  loc_C357E7: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = "": var_1D8 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = ""
  loc_C35804: LitVarStr var_D4, "Asiento Automático de Pagos Presupuestarios"
  loc_C35809: PopAdLdVar
  loc_C3580A: FLdPr Me
  loc_C3580D: VCallAd Control_ID_StatusBar
  loc_C35810: FStAdFunc var_A4
  loc_C35813: FLdPr var_A4
  loc_C35816: LateIdSt
  loc_C3581B: FFree1Ad var_A4
  loc_C3581E: LitStr "SELECT DebeCuco, HabeCuco, Sum(DebeCaja) DebeCaja, Sum(HabeCaja) HabeCaja"
  loc_C35821: LitStr ", (SELECT Sum(DebeCaja) FROM subdpagoimpu tmpdebe WHERE FechCaja BETWEEN @desde AND @hasta) tDebeCaja"
  loc_C35824: ConcatStr
  loc_C35825: FStStrNoPop var_98
  loc_C35828: LitStr ", (SELECT Sum(HabeCaja) FROM subdpagoimpu tmphabe WHERE FechCaja BETWEEN @desde AND @hasta) tHabeCaja"
  loc_C3582B: ConcatStr
  loc_C3582C: FStStrNoPop var_9C
  loc_C3582F: LitStr " FROM tmovi"
  loc_C35832: ConcatStr
  loc_C35833: FStStrNoPop var_A0
  loc_C35836: LitStr " INNER JOIN subdpagoimpu sd ON sd.ExpeImpu = tmovi.ExpeImpu AND sd.NumeLiqu = tmovi.NumeLiqu"
  loc_C35839: ConcatStr
  loc_C3583A: FStStrNoPop var_12C
  loc_C3583D: LitStr " AND sd.FechCaja BETWEEN @desde AND @hasta"
  loc_C35840: ConcatStr
  loc_C35841: FStStrNoPop var_130
  loc_C35844: LitStr " WHERE tmovi.TipoPago = 'Presu'"
  loc_C35847: ConcatStr
  loc_C35848: FStStrNoPop var_134
  loc_C3584B: LitStr " GROUP BY DebeCuco, HabeCuco"
  loc_C3584E: ConcatStr
  loc_C3584F: FStStrNoPop var_1D4
  loc_C35852: LitStr " ORDER BY HabeCaja, DebeCuco, DebeCaja, HabeCuco;"
  loc_C35855: ConcatStr
  loc_C35856: FStStrNoPop var_1D8
  loc_C35859: FLdPr Me
  loc_C3585C: MemLdRfVar from_stack_1.global_52
  loc_C3585F: NewIfNullPr clscaja
  loc_C35862: Call clscaja.RedefineRS(from_stack_1v)
  loc_C35867: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = ""
  loc_C3587A: FLdRfVar var_138
  loc_C3587D: FLdPr Me
  loc_C35880: MemLdRfVar from_stack_1.global_52
  loc_C35883: NewIfNullPr clscaja
  loc_C35886: from_stack_1 = clscaja.RecordCount
  loc_C3588B: ILdRf var_138
  loc_C3588E: LitI4 0
  loc_C35893: GtI4
  loc_C35894: BranchF loc_C35D32
  loc_C35897: FLdRfVar var_C4
  loc_C3589A: FLdRfVar var_15C
  loc_C3589D: LitVarStr var_D4, "tDebeCaja"
  loc_C358A2: PopAdLdVar
  loc_C358A3: FLdRfVar var_E8
  loc_C358A6: FLdRfVar var_A4
  loc_C358A9: FLdPr Me
  loc_C358AC: MemLdRfVar from_stack_1.global_52
  loc_C358AF: NewIfNullPr clscaja
  loc_C358B2: from_stack_1v = clscaja.RsFrmGet()
  loc_C358B7: FLdPr var_A4
  loc_C358BA:  = Me.Fields
  loc_C358BF: FLdPr var_E8
  loc_C358C2: from_stack_2 = Me.Item(from_stack_1)
  loc_C358C7: FLdPr var_15C
  loc_C358CA:  = Me.Value
  loc_C358CF: FLdRfVar var_C4
  loc_C358D2: FLdRfVar var_B4
  loc_C358D5: FLdRfVar var_1CC
  loc_C358D8: LitVarStr var_118, "tHabeCaja"
  loc_C358DD: PopAdLdVar
  loc_C358DE: FLdRfVar var_1C8
  loc_C358E1: FLdRfVar var_1B0
  loc_C358E4: FLdPr Me
  loc_C358E7: MemLdRfVar from_stack_1.global_52
  loc_C358EA: NewIfNullPr clscaja
  loc_C358ED: from_stack_1v = clscaja.RsFrmGet()
  loc_C358F2: FLdPr var_1B0
  loc_C358F5:  = Me.Fields
  loc_C358FA: FLdPr var_1C8
  loc_C358FD: from_stack_2 = Me.Item(from_stack_1)
  loc_C35902: FLdPr var_1CC
  loc_C35905:  = Me.Value
  loc_C3590A: FLdRfVar var_B4
  loc_C3590D: NeVarBool
  loc_C3590F: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_1CC = ""
  loc_C3591E: FFreeVar var_C4 = ""
  loc_C35925: BranchF loc_C35938
  loc_C35928: LitI4 0
  loc_C3592D: LitStr "Error en el asiento de Pagos Presupuestarios. Consulte con el Proveedor de software..."
  loc_C35930: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C35935: Branch loc_C35D32
  loc_C35938: FLdRfVar var_B4
  loc_C3593B: FLdRfVar var_15C
  loc_C3593E: LitVarStr var_D4, "DebeCuco"
  loc_C35943: PopAdLdVar
  loc_C35944: FLdRfVar var_E8
  loc_C35947: FLdRfVar var_A4
  loc_C3594A: FLdPr Me
  loc_C3594D: MemLdRfVar from_stack_1.global_52
  loc_C35950: NewIfNullPr clscaja
  loc_C35953: from_stack_1v = clscaja.RsFrmGet()
  loc_C35958: FLdPr var_A4
  loc_C3595B:  = Me.Fields
  loc_C35960: FLdPr var_E8
  loc_C35963: from_stack_2 = Me.Item(from_stack_1)
  loc_C35968: FLdPr var_15C
  loc_C3596B:  = Me.Value
  loc_C35970: FLdRfVar var_B4
  loc_C35973: LitVarStr var_118, vbNullString
  loc_C35978: HardType
  loc_C35979: EqVar var_C4
  loc_C3597D: FLdRfVar var_E4
  loc_C35980: FLdRfVar var_1CC
  loc_C35983: LitVarStr var_148, "HabeCuco"
  loc_C35988: PopAdLdVar
  loc_C35989: FLdRfVar var_1C8
  loc_C3598C: FLdRfVar var_1B0
  loc_C3598F: FLdPr Me
  loc_C35992: MemLdRfVar from_stack_1.global_52
  loc_C35995: NewIfNullPr clscaja
  loc_C35998: from_stack_1v = clscaja.RsFrmGet()
  loc_C3599D: FLdPr var_1B0
  loc_C359A0:  = Me.Fields
  loc_C359A5: FLdPr var_1C8
  loc_C359A8: from_stack_2 = Me.Item(from_stack_1)
  loc_C359AD: FLdPr var_1CC
  loc_C359B0:  = Me.Value
  loc_C359B5: FLdRfVar var_E4
  loc_C359B8: LitVarStr var_208, vbNullString
  loc_C359BD: HardType
  loc_C359BE: EqVar var_F8
  loc_C359C2: AndVar var_108
  loc_C359C6: CBoolVarNull
  loc_C359C8: FFreeAd var_A4 = "": var_E8 = "": var_15C = "": var_1B0 = "": var_1C8 = ""
  loc_C359D7: FFreeVar var_B4 = ""
  loc_C359DE: BranchF loc_C359F1
  loc_C359E1: LitI4 0
  loc_C359E6: LitStr "Error en el asiento de Pagos Presupuestarios. Consulte con el Proveedor de software..."
  loc_C359E9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C359EE: Branch loc_C35D32
  loc_C359F1: FLdPr Me
  loc_C359F4: VCallAd Control_ID_FechCajaHastaMsk
  loc_C359F7: FStAdFunc var_A4
  loc_C359FA: FLdPr var_A4
  loc_C359FD: LateIdLdVar var_B4 DispID_15 0
  loc_C35A04: PopAd
  loc_C35A06: FLdPr Me
  loc_C35A09: VCallAd Control_ID_StatusBar
  loc_C35A0C: FStAdFunc var_E8
  loc_C35A0F: FLdPr var_E8
  loc_C35A12: LateIdLdVar var_C4 DispID_1 0
  loc_C35A19: PopAd
  loc_C35A1B: FLdRfVar var_1C2
  loc_C35A1E: LitI4 0
  loc_C35A23: LitI4 0
  loc_C35A28: FLdRfVar var_C4
  loc_C35A2B: CStrVarTmp
  loc_C35A2C: FStStrNoPop var_9C
  loc_C35A2F: LitI2_Byte 6
  loc_C35A31: FLdRfVar var_B4
  loc_C35A34: CStrVarTmp
  loc_C35A35: FStStrNoPop var_98
  loc_C35A38: ImpAdLdI2 MemVar_C3D064
  loc_C35A3B: FLdPr Me
  loc_C35A3E: MemLdRfVar from_stack_1.global_60
  loc_C35A41: NewIfNullPr clsasiento
  loc_C35A44: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C35A49: FLdI2 var_1C2
  loc_C35A4C: FStI2 var_92
  loc_C35A4F: FFreeStr var_98 = ""
  loc_C35A56: FFreeAd var_A4 = ""
  loc_C35A5D: FFreeVar var_B4 = ""
  loc_C35A64: FLdPr Me
  loc_C35A67: MemLdI2 global_68
  loc_C35A6A: LitI2_Byte 0
  loc_C35A6C: EqI2
  loc_C35A6D: BranchF loc_C35A79
  loc_C35A70: FLdI2 var_92
  loc_C35A73: FLdPr Me
  loc_C35A76: MemStI2 global_68
  loc_C35A79: FLdPr Me
  loc_C35A7C: MemLdI2 global_70
  loc_C35A7F: FLdI2 var_92
  loc_C35A82: LtI2
  loc_C35A83: BranchF loc_C35A8F
  loc_C35A86: FLdI2 var_92
  loc_C35A89: FLdPr Me
  loc_C35A8C: MemStI2 global_70
  loc_C35A8F: FLdPr Me
  loc_C35A92: MemLdRfVar from_stack_1.global_52
  loc_C35A95: NewIfNullPr clscaja
  loc_C35A98: Call clscaja.MoveFirst()
  loc_C35A9D: FLdRfVar var_1C2
  loc_C35AA0: FLdPr Me
  loc_C35AA3: MemLdRfVar from_stack_1.global_52
  loc_C35AA6: NewIfNullPr clscaja
  loc_C35AA9: from_stack_1 = clscaja.EOF
  loc_C35AAE: FLdI2 var_1C2
  loc_C35AB1: NotI4
  loc_C35AB2: BranchF loc_C35D32
  loc_C35AB5: FLdRfVar var_B4
  loc_C35AB8: FLdRfVar var_15C
  loc_C35ABB: LitVarStr var_D4, "DebeCuco"
  loc_C35AC0: PopAdLdVar
  loc_C35AC1: FLdRfVar var_E8
  loc_C35AC4: FLdRfVar var_A4
  loc_C35AC7: FLdPr Me
  loc_C35ACA: MemLdRfVar from_stack_1.global_52
  loc_C35ACD: NewIfNullPr clscaja
  loc_C35AD0: from_stack_1v = clscaja.RsFrmGet()
  loc_C35AD5: FLdPr var_A4
  loc_C35AD8:  = Me.Fields
  loc_C35ADD: FLdPr var_E8
  loc_C35AE0: from_stack_2 = Me.Item(from_stack_1)
  loc_C35AE5: FLdPr var_15C
  loc_C35AE8:  = Me.Value
  loc_C35AED: FLdRfVar var_B4
  loc_C35AF0: LitVarStr var_118, vbNullString
  loc_C35AF5: HardType
  loc_C35AF6: NeVarBool
  loc_C35AF8: FFreeAd var_A4 = "": var_E8 = ""
  loc_C35B01: FFree1Var var_B4 = ""
  loc_C35B04: BranchF loc_C35BB7
  loc_C35B07: FLdRfVar var_B4
  loc_C35B0A: FLdRfVar var_15C
  loc_C35B0D: LitVarStr var_D4, "DebeCuco"
  loc_C35B12: PopAdLdVar
  loc_C35B13: FLdRfVar var_E8
  loc_C35B16: FLdRfVar var_A4
  loc_C35B19: FLdPr Me
  loc_C35B1C: MemLdRfVar from_stack_1.global_52
  loc_C35B1F: NewIfNullPr clscaja
  loc_C35B22: from_stack_1v = clscaja.RsFrmGet()
  loc_C35B27: FLdPr var_A4
  loc_C35B2A:  = Me.Fields
  loc_C35B2F: FLdPr var_E8
  loc_C35B32: from_stack_2 = Me.Item(from_stack_1)
  loc_C35B37: FLdPr var_15C
  loc_C35B3A:  = Me.Value
  loc_C35B3F: FLdRfVar var_C4
  loc_C35B42: FLdRfVar var_1CC
  loc_C35B45: LitVarStr var_118, "DebeCaja"
  loc_C35B4A: PopAdLdVar
  loc_C35B4B: FLdRfVar var_1C8
  loc_C35B4E: FLdRfVar var_1B0
  loc_C35B51: FLdPr Me
  loc_C35B54: MemLdRfVar from_stack_1.global_52
  loc_C35B57: NewIfNullPr clscaja
  loc_C35B5A: from_stack_1v = clscaja.RsFrmGet()
  loc_C35B5F: FLdPr var_1B0
  loc_C35B62:  = Me.Fields
  loc_C35B67: FLdPr var_1C8
  loc_C35B6A: from_stack_2 = Me.Item(from_stack_1)
  loc_C35B6F: FLdPr var_1CC
  loc_C35B72:  = Me.Value
  loc_C35B77: LitI2_Byte 0
  loc_C35B79: CR8I2
  loc_C35B7A: PopFPR8
  loc_C35B7B: FLdRfVar var_C4
  loc_C35B7E: CR4Var
  loc_C35B7F: PopFPR8
  loc_C35B80: FLdRfVar var_B4
  loc_C35B83: CStrVarTmp
  loc_C35B84: FStStrNoPop var_98
  loc_C35B87: FLdI2 var_92
  loc_C35B8A: ImpAdLdI2 MemVar_C3D064
  loc_C35B8D: FLdPr Me
  loc_C35B90: MemLdRfVar from_stack_1.global_60
  loc_C35B93: NewIfNullPr clsasiento
  loc_C35B96: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C35B9B: FFree1Str var_98
  loc_C35B9E: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C35BAD: FFreeVar var_B4 = ""
  loc_C35BB4: Branch loc_C35CD9
  loc_C35BB7: FLdRfVar var_B4
  loc_C35BBA: FLdRfVar var_15C
  loc_C35BBD: LitVarStr var_D4, "HabeCuco"
  loc_C35BC2: PopAdLdVar
  loc_C35BC3: FLdRfVar var_E8
  loc_C35BC6: FLdRfVar var_A4
  loc_C35BC9: FLdPr Me
  loc_C35BCC: MemLdRfVar from_stack_1.global_52
  loc_C35BCF: NewIfNullPr clscaja
  loc_C35BD2: from_stack_1v = clscaja.RsFrmGet()
  loc_C35BD7: FLdPr var_A4
  loc_C35BDA:  = Me.Fields
  loc_C35BDF: FLdPr var_E8
  loc_C35BE2: from_stack_2 = Me.Item(from_stack_1)
  loc_C35BE7: FLdPr var_15C
  loc_C35BEA:  = Me.Value
  loc_C35BEF: FLdRfVar var_B4
  loc_C35BF2: LitVarStr var_118, vbNullString
  loc_C35BF7: HardType
  loc_C35BF8: NeVarBool
  loc_C35BFA: FFreeAd var_A4 = "": var_E8 = ""
  loc_C35C03: FFree1Var var_B4 = ""
  loc_C35C06: BranchF loc_C35CB9
  loc_C35C09: FLdRfVar var_B4
  loc_C35C0C: FLdRfVar var_15C
  loc_C35C0F: LitVarStr var_D4, "HabeCuco"
  loc_C35C14: PopAdLdVar
  loc_C35C15: FLdRfVar var_E8
  loc_C35C18: FLdRfVar var_A4
  loc_C35C1B: FLdPr Me
  loc_C35C1E: MemLdRfVar from_stack_1.global_52
  loc_C35C21: NewIfNullPr clscaja
  loc_C35C24: from_stack_1v = clscaja.RsFrmGet()
  loc_C35C29: FLdPr var_A4
  loc_C35C2C:  = Me.Fields
  loc_C35C31: FLdPr var_E8
  loc_C35C34: from_stack_2 = Me.Item(from_stack_1)
  loc_C35C39: FLdPr var_15C
  loc_C35C3C:  = Me.Value
  loc_C35C41: FLdRfVar var_C4
  loc_C35C44: FLdRfVar var_1CC
  loc_C35C47: LitVarStr var_118, "HabeCaja"
  loc_C35C4C: PopAdLdVar
  loc_C35C4D: FLdRfVar var_1C8
  loc_C35C50: FLdRfVar var_1B0
  loc_C35C53: FLdPr Me
  loc_C35C56: MemLdRfVar from_stack_1.global_52
  loc_C35C59: NewIfNullPr clscaja
  loc_C35C5C: from_stack_1v = clscaja.RsFrmGet()
  loc_C35C61: FLdPr var_1B0
  loc_C35C64:  = Me.Fields
  loc_C35C69: FLdPr var_1C8
  loc_C35C6C: from_stack_2 = Me.Item(from_stack_1)
  loc_C35C71: FLdPr var_1CC
  loc_C35C74:  = Me.Value
  loc_C35C79: FLdRfVar var_C4
  loc_C35C7C: CR4Var
  loc_C35C7D: PopFPR8
  loc_C35C7E: LitI2_Byte 0
  loc_C35C80: CR8I2
  loc_C35C81: PopFPR8
  loc_C35C82: FLdRfVar var_B4
  loc_C35C85: CStrVarTmp
  loc_C35C86: FStStrNoPop var_98
  loc_C35C89: FLdI2 var_92
  loc_C35C8C: ImpAdLdI2 MemVar_C3D064
  loc_C35C8F: FLdPr Me
  loc_C35C92: MemLdRfVar from_stack_1.global_60
  loc_C35C95: NewIfNullPr clsasiento
  loc_C35C98: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C35C9D: FFree1Str var_98
  loc_C35CA0: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C35CAF: FFreeVar var_B4 = ""
  loc_C35CB6: Branch loc_C35CD9
  loc_C35CB9: LitI4 0
  loc_C35CBE: LitStr "Error en el asiento: "
  loc_C35CC1: FLdI2 var_92
  loc_C35CC4: CStrUI1
  loc_C35CC6: FStStrNoPop var_98
  loc_C35CC9: ConcatStr
  loc_C35CCA: FStStrNoPop var_9C
  loc_C35CCD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C35CD2: FFreeStr var_98 = ""
  loc_C35CD9: FLdRfVar var_1D0
  loc_C35CDC: FLdPr Me
  loc_C35CDF: MemLdRfVar from_stack_1.global_52
  loc_C35CE2: NewIfNullPr clscaja
  loc_C35CE5: from_stack_1 = clscaja.RecordCount
  loc_C35CEA: FLdRfVar var_138
  loc_C35CED: FLdPr Me
  loc_C35CF0: MemLdRfVar from_stack_1.global_52
  loc_C35CF3: NewIfNullPr clscaja
  loc_C35CF6: from_stack_1 = clscaja.AbsolutePosition
  loc_C35CFB: ILdRf var_138
  loc_C35CFE: CR8I4
  loc_C35CFF: ILdRf var_1D0
  loc_C35D02: CR8I4
  loc_C35D03: DivR8
  loc_C35D04: LitI2_Byte &H64
  loc_C35D06: CR8I2
  loc_C35D07: MulR8
  loc_C35D08: CVarR4
  loc_C35D0C: PopAdLdVar
  loc_C35D0D: FLdPr Me
  loc_C35D10: VCallAd Control_ID_ProgressBar
  loc_C35D13: FStAdFunc var_A4
  loc_C35D16: FLdPr var_A4
  loc_C35D19: LateIdSt
  loc_C35D1E: FFree1Ad var_A4
  loc_C35D21: FLdPr Me
  loc_C35D24: MemLdRfVar from_stack_1.global_52
  loc_C35D27: NewIfNullPr clscaja
  loc_C35D2A: Call clscaja.MoveSiguiente()
  loc_C35D2F: Branch loc_C35A9D
  loc_C35D32: LitVarStr var_D4, "Asiento Automático de Pagos Extrapresupuestarios"
  loc_C35D37: PopAdLdVar
  loc_C35D38: FLdPr Me
  loc_C35D3B: VCallAd Control_ID_StatusBar
  loc_C35D3E: FStAdFunc var_A4
  loc_C35D41: FLdPr var_A4
  loc_C35D44: LateIdSt
  loc_C35D49: FFree1Ad var_A4
  loc_C35D4C: LitStr "SELECT DebeCuco, HabeCuco, Sum(DebeCaja) DebeCaja, Sum(HabeCaja) HabeCaja"
  loc_C35D4F: LitStr ", (SELECT Sum(DebeCaja) FROM subdpagoimpu tmpdebe WHERE FechCaja BETWEEN @desde AND @hasta) tDebeCaja"
  loc_C35D52: ConcatStr
  loc_C35D53: FStStrNoPop var_98
  loc_C35D56: LitStr ", (SELECT Sum(HabeCaja) FROM subdpagoimpu tmphabe WHERE FechCaja BETWEEN @desde AND @hasta) tHabeCaja"
  loc_C35D59: ConcatStr
  loc_C35D5A: FStStrNoPop var_9C
  loc_C35D5D: LitStr " FROM tmovi"
  loc_C35D60: ConcatStr
  loc_C35D61: FStStrNoPop var_A0
  loc_C35D64: LitStr " INNER JOIN subdpagoimpu sd ON sd.ExpeImpu = tmovi.ExpeImpu AND sd.NumeLiqu = tmovi.NumeLiqu"
  loc_C35D67: ConcatStr
  loc_C35D68: FStStrNoPop var_12C
  loc_C35D6B: LitStr " AND sd.FechCaja BETWEEN @desde AND @hasta"
  loc_C35D6E: ConcatStr
  loc_C35D6F: FStStrNoPop var_130
  loc_C35D72: LitStr " WHERE tmovi.TipoPago = 'Extra'"
  loc_C35D75: ConcatStr
  loc_C35D76: FStStrNoPop var_134
  loc_C35D79: LitStr " GROUP BY DebeCuco, HabeCuco"
  loc_C35D7C: ConcatStr
  loc_C35D7D: FStStrNoPop var_1D4
  loc_C35D80: LitStr " ORDER BY HabeCaja, DebeCuco, DebeCaja, HabeCuco;"
  loc_C35D83: ConcatStr
  loc_C35D84: FStStrNoPop var_1D8
  loc_C35D87: FLdPr Me
  loc_C35D8A: MemLdRfVar from_stack_1.global_52
  loc_C35D8D: NewIfNullPr clscaja
  loc_C35D90: Call clscaja.RedefineRS(from_stack_1v)
  loc_C35D95: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = ""
  loc_C35DA8: FLdRfVar var_138
  loc_C35DAB: FLdPr Me
  loc_C35DAE: MemLdRfVar from_stack_1.global_52
  loc_C35DB1: NewIfNullPr clscaja
  loc_C35DB4: from_stack_1 = clscaja.RecordCount
  loc_C35DB9: ILdRf var_138
  loc_C35DBC: LitI4 0
  loc_C35DC1: GtI4
  loc_C35DC2: BranchF loc_C36132
  loc_C35DC5: FLdRfVar var_C4
  loc_C35DC8: FLdRfVar var_15C
  loc_C35DCB: LitVarStr var_D4, "tDebeCaja"
  loc_C35DD0: PopAdLdVar
  loc_C35DD1: FLdRfVar var_E8
  loc_C35DD4: FLdRfVar var_A4
  loc_C35DD7: FLdPr Me
  loc_C35DDA: MemLdRfVar from_stack_1.global_52
  loc_C35DDD: NewIfNullPr clscaja
  loc_C35DE0: from_stack_1v = clscaja.RsFrmGet()
  loc_C35DE5: FLdPr var_A4
  loc_C35DE8:  = Me.Fields
  loc_C35DED: FLdPr var_E8
  loc_C35DF0: from_stack_2 = Me.Item(from_stack_1)
  loc_C35DF5: FLdPr var_15C
  loc_C35DF8:  = Me.Value
  loc_C35DFD: FLdRfVar var_C4
  loc_C35E00: FLdRfVar var_B4
  loc_C35E03: FLdRfVar var_1CC
  loc_C35E06: LitVarStr var_118, "tHabeCaja"
  loc_C35E0B: PopAdLdVar
  loc_C35E0C: FLdRfVar var_1C8
  loc_C35E0F: FLdRfVar var_1B0
  loc_C35E12: FLdPr Me
  loc_C35E15: MemLdRfVar from_stack_1.global_52
  loc_C35E18: NewIfNullPr clscaja
  loc_C35E1B: from_stack_1v = clscaja.RsFrmGet()
  loc_C35E20: FLdPr var_1B0
  loc_C35E23:  = Me.Fields
  loc_C35E28: FLdPr var_1C8
  loc_C35E2B: from_stack_2 = Me.Item(from_stack_1)
  loc_C35E30: FLdPr var_1CC
  loc_C35E33:  = Me.Value
  loc_C35E38: FLdRfVar var_B4
  loc_C35E3B: NeVarBool
  loc_C35E3D: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_1CC = ""
  loc_C35E4C: FFreeVar var_C4 = ""
  loc_C35E53: BranchF loc_C35E66
  loc_C35E56: LitI4 0
  loc_C35E5B: LitStr "Error en el asiento de Pagos Extrapresupuestarios. Consulte con el Proveedor de software..."
  loc_C35E5E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C35E63: Branch loc_C36132
  loc_C35E66: FLdPr Me
  loc_C35E69: VCallAd Control_ID_FechCajaHastaMsk
  loc_C35E6C: FStAdFunc var_A4
  loc_C35E6F: FLdPr var_A4
  loc_C35E72: LateIdLdVar var_B4 DispID_15 0
  loc_C35E79: PopAd
  loc_C35E7B: FLdPr Me
  loc_C35E7E: VCallAd Control_ID_StatusBar
  loc_C35E81: FStAdFunc var_E8
  loc_C35E84: FLdPr var_E8
  loc_C35E87: LateIdLdVar var_C4 DispID_1 0
  loc_C35E8E: PopAd
  loc_C35E90: FLdRfVar var_1C2
  loc_C35E93: LitI4 0
  loc_C35E98: LitI4 0
  loc_C35E9D: FLdRfVar var_C4
  loc_C35EA0: CStrVarTmp
  loc_C35EA1: FStStrNoPop var_9C
  loc_C35EA4: LitI2_Byte &H16
  loc_C35EA6: FLdRfVar var_B4
  loc_C35EA9: CStrVarTmp
  loc_C35EAA: FStStrNoPop var_98
  loc_C35EAD: ImpAdLdI2 MemVar_C3D064
  loc_C35EB0: FLdPr Me
  loc_C35EB3: MemLdRfVar from_stack_1.global_60
  loc_C35EB6: NewIfNullPr clsasiento
  loc_C35EB9: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C35EBE: FLdI2 var_1C2
  loc_C35EC1: FStI2 var_92
  loc_C35EC4: FFreeStr var_98 = ""
  loc_C35ECB: FFreeAd var_A4 = ""
  loc_C35ED2: FFreeVar var_B4 = ""
  loc_C35ED9: FLdPr Me
  loc_C35EDC: MemLdI2 global_68
  loc_C35EDF: LitI2_Byte 0
  loc_C35EE1: EqI2
  loc_C35EE2: BranchF loc_C35EEE
  loc_C35EE5: FLdI2 var_92
  loc_C35EE8: FLdPr Me
  loc_C35EEB: MemStI2 global_68
  loc_C35EEE: FLdPr Me
  loc_C35EF1: MemLdI2 global_70
  loc_C35EF4: FLdI2 var_92
  loc_C35EF7: LtI2
  loc_C35EF8: BranchF loc_C35F04
  loc_C35EFB: FLdI2 var_92
  loc_C35EFE: FLdPr Me
  loc_C35F01: MemStI2 global_70
  loc_C35F04: FLdPr Me
  loc_C35F07: MemLdRfVar from_stack_1.global_52
  loc_C35F0A: NewIfNullPr clscaja
  loc_C35F0D: Call clscaja.MoveFirst()
  loc_C35F12: FLdRfVar var_1C2
  loc_C35F15: FLdPr Me
  loc_C35F18: MemLdRfVar from_stack_1.global_52
  loc_C35F1B: NewIfNullPr clscaja
  loc_C35F1E: from_stack_1 = clscaja.EOF
  loc_C35F23: FLdI2 var_1C2
  loc_C35F26: NotI4
  loc_C35F27: BranchF loc_C36132
  loc_C35F2A: FLdRfVar var_B4
  loc_C35F2D: FLdRfVar var_15C
  loc_C35F30: LitVarStr var_D4, "DebeCuco"
  loc_C35F35: PopAdLdVar
  loc_C35F36: FLdRfVar var_E8
  loc_C35F39: FLdRfVar var_A4
  loc_C35F3C: FLdPr Me
  loc_C35F3F: MemLdRfVar from_stack_1.global_52
  loc_C35F42: NewIfNullPr clscaja
  loc_C35F45: from_stack_1v = clscaja.RsFrmGet()
  loc_C35F4A: FLdPr var_A4
  loc_C35F4D:  = Me.Fields
  loc_C35F52: FLdPr var_E8
  loc_C35F55: from_stack_2 = Me.Item(from_stack_1)
  loc_C35F5A: FLdPr var_15C
  loc_C35F5D:  = Me.Value
  loc_C35F62: FLdRfVar var_B4
  loc_C35F65: LitVarStr var_118, vbNullString
  loc_C35F6A: HardType
  loc_C35F6B: NeVarBool
  loc_C35F6D: FFreeAd var_A4 = "": var_E8 = ""
  loc_C35F76: FFree1Var var_B4 = ""
  loc_C35F79: BranchF loc_C3602C
  loc_C35F7C: FLdRfVar var_B4
  loc_C35F7F: FLdRfVar var_15C
  loc_C35F82: LitVarStr var_D4, "DebeCuco"
  loc_C35F87: PopAdLdVar
  loc_C35F88: FLdRfVar var_E8
  loc_C35F8B: FLdRfVar var_A4
  loc_C35F8E: FLdPr Me
  loc_C35F91: MemLdRfVar from_stack_1.global_52
  loc_C35F94: NewIfNullPr clscaja
  loc_C35F97: from_stack_1v = clscaja.RsFrmGet()
  loc_C35F9C: FLdPr var_A4
  loc_C35F9F:  = Me.Fields
  loc_C35FA4: FLdPr var_E8
  loc_C35FA7: from_stack_2 = Me.Item(from_stack_1)
  loc_C35FAC: FLdPr var_15C
  loc_C35FAF:  = Me.Value
  loc_C35FB4: FLdRfVar var_C4
  loc_C35FB7: FLdRfVar var_1CC
  loc_C35FBA: LitVarStr var_118, "DebeCaja"
  loc_C35FBF: PopAdLdVar
  loc_C35FC0: FLdRfVar var_1C8
  loc_C35FC3: FLdRfVar var_1B0
  loc_C35FC6: FLdPr Me
  loc_C35FC9: MemLdRfVar from_stack_1.global_52
  loc_C35FCC: NewIfNullPr clscaja
  loc_C35FCF: from_stack_1v = clscaja.RsFrmGet()
  loc_C35FD4: FLdPr var_1B0
  loc_C35FD7:  = Me.Fields
  loc_C35FDC: FLdPr var_1C8
  loc_C35FDF: from_stack_2 = Me.Item(from_stack_1)
  loc_C35FE4: FLdPr var_1CC
  loc_C35FE7:  = Me.Value
  loc_C35FEC: LitI2_Byte 0
  loc_C35FEE: CR8I2
  loc_C35FEF: PopFPR8
  loc_C35FF0: FLdRfVar var_C4
  loc_C35FF3: CR4Var
  loc_C35FF4: PopFPR8
  loc_C35FF5: FLdRfVar var_B4
  loc_C35FF8: CStrVarTmp
  loc_C35FF9: FStStrNoPop var_98
  loc_C35FFC: FLdI2 var_92
  loc_C35FFF: ImpAdLdI2 MemVar_C3D064
  loc_C36002: FLdPr Me
  loc_C36005: MemLdRfVar from_stack_1.global_60
  loc_C36008: NewIfNullPr clsasiento
  loc_C3600B: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C36010: FFree1Str var_98
  loc_C36013: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C36022: FFreeVar var_B4 = ""
  loc_C36029: Branch loc_C360D9
  loc_C3602C: FLdRfVar var_B4
  loc_C3602F: FLdRfVar var_15C
  loc_C36032: LitVarStr var_D4, "HabeCuco"
  loc_C36037: PopAdLdVar
  loc_C36038: FLdRfVar var_E8
  loc_C3603B: FLdRfVar var_A4
  loc_C3603E: FLdPr Me
  loc_C36041: MemLdRfVar from_stack_1.global_52
  loc_C36044: NewIfNullPr clscaja
  loc_C36047: from_stack_1v = clscaja.RsFrmGet()
  loc_C3604C: FLdPr var_A4
  loc_C3604F:  = Me.Fields
  loc_C36054: FLdPr var_E8
  loc_C36057: from_stack_2 = Me.Item(from_stack_1)
  loc_C3605C: FLdPr var_15C
  loc_C3605F:  = Me.Value
  loc_C36064: FLdRfVar var_C4
  loc_C36067: FLdRfVar var_1CC
  loc_C3606A: LitVarStr var_118, "HabeCaja"
  loc_C3606F: PopAdLdVar
  loc_C36070: FLdRfVar var_1C8
  loc_C36073: FLdRfVar var_1B0
  loc_C36076: FLdPr Me
  loc_C36079: MemLdRfVar from_stack_1.global_52
  loc_C3607C: NewIfNullPr clscaja
  loc_C3607F: from_stack_1v = clscaja.RsFrmGet()
  loc_C36084: FLdPr var_1B0
  loc_C36087:  = Me.Fields
  loc_C3608C: FLdPr var_1C8
  loc_C3608F: from_stack_2 = Me.Item(from_stack_1)
  loc_C36094: FLdPr var_1CC
  loc_C36097:  = Me.Value
  loc_C3609C: FLdRfVar var_C4
  loc_C3609F: CR4Var
  loc_C360A0: PopFPR8
  loc_C360A1: LitI2_Byte 0
  loc_C360A3: CR8I2
  loc_C360A4: PopFPR8
  loc_C360A5: FLdRfVar var_B4
  loc_C360A8: CStrVarTmp
  loc_C360A9: FStStrNoPop var_98
  loc_C360AC: FLdI2 var_92
  loc_C360AF: ImpAdLdI2 MemVar_C3D064
  loc_C360B2: FLdPr Me
  loc_C360B5: MemLdRfVar from_stack_1.global_60
  loc_C360B8: NewIfNullPr clsasiento
  loc_C360BB: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C360C0: FFree1Str var_98
  loc_C360C3: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C360D2: FFreeVar var_B4 = ""
  loc_C360D9: FLdRfVar var_1D0
  loc_C360DC: FLdPr Me
  loc_C360DF: MemLdRfVar from_stack_1.global_52
  loc_C360E2: NewIfNullPr clscaja
  loc_C360E5: from_stack_1 = clscaja.RecordCount
  loc_C360EA: FLdRfVar var_138
  loc_C360ED: FLdPr Me
  loc_C360F0: MemLdRfVar from_stack_1.global_52
  loc_C360F3: NewIfNullPr clscaja
  loc_C360F6: from_stack_1 = clscaja.AbsolutePosition
  loc_C360FB: ILdRf var_138
  loc_C360FE: CR8I4
  loc_C360FF: ILdRf var_1D0
  loc_C36102: CR8I4
  loc_C36103: DivR8
  loc_C36104: LitI2_Byte &H64
  loc_C36106: CR8I2
  loc_C36107: MulR8
  loc_C36108: CVarR4
  loc_C3610C: PopAdLdVar
  loc_C3610D: FLdPr Me
  loc_C36110: VCallAd Control_ID_ProgressBar
  loc_C36113: FStAdFunc var_A4
  loc_C36116: FLdPr var_A4
  loc_C36119: LateIdSt
  loc_C3611E: FFree1Ad var_A4
  loc_C36121: FLdPr Me
  loc_C36124: MemLdRfVar from_stack_1.global_52
  loc_C36127: NewIfNullPr clscaja
  loc_C3612A: Call clscaja.MoveSiguiente()
  loc_C3612F: Branch loc_C35F12
  loc_C36132: LitVarStr var_D4, "Asiento Automático de Pagos Extrapresupuestarios"
  loc_C36137: PopAdLdVar
  loc_C36138: FLdPr Me
  loc_C3613B: VCallAd Control_ID_StatusBar
  loc_C3613E: FStAdFunc var_A4
  loc_C36141: FLdPr var_A4
  loc_C36144: LateIdSt
  loc_C36149: FFree1Ad var_A4
  loc_C3614C: LitStr "SELECT DebeCuco, HabeCuco, Sum(DebeCaja) DebeCaja, Sum(HabeCaja) HabeCaja"
  loc_C3614F: LitStr ", (SELECT Sum(DebeCaja) FROM subdpagodebi tmpdebe WHERE FechCaja BETWEEN @desde AND @hasta) tDebeCaja"
  loc_C36152: ConcatStr
  loc_C36153: FStStrNoPop var_98
  loc_C36156: LitStr ", (SELECT Sum(HabeCaja) FROM subdpagodebi tmphabe WHERE FechCaja BETWEEN @desde AND @hasta) tHabeCaja"
  loc_C36159: ConcatStr
  loc_C3615A: FStStrNoPop var_9C
  loc_C3615D: LitStr " FROM subdpagodebi"
  loc_C36160: ConcatStr
  loc_C36161: FStStrNoPop var_A0
  loc_C36164: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C36167: ConcatStr
  loc_C36168: FStStrNoPop var_12C
  loc_C3616B: LitStr " GROUP BY DebeCuco, HabeCuco"
  loc_C3616E: ConcatStr
  loc_C3616F: FStStrNoPop var_130
  loc_C36172: LitStr " ORDER BY HabeCaja, DebeCuco, DebeCaja, HabeCuco"
  loc_C36175: ConcatStr
  loc_C36176: FStStrNoPop var_134
  loc_C36179: FLdPr Me
  loc_C3617C: MemLdRfVar from_stack_1.global_52
  loc_C3617F: NewIfNullPr clscaja
  loc_C36182: Call clscaja.RedefineRS(from_stack_1v)
  loc_C36187: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = ""
  loc_C36196: FLdRfVar var_138
  loc_C36199: FLdPr Me
  loc_C3619C: MemLdRfVar from_stack_1.global_52
  loc_C3619F: NewIfNullPr clscaja
  loc_C361A2: from_stack_1 = clscaja.RecordCount
  loc_C361A7: ILdRf var_138
  loc_C361AA: LitI4 0
  loc_C361AF: GtI4
  loc_C361B0: BranchF loc_C36520
  loc_C361B3: FLdRfVar var_C4
  loc_C361B6: FLdRfVar var_15C
  loc_C361B9: LitVarStr var_D4, "tDebeCaja"
  loc_C361BE: PopAdLdVar
  loc_C361BF: FLdRfVar var_E8
  loc_C361C2: FLdRfVar var_A4
  loc_C361C5: FLdPr Me
  loc_C361C8: MemLdRfVar from_stack_1.global_52
  loc_C361CB: NewIfNullPr clscaja
  loc_C361CE: from_stack_1v = clscaja.RsFrmGet()
  loc_C361D3: FLdPr var_A4
  loc_C361D6:  = Me.Fields
  loc_C361DB: FLdPr var_E8
  loc_C361DE: from_stack_2 = Me.Item(from_stack_1)
  loc_C361E3: FLdPr var_15C
  loc_C361E6:  = Me.Value
  loc_C361EB: FLdRfVar var_C4
  loc_C361EE: FLdRfVar var_B4
  loc_C361F1: FLdRfVar var_1CC
  loc_C361F4: LitVarStr var_118, "tHabeCaja"
  loc_C361F9: PopAdLdVar
  loc_C361FA: FLdRfVar var_1C8
  loc_C361FD: FLdRfVar var_1B0
  loc_C36200: FLdPr Me
  loc_C36203: MemLdRfVar from_stack_1.global_52
  loc_C36206: NewIfNullPr clscaja
  loc_C36209: from_stack_1v = clscaja.RsFrmGet()
  loc_C3620E: FLdPr var_1B0
  loc_C36211:  = Me.Fields
  loc_C36216: FLdPr var_1C8
  loc_C36219: from_stack_2 = Me.Item(from_stack_1)
  loc_C3621E: FLdPr var_1CC
  loc_C36221:  = Me.Value
  loc_C36226: FLdRfVar var_B4
  loc_C36229: NeVarBool
  loc_C3622B: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_1CC = ""
  loc_C3623A: FFreeVar var_C4 = ""
  loc_C36241: BranchF loc_C36254
  loc_C36244: LitI4 0
  loc_C36249: LitStr "Error en asiento de pago de débitos. Consulte con el Proveedor de software..."
  loc_C3624C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C36251: Branch loc_C36520
  loc_C36254: FLdPr Me
  loc_C36257: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3625A: FStAdFunc var_A4
  loc_C3625D: FLdPr var_A4
  loc_C36260: LateIdLdVar var_B4 DispID_15 0
  loc_C36267: PopAd
  loc_C36269: FLdPr Me
  loc_C3626C: VCallAd Control_ID_StatusBar
  loc_C3626F: FStAdFunc var_E8
  loc_C36272: FLdPr var_E8
  loc_C36275: LateIdLdVar var_C4 DispID_1 0
  loc_C3627C: PopAd
  loc_C3627E: FLdRfVar var_1C2
  loc_C36281: LitI4 0
  loc_C36286: LitI4 0
  loc_C3628B: FLdRfVar var_C4
  loc_C3628E: CStrVarTmp
  loc_C3628F: FStStrNoPop var_9C
  loc_C36292: LitI2_Byte &HC
  loc_C36294: FLdRfVar var_B4
  loc_C36297: CStrVarTmp
  loc_C36298: FStStrNoPop var_98
  loc_C3629B: ImpAdLdI2 MemVar_C3D064
  loc_C3629E: FLdPr Me
  loc_C362A1: MemLdRfVar from_stack_1.global_60
  loc_C362A4: NewIfNullPr clsasiento
  loc_C362A7: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C362AC: FLdI2 var_1C2
  loc_C362AF: FStI2 var_92
  loc_C362B2: FFreeStr var_98 = ""
  loc_C362B9: FFreeAd var_A4 = ""
  loc_C362C0: FFreeVar var_B4 = ""
  loc_C362C7: FLdPr Me
  loc_C362CA: MemLdI2 global_68
  loc_C362CD: LitI2_Byte 0
  loc_C362CF: EqI2
  loc_C362D0: BranchF loc_C362DC
  loc_C362D3: FLdI2 var_92
  loc_C362D6: FLdPr Me
  loc_C362D9: MemStI2 global_68
  loc_C362DC: FLdPr Me
  loc_C362DF: MemLdI2 global_70
  loc_C362E2: FLdI2 var_92
  loc_C362E5: LtI2
  loc_C362E6: BranchF loc_C362F2
  loc_C362E9: FLdI2 var_92
  loc_C362EC: FLdPr Me
  loc_C362EF: MemStI2 global_70
  loc_C362F2: FLdPr Me
  loc_C362F5: MemLdRfVar from_stack_1.global_52
  loc_C362F8: NewIfNullPr clscaja
  loc_C362FB: Call clscaja.MoveFirst()
  loc_C36300: FLdRfVar var_1C2
  loc_C36303: FLdPr Me
  loc_C36306: MemLdRfVar from_stack_1.global_52
  loc_C36309: NewIfNullPr clscaja
  loc_C3630C: from_stack_1 = clscaja.EOF
  loc_C36311: FLdI2 var_1C2
  loc_C36314: NotI4
  loc_C36315: BranchF loc_C36520
  loc_C36318: FLdRfVar var_B4
  loc_C3631B: FLdRfVar var_15C
  loc_C3631E: LitVarStr var_D4, "DebeCuco"
  loc_C36323: PopAdLdVar
  loc_C36324: FLdRfVar var_E8
  loc_C36327: FLdRfVar var_A4
  loc_C3632A: FLdPr Me
  loc_C3632D: MemLdRfVar from_stack_1.global_52
  loc_C36330: NewIfNullPr clscaja
  loc_C36333: from_stack_1v = clscaja.RsFrmGet()
  loc_C36338: FLdPr var_A4
  loc_C3633B:  = Me.Fields
  loc_C36340: FLdPr var_E8
  loc_C36343: from_stack_2 = Me.Item(from_stack_1)
  loc_C36348: FLdPr var_15C
  loc_C3634B:  = Me.Value
  loc_C36350: FLdRfVar var_B4
  loc_C36353: LitVarStr var_118, vbNullString
  loc_C36358: HardType
  loc_C36359: NeVarBool
  loc_C3635B: FFreeAd var_A4 = "": var_E8 = ""
  loc_C36364: FFree1Var var_B4 = ""
  loc_C36367: BranchF loc_C3641A
  loc_C3636A: FLdRfVar var_B4
  loc_C3636D: FLdRfVar var_15C
  loc_C36370: LitVarStr var_D4, "DebeCuco"
  loc_C36375: PopAdLdVar
  loc_C36376: FLdRfVar var_E8
  loc_C36379: FLdRfVar var_A4
  loc_C3637C: FLdPr Me
  loc_C3637F: MemLdRfVar from_stack_1.global_52
  loc_C36382: NewIfNullPr clscaja
  loc_C36385: from_stack_1v = clscaja.RsFrmGet()
  loc_C3638A: FLdPr var_A4
  loc_C3638D:  = Me.Fields
  loc_C36392: FLdPr var_E8
  loc_C36395: from_stack_2 = Me.Item(from_stack_1)
  loc_C3639A: FLdPr var_15C
  loc_C3639D:  = Me.Value
  loc_C363A2: FLdRfVar var_C4
  loc_C363A5: FLdRfVar var_1CC
  loc_C363A8: LitVarStr var_118, "DebeCaja"
  loc_C363AD: PopAdLdVar
  loc_C363AE: FLdRfVar var_1C8
  loc_C363B1: FLdRfVar var_1B0
  loc_C363B4: FLdPr Me
  loc_C363B7: MemLdRfVar from_stack_1.global_52
  loc_C363BA: NewIfNullPr clscaja
  loc_C363BD: from_stack_1v = clscaja.RsFrmGet()
  loc_C363C2: FLdPr var_1B0
  loc_C363C5:  = Me.Fields
  loc_C363CA: FLdPr var_1C8
  loc_C363CD: from_stack_2 = Me.Item(from_stack_1)
  loc_C363D2: FLdPr var_1CC
  loc_C363D5:  = Me.Value
  loc_C363DA: LitI2_Byte 0
  loc_C363DC: CR8I2
  loc_C363DD: PopFPR8
  loc_C363DE: FLdRfVar var_C4
  loc_C363E1: CR4Var
  loc_C363E2: PopFPR8
  loc_C363E3: FLdRfVar var_B4
  loc_C363E6: CStrVarTmp
  loc_C363E7: FStStrNoPop var_98
  loc_C363EA: FLdI2 var_92
  loc_C363ED: ImpAdLdI2 MemVar_C3D064
  loc_C363F0: FLdPr Me
  loc_C363F3: MemLdRfVar from_stack_1.global_60
  loc_C363F6: NewIfNullPr clsasiento
  loc_C363F9: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C363FE: FFree1Str var_98
  loc_C36401: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C36410: FFreeVar var_B4 = ""
  loc_C36417: Branch loc_C364C7
  loc_C3641A: FLdRfVar var_B4
  loc_C3641D: FLdRfVar var_15C
  loc_C36420: LitVarStr var_D4, "HabeCuco"
  loc_C36425: PopAdLdVar
  loc_C36426: FLdRfVar var_E8
  loc_C36429: FLdRfVar var_A4
  loc_C3642C: FLdPr Me
  loc_C3642F: MemLdRfVar from_stack_1.global_52
  loc_C36432: NewIfNullPr clscaja
  loc_C36435: from_stack_1v = clscaja.RsFrmGet()
  loc_C3643A: FLdPr var_A4
  loc_C3643D:  = Me.Fields
  loc_C36442: FLdPr var_E8
  loc_C36445: from_stack_2 = Me.Item(from_stack_1)
  loc_C3644A: FLdPr var_15C
  loc_C3644D:  = Me.Value
  loc_C36452: FLdRfVar var_C4
  loc_C36455: FLdRfVar var_1CC
  loc_C36458: LitVarStr var_118, "HabeCaja"
  loc_C3645D: PopAdLdVar
  loc_C3645E: FLdRfVar var_1C8
  loc_C36461: FLdRfVar var_1B0
  loc_C36464: FLdPr Me
  loc_C36467: MemLdRfVar from_stack_1.global_52
  loc_C3646A: NewIfNullPr clscaja
  loc_C3646D: from_stack_1v = clscaja.RsFrmGet()
  loc_C36472: FLdPr var_1B0
  loc_C36475:  = Me.Fields
  loc_C3647A: FLdPr var_1C8
  loc_C3647D: from_stack_2 = Me.Item(from_stack_1)
  loc_C36482: FLdPr var_1CC
  loc_C36485:  = Me.Value
  loc_C3648A: FLdRfVar var_C4
  loc_C3648D: CR4Var
  loc_C3648E: PopFPR8
  loc_C3648F: LitI2_Byte 0
  loc_C36491: CR8I2
  loc_C36492: PopFPR8
  loc_C36493: FLdRfVar var_B4
  loc_C36496: CStrVarTmp
  loc_C36497: FStStrNoPop var_98
  loc_C3649A: FLdI2 var_92
  loc_C3649D: ImpAdLdI2 MemVar_C3D064
  loc_C364A0: FLdPr Me
  loc_C364A3: MemLdRfVar from_stack_1.global_60
  loc_C364A6: NewIfNullPr clsasiento
  loc_C364A9: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C364AE: FFree1Str var_98
  loc_C364B1: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C364C0: FFreeVar var_B4 = ""
  loc_C364C7: FLdRfVar var_1D0
  loc_C364CA: FLdPr Me
  loc_C364CD: MemLdRfVar from_stack_1.global_52
  loc_C364D0: NewIfNullPr clscaja
  loc_C364D3: from_stack_1 = clscaja.RecordCount
  loc_C364D8: FLdRfVar var_138
  loc_C364DB: FLdPr Me
  loc_C364DE: MemLdRfVar from_stack_1.global_52
  loc_C364E1: NewIfNullPr clscaja
  loc_C364E4: from_stack_1 = clscaja.AbsolutePosition
  loc_C364E9: ILdRf var_138
  loc_C364EC: CR8I4
  loc_C364ED: ILdRf var_1D0
  loc_C364F0: CR8I4
  loc_C364F1: DivR8
  loc_C364F2: LitI2_Byte &H64
  loc_C364F4: CR8I2
  loc_C364F5: MulR8
  loc_C364F6: CVarR4
  loc_C364FA: PopAdLdVar
  loc_C364FB: FLdPr Me
  loc_C364FE: VCallAd Control_ID_ProgressBar
  loc_C36501: FStAdFunc var_A4
  loc_C36504: FLdPr var_A4
  loc_C36507: LateIdSt
  loc_C3650C: FFree1Ad var_A4
  loc_C3650F: FLdPr Me
  loc_C36512: MemLdRfVar from_stack_1.global_52
  loc_C36515: NewIfNullPr clscaja
  loc_C36518: Call clscaja.MoveSiguiente()
  loc_C3651D: Branch loc_C36300
  loc_C36520: LitVarStr var_D4, "Asiento Automático de Recaudación"
  loc_C36525: PopAdLdVar
  loc_C36526: FLdPr Me
  loc_C36529: VCallAd Control_ID_StatusBar
  loc_C3652C: FStAdFunc var_A4
  loc_C3652F: FLdPr var_A4
  loc_C36532: LateIdSt
  loc_C36537: FFree1Ad var_A4
  loc_C3653A: LitStr "SELECT CodiCuco, Sum(DebeCain) DebeCain, Sum(HabeCain) HabeCain, (SELECT Left(Group_concat(Distinct DetaCain),1000) FROM cajaingre WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3653D: LitStr ") AS DetaCain"
  loc_C36540: ConcatStr
  loc_C36541: FStStrNoPop var_98
  loc_C36544: LitStr " FROM cajaingre"
  loc_C36547: ConcatStr
  loc_C36548: FStStrNoPop var_9C
  loc_C3654B: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3654E: ConcatStr
  loc_C3654F: FStStrNoPop var_A0
  loc_C36552: LitStr " AND AutoIngr = 1"
  loc_C36555: ConcatStr
  loc_C36556: FStStrNoPop var_12C
  loc_C36559: LitStr " AND LoteIngr = 0"
  loc_C3655C: ConcatStr
  loc_C3655D: FStStrNoPop var_130
  loc_C36560: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C36563: ConcatStr
  loc_C36564: FStStrNoPop var_134
  loc_C36567: FLdPr Me
  loc_C3656A: MemLdRfVar from_stack_1.global_52
  loc_C3656D: NewIfNullPr clscaja
  loc_C36570: Call clscaja.RedefineRS(from_stack_1v)
  loc_C36575: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = ""
  loc_C36584: FLdRfVar var_138
  loc_C36587: FLdPr Me
  loc_C3658A: MemLdRfVar from_stack_1.global_52
  loc_C3658D: NewIfNullPr clscaja
  loc_C36590: from_stack_1 = clscaja.RecordCount
  loc_C36595: ILdRf var_138
  loc_C36598: LitI4 0
  loc_C3659D: GtI4
  loc_C3659E: BranchF loc_C36ABA
  loc_C365A1: FLdPr Me
  loc_C365A4: VCallAd Control_ID_FechCajaHastaMsk
  loc_C365A7: FStAdFunc var_A4
  loc_C365AA: FLdPr var_A4
  loc_C365AD: LateIdLdVar var_B4 DispID_15 0
  loc_C365B4: PopAd
  loc_C365B6: FLdPr Me
  loc_C365B9: VCallAd Control_ID_StatusBar
  loc_C365BC: FStAdFunc var_E8
  loc_C365BF: FLdPr var_E8
  loc_C365C2: LateIdLdVar var_C4 DispID_1 0
  loc_C365C9: PopAd
  loc_C365CB: FLdRfVar var_E4
  loc_C365CE: FLdRfVar var_1C8
  loc_C365D1: LitVarStr var_D4, "DetaCain"
  loc_C365D6: PopAdLdVar
  loc_C365D7: FLdRfVar var_1B0
  loc_C365DA: FLdRfVar var_15C
  loc_C365DD: FLdPr Me
  loc_C365E0: MemLdRfVar from_stack_1.global_52
  loc_C365E3: NewIfNullPr clscaja
  loc_C365E6: from_stack_1v = clscaja.RsFrmGet()
  loc_C365EB: FLdPr var_15C
  loc_C365EE:  = Me.Fields
  loc_C365F3: FLdPr var_1B0
  loc_C365F6: from_stack_2 = Me.Item(from_stack_1)
  loc_C365FB: FLdPr var_1C8
  loc_C365FE:  = Me.Value
  loc_C36603: FLdRfVar var_1C2
  loc_C36606: LitI4 0
  loc_C3660B: FLdRfVar var_E4
  loc_C3660E: CStrVarTmp
  loc_C3660F: FStStrNoPop var_A0
  loc_C36612: FLdRfVar var_C4
  loc_C36615: CStrVarTmp
  loc_C36616: FStStrNoPop var_9C
  loc_C36619: LitI2_Byte 9
  loc_C3661B: FLdRfVar var_B4
  loc_C3661E: CStrVarTmp
  loc_C3661F: FStStrNoPop var_98
  loc_C36622: ImpAdLdI2 MemVar_C3D064
  loc_C36625: FLdPr Me
  loc_C36628: MemLdRfVar from_stack_1.global_60
  loc_C3662B: NewIfNullPr clsasiento
  loc_C3662E: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C36633: FLdI2 var_1C2
  loc_C36636: FStI2 var_92
  loc_C36639: FFreeStr var_98 = "": var_9C = ""
  loc_C36642: FFreeAd var_A4 = "": var_E8 = "": var_15C = "": var_1B0 = ""
  loc_C3664F: FFreeVar var_B4 = "": var_C4 = ""
  loc_C36658: FLdPr Me
  loc_C3665B: MemLdI2 global_68
  loc_C3665E: LitI2_Byte 0
  loc_C36660: EqI2
  loc_C36661: BranchF loc_C3666D
  loc_C36664: FLdI2 var_92
  loc_C36667: FLdPr Me
  loc_C3666A: MemStI2 global_68
  loc_C3666D: FLdPr Me
  loc_C36670: MemLdI2 global_70
  loc_C36673: FLdI2 var_92
  loc_C36676: LtI2
  loc_C36677: BranchF loc_C36683
  loc_C3667A: FLdI2 var_92
  loc_C3667D: FLdPr Me
  loc_C36680: MemStI2 global_70
  loc_C36683: FLdPr Me
  loc_C36686: MemLdRfVar from_stack_1.global_52
  loc_C36689: NewIfNullPr clscaja
  loc_C3668C: Call clscaja.MoveFirst()
  loc_C36691: LitI2_Byte 0
  loc_C36693: CR8I2
  loc_C36694: FStFPR8 var_90
  loc_C36697: FLdRfVar var_1C2
  loc_C3669A: FLdPr Me
  loc_C3669D: MemLdRfVar from_stack_1.global_52
  loc_C366A0: NewIfNullPr clscaja
  loc_C366A3: from_stack_1 = clscaja.EOF
  loc_C366A8: FLdI2 var_1C2
  loc_C366AB: NotI4
  loc_C366AC: BranchF loc_C369CC
  loc_C366AF: FLdRfVar var_15C
  loc_C366B2: LitVarStr var_118, "HabeCain"
  loc_C366B7: PopAdLdVar
  loc_C366B8: FLdRfVar var_E8
  loc_C366BB: FLdRfVar var_A4
  loc_C366BE: FLdPr Me
  loc_C366C1: MemLdRfVar from_stack_1.global_52
  loc_C366C4: NewIfNullPr clscaja
  loc_C366C7: from_stack_1v = clscaja.RsFrmGet()
  loc_C366CC: FLdPr var_A4
  loc_C366CF:  = Me.Fields
  loc_C366D4: FLdPr var_E8
  loc_C366D7: from_stack_2 = Me.Item(from_stack_1)
  loc_C366DC: FLdRfVar var_1CC
  loc_C366DF: LitVarStr var_148, "DebeCain"
  loc_C366E4: PopAdLdVar
  loc_C366E5: FLdRfVar var_1C8
  loc_C366E8: FLdRfVar var_1B0
  loc_C366EB: FLdPr Me
  loc_C366EE: MemLdRfVar from_stack_1.global_52
  loc_C366F1: NewIfNullPr clscaja
  loc_C366F4: from_stack_1v = clscaja.RsFrmGet()
  loc_C366F9: FLdPr var_1B0
  loc_C366FC:  = Me.Fields
  loc_C36701: FLdPr var_1C8
  loc_C36704: from_stack_2 = Me.Item(from_stack_1)
  loc_C36709: LitI4 2
  loc_C3670E: FLdRfVar var_90
  loc_C36711: CVarRef
  loc_C36716: FLdRfVar var_B4
  loc_C36719: ImpAdCallFPR4  = Round(, )
  loc_C3671E: FLdRfVar var_B4
  loc_C36721: LitI4 2
  loc_C36726: FLdZeroAd var_15C
  loc_C36729: CVarAd
  loc_C3672D: FLdRfVar var_E4
  loc_C36730: ImpAdCallFPR4  = Round(, )
  loc_C36735: FLdRfVar var_E4
  loc_C36738: AddVar var_F8
  loc_C3673C: LitI4 2
  loc_C36741: FLdZeroAd var_1CC
  loc_C36744: CVarAd
  loc_C36748: FLdRfVar var_128
  loc_C3674B: ImpAdCallFPR4  = Round(, )
  loc_C36750: FLdRfVar var_128
  loc_C36753: SubVar var_158
  loc_C36757: CR4Var
  loc_C36758: FStFPR8 var_90
  loc_C3675B: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = ""
  loc_C36766: FFreeVar var_C4 = "": var_B4 = "": var_E4 = "": var_108 = "": var_F8 = ""
  loc_C36775: FLdRfVar var_B4
  loc_C36778: FLdRfVar var_15C
  loc_C3677B: LitVarStr var_D4, "DebeCain"
  loc_C36780: PopAdLdVar
  loc_C36781: FLdRfVar var_E8
  loc_C36784: FLdRfVar var_A4
  loc_C36787: FLdPr Me
  loc_C3678A: MemLdRfVar from_stack_1.global_52
  loc_C3678D: NewIfNullPr clscaja
  loc_C36790: from_stack_1v = clscaja.RsFrmGet()
  loc_C36795: FLdPr var_A4
  loc_C36798:  = Me.Fields
  loc_C3679D: FLdPr var_E8
  loc_C367A0: from_stack_2 = Me.Item(from_stack_1)
  loc_C367A5: FLdPr var_15C
  loc_C367A8:  = Me.Value
  loc_C367AD: FLdRfVar var_B4
  loc_C367B0: LitVarStr var_118, "0"
  loc_C367B5: HardType
  loc_C367B6: NeVarBool
  loc_C367B8: FFreeAd var_A4 = "": var_E8 = ""
  loc_C367C1: FFree1Var var_B4 = ""
  loc_C367C4: BranchF loc_C36874
  loc_C367C7: FLdRfVar var_B4
  loc_C367CA: FLdRfVar var_15C
  loc_C367CD: LitVarStr var_D4, "CodiCuco"
  loc_C367D2: PopAdLdVar
  loc_C367D3: FLdRfVar var_E8
  loc_C367D6: FLdRfVar var_A4
  loc_C367D9: FLdPr Me
  loc_C367DC: MemLdRfVar from_stack_1.global_52
  loc_C367DF: NewIfNullPr clscaja
  loc_C367E2: from_stack_1v = clscaja.RsFrmGet()
  loc_C367E7: FLdPr var_A4
  loc_C367EA:  = Me.Fields
  loc_C367EF: FLdPr var_E8
  loc_C367F2: from_stack_2 = Me.Item(from_stack_1)
  loc_C367F7: FLdPr var_15C
  loc_C367FA:  = Me.Value
  loc_C367FF: FLdRfVar var_C4
  loc_C36802: FLdRfVar var_1CC
  loc_C36805: LitVarStr var_118, "DebeCain"
  loc_C3680A: PopAdLdVar
  loc_C3680B: FLdRfVar var_1C8
  loc_C3680E: FLdRfVar var_1B0
  loc_C36811: FLdPr Me
  loc_C36814: MemLdRfVar from_stack_1.global_52
  loc_C36817: NewIfNullPr clscaja
  loc_C3681A: from_stack_1v = clscaja.RsFrmGet()
  loc_C3681F: FLdPr var_1B0
  loc_C36822:  = Me.Fields
  loc_C36827: FLdPr var_1C8
  loc_C3682A: from_stack_2 = Me.Item(from_stack_1)
  loc_C3682F: FLdPr var_1CC
  loc_C36832:  = Me.Value
  loc_C36837: LitI2_Byte 0
  loc_C36839: CR8I2
  loc_C3683A: PopFPR8
  loc_C3683B: FLdRfVar var_C4
  loc_C3683E: CR4Var
  loc_C3683F: PopFPR8
  loc_C36840: FLdRfVar var_B4
  loc_C36843: CStrVarTmp
  loc_C36844: FStStrNoPop var_98
  loc_C36847: FLdI2 var_92
  loc_C3684A: ImpAdLdI2 MemVar_C3D064
  loc_C3684D: FLdPr Me
  loc_C36850: MemLdRfVar from_stack_1.global_60
  loc_C36853: NewIfNullPr clsasiento
  loc_C36856: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3685B: FFree1Str var_98
  loc_C3685E: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3686D: FFreeVar var_B4 = ""
  loc_C36874: FLdRfVar var_B4
  loc_C36877: FLdRfVar var_15C
  loc_C3687A: LitVarStr var_D4, "HabeCain"
  loc_C3687F: PopAdLdVar
  loc_C36880: FLdRfVar var_E8
  loc_C36883: FLdRfVar var_A4
  loc_C36886: FLdPr Me
  loc_C36889: MemLdRfVar from_stack_1.global_52
  loc_C3688C: NewIfNullPr clscaja
  loc_C3688F: from_stack_1v = clscaja.RsFrmGet()
  loc_C36894: FLdPr var_A4
  loc_C36897:  = Me.Fields
  loc_C3689C: FLdPr var_E8
  loc_C3689F: from_stack_2 = Me.Item(from_stack_1)
  loc_C368A4: FLdPr var_15C
  loc_C368A7:  = Me.Value
  loc_C368AC: FLdRfVar var_B4
  loc_C368AF: LitVarStr var_118, "0"
  loc_C368B4: HardType
  loc_C368B5: NeVarBool
  loc_C368B7: FFreeAd var_A4 = "": var_E8 = ""
  loc_C368C0: FFree1Var var_B4 = ""
  loc_C368C3: BranchF loc_C36973
  loc_C368C6: FLdRfVar var_B4
  loc_C368C9: FLdRfVar var_15C
  loc_C368CC: LitVarStr var_D4, "CodiCuco"
  loc_C368D1: PopAdLdVar
  loc_C368D2: FLdRfVar var_E8
  loc_C368D5: FLdRfVar var_A4
  loc_C368D8: FLdPr Me
  loc_C368DB: MemLdRfVar from_stack_1.global_52
  loc_C368DE: NewIfNullPr clscaja
  loc_C368E1: from_stack_1v = clscaja.RsFrmGet()
  loc_C368E6: FLdPr var_A4
  loc_C368E9:  = Me.Fields
  loc_C368EE: FLdPr var_E8
  loc_C368F1: from_stack_2 = Me.Item(from_stack_1)
  loc_C368F6: FLdPr var_15C
  loc_C368F9:  = Me.Value
  loc_C368FE: FLdRfVar var_C4
  loc_C36901: FLdRfVar var_1CC
  loc_C36904: LitVarStr var_118, "HabeCain"
  loc_C36909: PopAdLdVar
  loc_C3690A: FLdRfVar var_1C8
  loc_C3690D: FLdRfVar var_1B0
  loc_C36910: FLdPr Me
  loc_C36913: MemLdRfVar from_stack_1.global_52
  loc_C36916: NewIfNullPr clscaja
  loc_C36919: from_stack_1v = clscaja.RsFrmGet()
  loc_C3691E: FLdPr var_1B0
  loc_C36921:  = Me.Fields
  loc_C36926: FLdPr var_1C8
  loc_C36929: from_stack_2 = Me.Item(from_stack_1)
  loc_C3692E: FLdPr var_1CC
  loc_C36931:  = Me.Value
  loc_C36936: FLdRfVar var_C4
  loc_C36939: CR4Var
  loc_C3693A: PopFPR8
  loc_C3693B: LitI2_Byte 0
  loc_C3693D: CR8I2
  loc_C3693E: PopFPR8
  loc_C3693F: FLdRfVar var_B4
  loc_C36942: CStrVarTmp
  loc_C36943: FStStrNoPop var_98
  loc_C36946: FLdI2 var_92
  loc_C36949: ImpAdLdI2 MemVar_C3D064
  loc_C3694C: FLdPr Me
  loc_C3694F: MemLdRfVar from_stack_1.global_60
  loc_C36952: NewIfNullPr clsasiento
  loc_C36955: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3695A: FFree1Str var_98
  loc_C3695D: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3696C: FFreeVar var_B4 = ""
  loc_C36973: FLdRfVar var_1D0
  loc_C36976: FLdPr Me
  loc_C36979: MemLdRfVar from_stack_1.global_52
  loc_C3697C: NewIfNullPr clscaja
  loc_C3697F: from_stack_1 = clscaja.RecordCount
  loc_C36984: FLdRfVar var_138
  loc_C36987: FLdPr Me
  loc_C3698A: MemLdRfVar from_stack_1.global_52
  loc_C3698D: NewIfNullPr clscaja
  loc_C36990: from_stack_1 = clscaja.AbsolutePosition
  loc_C36995: ILdRf var_138
  loc_C36998: CR8I4
  loc_C36999: ILdRf var_1D0
  loc_C3699C: CR8I4
  loc_C3699D: DivR8
  loc_C3699E: LitI2_Byte &H64
  loc_C369A0: CR8I2
  loc_C369A1: MulR8
  loc_C369A2: CVarR4
  loc_C369A6: PopAdLdVar
  loc_C369A7: FLdPr Me
  loc_C369AA: VCallAd Control_ID_ProgressBar
  loc_C369AD: FStAdFunc var_A4
  loc_C369B0: FLdPr var_A4
  loc_C369B3: LateIdSt
  loc_C369B8: FFree1Ad var_A4
  loc_C369BB: FLdPr Me
  loc_C369BE: MemLdRfVar from_stack_1.global_52
  loc_C369C1: NewIfNullPr clscaja
  loc_C369C4: Call clscaja.MoveSiguiente()
  loc_C369C9: Branch loc_C36697
  loc_C369CC: FLdFPR8 var_90
  loc_C369CF: LitI2_Byte 0
  loc_C369D1: CR8I2
  loc_C369D2: GtR4
  loc_C369D3: BranchF loc_C36A42
  loc_C369D6: FLdRfVar var_B4
  loc_C369D9: FLdRfVar var_15C
  loc_C369DC: LitVarStr var_D4, "CajaPaco"
  loc_C369E1: PopAdLdVar
  loc_C369E2: FLdRfVar var_E8
  loc_C369E5: FLdRfVar var_A4
  loc_C369E8: FLdPr Me
  loc_C369EB: MemLdRfVar from_stack_1.global_56
  loc_C369EE: NewIfNullPr clsparaconta
  loc_C369F1: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C369F6: FLdPr var_A4
  loc_C369F9:  = Me.Fields
  loc_C369FE: FLdPr var_E8
  loc_C36A01: from_stack_2 = Me.Item(from_stack_1)
  loc_C36A06: FLdPr var_15C
  loc_C36A09:  = Me.Value
  loc_C36A0E: LitI2_Byte 0
  loc_C36A10: CR8I2
  loc_C36A11: PopFPR8
  loc_C36A12: FLdR8 var_90
  loc_C36A15: FLdRfVar var_B4
  loc_C36A18: CStrVarTmp
  loc_C36A19: FStStrNoPop var_98
  loc_C36A1C: FLdI2 var_92
  loc_C36A1F: ImpAdLdI2 MemVar_C3D064
  loc_C36A22: FLdPr Me
  loc_C36A25: MemLdRfVar from_stack_1.global_60
  loc_C36A28: NewIfNullPr clsasiento
  loc_C36A2B: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C36A30: FFree1Str var_98
  loc_C36A33: FFreeAd var_A4 = "": var_E8 = ""
  loc_C36A3C: FFree1Var var_B4 = ""
  loc_C36A3F: Branch loc_C36ABA
  loc_C36A42: FLdFPR8 var_90
  loc_C36A45: LitI2_Byte 0
  loc_C36A47: CR8I2
  loc_C36A48: LtR8
  loc_C36A49: BranchF loc_C36ABA
  loc_C36A4C: FLdRfVar var_B4
  loc_C36A4F: FLdRfVar var_15C
  loc_C36A52: LitVarStr var_D4, "CajaPaco"
  loc_C36A57: PopAdLdVar
  loc_C36A58: FLdRfVar var_E8
  loc_C36A5B: FLdRfVar var_A4
  loc_C36A5E: FLdPr Me
  loc_C36A61: MemLdRfVar from_stack_1.global_56
  loc_C36A64: NewIfNullPr clsparaconta
  loc_C36A67: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C36A6C: FLdPr var_A4
  loc_C36A6F:  = Me.Fields
  loc_C36A74: FLdPr var_E8
  loc_C36A77: from_stack_2 = Me.Item(from_stack_1)
  loc_C36A7C: FLdPr var_15C
  loc_C36A7F:  = Me.Value
  loc_C36A84: FLdFPR8 var_90
  loc_C36A87: LitI2_Byte &HFF
  loc_C36A89: CR8I2
  loc_C36A8A: MulR8
  loc_C36A8B: PopFPR8
  loc_C36A8C: LitI2_Byte 0
  loc_C36A8E: CR8I2
  loc_C36A8F: PopFPR8
  loc_C36A90: FLdRfVar var_B4
  loc_C36A93: CStrVarTmp
  loc_C36A94: FStStrNoPop var_98
  loc_C36A97: FLdI2 var_92
  loc_C36A9A: ImpAdLdI2 MemVar_C3D064
  loc_C36A9D: FLdPr Me
  loc_C36AA0: MemLdRfVar from_stack_1.global_60
  loc_C36AA3: NewIfNullPr clsasiento
  loc_C36AA6: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C36AAB: FFree1Str var_98
  loc_C36AAE: FFreeAd var_A4 = "": var_E8 = ""
  loc_C36AB7: FFree1Var var_B4 = ""
  loc_C36ABA: LitVarStr var_D4, "Asiento Automático de Recaudación"
  loc_C36ABF: PopAdLdVar
  loc_C36AC0: FLdPr Me
  loc_C36AC3: VCallAd Control_ID_StatusBar
  loc_C36AC6: FStAdFunc var_A4
  loc_C36AC9: FLdPr var_A4
  loc_C36ACC: LateIdSt
  loc_C36AD1: FFree1Ad var_A4
  loc_C36AD4: LitStr "SELECT CodiCuco, Sum(HabeCain) HabeCain, (SELECT Left(Group_concat(Distinct DetaCain),1000) FROM cajaingre WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C36AD7: LitStr ") AS DetaCain"
  loc_C36ADA: ConcatStr
  loc_C36ADB: FStStrNoPop var_98
  loc_C36ADE: LitStr " FROM cajaingre"
  loc_C36AE1: ConcatStr
  loc_C36AE2: FStStrNoPop var_9C
  loc_C36AE5: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C36AE8: ConcatStr
  loc_C36AE9: FStStrNoPop var_A0
  loc_C36AEC: LitStr " AND AutoIngr = 0"
  loc_C36AEF: ConcatStr
  loc_C36AF0: FStStrNoPop var_12C
  loc_C36AF3: LitStr " AND LoteIngr = 0"
  loc_C36AF6: ConcatStr
  loc_C36AF7: FStStrNoPop var_130
  loc_C36AFA: LitStr " AND HabeCain > 0"
  loc_C36AFD: ConcatStr
  loc_C36AFE: FStStrNoPop var_134
  loc_C36B01: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C36B04: ConcatStr
  loc_C36B05: FStStrNoPop var_1D4
  loc_C36B08: FLdPr Me
  loc_C36B0B: MemLdRfVar from_stack_1.global_52
  loc_C36B0E: NewIfNullPr clscaja
  loc_C36B11: Call clscaja.RedefineRS(from_stack_1v)
  loc_C36B16: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_C36B27: FLdRfVar var_138
  loc_C36B2A: FLdPr Me
  loc_C36B2D: MemLdRfVar from_stack_1.global_52
  loc_C36B30: NewIfNullPr clscaja
  loc_C36B33: from_stack_1 = clscaja.RecordCount
  loc_C36B38: ILdRf var_138
  loc_C36B3B: LitI4 0
  loc_C36B40: GtI4
  loc_C36B41: BranchF loc_C36E37
  loc_C36B44: FLdPr Me
  loc_C36B47: VCallAd Control_ID_FechCajaHastaMsk
  loc_C36B4A: FStAdFunc var_A4
  loc_C36B4D: FLdPr var_A4
  loc_C36B50: LateIdLdVar var_B4 DispID_15 0
  loc_C36B57: PopAd
  loc_C36B59: FLdPr Me
  loc_C36B5C: VCallAd Control_ID_StatusBar
  loc_C36B5F: FStAdFunc var_E8
  loc_C36B62: FLdPr var_E8
  loc_C36B65: LateIdLdVar var_C4 DispID_1 0
  loc_C36B6C: PopAd
  loc_C36B6E: FLdRfVar var_E4
  loc_C36B71: FLdRfVar var_1C8
  loc_C36B74: LitVarStr var_D4, "DetaCain"
  loc_C36B79: PopAdLdVar
  loc_C36B7A: FLdRfVar var_1B0
  loc_C36B7D: FLdRfVar var_15C
  loc_C36B80: FLdPr Me
  loc_C36B83: MemLdRfVar from_stack_1.global_52
  loc_C36B86: NewIfNullPr clscaja
  loc_C36B89: from_stack_1v = clscaja.RsFrmGet()
  loc_C36B8E: FLdPr var_15C
  loc_C36B91:  = Me.Fields
  loc_C36B96: FLdPr var_1B0
  loc_C36B99: from_stack_2 = Me.Item(from_stack_1)
  loc_C36B9E: FLdPr var_1C8
  loc_C36BA1:  = Me.Value
  loc_C36BA6: FLdRfVar var_1C2
  loc_C36BA9: LitI4 0
  loc_C36BAE: FLdRfVar var_E4
  loc_C36BB1: CStrVarTmp
  loc_C36BB2: FStStrNoPop var_A0
  loc_C36BB5: FLdRfVar var_C4
  loc_C36BB8: CStrVarTmp
  loc_C36BB9: FStStrNoPop var_9C
  loc_C36BBC: LitI2_Byte 9
  loc_C36BBE: FLdRfVar var_B4
  loc_C36BC1: CStrVarTmp
  loc_C36BC2: FStStrNoPop var_98
  loc_C36BC5: ImpAdLdI2 MemVar_C3D064
  loc_C36BC8: FLdPr Me
  loc_C36BCB: MemLdRfVar from_stack_1.global_60
  loc_C36BCE: NewIfNullPr clsasiento
  loc_C36BD1: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C36BD6: FLdI2 var_1C2
  loc_C36BD9: FStI2 var_92
  loc_C36BDC: FFreeStr var_98 = "": var_9C = ""
  loc_C36BE5: FFreeAd var_A4 = "": var_E8 = "": var_15C = "": var_1B0 = ""
  loc_C36BF2: FFreeVar var_B4 = "": var_C4 = ""
  loc_C36BFB: FLdPr Me
  loc_C36BFE: MemLdI2 global_68
  loc_C36C01: LitI2_Byte 0
  loc_C36C03: EqI2
  loc_C36C04: BranchF loc_C36C10
  loc_C36C07: FLdI2 var_92
  loc_C36C0A: FLdPr Me
  loc_C36C0D: MemStI2 global_68
  loc_C36C10: FLdPr Me
  loc_C36C13: MemLdI2 global_70
  loc_C36C16: FLdI2 var_92
  loc_C36C19: LtI2
  loc_C36C1A: BranchF loc_C36C26
  loc_C36C1D: FLdI2 var_92
  loc_C36C20: FLdPr Me
  loc_C36C23: MemStI2 global_70
  loc_C36C26: FLdPr Me
  loc_C36C29: MemLdRfVar from_stack_1.global_52
  loc_C36C2C: NewIfNullPr clscaja
  loc_C36C2F: Call clscaja.MoveFirst()
  loc_C36C34: LitI2_Byte 0
  loc_C36C36: CR8I2
  loc_C36C37: FStFPR8 var_90
  loc_C36C3A: FLdRfVar var_1C2
  loc_C36C3D: FLdPr Me
  loc_C36C40: MemLdRfVar from_stack_1.global_52
  loc_C36C43: NewIfNullPr clscaja
  loc_C36C46: from_stack_1 = clscaja.EOF
  loc_C36C4B: FLdI2 var_1C2
  loc_C36C4E: NotI4
  loc_C36C4F: BranchF loc_C36DCE
  loc_C36C52: FLdRfVar var_15C
  loc_C36C55: LitVarStr var_118, "HabeCain"
  loc_C36C5A: PopAdLdVar
  loc_C36C5B: FLdRfVar var_E8
  loc_C36C5E: FLdRfVar var_A4
  loc_C36C61: FLdPr Me
  loc_C36C64: MemLdRfVar from_stack_1.global_52
  loc_C36C67: NewIfNullPr clscaja
  loc_C36C6A: from_stack_1v = clscaja.RsFrmGet()
  loc_C36C6F: FLdPr var_A4
  loc_C36C72:  = Me.Fields
  loc_C36C77: FLdPr var_E8
  loc_C36C7A: from_stack_2 = Me.Item(from_stack_1)
  loc_C36C7F: LitI4 2
  loc_C36C84: FLdRfVar var_90
  loc_C36C87: CVarRef
  loc_C36C8C: FLdRfVar var_B4
  loc_C36C8F: ImpAdCallFPR4  = Round(, )
  loc_C36C94: FLdRfVar var_B4
  loc_C36C97: LitI4 2
  loc_C36C9C: FLdZeroAd var_15C
  loc_C36C9F: CVarAd
  loc_C36CA3: FLdRfVar var_E4
  loc_C36CA6: ImpAdCallFPR4  = Round(, )
  loc_C36CAB: FLdRfVar var_E4
  loc_C36CAE: AddVar var_F8
  loc_C36CB2: CR4Var
  loc_C36CB3: FStFPR8 var_90
  loc_C36CB6: FFreeAd var_A4 = ""
  loc_C36CBD: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C36CC8: FLdRfVar var_B4
  loc_C36CCB: FLdRfVar var_15C
  loc_C36CCE: LitVarStr var_D4, "CodiCuco"
  loc_C36CD3: PopAdLdVar
  loc_C36CD4: FLdRfVar var_E8
  loc_C36CD7: FLdRfVar var_A4
  loc_C36CDA: FLdPr Me
  loc_C36CDD: MemLdRfVar from_stack_1.global_52
  loc_C36CE0: NewIfNullPr clscaja
  loc_C36CE3: from_stack_1v = clscaja.RsFrmGet()
  loc_C36CE8: FLdPr var_A4
  loc_C36CEB:  = Me.Fields
  loc_C36CF0: FLdPr var_E8
  loc_C36CF3: from_stack_2 = Me.Item(from_stack_1)
  loc_C36CF8: FLdPr var_15C
  loc_C36CFB:  = Me.Value
  loc_C36D00: FLdRfVar var_C4
  loc_C36D03: FLdRfVar var_1CC
  loc_C36D06: LitVarStr var_118, "HabeCain"
  loc_C36D0B: PopAdLdVar
  loc_C36D0C: FLdRfVar var_1C8
  loc_C36D0F: FLdRfVar var_1B0
  loc_C36D12: FLdPr Me
  loc_C36D15: MemLdRfVar from_stack_1.global_52
  loc_C36D18: NewIfNullPr clscaja
  loc_C36D1B: from_stack_1v = clscaja.RsFrmGet()
  loc_C36D20: FLdPr var_1B0
  loc_C36D23:  = Me.Fields
  loc_C36D28: FLdPr var_1C8
  loc_C36D2B: from_stack_2 = Me.Item(from_stack_1)
  loc_C36D30: FLdPr var_1CC
  loc_C36D33:  = Me.Value
  loc_C36D38: FLdRfVar var_C4
  loc_C36D3B: CR4Var
  loc_C36D3C: PopFPR8
  loc_C36D3D: LitI2_Byte 0
  loc_C36D3F: CR8I2
  loc_C36D40: PopFPR8
  loc_C36D41: FLdRfVar var_B4
  loc_C36D44: CStrVarTmp
  loc_C36D45: FStStrNoPop var_98
  loc_C36D48: FLdI2 var_92
  loc_C36D4B: ImpAdLdI2 MemVar_C3D064
  loc_C36D4E: FLdPr Me
  loc_C36D51: MemLdRfVar from_stack_1.global_60
  loc_C36D54: NewIfNullPr clsasiento
  loc_C36D57: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C36D5C: FFree1Str var_98
  loc_C36D5F: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C36D6E: FFreeVar var_B4 = ""
  loc_C36D75: FLdRfVar var_1D0
  loc_C36D78: FLdPr Me
  loc_C36D7B: MemLdRfVar from_stack_1.global_52
  loc_C36D7E: NewIfNullPr clscaja
  loc_C36D81: from_stack_1 = clscaja.RecordCount
  loc_C36D86: FLdRfVar var_138
  loc_C36D89: FLdPr Me
  loc_C36D8C: MemLdRfVar from_stack_1.global_52
  loc_C36D8F: NewIfNullPr clscaja
  loc_C36D92: from_stack_1 = clscaja.AbsolutePosition
  loc_C36D97: ILdRf var_138
  loc_C36D9A: CR8I4
  loc_C36D9B: ILdRf var_1D0
  loc_C36D9E: CR8I4
  loc_C36D9F: DivR8
  loc_C36DA0: LitI2_Byte &H64
  loc_C36DA2: CR8I2
  loc_C36DA3: MulR8
  loc_C36DA4: CVarR4
  loc_C36DA8: PopAdLdVar
  loc_C36DA9: FLdPr Me
  loc_C36DAC: VCallAd Control_ID_ProgressBar
  loc_C36DAF: FStAdFunc var_A4
  loc_C36DB2: FLdPr var_A4
  loc_C36DB5: LateIdSt
  loc_C36DBA: FFree1Ad var_A4
  loc_C36DBD: FLdPr Me
  loc_C36DC0: MemLdRfVar from_stack_1.global_52
  loc_C36DC3: NewIfNullPr clscaja
  loc_C36DC6: Call clscaja.MoveSiguiente()
  loc_C36DCB: Branch loc_C36C3A
  loc_C36DCE: FLdRfVar var_B4
  loc_C36DD1: FLdRfVar var_15C
  loc_C36DD4: LitVarStr var_D4, "CajaPaco"
  loc_C36DD9: PopAdLdVar
  loc_C36DDA: FLdRfVar var_E8
  loc_C36DDD: FLdRfVar var_A4
  loc_C36DE0: FLdPr Me
  loc_C36DE3: MemLdRfVar from_stack_1.global_56
  loc_C36DE6: NewIfNullPr clsparaconta
  loc_C36DE9: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C36DEE: FLdPr var_A4
  loc_C36DF1:  = Me.Fields
  loc_C36DF6: FLdPr var_E8
  loc_C36DF9: from_stack_2 = Me.Item(from_stack_1)
  loc_C36DFE: FLdPr var_15C
  loc_C36E01:  = Me.Value
  loc_C36E06: LitI2_Byte 0
  loc_C36E08: CR8I2
  loc_C36E09: PopFPR8
  loc_C36E0A: FLdR8 var_90
  loc_C36E0D: FLdRfVar var_B4
  loc_C36E10: CStrVarTmp
  loc_C36E11: FStStrNoPop var_98
  loc_C36E14: FLdI2 var_92
  loc_C36E17: ImpAdLdI2 MemVar_C3D064
  loc_C36E1A: FLdPr Me
  loc_C36E1D: MemLdRfVar from_stack_1.global_60
  loc_C36E20: NewIfNullPr clsasiento
  loc_C36E23: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C36E28: FFree1Str var_98
  loc_C36E2B: FFreeAd var_A4 = "": var_E8 = ""
  loc_C36E34: FFree1Var var_B4 = ""
  loc_C36E37: LitVarStr var_D4, "Asiento Automático de Ajustes de Recaudación"
  loc_C36E3C: PopAdLdVar
  loc_C36E3D: FLdPr Me
  loc_C36E40: VCallAd Control_ID_StatusBar
  loc_C36E43: FStAdFunc var_A4
  loc_C36E46: FLdPr var_A4
  loc_C36E49: LateIdSt
  loc_C36E4E: FFree1Ad var_A4
  loc_C36E51: LitStr "SELECT CodiCuco, Sum(DebeCain) DebeCain, (SELECT Left(Group_concat(Distinct DetaCain),1000) FROM cajaingre WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C36E54: LitStr ") AS DetaCain"
  loc_C36E57: ConcatStr
  loc_C36E58: FStStrNoPop var_98
  loc_C36E5B: LitStr " FROM cajaingre"
  loc_C36E5E: ConcatStr
  loc_C36E5F: FStStrNoPop var_9C
  loc_C36E62: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C36E65: ConcatStr
  loc_C36E66: FStStrNoPop var_A0
  loc_C36E69: LitStr " AND AutoIngr = 0"
  loc_C36E6C: ConcatStr
  loc_C36E6D: FStStrNoPop var_12C
  loc_C36E70: LitStr " AND LoteIngr = 0"
  loc_C36E73: ConcatStr
  loc_C36E74: FStStrNoPop var_130
  loc_C36E77: LitStr " AND DebeCain > 0"
  loc_C36E7A: ConcatStr
  loc_C36E7B: FStStrNoPop var_134
  loc_C36E7E: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C36E81: ConcatStr
  loc_C36E82: FStStrNoPop var_1D4
  loc_C36E85: FLdPr Me
  loc_C36E88: MemLdRfVar from_stack_1.global_52
  loc_C36E8B: NewIfNullPr clscaja
  loc_C36E8E: Call clscaja.RedefineRS(from_stack_1v)
  loc_C36E93: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_C36EA4: FLdRfVar var_138
  loc_C36EA7: FLdPr Me
  loc_C36EAA: MemLdRfVar from_stack_1.global_52
  loc_C36EAD: NewIfNullPr clscaja
  loc_C36EB0: from_stack_1 = clscaja.RecordCount
  loc_C36EB5: ILdRf var_138
  loc_C36EB8: LitI4 0
  loc_C36EBD: GtI4
  loc_C36EBE: BranchF loc_C371B4
  loc_C36EC1: FLdPr Me
  loc_C36EC4: VCallAd Control_ID_FechCajaHastaMsk
  loc_C36EC7: FStAdFunc var_A4
  loc_C36ECA: FLdPr var_A4
  loc_C36ECD: LateIdLdVar var_B4 DispID_15 0
  loc_C36ED4: PopAd
  loc_C36ED6: FLdPr Me
  loc_C36ED9: VCallAd Control_ID_StatusBar
  loc_C36EDC: FStAdFunc var_E8
  loc_C36EDF: FLdPr var_E8
  loc_C36EE2: LateIdLdVar var_C4 DispID_1 0
  loc_C36EE9: PopAd
  loc_C36EEB: FLdRfVar var_E4
  loc_C36EEE: FLdRfVar var_1C8
  loc_C36EF1: LitVarStr var_D4, "DetaCain"
  loc_C36EF6: PopAdLdVar
  loc_C36EF7: FLdRfVar var_1B0
  loc_C36EFA: FLdRfVar var_15C
  loc_C36EFD: FLdPr Me
  loc_C36F00: MemLdRfVar from_stack_1.global_52
  loc_C36F03: NewIfNullPr clscaja
  loc_C36F06: from_stack_1v = clscaja.RsFrmGet()
  loc_C36F0B: FLdPr var_15C
  loc_C36F0E:  = Me.Fields
  loc_C36F13: FLdPr var_1B0
  loc_C36F16: from_stack_2 = Me.Item(from_stack_1)
  loc_C36F1B: FLdPr var_1C8
  loc_C36F1E:  = Me.Value
  loc_C36F23: FLdRfVar var_1C2
  loc_C36F26: LitI4 0
  loc_C36F2B: FLdRfVar var_E4
  loc_C36F2E: CStrVarTmp
  loc_C36F2F: FStStrNoPop var_A0
  loc_C36F32: FLdRfVar var_C4
  loc_C36F35: CStrVarTmp
  loc_C36F36: FStStrNoPop var_9C
  loc_C36F39: LitI2_Byte 9
  loc_C36F3B: FLdRfVar var_B4
  loc_C36F3E: CStrVarTmp
  loc_C36F3F: FStStrNoPop var_98
  loc_C36F42: ImpAdLdI2 MemVar_C3D064
  loc_C36F45: FLdPr Me
  loc_C36F48: MemLdRfVar from_stack_1.global_60
  loc_C36F4B: NewIfNullPr clsasiento
  loc_C36F4E: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C36F53: FLdI2 var_1C2
  loc_C36F56: FStI2 var_92
  loc_C36F59: FFreeStr var_98 = "": var_9C = ""
  loc_C36F62: FFreeAd var_A4 = "": var_E8 = "": var_15C = "": var_1B0 = ""
  loc_C36F6F: FFreeVar var_B4 = "": var_C4 = ""
  loc_C36F78: FLdPr Me
  loc_C36F7B: MemLdI2 global_68
  loc_C36F7E: LitI2_Byte 0
  loc_C36F80: EqI2
  loc_C36F81: BranchF loc_C36F8D
  loc_C36F84: FLdI2 var_92
  loc_C36F87: FLdPr Me
  loc_C36F8A: MemStI2 global_68
  loc_C36F8D: FLdPr Me
  loc_C36F90: MemLdI2 global_70
  loc_C36F93: FLdI2 var_92
  loc_C36F96: LtI2
  loc_C36F97: BranchF loc_C36FA3
  loc_C36F9A: FLdI2 var_92
  loc_C36F9D: FLdPr Me
  loc_C36FA0: MemStI2 global_70
  loc_C36FA3: FLdPr Me
  loc_C36FA6: MemLdRfVar from_stack_1.global_52
  loc_C36FA9: NewIfNullPr clscaja
  loc_C36FAC: Call clscaja.MoveFirst()
  loc_C36FB1: LitI2_Byte 0
  loc_C36FB3: CR8I2
  loc_C36FB4: FStFPR8 var_90
  loc_C36FB7: FLdRfVar var_1C2
  loc_C36FBA: FLdPr Me
  loc_C36FBD: MemLdRfVar from_stack_1.global_52
  loc_C36FC0: NewIfNullPr clscaja
  loc_C36FC3: from_stack_1 = clscaja.EOF
  loc_C36FC8: FLdI2 var_1C2
  loc_C36FCB: NotI4
  loc_C36FCC: BranchF loc_C3714B
  loc_C36FCF: FLdRfVar var_15C
  loc_C36FD2: LitVarStr var_118, "DebeCain"
  loc_C36FD7: PopAdLdVar
  loc_C36FD8: FLdRfVar var_E8
  loc_C36FDB: FLdRfVar var_A4
  loc_C36FDE: FLdPr Me
  loc_C36FE1: MemLdRfVar from_stack_1.global_52
  loc_C36FE4: NewIfNullPr clscaja
  loc_C36FE7: from_stack_1v = clscaja.RsFrmGet()
  loc_C36FEC: FLdPr var_A4
  loc_C36FEF:  = Me.Fields
  loc_C36FF4: FLdPr var_E8
  loc_C36FF7: from_stack_2 = Me.Item(from_stack_1)
  loc_C36FFC: LitI4 2
  loc_C37001: FLdRfVar var_90
  loc_C37004: CVarRef
  loc_C37009: FLdRfVar var_B4
  loc_C3700C: ImpAdCallFPR4  = Round(, )
  loc_C37011: FLdRfVar var_B4
  loc_C37014: LitI4 2
  loc_C37019: FLdZeroAd var_15C
  loc_C3701C: CVarAd
  loc_C37020: FLdRfVar var_E4
  loc_C37023: ImpAdCallFPR4  = Round(, )
  loc_C37028: FLdRfVar var_E4
  loc_C3702B: AddVar var_F8
  loc_C3702F: CR4Var
  loc_C37030: FStFPR8 var_90
  loc_C37033: FFreeAd var_A4 = ""
  loc_C3703A: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C37045: FLdRfVar var_B4
  loc_C37048: FLdRfVar var_15C
  loc_C3704B: LitVarStr var_D4, "CodiCuco"
  loc_C37050: PopAdLdVar
  loc_C37051: FLdRfVar var_E8
  loc_C37054: FLdRfVar var_A4
  loc_C37057: FLdPr Me
  loc_C3705A: MemLdRfVar from_stack_1.global_52
  loc_C3705D: NewIfNullPr clscaja
  loc_C37060: from_stack_1v = clscaja.RsFrmGet()
  loc_C37065: FLdPr var_A4
  loc_C37068:  = Me.Fields
  loc_C3706D: FLdPr var_E8
  loc_C37070: from_stack_2 = Me.Item(from_stack_1)
  loc_C37075: FLdPr var_15C
  loc_C37078:  = Me.Value
  loc_C3707D: FLdRfVar var_C4
  loc_C37080: FLdRfVar var_1CC
  loc_C37083: LitVarStr var_118, "DebeCain"
  loc_C37088: PopAdLdVar
  loc_C37089: FLdRfVar var_1C8
  loc_C3708C: FLdRfVar var_1B0
  loc_C3708F: FLdPr Me
  loc_C37092: MemLdRfVar from_stack_1.global_52
  loc_C37095: NewIfNullPr clscaja
  loc_C37098: from_stack_1v = clscaja.RsFrmGet()
  loc_C3709D: FLdPr var_1B0
  loc_C370A0:  = Me.Fields
  loc_C370A5: FLdPr var_1C8
  loc_C370A8: from_stack_2 = Me.Item(from_stack_1)
  loc_C370AD: FLdPr var_1CC
  loc_C370B0:  = Me.Value
  loc_C370B5: LitI2_Byte 0
  loc_C370B7: CR8I2
  loc_C370B8: PopFPR8
  loc_C370B9: FLdRfVar var_C4
  loc_C370BC: CR4Var
  loc_C370BD: PopFPR8
  loc_C370BE: FLdRfVar var_B4
  loc_C370C1: CStrVarTmp
  loc_C370C2: FStStrNoPop var_98
  loc_C370C5: FLdI2 var_92
  loc_C370C8: ImpAdLdI2 MemVar_C3D064
  loc_C370CB: FLdPr Me
  loc_C370CE: MemLdRfVar from_stack_1.global_60
  loc_C370D1: NewIfNullPr clsasiento
  loc_C370D4: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C370D9: FFree1Str var_98
  loc_C370DC: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C370EB: FFreeVar var_B4 = ""
  loc_C370F2: FLdRfVar var_1D0
  loc_C370F5: FLdPr Me
  loc_C370F8: MemLdRfVar from_stack_1.global_52
  loc_C370FB: NewIfNullPr clscaja
  loc_C370FE: from_stack_1 = clscaja.RecordCount
  loc_C37103: FLdRfVar var_138
  loc_C37106: FLdPr Me
  loc_C37109: MemLdRfVar from_stack_1.global_52
  loc_C3710C: NewIfNullPr clscaja
  loc_C3710F: from_stack_1 = clscaja.AbsolutePosition
  loc_C37114: ILdRf var_138
  loc_C37117: CR8I4
  loc_C37118: ILdRf var_1D0
  loc_C3711B: CR8I4
  loc_C3711C: DivR8
  loc_C3711D: LitI2_Byte &H64
  loc_C3711F: CR8I2
  loc_C37120: MulR8
  loc_C37121: CVarR4
  loc_C37125: PopAdLdVar
  loc_C37126: FLdPr Me
  loc_C37129: VCallAd Control_ID_ProgressBar
  loc_C3712C: FStAdFunc var_A4
  loc_C3712F: FLdPr var_A4
  loc_C37132: LateIdSt
  loc_C37137: FFree1Ad var_A4
  loc_C3713A: FLdPr Me
  loc_C3713D: MemLdRfVar from_stack_1.global_52
  loc_C37140: NewIfNullPr clscaja
  loc_C37143: Call clscaja.MoveSiguiente()
  loc_C37148: Branch loc_C36FB7
  loc_C3714B: FLdRfVar var_B4
  loc_C3714E: FLdRfVar var_15C
  loc_C37151: LitVarStr var_D4, "CajaPaco"
  loc_C37156: PopAdLdVar
  loc_C37157: FLdRfVar var_E8
  loc_C3715A: FLdRfVar var_A4
  loc_C3715D: FLdPr Me
  loc_C37160: MemLdRfVar from_stack_1.global_56
  loc_C37163: NewIfNullPr clsparaconta
  loc_C37166: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3716B: FLdPr var_A4
  loc_C3716E:  = Me.Fields
  loc_C37173: FLdPr var_E8
  loc_C37176: from_stack_2 = Me.Item(from_stack_1)
  loc_C3717B: FLdPr var_15C
  loc_C3717E:  = Me.Value
  loc_C37183: FLdR8 var_90
  loc_C37186: LitI2_Byte 0
  loc_C37188: CR8I2
  loc_C37189: PopFPR8
  loc_C3718A: FLdRfVar var_B4
  loc_C3718D: CStrVarTmp
  loc_C3718E: FStStrNoPop var_98
  loc_C37191: FLdI2 var_92
  loc_C37194: ImpAdLdI2 MemVar_C3D064
  loc_C37197: FLdPr Me
  loc_C3719A: MemLdRfVar from_stack_1.global_60
  loc_C3719D: NewIfNullPr clsasiento
  loc_C371A0: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C371A5: FFree1Str var_98
  loc_C371A8: FFreeAd var_A4 = "": var_E8 = ""
  loc_C371B1: FFree1Var var_B4 = ""
  loc_C371B4: LitVarStr var_D4, "Asiento Automático de Ajustes de Recaudación"
  loc_C371B9: PopAdLdVar
  loc_C371BA: FLdPr Me
  loc_C371BD: VCallAd Control_ID_StatusBar
  loc_C371C0: FStAdFunc var_A4
  loc_C371C3: FLdPr var_A4
  loc_C371C6: LateIdSt
  loc_C371CB: FFree1Ad var_A4
  loc_C371CE: LitStr "SELECT CodiCuco, Sum(HabeCain) HabeCain, Sum(DebeCain) DebeCain, (SELECT Left(Group_concat(Distinct DetaCain),1000) FROM cajaingre WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C371D1: LitStr ") AS DetaCain"
  loc_C371D4: ConcatStr
  loc_C371D5: FStStrNoPop var_98
  loc_C371D8: LitStr " FROM cajaingre"
  loc_C371DB: ConcatStr
  loc_C371DC: FStStrNoPop var_9C
  loc_C371DF: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C371E2: ConcatStr
  loc_C371E3: FStStrNoPop var_A0
  loc_C371E6: LitStr " AND LoteIngr > 0"
  loc_C371E9: ConcatStr
  loc_C371EA: FStStrNoPop var_12C
  loc_C371ED: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C371F0: ConcatStr
  loc_C371F1: FStStrNoPop var_130
  loc_C371F4: FLdPr Me
  loc_C371F7: MemLdRfVar from_stack_1.global_52
  loc_C371FA: NewIfNullPr clscaja
  loc_C371FD: Call clscaja.RedefineRS(from_stack_1v)
  loc_C37202: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C3720F: FLdRfVar var_138
  loc_C37212: FLdPr Me
  loc_C37215: MemLdRfVar from_stack_1.global_52
  loc_C37218: NewIfNullPr clscaja
  loc_C3721B: from_stack_1 = clscaja.RecordCount
  loc_C37220: ILdRf var_138
  loc_C37223: LitI4 0
  loc_C37228: GtI4
  loc_C37229: BranchF loc_C37657
  loc_C3722C: FLdPr Me
  loc_C3722F: VCallAd Control_ID_FechCajaHastaMsk
  loc_C37232: FStAdFunc var_A4
  loc_C37235: FLdPr var_A4
  loc_C37238: LateIdLdVar var_B4 DispID_15 0
  loc_C3723F: PopAd
  loc_C37241: FLdPr Me
  loc_C37244: VCallAd Control_ID_StatusBar
  loc_C37247: FStAdFunc var_E8
  loc_C3724A: FLdPr var_E8
  loc_C3724D: LateIdLdVar var_C4 DispID_1 0
  loc_C37254: PopAd
  loc_C37256: FLdRfVar var_E4
  loc_C37259: FLdRfVar var_1C8
  loc_C3725C: LitVarStr var_D4, "DetaCain"
  loc_C37261: PopAdLdVar
  loc_C37262: FLdRfVar var_1B0
  loc_C37265: FLdRfVar var_15C
  loc_C37268: FLdPr Me
  loc_C3726B: MemLdRfVar from_stack_1.global_52
  loc_C3726E: NewIfNullPr clscaja
  loc_C37271: from_stack_1v = clscaja.RsFrmGet()
  loc_C37276: FLdPr var_15C
  loc_C37279:  = Me.Fields
  loc_C3727E: FLdPr var_1B0
  loc_C37281: from_stack_2 = Me.Item(from_stack_1)
  loc_C37286: FLdPr var_1C8
  loc_C37289:  = Me.Value
  loc_C3728E: FLdRfVar var_1C2
  loc_C37291: LitI4 0
  loc_C37296: FLdRfVar var_E4
  loc_C37299: CStrVarTmp
  loc_C3729A: FStStrNoPop var_A0
  loc_C3729D: FLdRfVar var_C4
  loc_C372A0: CStrVarTmp
  loc_C372A1: FStStrNoPop var_9C
  loc_C372A4: LitI2_Byte 9
  loc_C372A6: FLdRfVar var_B4
  loc_C372A9: CStrVarTmp
  loc_C372AA: FStStrNoPop var_98
  loc_C372AD: ImpAdLdI2 MemVar_C3D064
  loc_C372B0: FLdPr Me
  loc_C372B3: MemLdRfVar from_stack_1.global_60
  loc_C372B6: NewIfNullPr clsasiento
  loc_C372B9: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C372BE: FLdI2 var_1C2
  loc_C372C1: FStI2 var_92
  loc_C372C4: FFreeStr var_98 = "": var_9C = ""
  loc_C372CD: FFreeAd var_A4 = "": var_E8 = "": var_15C = "": var_1B0 = ""
  loc_C372DA: FFreeVar var_B4 = "": var_C4 = ""
  loc_C372E3: FLdPr Me
  loc_C372E6: MemLdI2 global_68
  loc_C372E9: LitI2_Byte 0
  loc_C372EB: EqI2
  loc_C372EC: BranchF loc_C372F8
  loc_C372EF: FLdI2 var_92
  loc_C372F2: FLdPr Me
  loc_C372F5: MemStI2 global_68
  loc_C372F8: FLdPr Me
  loc_C372FB: MemLdI2 global_70
  loc_C372FE: FLdI2 var_92
  loc_C37301: LtI2
  loc_C37302: BranchF loc_C3730E
  loc_C37305: FLdI2 var_92
  loc_C37308: FLdPr Me
  loc_C3730B: MemStI2 global_70
  loc_C3730E: FLdPr Me
  loc_C37311: MemLdRfVar from_stack_1.global_52
  loc_C37314: NewIfNullPr clscaja
  loc_C37317: Call clscaja.MoveFirst()
  loc_C3731C: LitI2_Byte 0
  loc_C3731E: CR8I2
  loc_C3731F: FStFPR8 var_90
  loc_C37322: FLdRfVar var_1C2
  loc_C37325: FLdPr Me
  loc_C37328: MemLdRfVar from_stack_1.global_52
  loc_C3732B: NewIfNullPr clscaja
  loc_C3732E: from_stack_1 = clscaja.EOF
  loc_C37333: FLdI2 var_1C2
  loc_C37336: NotI4
  loc_C37337: BranchF loc_C37657
  loc_C3733A: FLdRfVar var_15C
  loc_C3733D: LitVarStr var_118, "HabeCain"
  loc_C37342: PopAdLdVar
  loc_C37343: FLdRfVar var_E8
  loc_C37346: FLdRfVar var_A4
  loc_C37349: FLdPr Me
  loc_C3734C: MemLdRfVar from_stack_1.global_52
  loc_C3734F: NewIfNullPr clscaja
  loc_C37352: from_stack_1v = clscaja.RsFrmGet()
  loc_C37357: FLdPr var_A4
  loc_C3735A:  = Me.Fields
  loc_C3735F: FLdPr var_E8
  loc_C37362: from_stack_2 = Me.Item(from_stack_1)
  loc_C37367: FLdRfVar var_1CC
  loc_C3736A: LitVarStr var_148, "DebeCain"
  loc_C3736F: PopAdLdVar
  loc_C37370: FLdRfVar var_1C8
  loc_C37373: FLdRfVar var_1B0
  loc_C37376: FLdPr Me
  loc_C37379: MemLdRfVar from_stack_1.global_52
  loc_C3737C: NewIfNullPr clscaja
  loc_C3737F: from_stack_1v = clscaja.RsFrmGet()
  loc_C37384: FLdPr var_1B0
  loc_C37387:  = Me.Fields
  loc_C3738C: FLdPr var_1C8
  loc_C3738F: from_stack_2 = Me.Item(from_stack_1)
  loc_C37394: LitI4 2
  loc_C37399: FLdRfVar var_90
  loc_C3739C: CVarRef
  loc_C373A1: FLdRfVar var_B4
  loc_C373A4: ImpAdCallFPR4  = Round(, )
  loc_C373A9: FLdRfVar var_B4
  loc_C373AC: LitI4 2
  loc_C373B1: FLdZeroAd var_15C
  loc_C373B4: CVarAd
  loc_C373B8: FLdRfVar var_E4
  loc_C373BB: ImpAdCallFPR4  = Round(, )
  loc_C373C0: FLdRfVar var_E4
  loc_C373C3: AddVar var_F8
  loc_C373C7: LitI4 2
  loc_C373CC: FLdZeroAd var_1CC
  loc_C373CF: CVarAd
  loc_C373D3: FLdRfVar var_128
  loc_C373D6: ImpAdCallFPR4  = Round(, )
  loc_C373DB: FLdRfVar var_128
  loc_C373DE: SubVar var_158
  loc_C373E2: CR4Var
  loc_C373E3: FStFPR8 var_90
  loc_C373E6: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = ""
  loc_C373F1: FFreeVar var_C4 = "": var_B4 = "": var_E4 = "": var_108 = "": var_F8 = ""
  loc_C37400: FLdRfVar var_B4
  loc_C37403: FLdRfVar var_15C
  loc_C37406: LitVarStr var_D4, "DebeCain"
  loc_C3740B: PopAdLdVar
  loc_C3740C: FLdRfVar var_E8
  loc_C3740F: FLdRfVar var_A4
  loc_C37412: FLdPr Me
  loc_C37415: MemLdRfVar from_stack_1.global_52
  loc_C37418: NewIfNullPr clscaja
  loc_C3741B: from_stack_1v = clscaja.RsFrmGet()
  loc_C37420: FLdPr var_A4
  loc_C37423:  = Me.Fields
  loc_C37428: FLdPr var_E8
  loc_C3742B: from_stack_2 = Me.Item(from_stack_1)
  loc_C37430: FLdPr var_15C
  loc_C37433:  = Me.Value
  loc_C37438: FLdRfVar var_B4
  loc_C3743B: LitVarStr var_118, "0"
  loc_C37440: HardType
  loc_C37441: NeVarBool
  loc_C37443: FFreeAd var_A4 = "": var_E8 = ""
  loc_C3744C: FFree1Var var_B4 = ""
  loc_C3744F: BranchF loc_C374FF
  loc_C37452: FLdRfVar var_B4
  loc_C37455: FLdRfVar var_15C
  loc_C37458: LitVarStr var_D4, "CodiCuco"
  loc_C3745D: PopAdLdVar
  loc_C3745E: FLdRfVar var_E8
  loc_C37461: FLdRfVar var_A4
  loc_C37464: FLdPr Me
  loc_C37467: MemLdRfVar from_stack_1.global_52
  loc_C3746A: NewIfNullPr clscaja
  loc_C3746D: from_stack_1v = clscaja.RsFrmGet()
  loc_C37472: FLdPr var_A4
  loc_C37475:  = Me.Fields
  loc_C3747A: FLdPr var_E8
  loc_C3747D: from_stack_2 = Me.Item(from_stack_1)
  loc_C37482: FLdPr var_15C
  loc_C37485:  = Me.Value
  loc_C3748A: FLdRfVar var_C4
  loc_C3748D: FLdRfVar var_1CC
  loc_C37490: LitVarStr var_118, "DebeCain"
  loc_C37495: PopAdLdVar
  loc_C37496: FLdRfVar var_1C8
  loc_C37499: FLdRfVar var_1B0
  loc_C3749C: FLdPr Me
  loc_C3749F: MemLdRfVar from_stack_1.global_52
  loc_C374A2: NewIfNullPr clscaja
  loc_C374A5: from_stack_1v = clscaja.RsFrmGet()
  loc_C374AA: FLdPr var_1B0
  loc_C374AD:  = Me.Fields
  loc_C374B2: FLdPr var_1C8
  loc_C374B5: from_stack_2 = Me.Item(from_stack_1)
  loc_C374BA: FLdPr var_1CC
  loc_C374BD:  = Me.Value
  loc_C374C2: LitI2_Byte 0
  loc_C374C4: CR8I2
  loc_C374C5: PopFPR8
  loc_C374C6: FLdRfVar var_C4
  loc_C374C9: CR4Var
  loc_C374CA: PopFPR8
  loc_C374CB: FLdRfVar var_B4
  loc_C374CE: CStrVarTmp
  loc_C374CF: FStStrNoPop var_98
  loc_C374D2: FLdI2 var_92
  loc_C374D5: ImpAdLdI2 MemVar_C3D064
  loc_C374D8: FLdPr Me
  loc_C374DB: MemLdRfVar from_stack_1.global_60
  loc_C374DE: NewIfNullPr clsasiento
  loc_C374E1: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C374E6: FFree1Str var_98
  loc_C374E9: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C374F8: FFreeVar var_B4 = ""
  loc_C374FF: FLdRfVar var_B4
  loc_C37502: FLdRfVar var_15C
  loc_C37505: LitVarStr var_D4, "HabeCain"
  loc_C3750A: PopAdLdVar
  loc_C3750B: FLdRfVar var_E8
  loc_C3750E: FLdRfVar var_A4
  loc_C37511: FLdPr Me
  loc_C37514: MemLdRfVar from_stack_1.global_52
  loc_C37517: NewIfNullPr clscaja
  loc_C3751A: from_stack_1v = clscaja.RsFrmGet()
  loc_C3751F: FLdPr var_A4
  loc_C37522:  = Me.Fields
  loc_C37527: FLdPr var_E8
  loc_C3752A: from_stack_2 = Me.Item(from_stack_1)
  loc_C3752F: FLdPr var_15C
  loc_C37532:  = Me.Value
  loc_C37537: FLdRfVar var_B4
  loc_C3753A: LitVarStr var_118, "0"
  loc_C3753F: HardType
  loc_C37540: NeVarBool
  loc_C37542: FFreeAd var_A4 = "": var_E8 = ""
  loc_C3754B: FFree1Var var_B4 = ""
  loc_C3754E: BranchF loc_C375FE
  loc_C37551: FLdRfVar var_B4
  loc_C37554: FLdRfVar var_15C
  loc_C37557: LitVarStr var_D4, "CodiCuco"
  loc_C3755C: PopAdLdVar
  loc_C3755D: FLdRfVar var_E8
  loc_C37560: FLdRfVar var_A4
  loc_C37563: FLdPr Me
  loc_C37566: MemLdRfVar from_stack_1.global_52
  loc_C37569: NewIfNullPr clscaja
  loc_C3756C: from_stack_1v = clscaja.RsFrmGet()
  loc_C37571: FLdPr var_A4
  loc_C37574:  = Me.Fields
  loc_C37579: FLdPr var_E8
  loc_C3757C: from_stack_2 = Me.Item(from_stack_1)
  loc_C37581: FLdPr var_15C
  loc_C37584:  = Me.Value
  loc_C37589: FLdRfVar var_C4
  loc_C3758C: FLdRfVar var_1CC
  loc_C3758F: LitVarStr var_118, "HabeCain"
  loc_C37594: PopAdLdVar
  loc_C37595: FLdRfVar var_1C8
  loc_C37598: FLdRfVar var_1B0
  loc_C3759B: FLdPr Me
  loc_C3759E: MemLdRfVar from_stack_1.global_52
  loc_C375A1: NewIfNullPr clscaja
  loc_C375A4: from_stack_1v = clscaja.RsFrmGet()
  loc_C375A9: FLdPr var_1B0
  loc_C375AC:  = Me.Fields
  loc_C375B1: FLdPr var_1C8
  loc_C375B4: from_stack_2 = Me.Item(from_stack_1)
  loc_C375B9: FLdPr var_1CC
  loc_C375BC:  = Me.Value
  loc_C375C1: FLdRfVar var_C4
  loc_C375C4: CR4Var
  loc_C375C5: PopFPR8
  loc_C375C6: LitI2_Byte 0
  loc_C375C8: CR8I2
  loc_C375C9: PopFPR8
  loc_C375CA: FLdRfVar var_B4
  loc_C375CD: CStrVarTmp
  loc_C375CE: FStStrNoPop var_98
  loc_C375D1: FLdI2 var_92
  loc_C375D4: ImpAdLdI2 MemVar_C3D064
  loc_C375D7: FLdPr Me
  loc_C375DA: MemLdRfVar from_stack_1.global_60
  loc_C375DD: NewIfNullPr clsasiento
  loc_C375E0: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C375E5: FFree1Str var_98
  loc_C375E8: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C375F7: FFreeVar var_B4 = ""
  loc_C375FE: FLdRfVar var_1D0
  loc_C37601: FLdPr Me
  loc_C37604: MemLdRfVar from_stack_1.global_52
  loc_C37607: NewIfNullPr clscaja
  loc_C3760A: from_stack_1 = clscaja.RecordCount
  loc_C3760F: FLdRfVar var_138
  loc_C37612: FLdPr Me
  loc_C37615: MemLdRfVar from_stack_1.global_52
  loc_C37618: NewIfNullPr clscaja
  loc_C3761B: from_stack_1 = clscaja.AbsolutePosition
  loc_C37620: ILdRf var_138
  loc_C37623: CR8I4
  loc_C37624: ILdRf var_1D0
  loc_C37627: CR8I4
  loc_C37628: DivR8
  loc_C37629: LitI2_Byte &H64
  loc_C3762B: CR8I2
  loc_C3762C: MulR8
  loc_C3762D: CVarR4
  loc_C37631: PopAdLdVar
  loc_C37632: FLdPr Me
  loc_C37635: VCallAd Control_ID_ProgressBar
  loc_C37638: FStAdFunc var_A4
  loc_C3763B: FLdPr var_A4
  loc_C3763E: LateIdSt
  loc_C37643: FFree1Ad var_A4
  loc_C37646: FLdPr Me
  loc_C37649: MemLdRfVar from_stack_1.global_52
  loc_C3764C: NewIfNullPr clscaja
  loc_C3764F: Call clscaja.MoveSiguiente()
  loc_C37654: Branch loc_C37322
  loc_C37657: LitVarStr var_D4, "Asiento Automático de Recaudación CONTRACARGOS"
  loc_C3765C: PopAdLdVar
  loc_C3765D: FLdPr Me
  loc_C37660: VCallAd Control_ID_StatusBar
  loc_C37663: FStAdFunc var_A4
  loc_C37666: FLdPr var_A4
  loc_C37669: LateIdSt
  loc_C3766E: FFree1Ad var_A4
  loc_C37671: LitStr "SELECT CodiCuco, Sum(DebeCain) DebeCain, Sum(HabeCain) HabeCain, (SELECT Left(Group_concat(Distinct DetaCain),1000) FROM cajaingre WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C37674: LitStr ") AS DetaCain"
  loc_C37677: ConcatStr
  loc_C37678: FStStrNoPop var_98
  loc_C3767B: LitStr " FROM cajaingre"
  loc_C3767E: ConcatStr
  loc_C3767F: FStStrNoPop var_9C
  loc_C37682: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C37685: ConcatStr
  loc_C37686: FStStrNoPop var_A0
  loc_C37689: LitStr " AND AutoIngr = 2"
  loc_C3768C: ConcatStr
  loc_C3768D: FStStrNoPop var_12C
  loc_C37690: LitStr " AND LoteIngr = 0"
  loc_C37693: ConcatStr
  loc_C37694: FStStrNoPop var_130
  loc_C37697: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C3769A: ConcatStr
  loc_C3769B: FStStrNoPop var_134
  loc_C3769E: FLdPr Me
  loc_C376A1: MemLdRfVar from_stack_1.global_52
  loc_C376A4: NewIfNullPr clscaja
  loc_C376A7: Call clscaja.RedefineRS(from_stack_1v)
  loc_C376AC: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = ""
  loc_C376BB: FLdRfVar var_138
  loc_C376BE: FLdPr Me
  loc_C376C1: MemLdRfVar from_stack_1.global_52
  loc_C376C4: NewIfNullPr clscaja
  loc_C376C7: from_stack_1 = clscaja.RecordCount
  loc_C376CC: ILdRf var_138
  loc_C376CF: LitI4 0
  loc_C376D4: GtI4
  loc_C376D5: BranchF loc_C37BF1
  loc_C376D8: FLdPr Me
  loc_C376DB: VCallAd Control_ID_FechCajaHastaMsk
  loc_C376DE: FStAdFunc var_A4
  loc_C376E1: FLdPr var_A4
  loc_C376E4: LateIdLdVar var_B4 DispID_15 0
  loc_C376EB: PopAd
  loc_C376ED: FLdPr Me
  loc_C376F0: VCallAd Control_ID_StatusBar
  loc_C376F3: FStAdFunc var_E8
  loc_C376F6: FLdPr var_E8
  loc_C376F9: LateIdLdVar var_C4 DispID_1 0
  loc_C37700: PopAd
  loc_C37702: FLdRfVar var_E4
  loc_C37705: FLdRfVar var_1C8
  loc_C37708: LitVarStr var_D4, "DetaCain"
  loc_C3770D: PopAdLdVar
  loc_C3770E: FLdRfVar var_1B0
  loc_C37711: FLdRfVar var_15C
  loc_C37714: FLdPr Me
  loc_C37717: MemLdRfVar from_stack_1.global_52
  loc_C3771A: NewIfNullPr clscaja
  loc_C3771D: from_stack_1v = clscaja.RsFrmGet()
  loc_C37722: FLdPr var_15C
  loc_C37725:  = Me.Fields
  loc_C3772A: FLdPr var_1B0
  loc_C3772D: from_stack_2 = Me.Item(from_stack_1)
  loc_C37732: FLdPr var_1C8
  loc_C37735:  = Me.Value
  loc_C3773A: FLdRfVar var_1C2
  loc_C3773D: LitI4 0
  loc_C37742: FLdRfVar var_E4
  loc_C37745: CStrVarTmp
  loc_C37746: FStStrNoPop var_A0
  loc_C37749: FLdRfVar var_C4
  loc_C3774C: CStrVarTmp
  loc_C3774D: FStStrNoPop var_9C
  loc_C37750: LitI2_Byte 9
  loc_C37752: FLdRfVar var_B4
  loc_C37755: CStrVarTmp
  loc_C37756: FStStrNoPop var_98
  loc_C37759: ImpAdLdI2 MemVar_C3D064
  loc_C3775C: FLdPr Me
  loc_C3775F: MemLdRfVar from_stack_1.global_60
  loc_C37762: NewIfNullPr clsasiento
  loc_C37765: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3776A: FLdI2 var_1C2
  loc_C3776D: FStI2 var_92
  loc_C37770: FFreeStr var_98 = "": var_9C = ""
  loc_C37779: FFreeAd var_A4 = "": var_E8 = "": var_15C = "": var_1B0 = ""
  loc_C37786: FFreeVar var_B4 = "": var_C4 = ""
  loc_C3778F: FLdPr Me
  loc_C37792: MemLdI2 global_68
  loc_C37795: LitI2_Byte 0
  loc_C37797: EqI2
  loc_C37798: BranchF loc_C377A4
  loc_C3779B: FLdI2 var_92
  loc_C3779E: FLdPr Me
  loc_C377A1: MemStI2 global_68
  loc_C377A4: FLdPr Me
  loc_C377A7: MemLdI2 global_70
  loc_C377AA: FLdI2 var_92
  loc_C377AD: LtI2
  loc_C377AE: BranchF loc_C377BA
  loc_C377B1: FLdI2 var_92
  loc_C377B4: FLdPr Me
  loc_C377B7: MemStI2 global_70
  loc_C377BA: FLdPr Me
  loc_C377BD: MemLdRfVar from_stack_1.global_52
  loc_C377C0: NewIfNullPr clscaja
  loc_C377C3: Call clscaja.MoveFirst()
  loc_C377C8: LitI2_Byte 0
  loc_C377CA: CR8I2
  loc_C377CB: FStFPR8 var_90
  loc_C377CE: FLdRfVar var_1C2
  loc_C377D1: FLdPr Me
  loc_C377D4: MemLdRfVar from_stack_1.global_52
  loc_C377D7: NewIfNullPr clscaja
  loc_C377DA: from_stack_1 = clscaja.EOF
  loc_C377DF: FLdI2 var_1C2
  loc_C377E2: NotI4
  loc_C377E3: BranchF loc_C37B03
  loc_C377E6: FLdRfVar var_15C
  loc_C377E9: LitVarStr var_118, "HabeCain"
  loc_C377EE: PopAdLdVar
  loc_C377EF: FLdRfVar var_E8
  loc_C377F2: FLdRfVar var_A4
  loc_C377F5: FLdPr Me
  loc_C377F8: MemLdRfVar from_stack_1.global_52
  loc_C377FB: NewIfNullPr clscaja
  loc_C377FE: from_stack_1v = clscaja.RsFrmGet()
  loc_C37803: FLdPr var_A4
  loc_C37806:  = Me.Fields
  loc_C3780B: FLdPr var_E8
  loc_C3780E: from_stack_2 = Me.Item(from_stack_1)
  loc_C37813: FLdRfVar var_1CC
  loc_C37816: LitVarStr var_148, "DebeCain"
  loc_C3781B: PopAdLdVar
  loc_C3781C: FLdRfVar var_1C8
  loc_C3781F: FLdRfVar var_1B0
  loc_C37822: FLdPr Me
  loc_C37825: MemLdRfVar from_stack_1.global_52
  loc_C37828: NewIfNullPr clscaja
  loc_C3782B: from_stack_1v = clscaja.RsFrmGet()
  loc_C37830: FLdPr var_1B0
  loc_C37833:  = Me.Fields
  loc_C37838: FLdPr var_1C8
  loc_C3783B: from_stack_2 = Me.Item(from_stack_1)
  loc_C37840: LitI4 2
  loc_C37845: FLdRfVar var_90
  loc_C37848: CVarRef
  loc_C3784D: FLdRfVar var_B4
  loc_C37850: ImpAdCallFPR4  = Round(, )
  loc_C37855: FLdRfVar var_B4
  loc_C37858: LitI4 2
  loc_C3785D: FLdZeroAd var_15C
  loc_C37860: CVarAd
  loc_C37864: FLdRfVar var_E4
  loc_C37867: ImpAdCallFPR4  = Round(, )
  loc_C3786C: FLdRfVar var_E4
  loc_C3786F: AddVar var_F8
  loc_C37873: LitI4 2
  loc_C37878: FLdZeroAd var_1CC
  loc_C3787B: CVarAd
  loc_C3787F: FLdRfVar var_128
  loc_C37882: ImpAdCallFPR4  = Round(, )
  loc_C37887: FLdRfVar var_128
  loc_C3788A: SubVar var_158
  loc_C3788E: CR4Var
  loc_C3788F: FStFPR8 var_90
  loc_C37892: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = ""
  loc_C3789D: FFreeVar var_C4 = "": var_B4 = "": var_E4 = "": var_108 = "": var_F8 = ""
  loc_C378AC: FLdRfVar var_B4
  loc_C378AF: FLdRfVar var_15C
  loc_C378B2: LitVarStr var_D4, "DebeCain"
  loc_C378B7: PopAdLdVar
  loc_C378B8: FLdRfVar var_E8
  loc_C378BB: FLdRfVar var_A4
  loc_C378BE: FLdPr Me
  loc_C378C1: MemLdRfVar from_stack_1.global_52
  loc_C378C4: NewIfNullPr clscaja
  loc_C378C7: from_stack_1v = clscaja.RsFrmGet()
  loc_C378CC: FLdPr var_A4
  loc_C378CF:  = Me.Fields
  loc_C378D4: FLdPr var_E8
  loc_C378D7: from_stack_2 = Me.Item(from_stack_1)
  loc_C378DC: FLdPr var_15C
  loc_C378DF:  = Me.Value
  loc_C378E4: FLdRfVar var_B4
  loc_C378E7: LitVarStr var_118, "0"
  loc_C378EC: HardType
  loc_C378ED: NeVarBool
  loc_C378EF: FFreeAd var_A4 = "": var_E8 = ""
  loc_C378F8: FFree1Var var_B4 = ""
  loc_C378FB: BranchF loc_C379AB
  loc_C378FE: FLdRfVar var_B4
  loc_C37901: FLdRfVar var_15C
  loc_C37904: LitVarStr var_D4, "CodiCuco"
  loc_C37909: PopAdLdVar
  loc_C3790A: FLdRfVar var_E8
  loc_C3790D: FLdRfVar var_A4
  loc_C37910: FLdPr Me
  loc_C37913: MemLdRfVar from_stack_1.global_52
  loc_C37916: NewIfNullPr clscaja
  loc_C37919: from_stack_1v = clscaja.RsFrmGet()
  loc_C3791E: FLdPr var_A4
  loc_C37921:  = Me.Fields
  loc_C37926: FLdPr var_E8
  loc_C37929: from_stack_2 = Me.Item(from_stack_1)
  loc_C3792E: FLdPr var_15C
  loc_C37931:  = Me.Value
  loc_C37936: FLdRfVar var_C4
  loc_C37939: FLdRfVar var_1CC
  loc_C3793C: LitVarStr var_118, "DebeCain"
  loc_C37941: PopAdLdVar
  loc_C37942: FLdRfVar var_1C8
  loc_C37945: FLdRfVar var_1B0
  loc_C37948: FLdPr Me
  loc_C3794B: MemLdRfVar from_stack_1.global_52
  loc_C3794E: NewIfNullPr clscaja
  loc_C37951: from_stack_1v = clscaja.RsFrmGet()
  loc_C37956: FLdPr var_1B0
  loc_C37959:  = Me.Fields
  loc_C3795E: FLdPr var_1C8
  loc_C37961: from_stack_2 = Me.Item(from_stack_1)
  loc_C37966: FLdPr var_1CC
  loc_C37969:  = Me.Value
  loc_C3796E: LitI2_Byte 0
  loc_C37970: CR8I2
  loc_C37971: PopFPR8
  loc_C37972: FLdRfVar var_C4
  loc_C37975: CR4Var
  loc_C37976: PopFPR8
  loc_C37977: FLdRfVar var_B4
  loc_C3797A: CStrVarTmp
  loc_C3797B: FStStrNoPop var_98
  loc_C3797E: FLdI2 var_92
  loc_C37981: ImpAdLdI2 MemVar_C3D064
  loc_C37984: FLdPr Me
  loc_C37987: MemLdRfVar from_stack_1.global_60
  loc_C3798A: NewIfNullPr clsasiento
  loc_C3798D: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C37992: FFree1Str var_98
  loc_C37995: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C379A4: FFreeVar var_B4 = ""
  loc_C379AB: FLdRfVar var_B4
  loc_C379AE: FLdRfVar var_15C
  loc_C379B1: LitVarStr var_D4, "HabeCain"
  loc_C379B6: PopAdLdVar
  loc_C379B7: FLdRfVar var_E8
  loc_C379BA: FLdRfVar var_A4
  loc_C379BD: FLdPr Me
  loc_C379C0: MemLdRfVar from_stack_1.global_52
  loc_C379C3: NewIfNullPr clscaja
  loc_C379C6: from_stack_1v = clscaja.RsFrmGet()
  loc_C379CB: FLdPr var_A4
  loc_C379CE:  = Me.Fields
  loc_C379D3: FLdPr var_E8
  loc_C379D6: from_stack_2 = Me.Item(from_stack_1)
  loc_C379DB: FLdPr var_15C
  loc_C379DE:  = Me.Value
  loc_C379E3: FLdRfVar var_B4
  loc_C379E6: LitVarStr var_118, "0"
  loc_C379EB: HardType
  loc_C379EC: NeVarBool
  loc_C379EE: FFreeAd var_A4 = "": var_E8 = ""
  loc_C379F7: FFree1Var var_B4 = ""
  loc_C379FA: BranchF loc_C37AAA
  loc_C379FD: FLdRfVar var_B4
  loc_C37A00: FLdRfVar var_15C
  loc_C37A03: LitVarStr var_D4, "CodiCuco"
  loc_C37A08: PopAdLdVar
  loc_C37A09: FLdRfVar var_E8
  loc_C37A0C: FLdRfVar var_A4
  loc_C37A0F: FLdPr Me
  loc_C37A12: MemLdRfVar from_stack_1.global_52
  loc_C37A15: NewIfNullPr clscaja
  loc_C37A18: from_stack_1v = clscaja.RsFrmGet()
  loc_C37A1D: FLdPr var_A4
  loc_C37A20:  = Me.Fields
  loc_C37A25: FLdPr var_E8
  loc_C37A28: from_stack_2 = Me.Item(from_stack_1)
  loc_C37A2D: FLdPr var_15C
  loc_C37A30:  = Me.Value
  loc_C37A35: FLdRfVar var_C4
  loc_C37A38: FLdRfVar var_1CC
  loc_C37A3B: LitVarStr var_118, "HabeCain"
  loc_C37A40: PopAdLdVar
  loc_C37A41: FLdRfVar var_1C8
  loc_C37A44: FLdRfVar var_1B0
  loc_C37A47: FLdPr Me
  loc_C37A4A: MemLdRfVar from_stack_1.global_52
  loc_C37A4D: NewIfNullPr clscaja
  loc_C37A50: from_stack_1v = clscaja.RsFrmGet()
  loc_C37A55: FLdPr var_1B0
  loc_C37A58:  = Me.Fields
  loc_C37A5D: FLdPr var_1C8
  loc_C37A60: from_stack_2 = Me.Item(from_stack_1)
  loc_C37A65: FLdPr var_1CC
  loc_C37A68:  = Me.Value
  loc_C37A6D: FLdRfVar var_C4
  loc_C37A70: CR4Var
  loc_C37A71: PopFPR8
  loc_C37A72: LitI2_Byte 0
  loc_C37A74: CR8I2
  loc_C37A75: PopFPR8
  loc_C37A76: FLdRfVar var_B4
  loc_C37A79: CStrVarTmp
  loc_C37A7A: FStStrNoPop var_98
  loc_C37A7D: FLdI2 var_92
  loc_C37A80: ImpAdLdI2 MemVar_C3D064
  loc_C37A83: FLdPr Me
  loc_C37A86: MemLdRfVar from_stack_1.global_60
  loc_C37A89: NewIfNullPr clsasiento
  loc_C37A8C: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C37A91: FFree1Str var_98
  loc_C37A94: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C37AA3: FFreeVar var_B4 = ""
  loc_C37AAA: FLdRfVar var_1D0
  loc_C37AAD: FLdPr Me
  loc_C37AB0: MemLdRfVar from_stack_1.global_52
  loc_C37AB3: NewIfNullPr clscaja
  loc_C37AB6: from_stack_1 = clscaja.RecordCount
  loc_C37ABB: FLdRfVar var_138
  loc_C37ABE: FLdPr Me
  loc_C37AC1: MemLdRfVar from_stack_1.global_52
  loc_C37AC4: NewIfNullPr clscaja
  loc_C37AC7: from_stack_1 = clscaja.AbsolutePosition
  loc_C37ACC: ILdRf var_138
  loc_C37ACF: CR8I4
  loc_C37AD0: ILdRf var_1D0
  loc_C37AD3: CR8I4
  loc_C37AD4: DivR8
  loc_C37AD5: LitI2_Byte &H64
  loc_C37AD7: CR8I2
  loc_C37AD8: MulR8
  loc_C37AD9: CVarR4
  loc_C37ADD: PopAdLdVar
  loc_C37ADE: FLdPr Me
  loc_C37AE1: VCallAd Control_ID_ProgressBar
  loc_C37AE4: FStAdFunc var_A4
  loc_C37AE7: FLdPr var_A4
  loc_C37AEA: LateIdSt
  loc_C37AEF: FFree1Ad var_A4
  loc_C37AF2: FLdPr Me
  loc_C37AF5: MemLdRfVar from_stack_1.global_52
  loc_C37AF8: NewIfNullPr clscaja
  loc_C37AFB: Call clscaja.MoveSiguiente()
  loc_C37B00: Branch loc_C377CE
  loc_C37B03: FLdFPR8 var_90
  loc_C37B06: LitI2_Byte 0
  loc_C37B08: CR8I2
  loc_C37B09: GtR4
  loc_C37B0A: BranchF loc_C37B79
  loc_C37B0D: FLdRfVar var_B4
  loc_C37B10: FLdRfVar var_15C
  loc_C37B13: LitVarStr var_D4, "CajaPaco"
  loc_C37B18: PopAdLdVar
  loc_C37B19: FLdRfVar var_E8
  loc_C37B1C: FLdRfVar var_A4
  loc_C37B1F: FLdPr Me
  loc_C37B22: MemLdRfVar from_stack_1.global_56
  loc_C37B25: NewIfNullPr clsparaconta
  loc_C37B28: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C37B2D: FLdPr var_A4
  loc_C37B30:  = Me.Fields
  loc_C37B35: FLdPr var_E8
  loc_C37B38: from_stack_2 = Me.Item(from_stack_1)
  loc_C37B3D: FLdPr var_15C
  loc_C37B40:  = Me.Value
  loc_C37B45: LitI2_Byte 0
  loc_C37B47: CR8I2
  loc_C37B48: PopFPR8
  loc_C37B49: FLdR8 var_90
  loc_C37B4C: FLdRfVar var_B4
  loc_C37B4F: CStrVarTmp
  loc_C37B50: FStStrNoPop var_98
  loc_C37B53: FLdI2 var_92
  loc_C37B56: ImpAdLdI2 MemVar_C3D064
  loc_C37B59: FLdPr Me
  loc_C37B5C: MemLdRfVar from_stack_1.global_60
  loc_C37B5F: NewIfNullPr clsasiento
  loc_C37B62: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C37B67: FFree1Str var_98
  loc_C37B6A: FFreeAd var_A4 = "": var_E8 = ""
  loc_C37B73: FFree1Var var_B4 = ""
  loc_C37B76: Branch loc_C37BF1
  loc_C37B79: FLdFPR8 var_90
  loc_C37B7C: LitI2_Byte 0
  loc_C37B7E: CR8I2
  loc_C37B7F: LtR8
  loc_C37B80: BranchF loc_C37BF1
  loc_C37B83: FLdRfVar var_B4
  loc_C37B86: FLdRfVar var_15C
  loc_C37B89: LitVarStr var_D4, "CajaPaco"
  loc_C37B8E: PopAdLdVar
  loc_C37B8F: FLdRfVar var_E8
  loc_C37B92: FLdRfVar var_A4
  loc_C37B95: FLdPr Me
  loc_C37B98: MemLdRfVar from_stack_1.global_56
  loc_C37B9B: NewIfNullPr clsparaconta
  loc_C37B9E: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C37BA3: FLdPr var_A4
  loc_C37BA6:  = Me.Fields
  loc_C37BAB: FLdPr var_E8
  loc_C37BAE: from_stack_2 = Me.Item(from_stack_1)
  loc_C37BB3: FLdPr var_15C
  loc_C37BB6:  = Me.Value
  loc_C37BBB: FLdFPR8 var_90
  loc_C37BBE: LitI2_Byte &HFF
  loc_C37BC0: CR8I2
  loc_C37BC1: MulR8
  loc_C37BC2: PopFPR8
  loc_C37BC3: LitI2_Byte 0
  loc_C37BC5: CR8I2
  loc_C37BC6: PopFPR8
  loc_C37BC7: FLdRfVar var_B4
  loc_C37BCA: CStrVarTmp
  loc_C37BCB: FStStrNoPop var_98
  loc_C37BCE: FLdI2 var_92
  loc_C37BD1: ImpAdLdI2 MemVar_C3D064
  loc_C37BD4: FLdPr Me
  loc_C37BD7: MemLdRfVar from_stack_1.global_60
  loc_C37BDA: NewIfNullPr clsasiento
  loc_C37BDD: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C37BE2: FFree1Str var_98
  loc_C37BE5: FFreeAd var_A4 = "": var_E8 = ""
  loc_C37BEE: FFree1Var var_B4 = ""
  loc_C37BF1: LitVarStr var_D4, "Asiento Automático de Depósitos Bancarios"
  loc_C37BF6: PopAdLdVar
  loc_C37BF7: FLdPr Me
  loc_C37BFA: VCallAd Control_ID_StatusBar
  loc_C37BFD: FStAdFunc var_A4
  loc_C37C00: FLdPr var_A4
  loc_C37C03: LateIdSt
  loc_C37C08: FFree1Ad var_A4
  loc_C37C0B: LitStr "SELECT CodiCuco, Sum(DebeCaja) DebeCaja"
  loc_C37C0E: LitStr " FROM cajadepo"
  loc_C37C11: ConcatStr
  loc_C37C12: FStStrNoPop var_98
  loc_C37C15: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C37C18: ConcatStr
  loc_C37C19: FStStrNoPop var_9C
  loc_C37C1C: LitStr " AND DebeCaja > 0"
  loc_C37C1F: ConcatStr
  loc_C37C20: FStStrNoPop var_A0
  loc_C37C23: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco "
  loc_C37C26: ConcatStr
  loc_C37C27: FStStrNoPop var_12C
  loc_C37C2A: FLdPr Me
  loc_C37C2D: MemLdRfVar from_stack_1.global_52
  loc_C37C30: NewIfNullPr clscaja
  loc_C37C33: Call clscaja.RedefineRS(from_stack_1v)
  loc_C37C38: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C37C43: FLdRfVar var_138
  loc_C37C46: FLdPr Me
  loc_C37C49: MemLdRfVar from_stack_1.global_52
  loc_C37C4C: NewIfNullPr clscaja
  loc_C37C4F: from_stack_1 = clscaja.RecordCount
  loc_C37C54: ILdRf var_138
  loc_C37C57: LitI4 0
  loc_C37C5C: GtI4
  loc_C37C5D: BranchF loc_C37F0F
  loc_C37C60: FLdPr Me
  loc_C37C63: VCallAd Control_ID_FechCajaHastaMsk
  loc_C37C66: FStAdFunc var_A4
  loc_C37C69: FLdPr var_A4
  loc_C37C6C: LateIdLdVar var_B4 DispID_15 0
  loc_C37C73: PopAd
  loc_C37C75: FLdPr Me
  loc_C37C78: VCallAd Control_ID_StatusBar
  loc_C37C7B: FStAdFunc var_E8
  loc_C37C7E: FLdPr var_E8
  loc_C37C81: LateIdLdVar var_C4 DispID_1 0
  loc_C37C88: PopAd
  loc_C37C8A: FLdRfVar var_1C2
  loc_C37C8D: LitI4 0
  loc_C37C92: LitI4 0
  loc_C37C97: FLdRfVar var_C4
  loc_C37C9A: CStrVarTmp
  loc_C37C9B: FStStrNoPop var_9C
  loc_C37C9E: LitI2_Byte &HA
  loc_C37CA0: FLdRfVar var_B4
  loc_C37CA3: CStrVarTmp
  loc_C37CA4: FStStrNoPop var_98
  loc_C37CA7: ImpAdLdI2 MemVar_C3D064
  loc_C37CAA: FLdPr Me
  loc_C37CAD: MemLdRfVar from_stack_1.global_60
  loc_C37CB0: NewIfNullPr clsasiento
  loc_C37CB3: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C37CB8: FLdI2 var_1C2
  loc_C37CBB: FStI2 var_92
  loc_C37CBE: FFreeStr var_98 = ""
  loc_C37CC5: FFreeAd var_A4 = ""
  loc_C37CCC: FFreeVar var_B4 = ""
  loc_C37CD3: FLdPr Me
  loc_C37CD6: MemLdI2 global_68
  loc_C37CD9: LitI2_Byte 0
  loc_C37CDB: EqI2
  loc_C37CDC: BranchF loc_C37CE8
  loc_C37CDF: FLdI2 var_92
  loc_C37CE2: FLdPr Me
  loc_C37CE5: MemStI2 global_68
  loc_C37CE8: FLdPr Me
  loc_C37CEB: MemLdI2 global_70
  loc_C37CEE: FLdI2 var_92
  loc_C37CF1: LtI2
  loc_C37CF2: BranchF loc_C37CFE
  loc_C37CF5: FLdI2 var_92
  loc_C37CF8: FLdPr Me
  loc_C37CFB: MemStI2 global_70
  loc_C37CFE: FLdPr Me
  loc_C37D01: MemLdRfVar from_stack_1.global_52
  loc_C37D04: NewIfNullPr clscaja
  loc_C37D07: Call clscaja.MoveFirst()
  loc_C37D0C: LitI2_Byte 0
  loc_C37D0E: CR8I2
  loc_C37D0F: FStFPR8 var_90
  loc_C37D12: FLdRfVar var_1C2
  loc_C37D15: FLdPr Me
  loc_C37D18: MemLdRfVar from_stack_1.global_52
  loc_C37D1B: NewIfNullPr clscaja
  loc_C37D1E: from_stack_1 = clscaja.EOF
  loc_C37D23: FLdI2 var_1C2
  loc_C37D26: NotI4
  loc_C37D27: BranchF loc_C37EA6
  loc_C37D2A: FLdRfVar var_15C
  loc_C37D2D: LitVarStr var_118, "DebeCaja"
  loc_C37D32: PopAdLdVar
  loc_C37D33: FLdRfVar var_E8
  loc_C37D36: FLdRfVar var_A4
  loc_C37D39: FLdPr Me
  loc_C37D3C: MemLdRfVar from_stack_1.global_52
  loc_C37D3F: NewIfNullPr clscaja
  loc_C37D42: from_stack_1v = clscaja.RsFrmGet()
  loc_C37D47: FLdPr var_A4
  loc_C37D4A:  = Me.Fields
  loc_C37D4F: FLdPr var_E8
  loc_C37D52: from_stack_2 = Me.Item(from_stack_1)
  loc_C37D57: LitI4 2
  loc_C37D5C: FLdRfVar var_90
  loc_C37D5F: CVarRef
  loc_C37D64: FLdRfVar var_B4
  loc_C37D67: ImpAdCallFPR4  = Round(, )
  loc_C37D6C: FLdRfVar var_B4
  loc_C37D6F: LitI4 2
  loc_C37D74: FLdZeroAd var_15C
  loc_C37D77: CVarAd
  loc_C37D7B: FLdRfVar var_E4
  loc_C37D7E: ImpAdCallFPR4  = Round(, )
  loc_C37D83: FLdRfVar var_E4
  loc_C37D86: AddVar var_F8
  loc_C37D8A: CR4Var
  loc_C37D8B: FStFPR8 var_90
  loc_C37D8E: FFreeAd var_A4 = ""
  loc_C37D95: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C37DA0: FLdRfVar var_B4
  loc_C37DA3: FLdRfVar var_15C
  loc_C37DA6: LitVarStr var_D4, "CodiCuco"
  loc_C37DAB: PopAdLdVar
  loc_C37DAC: FLdRfVar var_E8
  loc_C37DAF: FLdRfVar var_A4
  loc_C37DB2: FLdPr Me
  loc_C37DB5: MemLdRfVar from_stack_1.global_52
  loc_C37DB8: NewIfNullPr clscaja
  loc_C37DBB: from_stack_1v = clscaja.RsFrmGet()
  loc_C37DC0: FLdPr var_A4
  loc_C37DC3:  = Me.Fields
  loc_C37DC8: FLdPr var_E8
  loc_C37DCB: from_stack_2 = Me.Item(from_stack_1)
  loc_C37DD0: FLdPr var_15C
  loc_C37DD3:  = Me.Value
  loc_C37DD8: FLdRfVar var_C4
  loc_C37DDB: FLdRfVar var_1CC
  loc_C37DDE: LitVarStr var_118, "DebeCaja"
  loc_C37DE3: PopAdLdVar
  loc_C37DE4: FLdRfVar var_1C8
  loc_C37DE7: FLdRfVar var_1B0
  loc_C37DEA: FLdPr Me
  loc_C37DED: MemLdRfVar from_stack_1.global_52
  loc_C37DF0: NewIfNullPr clscaja
  loc_C37DF3: from_stack_1v = clscaja.RsFrmGet()
  loc_C37DF8: FLdPr var_1B0
  loc_C37DFB:  = Me.Fields
  loc_C37E00: FLdPr var_1C8
  loc_C37E03: from_stack_2 = Me.Item(from_stack_1)
  loc_C37E08: FLdPr var_1CC
  loc_C37E0B:  = Me.Value
  loc_C37E10: LitI2_Byte 0
  loc_C37E12: CR8I2
  loc_C37E13: PopFPR8
  loc_C37E14: FLdRfVar var_C4
  loc_C37E17: CR4Var
  loc_C37E18: PopFPR8
  loc_C37E19: FLdRfVar var_B4
  loc_C37E1C: CStrVarTmp
  loc_C37E1D: FStStrNoPop var_98
  loc_C37E20: FLdI2 var_92
  loc_C37E23: ImpAdLdI2 MemVar_C3D064
  loc_C37E26: FLdPr Me
  loc_C37E29: MemLdRfVar from_stack_1.global_60
  loc_C37E2C: NewIfNullPr clsasiento
  loc_C37E2F: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C37E34: FFree1Str var_98
  loc_C37E37: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C37E46: FFreeVar var_B4 = ""
  loc_C37E4D: FLdRfVar var_1D0
  loc_C37E50: FLdPr Me
  loc_C37E53: MemLdRfVar from_stack_1.global_52
  loc_C37E56: NewIfNullPr clscaja
  loc_C37E59: from_stack_1 = clscaja.RecordCount
  loc_C37E5E: FLdRfVar var_138
  loc_C37E61: FLdPr Me
  loc_C37E64: MemLdRfVar from_stack_1.global_52
  loc_C37E67: NewIfNullPr clscaja
  loc_C37E6A: from_stack_1 = clscaja.AbsolutePosition
  loc_C37E6F: ILdRf var_138
  loc_C37E72: CR8I4
  loc_C37E73: ILdRf var_1D0
  loc_C37E76: CR8I4
  loc_C37E77: DivR8
  loc_C37E78: LitI2_Byte &H64
  loc_C37E7A: CR8I2
  loc_C37E7B: MulR8
  loc_C37E7C: CVarR4
  loc_C37E80: PopAdLdVar
  loc_C37E81: FLdPr Me
  loc_C37E84: VCallAd Control_ID_ProgressBar
  loc_C37E87: FStAdFunc var_A4
  loc_C37E8A: FLdPr var_A4
  loc_C37E8D: LateIdSt
  loc_C37E92: FFree1Ad var_A4
  loc_C37E95: FLdPr Me
  loc_C37E98: MemLdRfVar from_stack_1.global_52
  loc_C37E9B: NewIfNullPr clscaja
  loc_C37E9E: Call clscaja.MoveSiguiente()
  loc_C37EA3: Branch loc_C37D12
  loc_C37EA6: FLdRfVar var_B4
  loc_C37EA9: FLdRfVar var_15C
  loc_C37EAC: LitVarStr var_D4, "CajaPaco"
  loc_C37EB1: PopAdLdVar
  loc_C37EB2: FLdRfVar var_E8
  loc_C37EB5: FLdRfVar var_A4
  loc_C37EB8: FLdPr Me
  loc_C37EBB: MemLdRfVar from_stack_1.global_56
  loc_C37EBE: NewIfNullPr clsparaconta
  loc_C37EC1: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C37EC6: FLdPr var_A4
  loc_C37EC9:  = Me.Fields
  loc_C37ECE: FLdPr var_E8
  loc_C37ED1: from_stack_2 = Me.Item(from_stack_1)
  loc_C37ED6: FLdPr var_15C
  loc_C37ED9:  = Me.Value
  loc_C37EDE: FLdR8 var_90
  loc_C37EE1: LitI2_Byte 0
  loc_C37EE3: CR8I2
  loc_C37EE4: PopFPR8
  loc_C37EE5: FLdRfVar var_B4
  loc_C37EE8: CStrVarTmp
  loc_C37EE9: FStStrNoPop var_98
  loc_C37EEC: FLdI2 var_92
  loc_C37EEF: ImpAdLdI2 MemVar_C3D064
  loc_C37EF2: FLdPr Me
  loc_C37EF5: MemLdRfVar from_stack_1.global_60
  loc_C37EF8: NewIfNullPr clsasiento
  loc_C37EFB: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C37F00: FFree1Str var_98
  loc_C37F03: FFreeAd var_A4 = "": var_E8 = ""
  loc_C37F0C: FFree1Var var_B4 = ""
  loc_C37F0F: LitVarStr var_D4, "Asiento Automático de Anulación de Depósitos Bancarios"
  loc_C37F14: PopAdLdVar
  loc_C37F15: FLdPr Me
  loc_C37F18: VCallAd Control_ID_StatusBar
  loc_C37F1B: FStAdFunc var_A4
  loc_C37F1E: FLdPr var_A4
  loc_C37F21: LateIdSt
  loc_C37F26: FFree1Ad var_A4
  loc_C37F29: LitStr "SELECT CodiCuco, Sum(HabeCaja) HabeCaja"
  loc_C37F2C: LitStr " FROM cajadepo"
  loc_C37F2F: ConcatStr
  loc_C37F30: FStStrNoPop var_98
  loc_C37F33: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C37F36: ConcatStr
  loc_C37F37: FStStrNoPop var_9C
  loc_C37F3A: LitStr " AND HabeCaja > 0"
  loc_C37F3D: ConcatStr
  loc_C37F3E: FStStrNoPop var_A0
  loc_C37F41: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco "
  loc_C37F44: ConcatStr
  loc_C37F45: FStStrNoPop var_12C
  loc_C37F48: FLdPr Me
  loc_C37F4B: MemLdRfVar from_stack_1.global_52
  loc_C37F4E: NewIfNullPr clscaja
  loc_C37F51: Call clscaja.RedefineRS(from_stack_1v)
  loc_C37F56: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C37F61: FLdRfVar var_138
  loc_C37F64: FLdPr Me
  loc_C37F67: MemLdRfVar from_stack_1.global_52
  loc_C37F6A: NewIfNullPr clscaja
  loc_C37F6D: from_stack_1 = clscaja.RecordCount
  loc_C37F72: ILdRf var_138
  loc_C37F75: LitI4 0
  loc_C37F7A: GtI4
  loc_C37F7B: BranchF loc_C3822D
  loc_C37F7E: FLdPr Me
  loc_C37F81: VCallAd Control_ID_FechCajaHastaMsk
  loc_C37F84: FStAdFunc var_A4
  loc_C37F87: FLdPr var_A4
  loc_C37F8A: LateIdLdVar var_B4 DispID_15 0
  loc_C37F91: PopAd
  loc_C37F93: FLdPr Me
  loc_C37F96: VCallAd Control_ID_StatusBar
  loc_C37F99: FStAdFunc var_E8
  loc_C37F9C: FLdPr var_E8
  loc_C37F9F: LateIdLdVar var_C4 DispID_1 0
  loc_C37FA6: PopAd
  loc_C37FA8: FLdRfVar var_1C2
  loc_C37FAB: LitI4 0
  loc_C37FB0: LitI4 0
  loc_C37FB5: FLdRfVar var_C4
  loc_C37FB8: CStrVarTmp
  loc_C37FB9: FStStrNoPop var_9C
  loc_C37FBC: LitI2_Byte &HA
  loc_C37FBE: FLdRfVar var_B4
  loc_C37FC1: CStrVarTmp
  loc_C37FC2: FStStrNoPop var_98
  loc_C37FC5: ImpAdLdI2 MemVar_C3D064
  loc_C37FC8: FLdPr Me
  loc_C37FCB: MemLdRfVar from_stack_1.global_60
  loc_C37FCE: NewIfNullPr clsasiento
  loc_C37FD1: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C37FD6: FLdI2 var_1C2
  loc_C37FD9: FStI2 var_92
  loc_C37FDC: FFreeStr var_98 = ""
  loc_C37FE3: FFreeAd var_A4 = ""
  loc_C37FEA: FFreeVar var_B4 = ""
  loc_C37FF1: FLdPr Me
  loc_C37FF4: MemLdI2 global_68
  loc_C37FF7: LitI2_Byte 0
  loc_C37FF9: EqI2
  loc_C37FFA: BranchF loc_C38006
  loc_C37FFD: FLdI2 var_92
  loc_C38000: FLdPr Me
  loc_C38003: MemStI2 global_68
  loc_C38006: FLdPr Me
  loc_C38009: MemLdI2 global_70
  loc_C3800C: FLdI2 var_92
  loc_C3800F: LtI2
  loc_C38010: BranchF loc_C3801C
  loc_C38013: FLdI2 var_92
  loc_C38016: FLdPr Me
  loc_C38019: MemStI2 global_70
  loc_C3801C: FLdPr Me
  loc_C3801F: MemLdRfVar from_stack_1.global_52
  loc_C38022: NewIfNullPr clscaja
  loc_C38025: Call clscaja.MoveFirst()
  loc_C3802A: LitI2_Byte 0
  loc_C3802C: CR8I2
  loc_C3802D: FStFPR8 var_90
  loc_C38030: FLdRfVar var_1C2
  loc_C38033: FLdPr Me
  loc_C38036: MemLdRfVar from_stack_1.global_52
  loc_C38039: NewIfNullPr clscaja
  loc_C3803C: from_stack_1 = clscaja.EOF
  loc_C38041: FLdI2 var_1C2
  loc_C38044: NotI4
  loc_C38045: BranchF loc_C381C4
  loc_C38048: FLdRfVar var_15C
  loc_C3804B: LitVarStr var_118, "HabeCaja"
  loc_C38050: PopAdLdVar
  loc_C38051: FLdRfVar var_E8
  loc_C38054: FLdRfVar var_A4
  loc_C38057: FLdPr Me
  loc_C3805A: MemLdRfVar from_stack_1.global_52
  loc_C3805D: NewIfNullPr clscaja
  loc_C38060: from_stack_1v = clscaja.RsFrmGet()
  loc_C38065: FLdPr var_A4
  loc_C38068:  = Me.Fields
  loc_C3806D: FLdPr var_E8
  loc_C38070: from_stack_2 = Me.Item(from_stack_1)
  loc_C38075: LitI4 2
  loc_C3807A: FLdRfVar var_90
  loc_C3807D: CVarRef
  loc_C38082: FLdRfVar var_B4
  loc_C38085: ImpAdCallFPR4  = Round(, )
  loc_C3808A: FLdRfVar var_B4
  loc_C3808D: LitI4 2
  loc_C38092: FLdZeroAd var_15C
  loc_C38095: CVarAd
  loc_C38099: FLdRfVar var_E4
  loc_C3809C: ImpAdCallFPR4  = Round(, )
  loc_C380A1: FLdRfVar var_E4
  loc_C380A4: AddVar var_F8
  loc_C380A8: CR4Var
  loc_C380A9: FStFPR8 var_90
  loc_C380AC: FFreeAd var_A4 = ""
  loc_C380B3: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C380BE: FLdRfVar var_B4
  loc_C380C1: FLdRfVar var_15C
  loc_C380C4: LitVarStr var_D4, "CodiCuco"
  loc_C380C9: PopAdLdVar
  loc_C380CA: FLdRfVar var_E8
  loc_C380CD: FLdRfVar var_A4
  loc_C380D0: FLdPr Me
  loc_C380D3: MemLdRfVar from_stack_1.global_52
  loc_C380D6: NewIfNullPr clscaja
  loc_C380D9: from_stack_1v = clscaja.RsFrmGet()
  loc_C380DE: FLdPr var_A4
  loc_C380E1:  = Me.Fields
  loc_C380E6: FLdPr var_E8
  loc_C380E9: from_stack_2 = Me.Item(from_stack_1)
  loc_C380EE: FLdPr var_15C
  loc_C380F1:  = Me.Value
  loc_C380F6: FLdRfVar var_C4
  loc_C380F9: FLdRfVar var_1CC
  loc_C380FC: LitVarStr var_118, "HabeCaja"
  loc_C38101: PopAdLdVar
  loc_C38102: FLdRfVar var_1C8
  loc_C38105: FLdRfVar var_1B0
  loc_C38108: FLdPr Me
  loc_C3810B: MemLdRfVar from_stack_1.global_52
  loc_C3810E: NewIfNullPr clscaja
  loc_C38111: from_stack_1v = clscaja.RsFrmGet()
  loc_C38116: FLdPr var_1B0
  loc_C38119:  = Me.Fields
  loc_C3811E: FLdPr var_1C8
  loc_C38121: from_stack_2 = Me.Item(from_stack_1)
  loc_C38126: FLdPr var_1CC
  loc_C38129:  = Me.Value
  loc_C3812E: FLdRfVar var_C4
  loc_C38131: CR4Var
  loc_C38132: PopFPR8
  loc_C38133: LitI2_Byte 0
  loc_C38135: CR8I2
  loc_C38136: PopFPR8
  loc_C38137: FLdRfVar var_B4
  loc_C3813A: CStrVarTmp
  loc_C3813B: FStStrNoPop var_98
  loc_C3813E: FLdI2 var_92
  loc_C38141: ImpAdLdI2 MemVar_C3D064
  loc_C38144: FLdPr Me
  loc_C38147: MemLdRfVar from_stack_1.global_60
  loc_C3814A: NewIfNullPr clsasiento
  loc_C3814D: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C38152: FFree1Str var_98
  loc_C38155: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C38164: FFreeVar var_B4 = ""
  loc_C3816B: FLdRfVar var_1D0
  loc_C3816E: FLdPr Me
  loc_C38171: MemLdRfVar from_stack_1.global_52
  loc_C38174: NewIfNullPr clscaja
  loc_C38177: from_stack_1 = clscaja.RecordCount
  loc_C3817C: FLdRfVar var_138
  loc_C3817F: FLdPr Me
  loc_C38182: MemLdRfVar from_stack_1.global_52
  loc_C38185: NewIfNullPr clscaja
  loc_C38188: from_stack_1 = clscaja.AbsolutePosition
  loc_C3818D: ILdRf var_138
  loc_C38190: CR8I4
  loc_C38191: ILdRf var_1D0
  loc_C38194: CR8I4
  loc_C38195: DivR8
  loc_C38196: LitI2_Byte &H64
  loc_C38198: CR8I2
  loc_C38199: MulR8
  loc_C3819A: CVarR4
  loc_C3819E: PopAdLdVar
  loc_C3819F: FLdPr Me
  loc_C381A2: VCallAd Control_ID_ProgressBar
  loc_C381A5: FStAdFunc var_A4
  loc_C381A8: FLdPr var_A4
  loc_C381AB: LateIdSt
  loc_C381B0: FFree1Ad var_A4
  loc_C381B3: FLdPr Me
  loc_C381B6: MemLdRfVar from_stack_1.global_52
  loc_C381B9: NewIfNullPr clscaja
  loc_C381BC: Call clscaja.MoveSiguiente()
  loc_C381C1: Branch loc_C38030
  loc_C381C4: FLdRfVar var_B4
  loc_C381C7: FLdRfVar var_15C
  loc_C381CA: LitVarStr var_D4, "CajaPaco"
  loc_C381CF: PopAdLdVar
  loc_C381D0: FLdRfVar var_E8
  loc_C381D3: FLdRfVar var_A4
  loc_C381D6: FLdPr Me
  loc_C381D9: MemLdRfVar from_stack_1.global_56
  loc_C381DC: NewIfNullPr clsparaconta
  loc_C381DF: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C381E4: FLdPr var_A4
  loc_C381E7:  = Me.Fields
  loc_C381EC: FLdPr var_E8
  loc_C381EF: from_stack_2 = Me.Item(from_stack_1)
  loc_C381F4: FLdPr var_15C
  loc_C381F7:  = Me.Value
  loc_C381FC: LitI2_Byte 0
  loc_C381FE: CR8I2
  loc_C381FF: PopFPR8
  loc_C38200: FLdR8 var_90
  loc_C38203: FLdRfVar var_B4
  loc_C38206: CStrVarTmp
  loc_C38207: FStStrNoPop var_98
  loc_C3820A: FLdI2 var_92
  loc_C3820D: ImpAdLdI2 MemVar_C3D064
  loc_C38210: FLdPr Me
  loc_C38213: MemLdRfVar from_stack_1.global_60
  loc_C38216: NewIfNullPr clsasiento
  loc_C38219: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3821E: FFree1Str var_98
  loc_C38221: FFreeAd var_A4 = "": var_E8 = ""
  loc_C3822A: FFree1Var var_B4 = ""
  loc_C3822D: ImpAdLdI2 MemVar_C3D064
  loc_C38230: LitI2 2013
  loc_C38233: LeI2
  loc_C38234: BranchF loc_C38876
  loc_C38237: LitVarStr var_D4, "Asiento Automático de Débitos Bancarios"
  loc_C3823C: PopAdLdVar
  loc_C3823D: FLdPr Me
  loc_C38240: VCallAd Control_ID_StatusBar
  loc_C38243: FStAdFunc var_A4
  loc_C38246: FLdPr var_A4
  loc_C38249: LateIdSt
  loc_C3824E: FFree1Ad var_A4
  loc_C38251: LitStr "SELECT CodiCuco, Sum(DebeCamb) DebeCamb"
  loc_C38254: LitStr " FROM cajamovibanco"
  loc_C38257: ConcatStr
  loc_C38258: FStStrNoPop var_98
  loc_C3825B: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3825E: ConcatStr
  loc_C3825F: FStStrNoPop var_9C
  loc_C38262: LitStr " AND DebeCamb > 0"
  loc_C38265: ConcatStr
  loc_C38266: FStStrNoPop var_A0
  loc_C38269: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco "
  loc_C3826C: ConcatStr
  loc_C3826D: FStStrNoPop var_12C
  loc_C38270: FLdPr Me
  loc_C38273: MemLdRfVar from_stack_1.global_52
  loc_C38276: NewIfNullPr clscaja
  loc_C38279: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3827E: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C38289: FLdRfVar var_138
  loc_C3828C: FLdPr Me
  loc_C3828F: MemLdRfVar from_stack_1.global_52
  loc_C38292: NewIfNullPr clscaja
  loc_C38295: from_stack_1 = clscaja.RecordCount
  loc_C3829A: ILdRf var_138
  loc_C3829D: LitI4 0
  loc_C382A2: GtI4
  loc_C382A3: BranchF loc_C38555
  loc_C382A6: FLdPr Me
  loc_C382A9: VCallAd Control_ID_FechCajaHastaMsk
  loc_C382AC: FStAdFunc var_A4
  loc_C382AF: FLdPr var_A4
  loc_C382B2: LateIdLdVar var_B4 DispID_15 0
  loc_C382B9: PopAd
  loc_C382BB: FLdPr Me
  loc_C382BE: VCallAd Control_ID_StatusBar
  loc_C382C1: FStAdFunc var_E8
  loc_C382C4: FLdPr var_E8
  loc_C382C7: LateIdLdVar var_C4 DispID_1 0
  loc_C382CE: PopAd
  loc_C382D0: FLdRfVar var_1C2
  loc_C382D3: LitI4 0
  loc_C382D8: LitI4 0
  loc_C382DD: FLdRfVar var_C4
  loc_C382E0: CStrVarTmp
  loc_C382E1: FStStrNoPop var_9C
  loc_C382E4: LitI2_Byte &HD
  loc_C382E6: FLdRfVar var_B4
  loc_C382E9: CStrVarTmp
  loc_C382EA: FStStrNoPop var_98
  loc_C382ED: ImpAdLdI2 MemVar_C3D064
  loc_C382F0: FLdPr Me
  loc_C382F3: MemLdRfVar from_stack_1.global_60
  loc_C382F6: NewIfNullPr clsasiento
  loc_C382F9: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C382FE: FLdI2 var_1C2
  loc_C38301: FStI2 var_92
  loc_C38304: FFreeStr var_98 = ""
  loc_C3830B: FFreeAd var_A4 = ""
  loc_C38312: FFreeVar var_B4 = ""
  loc_C38319: FLdPr Me
  loc_C3831C: MemLdI2 global_68
  loc_C3831F: LitI2_Byte 0
  loc_C38321: EqI2
  loc_C38322: BranchF loc_C3832E
  loc_C38325: FLdI2 var_92
  loc_C38328: FLdPr Me
  loc_C3832B: MemStI2 global_68
  loc_C3832E: FLdPr Me
  loc_C38331: MemLdI2 global_70
  loc_C38334: FLdI2 var_92
  loc_C38337: LtI2
  loc_C38338: BranchF loc_C38344
  loc_C3833B: FLdI2 var_92
  loc_C3833E: FLdPr Me
  loc_C38341: MemStI2 global_70
  loc_C38344: FLdPr Me
  loc_C38347: MemLdRfVar from_stack_1.global_52
  loc_C3834A: NewIfNullPr clscaja
  loc_C3834D: Call clscaja.MoveFirst()
  loc_C38352: LitI2_Byte 0
  loc_C38354: CR8I2
  loc_C38355: FStFPR8 var_90
  loc_C38358: FLdRfVar var_1C2
  loc_C3835B: FLdPr Me
  loc_C3835E: MemLdRfVar from_stack_1.global_52
  loc_C38361: NewIfNullPr clscaja
  loc_C38364: from_stack_1 = clscaja.EOF
  loc_C38369: FLdI2 var_1C2
  loc_C3836C: NotI4
  loc_C3836D: BranchF loc_C384EC
  loc_C38370: FLdRfVar var_15C
  loc_C38373: LitVarStr var_118, "DebeCamb"
  loc_C38378: PopAdLdVar
  loc_C38379: FLdRfVar var_E8
  loc_C3837C: FLdRfVar var_A4
  loc_C3837F: FLdPr Me
  loc_C38382: MemLdRfVar from_stack_1.global_52
  loc_C38385: NewIfNullPr clscaja
  loc_C38388: from_stack_1v = clscaja.RsFrmGet()
  loc_C3838D: FLdPr var_A4
  loc_C38390:  = Me.Fields
  loc_C38395: FLdPr var_E8
  loc_C38398: from_stack_2 = Me.Item(from_stack_1)
  loc_C3839D: LitI4 2
  loc_C383A2: FLdRfVar var_90
  loc_C383A5: CVarRef
  loc_C383AA: FLdRfVar var_B4
  loc_C383AD: ImpAdCallFPR4  = Round(, )
  loc_C383B2: FLdRfVar var_B4
  loc_C383B5: LitI4 2
  loc_C383BA: FLdZeroAd var_15C
  loc_C383BD: CVarAd
  loc_C383C1: FLdRfVar var_E4
  loc_C383C4: ImpAdCallFPR4  = Round(, )
  loc_C383C9: FLdRfVar var_E4
  loc_C383CC: AddVar var_F8
  loc_C383D0: CR4Var
  loc_C383D1: FStFPR8 var_90
  loc_C383D4: FFreeAd var_A4 = ""
  loc_C383DB: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C383E6: FLdRfVar var_B4
  loc_C383E9: FLdRfVar var_15C
  loc_C383EC: LitVarStr var_D4, "CodiCuco"
  loc_C383F1: PopAdLdVar
  loc_C383F2: FLdRfVar var_E8
  loc_C383F5: FLdRfVar var_A4
  loc_C383F8: FLdPr Me
  loc_C383FB: MemLdRfVar from_stack_1.global_52
  loc_C383FE: NewIfNullPr clscaja
  loc_C38401: from_stack_1v = clscaja.RsFrmGet()
  loc_C38406: FLdPr var_A4
  loc_C38409:  = Me.Fields
  loc_C3840E: FLdPr var_E8
  loc_C38411: from_stack_2 = Me.Item(from_stack_1)
  loc_C38416: FLdPr var_15C
  loc_C38419:  = Me.Value
  loc_C3841E: FLdRfVar var_C4
  loc_C38421: FLdRfVar var_1CC
  loc_C38424: LitVarStr var_118, "DebeCamb"
  loc_C38429: PopAdLdVar
  loc_C3842A: FLdRfVar var_1C8
  loc_C3842D: FLdRfVar var_1B0
  loc_C38430: FLdPr Me
  loc_C38433: MemLdRfVar from_stack_1.global_52
  loc_C38436: NewIfNullPr clscaja
  loc_C38439: from_stack_1v = clscaja.RsFrmGet()
  loc_C3843E: FLdPr var_1B0
  loc_C38441:  = Me.Fields
  loc_C38446: FLdPr var_1C8
  loc_C38449: from_stack_2 = Me.Item(from_stack_1)
  loc_C3844E: FLdPr var_1CC
  loc_C38451:  = Me.Value
  loc_C38456: LitI2_Byte 0
  loc_C38458: CR8I2
  loc_C38459: PopFPR8
  loc_C3845A: FLdRfVar var_C4
  loc_C3845D: CR4Var
  loc_C3845E: PopFPR8
  loc_C3845F: FLdRfVar var_B4
  loc_C38462: CStrVarTmp
  loc_C38463: FStStrNoPop var_98
  loc_C38466: FLdI2 var_92
  loc_C38469: ImpAdLdI2 MemVar_C3D064
  loc_C3846C: FLdPr Me
  loc_C3846F: MemLdRfVar from_stack_1.global_60
  loc_C38472: NewIfNullPr clsasiento
  loc_C38475: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3847A: FFree1Str var_98
  loc_C3847D: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3848C: FFreeVar var_B4 = ""
  loc_C38493: FLdRfVar var_1D0
  loc_C38496: FLdPr Me
  loc_C38499: MemLdRfVar from_stack_1.global_52
  loc_C3849C: NewIfNullPr clscaja
  loc_C3849F: from_stack_1 = clscaja.RecordCount
  loc_C384A4: FLdRfVar var_138
  loc_C384A7: FLdPr Me
  loc_C384AA: MemLdRfVar from_stack_1.global_52
  loc_C384AD: NewIfNullPr clscaja
  loc_C384B0: from_stack_1 = clscaja.AbsolutePosition
  loc_C384B5: ILdRf var_138
  loc_C384B8: CR8I4
  loc_C384B9: ILdRf var_1D0
  loc_C384BC: CR8I4
  loc_C384BD: DivR8
  loc_C384BE: LitI2_Byte &H64
  loc_C384C0: CR8I2
  loc_C384C1: MulR8
  loc_C384C2: CVarR4
  loc_C384C6: PopAdLdVar
  loc_C384C7: FLdPr Me
  loc_C384CA: VCallAd Control_ID_ProgressBar
  loc_C384CD: FStAdFunc var_A4
  loc_C384D0: FLdPr var_A4
  loc_C384D3: LateIdSt
  loc_C384D8: FFree1Ad var_A4
  loc_C384DB: FLdPr Me
  loc_C384DE: MemLdRfVar from_stack_1.global_52
  loc_C384E1: NewIfNullPr clscaja
  loc_C384E4: Call clscaja.MoveSiguiente()
  loc_C384E9: Branch loc_C38358
  loc_C384EC: FLdRfVar var_B4
  loc_C384EF: FLdRfVar var_15C
  loc_C384F2: LitVarStr var_D4, "CajaPaco"
  loc_C384F7: PopAdLdVar
  loc_C384F8: FLdRfVar var_E8
  loc_C384FB: FLdRfVar var_A4
  loc_C384FE: FLdPr Me
  loc_C38501: MemLdRfVar from_stack_1.global_56
  loc_C38504: NewIfNullPr clsparaconta
  loc_C38507: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3850C: FLdPr var_A4
  loc_C3850F:  = Me.Fields
  loc_C38514: FLdPr var_E8
  loc_C38517: from_stack_2 = Me.Item(from_stack_1)
  loc_C3851C: FLdPr var_15C
  loc_C3851F:  = Me.Value
  loc_C38524: FLdR8 var_90
  loc_C38527: LitI2_Byte 0
  loc_C38529: CR8I2
  loc_C3852A: PopFPR8
  loc_C3852B: FLdRfVar var_B4
  loc_C3852E: CStrVarTmp
  loc_C3852F: FStStrNoPop var_98
  loc_C38532: FLdI2 var_92
  loc_C38535: ImpAdLdI2 MemVar_C3D064
  loc_C38538: FLdPr Me
  loc_C3853B: MemLdRfVar from_stack_1.global_60
  loc_C3853E: NewIfNullPr clsasiento
  loc_C38541: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C38546: FFree1Str var_98
  loc_C38549: FFreeAd var_A4 = "": var_E8 = ""
  loc_C38552: FFree1Var var_B4 = ""
  loc_C38555: LitVarStr var_D4, "Asiento Automático de Créditos Bancarios"
  loc_C3855A: PopAdLdVar
  loc_C3855B: FLdPr Me
  loc_C3855E: VCallAd Control_ID_StatusBar
  loc_C38561: FStAdFunc var_A4
  loc_C38564: FLdPr var_A4
  loc_C38567: LateIdSt
  loc_C3856C: FFree1Ad var_A4
  loc_C3856F: LitStr "SELECT CodiCuco, Sum(HabeCamb) HabeCamb"
  loc_C38572: LitStr " FROM cajamovibanco"
  loc_C38575: ConcatStr
  loc_C38576: FStStrNoPop var_98
  loc_C38579: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3857C: ConcatStr
  loc_C3857D: FStStrNoPop var_9C
  loc_C38580: LitStr " AND HabeCamb > 0"
  loc_C38583: ConcatStr
  loc_C38584: FStStrNoPop var_A0
  loc_C38587: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco "
  loc_C3858A: ConcatStr
  loc_C3858B: FStStrNoPop var_12C
  loc_C3858E: FLdPr Me
  loc_C38591: MemLdRfVar from_stack_1.global_52
  loc_C38594: NewIfNullPr clscaja
  loc_C38597: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3859C: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C385A7: FLdRfVar var_138
  loc_C385AA: FLdPr Me
  loc_C385AD: MemLdRfVar from_stack_1.global_52
  loc_C385B0: NewIfNullPr clscaja
  loc_C385B3: from_stack_1 = clscaja.RecordCount
  loc_C385B8: ILdRf var_138
  loc_C385BB: LitI4 0
  loc_C385C0: GtI4
  loc_C385C1: BranchF loc_C38873
  loc_C385C4: FLdPr Me
  loc_C385C7: VCallAd Control_ID_FechCajaHastaMsk
  loc_C385CA: FStAdFunc var_A4
  loc_C385CD: FLdPr var_A4
  loc_C385D0: LateIdLdVar var_B4 DispID_15 0
  loc_C385D7: PopAd
  loc_C385D9: FLdPr Me
  loc_C385DC: VCallAd Control_ID_StatusBar
  loc_C385DF: FStAdFunc var_E8
  loc_C385E2: FLdPr var_E8
  loc_C385E5: LateIdLdVar var_C4 DispID_1 0
  loc_C385EC: PopAd
  loc_C385EE: FLdRfVar var_1C2
  loc_C385F1: LitI4 0
  loc_C385F6: LitI4 0
  loc_C385FB: FLdRfVar var_C4
  loc_C385FE: CStrVarTmp
  loc_C385FF: FStStrNoPop var_9C
  loc_C38602: LitI2_Byte &HD
  loc_C38604: FLdRfVar var_B4
  loc_C38607: CStrVarTmp
  loc_C38608: FStStrNoPop var_98
  loc_C3860B: ImpAdLdI2 MemVar_C3D064
  loc_C3860E: FLdPr Me
  loc_C38611: MemLdRfVar from_stack_1.global_60
  loc_C38614: NewIfNullPr clsasiento
  loc_C38617: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3861C: FLdI2 var_1C2
  loc_C3861F: FStI2 var_92
  loc_C38622: FFreeStr var_98 = ""
  loc_C38629: FFreeAd var_A4 = ""
  loc_C38630: FFreeVar var_B4 = ""
  loc_C38637: FLdPr Me
  loc_C3863A: MemLdI2 global_68
  loc_C3863D: LitI2_Byte 0
  loc_C3863F: EqI2
  loc_C38640: BranchF loc_C3864C
  loc_C38643: FLdI2 var_92
  loc_C38646: FLdPr Me
  loc_C38649: MemStI2 global_68
  loc_C3864C: FLdPr Me
  loc_C3864F: MemLdI2 global_70
  loc_C38652: FLdI2 var_92
  loc_C38655: LtI2
  loc_C38656: BranchF loc_C38662
  loc_C38659: FLdI2 var_92
  loc_C3865C: FLdPr Me
  loc_C3865F: MemStI2 global_70
  loc_C38662: FLdPr Me
  loc_C38665: MemLdRfVar from_stack_1.global_52
  loc_C38668: NewIfNullPr clscaja
  loc_C3866B: Call clscaja.MoveFirst()
  loc_C38670: LitI2_Byte 0
  loc_C38672: CR8I2
  loc_C38673: FStFPR8 var_90
  loc_C38676: FLdRfVar var_1C2
  loc_C38679: FLdPr Me
  loc_C3867C: MemLdRfVar from_stack_1.global_52
  loc_C3867F: NewIfNullPr clscaja
  loc_C38682: from_stack_1 = clscaja.EOF
  loc_C38687: FLdI2 var_1C2
  loc_C3868A: NotI4
  loc_C3868B: BranchF loc_C3880A
  loc_C3868E: FLdRfVar var_15C
  loc_C38691: LitVarStr var_118, "HabeCamb"
  loc_C38696: PopAdLdVar
  loc_C38697: FLdRfVar var_E8
  loc_C3869A: FLdRfVar var_A4
  loc_C3869D: FLdPr Me
  loc_C386A0: MemLdRfVar from_stack_1.global_52
  loc_C386A3: NewIfNullPr clscaja
  loc_C386A6: from_stack_1v = clscaja.RsFrmGet()
  loc_C386AB: FLdPr var_A4
  loc_C386AE:  = Me.Fields
  loc_C386B3: FLdPr var_E8
  loc_C386B6: from_stack_2 = Me.Item(from_stack_1)
  loc_C386BB: LitI4 2
  loc_C386C0: FLdRfVar var_90
  loc_C386C3: CVarRef
  loc_C386C8: FLdRfVar var_B4
  loc_C386CB: ImpAdCallFPR4  = Round(, )
  loc_C386D0: FLdRfVar var_B4
  loc_C386D3: LitI4 2
  loc_C386D8: FLdZeroAd var_15C
  loc_C386DB: CVarAd
  loc_C386DF: FLdRfVar var_E4
  loc_C386E2: ImpAdCallFPR4  = Round(, )
  loc_C386E7: FLdRfVar var_E4
  loc_C386EA: AddVar var_F8
  loc_C386EE: CR4Var
  loc_C386EF: FStFPR8 var_90
  loc_C386F2: FFreeAd var_A4 = ""
  loc_C386F9: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C38704: FLdRfVar var_B4
  loc_C38707: FLdRfVar var_15C
  loc_C3870A: LitVarStr var_D4, "CodiCuco"
  loc_C3870F: PopAdLdVar
  loc_C38710: FLdRfVar var_E8
  loc_C38713: FLdRfVar var_A4
  loc_C38716: FLdPr Me
  loc_C38719: MemLdRfVar from_stack_1.global_52
  loc_C3871C: NewIfNullPr clscaja
  loc_C3871F: from_stack_1v = clscaja.RsFrmGet()
  loc_C38724: FLdPr var_A4
  loc_C38727:  = Me.Fields
  loc_C3872C: FLdPr var_E8
  loc_C3872F: from_stack_2 = Me.Item(from_stack_1)
  loc_C38734: FLdPr var_15C
  loc_C38737:  = Me.Value
  loc_C3873C: FLdRfVar var_C4
  loc_C3873F: FLdRfVar var_1CC
  loc_C38742: LitVarStr var_118, "HabeCamb"
  loc_C38747: PopAdLdVar
  loc_C38748: FLdRfVar var_1C8
  loc_C3874B: FLdRfVar var_1B0
  loc_C3874E: FLdPr Me
  loc_C38751: MemLdRfVar from_stack_1.global_52
  loc_C38754: NewIfNullPr clscaja
  loc_C38757: from_stack_1v = clscaja.RsFrmGet()
  loc_C3875C: FLdPr var_1B0
  loc_C3875F:  = Me.Fields
  loc_C38764: FLdPr var_1C8
  loc_C38767: from_stack_2 = Me.Item(from_stack_1)
  loc_C3876C: FLdPr var_1CC
  loc_C3876F:  = Me.Value
  loc_C38774: FLdRfVar var_C4
  loc_C38777: CR4Var
  loc_C38778: PopFPR8
  loc_C38779: LitI2_Byte 0
  loc_C3877B: CR8I2
  loc_C3877C: PopFPR8
  loc_C3877D: FLdRfVar var_B4
  loc_C38780: CStrVarTmp
  loc_C38781: FStStrNoPop var_98
  loc_C38784: FLdI2 var_92
  loc_C38787: ImpAdLdI2 MemVar_C3D064
  loc_C3878A: FLdPr Me
  loc_C3878D: MemLdRfVar from_stack_1.global_60
  loc_C38790: NewIfNullPr clsasiento
  loc_C38793: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C38798: FFree1Str var_98
  loc_C3879B: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C387AA: FFreeVar var_B4 = ""
  loc_C387B1: FLdRfVar var_1D0
  loc_C387B4: FLdPr Me
  loc_C387B7: MemLdRfVar from_stack_1.global_52
  loc_C387BA: NewIfNullPr clscaja
  loc_C387BD: from_stack_1 = clscaja.RecordCount
  loc_C387C2: FLdRfVar var_138
  loc_C387C5: FLdPr Me
  loc_C387C8: MemLdRfVar from_stack_1.global_52
  loc_C387CB: NewIfNullPr clscaja
  loc_C387CE: from_stack_1 = clscaja.AbsolutePosition
  loc_C387D3: ILdRf var_138
  loc_C387D6: CR8I4
  loc_C387D7: ILdRf var_1D0
  loc_C387DA: CR8I4
  loc_C387DB: DivR8
  loc_C387DC: LitI2_Byte &H64
  loc_C387DE: CR8I2
  loc_C387DF: MulR8
  loc_C387E0: CVarR4
  loc_C387E4: PopAdLdVar
  loc_C387E5: FLdPr Me
  loc_C387E8: VCallAd Control_ID_ProgressBar
  loc_C387EB: FStAdFunc var_A4
  loc_C387EE: FLdPr var_A4
  loc_C387F1: LateIdSt
  loc_C387F6: FFree1Ad var_A4
  loc_C387F9: FLdPr Me
  loc_C387FC: MemLdRfVar from_stack_1.global_52
  loc_C387FF: NewIfNullPr clscaja
  loc_C38802: Call clscaja.MoveSiguiente()
  loc_C38807: Branch loc_C38676
  loc_C3880A: FLdRfVar var_B4
  loc_C3880D: FLdRfVar var_15C
  loc_C38810: LitVarStr var_D4, "CajaPaco"
  loc_C38815: PopAdLdVar
  loc_C38816: FLdRfVar var_E8
  loc_C38819: FLdRfVar var_A4
  loc_C3881C: FLdPr Me
  loc_C3881F: MemLdRfVar from_stack_1.global_56
  loc_C38822: NewIfNullPr clsparaconta
  loc_C38825: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3882A: FLdPr var_A4
  loc_C3882D:  = Me.Fields
  loc_C38832: FLdPr var_E8
  loc_C38835: from_stack_2 = Me.Item(from_stack_1)
  loc_C3883A: FLdPr var_15C
  loc_C3883D:  = Me.Value
  loc_C38842: LitI2_Byte 0
  loc_C38844: CR8I2
  loc_C38845: PopFPR8
  loc_C38846: FLdR8 var_90
  loc_C38849: FLdRfVar var_B4
  loc_C3884C: CStrVarTmp
  loc_C3884D: FStStrNoPop var_98
  loc_C38850: FLdI2 var_92
  loc_C38853: ImpAdLdI2 MemVar_C3D064
  loc_C38856: FLdPr Me
  loc_C38859: MemLdRfVar from_stack_1.global_60
  loc_C3885C: NewIfNullPr clsasiento
  loc_C3885F: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C38864: FFree1Str var_98
  loc_C38867: FFreeAd var_A4 = "": var_E8 = ""
  loc_C38870: FFree1Var var_B4 = ""
  loc_C38873: Branch loc_C38CAA
  loc_C38876: LitVarStr var_D4, "Asiento Automático de Movimientos Bancarios"
  loc_C3887B: PopAdLdVar
  loc_C3887C: FLdPr Me
  loc_C3887F: VCallAd Control_ID_StatusBar
  loc_C38882: FStAdFunc var_A4
  loc_C38885: FLdPr var_A4
  loc_C38888: LateIdSt
  loc_C3888D: FFree1Ad var_A4
  loc_C38890: LitStr "SELECT CodiCuco, Sum(DebeCamb) DebeCamb, Sum(HabeCamb) HabeCamb"
  loc_C38893: LitStr " FROM cajamovibanco"
  loc_C38896: ConcatStr
  loc_C38897: FStStrNoPop var_98
  loc_C3889A: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3889D: ConcatStr
  loc_C3889E: FStStrNoPop var_9C
  loc_C388A1: LitStr " GROUP BY CodiCuco, DebeCamb>0"
  loc_C388A4: ConcatStr
  loc_C388A5: FStStrNoPop var_A0
  loc_C388A8: LitStr " ORDER BY CodiCuco "
  loc_C388AB: ConcatStr
  loc_C388AC: FStStrNoPop var_12C
  loc_C388AF: FLdPr Me
  loc_C388B2: MemLdRfVar from_stack_1.global_52
  loc_C388B5: NewIfNullPr clscaja
  loc_C388B8: Call clscaja.RedefineRS(from_stack_1v)
  loc_C388BD: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C388C8: FLdRfVar var_138
  loc_C388CB: FLdPr Me
  loc_C388CE: MemLdRfVar from_stack_1.global_52
  loc_C388D1: NewIfNullPr clscaja
  loc_C388D4: from_stack_1 = clscaja.RecordCount
  loc_C388D9: ILdRf var_138
  loc_C388DC: LitI4 0
  loc_C388E1: GtI4
  loc_C388E2: BranchF loc_C38CAA
  loc_C388E5: FLdPr Me
  loc_C388E8: VCallAd Control_ID_FechCajaHastaMsk
  loc_C388EB: FStAdFunc var_A4
  loc_C388EE: FLdPr var_A4
  loc_C388F1: LateIdLdVar var_B4 DispID_15 0
  loc_C388F8: PopAd
  loc_C388FA: FLdPr Me
  loc_C388FD: VCallAd Control_ID_StatusBar
  loc_C38900: FStAdFunc var_E8
  loc_C38903: FLdPr var_E8
  loc_C38906: LateIdLdVar var_C4 DispID_1 0
  loc_C3890D: PopAd
  loc_C3890F: FLdRfVar var_1C2
  loc_C38912: LitI4 0
  loc_C38917: LitI4 0
  loc_C3891C: FLdRfVar var_C4
  loc_C3891F: CStrVarTmp
  loc_C38920: FStStrNoPop var_9C
  loc_C38923: LitI2_Byte &HD
  loc_C38925: FLdRfVar var_B4
  loc_C38928: CStrVarTmp
  loc_C38929: FStStrNoPop var_98
  loc_C3892C: ImpAdLdI2 MemVar_C3D064
  loc_C3892F: FLdPr Me
  loc_C38932: MemLdRfVar from_stack_1.global_60
  loc_C38935: NewIfNullPr clsasiento
  loc_C38938: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3893D: FLdI2 var_1C2
  loc_C38940: FStI2 var_92
  loc_C38943: FFreeStr var_98 = ""
  loc_C3894A: FFreeAd var_A4 = ""
  loc_C38951: FFreeVar var_B4 = ""
  loc_C38958: FLdPr Me
  loc_C3895B: MemLdI2 global_68
  loc_C3895E: LitI2_Byte 0
  loc_C38960: EqI2
  loc_C38961: BranchF loc_C3896D
  loc_C38964: FLdI2 var_92
  loc_C38967: FLdPr Me
  loc_C3896A: MemStI2 global_68
  loc_C3896D: FLdPr Me
  loc_C38970: MemLdI2 global_70
  loc_C38973: FLdI2 var_92
  loc_C38976: LtI2
  loc_C38977: BranchF loc_C38983
  loc_C3897A: FLdI2 var_92
  loc_C3897D: FLdPr Me
  loc_C38980: MemStI2 global_70
  loc_C38983: FLdPr Me
  loc_C38986: MemLdRfVar from_stack_1.global_52
  loc_C38989: NewIfNullPr clscaja
  loc_C3898C: Call clscaja.MoveFirst()
  loc_C38991: LitI2_Byte 0
  loc_C38993: CR8I2
  loc_C38994: FStFPR8 var_90
  loc_C38997: FLdRfVar var_1C2
  loc_C3899A: FLdPr Me
  loc_C3899D: MemLdRfVar from_stack_1.global_52
  loc_C389A0: NewIfNullPr clscaja
  loc_C389A3: from_stack_1 = clscaja.EOF
  loc_C389A8: FLdI2 var_1C2
  loc_C389AB: NotI4
  loc_C389AC: BranchF loc_C38BBC
  loc_C389AF: FLdRfVar var_15C
  loc_C389B2: LitVarStr var_118, "DebeCamb"
  loc_C389B7: PopAdLdVar
  loc_C389B8: FLdRfVar var_E8
  loc_C389BB: FLdRfVar var_A4
  loc_C389BE: FLdPr Me
  loc_C389C1: MemLdRfVar from_stack_1.global_52
  loc_C389C4: NewIfNullPr clscaja
  loc_C389C7: from_stack_1v = clscaja.RsFrmGet()
  loc_C389CC: FLdPr var_A4
  loc_C389CF:  = Me.Fields
  loc_C389D4: FLdPr var_E8
  loc_C389D7: from_stack_2 = Me.Item(from_stack_1)
  loc_C389DC: FLdRfVar var_1CC
  loc_C389DF: LitVarStr var_148, "HabeCamb"
  loc_C389E4: PopAdLdVar
  loc_C389E5: FLdRfVar var_1C8
  loc_C389E8: FLdRfVar var_1B0
  loc_C389EB: FLdPr Me
  loc_C389EE: MemLdRfVar from_stack_1.global_52
  loc_C389F1: NewIfNullPr clscaja
  loc_C389F4: from_stack_1v = clscaja.RsFrmGet()
  loc_C389F9: FLdPr var_1B0
  loc_C389FC:  = Me.Fields
  loc_C38A01: FLdPr var_1C8
  loc_C38A04: from_stack_2 = Me.Item(from_stack_1)
  loc_C38A09: LitI4 2
  loc_C38A0E: FLdRfVar var_90
  loc_C38A11: CVarRef
  loc_C38A16: FLdRfVar var_B4
  loc_C38A19: ImpAdCallFPR4  = Round(, )
  loc_C38A1E: FLdRfVar var_B4
  loc_C38A21: LitI4 2
  loc_C38A26: FLdZeroAd var_15C
  loc_C38A29: CVarAd
  loc_C38A2D: FLdRfVar var_E4
  loc_C38A30: ImpAdCallFPR4  = Round(, )
  loc_C38A35: FLdRfVar var_E4
  loc_C38A38: AddVar var_F8
  loc_C38A3C: LitI4 2
  loc_C38A41: FLdZeroAd var_1CC
  loc_C38A44: CVarAd
  loc_C38A48: FLdRfVar var_128
  loc_C38A4B: ImpAdCallFPR4  = Round(, )
  loc_C38A50: FLdRfVar var_128
  loc_C38A53: SubVar var_158
  loc_C38A57: CR4Var
  loc_C38A58: FStFPR8 var_90
  loc_C38A5B: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = ""
  loc_C38A66: FFreeVar var_C4 = "": var_B4 = "": var_E4 = "": var_108 = "": var_F8 = ""
  loc_C38A75: FLdRfVar var_B4
  loc_C38A78: FLdRfVar var_15C
  loc_C38A7B: LitVarStr var_D4, "CodiCuco"
  loc_C38A80: PopAdLdVar
  loc_C38A81: FLdRfVar var_E8
  loc_C38A84: FLdRfVar var_A4
  loc_C38A87: FLdPr Me
  loc_C38A8A: MemLdRfVar from_stack_1.global_52
  loc_C38A8D: NewIfNullPr clscaja
  loc_C38A90: from_stack_1v = clscaja.RsFrmGet()
  loc_C38A95: FLdPr var_A4
  loc_C38A98:  = Me.Fields
  loc_C38A9D: FLdPr var_E8
  loc_C38AA0: from_stack_2 = Me.Item(from_stack_1)
  loc_C38AA5: FLdPr var_15C
  loc_C38AA8:  = Me.Value
  loc_C38AAD: FLdRfVar var_C4
  loc_C38AB0: FLdRfVar var_1CC
  loc_C38AB3: LitVarStr var_118, "DebeCamb"
  loc_C38AB8: PopAdLdVar
  loc_C38AB9: FLdRfVar var_1C8
  loc_C38ABC: FLdRfVar var_1B0
  loc_C38ABF: FLdPr Me
  loc_C38AC2: MemLdRfVar from_stack_1.global_52
  loc_C38AC5: NewIfNullPr clscaja
  loc_C38AC8: from_stack_1v = clscaja.RsFrmGet()
  loc_C38ACD: FLdPr var_1B0
  loc_C38AD0:  = Me.Fields
  loc_C38AD5: FLdPr var_1C8
  loc_C38AD8: from_stack_2 = Me.Item(from_stack_1)
  loc_C38ADD: FLdPr var_1CC
  loc_C38AE0:  = Me.Value
  loc_C38AE5: FLdRfVar var_E4
  loc_C38AE8: FLdRfVar var_1E4
  loc_C38AEB: LitVarStr var_148, "HabeCamb"
  loc_C38AF0: PopAdLdVar
  loc_C38AF1: FLdRfVar var_1E0
  loc_C38AF4: FLdRfVar var_1DC
  loc_C38AF7: FLdPr Me
  loc_C38AFA: MemLdRfVar from_stack_1.global_52
  loc_C38AFD: NewIfNullPr clscaja
  loc_C38B00: from_stack_1v = clscaja.RsFrmGet()
  loc_C38B05: FLdPr var_1DC
  loc_C38B08:  = Me.Fields
  loc_C38B0D: FLdPr var_1E0
  loc_C38B10: from_stack_2 = Me.Item(from_stack_1)
  loc_C38B15: FLdPr var_1E4
  loc_C38B18:  = Me.Value
  loc_C38B1D: FLdRfVar var_E4
  loc_C38B20: CR4Var
  loc_C38B21: PopFPR8
  loc_C38B22: FLdRfVar var_C4
  loc_C38B25: CR4Var
  loc_C38B26: PopFPR8
  loc_C38B27: FLdRfVar var_B4
  loc_C38B2A: CStrVarTmp
  loc_C38B2B: FStStrNoPop var_98
  loc_C38B2E: FLdI2 var_92
  loc_C38B31: ImpAdLdI2 MemVar_C3D064
  loc_C38B34: FLdPr Me
  loc_C38B37: MemLdRfVar from_stack_1.global_60
  loc_C38B3A: NewIfNullPr clsasiento
  loc_C38B3D: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C38B42: FFree1Str var_98
  loc_C38B45: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_1DC = "": var_1E0 = "": var_15C = "": var_1CC = ""
  loc_C38B5A: FFreeVar var_B4 = "": var_C4 = ""
  loc_C38B63: FLdRfVar var_1D0
  loc_C38B66: FLdPr Me
  loc_C38B69: MemLdRfVar from_stack_1.global_52
  loc_C38B6C: NewIfNullPr clscaja
  loc_C38B6F: from_stack_1 = clscaja.RecordCount
  loc_C38B74: FLdRfVar var_138
  loc_C38B77: FLdPr Me
  loc_C38B7A: MemLdRfVar from_stack_1.global_52
  loc_C38B7D: NewIfNullPr clscaja
  loc_C38B80: from_stack_1 = clscaja.AbsolutePosition
  loc_C38B85: ILdRf var_138
  loc_C38B88: CR8I4
  loc_C38B89: ILdRf var_1D0
  loc_C38B8C: CR8I4
  loc_C38B8D: DivR8
  loc_C38B8E: LitI2_Byte &H64
  loc_C38B90: CR8I2
  loc_C38B91: MulR8
  loc_C38B92: CVarR4
  loc_C38B96: PopAdLdVar
  loc_C38B97: FLdPr Me
  loc_C38B9A: VCallAd Control_ID_ProgressBar
  loc_C38B9D: FStAdFunc var_A4
  loc_C38BA0: FLdPr var_A4
  loc_C38BA3: LateIdSt
  loc_C38BA8: FFree1Ad var_A4
  loc_C38BAB: FLdPr Me
  loc_C38BAE: MemLdRfVar from_stack_1.global_52
  loc_C38BB1: NewIfNullPr clscaja
  loc_C38BB4: Call clscaja.MoveSiguiente()
  loc_C38BB9: Branch loc_C38997
  loc_C38BBC: FLdFPR8 var_90
  loc_C38BBF: LitI2_Byte 0
  loc_C38BC1: CR8I2
  loc_C38BC2: GtR4
  loc_C38BC3: BranchF loc_C38C32
  loc_C38BC6: FLdRfVar var_B4
  loc_C38BC9: FLdRfVar var_15C
  loc_C38BCC: LitVarStr var_D4, "CajaPaco"
  loc_C38BD1: PopAdLdVar
  loc_C38BD2: FLdRfVar var_E8
  loc_C38BD5: FLdRfVar var_A4
  loc_C38BD8: FLdPr Me
  loc_C38BDB: MemLdRfVar from_stack_1.global_56
  loc_C38BDE: NewIfNullPr clsparaconta
  loc_C38BE1: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C38BE6: FLdPr var_A4
  loc_C38BE9:  = Me.Fields
  loc_C38BEE: FLdPr var_E8
  loc_C38BF1: from_stack_2 = Me.Item(from_stack_1)
  loc_C38BF6: FLdPr var_15C
  loc_C38BF9:  = Me.Value
  loc_C38BFE: FLdR8 var_90
  loc_C38C01: LitI2_Byte 0
  loc_C38C03: CR8I2
  loc_C38C04: PopFPR8
  loc_C38C05: FLdRfVar var_B4
  loc_C38C08: CStrVarTmp
  loc_C38C09: FStStrNoPop var_98
  loc_C38C0C: FLdI2 var_92
  loc_C38C0F: ImpAdLdI2 MemVar_C3D064
  loc_C38C12: FLdPr Me
  loc_C38C15: MemLdRfVar from_stack_1.global_60
  loc_C38C18: NewIfNullPr clsasiento
  loc_C38C1B: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C38C20: FFree1Str var_98
  loc_C38C23: FFreeAd var_A4 = "": var_E8 = ""
  loc_C38C2C: FFree1Var var_B4 = ""
  loc_C38C2F: Branch loc_C38CAA
  loc_C38C32: FLdFPR8 var_90
  loc_C38C35: LitI2_Byte 0
  loc_C38C37: CR8I2
  loc_C38C38: LtR8
  loc_C38C39: BranchF loc_C38CAA
  loc_C38C3C: FLdRfVar var_B4
  loc_C38C3F: FLdRfVar var_15C
  loc_C38C42: LitVarStr var_D4, "CajaPaco"
  loc_C38C47: PopAdLdVar
  loc_C38C48: FLdRfVar var_E8
  loc_C38C4B: FLdRfVar var_A4
  loc_C38C4E: FLdPr Me
  loc_C38C51: MemLdRfVar from_stack_1.global_56
  loc_C38C54: NewIfNullPr clsparaconta
  loc_C38C57: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C38C5C: FLdPr var_A4
  loc_C38C5F:  = Me.Fields
  loc_C38C64: FLdPr var_E8
  loc_C38C67: from_stack_2 = Me.Item(from_stack_1)
  loc_C38C6C: FLdPr var_15C
  loc_C38C6F:  = Me.Value
  loc_C38C74: LitI2_Byte 0
  loc_C38C76: CR8I2
  loc_C38C77: PopFPR8
  loc_C38C78: FLdFPR8 var_90
  loc_C38C7B: LitI2_Byte &HFF
  loc_C38C7D: CR8I2
  loc_C38C7E: MulR8
  loc_C38C7F: PopFPR8
  loc_C38C80: FLdRfVar var_B4
  loc_C38C83: CStrVarTmp
  loc_C38C84: FStStrNoPop var_98
  loc_C38C87: FLdI2 var_92
  loc_C38C8A: ImpAdLdI2 MemVar_C3D064
  loc_C38C8D: FLdPr Me
  loc_C38C90: MemLdRfVar from_stack_1.global_60
  loc_C38C93: NewIfNullPr clsasiento
  loc_C38C96: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C38C9B: FFree1Str var_98
  loc_C38C9E: FFreeAd var_A4 = "": var_E8 = ""
  loc_C38CA7: FFree1Var var_B4 = ""
  loc_C38CAA: LitVarStr var_D4, "Asiento Automático de Altas de Bienes de Uso"
  loc_C38CAF: PopAdLdVar
  loc_C38CB0: FLdPr Me
  loc_C38CB3: VCallAd Control_ID_StatusBar
  loc_C38CB6: FStAdFunc var_A4
  loc_C38CB9: FLdPr var_A4
  loc_C38CBC: LateIdSt
  loc_C38CC1: FFree1Ad var_A4
  loc_C38CC4: LitStr "SELECT CodiCuco, Sum(DebeCaja) DebeCaja"
  loc_C38CC7: LitStr " FROM cajaaltapatr"
  loc_C38CCA: ConcatStr
  loc_C38CCB: FStStrNoPop var_98
  loc_C38CCE: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C38CD1: ConcatStr
  loc_C38CD2: FStStrNoPop var_9C
  loc_C38CD5: LitStr " AND DebeCaja > 0"
  loc_C38CD8: ConcatStr
  loc_C38CD9: FStStrNoPop var_A0
  loc_C38CDC: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco "
  loc_C38CDF: ConcatStr
  loc_C38CE0: FStStrNoPop var_12C
  loc_C38CE3: FLdPr Me
  loc_C38CE6: MemLdRfVar from_stack_1.global_52
  loc_C38CE9: NewIfNullPr clscaja
  loc_C38CEC: Call clscaja.RedefineRS(from_stack_1v)
  loc_C38CF1: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C38CFC: FLdRfVar var_138
  loc_C38CFF: FLdPr Me
  loc_C38D02: MemLdRfVar from_stack_1.global_52
  loc_C38D05: NewIfNullPr clscaja
  loc_C38D08: from_stack_1 = clscaja.RecordCount
  loc_C38D0D: ILdRf var_138
  loc_C38D10: LitI4 0
  loc_C38D15: GtI4
  loc_C38D16: BranchF loc_C38FC8
  loc_C38D19: FLdPr Me
  loc_C38D1C: VCallAd Control_ID_FechCajaHastaMsk
  loc_C38D1F: FStAdFunc var_A4
  loc_C38D22: FLdPr var_A4
  loc_C38D25: LateIdLdVar var_B4 DispID_15 0
  loc_C38D2C: PopAd
  loc_C38D2E: FLdPr Me
  loc_C38D31: VCallAd Control_ID_StatusBar
  loc_C38D34: FStAdFunc var_E8
  loc_C38D37: FLdPr var_E8
  loc_C38D3A: LateIdLdVar var_C4 DispID_1 0
  loc_C38D41: PopAd
  loc_C38D43: FLdRfVar var_1C2
  loc_C38D46: LitI4 0
  loc_C38D4B: LitI4 0
  loc_C38D50: FLdRfVar var_C4
  loc_C38D53: CStrVarTmp
  loc_C38D54: FStStrNoPop var_9C
  loc_C38D57: LitI2_Byte &H13
  loc_C38D59: FLdRfVar var_B4
  loc_C38D5C: CStrVarTmp
  loc_C38D5D: FStStrNoPop var_98
  loc_C38D60: ImpAdLdI2 MemVar_C3D064
  loc_C38D63: FLdPr Me
  loc_C38D66: MemLdRfVar from_stack_1.global_60
  loc_C38D69: NewIfNullPr clsasiento
  loc_C38D6C: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C38D71: FLdI2 var_1C2
  loc_C38D74: FStI2 var_92
  loc_C38D77: FFreeStr var_98 = ""
  loc_C38D7E: FFreeAd var_A4 = ""
  loc_C38D85: FFreeVar var_B4 = ""
  loc_C38D8C: FLdPr Me
  loc_C38D8F: MemLdI2 global_68
  loc_C38D92: LitI2_Byte 0
  loc_C38D94: EqI2
  loc_C38D95: BranchF loc_C38DA1
  loc_C38D98: FLdI2 var_92
  loc_C38D9B: FLdPr Me
  loc_C38D9E: MemStI2 global_68
  loc_C38DA1: FLdPr Me
  loc_C38DA4: MemLdI2 global_70
  loc_C38DA7: FLdI2 var_92
  loc_C38DAA: LtI2
  loc_C38DAB: BranchF loc_C38DB7
  loc_C38DAE: FLdI2 var_92
  loc_C38DB1: FLdPr Me
  loc_C38DB4: MemStI2 global_70
  loc_C38DB7: FLdPr Me
  loc_C38DBA: MemLdRfVar from_stack_1.global_52
  loc_C38DBD: NewIfNullPr clscaja
  loc_C38DC0: Call clscaja.MoveFirst()
  loc_C38DC5: LitI2_Byte 0
  loc_C38DC7: CR8I2
  loc_C38DC8: FStFPR8 var_90
  loc_C38DCB: FLdRfVar var_1C2
  loc_C38DCE: FLdPr Me
  loc_C38DD1: MemLdRfVar from_stack_1.global_52
  loc_C38DD4: NewIfNullPr clscaja
  loc_C38DD7: from_stack_1 = clscaja.EOF
  loc_C38DDC: FLdI2 var_1C2
  loc_C38DDF: NotI4
  loc_C38DE0: BranchF loc_C38F5F
  loc_C38DE3: FLdRfVar var_15C
  loc_C38DE6: LitVarStr var_118, "DebeCaja"
  loc_C38DEB: PopAdLdVar
  loc_C38DEC: FLdRfVar var_E8
  loc_C38DEF: FLdRfVar var_A4
  loc_C38DF2: FLdPr Me
  loc_C38DF5: MemLdRfVar from_stack_1.global_52
  loc_C38DF8: NewIfNullPr clscaja
  loc_C38DFB: from_stack_1v = clscaja.RsFrmGet()
  loc_C38E00: FLdPr var_A4
  loc_C38E03:  = Me.Fields
  loc_C38E08: FLdPr var_E8
  loc_C38E0B: from_stack_2 = Me.Item(from_stack_1)
  loc_C38E10: LitI4 2
  loc_C38E15: FLdRfVar var_90
  loc_C38E18: CVarRef
  loc_C38E1D: FLdRfVar var_B4
  loc_C38E20: ImpAdCallFPR4  = Round(, )
  loc_C38E25: FLdRfVar var_B4
  loc_C38E28: LitI4 2
  loc_C38E2D: FLdZeroAd var_15C
  loc_C38E30: CVarAd
  loc_C38E34: FLdRfVar var_E4
  loc_C38E37: ImpAdCallFPR4  = Round(, )
  loc_C38E3C: FLdRfVar var_E4
  loc_C38E3F: AddVar var_F8
  loc_C38E43: CR4Var
  loc_C38E44: FStFPR8 var_90
  loc_C38E47: FFreeAd var_A4 = ""
  loc_C38E4E: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C38E59: FLdRfVar var_B4
  loc_C38E5C: FLdRfVar var_15C
  loc_C38E5F: LitVarStr var_D4, "CodiCuco"
  loc_C38E64: PopAdLdVar
  loc_C38E65: FLdRfVar var_E8
  loc_C38E68: FLdRfVar var_A4
  loc_C38E6B: FLdPr Me
  loc_C38E6E: MemLdRfVar from_stack_1.global_52
  loc_C38E71: NewIfNullPr clscaja
  loc_C38E74: from_stack_1v = clscaja.RsFrmGet()
  loc_C38E79: FLdPr var_A4
  loc_C38E7C:  = Me.Fields
  loc_C38E81: FLdPr var_E8
  loc_C38E84: from_stack_2 = Me.Item(from_stack_1)
  loc_C38E89: FLdPr var_15C
  loc_C38E8C:  = Me.Value
  loc_C38E91: FLdRfVar var_C4
  loc_C38E94: FLdRfVar var_1CC
  loc_C38E97: LitVarStr var_118, "DebeCaja"
  loc_C38E9C: PopAdLdVar
  loc_C38E9D: FLdRfVar var_1C8
  loc_C38EA0: FLdRfVar var_1B0
  loc_C38EA3: FLdPr Me
  loc_C38EA6: MemLdRfVar from_stack_1.global_52
  loc_C38EA9: NewIfNullPr clscaja
  loc_C38EAC: from_stack_1v = clscaja.RsFrmGet()
  loc_C38EB1: FLdPr var_1B0
  loc_C38EB4:  = Me.Fields
  loc_C38EB9: FLdPr var_1C8
  loc_C38EBC: from_stack_2 = Me.Item(from_stack_1)
  loc_C38EC1: FLdPr var_1CC
  loc_C38EC4:  = Me.Value
  loc_C38EC9: LitI2_Byte 0
  loc_C38ECB: CR8I2
  loc_C38ECC: PopFPR8
  loc_C38ECD: FLdRfVar var_C4
  loc_C38ED0: CR4Var
  loc_C38ED1: PopFPR8
  loc_C38ED2: FLdRfVar var_B4
  loc_C38ED5: CStrVarTmp
  loc_C38ED6: FStStrNoPop var_98
  loc_C38ED9: FLdI2 var_92
  loc_C38EDC: ImpAdLdI2 MemVar_C3D064
  loc_C38EDF: FLdPr Me
  loc_C38EE2: MemLdRfVar from_stack_1.global_60
  loc_C38EE5: NewIfNullPr clsasiento
  loc_C38EE8: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C38EED: FFree1Str var_98
  loc_C38EF0: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C38EFF: FFreeVar var_B4 = ""
  loc_C38F06: FLdRfVar var_1D0
  loc_C38F09: FLdPr Me
  loc_C38F0C: MemLdRfVar from_stack_1.global_52
  loc_C38F0F: NewIfNullPr clscaja
  loc_C38F12: from_stack_1 = clscaja.RecordCount
  loc_C38F17: FLdRfVar var_138
  loc_C38F1A: FLdPr Me
  loc_C38F1D: MemLdRfVar from_stack_1.global_52
  loc_C38F20: NewIfNullPr clscaja
  loc_C38F23: from_stack_1 = clscaja.AbsolutePosition
  loc_C38F28: ILdRf var_138
  loc_C38F2B: CR8I4
  loc_C38F2C: ILdRf var_1D0
  loc_C38F2F: CR8I4
  loc_C38F30: DivR8
  loc_C38F31: LitI2_Byte &H64
  loc_C38F33: CR8I2
  loc_C38F34: MulR8
  loc_C38F35: CVarR4
  loc_C38F39: PopAdLdVar
  loc_C38F3A: FLdPr Me
  loc_C38F3D: VCallAd Control_ID_ProgressBar
  loc_C38F40: FStAdFunc var_A4
  loc_C38F43: FLdPr var_A4
  loc_C38F46: LateIdSt
  loc_C38F4B: FFree1Ad var_A4
  loc_C38F4E: FLdPr Me
  loc_C38F51: MemLdRfVar from_stack_1.global_52
  loc_C38F54: NewIfNullPr clscaja
  loc_C38F57: Call clscaja.MoveSiguiente()
  loc_C38F5C: Branch loc_C38DCB
  loc_C38F5F: FLdRfVar var_B4
  loc_C38F62: FLdRfVar var_15C
  loc_C38F65: LitVarStr var_D4, "PatrPaco"
  loc_C38F6A: PopAdLdVar
  loc_C38F6B: FLdRfVar var_E8
  loc_C38F6E: FLdRfVar var_A4
  loc_C38F71: FLdPr Me
  loc_C38F74: MemLdRfVar from_stack_1.global_56
  loc_C38F77: NewIfNullPr clsparaconta
  loc_C38F7A: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C38F7F: FLdPr var_A4
  loc_C38F82:  = Me.Fields
  loc_C38F87: FLdPr var_E8
  loc_C38F8A: from_stack_2 = Me.Item(from_stack_1)
  loc_C38F8F: FLdPr var_15C
  loc_C38F92:  = Me.Value
  loc_C38F97: FLdR8 var_90
  loc_C38F9A: LitI2_Byte 0
  loc_C38F9C: CR8I2
  loc_C38F9D: PopFPR8
  loc_C38F9E: FLdRfVar var_B4
  loc_C38FA1: CStrVarTmp
  loc_C38FA2: FStStrNoPop var_98
  loc_C38FA5: FLdI2 var_92
  loc_C38FA8: ImpAdLdI2 MemVar_C3D064
  loc_C38FAB: FLdPr Me
  loc_C38FAE: MemLdRfVar from_stack_1.global_60
  loc_C38FB1: NewIfNullPr clsasiento
  loc_C38FB4: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C38FB9: FFree1Str var_98
  loc_C38FBC: FFreeAd var_A4 = "": var_E8 = ""
  loc_C38FC5: FFree1Var var_B4 = ""
  loc_C38FC8: LitVarStr var_D4, "Asiento Automático de Bajas y Ajustes de Bienes de Uso"
  loc_C38FCD: PopAdLdVar
  loc_C38FCE: FLdPr Me
  loc_C38FD1: VCallAd Control_ID_StatusBar
  loc_C38FD4: FStAdFunc var_A4
  loc_C38FD7: FLdPr var_A4
  loc_C38FDA: LateIdSt
  loc_C38FDF: FFree1Ad var_A4
  loc_C38FE2: LitStr "SELECT CodiCuco, Sum(HabeCaja) HabeCaja"
  loc_C38FE5: LitStr " FROM cajaaltapatr"
  loc_C38FE8: ConcatStr
  loc_C38FE9: FStStrNoPop var_98
  loc_C38FEC: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C38FEF: ConcatStr
  loc_C38FF0: FStStrNoPop var_9C
  loc_C38FF3: LitStr " AND HabeCaja > 0"
  loc_C38FF6: ConcatStr
  loc_C38FF7: FStStrNoPop var_A0
  loc_C38FFA: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco "
  loc_C38FFD: ConcatStr
  loc_C38FFE: FStStrNoPop var_12C
  loc_C39001: FLdPr Me
  loc_C39004: MemLdRfVar from_stack_1.global_52
  loc_C39007: NewIfNullPr clscaja
  loc_C3900A: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3900F: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C3901A: FLdRfVar var_138
  loc_C3901D: FLdPr Me
  loc_C39020: MemLdRfVar from_stack_1.global_52
  loc_C39023: NewIfNullPr clscaja
  loc_C39026: from_stack_1 = clscaja.RecordCount
  loc_C3902B: ILdRf var_138
  loc_C3902E: LitI4 0
  loc_C39033: GtI4
  loc_C39034: BranchF loc_C392E6
  loc_C39037: FLdPr Me
  loc_C3903A: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3903D: FStAdFunc var_A4
  loc_C39040: FLdPr var_A4
  loc_C39043: LateIdLdVar var_B4 DispID_15 0
  loc_C3904A: PopAd
  loc_C3904C: FLdPr Me
  loc_C3904F: VCallAd Control_ID_StatusBar
  loc_C39052: FStAdFunc var_E8
  loc_C39055: FLdPr var_E8
  loc_C39058: LateIdLdVar var_C4 DispID_1 0
  loc_C3905F: PopAd
  loc_C39061: FLdRfVar var_1C2
  loc_C39064: LitI4 0
  loc_C39069: LitI4 0
  loc_C3906E: FLdRfVar var_C4
  loc_C39071: CStrVarTmp
  loc_C39072: FStStrNoPop var_9C
  loc_C39075: LitI2_Byte &H13
  loc_C39077: FLdRfVar var_B4
  loc_C3907A: CStrVarTmp
  loc_C3907B: FStStrNoPop var_98
  loc_C3907E: ImpAdLdI2 MemVar_C3D064
  loc_C39081: FLdPr Me
  loc_C39084: MemLdRfVar from_stack_1.global_60
  loc_C39087: NewIfNullPr clsasiento
  loc_C3908A: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3908F: FLdI2 var_1C2
  loc_C39092: FStI2 var_92
  loc_C39095: FFreeStr var_98 = ""
  loc_C3909C: FFreeAd var_A4 = ""
  loc_C390A3: FFreeVar var_B4 = ""
  loc_C390AA: FLdPr Me
  loc_C390AD: MemLdI2 global_68
  loc_C390B0: LitI2_Byte 0
  loc_C390B2: EqI2
  loc_C390B3: BranchF loc_C390BF
  loc_C390B6: FLdI2 var_92
  loc_C390B9: FLdPr Me
  loc_C390BC: MemStI2 global_68
  loc_C390BF: FLdPr Me
  loc_C390C2: MemLdI2 global_70
  loc_C390C5: FLdI2 var_92
  loc_C390C8: LtI2
  loc_C390C9: BranchF loc_C390D5
  loc_C390CC: FLdI2 var_92
  loc_C390CF: FLdPr Me
  loc_C390D2: MemStI2 global_70
  loc_C390D5: FLdPr Me
  loc_C390D8: MemLdRfVar from_stack_1.global_52
  loc_C390DB: NewIfNullPr clscaja
  loc_C390DE: Call clscaja.MoveFirst()
  loc_C390E3: LitI2_Byte 0
  loc_C390E5: CR8I2
  loc_C390E6: FStFPR8 var_90
  loc_C390E9: FLdRfVar var_1C2
  loc_C390EC: FLdPr Me
  loc_C390EF: MemLdRfVar from_stack_1.global_52
  loc_C390F2: NewIfNullPr clscaja
  loc_C390F5: from_stack_1 = clscaja.EOF
  loc_C390FA: FLdI2 var_1C2
  loc_C390FD: NotI4
  loc_C390FE: BranchF loc_C3927D
  loc_C39101: FLdRfVar var_15C
  loc_C39104: LitVarStr var_118, "HabeCaja"
  loc_C39109: PopAdLdVar
  loc_C3910A: FLdRfVar var_E8
  loc_C3910D: FLdRfVar var_A4
  loc_C39110: FLdPr Me
  loc_C39113: MemLdRfVar from_stack_1.global_52
  loc_C39116: NewIfNullPr clscaja
  loc_C39119: from_stack_1v = clscaja.RsFrmGet()
  loc_C3911E: FLdPr var_A4
  loc_C39121:  = Me.Fields
  loc_C39126: FLdPr var_E8
  loc_C39129: from_stack_2 = Me.Item(from_stack_1)
  loc_C3912E: LitI4 2
  loc_C39133: FLdRfVar var_90
  loc_C39136: CVarRef
  loc_C3913B: FLdRfVar var_B4
  loc_C3913E: ImpAdCallFPR4  = Round(, )
  loc_C39143: FLdRfVar var_B4
  loc_C39146: LitI4 2
  loc_C3914B: FLdZeroAd var_15C
  loc_C3914E: CVarAd
  loc_C39152: FLdRfVar var_E4
  loc_C39155: ImpAdCallFPR4  = Round(, )
  loc_C3915A: FLdRfVar var_E4
  loc_C3915D: AddVar var_F8
  loc_C39161: CR4Var
  loc_C39162: FStFPR8 var_90
  loc_C39165: FFreeAd var_A4 = ""
  loc_C3916C: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C39177: FLdRfVar var_B4
  loc_C3917A: FLdRfVar var_15C
  loc_C3917D: LitVarStr var_D4, "CodiCuco"
  loc_C39182: PopAdLdVar
  loc_C39183: FLdRfVar var_E8
  loc_C39186: FLdRfVar var_A4
  loc_C39189: FLdPr Me
  loc_C3918C: MemLdRfVar from_stack_1.global_52
  loc_C3918F: NewIfNullPr clscaja
  loc_C39192: from_stack_1v = clscaja.RsFrmGet()
  loc_C39197: FLdPr var_A4
  loc_C3919A:  = Me.Fields
  loc_C3919F: FLdPr var_E8
  loc_C391A2: from_stack_2 = Me.Item(from_stack_1)
  loc_C391A7: FLdPr var_15C
  loc_C391AA:  = Me.Value
  loc_C391AF: FLdRfVar var_C4
  loc_C391B2: FLdRfVar var_1CC
  loc_C391B5: LitVarStr var_118, "HabeCaja"
  loc_C391BA: PopAdLdVar
  loc_C391BB: FLdRfVar var_1C8
  loc_C391BE: FLdRfVar var_1B0
  loc_C391C1: FLdPr Me
  loc_C391C4: MemLdRfVar from_stack_1.global_52
  loc_C391C7: NewIfNullPr clscaja
  loc_C391CA: from_stack_1v = clscaja.RsFrmGet()
  loc_C391CF: FLdPr var_1B0
  loc_C391D2:  = Me.Fields
  loc_C391D7: FLdPr var_1C8
  loc_C391DA: from_stack_2 = Me.Item(from_stack_1)
  loc_C391DF: FLdPr var_1CC
  loc_C391E2:  = Me.Value
  loc_C391E7: FLdRfVar var_C4
  loc_C391EA: CR4Var
  loc_C391EB: PopFPR8
  loc_C391EC: LitI2_Byte 0
  loc_C391EE: CR8I2
  loc_C391EF: PopFPR8
  loc_C391F0: FLdRfVar var_B4
  loc_C391F3: CStrVarTmp
  loc_C391F4: FStStrNoPop var_98
  loc_C391F7: FLdI2 var_92
  loc_C391FA: ImpAdLdI2 MemVar_C3D064
  loc_C391FD: FLdPr Me
  loc_C39200: MemLdRfVar from_stack_1.global_60
  loc_C39203: NewIfNullPr clsasiento
  loc_C39206: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3920B: FFree1Str var_98
  loc_C3920E: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3921D: FFreeVar var_B4 = ""
  loc_C39224: FLdRfVar var_1D0
  loc_C39227: FLdPr Me
  loc_C3922A: MemLdRfVar from_stack_1.global_52
  loc_C3922D: NewIfNullPr clscaja
  loc_C39230: from_stack_1 = clscaja.RecordCount
  loc_C39235: FLdRfVar var_138
  loc_C39238: FLdPr Me
  loc_C3923B: MemLdRfVar from_stack_1.global_52
  loc_C3923E: NewIfNullPr clscaja
  loc_C39241: from_stack_1 = clscaja.AbsolutePosition
  loc_C39246: ILdRf var_138
  loc_C39249: CR8I4
  loc_C3924A: ILdRf var_1D0
  loc_C3924D: CR8I4
  loc_C3924E: DivR8
  loc_C3924F: LitI2_Byte &H64
  loc_C39251: CR8I2
  loc_C39252: MulR8
  loc_C39253: CVarR4
  loc_C39257: PopAdLdVar
  loc_C39258: FLdPr Me
  loc_C3925B: VCallAd Control_ID_ProgressBar
  loc_C3925E: FStAdFunc var_A4
  loc_C39261: FLdPr var_A4
  loc_C39264: LateIdSt
  loc_C39269: FFree1Ad var_A4
  loc_C3926C: FLdPr Me
  loc_C3926F: MemLdRfVar from_stack_1.global_52
  loc_C39272: NewIfNullPr clscaja
  loc_C39275: Call clscaja.MoveSiguiente()
  loc_C3927A: Branch loc_C390E9
  loc_C3927D: FLdRfVar var_B4
  loc_C39280: FLdRfVar var_15C
  loc_C39283: LitVarStr var_D4, "PatrPaco"
  loc_C39288: PopAdLdVar
  loc_C39289: FLdRfVar var_E8
  loc_C3928C: FLdRfVar var_A4
  loc_C3928F: FLdPr Me
  loc_C39292: MemLdRfVar from_stack_1.global_56
  loc_C39295: NewIfNullPr clsparaconta
  loc_C39298: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3929D: FLdPr var_A4
  loc_C392A0:  = Me.Fields
  loc_C392A5: FLdPr var_E8
  loc_C392A8: from_stack_2 = Me.Item(from_stack_1)
  loc_C392AD: FLdPr var_15C
  loc_C392B0:  = Me.Value
  loc_C392B5: LitI2_Byte 0
  loc_C392B7: CR8I2
  loc_C392B8: PopFPR8
  loc_C392B9: FLdR8 var_90
  loc_C392BC: FLdRfVar var_B4
  loc_C392BF: CStrVarTmp
  loc_C392C0: FStStrNoPop var_98
  loc_C392C3: FLdI2 var_92
  loc_C392C6: ImpAdLdI2 MemVar_C3D064
  loc_C392C9: FLdPr Me
  loc_C392CC: MemLdRfVar from_stack_1.global_60
  loc_C392CF: NewIfNullPr clsasiento
  loc_C392D2: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C392D7: FFree1Str var_98
  loc_C392DA: FFreeAd var_A4 = "": var_E8 = ""
  loc_C392E3: FFree1Var var_B4 = ""
  loc_C392E6: LitI2_Byte &HFF
  loc_C392E8: BranchF loc_C3AC99
  loc_C392EB: LitVarStr var_D4, "Asiento Automático de Aforos y Débitos"
  loc_C392F0: PopAdLdVar
  loc_C392F1: FLdPr Me
  loc_C392F4: VCallAd Control_ID_StatusBar
  loc_C392F7: FStAdFunc var_A4
  loc_C392FA: FLdPr var_A4
  loc_C392FD: LateIdSt
  loc_C39302: FFree1Ad var_A4
  loc_C39305: LitStr "SELECT Distinct CodiTimo"
  loc_C39308: LitStr " FROM cajaaforo ca"
  loc_C3930B: ConcatStr
  loc_C3930C: FStStrNoPop var_98
  loc_C3930F: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C39312: ConcatStr
  loc_C39313: FStStrNoPop var_9C
  loc_C39316: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C39319: ConcatStr
  loc_C3931A: FStStrNoPop var_A0
  loc_C3931D: LitStr " AND DebeCaja > 0"
  loc_C39320: ConcatStr
  loc_C39321: FStStrNoPop var_12C
  loc_C39324: LitStr " AND PatrCuco = PatrPaco;"
  loc_C39327: ConcatStr
  loc_C39328: FStStrNoPop var_130
  loc_C3932B: FLdPr Me
  loc_C3932E: MemLdRfVar from_stack_1.global_52
  loc_C39331: NewIfNullPr clscaja
  loc_C39334: Call clscaja.RedefineRS(from_stack_1v)
  loc_C39339: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C39346: FLdRfVar var_138
  loc_C39349: FLdPr Me
  loc_C3934C: MemLdRfVar from_stack_1.global_52
  loc_C3934F: NewIfNullPr clscaja
  loc_C39352: from_stack_1 = clscaja.RecordCount
  loc_C39357: ILdRf var_138
  loc_C3935A: LitI4 0
  loc_C3935F: GtI4
  loc_C39360: BranchF loc_C39820
  loc_C39363: FLdPr Me
  loc_C39366: MemLdRfVar from_stack_1.global_52
  loc_C39369: NewIfNullPr clscaja
  loc_C3936C: Call clscaja.MoveFirst()
  loc_C39371: LitI4 0
  loc_C39376: FLdRfVar var_138
  loc_C39379: FLdPr Me
  loc_C3937C: MemLdRfVar from_stack_1.global_52
  loc_C3937F: NewIfNullPr clscaja
  loc_C39382: from_stack_1 = clscaja.RecordCount
  loc_C39387: ILdRf var_138
  loc_C3938A: FLdRfVar var_20C
  loc_C3938D: Redim
  loc_C39397: LitI2_Byte 1
  loc_C39399: CUI1I2
  loc_C3939B: FLdRfVar var_20E
  loc_C3939E: ILdRf var_20C
  loc_C393A1: LitI2_Byte 1
  loc_C393A3: FnUBound
  loc_C393A5: CUI1I4
  loc_C393A7: ForUI1 var_212
  loc_C393AD: FLdRfVar var_B4
  loc_C393B0: FLdRfVar var_15C
  loc_C393B3: LitVarStr var_D4, "CodiTimo"
  loc_C393B8: PopAdLdVar
  loc_C393B9: FLdRfVar var_E8
  loc_C393BC: FLdRfVar var_A4
  loc_C393BF: FLdPr Me
  loc_C393C2: MemLdRfVar from_stack_1.global_52
  loc_C393C5: NewIfNullPr clscaja
  loc_C393C8: from_stack_1v = clscaja.RsFrmGet()
  loc_C393CD: FLdPr var_A4
  loc_C393D0:  = Me.Fields
  loc_C393D5: FLdPr var_E8
  loc_C393D8: from_stack_2 = Me.Item(from_stack_1)
  loc_C393DD: FLdPr var_15C
  loc_C393E0:  = Me.Value
  loc_C393E5: FLdRfVar var_B4
  loc_C393E8: CStrVarTmp
  loc_C393E9: FStStrNoPop var_98
  loc_C393EC: FLdUI1
  loc_C393F0: CI4UI1
  loc_C393F1: ILdRf var_20C
  loc_C393F4: Ary1StStrCopy
  loc_C393F5: FFree1Str var_98
  loc_C393F8: FFreeAd var_A4 = "": var_E8 = ""
  loc_C39401: FFree1Var var_B4 = ""
  loc_C39404: FLdPr Me
  loc_C39407: MemLdRfVar from_stack_1.global_52
  loc_C3940A: NewIfNullPr clscaja
  loc_C3940D: Call clscaja.MoveSiguiente()
  loc_C39412: FLdRfVar var_20E
  loc_C39415: NextUI1
  loc_C3941B: LitI2_Byte 1
  loc_C3941D: CUI1I2
  loc_C3941F: FLdRfVar var_20E
  loc_C39422: ILdRf var_20C
  loc_C39425: LitI2_Byte 1
  loc_C39427: FnUBound
  loc_C39429: CUI1I4
  loc_C3942B: ForUI1 var_216
  loc_C39431: LitStr "SELECT CodiCuco, Sum(DebeCaja) DebeCaja, IFNULL(DetaTimo,'ERROR') DetaTimo"
  loc_C39434: LitStr " FROM cajaaforo ca"
  loc_C39437: ConcatStr
  loc_C39438: FStStrNoPop var_98
  loc_C3943B: LitStr " LEFT JOIN recaudacion.tipomovi tm ON tm.CodiTimo = ca.CodiTimo"
  loc_C3943E: ConcatStr
  loc_C3943F: FStStrNoPop var_9C
  loc_C39442: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C39445: ConcatStr
  loc_C39446: FStStrNoPop var_A0
  loc_C39449: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3944C: ConcatStr
  loc_C3944D: FStStrNoPop var_12C
  loc_C39450: LitStr " AND ca.CodiTimo = "
  loc_C39453: ConcatStr
  loc_C39454: FStStrNoPop var_130
  loc_C39457: FLdUI1
  loc_C3945B: CI4UI1
  loc_C3945C: ILdRf var_20C
  loc_C3945F: Ary1LdI4
  loc_C39460: ConcatStr
  loc_C39461: FStStrNoPop var_134
  loc_C39464: LitStr " AND DebeCaja > 0"
  loc_C39467: ConcatStr
  loc_C39468: FStStrNoPop var_1D4
  loc_C3946B: LitStr " AND PatrCuco = PatrPaco"
  loc_C3946E: ConcatStr
  loc_C3946F: FStStrNoPop var_1D8
  loc_C39472: LitStr " GROUP BY CodiCuco"
  loc_C39475: ConcatStr
  loc_C39476: FStStrNoPop var_1E8
  loc_C39479: LitStr " ORDER BY CodiCuco;"
  loc_C3947C: ConcatStr
  loc_C3947D: FStStrNoPop var_1EC
  loc_C39480: FLdPr Me
  loc_C39483: MemLdRfVar from_stack_1.global_52
  loc_C39486: NewIfNullPr clscaja
  loc_C39489: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3948E: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = "": var_1D8 = "": var_1E8 = ""
  loc_C394A5: FLdRfVar var_138
  loc_C394A8: FLdPr Me
  loc_C394AB: MemLdRfVar from_stack_1.global_52
  loc_C394AE: NewIfNullPr clscaja
  loc_C394B1: from_stack_1 = clscaja.RecordCount
  loc_C394B6: ILdRf var_138
  loc_C394B9: LitI4 0
  loc_C394BE: GtI4
  loc_C394BF: BranchF loc_C39817
  loc_C394C2: FLdRfVar var_B4
  loc_C394C5: FLdRfVar var_15C
  loc_C394C8: LitVarStr var_D4, "DetaTimo"
  loc_C394CD: PopAdLdVar
  loc_C394CE: FLdRfVar var_E8
  loc_C394D1: FLdRfVar var_A4
  loc_C394D4: FLdPr Me
  loc_C394D7: MemLdRfVar from_stack_1.global_52
  loc_C394DA: NewIfNullPr clscaja
  loc_C394DD: from_stack_1v = clscaja.RsFrmGet()
  loc_C394E2: FLdPr var_A4
  loc_C394E5:  = Me.Fields
  loc_C394EA: FLdPr var_E8
  loc_C394ED: from_stack_2 = Me.Item(from_stack_1)
  loc_C394F2: FLdPr var_15C
  loc_C394F5:  = Me.Value
  loc_C394FA: LitVarI2 var_C4, 140
  loc_C394FF: LitI4 1
  loc_C39504: FLdRfVar var_B4
  loc_C39507: CStrVarTmp
  loc_C39508: FStStrNoPop var_98
  loc_C3950B: ImpAdCallI2 Mid$(, , )
  loc_C39510: FStStrNoPop var_9C
  loc_C39513: LitStr " ("
  loc_C39516: ConcatStr
  loc_C39517: FStStrNoPop var_A0
  loc_C3951A: FLdUI1
  loc_C3951E: CI4UI1
  loc_C3951F: ILdRf var_20C
  loc_C39522: Ary1LdI4
  loc_C39523: ConcatStr
  loc_C39524: FStStrNoPop var_12C
  loc_C39527: LitStr ")"
  loc_C3952A: ConcatStr
  loc_C3952B: CVarStr var_E4
  loc_C3952E: PopAdLdVar
  loc_C3952F: FLdPr Me
  loc_C39532: VCallAd Control_ID_StatusBar
  loc_C39535: FStAdFunc var_1B0
  loc_C39538: FLdPr var_1B0
  loc_C3953B: LateIdSt
  loc_C39540: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C3954B: FFreeAd var_A4 = "": var_E8 = "": var_15C = ""
  loc_C39556: FFreeVar var_B4 = "": var_C4 = ""
  loc_C3955F: FLdPr Me
  loc_C39562: VCallAd Control_ID_FechCajaHastaMsk
  loc_C39565: FStAdFunc var_A4
  loc_C39568: FLdPr var_A4
  loc_C3956B: LateIdLdVar var_B4 DispID_15 0
  loc_C39572: PopAd
  loc_C39574: FLdPr Me
  loc_C39577: VCallAd Control_ID_StatusBar
  loc_C3957A: FStAdFunc var_E8
  loc_C3957D: FLdPr var_E8
  loc_C39580: LateIdLdVar var_C4 DispID_1 0
  loc_C39587: PopAd
  loc_C39589: FLdRfVar var_1C2
  loc_C3958C: LitI4 0
  loc_C39591: LitI4 0
  loc_C39596: LitStr "Asiento Automático de "
  loc_C39599: FLdRfVar var_C4
  loc_C3959C: CStrVarTmp
  loc_C3959D: FStStrNoPop var_98
  loc_C395A0: ConcatStr
  loc_C395A1: FStStrNoPop var_A0
  loc_C395A4: LitI2_Byte &H1A
  loc_C395A6: FLdRfVar var_B4
  loc_C395A9: CStrVarTmp
  loc_C395AA: FStStrNoPop var_9C
  loc_C395AD: ImpAdLdI2 MemVar_C3D064
  loc_C395B0: FLdPr Me
  loc_C395B3: MemLdRfVar from_stack_1.global_60
  loc_C395B6: NewIfNullPr clsasiento
  loc_C395B9: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C395BE: FLdI2 var_1C2
  loc_C395C1: FStI2 var_92
  loc_C395C4: FFreeStr var_98 = "": var_9C = ""
  loc_C395CD: FFreeAd var_A4 = ""
  loc_C395D4: FFreeVar var_B4 = ""
  loc_C395DB: FLdPr Me
  loc_C395DE: MemLdI2 global_68
  loc_C395E1: LitI2_Byte 0
  loc_C395E3: EqI2
  loc_C395E4: BranchF loc_C395F0
  loc_C395E7: FLdI2 var_92
  loc_C395EA: FLdPr Me
  loc_C395ED: MemStI2 global_68
  loc_C395F0: FLdPr Me
  loc_C395F3: MemLdI2 global_70
  loc_C395F6: FLdI2 var_92
  loc_C395F9: LtI2
  loc_C395FA: BranchF loc_C39606
  loc_C395FD: FLdI2 var_92
  loc_C39600: FLdPr Me
  loc_C39603: MemStI2 global_70
  loc_C39606: FLdPr Me
  loc_C39609: MemLdRfVar from_stack_1.global_52
  loc_C3960C: NewIfNullPr clscaja
  loc_C3960F: Call clscaja.MoveFirst()
  loc_C39614: LitI2_Byte 0
  loc_C39616: CR8I2
  loc_C39617: FStFPR8 var_90
  loc_C3961A: FLdRfVar var_1C2
  loc_C3961D: FLdPr Me
  loc_C39620: MemLdRfVar from_stack_1.global_52
  loc_C39623: NewIfNullPr clscaja
  loc_C39626: from_stack_1 = clscaja.EOF
  loc_C3962B: FLdI2 var_1C2
  loc_C3962E: NotI4
  loc_C3962F: BranchF loc_C397AE
  loc_C39632: FLdRfVar var_15C
  loc_C39635: LitVarStr var_118, "DebeCaja"
  loc_C3963A: PopAdLdVar
  loc_C3963B: FLdRfVar var_E8
  loc_C3963E: FLdRfVar var_A4
  loc_C39641: FLdPr Me
  loc_C39644: MemLdRfVar from_stack_1.global_52
  loc_C39647: NewIfNullPr clscaja
  loc_C3964A: from_stack_1v = clscaja.RsFrmGet()
  loc_C3964F: FLdPr var_A4
  loc_C39652:  = Me.Fields
  loc_C39657: FLdPr var_E8
  loc_C3965A: from_stack_2 = Me.Item(from_stack_1)
  loc_C3965F: LitI4 2
  loc_C39664: FLdRfVar var_90
  loc_C39667: CVarRef
  loc_C3966C: FLdRfVar var_B4
  loc_C3966F: ImpAdCallFPR4  = Round(, )
  loc_C39674: FLdRfVar var_B4
  loc_C39677: LitI4 2
  loc_C3967C: FLdZeroAd var_15C
  loc_C3967F: CVarAd
  loc_C39683: FLdRfVar var_E4
  loc_C39686: ImpAdCallFPR4  = Round(, )
  loc_C3968B: FLdRfVar var_E4
  loc_C3968E: AddVar var_F8
  loc_C39692: CR4Var
  loc_C39693: FStFPR8 var_90
  loc_C39696: FFreeAd var_A4 = ""
  loc_C3969D: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C396A8: FLdRfVar var_B4
  loc_C396AB: FLdRfVar var_15C
  loc_C396AE: LitVarStr var_D4, "CodiCuco"
  loc_C396B3: PopAdLdVar
  loc_C396B4: FLdRfVar var_E8
  loc_C396B7: FLdRfVar var_A4
  loc_C396BA: FLdPr Me
  loc_C396BD: MemLdRfVar from_stack_1.global_52
  loc_C396C0: NewIfNullPr clscaja
  loc_C396C3: from_stack_1v = clscaja.RsFrmGet()
  loc_C396C8: FLdPr var_A4
  loc_C396CB:  = Me.Fields
  loc_C396D0: FLdPr var_E8
  loc_C396D3: from_stack_2 = Me.Item(from_stack_1)
  loc_C396D8: FLdPr var_15C
  loc_C396DB:  = Me.Value
  loc_C396E0: FLdRfVar var_C4
  loc_C396E3: FLdRfVar var_1CC
  loc_C396E6: LitVarStr var_118, "DebeCaja"
  loc_C396EB: PopAdLdVar
  loc_C396EC: FLdRfVar var_1C8
  loc_C396EF: FLdRfVar var_1B0
  loc_C396F2: FLdPr Me
  loc_C396F5: MemLdRfVar from_stack_1.global_52
  loc_C396F8: NewIfNullPr clscaja
  loc_C396FB: from_stack_1v = clscaja.RsFrmGet()
  loc_C39700: FLdPr var_1B0
  loc_C39703:  = Me.Fields
  loc_C39708: FLdPr var_1C8
  loc_C3970B: from_stack_2 = Me.Item(from_stack_1)
  loc_C39710: FLdPr var_1CC
  loc_C39713:  = Me.Value
  loc_C39718: LitI2_Byte 0
  loc_C3971A: CR8I2
  loc_C3971B: PopFPR8
  loc_C3971C: FLdRfVar var_C4
  loc_C3971F: CR4Var
  loc_C39720: PopFPR8
  loc_C39721: FLdRfVar var_B4
  loc_C39724: CStrVarTmp
  loc_C39725: FStStrNoPop var_98
  loc_C39728: FLdI2 var_92
  loc_C3972B: ImpAdLdI2 MemVar_C3D064
  loc_C3972E: FLdPr Me
  loc_C39731: MemLdRfVar from_stack_1.global_60
  loc_C39734: NewIfNullPr clsasiento
  loc_C39737: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3973C: FFree1Str var_98
  loc_C3973F: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3974E: FFreeVar var_B4 = ""
  loc_C39755: FLdRfVar var_1D0
  loc_C39758: FLdPr Me
  loc_C3975B: MemLdRfVar from_stack_1.global_52
  loc_C3975E: NewIfNullPr clscaja
  loc_C39761: from_stack_1 = clscaja.RecordCount
  loc_C39766: FLdRfVar var_138
  loc_C39769: FLdPr Me
  loc_C3976C: MemLdRfVar from_stack_1.global_52
  loc_C3976F: NewIfNullPr clscaja
  loc_C39772: from_stack_1 = clscaja.AbsolutePosition
  loc_C39777: ILdRf var_138
  loc_C3977A: CR8I4
  loc_C3977B: ILdRf var_1D0
  loc_C3977E: CR8I4
  loc_C3977F: DivR8
  loc_C39780: LitI2_Byte &H64
  loc_C39782: CR8I2
  loc_C39783: MulR8
  loc_C39784: CVarR4
  loc_C39788: PopAdLdVar
  loc_C39789: FLdPr Me
  loc_C3978C: VCallAd Control_ID_ProgressBar
  loc_C3978F: FStAdFunc var_A4
  loc_C39792: FLdPr var_A4
  loc_C39795: LateIdSt
  loc_C3979A: FFree1Ad var_A4
  loc_C3979D: FLdPr Me
  loc_C397A0: MemLdRfVar from_stack_1.global_52
  loc_C397A3: NewIfNullPr clscaja
  loc_C397A6: Call clscaja.MoveSiguiente()
  loc_C397AB: Branch loc_C3961A
  loc_C397AE: FLdRfVar var_B4
  loc_C397B1: FLdRfVar var_15C
  loc_C397B4: LitVarStr var_D4, "PatrPaco"
  loc_C397B9: PopAdLdVar
  loc_C397BA: FLdRfVar var_E8
  loc_C397BD: FLdRfVar var_A4
  loc_C397C0: FLdPr Me
  loc_C397C3: MemLdRfVar from_stack_1.global_56
  loc_C397C6: NewIfNullPr clsparaconta
  loc_C397C9: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C397CE: FLdPr var_A4
  loc_C397D1:  = Me.Fields
  loc_C397D6: FLdPr var_E8
  loc_C397D9: from_stack_2 = Me.Item(from_stack_1)
  loc_C397DE: FLdPr var_15C
  loc_C397E1:  = Me.Value
  loc_C397E6: FLdR8 var_90
  loc_C397E9: LitI2_Byte 0
  loc_C397EB: CR8I2
  loc_C397EC: PopFPR8
  loc_C397ED: FLdRfVar var_B4
  loc_C397F0: CStrVarTmp
  loc_C397F1: FStStrNoPop var_98
  loc_C397F4: FLdI2 var_92
  loc_C397F7: ImpAdLdI2 MemVar_C3D064
  loc_C397FA: FLdPr Me
  loc_C397FD: MemLdRfVar from_stack_1.global_60
  loc_C39800: NewIfNullPr clsasiento
  loc_C39803: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C39808: FFree1Str var_98
  loc_C3980B: FFreeAd var_A4 = "": var_E8 = ""
  loc_C39814: FFree1Var var_B4 = ""
  loc_C39817: FLdRfVar var_20E
  loc_C3981A: NextUI1
  loc_C39820: LitVarStr var_D4, "Asiento Automático de Créditos, Prescripciones, Condonaciones, Exenciones, Descuentos y Cobrado"
  loc_C39825: PopAdLdVar
  loc_C39826: FLdPr Me
  loc_C39829: VCallAd Control_ID_StatusBar
  loc_C3982C: FStAdFunc var_A4
  loc_C3982F: FLdPr var_A4
  loc_C39832: LateIdSt
  loc_C39837: FFree1Ad var_A4
  loc_C3983A: LitStr "SELECT Distinct CodiTimo"
  loc_C3983D: LitStr " FROM cajaaforo ca"
  loc_C39840: ConcatStr
  loc_C39841: FStStrNoPop var_98
  loc_C39844: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C39847: ConcatStr
  loc_C39848: FStStrNoPop var_9C
  loc_C3984B: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3984E: ConcatStr
  loc_C3984F: FStStrNoPop var_A0
  loc_C39852: LitStr " AND HabeCaja > 0"
  loc_C39855: ConcatStr
  loc_C39856: FStStrNoPop var_12C
  loc_C39859: LitStr " AND PatrCuco = PatrPaco;"
  loc_C3985C: ConcatStr
  loc_C3985D: FStStrNoPop var_130
  loc_C39860: FLdPr Me
  loc_C39863: MemLdRfVar from_stack_1.global_52
  loc_C39866: NewIfNullPr clscaja
  loc_C39869: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3986E: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C3987B: FLdRfVar var_138
  loc_C3987E: FLdPr Me
  loc_C39881: MemLdRfVar from_stack_1.global_52
  loc_C39884: NewIfNullPr clscaja
  loc_C39887: from_stack_1 = clscaja.RecordCount
  loc_C3988C: ILdRf var_138
  loc_C3988F: LitI4 0
  loc_C39894: GtI4
  loc_C39895: BranchF loc_C39D55
  loc_C39898: FLdPr Me
  loc_C3989B: MemLdRfVar from_stack_1.global_52
  loc_C3989E: NewIfNullPr clscaja
  loc_C398A1: Call clscaja.MoveFirst()
  loc_C398A6: LitI4 0
  loc_C398AB: FLdRfVar var_138
  loc_C398AE: FLdPr Me
  loc_C398B1: MemLdRfVar from_stack_1.global_52
  loc_C398B4: NewIfNullPr clscaja
  loc_C398B7: from_stack_1 = clscaja.RecordCount
  loc_C398BC: ILdRf var_138
  loc_C398BF: FLdRfVar var_20C
  loc_C398C2: Redim
  loc_C398CC: LitI2_Byte 1
  loc_C398CE: CUI1I2
  loc_C398D0: FLdRfVar var_20E
  loc_C398D3: ILdRf var_20C
  loc_C398D6: LitI2_Byte 1
  loc_C398D8: FnUBound
  loc_C398DA: CUI1I4
  loc_C398DC: ForUI1 var_21A
  loc_C398E2: FLdRfVar var_B4
  loc_C398E5: FLdRfVar var_15C
  loc_C398E8: LitVarStr var_D4, "CodiTimo"
  loc_C398ED: PopAdLdVar
  loc_C398EE: FLdRfVar var_E8
  loc_C398F1: FLdRfVar var_A4
  loc_C398F4: FLdPr Me
  loc_C398F7: MemLdRfVar from_stack_1.global_52
  loc_C398FA: NewIfNullPr clscaja
  loc_C398FD: from_stack_1v = clscaja.RsFrmGet()
  loc_C39902: FLdPr var_A4
  loc_C39905:  = Me.Fields
  loc_C3990A: FLdPr var_E8
  loc_C3990D: from_stack_2 = Me.Item(from_stack_1)
  loc_C39912: FLdPr var_15C
  loc_C39915:  = Me.Value
  loc_C3991A: FLdRfVar var_B4
  loc_C3991D: CStrVarTmp
  loc_C3991E: FStStrNoPop var_98
  loc_C39921: FLdUI1
  loc_C39925: CI4UI1
  loc_C39926: ILdRf var_20C
  loc_C39929: Ary1StStrCopy
  loc_C3992A: FFree1Str var_98
  loc_C3992D: FFreeAd var_A4 = "": var_E8 = ""
  loc_C39936: FFree1Var var_B4 = ""
  loc_C39939: FLdPr Me
  loc_C3993C: MemLdRfVar from_stack_1.global_52
  loc_C3993F: NewIfNullPr clscaja
  loc_C39942: Call clscaja.MoveSiguiente()
  loc_C39947: FLdRfVar var_20E
  loc_C3994A: NextUI1
  loc_C39950: LitI2_Byte 1
  loc_C39952: CUI1I2
  loc_C39954: FLdRfVar var_20E
  loc_C39957: ILdRf var_20C
  loc_C3995A: LitI2_Byte 1
  loc_C3995C: FnUBound
  loc_C3995E: CUI1I4
  loc_C39960: ForUI1 var_21E
  loc_C39966: LitStr "SELECT CodiCuco, Sum(HabeCaja) HabeCaja, IFNULL(DetaTimo,'ERROR') DetaTimo"
  loc_C39969: LitStr " FROM cajaaforo ca"
  loc_C3996C: ConcatStr
  loc_C3996D: FStStrNoPop var_98
  loc_C39970: LitStr " LEFT JOIN recaudacion.tipomovi tm ON tm.CodiTimo = ca.CodiTimo"
  loc_C39973: ConcatStr
  loc_C39974: FStStrNoPop var_9C
  loc_C39977: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C3997A: ConcatStr
  loc_C3997B: FStStrNoPop var_A0
  loc_C3997E: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C39981: ConcatStr
  loc_C39982: FStStrNoPop var_12C
  loc_C39985: LitStr " AND ca.CodiTimo = "
  loc_C39988: ConcatStr
  loc_C39989: FStStrNoPop var_130
  loc_C3998C: FLdUI1
  loc_C39990: CI4UI1
  loc_C39991: ILdRf var_20C
  loc_C39994: Ary1LdI4
  loc_C39995: ConcatStr
  loc_C39996: FStStrNoPop var_134
  loc_C39999: LitStr " AND HabeCaja > 0"
  loc_C3999C: ConcatStr
  loc_C3999D: FStStrNoPop var_1D4
  loc_C399A0: LitStr " AND PatrCuco = PatrPaco"
  loc_C399A3: ConcatStr
  loc_C399A4: FStStrNoPop var_1D8
  loc_C399A7: LitStr " GROUP BY CodiCuco"
  loc_C399AA: ConcatStr
  loc_C399AB: FStStrNoPop var_1E8
  loc_C399AE: LitStr " ORDER BY CodiCuco;"
  loc_C399B1: ConcatStr
  loc_C399B2: FStStrNoPop var_1EC
  loc_C399B5: FLdPr Me
  loc_C399B8: MemLdRfVar from_stack_1.global_52
  loc_C399BB: NewIfNullPr clscaja
  loc_C399BE: Call clscaja.RedefineRS(from_stack_1v)
  loc_C399C3: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = "": var_1D8 = "": var_1E8 = ""
  loc_C399DA: FLdRfVar var_138
  loc_C399DD: FLdPr Me
  loc_C399E0: MemLdRfVar from_stack_1.global_52
  loc_C399E3: NewIfNullPr clscaja
  loc_C399E6: from_stack_1 = clscaja.RecordCount
  loc_C399EB: ILdRf var_138
  loc_C399EE: LitI4 0
  loc_C399F3: GtI4
  loc_C399F4: BranchF loc_C39D4C
  loc_C399F7: FLdRfVar var_B4
  loc_C399FA: FLdRfVar var_15C
  loc_C399FD: LitVarStr var_D4, "DetaTimo"
  loc_C39A02: PopAdLdVar
  loc_C39A03: FLdRfVar var_E8
  loc_C39A06: FLdRfVar var_A4
  loc_C39A09: FLdPr Me
  loc_C39A0C: MemLdRfVar from_stack_1.global_52
  loc_C39A0F: NewIfNullPr clscaja
  loc_C39A12: from_stack_1v = clscaja.RsFrmGet()
  loc_C39A17: FLdPr var_A4
  loc_C39A1A:  = Me.Fields
  loc_C39A1F: FLdPr var_E8
  loc_C39A22: from_stack_2 = Me.Item(from_stack_1)
  loc_C39A27: FLdPr var_15C
  loc_C39A2A:  = Me.Value
  loc_C39A2F: LitVarI2 var_C4, 140
  loc_C39A34: LitI4 1
  loc_C39A39: FLdRfVar var_B4
  loc_C39A3C: CStrVarTmp
  loc_C39A3D: FStStrNoPop var_98
  loc_C39A40: ImpAdCallI2 Mid$(, , )
  loc_C39A45: FStStrNoPop var_9C
  loc_C39A48: LitStr " ("
  loc_C39A4B: ConcatStr
  loc_C39A4C: FStStrNoPop var_A0
  loc_C39A4F: FLdUI1
  loc_C39A53: CI4UI1
  loc_C39A54: ILdRf var_20C
  loc_C39A57: Ary1LdI4
  loc_C39A58: ConcatStr
  loc_C39A59: FStStrNoPop var_12C
  loc_C39A5C: LitStr ")"
  loc_C39A5F: ConcatStr
  loc_C39A60: CVarStr var_E4
  loc_C39A63: PopAdLdVar
  loc_C39A64: FLdPr Me
  loc_C39A67: VCallAd Control_ID_StatusBar
  loc_C39A6A: FStAdFunc var_1B0
  loc_C39A6D: FLdPr var_1B0
  loc_C39A70: LateIdSt
  loc_C39A75: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C39A80: FFreeAd var_A4 = "": var_E8 = "": var_15C = ""
  loc_C39A8B: FFreeVar var_B4 = "": var_C4 = ""
  loc_C39A94: FLdPr Me
  loc_C39A97: VCallAd Control_ID_FechCajaHastaMsk
  loc_C39A9A: FStAdFunc var_A4
  loc_C39A9D: FLdPr var_A4
  loc_C39AA0: LateIdLdVar var_B4 DispID_15 0
  loc_C39AA7: PopAd
  loc_C39AA9: FLdPr Me
  loc_C39AAC: VCallAd Control_ID_StatusBar
  loc_C39AAF: FStAdFunc var_E8
  loc_C39AB2: FLdPr var_E8
  loc_C39AB5: LateIdLdVar var_C4 DispID_1 0
  loc_C39ABC: PopAd
  loc_C39ABE: FLdRfVar var_1C2
  loc_C39AC1: LitI4 0
  loc_C39AC6: LitI4 0
  loc_C39ACB: LitStr "Asiento Automático de "
  loc_C39ACE: FLdRfVar var_C4
  loc_C39AD1: CStrVarTmp
  loc_C39AD2: FStStrNoPop var_98
  loc_C39AD5: ConcatStr
  loc_C39AD6: FStStrNoPop var_A0
  loc_C39AD9: LitI2_Byte &H1A
  loc_C39ADB: FLdRfVar var_B4
  loc_C39ADE: CStrVarTmp
  loc_C39ADF: FStStrNoPop var_9C
  loc_C39AE2: ImpAdLdI2 MemVar_C3D064
  loc_C39AE5: FLdPr Me
  loc_C39AE8: MemLdRfVar from_stack_1.global_60
  loc_C39AEB: NewIfNullPr clsasiento
  loc_C39AEE: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C39AF3: FLdI2 var_1C2
  loc_C39AF6: FStI2 var_92
  loc_C39AF9: FFreeStr var_98 = "": var_9C = ""
  loc_C39B02: FFreeAd var_A4 = ""
  loc_C39B09: FFreeVar var_B4 = ""
  loc_C39B10: FLdPr Me
  loc_C39B13: MemLdI2 global_68
  loc_C39B16: LitI2_Byte 0
  loc_C39B18: EqI2
  loc_C39B19: BranchF loc_C39B25
  loc_C39B1C: FLdI2 var_92
  loc_C39B1F: FLdPr Me
  loc_C39B22: MemStI2 global_68
  loc_C39B25: FLdPr Me
  loc_C39B28: MemLdI2 global_70
  loc_C39B2B: FLdI2 var_92
  loc_C39B2E: LtI2
  loc_C39B2F: BranchF loc_C39B3B
  loc_C39B32: FLdI2 var_92
  loc_C39B35: FLdPr Me
  loc_C39B38: MemStI2 global_70
  loc_C39B3B: FLdPr Me
  loc_C39B3E: MemLdRfVar from_stack_1.global_52
  loc_C39B41: NewIfNullPr clscaja
  loc_C39B44: Call clscaja.MoveFirst()
  loc_C39B49: LitI2_Byte 0
  loc_C39B4B: CR8I2
  loc_C39B4C: FStFPR8 var_90
  loc_C39B4F: FLdRfVar var_1C2
  loc_C39B52: FLdPr Me
  loc_C39B55: MemLdRfVar from_stack_1.global_52
  loc_C39B58: NewIfNullPr clscaja
  loc_C39B5B: from_stack_1 = clscaja.EOF
  loc_C39B60: FLdI2 var_1C2
  loc_C39B63: NotI4
  loc_C39B64: BranchF loc_C39CE3
  loc_C39B67: FLdRfVar var_15C
  loc_C39B6A: LitVarStr var_118, "HabeCaja"
  loc_C39B6F: PopAdLdVar
  loc_C39B70: FLdRfVar var_E8
  loc_C39B73: FLdRfVar var_A4
  loc_C39B76: FLdPr Me
  loc_C39B79: MemLdRfVar from_stack_1.global_52
  loc_C39B7C: NewIfNullPr clscaja
  loc_C39B7F: from_stack_1v = clscaja.RsFrmGet()
  loc_C39B84: FLdPr var_A4
  loc_C39B87:  = Me.Fields
  loc_C39B8C: FLdPr var_E8
  loc_C39B8F: from_stack_2 = Me.Item(from_stack_1)
  loc_C39B94: LitI4 2
  loc_C39B99: FLdRfVar var_90
  loc_C39B9C: CVarRef
  loc_C39BA1: FLdRfVar var_B4
  loc_C39BA4: ImpAdCallFPR4  = Round(, )
  loc_C39BA9: FLdRfVar var_B4
  loc_C39BAC: LitI4 2
  loc_C39BB1: FLdZeroAd var_15C
  loc_C39BB4: CVarAd
  loc_C39BB8: FLdRfVar var_E4
  loc_C39BBB: ImpAdCallFPR4  = Round(, )
  loc_C39BC0: FLdRfVar var_E4
  loc_C39BC3: AddVar var_F8
  loc_C39BC7: CR4Var
  loc_C39BC8: FStFPR8 var_90
  loc_C39BCB: FFreeAd var_A4 = ""
  loc_C39BD2: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C39BDD: FLdRfVar var_B4
  loc_C39BE0: FLdRfVar var_15C
  loc_C39BE3: LitVarStr var_D4, "CodiCuco"
  loc_C39BE8: PopAdLdVar
  loc_C39BE9: FLdRfVar var_E8
  loc_C39BEC: FLdRfVar var_A4
  loc_C39BEF: FLdPr Me
  loc_C39BF2: MemLdRfVar from_stack_1.global_52
  loc_C39BF5: NewIfNullPr clscaja
  loc_C39BF8: from_stack_1v = clscaja.RsFrmGet()
  loc_C39BFD: FLdPr var_A4
  loc_C39C00:  = Me.Fields
  loc_C39C05: FLdPr var_E8
  loc_C39C08: from_stack_2 = Me.Item(from_stack_1)
  loc_C39C0D: FLdPr var_15C
  loc_C39C10:  = Me.Value
  loc_C39C15: FLdRfVar var_C4
  loc_C39C18: FLdRfVar var_1CC
  loc_C39C1B: LitVarStr var_118, "HabeCaja"
  loc_C39C20: PopAdLdVar
  loc_C39C21: FLdRfVar var_1C8
  loc_C39C24: FLdRfVar var_1B0
  loc_C39C27: FLdPr Me
  loc_C39C2A: MemLdRfVar from_stack_1.global_52
  loc_C39C2D: NewIfNullPr clscaja
  loc_C39C30: from_stack_1v = clscaja.RsFrmGet()
  loc_C39C35: FLdPr var_1B0
  loc_C39C38:  = Me.Fields
  loc_C39C3D: FLdPr var_1C8
  loc_C39C40: from_stack_2 = Me.Item(from_stack_1)
  loc_C39C45: FLdPr var_1CC
  loc_C39C48:  = Me.Value
  loc_C39C4D: FLdRfVar var_C4
  loc_C39C50: CR4Var
  loc_C39C51: PopFPR8
  loc_C39C52: LitI2_Byte 0
  loc_C39C54: CR8I2
  loc_C39C55: PopFPR8
  loc_C39C56: FLdRfVar var_B4
  loc_C39C59: CStrVarTmp
  loc_C39C5A: FStStrNoPop var_98
  loc_C39C5D: FLdI2 var_92
  loc_C39C60: ImpAdLdI2 MemVar_C3D064
  loc_C39C63: FLdPr Me
  loc_C39C66: MemLdRfVar from_stack_1.global_60
  loc_C39C69: NewIfNullPr clsasiento
  loc_C39C6C: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C39C71: FFree1Str var_98
  loc_C39C74: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C39C83: FFreeVar var_B4 = ""
  loc_C39C8A: FLdRfVar var_1D0
  loc_C39C8D: FLdPr Me
  loc_C39C90: MemLdRfVar from_stack_1.global_52
  loc_C39C93: NewIfNullPr clscaja
  loc_C39C96: from_stack_1 = clscaja.RecordCount
  loc_C39C9B: FLdRfVar var_138
  loc_C39C9E: FLdPr Me
  loc_C39CA1: MemLdRfVar from_stack_1.global_52
  loc_C39CA4: NewIfNullPr clscaja
  loc_C39CA7: from_stack_1 = clscaja.AbsolutePosition
  loc_C39CAC: ILdRf var_138
  loc_C39CAF: CR8I4
  loc_C39CB0: ILdRf var_1D0
  loc_C39CB3: CR8I4
  loc_C39CB4: DivR8
  loc_C39CB5: LitI2_Byte &H64
  loc_C39CB7: CR8I2
  loc_C39CB8: MulR8
  loc_C39CB9: CVarR4
  loc_C39CBD: PopAdLdVar
  loc_C39CBE: FLdPr Me
  loc_C39CC1: VCallAd Control_ID_ProgressBar
  loc_C39CC4: FStAdFunc var_A4
  loc_C39CC7: FLdPr var_A4
  loc_C39CCA: LateIdSt
  loc_C39CCF: FFree1Ad var_A4
  loc_C39CD2: FLdPr Me
  loc_C39CD5: MemLdRfVar from_stack_1.global_52
  loc_C39CD8: NewIfNullPr clscaja
  loc_C39CDB: Call clscaja.MoveSiguiente()
  loc_C39CE0: Branch loc_C39B4F
  loc_C39CE3: FLdRfVar var_B4
  loc_C39CE6: FLdRfVar var_15C
  loc_C39CE9: LitVarStr var_D4, "PatrPaco"
  loc_C39CEE: PopAdLdVar
  loc_C39CEF: FLdRfVar var_E8
  loc_C39CF2: FLdRfVar var_A4
  loc_C39CF5: FLdPr Me
  loc_C39CF8: MemLdRfVar from_stack_1.global_56
  loc_C39CFB: NewIfNullPr clsparaconta
  loc_C39CFE: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C39D03: FLdPr var_A4
  loc_C39D06:  = Me.Fields
  loc_C39D0B: FLdPr var_E8
  loc_C39D0E: from_stack_2 = Me.Item(from_stack_1)
  loc_C39D13: FLdPr var_15C
  loc_C39D16:  = Me.Value
  loc_C39D1B: LitI2_Byte 0
  loc_C39D1D: CR8I2
  loc_C39D1E: PopFPR8
  loc_C39D1F: FLdR8 var_90
  loc_C39D22: FLdRfVar var_B4
  loc_C39D25: CStrVarTmp
  loc_C39D26: FStStrNoPop var_98
  loc_C39D29: FLdI2 var_92
  loc_C39D2C: ImpAdLdI2 MemVar_C3D064
  loc_C39D2F: FLdPr Me
  loc_C39D32: MemLdRfVar from_stack_1.global_60
  loc_C39D35: NewIfNullPr clsasiento
  loc_C39D38: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C39D3D: FFree1Str var_98
  loc_C39D40: FFreeAd var_A4 = "": var_E8 = ""
  loc_C39D49: FFree1Var var_B4 = ""
  loc_C39D4C: FLdRfVar var_20E
  loc_C39D4F: NextUI1
  loc_C39D55: LitVarStr var_D4, "Asiento Automático de Aforos y Débitos"
  loc_C39D5A: PopAdLdVar
  loc_C39D5B: FLdPr Me
  loc_C39D5E: VCallAd Control_ID_StatusBar
  loc_C39D61: FStAdFunc var_A4
  loc_C39D64: FLdPr var_A4
  loc_C39D67: LateIdSt
  loc_C39D6C: FFree1Ad var_A4
  loc_C39D6F: LitStr "SELECT Distinct CodiTimo"
  loc_C39D72: LitStr " FROM cajaaforo ca"
  loc_C39D75: ConcatStr
  loc_C39D76: FStStrNoPop var_98
  loc_C39D79: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C39D7C: ConcatStr
  loc_C39D7D: FStStrNoPop var_9C
  loc_C39D80: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C39D83: ConcatStr
  loc_C39D84: FStStrNoPop var_A0
  loc_C39D87: LitStr " AND DebeCaja > 0"
  loc_C39D8A: ConcatStr
  loc_C39D8B: FStStrNoPop var_12C
  loc_C39D8E: LitStr " AND PatrCuco != PatrPaco"
  loc_C39D91: ConcatStr
  loc_C39D92: FStStrNoPop var_130
  loc_C39D95: FLdPr Me
  loc_C39D98: MemLdRfVar from_stack_1.global_52
  loc_C39D9B: NewIfNullPr clscaja
  loc_C39D9E: Call clscaja.RedefineRS(from_stack_1v)
  loc_C39DA3: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C39DB0: FLdRfVar var_138
  loc_C39DB3: FLdPr Me
  loc_C39DB6: MemLdRfVar from_stack_1.global_52
  loc_C39DB9: NewIfNullPr clscaja
  loc_C39DBC: from_stack_1 = clscaja.RecordCount
  loc_C39DC1: ILdRf var_138
  loc_C39DC4: LitI4 0
  loc_C39DC9: GtI4
  loc_C39DCA: BranchF loc_C3A4F7
  loc_C39DCD: FLdPr Me
  loc_C39DD0: MemLdRfVar from_stack_1.global_52
  loc_C39DD3: NewIfNullPr clscaja
  loc_C39DD6: Call clscaja.MoveFirst()
  loc_C39DDB: LitI4 0
  loc_C39DE0: FLdRfVar var_138
  loc_C39DE3: FLdPr Me
  loc_C39DE6: MemLdRfVar from_stack_1.global_52
  loc_C39DE9: NewIfNullPr clscaja
  loc_C39DEC: from_stack_1 = clscaja.RecordCount
  loc_C39DF1: ILdRf var_138
  loc_C39DF4: FLdRfVar var_20C
  loc_C39DF7: Redim
  loc_C39E01: LitI2_Byte 1
  loc_C39E03: CUI1I2
  loc_C39E05: FLdRfVar var_20E
  loc_C39E08: ILdRf var_20C
  loc_C39E0B: LitI2_Byte 1
  loc_C39E0D: FnUBound
  loc_C39E0F: CUI1I4
  loc_C39E11: ForUI1 var_222
  loc_C39E17: FLdRfVar var_B4
  loc_C39E1A: FLdRfVar var_15C
  loc_C39E1D: LitVarStr var_D4, "CodiTimo"
  loc_C39E22: PopAdLdVar
  loc_C39E23: FLdRfVar var_E8
  loc_C39E26: FLdRfVar var_A4
  loc_C39E29: FLdPr Me
  loc_C39E2C: MemLdRfVar from_stack_1.global_52
  loc_C39E2F: NewIfNullPr clscaja
  loc_C39E32: from_stack_1v = clscaja.RsFrmGet()
  loc_C39E37: FLdPr var_A4
  loc_C39E3A:  = Me.Fields
  loc_C39E3F: FLdPr var_E8
  loc_C39E42: from_stack_2 = Me.Item(from_stack_1)
  loc_C39E47: FLdPr var_15C
  loc_C39E4A:  = Me.Value
  loc_C39E4F: FLdRfVar var_B4
  loc_C39E52: CStrVarTmp
  loc_C39E53: FStStrNoPop var_98
  loc_C39E56: FLdUI1
  loc_C39E5A: CI4UI1
  loc_C39E5B: ILdRf var_20C
  loc_C39E5E: Ary1StStrCopy
  loc_C39E5F: FFree1Str var_98
  loc_C39E62: FFreeAd var_A4 = "": var_E8 = ""
  loc_C39E6B: FFree1Var var_B4 = ""
  loc_C39E6E: FLdPr Me
  loc_C39E71: MemLdRfVar from_stack_1.global_52
  loc_C39E74: NewIfNullPr clscaja
  loc_C39E77: Call clscaja.MoveSiguiente()
  loc_C39E7C: FLdRfVar var_20E
  loc_C39E7F: NextUI1
  loc_C39E85: LitI2_Byte 1
  loc_C39E87: CUI1I2
  loc_C39E89: FLdRfVar var_20E
  loc_C39E8C: ILdRf var_20C
  loc_C39E8F: LitI2_Byte 1
  loc_C39E91: FnUBound
  loc_C39E93: CUI1I4
  loc_C39E95: ForUI1 var_226
  loc_C39E9B: LitStr "SELECT CodiCuco, Sum(DebeCaja) DebeCaja, IFNULL(DetaTimo,'ERROR') DetaTimo"
  loc_C39E9E: LitStr " FROM cajaaforo ca"
  loc_C39EA1: ConcatStr
  loc_C39EA2: FStStrNoPop var_98
  loc_C39EA5: LitStr " LEFT JOIN recaudacion.tipomovi tm ON tm.CodiTimo = ca.CodiTimo"
  loc_C39EA8: ConcatStr
  loc_C39EA9: FStStrNoPop var_9C
  loc_C39EAC: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C39EAF: ConcatStr
  loc_C39EB0: FStStrNoPop var_A0
  loc_C39EB3: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C39EB6: ConcatStr
  loc_C39EB7: FStStrNoPop var_12C
  loc_C39EBA: LitStr " AND ca.CodiTimo = "
  loc_C39EBD: ConcatStr
  loc_C39EBE: FStStrNoPop var_130
  loc_C39EC1: FLdUI1
  loc_C39EC5: CI4UI1
  loc_C39EC6: ILdRf var_20C
  loc_C39EC9: Ary1LdI4
  loc_C39ECA: ConcatStr
  loc_C39ECB: FStStrNoPop var_134
  loc_C39ECE: LitStr " AND DebeCaja > 0"
  loc_C39ED1: ConcatStr
  loc_C39ED2: FStStrNoPop var_1D4
  loc_C39ED5: LitStr " AND PatrCuco != PatrPaco"
  loc_C39ED8: ConcatStr
  loc_C39ED9: FStStrNoPop var_1D8
  loc_C39EDC: LitStr " GROUP BY CodiCuco"
  loc_C39EDF: ConcatStr
  loc_C39EE0: FStStrNoPop var_1E8
  loc_C39EE3: LitStr " ORDER BY CodiCuco;"
  loc_C39EE6: ConcatStr
  loc_C39EE7: FStStrNoPop var_1EC
  loc_C39EEA: FLdPr Me
  loc_C39EED: MemLdRfVar from_stack_1.global_52
  loc_C39EF0: NewIfNullPr clscaja
  loc_C39EF3: Call clscaja.RedefineRS(from_stack_1v)
  loc_C39EF8: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = "": var_1D8 = "": var_1E8 = ""
  loc_C39F0F: FLdRfVar var_138
  loc_C39F12: FLdPr Me
  loc_C39F15: MemLdRfVar from_stack_1.global_52
  loc_C39F18: NewIfNullPr clscaja
  loc_C39F1B: from_stack_1 = clscaja.RecordCount
  loc_C39F20: ILdRf var_138
  loc_C39F23: LitI4 0
  loc_C39F28: GtI4
  loc_C39F29: BranchF loc_C3A218
  loc_C39F2C: FLdRfVar var_B4
  loc_C39F2F: FLdRfVar var_15C
  loc_C39F32: LitVarStr var_D4, "DetaTimo"
  loc_C39F37: PopAdLdVar
  loc_C39F38: FLdRfVar var_E8
  loc_C39F3B: FLdRfVar var_A4
  loc_C39F3E: FLdPr Me
  loc_C39F41: MemLdRfVar from_stack_1.global_52
  loc_C39F44: NewIfNullPr clscaja
  loc_C39F47: from_stack_1v = clscaja.RsFrmGet()
  loc_C39F4C: FLdPr var_A4
  loc_C39F4F:  = Me.Fields
  loc_C39F54: FLdPr var_E8
  loc_C39F57: from_stack_2 = Me.Item(from_stack_1)
  loc_C39F5C: FLdPr var_15C
  loc_C39F5F:  = Me.Value
  loc_C39F64: LitVarI2 var_C4, 140
  loc_C39F69: LitI4 1
  loc_C39F6E: FLdRfVar var_B4
  loc_C39F71: CStrVarTmp
  loc_C39F72: FStStrNoPop var_98
  loc_C39F75: ImpAdCallI2 Mid$(, , )
  loc_C39F7A: FStStrNoPop var_9C
  loc_C39F7D: LitStr " ("
  loc_C39F80: ConcatStr
  loc_C39F81: FStStrNoPop var_A0
  loc_C39F84: FLdUI1
  loc_C39F88: CI4UI1
  loc_C39F89: ILdRf var_20C
  loc_C39F8C: Ary1LdI4
  loc_C39F8D: ConcatStr
  loc_C39F8E: FStStrNoPop var_12C
  loc_C39F91: LitStr ")"
  loc_C39F94: ConcatStr
  loc_C39F95: CVarStr var_E4
  loc_C39F98: PopAdLdVar
  loc_C39F99: FLdPr Me
  loc_C39F9C: VCallAd Control_ID_StatusBar
  loc_C39F9F: FStAdFunc var_1B0
  loc_C39FA2: FLdPr var_1B0
  loc_C39FA5: LateIdSt
  loc_C39FAA: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C39FB5: FFreeAd var_A4 = "": var_E8 = "": var_15C = ""
  loc_C39FC0: FFreeVar var_B4 = "": var_C4 = ""
  loc_C39FC9: FLdPr Me
  loc_C39FCC: VCallAd Control_ID_FechCajaHastaMsk
  loc_C39FCF: FStAdFunc var_A4
  loc_C39FD2: FLdPr var_A4
  loc_C39FD5: LateIdLdVar var_B4 DispID_15 0
  loc_C39FDC: PopAd
  loc_C39FDE: FLdPr Me
  loc_C39FE1: VCallAd Control_ID_StatusBar
  loc_C39FE4: FStAdFunc var_E8
  loc_C39FE7: FLdPr var_E8
  loc_C39FEA: LateIdLdVar var_C4 DispID_1 0
  loc_C39FF1: PopAd
  loc_C39FF3: FLdRfVar var_1C2
  loc_C39FF6: LitI4 0
  loc_C39FFB: LitI4 0
  loc_C3A000: LitStr "Asiento Automático de "
  loc_C3A003: FLdRfVar var_C4
  loc_C3A006: CStrVarTmp
  loc_C3A007: FStStrNoPop var_98
  loc_C3A00A: ConcatStr
  loc_C3A00B: FStStrNoPop var_A0
  loc_C3A00E: LitI2_Byte &H1A
  loc_C3A010: FLdRfVar var_B4
  loc_C3A013: CStrVarTmp
  loc_C3A014: FStStrNoPop var_9C
  loc_C3A017: ImpAdLdI2 MemVar_C3D064
  loc_C3A01A: FLdPr Me
  loc_C3A01D: MemLdRfVar from_stack_1.global_60
  loc_C3A020: NewIfNullPr clsasiento
  loc_C3A023: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3A028: FLdI2 var_1C2
  loc_C3A02B: FStI2 var_92
  loc_C3A02E: FFreeStr var_98 = "": var_9C = ""
  loc_C3A037: FFreeAd var_A4 = ""
  loc_C3A03E: FFreeVar var_B4 = ""
  loc_C3A045: FLdPr Me
  loc_C3A048: MemLdI2 global_68
  loc_C3A04B: LitI2_Byte 0
  loc_C3A04D: EqI2
  loc_C3A04E: BranchF loc_C3A05A
  loc_C3A051: FLdI2 var_92
  loc_C3A054: FLdPr Me
  loc_C3A057: MemStI2 global_68
  loc_C3A05A: FLdPr Me
  loc_C3A05D: MemLdI2 global_70
  loc_C3A060: FLdI2 var_92
  loc_C3A063: LtI2
  loc_C3A064: BranchF loc_C3A070
  loc_C3A067: FLdI2 var_92
  loc_C3A06A: FLdPr Me
  loc_C3A06D: MemStI2 global_70
  loc_C3A070: FLdPr Me
  loc_C3A073: MemLdRfVar from_stack_1.global_52
  loc_C3A076: NewIfNullPr clscaja
  loc_C3A079: Call clscaja.MoveFirst()
  loc_C3A07E: LitI2_Byte 0
  loc_C3A080: CR8I2
  loc_C3A081: FStFPR8 var_90
  loc_C3A084: FLdRfVar var_1C2
  loc_C3A087: FLdPr Me
  loc_C3A08A: MemLdRfVar from_stack_1.global_52
  loc_C3A08D: NewIfNullPr clscaja
  loc_C3A090: from_stack_1 = clscaja.EOF
  loc_C3A095: FLdI2 var_1C2
  loc_C3A098: NotI4
  loc_C3A099: BranchF loc_C3A218
  loc_C3A09C: FLdRfVar var_15C
  loc_C3A09F: LitVarStr var_118, "DebeCaja"
  loc_C3A0A4: PopAdLdVar
  loc_C3A0A5: FLdRfVar var_E8
  loc_C3A0A8: FLdRfVar var_A4
  loc_C3A0AB: FLdPr Me
  loc_C3A0AE: MemLdRfVar from_stack_1.global_52
  loc_C3A0B1: NewIfNullPr clscaja
  loc_C3A0B4: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A0B9: FLdPr var_A4
  loc_C3A0BC:  = Me.Fields
  loc_C3A0C1: FLdPr var_E8
  loc_C3A0C4: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A0C9: LitI4 2
  loc_C3A0CE: FLdRfVar var_90
  loc_C3A0D1: CVarRef
  loc_C3A0D6: FLdRfVar var_B4
  loc_C3A0D9: ImpAdCallFPR4  = Round(, )
  loc_C3A0DE: FLdRfVar var_B4
  loc_C3A0E1: LitI4 2
  loc_C3A0E6: FLdZeroAd var_15C
  loc_C3A0E9: CVarAd
  loc_C3A0ED: FLdRfVar var_E4
  loc_C3A0F0: ImpAdCallFPR4  = Round(, )
  loc_C3A0F5: FLdRfVar var_E4
  loc_C3A0F8: AddVar var_F8
  loc_C3A0FC: CR4Var
  loc_C3A0FD: FStFPR8 var_90
  loc_C3A100: FFreeAd var_A4 = ""
  loc_C3A107: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3A112: FLdRfVar var_B4
  loc_C3A115: FLdRfVar var_15C
  loc_C3A118: LitVarStr var_D4, "CodiCuco"
  loc_C3A11D: PopAdLdVar
  loc_C3A11E: FLdRfVar var_E8
  loc_C3A121: FLdRfVar var_A4
  loc_C3A124: FLdPr Me
  loc_C3A127: MemLdRfVar from_stack_1.global_52
  loc_C3A12A: NewIfNullPr clscaja
  loc_C3A12D: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A132: FLdPr var_A4
  loc_C3A135:  = Me.Fields
  loc_C3A13A: FLdPr var_E8
  loc_C3A13D: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A142: FLdPr var_15C
  loc_C3A145:  = Me.Value
  loc_C3A14A: FLdRfVar var_C4
  loc_C3A14D: FLdRfVar var_1CC
  loc_C3A150: LitVarStr var_118, "DebeCaja"
  loc_C3A155: PopAdLdVar
  loc_C3A156: FLdRfVar var_1C8
  loc_C3A159: FLdRfVar var_1B0
  loc_C3A15C: FLdPr Me
  loc_C3A15F: MemLdRfVar from_stack_1.global_52
  loc_C3A162: NewIfNullPr clscaja
  loc_C3A165: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A16A: FLdPr var_1B0
  loc_C3A16D:  = Me.Fields
  loc_C3A172: FLdPr var_1C8
  loc_C3A175: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A17A: FLdPr var_1CC
  loc_C3A17D:  = Me.Value
  loc_C3A182: LitI2_Byte 0
  loc_C3A184: CR8I2
  loc_C3A185: PopFPR8
  loc_C3A186: FLdRfVar var_C4
  loc_C3A189: CR4Var
  loc_C3A18A: PopFPR8
  loc_C3A18B: FLdRfVar var_B4
  loc_C3A18E: CStrVarTmp
  loc_C3A18F: FStStrNoPop var_98
  loc_C3A192: FLdI2 var_92
  loc_C3A195: ImpAdLdI2 MemVar_C3D064
  loc_C3A198: FLdPr Me
  loc_C3A19B: MemLdRfVar from_stack_1.global_60
  loc_C3A19E: NewIfNullPr clsasiento
  loc_C3A1A1: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3A1A6: FFree1Str var_98
  loc_C3A1A9: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3A1B8: FFreeVar var_B4 = ""
  loc_C3A1BF: FLdRfVar var_1D0
  loc_C3A1C2: FLdPr Me
  loc_C3A1C5: MemLdRfVar from_stack_1.global_52
  loc_C3A1C8: NewIfNullPr clscaja
  loc_C3A1CB: from_stack_1 = clscaja.RecordCount
  loc_C3A1D0: FLdRfVar var_138
  loc_C3A1D3: FLdPr Me
  loc_C3A1D6: MemLdRfVar from_stack_1.global_52
  loc_C3A1D9: NewIfNullPr clscaja
  loc_C3A1DC: from_stack_1 = clscaja.AbsolutePosition
  loc_C3A1E1: ILdRf var_138
  loc_C3A1E4: CR8I4
  loc_C3A1E5: ILdRf var_1D0
  loc_C3A1E8: CR8I4
  loc_C3A1E9: DivR8
  loc_C3A1EA: LitI2_Byte &H64
  loc_C3A1EC: CR8I2
  loc_C3A1ED: MulR8
  loc_C3A1EE: CVarR4
  loc_C3A1F2: PopAdLdVar
  loc_C3A1F3: FLdPr Me
  loc_C3A1F6: VCallAd Control_ID_ProgressBar
  loc_C3A1F9: FStAdFunc var_A4
  loc_C3A1FC: FLdPr var_A4
  loc_C3A1FF: LateIdSt
  loc_C3A204: FFree1Ad var_A4
  loc_C3A207: FLdPr Me
  loc_C3A20A: MemLdRfVar from_stack_1.global_52
  loc_C3A20D: NewIfNullPr clscaja
  loc_C3A210: Call clscaja.MoveSiguiente()
  loc_C3A215: Branch loc_C3A084
  loc_C3A218: LitStr "SELECT PatrCuco, Sum(DebeCaja) DebeCaja, IFNULL(DetaTimo,'ERROR') DetaTimo"
  loc_C3A21B: LitStr " FROM cajaaforo ca"
  loc_C3A21E: ConcatStr
  loc_C3A21F: FStStrNoPop var_98
  loc_C3A222: LitStr " LEFT JOIN recaudacion.tipomovi tm ON tm.CodiTimo = ca.CodiTimo"
  loc_C3A225: ConcatStr
  loc_C3A226: FStStrNoPop var_9C
  loc_C3A229: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C3A22C: ConcatStr
  loc_C3A22D: FStStrNoPop var_A0
  loc_C3A230: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3A233: ConcatStr
  loc_C3A234: FStStrNoPop var_12C
  loc_C3A237: LitStr " AND ca.CodiTimo = "
  loc_C3A23A: ConcatStr
  loc_C3A23B: FStStrNoPop var_130
  loc_C3A23E: FLdUI1
  loc_C3A242: CI4UI1
  loc_C3A243: ILdRf var_20C
  loc_C3A246: Ary1LdI4
  loc_C3A247: ConcatStr
  loc_C3A248: FStStrNoPop var_134
  loc_C3A24B: LitStr " AND DebeCaja > 0"
  loc_C3A24E: ConcatStr
  loc_C3A24F: FStStrNoPop var_1D4
  loc_C3A252: LitStr " AND PatrCuco != PatrPaco"
  loc_C3A255: ConcatStr
  loc_C3A256: FStStrNoPop var_1D8
  loc_C3A259: LitStr " GROUP BY PatrCuco"
  loc_C3A25C: ConcatStr
  loc_C3A25D: FStStrNoPop var_1E8
  loc_C3A260: LitStr " ORDER BY PatrCuco "
  loc_C3A263: ConcatStr
  loc_C3A264: FStStrNoPop var_1EC
  loc_C3A267: FLdPr Me
  loc_C3A26A: MemLdRfVar from_stack_1.global_52
  loc_C3A26D: NewIfNullPr clscaja
  loc_C3A270: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3A275: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = "": var_1D8 = "": var_1E8 = ""
  loc_C3A28C: FLdRfVar var_138
  loc_C3A28F: FLdPr Me
  loc_C3A292: MemLdRfVar from_stack_1.global_52
  loc_C3A295: NewIfNullPr clscaja
  loc_C3A298: from_stack_1 = clscaja.RecordCount
  loc_C3A29D: ILdRf var_138
  loc_C3A2A0: LitI4 0
  loc_C3A2A5: GtI4
  loc_C3A2A6: BranchF loc_C3A4EE
  loc_C3A2A9: FLdRfVar var_B4
  loc_C3A2AC: FLdRfVar var_15C
  loc_C3A2AF: LitVarStr var_D4, "DetaTimo"
  loc_C3A2B4: PopAdLdVar
  loc_C3A2B5: FLdRfVar var_E8
  loc_C3A2B8: FLdRfVar var_A4
  loc_C3A2BB: FLdPr Me
  loc_C3A2BE: MemLdRfVar from_stack_1.global_52
  loc_C3A2C1: NewIfNullPr clscaja
  loc_C3A2C4: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A2C9: FLdPr var_A4
  loc_C3A2CC:  = Me.Fields
  loc_C3A2D1: FLdPr var_E8
  loc_C3A2D4: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A2D9: FLdPr var_15C
  loc_C3A2DC:  = Me.Value
  loc_C3A2E1: LitVarI2 var_C4, 140
  loc_C3A2E6: LitI4 1
  loc_C3A2EB: FLdRfVar var_B4
  loc_C3A2EE: CStrVarTmp
  loc_C3A2EF: FStStrNoPop var_98
  loc_C3A2F2: ImpAdCallI2 Mid$(, , )
  loc_C3A2F7: FStStrNoPop var_9C
  loc_C3A2FA: LitStr " ("
  loc_C3A2FD: ConcatStr
  loc_C3A2FE: FStStrNoPop var_A0
  loc_C3A301: FLdUI1
  loc_C3A305: CI4UI1
  loc_C3A306: ILdRf var_20C
  loc_C3A309: Ary1LdI4
  loc_C3A30A: ConcatStr
  loc_C3A30B: FStStrNoPop var_12C
  loc_C3A30E: LitStr ")"
  loc_C3A311: ConcatStr
  loc_C3A312: CVarStr var_E4
  loc_C3A315: PopAdLdVar
  loc_C3A316: FLdPr Me
  loc_C3A319: VCallAd Control_ID_StatusBar
  loc_C3A31C: FStAdFunc var_1B0
  loc_C3A31F: FLdPr var_1B0
  loc_C3A322: LateIdSt
  loc_C3A327: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C3A332: FFreeAd var_A4 = "": var_E8 = "": var_15C = ""
  loc_C3A33D: FFreeVar var_B4 = "": var_C4 = ""
  loc_C3A346: FLdPr Me
  loc_C3A349: MemLdRfVar from_stack_1.global_52
  loc_C3A34C: NewIfNullPr clscaja
  loc_C3A34F: Call clscaja.MoveFirst()
  loc_C3A354: LitI2_Byte 0
  loc_C3A356: CR8I2
  loc_C3A357: FStFPR8 var_90
  loc_C3A35A: FLdRfVar var_1C2
  loc_C3A35D: FLdPr Me
  loc_C3A360: MemLdRfVar from_stack_1.global_52
  loc_C3A363: NewIfNullPr clscaja
  loc_C3A366: from_stack_1 = clscaja.EOF
  loc_C3A36B: FLdI2 var_1C2
  loc_C3A36E: NotI4
  loc_C3A36F: BranchF loc_C3A4EE
  loc_C3A372: FLdRfVar var_15C
  loc_C3A375: LitVarStr var_118, "DebeCaja"
  loc_C3A37A: PopAdLdVar
  loc_C3A37B: FLdRfVar var_E8
  loc_C3A37E: FLdRfVar var_A4
  loc_C3A381: FLdPr Me
  loc_C3A384: MemLdRfVar from_stack_1.global_52
  loc_C3A387: NewIfNullPr clscaja
  loc_C3A38A: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A38F: FLdPr var_A4
  loc_C3A392:  = Me.Fields
  loc_C3A397: FLdPr var_E8
  loc_C3A39A: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A39F: LitI4 2
  loc_C3A3A4: FLdRfVar var_90
  loc_C3A3A7: CVarRef
  loc_C3A3AC: FLdRfVar var_B4
  loc_C3A3AF: ImpAdCallFPR4  = Round(, )
  loc_C3A3B4: FLdRfVar var_B4
  loc_C3A3B7: LitI4 2
  loc_C3A3BC: FLdZeroAd var_15C
  loc_C3A3BF: CVarAd
  loc_C3A3C3: FLdRfVar var_E4
  loc_C3A3C6: ImpAdCallFPR4  = Round(, )
  loc_C3A3CB: FLdRfVar var_E4
  loc_C3A3CE: AddVar var_F8
  loc_C3A3D2: CR4Var
  loc_C3A3D3: FStFPR8 var_90
  loc_C3A3D6: FFreeAd var_A4 = ""
  loc_C3A3DD: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3A3E8: FLdRfVar var_B4
  loc_C3A3EB: FLdRfVar var_15C
  loc_C3A3EE: LitVarStr var_D4, "PatrCuco"
  loc_C3A3F3: PopAdLdVar
  loc_C3A3F4: FLdRfVar var_E8
  loc_C3A3F7: FLdRfVar var_A4
  loc_C3A3FA: FLdPr Me
  loc_C3A3FD: MemLdRfVar from_stack_1.global_52
  loc_C3A400: NewIfNullPr clscaja
  loc_C3A403: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A408: FLdPr var_A4
  loc_C3A40B:  = Me.Fields
  loc_C3A410: FLdPr var_E8
  loc_C3A413: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A418: FLdPr var_15C
  loc_C3A41B:  = Me.Value
  loc_C3A420: FLdRfVar var_C4
  loc_C3A423: FLdRfVar var_1CC
  loc_C3A426: LitVarStr var_118, "DebeCaja"
  loc_C3A42B: PopAdLdVar
  loc_C3A42C: FLdRfVar var_1C8
  loc_C3A42F: FLdRfVar var_1B0
  loc_C3A432: FLdPr Me
  loc_C3A435: MemLdRfVar from_stack_1.global_52
  loc_C3A438: NewIfNullPr clscaja
  loc_C3A43B: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A440: FLdPr var_1B0
  loc_C3A443:  = Me.Fields
  loc_C3A448: FLdPr var_1C8
  loc_C3A44B: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A450: FLdPr var_1CC
  loc_C3A453:  = Me.Value
  loc_C3A458: FLdRfVar var_C4
  loc_C3A45B: CR4Var
  loc_C3A45C: PopFPR8
  loc_C3A45D: LitI2_Byte 0
  loc_C3A45F: CR8I2
  loc_C3A460: PopFPR8
  loc_C3A461: FLdRfVar var_B4
  loc_C3A464: CStrVarTmp
  loc_C3A465: FStStrNoPop var_98
  loc_C3A468: FLdI2 var_92
  loc_C3A46B: ImpAdLdI2 MemVar_C3D064
  loc_C3A46E: FLdPr Me
  loc_C3A471: MemLdRfVar from_stack_1.global_60
  loc_C3A474: NewIfNullPr clsasiento
  loc_C3A477: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3A47C: FFree1Str var_98
  loc_C3A47F: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3A48E: FFreeVar var_B4 = ""
  loc_C3A495: FLdRfVar var_1D0
  loc_C3A498: FLdPr Me
  loc_C3A49B: MemLdRfVar from_stack_1.global_52
  loc_C3A49E: NewIfNullPr clscaja
  loc_C3A4A1: from_stack_1 = clscaja.RecordCount
  loc_C3A4A6: FLdRfVar var_138
  loc_C3A4A9: FLdPr Me
  loc_C3A4AC: MemLdRfVar from_stack_1.global_52
  loc_C3A4AF: NewIfNullPr clscaja
  loc_C3A4B2: from_stack_1 = clscaja.AbsolutePosition
  loc_C3A4B7: ILdRf var_138
  loc_C3A4BA: CR8I4
  loc_C3A4BB: ILdRf var_1D0
  loc_C3A4BE: CR8I4
  loc_C3A4BF: DivR8
  loc_C3A4C0: LitI2_Byte &H64
  loc_C3A4C2: CR8I2
  loc_C3A4C3: MulR8
  loc_C3A4C4: CVarR4
  loc_C3A4C8: PopAdLdVar
  loc_C3A4C9: FLdPr Me
  loc_C3A4CC: VCallAd Control_ID_ProgressBar
  loc_C3A4CF: FStAdFunc var_A4
  loc_C3A4D2: FLdPr var_A4
  loc_C3A4D5: LateIdSt
  loc_C3A4DA: FFree1Ad var_A4
  loc_C3A4DD: FLdPr Me
  loc_C3A4E0: MemLdRfVar from_stack_1.global_52
  loc_C3A4E3: NewIfNullPr clscaja
  loc_C3A4E6: Call clscaja.MoveSiguiente()
  loc_C3A4EB: Branch loc_C3A35A
  loc_C3A4EE: FLdRfVar var_20E
  loc_C3A4F1: NextUI1
  loc_C3A4F7: LitVarStr var_D4, "Asiento Automático de Créditos, Prescripciones, Condonaciones, Exenciones, Descuentos y Cobrado"
  loc_C3A4FC: PopAdLdVar
  loc_C3A4FD: FLdPr Me
  loc_C3A500: VCallAd Control_ID_StatusBar
  loc_C3A503: FStAdFunc var_A4
  loc_C3A506: FLdPr var_A4
  loc_C3A509: LateIdSt
  loc_C3A50E: FFree1Ad var_A4
  loc_C3A511: LitStr "SELECT Distinct CodiTimo"
  loc_C3A514: LitStr " FROM cajaaforo ca"
  loc_C3A517: ConcatStr
  loc_C3A518: FStStrNoPop var_98
  loc_C3A51B: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C3A51E: ConcatStr
  loc_C3A51F: FStStrNoPop var_9C
  loc_C3A522: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3A525: ConcatStr
  loc_C3A526: FStStrNoPop var_A0
  loc_C3A529: LitStr " AND HabeCaja > 0"
  loc_C3A52C: ConcatStr
  loc_C3A52D: FStStrNoPop var_12C
  loc_C3A530: LitStr " AND PatrCuco != PatrPaco"
  loc_C3A533: ConcatStr
  loc_C3A534: FStStrNoPop var_130
  loc_C3A537: FLdPr Me
  loc_C3A53A: MemLdRfVar from_stack_1.global_52
  loc_C3A53D: NewIfNullPr clscaja
  loc_C3A540: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3A545: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C3A552: FLdRfVar var_138
  loc_C3A555: FLdPr Me
  loc_C3A558: MemLdRfVar from_stack_1.global_52
  loc_C3A55B: NewIfNullPr clscaja
  loc_C3A55E: from_stack_1 = clscaja.RecordCount
  loc_C3A563: ILdRf var_138
  loc_C3A566: LitI4 0
  loc_C3A56B: GtI4
  loc_C3A56C: BranchF loc_C3AC99
  loc_C3A56F: FLdPr Me
  loc_C3A572: MemLdRfVar from_stack_1.global_52
  loc_C3A575: NewIfNullPr clscaja
  loc_C3A578: Call clscaja.MoveFirst()
  loc_C3A57D: LitI4 0
  loc_C3A582: FLdRfVar var_138
  loc_C3A585: FLdPr Me
  loc_C3A588: MemLdRfVar from_stack_1.global_52
  loc_C3A58B: NewIfNullPr clscaja
  loc_C3A58E: from_stack_1 = clscaja.RecordCount
  loc_C3A593: ILdRf var_138
  loc_C3A596: FLdRfVar var_20C
  loc_C3A599: Redim
  loc_C3A5A3: LitI2_Byte 1
  loc_C3A5A5: CUI1I2
  loc_C3A5A7: FLdRfVar var_20E
  loc_C3A5AA: ILdRf var_20C
  loc_C3A5AD: LitI2_Byte 1
  loc_C3A5AF: FnUBound
  loc_C3A5B1: CUI1I4
  loc_C3A5B3: ForUI1 var_22A
  loc_C3A5B9: FLdRfVar var_B4
  loc_C3A5BC: FLdRfVar var_15C
  loc_C3A5BF: LitVarStr var_D4, "CodiTimo"
  loc_C3A5C4: PopAdLdVar
  loc_C3A5C5: FLdRfVar var_E8
  loc_C3A5C8: FLdRfVar var_A4
  loc_C3A5CB: FLdPr Me
  loc_C3A5CE: MemLdRfVar from_stack_1.global_52
  loc_C3A5D1: NewIfNullPr clscaja
  loc_C3A5D4: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A5D9: FLdPr var_A4
  loc_C3A5DC:  = Me.Fields
  loc_C3A5E1: FLdPr var_E8
  loc_C3A5E4: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A5E9: FLdPr var_15C
  loc_C3A5EC:  = Me.Value
  loc_C3A5F1: FLdRfVar var_B4
  loc_C3A5F4: CStrVarTmp
  loc_C3A5F5: FStStrNoPop var_98
  loc_C3A5F8: FLdUI1
  loc_C3A5FC: CI4UI1
  loc_C3A5FD: ILdRf var_20C
  loc_C3A600: Ary1StStrCopy
  loc_C3A601: FFree1Str var_98
  loc_C3A604: FFreeAd var_A4 = "": var_E8 = ""
  loc_C3A60D: FFree1Var var_B4 = ""
  loc_C3A610: FLdPr Me
  loc_C3A613: MemLdRfVar from_stack_1.global_52
  loc_C3A616: NewIfNullPr clscaja
  loc_C3A619: Call clscaja.MoveSiguiente()
  loc_C3A61E: FLdRfVar var_20E
  loc_C3A621: NextUI1
  loc_C3A627: LitI2_Byte 1
  loc_C3A629: CUI1I2
  loc_C3A62B: FLdRfVar var_20E
  loc_C3A62E: ILdRf var_20C
  loc_C3A631: LitI2_Byte 1
  loc_C3A633: FnUBound
  loc_C3A635: CUI1I4
  loc_C3A637: ForUI1 var_22E
  loc_C3A63D: LitStr "SELECT CodiCuco, Sum(HabeCaja) HabeCaja, IFNULL(DetaTimo,'ERROR') DetaTimo"
  loc_C3A640: LitStr " FROM cajaaforo ca"
  loc_C3A643: ConcatStr
  loc_C3A644: FStStrNoPop var_98
  loc_C3A647: LitStr " LEFT JOIN recaudacion.tipomovi tm ON tm.CodiTimo = ca.CodiTimo"
  loc_C3A64A: ConcatStr
  loc_C3A64B: FStStrNoPop var_9C
  loc_C3A64E: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C3A651: ConcatStr
  loc_C3A652: FStStrNoPop var_A0
  loc_C3A655: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3A658: ConcatStr
  loc_C3A659: FStStrNoPop var_12C
  loc_C3A65C: LitStr " AND ca.CodiTimo = "
  loc_C3A65F: ConcatStr
  loc_C3A660: FStStrNoPop var_130
  loc_C3A663: FLdUI1
  loc_C3A667: CI4UI1
  loc_C3A668: ILdRf var_20C
  loc_C3A66B: Ary1LdI4
  loc_C3A66C: ConcatStr
  loc_C3A66D: FStStrNoPop var_134
  loc_C3A670: LitStr " AND HabeCaja > 0"
  loc_C3A673: ConcatStr
  loc_C3A674: FStStrNoPop var_1D4
  loc_C3A677: LitStr " AND PatrCuco != PatrPaco"
  loc_C3A67A: ConcatStr
  loc_C3A67B: FStStrNoPop var_1D8
  loc_C3A67E: LitStr " GROUP BY CodiCuco"
  loc_C3A681: ConcatStr
  loc_C3A682: FStStrNoPop var_1E8
  loc_C3A685: LitStr " ORDER BY CodiCuco;"
  loc_C3A688: ConcatStr
  loc_C3A689: FStStrNoPop var_1EC
  loc_C3A68C: FLdPr Me
  loc_C3A68F: MemLdRfVar from_stack_1.global_52
  loc_C3A692: NewIfNullPr clscaja
  loc_C3A695: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3A69A: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = "": var_1D8 = "": var_1E8 = ""
  loc_C3A6B1: FLdRfVar var_138
  loc_C3A6B4: FLdPr Me
  loc_C3A6B7: MemLdRfVar from_stack_1.global_52
  loc_C3A6BA: NewIfNullPr clscaja
  loc_C3A6BD: from_stack_1 = clscaja.RecordCount
  loc_C3A6C2: ILdRf var_138
  loc_C3A6C5: LitI4 0
  loc_C3A6CA: GtI4
  loc_C3A6CB: BranchF loc_C3A9BA
  loc_C3A6CE: FLdRfVar var_B4
  loc_C3A6D1: FLdRfVar var_15C
  loc_C3A6D4: LitVarStr var_D4, "DetaTimo"
  loc_C3A6D9: PopAdLdVar
  loc_C3A6DA: FLdRfVar var_E8
  loc_C3A6DD: FLdRfVar var_A4
  loc_C3A6E0: FLdPr Me
  loc_C3A6E3: MemLdRfVar from_stack_1.global_52
  loc_C3A6E6: NewIfNullPr clscaja
  loc_C3A6E9: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A6EE: FLdPr var_A4
  loc_C3A6F1:  = Me.Fields
  loc_C3A6F6: FLdPr var_E8
  loc_C3A6F9: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A6FE: FLdPr var_15C
  loc_C3A701:  = Me.Value
  loc_C3A706: LitVarI2 var_C4, 140
  loc_C3A70B: LitI4 1
  loc_C3A710: FLdRfVar var_B4
  loc_C3A713: CStrVarTmp
  loc_C3A714: FStStrNoPop var_98
  loc_C3A717: ImpAdCallI2 Mid$(, , )
  loc_C3A71C: FStStrNoPop var_9C
  loc_C3A71F: LitStr " ("
  loc_C3A722: ConcatStr
  loc_C3A723: FStStrNoPop var_A0
  loc_C3A726: FLdUI1
  loc_C3A72A: CI4UI1
  loc_C3A72B: ILdRf var_20C
  loc_C3A72E: Ary1LdI4
  loc_C3A72F: ConcatStr
  loc_C3A730: FStStrNoPop var_12C
  loc_C3A733: LitStr ")"
  loc_C3A736: ConcatStr
  loc_C3A737: CVarStr var_E4
  loc_C3A73A: PopAdLdVar
  loc_C3A73B: FLdPr Me
  loc_C3A73E: VCallAd Control_ID_StatusBar
  loc_C3A741: FStAdFunc var_1B0
  loc_C3A744: FLdPr var_1B0
  loc_C3A747: LateIdSt
  loc_C3A74C: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C3A757: FFreeAd var_A4 = "": var_E8 = "": var_15C = ""
  loc_C3A762: FFreeVar var_B4 = "": var_C4 = ""
  loc_C3A76B: FLdPr Me
  loc_C3A76E: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3A771: FStAdFunc var_A4
  loc_C3A774: FLdPr var_A4
  loc_C3A777: LateIdLdVar var_B4 DispID_15 0
  loc_C3A77E: PopAd
  loc_C3A780: FLdPr Me
  loc_C3A783: VCallAd Control_ID_StatusBar
  loc_C3A786: FStAdFunc var_E8
  loc_C3A789: FLdPr var_E8
  loc_C3A78C: LateIdLdVar var_C4 DispID_1 0
  loc_C3A793: PopAd
  loc_C3A795: FLdRfVar var_1C2
  loc_C3A798: LitI4 0
  loc_C3A79D: LitI4 0
  loc_C3A7A2: LitStr "Asiento Automático de "
  loc_C3A7A5: FLdRfVar var_C4
  loc_C3A7A8: CStrVarTmp
  loc_C3A7A9: FStStrNoPop var_98
  loc_C3A7AC: ConcatStr
  loc_C3A7AD: FStStrNoPop var_A0
  loc_C3A7B0: LitI2_Byte &H1A
  loc_C3A7B2: FLdRfVar var_B4
  loc_C3A7B5: CStrVarTmp
  loc_C3A7B6: FStStrNoPop var_9C
  loc_C3A7B9: ImpAdLdI2 MemVar_C3D064
  loc_C3A7BC: FLdPr Me
  loc_C3A7BF: MemLdRfVar from_stack_1.global_60
  loc_C3A7C2: NewIfNullPr clsasiento
  loc_C3A7C5: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3A7CA: FLdI2 var_1C2
  loc_C3A7CD: FStI2 var_92
  loc_C3A7D0: FFreeStr var_98 = "": var_9C = ""
  loc_C3A7D9: FFreeAd var_A4 = ""
  loc_C3A7E0: FFreeVar var_B4 = ""
  loc_C3A7E7: FLdPr Me
  loc_C3A7EA: MemLdI2 global_68
  loc_C3A7ED: LitI2_Byte 0
  loc_C3A7EF: EqI2
  loc_C3A7F0: BranchF loc_C3A7FC
  loc_C3A7F3: FLdI2 var_92
  loc_C3A7F6: FLdPr Me
  loc_C3A7F9: MemStI2 global_68
  loc_C3A7FC: FLdPr Me
  loc_C3A7FF: MemLdI2 global_70
  loc_C3A802: FLdI2 var_92
  loc_C3A805: LtI2
  loc_C3A806: BranchF loc_C3A812
  loc_C3A809: FLdI2 var_92
  loc_C3A80C: FLdPr Me
  loc_C3A80F: MemStI2 global_70
  loc_C3A812: FLdPr Me
  loc_C3A815: MemLdRfVar from_stack_1.global_52
  loc_C3A818: NewIfNullPr clscaja
  loc_C3A81B: Call clscaja.MoveFirst()
  loc_C3A820: LitI2_Byte 0
  loc_C3A822: CR8I2
  loc_C3A823: FStFPR8 var_90
  loc_C3A826: FLdRfVar var_1C2
  loc_C3A829: FLdPr Me
  loc_C3A82C: MemLdRfVar from_stack_1.global_52
  loc_C3A82F: NewIfNullPr clscaja
  loc_C3A832: from_stack_1 = clscaja.EOF
  loc_C3A837: FLdI2 var_1C2
  loc_C3A83A: NotI4
  loc_C3A83B: BranchF loc_C3A9BA
  loc_C3A83E: FLdRfVar var_15C
  loc_C3A841: LitVarStr var_118, "HabeCaja"
  loc_C3A846: PopAdLdVar
  loc_C3A847: FLdRfVar var_E8
  loc_C3A84A: FLdRfVar var_A4
  loc_C3A84D: FLdPr Me
  loc_C3A850: MemLdRfVar from_stack_1.global_52
  loc_C3A853: NewIfNullPr clscaja
  loc_C3A856: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A85B: FLdPr var_A4
  loc_C3A85E:  = Me.Fields
  loc_C3A863: FLdPr var_E8
  loc_C3A866: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A86B: LitI4 2
  loc_C3A870: FLdRfVar var_90
  loc_C3A873: CVarRef
  loc_C3A878: FLdRfVar var_B4
  loc_C3A87B: ImpAdCallFPR4  = Round(, )
  loc_C3A880: FLdRfVar var_B4
  loc_C3A883: LitI4 2
  loc_C3A888: FLdZeroAd var_15C
  loc_C3A88B: CVarAd
  loc_C3A88F: FLdRfVar var_E4
  loc_C3A892: ImpAdCallFPR4  = Round(, )
  loc_C3A897: FLdRfVar var_E4
  loc_C3A89A: AddVar var_F8
  loc_C3A89E: CR4Var
  loc_C3A89F: FStFPR8 var_90
  loc_C3A8A2: FFreeAd var_A4 = ""
  loc_C3A8A9: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3A8B4: FLdRfVar var_B4
  loc_C3A8B7: FLdRfVar var_15C
  loc_C3A8BA: LitVarStr var_D4, "CodiCuco"
  loc_C3A8BF: PopAdLdVar
  loc_C3A8C0: FLdRfVar var_E8
  loc_C3A8C3: FLdRfVar var_A4
  loc_C3A8C6: FLdPr Me
  loc_C3A8C9: MemLdRfVar from_stack_1.global_52
  loc_C3A8CC: NewIfNullPr clscaja
  loc_C3A8CF: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A8D4: FLdPr var_A4
  loc_C3A8D7:  = Me.Fields
  loc_C3A8DC: FLdPr var_E8
  loc_C3A8DF: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A8E4: FLdPr var_15C
  loc_C3A8E7:  = Me.Value
  loc_C3A8EC: FLdRfVar var_C4
  loc_C3A8EF: FLdRfVar var_1CC
  loc_C3A8F2: LitVarStr var_118, "HabeCaja"
  loc_C3A8F7: PopAdLdVar
  loc_C3A8F8: FLdRfVar var_1C8
  loc_C3A8FB: FLdRfVar var_1B0
  loc_C3A8FE: FLdPr Me
  loc_C3A901: MemLdRfVar from_stack_1.global_52
  loc_C3A904: NewIfNullPr clscaja
  loc_C3A907: from_stack_1v = clscaja.RsFrmGet()
  loc_C3A90C: FLdPr var_1B0
  loc_C3A90F:  = Me.Fields
  loc_C3A914: FLdPr var_1C8
  loc_C3A917: from_stack_2 = Me.Item(from_stack_1)
  loc_C3A91C: FLdPr var_1CC
  loc_C3A91F:  = Me.Value
  loc_C3A924: FLdRfVar var_C4
  loc_C3A927: CR4Var
  loc_C3A928: PopFPR8
  loc_C3A929: LitI2_Byte 0
  loc_C3A92B: CR8I2
  loc_C3A92C: PopFPR8
  loc_C3A92D: FLdRfVar var_B4
  loc_C3A930: CStrVarTmp
  loc_C3A931: FStStrNoPop var_98
  loc_C3A934: FLdI2 var_92
  loc_C3A937: ImpAdLdI2 MemVar_C3D064
  loc_C3A93A: FLdPr Me
  loc_C3A93D: MemLdRfVar from_stack_1.global_60
  loc_C3A940: NewIfNullPr clsasiento
  loc_C3A943: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3A948: FFree1Str var_98
  loc_C3A94B: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3A95A: FFreeVar var_B4 = ""
  loc_C3A961: FLdRfVar var_1D0
  loc_C3A964: FLdPr Me
  loc_C3A967: MemLdRfVar from_stack_1.global_52
  loc_C3A96A: NewIfNullPr clscaja
  loc_C3A96D: from_stack_1 = clscaja.RecordCount
  loc_C3A972: FLdRfVar var_138
  loc_C3A975: FLdPr Me
  loc_C3A978: MemLdRfVar from_stack_1.global_52
  loc_C3A97B: NewIfNullPr clscaja
  loc_C3A97E: from_stack_1 = clscaja.AbsolutePosition
  loc_C3A983: ILdRf var_138
  loc_C3A986: CR8I4
  loc_C3A987: ILdRf var_1D0
  loc_C3A98A: CR8I4
  loc_C3A98B: DivR8
  loc_C3A98C: LitI2_Byte &H64
  loc_C3A98E: CR8I2
  loc_C3A98F: MulR8
  loc_C3A990: CVarR4
  loc_C3A994: PopAdLdVar
  loc_C3A995: FLdPr Me
  loc_C3A998: VCallAd Control_ID_ProgressBar
  loc_C3A99B: FStAdFunc var_A4
  loc_C3A99E: FLdPr var_A4
  loc_C3A9A1: LateIdSt
  loc_C3A9A6: FFree1Ad var_A4
  loc_C3A9A9: FLdPr Me
  loc_C3A9AC: MemLdRfVar from_stack_1.global_52
  loc_C3A9AF: NewIfNullPr clscaja
  loc_C3A9B2: Call clscaja.MoveSiguiente()
  loc_C3A9B7: Branch loc_C3A826
  loc_C3A9BA: LitStr "SELECT PatrCuco, Sum(HabeCaja) HabeCaja, IFNULL(DetaTimo,'ERROR') DetaTimo"
  loc_C3A9BD: LitStr " FROM cajaaforo ca"
  loc_C3A9C0: ConcatStr
  loc_C3A9C1: FStStrNoPop var_98
  loc_C3A9C4: LitStr " LEFT JOIN recaudacion.tipomovi tm ON tm.CodiTimo = ca.CodiTimo"
  loc_C3A9C7: ConcatStr
  loc_C3A9C8: FStStrNoPop var_9C
  loc_C3A9CB: LitStr " INNER JOIN paraconta p ON p.PeriInfo = ca.PeriInfo"
  loc_C3A9CE: ConcatStr
  loc_C3A9CF: FStStrNoPop var_A0
  loc_C3A9D2: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3A9D5: ConcatStr
  loc_C3A9D6: FStStrNoPop var_12C
  loc_C3A9D9: LitStr " AND ca.CodiTimo = "
  loc_C3A9DC: ConcatStr
  loc_C3A9DD: FStStrNoPop var_130
  loc_C3A9E0: FLdUI1
  loc_C3A9E4: CI4UI1
  loc_C3A9E5: ILdRf var_20C
  loc_C3A9E8: Ary1LdI4
  loc_C3A9E9: ConcatStr
  loc_C3A9EA: FStStrNoPop var_134
  loc_C3A9ED: LitStr " AND HabeCaja > 0"
  loc_C3A9F0: ConcatStr
  loc_C3A9F1: FStStrNoPop var_1D4
  loc_C3A9F4: LitStr " AND PatrCuco != PatrPaco"
  loc_C3A9F7: ConcatStr
  loc_C3A9F8: FStStrNoPop var_1D8
  loc_C3A9FB: LitStr " GROUP BY PatrCuco"
  loc_C3A9FE: ConcatStr
  loc_C3A9FF: FStStrNoPop var_1E8
  loc_C3AA02: LitStr " ORDER BY PatrCuco "
  loc_C3AA05: ConcatStr
  loc_C3AA06: FStStrNoPop var_1EC
  loc_C3AA09: FLdPr Me
  loc_C3AA0C: MemLdRfVar from_stack_1.global_52
  loc_C3AA0F: NewIfNullPr clscaja
  loc_C3AA12: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3AA17: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = "": var_134 = "": var_1D4 = "": var_1D8 = "": var_1E8 = ""
  loc_C3AA2E: FLdRfVar var_138
  loc_C3AA31: FLdPr Me
  loc_C3AA34: MemLdRfVar from_stack_1.global_52
  loc_C3AA37: NewIfNullPr clscaja
  loc_C3AA3A: from_stack_1 = clscaja.RecordCount
  loc_C3AA3F: ILdRf var_138
  loc_C3AA42: LitI4 0
  loc_C3AA47: GtI4
  loc_C3AA48: BranchF loc_C3AC90
  loc_C3AA4B: FLdRfVar var_B4
  loc_C3AA4E: FLdRfVar var_15C
  loc_C3AA51: LitVarStr var_D4, "DetaTimo"
  loc_C3AA56: PopAdLdVar
  loc_C3AA57: FLdRfVar var_E8
  loc_C3AA5A: FLdRfVar var_A4
  loc_C3AA5D: FLdPr Me
  loc_C3AA60: MemLdRfVar from_stack_1.global_52
  loc_C3AA63: NewIfNullPr clscaja
  loc_C3AA66: from_stack_1v = clscaja.RsFrmGet()
  loc_C3AA6B: FLdPr var_A4
  loc_C3AA6E:  = Me.Fields
  loc_C3AA73: FLdPr var_E8
  loc_C3AA76: from_stack_2 = Me.Item(from_stack_1)
  loc_C3AA7B: FLdPr var_15C
  loc_C3AA7E:  = Me.Value
  loc_C3AA83: LitVarI2 var_C4, 140
  loc_C3AA88: LitI4 1
  loc_C3AA8D: FLdRfVar var_B4
  loc_C3AA90: CStrVarTmp
  loc_C3AA91: FStStrNoPop var_98
  loc_C3AA94: ImpAdCallI2 Mid$(, , )
  loc_C3AA99: FStStrNoPop var_9C
  loc_C3AA9C: LitStr " ("
  loc_C3AA9F: ConcatStr
  loc_C3AAA0: FStStrNoPop var_A0
  loc_C3AAA3: FLdUI1
  loc_C3AAA7: CI4UI1
  loc_C3AAA8: ILdRf var_20C
  loc_C3AAAB: Ary1LdI4
  loc_C3AAAC: ConcatStr
  loc_C3AAAD: FStStrNoPop var_12C
  loc_C3AAB0: LitStr ")"
  loc_C3AAB3: ConcatStr
  loc_C3AAB4: CVarStr var_E4
  loc_C3AAB7: PopAdLdVar
  loc_C3AAB8: FLdPr Me
  loc_C3AABB: VCallAd Control_ID_StatusBar
  loc_C3AABE: FStAdFunc var_1B0
  loc_C3AAC1: FLdPr var_1B0
  loc_C3AAC4: LateIdSt
  loc_C3AAC9: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C3AAD4: FFreeAd var_A4 = "": var_E8 = "": var_15C = ""
  loc_C3AADF: FFreeVar var_B4 = "": var_C4 = ""
  loc_C3AAE8: FLdPr Me
  loc_C3AAEB: MemLdRfVar from_stack_1.global_52
  loc_C3AAEE: NewIfNullPr clscaja
  loc_C3AAF1: Call clscaja.MoveFirst()
  loc_C3AAF6: LitI2_Byte 0
  loc_C3AAF8: CR8I2
  loc_C3AAF9: FStFPR8 var_90
  loc_C3AAFC: FLdRfVar var_1C2
  loc_C3AAFF: FLdPr Me
  loc_C3AB02: MemLdRfVar from_stack_1.global_52
  loc_C3AB05: NewIfNullPr clscaja
  loc_C3AB08: from_stack_1 = clscaja.EOF
  loc_C3AB0D: FLdI2 var_1C2
  loc_C3AB10: NotI4
  loc_C3AB11: BranchF loc_C3AC90
  loc_C3AB14: FLdRfVar var_15C
  loc_C3AB17: LitVarStr var_118, "HabeCaja"
  loc_C3AB1C: PopAdLdVar
  loc_C3AB1D: FLdRfVar var_E8
  loc_C3AB20: FLdRfVar var_A4
  loc_C3AB23: FLdPr Me
  loc_C3AB26: MemLdRfVar from_stack_1.global_52
  loc_C3AB29: NewIfNullPr clscaja
  loc_C3AB2C: from_stack_1v = clscaja.RsFrmGet()
  loc_C3AB31: FLdPr var_A4
  loc_C3AB34:  = Me.Fields
  loc_C3AB39: FLdPr var_E8
  loc_C3AB3C: from_stack_2 = Me.Item(from_stack_1)
  loc_C3AB41: LitI4 2
  loc_C3AB46: FLdRfVar var_90
  loc_C3AB49: CVarRef
  loc_C3AB4E: FLdRfVar var_B4
  loc_C3AB51: ImpAdCallFPR4  = Round(, )
  loc_C3AB56: FLdRfVar var_B4
  loc_C3AB59: LitI4 2
  loc_C3AB5E: FLdZeroAd var_15C
  loc_C3AB61: CVarAd
  loc_C3AB65: FLdRfVar var_E4
  loc_C3AB68: ImpAdCallFPR4  = Round(, )
  loc_C3AB6D: FLdRfVar var_E4
  loc_C3AB70: AddVar var_F8
  loc_C3AB74: CR4Var
  loc_C3AB75: FStFPR8 var_90
  loc_C3AB78: FFreeAd var_A4 = ""
  loc_C3AB7F: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3AB8A: FLdRfVar var_B4
  loc_C3AB8D: FLdRfVar var_15C
  loc_C3AB90: LitVarStr var_D4, "PatrCuco"
  loc_C3AB95: PopAdLdVar
  loc_C3AB96: FLdRfVar var_E8
  loc_C3AB99: FLdRfVar var_A4
  loc_C3AB9C: FLdPr Me
  loc_C3AB9F: MemLdRfVar from_stack_1.global_52
  loc_C3ABA2: NewIfNullPr clscaja
  loc_C3ABA5: from_stack_1v = clscaja.RsFrmGet()
  loc_C3ABAA: FLdPr var_A4
  loc_C3ABAD:  = Me.Fields
  loc_C3ABB2: FLdPr var_E8
  loc_C3ABB5: from_stack_2 = Me.Item(from_stack_1)
  loc_C3ABBA: FLdPr var_15C
  loc_C3ABBD:  = Me.Value
  loc_C3ABC2: FLdRfVar var_C4
  loc_C3ABC5: FLdRfVar var_1CC
  loc_C3ABC8: LitVarStr var_118, "HabeCaja"
  loc_C3ABCD: PopAdLdVar
  loc_C3ABCE: FLdRfVar var_1C8
  loc_C3ABD1: FLdRfVar var_1B0
  loc_C3ABD4: FLdPr Me
  loc_C3ABD7: MemLdRfVar from_stack_1.global_52
  loc_C3ABDA: NewIfNullPr clscaja
  loc_C3ABDD: from_stack_1v = clscaja.RsFrmGet()
  loc_C3ABE2: FLdPr var_1B0
  loc_C3ABE5:  = Me.Fields
  loc_C3ABEA: FLdPr var_1C8
  loc_C3ABED: from_stack_2 = Me.Item(from_stack_1)
  loc_C3ABF2: FLdPr var_1CC
  loc_C3ABF5:  = Me.Value
  loc_C3ABFA: LitI2_Byte 0
  loc_C3ABFC: CR8I2
  loc_C3ABFD: PopFPR8
  loc_C3ABFE: FLdRfVar var_C4
  loc_C3AC01: CR4Var
  loc_C3AC02: PopFPR8
  loc_C3AC03: FLdRfVar var_B4
  loc_C3AC06: CStrVarTmp
  loc_C3AC07: FStStrNoPop var_98
  loc_C3AC0A: FLdI2 var_92
  loc_C3AC0D: ImpAdLdI2 MemVar_C3D064
  loc_C3AC10: FLdPr Me
  loc_C3AC13: MemLdRfVar from_stack_1.global_60
  loc_C3AC16: NewIfNullPr clsasiento
  loc_C3AC19: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3AC1E: FFree1Str var_98
  loc_C3AC21: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3AC30: FFreeVar var_B4 = ""
  loc_C3AC37: FLdRfVar var_1D0
  loc_C3AC3A: FLdPr Me
  loc_C3AC3D: MemLdRfVar from_stack_1.global_52
  loc_C3AC40: NewIfNullPr clscaja
  loc_C3AC43: from_stack_1 = clscaja.RecordCount
  loc_C3AC48: FLdRfVar var_138
  loc_C3AC4B: FLdPr Me
  loc_C3AC4E: MemLdRfVar from_stack_1.global_52
  loc_C3AC51: NewIfNullPr clscaja
  loc_C3AC54: from_stack_1 = clscaja.AbsolutePosition
  loc_C3AC59: ILdRf var_138
  loc_C3AC5C: CR8I4
  loc_C3AC5D: ILdRf var_1D0
  loc_C3AC60: CR8I4
  loc_C3AC61: DivR8
  loc_C3AC62: LitI2_Byte &H64
  loc_C3AC64: CR8I2
  loc_C3AC65: MulR8
  loc_C3AC66: CVarR4
  loc_C3AC6A: PopAdLdVar
  loc_C3AC6B: FLdPr Me
  loc_C3AC6E: VCallAd Control_ID_ProgressBar
  loc_C3AC71: FStAdFunc var_A4
  loc_C3AC74: FLdPr var_A4
  loc_C3AC77: LateIdSt
  loc_C3AC7C: FFree1Ad var_A4
  loc_C3AC7F: FLdPr Me
  loc_C3AC82: MemLdRfVar from_stack_1.global_52
  loc_C3AC85: NewIfNullPr clscaja
  loc_C3AC88: Call clscaja.MoveSiguiente()
  loc_C3AC8D: Branch loc_C3AAFC
  loc_C3AC90: FLdRfVar var_20E
  loc_C3AC93: NextUI1
  loc_C3AC99: LitI2_Byte &HFF
  loc_C3AC9B: BranchF loc_C3B26A
  loc_C3AC9E: LitVarStr var_D4, "Asiento Automático de Entrada de Garantías"
  loc_C3ACA3: PopAdLdVar
  loc_C3ACA4: FLdPr Me
  loc_C3ACA7: VCallAd Control_ID_StatusBar
  loc_C3ACAA: FStAdFunc var_A4
  loc_C3ACAD: FLdPr var_A4
  loc_C3ACB0: LateIdSt
  loc_C3ACB5: FFree1Ad var_A4
  loc_C3ACB8: LitStr "SELECT DebeCuco, SUM(DebeCaja) DebeCaja, HabeCuco, SUM(HabeCaja) HabeCaja"
  loc_C3ACBB: LitStr " FROM subdgarantia sg"
  loc_C3ACBE: ConcatStr
  loc_C3ACBF: FStStrNoPop var_98
  loc_C3ACC2: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3ACC5: ConcatStr
  loc_C3ACC6: FStStrNoPop var_9C
  loc_C3ACC9: LitStr " AND TipoGara = 'E'"
  loc_C3ACCC: ConcatStr
  loc_C3ACCD: FStStrNoPop var_A0
  loc_C3ACD0: LitStr " GROUP BY CodiTiga, DebeCuco, HabeCuco ORDER BY DebeCuco;"
  loc_C3ACD3: ConcatStr
  loc_C3ACD4: FStStrNoPop var_12C
  loc_C3ACD7: FLdPr Me
  loc_C3ACDA: MemLdRfVar from_stack_1.global_52
  loc_C3ACDD: NewIfNullPr clscaja
  loc_C3ACE0: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3ACE5: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C3ACF0: FLdRfVar var_138
  loc_C3ACF3: FLdPr Me
  loc_C3ACF6: MemLdRfVar from_stack_1.global_52
  loc_C3ACF9: NewIfNullPr clscaja
  loc_C3ACFC: from_stack_1 = clscaja.RecordCount
  loc_C3AD01: ILdRf var_138
  loc_C3AD04: LitI4 0
  loc_C3AD09: GtI4
  loc_C3AD0A: BranchF loc_C3AF84
  loc_C3AD0D: FLdPr Me
  loc_C3AD10: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3AD13: FStAdFunc var_A4
  loc_C3AD16: FLdPr var_A4
  loc_C3AD19: LateIdLdVar var_B4 DispID_15 0
  loc_C3AD20: PopAd
  loc_C3AD22: FLdPr Me
  loc_C3AD25: VCallAd Control_ID_StatusBar
  loc_C3AD28: FStAdFunc var_E8
  loc_C3AD2B: FLdPr var_E8
  loc_C3AD2E: LateIdLdVar var_C4 DispID_1 0
  loc_C3AD35: PopAd
  loc_C3AD37: FLdRfVar var_1C2
  loc_C3AD3A: LitI4 0
  loc_C3AD3F: LitI4 0
  loc_C3AD44: FLdRfVar var_C4
  loc_C3AD47: CStrVarTmp
  loc_C3AD48: FStStrNoPop var_9C
  loc_C3AD4B: LitI2_Byte &HB
  loc_C3AD4D: FLdRfVar var_B4
  loc_C3AD50: CStrVarTmp
  loc_C3AD51: FStStrNoPop var_98
  loc_C3AD54: ImpAdLdI2 MemVar_C3D064
  loc_C3AD57: FLdPr Me
  loc_C3AD5A: MemLdRfVar from_stack_1.global_60
  loc_C3AD5D: NewIfNullPr clsasiento
  loc_C3AD60: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3AD65: FLdI2 var_1C2
  loc_C3AD68: FStI2 var_92
  loc_C3AD6B: FFreeStr var_98 = ""
  loc_C3AD72: FFreeAd var_A4 = ""
  loc_C3AD79: FFreeVar var_B4 = ""
  loc_C3AD80: FLdPr Me
  loc_C3AD83: MemLdI2 global_68
  loc_C3AD86: LitI2_Byte 0
  loc_C3AD88: EqI2
  loc_C3AD89: BranchF loc_C3AD95
  loc_C3AD8C: FLdI2 var_92
  loc_C3AD8F: FLdPr Me
  loc_C3AD92: MemStI2 global_68
  loc_C3AD95: FLdPr Me
  loc_C3AD98: MemLdI2 global_70
  loc_C3AD9B: FLdI2 var_92
  loc_C3AD9E: LtI2
  loc_C3AD9F: BranchF loc_C3ADAB
  loc_C3ADA2: FLdI2 var_92
  loc_C3ADA5: FLdPr Me
  loc_C3ADA8: MemStI2 global_70
  loc_C3ADAB: FLdPr Me
  loc_C3ADAE: MemLdRfVar from_stack_1.global_52
  loc_C3ADB1: NewIfNullPr clscaja
  loc_C3ADB4: Call clscaja.MoveFirst()
  loc_C3ADB9: FLdRfVar var_1C2
  loc_C3ADBC: FLdPr Me
  loc_C3ADBF: MemLdRfVar from_stack_1.global_52
  loc_C3ADC2: NewIfNullPr clscaja
  loc_C3ADC5: from_stack_1 = clscaja.EOF
  loc_C3ADCA: FLdI2 var_1C2
  loc_C3ADCD: NotI4
  loc_C3ADCE: BranchF loc_C3AF84
  loc_C3ADD1: FLdRfVar var_B4
  loc_C3ADD4: FLdRfVar var_15C
  loc_C3ADD7: LitVarStr var_D4, "DebeCuco"
  loc_C3ADDC: PopAdLdVar
  loc_C3ADDD: FLdRfVar var_E8
  loc_C3ADE0: FLdRfVar var_A4
  loc_C3ADE3: FLdPr Me
  loc_C3ADE6: MemLdRfVar from_stack_1.global_52
  loc_C3ADE9: NewIfNullPr clscaja
  loc_C3ADEC: from_stack_1v = clscaja.RsFrmGet()
  loc_C3ADF1: FLdPr var_A4
  loc_C3ADF4:  = Me.Fields
  loc_C3ADF9: FLdPr var_E8
  loc_C3ADFC: from_stack_2 = Me.Item(from_stack_1)
  loc_C3AE01: FLdPr var_15C
  loc_C3AE04:  = Me.Value
  loc_C3AE09: FLdRfVar var_C4
  loc_C3AE0C: FLdRfVar var_1CC
  loc_C3AE0F: LitVarStr var_118, "DebeCaja"
  loc_C3AE14: PopAdLdVar
  loc_C3AE15: FLdRfVar var_1C8
  loc_C3AE18: FLdRfVar var_1B0
  loc_C3AE1B: FLdPr Me
  loc_C3AE1E: MemLdRfVar from_stack_1.global_52
  loc_C3AE21: NewIfNullPr clscaja
  loc_C3AE24: from_stack_1v = clscaja.RsFrmGet()
  loc_C3AE29: FLdPr var_1B0
  loc_C3AE2C:  = Me.Fields
  loc_C3AE31: FLdPr var_1C8
  loc_C3AE34: from_stack_2 = Me.Item(from_stack_1)
  loc_C3AE39: FLdPr var_1CC
  loc_C3AE3C:  = Me.Value
  loc_C3AE41: LitI2_Byte 0
  loc_C3AE43: CR8I2
  loc_C3AE44: PopFPR8
  loc_C3AE45: FLdRfVar var_C4
  loc_C3AE48: CR4Var
  loc_C3AE49: PopFPR8
  loc_C3AE4A: FLdRfVar var_B4
  loc_C3AE4D: CStrVarTmp
  loc_C3AE4E: FStStrNoPop var_98
  loc_C3AE51: FLdI2 var_92
  loc_C3AE54: ImpAdLdI2 MemVar_C3D064
  loc_C3AE57: FLdPr Me
  loc_C3AE5A: MemLdRfVar from_stack_1.global_60
  loc_C3AE5D: NewIfNullPr clsasiento
  loc_C3AE60: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3AE65: FFree1Str var_98
  loc_C3AE68: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3AE77: FFreeVar var_B4 = ""
  loc_C3AE7E: FLdRfVar var_B4
  loc_C3AE81: FLdRfVar var_15C
  loc_C3AE84: LitVarStr var_D4, "HabeCuco"
  loc_C3AE89: PopAdLdVar
  loc_C3AE8A: FLdRfVar var_E8
  loc_C3AE8D: FLdRfVar var_A4
  loc_C3AE90: FLdPr Me
  loc_C3AE93: MemLdRfVar from_stack_1.global_52
  loc_C3AE96: NewIfNullPr clscaja
  loc_C3AE99: from_stack_1v = clscaja.RsFrmGet()
  loc_C3AE9E: FLdPr var_A4
  loc_C3AEA1:  = Me.Fields
  loc_C3AEA6: FLdPr var_E8
  loc_C3AEA9: from_stack_2 = Me.Item(from_stack_1)
  loc_C3AEAE: FLdPr var_15C
  loc_C3AEB1:  = Me.Value
  loc_C3AEB6: FLdRfVar var_C4
  loc_C3AEB9: FLdRfVar var_1CC
  loc_C3AEBC: LitVarStr var_118, "HabeCaja"
  loc_C3AEC1: PopAdLdVar
  loc_C3AEC2: FLdRfVar var_1C8
  loc_C3AEC5: FLdRfVar var_1B0
  loc_C3AEC8: FLdPr Me
  loc_C3AECB: MemLdRfVar from_stack_1.global_52
  loc_C3AECE: NewIfNullPr clscaja
  loc_C3AED1: from_stack_1v = clscaja.RsFrmGet()
  loc_C3AED6: FLdPr var_1B0
  loc_C3AED9:  = Me.Fields
  loc_C3AEDE: FLdPr var_1C8
  loc_C3AEE1: from_stack_2 = Me.Item(from_stack_1)
  loc_C3AEE6: FLdPr var_1CC
  loc_C3AEE9:  = Me.Value
  loc_C3AEEE: FLdRfVar var_C4
  loc_C3AEF1: CR4Var
  loc_C3AEF2: PopFPR8
  loc_C3AEF3: LitI2_Byte 0
  loc_C3AEF5: CR8I2
  loc_C3AEF6: PopFPR8
  loc_C3AEF7: FLdRfVar var_B4
  loc_C3AEFA: CStrVarTmp
  loc_C3AEFB: FStStrNoPop var_98
  loc_C3AEFE: FLdI2 var_92
  loc_C3AF01: ImpAdLdI2 MemVar_C3D064
  loc_C3AF04: FLdPr Me
  loc_C3AF07: MemLdRfVar from_stack_1.global_60
  loc_C3AF0A: NewIfNullPr clsasiento
  loc_C3AF0D: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3AF12: FFree1Str var_98
  loc_C3AF15: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3AF24: FFreeVar var_B4 = ""
  loc_C3AF2B: FLdRfVar var_1D0
  loc_C3AF2E: FLdPr Me
  loc_C3AF31: MemLdRfVar from_stack_1.global_52
  loc_C3AF34: NewIfNullPr clscaja
  loc_C3AF37: from_stack_1 = clscaja.RecordCount
  loc_C3AF3C: FLdRfVar var_138
  loc_C3AF3F: FLdPr Me
  loc_C3AF42: MemLdRfVar from_stack_1.global_52
  loc_C3AF45: NewIfNullPr clscaja
  loc_C3AF48: from_stack_1 = clscaja.AbsolutePosition
  loc_C3AF4D: ILdRf var_138
  loc_C3AF50: CR8I4
  loc_C3AF51: ILdRf var_1D0
  loc_C3AF54: CR8I4
  loc_C3AF55: DivR8
  loc_C3AF56: LitI2_Byte &H64
  loc_C3AF58: CR8I2
  loc_C3AF59: MulR8
  loc_C3AF5A: CVarR4
  loc_C3AF5E: PopAdLdVar
  loc_C3AF5F: FLdPr Me
  loc_C3AF62: VCallAd Control_ID_ProgressBar
  loc_C3AF65: FStAdFunc var_A4
  loc_C3AF68: FLdPr var_A4
  loc_C3AF6B: LateIdSt
  loc_C3AF70: FFree1Ad var_A4
  loc_C3AF73: FLdPr Me
  loc_C3AF76: MemLdRfVar from_stack_1.global_52
  loc_C3AF79: NewIfNullPr clscaja
  loc_C3AF7C: Call clscaja.MoveSiguiente()
  loc_C3AF81: Branch loc_C3ADB9
  loc_C3AF84: LitVarStr var_D4, "Asiento Automático de Salida de Garantías"
  loc_C3AF89: PopAdLdVar
  loc_C3AF8A: FLdPr Me
  loc_C3AF8D: VCallAd Control_ID_StatusBar
  loc_C3AF90: FStAdFunc var_A4
  loc_C3AF93: FLdPr var_A4
  loc_C3AF96: LateIdSt
  loc_C3AF9B: FFree1Ad var_A4
  loc_C3AF9E: LitStr "SELECT DebeCuco, SUM(DebeCaja) DebeCaja, HabeCuco, SUM(HabeCaja) HabeCaja"
  loc_C3AFA1: LitStr " FROM subdgarantia sg"
  loc_C3AFA4: ConcatStr
  loc_C3AFA5: FStStrNoPop var_98
  loc_C3AFA8: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3AFAB: ConcatStr
  loc_C3AFAC: FStStrNoPop var_9C
  loc_C3AFAF: LitStr " AND TipoGara = 'S'"
  loc_C3AFB2: ConcatStr
  loc_C3AFB3: FStStrNoPop var_A0
  loc_C3AFB6: LitStr " GROUP BY CodiTiga, DebeCuco, HabeCuco ORDER BY DebeCuco;"
  loc_C3AFB9: ConcatStr
  loc_C3AFBA: FStStrNoPop var_12C
  loc_C3AFBD: FLdPr Me
  loc_C3AFC0: MemLdRfVar from_stack_1.global_52
  loc_C3AFC3: NewIfNullPr clscaja
  loc_C3AFC6: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3AFCB: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C3AFD6: FLdRfVar var_138
  loc_C3AFD9: FLdPr Me
  loc_C3AFDC: MemLdRfVar from_stack_1.global_52
  loc_C3AFDF: NewIfNullPr clscaja
  loc_C3AFE2: from_stack_1 = clscaja.RecordCount
  loc_C3AFE7: ILdRf var_138
  loc_C3AFEA: LitI4 0
  loc_C3AFEF: GtI4
  loc_C3AFF0: BranchF loc_C3B26A
  loc_C3AFF3: FLdPr Me
  loc_C3AFF6: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3AFF9: FStAdFunc var_A4
  loc_C3AFFC: FLdPr var_A4
  loc_C3AFFF: LateIdLdVar var_B4 DispID_15 0
  loc_C3B006: PopAd
  loc_C3B008: FLdPr Me
  loc_C3B00B: VCallAd Control_ID_StatusBar
  loc_C3B00E: FStAdFunc var_E8
  loc_C3B011: FLdPr var_E8
  loc_C3B014: LateIdLdVar var_C4 DispID_1 0
  loc_C3B01B: PopAd
  loc_C3B01D: FLdRfVar var_1C2
  loc_C3B020: LitI4 0
  loc_C3B025: LitI4 0
  loc_C3B02A: FLdRfVar var_C4
  loc_C3B02D: CStrVarTmp
  loc_C3B02E: FStStrNoPop var_9C
  loc_C3B031: LitI2_Byte &HB
  loc_C3B033: FLdRfVar var_B4
  loc_C3B036: CStrVarTmp
  loc_C3B037: FStStrNoPop var_98
  loc_C3B03A: ImpAdLdI2 MemVar_C3D064
  loc_C3B03D: FLdPr Me
  loc_C3B040: MemLdRfVar from_stack_1.global_60
  loc_C3B043: NewIfNullPr clsasiento
  loc_C3B046: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3B04B: FLdI2 var_1C2
  loc_C3B04E: FStI2 var_92
  loc_C3B051: FFreeStr var_98 = ""
  loc_C3B058: FFreeAd var_A4 = ""
  loc_C3B05F: FFreeVar var_B4 = ""
  loc_C3B066: FLdPr Me
  loc_C3B069: MemLdI2 global_68
  loc_C3B06C: LitI2_Byte 0
  loc_C3B06E: EqI2
  loc_C3B06F: BranchF loc_C3B07B
  loc_C3B072: FLdI2 var_92
  loc_C3B075: FLdPr Me
  loc_C3B078: MemStI2 global_68
  loc_C3B07B: FLdPr Me
  loc_C3B07E: MemLdI2 global_70
  loc_C3B081: FLdI2 var_92
  loc_C3B084: LtI2
  loc_C3B085: BranchF loc_C3B091
  loc_C3B088: FLdI2 var_92
  loc_C3B08B: FLdPr Me
  loc_C3B08E: MemStI2 global_70
  loc_C3B091: FLdPr Me
  loc_C3B094: MemLdRfVar from_stack_1.global_52
  loc_C3B097: NewIfNullPr clscaja
  loc_C3B09A: Call clscaja.MoveFirst()
  loc_C3B09F: FLdRfVar var_1C2
  loc_C3B0A2: FLdPr Me
  loc_C3B0A5: MemLdRfVar from_stack_1.global_52
  loc_C3B0A8: NewIfNullPr clscaja
  loc_C3B0AB: from_stack_1 = clscaja.EOF
  loc_C3B0B0: FLdI2 var_1C2
  loc_C3B0B3: NotI4
  loc_C3B0B4: BranchF loc_C3B26A
  loc_C3B0B7: FLdRfVar var_B4
  loc_C3B0BA: FLdRfVar var_15C
  loc_C3B0BD: LitVarStr var_D4, "DebeCuco"
  loc_C3B0C2: PopAdLdVar
  loc_C3B0C3: FLdRfVar var_E8
  loc_C3B0C6: FLdRfVar var_A4
  loc_C3B0C9: FLdPr Me
  loc_C3B0CC: MemLdRfVar from_stack_1.global_52
  loc_C3B0CF: NewIfNullPr clscaja
  loc_C3B0D2: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B0D7: FLdPr var_A4
  loc_C3B0DA:  = Me.Fields
  loc_C3B0DF: FLdPr var_E8
  loc_C3B0E2: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B0E7: FLdPr var_15C
  loc_C3B0EA:  = Me.Value
  loc_C3B0EF: FLdRfVar var_C4
  loc_C3B0F2: FLdRfVar var_1CC
  loc_C3B0F5: LitVarStr var_118, "DebeCaja"
  loc_C3B0FA: PopAdLdVar
  loc_C3B0FB: FLdRfVar var_1C8
  loc_C3B0FE: FLdRfVar var_1B0
  loc_C3B101: FLdPr Me
  loc_C3B104: MemLdRfVar from_stack_1.global_52
  loc_C3B107: NewIfNullPr clscaja
  loc_C3B10A: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B10F: FLdPr var_1B0
  loc_C3B112:  = Me.Fields
  loc_C3B117: FLdPr var_1C8
  loc_C3B11A: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B11F: FLdPr var_1CC
  loc_C3B122:  = Me.Value
  loc_C3B127: LitI2_Byte 0
  loc_C3B129: CR8I2
  loc_C3B12A: PopFPR8
  loc_C3B12B: FLdRfVar var_C4
  loc_C3B12E: CR4Var
  loc_C3B12F: PopFPR8
  loc_C3B130: FLdRfVar var_B4
  loc_C3B133: CStrVarTmp
  loc_C3B134: FStStrNoPop var_98
  loc_C3B137: FLdI2 var_92
  loc_C3B13A: ImpAdLdI2 MemVar_C3D064
  loc_C3B13D: FLdPr Me
  loc_C3B140: MemLdRfVar from_stack_1.global_60
  loc_C3B143: NewIfNullPr clsasiento
  loc_C3B146: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3B14B: FFree1Str var_98
  loc_C3B14E: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3B15D: FFreeVar var_B4 = ""
  loc_C3B164: FLdRfVar var_B4
  loc_C3B167: FLdRfVar var_15C
  loc_C3B16A: LitVarStr var_D4, "HabeCuco"
  loc_C3B16F: PopAdLdVar
  loc_C3B170: FLdRfVar var_E8
  loc_C3B173: FLdRfVar var_A4
  loc_C3B176: FLdPr Me
  loc_C3B179: MemLdRfVar from_stack_1.global_52
  loc_C3B17C: NewIfNullPr clscaja
  loc_C3B17F: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B184: FLdPr var_A4
  loc_C3B187:  = Me.Fields
  loc_C3B18C: FLdPr var_E8
  loc_C3B18F: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B194: FLdPr var_15C
  loc_C3B197:  = Me.Value
  loc_C3B19C: FLdRfVar var_C4
  loc_C3B19F: FLdRfVar var_1CC
  loc_C3B1A2: LitVarStr var_118, "HabeCaja"
  loc_C3B1A7: PopAdLdVar
  loc_C3B1A8: FLdRfVar var_1C8
  loc_C3B1AB: FLdRfVar var_1B0
  loc_C3B1AE: FLdPr Me
  loc_C3B1B1: MemLdRfVar from_stack_1.global_52
  loc_C3B1B4: NewIfNullPr clscaja
  loc_C3B1B7: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B1BC: FLdPr var_1B0
  loc_C3B1BF:  = Me.Fields
  loc_C3B1C4: FLdPr var_1C8
  loc_C3B1C7: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B1CC: FLdPr var_1CC
  loc_C3B1CF:  = Me.Value
  loc_C3B1D4: FLdRfVar var_C4
  loc_C3B1D7: CR4Var
  loc_C3B1D8: PopFPR8
  loc_C3B1D9: LitI2_Byte 0
  loc_C3B1DB: CR8I2
  loc_C3B1DC: PopFPR8
  loc_C3B1DD: FLdRfVar var_B4
  loc_C3B1E0: CStrVarTmp
  loc_C3B1E1: FStStrNoPop var_98
  loc_C3B1E4: FLdI2 var_92
  loc_C3B1E7: ImpAdLdI2 MemVar_C3D064
  loc_C3B1EA: FLdPr Me
  loc_C3B1ED: MemLdRfVar from_stack_1.global_60
  loc_C3B1F0: NewIfNullPr clsasiento
  loc_C3B1F3: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3B1F8: FFree1Str var_98
  loc_C3B1FB: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3B20A: FFreeVar var_B4 = ""
  loc_C3B211: FLdRfVar var_1D0
  loc_C3B214: FLdPr Me
  loc_C3B217: MemLdRfVar from_stack_1.global_52
  loc_C3B21A: NewIfNullPr clscaja
  loc_C3B21D: from_stack_1 = clscaja.RecordCount
  loc_C3B222: FLdRfVar var_138
  loc_C3B225: FLdPr Me
  loc_C3B228: MemLdRfVar from_stack_1.global_52
  loc_C3B22B: NewIfNullPr clscaja
  loc_C3B22E: from_stack_1 = clscaja.AbsolutePosition
  loc_C3B233: ILdRf var_138
  loc_C3B236: CR8I4
  loc_C3B237: ILdRf var_1D0
  loc_C3B23A: CR8I4
  loc_C3B23B: DivR8
  loc_C3B23C: LitI2_Byte &H64
  loc_C3B23E: CR8I2
  loc_C3B23F: MulR8
  loc_C3B240: CVarR4
  loc_C3B244: PopAdLdVar
  loc_C3B245: FLdPr Me
  loc_C3B248: VCallAd Control_ID_ProgressBar
  loc_C3B24B: FStAdFunc var_A4
  loc_C3B24E: FLdPr var_A4
  loc_C3B251: LateIdSt
  loc_C3B256: FFree1Ad var_A4
  loc_C3B259: FLdPr Me
  loc_C3B25C: MemLdRfVar from_stack_1.global_52
  loc_C3B25F: NewIfNullPr clscaja
  loc_C3B262: Call clscaja.MoveSiguiente()
  loc_C3B267: Branch loc_C3B09F
  loc_C3B26A: LitI2_Byte &HFF
  loc_C3B26C: ImpAdLdI2 MemVar_C3D064
  loc_C3B26F: LitI2 2021
  loc_C3B272: GeI2
  loc_C3B273: AndI4
  loc_C3B274: BranchF loc_C3B855
  loc_C3B277: LitVarStr var_D4, "Asiento Automático de Cargos"
  loc_C3B27C: PopAdLdVar
  loc_C3B27D: FLdPr Me
  loc_C3B280: VCallAd Control_ID_StatusBar
  loc_C3B283: FStAdFunc var_A4
  loc_C3B286: FLdPr var_A4
  loc_C3B289: LateIdSt
  loc_C3B28E: FFree1Ad var_A4
  loc_C3B291: LitStr "SELECT DebeCuco, SUM(DebeCaja) DebeCaja, HabeCuco, SUM(HabeCaja) HabeCaja"
  loc_C3B294: LitStr " FROM subdcargo sc"
  loc_C3B297: ConcatStr
  loc_C3B298: FStStrNoPop var_98
  loc_C3B29B: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3B29E: ConcatStr
  loc_C3B29F: FStStrNoPop var_9C
  loc_C3B2A2: LitStr " AND TipoDesCargo = 'E'"
  loc_C3B2A5: ConcatStr
  loc_C3B2A6: FStStrNoPop var_A0
  loc_C3B2A9: LitStr " GROUP BY CodiTica, DebeCuco, HabeCuco"
  loc_C3B2AC: ConcatStr
  loc_C3B2AD: FStStrNoPop var_12C
  loc_C3B2B0: LitStr " ORDER BY DebeCuco;"
  loc_C3B2B3: ConcatStr
  loc_C3B2B4: FStStrNoPop var_130
  loc_C3B2B7: FLdPr Me
  loc_C3B2BA: MemLdRfVar from_stack_1.global_52
  loc_C3B2BD: NewIfNullPr clscaja
  loc_C3B2C0: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3B2C5: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C3B2D2: FLdRfVar var_138
  loc_C3B2D5: FLdPr Me
  loc_C3B2D8: MemLdRfVar from_stack_1.global_52
  loc_C3B2DB: NewIfNullPr clscaja
  loc_C3B2DE: from_stack_1 = clscaja.RecordCount
  loc_C3B2E3: ILdRf var_138
  loc_C3B2E6: LitI4 0
  loc_C3B2EB: GtI4
  loc_C3B2EC: BranchF loc_C3B566
  loc_C3B2EF: FLdPr Me
  loc_C3B2F2: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3B2F5: FStAdFunc var_A4
  loc_C3B2F8: FLdPr var_A4
  loc_C3B2FB: LateIdLdVar var_B4 DispID_15 0
  loc_C3B302: PopAd
  loc_C3B304: FLdPr Me
  loc_C3B307: VCallAd Control_ID_StatusBar
  loc_C3B30A: FStAdFunc var_E8
  loc_C3B30D: FLdPr var_E8
  loc_C3B310: LateIdLdVar var_C4 DispID_1 0
  loc_C3B317: PopAd
  loc_C3B319: FLdRfVar var_1C2
  loc_C3B31C: LitI4 0
  loc_C3B321: LitI4 0
  loc_C3B326: FLdRfVar var_C4
  loc_C3B329: CStrVarTmp
  loc_C3B32A: FStStrNoPop var_9C
  loc_C3B32D: LitI2_Byte &H17
  loc_C3B32F: FLdRfVar var_B4
  loc_C3B332: CStrVarTmp
  loc_C3B333: FStStrNoPop var_98
  loc_C3B336: ImpAdLdI2 MemVar_C3D064
  loc_C3B339: FLdPr Me
  loc_C3B33C: MemLdRfVar from_stack_1.global_60
  loc_C3B33F: NewIfNullPr clsasiento
  loc_C3B342: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3B347: FLdI2 var_1C2
  loc_C3B34A: FStI2 var_92
  loc_C3B34D: FFreeStr var_98 = ""
  loc_C3B354: FFreeAd var_A4 = ""
  loc_C3B35B: FFreeVar var_B4 = ""
  loc_C3B362: FLdPr Me
  loc_C3B365: MemLdI2 global_68
  loc_C3B368: LitI2_Byte 0
  loc_C3B36A: EqI2
  loc_C3B36B: BranchF loc_C3B377
  loc_C3B36E: FLdI2 var_92
  loc_C3B371: FLdPr Me
  loc_C3B374: MemStI2 global_68
  loc_C3B377: FLdPr Me
  loc_C3B37A: MemLdI2 global_70
  loc_C3B37D: FLdI2 var_92
  loc_C3B380: LtI2
  loc_C3B381: BranchF loc_C3B38D
  loc_C3B384: FLdI2 var_92
  loc_C3B387: FLdPr Me
  loc_C3B38A: MemStI2 global_70
  loc_C3B38D: FLdPr Me
  loc_C3B390: MemLdRfVar from_stack_1.global_52
  loc_C3B393: NewIfNullPr clscaja
  loc_C3B396: Call clscaja.MoveFirst()
  loc_C3B39B: FLdRfVar var_1C2
  loc_C3B39E: FLdPr Me
  loc_C3B3A1: MemLdRfVar from_stack_1.global_52
  loc_C3B3A4: NewIfNullPr clscaja
  loc_C3B3A7: from_stack_1 = clscaja.EOF
  loc_C3B3AC: FLdI2 var_1C2
  loc_C3B3AF: NotI4
  loc_C3B3B0: BranchF loc_C3B566
  loc_C3B3B3: FLdRfVar var_B4
  loc_C3B3B6: FLdRfVar var_15C
  loc_C3B3B9: LitVarStr var_D4, "DebeCuco"
  loc_C3B3BE: PopAdLdVar
  loc_C3B3BF: FLdRfVar var_E8
  loc_C3B3C2: FLdRfVar var_A4
  loc_C3B3C5: FLdPr Me
  loc_C3B3C8: MemLdRfVar from_stack_1.global_52
  loc_C3B3CB: NewIfNullPr clscaja
  loc_C3B3CE: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B3D3: FLdPr var_A4
  loc_C3B3D6:  = Me.Fields
  loc_C3B3DB: FLdPr var_E8
  loc_C3B3DE: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B3E3: FLdPr var_15C
  loc_C3B3E6:  = Me.Value
  loc_C3B3EB: FLdRfVar var_C4
  loc_C3B3EE: FLdRfVar var_1CC
  loc_C3B3F1: LitVarStr var_118, "DebeCaja"
  loc_C3B3F6: PopAdLdVar
  loc_C3B3F7: FLdRfVar var_1C8
  loc_C3B3FA: FLdRfVar var_1B0
  loc_C3B3FD: FLdPr Me
  loc_C3B400: MemLdRfVar from_stack_1.global_52
  loc_C3B403: NewIfNullPr clscaja
  loc_C3B406: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B40B: FLdPr var_1B0
  loc_C3B40E:  = Me.Fields
  loc_C3B413: FLdPr var_1C8
  loc_C3B416: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B41B: FLdPr var_1CC
  loc_C3B41E:  = Me.Value
  loc_C3B423: LitI2_Byte 0
  loc_C3B425: CR8I2
  loc_C3B426: PopFPR8
  loc_C3B427: FLdRfVar var_C4
  loc_C3B42A: CR4Var
  loc_C3B42B: PopFPR8
  loc_C3B42C: FLdRfVar var_B4
  loc_C3B42F: CStrVarTmp
  loc_C3B430: FStStrNoPop var_98
  loc_C3B433: FLdI2 var_92
  loc_C3B436: ImpAdLdI2 MemVar_C3D064
  loc_C3B439: FLdPr Me
  loc_C3B43C: MemLdRfVar from_stack_1.global_60
  loc_C3B43F: NewIfNullPr clsasiento
  loc_C3B442: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3B447: FFree1Str var_98
  loc_C3B44A: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3B459: FFreeVar var_B4 = ""
  loc_C3B460: FLdRfVar var_B4
  loc_C3B463: FLdRfVar var_15C
  loc_C3B466: LitVarStr var_D4, "HabeCuco"
  loc_C3B46B: PopAdLdVar
  loc_C3B46C: FLdRfVar var_E8
  loc_C3B46F: FLdRfVar var_A4
  loc_C3B472: FLdPr Me
  loc_C3B475: MemLdRfVar from_stack_1.global_52
  loc_C3B478: NewIfNullPr clscaja
  loc_C3B47B: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B480: FLdPr var_A4
  loc_C3B483:  = Me.Fields
  loc_C3B488: FLdPr var_E8
  loc_C3B48B: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B490: FLdPr var_15C
  loc_C3B493:  = Me.Value
  loc_C3B498: FLdRfVar var_C4
  loc_C3B49B: FLdRfVar var_1CC
  loc_C3B49E: LitVarStr var_118, "HabeCaja"
  loc_C3B4A3: PopAdLdVar
  loc_C3B4A4: FLdRfVar var_1C8
  loc_C3B4A7: FLdRfVar var_1B0
  loc_C3B4AA: FLdPr Me
  loc_C3B4AD: MemLdRfVar from_stack_1.global_52
  loc_C3B4B0: NewIfNullPr clscaja
  loc_C3B4B3: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B4B8: FLdPr var_1B0
  loc_C3B4BB:  = Me.Fields
  loc_C3B4C0: FLdPr var_1C8
  loc_C3B4C3: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B4C8: FLdPr var_1CC
  loc_C3B4CB:  = Me.Value
  loc_C3B4D0: FLdRfVar var_C4
  loc_C3B4D3: CR4Var
  loc_C3B4D4: PopFPR8
  loc_C3B4D5: LitI2_Byte 0
  loc_C3B4D7: CR8I2
  loc_C3B4D8: PopFPR8
  loc_C3B4D9: FLdRfVar var_B4
  loc_C3B4DC: CStrVarTmp
  loc_C3B4DD: FStStrNoPop var_98
  loc_C3B4E0: FLdI2 var_92
  loc_C3B4E3: ImpAdLdI2 MemVar_C3D064
  loc_C3B4E6: FLdPr Me
  loc_C3B4E9: MemLdRfVar from_stack_1.global_60
  loc_C3B4EC: NewIfNullPr clsasiento
  loc_C3B4EF: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3B4F4: FFree1Str var_98
  loc_C3B4F7: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3B506: FFreeVar var_B4 = ""
  loc_C3B50D: FLdRfVar var_1D0
  loc_C3B510: FLdPr Me
  loc_C3B513: MemLdRfVar from_stack_1.global_52
  loc_C3B516: NewIfNullPr clscaja
  loc_C3B519: from_stack_1 = clscaja.RecordCount
  loc_C3B51E: FLdRfVar var_138
  loc_C3B521: FLdPr Me
  loc_C3B524: MemLdRfVar from_stack_1.global_52
  loc_C3B527: NewIfNullPr clscaja
  loc_C3B52A: from_stack_1 = clscaja.AbsolutePosition
  loc_C3B52F: ILdRf var_138
  loc_C3B532: CR8I4
  loc_C3B533: ILdRf var_1D0
  loc_C3B536: CR8I4
  loc_C3B537: DivR8
  loc_C3B538: LitI2_Byte &H64
  loc_C3B53A: CR8I2
  loc_C3B53B: MulR8
  loc_C3B53C: CVarR4
  loc_C3B540: PopAdLdVar
  loc_C3B541: FLdPr Me
  loc_C3B544: VCallAd Control_ID_ProgressBar
  loc_C3B547: FStAdFunc var_A4
  loc_C3B54A: FLdPr var_A4
  loc_C3B54D: LateIdSt
  loc_C3B552: FFree1Ad var_A4
  loc_C3B555: FLdPr Me
  loc_C3B558: MemLdRfVar from_stack_1.global_52
  loc_C3B55B: NewIfNullPr clscaja
  loc_C3B55E: Call clscaja.MoveSiguiente()
  loc_C3B563: Branch loc_C3B39B
  loc_C3B566: LitVarStr var_D4, "Asiento Automático de Descargos"
  loc_C3B56B: PopAdLdVar
  loc_C3B56C: FLdPr Me
  loc_C3B56F: VCallAd Control_ID_StatusBar
  loc_C3B572: FStAdFunc var_A4
  loc_C3B575: FLdPr var_A4
  loc_C3B578: LateIdSt
  loc_C3B57D: FFree1Ad var_A4
  loc_C3B580: LitStr "SELECT DebeCuco, SUM(DebeCaja) DebeCaja, HabeCuco, SUM(HabeCaja) HabeCaja"
  loc_C3B583: LitStr " FROM subdcargo sc"
  loc_C3B586: ConcatStr
  loc_C3B587: FStStrNoPop var_98
  loc_C3B58A: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3B58D: ConcatStr
  loc_C3B58E: FStStrNoPop var_9C
  loc_C3B591: LitStr " AND TipoDesCargo = 'S'"
  loc_C3B594: ConcatStr
  loc_C3B595: FStStrNoPop var_A0
  loc_C3B598: LitStr " GROUP BY CodiTica, DebeCuco, HabeCuco"
  loc_C3B59B: ConcatStr
  loc_C3B59C: FStStrNoPop var_12C
  loc_C3B59F: LitStr " ORDER BY DebeCuco;"
  loc_C3B5A2: ConcatStr
  loc_C3B5A3: FStStrNoPop var_130
  loc_C3B5A6: FLdPr Me
  loc_C3B5A9: MemLdRfVar from_stack_1.global_52
  loc_C3B5AC: NewIfNullPr clscaja
  loc_C3B5AF: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3B5B4: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = ""
  loc_C3B5C1: FLdRfVar var_138
  loc_C3B5C4: FLdPr Me
  loc_C3B5C7: MemLdRfVar from_stack_1.global_52
  loc_C3B5CA: NewIfNullPr clscaja
  loc_C3B5CD: from_stack_1 = clscaja.RecordCount
  loc_C3B5D2: ILdRf var_138
  loc_C3B5D5: LitI4 0
  loc_C3B5DA: GtI4
  loc_C3B5DB: BranchF loc_C3B855
  loc_C3B5DE: FLdPr Me
  loc_C3B5E1: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3B5E4: FStAdFunc var_A4
  loc_C3B5E7: FLdPr var_A4
  loc_C3B5EA: LateIdLdVar var_B4 DispID_15 0
  loc_C3B5F1: PopAd
  loc_C3B5F3: FLdPr Me
  loc_C3B5F6: VCallAd Control_ID_StatusBar
  loc_C3B5F9: FStAdFunc var_E8
  loc_C3B5FC: FLdPr var_E8
  loc_C3B5FF: LateIdLdVar var_C4 DispID_1 0
  loc_C3B606: PopAd
  loc_C3B608: FLdRfVar var_1C2
  loc_C3B60B: LitI4 0
  loc_C3B610: LitI4 0
  loc_C3B615: FLdRfVar var_C4
  loc_C3B618: CStrVarTmp
  loc_C3B619: FStStrNoPop var_9C
  loc_C3B61C: LitI2_Byte &H17
  loc_C3B61E: FLdRfVar var_B4
  loc_C3B621: CStrVarTmp
  loc_C3B622: FStStrNoPop var_98
  loc_C3B625: ImpAdLdI2 MemVar_C3D064
  loc_C3B628: FLdPr Me
  loc_C3B62B: MemLdRfVar from_stack_1.global_60
  loc_C3B62E: NewIfNullPr clsasiento
  loc_C3B631: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3B636: FLdI2 var_1C2
  loc_C3B639: FStI2 var_92
  loc_C3B63C: FFreeStr var_98 = ""
  loc_C3B643: FFreeAd var_A4 = ""
  loc_C3B64A: FFreeVar var_B4 = ""
  loc_C3B651: FLdPr Me
  loc_C3B654: MemLdI2 global_68
  loc_C3B657: LitI2_Byte 0
  loc_C3B659: EqI2
  loc_C3B65A: BranchF loc_C3B666
  loc_C3B65D: FLdI2 var_92
  loc_C3B660: FLdPr Me
  loc_C3B663: MemStI2 global_68
  loc_C3B666: FLdPr Me
  loc_C3B669: MemLdI2 global_70
  loc_C3B66C: FLdI2 var_92
  loc_C3B66F: LtI2
  loc_C3B670: BranchF loc_C3B67C
  loc_C3B673: FLdI2 var_92
  loc_C3B676: FLdPr Me
  loc_C3B679: MemStI2 global_70
  loc_C3B67C: FLdPr Me
  loc_C3B67F: MemLdRfVar from_stack_1.global_52
  loc_C3B682: NewIfNullPr clscaja
  loc_C3B685: Call clscaja.MoveFirst()
  loc_C3B68A: FLdRfVar var_1C2
  loc_C3B68D: FLdPr Me
  loc_C3B690: MemLdRfVar from_stack_1.global_52
  loc_C3B693: NewIfNullPr clscaja
  loc_C3B696: from_stack_1 = clscaja.EOF
  loc_C3B69B: FLdI2 var_1C2
  loc_C3B69E: NotI4
  loc_C3B69F: BranchF loc_C3B855
  loc_C3B6A2: FLdRfVar var_B4
  loc_C3B6A5: FLdRfVar var_15C
  loc_C3B6A8: LitVarStr var_D4, "DebeCuco"
  loc_C3B6AD: PopAdLdVar
  loc_C3B6AE: FLdRfVar var_E8
  loc_C3B6B1: FLdRfVar var_A4
  loc_C3B6B4: FLdPr Me
  loc_C3B6B7: MemLdRfVar from_stack_1.global_52
  loc_C3B6BA: NewIfNullPr clscaja
  loc_C3B6BD: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B6C2: FLdPr var_A4
  loc_C3B6C5:  = Me.Fields
  loc_C3B6CA: FLdPr var_E8
  loc_C3B6CD: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B6D2: FLdPr var_15C
  loc_C3B6D5:  = Me.Value
  loc_C3B6DA: FLdRfVar var_C4
  loc_C3B6DD: FLdRfVar var_1CC
  loc_C3B6E0: LitVarStr var_118, "DebeCaja"
  loc_C3B6E5: PopAdLdVar
  loc_C3B6E6: FLdRfVar var_1C8
  loc_C3B6E9: FLdRfVar var_1B0
  loc_C3B6EC: FLdPr Me
  loc_C3B6EF: MemLdRfVar from_stack_1.global_52
  loc_C3B6F2: NewIfNullPr clscaja
  loc_C3B6F5: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B6FA: FLdPr var_1B0
  loc_C3B6FD:  = Me.Fields
  loc_C3B702: FLdPr var_1C8
  loc_C3B705: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B70A: FLdPr var_1CC
  loc_C3B70D:  = Me.Value
  loc_C3B712: LitI2_Byte 0
  loc_C3B714: CR8I2
  loc_C3B715: PopFPR8
  loc_C3B716: FLdRfVar var_C4
  loc_C3B719: CR4Var
  loc_C3B71A: PopFPR8
  loc_C3B71B: FLdRfVar var_B4
  loc_C3B71E: CStrVarTmp
  loc_C3B71F: FStStrNoPop var_98
  loc_C3B722: FLdI2 var_92
  loc_C3B725: ImpAdLdI2 MemVar_C3D064
  loc_C3B728: FLdPr Me
  loc_C3B72B: MemLdRfVar from_stack_1.global_60
  loc_C3B72E: NewIfNullPr clsasiento
  loc_C3B731: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3B736: FFree1Str var_98
  loc_C3B739: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3B748: FFreeVar var_B4 = ""
  loc_C3B74F: FLdRfVar var_B4
  loc_C3B752: FLdRfVar var_15C
  loc_C3B755: LitVarStr var_D4, "HabeCuco"
  loc_C3B75A: PopAdLdVar
  loc_C3B75B: FLdRfVar var_E8
  loc_C3B75E: FLdRfVar var_A4
  loc_C3B761: FLdPr Me
  loc_C3B764: MemLdRfVar from_stack_1.global_52
  loc_C3B767: NewIfNullPr clscaja
  loc_C3B76A: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B76F: FLdPr var_A4
  loc_C3B772:  = Me.Fields
  loc_C3B777: FLdPr var_E8
  loc_C3B77A: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B77F: FLdPr var_15C
  loc_C3B782:  = Me.Value
  loc_C3B787: FLdRfVar var_C4
  loc_C3B78A: FLdRfVar var_1CC
  loc_C3B78D: LitVarStr var_118, "HabeCaja"
  loc_C3B792: PopAdLdVar
  loc_C3B793: FLdRfVar var_1C8
  loc_C3B796: FLdRfVar var_1B0
  loc_C3B799: FLdPr Me
  loc_C3B79C: MemLdRfVar from_stack_1.global_52
  loc_C3B79F: NewIfNullPr clscaja
  loc_C3B7A2: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B7A7: FLdPr var_1B0
  loc_C3B7AA:  = Me.Fields
  loc_C3B7AF: FLdPr var_1C8
  loc_C3B7B2: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B7B7: FLdPr var_1CC
  loc_C3B7BA:  = Me.Value
  loc_C3B7BF: FLdRfVar var_C4
  loc_C3B7C2: CR4Var
  loc_C3B7C3: PopFPR8
  loc_C3B7C4: LitI2_Byte 0
  loc_C3B7C6: CR8I2
  loc_C3B7C7: PopFPR8
  loc_C3B7C8: FLdRfVar var_B4
  loc_C3B7CB: CStrVarTmp
  loc_C3B7CC: FStStrNoPop var_98
  loc_C3B7CF: FLdI2 var_92
  loc_C3B7D2: ImpAdLdI2 MemVar_C3D064
  loc_C3B7D5: FLdPr Me
  loc_C3B7D8: MemLdRfVar from_stack_1.global_60
  loc_C3B7DB: NewIfNullPr clsasiento
  loc_C3B7DE: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3B7E3: FFree1Str var_98
  loc_C3B7E6: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3B7F5: FFreeVar var_B4 = ""
  loc_C3B7FC: FLdRfVar var_1D0
  loc_C3B7FF: FLdPr Me
  loc_C3B802: MemLdRfVar from_stack_1.global_52
  loc_C3B805: NewIfNullPr clscaja
  loc_C3B808: from_stack_1 = clscaja.RecordCount
  loc_C3B80D: FLdRfVar var_138
  loc_C3B810: FLdPr Me
  loc_C3B813: MemLdRfVar from_stack_1.global_52
  loc_C3B816: NewIfNullPr clscaja
  loc_C3B819: from_stack_1 = clscaja.AbsolutePosition
  loc_C3B81E: ILdRf var_138
  loc_C3B821: CR8I4
  loc_C3B822: ILdRf var_1D0
  loc_C3B825: CR8I4
  loc_C3B826: DivR8
  loc_C3B827: LitI2_Byte &H64
  loc_C3B829: CR8I2
  loc_C3B82A: MulR8
  loc_C3B82B: CVarR4
  loc_C3B82F: PopAdLdVar
  loc_C3B830: FLdPr Me
  loc_C3B833: VCallAd Control_ID_ProgressBar
  loc_C3B836: FStAdFunc var_A4
  loc_C3B839: FLdPr var_A4
  loc_C3B83C: LateIdSt
  loc_C3B841: FFree1Ad var_A4
  loc_C3B844: FLdPr Me
  loc_C3B847: MemLdRfVar from_stack_1.global_52
  loc_C3B84A: NewIfNullPr clscaja
  loc_C3B84D: Call clscaja.MoveSiguiente()
  loc_C3B852: Branch loc_C3B68A
  loc_C3B855: LitI2_Byte &HFF
  loc_C3B857: BranchF loc_C3C1EA
  loc_C3B85A: LitVarStr var_D4, "Asiento Automático Pago Deuda Pública Consolidada"
  loc_C3B85F: PopAdLdVar
  loc_C3B860: FLdPr Me
  loc_C3B863: VCallAd Control_ID_StatusBar
  loc_C3B866: FStAdFunc var_A4
  loc_C3B869: FLdPr var_A4
  loc_C3B86C: LateIdSt
  loc_C3B871: FFree1Ad var_A4
  loc_C3B874: LitStr "SELECT sub.CodiCuco, Sum(DebeCaja) DebeCaja"
  loc_C3B877: LitStr " FROM subdpagodeucon sub"
  loc_C3B87A: ConcatStr
  loc_C3B87B: FStStrNoPop var_98
  loc_C3B87E: LitStr " INNER JOIN imputacion i ON i.PeriInfo = sub.PeriInfo AND i.IdImpu = sub.IdImpu"
  loc_C3B881: ConcatStr
  loc_C3B882: FStStrNoPop var_9C
  loc_C3B885: LitStr " AND i.AjusImpu = 0"
  loc_C3B888: ConcatStr
  loc_C3B889: FStStrNoPop var_A0
  loc_C3B88C: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3B88F: ConcatStr
  loc_C3B890: FStStrNoPop var_12C
  loc_C3B893: LitStr " AND DebeCaja > 0"
  loc_C3B896: ConcatStr
  loc_C3B897: FStStrNoPop var_130
  loc_C3B89A: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C3B89D: ConcatStr
  loc_C3B89E: FStStrNoPop var_134
  loc_C3B8A1: FLdPr Me
  loc_C3B8A4: MemLdRfVar from_stack_1.global_52
  loc_C3B8A7: NewIfNullPr clscaja
  loc_C3B8AA: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3B8AF: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = ""
  loc_C3B8BE: FLdRfVar var_138
  loc_C3B8C1: FLdPr Me
  loc_C3B8C4: MemLdRfVar from_stack_1.global_52
  loc_C3B8C7: NewIfNullPr clscaja
  loc_C3B8CA: from_stack_1 = clscaja.RecordCount
  loc_C3B8CF: ILdRf var_138
  loc_C3B8D2: LitI4 0
  loc_C3B8D7: GtI4
  loc_C3B8D8: BranchF loc_C3BB8A
  loc_C3B8DB: FLdPr Me
  loc_C3B8DE: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3B8E1: FStAdFunc var_A4
  loc_C3B8E4: FLdPr var_A4
  loc_C3B8E7: LateIdLdVar var_B4 DispID_15 0
  loc_C3B8EE: PopAd
  loc_C3B8F0: FLdPr Me
  loc_C3B8F3: VCallAd Control_ID_StatusBar
  loc_C3B8F6: FStAdFunc var_E8
  loc_C3B8F9: FLdPr var_E8
  loc_C3B8FC: LateIdLdVar var_C4 DispID_1 0
  loc_C3B903: PopAd
  loc_C3B905: FLdRfVar var_1C2
  loc_C3B908: LitI4 0
  loc_C3B90D: LitI4 0
  loc_C3B912: FLdRfVar var_C4
  loc_C3B915: CStrVarTmp
  loc_C3B916: FStStrNoPop var_9C
  loc_C3B919: LitI2_Byte &H14
  loc_C3B91B: FLdRfVar var_B4
  loc_C3B91E: CStrVarTmp
  loc_C3B91F: FStStrNoPop var_98
  loc_C3B922: ImpAdLdI2 MemVar_C3D064
  loc_C3B925: FLdPr Me
  loc_C3B928: MemLdRfVar from_stack_1.global_60
  loc_C3B92B: NewIfNullPr clsasiento
  loc_C3B92E: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3B933: FLdI2 var_1C2
  loc_C3B936: FStI2 var_92
  loc_C3B939: FFreeStr var_98 = ""
  loc_C3B940: FFreeAd var_A4 = ""
  loc_C3B947: FFreeVar var_B4 = ""
  loc_C3B94E: FLdPr Me
  loc_C3B951: MemLdI2 global_68
  loc_C3B954: LitI2_Byte 0
  loc_C3B956: EqI2
  loc_C3B957: BranchF loc_C3B963
  loc_C3B95A: FLdI2 var_92
  loc_C3B95D: FLdPr Me
  loc_C3B960: MemStI2 global_68
  loc_C3B963: FLdPr Me
  loc_C3B966: MemLdI2 global_70
  loc_C3B969: FLdI2 var_92
  loc_C3B96C: LtI2
  loc_C3B96D: BranchF loc_C3B979
  loc_C3B970: FLdI2 var_92
  loc_C3B973: FLdPr Me
  loc_C3B976: MemStI2 global_70
  loc_C3B979: FLdPr Me
  loc_C3B97C: MemLdRfVar from_stack_1.global_52
  loc_C3B97F: NewIfNullPr clscaja
  loc_C3B982: Call clscaja.MoveFirst()
  loc_C3B987: LitI2_Byte 0
  loc_C3B989: CR8I2
  loc_C3B98A: FStFPR8 var_90
  loc_C3B98D: FLdRfVar var_1C2
  loc_C3B990: FLdPr Me
  loc_C3B993: MemLdRfVar from_stack_1.global_52
  loc_C3B996: NewIfNullPr clscaja
  loc_C3B999: from_stack_1 = clscaja.EOF
  loc_C3B99E: FLdI2 var_1C2
  loc_C3B9A1: NotI4
  loc_C3B9A2: BranchF loc_C3BB21
  loc_C3B9A5: FLdRfVar var_15C
  loc_C3B9A8: LitVarStr var_118, "DebeCaja"
  loc_C3B9AD: PopAdLdVar
  loc_C3B9AE: FLdRfVar var_E8
  loc_C3B9B1: FLdRfVar var_A4
  loc_C3B9B4: FLdPr Me
  loc_C3B9B7: MemLdRfVar from_stack_1.global_52
  loc_C3B9BA: NewIfNullPr clscaja
  loc_C3B9BD: from_stack_1v = clscaja.RsFrmGet()
  loc_C3B9C2: FLdPr var_A4
  loc_C3B9C5:  = Me.Fields
  loc_C3B9CA: FLdPr var_E8
  loc_C3B9CD: from_stack_2 = Me.Item(from_stack_1)
  loc_C3B9D2: LitI4 2
  loc_C3B9D7: FLdRfVar var_90
  loc_C3B9DA: CVarRef
  loc_C3B9DF: FLdRfVar var_B4
  loc_C3B9E2: ImpAdCallFPR4  = Round(, )
  loc_C3B9E7: FLdRfVar var_B4
  loc_C3B9EA: LitI4 2
  loc_C3B9EF: FLdZeroAd var_15C
  loc_C3B9F2: CVarAd
  loc_C3B9F6: FLdRfVar var_E4
  loc_C3B9F9: ImpAdCallFPR4  = Round(, )
  loc_C3B9FE: FLdRfVar var_E4
  loc_C3BA01: AddVar var_F8
  loc_C3BA05: CR4Var
  loc_C3BA06: FStFPR8 var_90
  loc_C3BA09: FFreeAd var_A4 = ""
  loc_C3BA10: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3BA1B: FLdRfVar var_B4
  loc_C3BA1E: FLdRfVar var_15C
  loc_C3BA21: LitVarStr var_D4, "CodiCuco"
  loc_C3BA26: PopAdLdVar
  loc_C3BA27: FLdRfVar var_E8
  loc_C3BA2A: FLdRfVar var_A4
  loc_C3BA2D: FLdPr Me
  loc_C3BA30: MemLdRfVar from_stack_1.global_52
  loc_C3BA33: NewIfNullPr clscaja
  loc_C3BA36: from_stack_1v = clscaja.RsFrmGet()
  loc_C3BA3B: FLdPr var_A4
  loc_C3BA3E:  = Me.Fields
  loc_C3BA43: FLdPr var_E8
  loc_C3BA46: from_stack_2 = Me.Item(from_stack_1)
  loc_C3BA4B: FLdPr var_15C
  loc_C3BA4E:  = Me.Value
  loc_C3BA53: FLdRfVar var_C4
  loc_C3BA56: FLdRfVar var_1CC
  loc_C3BA59: LitVarStr var_118, "DebeCaja"
  loc_C3BA5E: PopAdLdVar
  loc_C3BA5F: FLdRfVar var_1C8
  loc_C3BA62: FLdRfVar var_1B0
  loc_C3BA65: FLdPr Me
  loc_C3BA68: MemLdRfVar from_stack_1.global_52
  loc_C3BA6B: NewIfNullPr clscaja
  loc_C3BA6E: from_stack_1v = clscaja.RsFrmGet()
  loc_C3BA73: FLdPr var_1B0
  loc_C3BA76:  = Me.Fields
  loc_C3BA7B: FLdPr var_1C8
  loc_C3BA7E: from_stack_2 = Me.Item(from_stack_1)
  loc_C3BA83: FLdPr var_1CC
  loc_C3BA86:  = Me.Value
  loc_C3BA8B: LitI2_Byte 0
  loc_C3BA8D: CR8I2
  loc_C3BA8E: PopFPR8
  loc_C3BA8F: FLdRfVar var_C4
  loc_C3BA92: CR4Var
  loc_C3BA93: PopFPR8
  loc_C3BA94: FLdRfVar var_B4
  loc_C3BA97: CStrVarTmp
  loc_C3BA98: FStStrNoPop var_98
  loc_C3BA9B: FLdI2 var_92
  loc_C3BA9E: ImpAdLdI2 MemVar_C3D064
  loc_C3BAA1: FLdPr Me
  loc_C3BAA4: MemLdRfVar from_stack_1.global_60
  loc_C3BAA7: NewIfNullPr clsasiento
  loc_C3BAAA: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3BAAF: FFree1Str var_98
  loc_C3BAB2: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3BAC1: FFreeVar var_B4 = ""
  loc_C3BAC8: FLdRfVar var_1D0
  loc_C3BACB: FLdPr Me
  loc_C3BACE: MemLdRfVar from_stack_1.global_52
  loc_C3BAD1: NewIfNullPr clscaja
  loc_C3BAD4: from_stack_1 = clscaja.RecordCount
  loc_C3BAD9: FLdRfVar var_138
  loc_C3BADC: FLdPr Me
  loc_C3BADF: MemLdRfVar from_stack_1.global_52
  loc_C3BAE2: NewIfNullPr clscaja
  loc_C3BAE5: from_stack_1 = clscaja.AbsolutePosition
  loc_C3BAEA: ILdRf var_138
  loc_C3BAED: CR8I4
  loc_C3BAEE: ILdRf var_1D0
  loc_C3BAF1: CR8I4
  loc_C3BAF2: DivR8
  loc_C3BAF3: LitI2_Byte &H64
  loc_C3BAF5: CR8I2
  loc_C3BAF6: MulR8
  loc_C3BAF7: CVarR4
  loc_C3BAFB: PopAdLdVar
  loc_C3BAFC: FLdPr Me
  loc_C3BAFF: VCallAd Control_ID_ProgressBar
  loc_C3BB02: FStAdFunc var_A4
  loc_C3BB05: FLdPr var_A4
  loc_C3BB08: LateIdSt
  loc_C3BB0D: FFree1Ad var_A4
  loc_C3BB10: FLdPr Me
  loc_C3BB13: MemLdRfVar from_stack_1.global_52
  loc_C3BB16: NewIfNullPr clscaja
  loc_C3BB19: Call clscaja.MoveSiguiente()
  loc_C3BB1E: Branch loc_C3B98D
  loc_C3BB21: FLdRfVar var_B4
  loc_C3BB24: FLdRfVar var_15C
  loc_C3BB27: LitVarStr var_D4, "PatrPaco"
  loc_C3BB2C: PopAdLdVar
  loc_C3BB2D: FLdRfVar var_E8
  loc_C3BB30: FLdRfVar var_A4
  loc_C3BB33: FLdPr Me
  loc_C3BB36: MemLdRfVar from_stack_1.global_56
  loc_C3BB39: NewIfNullPr clsparaconta
  loc_C3BB3C: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3BB41: FLdPr var_A4
  loc_C3BB44:  = Me.Fields
  loc_C3BB49: FLdPr var_E8
  loc_C3BB4C: from_stack_2 = Me.Item(from_stack_1)
  loc_C3BB51: FLdPr var_15C
  loc_C3BB54:  = Me.Value
  loc_C3BB59: FLdR8 var_90
  loc_C3BB5C: LitI2_Byte 0
  loc_C3BB5E: CR8I2
  loc_C3BB5F: PopFPR8
  loc_C3BB60: FLdRfVar var_B4
  loc_C3BB63: CStrVarTmp
  loc_C3BB64: FStStrNoPop var_98
  loc_C3BB67: FLdI2 var_92
  loc_C3BB6A: ImpAdLdI2 MemVar_C3D064
  loc_C3BB6D: FLdPr Me
  loc_C3BB70: MemLdRfVar from_stack_1.global_60
  loc_C3BB73: NewIfNullPr clsasiento
  loc_C3BB76: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3BB7B: FFree1Str var_98
  loc_C3BB7E: FFreeAd var_A4 = "": var_E8 = ""
  loc_C3BB87: FFree1Var var_B4 = ""
  loc_C3BB8A: LitVarStr var_D4, "Asiento Automático Pago Deuda Pública Consolidada Ajustes"
  loc_C3BB8F: PopAdLdVar
  loc_C3BB90: FLdPr Me
  loc_C3BB93: VCallAd Control_ID_StatusBar
  loc_C3BB96: FStAdFunc var_A4
  loc_C3BB99: FLdPr var_A4
  loc_C3BB9C: LateIdSt
  loc_C3BBA1: FFree1Ad var_A4
  loc_C3BBA4: LitStr "SELECT sub.CodiCuco, Sum(DebeCaja) DebeCaja"
  loc_C3BBA7: LitStr " FROM subdpagodeucon sub"
  loc_C3BBAA: ConcatStr
  loc_C3BBAB: FStStrNoPop var_98
  loc_C3BBAE: LitStr " INNER JOIN imputacion i ON i.PeriInfo = sub.PeriInfo AND i.IdImpu = sub.IdImpu"
  loc_C3BBB1: ConcatStr
  loc_C3BBB2: FStStrNoPop var_9C
  loc_C3BBB5: LitStr " AND i.AjusImpu != 0"
  loc_C3BBB8: ConcatStr
  loc_C3BBB9: FStStrNoPop var_A0
  loc_C3BBBC: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3BBBF: ConcatStr
  loc_C3BBC0: FStStrNoPop var_12C
  loc_C3BBC3: LitStr " AND DebeCaja > 0"
  loc_C3BBC6: ConcatStr
  loc_C3BBC7: FStStrNoPop var_130
  loc_C3BBCA: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C3BBCD: ConcatStr
  loc_C3BBCE: FStStrNoPop var_134
  loc_C3BBD1: FLdPr Me
  loc_C3BBD4: MemLdRfVar from_stack_1.global_52
  loc_C3BBD7: NewIfNullPr clscaja
  loc_C3BBDA: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3BBDF: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = ""
  loc_C3BBEE: FLdRfVar var_138
  loc_C3BBF1: FLdPr Me
  loc_C3BBF4: MemLdRfVar from_stack_1.global_52
  loc_C3BBF7: NewIfNullPr clscaja
  loc_C3BBFA: from_stack_1 = clscaja.RecordCount
  loc_C3BBFF: ILdRf var_138
  loc_C3BC02: LitI4 0
  loc_C3BC07: GtI4
  loc_C3BC08: BranchF loc_C3BEBA
  loc_C3BC0B: FLdPr Me
  loc_C3BC0E: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3BC11: FStAdFunc var_A4
  loc_C3BC14: FLdPr var_A4
  loc_C3BC17: LateIdLdVar var_B4 DispID_15 0
  loc_C3BC1E: PopAd
  loc_C3BC20: FLdPr Me
  loc_C3BC23: VCallAd Control_ID_StatusBar
  loc_C3BC26: FStAdFunc var_E8
  loc_C3BC29: FLdPr var_E8
  loc_C3BC2C: LateIdLdVar var_C4 DispID_1 0
  loc_C3BC33: PopAd
  loc_C3BC35: FLdRfVar var_1C2
  loc_C3BC38: LitI4 0
  loc_C3BC3D: LitI4 0
  loc_C3BC42: FLdRfVar var_C4
  loc_C3BC45: CStrVarTmp
  loc_C3BC46: FStStrNoPop var_9C
  loc_C3BC49: LitI2_Byte &H14
  loc_C3BC4B: FLdRfVar var_B4
  loc_C3BC4E: CStrVarTmp
  loc_C3BC4F: FStStrNoPop var_98
  loc_C3BC52: ImpAdLdI2 MemVar_C3D064
  loc_C3BC55: FLdPr Me
  loc_C3BC58: MemLdRfVar from_stack_1.global_60
  loc_C3BC5B: NewIfNullPr clsasiento
  loc_C3BC5E: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3BC63: FLdI2 var_1C2
  loc_C3BC66: FStI2 var_92
  loc_C3BC69: FFreeStr var_98 = ""
  loc_C3BC70: FFreeAd var_A4 = ""
  loc_C3BC77: FFreeVar var_B4 = ""
  loc_C3BC7E: FLdPr Me
  loc_C3BC81: MemLdI2 global_68
  loc_C3BC84: LitI2_Byte 0
  loc_C3BC86: EqI2
  loc_C3BC87: BranchF loc_C3BC93
  loc_C3BC8A: FLdI2 var_92
  loc_C3BC8D: FLdPr Me
  loc_C3BC90: MemStI2 global_68
  loc_C3BC93: FLdPr Me
  loc_C3BC96: MemLdI2 global_70
  loc_C3BC99: FLdI2 var_92
  loc_C3BC9C: LtI2
  loc_C3BC9D: BranchF loc_C3BCA9
  loc_C3BCA0: FLdI2 var_92
  loc_C3BCA3: FLdPr Me
  loc_C3BCA6: MemStI2 global_70
  loc_C3BCA9: FLdPr Me
  loc_C3BCAC: MemLdRfVar from_stack_1.global_52
  loc_C3BCAF: NewIfNullPr clscaja
  loc_C3BCB2: Call clscaja.MoveFirst()
  loc_C3BCB7: LitI2_Byte 0
  loc_C3BCB9: CR8I2
  loc_C3BCBA: FStFPR8 var_90
  loc_C3BCBD: FLdRfVar var_1C2
  loc_C3BCC0: FLdPr Me
  loc_C3BCC3: MemLdRfVar from_stack_1.global_52
  loc_C3BCC6: NewIfNullPr clscaja
  loc_C3BCC9: from_stack_1 = clscaja.EOF
  loc_C3BCCE: FLdI2 var_1C2
  loc_C3BCD1: NotI4
  loc_C3BCD2: BranchF loc_C3BE51
  loc_C3BCD5: FLdRfVar var_15C
  loc_C3BCD8: LitVarStr var_118, "DebeCaja"
  loc_C3BCDD: PopAdLdVar
  loc_C3BCDE: FLdRfVar var_E8
  loc_C3BCE1: FLdRfVar var_A4
  loc_C3BCE4: FLdPr Me
  loc_C3BCE7: MemLdRfVar from_stack_1.global_52
  loc_C3BCEA: NewIfNullPr clscaja
  loc_C3BCED: from_stack_1v = clscaja.RsFrmGet()
  loc_C3BCF2: FLdPr var_A4
  loc_C3BCF5:  = Me.Fields
  loc_C3BCFA: FLdPr var_E8
  loc_C3BCFD: from_stack_2 = Me.Item(from_stack_1)
  loc_C3BD02: LitI4 2
  loc_C3BD07: FLdRfVar var_90
  loc_C3BD0A: CVarRef
  loc_C3BD0F: FLdRfVar var_B4
  loc_C3BD12: ImpAdCallFPR4  = Round(, )
  loc_C3BD17: FLdRfVar var_B4
  loc_C3BD1A: LitI4 2
  loc_C3BD1F: FLdZeroAd var_15C
  loc_C3BD22: CVarAd
  loc_C3BD26: FLdRfVar var_E4
  loc_C3BD29: ImpAdCallFPR4  = Round(, )
  loc_C3BD2E: FLdRfVar var_E4
  loc_C3BD31: AddVar var_F8
  loc_C3BD35: CR4Var
  loc_C3BD36: FStFPR8 var_90
  loc_C3BD39: FFreeAd var_A4 = ""
  loc_C3BD40: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3BD4B: FLdRfVar var_B4
  loc_C3BD4E: FLdRfVar var_15C
  loc_C3BD51: LitVarStr var_D4, "CodiCuco"
  loc_C3BD56: PopAdLdVar
  loc_C3BD57: FLdRfVar var_E8
  loc_C3BD5A: FLdRfVar var_A4
  loc_C3BD5D: FLdPr Me
  loc_C3BD60: MemLdRfVar from_stack_1.global_52
  loc_C3BD63: NewIfNullPr clscaja
  loc_C3BD66: from_stack_1v = clscaja.RsFrmGet()
  loc_C3BD6B: FLdPr var_A4
  loc_C3BD6E:  = Me.Fields
  loc_C3BD73: FLdPr var_E8
  loc_C3BD76: from_stack_2 = Me.Item(from_stack_1)
  loc_C3BD7B: FLdPr var_15C
  loc_C3BD7E:  = Me.Value
  loc_C3BD83: FLdRfVar var_C4
  loc_C3BD86: FLdRfVar var_1CC
  loc_C3BD89: LitVarStr var_118, "DebeCaja"
  loc_C3BD8E: PopAdLdVar
  loc_C3BD8F: FLdRfVar var_1C8
  loc_C3BD92: FLdRfVar var_1B0
  loc_C3BD95: FLdPr Me
  loc_C3BD98: MemLdRfVar from_stack_1.global_52
  loc_C3BD9B: NewIfNullPr clscaja
  loc_C3BD9E: from_stack_1v = clscaja.RsFrmGet()
  loc_C3BDA3: FLdPr var_1B0
  loc_C3BDA6:  = Me.Fields
  loc_C3BDAB: FLdPr var_1C8
  loc_C3BDAE: from_stack_2 = Me.Item(from_stack_1)
  loc_C3BDB3: FLdPr var_1CC
  loc_C3BDB6:  = Me.Value
  loc_C3BDBB: LitI2_Byte 0
  loc_C3BDBD: CR8I2
  loc_C3BDBE: PopFPR8
  loc_C3BDBF: FLdRfVar var_C4
  loc_C3BDC2: CR4Var
  loc_C3BDC3: PopFPR8
  loc_C3BDC4: FLdRfVar var_B4
  loc_C3BDC7: CStrVarTmp
  loc_C3BDC8: FStStrNoPop var_98
  loc_C3BDCB: FLdI2 var_92
  loc_C3BDCE: ImpAdLdI2 MemVar_C3D064
  loc_C3BDD1: FLdPr Me
  loc_C3BDD4: MemLdRfVar from_stack_1.global_60
  loc_C3BDD7: NewIfNullPr clsasiento
  loc_C3BDDA: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3BDDF: FFree1Str var_98
  loc_C3BDE2: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3BDF1: FFreeVar var_B4 = ""
  loc_C3BDF8: FLdRfVar var_1D0
  loc_C3BDFB: FLdPr Me
  loc_C3BDFE: MemLdRfVar from_stack_1.global_52
  loc_C3BE01: NewIfNullPr clscaja
  loc_C3BE04: from_stack_1 = clscaja.RecordCount
  loc_C3BE09: FLdRfVar var_138
  loc_C3BE0C: FLdPr Me
  loc_C3BE0F: MemLdRfVar from_stack_1.global_52
  loc_C3BE12: NewIfNullPr clscaja
  loc_C3BE15: from_stack_1 = clscaja.AbsolutePosition
  loc_C3BE1A: ILdRf var_138
  loc_C3BE1D: CR8I4
  loc_C3BE1E: ILdRf var_1D0
  loc_C3BE21: CR8I4
  loc_C3BE22: DivR8
  loc_C3BE23: LitI2_Byte &H64
  loc_C3BE25: CR8I2
  loc_C3BE26: MulR8
  loc_C3BE27: CVarR4
  loc_C3BE2B: PopAdLdVar
  loc_C3BE2C: FLdPr Me
  loc_C3BE2F: VCallAd Control_ID_ProgressBar
  loc_C3BE32: FStAdFunc var_A4
  loc_C3BE35: FLdPr var_A4
  loc_C3BE38: LateIdSt
  loc_C3BE3D: FFree1Ad var_A4
  loc_C3BE40: FLdPr Me
  loc_C3BE43: MemLdRfVar from_stack_1.global_52
  loc_C3BE46: NewIfNullPr clscaja
  loc_C3BE49: Call clscaja.MoveSiguiente()
  loc_C3BE4E: Branch loc_C3BCBD
  loc_C3BE51: FLdRfVar var_B4
  loc_C3BE54: FLdRfVar var_15C
  loc_C3BE57: LitVarStr var_D4, "PatrPaco"
  loc_C3BE5C: PopAdLdVar
  loc_C3BE5D: FLdRfVar var_E8
  loc_C3BE60: FLdRfVar var_A4
  loc_C3BE63: FLdPr Me
  loc_C3BE66: MemLdRfVar from_stack_1.global_56
  loc_C3BE69: NewIfNullPr clsparaconta
  loc_C3BE6C: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3BE71: FLdPr var_A4
  loc_C3BE74:  = Me.Fields
  loc_C3BE79: FLdPr var_E8
  loc_C3BE7C: from_stack_2 = Me.Item(from_stack_1)
  loc_C3BE81: FLdPr var_15C
  loc_C3BE84:  = Me.Value
  loc_C3BE89: FLdR8 var_90
  loc_C3BE8C: LitI2_Byte 0
  loc_C3BE8E: CR8I2
  loc_C3BE8F: PopFPR8
  loc_C3BE90: FLdRfVar var_B4
  loc_C3BE93: CStrVarTmp
  loc_C3BE94: FStStrNoPop var_98
  loc_C3BE97: FLdI2 var_92
  loc_C3BE9A: ImpAdLdI2 MemVar_C3D064
  loc_C3BE9D: FLdPr Me
  loc_C3BEA0: MemLdRfVar from_stack_1.global_60
  loc_C3BEA3: NewIfNullPr clsasiento
  loc_C3BEA6: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3BEAB: FFree1Str var_98
  loc_C3BEAE: FFreeAd var_A4 = "": var_E8 = ""
  loc_C3BEB7: FFree1Var var_B4 = ""
  loc_C3BEBA: LitVarStr var_D4, "Asiento Automático Pago Deuda Pública Consolidada Ajustes"
  loc_C3BEBF: PopAdLdVar
  loc_C3BEC0: FLdPr Me
  loc_C3BEC3: VCallAd Control_ID_StatusBar
  loc_C3BEC6: FStAdFunc var_A4
  loc_C3BEC9: FLdPr var_A4
  loc_C3BECC: LateIdSt
  loc_C3BED1: FFree1Ad var_A4
  loc_C3BED4: LitStr "SELECT CodiCuco, Sum(HabeCaja) HabeCaja"
  loc_C3BED7: LitStr " FROM subdpagodeucon sub"
  loc_C3BEDA: ConcatStr
  loc_C3BEDB: FStStrNoPop var_98
  loc_C3BEDE: LitStr " INNER JOIN imputacion i ON i.PeriInfo = sub.PeriInfo AND i.IdImpu = sub.IdImpu"
  loc_C3BEE1: ConcatStr
  loc_C3BEE2: FStStrNoPop var_9C
  loc_C3BEE5: LitStr " AND i.AjusImpu != 0"
  loc_C3BEE8: ConcatStr
  loc_C3BEE9: FStStrNoPop var_A0
  loc_C3BEEC: LitStr " WHERE FechCaja BETWEEN @desde AND @hasta"
  loc_C3BEEF: ConcatStr
  loc_C3BEF0: FStStrNoPop var_12C
  loc_C3BEF3: LitStr " AND HabeCaja > 0"
  loc_C3BEF6: ConcatStr
  loc_C3BEF7: FStStrNoPop var_130
  loc_C3BEFA: LitStr " GROUP BY CodiCuco ORDER BY CodiCuco;"
  loc_C3BEFD: ConcatStr
  loc_C3BEFE: FStStrNoPop var_134
  loc_C3BF01: FLdPr Me
  loc_C3BF04: MemLdRfVar from_stack_1.global_52
  loc_C3BF07: NewIfNullPr clscaja
  loc_C3BF0A: Call clscaja.RedefineRS(from_stack_1v)
  loc_C3BF0F: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_12C = "": var_130 = ""
  loc_C3BF1E: FLdRfVar var_138
  loc_C3BF21: FLdPr Me
  loc_C3BF24: MemLdRfVar from_stack_1.global_52
  loc_C3BF27: NewIfNullPr clscaja
  loc_C3BF2A: from_stack_1 = clscaja.RecordCount
  loc_C3BF2F: ILdRf var_138
  loc_C3BF32: LitI4 0
  loc_C3BF37: GtI4
  loc_C3BF38: BranchF loc_C3C1EA
  loc_C3BF3B: FLdPr Me
  loc_C3BF3E: VCallAd Control_ID_FechCajaHastaMsk
  loc_C3BF41: FStAdFunc var_A4
  loc_C3BF44: FLdPr var_A4
  loc_C3BF47: LateIdLdVar var_B4 DispID_15 0
  loc_C3BF4E: PopAd
  loc_C3BF50: FLdPr Me
  loc_C3BF53: VCallAd Control_ID_StatusBar
  loc_C3BF56: FStAdFunc var_E8
  loc_C3BF59: FLdPr var_E8
  loc_C3BF5C: LateIdLdVar var_C4 DispID_1 0
  loc_C3BF63: PopAd
  loc_C3BF65: FLdRfVar var_1C2
  loc_C3BF68: LitI4 0
  loc_C3BF6D: LitI4 0
  loc_C3BF72: FLdRfVar var_C4
  loc_C3BF75: CStrVarTmp
  loc_C3BF76: FStStrNoPop var_9C
  loc_C3BF79: LitI2_Byte &H14
  loc_C3BF7B: FLdRfVar var_B4
  loc_C3BF7E: CStrVarTmp
  loc_C3BF7F: FStStrNoPop var_98
  loc_C3BF82: ImpAdLdI2 MemVar_C3D064
  loc_C3BF85: FLdPr Me
  loc_C3BF88: MemLdRfVar from_stack_1.global_60
  loc_C3BF8B: NewIfNullPr clsasiento
  loc_C3BF8E: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_C3BF93: FLdI2 var_1C2
  loc_C3BF96: FStI2 var_92
  loc_C3BF99: FFreeStr var_98 = ""
  loc_C3BFA0: FFreeAd var_A4 = ""
  loc_C3BFA7: FFreeVar var_B4 = ""
  loc_C3BFAE: FLdPr Me
  loc_C3BFB1: MemLdI2 global_68
  loc_C3BFB4: LitI2_Byte 0
  loc_C3BFB6: EqI2
  loc_C3BFB7: BranchF loc_C3BFC3
  loc_C3BFBA: FLdI2 var_92
  loc_C3BFBD: FLdPr Me
  loc_C3BFC0: MemStI2 global_68
  loc_C3BFC3: FLdPr Me
  loc_C3BFC6: MemLdI2 global_70
  loc_C3BFC9: FLdI2 var_92
  loc_C3BFCC: LtI2
  loc_C3BFCD: BranchF loc_C3BFD9
  loc_C3BFD0: FLdI2 var_92
  loc_C3BFD3: FLdPr Me
  loc_C3BFD6: MemStI2 global_70
  loc_C3BFD9: FLdPr Me
  loc_C3BFDC: MemLdRfVar from_stack_1.global_52
  loc_C3BFDF: NewIfNullPr clscaja
  loc_C3BFE2: Call clscaja.MoveFirst()
  loc_C3BFE7: LitI2_Byte 0
  loc_C3BFE9: CR8I2
  loc_C3BFEA: FStFPR8 var_90
  loc_C3BFED: FLdRfVar var_1C2
  loc_C3BFF0: FLdPr Me
  loc_C3BFF3: MemLdRfVar from_stack_1.global_52
  loc_C3BFF6: NewIfNullPr clscaja
  loc_C3BFF9: from_stack_1 = clscaja.EOF
  loc_C3BFFE: FLdI2 var_1C2
  loc_C3C001: NotI4
  loc_C3C002: BranchF loc_C3C181
  loc_C3C005: FLdRfVar var_15C
  loc_C3C008: LitVarStr var_118, "HabeCaja"
  loc_C3C00D: PopAdLdVar
  loc_C3C00E: FLdRfVar var_E8
  loc_C3C011: FLdRfVar var_A4
  loc_C3C014: FLdPr Me
  loc_C3C017: MemLdRfVar from_stack_1.global_52
  loc_C3C01A: NewIfNullPr clscaja
  loc_C3C01D: from_stack_1v = clscaja.RsFrmGet()
  loc_C3C022: FLdPr var_A4
  loc_C3C025:  = Me.Fields
  loc_C3C02A: FLdPr var_E8
  loc_C3C02D: from_stack_2 = Me.Item(from_stack_1)
  loc_C3C032: LitI4 2
  loc_C3C037: FLdRfVar var_90
  loc_C3C03A: CVarRef
  loc_C3C03F: FLdRfVar var_B4
  loc_C3C042: ImpAdCallFPR4  = Round(, )
  loc_C3C047: FLdRfVar var_B4
  loc_C3C04A: LitI4 2
  loc_C3C04F: FLdZeroAd var_15C
  loc_C3C052: CVarAd
  loc_C3C056: FLdRfVar var_E4
  loc_C3C059: ImpAdCallFPR4  = Round(, )
  loc_C3C05E: FLdRfVar var_E4
  loc_C3C061: AddVar var_F8
  loc_C3C065: CR4Var
  loc_C3C066: FStFPR8 var_90
  loc_C3C069: FFreeAd var_A4 = ""
  loc_C3C070: FFreeVar var_C4 = "": var_B4 = "": var_E4 = ""
  loc_C3C07B: FLdRfVar var_B4
  loc_C3C07E: FLdRfVar var_15C
  loc_C3C081: LitVarStr var_D4, "CodiCuco"
  loc_C3C086: PopAdLdVar
  loc_C3C087: FLdRfVar var_E8
  loc_C3C08A: FLdRfVar var_A4
  loc_C3C08D: FLdPr Me
  loc_C3C090: MemLdRfVar from_stack_1.global_52
  loc_C3C093: NewIfNullPr clscaja
  loc_C3C096: from_stack_1v = clscaja.RsFrmGet()
  loc_C3C09B: FLdPr var_A4
  loc_C3C09E:  = Me.Fields
  loc_C3C0A3: FLdPr var_E8
  loc_C3C0A6: from_stack_2 = Me.Item(from_stack_1)
  loc_C3C0AB: FLdPr var_15C
  loc_C3C0AE:  = Me.Value
  loc_C3C0B3: FLdRfVar var_C4
  loc_C3C0B6: FLdRfVar var_1CC
  loc_C3C0B9: LitVarStr var_118, "HabeCaja"
  loc_C3C0BE: PopAdLdVar
  loc_C3C0BF: FLdRfVar var_1C8
  loc_C3C0C2: FLdRfVar var_1B0
  loc_C3C0C5: FLdPr Me
  loc_C3C0C8: MemLdRfVar from_stack_1.global_52
  loc_C3C0CB: NewIfNullPr clscaja
  loc_C3C0CE: from_stack_1v = clscaja.RsFrmGet()
  loc_C3C0D3: FLdPr var_1B0
  loc_C3C0D6:  = Me.Fields
  loc_C3C0DB: FLdPr var_1C8
  loc_C3C0DE: from_stack_2 = Me.Item(from_stack_1)
  loc_C3C0E3: FLdPr var_1CC
  loc_C3C0E6:  = Me.Value
  loc_C3C0EB: FLdRfVar var_C4
  loc_C3C0EE: CR4Var
  loc_C3C0EF: PopFPR8
  loc_C3C0F0: LitI2_Byte 0
  loc_C3C0F2: CR8I2
  loc_C3C0F3: PopFPR8
  loc_C3C0F4: FLdRfVar var_B4
  loc_C3C0F7: CStrVarTmp
  loc_C3C0F8: FStStrNoPop var_98
  loc_C3C0FB: FLdI2 var_92
  loc_C3C0FE: ImpAdLdI2 MemVar_C3D064
  loc_C3C101: FLdPr Me
  loc_C3C104: MemLdRfVar from_stack_1.global_60
  loc_C3C107: NewIfNullPr clsasiento
  loc_C3C10A: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3C10F: FFree1Str var_98
  loc_C3C112: FFreeAd var_A4 = "": var_E8 = "": var_1B0 = "": var_1C8 = "": var_15C = ""
  loc_C3C121: FFreeVar var_B4 = ""
  loc_C3C128: FLdRfVar var_1D0
  loc_C3C12B: FLdPr Me
  loc_C3C12E: MemLdRfVar from_stack_1.global_52
  loc_C3C131: NewIfNullPr clscaja
  loc_C3C134: from_stack_1 = clscaja.RecordCount
  loc_C3C139: FLdRfVar var_138
  loc_C3C13C: FLdPr Me
  loc_C3C13F: MemLdRfVar from_stack_1.global_52
  loc_C3C142: NewIfNullPr clscaja
  loc_C3C145: from_stack_1 = clscaja.AbsolutePosition
  loc_C3C14A: ILdRf var_138
  loc_C3C14D: CR8I4
  loc_C3C14E: ILdRf var_1D0
  loc_C3C151: CR8I4
  loc_C3C152: DivR8
  loc_C3C153: LitI2_Byte &H64
  loc_C3C155: CR8I2
  loc_C3C156: MulR8
  loc_C3C157: CVarR4
  loc_C3C15B: PopAdLdVar
  loc_C3C15C: FLdPr Me
  loc_C3C15F: VCallAd Control_ID_ProgressBar
  loc_C3C162: FStAdFunc var_A4
  loc_C3C165: FLdPr var_A4
  loc_C3C168: LateIdSt
  loc_C3C16D: FFree1Ad var_A4
  loc_C3C170: FLdPr Me
  loc_C3C173: MemLdRfVar from_stack_1.global_52
  loc_C3C176: NewIfNullPr clscaja
  loc_C3C179: Call clscaja.MoveSiguiente()
  loc_C3C17E: Branch loc_C3BFED
  loc_C3C181: FLdRfVar var_B4
  loc_C3C184: FLdRfVar var_15C
  loc_C3C187: LitVarStr var_D4, "PatrPaco"
  loc_C3C18C: PopAdLdVar
  loc_C3C18D: FLdRfVar var_E8
  loc_C3C190: FLdRfVar var_A4
  loc_C3C193: FLdPr Me
  loc_C3C196: MemLdRfVar from_stack_1.global_56
  loc_C3C199: NewIfNullPr clsparaconta
  loc_C3C19C: from_stack_1v = clsparaconta.RsFrmGet()
  loc_C3C1A1: FLdPr var_A4
  loc_C3C1A4:  = Me.Fields
  loc_C3C1A9: FLdPr var_E8
  loc_C3C1AC: from_stack_2 = Me.Item(from_stack_1)
  loc_C3C1B1: FLdPr var_15C
  loc_C3C1B4:  = Me.Value
  loc_C3C1B9: LitI2_Byte 0
  loc_C3C1BB: CR8I2
  loc_C3C1BC: PopFPR8
  loc_C3C1BD: FLdR8 var_90
  loc_C3C1C0: FLdRfVar var_B4
  loc_C3C1C3: CStrVarTmp
  loc_C3C1C4: FStStrNoPop var_98
  loc_C3C1C7: FLdI2 var_92
  loc_C3C1CA: ImpAdLdI2 MemVar_C3D064
  loc_C3C1CD: FLdPr Me
  loc_C3C1D0: MemLdRfVar from_stack_1.global_60
  loc_C3C1D3: NewIfNullPr clsasiento
  loc_C3C1D6: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C3C1DB: FFree1Str var_98
  loc_C3C1DE: FFreeAd var_A4 = "": var_E8 = ""
  loc_C3C1E7: FFree1Var var_B4 = ""
  loc_C3C1EA: ExitProcCbHresult
End Function
