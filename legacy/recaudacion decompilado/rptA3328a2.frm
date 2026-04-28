VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3328a2
  Caption = "Acuerdo 3328 Artículo 2"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3328a2.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10680
  ClientHeight = 3372
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
    Top = 3120
    Width = 10680
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptA3328a2.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9360
    Top = 2040
    Width = 855
    Height = 735
    TabIndex = 7
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptA3328a2.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3328a2.frx":0B9C
    Left = 9960
    Top = 1800
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1800
    Width = 1815
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1800
    Width = 4095
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 4
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 3
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10455
    Height = 1695
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton ActiConcCmd
      Left = 3840
      Top = 1080
      Width = 450
      Height = 360
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "rptA3328a2.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8640
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 6
    End
    Begin MSMask.MaskEdBox ActiConcMsk
      Left = 2160
      Top = 1080
      Width = 1575
      Height = 360
      TabIndex = 1
      OleObjectBlob = "rptA3328a2.frx":0CFA
    End
    Begin MSMask.MaskEdBox PeriodoMsk
      Left = 2160
      Top = 480
      Width = 735
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptA3328a2.frx":0D96
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1230
      Top = 480
      Width = 870
      Height = 300
      TabIndex = 15
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label DetaActiLbl
      ForeColor = &HFF0000&
      Left = 4440
      Top = 1080
      Width = 5775
      Height = 360
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label8
      Caption = "Cuenta Contable:"
      Left = 240
      Top = 1080
      Width = 1860
      Height = 300
      TabIndex = 13
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9600
    Top = 2280
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptA3328a2.frx":0E26
  End
End

Attribute VB_Name = "rptA3328a2"

Public bGenerado As Boolean

Private Type UDT_1_00560654
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub cmdPredeterminada_Click() '9CEA88
  'Data Table: 46F704
  loc_9CEA70: LitI2_Byte 0
  loc_9CEA72: ILdRf Me
  loc_9CEA75: CastAd
  loc_9CEA78: FStAdFunc var_88
  loc_9CEA7B: FLdRfVar var_88
  loc_9CEA7E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CEA83: FFree1Ad var_88
  loc_9CEA86: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AC0700
  'Data Table: 46F704
  loc_AC061C: LitI2_Byte 0
  loc_AC061E: FLdPr Me
  loc_AC0621: MemStI2 bGenerado
  loc_AC0624: LitI2_Byte 0
  loc_AC0626: ILdRf Me
  loc_AC0629: CastAd
  loc_AC062C: FStAdFunc var_88
  loc_AC062F: FLdRfVar var_88
  loc_AC0632: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AC0637: FFree1Ad var_88
  loc_AC063A: LitI2_Byte 0
  loc_AC063C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC0641: CVarDate var_A8
  loc_AC0645: FLdRfVar var_B8
  loc_AC0648: ImpAdCallFPR4  = Year()
  loc_AC064D: LitI2_Byte 0
  loc_AC064F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC0654: CVarDate var_F8
  loc_AC0658: FLdRfVar var_108
  loc_AC065B: ImpAdCallFPR4  = Year()
  loc_AC0660: LitVarI2 var_138, 2000
  loc_AC0665: FLdRfVar var_108
  loc_AC0668: FLdRfVar var_B8
  loc_AC066B: LitVarI2 var_C8, 2000
  loc_AC0670: HardType
  loc_AC0671: GeVar var_D8
  loc_AC0675: FStVar var_118
  loc_AC0679: FLdRfVar var_118
  loc_AC067C: FLdRfVar var_148
  loc_AC067F: ImpAdCallFPR4  = IIf(, , )
  loc_AC0684: FLdRfVar var_148
  loc_AC0687: CStrVarTmp
  loc_AC0688: CVarStr var_158
  loc_AC068B: PopAdLdVar
  loc_AC068C: FLdPr Me
  loc_AC068F: VCallAd Control_ID_PeriodoMsk
  loc_AC0692: FStAdFunc var_88
  loc_AC0695: FLdPr var_88
  loc_AC0698: LateIdSt
  loc_AC069D: FFree1Ad var_88
  loc_AC06A0: FFreeVar var_A8 = "": var_B8 = "": var_F8 = "": var_118 = "": var_108 = "": var_138 = "": var_148 = ""
  loc_AC06B3: LitVarStr var_98, vbNullString
  loc_AC06B8: PopAdLdVar
  loc_AC06B9: FLdPr Me
  loc_AC06BC: VCallAd Control_ID_ActiConcMsk
  loc_AC06BF: FStAdFunc var_88
  loc_AC06C2: FLdPr var_88
  loc_AC06C5: LateIdSt
  loc_AC06CA: FFree1Ad var_88
  loc_AC06CD: LitStr vbNullString
  loc_AC06D0: FLdPr Me
  loc_AC06D3: VCallAd Control_ID_DetaActiLbl
  loc_AC06D6: FStAdFunc var_88
  loc_AC06D9: FLdPr var_88
  loc_AC06DC: Me.Caption = from_stack_1
  loc_AC06E1: FFree1Ad var_88
  loc_AC06E4: Call HabilitarCriterio()
  loc_AC06E9: ILdRf Me
  loc_AC06EC: CastAd
  loc_AC06EF: FStAdFunc var_88
  loc_AC06F2: FLdRfVar var_88
  loc_AC06F5: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AC06FA: FFree1Ad var_88
  loc_AC06FD: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CEAD4
  'Data Table: 46F704
  loc_9CEABC: ILdRf Me
  loc_9CEABF: CastAd
  loc_9CEAC2: FStAdFunc var_88
  loc_9CEAC5: FLdRfVar var_88
  loc_9CEAC8: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CEACD: FFree1Ad var_88
  loc_9CEAD0: ExitProcHresult
  loc_9CEAD1: FStStr arg_A00
End Sub

Private Sub ActiConcMsk_UnknownEvent_0 '9BFC18
  'Data Table: 46F704
  loc_9BFC04: FLdPr Me
  loc_9BFC07: VCallAd Control_ID_ActiConcMsk
  loc_9BFC0A: CVarAd
  loc_9BFC0E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFC13: FFree1Var var_94 = ""
  loc_9BFC16: ExitProcHresult
End Sub

Private Function ActiConcMsk_UnknownEvent_8(arg_C) 'AD73B4
  'Data Table: 46F704
  loc_AD7290: FLdPr Me
  loc_AD7293: VCallAd Control_ID_PeriodoMsk
  loc_AD7296: FStAdFunc var_88
  loc_AD7299: FLdPr var_88
  loc_AD729C: LateIdLdVar var_98 DispID_22 0
  loc_AD72A3: PopAd
  loc_AD72A5: FLdPr Me
  loc_AD72A8: VCallAd Control_ID_ActiConcMsk
  loc_AD72AB: FStAdFunc var_9C
  loc_AD72AE: FLdPr var_9C
  loc_AD72B1: LateIdLdVar var_AC DispID_22 0
  loc_AD72B8: PopAd
  loc_AD72BA: LitI4 0
  loc_AD72BF: LitI4 0
  loc_AD72C4: FLdRfVar var_B8
  loc_AD72C7: Redim
  loc_AD72D1: LitVarStr var_C8, "1"
  loc_AD72D6: LitI4 0
  loc_AD72DB: ILdRf var_B8
  loc_AD72DE: Ary1StVarCopy
  loc_AD72E0: FLdRfVar var_B8
  loc_AD72E3: FLdRfVar var_AC
  loc_AD72E6: CStrVarTmp
  loc_AD72E7: FStStrNoPop var_B4
  loc_AD72EA: FLdRfVar var_98
  loc_AD72ED: CStrVarTmp
  loc_AD72EE: FStStrNoPop var_B0
  loc_AD72F1: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AD72F6: FStStr var_CC
  loc_AD72F9: FLdRfVar var_B8
  loc_AD72FC: Erase
  loc_AD72FD: ILdRf var_CC
  loc_AD7300: FLdPr Me
  loc_AD7303: MemStStrCopy
  loc_AD7307: FFreeStr var_B0 = "": var_B4 = ""
  loc_AD7310: FFreeAd var_88 = ""
  loc_AD7317: FFreeVar var_98 = ""
  loc_AD731E: FLdPr Me
  loc_AD7321: VCallAd Control_ID_ActiConcMsk
  loc_AD7324: FStAdFuncNoPop
  loc_AD7327: CastAd
  loc_AD732A: FStAdFunc var_9C
  loc_AD732D: FLdRfVar var_9C
  loc_AD7330: FLdPr Me
  loc_AD7333: MemLdStr global_108
  loc_AD7336: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AD733B: IStI2 arg_C
  loc_AD733E: FFreeAd var_88 = ""
  loc_AD7345: ILdI2 arg_C
  loc_AD7348: NotI4
  loc_AD7349: BranchF loc_AD73B3
  loc_AD734C: FLdPr Me
  loc_AD734F: VCallAd Control_ID_PeriodoMsk
  loc_AD7352: FStAdFunc var_88
  loc_AD7355: FLdPr var_88
  loc_AD7358: LateIdLdVar var_98 DispID_22 0
  loc_AD735F: PopAd
  loc_AD7361: FLdPr Me
  loc_AD7364: VCallAd Control_ID_ActiConcMsk
  loc_AD7367: FStAdFunc var_9C
  loc_AD736A: FLdPr var_9C
  loc_AD736D: LateIdLdVar var_AC DispID_22 0
  loc_AD7374: CStrVarTmp
  loc_AD7375: FStStrNoPop var_B4
  loc_AD7378: FLdRfVar var_98
  loc_AD737B: CStrVarTmp
  loc_AD737C: FStStrNoPop var_B0
  loc_AD737F: CI2Str
  loc_AD7381: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AD7386: FStStrNoPop var_CC
  loc_AD7389: FLdPr Me
  loc_AD738C: VCallAd Control_ID_DetaActiLbl
  loc_AD738F: FStAdFunc var_D0
  loc_AD7392: FLdPr var_D0
  loc_AD7395: Me.Caption = from_stack_1
  loc_AD739A: FFreeStr var_B0 = "": var_B4 = ""
  loc_AD73A3: FFreeAd var_88 = "": var_9C = ""
  loc_AD73AC: FFreeVar var_98 = ""
  loc_AD73B3: ExitProcHresult
End Function

