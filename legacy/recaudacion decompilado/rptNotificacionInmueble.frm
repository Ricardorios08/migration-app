VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptNotificacionInmueble
  Caption = "Notificación de "
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptNotificacionInmueble.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8148
  ClientHeight = 3972
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
  Begin VB.CheckBox NotificadasChk
    Caption = "Solo las que NO estan notificadas"
    Left = 3720
    Top = 2520
    Width = 4095
    Height = 420
    TabIndex = 15
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2400
    Width = 3495
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 720
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 3
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3720
    Width = 8145
    Height = 255
    TabIndex = 8
    OleObjectBlob = "rptNotificacionInmueble.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 3000
    Width = 735
    Height = 615
    TabIndex = 5
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
    Picture = "rptNotificacionInmueble.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptNotificacionInmueble.frx":0B9C
    Left = 7440
    Top = 2880
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7935
    Height = 2295
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame3
      Caption = "Cuenta"
      Left = 120
      Top = 240
      Width = 5775
      Height = 1215
      TabIndex = 12
      Begin MSMask.MaskEdBox CodiInmuDesdeMsk
        Left = 1440
        Top = 480
        Width = 1215
        Height = 420
        TabIndex = 0
        OleObjectBlob = "rptNotificacionInmueble.frx":0C00
      End
      Begin MSMask.MaskEdBox CodiInmuHastaMsk
        Left = 4125
        Top = 480
        Width = 1215
        Height = 420
        TabIndex = 1
        OleObjectBlob = "rptNotificacionInmueble.frx":0C98
      End
      Begin VB.Label Label1
        Caption = "Hasta:"
        Left = 3300
        Top = 480
        Width = 705
        Height = 300
        TabIndex = 14
        Alignment = 1 'Right Justify
        AutoSize = -1  'True
      End
      Begin VB.Label Label3
        Caption = "Desde:"
        Left = 555
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 13
        Alignment = 1 'Right Justify
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6120
      Top = 480
      Width = 1575
      Height = 615
      TabIndex = 4
    End
    Begin VB.Label DetaPersLbl
      ForeColor = &HFF0000&
      Left = 120
      Top = 1680
      Width = 7575
      Height = 420
      TabIndex = 2
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 3000
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptNotificacionInmueble.frx":0D30
  End
  Begin MSComctlLib.ProgressBar pbar
    Left = 120
    Top = 2280
    Width = 7935
    Height = 135
    Visible = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptNotificacionInmueble.frx":0DE4
  End
  Begin VB.Label ProgresoLbl
    Left = 3840
    Top = 3120
    Width = 1515
    Height = 300
    TabIndex = 11
    Alignment = 2 'Center
  End
End

Attribute VB_Name = "rptNotificacionInmueble"

Public OrdeObre As String
Public bGenerado As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdPredeterminada_Click() 'B0D948
  'Data Table: 4801EC
  loc_B0D718: LitVarStr var_94, "Enviando a impresora predeterminada..."
  loc_B0D71D: PopAdLdVar
  loc_B0D71E: FLdPr Me
  loc_B0D721: VCallAd Control_ID_statusBar
  loc_B0D724: FStAdFunc var_A8
  loc_B0D727: FLdPr var_A8
  loc_B0D72A: LateIdSt
  loc_B0D72F: FFree1Ad var_A8
  loc_B0D732: ILdRf Me
  loc_B0D735: CastAd
  loc_B0D738: FStAdFunc var_A8
  loc_B0D73B: FLdRfVar var_A8
  loc_B0D73E: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B0D743: FFree1Ad var_A8
  loc_B0D746: FLdRfVar var_B0
  loc_B0D749: FLdPr Me
  loc_B0D74C:  = Me.Caption
  loc_B0D751: FLdZeroAd var_B0
  loc_B0D754: FStStr var_AC
  loc_B0D757: LitStr "Notificación de Obras Reembolsables"
  loc_B0D75A: FLdPr Me
  loc_B0D75D: Me.Caption = from_stack_1
  loc_B0D762: ILdRf Me
  loc_B0D765: CastAd
  loc_B0D768: FStAdFunc var_A8
  loc_B0D76B: FLdRfVar var_A8
  loc_B0D76E: ImpAdCallFPR4  = Proc_57_16_A91D2C()
  loc_B0D773: FFree1Ad var_A8
  loc_B0D776: ILdRf var_AC
  loc_B0D779: FLdPr Me
  loc_B0D77C: Me.Caption = from_stack_1
  loc_B0D781: Call GeneraReporte()
  loc_B0D786: FLdPr Me
  loc_B0D789: MemLdStr global_92
  loc_B0D78C: LitI2_Byte 1
  loc_B0D78E: FnUBound
  loc_B0D790: CR8I4
  loc_B0D791: CVarR4
  loc_B0D795: PopAdLdVar
  loc_B0D796: FLdPr Me
  loc_B0D799: VCallAd Control_ID_pbar
  loc_B0D79C: FStAdFunc var_A8
  loc_B0D79F: FLdPr var_A8
  loc_B0D7A2: LateIdSt
  loc_B0D7A7: FFree1Ad var_A8
  loc_B0D7AA: LitVar_TRUE var_94
  loc_B0D7AD: PopAdLdVar
  loc_B0D7AE: FLdPr Me
  loc_B0D7B1: VCallAd Control_ID_pbar
  loc_B0D7B4: FStAdFunc var_A8
  loc_B0D7B7: FLdPr var_A8
  loc_B0D7BA: LateIdSt
  loc_B0D7BF: FFree1Ad var_A8
  loc_B0D7C2: LitI2_Byte &HFF
  loc_B0D7C4: FLdPr Me
  loc_B0D7C7: VCallAd Control_ID_ProgresoLbl
  loc_B0D7CA: FStAdFunc var_A8
  loc_B0D7CD: FLdPr var_A8
  loc_B0D7D0: Me.Visible = from_stack_1b
  loc_B0D7D5: FFree1Ad var_A8
  loc_B0D7D8: LitI4 1
  loc_B0D7DD: FLdPr Me
  loc_B0D7E0: MemLdRfVar from_stack_1.global_96
  loc_B0D7E3: FLdPr Me
  loc_B0D7E6: MemLdStr global_92
  loc_B0D7E9: LitI2_Byte 1
  loc_B0D7EB: FnUBound
  loc_B0D7ED: ForI4 var_B8
  loc_B0D7F3: LitI2_Byte 1
  loc_B0D7F5: CUI1I2
  loc_B0D7F7: FLdPr Me
  loc_B0D7FA: MemLdRfVar from_stack_1.global_100
  loc_B0D7FD: LitI2_Byte 2
  loc_B0D7FF: CUI1I2
  loc_B0D801: ForUI1 var_BC
  loc_B0D807: FLdPr Me
  loc_B0D80A: MemLdStr global_96
  loc_B0D80D: CR8I4
  loc_B0D80E: CVarR4
  loc_B0D812: PopAdLdVar
  loc_B0D813: FLdPr Me
  loc_B0D816: VCallAd Control_ID_pbar
  loc_B0D819: FStAdFunc var_A8
  loc_B0D81C: FLdPr var_A8
  loc_B0D81F: LateIdSt
  loc_B0D824: FFree1Ad var_A8
  loc_B0D827: FLdPr Me
  loc_B0D82A: MemLdStr global_96
  loc_B0D82D: CStrI4
  loc_B0D82F: FStStrNoPop var_B0
  loc_B0D832: LitStr "/"
  loc_B0D835: ConcatStr
  loc_B0D836: FStStrNoPop var_C0
  loc_B0D839: FLdPr Me
  loc_B0D83C: MemLdStr global_92
  loc_B0D83F: LitI2_Byte 1
  loc_B0D841: FnUBound
  loc_B0D843: CStrI4
  loc_B0D845: FStStrNoPop var_C4
  loc_B0D848: ConcatStr
  loc_B0D849: FStStrNoPop var_C8
  loc_B0D84C: FLdPr Me
  loc_B0D84F: VCallAd Control_ID_ProgresoLbl
  loc_B0D852: FStAdFunc var_A8
  loc_B0D855: FLdPr var_A8
  loc_B0D858: Me.Caption = from_stack_1
  loc_B0D85D: FFreeStr var_B0 = "": var_C0 = "": var_C4 = ""
  loc_B0D868: FFree1Ad var_A8
  loc_B0D86B: Call GeneraHTML()
  loc_B0D870: ImpAdLdRf MemVar_D93C84
  loc_B0D873: CDargRef
  loc_B0D877: FLdPr Me
  loc_B0D87A: VCallAd Control_ID_wbbReporte
  loc_B0D87D: FStAdFunc var_A8
  loc_B0D880: FLdPr var_A8
  loc_B0D883: LateIdCall
  loc_B0D88B: FFree1Ad var_A8
  loc_B0D88E: ImpAdCallFPR4 DoEvents()
  loc_B0D893: FLdPr Me
  loc_B0D896: VCallAd Control_ID_wbbReporte
  loc_B0D899: FStAdFunc var_A8
  loc_B0D89C: FLdPr var_A8
  loc_B0D89F: LateIdLdVar var_D8 DispID_-525 -1
  loc_B0D8A6: CI4Var
  loc_B0D8A8: LitI4 4
  loc_B0D8AD: NeI4
  loc_B0D8AE: FFree1Ad var_A8
  loc_B0D8B1: FFree1Var var_D8 = ""
  loc_B0D8B4: BranchT loc_B0D88E
  loc_B0D8B7: LitVarI4
  loc_B0D8BF: PopAdLdVar
  loc_B0D8C0: LitVarI4
  loc_B0D8C8: PopAdLdVar
  loc_B0D8C9: LitVar_NULL
  loc_B0D8CD: PopAdLdVar
  loc_B0D8CE: LitVar_NULL
  loc_B0D8D2: PopAdLdVar
  loc_B0D8D3: FLdPr Me
  loc_B0D8D6: VCallAd Control_ID_wbbReporte
  loc_B0D8D9: FStAdFunc var_A8
  loc_B0D8DC: FLdPr var_A8
  loc_B0D8DF: LateIdCall
  loc_B0D8E7: FFree1Ad var_A8
  loc_B0D8EA: FLdPr Me
  loc_B0D8ED: MemLdRfVar from_stack_1.global_100
  loc_B0D8F0: NextUI1
  loc_B0D8F6: FLdPr Me
  loc_B0D8F9: MemLdRfVar from_stack_1.global_96
  loc_B0D8FC: NextI4 var_B8, loc_B0D7F3
  loc_B0D901: LitVar_FALSE
  loc_B0D905: PopAdLdVar
  loc_B0D906: FLdPr Me
  loc_B0D909: VCallAd Control_ID_pbar
  loc_B0D90C: FStAdFunc var_A8
  loc_B0D90F: FLdPr var_A8
  loc_B0D912: LateIdSt
  loc_B0D917: FFree1Ad var_A8
  loc_B0D91A: LitI2_Byte 0
  loc_B0D91C: FLdPr Me
  loc_B0D91F: VCallAd Control_ID_ProgresoLbl
  loc_B0D922: FStAdFunc var_A8
  loc_B0D925: FLdPr var_A8
  loc_B0D928: Me.Visible = from_stack_1b
  loc_B0D92D: FFree1Ad var_A8
  loc_B0D930: ILdRf Me
  loc_B0D933: CastAd
  loc_B0D936: FStAdFunc var_A8
  loc_B0D939: FLdRfVar var_A8
  loc_B0D93C: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B0D941: FFree1Ad var_A8
  loc_B0D944: ExitProcHresult
  loc_B0D945: DestructRecord
End Sub

Private Sub CodiInmuDesdeMsk_UnknownEvent_0 '9C6BC0
  'Data Table: 4801EC
  loc_9C6BAC: FLdPr Me
  loc_9C6BAF: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_9C6BB2: CVarAd
  loc_9C6BB6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6BBB: FFree1Var var_94 = ""
  loc_9C6BBE: ExitProcHresult
End Sub

Private Function CodiInmuDesdeMsk_UnknownEvent_8(arg_C) 'A88B40
  'Data Table: 4801EC
  loc_A88AB0: FLdPr Me
  loc_A88AB3: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_A88AB6: FStAdFunc var_88
  loc_A88AB9: FLdPr var_88
  loc_A88ABC: LateIdLdVar var_98 DispID_22 0
  loc_A88AC3: CStrVarTmp
  loc_A88AC4: FStStrNoPop var_9C
  loc_A88AC7: LitStr vbNullString
  loc_A88ACA: NeStr
  loc_A88ACC: FFree1Str var_9C
  loc_A88ACF: FFree1Ad var_88
  loc_A88AD2: FFree1Var var_98 = ""
  loc_A88AD5: BranchF loc_A88B3E
  loc_A88AD8: FLdPr Me
  loc_A88ADB: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_A88ADE: FStAdFunc var_88
  loc_A88AE1: FLdPr var_88
  loc_A88AE4: LateIdLdVar var_98 DispID_22 0
  loc_A88AEB: PopAd
  loc_A88AED: LitI2_Byte 0
  loc_A88AEF: LitI2_Byte 0
  loc_A88AF1: FLdRfVar var_98
  loc_A88AF4: CStrVarTmp
  loc_A88AF5: FStStrNoPop var_9C
  loc_A88AF8: LitStr "Cuenta"
  loc_A88AFB: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A88B00: FStStrNoPop var_A0
  loc_A88B03: FLdPr Me
  loc_A88B06: MemStStrCopy
  loc_A88B0A: FFreeStr var_9C = ""
  loc_A88B11: FFree1Ad var_88
  loc_A88B14: FFree1Var var_98 = ""
  loc_A88B17: FLdPr Me
  loc_A88B1A: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_A88B1D: FStAdFuncNoPop
  loc_A88B20: CastAd
  loc_A88B23: FStAdFunc var_A4
  loc_A88B26: FLdRfVar var_A4
  loc_A88B29: FLdPr Me
  loc_A88B2C: MemLdStr global_112
  loc_A88B2F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A88B34: IStI2 arg_C
  loc_A88B37: FFreeAd var_88 = ""
  loc_A88B3E: ExitProcHresult
End Function

