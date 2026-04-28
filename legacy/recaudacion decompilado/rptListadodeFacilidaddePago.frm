VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeFacilidaddePago
  Caption = "Listado de Facildiad de Pago"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeFacilidaddePago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 12696
  ClientHeight = 4524
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4272
    Width = 12696
    Height = 252
    TabIndex = 18
    OleObjectBlob = "rptListadodeFacilidaddePago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 3240
    Width = 855
    Height = 735
    TabIndex = 16
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptListadodeFacilidaddePago.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeFacilidaddePago.frx":0B9C
    Left = 9720
    Top = 3480
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 2880
    Width = 3495
    Height = 1215
    TabIndex = 13
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 15
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 14
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2880
    Width = 4095
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame1
    Left = 240
    Top = 0
    Width = 12252
    Height = 2772
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame4
      Left = 120
      Top = 240
      Width = 10212
      Height = 2172
      TabIndex = 1
      Begin MSMask.MaskEdBox FealCtctDesdeMsk
        Left = 1680
        Top = 960
        Width = 1332
        Height = 360
        TabIndex = 6
        OleObjectBlob = "rptListadodeFacilidaddePago.frx":0C00
      End
      Begin MSMask.MaskEdBox FealCtctHastaMsk
        Left = 1680
        Top = 1560
        Width = 1332
        Height = 360
        TabIndex = 8
        OleObjectBlob = "rptListadodeFacilidaddePago.frx":0CB0
      End
      Begin MSMask.MaskEdBox CodiConcMsk
        Left = 1680
        Top = 480
        Width = 1212
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptListadodeFacilidaddePago.frx":0D60
      End
      Begin VB.Label Label2
        Caption = "Concepto:"
        Left = 360
        Top = 480
        Width = 1092
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
      End
      Begin VB.Label DetaConceLbl
        Left = 3000
        Top = 480
        Width = 6612
        Height = 372
        TabIndex = 4
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 840
        Top = 960
        Width = 768
        Height = 300
        TabIndex = 5
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 900
        Top = 1560
        Width = 708
        Height = 300
        TabIndex = 7
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 10440
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 9
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8160
    Top = 3480
    Width = 612
    Height = 252
    TabStop = 0   'False
    TabIndex = 17
    OleObjectBlob = "rptListadodeFacilidaddePago.frx":0DF8
  End
End

Attribute VB_Name = "rptListadodeFacilidaddePago"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00560654
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub cmdXLS_Click() '9DF60C
  'Data Table: 490E1C
  loc_9DF5F0: LitI2_Byte &HFF
  loc_9DF5F2: LitI2_Byte 0
  loc_9DF5F4: ILdRf Me
  loc_9DF5F7: CastAd
  loc_9DF5FA: FStAdFunc var_88
  loc_9DF5FD: FLdRfVar var_88
  loc_9DF600: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DF605: FFree1Ad var_88
  loc_9DF608: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DF5BC
  'Data Table: 490E1C
  loc_9DF5A0: LitI2_Byte 0
  loc_9DF5A2: PopTmpLdAd2 var_8A
  loc_9DF5A5: ILdRf Me
  loc_9DF5A8: CastAd
  loc_9DF5AB: FStAdFunc var_88
  loc_9DF5AE: FLdRfVar var_88
  loc_9DF5B1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DF5B6: FFree1Ad var_88
  loc_9DF5B9: ExitProcHresult
End Sub

Private Sub FealCtctDesdeMsk_UnknownEvent_0 '9C66B0
  'Data Table: 490E1C
  loc_9C669C: FLdPr Me
  loc_9C669F: VCallAd Control_ID_FealCtctDesdeMsk
  loc_9C66A2: CVarAd
  loc_9C66A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C66AB: FFree1Var var_94 = ""
  loc_9C66AE: ExitProcHresult
End Sub

Private Function FealCtctDesdeMsk_UnknownEvent_8(arg_C) 'A635C0
  'Data Table: 490E1C
  loc_A63564: FLdPr Me
  loc_A63567: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A6356A: FStAdFunc var_88
  loc_A6356D: FLdPr var_88
  loc_A63570: LateIdLdVar var_98 DispID_15 0
  loc_A63577: CStrVarTmp
  loc_A63578: FStStrNoPop var_9C
  loc_A6357B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A63580: FStStrNoPop var_A0
  loc_A63583: FLdPr Me
  loc_A63586: MemStStrCopy
  loc_A6358A: FFreeStr var_9C = ""
  loc_A63591: FFree1Ad var_88
  loc_A63594: FFree1Var var_98 = ""
  loc_A63597: FLdPr Me
  loc_A6359A: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A6359D: FStAdFuncNoPop
  loc_A635A0: CastAd
  loc_A635A3: FStAdFunc var_A4
  loc_A635A6: FLdRfVar var_A4
  loc_A635A9: FLdPr Me
  loc_A635AC: MemLdStr global_108
  loc_A635AF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A635B4: IStI2 arg_C
  loc_A635B7: FFreeAd var_88 = ""
  loc_A635BE: ExitProcHresult
End Function