Private Sub Form_Load() '9E3E3C
  'Data Table: 46F704
  loc_9E3E20: ILdRf Me
  loc_9E3E23: CastAd
  loc_9E3E26: FStAdFunc var_88
  loc_9E3E29: FLdRfVar var_88
  loc_9E3E2C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E3E31: FFree1Ad var_88
  loc_9E3E34: Call cmdNueva_Click()
  loc_9E3E39: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CEA3C
  'Data Table: 46F704
  loc_9CEA24: FLdPr Me
  loc_9CEA27: VCallAd Control_ID_wbbReporte
  loc_9CEA2A: FStAdFunc var_88
  loc_9CEA2D: FLdRfVar var_88
  loc_9CEA30: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CEA35: FFree1Ad var_88
  loc_9CEA38: ExitProcHresult
  loc_9CEA39: Ary1LdRf
  loc_9CEA3A: MulI4
End Sub

Private Sub PeriodoMsk_UnknownEvent_0 '9BFCA8
  'Data Table: 46F704
  loc_9BFC94: FLdPr Me
  loc_9BFC97: VCallAd Control_ID_PeriodoMsk
  loc_9BFC9A: CVarAd
  loc_9BFC9E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFCA3: FFree1Var var_94 = ""
  loc_9BFCA6: ExitProcHresult
End Sub

Private Sub PeriodoMsk_UnknownEvent_8 'A90D2C
  'Data Table: 46F704
  loc_A90C98: FLdPr Me
  loc_A90C9B: VCallAd Control_ID_PeriodoMsk
  loc_A90C9E: FStAdFunc var_88
  loc_A90CA1: FLdPr var_88
  loc_A90CA4: LateIdLdVar var_98 DispID_22 0
  loc_A90CAB: PopAd
  loc_A90CAD: LitVarStr var_DC, "El periodo debe ser superior o igual a 2000"
  loc_A90CB2: FStVarCopyObj var_EC
  loc_A90CB5: FLdRfVar var_EC
  loc_A90CB8: LitVarStr var_BC, vbNullString
  loc_A90CBD: FStVarCopyObj var_CC
  loc_A90CC0: FLdRfVar var_CC
  loc_A90CC3: FLdRfVar var_98
  loc_A90CC6: CStrVarTmp
  loc_A90CC7: FStStrNoPop var_9C
  loc_A90CCA: CR8Str
  loc_A90CCC: LitI2 2000
  loc_A90CCF: CR8I2
  loc_A90CD0: GeR8
  loc_A90CD1: CVarBoolI2 var_AC
  loc_A90CD5: FLdRfVar var_FC
  loc_A90CD8: ImpAdCallFPR4  = IIf(, , )
  loc_A90CDD: FLdRfVar var_FC
  loc_A90CE0: CStrVarTmp
  loc_A90CE1: FStStrNoPop var_100
  loc_A90CE4: FLdPr Me
  loc_A90CE7: MemStStrCopy
  loc_A90CEB: FFreeStr var_9C = ""
  loc_A90CF2: FFree1Ad var_88
  loc_A90CF5: FFreeVar var_98 = "": var_AC = "": var_CC = "": var_EC = ""
  loc_A90D02: FLdPr Me
  loc_A90D05: VCallAd Control_ID_PeriodoMsk
  loc_A90D08: FStAdFuncNoPop
  loc_A90D0B: CastAd
  loc_A90D0E: FStAdFunc var_104
  loc_A90D11: FLdRfVar var_104
  loc_A90D14: FLdPr Me
  loc_A90D17: MemLdStr global_108
  loc_A90D1A: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A90D1F: IStI2 Cancel
  loc_A90D22: FFreeAd var_88 = ""
  loc_A90D29: ExitProcHresult
End Sub

Private Sub ActiConcCmd_Click() 'AB4884
  'Data Table: 46F704
  loc_AB47B0: ImpAdLdRf MemVar_D9468C
  loc_AB47B3: NewIfNullAd
  loc_AB47B6: FStAd var_88 
  loc_AB47BA: LitStr "SELECT DISTINCT(CodiCuco), cu.* FROM infogov.cuentacontable as cu"
  loc_AB47BD: LitStr " LEFT JOIN concepto as co ON co.PeriInfo = cu.PeriInfo AND co.ActiConc = cu.CodiCuco AND ActiConc <> ''"
  loc_AB47C0: ConcatStr
  loc_AB47C1: FStStrNoPop var_8C
  loc_AB47C4: LitStr " WHERE co.PeriInfo = "
  loc_AB47C7: ConcatStr
  loc_AB47C8: FStStrNoPop var_A4
  loc_AB47CB: FLdPr Me
  loc_AB47CE: VCallAd Control_ID_PeriodoMsk
  loc_AB47D1: FStAdFunc var_90
  loc_AB47D4: FLdPr var_90
  loc_AB47D7: LateIdLdVar var_A0 DispID_22 0
  loc_AB47DE: CStrVarTmp
  loc_AB47DF: FStStrNoPop var_A8
  loc_AB47E2: ConcatStr
  loc_AB47E3: FStStrNoPop var_AC
  loc_AB47E6: LitStr " ORDER BY co.ActiConc"
  loc_AB47E9: ConcatStr
  loc_AB47EA: FStStrNoPop var_B0
  loc_AB47ED: FLdPr var_88
  loc_AB47F0: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AB47F5: FFreeStr var_8C = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AB4802: FFree1Ad var_90
  loc_AB4805: FFree1Var var_A0 = ""
  loc_AB4808: LitVar_Missing var_D0
  loc_AB480B: PopAdLdVar
  loc_AB480C: LitVarI4
  loc_AB4814: PopAdLdVar
  loc_AB4815: FLdPr var_88
  loc_AB4818: Me.Show from_stack_1, from_stack_2
  loc_AB481D: FLdRfVar var_8C
  loc_AB4820: FLdPr var_88
  loc_AB4823: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AB4828: FLdZeroAd var_8C
  loc_AB482B: CVarStr var_A0
  loc_AB482E: PopAdLdVar
  loc_AB482F: FLdPr Me
  loc_AB4832: VCallAd Control_ID_ActiConcMsk
  loc_AB4835: FStAdFunc var_90
  loc_AB4838: FLdPr var_90
  loc_AB483B: LateIdSt
  loc_AB4840: FFree1Ad var_90
  loc_AB4843: FFree1Var var_A0 = ""
  loc_AB4846: LitStr vbNullString
  loc_AB4849: FLdPr var_88
  loc_AB484C: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AB4851: FLdRfVar var_8C
  loc_AB4854: FLdPr var_88
  loc_AB4857: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AB485C: ILdRf var_8C
  loc_AB485F: FLdPr Me
  loc_AB4862: VCallAd Control_ID_DetaActiLbl
  loc_AB4865: FStAdFunc var_90
  loc_AB4868: FLdPr var_90
  loc_AB486B: Me.Caption = from_stack_1
  loc_AB4870: FFree1Str var_8C
  loc_AB4873: FFree1Ad var_90
  loc_AB4876: LitNothing
  loc_AB4878: FStAd var_88 
  loc_AB487C: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AB4881: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A04C14
  'Data Table: 46F704
  loc_A04BE4: LitVarStr var_94, "Cerrando..."
  loc_A04BE9: PopAdLdVar
  loc_A04BEA: FLdPr Me
  loc_A04BED: VCallAd Control_ID_statusBar
  loc_A04BF0: FStAdFunc var_A8
  loc_A04BF3: FLdPr var_A8
  loc_A04BF6: LateIdSt
  loc_A04BFB: FFree1Ad var_A8
  loc_A04BFE: ILdRf Me
  loc_A04C01: FStAdNoPop
  loc_A04C05: ImpAdLdRf MemVar_D9C5D8
  loc_A04C08: NewIfNullPr Global
  loc_A04C0B: Global.Unload from_stack_1
  loc_A04C10: FFree1Ad var_A8
  loc_A04C13: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A142C0
  'Data Table: 46F704
  loc_A14288: FLdPr Me
  loc_A1428B: VCallAd Control_ID_statusBar
  loc_A1428E: FStAdFunc var_88
  loc_A14291: FLdPr var_88
  loc_A14294: LateIdLdVar var_98 DispID_1 0
  loc_A1429B: CStrVarTmp
  loc_A1429C: CVarStr var_A8
  loc_A1429F: PopAdLdVar
  loc_A142A0: FLdPr Me
  loc_A142A3: VCallAd Control_ID_statusBar
  loc_A142A6: FStAdFunc var_BC
  loc_A142A9: FLdPr var_BC
  loc_A142AC: LateIdSt
  loc_A142B1: FFreeAd var_88 = ""
  loc_A142B8: FFreeVar var_98 = ""
  loc_A142BF: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E3DEC
  'Data Table: 46F704
  loc_9E3DD0: LitI2_Byte 0
  loc_9E3DD2: PopTmpLdAd2 var_8A
  loc_9E3DD5: ILdRf Me
  loc_9E3DD8: CastAd
  loc_9E3DDB: FStAdFunc var_88
  loc_9E3DDE: FLdRfVar var_88
  loc_9E3DE1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E3DE6: FFree1Ad var_88
  loc_9E3DE9: ExitProcHresult
  loc_9E3DEA: ArrayRebase1Var
End Sub