Private Sub cmdNueva_Click() 'A861C4
  'Data Table: 4801EC
  loc_A86128: LitI2_Byte 0
  loc_A8612A: FLdPr Me
  loc_A8612D: MemStI2 bGenerado
  loc_A86130: LitI2_Byte 0
  loc_A86132: ILdRf Me
  loc_A86135: CastAd
  loc_A86138: FStAdFunc var_88
  loc_A8613B: FLdRfVar var_88
  loc_A8613E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A86143: FFree1Ad var_88
  loc_A86146: LitVarStr var_98, vbNullString
  loc_A8614B: PopAdLdVar
  loc_A8614C: FLdPr Me
  loc_A8614F: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_A86152: FStAdFunc var_88
  loc_A86155: FLdPr var_88
  loc_A86158: LateIdSt
  loc_A8615D: FFree1Ad var_88
  loc_A86160: LitVarStr var_98, vbNullString
  loc_A86165: PopAdLdVar
  loc_A86166: FLdPr Me
  loc_A86169: VCallAd Control_ID_CodiInmuHastaMsk
  loc_A8616C: FStAdFunc var_88
  loc_A8616F: FLdPr var_88
  loc_A86172: LateIdSt
  loc_A86177: FFree1Ad var_88
  loc_A8617A: LitStr vbNullString
  loc_A8617D: FLdPr Me
  loc_A86180: VCallAd Control_ID_DetaPersLbl
  loc_A86183: FStAdFunc var_88
  loc_A86186: FLdPr var_88
  loc_A86189: Me.Caption = from_stack_1
  loc_A8618E: FFree1Ad var_88
  loc_A86191: LitI2_Byte 0
  loc_A86193: FLdPr Me
  loc_A86196: VCallAd Control_ID_NotificadasChk
  loc_A86199: FStAdFunc var_88
  loc_A8619C: FLdPr var_88
  loc_A8619F: Me.Value = from_stack_1
  loc_A861A4: FFree1Ad var_88
  loc_A861A7: Call HabilitarCriterio()
  loc_A861AC: ILdRf Me
  loc_A861AF: CastAd
  loc_A861B2: FStAdFunc var_88
  loc_A861B5: FLdRfVar var_88
  loc_A861B8: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A861BD: FFree1Ad var_88
  loc_A861C0: ExitProcHresult
  loc_A861C1: ThisVCallI2
End Sub

Private Sub CodiInmuHastaMsk_UnknownEvent_0 '9C2018
  'Data Table: 4801EC
  loc_9C2004: FLdPr Me
  loc_9C2007: VCallAd Control_ID_CodiInmuHastaMsk
  loc_9C200A: CVarAd
  loc_9C200E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2013: FFree1Var var_94 = ""
  loc_9C2016: ExitProcHresult
End Sub

Private Function CodiInmuHastaMsk_UnknownEvent_8(arg_C) 'AFC888
  'Data Table: 4801EC
  loc_AFC6B0: FLdPr Me
  loc_AFC6B3: VCallAd Control_ID_CodiInmuHastaMsk
  loc_AFC6B6: FStAdFunc var_88
  loc_AFC6B9: FLdPr var_88
  loc_AFC6BC: LateIdLdVar var_98 DispID_22 0
  loc_AFC6C3: CStrVarTmp
  loc_AFC6C4: FStStrNoPop var_9C
  loc_AFC6C7: LitStr vbNullString
  loc_AFC6CA: NeStr
  loc_AFC6CC: FFree1Str var_9C
  loc_AFC6CF: FFree1Ad var_88
  loc_AFC6D2: FFree1Var var_98 = ""
  loc_AFC6D5: BranchF loc_AFC884
  loc_AFC6D8: FLdPr Me
  loc_AFC6DB: VCallAd Control_ID_CodiInmuHastaMsk
  loc_AFC6DE: FStAdFunc var_88
  loc_AFC6E1: FLdPr var_88
  loc_AFC6E4: LateIdLdVar var_98 DispID_22 0
  loc_AFC6EB: PopAd
  loc_AFC6ED: LitI2_Byte 0
  loc_AFC6EF: LitI2_Byte 0
  loc_AFC6F1: FLdRfVar var_98
  loc_AFC6F4: CStrVarTmp
  loc_AFC6F5: FStStrNoPop var_9C
  loc_AFC6F8: LitStr "Cuenta"
  loc_AFC6FB: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AFC700: FStStrNoPop var_A0
  loc_AFC703: FLdPr Me
  loc_AFC706: MemStStrCopy
  loc_AFC70A: FFreeStr var_9C = ""
  loc_AFC711: FFree1Ad var_88
  loc_AFC714: FFree1Var var_98 = ""
  loc_AFC717: FLdPr Me
  loc_AFC71A: VCallAd Control_ID_CodiInmuHastaMsk
  loc_AFC71D: FStAdFuncNoPop
  loc_AFC720: CastAd
  loc_AFC723: FStAdFunc var_A4
  loc_AFC726: FLdRfVar var_A4
  loc_AFC729: FLdPr Me
  loc_AFC72C: MemLdStr global_112
  loc_AFC72F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AFC734: IStI2 arg_C
  loc_AFC737: FFreeAd var_88 = ""
  loc_AFC73E: ILdI2 arg_C
  loc_AFC741: NotI4
  loc_AFC742: FLdPr Me
  loc_AFC745: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_AFC748: FStAdFunc var_88
  loc_AFC74B: FLdPr var_88
  loc_AFC74E: LateIdLdVar var_98 DispID_22 0
  loc_AFC755: CStrVarTmp
  loc_AFC756: FStStrNoPop var_9C
  loc_AFC759: FLdPr Me
  loc_AFC75C: VCallAd Control_ID_CodiInmuHastaMsk
  loc_AFC75F: FStAdFunc var_A4
  loc_AFC762: FLdPr var_A4
  loc_AFC765: LateIdLdVar var_B4 DispID_22 0
  loc_AFC76C: CStrVarTmp
  loc_AFC76D: FStStrNoPop var_A0
  loc_AFC770: EqStr
  loc_AFC772: AndI4
  loc_AFC773: FFreeStr var_9C = ""
  loc_AFC77A: FFreeAd var_88 = ""
  loc_AFC781: FFreeVar var_98 = ""
  loc_AFC788: BranchF loc_AFC86D
  loc_AFC78B: FLdPr Me
  loc_AFC78E: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_AFC791: FStAdFunc var_88
  loc_AFC794: FLdPr var_88
  loc_AFC797: LateIdLdVar var_98 DispID_22 0
  loc_AFC79E: PopAd
  loc_AFC7A0: FLdPr Me
  loc_AFC7A3: MemLdRfVar from_stack_1.global_88
  loc_AFC7A6: NewIfNullRf
  loc_AFC7AA: LitStr "Titular"
  loc_AFC7AD: FLdRfVar var_98
  loc_AFC7B0: CStrVarTmp
  loc_AFC7B1: FStStrNoPop var_A0
  loc_AFC7B4: LitI2_Byte 1
  loc_AFC7B6: CStrUI1
  loc_AFC7B8: FStStrNoPop var_9C
  loc_AFC7BB: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_AFC7C0: FFreeStr var_9C = ""
  loc_AFC7C7: FFree1Ad var_88
  loc_AFC7CA: FFree1Var var_98 = ""
  loc_AFC7CD: BranchF loc_AFC7FE
  loc_AFC7D0: FLdRfVar var_9C
  loc_AFC7D3: FLdPr Me
  loc_AFC7D6: MemLdRfVar from_stack_1.global_88
  loc_AFC7D9: NewIfNullPr tblPersona
  loc_AFC7DC: from_stack_1v = tblPersona.DetaPersGet()
  loc_AFC7E1: ILdRf var_9C
  loc_AFC7E4: FLdPr Me
  loc_AFC7E7: VCallAd Control_ID_DetaPersLbl
  loc_AFC7EA: FStAdFunc var_88
  loc_AFC7ED: FLdPr var_88
  loc_AFC7F0: Me.Caption = from_stack_1
  loc_AFC7F5: FFree1Str var_9C
  loc_AFC7F8: FFree1Ad var_88
  loc_AFC7FB: Branch loc_AFC86A
  loc_AFC7FE: FLdRfVar var_9C
  loc_AFC801: FLdPr Me
  loc_AFC804: MemLdRfVar from_stack_1.global_88
  loc_AFC807: NewIfNullPr tblPersona
  loc_AFC80A: from_stack_1v = tblPersona.MsgErrorGet()
  loc_AFC80F: ILdRf var_9C
  loc_AFC812: FLdPr Me
  loc_AFC815: MemStStrCopy
  loc_AFC819: FFree1Str var_9C
  loc_AFC81C: FLdPr Me
  loc_AFC81F: MemLdStr global_120
  loc_AFC822: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFC827: LitStr vbNullString
  loc_AFC82A: FLdPr Me
  loc_AFC82D: VCallAd Control_ID_DetaPersLbl
  loc_AFC830: FStAdFunc var_88
  loc_AFC833: FLdPr var_88
  loc_AFC836: Me.Caption = from_stack_1
  loc_AFC83B: FFree1Ad var_88
  loc_AFC83E: FLdPr Me
  loc_AFC841: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_AFC844: FStAdFunc var_88
  loc_AFC847: FLdPr var_88
  loc_AFC84A: LateIdLdVar var_98 DispID_22 0
  loc_AFC851: CStrVarTmp
  loc_AFC852: CVarStr var_B4
  loc_AFC855: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AFC85A: FFree1Ad var_88
  loc_AFC85D: FFreeVar var_98 = ""
  loc_AFC864: LitI2_Byte &HFF
  loc_AFC866: IStI2 arg_C
  loc_AFC869: ExitProcHresult
  loc_AFC86A: Branch loc_AFC884
  loc_AFC86D: LitStr vbNullString
  loc_AFC870: FLdPr Me
  loc_AFC873: VCallAd Control_ID_DetaPersLbl
  loc_AFC876: FStAdFunc var_88
  loc_AFC879: FLdPr var_88
  loc_AFC87C: Me.Caption = from_stack_1
  loc_AFC881: FFree1Ad var_88
  loc_AFC884: ExitProcHresult
End Function

Private Sub Form_Load() 'AD03E4
  'Data Table: 4801EC
  loc_AD02C0: ILdRf Me
  loc_AD02C3: CastAd
  loc_AD02C6: FStAdFunc var_88
  loc_AD02C9: FLdRfVar var_88
  loc_AD02CC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AD02D1: FFree1Ad var_88
  loc_AD02D4: FLdPr Me
  loc_AD02D7: MemLdRfVar from_stack_1.global_84
  loc_AD02DA: NewIfNullAd
  loc_AD02DD: FStAd var_8C 
  loc_AD02E1: LitStr "SELECT * FROM obrareem WHERE obrareem.OrdeObre = '"
  loc_AD02E4: FLdPr Me
  loc_AD02E7: MemLdStr OrdeObre
  loc_AD02EA: ConcatStr
  loc_AD02EB: FStStrNoPop var_90
  loc_AD02EE: LitStr "'"
  loc_AD02F1: ConcatStr
  loc_AD02F2: FStStrNoPop var_94
  loc_AD02F5: FLdPr var_8C
  loc_AD02F8: Call clsobrareem.RedefineRS(from_stack_1v)
  loc_AD02FD: FFreeStr var_90 = ""
  loc_AD0304: FLdRfVar var_98
  loc_AD0307: FLdPr var_8C
  loc_AD030A: from_stack_1 = clsobrareem.RecordCount
  loc_AD030F: ILdRf var_98
  loc_AD0312: LitI4 1
  loc_AD0317: LtI4
  loc_AD0318: BranchF loc_AD0350
  loc_AD031B: LitStr "La ordenanza "
  loc_AD031E: FLdPr Me
  loc_AD0321: MemLdStr OrdeObre
  loc_AD0324: ConcatStr
  loc_AD0325: FStStrNoPop var_90
  loc_AD0328: LitStr " no existe."
  loc_AD032B: ConcatStr
  loc_AD032C: FStStrNoPop var_94
  loc_AD032F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD0334: FFreeStr var_90 = ""
  loc_AD033B: ILdRf Me
  loc_AD033E: FStAdNoPop
  loc_AD0342: ImpAdLdRf MemVar_D9C5D8
  loc_AD0345: NewIfNullPr Global
  loc_AD0348: Global.Unload from_stack_1
  loc_AD034D: FFree1Ad var_88
  loc_AD0350: FLdRfVar var_90
  loc_AD0353: FLdPr var_8C
  loc_AD0356: from_stack_1 = clsobrareem.DetaObre
  loc_AD035B: ILdRf var_90
  loc_AD035E: FLdPr Me
  loc_AD0361: MemStStrCopy
  loc_AD0365: FFree1Str var_90
  loc_AD0368: FLdRfVar var_90
  loc_AD036B: FLdPr Me
  loc_AD036E:  = Me.Caption
  loc_AD0373: ILdRf var_90
  loc_AD0376: FLdPr Me
  loc_AD0379: MemLdStr global_104
  loc_AD037C: ConcatStr
  loc_AD037D: FStStrNoPop var_94
  loc_AD0380: FLdPr Me
  loc_AD0383: Me.Caption = from_stack_1
  loc_AD0388: FFreeStr var_90 = ""
  loc_AD038F: FLdRfVar var_90
  loc_AD0392: FLdPr var_8C
  loc_AD0395: from_stack_1 = clsobrareem.NotaObre
  loc_AD039A: LitI4 0
  loc_AD039F: LitI4 -1
  loc_AD03A4: LitVarStr var_A8, vbCrLf
  loc_AD03A9: FStVarCopyObj var_B8
  loc_AD03AC: FLdRfVar var_B8
  loc_AD03AF: ILdRf var_90
  loc_AD03B2: FLdRfVar var_C8
  loc_AD03B5: ImpAdCallFPR4  = Split(, , , )
  loc_AD03BA: FLdRfVar var_C8
  loc_AD03BD: StAryVar
  loc_AD03C1: PopTmpLdAdStr var_98
  loc_AD03C4: FLdPr Me
  loc_AD03C7: MemLdRfVar from_stack_1.global_108
  loc_AD03CA: StAryCopy
  loc_AD03CC: FFree1Str var_90
  loc_AD03CF: FFreeVar var_B8 = ""
  loc_AD03D6: LitNothing
  loc_AD03D8: FStAd var_8C 
  loc_AD03DC: Call cmdNueva_Click()
  loc_AD03E1: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D3C78
  'Data Table: 4801EC
  loc_9D3C60: FLdPr Me
  loc_9D3C63: VCallAd Control_ID_wbbReporte
  loc_9D3C66: FStAdFunc var_88
  loc_9D3C69: FLdRfVar var_88
  loc_9D3C6C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D3C71: FFree1Ad var_88
  loc_9D3C74: ExitProcHresult
  loc_9D3C75: DOC
End Sub

