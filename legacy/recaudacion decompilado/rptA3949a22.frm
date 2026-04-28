VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949a22
  Caption = "Acuerdo 3949 Anexo 22"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949a22.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11400
  ClientHeight = 3492
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
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 1800
    Width = 9015
    Height = 150
    Visible = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptA3949a22.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3240
    Width = 11400
    Height = 255
    TabIndex = 11
    OleObjectBlob = "rptA3949a22.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 10080
    Top = 2160
    Width = 855
    Height = 735
    TabIndex = 6
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
    Picture = "rptA3949a22.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949a22.frx":0C04
    Left = 10560
    Top = 1920
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1920
    Width = 4815
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3360
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 16
    End
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 13
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1920
    Width = 4095
    Height = 1215
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 3
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9015
    Height = 1695
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSMask.MaskEdBox PeriInfoMsk
      Left = 3000
      Top = 360
      Width = 735
      Height = 420
      TabIndex = 0
      OleObjectBlob = "rptA3949a22.frx":0C68
    End
    Begin VB.ComboBox TrimestreCbo
      Style = 2
      Left = 3000
      Top = 840
      Width = 1815
      Height = 420
      TabIndex = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7200
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 5
    End
    Begin VB.Label Label2
      Caption = "Trimestre:"
      Left = 1860
      Top = 840
      Width = 1050
      Height = 300
      TabIndex = 15
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 2040
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 14
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 10320
    Top = 2520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptA3949a22.frx":0CD0
  End
End

Attribute VB_Name = "rptA3949a22"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0056084C
  bStruc(36) As Byte ' String fields: 9
End Type

Private Type UDT_2_0056087C
  bStruc(40) As Byte ' String fields: 10
End Type

Private Type UDT_3_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub cmdSalir_Click() 'A0437C
  'Data Table: 4984F8
  loc_A0434C: LitVarStr var_94, "Cerrando..."
  loc_A04351: PopAdLdVar
  loc_A04352: FLdPr Me
  loc_A04355: VCallAd Control_ID_statusBar
  loc_A04358: FStAdFunc var_A8
  loc_A0435B: FLdPr var_A8
  loc_A0435E: LateIdSt
  loc_A04363: FFree1Ad var_A8
  loc_A04366: ILdRf Me
  loc_A04369: FStAdNoPop
  loc_A0436D: ImpAdLdRf MemVar_D9C5D8
  loc_A04370: NewIfNullPr Global
  loc_A04373: Global.Unload from_stack_1
  loc_A04378: FFree1Ad var_A8
  loc_A0437B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CE024
  'Data Table: 4984F8
  loc_9CE00C: LitI2_Byte 0
  loc_9CE00E: ILdRf Me
  loc_9CE011: CastAd
  loc_9CE014: FStAdFunc var_88
  loc_9CE017: FLdRfVar var_88
  loc_9CE01A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CE01F: FFree1Ad var_88
  loc_9CE022: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E36BC
  'Data Table: 4984F8
  loc_9E36A0: LitI2_Byte 0
  loc_9E36A2: PopTmpLdAd2 var_8A
  loc_9E36A5: ILdRf Me
  loc_9E36A8: CastAd
  loc_9E36AB: FStAdFunc var_88
  loc_9E36AE: FLdRfVar var_88
  loc_9E36B1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E36B6: FFree1Ad var_88
  loc_9E36B9: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E393C
  'Data Table: 4984F8
  loc_9E3920: LitI2_Byte &HFF
  loc_9E3922: LitI2_Byte 0
  loc_9E3924: ILdRf Me
  loc_9E3927: CastAd
  loc_9E392A: FStAdFunc var_88
  loc_9E392D: FLdRfVar var_88
  loc_9E3930: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E3935: FFree1Ad var_88
  loc_9E3938: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AD2354
  'Data Table: 4984F8
  loc_AD2224: LitI2_Byte 0
  loc_AD2226: FLdPr Me
  loc_AD2229: MemStI2 bGenerado
  loc_AD222C: LitI2_Byte &HFF
  loc_AD222E: FLdPr Me
  loc_AD2231: MemStI2 bLogos
  loc_AD2234: LitI2_Byte 0
  loc_AD2236: ILdRf Me
  loc_AD2239: CastAd
  loc_AD223C: FStAdFunc var_88
  loc_AD223F: FLdRfVar var_88
  loc_AD2242: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AD2247: FFree1Ad var_88
  loc_AD224A: ImpAdLdI2 MemVar_D93034
  loc_AD224D: CStrUI1
  loc_AD224F: CVarStr var_98
  loc_AD2252: PopAdLdVar
  loc_AD2253: FLdPr Me
  loc_AD2256: VCallAd Control_ID_PeriInfoMsk
  loc_AD2259: FStAdFunc var_88
  loc_AD225C: FLdPr var_88
  loc_AD225F: LateIdSt
  loc_AD2264: FFree1Ad var_88
  loc_AD2267: FFree1Var var_98 = ""
  loc_AD226A: LitI2_Byte 0
  loc_AD226C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD2271: CVarDate var_98
  loc_AD2275: FLdRfVar var_B8
  loc_AD2278: ImpAdCallFPR4  = Month()
  loc_AD227D: FLdRfVar var_B8
  loc_AD2280: FStVar var_C8
  loc_AD2284: FFree1Var var_98 = ""
  loc_AD2287: FLdRfVar var_C8
  loc_AD228A: LitVarI2 var_D8, 1
  loc_AD228F: HardType
  loc_AD2290: LitVarI2 var_A8, 3
  loc_AD2295: HardType
  loc_AD2296: BetweenVar
  loc_AD2298: BranchF loc_AD22B4
  loc_AD229B: LitI2_Byte 0
  loc_AD229D: FLdPr Me
  loc_AD22A0: VCallAd Control_ID_TrimestreCbo
  loc_AD22A3: FStAdFunc var_88
  loc_AD22A6: FLdPr var_88
  loc_AD22A9: Me.ListIndex = from_stack_1
  loc_AD22AE: FFree1Ad var_88
  loc_AD22B1: Branch loc_AD2338
  loc_AD22B4: FLdRfVar var_C8
  loc_AD22B7: LitVarI2 var_D8, 4
  loc_AD22BC: HardType
  loc_AD22BD: LitVarI2 var_A8, 6
  loc_AD22C2: HardType
  loc_AD22C3: BetweenVar
  loc_AD22C5: BranchF loc_AD22E1
  loc_AD22C8: LitI2_Byte 1
  loc_AD22CA: FLdPr Me
  loc_AD22CD: VCallAd Control_ID_TrimestreCbo
  loc_AD22D0: FStAdFunc var_88
  loc_AD22D3: FLdPr var_88
  loc_AD22D6: Me.ListIndex = from_stack_1
  loc_AD22DB: FFree1Ad var_88
  loc_AD22DE: Branch loc_AD2338
  loc_AD22E1: FLdRfVar var_C8
  loc_AD22E4: LitVarI2 var_D8, 7
  loc_AD22E9: HardType
  loc_AD22EA: LitVarI2 var_A8, 9
  loc_AD22EF: HardType
  loc_AD22F0: BetweenVar
  loc_AD22F2: BranchF loc_AD230E
  loc_AD22F5: LitI2_Byte 2
  loc_AD22F7: FLdPr Me
  loc_AD22FA: VCallAd Control_ID_TrimestreCbo
  loc_AD22FD: FStAdFunc var_88
  loc_AD2300: FLdPr var_88
  loc_AD2303: Me.ListIndex = from_stack_1
  loc_AD2308: FFree1Ad var_88
  loc_AD230B: Branch loc_AD2338
  loc_AD230E: FLdRfVar var_C8
  loc_AD2311: LitVarI2 var_D8, 10
  loc_AD2316: HardType
  loc_AD2317: LitVarI2 var_A8, 12
  loc_AD231C: HardType
  loc_AD231D: BetweenVar
  loc_AD231F: BranchF loc_AD2338
  loc_AD2322: LitI2_Byte 3
  loc_AD2324: FLdPr Me
  loc_AD2327: VCallAd Control_ID_TrimestreCbo
  loc_AD232A: FStAdFunc var_88
  loc_AD232D: FLdPr var_88
  loc_AD2330: Me.ListIndex = from_stack_1
  loc_AD2335: FFree1Ad var_88
  loc_AD2338: Call HabilitarCriterio()
  loc_AD233D: ILdRf Me
  loc_AD2340: CastAd
  loc_AD2343: FStAdFunc var_88
  loc_AD2346: FLdRfVar var_88
  loc_AD2349: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AD234E: FFree1Ad var_88
  loc_AD2351: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A150D0
  'Data Table: 4984F8
  loc_A15098: FLdPr Me
  loc_A1509B: VCallAd Control_ID_statusBar
  loc_A1509E: FStAdFunc var_88
  loc_A150A1: FLdPr var_88
  loc_A150A4: LateIdLdVar var_98 DispID_1 0
  loc_A150AB: CStrVarTmp
  loc_A150AC: CVarStr var_A8
  loc_A150AF: PopAdLdVar
  loc_A150B0: FLdPr Me
  loc_A150B3: VCallAd Control_ID_statusBar
  loc_A150B6: FStAdFunc var_BC
  loc_A150B9: FLdPr var_BC
  loc_A150BC: LateIdSt
  loc_A150C1: FFreeAd var_88 = ""
  loc_A150C8: FFreeVar var_98 = ""
  loc_A150CF: ExitProcHresult
End Sub

Private Sub Form_Load() 'AAB164
  'Data Table: 4984F8
  loc_AAB090: ILdRf Me
  loc_AAB093: CastAd
  loc_AAB096: FStAdFunc var_88
  loc_AAB099: FLdRfVar var_88
  loc_AAB09C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_AAB0A1: FFree1Ad var_88
  loc_AAB0A4: FLdPr Me
  loc_AAB0A7: VCallAd Control_ID_TrimestreCbo
  loc_AAB0AA: FStAdFunc var_8C
  loc_AAB0AD: LitVar_Missing var_9C
  loc_AAB0B0: PopAdLdVar
  loc_AAB0B1: LitStr "Primero"
  loc_AAB0B4: FLdPr var_8C
  loc_AAB0B7: Me.AddItem from_stack_1, from_stack_2
  loc_AAB0BC: LitI4 3
  loc_AAB0C1: FLdRfVar var_9E
  loc_AAB0C4: FLdPr var_8C
  loc_AAB0C7:  = Me.NewIndex
  loc_AAB0CC: FLdI2 var_9E
  loc_AAB0CF: FLdPr var_8C
  loc_AAB0D2: Me.ItemData = from_stack_1
  loc_AAB0D7: LitVar_Missing var_9C
  loc_AAB0DA: PopAdLdVar
  loc_AAB0DB: LitStr "Segundo"
  loc_AAB0DE: FLdPr var_8C
  loc_AAB0E1: Me.AddItem from_stack_1, from_stack_2
  loc_AAB0E6: LitI4 6
  loc_AAB0EB: FLdRfVar var_9E
  loc_AAB0EE: FLdPr var_8C
  loc_AAB0F1:  = Me.NewIndex
  loc_AAB0F6: FLdI2 var_9E
  loc_AAB0F9: FLdPr var_8C
  loc_AAB0FC: Me.ItemData = from_stack_1
  loc_AAB101: LitVar_Missing var_9C
  loc_AAB104: PopAdLdVar
  loc_AAB105: LitStr "Tercero"
  loc_AAB108: FLdPr var_8C
  loc_AAB10B: Me.AddItem from_stack_1, from_stack_2
  loc_AAB110: LitI4 9
  loc_AAB115: FLdRfVar var_9E
  loc_AAB118: FLdPr var_8C
  loc_AAB11B:  = Me.NewIndex
  loc_AAB120: FLdI2 var_9E
  loc_AAB123: FLdPr var_8C
  loc_AAB126: Me.ItemData = from_stack_1
  loc_AAB12B: LitVar_Missing var_9C
  loc_AAB12E: PopAdLdVar
  loc_AAB12F: LitStr "Cuarto"
  loc_AAB132: FLdPr var_8C
  loc_AAB135: Me.AddItem from_stack_1, from_stack_2
  loc_AAB13A: LitI4 &HC
  loc_AAB13F: FLdRfVar var_9E
  loc_AAB142: FLdPr var_8C
  loc_AAB145:  = Me.NewIndex
  loc_AAB14A: FLdI2 var_9E
  loc_AAB14D: FLdPr var_8C
  loc_AAB150: Me.ItemData = from_stack_1
  loc_AAB155: LitNothing
  loc_AAB157: FStAd var_8C 
  loc_AAB15B: Call cmdNueva_Click()
  loc_AAB160: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CDD2C
  'Data Table: 4984F8
  loc_9CDD14: FLdPr Me
  loc_9CDD17: VCallAd Control_ID_wbbReporte
  loc_9CDD1A: FStAdFunc var_88
  loc_9CDD1D: FLdRfVar var_88
  loc_9CDD20: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CDD25: FFree1Ad var_88
  loc_9CDD28: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CDEA8
  'Data Table: 4984F8
  loc_9CDE90: LitI2_Byte &HFF
  loc_9CDE92: ILdRf Me
  loc_9CDE95: CastAd
  loc_9CDE98: FStAdFunc var_88
  loc_9CDE9B: FLdRfVar var_88
  loc_9CDE9E: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CDEA3: FFree1Ad var_88
  loc_9CDEA6: ExitProcHresult
End Sub

Private Sub PeriInfoMsk_UnknownEvent_0 '9BF5E8
  'Data Table: 4984F8
  loc_9BF5D4: FLdPr Me
  loc_9BF5D7: VCallAd Control_ID_PeriInfoMsk
  loc_9BF5DA: CVarAd
  loc_9BF5DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF5E3: FFree1Var var_94 = ""
  loc_9BF5E6: ExitProcHresult
End Sub

Private Function PeriInfoMsk_UnknownEvent_8(arg_C) 'A72998
  'Data Table: 4984F8
  loc_A72930: FLdPr Me
  loc_A72933: VCallAd Control_ID_PeriInfoMsk
  loc_A72936: FStAdFunc var_88
  loc_A72939: FLdPr var_88
  loc_A7293C: LateIdLdVar var_98 DispID_22 0
  loc_A72943: PopAd
  loc_A72945: LitI2_Byte 0
  loc_A72947: FLdRfVar var_98
  loc_A7294A: CStrVarTmp
  loc_A7294B: FStStrNoPop var_9C
  loc_A7294E: LitStr "Periodo"
  loc_A72951: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A72956: FStStrNoPop var_A0
  loc_A72959: FLdPr Me
  loc_A7295C: MemStStrCopy
  loc_A72960: FFreeStr var_9C = ""
  loc_A72967: FFree1Ad var_88
  loc_A7296A: FFree1Var var_98 = ""
  loc_A7296D: FLdPr Me
  loc_A72970: VCallAd Control_ID_PeriInfoMsk
  loc_A72973: FStAdFuncNoPop
  loc_A72976: CastAd
  loc_A72979: FStAdFunc var_A4
  loc_A7297C: FLdRfVar var_A4
  loc_A7297F: FLdPr Me
  loc_A72982: MemLdStr global_116
  loc_A72985: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A7298A: IStI2 arg_C
  loc_A7298D: FFreeAd var_88 = ""
  loc_A72994: ExitProcHresult
  loc_A72995: UMiI2
  loc_A72996: GtCy
End Function

Private Sub cmdPrevia_Click() '9CE2D0
  'Data Table: 4984F8
  loc_9CE2B8: ILdRf Me
  loc_9CE2BB: CastAd
  loc_9CE2BE: FStAdFunc var_88
  loc_9CE2C1: FLdRfVar var_88
  loc_9CE2C4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CE2C9: FFree1Ad var_88
  loc_9CE2CC: ExitProcHresult
End Sub

Public Function bLogosGet() '499400
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '49940F
  bLogos = Value
End Sub

Public Function bGeneradoGet() '49941E
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49942D
  bGenerado = Value
End Sub