Private Sub FealCtctDesdeMsk_KeyPress(KeyAscii As Integer) 'A24B4C
  'Data Table: 490E1C
  loc_A24B04: ILdI2 KeyAscii
  loc_A24B07: CI4UI1
  loc_A24B08: LitI4 &H20
  loc_A24B0D: EqI4
  loc_A24B0E: BranchF loc_A24B4B
  loc_A24B11: LitVar_Missing var_A4
  loc_A24B14: PopAdLdVar
  loc_A24B15: LitVarI4
  loc_A24B1D: PopAdLdVar
  loc_A24B1E: ImpAdLdRf MemVar_D930A4
  loc_A24B21: NewIfNullPr frmCalendario
  loc_A24B24: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24B29: ImpAdLdRf MemVar_D93028
  loc_A24B2C: CDargRef
  loc_A24B30: FLdPr Me
  loc_A24B33: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A24B36: FStAdFunc var_A8
  loc_A24B39: FLdPr var_A8
  loc_A24B3C: LateIdSt
  loc_A24B41: FFree1Ad var_A8
  loc_A24B44: LitStr vbNullString
  loc_A24B47: ImpAdStStrCopy MemVar_D93028
  loc_A24B4B: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A050C4
  'Data Table: 490E1C
  loc_A05094: LitVarStr var_94, "Cerrando..."
  loc_A05099: PopAdLdVar
  loc_A0509A: FLdPr Me
  loc_A0509D: VCallAd Control_ID_statusBar
  loc_A050A0: FStAdFunc var_A8
  loc_A050A3: FLdPr var_A8
  loc_A050A6: LateIdSt
  loc_A050AB: FFree1Ad var_A8
  loc_A050AE: ILdRf Me
  loc_A050B1: FStAdNoPop
  loc_A050B5: ImpAdLdRf MemVar_D9C5D8
  loc_A050B8: NewIfNullPr Global
  loc_A050BB: Global.Unload from_stack_1
  loc_A050C0: FFree1Ad var_A8
  loc_A050C3: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CA478
  'Data Table: 490E1C
  loc_9CA460: LitI2_Byte 0
  loc_9CA462: ILdRf Me
  loc_9CA465: CastAd
  loc_9CA468: FStAdFunc var_88
  loc_9CA46B: FLdRfVar var_88
  loc_9CA46E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CA473: FFree1Ad var_88
  loc_9CA476: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AE2994
  'Data Table: 490E1C
  loc_AE2854: LitI2_Byte 0
  loc_AE2856: FLdPr Me
  loc_AE2859: MemStI2 bGenerado
  loc_AE285C: LitI2_Byte 0
  loc_AE285E: ILdRf Me
  loc_AE2861: CastAd
  loc_AE2864: FStAdFunc var_88
  loc_AE2867: FLdRfVar var_88
  loc_AE286A: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AE286F: FFree1Ad var_88
  loc_AE2872: LitI2_Byte 0
  loc_AE2874: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE2879: CVarDate var_A8
  loc_AE287D: FLdRfVar var_B8
  loc_AE2880: ImpAdCallFPR4  = Year()
  loc_AE2885: LitI2_Byte 0
  loc_AE2887: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE288C: CVarDate var_D8
  loc_AE2890: FLdRfVar var_E8
  loc_AE2893: ImpAdCallFPR4  = Month()
  loc_AE2898: LitI2_Byte 1
  loc_AE289A: FLdRfVar var_E8
  loc_AE289D: LitVarI2 var_F8, 1
  loc_AE28A2: SubVar var_108
  loc_AE28A6: CI2Var
  loc_AE28A7: FLdRfVar var_B8
  loc_AE28AA: CI2Var
  loc_AE28AB: FLdRfVar var_118
  loc_AE28AE: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE28B3: FLdRfVar var_118
  loc_AE28B6: CStrVarTmp
  loc_AE28B7: CVarStr var_128
  loc_AE28BA: PopAdLdVar
  loc_AE28BB: FLdPr Me
  loc_AE28BE: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AE28C1: FStAdFunc var_88
  loc_AE28C4: FLdPr var_88
  loc_AE28C7: LateIdSt
  loc_AE28CC: FFree1Ad var_88
  loc_AE28CF: FFreeVar var_A8 = "": var_D8 = "": var_E8 = "": var_B8 = "": var_118 = ""
  loc_AE28DE: FLdPr Me
  loc_AE28E1: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AE28E4: FStAdFunc var_88
  loc_AE28E7: FLdPr var_88
  loc_AE28EA: LateIdLdVar var_A8 DispID_15 0
  loc_AE28F1: CStrVarTmp
  loc_AE28F2: CVarStr var_B8
  loc_AE28F5: FLdRfVar var_D8
  loc_AE28F8: ImpAdCallFPR4  = Year()
  loc_AE28FD: FLdPr Me
  loc_AE2900: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AE2903: FStAdFunc var_13C
  loc_AE2906: FLdPr var_13C
  loc_AE2909: LateIdLdVar var_E8 DispID_15 0
  loc_AE2910: CStrVarTmp
  loc_AE2911: CVarStr var_108
  loc_AE2914: FLdRfVar var_118
  loc_AE2917: ImpAdCallFPR4  = Month()
  loc_AE291C: LitI2_Byte 1
  loc_AE291E: FLdRfVar var_118
  loc_AE2921: LitVarI2 var_98, 1
  loc_AE2926: AddVar var_128
  loc_AE292A: CI2Var
  loc_AE292B: FLdRfVar var_D8
  loc_AE292E: CI2Var
  loc_AE292F: FLdRfVar var_14C
  loc_AE2932: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE2937: FLdRfVar var_14C
  loc_AE293A: LitVarI2 var_C8, 1
  loc_AE293F: SubVar var_15C
  loc_AE2943: CStrVarTmp
  loc_AE2944: CVarStr var_16C
  loc_AE2947: PopAdLdVar
  loc_AE2948: FLdPr Me
  loc_AE294B: VCallAd Control_ID_FealCtctHastaMsk
  loc_AE294E: FStAdFunc var_170
  loc_AE2951: FLdPr var_170
  loc_AE2954: LateIdSt
  loc_AE2959: FFreeAd var_88 = "": var_13C = ""
  loc_AE2962: FFreeVar var_A8 = "": var_B8 = "": var_E8 = "": var_108 = "": var_118 = "": var_D8 = "": var_128 = "": var_14C = ""
  loc_AE2977: Call HabilitarCriterio()
  loc_AE297C: ILdRf Me
  loc_AE297F: CastAd
  loc_AE2982: FStAdFunc var_88
  loc_AE2985: FLdRfVar var_88
  loc_AE2988: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AE298D: FFree1Ad var_88
  loc_AE2990: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CA42C
  'Data Table: 490E1C
  loc_9CA414: ILdRf Me
  loc_9CA417: CastAd
  loc_9CA41A: FStAdFunc var_88
  loc_9CA41D: FLdRfVar var_88
  loc_9CA420: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CA425: FFree1Ad var_88
  loc_9CA428: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A175D8
  'Data Table: 490E1C
  loc_A175A0: FLdPr Me
  loc_A175A3: VCallAd Control_ID_statusBar
  loc_A175A6: FStAdFunc var_88
  loc_A175A9: FLdPr var_88
  loc_A175AC: LateIdLdVar var_98 DispID_1 0
  loc_A175B3: CStrVarTmp
  loc_A175B4: CVarStr var_A8
  loc_A175B7: PopAdLdVar
  loc_A175B8: FLdPr Me
  loc_A175BB: VCallAd Control_ID_statusBar
  loc_A175BE: FStAdFunc var_BC
  loc_A175C1: FLdPr var_BC
  loc_A175C4: LateIdSt
  loc_A175C9: FFreeAd var_88 = ""
  loc_A175D0: FFreeVar var_98 = ""
  loc_A175D7: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9C67D0
  'Data Table: 490E1C
  loc_9C67BC: FLdPr Me
  loc_9C67BF: VCallAd Control_ID_CodiConcMsk
  loc_9C67C2: CVarAd
  loc_9C67C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C67CB: FFree1Var var_94 = ""
  loc_9C67CE: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_8 'ADCF98
  'Data Table: 490E1C
  loc_ADCE58: FLdPr Me
  loc_ADCE5B: VCallAd Control_ID_CodiConcMsk
  loc_ADCE5E: FStAdFunc var_88
  loc_ADCE61: FLdPr var_88
  loc_ADCE64: LateIdLdVar var_98 DispID_22 0
  loc_ADCE6B: CStrVarTmp
  loc_ADCE6C: FStStrNoPop var_9C
  loc_ADCE6F: LitStr vbNullString
  loc_ADCE72: NeStr
  loc_ADCE74: FFree1Str var_9C
  loc_ADCE77: FFree1Ad var_88
  loc_ADCE7A: FFree1Var var_98 = ""
  loc_ADCE7D: BranchF loc_ADCF95
  loc_ADCE80: FLdPr Me
  loc_ADCE83: VCallAd Control_ID_FealCtctDesdeMsk
  loc_ADCE86: FStAdFunc var_88
  loc_ADCE89: FLdPr var_88
  loc_ADCE8C: LateIdLdVar var_98 DispID_15 0
  loc_ADCE93: CStrVarTmp
  loc_ADCE94: CVarStr var_AC
  loc_ADCE97: FLdRfVar var_BC
  loc_ADCE9A: ImpAdCallFPR4  = Year()
  loc_ADCE9F: FLdPr Me
  loc_ADCEA2: VCallAd Control_ID_CodiConcMsk
  loc_ADCEA5: FStAdFunc var_C0
  loc_ADCEA8: FLdPr var_C0
  loc_ADCEAB: LateIdLdVar var_D0 DispID_22 0
  loc_ADCEB2: PopAd
  loc_ADCEB4: LitI2_Byte 0
  loc_ADCEB6: LitI2_Byte 0
  loc_ADCEB8: LitI2_Byte 0
  loc_ADCEBA: LitI2_Byte 0
  loc_ADCEBC: LitI2_Byte 0
  loc_ADCEBE: LitI2_Byte 0
  loc_ADCEC0: LitI2_Byte 0
  loc_ADCEC2: LitI2_Byte 0
  loc_ADCEC4: LitI2_Byte 0
  loc_ADCEC6: FLdRfVar var_D0
  loc_ADCEC9: CStrVarTmp
  loc_ADCECA: FStStrNoPop var_9C
  loc_ADCECD: FLdRfVar var_BC
  loc_ADCED0: CI2Var
  loc_ADCED1: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_ADCED6: FStStrNoPop var_D4
  loc_ADCED9: FLdPr Me
  loc_ADCEDC: MemStStrCopy
  loc_ADCEE0: FFreeStr var_9C = ""
  loc_ADCEE7: FFreeAd var_88 = ""
  loc_ADCEEE: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_ADCEF9: FLdPr Me
  loc_ADCEFC: VCallAd Control_ID_CodiConcMsk
  loc_ADCEFF: FStAdFuncNoPop
  loc_ADCF02: CastAd
  loc_ADCF05: FStAdFunc var_C0
  loc_ADCF08: FLdRfVar var_C0
  loc_ADCF0B: FLdPr Me
  loc_ADCF0E: MemLdStr global_108
  loc_ADCF11: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ADCF16: IStI2 Button
  loc_ADCF19: FFreeAd var_88 = ""
  loc_ADCF20: ILdI2 Button
  loc_ADCF23: NotI4
  loc_ADCF24: BranchF loc_ADCF95
  loc_ADCF27: FLdPr Me
  loc_ADCF2A: VCallAd Control_ID_FealCtctDesdeMsk
  loc_ADCF2D: FStAdFunc var_88
  loc_ADCF30: FLdPr var_88
  loc_ADCF33: LateIdLdVar var_98 DispID_15 0
  loc_ADCF3A: CStrVarTmp
  loc_ADCF3B: CVarStr var_AC
  loc_ADCF3E: FLdRfVar var_BC
  loc_ADCF41: ImpAdCallFPR4  = Year()
  loc_ADCF46: FLdPr Me
  loc_ADCF49: VCallAd Control_ID_CodiConcMsk
  loc_ADCF4C: FStAdFunc var_C0
  loc_ADCF4F: FLdPr var_C0
  loc_ADCF52: LateIdLdVar var_D0 DispID_22 0
  loc_ADCF59: CStrVarTmp
  loc_ADCF5A: FStStrNoPop var_9C
  loc_ADCF5D: FLdRfVar var_BC
  loc_ADCF60: CI2Var
  loc_ADCF61: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_ADCF66: FStStrNoPop var_D4
  loc_ADCF69: FLdPr Me
  loc_ADCF6C: VCallAd Control_ID_DetaConceLbl
  loc_ADCF6F: FStAdFunc var_D8
  loc_ADCF72: FLdPr var_D8
  loc_ADCF75: Me.Caption = from_stack_1
  loc_ADCF7A: FFreeStr var_9C = ""
  loc_ADCF81: FFreeAd var_88 = "": var_C0 = ""
  loc_ADCF8A: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_ADCF95: ExitProcHresult
End Sub