Private Sub cmdSalir_Click() '9FFF20
  'Data Table: 4801EC
  loc_9FFEF0: LitVarStr var_94, "Cerrando..."
  loc_9FFEF5: PopAdLdVar
  loc_9FFEF6: FLdPr Me
  loc_9FFEF9: VCallAd Control_ID_statusBar
  loc_9FFEFC: FStAdFunc var_A8
  loc_9FFEFF: FLdPr var_A8
  loc_9FFF02: LateIdSt
  loc_9FFF07: FFree1Ad var_A8
  loc_9FFF0A: ILdRf Me
  loc_9FFF0D: FStAdNoPop
  loc_9FFF11: ImpAdLdRf MemVar_D9C5D8
  loc_9FFF14: NewIfNullPr Global
  loc_9FFF17: Global.Unload from_stack_1
  loc_9FFF1C: FFree1Ad var_A8
  loc_9FFF1F: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A19180
  'Data Table: 4801EC
  loc_A19148: FLdPr Me
  loc_A1914B: VCallAd Control_ID_statusBar
  loc_A1914E: FStAdFunc var_88
  loc_A19151: FLdPr var_88
  loc_A19154: LateIdLdVar var_98 DispID_1 0
  loc_A1915B: CStrVarTmp
  loc_A1915C: CVarStr var_A8
  loc_A1915F: PopAdLdVar
  loc_A19160: FLdPr Me
  loc_A19163: VCallAd Control_ID_statusBar
  loc_A19166: FStAdFunc var_BC
  loc_A19169: FLdPr var_BC
  loc_A1916C: LateIdSt
  loc_A19171: FFreeAd var_88 = ""
  loc_A19178: FFreeVar var_98 = ""
  loc_A1917F: ExitProcHresult
End Sub

Public Function OrdeObreGet() '480F04
  OrdeObreGet = OrdeObre
End Function

Public Sub OrdeObrePut(Value) '480F13
  OrdeObre = Value
End Sub