Public Sub GeneraXLS() '9BF904
  'Data Table: 4984F8
  loc_9BF8EC: LitI2_Byte 0
  loc_9BF8EE: FLdPr Me
  loc_9BF8F1: MemStI2 bLogos
  loc_9BF8F4: Call GeneraHTML()
  loc_9BF8F9: LitI2_Byte &HFF
  loc_9BF8FB: FLdPr Me
  loc_9BF8FE: MemStI2 bLogos
  loc_9BF901: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() 'A43A18
  'Data Table: 4984F8
  loc_A439D4: LitI4 0
  loc_A439D9: LitI4 1
  loc_A439DE: FLdRfVar var_88
  loc_A439E1: Redim
  loc_A439EB: FLdPr Me
  loc_A439EE: VCallAd Control_ID_PeriInfoMsk
  loc_A439F1: CVarAd
  loc_A439F5: ParmAry1St
  loc_A439FB: FLdPr Me
  loc_A439FE: VCallAd Control_ID_TrimestreCbo
  loc_A43A01: CVarAd
  loc_A43A05: ParmAry1St
  loc_A43A0B: FLdRfVar var_88
  loc_A43A0E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A43A13: FLdRfVar var_88
  loc_A43A16: Erase
  loc_A43A17: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C489EC
  'Data Table: 4984F8
  loc_C47D3C: LitI2_Byte 0
  loc_C47D3E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C47D43: FStFPR8 var_90
  loc_C47D46: LitStr "192.168.40.54"
  loc_C47D49: LitStr "192.168.40.54"
  loc_C47D4C: EqStr
  loc_C47D4E: BranchF loc_C47D82
  loc_C47D51: FLdRfVar var_90
  loc_C47D54: ImpAdCallI2 Proc_18_4_AAC868()
  loc_C47D59: FStStrNoPop var_94
  loc_C47D5C: FLdPr Me
  loc_C47D5F: MemStStrCopy
  loc_C47D63: FFree1Str var_94
  loc_C47D66: FLdPr Me
  loc_C47D69: MemLdStr global_116
  loc_C47D6C: LitStr vbNullString
  loc_C47D6F: NeStr
  loc_C47D71: BranchF loc_C47D82
  loc_C47D74: FLdPr Me
  loc_C47D77: MemLdStr global_116
  loc_C47D7A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C47D7F: Branch loc_C489C0
  loc_C47D82: FLdPr Me
  loc_C47D85: MemLdI2 bGenerado
  loc_C47D88: BranchF loc_C47D8C
  loc_C47D8B: ExitProcHresult
  loc_C47D8C: LitVarStr var_A4, "Generando reporte..."
  loc_C47D91: PopAdLdVar
  loc_C47D92: FLdPr Me
  loc_C47D95: VCallAd Control_ID_statusBar
  loc_C47D98: FStAdFunc var_B8
  loc_C47D9B: FLdPr var_B8
  loc_C47D9E: LateIdSt
  loc_C47DA3: FFree1Ad var_B8
  loc_C47DA6: LitI4 &HB
  loc_C47DAB: CI2I4
  loc_C47DAC: FLdPr Me
  loc_C47DAF: Me.MousePointer = from_stack_1
  loc_C47DB4: FLdPr Me
  loc_C47DB7: VCallAd Control_ID_PeriInfoMsk
  loc_C47DBA: FStAdFunc var_B8
  loc_C47DBD: FLdPr var_B8
  loc_C47DC0: LateIdLdVar var_C8 DispID_22 0
  loc_C47DC7: PopAd
  loc_C47DC9: FLdRfVar var_CE
  loc_C47DCC: FLdPr Me
  loc_C47DCF: VCallAd Control_ID_TrimestreCbo
  loc_C47DD2: FStAdFunc var_CC
  loc_C47DD5: FLdPr var_CC
  loc_C47DD8:  = Me.ListIndex
  loc_C47DDD: LitI2_Byte 1
  loc_C47DDF: FLdI2 var_CE
  loc_C47DE2: LitI2_Byte 1
  loc_C47DE4: AddI2
  loc_C47DE5: LitI2_Byte 3
  loc_C47DE7: MulI2
  loc_C47DE8: LitI2_Byte 1
  loc_C47DEA: AddI2
  loc_C47DEB: FLdRfVar var_C8
  loc_C47DEE: CStrVarTmp
  loc_C47DEF: FStStrNoPop var_94
  loc_C47DF2: CI2Str
  loc_C47DF4: FLdRfVar var_E0
  loc_C47DF7: ImpAdCallFPR4  = DateSerial(, , )
  loc_C47DFC: LitI4 1
  loc_C47E01: LitI4 1
  loc_C47E06: LitVarStr var_B4, "yyyy-mm-dd"
  loc_C47E0B: FStVarCopyObj var_110
  loc_C47E0E: FLdRfVar var_110
  loc_C47E11: FLdRfVar var_E0
  loc_C47E14: LitVarI2 var_A4, 1
  loc_C47E19: SubVar var_F0
  loc_C47E1D: FStVar var_100
  loc_C47E21: FLdRfVar var_100
  loc_C47E24: ImpAdCallI2 Format$(, )
  loc_C47E29: FStStr var_88
  loc_C47E2C: FFree1Str var_94
  loc_C47E2F: FFreeAd var_B8 = ""
  loc_C47E36: FFreeVar var_C8 = "": var_E0 = "": var_100 = ""
  loc_C47E41: FLdPr Me
  loc_C47E44: MemLdRfVar from_stack_1.global_92
  loc_C47E47: NewIfNullAd
  loc_C47E4A: FStAd var_114 
  loc_C47E4E: LitStr "Municipalidad de Guaymallén"
  loc_C47E51: LitStr "Municipalidad de Guaymallén"
  loc_C47E54: NeStr
  loc_C47E56: BranchF loc_C4801F
  loc_C47E59: LitStr "DROP TEMPORARY TABLE IF EXISTS acuetmp;"
  loc_C47E5C: LitStr " CREATE TEMPORARY TABLE acuetmp"
  loc_C47E5F: ConcatStr
  loc_C47E60: FStStrNoPop var_94
  loc_C47E63: LitStr " SELECT detaa3949a22.CodiAcue, ctacte.CodiOfic, ctacte.CuenCtct,"
  loc_C47E66: ConcatStr
  loc_C47E67: FStStrNoPop var_118
  loc_C47E6A: LitStr " if(CodiFapa=0 and ctacte.NumeApre=0,DebeCtct-CredCtct,0) as morsingescob,"
  loc_C47E6D: ConcatStr
  loc_C47E6E: FStStrNoPop var_11C
  loc_C47E71: LitStr " if(CodiFapa=0 and ctacte.NumeApre<>0,if(apremio.CodiInju=1 OR apremio.CodiInju=0,DebeCtct-CredCtct,0),0) as morapre,"
  loc_C47E74: ConcatStr
  loc_C47E75: FStStrNoPop var_120
  loc_C47E78: LitStr " if(CodiFapa=0 and ctacte.NumeApre<>0,if(apremio.CodiInju>1,DebeCtct-CredCtct,0),0) as morgesjud,"
  loc_C47E7B: ConcatStr
  loc_C47E7C: FStStrNoPop var_124
  loc_C47E7F: LitStr " 0 as morcon,"
  loc_C47E82: ConcatStr
  loc_C47E83: FStStrNoPop var_128
  loc_C47E86: LitStr " if(CodiFapa<>0,DebeCtct-CredCtct,0) as deuregplapag"
  loc_C47E89: ConcatStr
  loc_C47E8A: FStStrNoPop var_12C
  loc_C47E8D: LitStr " FROM ctacte"
  loc_C47E90: ConcatStr
  loc_C47E91: FStStrNoPop var_130
  loc_C47E94: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_C47E97: ConcatStr
  loc_C47E98: FStStrNoPop var_134
  loc_C47E9B: FLdPr Me
  loc_C47E9E: VCallAd Control_ID_PeriInfoMsk
  loc_C47EA1: FStAdFunc var_B8
  loc_C47EA4: FLdPr var_B8
  loc_C47EA7: LateIdLdVar var_C8 DispID_22 0
  loc_C47EAE: CStrVarTmp
  loc_C47EAF: FStStrNoPop var_138
  loc_C47EB2: ConcatStr
  loc_C47EB3: FStStrNoPop var_13C
  loc_C47EB6: LitStr " AND concepto.CodiConc = ctacte.CodiConc"
  loc_C47EB9: ConcatStr
  loc_C47EBA: FStStrNoPop var_140
  loc_C47EBD: LitStr " LEFT JOIN detaa3949a22 ON detaa3949a22.PeriInfo = concepto.PeriInfo AND detaa3949a22.ActiConc = concepto.ActiConc"
  loc_C47EC0: ConcatStr
  loc_C47EC1: FStStrNoPop var_144
  loc_C47EC4: LitStr " LEFT JOIN apremio ON apremio.NumeApre = ctacte.NumeApre"
  loc_C47EC7: ConcatStr
  loc_C47EC8: FStStrNoPop var_148
  loc_C47ECB: LitStr " WHERE ctacte.FealCtct <= '"
  loc_C47ECE: ConcatStr
  loc_C47ECF: FStStrNoPop var_14C
  loc_C47ED2: ILdRf var_88
  loc_C47ED5: ConcatStr
  loc_C47ED6: FStStrNoPop var_150
  loc_C47ED9: LitStr "' AND "
  loc_C47EDC: ConcatStr
  loc_C47EDD: FStStrNoPop var_154
  loc_C47EE0: LitStr " concepto.ActiConc = ANY (SELECT ActiConc FROM detaa3949a22 WHERE PeriInfo = "
  loc_C47EE3: ConcatStr
  loc_C47EE4: FStStrNoPop var_158
  loc_C47EE7: FLdPr Me
  loc_C47EEA: VCallAd Control_ID_PeriInfoMsk
  loc_C47EED: FStAdFunc var_CC
  loc_C47EF0: FLdPr var_CC
  loc_C47EF3: LateIdLdVar var_E0 DispID_22 0
  loc_C47EFA: CStrVarTmp
  loc_C47EFB: FStStrNoPop var_15C
  loc_C47EFE: ConcatStr
  loc_C47EFF: FStStrNoPop var_160
  loc_C47F02: LitStr ")"
  loc_C47F05: ConcatStr
  loc_C47F06: FStStrNoPop var_164
  loc_C47F09: LitStr " HAVING morsingescob <> 0 OR morapre <> 0 OR morgesjud <> 0 OR morcon <> 0 OR deuregplapag <> 0;"
  loc_C47F0C: ConcatStr
  loc_C47F0D: FStStrNoPop var_168
  loc_C47F10: FLdPr var_114
  loc_C47F13: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C47F18: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_C47F47: FFreeAd var_B8 = ""
  loc_C47F4E: FFreeVar var_C8 = ""
  loc_C47F55: LitStr "CREATE TEMPORARY TABLE IF NOT EXISTS acue"
  loc_C47F58: LitStr " SELECT CodiAcue, CodiOfic, CuenCtct, sum(morsingescob) as morsingescob, sum(morapre) as morapre,"
  loc_C47F5B: ConcatStr
  loc_C47F5C: FStStrNoPop var_94
  loc_C47F5F: LitStr " sum(morgesjud) as morgesjud, sum(morcon) as morcon, sum(deuregplapag) as deuregplapag FROM acuetmp"
  loc_C47F62: ConcatStr
  loc_C47F63: FStStrNoPop var_118
  loc_C47F66: LitStr " GROUP BY CodiAcue, CodiOfic, CuenCtct"
  loc_C47F69: ConcatStr
  loc_C47F6A: FStStrNoPop var_11C
  loc_C47F6D: LitStr " HAVING morsingescob <> 0 OR morapre <> 0 OR morgesjud <> 0 OR morcon <> 0 OR deuregplapag <> 0;"
  loc_C47F70: ConcatStr
  loc_C47F71: FStStrNoPop var_120
  loc_C47F74: LitStr " DROP TEMPORARY TABLE acuetmp;"
  loc_C47F77: ConcatStr
  loc_C47F78: FStStrNoPop var_124
  loc_C47F7B: LitStr " SELECT @codi:=min(CodiAcue) FROM acue; SET @num=0;"
  loc_C47F7E: ConcatStr
  loc_C47F7F: FStStrNoPop var_128
  loc_C47F82: LitStr " DROP TEMPORARY TABLE IF EXISTS acue2;"
  loc_C47F85: ConcatStr
  loc_C47F86: FStStrNoPop var_12C
  loc_C47F89: LitStr " CREATE TEMPORARY TABLE acue2"
  loc_C47F8C: ConcatStr
  loc_C47F8D: FStStrNoPop var_130
  loc_C47F90: LitStr " SELECT if(CodiAcue<>@codi,((@codi:=CodiAcue)*0)+(@num:=1),@num:=@num+1) as control,"
  loc_C47F93: ConcatStr
  loc_C47F94: FStStrNoPop var_134
  loc_C47F97: LitStr " CodiAcue, CodiOfic, CuenCtct, morsingescob, morapre, morgesjud, morcon,"
  loc_C47F9A: ConcatStr
  loc_C47F9B: FStStrNoPop var_138
  loc_C47F9E: LitStr " morsingescob+morapre+morgesjud+morcon as subtotal, deuregplapag,"
  loc_C47FA1: ConcatStr
  loc_C47FA2: FStStrNoPop var_13C
  loc_C47FA5: LitStr " morsingescob+morapre+morgesjud+morcon+deuregplapag as total"
  loc_C47FA8: ConcatStr
  loc_C47FA9: FStStrNoPop var_140
  loc_C47FAC: LitStr " FROM acue ORDER BY CodiAcue, total DESC;"
  loc_C47FAF: ConcatStr
  loc_C47FB0: FStStrNoPop var_144
  loc_C47FB3: LitStr " DROP TEMPORARY TABLE IF EXISTS acue;"
  loc_C47FB6: ConcatStr
  loc_C47FB7: FStStrNoPop var_148
  loc_C47FBA: FLdPr var_114
  loc_C47FBD: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C47FC2: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_C47FE1: LitStr "SELECT acue2.CodiAcue, DetaAcue, control, acue2.CodiOfic, acue2.CuenCtct, DetaPers, relacion.CucuPers,"
  loc_C47FE4: LitStr " morsingescob, morapre, morgesjud, morcon, subtotal, deuregplapag, total"
  loc_C47FE7: ConcatStr
  loc_C47FE8: FStStrNoPop var_94
  loc_C47FEB: LitStr " FROM acue2 LEFT JOIN a3949a22 ON a3949a22.CodiAcue = acue2.CodiAcue"
  loc_C47FEE: ConcatStr
  loc_C47FEF: FStStrNoPop var_118
  loc_C47FF2: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = acue2.CodiOfic AND relacion.CuenCtct = acue2.CuenCtct AND TipoRela = 'Titular'"
  loc_C47FF5: ConcatStr
  loc_C47FF6: FStStrNoPop var_11C
  loc_C47FF9: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C47FFC: ConcatStr
  loc_C47FFD: FStStrNoPop var_120
  loc_C48000: LitStr " WHERE control <= 50"
  loc_C48003: ConcatStr
  loc_C48004: FStStrNoPop var_124
  loc_C48007: FLdPr var_114
  loc_C4800A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4800F: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_C4801C: Branch loc_C4869B
  loc_C4801F: LitStr " DROP TEMPORARY TABLE IF EXISTS acue2;"
  loc_C48022: LitStr " CREATE TEMPORARY TABLE acue2 ("
  loc_C48025: ConcatStr
  loc_C48026: FStStrNoPop var_94
  loc_C48029: LitStr " ontrol` integer(8) NOT NULL default '0',"
  loc_C4802C: ConcatStr
  loc_C4802D: FStStrNoPop var_118
  loc_C48030: LitStr " odiConc` varchar(8) NOT NULL default '',"
  loc_C48033: ConcatStr
  loc_C48034: FStStrNoPop var_11C
  loc_C48037: LitStr " odiOfic` tinyint(2) unsigned NOT NULL default '0',"
  loc_C4803A: ConcatStr
  loc_C4803B: FStStrNoPop var_120
  loc_C4803E: LitStr " uenCtct` varchar(11) NOT NULL default '',"
  loc_C48041: ConcatStr
  loc_C48042: FStStrNoPop var_124
  loc_C48045: LitStr " orsingescob` decimal(12,2) NOT NULL default '0.00',"
  loc_C48048: ConcatStr
  loc_C48049: FStStrNoPop var_128
  loc_C4804C: LitStr " orapre` decimal(12,2) NOT NULL default '0.00',"
  loc_C4804F: ConcatStr
  loc_C48050: FStStrNoPop var_12C
  loc_C48053: LitStr " orgesjud` decimal(12,2) NOT NULL default '0.00',"
  loc_C48056: ConcatStr
  loc_C48057: FStStrNoPop var_130
  loc_C4805A: LitStr " orcon` decimal(12,2) NOT NULL default '0.00',"
  loc_C4805D: ConcatStr
  loc_C4805E: FStStrNoPop var_134
  loc_C48061: LitStr " ubtotal` decimal(12,2) NOT NULL default '0.00',"
  loc_C48064: ConcatStr
  loc_C48065: FStStrNoPop var_138
  loc_C48068: LitStr " euregplapag` decimal(12,2) NOT NULL default '0.00',"
  loc_C4806B: ConcatStr
  loc_C4806C: FStStrNoPop var_13C
  loc_C4806F: LitStr " otal` decimal(12,2) NOT NULL default '0.00',"
  loc_C48072: ConcatStr
  loc_C48073: FStStrNoPop var_140
  loc_C48076: LitStr " KEY mpidx` (`Control`,`CodiConc`,`CodiOfic`,`CuenCtct`)"
  loc_C48079: ConcatStr
  loc_C4807A: FStStrNoPop var_144
  loc_C4807D: LitStr " ) ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_C48080: ConcatStr
  loc_C48081: FStStrNoPop var_148
  loc_C48084: FLdPr var_114
  loc_C48087: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4808C: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_C480AB: LitStr "SELECT * FROM concepto "
  loc_C480AE: LitStr " WHERE PeriInfo = "
  loc_C480B1: ConcatStr
  loc_C480B2: FStStrNoPop var_94
  loc_C480B5: FLdPr Me
  loc_C480B8: VCallAd Control_ID_PeriInfoMsk
  loc_C480BB: FStAdFunc var_B8
  loc_C480BE: FLdPr var_B8
  loc_C480C1: LateIdLdVar var_C8 DispID_22 0
  loc_C480C8: CStrVarTmp
  loc_C480C9: FStStrNoPop var_118
  loc_C480CC: ConcatStr
  loc_C480CD: FStStrNoPop var_11C
  loc_C480D0: LitStr " AND ActiConc <> ''"
  loc_C480D3: ConcatStr
  loc_C480D4: FStStrNoPop var_120
  loc_C480D7: FLdPr Me
  loc_C480DA: MemLdRfVar from_stack_1.global_96
  loc_C480DD: NewIfNullPr clsboleto
  loc_C480E0: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C480E5: FFreeStr var_94 = "": var_118 = "": var_11C = ""
  loc_C480F0: FFree1Ad var_B8
  loc_C480F3: FFree1Var var_C8 = ""
  loc_C480F6: FLdRfVar var_16C
  loc_C480F9: FLdPr Me
  loc_C480FC: MemLdRfVar from_stack_1.global_96
  loc_C480FF: NewIfNullPr clsboleto
  loc_C48102: from_stack_1 = clsboleto.RecordCount
  loc_C48107: ILdRf var_16C
  loc_C4810A: LitI4 0
  loc_C4810F: GtI4
  loc_C48110: BranchF loc_C48623
  loc_C48113: FLdPr Me
  loc_C48116: MemLdRfVar from_stack_1.global_96
  loc_C48119: NewIfNullPr clsboleto
  loc_C4811C: Call clsboleto.MoveFirst()
  loc_C48121: FLdRfVar var_CE
  loc_C48124: FLdPr Me
  loc_C48127: MemLdRfVar from_stack_1.global_96
  loc_C4812A: NewIfNullPr clsboleto
  loc_C4812D: from_stack_1 = clsboleto.EOF
  loc_C48132: FLdI2 var_CE
  loc_C48135: NotI4
  loc_C48136: BranchF loc_C48623
  loc_C48139: FLdRfVar var_C8
  loc_C4813C: FLdRfVar var_170
  loc_C4813F: LitVarStr var_A4, "SacuConc"
  loc_C48144: PopAdLdVar
  loc_C48145: FLdRfVar var_CC
  loc_C48148: FLdRfVar var_B8
  loc_C4814B: FLdPr Me
  loc_C4814E: MemLdRfVar from_stack_1.global_96
  loc_C48151: NewIfNullPr clsboleto
  loc_C48154: from_stack_1v = clsboleto.RsFrmGet()
  loc_C48159: FLdPr var_B8
  loc_C4815C:  = Me.Fields
  loc_C48161: FLdPr var_CC
  loc_C48164: from_stack_2 = Me.Item(from_stack_1)
  loc_C48169: FLdPr var_170
  loc_C4816C:  = Me.Value
  loc_C48171: FLdRfVar var_C8
  loc_C48174: FnCByteVar
  loc_C48176: CI2UI1
  loc_C48178: LitI2_Byte 0
  loc_C4817A: EqI2
  loc_C4817B: FFreeAd var_B8 = "": var_CC = ""
  loc_C48184: FFree1Var var_C8 = ""
  loc_C48187: BranchF loc_C483E4
  loc_C4818A: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo;"
  loc_C4818D: LitStr "CREATE TEMPORARY TABLE tmp_saldo"
  loc_C48190: ConcatStr
  loc_C48191: FStStrNoPop var_94
  loc_C48194: LitStr " SELECT ctacte.CodiConc, Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, SUM(DebeCtct-CredCtct) AS SainCtct"
  loc_C48197: ConcatStr
  loc_C48198: FStStrNoPop var_118
  loc_C4819B: LitStr " FROM ctacte"
  loc_C4819E: ConcatStr
  loc_C4819F: FStStrNoPop var_11C
  loc_C481A2: LitStr " WHERE ctacte.FealCtct < '2018-07-01' AND CodiConc = '"
  loc_C481A5: ConcatStr
  loc_C481A6: CVarStr var_E0
  loc_C481A9: FLdRfVar var_C8
  loc_C481AC: FLdRfVar var_170
  loc_C481AF: LitVarStr var_A4, "CodiConc"
  loc_C481B4: PopAdLdVar
  loc_C481B5: FLdRfVar var_CC
  loc_C481B8: FLdRfVar var_B8
  loc_C481BB: FLdPr Me
  loc_C481BE: MemLdRfVar from_stack_1.global_96
  loc_C481C1: NewIfNullPr clsboleto
  loc_C481C4: from_stack_1v = clsboleto.RsFrmGet()
  loc_C481C9: FLdPr var_B8
  loc_C481CC:  = Me.Fields
  loc_C481D1: FLdPr var_CC
  loc_C481D4: from_stack_2 = Me.Item(from_stack_1)
  loc_C481D9: FLdPr var_170
  loc_C481DC:  = Me.Value
  loc_C481E1: FLdRfVar var_C8
  loc_C481E4: ConcatVar var_F0
  loc_C481E8: LitVarStr var_B4, "' AND MoviCtct = 1"
  loc_C481ED: ConcatVar var_100
  loc_C481F1: LitVarStr var_180, " GROUP BY Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct;"
  loc_C481F6: ConcatVar var_110
  loc_C481FA: CStrVarVal var_120
  loc_C481FE: FLdPr var_114
  loc_C48201: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C48206: FFreeStr var_94 = "": var_118 = "": var_11C = ""
  loc_C48211: FFreeAd var_B8 = "": var_CC = ""
  loc_C4821A: FFreeVar var_E0 = "": var_C8 = "": var_F0 = "": var_100 = ""
  loc_C48227: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_civitas;"
  loc_C4822A: LitStr " CREATE TEMPORARY TABLE tmp_saldo_civitas"
  loc_C4822D: ConcatStr
  loc_C4822E: FStStrNoPop var_94
  loc_C48231: LitStr " SELECT ctacte.CodiConc, ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.CodiFapa, ctacte.NumeApre, SUM(ctacte.DebeCtct)- SUM(ctacte.CredCtct) AS SainCtct"
  loc_C48234: ConcatStr
  loc_C48235: FStStrNoPop var_118
  loc_C48238: LitStr " FROM tmp_saldo"
  loc_C4823B: ConcatStr
  loc_C4823C: FStStrNoPop var_11C
  loc_C4823F: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = tmp_saldo.CodiOfic "
  loc_C48242: ConcatStr
  loc_C48243: FStStrNoPop var_120
  loc_C48246: LitStr " AND ctacte.CuenCtct = tmp_saldo.CuenCtct "
  loc_C48249: ConcatStr
  loc_C4824A: FStStrNoPop var_124
  loc_C4824D: LitStr " AND ctacte.PeriCtct = tmp_saldo.PeriCtct "
  loc_C48250: ConcatStr
  loc_C48251: FStStrNoPop var_128
  loc_C48254: LitStr " AND ctacte.BimeCtct = tmp_saldo.BimeCtct "
  loc_C48257: ConcatStr
  loc_C48258: FStStrNoPop var_12C
  loc_C4825B: LitStr " AND ctacte.NumeCtct = tmp_saldo.NumeCtct"
  loc_C4825E: ConcatStr
  loc_C4825F: FStStrNoPop var_130
  loc_C48262: LitStr " AND ctacte.FealCtct < '"
  loc_C48265: ConcatStr
  loc_C48266: FStStrNoPop var_134
  loc_C48269: ILdRf var_88
  loc_C4826C: ConcatStr
  loc_C4826D: FStStrNoPop var_138
  loc_C48270: LitStr "'"
  loc_C48273: ConcatStr
  loc_C48274: FStStrNoPop var_13C
  loc_C48277: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct;"
  loc_C4827A: ConcatStr
  loc_C4827B: FStStrNoPop var_140
  loc_C4827E: FLdPr var_114
  loc_C48281: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C48286: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_C482A1: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_saldo;"
  loc_C482A4: LitStr " CREATE TEMPORARY TABLE tmp_saldo"
  loc_C482A7: ConcatStr
  loc_C482A8: FStStrNoPop var_94
  loc_C482AB: LitStr " SELECT ctacte.CodiConc, Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, SUM(DebeCtct-CredCtct) AS SainCtct"
  loc_C482AE: ConcatStr
  loc_C482AF: FStStrNoPop var_118
  loc_C482B2: LitStr " FROM ctacte WHERE ctacte.FealCtct >= '2018-07-01' AND FealCtct < '"
  loc_C482B5: ConcatStr
  loc_C482B6: FStStrNoPop var_11C
  loc_C482B9: ILdRf var_88
  loc_C482BC: ConcatStr
  loc_C482BD: FStStrNoPop var_120
  loc_C482C0: LitStr "' AND CodiConc = '"
  loc_C482C3: ConcatStr
  loc_C482C4: CVarStr var_E0
  loc_C482C7: FLdRfVar var_C8
  loc_C482CA: FLdRfVar var_170
  loc_C482CD: LitVarStr var_A4, "CodiConc"
  loc_C482D2: PopAdLdVar
  loc_C482D3: FLdRfVar var_CC
  loc_C482D6: FLdRfVar var_B8
  loc_C482D9: FLdPr Me
  loc_C482DC: MemLdRfVar from_stack_1.global_96
  loc_C482DF: NewIfNullPr clsboleto
  loc_C482E2: from_stack_1v = clsboleto.RsFrmGet()
  loc_C482E7: FLdPr var_B8
  loc_C482EA:  = Me.Fields
  loc_C482EF: FLdPr var_CC
  loc_C482F2: from_stack_2 = Me.Item(from_stack_1)
  loc_C482F7: FLdPr var_170
  loc_C482FA:  = Me.Value
  loc_C482FF: FLdRfVar var_C8
  loc_C48302: ConcatVar var_F0
  loc_C48306: LitVarStr var_B4, "' AND MoviCtct = 1"
  loc_C4830B: ConcatVar var_100
  loc_C4830F: LitVarStr var_180, " GROUP BY Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct;"
  loc_C48314: ConcatVar var_110
  loc_C48318: CStrVarVal var_124
  loc_C4831C: FLdPr var_114
  loc_C4831F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C48324: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_C48331: FFreeAd var_B8 = "": var_CC = ""
  loc_C4833A: FFreeVar var_E0 = "": var_C8 = "": var_F0 = "": var_100 = ""
  loc_C48347: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_saldo_infogov;"
  loc_C4834A: LitStr " CREATE TEMPORARY TABLE tmp_saldo_infogov"
  loc_C4834D: ConcatStr
  loc_C4834E: FStStrNoPop var_94
  loc_C48351: LitStr " SELECT ctacte.CodiConc, ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.CodiFapa, ctacte.NumeApre, SUM(ctacte.DebeCtct)- SUM(ctacte.CredCtct) AS SainCtct"
  loc_C48354: ConcatStr
  loc_C48355: FStStrNoPop var_118
  loc_C48358: LitStr " FROM tmp_saldo"
  loc_C4835B: ConcatStr
  loc_C4835C: FStStrNoPop var_11C
  loc_C4835F: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = tmp_saldo.CodiOfic "
  loc_C48362: ConcatStr
  loc_C48363: FStStrNoPop var_120
  loc_C48366: LitStr " AND ctacte.CuenCtct = tmp_saldo.CuenCtct "
  loc_C48369: ConcatStr
  loc_C4836A: FStStrNoPop var_124
  loc_C4836D: LitStr " AND ctacte.PeriCtct = tmp_saldo.PeriCtct "
  loc_C48370: ConcatStr
  loc_C48371: FStStrNoPop var_128
  loc_C48374: LitStr " AND ctacte.BimeCtct = tmp_saldo.BimeCtct "
  loc_C48377: ConcatStr
  loc_C48378: FStStrNoPop var_12C
  loc_C4837B: LitStr " AND ctacte.NumeCtct = tmp_saldo.NumeCtct"
  loc_C4837E: ConcatStr
  loc_C4837F: FStStrNoPop var_130
  loc_C48382: LitStr " AND ctacte.FealCtct < '"
  loc_C48385: ConcatStr
  loc_C48386: FStStrNoPop var_134
  loc_C48389: ILdRf var_88
  loc_C4838C: ConcatStr
  loc_C4838D: FStStrNoPop var_138
  loc_C48390: LitStr "'"
  loc_C48393: ConcatStr
  loc_C48394: FStStrNoPop var_13C
  loc_C48397: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct;"
  loc_C4839A: ConcatStr
  loc_C4839B: FStStrNoPop var_140
  loc_C4839E: FLdPr var_114
  loc_C483A1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C483A6: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_C483C1: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_info;"
  loc_C483C4: LitStr " CREATE TEMPORARY TABLE tmp_saldo_info (SELECT * FROM tmp_saldo_civitas) UNION ALL "
  loc_C483C7: ConcatStr
  loc_C483C8: FStStrNoPop var_94
  loc_C483CB: LitStr " (SELECT * FROM tmp_saldo_infogov);"
  loc_C483CE: ConcatStr
  loc_C483CF: FStStrNoPop var_118
  loc_C483D2: FLdPr var_114
  loc_C483D5: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C483DA: FFreeStr var_94 = ""
  loc_C483E1: Branch loc_C48534
  loc_C483E4: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_saldo_info; "
  loc_C483E7: LitStr " CREATE TEMPORARY TABLE tmp_saldo_info"
  loc_C483EA: ConcatStr
  loc_C483EB: FStStrNoPop var_94
  loc_C483EE: LitStr " (SELECT '"
  loc_C483F1: ConcatStr
  loc_C483F2: FStStrNoPop var_11C
  loc_C483F5: FLdRfVar var_118
  loc_C483F8: FLdPr Me
  loc_C483FB: MemLdRfVar from_stack_1.global_96
  loc_C483FE: NewIfNullPr clsboleto
  loc_C48401: from_stack_1 = clsboleto.CodiConc
  loc_C48406: ILdRf var_118
  loc_C48409: ConcatStr
  loc_C4840A: FStStrNoPop var_120
  loc_C4840D: LitStr "' CodiConc, CodiOfic, CuenCtct, 0 PeriCtct, 0 BimeCtct, 0 NumeCtct, 0 CodiFapa, 0 NumeApre, ROUND(SUM(replace(ImpoSain,',','.')),2) AS SainCtct "
  loc_C48410: ConcatStr
  loc_C48411: FStStrNoPop var_124
  loc_C48414: LitStr " FROM saldoinicialcuota WHERE ConcViej = '"
  loc_C48417: ConcatStr
  loc_C48418: CVarStr var_E0
  loc_C4841B: FLdRfVar var_C8
  loc_C4841E: FLdRfVar var_170
  loc_C48421: LitVarStr var_A4, "ConcViej"
  loc_C48426: PopAdLdVar
  loc_C48427: FLdRfVar var_CC
  loc_C4842A: FLdRfVar var_B8
  loc_C4842D: FLdPr Me
  loc_C48430: MemLdRfVar from_stack_1.global_96
  loc_C48433: NewIfNullPr clsboleto
  loc_C48436: from_stack_1v = clsboleto.RsFrmGet()
  loc_C4843B: FLdPr var_B8
  loc_C4843E:  = Me.Fields
  loc_C48443: FLdPr var_CC
  loc_C48446: from_stack_2 = Me.Item(from_stack_1)
  loc_C4844B: FLdPr var_170
  loc_C4844E:  = Me.Value
  loc_C48453: FLdRfVar var_C8
  loc_C48456: ConcatVar var_F0
  loc_C4845A: LitVarStr var_B4, "'"
  loc_C4845F: ConcatVar var_100
  loc_C48463: LitVarStr var_180, " GROUP BY Codiofic, CuenCtct)"
  loc_C48468: ConcatVar var_110
  loc_C4846C: LitVarStr var_190, " UNION ALL"
  loc_C48471: ConcatVar var_1A0
  loc_C48475: LitVarStr var_1B0, " (SELECT ctacte.CodiConc, Codiofic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, 0 CodiFapa, 0 NumeApre, SUM(IF(CodiTimo IN (3,8,10,19,22,24),DebeCtct,0))-SUM(CredCtct) AS SainCtct"
  loc_C4847A: ConcatVar var_1C0
  loc_C4847E: LitVarStr var_1D0, " FROM ctacte WHERE ctacte.FealCtct >= '2018-07-01' AND FealCtct < '"
  loc_C48483: ConcatVar var_1E0
  loc_C48487: ILdRf var_88
  loc_C4848A: CVarStr var_1F0
  loc_C4848D: ConcatVar var_200
  loc_C48491: LitVarStr var_210, "' AND CodiConc = '"
  loc_C48496: ConcatVar var_220
  loc_C4849A: FLdRfVar var_24C
  loc_C4849D: FLdRfVar var_23C
  loc_C484A0: LitVarStr var_238, "CodiConc"
  loc_C484A5: PopAdLdVar
  loc_C484A6: FLdRfVar var_228
  loc_C484A9: FLdRfVar var_224
  loc_C484AC: FLdPr Me
  loc_C484AF: MemLdRfVar from_stack_1.global_96
  loc_C484B2: NewIfNullPr clsboleto
  loc_C484B5: from_stack_1v = clsboleto.RsFrmGet()
  loc_C484BA: FLdPr var_224
  loc_C484BD:  = Me.Fields
  loc_C484C2: FLdPr var_228
  loc_C484C5: from_stack_2 = Me.Item(from_stack_1)
  loc_C484CA: FLdPr var_23C
  loc_C484CD:  = Me.Value
  loc_C484D2: FLdRfVar var_24C
  loc_C484D5: ConcatVar var_25C
  loc_C484D9: LitVarStr var_26C, "'"
  loc_C484DE: ConcatVar var_27C
  loc_C484E2: LitVarStr var_28C, " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct);"
  loc_C484E7: ConcatVar var_29C
  loc_C484EB: CStrVarVal var_128
  loc_C484EF: FLdPr var_114
  loc_C484F2: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C484F7: FFreeStr var_94 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = ""
  loc_C48506: FFreeAd var_B8 = "": var_CC = "": var_170 = "": var_224 = "": var_228 = ""
  loc_C48515: FFreeVar var_E0 = "": var_C8 = "": var_F0 = "": var_100 = "": var_110 = "": var_1A0 = "": var_1C0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_24C = "": var_25C = "": var_27C = ""
  loc_C48534: LitStr "DROP TEMPORARY TABLE IF EXISTS acuetmp;"
  loc_C48537: LitStr " CREATE TEMPORARY TABLE acuetmp"
  loc_C4853A: ConcatStr
  loc_C4853B: FStStrNoPop var_94
  loc_C4853E: LitStr " SELECT tmp_saldo_info.*, if(CodiFapa=0 and tmp_saldo_info.NumeApre=0,SainCtct,0) as morsingescob,"
  loc_C48541: ConcatStr
  loc_C48542: FStStrNoPop var_118
  loc_C48545: LitStr " if(CodiFapa=0 and tmp_saldo_info.NumeApre<>0,if(apremio.CodiInju=1 OR apremio.CodiInju=0,SainCtct,0),0) as morapre,"
  loc_C48548: ConcatStr
  loc_C48549: FStStrNoPop var_11C
  loc_C4854C: LitStr " if(CodiFapa=0 and tmp_saldo_info.NumeApre<>0,if(apremio.CodiInju>1,SainCtct,0),0) as morgesjud,"
  loc_C4854F: ConcatStr
  loc_C48550: FStStrNoPop var_120
  loc_C48553: LitStr " 0 as morcon,"
  loc_C48556: ConcatStr
  loc_C48557: FStStrNoPop var_124
  loc_C4855A: LitStr " if(tmp_saldo_info.CodiFapa<>0,SainCtct,0) as deuregplapag"
  loc_C4855D: ConcatStr
  loc_C4855E: FStStrNoPop var_128
  loc_C48561: LitStr " FROM tmp_saldo_info"
  loc_C48564: ConcatStr
  loc_C48565: FStStrNoPop var_12C
  loc_C48568: LitStr " LEFT JOIN apremio ON apremio.NumeApre = tmp_saldo_info.NumeApre"
  loc_C4856B: ConcatStr
  loc_C4856C: FStStrNoPop var_130
  loc_C4856F: LitStr " WHERE SainCtct <> 0"
  loc_C48572: ConcatStr
  loc_C48573: FStStrNoPop var_134
  loc_C48576: FLdPr var_114
  loc_C48579: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4857E: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_C48593: LitStr "DROP TEMPORARY TABLE IF EXISTS acue;"
  loc_C48596: LitStr " CREATE TEMPORARY TABLE acue"
  loc_C48599: ConcatStr
  loc_C4859A: FStStrNoPop var_94
  loc_C4859D: LitStr " SELECT CodiConc, CodiOfic, CuenCtct, sum(morsingescob) as morsingescob, sum(morapre) as morapre,"
  loc_C485A0: ConcatStr
  loc_C485A1: FStStrNoPop var_118
  loc_C485A4: LitStr " sum(morgesjud) as morgesjud, sum(morcon) as morcon, sum(deuregplapag) as deuregplapag FROM acuetmp"
  loc_C485A7: ConcatStr
  loc_C485A8: FStStrNoPop var_11C
  loc_C485AB: LitStr " GROUP BY CodiConc, CodiOfic, CuenCtct"
  loc_C485AE: ConcatStr
  loc_C485AF: FStStrNoPop var_120
  loc_C485B2: LitStr " Having morsingescob <> 0 Or morapre <> 0 Or morgesjud <> 0 Or morcon <> 0 Or deuregplapag <> 0"
  loc_C485B5: ConcatStr
  loc_C485B6: FStStrNoPop var_124
  loc_C485B9: FLdPr var_114
  loc_C485BC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C485C1: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_C485CE: LitStr "SELECT @codi:=min(CodiConc) FROM acue; SET @num=0;"
  loc_C485D1: LitStr " INSERT INTO acue2(Control,CodiConc,CodiOfic,CuenCtct,morsingescob,morapre,morgesjud,morcon,subtotal,deuregplapag,Total)"
  loc_C485D4: ConcatStr
  loc_C485D5: FStStrNoPop var_94
  loc_C485D8: LitStr " SELECT if(CodiConc<>@codi,((@codi:=CodiConc)*0)+(@num:=1),@num:=@num+1) as control,"
  loc_C485DB: ConcatStr
  loc_C485DC: FStStrNoPop var_118
  loc_C485DF: LitStr " CodiConc, CodiOfic, CuenCtct, morsingescob, morapre, morgesjud, morcon,"
  loc_C485E2: ConcatStr
  loc_C485E3: FStStrNoPop var_11C
  loc_C485E6: LitStr " morsingescob+morapre+morgesjud+morcon as subtotal, deuregplapag,"
  loc_C485E9: ConcatStr
  loc_C485EA: FStStrNoPop var_120
  loc_C485ED: LitStr " morsingescob+morapre+morgesjud+morcon+deuregplapag as total"
  loc_C485F0: ConcatStr
  loc_C485F1: FStStrNoPop var_124
  loc_C485F4: LitStr " FROM acue ORDER BY CodiConc, total DESC;"
  loc_C485F7: ConcatStr
  loc_C485F8: FStStrNoPop var_128
  loc_C485FB: FLdPr var_114
  loc_C485FE: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C48603: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_C48612: FLdPr Me
  loc_C48615: MemLdRfVar from_stack_1.global_96
  loc_C48618: NewIfNullPr clsboleto
  loc_C4861B: Call clsboleto.MoveSiguiente()
  loc_C48620: Branch loc_C48121
  loc_C48623: LitStr "SELECT acue2.CodiConc, DetaConc, control, acue2.CodiOfic, acue2.CuenCtct, "
  loc_C48626: LitStr " if(persona.DetaPers is null, if(titulargis.DetaPers is null,'', titulargis.DetaPers),persona.DetaPers) DetaPers, "
  loc_C48629: ConcatStr
  loc_C4862A: FStStrNoPop var_94
  loc_C4862D: LitStr " if(persona.CucuPers is null, if(titulargis.CucuPers is null,'', titulargis.CucuPers),persona.CucuPers) CucuPers,"
  loc_C48630: ConcatStr
  loc_C48631: FStStrNoPop var_118
  loc_C48634: LitStr " morsingescob, morapre, morgesjud, morcon, subtotal, deuregplapag, total"
  loc_C48637: ConcatStr
  loc_C48638: FStStrNoPop var_11C
  loc_C4863B: LitStr " FROM acue2 LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_C4863E: ConcatStr
  loc_C4863F: FStStrNoPop var_120
  loc_C48642: ImpAdLdI2 MemVar_D93034
  loc_C48645: CStrUI1
  loc_C48647: FStStrNoPop var_124
  loc_C4864A: ConcatStr
  loc_C4864B: FStStrNoPop var_128
  loc_C4864E: LitStr " AND concepto.CodiConc = acue2.CodiConc"
  loc_C48651: ConcatStr
  loc_C48652: FStStrNoPop var_12C
  loc_C48655: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = acue2.CodiOfic AND relacion.CuenCtct = acue2.CuenCtct AND TipoRela = 'Titular'"
  loc_C48658: ConcatStr
  loc_C48659: FStStrNoPop var_130
  loc_C4865C: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C4865F: ConcatStr
  loc_C48660: FStStrNoPop var_134
  loc_C48663: LitStr " LEFT JOIN titulargis ON titulargis.CodiOfic = acue2.CodiOfic"
  loc_C48666: ConcatStr
  loc_C48667: FStStrNoPop var_138
  loc_C4866A: LitStr " AND titulargis.CuenCtct = acue2.CuenCtct"
  loc_C4866D: ConcatStr
  loc_C4866E: FStStrNoPop var_13C
  loc_C48671: LitStr " WHERE control <= 50"
  loc_C48674: ConcatStr
  loc_C48675: FStStrNoPop var_140
  loc_C48678: FLdPr var_114
  loc_C4867B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C48680: FFreeStr var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_C4869B: FLdRfVar var_16C
  loc_C4869E: FLdPr var_114
  loc_C486A1: from_stack_1 = clsctacte.RecordCount
  loc_C486A6: ILdRf var_16C
  loc_C486A9: LitI4 0
  loc_C486AE: EqI4
  loc_C486AF: BranchF loc_C486BD
  loc_C486B2: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C486B5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C486BA: Branch loc_C489C0
  loc_C486BD: LitI2_Byte 0
  loc_C486BF: FLdPr Me
  loc_C486C2: MemStI2 global_104
  loc_C486C5: LitI4 0
  loc_C486CA: FLdPr Me
  loc_C486CD: MemLdI2 global_104
  loc_C486D0: CI4UI1
  loc_C486D1: FLdPr Me
  loc_C486D4: MemLdRfVar from_stack_1.global_100
  loc_C486D7: Redim
  loc_C486E1: LitI4 0
  loc_C486E6: LitI4 1
  loc_C486EB: FLdPr Me
  loc_C486EE: MemLdRfVar from_stack_1.global_112
  loc_C486F1: Redim
  loc_C486FB: FLdPr var_114
  loc_C486FE: Call clsctacte.MoveFirst()
  loc_C48703: FLdRfVar var_16C
  loc_C48706: FLdPr var_114
  loc_C48709: from_stack_1 = clsctacte.RecordCount
  loc_C4870E: ILdRf var_16C
  loc_C48711: CR8I4
  loc_C48712: CVarR4
  loc_C48716: PopAdLdVar
  loc_C48717: FLdPrThis
  loc_C48718: VCallAd Control_ID_Pbar
  loc_C4871B: FStAdFunc var_B8
  loc_C4871E: FLdPr var_B8
  loc_C48721: LateIdSt
  loc_C48726: FFree1Ad var_B8
  loc_C48729: LitVar_TRUE var_A4
  loc_C4872C: PopAdLdVar
  loc_C4872D: FLdPrThis
  loc_C4872E: VCallAd Control_ID_Pbar
  loc_C48731: FStAdFunc var_B8
  loc_C48734: FLdPr var_B8
  loc_C48737: LateIdSt
  loc_C4873C: FFree1Ad var_B8
  loc_C4873F: Call Proc_323_21_AA4EA8()
  loc_C48744: FLdRfVar var_16C
  loc_C48747: FLdPr var_114
  loc_C4874A: from_stack_1 = clsctacte.RecordCount
  loc_C4874F: ILdRf var_16C
  loc_C48752: LitI4 1
  loc_C48757: GtI4
  loc_C48758: BranchF loc_C487DA
  loc_C4875B: LitI4 2
  loc_C48760: FLdRfVar var_2A0
  loc_C48763: FLdPrThis
  loc_C48764: VCallAd Control_ID_Pbar
  loc_C48767: FStAdFunc var_B8
  loc_C4876A: FLdPr var_B8
  loc_C4876D: LateIdLdVar var_C8 DispID_1 0
  loc_C48774: CR8Var
  loc_C48776: CI4R8
  loc_C48777: FFree1Ad var_B8
  loc_C4877A: FFree1Var var_C8 = ""
  loc_C4877D: ForI4 var_2A8
  loc_C48783: ILdRf var_2A0
  loc_C48786: CR8I4
  loc_C48787: CVarR4
  loc_C4878B: PopAdLdVar
  loc_C4878C: FLdPrThis
  loc_C4878D: VCallAd Control_ID_Pbar
  loc_C48790: FStAdFunc var_B8
  loc_C48793: FLdPr var_B8
  loc_C48796: LateIdSt
  loc_C4879B: FFree1Ad var_B8
  loc_C4879E: FLdRfVar var_94
  loc_C487A1: FLdPr var_114
  loc_C487A4: from_stack_1 = clsctacte.CodiConc
  loc_C487A9: ILdRf var_94
  loc_C487AC: FLdPr Me
  loc_C487AF: MemLdI2 global_104
  loc_C487B2: CI4UI1
  loc_C487B3: FLdPr Me
  loc_C487B6: MemLdStr global_100
  loc_C487B9: Ary1LdPr
  loc_C487BA: MemLdStr global_0
  loc_C487BD: NeStr
  loc_C487BF: FFree1Str var_94
  loc_C487C2: BranchF loc_C487CD
  loc_C487C5: Call Proc_323_21_AA4EA8()
  loc_C487CA: Branch loc_C487D2
  loc_C487CD: Call Proc_323_22_B2C088()
  loc_C487D2: FLdRfVar var_2A0
  loc_C487D5: NextI4 var_2A8, loc_C48783
  loc_C487DA: LitVar_FALSE
  loc_C487DE: PopAdLdVar
  loc_C487DF: FLdPrThis
  loc_C487E0: VCallAd Control_ID_Pbar
  loc_C487E3: FStAdFunc var_B8
  loc_C487E6: FLdPr var_B8
  loc_C487E9: LateIdSt
  loc_C487EE: FFree1Ad var_B8
  loc_C487F1: LitNothing
  loc_C487F3: FStAd var_114 
  loc_C487F7: LitI2_Byte 1
  loc_C487F9: FLdPr Me
  loc_C487FC: MemLdRfVar from_stack_1.global_104
  loc_C487FF: FLdPr Me
  loc_C48802: MemLdStr global_100
  loc_C48805: LitI2_Byte 1
  loc_C48807: FnUBound
  loc_C48809: CI2I4
  loc_C4880A: ForI2 var_2B0
  loc_C48810: LitI2_Byte 0
  loc_C48812: LitI4 1
  loc_C48817: FLdPr Me
  loc_C4881A: MemLdStr global_112
  loc_C4881D: AryLock
  loc_C48820: Ary1LdPr
  loc_C48821: MemLdRfVar from_stack_1.global_0
  loc_C48824: CVarRef
  loc_C48829: LitI2_Byte &HFF
  loc_C4882B: FLdPr Me
  loc_C4882E: MemLdI2 global_104
  loc_C48831: CI4UI1
  loc_C48832: FLdPr Me
  loc_C48835: MemLdStr global_100
  loc_C48838: Ary1LdPr
  loc_C48839: MemLdStr global_12
  loc_C4883C: CVarStr var_A4
  loc_C4883F: PopAdLdVar
  loc_C48840: FLdRfVar var_2AC
  loc_C48843: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C48848: AryUnlock
  loc_C4884B: LitI2_Byte 0
  loc_C4884D: LitI4 1
  loc_C48852: FLdPr Me
  loc_C48855: MemLdStr global_112
  loc_C48858: AryLock
  loc_C4885B: Ary1LdPr
  loc_C4885C: MemLdRfVar from_stack_1.global_4
  loc_C4885F: CVarRef
  loc_C48864: LitI2_Byte &HFF
  loc_C48866: FLdPr Me
  loc_C48869: MemLdI2 global_104
  loc_C4886C: CI4UI1
  loc_C4886D: FLdPr Me
  loc_C48870: MemLdStr global_100
  loc_C48873: Ary1LdPr
  loc_C48874: MemLdStr global_16
  loc_C48877: CVarStr var_A4
  loc_C4887A: PopAdLdVar
  loc_C4887B: FLdRfVar var_2AC
  loc_C4887E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C48883: AryUnlock
  loc_C48886: LitI2_Byte 0
  loc_C48888: LitI4 1
  loc_C4888D: FLdPr Me
  loc_C48890: MemLdStr global_112
  loc_C48893: AryLock
  loc_C48896: Ary1LdPr
  loc_C48897: MemLdRfVar from_stack_1.global_8
  loc_C4889A: CVarRef
  loc_C4889F: LitI2_Byte &HFF
  loc_C488A1: FLdPr Me
  loc_C488A4: MemLdI2 global_104
  loc_C488A7: CI4UI1
  loc_C488A8: FLdPr Me
  loc_C488AB: MemLdStr global_100
  loc_C488AE: Ary1LdPr
  loc_C488AF: MemLdStr global_20
  loc_C488B2: CVarStr var_A4
  loc_C488B5: PopAdLdVar
  loc_C488B6: FLdRfVar var_2AC
  loc_C488B9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C488BE: AryUnlock
  loc_C488C1: LitI2_Byte 0
  loc_C488C3: LitI4 1
  loc_C488C8: FLdPr Me
  loc_C488CB: MemLdStr global_112
  loc_C488CE: AryLock
  loc_C488D1: Ary1LdPr
  loc_C488D2: MemLdRfVar from_stack_1.global_12
  loc_C488D5: CVarRef
  loc_C488DA: LitI2_Byte &HFF
  loc_C488DC: FLdPr Me
  loc_C488DF: MemLdI2 global_104
  loc_C488E2: CI4UI1
  loc_C488E3: FLdPr Me
  loc_C488E6: MemLdStr global_100
  loc_C488E9: Ary1LdPr
  loc_C488EA: MemLdStr global_24
  loc_C488ED: CVarStr var_A4
  loc_C488F0: PopAdLdVar
  loc_C488F1: FLdRfVar var_2AC
  loc_C488F4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C488F9: AryUnlock
  loc_C488FC: LitI2_Byte 0
  loc_C488FE: LitI4 1
  loc_C48903: FLdPr Me
  loc_C48906: MemLdStr global_112
  loc_C48909: AryLock
  loc_C4890C: Ary1LdPr
  loc_C4890D: MemLdRfVar from_stack_1.global_16
  loc_C48910: CVarRef
  loc_C48915: LitI2_Byte &HFF
  loc_C48917: FLdPr Me
  loc_C4891A: MemLdI2 global_104
  loc_C4891D: CI4UI1
  loc_C4891E: FLdPr Me
  loc_C48921: MemLdStr global_100
  loc_C48924: Ary1LdPr
  loc_C48925: MemLdStr global_28
  loc_C48928: CVarStr var_A4
  loc_C4892B: PopAdLdVar
  loc_C4892C: FLdRfVar var_2AC
  loc_C4892F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C48934: AryUnlock
  loc_C48937: LitI2_Byte 0
  loc_C48939: LitI4 1
  loc_C4893E: FLdPr Me
  loc_C48941: MemLdStr global_112
  loc_C48944: AryLock
  loc_C48947: Ary1LdPr
  loc_C48948: MemLdRfVar from_stack_1.global_20
  loc_C4894B: CVarRef
  loc_C48950: LitI2_Byte &HFF
  loc_C48952: FLdPr Me
  loc_C48955: MemLdI2 global_104
  loc_C48958: CI4UI1
  loc_C48959: FLdPr Me
  loc_C4895C: MemLdStr global_100
  loc_C4895F: Ary1LdPr
  loc_C48960: MemLdStr global_32
  loc_C48963: CVarStr var_A4
  loc_C48966: PopAdLdVar
  loc_C48967: FLdRfVar var_2AC
  loc_C4896A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4896F: AryUnlock
  loc_C48972: LitI2_Byte 0
  loc_C48974: LitI4 1
  loc_C48979: FLdPr Me
  loc_C4897C: MemLdStr global_112
  loc_C4897F: AryLock
  loc_C48982: Ary1LdPr
  loc_C48983: MemLdRfVar from_stack_1.global_24
  loc_C48986: CVarRef
  loc_C4898B: LitI2_Byte &HFF
  loc_C4898D: FLdPr Me
  loc_C48990: MemLdI2 global_104
  loc_C48993: CI4UI1
  loc_C48994: FLdPr Me
  loc_C48997: MemLdStr global_100
  loc_C4899A: Ary1LdPr
  loc_C4899B: MemLdStr global_36
  loc_C4899E: CVarStr var_A4
  loc_C489A1: PopAdLdVar
  loc_C489A2: FLdRfVar var_2AC
  loc_C489A5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C489AA: AryUnlock
  loc_C489AD: FLdPr Me
  loc_C489B0: MemLdRfVar from_stack_1.global_104
  loc_C489B3: NextI2 var_2B0, loc_C48810
  loc_C489B8: LitI2_Byte &HFF
  loc_C489BA: FLdPr Me
  loc_C489BD: MemStI2 bGenerado
  loc_C489C0: LitI4 0
  loc_C489C5: CI2I4
  loc_C489C6: FLdPr Me
  loc_C489C9: Me.MousePointer = from_stack_1
  loc_C489CE: LitVarStr var_A4, vbNullString
  loc_C489D3: PopAdLdVar
  loc_C489D4: FLdPr Me
  loc_C489D7: VCallAd Control_ID_statusBar
  loc_C489DA: FStAdFunc var_B8
  loc_C489DD: FLdPr var_B8
  loc_C489E0: LateIdSt
  loc_C489E5: FFree1Ad var_B8
  loc_C489E8: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B61398
  'Data Table: 4984F8
  loc_B60FB4: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B60FB9: FStStrNoPop var_88
  loc_B60FBC: LitStr "\Acuerdo 3949\"
  loc_B60FBF: ConcatStr
  loc_B60FC0: FStStrNoPop var_A0
  loc_B60FC3: FLdPr Me
  loc_B60FC6: VCallAd Control_ID_PeriInfoMsk
  loc_B60FC9: FStAdFunc var_8C
  loc_B60FCC: FLdPr var_8C
  loc_B60FCF: LateIdLdVar var_9C DispID_22 0
  loc_B60FD6: CStrVarTmp
  loc_B60FD7: FStStrNoPop var_A4
  loc_B60FDA: ConcatStr
  loc_B60FDB: FStStrNoPop var_A8
  loc_B60FDE: LitStr "\Trimestre "
  loc_B60FE1: ConcatStr
  loc_B60FE2: FStStrNoPop var_B4
  loc_B60FE5: FLdRfVar var_AE
  loc_B60FE8: FLdPr Me
  loc_B60FEB: VCallAd Control_ID_TrimestreCbo
  loc_B60FEE: FStAdFunc var_AC
  loc_B60FF1: FLdPr var_AC
  loc_B60FF4:  = Me.ListIndex
  loc_B60FF9: FLdI2 var_AE
  loc_B60FFC: LitI2_Byte 1
  loc_B60FFE: AddI2
  loc_B60FFF: CStrUI1
  loc_B61001: FStStrNoPop var_B8
  loc_B61004: ConcatStr
  loc_B61005: FStStrNoPop var_BC
  loc_B61008: LitStr "\infcontdeudertasree.txt"
  loc_B6100B: ConcatStr
  loc_B6100C: ImpAdStStr MemVar_D93030
  loc_B61010: FFreeStr var_88 = "": var_A0 = "": var_A4 = "": var_A8 = "": var_B4 = "": var_B8 = ""
  loc_B61021: FFreeAd var_8C = ""
  loc_B61028: FFree1Var var_9C = ""
  loc_B6102B: ImpAdLdI4 MemVar_D93030
  loc_B6102E: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B61033: LitStr "|"
  loc_B61036: FStStrCopy var_C4
  loc_B61039: FLdRfVar var_8C
  loc_B6103C: LitI2_Byte 0
  loc_B6103E: LitI2_Byte &HFF
  loc_B61040: ImpAdLdI4 MemVar_D93030
  loc_B61043: FLdPr Me
  loc_B61046: MemLdRfVar from_stack_1.global_56
  loc_B61049: NewIfNullPr IFileSystem3
  loc_B6104C: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B61051: ILdRf var_8C
  loc_B61054: FLdPr Me
  loc_B61057: MemStVarAd
  loc_B6105B: FFree1Ad var_8C
  loc_B6105E: LitI4 0
  loc_B61063: LitI4 &HE
  loc_B61068: FLdRfVar var_C8
  loc_B6106B: Redim
  loc_B61075: LitVarStr var_D8, "|"
  loc_B6107A: LitI4 0
  loc_B6107F: ILdRf var_C8
  loc_B61082: Ary1StVarCopy
  loc_B61084: LitVarStr var_E8, "ejercicio"
  loc_B61089: LitI4 1
  loc_B6108E: ILdRf var_C8
  loc_B61091: Ary1StVarCopy
  loc_B61093: LitVarStr var_F8, "trimestre"
  loc_B61098: LitI4 2
  loc_B6109D: ILdRf var_C8
  loc_B610A0: Ary1StVarCopy
  loc_B610A2: LitVarStr var_108, "nomenclador"
  loc_B610A7: LitI4 3
  loc_B610AC: ILdRf var_C8
  loc_B610AF: Ary1StVarCopy
  loc_B610B1: LitVarStr var_118, "concepto"
  loc_B610B6: LitI4 4
  loc_B610BB: ILdRf var_C8
  loc_B610BE: Ary1StVarCopy
  loc_B610C0: LitVarStr var_128, "conceptodsc"
  loc_B610C5: LitI4 5
  loc_B610CA: ILdRf var_C8
  loc_B610CD: Ary1StVarCopy
  loc_B610CF: LitVarStr var_138, "racsocapnomb"
  loc_B610D4: LitI4 6
  loc_B610D9: ILdRf var_C8
  loc_B610DC: Ary1StVarCopy
  loc_B610DE: LitVarStr var_148, "cuitcuil"
  loc_B610E3: LitI4 7
  loc_B610E8: ILdRf var_C8
  loc_B610EB: Ary1StVarCopy
  loc_B610ED: LitVarStr var_158, "morsingescob"
  loc_B610F2: LitI4 8
  loc_B610F7: ILdRf var_C8
  loc_B610FA: Ary1StVarCopy
  loc_B610FC: LitVarStr var_168, "morapre"
  loc_B61101: LitI4 9
  loc_B61106: ILdRf var_C8
  loc_B61109: Ary1StVarCopy
  loc_B6110B: LitVarStr var_178, "morgesjud"
  loc_B61110: LitI4 &HA
  loc_B61115: ILdRf var_C8
  loc_B61118: Ary1StVarCopy
  loc_B6111A: LitVarStr var_188, "morcon"
  loc_B6111F: LitI4 &HB
  loc_B61124: ILdRf var_C8
  loc_B61127: Ary1StVarCopy
  loc_B61129: LitVarStr var_198, "subtotal"
  loc_B6112E: LitI4 &HC
  loc_B61133: ILdRf var_C8
  loc_B61136: Ary1StVarCopy
  loc_B61138: LitVarStr var_1A8, "deuregplapag"
  loc_B6113D: LitI4 &HD
  loc_B61142: ILdRf var_C8
  loc_B61145: Ary1StVarCopy
  loc_B61147: LitVarStr var_1B8, "total"
  loc_B6114C: LitI4 &HE
  loc_B61151: ILdRf var_C8
  loc_B61154: Ary1StVarCopy
  loc_B61156: FLdRfVar var_C8
  loc_B61159: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B6115E: FStStr var_88
  loc_B61161: FLdRfVar var_C8
  loc_B61164: Erase
  loc_B61165: FLdZeroAd var_88
  loc_B61168: CVarStr var_9C
  loc_B6116B: PopAdLdVar
  loc_B6116C: FLdPr Me
  loc_B6116F: MemLdRfVar from_stack_1.global_76
  loc_B61172: LdPrVar
  loc_B61174: LateMemCall
  loc_B6117A: FFree1Var var_9C = ""
  loc_B6117D: LitI2_Byte 1
  loc_B6117F: FLdPr Me
  loc_B61182: MemLdRfVar from_stack_1.global_104
  loc_B61185: FLdPr Me
  loc_B61188: MemLdStr global_100
  loc_B6118B: LitI2_Byte 1
  loc_B6118D: FnUBound
  loc_B6118F: CI2I4
  loc_B61190: ForI2 var_1CC
  loc_B61196: LitI4 1
  loc_B6119B: FLdPr Me
  loc_B6119E: MemLdRfVar from_stack_1.global_108
  loc_B611A1: FLdPr Me
  loc_B611A4: MemLdI2 global_104
  loc_B611A7: CI4UI1
  loc_B611A8: FLdPr Me
  loc_B611AB: MemLdStr global_100
  loc_B611AE: Ary1LdPr
  loc_B611AF: MemLdStr global_8
  loc_B611B2: LitI2_Byte 1
  loc_B611B4: FnUBound
  loc_B611B6: ForI4 var_1D4
  loc_B611BC: FLdPr Me
  loc_B611BF: MemLdStr global_108
  loc_B611C2: FLdPr Me
  loc_B611C5: MemLdI2 global_104
  loc_B611C8: CI4UI1
  loc_B611C9: FLdPr Me
  loc_B611CC: MemLdStr global_100
  loc_B611CF: AryLock
  loc_B611D2: Ary1LdPr
  loc_B611D3: MemLdStr global_8
  loc_B611D6: AryLock
  loc_B611D9: Ary1LdRf
  loc_B611DA: FStR4 var_1E0
  loc_B611DD: LitI4 0
  loc_B611E2: LitI4 &HE
  loc_B611E7: FLdRfVar var_C8
  loc_B611EA: Redim
  loc_B611F4: LitVarStr var_D8, "|"
  loc_B611F9: LitI4 0
  loc_B611FE: ILdRf var_C8
  loc_B61201: Ary1StVarCopy
  loc_B61203: FLdPr Me
  loc_B61206: VCallAd Control_ID_PeriInfoMsk
  loc_B61209: FStAdFunc var_8C
  loc_B6120C: FLdPr var_8C
  loc_B6120F: LateIdLdVar var_9C DispID_22 0
  loc_B61216: CStrVarTmp
  loc_B61217: CVarStr var_1F0
  loc_B6121A: ParmAry1St
  loc_B61220: FLdRfVar var_AE
  loc_B61223: FLdPr Me
  loc_B61226: VCallAd Control_ID_TrimestreCbo
  loc_B61229: FStAdFunc var_AC
  loc_B6122C: FLdPr var_AC
  loc_B6122F:  = Me.ListIndex
  loc_B61234: FLdI2 var_AE
  loc_B61237: LitI2_Byte 1
  loc_B61239: AddI2
  loc_B6123A: CVarI2 var_E8
  loc_B6123D: LitI4 2
  loc_B61242: ILdRf var_C8
  loc_B61245: Ary1StVar
  loc_B61246: LitVarStr var_F8, "060204"
  loc_B6124B: LitI4 3
  loc_B61250: ILdRf var_C8
  loc_B61253: Ary1StVarCopy
  loc_B61255: FLdPr Me
  loc_B61258: MemLdI2 global_104
  loc_B6125B: CI4UI1
  loc_B6125C: FLdPr Me
  loc_B6125F: MemLdStr global_100
  loc_B61262: Ary1LdPr
  loc_B61263: MemLdRfVar from_stack_1.global_0
  loc_B61266: CVarRef
  loc_B6126B: ParmAry1St
  loc_B61271: FLdPr Me
  loc_B61274: MemLdI2 global_104
  loc_B61277: CI4UI1
  loc_B61278: FLdPr Me
  loc_B6127B: MemLdStr global_100
  loc_B6127E: Ary1LdPr
  loc_B6127F: MemLdRfVar from_stack_1.global_4
  loc_B61282: CVarRef
  loc_B61287: ParmAry1St
  loc_B6128D: FMemLdRf 0
  loc_B61292: CVarRef
  loc_B61297: ParmAry1St
  loc_B6129D: FMemLdRf 0
  loc_B612A2: CVarRef
  loc_B612A7: ParmAry1St
  loc_B612AD: FMemLdR4 var_1E0(8)
  loc_B612B2: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B612B7: CVarStr var_200
  loc_B612BA: ParmAry1St
  loc_B612C0: FMemLdR4 var_1E0(12)
  loc_B612C5: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B612CA: CVarStr var_210
  loc_B612CD: ParmAry1St
  loc_B612D3: FMemLdR4 var_1E0(16)
  loc_B612D8: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B612DD: CVarStr var_220
  loc_B612E0: ParmAry1St
  loc_B612E6: FMemLdR4 var_1E0(20)
  loc_B612EB: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B612F0: CVarStr var_230
  loc_B612F3: ParmAry1St
  loc_B612F9: FMemLdR4 var_1E0(24)
  loc_B612FE: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B61303: CVarStr var_240
  loc_B61306: ParmAry1St
  loc_B6130C: FMemLdR4 var_1E0(28)
  loc_B61311: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B61316: CVarStr var_250
  loc_B61319: ParmAry1St
  loc_B6131F: FMemLdR4 var_1E0(32)
  loc_B61324: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B61329: CVarStr var_260
  loc_B6132C: ParmAry1St
  loc_B61332: FLdRfVar var_C8
  loc_B61335: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B6133A: FStStr var_88
  loc_B6133D: FLdRfVar var_C8
  loc_B61340: Erase
  loc_B61341: FLdZeroAd var_88
  loc_B61344: CVarStr var_270
  loc_B61347: PopAdLdVar
  loc_B61348: FLdPr Me
  loc_B6134B: MemLdRfVar from_stack_1.global_76
  loc_B6134E: LdPrVar
  loc_B61350: LateMemCall
  loc_B61356: FFreeAd var_8C = ""
  loc_B6135D: FFreeVar var_9C = ""
  loc_B61364: LitI4 0
  loc_B61369: FStR4 var_1E0
  loc_B6136C: AryUnlock
  loc_B6136F: AryUnlock
  loc_B61372: FLdPr Me
  loc_B61375: MemLdRfVar from_stack_1.global_108
  loc_B61378: NextI4 var_1D4, loc_B611BC
  loc_B6137D: FLdPr Me
  loc_B61380: MemLdRfVar from_stack_1.global_104
  loc_B61383: NextI2 var_1CC, loc_B61196
  loc_B61388: FLdPr Me
  loc_B6138B: MemLdRfVar from_stack_1.global_76
  loc_B6138E: LdPrVar
  loc_B61390: LateMemCall
  loc_B61396: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BAF624
  'Data Table: 4984F8
  loc_BAEFB4: FLdRfVar var_88
  loc_BAEFB7: LitI2_Byte 0
  loc_BAEFB9: LitI2_Byte &HFF
  loc_BAEFBB: ImpAdLdI4 MemVar_D93C84
  loc_BAEFBE: FLdPr Me
  loc_BAEFC1: MemLdRfVar from_stack_1.global_56
  loc_BAEFC4: NewIfNullPr IFileSystem3
  loc_BAEFC7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BAEFCC: ILdRf var_88
  loc_BAEFCF: FLdPr Me
  loc_BAEFD2: MemStVarAd
  loc_BAEFD6: FFree1Ad var_88
  loc_BAEFD9: LitI2_Byte &HFF
  loc_BAEFDB: ImpAdStI2 MemVar_D93C8A
  loc_BAEFDE: Call Proc_323_23_BD44AC()
  loc_BAEFE3: LitI2_Byte 1
  loc_BAEFE5: FLdPr Me
  loc_BAEFE8: MemLdRfVar from_stack_1.global_104
  loc_BAEFEB: FLdPr Me
  loc_BAEFEE: MemLdStr global_100
  loc_BAEFF1: LitI2_Byte 1
  loc_BAEFF3: FnUBound
  loc_BAEFF5: CI2I4
  loc_BAEFF6: ForI2 var_8C
  loc_BAEFFC: LitI4 1
  loc_BAF001: FLdPr Me
  loc_BAF004: MemLdRfVar from_stack_1.global_108
  loc_BAF007: FLdPr Me
  loc_BAF00A: MemLdI2 global_104
  loc_BAF00D: CI4UI1
  loc_BAF00E: FLdPr Me
  loc_BAF011: MemLdStr global_100
  loc_BAF014: Ary1LdPr
  loc_BAF015: MemLdStr global_8
  loc_BAF018: LitI2_Byte 1
  loc_BAF01A: FnUBound
  loc_BAF01C: ForI4 var_94
  loc_BAF022: FLdPr Me
  loc_BAF025: MemLdStr global_108
  loc_BAF028: FLdPr Me
  loc_BAF02B: MemLdI2 global_104
  loc_BAF02E: CI4UI1
  loc_BAF02F: FLdPr Me
  loc_BAF032: MemLdStr global_100
  loc_BAF035: AryLock
  loc_BAF038: Ary1LdPr
  loc_BAF039: MemLdStr global_8
  loc_BAF03C: AryLock
  loc_BAF03F: Ary1LdRf
  loc_BAF040: FStR4 var_A0
  loc_BAF043: LitVarStr var_B0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BAF048: PopAdLdVar
  loc_BAF049: FLdPr Me
  loc_BAF04C: MemLdRfVar from_stack_1.global_60
  loc_BAF04F: LdPrVar
  loc_BAF051: LateMemCall
  loc_BAF057: LitStr vbNullString
  loc_BAF05A: LitI2_Byte 0
  loc_BAF05C: LitI2_Byte 0
  loc_BAF05E: LitI2_Byte 0
  loc_BAF060: LitStr "right"
  loc_BAF063: FLdPr Me
  loc_BAF066: MemLdI2 global_104
  loc_BAF069: CI4UI1
  loc_BAF06A: FLdPr Me
  loc_BAF06D: MemLdStr global_100
  loc_BAF070: Ary1LdPr
  loc_BAF071: MemLdStr global_0
  loc_BAF074: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF079: CVarStr var_D0
  loc_BAF07C: PopAdLdVar
  loc_BAF07D: FLdPr Me
  loc_BAF080: MemLdRfVar from_stack_1.global_60
  loc_BAF083: LdPrVar
  loc_BAF085: LateMemCall
  loc_BAF08B: FFree1Var var_D0 = ""
  loc_BAF08E: LitStr vbNullString
  loc_BAF091: LitI2_Byte 0
  loc_BAF093: LitI2_Byte 0
  loc_BAF095: LitI2_Byte 0
  loc_BAF097: LitStr "left"
  loc_BAF09A: FLdPr Me
  loc_BAF09D: MemLdI2 global_104
  loc_BAF0A0: CI4UI1
  loc_BAF0A1: FLdPr Me
  loc_BAF0A4: MemLdStr global_100
  loc_BAF0A7: Ary1LdPr
  loc_BAF0A8: MemLdStr global_4
  loc_BAF0AB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF0B0: CVarStr var_D0
  loc_BAF0B3: PopAdLdVar
  loc_BAF0B4: FLdPr Me
  loc_BAF0B7: MemLdRfVar from_stack_1.global_60
  loc_BAF0BA: LdPrVar
  loc_BAF0BC: LateMemCall
  loc_BAF0C2: FFree1Var var_D0 = ""
  loc_BAF0C5: LitStr vbNullString
  loc_BAF0C8: LitI2_Byte 0
  loc_BAF0CA: LitI2_Byte 0
  loc_BAF0CC: LitI2_Byte 0
  loc_BAF0CE: LitStr "left"
  loc_BAF0D1: FMemLdR4 var_A0(0)
  loc_BAF0D6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF0DB: CVarStr var_D0
  loc_BAF0DE: PopAdLdVar
  loc_BAF0DF: FLdPr Me
  loc_BAF0E2: MemLdRfVar from_stack_1.global_60
  loc_BAF0E5: LdPrVar
  loc_BAF0E7: LateMemCall
  loc_BAF0ED: FFree1Var var_D0 = ""
  loc_BAF0F0: LitStr vbNullString
  loc_BAF0F3: LitI2_Byte 0
  loc_BAF0F5: LitI2_Byte 0
  loc_BAF0F7: LitI2_Byte 0
  loc_BAF0F9: LitStr "center"
  loc_BAF0FC: FMemLdR4 var_A0(4)
  loc_BAF101: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF106: CVarStr var_D0
  loc_BAF109: PopAdLdVar
  loc_BAF10A: FLdPr Me
  loc_BAF10D: MemLdRfVar from_stack_1.global_60
  loc_BAF110: LdPrVar
  loc_BAF112: LateMemCall
  loc_BAF118: FFree1Var var_D0 = ""
  loc_BAF11B: LitStr vbNullString
  loc_BAF11E: LitI2_Byte 0
  loc_BAF120: LitI2_Byte 0
  loc_BAF122: LitI2_Byte 0
  loc_BAF124: LitStr "right"
  loc_BAF127: FMemLdR4 var_A0(8)
  loc_BAF12C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF131: CVarStr var_D0
  loc_BAF134: PopAdLdVar
  loc_BAF135: FLdPr Me
  loc_BAF138: MemLdRfVar from_stack_1.global_60
  loc_BAF13B: LdPrVar
  loc_BAF13D: LateMemCall
  loc_BAF143: FFree1Var var_D0 = ""
  loc_BAF146: LitStr vbNullString
  loc_BAF149: LitI2_Byte 0
  loc_BAF14B: LitI2_Byte 0
  loc_BAF14D: LitI2_Byte 0
  loc_BAF14F: LitStr "right"
  loc_BAF152: FMemLdR4 var_A0(12)
  loc_BAF157: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF15C: CVarStr var_D0
  loc_BAF15F: PopAdLdVar
  loc_BAF160: FLdPr Me
  loc_BAF163: MemLdRfVar from_stack_1.global_60
  loc_BAF166: LdPrVar
  loc_BAF168: LateMemCall
  loc_BAF16E: FFree1Var var_D0 = ""
  loc_BAF171: LitStr vbNullString
  loc_BAF174: LitI2_Byte 0
  loc_BAF176: LitI2_Byte 0
  loc_BAF178: LitI2_Byte 0
  loc_BAF17A: LitStr "right"
  loc_BAF17D: FMemLdR4 var_A0(16)
  loc_BAF182: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF187: CVarStr var_D0
  loc_BAF18A: PopAdLdVar
  loc_BAF18B: FLdPr Me
  loc_BAF18E: MemLdRfVar from_stack_1.global_60
  loc_BAF191: LdPrVar
  loc_BAF193: LateMemCall
  loc_BAF199: FFree1Var var_D0 = ""
  loc_BAF19C: LitStr vbNullString
  loc_BAF19F: LitI2_Byte 0
  loc_BAF1A1: LitI2_Byte 0
  loc_BAF1A3: LitI2_Byte 0
  loc_BAF1A5: LitStr "right"
  loc_BAF1A8: FMemLdR4 var_A0(20)
  loc_BAF1AD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF1B2: CVarStr var_D0
  loc_BAF1B5: PopAdLdVar
  loc_BAF1B6: FLdPr Me
  loc_BAF1B9: MemLdRfVar from_stack_1.global_60
  loc_BAF1BC: LdPrVar
  loc_BAF1BE: LateMemCall
  loc_BAF1C4: FFree1Var var_D0 = ""
  loc_BAF1C7: LitStr vbNullString
  loc_BAF1CA: LitI2_Byte 0
  loc_BAF1CC: LitI2_Byte 0
  loc_BAF1CE: LitI2_Byte 0
  loc_BAF1D0: LitStr "right"
  loc_BAF1D3: FMemLdR4 var_A0(24)
  loc_BAF1D8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF1DD: CVarStr var_D0
  loc_BAF1E0: PopAdLdVar
  loc_BAF1E1: FLdPr Me
  loc_BAF1E4: MemLdRfVar from_stack_1.global_60
  loc_BAF1E7: LdPrVar
  loc_BAF1E9: LateMemCall
  loc_BAF1EF: FFree1Var var_D0 = ""
  loc_BAF1F2: LitStr vbNullString
  loc_BAF1F5: LitI2_Byte 0
  loc_BAF1F7: LitI2_Byte 0
  loc_BAF1F9: LitI2_Byte 0
  loc_BAF1FB: LitStr "right"
  loc_BAF1FE: FMemLdR4 var_A0(28)
  loc_BAF203: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF208: CVarStr var_D0
  loc_BAF20B: PopAdLdVar
  loc_BAF20C: FLdPr Me
  loc_BAF20F: MemLdRfVar from_stack_1.global_60
  loc_BAF212: LdPrVar
  loc_BAF214: LateMemCall
  loc_BAF21A: FFree1Var var_D0 = ""
  loc_BAF21D: LitStr vbNullString
  loc_BAF220: LitI2_Byte 0
  loc_BAF222: LitI2_Byte 0
  loc_BAF224: LitI2_Byte 0
  loc_BAF226: LitStr "right"
  loc_BAF229: FMemLdR4 var_A0(32)
  loc_BAF22E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF233: CVarStr var_D0
  loc_BAF236: PopAdLdVar
  loc_BAF237: FLdPr Me
  loc_BAF23A: MemLdRfVar from_stack_1.global_60
  loc_BAF23D: LdPrVar
  loc_BAF23F: LateMemCall
  loc_BAF245: FFree1Var var_D0 = ""
  loc_BAF248: LitVarStr var_B0, "     </tr>"
  loc_BAF24D: PopAdLdVar
  loc_BAF24E: FLdPr Me
  loc_BAF251: MemLdRfVar from_stack_1.global_60
  loc_BAF254: LdPrVar
  loc_BAF256: LateMemCall
  loc_BAF25C: LitI4 0
  loc_BAF261: FStR4 var_A0
  loc_BAF264: AryUnlock
  loc_BAF267: AryUnlock
  loc_BAF26A: FLdPr Me
  loc_BAF26D: MemLdRfVar from_stack_1.global_108
  loc_BAF270: NextI4 var_94, loc_BAF022
  loc_BAF275: LitVarStr var_B0, "  <tr align=""left"" class=""SubTotales"">"
  loc_BAF27A: PopAdLdVar
  loc_BAF27B: FLdPr Me
  loc_BAF27E: MemLdRfVar from_stack_1.global_60
  loc_BAF281: LdPrVar
  loc_BAF283: LateMemCall
  loc_BAF289: LitStr "    <th colspan=""4"">SubTotal Concepto: "
  loc_BAF28C: FLdPr Me
  loc_BAF28F: MemLdI2 global_104
  loc_BAF292: CI4UI1
  loc_BAF293: FLdPr Me
  loc_BAF296: MemLdStr global_100
  loc_BAF299: Ary1LdPr
  loc_BAF29A: MemLdStr global_0
  loc_BAF29D: ConcatStr
  loc_BAF29E: FStStrNoPop var_D4
  loc_BAF2A1: LitStr " - "
  loc_BAF2A4: ConcatStr
  loc_BAF2A5: FStStrNoPop var_D8
  loc_BAF2A8: FLdPr Me
  loc_BAF2AB: MemLdI2 global_104
  loc_BAF2AE: CI4UI1
  loc_BAF2AF: FLdPr Me
  loc_BAF2B2: MemLdStr global_100
  loc_BAF2B5: Ary1LdPr
  loc_BAF2B6: MemLdStr global_4
  loc_BAF2B9: ConcatStr
  loc_BAF2BA: FStStrNoPop var_DC
  loc_BAF2BD: LitStr "</th>"
  loc_BAF2C0: ConcatStr
  loc_BAF2C1: CVarStr var_D0
  loc_BAF2C4: PopAdLdVar
  loc_BAF2C5: FLdPr Me
  loc_BAF2C8: MemLdRfVar from_stack_1.global_60
  loc_BAF2CB: LdPrVar
  loc_BAF2CD: LateMemCall
  loc_BAF2D3: FFreeStr var_D4 = "": var_D8 = ""
  loc_BAF2DC: FFree1Var var_D0 = ""
  loc_BAF2DF: LitStr vbNullString
  loc_BAF2E2: LitI2_Byte 0
  loc_BAF2E4: LitI2_Byte 0
  loc_BAF2E6: LitI2_Byte 0
  loc_BAF2E8: LitStr "right"
  loc_BAF2EB: FLdPr Me
  loc_BAF2EE: MemLdI2 global_104
  loc_BAF2F1: CI4UI1
  loc_BAF2F2: FLdPr Me
  loc_BAF2F5: MemLdStr global_100
  loc_BAF2F8: Ary1LdPr
  loc_BAF2F9: MemLdStr global_12
  loc_BAF2FC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF301: CVarStr var_D0
  loc_BAF304: PopAdLdVar
  loc_BAF305: FLdPr Me
  loc_BAF308: MemLdRfVar from_stack_1.global_60
  loc_BAF30B: LdPrVar
  loc_BAF30D: LateMemCall
  loc_BAF313: FFree1Var var_D0 = ""
  loc_BAF316: LitStr vbNullString
  loc_BAF319: LitI2_Byte 0
  loc_BAF31B: LitI2_Byte 0
  loc_BAF31D: LitI2_Byte 0
  loc_BAF31F: LitStr "right"
  loc_BAF322: FLdPr Me
  loc_BAF325: MemLdI2 global_104
  loc_BAF328: CI4UI1
  loc_BAF329: FLdPr Me
  loc_BAF32C: MemLdStr global_100
  loc_BAF32F: Ary1LdPr
  loc_BAF330: MemLdStr global_16
  loc_BAF333: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF338: CVarStr var_D0
  loc_BAF33B: PopAdLdVar
  loc_BAF33C: FLdPr Me
  loc_BAF33F: MemLdRfVar from_stack_1.global_60
  loc_BAF342: LdPrVar
  loc_BAF344: LateMemCall
  loc_BAF34A: FFree1Var var_D0 = ""
  loc_BAF34D: LitStr vbNullString
  loc_BAF350: LitI2_Byte 0
  loc_BAF352: LitI2_Byte 0
  loc_BAF354: LitI2_Byte 0
  loc_BAF356: LitStr "right"
  loc_BAF359: FLdPr Me
  loc_BAF35C: MemLdI2 global_104
  loc_BAF35F: CI4UI1
  loc_BAF360: FLdPr Me
  loc_BAF363: MemLdStr global_100
  loc_BAF366: Ary1LdPr
  loc_BAF367: MemLdStr global_20
  loc_BAF36A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF36F: CVarStr var_D0
  loc_BAF372: PopAdLdVar
  loc_BAF373: FLdPr Me
  loc_BAF376: MemLdRfVar from_stack_1.global_60
  loc_BAF379: LdPrVar
  loc_BAF37B: LateMemCall
  loc_BAF381: FFree1Var var_D0 = ""
  loc_BAF384: LitStr vbNullString
  loc_BAF387: LitI2_Byte 0
  loc_BAF389: LitI2_Byte 0
  loc_BAF38B: LitI2_Byte 0
  loc_BAF38D: LitStr "right"
  loc_BAF390: FLdPr Me
  loc_BAF393: MemLdI2 global_104
  loc_BAF396: CI4UI1
  loc_BAF397: FLdPr Me
  loc_BAF39A: MemLdStr global_100
  loc_BAF39D: Ary1LdPr
  loc_BAF39E: MemLdStr global_24
  loc_BAF3A1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF3A6: CVarStr var_D0
  loc_BAF3A9: PopAdLdVar
  loc_BAF3AA: FLdPr Me
  loc_BAF3AD: MemLdRfVar from_stack_1.global_60
  loc_BAF3B0: LdPrVar
  loc_BAF3B2: LateMemCall
  loc_BAF3B8: FFree1Var var_D0 = ""
  loc_BAF3BB: LitStr vbNullString
  loc_BAF3BE: LitI2_Byte 0
  loc_BAF3C0: LitI2_Byte 0
  loc_BAF3C2: LitI2_Byte 0
  loc_BAF3C4: LitStr "right"
  loc_BAF3C7: FLdPr Me
  loc_BAF3CA: MemLdI2 global_104
  loc_BAF3CD: CI4UI1
  loc_BAF3CE: FLdPr Me
  loc_BAF3D1: MemLdStr global_100
  loc_BAF3D4: Ary1LdPr
  loc_BAF3D5: MemLdStr global_28
  loc_BAF3D8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF3DD: CVarStr var_D0
  loc_BAF3E0: PopAdLdVar
  loc_BAF3E1: FLdPr Me
  loc_BAF3E4: MemLdRfVar from_stack_1.global_60
  loc_BAF3E7: LdPrVar
  loc_BAF3E9: LateMemCall
  loc_BAF3EF: FFree1Var var_D0 = ""
  loc_BAF3F2: LitStr vbNullString
  loc_BAF3F5: LitI2_Byte 0
  loc_BAF3F7: LitI2_Byte 0
  loc_BAF3F9: LitI2_Byte 0
  loc_BAF3FB: LitStr "right"
  loc_BAF3FE: FLdPr Me
  loc_BAF401: MemLdI2 global_104
  loc_BAF404: CI4UI1
  loc_BAF405: FLdPr Me
  loc_BAF408: MemLdStr global_100
  loc_BAF40B: Ary1LdPr
  loc_BAF40C: MemLdStr global_32
  loc_BAF40F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF414: CVarStr var_D0
  loc_BAF417: PopAdLdVar
  loc_BAF418: FLdPr Me
  loc_BAF41B: MemLdRfVar from_stack_1.global_60
  loc_BAF41E: LdPrVar
  loc_BAF420: LateMemCall
  loc_BAF426: FFree1Var var_D0 = ""
  loc_BAF429: LitStr vbNullString
  loc_BAF42C: LitI2_Byte 0
  loc_BAF42E: LitI2_Byte 0
  loc_BAF430: LitI2_Byte 0
  loc_BAF432: LitStr "right"
  loc_BAF435: FLdPr Me
  loc_BAF438: MemLdI2 global_104
  loc_BAF43B: CI4UI1
  loc_BAF43C: FLdPr Me
  loc_BAF43F: MemLdStr global_100
  loc_BAF442: Ary1LdPr
  loc_BAF443: MemLdStr global_36
  loc_BAF446: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF44B: CVarStr var_D0
  loc_BAF44E: PopAdLdVar
  loc_BAF44F: FLdPr Me
  loc_BAF452: MemLdRfVar from_stack_1.global_60
  loc_BAF455: LdPrVar
  loc_BAF457: LateMemCall
  loc_BAF45D: FFree1Var var_D0 = ""
  loc_BAF460: FLdPr Me
  loc_BAF463: MemLdRfVar from_stack_1.global_104
  loc_BAF466: NextI2 var_8C, loc_BAEFFC
  loc_BAF46B: LitVarStr var_B0, "  <tr class=""Totales"">"
  loc_BAF470: PopAdLdVar
  loc_BAF471: FLdPr Me
  loc_BAF474: MemLdRfVar from_stack_1.global_60
  loc_BAF477: LdPrVar
  loc_BAF479: LateMemCall
  loc_BAF47F: LitVarStr var_B0, "  <th align=""left"" colspan=""4"">TOTAL</th>"
  loc_BAF484: PopAdLdVar
  loc_BAF485: FLdPr Me
  loc_BAF488: MemLdRfVar from_stack_1.global_60
  loc_BAF48B: LdPrVar
  loc_BAF48D: LateMemCall
  loc_BAF493: LitStr vbNullString
  loc_BAF496: LitI2_Byte 0
  loc_BAF498: LitI2_Byte 0
  loc_BAF49A: LitI2_Byte 0
  loc_BAF49C: LitStr "right"
  loc_BAF49F: LitI4 1
  loc_BAF4A4: FLdPr Me
  loc_BAF4A7: MemLdStr global_112
  loc_BAF4AA: Ary1LdPr
  loc_BAF4AB: MemLdStr global_0
  loc_BAF4AE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF4B3: CVarStr var_D0
  loc_BAF4B6: PopAdLdVar
  loc_BAF4B7: FLdPr Me
  loc_BAF4BA: MemLdRfVar from_stack_1.global_60
  loc_BAF4BD: LdPrVar
  loc_BAF4BF: LateMemCall
  loc_BAF4C5: FFree1Var var_D0 = ""
  loc_BAF4C8: LitStr vbNullString
  loc_BAF4CB: LitI2_Byte 0
  loc_BAF4CD: LitI2_Byte 0
  loc_BAF4CF: LitI2_Byte 0
  loc_BAF4D1: LitStr "right"
  loc_BAF4D4: LitI4 1
  loc_BAF4D9: FLdPr Me
  loc_BAF4DC: MemLdStr global_112
  loc_BAF4DF: Ary1LdPr
  loc_BAF4E0: MemLdStr global_4
  loc_BAF4E3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF4E8: CVarStr var_D0
  loc_BAF4EB: PopAdLdVar
  loc_BAF4EC: FLdPr Me
  loc_BAF4EF: MemLdRfVar from_stack_1.global_60
  loc_BAF4F2: LdPrVar
  loc_BAF4F4: LateMemCall
  loc_BAF4FA: FFree1Var var_D0 = ""
  loc_BAF4FD: LitStr vbNullString
  loc_BAF500: LitI2_Byte 0
  loc_BAF502: LitI2_Byte 0
  loc_BAF504: LitI2_Byte 0
  loc_BAF506: LitStr "right"
  loc_BAF509: LitI4 1
  loc_BAF50E: FLdPr Me
  loc_BAF511: MemLdStr global_112
  loc_BAF514: Ary1LdPr
  loc_BAF515: MemLdStr global_8
  loc_BAF518: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF51D: CVarStr var_D0
  loc_BAF520: PopAdLdVar
  loc_BAF521: FLdPr Me
  loc_BAF524: MemLdRfVar from_stack_1.global_60
  loc_BAF527: LdPrVar
  loc_BAF529: LateMemCall
  loc_BAF52F: FFree1Var var_D0 = ""
  loc_BAF532: LitStr vbNullString
  loc_BAF535: LitI2_Byte 0
  loc_BAF537: LitI2_Byte 0
  loc_BAF539: LitI2_Byte 0
  loc_BAF53B: LitStr "right"
  loc_BAF53E: LitI4 1
  loc_BAF543: FLdPr Me
  loc_BAF546: MemLdStr global_112
  loc_BAF549: Ary1LdPr
  loc_BAF54A: MemLdStr global_12
  loc_BAF54D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF552: CVarStr var_D0
  loc_BAF555: PopAdLdVar
  loc_BAF556: FLdPr Me
  loc_BAF559: MemLdRfVar from_stack_1.global_60
  loc_BAF55C: LdPrVar
  loc_BAF55E: LateMemCall
  loc_BAF564: FFree1Var var_D0 = ""
  loc_BAF567: LitStr vbNullString
  loc_BAF56A: LitI2_Byte 0
  loc_BAF56C: LitI2_Byte 0
  loc_BAF56E: LitI2_Byte 0
  loc_BAF570: LitStr "right"
  loc_BAF573: LitI4 1
  loc_BAF578: FLdPr Me
  loc_BAF57B: MemLdStr global_112
  loc_BAF57E: Ary1LdPr
  loc_BAF57F: MemLdStr global_16
  loc_BAF582: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF587: CVarStr var_D0
  loc_BAF58A: PopAdLdVar
  loc_BAF58B: FLdPr Me
  loc_BAF58E: MemLdRfVar from_stack_1.global_60
  loc_BAF591: LdPrVar
  loc_BAF593: LateMemCall
  loc_BAF599: FFree1Var var_D0 = ""
  loc_BAF59C: LitStr vbNullString
  loc_BAF59F: LitI2_Byte 0
  loc_BAF5A1: LitI2_Byte 0
  loc_BAF5A3: LitI2_Byte 0
  loc_BAF5A5: LitStr "right"
  loc_BAF5A8: LitI4 1
  loc_BAF5AD: FLdPr Me
  loc_BAF5B0: MemLdStr global_112
  loc_BAF5B3: Ary1LdPr
  loc_BAF5B4: MemLdStr global_20
  loc_BAF5B7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF5BC: CVarStr var_D0
  loc_BAF5BF: PopAdLdVar
  loc_BAF5C0: FLdPr Me
  loc_BAF5C3: MemLdRfVar from_stack_1.global_60
  loc_BAF5C6: LdPrVar
  loc_BAF5C8: LateMemCall
  loc_BAF5CE: FFree1Var var_D0 = ""
  loc_BAF5D1: LitStr vbNullString
  loc_BAF5D4: LitI2_Byte 0
  loc_BAF5D6: LitI2_Byte 0
  loc_BAF5D8: LitI2_Byte 0
  loc_BAF5DA: LitStr "right"
  loc_BAF5DD: LitI4 1
  loc_BAF5E2: FLdPr Me
  loc_BAF5E5: MemLdStr global_112
  loc_BAF5E8: Ary1LdPr
  loc_BAF5E9: MemLdStr global_24
  loc_BAF5EC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BAF5F1: CVarStr var_D0
  loc_BAF5F4: PopAdLdVar
  loc_BAF5F5: FLdPr Me
  loc_BAF5F8: MemLdRfVar from_stack_1.global_60
  loc_BAF5FB: LdPrVar
  loc_BAF5FD: LateMemCall
  loc_BAF603: FFree1Var var_D0 = ""
  loc_BAF606: Call Proc_323_24_A0F238()
  loc_BAF60B: FLdPr Me
  loc_BAF60E: MemLdRfVar from_stack_1.global_60
  loc_BAF611: LdPrVar
  loc_BAF613: LateMemCall
  loc_BAF619: LitStr vbNullString
  loc_BAF61C: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BAF621: ExitProcHresult