Public Function bGeneradoGet() '470360
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47036F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5E040
  'Data Table: 46F704
  loc_A5DFEC: LitI4 0
  loc_A5DFF1: LitI4 2
  loc_A5DFF6: FLdRfVar var_88
  loc_A5DFF9: Redim
  loc_A5E003: FLdPr Me
  loc_A5E006: VCallAd Control_ID_PeriodoMsk
  loc_A5E009: CVarAd
  loc_A5E00D: ParmAry1St
  loc_A5E013: FLdPr Me
  loc_A5E016: VCallAd Control_ID_ActiConcMsk
  loc_A5E019: CVarAd
  loc_A5E01D: ParmAry1St
  loc_A5E023: FLdPr Me
  loc_A5E026: VCallAd Control_ID_ActiConcCmd
  loc_A5E029: CVarAd
  loc_A5E02D: ParmAry1St
  loc_A5E033: FLdRfVar var_88
  loc_A5E036: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5E03B: FLdRfVar var_88
  loc_A5E03E: Erase
  loc_A5E03F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BA57AC
  'Data Table: 46F704
  loc_BA5234: FLdPr Me
  loc_BA5237: MemLdI2 bGenerado
  loc_BA523A: BranchF loc_BA523E
  loc_BA523D: ExitProcHresult
  loc_BA523E: LitVarStr var_94, "Generando reporte..."
  loc_BA5243: PopAdLdVar
  loc_BA5244: FLdPr Me
  loc_BA5247: VCallAd Control_ID_statusBar
  loc_BA524A: FStAdFunc var_A8
  loc_BA524D: FLdPr var_A8
  loc_BA5250: LateIdSt
  loc_BA5255: FFree1Ad var_A8
  loc_BA5258: LitI4 &HB
  loc_BA525D: CI2I4
  loc_BA525E: FLdPr Me
  loc_BA5261: Me.MousePointer = from_stack_1
  loc_BA5266: LitI2_Byte 0
  loc_BA5268: PopTmpLdAd2 var_AA
  loc_BA526B: Call PeriodoMsk_UnknownEvent_8()
  loc_BA5270: FLdPr Me
  loc_BA5273: MemLdStr global_108
  loc_BA5276: LitStr vbNullString
  loc_BA5279: NeStr
  loc_BA527B: BranchF loc_BA5281
  loc_BA527E: Branch loc_BA5783
  loc_BA5281: LitI2_Byte 0
  loc_BA5283: PopTmpLdAd2 var_AA
  loc_BA5286: from_stack_2v = ActiConcMsk_UnknownEvent_8(from_stack_1v)
  loc_BA528B: FLdPr Me
  loc_BA528E: MemLdStr global_108
  loc_BA5291: LitStr vbNullString
  loc_BA5294: NeStr
  loc_BA5296: BranchF loc_BA529C
  loc_BA5299: Branch loc_BA5783
  loc_BA529C: FLdPr Me
  loc_BA529F: MemLdRfVar from_stack_1.global_92
  loc_BA52A2: NewIfNullAd
  loc_BA52A5: FStAd var_B0 
  loc_BA52A9: LitStr "DROP TEMPORARY TABLE IF EXISTS gestionjudicial; CREATE TEMPORARY TABLE gestionjudicial"
  loc_BA52AC: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeApre, FealCtct, FeveCtct, sum(Debectct)-Sum(CredCtct) as Saldo FROM ctacte "
  loc_BA52AF: ConcatStr
  loc_BA52B0: FStStrNoPop var_B4
  loc_BA52B3: LitStr " INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc "
  loc_BA52B6: ConcatStr
  loc_BA52B7: FStStrNoPop var_B8
  loc_BA52BA: LitStr " AND concepto.PeriInfo = "
  loc_BA52BD: ConcatStr
  loc_BA52BE: FStStrNoPop var_CC
  loc_BA52C1: FLdPr Me
  loc_BA52C4: VCallAd Control_ID_PeriodoMsk
  loc_BA52C7: FStAdFunc var_A8
  loc_BA52CA: FLdPr var_A8
  loc_BA52CD: LateIdLdVar var_C8 DispID_22 0
  loc_BA52D4: CStrVarTmp
  loc_BA52D5: FStStrNoPop var_D0
  loc_BA52D8: ConcatStr
  loc_BA52D9: FStStrNoPop var_D4
  loc_BA52DC: LitStr " AND concepto.ActiConc = '"
  loc_BA52DF: ConcatStr
  loc_BA52E0: FStStrNoPop var_EC
  loc_BA52E3: FLdPr Me
  loc_BA52E6: VCallAd Control_ID_ActiConcMsk
  loc_BA52E9: FStAdFunc var_D8
  loc_BA52EC: FLdPr var_D8
  loc_BA52EF: LateIdLdVar var_E8 DispID_22 0
  loc_BA52F6: CStrVarTmp
  loc_BA52F7: FStStrNoPop var_F0
  loc_BA52FA: ConcatStr
  loc_BA52FB: FStStrNoPop var_F4
  loc_BA52FE: LitStr "'"
  loc_BA5301: ConcatStr
  loc_BA5302: FStStrNoPop var_F8
  loc_BA5305: LitStr " WHERE year(FealCtct) <= "
  loc_BA5308: ConcatStr
  loc_BA5309: FStStrNoPop var_110
  loc_BA530C: FLdPr Me
  loc_BA530F: VCallAd Control_ID_PeriodoMsk
  loc_BA5312: FStAdFunc var_FC
  loc_BA5315: FLdPr var_FC
  loc_BA5318: LateIdLdVar var_10C DispID_22 0
  loc_BA531F: CStrVarTmp
  loc_BA5320: FStStrNoPop var_114
  loc_BA5323: ConcatStr
  loc_BA5324: FStStrNoPop var_118
  loc_BA5327: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct;"
  loc_BA532A: ConcatStr
  loc_BA532B: FStStrNoPop var_11C
  loc_BA532E: FLdPr var_B0
  loc_BA5331: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BA5336: FFreeStr var_B4 = "": var_B8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_118 = ""
  loc_BA5353: FFreeAd var_A8 = "": var_D8 = ""
  loc_BA535C: FFreeVar var_C8 = "": var_E8 = ""
  loc_BA5365: LitStr " DROP TEMPORARY TABLE IF EXISTS gj; CREATE TEMPORARY TABLE gj"
  loc_BA5368: LitStr " SELECT year(FealCtct) as Periodo,"
  loc_BA536B: ConcatStr
  loc_BA536C: FStStrNoPop var_B4
  loc_BA536F: LitStr " SUM(if(year(FeveCtct)>"
  loc_BA5372: ConcatStr
  loc_BA5373: FStStrNoPop var_CC
  loc_BA5376: FLdPr Me
  loc_BA5379: VCallAd Control_ID_PeriodoMsk
  loc_BA537C: FStAdFunc var_A8
  loc_BA537F: FLdPr var_A8
  loc_BA5382: LateIdLdVar var_C8 DispID_22 0
  loc_BA5389: CStrVarTmp
  loc_BA538A: FStStrNoPop var_B8
  loc_BA538D: CI2Str
  loc_BA538F: LitI2_Byte 1
  loc_BA5391: SubI2
  loc_BA5392: CStrUI1
  loc_BA5394: FStStrNoPop var_D0
  loc_BA5397: ConcatStr
  loc_BA5398: FStStrNoPop var_D4
  loc_BA539B: LitStr " AND gestionjudicial.NumeApre=0,Saldo,0)) as Normal,"
  loc_BA539E: ConcatStr
  loc_BA539F: FStStrNoPop var_EC
  loc_BA53A2: LitStr " SUM(if(year(FeveCtct)<="
  loc_BA53A5: ConcatStr
  loc_BA53A6: FStStrNoPop var_F4
  loc_BA53A9: FLdPr Me
  loc_BA53AC: VCallAd Control_ID_PeriodoMsk
  loc_BA53AF: FStAdFunc var_D8
  loc_BA53B2: FLdPr var_D8
  loc_BA53B5: LateIdLdVar var_E8 DispID_22 0
  loc_BA53BC: CStrVarTmp
  loc_BA53BD: FStStrNoPop var_F0
  loc_BA53C0: CI2Str
  loc_BA53C2: LitI2_Byte 1
  loc_BA53C4: SubI2
  loc_BA53C5: CStrUI1
  loc_BA53C7: FStStrNoPop var_F8
  loc_BA53CA: ConcatStr
  loc_BA53CB: FStStrNoPop var_110
  loc_BA53CE: LitStr " AND gestionjudicial.NumeApre=0,Saldo,0)) as Moroso,"
  loc_BA53D1: ConcatStr
  loc_BA53D2: FStStrNoPop var_114
  loc_BA53D5: LitStr " SUM(if(gestionjudicial.NumeApre<>0 AND apremio.CodiInju <= 1,Saldo,0)) as apre,"
  loc_BA53D8: ConcatStr
  loc_BA53D9: FStStrNoPop var_118
  loc_BA53DC: LitStr " SUM(if(gestionjudicial.NumeApre<>0 AND apremio.CodiInju > 1,Saldo,0)) as judi"
  loc_BA53DF: ConcatStr
  loc_BA53E0: FStStrNoPop var_11C
  loc_BA53E3: LitStr " FROM gestionjudicial LEFT JOIN apremio ON apremio.NumeApre = gestionjudicial.NumeApre"
  loc_BA53E6: ConcatStr
  loc_BA53E7: FStStrNoPop var_120
  loc_BA53EA: LitStr " WHERE year(FealCtct) BETWEEN 2001 AND "
  loc_BA53ED: ConcatStr
  loc_BA53EE: FStStrNoPop var_124
  loc_BA53F1: FLdPr Me
  loc_BA53F4: VCallAd Control_ID_PeriodoMsk
  loc_BA53F7: FStAdFunc var_FC
  loc_BA53FA: FLdPr var_FC
  loc_BA53FD: LateIdLdVar var_10C DispID_22 0
  loc_BA5404: CStrVarTmp
  loc_BA5405: FStStrNoPop var_128
  loc_BA5408: ConcatStr
  loc_BA5409: FStStrNoPop var_12C
  loc_BA540C: LitStr " GROUP BY year(FealCtct);"
  loc_BA540F: ConcatStr
  loc_BA5410: FStStrNoPop var_130
  loc_BA5413: LitStr " INSERT INTO gj"
  loc_BA5416: ConcatStr
  loc_BA5417: FStStrNoPop var_134
  loc_BA541A: LitStr " SELECT 2000 as Periodo, "
  loc_BA541D: ConcatStr
  loc_BA541E: FStStrNoPop var_138
  loc_BA5421: LitStr " SUM(if(year(FeveCtct)>"
  loc_BA5424: ConcatStr
  loc_BA5425: FStStrNoPop var_154
  loc_BA5428: FLdPr Me
  loc_BA542B: VCallAd Control_ID_PeriodoMsk
  loc_BA542E: FStAdFunc var_13C
  loc_BA5431: FLdPr var_13C
  loc_BA5434: LateIdLdVar var_14C DispID_22 0
  loc_BA543B: CStrVarTmp
  loc_BA543C: FStStrNoPop var_150
  loc_BA543F: CI2Str
  loc_BA5441: LitI2_Byte 1
  loc_BA5443: SubI2
  loc_BA5444: CStrUI1
  loc_BA5446: FStStrNoPop var_158
  loc_BA5449: ConcatStr
  loc_BA544A: FStStrNoPop var_15C
  loc_BA544D: LitStr " AND gestionjudicial.NumeApre=0,Saldo,0)) as Normal,"
  loc_BA5450: ConcatStr
  loc_BA5451: FStStrNoPop var_160
  loc_BA5454: LitStr " SUM(if(year(FeveCtct)<="
  loc_BA5457: ConcatStr
  loc_BA5458: FStStrNoPop var_17C
  loc_BA545B: FLdPr Me
  loc_BA545E: VCallAd Control_ID_PeriodoMsk
  loc_BA5461: FStAdFunc var_164
  loc_BA5464: FLdPr var_164
  loc_BA5467: LateIdLdVar var_174 DispID_22 0
  loc_BA546E: CStrVarTmp
  loc_BA546F: FStStrNoPop var_178
  loc_BA5472: CI2Str
  loc_BA5474: LitI2_Byte 1
  loc_BA5476: SubI2
  loc_BA5477: CStrUI1
  loc_BA5479: FStStrNoPop var_180
  loc_BA547C: ConcatStr
  loc_BA547D: FStStrNoPop var_184
  loc_BA5480: LitStr " AND gestionjudicial.NumeApre=0,Saldo,0)) as Moroso,"
  loc_BA5483: ConcatStr
  loc_BA5484: FStStrNoPop var_188
  loc_BA5487: LitStr " SUM(if(gestionjudicial.NumeApre<>0 AND apremio.CodiInju <= 1,Saldo,0)) as apre,"
  loc_BA548A: ConcatStr
  loc_BA548B: FStStrNoPop var_18C
  loc_BA548E: LitStr " SUM(if(gestionjudicial.NumeApre<>0 AND apremio.CodiInju > 1,Saldo,0)) as judi"
  loc_BA5491: ConcatStr
  loc_BA5492: FStStrNoPop var_190
  loc_BA5495: LitStr " FROM gestionjudicial "
  loc_BA5498: ConcatStr
  loc_BA5499: FStStrNoPop var_194
  loc_BA549C: LitStr " LEFT JOIN apremio ON apremio.NumeApre = gestionjudicial.NumeApre"
  loc_BA549F: ConcatStr
  loc_BA54A0: FStStrNoPop var_198
  loc_BA54A3: LitStr " WHERE year(FealCtct)<=2000;"
  loc_BA54A6: ConcatStr
  loc_BA54A7: FStStrNoPop var_19C
  loc_BA54AA: LitStr " DROP TEMPORARY TABLE IF EXISTS gestionjudicial;"
  loc_BA54AD: ConcatStr
  loc_BA54AE: FStStrNoPop var_1A0
  loc_BA54B1: FLdPr var_B0
  loc_BA54B4: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BA54B9: FFreeStr var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_B4 = "": var_B8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_BA5504: FFreeAd var_A8 = "": var_D8 = "": var_FC = "": var_13C = ""
  loc_BA5511: FFreeVar var_C8 = "": var_E8 = "": var_10C = "": var_14C = ""
  loc_BA551E: LitStr "SELECT *, Normal+Moroso+apre+judi as Total FROM gj HAVING Total > 0 ORDER BY Periodo"
  loc_BA5521: FLdPr var_B0
  loc_BA5524: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BA5529: FLdRfVar var_1A4
  loc_BA552C: FLdPr var_B0
  loc_BA552F: from_stack_1 = clsapremio.RecordCount
  loc_BA5534: ILdRf var_1A4
  loc_BA5537: LitI4 0
  loc_BA553C: EqI4
  loc_BA553D: BranchF loc_BA554B
  loc_BA5540: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BA5543: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA5548: Branch loc_BA5783
  loc_BA554B: LitI4 0
  loc_BA5550: LitI4 1
  loc_BA5555: FLdPr Me
  loc_BA5558: MemLdRfVar from_stack_1.global_104
  loc_BA555B: Redim
  loc_BA5565: LitI4 0
  loc_BA556A: FLdRfVar var_1A4
  loc_BA556D: FLdPr var_B0
  loc_BA5570: from_stack_1 = clsapremio.RecordCount
  loc_BA5575: ILdRf var_1A4
  loc_BA5578: FLdPr Me
  loc_BA557B: MemLdRfVar from_stack_1.global_96
  loc_BA557E: Redim
  loc_BA5588: FLdPr var_B0
  loc_BA558B: Call clsapremio.MoveFirst()
  loc_BA5590: LitI2_Byte 1
  loc_BA5592: FLdPr Me
  loc_BA5595: MemLdRfVar from_stack_1.global_100
  loc_BA5598: FLdPr Me
  loc_BA559B: MemLdStr global_96
  loc_BA559E: LitI2_Byte 1
  loc_BA55A0: FnUBound
  loc_BA55A2: CI2I4
  loc_BA55A3: ForI2 var_1A8
  loc_BA55A9: FLdRfVar var_AA
  loc_BA55AC: FLdPr var_B0
  loc_BA55AF: from_stack_1 = clsapremio.Periodo
  loc_BA55B4: LitI2_Byte 0
  loc_BA55B6: LitVar_Missing var_C8
  loc_BA55B9: LitI2_Byte 0
  loc_BA55BB: FLdI2 var_AA
  loc_BA55BE: CVarI2 var_94
  loc_BA55C1: PopAdLdVar
  loc_BA55C2: FLdPr Me
  loc_BA55C5: MemLdI2 global_100
  loc_BA55C8: CI4UI1
  loc_BA55C9: FLdPr Me
  loc_BA55CC: MemLdStr global_96
  loc_BA55CF: AryLock
  loc_BA55D2: Ary1LdPr
  loc_BA55D3: MemLdRfVar from_stack_1.global_0
  loc_BA55D6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA55DB: AryUnlock
  loc_BA55DE: FFree1Var var_C8 = ""
  loc_BA55E1: FLdRfVar var_C8
  loc_BA55E4: FLdPr var_B0
  loc_BA55E7: from_stack_1 = clsapremio.Normal
  loc_BA55EC: LitI2_Byte 0
  loc_BA55EE: LitI4 1
  loc_BA55F3: FLdPr Me
  loc_BA55F6: MemLdStr global_104
  loc_BA55F9: AryLock
  loc_BA55FC: Ary1LdPr
  loc_BA55FD: MemLdRfVar from_stack_1.global_4
  loc_BA5600: CVarRef
  loc_BA5605: LitI2_Byte &HFF
  loc_BA5607: FLdVar var_C8
  loc_BA560B: FLdPr Me
  loc_BA560E: MemLdI2 global_100
  loc_BA5611: CI4UI1
  loc_BA5612: FLdPr Me
  loc_BA5615: MemLdStr global_96
  loc_BA5618: AryLock
  loc_BA561B: Ary1LdPr
  loc_BA561C: MemLdRfVar from_stack_1.global_4
  loc_BA561F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA5624: AryUnlock
  loc_BA5627: AryUnlock
  loc_BA562A: FFree1Var var_C8 = ""
  loc_BA562D: FLdRfVar var_C8
  loc_BA5630: FLdPr var_B0
  loc_BA5633: from_stack_1 = clsapremio.Moroso
  loc_BA5638: LitI2_Byte 0
  loc_BA563A: LitI4 1
  loc_BA563F: FLdPr Me
  loc_BA5642: MemLdStr global_104
  loc_BA5645: AryLock
  loc_BA5648: Ary1LdPr
  loc_BA5649: MemLdRfVar from_stack_1.global_8
  loc_BA564C: CVarRef
  loc_BA5651: LitI2_Byte &HFF
  loc_BA5653: FLdVar var_C8
  loc_BA5657: FLdPr Me
  loc_BA565A: MemLdI2 global_100
  loc_BA565D: CI4UI1
  loc_BA565E: FLdPr Me
  loc_BA5661: MemLdStr global_96
  loc_BA5664: AryLock
  loc_BA5667: Ary1LdPr
  loc_BA5668: MemLdRfVar from_stack_1.global_8
  loc_BA566B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA5670: AryUnlock
  loc_BA5673: AryUnlock
  loc_BA5676: FFree1Var var_C8 = ""
  loc_BA5679: FLdRfVar var_C8
  loc_BA567C: FLdPr var_B0
  loc_BA567F: from_stack_1 = clsapremio.Apre
  loc_BA5684: LitI2_Byte 0
  loc_BA5686: LitI4 1
  loc_BA568B: FLdPr Me
  loc_BA568E: MemLdStr global_104
  loc_BA5691: AryLock
  loc_BA5694: Ary1LdPr
  loc_BA5695: MemLdRfVar from_stack_1.global_12
  loc_BA5698: CVarRef
  loc_BA569D: LitI2_Byte &HFF
  loc_BA569F: FLdVar var_C8
  loc_BA56A3: FLdPr Me
  loc_BA56A6: MemLdI2 global_100
  loc_BA56A9: CI4UI1
  loc_BA56AA: FLdPr Me
  loc_BA56AD: MemLdStr global_96
  loc_BA56B0: AryLock
  loc_BA56B3: Ary1LdPr
  loc_BA56B4: MemLdRfVar from_stack_1.global_12
  loc_BA56B7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA56BC: AryUnlock
  loc_BA56BF: AryUnlock
  loc_BA56C2: FFree1Var var_C8 = ""
  loc_BA56C5: FLdRfVar var_C8
  loc_BA56C8: FLdPr var_B0
  loc_BA56CB: from_stack_1 = clsapremio.Judi
  loc_BA56D0: LitI2_Byte 0
  loc_BA56D2: LitI4 1
  loc_BA56D7: FLdPr Me
  loc_BA56DA: MemLdStr global_104
  loc_BA56DD: AryLock
  loc_BA56E0: Ary1LdPr
  loc_BA56E1: MemLdRfVar from_stack_1.global_16
  loc_BA56E4: CVarRef
  loc_BA56E9: LitI2_Byte &HFF
  loc_BA56EB: FLdVar var_C8
  loc_BA56EF: FLdPr Me
  loc_BA56F2: MemLdI2 global_100
  loc_BA56F5: CI4UI1
  loc_BA56F6: FLdPr Me
  loc_BA56F9: MemLdStr global_96
  loc_BA56FC: AryLock
  loc_BA56FF: Ary1LdPr
  loc_BA5700: MemLdRfVar from_stack_1.global_16
  loc_BA5703: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA5708: AryUnlock
  loc_BA570B: AryUnlock
  loc_BA570E: FFree1Var var_C8 = ""
  loc_BA5711: FLdRfVar var_C8
  loc_BA5714: FLdPr var_B0
  loc_BA5717: from_stack_1 = clsapremio.Total
  loc_BA571C: LitI2_Byte 0
  loc_BA571E: LitI4 1
  loc_BA5723: FLdPr Me
  loc_BA5726: MemLdStr global_104
  loc_BA5729: AryLock
  loc_BA572C: Ary1LdPr
  loc_BA572D: MemLdRfVar from_stack_1.global_20
  loc_BA5730: CVarRef
  loc_BA5735: LitI2_Byte &HFF
  loc_BA5737: FLdVar var_C8
  loc_BA573B: FLdPr Me
  loc_BA573E: MemLdI2 global_100
  loc_BA5741: CI4UI1
  loc_BA5742: FLdPr Me
  loc_BA5745: MemLdStr global_96
  loc_BA5748: AryLock
  loc_BA574B: Ary1LdPr
  loc_BA574C: MemLdRfVar from_stack_1.global_20
  loc_BA574F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA5754: AryUnlock
  loc_BA5757: AryUnlock
  loc_BA575A: FFree1Var var_C8 = ""
  loc_BA575D: LitI2_Byte 1
  loc_BA575F: PopTmpLdAd2 var_AA
  loc_BA5762: FLdPr var_B0
  loc_BA5765: Call clsapremio.Move(from_stack_1v)
  loc_BA576A: FLdPr Me
  loc_BA576D: MemLdRfVar from_stack_1.global_100
  loc_BA5770: NextI2 var_1A8, loc_BA55A9
  loc_BA5775: LitNothing
  loc_BA5777: FStAd var_B0 
  loc_BA577B: LitI2_Byte &HFF
  loc_BA577D: FLdPr Me
  loc_BA5780: MemStI2 bGenerado
  loc_BA5783: LitI4 0
  loc_BA5788: CI2I4
  loc_BA5789: FLdPr Me
  loc_BA578C: Me.MousePointer = from_stack_1
  loc_BA5791: LitVarStr var_94, vbNullString
  loc_BA5796: PopAdLdVar
  loc_BA5797: FLdPr Me
  loc_BA579A: VCallAd Control_ID_statusBar
  loc_BA579D: FStAdFunc var_A8
  loc_BA57A0: FLdPr var_A8
  loc_BA57A3: LateIdSt
  loc_BA57A8: FFree1Ad var_A8
  loc_BA57AB: ExitProcHresult