Public Function bGeneradoGet() '480F22
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '480F31
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5D71C
  'Data Table: 4801EC
  loc_A5D6C8: LitI4 0
  loc_A5D6CD: LitI4 2
  loc_A5D6D2: FLdRfVar var_88
  loc_A5D6D5: Redim
  loc_A5D6DF: FLdPr Me
  loc_A5D6E2: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_A5D6E5: CVarAd
  loc_A5D6E9: ParmAry1St
  loc_A5D6EF: FLdPr Me
  loc_A5D6F2: VCallAd Control_ID_CodiInmuHastaMsk
  loc_A5D6F5: CVarAd
  loc_A5D6F9: ParmAry1St
  loc_A5D6FF: FLdPr Me
  loc_A5D702: VCallAd Control_ID_NotificadasChk
  loc_A5D705: CVarAd
  loc_A5D709: ParmAry1St
  loc_A5D70F: FLdRfVar var_88
  loc_A5D712: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5D717: FLdRfVar var_88
  loc_A5D71A: Erase
  loc_A5D71B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BADAF4
  'Data Table: 4801EC
  loc_BAD4F0: FLdPr Me
  loc_BAD4F3: MemLdI2 bGenerado
  loc_BAD4F6: BranchF loc_BAD4FA
  loc_BAD4F9: ExitProcHresult
  loc_BAD4FA: LitVarStr var_A0, "Generando reporte..."
  loc_BAD4FF: PopAdLdVar
  loc_BAD500: FLdPr Me
  loc_BAD503: VCallAd Control_ID_statusBar
  loc_BAD506: FStAdFunc var_B4
  loc_BAD509: FLdPr var_B4
  loc_BAD50C: LateIdSt
  loc_BAD511: FFree1Ad var_B4
  loc_BAD514: LitI4 &HB
  loc_BAD519: CI2I4
  loc_BAD51A: FLdPr Me
  loc_BAD51D: Me.MousePointer = from_stack_1
  loc_BAD522: FLdPr Me
  loc_BAD525: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_BAD528: FStAdFunc var_B4
  loc_BAD52B: FLdPr var_B4
  loc_BAD52E: LateIdLdVar var_C4 DispID_22 0
  loc_BAD535: PopAd
  loc_BAD537: FLdPr Me
  loc_BAD53A: VCallAd Control_ID_CodiInmuDesdeMsk
  loc_BAD53D: FStAdFunc var_CC
  loc_BAD540: FLdPr var_CC
  loc_BAD543: LateIdLdVar var_DC DispID_22 0
  loc_BAD54A: PopAd
  loc_BAD54C: LitVarStr var_B0, vbNullString
  loc_BAD551: FStVarCopyObj var_100
  loc_BAD554: FLdRfVar var_100
  loc_BAD557: LitStr " AND obreinmu.CodiInmu >= "
  loc_BAD55A: FLdRfVar var_DC
  loc_BAD55D: CStrVarTmp
  loc_BAD55E: FStStrNoPop var_E0
  loc_BAD561: ConcatStr
  loc_BAD562: CVarStr var_F0
  loc_BAD565: FLdRfVar var_C4
  loc_BAD568: CStrVarTmp
  loc_BAD569: FStStrNoPop var_C8
  loc_BAD56C: LitStr vbNullString
  loc_BAD56F: NeStr
  loc_BAD571: CVarBoolI2 var_A0
  loc_BAD575: FLdRfVar var_110
  loc_BAD578: ImpAdCallFPR4  = IIf(, , )
  loc_BAD57D: FLdRfVar var_110
  loc_BAD580: CStrVarTmp
  loc_BAD581: FStStr var_88
  loc_BAD584: FFreeStr var_C8 = ""
  loc_BAD58B: FFreeAd var_B4 = ""
  loc_BAD592: FFreeVar var_C4 = "": var_DC = "": var_A0 = "": var_F0 = "": var_100 = ""
  loc_BAD5A1: FLdPr Me
  loc_BAD5A4: VCallAd Control_ID_CodiInmuHastaMsk
  loc_BAD5A7: FStAdFunc var_B4
  loc_BAD5AA: FLdPr var_B4
  loc_BAD5AD: LateIdLdVar var_C4 DispID_22 0
  loc_BAD5B4: PopAd
  loc_BAD5B6: FLdPr Me
  loc_BAD5B9: VCallAd Control_ID_CodiInmuHastaMsk
  loc_BAD5BC: FStAdFunc var_CC
  loc_BAD5BF: FLdPr var_CC
  loc_BAD5C2: LateIdLdVar var_DC DispID_22 0
  loc_BAD5C9: PopAd
  loc_BAD5CB: LitVarStr var_B0, vbNullString
  loc_BAD5D0: FStVarCopyObj var_100
  loc_BAD5D3: FLdRfVar var_100
  loc_BAD5D6: LitStr " AND obreinmu.CodiInmu <= "
  loc_BAD5D9: FLdRfVar var_DC
  loc_BAD5DC: CStrVarTmp
  loc_BAD5DD: FStStrNoPop var_E0
  loc_BAD5E0: ConcatStr
  loc_BAD5E1: CVarStr var_F0
  loc_BAD5E4: FLdRfVar var_C4
  loc_BAD5E7: CStrVarTmp
  loc_BAD5E8: FStStrNoPop var_C8
  loc_BAD5EB: LitStr vbNullString
  loc_BAD5EE: NeStr
  loc_BAD5F0: CVarBoolI2 var_A0
  loc_BAD5F4: FLdRfVar var_110
  loc_BAD5F7: ImpAdCallFPR4  = IIf(, , )
  loc_BAD5FC: FLdRfVar var_110
  loc_BAD5FF: CStrVarTmp
  loc_BAD600: FStStr var_8C
  loc_BAD603: FFreeStr var_C8 = ""
  loc_BAD60A: FFreeAd var_B4 = ""
  loc_BAD611: FFreeVar var_C4 = "": var_DC = "": var_A0 = "": var_F0 = "": var_100 = ""
  loc_BAD620: FLdRfVar var_112
  loc_BAD623: FLdPr Me
  loc_BAD626: VCallAd Control_ID_NotificadasChk
  loc_BAD629: FStAdFunc var_B4
  loc_BAD62C: FLdPr var_B4
  loc_BAD62F:  = Me.Value
  loc_BAD634: LitVarStr var_124, vbNullString
  loc_BAD639: FStVarCopyObj var_DC
  loc_BAD63C: FLdRfVar var_DC
  loc_BAD63F: LitVarStr var_B0, " AND obreinmu.FenoObin IS NULL"
  loc_BAD644: FStVarCopyObj var_C4
  loc_BAD647: FLdRfVar var_C4
  loc_BAD64A: FLdI2 var_112
  loc_BAD64D: LitI2_Byte 1
  loc_BAD64F: EqI2
  loc_BAD650: CVarBoolI2 var_A0
  loc_BAD654: FLdRfVar var_F0
  loc_BAD657: ImpAdCallFPR4  = IIf(, , )
  loc_BAD65C: FLdRfVar var_F0
  loc_BAD65F: CStrVarTmp
  loc_BAD660: FStStr var_90
  loc_BAD663: FFree1Ad var_B4
  loc_BAD666: FFreeVar var_A0 = "": var_C4 = "": var_DC = ""
  loc_BAD671: FLdPr Me
  loc_BAD674: MemLdRfVar from_stack_1.global_80
  loc_BAD677: NewIfNullAd
  loc_BAD67A: FStAd var_128 
  loc_BAD67E: LitStr "SELECT DetaPers, DetaCall, NucaInmu, DetaBarr, MansInmu, CasaInmu, DetaLoca, CodiPost"
  loc_BAD681: LitStr " , inmueble.CodiInmu, NomeInmu, DptoInmu, DistInmu, SeccInmu, ManzInmu, ParcInmu, SubpInmu, DigiInmu"
  loc_BAD684: ConcatStr
  loc_BAD685: FStStrNoPop var_C8
  loc_BAD688: LitStr " , SupeInmu, DetaZoin"
  loc_BAD68B: ConcatStr
  loc_BAD68C: FStStrNoPop var_E0
  loc_BAD68F: LitStr " FROM obreinmu"
  loc_BAD692: ConcatStr
  loc_BAD693: FStStrNoPop var_12C
  loc_BAD696: LitStr " LEFT JOIN obrareem ON obrareem.OrdeObre = obreinmu.OrdeObre"
  loc_BAD699: ConcatStr
  loc_BAD69A: FStStrNoPop var_130
  loc_BAD69D: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu"
  loc_BAD6A0: ConcatStr
  loc_BAD6A1: FStStrNoPop var_134
  loc_BAD6A4: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = 1 AND relacion.CuenCtct = inmueble.CodiInmu AND relacion.TipoRela = 'Titular'"
  loc_BAD6A7: ConcatStr
  loc_BAD6A8: FStStrNoPop var_138
  loc_BAD6AB: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BAD6AE: ConcatStr
  loc_BAD6AF: FStStrNoPop var_13C
  loc_BAD6B2: LitStr " LEFT JOIN infogov.calle ON infogov.calle.CodiCall = inmueble.CodiCall"
  loc_BAD6B5: ConcatStr
  loc_BAD6B6: FStStrNoPop var_140
  loc_BAD6B9: LitStr " LEFT JOIN infogov.barrio ON infogov.barrio.CodiBarr = inmueble.CodiBarr"
  loc_BAD6BC: ConcatStr
  loc_BAD6BD: FStStrNoPop var_144
  loc_BAD6C0: LitStr " LEFT JOIN infogov.localidad ON infogov.localidad.CodiLoca = inmueble.CodiLoca"
  loc_BAD6C3: ConcatStr
  loc_BAD6C4: FStStrNoPop var_148
  loc_BAD6C7: LitStr " LEFT JOIN zonainmu ON zonainmu.CodiZoin = inmueble.CodiZoin"
  loc_BAD6CA: ConcatStr
  loc_BAD6CB: FStStrNoPop var_14C
  loc_BAD6CE: LitStr " WHERE obreinmu.OrdeObre = '"
  loc_BAD6D1: ConcatStr
  loc_BAD6D2: FStStrNoPop var_150
  loc_BAD6D5: FLdPr Me
  loc_BAD6D8: MemLdStr OrdeObre
  loc_BAD6DB: ConcatStr
  loc_BAD6DC: FStStrNoPop var_154
  loc_BAD6DF: LitStr "'"
  loc_BAD6E2: ConcatStr
  loc_BAD6E3: FStStrNoPop var_158
  loc_BAD6E6: ILdRf var_88
  loc_BAD6E9: ConcatStr
  loc_BAD6EA: FStStrNoPop var_15C
  loc_BAD6ED: ILdRf var_8C
  loc_BAD6F0: ConcatStr
  loc_BAD6F1: FStStrNoPop var_160
  loc_BAD6F4: ILdRf var_90
  loc_BAD6F7: ConcatStr
  loc_BAD6F8: FStStrNoPop var_164
  loc_BAD6FB: LitStr " ORDER BY CodiInmu"
  loc_BAD6FE: ConcatStr
  loc_BAD6FF: FStStrNoPop var_168
  loc_BAD702: FLdPr var_128
  loc_BAD705: Call clsInmueble.RedefineRS(from_stack_1v)
  loc_BAD70A: FFreeStr var_C8 = "": var_E0 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_BAD731: FLdRfVar var_16C
  loc_BAD734: FLdPr var_128
  loc_BAD737: from_stack_1 = clsInmueble.RecordCount
  loc_BAD73C: ILdRf var_16C
  loc_BAD73F: LitI4 0
  loc_BAD744: EqI4
  loc_BAD745: BranchF loc_BAD753
  loc_BAD748: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BAD74B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BAD750: Branch loc_BADACA
  loc_BAD753: LitStr "Registros encontrados: "
  loc_BAD756: FLdRfVar var_16C
  loc_BAD759: FLdPr var_128
  loc_BAD75C: from_stack_1 = clsInmueble.RecordCount
  loc_BAD761: ILdRf var_16C
  loc_BAD764: CStrI4
  loc_BAD766: FStStrNoPop var_C8
  loc_BAD769: ConcatStr
  loc_BAD76A: FStStrNoPop var_E0
  loc_BAD76D: FLdPr Me
  loc_BAD770: VCallAd Control_ID_DetaPersLbl
  loc_BAD773: FStAdFunc var_B4
  loc_BAD776: FLdPr var_B4
  loc_BAD779: Me.Caption = from_stack_1
  loc_BAD77E: FFreeStr var_C8 = ""
  loc_BAD785: FFree1Ad var_B4
  loc_BAD788: LitI4 0
  loc_BAD78D: FLdRfVar var_16C
  loc_BAD790: FLdPr var_128
  loc_BAD793: from_stack_1 = clsInmueble.RecordCount
  loc_BAD798: ILdRf var_16C
  loc_BAD79B: FLdPr Me
  loc_BAD79E: MemLdRfVar from_stack_1.global_92
  loc_BAD7A1: Redim
  loc_BAD7AB: FLdPr var_128
  loc_BAD7AE: Call clsInmueble.MoveFirst()
  loc_BAD7B3: LitI4 1
  loc_BAD7B8: FLdPr Me
  loc_BAD7BB: MemLdRfVar from_stack_1.global_96
  loc_BAD7BE: FLdPr Me
  loc_BAD7C1: MemLdStr global_92
  loc_BAD7C4: LitI2_Byte 1
  loc_BAD7C6: FnUBound
  loc_BAD7C8: ForI4 var_174
  loc_BAD7CE: FLdRfVar var_C4
  loc_BAD7D1: FLdPr var_128
  loc_BAD7D4: from_stack_1 = clsInmueble.DetaPers
  loc_BAD7D9: LitI2_Byte 0
  loc_BAD7DB: LitVar_Missing var_DC
  loc_BAD7DE: LitI2_Byte 0
  loc_BAD7E0: FLdVar var_C4
  loc_BAD7E4: FLdPr Me
  loc_BAD7E7: MemLdStr global_96
  loc_BAD7EA: FLdPr Me
  loc_BAD7ED: MemLdStr global_92
  loc_BAD7F0: AryLock
  loc_BAD7F3: Ary1LdPr
  loc_BAD7F4: MemLdRfVar from_stack_1.global_0
  loc_BAD7F7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAD7FC: AryUnlock
  loc_BAD7FF: FFreeVar var_C4 = ""
  loc_BAD806: FLdRfVar var_C4
  loc_BAD809: FLdPr var_128
  loc_BAD80C: from_stack_1 = clsInmueble.DetaCall
  loc_BAD811: LitI2_Byte 0
  loc_BAD813: LitVar_Missing var_DC
  loc_BAD816: LitI2_Byte 0
  loc_BAD818: FLdVar var_C4
  loc_BAD81C: FLdPr Me
  loc_BAD81F: MemLdStr global_96
  loc_BAD822: FLdPr Me
  loc_BAD825: MemLdStr global_92
  loc_BAD828: AryLock
  loc_BAD82B: Ary1LdPr
  loc_BAD82C: MemLdRfVar from_stack_1.global_4
  loc_BAD82F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAD834: AryUnlock
  loc_BAD837: FFreeVar var_C4 = ""
  loc_BAD83E: FLdRfVar var_C8
  loc_BAD841: FLdPr var_128
  loc_BAD844: from_stack_1 = clsInmueble.NucaInmu
  loc_BAD849: LitI2_Byte 0
  loc_BAD84B: LitVar_Missing var_DC
  loc_BAD84E: LitI2_Byte 0
  loc_BAD850: FLdZeroAd var_C8
  loc_BAD853: CVarStr var_C4
  loc_BAD856: PopAdLdVar
  loc_BAD857: FLdPr Me
  loc_BAD85A: MemLdStr global_96
  loc_BAD85D: FLdPr Me
  loc_BAD860: MemLdStr global_92
  loc_BAD863: AryLock
  loc_BAD866: Ary1LdPr
  loc_BAD867: MemLdRfVar from_stack_1.global_8
  loc_BAD86A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAD86F: AryUnlock
  loc_BAD872: FFreeVar var_C4 = ""
  loc_BAD879: FLdRfVar var_C4
  loc_BAD87C: FLdPr var_128
  loc_BAD87F: from_stack_1 = clsInmueble.DetaBarr
  loc_BAD884: LitI2_Byte 0
  loc_BAD886: LitVar_Missing var_DC
  loc_BAD889: LitI2_Byte 0
  loc_BAD88B: FLdVar var_C4
  loc_BAD88F: FLdPr Me
  loc_BAD892: MemLdStr global_96
  loc_BAD895: FLdPr Me
  loc_BAD898: MemLdStr global_92
  loc_BAD89B: AryLock
  loc_BAD89E: Ary1LdPr
  loc_BAD89F: MemLdRfVar from_stack_1.global_12
  loc_BAD8A2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAD8A7: AryUnlock
  loc_BAD8AA: FFreeVar var_C4 = ""
  loc_BAD8B1: FLdRfVar var_C8
  loc_BAD8B4: FLdPr var_128
  loc_BAD8B7: from_stack_1 = clsInmueble.MansInmu
  loc_BAD8BC: LitI2_Byte 0
  loc_BAD8BE: LitVar_Missing var_DC
  loc_BAD8C1: LitI2_Byte 0
  loc_BAD8C3: FLdZeroAd var_C8
  loc_BAD8C6: CVarStr var_C4
  loc_BAD8C9: PopAdLdVar
  loc_BAD8CA: FLdPr Me
  loc_BAD8CD: MemLdStr global_96
  loc_BAD8D0: FLdPr Me
  loc_BAD8D3: MemLdStr global_92
  loc_BAD8D6: AryLock
  loc_BAD8D9: Ary1LdPr
  loc_BAD8DA: MemLdRfVar from_stack_1.global_16
  loc_BAD8DD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAD8E2: AryUnlock
  loc_BAD8E5: FFreeVar var_C4 = ""
  loc_BAD8EC: FLdRfVar var_C8
  loc_BAD8EF: FLdPr var_128
  loc_BAD8F2: from_stack_1 = clsInmueble.CasaInmu
  loc_BAD8F7: LitI2_Byte 0
  loc_BAD8F9: LitVar_Missing var_DC
  loc_BAD8FC: LitI2_Byte 0
  loc_BAD8FE: FLdZeroAd var_C8
  loc_BAD901: CVarStr var_C4
  loc_BAD904: PopAdLdVar
  loc_BAD905: FLdPr Me
  loc_BAD908: MemLdStr global_96
  loc_BAD90B: FLdPr Me
  loc_BAD90E: MemLdStr global_92
  loc_BAD911: AryLock
  loc_BAD914: Ary1LdPr
  loc_BAD915: MemLdRfVar from_stack_1.global_20
  loc_BAD918: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAD91D: AryUnlock
  loc_BAD920: FFreeVar var_C4 = ""
  loc_BAD927: FLdRfVar var_C4
  loc_BAD92A: FLdPr var_128
  loc_BAD92D: from_stack_1 = clsInmueble.DetaLoca
  loc_BAD932: LitI2_Byte 0
  loc_BAD934: LitVar_Missing var_DC
  loc_BAD937: LitI2_Byte 0
  loc_BAD939: FLdVar var_C4
  loc_BAD93D: FLdPr Me
  loc_BAD940: MemLdStr global_96
  loc_BAD943: FLdPr Me
  loc_BAD946: MemLdStr global_92
  loc_BAD949: AryLock
  loc_BAD94C: Ary1LdPr
  loc_BAD94D: MemLdRfVar from_stack_1.global_24
  loc_BAD950: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAD955: AryUnlock
  loc_BAD958: FFreeVar var_C4 = ""
  loc_BAD95F: FLdRfVar var_C4
  loc_BAD962: FLdPr var_128
  loc_BAD965: from_stack_1 = clsInmueble.CodiPost
  loc_BAD96A: LitI2_Byte 0
  loc_BAD96C: LitVar_Missing var_DC
  loc_BAD96F: LitI2_Byte 0
  loc_BAD971: FLdVar var_C4
  loc_BAD975: FLdPr Me
  loc_BAD978: MemLdStr global_96
  loc_BAD97B: FLdPr Me
  loc_BAD97E: MemLdStr global_92
  loc_BAD981: AryLock
  loc_BAD984: Ary1LdPr
  loc_BAD985: MemLdRfVar from_stack_1.global_28
  loc_BAD988: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAD98D: AryUnlock
  loc_BAD990: FFreeVar var_C4 = ""
  loc_BAD997: FLdRfVar var_16C
  loc_BAD99A: FLdPr var_128
  loc_BAD99D: from_stack_1 = clsInmueble.CodiInmu
  loc_BAD9A2: LitI2_Byte 0
  loc_BAD9A4: LitVar_Missing var_C4
  loc_BAD9A7: LitI2_Byte 0
  loc_BAD9A9: ILdRf var_16C
  loc_BAD9AC: CVarI4
  loc_BAD9B0: PopAdLdVar
  loc_BAD9B1: FLdPr Me
  loc_BAD9B4: MemLdStr global_96
  loc_BAD9B7: FLdPr Me
  loc_BAD9BA: MemLdStr global_92
  loc_BAD9BD: AryLock
  loc_BAD9C0: Ary1LdPr
  loc_BAD9C1: MemLdRfVar from_stack_1.global_32
  loc_BAD9C4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BAD9C9: AryUnlock
  loc_BAD9CC: FFree1Var var_C4 = ""
  loc_BAD9CF: FLdRfVar var_C8
  loc_BAD9D2: FLdPr var_128
  loc_BAD9D5: from_stack_1 = clsInmueble.NomeInmu
  loc_BAD9DA: LitI4 1
  loc_BAD9DF: LitI4 1
  loc_BAD9E4: LitVarStr var_A0, "00-00-00-0000-000000-0000-0"
  loc_BAD9E9: FStVarCopyObj var_DC
  loc_BAD9EC: FLdRfVar var_DC
  loc_BAD9EF: FLdZeroAd var_C8
  loc_BAD9F2: CVarStr var_C4
  loc_BAD9F5: ImpAdCallI2 Format$(, )
  loc_BAD9FA: FStStr var_E0
  loc_BAD9FD: LitI2_Byte 0
  loc_BAD9FF: LitVar_Missing var_100
  loc_BADA02: LitI2_Byte 0
  loc_BADA04: FLdZeroAd var_E0
  loc_BADA07: CVarStr var_F0
  loc_BADA0A: PopAdLdVar
  loc_BADA0B: FLdPr Me
  loc_BADA0E: MemLdStr global_96
  loc_BADA11: FLdPr Me
  loc_BADA14: MemLdStr global_92
  loc_BADA17: AryLock
  loc_BADA1A: Ary1LdPr
  loc_BADA1B: MemLdRfVar from_stack_1.global_36
  loc_BADA1E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BADA23: AryUnlock
  loc_BADA26: FFree1Str var_E0
  loc_BADA29: FFreeVar var_C4 = "": var_DC = "": var_F0 = ""
  loc_BADA34: FLdRfVar var_180
  loc_BADA37: FLdPr var_128
  loc_BADA3A: from_stack_1 = clsInmueble.SupeInmu
  loc_BADA3F: LitI2_Byte 0
  loc_BADA41: LitVar_Missing var_C4
  loc_BADA44: LitI2_Byte 0
  loc_BADA46: FLdFPR8 var_180
  loc_BADA49: CVarR8
  loc_BADA4D: PopAdLdVar
  loc_BADA4E: FLdPr Me
  loc_BADA51: MemLdStr global_96
  loc_BADA54: FLdPr Me
  loc_BADA57: MemLdStr global_92
  loc_BADA5A: AryLock
  loc_BADA5D: Ary1LdPr
  loc_BADA5E: MemLdRfVar from_stack_1.global_40
  loc_BADA61: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BADA66: AryUnlock
  loc_BADA69: FFree1Var var_C4 = ""
  loc_BADA6C: FLdRfVar var_C4
  loc_BADA6F: FLdPr var_128
  loc_BADA72: from_stack_1 = clsInmueble.DetaZoin
  loc_BADA77: LitI2_Byte 0
  loc_BADA79: LitVar_Missing var_DC
  loc_BADA7C: LitI2_Byte 0
  loc_BADA7E: FLdVar var_C4
  loc_BADA82: FLdPr Me
  loc_BADA85: MemLdStr global_96
  loc_BADA88: FLdPr Me
  loc_BADA8B: MemLdStr global_92
  loc_BADA8E: AryLock
  loc_BADA91: Ary1LdPr
  loc_BADA92: MemLdRfVar from_stack_1.global_44
  loc_BADA95: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BADA9A: AryUnlock
  loc_BADA9D: FFreeVar var_C4 = ""
  loc_BADAA4: LitI2_Byte 1
  loc_BADAA6: PopTmpLdAd2 var_112
  loc_BADAA9: FLdPr var_128
  loc_BADAAC: Call clsInmueble.Move(from_stack_1v)
  loc_BADAB1: FLdPr Me
  loc_BADAB4: MemLdRfVar from_stack_1.global_96
  loc_BADAB7: NextI4 var_174, loc_BAD7CE
  loc_BADABC: LitNothing
  loc_BADABE: FStAd var_128 
  loc_BADAC2: LitI2_Byte &HFF
  loc_BADAC4: FLdPr Me
  loc_BADAC7: MemStI2 bGenerado
  loc_BADACA: LitI4 0
  loc_BADACF: CI2I4
  loc_BADAD0: FLdPr Me
  loc_BADAD3: Me.MousePointer = from_stack_1
  loc_BADAD8: LitVarStr var_A0, vbNullString
  loc_BADADD: PopAdLdVar
  loc_BADADE: FLdPr Me
  loc_BADAE1: VCallAd Control_ID_statusBar
  loc_BADAE4: FStAdFunc var_B4
  loc_BADAE7: FLdPr var_B4
  loc_BADAEA: LateIdSt
  loc_BADAEF: FFree1Ad var_B4
  loc_BADAF2: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A54090
  'Data Table: 4801EC
  loc_A54030: FLdRfVar var_88
  loc_A54033: LitI2_Byte 0
  loc_A54035: LitI2_Byte &HFF
  loc_A54037: ImpAdLdI4 MemVar_D93C84
  loc_A5403A: FLdPr Me
  loc_A5403D: MemLdRfVar from_stack_1.global_60
  loc_A54040: NewIfNullPr IFileSystem3
  loc_A54043: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A54048: ILdRf var_88
  loc_A5404B: FLdPr Me
  loc_A5404E: MemStVarAd
  loc_A54052: FFree1Ad var_88
  loc_A54055: LitI2_Byte 0
  loc_A54057: ImpAdStI2 MemVar_D93C8A
  loc_A5405A: Call Proc_119_17_B78408()
  loc_A5405F: Call Proc_119_18_AE7274()
  loc_A54064: Call Proc_119_19_B14A10()
  loc_A54069: Call Proc_119_20_AF0874()
  loc_A5406E: Call Proc_119_21_B60F84()
  loc_A54073: Call Proc_119_22_9F4AA8()
  loc_A54078: FLdPr Me
  loc_A5407B: MemLdRfVar from_stack_1.global_64
  loc_A5407E: LdPrVar
  loc_A54080: LateMemCall
  loc_A54086: LitStr vbNullString
  loc_A54089: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A5408E: ExitProcHresult
End Sub