End Sub

Private Function Proc_323_21_AA4EA8() 'AA4EA8
  'Data Table: 4984F8
  loc_AA4DE8: FLdPr Me
  loc_AA4DEB: MemLdI2 global_104
  loc_AA4DEE: LitI2_Byte 1
  loc_AA4DF0: AddI2
  loc_AA4DF1: FLdPr Me
  loc_AA4DF4: MemStI2 global_104
  loc_AA4DF7: LitI4 0
  loc_AA4DFC: FLdPr Me
  loc_AA4DFF: MemStI4 global_108
  loc_AA4E02: LitI4 0
  loc_AA4E07: FLdPr Me
  loc_AA4E0A: MemLdI2 global_104
  loc_AA4E0D: CI4UI1
  loc_AA4E0E: FLdPr Me
  loc_AA4E11: MemLdRfVar from_stack_1.global_100
  loc_AA4E14: RedimPreserve
  loc_AA4E1E: FLdRfVar var_88
  loc_AA4E21: FLdPr Me
  loc_AA4E24: MemLdRfVar from_stack_1.global_92
  loc_AA4E27: NewIfNullPr clsctacte
  loc_AA4E2A: from_stack_1 = clsctacte.CodiConc
  loc_AA4E2F: LitI2_Byte 0
  loc_AA4E31: LitVar_Missing var_BC
  loc_AA4E34: LitI2_Byte 0
  loc_AA4E36: FLdZeroAd var_88
  loc_AA4E39: CVarStr var_9C
  loc_AA4E3C: PopAdLdVar
  loc_AA4E3D: FLdPr Me
  loc_AA4E40: MemLdI2 global_104
  loc_AA4E43: CI4UI1
  loc_AA4E44: FLdPr Me
  loc_AA4E47: MemLdStr global_100
  loc_AA4E4A: AryLock
  loc_AA4E4D: Ary1LdPr
  loc_AA4E4E: MemLdRfVar from_stack_1.global_0
  loc_AA4E51: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AA4E56: AryUnlock
  loc_AA4E59: FFreeVar var_9C = ""
  loc_AA4E60: FLdRfVar var_9C
  loc_AA4E63: FLdPr Me
  loc_AA4E66: MemLdRfVar from_stack_1.global_92
  loc_AA4E69: NewIfNullPr clsctacte
  loc_AA4E6C: from_stack_1 = clsctacte.DetaConc
  loc_AA4E71: LitI2_Byte 0
  loc_AA4E73: LitVar_Missing var_BC
  loc_AA4E76: LitI2_Byte 0
  loc_AA4E78: FLdVar var_9C
  loc_AA4E7C: FLdPr Me
  loc_AA4E7F: MemLdI2 global_104
  loc_AA4E82: CI4UI1
  loc_AA4E83: FLdPr Me
  loc_AA4E86: MemLdStr global_100
  loc_AA4E89: AryLock
  loc_AA4E8C: Ary1LdPr
  loc_AA4E8D: MemLdRfVar from_stack_1.global_4
  loc_AA4E90: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AA4E95: AryUnlock
  loc_AA4E98: FFreeVar var_9C = ""
  loc_AA4E9F: Call Proc_323_22_B2C088()
  loc_AA4EA4: ExitProcHresult