Private Sub CodiConcMsk_KeyPress(KeyAscii As Integer) 'AC41E0
  'Data Table: 490E1C
  loc_AC40E4: ILdI2 KeyAscii
  loc_AC40E7: CI4UI1
  loc_AC40E8: LitI4 &H20
  loc_AC40ED: EqI4
  loc_AC40EE: BranchF loc_AC41DD
  loc_AC40F1: FLdPr Me
  loc_AC40F4: VCallAd Control_ID_FealCtctDesdeMsk
  loc_AC40F7: FStAdFunc var_88
  loc_AC40FA: FLdPr var_88
  loc_AC40FD: LateIdLdVar var_98 DispID_15 0
  loc_AC4104: CStrVarTmp
  loc_AC4105: CVarStr var_A8
  loc_AC4108: FLdRfVar var_B8
  loc_AC410B: ImpAdCallFPR4  = Year()
  loc_AC4110: FLdRfVar var_B8
  loc_AC4113: CI2Var
  loc_AC4114: ImpAdLdRf MemVar_D94354
  loc_AC4117: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC411A: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC411F: FFree1Ad var_88
  loc_AC4122: FFreeVar var_98 = "": var_A8 = ""
  loc_AC412B: LitVar_Missing var_D8
  loc_AC412E: PopAdLdVar
  loc_AC412F: LitVarI4
  loc_AC4137: PopAdLdVar
  loc_AC4138: ImpAdLdRf MemVar_D94354
  loc_AC413B: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC413E: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC4143: FLdRfVar var_DC
  loc_AC4146: FLdRfVar var_88
  loc_AC4149: ImpAdLdRf MemVar_D94354
  loc_AC414C: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC414F: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4154: FLdPr var_88
  loc_AC4157: from_stack_1 = clsconcepto.RecordCount
  loc_AC415C: ILdRf var_DC
  loc_AC415F: LitI4 0
  loc_AC4164: GtI4
  loc_AC4165: FFree1Ad var_88
  loc_AC4168: BranchF loc_AC41DD
  loc_AC416B: FLdRfVar var_E0
  loc_AC416E: FLdRfVar var_88
  loc_AC4171: ImpAdLdRf MemVar_D94354
  loc_AC4174: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4177: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC417C: FLdPr var_88
  loc_AC417F: from_stack_1 = clsconcepto.CodiConc
  loc_AC4184: FLdZeroAd var_E0
  loc_AC4187: CVarStr var_98
  loc_AC418A: PopAdLdVar
  loc_AC418B: FLdPr Me
  loc_AC418E: VCallAd Control_ID_CodiConcMsk
  loc_AC4191: FStAdFunc var_E4
  loc_AC4194: FLdPr var_E4
  loc_AC4197: LateIdSt
  loc_AC419C: FFreeAd var_88 = ""
  loc_AC41A3: FFree1Var var_98 = ""
  loc_AC41A6: FLdRfVar var_E0
  loc_AC41A9: FLdRfVar var_88
  loc_AC41AC: ImpAdLdRf MemVar_D94354
  loc_AC41AF: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC41B2: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC41B7: FLdPr var_88
  loc_AC41BA: from_stack_1 = clsconcepto.DetaConc
  loc_AC41BF: ILdRf var_E0
  loc_AC41C2: FLdPr Me
  loc_AC41C5: VCallAd Control_ID_DetaConceLbl
  loc_AC41C8: FStAdFunc var_E4
  loc_AC41CB: FLdPr var_E4
  loc_AC41CE: Me.Caption = from_stack_1
  loc_AC41D3: FFree1Str var_E0
  loc_AC41D6: FFreeAd var_88 = ""
  loc_AC41DD: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_0 '9C6590
  'Data Table: 490E1C
  loc_9C657C: FLdPr Me
  loc_9C657F: VCallAd Control_ID_FealCtctHastaMsk
  loc_9C6582: CVarAd
  loc_9C6586: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C658B: FFree1Var var_94 = ""
  loc_9C658E: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_8 'A63700
  'Data Table: 490E1C
  loc_A636A4: FLdPr Me
  loc_A636A7: VCallAd Control_ID_FealCtctHastaMsk
  loc_A636AA: FStAdFunc var_88
  loc_A636AD: FLdPr var_88
  loc_A636B0: LateIdLdVar var_98 DispID_15 0
  loc_A636B7: CStrVarTmp
  loc_A636B8: FStStrNoPop var_9C
  loc_A636BB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A636C0: FStStrNoPop var_A0
  loc_A636C3: FLdPr Me
  loc_A636C6: MemStStrCopy
  loc_A636CA: FFreeStr var_9C = ""
  loc_A636D1: FFree1Ad var_88
  loc_A636D4: FFree1Var var_98 = ""
  loc_A636D7: FLdPr Me
  loc_A636DA: VCallAd Control_ID_FealCtctHastaMsk
  loc_A636DD: FStAdFuncNoPop
  loc_A636E0: CastAd
  loc_A636E3: FStAdFunc var_A4
  loc_A636E6: FLdRfVar var_A4
  loc_A636E9: FLdPr Me
  loc_A636EC: MemLdStr global_108
  loc_A636EF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A636F4: IStI2 KeyAscii
  loc_A636F7: FFreeAd var_88 = ""
  loc_A636FE: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_KeyPress(KeyAscii As Integer) 'A24BC8
  'Data Table: 490E1C
  loc_A24B80: ILdI2 KeyAscii
  loc_A24B83: CI4UI1
  loc_A24B84: LitI4 &H20
  loc_A24B89: EqI4
  loc_A24B8A: BranchF loc_A24BC7
  loc_A24B8D: LitVar_Missing var_A4
  loc_A24B90: PopAdLdVar
  loc_A24B91: LitVarI4
  loc_A24B99: PopAdLdVar
  loc_A24B9A: ImpAdLdRf MemVar_D930A4
  loc_A24B9D: NewIfNullPr frmCalendario
  loc_A24BA0: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24BA5: ImpAdLdRf MemVar_D93028
  loc_A24BA8: CDargRef
  loc_A24BAC: FLdPr Me
  loc_A24BAF: VCallAd Control_ID_FealCtctHastaMsk
  loc_A24BB2: FStAdFunc var_A8
  loc_A24BB5: FLdPr var_A8
  loc_A24BB8: LateIdSt
  loc_A24BBD: FFree1Ad var_A8
  loc_A24BC0: LitStr vbNullString
  loc_A24BC3: ImpAdStStrCopy MemVar_D93028
  loc_A24BC7: ExitProcHresult
End Sub

Private Sub Form_Load() 'A07440
  'Data Table: 490E1C
  loc_A0740C: ILdRf Me
  loc_A0740F: CastAd
  loc_A07412: FStAdFunc var_88
  loc_A07415: FLdRfVar var_88
  loc_A07418: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A0741D: FFree1Ad var_88
  loc_A07420: Call cmdNueva_Click()
  loc_A07425: LitVarStr var_98, vbNullString
  loc_A0742A: PopAdLdVar
  loc_A0742B: FLdPr Me
  loc_A0742E: VCallAd Control_ID_CodiConcMsk
  loc_A07431: FStAdFunc var_88
  loc_A07434: FLdPr var_88
  loc_A07437: LateIdSt
  loc_A0743C: FFree1Ad var_88
  loc_A0743F: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CA5F4
  'Data Table: 490E1C
  loc_9CA5DC: FLdPr Me
  loc_9CA5DF: VCallAd Control_ID_wbbReporte
  loc_9CA5E2: FStAdFunc var_88
  loc_9CA5E5: FLdRfVar var_88
  loc_9CA5E8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CA5ED: FFree1Ad var_88
  loc_9CA5F0: ExitProcHresult
End Sub

Public Function bGeneradoGet() '491C38
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '491C47
  bGenerado = Value
End Sub