Private Function Proc_119_17_B78408() 'B78408
  'Data Table: 4801EC
  loc_B77F1C: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_B77F21: PopAdLdVar
  loc_B77F22: FLdPr Me
  loc_B77F25: MemLdRfVar from_stack_1.global_64
  loc_B77F28: LdPrVar
  loc_B77F2A: LateMemCall
  loc_B77F30: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_B77F35: PopAdLdVar
  loc_B77F36: FLdPr Me
  loc_B77F39: MemLdRfVar from_stack_1.global_64
  loc_B77F3C: LdPrVar
  loc_B77F3E: LateMemCall
  loc_B77F44: LitVarStr var_94, "<head>"
  loc_B77F49: PopAdLdVar
  loc_B77F4A: FLdPr Me
  loc_B77F4D: MemLdRfVar from_stack_1.global_64
  loc_B77F50: LdPrVar
  loc_B77F52: LateMemCall
  loc_B77F58: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B77F5D: PopAdLdVar
  loc_B77F5E: FLdPr Me
  loc_B77F61: MemLdRfVar from_stack_1.global_64
  loc_B77F64: LdPrVar
  loc_B77F66: LateMemCall
  loc_B77F6C: LitStr "<title>"
  loc_B77F6F: FLdRfVar var_A8
  loc_B77F72: FLdPr Me
  loc_B77F75:  = Me.Caption
  loc_B77F7A: ILdRf var_A8
  loc_B77F7D: ConcatStr
  loc_B77F7E: FStStrNoPop var_AC
  loc_B77F81: LitStr "</title>"
  loc_B77F84: ConcatStr
  loc_B77F85: CVarStr var_BC
  loc_B77F88: PopAdLdVar
  loc_B77F89: FLdPr Me
  loc_B77F8C: MemLdRfVar from_stack_1.global_64
  loc_B77F8F: LdPrVar
  loc_B77F91: LateMemCall
  loc_B77F97: FFreeStr var_A8 = ""
  loc_B77F9E: FFree1Var var_BC = ""
  loc_B77FA1: LitVarStr var_94, "<style type=""text/css"">"
  loc_B77FA6: PopAdLdVar
  loc_B77FA7: FLdPr Me
  loc_B77FAA: MemLdRfVar from_stack_1.global_64
  loc_B77FAD: LdPrVar
  loc_B77FAF: LateMemCall
  loc_B77FB5: LitVarStr var_94, "<!--"
  loc_B77FBA: PopAdLdVar
  loc_B77FBB: FLdPr Me
  loc_B77FBE: MemLdRfVar from_stack_1.global_64
  loc_B77FC1: LdPrVar
  loc_B77FC3: LateMemCall
  loc_B77FC9: LitVarStr var_94, ".Encabezado {"
  loc_B77FCE: PopAdLdVar
  loc_B77FCF: FLdPr Me
  loc_B77FD2: MemLdRfVar from_stack_1.global_64
  loc_B77FD5: LdPrVar
  loc_B77FD7: LateMemCall
  loc_B77FDD: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B77FE2: PopAdLdVar
  loc_B77FE3: FLdPr Me
  loc_B77FE6: MemLdRfVar from_stack_1.global_64
  loc_B77FE9: LdPrVar
  loc_B77FEB: LateMemCall
  loc_B77FF1: LitVarStr var_94, " font-size: 10px;"
  loc_B77FF6: PopAdLdVar
  loc_B77FF7: FLdPr Me
  loc_B77FFA: MemLdRfVar from_stack_1.global_64
  loc_B77FFD: LdPrVar
  loc_B77FFF: LateMemCall
  loc_B78005: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_B7800A: PopAdLdVar
  loc_B7800B: FLdPr Me
  loc_B7800E: MemLdRfVar from_stack_1.global_64
  loc_B78011: LdPrVar
  loc_B78013: LateMemCall
  loc_B78019: LitVarStr var_94, "}"
  loc_B7801E: PopAdLdVar
  loc_B7801F: FLdPr Me
  loc_B78022: MemLdRfVar from_stack_1.global_64
  loc_B78025: LdPrVar
  loc_B78027: LateMemCall
  loc_B7802D: LitVarStr var_94, ".Normal {"
  loc_B78032: PopAdLdVar
  loc_B78033: FLdPr Me
  loc_B78036: MemLdRfVar from_stack_1.global_64
  loc_B78039: LdPrVar
  loc_B7803B: LateMemCall
  loc_B78041: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B78046: PopAdLdVar
  loc_B78047: FLdPr Me
  loc_B7804A: MemLdRfVar from_stack_1.global_64
  loc_B7804D: LdPrVar
  loc_B7804F: LateMemCall
  loc_B78055: LitVarStr var_94, " font-size: 11px;"
  loc_B7805A: PopAdLdVar
  loc_B7805B: FLdPr Me
  loc_B7805E: MemLdRfVar from_stack_1.global_64
  loc_B78061: LdPrVar
  loc_B78063: LateMemCall
  loc_B78069: LitVarStr var_94, " vertical-align: top;"
  loc_B7806E: PopAdLdVar
  loc_B7806F: FLdPr Me
  loc_B78072: MemLdRfVar from_stack_1.global_64
  loc_B78075: LdPrVar
  loc_B78077: LateMemCall
  loc_B7807D: LitVarStr var_94, "}"
  loc_B78082: PopAdLdVar
  loc_B78083: FLdPr Me
  loc_B78086: MemLdRfVar from_stack_1.global_64
  loc_B78089: LdPrVar
  loc_B7808B: LateMemCall
  loc_B78091: LitVarStr var_94, ".NormalBloqueFin {"
  loc_B78096: PopAdLdVar
  loc_B78097: FLdPr Me
  loc_B7809A: MemLdRfVar from_stack_1.global_64
  loc_B7809D: LdPrVar
  loc_B7809F: LateMemCall
  loc_B780A5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B780AA: PopAdLdVar
  loc_B780AB: FLdPr Me
  loc_B780AE: MemLdRfVar from_stack_1.global_64
  loc_B780B1: LdPrVar
  loc_B780B3: LateMemCall
  loc_B780B9: LitVarStr var_94, " font-size: 12px;"
  loc_B780BE: PopAdLdVar
  loc_B780BF: FLdPr Me
  loc_B780C2: MemLdRfVar from_stack_1.global_64
  loc_B780C5: LdPrVar
  loc_B780C7: LateMemCall
  loc_B780CD: LitVarStr var_94, " vertical-align: top;"
  loc_B780D2: PopAdLdVar
  loc_B780D3: FLdPr Me
  loc_B780D6: MemLdRfVar from_stack_1.global_64
  loc_B780D9: LdPrVar
  loc_B780DB: LateMemCall
  loc_B780E1: LitVarStr var_94, "}"
  loc_B780E6: PopAdLdVar
  loc_B780E7: FLdPr Me
  loc_B780EA: MemLdRfVar from_stack_1.global_64
  loc_B780ED: LdPrVar
  loc_B780EF: LateMemCall
  loc_B780F5: LitVarStr var_94, ".NombreMunicipio {"
  loc_B780FA: PopAdLdVar
  loc_B780FB: FLdPr Me
  loc_B780FE: MemLdRfVar from_stack_1.global_64
  loc_B78101: LdPrVar
  loc_B78103: LateMemCall
  loc_B78109: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B7810E: PopAdLdVar
  loc_B7810F: FLdPr Me
  loc_B78112: MemLdRfVar from_stack_1.global_64
  loc_B78115: LdPrVar
  loc_B78117: LateMemCall
  loc_B7811D: LitVarStr var_94, " font-size: 14px;"
  loc_B78122: PopAdLdVar
  loc_B78123: FLdPr Me
  loc_B78126: MemLdRfVar from_stack_1.global_64
  loc_B78129: LdPrVar
  loc_B7812B: LateMemCall
  loc_B78131: LitVarStr var_94, " font-weight: bold;"
  loc_B78136: PopAdLdVar
  loc_B78137: FLdPr Me
  loc_B7813A: MemLdRfVar from_stack_1.global_64
  loc_B7813D: LdPrVar
  loc_B7813F: LateMemCall
  loc_B78145: LitVarStr var_94, "}"
  loc_B7814A: PopAdLdVar
  loc_B7814B: FLdPr Me
  loc_B7814E: MemLdRfVar from_stack_1.global_64
  loc_B78151: LdPrVar
  loc_B78153: LateMemCall
  loc_B78159: LitVarStr var_94, ".NombreMunicipioBloqueFin {"
  loc_B7815E: PopAdLdVar
  loc_B7815F: FLdPr Me
  loc_B78162: MemLdRfVar from_stack_1.global_64
  loc_B78165: LdPrVar
  loc_B78167: LateMemCall
  loc_B7816D: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B78172: PopAdLdVar
  loc_B78173: FLdPr Me
  loc_B78176: MemLdRfVar from_stack_1.global_64
  loc_B78179: LdPrVar
  loc_B7817B: LateMemCall
  loc_B78181: LitVarStr var_94, " font-size: 10px;"
  loc_B78186: PopAdLdVar
  loc_B78187: FLdPr Me
  loc_B7818A: MemLdRfVar from_stack_1.global_64
  loc_B7818D: LdPrVar
  loc_B7818F: LateMemCall
  loc_B78195: LitVarStr var_94, "}"
  loc_B7819A: PopAdLdVar
  loc_B7819B: FLdPr Me
  loc_B7819E: MemLdRfVar from_stack_1.global_64
  loc_B781A1: LdPrVar
  loc_B781A3: LateMemCall
  loc_B781A9: LitVarStr var_94, ".DatosMunicipio {"
  loc_B781AE: PopAdLdVar
  loc_B781AF: FLdPr Me
  loc_B781B2: MemLdRfVar from_stack_1.global_64
  loc_B781B5: LdPrVar
  loc_B781B7: LateMemCall
  loc_B781BD: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B781C2: PopAdLdVar
  loc_B781C3: FLdPr Me
  loc_B781C6: MemLdRfVar from_stack_1.global_64
  loc_B781C9: LdPrVar
  loc_B781CB: LateMemCall
  loc_B781D1: LitVarStr var_94, " font-size: 12px;"
  loc_B781D6: PopAdLdVar
  loc_B781D7: FLdPr Me
  loc_B781DA: MemLdRfVar from_stack_1.global_64
  loc_B781DD: LdPrVar
  loc_B781DF: LateMemCall
  loc_B781E5: LitVarStr var_94, "}"
  loc_B781EA: PopAdLdVar
  loc_B781EB: FLdPr Me
  loc_B781EE: MemLdRfVar from_stack_1.global_64
  loc_B781F1: LdPrVar
  loc_B781F3: LateMemCall
  loc_B781F9: LitVarStr var_94, ".Totales {"
  loc_B781FE: PopAdLdVar
  loc_B781FF: FLdPr Me
  loc_B78202: MemLdRfVar from_stack_1.global_64
  loc_B78205: LdPrVar
  loc_B78207: LateMemCall
  loc_B7820D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B78212: PopAdLdVar
  loc_B78213: FLdPr Me
  loc_B78216: MemLdRfVar from_stack_1.global_64
  loc_B78219: LdPrVar
  loc_B7821B: LateMemCall
  loc_B78221: LitVarStr var_94, " font-size: 13px;"
  loc_B78226: PopAdLdVar
  loc_B78227: FLdPr Me
  loc_B7822A: MemLdRfVar from_stack_1.global_64
  loc_B7822D: LdPrVar
  loc_B7822F: LateMemCall
  loc_B78235: LitVarStr var_94, " vertical-align: top;"
  loc_B7823A: PopAdLdVar
  loc_B7823B: FLdPr Me
  loc_B7823E: MemLdRfVar from_stack_1.global_64
  loc_B78241: LdPrVar
  loc_B78243: LateMemCall
  loc_B78249: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_B7824E: PopAdLdVar
  loc_B7824F: FLdPr Me
  loc_B78252: MemLdRfVar from_stack_1.global_64
  loc_B78255: LdPrVar
  loc_B78257: LateMemCall
  loc_B7825D: LitVarStr var_94, " font-weight: bold;"
  loc_B78262: PopAdLdVar
  loc_B78263: FLdPr Me
  loc_B78266: MemLdRfVar from_stack_1.global_64
  loc_B78269: LdPrVar
  loc_B7826B: LateMemCall
  loc_B78271: LitVarStr var_94, "}"
  loc_B78276: PopAdLdVar
  loc_B78277: FLdPr Me
  loc_B7827A: MemLdRfVar from_stack_1.global_64
  loc_B7827D: LdPrVar
  loc_B7827F: LateMemCall
  loc_B78285: LitVarStr var_94, ".Total {"
  loc_B7828A: PopAdLdVar
  loc_B7828B: FLdPr Me
  loc_B7828E: MemLdRfVar from_stack_1.global_64
  loc_B78291: LdPrVar
  loc_B78293: LateMemCall
  loc_B78299: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B7829E: PopAdLdVar
  loc_B7829F: FLdPr Me
  loc_B782A2: MemLdRfVar from_stack_1.global_64
  loc_B782A5: LdPrVar
  loc_B782A7: LateMemCall
  loc_B782AD: LitVarStr var_94, " font-size: 14px;"
  loc_B782B2: PopAdLdVar
  loc_B782B3: FLdPr Me
  loc_B782B6: MemLdRfVar from_stack_1.global_64
  loc_B782B9: LdPrVar
  loc_B782BB: LateMemCall
  loc_B782C1: LitVarStr var_94, " vertical-align: top;"
  loc_B782C6: PopAdLdVar
  loc_B782C7: FLdPr Me
  loc_B782CA: MemLdRfVar from_stack_1.global_64
  loc_B782CD: LdPrVar
  loc_B782CF: LateMemCall
  loc_B782D5: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_B782DA: PopAdLdVar
  loc_B782DB: FLdPr Me
  loc_B782DE: MemLdRfVar from_stack_1.global_64
  loc_B782E1: LdPrVar
  loc_B782E3: LateMemCall
  loc_B782E9: LitVarStr var_94, " font-weight: bold;"
  loc_B782EE: PopAdLdVar
  loc_B782EF: FLdPr Me
  loc_B782F2: MemLdRfVar from_stack_1.global_64
  loc_B782F5: LdPrVar
  loc_B782F7: LateMemCall
  loc_B782FD: LitVarStr var_94, " border: 1px solid #000000;"
  loc_B78302: PopAdLdVar
  loc_B78303: FLdPr Me
  loc_B78306: MemLdRfVar from_stack_1.global_64
  loc_B78309: LdPrVar
  loc_B7830B: LateMemCall
  loc_B78311: LitVarStr var_94, "}"
  loc_B78316: PopAdLdVar
  loc_B78317: FLdPr Me
  loc_B7831A: MemLdRfVar from_stack_1.global_64
  loc_B7831D: LdPrVar
  loc_B7831F: LateMemCall
  loc_B78325: LitVarStr var_94, ".Vencimiento {"
  loc_B7832A: PopAdLdVar
  loc_B7832B: FLdPr Me
  loc_B7832E: MemLdRfVar from_stack_1.global_64
  loc_B78331: LdPrVar
  loc_B78333: LateMemCall
  loc_B78339: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B7833E: PopAdLdVar
  loc_B7833F: FLdPr Me
  loc_B78342: MemLdRfVar from_stack_1.global_64
  loc_B78345: LdPrVar
  loc_B78347: LateMemCall
  loc_B7834D: LitVarStr var_94, " font-size: 12px;"
  loc_B78352: PopAdLdVar
  loc_B78353: FLdPr Me
  loc_B78356: MemLdRfVar from_stack_1.global_64
  loc_B78359: LdPrVar
  loc_B7835B: LateMemCall
  loc_B78361: LitVarStr var_94, " vertical-align: top;"
  loc_B78366: PopAdLdVar
  loc_B78367: FLdPr Me
  loc_B7836A: MemLdRfVar from_stack_1.global_64
  loc_B7836D: LdPrVar
  loc_B7836F: LateMemCall
  loc_B78375: LitVarStr var_94, " font-weight: bold;"
  loc_B7837A: PopAdLdVar
  loc_B7837B: FLdPr Me
  loc_B7837E: MemLdRfVar from_stack_1.global_64
  loc_B78381: LdPrVar
  loc_B78383: LateMemCall
  loc_B78389: LitVarStr var_94, " border: 1px solid #000000;"
  loc_B7838E: PopAdLdVar
  loc_B7838F: FLdPr Me
  loc_B78392: MemLdRfVar from_stack_1.global_64
  loc_B78395: LdPrVar
  loc_B78397: LateMemCall
  loc_B7839D: LitVarStr var_94, "}"
  loc_B783A2: PopAdLdVar
  loc_B783A3: FLdPr Me
  loc_B783A6: MemLdRfVar from_stack_1.global_64
  loc_B783A9: LdPrVar
  loc_B783AB: LateMemCall
  loc_B783B1: LitVarStr var_94, "-->"
  loc_B783B6: PopAdLdVar
  loc_B783B7: FLdPr Me
  loc_B783BA: MemLdRfVar from_stack_1.global_64
  loc_B783BD: LdPrVar
  loc_B783BF: LateMemCall
  loc_B783C5: LitVarStr var_94, "</style>"
  loc_B783CA: PopAdLdVar
  loc_B783CB: FLdPr Me
  loc_B783CE: MemLdRfVar from_stack_1.global_64
  loc_B783D1: LdPrVar
  loc_B783D3: LateMemCall
  loc_B783D9: LitI4 0
  loc_B783DE: FStStrCopy var_AC
  loc_B783E1: FLdRfVar var_AC
  loc_B783E4: LitI4 0
  loc_B783E9: FStStrCopy var_A8
  loc_B783EC: FLdRfVar var_A8
  loc_B783EF: LitI2_Byte 0
  loc_B783F1: PopTmpLdAd2 var_BE
  loc_B783F4: FLdPr Me
  loc_B783F7: MemLdRfVar from_stack_1.global_64
  loc_B783FA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B783FF: FFreeStr var_A8 = ""
  loc_B78406: ExitProcHresult