End Function

Private Function Proc_323_22_B2C088() 'B2C088
  'Data Table: 4984F8
  loc_B2BDBC: FLdPr Me
  loc_B2BDBF: MemLdStr global_108
  loc_B2BDC2: LitI4 1
  loc_B2BDC7: AddI4
  loc_B2BDC8: FLdPr Me
  loc_B2BDCB: MemStI4 global_108
  loc_B2BDCE: LitI4 0
  loc_B2BDD3: FLdPr Me
  loc_B2BDD6: MemLdStr global_108
  loc_B2BDD9: FLdPr Me
  loc_B2BDDC: MemLdI2 global_104
  loc_B2BDDF: CI4UI1
  loc_B2BDE0: FLdPr Me
  loc_B2BDE3: MemLdStr global_100
  loc_B2BDE6: Ary1LdPr
  loc_B2BDE7: MemLdRfVar from_stack_1.global_8
  loc_B2BDEA: RedimPreserve
  loc_B2BDF4: FLdPr Me
  loc_B2BDF7: MemLdStr global_108
  loc_B2BDFA: FLdPr Me
  loc_B2BDFD: MemLdI2 global_104
  loc_B2BE00: CI4UI1
  loc_B2BE01: FLdPr Me
  loc_B2BE04: MemLdStr global_100
  loc_B2BE07: AryLock
  loc_B2BE0A: Ary1LdPr
  loc_B2BE0B: MemLdStr global_8
  loc_B2BE0E: AryLock
  loc_B2BE11: Ary1LdRf
  loc_B2BE12: FStR4 var_90
  loc_B2BE15: FLdRfVar var_94
  loc_B2BE18: FLdPr Me
  loc_B2BE1B: MemLdRfVar from_stack_1.global_92
  loc_B2BE1E: NewIfNullPr clsctacte
  loc_B2BE21: from_stack_1 = clsctacte.CuenCtct
  loc_B2BE26: FLdRfVar var_A4
  loc_B2BE29: FLdPr Me
  loc_B2BE2C: MemLdRfVar from_stack_1.global_92
  loc_B2BE2F: NewIfNullPr clsctacte
  loc_B2BE32: from_stack_1 = clsctacte.DetaPers
  loc_B2BE37: LitI2_Byte 0
  loc_B2BE39: LitVar_Missing var_E4
  loc_B2BE3C: LitI2_Byte 0
  loc_B2BE3E: ILdRf var_94
  loc_B2BE41: LitStr " - "
  loc_B2BE44: ConcatStr
  loc_B2BE45: CVarStr var_B4
  loc_B2BE48: FLdRfVar var_A4
  loc_B2BE4B: ConcatVar var_C4
  loc_B2BE4F: PopAdLdVar
  loc_B2BE50: FMemLdRf unk_498469
  loc_B2BE55: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2BE5A: FFree1Str var_94
  loc_B2BE5D: FFreeVar var_B4 = "": var_A4 = "": var_C4 = ""
  loc_B2BE68: FLdRfVar var_A4
  loc_B2BE6B: FLdPr Me
  loc_B2BE6E: MemLdRfVar from_stack_1.global_92
  loc_B2BE71: NewIfNullPr clsctacte
  loc_B2BE74: from_stack_1 = clsctacte.CucuPers
  loc_B2BE79: LitI2_Byte 0
  loc_B2BE7B: LitVar_Missing var_B4
  loc_B2BE7E: LitI2_Byte 0
  loc_B2BE80: FLdVar var_A4
  loc_B2BE84: FMemLdRf unk_498469
  loc_B2BE89: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2BE8E: FFreeVar var_A4 = ""
  loc_B2BE95: FLdRfVar var_A4
  loc_B2BE98: FLdPr Me
  loc_B2BE9B: MemLdRfVar from_stack_1.global_92
  loc_B2BE9E: NewIfNullPr clsctacte
  loc_B2BEA1: from_stack_1 = clsctacte.morsingescob
  loc_B2BEA6: LitI2_Byte 0
  loc_B2BEA8: FLdPr Me
  loc_B2BEAB: MemLdI2 global_104
  loc_B2BEAE: CI4UI1
  loc_B2BEAF: FLdPr Me
  loc_B2BEB2: MemLdStr global_100
  loc_B2BEB5: AryLock
  loc_B2BEB8: Ary1LdPr
  loc_B2BEB9: MemLdRfVar from_stack_1.global_12
  loc_B2BEBC: CVarRef
  loc_B2BEC1: LitI2_Byte &HFF
  loc_B2BEC3: FLdVar var_A4
  loc_B2BEC7: FMemLdRf unk_498469
  loc_B2BECC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2BED1: AryUnlock
  loc_B2BED4: FFree1Var var_A4 = ""
  loc_B2BED7: FLdRfVar var_A4
  loc_B2BEDA: FLdPr Me
  loc_B2BEDD: MemLdRfVar from_stack_1.global_92
  loc_B2BEE0: NewIfNullPr clsctacte
  loc_B2BEE3: from_stack_1 = clsctacte.morapre
  loc_B2BEE8: LitI2_Byte 0
  loc_B2BEEA: FLdPr Me
  loc_B2BEED: MemLdI2 global_104
  loc_B2BEF0: CI4UI1
  loc_B2BEF1: FLdPr Me
  loc_B2BEF4: MemLdStr global_100
  loc_B2BEF7: AryLock
  loc_B2BEFA: Ary1LdPr
  loc_B2BEFB: MemLdRfVar from_stack_1.global_16
  loc_B2BEFE: CVarRef
  loc_B2BF03: LitI2_Byte &HFF
  loc_B2BF05: FLdVar var_A4
  loc_B2BF09: FMemLdRf unk_498469
  loc_B2BF0E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2BF13: AryUnlock
  loc_B2BF16: FFree1Var var_A4 = ""
  loc_B2BF19: FLdRfVar var_A4
  loc_B2BF1C: FLdPr Me
  loc_B2BF1F: MemLdRfVar from_stack_1.global_92
  loc_B2BF22: NewIfNullPr clsctacte
  loc_B2BF25: from_stack_1 = clsctacte.morgesjud
  loc_B2BF2A: LitI2_Byte 0
  loc_B2BF2C: FLdPr Me
  loc_B2BF2F: MemLdI2 global_104
  loc_B2BF32: CI4UI1
  loc_B2BF33: FLdPr Me
  loc_B2BF36: MemLdStr global_100
  loc_B2BF39: AryLock
  loc_B2BF3C: Ary1LdPr
  loc_B2BF3D: MemLdRfVar from_stack_1.global_20
  loc_B2BF40: CVarRef
  loc_B2BF45: LitI2_Byte &HFF
  loc_B2BF47: FLdVar var_A4
  loc_B2BF4B: FMemLdRf unk_498469
  loc_B2BF50: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2BF55: AryUnlock
  loc_B2BF58: FFree1Var var_A4 = ""
  loc_B2BF5B: FLdRfVar var_A4
  loc_B2BF5E: FLdPr Me
  loc_B2BF61: MemLdRfVar from_stack_1.global_92
  loc_B2BF64: NewIfNullPr clsctacte
  loc_B2BF67: from_stack_1 = clsctacte.morcon
  loc_B2BF6C: LitI2_Byte 0
  loc_B2BF6E: FLdPr Me
  loc_B2BF71: MemLdI2 global_104
  loc_B2BF74: CI4UI1
  loc_B2BF75: FLdPr Me
  loc_B2BF78: MemLdStr global_100
  loc_B2BF7B: AryLock
  loc_B2BF7E: Ary1LdPr
  loc_B2BF7F: MemLdRfVar from_stack_1.global_24
  loc_B2BF82: CVarRef
  loc_B2BF87: LitI2_Byte &HFF
  loc_B2BF89: FLdVar var_A4
  loc_B2BF8D: FMemLdRf unk_498469
  loc_B2BF92: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2BF97: AryUnlock
  loc_B2BF9A: FFree1Var var_A4 = ""
  loc_B2BF9D: FLdRfVar var_A4
  loc_B2BFA0: FLdPr Me
  loc_B2BFA3: MemLdRfVar from_stack_1.global_92
  loc_B2BFA6: NewIfNullPr clsctacte
  loc_B2BFA9: from_stack_1 = clsctacte.SubTotal
  loc_B2BFAE: LitI2_Byte 0
  loc_B2BFB0: FLdPr Me
  loc_B2BFB3: MemLdI2 global_104
  loc_B2BFB6: CI4UI1
  loc_B2BFB7: FLdPr Me
  loc_B2BFBA: MemLdStr global_100
  loc_B2BFBD: AryLock
  loc_B2BFC0: Ary1LdPr
  loc_B2BFC1: MemLdRfVar from_stack_1.global_28
  loc_B2BFC4: CVarRef
  loc_B2BFC9: LitI2_Byte &HFF
  loc_B2BFCB: FLdVar var_A4
  loc_B2BFCF: FMemLdRf unk_498469
  loc_B2BFD4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2BFD9: AryUnlock
  loc_B2BFDC: FFree1Var var_A4 = ""
  loc_B2BFDF: FLdRfVar var_A4
  loc_B2BFE2: FLdPr Me
  loc_B2BFE5: MemLdRfVar from_stack_1.global_92
  loc_B2BFE8: NewIfNullPr clsctacte
  loc_B2BFEB: from_stack_1 = clsctacte.deuregplapag
  loc_B2BFF0: LitI2_Byte 0
  loc_B2BFF2: FLdPr Me
  loc_B2BFF5: MemLdI2 global_104
  loc_B2BFF8: CI4UI1
  loc_B2BFF9: FLdPr Me
  loc_B2BFFC: MemLdStr global_100
  loc_B2BFFF: AryLock
  loc_B2C002: Ary1LdPr
  loc_B2C003: MemLdRfVar from_stack_1.global_32
  loc_B2C006: CVarRef
  loc_B2C00B: LitI2_Byte &HFF
  loc_B2C00D: FLdVar var_A4
  loc_B2C011: FMemLdRf unk_498469
  loc_B2C016: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2C01B: AryUnlock
  loc_B2C01E: FFree1Var var_A4 = ""
  loc_B2C021: FLdRfVar var_A4
  loc_B2C024: FLdPr Me
  loc_B2C027: MemLdRfVar from_stack_1.global_92
  loc_B2C02A: NewIfNullPr clsctacte
  loc_B2C02D: from_stack_1 = clsctacte.Total
  loc_B2C032: LitI2_Byte 0
  loc_B2C034: FLdPr Me
  loc_B2C037: MemLdI2 global_104
  loc_B2C03A: CI4UI1
  loc_B2C03B: FLdPr Me
  loc_B2C03E: MemLdStr global_100
  loc_B2C041: AryLock
  loc_B2C044: Ary1LdPr
  loc_B2C045: MemLdRfVar from_stack_1.global_36
  loc_B2C048: CVarRef
  loc_B2C04D: LitI2_Byte &HFF
  loc_B2C04F: FLdVar var_A4
  loc_B2C053: FMemLdRf unk_498469
  loc_B2C058: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2C05D: AryUnlock
  loc_B2C060: FFree1Var var_A4 = ""
  loc_B2C063: LitI4 0
  loc_B2C068: FStR4 var_90
  loc_B2C06B: AryUnlock
  loc_B2C06E: AryUnlock
  loc_B2C071: LitI2_Byte 1
  loc_B2C073: PopTmpLdAd2 var_EA
  loc_B2C076: FLdPr Me
  loc_B2C079: MemLdRfVar from_stack_1.global_92
  loc_B2C07C: NewIfNullPr clsctacte
  loc_B2C07F: Call clsctacte.Move(from_stack_1v)
  loc_B2C084: ExitProcHresult