Public Function bLogosGet() '491C56
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '491C65
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A5E214
  'Data Table: 490E1C
  loc_A5E1C0: LitI4 0
  loc_A5E1C5: LitI4 2
  loc_A5E1CA: FLdRfVar var_88
  loc_A5E1CD: Redim
  loc_A5E1D7: FLdPr Me
  loc_A5E1DA: VCallAd Control_ID_CodiConcMsk
  loc_A5E1DD: CVarAd
  loc_A5E1E1: ParmAry1St
  loc_A5E1E7: FLdPr Me
  loc_A5E1EA: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A5E1ED: CVarAd
  loc_A5E1F1: ParmAry1St
  loc_A5E1F7: FLdPr Me
  loc_A5E1FA: VCallAd Control_ID_FealCtctHastaMsk
  loc_A5E1FD: CVarAd
  loc_A5E201: ParmAry1St
  loc_A5E207: FLdRfVar var_88
  loc_A5E20A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5E20F: FLdRfVar var_88
  loc_A5E212: Erase
  loc_A5E213: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C6354
  'Data Table: 490E1C
  loc_9C633C: LitI2_Byte 0
  loc_9C633E: FLdPr Me
  loc_9C6341: MemStI2 bLogos
  loc_9C6344: Call GeneraHTML()
  loc_9C6349: LitI2_Byte &HFF
  loc_9C634B: FLdPr Me
  loc_9C634E: MemStI2 bLogos
  loc_9C6351: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B847A8
  'Data Table: 490E1C
  loc_B842E0: FLdPr Me
  loc_B842E3: MemLdI2 bGenerado
  loc_B842E6: BranchF loc_B842EA
  loc_B842E9: ExitProcHresult
  loc_B842EA: LitVarStr var_94, "Generando reporte..."
  loc_B842EF: PopAdLdVar
  loc_B842F0: FLdPr Me
  loc_B842F3: VCallAd Control_ID_statusBar
  loc_B842F6: FStAdFunc var_A8
  loc_B842F9: FLdPr var_A8
  loc_B842FC: LateIdSt
  loc_B84301: FFree1Ad var_A8
  loc_B84304: LitI4 &HB
  loc_B84309: CI2I4
  loc_B8430A: FLdPr Me
  loc_B8430D: Me.MousePointer = from_stack_1
  loc_B84312: LitI2_Byte 0
  loc_B84314: PopTmpLdAd2 var_AA
  loc_B84317: from_stack_2v = FealCtctDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_B8431C: FLdPr Me
  loc_B8431F: MemLdStr global_108
  loc_B84322: LitStr vbNullString
  loc_B84325: NeStr
  loc_B84327: BranchF loc_B8432D
  loc_B8432A: Branch loc_B8477F
  loc_B8432D: LitI2_Byte 0
  loc_B8432F: PopTmpLdAd2 var_AA
  loc_B84332: Call FealCtctHastaMsk_UnknownEvent_8()
  loc_B84337: FLdPr Me
  loc_B8433A: MemLdStr global_108
  loc_B8433D: LitStr vbNullString
  loc_B84340: NeStr
  loc_B84342: BranchF loc_B84348
  loc_B84345: Branch loc_B8477F
  loc_B84348: FLdPr Me
  loc_B8434B: MemLdRfVar from_stack_1.global_92
  loc_B8434E: NewIfNullAd
  loc_B84351: FStAd var_B0 
  loc_B84355: FLdPr Me
  loc_B84358: VCallAd Control_ID_FealCtctDesdeMsk
  loc_B8435B: FStAdFunc var_E8
  loc_B8435E: FLdPr var_E8
  loc_B84361: LateIdLdVar var_F8 DispID_15 0
  loc_B84368: PopAd
  loc_B8436A: FLdPr Me
  loc_B8436D: VCallAd Control_ID_FealCtctHastaMsk
  loc_B84370: FStAdFunc var_128
  loc_B84373: FLdPr var_128
  loc_B84376: LateIdLdVar var_138 DispID_15 0
  loc_B8437D: PopAd
  loc_B8437F: LitStr " SELECT CodiFapa, IF(facipago.CodiOfic=1,vpadrones_persona.denominacion,infogov.persona.DetaPers) DetaPers, CuenCtct, FealFapa, EstaFapa, TotaFapa"
  loc_B84382: LitStr " FROM facipago"
  loc_B84385: ConcatStr
  loc_B84386: FStStrNoPop var_B4
  loc_B84389: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = facipago.CucuPers"
  loc_B8438C: ConcatStr
  loc_B8438D: FStStrNoPop var_B8
  loc_B84390: LitStr " LEFT JOIN vpadrones_persona ON vpadrones_persona.nro_padron = facipago.CuenCtct"
  loc_B84393: ConcatStr
  loc_B84394: FStStrNoPop var_BC
  loc_B84397: LitStr " AND principal = 'Si'"
  loc_B8439A: ConcatStr
  loc_B8439B: FStStrNoPop var_C0
  loc_B8439E: LitStr " AND estado = 'Activo'"
  loc_B843A1: ConcatStr
  loc_B843A2: FStStrNoPop var_C4
  loc_B843A5: LitStr " WHERE facipago.ConcPago = '"
  loc_B843A8: ConcatStr
  loc_B843A9: FStStrNoPop var_D8
  loc_B843AC: FLdPr Me
  loc_B843AF: VCallAd Control_ID_CodiConcMsk
  loc_B843B2: FStAdFunc var_A8
  loc_B843B5: FLdPr var_A8
  loc_B843B8: LateIdLdVar var_D4 DispID_22 0
  loc_B843BF: CStrVarTmp
  loc_B843C0: FStStrNoPop var_DC
  loc_B843C3: ConcatStr
  loc_B843C4: FStStrNoPop var_E0
  loc_B843C7: LitStr "'"
  loc_B843CA: ConcatStr
  loc_B843CB: FStStrNoPop var_E4
  loc_B843CE: LitStr " AND FealFapa BETWEEN '"
  loc_B843D1: ConcatStr
  loc_B843D2: FStStrNoPop var_11C
  loc_B843D5: LitI4 1
  loc_B843DA: LitI4 1
  loc_B843DF: LitVarStr var_94, "yyyy-mm-dd"
  loc_B843E4: FStVarCopyObj var_118
  loc_B843E7: FLdRfVar var_118
  loc_B843EA: FLdRfVar var_F8
  loc_B843ED: CStrVarTmp
  loc_B843EE: CVarStr var_108
  loc_B843F1: ImpAdCallI2 Format$(, )
  loc_B843F6: FStStrNoPop var_120
  loc_B843F9: ConcatStr
  loc_B843FA: FStStrNoPop var_124
  loc_B843FD: LitStr "' AND '"
  loc_B84400: ConcatStr
  loc_B84401: FStStrNoPop var_15C
  loc_B84404: LitI4 1
  loc_B84409: LitI4 1
  loc_B8440E: LitVarStr var_A4, "yyyy-mm-dd"
  loc_B84413: FStVarCopyObj var_158
  loc_B84416: FLdRfVar var_158
  loc_B84419: FLdRfVar var_138
  loc_B8441C: CStrVarTmp
  loc_B8441D: CVarStr var_148
  loc_B84420: ImpAdCallI2 Format$(, )
  loc_B84425: FStStrNoPop var_160
  loc_B84428: ConcatStr
  loc_B84429: FStStrNoPop var_164
  loc_B8442C: LitStr "'"
  loc_B8442F: ConcatStr
  loc_B84430: FStStrNoPop var_168
  loc_B84433: LitStr " AND EstaFapa <> 'Anulada'"
  loc_B84436: ConcatStr
  loc_B84437: FStStrNoPop var_16C
  loc_B8443A: LitStr " ORDER BY FealFapa"
  loc_B8443D: ConcatStr
  loc_B8443E: FStStrNoPop var_170
  loc_B84441: FLdPr var_B0
  loc_B84444: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B84449: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_11C = "": var_120 = "": var_124 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_B84470: FFreeAd var_A8 = "": var_E8 = ""
  loc_B84479: FFreeVar var_D4 = "": var_F8 = "": var_108 = "": var_118 = "": var_138 = "": var_148 = ""
  loc_B8448A: FLdRfVar var_174
  loc_B8448D: FLdPr var_B0
  loc_B84490: from_stack_1 = clsctacte.RecordCount
  loc_B84495: ILdRf var_174
  loc_B84498: LitI4 0
  loc_B8449D: EqI4
  loc_B8449E: BranchF loc_B844AC
  loc_B844A1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B844A4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B844A9: Branch loc_B8477F
  loc_B844AC: LitI4 0
  loc_B844B1: LitI4 1
  loc_B844B6: FLdPr Me
  loc_B844B9: MemLdRfVar from_stack_1.global_96
  loc_B844BC: Redim
  loc_B844C6: LitI4 0
  loc_B844CB: FLdRfVar var_174
  loc_B844CE: FLdPr var_B0
  loc_B844D1: from_stack_1 = clsctacte.RecordCount
  loc_B844D6: ILdRf var_174
  loc_B844D9: FLdPr Me
  loc_B844DC: MemLdRfVar from_stack_1.global_100
  loc_B844DF: Redim
  loc_B844E9: FLdPr var_B0
  loc_B844EC: Call clsctacte.MoveFirst()
  loc_B844F1: LitI4 1
  loc_B844F6: FLdPr Me
  loc_B844F9: MemLdRfVar from_stack_1.global_104
  loc_B844FC: FLdPr Me
  loc_B844FF: MemLdStr global_100
  loc_B84502: LitI2_Byte 1
  loc_B84504: FnUBound
  loc_B84506: ForI4 var_17C
  loc_B8450C: FLdRfVar var_128
  loc_B8450F: LitVarStr var_94, "CodiFapa"
  loc_B84514: PopAdLdVar
  loc_B84515: FLdRfVar var_E8
  loc_B84518: FLdRfVar var_A8
  loc_B8451B: FLdPr var_B0
  loc_B8451E: from_stack_1v = clsctacte.RsFrmGet()
  loc_B84523: FLdPr var_A8
  loc_B84526:  = Me.Fields
  loc_B8452B: FLdPr var_E8
  loc_B8452E: from_stack_2 = Me.Item(from_stack_1)
  loc_B84533: LitI2_Byte 0
  loc_B84535: LitVar_Missing var_F8
  loc_B84538: LitI2_Byte 0
  loc_B8453A: FLdZeroAd var_128
  loc_B8453D: CVarAd
  loc_B84541: PopAdLdVar
  loc_B84542: FLdPr Me
  loc_B84545: MemLdStr global_104
  loc_B84548: FLdPr Me
  loc_B8454B: MemLdStr global_100
  loc_B8454E: AryLock
  loc_B84551: Ary1LdPr
  loc_B84552: MemLdRfVar from_stack_1.global_0
  loc_B84555: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8455A: AryUnlock
  loc_B8455D: FFreeAd var_A8 = ""
  loc_B84564: FFreeVar var_D4 = ""
  loc_B8456B: FLdRfVar var_128
  loc_B8456E: LitVarStr var_94, "CuenCtct"
  loc_B84573: PopAdLdVar
  loc_B84574: FLdRfVar var_E8
  loc_B84577: FLdRfVar var_A8
  loc_B8457A: FLdPr var_B0
  loc_B8457D: from_stack_1v = clsctacte.RsFrmGet()
  loc_B84582: FLdPr var_A8
  loc_B84585:  = Me.Fields
  loc_B8458A: FLdPr var_E8
  loc_B8458D: from_stack_2 = Me.Item(from_stack_1)
  loc_B84592: LitI2_Byte 0
  loc_B84594: LitVar_Missing var_F8
  loc_B84597: LitI2_Byte 0
  loc_B84599: FLdZeroAd var_128
  loc_B8459C: CVarAd
  loc_B845A0: PopAdLdVar
  loc_B845A1: FLdPr Me
  loc_B845A4: MemLdStr global_104
  loc_B845A7: FLdPr Me
  loc_B845AA: MemLdStr global_100
  loc_B845AD: AryLock
  loc_B845B0: Ary1LdPr
  loc_B845B1: MemLdRfVar from_stack_1.global_4
  loc_B845B4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B845B9: AryUnlock
  loc_B845BC: FFreeAd var_A8 = ""
  loc_B845C3: FFreeVar var_D4 = ""
  loc_B845CA: FLdRfVar var_128
  loc_B845CD: LitVarStr var_94, "DetaPers"
  loc_B845D2: PopAdLdVar
  loc_B845D3: FLdRfVar var_E8
  loc_B845D6: FLdRfVar var_A8
  loc_B845D9: FLdPr var_B0
  loc_B845DC: from_stack_1v = clsctacte.RsFrmGet()
  loc_B845E1: FLdPr var_A8
  loc_B845E4:  = Me.Fields
  loc_B845E9: FLdPr var_E8
  loc_B845EC: from_stack_2 = Me.Item(from_stack_1)
  loc_B845F1: LitI2_Byte 0
  loc_B845F3: LitVar_Missing var_F8
  loc_B845F6: LitI2_Byte 0
  loc_B845F8: FLdZeroAd var_128
  loc_B845FB: CVarAd
  loc_B845FF: PopAdLdVar
  loc_B84600: FLdPr Me
  loc_B84603: MemLdStr global_104
  loc_B84606: FLdPr Me
  loc_B84609: MemLdStr global_100
  loc_B8460C: AryLock
  loc_B8460F: Ary1LdPr
  loc_B84610: MemLdRfVar from_stack_1.global_8
  loc_B84613: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B84618: AryUnlock
  loc_B8461B: FFreeAd var_A8 = ""
  loc_B84622: FFreeVar var_D4 = ""
  loc_B84629: FLdRfVar var_128
  loc_B8462C: LitVarStr var_94, "FealFapa"
  loc_B84631: PopAdLdVar
  loc_B84632: FLdRfVar var_E8
  loc_B84635: FLdRfVar var_A8
  loc_B84638: FLdPr var_B0
  loc_B8463B: from_stack_1v = clsctacte.RsFrmGet()
  loc_B84640: FLdPr var_A8
  loc_B84643:  = Me.Fields
  loc_B84648: FLdPr var_E8
  loc_B8464B: from_stack_2 = Me.Item(from_stack_1)
  loc_B84650: LitI2_Byte 0
  loc_B84652: LitVar_Missing var_F8
  loc_B84655: LitI2_Byte 0
  loc_B84657: FLdZeroAd var_128
  loc_B8465A: CVarAd
  loc_B8465E: PopAdLdVar
  loc_B8465F: FLdPr Me
  loc_B84662: MemLdStr global_104
  loc_B84665: FLdPr Me
  loc_B84668: MemLdStr global_100
  loc_B8466B: AryLock
  loc_B8466E: Ary1LdPr
  loc_B8466F: MemLdRfVar from_stack_1.global_12
  loc_B84672: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B84677: AryUnlock
  loc_B8467A: FFreeAd var_A8 = ""
  loc_B84681: FFreeVar var_D4 = ""
  loc_B84688: FLdRfVar var_128
  loc_B8468B: LitVarStr var_94, "EstaFapa"
  loc_B84690: PopAdLdVar
  loc_B84691: FLdRfVar var_E8
  loc_B84694: FLdRfVar var_A8
  loc_B84697: FLdPr var_B0
  loc_B8469A: from_stack_1v = clsctacte.RsFrmGet()
  loc_B8469F: FLdPr var_A8
  loc_B846A2:  = Me.Fields
  loc_B846A7: FLdPr var_E8
  loc_B846AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B846AF: LitI2_Byte 0
  loc_B846B1: LitVar_Missing var_F8
  loc_B846B4: LitI2_Byte 0
  loc_B846B6: FLdZeroAd var_128
  loc_B846B9: CVarAd
  loc_B846BD: PopAdLdVar
  loc_B846BE: FLdPr Me
  loc_B846C1: MemLdStr global_104
  loc_B846C4: FLdPr Me
  loc_B846C7: MemLdStr global_100
  loc_B846CA: AryLock
  loc_B846CD: Ary1LdPr
  loc_B846CE: MemLdRfVar from_stack_1.global_16
  loc_B846D1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B846D6: AryUnlock
  loc_B846D9: FFreeAd var_A8 = ""
  loc_B846E0: FFreeVar var_D4 = ""
  loc_B846E7: FLdRfVar var_128
  loc_B846EA: LitVarStr var_94, "TotaFapa"
  loc_B846EF: PopAdLdVar
  loc_B846F0: FLdRfVar var_E8
  loc_B846F3: FLdRfVar var_A8
  loc_B846F6: FLdPr var_B0
  loc_B846F9: from_stack_1v = clsctacte.RsFrmGet()
  loc_B846FE: FLdPr var_A8
  loc_B84701:  = Me.Fields
  loc_B84706: FLdPr var_E8
  loc_B84709: from_stack_2 = Me.Item(from_stack_1)
  loc_B8470E: LitI2_Byte 0
  loc_B84710: LitI4 1
  loc_B84715: FLdPr Me
  loc_B84718: MemLdStr global_96
  loc_B8471B: AryLock
  loc_B8471E: Ary1LdPr
  loc_B8471F: MemLdRfVar from_stack_1.global_20
  loc_B84722: CVarRef
  loc_B84727: LitI2_Byte &HFF
  loc_B84729: FLdZeroAd var_128
  loc_B8472C: CVarAd
  loc_B84730: PopAdLdVar
  loc_B84731: FLdPr Me
  loc_B84734: MemLdStr global_104
  loc_B84737: FLdPr Me
  loc_B8473A: MemLdStr global_100
  loc_B8473D: AryLock
  loc_B84740: Ary1LdPr
  loc_B84741: MemLdRfVar from_stack_1.global_20
  loc_B84744: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B84749: AryUnlock
  loc_B8474C: AryUnlock
  loc_B8474F: FFreeAd var_A8 = ""
  loc_B84756: FFree1Var var_D4 = ""
  loc_B84759: LitI2_Byte 1
  loc_B8475B: PopTmpLdAd2 var_AA
  loc_B8475E: FLdPr var_B0
  loc_B84761: Call clsctacte.Move(from_stack_1v)
  loc_B84766: FLdPr Me
  loc_B84769: MemLdRfVar from_stack_1.global_104
  loc_B8476C: NextI4 var_17C, loc_B8450C
  loc_B84771: LitNothing
  loc_B84773: FStAd var_B0 
  loc_B84777: LitI2_Byte &HFF
  loc_B84779: FLdPr Me
  loc_B8477C: MemStI2 bGenerado
  loc_B8477F: LitI4 0
  loc_B84784: CI2I4
  loc_B84785: FLdPr Me
  loc_B84788: Me.MousePointer = from_stack_1
  loc_B8478D: LitVarStr var_94, vbNullString
  loc_B84792: PopAdLdVar
  loc_B84793: FLdPr Me
  loc_B84796: VCallAd Control_ID_statusBar
  loc_B84799: FStAdFunc var_A8
  loc_B8479C: FLdPr var_A8
  loc_B8479F: LateIdSt
  loc_B847A4: FFree1Ad var_A8
  loc_B847A7: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B0F730
  'Data Table: 490E1C
  loc_B0F4F0: FLdRfVar var_88
  loc_B0F4F3: LitI2_Byte 0
  loc_B0F4F5: LitI2_Byte &HFF
  loc_B0F4F7: ImpAdLdI4 MemVar_D93C84
  loc_B0F4FA: FLdPr Me
  loc_B0F4FD: MemLdRfVar from_stack_1.global_56
  loc_B0F500: NewIfNullPr IFileSystem3
  loc_B0F503: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B0F508: ILdRf var_88
  loc_B0F50B: FLdPr Me
  loc_B0F50E: MemStVarAd
  loc_B0F512: FFree1Ad var_88
  loc_B0F515: LitI2_Byte &HFF
  loc_B0F517: ImpAdStI2 MemVar_D93C8A
  loc_B0F51A: Call Proc_346_27_BD173C()
  loc_B0F51F: LitI4 1
  loc_B0F524: FLdPr Me
  loc_B0F527: MemLdRfVar from_stack_1.global_104
  loc_B0F52A: FLdPr Me
  loc_B0F52D: MemLdStr global_100
  loc_B0F530: LitI2_Byte 1
  loc_B0F532: FnUBound
  loc_B0F534: ForI4 var_90
  loc_B0F53A: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B0F53F: PopAdLdVar
  loc_B0F540: FLdPr Me
  loc_B0F543: MemLdRfVar from_stack_1.global_60
  loc_B0F546: LdPrVar
  loc_B0F548: LateMemCall
  loc_B0F54E: FLdPr Me
  loc_B0F551: MemLdStr global_104
  loc_B0F554: FLdPr Me
  loc_B0F557: MemLdStr global_100
  loc_B0F55A: AryLock
  loc_B0F55D: Ary1LdRf
  loc_B0F55E: FStR4 var_B8
  loc_B0F561: LitStr vbNullString
  loc_B0F564: LitI2_Byte 0
  loc_B0F566: LitI2_Byte 0
  loc_B0F568: LitI2_Byte 0
  loc_B0F56A: LitStr "center"
  loc_B0F56D: FMemLdR4 var_B8(0)
  loc_B0F572: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0F577: CVarStr var_C8
  loc_B0F57A: PopAdLdVar
  loc_B0F57B: FLdPr Me
  loc_B0F57E: MemLdRfVar from_stack_1.global_60
  loc_B0F581: LdPrVar
  loc_B0F583: LateMemCall
  loc_B0F589: FFree1Var var_C8 = ""
  loc_B0F58C: LitStr vbNullString
  loc_B0F58F: LitI2_Byte 0
  loc_B0F591: LitI2_Byte 0
  loc_B0F593: LitI2_Byte 0
  loc_B0F595: LitStr "right"
  loc_B0F598: FMemLdR4 var_B8(4)
  loc_B0F59D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0F5A2: CVarStr var_C8
  loc_B0F5A5: PopAdLdVar
  loc_B0F5A6: FLdPr Me
  loc_B0F5A9: MemLdRfVar from_stack_1.global_60
  loc_B0F5AC: LdPrVar
  loc_B0F5AE: LateMemCall
  loc_B0F5B4: FFree1Var var_C8 = ""
  loc_B0F5B7: LitStr vbNullString
  loc_B0F5BA: LitI2_Byte 0
  loc_B0F5BC: LitI2_Byte 0
  loc_B0F5BE: LitI2_Byte 0
  loc_B0F5C0: LitStr "left"
  loc_B0F5C3: FMemLdR4 var_B8(8)
  loc_B0F5C8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0F5CD: CVarStr var_C8
  loc_B0F5D0: PopAdLdVar
  loc_B0F5D1: FLdPr Me
  loc_B0F5D4: MemLdRfVar from_stack_1.global_60
  loc_B0F5D7: LdPrVar
  loc_B0F5D9: LateMemCall
  loc_B0F5DF: FFree1Var var_C8 = ""
  loc_B0F5E2: LitStr vbNullString
  loc_B0F5E5: LitI2_Byte 0
  loc_B0F5E7: LitI2_Byte 0
  loc_B0F5E9: LitI2_Byte 0
  loc_B0F5EB: LitStr "right"
  loc_B0F5EE: FMemLdR4 var_B8(12)
  loc_B0F5F3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0F5F8: CVarStr var_C8
  loc_B0F5FB: PopAdLdVar
  loc_B0F5FC: FLdPr Me
  loc_B0F5FF: MemLdRfVar from_stack_1.global_60
  loc_B0F602: LdPrVar
  loc_B0F604: LateMemCall
  loc_B0F60A: FFree1Var var_C8 = ""
  loc_B0F60D: LitStr vbNullString
  loc_B0F610: LitI2_Byte 0
  loc_B0F612: LitI2_Byte 0
  loc_B0F614: LitI2_Byte 0
  loc_B0F616: LitStr "center"
  loc_B0F619: FMemLdR4 var_B8(16)
  loc_B0F61E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0F623: CVarStr var_C8
  loc_B0F626: PopAdLdVar
  loc_B0F627: FLdPr Me
  loc_B0F62A: MemLdRfVar from_stack_1.global_60
  loc_B0F62D: LdPrVar
  loc_B0F62F: LateMemCall
  loc_B0F635: FFree1Var var_C8 = ""
  loc_B0F638: LitStr vbNullString
  loc_B0F63B: LitI2_Byte 0
  loc_B0F63D: LitI2_Byte 0
  loc_B0F63F: LitI2_Byte 0
  loc_B0F641: LitStr "right"
  loc_B0F644: FMemLdR4 var_B8(20)
  loc_B0F649: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0F64E: CVarStr var_C8
  loc_B0F651: PopAdLdVar
  loc_B0F652: FLdPr Me
  loc_B0F655: MemLdRfVar from_stack_1.global_60
  loc_B0F658: LdPrVar
  loc_B0F65A: LateMemCall
  loc_B0F660: FFree1Var var_C8 = ""
  loc_B0F663: LitI4 0
  loc_B0F668: FStR4 var_B8
  loc_B0F66B: AryUnlock
  loc_B0F66E: LitVarStr var_A0, "     </tr>"
  loc_B0F673: PopAdLdVar
  loc_B0F674: FLdPr Me
  loc_B0F677: MemLdRfVar from_stack_1.global_60
  loc_B0F67A: LdPrVar
  loc_B0F67C: LateMemCall
  loc_B0F682: FLdPr Me
  loc_B0F685: MemLdRfVar from_stack_1.global_104
  loc_B0F688: NextI4 var_90, loc_B0F53A
  loc_B0F68D: LitVarStr var_A0, "  <tr valign=""top"" class=""Totales"">"
  loc_B0F692: PopAdLdVar
  loc_B0F693: FLdPr Me
  loc_B0F696: MemLdRfVar from_stack_1.global_60
  loc_B0F699: LdPrVar
  loc_B0F69B: LateMemCall
  loc_B0F6A1: LitVarStr var_A0, "    <td colspan=""5"" align=""right"">Totales</td>"
  loc_B0F6A6: PopAdLdVar
  loc_B0F6A7: FLdPr Me
  loc_B0F6AA: MemLdRfVar from_stack_1.global_60
  loc_B0F6AD: LdPrVar
  loc_B0F6AF: LateMemCall
  loc_B0F6B5: LitI4 1
  loc_B0F6BA: FLdPr Me
  loc_B0F6BD: MemLdStr global_96
  loc_B0F6C0: AryLock
  loc_B0F6C3: Ary1LdRf
  loc_B0F6C4: FStR4 var_D0
  loc_B0F6C7: LitStr vbNullString
  loc_B0F6CA: LitI2_Byte 0
  loc_B0F6CC: LitI2_Byte 0
  loc_B0F6CE: LitI2_Byte 0
  loc_B0F6D0: LitStr "right"
  loc_B0F6D3: FMemLdR4 var_D0(20)
  loc_B0F6D8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0F6DD: CVarStr var_C8
  loc_B0F6E0: PopAdLdVar
  loc_B0F6E1: FLdPr Me
  loc_B0F6E4: MemLdRfVar from_stack_1.global_60
  loc_B0F6E7: LdPrVar
  loc_B0F6E9: LateMemCall
  loc_B0F6EF: FFree1Var var_C8 = ""
  loc_B0F6F2: LitI4 0
  loc_B0F6F7: FStR4 var_D0
  loc_B0F6FA: AryUnlock
  loc_B0F6FD: LitVarStr var_A0, "     </tr>"
  loc_B0F702: PopAdLdVar
  loc_B0F703: FLdPr Me
  loc_B0F706: MemLdRfVar from_stack_1.global_60
  loc_B0F709: LdPrVar
  loc_B0F70B: LateMemCall
  loc_B0F711: Call Proc_346_28_A0BDB8()
  loc_B0F716: FLdPr Me
  loc_B0F719: MemLdRfVar from_stack_1.global_60
  loc_B0F71C: LdPrVar
  loc_B0F71E: LateMemCall
  loc_B0F724: LitStr vbNullString
  loc_B0F727: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B0F72C: ExitProcHresult
  loc_B0F72D: PopTmpLdAdStr GeneraHTMLBA