End Function

Private Function Proc_119_18_AE7274() 'AE7274
  'Data Table: 4801EC
  loc_AE7108: LitVarStr var_94, "<table height=""780"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_AE710D: PopAdLdVar
  loc_AE710E: FLdPr Me
  loc_AE7111: MemLdRfVar from_stack_1.global_64
  loc_AE7114: LdPrVar
  loc_AE7116: LateMemCall
  loc_AE711C: LitVarStr var_94, "  <tr valign=""top""><td>"
  loc_AE7121: PopAdLdVar
  loc_AE7122: FLdPr Me
  loc_AE7125: MemLdRfVar from_stack_1.global_64
  loc_AE7128: LdPrVar
  loc_AE712A: LateMemCall
  loc_AE7130: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_AE7135: PopAdLdVar
  loc_AE7136: FLdPr Me
  loc_AE7139: MemLdRfVar from_stack_1.global_64
  loc_AE713C: LdPrVar
  loc_AE713E: LateMemCall
  loc_AE7144: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AE7149: PopAdLdVar
  loc_AE714A: FLdPr Me
  loc_AE714D: MemLdRfVar from_stack_1.global_64
  loc_AE7150: LdPrVar
  loc_AE7152: LateMemCall
  loc_AE7158: LitStr "    <td height=""63"" colspan=""4"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_AE715B: LitI2_Byte &H5F
  loc_AE715D: CStrUI1
  loc_AE715F: FStStrNoPop var_A8
  loc_AE7162: ConcatStr
  loc_AE7163: FStStrNoPop var_AC
  loc_AE7166: LitStr """ height="""
  loc_AE7169: ConcatStr
  loc_AE716A: FStStrNoPop var_B0
  loc_AE716D: LitI2_Byte &H3C
  loc_AE716F: CStrUI1
  loc_AE7171: FStStrNoPop var_B4
  loc_AE7174: ConcatStr
  loc_AE7175: FStStrNoPop var_B8
  loc_AE7178: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width=""49"" height=""51"" align=""right"" /><span class=""NombreMunicipio"">"
  loc_AE717B: ConcatStr
  loc_AE717C: FStStrNoPop var_BC
  loc_AE717F: LitStr "Municipalidad de Guaymallén"
  loc_AE7182: ConcatStr
  loc_AE7183: FStStrNoPop var_C0
  loc_AE7186: LitStr "</span><br />"
  loc_AE7189: ConcatStr
  loc_AE718A: CVarStr var_D0
  loc_AE718D: PopAdLdVar
  loc_AE718E: FLdPr Me
  loc_AE7191: MemLdRfVar from_stack_1.global_64
  loc_AE7194: LdPrVar
  loc_AE7196: LateMemCall
  loc_AE719C: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AE71AD: FFree1Var var_D0 = ""
  loc_AE71B0: LitStr "    "
  loc_AE71B3: LitStr "Dirección de Rentas"
  loc_AE71B6: ConcatStr
  loc_AE71B7: FStStrNoPop var_A8
  loc_AE71BA: LitStr "<br>"
  loc_AE71BD: ConcatStr
  loc_AE71BE: CVarStr var_D0
  loc_AE71C1: PopAdLdVar
  loc_AE71C2: FLdPr Me
  loc_AE71C5: MemLdRfVar from_stack_1.global_64
  loc_AE71C8: LdPrVar
  loc_AE71CA: LateMemCall
  loc_AE71D0: FFree1Str var_A8
  loc_AE71D3: FFree1Var var_D0 = ""
  loc_AE71D6: LitStr "    "
  loc_AE71D9: LitStr "Libertad 720 - Villa Nueva"
  loc_AE71DC: ConcatStr
  loc_AE71DD: FStStrNoPop var_A8
  loc_AE71E0: LitStr "<br>"
  loc_AE71E3: ConcatStr
  loc_AE71E4: CVarStr var_D0
  loc_AE71E7: PopAdLdVar
  loc_AE71E8: FLdPr Me
  loc_AE71EB: MemLdRfVar from_stack_1.global_64
  loc_AE71EE: LdPrVar
  loc_AE71F0: LateMemCall
  loc_AE71F6: FFree1Str var_A8
  loc_AE71F9: FFree1Var var_D0 = ""
  loc_AE71FC: LitStr "    "
  loc_AE71FF: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_AE7202: ConcatStr
  loc_AE7203: FStStrNoPop var_A8
  loc_AE7206: LitStr "&nbsp;&nbsp;-&nbsp;&nbsp;CUIT "
  loc_AE7209: ConcatStr
  loc_AE720A: FStStrNoPop var_AC
  loc_AE720D: LitStr "30-99914707-7"
  loc_AE7210: ConcatStr
  loc_AE7211: FStStrNoPop var_B0
  loc_AE7214: LitStr "<br>"
  loc_AE7217: ConcatStr
  loc_AE7218: CVarStr var_D0
  loc_AE721B: PopAdLdVar
  loc_AE721C: FLdPr Me
  loc_AE721F: MemLdRfVar from_stack_1.global_64
  loc_AE7222: LdPrVar
  loc_AE7224: LateMemCall
  loc_AE722A: FFreeStr var_A8 = "": var_AC = ""
  loc_AE7233: FFree1Var var_D0 = ""
  loc_AE7236: LitStr " <div align=""right""><em>"
  loc_AE7239: LitStr "&nbsp;"
  loc_AE723C: ConcatStr
  loc_AE723D: FStStrNoPop var_A8
  loc_AE7240: LitStr "</em></div></td>"
  loc_AE7243: ConcatStr
  loc_AE7244: CVarStr var_D0
  loc_AE7247: PopAdLdVar
  loc_AE7248: FLdPr Me
  loc_AE724B: MemLdRfVar from_stack_1.global_64
  loc_AE724E: LdPrVar
  loc_AE7250: LateMemCall
  loc_AE7256: FFree1Str var_A8
  loc_AE7259: FFree1Var var_D0 = ""
  loc_AE725C: LitVarStr var_94, "  </tr>"
  loc_AE7261: PopAdLdVar
  loc_AE7262: FLdPr Me
  loc_AE7265: MemLdRfVar from_stack_1.global_64
  loc_AE7268: LdPrVar
  loc_AE726A: LateMemCall
  loc_AE7270: ExitProcHresult
  loc_AE7271: FLdRfVar var_98
End Function