End Sub

Public Sub GeneraTXT() '9AF00C
  'Data Table: 46F704
  loc_9AF008: ExitProcHresult
  loc_9AF00B: PopAdLd4
End Sub

Public Sub GeneraXLS() '9AEFD8
  'Data Table: 46F704
  loc_9AEFD4: ExitProcHresult
  loc_9AEFD5: FnLBound
End Sub

Public Sub GeneraHTML() 'B3C4F4
  'Data Table: 46F704
  loc_B3C1D4: FLdRfVar var_88
  loc_B3C1D7: LitI2_Byte 0
  loc_B3C1D9: LitI2_Byte &HFF
  loc_B3C1DB: ImpAdLdI4 MemVar_D93C84
  loc_B3C1DE: FLdPr Me
  loc_B3C1E1: MemLdRfVar from_stack_1.global_56
  loc_B3C1E4: NewIfNullPr IFileSystem3
  loc_B3C1E7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B3C1EC: ILdRf var_88
  loc_B3C1EF: FLdPr Me
  loc_B3C1F2: MemStVarAd
  loc_B3C1F6: FFree1Ad var_88
  loc_B3C1F9: LitI2_Byte &HFF
  loc_B3C1FB: ImpAdStI2 MemVar_D93C8A
  loc_B3C1FE: Call Proc_152_20_BB40A4()
  loc_B3C203: LitI2_Byte 1
  loc_B3C205: FLdPr Me
  loc_B3C208: MemLdRfVar from_stack_1.global_100
  loc_B3C20B: FLdPr Me
  loc_B3C20E: MemLdStr global_96
  loc_B3C211: LitI2_Byte 1
  loc_B3C213: FnUBound
  loc_B3C215: CI2I4
  loc_B3C216: ForI2 var_8C
  loc_B3C21C: FLdPr Me
  loc_B3C21F: MemLdI2 global_100
  loc_B3C222: CI4UI1
  loc_B3C223: FLdPr Me
  loc_B3C226: MemLdStr global_96
  loc_B3C229: AryLock
  loc_B3C22C: Ary1LdRf
  loc_B3C22D: FStR4 var_94
  loc_B3C230: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3C235: PopAdLdVar
  loc_B3C236: FLdPr Me
  loc_B3C239: MemLdRfVar from_stack_1.global_60
  loc_B3C23C: LdPrVar
  loc_B3C23E: LateMemCall
  loc_B3C244: FMemLdRf unk_46F671
  loc_B3C249: CVarRef
  loc_B3C24E: LitVarStr var_B4, "hasta 2000 inclusive"
  loc_B3C253: FStVarCopyObj var_C4
  loc_B3C256: FLdRfVar var_C4
  loc_B3C259: FMemLdR4 var_94(0)
  loc_B3C25E: LitStr "2000"
  loc_B3C261: EqStr
  loc_B3C263: CVarBoolI2 var_A4
  loc_B3C267: FLdRfVar var_E4
  loc_B3C26A: ImpAdCallFPR4  = IIf(, , )
  loc_B3C26F: LitStr vbNullString
  loc_B3C272: LitI2_Byte 0
  loc_B3C274: LitI2_Byte 0
  loc_B3C276: LitI2_Byte 0
  loc_B3C278: LitStr "center"
  loc_B3C27B: FLdRfVar var_E4
  loc_B3C27E: CStrVarVal var_E8
  loc_B3C282: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C287: CVarStr var_F8
  loc_B3C28A: PopAdLdVar
  loc_B3C28B: FLdPr Me
  loc_B3C28E: MemLdRfVar from_stack_1.global_60
  loc_B3C291: LdPrVar
  loc_B3C293: LateMemCall
  loc_B3C299: FFree1Str var_E8
  loc_B3C29C: FFreeVar var_A4 = "": var_C4 = "": var_E4 = ""
  loc_B3C2A7: LitStr vbNullString
  loc_B3C2AA: LitI2_Byte 0
  loc_B3C2AC: LitI2_Byte 0
  loc_B3C2AE: LitI2_Byte 0
  loc_B3C2B0: LitStr "right"
  loc_B3C2B3: FMemLdR4 var_94(4)
  loc_B3C2B8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C2BD: CVarStr var_C4
  loc_B3C2C0: PopAdLdVar
  loc_B3C2C1: FLdPr Me
  loc_B3C2C4: MemLdRfVar from_stack_1.global_60
  loc_B3C2C7: LdPrVar
  loc_B3C2C9: LateMemCall
  loc_B3C2CF: FFree1Var var_C4 = ""
  loc_B3C2D2: LitStr vbNullString
  loc_B3C2D5: LitI2_Byte 0
  loc_B3C2D7: LitI2_Byte 0
  loc_B3C2D9: LitI2_Byte 0
  loc_B3C2DB: LitStr "right"
  loc_B3C2DE: FMemLdR4 var_94(8)
  loc_B3C2E3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C2E8: CVarStr var_C4
  loc_B3C2EB: PopAdLdVar
  loc_B3C2EC: FLdPr Me
  loc_B3C2EF: MemLdRfVar from_stack_1.global_60
  loc_B3C2F2: LdPrVar
  loc_B3C2F4: LateMemCall
  loc_B3C2FA: FFree1Var var_C4 = ""
  loc_B3C2FD: LitStr vbNullString
  loc_B3C300: LitI2_Byte 0
  loc_B3C302: LitI2_Byte 0
  loc_B3C304: LitI2_Byte 0
  loc_B3C306: LitStr "right"
  loc_B3C309: FMemLdR4 var_94(12)
  loc_B3C30E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C313: CVarStr var_C4
  loc_B3C316: PopAdLdVar
  loc_B3C317: FLdPr Me
  loc_B3C31A: MemLdRfVar from_stack_1.global_60
  loc_B3C31D: LdPrVar
  loc_B3C31F: LateMemCall
  loc_B3C325: FFree1Var var_C4 = ""
  loc_B3C328: LitStr vbNullString
  loc_B3C32B: LitI2_Byte 0
  loc_B3C32D: LitI2_Byte 0
  loc_B3C32F: LitI2_Byte 0
  loc_B3C331: LitStr "right"
  loc_B3C334: FMemLdR4 var_94(16)
  loc_B3C339: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C33E: CVarStr var_C4
  loc_B3C341: PopAdLdVar
  loc_B3C342: FLdPr Me
  loc_B3C345: MemLdRfVar from_stack_1.global_60
  loc_B3C348: LdPrVar
  loc_B3C34A: LateMemCall
  loc_B3C350: FFree1Var var_C4 = ""
  loc_B3C353: LitStr vbNullString
  loc_B3C356: LitI2_Byte 0
  loc_B3C358: LitI2_Byte 0
  loc_B3C35A: LitI2_Byte 0
  loc_B3C35C: LitStr "right"
  loc_B3C35F: FMemLdR4 var_94(20)
  loc_B3C364: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C369: CVarStr var_C4
  loc_B3C36C: PopAdLdVar
  loc_B3C36D: FLdPr Me
  loc_B3C370: MemLdRfVar from_stack_1.global_60
  loc_B3C373: LdPrVar
  loc_B3C375: LateMemCall
  loc_B3C37B: FFree1Var var_C4 = ""
  loc_B3C37E: LitVarStr var_A4, "     </tr>"
  loc_B3C383: PopAdLdVar
  loc_B3C384: FLdPr Me
  loc_B3C387: MemLdRfVar from_stack_1.global_60
  loc_B3C38A: LdPrVar
  loc_B3C38C: LateMemCall
  loc_B3C392: LitI4 0
  loc_B3C397: FStR4 var_94
  loc_B3C39A: AryUnlock
  loc_B3C39D: FLdPr Me
  loc_B3C3A0: MemLdRfVar from_stack_1.global_100
  loc_B3C3A3: NextI2 var_8C, loc_B3C21C
  loc_B3C3A8: LitVarStr var_A4, "  <tr valign=""top"" class=""Totales"" align=""right"">"
  loc_B3C3AD: PopAdLdVar
  loc_B3C3AE: FLdPr Me
  loc_B3C3B1: MemLdRfVar from_stack_1.global_60
  loc_B3C3B4: LdPrVar
  loc_B3C3B6: LateMemCall
  loc_B3C3BC: LitVarStr var_A4, "    <td>Totales</td>"
  loc_B3C3C1: PopAdLdVar
  loc_B3C3C2: FLdPr Me
  loc_B3C3C5: MemLdRfVar from_stack_1.global_60
  loc_B3C3C8: LdPrVar
  loc_B3C3CA: LateMemCall
  loc_B3C3D0: LitI4 1
  loc_B3C3D5: FLdPr Me
  loc_B3C3D8: MemLdStr global_104
  loc_B3C3DB: AryLock
  loc_B3C3DE: Ary1LdRf
  loc_B3C3DF: FStR4 var_110
  loc_B3C3E2: LitStr vbNullString
  loc_B3C3E5: LitI2_Byte 0
  loc_B3C3E7: LitI2_Byte 0
  loc_B3C3E9: LitI2_Byte 0
  loc_B3C3EB: LitStr "right"
  loc_B3C3EE: FMemLdR4 var_110(4)
  loc_B3C3F3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C3F8: CVarStr var_C4
  loc_B3C3FB: PopAdLdVar
  loc_B3C3FC: FLdPr Me
  loc_B3C3FF: MemLdRfVar from_stack_1.global_60
  loc_B3C402: LdPrVar
  loc_B3C404: LateMemCall
  loc_B3C40A: FFree1Var var_C4 = ""
  loc_B3C40D: LitStr vbNullString
  loc_B3C410: LitI2_Byte 0
  loc_B3C412: LitI2_Byte 0
  loc_B3C414: LitI2_Byte 0
  loc_B3C416: LitStr "right"
  loc_B3C419: FMemLdR4 var_110(8)
  loc_B3C41E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C423: CVarStr var_C4
  loc_B3C426: PopAdLdVar
  loc_B3C427: FLdPr Me
  loc_B3C42A: MemLdRfVar from_stack_1.global_60
  loc_B3C42D: LdPrVar
  loc_B3C42F: LateMemCall
  loc_B3C435: FFree1Var var_C4 = ""
  loc_B3C438: LitStr vbNullString
  loc_B3C43B: LitI2_Byte 0
  loc_B3C43D: LitI2_Byte 0
  loc_B3C43F: LitI2_Byte 0
  loc_B3C441: LitStr "right"
  loc_B3C444: FMemLdR4 var_110(12)
  loc_B3C449: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C44E: CVarStr var_C4
  loc_B3C451: PopAdLdVar
  loc_B3C452: FLdPr Me
  loc_B3C455: MemLdRfVar from_stack_1.global_60
  loc_B3C458: LdPrVar
  loc_B3C45A: LateMemCall
  loc_B3C460: FFree1Var var_C4 = ""
  loc_B3C463: LitStr vbNullString
  loc_B3C466: LitI2_Byte 0
  loc_B3C468: LitI2_Byte 0
  loc_B3C46A: LitI2_Byte 0
  loc_B3C46C: LitStr "right"
  loc_B3C46F: FMemLdR4 var_110(16)
  loc_B3C474: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C479: CVarStr var_C4
  loc_B3C47C: PopAdLdVar
  loc_B3C47D: FLdPr Me
  loc_B3C480: MemLdRfVar from_stack_1.global_60
  loc_B3C483: LdPrVar
  loc_B3C485: LateMemCall
  loc_B3C48B: FFree1Var var_C4 = ""
  loc_B3C48E: LitStr vbNullString
  loc_B3C491: LitI2_Byte 0
  loc_B3C493: LitI2_Byte 0
  loc_B3C495: LitI2_Byte 0
  loc_B3C497: LitStr "right"
  loc_B3C49A: FMemLdR4 var_110(20)
  loc_B3C49F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3C4A4: CVarStr var_C4
  loc_B3C4A7: PopAdLdVar
  loc_B3C4A8: FLdPr Me
  loc_B3C4AB: MemLdRfVar from_stack_1.global_60
  loc_B3C4AE: LdPrVar
  loc_B3C4B0: LateMemCall
  loc_B3C4B6: FFree1Var var_C4 = ""
  loc_B3C4B9: LitI4 0
  loc_B3C4BE: FStR4 var_110
  loc_B3C4C1: AryUnlock
  loc_B3C4C4: LitVarStr var_A4, "     </tr>"
  loc_B3C4C9: PopAdLdVar
  loc_B3C4CA: FLdPr Me
  loc_B3C4CD: MemLdRfVar from_stack_1.global_60
  loc_B3C4D0: LdPrVar
  loc_B3C4D2: LateMemCall
  loc_B3C4D8: Call Proc_152_21_A0E7B8()
  loc_B3C4DD: FLdPr Me
  loc_B3C4E0: MemLdRfVar from_stack_1.global_60
  loc_B3C4E3: LdPrVar
  loc_B3C4E5: LateMemCall
  loc_B3C4EB: LitStr vbNullString
  loc_B3C4EE: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B3C4F3: ExitProcHresult