End Sub

Public Sub GeneraTXT() '9AEEA0
  'Data Table: 490E1C
  loc_9AEE9C: ExitProcHresult
End Sub

Private Function Proc_346_27_BD173C() 'BD173C
  'Data Table: 490E1C
  loc_BD100C: LitVarStr var_94, "<html>"
  loc_BD1011: PopAdLdVar
  loc_BD1012: FLdPr Me
  loc_BD1015: MemLdRfVar from_stack_1.global_60
  loc_BD1018: LdPrVar
  loc_BD101A: LateMemCall
  loc_BD1020: LitVarStr var_94, "<head>"
  loc_BD1025: PopAdLdVar
  loc_BD1026: FLdPr Me
  loc_BD1029: MemLdRfVar from_stack_1.global_60
  loc_BD102C: LdPrVar
  loc_BD102E: LateMemCall
  loc_BD1034: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BD1039: PopAdLdVar
  loc_BD103A: FLdPr Me
  loc_BD103D: MemLdRfVar from_stack_1.global_60
  loc_BD1040: LdPrVar
  loc_BD1042: LateMemCall
  loc_BD1048: LitStr "<title>"
  loc_BD104B: FLdRfVar var_A8
  loc_BD104E: FLdPr Me
  loc_BD1051:  = Me.Caption
  loc_BD1056: ILdRf var_A8
  loc_BD1059: ConcatStr
  loc_BD105A: FStStrNoPop var_AC
  loc_BD105D: LitStr "</title>"
  loc_BD1060: ConcatStr
  loc_BD1061: CVarStr var_BC
  loc_BD1064: PopAdLdVar
  loc_BD1065: FLdPr Me
  loc_BD1068: MemLdRfVar from_stack_1.global_60
  loc_BD106B: LdPrVar
  loc_BD106D: LateMemCall
  loc_BD1073: FFreeStr var_A8 = ""
  loc_BD107A: FFree1Var var_BC = ""
  loc_BD107D: LitVarStr var_94, "<style type=""text/css"">"
  loc_BD1082: PopAdLdVar
  loc_BD1083: FLdPr Me
  loc_BD1086: MemLdRfVar from_stack_1.global_60
  loc_BD1089: LdPrVar
  loc_BD108B: LateMemCall
  loc_BD1091: LitVarStr var_94, ".Titulo1 {"
  loc_BD1096: PopAdLdVar
  loc_BD1097: FLdPr Me
  loc_BD109A: MemLdRfVar from_stack_1.global_60
  loc_BD109D: LdPrVar
  loc_BD109F: LateMemCall
  loc_BD10A5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD10AA: PopAdLdVar
  loc_BD10AB: FLdPr Me
  loc_BD10AE: MemLdRfVar from_stack_1.global_60
  loc_BD10B1: LdPrVar
  loc_BD10B3: LateMemCall
  loc_BD10B9: LitVarStr var_94, " font-size: 18px;"
  loc_BD10BE: PopAdLdVar
  loc_BD10BF: FLdPr Me
  loc_BD10C2: MemLdRfVar from_stack_1.global_60
  loc_BD10C5: LdPrVar
  loc_BD10C7: LateMemCall
  loc_BD10CD: LitVarStr var_94, " font-weight: bold;"
  loc_BD10D2: PopAdLdVar
  loc_BD10D3: FLdPr Me
  loc_BD10D6: MemLdRfVar from_stack_1.global_60
  loc_BD10D9: LdPrVar
  loc_BD10DB: LateMemCall
  loc_BD10E1: LitVarStr var_94, "}"
  loc_BD10E6: PopAdLdVar
  loc_BD10E7: FLdPr Me
  loc_BD10EA: MemLdRfVar from_stack_1.global_60
  loc_BD10ED: LdPrVar
  loc_BD10EF: LateMemCall
  loc_BD10F5: LitVarStr var_94, ".Titulo2 {"
  loc_BD10FA: PopAdLdVar
  loc_BD10FB: FLdPr Me
  loc_BD10FE: MemLdRfVar from_stack_1.global_60
  loc_BD1101: LdPrVar
  loc_BD1103: LateMemCall
  loc_BD1109: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD110E: PopAdLdVar
  loc_BD110F: FLdPr Me
  loc_BD1112: MemLdRfVar from_stack_1.global_60
  loc_BD1115: LdPrVar
  loc_BD1117: LateMemCall
  loc_BD111D: LitVarStr var_94, " font-size: 14px;"
  loc_BD1122: PopAdLdVar
  loc_BD1123: FLdPr Me
  loc_BD1126: MemLdRfVar from_stack_1.global_60
  loc_BD1129: LdPrVar
  loc_BD112B: LateMemCall
  loc_BD1131: LitVarStr var_94, " font-weight: bold;"
  loc_BD1136: PopAdLdVar
  loc_BD1137: FLdPr Me
  loc_BD113A: MemLdRfVar from_stack_1.global_60
  loc_BD113D: LdPrVar
  loc_BD113F: LateMemCall
  loc_BD1145: LitVarStr var_94, "}"
  loc_BD114A: PopAdLdVar
  loc_BD114B: FLdPr Me
  loc_BD114E: MemLdRfVar from_stack_1.global_60
  loc_BD1151: LdPrVar
  loc_BD1153: LateMemCall
  loc_BD1159: LitVarStr var_94, ".Normal {"
  loc_BD115E: PopAdLdVar
  loc_BD115F: FLdPr Me
  loc_BD1162: MemLdRfVar from_stack_1.global_60
  loc_BD1165: LdPrVar
  loc_BD1167: LateMemCall
  loc_BD116D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD1172: PopAdLdVar
  loc_BD1173: FLdPr Me
  loc_BD1176: MemLdRfVar from_stack_1.global_60
  loc_BD1179: LdPrVar
  loc_BD117B: LateMemCall
  loc_BD1181: LitVarStr var_94, " font-size: 12px;"
  loc_BD1186: PopAdLdVar
  loc_BD1187: FLdPr Me
  loc_BD118A: MemLdRfVar from_stack_1.global_60
  loc_BD118D: LdPrVar
  loc_BD118F: LateMemCall
  loc_BD1195: LitVarStr var_94, " font-style: normal;"
  loc_BD119A: PopAdLdVar
  loc_BD119B: FLdPr Me
  loc_BD119E: MemLdRfVar from_stack_1.global_60
  loc_BD11A1: LdPrVar
  loc_BD11A3: LateMemCall
  loc_BD11A9: LitVarStr var_94, " font-weight: normal;"
  loc_BD11AE: PopAdLdVar
  loc_BD11AF: FLdPr Me
  loc_BD11B2: MemLdRfVar from_stack_1.global_60
  loc_BD11B5: LdPrVar
  loc_BD11B7: LateMemCall
  loc_BD11BD: LitVarStr var_94, " font-variant: normal;"
  loc_BD11C2: PopAdLdVar
  loc_BD11C3: FLdPr Me
  loc_BD11C6: MemLdRfVar from_stack_1.global_60
  loc_BD11C9: LdPrVar
  loc_BD11CB: LateMemCall
  loc_BD11D1: LitVarStr var_94, "}"
  loc_BD11D6: PopAdLdVar
  loc_BD11D7: FLdPr Me
  loc_BD11DA: MemLdRfVar from_stack_1.global_60
  loc_BD11DD: LdPrVar
  loc_BD11DF: LateMemCall
  loc_BD11E5: LitVarStr var_94, ".Encabezado {"
  loc_BD11EA: PopAdLdVar
  loc_BD11EB: FLdPr Me
  loc_BD11EE: MemLdRfVar from_stack_1.global_60
  loc_BD11F1: LdPrVar
  loc_BD11F3: LateMemCall
  loc_BD11F9: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BD11FE: PopAdLdVar
  loc_BD11FF: FLdPr Me
  loc_BD1202: MemLdRfVar from_stack_1.global_60
  loc_BD1205: LdPrVar
  loc_BD1207: LateMemCall
  loc_BD120D: LitVarStr var_94, " font-size: 11px;"
  loc_BD1212: PopAdLdVar
  loc_BD1213: FLdPr Me
  loc_BD1216: MemLdRfVar from_stack_1.global_60
  loc_BD1219: LdPrVar
  loc_BD121B: LateMemCall
  loc_BD1221: LitVarStr var_94, " font-weight: bold;"
  loc_BD1226: PopAdLdVar
  loc_BD1227: FLdPr Me
  loc_BD122A: MemLdRfVar from_stack_1.global_60
  loc_BD122D: LdPrVar
  loc_BD122F: LateMemCall
  loc_BD1235: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BD123A: PopAdLdVar
  loc_BD123B: FLdPr Me
  loc_BD123E: MemLdRfVar from_stack_1.global_60
  loc_BD1241: LdPrVar
  loc_BD1243: LateMemCall
  loc_BD1249: LitVarStr var_94, "}"
  loc_BD124E: PopAdLdVar
  loc_BD124F: FLdPr Me
  loc_BD1252: MemLdRfVar from_stack_1.global_60
  loc_BD1255: LdPrVar
  loc_BD1257: LateMemCall
  loc_BD125D: LitVarStr var_94, ".LineaDato {"
  loc_BD1262: PopAdLdVar
  loc_BD1263: FLdPr Me
  loc_BD1266: MemLdRfVar from_stack_1.global_60
  loc_BD1269: LdPrVar
  loc_BD126B: LateMemCall
  loc_BD1271: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD1276: PopAdLdVar
  loc_BD1277: FLdPr Me
  loc_BD127A: MemLdRfVar from_stack_1.global_60
  loc_BD127D: LdPrVar
  loc_BD127F: LateMemCall
  loc_BD1285: LitVarStr var_94, " font-size: 10px;"
  loc_BD128A: PopAdLdVar
  loc_BD128B: FLdPr Me
  loc_BD128E: MemLdRfVar from_stack_1.global_60
  loc_BD1291: LdPrVar
  loc_BD1293: LateMemCall
  loc_BD1299: LitVarStr var_94, "}"
  loc_BD129E: PopAdLdVar
  loc_BD129F: FLdPr Me
  loc_BD12A2: MemLdRfVar from_stack_1.global_60
  loc_BD12A5: LdPrVar
  loc_BD12A7: LateMemCall
  loc_BD12AD: LitVarStr var_94, ".Totales {"
  loc_BD12B2: PopAdLdVar
  loc_BD12B3: FLdPr Me
  loc_BD12B6: MemLdRfVar from_stack_1.global_60
  loc_BD12B9: LdPrVar
  loc_BD12BB: LateMemCall
  loc_BD12C1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD12C6: PopAdLdVar
  loc_BD12C7: FLdPr Me
  loc_BD12CA: MemLdRfVar from_stack_1.global_60
  loc_BD12CD: LdPrVar
  loc_BD12CF: LateMemCall
  loc_BD12D5: LitVarStr var_94, " font-size: 12px;"
  loc_BD12DA: PopAdLdVar
  loc_BD12DB: FLdPr Me
  loc_BD12DE: MemLdRfVar from_stack_1.global_60
  loc_BD12E1: LdPrVar
  loc_BD12E3: LateMemCall
  loc_BD12E9: LitVarStr var_94, " font-weight: bold;"
  loc_BD12EE: PopAdLdVar
  loc_BD12EF: FLdPr Me
  loc_BD12F2: MemLdRfVar from_stack_1.global_60
  loc_BD12F5: LdPrVar
  loc_BD12F7: LateMemCall
  loc_BD12FD: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BD1302: PopAdLdVar
  loc_BD1303: FLdPr Me
  loc_BD1306: MemLdRfVar from_stack_1.global_60
  loc_BD1309: LdPrVar
  loc_BD130B: LateMemCall
  loc_BD1311: LitVarStr var_94, "}"
  loc_BD1316: PopAdLdVar
  loc_BD1317: FLdPr Me
  loc_BD131A: MemLdRfVar from_stack_1.global_60
  loc_BD131D: LdPrVar
  loc_BD131F: LateMemCall
  loc_BD1325: LitVarStr var_94, ".SubTotales {"
  loc_BD132A: PopAdLdVar
  loc_BD132B: FLdPr Me
  loc_BD132E: MemLdRfVar from_stack_1.global_60
  loc_BD1331: LdPrVar
  loc_BD1333: LateMemCall
  loc_BD1339: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD133E: PopAdLdVar
  loc_BD133F: FLdPr Me
  loc_BD1342: MemLdRfVar from_stack_1.global_60
  loc_BD1345: LdPrVar
  loc_BD1347: LateMemCall
  loc_BD134D: LitVarStr var_94, " font-size: 10px;"
  loc_BD1352: PopAdLdVar
  loc_BD1353: FLdPr Me
  loc_BD1356: MemLdRfVar from_stack_1.global_60
  loc_BD1359: LdPrVar
  loc_BD135B: LateMemCall
  loc_BD1361: LitVarStr var_94, " font-weight: bold;"
  loc_BD1366: PopAdLdVar
  loc_BD1367: FLdPr Me
  loc_BD136A: MemLdRfVar from_stack_1.global_60
  loc_BD136D: LdPrVar
  loc_BD136F: LateMemCall
  loc_BD1375: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BD137A: PopAdLdVar
  loc_BD137B: FLdPr Me
  loc_BD137E: MemLdRfVar from_stack_1.global_60
  loc_BD1381: LdPrVar
  loc_BD1383: LateMemCall
  loc_BD1389: LitVarStr var_94, "}"
  loc_BD138E: PopAdLdVar
  loc_BD138F: FLdPr Me
  loc_BD1392: MemLdRfVar from_stack_1.global_60
  loc_BD1395: LdPrVar
  loc_BD1397: LateMemCall
  loc_BD139D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BD13A2: PopAdLdVar
  loc_BD13A3: FLdPr Me
  loc_BD13A6: MemLdRfVar from_stack_1.global_60
  loc_BD13A9: LdPrVar
  loc_BD13AB: LateMemCall
  loc_BD13B1: LitVarStr var_94, "</style>"
  loc_BD13B6: PopAdLdVar
  loc_BD13B7: FLdPr Me
  loc_BD13BA: MemLdRfVar from_stack_1.global_60
  loc_BD13BD: LdPrVar
  loc_BD13BF: LateMemCall
  loc_BD13C5: LitI4 0
  loc_BD13CA: FStStrCopy var_AC
  loc_BD13CD: FLdRfVar var_AC
  loc_BD13D0: LitI4 0
  loc_BD13D5: FStStrCopy var_A8
  loc_BD13D8: FLdRfVar var_A8
  loc_BD13DB: LitI2_Byte &HFF
  loc_BD13DD: PopTmpLdAd2 var_BE
  loc_BD13E0: FLdPr Me
  loc_BD13E3: MemLdRfVar from_stack_1.global_60
  loc_BD13E6: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BD13EB: FFreeStr var_A8 = ""
  loc_BD13F2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BD13F7: PopAdLdVar
  loc_BD13F8: FLdPr Me
  loc_BD13FB: MemLdRfVar from_stack_1.global_60
  loc_BD13FE: LdPrVar
  loc_BD1400: LateMemCall
  loc_BD1406: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BD140B: PopAdLdVar
  loc_BD140C: FLdPr Me
  loc_BD140F: MemLdRfVar from_stack_1.global_60
  loc_BD1412: LdPrVar
  loc_BD1414: LateMemCall
  loc_BD141A: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BD141F: PopAdLdVar
  loc_BD1420: FLdPr Me
  loc_BD1423: MemLdRfVar from_stack_1.global_60
  loc_BD1426: LdPrVar
  loc_BD1428: LateMemCall
  loc_BD142E: FLdPr Me
  loc_BD1431: MemLdI2 bLogos
  loc_BD1434: BranchF loc_BD147D
  loc_BD1437: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BD143A: LitI2_Byte &H5F
  loc_BD143C: CStrUI1
  loc_BD143E: FStStrNoPop var_A8
  loc_BD1441: ConcatStr
  loc_BD1442: FStStrNoPop var_AC
  loc_BD1445: LitStr """ height="""
  loc_BD1448: ConcatStr
  loc_BD1449: FStStrNoPop var_C4
  loc_BD144C: LitI2_Byte &H3C
  loc_BD144E: CStrUI1
  loc_BD1450: FStStrNoPop var_C8
  loc_BD1453: ConcatStr
  loc_BD1454: FStStrNoPop var_CC
  loc_BD1457: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BD145A: ConcatStr
  loc_BD145B: CVarStr var_BC
  loc_BD145E: PopAdLdVar
  loc_BD145F: FLdPr Me
  loc_BD1462: MemLdRfVar from_stack_1.global_60
  loc_BD1465: LdPrVar
  loc_BD1467: LateMemCall
  loc_BD146D: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BD147A: FFree1Var var_BC = ""
  loc_BD147D: LitStr "     <br>"
  loc_BD1480: LitStr "Municipalidad de Guaymallén"
  loc_BD1483: ConcatStr
  loc_BD1484: FStStrNoPop var_A8
  loc_BD1487: LitStr "</p>"
  loc_BD148A: ConcatStr
  loc_BD148B: CVarStr var_BC
  loc_BD148E: PopAdLdVar
  loc_BD148F: FLdPr Me
  loc_BD1492: MemLdRfVar from_stack_1.global_60
  loc_BD1495: LdPrVar
  loc_BD1497: LateMemCall
  loc_BD149D: FFree1Str var_A8
  loc_BD14A0: FFree1Var var_BC = ""
  loc_BD14A3: LitStr "    <p>"
  loc_BD14A6: FLdRfVar var_A8
  loc_BD14A9: FLdPr Me
  loc_BD14AC:  = Me.Caption
  loc_BD14B1: ILdRf var_A8
  loc_BD14B4: ConcatStr
  loc_BD14B5: FStStrNoPop var_AC
  loc_BD14B8: LitStr "</p></th>"
  loc_BD14BB: ConcatStr
  loc_BD14BC: CVarStr var_BC
  loc_BD14BF: PopAdLdVar
  loc_BD14C0: FLdPr Me
  loc_BD14C3: MemLdRfVar from_stack_1.global_60
  loc_BD14C6: LdPrVar
  loc_BD14C8: LateMemCall
  loc_BD14CE: FFreeStr var_A8 = ""
  loc_BD14D5: FFree1Var var_BC = ""
  loc_BD14D8: LitVarStr var_94, "  </tr>"
  loc_BD14DD: PopAdLdVar
  loc_BD14DE: FLdPr Me
  loc_BD14E1: MemLdRfVar from_stack_1.global_60
  loc_BD14E4: LdPrVar
  loc_BD14E6: LateMemCall
  loc_BD14EC: LitVarStr var_94, "  <tr>"
  loc_BD14F1: PopAdLdVar
  loc_BD14F2: FLdPr Me
  loc_BD14F5: MemLdRfVar from_stack_1.global_60
  loc_BD14F8: LdPrVar
  loc_BD14FA: LateMemCall
  loc_BD1500: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_BD1505: PopAdLdVar
  loc_BD1506: FLdPr Me
  loc_BD1509: MemLdRfVar from_stack_1.global_60
  loc_BD150C: LdPrVar
  loc_BD150E: LateMemCall
  loc_BD1514: LitVarStr var_94, "  </tr>"
  loc_BD1519: PopAdLdVar
  loc_BD151A: FLdPr Me
  loc_BD151D: MemLdRfVar from_stack_1.global_60
  loc_BD1520: LdPrVar
  loc_BD1522: LateMemCall
  loc_BD1528: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BD152D: PopAdLdVar
  loc_BD152E: FLdPr Me
  loc_BD1531: MemLdRfVar from_stack_1.global_60
  loc_BD1534: LdPrVar
  loc_BD1536: LateMemCall
  loc_BD153C: LitStr "    <td align=""left""><strong> Concepto: "
  loc_BD153F: FLdPr Me
  loc_BD1542: VCallAd Control_ID_CodiConcMsk
  loc_BD1545: FStAdFunc var_D0
  loc_BD1548: FLdPr var_D0
  loc_BD154B: LateIdLdVar var_BC DispID_22 0
  loc_BD1552: CStrVarTmp
  loc_BD1553: FStStrNoPop var_A8
  loc_BD1556: ConcatStr
  loc_BD1557: FStStrNoPop var_AC
  loc_BD155A: LitStr " - "
  loc_BD155D: ConcatStr
  loc_BD155E: FStStrNoPop var_C8
  loc_BD1561: FLdRfVar var_C4
  loc_BD1564: FLdPr Me
  loc_BD1567: VCallAd Control_ID_DetaConceLbl
  loc_BD156A: FStAdFunc var_D4
  loc_BD156D: FLdPr var_D4
  loc_BD1570:  = Me.Caption
  loc_BD1575: ILdRf var_C4
  loc_BD1578: ConcatStr
  loc_BD1579: FStStrNoPop var_CC
  loc_BD157C: LitStr "</strong><br>"
  loc_BD157F: ConcatStr
  loc_BD1580: CVarStr var_E4
  loc_BD1583: PopAdLdVar
  loc_BD1584: FLdPr Me
  loc_BD1587: MemLdRfVar from_stack_1.global_60
  loc_BD158A: LdPrVar
  loc_BD158C: LateMemCall
  loc_BD1592: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_BD159F: FFreeAd var_D0 = ""
  loc_BD15A6: FFreeVar var_BC = ""
  loc_BD15AD: LitStr "                       <strong> Desde Fecha: "
  loc_BD15B0: FLdPr Me
  loc_BD15B3: VCallAd Control_ID_FealCtctDesdeMsk
  loc_BD15B6: FStAdFunc var_D0
  loc_BD15B9: FLdPr var_D0
  loc_BD15BC: LateIdLdVar var_BC DispID_15 0
  loc_BD15C3: CStrVarTmp
  loc_BD15C4: FStStrNoPop var_A8
  loc_BD15C7: ConcatStr
  loc_BD15C8: FStStrNoPop var_AC
  loc_BD15CB: LitStr "</strong><br>"
  loc_BD15CE: ConcatStr
  loc_BD15CF: CVarStr var_E4
  loc_BD15D2: PopAdLdVar
  loc_BD15D3: FLdPr Me
  loc_BD15D6: MemLdRfVar from_stack_1.global_60
  loc_BD15D9: LdPrVar
  loc_BD15DB: LateMemCall
  loc_BD15E1: FFreeStr var_A8 = ""
  loc_BD15E8: FFree1Ad var_D0
  loc_BD15EB: FFreeVar var_BC = ""
  loc_BD15F2: LitStr "                       <strong> Hasta Fecha: "
  loc_BD15F5: FLdPr Me
  loc_BD15F8: VCallAd Control_ID_FealCtctHastaMsk
  loc_BD15FB: FStAdFunc var_D0
  loc_BD15FE: FLdPr var_D0
  loc_BD1601: LateIdLdVar var_BC DispID_15 0
  loc_BD1608: CStrVarTmp
  loc_BD1609: FStStrNoPop var_A8
  loc_BD160C: ConcatStr
  loc_BD160D: FStStrNoPop var_AC
  loc_BD1610: LitStr "</strong></td>"
  loc_BD1613: ConcatStr
  loc_BD1614: CVarStr var_E4
  loc_BD1617: PopAdLdVar
  loc_BD1618: FLdPr Me
  loc_BD161B: MemLdRfVar from_stack_1.global_60
  loc_BD161E: LdPrVar
  loc_BD1620: LateMemCall
  loc_BD1626: FFreeStr var_A8 = ""
  loc_BD162D: FFree1Ad var_D0
  loc_BD1630: FFreeVar var_BC = ""
  loc_BD1637: LitVarStr var_94, "  </tr>"
  loc_BD163C: PopAdLdVar
  loc_BD163D: FLdPr Me
  loc_BD1640: MemLdRfVar from_stack_1.global_60
  loc_BD1643: LdPrVar
  loc_BD1645: LateMemCall
  loc_BD164B: LitVarStr var_94, "</table>"
  loc_BD1650: PopAdLdVar
  loc_BD1651: FLdPr Me
  loc_BD1654: MemLdRfVar from_stack_1.global_60
  loc_BD1657: LdPrVar
  loc_BD1659: LateMemCall
  loc_BD165F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BD1664: PopAdLdVar
  loc_BD1665: FLdPr Me
  loc_BD1668: MemLdRfVar from_stack_1.global_60
  loc_BD166B: LdPrVar
  loc_BD166D: LateMemCall
  loc_BD1673: LitVarStr var_94, "  <thead>"
  loc_BD1678: PopAdLdVar
  loc_BD1679: FLdPr Me
  loc_BD167C: MemLdRfVar from_stack_1.global_60
  loc_BD167F: LdPrVar
  loc_BD1681: LateMemCall
  loc_BD1687: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BD168C: PopAdLdVar
  loc_BD168D: FLdPr Me
  loc_BD1690: MemLdRfVar from_stack_1.global_60
  loc_BD1693: LdPrVar
  loc_BD1695: LateMemCall
  loc_BD169B: LitVarStr var_94, "    <th>Facilidad</th>"
  loc_BD16A0: PopAdLdVar
  loc_BD16A1: FLdPr Me
  loc_BD16A4: MemLdRfVar from_stack_1.global_60
  loc_BD16A7: LdPrVar
  loc_BD16A9: LateMemCall
  loc_BD16AF: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BD16B4: PopAdLdVar
  loc_BD16B5: FLdPr Me
  loc_BD16B8: MemLdRfVar from_stack_1.global_60
  loc_BD16BB: LdPrVar
  loc_BD16BD: LateMemCall
  loc_BD16C3: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_BD16C8: PopAdLdVar
  loc_BD16C9: FLdPr Me
  loc_BD16CC: MemLdRfVar from_stack_1.global_60
  loc_BD16CF: LdPrVar
  loc_BD16D1: LateMemCall
  loc_BD16D7: LitVarStr var_94, "    <th>Fecha de Alta</th>"
  loc_BD16DC: PopAdLdVar
  loc_BD16DD: FLdPr Me
  loc_BD16E0: MemLdRfVar from_stack_1.global_60
  loc_BD16E3: LdPrVar
  loc_BD16E5: LateMemCall
  loc_BD16EB: LitVarStr var_94, "    <th>Estado</th>"
  loc_BD16F0: PopAdLdVar
  loc_BD16F1: FLdPr Me
  loc_BD16F4: MemLdRfVar from_stack_1.global_60
  loc_BD16F7: LdPrVar
  loc_BD16F9: LateMemCall
  loc_BD16FF: LitVarStr var_94, "    <th>Imp. Total</th>"
  loc_BD1704: PopAdLdVar
  loc_BD1705: FLdPr Me
  loc_BD1708: MemLdRfVar from_stack_1.global_60
  loc_BD170B: LdPrVar
  loc_BD170D: LateMemCall
  loc_BD1713: LitVarStr var_94, "  </tr>"
  loc_BD1718: PopAdLdVar
  loc_BD1719: FLdPr Me
  loc_BD171C: MemLdRfVar from_stack_1.global_60
  loc_BD171F: LdPrVar
  loc_BD1721: LateMemCall
  loc_BD1727: LitVarStr var_94, "  </thead>"
  loc_BD172C: PopAdLdVar
  loc_BD172D: FLdPr Me
  loc_BD1730: MemLdRfVar from_stack_1.global_60
  loc_BD1733: LdPrVar
  loc_BD1735: LateMemCall
  loc_BD173B: ExitProcHresult
End Function

Private Function Proc_346_28_A0BDB8() 'A0BDB8
  'Data Table: 490E1C
  loc_A0BD78: LitVarStr var_94, "</table>"
  loc_A0BD7D: PopAdLdVar
  loc_A0BD7E: FLdPr Me
  loc_A0BD81: MemLdRfVar from_stack_1.global_60
  loc_A0BD84: LdPrVar
  loc_A0BD86: LateMemCall
  loc_A0BD8C: LitVarStr var_94, "</body>"
  loc_A0BD91: PopAdLdVar
  loc_A0BD92: FLdPr Me
  loc_A0BD95: MemLdRfVar from_stack_1.global_60
  loc_A0BD98: LdPrVar
  loc_A0BD9A: LateMemCall
  loc_A0BDA0: LitVarStr var_94, "</html>"
  loc_A0BDA5: PopAdLdVar
  loc_A0BDA6: FLdPr Me
  loc_A0BDA9: MemLdRfVar from_stack_1.global_60
  loc_A0BDAC: LdPrVar
  loc_A0BDAE: LateMemCall
  loc_A0BDB4: ExitProcHresult
End Function