Private Function Proc_119_19_B14A10() 'B14A10
  'Data Table: 4801EC
  loc_B147D0: FLdPr Me
  loc_B147D3: MemLdStr global_96
  loc_B147D6: FLdPr Me
  loc_B147D9: MemLdStr global_92
  loc_B147DC: AryLock
  loc_B147DF: Ary1LdRf
  loc_B147E0: FStR4 var_8C
  loc_B147E3: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B147E8: PopAdLdVar
  loc_B147E9: FLdPr Me
  loc_B147EC: MemLdRfVar from_stack_1.global_64
  loc_B147EF: LdPrVar
  loc_B147F1: LateMemCall
  loc_B147F7: LitVarStr var_9C, "    <td width=""17" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B147FC: PopAdLdVar
  loc_B147FD: FLdPr Me
  loc_B14800: MemLdRfVar from_stack_1.global_64
  loc_B14803: LdPrVar
  loc_B14805: LateMemCall
  loc_B1480B: LitVarStr var_9C, "    <td width=""36" & Chr(37) & """><strong>PAVIMENTO</strong></td>"
  loc_B14810: PopAdLdVar
  loc_B14811: FLdPr Me
  loc_B14814: MemLdRfVar from_stack_1.global_64
  loc_B14817: LdPrVar
  loc_B14819: LateMemCall
  loc_B1481F: LitVarStr var_9C, "    <td width=""8" & Chr(37) & """ rowspan=""2"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B14824: PopAdLdVar
  loc_B14825: FLdPr Me
  loc_B14828: MemLdRfVar from_stack_1.global_64
  loc_B1482B: LdPrVar
  loc_B1482D: LateMemCall
  loc_B14833: LitStr "    <td width=""39" & Chr(37) & """ rowspan=""2""><strong>REFERENCIA&nbsp;&nbsp;: "
  loc_B14836: FMemLdR4 var_8C(32)
  loc_B1483B: ConcatStr
  loc_B1483C: FStStrNoPop var_B0
  loc_B1483F: LitStr "<br>"
  loc_B14842: ConcatStr
  loc_B14843: CVarStr var_C0
  loc_B14846: PopAdLdVar
  loc_B14847: FLdPr Me
  loc_B1484A: MemLdRfVar from_stack_1.global_64
  loc_B1484D: LdPrVar
  loc_B1484F: LateMemCall
  loc_B14855: FFree1Str var_B0
  loc_B14858: FFree1Var var_C0 = ""
  loc_B1485B: LitStr "                                NOMENCLATURA: "
  loc_B1485E: FMemLdR4 var_8C(36)
  loc_B14863: ConcatStr
  loc_B14864: FStStrNoPop var_B0
  loc_B14867: LitStr "<br>"
  loc_B1486A: ConcatStr
  loc_B1486B: CVarStr var_C0
  loc_B1486E: PopAdLdVar
  loc_B1486F: FLdPr Me
  loc_B14872: MemLdRfVar from_stack_1.global_64
  loc_B14875: LdPrVar
  loc_B14877: LateMemCall
  loc_B1487D: FFree1Str var_B0
  loc_B14880: FFree1Var var_C0 = ""
  loc_B14883: LitStr "                                SUP. TERRENO: "
  loc_B14886: FMemLdR4 var_8C(40)
  loc_B1488B: ConcatStr
  loc_B1488C: FStStrNoPop var_B0
  loc_B1488F: LitStr " m<sup>2</sup><br>"
  loc_B14892: ConcatStr
  loc_B14893: CVarStr var_C0
  loc_B14896: PopAdLdVar
  loc_B14897: FLdPr Me
  loc_B1489A: MemLdRfVar from_stack_1.global_64
  loc_B1489D: LdPrVar
  loc_B1489F: LateMemCall
  loc_B148A5: FFree1Str var_B0
  loc_B148A8: FFree1Var var_C0 = ""
  loc_B148AB: LitStr "          "
  loc_B148AE: FMemLdR4 var_8C(44)
  loc_B148B3: ConcatStr
  loc_B148B4: FStStrNoPop var_B0
  loc_B148B7: LitStr "</strong></td>"
  loc_B148BA: ConcatStr
  loc_B148BB: CVarStr var_C0
  loc_B148BE: PopAdLdVar
  loc_B148BF: FLdPr Me
  loc_B148C2: MemLdRfVar from_stack_1.global_64
  loc_B148C5: LdPrVar
  loc_B148C7: LateMemCall
  loc_B148CD: FFree1Str var_B0
  loc_B148D0: FFree1Var var_C0 = ""
  loc_B148D3: LitVarStr var_9C, "  </tr>"
  loc_B148D8: PopAdLdVar
  loc_B148D9: FLdPr Me
  loc_B148DC: MemLdRfVar from_stack_1.global_64
  loc_B148DF: LdPrVar
  loc_B148E1: LateMemCall
  loc_B148E7: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B148EC: PopAdLdVar
  loc_B148ED: FLdPr Me
  loc_B148F0: MemLdRfVar from_stack_1.global_64
  loc_B148F3: LdPrVar
  loc_B148F5: LateMemCall
  loc_B148FB: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B14900: PopAdLdVar
  loc_B14901: FLdPr Me
  loc_B14904: MemLdRfVar from_stack_1.global_64
  loc_B14907: LdPrVar
  loc_B14909: LateMemCall
  loc_B1490F: LitStr "    <td><strong>"
  loc_B14912: FMemLdR4 var_8C(0)
  loc_B14917: ConcatStr
  loc_B14918: FStStrNoPop var_B0
  loc_B1491B: LitStr "<br>"
  loc_B1491E: ConcatStr
  loc_B1491F: CVarStr var_C0
  loc_B14922: PopAdLdVar
  loc_B14923: FLdPr Me
  loc_B14926: MemLdRfVar from_stack_1.global_64
  loc_B14929: LdPrVar
  loc_B1492B: LateMemCall
  loc_B14931: FFree1Str var_B0
  loc_B14934: FFree1Var var_C0 = ""
  loc_B14937: LitStr "      "
  loc_B1493A: FMemLdR4 var_8C(4)
  loc_B1493F: ConcatStr
  loc_B14940: FStStrNoPop var_B0
  loc_B14943: LitStr " "
  loc_B14946: ConcatStr
  loc_B14947: FStStrNoPop var_C4
  loc_B1494A: FMemLdR4 var_8C(8)
  loc_B1494F: ConcatStr
  loc_B14950: FStStrNoPop var_C8
  loc_B14953: LitStr "<br>"
  loc_B14956: ConcatStr
  loc_B14957: FStStrNoPop var_CC
  loc_B1495A: FMemLdR4 var_8C(12)
  loc_B1495F: ConcatStr
  loc_B14960: FStStrNoPop var_D0
  loc_B14963: LitStr " "
  loc_B14966: ConcatStr
  loc_B14967: FStStrNoPop var_D4
  loc_B1496A: FMemLdR4 var_8C(16)
  loc_B1496F: ConcatStr
  loc_B14970: FStStrNoPop var_D8
  loc_B14973: LitStr " "
  loc_B14976: ConcatStr
  loc_B14977: FStStrNoPop var_DC
  loc_B1497A: FMemLdR4 var_8C(20)
  loc_B1497F: ConcatStr
  loc_B14980: FStStrNoPop var_E0
  loc_B14983: LitStr "<br>"
  loc_B14986: ConcatStr
  loc_B14987: FStStrNoPop var_E4
  loc_B1498A: FMemLdR4 var_8C(24)
  loc_B1498F: ConcatStr
  loc_B14990: FStStrNoPop var_E8
  loc_B14993: LitStr " ("
  loc_B14996: ConcatStr
  loc_B14997: FStStrNoPop var_EC
  loc_B1499A: FMemLdR4 var_8C(28)
  loc_B1499F: ConcatStr
  loc_B149A0: FStStrNoPop var_F0
  loc_B149A3: LitStr ")</strong></td>"
  loc_B149A6: ConcatStr
  loc_B149A7: CVarStr var_C0
  loc_B149AA: PopAdLdVar
  loc_B149AB: FLdPr Me
  loc_B149AE: MemLdRfVar from_stack_1.global_64
  loc_B149B1: LdPrVar
  loc_B149B3: LateMemCall
  loc_B149B9: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_B149D6: FFree1Var var_C0 = ""
  loc_B149D9: LitVarStr var_9C, "    </tr>"
  loc_B149DE: PopAdLdVar
  loc_B149DF: FLdPr Me
  loc_B149E2: MemLdRfVar from_stack_1.global_64
  loc_B149E5: LdPrVar
  loc_B149E7: LateMemCall
  loc_B149ED: LitVarStr var_9C, "</table>"
  loc_B149F2: PopAdLdVar
  loc_B149F3: FLdPr Me
  loc_B149F6: MemLdRfVar from_stack_1.global_64
  loc_B149F9: LdPrVar
  loc_B149FB: LateMemCall
  loc_B14A01: LitI4 0
  loc_B14A06: FStR4 var_8C
  loc_B14A09: AryUnlock
  loc_B14A0C: ExitProcHresult
End Function

Private Function Proc_119_20_AF0874() 'AF0874
  'Data Table: 4801EC
  loc_AF06D0: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_AF06D5: PopAdLdVar
  loc_AF06D6: FLdPr Me
  loc_AF06D9: MemLdRfVar from_stack_1.global_64
  loc_AF06DC: LdPrVar
  loc_AF06DE: LateMemCall
  loc_AF06E4: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_AF06E9: PopAdLdVar
  loc_AF06EA: FLdPr Me
  loc_AF06ED: MemLdRfVar from_stack_1.global_64
  loc_AF06F0: LdPrVar
  loc_AF06F2: LateMemCall
  loc_AF06F8: LitStr "    <td><strong> "
  loc_AF06FB: FLdPr Me
  loc_AF06FE: MemLdStr global_104
  loc_AF0701: ConcatStr
  loc_AF0702: FStStrNoPop var_AC
  loc_AF0705: LitStr " - Ordenanza "
  loc_AF0708: ConcatStr
  loc_AF0709: FStStrNoPop var_B0
  loc_AF070C: FLdPr Me
  loc_AF070F: MemLdStr OrdeObre
  loc_AF0712: ConcatStr
  loc_AF0713: FStStrNoPop var_B4
  loc_AF0716: LitStr "</strong></td>"
  loc_AF0719: ConcatStr
  loc_AF071A: CVarStr var_C4
  loc_AF071D: PopAdLdVar
  loc_AF071E: FLdPr Me
  loc_AF0721: MemLdRfVar from_stack_1.global_64
  loc_AF0724: LdPrVar
  loc_AF0726: LateMemCall
  loc_AF072C: FFreeStr var_AC = "": var_B0 = ""
  loc_AF0735: FFree1Var var_C4 = ""
  loc_AF0738: LitVarStr var_98, "  </tr>"
  loc_AF073D: PopAdLdVar
  loc_AF073E: FLdPr Me
  loc_AF0741: MemLdRfVar from_stack_1.global_64
  loc_AF0744: LdPrVar
  loc_AF0746: LateMemCall
  loc_AF074C: LitVarStr var_98, "  <tr>"
  loc_AF0751: PopAdLdVar
  loc_AF0752: FLdPr Me
  loc_AF0755: MemLdRfVar from_stack_1.global_64
  loc_AF0758: LdPrVar
  loc_AF075A: LateMemCall
  loc_AF0760: LitVarStr var_98, "    <td><br>"
  loc_AF0765: PopAdLdVar
  loc_AF0766: FLdPr Me
  loc_AF0769: MemLdRfVar from_stack_1.global_64
  loc_AF076C: LdPrVar
  loc_AF076E: LateMemCall
  loc_AF0774: LitI2_Byte 0
  loc_AF0776: FLdRfVar var_86
  loc_AF0779: FLdPr Me
  loc_AF077C: MemLdStr global_108
  loc_AF077F: LitI2_Byte 1
  loc_AF0781: FnUBound
  loc_AF0783: CI2I4
  loc_AF0784: ForI2 var_C8
  loc_AF078A: LitStr "      <p align=""justify"">"
  loc_AF078D: FLdI2 var_86
  loc_AF0790: CI4UI1
  loc_AF0791: FLdPr Me
  loc_AF0794: MemLdStr global_108
  loc_AF0797: Ary1LdI4
  loc_AF0798: ConcatStr
  loc_AF0799: FStStrNoPop var_AC
  loc_AF079C: LitStr "</p>"
  loc_AF079F: ConcatStr
  loc_AF07A0: CVarStr var_C4
  loc_AF07A3: PopAdLdVar
  loc_AF07A4: FLdPr Me
  loc_AF07A7: MemLdRfVar from_stack_1.global_64
  loc_AF07AA: LdPrVar
  loc_AF07AC: LateMemCall
  loc_AF07B2: FFree1Str var_AC
  loc_AF07B5: FFree1Var var_C4 = ""
  loc_AF07B8: FLdRfVar var_86
  loc_AF07BB: NextI2 var_C8, loc_AF078A
  loc_AF07C0: LitVarStr var_98, "    <br></td>"
  loc_AF07C5: PopAdLdVar
  loc_AF07C6: FLdPr Me
  loc_AF07C9: MemLdRfVar from_stack_1.global_64
  loc_AF07CC: LdPrVar
  loc_AF07CE: LateMemCall
  loc_AF07D4: LitVarStr var_98, "  </tr>"
  loc_AF07D9: PopAdLdVar
  loc_AF07DA: FLdPr Me
  loc_AF07DD: MemLdRfVar from_stack_1.global_64
  loc_AF07E0: LdPrVar
  loc_AF07E2: LateMemCall
  loc_AF07E8: LitVarStr var_98, "</table>"
  loc_AF07ED: PopAdLdVar
  loc_AF07EE: FLdPr Me
  loc_AF07F1: MemLdRfVar from_stack_1.global_64
  loc_AF07F4: LdPrVar
  loc_AF07F6: LateMemCall
  loc_AF07FC: LitVarStr var_98, "<p class=""Normal"" align=""justify""><strong>NOTA:<br>"
  loc_AF0801: PopAdLdVar
  loc_AF0802: FLdPr Me
  loc_AF0805: MemLdRfVar from_stack_1.global_64
  loc_AF0808: LdPrVar
  loc_AF080A: LateMemCall
  loc_AF0810: LitStr "  Para mayor informaci&oacute;n dirigirse a "
  loc_AF0813: LitStr "Dirección de Rentas"
  loc_AF0816: ConcatStr
  loc_AF0817: FStStrNoPop var_AC
  loc_AF081A: LitStr " de la "
  loc_AF081D: ConcatStr
  loc_AF081E: FStStrNoPop var_B0
  loc_AF0821: LitStr "Municipalidad de Guaymallén"
  loc_AF0824: ConcatStr
  loc_AF0825: FStStrNoPop var_B4
  loc_AF0828: LitStr " en horario de atenci&oacute;n al p&uacute;blico: de 8:00 a 12:30 hs.<br>Muchas Gracias.</strong></p>"
  loc_AF082B: ConcatStr
  loc_AF082C: CVarStr var_C4
  loc_AF082F: PopAdLdVar
  loc_AF0830: FLdPr Me
  loc_AF0833: MemLdRfVar from_stack_1.global_64
  loc_AF0836: LdPrVar
  loc_AF0838: LateMemCall
  loc_AF083E: FFreeStr var_AC = "": var_B0 = ""
  loc_AF0847: FFree1Var var_C4 = ""
  loc_AF084A: LitVarStr var_98, "</td>"
  loc_AF084F: PopAdLdVar
  loc_AF0850: FLdPr Me
  loc_AF0853: MemLdRfVar from_stack_1.global_64
  loc_AF0856: LdPrVar
  loc_AF0858: LateMemCall
  loc_AF085E: LitVarStr var_98, "</tr></table><hr>"
  loc_AF0863: PopAdLdVar
  loc_AF0864: FLdPr Me
  loc_AF0867: MemLdRfVar from_stack_1.global_64
  loc_AF086A: LdPrVar
  loc_AF086C: LateMemCall
  loc_AF0872: ExitProcHresult
End Function

Private Function Proc_119_21_B60F84() 'B60F84
  'Data Table: 4801EC
  loc_B60B38: LitVarStr var_94, "<table height=""123"" width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_B60B3D: PopAdLdVar
  loc_B60B3E: FLdPr Me
  loc_B60B41: MemLdRfVar from_stack_1.global_64
  loc_B60B44: LdPrVar
  loc_B60B46: LateMemCall
  loc_B60B4C: LitVarStr var_94, "  <tr>"
  loc_B60B51: PopAdLdVar
  loc_B60B52: FLdPr Me
  loc_B60B55: MemLdRfVar from_stack_1.global_64
  loc_B60B58: LdPrVar
  loc_B60B5A: LateMemCall
  loc_B60B60: FLdPr Me
  loc_B60B63: MemLdUI1 global_100
  loc_B60B67: FStUI1 var_A6
  loc_B60B6B: FLdUI1
  loc_B60B6F: LitI2_Byte 1
  loc_B60B71: CUI1I2
  loc_B60B73: EqI2
  loc_B60B74: BranchF loc_B60C6A
  loc_B60B77: LitVarStr var_94, "    <th width=""66" & Chr(37) & """ height=""123"" valign=""top""><table height=""123"" width=""98" & Chr(37) & """ border=""0"" align=""left"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B60B7C: PopAdLdVar
  loc_B60B7D: FLdPr Me
  loc_B60B80: MemLdRfVar from_stack_1.global_64
  loc_B60B83: LdPrVar
  loc_B60B85: LateMemCall
  loc_B60B8B: LitVarStr var_94, "      <tr align=""left"">"
  loc_B60B90: PopAdLdVar
  loc_B60B91: FLdPr Me
  loc_B60B94: MemLdRfVar from_stack_1.global_64
  loc_B60B97: LdPrVar
  loc_B60B99: LateMemCall
  loc_B60B9F: LitVarStr var_94, "        <td height=""85"" class=""Normal""><p>Para el CONTRIBUYENTE</p>"
  loc_B60BA4: PopAdLdVar
  loc_B60BA5: FLdPr Me
  loc_B60BA8: MemLdRfVar from_stack_1.global_64
  loc_B60BAB: LdPrVar
  loc_B60BAD: LateMemCall
  loc_B60BB3: LitVarStr var_94, "          <p>&nbsp; </p></td>"
  loc_B60BB8: PopAdLdVar
  loc_B60BB9: FLdPr Me
  loc_B60BBC: MemLdRfVar from_stack_1.global_64
  loc_B60BBF: LdPrVar
  loc_B60BC1: LateMemCall
  loc_B60BC7: LitVarStr var_94, "      </tr>"
  loc_B60BCC: PopAdLdVar
  loc_B60BCD: FLdPr Me
  loc_B60BD0: MemLdRfVar from_stack_1.global_64
  loc_B60BD3: LdPrVar
  loc_B60BD5: LateMemCall
  loc_B60BDB: LitVarStr var_94, "    </table>"
  loc_B60BE0: PopAdLdVar
  loc_B60BE1: FLdPr Me
  loc_B60BE4: MemLdRfVar from_stack_1.global_64
  loc_B60BE7: LdPrVar
  loc_B60BE9: LateMemCall
  loc_B60BEF: LitVarStr var_94, "    <th width=""33" & Chr(37) & """ height=""123"" valign=""top""><table width=""98" & Chr(37) & """ border=""1"" align=""left"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B60BF4: PopAdLdVar
  loc_B60BF5: FLdPr Me
  loc_B60BF8: MemLdRfVar from_stack_1.global_64
  loc_B60BFB: LdPrVar
  loc_B60BFD: LateMemCall
  loc_B60C03: LitVarStr var_94, "      <tr align=""left"">"
  loc_B60C08: PopAdLdVar
  loc_B60C09: FLdPr Me
  loc_B60C0C: MemLdRfVar from_stack_1.global_64
  loc_B60C0F: LdPrVar
  loc_B60C11: LateMemCall
  loc_B60C17: LitVarStr var_94, "        <td height=""171"" class=""Normal"">NOTIFICÓ:<br><br>Fecha de notificación:"
  loc_B60C1C: PopAdLdVar
  loc_B60C1D: FLdPr Me
  loc_B60C20: MemLdRfVar from_stack_1.global_64
  loc_B60C23: LdPrVar
  loc_B60C25: LateMemCall
  loc_B60C2B: LitVarStr var_94, "          <br></td>"
  loc_B60C30: PopAdLdVar
  loc_B60C31: FLdPr Me
  loc_B60C34: MemLdRfVar from_stack_1.global_64
  loc_B60C37: LdPrVar
  loc_B60C39: LateMemCall
  loc_B60C3F: LitVarStr var_94, "      </tr>"
  loc_B60C44: PopAdLdVar
  loc_B60C45: FLdPr Me
  loc_B60C48: MemLdRfVar from_stack_1.global_64
  loc_B60C4B: LdPrVar
  loc_B60C4D: LateMemCall
  loc_B60C53: LitVarStr var_94, "    </table>"
  loc_B60C58: PopAdLdVar
  loc_B60C59: FLdPr Me
  loc_B60C5C: MemLdRfVar from_stack_1.global_64
  loc_B60C5F: LdPrVar
  loc_B60C61: LateMemCall
  loc_B60C67: Branch loc_B60F1E
  loc_B60C6A: FLdUI1
  loc_B60C6E: LitI2_Byte 2
  loc_B60C70: CUI1I2
  loc_B60C72: EqI2
  loc_B60C73: BranchF loc_B60F1E
  loc_B60C76: LitVarStr var_94, "    <th width=""66" & Chr(37) & """ height=""123"" valign=""top""><table height=""123"" width=""98" & Chr(37) & """ border=""0"" align=""left"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B60C7B: PopAdLdVar
  loc_B60C7C: FLdPr Me
  loc_B60C7F: MemLdRfVar from_stack_1.global_64
  loc_B60C82: LdPrVar
  loc_B60C84: LateMemCall
  loc_B60C8A: LitVarStr var_94, "      <tr align=""left"">"
  loc_B60C8F: PopAdLdVar
  loc_B60C90: FLdPr Me
  loc_B60C93: MemLdRfVar from_stack_1.global_64
  loc_B60C96: LdPrVar
  loc_B60C98: LateMemCall
  loc_B60C9E: LitVarStr var_94, "        <td height=""85"" class=""Normal""><p>Para el MUNICIPIO</p>"
  loc_B60CA3: PopAdLdVar
  loc_B60CA4: FLdPr Me
  loc_B60CA7: MemLdRfVar from_stack_1.global_64
  loc_B60CAA: LdPrVar
  loc_B60CAC: LateMemCall
  loc_B60CB2: LitVarStr var_94, "          <table width=""95" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_B60CB7: PopAdLdVar
  loc_B60CB8: FLdPr Me
  loc_B60CBB: MemLdRfVar from_stack_1.global_64
  loc_B60CBE: LdPrVar
  loc_B60CC0: LateMemCall
  loc_B60CC6: LitVarStr var_94, "            <tr>"
  loc_B60CCB: PopAdLdVar
  loc_B60CCC: FLdPr Me
  loc_B60CCF: MemLdRfVar from_stack_1.global_64
  loc_B60CD2: LdPrVar
  loc_B60CD4: LateMemCall
  loc_B60CDA: LitVarStr var_94, "              <td colspan=""2"" align=""center"">DATOS DEL TITULAR</td>"
  loc_B60CDF: PopAdLdVar
  loc_B60CE0: FLdPr Me
  loc_B60CE3: MemLdRfVar from_stack_1.global_64
  loc_B60CE6: LdPrVar
  loc_B60CE8: LateMemCall
  loc_B60CEE: LitVarStr var_94, "              </tr>"
  loc_B60CF3: PopAdLdVar
  loc_B60CF4: FLdPr Me
  loc_B60CF7: MemLdRfVar from_stack_1.global_64
  loc_B60CFA: LdPrVar
  loc_B60CFC: LateMemCall
  loc_B60D02: LitVarStr var_94, "            <tr>"
  loc_B60D07: PopAdLdVar
  loc_B60D08: FLdPr Me
  loc_B60D0B: MemLdRfVar from_stack_1.global_64
  loc_B60D0E: LdPrVar
  loc_B60D10: LateMemCall
  loc_B60D16: LitVarStr var_94, "              <td width=""36" & Chr(37) & """ align=""right"" valign=""top"">Apellido y Nombre: </td>"
  loc_B60D1B: PopAdLdVar
  loc_B60D1C: FLdPr Me
  loc_B60D1F: MemLdRfVar from_stack_1.global_64
  loc_B60D22: LdPrVar
  loc_B60D24: LateMemCall
  loc_B60D2A: LitVarStr var_94, "              <td width=""64" & Chr(37) & """>&nbsp;<br></td>"
  loc_B60D2F: PopAdLdVar
  loc_B60D30: FLdPr Me
  loc_B60D33: MemLdRfVar from_stack_1.global_64
  loc_B60D36: LdPrVar
  loc_B60D38: LateMemCall
  loc_B60D3E: LitVarStr var_94, "            </tr>"
  loc_B60D43: PopAdLdVar
  loc_B60D44: FLdPr Me
  loc_B60D47: MemLdRfVar from_stack_1.global_64
  loc_B60D4A: LdPrVar
  loc_B60D4C: LateMemCall
  loc_B60D52: LitVarStr var_94, "            <tr>"
  loc_B60D57: PopAdLdVar
  loc_B60D58: FLdPr Me
  loc_B60D5B: MemLdRfVar from_stack_1.global_64
  loc_B60D5E: LdPrVar
  loc_B60D60: LateMemCall
  loc_B60D66: LitVarStr var_94, "              <td align=""right"" valign=""top"">DNI:</td>"
  loc_B60D6B: PopAdLdVar
  loc_B60D6C: FLdPr Me
  loc_B60D6F: MemLdRfVar from_stack_1.global_64
  loc_B60D72: LdPrVar
  loc_B60D74: LateMemCall
  loc_B60D7A: LitVarStr var_94, "              <td>&nbsp;<br></td>"
  loc_B60D7F: PopAdLdVar
  loc_B60D80: FLdPr Me
  loc_B60D83: MemLdRfVar from_stack_1.global_64
  loc_B60D86: LdPrVar
  loc_B60D88: LateMemCall
  loc_B60D8E: LitVarStr var_94, "            </tr>"
  loc_B60D93: PopAdLdVar
  loc_B60D94: FLdPr Me
  loc_B60D97: MemLdRfVar from_stack_1.global_64
  loc_B60D9A: LdPrVar
  loc_B60D9C: LateMemCall
  loc_B60DA2: LitVarStr var_94, "            <tr>"
  loc_B60DA7: PopAdLdVar
  loc_B60DA8: FLdPr Me
  loc_B60DAB: MemLdRfVar from_stack_1.global_64
  loc_B60DAE: LdPrVar
  loc_B60DB0: LateMemCall
  loc_B60DB6: LitVarStr var_94, "              <td align=""right"" valign=""top"">Fecha de Nacimiento: </td>"
  loc_B60DBB: PopAdLdVar
  loc_B60DBC: FLdPr Me
  loc_B60DBF: MemLdRfVar from_stack_1.global_64
  loc_B60DC2: LdPrVar
  loc_B60DC4: LateMemCall
  loc_B60DCA: LitVarStr var_94, "              <td>&nbsp;<br></td>"
  loc_B60DCF: PopAdLdVar
  loc_B60DD0: FLdPr Me
  loc_B60DD3: MemLdRfVar from_stack_1.global_64
  loc_B60DD6: LdPrVar
  loc_B60DD8: LateMemCall
  loc_B60DDE: LitVarStr var_94, "            </tr>"
  loc_B60DE3: PopAdLdVar
  loc_B60DE4: FLdPr Me
  loc_B60DE7: MemLdRfVar from_stack_1.global_64
  loc_B60DEA: LdPrVar
  loc_B60DEC: LateMemCall
  loc_B60DF2: LitVarStr var_94, "            <tr>"
  loc_B60DF7: PopAdLdVar
  loc_B60DF8: FLdPr Me
  loc_B60DFB: MemLdRfVar from_stack_1.global_64
  loc_B60DFE: LdPrVar
  loc_B60E00: LateMemCall
  loc_B60E06: LitVarStr var_94, "              <td height=""70"" align=""right"" valign=""top"">Observaciones:</td>"
  loc_B60E0B: PopAdLdVar
  loc_B60E0C: FLdPr Me
  loc_B60E0F: MemLdRfVar from_stack_1.global_64
  loc_B60E12: LdPrVar
  loc_B60E14: LateMemCall
  loc_B60E1A: LitVarStr var_94, "              <td><p>&nbsp;</p>"
  loc_B60E1F: PopAdLdVar
  loc_B60E20: FLdPr Me
  loc_B60E23: MemLdRfVar from_stack_1.global_64
  loc_B60E26: LdPrVar
  loc_B60E28: LateMemCall
  loc_B60E2E: LitVarStr var_94, "                <p>&nbsp;</p></td>"
  loc_B60E33: PopAdLdVar
  loc_B60E34: FLdPr Me
  loc_B60E37: MemLdRfVar from_stack_1.global_64
  loc_B60E3A: LdPrVar
  loc_B60E3C: LateMemCall
  loc_B60E42: LitVarStr var_94, "            </tr>"
  loc_B60E47: PopAdLdVar
  loc_B60E48: FLdPr Me
  loc_B60E4B: MemLdRfVar from_stack_1.global_64
  loc_B60E4E: LdPrVar
  loc_B60E50: LateMemCall
  loc_B60E56: LitVarStr var_94, "          </table>          "
  loc_B60E5B: PopAdLdVar
  loc_B60E5C: FLdPr Me
  loc_B60E5F: MemLdRfVar from_stack_1.global_64
  loc_B60E62: LdPrVar
  loc_B60E64: LateMemCall
  loc_B60E6A: LitVarStr var_94, "          <p>&nbsp; </p></td>"
  loc_B60E6F: PopAdLdVar
  loc_B60E70: FLdPr Me
  loc_B60E73: MemLdRfVar from_stack_1.global_64
  loc_B60E76: LdPrVar
  loc_B60E78: LateMemCall
  loc_B60E7E: LitVarStr var_94, "      </tr>"
  loc_B60E83: PopAdLdVar
  loc_B60E84: FLdPr Me
  loc_B60E87: MemLdRfVar from_stack_1.global_64
  loc_B60E8A: LdPrVar
  loc_B60E8C: LateMemCall
  loc_B60E92: LitVarStr var_94, "    </table>"
  loc_B60E97: PopAdLdVar
  loc_B60E98: FLdPr Me
  loc_B60E9B: MemLdRfVar from_stack_1.global_64
  loc_B60E9E: LdPrVar
  loc_B60EA0: LateMemCall
  loc_B60EA6: LitVarStr var_94, "    <th width=""33" & Chr(37) & """ height=""123"" valign=""top""><table width=""98" & Chr(37) & """ border=""1"" align=""left"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B60EAB: PopAdLdVar
  loc_B60EAC: FLdPr Me
  loc_B60EAF: MemLdRfVar from_stack_1.global_64
  loc_B60EB2: LdPrVar
  loc_B60EB4: LateMemCall
  loc_B60EBA: LitVarStr var_94, "      <tr align=""left"">"
  loc_B60EBF: PopAdLdVar
  loc_B60EC0: FLdPr Me
  loc_B60EC3: MemLdRfVar from_stack_1.global_64
  loc_B60EC6: LdPrVar
  loc_B60EC8: LateMemCall
  loc_B60ECE: LitVarStr var_94, "        <td height=""171"" class=""Normal"">RECIBIÓ:<br><br>Fecha de notificación:"
  loc_B60ED3: PopAdLdVar
  loc_B60ED4: FLdPr Me
  loc_B60ED7: MemLdRfVar from_stack_1.global_64
  loc_B60EDA: LdPrVar
  loc_B60EDC: LateMemCall
  loc_B60EE2: LitVarStr var_94, "          <br></td>"
  loc_B60EE7: PopAdLdVar
  loc_B60EE8: FLdPr Me
  loc_B60EEB: MemLdRfVar from_stack_1.global_64
  loc_B60EEE: LdPrVar
  loc_B60EF0: LateMemCall
  loc_B60EF6: LitVarStr var_94, "      </tr>"
  loc_B60EFB: PopAdLdVar
  loc_B60EFC: FLdPr Me
  loc_B60EFF: MemLdRfVar from_stack_1.global_64
  loc_B60F02: LdPrVar
  loc_B60F04: LateMemCall
  loc_B60F0A: LitVarStr var_94, "    </table>"
  loc_B60F0F: PopAdLdVar
  loc_B60F10: FLdPr Me
  loc_B60F13: MemLdRfVar from_stack_1.global_64
  loc_B60F16: LdPrVar
  loc_B60F18: LateMemCall
  loc_B60F1E: LitVarStr var_94, "  </tr>"
  loc_B60F23: PopAdLdVar
  loc_B60F24: FLdPr Me
  loc_B60F27: MemLdRfVar from_stack_1.global_64
  loc_B60F2A: LdPrVar
  loc_B60F2C: LateMemCall
  loc_B60F32: LitVarStr var_94, "  <tr>"
  loc_B60F37: PopAdLdVar
  loc_B60F38: FLdPr Me
  loc_B60F3B: MemLdRfVar from_stack_1.global_64
  loc_B60F3E: LdPrVar
  loc_B60F40: LateMemCall
  loc_B60F46: LitVarStr var_94, "    <td align=""left"" valign=""top"" class=""Normal"">www.infogov.com.ar</td>"
  loc_B60F4B: PopAdLdVar
  loc_B60F4C: FLdPr Me
  loc_B60F4F: MemLdRfVar from_stack_1.global_64
  loc_B60F52: LdPrVar
  loc_B60F54: LateMemCall
  loc_B60F5A: LitVarStr var_94, "  </tr>"
  loc_B60F5F: PopAdLdVar
  loc_B60F60: FLdPr Me
  loc_B60F63: MemLdRfVar from_stack_1.global_64
  loc_B60F66: LdPrVar
  loc_B60F68: LateMemCall
  loc_B60F6E: LitVarStr var_94, "</table>"
  loc_B60F73: PopAdLdVar
  loc_B60F74: FLdPr Me
  loc_B60F77: MemLdRfVar from_stack_1.global_64
  loc_B60F7A: LdPrVar
  loc_B60F7C: LateMemCall
  loc_B60F82: ExitProcHresult
End Function

Private Function Proc_119_22_9F4AA8() '9F4AA8
  'Data Table: 4801EC
  loc_9F4A7C: LitVarStr var_94, "</body>"
  loc_9F4A81: PopAdLdVar
  loc_9F4A82: FLdPr Me
  loc_9F4A85: MemLdRfVar from_stack_1.global_64
  loc_9F4A88: LdPrVar
  loc_9F4A8A: LateMemCall
  loc_9F4A90: LitVarStr var_94, "</html>"
  loc_9F4A95: PopAdLdVar
  loc_9F4A96: FLdPr Me
  loc_9F4A99: MemLdRfVar from_stack_1.global_64
  loc_9F4A9C: LdPrVar
  loc_9F4A9E: LateMemCall
  loc_9F4AA4: ExitProcHresult
End Function