End Sub

Private Function Proc_152_20_BB40A4() 'BB40A4
  'Data Table: 46F704
  loc_BB3A2C: LitVarStr var_98, "<html>"
  loc_BB3A31: PopAdLdVar
  loc_BB3A32: FLdPr Me
  loc_BB3A35: MemLdRfVar from_stack_1.global_60
  loc_BB3A38: LdPrVar
  loc_BB3A3A: LateMemCall
  loc_BB3A40: LitVarStr var_98, "<head>"
  loc_BB3A45: PopAdLdVar
  loc_BB3A46: FLdPr Me
  loc_BB3A49: MemLdRfVar from_stack_1.global_60
  loc_BB3A4C: LdPrVar
  loc_BB3A4E: LateMemCall
  loc_BB3A54: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BB3A59: PopAdLdVar
  loc_BB3A5A: FLdPr Me
  loc_BB3A5D: MemLdRfVar from_stack_1.global_60
  loc_BB3A60: LdPrVar
  loc_BB3A62: LateMemCall
  loc_BB3A68: LitStr "<title>"
  loc_BB3A6B: FLdRfVar var_AC
  loc_BB3A6E: FLdPr Me
  loc_BB3A71:  = Me.Caption
  loc_BB3A76: ILdRf var_AC
  loc_BB3A79: ConcatStr
  loc_BB3A7A: FStStrNoPop var_B0
  loc_BB3A7D: LitStr "</title>"
  loc_BB3A80: ConcatStr
  loc_BB3A81: CVarStr var_C0
  loc_BB3A84: PopAdLdVar
  loc_BB3A85: FLdPr Me
  loc_BB3A88: MemLdRfVar from_stack_1.global_60
  loc_BB3A8B: LdPrVar
  loc_BB3A8D: LateMemCall
  loc_BB3A93: FFreeStr var_AC = ""
  loc_BB3A9A: FFree1Var var_C0 = ""
  loc_BB3A9D: LitVarStr var_98, "<style type=""text/css"">"
  loc_BB3AA2: PopAdLdVar
  loc_BB3AA3: FLdPr Me
  loc_BB3AA6: MemLdRfVar from_stack_1.global_60
  loc_BB3AA9: LdPrVar
  loc_BB3AAB: LateMemCall
  loc_BB3AB1: LitVarStr var_98, ".Titulo1 {"
  loc_BB3AB6: PopAdLdVar
  loc_BB3AB7: FLdPr Me
  loc_BB3ABA: MemLdRfVar from_stack_1.global_60
  loc_BB3ABD: LdPrVar
  loc_BB3ABF: LateMemCall
  loc_BB3AC5: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB3ACA: PopAdLdVar
  loc_BB3ACB: FLdPr Me
  loc_BB3ACE: MemLdRfVar from_stack_1.global_60
  loc_BB3AD1: LdPrVar
  loc_BB3AD3: LateMemCall
  loc_BB3AD9: LitVarStr var_98, " font-size: 18px;"
  loc_BB3ADE: PopAdLdVar
  loc_BB3ADF: FLdPr Me
  loc_BB3AE2: MemLdRfVar from_stack_1.global_60
  loc_BB3AE5: LdPrVar
  loc_BB3AE7: LateMemCall
  loc_BB3AED: LitVarStr var_98, " font-weight: bold;"
  loc_BB3AF2: PopAdLdVar
  loc_BB3AF3: FLdPr Me
  loc_BB3AF6: MemLdRfVar from_stack_1.global_60
  loc_BB3AF9: LdPrVar
  loc_BB3AFB: LateMemCall
  loc_BB3B01: LitVarStr var_98, "}"
  loc_BB3B06: PopAdLdVar
  loc_BB3B07: FLdPr Me
  loc_BB3B0A: MemLdRfVar from_stack_1.global_60
  loc_BB3B0D: LdPrVar
  loc_BB3B0F: LateMemCall
  loc_BB3B15: LitVarStr var_98, ".Titulo2 {"
  loc_BB3B1A: PopAdLdVar
  loc_BB3B1B: FLdPr Me
  loc_BB3B1E: MemLdRfVar from_stack_1.global_60
  loc_BB3B21: LdPrVar
  loc_BB3B23: LateMemCall
  loc_BB3B29: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB3B2E: PopAdLdVar
  loc_BB3B2F: FLdPr Me
  loc_BB3B32: MemLdRfVar from_stack_1.global_60
  loc_BB3B35: LdPrVar
  loc_BB3B37: LateMemCall
  loc_BB3B3D: LitVarStr var_98, " font-size: 14px;"
  loc_BB3B42: PopAdLdVar
  loc_BB3B43: FLdPr Me
  loc_BB3B46: MemLdRfVar from_stack_1.global_60
  loc_BB3B49: LdPrVar
  loc_BB3B4B: LateMemCall
  loc_BB3B51: LitVarStr var_98, " font-weight: bold;"
  loc_BB3B56: PopAdLdVar
  loc_BB3B57: FLdPr Me
  loc_BB3B5A: MemLdRfVar from_stack_1.global_60
  loc_BB3B5D: LdPrVar
  loc_BB3B5F: LateMemCall
  loc_BB3B65: LitVarStr var_98, "}"
  loc_BB3B6A: PopAdLdVar
  loc_BB3B6B: FLdPr Me
  loc_BB3B6E: MemLdRfVar from_stack_1.global_60
  loc_BB3B71: LdPrVar
  loc_BB3B73: LateMemCall
  loc_BB3B79: LitVarStr var_98, ".Normal {"
  loc_BB3B7E: PopAdLdVar
  loc_BB3B7F: FLdPr Me
  loc_BB3B82: MemLdRfVar from_stack_1.global_60
  loc_BB3B85: LdPrVar
  loc_BB3B87: LateMemCall
  loc_BB3B8D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB3B92: PopAdLdVar
  loc_BB3B93: FLdPr Me
  loc_BB3B96: MemLdRfVar from_stack_1.global_60
  loc_BB3B99: LdPrVar
  loc_BB3B9B: LateMemCall
  loc_BB3BA1: LitVarStr var_98, " font-size: 12px;"
  loc_BB3BA6: PopAdLdVar
  loc_BB3BA7: FLdPr Me
  loc_BB3BAA: MemLdRfVar from_stack_1.global_60
  loc_BB3BAD: LdPrVar
  loc_BB3BAF: LateMemCall
  loc_BB3BB5: LitVarStr var_98, " font-style: normal;"
  loc_BB3BBA: PopAdLdVar
  loc_BB3BBB: FLdPr Me
  loc_BB3BBE: MemLdRfVar from_stack_1.global_60
  loc_BB3BC1: LdPrVar
  loc_BB3BC3: LateMemCall
  loc_BB3BC9: LitVarStr var_98, " font-weight: normal;"
  loc_BB3BCE: PopAdLdVar
  loc_BB3BCF: FLdPr Me
  loc_BB3BD2: MemLdRfVar from_stack_1.global_60
  loc_BB3BD5: LdPrVar
  loc_BB3BD7: LateMemCall
  loc_BB3BDD: LitVarStr var_98, " font-variant: normal;"
  loc_BB3BE2: PopAdLdVar
  loc_BB3BE3: FLdPr Me
  loc_BB3BE6: MemLdRfVar from_stack_1.global_60
  loc_BB3BE9: LdPrVar
  loc_BB3BEB: LateMemCall
  loc_BB3BF1: LitVarStr var_98, "}"
  loc_BB3BF6: PopAdLdVar
  loc_BB3BF7: FLdPr Me
  loc_BB3BFA: MemLdRfVar from_stack_1.global_60
  loc_BB3BFD: LdPrVar
  loc_BB3BFF: LateMemCall
  loc_BB3C05: LitVarStr var_98, ".Encabezado {"
  loc_BB3C0A: PopAdLdVar
  loc_BB3C0B: FLdPr Me
  loc_BB3C0E: MemLdRfVar from_stack_1.global_60
  loc_BB3C11: LdPrVar
  loc_BB3C13: LateMemCall
  loc_BB3C19: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BB3C1E: PopAdLdVar
  loc_BB3C1F: FLdPr Me
  loc_BB3C22: MemLdRfVar from_stack_1.global_60
  loc_BB3C25: LdPrVar
  loc_BB3C27: LateMemCall
  loc_BB3C2D: LitVarStr var_98, " font-size: 11px;"
  loc_BB3C32: PopAdLdVar
  loc_BB3C33: FLdPr Me
  loc_BB3C36: MemLdRfVar from_stack_1.global_60
  loc_BB3C39: LdPrVar
  loc_BB3C3B: LateMemCall
  loc_BB3C41: LitVarStr var_98, " font-weight: bold;"
  loc_BB3C46: PopAdLdVar
  loc_BB3C47: FLdPr Me
  loc_BB3C4A: MemLdRfVar from_stack_1.global_60
  loc_BB3C4D: LdPrVar
  loc_BB3C4F: LateMemCall
  loc_BB3C55: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BB3C5A: PopAdLdVar
  loc_BB3C5B: FLdPr Me
  loc_BB3C5E: MemLdRfVar from_stack_1.global_60
  loc_BB3C61: LdPrVar
  loc_BB3C63: LateMemCall
  loc_BB3C69: LitVarStr var_98, "}"
  loc_BB3C6E: PopAdLdVar
  loc_BB3C6F: FLdPr Me
  loc_BB3C72: MemLdRfVar from_stack_1.global_60
  loc_BB3C75: LdPrVar
  loc_BB3C77: LateMemCall
  loc_BB3C7D: LitVarStr var_98, ".LineaDato {"
  loc_BB3C82: PopAdLdVar
  loc_BB3C83: FLdPr Me
  loc_BB3C86: MemLdRfVar from_stack_1.global_60
  loc_BB3C89: LdPrVar
  loc_BB3C8B: LateMemCall
  loc_BB3C91: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB3C96: PopAdLdVar
  loc_BB3C97: FLdPr Me
  loc_BB3C9A: MemLdRfVar from_stack_1.global_60
  loc_BB3C9D: LdPrVar
  loc_BB3C9F: LateMemCall
  loc_BB3CA5: LitVarStr var_98, " font-size: 10px;"
  loc_BB3CAA: PopAdLdVar
  loc_BB3CAB: FLdPr Me
  loc_BB3CAE: MemLdRfVar from_stack_1.global_60
  loc_BB3CB1: LdPrVar
  loc_BB3CB3: LateMemCall
  loc_BB3CB9: LitVarStr var_98, "}"
  loc_BB3CBE: PopAdLdVar
  loc_BB3CBF: FLdPr Me
  loc_BB3CC2: MemLdRfVar from_stack_1.global_60
  loc_BB3CC5: LdPrVar
  loc_BB3CC7: LateMemCall
  loc_BB3CCD: LitVarStr var_98, ".Totales {"
  loc_BB3CD2: PopAdLdVar
  loc_BB3CD3: FLdPr Me
  loc_BB3CD6: MemLdRfVar from_stack_1.global_60
  loc_BB3CD9: LdPrVar
  loc_BB3CDB: LateMemCall
  loc_BB3CE1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB3CE6: PopAdLdVar
  loc_BB3CE7: FLdPr Me
  loc_BB3CEA: MemLdRfVar from_stack_1.global_60
  loc_BB3CED: LdPrVar
  loc_BB3CEF: LateMemCall
  loc_BB3CF5: LitVarStr var_98, " font-size: 12px;"
  loc_BB3CFA: PopAdLdVar
  loc_BB3CFB: FLdPr Me
  loc_BB3CFE: MemLdRfVar from_stack_1.global_60
  loc_BB3D01: LdPrVar
  loc_BB3D03: LateMemCall
  loc_BB3D09: LitVarStr var_98, " font-weight: bold;"
  loc_BB3D0E: PopAdLdVar
  loc_BB3D0F: FLdPr Me
  loc_BB3D12: MemLdRfVar from_stack_1.global_60
  loc_BB3D15: LdPrVar
  loc_BB3D17: LateMemCall
  loc_BB3D1D: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BB3D22: PopAdLdVar
  loc_BB3D23: FLdPr Me
  loc_BB3D26: MemLdRfVar from_stack_1.global_60
  loc_BB3D29: LdPrVar
  loc_BB3D2B: LateMemCall
  loc_BB3D31: LitVarStr var_98, "}"
  loc_BB3D36: PopAdLdVar
  loc_BB3D37: FLdPr Me
  loc_BB3D3A: MemLdRfVar from_stack_1.global_60
  loc_BB3D3D: LdPrVar
  loc_BB3D3F: LateMemCall
  loc_BB3D45: LitVarStr var_98, ".SubTotales {"
  loc_BB3D4A: PopAdLdVar
  loc_BB3D4B: FLdPr Me
  loc_BB3D4E: MemLdRfVar from_stack_1.global_60
  loc_BB3D51: LdPrVar
  loc_BB3D53: LateMemCall
  loc_BB3D59: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB3D5E: PopAdLdVar
  loc_BB3D5F: FLdPr Me
  loc_BB3D62: MemLdRfVar from_stack_1.global_60
  loc_BB3D65: LdPrVar
  loc_BB3D67: LateMemCall
  loc_BB3D6D: LitVarStr var_98, " font-size: 10px;"
  loc_BB3D72: PopAdLdVar
  loc_BB3D73: FLdPr Me
  loc_BB3D76: MemLdRfVar from_stack_1.global_60
  loc_BB3D79: LdPrVar
  loc_BB3D7B: LateMemCall
  loc_BB3D81: LitVarStr var_98, " font-weight: bold;"
  loc_BB3D86: PopAdLdVar
  loc_BB3D87: FLdPr Me
  loc_BB3D8A: MemLdRfVar from_stack_1.global_60
  loc_BB3D8D: LdPrVar
  loc_BB3D8F: LateMemCall
  loc_BB3D95: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BB3D9A: PopAdLdVar
  loc_BB3D9B: FLdPr Me
  loc_BB3D9E: MemLdRfVar from_stack_1.global_60
  loc_BB3DA1: LdPrVar
  loc_BB3DA3: LateMemCall
  loc_BB3DA9: LitVarStr var_98, "}"
  loc_BB3DAE: PopAdLdVar
  loc_BB3DAF: FLdPr Me
  loc_BB3DB2: MemLdRfVar from_stack_1.global_60
  loc_BB3DB5: LdPrVar
  loc_BB3DB7: LateMemCall
  loc_BB3DBD: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BB3DC2: PopAdLdVar
  loc_BB3DC3: FLdPr Me
  loc_BB3DC6: MemLdRfVar from_stack_1.global_60
  loc_BB3DC9: LdPrVar
  loc_BB3DCB: LateMemCall
  loc_BB3DD1: LitVarStr var_98, "</style>"
  loc_BB3DD6: PopAdLdVar
  loc_BB3DD7: FLdPr Me
  loc_BB3DDA: MemLdRfVar from_stack_1.global_60
  loc_BB3DDD: LdPrVar
  loc_BB3DDF: LateMemCall
  loc_BB3DE5: LitI4 0
  loc_BB3DEA: FStStrCopy var_B0
  loc_BB3DED: FLdRfVar var_B0
  loc_BB3DF0: LitI4 0
  loc_BB3DF5: FStStrCopy var_AC
  loc_BB3DF8: FLdRfVar var_AC
  loc_BB3DFB: LitI2_Byte &HFF
  loc_BB3DFD: PopTmpLdAd2 var_C2
  loc_BB3E00: FLdPr Me
  loc_BB3E03: MemLdRfVar from_stack_1.global_60
  loc_BB3E06: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BB3E0B: FFreeStr var_AC = ""
  loc_BB3E12: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BB3E17: PopAdLdVar
  loc_BB3E18: FLdPr Me
  loc_BB3E1B: MemLdRfVar from_stack_1.global_60
  loc_BB3E1E: LdPrVar
  loc_BB3E20: LateMemCall
  loc_BB3E26: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BB3E2B: PopAdLdVar
  loc_BB3E2C: FLdPr Me
  loc_BB3E2F: MemLdRfVar from_stack_1.global_60
  loc_BB3E32: LdPrVar
  loc_BB3E34: LateMemCall
  loc_BB3E3A: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BB3E3D: LitI2_Byte &H5F
  loc_BB3E3F: CStrUI1
  loc_BB3E41: FStStrNoPop var_AC
  loc_BB3E44: ConcatStr
  loc_BB3E45: FStStrNoPop var_B0
  loc_BB3E48: LitStr """ height="""
  loc_BB3E4B: ConcatStr
  loc_BB3E4C: FStStrNoPop var_C8
  loc_BB3E4F: LitI2_Byte &H3C
  loc_BB3E51: CStrUI1
  loc_BB3E53: FStStrNoPop var_CC
  loc_BB3E56: ConcatStr
  loc_BB3E57: FStStrNoPop var_D0
  loc_BB3E5A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BB3E5D: ConcatStr
  loc_BB3E5E: FStStrNoPop var_D4
  loc_BB3E61: LitStr "Municipalidad de Guaymallén"
  loc_BB3E64: ConcatStr
  loc_BB3E65: FStStrNoPop var_D8
  loc_BB3E68: LitStr "</p>"
  loc_BB3E6B: ConcatStr
  loc_BB3E6C: CVarStr var_C0
  loc_BB3E6F: PopAdLdVar
  loc_BB3E70: FLdPr Me
  loc_BB3E73: MemLdRfVar from_stack_1.global_60
  loc_BB3E76: LdPrVar
  loc_BB3E78: LateMemCall
  loc_BB3E7E: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BB3E8F: FFree1Var var_C0 = ""
  loc_BB3E92: LitStr "    <p>"
  loc_BB3E95: FLdRfVar var_AC
  loc_BB3E98: FLdPr Me
  loc_BB3E9B:  = Me.Caption
  loc_BB3EA0: ILdRf var_AC
  loc_BB3EA3: ConcatStr
  loc_BB3EA4: FStStrNoPop var_B0
  loc_BB3EA7: LitStr "<br>CONTROL DE CUENTAS POR COBRAR</p><br>Anexo de Presentación ANUAL</th>"
  loc_BB3EAA: ConcatStr
  loc_BB3EAB: CVarStr var_C0
  loc_BB3EAE: PopAdLdVar
  loc_BB3EAF: FLdPr Me
  loc_BB3EB2: MemLdRfVar from_stack_1.global_60
  loc_BB3EB5: LdPrVar
  loc_BB3EB7: LateMemCall
  loc_BB3EBD: FFreeStr var_AC = ""
  loc_BB3EC4: FFree1Var var_C0 = ""
  loc_BB3EC7: LitVarStr var_98, "  </tr>"
  loc_BB3ECC: PopAdLdVar
  loc_BB3ECD: FLdPr Me
  loc_BB3ED0: MemLdRfVar from_stack_1.global_60
  loc_BB3ED3: LdPrVar
  loc_BB3ED5: LateMemCall
  loc_BB3EDB: LitVarStr var_98, "  <tr>"
  loc_BB3EE0: PopAdLdVar
  loc_BB3EE1: FLdPr Me
  loc_BB3EE4: MemLdRfVar from_stack_1.global_60
  loc_BB3EE7: LdPrVar
  loc_BB3EE9: LateMemCall
  loc_BB3EEF: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BB3EF4: PopAdLdVar
  loc_BB3EF5: FLdPr Me
  loc_BB3EF8: MemLdRfVar from_stack_1.global_60
  loc_BB3EFB: LdPrVar
  loc_BB3EFD: LateMemCall
  loc_BB3F03: LitVarStr var_98, "  </tr>"
  loc_BB3F08: PopAdLdVar
  loc_BB3F09: FLdPr Me
  loc_BB3F0C: MemLdRfVar from_stack_1.global_60
  loc_BB3F0F: LdPrVar
  loc_BB3F11: LateMemCall
  loc_BB3F17: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BB3F1C: PopAdLdVar
  loc_BB3F1D: FLdPr Me
  loc_BB3F20: MemLdRfVar from_stack_1.global_60
  loc_BB3F23: LdPrVar
  loc_BB3F25: LateMemCall
  loc_BB3F2B: LitStr "    <td colspan=""3"" align=""left"" valign=""top""><strong>"
  loc_BB3F2E: FLdPr Me
  loc_BB3F31: VCallAd Control_ID_ActiConcMsk
  loc_BB3F34: FStAdFunc var_DC
  loc_BB3F37: FLdPr var_DC
  loc_BB3F3A: LateIdLdVar var_C0 DispID_22 0
  loc_BB3F41: CStrVarTmp
  loc_BB3F42: FStStrNoPop var_AC
  loc_BB3F45: ConcatStr
  loc_BB3F46: FStStrNoPop var_B0
  loc_BB3F49: LitStr " - "
  loc_BB3F4C: ConcatStr
  loc_BB3F4D: FStStrNoPop var_CC
  loc_BB3F50: FLdRfVar var_C8
  loc_BB3F53: FLdPr Me
  loc_BB3F56: VCallAd Control_ID_DetaActiLbl
  loc_BB3F59: FStAdFunc var_E0
  loc_BB3F5C: FLdPr var_E0
  loc_BB3F5F:  = Me.Caption
  loc_BB3F64: ILdRf var_C8
  loc_BB3F67: ConcatStr
  loc_BB3F68: FStStrNoPop var_D0
  loc_BB3F6B: LitStr "</strong></td>"
  loc_BB3F6E: ConcatStr
  loc_BB3F6F: CVarStr var_F0
  loc_BB3F72: PopAdLdVar
  loc_BB3F73: FLdPr Me
  loc_BB3F76: MemLdRfVar from_stack_1.global_60
  loc_BB3F79: LdPrVar
  loc_BB3F7B: LateMemCall
  loc_BB3F81: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_BB3F8E: FFreeAd var_DC = ""
  loc_BB3F95: FFreeVar var_C0 = ""
  loc_BB3F9C: LitVarStr var_98, "  </tr>"
  loc_BB3FA1: PopAdLdVar
  loc_BB3FA2: FLdPr Me
  loc_BB3FA5: MemLdRfVar from_stack_1.global_60
  loc_BB3FA8: LdPrVar
  loc_BB3FAA: LateMemCall
  loc_BB3FB0: LitVarStr var_98, "</table>"
  loc_BB3FB5: PopAdLdVar
  loc_BB3FB6: FLdPr Me
  loc_BB3FB9: MemLdRfVar from_stack_1.global_60
  loc_BB3FBC: LdPrVar
  loc_BB3FBE: LateMemCall
  loc_BB3FC4: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BB3FC9: PopAdLdVar
  loc_BB3FCA: FLdPr Me
  loc_BB3FCD: MemLdRfVar from_stack_1.global_60
  loc_BB3FD0: LdPrVar
  loc_BB3FD2: LateMemCall
  loc_BB3FD8: LitVarStr var_98, "  <thead>"
  loc_BB3FDD: PopAdLdVar
  loc_BB3FDE: FLdPr Me
  loc_BB3FE1: MemLdRfVar from_stack_1.global_60
  loc_BB3FE4: LdPrVar
  loc_BB3FE6: LateMemCall
  loc_BB3FEC: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BB3FF1: PopAdLdVar
  loc_BB3FF2: FLdPr Me
  loc_BB3FF5: MemLdRfVar from_stack_1.global_60
  loc_BB3FF8: LdPrVar
  loc_BB3FFA: LateMemCall
  loc_BB4000: LitVarStr var_98, "    <th>Ejercicio</th>"
  loc_BB4005: PopAdLdVar
  loc_BB4006: FLdPr Me
  loc_BB4009: MemLdRfVar from_stack_1.global_60
  loc_BB400C: LdPrVar
  loc_BB400E: LateMemCall
  loc_BB4014: LitVarStr var_98, "    <th>Deudores Normales</th>"
  loc_BB4019: PopAdLdVar
  loc_BB401A: FLdPr Me
  loc_BB401D: MemLdRfVar from_stack_1.global_60
  loc_BB4020: LdPrVar
  loc_BB4022: LateMemCall
  loc_BB4028: LitVarStr var_98, "    <th>Deudores Morosos</th>"
  loc_BB402D: PopAdLdVar
  loc_BB402E: FLdPr Me
  loc_BB4031: MemLdRfVar from_stack_1.global_60
  loc_BB4034: LdPrVar
  loc_BB4036: LateMemCall
  loc_BB403C: LitVarStr var_98, "    <th>Deudores en Apremio</th>"
  loc_BB4041: PopAdLdVar
  loc_BB4042: FLdPr Me
  loc_BB4045: MemLdRfVar from_stack_1.global_60
  loc_BB4048: LdPrVar
  loc_BB404A: LateMemCall
  loc_BB4050: LitVarStr var_98, "    <th>Deudores en Gestión Judicial</th>"
  loc_BB4055: PopAdLdVar
  loc_BB4056: FLdPr Me
  loc_BB4059: MemLdRfVar from_stack_1.global_60
  loc_BB405C: LdPrVar
  loc_BB405E: LateMemCall
  loc_BB4064: LitVarStr var_98, "    <th>Total de Deudores</th>"
  loc_BB4069: PopAdLdVar
  loc_BB406A: FLdPr Me
  loc_BB406D: MemLdRfVar from_stack_1.global_60
  loc_BB4070: LdPrVar
  loc_BB4072: LateMemCall
  loc_BB4078: LitVarStr var_98, "  </tr>"
  loc_BB407D: PopAdLdVar
  loc_BB407E: FLdPr Me
  loc_BB4081: MemLdRfVar from_stack_1.global_60
  loc_BB4084: LdPrVar
  loc_BB4086: LateMemCall
  loc_BB408C: LitVarStr var_98, "  </thead>"
  loc_BB4091: PopAdLdVar
  loc_BB4092: FLdPr Me
  loc_BB4095: MemLdRfVar from_stack_1.global_60
  loc_BB4098: LdPrVar
  loc_BB409A: LateMemCall
  loc_BB40A0: ExitProcHresult
End Function

Private Function Proc_152_21_A0E7B8() 'A0E7B8
  'Data Table: 46F704
  loc_A0E778: LitVarStr var_94, "</table>"
  loc_A0E77D: PopAdLdVar
  loc_A0E77E: FLdPr Me
  loc_A0E781: MemLdRfVar from_stack_1.global_60
  loc_A0E784: LdPrVar
  loc_A0E786: LateMemCall
  loc_A0E78C: LitVarStr var_94, "</body>"
  loc_A0E791: PopAdLdVar
  loc_A0E792: FLdPr Me
  loc_A0E795: MemLdRfVar from_stack_1.global_60
  loc_A0E798: LdPrVar
  loc_A0E79A: LateMemCall
  loc_A0E7A0: LitVarStr var_94, "</html>"
  loc_A0E7A5: PopAdLdVar
  loc_A0E7A6: FLdPr Me
  loc_A0E7A9: MemLdRfVar from_stack_1.global_60
  loc_A0E7AC: LdPrVar
  loc_A0E7AE: LateMemCall
  loc_A0E7B4: ExitProcHresult
End Function