End Function

Private Function Proc_323_23_BD44AC() 'BD44AC
  'Data Table: 4984F8
  loc_BD3D64: LitVarStr var_98, "<html>"
  loc_BD3D69: PopAdLdVar
  loc_BD3D6A: FLdPr Me
  loc_BD3D6D: MemLdRfVar from_stack_1.global_60
  loc_BD3D70: LdPrVar
  loc_BD3D72: LateMemCall
  loc_BD3D78: LitVarStr var_98, "<head>"
  loc_BD3D7D: PopAdLdVar
  loc_BD3D7E: FLdPr Me
  loc_BD3D81: MemLdRfVar from_stack_1.global_60
  loc_BD3D84: LdPrVar
  loc_BD3D86: LateMemCall
  loc_BD3D8C: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BD3D91: PopAdLdVar
  loc_BD3D92: FLdPr Me
  loc_BD3D95: MemLdRfVar from_stack_1.global_60
  loc_BD3D98: LdPrVar
  loc_BD3D9A: LateMemCall
  loc_BD3DA0: LitStr "<title>"
  loc_BD3DA3: FLdRfVar var_AC
  loc_BD3DA6: FLdPr Me
  loc_BD3DA9:  = Me.Caption
  loc_BD3DAE: ILdRf var_AC
  loc_BD3DB1: ConcatStr
  loc_BD3DB2: FStStrNoPop var_B0
  loc_BD3DB5: LitStr "</title>"
  loc_BD3DB8: ConcatStr
  loc_BD3DB9: CVarStr var_C0
  loc_BD3DBC: PopAdLdVar
  loc_BD3DBD: FLdPr Me
  loc_BD3DC0: MemLdRfVar from_stack_1.global_60
  loc_BD3DC3: LdPrVar
  loc_BD3DC5: LateMemCall
  loc_BD3DCB: FFreeStr var_AC = ""
  loc_BD3DD2: FFree1Var var_C0 = ""
  loc_BD3DD5: LitVarStr var_98, "<style type=""text/css"">"
  loc_BD3DDA: PopAdLdVar
  loc_BD3DDB: FLdPr Me
  loc_BD3DDE: MemLdRfVar from_stack_1.global_60
  loc_BD3DE1: LdPrVar
  loc_BD3DE3: LateMemCall
  loc_BD3DE9: LitVarStr var_98, ".Titulo1 {"
  loc_BD3DEE: PopAdLdVar
  loc_BD3DEF: FLdPr Me
  loc_BD3DF2: MemLdRfVar from_stack_1.global_60
  loc_BD3DF5: LdPrVar
  loc_BD3DF7: LateMemCall
  loc_BD3DFD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD3E02: PopAdLdVar
  loc_BD3E03: FLdPr Me
  loc_BD3E06: MemLdRfVar from_stack_1.global_60
  loc_BD3E09: LdPrVar
  loc_BD3E0B: LateMemCall
  loc_BD3E11: LitVarStr var_98, " font-size: 18px;"
  loc_BD3E16: PopAdLdVar
  loc_BD3E17: FLdPr Me
  loc_BD3E1A: MemLdRfVar from_stack_1.global_60
  loc_BD3E1D: LdPrVar
  loc_BD3E1F: LateMemCall
  loc_BD3E25: LitVarStr var_98, " font-weight: bold;"
  loc_BD3E2A: PopAdLdVar
  loc_BD3E2B: FLdPr Me
  loc_BD3E2E: MemLdRfVar from_stack_1.global_60
  loc_BD3E31: LdPrVar
  loc_BD3E33: LateMemCall
  loc_BD3E39: LitVarStr var_98, "}"
  loc_BD3E3E: PopAdLdVar
  loc_BD3E3F: FLdPr Me
  loc_BD3E42: MemLdRfVar from_stack_1.global_60
  loc_BD3E45: LdPrVar
  loc_BD3E47: LateMemCall
  loc_BD3E4D: LitVarStr var_98, ".Titulo2 {"
  loc_BD3E52: PopAdLdVar
  loc_BD3E53: FLdPr Me
  loc_BD3E56: MemLdRfVar from_stack_1.global_60
  loc_BD3E59: LdPrVar
  loc_BD3E5B: LateMemCall
  loc_BD3E61: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD3E66: PopAdLdVar
  loc_BD3E67: FLdPr Me
  loc_BD3E6A: MemLdRfVar from_stack_1.global_60
  loc_BD3E6D: LdPrVar
  loc_BD3E6F: LateMemCall
  loc_BD3E75: LitVarStr var_98, " font-size: 14px;"
  loc_BD3E7A: PopAdLdVar
  loc_BD3E7B: FLdPr Me
  loc_BD3E7E: MemLdRfVar from_stack_1.global_60
  loc_BD3E81: LdPrVar
  loc_BD3E83: LateMemCall
  loc_BD3E89: LitVarStr var_98, " font-weight: bold;"
  loc_BD3E8E: PopAdLdVar
  loc_BD3E8F: FLdPr Me
  loc_BD3E92: MemLdRfVar from_stack_1.global_60
  loc_BD3E95: LdPrVar
  loc_BD3E97: LateMemCall
  loc_BD3E9D: LitVarStr var_98, "}"
  loc_BD3EA2: PopAdLdVar
  loc_BD3EA3: FLdPr Me
  loc_BD3EA6: MemLdRfVar from_stack_1.global_60
  loc_BD3EA9: LdPrVar
  loc_BD3EAB: LateMemCall
  loc_BD3EB1: LitVarStr var_98, ".Normal {"
  loc_BD3EB6: PopAdLdVar
  loc_BD3EB7: FLdPr Me
  loc_BD3EBA: MemLdRfVar from_stack_1.global_60
  loc_BD3EBD: LdPrVar
  loc_BD3EBF: LateMemCall
  loc_BD3EC5: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD3ECA: PopAdLdVar
  loc_BD3ECB: FLdPr Me
  loc_BD3ECE: MemLdRfVar from_stack_1.global_60
  loc_BD3ED1: LdPrVar
  loc_BD3ED3: LateMemCall
  loc_BD3ED9: LitVarStr var_98, " font-size: 12px;"
  loc_BD3EDE: PopAdLdVar
  loc_BD3EDF: FLdPr Me
  loc_BD3EE2: MemLdRfVar from_stack_1.global_60
  loc_BD3EE5: LdPrVar
  loc_BD3EE7: LateMemCall
  loc_BD3EED: LitVarStr var_98, " font-style: normal;"
  loc_BD3EF2: PopAdLdVar
  loc_BD3EF3: FLdPr Me
  loc_BD3EF6: MemLdRfVar from_stack_1.global_60
  loc_BD3EF9: LdPrVar
  loc_BD3EFB: LateMemCall
  loc_BD3F01: LitVarStr var_98, " font-weight: normal;"
  loc_BD3F06: PopAdLdVar
  loc_BD3F07: FLdPr Me
  loc_BD3F0A: MemLdRfVar from_stack_1.global_60
  loc_BD3F0D: LdPrVar
  loc_BD3F0F: LateMemCall
  loc_BD3F15: LitVarStr var_98, " font-variant: normal;"
  loc_BD3F1A: PopAdLdVar
  loc_BD3F1B: FLdPr Me
  loc_BD3F1E: MemLdRfVar from_stack_1.global_60
  loc_BD3F21: LdPrVar
  loc_BD3F23: LateMemCall
  loc_BD3F29: LitVarStr var_98, "}"
  loc_BD3F2E: PopAdLdVar
  loc_BD3F2F: FLdPr Me
  loc_BD3F32: MemLdRfVar from_stack_1.global_60
  loc_BD3F35: LdPrVar
  loc_BD3F37: LateMemCall
  loc_BD3F3D: LitVarStr var_98, ".Encabezado {"
  loc_BD3F42: PopAdLdVar
  loc_BD3F43: FLdPr Me
  loc_BD3F46: MemLdRfVar from_stack_1.global_60
  loc_BD3F49: LdPrVar
  loc_BD3F4B: LateMemCall
  loc_BD3F51: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BD3F56: PopAdLdVar
  loc_BD3F57: FLdPr Me
  loc_BD3F5A: MemLdRfVar from_stack_1.global_60
  loc_BD3F5D: LdPrVar
  loc_BD3F5F: LateMemCall
  loc_BD3F65: LitVarStr var_98, " font-size: 11px;"
  loc_BD3F6A: PopAdLdVar
  loc_BD3F6B: FLdPr Me
  loc_BD3F6E: MemLdRfVar from_stack_1.global_60
  loc_BD3F71: LdPrVar
  loc_BD3F73: LateMemCall
  loc_BD3F79: LitVarStr var_98, " font-weight: bold;"
  loc_BD3F7E: PopAdLdVar
  loc_BD3F7F: FLdPr Me
  loc_BD3F82: MemLdRfVar from_stack_1.global_60
  loc_BD3F85: LdPrVar
  loc_BD3F87: LateMemCall
  loc_BD3F8D: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BD3F92: PopAdLdVar
  loc_BD3F93: FLdPr Me
  loc_BD3F96: MemLdRfVar from_stack_1.global_60
  loc_BD3F99: LdPrVar
  loc_BD3F9B: LateMemCall
  loc_BD3FA1: LitVarStr var_98, "}"
  loc_BD3FA6: PopAdLdVar
  loc_BD3FA7: FLdPr Me
  loc_BD3FAA: MemLdRfVar from_stack_1.global_60
  loc_BD3FAD: LdPrVar
  loc_BD3FAF: LateMemCall
  loc_BD3FB5: LitVarStr var_98, ".LineaDato {"
  loc_BD3FBA: PopAdLdVar
  loc_BD3FBB: FLdPr Me
  loc_BD3FBE: MemLdRfVar from_stack_1.global_60
  loc_BD3FC1: LdPrVar
  loc_BD3FC3: LateMemCall
  loc_BD3FC9: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD3FCE: PopAdLdVar
  loc_BD3FCF: FLdPr Me
  loc_BD3FD2: MemLdRfVar from_stack_1.global_60
  loc_BD3FD5: LdPrVar
  loc_BD3FD7: LateMemCall
  loc_BD3FDD: LitVarStr var_98, " font-size: 10px;"
  loc_BD3FE2: PopAdLdVar
  loc_BD3FE3: FLdPr Me
  loc_BD3FE6: MemLdRfVar from_stack_1.global_60
  loc_BD3FE9: LdPrVar
  loc_BD3FEB: LateMemCall
  loc_BD3FF1: LitVarStr var_98, "}"
  loc_BD3FF6: PopAdLdVar
  loc_BD3FF7: FLdPr Me
  loc_BD3FFA: MemLdRfVar from_stack_1.global_60
  loc_BD3FFD: LdPrVar
  loc_BD3FFF: LateMemCall
  loc_BD4005: LitVarStr var_98, ".Totales {"
  loc_BD400A: PopAdLdVar
  loc_BD400B: FLdPr Me
  loc_BD400E: MemLdRfVar from_stack_1.global_60
  loc_BD4011: LdPrVar
  loc_BD4013: LateMemCall
  loc_BD4019: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD401E: PopAdLdVar
  loc_BD401F: FLdPr Me
  loc_BD4022: MemLdRfVar from_stack_1.global_60
  loc_BD4025: LdPrVar
  loc_BD4027: LateMemCall
  loc_BD402D: LitVarStr var_98, " font-size: 12px;"
  loc_BD4032: PopAdLdVar
  loc_BD4033: FLdPr Me
  loc_BD4036: MemLdRfVar from_stack_1.global_60
  loc_BD4039: LdPrVar
  loc_BD403B: LateMemCall
  loc_BD4041: LitVarStr var_98, " font-weight: bold;"
  loc_BD4046: PopAdLdVar
  loc_BD4047: FLdPr Me
  loc_BD404A: MemLdRfVar from_stack_1.global_60
  loc_BD404D: LdPrVar
  loc_BD404F: LateMemCall
  loc_BD4055: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BD405A: PopAdLdVar
  loc_BD405B: FLdPr Me
  loc_BD405E: MemLdRfVar from_stack_1.global_60
  loc_BD4061: LdPrVar
  loc_BD4063: LateMemCall
  loc_BD4069: LitVarStr var_98, "}"
  loc_BD406E: PopAdLdVar
  loc_BD406F: FLdPr Me
  loc_BD4072: MemLdRfVar from_stack_1.global_60
  loc_BD4075: LdPrVar
  loc_BD4077: LateMemCall
  loc_BD407D: LitVarStr var_98, ".SubTotales {"
  loc_BD4082: PopAdLdVar
  loc_BD4083: FLdPr Me
  loc_BD4086: MemLdRfVar from_stack_1.global_60
  loc_BD4089: LdPrVar
  loc_BD408B: LateMemCall
  loc_BD4091: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD4096: PopAdLdVar
  loc_BD4097: FLdPr Me
  loc_BD409A: MemLdRfVar from_stack_1.global_60
  loc_BD409D: LdPrVar
  loc_BD409F: LateMemCall
  loc_BD40A5: LitVarStr var_98, " font-size: 10px;"
  loc_BD40AA: PopAdLdVar
  loc_BD40AB: FLdPr Me
  loc_BD40AE: MemLdRfVar from_stack_1.global_60
  loc_BD40B1: LdPrVar
  loc_BD40B3: LateMemCall
  loc_BD40B9: LitVarStr var_98, " font-weight: bold;"
  loc_BD40BE: PopAdLdVar
  loc_BD40BF: FLdPr Me
  loc_BD40C2: MemLdRfVar from_stack_1.global_60
  loc_BD40C5: LdPrVar
  loc_BD40C7: LateMemCall
  loc_BD40CD: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BD40D2: PopAdLdVar
  loc_BD40D3: FLdPr Me
  loc_BD40D6: MemLdRfVar from_stack_1.global_60
  loc_BD40D9: LdPrVar
  loc_BD40DB: LateMemCall
  loc_BD40E1: LitVarStr var_98, "}"
  loc_BD40E6: PopAdLdVar
  loc_BD40E7: FLdPr Me
  loc_BD40EA: MemLdRfVar from_stack_1.global_60
  loc_BD40ED: LdPrVar
  loc_BD40EF: LateMemCall
  loc_BD40F5: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BD40FA: PopAdLdVar
  loc_BD40FB: FLdPr Me
  loc_BD40FE: MemLdRfVar from_stack_1.global_60
  loc_BD4101: LdPrVar
  loc_BD4103: LateMemCall
  loc_BD4109: LitVarStr var_98, "</style>"
  loc_BD410E: PopAdLdVar
  loc_BD410F: FLdPr Me
  loc_BD4112: MemLdRfVar from_stack_1.global_60
  loc_BD4115: LdPrVar
  loc_BD4117: LateMemCall
  loc_BD411D: LitI4 0
  loc_BD4122: FStStrCopy var_B0
  loc_BD4125: FLdRfVar var_B0
  loc_BD4128: LitI4 0
  loc_BD412D: FStStrCopy var_AC
  loc_BD4130: FLdRfVar var_AC
  loc_BD4133: LitI2_Byte &HFF
  loc_BD4135: PopTmpLdAd2 var_C2
  loc_BD4138: FLdPr Me
  loc_BD413B: MemLdRfVar from_stack_1.global_60
  loc_BD413E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BD4143: FFreeStr var_AC = ""
  loc_BD414A: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BD414F: PopAdLdVar
  loc_BD4150: FLdPr Me
  loc_BD4153: MemLdRfVar from_stack_1.global_60
  loc_BD4156: LdPrVar
  loc_BD4158: LateMemCall
  loc_BD415E: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BD4163: PopAdLdVar
  loc_BD4164: FLdPr Me
  loc_BD4167: MemLdRfVar from_stack_1.global_60
  loc_BD416A: LdPrVar
  loc_BD416C: LateMemCall
  loc_BD4172: LitVarStr var_98, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BD4177: PopAdLdVar
  loc_BD4178: FLdPr Me
  loc_BD417B: MemLdRfVar from_stack_1.global_60
  loc_BD417E: LdPrVar
  loc_BD4180: LateMemCall
  loc_BD4186: FLdPr Me
  loc_BD4189: MemLdI2 bLogos
  loc_BD418C: BranchF loc_BD41D5
  loc_BD418F: LitStr "  <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BD4192: LitI2_Byte &H5F
  loc_BD4194: CStrUI1
  loc_BD4196: FStStrNoPop var_AC
  loc_BD4199: ConcatStr
  loc_BD419A: FStStrNoPop var_B0
  loc_BD419D: LitStr """ height="""
  loc_BD41A0: ConcatStr
  loc_BD41A1: FStStrNoPop var_C8
  loc_BD41A4: LitI2_Byte &H3C
  loc_BD41A6: CStrUI1
  loc_BD41A8: FStStrNoPop var_CC
  loc_BD41AB: ConcatStr
  loc_BD41AC: FStStrNoPop var_D0
  loc_BD41AF: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BD41B2: ConcatStr
  loc_BD41B3: CVarStr var_C0
  loc_BD41B6: PopAdLdVar
  loc_BD41B7: FLdPr Me
  loc_BD41BA: MemLdRfVar from_stack_1.global_60
  loc_BD41BD: LdPrVar
  loc_BD41BF: LateMemCall
  loc_BD41C5: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = ""
  loc_BD41D2: FFree1Var var_C0 = ""
  loc_BD41D5: LitStr "     <br>"
  loc_BD41D8: LitStr "Municipalidad de Guaymallén"
  loc_BD41DB: ConcatStr
  loc_BD41DC: FStStrNoPop var_AC
  loc_BD41DF: LitStr "</p>"
  loc_BD41E2: ConcatStr
  loc_BD41E3: CVarStr var_C0
  loc_BD41E6: PopAdLdVar
  loc_BD41E7: FLdPr Me
  loc_BD41EA: MemLdRfVar from_stack_1.global_60
  loc_BD41ED: LdPrVar
  loc_BD41EF: LateMemCall
  loc_BD41F5: FFree1Str var_AC
  loc_BD41F8: FFree1Var var_C0 = ""
  loc_BD41FB: LitStr "    <p>"
  loc_BD41FE: FLdRfVar var_AC
  loc_BD4201: FLdPr Me
  loc_BD4204:  = Me.Caption
  loc_BD4209: ILdRf var_AC
  loc_BD420C: ConcatStr
  loc_BD420D: FStStrNoPop var_B0
  loc_BD4210: LitStr "</p></th>"
  loc_BD4213: ConcatStr
  loc_BD4214: CVarStr var_C0
  loc_BD4217: PopAdLdVar
  loc_BD4218: FLdPr Me
  loc_BD421B: MemLdRfVar from_stack_1.global_60
  loc_BD421E: LdPrVar
  loc_BD4220: LateMemCall
  loc_BD4226: FFreeStr var_AC = ""
  loc_BD422D: FFree1Var var_C0 = ""
  loc_BD4230: LitVarStr var_98, "  </tr>"
  loc_BD4235: PopAdLdVar
  loc_BD4236: FLdPr Me
  loc_BD4239: MemLdRfVar from_stack_1.global_60
  loc_BD423C: LdPrVar
  loc_BD423E: LateMemCall
  loc_BD4244: LitVarStr var_98, "  <tr>"
  loc_BD4249: PopAdLdVar
  loc_BD424A: FLdPr Me
  loc_BD424D: MemLdRfVar from_stack_1.global_60
  loc_BD4250: LdPrVar
  loc_BD4252: LateMemCall
  loc_BD4258: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BD425D: PopAdLdVar
  loc_BD425E: FLdPr Me
  loc_BD4261: MemLdRfVar from_stack_1.global_60
  loc_BD4264: LdPrVar
  loc_BD4266: LateMemCall
  loc_BD426C: LitVarStr var_98, "  </tr>"
  loc_BD4271: PopAdLdVar
  loc_BD4272: FLdPr Me
  loc_BD4275: MemLdRfVar from_stack_1.global_60
  loc_BD4278: LdPrVar
  loc_BD427A: LateMemCall
  loc_BD4280: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BD4285: PopAdLdVar
  loc_BD4286: FLdPr Me
  loc_BD4289: MemLdRfVar from_stack_1.global_60
  loc_BD428C: LdPrVar
  loc_BD428E: LateMemCall
  loc_BD4294: LitStr "    <td align=""left"" valign=""top""><strong>Periodo: </strong>"
  loc_BD4297: FLdPr Me
  loc_BD429A: VCallAd Control_ID_PeriInfoMsk
  loc_BD429D: FStAdFunc var_D4
  loc_BD42A0: FLdPr var_D4
  loc_BD42A3: LateIdLdVar var_C0 DispID_22 0
  loc_BD42AA: CStrVarTmp
  loc_BD42AB: FStStrNoPop var_AC
  loc_BD42AE: ConcatStr
  loc_BD42AF: FStStrNoPop var_B0
  loc_BD42B2: LitStr "</td>"
  loc_BD42B5: ConcatStr
  loc_BD42B6: CVarStr var_E4
  loc_BD42B9: PopAdLdVar
  loc_BD42BA: FLdPr Me
  loc_BD42BD: MemLdRfVar from_stack_1.global_60
  loc_BD42C0: LdPrVar
  loc_BD42C2: LateMemCall
  loc_BD42C8: FFreeStr var_AC = ""
  loc_BD42CF: FFree1Ad var_D4
  loc_BD42D2: FFreeVar var_C0 = ""
  loc_BD42D9: LitStr "    <td align=""center"" valign=""top""><strong>Trimestre: </strong>"
  loc_BD42DC: FLdRfVar var_AC
  loc_BD42DF: FLdPr Me
  loc_BD42E2: VCallAd Control_ID_TrimestreCbo
  loc_BD42E5: FStAdFunc var_D4
  loc_BD42E8: FLdPr var_D4
  loc_BD42EB:  = Me.Text
  loc_BD42F0: ILdRf var_AC
  loc_BD42F3: ConcatStr
  loc_BD42F4: FStStrNoPop var_B0
  loc_BD42F7: LitStr "</td>"
  loc_BD42FA: ConcatStr
  loc_BD42FB: CVarStr var_C0
  loc_BD42FE: PopAdLdVar
  loc_BD42FF: FLdPr Me
  loc_BD4302: MemLdRfVar from_stack_1.global_60
  loc_BD4305: LdPrVar
  loc_BD4307: LateMemCall
  loc_BD430D: FFreeStr var_AC = ""
  loc_BD4314: FFree1Ad var_D4
  loc_BD4317: FFree1Var var_C0 = ""
  loc_BD431A: LitStr "    <td align=""right"" valign=""top""><strong>Nomenclador: </strong>"
  loc_BD431D: LitStr "060204"
  loc_BD4320: ConcatStr
  loc_BD4321: FStStrNoPop var_AC
  loc_BD4324: LitStr "</td>"
  loc_BD4327: ConcatStr
  loc_BD4328: CVarStr var_C0
  loc_BD432B: PopAdLdVar
  loc_BD432C: FLdPr Me
  loc_BD432F: MemLdRfVar from_stack_1.global_60
  loc_BD4332: LdPrVar
  loc_BD4334: LateMemCall
  loc_BD433A: FFree1Str var_AC
  loc_BD433D: FFree1Var var_C0 = ""
  loc_BD4340: LitVarStr var_98, "  </tr>"
  loc_BD4345: PopAdLdVar
  loc_BD4346: FLdPr Me
  loc_BD4349: MemLdRfVar from_stack_1.global_60
  loc_BD434C: LdPrVar
  loc_BD434E: LateMemCall
  loc_BD4354: LitVarStr var_98, "</table>"
  loc_BD4359: PopAdLdVar
  loc_BD435A: FLdPr Me
  loc_BD435D: MemLdRfVar from_stack_1.global_60
  loc_BD4360: LdPrVar
  loc_BD4362: LateMemCall
  loc_BD4368: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BD436D: PopAdLdVar
  loc_BD436E: FLdPr Me
  loc_BD4371: MemLdRfVar from_stack_1.global_60
  loc_BD4374: LdPrVar
  loc_BD4376: LateMemCall
  loc_BD437C: LitVarStr var_98, "  <thead>"
  loc_BD4381: PopAdLdVar
  loc_BD4382: FLdPr Me
  loc_BD4385: MemLdRfVar from_stack_1.global_60
  loc_BD4388: LdPrVar
  loc_BD438A: LateMemCall
  loc_BD4390: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BD4395: PopAdLdVar
  loc_BD4396: FLdPr Me
  loc_BD4399: MemLdRfVar from_stack_1.global_60
  loc_BD439C: LdPrVar
  loc_BD439E: LateMemCall
  loc_BD43A4: LitVarStr var_98, "    <th>Concepto</th>"
  loc_BD43A9: PopAdLdVar
  loc_BD43AA: FLdPr Me
  loc_BD43AD: MemLdRfVar from_stack_1.global_60
  loc_BD43B0: LdPrVar
  loc_BD43B2: LateMemCall
  loc_BD43B8: LitVarStr var_98, "    <th>Detalle del Concepto</th>"
  loc_BD43BD: PopAdLdVar
  loc_BD43BE: FLdPr Me
  loc_BD43C1: MemLdRfVar from_stack_1.global_60
  loc_BD43C4: LdPrVar
  loc_BD43C6: LateMemCall
  loc_BD43CC: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_BD43D1: PopAdLdVar
  loc_BD43D2: FLdPr Me
  loc_BD43D5: MemLdRfVar from_stack_1.global_60
  loc_BD43D8: LdPrVar
  loc_BD43DA: LateMemCall
  loc_BD43E0: LitVarStr var_98, "    <th>CUIT/CUIL</th>"
  loc_BD43E5: PopAdLdVar
  loc_BD43E6: FLdPr Me
  loc_BD43E9: MemLdRfVar from_stack_1.global_60
  loc_BD43EC: LdPrVar
  loc_BD43EE: LateMemCall
  loc_BD43F4: LitVarStr var_98, "    <th>Moroso sin<br>Gestión Judicial</th>"
  loc_BD43F9: PopAdLdVar
  loc_BD43FA: FLdPr Me
  loc_BD43FD: MemLdRfVar from_stack_1.global_60
  loc_BD4400: LdPrVar
  loc_BD4402: LateMemCall
  loc_BD4408: LitVarStr var_98, "    <th>Moroso en<br>apremio</th>"
  loc_BD440D: PopAdLdVar
  loc_BD440E: FLdPr Me
  loc_BD4411: MemLdRfVar from_stack_1.global_60
  loc_BD4414: LdPrVar
  loc_BD4416: LateMemCall
  loc_BD441C: LitVarStr var_98, "    <th>Moroso en<br>Gestión Judicial</th>"
  loc_BD4421: PopAdLdVar
  loc_BD4422: FLdPr Me
  loc_BD4425: MemLdRfVar from_stack_1.global_60
  loc_BD4428: LdPrVar
  loc_BD442A: LateMemCall
  loc_BD4430: LitVarStr var_98, "    <th>Moroso en Convocatoria</th>"
  loc_BD4435: PopAdLdVar
  loc_BD4436: FLdPr Me
  loc_BD4439: MemLdRfVar from_stack_1.global_60
  loc_BD443C: LdPrVar
  loc_BD443E: LateMemCall
  loc_BD4444: LitVarStr var_98, "    <th>Subtotal</th>"
  loc_BD4449: PopAdLdVar
  loc_BD444A: FLdPr Me
  loc_BD444D: MemLdRfVar from_stack_1.global_60
  loc_BD4450: LdPrVar
  loc_BD4452: LateMemCall
  loc_BD4458: LitVarStr var_98, "    <th>Deuda Regularizada<br>por Plan de Pago</th>"
  loc_BD445D: PopAdLdVar
  loc_BD445E: FLdPr Me
  loc_BD4461: MemLdRfVar from_stack_1.global_60
  loc_BD4464: LdPrVar
  loc_BD4466: LateMemCall
  loc_BD446C: LitVarStr var_98, "    <th>TOTAL</th>"
  loc_BD4471: PopAdLdVar
  loc_BD4472: FLdPr Me
  loc_BD4475: MemLdRfVar from_stack_1.global_60
  loc_BD4478: LdPrVar
  loc_BD447A: LateMemCall
  loc_BD4480: LitVarStr var_98, "  </tr>"
  loc_BD4485: PopAdLdVar
  loc_BD4486: FLdPr Me
  loc_BD4489: MemLdRfVar from_stack_1.global_60
  loc_BD448C: LdPrVar
  loc_BD448E: LateMemCall
  loc_BD4494: LitVarStr var_98, "  </thead>"
  loc_BD4499: PopAdLdVar
  loc_BD449A: FLdPr Me
  loc_BD449D: MemLdRfVar from_stack_1.global_60
  loc_BD44A0: LdPrVar
  loc_BD44A2: LateMemCall
  loc_BD44A8: ExitProcHresult
End Function

Private Function Proc_323_24_A0F238() 'A0F238
  'Data Table: 4984F8
  loc_A0F1F8: LitVarStr var_94, "</table>"
  loc_A0F1FD: PopAdLdVar
  loc_A0F1FE: FLdPr Me
  loc_A0F201: MemLdRfVar from_stack_1.global_60
  loc_A0F204: LdPrVar
  loc_A0F206: LateMemCall
  loc_A0F20C: LitVarStr var_94, "</body>"
  loc_A0F211: PopAdLdVar
  loc_A0F212: FLdPr Me
  loc_A0F215: MemLdRfVar from_stack_1.global_60
  loc_A0F218: LdPrVar
  loc_A0F21A: LateMemCall
  loc_A0F220: LitVarStr var_94, "</html>"
  loc_A0F225: PopAdLdVar
  loc_A0F226: FLdPr Me
  loc_A0F229: MemLdRfVar from_stack_1.global_60
  loc_A0F22C: LdPrVar
  loc_A0F22E: LateMemCall
  loc_A0F234: ExitProcHresult
End Function
